@interface PDDPZoneIdentifier
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsZoneIdentifierType:(id)type;
- (int)zoneIdentifierType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPZoneIdentifier

- (int)zoneIdentifierType
{
  if (*&self->_has)
  {
    return self->_zoneIdentifierType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsZoneIdentifierType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN_ZONE_IDENTIFIER_TYPE"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"PERSON_LINK_ID_TYPE"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"CLASS_ID_TYPE"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"ZONE_NAME_TYPE"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPZoneIdentifier;
  v3 = [(PDDPZoneIdentifier *)&v7 description];
  dictionaryRepresentation = [(PDDPZoneIdentifier *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    zoneIdentifierType = self->_zoneIdentifierType;
    if (zoneIdentifierType >= 4)
    {
      v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_zoneIdentifierType];
    }

    else
    {
      v5 = *(&off_100206020 + zoneIdentifierType);
    }

    [v3 setObject:v5 forKey:@"zone_identifier_type"];
  }

  zoneIdentifierId = self->_zoneIdentifierId;
  if (zoneIdentifierId)
  {
    [v3 setObject:zoneIdentifierId forKey:@"zone_identifier_id"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    zoneIdentifierType = self->_zoneIdentifierType;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_zoneIdentifierId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_zoneIdentifierType;
    *(toCopy + 20) |= 1u;
  }

  if (self->_zoneIdentifierId)
  {
    v5 = toCopy;
    [toCopy setZoneIdentifierId:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 4) = self->_zoneIdentifierType;
    *(v5 + 20) |= 1u;
  }

  v7 = [(NSString *)self->_zoneIdentifierId copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(equalCopy + 20);
  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0 || self->_zoneIdentifierType != *(equalCopy + 4))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 20))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  zoneIdentifierId = self->_zoneIdentifierId;
  if (zoneIdentifierId | *(equalCopy + 1))
  {
    v7 = [(NSString *)zoneIdentifierId isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_10:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_zoneIdentifierType;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_zoneIdentifierId hash]^ v2;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[5])
  {
    self->_zoneIdentifierType = fromCopy[4];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    v5 = fromCopy;
    [(PDDPZoneIdentifier *)self setZoneIdentifierId:?];
    fromCopy = v5;
  }
}

@end