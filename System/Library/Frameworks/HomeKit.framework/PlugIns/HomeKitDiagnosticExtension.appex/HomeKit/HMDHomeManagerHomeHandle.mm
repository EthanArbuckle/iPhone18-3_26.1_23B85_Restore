@interface HMDHomeManagerHomeHandle
- (HMDHomeManagerHomeHandle)initWithBackingStoreUUID:(id)d homeUUID:(id)iD;
- (HMDHomeManagerHomeHandle)initWithCoder:(id)coder;
- (id)attributeDescriptions;
- (id)shortDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDHomeManagerHomeHandle

- (id)attributeDescriptions
{
  v3 = [HMFAttributeDescription alloc];
  homeUUID = [(HMDHomeManagerHomeHandle *)self homeUUID];
  v5 = [v3 initWithName:@"homeUUID" value:homeUUID];
  v11[0] = v5;
  v6 = [HMFAttributeDescription alloc];
  backingStoreUUID = [(HMDHomeManagerHomeHandle *)self backingStoreUUID];
  v8 = [v6 initWithName:@"backingStoreUUID" value:backingStoreUUID];
  v11[1] = v8;
  v9 = [NSArray arrayWithObjects:v11 count:2];

  return v9;
}

- (id)shortDescription
{
  shortDescription = [objc_opt_class() shortDescription];
  homeUUID = [(HMDHomeManagerHomeHandle *)self homeUUID];
  backingStoreUUID = [(HMDHomeManagerHomeHandle *)self backingStoreUUID];
  v6 = [NSString stringWithFormat:@"%@ %@, %@", shortDescription, homeUUID, backingStoreUUID];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  backingStoreUUID = [(HMDHomeManagerHomeHandle *)self backingStoreUUID];
  [coderCopy encodeObject:backingStoreUUID forKey:@"HMHH.b"];

  homeUUID = [(HMDHomeManagerHomeHandle *)self homeUUID];
  [coderCopy encodeObject:homeUUID forKey:@"HMHH.h"];
}

- (HMDHomeManagerHomeHandle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMHH.b"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMHH.h"];

  v7 = [(HMDHomeManagerHomeHandle *)self initWithBackingStoreUUID:v5 homeUUID:v6];
  return v7;
}

- (HMDHomeManagerHomeHandle)initWithBackingStoreUUID:(id)d homeUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = HMDHomeManagerHomeHandle;
  v9 = [(HMDHomeManagerHomeHandle *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_backingStoreUUID, d);
    objc_storeStrong(&v10->_homeUUID, iD);
  }

  return v10;
}

@end