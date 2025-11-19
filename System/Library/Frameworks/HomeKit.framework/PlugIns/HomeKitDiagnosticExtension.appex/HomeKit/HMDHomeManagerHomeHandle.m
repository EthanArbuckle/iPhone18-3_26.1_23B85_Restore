@interface HMDHomeManagerHomeHandle
- (HMDHomeManagerHomeHandle)initWithBackingStoreUUID:(id)a3 homeUUID:(id)a4;
- (HMDHomeManagerHomeHandle)initWithCoder:(id)a3;
- (id)attributeDescriptions;
- (id)shortDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDHomeManagerHomeHandle

- (id)attributeDescriptions
{
  v3 = [HMFAttributeDescription alloc];
  v4 = [(HMDHomeManagerHomeHandle *)self homeUUID];
  v5 = [v3 initWithName:@"homeUUID" value:v4];
  v11[0] = v5;
  v6 = [HMFAttributeDescription alloc];
  v7 = [(HMDHomeManagerHomeHandle *)self backingStoreUUID];
  v8 = [v6 initWithName:@"backingStoreUUID" value:v7];
  v11[1] = v8;
  v9 = [NSArray arrayWithObjects:v11 count:2];

  return v9;
}

- (id)shortDescription
{
  v3 = [objc_opt_class() shortDescription];
  v4 = [(HMDHomeManagerHomeHandle *)self homeUUID];
  v5 = [(HMDHomeManagerHomeHandle *)self backingStoreUUID];
  v6 = [NSString stringWithFormat:@"%@ %@, %@", v3, v4, v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeManagerHomeHandle *)self backingStoreUUID];
  [v4 encodeObject:v5 forKey:@"HMHH.b"];

  v6 = [(HMDHomeManagerHomeHandle *)self homeUUID];
  [v4 encodeObject:v6 forKey:@"HMHH.h"];
}

- (HMDHomeManagerHomeHandle)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMHH.b"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMHH.h"];

  v7 = [(HMDHomeManagerHomeHandle *)self initWithBackingStoreUUID:v5 homeUUID:v6];
  return v7;
}

- (HMDHomeManagerHomeHandle)initWithBackingStoreUUID:(id)a3 homeUUID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDHomeManagerHomeHandle;
  v9 = [(HMDHomeManagerHomeHandle *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_backingStoreUUID, a3);
    objc_storeStrong(&v10->_homeUUID, a4);
  }

  return v10;
}

@end