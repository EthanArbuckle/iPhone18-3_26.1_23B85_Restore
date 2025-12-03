@interface HMCHIPAccessoryOperationalIdentity
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMCHIPAccessoryOperationalIdentity)initWithRootPublicKey:(id)key nodeID:(id)d;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
@end

@implementation HMCHIPAccessoryOperationalIdentity

- (NSArray)attributeDescriptions
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v5 = MEMORY[0x1E696AD98];
  rootPublicKey = [(HMCHIPAccessoryOperationalIdentity *)self rootPublicKey];
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(rootPublicKey, "hash")}];
  v8 = [v4 initWithName:@"rootPublicKey Hash" value:v7];
  [array addObject:v8];

  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  nodeID = [(HMCHIPAccessoryOperationalIdentity *)self nodeID];
  v11 = [v9 initWithName:@"NodeID" value:nodeID];
  [array addObject:v11];

  v12 = [array copy];

  return v12;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (unint64_t)hash
{
  rootPublicKey = [(HMCHIPAccessoryOperationalIdentity *)self rootPublicKey];
  v4 = [rootPublicKey hash];
  nodeID = [(HMCHIPAccessoryOperationalIdentity *)self nodeID];
  v6 = [nodeID hash];

  return v6 ^ v4;
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
  if (v6)
  {
    rootPublicKey = [(HMCHIPAccessoryOperationalIdentity *)self rootPublicKey];
    rootPublicKey2 = [v6 rootPublicKey];
    if ([rootPublicKey isEqualToData:rootPublicKey2])
    {
      nodeID = [(HMCHIPAccessoryOperationalIdentity *)self nodeID];
      nodeID2 = [v6 nodeID];
      v11 = [nodeID isEqual:nodeID2];
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

- (HMCHIPAccessoryOperationalIdentity)initWithRootPublicKey:(id)key nodeID:(id)d
{
  keyCopy = key;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = HMCHIPAccessoryOperationalIdentity;
  v9 = [(HMCHIPAccessoryOperationalIdentity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_rootPublicKey, key);
    objc_storeStrong(&v10->_nodeID, d);
  }

  return v10;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end