@interface APSIncomingMessage
- (BOOL)isTracingEnabled;
- (BOOL)wasFromStorage;
- (BOOL)wasLastMessageFromStorage;
- (int64_t)incomingInterface;
- (int64_t)priority;
- (unint64_t)pushType;
- (unsigned)pushFlags;
- (void)setIncomingInterface:(int64_t)interface;
- (void)setPriority:(int64_t)priority;
- (void)setPushType:(unint64_t)type;
@end

@implementation APSIncomingMessage

- (BOOL)isTracingEnabled
{
  v2 = [(APSIncomingMessage *)self objectForKey:@"APSIncomingMessageTracingEnabled"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (int64_t)priority
{
  v2 = [(APSIncomingMessage *)self objectForKey:@"APSProtocolMessagePriority"];
  v3 = v2;
  if (v2 && [v2 integerValue] <= 9)
  {
    if ([v3 integerValue] < 5)
    {
      v4 = 1;
    }

    else
    {
      v4 = 5;
    }
  }

  else
  {
    v4 = 10;
  }

  return v4;
}

- (BOOL)wasFromStorage
{
  v2 = [(APSIncomingMessage *)self objectForKey:@"APSIncomingMessageFromStorage"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)wasLastMessageFromStorage
{
  v2 = [(APSIncomingMessage *)self objectForKey:@"APSIncomingMessageLastMessageFromStorage"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (unint64_t)pushType
{
  v2 = [(APSIncomingMessage *)self objectForKey:@"APSIncomingMessagePushType"];
  unsignedShortValue = [v2 unsignedShortValue];

  return unsignedShortValue;
}

- (unsigned)pushFlags
{
  v2 = [(APSIncomingMessage *)self objectForKey:@"APSIncomingMessagePushFlags"];
  unsignedIntValue = [v2 unsignedIntValue];

  return unsignedIntValue;
}

- (void)setPriority:(int64_t)priority
{
  v4 = [NSNumber numberWithInteger:priority];
  [(APSIncomingMessage *)self setObject:v4 forKey:@"APSProtocolMessagePriority"];
}

- (void)setPushType:(unint64_t)type
{
  v4 = [NSNumber numberWithUnsignedShort:type];
  [(APSIncomingMessage *)self setObject:v4 forKey:@"APSIncomingMessagePushType"];
}

- (void)setIncomingInterface:(int64_t)interface
{
  v4 = [NSNumber numberWithInteger:interface];
  [(APSIncomingMessage *)self setObject:v4 forKey:@"APSIncomingMessageIncomingInterfaceKey"];
}

- (int64_t)incomingInterface
{
  v3 = xpc_copy_entitlements_for_self();
  v4 = v3;
  if (v3 && xpc_dictionary_get_BOOL(v3, "com.apple.aps.incoming-message-interface"))
  {
    v5 = [(APSIncomingMessage *)self objectForKey:@"APSIncomingMessageIncomingInterfaceKey"];
    integerValue = [v5 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

@end