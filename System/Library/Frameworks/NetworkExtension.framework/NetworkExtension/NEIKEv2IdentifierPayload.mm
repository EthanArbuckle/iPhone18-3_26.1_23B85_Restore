@interface NEIKEv2IdentifierPayload
- (BOOL)generatePayloadData;
- (BOOL)hasRequiredFields;
- (BOOL)parsePayloadData:(id)data;
- (id)copyPayloadData;
- (void)setPayloadData:(uint64_t)data;
@end

@implementation NEIKEv2IdentifierPayload

- (BOOL)parsePayloadData:(id)data
{
  *&v17[5] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if ([dataCopy length] > 3)
  {
    v5 = [dataCopy copy];
    [(NEIKEv2IdentifierPayload *)self setPayloadData:v5];
    v15 = 0;
    [v5 getBytes:&v15 length:4];
    v6 = [v5 subdataWithRange:4, [v5 length]- 4];
    v7 = [NEIKEv2Identifier createIdentifierWithType:v15 data:v6];
    v9 = v7;
    if (self)
    {
      objc_setProperty_atomic(self, v8, v7, 32);

      if (objc_getProperty(self, v10, 32, 1))
      {
        hasRequiredFields = [(NEIKEv2IdentifierPayload *)self hasRequiredFields];
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
    }

    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      v17[0] = v15;
      LOWORD(v17[1]) = 2112;
      *(&v17[1] + 2) = v6;
      _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, "Failed to parse identifier type %u data %@", buf, 0x12u);
    }

    hasRequiredFields = 0;
    goto LABEL_12;
  }

  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *v17 = "[NEIKEv2IdentifierPayload parsePayloadData:]";
    _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "BACKTRACE %s called with null (payloadData.length >= sizeof(ikev2_payload_id_hdr_t))", buf, 0xCu);
  }

  hasRequiredFields = 0;
LABEL_13:

  v13 = *MEMORY[0x1E69E9840];
  return hasRequiredFields;
}

- (void)setPayloadData:(uint64_t)data
{
  if (data)
  {
    objc_storeStrong((data + 48), a2);
  }
}

- (BOOL)generatePayloadData
{
  v61[1] = *MEMORY[0x1E69E9840];
  if (!self)
  {
    hasRequiredFields = [0 hasRequiredFields];
    v9 = 0;
    if (hasRequiredFields)
    {
LABEL_8:
      identifierData = [v9 identifierData];
      if (self)
      {
        Property = objc_getProperty(self, v10, 32, 1);
      }

      else
      {
        Property = 0;
      }

      v12 = Property;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_31;
      }

      if (self)
      {
        v15 = objc_getProperty(self, v14, 32, 1);
        v16 = objc_loadWeakRetained(&self->_ikeSA);
        v24 = v16;
        if (v15)
        {
          if (v16)
          {
            v25 = v15;
            *location = 0;
            identifierData2 = [v25 identifierData];
            v27 = [identifierData2 length];

            if (v27)
            {
              v35 = [(NEIKEv2IKESA *)v24 createConcatenatedSPIsAndReturnError:?];
              if (v35)
              {
                v57 = v15;
                v36 = [(NEIKEv2IKESA *)v24 createConcatedNoncesAndReturnError:?];
                if (v36)
                {
                  v37 = v25[2];
                  v38 = [NEIKEv2CryptoKitHPKE alloc];
                  identifierData3 = [v25 identifierData];
                  v40 = v25[4];
                  if (v37)
                  {
                    v41 = [(NEIKEv2CryptoKitHPKE *)v38 initWithPayload:identifierData3 aad:v40 psk:v36 pskID:v35 keyRef:v25[2]];
                  }

                  else
                  {
                    v44 = v25[3];
                    v41 = [(NEIKEv2CryptoKitHPKE *)v38 initWithPayload:identifierData3 aad:v40 psk:v36 pskID:v35 keyData:v44];
                  }

                  obj = *location;
                  v43 = [(NEIKEv2CryptoKitHPKE *)v41 performSealAndReturnError:&obj];
                  objc_storeStrong(location, obj);
                }

                else
                {
                  v43 = 0;
                }

                v15 = v57;
              }

              else
              {
                v43 = 0;
              }

              ErrorInternal = *location;
            }

            else
            {
              ErrorInternal = NEIKEv2CreateErrorInternal(@"Missing identifier data", v28, v29, v30, v31, v32, v33, v34, v56);
              v43 = 0;
              *location = ErrorInternal;
            }

            v45 = ErrorInternal;
            if (v45)
            {

              v43 = 0;
              v46 = *location;
            }

            else
            {
              v46 = 0;
            }
          }

          else
          {
            v45 = NEIKEv2CreateErrorInternal(@"Missing IKE SA", v17, v18, v19, v20, v21, v22, v23, v56);
            v43 = 0;
          }

          v47 = v45;

          goto LABEL_29;
        }

        v45 = 0;
      }

      else
      {
        v45 = 0;
        v15 = 0;
        v24 = 0;
      }

      v43 = 0;
LABEL_29:

      v48 = v45;
      if (v43)
      {

        identifierData = v43;
LABEL_31:
        *location = 0;
        if (self)
        {
          v49 = objc_getProperty(self, v14, 32, 1);
        }

        else
        {
          v49 = 0;
        }

        location[0] = [v49 identifierType];
        v50 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:{-[NSObject length](identifierData, "length") + 4}];
        [v50 appendBytes:location length:4];
        [v50 appendData:identifierData];
        [(NEIKEv2IdentifierPayload *)self setPayloadData:v50];
        v59 = v50;
        v3 = 1;
        v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
        [(NEIKEv2KeyExchangeHandler *)self setSharedSecret:v51];

        goto LABEL_44;
      }

      v52 = ne_log_obj();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        *location = 138412290;
        *&location[4] = v48;
        _os_log_error_impl(&dword_1BA83C000, v52, OS_LOG_TYPE_ERROR, "Failed to generate encrypted identifier payload: %@", location, 0xCu);
      }

LABEL_43:
      v3 = 0;
      goto LABEL_44;
    }

LABEL_41:
    identifierData = ne_log_obj();
    if (os_log_type_enabled(identifierData, OS_LOG_TYPE_ERROR))
    {
      *location = 0;
      _os_log_error_impl(&dword_1BA83C000, identifierData, OS_LOG_TYPE_ERROR, "ID payload missing required fields", location, 2u);
    }

    goto LABEL_43;
  }

  if (!self->super._payloadDataVector)
  {
    payloadData = self->_payloadData;
    if (payloadData)
    {
      v61[0] = self->_payloadData;
      v5 = MEMORY[0x1E695DEC8];
      v6 = payloadData;
      identifierData = [v5 arrayWithObjects:v61 count:1];
      [(NEIKEv2KeyExchangeHandler *)self setSharedSecret:identifierData];

      v3 = 1;
LABEL_44:

      goto LABEL_45;
    }

    if ([(NEIKEv2IdentifierPayload *)self hasRequiredFields])
    {
      v9 = objc_getProperty(self, v8, 32, 1);
      goto LABEL_8;
    }

    goto LABEL_41;
  }

  v3 = 1;
LABEL_45:
  v54 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)hasRequiredFields
{
  if (self)
  {
    self = objc_getProperty(self, a2, 32, 1);
  }

  return self != 0;
}

- (id)copyPayloadData
{
  if (!self)
  {
    return 0;
  }

  v2 = self[6];
  if (!v2)
  {
    if ([self generatePayloadData])
    {
      goto LABEL_5;
    }

    return 0;
  }

LABEL_5:
  v3 = self[6];

  return v3;
}

@end