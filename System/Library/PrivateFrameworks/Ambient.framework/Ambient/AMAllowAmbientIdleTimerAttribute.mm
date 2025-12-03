@interface AMAllowAmbientIdleTimerAttribute
+ (id)allowAmbientIdleTimer;
+ (id)allowAmbientIdleTimerForSleepFocus;
- (AMAllowAmbientIdleTimerAttribute)initWithCoder:(id)coder;
- (AMAllowAmbientIdleTimerAttribute)initWithXPCDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)initForSleepFocus:(BOOL)focus;
- (unint64_t)hash;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation AMAllowAmbientIdleTimerAttribute

+ (id)allowAmbientIdleTimer
{
  v2 = [[self alloc] initForSleepFocus:0];

  return v2;
}

+ (id)allowAmbientIdleTimerForSleepFocus
{
  v2 = [[self alloc] initForSleepFocus:1];

  return v2;
}

- (id)initForSleepFocus:(BOOL)focus
{
  v5.receiver = self;
  v5.super_class = AMAllowAmbientIdleTimerAttribute;
  result = [(BLSAttribute *)&v5 init];
  if (result)
  {
    *(result + 8) = focus;
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:self->_forSleepFocus withName:@"forSleepFocus" ifEqualTo:1];
  build = [v3 build];

  return build;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendBool:self->_forSleepFocus];
  v5 = [builder hash];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  forSleepFocus = self->_forSleepFocus;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__AMAllowAmbientIdleTimerAttribute_isEqual___block_invoke;
  v10[3] = &unk_278C73700;
  v11 = equalCopy;
  v7 = equalCopy;
  v8 = [v5 appendBool:forSleepFocus counterpart:v10];
  LOBYTE(forSleepFocus) = [v5 isEqual];

  return forSleepFocus;
}

- (AMAllowAmbientIdleTimerAttribute)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = xpc_dictionary_get_BOOL(dictionaryCopy, [@"forSleepFocus" UTF8String]);

  return [(AMAllowAmbientIdleTimerAttribute *)self initForSleepFocus:v5];
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  xdict = dictionary;
  xpc_dictionary_set_BOOL(xdict, [@"forSleepFocus" UTF8String], self->_forSleepFocus);
}

- (AMAllowAmbientIdleTimerAttribute)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"forSleepFocus"];

  return [(AMAllowAmbientIdleTimerAttribute *)self initForSleepFocus:v4];
}

@end