@interface PDDPEEServiceConfig
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDefaultSyncZoneNames:(id)a3;
- (void)addServiceBag:(id)a3;
- (void)addZoneSubscriptions:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAllowSharingOutsideOrg:(BOOL)a3;
- (void)setHasAnalyticsOptedIn:(BOOL)a3;
- (void)setHasClassroomClassicAdHocModeEnabled:(BOOL)a3;
- (void)setHasDisableRosterSync:(BOOL)a3;
- (void)setHasIsRosterSearchAllowed:(BOOL)a3;
- (void)setHasSearchCacheTtl:(BOOL)a3;
- (void)setHasSearchLimitForGroupMemberSearch:(BOOL)a3;
- (void)setHasSyncFetchInterval:(BOOL)a3;
- (void)setHasUseServerForRosterSearch:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPEEServiceConfig

- (void)addZoneSubscriptions:(id)a3
{
  v4 = a3;
  zoneSubscriptions = self->_zoneSubscriptions;
  v8 = v4;
  if (!zoneSubscriptions)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_zoneSubscriptions;
    self->_zoneSubscriptions = v6;

    v4 = v8;
    zoneSubscriptions = self->_zoneSubscriptions;
  }

  [(NSMutableArray *)zoneSubscriptions addObject:v4];
}

- (void)addServiceBag:(id)a3
{
  v4 = a3;
  serviceBags = self->_serviceBags;
  v8 = v4;
  if (!serviceBags)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_serviceBags;
    self->_serviceBags = v6;

    v4 = v8;
    serviceBags = self->_serviceBags;
  }

  [(NSMutableArray *)serviceBags addObject:v4];
}

- (void)setHasIsRosterSearchAllowed:(BOOL)a3
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

- (void)setHasUseServerForRosterSearch:(BOOL)a3
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

- (void)addDefaultSyncZoneNames:(id)a3
{
  v4 = a3;
  defaultSyncZoneNames = self->_defaultSyncZoneNames;
  v8 = v4;
  if (!defaultSyncZoneNames)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_defaultSyncZoneNames;
    self->_defaultSyncZoneNames = v6;

    v4 = v8;
    defaultSyncZoneNames = self->_defaultSyncZoneNames;
  }

  [(NSMutableArray *)defaultSyncZoneNames addObject:v4];
}

- (void)setHasSyncFetchInterval:(BOOL)a3
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

- (void)setHasSearchCacheTtl:(BOOL)a3
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

- (void)setHasAnalyticsOptedIn:(BOOL)a3
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

- (void)setHasAllowSharingOutsideOrg:(BOOL)a3
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

- (void)setHasClassroomClassicAdHocModeEnabled:(BOOL)a3
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

- (void)setHasSearchLimitForGroupMemberSearch:(BOOL)a3
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

- (void)setHasDisableRosterSync:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPEEServiceConfig;
  v3 = [(PDDPEEServiceConfig *)&v7 description];
  v4 = [(PDDPEEServiceConfig *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  serviceId = self->_serviceId;
  if (serviceId)
  {
    [v3 setObject:serviceId forKey:@"service_id"];
  }

  personlinkServiceContext = self->_personlinkServiceContext;
  if (personlinkServiceContext)
  {
    [v4 setObject:personlinkServiceContext forKey:@"personlink_service_context"];
  }

  zoneSubscriptions = self->_zoneSubscriptions;
  if (zoneSubscriptions)
  {
    [v4 setObject:zoneSubscriptions forKey:@"zone_subscriptions"];
  }

  if ([(NSMutableArray *)self->_serviceBags count])
  {
    v8 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_serviceBags, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = self->_serviceBags;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v30;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v29 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v11);
    }

    [v4 setObject:v8 forKey:@"service_bag"];
  }

  has = self->_has;
  if ((has & 0x100) != 0)
  {
    v21 = [NSNumber numberWithBool:self->_isRosterSearchAllowed];
    [v4 setObject:v21 forKey:@"is_roster_search_allowed"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_18:
      if ((has & 0x200) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_18;
  }

  v22 = [NSNumber numberWithInt:self->_minimumSearchKeyLength, v29];
  [v4 setObject:v22 forKey:@"minimum_search_key_length"];

  if ((*&self->_has & 0x200) != 0)
  {
LABEL_19:
    v16 = [NSNumber numberWithBool:self->_useServerForRosterSearch, v29];
    [v4 setObject:v16 forKey:@"use_server_for_roster_search"];
  }

LABEL_20:
  defaultSyncZoneNames = self->_defaultSyncZoneNames;
  if (defaultSyncZoneNames)
  {
    [v4 setObject:defaultSyncZoneNames forKey:@"default_sync_zone_names"];
  }

  v18 = self->_has;
  if ((v18 & 8) != 0)
  {
    v23 = [NSNumber numberWithInt:self->_syncFetchInterval];
    [v4 setObject:v23 forKey:@"sync_fetch_interval"];

    v18 = self->_has;
    if ((v18 & 2) == 0)
    {
LABEL_24:
      if ((v18 & 0x20) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_38;
    }
  }

  else if ((v18 & 2) == 0)
  {
    goto LABEL_24;
  }

  v24 = [NSNumber numberWithInt:self->_searchCacheTtl, v29];
  [v4 setObject:v24 forKey:@"search_cache_ttl"];

  v18 = self->_has;
  if ((v18 & 0x20) == 0)
  {
LABEL_25:
    if ((v18 & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_39;
  }

LABEL_38:
  v25 = [NSNumber numberWithBool:self->_analyticsOptedIn, v29];
  [v4 setObject:v25 forKey:@"analytics_opted_in"];

  v18 = self->_has;
  if ((v18 & 0x10) == 0)
  {
LABEL_26:
    if ((v18 & 0x40) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_40;
  }

LABEL_39:
  v26 = [NSNumber numberWithBool:self->_allowSharingOutsideOrg, v29];
  [v4 setObject:v26 forKey:@"allow_sharing_outside_org"];

  v18 = self->_has;
  if ((v18 & 0x40) == 0)
  {
LABEL_27:
    if ((v18 & 4) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_41;
  }

LABEL_40:
  v27 = [NSNumber numberWithBool:self->_classroomClassicAdHocModeEnabled, v29];
  [v4 setObject:v27 forKey:@"classroom_classic_ad_hoc_mode_enabled"];

  v18 = self->_has;
  if ((v18 & 4) == 0)
  {
LABEL_28:
    if ((v18 & 0x80) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_41:
  v28 = [NSNumber numberWithInt:self->_searchLimitForGroupMemberSearch, v29];
  [v4 setObject:v28 forKey:@"search_limit_for_group_member_search"];

  if ((*&self->_has & 0x80) != 0)
  {
LABEL_29:
    v19 = [NSNumber numberWithBool:self->_disableRosterSync, v29];
    [v4 setObject:v19 forKey:@"disable_roster_sync"];
  }

LABEL_30:

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_serviceId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_personlinkServiceContext)
  {
    PBDataWriterWriteStringField();
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v5 = self->_zoneSubscriptions;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v44;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v44 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v43 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v7);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v11 = self->_serviceBags;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v40;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v39 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v13);
  }

  has = self->_has;
  if ((has & 0x100) != 0)
  {
    isRosterSearchAllowed = self->_isRosterSearchAllowed;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_21:
      if ((has & 0x200) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_21;
  }

  minimumSearchKeyLength = self->_minimumSearchKeyLength;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_22:
    useServerForRosterSearch = self->_useServerForRosterSearch;
    PBDataWriterWriteBOOLField();
  }

LABEL_23:
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v19 = self->_defaultSyncZoneNames;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v36;
    do
    {
      for (k = 0; k != v21; k = k + 1)
      {
        if (*v36 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v35 + 1) + 8 * k);
        PBDataWriterWriteStringField();
      }

      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v21);
  }

  v25 = self->_has;
  if ((v25 & 8) != 0)
  {
    syncFetchInterval = self->_syncFetchInterval;
    PBDataWriterWriteInt32Field();
    v25 = self->_has;
    if ((v25 & 2) == 0)
    {
LABEL_32:
      if ((v25 & 0x20) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_44;
    }
  }

  else if ((v25 & 2) == 0)
  {
    goto LABEL_32;
  }

  searchCacheTtl = self->_searchCacheTtl;
  PBDataWriterWriteInt32Field();
  v25 = self->_has;
  if ((v25 & 0x20) == 0)
  {
LABEL_33:
    if ((v25 & 0x10) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_45;
  }

LABEL_44:
  analyticsOptedIn = self->_analyticsOptedIn;
  PBDataWriterWriteBOOLField();
  v25 = self->_has;
  if ((v25 & 0x10) == 0)
  {
LABEL_34:
    if ((v25 & 0x40) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_46;
  }

LABEL_45:
  allowSharingOutsideOrg = self->_allowSharingOutsideOrg;
  PBDataWriterWriteBOOLField();
  v25 = self->_has;
  if ((v25 & 0x40) == 0)
  {
LABEL_35:
    if ((v25 & 4) == 0)
    {
      goto LABEL_36;
    }

LABEL_47:
    searchLimitForGroupMemberSearch = self->_searchLimitForGroupMemberSearch;
    PBDataWriterWriteInt32Field();
    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_46:
  classroomClassicAdHocModeEnabled = self->_classroomClassicAdHocModeEnabled;
  PBDataWriterWriteBOOLField();
  v25 = self->_has;
  if ((v25 & 4) != 0)
  {
    goto LABEL_47;
  }

LABEL_36:
  if ((v25 & 0x80) != 0)
  {
LABEL_37:
    disableRosterSync = self->_disableRosterSync;
    PBDataWriterWriteBOOLField();
  }

LABEL_38:
}

- (void)copyTo:(id)a3
{
  v18 = a3;
  if (self->_serviceId)
  {
    [v18 setServiceId:?];
  }

  if (self->_personlinkServiceContext)
  {
    [v18 setPersonlinkServiceContext:?];
  }

  if ([(PDDPEEServiceConfig *)self zoneSubscriptionsCount])
  {
    [v18 clearZoneSubscriptions];
    v4 = [(PDDPEEServiceConfig *)self zoneSubscriptionsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PDDPEEServiceConfig *)self zoneSubscriptionsAtIndex:i];
        [v18 addZoneSubscriptions:v7];
      }
    }
  }

  if ([(PDDPEEServiceConfig *)self serviceBagsCount])
  {
    [v18 clearServiceBags];
    v8 = [(PDDPEEServiceConfig *)self serviceBagsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(PDDPEEServiceConfig *)self serviceBagAtIndex:j];
        [v18 addServiceBag:v11];
      }
    }
  }

  has = self->_has;
  if ((has & 0x100) == 0)
  {
    if ((has & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_33:
    *(v18 + 4) = self->_minimumSearchKeyLength;
    *(v18 + 40) |= 1u;
    if ((*&self->_has & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  *(v18 + 76) = self->_isRosterSearchAllowed;
  *(v18 + 40) |= 0x100u;
  has = self->_has;
  if (has)
  {
    goto LABEL_33;
  }

LABEL_15:
  if ((has & 0x200) != 0)
  {
LABEL_16:
    *(v18 + 77) = self->_useServerForRosterSearch;
    *(v18 + 40) |= 0x200u;
  }

LABEL_17:
  if ([(PDDPEEServiceConfig *)self defaultSyncZoneNamesCount])
  {
    [v18 clearDefaultSyncZoneNames];
    v13 = [(PDDPEEServiceConfig *)self defaultSyncZoneNamesCount];
    if (v13)
    {
      v14 = v13;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(PDDPEEServiceConfig *)self defaultSyncZoneNamesAtIndex:k];
        [v18 addDefaultSyncZoneNames:v16];
      }
    }
  }

  v17 = self->_has;
  if ((v17 & 8) != 0)
  {
    *(v18 + 14) = self->_syncFetchInterval;
    *(v18 + 40) |= 8u;
    v17 = self->_has;
    if ((v17 & 2) == 0)
    {
LABEL_23:
      if ((v17 & 0x20) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_37;
    }
  }

  else if ((v17 & 2) == 0)
  {
    goto LABEL_23;
  }

  *(v18 + 8) = self->_searchCacheTtl;
  *(v18 + 40) |= 2u;
  v17 = self->_has;
  if ((v17 & 0x20) == 0)
  {
LABEL_24:
    if ((v17 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v18 + 73) = self->_analyticsOptedIn;
  *(v18 + 40) |= 0x20u;
  v17 = self->_has;
  if ((v17 & 0x10) == 0)
  {
LABEL_25:
    if ((v17 & 0x40) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v18 + 72) = self->_allowSharingOutsideOrg;
  *(v18 + 40) |= 0x10u;
  v17 = self->_has;
  if ((v17 & 0x40) == 0)
  {
LABEL_26:
    if ((v17 & 4) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v18 + 74) = self->_classroomClassicAdHocModeEnabled;
  *(v18 + 40) |= 0x40u;
  v17 = self->_has;
  if ((v17 & 4) == 0)
  {
LABEL_27:
    if ((v17 & 0x80) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_40:
  *(v18 + 9) = self->_searchLimitForGroupMemberSearch;
  *(v18 + 40) |= 4u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_28:
    *(v18 + 75) = self->_disableRosterSync;
    *(v18 + 40) |= 0x80u;
  }

LABEL_29:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_serviceId copyWithZone:a3];
  v7 = v5[6];
  v5[6] = v6;

  v8 = [(NSString *)self->_personlinkServiceContext copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v10 = self->_zoneSubscriptions;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v40;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v40 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v39 + 1) + 8 * i) copyWithZone:a3];
        [v5 addZoneSubscriptions:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v12);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v16 = self->_serviceBags;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v36;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v36 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v35 + 1) + 8 * j) copyWithZone:a3];
        [v5 addServiceBag:v21];
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v18);
  }

  has = self->_has;
  if ((has & 0x100) != 0)
  {
    *(v5 + 76) = self->_isRosterSearchAllowed;
    *(v5 + 40) |= 0x100u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_17:
      if ((has & 0x200) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_17;
  }

  *(v5 + 4) = self->_minimumSearchKeyLength;
  *(v5 + 40) |= 1u;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_18:
    *(v5 + 77) = self->_useServerForRosterSearch;
    *(v5 + 40) |= 0x200u;
  }

LABEL_19:
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = self->_defaultSyncZoneNames;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v32;
    do
    {
      for (k = 0; k != v25; k = k + 1)
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(&v31 + 1) + 8 * k) copyWithZone:{a3, v31}];
        [v5 addDefaultSyncZoneNames:v28];
      }

      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v25);
  }

  v29 = self->_has;
  if ((v29 & 8) != 0)
  {
    *(v5 + 14) = self->_syncFetchInterval;
    *(v5 + 40) |= 8u;
    v29 = self->_has;
    if ((v29 & 2) == 0)
    {
LABEL_28:
      if ((v29 & 0x20) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_40;
    }
  }

  else if ((v29 & 2) == 0)
  {
    goto LABEL_28;
  }

  *(v5 + 8) = self->_searchCacheTtl;
  *(v5 + 40) |= 2u;
  v29 = self->_has;
  if ((v29 & 0x20) == 0)
  {
LABEL_29:
    if ((v29 & 0x10) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v5 + 73) = self->_analyticsOptedIn;
  *(v5 + 40) |= 0x20u;
  v29 = self->_has;
  if ((v29 & 0x10) == 0)
  {
LABEL_30:
    if ((v29 & 0x40) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v5 + 72) = self->_allowSharingOutsideOrg;
  *(v5 + 40) |= 0x10u;
  v29 = self->_has;
  if ((v29 & 0x40) == 0)
  {
LABEL_31:
    if ((v29 & 4) == 0)
    {
      goto LABEL_32;
    }

LABEL_43:
    *(v5 + 9) = self->_searchLimitForGroupMemberSearch;
    *(v5 + 40) |= 4u;
    if ((*&self->_has & 0x80) == 0)
    {
      return v5;
    }

    goto LABEL_33;
  }

LABEL_42:
  *(v5 + 74) = self->_classroomClassicAdHocModeEnabled;
  *(v5 + 40) |= 0x40u;
  v29 = self->_has;
  if ((v29 & 4) != 0)
  {
    goto LABEL_43;
  }

LABEL_32:
  if ((v29 & 0x80) != 0)
  {
LABEL_33:
    *(v5 + 75) = self->_disableRosterSync;
    *(v5 + 40) |= 0x80u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_76;
  }

  serviceId = self->_serviceId;
  if (serviceId | *(v4 + 6))
  {
    if (![(NSString *)serviceId isEqual:?])
    {
      goto LABEL_76;
    }
  }

  personlinkServiceContext = self->_personlinkServiceContext;
  if (personlinkServiceContext | *(v4 + 3))
  {
    if (![(NSString *)personlinkServiceContext isEqual:?])
    {
      goto LABEL_76;
    }
  }

  zoneSubscriptions = self->_zoneSubscriptions;
  if (zoneSubscriptions | *(v4 + 8))
  {
    if (![(NSMutableArray *)zoneSubscriptions isEqual:?])
    {
      goto LABEL_76;
    }
  }

  serviceBags = self->_serviceBags;
  if (serviceBags | *(v4 + 5))
  {
    if (![(NSMutableArray *)serviceBags isEqual:?])
    {
      goto LABEL_76;
    }
  }

  has = self->_has;
  v10 = *(v4 + 40);
  if ((has & 0x100) != 0)
  {
    if ((*(v4 + 40) & 0x100) == 0)
    {
      goto LABEL_76;
    }

    v11 = *(v4 + 76);
    if (self->_isRosterSearchAllowed)
    {
      if ((*(v4 + 76) & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    else if (*(v4 + 76))
    {
      goto LABEL_76;
    }
  }

  else if ((*(v4 + 40) & 0x100) != 0)
  {
    goto LABEL_76;
  }

  if (has)
  {
    if ((v10 & 1) == 0 || self->_minimumSearchKeyLength != *(v4 + 4))
    {
      goto LABEL_76;
    }
  }

  else if (v10)
  {
    goto LABEL_76;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 40) & 0x200) == 0)
    {
      goto LABEL_76;
    }

    v13 = *(v4 + 77);
    if (self->_useServerForRosterSearch)
    {
      if ((*(v4 + 77) & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    else if (*(v4 + 77))
    {
      goto LABEL_76;
    }
  }

  else if ((*(v4 + 40) & 0x200) != 0)
  {
    goto LABEL_76;
  }

  defaultSyncZoneNames = self->_defaultSyncZoneNames;
  if (defaultSyncZoneNames | *(v4 + 1))
  {
    if (![(NSMutableArray *)defaultSyncZoneNames isEqual:?])
    {
      goto LABEL_76;
    }

    has = self->_has;
    v10 = *(v4 + 40);
  }

  if ((has & 8) != 0)
  {
    if ((v10 & 8) == 0 || self->_syncFetchInterval != *(v4 + 14))
    {
      goto LABEL_76;
    }
  }

  else if ((v10 & 8) != 0)
  {
    goto LABEL_76;
  }

  if ((has & 2) != 0)
  {
    if ((v10 & 2) == 0 || self->_searchCacheTtl != *(v4 + 8))
    {
      goto LABEL_76;
    }
  }

  else if ((v10 & 2) != 0)
  {
    goto LABEL_76;
  }

  if ((has & 0x20) != 0)
  {
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_76;
    }

    v14 = *(v4 + 73);
    if (self->_analyticsOptedIn)
    {
      if ((*(v4 + 73) & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    else if (*(v4 + 73))
    {
      goto LABEL_76;
    }
  }

  else if ((v10 & 0x20) != 0)
  {
    goto LABEL_76;
  }

  if ((has & 0x10) != 0)
  {
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_76;
    }

    v15 = *(v4 + 72);
    if (self->_allowSharingOutsideOrg)
    {
      if ((*(v4 + 72) & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    else if (*(v4 + 72))
    {
      goto LABEL_76;
    }
  }

  else if ((v10 & 0x10) != 0)
  {
    goto LABEL_76;
  }

  if ((has & 0x40) != 0)
  {
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_76;
    }

    v16 = *(v4 + 74);
    if (self->_classroomClassicAdHocModeEnabled)
    {
      if ((*(v4 + 74) & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    else if (*(v4 + 74))
    {
      goto LABEL_76;
    }
  }

  else if ((v10 & 0x40) != 0)
  {
    goto LABEL_76;
  }

  if ((has & 4) != 0)
  {
    if ((v10 & 4) == 0 || self->_searchLimitForGroupMemberSearch != *(v4 + 9))
    {
      goto LABEL_76;
    }
  }

  else if ((v10 & 4) != 0)
  {
    goto LABEL_76;
  }

  if ((has & 0x80) != 0)
  {
    if ((v10 & 0x80) != 0)
    {
      if (self->_disableRosterSync)
      {
        if ((*(v4 + 75) & 1) == 0)
        {
          goto LABEL_76;
        }
      }

      else if (*(v4 + 75))
      {
        goto LABEL_76;
      }

      v17 = 1;
      goto LABEL_77;
    }

LABEL_76:
    v17 = 0;
    goto LABEL_77;
  }

  v17 = (v10 & 0x80) == 0;
LABEL_77:

  return v17;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_serviceId hash];
  v4 = [(NSString *)self->_personlinkServiceContext hash];
  v5 = [(NSMutableArray *)self->_zoneSubscriptions hash];
  v6 = [(NSMutableArray *)self->_serviceBags hash];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
    v8 = 0;
    if (has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v8 = 2654435761 * self->_isRosterSearchAllowed;
  if ((has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = 2654435761 * self->_minimumSearchKeyLength;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_4:
    v10 = 2654435761 * self->_useServerForRosterSearch;
    goto LABEL_8;
  }

LABEL_7:
  v10 = 0;
LABEL_8:
  v11 = [(NSMutableArray *)self->_defaultSyncZoneNames hash];
  v12 = self->_has;
  if ((v12 & 8) != 0)
  {
    v13 = 2654435761 * self->_syncFetchInterval;
    if ((v12 & 2) != 0)
    {
LABEL_10:
      v14 = 2654435761 * self->_searchCacheTtl;
      if ((v12 & 0x20) != 0)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v13 = 0;
    if ((v12 & 2) != 0)
    {
      goto LABEL_10;
    }
  }

  v14 = 0;
  if ((v12 & 0x20) != 0)
  {
LABEL_11:
    v15 = 2654435761 * self->_analyticsOptedIn;
    if ((v12 & 0x10) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_18:
  v15 = 0;
  if ((v12 & 0x10) != 0)
  {
LABEL_12:
    v16 = 2654435761 * self->_allowSharingOutsideOrg;
    if ((v12 & 0x40) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

LABEL_19:
  v16 = 0;
  if ((v12 & 0x40) != 0)
  {
LABEL_13:
    v17 = 2654435761 * self->_classroomClassicAdHocModeEnabled;
    if ((v12 & 4) != 0)
    {
      goto LABEL_14;
    }

LABEL_21:
    v18 = 0;
    if ((v12 & 0x80) != 0)
    {
      goto LABEL_15;
    }

LABEL_22:
    v19 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19;
  }

LABEL_20:
  v17 = 0;
  if ((v12 & 4) == 0)
  {
    goto LABEL_21;
  }

LABEL_14:
  v18 = 2654435761 * self->_searchLimitForGroupMemberSearch;
  if ((v12 & 0x80) == 0)
  {
    goto LABEL_22;
  }

LABEL_15:
  v19 = 2654435761 * self->_disableRosterSync;
  return v4 ^ v3 ^ v5 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 6))
  {
    [(PDDPEEServiceConfig *)self setServiceId:?];
  }

  if (*(v4 + 3))
  {
    [(PDDPEEServiceConfig *)self setPersonlinkServiceContext:?];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = *(v4 + 8);
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(PDDPEEServiceConfig *)self addZoneSubscriptions:*(*(&v30 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v7);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = *(v4 + 5);
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(PDDPEEServiceConfig *)self addServiceBag:*(*(&v26 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v12);
  }

  v15 = *(v4 + 40);
  if ((v15 & 0x100) != 0)
  {
    self->_isRosterSearchAllowed = *(v4 + 76);
    *&self->_has |= 0x100u;
    v15 = *(v4 + 40);
    if ((v15 & 1) == 0)
    {
LABEL_21:
      if ((v15 & 0x200) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  else if ((v15 & 1) == 0)
  {
    goto LABEL_21;
  }

  self->_minimumSearchKeyLength = *(v4 + 4);
  *&self->_has |= 1u;
  if ((*(v4 + 40) & 0x200) != 0)
  {
LABEL_22:
    self->_useServerForRosterSearch = *(v4 + 77);
    *&self->_has |= 0x200u;
  }

LABEL_23:
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = *(v4 + 1);
  v17 = [v16 countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      for (k = 0; k != v18; k = k + 1)
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(PDDPEEServiceConfig *)self addDefaultSyncZoneNames:*(*(&v22 + 1) + 8 * k), v22];
      }

      v18 = [v16 countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v18);
  }

  v21 = *(v4 + 40);
  if ((v21 & 8) != 0)
  {
    self->_syncFetchInterval = *(v4 + 14);
    *&self->_has |= 8u;
    v21 = *(v4 + 40);
    if ((v21 & 2) == 0)
    {
LABEL_32:
      if ((v21 & 0x20) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_44;
    }
  }

  else if ((v21 & 2) == 0)
  {
    goto LABEL_32;
  }

  self->_searchCacheTtl = *(v4 + 8);
  *&self->_has |= 2u;
  v21 = *(v4 + 40);
  if ((v21 & 0x20) == 0)
  {
LABEL_33:
    if ((v21 & 0x10) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_analyticsOptedIn = *(v4 + 73);
  *&self->_has |= 0x20u;
  v21 = *(v4 + 40);
  if ((v21 & 0x10) == 0)
  {
LABEL_34:
    if ((v21 & 0x40) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_allowSharingOutsideOrg = *(v4 + 72);
  *&self->_has |= 0x10u;
  v21 = *(v4 + 40);
  if ((v21 & 0x40) == 0)
  {
LABEL_35:
    if ((v21 & 4) == 0)
    {
      goto LABEL_36;
    }

LABEL_47:
    self->_searchLimitForGroupMemberSearch = *(v4 + 9);
    *&self->_has |= 4u;
    if ((*(v4 + 40) & 0x80) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_46:
  self->_classroomClassicAdHocModeEnabled = *(v4 + 74);
  *&self->_has |= 0x40u;
  v21 = *(v4 + 40);
  if ((v21 & 4) != 0)
  {
    goto LABEL_47;
  }

LABEL_36:
  if ((v21 & 0x80) != 0)
  {
LABEL_37:
    self->_disableRosterSync = *(v4 + 75);
    *&self->_has |= 0x80u;
  }

LABEL_38:
}

@end