@interface KCellularGsmIdleConfig
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAcc:(BOOL)acc;
- (void)setHasAccessTech:(BOOL)tech;
- (void)setHasArfcnBcch:(BOOL)bcch;
- (void)setHasAttachAllowed:(BOOL)allowed;
- (void)setHasBsPaMfrms:(BOOL)mfrms;
- (void)setHasBsic:(BOOL)bsic;
- (void)setHasC2Valid:(BOOL)valid;
- (void)setHasCba:(BOOL)cba;
- (void)setHasCbchSupported:(BOOL)supported;
- (void)setHasCbq:(BOOL)cbq;
- (void)setHasCi:(BOOL)ci;
- (void)setHasCrOffset:(BOOL)offset;
- (void)setHasCsPagemode:(BOOL)pagemode;
- (void)setHasDtxFromBs:(BOOL)bs;
- (void)setHasEcsc:(BOOL)ecsc;
- (void)setHasEmergCallAllowed:(BOOL)allowed;
- (void)setHasGsmBand:(BOOL)band;
- (void)setHasHalfRateSupported:(BOOL)supported;
- (void)setHasLac:(BOOL)lac;
- (void)setHasMaxRetransCs:(BOOL)cs;
- (void)setHasMcc:(BOOL)mcc;
- (void)setHasMnc:(BOOL)mnc;
- (void)setHasMsTxpwr:(BOOL)txpwr;
- (void)setHasMultibRep:(BOOL)rep;
- (void)setHasPenaltyT:(BOOL)t;
- (void)setHasRadioLinkTimeout:(BOOL)timeout;
- (void)setHasReestAllowed:(BOOL)allowed;
- (void)setHasRxAccMin:(BOOL)min;
- (void)setHasSi2TerNeeded:(BOOL)needed;
- (void)setHasSi78Broadcast:(BOOL)broadcast;
- (void)setHasSubsId:(BOOL)id;
- (void)setHasT3212:(BOOL)t3212;
- (void)setHasTmpOffset:(BOOL)offset;
- (void)setHasTypeOfCurChan:(BOOL)chan;
- (void)writeTo:(id)to;
@end

@implementation KCellularGsmIdleConfig

- (void)setHasArfcnBcch:(BOOL)bcch
{
  v3 = 8;
  if (!bcch)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (void)setHasMcc:(BOOL)mcc
{
  v3 = 0x200000;
  if (!mcc)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setHasMnc:(BOOL)mnc
{
  v3 = 0x400000;
  if (!mnc)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)setHasLac:(BOOL)lac
{
  v3 = 0x80000;
  if (!lac)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setHasCi:(BOOL)ci
{
  v3 = 2048;
  if (!ci)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasBsic:(BOOL)bsic
{
  v3 = 64;
  if (!bsic)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setHasDtxFromBs:(BOOL)bs
{
  v3 = 0x4000;
  if (!bs)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasRadioLinkTimeout:(BOOL)timeout
{
  v3 = 0x4000000;
  if (!timeout)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasMultibRep:(BOOL)rep
{
  v3 = 0x1000000;
  if (!rep)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setHasGsmBand:(BOOL)band
{
  v3 = 0x20000;
  if (!band)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)setHasAccessTech:(BOOL)tech
{
  v3 = 4;
  if (!tech)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setHasTypeOfCurChan:(BOOL)chan
{
  v3 = 0x400000000;
  if (!chan)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)setHasMsTxpwr:(BOOL)txpwr
{
  v3 = 0x800000;
  if (!txpwr)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setHasRxAccMin:(BOOL)min
{
  v3 = 0x10000000;
  if (!min)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setHasCbq:(BOOL)cbq
{
  v3 = 1024;
  if (!cbq)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasCba:(BOOL)cba
{
  v3 = 256;
  if (!cba)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setHasC2Valid:(BOOL)valid
{
  v3 = 128;
  if (!valid)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setHasCrOffset:(BOOL)offset
{
  v3 = 4096;
  if (!offset)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setHasTmpOffset:(BOOL)offset
{
  v3 = 0x200000000;
  if (!offset)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setHasPenaltyT:(BOOL)t
{
  v3 = 0x2000000;
  if (!t)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasT3212:(BOOL)t3212
{
  v3 = &_mh_execute_header;
  if (!t3212)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasAcc:(BOOL)acc
{
  v3 = 2;
  if (!acc)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasBsPaMfrms:(BOOL)mfrms
{
  v3 = 32;
  if (!mfrms)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setHasCsPagemode:(BOOL)pagemode
{
  v3 = 0x2000;
  if (!pagemode)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setHasMaxRetransCs:(BOOL)cs
{
  v3 = 0x100000;
  if (!cs)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasEmergCallAllowed:(BOOL)allowed
{
  v3 = 0x10000;
  if (!allowed)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setHasAttachAllowed:(BOOL)allowed
{
  v3 = 16;
  if (!allowed)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setHasHalfRateSupported:(BOOL)supported
{
  v3 = 0x40000;
  if (!supported)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setHasSi78Broadcast:(BOOL)broadcast
{
  v3 = 0x40000000;
  if (!broadcast)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setHasCbchSupported:(BOOL)supported
{
  v3 = 512;
  if (!supported)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasReestAllowed:(BOOL)allowed
{
  v3 = 0x8000000;
  if (!allowed)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setHasEcsc:(BOOL)ecsc
{
  v3 = 0x8000;
  if (!ecsc)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setHasSi2TerNeeded:(BOOL)needed
{
  v3 = 0x20000000;
  if (!needed)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)setHasSubsId:(BOOL)id
{
  v3 = 0x80000000;
  if (!id)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = KCellularGsmIdleConfig;
  v3 = [(KCellularGsmIdleConfig *)&v7 description];
  dictionaryRepresentation = [(KCellularGsmIdleConfig *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (*&has)
  {
    v8 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v8 forKey:@"timestamp"];

    has = self->_has;
    if ((*&has & 8) == 0)
    {
LABEL_3:
      if ((*&has & 0x200000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  else if ((*&has & 8) == 0)
  {
    goto LABEL_3;
  }

  v9 = [NSNumber numberWithUnsignedInt:self->_arfcnBcch];
  [v3 setObject:v9 forKey:@"arfcn_bcch"];

  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_4:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_41;
  }

LABEL_40:
  v10 = [NSNumber numberWithUnsignedInt:self->_mcc];
  [v3 setObject:v10 forKey:@"mcc"];

  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_5:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

LABEL_41:
  v11 = [NSNumber numberWithUnsignedInt:self->_mnc];
  [v3 setObject:v11 forKey:@"mnc"];

  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_6:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_42:
  v12 = [NSNumber numberWithUnsignedInt:self->_lac];
  [v3 setObject:v12 forKey:@"lac"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_7:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_44;
  }

LABEL_43:
  v13 = [NSNumber numberWithUnsignedInt:self->_ci];
  [v3 setObject:v13 forKey:@"ci"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_8:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_45;
  }

LABEL_44:
  v14 = [NSNumber numberWithUnsignedInt:self->_bsic];
  [v3 setObject:v14 forKey:@"bsic"];

  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_9:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_46;
  }

LABEL_45:
  v15 = [NSNumber numberWithUnsignedInt:self->_dtxFromBs];
  [v3 setObject:v15 forKey:@"dtx_from_bs"];

  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_47;
  }

LABEL_46:
  v16 = [NSNumber numberWithUnsignedInt:self->_radioLinkTimeout];
  [v3 setObject:v16 forKey:@"radio_link_timeout"];

  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_48;
  }

LABEL_47:
  v17 = [NSNumber numberWithUnsignedInt:self->_multibRep];
  [v3 setObject:v17 forKey:@"multib_rep"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_12:
    if ((*&has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_49;
  }

LABEL_48:
  v18 = [NSNumber numberWithUnsignedInt:self->_gsmBand];
  [v3 setObject:v18 forKey:@"gsm_band"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_13:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_50;
  }

LABEL_49:
  v19 = [NSNumber numberWithUnsignedInt:self->_accessTech];
  [v3 setObject:v19 forKey:@"access_tech"];

  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_51;
  }

LABEL_50:
  v20 = [NSNumber numberWithUnsignedInt:self->_typeOfCurChan];
  [v3 setObject:v20 forKey:@"type_of_cur_chan"];

  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_15:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_52;
  }

LABEL_51:
  v21 = [NSNumber numberWithUnsignedInt:self->_msTxpwr];
  [v3 setObject:v21 forKey:@"ms_txpwr"];

  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_16:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_53;
  }

LABEL_52:
  v22 = [NSNumber numberWithUnsignedInt:self->_rxAccMin];
  [v3 setObject:v22 forKey:@"rx_acc_min"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_17:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_54;
  }

LABEL_53:
  v23 = [NSNumber numberWithUnsignedInt:self->_cbq];
  [v3 setObject:v23 forKey:@"cbq"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_18:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_55;
  }

LABEL_54:
  v24 = [NSNumber numberWithUnsignedInt:self->_cba];
  [v3 setObject:v24 forKey:@"cba"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_19:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_56;
  }

LABEL_55:
  v25 = [NSNumber numberWithUnsignedInt:self->_c2Valid];
  [v3 setObject:v25 forKey:@"c2_valid"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_20:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_57;
  }

LABEL_56:
  v26 = [NSNumber numberWithUnsignedInt:self->_crOffset];
  [v3 setObject:v26 forKey:@"cr_offset"];

  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_21:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_58;
  }

LABEL_57:
  v27 = [NSNumber numberWithUnsignedInt:self->_tmpOffset];
  [v3 setObject:v27 forKey:@"tmp_offset"];

  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_59;
  }

LABEL_58:
  v28 = [NSNumber numberWithUnsignedInt:self->_penaltyT];
  [v3 setObject:v28 forKey:@"penalty_t"];

  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_23:
    if ((*&has & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_60;
  }

LABEL_59:
  v29 = [NSNumber numberWithUnsignedInt:self->_t3212];
  [v3 setObject:v29 forKey:@"t3212"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_24:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_61;
  }

LABEL_60:
  v30 = [NSNumber numberWithUnsignedInt:self->_acc];
  [v3 setObject:v30 forKey:@"acc"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_25:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_62;
  }

LABEL_61:
  v31 = [NSNumber numberWithUnsignedInt:self->_bsPaMfrms];
  [v3 setObject:v31 forKey:@"bs_pa_mfrms"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_26:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_63;
  }

LABEL_62:
  v32 = [NSNumber numberWithUnsignedInt:self->_csPagemode];
  [v3 setObject:v32 forKey:@"cs_pagemode"];

  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_27:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_64;
  }

LABEL_63:
  v33 = [NSNumber numberWithUnsignedInt:self->_maxRetransCs];
  [v3 setObject:v33 forKey:@"max_retrans_cs"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_28:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_65;
  }

LABEL_64:
  v34 = [NSNumber numberWithUnsignedInt:self->_emergCallAllowed];
  [v3 setObject:v34 forKey:@"emerg_call_allowed"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_29:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_66;
  }

LABEL_65:
  v35 = [NSNumber numberWithUnsignedInt:self->_attachAllowed];
  [v3 setObject:v35 forKey:@"attach_allowed"];

  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_30:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_67;
  }

LABEL_66:
  v36 = [NSNumber numberWithUnsignedInt:self->_halfRateSupported];
  [v3 setObject:v36 forKey:@"half_rate_supported"];

  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_68;
  }

LABEL_67:
  v37 = [NSNumber numberWithUnsignedInt:self->_si78Broadcast];
  [v3 setObject:v37 forKey:@"si_7_8_broadcast"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_32:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_69;
  }

LABEL_68:
  v38 = [NSNumber numberWithUnsignedInt:self->_cbchSupported];
  [v3 setObject:v38 forKey:@"cbch_supported"];

  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_70;
  }

LABEL_69:
  v39 = [NSNumber numberWithUnsignedInt:self->_reestAllowed];
  [v3 setObject:v39 forKey:@"reest_allowed"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_34:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_71:
    v41 = [NSNumber numberWithUnsignedInt:self->_si2TerNeeded];
    [v3 setObject:v41 forKey:@"si_2_ter_needed"];

    if ((*&self->_has & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_70:
  v40 = [NSNumber numberWithUnsignedInt:self->_ecsc];
  [v3 setObject:v40 forKey:@"ecsc"];

  has = self->_has;
  if ((*&has & 0x20000000) != 0)
  {
    goto LABEL_71;
  }

LABEL_35:
  if ((*&has & 0x80000000) != 0)
  {
LABEL_36:
    v5 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v5 forKey:@"subs_id"];
  }

LABEL_37:
  v6 = v3;

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (*&has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 8) == 0)
    {
LABEL_3:
      if ((*&has & 0x200000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_42;
    }
  }

  else if ((*&has & 8) == 0)
  {
    goto LABEL_3;
  }

  arfcnBcch = self->_arfcnBcch;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_4:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

LABEL_42:
  mcc = self->_mcc;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_5:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

LABEL_43:
  mnc = self->_mnc;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_6:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_45;
  }

LABEL_44:
  lac = self->_lac;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_7:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_45:
  ci = self->_ci;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_8:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_47;
  }

LABEL_46:
  bsic = self->_bsic;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_9:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_48;
  }

LABEL_47:
  dtxFromBs = self->_dtxFromBs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_49;
  }

LABEL_48:
  radioLinkTimeout = self->_radioLinkTimeout;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_50;
  }

LABEL_49:
  multibRep = self->_multibRep;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_12:
    if ((*&has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_51;
  }

LABEL_50:
  gsmBand = self->_gsmBand;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_13:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_52;
  }

LABEL_51:
  accessTech = self->_accessTech;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_53;
  }

LABEL_52:
  typeOfCurChan = self->_typeOfCurChan;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_15:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_54;
  }

LABEL_53:
  msTxpwr = self->_msTxpwr;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_16:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_55;
  }

LABEL_54:
  rxAccMin = self->_rxAccMin;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_17:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_56;
  }

LABEL_55:
  cbq = self->_cbq;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_18:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_57;
  }

LABEL_56:
  cba = self->_cba;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_19:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_58;
  }

LABEL_57:
  c2Valid = self->_c2Valid;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_20:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_59;
  }

LABEL_58:
  crOffset = self->_crOffset;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_21:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_60;
  }

LABEL_59:
  tmpOffset = self->_tmpOffset;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_61;
  }

LABEL_60:
  penaltyT = self->_penaltyT;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_23:
    if ((*&has & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_62;
  }

LABEL_61:
  t3212 = self->_t3212;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_24:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_63;
  }

LABEL_62:
  acc = self->_acc;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_25:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_64;
  }

LABEL_63:
  bsPaMfrms = self->_bsPaMfrms;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_26:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_65;
  }

LABEL_64:
  csPagemode = self->_csPagemode;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_27:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_66;
  }

LABEL_65:
  maxRetransCs = self->_maxRetransCs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_28:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_67;
  }

LABEL_66:
  emergCallAllowed = self->_emergCallAllowed;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_29:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_68;
  }

LABEL_67:
  attachAllowed = self->_attachAllowed;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_30:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_69;
  }

LABEL_68:
  halfRateSupported = self->_halfRateSupported;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_70;
  }

LABEL_69:
  si78Broadcast = self->_si78Broadcast;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_32:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_71;
  }

LABEL_70:
  cbchSupported = self->_cbchSupported;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_72;
  }

LABEL_71:
  reestAllowed = self->_reestAllowed;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_34:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_73;
  }

LABEL_72:
  ecsc = self->_ecsc;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_35:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_73:
  si2TerNeeded = self->_si2TerNeeded;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x80000000) != 0)
  {
LABEL_36:
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
  }

LABEL_37:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (*&has)
  {
    toCopy[1] = self->_timestamp;
    toCopy[19] |= 1uLL;
    has = self->_has;
    if ((*&has & 8) == 0)
    {
LABEL_3:
      if ((*&has & 0x200000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_42;
    }
  }

  else if ((*&has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 6) = self->_arfcnBcch;
  toCopy[19] |= 8uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_4:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(toCopy + 24) = self->_mcc;
  toCopy[19] |= 0x200000uLL;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_5:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(toCopy + 25) = self->_mnc;
  toCopy[19] |= 0x400000uLL;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_6:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(toCopy + 22) = self->_lac;
  toCopy[19] |= 0x80000uLL;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_7:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(toCopy + 14) = self->_ci;
  toCopy[19] |= 0x800uLL;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_8:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(toCopy + 9) = self->_bsic;
  toCopy[19] |= 0x40uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_9:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(toCopy + 17) = self->_dtxFromBs;
  toCopy[19] |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(toCopy + 29) = self->_radioLinkTimeout;
  toCopy[19] |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(toCopy + 27) = self->_multibRep;
  toCopy[19] |= 0x1000000uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_12:
    if ((*&has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(toCopy + 20) = self->_gsmBand;
  toCopy[19] |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_13:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(toCopy + 5) = self->_accessTech;
  toCopy[19] |= 4uLL;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(toCopy + 37) = self->_typeOfCurChan;
  toCopy[19] |= 0x400000000uLL;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_15:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(toCopy + 26) = self->_msTxpwr;
  toCopy[19] |= 0x800000uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_16:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(toCopy + 31) = self->_rxAccMin;
  toCopy[19] |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_17:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(toCopy + 13) = self->_cbq;
  toCopy[19] |= 0x400uLL;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_18:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(toCopy + 11) = self->_cba;
  toCopy[19] |= 0x100uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_19:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(toCopy + 10) = self->_c2Valid;
  toCopy[19] |= 0x80uLL;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_20:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(toCopy + 15) = self->_crOffset;
  toCopy[19] |= 0x1000uLL;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_21:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(toCopy + 36) = self->_tmpOffset;
  toCopy[19] |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(toCopy + 28) = self->_penaltyT;
  toCopy[19] |= 0x2000000uLL;
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_23:
    if ((*&has & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(toCopy + 35) = self->_t3212;
  toCopy[19] |= &_mh_execute_header;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_24:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(toCopy + 4) = self->_acc;
  toCopy[19] |= 2uLL;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_25:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(toCopy + 8) = self->_bsPaMfrms;
  toCopy[19] |= 0x20uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_26:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(toCopy + 16) = self->_csPagemode;
  toCopy[19] |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_27:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(toCopy + 23) = self->_maxRetransCs;
  toCopy[19] |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_28:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(toCopy + 19) = self->_emergCallAllowed;
  toCopy[19] |= 0x10000uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_29:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(toCopy + 7) = self->_attachAllowed;
  toCopy[19] |= 0x10uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_30:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(toCopy + 21) = self->_halfRateSupported;
  toCopy[19] |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(toCopy + 33) = self->_si78Broadcast;
  toCopy[19] |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_32:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(toCopy + 12) = self->_cbchSupported;
  toCopy[19] |= 0x200uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(toCopy + 30) = self->_reestAllowed;
  toCopy[19] |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_34:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(toCopy + 18) = self->_ecsc;
  toCopy[19] |= 0x8000uLL;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_35:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_73:
  *(toCopy + 32) = self->_si2TerNeeded;
  toCopy[19] |= 0x20000000uLL;
  if ((*&self->_has & 0x80000000) != 0)
  {
LABEL_36:
    *(toCopy + 34) = self->_subsId;
    toCopy[19] |= 0x80000000uLL;
  }

LABEL_37:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (*&has)
  {
    v4[1] = self->_timestamp;
    v4[19] |= 1uLL;
    has = self->_has;
    if ((*&has & 8) == 0)
    {
LABEL_3:
      if ((*&has & 0x200000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  else if ((*&has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 6) = self->_arfcnBcch;
  v4[19] |= 8uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_4:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v4 + 24) = self->_mcc;
  v4[19] |= 0x200000uLL;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_5:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v4 + 25) = self->_mnc;
  v4[19] |= 0x400000uLL;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_6:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v4 + 22) = self->_lac;
  v4[19] |= 0x80000uLL;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_7:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v4 + 14) = self->_ci;
  v4[19] |= 0x800uLL;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_8:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v4 + 9) = self->_bsic;
  v4[19] |= 0x40uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_9:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v4 + 17) = self->_dtxFromBs;
  v4[19] |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v4 + 29) = self->_radioLinkTimeout;
  v4[19] |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v4 + 27) = self->_multibRep;
  v4[19] |= 0x1000000uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_12:
    if ((*&has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v4 + 20) = self->_gsmBand;
  v4[19] |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_13:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v4 + 5) = self->_accessTech;
  v4[19] |= 4uLL;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v4 + 37) = self->_typeOfCurChan;
  v4[19] |= 0x400000000uLL;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_15:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v4 + 26) = self->_msTxpwr;
  v4[19] |= 0x800000uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_16:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v4 + 31) = self->_rxAccMin;
  v4[19] |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_17:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v4 + 13) = self->_cbq;
  v4[19] |= 0x400uLL;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_18:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v4 + 11) = self->_cba;
  v4[19] |= 0x100uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_19:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(v4 + 10) = self->_c2Valid;
  v4[19] |= 0x80uLL;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_20:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v4 + 15) = self->_crOffset;
  v4[19] |= 0x1000uLL;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_21:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(v4 + 36) = self->_tmpOffset;
  v4[19] |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v4 + 28) = self->_penaltyT;
  v4[19] |= 0x2000000uLL;
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_23:
    if ((*&has & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(v4 + 35) = self->_t3212;
  v4[19] |= &_mh_execute_header;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_24:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(v4 + 4) = self->_acc;
  v4[19] |= 2uLL;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_25:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(v4 + 8) = self->_bsPaMfrms;
  v4[19] |= 0x20uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_26:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(v4 + 16) = self->_csPagemode;
  v4[19] |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_27:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(v4 + 23) = self->_maxRetransCs;
  v4[19] |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_28:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(v4 + 19) = self->_emergCallAllowed;
  v4[19] |= 0x10000uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_29:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(v4 + 7) = self->_attachAllowed;
  v4[19] |= 0x10uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_30:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(v4 + 21) = self->_halfRateSupported;
  v4[19] |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(v4 + 33) = self->_si78Broadcast;
  v4[19] |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_32:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(v4 + 12) = self->_cbchSupported;
  v4[19] |= 0x200uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(v4 + 30) = self->_reestAllowed;
  v4[19] |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_34:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_71:
    *(v4 + 32) = self->_si2TerNeeded;
    v4[19] |= 0x20000000uLL;
    if ((*&self->_has & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_70:
  *(v4 + 18) = self->_ecsc;
  v4[19] |= 0x8000uLL;
  has = self->_has;
  if ((*&has & 0x20000000) != 0)
  {
    goto LABEL_71;
  }

LABEL_35:
  if ((*&has & 0x80000000) != 0)
  {
LABEL_36:
    *(v4 + 34) = self->_subsId;
    v4[19] |= 0x80000000uLL;
  }

LABEL_37:
  v6 = v4;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_177;
  }

  has = self->_has;
  v6 = *(equalCopy + 19);
  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_177;
    }
  }

  else if (v6)
  {
LABEL_177:
    v7 = 0;
    goto LABEL_178;
  }

  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_arfcnBcch != *(equalCopy + 6))
    {
      goto LABEL_177;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_177;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v6 & 0x200000) == 0 || self->_mcc != *(equalCopy + 24))
    {
      goto LABEL_177;
    }
  }

  else if ((v6 & 0x200000) != 0)
  {
    goto LABEL_177;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v6 & 0x400000) == 0 || self->_mnc != *(equalCopy + 25))
    {
      goto LABEL_177;
    }
  }

  else if ((v6 & 0x400000) != 0)
  {
    goto LABEL_177;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v6 & 0x80000) == 0 || self->_lac != *(equalCopy + 22))
    {
      goto LABEL_177;
    }
  }

  else if ((v6 & 0x80000) != 0)
  {
    goto LABEL_177;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v6 & 0x800) == 0 || self->_ci != *(equalCopy + 14))
    {
      goto LABEL_177;
    }
  }

  else if ((v6 & 0x800) != 0)
  {
    goto LABEL_177;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_bsic != *(equalCopy + 9))
    {
      goto LABEL_177;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_177;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v6 & 0x4000) == 0 || self->_dtxFromBs != *(equalCopy + 17))
    {
      goto LABEL_177;
    }
  }

  else if ((v6 & 0x4000) != 0)
  {
    goto LABEL_177;
  }

  if ((*&has & 0x4000000) != 0)
  {
    if ((v6 & 0x4000000) == 0 || self->_radioLinkTimeout != *(equalCopy + 29))
    {
      goto LABEL_177;
    }
  }

  else if ((v6 & 0x4000000) != 0)
  {
    goto LABEL_177;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v6 & 0x1000000) == 0 || self->_multibRep != *(equalCopy + 27))
    {
      goto LABEL_177;
    }
  }

  else if ((v6 & 0x1000000) != 0)
  {
    goto LABEL_177;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v6 & 0x20000) == 0 || self->_gsmBand != *(equalCopy + 20))
    {
      goto LABEL_177;
    }
  }

  else if ((v6 & 0x20000) != 0)
  {
    goto LABEL_177;
  }

  if ((*&has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_accessTech != *(equalCopy + 5))
    {
      goto LABEL_177;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_177;
  }

  if ((*&has & 0x400000000) != 0)
  {
    if ((v6 & 0x400000000) == 0 || self->_typeOfCurChan != *(equalCopy + 37))
    {
      goto LABEL_177;
    }
  }

  else if ((v6 & 0x400000000) != 0)
  {
    goto LABEL_177;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v6 & 0x800000) == 0 || self->_msTxpwr != *(equalCopy + 26))
    {
      goto LABEL_177;
    }
  }

  else if ((v6 & 0x800000) != 0)
  {
    goto LABEL_177;
  }

  if ((*&has & 0x10000000) != 0)
  {
    if ((v6 & 0x10000000) == 0 || self->_rxAccMin != *(equalCopy + 31))
    {
      goto LABEL_177;
    }
  }

  else if ((v6 & 0x10000000) != 0)
  {
    goto LABEL_177;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_cbq != *(equalCopy + 13))
    {
      goto LABEL_177;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_177;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0 || self->_cba != *(equalCopy + 11))
    {
      goto LABEL_177;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_177;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_c2Valid != *(equalCopy + 10))
    {
      goto LABEL_177;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_177;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v6 & 0x1000) == 0 || self->_crOffset != *(equalCopy + 15))
    {
      goto LABEL_177;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
    goto LABEL_177;
  }

  if ((*&has & 0x200000000) != 0)
  {
    if ((v6 & 0x200000000) == 0 || self->_tmpOffset != *(equalCopy + 36))
    {
      goto LABEL_177;
    }
  }

  else if ((v6 & 0x200000000) != 0)
  {
    goto LABEL_177;
  }

  if ((*&has & 0x2000000) != 0)
  {
    if ((v6 & 0x2000000) == 0 || self->_penaltyT != *(equalCopy + 28))
    {
      goto LABEL_177;
    }
  }

  else if ((v6 & 0x2000000) != 0)
  {
    goto LABEL_177;
  }

  if ((*&has & 0x100000000) != 0)
  {
    if ((v6 & 0x100000000) == 0 || self->_t3212 != *(equalCopy + 35))
    {
      goto LABEL_177;
    }
  }

  else if ((v6 & 0x100000000) != 0)
  {
    goto LABEL_177;
  }

  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_acc != *(equalCopy + 4))
    {
      goto LABEL_177;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_177;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_bsPaMfrms != *(equalCopy + 8))
    {
      goto LABEL_177;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_177;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v6 & 0x2000) == 0 || self->_csPagemode != *(equalCopy + 16))
    {
      goto LABEL_177;
    }
  }

  else if ((v6 & 0x2000) != 0)
  {
    goto LABEL_177;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v6 & 0x100000) == 0 || self->_maxRetransCs != *(equalCopy + 23))
    {
      goto LABEL_177;
    }
  }

  else if ((v6 & 0x100000) != 0)
  {
    goto LABEL_177;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v6 & 0x10000) == 0 || self->_emergCallAllowed != *(equalCopy + 19))
    {
      goto LABEL_177;
    }
  }

  else if ((v6 & 0x10000) != 0)
  {
    goto LABEL_177;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_attachAllowed != *(equalCopy + 7))
    {
      goto LABEL_177;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_177;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v6 & 0x40000) == 0 || self->_halfRateSupported != *(equalCopy + 21))
    {
      goto LABEL_177;
    }
  }

  else if ((v6 & 0x40000) != 0)
  {
    goto LABEL_177;
  }

  if ((*&has & 0x40000000) != 0)
  {
    if ((v6 & 0x40000000) == 0 || self->_si78Broadcast != *(equalCopy + 33))
    {
      goto LABEL_177;
    }
  }

  else if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_177;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_cbchSupported != *(equalCopy + 12))
    {
      goto LABEL_177;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_177;
  }

  if ((*&has & 0x8000000) != 0)
  {
    if ((v6 & 0x8000000) == 0 || self->_reestAllowed != *(equalCopy + 30))
    {
      goto LABEL_177;
    }
  }

  else if ((v6 & 0x8000000) != 0)
  {
    goto LABEL_177;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v6 & 0x8000) == 0 || self->_ecsc != *(equalCopy + 18))
    {
      goto LABEL_177;
    }
  }

  else if ((v6 & 0x8000) != 0)
  {
    goto LABEL_177;
  }

  if ((*&has & 0x20000000) != 0)
  {
    if ((v6 & 0x20000000) == 0 || self->_si2TerNeeded != *(equalCopy + 32))
    {
      goto LABEL_177;
    }
  }

  else if ((v6 & 0x20000000) != 0)
  {
    goto LABEL_177;
  }

  if ((*&has & 0x80000000) != 0)
  {
    if ((v6 & 0x80000000) == 0 || self->_subsId != *(equalCopy + 34))
    {
      goto LABEL_177;
    }

    v7 = 1;
  }

  else
  {
    v7 = v6 >= 0;
  }

LABEL_178:

  return v7;
}

- (unint64_t)hash
{
  has = self->_has;
  if (*&has)
  {
    v38 = 2654435761u * self->_timestamp;
    if ((*&has & 8) != 0)
    {
LABEL_3:
      v37 = 2654435761 * self->_arfcnBcch;
      if ((*&has & 0x200000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
    }
  }

  else
  {
    v38 = 0;
    if ((*&has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v37 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_4:
    v36 = 2654435761 * self->_mcc;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

LABEL_39:
  v36 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_5:
    v35 = 2654435761 * self->_mnc;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_41;
  }

LABEL_40:
  v35 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_6:
    v34 = 2654435761 * self->_lac;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

LABEL_41:
  v34 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_7:
    v33 = 2654435761 * self->_ci;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

LABEL_42:
  v33 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_8:
    v32 = 2654435761 * self->_bsic;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

LABEL_43:
  v32 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_9:
    v31 = 2654435761 * self->_dtxFromBs;
    if ((*&has & 0x4000000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_45;
  }

LABEL_44:
  v31 = 0;
  if ((*&has & 0x4000000) != 0)
  {
LABEL_10:
    v30 = 2654435761 * self->_radioLinkTimeout;
    if ((*&has & 0x1000000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_46;
  }

LABEL_45:
  v30 = 0;
  if ((*&has & 0x1000000) != 0)
  {
LABEL_11:
    v3 = 2654435761 * self->_multibRep;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_47;
  }

LABEL_46:
  v3 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_12:
    v4 = 2654435761 * self->_gsmBand;
    if ((*&has & 4) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_48;
  }

LABEL_47:
  v4 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_13:
    v5 = 2654435761 * self->_accessTech;
    if ((*&has & 0x400000000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_49;
  }

LABEL_48:
  v5 = 0;
  if ((*&has & 0x400000000) != 0)
  {
LABEL_14:
    v6 = 2654435761 * self->_typeOfCurChan;
    if ((*&has & 0x800000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_50;
  }

LABEL_49:
  v6 = 0;
  if ((*&has & 0x800000) != 0)
  {
LABEL_15:
    v7 = 2654435761 * self->_msTxpwr;
    if ((*&has & 0x10000000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_51;
  }

LABEL_50:
  v7 = 0;
  if ((*&has & 0x10000000) != 0)
  {
LABEL_16:
    v8 = 2654435761 * self->_rxAccMin;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_52;
  }

LABEL_51:
  v8 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_17:
    v9 = 2654435761 * self->_cbq;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_53;
  }

LABEL_52:
  v9 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_18:
    v10 = 2654435761 * self->_cba;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_54;
  }

LABEL_53:
  v10 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_19:
    v11 = 2654435761 * self->_c2Valid;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_55;
  }

LABEL_54:
  v11 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_20:
    v12 = 2654435761 * self->_crOffset;
    if ((*&has & 0x200000000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_56;
  }

LABEL_55:
  v12 = 0;
  if ((*&has & 0x200000000) != 0)
  {
LABEL_21:
    v13 = 2654435761 * self->_tmpOffset;
    if ((*&has & 0x2000000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_57;
  }

LABEL_56:
  v13 = 0;
  if ((*&has & 0x2000000) != 0)
  {
LABEL_22:
    v14 = 2654435761 * self->_penaltyT;
    if ((*&has & 0x100000000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_58;
  }

LABEL_57:
  v14 = 0;
  if ((*&has & 0x100000000) != 0)
  {
LABEL_23:
    v15 = 2654435761 * self->_t3212;
    if ((*&has & 2) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_59;
  }

LABEL_58:
  v15 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_24:
    v16 = 2654435761 * self->_acc;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_60;
  }

LABEL_59:
  v16 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_25:
    v17 = 2654435761 * self->_bsPaMfrms;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_61;
  }

LABEL_60:
  v17 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_26:
    v18 = 2654435761 * self->_csPagemode;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_62;
  }

LABEL_61:
  v18 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_27:
    v19 = 2654435761 * self->_maxRetransCs;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_63;
  }

LABEL_62:
  v19 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_28:
    v20 = 2654435761 * self->_emergCallAllowed;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_64;
  }

LABEL_63:
  v20 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_29:
    v21 = 2654435761 * self->_attachAllowed;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_65;
  }

LABEL_64:
  v21 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_30:
    v22 = 2654435761 * self->_halfRateSupported;
    if ((*&has & 0x40000000) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_66;
  }

LABEL_65:
  v22 = 0;
  if ((*&has & 0x40000000) != 0)
  {
LABEL_31:
    v23 = 2654435761 * self->_si78Broadcast;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_67;
  }

LABEL_66:
  v23 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_32:
    v24 = 2654435761 * self->_cbchSupported;
    if ((*&has & 0x8000000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_68;
  }

LABEL_67:
  v24 = 0;
  if ((*&has & 0x8000000) != 0)
  {
LABEL_33:
    v25 = 2654435761 * self->_reestAllowed;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_69;
  }

LABEL_68:
  v25 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_34:
    v26 = 2654435761 * self->_ecsc;
    if ((*&has & 0x20000000) != 0)
    {
      goto LABEL_35;
    }

LABEL_70:
    v27 = 0;
    if ((*&has & 0x80000000) != 0)
    {
      goto LABEL_36;
    }

LABEL_71:
    v28 = 0;
    return v37 ^ v38 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28;
  }

LABEL_69:
  v26 = 0;
  if ((*&has & 0x20000000) == 0)
  {
    goto LABEL_70;
  }

LABEL_35:
  v27 = 2654435761 * self->_si2TerNeeded;
  if ((*&has & 0x80000000) == 0)
  {
    goto LABEL_71;
  }

LABEL_36:
  v28 = 2654435761 * self->_subsId;
  return v37 ^ v38 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 19);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1uLL;
    v5 = *(fromCopy + 19);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x200000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_42;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_arfcnBcch = *(fromCopy + 6);
  *&self->_has |= 8uLL;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x200000) == 0)
  {
LABEL_4:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_mcc = *(fromCopy + 24);
  *&self->_has |= 0x200000uLL;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x400000) == 0)
  {
LABEL_5:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_mnc = *(fromCopy + 25);
  *&self->_has |= 0x400000uLL;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x80000) == 0)
  {
LABEL_6:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_lac = *(fromCopy + 22);
  *&self->_has |= 0x80000uLL;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x800) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_ci = *(fromCopy + 14);
  *&self->_has |= 0x800uLL;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_bsic = *(fromCopy + 9);
  *&self->_has |= 0x40uLL;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x4000) == 0)
  {
LABEL_9:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_dtxFromBs = *(fromCopy + 17);
  *&self->_has |= 0x4000uLL;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_10:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_radioLinkTimeout = *(fromCopy + 29);
  *&self->_has |= 0x4000000uLL;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_11:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_multibRep = *(fromCopy + 27);
  *&self->_has |= 0x1000000uLL;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x20000) == 0)
  {
LABEL_12:
    if ((v5 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_gsmBand = *(fromCopy + 20);
  *&self->_has |= 0x20000uLL;
  v5 = *(fromCopy + 19);
  if ((v5 & 4) == 0)
  {
LABEL_13:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_accessTech = *(fromCopy + 5);
  *&self->_has |= 4uLL;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x400000000) == 0)
  {
LABEL_14:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_typeOfCurChan = *(fromCopy + 37);
  *&self->_has |= 0x400000000uLL;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x800000) == 0)
  {
LABEL_15:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_msTxpwr = *(fromCopy + 26);
  *&self->_has |= 0x800000uLL;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_16:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_rxAccMin = *(fromCopy + 31);
  *&self->_has |= 0x10000000uLL;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x400) == 0)
  {
LABEL_17:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_cbq = *(fromCopy + 13);
  *&self->_has |= 0x400uLL;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x100) == 0)
  {
LABEL_18:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_cba = *(fromCopy + 11);
  *&self->_has |= 0x100uLL;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x80) == 0)
  {
LABEL_19:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_c2Valid = *(fromCopy + 10);
  *&self->_has |= 0x80uLL;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x1000) == 0)
  {
LABEL_20:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_crOffset = *(fromCopy + 15);
  *&self->_has |= 0x1000uLL;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x200000000) == 0)
  {
LABEL_21:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_tmpOffset = *(fromCopy + 36);
  *&self->_has |= 0x200000000uLL;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_22:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_61;
  }

LABEL_60:
  self->_penaltyT = *(fromCopy + 28);
  *&self->_has |= 0x2000000uLL;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_23:
    if ((v5 & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_62;
  }

LABEL_61:
  self->_t3212 = *(fromCopy + 35);
  *&self->_has |= &_mh_execute_header;
  v5 = *(fromCopy + 19);
  if ((v5 & 2) == 0)
  {
LABEL_24:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_63;
  }

LABEL_62:
  self->_acc = *(fromCopy + 4);
  *&self->_has |= 2uLL;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x20) == 0)
  {
LABEL_25:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_64;
  }

LABEL_63:
  self->_bsPaMfrms = *(fromCopy + 8);
  *&self->_has |= 0x20uLL;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x2000) == 0)
  {
LABEL_26:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_65;
  }

LABEL_64:
  self->_csPagemode = *(fromCopy + 16);
  *&self->_has |= 0x2000uLL;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x100000) == 0)
  {
LABEL_27:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_66;
  }

LABEL_65:
  self->_maxRetransCs = *(fromCopy + 23);
  *&self->_has |= 0x100000uLL;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x10000) == 0)
  {
LABEL_28:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_67;
  }

LABEL_66:
  self->_emergCallAllowed = *(fromCopy + 19);
  *&self->_has |= 0x10000uLL;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x10) == 0)
  {
LABEL_29:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_68;
  }

LABEL_67:
  self->_attachAllowed = *(fromCopy + 7);
  *&self->_has |= 0x10uLL;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x40000) == 0)
  {
LABEL_30:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_69;
  }

LABEL_68:
  self->_halfRateSupported = *(fromCopy + 21);
  *&self->_has |= 0x40000uLL;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_31:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_70;
  }

LABEL_69:
  self->_si78Broadcast = *(fromCopy + 33);
  *&self->_has |= 0x40000000uLL;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x200) == 0)
  {
LABEL_32:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_71;
  }

LABEL_70:
  self->_cbchSupported = *(fromCopy + 12);
  *&self->_has |= 0x200uLL;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_33:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_72;
  }

LABEL_71:
  self->_reestAllowed = *(fromCopy + 30);
  *&self->_has |= 0x8000000uLL;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x8000) == 0)
  {
LABEL_34:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_73;
  }

LABEL_72:
  self->_ecsc = *(fromCopy + 18);
  *&self->_has |= 0x8000uLL;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_35:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_73:
  self->_si2TerNeeded = *(fromCopy + 32);
  *&self->_has |= 0x20000000uLL;
  if ((*(fromCopy + 19) & 0x80000000) != 0)
  {
LABEL_36:
    self->_subsId = *(fromCopy + 34);
    *&self->_has |= 0x80000000uLL;
  }

LABEL_37:
}

@end