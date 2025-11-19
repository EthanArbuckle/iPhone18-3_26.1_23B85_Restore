@interface HMMediaSystemRole
+ (BOOL)roleFromDictionary:(id)a3 roleOutput:(unint64_t *)a4;
+ (id)leftRole;
+ (id)rightRole;
- (BOOL)isEqual:(id)a3;
- (HMMediaSystemRole)initWithCoder:(id)a3;
- (HMMediaSystemRole)initWithDictionary:(id)a3;
- (HMMediaSystemRole)initWithRole:(unint64_t)a3;
- (id)description;
- (id)serialize;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMMediaSystemRole

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithUnsignedInteger:{-[HMMediaSystemRole type](self, "type")}];
  [v5 encodeObject:v6 forKey:kMediaSystemRoleTypeCodingKey];
}

- (HMMediaSystemRole)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HMMediaSystemRole;
  v5 = [(HMMediaSystemRole *)&v8 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:kMediaSystemRoleTypeCodingKey];
    v5->_type = [v6 unsignedIntegerValue];
  }

  return v5;
}

- (id)serialize
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMMediaSystemRole type](self, "type")}];
  [v3 setObject:v4 forKeyedSubscript:kMediaSystemRoleTypeCodingKey];

  v5 = [v3 copy];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = 0;
  if (v4 && (isKindOfClass & 1) != 0)
  {
    v7 = [v4 type];
    v6 = v7 == [(HMMediaSystemRole *)self type];
  }

  return v6;
}

- (HMMediaSystemRole)initWithRole:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = HMMediaSystemRole;
  result = [(HMMediaSystemRole *)&v5 init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

- (HMMediaSystemRole)initWithDictionary:(id)a3
{
  v4 = [a3 hmf_numberForKey:kMediaSystemRoleTypeCodingKey];
  v5 = -[HMMediaSystemRole initWithRole:](self, "initWithRole:", [v4 unsignedIntegerValue]);

  return v5;
}

+ (BOOL)roleFromDictionary:(id)a3 roleOutput:(unint64_t *)a4
{
  v5 = [a3 hmf_numberForKey:kMediaSystemRoleTypeCodingKey];
  v6 = v5;
  if (v5)
  {
    *a4 = [v5 integerValue];
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