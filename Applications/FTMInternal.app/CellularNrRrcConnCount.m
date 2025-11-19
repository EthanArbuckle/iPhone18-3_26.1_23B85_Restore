@interface CellularNrRrcConnCount
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)rrcConnReestReqAtIndex:(unint64_t)a3;
- (unsigned)rrcConnRejectAtIndex:(unint64_t)a3;
- (unsigned)rrcConnRelAtIndex:(unint64_t)a3;
- (unsigned)rrcConnRlfAtIndex:(unint64_t)a3;
- (unsigned)rrcConnSetupReqAtIndex:(unint64_t)a3;
- (unsigned)rrcResumeReqAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasDurationSeconds:(BOOL)a3;
- (void)setHasNumSubs:(BOOL)a3;
- (void)setHasPsPref:(BOOL)a3;
- (void)setHasRrcConnDrbEstComp:(BOOL)a3;
- (void)setHasRrcConnReestComp:(BOOL)a3;
- (void)setHasRrcConnSetupComp:(BOOL)a3;
- (void)setHasRrcResumeComp:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CellularNrRrcConnCount

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = CellularNrRrcConnCount;
  [(CellularNrRrcConnCount *)&v3 dealloc];
}

- (void)setHasDurationSeconds:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (unsigned)rrcConnSetupReqAtIndex:(unint64_t)a3
{
  p_rrcConnSetupReqs = &self->_rrcConnSetupReqs;
  count = self->_rrcConnSetupReqs.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_rrcConnSetupReqs->list[a3];
}

- (void)setHasRrcConnSetupComp:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (unsigned)rrcConnRejectAtIndex:(unint64_t)a3
{
  p_rrcConnRejects = &self->_rrcConnRejects;
  count = self->_rrcConnRejects.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_rrcConnRejects->list[a3];
}

- (unsigned)rrcConnRlfAtIndex:(unint64_t)a3
{
  p_rrcConnRlfs = &self->_rrcConnRlfs;
  count = self->_rrcConnRlfs.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_rrcConnRlfs->list[a3];
}

- (unsigned)rrcConnReestReqAtIndex:(unint64_t)a3
{
  p_rrcConnReestReqs = &self->_rrcConnReestReqs;
  count = self->_rrcConnReestReqs.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_rrcConnReestReqs->list[a3];
}

- (void)setHasRrcConnDrbEstComp:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (unsigned)rrcConnRelAtIndex:(unint64_t)a3
{
  p_rrcConnRels = &self->_rrcConnRels;
  count = self->_rrcConnRels.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_rrcConnRels->list[a3];
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

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasSubsId:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasPsPref:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (unsigned)rrcResumeReqAtIndex:(unint64_t)a3
{
  p_rrcResumeReqs = &self->_rrcResumeReqs;
  count = self->_rrcResumeReqs.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_rrcResumeReqs->list[a3];
}

- (void)setHasRrcResumeComp:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasRrcConnReestComp:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularNrRrcConnCount;
  v3 = [(CellularNrRrcConnCount *)&v7 description];
  v4 = [(CellularNrRrcConnCount *)self dictionaryRepresentation];
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

  if ((has & 2) != 0)
  {
    v6 = [NSNumber numberWithUnsignedInt:self->_durationSeconds];
    [v3 setObject:v6 forKey:@"duration_seconds"];
  }

  v7 = PBRepeatedUInt32NSArray();
  [v3 setObject:v7 forKey:@"rrc_conn_setup_req"];

  if ((*&self->_has & 0x40) != 0)
  {
    v8 = [NSNumber numberWithUnsignedInt:self->_rrcConnSetupComp];
    [v3 setObject:v8 forKey:@"rrc_conn_setup_comp"];
  }

  v9 = PBRepeatedUInt32NSArray();
  [v3 setObject:v9 forKey:@"rrc_conn_reject"];

  v10 = PBRepeatedUInt32NSArray();
  [v3 setObject:v10 forKey:@"rrc_conn_rlf"];

  v11 = PBRepeatedUInt32NSArray();
  [v3 setObject:v11 forKey:@"rrc_conn_reest_req"];

  if ((*&self->_has & 0x10) != 0)
  {
    v12 = [NSNumber numberWithUnsignedInt:self->_rrcConnDrbEstComp];
    [v3 setObject:v12 forKey:@"rrc_conn_drb_est_comp"];
  }

  v13 = PBRepeatedUInt32NSArray();
  [v3 setObject:v13 forKey:@"rrc_conn_rel"];

  if ((*&self->_has & 4) != 0)
  {
    v14 = [NSNumber numberWithUnsignedInt:self->_numSubs];
    [v3 setObject:v14 forKey:@"num_subs"];
  }

  plmn = self->_plmn;
  if (plmn)
  {
    [v3 setObject:plmn forKey:@"plmn"];
  }

  v16 = self->_has;
  if ((v16 & 0x100) != 0)
  {
    v17 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v17 forKey:@"subs_id"];

    v16 = self->_has;
  }

  if ((v16 & 8) != 0)
  {
    v18 = [NSNumber numberWithUnsignedInt:self->_psPref];
    [v3 setObject:v18 forKey:@"ps_pref"];
  }

  v19 = PBRepeatedUInt32NSArray();
  [v3 setObject:v19 forKey:@"rrc_resume_req"];

  v20 = self->_has;
  if ((v20 & 0x80) != 0)
  {
    v21 = [NSNumber numberWithUnsignedInt:self->_rrcResumeComp];
    [v3 setObject:v21 forKey:@"rrc_resume_comp"];

    v20 = self->_has;
  }

  if ((v20 & 0x20) != 0)
  {
    v22 = [NSNumber numberWithUnsignedInt:self->_rrcConnReestComp];
    [v3 setObject:v22 forKey:@"rrc_conn_reest_comp"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v29 = v4;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    v4 = v29;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    durationSeconds = self->_durationSeconds;
    PBDataWriterWriteUint32Field();
    v4 = v29;
  }

  if (self->_rrcConnSetupReqs.count)
  {
    v8 = 0;
    do
    {
      v9 = self->_rrcConnSetupReqs.list[v8];
      PBDataWriterWriteUint32Field();
      v4 = v29;
      ++v8;
    }

    while (v8 < self->_rrcConnSetupReqs.count);
  }

  if ((*&self->_has & 0x40) != 0)
  {
    rrcConnSetupComp = self->_rrcConnSetupComp;
    PBDataWriterWriteUint32Field();
    v4 = v29;
  }

  if (self->_rrcConnRejects.count)
  {
    v11 = 0;
    do
    {
      v12 = self->_rrcConnRejects.list[v11];
      PBDataWriterWriteUint32Field();
      v4 = v29;
      ++v11;
    }

    while (v11 < self->_rrcConnRejects.count);
  }

  if (self->_rrcConnRlfs.count)
  {
    v13 = 0;
    do
    {
      v14 = self->_rrcConnRlfs.list[v13];
      PBDataWriterWriteUint32Field();
      v4 = v29;
      ++v13;
    }

    while (v13 < self->_rrcConnRlfs.count);
  }

  if (self->_rrcConnReestReqs.count)
  {
    v15 = 0;
    do
    {
      v16 = self->_rrcConnReestReqs.list[v15];
      PBDataWriterWriteUint32Field();
      v4 = v29;
      ++v15;
    }

    while (v15 < self->_rrcConnReestReqs.count);
  }

  if ((*&self->_has & 0x10) != 0)
  {
    rrcConnDrbEstComp = self->_rrcConnDrbEstComp;
    PBDataWriterWriteUint32Field();
    v4 = v29;
  }

  if (self->_rrcConnRels.count)
  {
    v18 = 0;
    do
    {
      v19 = self->_rrcConnRels.list[v18];
      PBDataWriterWriteUint32Field();
      v4 = v29;
      ++v18;
    }

    while (v18 < self->_rrcConnRels.count);
  }

  if ((*&self->_has & 4) != 0)
  {
    numSubs = self->_numSubs;
    PBDataWriterWriteUint32Field();
    v4 = v29;
  }

  if (self->_plmn)
  {
    PBDataWriterWriteDataField();
    v4 = v29;
  }

  v21 = self->_has;
  if ((v21 & 0x100) != 0)
  {
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
    v4 = v29;
    v21 = self->_has;
  }

  if ((v21 & 8) != 0)
  {
    psPref = self->_psPref;
    PBDataWriterWriteUint32Field();
    v4 = v29;
  }

  if (self->_rrcResumeReqs.count)
  {
    v24 = 0;
    do
    {
      v25 = self->_rrcResumeReqs.list[v24];
      PBDataWriterWriteUint32Field();
      v4 = v29;
      ++v24;
    }

    while (v24 < self->_rrcResumeReqs.count);
  }

  v26 = self->_has;
  if ((v26 & 0x80) != 0)
  {
    rrcResumeComp = self->_rrcResumeComp;
    PBDataWriterWriteUint32Field();
    v4 = v29;
    v26 = self->_has;
  }

  if ((v26 & 0x20) != 0)
  {
    rrcConnReestComp = self->_rrcConnReestComp;
    PBDataWriterWriteUint32Field();
    v4 = v29;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[19] = self->_timestamp;
    *(v4 + 100) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 40) = self->_durationSeconds;
    *(v4 + 100) |= 2u;
  }

  v27 = v4;
  if ([(CellularNrRrcConnCount *)self rrcConnSetupReqsCount])
  {
    [v27 clearRrcConnSetupReqs];
    v6 = [(CellularNrRrcConnCount *)self rrcConnSetupReqsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [v27 addRrcConnSetupReq:{-[CellularNrRrcConnCount rrcConnSetupReqAtIndex:](self, "rrcConnSetupReqAtIndex:", i)}];
      }
    }
  }

  if ((*&self->_has & 0x40) != 0)
  {
    *(v27 + 47) = self->_rrcConnSetupComp;
    *(v27 + 100) |= 0x40u;
  }

  if ([(CellularNrRrcConnCount *)self rrcConnRejectsCount])
  {
    [v27 clearRrcConnRejects];
    v9 = [(CellularNrRrcConnCount *)self rrcConnRejectsCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        [v27 addRrcConnReject:{-[CellularNrRrcConnCount rrcConnRejectAtIndex:](self, "rrcConnRejectAtIndex:", j)}];
      }
    }
  }

  if ([(CellularNrRrcConnCount *)self rrcConnRlfsCount])
  {
    [v27 clearRrcConnRlfs];
    v12 = [(CellularNrRrcConnCount *)self rrcConnRlfsCount];
    if (v12)
    {
      v13 = v12;
      for (k = 0; k != v13; ++k)
      {
        [v27 addRrcConnRlf:{-[CellularNrRrcConnCount rrcConnRlfAtIndex:](self, "rrcConnRlfAtIndex:", k)}];
      }
    }
  }

  if ([(CellularNrRrcConnCount *)self rrcConnReestReqsCount])
  {
    [v27 clearRrcConnReestReqs];
    v15 = [(CellularNrRrcConnCount *)self rrcConnReestReqsCount];
    if (v15)
    {
      v16 = v15;
      for (m = 0; m != v16; ++m)
      {
        [v27 addRrcConnReestReq:{-[CellularNrRrcConnCount rrcConnReestReqAtIndex:](self, "rrcConnReestReqAtIndex:", m)}];
      }
    }
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(v27 + 45) = self->_rrcConnDrbEstComp;
    *(v27 + 100) |= 0x10u;
  }

  if ([(CellularNrRrcConnCount *)self rrcConnRelsCount])
  {
    [v27 clearRrcConnRels];
    v18 = [(CellularNrRrcConnCount *)self rrcConnRelsCount];
    if (v18)
    {
      v19 = v18;
      for (n = 0; n != v19; ++n)
      {
        [v27 addRrcConnRel:{-[CellularNrRrcConnCount rrcConnRelAtIndex:](self, "rrcConnRelAtIndex:", n)}];
      }
    }
  }

  v21 = v27;
  if ((*&self->_has & 4) != 0)
  {
    *(v27 + 41) = self->_numSubs;
    *(v27 + 100) |= 4u;
  }

  if (self->_plmn)
  {
    [v27 setPlmn:?];
    v21 = v27;
  }

  v22 = self->_has;
  if ((v22 & 0x100) != 0)
  {
    v21[49] = self->_subsId;
    *(v21 + 100) |= 0x100u;
    v22 = self->_has;
  }

  if ((v22 & 8) != 0)
  {
    v21[44] = self->_psPref;
    *(v21 + 100) |= 8u;
  }

  if ([(CellularNrRrcConnCount *)self rrcResumeReqsCount])
  {
    [v27 clearRrcResumeReqs];
    v23 = [(CellularNrRrcConnCount *)self rrcResumeReqsCount];
    if (v23)
    {
      v24 = v23;
      for (ii = 0; ii != v24; ++ii)
      {
        [v27 addRrcResumeReq:{-[CellularNrRrcConnCount rrcResumeReqAtIndex:](self, "rrcResumeReqAtIndex:", ii)}];
      }
    }
  }

  v26 = self->_has;
  if ((v26 & 0x80) != 0)
  {
    *(v27 + 48) = self->_rrcResumeComp;
    *(v27 + 100) |= 0x80u;
    v26 = self->_has;
  }

  if ((v26 & 0x20) != 0)
  {
    *(v27 + 46) = self->_rrcConnReestComp;
    *(v27 + 100) |= 0x20u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    v5[19] = self->_timestamp;
    *(v5 + 100) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 40) = self->_durationSeconds;
    *(v5 + 100) |= 2u;
  }

  PBRepeatedUInt32Copy();
  if ((*&self->_has & 0x40) != 0)
  {
    v6[47] = self->_rrcConnSetupComp;
    *(v6 + 100) |= 0x40u;
  }

  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  if ((*&self->_has & 0x10) != 0)
  {
    v6[45] = self->_rrcConnDrbEstComp;
    *(v6 + 100) |= 0x10u;
  }

  PBRepeatedUInt32Copy();
  if ((*&self->_has & 4) != 0)
  {
    v6[41] = self->_numSubs;
    *(v6 + 100) |= 4u;
  }

  v8 = [(NSData *)self->_plmn copyWithZone:a3];
  v9 = *(v6 + 21);
  *(v6 + 21) = v8;

  v10 = self->_has;
  if ((v10 & 0x100) != 0)
  {
    v6[49] = self->_subsId;
    *(v6 + 100) |= 0x100u;
    v10 = self->_has;
  }

  if ((v10 & 8) != 0)
  {
    v6[44] = self->_psPref;
    *(v6 + 100) |= 8u;
  }

  PBRepeatedUInt32Copy();
  v11 = self->_has;
  if ((v11 & 0x80) != 0)
  {
    v6[48] = self->_rrcResumeComp;
    *(v6 + 100) |= 0x80u;
    v11 = self->_has;
  }

  if ((v11 & 0x20) != 0)
  {
    v6[46] = self->_rrcConnReestComp;
    *(v6 + 100) |= 0x20u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_56;
  }

  has = self->_has;
  v6 = *(v4 + 100);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(v4 + 19))
    {
      goto LABEL_56;
    }
  }

  else if (v6)
  {
    goto LABEL_56;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_durationSeconds != *(v4 + 40))
    {
      goto LABEL_56;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_56;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
    goto LABEL_56;
  }

  v7 = *(v4 + 100);
  if ((*&self->_has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_rrcConnSetupComp != *(v4 + 47))
    {
      goto LABEL_56;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_56;
  }

  if (!PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual())
  {
    goto LABEL_56;
  }

  v8 = *(v4 + 100);
  if ((*&self->_has & 0x10) != 0)
  {
    if ((v8 & 0x10) == 0 || self->_rrcConnDrbEstComp != *(v4 + 45))
    {
      goto LABEL_56;
    }
  }

  else if ((v8 & 0x10) != 0)
  {
    goto LABEL_56;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
    goto LABEL_56;
  }

  v9 = self->_has;
  v10 = *(v4 + 100);
  if ((v9 & 4) != 0)
  {
    if ((v10 & 4) == 0 || self->_numSubs != *(v4 + 41))
    {
      goto LABEL_56;
    }
  }

  else if ((v10 & 4) != 0)
  {
    goto LABEL_56;
  }

  plmn = self->_plmn;
  if (plmn | *(v4 + 21))
  {
    if (![(NSData *)plmn isEqual:?])
    {
      goto LABEL_56;
    }

    v9 = self->_has;
  }

  v12 = *(v4 + 100);
  if ((v9 & 0x100) != 0)
  {
    if ((*(v4 + 100) & 0x100) == 0 || self->_subsId != *(v4 + 49))
    {
      goto LABEL_56;
    }
  }

  else if ((*(v4 + 100) & 0x100) != 0)
  {
    goto LABEL_56;
  }

  if ((v9 & 8) != 0)
  {
    if ((v12 & 8) == 0 || self->_psPref != *(v4 + 44))
    {
      goto LABEL_56;
    }
  }

  else if ((v12 & 8) != 0)
  {
    goto LABEL_56;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
LABEL_56:
    v15 = 0;
    goto LABEL_57;
  }

  v13 = self->_has;
  v14 = *(v4 + 100);
  if ((v13 & 0x80) != 0)
  {
    if ((v14 & 0x80) == 0 || self->_rrcResumeComp != *(v4 + 48))
    {
      goto LABEL_56;
    }
  }

  else if ((v14 & 0x80) != 0)
  {
    goto LABEL_56;
  }

  if ((v13 & 0x20) != 0)
  {
    if ((v14 & 0x20) == 0 || self->_rrcConnReestComp != *(v4 + 46))
    {
      goto LABEL_56;
    }

    v15 = 1;
  }

  else
  {
    v15 = (v14 & 0x20) == 0;
  }

LABEL_57:

  return v15;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v23 = 2654435761u * self->_timestamp;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v23 = 0;
    if ((has & 2) != 0)
    {
LABEL_3:
      v22 = 2654435761 * self->_durationSeconds;
      goto LABEL_6;
    }
  }

  v22 = 0;
LABEL_6:
  v21 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 0x40) != 0)
  {
    v20 = 2654435761 * self->_rrcConnSetupComp;
  }

  else
  {
    v20 = 0;
  }

  v19 = PBRepeatedUInt32Hash();
  v17 = PBRepeatedUInt32Hash();
  v4 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 0x10) != 0)
  {
    v5 = 2654435761 * self->_rrcConnDrbEstComp;
  }

  else
  {
    v5 = 0;
  }

  v6 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 4) != 0)
  {
    v7 = 2654435761 * self->_numSubs;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NSData *)self->_plmn hash];
  v9 = self->_has;
  if ((v9 & 0x100) != 0)
  {
    v10 = 2654435761 * self->_subsId;
    if ((v9 & 8) != 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = 0;
    if ((v9 & 8) != 0)
    {
LABEL_17:
      v11 = 2654435761 * self->_psPref;
      goto LABEL_20;
    }
  }

  v11 = 0;
LABEL_20:
  v12 = PBRepeatedUInt32Hash();
  v13 = self->_has;
  if ((v13 & 0x80) != 0)
  {
    v14 = 2654435761 * self->_rrcResumeComp;
    if ((v13 & 0x20) != 0)
    {
      goto LABEL_22;
    }

LABEL_24:
    v15 = 0;
    return v22 ^ v23 ^ v20 ^ v21 ^ v19 ^ v18 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15;
  }

  v14 = 0;
  if ((v13 & 0x20) == 0)
  {
    goto LABEL_24;
  }

LABEL_22:
  v15 = 2654435761 * self->_rrcConnReestComp;
  return v22 ^ v23 ^ v20 ^ v21 ^ v19 ^ v18 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 100);
  if (v5)
  {
    self->_timestamp = *(v4 + 19);
    *&self->_has |= 1u;
    v5 = *(v4 + 100);
  }

  if ((v5 & 2) != 0)
  {
    self->_durationSeconds = *(v4 + 40);
    *&self->_has |= 2u;
  }

  v27 = v4;
  v6 = [v4 rrcConnSetupReqsCount];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      -[CellularNrRrcConnCount addRrcConnSetupReq:](self, "addRrcConnSetupReq:", [v27 rrcConnSetupReqAtIndex:i]);
    }
  }

  if ((v27[50] & 0x40) != 0)
  {
    self->_rrcConnSetupComp = v27[47];
    *&self->_has |= 0x40u;
  }

  v9 = [v27 rrcConnRejectsCount];
  if (v9)
  {
    v10 = v9;
    for (j = 0; j != v10; ++j)
    {
      -[CellularNrRrcConnCount addRrcConnReject:](self, "addRrcConnReject:", [v27 rrcConnRejectAtIndex:j]);
    }
  }

  v12 = [v27 rrcConnRlfsCount];
  if (v12)
  {
    v13 = v12;
    for (k = 0; k != v13; ++k)
    {
      -[CellularNrRrcConnCount addRrcConnRlf:](self, "addRrcConnRlf:", [v27 rrcConnRlfAtIndex:k]);
    }
  }

  v15 = [v27 rrcConnReestReqsCount];
  if (v15)
  {
    v16 = v15;
    for (m = 0; m != v16; ++m)
    {
      -[CellularNrRrcConnCount addRrcConnReestReq:](self, "addRrcConnReestReq:", [v27 rrcConnReestReqAtIndex:m]);
    }
  }

  if ((v27[50] & 0x10) != 0)
  {
    self->_rrcConnDrbEstComp = v27[45];
    *&self->_has |= 0x10u;
  }

  v18 = [v27 rrcConnRelsCount];
  if (v18)
  {
    v19 = v18;
    for (n = 0; n != v19; ++n)
    {
      -[CellularNrRrcConnCount addRrcConnRel:](self, "addRrcConnRel:", [v27 rrcConnRelAtIndex:n]);
    }
  }

  v21 = v27;
  if ((v27[50] & 4) != 0)
  {
    self->_numSubs = v27[41];
    *&self->_has |= 4u;
  }

  if (*(v27 + 21))
  {
    [(CellularNrRrcConnCount *)self setPlmn:?];
    v21 = v27;
  }

  v22 = *(v21 + 100);
  if ((v22 & 0x100) != 0)
  {
    self->_subsId = v21[49];
    *&self->_has |= 0x100u;
    v22 = *(v21 + 100);
  }

  if ((v22 & 8) != 0)
  {
    self->_psPref = v21[44];
    *&self->_has |= 8u;
  }

  v23 = [v21 rrcResumeReqsCount];
  if (v23)
  {
    v24 = v23;
    for (ii = 0; ii != v24; ++ii)
    {
      -[CellularNrRrcConnCount addRrcResumeReq:](self, "addRrcResumeReq:", [v27 rrcResumeReqAtIndex:ii]);
    }
  }

  v26 = *(v27 + 100);
  if ((v26 & 0x80) != 0)
  {
    self->_rrcResumeComp = v27[48];
    *&self->_has |= 0x80u;
    v26 = *(v27 + 100);
  }

  if ((v26 & 0x20) != 0)
  {
    self->_rrcConnReestComp = v27[46];
    *&self->_has |= 0x20u;
  }
}

@end