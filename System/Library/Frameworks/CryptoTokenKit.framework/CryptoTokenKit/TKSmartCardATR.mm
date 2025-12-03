@interface TKSmartCardATR
- (NSArray)historicalRecords;
- (NSArray)protocols;
- (TKSmartCardATR)initWithBytes:(NSData *)bytes;
- (TKSmartCardATR)initWithSource:(void *)source;
- (TKSmartCardATRInterfaceGroup)interfaceGroupAtIndex:(NSInteger)index;
- (TKSmartCardATRInterfaceGroup)interfaceGroupForProtocol:(TKSmartCardProtocol)protocol;
- (id)_formatHexData:(id)data to:(id)to;
- (id)description;
- (id)parseFromSource:(id)source;
@end

@implementation TKSmartCardATR

- (TKSmartCardATR)initWithBytes:(NSData *)bytes
{
  v5 = bytes;
  v19.receiver = self;
  v19.super_class = TKSmartCardATR;
  v6 = [(TKSmartCardATR *)&v19 init];
  if (v6)
  {
    v7 = v6;
    array = [MEMORY[0x1E695DF70] array];
    interfaces = v7->_interfaces;
    v7->_interfaces = array;

    objc_storeStrong(&v7->_bytes, bytes);
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    bytes = [(NSData *)v5 bytes];
    v10 = v16[3];
    v11 = [(NSData *)v5 length];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __32__TKSmartCardATR_initWithBytes___block_invoke;
    v14[3] = &unk_1E86B8008;
    v14[4] = &v15;
    v14[5] = v10 + v11;
    v12 = [(TKSmartCardATR *)v7 parseFromSource:v14];

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t __32__TKSmartCardATR_initWithBytes___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 24);
  if (v2 >= *(a1 + 40))
  {
    return 0xFFFFFFFFLL;
  }

  *(v1 + 24) = v2 + 1;
  return *v2;
}

- (TKSmartCardATR)initWithSource:(void *)source
{
  v4 = source;
  v21.receiver = self;
  v21.super_class = TKSmartCardATR;
  v5 = [(TKSmartCardATR *)&v21 init];
  if (v5)
  {
    v6 = v5;
    array = [MEMORY[0x1E695DF70] array];
    interfaces = v6->_interfaces;
    v6->_interfaces = array;

    data = [MEMORY[0x1E695DF88] data];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __33__TKSmartCardATR_initWithSource___block_invoke;
    v18 = &unk_1E86B8030;
    v20 = v4;
    v10 = data;
    v19 = v10;
    v11 = [(TKSmartCardATR *)v6 parseFromSource:&v15];

    if (v11)
    {
      v12 = [MEMORY[0x1E695DEF0] dataWithData:{v10, v15, v16, v17, v18}];
      bytes = v11->_bytes;
      v11->_bytes = v12;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __33__TKSmartCardATR_initWithSource___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  v3 = v2;
  if ((v2 & 0x80000000) == 0)
  {
    v5 = v2;
    [*(a1 + 32) appendBytes:&v5 length:1];
  }

  return v3;
}

- (id)parseFromSource:(id)source
{
  v24 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  if (((sourceCopy[2])() & 0x80000000) != 0 || (v5 = sourceCopy[2](sourceCopy), v5 < 0))
  {
    selfCopy = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v23 = v5 & 0xF0;
    v8 = v5 & 0xF;
    v22 = 1;
    do
    {
      v9 = v7;
      v10 = [[TKSmartCardATRInterfaceGroup alloc] initWithProtocol:v7];
      v21 = v7;
      v11 = [(TKSmartCardATRInterfaceGroup *)v10 parseWithY:&v23 toProtocol:&v21 fromSource:sourceCopy hasNext:&v22];
      v7 = v21;

      if (!v11)
      {
        selfCopy = 0;
        goto LABEL_18;
      }

      [(NSMutableArray *)self->_interfaces addObject:v11];
      if (v7)
      {
        v6 |= [v7 unsignedIntegerValue] != 1;
      }
    }

    while ((v22 & 1) != 0);
    if (v8)
    {
      v12 = v8;
      v13 = &v20 - ((v8 + 15) & 0x10);
      while (1)
      {
        v14 = sourceCopy[2](sourceCopy);
        if (v14 < 0)
        {
          break;
        }

        *v13++ = v14;
        if (!--v12)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      v15 = [MEMORY[0x1E695DEF0] dataWithBytes:&v20 - ((v8 + 15) & 0x10) length:v8];
      historicalBytes = self->_historicalBytes;
      self->_historicalBytes = v15;

      if ((v6 & 1) == 0 || (sourceCopy[2](sourceCopy) & 0x80000000) == 0)
      {
        selfCopy = self;
        goto LABEL_18;
      }
    }

    selfCopy = 0;
LABEL_18:
  }

  v18 = *MEMORY[0x1E69E9840];

  return selfCopy;
}

- (TKSmartCardATRInterfaceGroup)interfaceGroupAtIndex:(NSInteger)index
{
  if ([(NSMutableArray *)self->_interfaces count]>= index)
  {
    v5 = [(NSMutableArray *)self->_interfaces objectAtIndex:index - 1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (TKSmartCardATRInterfaceGroup)interfaceGroupForProtocol:(TKSmartCardProtocol)protocol
{
  if (protocol == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  for (i = self->_interfaces; v5 < [(NSMutableArray *)i count]; i = self->_interfaces)
  {
    v7 = [(NSMutableArray *)self->_interfaces objectAtIndex:v5];
    protocol = [v7 protocol];
    unsignedIntegerValue = [protocol unsignedIntegerValue];

    if (unsignedIntegerValue == protocol)
    {
      goto LABEL_9;
    }

    ++v5;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (NSArray)protocols
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableArray count](self->_interfaces, "count")}];
  v4 = [(TKSmartCardATR *)self interfaceGroupAtIndex:2];
  v5 = [v4 TA];

  if (v5)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{1 << (objc_msgSend(v5, "unsignedCharValue") & 0xF)}];
    [v3 addObject:v6];
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = self->_interfaces;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          protocol = [v12 protocol];
          if (protocol)
          {
            v14 = protocol;
            protocol2 = [v12 protocol];
            unsignedIntegerValue = [protocol2 unsignedIntegerValue];

            if (!(unsignedIntegerValue >> 15))
            {
              protocol3 = [v12 protocol];
              v18 = [v3 containsObject:protocol3];

              if ((v18 & 1) == 0)
              {
                protocol4 = [v12 protocol];
                unsignedIntegerValue2 = [protocol4 unsignedIntegerValue];

                protocol5 = [v12 protocol];
                if (unsignedIntegerValue2 == 2)
                {
                  [v3 insertObject:protocol5 atIndex:0];
                }

                else
                {
                  [v3 addObject:protocol5];
                }
              }
            }
          }
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v9);
    }

    if (![v3 count])
    {
      [v3 addObject:&unk_1F5A851B0];
    }
  }

  v22 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_formatHexData:(id)data to:(id)to
{
  dataCopy = data;
  toCopy = to;
  if (!toCopy)
  {
    toCopy = [MEMORY[0x1E696AD60] string];
  }

  if ([dataCopy length])
  {
    v7 = 0;
    do
    {
      [toCopy appendFormat:@"%02x", *(objc_msgSend(dataCopy, "bytes") + v7++)];
    }

    while (v7 < [dataCopy length]);
  }

  return toCopy;
}

- (id)description
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<TKSmartCardATR: %p %02x", self, *-[NSData bytes](self->_bytes, "bytes")];
  if ([(NSMutableArray *)self->_interfaces count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSMutableArray *)self->_interfaces objectAtIndex:v4];
      v6 = [v5 description];
      [v3 appendFormat:@" %@", v6];

      ++v4;
    }

    while (v4 < [(NSMutableArray *)self->_interfaces count]);
  }

  [v3 appendString:@";"];
  historicalRecords = [(TKSmartCardATR *)self historicalRecords];
  v8 = historicalRecords;
  if (historicalRecords)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = [historicalRecords countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      v12 = "";
      do
      {
        for (i = 0; i != v10; ++i)
        {
          v14 = v3;
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          v16 = [v15 tag];
          value = [v15 value];
          v18 = [(TKSmartCardATR *)self _formatHexData:value to:0];
          v22 = v16;
          v3 = v14;
          [v14 appendFormat:@"%s%x(%@)", v12, v22, v18];

          v12 = " ";
        }

        v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v19 = [(TKSmartCardATR *)self _formatHexData:self->_historicalBytes to:v3];
  }

  [v3 appendString:@">"];

  v20 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSArray)historicalRecords
{
  if (![(NSData *)self->_historicalBytes length])
  {
LABEL_5:
    v5 = 0;
    goto LABEL_10;
  }

  bytes = [(NSData *)self->_historicalBytes bytes];
  v4 = [(NSData *)self->_historicalBytes length];
  v5 = 0;
  v6 = v4 - 1;
  v9 = *bytes;
  v8 = bytes + 1;
  v7 = v9;
  if (v9 != 128)
  {
    if (v7)
    {
      goto LABEL_10;
    }

    if (v6 < 3)
    {
      goto LABEL_5;
    }

    v6 = v4 - 4;
    v10 = [TKCompactTLVRecord alloc];
    v11 = [MEMORY[0x1E695DEF0] dataWithBytes:&v8[v6] length:3];
    v5 = [(TKCompactTLVRecord *)v10 initWithTag:8 value:v11];
  }

  v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v8 length:v6 freeWhenDone:0];
  v13 = [(TKTLVRecord *)TKCompactTLVRecord sequenceOfRecordsFromData:v12];
  v14 = v13;
  if (v5)
  {
    v15 = [(TKCompactTLVRecord *)v13 arrayByAddingObject:v5];

    v14 = v15;
  }

  v5 = v14;
LABEL_10:

  return v5;
}

@end