@interface HMAccessorySetupRequest
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMAccessorySetupRequest)init;
- (HMAccessorySetupRequest)initWithCoder:(id)coder;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMAccessorySetupRequest

- (NSArray)attributeDescriptions
{
  array = [MEMORY[0x1E695DF70] array];
  payload = [(HMAccessorySetupRequest *)self payload];

  if (payload)
  {
    v5 = objc_alloc(MEMORY[0x1E69A29C8]);
    payload2 = [(HMAccessorySetupRequest *)self payload];
    v7 = [v5 initWithName:@"Payload" value:payload2];
    [array addObject:v7];
  }

  matterPayload = [(HMAccessorySetupRequest *)self matterPayload];

  if (matterPayload)
  {
    v9 = objc_alloc(MEMORY[0x1E69A29C8]);
    matterPayload2 = [(HMAccessorySetupRequest *)self matterPayload];
    v11 = [v9 initWithName:@"Matter Payload" value:matterPayload2];
    [array addObject:v11];
  }

  homeUniqueIdentifier = [(HMAccessorySetupRequest *)self homeUniqueIdentifier];

  if (homeUniqueIdentifier)
  {
    v13 = objc_alloc(MEMORY[0x1E69A29C8]);
    homeUniqueIdentifier2 = [(HMAccessorySetupRequest *)self homeUniqueIdentifier];
    v15 = [v13 initWithName:@"Home Unique Identifier" value:homeUniqueIdentifier2];
    [array addObject:v15];
  }

  suggestedRoomUniqueIdentifier = [(HMAccessorySetupRequest *)self suggestedRoomUniqueIdentifier];

  if (suggestedRoomUniqueIdentifier)
  {
    v17 = objc_alloc(MEMORY[0x1E69A29C8]);
    suggestedRoomUniqueIdentifier2 = [(HMAccessorySetupRequest *)self suggestedRoomUniqueIdentifier];
    v19 = [v17 initWithName:@"Suggested Room Unique Identifier" value:suggestedRoomUniqueIdentifier2];
    [array addObject:v19];
  }

  suggestedAccessoryName = [(HMAccessorySetupRequest *)self suggestedAccessoryName];

  if (suggestedAccessoryName)
  {
    v21 = objc_alloc(MEMORY[0x1E69A29C8]);
    suggestedAccessoryName2 = [(HMAccessorySetupRequest *)self suggestedAccessoryName];
    v23 = [v21 initWithName:@"Suggested Accessory Name" value:suggestedAccessoryName2];
    [array addObject:v23];
  }

  v24 = [array copy];

  return v24;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMAccessorySetupRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMASR.ck.payload"];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v6 = getMTRSetupPayloadClass_softClass;
  v18 = getMTRSetupPayloadClass_softClass;
  if (!getMTRSetupPayloadClass_softClass)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __getMTRSetupPayloadClass_block_invoke;
    v14[3] = &unk_1E754CB30;
    v14[4] = &v15;
    __getMTRSetupPayloadClass_block_invoke(v14);
    v6 = v16[3];
  }

  v7 = v6;
  _Block_object_dispose(&v15, 8);
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMASR.ck.matterPayload"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMASR.ck.homeUniqueIdentifier"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMASR.ck.suggestedRoomUniqueIdentifier"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMASR.ck.suggestedAccessoryName"];
  v12 = [(HMAccessorySetupRequest *)self init];
  [(HMAccessorySetupRequest *)v12 setPayload:v5];
  [(HMAccessorySetupRequest *)v12 setMatterPayload:v8];
  [(HMAccessorySetupRequest *)v12 setHomeUniqueIdentifier:v9];
  [(HMAccessorySetupRequest *)v12 setSuggestedRoomUniqueIdentifier:v10];
  [(HMAccessorySetupRequest *)v12 setSuggestedAccessoryName:v11];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  payload = [(HMAccessorySetupRequest *)self payload];
  [coderCopy encodeObject:payload forKey:@"HMASR.ck.payload"];

  matterPayload = [(HMAccessorySetupRequest *)self matterPayload];
  [coderCopy encodeObject:matterPayload forKey:@"HMASR.ck.matterPayload"];

  homeUniqueIdentifier = [(HMAccessorySetupRequest *)self homeUniqueIdentifier];
  [coderCopy encodeObject:homeUniqueIdentifier forKey:@"HMASR.ck.homeUniqueIdentifier"];

  suggestedRoomUniqueIdentifier = [(HMAccessorySetupRequest *)self suggestedRoomUniqueIdentifier];
  [coderCopy encodeObject:suggestedRoomUniqueIdentifier forKey:@"HMASR.ck.suggestedRoomUniqueIdentifier"];

  suggestedAccessoryName = [(HMAccessorySetupRequest *)self suggestedAccessoryName];
  [coderCopy encodeObject:suggestedAccessoryName forKey:@"HMASR.ck.suggestedAccessoryName"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[HMAccessorySetupRequest allocWithZone:?]];
  payload = [(HMAccessorySetupRequest *)self payload];
  [(HMAccessorySetupRequest *)v4 setPayload:payload];

  matterPayload = [(HMAccessorySetupRequest *)self matterPayload];
  [(HMAccessorySetupRequest *)v4 setMatterPayload:matterPayload];

  homeUniqueIdentifier = [(HMAccessorySetupRequest *)self homeUniqueIdentifier];
  [(HMAccessorySetupRequest *)v4 setHomeUniqueIdentifier:homeUniqueIdentifier];

  suggestedRoomUniqueIdentifier = [(HMAccessorySetupRequest *)self suggestedRoomUniqueIdentifier];
  [(HMAccessorySetupRequest *)v4 setSuggestedRoomUniqueIdentifier:suggestedRoomUniqueIdentifier];

  suggestedAccessoryName = [(HMAccessorySetupRequest *)self suggestedAccessoryName];
  [(HMAccessorySetupRequest *)v4 setSuggestedAccessoryName:suggestedAccessoryName];

  return v4;
}

- (unint64_t)hash
{
  payload = [(HMAccessorySetupRequest *)self payload];
  v4 = [payload hash];

  matterPayload = [(HMAccessorySetupRequest *)self matterPayload];
  v6 = [matterPayload hash] ^ v4;

  homeUniqueIdentifier = [(HMAccessorySetupRequest *)self homeUniqueIdentifier];
  v8 = [homeUniqueIdentifier hash];

  suggestedRoomUniqueIdentifier = [(HMAccessorySetupRequest *)self suggestedRoomUniqueIdentifier];
  v10 = v6 ^ v8 ^ [suggestedRoomUniqueIdentifier hash];

  suggestedAccessoryName = [(HMAccessorySetupRequest *)self suggestedAccessoryName];
  v12 = [suggestedAccessoryName hash];

  return v10 ^ v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (!v6)
  {
    goto LABEL_10;
  }

  payload = [(HMAccessorySetupRequest *)self payload];
  payload2 = [v6 payload];
  v9 = HMFEqualObjects();

  if (!v9)
  {
    goto LABEL_10;
  }

  matterPayload = [(HMAccessorySetupRequest *)self matterPayload];
  matterPayload2 = [v6 matterPayload];
  v12 = HMFEqualObjects();

  if (!v12)
  {
    goto LABEL_10;
  }

  homeUniqueIdentifier = [(HMAccessorySetupRequest *)self homeUniqueIdentifier];
  homeUniqueIdentifier2 = [v6 homeUniqueIdentifier];
  v15 = HMFEqualObjects();

  if (!v15)
  {
    goto LABEL_10;
  }

  suggestedRoomUniqueIdentifier = [(HMAccessorySetupRequest *)self suggestedRoomUniqueIdentifier];
  suggestedRoomUniqueIdentifier2 = [v6 suggestedRoomUniqueIdentifier];
  v18 = HMFEqualObjects();

  if (v18)
  {
    suggestedAccessoryName = [(HMAccessorySetupRequest *)self suggestedAccessoryName];
    suggestedAccessoryName2 = [v6 suggestedAccessoryName];
    v21 = HMFEqualObjects();
  }

  else
  {
LABEL_10:
    v21 = 0;
  }

  return v21;
}

- (HMAccessorySetupRequest)init
{
  v3.receiver = self;
  v3.super_class = HMAccessorySetupRequest;
  return [(HMAccessorySetupRequest *)&v3 init];
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end