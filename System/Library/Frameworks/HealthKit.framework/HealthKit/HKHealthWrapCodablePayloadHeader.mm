@interface HKHealthWrapCodablePayloadHeader
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addKeyValuePairs:(id)pairs;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasStartDate:(BOOL)date;
- (void)writeTo:(id)to;
@end

@implementation HKHealthWrapCodablePayloadHeader

- (void)setHasStartDate:(BOOL)date
{
  if (date)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addKeyValuePairs:(id)pairs
{
  pairsCopy = pairs;
  keyValuePairs = self->_keyValuePairs;
  v8 = pairsCopy;
  if (!keyValuePairs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_keyValuePairs;
    self->_keyValuePairs = v6;

    pairsCopy = v8;
    keyValuePairs = self->_keyValuePairs;
  }

  [(NSMutableArray *)keyValuePairs addObject:pairsCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKHealthWrapCodablePayloadHeader;
  v4 = [(HKHealthWrapCodablePayloadHeader *)&v8 description];
  dictionaryRepresentation = [(HKHealthWrapCodablePayloadHeader *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v27 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  channel = self->_channel;
  if (channel)
  {
    [dictionary setObject:channel forKey:@"channel"];
  }

  payloadType = self->_payloadType;
  if (payloadType)
  {
    [v4 setObject:payloadType forKey:@"payloadType"];
  }

  subjectUUID = self->_subjectUUID;
  if (subjectUUID)
  {
    [v4 setObject:subjectUUID forKey:@"subjectUUID"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_startDate];
    [v4 setObject:v9 forKey:@"startDate"];

    has = self->_has;
  }

  if (has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_endDate];
    [v4 setObject:v10 forKey:@"endDate"];
  }

  payloadIdentifier = self->_payloadIdentifier;
  if (payloadIdentifier)
  {
    [v4 setObject:payloadIdentifier forKey:@"payloadIdentifier"];
  }

  applicationData = self->_applicationData;
  if (applicationData)
  {
    [v4 setObject:applicationData forKey:@"applicationData"];
  }

  if ([(NSMutableArray *)self->_keyValuePairs count])
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_keyValuePairs, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = self->_keyValuePairs;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation = [*(*(&v22 + 1) + 8 * i) dictionaryRepresentation];
          [v13 addObject:dictionaryRepresentation];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v16);
    }

    [v4 setObject:v13 forKey:@"keyValuePairs"];
  }

  v20 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_channel)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_payloadType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_subjectUUID)
  {
    PBDataWriterWriteDataField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    startDate = self->_startDate;
    PBDataWriterWriteInt64Field();
    has = self->_has;
  }

  if (has)
  {
    endDate = self->_endDate;
    PBDataWriterWriteInt64Field();
  }

  if (self->_payloadIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_applicationData)
  {
    PBDataWriterWriteDataField();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_keyValuePairs;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_channel)
  {
    [toCopy setChannel:?];
    toCopy = v10;
  }

  if (self->_payloadType)
  {
    [v10 setPayloadType:?];
    toCopy = v10;
  }

  if (self->_subjectUUID)
  {
    [v10 setSubjectUUID:?];
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 2) = self->_startDate;
    *(toCopy + 72) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = self->_endDate;
    *(toCopy + 72) |= 1u;
  }

  if (self->_payloadIdentifier)
  {
    [v10 setPayloadIdentifier:?];
  }

  if (self->_applicationData)
  {
    [v10 setApplicationData:?];
  }

  if ([(HKHealthWrapCodablePayloadHeader *)self keyValuePairsCount])
  {
    [v10 clearKeyValuePairs];
    keyValuePairsCount = [(HKHealthWrapCodablePayloadHeader *)self keyValuePairsCount];
    if (keyValuePairsCount)
    {
      v7 = keyValuePairsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(HKHealthWrapCodablePayloadHeader *)self keyValuePairsAtIndex:i];
        [v10 addKeyValuePairs:v9];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_channel copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_payloadType copyWithZone:zone];
  v9 = *(v5 + 56);
  *(v5 + 56) = v8;

  v10 = [(NSData *)self->_subjectUUID copyWithZone:zone];
  v11 = *(v5 + 64);
  *(v5 + 64) = v10;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_startDate;
    *(v5 + 72) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_endDate;
    *(v5 + 72) |= 1u;
  }

  v13 = [(NSString *)self->_payloadIdentifier copyWithZone:zone];
  v14 = *(v5 + 48);
  *(v5 + 48) = v13;

  v15 = [(NSData *)self->_applicationData copyWithZone:zone];
  v16 = *(v5 + 24);
  *(v5 + 24) = v15;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = self->_keyValuePairs;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v25 + 1) + 8 * i) copyWithZone:{zone, v25}];
        [v5 addKeyValuePairs:v22];
      }

      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v19);
  }

  v23 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  channel = self->_channel;
  if (channel | *(equalCopy + 4))
  {
    if (![(NSString *)channel isEqual:?])
    {
      goto LABEL_24;
    }
  }

  payloadType = self->_payloadType;
  if (payloadType | *(equalCopy + 7))
  {
    if (![(NSString *)payloadType isEqual:?])
    {
      goto LABEL_24;
    }
  }

  subjectUUID = self->_subjectUUID;
  if (subjectUUID | *(equalCopy + 8))
  {
    if (![(NSData *)subjectUUID isEqual:?])
    {
      goto LABEL_24;
    }
  }

  v8 = *(equalCopy + 72);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 72) & 2) == 0 || self->_startDate != *(equalCopy + 2))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 72) & 2) != 0)
  {
LABEL_24:
    v12 = 0;
    goto LABEL_25;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 72) & 1) == 0 || self->_endDate != *(equalCopy + 1))
    {
      goto LABEL_24;
    }
  }

  else if (*(equalCopy + 72))
  {
    goto LABEL_24;
  }

  payloadIdentifier = self->_payloadIdentifier;
  if (payloadIdentifier | *(equalCopy + 6) && ![(NSString *)payloadIdentifier isEqual:?])
  {
    goto LABEL_24;
  }

  applicationData = self->_applicationData;
  if (applicationData | *(equalCopy + 3))
  {
    if (![(NSData *)applicationData isEqual:?])
    {
      goto LABEL_24;
    }
  }

  keyValuePairs = self->_keyValuePairs;
  if (keyValuePairs | *(equalCopy + 5))
  {
    v12 = [(NSMutableArray *)keyValuePairs isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_25:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_channel hash];
  v4 = [(NSString *)self->_payloadType hash];
  v5 = [(NSData *)self->_subjectUUID hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_startDate;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_endDate;
LABEL_6:
  v8 = v4 ^ v3 ^ v5 ^ v6;
  v9 = v7 ^ [(NSString *)self->_payloadIdentifier hash];
  v10 = v8 ^ v9 ^ [(NSData *)self->_applicationData hash];
  return v10 ^ [(NSMutableArray *)self->_keyValuePairs hash];
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 4))
  {
    [(HKHealthWrapCodablePayloadHeader *)self setChannel:?];
  }

  if (*(fromCopy + 7))
  {
    [(HKHealthWrapCodablePayloadHeader *)self setPayloadType:?];
  }

  if (*(fromCopy + 8))
  {
    [(HKHealthWrapCodablePayloadHeader *)self setSubjectUUID:?];
  }

  v5 = *(fromCopy + 72);
  if ((v5 & 2) != 0)
  {
    self->_startDate = *(fromCopy + 2);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 72);
  }

  if (v5)
  {
    self->_endDate = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 6))
  {
    [(HKHealthWrapCodablePayloadHeader *)self setPayloadIdentifier:?];
  }

  if (*(fromCopy + 3))
  {
    [(HKHealthWrapCodablePayloadHeader *)self setApplicationData:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(fromCopy + 5);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(HKHealthWrapCodablePayloadHeader *)self addKeyValuePairs:*(*(&v12 + 1) + 8 * i), v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end