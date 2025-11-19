@interface HKProfileIdentifier
+ (id)_profileWithUUID:(id)a3 type:(int64_t)a4;
+ (id)primaryProfile;
- (BOOL)isEqual:(id)a3;
- (HKProfileIdentifier)init;
- (HKProfileIdentifier)initWithCoder:(id)a3;
- (id)_init;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKProfileIdentifier

- (id)_init
{
  v3.receiver = self;
  v3.super_class = HKProfileIdentifier;
  return [(HKProfileIdentifier *)&v3 init];
}

- (HKProfileIdentifier)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (id)primaryProfile
{
  if (primaryProfile_onceToken != -1)
  {
    +[HKProfileIdentifier primaryProfile];
  }

  v3 = primaryProfile_primaryProfile;

  return v3;
}

uint64_t __37__HKProfileIdentifier_primaryProfile__block_invoke()
{
  v0 = [[HKProfileIdentifier alloc] _init];
  v1 = primaryProfile_primaryProfile;
  primaryProfile_primaryProfile = v0;

  *(primaryProfile_primaryProfile + 16) = 1;
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  v3 = *(primaryProfile_primaryProfile + 8);
  *(primaryProfile_primaryProfile + 8) = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

+ (id)_profileWithUUID:(id)a3 type:(int64_t)a4
{
  v5 = a3;
  v6 = [[HKProfileIdentifier alloc] _init];
  v7 = [v5 copy];

  v8 = v6[1];
  v6[1] = v7;

  v6[2] = a4;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = self->_identifier;
    v6 = [v4 identifier];
    v7 = [(NSUUID *)identifier isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = HKStringFromProfileType(self->_type);
  v7 = [v3 stringWithFormat:@"<%@ %@ %@>", v5, v6, self->_identifier];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"pident"];
  [v5 encodeInteger:self->_type forKey:@"ptype"];
}

- (HKProfileIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HKProfileIdentifier *)self _init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pident"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_type = [v4 decodeIntegerForKey:@"ptype"];
  }

  return v5;
}

@end