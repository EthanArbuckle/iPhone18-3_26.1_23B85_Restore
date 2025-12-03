@interface DirectionsPlanTransitPreferences
- (BOOL)isEqual:(id)equal;
- (DirectionsPlanTransitPreferences)initWithGEOTransitOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)avoidedTransitModes;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAvoidFerryRoutes:(BOOL)routes;
- (void)setHasAvoidMetroLightRailRoutes:(BOOL)routes;
- (void)setHasAvoidRailRoutes:(BOOL)routes;
- (void)writeTo:(id)to;
@end

@implementation DirectionsPlanTransitPreferences

- (unint64_t)avoidedTransitModes
{
  avoidBusRoutes = [(DirectionsPlanTransitPreferences *)self avoidBusRoutes];
  if ([(DirectionsPlanTransitPreferences *)self avoidMetroLightRailRoutes])
  {
    avoidBusRoutes |= 2uLL;
  }

  if ([(DirectionsPlanTransitPreferences *)self avoidRailRoutes])
  {
    avoidBusRoutes |= 4uLL;
  }

  if ([(DirectionsPlanTransitPreferences *)self avoidFerryRoutes])
  {
    return avoidBusRoutes | 8;
  }

  else
  {
    return avoidBusRoutes;
  }
}

- (DirectionsPlanTransitPreferences)initWithGEOTransitOptions:(id)options
{
  optionsCopy = options;
  v9.receiver = self;
  v9.super_class = DirectionsPlanTransitPreferences;
  v5 = [(DirectionsPlanTransitPreferences *)&v9 init];
  if (v5 && [optionsCopy avoidedModesCount])
  {
    for (i = 0; i < [optionsCopy avoidedModesCount]; ++i)
    {
      v7 = *([optionsCopy avoidedModes] + i);
      if (v7 <= 2)
      {
        if (v7 != 1)
        {
          if (v7 == 2)
          {
            [(DirectionsPlanTransitPreferences *)v5 setAvoidRailRoutes:1];
          }

          continue;
        }
      }

      else
      {
        if (v7 == 5)
        {
          [(DirectionsPlanTransitPreferences *)v5 setAvoidFerryRoutes:1];
          continue;
        }

        if (v7 == 4)
        {
          [(DirectionsPlanTransitPreferences *)v5 setAvoidBusRoutes:1];
          continue;
        }

        if (v7 != 3)
        {
          continue;
        }
      }

      [(DirectionsPlanTransitPreferences *)v5 setAvoidMetroLightRailRoutes:1];
    }
  }

  return v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy[12];
  if (v5)
  {
    self->_avoidBusRoutes = fromCopy[8];
    *&self->_has |= 1u;
    v5 = fromCopy[12];
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((fromCopy[12] & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_avoidMetroLightRailRoutes = fromCopy[10];
  *&self->_has |= 4u;
  v5 = fromCopy[12];
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  self->_avoidRailRoutes = fromCopy[11];
  *&self->_has |= 8u;
  if ((fromCopy[12] & 2) != 0)
  {
LABEL_5:
    self->_avoidFerryRoutes = fromCopy[9];
    *&self->_has |= 2u;
  }

LABEL_6:
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_avoidBusRoutes;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_avoidMetroLightRailRoutes;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v5 = 0;
      return v3 ^ v2 ^ v4 ^ v5;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761 * self->_avoidRailRoutes;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_avoidFerryRoutes;
  return v3 ^ v2 ^ v4 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  if (*&self->_has)
  {
    if ((equalCopy[12] & 1) == 0)
    {
      goto LABEL_32;
    }

    if (self->_avoidBusRoutes)
    {
      if ((equalCopy[8] & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else if (equalCopy[8])
    {
      goto LABEL_32;
    }
  }

  else if (equalCopy[12])
  {
    goto LABEL_32;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((equalCopy[12] & 4) == 0)
    {
      goto LABEL_32;
    }

    if (self->_avoidMetroLightRailRoutes)
    {
      if ((equalCopy[10] & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else if (equalCopy[10])
    {
      goto LABEL_32;
    }
  }

  else if ((equalCopy[12] & 4) != 0)
  {
    goto LABEL_32;
  }

  if ((*&self->_has & 8) == 0)
  {
    if ((equalCopy[12] & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_32:
    v5 = 0;
    goto LABEL_33;
  }

  if ((equalCopy[12] & 8) == 0)
  {
    goto LABEL_32;
  }

  if (self->_avoidRailRoutes)
  {
    if ((equalCopy[11] & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (equalCopy[11])
  {
    goto LABEL_32;
  }

LABEL_8:
  v5 = (equalCopy[12] & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((equalCopy[12] & 2) != 0)
    {
      if (self->_avoidFerryRoutes)
      {
        if (equalCopy[9])
        {
          goto LABEL_34;
        }
      }

      else if (!equalCopy[9])
      {
LABEL_34:
        v5 = 1;
        goto LABEL_33;
      }
    }

    goto LABEL_32;
  }

LABEL_33:

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 8) = self->_avoidBusRoutes;
    *(result + 12) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 10) = self->_avoidMetroLightRailRoutes;
  *(result + 12) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_9:
  *(result + 11) = self->_avoidRailRoutes;
  *(result + 12) |= 8u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_5:
  *(result + 9) = self->_avoidFerryRoutes;
  *(result + 12) |= 2u;
  return result;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[8] = self->_avoidBusRoutes;
    toCopy[12] |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  toCopy[10] = self->_avoidMetroLightRailRoutes;
  toCopy[12] |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  toCopy[11] = self->_avoidRailRoutes;
  toCopy[12] |= 8u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    toCopy[9] = self->_avoidFerryRoutes;
    toCopy[12] |= 2u;
  }

LABEL_6:
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    PBDataWriterWriteBOOLField();
  }

LABEL_6:
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [NSNumber numberWithBool:self->_avoidBusRoutes];
    [v3 setObject:v7 forKey:@"avoidBusRoutes"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = [NSNumber numberWithBool:self->_avoidMetroLightRailRoutes];
  [v3 setObject:v8 forKey:@"avoidMetroLightRailRoutes"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v9 = [NSNumber numberWithBool:self->_avoidRailRoutes];
  [v3 setObject:v9 forKey:@"avoidRailRoutes"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    v5 = [NSNumber numberWithBool:self->_avoidFerryRoutes];
    [v3 setObject:v5 forKey:@"avoidFerryRoutes"];
  }

LABEL_6:

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = DirectionsPlanTransitPreferences;
  v3 = [(DirectionsPlanTransitPreferences *)&v7 description];
  dictionaryRepresentation = [(DirectionsPlanTransitPreferences *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (void)setHasAvoidFerryRoutes:(BOOL)routes
{
  if (routes)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasAvoidRailRoutes:(BOOL)routes
{
  if (routes)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasAvoidMetroLightRailRoutes:(BOOL)routes
{
  if (routes)
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