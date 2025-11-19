@interface CellularNrBeamSwitch
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsMotionState:(id)a3;
- (int)motionState;
- (unint64_t)hash;
- (void)addNewBeamInfo:(id)a3;
- (void)addOldBeamInfo:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasBandInd:(BOOL)a3;
- (void)setHasDopplerEstimate:(BOOL)a3;
- (void)setHasDurationBeforeSwitch:(BOOL)a3;
- (void)setHasMotionState:(BOOL)a3;
- (void)setHasNumSubs:(BOOL)a3;
- (void)setHasPsPref:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CellularNrBeamSwitch

- (void)setHasDurationBeforeSwitch:(BOOL)a3
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

- (void)addOldBeamInfo:(id)a3
{
  v4 = a3;
  oldBeamInfos = self->_oldBeamInfos;
  v8 = v4;
  if (!oldBeamInfos)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_oldBeamInfos;
    self->_oldBeamInfos = v6;

    v4 = v8;
    oldBeamInfos = self->_oldBeamInfos;
  }

  [(NSMutableArray *)oldBeamInfos addObject:v4];
}

- (void)addNewBeamInfo:(id)a3
{
  v4 = a3;
  thenewBeamInfos = self->_thenewBeamInfos;
  v8 = v4;
  if (!thenewBeamInfos)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_thenewBeamInfos;
    self->_thenewBeamInfos = v6;

    v4 = v8;
    thenewBeamInfos = self->_thenewBeamInfos;
  }

  [(NSMutableArray *)thenewBeamInfos addObject:v4];
}

- (int)motionState
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_motionState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasMotionState:(BOOL)a3
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

- (int)StringAsMotionState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"MOTION_ST_STATIONARY"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"MOTION_ST_MOVING"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"MOTION_ST_PEDESTRIAN"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"MOTION_ST_DRIVING"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"MOTION_ST_SEMISTATIONARY"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDopplerEstimate:(BOOL)a3
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

- (void)setHasBandInd:(BOOL)a3
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

- (void)setHasSubsId:(BOOL)a3
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

- (void)setHasNumSubs:(BOOL)a3
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

- (void)setHasPsPref:(BOOL)a3
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
  v7.super_class = CellularNrBeamSwitch;
  v3 = [(CellularNrBeamSwitch *)&v7 description];
  v4 = [(CellularNrBeamSwitch *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v5 forKey:@"timestamp"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v6 = [NSNumber numberWithUnsignedInt:self->_durationBeforeSwitch];
    [v3 setObject:v6 forKey:@"duration_before_switch"];
  }

  if ([(NSMutableArray *)self->_oldBeamInfos count])
  {
    v7 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_oldBeamInfos, "count")}];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v8 = self->_oldBeamInfos;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v36;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v36 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v35 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:v13];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKey:@"old_beam_info"];
  }

  if ([(NSMutableArray *)self->_thenewBeamInfos count])
  {
    v14 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_thenewBeamInfos, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v15 = self->_thenewBeamInfos;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v32;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v32 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v31 + 1) + 8 * j) dictionaryRepresentation];
          [v14 addObject:v20];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v17);
    }

    [v3 setObject:v14 forKey:@"new_beam_info"];
  }

  v21 = self->_has;
  if ((v21 & 0x10) != 0)
  {
    motionState = self->_motionState;
    if (motionState >= 5)
    {
      v26 = [NSString stringWithFormat:@"(unknown: %i)", self->_motionState];
    }

    else
    {
      v26 = *(&off_100318948 + motionState);
    }

    [v3 setObject:v26 forKey:@"motion_state"];

    v21 = self->_has;
    if ((v21 & 4) == 0)
    {
LABEL_25:
      if ((v21 & 2) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_40;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_25;
  }

  v27 = [NSNumber numberWithUnsignedInt:self->_dopplerEstimate];
  [v3 setObject:v27 forKey:@"doppler_estimate"];

  v21 = self->_has;
  if ((v21 & 2) == 0)
  {
LABEL_26:
    if ((v21 & 0x80) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_41;
  }

LABEL_40:
  v28 = [NSNumber numberWithUnsignedInt:self->_bandInd];
  [v3 setObject:v28 forKey:@"band_ind"];

  v21 = self->_has;
  if ((v21 & 0x80) == 0)
  {
LABEL_27:
    if ((v21 & 0x20) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_42;
  }

LABEL_41:
  v29 = [NSNumber numberWithUnsignedInt:self->_subsId];
  [v3 setObject:v29 forKey:@"subs_id"];

  v21 = self->_has;
  if ((v21 & 0x20) == 0)
  {
LABEL_28:
    if ((v21 & 0x40) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_42:
  v30 = [NSNumber numberWithUnsignedInt:self->_numSubs];
  [v3 setObject:v30 forKey:@"num_subs"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_29:
    v22 = [NSNumber numberWithUnsignedInt:self->_psPref];
    [v3 setObject:v22 forKey:@"ps_pref"];
  }

LABEL_30:
  plmn = self->_plmn;
  if (plmn)
  {
    [v3 setObject:plmn forKey:@"plmn"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    durationBeforeSwitch = self->_durationBeforeSwitch;
    PBDataWriterWriteUint32Field();
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = self->_oldBeamInfos;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v10);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = self->_thenewBeamInfos;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v28;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v27 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v16);
  }

  v20 = self->_has;
  if ((v20 & 0x10) != 0)
  {
    motionState = self->_motionState;
    PBDataWriterWriteInt32Field();
    v20 = self->_has;
    if ((v20 & 4) == 0)
    {
LABEL_21:
      if ((v20 & 2) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_32;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_21;
  }

  dopplerEstimate = self->_dopplerEstimate;
  PBDataWriterWriteUint32Field();
  v20 = self->_has;
  if ((v20 & 2) == 0)
  {
LABEL_22:
    if ((v20 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_33;
  }

LABEL_32:
  bandInd = self->_bandInd;
  PBDataWriterWriteUint32Field();
  v20 = self->_has;
  if ((v20 & 0x20) == 0)
  {
LABEL_23:
    if ((v20 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_33:
  numSubs = self->_numSubs;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_24:
    psPref = self->_psPref;
    PBDataWriterWriteUint32Field();
  }

LABEL_25:
  if (self->_plmn)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 0x80000000) != 0)
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
    *(v4 + 72) |= 1u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(v4 + 6) = self->_durationBeforeSwitch;
    *(v4 + 72) |= 8u;
  }

  v16 = v4;
  if ([(CellularNrBeamSwitch *)self oldBeamInfosCount])
  {
    [v16 clearOldBeamInfos];
    v6 = [(CellularNrBeamSwitch *)self oldBeamInfosCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(CellularNrBeamSwitch *)self oldBeamInfoAtIndex:i];
        [v16 addOldBeamInfo:v9];
      }
    }
  }

  if ([(CellularNrBeamSwitch *)self newBeamInfosCount])
  {
    [v16 clearNewBeamInfos];
    v10 = [(CellularNrBeamSwitch *)self newBeamInfosCount];
    if (v10)
    {
      v11 = v10;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(CellularNrBeamSwitch *)self newBeamInfoAtIndex:j];
        [v16 addNewBeamInfo:v13];
      }
    }
  }

  v14 = self->_has;
  v15 = v16;
  if ((v14 & 0x10) != 0)
  {
    *(v16 + 7) = self->_motionState;
    *(v16 + 72) |= 0x10u;
    v14 = self->_has;
    if ((v14 & 4) == 0)
    {
LABEL_15:
      if ((v14 & 2) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_28;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_15;
  }

  *(v16 + 5) = self->_dopplerEstimate;
  *(v16 + 72) |= 4u;
  v14 = self->_has;
  if ((v14 & 2) == 0)
  {
LABEL_16:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v16 + 4) = self->_bandInd;
  *(v16 + 72) |= 2u;
  v14 = self->_has;
  if ((v14 & 0x20) == 0)
  {
LABEL_17:
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_29:
  *(v16 + 10) = self->_numSubs;
  *(v16 + 72) |= 0x20u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_18:
    *(v16 + 16) = self->_psPref;
    *(v16 + 72) |= 0x40u;
  }

LABEL_19:
  if (self->_plmn)
  {
    [v16 setPlmn:?];
    v15 = v16;
  }

  if ((*&self->_has & 0x80000000) != 0)
  {
    v15[17] = self->_subsId;
    *(v15 + 72) |= 0x80u;
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
    *(v5 + 72) |= 1u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(v5 + 6) = self->_durationBeforeSwitch;
    *(v5 + 72) |= 8u;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = self->_oldBeamInfos;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v28 + 1) + 8 * i) copyWithZone:a3];
        [v6 addOldBeamInfo:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v10);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = self->_thenewBeamInfos;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v24 + 1) + 8 * j) copyWithZone:{a3, v24}];
        [v6 addNewBeamInfo:v19];
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v16);
  }

  v20 = self->_has;
  if ((v20 & 0x10) != 0)
  {
    *(v6 + 7) = self->_motionState;
    *(v6 + 72) |= 0x10u;
    v20 = self->_has;
    if ((v20 & 4) == 0)
    {
LABEL_21:
      if ((v20 & 2) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_30;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_21;
  }

  *(v6 + 5) = self->_dopplerEstimate;
  *(v6 + 72) |= 4u;
  v20 = self->_has;
  if ((v20 & 2) == 0)
  {
LABEL_22:
    if ((v20 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v6 + 4) = self->_bandInd;
  *(v6 + 72) |= 2u;
  v20 = self->_has;
  if ((v20 & 0x20) == 0)
  {
LABEL_23:
    if ((v20 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_31:
  *(v6 + 10) = self->_numSubs;
  *(v6 + 72) |= 0x20u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_24:
    *(v6 + 16) = self->_psPref;
    *(v6 + 72) |= 0x40u;
  }

LABEL_25:
  v21 = [(NSData *)self->_plmn copyWithZone:a3, v24];
  v22 = *(v6 + 7);
  *(v6 + 7) = v21;

  if ((*&self->_has & 0x80000000) != 0)
  {
    *(v6 + 17) = self->_subsId;
    *(v6 + 72) |= 0x80u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_49;
  }

  v5 = v4[72];
  if (*&self->_has)
  {
    if ((v4[72] & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_49;
    }
  }

  else if (v4[72])
  {
    goto LABEL_49;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((v4[72] & 8) == 0 || self->_durationBeforeSwitch != *(v4 + 6))
    {
      goto LABEL_49;
    }
  }

  else if ((v4[72] & 8) != 0)
  {
    goto LABEL_49;
  }

  oldBeamInfos = self->_oldBeamInfos;
  if (oldBeamInfos | *(v4 + 6) && ![(NSMutableArray *)oldBeamInfos isEqual:?])
  {
    goto LABEL_49;
  }

  thenewBeamInfos = self->_thenewBeamInfos;
  if (thenewBeamInfos | *(v4 + 4))
  {
    if (![(NSMutableArray *)thenewBeamInfos isEqual:?])
    {
      goto LABEL_49;
    }
  }

  has = self->_has;
  v9 = v4[72];
  if ((has & 0x10) != 0)
  {
    if ((v4[72] & 0x10) == 0 || self->_motionState != *(v4 + 7))
    {
      goto LABEL_49;
    }
  }

  else if ((v4[72] & 0x10) != 0)
  {
    goto LABEL_49;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((v4[72] & 4) == 0 || self->_dopplerEstimate != *(v4 + 5))
    {
      goto LABEL_49;
    }
  }

  else if ((v4[72] & 4) != 0)
  {
    goto LABEL_49;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((v4[72] & 2) == 0 || self->_bandInd != *(v4 + 4))
    {
      goto LABEL_49;
    }
  }

  else if ((v4[72] & 2) != 0)
  {
    goto LABEL_49;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((v4[72] & 0x20) == 0 || self->_numSubs != *(v4 + 10))
    {
      goto LABEL_49;
    }
  }

  else if ((v4[72] & 0x20) != 0)
  {
    goto LABEL_49;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((v4[72] & 0x40) == 0 || self->_psPref != *(v4 + 16))
    {
      goto LABEL_49;
    }
  }

  else if ((v4[72] & 0x40) != 0)
  {
    goto LABEL_49;
  }

  plmn = self->_plmn;
  if (plmn | *(v4 + 7))
  {
    if (![(NSData *)plmn isEqual:?])
    {
LABEL_49:
      v12 = 0;
      goto LABEL_50;
    }

    has = self->_has;
  }

  v11 = v4[72];
  if (has < 0)
  {
    if ((v11 & 0x80000000) == 0 || self->_subsId != *(v4 + 17))
    {
      goto LABEL_49;
    }

    v12 = 1;
  }

  else
  {
    v12 = v11 >= 0;
  }

LABEL_50:

  return v12;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v15 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = 0;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v3 = [(NSMutableArray *)self->_oldBeamInfos hash];
      goto LABEL_6;
    }
  }

  v3 = [(NSMutableArray *)self->_oldBeamInfos hash];
LABEL_6:
  v4 = v3;
  v5 = [(NSMutableArray *)self->_thenewBeamInfos hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v6 = 2654435761 * self->_motionState;
    if ((*&self->_has & 4) != 0)
    {
LABEL_8:
      v7 = 2654435761 * self->_dopplerEstimate;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_8;
    }
  }

  v7 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_9:
    v8 = 2654435761 * self->_bandInd;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_10;
    }

LABEL_15:
    v9 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

LABEL_14:
  v8 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_15;
  }

LABEL_10:
  v9 = 2654435761 * self->_numSubs;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_11:
    v10 = 2654435761 * self->_psPref;
    goto LABEL_17;
  }

LABEL_16:
  v10 = 0;
LABEL_17:
  v11 = [(NSData *)self->_plmn hash];
  if ((*&self->_has & 0x80000000) != 0)
  {
    v12 = 2654435761 * self->_subsId;
  }

  else
  {
    v12 = 0;
  }

  return v14 ^ v15 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = v4[72];
  if (v6)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v6 = v4[72];
  }

  if ((v6 & 8) != 0)
  {
    self->_durationBeforeSwitch = *(v4 + 6);
    *&self->_has |= 8u;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = *(v4 + 6);
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(CellularNrBeamSwitch *)self addOldBeamInfo:*(*(&v22 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v9);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = *(v5 + 4);
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(CellularNrBeamSwitch *)self addNewBeamInfo:*(*(&v18 + 1) + 8 * j), v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }

  v17 = v5[72];
  if ((v17 & 0x10) != 0)
  {
    self->_motionState = *(v5 + 7);
    *&self->_has |= 0x10u;
    v17 = v5[72];
    if ((v17 & 4) == 0)
    {
LABEL_21:
      if ((v17 & 2) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_32;
    }
  }

  else if ((v5[72] & 4) == 0)
  {
    goto LABEL_21;
  }

  self->_dopplerEstimate = *(v5 + 5);
  *&self->_has |= 4u;
  v17 = v5[72];
  if ((v17 & 2) == 0)
  {
LABEL_22:
    if ((v17 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_bandInd = *(v5 + 4);
  *&self->_has |= 2u;
  v17 = v5[72];
  if ((v17 & 0x20) == 0)
  {
LABEL_23:
    if ((v17 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_33:
  self->_numSubs = *(v5 + 10);
  *&self->_has |= 0x20u;
  if ((v5[72] & 0x40) != 0)
  {
LABEL_24:
    self->_psPref = *(v5 + 16);
    *&self->_has |= 0x40u;
  }

LABEL_25:
  if (*(v5 + 7))
  {
    [(CellularNrBeamSwitch *)self setPlmn:?];
  }

  if (v5[72] < 0)
  {
    self->_subsId = *(v5 + 17);
    *&self->_has |= 0x80u;
  }
}

@end