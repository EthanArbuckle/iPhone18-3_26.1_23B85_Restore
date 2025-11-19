@interface PersistentDirectionsHistoryItem
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)transportTypeAsString:(int)a3;
- (int)StringAsTransportType:(id)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasTransportType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PersistentDirectionsHistoryItem

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  startSearchResult = self->_startSearchResult;
  v6 = *(v4 + 6);
  v10 = v4;
  if (startSearchResult)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SearchResultRepr *)startSearchResult mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(PersistentDirectionsHistoryItem *)self setStartSearchResult:?];
  }

  v4 = v10;
LABEL_7:
  endSearchResult = self->_endSearchResult;
  v8 = *(v4 + 4);
  if (endSearchResult)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(SearchResultRepr *)endSearchResult mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(PersistentDirectionsHistoryItem *)self setEndSearchResult:?];
  }

  v4 = v10;
LABEL_13:
  if (*(v4 + 3))
  {
    [(PersistentDirectionsHistoryItem *)self setDirectionsResponseID:?];
    v4 = v10;
  }

  if (*(v4 + 5))
  {
    [(PersistentDirectionsHistoryItem *)self setReportAProblemAttachment:?];
    v4 = v10;
  }

  if (*(v4 + 7))
  {
    [(PersistentDirectionsHistoryItem *)self setSyncIdentifier:?];
    v4 = v10;
  }

  v9 = *(v4 + 68);
  if (v9)
  {
    self->_position = *(v4 + 1);
    *&self->_has |= 1u;
    v9 = *(v4 + 68);
    if ((v9 & 4) == 0)
    {
LABEL_21:
      if ((v9 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  else if ((*(v4 + 68) & 4) == 0)
  {
    goto LABEL_21;
  }

  self->_transportType = *(v4 + 16);
  *&self->_has |= 4u;
  if ((*(v4 + 68) & 2) != 0)
  {
LABEL_22:
    self->_timestamp = *(v4 + 2);
    *&self->_has |= 2u;
  }

LABEL_23:
}

- (unint64_t)hash
{
  v3 = [self->_startSearchResult hash];
  v4 = [self->_endSearchResult hash];
  v5 = [(NSData *)self->_directionsResponseID hash];
  v6 = [(NSString *)self->_reportAProblemAttachment hash];
  v7 = [(NSString *)self->_syncIdentifier hash];
  if (*&self->_has)
  {
    v9 = fabs(self->_position);
    v10 = floor(v9 + 0.5);
    v11 = (v9 - v10) * 1.84467441e19;
    v8 = 2654435761u * (v10 - trunc(v10 * 5.42101086e-20) * 1.84467441e19);
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v8 += v11;
      }
    }

    else
    {
      v8 -= fabs(v11);
    }
  }

  else
  {
    v8 = 0;
  }

  if ((*&self->_has & 4) == 0)
  {
    v12 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    v16 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v12 ^ v16;
  }

  v12 = 2654435761 * self->_transportType;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v13 = fabs(self->_timestamp);
  v14 = floor(v13 + 0.5);
  v15 = (v13 - v14) * 1.84467441e19;
  v16 = 2654435761u * (v14 - trunc(v14 * 5.42101086e-20) * 1.84467441e19);
  if (v15 >= 0.0)
  {
    if (v15 > 0.0)
    {
      v16 += v15;
    }
  }

  else
  {
    v16 -= fabs(v15);
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v12 ^ v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  startSearchResult = self->_startSearchResult;
  if (startSearchResult | *(v4 + 6))
  {
    if (![startSearchResult isEqual:?])
    {
      goto LABEL_26;
    }
  }

  endSearchResult = self->_endSearchResult;
  if (endSearchResult | *(v4 + 4))
  {
    if (![endSearchResult isEqual:?])
    {
      goto LABEL_26;
    }
  }

  directionsResponseID = self->_directionsResponseID;
  if (directionsResponseID | *(v4 + 3))
  {
    if (![(NSData *)directionsResponseID isEqual:?])
    {
      goto LABEL_26;
    }
  }

  reportAProblemAttachment = self->_reportAProblemAttachment;
  if (reportAProblemAttachment | *(v4 + 5))
  {
    if (![(NSString *)reportAProblemAttachment isEqual:?])
    {
      goto LABEL_26;
    }
  }

  syncIdentifier = self->_syncIdentifier;
  if (syncIdentifier | *(v4 + 7))
  {
    if (![(NSString *)syncIdentifier isEqual:?])
    {
      goto LABEL_26;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 68) & 1) == 0 || self->_position != *(v4 + 1))
    {
      goto LABEL_26;
    }
  }

  else if (*(v4 + 68))
  {
LABEL_26:
    v10 = 0;
    goto LABEL_27;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 68) & 4) == 0 || self->_transportType != *(v4 + 16))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 68) & 4) != 0)
  {
    goto LABEL_26;
  }

  v10 = (*(v4 + 68) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 68) & 2) == 0 || self->_timestamp != *(v4 + 2))
    {
      goto LABEL_26;
    }

    v10 = 1;
  }

LABEL_27:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [self->_startSearchResult copyWithZone:a3];
  v7 = v5[6];
  v5[6] = v6;

  v8 = [self->_endSearchResult copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSData *)self->_directionsResponseID copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_reportAProblemAttachment copyWithZone:a3];
  v13 = v5[5];
  v5[5] = v12;

  v14 = [(NSString *)self->_syncIdentifier copyWithZone:a3];
  v15 = v5[7];
  v5[7] = v14;

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 16) = self->_transportType;
    *(v5 + 68) |= 4u;
    if ((*&self->_has & 2) == 0)
    {
      return v5;
    }

    goto LABEL_4;
  }

  v5[1] = *&self->_position;
  *(v5 + 68) |= 1u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
LABEL_4:
    v5[2] = *&self->_timestamp;
    *(v5 + 68) |= 2u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_startSearchResult)
  {
    [v4 setStartSearchResult:?];
    v4 = v6;
  }

  if (self->_endSearchResult)
  {
    [v6 setEndSearchResult:?];
    v4 = v6;
  }

  if (self->_directionsResponseID)
  {
    [v6 setDirectionsResponseID:?];
    v4 = v6;
  }

  if (self->_reportAProblemAttachment)
  {
    [v6 setReportAProblemAttachment:?];
    v4 = v6;
  }

  if (self->_syncIdentifier)
  {
    [v6 setSyncIdentifier:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = *&self->_position;
    *(v4 + 68) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_13:
      if ((has & 2) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_13;
  }

  *(v4 + 16) = self->_transportType;
  *(v4 + 68) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_14:
    *(v4 + 2) = *&self->_timestamp;
    *(v4 + 68) |= 2u;
  }

LABEL_15:
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_startSearchResult)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_endSearchResult)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_directionsResponseID)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_reportAProblemAttachment)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_syncIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteDoubleField();
    v4 = v6;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_13:
      if ((has & 2) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_13;
  }

  PBDataWriterWriteInt32Field();
  v4 = v6;
  if ((*&self->_has & 2) != 0)
  {
LABEL_14:
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }

LABEL_15:
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  startSearchResult = self->_startSearchResult;
  if (startSearchResult)
  {
    v5 = [(SearchResultRepr *)startSearchResult dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"startSearchResult"];
  }

  endSearchResult = self->_endSearchResult;
  if (endSearchResult)
  {
    v7 = [(SearchResultRepr *)endSearchResult dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"endSearchResult"];
  }

  directionsResponseID = self->_directionsResponseID;
  if (directionsResponseID)
  {
    [v3 setObject:directionsResponseID forKey:@"directionsResponseID"];
  }

  reportAProblemAttachment = self->_reportAProblemAttachment;
  if (reportAProblemAttachment)
  {
    [v3 setObject:reportAProblemAttachment forKey:@"reportAProblemAttachment"];
  }

  syncIdentifier = self->_syncIdentifier;
  if (syncIdentifier)
  {
    [v3 setObject:syncIdentifier forKey:@"syncIdentifier"];
  }

  has = self->_has;
  if (has)
  {
    v14 = [NSNumber numberWithDouble:self->_position];
    [v3 setObject:v14 forKey:@"position"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_13:
      if ((has & 2) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_13;
  }

  transportType = self->_transportType;
  if (transportType >= 7)
  {
    v16 = [NSString stringWithFormat:@"(unknown: %i)", self->_transportType];
  }

  else
  {
    v16 = *(&off_101655248 + transportType);
  }

  [v3 setObject:v16 forKey:@"transportType"];

  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_14:
  v12 = [NSNumber numberWithDouble:self->_timestamp];
  [v3 setObject:v12 forKey:@"timestamp"];

LABEL_15:

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PersistentDirectionsHistoryItem;
  v3 = [(PersistentDirectionsHistoryItem *)&v7 description];
  v4 = [(PersistentDirectionsHistoryItem *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (void)setHasTimestamp:(BOOL)a3
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

- (int)StringAsTransportType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"AUTOMOBILE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"TRANSIT"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"WALKING"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"BICYCLE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"UNKNOWN_TRANSPORT_TYPE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"FERRY"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"RIDESHARE"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)transportTypeAsString:(int)a3
{
  if (a3 >= 7)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = *(&off_101655248 + a3);
  }

  return v4;
}

- (void)setHasTransportType:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

@end