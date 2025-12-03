@interface ATXMPBHomeScreenAppPanelLaunchRatioTracker
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)locationAsString:(int)string;
- (id)ratioTypeAsString:(int)string;
- (int)StringAsLocation:(id)location;
- (int)StringAsRatioType:(id)type;
- (int)location;
- (int)ratioType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasRatioType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation ATXMPBHomeScreenAppPanelLaunchRatioTracker

- (int)location
{
  if (*&self->_has)
  {
    return self->_location;
  }

  else
  {
    return 1;
  }
}

- (id)locationAsString:(int)string
{
  if ((string - 1) >= 6)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E80C3AA0[string - 1];
  }

  return v4;
}

- (int)StringAsLocation:(id)location
{
  locationCopy = location;
  if ([locationCopy isEqualToString:@"Page1"])
  {
    v4 = 1;
  }

  else if ([locationCopy isEqualToString:@"Page2"])
  {
    v4 = 2;
  }

  else if ([locationCopy isEqualToString:@"Page3"])
  {
    v4 = 3;
  }

  else if ([locationCopy isEqualToString:@"Page4"])
  {
    v4 = 4;
  }

  else if ([locationCopy isEqualToString:@"OtherPages"])
  {
    v4 = 5;
  }

  else if ([locationCopy isEqualToString:@"HomeScreenDock"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int)ratioType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_ratioType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasRatioType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)ratioTypeAsString:(int)string
{
  if ((string - 1) >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E80C3AD0[string - 1];
  }

  return v4;
}

- (int)StringAsRatioType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"AppPanel"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"StaticAppIcon"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"StaticAppIconIncludingEveryAppInFolder"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"Dock"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXMPBHomeScreenAppPanelLaunchRatioTracker;
  v4 = [(ATXMPBHomeScreenAppPanelLaunchRatioTracker *)&v8 description];
  dictionaryRepresentation = [(ATXMPBHomeScreenAppPanelLaunchRatioTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = self->_location - 1;
    if (v5 >= 6)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_location];
    }

    else
    {
      v6 = off_1E80C3AA0[v5];
    }

    [dictionary setObject:v6 forKey:@"location"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = self->_ratioType - 1;
    if (v7 >= 4)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_ratioType];
    }

    else
    {
      v8 = off_1E80C3AD0[v7];
    }

    [dictionary setObject:v8 forKey:@"ratioType"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[2] = self->_location;
    *(toCopy + 16) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[3] = self->_ratioType;
    *(toCopy + 16) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 2) = self->_location;
    *(result + 16) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(result + 3) = self->_ratioType;
    *(result + 16) |= 2u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 16) & 1) == 0 || self->_location != *(equalCopy + 2))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 16))
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = (*(equalCopy + 16) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 16) & 2) == 0 || self->_ratioType != *(equalCopy + 3))
    {
      goto LABEL_11;
    }

    v5 = 1;
  }

LABEL_12:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_location;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_ratioType;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 16);
  if (v5)
  {
    self->_location = *(fromCopy + 2);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 16);
  }

  if ((v5 & 2) != 0)
  {
    self->_ratioType = *(fromCopy + 3);
    *&self->_has |= 2u;
  }
}

@end