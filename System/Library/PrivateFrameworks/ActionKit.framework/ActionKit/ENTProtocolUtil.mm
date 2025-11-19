@interface ENTProtocolUtil
+ (id)_readValueForField:(id)a3 fromProtocol:(id)a4;
+ (id)readMessage:(id)a3 fromProtocol:(id)a4 withResponseTypes:(id)a5;
+ (void)_writeValue:(id)a3 forField:(id)a4 toProtocol:(id)a5;
+ (void)readFromProtocol:(id)a3 ontoObject:(id)a4;
+ (void)sendMessage:(id)a3 toProtocol:(id)a4 withArguments:(id)a5;
+ (void)skipType:(int)a3 onProtocol:(id)a4;
+ (void)writeObject:(id)a3 ontoProtocol:(id)a4;
@end

@implementation ENTProtocolUtil

+ (void)sendMessage:(id)a3 toProtocol:(id)a4 withArguments:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v9 writeMessageBeginWithName:v8 type:1 sequenceID:0];
  v23 = v8;
  v11 = [v8 stringByAppendingString:@"_args"];
  [v9 writeStructBeginWithName:v11];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = v10;
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
        v18 = [v17 field];
        v19 = [v17 value];
        v20 = [v18 name];
        [v9 writeFieldBeginWithName:v20 type:objc_msgSend(v18 fieldID:{"type"), objc_msgSend(v18, "index")}];

        [a1 _writeValue:v19 forField:v18 toProtocol:v9];
        [v9 writeFieldEnd];
      }

      v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  [v9 writeFieldStop];
  [v9 writeStructEnd];
  [v9 writeMessageEnd];
  v21 = [v9 transport];
  [v21 flush];

  v22 = *MEMORY[0x277D85DE8];
}

+ (void)writeObject:(id)a3 ontoProtocol:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [objc_opt_class() structName];
  [v6 writeStructBeginWithName:v7];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [objc_opt_class() structFields];
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v13 name];
        v15 = [v5 valueForKey:v14];
        if (v15)
        {
          v16 = [v13 type];
          if (v16 == 16)
          {
            v17 = 11;
          }

          else
          {
            v17 = v16;
          }

          [v6 writeFieldBeginWithName:v14 type:v17 fieldID:{objc_msgSend(v13, "index")}];
          [a1 _writeValue:v15 forField:v13 toProtocol:v6];
          [v6 writeFieldEnd];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  [v6 writeFieldStop];
  [v6 writeStructEnd];

  v18 = *MEMORY[0x277D85DE8];
}

+ (id)readMessage:(id)a3 fromProtocol:(id)a4 withResponseTypes:(id)a5
{
  v73 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v47 = a5;
  v68 = 0;
  [v9 readMessageBeginReturningName:0 type:&v68 sequenceID:0];
  if (v68 == 3)
  {
    v45 = [ENTApplicationException read:v9];
    [v9 readMessageEnd];
    v41 = v45;
LABEL_55:
    objc_exception_throw(v41);
  }

  v46 = v8;
  v10 = [MEMORY[0x277CBEB18] array];
  [v9 readStructBeginReturningName:0];
  v67 = 0;
  v66 = 0;
  v65 = 0;
  [v9 readFieldBeginReturningName:&v65 type:&v67 fieldID:&v66];
  for (i = v65; v67; i = v65)
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v12 = v47;
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
          v19 = [v18 index];
          if (v19 == v66)
          {
            v20 = [v18 type];
            if (v20 == v67 || ([v18 type] != 16 ? (v21 = v67 == 11) : (v21 = 1), v21))
            {
              v22 = [a1 _readValueForField:v18 fromProtocol:v9];
              if (v22)
              {
                [v10 addObject:v22];
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

    [ENTProtocolUtil skipType:v67 onProtocol:v9];
LABEL_24:

    v67 = 0;
    v66 = 0;
    v65 = 0;
    [v9 readFieldBeginReturningName:&v65 type:&v67 fieldID:&v66];
  }

  [v9 readStructEnd];
  [v9 readMessageEnd];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v23 = v10;
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
  v35 = v47;
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

+ (void)_writeValue:(id)a3 forField:(id)a4 toProtocol:(id)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 type];
  if (v11 <= 10)
  {
    if (v11 > 5)
    {
      switch(v11)
      {
        case 6:
          [v10 writeI16:{objc_msgSend(v8, "shortValue")}];
          break;
        case 8:
          [v10 writeI32:{objc_msgSend(v8, "intValue")}];
          break;
        case 10:
          [v10 writeI64:{objc_msgSend(v8, "longLongValue")}];
          break;
      }
    }

    else
    {
      switch(v11)
      {
        case 2:
          [v10 writeBool:{objc_msgSend(v8, "BOOLValue")}];
          break;
        case 3:
          [v10 writeByte:{objc_msgSend(v8, "charValue")}];
          break;
        case 4:
          [v8 doubleValue];
          [v10 writeDouble:?];
          break;
      }
    }

    goto LABEL_49;
  }

  if (v11 <= 13)
  {
    if (v11 == 11)
    {
      [v10 writeString:v8];
    }

    else if (v11 == 12)
    {
      [v8 write:v10];
    }

    else
    {
      v12 = [v9 keyField];
      v13 = [v9 valueField];
      [v10 writeMapBeginWithKeyType:objc_msgSend(v12 valueType:"type") size:{objc_msgSend(v13, "type"), objc_msgSend(v8, "count")}];
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v33 = v8;
      v14 = v8;
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
            [a1 _writeValue:v19 forField:v12 toProtocol:v10];
            v20 = [v14 objectForKey:v19];
            [a1 _writeValue:v20 forField:v13 toProtocol:v10];
          }

          v16 = [v14 countByEnumeratingWithState:&v42 objects:v48 count:16];
        }

        while (v16);
      }

      [v10 writeMapEnd];
      v8 = v33;
    }

    goto LABEL_49;
  }

  switch(v11)
  {
    case 14:
      v21 = [v9 valueField];
      [v10 writeSetBeginWithElementType:objc_msgSend(v21 size:{"type"), objc_msgSend(v8, "count")}];
      [v10 writeSetEnd];
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v22 = v8;
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

            [a1 _writeValue:*(*(&v38 + 1) + 8 * j) forField:v21 toProtocol:v10];
          }

          v24 = [v22 countByEnumeratingWithState:&v38 objects:v47 count:16];
        }

        while (v24);
      }

      goto LABEL_48;
    case 15:
      v21 = [v9 valueField];
      [v10 writeListBeginWithElementType:objc_msgSend(v21 size:{"type"), objc_msgSend(v8, "count")}];
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v27 = v8;
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

            [a1 _writeValue:*(*(&v34 + 1) + 8 * k) forField:v21 toProtocol:v10];
          }

          v29 = [v27 countByEnumeratingWithState:&v34 objects:v46 count:16];
        }

        while (v29);
      }

      [v10 writeListEnd];
LABEL_48:

      break;
    case 16:
      [v10 writeBinary:v8];
      break;
  }

LABEL_49:

  v32 = *MEMORY[0x277D85DE8];
}

+ (void)readFromProtocol:(id)a3 ontoObject:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [v6 readStructBeginReturningName:0];
  v8 = [objc_opt_class() structFields];
  v26 = 0;
  [v6 readFieldBeginReturningName:0 type:&v26 + 4 fieldID:&v26];
  while (HIDWORD(v26))
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v8;
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
        v15 = [v14 index];
        if (v15 == v26)
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

      v17 = [v16 type];
      if (v17 != HIDWORD(v26) && [v16 type] != 16 && HIDWORD(v26) != 11)
      {
        NSLog(&cfstr_SkippingFieldD.isa, v16, HIDWORD(v26));
        goto LABEL_19;
      }

      v19 = [a1 _readValueForField:v16 fromProtocol:v6];
      v20 = [v16 name];
      [v7 setValue:v19 forKey:v20];

      [v6 readFieldEnd];
    }

    else
    {
LABEL_10:

      v16 = 0;
LABEL_19:
      [a1 skipType:HIDWORD(v26) onProtocol:v6];
    }

    v26 = 0;
    [v6 readFieldBeginReturningName:0 type:&v26 + 4 fieldID:&v26];
  }

  [v6 readStructEnd];

  v21 = *MEMORY[0x277D85DE8];
}

+ (id)_readValueForField:(id)a3 fromProtocol:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 type];
  v9 = 0;
  if (v8 <= 10)
  {
    if (v8 > 5)
    {
      if (v8 != 6)
      {
        if (v8 != 8)
        {
          if (v8 != 10)
          {
            goto LABEL_43;
          }

          v11 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v7, "readI64")}];
          goto LABEL_35;
        }

        v21 = MEMORY[0x277CCABB0];
        v22 = [v7 readI32];
LABEL_34:
        v11 = [v21 numberWithInt:v22];
        goto LABEL_35;
      }

      v11 = [MEMORY[0x277CCABB0] numberWithShort:{objc_msgSend(v7, "readI16")}];
    }

    else
    {
      if (v8 != 2)
      {
        if (v8 != 3)
        {
          if (v8 != 4)
          {
            goto LABEL_43;
          }

          v10 = MEMORY[0x277CCABB0];
          [v7 readDouble];
          v11 = [v10 numberWithDouble:?];
          goto LABEL_35;
        }

        v21 = MEMORY[0x277CCABB0];
        v22 = [v7 readByte];
        goto LABEL_34;
      }

      v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "readBool")}];
    }

LABEL_35:
    v9 = v11;
    goto LABEL_43;
  }

  if (v8 > 13)
  {
    switch(v8)
    {
      case 14:
        v28 = 0;
        [v7 readSetBeginReturningElementType:&v28 size:&v28 + 4];
        v12 = [v6 valueField];
        v18 = objc_alloc(MEMORY[0x277CBEB58]);
        v9 = [v18 initWithCapacity:SHIDWORD(v28)];
        if (SHIDWORD(v28) >= 1)
        {
          v19 = 0;
          do
          {
            v20 = [a1 _readValueForField:v12 fromProtocol:v7];
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
        [v7 readListBeginReturningElementType:&v28 size:&v28 + 4];
        v12 = [v6 valueField];
        v23 = objc_alloc(MEMORY[0x277CBEB18]);
        v9 = [v23 initWithCapacity:SHIDWORD(v28)];
        if (SHIDWORD(v28) >= 1)
        {
          v24 = 0;
          do
          {
            v25 = [a1 _readValueForField:v12 fromProtocol:v7];
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
        v11 = [v7 readBinary];
        goto LABEL_35;
      default:
        goto LABEL_43;
    }

    [v7 readListEnd];
  }

  else
  {
    if (v8 == 11)
    {
      v11 = [v7 readString];
      goto LABEL_35;
    }

    if (v8 == 12)
    {
      v9 = objc_alloc_init([v6 structClass]);
      [v9 read:v7];
      goto LABEL_43;
    }

    v28 = 0;
    v27 = 0;
    [v7 readMapBeginReturningKeyType:&v28 valueType:&v27 size:&v28 + 4];
    v12 = [v6 keyField];
    v13 = [v6 valueField];
    v14 = objc_alloc(MEMORY[0x277CBEB38]);
    v9 = [v14 initWithCapacity:SHIDWORD(v28)];
    if (SHIDWORD(v28) >= 1)
    {
      v15 = 0;
      do
      {
        v16 = [a1 _readValueForField:v12 fromProtocol:v7];
        v17 = [a1 _readValueForField:v13 fromProtocol:v7];
        [v9 setObject:v17 forKey:v16];

        ++v15;
      }

      while (v15 < SHIDWORD(v28));
    }

    [v7 readMapEnd];
  }

LABEL_43:

  return v9;
}

+ (void)skipType:(int)a3 onProtocol:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3 <= 9)
  {
    if (a3 <= 3)
    {
      if (a3 == 2)
      {
        [v6 readBool];
      }

      else if (a3 == 3)
      {
        [v6 readByte];
      }
    }

    else
    {
      switch(a3)
      {
        case 4:
          [v6 readDouble];
          break;
        case 6:
          [v6 readI16];
          break;
        case 8:
          [v6 readI32];
          break;
      }
    }
  }

  else if (a3 > 12)
  {
    switch(a3)
    {
      case 13:
        v13 = 0;
        v12 = 0;
        [v6 readMapBeginReturningKeyType:&v13 + 4 valueType:&v13 size:&v12];
        if (v12 >= 1)
        {
          for (i = 0; i < v12; ++i)
          {
            [a1 skipType:HIDWORD(v13) onProtocol:v7];
            [a1 skipType:v13 onProtocol:v7];
          }
        }

        [v7 readMapEnd];
        break;
      case 14:
        v13 = 0;
        [v6 readSetBeginReturningElementType:&v13 + 4 size:&v13];
        if (v13 >= 1)
        {
          v10 = 0;
          do
          {
            [a1 skipType:HIDWORD(v13) onProtocol:v7];
            ++v10;
          }

          while (v10 < v13);
        }

        [v7 readSetEnd];
        break;
      case 15:
        v13 = 0;
        [v6 readListBeginReturningElementType:&v13 + 4 size:&v13];
        if (v13 >= 1)
        {
          v8 = 0;
          do
          {
            [a1 skipType:HIDWORD(v13) onProtocol:v7];
            ++v8;
          }

          while (v8 < v13);
        }

        [v7 readListEnd];
        break;
    }
  }

  else if (a3 == 10)
  {
    [v6 readI64];
  }

  else if (a3 == 11)
  {
    v9 = [v6 readString];
  }

  else
  {
    [v6 readStructBeginReturningName:0];
    while (1)
    {
      HIDWORD(v13) = 0;
      [v7 readFieldBeginReturningName:0 type:&v13 + 4 fieldID:0];
      if (!HIDWORD(v13))
      {
        break;
      }

      [a1 skipType:? onProtocol:?];
      [v7 readFieldEnd];
    }

    [v7 readStructEnd];
  }
}

@end