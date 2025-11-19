@interface FKMapsMerchant
- (BOOL)isEqual:(id)a3;
- (FKMapsMerchant)initWithMUID:(unint64_t)a3 resultProviderIdentifier:(int)a4 name:(id)a5 phoneNumber:(id)a6 url:(id)a7 heroImageURL:(id)a8 heroImageAttributionName:(id)a9 category:(unint64_t)a10 mapsCategoryIdentifier:(id)a11 encodedStylingInfo:(id)a12 businessChatURL:(id)a13 lastProcessedDate:(id)a14 location:(id)a15 postalAddress:(id)a16;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation FKMapsMerchant

- (FKMapsMerchant)initWithMUID:(unint64_t)a3 resultProviderIdentifier:(int)a4 name:(id)a5 phoneNumber:(id)a6 url:(id)a7 heroImageURL:(id)a8 heroImageAttributionName:(id)a9 category:(unint64_t)a10 mapsCategoryIdentifier:(id)a11 encodedStylingInfo:(id)a12 businessChatURL:(id)a13 lastProcessedDate:(id)a14 location:(id)a15 postalAddress:(id)a16
{
  v19 = *&a4;
  v22 = a15;
  v23 = a16;
  v31.receiver = self;
  v31.super_class = FKMapsMerchant;
  v24 = [(FKMapsItem *)&v31 initWithMUID:a3 resultProviderIdentifier:v19 name:a5 phoneNumber:a6 url:a7 heroImageURL:a8 heroImageAttributionName:a9 category:a10 mapsCategoryIdentifier:a11 encodedStylingInfo:a12 businessChatURL:a13 lastProcessedDate:a14];
  if (v24)
  {
    v25 = [v22 copy];
    location = v24->_location;
    v24->_location = v25;

    v27 = [v23 copy];
    postalAddress = v24->_postalAddress;
    v24->_postalAddress = v27;
  }

  return v24;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v11.receiver = self;
  v11.super_class = FKMapsMerchant;
  v5 = [(FKMapsItem *)&v11 copyWithZone:?];
  v6 = [(CLLocation *)self->_location copyWithZone:a3];
  v7 = v5[13];
  v5[13] = v6;

  v8 = [(CNPostalAddress *)self->_postalAddress copyWithZone:a3];
  v9 = v5[14];
  v5[14] = v8;

  return v5;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_location];
  [v3 safelyAddObject:self->_postalAddress];
  v7.receiver = self;
  v7.super_class = FKMapsMerchant;
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
    v8 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v10.receiver = self;
    v10.super_class = FKMapsMerchant;
    if ([(FKMapsItem *)&v10 isEqual:v6]&& ([(CLLocation *)self->_location distanceFromLocation:v6[13]], v7 == 0.0))
    {
      v8 = FKEqualObjects(self->_postalAddress, v6[14]);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end