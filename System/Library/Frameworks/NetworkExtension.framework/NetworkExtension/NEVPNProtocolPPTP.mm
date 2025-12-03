@interface NEVPNProtocolPPTP
- (NEVPNProtocolPPTP)init;
- (NEVPNProtocolPPTP)initWithCoder:(id)coder;
- (__SCNetworkInterface)createInterface;
- (id)copyLegacyDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEVPNProtocolPPTP

- (__SCNetworkInterface)createInterface
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_ERROR, "Creating PPTP interface failed, protocol is no longer supported", v4, 2u);
  }

  return 0;
}

- (id)copyLegacyDictionary
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_ERROR, "PPTP is not supported", v4, 2u);
  }

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = NEVPNProtocolPPTP;
  v4 = [(NEVPNProtocolPPP *)&v6 copyWithZone:zone];
  [v4 setEncryptionLevel:{-[NEVPNProtocolPPTP encryptionLevel](self, "encryptionLevel")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = NEVPNProtocolPPTP;
  coderCopy = coder;
  [(NEVPNProtocolPPP *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt32:-[NEVPNProtocolPPTP encryptionLevel](self forKey:{"encryptionLevel", v5.receiver, v5.super_class), @"EncryptionLevel"}];
}

- (NEVPNProtocolPPTP)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = NEVPNProtocolPPTP;
  v5 = [(NEVPNProtocolPPP *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_encryptionLevel = [coderCopy decodeInt32ForKey:@"EncryptionLevel"];
  }

  return v5;
}

- (NEVPNProtocolPPTP)init
{
  v3.receiver = self;
  v3.super_class = NEVPNProtocolPPTP;
  result = [(NEVPNProtocolPPP *)&v3 initWithType:3];
  if (result)
  {
    result->_encryptionLevel = 2;
  }

  return result;
}

@end