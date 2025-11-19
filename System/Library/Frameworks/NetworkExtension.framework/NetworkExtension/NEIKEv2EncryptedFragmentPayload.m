@interface NEIKEv2EncryptedFragmentPayload
- (BOOL)hasRequiredFields;
- (BOOL)parsePayloadData:(id)a3;
@end

@implementation NEIKEv2EncryptedFragmentPayload

- (BOOL)parsePayloadData:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 length] <= 3)
  {
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315138;
      v15 = "[NEIKEv2EncryptedFragmentPayload parsePayloadData:]";
      _os_log_error_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_ERROR, "BACKTRACE %s called with null (payloadData.length >= sizeof(ikev2_fragment_hdr_t))", &v14, 0xCu);
    }

    v10 = 0;
  }

  else
  {
    v5 = [v4 subdataWithRange:{0, 4}];
    v6 = [v5 bytes];
    self->_fragmentNumber = bswap32(*v6) >> 16;
    self->_totalFragments = bswap32(v6[1]) >> 16;
    objc_setProperty_atomic(self, v7, v5, 32);
    v8 = [v4 subdataWithRange:{4, objc_msgSend(v4, "length") - 4}];
    objc_setProperty_atomic(self, v9, v8, 40);

    v10 = [(NEIKEv2EncryptedFragmentPayload *)self hasRequiredFields];
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)hasRequiredFields
{
  v2 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 40, 1);
    LOBYTE(v2) = self && v2->_fragmentNumber && v2->_totalFragments != 0;
  }

  return v2;
}

@end