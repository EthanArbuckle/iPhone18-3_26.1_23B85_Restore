@interface TKBERTLVRecord
+ (NSData)dataForTag:(TKTLVTag)tag;
+ (id)parseFromDataSource:(id)source;
+ (id)zuluDateFormatter;
+ (unint64_t)encodeNumber:(unint64_t)number into:(char *)into;
- (TKBERTLVRecord)initWithPropertyList:(id)list;
- (TKBERTLVRecord)initWithTag:(TKTLVTag)tag records:(NSArray *)records;
- (TKBERTLVRecord)initWithTag:(TKTLVTag)tag value:(NSData *)value;
- (id)propertyList;
@end

@implementation TKBERTLVRecord

- (id)propertyList
{
  v60 = *MEMORY[0x1E69E9840];
  v3 = [(TKTLVRecord *)self tag];
  propertyList3 = 0;
  if (v3 > 11)
  {
    if (v3 > 47)
    {
      if (v3 != 48)
      {
        if (v3 != 49)
        {
          goto LABEL_53;
        }

        array = [MEMORY[0x1E695DF70] array];
        array2 = [MEMORY[0x1E695DF70] array];
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        value = [(TKTLVRecord *)self value];
        v16 = [(TKTLVRecord *)TKBERTLVRecord sequenceOfRecordsFromData:value];

        v17 = [v16 countByEnumeratingWithState:&v50 objects:v58 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v51;
          while (2)
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v51 != v19)
              {
                objc_enumerationMutation(v16);
              }

              value2 = [*(*(&v50 + 1) + 8 * i) value];
              v22 = [(TKTLVRecord *)TKBERTLVRecord sequenceOfRecordsFromData:value2];

              v23 = [v22 objectAtIndexedSubscript:0];
              propertyList = [v23 propertyList];

              v25 = [v22 objectAtIndexedSubscript:1];
              propertyList2 = [v25 propertyList];

              if (propertyList)
              {
                v27 = propertyList2 == 0;
              }

              else
              {
                v27 = 1;
              }

              if (v27)
              {

                propertyList3 = 0;
                goto LABEL_45;
              }

              [array addObject:propertyList];
              [array2 addObject:propertyList2];
            }

            v18 = [v16 countByEnumeratingWithState:&v50 objects:v58 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        propertyList3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:array2 forKeys:array];
LABEL_45:

        goto LABEL_52;
      }

      array = [MEMORY[0x1E695DF70] array];
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      value3 = [(TKTLVRecord *)self value];
      zuluDateFormatter = [(TKTLVRecord *)TKBERTLVRecord sequenceOfRecordsFromData:value3];

      v36 = [zuluDateFormatter countByEnumeratingWithState:&v54 objects:v59 count:16];
      if (!v36)
      {
LABEL_43:

        propertyList3 = [MEMORY[0x1E695DEC8] arrayWithArray:array];
        goto LABEL_52;
      }

      v37 = v36;
      v38 = *v55;
LABEL_37:
      v39 = 0;
      while (1)
      {
        if (*v55 != v38)
        {
          objc_enumerationMutation(zuluDateFormatter);
        }

        propertyList3 = [*(*(&v54 + 1) + 8 * v39) propertyList];
        if (!propertyList3)
        {
          break;
        }

        [array addObject:propertyList3];

        if (v37 == ++v39)
        {
          v37 = [zuluDateFormatter countByEnumeratingWithState:&v54 objects:v59 count:16];
          if (v37)
          {
            goto LABEL_37;
          }

          goto LABEL_43;
        }
      }
    }

    else
    {
      if (v3 == 12)
      {
        v31 = objc_alloc(MEMORY[0x1E696AEC0]);
        value4 = [(TKTLVRecord *)self value];
        bytes = [value4 bytes];
        value5 = [(TKTLVRecord *)self value];
        propertyList3 = [v31 initWithBytes:bytes length:objc_msgSend(value5 encoding:{"length"), 4}];

        goto LABEL_53;
      }

      if (v3 != 24)
      {
        goto LABEL_53;
      }

      v7 = objc_alloc(MEMORY[0x1E696AEC0]);
      value6 = [(TKTLVRecord *)self value];
      bytes2 = [value6 bytes];
      value7 = [(TKTLVRecord *)self value];
      array = [v7 initWithBytes:bytes2 length:objc_msgSend(value7 encoding:{"length"), 4}];

      if (!array)
      {
        propertyList3 = 0;
        goto LABEL_52;
      }

      zuluDateFormatter = [objc_opt_class() zuluDateFormatter];
      propertyList3 = [zuluDateFormatter dateFromString:array];
    }

LABEL_52:
    goto LABEL_53;
  }

  if (v3 > 3)
  {
    if (v3 == 4)
    {
      value8 = [(TKTLVRecord *)self value];
    }

    else
    {
      if (v3 != 5)
      {
        goto LABEL_53;
      }

      value8 = [MEMORY[0x1E695DFB0] null];
    }
  }

  else if (v3 == 1)
  {
    value9 = [(TKTLVRecord *)self value];
    bytes3 = [value9 bytes];

    v30 = MEMORY[0x1E695E4D0];
    if (!*bytes3)
    {
      v30 = MEMORY[0x1E695E4C0];
    }

    value8 = *v30;
  }

  else
  {
    if (v3 != 2)
    {
      goto LABEL_53;
    }

    value10 = [(TKTLVRecord *)self value];
    v6 = [value10 length];

    if (v6 > 8)
    {
      propertyList3 = 0;
      goto LABEL_53;
    }

    value11 = [(TKTLVRecord *)self value];
    bytes4 = [value11 bytes];

    for (j = *bytes4 >> 7; ; j = v47 | (j << 8))
    {
      value12 = [(TKTLVRecord *)self value];
      bytes5 = [value12 bytes];
      value13 = [(TKTLVRecord *)self value];
      v46 = bytes5 + [value13 length];

      if (bytes4 >= v46)
      {
        break;
      }

      v47 = *bytes4++;
    }

    value8 = [MEMORY[0x1E696AD98] numberWithLongLong:j];
  }

  propertyList3 = value8;
LABEL_53:
  v48 = *MEMORY[0x1E69E9840];

  return propertyList3;
}

+ (unint64_t)encodeNumber:(unint64_t)number into:(char *)into
{
  if (!number)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"BER-TLV tag number must not be 0"];
  }

  result = 0;
  v7 = 0;
  for (i = 56; i != -8; i -= 8)
  {
    v7 |= ((255 << i) & number) != 0;
    if (v7)
    {
      *into++ = ((255 << i) & number) >> i;
      ++result;
    }
  }

  return result;
}

+ (NSData)dataForTag:(TKTLVTag)tag
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = [self encodeNumber:tag into:v7];
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:v7 length:v3];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (TKBERTLVRecord)initWithTag:(TKTLVTag)tag value:(NSData *)value
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = value;
  v7 = [MEMORY[0x1E695DF88] dataWithBytes:&v15 length:{objc_msgSend(objc_opt_class(), "encodeNumber:into:", tag, &v15)}];
  v8 = [(NSData *)v6 length];
  if (v8 > 0x7F)
  {
    v10 = [objc_opt_class() encodeNumber:v8 into:v16];
    v9 = v10 + 1;
    LOBYTE(v8) = v10 ^ 0x80;
  }

  else
  {
    v9 = 1;
  }

  v15 = v8;
  [v7 appendBytes:&v15 length:v9];
  [v7 appendData:v6];
  v14.receiver = self;
  v14.super_class = TKBERTLVRecord;
  v11 = [(TKTLVRecord *)&v14 initWithTag:tag value:v6 data:v7];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (TKBERTLVRecord)initWithTag:(TKTLVTag)tag records:(NSArray *)records
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = records;
  data = [MEMORY[0x1E695DF88] data];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        data2 = [*(*(&v17 + 1) + 8 * v12) data];
        [data appendData:data2];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [(TKBERTLVRecord *)self initWithTag:tag value:data];
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (id)parseFromDataSource:(id)source
{
  sourceCopy = source;
  if (![sourceCopy bytesSafeToRead:1])
  {
    goto LABEL_17;
  }

  v5 = [sourceCopy ptr];
  fetchByte = [sourceCopy fetchByte];
  v7 = fetchByte;
  if ((~fetchByte & 0x1FLL) == 0)
  {
    while (!HIBYTE(v7) && [sourceCopy bytesSafeToRead:1])
    {
      fetchByte2 = [sourceCopy fetchByte];
      v7 = fetchByte2 | (v7 << 8);
      if ((fetchByte2 & 0x80) == 0)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_17;
  }

LABEL_6:
  if (![sourceCopy bytesSafeToRead:1])
  {
    goto LABEL_17;
  }

  fetchByte3 = [sourceCopy fetchByte];
  v10 = fetchByte3;
  if ((fetchByte3 & 0x80) == 0)
  {
LABEL_8:
    v11 = [sourceCopy fetchDataWithLength:v10];
    if (v11)
    {
      v17.receiver = self;
      v17.super_class = &OBJC_METACLASS___TKBERTLVRecord;
      v12 = objc_msgSendSuper2(&v17, sel_alloc);
      v13 = [sourceCopy dataFromPtr:v5];
      v14 = [v12 initWithTag:v7 value:v11 data:v13];
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_18;
  }

  v14 = 0;
  if (fetchByte3 != 128 && fetchByte3 <= 0x88)
  {
    v15 = fetchByte3 & 0x7F;
    if (!v15)
    {
      v10 = 0;
      goto LABEL_8;
    }

    v10 = 0;
    while ([sourceCopy bytesSafeToRead:1])
    {
      --v15;
      v10 = [sourceCopy fetchByte] | (v10 << 8);
      if (!v15)
      {
        goto LABEL_8;
      }
    }

LABEL_17:
    v14 = 0;
  }

LABEL_18:

  return v14;
}

+ (id)zuluDateFormatter
{
  if (zuluDateFormatter_onceToken != -1)
  {
    +[TKBERTLVRecord(TKPropertyList) zuluDateFormatter];
  }

  v3 = zuluDateFormatter_formatter;

  return v3;
}

uint64_t __51__TKBERTLVRecord_TKPropertyList__zuluDateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = zuluDateFormatter_formatter;
  zuluDateFormatter_formatter = v0;

  v2 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [zuluDateFormatter_formatter setTimeZone:v2];

  v3 = [MEMORY[0x1E695DF58] systemLocale];
  [zuluDateFormatter_formatter setLocale:v3];

  v4 = zuluDateFormatter_formatter;

  return [v4 setDateFormat:@"yyyyMMddHHmmss.SSSS'Z'"];
}

- (TKBERTLVRecord)initWithPropertyList:(id)list
{
  v59 = *MEMORY[0x1E69E9840];
  listCopy = list;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (*MEMORY[0x1E695E4D0] != listCopy && *MEMORY[0x1E695E4C0] != listCopy)
    {
      longLongValue = [listCopy longLongValue];
      v12 = longLongValue;
      v13 = -9;
      v14 = 56;
      do
      {
        v15 = longLongValue >> v14;
        ++v13;
        if (!v14)
        {
          break;
        }

        v14 -= 8;
      }

      while (v15 - 1 > 0xFD);
      v16 = ((v15 >> 7) & 1 ^ (longLongValue >> 63)) - v13;
      v17 = [MEMORY[0x1E695DF88] dataWithLength:v16];
      if (v16 >= 1)
      {
        v18 = 0;
        v19 = 8 * v16 - 8;
        do
        {
          *([v17 mutableBytes] + v18++) = v12 >> v19;
          v19 -= 8;
        }

        while (v16 != v18);
      }

      v10 = [[TKBERTLVRecord alloc] initWithTag:2 value:v17];

      goto LABEL_16;
    }

    LOBYTE(v48) = [listCopy BOOLValue];
    v6 = [TKBERTLVRecord alloc];
    v7 = [MEMORY[0x1E695DEF0] dataWithBytes:&v48 length:1];
    v8 = [(TKBERTLVRecord *)v6 initWithTag:1 value:v7];

LABEL_22:
    self = v8;
    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = listCopy;
    v10 = [[TKBERTLVRecord alloc] initWithTag:4 value:v9];

LABEL_16:
    self = v10;
    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = MEMORY[0x1E695DEF0];
    v21 = listCopy;
    v22 = listCopy;
    uTF8String = [v22 UTF8String];
    v24 = [v22 lengthOfBytesUsingEncoding:4];

    data = [v20 dataWithBytes:uTF8String length:v24];
    v26 = [TKBERTLVRecord alloc];
    v27 = 12;
LABEL_21:
    v8 = [(TKBERTLVRecord *)v26 initWithTag:v27 value:data];

    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = [TKBERTLVRecord alloc];
    data = [MEMORY[0x1E695DEF0] data];
    v26 = v28;
    v27 = 5;
    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    zuluDateFormatter = [objc_opt_class() zuluDateFormatter];
    v33 = [zuluDateFormatter stringFromDate:listCopy];

    v34 = [MEMORY[0x1E695DEF0] dataWithBytes:objc_msgSend(v33 length:{"UTF8String"), objc_msgSend(v33, "lengthOfBytesUsingEncoding:", 4)}];
    v35 = [[TKBERTLVRecord alloc] initWithTag:24 value:v34];

LABEL_27:
    self = v35;
    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = listCopy;
    array = [MEMORY[0x1E695DF70] array];
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v38 = v36;
    v39 = [v38 countByEnumeratingWithState:&v54 objects:v58 count:16];
    if (v39)
    {
      v40 = *v55;
      while (2)
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v55 != v40)
          {
            objc_enumerationMutation(v38);
          }

          v42 = [[TKBERTLVRecord alloc] initWithPropertyList:*(*(&v54 + 1) + 8 * i)];
          if (!v42)
          {

            goto LABEL_44;
          }

          [array addObject:v42];
        }

        v39 = [v38 countByEnumeratingWithState:&v54 objects:v58 count:16];
        if (v39)
        {
          continue;
        }

        break;
      }
    }

    v35 = [[TKBERTLVRecord alloc] initWithTag:48 records:array];
    goto LABEL_27;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_44;
  }

  v43 = listCopy;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy_;
  v52 = __Block_byref_object_dispose_;
  array2 = [MEMORY[0x1E695DF70] array];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __55__TKBERTLVRecord_TKPropertyList__initWithPropertyList___block_invoke;
  v47[3] = &unk_1E86B6F38;
  v47[4] = &v48;
  [v43 enumerateKeysAndObjectsUsingBlock:v47];
  v44 = v49[5];
  if (v44)
  {
    v45 = [TKBERTLVRecord alloc];
    v46 = [(TKBERTLVRecord *)v45 initWithTag:49 records:v49[5]];

    self = v46;
  }

  _Block_object_dispose(&v48, 8);

  if (!v44)
  {
LABEL_44:
    selfCopy = 0;
    goto LABEL_24;
  }

LABEL_23:
  self = self;
  selfCopy = self;
LABEL_24:

  v30 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

void __55__TKBERTLVRecord_TKPropertyList__initWithPropertyList___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a2;
  v9 = [[TKBERTLVRecord alloc] initWithPropertyList:v8];

  v10 = [[TKBERTLVRecord alloc] initWithPropertyList:v7];
  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = *(*(a1 + 32) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = 0;

    *a4 = 1;
  }

  else
  {
    v14 = [TKBERTLVRecord alloc];
    v18[0] = v9;
    v18[1] = v10;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v16 = [(TKBERTLVRecord *)v14 initWithTag:48 records:v15];

    [*(*(*(a1 + 32) + 8) + 40) addObject:v16];
  }

  v17 = *MEMORY[0x1E69E9840];
}

@end