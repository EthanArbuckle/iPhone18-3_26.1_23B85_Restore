@interface TKXPCInterface
+ (id)interfaceForSmartCardTokenRegistration;
+ (id)interfaceForXPCProtocol:(id)protocol;
@end

@implementation TKXPCInterface

+ (id)interfaceForXPCProtocol:(id)protocol
{
  protocolCopy = protocol;
  if (qword_100043458 != -1)
  {
    sub_100021BB0();
  }

  v5 = [qword_100043450 objectForKey:protocolCopy];
  if (!v5)
  {
    if (&OBJC_PROTOCOL___TKSmartCardTokenRegistrationXPC == protocolCopy)
    {
      interfaceForSmartCardTokenRegistration = [self interfaceForSmartCardTokenRegistration];
    }

    else if (&OBJC_PROTOCOL___TKProtocolSlotClient == protocolCopy)
    {
      interfaceForSmartCardTokenRegistration = [self interfaceForSlotClient];
    }

    else
    {
      if (&OBJC_PROTOCOL___TKProtocolSlotClientNotification == protocolCopy)
      {
        [self interfaceForSlotClientNotification];
      }

      else
      {
        [NSXPCInterface interfaceWithProtocol:protocolCopy];
      }
      interfaceForSmartCardTokenRegistration = ;
    }

    v5 = interfaceForSmartCardTokenRegistration;
    [qword_100043450 setObject:interfaceForSmartCardTokenRegistration forKey:protocolCopy];
  }

  v7 = v5;

  return v7;
}

+ (id)interfaceForSmartCardTokenRegistration
{
  v2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___TKSmartCardTokenRegistrationXPC];
  v3 = objc_opt_class();
  v4 = [NSSet setWithObjects:v3, objc_opt_class(), 0];
  [v2 setClasses:v4 forSelector:"registeredSmartCardsWithCompletion:" argumentIndex:0 ofReply:1];

  return v2;
}

@end