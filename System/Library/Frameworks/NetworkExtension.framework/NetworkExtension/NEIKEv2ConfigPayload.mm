@interface NEIKEv2ConfigPayload
- (BOOL)generatePayloadData;
- (BOOL)hasRequiredFields;
- (BOOL)parsePayloadData:(id)a3;
- (id)createConfigAttributeFromData:(void *)a3 attributeName:(uint64_t)a4 attributeType:(uint64_t)a5 customType:;
@end

@implementation NEIKEv2ConfigPayload

- (BOOL)parsePayloadData:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 length] <= 3)
  {
    v31 = ne_log_obj();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *v37 = "[NEIKEv2ConfigPayload parsePayloadData:]";
      _os_log_error_impl(&dword_1BA83C000, v31, OS_LOG_TYPE_ERROR, "BACKTRACE %s called with null (payloadData.length >= sizeof(ikev2_payload_config_hdr_t))", buf, 0xCu);
    }

    v28 = 0;
  }

  else
  {
    v35 = 0;
    [v4 getBytes:&v35 length:4];
    v5 = objc_alloc_init(NEIKEv2ConfigurationMessage);
    v7 = v5;
    if (self)
    {
      objc_setProperty_atomic(self, v6, v5, 32);

      v8 = v35;
      Property = objc_getProperty(self, v9, 32, 1);
      if (Property)
      {
        Property[1] = v8;
      }

      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v13 = objc_getProperty(self, v12, 32, 1);
      if (v13)
      {
        objc_setProperty_atomic(v13, v14, v11, 16);
      }
    }

    else
    {

      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v15 = [v4 bytes];
    v34 = v4;
    v16 = [v4 length];
    v18 = v16 - 4;
    if ((v16 - 4) < 4)
    {
      v25 = v16 - 4;
LABEL_17:
      if (v25)
      {
        v32 = ne_log_obj();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *v37 = v25;
          _os_log_error_impl(&dword_1BA83C000, v32, OS_LOG_TYPE_ERROR, "Ignoring %u remaining bytes in configuration payload", buf, 8u);
        }
      }

      v28 = [(NEIKEv2ConfigPayload *)self hasRequiredFields];
    }

    else
    {
      v19 = (v15 + 4);
      *&v17 = 134218240;
      v33 = v17;
      while (1)
      {
        v20 = bswap32(*v19) >> 16;
        v21 = bswap32(v19[1]) >> 16;
        v22 = v21 + 4;
        v23 = ne_log_obj();
        v24 = v23;
        v25 = v18 - (v21 + 4);
        if (v18 < v21 + 4)
        {
          break;
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = v33;
          *v37 = v20;
          *&v37[8] = 1024;
          *&v37[10] = v21;
          _os_log_debug_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_DEBUG, "Parsing configuration attribute of type %zu length %u", buf, 0x12u);
        }

        v26 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v19 + 2 length:v21 freeWhenDone:0];
        v27 = [(NEIKEv2ConfigPayload *)self createConfigAttributeFromData:v26 attributeName:0 attributeType:v20 customType:0];
        if (v27)
        {
          [v11 addObject:v27];
        }

        v19 = (v19 + v22);

        v18 -= v22;
        if (v25 <= 3)
        {
          goto LABEL_17;
        }
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109632;
        *v37 = v18;
        *&v37[4] = 2048;
        *&v37[6] = v20;
        v38 = 1024;
        v39 = v21;
        _os_log_error_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_ERROR, "Not enough bytes remaining (%u) to process configuration attribute of type %zu length %u", buf, 0x18u);
      }

      v28 = 0;
    }

    v4 = v34;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

- (id)createConfigAttributeFromData:(void *)a3 attributeName:(uint64_t)a4 attributeType:(uint64_t)a5 customType:
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  if (!a1)
  {
LABEL_50:
    v20 = 0;
    goto LABEL_81;
  }

  v11 = [v9 length];
  v12 = v11;
  if (a4 > 12)
  {
    if (a4 > 20)
    {
      if ((a4 - 25958) < 2 || a4 == 21)
      {
        goto LABEL_32;
      }

      if (a4 == 25)
      {
LABEL_18:
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v9 encoding:4];
        if (a4 == 25)
        {
          v14 = off_1E7F04978;
        }

        else if (a4 == 14)
        {
          v14 = off_1E7F04BF8;
        }

        else
        {
          v14 = off_1E7F048F0;
        }

        v29 = *v14;
        v28 = [objc_alloc(objc_opt_class()) initWithStringValue:v13];
        goto LABEL_80;
      }
    }

    else
    {
      if (a4 <= 14)
      {
        if (a4 == 13)
        {
          DWORD2(v37) = 0;
          *&v37 = 0;
          v35 = 0;
          *buf = 528;
          if (v11 == 8)
          {
            [v9 getBytes:&v37 length:4];
            [v9 getBytes:&v35 range:{4, 4}];
          }

          v21 = [NEIKEv2IPv4SubnetAttribute alloc];
          v22 = [MEMORY[0x1E6977E08] endpointWithAddress:buf];
          if (a5)
          {
            v23 = [(NEIKEv2SubnetAttribute *)v21 initCustomWithAttributeType:a5 attributeName:v10 addressValue:v22 ipv4SubnetMask:v35];
          }

          else
          {
            v23 = [(NEIKEv2SubnetAttribute *)v21 initWithAddress:v22 ipv4SubnetMask:v35];
          }

          goto LABEL_64;
        }

        goto LABEL_18;
      }

      if (a4 == 15)
      {
LABEL_44:
        v37 = 0uLL;
        v38 = 0;
        *buf = 7708;
        LOBYTE(v35) = 0;
        if (v11 == 16)
        {
          [v9 getBytes:&v37 + 4 length:16];
        }

        else if (v11 == 17)
        {
          [v9 getBytes:&v37 + 4 length:16];
          [v9 getBytes:&v35 range:{16, 1}];
        }

        v13 = [MEMORY[0x1E6977E08] endpointWithAddress:buf];
        if (a4 == 8)
        {
          v30 = off_1E7F04A70;
        }

        else
        {
          v30 = off_1E7F04A90;
        }

        v31 = *v30;
        v32 = objc_alloc(objc_opt_class());
        if (a5)
        {
          v28 = [v32 initCustomWithAttributeType:a5 attributeName:v10 addressValue:v13 prefix:v35];
        }

        else
        {
          v28 = [v32 initWithAddress:v13 prefix:v35];
        }

        goto LABEL_80;
      }

      if (a4 == 20)
      {
        goto LABEL_23;
      }
    }

LABEL_47:
    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      LODWORD(v37) = a4;
      WORD2(v37) = 1024;
      *(&v37 + 6) = v12;
      _os_log_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_INFO, "Received unknown attribute of type %u length %u", buf, 0xEu);
    }

    goto LABEL_50;
  }

  if (a4 <= 6)
  {
    if ((a4 - 1) >= 3 && a4 != 6)
    {
      goto LABEL_47;
    }

LABEL_23:
    DWORD2(v37) = 0;
    *&v37 = 0;
    *buf = 528;
    if (v11 == 4)
    {
      [v9 getBytes:&v37 length:4];
    }

    v15 = 0;
    if (a4 <= 2)
    {
      if (a4 == 1)
      {
        v16 = off_1E7F04A40;
      }

      else
      {
        if (a4 != 2)
        {
          goto LABEL_61;
        }

        v16 = off_1E7F04A58;
      }
    }

    else
    {
      switch(a4)
      {
        case 3:
          v16 = off_1E7F04A50;
          break;
        case 6:
          v16 = off_1E7F04A48;
          break;
        case 20:
          v16 = off_1E7F04A60;
          break;
        default:
          goto LABEL_61;
      }
    }

    v24 = *v16;
    v15 = objc_opt_class();
LABEL_61:
    v25 = [v15 alloc];
    v22 = [MEMORY[0x1E6977E08] endpointWithAddress:buf];
    if (a5)
    {
      v23 = [v25 initCustomWithAttributeType:a5 attributeName:v10 addressValue:v22];
    }

    else
    {
      v23 = [v25 initWithAddress:v22];
    }

LABEL_64:
    v20 = v23;

    goto LABEL_81;
  }

  if (a4 <= 9)
  {
    if (a4 != 7)
    {
      if (a4 != 8)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    }

    goto LABEL_18;
  }

  if (a4 != 10 && a4 != 12)
  {
    goto LABEL_47;
  }

LABEL_32:
  v37 = 0uLL;
  v38 = 0;
  *buf = 7708;
  if (v11 == 16)
  {
    [v9 getBytes:&v37 + 4 length:16];
  }

  v13 = [MEMORY[0x1E6977E08] endpointWithAddress:buf];
  v17 = 0;
  if (a4 <= 20)
  {
    if (a4 == 10)
    {
      v18 = off_1E7F04A80;
    }

    else
    {
      v18 = off_1E7F04A78;
    }
  }

  else
  {
    switch(a4)
    {
      case 21:
        v18 = off_1E7F04A88;
        break;
      case 25958:
        v18 = off_1E7F04AC0;
        break;
      case 25959:
        v18 = off_1E7F04B90;
        break;
      default:
        goto LABEL_67;
    }
  }

  v26 = *v18;
  v17 = objc_opt_class();
LABEL_67:
  v27 = [v17 alloc];
  if (a5)
  {
    v28 = [v27 initCustomWithAttributeType:a5 attributeName:v10 addressValue:v13];
  }

  else
  {
    v28 = [v27 initWithAddress:v13];
  }

LABEL_80:
  v20 = v28;

LABEL_81:
  v33 = *MEMORY[0x1E69E9840];

  return v20;
}

- (BOOL)generatePayloadData
{
  v55 = *MEMORY[0x1E69E9840];
  if (!self || !self->super._payloadDataVector)
  {
    v3 = [(NEIKEv2ConfigPayload *)self hasRequiredFields];
    if (v3)
    {
      v5 = objc_alloc(MEMORY[0x1E695DF70]);
      if (self)
      {
        Property = objc_getProperty(self, v4, 32, 1);
        if (Property)
        {
          Property = objc_getProperty(Property, v7, 16, 1);
        }
      }

      else
      {
        Property = 0;
      }

      v8 = Property;
      v9 = [v5 initWithCapacity:{objc_msgSend(v8, "count")}];

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      if (self)
      {
        v11 = objc_getProperty(self, v10, 32, 1);
        if (v11)
        {
          v11 = objc_getProperty(v11, v12, 16, 1);
        }
      }

      else
      {
        v11 = 0;
      }

      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v48 objects:v52 count:16];
      if (v14)
      {
        v16 = v14;
        v17 = 0;
        v18 = *v49;
        *&v15 = 138412290;
        v46 = v15;
        for (i = *v49; ; i = *v49)
        {
          if (i != v18)
          {
            objc_enumerationMutation(v13);
          }

          v20 = *(*(&v48 + 1) + 8 * v17);
          if (![(NEIKEv2ConfigPayload *)v20 attributeType])
          {
            v23 = ne_log_obj();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
            {
              *buf = v46;
              v54 = v20;
              _os_log_fault_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_FAULT, "AttributeType 0 invalid in %@", buf, 0xCu);
            }

            goto LABEL_27;
          }

          if ([(NEIKEv2ConfigPayload *)v20 valueType]== 5)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              break;
            }
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = [(NEIKEv2ConfigPayload *)v20 address];

            if (!v27)
            {
              goto LABEL_34;
            }

            v28 = [(NEIKEv2ConfigPayload *)v20 address];
            v29 = [v28 address];

            if ([(NEIKEv2ConfigPayload *)v20 valueType]== 1 && *(v29 + 1) == 2)
            {
              *buf = 0;
              *buf = bswap32([(NEIKEv2ConfigPayload *)v20 attributeType]) >> 16;
              *&buf[2] = 1024;
              v30 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:8];
              [v30 appendBytes:buf length:4];
              v31 = (v29 + 4);
              goto LABEL_33;
            }

            if ([(NEIKEv2ConfigPayload *)v20 valueType]== 2 && *(v29 + 1) == 30)
            {
              *buf = 0;
              *buf = bswap32([(NEIKEv2ConfigPayload *)v20 attributeType]) >> 16;
              *&buf[2] = 4096;
              v30 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:20];
              [v30 appendBytes:buf length:4];
              v31 = (v29 + 8);
              v35 = v30;
              v36 = 16;
              goto LABEL_41;
            }
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_43;
            }

            v32 = [(NEIKEv2ConfigPayload *)v20 address];

            if (!v32)
            {
              goto LABEL_34;
            }

            v33 = [(NEIKEv2ConfigPayload *)v20 address];
            v34 = [v33 address];

            if ([(NEIKEv2ConfigPayload *)v20 valueType]== 3 && *(v34 + 1) == 2)
            {
              *buf = 0;
              *buf = [(NEIKEv2ConfigPayload *)v20 ipv4SubnetMask];
              v47 = 0;
              LOWORD(v47) = bswap32([(NEIKEv2ConfigPayload *)v20 attributeType]) >> 16;
              HIWORD(v47) = 2048;
              v30 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:12];
              [v30 appendBytes:&v47 length:4];
              [v30 appendBytes:v34 + 4 length:4];
              v31 = buf;
LABEL_33:
              v35 = v30;
              v36 = 4;
LABEL_41:
              [v35 appendBytes:v31 length:v36];
LABEL_42:
              [v9 addObject:v30];

              goto LABEL_43;
            }

            if ([(NEIKEv2ConfigPayload *)v20 valueType]== 4 && *(v34 + 1) == 30)
            {
              LOBYTE(v47) = [(NEIKEv2ConfigPayload *)v20 prefix];
              *buf = 0;
              *buf = bswap32([(NEIKEv2ConfigPayload *)v20 attributeType]) >> 16;
              *&buf[2] = 4352;
              v30 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:21];
              [v30 appendBytes:buf length:4];
              [v30 appendBytes:v34 + 8 length:16];
              v31 = &v47;
              v35 = v30;
              v36 = 1;
              goto LABEL_41;
            }
          }

LABEL_43:
          if (++v17 >= v16)
          {
            v37 = [v13 countByEnumeratingWithState:&v48 objects:v52 count:16];
            if (!v37)
            {
              goto LABEL_49;
            }

            v16 = v37;
            v17 = 0;
          }
        }

        v21 = [(NEIKEv2ConfigPayload *)v20 stringValue];

        if (v21)
        {
          v22 = [(NEIKEv2ConfigPayload *)v20 stringValue];
          v23 = [v22 dataUsingEncoding:4];

          *buf = 0;
          v24 = [(NEIKEv2ConfigPayload *)v20 attributeType];
          v25 = [v23 length];
          *buf = bswap32(v24) >> 16;
          *&buf[2] = bswap32(v25) >> 16;
          v26 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:v25 + 4];
          [v26 appendBytes:buf length:4];
          [v26 appendData:v23];
          [v9 addObject:v26];

LABEL_27:
          goto LABEL_43;
        }

LABEL_34:
        *buf = 0;
        *buf = bswap32([(NEIKEv2ConfigPayload *)v20 attributeType]) >> 16;
        *&buf[2] = 0;
        v30 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:buf length:4];
        goto LABEL_42;
      }

LABEL_49:

      *buf = 0;
      if (self)
      {
        v39 = objc_getProperty(self, v38, 32, 1);
        if (v39)
        {
          v40 = v39[1];
        }

        else
        {
          LOBYTE(v40) = 0;
        }
      }

      else
      {
        LOBYTE(v40) = 0;
      }

      buf[0] = v40;
      v41 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:buf length:4];
      [(NEIKEv2Payload *)self setPayloadSubHeader:v41];

      if ([v9 count])
      {
        v42 = self;
        v43 = v9;
      }

      else
      {
        v43 = MEMORY[0x1E695E0F0];
        v42 = self;
      }

      [(NEIKEv2KeyExchangeHandler *)v42 setSharedSecret:v43];
    }

    else
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v54 = self;
        _os_log_fault_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_FAULT, "Configuration payload missing required fields %@", buf, 0xCu);
      }
    }

    goto LABEL_57;
  }

  v3 = 1;
LABEL_57:
  v44 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)hasRequiredFields
{
  if (self)
  {
    self = objc_getProperty(self, a2, 32, 1);
    if (self)
    {
      LOBYTE(self) = *&self->super._isInbound != 0;
    }
  }

  return self;
}

@end