@interface PDDPZoneIdentifier
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsZoneIdentifierType:(id)a3;
- (int)zoneIdentifierType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (int)StringAsZoneIdentifierType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_ZONE_IDENTIFIER_TYPE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"PERSON_LINK_ID_TYPE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CLASS_ID_TYPE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ZONE_NAME_TYPE"])
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
  v4 = [(PDDPZoneIdentifier *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    zoneIdentifierType = self->_zoneIdentifierType;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_zoneIdentifierId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_zoneIdentifierType;
    *(v4 + 20) |= 1u;
  }

  if (self->_zoneIdentifierId)
  {
    v5 = v4;
    [v4 setZoneIdentifierId:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 4) = self->_zoneIdentifierType;
    *(v5 + 20) |= 1u;
  }

  v7 = [(NSString *)self->_zoneIdentifierId copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(v4 + 20);
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_zoneIdentifierType != *(v4 + 4))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 20))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  zoneIdentifierId = self->_zoneIdentifierId;
  if (zoneIdentifierId | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[5])
  {
    self->_zoneIdentifierType = v4[4];
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    v5 = v4;
    [(PDDPZoneIdentifier *)self setZoneIdentifierId:?];
    v4 = v5;
  }
}

@end