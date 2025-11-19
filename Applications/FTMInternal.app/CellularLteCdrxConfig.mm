@interface CellularLteCdrxConfig
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCellStatus:(BOOL)a3;
- (void)setHasDrxInactivityMs:(BOOL)a3;
- (void)setHasDrxRetxTimerMs:(BOOL)a3;
- (void)setHasDrxShortCycleNum:(BOOL)a3;
- (void)setHasLongDrxCycleMs:(BOOL)a3;
- (void)setHasOnDurationMs:(BOOL)a3;
- (void)setHasShortDrxCycleMs:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CellularLteCdrxConfig

- (void)setHasCellStatus:(BOOL)a3
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

- (void)setHasOnDurationMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasDrxInactivityMs:(BOOL)a3
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

- (void)setHasDrxRetxTimerMs:(BOOL)a3
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

- (void)setHasLongDrxCycleMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasShortDrxCycleMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasDrxShortCycleNum:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularLteCdrxConfig;
  v3 = [(CellularLteCdrxConfig *)&v7 description];
  v4 = [(CellularLteCdrxConfig *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v7 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = [NSNumber numberWithUnsignedInt:self->_cellStatus];
  [v3 setObject:v8 forKey:@"cell_status"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v9 = [NSNumber numberWithUnsignedInt:self->_onDurationMs];
  [v3 setObject:v9 forKey:@"on_duration_ms"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = [NSNumber numberWithUnsignedInt:self->_drxInactivityMs];
  [v3 setObject:v10 forKey:@"drx_inactivity_ms"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v11 = [NSNumber numberWithUnsignedInt:self->_drxRetxTimerMs];
  [v3 setObject:v11 forKey:@"drx_retx_timer_ms"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v12 = [NSNumber numberWithUnsignedInt:self->_longDrxCycleMs];
  [v3 setObject:v12 forKey:@"long_drx_cycle_ms"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  v13 = [NSNumber numberWithUnsignedInt:self->_shortDrxCycleMs];
  [v3 setObject:v13 forKey:@"short_drx_cycle_ms"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_9:
    v5 = [NSNumber numberWithUnsignedInt:self->_drxShortCycleNum];
    [v3 setObject:v5 forKey:@"drx_short_cycle_num"];
  }

LABEL_10:

  return v3;
}

- (void)writeTo:(id)a3
{
  v13 = a3;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  cellStatus = self->_cellStatus;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  onDurationMs = self->_onDurationMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  drxInactivityMs = self->_drxInactivityMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  drxRetxTimerMs = self->_drxRetxTimerMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  longDrxCycleMs = self->_longDrxCycleMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  shortDrxCycleMs = self->_shortDrxCycleMs;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_9:
    drxShortCycleNum = self->_drxShortCycleNum;
    PBDataWriterWriteUint32Field();
  }

LABEL_10:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 44) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 4) = self->_cellStatus;
  *(v4 + 44) |= 2u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v4 + 9) = self->_onDurationMs;
  *(v4 + 44) |= 0x40u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v4 + 5) = self->_drxInactivityMs;
  *(v4 + 44) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v4 + 6) = self->_drxRetxTimerMs;
  *(v4 + 44) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v4 + 8) = self->_longDrxCycleMs;
  *(v4 + 44) |= 0x20u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  *(v4 + 10) = self->_shortDrxCycleMs;
  *(v4 + 44) |= 0x80u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_9:
    *(v4 + 7) = self->_drxShortCycleNum;
    *(v4 + 44) |= 0x10u;
  }

LABEL_10:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 44) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_cellStatus;
  *(result + 44) |= 2u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 9) = self->_onDurationMs;
  *(result + 44) |= 0x40u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 5) = self->_drxInactivityMs;
  *(result + 44) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 6) = self->_drxRetxTimerMs;
  *(result + 44) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 8) = self->_longDrxCycleMs;
  *(result + 44) |= 0x20u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

LABEL_17:
  *(result + 10) = self->_shortDrxCycleMs;
  *(result + 44) |= 0x80u;
  if ((*&self->_has & 0x10) == 0)
  {
    return result;
  }

LABEL_9:
  *(result + 7) = self->_drxShortCycleNum;
  *(result + 44) |= 0x10u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_40;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_40;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_40;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) == 0 || self->_cellStatus != *(v4 + 4))
    {
      goto LABEL_40;
    }
  }

  else if ((*(v4 + 44) & 2) != 0)
  {
    goto LABEL_40;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(v4 + 44) & 0x40) == 0 || self->_onDurationMs != *(v4 + 9))
    {
      goto LABEL_40;
    }
  }

  else if ((*(v4 + 44) & 0x40) != 0)
  {
    goto LABEL_40;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 44) & 4) == 0 || self->_drxInactivityMs != *(v4 + 5))
    {
      goto LABEL_40;
    }
  }

  else if ((*(v4 + 44) & 4) != 0)
  {
    goto LABEL_40;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 44) & 8) == 0 || self->_drxRetxTimerMs != *(v4 + 6))
    {
      goto LABEL_40;
    }
  }

  else if ((*(v4 + 44) & 8) != 0)
  {
    goto LABEL_40;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 44) & 0x20) == 0 || self->_longDrxCycleMs != *(v4 + 8))
    {
      goto LABEL_40;
    }
  }

  else if ((*(v4 + 44) & 0x20) != 0)
  {
    goto LABEL_40;
  }

  if ((*&self->_has & 0x80) != 0)
  {
    if ((*(v4 + 44) & 0x80) == 0 || self->_shortDrxCycleMs != *(v4 + 10))
    {
      goto LABEL_40;
    }
  }

  else if ((*(v4 + 44) & 0x80) != 0)
  {
LABEL_40:
    v5 = 0;
    goto LABEL_41;
  }

  v5 = (*(v4 + 44) & 0x10) == 0;
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 44) & 0x10) == 0 || self->_drxShortCycleNum != *(v4 + 7))
    {
      goto LABEL_40;
    }

    v5 = 1;
  }

LABEL_41:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_cellStatus;
      if ((*&self->_has & 0x40) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_onDurationMs;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v4 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_drxInactivityMs;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_6:
    v6 = 2654435761 * self->_drxRetxTimerMs;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    v7 = 2654435761 * self->_longDrxCycleMs;
    if ((*&self->_has & 0x80) != 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v8 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v9 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

LABEL_15:
  v7 = 0;
  if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v8 = 2654435761 * self->_shortDrxCycleMs;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v9 = 2654435761 * self->_drxShortCycleNum;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 44);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 44);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(v4 + 44) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_cellStatus = *(v4 + 4);
  *&self->_has |= 2u;
  v5 = *(v4 + 44);
  if ((v5 & 0x40) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_onDurationMs = *(v4 + 9);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 44);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_drxInactivityMs = *(v4 + 5);
  *&self->_has |= 4u;
  v5 = *(v4 + 44);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_drxRetxTimerMs = *(v4 + 6);
  *&self->_has |= 8u;
  v5 = *(v4 + 44);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_longDrxCycleMs = *(v4 + 8);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 44);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  self->_shortDrxCycleMs = *(v4 + 10);
  *&self->_has |= 0x80u;
  if ((*(v4 + 44) & 0x10) != 0)
  {
LABEL_9:
    self->_drxShortCycleNum = *(v4 + 7);
    *&self->_has |= 0x10u;
  }

LABEL_10:
}

@end