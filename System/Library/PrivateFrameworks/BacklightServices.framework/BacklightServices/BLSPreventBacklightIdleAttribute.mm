@interface BLSPreventBacklightIdleAttribute
+ (id)preventIdle;
+ (id)preventIdleAndRestartTimerOnInvalidation;
+ (id)preventIdleClearUserInteractionAndRestartTimerOnInvalidation;
- (BLSPreventBacklightIdleAttribute)initWithCoder:(id)coder;
- (BLSPreventBacklightIdleAttribute)initWithRestartTimerOnInvalidation:(BOOL)invalidation clearUserInteraction:(BOOL)interaction;
- (BLSPreventBacklightIdleAttribute)initWithXPCDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation BLSPreventBacklightIdleAttribute

+ (id)preventIdle
{
  v2 = [[self alloc] initWithRestartTimerOnInvalidation:0 clearUserInteraction:0];

  return v2;
}

+ (id)preventIdleAndRestartTimerOnInvalidation
{
  v2 = [[self alloc] initWithRestartTimerOnInvalidation:1 clearUserInteraction:0];

  return v2;
}

+ (id)preventIdleClearUserInteractionAndRestartTimerOnInvalidation
{
  v2 = [[self alloc] initWithRestartTimerOnInvalidation:1 clearUserInteraction:1];

  return v2;
}

- (BLSPreventBacklightIdleAttribute)initWithRestartTimerOnInvalidation:(BOOL)invalidation clearUserInteraction:(BOOL)interaction
{
  v7.receiver = self;
  v7.super_class = BLSPreventBacklightIdleAttribute;
  result = [(BLSAttribute *)&v7 init];
  if (result)
  {
    result->_restartTimerOnInvalidation = invalidation;
    result->_clearUserInteraction = interaction;
  }

  return result;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:self->_restartTimerOnInvalidation withName:@"restart"];
  v5 = [v3 appendBool:self->_clearUserInteraction withName:@"clearInteraction"];
  build = [v3 build];

  return build;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendBool:self->_restartTimerOnInvalidation];
  v5 = [builder appendBool:self->_clearUserInteraction];
  v6 = [builder hash];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      restartTimerOnInvalidation = self->_restartTimerOnInvalidation;
      if (restartTimerOnInvalidation == [(BLSPreventBacklightIdleAttribute *)v5 restartTimerOnInvalidation])
      {
        clearUserInteraction = self->_clearUserInteraction;
        v8 = clearUserInteraction == [(BLSPreventBacklightIdleAttribute *)v5 clearUserInteraction];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BLSPreventBacklightIdleAttribute)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  uTF8String = [@"restart" UTF8String];
  uTF8String2 = [@"clearInteraction" UTF8String];
  v7 = xpc_dictionary_get_BOOL(dictionaryCopy, uTF8String);
  v8 = xpc_dictionary_get_BOOL(dictionaryCopy, uTF8String2);

  return [(BLSPreventBacklightIdleAttribute *)self initWithRestartTimerOnInvalidation:v7 clearUserInteraction:v8];
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  xdict = dictionary;
  uTF8String = [@"restart" UTF8String];
  uTF8String2 = [@"clearInteraction" UTF8String];
  xpc_dictionary_set_BOOL(xdict, uTF8String, self->_restartTimerOnInvalidation);
  xpc_dictionary_set_BOOL(xdict, uTF8String2, self->_clearUserInteraction);
}

- (BLSPreventBacklightIdleAttribute)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"restart"];
  v6 = [coderCopy decodeBoolForKey:@"clearInteraction"];

  return [(BLSPreventBacklightIdleAttribute *)self initWithRestartTimerOnInvalidation:v5 clearUserInteraction:v6];
}

- (void)encodeWithCoder:(id)coder
{
  restartTimerOnInvalidation = self->_restartTimerOnInvalidation;
  coderCopy = coder;
  [coderCopy encodeBool:restartTimerOnInvalidation forKey:@"restart"];
  [coderCopy encodeBool:self->_clearUserInteraction forKey:@"clearInteraction"];
}

@end