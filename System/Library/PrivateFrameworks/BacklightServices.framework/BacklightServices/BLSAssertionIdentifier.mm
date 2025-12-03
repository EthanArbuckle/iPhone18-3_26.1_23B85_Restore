@interface BLSAssertionIdentifier
- (BLSAssertionIdentifier)initWithClientPid:(int)pid hostPid:(int)hostPid count:(unint64_t)count;
- (BLSAssertionIdentifier)initWithCoder:(id)coder;
- (BLSAssertionIdentifier)initWithXPCDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation BLSAssertionIdentifier

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendInteger:self->_clientPid];
  v5 = [builder appendInteger:self->_hostPid];
  v6 = [builder appendUnsignedInteger:self->_count];
  v7 = [builder appendUnsignedInteger:HIDWORD(self->_count)];
  v8 = [builder hash];

  return v8;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendInt:self->_clientPid withName:@"clientPid"];
  v5 = [v3 appendInt:self->_hostPid withName:@"hostPid"];
  v6 = [v3 appendUInt64:self->_count withName:@"count"];
  build = [v3 build];

  return build;
}

- (BLSAssertionIdentifier)initWithClientPid:(int)pid hostPid:(int)hostPid count:(unint64_t)count
{
  selfCopy = self;
  if (pid < 1 || hostPid <= 0)
  {
    v11 = bls_assertions_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [BLSAssertionIdentifier initWithClientPid:pid hostPid:hostPid count:v11];
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
      v9->_hostPid = hostPid;
      v9->_clientPid = pid;
      v9->_count = count;
    }

    selfCopy = v9;
    v10 = selfCopy;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (BLSAssertionIdentifier)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  uTF8String = [@"clientPid" UTF8String];
  uTF8String2 = [@"hostPid" UTF8String];
  uTF8String3 = [@"count" UTF8String];
  uint64 = xpc_dictionary_get_uint64(dictionaryCopy, uTF8String);
  v9 = xpc_dictionary_get_uint64(dictionaryCopy, uTF8String2);
  v10 = xpc_dictionary_get_uint64(dictionaryCopy, uTF8String3);

  return [(BLSAssertionIdentifier *)self initWithClientPid:uint64 hostPid:v9 count:v10];
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  xdict = dictionary;
  uTF8String = [@"clientPid" UTF8String];
  uTF8String2 = [@"hostPid" UTF8String];
  uTF8String3 = [@"count" UTF8String];
  xpc_dictionary_set_uint64(xdict, uTF8String, self->_clientPid);
  xpc_dictionary_set_uint64(xdict, uTF8String2, self->_hostPid);
  xpc_dictionary_set_uint64(xdict, uTF8String3, self->_count);
}

- (BLSAssertionIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt32ForKey:@"clientPid"];
  v6 = [coderCopy decodeInt32ForKey:@"hostPid"];
  v7 = [coderCopy decodeInt64ForKey:@"count"];

  return [(BLSAssertionIdentifier *)self initWithClientPid:v5 hostPid:v6 count:v7];
}

- (void)encodeWithCoder:(id)coder
{
  clientPid = self->_clientPid;
  coderCopy = coder;
  [coderCopy encodeInt32:clientPid forKey:@"clientPid"];
  [coderCopy encodeInt32:self->_hostPid forKey:@"hostPid"];
  [coderCopy encodeInt64:self->_count forKey:@"count"];
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