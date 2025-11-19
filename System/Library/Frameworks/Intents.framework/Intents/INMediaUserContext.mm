@interface INMediaUserContext
+ (id)_sharedFormatter;
- (INMediaUserContext)init;
- (INMediaUserContext)initWithCoder:(id)a3;
- (id)safeLibraryItems;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INMediaUserContext

- (id)safeLibraryItems
{
  v3 = [(INMediaUserContext *)self numberOfLibraryItems];

  if (v3)
  {
    v4 = +[INMediaUserContext _sharedFormatter];
    v5 = [v4 stringFromNumber:self->_numberOfLibraryItems];

    v6 = +[INMediaUserContext _sharedFormatter];
    v7 = [v6 numberFromString:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (INMediaUserContext)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = INMediaUserContext;
  v5 = [(INUserContext *)&v9 _init];
  if (v5)
  {
    v5->_subscriptionStatus = [v4 decodeIntForKey:@"SubscriptionStatus"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NumberOfLibraryItems"];
    numberOfLibraryItems = v5->_numberOfLibraryItems;
    v5->_numberOfLibraryItems = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  subscriptionStatus = self->_subscriptionStatus;
  v5 = a3;
  [v5 encodeInteger:subscriptionStatus forKey:@"SubscriptionStatus"];
  v6 = [(INMediaUserContext *)self safeLibraryItems];
  [v5 encodeObject:v6 forKey:@"NumberOfLibraryItems"];
}

- (INMediaUserContext)init
{
  v3.receiver = self;
  v3.super_class = INMediaUserContext;
  return [(INUserContext *)&v3 _init];
}

+ (id)_sharedFormatter
{
  if (_sharedFormatter_onceToken != -1)
  {
    dispatch_once(&_sharedFormatter_onceToken, &__block_literal_global_7384);
  }

  v3 = _sharedFormatter_sharedFormatter;

  return v3;
}

uint64_t __38__INMediaUserContext__sharedFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = _sharedFormatter_sharedFormatter;
  _sharedFormatter_sharedFormatter = v0;

  [_sharedFormatter_sharedFormatter setUsesSignificantDigits:1];
  [_sharedFormatter_sharedFormatter setMaximumSignificantDigits:2];
  [_sharedFormatter_sharedFormatter setMaximumFractionDigits:0];
  v2 = _sharedFormatter_sharedFormatter;

  return [v2 setGeneratesDecimalNumbers:0];
}

@end