@interface HMUserCloudShareRepairInfo
- (HMUserCloudShareRepairInfo)init;
- (HMUserCloudShareRepairInfo)initWithCoder:(id)a3;
- (HMUserCloudShareRepairInfo)initWithIdentifier:(id)a3 version:(int64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMUserCloudShareRepairInfo

- (HMUserCloudShareRepairInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"version"];

  if (v6)
  {
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = 1;
  }

  v8 = [(HMUserCloudShareRepairInfo *)self initWithIdentifier:v5 version:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMUserCloudShareRepairInfo *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMUserCloudShareRepairInfo version](self, "version")}];
  [v4 encodeObject:v6 forKey:@"version"];
}

- (HMUserCloudShareRepairInfo)init
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [(HMUserCloudShareRepairInfo *)self initWithIdentifier:v3 version:1];

  return v4;
}

- (HMUserCloudShareRepairInfo)initWithIdentifier:(id)a3 version:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HMUserCloudShareRepairInfo;
  v8 = [(HMUserCloudShareRepairInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, a3);
    v9->_version = a4;
  }

  return v9;
}

@end