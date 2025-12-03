@interface PDDPReportResponse
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addReports:(id)reports;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPReportResponse

- (void)addReports:(id)reports
{
  reportsCopy = reports;
  reports = self->_reports;
  v8 = reportsCopy;
  if (!reports)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_reports;
    self->_reports = v6;

    reportsCopy = v8;
    reports = self->_reports;
  }

  [(NSMutableArray *)reports addObject:reportsCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPReportResponse;
  v3 = [(PDDPReportResponse *)&v7 description];
  dictionaryRepresentation = [(PDDPReportResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ([(NSMutableArray *)self->_reports count])
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_reports, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = self->_reports;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"reports"];
  }

  nextBatchPointer = self->_nextBatchPointer;
  if (nextBatchPointer)
  {
    [v3 setObject:nextBatchPointer forKey:@"next_batch_pointer"];
  }

  status = self->_status;
  if (status)
  {
    dictionaryRepresentation2 = [(PDDPStatus *)status dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"status"];
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
        LOBYTE(v19) = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v19 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v19 & 0x7F) << v6;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        if (v7++ >= 9)
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
      if ((v13 >> 3) == 3)
      {
        break;
      }

      if (v14 == 2)
      {
        v16 = PBReaderReadData();
        nextBatchPointer = self->_nextBatchPointer;
        self->_nextBatchPointer = v16;
        goto LABEL_27;
      }

      if (v14 == 1)
      {
        nextBatchPointer = objc_alloc_init(PDDPHandoutReportItem);
        [(PDDPReportResponse *)self addReports:nextBatchPointer];
        v19 = 0;
        v20 = 0;
        if (!PBReaderPlaceMark() || !sub_100167D6C(nextBatchPointer, from))
        {
          goto LABEL_31;
        }

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      position2 = [from position];
      if (position2 >= [from length])
      {
        return [from hasError] ^ 1;
      }
    }

    nextBatchPointer = objc_alloc_init(PDDPStatus);
    objc_storeStrong(&self->_status, nextBatchPointer);
    v19 = 0;
    v20 = 0;
    if (!PBReaderPlaceMark() || !sub_1000E2FD8(nextBatchPointer, from))
    {
LABEL_31:

      return 0;
    }

LABEL_26:
    PBReaderRecallMark();
LABEL_27:

    goto LABEL_29;
  }

  return [from hasError] ^ 1;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_reports;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (self->_nextBatchPointer)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_status)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(PDDPReportResponse *)self reportsCount])
  {
    [toCopy clearReports];
    reportsCount = [(PDDPReportResponse *)self reportsCount];
    if (reportsCount)
    {
      v5 = reportsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PDDPReportResponse *)self reportsAtIndex:i];
        [toCopy addReports:v7];
      }
    }
  }

  if (self->_nextBatchPointer)
  {
    [toCopy setNextBatchPointer:?];
  }

  v8 = toCopy;
  if (self->_status)
  {
    [toCopy setStatus:?];
    v8 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = self->_reports;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v17 + 1) + 8 * v10) copyWithZone:{zone, v17}];
        [v5 addReports:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v12 = [(NSData *)self->_nextBatchPointer copyWithZone:zone];
  v13 = v5[1];
  v5[1] = v12;

  v14 = [(PDDPStatus *)self->_status copyWithZone:zone];
  v15 = v5[3];
  v5[3] = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((reports = self->_reports, !(reports | equalCopy[2])) || -[NSMutableArray isEqual:](reports, "isEqual:")) && ((nextBatchPointer = self->_nextBatchPointer, !(nextBatchPointer | equalCopy[1])) || -[NSData isEqual:](nextBatchPointer, "isEqual:")))
  {
    status = self->_status;
    if (status | equalCopy[3])
    {
      v8 = [(PDDPStatus *)status isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_reports hash];
  v4 = [(NSData *)self->_nextBatchPointer hash]^ v3;
  return v4 ^ [(PDDPStatus *)self->_status hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = fromCopy[2];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(PDDPReportResponse *)self addReports:*(*(&v12 + 1) + 8 * i), v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if (fromCopy[1])
  {
    [(PDDPReportResponse *)self setNextBatchPointer:?];
  }

  status = self->_status;
  v11 = fromCopy[3];
  if (status)
  {
    if (v11)
    {
      [(PDDPStatus *)status mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(PDDPReportResponse *)self setStatus:?];
  }
}

@end