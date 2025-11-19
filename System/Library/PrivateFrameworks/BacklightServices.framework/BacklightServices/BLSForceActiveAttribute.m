@interface BLSForceActiveAttribute
+ (id)forceActive;
- (BLSForceActiveAttribute)initWithCoder:(id)a3;
- (BLSForceActiveAttribute)initWithUserInitiated:(BOOL)a3;
- (BLSForceActiveAttribute)initWithXPCDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation BLSForceActiveAttribute

+ (id)forceActive
{
  v2 = [[a1 alloc] initWithUserInitiated:0];

  return v2;
}

- (BLSForceActiveAttribute)initWithUserInitiated:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = BLSForceActiveAttribute;
  result = [(BLSAttribute *)&v5 init];
  if (result)
  {
    result->_userInitiated = a3;
  }

  return result;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:self->_userInitiated withName:@"userInitiated"];
  v5 = [v3 build];

  return v5;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendBool:self->_userInitiated];
  v5 = [v3 hash];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      userInitiated = self->_userInitiated;
      v6 = userInitiated == [(BLSForceActiveAttribute *)v4 userInitiated];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BLSForceActiveAttribute)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_get_BOOL(v4, [@"userInitiated" UTF8String]);

  return [(BLSForceActiveAttribute *)self initWithUserInitiated:v5];
}

- (void)encodeWithXPCDictionary:(id)a3
{
  xdict = a3;
  xpc_dictionary_set_BOOL(xdict, [@"userInitiated" UTF8String], self->_userInitiated);
}

- (BLSForceActiveAttribute)initWithCoder:(id)a3
{
  v4 = [a3 decodeBoolForKey:@"userInitiated"];

  return [(BLSForceActiveAttribute *)self initWithUserInitiated:v4];
}

@end