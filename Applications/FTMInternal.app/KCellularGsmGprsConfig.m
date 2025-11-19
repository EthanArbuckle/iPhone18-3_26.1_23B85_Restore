@interface KCellularGsmGprsConfig
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAccThr:(BOOL)a3;
- (void)setHasCellBarAccess2:(BOOL)a3;
- (void)setHasCrHyst:(BOOL)a3;
- (void)setHasExtUplTbfSupported:(BOOL)a3;
- (void)setHasGprsSup:(BOOL)a3;
- (void)setHasNco:(BOOL)a3;
- (void)setHasNom:(BOOL)a3;
- (void)setHasPriorityClass:(BOOL)a3;
- (void)setHasRac:(BOOL)a3;
- (void)setHasSpPgCy:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation KCellularGsmGprsConfig

- (void)setHasGprsSup:(BOOL)a3
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

- (void)setHasRac:(BOOL)a3
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

- (void)setHasSpPgCy:(BOOL)a3
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

- (void)setHasNco:(BOOL)a3
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

- (void)setHasNom:(BOOL)a3
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

- (void)setHasCrHyst:(BOOL)a3
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

- (void)setHasAccThr:(BOOL)a3
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

- (void)setHasExtUplTbfSupported:(BOOL)a3
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

- (void)setHasPriorityClass:(BOOL)a3
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

- (void)setHasCellBarAccess2:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = KCellularGsmGprsConfig;
  v3 = [(KCellularGsmGprsConfig *)&v7 description];
  v4 = [(KCellularGsmGprsConfig *)self dictionaryRepresentation];
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
    if ((has & 0x400) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  v8 = [NSNumber numberWithBool:self->_gprsSup];
  [v3 setObject:v8 forKey:@"gprs_sup"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = [NSNumber numberWithUnsignedInt:self->_rac];
  [v3 setObject:v9 forKey:@"rac"];

  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = [NSNumber numberWithBool:self->_spPgCy];
  [v3 setObject:v10 forKey:@"sp_pg_cy"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = [NSNumber numberWithUnsignedInt:self->_nco];
  [v3 setObject:v11 forKey:@"nco"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = [NSNumber numberWithUnsignedInt:self->_nom];
  [v3 setObject:v12 forKey:@"nom"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v13 = [NSNumber numberWithUnsignedInt:self->_crHyst];
  [v3 setObject:v13 forKey:@"cr_hyst"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v14 = [NSNumber numberWithUnsignedInt:self->_accThr];
  [v3 setObject:v14 forKey:@"acc_thr"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v15 = [NSNumber numberWithBool:self->_extUplTbfSupported];
  [v3 setObject:v15 forKey:@"ext_upl_tbf_supported"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v16 = [NSNumber numberWithUnsignedInt:self->_priorityClass];
  [v3 setObject:v16 forKey:@"priority_class"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_12:
    if ((has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  v17 = [NSNumber numberWithUnsignedInt:self->_cellBarAccess2];
  [v3 setObject:v17 forKey:@"cell_bar_access_2"];

  if ((*&self->_has & 0x100) != 0)
  {
LABEL_13:
    v5 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v5 forKey:@"subs_id"];
  }

LABEL_14:

  return v3;
}

- (void)writeTo:(id)a3
{
  v17 = a3;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  gprsSup = self->_gprsSup;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  rac = self->_rac;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  spPgCy = self->_spPgCy;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  nco = self->_nco;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  nom = self->_nom;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  crHyst = self->_crHyst;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  accThr = self->_accThr;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  extUplTbfSupported = self->_extUplTbfSupported;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  priorityClass = self->_priorityClass;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_12:
    if ((has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  cellBarAccess2 = self->_cellBarAccess2;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_13:
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
  }

LABEL_14:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 26) |= 1u;
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 49) = self->_gprsSup;
  *(v4 + 26) |= 0x400u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v4 + 10) = self->_rac;
  *(v4 + 26) |= 0x80u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v4 + 50) = self->_spPgCy;
  *(v4 + 26) |= 0x800u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v4 + 7) = self->_nco;
  *(v4 + 26) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v4 + 8) = self->_nom;
  *(v4 + 26) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v4 + 6) = self->_crHyst;
  *(v4 + 26) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v4 + 4) = self->_accThr;
  *(v4 + 26) |= 2u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v4 + 48) = self->_extUplTbfSupported;
  *(v4 + 26) |= 0x200u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v4 + 9) = self->_priorityClass;
  *(v4 + 26) |= 0x40u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_12:
    if ((has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  *(v4 + 5) = self->_cellBarAccess2;
  *(v4 + 26) |= 4u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_13:
    *(v4 + 11) = self->_subsId;
    *(v4 + 26) |= 0x100u;
  }

LABEL_14:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 26) |= 1u;
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  *(result + 49) = self->_gprsSup;
  *(result + 26) |= 0x400u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 10) = self->_rac;
  *(result + 26) |= 0x80u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 50) = self->_spPgCy;
  *(result + 26) |= 0x800u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 7) = self->_nco;
  *(result + 26) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 8) = self->_nom;
  *(result + 26) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 6) = self->_crHyst;
  *(result + 26) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 4) = self->_accThr;
  *(result + 26) |= 2u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 48) = self->_extUplTbfSupported;
  *(result + 26) |= 0x200u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 9) = self->_priorityClass;
  *(result + 26) |= 0x40u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_12:
    if ((has & 0x100) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_25:
  *(result + 5) = self->_cellBarAccess2;
  *(result + 26) |= 4u;
  if ((*&self->_has & 0x100) == 0)
  {
    return result;
  }

LABEL_13:
  *(result + 11) = self->_subsId;
  *(result + 26) |= 0x100u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_71;
  }

  has = self->_has;
  v6 = *(v4 + 26);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_71;
    }
  }

  else if (v6)
  {
    goto LABEL_71;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(v4 + 26) & 0x400) == 0)
    {
      goto LABEL_71;
    }

    v7 = *(v4 + 49);
    if (self->_gprsSup)
    {
      if ((*(v4 + 49) & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    else if (*(v4 + 49))
    {
      goto LABEL_71;
    }
  }

  else if ((*(v4 + 26) & 0x400) != 0)
  {
    goto LABEL_71;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_rac != *(v4 + 10))
    {
      goto LABEL_71;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_71;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(v4 + 26) & 0x800) == 0)
    {
      goto LABEL_71;
    }

    v8 = *(v4 + 50);
    if (self->_spPgCy)
    {
      if ((*(v4 + 50) & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    else if (*(v4 + 50))
    {
      goto LABEL_71;
    }
  }

  else if ((*(v4 + 26) & 0x800) != 0)
  {
    goto LABEL_71;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_nco != *(v4 + 7))
    {
      goto LABEL_71;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_71;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_nom != *(v4 + 8))
    {
      goto LABEL_71;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_71;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_crHyst != *(v4 + 6))
    {
      goto LABEL_71;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_71;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_accThr != *(v4 + 4))
    {
      goto LABEL_71;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_71;
  }

  if ((*&self->_has & 0x200) == 0)
  {
    if ((*(v4 + 26) & 0x200) == 0)
    {
      goto LABEL_50;
    }

LABEL_71:
    v10 = 0;
    goto LABEL_72;
  }

  if ((*(v4 + 26) & 0x200) == 0)
  {
    goto LABEL_71;
  }

  v9 = *(v4 + 48);
  if (self->_extUplTbfSupported)
  {
    if ((*(v4 + 48) & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else if (*(v4 + 48))
  {
    goto LABEL_71;
  }

LABEL_50:
  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_priorityClass != *(v4 + 9))
    {
      goto LABEL_71;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_71;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_cellBarAccess2 != *(v4 + 5))
    {
      goto LABEL_71;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_71;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 26) & 0x100) == 0 || self->_subsId != *(v4 + 11))
    {
      goto LABEL_71;
    }

    v10 = 1;
  }

  else
  {
    v10 = (v6 & 0x100) == 0;
  }

LABEL_72:

  return v10;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x400) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_gprsSup;
      if ((has & 0x80) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_rac;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v5 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_spPgCy;
    if ((has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v6 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_nco;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_nom;
    if ((has & 8) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v8 = 0;
  if ((has & 8) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_crHyst;
    if ((has & 2) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = 0;
  if ((has & 2) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_accThr;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_extUplTbfSupported;
    if ((has & 0x40) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_priorityClass;
    if ((has & 4) != 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    v13 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_13;
    }

LABEL_25:
    v14 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
  }

LABEL_23:
  v12 = 0;
  if ((has & 4) == 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  v13 = 2654435761 * self->_cellBarAccess2;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_25;
  }

LABEL_13:
  v14 = 2654435761 * self->_subsId;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 26);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 26);
    if ((v5 & 0x400) == 0)
    {
LABEL_3:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*(v4 + 26) & 0x400) == 0)
  {
    goto LABEL_3;
  }

  self->_gprsSup = *(v4 + 49);
  *&self->_has |= 0x400u;
  v5 = *(v4 + 26);
  if ((v5 & 0x80) == 0)
  {
LABEL_4:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_rac = *(v4 + 10);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 26);
  if ((v5 & 0x800) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_spPgCy = *(v4 + 50);
  *&self->_has |= 0x800u;
  v5 = *(v4 + 26);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_nco = *(v4 + 7);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 26);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_nom = *(v4 + 8);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 26);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_crHyst = *(v4 + 6);
  *&self->_has |= 8u;
  v5 = *(v4 + 26);
  if ((v5 & 2) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_accThr = *(v4 + 4);
  *&self->_has |= 2u;
  v5 = *(v4 + 26);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_extUplTbfSupported = *(v4 + 48);
  *&self->_has |= 0x200u;
  v5 = *(v4 + 26);
  if ((v5 & 0x40) == 0)
  {
LABEL_11:
    if ((v5 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_priorityClass = *(v4 + 9);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 26);
  if ((v5 & 4) == 0)
  {
LABEL_12:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  self->_cellBarAccess2 = *(v4 + 5);
  *&self->_has |= 4u;
  if ((*(v4 + 26) & 0x100) != 0)
  {
LABEL_13:
    self->_subsId = *(v4 + 11);
    *&self->_has |= 0x100u;
  }

LABEL_14:
}

@end