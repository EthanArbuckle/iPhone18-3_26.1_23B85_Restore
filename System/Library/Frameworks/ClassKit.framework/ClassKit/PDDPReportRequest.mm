@interface PDDPReportRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addRequestItems:(id)items;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasMaxReportItemsCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation PDDPReportRequest

- (void)addRequestItems:(id)items
{
  itemsCopy = items;
  requestItems = self->_requestItems;
  v8 = itemsCopy;
  if (!requestItems)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_requestItems;
    self->_requestItems = v6;

    itemsCopy = v8;
    requestItems = self->_requestItems;
  }

  [(NSMutableArray *)requestItems addObject:itemsCopy];
}

- (void)setHasMaxReportItemsCount:(BOOL)count
{
  if (count)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPReportRequest;
  v3 = [(PDDPReportRequest *)&v7 description];
  dictionaryRepresentation = [(PDDPReportRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ([(NSMutableArray *)self->_requestItems count])
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_requestItems, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = self->_requestItems;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"request_items"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v12 = [NSNumber numberWithInt:self->_maxReportItemsCount];
    [v3 setObject:v12 forKey:@"max_report_items_count"];

    has = self->_has;
  }

  if (has)
  {
    v13 = [NSNumber numberWithInt:self->_maxPayloadSize];
    [v3 setObject:v13 forKey:@"max_payload_size"];
  }

  batchPointer = self->_batchPointer;
  if (batchPointer)
  {
    [v3 setObject:batchPointer forKey:@"batch_pointer"];
  }

  return v3;
}

- (BOOL)readFrom:(id)from
{
  position = [from position];
  if (position < [from length])
  {
    while (1)
    {
      if ([from hasError])
      {
        return [from hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v34[0]) = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:v34 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v34[0] & 0x7F) << v6;
        if ((v34[0] & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        v12 = v7++ >= 9;
        if (v12)
        {
          v13 = 0;
          goto LABEL_15;
        }
      }

      v13 = [from hasError] ? 0 : v8;
LABEL_15:
      if (([from hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [from hasError] ^ 1;
      }

      v14 = v13 >> 3;
      if ((v13 >> 3) > 2)
      {
        break;
      }

      if (v14 != 1)
      {
        if (v14 == 2)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *&self->_has |= 2u;
          while (1)
          {
            LOBYTE(v34[0]) = 0;
            v18 = [from position] + 1;
            if (v18 >= [from position] && (v19 = objc_msgSend(from, "position") + 1, v19 <= objc_msgSend(from, "length")))
            {
              data2 = [from data];
              [data2 getBytes:v34 range:{objc_msgSend(from, "position"), 1}];

              [from setPosition:{objc_msgSend(from, "position") + 1}];
            }

            else
            {
              [from _setError];
            }

            v17 |= (v34[0] & 0x7F) << v15;
            if ((v34[0] & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v12 = v16++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_49;
            }
          }

          if ([from hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_49:
          v31 = 20;
LABEL_54:
          *&self->PBRequest_opaque[v31] = v21;
          goto LABEL_55;
        }

LABEL_32:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_55;
      }

      v24 = objc_alloc_init(PDDPReportRequestItem);
      [(PDDPReportRequest *)self addRequestItems:v24];
      v34[0] = 0;
      v34[1] = 0;
      if (!PBReaderPlaceMark() || !sub_1000E6EA0(v24, from))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_55:
      position2 = [from position];
      if (position2 >= [from length])
      {
        return [from hasError] ^ 1;
      }
    }

    if (v14 == 3)
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      *&self->_has |= 1u;
      while (1)
      {
        LOBYTE(v34[0]) = 0;
        v28 = [from position] + 1;
        if (v28 >= [from position] && (v29 = objc_msgSend(from, "position") + 1, v29 <= objc_msgSend(from, "length")))
        {
          data3 = [from data];
          [data3 getBytes:v34 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v27 |= (v34[0] & 0x7F) << v25;
        if ((v34[0] & 0x80) == 0)
        {
          break;
        }

        v25 += 7;
        v12 = v26++ >= 9;
        if (v12)
        {
          v21 = 0;
          goto LABEL_53;
        }
      }

      if ([from hasError])
      {
        v21 = 0;
      }

      else
      {
        v21 = v27;
      }

LABEL_53:
      v31 = 16;
      goto LABEL_54;
    }

    if (v14 == 4)
    {
      v22 = PBReaderReadData();
      batchPointer = self->_batchPointer;
      self->_batchPointer = v22;

      goto LABEL_55;
    }

    goto LABEL_32;
  }

  return [from hasError] ^ 1;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_requestItems;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    maxReportItemsCount = self->_maxReportItemsCount;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if (has)
  {
    maxPayloadSize = self->_maxPayloadSize;
    PBDataWriterWriteInt32Field();
  }

  if (self->_batchPointer)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(PDDPReportRequest *)self requestItemsCount])
  {
    [toCopy clearRequestItems];
    requestItemsCount = [(PDDPReportRequest *)self requestItemsCount];
    if (requestItemsCount)
    {
      v5 = requestItemsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PDDPReportRequest *)self requestItemsAtIndex:i];
        [toCopy addRequestItems:v7];
      }
    }
  }

  has = self->_has;
  v9 = toCopy;
  if ((has & 2) != 0)
  {
    *(toCopy + 5) = self->_maxReportItemsCount;
    *(toCopy + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 4) = self->_maxPayloadSize;
    *(toCopy + 32) |= 1u;
  }

  if (self->_batchPointer)
  {
    [toCopy setBatchPointer:?];
    v9 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_requestItems;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v16 + 1) + 8 * i) copyWithZone:{zone, v16}];
        [v5 addRequestItems:v11];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 5) = self->_maxReportItemsCount;
    *(v5 + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 4) = self->_maxPayloadSize;
    *(v5 + 32) |= 1u;
  }

  v13 = [(NSData *)self->_batchPointer copyWithZone:zone, v16];
  v14 = *(v5 + 1);
  *(v5 + 1) = v13;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  requestItems = self->_requestItems;
  if (requestItems | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)requestItems isEqual:?])
    {
      goto LABEL_16;
    }
  }

  v6 = *(equalCopy + 32);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_maxReportItemsCount != *(equalCopy + 5))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_maxPayloadSize != *(equalCopy + 4))
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 32))
  {
    goto LABEL_16;
  }

  batchPointer = self->_batchPointer;
  if (batchPointer | *(equalCopy + 1))
  {
    v8 = [(NSData *)batchPointer isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_17:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_requestItems hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_maxReportItemsCount;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5 ^ [(NSData *)self->_batchPointer hash];
  }

  v4 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_maxPayloadSize;
  return v4 ^ v3 ^ v5 ^ [(NSData *)self->_batchPointer hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(fromCopy + 3);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(PDDPReportRequest *)self addRequestItems:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *(fromCopy + 32);
  if ((v10 & 2) != 0)
  {
    self->_maxReportItemsCount = *(fromCopy + 5);
    *&self->_has |= 2u;
    v10 = *(fromCopy + 32);
  }

  if (v10)
  {
    self->_maxPayloadSize = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    [(PDDPReportRequest *)self setBatchPointer:?];
  }
}

@end