@interface NEIKEv2EncryptedFragmentPayload
- (BOOL)hasRequiredFields;
- (BOOL)parsePayloadData:(id)data;
@end

@implementation NEIKEv2EncryptedFragmentPayload

- (BOOL)parsePayloadData:(id)data
{
  v16 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if ([dataCopy length] <= 3)
  {
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315138;
      v15 = "[NEIKEv2EncryptedFragmentPayload parsePayloadData:]";
      _os_log_error_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_ERROR, "BACKTRACE %s called with null (payloadData.length >= sizeof(ikev2_fragment_hdr_t))", &v14, 0xCu);
    }

    hasRequiredFields = 0;
  }

  else
  {
    v5 = [dataCopy subdataWithRange:{0, 4}];
    bytes = [v5 bytes];
    self->_fragmentNumber = bswap32(*bytes) >> 16;
    self->_totalFragments = bswap32(bytes[1]) >> 16;
    objc_setProperty_atomic(self, v7, v5, 32);
    v8 = [dataCopy subdataWithRange:{4, objc_msgSend(dataCopy, "length") - 4}];
    objc_setProperty_atomic(self, v9, v8, 40);

    hasRequiredFields = [(NEIKEv2EncryptedFragmentPayload *)self hasRequiredFields];
  }

  v11 = *MEMORY[0x1E69E9840];
  return hasRequiredFields;
}

- (BOOL)hasRequiredFields
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 40, 1);
    LOBYTE(selfCopy) = self && selfCopy->_fragmentNumber && selfCopy->_totalFragments != 0;
  }

  return selfCopy;
}

@end