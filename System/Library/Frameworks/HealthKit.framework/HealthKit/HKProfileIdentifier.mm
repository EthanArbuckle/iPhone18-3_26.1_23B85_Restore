@interface HKProfileIdentifier
+ (id)_profileWithUUID:(id)d type:(int64_t)type;
+ (id)primaryProfile;
- (BOOL)isEqual:(id)equal;
- (HKProfileIdentifier)init;
- (HKProfileIdentifier)initWithCoder:(id)coder;
- (id)_init;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

+ (id)_profileWithUUID:(id)d type:(int64_t)type
{
  dCopy = d;
  _init = [[HKProfileIdentifier alloc] _init];
  v7 = [dCopy copy];

  v8 = _init[1];
  _init[1] = v7;

  _init[2] = type;

  return _init;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = self->_identifier;
    identifier = [equalCopy identifier];
    v7 = [(NSUUID *)identifier isEqual:identifier];
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

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"pident"];
  [coderCopy encodeInteger:self->_type forKey:@"ptype"];
}

- (HKProfileIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  _init = [(HKProfileIdentifier *)self _init];
  if (_init)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pident"];
    identifier = _init->_identifier;
    _init->_identifier = v6;

    _init->_type = [coderCopy decodeIntegerForKey:@"ptype"];
  }

  return _init;
}

@end