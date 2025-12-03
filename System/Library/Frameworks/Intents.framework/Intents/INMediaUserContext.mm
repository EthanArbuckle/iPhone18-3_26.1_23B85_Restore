@interface INMediaUserContext
+ (id)_sharedFormatter;
- (INMediaUserContext)init;
- (INMediaUserContext)initWithCoder:(id)coder;
- (id)safeLibraryItems;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INMediaUserContext

- (id)safeLibraryItems
{
  numberOfLibraryItems = [(INMediaUserContext *)self numberOfLibraryItems];

  if (numberOfLibraryItems)
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

- (INMediaUserContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = INMediaUserContext;
  _init = [(INUserContext *)&v9 _init];
  if (_init)
  {
    _init->_subscriptionStatus = [coderCopy decodeIntForKey:@"SubscriptionStatus"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NumberOfLibraryItems"];
    numberOfLibraryItems = _init->_numberOfLibraryItems;
    _init->_numberOfLibraryItems = v6;
  }

  return _init;
}

- (void)encodeWithCoder:(id)coder
{
  subscriptionStatus = self->_subscriptionStatus;
  coderCopy = coder;
  [coderCopy encodeInteger:subscriptionStatus forKey:@"SubscriptionStatus"];
  safeLibraryItems = [(INMediaUserContext *)self safeLibraryItems];
  [coderCopy encodeObject:safeLibraryItems forKey:@"NumberOfLibraryItems"];
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