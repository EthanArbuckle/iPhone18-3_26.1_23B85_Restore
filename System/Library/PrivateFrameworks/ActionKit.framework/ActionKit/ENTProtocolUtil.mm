@interface ENTProtocolUtil
+ (id)_readValueForField:(id)field fromProtocol:(id)protocol;
+ (id)readMessage:(id)message fromProtocol:(id)protocol withResponseTypes:(id)types;
+ (void)_writeValue:(id)value forField:(id)field toProtocol:(id)protocol;
+ (void)readFromProtocol:(id)protocol ontoObject:(id)object;
+ (void)sendMessage:(id)message toProtocol:(id)protocol withArguments:(id)arguments;
+ (void)skipType:(int)type onProtocol:(id)protocol;
+ (void)writeObject:(id)object ontoProtocol:(id)protocol;
@end

@implementation ENTProtocolUtil

+ (void)sendMessage:(id)message toProtocol:(id)protocol withArguments:(id)arguments
{
  v29 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  protocolCopy = protocol;
  argumentsCopy = arguments;
  [protocolCopy writeMessageBeginWithName:messageCopy type:1 sequenceID:0];
  v23 = messageCopy;
  v11 = [messageCopy stringByAppendingString:@"_args"];
  [protocolCopy writeStructBeginWithName:v11];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = argumentsCopy;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        field = [v17 field];
        value = [v17 value];
        name = [field name];
        [protocolCopy writeFieldBeginWithName:name type:objc_msgSend(field fieldID:{"type"), objc_msgSend(field, "index")}];

        [self _writeValue:value forField:field toProtocol:protocolCopy];
        [protocolCopy writeFieldEnd];
      }

      v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  [protocolCopy writeFieldStop];
  [protocolCopy writeStructEnd];
  [protocolCopy writeMessageEnd];
  transport = [protocolCopy transport];
  [transport flush];

  v22 = *MEMORY[0x277D85DE8];
}

+ (void)writeObject:(id)object ontoProtocol:(id)protocol
{
  v25 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  protocolCopy = protocol;
  structName = [objc_opt_class() structName];
  [protocolCopy writeStructBeginWithName:structName];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  structFields = [objc_opt_class() structFields];
  v9 = [structFields countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(structFields);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        name = [v13 name];
        v15 = [objectCopy valueForKey:name];
        if (v15)
        {
          type = [v13 type];
          if (type == 16)
          {
            v17 = 11;
          }

          else
          {
            v17 = type;
          }

          [protocolCopy writeFieldBeginWithName:name type:v17 fieldID:{objc_msgSend(v13, "index")}];
          [self _writeValue:v15 forField:v13 toProtocol:protocolCopy];
          [protocolCopy writeFieldEnd];
        }
      }

      v10 = [structFields countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  [protocolCopy writeFieldStop];
  [protocolCopy writeStructEnd];

  v18 = *MEMORY[0x277D85DE8];
}

+ (id)readMessage:(id)message fromProtocol:(id)protocol withResponseTypes:(id)types
{
  v73 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  protocolCopy = protocol;
  typesCopy = types;
  v68 = 0;
  [protocolCopy readMessageBeginReturningName:0 type:&v68 sequenceID:0];
  if (v68 == 3)
  {
    v45 = [ENTApplicationException read:protocolCopy];
    [protocolCopy readMessageEnd];
    v41 = v45;
LABEL_55:
    objc_exception_throw(v41);
  }

  v46 = messageCopy;
  array = [MEMORY[0x277CBEB18] array];
  [protocolCopy readStructBeginReturningName:0];
  v67 = 0;
  v66 = 0;
  v65 = 0;
  [protocolCopy readFieldBeginReturningName:&v65 type:&v67 fieldID:&v66];
  for (i = v65; v67; i = v65)
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v12 = typesCopy;
    v13 = [v12 countByEnumeratingWithState:&v61 objects:v72 count:16];
    if (v13)
    {
      v14 = v13;
      v48 = i;
      v15 = 0;
      v16 = *v62;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v62 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v61 + 1) + 8 * j);
          index = [v18 index];
          if (index == v66)
          {
            type = [v18 type];
            if (type == v67 || ([v18 type] != 16 ? (v21 = v67 == 11) : (v21 = 1), v21))
            {
              v22 = [self _readValueForField:v18 fromProtocol:protocolCopy];
              if (v22)
              {
                [array addObject:v22];
              }

              v15 = 1;
            }

            else
            {
              NSLog(&cfstr_SkippingFieldD.isa, v18, v67);
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v61 objects:v72 count:16];
      }

      while (v14);

      i = v48;
      if (v15)
      {
        goto LABEL_24;
      }
    }

    else
    {
    }

    [ENTProtocolUtil skipType:v67 onProtocol:protocolCopy];
LABEL_24:

    v67 = 0;
    v66 = 0;
    v65 = 0;
    [protocolCopy readFieldBeginReturningName:&v65 type:&v67 fieldID:&v66];
  }

  [protocolCopy readStructEnd];
  [protocolCopy readMessageEnd];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v23 = array;
  v24 = [v23 countByEnumeratingWithState:&v57 objects:v71 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v58;
    while (2)
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v58 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v57 + 1) + 8 * k);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v36 = v28;
          v35 = v23;
          goto LABEL_51;
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v57 objects:v71 count:16];
      if (v25)
      {
        continue;
      }

      break;
    }
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v29 = v23;
  v30 = [v29 countByEnumeratingWithState:&v53 objects:v70 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v54;
    do
    {
      for (m = 0; m != v31; ++m)
      {
        if (*v54 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v53 + 1) + 8 * m);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v41 = v34;
          goto LABEL_55;
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v53 objects:v70 count:16];
    }

    while (v31);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v35 = typesCopy;
  v36 = [v35 countByEnumeratingWithState:&v49 objects:v69 count:16];
  if (v36)
  {
    v37 = *v50;
    do
    {
      for (n = 0; n != v36; n = n + 1)
      {
        if (*v50 != v37)
        {
          objc_enumerationMutation(v35);
        }

        if (![objc_msgSend(*(*(&v49 + 1) + 8 * n) "structClass")])
        {

          v42 = [v46 stringByAppendingString:@" failed: unknown result"];
          v43 = [ENTApplicationException exceptionWithType:5 reason:v42];
          v44 = v43;

          objc_exception_throw(v43);
        }
      }

      v36 = [v35 countByEnumeratingWithState:&v49 objects:v69 count:16];
    }

    while (v36);
  }

LABEL_51:

  v39 = *MEMORY[0x277D85DE8];

  return v36;
}

+ (void)_writeValue:(id)value forField:(id)field toProtocol:(id)protocol
{
  v49 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  fieldCopy = field;
  protocolCopy = protocol;
  type = [fieldCopy type];
  if (type <= 10)
  {
    if (type > 5)
    {
      switch(type)
      {
        case 6:
          [protocolCopy writeI16:{objc_msgSend(valueCopy, "shortValue")}];
          break;
        case 8:
          [protocolCopy writeI32:{objc_msgSend(valueCopy, "intValue")}];
          break;
        case 10:
          [protocolCopy writeI64:{objc_msgSend(valueCopy, "longLongValue")}];
          break;
      }
    }

    else
    {
      switch(type)
      {
        case 2:
          [protocolCopy writeBool:{objc_msgSend(valueCopy, "BOOLValue")}];
          break;
        case 3:
          [protocolCopy writeByte:{objc_msgSend(valueCopy, "charValue")}];
          break;
        case 4:
          [valueCopy doubleValue];
          [protocolCopy writeDouble:?];
          break;
      }
    }

    goto LABEL_49;
  }

  if (type <= 13)
  {
    if (type == 11)
    {
      [protocolCopy writeString:valueCopy];
    }

    else if (type == 12)
    {
      [valueCopy write:protocolCopy];
    }

    else
    {
      keyField = [fieldCopy keyField];
      valueField = [fieldCopy valueField];
      [protocolCopy writeMapBeginWithKeyType:objc_msgSend(keyField valueType:"type") size:{objc_msgSend(valueField, "type"), objc_msgSend(valueCopy, "count")}];
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v33 = valueCopy;
      v14 = valueCopy;
      v15 = [v14 countByEnumeratingWithState:&v42 objects:v48 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v43;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v43 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v42 + 1) + 8 * i);
            [self _writeValue:v19 forField:keyField toProtocol:protocolCopy];
            v20 = [v14 objectForKey:v19];
            [self _writeValue:v20 forField:valueField toProtocol:protocolCopy];
          }

          v16 = [v14 countByEnumeratingWithState:&v42 objects:v48 count:16];
        }

        while (v16);
      }

      [protocolCopy writeMapEnd];
      valueCopy = v33;
    }

    goto LABEL_49;
  }

  switch(type)
  {
    case 14:
      valueField2 = [fieldCopy valueField];
      [protocolCopy writeSetBeginWithElementType:objc_msgSend(valueField2 size:{"type"), objc_msgSend(valueCopy, "count")}];
      [protocolCopy writeSetEnd];
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v22 = valueCopy;
      v23 = [v22 countByEnumeratingWithState:&v38 objects:v47 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v39;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v39 != v25)
            {
              objc_enumerationMutation(v22);
            }

            [self _writeValue:*(*(&v38 + 1) + 8 * j) forField:valueField2 toProtocol:protocolCopy];
          }

          v24 = [v22 countByEnumeratingWithState:&v38 objects:v47 count:16];
        }

        while (v24);
      }

      goto LABEL_48;
    case 15:
      valueField2 = [fieldCopy valueField];
      [protocolCopy writeListBeginWithElementType:objc_msgSend(valueField2 size:{"type"), objc_msgSend(valueCopy, "count")}];
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v27 = valueCopy;
      v28 = [v27 countByEnumeratingWithState:&v34 objects:v46 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v35;
        do
        {
          for (k = 0; k != v29; ++k)
          {
            if (*v35 != v30)
            {
              objc_enumerationMutation(v27);
            }

            [self _writeValue:*(*(&v34 + 1) + 8 * k) forField:valueField2 toProtocol:protocolCopy];
          }

          v29 = [v27 countByEnumeratingWithState:&v34 objects:v46 count:16];
        }

        while (v29);
      }

      [protocolCopy writeListEnd];
LABEL_48:

      break;
    case 16:
      [protocolCopy writeBinary:valueCopy];
      break;
  }

LABEL_49:

  v32 = *MEMORY[0x277D85DE8];
}

+ (void)readFromProtocol:(id)protocol ontoObject:(id)object
{
  v28 = *MEMORY[0x277D85DE8];
  protocolCopy = protocol;
  objectCopy = object;
  [protocolCopy readStructBeginReturningName:0];
  structFields = [objc_opt_class() structFields];
  v26 = 0;
  [protocolCopy readFieldBeginReturningName:0 type:&v26 + 4 fieldID:&v26];
  while (HIDWORD(v26))
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = structFields;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * v13);
        index = [v14 index];
        if (index == v26)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
          if (v11)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v16 = v14;

      if (!v16)
      {
        goto LABEL_19;
      }

      type = [v16 type];
      if (type != HIDWORD(v26) && [v16 type] != 16 && HIDWORD(v26) != 11)
      {
        NSLog(&cfstr_SkippingFieldD.isa, v16, HIDWORD(v26));
        goto LABEL_19;
      }

      v19 = [self _readValueForField:v16 fromProtocol:protocolCopy];
      name = [v16 name];
      [objectCopy setValue:v19 forKey:name];

      [protocolCopy readFieldEnd];
    }

    else
    {
LABEL_10:

      v16 = 0;
LABEL_19:
      [self skipType:HIDWORD(v26) onProtocol:protocolCopy];
    }

    v26 = 0;
    [protocolCopy readFieldBeginReturningName:0 type:&v26 + 4 fieldID:&v26];
  }

  [protocolCopy readStructEnd];

  v21 = *MEMORY[0x277D85DE8];
}

+ (id)_readValueForField:(id)field fromProtocol:(id)protocol
{
  fieldCopy = field;
  protocolCopy = protocol;
  type = [fieldCopy type];
  v9 = 0;
  if (type <= 10)
  {
    if (type > 5)
    {
      if (type != 6)
      {
        if (type != 8)
        {
          if (type != 10)
          {
            goto LABEL_43;
          }

          readBinary = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(protocolCopy, "readI64")}];
          goto LABEL_35;
        }

        v21 = MEMORY[0x277CCABB0];
        readI32 = [protocolCopy readI32];
LABEL_34:
        readBinary = [v21 numberWithInt:readI32];
        goto LABEL_35;
      }

      readBinary = [MEMORY[0x277CCABB0] numberWithShort:{objc_msgSend(protocolCopy, "readI16")}];
    }

    else
    {
      if (type != 2)
      {
        if (type != 3)
        {
          if (type != 4)
          {
            goto LABEL_43;
          }

          v10 = MEMORY[0x277CCABB0];
          [protocolCopy readDouble];
          readBinary = [v10 numberWithDouble:?];
          goto LABEL_35;
        }

        v21 = MEMORY[0x277CCABB0];
        readI32 = [protocolCopy readByte];
        goto LABEL_34;
      }

      readBinary = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(protocolCopy, "readBool")}];
    }

LABEL_35:
    v9 = readBinary;
    goto LABEL_43;
  }

  if (type > 13)
  {
    switch(type)
    {
      case 14:
        v28 = 0;
        [protocolCopy readSetBeginReturningElementType:&v28 size:&v28 + 4];
        valueField = [fieldCopy valueField];
        v18 = objc_alloc(MEMORY[0x277CBEB58]);
        v9 = [v18 initWithCapacity:SHIDWORD(v28)];
        if (SHIDWORD(v28) >= 1)
        {
          v19 = 0;
          do
          {
            v20 = [self _readValueForField:valueField fromProtocol:protocolCopy];
            if (v20)
            {
              [v9 addObject:v20];
            }

            ++v19;
          }

          while (v19 < SHIDWORD(v28));
        }

        break;
      case 15:
        v28 = 0;
        [protocolCopy readListBeginReturningElementType:&v28 size:&v28 + 4];
        valueField = [fieldCopy valueField];
        v23 = objc_alloc(MEMORY[0x277CBEB18]);
        v9 = [v23 initWithCapacity:SHIDWORD(v28)];
        if (SHIDWORD(v28) >= 1)
        {
          v24 = 0;
          do
          {
            v25 = [self _readValueForField:valueField fromProtocol:protocolCopy];
            if (v25)
            {
              [v9 addObject:v25];
            }

            ++v24;
          }

          while (v24 < SHIDWORD(v28));
        }

        break;
      case 16:
        readBinary = [protocolCopy readBinary];
        goto LABEL_35;
      default:
        goto LABEL_43;
    }

    [protocolCopy readListEnd];
  }

  else
  {
    if (type == 11)
    {
      readBinary = [protocolCopy readString];
      goto LABEL_35;
    }

    if (type == 12)
    {
      v9 = objc_alloc_init([fieldCopy structClass]);
      [v9 read:protocolCopy];
      goto LABEL_43;
    }

    v28 = 0;
    v27 = 0;
    [protocolCopy readMapBeginReturningKeyType:&v28 valueType:&v27 size:&v28 + 4];
    valueField = [fieldCopy keyField];
    valueField2 = [fieldCopy valueField];
    v14 = objc_alloc(MEMORY[0x277CBEB38]);
    v9 = [v14 initWithCapacity:SHIDWORD(v28)];
    if (SHIDWORD(v28) >= 1)
    {
      v15 = 0;
      do
      {
        v16 = [self _readValueForField:valueField fromProtocol:protocolCopy];
        v17 = [self _readValueForField:valueField2 fromProtocol:protocolCopy];
        [v9 setObject:v17 forKey:v16];

        ++v15;
      }

      while (v15 < SHIDWORD(v28));
    }

    [protocolCopy readMapEnd];
  }

LABEL_43:

  return v9;
}

+ (void)skipType:(int)type onProtocol:(id)protocol
{
  protocolCopy = protocol;
  v7 = protocolCopy;
  if (type <= 9)
  {
    if (type <= 3)
    {
      if (type == 2)
      {
        [protocolCopy readBool];
      }

      else if (type == 3)
      {
        [protocolCopy readByte];
      }
    }

    else
    {
      switch(type)
      {
        case 4:
          [protocolCopy readDouble];
          break;
        case 6:
          [protocolCopy readI16];
          break;
        case 8:
          [protocolCopy readI32];
          break;
      }
    }
  }

  else if (type > 12)
  {
    switch(type)
    {
      case 13:
        v13 = 0;
        v12 = 0;
        [protocolCopy readMapBeginReturningKeyType:&v13 + 4 valueType:&v13 size:&v12];
        if (v12 >= 1)
        {
          for (i = 0; i < v12; ++i)
          {
            [self skipType:HIDWORD(v13) onProtocol:v7];
            [self skipType:v13 onProtocol:v7];
          }
        }

        [v7 readMapEnd];
        break;
      case 14:
        v13 = 0;
        [protocolCopy readSetBeginReturningElementType:&v13 + 4 size:&v13];
        if (v13 >= 1)
        {
          v10 = 0;
          do
          {
            [self skipType:HIDWORD(v13) onProtocol:v7];
            ++v10;
          }

          while (v10 < v13);
        }

        [v7 readSetEnd];
        break;
      case 15:
        v13 = 0;
        [protocolCopy readListBeginReturningElementType:&v13 + 4 size:&v13];
        if (v13 >= 1)
        {
          v8 = 0;
          do
          {
            [self skipType:HIDWORD(v13) onProtocol:v7];
            ++v8;
          }

          while (v8 < v13);
        }

        [v7 readListEnd];
        break;
    }
  }

  else if (type == 10)
  {
    [protocolCopy readI64];
  }

  else if (type == 11)
  {
    readString = [protocolCopy readString];
  }

  else
  {
    [protocolCopy readStructBeginReturningName:0];
    while (1)
    {
      HIDWORD(v13) = 0;
      [v7 readFieldBeginReturningName:0 type:&v13 + 4 fieldID:0];
      if (!HIDWORD(v13))
      {
        break;
      }

      [self skipType:? onProtocol:?];
      [v7 readFieldEnd];
    }

    [v7 readStructEnd];
  }
}

@end