@interface TKXPCInterface
+ (id)interfaceForSmartCardTokenRegistration;
+ (id)interfaceForXPCProtocol:(id)a3;
@end

@implementation TKXPCInterface

+ (id)interfaceForXPCProtocol:(id)a3
{
  v4 = a3;
  if (qword_100043458 != -1)
  {
    sub_100021BB0();
  }

  v5 = [qword_100043450 objectForKey:v4];
  if (!v5)
  {
    if (&OBJC_PROTOCOL___TKSmartCardTokenRegistrationXPC == v4)
    {
      v6 = [a1 interfaceForSmartCardTokenRegistration];
    }

    else if (&OBJC_PROTOCOL___TKProtocolSlotClient == v4)
    {
      v6 = [a1 interfaceForSlotClient];
    }

    else
    {
      if (&OBJC_PROTOCOL___TKProtocolSlotClientNotification == v4)
      {
        [a1 interfaceForSlotClientNotification];
      }

      else
      {
        [NSXPCInterface interfaceWithProtocol:v4];
      }
      v6 = ;
    }

    v5 = v6;
    [qword_100043450 setObject:v6 forKey:v4];
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