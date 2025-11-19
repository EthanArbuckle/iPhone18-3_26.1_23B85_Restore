@interface KCellularWcdmaSelReselCellInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDuplexMode:(id)a3;
- (int)duplexMode;
- (unint64_t)hash;
- (unsigned)multiBandInfoAtIndex:(unint64_t)a3;
- (void)addEutraPrioInfo:(id)a3;
- (void)addGsmPrioInfo:(id)a3;
- (void)addUtraPrioInfo:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasCellBarred:(BOOL)a3;
- (void)setHasDuplexMode:(BOOL)a3;
- (void)setHasEdchCapable:(BOOL)a3;
- (void)setHasFachMeasOccInfoPresent:(BOOL)a3;
- (void)setHasHsdpaCapable:(BOOL)a3;
- (void)setHasImsEmergencySupport:(BOOL)a3;
- (void)setHasSCellPrio:(BOOL)a3;
- (void)setHasSIntersearch:(BOOL)a3;
- (void)setHasSIntrasearch:(BOOL)a3;
- (void)setHasSQual:(BOOL)a3;
- (void)setHasSRxlev:(BOOL)a3;
- (void)setHasSSearchRat:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation KCellularWcdmaSelReselCellInfo

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = KCellularWcdmaSelReselCellInfo;
  [(KCellularWcdmaSelReselCellInfo *)&v3 dealloc];
}

- (void)setHasHsdpaCapable:(BOOL)a3
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

- (void)setHasEdchCapable:(BOOL)a3
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

- (int)duplexMode
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_duplexMode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDuplexMode:(BOOL)a3
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

- (int)StringAsDuplexMode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"FDD"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"TDD"];
  }

  return v4;
}

- (unsigned)multiBandInfoAtIndex:(unint64_t)a3
{
  p_multiBandInfos = &self->_multiBandInfos;
  count = self->_multiBandInfos.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_multiBandInfos->list[a3];
}

- (void)setHasImsEmergencySupport:(BOOL)a3
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

- (void)setHasCellBarred:(BOOL)a3
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

- (void)setHasFachMeasOccInfoPresent:(BOOL)a3
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

- (void)setHasSRxlev:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasSQual:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasSIntrasearch:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasSIntersearch:(BOOL)a3
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

- (void)setHasSSearchRat:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasSCellPrio:(BOOL)a3
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

- (void)addEutraPrioInfo:(id)a3
{
  v4 = a3;
  eutraPrioInfos = self->_eutraPrioInfos;
  v8 = v4;
  if (!eutraPrioInfos)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_eutraPrioInfos;
    self->_eutraPrioInfos = v6;

    v4 = v8;
    eutraPrioInfos = self->_eutraPrioInfos;
  }

  [(NSMutableArray *)eutraPrioInfos addObject:v4];
}

- (void)addUtraPrioInfo:(id)a3
{
  v4 = a3;
  utraPrioInfos = self->_utraPrioInfos;
  v8 = v4;
  if (!utraPrioInfos)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_utraPrioInfos;
    self->_utraPrioInfos = v6;

    v4 = v8;
    utraPrioInfos = self->_utraPrioInfos;
  }

  [(NSMutableArray *)utraPrioInfos addObject:v4];
}

- (void)addGsmPrioInfo:(id)a3
{
  v4 = a3;
  gsmPrioInfos = self->_gsmPrioInfos;
  v8 = v4;
  if (!gsmPrioInfos)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_gsmPrioInfos;
    self->_gsmPrioInfos = v6;

    v4 = v8;
    gsmPrioInfos = self->_gsmPrioInfos;
  }

  [(NSMutableArray *)gsmPrioInfos addObject:v4];
}

- (void)setHasSubsId:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = KCellularWcdmaSelReselCellInfo;
  v3 = [(KCellularWcdmaSelReselCellInfo *)&v7 description];
  v4 = [(KCellularWcdmaSelReselCellInfo *)self dictionaryRepresentation];
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
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v6 = [NSNumber numberWithUnsignedInt:self->_hsdpaCapable];
  [v3 setObject:v6 forKey:@"hsdpa_capable"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

LABEL_8:
  v7 = [NSNumber numberWithUnsignedInt:self->_edchCapable];
  [v3 setObject:v7 forKey:@"edch_capable"];

  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  duplexMode = self->_duplexMode;
  if (duplexMode)
  {
    if (duplexMode == 1)
    {
      v9 = @"TDD";
    }

    else
    {
      v9 = [NSString stringWithFormat:@"(unknown: %i)", self->_duplexMode];
    }
  }

  else
  {
    v9 = @"FDD";
  }

  [v3 setObject:v9 forKey:@"duplex_mode"];

LABEL_15:
  v10 = PBRepeatedUInt32NSArray();
  [v3 setObject:v10 forKey:@"multi_band_info"];

  v11 = self->_has;
  if ((v11 & 0x40) != 0)
  {
    v36 = [NSNumber numberWithUnsignedInt:self->_imsEmergencySupport];
    [v3 setObject:v36 forKey:@"ims_emergency_support"];

    v11 = self->_has;
    if ((v11 & 2) == 0)
    {
LABEL_17:
      if ((v11 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_59;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_17;
  }

  v37 = [NSNumber numberWithUnsignedInt:self->_cellBarred];
  [v3 setObject:v37 forKey:@"cell_barred"];

  v11 = self->_has;
  if ((v11 & 0x10) == 0)
  {
LABEL_18:
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_60;
  }

LABEL_59:
  v38 = [NSNumber numberWithUnsignedInt:self->_fachMeasOccInfoPresent];
  [v3 setObject:v38 forKey:@"fach_meas_occ_info_present"];

  v11 = self->_has;
  if ((v11 & 0x800) == 0)
  {
LABEL_19:
    if ((v11 & 0x400) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_61;
  }

LABEL_60:
  v39 = [NSNumber numberWithInt:self->_sRxlev];
  [v3 setObject:v39 forKey:@"s_rxlev"];

  v11 = self->_has;
  if ((v11 & 0x400) == 0)
  {
LABEL_20:
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_62;
  }

LABEL_61:
  v40 = [NSNumber numberWithInt:self->_sQual];
  [v3 setObject:v40 forKey:@"s_qual"];

  v11 = self->_has;
  if ((v11 & 0x200) == 0)
  {
LABEL_21:
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_63;
  }

LABEL_62:
  v41 = [NSNumber numberWithInt:self->_sIntrasearch];
  [v3 setObject:v41 forKey:@"s_intrasearch"];

  v11 = self->_has;
  if ((v11 & 0x100) == 0)
  {
LABEL_22:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_64;
  }

LABEL_63:
  v42 = [NSNumber numberWithInt:self->_sIntersearch];
  [v3 setObject:v42 forKey:@"s_intersearch"];

  v11 = self->_has;
  if ((v11 & 0x1000) == 0)
  {
LABEL_23:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_64:
  v43 = [NSNumber numberWithInt:self->_sSearchRat];
  [v3 setObject:v43 forKey:@"s_search_rat"];

  if ((*&self->_has & 0x80) != 0)
  {
LABEL_24:
    v12 = [NSNumber numberWithUnsignedInt:self->_sCellPrio];
    [v3 setObject:v12 forKey:@"s_cell_prio"];
  }

LABEL_25:
  if ([(NSMutableArray *)self->_eutraPrioInfos count])
  {
    v13 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_eutraPrioInfos, "count")}];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v14 = self->_eutraPrioInfos;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v53;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v53 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v52 + 1) + 8 * i) dictionaryRepresentation];
          [v13 addObject:v19];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v52 objects:v58 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKey:@"eutra_prio_info"];
  }

  if ([(NSMutableArray *)self->_utraPrioInfos count])
  {
    v20 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_utraPrioInfos, "count")}];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v21 = self->_utraPrioInfos;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v48 objects:v57 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v49;
      do
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v49 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [*(*(&v48 + 1) + 8 * j) dictionaryRepresentation];
          [v20 addObject:v26];
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v48 objects:v57 count:16];
      }

      while (v23);
    }

    [v3 setObject:v20 forKey:@"utra_prio_info"];
  }

  if ([(NSMutableArray *)self->_gsmPrioInfos count])
  {
    v27 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_gsmPrioInfos, "count")}];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v28 = self->_gsmPrioInfos;
    v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v44 objects:v56 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v45;
      do
      {
        for (k = 0; k != v30; k = k + 1)
        {
          if (*v45 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = [*(*(&v44 + 1) + 8 * k) dictionaryRepresentation];
          [v27 addObject:v33];
        }

        v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v44 objects:v56 count:16];
      }

      while (v30);
    }

    [v3 setObject:v27 forKey:@"gsm_prio_info"];
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    v34 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v34 forKey:@"subs_id"];
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
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_47;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  hsdpaCapable = self->_hsdpaCapable;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_47:
  edchCapable = self->_edchCapable;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    duplexMode = self->_duplexMode;
    PBDataWriterWriteInt32Field();
  }

LABEL_6:
  if (self->_multiBandInfos.count)
  {
    v53 = 0;
    PBDataWriterPlaceMark();
    if (self->_multiBandInfos.count)
    {
      v7 = 0;
      do
      {
        v8 = self->_multiBandInfos.list[v7];
        PBDataWriterWriteUint32Field();
        ++v7;
      }

      while (v7 < self->_multiBandInfos.count);
    }

    PBDataWriterRecallMark();
  }

  v9 = self->_has;
  if ((v9 & 0x40) != 0)
  {
    imsEmergencySupport = self->_imsEmergencySupport;
    PBDataWriterWriteUint32Field();
    v9 = self->_has;
    if ((v9 & 2) == 0)
    {
LABEL_13:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_51;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_13;
  }

  cellBarred = self->_cellBarred;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((v9 & 0x10) == 0)
  {
LABEL_14:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_52;
  }

LABEL_51:
  fachMeasOccInfoPresent = self->_fachMeasOccInfoPresent;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((v9 & 0x800) == 0)
  {
LABEL_15:
    if ((v9 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_53;
  }

LABEL_52:
  sRxlev = self->_sRxlev;
  PBDataWriterWriteSint32Field();
  v9 = self->_has;
  if ((v9 & 0x400) == 0)
  {
LABEL_16:
    if ((v9 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_54;
  }

LABEL_53:
  sQual = self->_sQual;
  PBDataWriterWriteSint32Field();
  v9 = self->_has;
  if ((v9 & 0x200) == 0)
  {
LABEL_17:
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_55;
  }

LABEL_54:
  sIntrasearch = self->_sIntrasearch;
  PBDataWriterWriteSint32Field();
  v9 = self->_has;
  if ((v9 & 0x100) == 0)
  {
LABEL_18:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_56;
  }

LABEL_55:
  sIntersearch = self->_sIntersearch;
  PBDataWriterWriteSint32Field();
  v9 = self->_has;
  if ((v9 & 0x1000) == 0)
  {
LABEL_19:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_56:
  sSearchRat = self->_sSearchRat;
  PBDataWriterWriteSint32Field();
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_20:
    sCellPrio = self->_sCellPrio;
    PBDataWriterWriteUint32Field();
  }

LABEL_21:
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v11 = self->_eutraPrioInfos;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v49 objects:v56 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v50;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v50 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v49 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v49 objects:v56 count:16];
    }

    while (v13);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v17 = self->_utraPrioInfos;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v45 objects:v55 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v46;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v46 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v45 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v45 objects:v55 count:16];
    }

    while (v19);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v23 = self->_gsmPrioInfos;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v41 objects:v54 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v42;
    do
    {
      for (k = 0; k != v25; k = k + 1)
      {
        if (*v42 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v41 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v41 objects:v54 count:16];
    }

    while (v25);
  }

  if ((*&self->_has & 0x2000) != 0)
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
    v4[4] = self->_timestamp;
    *(v4 + 64) |= 1u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_39:
      *(v4 + 12) = self->_edchCapable;
      *(v4 + 64) |= 8u;
      if ((*&self->_has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 20) = self->_hsdpaCapable;
  *(v4 + 64) |= 0x20u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_39;
  }

LABEL_4:
  if ((has & 4) != 0)
  {
LABEL_5:
    *(v4 + 11) = self->_duplexMode;
    *(v4 + 64) |= 4u;
  }

LABEL_6:
  v22 = v4;
  if ([(KCellularWcdmaSelReselCellInfo *)self multiBandInfosCount])
  {
    [v22 clearMultiBandInfos];
    v6 = [(KCellularWcdmaSelReselCellInfo *)self multiBandInfosCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [v22 addMultiBandInfo:{-[KCellularWcdmaSelReselCellInfo multiBandInfoAtIndex:](self, "multiBandInfoAtIndex:", i)}];
      }
    }
  }

  v9 = self->_has;
  if ((v9 & 0x40) != 0)
  {
    *(v22 + 21) = self->_imsEmergencySupport;
    *(v22 + 64) |= 0x40u;
    v9 = self->_has;
    if ((v9 & 2) == 0)
    {
LABEL_12:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_43;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_12;
  }

  *(v22 + 10) = self->_cellBarred;
  *(v22 + 64) |= 2u;
  v9 = self->_has;
  if ((v9 & 0x10) == 0)
  {
LABEL_13:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v22 + 16) = self->_fachMeasOccInfoPresent;
  *(v22 + 64) |= 0x10u;
  v9 = self->_has;
  if ((v9 & 0x800) == 0)
  {
LABEL_14:
    if ((v9 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v22 + 26) = self->_sRxlev;
  *(v22 + 64) |= 0x800u;
  v9 = self->_has;
  if ((v9 & 0x400) == 0)
  {
LABEL_15:
    if ((v9 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v22 + 25) = self->_sQual;
  *(v22 + 64) |= 0x400u;
  v9 = self->_has;
  if ((v9 & 0x200) == 0)
  {
LABEL_16:
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v22 + 24) = self->_sIntrasearch;
  *(v22 + 64) |= 0x200u;
  v9 = self->_has;
  if ((v9 & 0x100) == 0)
  {
LABEL_17:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

LABEL_48:
    *(v22 + 27) = self->_sSearchRat;
    *(v22 + 64) |= 0x1000u;
    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_47:
  *(v22 + 23) = self->_sIntersearch;
  *(v22 + 64) |= 0x100u;
  v9 = self->_has;
  if ((v9 & 0x1000) != 0)
  {
    goto LABEL_48;
  }

LABEL_18:
  if ((v9 & 0x80) != 0)
  {
LABEL_19:
    *(v22 + 22) = self->_sCellPrio;
    *(v22 + 64) |= 0x80u;
  }

LABEL_20:
  if ([(KCellularWcdmaSelReselCellInfo *)self eutraPrioInfosCount])
  {
    [v22 clearEutraPrioInfos];
    v10 = [(KCellularWcdmaSelReselCellInfo *)self eutraPrioInfosCount];
    if (v10)
    {
      v11 = v10;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(KCellularWcdmaSelReselCellInfo *)self eutraPrioInfoAtIndex:j];
        [v22 addEutraPrioInfo:v13];
      }
    }
  }

  if ([(KCellularWcdmaSelReselCellInfo *)self utraPrioInfosCount])
  {
    [v22 clearUtraPrioInfos];
    v14 = [(KCellularWcdmaSelReselCellInfo *)self utraPrioInfosCount];
    if (v14)
    {
      v15 = v14;
      for (k = 0; k != v15; ++k)
      {
        v17 = [(KCellularWcdmaSelReselCellInfo *)self utraPrioInfoAtIndex:k];
        [v22 addUtraPrioInfo:v17];
      }
    }
  }

  if ([(KCellularWcdmaSelReselCellInfo *)self gsmPrioInfosCount])
  {
    [v22 clearGsmPrioInfos];
    v18 = [(KCellularWcdmaSelReselCellInfo *)self gsmPrioInfosCount];
    if (v18)
    {
      v19 = v18;
      for (m = 0; m != v19; ++m)
      {
        v21 = [(KCellularWcdmaSelReselCellInfo *)self gsmPrioInfoAtIndex:m];
        [v22 addGsmPrioInfo:v21];
      }
    }
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    *(v22 + 28) = self->_subsId;
    *(v22 + 64) |= 0x2000u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    v5[4] = self->_timestamp;
    *(v5 + 64) |= 1u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_42;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 20) = self->_hsdpaCapable;
  *(v5 + 64) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_42:
  *(v5 + 12) = self->_edchCapable;
  *(v5 + 64) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    *(v5 + 11) = self->_duplexMode;
    *(v5 + 64) |= 4u;
  }

LABEL_6:
  PBRepeatedUInt32Copy();
  v8 = self->_has;
  if ((v8 & 0x40) != 0)
  {
    v6[21] = self->_imsEmergencySupport;
    *(v6 + 64) |= 0x40u;
    v8 = self->_has;
    if ((v8 & 2) == 0)
    {
LABEL_8:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_46;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_8;
  }

  v6[10] = self->_cellBarred;
  *(v6 + 64) |= 2u;
  v8 = self->_has;
  if ((v8 & 0x10) == 0)
  {
LABEL_9:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_47;
  }

LABEL_46:
  v6[16] = self->_fachMeasOccInfoPresent;
  *(v6 + 64) |= 0x10u;
  v8 = self->_has;
  if ((v8 & 0x800) == 0)
  {
LABEL_10:
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_47:
  v6[26] = self->_sRxlev;
  *(v6 + 64) |= 0x800u;
  v8 = self->_has;
  if ((v8 & 0x400) == 0)
  {
LABEL_11:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_49;
  }

LABEL_48:
  v6[25] = self->_sQual;
  *(v6 + 64) |= 0x400u;
  v8 = self->_has;
  if ((v8 & 0x200) == 0)
  {
LABEL_12:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

LABEL_49:
  v6[24] = self->_sIntrasearch;
  *(v6 + 64) |= 0x200u;
  v8 = self->_has;
  if ((v8 & 0x100) == 0)
  {
LABEL_13:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

LABEL_50:
  v6[23] = self->_sIntersearch;
  *(v6 + 64) |= 0x100u;
  v8 = self->_has;
  if ((v8 & 0x1000) == 0)
  {
LABEL_14:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_51:
  v6[27] = self->_sSearchRat;
  *(v6 + 64) |= 0x1000u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_15:
    v6[22] = self->_sCellPrio;
    *(v6 + 64) |= 0x80u;
  }

LABEL_16:
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = self->_eutraPrioInfos;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v37;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v36 + 1) + 8 * i) copyWithZone:a3];
        [v6 addEutraPrioInfo:v14];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v11);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v15 = self->_utraPrioInfos;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v33;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v32 + 1) + 8 * j) copyWithZone:a3];
        [v6 addUtraPrioInfo:v20];
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v17);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v21 = self->_gsmPrioInfos;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v29;
    do
    {
      for (k = 0; k != v23; k = k + 1)
      {
        if (*v29 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v28 + 1) + 8 * k) copyWithZone:{a3, v28}];
        [v6 addGsmPrioInfo:v26];
      }

      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v23);
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    v6[28] = self->_subsId;
    *(v6 + 64) |= 0x2000u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_79;
  }

  has = self->_has;
  v6 = *(v4 + 64);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(v4 + 4))
    {
      goto LABEL_79;
    }
  }

  else if (v6)
  {
    goto LABEL_79;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_hsdpaCapable != *(v4 + 20))
    {
      goto LABEL_79;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_79;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_edchCapable != *(v4 + 12))
    {
      goto LABEL_79;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_79;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_duplexMode != *(v4 + 11))
    {
      goto LABEL_79;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_79;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
LABEL_79:
    v12 = 0;
    goto LABEL_80;
  }

  v7 = self->_has;
  v8 = *(v4 + 64);
  if ((v7 & 0x40) != 0)
  {
    if ((v8 & 0x40) == 0 || self->_imsEmergencySupport != *(v4 + 21))
    {
      goto LABEL_79;
    }
  }

  else if ((v8 & 0x40) != 0)
  {
    goto LABEL_79;
  }

  if ((v7 & 2) != 0)
  {
    if ((v8 & 2) == 0 || self->_cellBarred != *(v4 + 10))
    {
      goto LABEL_79;
    }
  }

  else if ((v8 & 2) != 0)
  {
    goto LABEL_79;
  }

  if ((v7 & 0x10) != 0)
  {
    if ((v8 & 0x10) == 0 || self->_fachMeasOccInfoPresent != *(v4 + 16))
    {
      goto LABEL_79;
    }
  }

  else if ((v8 & 0x10) != 0)
  {
    goto LABEL_79;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(v4 + 64) & 0x800) == 0 || self->_sRxlev != *(v4 + 26))
    {
      goto LABEL_79;
    }
  }

  else if ((*(v4 + 64) & 0x800) != 0)
  {
    goto LABEL_79;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(v4 + 64) & 0x400) == 0 || self->_sQual != *(v4 + 25))
    {
      goto LABEL_79;
    }
  }

  else if ((*(v4 + 64) & 0x400) != 0)
  {
    goto LABEL_79;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 64) & 0x200) == 0 || self->_sIntrasearch != *(v4 + 24))
    {
      goto LABEL_79;
    }
  }

  else if ((*(v4 + 64) & 0x200) != 0)
  {
    goto LABEL_79;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 64) & 0x100) == 0 || self->_sIntersearch != *(v4 + 23))
    {
      goto LABEL_79;
    }
  }

  else if ((*(v4 + 64) & 0x100) != 0)
  {
    goto LABEL_79;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(v4 + 64) & 0x1000) == 0 || self->_sSearchRat != *(v4 + 27))
    {
      goto LABEL_79;
    }
  }

  else if ((*(v4 + 64) & 0x1000) != 0)
  {
    goto LABEL_79;
  }

  if ((v7 & 0x80) != 0)
  {
    if ((v8 & 0x80) == 0 || self->_sCellPrio != *(v4 + 22))
    {
      goto LABEL_79;
    }
  }

  else if ((v8 & 0x80) != 0)
  {
    goto LABEL_79;
  }

  eutraPrioInfos = self->_eutraPrioInfos;
  if (eutraPrioInfos | *(v4 + 7) && ![(NSMutableArray *)eutraPrioInfos isEqual:?])
  {
    goto LABEL_79;
  }

  utraPrioInfos = self->_utraPrioInfos;
  if (utraPrioInfos | *(v4 + 15))
  {
    if (![(NSMutableArray *)utraPrioInfos isEqual:?])
    {
      goto LABEL_79;
    }
  }

  gsmPrioInfos = self->_gsmPrioInfos;
  if (gsmPrioInfos | *(v4 + 9))
  {
    if (![(NSMutableArray *)gsmPrioInfos isEqual:?])
    {
      goto LABEL_79;
    }
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    if ((*(v4 + 64) & 0x2000) == 0 || self->_subsId != *(v4 + 28))
    {
      goto LABEL_79;
    }

    v12 = 1;
  }

  else
  {
    v12 = (*(v4 + 64) & 0x2000) == 0;
  }

LABEL_80:

  return v12;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v23 = 2654435761u * self->_timestamp;
    if ((has & 0x20) != 0)
    {
LABEL_3:
      v22 = 2654435761 * self->_hsdpaCapable;
      if ((has & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v21 = 0;
      if ((has & 4) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v23 = 0;
    if ((has & 0x20) != 0)
    {
      goto LABEL_3;
    }
  }

  v22 = 0;
  if ((has & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v21 = 2654435761 * self->_edchCapable;
  if ((has & 4) != 0)
  {
LABEL_5:
    v20 = 2654435761 * self->_duplexMode;
    goto LABEL_10;
  }

LABEL_9:
  v20 = 0;
LABEL_10:
  v19 = PBRepeatedUInt32Hash();
  v4 = self->_has;
  if ((v4 & 0x40) != 0)
  {
    v18 = 2654435761 * self->_imsEmergencySupport;
    if ((v4 & 2) != 0)
    {
LABEL_12:
      v17 = 2654435761 * self->_cellBarred;
      if ((v4 & 0x10) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v18 = 0;
    if ((v4 & 2) != 0)
    {
      goto LABEL_12;
    }
  }

  v17 = 0;
  if ((v4 & 0x10) != 0)
  {
LABEL_13:
    v16 = 2654435761 * self->_fachMeasOccInfoPresent;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  v16 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_14:
    v15 = 2654435761 * self->_sRxlev;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_24;
  }

LABEL_23:
  v15 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_15:
    v5 = 2654435761 * self->_sQual;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

LABEL_24:
  v5 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_16:
    v6 = 2654435761 * self->_sIntrasearch;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

LABEL_25:
  v6 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_17:
    v7 = 2654435761 * self->_sIntersearch;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_18;
    }

LABEL_27:
    v8 = 0;
    if ((v4 & 0x80) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

LABEL_26:
  v7 = 0;
  if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_27;
  }

LABEL_18:
  v8 = 2654435761 * self->_sSearchRat;
  if ((v4 & 0x80) != 0)
  {
LABEL_19:
    v9 = 2654435761 * self->_sCellPrio;
    goto LABEL_29;
  }

LABEL_28:
  v9 = 0;
LABEL_29:
  v10 = [(NSMutableArray *)self->_eutraPrioInfos hash];
  v11 = [(NSMutableArray *)self->_utraPrioInfos hash];
  v12 = [(NSMutableArray *)self->_gsmPrioInfos hash];
  if ((*&self->_has & 0x2000) != 0)
  {
    v13 = 2654435761 * self->_subsId;
  }

  else
  {
    v13 = 0;
  }

  return v22 ^ v23 ^ v21 ^ v20 ^ v18 ^ v17 ^ v16 ^ v15 ^ v5 ^ v19 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 64);
  if (v6)
  {
    self->_timestamp = *(v4 + 4);
    *&self->_has |= 1u;
    v6 = *(v4 + 64);
    if ((v6 & 0x20) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_45;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  self->_hsdpaCapable = *(v4 + 20);
  *&self->_has |= 0x20u;
  v6 = *(v4 + 64);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_45:
  self->_edchCapable = *(v4 + 12);
  *&self->_has |= 8u;
  if ((*(v4 + 64) & 4) != 0)
  {
LABEL_5:
    self->_duplexMode = *(v4 + 11);
    *&self->_has |= 4u;
  }

LABEL_6:
  v7 = [v4 multiBandInfosCount];
  if (v7)
  {
    v8 = v7;
    for (i = 0; i != v8; ++i)
    {
      -[KCellularWcdmaSelReselCellInfo addMultiBandInfo:](self, "addMultiBandInfo:", [v5 multiBandInfoAtIndex:i]);
    }
  }

  v10 = *(v5 + 64);
  if ((v10 & 0x40) != 0)
  {
    self->_imsEmergencySupport = *(v5 + 21);
    *&self->_has |= 0x40u;
    v10 = *(v5 + 64);
    if ((v10 & 2) == 0)
    {
LABEL_11:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_49;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_11;
  }

  self->_cellBarred = *(v5 + 10);
  *&self->_has |= 2u;
  v10 = *(v5 + 64);
  if ((v10 & 0x10) == 0)
  {
LABEL_12:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_fachMeasOccInfoPresent = *(v5 + 16);
  *&self->_has |= 0x10u;
  v10 = *(v5 + 64);
  if ((v10 & 0x800) == 0)
  {
LABEL_13:
    if ((v10 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_sRxlev = *(v5 + 26);
  *&self->_has |= 0x800u;
  v10 = *(v5 + 64);
  if ((v10 & 0x400) == 0)
  {
LABEL_14:
    if ((v10 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_sQual = *(v5 + 25);
  *&self->_has |= 0x400u;
  v10 = *(v5 + 64);
  if ((v10 & 0x200) == 0)
  {
LABEL_15:
    if ((v10 & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_sIntrasearch = *(v5 + 24);
  *&self->_has |= 0x200u;
  v10 = *(v5 + 64);
  if ((v10 & 0x100) == 0)
  {
LABEL_16:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_sIntersearch = *(v5 + 23);
  *&self->_has |= 0x100u;
  v10 = *(v5 + 64);
  if ((v10 & 0x1000) == 0)
  {
LABEL_17:
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_54:
  self->_sSearchRat = *(v5 + 27);
  *&self->_has |= 0x1000u;
  if ((*(v5 + 64) & 0x80) != 0)
  {
LABEL_18:
    self->_sCellPrio = *(v5 + 22);
    *&self->_has |= 0x80u;
  }

LABEL_19:
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = *(v5 + 7);
  v12 = [v11 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v35;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(KCellularWcdmaSelReselCellInfo *)self addEutraPrioInfo:*(*(&v34 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v13);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = *(v5 + 15);
  v17 = [v16 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    do
    {
      for (k = 0; k != v18; k = k + 1)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(KCellularWcdmaSelReselCellInfo *)self addUtraPrioInfo:*(*(&v30 + 1) + 8 * k)];
      }

      v18 = [v16 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v18);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v21 = *(v5 + 9);
  v22 = [v21 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v27;
    do
    {
      for (m = 0; m != v23; m = m + 1)
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [(KCellularWcdmaSelReselCellInfo *)self addGsmPrioInfo:*(*(&v26 + 1) + 8 * m), v26];
      }

      v23 = [v21 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v23);
  }

  if ((*(v5 + 64) & 0x2000) != 0)
  {
    self->_subsId = *(v5 + 28);
    *&self->_has |= 0x2000u;
  }
}

@end