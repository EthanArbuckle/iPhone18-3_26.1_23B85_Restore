@interface BLSAttribute
- (BLSAttribute)init;
- (BLSAttribute)initWithCoder:(id)a3;
- (BLSAttribute)initWithXPCDictionary:(id)a3;
- (BOOL)checkEntitlementSource:(id)a3 forSingleEntitlement:(id)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (id)errorForMissingEntitlement:(id)a3 inSource:(id)a4;
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

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v3 = a3;
  v4 = objc_opt_class();
  v5 = objc_opt_class();

  return v4 == v5;
}

- (BOOL)checkEntitlementSource:(id)a3 forSingleEntitlement:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 hasEntitlement:v9];
  v11 = v10;
  if (a5 && (v10 & 1) == 0)
  {
    v12 = [v8 description];
    *a5 = [(BLSAttribute *)self errorForMissingEntitlement:v9 inSource:v12];
  }

  return v11;
}

- (id)errorForMissingEntitlement:(id)a3 inSource:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA9B8];
  v10 = *MEMORY[0x277CCA450];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ missing entitlement:%@", a4, a3];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v4 errorWithDomain:@"com.apple.BacklightServices" code:21 userInfo:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BLSAttribute)initWithXPCDictionary:(id)a3
{
  v3 = self;
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
    v3 = [(BLSAttribute *)v3 init];
    v5 = v3;
  }

  return v5;
}

- (BLSAttribute)initWithCoder:(id)a3
{
  v3 = self;
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
    v3 = [(BLSAttribute *)v3 init];
    v5 = v3;
  }

  return v5;
}

@end