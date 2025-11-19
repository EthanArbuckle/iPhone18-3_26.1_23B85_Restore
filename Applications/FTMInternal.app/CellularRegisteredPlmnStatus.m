@interface CellularRegisteredPlmnStatus
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRoamStatus:(id)a3;
- (int)roamStatus;
- (unint64_t)hash;
- (void)addEhplmnList:(id)a3;
- (void)addEplmnList:(id)a3;
- (void)addHomeSidNidList:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasHMCC:(BOOL)a3;
- (void)setHasHMNC:(BOOL)a3;
- (void)setHasNumSubs:(BOOL)a3;
- (void)setHasPsPref:(BOOL)a3;
- (void)setHasRMCC:(BOOL)a3;
- (void)setHasRMNC:(BOOL)a3;
- (void)setHasRNID:(BOOL)a3;
- (void)setHasRSID:(BOOL)a3;
- (void)setHasRoamStatus:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CellularRegisteredPlmnStatus

- (int)roamStatus
{
  if ((*&self->_has & 0x200) != 0)
  {
    return self->_roamStatus;
  }

  else
  {
    return -1;
  }
}

- (void)setHasRoamStatus:(BOOL)a3
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

- (int)StringAsRoamStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SYS_ROAM_STATUS_NONE"])
  {
    v4 = -1;
  }

  else if ([v3 isEqualToString:@"SYS_ROAM_STATUS_OFF"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SYS_ROAM_STATUS_ON"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SYS_ROAM_STATUS_BLINK"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SYS_ROAM_STATUS_OUT_OF_NEIGHBORHOOD"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SYS_ROAM_STATUS_OUT_OF_BLDG"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SYS_ROAM_STATUS_PREF_SYS"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SYS_ROAM_STATUS_AVAIL_SYS"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SYS_ROAM_STATUS_ALLIANCE_PARTNER"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SYS_ROAM_STATUS_PREMIUM_PARTNER"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"SYS_ROAM_STATUS_FULL_SVC"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"SYS_ROAM_STATUS_PARTIAL_SVC"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"SYS_ROAM_STATUS_BANNER_ON"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"SYS_ROAM_STATUS_BANNER_OFF"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"SYS_ROAM_STATUS_HOME_SYSTEM"])
  {
    v4 = 64;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (void)setHasHMCC:(BOOL)a3
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

- (void)setHasHMNC:(BOOL)a3
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

- (void)setHasRMCC:(BOOL)a3
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

- (void)setHasRMNC:(BOOL)a3
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

- (void)setHasRSID:(BOOL)a3
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

- (void)setHasRNID:(BOOL)a3
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

- (void)addHomeSidNidList:(id)a3
{
  v4 = a3;
  homeSidNidLists = self->_homeSidNidLists;
  v8 = v4;
  if (!homeSidNidLists)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_homeSidNidLists;
    self->_homeSidNidLists = v6;

    v4 = v8;
    homeSidNidLists = self->_homeSidNidLists;
  }

  [(NSMutableArray *)homeSidNidLists addObject:v4];
}

- (void)addEplmnList:(id)a3
{
  v4 = a3;
  eplmnLists = self->_eplmnLists;
  v8 = v4;
  if (!eplmnLists)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_eplmnLists;
    self->_eplmnLists = v6;

    v4 = v8;
    eplmnLists = self->_eplmnLists;
  }

  [(NSMutableArray *)eplmnLists addObject:v4];
}

- (void)addEhplmnList:(id)a3
{
  v4 = a3;
  ehplmnLists = self->_ehplmnLists;
  v8 = v4;
  if (!ehplmnLists)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_ehplmnLists;
    self->_ehplmnLists = v6;

    v4 = v8;
    ehplmnLists = self->_ehplmnLists;
  }

  [(NSMutableArray *)ehplmnLists addObject:v4];
}

- (void)setHasSubsId:(BOOL)a3
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

  *&self->_has = *&self->_has & 0xFFF7 | v3;
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

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularRegisteredPlmnStatus;
  v3 = [(CellularRegisteredPlmnStatus *)&v7 description];
  v4 = [(CellularRegisteredPlmnStatus *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v31 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v31 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_68;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  roamStatus = self->_roamStatus;
  v33 = @"SYS_ROAM_STATUS_NONE";
  switch(roamStatus)
  {
    case -1:
      break;
    case 0:
      v33 = @"SYS_ROAM_STATUS_OFF";
      break;
    case 1:
      v33 = @"SYS_ROAM_STATUS_ON";
      break;
    case 2:
      v33 = @"SYS_ROAM_STATUS_BLINK";
      break;
    case 3:
      v33 = @"SYS_ROAM_STATUS_OUT_OF_NEIGHBORHOOD";
      break;
    case 4:
      v33 = @"SYS_ROAM_STATUS_OUT_OF_BLDG";
      break;
    case 5:
      v33 = @"SYS_ROAM_STATUS_PREF_SYS";
      break;
    case 6:
      v33 = @"SYS_ROAM_STATUS_AVAIL_SYS";
      break;
    case 7:
      v33 = @"SYS_ROAM_STATUS_ALLIANCE_PARTNER";
      break;
    case 8:
      v33 = @"SYS_ROAM_STATUS_PREMIUM_PARTNER";
      break;
    case 9:
      v33 = @"SYS_ROAM_STATUS_FULL_SVC";
      break;
    case 10:
      v33 = @"SYS_ROAM_STATUS_PARTIAL_SVC";
      break;
    case 11:
      v33 = @"SYS_ROAM_STATUS_BANNER_ON";
      break;
    case 12:
      v33 = @"SYS_ROAM_STATUS_BANNER_OFF";
      break;
    default:
      if (roamStatus == 64)
      {
        v33 = @"SYS_ROAM_STATUS_HOME_SYSTEM";
      }

      else
      {
        v33 = [NSString stringWithFormat:@"(unknown: %i)", self->_roamStatus];
      }

      break;
  }

  [v3 setObject:v33 forKey:@"roam_status"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_69;
  }

LABEL_68:
  v36 = [NSNumber numberWithUnsignedInt:self->_hMCC];
  [v3 setObject:v36 forKey:@"h_MCC"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_70;
  }

LABEL_69:
  v37 = [NSNumber numberWithUnsignedInt:self->_hMNC];
  [v3 setObject:v37 forKey:@"h_MNC"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_71;
  }

LABEL_70:
  v38 = [NSNumber numberWithUnsignedInt:self->_rMCC];
  [v3 setObject:v38 forKey:@"r_MCC"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_72;
  }

LABEL_71:
  v39 = [NSNumber numberWithUnsignedInt:self->_rMNC];
  [v3 setObject:v39 forKey:@"r_MNC"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_72:
  v40 = [NSNumber numberWithUnsignedInt:self->_rSID];
  [v3 setObject:v40 forKey:@"r_SID"];

  if ((*&self->_has & 0x80) != 0)
  {
LABEL_9:
    v5 = [NSNumber numberWithUnsignedInt:self->_rNID];
    [v3 setObject:v5 forKey:@"r_NID"];
  }

LABEL_10:
  if ([(NSMutableArray *)self->_homeSidNidLists count])
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_homeSidNidLists, "count")}];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v7 = self->_homeSidNidLists;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v49 objects:v55 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v50;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v50 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v49 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v49 objects:v55 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"home_sid_nid_list"];
  }

  if ([(NSMutableArray *)self->_eplmnLists count])
  {
    v13 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_eplmnLists, "count")}];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v14 = self->_eplmnLists;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v46;
      do
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v46 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v45 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:v19];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v45 objects:v54 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKey:@"eplmn_list"];
  }

  if ([(NSMutableArray *)self->_ehplmnLists count])
  {
    v20 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_ehplmnLists, "count")}];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v21 = self->_ehplmnLists;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v41 objects:v53 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v42;
      do
      {
        for (k = 0; k != v23; k = k + 1)
        {
          if (*v42 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [*(*(&v41 + 1) + 8 * k) dictionaryRepresentation];
          [v20 addObject:v26];
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v41 objects:v53 count:16];
      }

      while (v23);
    }

    [v3 setObject:v20 forKey:@"ehplmn_list"];
  }

  v27 = self->_has;
  if ((v27 & 0x400) != 0)
  {
    v34 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v34 forKey:@"subs_id"];

    v27 = self->_has;
    if ((v27 & 8) == 0)
    {
LABEL_39:
      if ((v27 & 0x10) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }
  }

  else if ((v27 & 8) == 0)
  {
    goto LABEL_39;
  }

  v35 = [NSNumber numberWithUnsignedInt:self->_numSubs];
  [v3 setObject:v35 forKey:@"num_subs"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_40:
    v28 = [NSNumber numberWithUnsignedInt:self->_psPref];
    [v3 setObject:v28 forKey:@"ps_pref"];
  }

LABEL_41:
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
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  roamStatus = self->_roamStatus;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_41;
  }

LABEL_40:
  hMCC = self->_hMCC;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

LABEL_41:
  hMNC = self->_hMNC;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_42:
  rMCC = self->_rMCC;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_44;
  }

LABEL_43:
  rMNC = self->_rMNC;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_44:
  rSID = self->_rSID;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_9:
    rNID = self->_rNID;
    PBDataWriterWriteUint32Field();
  }

LABEL_10:
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v7 = self->_homeSidNidLists;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v45;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v44 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v9);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v13 = self->_eplmnLists;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v41;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v41 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v40 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v15);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v19 = self->_ehplmnLists;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v37;
    do
    {
      for (k = 0; k != v21; k = k + 1)
      {
        if (*v37 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v36 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v21);
  }

  v25 = self->_has;
  if ((v25 & 0x400) != 0)
  {
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
    v25 = self->_has;
    if ((v25 & 8) == 0)
    {
LABEL_33:
      if ((v25 & 0x10) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  else if ((v25 & 8) == 0)
  {
    goto LABEL_33;
  }

  numSubs = self->_numSubs;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_34:
    psPref = self->_psPref;
    PBDataWriterWriteUint32Field();
  }

LABEL_35:
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
    v4[1] = self->_timestamp;
    *(v4 + 46) |= 1u;
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 21) = self->_roamStatus;
  *(v4 + 46) |= 0x200u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v4 + 8) = self->_hMCC;
  *(v4 + 46) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v4 + 9) = self->_hMNC;
  *(v4 + 46) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v4 + 17) = self->_rMCC;
  *(v4 + 46) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

LABEL_37:
    *(v4 + 20) = self->_rSID;
    *(v4 + 46) |= 0x100u;
    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_36:
  *(v4 + 18) = self->_rMNC;
  *(v4 + 46) |= 0x40u;
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    goto LABEL_37;
  }

LABEL_8:
  if ((has & 0x80) != 0)
  {
LABEL_9:
    *(v4 + 19) = self->_rNID;
    *(v4 + 46) |= 0x80u;
  }

LABEL_10:
  v20 = v4;
  if ([(CellularRegisteredPlmnStatus *)self homeSidNidListsCount])
  {
    [v20 clearHomeSidNidLists];
    v6 = [(CellularRegisteredPlmnStatus *)self homeSidNidListsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(CellularRegisteredPlmnStatus *)self homeSidNidListAtIndex:i];
        [v20 addHomeSidNidList:v9];
      }
    }
  }

  if ([(CellularRegisteredPlmnStatus *)self eplmnListsCount])
  {
    [v20 clearEplmnLists];
    v10 = [(CellularRegisteredPlmnStatus *)self eplmnListsCount];
    if (v10)
    {
      v11 = v10;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(CellularRegisteredPlmnStatus *)self eplmnListAtIndex:j];
        [v20 addEplmnList:v13];
      }
    }
  }

  if ([(CellularRegisteredPlmnStatus *)self ehplmnListsCount])
  {
    [v20 clearEhplmnLists];
    v14 = [(CellularRegisteredPlmnStatus *)self ehplmnListsCount];
    if (v14)
    {
      v15 = v14;
      for (k = 0; k != v15; ++k)
      {
        v17 = [(CellularRegisteredPlmnStatus *)self ehplmnListAtIndex:k];
        [v20 addEhplmnList:v17];
      }
    }
  }

  v18 = self->_has;
  v19 = v20;
  if ((v18 & 0x400) != 0)
  {
    *(v20 + 22) = self->_subsId;
    *(v20 + 46) |= 0x400u;
    v18 = self->_has;
    if ((v18 & 8) == 0)
    {
LABEL_24:
      if ((v18 & 0x10) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else if ((v18 & 8) == 0)
  {
    goto LABEL_24;
  }

  *(v20 + 12) = self->_numSubs;
  *(v20 + 46) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_25:
    *(v20 + 16) = self->_psPref;
    *(v20 + 46) |= 0x10u;
  }

LABEL_26:
  if (self->_plmn)
  {
    [v20 setPlmn:?];
    v19 = v20;
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
    *(v5 + 46) |= 1u;
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_38;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 21) = self->_roamStatus;
  *(v5 + 46) |= 0x200u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v5 + 8) = self->_hMCC;
  *(v5 + 46) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v5 + 9) = self->_hMNC;
  *(v5 + 46) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v5 + 17) = self->_rMCC;
  *(v5 + 46) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v5 + 18) = self->_rMNC;
  *(v5 + 46) |= 0x40u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_42:
  *(v5 + 20) = self->_rSID;
  *(v5 + 46) |= 0x100u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_9:
    *(v5 + 19) = self->_rNID;
    *(v5 + 46) |= 0x80u;
  }

LABEL_10:
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = self->_homeSidNidLists;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v39;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v38 + 1) + 8 * i) copyWithZone:a3];
        [v6 addHomeSidNidList:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v10);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = self->_eplmnLists;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v35;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v34 + 1) + 8 * j) copyWithZone:a3];
        [v6 addEplmnList:v19];
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v16);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = self->_ehplmnLists;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v31;
    do
    {
      for (k = 0; k != v22; k = k + 1)
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v30 + 1) + 8 * k) copyWithZone:{a3, v30}];
        [v6 addEhplmnList:v25];
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v22);
  }

  v26 = self->_has;
  if ((v26 & 0x400) == 0)
  {
    if ((v26 & 8) == 0)
    {
      goto LABEL_33;
    }

LABEL_45:
    *(v6 + 12) = self->_numSubs;
    *(v6 + 46) |= 8u;
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  *(v6 + 22) = self->_subsId;
  *(v6 + 46) |= 0x400u;
  v26 = self->_has;
  if ((v26 & 8) != 0)
  {
    goto LABEL_45;
  }

LABEL_33:
  if ((v26 & 0x10) != 0)
  {
LABEL_34:
    *(v6 + 16) = self->_psPref;
    *(v6 + 46) |= 0x10u;
  }

LABEL_35:
  v27 = [(NSData *)self->_plmn copyWithZone:a3, v30];
  v28 = *(v6 + 7);
  *(v6 + 7) = v27;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_65;
  }

  has = self->_has;
  v6 = *(v4 + 46);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_65;
    }
  }

  else if (v6)
  {
LABEL_65:
    v13 = 0;
    goto LABEL_66;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 46) & 0x200) == 0 || self->_roamStatus != *(v4 + 21))
    {
      goto LABEL_65;
    }
  }

  else if ((*(v4 + 46) & 0x200) != 0)
  {
    goto LABEL_65;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_hMCC != *(v4 + 8))
    {
      goto LABEL_65;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_65;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_hMNC != *(v4 + 9))
    {
      goto LABEL_65;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_65;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_rMCC != *(v4 + 17))
    {
      goto LABEL_65;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_65;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_rMNC != *(v4 + 18))
    {
      goto LABEL_65;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_65;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 46) & 0x100) == 0 || self->_rSID != *(v4 + 20))
    {
      goto LABEL_65;
    }
  }

  else if ((*(v4 + 46) & 0x100) != 0)
  {
    goto LABEL_65;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_rNID != *(v4 + 19))
    {
      goto LABEL_65;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_65;
  }

  homeSidNidLists = self->_homeSidNidLists;
  if (homeSidNidLists | *(v4 + 5) && ![(NSMutableArray *)homeSidNidLists isEqual:?])
  {
    goto LABEL_65;
  }

  eplmnLists = self->_eplmnLists;
  if (eplmnLists | *(v4 + 3))
  {
    if (![(NSMutableArray *)eplmnLists isEqual:?])
    {
      goto LABEL_65;
    }
  }

  ehplmnLists = self->_ehplmnLists;
  if (ehplmnLists | *(v4 + 2))
  {
    if (![(NSMutableArray *)ehplmnLists isEqual:?])
    {
      goto LABEL_65;
    }
  }

  v10 = self->_has;
  v11 = *(v4 + 46);
  if ((v10 & 0x400) != 0)
  {
    if ((*(v4 + 46) & 0x400) == 0 || self->_subsId != *(v4 + 22))
    {
      goto LABEL_65;
    }
  }

  else if ((*(v4 + 46) & 0x400) != 0)
  {
    goto LABEL_65;
  }

  if ((v10 & 8) != 0)
  {
    if ((v11 & 8) == 0 || self->_numSubs != *(v4 + 12))
    {
      goto LABEL_65;
    }
  }

  else if ((v11 & 8) != 0)
  {
    goto LABEL_65;
  }

  if ((v10 & 0x10) != 0)
  {
    if ((v11 & 0x10) == 0 || self->_psPref != *(v4 + 16))
    {
      goto LABEL_65;
    }
  }

  else if ((v11 & 0x10) != 0)
  {
    goto LABEL_65;
  }

  plmn = self->_plmn;
  if (plmn | *(v4 + 7))
  {
    v13 = [(NSData *)plmn isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_66:

  return v13;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v19 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x200) != 0)
    {
LABEL_3:
      v18 = 2654435761 * self->_roamStatus;
      if ((has & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v19 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_3;
    }
  }

  v18 = 0;
  if ((has & 2) != 0)
  {
LABEL_4:
    v17 = 2654435761 * self->_hMCC;
    if ((has & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v17 = 0;
  if ((has & 4) != 0)
  {
LABEL_5:
    v4 = 2654435761 * self->_hMNC;
    if ((has & 0x20) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v4 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_6:
    v5 = 2654435761 * self->_rMCC;
    if ((has & 0x40) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v5 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_7:
    v6 = 2654435761 * self->_rMNC;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v7 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_15:
  v6 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v7 = 2654435761 * self->_rSID;
  if ((has & 0x80) != 0)
  {
LABEL_9:
    v8 = 2654435761 * self->_rNID;
    goto LABEL_18;
  }

LABEL_17:
  v8 = 0;
LABEL_18:
  v9 = [(NSMutableArray *)self->_homeSidNidLists hash];
  v10 = [(NSMutableArray *)self->_eplmnLists hash];
  v11 = [(NSMutableArray *)self->_ehplmnLists hash];
  v12 = self->_has;
  if ((v12 & 0x400) == 0)
  {
    v13 = 0;
    if ((v12 & 8) != 0)
    {
      goto LABEL_20;
    }

LABEL_23:
    v14 = 0;
    if ((v12 & 0x10) != 0)
    {
      goto LABEL_21;
    }

LABEL_24:
    v15 = 0;
    return v18 ^ v19 ^ v17 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v14 ^ v15 ^ [(NSData *)self->_plmn hash];
  }

  v13 = 2654435761 * self->_subsId;
  if ((v12 & 8) == 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  v14 = 2654435761 * self->_numSubs;
  if ((v12 & 0x10) == 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  v15 = 2654435761 * self->_psPref;
  return v18 ^ v19 ^ v17 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v14 ^ v15 ^ [(NSData *)self->_plmn hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 46);
  if (v6)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v6 = *(v4 + 46);
    if ((v6 & 0x200) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  else if ((*(v4 + 46) & 0x200) == 0)
  {
    goto LABEL_3;
  }

  self->_roamStatus = *(v4 + 21);
  *&self->_has |= 0x200u;
  v6 = *(v4 + 46);
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_hMCC = *(v4 + 8);
  *&self->_has |= 2u;
  v6 = *(v4 + 46);
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_hMNC = *(v4 + 9);
  *&self->_has |= 4u;
  v6 = *(v4 + 46);
  if ((v6 & 0x20) == 0)
  {
LABEL_6:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_rMCC = *(v4 + 17);
  *&self->_has |= 0x20u;
  v6 = *(v4 + 46);
  if ((v6 & 0x40) == 0)
  {
LABEL_7:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_rMNC = *(v4 + 18);
  *&self->_has |= 0x40u;
  v6 = *(v4 + 46);
  if ((v6 & 0x100) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_44:
  self->_rSID = *(v4 + 20);
  *&self->_has |= 0x100u;
  if ((*(v4 + 46) & 0x80) != 0)
  {
LABEL_9:
    self->_rNID = *(v4 + 19);
    *&self->_has |= 0x80u;
  }

LABEL_10:
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = *(v4 + 5);
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(CellularRegisteredPlmnStatus *)self addHomeSidNidList:*(*(&v31 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v9);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = *(v5 + 3);
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(CellularRegisteredPlmnStatus *)self addEplmnList:*(*(&v27 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v14);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = *(v5 + 2);
  v18 = [v17 countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v24;
    do
    {
      for (k = 0; k != v19; k = k + 1)
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(CellularRegisteredPlmnStatus *)self addEhplmnList:*(*(&v23 + 1) + 8 * k), v23];
      }

      v19 = [v17 countByEnumeratingWithState:&v23 objects:v35 count:16];
    }

    while (v19);
  }

  v22 = *(v5 + 46);
  if ((v22 & 0x400) != 0)
  {
    self->_subsId = *(v5 + 22);
    *&self->_has |= 0x400u;
    v22 = *(v5 + 46);
    if ((v22 & 8) == 0)
    {
LABEL_33:
      if ((v22 & 0x10) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  else if ((v22 & 8) == 0)
  {
    goto LABEL_33;
  }

  self->_numSubs = *(v5 + 12);
  *&self->_has |= 8u;
  if ((*(v5 + 46) & 0x10) != 0)
  {
LABEL_34:
    self->_psPref = *(v5 + 16);
    *&self->_has |= 0x10u;
  }

LABEL_35:
  if (*(v5 + 7))
  {
    [(CellularRegisteredPlmnStatus *)self setPlmn:?];
  }
}

@end