@interface BLSAssertionIdentifier
- (BLSAssertionIdentifier)initWithClientPid:(int)a3 hostPid:(int)a4 count:(unint64_t)a5;
- (BLSAssertionIdentifier)initWithCoder:(id)a3;
- (BLSAssertionIdentifier)initWithXPCDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation BLSAssertionIdentifier

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendInteger:self->_clientPid];
  v5 = [v3 appendInteger:self->_hostPid];
  v6 = [v3 appendUnsignedInteger:self->_count];
  v7 = [v3 appendUnsignedInteger:HIDWORD(self->_count)];
  v8 = [v3 hash];

  return v8;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendInt:self->_clientPid withName:@"clientPid"];
  v5 = [v3 appendInt:self->_hostPid withName:@"hostPid"];
  v6 = [v3 appendUInt64:self->_count withName:@"count"];
  v7 = [v3 build];

  return v7;
}

- (BLSAssertionIdentifier)initWithClientPid:(int)a3 hostPid:(int)a4 count:(unint64_t)a5
{
  v7 = self;
  if (a3 < 1 || a4 <= 0)
  {
    v11 = bls_assertions_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [BLSAssertionIdentifier initWithClientPid:a3 hostPid:a4 count:v11];
    }

    v10 = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = BLSAssertionIdentifier;
    v9 = [(BLSAssertionIdentifier *)&v13 init];
    if (v9)
    {
      v9->_hostPid = a4;
      v9->_clientPid = a3;
      v9->_count = a5;
    }

    v7 = v9;
    v10 = v7;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      clientPid = self->_clientPid;
      if (clientPid == [(BLSAssertionIdentifier *)v5 clientPid]&& (hostPid = self->_hostPid, hostPid == [(BLSAssertionIdentifier *)v5 hostPid]))
      {
        count = self->_count;
        v9 = count == [(BLSAssertionIdentifier *)v5 count];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (BLSAssertionIdentifier)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v5 = [@"clientPid" UTF8String];
  v6 = [@"hostPid" UTF8String];
  v7 = [@"count" UTF8String];
  uint64 = xpc_dictionary_get_uint64(v4, v5);
  v9 = xpc_dictionary_get_uint64(v4, v6);
  v10 = xpc_dictionary_get_uint64(v4, v7);

  return [(BLSAssertionIdentifier *)self initWithClientPid:uint64 hostPid:v9 count:v10];
}

- (void)encodeWithXPCDictionary:(id)a3
{
  xdict = a3;
  v4 = [@"clientPid" UTF8String];
  v5 = [@"hostPid" UTF8String];
  v6 = [@"count" UTF8String];
  xpc_dictionary_set_uint64(xdict, v4, self->_clientPid);
  xpc_dictionary_set_uint64(xdict, v5, self->_hostPid);
  xpc_dictionary_set_uint64(xdict, v6, self->_count);
}

- (BLSAssertionIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt32ForKey:@"clientPid"];
  v6 = [v4 decodeInt32ForKey:@"hostPid"];
  v7 = [v4 decodeInt64ForKey:@"count"];

  return [(BLSAssertionIdentifier *)self initWithClientPid:v5 hostPid:v6 count:v7];
}

- (void)encodeWithCoder:(id)a3
{
  clientPid = self->_clientPid;
  v5 = a3;
  [v5 encodeInt32:clientPid forKey:@"clientPid"];
  [v5 encodeInt32:self->_hostPid forKey:@"hostPid"];
  [v5 encodeInt64:self->_count forKey:@"count"];
}

- (void)initWithClientPid:(int)a1 hostPid:(int)a2 count:(os_log_t)log .cold.1(int a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109376;
  v4[1] = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_fault_impl(&dword_21FE25000, log, OS_LOG_TYPE_FAULT, "BLSAssertionIdentifier initialized with invalid clientPid:%d hostPid:%d", v4, 0xEu);
  v3 = *MEMORY[0x277D85DE8];
}

@end