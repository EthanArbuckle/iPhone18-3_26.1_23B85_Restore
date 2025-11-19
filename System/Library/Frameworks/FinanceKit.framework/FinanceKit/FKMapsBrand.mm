@interface FKMapsBrand
- (BOOL)isEqual:(id)a3;
- (FKMapsBrand)initWithMUID:(unint64_t)a3 resultProviderIdentifier:(int)a4 name:(id)a5 phoneNumber:(id)a6 url:(id)a7 heroImageURL:(id)a8 heroImageAttributionName:(id)a9 category:(unint64_t)a10 mapsCategoryIdentifier:(id)a11 encodedStylingInfo:(id)a12 businessChatURL:(id)a13 lastProcessedDate:(id)a14 logoURL:(id)a15;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation FKMapsBrand

- (FKMapsBrand)initWithMUID:(unint64_t)a3 resultProviderIdentifier:(int)a4 name:(id)a5 phoneNumber:(id)a6 url:(id)a7 heroImageURL:(id)a8 heroImageAttributionName:(id)a9 category:(unint64_t)a10 mapsCategoryIdentifier:(id)a11 encodedStylingInfo:(id)a12 businessChatURL:(id)a13 lastProcessedDate:(id)a14 logoURL:(id)a15
{
  v19 = *&a4;
  v22 = a15;
  v27.receiver = self;
  v27.super_class = FKMapsBrand;
  v23 = [(FKMapsItem *)&v27 initWithMUID:a3 resultProviderIdentifier:v19 name:a5 phoneNumber:a6 url:a7 heroImageURL:a8 heroImageAttributionName:a9 category:a10 mapsCategoryIdentifier:a11 encodedStylingInfo:a12 businessChatURL:a13 lastProcessedDate:a14];
  if (v23)
  {
    v24 = [v22 copy];
    logoURL = v23->_logoURL;
    v23->_logoURL = v24;
  }

  return v23;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = FKMapsBrand;
  v5 = [(FKMapsItem *)&v9 copyWithZone:?];
  v6 = [(NSURL *)self->_logoURL copyWithZone:a3];
  v7 = v5[13];
  v5[13] = v6;

  return v5;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_logoURL];
  v7.receiver = self;
  v7.super_class = FKMapsBrand;
  v4 = [(FKMapsItem *)&v7 hash];
  v5 = FKCombinedHash(v4, v3);

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v7 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v9.receiver = self;
    v9.super_class = FKMapsBrand;
    if ([(FKMapsItem *)&v9 isEqual:v6])
    {
      v7 = FKEqualObjects(self->_logoURL, v6[13]);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end