@interface BLSAlwaysOnDateSpecifier
- (BLSAlwaysOnDateSpecifier)initWithCoder:(id)coder;
- (BLSAlwaysOnDateSpecifier)initWithDate:(id)date fidelity:(int64_t)fidelity userObject:(id)object;
- (BLSAlwaysOnDateSpecifier)initWithXPCDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)bls_shortLoggingString;
- (id)newSpecifierWithMaxFidelity:(int64_t)fidelity;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation BLSAlwaysOnDateSpecifier

- (BLSAlwaysOnDateSpecifier)initWithDate:(id)date fidelity:(int64_t)fidelity userObject:(id)object
{
  dateCopy = date;
  objectCopy = object;
  v14.receiver = self;
  v14.super_class = BLSAlwaysOnDateSpecifier;
  v11 = [(BLSAlwaysOnDateSpecifier *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_date, date);
    v12->_fidelity = fidelity;
    objc_storeStrong(&v12->_userObject, object);
  }

  return v12;
}

- (id)newSpecifierWithMaxFidelity:(int64_t)fidelity
{
  v5 = [BLSAlwaysOnDateSpecifier alloc];
  date = self->_date;
  if (self->_fidelity >= fidelity)
  {
    fidelity = fidelity;
  }

  else
  {
    fidelity = self->_fidelity;
  }

  return [(BLSAlwaysOnDateSpecifier *)v5 initWithDate:date fidelity:fidelity];
}

- (id)bls_shortLoggingString
{
  v3 = objc_opt_new();
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __50__BLSAlwaysOnDateSpecifier_bls_shortLoggingString__block_invoke;
  v10 = &unk_278428688;
  v11 = v3;
  selfCopy = self;
  v4 = v3;
  [v4 appendProem:0 block:&v7];
  v5 = [v4 description];

  return v5;
}

void __50__BLSAlwaysOnDateSpecifier_bls_shortLoggingString__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 8) bls_shortLoggingString];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", *(a1 + 40)];
  [v2 appendString:v3 withName:v4];

  v5 = *(a1 + 32);
  v6 = NSStringFromBLSUpdateFidelity(*(*(a1 + 40) + 16));
  [v5 appendString:v6 withName:0 skipIfEmpty:1];

  if (*(*(a1 + 40) + 24))
  {
    v7 = *(a1 + 32);

    [v7 appendProem:? block:?];
  }
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  bls_shortLoggingString = [(NSDate *)self->_date bls_shortLoggingString];
  [v3 appendString:bls_shortLoggingString withName:@"date"];

  v5 = NSStringFromBLSUpdateFidelity(self->_fidelity);
  [v3 appendString:v5 withName:@"fidelity"];

  userObject = self->_userObject;
  if (userObject)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%p:%@>", userObject, objc_opt_class()];
    [v3 appendString:v7 withName:@"userObject"];
  }

  build = [v3 build];

  return build;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_date];
  v5 = [builder appendInteger:self->_fidelity];
  v6 = [builder hash];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  date = self->_date;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __36__BLSAlwaysOnDateSpecifier_isEqual___block_invoke;
  v18[3] = &unk_278428B00;
  v7 = equalCopy;
  v19 = v7;
  v8 = [v5 appendObject:date counterpart:v18];
  fidelity = self->_fidelity;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __36__BLSAlwaysOnDateSpecifier_isEqual___block_invoke_2;
  v16 = &unk_278428B28;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendInteger:fidelity counterpart:&v13];
  LOBYTE(fidelity) = [v5 isEqual];

  return fidelity;
}

- (int64_t)compare:(id)compare
{
  date = self->_date;
  date = [compare date];
  v5 = [(NSDate *)date compare:date];

  return v5;
}

- (BLSAlwaysOnDateSpecifier)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = xpc_dictionary_get_double(dictionaryCopy, [@"date" UTF8String]);
  int64 = xpc_dictionary_get_int64(dictionaryCopy, [@"fidelity" UTF8String]);

  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v5];
  v8 = [(BLSAlwaysOnDateSpecifier *)self initWithDate:v7 fidelity:int64];

  return v8;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  xdict = dictionary;
  uTF8String = [@"date" UTF8String];
  [(NSDate *)self->_date timeIntervalSinceReferenceDate];
  xpc_dictionary_set_double(xdict, uTF8String, v6);
  xpc_dictionary_set_int64(xdict, [@"fidelity" UTF8String], self->_fidelity);
  userObject = self->_userObject;
  if (userObject)
  {
    [(BLSAlwaysOnDateSpecifier *)userObject encodeWithXPCDictionary:a2];
  }
}

- (BLSAlwaysOnDateSpecifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  if (v5)
  {
    self = -[BLSAlwaysOnDateSpecifier initWithDate:fidelity:](self, "initWithDate:fidelity:", v5, [coderCopy decodeIntForKey:@"fidelity"]);
    selfCopy = self;
  }

  else
  {
    v7 = bls_backlight_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(BLSAlwaysOnDateSpecifier *)coderCopy initWithCoder:v7];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_date forKey:@"date"];
  [coderCopy encodeInteger:self->_fidelity forKey:@"fidelity"];
  userObject = self->_userObject;
  if (userObject)
  {
    [(BLSAlwaysOnDateSpecifier *)userObject encodeWithCoder:a2];
  }
}

- (void)encodeWithXPCDictionary:(uint64_t)a1 .cold.1(uint64_t a1, const char *a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"User object is not sent over XPC: %@", a1];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0();
    v9 = @"BLSAlwaysOnDateSpecifier.m";
    v10 = 1024;
    v11 = 110;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_21FE25000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_21FE25000, a2, OS_LOG_TYPE_FAULT, "invalid date from %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, const char *a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"User object is not sent over XPC: %@", a1];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0();
    v9 = @"BLSAlwaysOnDateSpecifier.m";
    v10 = 1024;
    v11 = 133;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_21FE25000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end