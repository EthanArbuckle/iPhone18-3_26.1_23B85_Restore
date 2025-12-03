@interface ATXMagicalMomentsPBMMPredictedScoreTracker
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

@implementation ATXMagicalMomentsPBMMPredictedScoreTracker

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
  v8.super_class = ATXMagicalMomentsPBMMPredictedScoreTracker;
  v4 = [(ATXMagicalMomentsPBMMPredictedScoreTracker *)&v8 description];
  dictionaryRepresentation = [(ATXMagicalMomentsPBMMPredictedScoreTracker *)self dictionaryRepresentation];
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
      v5 = off_2785A2100[anchor];
    }

    [dictionary setObject:v5 forKey:@"anchor"];
  }

  topBundleId = self->_topBundleId;
  if (topBundleId)
  {
    [dictionary setObject:topBundleId forKey:@"topBundleId"];
  }

  abGroup = self->_abGroup;
  if (abGroup)
  {
    [dictionary setObject:abGroup forKey:@"abGroup"];
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

  if (self->_topBundleId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_abGroup)
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
    *(toCopy + 32) |= 1u;
  }

  v5 = toCopy;
  if (self->_topBundleId)
  {
    [toCopy setTopBundleId:?];
    toCopy = v5;
  }

  if (self->_abGroup)
  {
    [v5 setAbGroup:?];
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
    *(v5 + 32) |= 1u;
  }

  v7 = [(NSString *)self->_topBundleId copyWithZone:zone];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(NSString *)self->_abGroup copyWithZone:zone];
  v10 = v6[1];
  v6[1] = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_anchor != *(equalCopy + 4))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  topBundleId = self->_topBundleId;
  if (topBundleId | *(equalCopy + 3) && ![(NSString *)topBundleId isEqual:?])
  {
    goto LABEL_11;
  }

  abGroup = self->_abGroup;
  if (abGroup | *(equalCopy + 1))
  {
    v8 = [(NSString *)abGroup isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
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

  v4 = [(NSString *)self->_topBundleId hash]^ v3;
  return v4 ^ [(NSString *)self->_abGroup hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[8])
  {
    self->_anchor = fromCopy[4];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(ATXMagicalMomentsPBMMPredictedScoreTracker *)self setTopBundleId:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(ATXMagicalMomentsPBMMPredictedScoreTracker *)self setAbGroup:?];
    fromCopy = v5;
  }
}

@end