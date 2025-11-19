@interface DirectionsPlanTransitPreferences
- (BOOL)isEqual:(id)a3;
- (DirectionsPlanTransitPreferences)initWithGEOTransitOptions:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)avoidedTransitModes;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAvoidFerryRoutes:(BOOL)a3;
- (void)setHasAvoidMetroLightRailRoutes:(BOOL)a3;
- (void)setHasAvoidRailRoutes:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation DirectionsPlanTransitPreferences

- (unint64_t)avoidedTransitModes
{
  v3 = [(DirectionsPlanTransitPreferences *)self avoidBusRoutes];
  if ([(DirectionsPlanTransitPreferences *)self avoidMetroLightRailRoutes])
  {
    v3 |= 2uLL;
  }

  if ([(DirectionsPlanTransitPreferences *)self avoidRailRoutes])
  {
    v3 |= 4uLL;
  }

  if ([(DirectionsPlanTransitPreferences *)self avoidFerryRoutes])
  {
    return v3 | 8;
  }

  else
  {
    return v3;
  }
}

- (DirectionsPlanTransitPreferences)initWithGEOTransitOptions:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DirectionsPlanTransitPreferences;
  v5 = [(DirectionsPlanTransitPreferences *)&v9 init];
  if (v5 && [v4 avoidedModesCount])
  {
    for (i = 0; i < [v4 avoidedModesCount]; ++i)
    {
      v7 = *([v4 avoidedModes] + i);
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4[12];
  if (v5)
  {
    self->_avoidBusRoutes = v4[8];
    *&self->_has |= 1u;
    v5 = v4[12];
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

  else if ((v4[12] & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_avoidMetroLightRailRoutes = v4[10];
  *&self->_has |= 4u;
  v5 = v4[12];
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
  self->_avoidRailRoutes = v4[11];
  *&self->_has |= 8u;
  if ((v4[12] & 2) != 0)
  {
LABEL_5:
    self->_avoidFerryRoutes = v4[9];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  if (*&self->_has)
  {
    if ((v4[12] & 1) == 0)
    {
      goto LABEL_32;
    }

    if (self->_avoidBusRoutes)
    {
      if ((v4[8] & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else if (v4[8])
    {
      goto LABEL_32;
    }
  }

  else if (v4[12])
  {
    goto LABEL_32;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((v4[12] & 4) == 0)
    {
      goto LABEL_32;
    }

    if (self->_avoidMetroLightRailRoutes)
    {
      if ((v4[10] & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else if (v4[10])
    {
      goto LABEL_32;
    }
  }

  else if ((v4[12] & 4) != 0)
  {
    goto LABEL_32;
  }

  if ((*&self->_has & 8) == 0)
  {
    if ((v4[12] & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_32:
    v5 = 0;
    goto LABEL_33;
  }

  if ((v4[12] & 8) == 0)
  {
    goto LABEL_32;
  }

  if (self->_avoidRailRoutes)
  {
    if ((v4[11] & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (v4[11])
  {
    goto LABEL_32;
  }

LABEL_8:
  v5 = (v4[12] & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((v4[12] & 2) != 0)
    {
      if (self->_avoidFerryRoutes)
      {
        if (v4[9])
        {
          goto LABEL_34;
        }
      }

      else if (!v4[9])
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

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[8] = self->_avoidBusRoutes;
    v4[12] |= 1u;
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

  v4[10] = self->_avoidMetroLightRailRoutes;
  v4[12] |= 4u;
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
  v4[11] = self->_avoidRailRoutes;
  v4[12] |= 8u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    v4[9] = self->_avoidFerryRoutes;
    v4[12] |= 2u;
  }

LABEL_6:
}

- (void)writeTo:(id)a3
{
  v5 = a3;
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
  v4 = [(DirectionsPlanTransitPreferences *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (void)setHasAvoidFerryRoutes:(BOOL)a3
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

- (void)setHasAvoidRailRoutes:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasAvoidMetroLightRailRoutes:(BOOL)a3
{
  if (a3)
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