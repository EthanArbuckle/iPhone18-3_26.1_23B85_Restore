@interface ATXMagicalMomentsPBMMShownTracker
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAnchor:(id)anchor;
- (int)anchor;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ATXMagicalMomentsPBMMShownTracker

- (int)anchor
{
  if (*&self->_has)
  {
    return self->_anchor;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsAnchor:(id)anchor
{
  anchorCopy = anchor;
  if ([anchorCopy isEqualToString:@"ANCHOR_TYPE_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([anchorCopy isEqualToString:@"ANCHOR_TYPE_BLUETOOTH_CONNECTED"])
  {
    v4 = 1;
  }

  else if ([anchorCopy isEqualToString:@"ANCHOR_TYPE_BLUETOOTH_DISCONNECTED"])
  {
    v4 = 2;
  }

  else if ([anchorCopy isEqualToString:@"ANCHOR_TYPE_IDLE_TIME_BEGIN"])
  {
    v4 = 3;
  }

  else if ([anchorCopy isEqualToString:@"ANCHOR_TYPE_IDLE_TIME_END"])
  {
    v4 = 4;
  }

  else if ([anchorCopy isEqualToString:@"ANCHOR_TYPE_CARPLAY_CONNECTED"])
  {
    v4 = 5;
  }

  else if ([anchorCopy isEqualToString:@"ANCHOR_TYPE_CARPLAY_DISCONNECTED"])
  {
    v4 = 6;
  }

  else if ([anchorCopy isEqualToString:@"ANCHOR_TYPE_LOI_ENTRANCE"])
  {
    v4 = 7;
  }

  else if ([anchorCopy isEqualToString:@"ANCHOR_TYPE_LOI_EXIT"])
  {
    v4 = 8;
  }

  else if ([anchorCopy isEqualToString:@"ANCHOR_TYPE_WORKOUT_START"])
  {
    v4 = 9;
  }

  else if ([anchorCopy isEqualToString:@"ANCHOR_TYPE_WORKOUT_END"])
  {
    v4 = 10;
  }

  else if ([anchorCopy isEqualToString:@"ANCHOR_TYPE_HEADING_HOME"])
  {
    v4 = 11;
  }

  else if ([anchorCopy isEqualToString:@"ANCHOR_TYPE_HEADING_TO_WORK"])
  {
    v4 = 12;
  }

  else if ([anchorCopy isEqualToString:@"ANCHOR_TYPE_FIRST_CALENDAR_EVENT_OF_DAY"])
  {
    v4 = 13;
  }

  else if ([anchorCopy isEqualToString:@"ANCHOR_TYPE_LAST_CALENDAR_EVENT_OF_DAY"])
  {
    v4 = 14;
  }

  else if ([anchorCopy isEqualToString:@"ANCHOR_TYPE_UPCOMING_SEMANTIC_EVENT"])
  {
    v4 = 15;
  }

  else if ([anchorCopy isEqualToString:@"ANCHOR_TYPE_WIRED_AUDIO_DEVICE_CONNECTED"])
  {
    v4 = 16;
  }

  else if ([anchorCopy isEqualToString:@"ANCHOR_TYPE_WIRED_AUDIO_DEVICE_DISCONNECTED"])
  {
    v4 = 17;
  }

  else if ([anchorCopy isEqualToString:@"ANCHOR_TYPE_CHARGER_CONNECTED"])
  {
    v4 = 18;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXMagicalMomentsPBMMShownTracker;
  v4 = [(ATXMagicalMomentsPBMMShownTracker *)&v8 description];
  dictionaryRepresentation = [(ATXMagicalMomentsPBMMShownTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    anchor = self->_anchor;
    if (anchor >= 0x13)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_anchor];
    }

    else
    {
      v5 = off_27859D050[anchor];
    }

    [dictionary setObject:v5 forKey:@"anchor"];
  }

  bundleId = self->_bundleId;
  if (bundleId)
  {
    [dictionary setObject:bundleId forKey:@"bundleId"];
  }

  abGroup = self->_abGroup;
  if (abGroup)
  {
    [dictionary setObject:abGroup forKey:@"abGroup"];
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType)
  {
    [dictionary setObject:consumerSubType forKey:@"consumerSubType"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    anchor = self->_anchor;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_abGroup)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_consumerSubType)
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
    toCopy[4] = self->_anchor;
    *(toCopy + 40) |= 1u;
  }

  v5 = toCopy;
  if (self->_bundleId)
  {
    [toCopy setBundleId:?];
    toCopy = v5;
  }

  if (self->_abGroup)
  {
    [v5 setAbGroup:?];
    toCopy = v5;
  }

  if (self->_consumerSubType)
  {
    [v5 setConsumerSubType:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_anchor;
    *(v5 + 40) |= 1u;
  }

  v7 = [(NSString *)self->_bundleId copyWithZone:zone];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(NSString *)self->_abGroup copyWithZone:zone];
  v10 = v6[1];
  v6[1] = v9;

  v11 = [(NSString *)self->_consumerSubType copyWithZone:zone];
  v12 = v6[4];
  v6[4] = v11;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = *(equalCopy + 40);
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_anchor != *(equalCopy + 4))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  bundleId = self->_bundleId;
  if (bundleId | *(equalCopy + 3) && ![(NSString *)bundleId isEqual:?])
  {
    goto LABEL_13;
  }

  abGroup = self->_abGroup;
  if (abGroup | *(equalCopy + 1))
  {
    if (![(NSString *)abGroup isEqual:?])
    {
      goto LABEL_13;
    }
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType | *(equalCopy + 4))
  {
    v9 = [(NSString *)consumerSubType isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_anchor;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_bundleId hash]^ v3;
  v5 = [(NSString *)self->_abGroup hash];
  return v4 ^ v5 ^ [(NSString *)self->_consumerSubType hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[10])
  {
    self->_anchor = fromCopy[4];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(ATXMagicalMomentsPBMMShownTracker *)self setBundleId:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(ATXMagicalMomentsPBMMShownTracker *)self setAbGroup:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 4))
  {
    [(ATXMagicalMomentsPBMMShownTracker *)self setConsumerSubType:?];
    fromCopy = v5;
  }
}

@end