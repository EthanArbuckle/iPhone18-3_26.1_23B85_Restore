@interface AMAllowAmbientIdleTimerAttribute
+ (id)allowAmbientIdleTimer;
+ (id)allowAmbientIdleTimerForSleepFocus;
- (AMAllowAmbientIdleTimerAttribute)initWithCoder:(id)a3;
- (AMAllowAmbientIdleTimerAttribute)initWithXPCDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)initForSleepFocus:(BOOL)a3;
- (unint64_t)hash;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation AMAllowAmbientIdleTimerAttribute

+ (id)allowAmbientIdleTimer
{
  v2 = [[a1 alloc] initForSleepFocus:0];

  return v2;
}

+ (id)allowAmbientIdleTimerForSleepFocus
{
  v2 = [[a1 alloc] initForSleepFocus:1];

  return v2;
}

- (id)initForSleepFocus:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = AMAllowAmbientIdleTimerAttribute;
  result = [(BLSAttribute *)&v5 init];
  if (result)
  {
    *(result + 8) = a3;
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:self->_forSleepFocus withName:@"forSleepFocus" ifEqualTo:1];
  v5 = [v3 build];

  return v5;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendBool:self->_forSleepFocus];
  v5 = [v3 hash];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  forSleepFocus = self->_forSleepFocus;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__AMAllowAmbientIdleTimerAttribute_isEqual___block_invoke;
  v10[3] = &unk_278C73700;
  v11 = v4;
  v7 = v4;
  v8 = [v5 appendBool:forSleepFocus counterpart:v10];
  LOBYTE(forSleepFocus) = [v5 isEqual];

  return forSleepFocus;
}

- (AMAllowAmbientIdleTimerAttribute)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_get_BOOL(v4, [@"forSleepFocus" UTF8String]);

  return [(AMAllowAmbientIdleTimerAttribute *)self initForSleepFocus:v5];
}

- (void)encodeWithXPCDictionary:(id)a3
{
  xdict = a3;
  xpc_dictionary_set_BOOL(xdict, [@"forSleepFocus" UTF8String], self->_forSleepFocus);
}

- (AMAllowAmbientIdleTimerAttribute)initWithCoder:(id)a3
{
  v4 = [a3 decodeBoolForKey:@"forSleepFocus"];

  return [(AMAllowAmbientIdleTimerAttribute *)self initForSleepFocus:v4];
}

@end