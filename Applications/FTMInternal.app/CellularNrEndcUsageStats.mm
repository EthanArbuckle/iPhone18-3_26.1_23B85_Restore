@interface CellularNrEndcUsageStats
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDeployment:(id)deployment;
- (int)deployment;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDeployment:(BOOL)deployment;
- (void)setHasMcgDuration:(BOOL)duration;
- (void)setHasMcgTput:(BOOL)tput;
- (void)setHasNumSubs:(BOOL)subs;
- (void)setHasPsPref:(BOOL)pref;
- (void)setHasReleaseTech:(BOOL)tech;
- (void)setHasScgDuration:(BOOL)duration;
- (void)setHasScgTput:(BOOL)tput;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation CellularNrEndcUsageStats

- (void)setHasMcgTput:(BOOL)tput
{
  if (tput)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasScgTput:(BOOL)tput
{
  if (tput)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasSubsId:(BOOL)id
{
  if (id)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasNumSubs:(BOOL)subs
{
  if (subs)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasPsPref:(BOOL)pref
{
  if (pref)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasMcgDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasScgDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (int)deployment
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_deployment;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDeployment:(BOOL)deployment
{
  if (deployment)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (int)StringAsDeployment:(id)deployment
{
  deploymentCopy = deployment;
  if ([deploymentCopy isEqualToString:@"DEPLOYMENT_SA"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [deploymentCopy isEqualToString:@"DEPLOYMENT_NSA"];
  }

  return v4;
}

- (void)setHasReleaseTech:(BOOL)tech
{
  if (tech)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularNrEndcUsageStats;
  v3 = [(CellularNrEndcUsageStats *)&v7 description];
  dictionaryRepresentation = [(CellularNrEndcUsageStats *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v14 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v14 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  v15 = [NSNumber numberWithUnsignedInt:self->_mcgTput];
  [v3 setObject:v15 forKey:@"mcg_tput"];

  if ((*&self->_has & 0x100) != 0)
  {
LABEL_4:
    v5 = [NSNumber numberWithUnsignedInt:self->_scgTput];
    [v3 setObject:v5 forKey:@"scg_tput"];
  }

LABEL_5:
  drbConfig = self->_drbConfig;
  if (drbConfig)
  {
    dictionaryRepresentation = [(DrbConfig *)drbConfig dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"drb_config"];
  }

  v8 = self->_has;
  if ((v8 & 0x200) != 0)
  {
    v16 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v16 forKey:@"subs_id"];

    v8 = self->_has;
    if ((v8 & 0x10) == 0)
    {
LABEL_9:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((v8 & 0x10) == 0)
  {
    goto LABEL_9;
  }

  v17 = [NSNumber numberWithUnsignedInt:self->_numSubs];
  [v3 setObject:v17 forKey:@"num_subs"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_10:
    v9 = [NSNumber numberWithUnsignedInt:self->_psPref];
    [v3 setObject:v9 forKey:@"ps_pref"];
  }

LABEL_11:
  plmn = self->_plmn;
  if (plmn)
  {
    [v3 setObject:plmn forKey:@"plmn"];
  }

  v11 = self->_has;
  if ((v11 & 4) != 0)
  {
    v18 = [NSNumber numberWithUnsignedInt:self->_mcgDuration];
    [v3 setObject:v18 forKey:@"mcg_duration"];

    v11 = self->_has;
    if ((v11 & 0x80) == 0)
    {
LABEL_15:
      if ((v11 & 2) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_29;
    }
  }

  else if ((v11 & 0x80) == 0)
  {
    goto LABEL_15;
  }

  v19 = [NSNumber numberWithUnsignedInt:self->_scgDuration];
  [v3 setObject:v19 forKey:@"scg_duration"];

  v11 = self->_has;
  if ((v11 & 2) == 0)
  {
LABEL_16:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_29:
  deployment = self->_deployment;
  if (deployment)
  {
    if (deployment == 1)
    {
      v21 = @"DEPLOYMENT_NSA";
    }

    else
    {
      v21 = [NSString stringWithFormat:@"(unknown: %i)", self->_deployment];
    }
  }

  else
  {
    v21 = @"DEPLOYMENT_SA";
  }

  [v3 setObject:v21 forKey:@"deployment"];

  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_18;
  }

LABEL_17:
  v12 = [NSNumber numberWithUnsignedInt:self->_releaseTech];
  [v3 setObject:v12 forKey:@"release_tech"];

LABEL_18:

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  mcgTput = self->_mcgTput;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_4:
    scgTput = self->_scgTput;
    PBDataWriterWriteUint32Field();
  }

LABEL_5:
  if (self->_drbConfig)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = self->_has;
  if ((v6 & 0x200) != 0)
  {
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
    v6 = self->_has;
    if ((v6 & 0x10) == 0)
    {
LABEL_9:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_9;
  }

  numSubs = self->_numSubs;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_10:
    psPref = self->_psPref;
    PBDataWriterWriteUint32Field();
  }

LABEL_11:
  if (self->_plmn)
  {
    PBDataWriterWriteDataField();
  }

  v8 = self->_has;
  if ((v8 & 4) != 0)
  {
    mcgDuration = self->_mcgDuration;
    PBDataWriterWriteUint32Field();
    v8 = self->_has;
    if ((v8 & 0x80) == 0)
    {
LABEL_15:
      if ((v8 & 2) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_29;
    }
  }

  else if ((v8 & 0x80) == 0)
  {
    goto LABEL_15;
  }

  scgDuration = self->_scgDuration;
  PBDataWriterWriteUint32Field();
  v8 = self->_has;
  if ((v8 & 2) == 0)
  {
LABEL_16:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_29:
  deployment = self->_deployment;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_17:
    releaseTech = self->_releaseTech;
    PBDataWriterWriteUint32Field();
  }

LABEL_18:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 38) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 9) = self->_mcgTput;
  *(toCopy + 38) |= 8u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_4:
    *(toCopy + 17) = self->_scgTput;
    *(toCopy + 38) |= 0x100u;
  }

LABEL_5:
  v8 = toCopy;
  if (self->_drbConfig)
  {
    [toCopy setDrbConfig:?];
    toCopy = v8;
  }

  v6 = self->_has;
  if ((v6 & 0x200) != 0)
  {
    *(toCopy + 18) = self->_subsId;
    *(toCopy + 38) |= 0x200u;
    v6 = self->_has;
    if ((v6 & 0x10) == 0)
    {
LABEL_9:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_9;
  }

  *(toCopy + 10) = self->_numSubs;
  *(toCopy + 38) |= 0x10u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_10:
    *(toCopy + 14) = self->_psPref;
    *(toCopy + 38) |= 0x20u;
  }

LABEL_11:
  if (self->_plmn)
  {
    [v8 setPlmn:?];
    toCopy = v8;
  }

  v7 = self->_has;
  if ((v7 & 4) != 0)
  {
    *(toCopy + 8) = self->_mcgDuration;
    *(toCopy + 38) |= 4u;
    v7 = self->_has;
    if ((v7 & 0x80) == 0)
    {
LABEL_15:
      if ((v7 & 2) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_29;
    }
  }

  else if ((v7 & 0x80) == 0)
  {
    goto LABEL_15;
  }

  *(toCopy + 16) = self->_scgDuration;
  *(toCopy + 38) |= 0x80u;
  v7 = self->_has;
  if ((v7 & 2) == 0)
  {
LABEL_16:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_29:
  *(toCopy + 4) = self->_deployment;
  *(toCopy + 38) |= 2u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_17:
    *(toCopy + 15) = self->_releaseTech;
    *(toCopy + 38) |= 0x40u;
  }

LABEL_18:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 38) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 9) = self->_mcgTput;
  *(v5 + 38) |= 8u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_4:
    *(v5 + 17) = self->_scgTput;
    *(v5 + 38) |= 0x100u;
  }

LABEL_5:
  v8 = [(DrbConfig *)self->_drbConfig copyWithZone:zone];
  v9 = v6[3];
  v6[3] = v8;

  v10 = self->_has;
  if ((v10 & 0x200) != 0)
  {
    *(v6 + 18) = self->_subsId;
    *(v6 + 38) |= 0x200u;
    v10 = self->_has;
    if ((v10 & 0x10) == 0)
    {
LABEL_7:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((v10 & 0x10) == 0)
  {
    goto LABEL_7;
  }

  *(v6 + 10) = self->_numSubs;
  *(v6 + 38) |= 0x10u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_8:
    *(v6 + 14) = self->_psPref;
    *(v6 + 38) |= 0x20u;
  }

LABEL_9:
  v11 = [(NSData *)self->_plmn copyWithZone:zone];
  v12 = v6[6];
  v6[6] = v11;

  v13 = self->_has;
  if ((v13 & 4) != 0)
  {
    *(v6 + 8) = self->_mcgDuration;
    *(v6 + 38) |= 4u;
    v13 = self->_has;
    if ((v13 & 0x80) == 0)
    {
LABEL_11:
      if ((v13 & 2) == 0)
      {
        goto LABEL_12;
      }

LABEL_23:
      *(v6 + 4) = self->_deployment;
      *(v6 + 38) |= 2u;
      if ((*&self->_has & 0x40) == 0)
      {
        return v6;
      }

      goto LABEL_13;
    }
  }

  else if ((v13 & 0x80) == 0)
  {
    goto LABEL_11;
  }

  *(v6 + 16) = self->_scgDuration;
  *(v6 + 38) |= 0x80u;
  v13 = self->_has;
  if ((v13 & 2) != 0)
  {
    goto LABEL_23;
  }

LABEL_12:
  if ((v13 & 0x40) != 0)
  {
LABEL_13:
    *(v6 + 15) = self->_releaseTech;
    *(v6 + 38) |= 0x40u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_58;
  }

  has = self->_has;
  v6 = *(equalCopy + 38);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_58;
    }
  }

  else if (v6)
  {
    goto LABEL_58;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_mcgTput != *(equalCopy + 9))
    {
      goto LABEL_58;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_58;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 38) & 0x100) == 0 || self->_scgTput != *(equalCopy + 17))
    {
      goto LABEL_58;
    }
  }

  else if ((*(equalCopy + 38) & 0x100) != 0)
  {
    goto LABEL_58;
  }

  drbConfig = self->_drbConfig;
  if (drbConfig | *(equalCopy + 3))
  {
    if (![(DrbConfig *)drbConfig isEqual:?])
    {
      goto LABEL_58;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 38);
  if ((has & 0x200) != 0)
  {
    if ((*(equalCopy + 38) & 0x200) == 0 || self->_subsId != *(equalCopy + 18))
    {
      goto LABEL_58;
    }
  }

  else if ((*(equalCopy + 38) & 0x200) != 0)
  {
    goto LABEL_58;
  }

  if ((has & 0x10) != 0)
  {
    if ((v8 & 0x10) == 0 || self->_numSubs != *(equalCopy + 10))
    {
      goto LABEL_58;
    }
  }

  else if ((v8 & 0x10) != 0)
  {
    goto LABEL_58;
  }

  if ((has & 0x20) != 0)
  {
    if ((v8 & 0x20) == 0 || self->_psPref != *(equalCopy + 14))
    {
      goto LABEL_58;
    }
  }

  else if ((v8 & 0x20) != 0)
  {
    goto LABEL_58;
  }

  plmn = self->_plmn;
  if (plmn | *(equalCopy + 6))
  {
    if ([(NSData *)plmn isEqual:?])
    {
      has = self->_has;
      goto LABEL_38;
    }

LABEL_58:
    v11 = 0;
    goto LABEL_59;
  }

LABEL_38:
  v10 = *(equalCopy + 38);
  if ((has & 4) != 0)
  {
    if ((v10 & 4) == 0 || self->_mcgDuration != *(equalCopy + 8))
    {
      goto LABEL_58;
    }
  }

  else if ((v10 & 4) != 0)
  {
    goto LABEL_58;
  }

  if ((has & 0x80) != 0)
  {
    if ((v10 & 0x80) == 0 || self->_scgDuration != *(equalCopy + 16))
    {
      goto LABEL_58;
    }
  }

  else if ((v10 & 0x80) != 0)
  {
    goto LABEL_58;
  }

  if ((has & 2) != 0)
  {
    if ((v10 & 2) == 0 || self->_deployment != *(equalCopy + 4))
    {
      goto LABEL_58;
    }
  }

  else if ((v10 & 2) != 0)
  {
    goto LABEL_58;
  }

  if ((has & 0x40) != 0)
  {
    if ((v10 & 0x40) == 0 || self->_releaseTech != *(equalCopy + 15))
    {
      goto LABEL_58;
    }

    v11 = 1;
  }

  else
  {
    v11 = (v10 & 0x40) == 0;
  }

LABEL_59:

  return v11;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 1) == 0)
  {
    v4 = 0;
    if ((has & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v4 = 2654435761u * self->_timestamp;
  if ((has & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761 * self->_mcgTput;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_4:
    v6 = 2654435761 * self->_scgTput;
    goto LABEL_8;
  }

LABEL_7:
  v6 = 0;
LABEL_8:
  v7 = [(DrbConfig *)self->_drbConfig hash];
  v8 = self->_has;
  if ((v8 & 0x200) == 0)
  {
    v9 = 0;
    if ((v8 & 0x10) != 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    v10 = 0;
    if ((v8 & 0x20) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  v9 = 2654435761 * self->_subsId;
  if ((v8 & 0x10) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v10 = 2654435761 * self->_numSubs;
  if ((v8 & 0x20) != 0)
  {
LABEL_11:
    v11 = 2654435761 * self->_psPref;
    goto LABEL_15;
  }

LABEL_14:
  v11 = 0;
LABEL_15:
  v12 = [(NSData *)self->_plmn hash];
  v13 = self->_has;
  if ((v13 & 4) != 0)
  {
    v14 = 2654435761 * self->_mcgDuration;
    if ((v13 & 0x80) != 0)
    {
LABEL_17:
      v15 = 2654435761 * self->_scgDuration;
      if ((v13 & 2) != 0)
      {
        goto LABEL_18;
      }

LABEL_22:
      v16 = 0;
      if ((v13 & 0x40) != 0)
      {
        goto LABEL_19;
      }

LABEL_23:
      v17 = 0;
      return v5 ^ v4 ^ v6 ^ v9 ^ v10 ^ v11 ^ v7 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17;
    }
  }

  else
  {
    v14 = 0;
    if ((v13 & 0x80) != 0)
    {
      goto LABEL_17;
    }
  }

  v15 = 0;
  if ((v13 & 2) == 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  v16 = 2654435761 * self->_deployment;
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  v17 = 2654435761 * self->_releaseTech;
  return v5 ^ v4 ^ v6 ^ v9 ^ v10 ^ v11 ^ v7 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 38);
  if (v6)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 38);
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 0x100) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_mcgTput = *(fromCopy + 9);
  *&self->_has |= 8u;
  if ((*(fromCopy + 38) & 0x100) != 0)
  {
LABEL_4:
    self->_scgTput = *(fromCopy + 17);
    *&self->_has |= 0x100u;
  }

LABEL_5:
  drbConfig = self->_drbConfig;
  v8 = *(v5 + 3);
  v11 = v5;
  if (drbConfig)
  {
    if (!v8)
    {
      goto LABEL_14;
    }

    [(DrbConfig *)drbConfig mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_14;
    }

    [(CellularNrEndcUsageStats *)self setDrbConfig:?];
  }

  v5 = v11;
LABEL_14:
  v9 = *(v5 + 38);
  if ((v9 & 0x200) != 0)
  {
    self->_subsId = *(v5 + 18);
    *&self->_has |= 0x200u;
    v9 = *(v5 + 38);
    if ((v9 & 0x10) == 0)
    {
LABEL_16:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((v9 & 0x10) == 0)
  {
    goto LABEL_16;
  }

  self->_numSubs = *(v5 + 10);
  *&self->_has |= 0x10u;
  if ((*(v5 + 38) & 0x20) != 0)
  {
LABEL_17:
    self->_psPref = *(v5 + 14);
    *&self->_has |= 0x20u;
  }

LABEL_18:
  if (*(v5 + 6))
  {
    [(CellularNrEndcUsageStats *)self setPlmn:?];
    v5 = v11;
  }

  v10 = *(v5 + 38);
  if ((v10 & 4) != 0)
  {
    self->_mcgDuration = *(v5 + 8);
    *&self->_has |= 4u;
    v10 = *(v5 + 38);
    if ((v10 & 0x80) == 0)
    {
LABEL_22:
      if ((v10 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_33;
    }
  }

  else if ((v10 & 0x80) == 0)
  {
    goto LABEL_22;
  }

  self->_scgDuration = *(v5 + 16);
  *&self->_has |= 0x80u;
  v10 = *(v5 + 38);
  if ((v10 & 2) == 0)
  {
LABEL_23:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_33:
  self->_deployment = *(v5 + 4);
  *&self->_has |= 2u;
  if ((*(v5 + 38) & 0x40) != 0)
  {
LABEL_24:
    self->_releaseTech = *(v5 + 15);
    *&self->_has |= 0x40u;
  }

LABEL_25:

  _objc_release_x1();
}

@end