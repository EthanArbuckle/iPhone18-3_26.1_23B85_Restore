@interface NEIKEv2CertificateRequestPayload
- (BOOL)generatePayloadData;
- (BOOL)hasRequiredFields;
- (BOOL)parsePayloadData:(id)data;
@end

@implementation NEIKEv2CertificateRequestPayload

- (BOOL)parsePayloadData:(id)data
{
  v13 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if ([dataCopy length])
  {
    LOBYTE(v11) = 0;
    [dataCopy getBytes:&v11 length:1];
    if (self)
    {
      self->_encoding = v11;
    }

    v6 = [dataCopy subdataWithRange:{1, objc_msgSend(dataCopy, "length") - 1}];
    if (self)
    {
      objc_setProperty_atomic(self, v5, v6, 40);
    }

    hasRequiredFields = [(NEIKEv2CertificateRequestPayload *)self hasRequiredFields];
  }

  else
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "[NEIKEv2CertificateRequestPayload parsePayloadData:]";
      _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, "BACKTRACE %s called with null (payloadData.length >= sizeof(ikev2_payload_certreq_hdr_t))", &v11, 0xCu);
    }

    hasRequiredFields = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return hasRequiredFields;
}

- (BOOL)generatePayloadData
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (self->super._payloadDataVector)
    {
      v3 = 1;
      goto LABEL_12;
    }

    if ([(NEIKEv2CertificateRequestPayload *)self hasRequiredFields])
    {
      v13[0] = self->_encoding;
      v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v13 length:1];
      objc_storeStrong(&self->super._payloadSubHeader, v4);

      Property = objc_getProperty(self, v5, 40, 1);
LABEL_6:
      v14[0] = Property;
      v7 = MEMORY[0x1E695DEC8];
      v8 = Property;
      v3 = 1;
      v9 = [v7 arrayWithObjects:v14 count:{1, *v13}];

      [(NEIKEv2KeyExchangeHandler *)self setSharedSecret:v9];
      goto LABEL_12;
    }
  }

  else if ([0 hasRequiredFields])
  {
    v13[0] = 0;

    Property = 0;
    goto LABEL_6;
  }

  v10 = ne_log_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *v13 = 0;
    _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, "Certificate Request payload missing required fields", v13, 2u);
  }

  v3 = 0;
LABEL_12:
  v11 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)hasRequiredFields
{
  selfCopy = self;
  if (self)
  {
    v3 = objc_getProperty(self, a2, 40, 1);
    if (v3)
    {
      LOBYTE(selfCopy) = selfCopy->_encoding != 0;
    }

    else
    {
      LOBYTE(selfCopy) = 0;
    }
  }

  return selfCopy;
}

@end