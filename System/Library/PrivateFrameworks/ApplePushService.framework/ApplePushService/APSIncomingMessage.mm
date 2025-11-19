@interface APSIncomingMessage
- (BOOL)isTracingEnabled;
- (BOOL)wasFromStorage;
- (BOOL)wasLastMessageFromStorage;
- (int64_t)incomingInterface;
- (int64_t)priority;
- (unint64_t)pushType;
- (unsigned)pushFlags;
- (void)setIncomingInterface:(int64_t)a3;
- (void)setPriority:(int64_t)a3;
- (void)setPushType:(unint64_t)a3;
@end

@implementation APSIncomingMessage

- (BOOL)isTracingEnabled
{
  v2 = [(APSIncomingMessage *)self objectForKey:@"APSIncomingMessageTracingEnabled"];
  v3 = [v2 BOOLValue];

  return v3;
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
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)wasLastMessageFromStorage
{
  v2 = [(APSIncomingMessage *)self objectForKey:@"APSIncomingMessageLastMessageFromStorage"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (unint64_t)pushType
{
  v2 = [(APSIncomingMessage *)self objectForKey:@"APSIncomingMessagePushType"];
  v3 = [v2 unsignedShortValue];

  return v3;
}

- (unsigned)pushFlags
{
  v2 = [(APSIncomingMessage *)self objectForKey:@"APSIncomingMessagePushFlags"];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (void)setPriority:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  [(APSIncomingMessage *)self setObject:v4 forKey:@"APSProtocolMessagePriority"];
}

- (void)setPushType:(unint64_t)a3
{
  v4 = [NSNumber numberWithUnsignedShort:a3];
  [(APSIncomingMessage *)self setObject:v4 forKey:@"APSIncomingMessagePushType"];
}

- (void)setIncomingInterface:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  [(APSIncomingMessage *)self setObject:v4 forKey:@"APSIncomingMessageIncomingInterfaceKey"];
}

- (int64_t)incomingInterface
{
  v3 = xpc_copy_entitlements_for_self();
  v4 = v3;
  if (v3 && xpc_dictionary_get_BOOL(v3, "com.apple.aps.incoming-message-interface"))
  {
    v5 = [(APSIncomingMessage *)self objectForKey:@"APSIncomingMessageIncomingInterfaceKey"];
    v6 = [v5 integerValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end