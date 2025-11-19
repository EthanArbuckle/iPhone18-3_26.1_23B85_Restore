@interface NFCNDEFMessage
+ (BOOL)_validateRecords:(id)a3 fromOriginal:(id)a4;
+ (NFCNDEFMessage)ndefMessageWithData:(NSData *)data;
+ (id)_getPayloadsFromNDEFRecords:(id)a3;
- (NFCNDEFMessage)initWithCoder:(id)a3;
- (NFCNDEFMessage)initWithEmptyNdefMessage;
- (NFCNDEFMessage)initWithNDEFRecords:(NSArray *)records;
- (NFCNDEFMessage)initWithNFNdefMessage:(id)a3;
- (NSUInteger)length;
- (id)_getURLsFromNDEFMessage:(id)a3;
- (id)_initWithRecords:(id)a3;
- (id)asData;
@end

@implementation NFCNDEFMessage

- (NFCNDEFMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NFCNDEFMessage;
  v5 = [(NFCNDEFMessage *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x277D82B58] coder:v4 decodeArrayOfClass:objc_opt_class() forKey:@"records"];
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
    v30 = [(NFCNDEFMessage *)self initWithEmptyNdefMessage];
LABEL_23:
    self = v30;
    v29 = self;
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
    v30 = [(NFCNDEFMessage *)self _initWithRecords:v6];
    goto LABEL_23;
  }

  v8 = v7;
  v34 = a2;
  v35 = self;
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
      v13 = [v12 type];
      v14 = [v13 length];
      v15 = [v12 identifier];
      v16 = [v15 length];
      v17 = [v12 payload];
      v9 += v14 + v16 + [v17 length];
    }

    v8 = [(NSArray *)v6 countByEnumeratingWithState:&v37 objects:v49 count:16];
  }

  while (v8);

  self = v35;
  v5 = v36;
  if (v9 <= 0x20000)
  {
    goto LABEL_22;
  }

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v19 = Logger;
    Class = object_getClass(v35);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(v35);
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
    v25 = object_getClass(v35);
    if (class_isMetaClass(v25))
    {
      v26 = 43;
    }

    else
    {
      v26 = 45;
    }

    v27 = object_getClassName(v35);
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

  v29 = 0;
LABEL_24:

  v31 = *MEMORY[0x277D85DE8];
  return v29;
}

- (id)_initWithRecords:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NFCNDEFMessage;
  v5 = [(NFCNDEFMessage *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    records = v5->_records;
    v5->_records = v6;
  }

  return v5;
}

- (NFCNDEFMessage)initWithNFNdefMessage:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v22 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v19 = v3;
  obj = [v3 records];
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
        v10 = [v8 typeNameFormat];
        v11 = [v8 type];
        v12 = [v8 identifier];
        v13 = [v8 payload];
        v14 = [(NFCNDEFPayload *)v9 initWithFormatType:v10 type:v11 identifier:v12 payload:v13 chunkSize:0];

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
    v15 = [(NFCNDEFMessage *)self _initWithRecords:v22];
    v16 = v15;
  }

  else
  {
    v16 = 0;
    v15 = self;
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
  LOBYTE(v5) = [a1 _validateRecords:v8 fromOriginal:v7];

  if (v5)
  {
    v9 = [a1 _getPayloadsFromNDEFRecords:v8];
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
        v10 = [v8 typeNameFormat];
        v11 = [v8 type];
        v12 = [v8 identifier];
        v13 = [v8 payload];
        v14 = [v9 recordsWithTNF:v10 type:v11 identifier:v12 payload:v13 chunkSize:objc_msgSend(v8 outError:{"chunkSize"), &v19}];

        if (v19)
        {

          v15 = 0;
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

  v15 = [v3 asData];
LABEL_11:

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (NSUInteger)length
{
  v2 = [(NFCNDEFMessage *)self asData];
  v3 = [v2 length];

  return v3;
}

+ (BOOL)_validateRecords:(id)a3 fromOriginal:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v6 length];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v5;
  v33 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v33)
  {
    v8 = 0;
    v34 = v7 - 2;
    v35 = *v37;
    v31 = v6;
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
        v11 = [v6 subdataWithRange:{v8, 2}];
        v12 = [v11 bytes];
        v13 = *v12;
        v14 = v12[1];
        v15 = v8 + 2;
        if ((*v12 & 0x10) != 0)
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

          v16 = [v6 subdataWithRange:?];

          v17 = *[v16 bytes];
          v18 = 3;
        }

        else
        {
          if (v29 < v15)
          {
            goto LABEL_23;
          }

          v16 = [v6 subdataWithRange:?];

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

          v21 = [v6 subdataWithRange:{v19, 1}];

          v20 = *[v21 bytes];
          ++v19;
          v16 = v21;
        }

        else
        {
          v20 = 0;
        }

        v22 = [v10 type];
        if ([v22 length] != v14)
        {
          goto LABEL_25;
        }

        v23 = [v10 payload];
        if ([v23 length] != v17)
        {

LABEL_25:
LABEL_26:
          v6 = v31;
          goto LABEL_27;
        }

        v24 = [v10 identifier];
        v25 = [v24 length];

        if (v25 != v20)
        {
          goto LABEL_26;
        }

        v8 = v17 + v14 + v20 + v19;

        v6 = v31;
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

+ (id)_getPayloadsFromNDEFRecords:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v38 = objc_opt_new();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v3;
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
  v6 = 0;
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
        if (v6)
        {
          goto LABEL_8;
        }
      }

      else
      {
        LODWORD(v5) = [*(*(&v43 + 1) + 8 * v10) messageBegin];
        if (v6)
        {
LABEL_8:
          v6 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v11 messageEnd];
LABEL_11:
      v12 = [v11 chunked];
      if (v12)
      {
        v42 = v5;
        v5 = v7;
        v13 = [v11 typeNameFormat];
        v14 = v13;
        if (v9)
        {
          if (v13 != 6)
          {
            goto LABEL_21;
          }

          v15 = [v11 identifier];
          if ([v15 length])
          {
            goto LABEL_20;
          }

          v16 = [v11 type];
          v17 = [v16 length];

          if (v17)
          {
            goto LABEL_21;
          }

          v18 = [v11 payload];
          v7 = v5;
          [(NFCNDEFPayload *)v5 appendData:v18];
        }

        else
        {
          v19 = [v11 type];

          v20 = [v11 identifier];

          v21 = objc_alloc(MEMORY[0x277CBEB28]);
          v18 = [v11 payload];
          v22 = [v21 initWithData:v18];

          v4 = v19;
          v37 = v14;
          v23 = v22;
          v8 = v20;
          v7 = v23;
        }
      }

      else
      {
        if ((v9 & 1) == 0)
        {

          v24 = [NFCNDEFPayload alloc];
          v25 = [v11 typeNameFormat];
          v26 = [v11 type];
          v27 = [v11 identifier];
          v28 = [v11 payload];
          v18 = [(NFCNDEFPayload *)v24 initWithFormatType:v25 type:v26 identifier:v27 payload:v28 chunkSize:0];

          [v38 addObject:v18];
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

        v15 = [v11 identifier];
        if ([v15 length])
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

        v29 = [v11 type];
        v30 = [v29 length];

        if (v30)
        {
          goto LABEL_21;
        }

        v31 = [v11 payload];
        [(NFCNDEFPayload *)v5 appendData:v31];

        if ([(NFCNDEFPayload *)v5 length])
        {
          v32 = [[NFCNDEFPayload alloc] initWithFormatType:v37 type:v4 identifier:v8 payload:v5 chunkSize:0];
          [v38 addObject:v32];
        }

        v4 = 0;
        v8 = 0;
        v18 = v5;
        v7 = 0;
      }

      LODWORD(v5) = v42;
LABEL_25:

      v9 = v12;
      if (v5 && (v6 & 1) != 0)
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

- (id)_getURLsFromNDEFMessage:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v3 records];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) wellKnownTypeURIPayload];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

@end