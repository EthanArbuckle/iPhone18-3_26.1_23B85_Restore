@interface HMMediaSystemRole
+ (BOOL)roleFromDictionary:(id)dictionary roleOutput:(unint64_t *)output;
+ (id)leftRole;
+ (id)rightRole;
- (BOOL)isEqual:(id)equal;
- (HMMediaSystemRole)initWithCoder:(id)coder;
- (HMMediaSystemRole)initWithDictionary:(id)dictionary;
- (HMMediaSystemRole)initWithRole:(unint64_t)role;
- (id)description;
- (id)serialize;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMMediaSystemRole

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:{-[HMMediaSystemRole type](self, "type")}];
  [coderCopy encodeObject:v6 forKey:kMediaSystemRoleTypeCodingKey];
}

- (HMMediaSystemRole)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = HMMediaSystemRole;
  v5 = [(HMMediaSystemRole *)&v8 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:kMediaSystemRoleTypeCodingKey];
    v5->_type = [v6 unsignedIntegerValue];
  }

  return v5;
}

- (id)serialize
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMMediaSystemRole type](self, "type")}];
  [dictionary setObject:v4 forKeyedSubscript:kMediaSystemRoleTypeCodingKey];

  v5 = [dictionary copy];

  return v5;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = HMMediaSystemRoleTypeAsString([(HMMediaSystemRole *)self type]);
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (unint64_t)hash
{
  v2 = HMMediaSystemRoleTypeAsString([(HMMediaSystemRole *)self type]);
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = 0;
  if (equalCopy && (isKindOfClass & 1) != 0)
  {
    type = [equalCopy type];
    v6 = type == [(HMMediaSystemRole *)self type];
  }

  return v6;
}

- (HMMediaSystemRole)initWithRole:(unint64_t)role
{
  v5.receiver = self;
  v5.super_class = HMMediaSystemRole;
  result = [(HMMediaSystemRole *)&v5 init];
  if (result)
  {
    result->_type = role;
  }

  return result;
}

- (HMMediaSystemRole)initWithDictionary:(id)dictionary
{
  v4 = [dictionary hmf_numberForKey:kMediaSystemRoleTypeCodingKey];
  v5 = -[HMMediaSystemRole initWithRole:](self, "initWithRole:", [v4 unsignedIntegerValue]);

  return v5;
}

+ (BOOL)roleFromDictionary:(id)dictionary roleOutput:(unint64_t *)output
{
  v5 = [dictionary hmf_numberForKey:kMediaSystemRoleTypeCodingKey];
  v6 = v5;
  if (v5)
  {
    *output = [v5 integerValue];
  }

  return v6 != 0;
}

+ (id)rightRole
{
  v2 = [[HMMediaSystemRole alloc] initWithRole:2];

  return v2;
}

+ (id)leftRole
{
  v2 = [[HMMediaSystemRole alloc] initWithRole:1];

  return v2;
}

@end