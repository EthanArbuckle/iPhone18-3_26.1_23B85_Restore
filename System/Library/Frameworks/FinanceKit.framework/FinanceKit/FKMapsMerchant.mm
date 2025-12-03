@interface FKMapsMerchant
- (BOOL)isEqual:(id)equal;
- (FKMapsMerchant)initWithMUID:(unint64_t)d resultProviderIdentifier:(int)identifier name:(id)name phoneNumber:(id)number url:(id)url heroImageURL:(id)l heroImageAttributionName:(id)attributionName category:(unint64_t)self0 mapsCategoryIdentifier:(id)self1 encodedStylingInfo:(id)self2 businessChatURL:(id)self3 lastProcessedDate:(id)self4 location:(id)self5 postalAddress:(id)self6;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation FKMapsMerchant

- (FKMapsMerchant)initWithMUID:(unint64_t)d resultProviderIdentifier:(int)identifier name:(id)name phoneNumber:(id)number url:(id)url heroImageURL:(id)l heroImageAttributionName:(id)attributionName category:(unint64_t)self0 mapsCategoryIdentifier:(id)self1 encodedStylingInfo:(id)self2 businessChatURL:(id)self3 lastProcessedDate:(id)self4 location:(id)self5 postalAddress:(id)self6
{
  v19 = *&identifier;
  locationCopy = location;
  addressCopy = address;
  v31.receiver = self;
  v31.super_class = FKMapsMerchant;
  v24 = [(FKMapsItem *)&v31 initWithMUID:d resultProviderIdentifier:v19 name:name phoneNumber:number url:url heroImageURL:l heroImageAttributionName:attributionName category:category mapsCategoryIdentifier:categoryIdentifier encodedStylingInfo:info businessChatURL:rL lastProcessedDate:date];
  if (v24)
  {
    v25 = [locationCopy copy];
    location = v24->_location;
    v24->_location = v25;

    v27 = [addressCopy copy];
    postalAddress = v24->_postalAddress;
    v24->_postalAddress = v27;
  }

  return v24;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = FKMapsMerchant;
  v5 = [(FKMapsItem *)&v11 copyWithZone:?];
  v6 = [(CLLocation *)self->_location copyWithZone:zone];
  v7 = v5[13];
  v5[13] = v6;

  v8 = [(CNPostalAddress *)self->_postalAddress copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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