@interface HMCHIPAccessoryOperationalIdentity
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMCHIPAccessoryOperationalIdentity)initWithRootPublicKey:(id)a3 nodeID:(id)a4;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
@end

@implementation HMCHIPAccessoryOperationalIdentity

- (NSArray)attributeDescriptions
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v5 = MEMORY[0x1E696AD98];
  v6 = [(HMCHIPAccessoryOperationalIdentity *)self rootPublicKey];
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "hash")}];
  v8 = [v4 initWithName:@"rootPublicKey Hash" value:v7];
  [v3 addObject:v8];

  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  v10 = [(HMCHIPAccessoryOperationalIdentity *)self nodeID];
  v11 = [v9 initWithName:@"NodeID" value:v10];
  [v3 addObject:v11];

  v12 = [v3 copy];

  return v12;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (unint64_t)hash
{
  v3 = [(HMCHIPAccessoryOperationalIdentity *)self rootPublicKey];
  v4 = [v3 hash];
  v5 = [(HMCHIPAccessoryOperationalIdentity *)self nodeID];
  v6 = [v5 hash];

  return v6 ^ v4;
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
  if (v6)
  {
    v7 = [(HMCHIPAccessoryOperationalIdentity *)self rootPublicKey];
    v8 = [v6 rootPublicKey];
    if ([v7 isEqualToData:v8])
    {
      v9 = [(HMCHIPAccessoryOperationalIdentity *)self nodeID];
      v10 = [v6 nodeID];
      v11 = [v9 isEqual:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (HMCHIPAccessoryOperationalIdentity)initWithRootPublicKey:(id)a3 nodeID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMCHIPAccessoryOperationalIdentity;
  v9 = [(HMCHIPAccessoryOperationalIdentity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_rootPublicKey, a3);
    objc_storeStrong(&v10->_nodeID, a4);
  }

  return v10;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end