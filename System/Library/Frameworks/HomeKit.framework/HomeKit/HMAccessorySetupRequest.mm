@interface HMAccessorySetupRequest
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMAccessorySetupRequest)init;
- (HMAccessorySetupRequest)initWithCoder:(id)a3;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMAccessorySetupRequest

- (NSArray)attributeDescriptions
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(HMAccessorySetupRequest *)self payload];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69A29C8]);
    v6 = [(HMAccessorySetupRequest *)self payload];
    v7 = [v5 initWithName:@"Payload" value:v6];
    [v3 addObject:v7];
  }

  v8 = [(HMAccessorySetupRequest *)self matterPayload];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E69A29C8]);
    v10 = [(HMAccessorySetupRequest *)self matterPayload];
    v11 = [v9 initWithName:@"Matter Payload" value:v10];
    [v3 addObject:v11];
  }

  v12 = [(HMAccessorySetupRequest *)self homeUniqueIdentifier];

  if (v12)
  {
    v13 = objc_alloc(MEMORY[0x1E69A29C8]);
    v14 = [(HMAccessorySetupRequest *)self homeUniqueIdentifier];
    v15 = [v13 initWithName:@"Home Unique Identifier" value:v14];
    [v3 addObject:v15];
  }

  v16 = [(HMAccessorySetupRequest *)self suggestedRoomUniqueIdentifier];

  if (v16)
  {
    v17 = objc_alloc(MEMORY[0x1E69A29C8]);
    v18 = [(HMAccessorySetupRequest *)self suggestedRoomUniqueIdentifier];
    v19 = [v17 initWithName:@"Suggested Room Unique Identifier" value:v18];
    [v3 addObject:v19];
  }

  v20 = [(HMAccessorySetupRequest *)self suggestedAccessoryName];

  if (v20)
  {
    v21 = objc_alloc(MEMORY[0x1E69A29C8]);
    v22 = [(HMAccessorySetupRequest *)self suggestedAccessoryName];
    v23 = [v21 initWithName:@"Suggested Accessory Name" value:v22];
    [v3 addObject:v23];
  }

  v24 = [v3 copy];

  return v24;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMAccessorySetupRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMASR.ck.payload"];
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
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMASR.ck.matterPayload"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMASR.ck.homeUniqueIdentifier"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMASR.ck.suggestedRoomUniqueIdentifier"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMASR.ck.suggestedAccessoryName"];
  v12 = [(HMAccessorySetupRequest *)self init];
  [(HMAccessorySetupRequest *)v12 setPayload:v5];
  [(HMAccessorySetupRequest *)v12 setMatterPayload:v8];
  [(HMAccessorySetupRequest *)v12 setHomeUniqueIdentifier:v9];
  [(HMAccessorySetupRequest *)v12 setSuggestedRoomUniqueIdentifier:v10];
  [(HMAccessorySetupRequest *)v12 setSuggestedAccessoryName:v11];

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMAccessorySetupRequest *)self payload];
  [v4 encodeObject:v5 forKey:@"HMASR.ck.payload"];

  v6 = [(HMAccessorySetupRequest *)self matterPayload];
  [v4 encodeObject:v6 forKey:@"HMASR.ck.matterPayload"];

  v7 = [(HMAccessorySetupRequest *)self homeUniqueIdentifier];
  [v4 encodeObject:v7 forKey:@"HMASR.ck.homeUniqueIdentifier"];

  v8 = [(HMAccessorySetupRequest *)self suggestedRoomUniqueIdentifier];
  [v4 encodeObject:v8 forKey:@"HMASR.ck.suggestedRoomUniqueIdentifier"];

  v9 = [(HMAccessorySetupRequest *)self suggestedAccessoryName];
  [v4 encodeObject:v9 forKey:@"HMASR.ck.suggestedAccessoryName"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[HMAccessorySetupRequest allocWithZone:?]];
  v5 = [(HMAccessorySetupRequest *)self payload];
  [(HMAccessorySetupRequest *)v4 setPayload:v5];

  v6 = [(HMAccessorySetupRequest *)self matterPayload];
  [(HMAccessorySetupRequest *)v4 setMatterPayload:v6];

  v7 = [(HMAccessorySetupRequest *)self homeUniqueIdentifier];
  [(HMAccessorySetupRequest *)v4 setHomeUniqueIdentifier:v7];

  v8 = [(HMAccessorySetupRequest *)self suggestedRoomUniqueIdentifier];
  [(HMAccessorySetupRequest *)v4 setSuggestedRoomUniqueIdentifier:v8];

  v9 = [(HMAccessorySetupRequest *)self suggestedAccessoryName];
  [(HMAccessorySetupRequest *)v4 setSuggestedAccessoryName:v9];

  return v4;
}

- (unint64_t)hash
{
  v3 = [(HMAccessorySetupRequest *)self payload];
  v4 = [v3 hash];

  v5 = [(HMAccessorySetupRequest *)self matterPayload];
  v6 = [v5 hash] ^ v4;

  v7 = [(HMAccessorySetupRequest *)self homeUniqueIdentifier];
  v8 = [v7 hash];

  v9 = [(HMAccessorySetupRequest *)self suggestedRoomUniqueIdentifier];
  v10 = v6 ^ v8 ^ [v9 hash];

  v11 = [(HMAccessorySetupRequest *)self suggestedAccessoryName];
  v12 = [v11 hash];

  return v10 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

  v7 = [(HMAccessorySetupRequest *)self payload];
  v8 = [v6 payload];
  v9 = HMFEqualObjects();

  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = [(HMAccessorySetupRequest *)self matterPayload];
  v11 = [v6 matterPayload];
  v12 = HMFEqualObjects();

  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = [(HMAccessorySetupRequest *)self homeUniqueIdentifier];
  v14 = [v6 homeUniqueIdentifier];
  v15 = HMFEqualObjects();

  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = [(HMAccessorySetupRequest *)self suggestedRoomUniqueIdentifier];
  v17 = [v6 suggestedRoomUniqueIdentifier];
  v18 = HMFEqualObjects();

  if (v18)
  {
    v19 = [(HMAccessorySetupRequest *)self suggestedAccessoryName];
    v20 = [v6 suggestedAccessoryName];
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