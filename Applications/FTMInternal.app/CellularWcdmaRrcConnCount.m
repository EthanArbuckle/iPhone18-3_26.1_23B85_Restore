@interface CellularWcdmaRrcConnCount
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)establishCauseAtIndex:(unint64_t)a3;
- (unsigned)releaseCauseAtIndex:(unint64_t)a3;
- (unsigned)rlfCauseAtIndex:(unint64_t)a3;
- (unsigned)rlfCauseSensorAtIndex:(unint64_t)a3;
- (unsigned)rrcConnReqCauseAtIndex:(unint64_t)a3;
- (void)addConnReqRel:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasDrbEstComp:(BOOL)a3;
- (void)setHasDurationSeconds:(BOOL)a3;
- (void)setHasNumSubs:(BOOL)a3;
- (void)setHasPsPref:(BOOL)a3;
- (void)setHasRrcSetupComp:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CellularWcdmaRrcConnCount

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = CellularWcdmaRrcConnCount;
  [(CellularWcdmaRrcConnCount *)&v3 dealloc];
}

- (void)setHasDurationSeconds:(BOOL)a3
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

- (unsigned)rrcConnReqCauseAtIndex:(unint64_t)a3
{
  p_rrcConnReqCauses = &self->_rrcConnReqCauses;
  count = self->_rrcConnReqCauses.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_rrcConnReqCauses->list[a3];
}

- (void)setHasRrcSetupComp:(BOOL)a3
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

- (void)setHasDrbEstComp:(BOOL)a3
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

- (unsigned)rlfCauseSensorAtIndex:(unint64_t)a3
{
  p_rlfCauseSensors = &self->_rlfCauseSensors;
  count = self->_rlfCauseSensors.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_rlfCauseSensors->list[a3];
}

- (unsigned)establishCauseAtIndex:(unint64_t)a3
{
  p_establishCauses = &self->_establishCauses;
  count = self->_establishCauses.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_establishCauses->list[a3];
}

- (unsigned)releaseCauseAtIndex:(unint64_t)a3
{
  p_releaseCauses = &self->_releaseCauses;
  count = self->_releaseCauses.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_releaseCauses->list[a3];
}

- (unsigned)rlfCauseAtIndex:(unint64_t)a3
{
  p_rlfCauses = &self->_rlfCauses;
  count = self->_rlfCauses.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_rlfCauses->list[a3];
}

- (void)addConnReqRel:(id)a3
{
  v4 = a3;
  connReqRels = self->_connReqRels;
  v8 = v4;
  if (!connReqRels)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_connReqRels;
    self->_connReqRels = v6;

    v4 = v8;
    connReqRels = self->_connReqRels;
  }

  [(NSMutableArray *)connReqRels addObject:v4];
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

- (void)setHasNumSubs:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularWcdmaRrcConnCount;
  v3 = [(CellularWcdmaRrcConnCount *)&v7 description];
  v4 = [(CellularWcdmaRrcConnCount *)self dictionaryRepresentation];
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

  if ((has & 4) != 0)
  {
    v6 = [NSNumber numberWithUnsignedInt:self->_durationSeconds];
    [v3 setObject:v6 forKey:@"duration_seconds"];
  }

  v7 = PBRepeatedUInt32NSArray();
  [v3 setObject:v7 forKey:@"rrc_conn_req_cause"];

  v8 = self->_has;
  if ((v8 & 0x20) != 0)
  {
    v9 = [NSNumber numberWithUnsignedInt:self->_rrcSetupComp];
    [v3 setObject:v9 forKey:@"rrc_setup_comp"];

    v8 = self->_has;
  }

  if ((v8 & 2) != 0)
  {
    v10 = [NSNumber numberWithUnsignedInt:self->_drbEstComp];
    [v3 setObject:v10 forKey:@"drb_est_comp"];
  }

  v11 = PBRepeatedUInt32NSArray();
  [v3 setObject:v11 forKey:@"rlf_cause_sensor"];

  v12 = PBRepeatedUInt32NSArray();
  [v3 setObject:v12 forKey:@"establish_cause"];

  v13 = PBRepeatedUInt32NSArray();
  [v3 setObject:v13 forKey:@"release_cause"];

  v14 = PBRepeatedUInt32NSArray();
  [v3 setObject:v14 forKey:@"rlf_cause"];

  if ([(NSMutableArray *)self->_connReqRels count])
  {
    v15 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_connReqRels, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = self->_connReqRels;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v29;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
          [v15 addObject:v21];
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v18);
    }

    [v3 setObject:v15 forKey:@"conn_req_rel"];
  }

  v22 = self->_has;
  if ((v22 & 0x40) != 0)
  {
    v26 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v26 forKey:@"subs_id"];

    v22 = self->_has;
    if ((v22 & 8) == 0)
    {
LABEL_20:
      if ((v22 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_20;
  }

  v27 = [NSNumber numberWithUnsignedInt:self->_numSubs, v28];
  [v3 setObject:v27 forKey:@"num_subs"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_21:
    v23 = [NSNumber numberWithUnsignedInt:self->_psPref, v28];
    [v3 setObject:v23 forKey:@"ps_pref"];
  }

LABEL_22:
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

  if ((has & 4) != 0)
  {
    durationSeconds = self->_durationSeconds;
    PBDataWriterWriteUint32Field();
  }

  if (self->_rrcConnReqCauses.count)
  {
    v35 = 0;
    PBDataWriterPlaceMark();
    if (self->_rrcConnReqCauses.count)
    {
      v8 = 0;
      do
      {
        v9 = self->_rrcConnReqCauses.list[v8];
        PBDataWriterWriteUint32Field();
        ++v8;
      }

      while (v8 < self->_rrcConnReqCauses.count);
    }

    PBDataWriterRecallMark();
  }

  v10 = self->_has;
  if ((v10 & 0x20) != 0)
  {
    rrcSetupComp = self->_rrcSetupComp;
    PBDataWriterWriteUint32Field();
    v10 = self->_has;
  }

  if ((v10 & 2) != 0)
  {
    drbEstComp = self->_drbEstComp;
    PBDataWriterWriteUint32Field();
  }

  if (self->_rlfCauseSensors.count)
  {
    v13 = 0;
    do
    {
      v14 = self->_rlfCauseSensors.list[v13];
      PBDataWriterWriteUint32Field();
      ++v13;
    }

    while (v13 < self->_rlfCauseSensors.count);
  }

  if (self->_establishCauses.count)
  {
    v15 = 0;
    do
    {
      v16 = self->_establishCauses.list[v15];
      PBDataWriterWriteUint32Field();
      ++v15;
    }

    while (v15 < self->_establishCauses.count);
  }

  if (self->_releaseCauses.count)
  {
    v17 = 0;
    do
    {
      v18 = self->_releaseCauses.list[v17];
      PBDataWriterWriteUint32Field();
      ++v17;
    }

    while (v17 < self->_releaseCauses.count);
  }

  if (self->_rlfCauses.count)
  {
    v19 = 0;
    do
    {
      v20 = self->_rlfCauses.list[v19];
      PBDataWriterWriteUint32Field();
      ++v19;
    }

    while (v19 < self->_rlfCauses.count);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v21 = self->_connReqRels;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v32;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v31 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v23);
  }

  v27 = self->_has;
  if ((v27 & 0x40) != 0)
  {
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
    v27 = self->_has;
    if ((v27 & 8) == 0)
    {
LABEL_35:
      if ((v27 & 0x10) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_35;
  }

  numSubs = self->_numSubs;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_36:
    psPref = self->_psPref;
    PBDataWriterWriteUint32Field();
  }

LABEL_37:
  if (self->_plmn)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[16] = self->_timestamp;
    *(v4 + 180) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v4 + 37) = self->_durationSeconds;
    *(v4 + 180) |= 4u;
  }

  v28 = v4;
  if ([(CellularWcdmaRrcConnCount *)self rrcConnReqCausesCount])
  {
    [v28 clearRrcConnReqCauses];
    v6 = [(CellularWcdmaRrcConnCount *)self rrcConnReqCausesCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [v28 addRrcConnReqCause:{-[CellularWcdmaRrcConnCount rrcConnReqCauseAtIndex:](self, "rrcConnReqCauseAtIndex:", i)}];
      }
    }
  }

  v9 = self->_has;
  if ((v9 & 0x20) != 0)
  {
    *(v28 + 43) = self->_rrcSetupComp;
    *(v28 + 180) |= 0x20u;
    v9 = self->_has;
  }

  if ((v9 & 2) != 0)
  {
    *(v28 + 36) = self->_drbEstComp;
    *(v28 + 180) |= 2u;
  }

  if ([(CellularWcdmaRrcConnCount *)self rlfCauseSensorsCount])
  {
    [v28 clearRlfCauseSensors];
    v10 = [(CellularWcdmaRrcConnCount *)self rlfCauseSensorsCount];
    if (v10)
    {
      v11 = v10;
      for (j = 0; j != v11; ++j)
      {
        [v28 addRlfCauseSensor:{-[CellularWcdmaRrcConnCount rlfCauseSensorAtIndex:](self, "rlfCauseSensorAtIndex:", j)}];
      }
    }
  }

  if ([(CellularWcdmaRrcConnCount *)self establishCausesCount])
  {
    [v28 clearEstablishCauses];
    v13 = [(CellularWcdmaRrcConnCount *)self establishCausesCount];
    if (v13)
    {
      v14 = v13;
      for (k = 0; k != v14; ++k)
      {
        [v28 addEstablishCause:{-[CellularWcdmaRrcConnCount establishCauseAtIndex:](self, "establishCauseAtIndex:", k)}];
      }
    }
  }

  if ([(CellularWcdmaRrcConnCount *)self releaseCausesCount])
  {
    [v28 clearReleaseCauses];
    v16 = [(CellularWcdmaRrcConnCount *)self releaseCausesCount];
    if (v16)
    {
      v17 = v16;
      for (m = 0; m != v17; ++m)
      {
        [v28 addReleaseCause:{-[CellularWcdmaRrcConnCount releaseCauseAtIndex:](self, "releaseCauseAtIndex:", m)}];
      }
    }
  }

  if ([(CellularWcdmaRrcConnCount *)self rlfCausesCount])
  {
    [v28 clearRlfCauses];
    v19 = [(CellularWcdmaRrcConnCount *)self rlfCausesCount];
    if (v19)
    {
      v20 = v19;
      for (n = 0; n != v20; ++n)
      {
        [v28 addRlfCause:{-[CellularWcdmaRrcConnCount rlfCauseAtIndex:](self, "rlfCauseAtIndex:", n)}];
      }
    }
  }

  if ([(CellularWcdmaRrcConnCount *)self connReqRelsCount])
  {
    [v28 clearConnReqRels];
    v22 = [(CellularWcdmaRrcConnCount *)self connReqRelsCount];
    if (v22)
    {
      v23 = v22;
      for (ii = 0; ii != v23; ++ii)
      {
        v25 = [(CellularWcdmaRrcConnCount *)self connReqRelAtIndex:ii];
        [v28 addConnReqRel:v25];
      }
    }
  }

  v26 = self->_has;
  v27 = v28;
  if ((v26 & 0x40) != 0)
  {
    *(v28 + 44) = self->_subsId;
    *(v28 + 180) |= 0x40u;
    v26 = self->_has;
    if ((v26 & 8) == 0)
    {
LABEL_35:
      if ((v26 & 0x10) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_35;
  }

  *(v28 + 38) = self->_numSubs;
  *(v28 + 180) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_36:
    *(v28 + 42) = self->_psPref;
    *(v28 + 180) |= 0x10u;
  }

LABEL_37:
  if (self->_plmn)
  {
    [v28 setPlmn:?];
    v27 = v28;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    v5[16] = self->_timestamp;
    *(v5 + 180) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 37) = self->_durationSeconds;
    *(v5 + 180) |= 4u;
  }

  PBRepeatedUInt32Copy();
  v8 = self->_has;
  if ((v8 & 0x20) != 0)
  {
    v6[43] = self->_rrcSetupComp;
    *(v6 + 180) |= 0x20u;
    v8 = self->_has;
  }

  if ((v8 & 2) != 0)
  {
    v6[36] = self->_drbEstComp;
    *(v6 + 180) |= 2u;
  }

  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = self->_connReqRels;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v19 + 1) + 8 * i) copyWithZone:{a3, v19}];
        [v6 addConnReqRel:v14];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v15 = self->_has;
  if ((v15 & 0x40) == 0)
  {
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_18;
    }

LABEL_22:
    v6[38] = self->_numSubs;
    *(v6 + 180) |= 8u;
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v6[44] = self->_subsId;
  *(v6 + 180) |= 0x40u;
  v15 = self->_has;
  if ((v15 & 8) != 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  if ((v15 & 0x10) != 0)
  {
LABEL_19:
    v6[42] = self->_psPref;
    *(v6 + 180) |= 0x10u;
  }

LABEL_20:
  v16 = [(NSData *)self->_plmn copyWithZone:a3, v19];
  v17 = *(v6 + 20);
  *(v6 + 20) = v16;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_46;
  }

  v5 = *(v4 + 180);
  if (*&self->_has)
  {
    if ((*(v4 + 180) & 1) == 0 || self->_timestamp != *(v4 + 16))
    {
      goto LABEL_46;
    }
  }

  else if (*(v4 + 180))
  {
    goto LABEL_46;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 180) & 4) == 0 || self->_durationSeconds != *(v4 + 37))
    {
      goto LABEL_46;
    }
  }

  else if ((*(v4 + 180) & 4) != 0)
  {
    goto LABEL_46;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
LABEL_46:
    v10 = 0;
    goto LABEL_47;
  }

  v6 = *(v4 + 180);
  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 180) & 0x20) == 0 || self->_rrcSetupComp != *(v4 + 43))
    {
      goto LABEL_46;
    }
  }

  else if ((*(v4 + 180) & 0x20) != 0)
  {
    goto LABEL_46;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 180) & 2) == 0 || self->_drbEstComp != *(v4 + 36))
    {
      goto LABEL_46;
    }
  }

  else if ((*(v4 + 180) & 2) != 0)
  {
    goto LABEL_46;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
    goto LABEL_46;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
    goto LABEL_46;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
    goto LABEL_46;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
    goto LABEL_46;
  }

  connReqRels = self->_connReqRels;
  if (connReqRels | *(v4 + 17))
  {
    if (![(NSMutableArray *)connReqRels isEqual:?])
    {
      goto LABEL_46;
    }
  }

  v8 = *(v4 + 180);
  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(v4 + 180) & 0x40) == 0 || self->_subsId != *(v4 + 44))
    {
      goto LABEL_46;
    }
  }

  else if ((*(v4 + 180) & 0x40) != 0)
  {
    goto LABEL_46;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 180) & 8) == 0 || self->_numSubs != *(v4 + 38))
    {
      goto LABEL_46;
    }
  }

  else if ((*(v4 + 180) & 8) != 0)
  {
    goto LABEL_46;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 180) & 0x10) == 0 || self->_psPref != *(v4 + 42))
    {
      goto LABEL_46;
    }
  }

  else if ((*(v4 + 180) & 0x10) != 0)
  {
    goto LABEL_46;
  }

  plmn = self->_plmn;
  if (plmn | *(v4 + 20))
  {
    v10 = [(NSData *)plmn isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_47:

  return v10;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v17 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = 0;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v16 = 2654435761 * self->_durationSeconds;
      goto LABEL_6;
    }
  }

  v16 = 0;
LABEL_6:
  v3 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 0x20) != 0)
  {
    v4 = 2654435761 * self->_rrcSetupComp;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_8:
      v5 = 2654435761 * self->_drbEstComp;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  v6 = PBRepeatedUInt32Hash();
  v7 = PBRepeatedUInt32Hash();
  v8 = PBRepeatedUInt32Hash();
  v9 = PBRepeatedUInt32Hash();
  v10 = [(NSMutableArray *)self->_connReqRels hash];
  if ((*&self->_has & 0x40) == 0)
  {
    v11 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_13;
    }

LABEL_16:
    v12 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    v13 = 0;
    goto LABEL_18;
  }

  v11 = 2654435761 * self->_subsId;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  v12 = 2654435761 * self->_numSubs;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v13 = 2654435761 * self->_psPref;
LABEL_18:
  v14 = v16 ^ v17 ^ v4 ^ v5 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v11 ^ v10;
  return v14 ^ v12 ^ v13 ^ [(NSData *)self->_plmn hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 180);
  if (v6)
  {
    self->_timestamp = *(v4 + 16);
    *&self->_has |= 1u;
    v6 = *(v4 + 180);
  }

  if ((v6 & 4) != 0)
  {
    self->_durationSeconds = *(v4 + 37);
    *&self->_has |= 4u;
  }

  v7 = [v4 rrcConnReqCausesCount];
  if (v7)
  {
    v8 = v7;
    for (i = 0; i != v8; ++i)
    {
      -[CellularWcdmaRrcConnCount addRrcConnReqCause:](self, "addRrcConnReqCause:", [v5 rrcConnReqCauseAtIndex:i]);
    }
  }

  v10 = *(v5 + 180);
  if ((v10 & 0x20) != 0)
  {
    self->_rrcSetupComp = *(v5 + 43);
    *&self->_has |= 0x20u;
    v10 = *(v5 + 180);
  }

  if ((v10 & 2) != 0)
  {
    self->_drbEstComp = *(v5 + 36);
    *&self->_has |= 2u;
  }

  v11 = [v5 rlfCauseSensorsCount];
  if (v11)
  {
    v12 = v11;
    for (j = 0; j != v12; ++j)
    {
      -[CellularWcdmaRrcConnCount addRlfCauseSensor:](self, "addRlfCauseSensor:", [v5 rlfCauseSensorAtIndex:j]);
    }
  }

  v14 = [v5 establishCausesCount];
  if (v14)
  {
    v15 = v14;
    for (k = 0; k != v15; ++k)
    {
      -[CellularWcdmaRrcConnCount addEstablishCause:](self, "addEstablishCause:", [v5 establishCauseAtIndex:k]);
    }
  }

  v17 = [v5 releaseCausesCount];
  if (v17)
  {
    v18 = v17;
    for (m = 0; m != v18; ++m)
    {
      -[CellularWcdmaRrcConnCount addReleaseCause:](self, "addReleaseCause:", [v5 releaseCauseAtIndex:m]);
    }
  }

  v20 = [v5 rlfCausesCount];
  if (v20)
  {
    v21 = v20;
    for (n = 0; n != v21; ++n)
    {
      -[CellularWcdmaRrcConnCount addRlfCause:](self, "addRlfCause:", [v5 rlfCauseAtIndex:n]);
    }
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v23 = *(v5 + 17);
  v24 = [v23 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v30;
    do
    {
      for (ii = 0; ii != v25; ii = ii + 1)
      {
        if (*v30 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [(CellularWcdmaRrcConnCount *)self addConnReqRel:*(*(&v29 + 1) + 8 * ii), v29];
      }

      v25 = [v23 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v25);
  }

  v28 = *(v5 + 180);
  if ((v28 & 0x40) != 0)
  {
    self->_subsId = *(v5 + 44);
    *&self->_has |= 0x40u;
    v28 = *(v5 + 180);
    if ((v28 & 8) == 0)
    {
LABEL_33:
      if ((v28 & 0x10) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  else if ((*(v5 + 180) & 8) == 0)
  {
    goto LABEL_33;
  }

  self->_numSubs = *(v5 + 38);
  *&self->_has |= 8u;
  if ((*(v5 + 180) & 0x10) != 0)
  {
LABEL_34:
    self->_psPref = *(v5 + 42);
    *&self->_has |= 0x10u;
  }

LABEL_35:
  if (*(v5 + 20))
  {
    [(CellularWcdmaRrcConnCount *)self setPlmn:?];
  }
}

@end