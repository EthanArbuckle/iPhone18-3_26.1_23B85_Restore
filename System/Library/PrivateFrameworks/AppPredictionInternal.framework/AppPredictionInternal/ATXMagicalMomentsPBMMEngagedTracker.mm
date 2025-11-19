@interface ATXMagicalMomentsPBMMEngagedTracker
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAnchor:(id)a3;
- (int)anchor;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXMagicalMomentsPBMMEngagedTracker

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

- (int)StringAsAnchor:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ANCHOR_TYPE_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ANCHOR_TYPE_BLUETOOTH_CONNECTED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ANCHOR_TYPE_BLUETOOTH_DISCONNECTED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ANCHOR_TYPE_IDLE_TIME_BEGIN"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ANCHOR_TYPE_IDLE_TIME_END"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"ANCHOR_TYPE_CARPLAY_CONNECTED"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"ANCHOR_TYPE_CARPLAY_DISCONNECTED"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"ANCHOR_TYPE_LOI_ENTRANCE"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"ANCHOR_TYPE_LOI_EXIT"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"ANCHOR_TYPE_WORKOUT_START"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"ANCHOR_TYPE_WORKOUT_END"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"ANCHOR_TYPE_HEADING_HOME"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"ANCHOR_TYPE_HEADING_TO_WORK"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"ANCHOR_TYPE_FIRST_CALENDAR_EVENT_OF_DAY"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"ANCHOR_TYPE_LAST_CALENDAR_EVENT_OF_DAY"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"ANCHOR_TYPE_UPCOMING_SEMANTIC_EVENT"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"ANCHOR_TYPE_WIRED_AUDIO_DEVICE_CONNECTED"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"ANCHOR_TYPE_WIRED_AUDIO_DEVICE_DISCONNECTED"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"ANCHOR_TYPE_CHARGER_CONNECTED"])
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
  v8.super_class = ATXMagicalMomentsPBMMEngagedTracker;
  v4 = [(ATXMagicalMomentsPBMMEngagedTracker *)&v8 description];
  v5 = [(ATXMagicalMomentsPBMMEngagedTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    anchor = self->_anchor;
    if (anchor >= 0x13)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_anchor];
    }

    else
    {
      v5 = off_27859F0A8[anchor];
    }

    [v3 setObject:v5 forKey:@"anchor"];
  }

  bundleId = self->_bundleId;
  if (bundleId)
  {
    [v3 setObject:bundleId forKey:@"bundleId"];
  }

  abGroup = self->_abGroup;
  if (abGroup)
  {
    [v3 setObject:abGroup forKey:@"abGroup"];
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType)
  {
    [v3 setObject:consumerSubType forKey:@"consumerSubType"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    anchor = self->_anchor;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_abGroup)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_consumerSubType)
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
    v4[4] = self->_anchor;
    *(v4 + 40) |= 1u;
  }

  v5 = v4;
  if (self->_bundleId)
  {
    [v4 setBundleId:?];
    v4 = v5;
  }

  if (self->_abGroup)
  {
    [v5 setAbGroup:?];
    v4 = v5;
  }

  if (self->_consumerSubType)
  {
    [v5 setConsumerSubType:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_anchor;
    *(v5 + 40) |= 1u;
  }

  v7 = [(NSString *)self->_bundleId copyWithZone:a3];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(NSString *)self->_abGroup copyWithZone:a3];
  v10 = v6[1];
  v6[1] = v9;

  v11 = [(NSString *)self->_consumerSubType copyWithZone:a3];
  v12 = v6[4];
  v6[4] = v11;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = *(v4 + 40);
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_anchor != *(v4 + 4))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  bundleId = self->_bundleId;
  if (bundleId | *(v4 + 3) && ![(NSString *)bundleId isEqual:?])
  {
    goto LABEL_13;
  }

  abGroup = self->_abGroup;
  if (abGroup | *(v4 + 1))
  {
    if (![(NSString *)abGroup isEqual:?])
    {
      goto LABEL_13;
    }
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType | *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[10])
  {
    self->_anchor = v4[4];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 3))
  {
    [(ATXMagicalMomentsPBMMEngagedTracker *)self setBundleId:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(ATXMagicalMomentsPBMMEngagedTracker *)self setAbGroup:?];
    v4 = v5;
  }

  if (*(v4 + 4))
  {
    [(ATXMagicalMomentsPBMMEngagedTracker *)self setConsumerSubType:?];
    v4 = v5;
  }
}

@end