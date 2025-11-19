@interface KCellularLteRsrpRsrqSinr
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDeployment:(id)a3;
- (int)StringAsRat:(id)a3;
- (int)StringAsRrcState:(id)a3;
- (int)deployment;
- (int)rat;
- (int)rrcState;
- (unint64_t)hash;
- (void)addInstValues:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasAccessoryBitMasks:(BOOL)a3;
- (void)setHasBand:(BOOL)a3;
- (void)setHasChanType:(BOOL)a3;
- (void)setHasDeployment:(BOOL)a3;
- (void)setHasDurationMs:(BOOL)a3;
- (void)setHasEarfcn:(BOOL)a3;
- (void)setHasIsApAwake:(BOOL)a3;
- (void)setHasIsDataPreferred:(BOOL)a3;
- (void)setHasIsGfnwPlmn:(BOOL)a3;
- (void)setHasIsVolteCall:(BOOL)a3;
- (void)setHasIsVolteCallEnd:(BOOL)a3;
- (void)setHasLastXSeconds:(BOOL)a3;
- (void)setHasLastYSamples:(BOOL)a3;
- (void)setHasMtpl:(BOOL)a3;
- (void)setHasNumSamples:(BOOL)a3;
- (void)setHasPcMax:(BOOL)a3;
- (void)setHasRat:(BOOL)a3;
- (void)setHasRrcState:(BOOL)a3;
- (void)setHasRsrp0:(BOOL)a3;
- (void)setHasRsrp1:(BOOL)a3;
- (void)setHasRsrp2:(BOOL)a3;
- (void)setHasRsrp3:(BOOL)a3;
- (void)setHasRsrq0:(BOOL)a3;
- (void)setHasRsrq1:(BOOL)a3;
- (void)setHasRsrq2:(BOOL)a3;
- (void)setHasRsrq3:(BOOL)a3;
- (void)setHasRxBitMasks:(BOOL)a3;
- (void)setHasSamplePeriodMs:(BOOL)a3;
- (void)setHasSinr0:(BOOL)a3;
- (void)setHasSinr1:(BOOL)a3;
- (void)setHasSinr2:(BOOL)a3;
- (void)setHasSinr3:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)setHasTotalMaxTxPower:(BOOL)a3;
- (void)setHasTotalTxPower:(BOOL)a3;
- (void)setHasTxPort:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation KCellularLteRsrpRsrqSinr

- (void)dealloc
{
  [(KCellularLteRsrpRsrqSinr *)self setCallId:0];
  [(KCellularLteRsrpRsrqSinr *)self setAvgValues:0];
  [(KCellularLteRsrpRsrqSinr *)self setInstValues:0];
  v3.receiver = self;
  v3.super_class = KCellularLteRsrpRsrqSinr;
  [(KCellularLteRsrpRsrqSinr *)&v3 dealloc];
}

- (void)setHasLastXSeconds:(BOOL)a3
{
  v3 = 128;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setHasLastYSamples:(BOOL)a3
{
  v3 = 256;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setHasSamplePeriodMs:(BOOL)a3
{
  v3 = 0x800000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setHasDurationMs:(BOOL)a3
{
  v3 = 32;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setHasNumSamples:(BOOL)a3
{
  v3 = 1024;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasIsDataPreferred:(BOOL)a3
{
  v3 = 0x200000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)addInstValues:(id)a3
{
  v4 = a3;
  instValues = self->_instValues;
  v8 = v4;
  if (!instValues)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_instValues;
    self->_instValues = v6;

    v4 = v8;
    instValues = self->_instValues;
  }

  [(NSMutableArray *)instValues addObject:v4];
}

- (void)setHasSubsId:(BOOL)a3
{
  v3 = 0x10000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setHasIsVolteCall:(BOOL)a3
{
  v3 = 0x800000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3);
}

- (void)setHasIsVolteCallEnd:(BOOL)a3
{
  v3 = 0x1000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3);
}

- (void)setHasIsApAwake:(BOOL)a3
{
  v3 = &_mh_execute_header;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasRsrp0:(BOOL)a3
{
  v3 = 0x4000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasRsrp1:(BOOL)a3
{
  v3 = 0x8000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setHasRsrp2:(BOOL)a3
{
  v3 = 0x10000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setHasRsrp3:(BOOL)a3
{
  v3 = 0x20000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)setHasRsrq0:(BOOL)a3
{
  v3 = 0x40000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setHasRsrq1:(BOOL)a3
{
  v3 = 0x80000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setHasRsrq2:(BOOL)a3
{
  v3 = 0x100000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasRsrq3:(BOOL)a3
{
  v3 = 0x200000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setHasSinr0:(BOOL)a3
{
  v3 = 0x1000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setHasSinr1:(BOOL)a3
{
  v3 = 0x2000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasSinr2:(BOOL)a3
{
  v3 = 0x4000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasSinr3:(BOOL)a3
{
  v3 = 0x8000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setHasRxBitMasks:(BOOL)a3
{
  v3 = 0x400000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)setHasAccessoryBitMasks:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasEarfcn:(BOOL)a3
{
  v3 = 64;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setHasBand:(BOOL)a3
{
  v3 = 4;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setHasTxPort:(BOOL)a3
{
  v3 = 0x80000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setHasIsGfnwPlmn:(BOOL)a3
{
  v3 = 0x400000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (int)rat
{
  if ((*(&self->_has + 1) & 0x10) != 0)
  {
    return self->_rat;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRat:(BOOL)a3
{
  v3 = 4096;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (int)StringAsRat:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"LTE"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"NR"];
  }

  return v4;
}

- (int)deployment
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_deployment;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDeployment:(BOOL)a3
{
  v3 = 16;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (int)StringAsDeployment:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SA"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ENDC"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"NRDC"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)rrcState
{
  if ((*(&self->_has + 1) & 0x20) != 0)
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
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (int)StringAsRrcState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NA"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"IDLE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CONNECTED"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTotalMaxTxPower:(BOOL)a3
{
  v3 = 0x20000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)setHasTotalTxPower:(BOOL)a3
{
  v3 = 0x40000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setHasMtpl:(BOOL)a3
{
  v3 = 512;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasChanType:(BOOL)a3
{
  v3 = 8;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (void)setHasPcMax:(BOOL)a3
{
  v3 = 2048;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = KCellularLteRsrpRsrqSinr;
  v3 = [(KCellularLteRsrpRsrqSinr *)&v7 description];
  v4 = [(KCellularLteRsrpRsrqSinr *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v4 forKey:@"timestamp"];
  }

  callId = self->_callId;
  if (callId)
  {
    [v3 setObject:callId forKey:@"call_id"];
  }

  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    v21 = [NSNumber numberWithUnsignedInt:self->_lastXSeconds];
    [v3 setObject:v21 forKey:@"last_x_seconds"];

    has = self->_has;
    if ((*&has & 0x100) == 0)
    {
LABEL_7:
      if ((*&has & 0x800000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_57;
    }
  }

  else if ((*&has & 0x100) == 0)
  {
    goto LABEL_7;
  }

  v22 = [NSNumber numberWithUnsignedInt:self->_lastYSamples];
  [v3 setObject:v22 forKey:@"last_y_samples"];

  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_8:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_58;
  }

LABEL_57:
  v23 = [NSNumber numberWithUnsignedInt:self->_samplePeriodMs];
  [v3 setObject:v23 forKey:@"sample_period_ms"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_9:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_59;
  }

LABEL_58:
  v24 = [NSNumber numberWithUnsignedInt:self->_durationMs];
  [v3 setObject:v24 forKey:@"duration_ms"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_10:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_59:
  v25 = [NSNumber numberWithUnsignedInt:self->_numSamples];
  [v3 setObject:v25 forKey:@"num_samples"];

  if ((*&self->_has & 0x200000000) != 0)
  {
LABEL_11:
    v7 = [NSNumber numberWithBool:self->_isDataPreferred];
    [v3 setObject:v7 forKey:@"is_data_preferred"];
  }

LABEL_12:
  avgValues = self->_avgValues;
  if (avgValues)
  {
    v9 = [(RsrpRsrqSinr *)avgValues dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"avg_values"];
  }

  if ([(NSMutableArray *)self->_instValues count])
  {
    v10 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_instValues, "count")}];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v11 = self->_instValues;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v58 objects:v62 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v59;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v59 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v58 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:v16];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v58 objects:v62 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKey:@"inst_values"];
  }

  v17 = self->_has;
  if ((*&v17 & 0x10000000) != 0)
  {
    v26 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v26 forKey:@"subs_id"];

    v17 = self->_has;
    if ((*&v17 & 0x800000000) == 0)
    {
LABEL_25:
      if ((*&v17 & 0x1000000000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_63;
    }
  }

  else if ((*&v17 & 0x800000000) == 0)
  {
    goto LABEL_25;
  }

  v27 = [NSNumber numberWithBool:self->_isVolteCall];
  [v3 setObject:v27 forKey:@"is_volte_call"];

  v17 = self->_has;
  if ((*&v17 & 0x1000000000) == 0)
  {
LABEL_26:
    if ((*&v17 & 0x100000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_64;
  }

LABEL_63:
  v28 = [NSNumber numberWithBool:self->_isVolteCallEnd];
  [v3 setObject:v28 forKey:@"is_volte_call_end"];

  v17 = self->_has;
  if ((*&v17 & 0x100000000) == 0)
  {
LABEL_27:
    if ((*&v17 & 0x4000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_65;
  }

LABEL_64:
  v29 = [NSNumber numberWithBool:self->_isApAwake];
  [v3 setObject:v29 forKey:@"is_ap_awake"];

  v17 = self->_has;
  if ((*&v17 & 0x4000) == 0)
  {
LABEL_28:
    if ((*&v17 & 0x8000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_66;
  }

LABEL_65:
  v30 = [NSNumber numberWithInt:self->_rsrp0];
  [v3 setObject:v30 forKey:@"rsrp0"];

  v17 = self->_has;
  if ((*&v17 & 0x8000) == 0)
  {
LABEL_29:
    if ((*&v17 & 0x10000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_67;
  }

LABEL_66:
  v31 = [NSNumber numberWithInt:self->_rsrp1];
  [v3 setObject:v31 forKey:@"rsrp1"];

  v17 = self->_has;
  if ((*&v17 & 0x10000) == 0)
  {
LABEL_30:
    if ((*&v17 & 0x20000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_68;
  }

LABEL_67:
  v32 = [NSNumber numberWithInt:self->_rsrp2];
  [v3 setObject:v32 forKey:@"rsrp2"];

  v17 = self->_has;
  if ((*&v17 & 0x20000) == 0)
  {
LABEL_31:
    if ((*&v17 & 0x40000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_69;
  }

LABEL_68:
  v33 = [NSNumber numberWithInt:self->_rsrp3];
  [v3 setObject:v33 forKey:@"rsrp3"];

  v17 = self->_has;
  if ((*&v17 & 0x40000) == 0)
  {
LABEL_32:
    if ((*&v17 & 0x80000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_70;
  }

LABEL_69:
  v34 = [NSNumber numberWithInt:self->_rsrq0];
  [v3 setObject:v34 forKey:@"rsrq0"];

  v17 = self->_has;
  if ((*&v17 & 0x80000) == 0)
  {
LABEL_33:
    if ((*&v17 & 0x100000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_71;
  }

LABEL_70:
  v35 = [NSNumber numberWithInt:self->_rsrq1];
  [v3 setObject:v35 forKey:@"rsrq1"];

  v17 = self->_has;
  if ((*&v17 & 0x100000) == 0)
  {
LABEL_34:
    if ((*&v17 & 0x200000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_72;
  }

LABEL_71:
  v36 = [NSNumber numberWithInt:self->_rsrq2];
  [v3 setObject:v36 forKey:@"rsrq2"];

  v17 = self->_has;
  if ((*&v17 & 0x200000) == 0)
  {
LABEL_35:
    if ((*&v17 & 0x1000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_73;
  }

LABEL_72:
  v37 = [NSNumber numberWithInt:self->_rsrq3];
  [v3 setObject:v37 forKey:@"rsrq3"];

  v17 = self->_has;
  if ((*&v17 & 0x1000000) == 0)
  {
LABEL_36:
    if ((*&v17 & 0x2000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_74;
  }

LABEL_73:
  v38 = [NSNumber numberWithInt:self->_sinr0];
  [v3 setObject:v38 forKey:@"sinr0"];

  v17 = self->_has;
  if ((*&v17 & 0x2000000) == 0)
  {
LABEL_37:
    if ((*&v17 & 0x4000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_75;
  }

LABEL_74:
  v39 = [NSNumber numberWithInt:self->_sinr1];
  [v3 setObject:v39 forKey:@"sinr1"];

  v17 = self->_has;
  if ((*&v17 & 0x4000000) == 0)
  {
LABEL_38:
    if ((*&v17 & 0x8000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_76;
  }

LABEL_75:
  v40 = [NSNumber numberWithInt:self->_sinr2];
  [v3 setObject:v40 forKey:@"sinr2"];

  v17 = self->_has;
  if ((*&v17 & 0x8000000) == 0)
  {
LABEL_39:
    if ((*&v17 & 0x400000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_77;
  }

LABEL_76:
  v41 = [NSNumber numberWithInt:self->_sinr3];
  [v3 setObject:v41 forKey:@"sinr3"];

  v17 = self->_has;
  if ((*&v17 & 0x400000) == 0)
  {
LABEL_40:
    if ((*&v17 & 2) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_78;
  }

LABEL_77:
  v42 = [NSNumber numberWithUnsignedInt:self->_rxBitMasks];
  [v3 setObject:v42 forKey:@"rx_bit_masks"];

  v17 = self->_has;
  if ((*&v17 & 2) == 0)
  {
LABEL_41:
    if ((*&v17 & 0x40) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_79;
  }

LABEL_78:
  v43 = [NSNumber numberWithUnsignedInt:self->_accessoryBitMasks];
  [v3 setObject:v43 forKey:@"accessory_bit_masks"];

  v17 = self->_has;
  if ((*&v17 & 0x40) == 0)
  {
LABEL_42:
    if ((*&v17 & 4) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_80;
  }

LABEL_79:
  v44 = [NSNumber numberWithUnsignedInt:self->_earfcn];
  [v3 setObject:v44 forKey:@"earfcn"];

  v17 = self->_has;
  if ((*&v17 & 4) == 0)
  {
LABEL_43:
    if ((*&v17 & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_81;
  }

LABEL_80:
  v45 = [NSNumber numberWithUnsignedInt:self->_band];
  [v3 setObject:v45 forKey:@"band"];

  v17 = self->_has;
  if ((*&v17 & 0x80000000) == 0)
  {
LABEL_44:
    if ((*&v17 & 0x400000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_82;
  }

LABEL_81:
  v46 = [NSNumber numberWithUnsignedInt:self->_txPort];
  [v3 setObject:v46 forKey:@"tx_port"];

  v17 = self->_has;
  if ((*&v17 & 0x400000000) == 0)
  {
LABEL_45:
    if ((*&v17 & 0x1000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_83;
  }

LABEL_82:
  v47 = [NSNumber numberWithBool:self->_isGfnwPlmn];
  [v3 setObject:v47 forKey:@"is_gfnw_plmn"];

  v17 = self->_has;
  if ((*&v17 & 0x1000) == 0)
  {
LABEL_46:
    if ((*&v17 & 0x10) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_89;
  }

LABEL_83:
  rat = self->_rat;
  if (rat)
  {
    if (rat == 1)
    {
      v49 = @"NR";
    }

    else
    {
      v49 = [NSString stringWithFormat:@"(unknown: %i)", self->_rat];
    }
  }

  else
  {
    v49 = @"LTE";
  }

  [v3 setObject:v49 forKey:@"rat"];

  v17 = self->_has;
  if ((*&v17 & 0x10) == 0)
  {
LABEL_47:
    if ((*&v17 & 0x2000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_93;
  }

LABEL_89:
  deployment = self->_deployment;
  if (deployment >= 3)
  {
    v51 = [NSString stringWithFormat:@"(unknown: %i)", self->_deployment];
  }

  else
  {
    v51 = off_100318F90[deployment];
  }

  [v3 setObject:v51 forKey:@"deployment"];

  v17 = self->_has;
  if ((*&v17 & 0x2000) == 0)
  {
LABEL_48:
    if ((*&v17 & 0x20000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_97;
  }

LABEL_93:
  rrcState = self->_rrcState;
  if (rrcState >= 3)
  {
    v53 = [NSString stringWithFormat:@"(unknown: %i)", self->_rrcState];
  }

  else
  {
    v53 = off_100318FA8[rrcState];
  }

  [v3 setObject:v53 forKey:@"rrc_state"];

  v17 = self->_has;
  if ((*&v17 & 0x20000000) == 0)
  {
LABEL_49:
    if ((*&v17 & 0x40000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_98;
  }

LABEL_97:
  v54 = [NSNumber numberWithInt:self->_totalMaxTxPower];
  [v3 setObject:v54 forKey:@"total_max_tx_power"];

  v17 = self->_has;
  if ((*&v17 & 0x40000000) == 0)
  {
LABEL_50:
    if ((*&v17 & 0x200) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_99;
  }

LABEL_98:
  v55 = [NSNumber numberWithInt:self->_totalTxPower];
  [v3 setObject:v55 forKey:@"total_tx_power"];

  v17 = self->_has;
  if ((*&v17 & 0x200) == 0)
  {
LABEL_51:
    if ((*&v17 & 8) == 0)
    {
      goto LABEL_52;
    }

LABEL_100:
    v57 = [NSNumber numberWithInt:self->_chanType];
    [v3 setObject:v57 forKey:@"chan_type"];

    if ((*&self->_has & 0x800) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_99:
  v56 = [NSNumber numberWithInt:self->_mtpl];
  [v3 setObject:v56 forKey:@"mtpl"];

  v17 = self->_has;
  if ((*&v17 & 8) != 0)
  {
    goto LABEL_100;
  }

LABEL_52:
  if ((*&v17 & 0x800) != 0)
  {
LABEL_53:
    v18 = [NSNumber numberWithInt:self->_pcMax];
    [v3 setObject:v18 forKey:@"pc_max"];
  }

LABEL_54:
  v19 = v3;

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (*&has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((*&has & 0x10000000) != 0)
  {
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
  }

  if (self->_callId)
  {
    PBDataWriterWriteStringField();
  }

  v8 = self->_has;
  if ((*&v8 & 0x80) != 0)
  {
    lastXSeconds = self->_lastXSeconds;
    PBDataWriterWriteUint32Field();
    v8 = self->_has;
    if ((*&v8 & 0x100) == 0)
    {
LABEL_9:
      if ((*&v8 & 0x800000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_56;
    }
  }

  else if ((*&v8 & 0x100) == 0)
  {
    goto LABEL_9;
  }

  lastYSamples = self->_lastYSamples;
  PBDataWriterWriteUint32Field();
  v8 = self->_has;
  if ((*&v8 & 0x800000) == 0)
  {
LABEL_10:
    if ((*&v8 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_57;
  }

LABEL_56:
  samplePeriodMs = self->_samplePeriodMs;
  PBDataWriterWriteUint32Field();
  v8 = self->_has;
  if ((*&v8 & 0x20) == 0)
  {
LABEL_11:
    if ((*&v8 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_58;
  }

LABEL_57:
  durationMs = self->_durationMs;
  PBDataWriterWriteUint32Field();
  v8 = self->_has;
  if ((*&v8 & 0x400) == 0)
  {
LABEL_12:
    if ((*&v8 & 0x200000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_58:
  numSamples = self->_numSamples;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x200000000) != 0)
  {
LABEL_13:
    isDataPreferred = self->_isDataPreferred;
    PBDataWriterWriteBOOLField();
  }

LABEL_14:
  if (self->_avgValues)
  {
    PBDataWriterWriteSubmessage();
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v10 = self->_instValues;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v52;
    do
    {
      v14 = 0;
      do
      {
        if (*v52 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v51 + 1) + 8 * v14);
        PBDataWriterWriteSubmessage();
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v12);
  }

  v16 = self->_has;
  if ((*&v16 & 0x800000000) != 0)
  {
    isVolteCall = self->_isVolteCall;
    PBDataWriterWriteBOOLField();
    v16 = self->_has;
    if ((*&v16 & 0x1000000000) == 0)
    {
LABEL_25:
      if ((*&v16 & 0x100000000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_62;
    }
  }

  else if ((*&v16 & 0x1000000000) == 0)
  {
    goto LABEL_25;
  }

  isVolteCallEnd = self->_isVolteCallEnd;
  PBDataWriterWriteBOOLField();
  v16 = self->_has;
  if ((*&v16 & 0x100000000) == 0)
  {
LABEL_26:
    if ((*&v16 & 0x4000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_63;
  }

LABEL_62:
  isApAwake = self->_isApAwake;
  PBDataWriterWriteBOOLField();
  v16 = self->_has;
  if ((*&v16 & 0x4000) == 0)
  {
LABEL_27:
    if ((*&v16 & 0x8000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_64;
  }

LABEL_63:
  rsrp0 = self->_rsrp0;
  PBDataWriterWriteInt32Field();
  v16 = self->_has;
  if ((*&v16 & 0x8000) == 0)
  {
LABEL_28:
    if ((*&v16 & 0x10000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_65;
  }

LABEL_64:
  rsrp1 = self->_rsrp1;
  PBDataWriterWriteInt32Field();
  v16 = self->_has;
  if ((*&v16 & 0x10000) == 0)
  {
LABEL_29:
    if ((*&v16 & 0x20000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_66;
  }

LABEL_65:
  rsrp2 = self->_rsrp2;
  PBDataWriterWriteInt32Field();
  v16 = self->_has;
  if ((*&v16 & 0x20000) == 0)
  {
LABEL_30:
    if ((*&v16 & 0x40000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_67;
  }

LABEL_66:
  rsrp3 = self->_rsrp3;
  PBDataWriterWriteInt32Field();
  v16 = self->_has;
  if ((*&v16 & 0x40000) == 0)
  {
LABEL_31:
    if ((*&v16 & 0x80000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_68;
  }

LABEL_67:
  rsrq0 = self->_rsrq0;
  PBDataWriterWriteInt32Field();
  v16 = self->_has;
  if ((*&v16 & 0x80000) == 0)
  {
LABEL_32:
    if ((*&v16 & 0x100000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_69;
  }

LABEL_68:
  rsrq1 = self->_rsrq1;
  PBDataWriterWriteInt32Field();
  v16 = self->_has;
  if ((*&v16 & 0x100000) == 0)
  {
LABEL_33:
    if ((*&v16 & 0x200000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_70;
  }

LABEL_69:
  rsrq2 = self->_rsrq2;
  PBDataWriterWriteInt32Field();
  v16 = self->_has;
  if ((*&v16 & 0x200000) == 0)
  {
LABEL_34:
    if ((*&v16 & 0x1000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_71;
  }

LABEL_70:
  rsrq3 = self->_rsrq3;
  PBDataWriterWriteInt32Field();
  v16 = self->_has;
  if ((*&v16 & 0x1000000) == 0)
  {
LABEL_35:
    if ((*&v16 & 0x2000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_72;
  }

LABEL_71:
  sinr0 = self->_sinr0;
  PBDataWriterWriteInt32Field();
  v16 = self->_has;
  if ((*&v16 & 0x2000000) == 0)
  {
LABEL_36:
    if ((*&v16 & 0x4000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_73;
  }

LABEL_72:
  sinr1 = self->_sinr1;
  PBDataWriterWriteInt32Field();
  v16 = self->_has;
  if ((*&v16 & 0x4000000) == 0)
  {
LABEL_37:
    if ((*&v16 & 0x8000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_74;
  }

LABEL_73:
  sinr2 = self->_sinr2;
  PBDataWriterWriteInt32Field();
  v16 = self->_has;
  if ((*&v16 & 0x8000000) == 0)
  {
LABEL_38:
    if ((*&v16 & 0x400000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_75;
  }

LABEL_74:
  sinr3 = self->_sinr3;
  PBDataWriterWriteInt32Field();
  v16 = self->_has;
  if ((*&v16 & 0x400000) == 0)
  {
LABEL_39:
    if ((*&v16 & 2) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_76;
  }

LABEL_75:
  rxBitMasks = self->_rxBitMasks;
  PBDataWriterWriteUint32Field();
  v16 = self->_has;
  if ((*&v16 & 2) == 0)
  {
LABEL_40:
    if ((*&v16 & 0x40) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_77;
  }

LABEL_76:
  accessoryBitMasks = self->_accessoryBitMasks;
  PBDataWriterWriteUint32Field();
  v16 = self->_has;
  if ((*&v16 & 0x40) == 0)
  {
LABEL_41:
    if ((*&v16 & 4) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_78;
  }

LABEL_77:
  earfcn = self->_earfcn;
  PBDataWriterWriteUint32Field();
  v16 = self->_has;
  if ((*&v16 & 4) == 0)
  {
LABEL_42:
    if ((*&v16 & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_79;
  }

LABEL_78:
  band = self->_band;
  PBDataWriterWriteUint32Field();
  v16 = self->_has;
  if ((*&v16 & 0x80000000) == 0)
  {
LABEL_43:
    if ((*&v16 & 0x400000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_80;
  }

LABEL_79:
  txPort = self->_txPort;
  PBDataWriterWriteUint32Field();
  v16 = self->_has;
  if ((*&v16 & 0x400000000) == 0)
  {
LABEL_44:
    if ((*&v16 & 0x1000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_81;
  }

LABEL_80:
  isGfnwPlmn = self->_isGfnwPlmn;
  PBDataWriterWriteBOOLField();
  v16 = self->_has;
  if ((*&v16 & 0x1000) == 0)
  {
LABEL_45:
    if ((*&v16 & 0x10) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_82;
  }

LABEL_81:
  rat = self->_rat;
  PBDataWriterWriteInt32Field();
  v16 = self->_has;
  if ((*&v16 & 0x10) == 0)
  {
LABEL_46:
    if ((*&v16 & 0x2000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_83;
  }

LABEL_82:
  deployment = self->_deployment;
  PBDataWriterWriteInt32Field();
  v16 = self->_has;
  if ((*&v16 & 0x2000) == 0)
  {
LABEL_47:
    if ((*&v16 & 0x20000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_84;
  }

LABEL_83:
  rrcState = self->_rrcState;
  PBDataWriterWriteInt32Field();
  v16 = self->_has;
  if ((*&v16 & 0x20000000) == 0)
  {
LABEL_48:
    if ((*&v16 & 0x40000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_85;
  }

LABEL_84:
  totalMaxTxPower = self->_totalMaxTxPower;
  PBDataWriterWriteInt32Field();
  v16 = self->_has;
  if ((*&v16 & 0x40000000) == 0)
  {
LABEL_49:
    if ((*&v16 & 0x200) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_86;
  }

LABEL_85:
  totalTxPower = self->_totalTxPower;
  PBDataWriterWriteInt32Field();
  v16 = self->_has;
  if ((*&v16 & 0x200) == 0)
  {
LABEL_50:
    if ((*&v16 & 8) == 0)
    {
      goto LABEL_51;
    }

LABEL_87:
    chanType = self->_chanType;
    PBDataWriterWriteInt32Field();
    if ((*&self->_has & 0x800) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

LABEL_86:
  mtpl = self->_mtpl;
  PBDataWriterWriteInt32Field();
  v16 = self->_has;
  if ((*&v16 & 8) != 0)
  {
    goto LABEL_87;
  }

LABEL_51:
  if ((*&v16 & 0x800) != 0)
  {
LABEL_52:
    pcMax = self->_pcMax;
    PBDataWriterWriteInt32Field();
  }

LABEL_53:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (*&has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 180) |= 1uLL;
    has = self->_has;
  }

  if ((*&has & 0x10000000) != 0)
  {
    *(v4 + 39) = self->_subsId;
    *(v4 + 180) |= 0x10000000uLL;
  }

  v12 = v4;
  if (self->_callId)
  {
    [v4 setCallId:?];
    v4 = v12;
  }

  v6 = self->_has;
  if ((*&v6 & 0x80) != 0)
  {
    *(v4 + 18) = self->_lastXSeconds;
    *(v4 + 180) |= 0x80uLL;
    v6 = self->_has;
    if ((*&v6 & 0x100) == 0)
    {
LABEL_9:
      if ((*&v6 & 0x800000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_55;
    }
  }

  else if ((*&v6 & 0x100) == 0)
  {
    goto LABEL_9;
  }

  *(v4 + 19) = self->_lastYSamples;
  *(v4 + 180) |= 0x100uLL;
  v6 = self->_has;
  if ((*&v6 & 0x800000) == 0)
  {
LABEL_10:
    if ((*&v6 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(v4 + 34) = self->_samplePeriodMs;
  *(v4 + 180) |= 0x800000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x20) == 0)
  {
LABEL_11:
    if ((*&v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v4 + 14) = self->_durationMs;
  *(v4 + 180) |= 0x20uLL;
  v6 = self->_has;
  if ((*&v6 & 0x400) == 0)
  {
LABEL_12:
    if ((*&v6 & 0x200000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_57:
  *(v4 + 21) = self->_numSamples;
  *(v4 + 180) |= 0x400uLL;
  if ((*&self->_has & 0x200000000) != 0)
  {
LABEL_13:
    *(v4 + 173) = self->_isDataPreferred;
    *(v4 + 180) |= 0x200000000uLL;
  }

LABEL_14:
  if (self->_avgValues)
  {
    [v12 setAvgValues:?];
  }

  if ([(KCellularLteRsrpRsrqSinr *)self instValuesCount])
  {
    [v12 clearInstValues];
    v7 = [(KCellularLteRsrpRsrqSinr *)self instValuesCount];
    if (v7)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        v10 = [(KCellularLteRsrpRsrqSinr *)self instValuesAtIndex:i];
        [v12 addInstValues:v10];
      }
    }
  }

  v11 = self->_has;
  if ((*&v11 & 0x800000000) != 0)
  {
    v12[175] = self->_isVolteCall;
    *(v12 + 180) |= 0x800000000uLL;
    v11 = self->_has;
    if ((*&v11 & 0x1000000000) == 0)
    {
LABEL_22:
      if ((*&v11 & 0x100000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_61;
    }
  }

  else if ((*&v11 & 0x1000000000) == 0)
  {
    goto LABEL_22;
  }

  v12[176] = self->_isVolteCallEnd;
  *(v12 + 180) |= 0x1000000000uLL;
  v11 = self->_has;
  if ((*&v11 & 0x100000000) == 0)
  {
LABEL_23:
    if ((*&v11 & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_62;
  }

LABEL_61:
  v12[172] = self->_isApAwake;
  *(v12 + 180) |= &_mh_execute_header;
  v11 = self->_has;
  if ((*&v11 & 0x4000) == 0)
  {
LABEL_24:
    if ((*&v11 & 0x8000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(v12 + 25) = self->_rsrp0;
  *(v12 + 180) |= 0x4000uLL;
  v11 = self->_has;
  if ((*&v11 & 0x8000) == 0)
  {
LABEL_25:
    if ((*&v11 & 0x10000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(v12 + 26) = self->_rsrp1;
  *(v12 + 180) |= 0x8000uLL;
  v11 = self->_has;
  if ((*&v11 & 0x10000) == 0)
  {
LABEL_26:
    if ((*&v11 & 0x20000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(v12 + 27) = self->_rsrp2;
  *(v12 + 180) |= 0x10000uLL;
  v11 = self->_has;
  if ((*&v11 & 0x20000) == 0)
  {
LABEL_27:
    if ((*&v11 & 0x40000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(v12 + 28) = self->_rsrp3;
  *(v12 + 180) |= 0x20000uLL;
  v11 = self->_has;
  if ((*&v11 & 0x40000) == 0)
  {
LABEL_28:
    if ((*&v11 & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(v12 + 29) = self->_rsrq0;
  *(v12 + 180) |= 0x40000uLL;
  v11 = self->_has;
  if ((*&v11 & 0x80000) == 0)
  {
LABEL_29:
    if ((*&v11 & 0x100000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(v12 + 30) = self->_rsrq1;
  *(v12 + 180) |= 0x80000uLL;
  v11 = self->_has;
  if ((*&v11 & 0x100000) == 0)
  {
LABEL_30:
    if ((*&v11 & 0x200000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(v12 + 31) = self->_rsrq2;
  *(v12 + 180) |= 0x100000uLL;
  v11 = self->_has;
  if ((*&v11 & 0x200000) == 0)
  {
LABEL_31:
    if ((*&v11 & 0x1000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(v12 + 32) = self->_rsrq3;
  *(v12 + 180) |= 0x200000uLL;
  v11 = self->_has;
  if ((*&v11 & 0x1000000) == 0)
  {
LABEL_32:
    if ((*&v11 & 0x2000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(v12 + 35) = self->_sinr0;
  *(v12 + 180) |= 0x1000000uLL;
  v11 = self->_has;
  if ((*&v11 & 0x2000000) == 0)
  {
LABEL_33:
    if ((*&v11 & 0x4000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(v12 + 36) = self->_sinr1;
  *(v12 + 180) |= 0x2000000uLL;
  v11 = self->_has;
  if ((*&v11 & 0x4000000) == 0)
  {
LABEL_34:
    if ((*&v11 & 0x8000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(v12 + 37) = self->_sinr2;
  *(v12 + 180) |= 0x4000000uLL;
  v11 = self->_has;
  if ((*&v11 & 0x8000000) == 0)
  {
LABEL_35:
    if ((*&v11 & 0x400000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(v12 + 38) = self->_sinr3;
  *(v12 + 180) |= 0x8000000uLL;
  v11 = self->_has;
  if ((*&v11 & 0x400000) == 0)
  {
LABEL_36:
    if ((*&v11 & 2) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(v12 + 33) = self->_rxBitMasks;
  *(v12 + 180) |= 0x400000uLL;
  v11 = self->_has;
  if ((*&v11 & 2) == 0)
  {
LABEL_37:
    if ((*&v11 & 0x40) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(v12 + 4) = self->_accessoryBitMasks;
  *(v12 + 180) |= 2uLL;
  v11 = self->_has;
  if ((*&v11 & 0x40) == 0)
  {
LABEL_38:
    if ((*&v11 & 4) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(v12 + 15) = self->_earfcn;
  *(v12 + 180) |= 0x40uLL;
  v11 = self->_has;
  if ((*&v11 & 4) == 0)
  {
LABEL_39:
    if ((*&v11 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(v12 + 8) = self->_band;
  *(v12 + 180) |= 4uLL;
  v11 = self->_has;
  if ((*&v11 & 0x80000000) == 0)
  {
LABEL_40:
    if ((*&v11 & 0x400000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(v12 + 42) = self->_txPort;
  *(v12 + 180) |= 0x80000000uLL;
  v11 = self->_has;
  if ((*&v11 & 0x400000000) == 0)
  {
LABEL_41:
    if ((*&v11 & 0x1000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_80;
  }

LABEL_79:
  v12[174] = self->_isGfnwPlmn;
  *(v12 + 180) |= 0x400000000uLL;
  v11 = self->_has;
  if ((*&v11 & 0x1000) == 0)
  {
LABEL_42:
    if ((*&v11 & 0x10) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(v12 + 23) = self->_rat;
  *(v12 + 180) |= 0x1000uLL;
  v11 = self->_has;
  if ((*&v11 & 0x10) == 0)
  {
LABEL_43:
    if ((*&v11 & 0x2000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(v12 + 13) = self->_deployment;
  *(v12 + 180) |= 0x10uLL;
  v11 = self->_has;
  if ((*&v11 & 0x2000) == 0)
  {
LABEL_44:
    if ((*&v11 & 0x20000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_83;
  }

LABEL_82:
  *(v12 + 24) = self->_rrcState;
  *(v12 + 180) |= 0x2000uLL;
  v11 = self->_has;
  if ((*&v11 & 0x20000000) == 0)
  {
LABEL_45:
    if ((*&v11 & 0x40000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_84;
  }

LABEL_83:
  *(v12 + 40) = self->_totalMaxTxPower;
  *(v12 + 180) |= 0x20000000uLL;
  v11 = self->_has;
  if ((*&v11 & 0x40000000) == 0)
  {
LABEL_46:
    if ((*&v11 & 0x200) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(v12 + 41) = self->_totalTxPower;
  *(v12 + 180) |= 0x40000000uLL;
  v11 = self->_has;
  if ((*&v11 & 0x200) == 0)
  {
LABEL_47:
    if ((*&v11 & 8) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_86;
  }

LABEL_85:
  *(v12 + 20) = self->_mtpl;
  *(v12 + 180) |= 0x200uLL;
  v11 = self->_has;
  if ((*&v11 & 8) == 0)
  {
LABEL_48:
    if ((*&v11 & 0x800) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_86:
  *(v12 + 12) = self->_chanType;
  *(v12 + 180) |= 8uLL;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_49:
    *(v12 + 22) = self->_pcMax;
    *(v12 + 180) |= 0x800uLL;
  }

LABEL_50:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (*&has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 180) |= 1uLL;
    has = self->_has;
  }

  if ((*&has & 0x10000000) != 0)
  {
    *(v5 + 39) = self->_subsId;
    *(v5 + 180) |= 0x10000000uLL;
  }

  v8 = [(NSString *)self->_callId copyWithZone:a3];
  v9 = v6[5];
  v6[5] = v8;

  v10 = self->_has;
  if ((*&v10 & 0x80) != 0)
  {
    *(v6 + 18) = self->_lastXSeconds;
    *(v6 + 180) |= 0x80uLL;
    v10 = self->_has;
    if ((*&v10 & 0x100) == 0)
    {
LABEL_7:
      if ((*&v10 & 0x800000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_52;
    }
  }

  else if ((*&v10 & 0x100) == 0)
  {
    goto LABEL_7;
  }

  *(v6 + 19) = self->_lastYSamples;
  *(v6 + 180) |= 0x100uLL;
  v10 = self->_has;
  if ((*&v10 & 0x800000) == 0)
  {
LABEL_8:
    if ((*&v10 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v6 + 34) = self->_samplePeriodMs;
  *(v6 + 180) |= 0x800000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x20) == 0)
  {
LABEL_9:
    if ((*&v10 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v6 + 14) = self->_durationMs;
  *(v6 + 180) |= 0x20uLL;
  v10 = self->_has;
  if ((*&v10 & 0x400) == 0)
  {
LABEL_10:
    if ((*&v10 & 0x200000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_54:
  *(v6 + 21) = self->_numSamples;
  *(v6 + 180) |= 0x400uLL;
  if ((*&self->_has & 0x200000000) != 0)
  {
LABEL_11:
    *(v6 + 173) = self->_isDataPreferred;
    *(v6 + 180) |= 0x200000000uLL;
  }

LABEL_12:
  v11 = [(RsrpRsrqSinr *)self->_avgValues copyWithZone:a3];
  v12 = v6[3];
  v6[3] = v11;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = self->_instValues;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      v17 = 0;
      do
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v22 + 1) + 8 * v17) copyWithZone:{a3, v22}];
        [v6 addInstValues:v18];

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v15);
  }

  v19 = self->_has;
  if ((*&v19 & 0x800000000) != 0)
  {
    *(v6 + 175) = self->_isVolteCall;
    *(v6 + 180) |= 0x800000000uLL;
    v19 = self->_has;
    if ((*&v19 & 0x1000000000) == 0)
    {
LABEL_21:
      if ((*&v19 & 0x100000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_58;
    }
  }

  else if ((*&v19 & 0x1000000000) == 0)
  {
    goto LABEL_21;
  }

  *(v6 + 176) = self->_isVolteCallEnd;
  *(v6 + 180) |= 0x1000000000uLL;
  v19 = self->_has;
  if ((*&v19 & 0x100000000) == 0)
  {
LABEL_22:
    if ((*&v19 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v6 + 172) = self->_isApAwake;
  *(v6 + 180) |= &_mh_execute_header;
  v19 = self->_has;
  if ((*&v19 & 0x4000) == 0)
  {
LABEL_23:
    if ((*&v19 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(v6 + 25) = self->_rsrp0;
  *(v6 + 180) |= 0x4000uLL;
  v19 = self->_has;
  if ((*&v19 & 0x8000) == 0)
  {
LABEL_24:
    if ((*&v19 & 0x10000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(v6 + 26) = self->_rsrp1;
  *(v6 + 180) |= 0x8000uLL;
  v19 = self->_has;
  if ((*&v19 & 0x10000) == 0)
  {
LABEL_25:
    if ((*&v19 & 0x20000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(v6 + 27) = self->_rsrp2;
  *(v6 + 180) |= 0x10000uLL;
  v19 = self->_has;
  if ((*&v19 & 0x20000) == 0)
  {
LABEL_26:
    if ((*&v19 & 0x40000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(v6 + 28) = self->_rsrp3;
  *(v6 + 180) |= 0x20000uLL;
  v19 = self->_has;
  if ((*&v19 & 0x40000) == 0)
  {
LABEL_27:
    if ((*&v19 & 0x80000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(v6 + 29) = self->_rsrq0;
  *(v6 + 180) |= 0x40000uLL;
  v19 = self->_has;
  if ((*&v19 & 0x80000) == 0)
  {
LABEL_28:
    if ((*&v19 & 0x100000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(v6 + 30) = self->_rsrq1;
  *(v6 + 180) |= 0x80000uLL;
  v19 = self->_has;
  if ((*&v19 & 0x100000) == 0)
  {
LABEL_29:
    if ((*&v19 & 0x200000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(v6 + 31) = self->_rsrq2;
  *(v6 + 180) |= 0x100000uLL;
  v19 = self->_has;
  if ((*&v19 & 0x200000) == 0)
  {
LABEL_30:
    if ((*&v19 & 0x1000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(v6 + 32) = self->_rsrq3;
  *(v6 + 180) |= 0x200000uLL;
  v19 = self->_has;
  if ((*&v19 & 0x1000000) == 0)
  {
LABEL_31:
    if ((*&v19 & 0x2000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(v6 + 35) = self->_sinr0;
  *(v6 + 180) |= 0x1000000uLL;
  v19 = self->_has;
  if ((*&v19 & 0x2000000) == 0)
  {
LABEL_32:
    if ((*&v19 & 0x4000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(v6 + 36) = self->_sinr1;
  *(v6 + 180) |= 0x2000000uLL;
  v19 = self->_has;
  if ((*&v19 & 0x4000000) == 0)
  {
LABEL_33:
    if ((*&v19 & 0x8000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(v6 + 37) = self->_sinr2;
  *(v6 + 180) |= 0x4000000uLL;
  v19 = self->_has;
  if ((*&v19 & 0x8000000) == 0)
  {
LABEL_34:
    if ((*&v19 & 0x400000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(v6 + 38) = self->_sinr3;
  *(v6 + 180) |= 0x8000000uLL;
  v19 = self->_has;
  if ((*&v19 & 0x400000) == 0)
  {
LABEL_35:
    if ((*&v19 & 2) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(v6 + 33) = self->_rxBitMasks;
  *(v6 + 180) |= 0x400000uLL;
  v19 = self->_has;
  if ((*&v19 & 2) == 0)
  {
LABEL_36:
    if ((*&v19 & 0x40) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(v6 + 4) = self->_accessoryBitMasks;
  *(v6 + 180) |= 2uLL;
  v19 = self->_has;
  if ((*&v19 & 0x40) == 0)
  {
LABEL_37:
    if ((*&v19 & 4) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(v6 + 15) = self->_earfcn;
  *(v6 + 180) |= 0x40uLL;
  v19 = self->_has;
  if ((*&v19 & 4) == 0)
  {
LABEL_38:
    if ((*&v19 & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(v6 + 8) = self->_band;
  *(v6 + 180) |= 4uLL;
  v19 = self->_has;
  if ((*&v19 & 0x80000000) == 0)
  {
LABEL_39:
    if ((*&v19 & 0x400000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(v6 + 42) = self->_txPort;
  *(v6 + 180) |= 0x80000000uLL;
  v19 = self->_has;
  if ((*&v19 & 0x400000000) == 0)
  {
LABEL_40:
    if ((*&v19 & 0x1000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(v6 + 174) = self->_isGfnwPlmn;
  *(v6 + 180) |= 0x400000000uLL;
  v19 = self->_has;
  if ((*&v19 & 0x1000) == 0)
  {
LABEL_41:
    if ((*&v19 & 0x10) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(v6 + 23) = self->_rat;
  *(v6 + 180) |= 0x1000uLL;
  v19 = self->_has;
  if ((*&v19 & 0x10) == 0)
  {
LABEL_42:
    if ((*&v19 & 0x2000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(v6 + 13) = self->_deployment;
  *(v6 + 180) |= 0x10uLL;
  v19 = self->_has;
  if ((*&v19 & 0x2000) == 0)
  {
LABEL_43:
    if ((*&v19 & 0x20000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(v6 + 24) = self->_rrcState;
  *(v6 + 180) |= 0x2000uLL;
  v19 = self->_has;
  if ((*&v19 & 0x20000000) == 0)
  {
LABEL_44:
    if ((*&v19 & 0x40000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(v6 + 40) = self->_totalMaxTxPower;
  *(v6 + 180) |= 0x20000000uLL;
  v19 = self->_has;
  if ((*&v19 & 0x40000000) == 0)
  {
LABEL_45:
    if ((*&v19 & 0x200) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(v6 + 41) = self->_totalTxPower;
  *(v6 + 180) |= 0x40000000uLL;
  v19 = self->_has;
  if ((*&v19 & 0x200) == 0)
  {
LABEL_46:
    if ((*&v19 & 8) == 0)
    {
      goto LABEL_47;
    }

LABEL_83:
    *(v6 + 12) = self->_chanType;
    *(v6 + 180) |= 8uLL;
    if ((*&self->_has & 0x800) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

LABEL_82:
  *(v6 + 20) = self->_mtpl;
  *(v6 + 180) |= 0x200uLL;
  v19 = self->_has;
  if ((*&v19 & 8) != 0)
  {
    goto LABEL_83;
  }

LABEL_47:
  if ((*&v19 & 0x800) != 0)
  {
LABEL_48:
    *(v6 + 22) = self->_pcMax;
    *(v6 + 180) |= 0x800uLL;
  }

LABEL_49:
  v20 = v6;

  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_56;
  }

  has = self->_has;
  v6 = *(v4 + 180);
  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_56;
    }
  }

  else if (v6)
  {
    goto LABEL_56;
  }

  if ((*&has & 0x10000000) != 0)
  {
    if ((v6 & 0x10000000) == 0 || self->_subsId != *(v4 + 39))
    {
      goto LABEL_56;
    }
  }

  else if ((v6 & 0x10000000) != 0)
  {
    goto LABEL_56;
  }

  callId = self->_callId;
  if (callId | *(v4 + 5))
  {
    if (![(NSString *)callId isEqual:?])
    {
      goto LABEL_56;
    }

    has = self->_has;
  }

  v8 = *(v4 + 180);
  if ((*&has & 0x80) != 0)
  {
    if ((v8 & 0x80) == 0 || self->_lastXSeconds != *(v4 + 18))
    {
      goto LABEL_56;
    }
  }

  else if ((v8 & 0x80) != 0)
  {
    goto LABEL_56;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v8 & 0x100) == 0 || self->_lastYSamples != *(v4 + 19))
    {
      goto LABEL_56;
    }
  }

  else if ((v8 & 0x100) != 0)
  {
    goto LABEL_56;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v8 & 0x800000) == 0 || self->_samplePeriodMs != *(v4 + 34))
    {
      goto LABEL_56;
    }
  }

  else if ((v8 & 0x800000) != 0)
  {
    goto LABEL_56;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v8 & 0x20) == 0 || self->_durationMs != *(v4 + 14))
    {
      goto LABEL_56;
    }
  }

  else if ((v8 & 0x20) != 0)
  {
    goto LABEL_56;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v8 & 0x400) == 0 || self->_numSamples != *(v4 + 21))
    {
      goto LABEL_56;
    }
  }

  else if ((v8 & 0x400) != 0)
  {
    goto LABEL_56;
  }

  if ((*&has & 0x200000000) != 0)
  {
    if ((v8 & 0x200000000) == 0)
    {
      goto LABEL_56;
    }

    v15 = v4[173];
    if (self->_isDataPreferred)
    {
      if ((v4[173] & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (v4[173])
    {
      goto LABEL_56;
    }
  }

  else if ((v8 & 0x200000000) != 0)
  {
    goto LABEL_56;
  }

  avgValues = self->_avgValues;
  if (avgValues | *(v4 + 3) && ![(RsrpRsrqSinr *)avgValues isEqual:?])
  {
    goto LABEL_56;
  }

  instValues = self->_instValues;
  if (instValues | *(v4 + 8))
  {
    if (![(NSMutableArray *)instValues isEqual:?])
    {
      goto LABEL_56;
    }
  }

  v11 = self->_has;
  v12 = *(v4 + 180);
  if ((*&v11 & 0x800000000) != 0)
  {
    if ((v12 & 0x800000000) == 0)
    {
      goto LABEL_56;
    }

    v16 = v4[175];
    if (self->_isVolteCall)
    {
      if ((v4[175] & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (v4[175])
    {
      goto LABEL_56;
    }
  }

  else if ((v12 & 0x800000000) != 0)
  {
    goto LABEL_56;
  }

  if ((*&v11 & 0x1000000000) != 0)
  {
    if ((v12 & 0x1000000000) == 0)
    {
      goto LABEL_56;
    }

    v17 = v4[176];
    if (self->_isVolteCallEnd)
    {
      if ((v4[176] & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (v4[176])
    {
      goto LABEL_56;
    }
  }

  else if ((v12 & 0x1000000000) != 0)
  {
    goto LABEL_56;
  }

  if ((*&v11 & 0x100000000) != 0)
  {
    if ((v12 & 0x100000000) == 0)
    {
      goto LABEL_56;
    }

    v18 = v4[172];
    if (self->_isApAwake)
    {
      if ((v4[172] & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (v4[172])
    {
      goto LABEL_56;
    }
  }

  else if ((v12 & 0x100000000) != 0)
  {
    goto LABEL_56;
  }

  if ((*&v11 & 0x4000) != 0)
  {
    if ((v12 & 0x4000) == 0 || self->_rsrp0 != *(v4 + 25))
    {
      goto LABEL_56;
    }
  }

  else if ((v12 & 0x4000) != 0)
  {
    goto LABEL_56;
  }

  if ((*&v11 & 0x8000) != 0)
  {
    if ((v12 & 0x8000) == 0 || self->_rsrp1 != *(v4 + 26))
    {
      goto LABEL_56;
    }
  }

  else if ((v12 & 0x8000) != 0)
  {
    goto LABEL_56;
  }

  if ((*&v11 & 0x10000) != 0)
  {
    if ((v12 & 0x10000) == 0 || self->_rsrp2 != *(v4 + 27))
    {
      goto LABEL_56;
    }
  }

  else if ((v12 & 0x10000) != 0)
  {
    goto LABEL_56;
  }

  if ((*&v11 & 0x20000) != 0)
  {
    if ((v12 & 0x20000) == 0 || self->_rsrp3 != *(v4 + 28))
    {
      goto LABEL_56;
    }
  }

  else if ((v12 & 0x20000) != 0)
  {
    goto LABEL_56;
  }

  if ((*&v11 & 0x40000) != 0)
  {
    if ((v12 & 0x40000) == 0 || self->_rsrq0 != *(v4 + 29))
    {
      goto LABEL_56;
    }
  }

  else if ((v12 & 0x40000) != 0)
  {
    goto LABEL_56;
  }

  if ((*&v11 & 0x80000) != 0)
  {
    if ((v12 & 0x80000) == 0 || self->_rsrq1 != *(v4 + 30))
    {
      goto LABEL_56;
    }
  }

  else if ((v12 & 0x80000) != 0)
  {
    goto LABEL_56;
  }

  if ((*&v11 & 0x100000) != 0)
  {
    if ((v12 & 0x100000) == 0 || self->_rsrq2 != *(v4 + 31))
    {
      goto LABEL_56;
    }
  }

  else if ((v12 & 0x100000) != 0)
  {
    goto LABEL_56;
  }

  if ((*&v11 & 0x200000) != 0)
  {
    if ((v12 & 0x200000) == 0 || self->_rsrq3 != *(v4 + 32))
    {
      goto LABEL_56;
    }
  }

  else if ((v12 & 0x200000) != 0)
  {
    goto LABEL_56;
  }

  if ((*&v11 & 0x1000000) != 0)
  {
    if ((v12 & 0x1000000) == 0 || self->_sinr0 != *(v4 + 35))
    {
      goto LABEL_56;
    }
  }

  else if ((v12 & 0x1000000) != 0)
  {
    goto LABEL_56;
  }

  if ((*&v11 & 0x2000000) != 0)
  {
    if ((v12 & 0x2000000) == 0 || self->_sinr1 != *(v4 + 36))
    {
      goto LABEL_56;
    }
  }

  else if ((v12 & 0x2000000) != 0)
  {
    goto LABEL_56;
  }

  if ((*&v11 & 0x4000000) != 0)
  {
    if ((v12 & 0x4000000) == 0 || self->_sinr2 != *(v4 + 37))
    {
      goto LABEL_56;
    }
  }

  else if ((v12 & 0x4000000) != 0)
  {
    goto LABEL_56;
  }

  if ((*&v11 & 0x8000000) != 0)
  {
    if ((v12 & 0x8000000) == 0 || self->_sinr3 != *(v4 + 38))
    {
      goto LABEL_56;
    }
  }

  else if ((v12 & 0x8000000) != 0)
  {
    goto LABEL_56;
  }

  if ((*&v11 & 0x400000) != 0)
  {
    if ((v12 & 0x400000) == 0 || self->_rxBitMasks != *(v4 + 33))
    {
      goto LABEL_56;
    }
  }

  else if ((v12 & 0x400000) != 0)
  {
    goto LABEL_56;
  }

  if ((*&v11 & 2) != 0)
  {
    if ((v12 & 2) == 0 || self->_accessoryBitMasks != *(v4 + 4))
    {
      goto LABEL_56;
    }
  }

  else if ((v12 & 2) != 0)
  {
    goto LABEL_56;
  }

  if ((*&v11 & 0x40) != 0)
  {
    if ((v12 & 0x40) == 0 || self->_earfcn != *(v4 + 15))
    {
      goto LABEL_56;
    }
  }

  else if ((v12 & 0x40) != 0)
  {
    goto LABEL_56;
  }

  if ((*&v11 & 4) != 0)
  {
    if ((v12 & 4) == 0 || self->_band != *(v4 + 8))
    {
      goto LABEL_56;
    }
  }

  else if ((v12 & 4) != 0)
  {
    goto LABEL_56;
  }

  if ((*&v11 & 0x80000000) != 0)
  {
    if ((v12 & 0x80000000) == 0 || self->_txPort != *(v4 + 42))
    {
      goto LABEL_56;
    }
  }

  else if ((v12 & 0x80000000) != 0)
  {
    goto LABEL_56;
  }

  if ((*&v11 & 0x400000000) != 0)
  {
    if ((v12 & 0x400000000) == 0)
    {
      goto LABEL_56;
    }

    v19 = v4[174];
    if (self->_isGfnwPlmn)
    {
      if ((v4[174] & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (v4[174])
    {
      goto LABEL_56;
    }
  }

  else if ((v12 & 0x400000000) != 0)
  {
    goto LABEL_56;
  }

  if ((*&v11 & 0x1000) != 0)
  {
    if ((v12 & 0x1000) == 0 || self->_rat != *(v4 + 23))
    {
      goto LABEL_56;
    }
  }

  else if ((v12 & 0x1000) != 0)
  {
    goto LABEL_56;
  }

  if ((*&v11 & 0x10) != 0)
  {
    if ((v12 & 0x10) == 0 || self->_deployment != *(v4 + 13))
    {
      goto LABEL_56;
    }
  }

  else if ((v12 & 0x10) != 0)
  {
    goto LABEL_56;
  }

  if ((*&v11 & 0x2000) != 0)
  {
    if ((v12 & 0x2000) == 0 || self->_rrcState != *(v4 + 24))
    {
      goto LABEL_56;
    }
  }

  else if ((v12 & 0x2000) != 0)
  {
    goto LABEL_56;
  }

  if ((*&v11 & 0x20000000) != 0)
  {
    if ((v12 & 0x20000000) == 0 || self->_totalMaxTxPower != *(v4 + 40))
    {
      goto LABEL_56;
    }
  }

  else if ((v12 & 0x20000000) != 0)
  {
    goto LABEL_56;
  }

  if ((*&v11 & 0x40000000) != 0)
  {
    if ((v12 & 0x40000000) == 0 || self->_totalTxPower != *(v4 + 41))
    {
      goto LABEL_56;
    }
  }

  else if ((v12 & 0x40000000) != 0)
  {
    goto LABEL_56;
  }

  if ((*&v11 & 0x200) != 0)
  {
    if ((v12 & 0x200) == 0 || self->_mtpl != *(v4 + 20))
    {
      goto LABEL_56;
    }
  }

  else if ((v12 & 0x200) != 0)
  {
    goto LABEL_56;
  }

  if ((*&v11 & 8) != 0)
  {
    if ((v12 & 8) == 0 || self->_chanType != *(v4 + 12))
    {
      goto LABEL_56;
    }
  }

  else if ((v12 & 8) != 0)
  {
    goto LABEL_56;
  }

  if ((*&v11 & 0x800) == 0)
  {
    v13 = (*(v4 + 180) & 0x800) == 0;
    goto LABEL_57;
  }

  if ((v12 & 0x800) != 0 && self->_pcMax == *(v4 + 22))
  {
    v13 = 1;
    goto LABEL_57;
  }

LABEL_56:
  v13 = 0;
LABEL_57:

  return v13;
}

- (unint64_t)hash
{
  has = self->_has;
  if (*&has)
  {
    v46 = 2654435761u * self->_timestamp;
    if ((*&has & 0x10000000) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v46 = 0;
    if ((*&has & 0x10000000) != 0)
    {
LABEL_3:
      v45 = 2654435761 * self->_subsId;
      goto LABEL_6;
    }
  }

  v45 = 0;
LABEL_6:
  v44 = [(NSString *)self->_callId hash];
  v4 = self->_has;
  if ((*&v4 & 0x80) != 0)
  {
    v43 = 2654435761 * self->_lastXSeconds;
    if ((*&v4 & 0x100) != 0)
    {
LABEL_8:
      v42 = 2654435761 * self->_lastYSamples;
      if ((*&v4 & 0x800000) != 0)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v43 = 0;
    if ((*&v4 & 0x100) != 0)
    {
      goto LABEL_8;
    }
  }

  v42 = 0;
  if ((*&v4 & 0x800000) != 0)
  {
LABEL_9:
    v41 = 2654435761 * self->_samplePeriodMs;
    if ((*&v4 & 0x20) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_15:
  v41 = 0;
  if ((*&v4 & 0x20) != 0)
  {
LABEL_10:
    v40 = 2654435761 * self->_durationMs;
    if ((*&v4 & 0x400) != 0)
    {
      goto LABEL_11;
    }

LABEL_17:
    v39 = 0;
    if ((*&v4 & 0x200000000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

LABEL_16:
  v40 = 0;
  if ((*&v4 & 0x400) == 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  v39 = 2654435761 * self->_numSamples;
  if ((*&v4 & 0x200000000) != 0)
  {
LABEL_12:
    v38 = 2654435761 * self->_isDataPreferred;
    goto LABEL_19;
  }

LABEL_18:
  v38 = 0;
LABEL_19:
  v37 = [(RsrpRsrqSinr *)self->_avgValues hash];
  v36 = [(NSMutableArray *)self->_instValues hash];
  v5 = self->_has;
  if ((*&v5 & 0x800000000) != 0)
  {
    v35 = 2654435761 * self->_isVolteCall;
    if ((*&v5 & 0x1000000000) != 0)
    {
LABEL_21:
      v34 = 2654435761 * self->_isVolteCallEnd;
      if ((*&v5 & 0x100000000) != 0)
      {
        goto LABEL_22;
      }

      goto LABEL_51;
    }
  }

  else
  {
    v35 = 0;
    if ((*&v5 & 0x1000000000) != 0)
    {
      goto LABEL_21;
    }
  }

  v34 = 0;
  if ((*&v5 & 0x100000000) != 0)
  {
LABEL_22:
    v33 = 2654435761 * self->_isApAwake;
    if ((*&v5 & 0x4000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_52;
  }

LABEL_51:
  v33 = 0;
  if ((*&v5 & 0x4000) != 0)
  {
LABEL_23:
    v6 = 2654435761 * self->_rsrp0;
    if ((*&v5 & 0x8000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_53;
  }

LABEL_52:
  v6 = 0;
  if ((*&v5 & 0x8000) != 0)
  {
LABEL_24:
    v7 = 2654435761 * self->_rsrp1;
    if ((*&v5 & 0x10000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_54;
  }

LABEL_53:
  v7 = 0;
  if ((*&v5 & 0x10000) != 0)
  {
LABEL_25:
    v8 = 2654435761 * self->_rsrp2;
    if ((*&v5 & 0x20000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_55;
  }

LABEL_54:
  v8 = 0;
  if ((*&v5 & 0x20000) != 0)
  {
LABEL_26:
    v9 = 2654435761 * self->_rsrp3;
    if ((*&v5 & 0x40000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_56;
  }

LABEL_55:
  v9 = 0;
  if ((*&v5 & 0x40000) != 0)
  {
LABEL_27:
    v10 = 2654435761 * self->_rsrq0;
    if ((*&v5 & 0x80000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_57;
  }

LABEL_56:
  v10 = 0;
  if ((*&v5 & 0x80000) != 0)
  {
LABEL_28:
    v11 = 2654435761 * self->_rsrq1;
    if ((*&v5 & 0x100000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_58;
  }

LABEL_57:
  v11 = 0;
  if ((*&v5 & 0x100000) != 0)
  {
LABEL_29:
    v12 = 2654435761 * self->_rsrq2;
    if ((*&v5 & 0x200000) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_59;
  }

LABEL_58:
  v12 = 0;
  if ((*&v5 & 0x200000) != 0)
  {
LABEL_30:
    v13 = 2654435761 * self->_rsrq3;
    if ((*&v5 & 0x1000000) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_60;
  }

LABEL_59:
  v13 = 0;
  if ((*&v5 & 0x1000000) != 0)
  {
LABEL_31:
    v14 = 2654435761 * self->_sinr0;
    if ((*&v5 & 0x2000000) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_61;
  }

LABEL_60:
  v14 = 0;
  if ((*&v5 & 0x2000000) != 0)
  {
LABEL_32:
    v15 = 2654435761 * self->_sinr1;
    if ((*&v5 & 0x4000000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_62;
  }

LABEL_61:
  v15 = 0;
  if ((*&v5 & 0x4000000) != 0)
  {
LABEL_33:
    v16 = 2654435761 * self->_sinr2;
    if ((*&v5 & 0x8000000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_63;
  }

LABEL_62:
  v16 = 0;
  if ((*&v5 & 0x8000000) != 0)
  {
LABEL_34:
    v17 = 2654435761 * self->_sinr3;
    if ((*&v5 & 0x400000) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_64;
  }

LABEL_63:
  v17 = 0;
  if ((*&v5 & 0x400000) != 0)
  {
LABEL_35:
    v18 = 2654435761 * self->_rxBitMasks;
    if ((*&v5 & 2) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_65;
  }

LABEL_64:
  v18 = 0;
  if ((*&v5 & 2) != 0)
  {
LABEL_36:
    v19 = 2654435761 * self->_accessoryBitMasks;
    if ((*&v5 & 0x40) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_66;
  }

LABEL_65:
  v19 = 0;
  if ((*&v5 & 0x40) != 0)
  {
LABEL_37:
    v20 = 2654435761 * self->_earfcn;
    if ((*&v5 & 4) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_67;
  }

LABEL_66:
  v20 = 0;
  if ((*&v5 & 4) != 0)
  {
LABEL_38:
    v21 = 2654435761 * self->_band;
    if ((*&v5 & 0x80000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_68;
  }

LABEL_67:
  v21 = 0;
  if ((*&v5 & 0x80000000) != 0)
  {
LABEL_39:
    v22 = 2654435761 * self->_txPort;
    if ((*&v5 & 0x400000000) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_69;
  }

LABEL_68:
  v22 = 0;
  if ((*&v5 & 0x400000000) != 0)
  {
LABEL_40:
    v23 = 2654435761 * self->_isGfnwPlmn;
    if ((*&v5 & 0x1000) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_70;
  }

LABEL_69:
  v23 = 0;
  if ((*&v5 & 0x1000) != 0)
  {
LABEL_41:
    v24 = 2654435761 * self->_rat;
    if ((*&v5 & 0x10) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_71;
  }

LABEL_70:
  v24 = 0;
  if ((*&v5 & 0x10) != 0)
  {
LABEL_42:
    v25 = 2654435761 * self->_deployment;
    if ((*&v5 & 0x2000) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_72;
  }

LABEL_71:
  v25 = 0;
  if ((*&v5 & 0x2000) != 0)
  {
LABEL_43:
    v26 = 2654435761 * self->_rrcState;
    if ((*&v5 & 0x20000000) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_73;
  }

LABEL_72:
  v26 = 0;
  if ((*&v5 & 0x20000000) != 0)
  {
LABEL_44:
    v27 = 2654435761 * self->_totalMaxTxPower;
    if ((*&v5 & 0x40000000) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_74;
  }

LABEL_73:
  v27 = 0;
  if ((*&v5 & 0x40000000) != 0)
  {
LABEL_45:
    v28 = 2654435761 * self->_totalTxPower;
    if ((*&v5 & 0x200) != 0)
    {
      goto LABEL_46;
    }

    goto LABEL_75;
  }

LABEL_74:
  v28 = 0;
  if ((*&v5 & 0x200) != 0)
  {
LABEL_46:
    v29 = 2654435761 * self->_mtpl;
    if ((*&v5 & 8) != 0)
    {
      goto LABEL_47;
    }

LABEL_76:
    v30 = 0;
    if ((*&v5 & 0x800) != 0)
    {
      goto LABEL_48;
    }

LABEL_77:
    v31 = 0;
    return v45 ^ v46 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v44 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30 ^ v31;
  }

LABEL_75:
  v29 = 0;
  if ((*&v5 & 8) == 0)
  {
    goto LABEL_76;
  }

LABEL_47:
  v30 = 2654435761 * self->_chanType;
  if ((*&v5 & 0x800) == 0)
  {
    goto LABEL_77;
  }

LABEL_48:
  v31 = 2654435761 * self->_pcMax;
  return v45 ^ v46 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v44 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30 ^ v31;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 180);
  if (v6)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1uLL;
    v6 = *(v4 + 180);
  }

  if ((v6 & 0x10000000) != 0)
  {
    self->_subsId = *(v4 + 39);
    *&self->_has |= 0x10000000uLL;
  }

  if (*(v4 + 5))
  {
    [(KCellularLteRsrpRsrqSinr *)self setCallId:?];
  }

  v7 = *(v5 + 180);
  if ((v7 & 0x80) != 0)
  {
    self->_lastXSeconds = *(v5 + 18);
    *&self->_has |= 0x80uLL;
    v7 = *(v5 + 180);
    if ((v7 & 0x100) == 0)
    {
LABEL_9:
      if ((v7 & 0x800000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }
  }

  else if ((v7 & 0x100) == 0)
  {
    goto LABEL_9;
  }

  self->_lastYSamples = *(v5 + 19);
  *&self->_has |= 0x100uLL;
  v7 = *(v5 + 180);
  if ((v7 & 0x800000) == 0)
  {
LABEL_10:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_samplePeriodMs = *(v5 + 34);
  *&self->_has |= 0x800000uLL;
  v7 = *(v5 + 180);
  if ((v7 & 0x20) == 0)
  {
LABEL_11:
    if ((v7 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_durationMs = *(v5 + 14);
  *&self->_has |= 0x20uLL;
  v7 = *(v5 + 180);
  if ((v7 & 0x400) == 0)
  {
LABEL_12:
    if ((v7 & 0x200000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_21:
  self->_numSamples = *(v5 + 21);
  *&self->_has |= 0x400uLL;
  if ((*(v5 + 180) & 0x200000000) != 0)
  {
LABEL_13:
    self->_isDataPreferred = v5[173];
    *&self->_has |= 0x200000000uLL;
  }

LABEL_14:
  avgValues = self->_avgValues;
  v9 = *(v5 + 3);
  if (avgValues)
  {
    if (v9)
    {
      [(RsrpRsrqSinr *)avgValues mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(KCellularLteRsrpRsrqSinr *)self setAvgValues:?];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = *(v5 + 8);
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(KCellularLteRsrpRsrqSinr *)self addInstValues:*(*(&v16 + 1) + 8 * i), v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  v15 = *(v5 + 180);
  if ((v15 & 0x800000000) != 0)
  {
    self->_isVolteCall = v5[175];
    *&self->_has |= 0x800000000uLL;
    v15 = *(v5 + 180);
    if ((v15 & 0x1000000000) == 0)
    {
LABEL_34:
      if ((v15 & 0x100000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_65;
    }
  }

  else if ((v15 & 0x1000000000) == 0)
  {
    goto LABEL_34;
  }

  self->_isVolteCallEnd = v5[176];
  *&self->_has |= 0x1000000000uLL;
  v15 = *(v5 + 180);
  if ((v15 & 0x100000000) == 0)
  {
LABEL_35:
    if ((v15 & 0x4000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_66;
  }

LABEL_65:
  self->_isApAwake = v5[172];
  *&self->_has |= &_mh_execute_header;
  v15 = *(v5 + 180);
  if ((v15 & 0x4000) == 0)
  {
LABEL_36:
    if ((v15 & 0x8000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_67;
  }

LABEL_66:
  self->_rsrp0 = *(v5 + 25);
  *&self->_has |= 0x4000uLL;
  v15 = *(v5 + 180);
  if ((v15 & 0x8000) == 0)
  {
LABEL_37:
    if ((v15 & 0x10000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_68;
  }

LABEL_67:
  self->_rsrp1 = *(v5 + 26);
  *&self->_has |= 0x8000uLL;
  v15 = *(v5 + 180);
  if ((v15 & 0x10000) == 0)
  {
LABEL_38:
    if ((v15 & 0x20000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_69;
  }

LABEL_68:
  self->_rsrp2 = *(v5 + 27);
  *&self->_has |= 0x10000uLL;
  v15 = *(v5 + 180);
  if ((v15 & 0x20000) == 0)
  {
LABEL_39:
    if ((v15 & 0x40000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_70;
  }

LABEL_69:
  self->_rsrp3 = *(v5 + 28);
  *&self->_has |= 0x20000uLL;
  v15 = *(v5 + 180);
  if ((v15 & 0x40000) == 0)
  {
LABEL_40:
    if ((v15 & 0x80000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_71;
  }

LABEL_70:
  self->_rsrq0 = *(v5 + 29);
  *&self->_has |= 0x40000uLL;
  v15 = *(v5 + 180);
  if ((v15 & 0x80000) == 0)
  {
LABEL_41:
    if ((v15 & 0x100000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_72;
  }

LABEL_71:
  self->_rsrq1 = *(v5 + 30);
  *&self->_has |= 0x80000uLL;
  v15 = *(v5 + 180);
  if ((v15 & 0x100000) == 0)
  {
LABEL_42:
    if ((v15 & 0x200000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_73;
  }

LABEL_72:
  self->_rsrq2 = *(v5 + 31);
  *&self->_has |= 0x100000uLL;
  v15 = *(v5 + 180);
  if ((v15 & 0x200000) == 0)
  {
LABEL_43:
    if ((v15 & 0x1000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_74;
  }

LABEL_73:
  self->_rsrq3 = *(v5 + 32);
  *&self->_has |= 0x200000uLL;
  v15 = *(v5 + 180);
  if ((v15 & 0x1000000) == 0)
  {
LABEL_44:
    if ((v15 & 0x2000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_75;
  }

LABEL_74:
  self->_sinr0 = *(v5 + 35);
  *&self->_has |= 0x1000000uLL;
  v15 = *(v5 + 180);
  if ((v15 & 0x2000000) == 0)
  {
LABEL_45:
    if ((v15 & 0x4000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_76;
  }

LABEL_75:
  self->_sinr1 = *(v5 + 36);
  *&self->_has |= 0x2000000uLL;
  v15 = *(v5 + 180);
  if ((v15 & 0x4000000) == 0)
  {
LABEL_46:
    if ((v15 & 0x8000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_77;
  }

LABEL_76:
  self->_sinr2 = *(v5 + 37);
  *&self->_has |= 0x4000000uLL;
  v15 = *(v5 + 180);
  if ((v15 & 0x8000000) == 0)
  {
LABEL_47:
    if ((v15 & 0x400000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_78;
  }

LABEL_77:
  self->_sinr3 = *(v5 + 38);
  *&self->_has |= 0x8000000uLL;
  v15 = *(v5 + 180);
  if ((v15 & 0x400000) == 0)
  {
LABEL_48:
    if ((v15 & 2) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_79;
  }

LABEL_78:
  self->_rxBitMasks = *(v5 + 33);
  *&self->_has |= 0x400000uLL;
  v15 = *(v5 + 180);
  if ((v15 & 2) == 0)
  {
LABEL_49:
    if ((v15 & 0x40) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_80;
  }

LABEL_79:
  self->_accessoryBitMasks = *(v5 + 4);
  *&self->_has |= 2uLL;
  v15 = *(v5 + 180);
  if ((v15 & 0x40) == 0)
  {
LABEL_50:
    if ((v15 & 4) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_81;
  }

LABEL_80:
  self->_earfcn = *(v5 + 15);
  *&self->_has |= 0x40uLL;
  v15 = *(v5 + 180);
  if ((v15 & 4) == 0)
  {
LABEL_51:
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_82;
  }

LABEL_81:
  self->_band = *(v5 + 8);
  *&self->_has |= 4uLL;
  v15 = *(v5 + 180);
  if ((v15 & 0x80000000) == 0)
  {
LABEL_52:
    if ((v15 & 0x400000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_83;
  }

LABEL_82:
  self->_txPort = *(v5 + 42);
  *&self->_has |= 0x80000000uLL;
  v15 = *(v5 + 180);
  if ((v15 & 0x400000000) == 0)
  {
LABEL_53:
    if ((v15 & 0x1000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_84;
  }

LABEL_83:
  self->_isGfnwPlmn = v5[174];
  *&self->_has |= 0x400000000uLL;
  v15 = *(v5 + 180);
  if ((v15 & 0x1000) == 0)
  {
LABEL_54:
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_85;
  }

LABEL_84:
  self->_rat = *(v5 + 23);
  *&self->_has |= 0x1000uLL;
  v15 = *(v5 + 180);
  if ((v15 & 0x10) == 0)
  {
LABEL_55:
    if ((v15 & 0x2000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_86;
  }

LABEL_85:
  self->_deployment = *(v5 + 13);
  *&self->_has |= 0x10uLL;
  v15 = *(v5 + 180);
  if ((v15 & 0x2000) == 0)
  {
LABEL_56:
    if ((v15 & 0x20000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_87;
  }

LABEL_86:
  self->_rrcState = *(v5 + 24);
  *&self->_has |= 0x2000uLL;
  v15 = *(v5 + 180);
  if ((v15 & 0x20000000) == 0)
  {
LABEL_57:
    if ((v15 & 0x40000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_88;
  }

LABEL_87:
  self->_totalMaxTxPower = *(v5 + 40);
  *&self->_has |= 0x20000000uLL;
  v15 = *(v5 + 180);
  if ((v15 & 0x40000000) == 0)
  {
LABEL_58:
    if ((v15 & 0x200) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_89;
  }

LABEL_88:
  self->_totalTxPower = *(v5 + 41);
  *&self->_has |= 0x40000000uLL;
  v15 = *(v5 + 180);
  if ((v15 & 0x200) == 0)
  {
LABEL_59:
    if ((v15 & 8) == 0)
    {
      goto LABEL_60;
    }

LABEL_90:
    self->_chanType = *(v5 + 12);
    *&self->_has |= 8uLL;
    if ((*(v5 + 180) & 0x800) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

LABEL_89:
  self->_mtpl = *(v5 + 20);
  *&self->_has |= 0x200uLL;
  v15 = *(v5 + 180);
  if ((v15 & 8) != 0)
  {
    goto LABEL_90;
  }

LABEL_60:
  if ((v15 & 0x800) != 0)
  {
LABEL_61:
    self->_pcMax = *(v5 + 22);
    *&self->_has |= 0x800uLL;
  }

LABEL_62:
}

@end