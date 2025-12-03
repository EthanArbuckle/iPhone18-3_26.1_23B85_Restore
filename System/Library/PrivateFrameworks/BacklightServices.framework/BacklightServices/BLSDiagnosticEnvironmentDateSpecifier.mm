@interface BLSDiagnosticEnvironmentDateSpecifier
+ (id)createWithSpecifier:(id)specifier;
- (BLSDiagnosticEnvironmentDateSpecifier)initWithCoder:(id)coder;
- (BLSDiagnosticEnvironmentDateSpecifier)initWithDateSpecifier:(id)specifier environmentIdentifier:(id)identifier;
- (BLSDiagnosticEnvironmentDateSpecifier)initWithXPCDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)bls_shortLoggingString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation BLSDiagnosticEnvironmentDateSpecifier

+ (id)createWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = [BLSDiagnosticEnvironmentDateSpecifier alloc];
  dateSpecifier = [specifierCopy dateSpecifier];
  environmentIdentifier = [specifierCopy environmentIdentifier];

  v7 = [(BLSDiagnosticEnvironmentDateSpecifier *)v4 initWithDateSpecifier:dateSpecifier environmentIdentifier:environmentIdentifier];

  return v7;
}

- (BLSDiagnosticEnvironmentDateSpecifier)initWithDateSpecifier:(id)specifier environmentIdentifier:(id)identifier
{
  specifierCopy = specifier;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = BLSDiagnosticEnvironmentDateSpecifier;
  v9 = [(BLSDiagnosticEnvironmentDateSpecifier *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dateSpecifier, specifier);
    objc_storeStrong(&v10->_environmentIdentifier, identifier);
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
  selfCopy = self;
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
  date = [(BLSAlwaysOnDateSpecifier *)self->_dateSpecifier date];
  bls_shortLoggingString = [date bls_shortLoggingString];
  [v3 appendString:bls_shortLoggingString withName:@"presentationDate"];

  v6 = NSStringFromBLSUpdateFidelity([(BLSAlwaysOnDateSpecifier *)self->_dateSpecifier fidelity]);
  [v3 appendString:v6 withName:@"fidelity"];

  [v3 appendString:self->_environmentIdentifier withName:@"environment"];
  build = [v3 build];

  return build;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_dateSpecifier];
  v5 = [builder appendString:self->_environmentIdentifier];
  v6 = [builder hash];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  dateSpecifier = self->_dateSpecifier;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __49__BLSDiagnosticEnvironmentDateSpecifier_isEqual___block_invoke;
  v18[3] = &unk_278428B00;
  v7 = equalCopy;
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

- (BLSDiagnosticEnvironmentDateSpecifier)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = xpc_dictionary_get_dictionary(dictionaryCopy, [@"specifier" UTF8String]);
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

  string = xpc_dictionary_get_string(dictionaryCopy, [@"environment" UTF8String]);
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

- (void)encodeWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  uTF8String = [@"specifier" UTF8String];
  value = xpc_dictionary_create(0, 0, 0);
  [(BLSAlwaysOnDateSpecifier *)self->_dateSpecifier encodeWithXPCDictionary:value];
  xpc_dictionary_set_value(dictionaryCopy, uTF8String, value);
  xpc_dictionary_set_string(dictionaryCopy, [@"environment" UTF8String], -[NSString UTF8String](self->_environmentIdentifier, "UTF8String"));
}

- (BLSDiagnosticEnvironmentDateSpecifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"specifier"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"environment"];
    self = [(BLSDiagnosticEnvironmentDateSpecifier *)self initWithDateSpecifier:v5 environmentIdentifier:v6];

    selfCopy = self;
  }

  else
  {
    v8 = bls_diagnostics_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [BLSDiagnosticEnvironmentDateSpecifier initWithCoder:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  dateSpecifier = self->_dateSpecifier;
  coderCopy = coder;
  [coderCopy encodeObject:dateSpecifier forKey:@"specifier"];
  [coderCopy encodeObject:self->_environmentIdentifier forKey:@"environment"];
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