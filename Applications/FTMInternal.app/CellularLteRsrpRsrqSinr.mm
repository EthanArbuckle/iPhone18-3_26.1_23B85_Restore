@interface CellularLteRsrpRsrqSinr
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addInstValues:(id)values;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasNumSubs:(BOOL)subs;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation CellularLteRsrpRsrqSinr

- (void)addInstValues:(id)values
{
  valuesCopy = values;
  instValues = self->_instValues;
  v8 = valuesCopy;
  if (!instValues)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_instValues;
    self->_instValues = v6;

    valuesCopy = v8;
    instValues = self->_instValues;
  }

  [(NSMutableArray *)instValues addObject:valuesCopy];
}

- (void)setHasNumSubs:(BOOL)subs
{
  if (subs)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasSubsId:(BOOL)id
{
  if (id)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularLteRsrpRsrqSinr;
  v3 = [(CellularLteRsrpRsrqSinr *)&v7 description];
  dictionaryRepresentation = [(CellularLteRsrpRsrqSinr *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v4 forKey:@"timestamp"];
  }

  callId = self->_callId;
  if (callId)
  {
    [v3 setObject:callId forKey:@"call_id"];
  }

  avgValues = self->_avgValues;
  if (avgValues)
  {
    dictionaryRepresentation = [(RsrpRsrqSinr *)avgValues dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"avg_values"];
  }

  if ([(NSMutableArray *)self->_instValues count])
  {
    v8 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_instValues, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = self->_instValues;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation2 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:dictionaryRepresentation2];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKey:@"inst_values"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v16 = [NSNumber numberWithUnsignedInt:self->_numSubs];
    [v3 setObject:v16 forKey:@"num_subs"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v17 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v17 forKey:@"subs_id"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_callId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    numSubs = self->_numSubs;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
  }

  if (self->_avgValues)
  {
    PBDataWriterWriteSubmessage();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = self->_instValues;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 48) |= 1u;
  }

  v10 = toCopy;
  if (self->_callId)
  {
    [toCopy setCallId:?];
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 10) = self->_numSubs;
    *(toCopy + 48) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(toCopy + 11) = self->_subsId;
    *(toCopy + 48) |= 4u;
  }

  if (self->_avgValues)
  {
    [v10 setAvgValues:?];
  }

  if ([(CellularLteRsrpRsrqSinr *)self instValuesCount])
  {
    [v10 clearInstValues];
    instValuesCount = [(CellularLteRsrpRsrqSinr *)self instValuesCount];
    if (instValuesCount)
    {
      v7 = instValuesCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(CellularLteRsrpRsrqSinr *)self instValuesAtIndex:i];
        [v10 addInstValues:v9];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 48) |= 1u;
  }

  v7 = [(NSString *)self->_callId copyWithZone:zone];
  v8 = v6[3];
  v6[3] = v7;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 10) = self->_numSubs;
    *(v6 + 48) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v6 + 11) = self->_subsId;
    *(v6 + 48) |= 4u;
  }

  v10 = [(RsrpRsrqSinr *)self->_avgValues copyWithZone:zone];
  v11 = v6[2];
  v6[2] = v10;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_instValues;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v19 + 1) + 8 * i) copyWithZone:{zone, v19}];
        [v6 addInstValues:v17];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  has = self->_has;
  v6 = *(equalCopy + 48);
  if (has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_24;
    }
  }

  else if (*(equalCopy + 48))
  {
    goto LABEL_24;
  }

  callId = self->_callId;
  if (callId | *(equalCopy + 3))
  {
    if (![(NSString *)callId isEqual:?])
    {
LABEL_24:
      v11 = 0;
      goto LABEL_25;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 48);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_numSubs != *(equalCopy + 10))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
    goto LABEL_24;
  }

  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 48) & 4) == 0 || self->_subsId != *(equalCopy + 11))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 48) & 4) != 0)
  {
    goto LABEL_24;
  }

  avgValues = self->_avgValues;
  if (avgValues | *(equalCopy + 2) && ![(RsrpRsrqSinr *)avgValues isEqual:?])
  {
    goto LABEL_24;
  }

  instValues = self->_instValues;
  if (instValues | *(equalCopy + 4))
  {
    v11 = [(NSMutableArray *)instValues isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_25:

  return v11;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_callId hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_numSubs;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v5 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v6 = 2654435761 * self->_subsId;
LABEL_9:
  v7 = v4 ^ v3 ^ v5 ^ v6 ^ [(RsrpRsrqSinr *)self->_avgValues hash];
  return v7 ^ [(NSMutableArray *)self->_instValues hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[6])
  {
    self->_timestamp = fromCopy[1];
    *&self->_has |= 1u;
  }

  if (fromCopy[3])
  {
    [(CellularLteRsrpRsrqSinr *)self setCallId:?];
  }

  v6 = *(v5 + 48);
  if ((v6 & 2) != 0)
  {
    self->_numSubs = *(v5 + 10);
    *&self->_has |= 2u;
    v6 = *(v5 + 48);
  }

  if ((v6 & 4) != 0)
  {
    self->_subsId = *(v5 + 11);
    *&self->_has |= 4u;
  }

  avgValues = self->_avgValues;
  v8 = *(v5 + 2);
  if (avgValues)
  {
    if (v8)
    {
      [(RsrpRsrqSinr *)avgValues mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(CellularLteRsrpRsrqSinr *)self setAvgValues:?];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = *(v5 + 4);
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(CellularLteRsrpRsrqSinr *)self addInstValues:*(*(&v14 + 1) + 8 * i), v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

@end