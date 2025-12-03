@interface CellularWcdmaRlcThroughput
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)rxPowerHistAtIndex:(unint64_t)index;
- (unsigned)txPowerHistAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasAveDlThroughput:(BOOL)throughput;
- (void)setHasAveUlThroughput:(BOOL)throughput;
- (void)setHasDlActiveDur:(BOOL)dur;
- (void)setHasDlBlerPpt:(BOOL)ppt;
- (void)setHasDlTotalBytes:(BOOL)bytes;
- (void)setHasLastDlInactiveDur:(BOOL)dur;
- (void)setHasLastFachDuration:(BOOL)duration;
- (void)setHasLastUlInactiveDur:(BOOL)dur;
- (void)setHasMaxDlRbRate:(BOOL)rate;
- (void)setHasMaxDlThroughput:(BOOL)throughput;
- (void)setHasMaxUlRbRate:(BOOL)rate;
- (void)setHasMaxUlThroughput:(BOOL)throughput;
- (void)setHasMrabDuration:(BOOL)duration;
- (void)setHasPsDuration:(BOOL)duration;
- (void)setHasTotalFachDuration:(BOOL)duration;
- (void)setHasUlActiveDur:(BOOL)dur;
- (void)setHasUlRetxBlockRatePpt:(BOOL)ppt;
- (void)setHasUlTotalBytes:(BOOL)bytes;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation CellularWcdmaRlcThroughput

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = CellularWcdmaRlcThroughput;
  [(CellularWcdmaRlcThroughput *)&v3 dealloc];
}

- (void)setHasPsDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasTotalFachDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasLastFachDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasMrabDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasLastUlInactiveDur:(BOOL)dur
{
  if (dur)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasLastDlInactiveDur:(BOOL)dur
{
  if (dur)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasAveUlThroughput:(BOOL)throughput
{
  if (throughput)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasAveDlThroughput:(BOOL)throughput
{
  if (throughput)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasMaxUlThroughput:(BOOL)throughput
{
  if (throughput)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasMaxDlThroughput:(BOOL)throughput
{
  if (throughput)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasMaxUlRbRate:(BOOL)rate
{
  if (rate)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasMaxDlRbRate:(BOOL)rate
{
  if (rate)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasUlActiveDur:(BOOL)dur
{
  if (dur)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasDlActiveDur:(BOOL)dur
{
  if (dur)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasUlRetxBlockRatePpt:(BOOL)ppt
{
  if (ppt)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasDlBlerPpt:(BOOL)ppt
{
  if (ppt)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (unsigned)txPowerHistAtIndex:(unint64_t)index
{
  p_txPowerHists = &self->_txPowerHists;
  count = self->_txPowerHists.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_txPowerHists->list[index];
}

- (unsigned)rxPowerHistAtIndex:(unint64_t)index
{
  p_rxPowerHists = &self->_rxPowerHists;
  count = self->_rxPowerHists.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_rxPowerHists->list[index];
}

- (void)setHasUlTotalBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasDlTotalBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasVersion:(BOOL)version
{
  if (version)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularWcdmaRlcThroughput;
  v3 = [(CellularWcdmaRlcThroughput *)&v7 description];
  dictionaryRepresentation = [(CellularWcdmaRlcThroughput *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (*&has)
  {
    v11 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v11 forKey:@"timestamp"];

    has = self->_has;
    if ((*&has & 0x4000) == 0)
    {
LABEL_3:
      if ((*&has & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((*&has & 0x4000) == 0)
  {
    goto LABEL_3;
  }

  v12 = [NSNumber numberWithUnsignedInt:self->_psDuration];
  [v3 setObject:v12 forKey:@"ps_duration"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_4:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  v13 = [NSNumber numberWithUnsignedInt:self->_totalFachDuration];
  [v3 setObject:v13 forKey:@"total_fach_duration"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_5:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  v14 = [NSNumber numberWithUnsignedInt:self->_lastFachDuration];
  [v3 setObject:v14 forKey:@"last_fach_duration"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_6:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  v15 = [NSNumber numberWithUnsignedInt:self->_mrabDuration];
  [v3 setObject:v15 forKey:@"mrab_duration"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_7:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  v16 = [NSNumber numberWithUnsignedInt:self->_lastUlInactiveDur];
  [v3 setObject:v16 forKey:@"last_ul_inactive_dur"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_8:
    if ((*&has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  v17 = [NSNumber numberWithUnsignedInt:self->_lastDlInactiveDur];
  [v3 setObject:v17 forKey:@"last_dl_inactive_dur"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_9:
    if ((*&has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  v18 = [NSNumber numberWithUnsignedInt:self->_aveUlThroughput];
  [v3 setObject:v18 forKey:@"ave_ul_throughput"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_10:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  v19 = [NSNumber numberWithUnsignedInt:self->_aveDlThroughput];
  [v3 setObject:v19 forKey:@"ave_dl_throughput"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_11:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  v20 = [NSNumber numberWithUnsignedInt:self->_maxUlThroughput];
  [v3 setObject:v20 forKey:@"max_ul_throughput"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_12:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  v21 = [NSNumber numberWithUnsignedInt:self->_maxDlThroughput];
  [v3 setObject:v21 forKey:@"max_dl_throughput"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_13:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  v22 = [NSNumber numberWithUnsignedInt:self->_maxUlRbRate];
  [v3 setObject:v22 forKey:@"max_ul_rb_rate"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_14:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  v23 = [NSNumber numberWithUnsignedInt:self->_maxDlRbRate];
  [v3 setObject:v23 forKey:@"max_dl_rb_rate"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_15:
    if ((*&has & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  v24 = [NSNumber numberWithUnsignedInt:self->_ulActiveDur];
  [v3 setObject:v24 forKey:@"ul_active_dur"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_16:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  v25 = [NSNumber numberWithUnsignedInt:self->_dlActiveDur];
  [v3 setObject:v25 forKey:@"dl_active_dur"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_17:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_41:
  v26 = [NSNumber numberWithUnsignedInt:self->_ulRetxBlockRatePpt];
  [v3 setObject:v26 forKey:@"ul_retx_block_rate_ppt"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_18:
    v5 = [NSNumber numberWithUnsignedInt:self->_dlBlerPpt];
    [v3 setObject:v5 forKey:@"dl_bler_ppt"];
  }

LABEL_19:
  v6 = PBRepeatedUInt32NSArray();
  [v3 setObject:v6 forKey:@"tx_power_hist"];

  v7 = PBRepeatedUInt32NSArray();
  [v3 setObject:v7 forKey:@"rx_power_hist"];

  v8 = self->_has;
  if ((*&v8 & 0x40000) != 0)
  {
    v27 = [NSNumber numberWithUnsignedInt:self->_ulTotalBytes];
    [v3 setObject:v27 forKey:@"ul_total_bytes"];

    v8 = self->_has;
    if ((*&v8 & 0x20) == 0)
    {
LABEL_21:
      if ((*&v8 & 0x80000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  else if ((*&v8 & 0x20) == 0)
  {
    goto LABEL_21;
  }

  v28 = [NSNumber numberWithUnsignedInt:self->_dlTotalBytes];
  [v3 setObject:v28 forKey:@"dl_total_bytes"];

  if ((*&self->_has & 0x80000) != 0)
  {
LABEL_22:
    v9 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v9 forKey:@"version"];
  }

LABEL_23:

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v31 = toCopy;
  if (*&has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    toCopy = v31;
    has = self->_has;
    if ((*&has & 0x4000) == 0)
    {
LABEL_3:
      if ((*&has & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((*&has & 0x4000) == 0)
  {
    goto LABEL_3;
  }

  psDuration = self->_psDuration;
  PBDataWriterWriteUint32Field();
  toCopy = v31;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_4:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  totalFachDuration = self->_totalFachDuration;
  PBDataWriterWriteUint32Field();
  toCopy = v31;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_5:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  lastFachDuration = self->_lastFachDuration;
  PBDataWriterWriteUint32Field();
  toCopy = v31;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_6:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  mrabDuration = self->_mrabDuration;
  PBDataWriterWriteUint32Field();
  toCopy = v31;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_7:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  lastUlInactiveDur = self->_lastUlInactiveDur;
  PBDataWriterWriteUint32Field();
  toCopy = v31;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_8:
    if ((*&has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  lastDlInactiveDur = self->_lastDlInactiveDur;
  PBDataWriterWriteUint32Field();
  toCopy = v31;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_9:
    if ((*&has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  aveUlThroughput = self->_aveUlThroughput;
  PBDataWriterWriteUint32Field();
  toCopy = v31;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_10:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  aveDlThroughput = self->_aveDlThroughput;
  PBDataWriterWriteUint32Field();
  toCopy = v31;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_11:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  maxUlThroughput = self->_maxUlThroughput;
  PBDataWriterWriteUint32Field();
  toCopy = v31;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_12:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  maxDlThroughput = self->_maxDlThroughput;
  PBDataWriterWriteUint32Field();
  toCopy = v31;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_13:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  maxUlRbRate = self->_maxUlRbRate;
  PBDataWriterWriteUint32Field();
  toCopy = v31;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_14:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  maxDlRbRate = self->_maxDlRbRate;
  PBDataWriterWriteUint32Field();
  toCopy = v31;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_15:
    if ((*&has & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  ulActiveDur = self->_ulActiveDur;
  PBDataWriterWriteUint32Field();
  toCopy = v31;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_16:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  dlActiveDur = self->_dlActiveDur;
  PBDataWriterWriteUint32Field();
  toCopy = v31;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_17:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_47:
  ulRetxBlockRatePpt = self->_ulRetxBlockRatePpt;
  PBDataWriterWriteUint32Field();
  toCopy = v31;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_18:
    dlBlerPpt = self->_dlBlerPpt;
    PBDataWriterWriteUint32Field();
    toCopy = v31;
  }

LABEL_19:
  if (self->_txPowerHists.count)
  {
    v7 = 0;
    do
    {
      v8 = self->_txPowerHists.list[v7];
      PBDataWriterWriteUint32Field();
      toCopy = v31;
      ++v7;
    }

    while (v7 < self->_txPowerHists.count);
  }

  if (self->_rxPowerHists.count)
  {
    v9 = 0;
    do
    {
      v10 = self->_rxPowerHists.list[v9];
      PBDataWriterWriteUint32Field();
      toCopy = v31;
      ++v9;
    }

    while (v9 < self->_rxPowerHists.count);
  }

  v11 = self->_has;
  if ((*&v11 & 0x40000) != 0)
  {
    ulTotalBytes = self->_ulTotalBytes;
    PBDataWriterWriteUint32Field();
    toCopy = v31;
    v11 = self->_has;
    if ((*&v11 & 0x20) == 0)
    {
LABEL_27:
      if ((*&v11 & 0x80000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  else if ((*&v11 & 0x20) == 0)
  {
    goto LABEL_27;
  }

  dlTotalBytes = self->_dlTotalBytes;
  PBDataWriterWriteUint32Field();
  toCopy = v31;
  if ((*&self->_has & 0x80000) != 0)
  {
LABEL_28:
    version = self->_version;
    PBDataWriterWriteUint32Field();
    toCopy = v31;
  }

LABEL_29:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (*&has)
  {
    toCopy[7] = self->_timestamp;
    *(toCopy + 35) |= 1u;
    has = self->_has;
    if ((*&has & 0x4000) == 0)
    {
LABEL_3:
      if ((*&has & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((*&has & 0x4000) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 29) = self->_psDuration;
  *(toCopy + 35) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_4:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(toCopy + 30) = self->_totalFachDuration;
  *(toCopy + 35) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_5:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(toCopy + 22) = self->_lastFachDuration;
  *(toCopy + 35) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_6:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(toCopy + 28) = self->_mrabDuration;
  *(toCopy + 35) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_7:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(toCopy + 23) = self->_lastUlInactiveDur;
  *(toCopy + 35) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_8:
    if ((*&has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(toCopy + 21) = self->_lastDlInactiveDur;
  *(toCopy + 35) |= 0x40u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_9:
    if ((*&has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(toCopy + 17) = self->_aveUlThroughput;
  *(toCopy + 35) |= 4u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_10:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(toCopy + 16) = self->_aveDlThroughput;
  *(toCopy + 35) |= 2u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_11:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(toCopy + 27) = self->_maxUlThroughput;
  *(toCopy + 35) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_12:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(toCopy + 25) = self->_maxDlThroughput;
  *(toCopy + 35) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_13:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(toCopy + 26) = self->_maxUlRbRate;
  *(toCopy + 35) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_14:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(toCopy + 24) = self->_maxDlRbRate;
  *(toCopy + 35) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_15:
    if ((*&has & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(toCopy + 31) = self->_ulActiveDur;
  *(toCopy + 35) |= 0x10000u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_16:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_17;
    }

LABEL_49:
    *(toCopy + 32) = self->_ulRetxBlockRatePpt;
    *(toCopy + 35) |= 0x20000u;
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_48:
  *(toCopy + 18) = self->_dlActiveDur;
  *(toCopy + 35) |= 8u;
  has = self->_has;
  if ((*&has & 0x20000) != 0)
  {
    goto LABEL_49;
  }

LABEL_17:
  if ((*&has & 0x10) != 0)
  {
LABEL_18:
    *(toCopy + 19) = self->_dlBlerPpt;
    *(toCopy + 35) |= 0x10u;
  }

LABEL_19:
  v13 = toCopy;
  if ([(CellularWcdmaRlcThroughput *)self txPowerHistsCount])
  {
    [v13 clearTxPowerHists];
    txPowerHistsCount = [(CellularWcdmaRlcThroughput *)self txPowerHistsCount];
    if (txPowerHistsCount)
    {
      v7 = txPowerHistsCount;
      for (i = 0; i != v7; ++i)
      {
        [v13 addTxPowerHist:{-[CellularWcdmaRlcThroughput txPowerHistAtIndex:](self, "txPowerHistAtIndex:", i)}];
      }
    }
  }

  if ([(CellularWcdmaRlcThroughput *)self rxPowerHistsCount])
  {
    [v13 clearRxPowerHists];
    rxPowerHistsCount = [(CellularWcdmaRlcThroughput *)self rxPowerHistsCount];
    if (rxPowerHistsCount)
    {
      v10 = rxPowerHistsCount;
      for (j = 0; j != v10; ++j)
      {
        [v13 addRxPowerHist:{-[CellularWcdmaRlcThroughput rxPowerHistAtIndex:](self, "rxPowerHistAtIndex:", j)}];
      }
    }
  }

  v12 = self->_has;
  if ((*&v12 & 0x40000) != 0)
  {
    v13[33] = self->_ulTotalBytes;
    v13[35] |= 0x40000u;
    v12 = self->_has;
    if ((*&v12 & 0x20) == 0)
    {
LABEL_29:
      if ((*&v12 & 0x80000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  else if ((*&v12 & 0x20) == 0)
  {
    goto LABEL_29;
  }

  v13[20] = self->_dlTotalBytes;
  v13[35] |= 0x20u;
  if ((*&self->_has & 0x80000) != 0)
  {
LABEL_30:
    v13[34] = self->_version;
    v13[35] |= 0x80000u;
  }

LABEL_31:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  has = self->_has;
  if (*&has)
  {
    *(v4 + 7) = self->_timestamp;
    v4[35] |= 1u;
    has = self->_has;
    if ((*&has & 0x4000) == 0)
    {
LABEL_3:
      if ((*&has & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((*&has & 0x4000) == 0)
  {
    goto LABEL_3;
  }

  v4[29] = self->_psDuration;
  v4[35] |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_4:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  v4[30] = self->_totalFachDuration;
  v4[35] |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_5:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  v4[22] = self->_lastFachDuration;
  v4[35] |= 0x80u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_6:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  v4[28] = self->_mrabDuration;
  v4[35] |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_7:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  v4[23] = self->_lastUlInactiveDur;
  v4[35] |= 0x100u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_8:
    if ((*&has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  v4[21] = self->_lastDlInactiveDur;
  v4[35] |= 0x40u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_9:
    if ((*&has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  v4[17] = self->_aveUlThroughput;
  v4[35] |= 4u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_10:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  v4[16] = self->_aveDlThroughput;
  v4[35] |= 2u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_11:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  v4[27] = self->_maxUlThroughput;
  v4[35] |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_12:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  v4[25] = self->_maxDlThroughput;
  v4[35] |= 0x400u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_13:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  v4[26] = self->_maxUlRbRate;
  v4[35] |= 0x800u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_14:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  v4[24] = self->_maxDlRbRate;
  v4[35] |= 0x200u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_15:
    if ((*&has & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  v4[31] = self->_ulActiveDur;
  v4[35] |= 0x10000u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_16:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  v4[18] = self->_dlActiveDur;
  v4[35] |= 8u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_17:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_39:
  v4[32] = self->_ulRetxBlockRatePpt;
  v4[35] |= 0x20000u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_18:
    v4[19] = self->_dlBlerPpt;
    v4[35] |= 0x10u;
  }

LABEL_19:
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  v7 = self->_has;
  if ((*&v7 & 0x40000) == 0)
  {
    if ((*&v7 & 0x20) == 0)
    {
      goto LABEL_21;
    }

LABEL_42:
    v5[20] = self->_dlTotalBytes;
    v5[35] |= 0x20u;
    if ((*&self->_has & 0x80000) == 0)
    {
      return v5;
    }

    goto LABEL_22;
  }

  v5[33] = self->_ulTotalBytes;
  v5[35] |= 0x40000u;
  v7 = self->_has;
  if ((*&v7 & 0x20) != 0)
  {
    goto LABEL_42;
  }

LABEL_21:
  if ((*&v7 & 0x80000) != 0)
  {
LABEL_22:
    v5[34] = self->_version;
    v5[35] |= 0x80000u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_104;
  }

  has = self->_has;
  v6 = *(equalCopy + 35);
  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(equalCopy + 7))
    {
      goto LABEL_104;
    }
  }

  else if (v6)
  {
LABEL_104:
    v9 = 0;
    goto LABEL_105;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v6 & 0x4000) == 0 || self->_psDuration != *(equalCopy + 29))
    {
      goto LABEL_104;
    }
  }

  else if ((v6 & 0x4000) != 0)
  {
    goto LABEL_104;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v6 & 0x8000) == 0 || self->_totalFachDuration != *(equalCopy + 30))
    {
      goto LABEL_104;
    }
  }

  else if ((v6 & 0x8000) != 0)
  {
    goto LABEL_104;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_lastFachDuration != *(equalCopy + 22))
    {
      goto LABEL_104;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_104;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v6 & 0x2000) == 0 || self->_mrabDuration != *(equalCopy + 28))
    {
      goto LABEL_104;
    }
  }

  else if ((v6 & 0x2000) != 0)
  {
    goto LABEL_104;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0 || self->_lastUlInactiveDur != *(equalCopy + 23))
    {
      goto LABEL_104;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_104;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_lastDlInactiveDur != *(equalCopy + 21))
    {
      goto LABEL_104;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_104;
  }

  if ((*&has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_aveUlThroughput != *(equalCopy + 17))
    {
      goto LABEL_104;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_104;
  }

  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_aveDlThroughput != *(equalCopy + 16))
    {
      goto LABEL_104;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_104;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v6 & 0x1000) == 0 || self->_maxUlThroughput != *(equalCopy + 27))
    {
      goto LABEL_104;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
    goto LABEL_104;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_maxDlThroughput != *(equalCopy + 25))
    {
      goto LABEL_104;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_104;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v6 & 0x800) == 0 || self->_maxUlRbRate != *(equalCopy + 26))
    {
      goto LABEL_104;
    }
  }

  else if ((v6 & 0x800) != 0)
  {
    goto LABEL_104;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_maxDlRbRate != *(equalCopy + 24))
    {
      goto LABEL_104;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_104;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v6 & 0x10000) == 0 || self->_ulActiveDur != *(equalCopy + 31))
    {
      goto LABEL_104;
    }
  }

  else if ((v6 & 0x10000) != 0)
  {
    goto LABEL_104;
  }

  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_dlActiveDur != *(equalCopy + 18))
    {
      goto LABEL_104;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_104;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v6 & 0x20000) == 0 || self->_ulRetxBlockRatePpt != *(equalCopy + 32))
    {
      goto LABEL_104;
    }
  }

  else if ((v6 & 0x20000) != 0)
  {
    goto LABEL_104;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_dlBlerPpt != *(equalCopy + 19))
    {
      goto LABEL_104;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_104;
  }

  if (!PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual())
  {
    goto LABEL_104;
  }

  v7 = self->_has;
  v8 = *(equalCopy + 35);
  if ((*&v7 & 0x40000) != 0)
  {
    if ((v8 & 0x40000) == 0 || self->_ulTotalBytes != *(equalCopy + 33))
    {
      goto LABEL_104;
    }
  }

  else if ((v8 & 0x40000) != 0)
  {
    goto LABEL_104;
  }

  if ((*&v7 & 0x20) != 0)
  {
    if ((v8 & 0x20) == 0 || self->_dlTotalBytes != *(equalCopy + 20))
    {
      goto LABEL_104;
    }
  }

  else if ((v8 & 0x20) != 0)
  {
    goto LABEL_104;
  }

  if ((*&v7 & 0x80000) != 0)
  {
    if ((v8 & 0x80000) == 0 || self->_version != *(equalCopy + 34))
    {
      goto LABEL_104;
    }

    v9 = 1;
  }

  else
  {
    v9 = (v8 & 0x80000) == 0;
  }

LABEL_105:

  return v9;
}

- (unint64_t)hash
{
  has = self->_has;
  if (*&has)
  {
    v27 = 2654435761u * self->_timestamp;
    if ((*&has & 0x4000) != 0)
    {
LABEL_3:
      v26 = 2654435761 * self->_psDuration;
      if ((*&has & 0x8000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v27 = 0;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_3;
    }
  }

  v26 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_4:
    v25 = 2654435761 * self->_totalFachDuration;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  v25 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_5:
    v24 = 2654435761 * self->_lastFachDuration;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  v24 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_6:
    v23 = 2654435761 * self->_mrabDuration;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  v23 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_7:
    v22 = 2654435761 * self->_lastUlInactiveDur;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  v22 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_8:
    v21 = 2654435761 * self->_lastDlInactiveDur;
    if ((*&has & 4) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  v21 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_9:
    v20 = 2654435761 * self->_aveUlThroughput;
    if ((*&has & 2) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  v20 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_10:
    v19 = 2654435761 * self->_aveDlThroughput;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  v19 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_11:
    v18 = 2654435761 * self->_maxUlThroughput;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  v18 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_12:
    v4 = 2654435761 * self->_maxDlThroughput;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  v4 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_13:
    v5 = 2654435761 * self->_maxUlRbRate;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  v5 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_14:
    v6 = 2654435761 * self->_maxDlRbRate;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  v6 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_15:
    v7 = 2654435761 * self->_ulActiveDur;
    if ((*&has & 8) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  v7 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_16:
    v8 = 2654435761 * self->_dlActiveDur;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_17;
    }

LABEL_34:
    v9 = 0;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_33:
  v8 = 0;
  if ((*&has & 0x20000) == 0)
  {
    goto LABEL_34;
  }

LABEL_17:
  v9 = 2654435761 * self->_ulRetxBlockRatePpt;
  if ((*&has & 0x10) != 0)
  {
LABEL_18:
    v10 = 2654435761 * self->_dlBlerPpt;
    goto LABEL_36;
  }

LABEL_35:
  v10 = 0;
LABEL_36:
  v11 = PBRepeatedUInt32Hash();
  v12 = PBRepeatedUInt32Hash();
  v13 = self->_has;
  if ((*&v13 & 0x40000) == 0)
  {
    v14 = 0;
    if ((*&v13 & 0x20) != 0)
    {
      goto LABEL_38;
    }

LABEL_41:
    v15 = 0;
    if ((*&v13 & 0x80000) != 0)
    {
      goto LABEL_39;
    }

LABEL_42:
    v16 = 0;
    return v26 ^ v27 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v16;
  }

  v14 = 2654435761 * self->_ulTotalBytes;
  if ((*&v13 & 0x20) == 0)
  {
    goto LABEL_41;
  }

LABEL_38:
  v15 = 2654435761 * self->_dlTotalBytes;
  if ((*&v13 & 0x80000) == 0)
  {
    goto LABEL_42;
  }

LABEL_39:
  v16 = 2654435761 * self->_version;
  return v26 ^ v27 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v16;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 35);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 7);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 35);
    if ((v5 & 0x4000) == 0)
    {
LABEL_3:
      if ((v5 & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((v5 & 0x4000) == 0)
  {
    goto LABEL_3;
  }

  self->_psDuration = *(fromCopy + 29);
  *&self->_has |= 0x4000u;
  v5 = *(fromCopy + 35);
  if ((v5 & 0x8000) == 0)
  {
LABEL_4:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_totalFachDuration = *(fromCopy + 30);
  *&self->_has |= 0x8000u;
  v5 = *(fromCopy + 35);
  if ((v5 & 0x80) == 0)
  {
LABEL_5:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_lastFachDuration = *(fromCopy + 22);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 35);
  if ((v5 & 0x2000) == 0)
  {
LABEL_6:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_mrabDuration = *(fromCopy + 28);
  *&self->_has |= 0x2000u;
  v5 = *(fromCopy + 35);
  if ((v5 & 0x100) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_lastUlInactiveDur = *(fromCopy + 23);
  *&self->_has |= 0x100u;
  v5 = *(fromCopy + 35);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_lastDlInactiveDur = *(fromCopy + 21);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 35);
  if ((v5 & 4) == 0)
  {
LABEL_9:
    if ((v5 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_aveUlThroughput = *(fromCopy + 17);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 35);
  if ((v5 & 2) == 0)
  {
LABEL_10:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_aveDlThroughput = *(fromCopy + 16);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 35);
  if ((v5 & 0x1000) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_maxUlThroughput = *(fromCopy + 27);
  *&self->_has |= 0x1000u;
  v5 = *(fromCopy + 35);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_maxDlThroughput = *(fromCopy + 25);
  *&self->_has |= 0x400u;
  v5 = *(fromCopy + 35);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_maxUlRbRate = *(fromCopy + 26);
  *&self->_has |= 0x800u;
  v5 = *(fromCopy + 35);
  if ((v5 & 0x200) == 0)
  {
LABEL_14:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_maxDlRbRate = *(fromCopy + 24);
  *&self->_has |= 0x200u;
  v5 = *(fromCopy + 35);
  if ((v5 & 0x10000) == 0)
  {
LABEL_15:
    if ((v5 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_ulActiveDur = *(fromCopy + 31);
  *&self->_has |= 0x10000u;
  v5 = *(fromCopy + 35);
  if ((v5 & 8) == 0)
  {
LABEL_16:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_dlActiveDur = *(fromCopy + 18);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 35);
  if ((v5 & 0x20000) == 0)
  {
LABEL_17:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_47:
  self->_ulRetxBlockRatePpt = *(fromCopy + 32);
  *&self->_has |= 0x20000u;
  if ((*(fromCopy + 35) & 0x10) != 0)
  {
LABEL_18:
    self->_dlBlerPpt = *(fromCopy + 19);
    *&self->_has |= 0x10u;
  }

LABEL_19:
  v13 = fromCopy;
  txPowerHistsCount = [fromCopy txPowerHistsCount];
  if (txPowerHistsCount)
  {
    v7 = txPowerHistsCount;
    for (i = 0; i != v7; ++i)
    {
      -[CellularWcdmaRlcThroughput addTxPowerHist:](self, "addTxPowerHist:", [v13 txPowerHistAtIndex:i]);
    }
  }

  rxPowerHistsCount = [v13 rxPowerHistsCount];
  if (rxPowerHistsCount)
  {
    v10 = rxPowerHistsCount;
    for (j = 0; j != v10; ++j)
    {
      -[CellularWcdmaRlcThroughput addRxPowerHist:](self, "addRxPowerHist:", [v13 rxPowerHistAtIndex:j]);
    }
  }

  v12 = v13[35];
  if ((v12 & 0x40000) != 0)
  {
    self->_ulTotalBytes = v13[33];
    *&self->_has |= 0x40000u;
    v12 = v13[35];
    if ((v12 & 0x20) == 0)
    {
LABEL_27:
      if ((v12 & 0x80000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  else if ((v12 & 0x20) == 0)
  {
    goto LABEL_27;
  }

  self->_dlTotalBytes = v13[20];
  *&self->_has |= 0x20u;
  if ((v13[35] & 0x80000) != 0)
  {
LABEL_28:
    self->_version = v13[34];
    *&self->_has |= 0x80000u;
  }

LABEL_29:
}

@end