@interface NFCNDEFPayload
+ (NFCNDEFPayload)wellKnowTypeTextPayloadWithString:(NSString *)text locale:(NSLocale *)locale;
+ (NFCNDEFPayload)wellKnownTypeTextPayloadWithString:(NSString *)text locale:(NSLocale *)locale;
+ (NFCNDEFPayload)wellKnownTypeURIPayloadWithString:(NSString *)uri;
+ (NFCNDEFPayload)wellKnownTypeURIPayloadWithURL:(NSURL *)url;
- (NFCNDEFPayload)initWithCoder:(id)coder;
- (NFCNDEFPayload)initWithFormatType:(unsigned __int8)type type:(id)a4 identifier:(id)identifier payload:(id)payload chunkSize:(unint64_t)size;
- (NSString)wellKnownTypeTextPayloadWithLocale:(NSLocale *)locale;
- (NSURL)wellKnownTypeURIPayload;
- (id)asData;
- (id)description;
- (id)resolveURIString:(id)string;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFCNDEFPayload

- (NFCNDEFPayload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = NFCNDEFPayload;
  v5 = [(NFCNDEFPayload *)&v13 init];
  if (v5)
  {
    v5->_typeNameFormat = [coderCopy decodeIntegerForKey:@"typeNameFormat"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->_type;
    v5->_type = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payload"];
    payload = v5->_payload;
    v5->_payload = v10;

    v5->_chunkSize = [coderCopy decodeIntegerForKey:@"chunkSize"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  typeNameFormat = self->_typeNameFormat;
  coderCopy = coder;
  [coderCopy encodeInteger:typeNameFormat forKey:@"typeNameFormat"];
  [coderCopy encodeObject:self->_type forKey:@"type"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_payload forKey:@"payload"];
  [coderCopy encodeInteger:self->_chunkSize forKey:@"chunkSize"];
}

- (NFCNDEFPayload)initWithFormatType:(unsigned __int8)type type:(id)a4 identifier:(id)identifier payload:(id)payload chunkSize:(unint64_t)size
{
  v50 = *MEMORY[0x277D85DE8];
  v13 = a4;
  identifierCopy = identifier;
  payloadCopy = payload;
  v41.receiver = self;
  v41.super_class = NFCNDEFPayload;
  v16 = [(NFCNDEFPayload *)&v41 init];
  if (!v16)
  {
LABEL_25:
    v30 = v16;
    goto LABEL_26;
  }

  v17 = [v13 length];
  v18 = [identifierCopy length] + v17;
  if ((v18 + [payloadCopy length]) <= 0x20000)
  {
    v16->_typeNameFormat = type;
    if (v13)
    {
      v31 = [v13 copy];
    }

    else
    {
      v31 = objc_opt_new();
    }

    type = v16->_type;
    v16->_type = v31;

    if (identifierCopy)
    {
      v33 = [identifierCopy copy];
    }

    else
    {
      v33 = objc_opt_new();
    }

    identifier = v16->_identifier;
    v16->_identifier = v33;

    if (payloadCopy)
    {
      v35 = [payloadCopy copy];
    }

    else
    {
      v35 = objc_opt_new();
    }

    payload = v16->_payload;
    v16->_payload = v35;

    sizeCopy = 0xFFFFFFFFLL;
    if (size - 0x100000000 >= 0xFFFFFFFF00000001)
    {
      sizeCopy = size;
    }

    v16->_chunkSize = sizeCopy;
    goto LABEL_25;
  }

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v20 = Logger;
    Class = object_getClass(v16);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(v16);
    Name = sel_getName(a2);
    v24 = 45;
    if (isMetaClass)
    {
      v24 = 43;
    }

    v20(3, "%c[%{public}s %{public}s]:%i NDEF payload exceeds the size limit", v24, ClassName, Name, 78);
  }

  v25 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = object_getClass(v16);
    if (class_isMetaClass(v26))
    {
      v27 = 43;
    }

    else
    {
      v27 = 45;
    }

    v28 = object_getClassName(v16);
    v29 = sel_getName(a2);
    *buf = 67109890;
    v43 = v27;
    v44 = 2082;
    v45 = v28;
    v46 = 2082;
    v47 = v29;
    v48 = 1024;
    v49 = 78;
    _os_log_impl(&dword_23728C000, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i NDEF payload exceeds the size limit", buf, 0x22u);
  }

  v30 = 0;
LABEL_26:

  v38 = *MEMORY[0x277D85DE8];
  return v30;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  payload = self->_payload;
  v5 = [v3 initWithFormat:@"TNF=%d, Payload Type=%@, Payload ID=%@, Payload=%@, ChunkSize=%zu", self->_typeNameFormat, self->_type, self->_identifier, payload, self->_chunkSize];

  return v5;
}

- (id)asData
{
  v42 = *MEMORY[0x277D85DE8];
  v32 = 0;
  v4 = [MEMORY[0x277D82B68] recordsWithTNF:self->_typeNameFormat type:self->_type identifier:self->_identifier payload:self->_payload chunkSize:self->_chunkSize outError:&v32];
  if (v32)
  {
    v5 = 0;
  }

  else
  {
    v6 = objc_opt_new();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v28 objects:v41 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v29;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(v7);
          }

          asData = [*(*(&v28 + 1) + 8 * i) asData];
          if (!asData)
          {
            Logger = NFLogGetLogger();
            if (Logger)
            {
              v15 = Logger;
              Class = object_getClass(self);
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(self);
              Name = sel_getName(a2);
              v19 = 45;
              if (isMetaClass)
              {
                v19 = 43;
              }

              v15(3, "%c[%{public}s %{public}s]:%i Record serialization error", v19, ClassName, Name, 110, v28);
            }

            v20 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v21 = object_getClass(self);
              if (class_isMetaClass(v21))
              {
                v22 = 43;
              }

              else
              {
                v22 = 45;
              }

              v23 = object_getClassName(self);
              v24 = sel_getName(a2);
              *buf = 67109890;
              v34 = v22;
              v35 = 2082;
              v36 = v23;
              v37 = 2082;
              v38 = v24;
              v39 = 1024;
              v40 = 110;
              _os_log_impl(&dword_23728C000, v20, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Record serialization error", buf, 0x22u);
            }

            v5 = 0;
            goto LABEL_22;
          }

          v13 = asData;
          [v6 appendData:asData];
        }

        v9 = [v7 countByEnumeratingWithState:&v28 objects:v41 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v5 = v6;
LABEL_22:
  }

  v25 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (NFCNDEFPayload)wellKnownTypeURIPayloadWithString:(NSString *)uri
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = uri;
  v6 = 0;
  while (1)
  {
    v7 = [(NSString *)v5 length];
    v8 = off_278A2A188[v6];
    if (v7 >= [(__CFString *)v8 length]&& [(NSString *)v5 compare:v8 options:2 range:0, [(__CFString *)v8 length]]== NSOrderedSame)
    {
      break;
    }

    if (++v6 == 35)
    {
      v9 = 0;
      goto LABEL_7;
    }
  }

  v10 = [(NSString *)v5 substringFromIndex:[(__CFString *)v8 length]];

  v9 = v6 + 1;
  v5 = v10;
LABEL_7:
  v11 = objc_opt_new();
  v44 = v9;
  v12 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v44 length:1];
  [v11 appendData:v12];

  if (![(NSString *)v5 length])
  {
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v20 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v24 = 45;
      if (isMetaClass)
      {
        v24 = 43;
      }

      v20(3, "%c[%{public}s %{public}s]:%i Missing URI field", v24, ClassName, Name, 161);
    }

    v16 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    v25 = object_getClass(self);
    if (class_isMetaClass(v25))
    {
      v26 = 43;
    }

    else
    {
      v26 = 45;
    }

    v27 = object_getClassName(self);
    v28 = sel_getName(a2);
    *buf = 67109890;
    v46 = v26;
    v47 = 2082;
    v48 = v27;
    v49 = 2082;
    v50 = v28;
    v51 = 1024;
    v52 = 161;
    v29 = "%c[%{public}s %{public}s]:%i Missing URI field";
    goto LABEL_28;
  }

  v13 = [(NSString *)v5 dataUsingEncoding:4 allowLossyConversion:0];
  if (v13)
  {
    v14 = v13;
    [v11 appendData:v13];

    v15 = [NFCNDEFPayload alloc];
    v16 = [@"U" dataUsingEncoding:4];
    v17 = objc_opt_new();
    v18 = [(NFCNDEFPayload *)v15 initWithFormat:1 type:v16 identifier:v17 payload:v11];

    goto LABEL_30;
  }

  v30 = NFLogGetLogger();
  if (v30)
  {
    v31 = v30;
    v32 = object_getClass(self);
    v33 = class_isMetaClass(v32);
    v34 = object_getClassName(self);
    v43 = sel_getName(a2);
    v35 = 45;
    if (v33)
    {
      v35 = 43;
    }

    v31(3, "%c[%{public}s %{public}s]:%i Invalid UTF8 URI string", v35, v34, v43, 157);
  }

  v16 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v36 = object_getClass(self);
    if (class_isMetaClass(v36))
    {
      v37 = 43;
    }

    else
    {
      v37 = 45;
    }

    v38 = object_getClassName(self);
    v39 = sel_getName(a2);
    *buf = 67109890;
    v46 = v37;
    v47 = 2082;
    v48 = v38;
    v49 = 2082;
    v50 = v39;
    v51 = 1024;
    v52 = 157;
    v29 = "%c[%{public}s %{public}s]:%i Invalid UTF8 URI string";
LABEL_28:
    _os_log_impl(&dword_23728C000, v16, OS_LOG_TYPE_ERROR, v29, buf, 0x22u);
  }

LABEL_29:
  v18 = 0;
LABEL_30:

  v40 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (NFCNDEFPayload)wellKnownTypeURIPayloadWithURL:(NSURL *)url
{
  absoluteString = [(NSURL *)url absoluteString];
  v5 = [self wellKnownTypeURIPayloadWithString:absoluteString];

  return v5;
}

+ (NFCNDEFPayload)wellKnowTypeTextPayloadWithString:(NSString *)text locale:(NSLocale *)locale
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"NFCNDEFPayload.m" lineNumber:178 description:@"Please use -wellKnownTypeTextPayloadWithString:locale: replacement"];

  return 0;
}

+ (NFCNDEFPayload)wellKnownTypeTextPayloadWithString:(NSString *)text locale:(NSLocale *)locale
{
  v5 = text;
  languageCode = [(NSLocale *)locale languageCode];
  v15 = [languageCode length] & 0x3F | 0x80;
  v7 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytes:&v15 length:1];
  v8 = [languageCode dataUsingEncoding:1];
  [v7 appendData:v8];

  if ([(NSString *)v5 length])
  {
    v9 = [(NSString *)v5 dataUsingEncoding:10];
    [v7 appendData:v9];
  }

  v10 = [NFCNDEFPayload alloc];
  v11 = [@"T" dataUsingEncoding:4];
  v12 = objc_opt_new();
  v13 = [(NFCNDEFPayload *)v10 initWithFormat:1 type:v11 identifier:v12 payload:v7];

  return v13;
}

- (NSURL)wellKnownTypeURIPayload
{
  v3 = [@"U" dataUsingEncoding:4];
  if (self->_typeNameFormat == 1 && [(NSData *)self->_type isEqualToData:v3]&& (v14 = 0, [(NSData *)self->_payload length]))
  {
    [(NSData *)self->_payload getBytes:&v14 length:1];
    if (v14 >= 0x24u)
    {
      v14 = 0;
    }

    v4 = objc_opt_new();
    v5 = v4;
    if (v14 >= 1)
    {
      [v4 appendString:off_278A2A188[v14 - 1]];
    }

    v6 = [(NSData *)self->_payload length]- 1;
    if (v6 < 1)
    {
      v12 = 0;
    }

    else
    {
      v7 = objc_alloc(MEMORY[0x277CCACA8]);
      v8 = [(NSData *)self->_payload subdataWithRange:1, v6];
      v9 = [v7 initWithData:v8 encoding:4];

      [v5 appendString:v9];
      v10 = [MEMORY[0x277CCACE0] componentsWithString:v5];
      v11 = v10;
      if (!v10 || ([v10 URL], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v12 = [(NFCNDEFPayload *)self resolveURIString:v5];
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (NSString)wellKnownTypeTextPayloadWithLocale:(NSLocale *)locale
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = [@"T" dataUsingEncoding:4];
  if (self->_typeNameFormat != 1 || ![(NSData *)self->_type isEqualToData:v6])
  {
LABEL_17:
    v20 = 0;
    *locale = 0;
    goto LABEL_18;
  }

  v42 = 0;
  [(NSData *)self->_payload getBytes:&v42 length:1];
  v7 = v42 & 0x3F;
  if (v42 < 0)
  {
    v8 = 10;
  }

  else
  {
    v8 = 4;
  }

  if ([(NSData *)self->_payload length]< v7)
  {
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v10 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v14 = 45;
      if (isMetaClass)
      {
        v14 = 43;
      }

      v10(3, "%c[%{public}s %{public}s]:%i Invalid payload length", v14, ClassName, Name, 266);
    }

    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = object_getClass(self);
      if (class_isMetaClass(v16))
      {
        v17 = 43;
      }

      else
      {
        v17 = 45;
      }

      v18 = object_getClassName(self);
      v19 = sel_getName(a2);
      *buf = 67109890;
      v44 = v17;
      v45 = 2082;
      v46 = v18;
      v47 = 2082;
      v48 = v19;
      v49 = 1024;
      v50 = 266;
      _os_log_impl(&dword_23728C000, v15, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid payload length", buf, 0x22u);
    }

    goto LABEL_17;
  }

  v23 = objc_alloc(MEMORY[0x277CCACA8]);
  v24 = [(NSData *)self->_payload subdataWithRange:1, v7];
  v25 = [v23 initWithData:v24 encoding:1];

  if ([v25 length])
  {
    if (locale)
    {
      *locale = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v25];
    }

    v26 = [(NSData *)self->_payload length]+ ~v7;
    if (v26)
    {
      v27 = objc_alloc(MEMORY[0x277CCACA8]);
      v28 = [(NSData *)self->_payload subdataWithRange:v7 + 1, v26];
      v20 = [v27 initWithData:v28 encoding:v8];
    }

    else
    {
      v29 = NFLogGetLogger();
      if (v29)
      {
        v30 = v29;
        v31 = object_getClass(self);
        v32 = class_isMetaClass(v31);
        v33 = object_getClassName(self);
        v41 = sel_getName(a2);
        v34 = 45;
        if (v32)
        {
          v34 = 43;
        }

        v30(4, "%c[%{public}s %{public}s]:%i Empty string", v34, v33, v41, 284);
      }

      v35 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = object_getClass(self);
        if (class_isMetaClass(v36))
        {
          v37 = 43;
        }

        else
        {
          v37 = 45;
        }

        v38 = object_getClassName(self);
        v39 = sel_getName(a2);
        *buf = 67109890;
        v44 = v37;
        v45 = 2082;
        v46 = v38;
        v47 = 2082;
        v48 = v39;
        v49 = 1024;
        v50 = 284;
        _os_log_impl(&dword_23728C000, v35, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Empty string", buf, 0x22u);
      }

      v20 = objc_opt_new();
    }
  }

  else
  {
    v20 = 0;
  }

LABEL_18:
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)resolveURIString:(id)string
{
  v3 = MEMORY[0x277CBEBC0];
  stringCopy = string;
  v5 = [[v3 alloc] initWithString:stringCopy encodingInvalidCharacters:1];

  return v5;
}

@end