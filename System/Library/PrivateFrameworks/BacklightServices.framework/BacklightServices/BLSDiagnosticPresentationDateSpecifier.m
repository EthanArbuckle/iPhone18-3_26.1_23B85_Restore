@interface BLSDiagnosticPresentationDateSpecifier
+ (id)createWithSpecifier:(id)a3;
- (BLSDiagnosticPresentationDateSpecifier)initWithCoder:(id)a3;
- (BLSDiagnosticPresentationDateSpecifier)initWithPresentationDate:(id)a3 specifiers:(id)a4;
- (BLSDiagnosticPresentationDateSpecifier)initWithXPCDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)bls_loggingString;
- (id)bls_shortLoggingString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation BLSDiagnosticPresentationDateSpecifier

+ (id)createWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v4 presentationDate];
  v7 = [v4 specifiers];

  v8 = [v5 initWithPresentationDate:v6 specifiers:v7];

  return v8;
}

- (BLSDiagnosticPresentationDateSpecifier)initWithPresentationDate:(id)a3 specifiers:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = BLSDiagnosticPresentationDateSpecifier;
  v9 = [(BLSDiagnosticPresentationDateSpecifier *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_presentationDate, a3);
    v11 = [v8 bs_map:&__block_literal_global_12];
    specifiers = v10->_specifiers;
    v10->_specifiers = v11;
  }

  return v10;
}

- (id)bls_loggingString
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(NSDate *)self->_presentationDate bls_shortLoggingString];
  [v3 appendString:v4 withName:@"presentationDate"];

  [v3 appendArraySection:self->_specifiers withName:@"specifiers" skipIfEmpty:0 objectTransformer:&__block_literal_global_187];
  v5 = [v3 build];

  return v5;
}

- (id)bls_shortLoggingString
{
  v3 = objc_opt_new();
  v4 = [(NSDate *)self->_presentationDate bls_shortLoggingString];
  [v3 appendString:v4 withName:0 skipIfEmpty:1];

  v5 = [v3 appendUnsignedInteger:-[NSArray count](self->_specifiers withName:{"count"), @"environments"}];
  v6 = [(NSArray *)self->_specifiers firstObject];
  v7 = [v6 environmentIdentifier];
  v8 = [v3 appendObject:v7 withName:@"startingWith" skipIfNil:1];

  v9 = [v3 description];

  return v9;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(NSDate *)self->_presentationDate bls_shortLoggingString];
  [v3 appendString:v4 withName:@"presentationDate"];

  [v3 appendArraySection:self->_specifiers withName:@"specifiers" skipIfEmpty:0];
  v5 = [v3 build];

  return v5;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendObject:self->_presentationDate];
  specifiers = self->_specifiers;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__BLSDiagnosticPresentationDateSpecifier_hash__block_invoke;
  v9[3] = &unk_2784290B0;
  v10 = v3;
  v6 = v3;
  [(NSArray *)specifiers enumerateObjectsUsingBlock:v9];
  v7 = [v6 hash];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  presentationDate = self->_presentationDate;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__BLSDiagnosticPresentationDateSpecifier_isEqual___block_invoke;
  v13[3] = &unk_278428B00;
  v7 = v4;
  v14 = v7;
  v8 = [v5 appendObject:presentationDate counterpart:v13];
  if ([v5 isEqual])
  {
    specifiers = self->_specifiers;
    v10 = [v7 specifiers];
    v11 = [(NSArray *)specifiers isEqualToArray:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BLSDiagnosticPresentationDateSpecifier)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{xpc_dictionary_get_double(v4, objc_msgSend(@"presentationDate", "UTF8String"))}];
  v6 = [@"specifiers" UTF8String];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = xpc_dictionary_get_array(v4, v6);

  if (v8)
  {
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3221225472;
    applier[2] = __64__BLSDiagnosticPresentationDateSpecifier_initWithXPCDictionary___block_invoke;
    applier[3] = &unk_2784290D8;
    v12 = v7;
    xpc_array_apply(v8, applier);
  }

  v9 = [(BLSDiagnosticPresentationDateSpecifier *)self initWithPresentationDate:v5 specifiers:v7];

  return v9;
}

uint64_t __64__BLSDiagnosticPresentationDateSpecifier_initWithXPCDictionary___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = BSCreateDeserializedBSXPCEncodableObjectFromXPCDictionary();
  if (!v5)
  {
    v6 = bls_diagnostics_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __64__BLSDiagnosticPresentationDateSpecifier_initWithXPCDictionary___block_invoke_cold_2();
    }

    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = bls_diagnostics_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __64__BLSDiagnosticPresentationDateSpecifier_initWithXPCDictionary___block_invoke_cold_1();
    }

LABEL_8:

    goto LABEL_9;
  }

  [*(a1 + 32) addObject:v5];
LABEL_9:

  return 1;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  xdict = a3;
  v4 = [@"presentationDate" UTF8String];
  [(NSDate *)self->_presentationDate timeIntervalSinceReferenceDate];
  xpc_dictionary_set_double(xdict, v4, v5);
  [@"specifiers" UTF8String];
  specifiers = self->_specifiers;
  BSSerializeArrayOfBSXPCEncodableObjectsToXPCDictionaryWithKey();
}

- (BLSDiagnosticPresentationDateSpecifier)initWithCoder:(id)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"presentationDate"];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"specifiers"];

    self = [(BLSDiagnosticPresentationDateSpecifier *)self initWithPresentationDate:v5 specifiers:v9];
    v10 = self;
  }

  else
  {
    v9 = bls_diagnostics_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [BLSDiagnosticPresentationDateSpecifier initWithCoder:];
    }

    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  presentationDate = self->_presentationDate;
  v5 = a3;
  [v5 encodeObject:presentationDate forKey:@"presentationDate"];
  [v5 encodeObject:self->_specifiers forKey:@"specifiers"];
}

void __64__BLSDiagnosticPresentationDateSpecifier_initWithXPCDictionary___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  v4 = 2114;
  v5 = v0;
  _os_log_fault_impl(&dword_21FE25000, v1, OS_LOG_TYPE_FAULT, "decoded object:%{public}@ for %{public}@ is not a BLSDiagnosticEnvironmentDateSpecifier class", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __64__BLSDiagnosticPresentationDateSpecifier_initWithXPCDictionary___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_5(&dword_21FE25000, v0, v1, "unable to decode specifiers for %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithCoder:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_5(&dword_21FE25000, v0, v1, "invalid date from %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end