@interface PDDPReportRequest
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addRequestItems:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMaxReportItemsCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPReportRequest

- (void)addRequestItems:(id)a3
{
  v4 = a3;
  requestItems = self->_requestItems;
  v8 = v4;
  if (!requestItems)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_requestItems;
    self->_requestItems = v6;

    v4 = v8;
    requestItems = self->_requestItems;
  }

  [(NSMutableArray *)requestItems addObject:v4];
}

- (void)setHasMaxReportItemsCount:(BOOL)a3
{
  if (a3)
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
  v4 = [(PDDPReportRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

          v10 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
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

- (BOOL)readFrom:(id)a3
{
  v5 = [a3 position];
  if (v5 < [a3 length])
  {
    while (1)
    {
      if ([a3 hasError])
      {
        return [a3 hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v34[0]) = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:v34 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
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

      v13 = [a3 hasError] ? 0 : v8;
LABEL_15:
      if (([a3 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [a3 hasError] ^ 1;
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
            v18 = [a3 position] + 1;
            if (v18 >= [a3 position] && (v19 = objc_msgSend(a3, "position") + 1, v19 <= objc_msgSend(a3, "length")))
            {
              v20 = [a3 data];
              [v20 getBytes:v34 range:{objc_msgSend(a3, "position"), 1}];

              [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
            }

            else
            {
              [a3 _setError];
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

          if ([a3 hasError])
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
      if (!PBReaderPlaceMark() || !sub_1000E6EA0(v24, a3))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_55:
      v32 = [a3 position];
      if (v32 >= [a3 length])
      {
        return [a3 hasError] ^ 1;
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
        v28 = [a3 position] + 1;
        if (v28 >= [a3 position] && (v29 = objc_msgSend(a3, "position") + 1, v29 <= objc_msgSend(a3, "length")))
        {
          v30 = [a3 data];
          [v30 getBytes:v34 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
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

      if ([a3 hasError])
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

  return [a3 hasError] ^ 1;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  v10 = a3;
  if ([(PDDPReportRequest *)self requestItemsCount])
  {
    [v10 clearRequestItems];
    v4 = [(PDDPReportRequest *)self requestItemsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PDDPReportRequest *)self requestItemsAtIndex:i];
        [v10 addRequestItems:v7];
      }
    }
  }

  has = self->_has;
  v9 = v10;
  if ((has & 2) != 0)
  {
    *(v10 + 5) = self->_maxReportItemsCount;
    *(v10 + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v10 + 4) = self->_maxPayloadSize;
    *(v10 + 32) |= 1u;
  }

  if (self->_batchPointer)
  {
    [v10 setBatchPointer:?];
    v9 = v10;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

        v11 = [*(*(&v16 + 1) + 8 * i) copyWithZone:{a3, v16}];
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

  v13 = [(NSData *)self->_batchPointer copyWithZone:a3, v16];
  v14 = *(v5 + 1);
  *(v5 + 1) = v13;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  requestItems = self->_requestItems;
  if (requestItems | *(v4 + 3))
  {
    if (![(NSMutableArray *)requestItems isEqual:?])
    {
      goto LABEL_16;
    }
  }

  v6 = *(v4 + 32);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_maxReportItemsCount != *(v4 + 5))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_maxPayloadSize != *(v4 + 4))
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 32))
  {
    goto LABEL_16;
  }

  batchPointer = self->_batchPointer;
  if (batchPointer | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(v4 + 3);
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

  v10 = *(v4 + 32);
  if ((v10 & 2) != 0)
  {
    self->_maxReportItemsCount = *(v4 + 5);
    *&self->_has |= 2u;
    v10 = *(v4 + 32);
  }

  if (v10)
  {
    self->_maxPayloadSize = *(v4 + 4);
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    [(PDDPReportRequest *)self setBatchPointer:?];
  }
}

@end