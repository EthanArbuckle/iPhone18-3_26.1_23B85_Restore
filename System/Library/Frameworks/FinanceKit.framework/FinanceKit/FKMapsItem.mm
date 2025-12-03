@interface FKMapsItem
- (BOOL)isEqual:(id)equal;
- (FKMapsItem)initWithMUID:(unint64_t)d resultProviderIdentifier:(int)identifier name:(id)name phoneNumber:(id)number url:(id)url heroImageURL:(id)l heroImageAttributionName:(id)attributionName category:(unint64_t)self0 mapsCategoryIdentifier:(id)self1 encodedStylingInfo:(id)self2 businessChatURL:(id)self3 lastProcessedDate:(id)self4;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation FKMapsItem

- (FKMapsItem)initWithMUID:(unint64_t)d resultProviderIdentifier:(int)identifier name:(id)name phoneNumber:(id)number url:(id)url heroImageURL:(id)l heroImageAttributionName:(id)attributionName category:(unint64_t)self0 mapsCategoryIdentifier:(id)self1 encodedStylingInfo:(id)self2 businessChatURL:(id)self3 lastProcessedDate:(id)self4
{
  nameCopy = name;
  numberCopy = number;
  urlCopy = url;
  lCopy = l;
  attributionNameCopy = attributionName;
  categoryIdentifierCopy = categoryIdentifier;
  infoCopy = info;
  rLCopy = rL;
  dateCopy = date;
  v50.receiver = self;
  v50.super_class = FKMapsItem;
  v26 = [(FKMapsItem *)&v50 init];
  v27 = v26;
  if (v26)
  {
    v26->_muid = d;
    v26->_resultProviderIdentifier = identifier;
    v28 = [nameCopy copy];
    name = v27->_name;
    v27->_name = v28;

    v30 = [numberCopy copy];
    phoneNumber = v27->_phoneNumber;
    v27->_phoneNumber = v30;

    v32 = [urlCopy copy];
    url = v27->_url;
    v27->_url = v32;

    v34 = [lCopy copy];
    heroImageURL = v27->_heroImageURL;
    v27->_heroImageURL = v34;

    v36 = [attributionNameCopy copy];
    heroImageAttributionName = v27->_heroImageAttributionName;
    v27->_heroImageAttributionName = v36;

    v27->_category = category;
    v38 = [categoryIdentifierCopy copy];
    mapsCategoryIdentifier = v27->_mapsCategoryIdentifier;
    v27->_mapsCategoryIdentifier = v38;

    v40 = [infoCopy copy];
    encodedStylingInfo = v27->_encodedStylingInfo;
    v27->_encodedStylingInfo = v40;

    v42 = [rLCopy copy];
    businessChatURL = v27->_businessChatURL;
    v27->_businessChatURL = v42;

    v44 = [dateCopy copy];
    lastProcessedDate = v27->_lastProcessedDate;
    v27->_lastProcessedDate = v44;
  }

  return v27;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  *(v5 + 16) = self->_muid;
  *(v5 + 8) = self->_resultProviderIdentifier;
  v6 = [(NSString *)self->_name copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_phoneNumber copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSURL *)self->_url copyWithZone:zone];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  v12 = [(NSURL *)self->_heroImageURL copyWithZone:zone];
  v13 = *(v5 + 48);
  *(v5 + 48) = v12;

  v14 = [(NSString *)self->_heroImageAttributionName copyWithZone:zone];
  v15 = *(v5 + 56);
  *(v5 + 56) = v14;

  *(v5 + 64) = self->_category;
  v16 = [(NSString *)self->_mapsCategoryIdentifier copyWithZone:zone];
  v17 = *(v5 + 72);
  *(v5 + 72) = v16;

  v18 = [(NSData *)self->_encodedStylingInfo copyWithZone:zone];
  v19 = *(v5 + 80);
  *(v5 + 80) = v18;

  v20 = [(NSURL *)self->_businessChatURL copyWithZone:zone];
  v21 = *(v5 + 88);
  *(v5 + 88) = v20;

  v22 = [(NSDate *)self->_lastProcessedDate copyWithZone:zone];
  v23 = *(v5 + 96);
  *(v5 + 96) = v22;

  return v5;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_name];
  [v3 safelyAddObject:self->_phoneNumber];
  [v3 safelyAddObject:self->_url];
  [v3 safelyAddObject:self->_heroImageURL];
  [v3 safelyAddObject:self->_heroImageAttributionName];
  [v3 safelyAddObject:self->_mapsCategoryIdentifier];
  [v3 safelyAddObject:self->_encodedStylingInfo];
  [v3 safelyAddObject:self->_businessChatURL];
  [v3 safelyAddObject:self->_lastProcessedDate];
  v4 = FKCombinedHash(17, v3);
  v5 = FKIntegerHash(v4, self->_muid);
  v6 = FKIntegerHash(v5, self->_resultProviderIdentifier);
  v7 = FKIntegerHash(v6, self->_category);

  return v7;
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
    p_isa = &v6->super.isa;
    if (self->_muid == v6->_muid && self->_resultProviderIdentifier == v6->_resultProviderIdentifier && FKEqualObjects(self->_name, v6->_name) && FKEqualObjects(self->_phoneNumber, p_isa[4]) && FKEqualObjects(self->_url, p_isa[5]) && FKEqualObjects(self->_heroImageURL, p_isa[6]) && FKEqualObjects(self->_heroImageAttributionName, p_isa[7]) && self->_category == p_isa[8] && FKEqualObjects(self->_mapsCategoryIdentifier, p_isa[9]) && FKEqualObjects(self->_encodedStylingInfo, p_isa[10]) && FKEqualObjects(self->_businessChatURL, p_isa[11]))
    {
      v8 = FKEqualObjects(self->_lastProcessedDate, p_isa[12]);
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