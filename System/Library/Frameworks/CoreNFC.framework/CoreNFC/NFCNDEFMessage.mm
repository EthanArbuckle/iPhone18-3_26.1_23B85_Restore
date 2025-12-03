@interface NFCNDEFMessage
+ (BOOL)_validateRecords:(id)records fromOriginal:(id)original;
+ (NFCNDEFMessage)ndefMessageWithData:(NSData *)data;
+ (id)_getPayloadsFromNDEFRecords:(id)records;
- (NFCNDEFMessage)initWithCoder:(id)coder;
- (NFCNDEFMessage)initWithEmptyNdefMessage;
- (NFCNDEFMessage)initWithNDEFRecords:(NSArray *)records;
- (NFCNDEFMessage)initWithNFNdefMessage:(id)message;
- (NSUInteger)length;
- (id)_getURLsFromNDEFMessage:(id)message;
- (id)_initWithRecords:(id)records;
- (id)asData;
@end

@implementation NFCNDEFMessage

- (NFCNDEFMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = NFCNDEFMessage;
  v5 = [(NFCNDEFMessage *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x277D82B58] coder:coderCopy decodeArrayOfClass:objc_opt_class() forKey:@"records"];
    records = v5->_records;
    v5->_records = v6;
  }

  return v5;
}

- (NFCNDEFMessage)initWithNDEFRecords:(NSArray *)records
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = records;
  if (![(NSArray *)v5 count])
  {
    initWithEmptyNdefMessage = [(NFCNDEFMessage *)self initWithEmptyNdefMessage];
LABEL_23:
    self = initWithEmptyNdefMessage;
    selfCopy = self;
    goto LABEL_24;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = v5;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (!v7)
  {

LABEL_22:
    initWithEmptyNdefMessage = [(NFCNDEFMessage *)self _initWithRecords:v6];
    goto LABEL_23;
  }

  v8 = v7;
  v34 = a2;
  selfCopy2 = self;
  v36 = v5;
  v9 = 0;
  v10 = *v38;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v38 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v37 + 1) + 8 * i);
      type = [v12 type];
      v14 = [type length];
      identifier = [v12 identifier];
      v16 = [identifier length];
      payload = [v12 payload];
      v9 += v14 + v16 + [payload length];
    }

    v8 = [(NSArray *)v6 countByEnumeratingWithState:&v37 objects:v49 count:16];
  }

  while (v8);

  self = selfCopy2;
  v5 = v36;
  if (v9 <= 0x20000)
  {
    goto LABEL_22;
  }

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v19 = Logger;
    Class = object_getClass(selfCopy2);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(selfCopy2);
    Name = sel_getName(v34);
    v23 = 45;
    if (isMetaClass)
    {
      v23 = 43;
    }

    v19(3, "%c[%{public}s %{public}s]:%i Total size of all NDEF records exceeds the size limit", v23, ClassName, Name, 62);
  }

  v24 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = object_getClass(selfCopy2);
    if (class_isMetaClass(v25))
    {
      v26 = 43;
    }

    else
    {
      v26 = 45;
    }

    v27 = object_getClassName(selfCopy2);
    v28 = sel_getName(v34);
    *buf = 67109890;
    v42 = v26;
    v43 = 2082;
    v44 = v27;
    v45 = 2082;
    v46 = v28;
    v47 = 1024;
    v48 = 62;
    _os_log_impl(&dword_23728C000, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Total size of all NDEF records exceeds the size limit", buf, 0x22u);
  }

  selfCopy = 0;
LABEL_24:

  v31 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (id)_initWithRecords:(id)records
{
  recordsCopy = records;
  v9.receiver = self;
  v9.super_class = NFCNDEFMessage;
  v5 = [(NFCNDEFMessage *)&v9 init];
  if (v5)
  {
    v6 = [recordsCopy copy];
    records = v5->_records;
    v5->_records = v6;
  }

  return v5;
}

- (NFCNDEFMessage)initWithNFNdefMessage:(id)message
{
  v28 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v22 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v19 = messageCopy;
  obj = [messageCopy records];
  v4 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [NFCNDEFPayload alloc];
        typeNameFormat = [v8 typeNameFormat];
        type = [v8 type];
        identifier = [v8 identifier];
        payload = [v8 payload];
        v14 = [(NFCNDEFPayload *)v9 initWithFormatType:typeNameFormat type:type identifier:identifier payload:payload chunkSize:0];

        if (v14)
        {
          [v22 addObject:v14];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }

  if ([v22 count])
  {
    selfCopy = [(NFCNDEFMessage *)self _initWithRecords:v22];
    v16 = selfCopy;
  }

  else
  {
    v16 = 0;
    selfCopy = self;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (NFCNDEFMessage)initWithEmptyNdefMessage
{
  v3 = [NFCNDEFPayload alloc];
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = [(NFCNDEFPayload *)v3 initWithFormatType:0 type:v4 identifier:v5 payload:v6 chunkSize:0];

  v8 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v7, 0}];
  v9 = [(NFCNDEFMessage *)self initWithNDEFRecords:v8];

  return v9;
}

+ (NFCNDEFMessage)ndefMessageWithData:(NSData *)data
{
  v5 = MEMORY[0x277D82B68];
  v6 = data;
  v7 = data;
  v8 = [v5 recordsFromBytes:-[NSData bytes](v7 length:{"bytes"), -[NSData length](v7, "length")}];
  LOBYTE(v5) = [self _validateRecords:v8 fromOriginal:v7];

  if (v5)
  {
    v9 = [self _getPayloadsFromNDEFRecords:v8];
    v10 = [NFCNDEFMessage alloc];
  }

  else
  {
    v11 = [NFCNDEFMessage alloc];
    v9 = objc_opt_new();
    v10 = v11;
  }

  v12 = [(NFCNDEFMessage *)v10 initWithNDEFRecords:v9];

  return v12;
}

- (id)asData
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D82B60]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->_records;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v19 = 0;
        v9 = MEMORY[0x277D82B68];
        typeNameFormat = [v8 typeNameFormat];
        type = [v8 type];
        identifier = [v8 identifier];
        payload = [v8 payload];
        v14 = [v9 recordsWithTNF:typeNameFormat type:type identifier:identifier payload:payload chunkSize:objc_msgSend(v8 outError:{"chunkSize"), &v19}];

        if (v19)
        {

          asData = 0;
          goto LABEL_11;
        }

        [v3 addRecordArray:v14];
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  asData = [v3 asData];
LABEL_11:

  v16 = *MEMORY[0x277D85DE8];

  return asData;
}

- (NSUInteger)length
{
  asData = [(NFCNDEFMessage *)self asData];
  v3 = [asData length];

  return v3;
}

+ (BOOL)_validateRecords:(id)records fromOriginal:(id)original
{
  v41 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  originalCopy = original;
  v7 = [originalCopy length];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = recordsCopy;
  v33 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v33)
  {
    v8 = 0;
    v34 = v7 - 2;
    v35 = *v37;
    v31 = originalCopy;
    v32 = v7 - 1;
    v29 = v7 - 4;
    while (2)
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v37 != v35)
        {
          objc_enumerationMutation(obj);
        }

        if (v34 < v8)
        {
          goto LABEL_28;
        }

        v10 = *(*(&v36 + 1) + 8 * i);
        v11 = [originalCopy subdataWithRange:{v8, 2}];
        bytes = [v11 bytes];
        v13 = *bytes;
        v14 = bytes[1];
        v15 = v8 + 2;
        if ((*bytes & 0x10) != 0)
        {
          if (v32 < v15)
          {
LABEL_23:
            v16 = v11;
LABEL_27:

LABEL_28:
            v26 = 0;
            goto LABEL_29;
          }

          v16 = [originalCopy subdataWithRange:?];

          v17 = *[v16 bytes];
          v18 = 3;
        }

        else
        {
          if (v29 < v15)
          {
            goto LABEL_23;
          }

          v16 = [originalCopy subdataWithRange:?];

          v17 = bswap32(*[v16 bytes]);
          v18 = 6;
        }

        v19 = v18 + v8;
        if ((v13 & 8) != 0)
        {
          if (v32 < v19)
          {
            goto LABEL_27;
          }

          v21 = [originalCopy subdataWithRange:{v19, 1}];

          v20 = *[v21 bytes];
          ++v19;
          v16 = v21;
        }

        else
        {
          v20 = 0;
        }

        type = [v10 type];
        if ([type length] != v14)
        {
          goto LABEL_25;
        }

        payload = [v10 payload];
        if ([payload length] != v17)
        {

LABEL_25:
LABEL_26:
          originalCopy = v31;
          goto LABEL_27;
        }

        identifier = [v10 identifier];
        v25 = [identifier length];

        if (v25 != v20)
        {
          goto LABEL_26;
        }

        v8 = v17 + v14 + v20 + v19;

        originalCopy = v31;
      }

      v26 = 1;
      v33 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v33)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v26 = 1;
  }

LABEL_29:

  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

+ (id)_getPayloadsFromNDEFRecords:(id)records
{
  v48 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  v38 = objc_opt_new();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = recordsCopy;
  v41 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  v4 = 0;
  if (!v41)
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_36;
  }

  v37 = 0;
  LOBYTE(v5) = 0;
  messageEnd = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v40 = *v44;
  do
  {
    v10 = 0;
    do
    {
      if (*v44 != v40)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v43 + 1) + 8 * v10);
      if (v5)
      {
        LODWORD(v5) = 1;
        if (messageEnd)
        {
          goto LABEL_8;
        }
      }

      else
      {
        LODWORD(v5) = [*(*(&v43 + 1) + 8 * v10) messageBegin];
        if (messageEnd)
        {
LABEL_8:
          messageEnd = 1;
          goto LABEL_11;
        }
      }

      messageEnd = [v11 messageEnd];
LABEL_11:
      chunked = [v11 chunked];
      if (chunked)
      {
        v42 = v5;
        v5 = v7;
        typeNameFormat = [v11 typeNameFormat];
        v14 = typeNameFormat;
        if (v9)
        {
          if (typeNameFormat != 6)
          {
            goto LABEL_21;
          }

          identifier = [v11 identifier];
          if ([identifier length])
          {
            goto LABEL_20;
          }

          type = [v11 type];
          v17 = [type length];

          if (v17)
          {
            goto LABEL_21;
          }

          payload = [v11 payload];
          v7 = v5;
          [(NFCNDEFPayload *)v5 appendData:payload];
        }

        else
        {
          type2 = [v11 type];

          identifier2 = [v11 identifier];

          v21 = objc_alloc(MEMORY[0x277CBEB28]);
          payload = [v11 payload];
          v22 = [v21 initWithData:payload];

          v4 = type2;
          v37 = v14;
          v23 = v22;
          v8 = identifier2;
          v7 = v23;
        }
      }

      else
      {
        if ((v9 & 1) == 0)
        {

          v24 = [NFCNDEFPayload alloc];
          typeNameFormat2 = [v11 typeNameFormat];
          type3 = [v11 type];
          identifier3 = [v11 identifier];
          payload2 = [v11 payload];
          payload = [(NFCNDEFPayload *)v24 initWithFormatType:typeNameFormat2 type:type3 identifier:identifier3 payload:payload2 chunkSize:0];

          [v38 addObject:payload];
          v4 = 0;
          v7 = 0;
          v8 = 0;
          goto LABEL_25;
        }

        v42 = v5;
        v5 = v7;
        if ([v11 typeNameFormat] != 6)
        {
          goto LABEL_21;
        }

        identifier = [v11 identifier];
        if ([identifier length])
        {
LABEL_20:

LABEL_21:
          v4 = 0;
          v7 = 0;
          v8 = 0;
          v9 = 0;
          LOBYTE(v5) = v42;
          goto LABEL_27;
        }

        type4 = [v11 type];
        v30 = [type4 length];

        if (v30)
        {
          goto LABEL_21;
        }

        payload3 = [v11 payload];
        [(NFCNDEFPayload *)v5 appendData:payload3];

        if ([(NFCNDEFPayload *)v5 length])
        {
          v32 = [[NFCNDEFPayload alloc] initWithFormatType:v37 type:v4 identifier:v8 payload:v5 chunkSize:0];
          [v38 addObject:v32];
        }

        v4 = 0;
        v8 = 0;
        payload = v5;
        v7 = 0;
      }

      LODWORD(v5) = v42;
LABEL_25:

      v9 = chunked;
      if (v5 && (messageEnd & 1) != 0)
      {
        goto LABEL_36;
      }

LABEL_27:
      ++v10;
    }

    while (v41 != v10);
    v33 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    v41 = v33;
  }

  while (v33);
LABEL_36:

  v34 = v38;
  v35 = *MEMORY[0x277D85DE8];
  return v38;
}

- (id)_getURLsFromNDEFMessage:(id)message
{
  v18 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  records = [messageCopy records];
  v6 = [records countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(records);
        }

        wellKnownTypeURIPayload = [*(*(&v13 + 1) + 8 * i) wellKnownTypeURIPayload];
        if (wellKnownTypeURIPayload)
        {
          [v4 addObject:wellKnownTypeURIPayload];
        }
      }

      v7 = [records countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

@end