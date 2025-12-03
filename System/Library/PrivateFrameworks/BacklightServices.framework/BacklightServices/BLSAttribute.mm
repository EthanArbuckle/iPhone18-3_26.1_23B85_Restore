@interface BLSAttribute
- (BLSAttribute)init;
- (BLSAttribute)initWithCoder:(id)coder;
- (BLSAttribute)initWithXPCDictionary:(id)dictionary;
- (BOOL)checkEntitlementSource:(id)source forSingleEntitlement:(id)entitlement error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)errorForMissingEntitlement:(id)entitlement inSource:(id)source;
- (unint64_t)hash;
@end

@implementation BLSAttribute

- (BLSAttribute)init
{
  v3.receiver = self;
  v3.super_class = BLSAttribute;
  return [(BLSAttribute *)&v3 init];
}

- (unint64_t)hash
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 hash];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  equalCopy = equal;
  v4 = objc_opt_class();
  v5 = objc_opt_class();

  return v4 == v5;
}

- (BOOL)checkEntitlementSource:(id)source forSingleEntitlement:(id)entitlement error:(id *)error
{
  sourceCopy = source;
  entitlementCopy = entitlement;
  v10 = [sourceCopy hasEntitlement:entitlementCopy];
  v11 = v10;
  if (error && (v10 & 1) == 0)
  {
    v12 = [sourceCopy description];
    *error = [(BLSAttribute *)self errorForMissingEntitlement:entitlementCopy inSource:v12];
  }

  return v11;
}

- (id)errorForMissingEntitlement:(id)entitlement inSource:(id)source
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA9B8];
  v10 = *MEMORY[0x277CCA450];
  entitlement = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ missing entitlement:%@", source, entitlement];
  v11[0] = entitlement;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v4 errorWithDomain:@"com.apple.BacklightServices" code:21 userInfo:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BLSAttribute)initWithXPCDictionary:(id)dictionary
{
  selfCopy = self;
  if ([(BLSAttribute *)self isMemberOfClass:objc_opt_class()])
  {
    v4 = bls_assertions_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [BLSAttribute initWithXPCDictionary:v4];
    }

    v5 = 0;
  }

  else
  {
    selfCopy = [(BLSAttribute *)selfCopy init];
    v5 = selfCopy;
  }

  return v5;
}

- (BLSAttribute)initWithCoder:(id)coder
{
  selfCopy = self;
  if ([(BLSAttribute *)self isMemberOfClass:objc_opt_class()])
  {
    v4 = bls_assertions_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [BLSAttribute initWithXPCDictionary:v4];
    }

    v5 = 0;
  }

  else
  {
    selfCopy = [(BLSAttribute *)selfCopy init];
    v5 = selfCopy;
  }

  return v5;
}

@end