@interface NbrEutra
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsFrameType:(id)type;
- (int)frameType;
- (unint64_t)hash;
- (unsigned)pciAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasDlBw:(BOOL)bw;
- (void)setHasEarfcn:(BOOL)earfcn;
- (void)setHasFrameType:(BOOL)type;
- (void)setHasPmax:(BOOL)pmax;
- (void)setHasPriority:(BOOL)priority;
- (void)setHasQOffset:(BOOL)offset;
- (void)setHasQQualMin:(BOOL)min;
- (void)setHasQRxlevMin:(BOOL)min;
- (void)setHasSfHigh:(BOOL)high;
- (void)setHasSfMedium:(BOOL)medium;
- (void)setHasTReselection:(BOOL)reselection;
- (void)setHasThresXHighP:(BOOL)p;
- (void)setHasThresXHighQ:(BOOL)q;
- (void)setHasThresXLowP:(BOOL)p;
- (void)setHasThresXLowQ:(BOOL)q;
- (void)writeTo:(id)to;
@end

@implementation NbrEutra

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = NbrEutra;
  [(NbrEutra *)&v3 dealloc];
}

- (void)setHasEarfcn:(BOOL)earfcn
{
  if (earfcn)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasQRxlevMin:(BOOL)min
{
  if (min)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasQQualMin:(BOOL)min
{
  if (min)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasQOffset:(BOOL)offset
{
  if (offset)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasPmax:(BOOL)pmax
{
  if (pmax)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasDlBw:(BOOL)bw
{
  if (bw)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasThresXHighP:(BOOL)p
{
  if (p)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasThresXLowP:(BOOL)p
{
  if (p)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasThresXHighQ:(BOOL)q
{
  if (q)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasThresXLowQ:(BOOL)q
{
  if (q)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x8000 | *&self->_has & 0x7FFF;
}

- (void)setHasPriority:(BOOL)priority
{
  if (priority)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (int)frameType
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_frameType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasFrameType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (int)StringAsFrameType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"FDD"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"TDD"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"INVALID"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTReselection:(BOOL)reselection
{
  if (reselection)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasSfMedium:(BOOL)medium
{
  if (medium)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasSfHigh:(BOOL)high
{
  if (high)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (unsigned)pciAtIndex:(unint64_t)index
{
  p_pcis = &self->_pcis;
  count = self->_pcis.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_pcis->list[index];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NbrEutra;
  v3 = [(NbrEutra *)&v7 description];
  dictionaryRepresentation = [(NbrEutra *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v8 = [NSNumber numberWithUnsignedInt:self->_earfcn];
    [v3 setObject:v8 forKey:@"earfcn"];

    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  v9 = [NSNumber numberWithInt:self->_qRxlevMin];
  [v3 setObject:v9 forKey:@"Q_rxlev_min"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  v10 = [NSNumber numberWithInt:self->_qQualMin];
  [v3 setObject:v10 forKey:@"Q_qual_min"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = [NSNumber numberWithInt:self->_qOffset];
  [v3 setObject:v11 forKey:@"Q_offset"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  v12 = [NSNumber numberWithInt:self->_pmax];
  [v3 setObject:v12 forKey:@"Pmax"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  v13 = [NSNumber numberWithUnsignedInt:self->_dlBw];
  [v3 setObject:v13 forKey:@"dl_bw"];

  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_8:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  v14 = [NSNumber numberWithUnsignedInt:self->_thresXHighP];
  [v3 setObject:v14 forKey:@"Thres_X_highP"];

  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_9:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  v15 = [NSNumber numberWithUnsignedInt:self->_thresXLowP];
  [v3 setObject:v15 forKey:@"Thres_X_lowP"];

  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_10:
    if ((has & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  v16 = [NSNumber numberWithUnsignedInt:self->_thresXHighQ];
  [v3 setObject:v16 forKey:@"Thres_X_highQ"];

  has = self->_has;
  if ((has & 0x8000) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  v17 = [NSNumber numberWithUnsignedInt:self->_thresXLowQ];
  [v3 setObject:v17 forKey:@"Thres_X_lowQ"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_12:
    if ((has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  v18 = [NSNumber numberWithUnsignedInt:self->_priority];
  [v3 setObject:v18 forKey:@"priority"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_13:
    if ((has & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_32:
  frameType = self->_frameType;
  if (frameType >= 3)
  {
    v20 = [NSString stringWithFormat:@"(unknown: %i)", self->_frameType];
  }

  else
  {
    v20 = *(&off_100318398 + frameType);
  }

  [v3 setObject:v20 forKey:@"frame_type"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_14:
    if ((has & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  v21 = [NSNumber numberWithUnsignedInt:self->_band];
  [v3 setObject:v21 forKey:@"band"];

  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_15:
    if ((has & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  v22 = [NSNumber numberWithUnsignedInt:self->_tReselection];
  [v3 setObject:v22 forKey:@"t_reselection"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_16:
    if ((has & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_38:
  v23 = [NSNumber numberWithUnsignedInt:self->_sfMedium];
  [v3 setObject:v23 forKey:@"sf_medium"];

  if ((*&self->_has & 0x200) != 0)
  {
LABEL_17:
    v5 = [NSNumber numberWithUnsignedInt:self->_sfHigh];
    [v3 setObject:v5 forKey:@"sf_high"];
  }

LABEL_18:
  v6 = PBRepeatedUInt32NSArray();
  [v3 setObject:v6 forKey:@"pci"];

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    earfcn = self->_earfcn;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  qRxlevMin = self->_qRxlevMin;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  qQualMin = self->_qQualMin;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  qOffset = self->_qOffset;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  pmax = self->_pmax;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  dlBw = self->_dlBw;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_8:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  thresXHighP = self->_thresXHighP;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_9:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  thresXLowP = self->_thresXLowP;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_10:
    if ((has & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  thresXHighQ = self->_thresXHighQ;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x8000) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  thresXLowQ = self->_thresXLowQ;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_12:
    if ((has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  priority = self->_priority;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_13:
    if ((has & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  frameType = self->_frameType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_14:
    if ((has & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  band = self->_band;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_15:
    if ((has & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  tReselection = self->_tReselection;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_16:
    if ((has & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_38:
  sfMedium = self->_sfMedium;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_17:
    sfHigh = self->_sfHigh;
    PBDataWriterWriteUint32Field();
  }

LABEL_18:
  p_pcis = &self->_pcis;
  if (p_pcis->count)
  {
    PBDataWriterPlaceMark();
    if (p_pcis->count)
    {
      v8 = 0;
      do
      {
        v9 = p_pcis->list[v8];
        PBDataWriterWriteUint32Field();
        ++v8;
      }

      while (v8 < p_pcis->count);
    }

    PBDataWriterRecallMark();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    toCopy[10] = self->_earfcn;
    *(toCopy + 48) |= 4u;
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  toCopy[16] = self->_qRxlevMin;
  *(toCopy + 48) |= 0x100u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  toCopy[15] = self->_qQualMin;
  *(toCopy + 48) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_28:
  toCopy[14] = self->_qOffset;
  *(toCopy + 48) |= 0x40u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  toCopy[12] = self->_pmax;
  *(toCopy + 48) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  toCopy[9] = self->_dlBw;
  *(toCopy + 48) |= 2u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_8:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  toCopy[20] = self->_thresXHighP;
  *(toCopy + 48) |= 0x1000u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_9:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  toCopy[22] = self->_thresXLowP;
  *(toCopy + 48) |= 0x4000u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_10:
    if ((has & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  toCopy[21] = self->_thresXHighQ;
  *(toCopy + 48) |= 0x2000u;
  has = self->_has;
  if ((has & 0x8000) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  toCopy[23] = self->_thresXLowQ;
  *(toCopy + 48) |= 0x8000u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_12:
    if ((has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  toCopy[13] = self->_priority;
  *(toCopy + 48) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_13:
    if ((has & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  toCopy[11] = self->_frameType;
  *(toCopy + 48) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_14:
    if ((has & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  toCopy[8] = self->_band;
  *(toCopy + 48) |= 1u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_15:
    if ((has & 0x400) == 0)
    {
      goto LABEL_16;
    }

LABEL_39:
    toCopy[18] = self->_sfMedium;
    *(toCopy + 48) |= 0x400u;
    if ((*&self->_has & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_38:
  toCopy[19] = self->_tReselection;
  *(toCopy + 48) |= 0x800u;
  has = self->_has;
  if ((has & 0x400) != 0)
  {
    goto LABEL_39;
  }

LABEL_16:
  if ((has & 0x200) != 0)
  {
LABEL_17:
    toCopy[17] = self->_sfHigh;
    *(toCopy + 48) |= 0x200u;
  }

LABEL_18:
  v9 = toCopy;
  if ([(NbrEutra *)self pcisCount])
  {
    [v9 clearPcis];
    pcisCount = [(NbrEutra *)self pcisCount];
    if (pcisCount)
    {
      v7 = pcisCount;
      for (i = 0; i != v7; ++i)
      {
        [v9 addPci:{-[NbrEutra pciAtIndex:](self, "pciAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v4 + 10) = self->_earfcn;
    *(v4 + 48) |= 4u;
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 16) = self->_qRxlevMin;
  *(v4 + 48) |= 0x100u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v4 + 15) = self->_qQualMin;
  *(v4 + 48) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v4 + 14) = self->_qOffset;
  *(v4 + 48) |= 0x40u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v4 + 12) = self->_pmax;
  *(v4 + 48) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v4 + 9) = self->_dlBw;
  *(v4 + 48) |= 2u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_8:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v4 + 20) = self->_thresXHighP;
  *(v4 + 48) |= 0x1000u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_9:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v4 + 22) = self->_thresXLowP;
  *(v4 + 48) |= 0x4000u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_10:
    if ((has & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v4 + 21) = self->_thresXHighQ;
  *(v4 + 48) |= 0x2000u;
  has = self->_has;
  if ((has & 0x8000) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v4 + 23) = self->_thresXLowQ;
  *(v4 + 48) |= 0x8000u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_12:
    if ((has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v4 + 13) = self->_priority;
  *(v4 + 48) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_13:
    if ((has & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v4 + 11) = self->_frameType;
  *(v4 + 48) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_14:
    if ((has & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v4 + 8) = self->_band;
  *(v4 + 48) |= 1u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_15:
    if ((has & 0x400) == 0)
    {
      goto LABEL_16;
    }

LABEL_33:
    *(v4 + 18) = self->_sfMedium;
    *(v4 + 48) |= 0x400u;
    if ((*&self->_has & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_32:
  *(v4 + 19) = self->_tReselection;
  *(v4 + 48) |= 0x800u;
  has = self->_has;
  if ((has & 0x400) != 0)
  {
    goto LABEL_33;
  }

LABEL_16:
  if ((has & 0x200) != 0)
  {
LABEL_17:
    *(v4 + 17) = self->_sfHigh;
    *(v4 + 48) |= 0x200u;
  }

LABEL_18:
  PBRepeatedUInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_83;
  }

  has = self->_has;
  v6 = *(equalCopy + 48);
  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_earfcn != *(equalCopy + 10))
    {
      goto LABEL_83;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_83;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 48) & 0x100) == 0 || self->_qRxlevMin != *(equalCopy + 16))
    {
      goto LABEL_83;
    }
  }

  else if ((*(equalCopy + 48) & 0x100) != 0)
  {
    goto LABEL_83;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_qQualMin != *(equalCopy + 15))
    {
      goto LABEL_83;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_83;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_qOffset != *(equalCopy + 14))
    {
      goto LABEL_83;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_83;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_pmax != *(equalCopy + 12))
    {
      goto LABEL_83;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_83;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_dlBw != *(equalCopy + 9))
    {
      goto LABEL_83;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_83;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(equalCopy + 48) & 0x1000) == 0 || self->_thresXHighP != *(equalCopy + 20))
    {
      goto LABEL_83;
    }
  }

  else if ((*(equalCopy + 48) & 0x1000) != 0)
  {
    goto LABEL_83;
  }

  if ((*&self->_has & 0x4000) != 0)
  {
    if ((*(equalCopy + 48) & 0x4000) == 0 || self->_thresXLowP != *(equalCopy + 22))
    {
      goto LABEL_83;
    }
  }

  else if ((*(equalCopy + 48) & 0x4000) != 0)
  {
    goto LABEL_83;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    if ((*(equalCopy + 48) & 0x2000) == 0 || self->_thresXHighQ != *(equalCopy + 21))
    {
      goto LABEL_83;
    }
  }

  else if ((*(equalCopy + 48) & 0x2000) != 0)
  {
    goto LABEL_83;
  }

  if ((*&self->_has & 0x8000) != 0)
  {
    if ((*(equalCopy + 48) & 0x8000) == 0 || self->_thresXLowQ != *(equalCopy + 23))
    {
      goto LABEL_83;
    }
  }

  else if ((*(equalCopy + 48) & 0x8000) != 0)
  {
LABEL_83:
    IsEqual = 0;
    goto LABEL_84;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_priority != *(equalCopy + 13))
    {
      goto LABEL_83;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_83;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_frameType != *(equalCopy + 11))
    {
      goto LABEL_83;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_83;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_band != *(equalCopy + 8))
    {
      goto LABEL_83;
    }
  }

  else if (v6)
  {
    goto LABEL_83;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(equalCopy + 48) & 0x800) == 0 || self->_tReselection != *(equalCopy + 19))
    {
      goto LABEL_83;
    }
  }

  else if ((*(equalCopy + 48) & 0x800) != 0)
  {
    goto LABEL_83;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(equalCopy + 48) & 0x400) == 0 || self->_sfMedium != *(equalCopy + 18))
    {
      goto LABEL_83;
    }
  }

  else if ((*(equalCopy + 48) & 0x400) != 0)
  {
    goto LABEL_83;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(equalCopy + 48) & 0x200) == 0 || self->_sfHigh != *(equalCopy + 17))
    {
      goto LABEL_83;
    }
  }

  else if ((*(equalCopy + 48) & 0x200) != 0)
  {
    goto LABEL_83;
  }

  IsEqual = PBRepeatedUInt32IsEqual();
LABEL_84:

  return IsEqual;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    v3 = 2654435761 * self->_earfcn;
    if ((*&self->_has & 0x100) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_qRxlevMin;
      if ((has & 0x80) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_qQualMin;
    if ((has & 0x40) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v5 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_qOffset;
    if ((has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v6 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_pmax;
    if ((has & 2) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  v7 = 0;
  if ((has & 2) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_dlBw;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v8 = 0;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_thresXHighP;
    if ((*&self->_has & 0x4000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v9 = 0;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_thresXLowP;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v10 = 0;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_thresXHighQ;
    if ((*&self->_has & 0x8000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v11 = 0;
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_thresXLowQ;
    if ((has & 0x20) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v12 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_priority;
    if ((has & 8) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  v13 = 0;
  if ((has & 8) != 0)
  {
LABEL_13:
    v14 = 2654435761 * self->_frameType;
    if (has)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  v14 = 0;
  if (has)
  {
LABEL_14:
    v15 = 2654435761 * self->_band;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  v15 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_15:
    v16 = 2654435761 * self->_tReselection;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_16;
    }

LABEL_32:
    v17 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_17;
    }

LABEL_33:
    v18 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ PBRepeatedUInt32Hash();
  }

LABEL_31:
  v16 = 0;
  if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_32;
  }

LABEL_16:
  v17 = 2654435761 * self->_sfMedium;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_33;
  }

LABEL_17:
  v18 = 2654435761 * self->_sfHigh;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ PBRepeatedUInt32Hash();
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 48);
  if ((v5 & 4) != 0)
  {
    self->_earfcn = *(fromCopy + 10);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 48);
    if ((v5 & 0x100) == 0)
    {
LABEL_3:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((*(fromCopy + 48) & 0x100) == 0)
  {
    goto LABEL_3;
  }

  self->_qRxlevMin = *(fromCopy + 16);
  *&self->_has |= 0x100u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x80) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_qQualMin = *(fromCopy + 15);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_qOffset = *(fromCopy + 14);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_pmax = *(fromCopy + 12);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 48);
  if ((v5 & 2) == 0)
  {
LABEL_7:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_dlBw = *(fromCopy + 9);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x1000) == 0)
  {
LABEL_8:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_thresXHighP = *(fromCopy + 20);
  *&self->_has |= 0x1000u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x4000) == 0)
  {
LABEL_9:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_thresXLowP = *(fromCopy + 22);
  *&self->_has |= 0x4000u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x2000) == 0)
  {
LABEL_10:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_thresXHighQ = *(fromCopy + 21);
  *&self->_has |= 0x2000u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x8000) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_thresXLowQ = *(fromCopy + 23);
  *&self->_has |= 0x8000u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x20) == 0)
  {
LABEL_12:
    if ((v5 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_priority = *(fromCopy + 13);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 48);
  if ((v5 & 8) == 0)
  {
LABEL_13:
    if ((v5 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_frameType = *(fromCopy + 11);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 48);
  if ((v5 & 1) == 0)
  {
LABEL_14:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_band = *(fromCopy + 8);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x800) == 0)
  {
LABEL_15:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_tReselection = *(fromCopy + 19);
  *&self->_has |= 0x800u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x400) == 0)
  {
LABEL_16:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_38:
  self->_sfMedium = *(fromCopy + 18);
  *&self->_has |= 0x400u;
  if ((*(fromCopy + 48) & 0x200) != 0)
  {
LABEL_17:
    self->_sfHigh = *(fromCopy + 17);
    *&self->_has |= 0x200u;
  }

LABEL_18:
  v9 = fromCopy;
  pcisCount = [fromCopy pcisCount];
  if (pcisCount)
  {
    v7 = pcisCount;
    for (i = 0; i != v7; ++i)
    {
      -[NbrEutra addPci:](self, "addPci:", [v9 pciAtIndex:i]);
    }
  }
}

@end