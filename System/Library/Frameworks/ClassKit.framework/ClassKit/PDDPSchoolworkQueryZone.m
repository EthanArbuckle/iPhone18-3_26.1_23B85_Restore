@interface PDDPSchoolworkQueryZone
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsZoneInfo:(id)a3;
- (int)zoneInfo;
- (unint64_t)hash;
- (void)clearOneofValuesForZoneInfo;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasZoneInfo:(BOOL)a3;
- (void)setZoneIdentifier:(id)a3;
- (void)setZoneName:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPSchoolworkQueryZone

- (void)setZoneName:(id)a3
{
  v4 = a3;
  [(PDDPSchoolworkQueryZone *)self clearOneofValuesForZoneInfo];
  *&self->_has |= 2u;
  self->_zoneInfo = 1;
  zoneName = self->_zoneName;
  self->_zoneName = v4;
}

- (void)setZoneIdentifier:(id)a3
{
  v4 = a3;
  [(PDDPSchoolworkQueryZone *)self clearOneofValuesForZoneInfo];
  *&self->_has |= 2u;
  self->_zoneInfo = 2;
  zoneIdentifier = self->_zoneIdentifier;
  self->_zoneIdentifier = v4;
}

- (int)zoneInfo
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_zoneInfo;
  }

  else
  {
    return 0;
  }
}

- (void)setHasZoneInfo:(BOOL)a3
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

- (int)StringAsZoneInfo:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"zone_name"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"zone_identifier"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)clearOneofValuesForZoneInfo
{
  *&self->_has &= ~2u;
  self->_zoneInfo = 0;
  zoneName = self->_zoneName;
  self->_zoneName = 0;

  zoneIdentifier = self->_zoneIdentifier;
  self->_zoneIdentifier = 0;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPSchoolworkQueryZone;
  v3 = [(PDDPSchoolworkQueryZone *)&v7 description];
  v4 = [(PDDPSchoolworkQueryZone *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  zoneName = self->_zoneName;
  if (zoneName)
  {
    [v3 setObject:zoneName forKey:@"zone_name"];
  }

  zoneIdentifier = self->_zoneIdentifier;
  if (zoneIdentifier)
  {
    v7 = [(PDDPZoneIdentifier *)zoneIdentifier dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"zone_identifier"];
  }

  if ((*&self->_has & 2) != 0)
  {
    zoneInfo = self->_zoneInfo;
    if (zoneInfo >= 3)
    {
      v9 = [NSString stringWithFormat:@"(unknown: %i)", self->_zoneInfo];
    }

    else
    {
      v9 = *(&off_100204450 + zoneInfo);
    }

    [v4 setObject:v9 forKey:@"zone_info"];
  }

  offset = self->_offset;
  if (offset)
  {
    [v4 setObject:offset forKey:@"offset"];
  }

  if (*&self->_has)
  {
    v11 = [NSNumber numberWithInt:self->_limit];
    [v4 setObject:v11 forKey:@"limit"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_zoneName)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_offset)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    limit = self->_limit;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_zoneIdentifier)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[8] = self->_zoneInfo;
    *(v4 + 48) |= 2u;
  }

  v5 = v4;
  if (self->_zoneName)
  {
    [v4 setZoneName:?];
    v4 = v5;
  }

  if (self->_offset)
  {
    [v5 setOffset:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[2] = self->_limit;
    *(v4 + 48) |= 1u;
  }

  if (self->_zoneIdentifier)
  {
    [v5 setZoneIdentifier:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    v5[8] = self->_zoneInfo;
    *(v5 + 48) |= 2u;
  }

  v7 = [(NSString *)self->_zoneName copyWithZone:a3];
  v8 = v6[5];
  v6[5] = v7;

  v9 = [(NSData *)self->_offset copyWithZone:a3];
  v10 = v6[2];
  v6[2] = v9;

  if (*&self->_has)
  {
    *(v6 + 2) = self->_limit;
    *(v6 + 48) |= 1u;
  }

  v11 = [(PDDPZoneIdentifier *)self->_zoneIdentifier copyWithZone:a3];
  v12 = v6[3];
  v6[3] = v11;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  v5 = *(v4 + 48);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_zoneInfo != *(v4 + 8))
    {
      goto LABEL_18;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
LABEL_18:
    v10 = 0;
    goto LABEL_19;
  }

  zoneName = self->_zoneName;
  if (zoneName | *(v4 + 5) && ![(NSString *)zoneName isEqual:?])
  {
    goto LABEL_18;
  }

  offset = self->_offset;
  if (offset | *(v4 + 2))
  {
    if (![(NSData *)offset isEqual:?])
    {
      goto LABEL_18;
    }
  }

  v8 = *(v4 + 48);
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_limit != *(v4 + 2))
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 48))
  {
    goto LABEL_18;
  }

  zoneIdentifier = self->_zoneIdentifier;
  if (zoneIdentifier | *(v4 + 3))
  {
    v10 = [(PDDPZoneIdentifier *)zoneIdentifier isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_19:

  return v10;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_zoneInfo;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_zoneName hash];
  v5 = [(NSData *)self->_offset hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_limit;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ [(PDDPZoneIdentifier *)self->_zoneIdentifier hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((v4[12] & 2) != 0)
  {
    self->_zoneInfo = v4[8];
    *&self->_has |= 2u;
  }

  v8 = v4;
  if (*(v4 + 5))
  {
    [(PDDPSchoolworkQueryZone *)self setZoneName:?];
    v5 = v8;
  }

  if (*(v5 + 2))
  {
    [(PDDPSchoolworkQueryZone *)self setOffset:?];
    v5 = v8;
  }

  if (v5[12])
  {
    self->_limit = v5[2];
    *&self->_has |= 1u;
  }

  zoneIdentifier = self->_zoneIdentifier;
  v7 = *(v5 + 3);
  if (zoneIdentifier)
  {
    if (!v7)
    {
      goto LABEL_15;
    }

    zoneIdentifier = [(PDDPZoneIdentifier *)zoneIdentifier mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_15;
    }

    zoneIdentifier = [(PDDPSchoolworkQueryZone *)self setZoneIdentifier:?];
  }

  v5 = v8;
LABEL_15:

  _objc_release_x1(zoneIdentifier, v5);
}

@end