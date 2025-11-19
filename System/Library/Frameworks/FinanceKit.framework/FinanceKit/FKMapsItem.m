@interface FKMapsItem
- (BOOL)isEqual:(id)a3;
- (FKMapsItem)initWithMUID:(unint64_t)a3 resultProviderIdentifier:(int)a4 name:(id)a5 phoneNumber:(id)a6 url:(id)a7 heroImageURL:(id)a8 heroImageAttributionName:(id)a9 category:(unint64_t)a10 mapsCategoryIdentifier:(id)a11 encodedStylingInfo:(id)a12 businessChatURL:(id)a13 lastProcessedDate:(id)a14;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation FKMapsItem

- (FKMapsItem)initWithMUID:(unint64_t)a3 resultProviderIdentifier:(int)a4 name:(id)a5 phoneNumber:(id)a6 url:(id)a7 heroImageURL:(id)a8 heroImageAttributionName:(id)a9 category:(unint64_t)a10 mapsCategoryIdentifier:(id)a11 encodedStylingInfo:(id)a12 businessChatURL:(id)a13 lastProcessedDate:(id)a14
{
  v49 = a5;
  v48 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a11;
  v23 = a12;
  v24 = a13;
  v25 = a14;
  v50.receiver = self;
  v50.super_class = FKMapsItem;
  v26 = [(FKMapsItem *)&v50 init];
  v27 = v26;
  if (v26)
  {
    v26->_muid = a3;
    v26->_resultProviderIdentifier = a4;
    v28 = [v49 copy];
    name = v27->_name;
    v27->_name = v28;

    v30 = [v48 copy];
    phoneNumber = v27->_phoneNumber;
    v27->_phoneNumber = v30;

    v32 = [v19 copy];
    url = v27->_url;
    v27->_url = v32;

    v34 = [v20 copy];
    heroImageURL = v27->_heroImageURL;
    v27->_heroImageURL = v34;

    v36 = [v21 copy];
    heroImageAttributionName = v27->_heroImageAttributionName;
    v27->_heroImageAttributionName = v36;

    v27->_category = a10;
    v38 = [v22 copy];
    mapsCategoryIdentifier = v27->_mapsCategoryIdentifier;
    v27->_mapsCategoryIdentifier = v38;

    v40 = [v23 copy];
    encodedStylingInfo = v27->_encodedStylingInfo;
    v27->_encodedStylingInfo = v40;

    v42 = [v24 copy];
    businessChatURL = v27->_businessChatURL;
    v27->_businessChatURL = v42;

    v44 = [v25 copy];
    lastProcessedDate = v27->_lastProcessedDate;
    v27->_lastProcessedDate = v44;
  }

  return v27;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  *(v5 + 16) = self->_muid;
  *(v5 + 8) = self->_resultProviderIdentifier;
  v6 = [(NSString *)self->_name copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_phoneNumber copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSURL *)self->_url copyWithZone:a3];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  v12 = [(NSURL *)self->_heroImageURL copyWithZone:a3];
  v13 = *(v5 + 48);
  *(v5 + 48) = v12;

  v14 = [(NSString *)self->_heroImageAttributionName copyWithZone:a3];
  v15 = *(v5 + 56);
  *(v5 + 56) = v14;

  *(v5 + 64) = self->_category;
  v16 = [(NSString *)self->_mapsCategoryIdentifier copyWithZone:a3];
  v17 = *(v5 + 72);
  *(v5 + 72) = v16;

  v18 = [(NSData *)self->_encodedStylingInfo copyWithZone:a3];
  v19 = *(v5 + 80);
  *(v5 + 80) = v18;

  v20 = [(NSURL *)self->_businessChatURL copyWithZone:a3];
  v21 = *(v5 + 88);
  *(v5 + 88) = v20;

  v22 = [(NSDate *)self->_lastProcessedDate copyWithZone:a3];
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