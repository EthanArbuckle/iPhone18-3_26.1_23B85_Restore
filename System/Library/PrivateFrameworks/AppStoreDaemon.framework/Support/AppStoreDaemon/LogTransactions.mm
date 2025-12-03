@interface LogTransactions
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)formattedText;
- (void)writeTo:(id)to;
@end

@implementation LogTransactions

- (id)formattedText
{
  v3 = +[NSMutableString string];
  if (self && [(NSMutableArray *)self->_transactionIDs count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_transactionIDs;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [v3 appendFormat:@"   - %@\n", *(*(&v11 + 1) + 8 * i)];
        }

        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }

  else
  {
    [v3 appendFormat:@"   - <no transactions>\n"];
  }

  v9 = [v3 copy];

  return v9;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = LogTransactions;
  v3 = [(LogTransactions *)&v7 description];
  dictionaryRepresentation = [(LogTransactions *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  transactionIDs = self->_transactionIDs;
  if (transactionIDs)
  {
    [v3 setObject:transactionIDs forKey:@"transactionID"];
  }

  return v4;
}

- (BOOL)readFrom:(id)from
{
  for (i = from; ; i = from)
  {
    position = [i position];
    if (position >= [from length] || (objc_msgSend(from, "hasError") & 1) != 0)
    {
      break;
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v18 = 0;
      v10 = [from position] + 1;
      if (v10 >= [from position] && (v11 = objc_msgSend(from, "position") + 1, v11 <= objc_msgSend(from, "length")))
      {
        data = [from data];
        [data getBytes:&v18 range:{objc_msgSend(from, "position"), 1}];

        [from setPosition:{objc_msgSend(from, "position") + 1}];
      }

      else
      {
        [from _setError];
      }

      v9 |= (v18 & 0x7F) << v7;
      if ((v18 & 0x80) == 0)
      {
        break;
      }

      v7 += 7;
      if (v8++ >= 9)
      {
        v14 = 0;
        goto LABEL_16;
      }
    }

    v14 = [from hasError] ? 0 : v9;
LABEL_16:
    if (([from hasError] & 1) != 0 || (v14 & 7) == 4)
    {
      break;
    }

    if ((v14 >> 3) == 1)
    {
      v15 = PBReaderReadString();
      if (v15)
      {
        sub_1004046FC(self, v15);
      }
    }

    else
    {
      v16 = PBReaderSkipValueWithTag();
      if (!v16)
      {
        return v16;
      }
    }
  }

  LOBYTE(v16) = [from hasError] ^ 1;
  return v16;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_transactionIDs;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_transactionIDs;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) copyWithZone:{zone, v13}];
        sub_1004046FC(v5, v11);

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    transactionIDs = self->_transactionIDs;
    if (transactionIDs | equalCopy[1])
    {
      v6 = [(NSMutableArray *)transactionIDs isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end