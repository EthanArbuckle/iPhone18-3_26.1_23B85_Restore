@interface IDSAccount
- (BOOL)isBizAccount;
- (unsigned)serviceType;
@end

@implementation IDSAccount

- (unsigned)serviceType
{
  v3 = [(IDSAccount *)self serviceName];
  if ([v3 isEqualToString:IDSServiceNameiMessage])
  {
    return 0;
  }

  v5 = [(IDSAccount *)self serviceName];
  if ([v5 isEqualToString:IDSServiceNameiMessageForBusiness])
  {
    return 1;
  }

  result = IMOSLoggingEnabled();
  if (result)
  {
    v6 = OSLogHandleForIMFoundationCategory();
    result = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
    if (result)
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "IDSAccount (iMessageAdditions) -serviceType - Did not find serviceType. Using default.", v7, 2u);
      return 0;
    }
  }

  return result;
}

- (BOOL)isBizAccount
{
  v2 = [(IDSAccount *)self serviceName];
  v3 = IDSServiceNameiMessageForBusiness;

  return [v2 isEqualToString:v3];
}

@end