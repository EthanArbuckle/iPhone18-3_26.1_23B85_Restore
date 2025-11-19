@interface BLSDiagnosticEnvironmentDateSpecifier
+ (id)createWithSpecifier:(id)a3;
- (BLSDiagnosticEnvironmentDateSpecifier)initWithCoder:(id)a3;
- (BLSDiagnosticEnvironmentDateSpecifier)initWithDateSpecifier:(id)a3 environmentIdentifier:(id)a4;
- (BLSDiagnosticEnvironmentDateSpecifier)initWithXPCDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)bls_shortLoggingString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation BLSDiagnosticEnvironmentDateSpecifier

+ (id)createWithSpecifier:(id)a3
{
  v3 = a3;
  v4 = [BLSDiagnosticEnvironmentDateSpecifier alloc];
  v5 = [v3 dateSpecifier];
  v6 = [v3 environmentIdentifier];

  v7 = [(BLSDiagnosticEnvironmentDateSpecifier *)v4 initWithDateSpecifier:v5 environmentIdentifier:v6];

  return v7;
}

- (BLSDiagnosticEnvironmentDateSpecifier)initWithDateSpecifier:(id)a3 environmentIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BLSDiagnosticEnvironmentDateSpecifier;
  v9 = [(BLSDiagnosticEnvironmentDateSpecifier *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dateSpecifier, a3);
    objc_storeStrong(&v10->_environmentIdentifier, a4);
  }

  return v10;
}

- (id)bls_shortLoggingString
{
  v3 = objc_opt_new();
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __63__BLSDiagnosticEnvironmentDateSpecifier_bls_shortLoggingString__block_invoke;
  v10 = &unk_278428688;
  v11 = v3;
  v12 = self;
  v4 = v3;
  [v4 appendProem:0 block:&v7];
  v5 = [v4 description];

  return v5;
}

uint64_t __63__BLSDiagnosticEnvironmentDateSpecifier_bls_shortLoggingString__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 8) date];
  v4 = [v3 bls_shortLoggingString];
  [v2 appendString:v4 withName:0 skipIfEmpty:1];

  v5 = *(a1 + 32);
  v6 = NSStringFromBLSUpdateFidelity([*(*(a1 + 40) + 8) fidelity]);
  [v5 appendString:v6 withName:0 skipIfEmpty:1];

  v7 = *(a1 + 32);
  v8 = *(*(a1 + 40) + 16);

  return [v7 appendString:v8 withName:0 skipIfEmpty:1];
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(BLSAlwaysOnDateSpecifier *)self->_dateSpecifier date];
  v5 = [v4 bls_shortLoggingString];
  [v3 appendString:v5 withName:@"presentationDate"];

  v6 = NSStringFromBLSUpdateFidelity([(BLSAlwaysOnDateSpecifier *)self->_dateSpecifier fidelity]);
  [v3 appendString:v6 withName:@"fidelity"];

  [v3 appendString:self->_environmentIdentifier withName:@"environment"];
  v7 = [v3 build];

  return v7;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendObject:self->_dateSpecifier];
  v5 = [v3 appendString:self->_environmentIdentifier];
  v6 = [v3 hash];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  dateSpecifier = self->_dateSpecifier;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __49__BLSDiagnosticEnvironmentDateSpecifier_isEqual___block_invoke;
  v18[3] = &unk_278428B00;
  v7 = v4;
  v19 = v7;
  v8 = [v5 appendObject:dateSpecifier counterpart:v18];
  environmentIdentifier = self->_environmentIdentifier;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __49__BLSDiagnosticEnvironmentDateSpecifier_isEqual___block_invoke_2;
  v16 = &unk_278429100;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendString:environmentIdentifier counterpart:&v13];
  LOBYTE(environmentIdentifier) = [v5 isEqual];

  return environmentIdentifier;
}

- (BLSDiagnosticEnvironmentDateSpecifier)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_get_dictionary(v4, [@"specifier" UTF8String]);
  if (v5)
  {
    v6 = [[BLSAlwaysOnDateSpecifier alloc] initWithXPCDictionary:v5];
  }

  else
  {
    v7 = bls_diagnostics_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [BLSDiagnosticFlipbookFrame initWithXPCDictionary:];
    }

    v6 = 0;
  }

  string = xpc_dictionary_get_string(v4, [@"environment" UTF8String]);
  if (string)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
  }

  else
  {
    v10 = bls_diagnostics_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [BLSDiagnosticEnvironmentDateSpecifier initWithXPCDictionary:];
    }

    v9 = @"<null environment identifier>";
  }

  v11 = [(BLSDiagnosticEnvironmentDateSpecifier *)self initWithDateSpecifier:v6 environmentIdentifier:v9];

  return v11;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v4 = a3;
  v5 = [@"specifier" UTF8String];
  value = xpc_dictionary_create(0, 0, 0);
  [(BLSAlwaysOnDateSpecifier *)self->_dateSpecifier encodeWithXPCDictionary:value];
  xpc_dictionary_set_value(v4, v5, value);
  xpc_dictionary_set_string(v4, [@"environment" UTF8String], -[NSString UTF8String](self->_environmentIdentifier, "UTF8String"));
}

- (BLSDiagnosticEnvironmentDateSpecifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"specifier"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"environment"];
    self = [(BLSDiagnosticEnvironmentDateSpecifier *)self initWithDateSpecifier:v5 environmentIdentifier:v6];

    v7 = self;
  }

  else
  {
    v8 = bls_diagnostics_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [BLSDiagnosticEnvironmentDateSpecifier initWithCoder:];
    }

    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  dateSpecifier = self->_dateSpecifier;
  v5 = a3;
  [v5 encodeObject:dateSpecifier forKey:@"specifier"];
  [v5 encodeObject:self->_environmentIdentifier forKey:@"environment"];
}

- (void)initWithXPCDictionary:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_5(&dword_21FE25000, v0, v1, "failed to decode explanation from %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithCoder:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_5(&dword_21FE25000, v0, v1, "invalid specifier from %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end