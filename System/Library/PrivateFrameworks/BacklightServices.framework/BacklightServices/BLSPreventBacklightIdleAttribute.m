@interface BLSPreventBacklightIdleAttribute
+ (id)preventIdle;
+ (id)preventIdleAndRestartTimerOnInvalidation;
+ (id)preventIdleClearUserInteractionAndRestartTimerOnInvalidation;
- (BLSPreventBacklightIdleAttribute)initWithCoder:(id)a3;
- (BLSPreventBacklightIdleAttribute)initWithRestartTimerOnInvalidation:(BOOL)a3 clearUserInteraction:(BOOL)a4;
- (BLSPreventBacklightIdleAttribute)initWithXPCDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation BLSPreventBacklightIdleAttribute

+ (id)preventIdle
{
  v2 = [[a1 alloc] initWithRestartTimerOnInvalidation:0 clearUserInteraction:0];

  return v2;
}

+ (id)preventIdleAndRestartTimerOnInvalidation
{
  v2 = [[a1 alloc] initWithRestartTimerOnInvalidation:1 clearUserInteraction:0];

  return v2;
}

+ (id)preventIdleClearUserInteractionAndRestartTimerOnInvalidation
{
  v2 = [[a1 alloc] initWithRestartTimerOnInvalidation:1 clearUserInteraction:1];

  return v2;
}

- (BLSPreventBacklightIdleAttribute)initWithRestartTimerOnInvalidation:(BOOL)a3 clearUserInteraction:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = BLSPreventBacklightIdleAttribute;
  result = [(BLSAttribute *)&v7 init];
  if (result)
  {
    result->_restartTimerOnInvalidation = a3;
    result->_clearUserInteraction = a4;
  }

  return result;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:self->_restartTimerOnInvalidation withName:@"restart"];
  v5 = [v3 appendBool:self->_clearUserInteraction withName:@"clearInteraction"];
  v6 = [v3 build];

  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendBool:self->_restartTimerOnInvalidation];
  v5 = [v3 appendBool:self->_clearUserInteraction];
  v6 = [v3 hash];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (BLSPreventBacklightIdleAttribute)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v5 = [@"restart" UTF8String];
  v6 = [@"clearInteraction" UTF8String];
  v7 = xpc_dictionary_get_BOOL(v4, v5);
  v8 = xpc_dictionary_get_BOOL(v4, v6);

  return [(BLSPreventBacklightIdleAttribute *)self initWithRestartTimerOnInvalidation:v7 clearUserInteraction:v8];
}

- (void)encodeWithXPCDictionary:(id)a3
{
  xdict = a3;
  v4 = [@"restart" UTF8String];
  v5 = [@"clearInteraction" UTF8String];
  xpc_dictionary_set_BOOL(xdict, v4, self->_restartTimerOnInvalidation);
  xpc_dictionary_set_BOOL(xdict, v5, self->_clearUserInteraction);
}

- (BLSPreventBacklightIdleAttribute)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"restart"];
  v6 = [v4 decodeBoolForKey:@"clearInteraction"];

  return [(BLSPreventBacklightIdleAttribute *)self initWithRestartTimerOnInvalidation:v5 clearUserInteraction:v6];
}

- (void)encodeWithCoder:(id)a3
{
  restartTimerOnInvalidation = self->_restartTimerOnInvalidation;
  v5 = a3;
  [v5 encodeBool:restartTimerOnInvalidation forKey:@"restart"];
  [v5 encodeBool:self->_clearUserInteraction forKey:@"clearInteraction"];
}

@end