@interface PersistentSearchRequestHistoryItem
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasLatitudeSpan:(BOOL)a3;
- (void)setHasLongitude:(BOOL)a3;
- (void)setHasLongitudeSpan:(BOOL)a3;
- (void)setHasPosition:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PersistentSearchRequestHistoryItem

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  request = self->_request;
  v6 = *(v4 + 9);
  v11 = v4;
  if (request)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(GEOPlaceSearchRequest *)request mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(PersistentSearchRequestHistoryItem *)self setRequest:?];
  }

  v4 = v11;
LABEL_7:
  if (*(v4 + 8))
  {
    [(PersistentSearchRequestHistoryItem *)self setDisplayQuery:?];
    v4 = v11;
  }

  if (*(v4 + 7))
  {
    [(PersistentSearchRequestHistoryItem *)self setDisplayLocation:?];
    v4 = v11;
  }

  v7 = *(v4 + 96);
  if (v7)
  {
    self->_latitude = *(v4 + 1);
    *&self->_has |= 1u;
    v7 = *(v4 + 96);
    if ((v7 & 4) == 0)
    {
LABEL_13:
      if ((v7 & 2) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  else if ((*(v4 + 96) & 4) == 0)
  {
    goto LABEL_13;
  }

  self->_longitude = *(v4 + 3);
  *&self->_has |= 4u;
  v7 = *(v4 + 96);
  if ((v7 & 2) == 0)
  {
LABEL_14:
    if ((v7 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_21:
  self->_latitudeSpan = *(v4 + 2);
  *&self->_has |= 2u;
  if ((*(v4 + 96) & 8) != 0)
  {
LABEL_15:
    self->_longitudeSpan = *(v4 + 4);
    *&self->_has |= 8u;
  }

LABEL_16:
  response = self->_response;
  v9 = *(v4 + 10);
  if (response)
  {
    if (!v9)
    {
      goto LABEL_26;
    }

    [(GEOPlaceSearchResponse *)response mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_26;
    }

    [(PersistentSearchRequestHistoryItem *)self setResponse:?];
  }

  v4 = v11;
LABEL_26:
  if (*(v4 + 11))
  {
    [(PersistentSearchRequestHistoryItem *)self setSyncIdentifier:?];
    v4 = v11;
  }

  v10 = *(v4 + 96);
  if ((v10 & 0x10) != 0)
  {
    self->_position = *(v4 + 5);
    *&self->_has |= 0x10u;
    v10 = *(v4 + 96);
  }

  if ((v10 & 0x20) != 0)
  {
    self->_timestamp = *(v4 + 6);
    *&self->_has |= 0x20u;
  }
}

- (unint64_t)hash
{
  v32 = [(GEOPlaceSearchRequest *)self->_request hash];
  v3 = [(NSString *)self->_displayQuery hash];
  v4 = [(NSString *)self->_displayLocation hash];
  if (*&self->_has)
  {
    v6 = fabs(self->_latitude);
    v7 = floor(v6 + 0.5);
    v8 = (v6 - v7) * 1.84467441e19;
    v5 = 2654435761u * (v7 - trunc(v7 * 5.42101086e-20) * 1.84467441e19);
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v5 += v8;
      }
    }

    else
    {
      v5 -= fabs(v8);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    v10 = fabs(self->_longitude);
    v11 = floor(v10 + 0.5);
    v12 = (v10 - v11) * 1.84467441e19;
    v9 = 2654435761u * (v11 - trunc(v11 * 5.42101086e-20) * 1.84467441e19);
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v9 += v12;
      }
    }

    else
    {
      v9 -= fabs(v12);
    }
  }

  else
  {
    v9 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v14 = fabs(self->_latitudeSpan);
    v15 = floor(v14 + 0.5);
    v16 = (v14 - v15) * 1.84467441e19;
    v13 = 2654435761u * (v15 - trunc(v15 * 5.42101086e-20) * 1.84467441e19);
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v13 += v16;
      }
    }

    else
    {
      v13 -= fabs(v16);
    }
  }

  else
  {
    v13 = 0;
  }

  if ((*&self->_has & 8) != 0)
  {
    v18 = fabs(self->_longitudeSpan);
    v19 = floor(v18 + 0.5);
    v20 = (v18 - v19) * 1.84467441e19;
    v17 = 2654435761u * (v19 - trunc(v19 * 5.42101086e-20) * 1.84467441e19);
    if (v20 >= 0.0)
    {
      if (v20 > 0.0)
      {
        v17 += v20;
      }
    }

    else
    {
      v17 -= fabs(v20);
    }
  }

  else
  {
    v17 = 0;
  }

  v21 = [(GEOPlaceSearchResponse *)self->_response hash];
  v22 = [(NSString *)self->_syncIdentifier hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v24 = fabs(self->_position);
    v25 = floor(v24 + 0.5);
    v26 = (v24 - v25) * 1.84467441e19;
    v23 = 2654435761u * (v25 - trunc(v25 * 5.42101086e-20) * 1.84467441e19);
    if (v26 >= 0.0)
    {
      if (v26 > 0.0)
      {
        v23 += v26;
      }
    }

    else
    {
      v23 -= fabs(v26);
    }
  }

  else
  {
    v23 = 0;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v28 = fabs(self->_timestamp);
    v29 = floor(v28 + 0.5);
    v30 = (v28 - v29) * 1.84467441e19;
    v27 = 2654435761u * (v29 - trunc(v29 * 5.42101086e-20) * 1.84467441e19);
    if (v30 >= 0.0)
    {
      if (v30 > 0.0)
      {
        v27 += v30;
      }
    }

    else
    {
      v27 -= fabs(v30);
    }
  }

  else
  {
    v27 = 0;
  }

  return v3 ^ v32 ^ v4 ^ v5 ^ v9 ^ v13 ^ v17 ^ v21 ^ v22 ^ v23 ^ v27;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_41;
  }

  request = self->_request;
  if (request | *(v4 + 9))
  {
    if (![(GEOPlaceSearchRequest *)request isEqual:?])
    {
      goto LABEL_41;
    }
  }

  displayQuery = self->_displayQuery;
  if (displayQuery | *(v4 + 8))
  {
    if (![(NSString *)displayQuery isEqual:?])
    {
      goto LABEL_41;
    }
  }

  displayLocation = self->_displayLocation;
  if (displayLocation | *(v4 + 7))
  {
    if (![(NSString *)displayLocation isEqual:?])
    {
      goto LABEL_41;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 96) & 1) == 0 || self->_latitude != *(v4 + 1))
    {
      goto LABEL_41;
    }
  }

  else if (*(v4 + 96))
  {
LABEL_41:
    v10 = 0;
    goto LABEL_42;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 96) & 4) == 0 || self->_longitude != *(v4 + 3))
    {
      goto LABEL_41;
    }
  }

  else if ((*(v4 + 96) & 4) != 0)
  {
    goto LABEL_41;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 96) & 2) == 0 || self->_latitudeSpan != *(v4 + 2))
    {
      goto LABEL_41;
    }
  }

  else if ((*(v4 + 96) & 2) != 0)
  {
    goto LABEL_41;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 96) & 8) == 0 || self->_longitudeSpan != *(v4 + 4))
    {
      goto LABEL_41;
    }
  }

  else if ((*(v4 + 96) & 8) != 0)
  {
    goto LABEL_41;
  }

  response = self->_response;
  if (response | *(v4 + 10) && ![(GEOPlaceSearchResponse *)response isEqual:?])
  {
    goto LABEL_41;
  }

  syncIdentifier = self->_syncIdentifier;
  if (syncIdentifier | *(v4 + 11))
  {
    if (![(NSString *)syncIdentifier isEqual:?])
    {
      goto LABEL_41;
    }
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 96) & 0x10) == 0 || self->_position != *(v4 + 5))
    {
      goto LABEL_41;
    }
  }

  else if ((*(v4 + 96) & 0x10) != 0)
  {
    goto LABEL_41;
  }

  v10 = (*(v4 + 96) & 0x20) == 0;
  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 96) & 0x20) == 0 || self->_timestamp != *(v4 + 6))
    {
      goto LABEL_41;
    }

    v10 = 1;
  }

LABEL_42:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(GEOPlaceSearchRequest *)self->_request copyWithZone:a3];
  v7 = v5[9];
  v5[9] = v6;

  v8 = [(NSString *)self->_displayQuery copyWithZone:a3];
  v9 = v5[8];
  v5[8] = v8;

  v10 = [(NSString *)self->_displayLocation copyWithZone:a3];
  v11 = v5[7];
  v5[7] = v10;

  has = self->_has;
  if (has)
  {
    v5[1] = *&self->_latitude;
    *(v5 + 96) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v5[3] = *&self->_longitude;
  *(v5 + 96) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  v5[2] = *&self->_latitudeSpan;
  *(v5 + 96) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v5[4] = *&self->_longitudeSpan;
    *(v5 + 96) |= 8u;
  }

LABEL_6:
  v13 = [(GEOPlaceSearchResponse *)self->_response copyWithZone:a3];
  v14 = v5[10];
  v5[10] = v13;

  v15 = [(NSString *)self->_syncIdentifier copyWithZone:a3];
  v16 = v5[11];
  v5[11] = v15;

  v17 = self->_has;
  if ((v17 & 0x10) != 0)
  {
    v5[5] = *&self->_position;
    *(v5 + 96) |= 0x10u;
    v17 = self->_has;
  }

  if ((v17 & 0x20) != 0)
  {
    v5[6] = *&self->_timestamp;
    *(v5 + 96) |= 0x20u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_request)
  {
    [v4 setRequest:?];
    v4 = v7;
  }

  if (self->_displayQuery)
  {
    [v7 setDisplayQuery:?];
    v4 = v7;
  }

  if (self->_displayLocation)
  {
    [v7 setDisplayLocation:?];
    v4 = v7;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = *&self->_latitude;
    *(v4 + 96) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_9:
      if ((has & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_25;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

  *(v4 + 3) = *&self->_longitude;
  *(v4 + 96) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_25:
  *(v4 + 2) = *&self->_latitudeSpan;
  *(v4 + 96) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_11:
    *(v4 + 4) = *&self->_longitudeSpan;
    *(v4 + 96) |= 8u;
  }

LABEL_12:
  if (self->_response)
  {
    [v7 setResponse:?];
    v4 = v7;
  }

  if (self->_syncIdentifier)
  {
    [v7 setSyncIdentifier:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x10) != 0)
  {
    *(v4 + 5) = *&self->_position;
    *(v4 + 96) |= 0x10u;
    v6 = self->_has;
  }

  if ((v6 & 0x20) != 0)
  {
    *(v4 + 6) = *&self->_timestamp;
    *(v4 + 96) |= 0x20u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_request)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }

  if (self->_displayQuery)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_displayLocation)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteDoubleField();
    v4 = v7;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_9:
      if ((has & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_25;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

  PBDataWriterWriteDoubleField();
  v4 = v7;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_25:
  PBDataWriterWriteDoubleField();
  v4 = v7;
  if ((*&self->_has & 8) != 0)
  {
LABEL_11:
    PBDataWriterWriteDoubleField();
    v4 = v7;
  }

LABEL_12:
  if (self->_response)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }

  if (self->_syncIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x10) != 0)
  {
    PBDataWriterWriteDoubleField();
    v4 = v7;
    v6 = self->_has;
  }

  if ((v6 & 0x20) != 0)
  {
    PBDataWriterWriteDoubleField();
    v4 = v7;
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  request = self->_request;
  if (request)
  {
    v5 = [(GEOPlaceSearchRequest *)request dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"request"];
  }

  displayQuery = self->_displayQuery;
  if (displayQuery)
  {
    [v3 setObject:displayQuery forKey:@"displayQuery"];
  }

  displayLocation = self->_displayLocation;
  if (displayLocation)
  {
    [v3 setObject:displayLocation forKey:@"displayLocation"];
  }

  has = self->_has;
  if (has)
  {
    v17 = [NSNumber numberWithDouble:self->_latitude];
    [v3 setObject:v17 forKey:@"latitude"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_9:
      if ((has & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_25;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

  v18 = [NSNumber numberWithDouble:self->_longitude];
  [v3 setObject:v18 forKey:@"longitude"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_25:
  v19 = [NSNumber numberWithDouble:self->_latitudeSpan];
  [v3 setObject:v19 forKey:@"latitudeSpan"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_11:
    v9 = [NSNumber numberWithDouble:self->_longitudeSpan];
    [v3 setObject:v9 forKey:@"longitudeSpan"];
  }

LABEL_12:
  response = self->_response;
  if (response)
  {
    v11 = [(GEOPlaceSearchResponse *)response dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"response"];
  }

  syncIdentifier = self->_syncIdentifier;
  if (syncIdentifier)
  {
    [v3 setObject:syncIdentifier forKey:@"syncIdentifier"];
  }

  v13 = self->_has;
  if ((v13 & 0x10) != 0)
  {
    v14 = [NSNumber numberWithDouble:self->_position];
    [v3 setObject:v14 forKey:@"position"];

    v13 = self->_has;
  }

  if ((v13 & 0x20) != 0)
  {
    v15 = [NSNumber numberWithDouble:self->_timestamp];
    [v3 setObject:v15 forKey:@"timestamp"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PersistentSearchRequestHistoryItem;
  v3 = [(PersistentSearchRequestHistoryItem *)&v7 description];
  v4 = [(PersistentSearchRequestHistoryItem *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (void)setHasTimestamp:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasPosition:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasLongitudeSpan:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasLatitudeSpan:(BOOL)a3
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

- (void)setHasLongitude:(BOOL)a3
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