@interface NEIKEv2DeletePayload
- (BOOL)generatePayloadData;
- (BOOL)hasRequiredFields;
- (BOOL)parsePayloadData:(id)data;
@end

@implementation NEIKEv2DeletePayload

- (BOOL)parsePayloadData:(id)data
{
  v36 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if ([dataCopy length] <= 3)
  {
    v24 = ne_log_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[NEIKEv2DeletePayload parsePayloadData:]";
      v25 = "BACKTRACE %s called with null (payloadData.length >= sizeof(ikev2_payload_delete_hdr_t))";
      v26 = v24;
      v27 = 12;
LABEL_26:
      _os_log_error_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_ERROR, v25, buf, v27);
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  v32 = 0;
  [dataCopy getBytes:&v32 length:4];
  if (self)
  {
    v5 = v32;
    self->_protocol = v32;
    if (v5 == 240)
    {
      if (BYTE1(v32) == 8)
      {
        v14 = HIWORD(v32);
        v15 = __rev16(HIWORD(v32));
        v16 = [dataCopy length] - 4;
        if (v16 != 8 * v15)
        {
          v28 = ne_log_obj();
          v31 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
          if (v16 < 8 * v15)
          {
            if (!v31)
            {
LABEL_34:

              goto LABEL_28;
            }

            *buf = 67109632;
            *&buf[4] = v15;
            *&buf[8] = 1024;
            *&buf[10] = v16;
            v34 = 1024;
            v35 = 8 * v15;
            v30 = "DELETE TLS SPI data length too short for %u SPIs (%u < %u)";
LABEL_42:
            _os_log_error_impl(&dword_1BA83C000, v28, OS_LOG_TYPE_ERROR, v30, buf, 0x14u);
            goto LABEL_34;
          }

          if (v31)
          {
            *buf = 67109632;
            *&buf[4] = v15;
            *&buf[8] = 1024;
            *&buf[10] = v16;
            v34 = 1024;
            v35 = 8 * v15;
            _os_log_error_impl(&dword_1BA83C000, v28, OS_LOG_TYPE_ERROR, "DELETE TLS SPI data length too long for %u SPIs (%u > %u), ignoring extra bytes", buf, 0x14u);
          }
        }

        v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v15];
        objc_setProperty_atomic(self, v17, v9, 40);
        if (v14)
        {
          v18 = 4;
          do
          {
            *buf = 0;
            [dataCopy getBytes:buf range:{v18, 8}];
            v19 = [NEIKEv2TLSSPI alloc];
            v20 = [(NEIKEv2TLSSPI *)v19 initWithValue:*buf];
            [v9 addObject:v20];

            v18 += 8;
            --v15;
          }

          while (v15);
        }

        goto LABEL_16;
      }

      v24 = ne_log_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        *&buf[4] = BYTE1(v32);
        *&buf[8] = 1024;
        *&buf[10] = 8;
        v25 = "Invalid DELETE TLS SPI length %u != %u";
        goto LABEL_25;
      }

LABEL_27:

LABEL_28:
      hasRequiredFields = 0;
      goto LABEL_18;
    }

    if (v5 == 3)
    {
      if (BYTE1(v32) == 4)
      {
        v6 = HIWORD(v32);
        v7 = __rev16(HIWORD(v32));
        v8 = [dataCopy length] - 4;
        if (v8 == 4 * v7)
        {
LABEL_7:
          v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v7];
          objc_setProperty_atomic(self, v10, v9, 40);
          if (v6)
          {
            v11 = 4;
            do
            {
              *buf = 0;
              [dataCopy getBytes:buf range:{v11, 4}];
              v12 = [NEIKEv2ESPSPI alloc];
              v13 = [(NEIKEv2ESPSPI *)v12 initWithValue:*buf];
              [v9 addObject:v13];

              v11 += 4;
              --v7;
            }

            while (v7);
          }

LABEL_16:

          goto LABEL_17;
        }

        v28 = ne_log_obj();
        v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
        if (v8 >= 4 * v7)
        {
          if (v29)
          {
            *buf = 67109632;
            *&buf[4] = v7;
            *&buf[8] = 1024;
            *&buf[10] = v8;
            v34 = 1024;
            v35 = 4 * v7;
            _os_log_error_impl(&dword_1BA83C000, v28, OS_LOG_TYPE_ERROR, "DELETE ESP SPI data length too long for %u SPIs, ignoring extra bytes (%u > %u)", buf, 0x14u);
          }

          goto LABEL_7;
        }

        if (!v29)
        {
          goto LABEL_34;
        }

        *buf = 67109632;
        *&buf[4] = v7;
        *&buf[8] = 1024;
        *&buf[10] = v8;
        v34 = 1024;
        v35 = 4 * v7;
        v30 = "DELETE ESP SPI data length too short for %u SPIs (%u < %u)";
        goto LABEL_42;
      }

      v24 = ne_log_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        *&buf[4] = BYTE1(v32);
        *&buf[8] = 1024;
        *&buf[10] = 4;
        v25 = "Invalid DELETE ESP SPI length %u != %u";
LABEL_25:
        v26 = v24;
        v27 = 14;
        goto LABEL_26;
      }

      goto LABEL_27;
    }
  }

LABEL_17:
  hasRequiredFields = [(NEIKEv2DeletePayload *)self hasRequiredFields];
LABEL_18:

  v22 = *MEMORY[0x1E69E9840];
  return hasRequiredFields;
}

- (BOOL)generatePayloadData
{
  v48[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    p_payloadDataVector = &self->super._payloadDataVector;
    if (self->super._payloadDataVector)
    {
      v4 = 1;
      goto LABEL_37;
    }

    if ([(NEIKEv2DeletePayload *)self hasRequiredFields])
    {
      v41 = 0;
      protocol = self->_protocol;
      v41 = protocol;
      switch(protocol)
      {
        case 0xF0uLL:
          BYTE1(v41) = 8;
          HIWORD(v41) = bswap32([objc_getProperty(self v5]) >> 16;
          v7 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:{(8 * objc_msgSend(objc_getProperty(self, v20, 40, 1), "count")) | 4}];
          [v7 appendBytes:&v41 length:4];
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v12 = objc_getProperty(self, v21, 40, 1);
          v22 = [v12 countByEnumeratingWithState:&v33 objects:v45 count:16];
          if (!v22)
          {
LABEL_26:

            v44 = v7;
            v8 = MEMORY[0x1E695DEC8];
            v9 = &v44;
            goto LABEL_27;
          }

          v23 = v22;
          v24 = *v34;
LABEL_20:
          v25 = 0;
          while (1)
          {
            if (*v34 != v24)
            {
              objc_enumerationMutation(v12);
            }

            v26 = *(*(&v33 + 1) + 8 * v25);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              break;
            }

            copySPIData = [v26 copySPIData];
            [v7 appendData:copySPIData];

            if (v23 == ++v25)
            {
              v23 = [v12 countByEnumeratingWithState:&v33 objects:v45 count:16];
              if (v23)
              {
                goto LABEL_20;
              }

              goto LABEL_26;
            }
          }

          break;
        case 3uLL:
          BYTE1(v41) = 4;
          HIWORD(v41) = bswap32([objc_getProperty(self v5]) >> 16;
          v7 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:{4 * objc_msgSend(objc_getProperty(self, v10, 40, 1), "count") + 4}];
          [v7 appendBytes:&v41 length:4];
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v12 = objc_getProperty(self, v11, 40, 1);
          v13 = [v12 countByEnumeratingWithState:&v37 objects:v47 count:16];
          if (!v13)
          {
LABEL_17:

            v46 = v7;
            v4 = 1;
            v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
            objc_storeStrong(p_payloadDataVector, v19);

LABEL_33:
            goto LABEL_37;
          }

          v14 = v13;
          v15 = *v38;
LABEL_11:
          v16 = 0;
          while (1)
          {
            if (*v38 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v37 + 1) + 8 * v16);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              break;
            }

            copySPIData2 = [v17 copySPIData];
            [v7 appendData:copySPIData2];

            if (v14 == ++v16)
            {
              v14 = [v12 countByEnumeratingWithState:&v37 objects:v47 count:16];
              if (v14)
              {
                goto LABEL_11;
              }

              goto LABEL_17;
            }
          }

          break;
        case 1uLL:
          BYTE1(v41) = 0;
          HIWORD(v41) = 0;
          v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v41 length:4];
          v48[0] = v7;
          v8 = MEMORY[0x1E695DEC8];
          v9 = v48;
LABEL_27:
          v28 = [v8 arrayWithObjects:v9 count:{1, v33}];
          objc_storeStrong(p_payloadDataVector, v28);

          v4 = 1;
          goto LABEL_33;
        default:
          goto LABEL_31;
      }

LABEL_32:
      v4 = 0;
      goto LABEL_33;
    }
  }

  else if ([0 hasRequiredFields])
  {
    v41 = 0;
LABEL_31:
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        v32 = self->_protocol;
      }

      else
      {
        LODWORD(v32) = 0;
      }

      *buf = 67109120;
      v43 = v32;
      _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "Unsupported DELETE protocol type %u", buf, 8u);
    }

    goto LABEL_32;
  }

  v29 = ne_log_obj();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1BA83C000, v29, OS_LOG_TYPE_ERROR, "Delete payload missing required fields", buf, 2u);
  }

  v4 = 0;
LABEL_37:
  v30 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)hasRequiredFields
{
  if (self)
  {
    LOBYTE(self) = self->_protocol != 0;
  }

  return self;
}

@end