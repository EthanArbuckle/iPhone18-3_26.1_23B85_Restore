@interface HMUserCloudShareRepairInfo
- (HMUserCloudShareRepairInfo)init;
- (HMUserCloudShareRepairInfo)initWithCoder:(id)coder;
- (HMUserCloudShareRepairInfo)initWithIdentifier:(id)identifier version:(int64_t)version;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMUserCloudShareRepairInfo

- (HMUserCloudShareRepairInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];

  if (v6)
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = 1;
  }

  v8 = [(HMUserCloudShareRepairInfo *)self initWithIdentifier:v5 version:integerValue];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(HMUserCloudShareRepairInfo *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMUserCloudShareRepairInfo version](self, "version")}];
  [coderCopy encodeObject:v6 forKey:@"version"];
}

- (HMUserCloudShareRepairInfo)init
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v4 = [(HMUserCloudShareRepairInfo *)self initWithIdentifier:uUID version:1];

  return v4;
}

- (HMUserCloudShareRepairInfo)initWithIdentifier:(id)identifier version:(int64_t)version
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = HMUserCloudShareRepairInfo;
  v8 = [(HMUserCloudShareRepairInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, identifier);
    v9->_version = version;
  }

  return v9;
}

@end