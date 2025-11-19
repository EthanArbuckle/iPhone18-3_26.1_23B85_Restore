@interface APDU
+ (id)APDUWithCLA:(unsigned __int8)a3 INS:(unsigned __int8)a4 P1:(unsigned __int8)a5 P2:(unsigned __int8)a6 dataField:(id)a7 Le:(id)a8;
- (APDU)initWithData:(id)a3;
- (NSData)dataField;
- (NSNumber)Lc;
- (NSNumber)Le;
- (id)description;
- (unsigned)C5;
- (unsigned)CLA;
- (unsigned)INS;
- (unsigned)P1;
- (unsigned)P2;
@end

@implementation APDU

+ (id)APDUWithCLA:(unsigned __int8)a3 INS:(unsigned __int8)a4 P1:(unsigned __int8)a5 P2:(unsigned __int8)a6 dataField:(id)a7 Le:(id)a8
{
  v13 = a7;
  v14 = a8;
  if ([v13 length] <= 0xFF && objc_msgSend(v14, "unsignedIntValue") < 0x101)
  {
    v15 = 0;
    if (v13)
    {
      goto LABEL_4;
    }

LABEL_9:
    v17 = 4;
    v18 = 3;
    goto LABEL_10;
  }

  v15 = 1;
  if (!v13)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (v15)
  {
    v16 = 7;
  }

  else
  {
    v16 = 5;
  }

  v17 = [v13 length] + v16;
  v18 = 2;
LABEL_10:
  if (!v15)
  {
    v18 = 1;
  }

  if (!v14)
  {
    v18 = 0;
  }

  v19 = [NSMutableData dataWithLength:v18 + v17];
  *[v19 mutableBytes] = a3;
  *([v19 mutableBytes] + 1) = a4;
  *([v19 mutableBytes] + 2) = a5;
  *([v19 mutableBytes] + 3) = a6;
  if (v13)
  {
    if ([v13 length] >> 16 || !objc_msgSend(v13, "length"))
    {
      [NSException raise:NSInvalidArgumentException format:@"dataField length should be between 1 and 65535"];
      if (v15)
      {
        goto LABEL_18;
      }
    }

    else if (v15)
    {
LABEL_18:
      *([v19 mutableBytes] + 4) = 0;
      v20 = [v13 length];
      *([v19 mutableBytes] + 5) = v20;
      v21 = 7;
      goto LABEL_21;
    }

    v22 = [v13 length];
    *([v19 mutableBytes] + 4) = v22;
    v21 = 5;
LABEL_21:
    memcpy([v19 mutableBytes] + v21, objc_msgSend(v13, "bytes"), objc_msgSend(v13, "length"));
    v23 = [v13 length] + v21;
    if (!v14)
    {
      goto LABEL_36;
    }

    goto LABEL_24;
  }

  v23 = 4;
  if (!v14)
  {
    goto LABEL_36;
  }

LABEL_24:
  if ([v14 unsignedIntValue] > 0x10000)
  {
    [NSException raise:NSInvalidArgumentException format:@"le should be between 0 and 65536"];
  }

  if (v15)
  {
    if (!v13)
    {
      *([v19 mutableBytes] + v23++) = 0;
    }

    if ([v14 unsignedIntValue] >> 16)
    {
      *([v19 mutableBytes] + v23) = 0;
    }

    else
    {
      v24 = [v14 unsignedShortValue];
      *([v19 mutableBytes] + v23) = v24;
    }
  }

  else
  {
    if ([v14 unsignedShortValue] > 0xFF)
    {
      v25 = 0;
    }

    else
    {
      v25 = [v14 unsignedCharValue];
    }

    *([v19 mutableBytes] + v23) = v25;
  }

LABEL_36:
  v26 = [[APDU alloc] initWithData:v19];

  return v26;
}

- (APDU)initWithData:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = APDU;
  v6 = [(APDU *)&v23 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_39;
  }

  objc_storeStrong(&v6->_data, a3);
  *(v7 + 24) = 2;
  if ([v5 length] == 4)
  {
    *(v7 + 16) = 0;
    goto LABEL_39;
  }

  if ([v5 length] == 5)
  {
    *(v7 + 16) = 1;
    if ([v7 C5])
    {
      v8 = [v7 C5] + 2;
    }

    else
    {
      v8 = 258;
    }

    *(v7 + 24) = v8;
LABEL_39:
    v21 = sub_100008B80();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_1000163B8(v7, v21);
    }

    v17 = v7;
    goto LABEL_42;
  }

  if ([v7 C5])
  {
    v9 = [v5 length];
    if (v9 == ([v7 C5] + 5))
    {
      v10 = 3;
LABEL_10:
      *(v7 + 16) = v10;
      *(v7 + 24) = 0;
      goto LABEL_39;
    }
  }

  if ([v7 C5])
  {
    v11 = [v5 length];
    if (v11 == ([v7 C5] + 6))
    {
      *(v7 + 16) = 5;
      v12 = [v7 Le];
      if ([v12 unsignedCharValue])
      {
        v13 = [v7 Le];
        v14 = [v13 unsignedCharValue];
LABEL_15:
        v15 = v14 + 2;
LABEL_20:
        *(v7 + 24) = v15;

LABEL_38:
        goto LABEL_39;
      }

      v20 = 258;
LABEL_37:
      *(v7 + 24) = v20;
      goto LABEL_38;
    }
  }

  if (![v7 C5] && objc_msgSend(v5, "length") == 7)
  {
    *(v7 + 16) = 2;
    v12 = [v7 Le];
    if ([v12 unsignedShortValue])
    {
      v13 = [v7 Le];
      v15 = [v13 unsignedShortValue];
      goto LABEL_20;
    }

LABEL_36:
    v20 = 65538;
    goto LABEL_37;
  }

  if (![v7 C5])
  {
    if ([v7 C6C7])
    {
      v18 = [v5 length];
      if (v18 == ([v7 C6C7] + 7))
      {
        v10 = 4;
        goto LABEL_10;
      }
    }
  }

  if (![v7 C5])
  {
    if ([v7 C6C7])
    {
      v19 = [v5 length];
      if (v19 == ([v7 C6C7] + 9))
      {
        *(v7 + 16) = 6;
        v12 = [v7 Le];
        if ([v12 unsignedShortValue])
        {
          v13 = [v7 Le];
          v14 = [v13 unsignedShortValue];
          goto LABEL_15;
        }

        goto LABEL_36;
      }
    }
  }

  v16 = sub_100008B80();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_100016340((v7 + 8));
  }

  v17 = 0;
LABEL_42:

  return v17;
}

- (id)description
{
  v3 = [(APDU *)self APDUCase];
  if (v3 > 6)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(&off_100024840 + v3);
  }

  v4 = [(APDU *)self maxPayload];
  v5 = [(APDU *)self CLA];
  v6 = [(APDU *)self INS];
  v7 = [(APDU *)self P1];
  v8 = [(APDU *)self P2];
  v9 = [(APDU *)self Lc];
  v10 = [(APDU *)self dataField];
  v11 = [v10 length];
  v12 = [(APDU *)self Le];
  v13 = [NSString stringWithFormat:@"case: %@ maxPayload: %lu\nCLA: 0x%.2x  INS: 0x%.2x  P1: 0x%.2x P2: 0x%.2x Lc: %@ dataLen: %lu le: %@", v15, v4, v5, v6, v7, v8, v9, v11, v12];

  return v13;
}

- (unsigned)C5
{
  v3 = 0;
  [(NSData *)self->_data getBytes:&v3 range:4, 1];
  return v3;
}

- (unsigned)CLA
{
  v2 = [(APDU *)self data];
  v3 = *[v2 bytes];

  return v3;
}

- (unsigned)INS
{
  v2 = [(APDU *)self data];
  v3 = *([v2 bytes] + 1);

  return v3;
}

- (unsigned)P1
{
  v2 = [(APDU *)self data];
  v3 = *([v2 bytes] + 2);

  return v3;
}

- (unsigned)P2
{
  v2 = [(APDU *)self data];
  v3 = *([v2 bytes] + 3);

  return v3;
}

- (NSData)dataField
{
  if ([(APDU *)self APDUCase]== 4 || [(APDU *)self APDUCase]== 6)
  {
    v3 = 7;
LABEL_4:
    data = self->_data;
    v5 = [(APDU *)self Lc];
    v6 = -[NSData subdataWithRange:](data, "subdataWithRange:", v3, [v5 unsignedIntValue]);

    goto LABEL_5;
  }

  if ([(APDU *)self APDUCase]== 3 || [(APDU *)self APDUCase]== 5)
  {
    v3 = 5;
    goto LABEL_4;
  }

  v6 = 0;
LABEL_5:

  return v6;
}

- (NSNumber)Lc
{
  if ([(APDU *)self APDUCase]== 4 || [(APDU *)self APDUCase]== 6)
  {
    v3 = [NSNumber numberWithUnsignedShort:[(APDU *)self C6C7]];
  }

  else if ([(APDU *)self APDUCase]== 3 || [(APDU *)self APDUCase]== 5)
  {
    v3 = [NSNumber numberWithUnsignedChar:[(APDU *)self C5]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSNumber)Le
{
  if ([(APDU *)self APDUCase]== 2 || [(APDU *)self APDUCase]== 6)
  {
    v6 = 0;
    [(NSData *)self->_data getBytes:&v6 range:[(NSData *)self->_data length]- 2, 2];
    v3 = [NSNumber numberWithUnsignedShort:v6];
  }

  else if ([(APDU *)self APDUCase]== 1 || [(APDU *)self APDUCase]== 5)
  {
    v5 = 0;
    [(NSData *)self->_data getBytes:&v5 range:[(NSData *)self->_data length]- 1, 1];
    v3 = [NSNumber numberWithUnsignedChar:v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end