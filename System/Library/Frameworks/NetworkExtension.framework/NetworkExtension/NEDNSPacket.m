@interface NEDNSPacket
+ (id)createDataWithQuery:(id)a3;
- (NSString)responseCodeString;
- (id)createResponse;
- (id)initFromData:(id)a3;
@end

@implementation NEDNSPacket

- (id)createResponse
{
  v71 = *MEMORY[0x1E69E9840];
  if (self->_messageType == 1)
  {
    v3 = self->_data;
    goto LABEL_55;
  }

  v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v44 = self;
  v4 = self->_queries;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v51 objects:v63 count:16];
  if (!v5)
  {
    goto LABEL_43;
  }

  v6 = v5;
  v7 = *v52;
  v46 = v4;
  do
  {
    v8 = 0;
    do
    {
      if (*v52 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v51 + 1) + 8 * v8);
      v10 = [v9 answerData];

      if (v10)
      {
        if (v9)
        {
          v11 = *(v9 + 40);
          if (!v11 || [v11 length] >= 0x10000)
          {
            v12 = ne_log_obj();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              v13 = *(v9 + 16);
              v14 = [*(v9 + 40) length];
              *buf = 138412546;
              v66 = v13;
              v67 = 2048;
              v68 = v14;
              v15 = v12;
              v16 = "Failed to create an answer for %@, invalid answer data length (%lu)";
              v17 = 22;
              goto LABEL_33;
            }

            goto LABEL_34;
          }

          v18 = *(v9 + 24);
          v19 = v18 == 28 || v18 == 1;
          if (v19 && *(v9 + 32) == 1)
          {
            v20 = objc_alloc_init(MEMORY[0x1E695DF88]);
            v21 = [*(v9 + 16) componentsSeparatedByString:@"."];
            v58 = 0u;
            v59 = 0u;
            v60 = 0u;
            v61 = 0u;
            v22 = v21;
            v23 = [v22 countByEnumeratingWithState:&v58 objects:v64 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v59;
              while (2)
              {
                for (i = 0; i != v24; ++i)
                {
                  if (*v59 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v27 = *(*(&v58 + 1) + 8 * i);
                  if ([v27 length] > 0x3F)
                  {

                    v29 = 0;
                    goto LABEL_40;
                  }

                  buf[0] = [v27 length];
                  [v20 appendBytes:buf length:1];
                  if (buf[0])
                  {
                    v28 = [v27 UTF8String];
                    [v20 appendBytes:v28 length:strlen(v28)];
                  }
                }

                v24 = [v22 countByEnumeratingWithState:&v58 objects:v64 count:16];
                if (v24)
                {
                  continue;
                }

                break;
              }
            }

            v57 = bswap32(*(v9 + 24)) >> 16;
            [v20 appendBytes:&v57 length:2];
            v56 = bswap32(*(v9 + 32)) >> 16;
            [v20 appendBytes:&v56 length:2];
            *buf = bswap32(*(v9 + 8));
            [v20 appendBytes:buf length:4];
            v55 = bswap32([*(v9 + 40) length]) >> 16;
            [v20 appendBytes:&v55 length:2];
            [v20 appendData:*(v9 + 40)];
            v29 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithData:v20];
LABEL_40:

            v4 = v46;
            if (v29)
            {
              [v45 addObject:v29];
            }

            goto LABEL_36;
          }

          v12 = ne_log_obj();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v30 = *(v9 + 16);
            v31 = *(v9 + 24);
            v32 = *(v9 + 32);
            *buf = 138412802;
            v66 = v30;
            v67 = 2048;
            v68 = v31;
            v69 = 2048;
            v70 = v32;
            v15 = v12;
            v16 = "Failed to create an answer for %@, unsupported record type (%ld) and/or record class (%ld)";
            v17 = 32;
LABEL_33:
            _os_log_error_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_ERROR, v16, buf, v17);
          }

LABEL_34:
        }

        v29 = 0;
LABEL_36:
      }

      ++v8;
    }

    while (v8 != v6);
    v33 = [(NSArray *)v4 countByEnumeratingWithState:&v51 objects:v63 count:16];
    v6 = v33;
  }

  while (v33);
LABEL_43:

  v34 = [objc_alloc(MEMORY[0x1E695DF88]) initWithBytes:-[NSData bytes](v44->_data length:{"bytes"), 6}];
  v44->_flags = v44->_flags & 0x7BF0 | 0x8400;
  v35 = [v45 count];
  flags = v44->_flags;
  if (!v35)
  {
    flags |= 3u;
    v44->_flags = flags;
  }

  LOWORD(v58) = __rev16(flags);
  [v34 replaceBytesInRange:2 withBytes:2 length:{&v58, 2}];
  *buf = bswap32([v45 count]) >> 16;
  [v34 appendBytes:buf length:2];
  v64[0] = 0;
  [v34 appendBytes:v64 length:4];
  if (v44->_endOfQueriesOffset >= 0xD)
  {
    [v34 appendBytes:-[NSData bytes](v44->_data length:{"bytes") + 12, v44->_endOfQueriesOffset - 12}];
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v37 = v45;
  v38 = [v37 countByEnumeratingWithState:&v47 objects:v62 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v48;
    do
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v48 != v40)
        {
          objc_enumerationMutation(v37);
        }

        [v34 appendData:*(*(&v47 + 1) + 8 * j)];
      }

      v39 = [v37 countByEnumeratingWithState:&v47 objects:v62 count:16];
    }

    while (v39);
  }

  v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithData:v34];
LABEL_55:
  v42 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSString)responseCodeString
{
  v2 = [(NEDNSPacket *)self responseCode];
  if (v2 > 6)
  {
    return @"unknown";
  }

  else
  {
    return &off_1E7F073C8[v2]->isa;
  }
}

- (id)initFromData:(id)a3
{
  v68 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v65 = 1;
  v64.receiver = self;
  v64.super_class = NEDNSPacket;
  v6 = [(NEDNSPacket *)&v64 init];
  if (!v6)
  {
    v19 = 0;
    v29 = 0;
    v33 = 0;
    v37 = 0;
    v38 = 0;
    v65 = 0;
    goto LABEL_51;
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF00]);
  timestamp = v6->_timestamp;
  v6->_timestamp = v7;

  objc_storeStrong(&v6->_data, a3);
  v9 = [[NEByteParser alloc] initWithData:v5];
  v6->_identifier = [(NEByteParser *)v9 parse16Bits:?];
  if ((v65 & 1) == 0)
  {
    v39 = ne_log_obj();
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    *buf = 0;
    v40 = "Failed to parse DNS packet identifier";
LABEL_45:
    _os_log_error_impl(&dword_1BA83C000, v39, OS_LOG_TYPE_ERROR, v40, buf, 2u);
    goto LABEL_46;
  }

  v10 = [(NEByteParser *)v9 parse16Bits:?];
  v6->_flags = v10;
  if ((v65 & 1) == 0)
  {
    v39 = ne_log_obj();
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    *buf = 0;
    v40 = "Failed to parse DNS packet flags";
    goto LABEL_45;
  }

  v6->_messageType = v10 >> 15;
  v6->_opCode = (v10 >> 11) & 0xF;
  v6->_isAuthoritativeAnswer = (v10 & 0x400) != 0;
  v6->_isTruncated = (v10 & 0x200) != 0;
  v6->_isRecursionDesired = BYTE1(v10) & 1;
  v6->_isRecursionAvailable = (v10 & 0x80) != 0;
  v6->_responseCode = v10 & 0xF;
  v11 = [(NEByteParser *)v9 parse16Bits:?];
  if ((v65 & 1) == 0)
  {
    v39 = ne_log_obj();
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    *buf = 0;
    v40 = "Failed to parse DNS packet query count";
    goto LABEL_45;
  }

  v12 = v11;
  v13 = [(NEByteParser *)v9 parse16Bits:?];
  if ((v65 & 1) == 0)
  {
    v39 = ne_log_obj();
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    *buf = 0;
    v40 = "Failed to parse DNS packet answer count";
    goto LABEL_45;
  }

  v14 = v13;
  v15 = [(NEByteParser *)v9 parse16Bits:?];
  if ((v65 & 1) == 0)
  {
    v39 = ne_log_obj();
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    *buf = 0;
    v40 = "Failed to parse DNS packet authority count";
    goto LABEL_45;
  }

  v16 = v15;
  v17 = [(NEByteParser *)v9 parse16Bits:?];
  if (v65 != 1)
  {
    v39 = ne_log_obj();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v40 = "Failed to parse DNS packet additional record count";
      goto LABEL_45;
    }

LABEL_46:

    v19 = 0;
    goto LABEL_47;
  }

  v62 = v17;
  v63 = v16;
  v19 = 0;
  if (v12)
  {
    v20 = 0;
    v61 = v12;
    while (1)
    {
      v21 = [(NEByteParser *)v9 parseDomainName];
      if (!v21)
      {
        v44 = ne_log_obj();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v67 = v20;
          _os_log_error_impl(&dword_1BA83C000, v44, OS_LOG_TYPE_ERROR, "Failed to parse DNS packet query %u name", buf, 8u);
        }

        v22 = 0;
        goto LABEL_73;
      }

      v22 = v21;
      v23 = [(NEByteParser *)v9 parse16Bits:?];
      if ((v65 & 1) == 0)
      {
        break;
      }

      v24 = v23;
      v25 = [(NEByteParser *)v9 parse16Bits:?];
      if ((v65 & 1) == 0)
      {
        v45 = ne_log_obj();
        if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_69;
        }

        *buf = 67109120;
        v67 = v20;
        v46 = "Failed to parse DNS packet query %u class";
        goto LABEL_85;
      }

      v26 = [[NEDNSQuery alloc] initWithName:v22 recordType:v24 recordClass:v25];
      if (!v26)
      {
        v50 = ne_log_obj();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v67 = v20;
          _os_log_error_impl(&dword_1BA83C000, v50, OS_LOG_TYPE_ERROR, "Failed to allocate a query object for query %u", buf, 8u);
        }

LABEL_73:
        v65 = 0;
LABEL_74:

LABEL_47:
        v29 = 0;
LABEL_48:
        v33 = 0;
LABEL_49:
        v37 = 0;
        goto LABEL_50;
      }

      v27 = v26;
      if (!v19)
      {
        v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v61];
      }

      [v19 addObject:{v27, v61}];

      if (++v20 >= v12)
      {
        goto LABEL_17;
      }
    }

    v45 = ne_log_obj();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
LABEL_69:

      goto LABEL_74;
    }

    *buf = 67109120;
    v67 = v20;
    v46 = "Failed to parse DNS packet query %u type";
LABEL_85:
    _os_log_error_impl(&dword_1BA83C000, v45, OS_LOG_TYPE_ERROR, v46, buf, 8u);
    goto LABEL_69;
  }

LABEL_17:
  if (v9)
  {
    v28 = v9[1];
  }

  else
  {
    v28 = 0;
  }

  v6->_endOfQueriesOffset = v28;
  v29 = 0;
  if (v14)
  {
    v30 = 0;
    while (1)
    {
      v31 = [[NEDNSResourceRecord alloc] initFromByteParser:v9];
      if (!v31)
      {
        break;
      }

      v32 = v31;
      if (!v29)
      {
        v29 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v14];
      }

      [v29 addObject:v32];

      if (++v30 >= v14)
      {
        goto LABEL_25;
      }
    }

    v43 = ne_log_obj();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v67 = v30;
      _os_log_error_impl(&dword_1BA83C000, v43, OS_LOG_TYPE_ERROR, "Failed to parse answer %u", buf, 8u);
    }

    v65 = 0;
    goto LABEL_48;
  }

LABEL_25:
  if (v63)
  {
    v33 = 0;
    v34 = 0;
    while (1)
    {
      v35 = [[NEDNSResourceRecord alloc] initFromByteParser:v9];
      if (!v35)
      {
        break;
      }

      v36 = v35;
      if (!v33)
      {
        v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v63];
      }

      [v33 addObject:v36];

      if (++v34 >= v63)
      {
        goto LABEL_61;
      }
    }

    v51 = ne_log_obj();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v67 = v34;
      _os_log_error_impl(&dword_1BA83C000, v51, OS_LOG_TYPE_ERROR, "Failed to parse authority %u", buf, 8u);
    }

    v65 = 0;
    goto LABEL_49;
  }

  v33 = 0;
LABEL_61:
  if (v62)
  {
    v37 = 0;
    v47 = 0;
    while (1)
    {
      v48 = [[NEDNSResourceRecord alloc] initFromByteParser:v9];
      if (!v48)
      {
        break;
      }

      v49 = v48;
      if (!v37)
      {
        v37 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v62];
      }

      [v37 addObject:v49];

      if (++v47 >= v62)
      {
        goto LABEL_79;
      }
    }

    v60 = ne_log_obj();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v67 = v47;
      _os_log_error_impl(&dword_1BA83C000, v60, OS_LOG_TYPE_ERROR, "Failed to parse additional record %u", buf, 8u);
    }

    v65 = 0;
    goto LABEL_50;
  }

  v37 = 0;
LABEL_79:
  v52 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v19];
  queries = v6->_queries;
  v6->_queries = v52;

  v54 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v29];
  answers = v6->_answers;
  v6->_answers = v54;

  v56 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v33];
  authorities = v6->_authorities;
  v6->_authorities = v56;

  v58 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v37];
  additionalRecords = v6->_additionalRecords;
  v6->_additionalRecords = v58;

  if (v65)
  {
    v38 = v6;
  }

  else
  {
LABEL_50:
    v38 = 0;
  }

LABEL_51:

  v41 = *MEMORY[0x1E69E9840];
  return v38;
}

+ (id)createDataWithQuery:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v28 = 2560;
  [v4 appendBytes:&v28 length:2];
  v27 = 1;
  [v4 appendBytes:&v27 length:2];
  v26 = 256;
  [v4 appendBytes:&v26 length:2];
  v25 = 0;
  [v4 appendBytes:&v25 length:2];
  v24 = 0;
  [v4 appendBytes:&v24 length:2];
  v23 = 0;
  [v4 appendBytes:&v23 length:2];
  v5 = [v3 name];
  v6 = [v5 componentsSeparatedByString:@"."];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if ([v12 length] > 0x3F)
        {

          v14 = 0;
          goto LABEL_13;
        }

        LOBYTE(v18) = [v12 length];
        [v4 appendBytes:&v18 length:1];
        if (v18)
        {
          v13 = [v12 UTF8String];
          [v4 appendBytes:v13 length:strlen(v13)];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v29 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v18 = bswap32([v3 recordType]) >> 16;
  [v4 appendBytes:&v18 length:2];
  v17 = bswap32([v3 recordClass]) >> 16;
  [v4 appendBytes:&v17 length:2];
  v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithData:v4];
LABEL_13:

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

@end