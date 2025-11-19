@interface HMAccessoryAllowedHost
- (HMAccessoryAllowedHost)initWithCoder:(id)a3;
- (NSString)address;
- (NSString)name;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMAccessoryAllowedHost

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = MEMORY[0x1E696AEC0];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (NSString)address
{
  v2 = [(HMAccessoryAllowedHost *)self addresses];
  v3 = [v2 anyObject];

  return v3;
}

- (NSString)name
{
  if ([(HMAccessoryAllowedHost *)self isUnrestricted])
  {
    v3 = +[HMLocalization sharedManager];
    v4 = [v3 getLocalizedString:@"ALLOWED_HOST_UNRESTRICTED_NAME"];
  }

  else
  {
    v4 = self->_name;
  }

  return v4;
}

- (HMAccessoryAllowedHost)initWithCoder:(id)a3
{
  v17[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HMAccessoryAllowedHost;
  v5 = [(HMAccessoryAllowedHost *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMAAH.name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMAAH.purpose"];
    v5->_purpose = [v8 unsignedIntegerValue];
    v9 = MEMORY[0x1E695DFD8];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v11 = [v9 setWithArray:v10];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"HMAAH.hostAddresses"];
    addresses = v5->_addresses;
    v5->_addresses = v12;

    v5->_unrestricted = [v4 decodeBoolForKey:@"HMAAH.unrestricted"];
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

@end