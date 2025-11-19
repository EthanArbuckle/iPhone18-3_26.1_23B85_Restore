@interface ATXMPBHomeScreenAppPanelLaunchRatioTracker
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)locationAsString:(int)a3;
- (id)ratioTypeAsString:(int)a3;
- (int)StringAsLocation:(id)a3;
- (int)StringAsRatioType:(id)a3;
- (int)location;
- (int)ratioType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasRatioType:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (id)locationAsString:(int)a3
{
  if ((a3 - 1) >= 6)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E80C3AA0[a3 - 1];
  }

  return v4;
}

- (int)StringAsLocation:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Page1"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Page2"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Page3"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Page4"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"OtherPages"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"HomeScreenDock"])
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

- (void)setHasRatioType:(BOOL)a3
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

- (id)ratioTypeAsString:(int)a3
{
  if ((a3 - 1) >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E80C3AD0[a3 - 1];
  }

  return v4;
}

- (int)StringAsRatioType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"AppPanel"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"StaticAppIcon"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"StaticAppIconIncludingEveryAppInFolder"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Dock"])
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
  v5 = [(ATXMPBHomeScreenAppPanelLaunchRatioTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
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

    [v3 setObject:v6 forKey:@"location"];

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

    [v3 setObject:v8 forKey:@"ratioType"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v6 = v4;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[2] = self->_location;
    *(v4 + 16) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[3] = self->_ratioType;
    *(v4 + 16) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 16) & 1) == 0 || self->_location != *(v4 + 2))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 16))
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = (*(v4 + 16) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 16) & 2) == 0 || self->_ratioType != *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 16);
  if (v5)
  {
    self->_location = *(v4 + 2);
    *&self->_has |= 1u;
    v5 = *(v4 + 16);
  }

  if ((v5 & 2) != 0)
  {
    self->_ratioType = *(v4 + 3);
    *&self->_has |= 2u;
  }
}

@end