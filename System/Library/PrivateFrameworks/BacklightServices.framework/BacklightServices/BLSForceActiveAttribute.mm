@interface BLSForceActiveAttribute
+ (id)forceActive;
- (BLSForceActiveAttribute)initWithCoder:(id)coder;
- (BLSForceActiveAttribute)initWithUserInitiated:(BOOL)initiated;
- (BLSForceActiveAttribute)initWithXPCDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation BLSForceActiveAttribute

+ (id)forceActive
{
  v2 = [[self alloc] initWithUserInitiated:0];

  return v2;
}

- (BLSForceActiveAttribute)initWithUserInitiated:(BOOL)initiated
{
  v5.receiver = self;
  v5.super_class = BLSForceActiveAttribute;
  result = [(BLSAttribute *)&v5 init];
  if (result)
  {
    result->_userInitiated = initiated;
  }

  return result;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:self->_userInitiated withName:@"userInitiated"];
  build = [v3 build];

  return build;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendBool:self->_userInitiated];
  v5 = [builder hash];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      userInitiated = self->_userInitiated;
      v6 = userInitiated == [(BLSForceActiveAttribute *)equalCopy userInitiated];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BLSForceActiveAttribute)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = xpc_dictionary_get_BOOL(dictionaryCopy, [@"userInitiated" UTF8String]);

  return [(BLSForceActiveAttribute *)self initWithUserInitiated:v5];
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  xdict = dictionary;
  xpc_dictionary_set_BOOL(xdict, [@"userInitiated" UTF8String], self->_userInitiated);
}

- (BLSForceActiveAttribute)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"userInitiated"];

  return [(BLSForceActiveAttribute *)self initWithUserInitiated:v4];
}

@end