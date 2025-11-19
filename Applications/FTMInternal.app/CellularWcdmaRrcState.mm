@interface CellularWcdmaRrcState
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsNewRrcState:(id)a3;
- (int)StringAsRrcState:(id)a3;
- (int)newRrcState;
- (int)rrcState;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasNewRrcState:(BOOL)a3;
- (void)setHasNumSubs:(BOOL)a3;
- (void)setHasPrevStateDurMs:(BOOL)a3;
- (void)setHasPsPref:(BOOL)a3;
- (void)setHasRrcState:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CellularWcdmaRrcState

- (int)rrcState
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_rrcState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRrcState:(BOOL)a3
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

- (int)StringAsRrcState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"WCDMA_RRC_STATE_DISCONNECTED"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"WCDMA_RRC_STATE_CONNECTING"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"WCDMA_RRC_STATE_CELL_FACH"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"WCDMA_RRC_STATE_CELL_DCH"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"WCDMA_RRC_STATE_CELL_PCH"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"WCDMA_RRC_STATE_URA_PCH"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)newRrcState
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_newRrcState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasNewRrcState:(BOOL)a3
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

- (int)StringAsNewRrcState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"WCDMA_RRC_STATE_DISCONNECTED"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"WCDMA_RRC_STATE_CONNECTING"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"WCDMA_RRC_STATE_CELL_FACH"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"WCDMA_RRC_STATE_CELL_DCH"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"WCDMA_RRC_STATE_CELL_PCH"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"WCDMA_RRC_STATE_URA_PCH"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasPrevStateDurMs:(BOOL)a3
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

- (void)setHasNumSubs:(BOOL)a3
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

- (void)setHasPsPref:(BOOL)a3
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

- (void)setHasSubsId:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularWcdmaRrcState;
  v3 = [(CellularWcdmaRrcState *)&v7 description];
  v4 = [(CellularWcdmaRrcState *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v9 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v9 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  rrcState = self->_rrcState;
  if (rrcState >= 6)
  {
    v11 = [NSString stringWithFormat:@"(unknown: %i)", self->_rrcState];
  }

  else
  {
    v11 = off_100318E98[rrcState];
  }

  [v3 setObject:v11 forKey:@"rrc_state"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_20:
  newRrcState = self->_newRrcState;
  if (newRrcState >= 6)
  {
    v13 = [NSString stringWithFormat:@"(unknown: %i)", self->_newRrcState];
  }

  else
  {
    v13 = off_100318E98[newRrcState];
  }

  [v3 setObject:v13 forKey:@"new_rrc_state"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  v14 = [NSNumber numberWithUnsignedInt:self->_prevStateDurMs];
  [v3 setObject:v14 forKey:@"prev_state_dur_ms"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_25:
  v15 = [NSNumber numberWithUnsignedInt:self->_numSubs];
  [v3 setObject:v15 forKey:@"num_subs"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_7:
    v5 = [NSNumber numberWithUnsignedInt:self->_psPref];
    [v3 setObject:v5 forKey:@"ps_pref"];
  }

LABEL_8:
  plmn = self->_plmn;
  if (plmn)
  {
    [v3 setObject:plmn forKey:@"plmn"];
  }

  if ((*&self->_has & 0x40) != 0)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v7 forKey:@"subs_id"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  rrcState = self->_rrcState;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  newRrcState = self->_newRrcState;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  prevStateDurMs = self->_prevStateDurMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_19:
  numSubs = self->_numSubs;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_7:
    psPref = self->_psPref;
    PBDataWriterWriteUint32Field();
  }

LABEL_8:
  if (self->_plmn)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 0x40) != 0)
  {
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 48) |= 1u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 10) = self->_rrcState;
  *(v4 + 48) |= 0x20u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v4 + 4) = self->_newRrcState;
  *(v4 + 48) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v4 + 8) = self->_prevStateDurMs;
  *(v4 + 48) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_19:
  *(v4 + 5) = self->_numSubs;
  *(v4 + 48) |= 4u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_7:
    *(v4 + 9) = self->_psPref;
    *(v4 + 48) |= 0x10u;
  }

LABEL_8:
  if (self->_plmn)
  {
    v6 = v4;
    [v4 setPlmn:?];
    v4 = v6;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    *(v4 + 11) = self->_subsId;
    *(v4 + 48) |= 0x40u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 48) |= 1u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 10) = self->_rrcState;
  *(v5 + 48) |= 0x20u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v5 + 4) = self->_newRrcState;
  *(v5 + 48) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v5 + 8) = self->_prevStateDurMs;
  *(v5 + 48) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  *(v5 + 5) = self->_numSubs;
  *(v5 + 48) |= 4u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_7:
    *(v5 + 9) = self->_psPref;
    *(v5 + 48) |= 0x10u;
  }

LABEL_8:
  v8 = [(NSData *)self->_plmn copyWithZone:a3];
  v9 = v6[3];
  v6[3] = v8;

  if ((*&self->_has & 0x40) != 0)
  {
    *(v6 + 11) = self->_subsId;
    *(v6 + 48) |= 0x40u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_39;
  }

  has = self->_has;
  v6 = *(v4 + 48);
  if (has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_39;
    }
  }

  else if (*(v4 + 48))
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 48) & 0x20) == 0 || self->_rrcState != *(v4 + 10))
    {
      goto LABEL_39;
    }
  }

  else if ((*(v4 + 48) & 0x20) != 0)
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_newRrcState != *(v4 + 4))
    {
      goto LABEL_39;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 48) & 8) == 0 || self->_prevStateDurMs != *(v4 + 8))
    {
      goto LABEL_39;
    }
  }

  else if ((*(v4 + 48) & 8) != 0)
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 48) & 4) == 0 || self->_numSubs != *(v4 + 5))
    {
      goto LABEL_39;
    }
  }

  else if ((*(v4 + 48) & 4) != 0)
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 48) & 0x10) == 0 || self->_psPref != *(v4 + 9))
    {
      goto LABEL_39;
    }
  }

  else if ((*(v4 + 48) & 0x10) != 0)
  {
    goto LABEL_39;
  }

  plmn = self->_plmn;
  if (plmn | *(v4 + 3))
  {
    if (![(NSData *)plmn isEqual:?])
    {
LABEL_39:
      v8 = 0;
      goto LABEL_40;
    }

    has = self->_has;
  }

  v8 = (*(v4 + 48) & 0x40) == 0;
  if ((has & 0x40) != 0)
  {
    if ((*(v4 + 48) & 0x40) == 0 || self->_subsId != *(v4 + 11))
    {
      goto LABEL_39;
    }

    v8 = 1;
  }

LABEL_40:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x20) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_rrcState;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_newRrcState;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v5 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_prevStateDurMs;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v7 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_11:
  v6 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v7 = 2654435761 * self->_numSubs;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_psPref;
    goto LABEL_14;
  }

LABEL_13:
  v8 = 0;
LABEL_14:
  v9 = [(NSData *)self->_plmn hash];
  if ((*&self->_has & 0x40) != 0)
  {
    v10 = 2654435761 * self->_subsId;
  }

  else
  {
    v10 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v10 ^ v9;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 48);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 48);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*(v4 + 48) & 0x20) == 0)
  {
    goto LABEL_3;
  }

  self->_rrcState = *(v4 + 10);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 48);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_newRrcState = *(v4 + 4);
  *&self->_has |= 2u;
  v5 = *(v4 + 48);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_prevStateDurMs = *(v4 + 8);
  *&self->_has |= 8u;
  v5 = *(v4 + 48);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_19:
  self->_numSubs = *(v4 + 5);
  *&self->_has |= 4u;
  if ((*(v4 + 48) & 0x10) != 0)
  {
LABEL_7:
    self->_psPref = *(v4 + 9);
    *&self->_has |= 0x10u;
  }

LABEL_8:
  if (*(v4 + 3))
  {
    v6 = v4;
    [(CellularWcdmaRrcState *)self setPlmn:?];
    v4 = v6;
  }

  if ((*(v4 + 48) & 0x40) != 0)
  {
    self->_subsId = *(v4 + 11);
    *&self->_has |= 0x40u;
  }
}

@end