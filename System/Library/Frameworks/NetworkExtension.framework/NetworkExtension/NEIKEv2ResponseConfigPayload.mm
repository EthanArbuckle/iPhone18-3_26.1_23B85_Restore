@interface NEIKEv2ResponseConfigPayload
- (BOOL)parsePayloadData:(id)data;
@end

@implementation NEIKEv2ResponseConfigPayload

- (BOOL)parsePayloadData:(id)data
{
  v59 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if ([dataCopy length] <= 3)
  {
    v43 = ne_log_obj();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *v56 = "[NEIKEv2ResponseConfigPayload parsePayloadData:]";
      _os_log_error_impl(&dword_1BA83C000, v43, OS_LOG_TYPE_ERROR, "BACKTRACE %s called with null (payloadData.length >= sizeof(ikev2_payload_config_hdr_t))", buf, 0xCu);
    }

    hasRequiredFields = 0;
  }

  else
  {
    v53 = 0;
    [dataCopy getBytes:&v53 length:4];
    v5 = objc_alloc_init(NEIKEv2ConfigurationMessage);
    v7 = v5;
    selfa = self;
    if (self)
    {
      objc_setProperty_atomic(self, v6, v5, 32);

      selfCopy = self;
      v9 = v53;
      Property = objc_getProperty(selfCopy, v10, 32, 1);
      if (Property)
      {
        Property[1] = v9;
      }

      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      self = selfa;
      v14 = objc_getProperty(selfa, v13, 32, 1);
      if (v14)
      {
        objc_setProperty_atomic(v14, v15, v12, 16);
      }
    }

    else
    {

      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    bytes = [dataCopy bytes];
    v46 = dataCopy;
    v17 = [dataCopy length];
    v20 = v17 - 4;
    if ((v17 - 4) < 4)
    {
      v25 = v17 - 4;
LABEL_49:
      if (v25)
      {
        v44 = ne_log_obj();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *v56 = v25;
          _os_log_error_impl(&dword_1BA83C000, v44, OS_LOG_TYPE_ERROR, "Ignoring %u remaining bytes in response configuration payload", buf, 8u);
        }
      }

      hasRequiredFields = [(NEIKEv2ConfigPayload *)self hasRequiredFields];
    }

    else
    {
      v21 = (bytes + 4);
      *&v19 = 134218240;
      v45 = v19;
      v47 = v12;
      while (1)
      {
        v22 = bswap32(*v21) >> 16;
        v23 = bswap32(v21[1]) >> 16;
        v24 = v23 + 4;
        v25 = v20 - (v23 + 4);
        if (v20 < v23 + 4)
        {
          break;
        }

        v26 = 0;
        if (v22 >= 0x4000 && (v22 - 25960) <= 0xFFFDu)
        {
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          if (self)
          {
            v27 = objc_getProperty(self, v18, 40, 1);
            if (v27)
            {
              v27 = objc_getProperty(v27, v28, 16, 1);
            }
          }

          else
          {
            v27 = 0;
          }

          v29 = v27;
          v26 = [v29 countByEnumeratingWithState:&v49 objects:v54 count:16];
          if (v26)
          {
            v30 = *v50;
            while (2)
            {
              for (i = 0; i != v26; i = i + 1)
              {
                if (*v50 != v30)
                {
                  objc_enumerationMutation(v29);
                }

                v32 = *(*(&v49 + 1) + 8 * i);
                if ([v32 attributeType] == v22)
                {
                  v26 = v32;
                  goto LABEL_25;
                }
              }

              v26 = [v29 countByEnumeratingWithState:&v49 objects:v54 count:16];
              if (v26)
              {
                continue;
              }

              break;
            }

LABEL_25:
            v12 = v47;
            self = selfa;
          }
        }

        v33 = ne_log_obj();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          *buf = v45;
          *v56 = v22;
          *&v56[8] = 1024;
          *&v56[10] = v23;
          _os_log_debug_impl(&dword_1BA83C000, v33, OS_LOG_TYPE_DEBUG, "Parsing response configuration attribute of type %zu length %u", buf, 0x12u);
        }

        if (v26 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v21 + 2 length:v23 encoding:4];
          v35 = [NEIKEv2StringAttribute alloc];
          attributeName = [v26 attributeName];
          v37 = [(NEIKEv2StringAttribute *)v35 initCustomWithAttributeType:v22 attributeName:attributeName stringValue:v34];
        }

        else
        {
          v34 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v21 + 2 length:v23 freeWhenDone:0];
          if (v26)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v22 = 1;
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v22 = 8;
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v22 = 2;
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v22 = 15;
                  }
                }
              }
            }

            attributeName2 = [v26 attributeName];
            v37 = -[NEIKEv2ConfigPayload createConfigAttributeFromData:attributeName:attributeType:customType:](self, v34, attributeName2, v22, [v26 attributeType]);
          }

          else
          {
            v37 = [(NEIKEv2ConfigPayload *)self createConfigAttributeFromData:v34 attributeName:0 attributeType:v22 customType:0];
          }
        }

        if (v37)
        {
          [v12 addObject:v37];
        }

        v21 = (v21 + v24);

        v20 = v25;
        if (v25 <= 3)
        {
          goto LABEL_49;
        }
      }

      v42 = ne_log_obj();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109632;
        *v56 = v20;
        *&v56[4] = 2048;
        *&v56[6] = v22;
        v57 = 1024;
        v58 = v23;
        _os_log_error_impl(&dword_1BA83C000, v42, OS_LOG_TYPE_ERROR, "Not enough bytes remaining (%u) to process response configuration attribute of type %zu length %u", buf, 0x18u);
      }

      hasRequiredFields = 0;
    }

    dataCopy = v46;
  }

  v40 = *MEMORY[0x1E69E9840];
  return hasRequiredFields;
}

@end