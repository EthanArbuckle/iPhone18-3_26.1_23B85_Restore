@interface PDDPSchoolworkQueryZone
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsZoneInfo:(id)info;
- (int)zoneInfo;
- (unint64_t)hash;
- (void)clearOneofValuesForZoneInfo;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasZoneInfo:(BOOL)info;
- (void)setZoneIdentifier:(id)identifier;
- (void)setZoneName:(id)name;
- (void)writeTo:(id)to;
@end

@implementation PDDPSchoolworkQueryZone

- (void)setZoneName:(id)name
{
  nameCopy = name;
  [(PDDPSchoolworkQueryZone *)self clearOneofValuesForZoneInfo];
  *&self->_has |= 2u;
  self->_zoneInfo = 1;
  zoneName = self->_zoneName;
  self->_zoneName = nameCopy;
}

- (void)setZoneIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(PDDPSchoolworkQueryZone *)self clearOneofValuesForZoneInfo];
  *&self->_has |= 2u;
  self->_zoneInfo = 2;
  zoneIdentifier = self->_zoneIdentifier;
  self->_zoneIdentifier = identifierCopy;
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

- (void)setHasZoneInfo:(BOOL)info
{
  if (info)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsZoneInfo:(id)info
{
  infoCopy = info;
  if ([infoCopy isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([infoCopy isEqualToString:@"zone_name"])
  {
    v4 = 1;
  }

  else if ([infoCopy isEqualToString:@"zone_identifier"])
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
  dictionaryRepresentation = [(PDDPSchoolworkQueryZone *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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
    dictionaryRepresentation = [(PDDPZoneIdentifier *)zoneIdentifier dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"zone_identifier"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_zoneName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_offset)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    limit = self->_limit;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_zoneIdentifier)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[8] = self->_zoneInfo;
    *(toCopy + 48) |= 2u;
  }

  v5 = toCopy;
  if (self->_zoneName)
  {
    [toCopy setZoneName:?];
    toCopy = v5;
  }

  if (self->_offset)
  {
    [v5 setOffset:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[2] = self->_limit;
    *(toCopy + 48) |= 1u;
  }

  if (self->_zoneIdentifier)
  {
    [v5 setZoneIdentifier:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    v5[8] = self->_zoneInfo;
    *(v5 + 48) |= 2u;
  }

  v7 = [(NSString *)self->_zoneName copyWithZone:zone];
  v8 = v6[5];
  v6[5] = v7;

  v9 = [(NSData *)self->_offset copyWithZone:zone];
  v10 = v6[2];
  v6[2] = v9;

  if (*&self->_has)
  {
    *(v6 + 2) = self->_limit;
    *(v6 + 48) |= 1u;
  }

  v11 = [(PDDPZoneIdentifier *)self->_zoneIdentifier copyWithZone:zone];
  v12 = v6[3];
  v6[3] = v11;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  v5 = *(equalCopy + 48);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_zoneInfo != *(equalCopy + 8))
    {
      goto LABEL_18;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
LABEL_18:
    v10 = 0;
    goto LABEL_19;
  }

  zoneName = self->_zoneName;
  if (zoneName | *(equalCopy + 5) && ![(NSString *)zoneName isEqual:?])
  {
    goto LABEL_18;
  }

  offset = self->_offset;
  if (offset | *(equalCopy + 2))
  {
    if (![(NSData *)offset isEqual:?])
    {
      goto LABEL_18;
    }
  }

  v8 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_limit != *(equalCopy + 2))
    {
      goto LABEL_18;
    }
  }

  else if (*(equalCopy + 48))
  {
    goto LABEL_18;
  }

  zoneIdentifier = self->_zoneIdentifier;
  if (zoneIdentifier | *(equalCopy + 3))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if ((fromCopy[12] & 2) != 0)
  {
    self->_zoneInfo = fromCopy[8];
    *&self->_has |= 2u;
  }

  v8 = fromCopy;
  if (*(fromCopy + 5))
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