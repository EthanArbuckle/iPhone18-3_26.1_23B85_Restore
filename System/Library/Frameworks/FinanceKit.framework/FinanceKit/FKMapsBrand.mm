@interface FKMapsBrand
- (BOOL)isEqual:(id)equal;
- (FKMapsBrand)initWithMUID:(unint64_t)d resultProviderIdentifier:(int)identifier name:(id)name phoneNumber:(id)number url:(id)url heroImageURL:(id)l heroImageAttributionName:(id)attributionName category:(unint64_t)self0 mapsCategoryIdentifier:(id)self1 encodedStylingInfo:(id)self2 businessChatURL:(id)self3 lastProcessedDate:(id)self4 logoURL:(id)self5;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation FKMapsBrand

- (FKMapsBrand)initWithMUID:(unint64_t)d resultProviderIdentifier:(int)identifier name:(id)name phoneNumber:(id)number url:(id)url heroImageURL:(id)l heroImageAttributionName:(id)attributionName category:(unint64_t)self0 mapsCategoryIdentifier:(id)self1 encodedStylingInfo:(id)self2 businessChatURL:(id)self3 lastProcessedDate:(id)self4 logoURL:(id)self5
{
  v19 = *&identifier;
  uRLCopy = uRL;
  v27.receiver = self;
  v27.super_class = FKMapsBrand;
  v23 = [(FKMapsItem *)&v27 initWithMUID:d resultProviderIdentifier:v19 name:name phoneNumber:number url:url heroImageURL:l heroImageAttributionName:attributionName category:category mapsCategoryIdentifier:categoryIdentifier encodedStylingInfo:info businessChatURL:rL lastProcessedDate:date];
  if (v23)
  {
    v24 = [uRLCopy copy];
    logoURL = v23->_logoURL;
    v23->_logoURL = v24;
  }

  return v23;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = FKMapsBrand;
  v5 = [(FKMapsItem *)&v9 copyWithZone:?];
  v6 = [(NSURL *)self->_logoURL copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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