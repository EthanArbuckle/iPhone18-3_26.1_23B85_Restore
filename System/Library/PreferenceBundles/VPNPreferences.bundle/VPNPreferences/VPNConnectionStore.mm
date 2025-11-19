@interface VPNConnectionStore
+ (__CFString)vpnTypeFromConnectionType:(unint64_t)a3;
+ (id)applicationNameForConfiguration:(id)a3 withGrade:(unint64_t)a4;
+ (id)sharedInstance;
+ (unint64_t)connectionTypeFromVPNType:(__CFString *)a3;
- (BOOL)alwaysOnToggleEnabledForServiceID:(id)a3;
- (BOOL)configurationIsManaged:(id)a3;
- (BOOL)createVPNWithOptions:(id)a3;
- (BOOL)deleteVPNWithServiceID:(id)a3;
- (BOOL)disableToggle;
- (BOOL)gradePresent:(unint64_t)a3;
- (BOOL)isActiveVPNID:(id)a3 withGrade:(unint64_t)a4;
- (BOOL)isEnabledWithServiceID:(id)a3 withGrade:(unint64_t)a4;
- (BOOL)isMDM:(id)a3;
- (BOOL)isProfileBacked:(id)a3;
- (BOOL)isTypeEnabledWithServiceID:(id)a3 withGrade:(unint64_t)a4 outProviderAvailable:(BOOL *)a5;
- (BOOL)isUserCreatedVPN:(id)a3;
- (BOOL)setOptions:(id)a3 toConfiguration:(id)a4;
- (BOOL)uiToggleAllowedWithServiceID:(id)a3 withGrade:(unint64_t)a4;
- (BOOL)updateVPNWithServiceID:(id)a3 withOptions:(id)a4;
- (VPNConnectionStore)init;
- (id)_defaultDictForType:(unint64_t)a3;
- (id)activeVPNIDWithGrade:(unint64_t)a3;
- (id)activeVPNIDsWithGrade:(unint64_t)a3;
- (id)aggregateAlert;
- (id)aggregateStatusText;
- (id)aggregateStatusText:(unint64_t)a3;
- (id)appNameForServiceID:(id)a3 withGrade:(unint64_t)a4;
- (id)connectionWithServiceID:(id)a3 withGrade:(unint64_t)a4;
- (id)copyActiveVPNIDsFromPrefsForGrade:(unint64_t)a3;
- (id)currentConnection:(BOOL)a3 withGrade:(unint64_t)a4;
- (id)currentConnectionWithGrade:(unint64_t)a3;
- (id)currentConnectionsWithGrade:(unint64_t)a3;
- (id)currentPerAppConnections:(BOOL)a3 withGrade:(unint64_t)a4;
- (id)getProfileIDForServiceID:(id)a3;
- (id)optionsForServiceID:(id)a3 withGrade:(unint64_t)a4;
- (id)organizationForService:(__SCNetworkService *)a3;
- (id)organizationForServiceID:(id)a3;
- (id)vpnServiceCountWithGrade:(unint64_t)a3;
- (id)vpnServiceTotalCount;
- (id)vpnServicesForCurrentSetWithGrade:(unint64_t)a3 excludePerApp:(BOOL)a4;
- (unint64_t)aggregateStatus;
- (unint64_t)aggregateStatus:(unint64_t)a3;
- (unint64_t)currentOnlyConnectionGrade;
- (void)_configurationChanged;
- (void)_connectionsChanged;
- (void)dealloc;
- (void)iterateContentFilterServicesWithBlock:(id)a3;
- (void)iterateURLFilterServicesWithBlock:(id)a3;
- (void)removeConnection:(id)a3 withGrade:(unint64_t)a4;
- (void)setActiveVPNID:(id)a3 withGrade:(unint64_t)a4;
- (void)triggerLocalAuthenticationForConfigurationIdentifier:(id)a3 requestedByApp:(id)a4;
@end

@implementation VPNConnectionStore

+ (unint64_t)connectionTypeFromVPNType:(__CFString *)a3
{
  v4 = CFStringCompare(a3, kSCEntNetL2TP, 1uLL) != kCFCompareEqualTo;
  if (CFStringCompare(a3, kSCEntNetIPSec, 1uLL) == kCFCompareEqualTo)
  {
    return 2;
  }

  if (CFStringCompare(a3, @"VPN", 1uLL) == kCFCompareEqualTo)
  {
    return 3;
  }

  v5 = 4 * v4;
  if (CFStringCompare(a3, @"IKEv2", 1uLL))
  {
    return v5;
  }

  else
  {
    return 4;
  }
}

+ (__CFString)vpnTypeFromConnectionType:(unint64_t)a3
{
  if (!a3)
  {
    return kSCEntNetL2TP;
  }

  v3 = @"IKEv2";
  if (a3 == 2)
  {
    v3 = @"IPsec";
  }

  if (a3 == 3)
  {
    return @"VPN";
  }

  else
  {
    return v3;
  }
}

+ (id)sharedInstance
{
  v2 = qword_4A060;
  if (!qword_4A060)
  {
    v3 = objc_alloc_init(VPNConnectionStore);
    v4 = qword_4A060;
    qword_4A060 = v3;

    v2 = qword_4A060;
  }

  return v2;
}

- (void)_configurationChanged
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8640;
  block[3] = &unk_40B38;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (VPNConnectionStore)init
{
  v18.receiver = self;
  v18.super_class = VPNConnectionStore;
  v2 = [(VPNConnectionStore *)&v18 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = dispatch_queue_create("MobileVPN Settings", 0);
    storeQueue = v2->_storeQueue;
    v2->_storeQueue = v3;

    configurations = v2->_configurations;
    v2->_configurations = 0;

    v6 = objc_alloc_init(NEConfigurationManager);
    configurationManager = v2->_configurationManager;
    v2->_configurationManager = v6;

    v8 = v2->_configurationManager;
    v9 = v2->_storeQueue;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_89D0;
    v15[3] = &unk_40EC8;
    objc_copyWeak(&v16, &location);
    [(NEConfigurationManager *)v8 loadConfigurationsWithCompletionQueue:v9 handler:v15];
    v10 = v2->_configurationManager;
    v11 = v2->_storeQueue;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_8A60;
    v13[3] = &unk_40EF0;
    objc_copyWeak(&v14, &location);
    [(NEConfigurationManager *)v10 setChangedQueue:v11 andHandler:v13];
    v2->_vpnServiceCountDirty = 1;
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  v3 = qword_4A060;
  if (qword_4A060 == self)
  {
    qword_4A060 = 0;
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.springboard.vpn-changed", 0);
  v5.receiver = self;
  v5.super_class = VPNConnectionStore;
  [(VPNConnectionStore *)&v5 dealloc];
}

- (BOOL)disableToggle
{
  v3 = 0;
  v4 = 1;
  v5 = 0uLL;
  do
  {
    v15 = v5;
    v16 = v5;
    *(&v13 + 1) = *(&v5 + 1);
    v14 = v5;
    v6 = [(VPNConnectionStore *)self currentConnectionsWithGrade:v3, v5];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if ([v11 onDemandAction] == &dword_0 + 2 || !objc_msgSend(v11, "isProviderAvailable"))
          {

            return v4;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v4 = v3++ < 9;
    v5 = 0uLL;
  }

  while (v3 != 10);
  return 0;
}

- (unint64_t)aggregateStatus
{
  v3 = 0;
  v4 = 1;
  do
  {
    if ((v3 & 0xE) != 4 && v3 != 6 && v3 != 9)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v7 = [(VPNConnectionStore *)self currentConnectionsWithGrade:v3, 0];
      v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v19;
        while (2)
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v18 + 1) + 8 * i);
            if (v12)
            {
              v13 = [v12 status];
              if (v13 != v4)
              {
                if (v13 == (&dword_4 + 2))
                {
                  v4 = 6;
                }

                else
                {
                  if (v13 == (&dword_0 + 3))
                  {
                    v4 = 3;
                    goto LABEL_40;
                  }

                  if (v13 != (&dword_0 + 2) || v4 == 6)
                  {
                    if (v4 != 2 && v4 != 6 && v13 == &dword_4)
                    {
                      v4 = 4;
                    }
                  }

                  else
                  {
                    v4 = 2;
                  }
                }
              }
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

LABEL_40:
    }

    ++v3;
  }

  while (v3 != 10);
  return v4;
}

- (unint64_t)aggregateStatus:(unint64_t)a3
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(VPNConnectionStore *)self currentConnectionsWithGrade:a3, 0];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    v7 = 1;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if (v9)
        {
          v10 = [v9 status];
          if (v10 != v7)
          {
            if (v10 == (&dword_4 + 2))
            {
              v7 = 6;
            }

            else
            {
              if (v10 == (&dword_0 + 3))
              {
                v7 = 3;
                goto LABEL_30;
              }

              if (v10 != (&dword_0 + 2) || v7 == 6)
              {
                if (v7 != 2 && v7 != 6 && v10 == &dword_4)
                {
                  v7 = 4;
                }
              }

              else
              {
                v7 = 2;
              }
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 1;
  }

LABEL_30:

  return v7;
}

- (id)aggregateAlert
{
  v3 = 0;
  v4 = 0uLL;
  do
  {
    v15 = v4;
    v16 = v4;
    *(&v13 + 1) = *(&v4 + 1);
    v14 = v4;
    v5 = [(VPNConnectionStore *)self currentConnectionsWithGrade:v3, v4];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if (v10)
          {
            v11 = [v10 alertText];
            if ([(__CFString *)v11 length])
            {

              goto LABEL_15;
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    ++v3;
    v4 = 0uLL;
  }

  while (v3 != 10);
  v11 = &stru_411E8;
LABEL_15:

  return v11;
}

- (id)aggregateStatusText
{
  v3 = [(VPNConnectionStore *)self aggregateStatus];
  if (v3 == 1)
  {
    v4 = [(VPNConnectionStore *)self aggregateAlert];
    if ([v4 length])
    {
      goto LABEL_5;
    }
  }

  v4 = [VPNConnection statusTextForStatus:v3];
LABEL_5:

  return v4;
}

- (id)aggregateStatusText:(unint64_t)a3
{
  v4 = [(VPNConnectionStore *)self aggregateStatus:a3];
  if (v4 == 1)
  {
    v5 = [(VPNConnectionStore *)self aggregateAlert];
    if ([v5 length])
    {
      goto LABEL_5;
    }
  }

  v5 = [VPNConnection statusTextForStatus:v4];
LABEL_5:

  return v5;
}

- (unint64_t)currentOnlyConnectionGrade
{
  v3 = [(VPNConnectionStore *)self vpnServiceTotalCount];
  if ([v3 intValue] == 1)
  {
    v4 = 0;
    while (1)
    {
      v5 = [(VPNConnectionStore *)self currentConnectionWithGrade:v4];

      if (v5)
      {
        break;
      }

      if (++v4 == 10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v4 = 0;
  }

  return v4;
}

- (BOOL)isUserCreatedVPN:(id)a3
{
  v4 = a3;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = [(VPNConnectionStore *)self configurations];
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v6)
  {
    v7 = *v33;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v33 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v32 + 1) + 8 * v8);
      if ([v9 grade] != &dword_0 + 3)
      {
        v10 = [v9 identifier];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          break;
        }
      }

      if (v6 == ++v8)
      {
        v6 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v6 = v9;

    if (!v6 || ([v6 applicationName], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
    {
      v12 = 0;
      goto LABEL_15;
    }

    v15 = [v6 payloadInfo];
    v16 = [v15 profileIdentifier];

    if (!v16)
    {
      v12 = 1;
      goto LABEL_15;
    }

    v17 = +[MCProfileConnection sharedConnection];
    v12 = 1;
    v18 = [v17 installedProfilesWithFilterFlags:1];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v5 = v18;
    v19 = [v5 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v29;
      while (2)
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(v5);
          }

          v23 = *(*(&v28 + 1) + 8 * i);
          v24 = [v6 payloadInfo];
          v25 = [v24 profileIdentifier];
          v26 = [v23 identifier];
          v27 = [v25 isEqualToString:v26];

          if (v27)
          {
            v12 = 0;
            goto LABEL_27;
          }
        }

        v20 = [v5 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }

      v12 = 1;
    }

LABEL_27:
  }

  else
  {
LABEL_10:
    v12 = 0;
  }

LABEL_15:
  return v12;
}

- (BOOL)isProfileBacked:(id)a3
{
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(VPNConnectionStore *)self configurations];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = *v18;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v18 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v17 + 1) + 8 * v8);
      if ([v9 grade] != &dword_0 + 3)
      {
        v10 = [v9 identifier];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          break;
        }
      }

      if (v6 == ++v8)
      {
        v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v6 = v9;

    if (!v6)
    {
      LOBYTE(v12) = 0;
      goto LABEL_16;
    }

    v13 = [v6 payloadInfo];
    v12 = [v13 profileIdentifier];

    if (!v12)
    {
      goto LABEL_16;
    }

    v12 = +[MCProfileConnection sharedConnection];
    v14 = [v6 payloadInfo];
    v15 = [v14 profileIdentifier];
    v5 = [v12 installedProfileWithIdentifier:v15];

    LOBYTE(v12) = v5 != 0;
  }

  else
  {
LABEL_10:
    LOBYTE(v12) = 0;
  }

LABEL_16:
  return v12;
}

- (void)_connectionsChanged
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"VPNConnectionsChangedNotification" object:self];
}

- (void)removeConnection:(id)a3 withGrade:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 != 2)
  {
    gradeCurrentConnection = self->_gradeCurrentConnection;
    v9 = self->_gradeCurrentConnection[a4];
    v13 = v7;
    if (v9 == v7)
    {
      [(VPNConnection *)v9 disconnect];
      v10 = gradeCurrentConnection[a4];
      gradeCurrentConnection[a4] = 0;

      v7 = v13;
      self->_gradeCurrentConnectionHasBeenSet[a4] = 0;
    }

    v11 = self->_connectionDict[a4];
    v12 = [(VPNConnection *)v7 serviceID];
    [(NSMutableDictionary *)v11 removeObjectForKey:v12];

    v6 = [(VPNConnectionStore *)self _connectionsChanged];
    v7 = v13;
  }

  _objc_release_x1(v6, v7);
}

- (id)currentConnection:(BOOL)a3 withGrade:(unint64_t)a4
{
  if (a4 == 2)
  {
    v5 = 0;
  }

  else
  {
    if (a3 && !self->_gradeCurrentConnectionHasBeenSet[a4])
    {
      gradeCurrentConnection = self->_gradeCurrentConnection;
      if (!self->_gradeCurrentConnection[a4])
      {
        v10 = [(VPNConnectionStore *)self activeVPNIDWithGrade:a4];
        v11 = [(VPNConnectionStore *)self connectionWithServiceID:v10 withGrade:a4];
        v12 = gradeCurrentConnection[a4];
        gradeCurrentConnection[a4] = v11;

        self->_gradeCurrentConnectionHasBeenSet[a4] = 1;
      }
    }

    v5 = self->_gradeCurrentConnection[a4];
  }

  return v5;
}

- (id)currentPerAppConnections:(BOOL)a3 withGrade:(unint64_t)a4
{
  if (a3 && !self->_gradeCurrentConnectionHasBeenSet[a4] && !self->_gradeCurrentConnection[a4])
  {
    gradeCurrentConnection = self->_gradeCurrentConnection;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [(VPNConnectionStore *)self activeVPNIDsWithGrade:a4];
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v19;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = [(VPNConnectionStore *)self connectionWithServiceID:*(*(&v18 + 1) + 8 * i) withGrade:a4];
          if (v12)
          {
            if (!v9)
            {
              v9 = objc_alloc_init(NSMutableArray);
            }

            [(VPNConnection *)v9 addObject:v12];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v13 = gradeCurrentConnection[a4];
    gradeCurrentConnection[a4] = v9;
    v14 = v9;

    self->_gradeCurrentConnectionHasBeenSet[a4] = 1;
  }

  v15 = self->_gradeCurrentConnection[a4];

  return v15;
}

- (id)currentConnectionWithGrade:(unint64_t)a3
{
  v6 = 0;
  if (a3 != 2 && a3 != 8)
  {
    v6 = [(VPNConnectionStore *)self currentConnection:1 withGrade:a3, v3];
  }

  return v6;
}

- (id)currentConnectionsWithGrade:(unint64_t)a3
{
  if (a3 == 8 || a3 == 2)
  {
    v3 = [(VPNConnectionStore *)self currentPerAppConnections:1 withGrade:a3];
  }

  else
  {
    v4 = [(VPNConnectionStore *)self currentConnection:1 withGrade:a3];
    v5 = v4;
    if (v4)
    {
      v7 = v4;
      v3 = [NSArray arrayWithObjects:&v7 count:1];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)_defaultDictForType:(unint64_t)a3
{
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = v5;
  if (!a3)
  {
    [v5 setValue:kSCPropNetIPSecSharedSecret forKey:@"AuthenticationMethod"];
  }

  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = [NSMutableDictionary alloc];
  v10 = [NSNumber numberWithInt:1];
  v11 = [NSNumber numberWithInt:0];
  v12 = [NSNumber numberWithInt:1];
  v13 = [NSNumber numberWithInt:0];
  v14 = [v9 initWithObjectsAndKeys:{v10, @"ConnectByDefault", v11, @"Alternate Number", v12, @"DO NOT SAVE", v13, @"Main Number", v8, @"EAP", v7, @"L2TP", v4, kSCEntNetPPP, v6, kSCValNetL2TPTransportIPSec, 0}];

  return v14;
}

- (BOOL)setOptions:(id)a3 toConfiguration:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:@"VPNGrade"];
  v8 = [v7 unsignedIntegerValue];

  v9 = [v5 objectForKeyedSubscript:@"VPNType"];
  v10 = [v9 unsignedIntegerValue];

  if (v8 == &dword_0 + 2)
  {
    v19 = [v5 objectForKeyedSubscript:@"VPNOnDemandEnabled"];

    if (v19)
    {
      v18 = [v5 objectForKeyedSubscript:@"VPNOnDemandEnabled"];
      v24 = [v18 BOOLValue];
      v25 = [v6 appVPN];
      [v25 setOnDemandEnabled:v24];

LABEL_15:
      goto LABEL_16;
    }
  }

  else
  {
    if (v8 != &dword_0 + 1)
    {
      if (v8)
      {
LABEL_62:
        LOBYTE(v19) = 0;
        goto LABEL_63;
      }

      v11 = [v6 VPN];

      if (!v11)
      {
        v12 = objc_alloc_init(NEVPN);
        [v6 setVPN:v12];
      }

      v13 = [v5 objectForKeyedSubscript:@"VPNOnDemandEnabled"];

      if (v13)
      {
        v14 = [v5 objectForKeyedSubscript:@"VPNOnDemandEnabled"];
        v15 = [v14 BOOLValue];

        v16 = [v6 VPN];
        v17 = [v16 onDemandRules];

        if (!v17)
        {
          v18 = sub_46D8();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_29CA8();
          }

          goto LABEL_15;
        }

LABEL_12:
        v23 = [v6 VPN];
        [v23 setOnDemandEnabled:v15];

LABEL_16:
        LOBYTE(v19) = 1;
        goto LABEL_63;
      }

      if (v10 == &dword_4)
      {
        v38 = [v6 VPN];
        v39 = [v38 protocol];

        if (v39)
        {
          v40 = [v6 VPN];
          v41 = [v40 protocol];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v55 = objc_alloc_init(NEVPNProtocolIKEv2);
          [v55 setDefaultsForUIConfiguration];
          v56 = [v6 VPN];
          [v56 setProtocol:v55];
        }

        v57 = [v6 VPN];
        v53 = [v57 protocol];

        v58 = [v5 objectForKeyedSubscript:@"VPNLocalIdentifier"];
        if (v58 && (v59 = v58, [v5 objectForKeyedSubscript:@"VPNLocalIdentifier"], v60 = objc_claimAutoreleasedReturnValue(), v61 = objc_msgSend(v60, "length"), v60, v59, v61))
        {
          v62 = [v5 objectForKeyedSubscript:@"VPNLocalIdentifier"];
          [v53 setLocalIdentifier:v62];
        }

        else
        {
          [v53 setLocalIdentifier:0];
        }

        v63 = [v5 objectForKeyedSubscript:@"VPNRemoteIdentifier"];
        if (v63 && (v64 = v63, [v5 objectForKeyedSubscript:@"VPNRemoteIdentifier"], v65 = objc_claimAutoreleasedReturnValue(), v66 = objc_msgSend(v65, "length"), v65, v64, v66))
        {
          v67 = [v5 objectForKeyedSubscript:@"VPNRemoteIdentifier"];
          [v53 setRemoteIdentifier:v67];
        }

        else
        {
          [v53 setRemoteIdentifier:0];
        }

        v68 = [v5 objectForKeyedSubscript:@"eapType"];

        if (v68)
        {
          v69 = [v5 objectForKeyedSubscript:@"eapType"];
          v68 = [v69 unsignedIntegerValue];
        }

        v70 = [v5 objectForKeyedSubscript:@"authType"];

        if (v70)
        {
          v70 = [v5 objectForKeyedSubscript:@"authType"];
          v71 = [v70 unsignedIntegerValue];

          LODWORD(v70) = v71 == &dword_0 + 1;
        }

        if (v68)
        {
          [v53 setUseExtendedAuthentication:1];
          v49 = v68 != &dword_0 + 2;
        }

        else
        {
          [v53 setUseExtendedAuthentication:0];
          v49 = 0;
        }

        if (v70)
        {
          [v53 setAuthenticationMethod:1];
        }

        else
        {
          [v53 setAuthenticationMethod:2];
          v97 = [v5 objectForKeyedSubscript:@"secret"];
          if (v97)
          {
            v98 = v97;
            v99 = [v5 objectForKeyedSubscript:@"secret"];
            v100 = [v99 length];

            if (v100)
            {
              v101 = [v53 sharedSecretKeychainItem];

              if (v101)
              {
                v102 = [v53 sharedSecretKeychainItem];
                v103 = [v102 copyPassword];
                v104 = [v5 objectForKeyedSubscript:@"secret"];
                v105 = [v103 isEqualToString:v104];

                if (v105)
                {
LABEL_103:

                  v152 = [v5 objectForKeyedSubscript:@"dispName"];
                  if (v152)
                  {
                    v153 = v152;
                    v154 = [v5 objectForKeyedSubscript:@"dispName"];
                    v155 = [v154 length];

                    if (v155)
                    {
                      v156 = [v5 objectForKeyedSubscript:@"dispName"];
                      [v6 setName:v156];
                    }
                  }

                  v157 = [v5 objectForKeyedSubscript:@"server"];
                  if (v157)
                  {
                    v158 = v157;
                    v159 = [v5 objectForKeyedSubscript:@"server"];
                    v160 = [v159 length];

                    if (v160)
                    {
                      v161 = [v5 objectForKeyedSubscript:@"server"];
                      v162 = [v6 VPN];
                      v163 = [v162 protocol];
                      [v163 setServerAddress:v161];
                    }
                  }

                  if (v49)
                  {
                    v164 = [v5 objectForKeyedSubscript:@"authorization"];
                    if (v164 && (v165 = v164, [v5 objectForKeyedSubscript:@"authorization"], v166 = objc_claimAutoreleasedReturnValue(), v167 = objc_msgSend(v166, "length"), v166, v165, v167))
                    {
                      v168 = [v5 objectForKeyedSubscript:@"authorization"];
                      v169 = [v6 VPN];
                      v170 = [v169 protocol];
                      [v170 setUsername:v168];
                    }

                    else
                    {
                      v168 = [v6 VPN];
                      v169 = [v168 protocol];
                      [v169 setUsername:0];
                    }

                    v173 = [v5 objectForKeyedSubscript:@"password"];
                    if (v173)
                    {
                      v174 = v173;
                      v175 = [v5 objectForKeyedSubscript:@"password"];
                      v176 = [v175 length];

                      if (v176)
                      {
                        v177 = [v6 VPN];
                        v178 = [v177 protocol];
                        v179 = [v178 passwordKeychainItem];

                        if (v179)
                        {
                          v180 = [v6 VPN];
                          v181 = [v180 protocol];
                          v182 = [v181 passwordKeychainItem];
                          v183 = [v182 copyPassword];

                          v184 = [v5 objectForKeyedSubscript:@"password"];
                          LOBYTE(v181) = [v183 isEqualToString:v184];

                          if (v181)
                          {
                            goto LABEL_123;
                          }
                        }

                        v185 = [v6 VPN];
                        v186 = [v185 protocol];
                        v187 = [v186 passwordKeychainItem];

                        if (v187)
                        {
                          v188 = [v5 objectForKeyedSubscript:@"password"];
                          v189 = [v6 VPN];
                          v190 = [v189 protocol];
                          v191 = [v190 passwordKeychainItem];
                          [v191 setPassword:v188];
                        }

                        else
                        {
                          v234 = [NEKeychainItem alloc];
                          v188 = [v5 objectForKeyedSubscript:@"password"];
                          v189 = [v234 initWithPassword:v188 domain:0];
                          v190 = [v6 VPN];
                          v191 = [v190 protocol];
                          [v191 setPasswordKeychainItem:v189];
                        }

LABEL_122:
LABEL_123:
                        v192 = [v5 objectForKeyedSubscript:@"VPNCertificate"];

                        if (v192)
                        {
                          v193 = [v5 objectForKeyedSubscript:@"VPNCertificate"];
                          v194 = [v6 VPN];
                          v195 = [v194 protocol];
                          [v195 setIdentityReferenceInternal:v193];
                        }

                        else
                        {
                          v193 = [v6 VPN];
                          v194 = [v193 protocol];
                          [v194 setIdentityReferenceInternal:0];
                        }

                        v196 = [v6 VPN];
                        v197 = [v196 protocol];
                        v18 = [v197 proxySettings];

                        v198 = [v5 objectForKeyedSubscript:@"VPNProxyType"];

                        if (v198)
                        {
                          v199 = [v5 objectForKeyedSubscript:@"VPNProxyType"];
                          v198 = [v199 unsignedIntegerValue];

                          if (v198 == &dword_0 + 1)
                          {
                            if (!v18)
                            {
                              v208 = objc_alloc_init(NEProxySettings);
                              v209 = [v6 VPN];
                              v210 = [v209 protocol];
                              [v210 setProxySettings:v208];

                              v211 = [v6 VPN];
                              v212 = [v211 protocol];
                              v18 = [v212 proxySettings];
                            }

                            [v18 setAutoProxyConfigurationEnabled:0];
                            [v18 setAutoProxyDiscovery:0];
                            [v18 setHTTPEnabled:1];
                            v205 = v18;
                            v206 = 1;
                            goto LABEL_138;
                          }

                          if (v198 == &dword_0 + 2)
                          {
                            if (!v18)
                            {
                              v200 = objc_alloc_init(NEProxySettings);
                              v201 = [v6 VPN];
                              v202 = [v201 protocol];
                              [v202 setProxySettings:v200];

                              v203 = [v6 VPN];
                              v204 = [v203 protocol];
                              v18 = [v204 proxySettings];
                            }

                            [v18 setAutoProxyConfigurationEnabled:1];
                            [v18 setAutoProxyDiscovery:1];
                            [v18 setHTTPEnabled:0];
                            v205 = v18;
                            v206 = 0;
LABEL_138:
                            [v205 setHTTPSEnabled:v206];
                            v207 = v18 != 0;
LABEL_139:
                            v213 = [v5 objectForKeyedSubscript:@"VPNProxyPacFile"];
                            v214 = [v213 length];

                            if (v214)
                            {
                              if (v207 && [v18 autoProxyConfigurationEnabled]&& ([v18 HTTPEnabled]& 1) == 0)
                              {
                                v215 = [v5 objectForKeyedSubscript:@"VPNProxyPacFile"];
                                v216 = [NSURL URLWithString:v215];
                                [v18 setProxyAutoConfigURL:v216];

                                [v18 setAutoProxyDiscovery:0];
                              }
                            }

                            else
                            {
                              [v18 setProxyAutoConfigURL:0];
                            }

                            v217 = [v5 objectForKeyedSubscript:@"VPNProxyServer"];
                            if (v217 && (v218 = v217, [v5 objectForKeyedSubscript:@"VPNProxyPort"], v219 = objc_claimAutoreleasedReturnValue(), v219, v218, v219))
                            {
                              if (v207 && ([v18 autoProxyConfigurationEnabled]& 1) == 0 && [v18 HTTPEnabled])
                              {
                                v220 = [NEProxyServer alloc];
                                v221 = [v5 objectForKeyedSubscript:@"VPNProxyServer"];
                                v222 = [v5 objectForKeyedSubscript:@"VPNProxyPort"];
                                v223 = [v220 initWithType:1 address:v221 port:{objc_msgSend(v222, "intValue")}];

                                v224 = [v5 objectForKeyedSubscript:@"VPNProxyAuthenticate"];
                                LODWORD(v222) = [v224 BOOLValue];

                                if (v222)
                                {
                                  [v223 setAuthenticationRequired:1];
                                  v225 = [v5 objectForKeyedSubscript:@"VPNProxyUsername"];
                                  [v223 setUsername:v225];

                                  v226 = [v5 objectForKeyedSubscript:@"VPNProxyPassword"];
                                  [v223 setPassword:v226];
                                }

                                [v18 setHTTPServer:v223];
                                v227 = [NEProxyServer alloc];
                                v228 = [v5 objectForKeyedSubscript:@"VPNProxyServer"];
                                v229 = [v5 objectForKeyedSubscript:@"VPNProxyPort"];
                                v230 = [v227 initWithType:2 address:v228 port:{objc_msgSend(v229, "intValue")}];

                                v231 = [v5 objectForKeyedSubscript:@"VPNProxyAuthenticate"];
                                LODWORD(v229) = [v231 BOOLValue];

                                if (v229)
                                {
                                  [v230 setAuthenticationRequired:1];
                                  v232 = [v5 objectForKeyedSubscript:@"VPNProxyUsername"];
                                  [v230 setUsername:v232];

                                  v233 = [v5 objectForKeyedSubscript:@"VPNProxyPassword"];
                                  [v230 setPassword:v233];
                                }

                                [v18 setHTTPSServer:v230];
                              }
                            }

                            else
                            {
                              [v18 setHTTPServer:0];
                              [v18 setHTTPSServer:0];
                            }

                            goto LABEL_15;
                          }
                        }

                        v207 = v18 != 0;
                        if (!v198 && v18)
                        {
                          [v18 setAutoProxyConfigurationEnabled:0];
                          [v18 setAutoProxyDiscovery:0];
                          [v18 setHTTPEnabled:0];
                          [v18 setHTTPSEnabled:0];
                          v207 = 1;
                        }

                        goto LABEL_139;
                      }
                    }
                  }

                  else
                  {
                    v171 = [v6 VPN];
                    v172 = [v171 protocol];
                    [v172 setUsername:0];
                  }

                  v188 = [v6 VPN];
                  v189 = [v188 protocol];
                  v190 = [v189 passwordKeychainItem];
                  [v190 setIdentifier:0];
                  goto LABEL_122;
                }
              }

              v106 = [v53 sharedSecretKeychainItem];

              if (v106)
              {
                v54 = [v5 objectForKeyedSubscript:@"secret"];
                v107 = [v53 sharedSecretKeychainItem];
                [v107 setPassword:v54];
              }

              else
              {
                v145 = [NEKeychainItem alloc];
                v54 = [v5 objectForKeyedSubscript:@"secret"];
                v107 = [v145 initWithPassword:v54 domain:0];
                [v53 setSharedSecretKeychainItem:v107];
              }

              goto LABEL_102;
            }
          }
        }

        v54 = [v53 sharedSecretKeychainItem];
        [v54 setIdentifier:0];
        goto LABEL_102;
      }

      if (v10 != (&dword_0 + 2))
      {
        if (!v10)
        {
          v26 = [v6 VPN];
          v27 = [v26 protocol];

          if (v27)
          {
            v28 = [v6 VPN];
            v29 = [v28 protocol];
            objc_opt_class();
            v30 = objc_opt_isKindOfClass();

            if ((v30 & 1) == 0)
            {
              goto LABEL_62;
            }
          }

          else
          {
            v72 = objc_alloc_init(NEVPNProtocolL2TP);
            v73 = [v6 VPN];
            [v73 setProtocol:v72];
          }

          v74 = [v5 objectForKeyedSubscript:@"secret"];
          if (v74 && (v75 = v74, [v5 objectForKeyedSubscript:@"secret"], v76 = objc_claimAutoreleasedReturnValue(), v77 = objc_msgSend(v76, "length"), v76, v75, v77))
          {
            v78 = [v6 VPN];
            v79 = [v78 protocol];
            [v79 setMachineAuthenticationMethod:1];

            v80 = [v6 VPN];
            v81 = [v80 protocol];
            v82 = [v81 sharedSecretKeychainItem];

            if (v82)
            {
              v83 = [v6 VPN];
              v84 = [v83 protocol];
              v85 = [v84 sharedSecretKeychainItem];

              v86 = [v85 copyPassword];
              v87 = [v5 objectForKeyedSubscript:@"secret"];
              v88 = [v86 isEqualToString:v87];

              if (v88)
              {
                goto LABEL_84;
              }
            }

            v89 = [v6 VPN];
            v90 = [v89 protocol];
            v91 = [v90 sharedSecretKeychainItem];

            if (v91)
            {
              v92 = [v5 objectForKeyedSubscript:@"secret"];
              v93 = [v6 VPN];
              v94 = [v93 protocol];
              v95 = [v94 sharedSecretKeychainItem];
              [v95 setPassword:v92];
            }

            else
            {
              v128 = [NEKeychainItem alloc];
              v92 = [v5 objectForKeyedSubscript:@"secret"];
              v93 = [v128 initWithPassword:v92 domain:0];
              v94 = [v6 VPN];
              v95 = [v94 protocol];
              [v95 setSharedSecretKeychainItem:v93];
            }
          }

          else
          {
            v92 = [v6 VPN];
            v93 = [v92 protocol];
            v94 = [v93 sharedSecretKeychainItem];
            [v94 setIdentifier:0];
          }

LABEL_84:
          v129 = [v5 objectForKeyedSubscript:@"VPNSendAllTraffic"];

          if (v129)
          {
            v130 = [v6 VPN];
            v131 = [v130 protocol];
            v132 = [v131 IPv4Settings];

            if (!v132)
            {
              v133 = objc_alloc_init(NEIPv4Settings);
              v134 = [v6 VPN];
              v135 = [v134 protocol];
              [v135 setIPv4Settings:v133];
            }

            v136 = [v5 objectForKeyedSubscript:@"VPNSendAllTraffic"];
            v137 = [v136 BOOLValue];
            v138 = [v6 VPN];
            v139 = [v138 protocol];
            v140 = [v139 IPv4Settings];
            [v140 setOverridePrimary:v137];
          }

          v141 = [v5 objectForKeyedSubscript:@"securID"];
          if (v141)
          {
            v142 = v141;
            v143 = [v5 objectForKeyedSubscript:@"securID"];
            v144 = [v143 BOOLValue];

            if (v144)
            {
              v53 = [v6 VPN];
              v54 = [v53 protocol];
              [v54 setAuthenticationMethod:2];
LABEL_101:
              v49 = 1;
              goto LABEL_102;
            }
          }

          v53 = [v6 VPN];
          v54 = [v53 protocol];
          v49 = 1;
          [v54 setAuthenticationMethod:1];
LABEL_102:

          goto LABEL_103;
        }

        v31 = sub_46D8();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_29D10();
        }

        goto LABEL_61;
      }

      v32 = [v6 VPN];
      v33 = [v32 protocol];

      if (!v33)
      {
        v43 = objc_alloc_init(NEVPNProtocolIPSec);
        v44 = [v6 VPN];
        [v44 setProtocol:v43];

        goto LABEL_35;
      }

      v31 = [v6 VPN];
      v34 = [v31 protocol];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v35 = [v6 VPN];
        v36 = [v35 protocol];
        objc_opt_class();
        v37 = objc_opt_isKindOfClass();

        if (v37)
        {
          goto LABEL_62;
        }

LABEL_35:
        v45 = [v5 objectForKeyedSubscript:@"VPNCertificate"];

        v46 = [v6 VPN];
        v47 = [v46 protocol];
        v48 = v47;
        if (v45)
        {
          v49 = 1;
          [v47 setAuthenticationMethod:1];

          v50 = [v6 VPN];
          v51 = [v50 protocol];
          v52 = [v51 sharedSecretKeychainItem];
          [v52 setIdentifier:0];

          v53 = [v6 VPN];
          v54 = [v53 protocol];
          [v54 setLocalIdentifier:0];
          goto LABEL_102;
        }

        [v47 setAuthenticationMethod:2];

        v108 = [v5 objectForKeyedSubscript:@"secret"];
        if (v108 && (v109 = v108, [v5 objectForKeyedSubscript:@"secret"], v110 = objc_claimAutoreleasedReturnValue(), v111 = objc_msgSend(v110, "length"), v110, v109, v111))
        {
          v112 = [v6 VPN];
          v113 = [v112 protocol];
          v114 = [v113 sharedSecretKeychainItem];

          if (v114)
          {
            v115 = [v6 VPN];
            v116 = [v115 protocol];
            v117 = [v116 sharedSecretKeychainItem];

            v118 = [v117 copyPassword];
            v119 = [v5 objectForKeyedSubscript:@"secret"];
            v120 = [v118 isEqualToString:v119];

            if (v120)
            {
LABEL_97:
              v147 = [v5 objectForKeyedSubscript:@"group"];
              if (v147 && (v148 = v147, [v5 objectForKeyedSubscript:@"group"], v149 = objc_claimAutoreleasedReturnValue(), v150 = objc_msgSend(v149, "length"), v149, v148, v150))
              {
                v53 = [v5 objectForKeyedSubscript:@"group"];
                v54 = [v6 VPN];
                v151 = [v54 protocol];
                [v151 setLocalIdentifier:v53];
              }

              else
              {
                v53 = [v6 VPN];
                v54 = [v53 protocol];
                [v54 setLocalIdentifier:0];
              }

              goto LABEL_101;
            }
          }

          v121 = [v6 VPN];
          v122 = [v121 protocol];
          v123 = [v122 sharedSecretKeychainItem];

          if (v123)
          {
            v124 = [v5 objectForKeyedSubscript:@"secret"];
            v125 = [v6 VPN];
            v126 = [v125 protocol];
            v127 = [v126 sharedSecretKeychainItem];
            [v127 setPassword:v124];
          }

          else
          {
            v146 = [NEKeychainItem alloc];
            v124 = [v5 objectForKeyedSubscript:@"secret"];
            v125 = [v146 initWithPassword:v124 domain:0];
            v126 = [v6 VPN];
            v127 = [v126 protocol];
            [v127 setSharedSecretKeychainItem:v125];
          }
        }

        else
        {
          v124 = [v6 VPN];
          v125 = [v124 protocol];
          v126 = [v125 sharedSecretKeychainItem];
          [v126 setIdentifier:0];
        }

        goto LABEL_97;
      }

LABEL_61:
      goto LABEL_62;
    }

    v19 = [v5 objectForKeyedSubscript:@"VPNOnDemandEnabled"];

    if (v19)
    {
      v20 = [v5 objectForKeyedSubscript:@"VPNOnDemandEnabled"];
      v15 = [v20 BOOLValue];

      v21 = [v6 VPN];
      v22 = [v21 onDemandRules];

      if (v22)
      {
        goto LABEL_12;
      }

      v31 = sub_46D8();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_29CA8();
      }

      goto LABEL_61;
    }
  }

LABEL_63:

  return v19;
}

- (BOOL)createVPNWithOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"dispName"];

  if (v5)
  {
    v6 = [NEConfiguration alloc];
    v7 = [v4 objectForKeyedSubscript:@"dispName"];
    v8 = [v6 initWithName:v7 grade:1];

    v9 = [(VPNConnectionStore *)self setOptions:v4 toConfiguration:v8];
    if (v9)
    {
      v10 = [(VPNConnectionStore *)self configurationManager];
      v11 = [(VPNConnectionStore *)self storeQueue];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_B940;
      v13[3] = &unk_40F40;
      v14 = v8;
      v15 = self;
      [v10 saveConfiguration:v14 withCompletionQueue:v11 handler:v13];
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)updateVPNWithServiceID:(id)a3 withOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [(VPNConnectionStore *)self configurations];
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = *v23;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v23 != v10)
      {
        objc_enumerationMutation(v8);
      }

      v12 = *(*(&v22 + 1) + 8 * v11);
      if ([v12 grade] != &dword_0 + 3)
      {
        v13 = [v12 identifier];
        v14 = [v13 isEqual:v6];

        if (v14)
        {
          break;
        }
      }

      if (v9 == ++v11)
      {
        v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v9 = v12;

    if (v9 && [(VPNConnectionStore *)self setOptions:v7 toConfiguration:v9])
    {
      v16 = [(VPNConnectionStore *)self configurationManager];
      v17 = [(VPNConnectionStore *)self storeQueue];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_BCAC;
      v19[3] = &unk_40F40;
      v9 = v9;
      v20 = v9;
      v21 = self;
      [v16 saveConfiguration:v9 withCompletionQueue:v17 handler:v19];

      v15 = 1;
      v8 = v20;
      goto LABEL_14;
    }

    v15 = 0;
  }

  else
  {
LABEL_10:
    v15 = 0;
LABEL_14:
  }

  return v15;
}

- (BOOL)deleteVPNWithServiceID:(id)a3
{
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [(VPNConnectionStore *)self configurations];
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v22 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v21 + 1) + 8 * v9);
      if ([v10 grade] != &dword_0 + 3)
      {
        v11 = [v10 identifier];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v14 = v10;

    if (v14)
    {
      v15 = [(VPNConnectionStore *)self configurationManager];
      v16 = [(VPNConnectionStore *)self storeQueue];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_BFF4;
      v18[3] = &unk_40F40;
      v19 = v14;
      v20 = self;
      v5 = v14;
      [v15 removeConfiguration:v5 withCompletionQueue:v16 handler:v18];

      v13 = 1;
      goto LABEL_13;
    }

    v13 = 0;
  }

  else
  {
LABEL_10:
    v13 = 0;
LABEL_13:
  }

  return v13;
}

- (BOOL)configurationIsManaged:(id)a3
{
  v3 = a3;
  v4 = [v3 payloadInfo];

  if (v4)
  {
    v5 = [v3 payloadInfo];
    v6 = [v5 profileSource];

    v7 = [v3 payloadInfo];
    v8 = v7;
    if (v6)
    {
      v9 = [v7 profileSource] == &dword_0 + 2;
      v10 = v8;
    }

    else
    {
      v10 = [v7 profileIdentifier];

      if (v10)
      {
        v11 = +[MCProfileConnection sharedConnection];
        v12 = [v11 installedProfileWithIdentifier:v10];

        if (v12)
        {
          v9 = [v12 isManagedByMDM];
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isMDM:(id)a3
{
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(VPNConnectionStore *)self configurations];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v16 + 1) + 8 * v9);
      if ([v10 grade] != &dword_0 + 3)
      {
        v11 = [v10 identifier];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v14 = v10;

    if (v14)
    {
      v13 = [(VPNConnectionStore *)self configurationIsManaged:v14];
      v5 = v14;
      goto LABEL_13;
    }

    v13 = 0;
  }

  else
  {
LABEL_10:
    v13 = 0;
LABEL_13:
  }

  return v13;
}

- (id)optionsForServiceID:(id)a3 withGrade:(unint64_t)a4
{
  v6 = a3;
  v351 = 0u;
  v352 = 0u;
  v353 = 0u;
  v354 = 0u;
  v7 = [(VPNConnectionStore *)self configurations];
  v8 = [v7 countByEnumeratingWithState:&v351 objects:v359 count:16];
  if (v8)
  {
    v9 = *v352;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v352 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v351 + 1) + 8 * v10);
      if ([v11 grade] != &dword_0 + 3)
      {
        v12 = [v11 identifier];
        v13 = [v12 isEqual:v6];

        if (v13)
        {
          break;
        }
      }

      if (v8 == ++v10)
      {
        v8 = [v7 countByEnumeratingWithState:&v351 objects:v359 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_260;
      }
    }

    v317 = self;
    v14 = v11;

    if (!v14)
    {
      v8 = 0;
      goto LABEL_261;
    }

    v8 = +[NSMutableDictionary dictionary];
    v15 = [NSNumber numberWithUnsignedInteger:a4];
    [v8 setValue:v15 forKey:@"VPNGrade"];

    v333 = [v14 name];
    v315 = [v14 applicationName];
    v332 = [v14 applicationIdentifier];
    v16 = +[NSMutableDictionary dictionary];
    v316 = v6;
    v318 = v14;
    if (a4 <= 1)
    {
      v17 = [v14 VPN];
      v18 = [v17 protocol];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v20 = &off_435C0;
      }

      else
      {
        v50 = [v14 VPN];
        v51 = [v50 protocol];
        objc_opt_class();
        v52 = objc_opt_isKindOfClass();

        if (v52)
        {
          v20 = &off_435D8;
        }

        else
        {
          v56 = [v14 VPN];
          v57 = [v56 protocol];
          objc_opt_class();
          v58 = objc_opt_isKindOfClass();

          if (v58)
          {
            v20 = &off_43590;
          }

          else
          {
            v20 = &off_435F0;
          }
        }
      }

      [v8 setValue:v20 forKey:@"VPNType"];
      v59 = [v14 VPN];
      if ([v59 isEnabled])
      {
        v60 = &off_435A8;
      }

      else
      {
        v60 = &off_43560;
      }

      v331 = v60;

      v61 = [v14 VPN];
      v62 = [v61 protocol];
      v334 = [v62 serverAddress];

      v63 = [v14 VPN];
      v64 = [v63 protocol];
      v330 = [v64 username];

      v65 = [v14 VPN];
      v66 = [v65 onDemandRules];

      if (v66)
      {
        v67 = [v14 VPN];
        v68 = [v67 isOnDemandEnabled];

        if (v68)
        {
          v69 = &off_435A8;
        }

        else
        {
          v69 = &off_43560;
        }

        v304 = v69;
        v70 = [v14 VPN];
        v71 = [v70 isOnDemandUserOverrideDisabled];

        if (v71)
        {
          v72 = &off_435A8;
        }

        else
        {
          v72 = &off_43560;
        }

        v303 = v72;
        v313 = &off_435A8;
      }

      else
      {
        v313 = &off_43560;
        v303 = &off_43560;
        v304 = &off_43560;
      }

      v73 = [v14 VPN];
      v74 = [v73 protocol];
      v75 = [v74 passwordKeychainItem];

      if (v75)
      {
        v76 = [v14 VPN];
        v77 = [v76 protocol];
        v78 = [v77 passwordKeychainItem];
        v329 = [v78 copyPassword];
      }

      else
      {
        v329 = 0;
      }

      v79 = [v14 VPN];
      v80 = [v79 protocol];
      objc_opt_class();
      v81 = objc_opt_isKindOfClass();

      v82 = [v14 VPN];
      v83 = [v82 protocol];
      if (v81)
      {

        if ([v83 authenticationMethod] == &dword_0 + 1)
        {
          v328 = 0;
          v84 = &off_43578;
        }

        else
        {
          v93 = [v83 sharedSecretKeychainItem];

          if (v93)
          {
            v94 = [v83 sharedSecretKeychainItem];
            v328 = [v94 copyPassword];
          }

          else
          {
            v328 = 0;
          }

          v84 = &off_43590;
        }

        v310 = v84;
        v325 = [v83 localIdentifier];
        v324 = [v83 remoteIdentifier];
        v169 = [v83 identityReferenceInternal];

        if (v169)
        {
          v170 = [v83 identityReferenceInternal];
        }

        else
        {
          v170 = 0;
        }

        v171 = &off_43590;
        if ([v83 useExtendedAuthentication])
        {
          v172 = [v83 username];

          if (v172)
          {
            v171 = &off_43578;
          }

          else
          {
            v173 = [v83 identityReferenceInternal];

            if (v173)
            {
              v171 = &off_435D8;
            }
          }
        }

        v307 = v171;
        v326 = v170;

        v327 = 0;
        v305 = &off_43560;
        v306 = &off_43560;
        v312 = &off_43560;
        goto LABEL_129;
      }

      objc_opt_class();
      v85 = objc_opt_isKindOfClass();

      v86 = [v14 VPN];
      v87 = [v86 protocol];
      v88 = v87;
      if (v85)
      {
        v89 = [v87 sharedSecretKeychainItem];

        if (v89)
        {
          v90 = [v14 VPN];
          v91 = [v90 protocol];
          v92 = [v91 sharedSecretKeychainItem];
          v328 = [v92 copyPassword];
        }

        else
        {
          v328 = 0;
        }

        v160 = [v14 VPN];
        v161 = [v160 protocol];
        v162 = [v161 IPv4Settings];
        v163 = [v162 overridePrimary];

        if (v163)
        {
          v164 = &off_435A8;
        }

        else
        {
          v164 = &off_43560;
        }

        v312 = v164;
        v165 = [v14 VPN];
        v166 = [v165 protocol];
        v167 = [v166 authenticationMethod];

        v326 = 0;
        v327 = 0;
        v324 = 0;
        v325 = 0;
        if (v167 == &dword_0 + 2)
        {
          v168 = &off_435A8;
        }

        else
        {
          v168 = &off_43560;
        }

        v306 = v168;
        goto LABEL_117;
      }

      objc_opt_class();
      v95 = objc_opt_isKindOfClass();

      v312 = &off_43560;
      if ((v95 & 1) == 0)
      {
        v326 = 0;
        v327 = 0;
        v324 = 0;
        v325 = 0;
        v328 = 0;
        v306 = &off_43560;
LABEL_117:
        v310 = &off_43590;
        v307 = &off_43590;
        v305 = &off_43560;
LABEL_129:
        v174 = [v14 VPN];
        v175 = [v174 protocol];
        v44 = [v175 proxySettings];

        v46 = &off_43590;
        if (v44)
        {
          v176 = [v14 VPN];
          v177 = [v176 protocol];
          v178 = [v177 proxySettings];
          v179 = [v178 autoProxyConfigurationEnabled];

          if (v179)
          {
            v180 = &off_435D8;
          }

          else
          {
            v181 = [v14 VPN];
            v182 = [v181 protocol];
            v183 = [v182 proxySettings];
            v184 = [v183 HTTPEnabled];

            if (v184)
            {
              v180 = &off_43578;
            }

            else
            {
              v180 = &off_43590;
            }
          }

          v185 = [v14 VPN];
          v186 = [v185 protocol];
          v187 = [v186 proxySettings];
          v188 = [v187 proxyAutoConfigURL];
          v323 = [v188 absoluteString];

          v189 = [v14 VPN];
          v190 = [v189 protocol];
          v191 = [v190 proxySettings];
          v44 = [v191 HTTPServer];

          if (v44)
          {
            v192 = [v14 VPN];
            v193 = [v192 protocol];
            v194 = [v193 proxySettings];
            v195 = [v194 HTTPServer];
            v322 = [v195 address];

            v196 = [v14 VPN];
            v197 = [v196 protocol];
            v198 = [v197 proxySettings];
            v199 = [v198 HTTPServer];
            v44 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu", [v199 port]);

            v200 = [v14 VPN];
            v201 = [v200 protocol];
            v202 = [v201 proxySettings];
            v203 = [v202 HTTPServer];
            LODWORD(v199) = [v203 authenticationRequired];

            if (v199)
            {
              v204 = [v14 VPN];
              v205 = [v204 protocol];
              v206 = [v205 proxySettings];
              v207 = [v206 HTTPServer];
              v208 = [v207 username];

              v45 = v208;
              v209 = [v14 VPN];
              v210 = [v209 protocol];
              v211 = [v210 proxySettings];
              v212 = [v211 HTTPServer];
              v319 = [v212 copyPassword];

              v311 = 0;
              v320 = 0;
              v321 = 0;
              v308 = 0;
              v309 = 0;
              v47 = &off_435A8;
              v46 = &off_43590;
            }

            else
            {
              v45 = 0;
              v319 = 0;
              v320 = 0;
              v311 = 0;
              v321 = 0;
              v308 = 0;
              v309 = 0;
              v46 = &off_43590;
              v47 = &off_43560;
            }

            v314 = &off_43560;
          }

          else
          {
            v321 = 0;
            v322 = 0;
            v45 = 0;
            v319 = 0;
            v320 = 0;
            v311 = 0;
            v308 = 0;
            v309 = 0;
            v47 = &off_43560;
            v314 = &off_43560;
            v46 = &off_43590;
          }

          v49 = v303;
          v48 = v304;
          v43 = v180;
          goto LABEL_194;
        }

        v43 = 0;
        v322 = 0;
        v323 = 0;
        v45 = 0;
        v319 = 0;
        v320 = 0;
        v311 = 0;
        v321 = 0;
        v308 = 0;
        v309 = 0;
        v47 = &off_43560;
        v314 = &off_43560;
        goto LABEL_175;
      }

      v96 = [v14 VPN];
      v97 = [v96 protocol];
      v98 = [v97 authenticationMethod];

      v99 = [v14 VPN];
      v100 = [v99 protocol];
      v101 = v100;
      if (v98 == &dword_0 + 1)
      {
        v102 = [v100 identityReferenceInternal];

        if (v102)
        {
          v103 = [v14 VPN];
          v104 = [v103 protocol];
          v105 = [v104 identityReferenceInternal];
          v327 = 0;
          v328 = 0;
          v106 = &off_43578;
LABEL_268:
          v310 = v106;
          v326 = v105;

LABEL_271:
          v297 = [v14 VPN];
          v298 = [v297 protocol];
          v299 = [v298 extendedAuthPasswordPrompt];

          v324 = 0;
          v325 = 0;
          if (v299)
          {
            v300 = &off_435A8;
          }

          else
          {
            v300 = &off_43560;
          }

          v305 = v300;
          v306 = &off_43560;
          v307 = &off_43590;
          goto LABEL_129;
        }

        v326 = 0;
        v327 = 0;
        v328 = 0;
        v293 = &off_43578;
      }

      else
      {
        v251 = [v100 sharedSecretKeychainItem];

        if (v251)
        {
          v252 = [v14 VPN];
          v253 = [v252 protocol];
          v254 = [v253 sharedSecretKeychainItem];
          v328 = [v254 copyPassword];
        }

        else
        {
          v328 = 0;
        }

        v294 = [v14 VPN];
        v295 = [v294 protocol];
        v296 = [v295 localIdentifier];

        if (v296)
        {
          v103 = [v14 VPN];
          v104 = [v103 protocol];
          v327 = [v104 localIdentifier];
          v105 = 0;
          v106 = &off_43590;
          goto LABEL_268;
        }

        v326 = 0;
        v327 = 0;
        v293 = &off_43590;
      }

      v310 = v293;
      goto LABEL_271;
    }

    if (a4 <= 3)
    {
      if (a4 == 2)
      {
        v141 = [v14 appVPN];
        v142 = [v141 protocol];
        objc_opt_class();
        v143 = objc_opt_isKindOfClass();

        if (v143)
        {
          v144 = &off_435C0;
        }

        else
        {
          v217 = [v14 appVPN];
          v218 = [v217 protocol];
          objc_opt_class();
          v219 = objc_opt_isKindOfClass();

          if (v219)
          {
            v144 = &off_435D8;
          }

          else
          {
            v144 = &off_435F0;
          }
        }

        v302 = v8;
        [v8 setValue:v144 forKey:@"VPNType"];
        v220 = [v14 appVPN];
        if ([v220 isEnabled])
        {
          v221 = &off_435A8;
        }

        else
        {
          v221 = &off_43560;
        }

        v331 = v221;

        v222 = [v14 appVPN];
        v223 = [v222 protocol];
        v334 = [v223 serverAddress];

        v224 = [v14 appVPN];
        v225 = [v224 protocol];
        v330 = [v225 username];

        v226 = [v14 appVPN];
        LODWORD(v225) = [v226 isOnDemandEnabled];

        if (v225)
        {
          v227 = &off_435A8;
        }

        else
        {
          v227 = &off_43560;
        }

        v304 = v227;
        v228 = [v14 appVPN];
        v229 = [v228 isOnDemandUserOverrideDisabled];

        if (v229)
        {
          v230 = &off_435A8;
        }

        else
        {
          v230 = &off_43560;
        }

        v303 = v230;
        v349 = 0u;
        v350 = 0u;
        v347 = 0u;
        v348 = 0u;
        v231 = [v14 appVPN];
        v232 = [v231 appRules];

        v233 = [v232 countByEnumeratingWithState:&v347 objects:v358 count:16];
        if (v233)
        {
          v234 = v233;
          v235 = *v348;
          do
          {
            for (i = 0; i != v234; i = i + 1)
            {
              if (*v348 != v235)
              {
                objc_enumerationMutation(v232);
              }

              v237 = *(*(&v347 + 1) + 8 * i);
              v238 = [v237 matchSigningIdentifier];
              if (v238)
              {
                v239 = v238;
                v240 = [v237 matchSigningIdentifier];
                v241 = [v16 objectForKeyedSubscript:v240];

                if (!v241)
                {
                  v242 = [v237 matchDomains];
                  if (v242 && (v243 = v242, [v237 matchDomains], v244 = objc_claimAutoreleasedReturnValue(), v245 = objc_msgSend(v244, "count"), v244, v243, v245))
                  {
                    v246 = [v237 matchDomains];
                    v247 = [v246 count];

                    if (v247 == &dword_0 + 1)
                    {
                      v248 = [v237 matchDomains];
                      [v248 objectAtIndexedSubscript:0];
                    }

                    else
                    {
                      v248 = [NSBundle bundleForClass:objc_opt_class()];
                      [v248 localizedStringForKey:@"MULTIPLE_DOMAINS" value:&stru_411E8 table:@"MobileVPN"];
                    }
                    v249 = ;
                    v250 = [v237 matchSigningIdentifier];
                    [v16 setObject:v249 forKeyedSubscript:v250];
                  }

                  else
                  {
                    v248 = [v237 matchSigningIdentifier];
                    [v16 setObject:&stru_411E8 forKeyedSubscript:v248];
                  }
                }
              }
            }

            v234 = [v232 countByEnumeratingWithState:&v347 objects:v358 count:16];
          }

          while (v234);
        }

        v326 = 0;
        v327 = 0;
        v324 = 0;
        v325 = 0;
        v328 = 0;
        v329 = 0;
        v43 = 0;
        v322 = 0;
        v323 = 0;
        v44 = 0;
        v45 = 0;
        v319 = 0;
        v320 = 0;
        v321 = 0;
        v309 = 0;
        v46 = &off_43590;
        v311 = 0;
        v312 = &off_43560;
        v47 = &off_43560;
        v310 = &off_43590;
        v307 = &off_43590;
        v308 = 0;
        v305 = &off_43560;
        v306 = &off_43560;
        v314 = &off_43560;
        v313 = &off_435A8;
        v8 = v302;
LABEL_175:
        v49 = v303;
        v48 = v304;
        goto LABEL_194;
      }

      if (a4 == 3)
      {
        v53 = [v14 alwaysOnVPN];
        v54 = [v53 isEnabled];
        v55 = &off_435A8;
        if (!v54)
        {
          v55 = &off_43560;
        }

        v331 = v55;

        [v8 setValue:&off_435C0 forKey:@"VPNType"];
        v326 = 0;
        v327 = 0;
        v324 = 0;
        v325 = 0;
        v328 = 0;
        v329 = 0;
        v43 = 0;
        v322 = 0;
        v323 = 0;
        v44 = 0;
        v45 = 0;
        v319 = 0;
        v320 = 0;
        v321 = 0;
        v309 = 0;
        v334 = 0;
        v330 = 0;
        v46 = &off_43590;
        v313 = &off_43560;
        v314 = &off_43560;
        v311 = 0;
        v312 = &off_43560;
        v47 = &off_43560;
        v48 = &off_43560;
        v49 = &off_43560;
        v310 = &off_43590;
        v307 = &off_43590;
        v308 = 0;
        v305 = &off_43560;
        v306 = &off_43560;
        goto LABEL_194;
      }
    }

    else
    {
      switch(a4)
      {
        case 4uLL:
          v107 = [v14 grade];
          v108 = &off_435A8;
          if (v107 != &dword_0 + 1)
          {
            v108 = &off_43560;
          }

          v314 = v108;
          v109 = [v14 dnsSettings];
          v110 = [v109 settings];
          objc_opt_class();
          v111 = objc_opt_isKindOfClass();

          v112 = [v14 dnsSettings];
          v113 = [v112 settings];
          v114 = v113;
          if (v111)
          {
            v115 = [v113 serverURL];
            v334 = [v115 absoluteString];

            v326 = 0;
            v327 = 0;
            v324 = 0;
            v325 = 0;
            v328 = 0;
            v329 = 0;
            v43 = 0;
            v322 = 0;
            v323 = 0;
            v44 = 0;
            v45 = 0;
            v319 = 0;
            v320 = 0;
            v321 = 0;
            v309 = 0;
            v47 = &off_43560;
            v312 = &off_43560;
            v313 = &off_43560;
            v48 = &off_43560;
            v49 = &off_43560;
            v310 = &off_43590;
            v311 = 0;
            v307 = &off_43590;
            v308 = 0;
            v305 = &off_43560;
            v306 = &off_43560;
            v330 = 0;
            v331 = &off_43560;
            v46 = &off_435D8;
          }

          else
          {
            objc_opt_class();
            v213 = objc_opt_isKindOfClass();

            v214 = [v14 dnsSettings];
            v215 = [v214 settings];
            v216 = v215;
            if (v213)
            {
              v334 = [v215 serverName];

              v326 = 0;
              v327 = 0;
              v324 = 0;
              v325 = 0;
              v328 = 0;
              v329 = 0;
              v43 = 0;
              v322 = 0;
              v323 = 0;
              v44 = 0;
              v45 = 0;
              v319 = 0;
              v320 = 0;
              v321 = 0;
              v309 = 0;
              v47 = &off_43560;
              v312 = &off_43560;
              v313 = &off_43560;
              v48 = &off_43560;
              v49 = &off_43560;
              v310 = &off_43590;
              v311 = 0;
              v307 = &off_43590;
              v308 = 0;
              v305 = &off_43560;
              v306 = &off_43560;
              v330 = 0;
              v331 = &off_43560;
              v46 = &off_43578;
            }

            else
            {
              v255 = [v215 servers];
              v334 = [v255 firstObject];

              v326 = 0;
              v327 = 0;
              v324 = 0;
              v325 = 0;
              v328 = 0;
              v329 = 0;
              v43 = 0;
              v322 = 0;
              v323 = 0;
              v44 = 0;
              v45 = 0;
              v319 = 0;
              v320 = 0;
              v321 = 0;
              v309 = 0;
              v46 = &off_43590;
              v47 = &off_43560;
              v312 = &off_43560;
              v313 = &off_43560;
              v48 = &off_43560;
              v49 = &off_43560;
              v310 = &off_43590;
              v311 = 0;
              v307 = &off_43590;
              v308 = 0;
              v305 = &off_43560;
              v306 = &off_43560;
              v330 = 0;
              v331 = &off_43560;
            }
          }

          goto LABEL_194;
        case 5uLL:
          v301 = v8;
          v116 = +[MCProfileConnection sharedConnection];
          v117 = [v116 isSupervised];

          v118 = &off_435A8;
          v345 = 0u;
          v346 = 0u;
          if (!v117)
          {
            v118 = &off_43560;
          }

          v314 = v118;
          v343 = 0uLL;
          v344 = 0uLL;
          v119 = [v14 dnsProxy];
          v120 = [v119 perApp];
          v121 = [v120 appRules];

          v122 = [v121 countByEnumeratingWithState:&v343 objects:v357 count:16];
          if (v122)
          {
            v123 = v122;
            v124 = *v344;
            do
            {
              for (j = 0; j != v123; j = j + 1)
              {
                if (*v344 != v124)
                {
                  objc_enumerationMutation(v121);
                }

                v126 = *(*(&v343 + 1) + 8 * j);
                v127 = [v126 matchSigningIdentifier];
                if (v127)
                {
                  v128 = v127;
                  v129 = [v126 matchSigningIdentifier];
                  v130 = [v16 objectForKeyedSubscript:v129];

                  if (!v130)
                  {
                    v131 = [v126 matchDomains];
                    if (v131 && (v132 = v131, [v126 matchDomains], v133 = objc_claimAutoreleasedReturnValue(), v134 = objc_msgSend(v133, "count"), v133, v132, v134))
                    {
                      v135 = [v126 matchDomains];
                      v136 = [v135 count];

                      if (v136 == &dword_0 + 1)
                      {
                        v137 = [v126 matchDomains];
                        [v137 objectAtIndexedSubscript:0];
                      }

                      else
                      {
                        v137 = [NSBundle bundleForClass:objc_opt_class()];
                        [v137 localizedStringForKey:@"MULTIPLE_DOMAINS" value:&stru_411E8 table:@"MobileVPN"];
                      }
                      v138 = ;
                      v139 = [v126 matchSigningIdentifier];
                      [v16 setObject:v138 forKeyedSubscript:v139];
                    }

                    else
                    {
                      v137 = [v126 matchSigningIdentifier];
                      [v16 setObject:&stru_411E8 forKeyedSubscript:v137];
                    }
                  }
                }
              }

              v123 = [v121 countByEnumeratingWithState:&v343 objects:v357 count:16];
            }

            while (v123);
          }

          v140 = [v318 externalIdentifier];
          v309 = v140 != 0;

          v326 = 0;
          v327 = 0;
          v324 = 0;
          v325 = 0;
          v328 = 0;
          v329 = 0;
          v43 = 0;
          v322 = 0;
          v323 = 0;
          v44 = 0;
          v45 = 0;
          v319 = 0;
          v320 = 0;
          v321 = 0;
          v334 = 0;
          v47 = &off_43560;
          v312 = &off_43560;
          v313 = &off_43560;
          v48 = &off_43560;
          v49 = &off_43560;
          v310 = &off_43590;
          v311 = 0;
          v307 = &off_43590;
          v308 = 0;
          v305 = &off_43560;
          v306 = &off_43560;
          v330 = 0;
          v331 = &off_43560;
          v46 = &off_435F0;
          goto LABEL_193;
        case 6uLL:
          v301 = v8;
          v341 = 0u;
          v342 = 0u;
          v339 = 0u;
          v340 = 0u;
          v21 = [v14 contentFilter];
          v22 = [v21 perApp];
          v23 = [v22 appRules];

          v24 = [v23 countByEnumeratingWithState:&v339 objects:v356 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v340;
            do
            {
              for (k = 0; k != v25; k = k + 1)
              {
                if (*v340 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v28 = *(*(&v339 + 1) + 8 * k);
                v29 = [v28 matchSigningIdentifier];
                if (v29)
                {
                  v30 = v29;
                  v31 = [v28 matchSigningIdentifier];
                  v32 = [v16 objectForKeyedSubscript:v31];

                  if (!v32)
                  {
                    v33 = [v28 matchDomains];
                    if (v33 && (v34 = v33, [v28 matchDomains], v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(v35, "count"), v35, v34, v36))
                    {
                      v37 = [v28 matchDomains];
                      v38 = [v37 count];

                      if (v38 == &dword_0 + 1)
                      {
                        v39 = [v28 matchDomains];
                        [v39 objectAtIndexedSubscript:0];
                      }

                      else
                      {
                        v39 = [NSBundle bundleForClass:objc_opt_class()];
                        [v39 localizedStringForKey:@"MULTIPLE_DOMAINS" value:&stru_411E8 table:@"MobileVPN"];
                      }
                      v40 = ;
                      v41 = [v28 matchSigningIdentifier];
                      [v16 setObject:v40 forKeyedSubscript:v41];
                    }

                    else
                    {
                      v39 = [v28 matchSigningIdentifier];
                      [v16 setObject:&stru_411E8 forKeyedSubscript:v39];
                    }
                  }
                }
              }

              v25 = [v23 countByEnumeratingWithState:&v339 objects:v356 count:16];
            }

            while (v25);
          }

          v42 = [v318 externalIdentifier];
          v309 = v42 != 0;

          v326 = 0;
          v327 = 0;
          v324 = 0;
          v325 = 0;
          v328 = 0;
          v329 = 0;
          v43 = 0;
          v322 = 0;
          v323 = 0;
          v44 = 0;
          v45 = 0;
          v319 = 0;
          v320 = 0;
          v321 = 0;
          v334 = 0;
          v46 = &off_43590;
          v311 = 0;
          v312 = &off_43560;
          v47 = &off_43560;
          v313 = &off_43560;
          v48 = &off_43560;
          v49 = &off_43560;
          v310 = &off_43590;
          v307 = &off_43590;
          v308 = 0;
          v306 = &off_43560;
          v330 = 0;
          v331 = &off_43560;
LABEL_192:
          v314 = &off_43560;
          v305 = &off_43560;
LABEL_193:
          v8 = v301;
LABEL_194:
          v275 = v49;
          if ([v49 BOOLValue] && -[VPNConnectionStore configurationIsManaged:](v317, "configurationIsManaged:", v318))
          {
            [v8 setValue:v275 forKey:@"VPNOnDemandUserOverrideDisabled"];
          }

          [v8 setValue:v331 forKey:@"VPNEnabled"];
          if (v330)
          {
            v276 = v330;
          }

          else
          {
            v276 = &stru_411E8;
          }

          [v8 setValue:v276 forKey:@"authorization"];
          if (v334)
          {
            v277 = v334;
          }

          else
          {
            v277 = &stru_411E8;
          }

          [v8 setValue:v277 forKey:@"server"];
          if (v333)
          {
            v278 = v333;
          }

          else
          {
            v278 = &stru_411E8;
          }

          [v8 setValue:v278 forKey:@"dispName"];
          if (v328)
          {
            v279 = v328;
          }

          else
          {
            v279 = &stru_411E8;
          }

          [v8 setValue:v279 forKey:@"secret"];
          [v8 setValue:v306 forKey:@"securID"];
          [v8 setValue:&off_43578 forKey:@"encrypLevel"];
          [v8 setValue:v307 forKey:@"eapType"];
          [v8 setValue:v46 forKey:@"dnsType"];
          [v8 setValue:v314 forKey:@"dnsProhibitDisablement"];
          [v8 setValue:v310 forKey:@"authType"];
          if (v327)
          {
            v280 = v327;
          }

          else
          {
            v280 = &stru_411E8;
          }

          [v8 setValue:v280 forKey:@"group"];
          if (v329)
          {
            v281 = v329;
          }

          else
          {
            v281 = &stru_411E8;
          }

          [v8 setValue:v281 forKey:@"password"];
          [v8 setValue:v312 forKey:@"VPNSendAllTraffic"];
          [v8 setValue:v305 forKey:@"VPNAlwaysPrompt"];
          if (v326)
          {
            [v8 setValue:v326 forKey:@"VPNCertificate"];
          }

          if (v43)
          {
            v282 = v43;
          }

          else
          {
            v282 = &off_43560;
          }

          [v8 setValue:v282 forKey:@"VPNProxyType"];
          if (v322)
          {
            v283 = v322;
          }

          else
          {
            v283 = &stru_411E8;
          }

          [v8 setValue:v283 forKey:@"VPNProxyServer"];
          if (v44)
          {
            v284 = v44;
          }

          else
          {
            v284 = &stru_411E8;
          }

          [v8 setValue:v284 forKey:@"VPNProxyPort"];
          if (v323)
          {
            v285 = v323;
          }

          else
          {
            v285 = &stru_411E8;
          }

          [v8 setValue:v285 forKey:@"VPNProxyPacFile"];
          [v8 setValue:v47 forKey:@"VPNProxyAuthenticate"];
          if (v45)
          {
            v286 = v45;
          }

          else
          {
            v286 = &stru_411E8;
          }

          [v8 setValue:v286 forKey:@"VPNProxyUsername"];
          [v8 setValue:v313 forKey:@"VPNOnDemandCapable"];
          [v8 setValue:v48 forKey:@"VPNOnDemandEnabled"];
          if (v319)
          {
            v287 = v319;
          }

          else
          {
            v287 = &stru_411E8;
          }

          [v8 setValue:v287 forKey:@"VPNProxyPassword"];
          [v8 setValue:&off_43560 forKey:@"VPNPasswordRequired"];
          if (v315)
          {
            v288 = v315;
          }

          else
          {
            v288 = &stru_411E8;
          }

          [v8 setValue:v288 forKey:@"VPNApplicationName"];
          if (v332)
          {
            v289 = v332;
          }

          else
          {
            v289 = &stru_411E8;
          }

          [v8 setValue:v289 forKey:@"VPNApplicationBundleID"];
          if (v325)
          {
            v290 = v325;
          }

          else
          {
            v290 = &stru_411E8;
          }

          [v8 setValue:v290 forKey:@"VPNLocalIdentifier"];
          if (v324)
          {
            v291 = v324;
          }

          else
          {
            v291 = &stru_411E8;
          }

          [v8 setValue:v291 forKey:@"VPNRemoteIdentifier"];
          if (v309)
          {
            [v8 setValue:&off_435A8 forKey:@"VPNIsPerApp"];
          }

          v6 = v316;
          v7 = v318;
          if ([v16 count])
          {
            [v8 setValue:v16 forKey:@"VPNIncludedBundleIDs"];
          }

          if ([v311 count])
          {
            [v8 setValue:v311 forKey:@"VPNMatchDomains"];
          }

          if ([v321 count])
          {
            [v8 setValue:v321 forKey:@"VPNExcludeDomains"];
          }

          if ([v320 count])
          {
            [v8 setValue:v320 forKey:@"VPNMatchFQDNs"];
          }

          if ([v308 count])
          {
            [v8 setValue:v308 forKey:@"VPNExcludeFQDNs"];
          }

          goto LABEL_260;
      }
    }

    if (a4 - 7 > 1)
    {
      v326 = 0;
      v327 = 0;
      v324 = 0;
      v325 = 0;
      v328 = 0;
      v329 = 0;
      v43 = 0;
      v322 = 0;
      v323 = 0;
      v44 = 0;
      v45 = 0;
      v319 = 0;
      v320 = 0;
      v311 = 0;
      v312 = &off_43560;
      v321 = 0;
      v309 = 0;
      v334 = 0;
      v330 = 0;
      v331 = &off_43560;
      v46 = &off_43590;
      v47 = &off_43560;
      v313 = &off_43560;
      v314 = &off_43560;
      v48 = &off_43560;
      v49 = &off_43560;
      v310 = &off_43590;
      v307 = &off_43590;
      v308 = 0;
      v305 = &off_43560;
      v306 = &off_43560;
      goto LABEL_194;
    }

    v145 = [v14 relay];
    v146 = [v145 isEnabled];
    v147 = &off_435A8;
    if (!v146)
    {
      v147 = &off_43560;
    }

    v331 = v147;

    v148 = [v14 relay];
    v149 = [v148 relays];
    v150 = [v149 lastObject];
    v151 = [v150 HTTP3RelayURL];
    v152 = [v151 absoluteString];

    v334 = v152;
    if (!v152)
    {
      v153 = [v14 relay];
      v154 = [v153 relays];
      v155 = [v154 lastObject];
      v156 = [v155 HTTP2RelayURL];
      v334 = [v156 absoluteString];
    }

    v157 = [v14 relay];
    v158 = [v157 perApp];
    v159 = [v158 appRules];
    v301 = v8;
    if ([v159 count])
    {
      v309 = 1;
    }

    else
    {
      v256 = [v14 relay];
      v257 = [v256 matchDomains];
      v309 = [v257 count] != 0;
    }

    v258 = [v14 relay];
    v311 = [v258 matchDomains];

    v259 = [v14 relay];
    v321 = [v259 excludedDomains];

    v260 = [v14 relay];
    v320 = [v260 matchFQDNs];

    v261 = [v14 relay];
    v308 = [v261 excludedFQDNs];

    v337 = 0u;
    v338 = 0u;
    v335 = 0u;
    v336 = 0u;
    v262 = [v14 relay];
    v263 = [v262 perApp];
    v264 = [v263 appRules];

    v265 = [v264 countByEnumeratingWithState:&v335 objects:v355 count:16];
    if (v265)
    {
      v266 = v265;
      v267 = *v336;
      do
      {
        for (m = 0; m != v266; m = m + 1)
        {
          if (*v336 != v267)
          {
            objc_enumerationMutation(v264);
          }

          v269 = *(*(&v335 + 1) + 8 * m);
          v270 = [v269 matchSigningIdentifier];
          if (v270)
          {
            v271 = v270;
            v272 = [v269 matchSigningIdentifier];
            v273 = [v16 objectForKeyedSubscript:v272];

            if (!v273)
            {
              v274 = [v269 matchSigningIdentifier];
              [v16 setObject:&stru_411E8 forKeyedSubscript:v274];
            }
          }
        }

        v266 = [v264 countByEnumeratingWithState:&v335 objects:v355 count:16];
      }

      while (v266);
    }

    v326 = 0;
    v327 = 0;
    v324 = 0;
    v325 = 0;
    v328 = 0;
    v329 = 0;
    v43 = 0;
    v322 = 0;
    v323 = 0;
    v44 = 0;
    v45 = 0;
    v319 = 0;
    v330 = 0;
    v46 = &off_43590;
    v312 = &off_43560;
    v313 = &off_43560;
    v47 = &off_43560;
    v48 = &off_43560;
    v49 = &off_43560;
    v310 = &off_43590;
    v306 = &off_43560;
    v307 = &off_43590;
    goto LABEL_192;
  }

LABEL_260:

LABEL_261:

  return v8;
}

- (void)setActiveVPNID:(id)a3 withGrade:(unint64_t)a4
{
  v7 = a3;
  if (a4 != 2)
  {
    v8 = (&self->super.isa + a4);
    v9 = v8 + 13;
    if (([v8[13] isEqual:v7] & 1) == 0)
    {
      if ([(VPNConnectionStore *)self saveActiveVPNIDToPreferences:v7 withGrade:a4])
      {
        [v8[3] disconnect];
        objc_storeStrong(v9, a3);
        v10 = [(VPNConnectionStore *)self connectionWithServiceID:*v9 withGrade:a4];
        v11 = v8[3];
        v8[3] = v10;

        [(VPNConnectionStore *)self _connectionsChanged];
      }

      else
      {
        v12 = sub_46D8();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_29E48();
        }
      }
    }
  }
}

- (id)activeVPNIDsWithGrade:(unint64_t)a3
{
  if (a3 == 8 || a3 == 2)
  {
    if (!self->_gradeActiveVPNIDLoaded[a3])
    {
      v5 = [(VPNConnectionStore *)self copyActiveVPNIDsFromPrefsForGrade:a3];
      v6 = self->_gradeActiveVPNID[a3];
      self->_gradeActiveVPNID[a3] = v5;

      if (self->_gradeActiveVPNID[a3])
      {
        v7 = 1;
      }

      else
      {
        self->_gradeActiveVPNID[a3] = &__NSArray0__struct;

        v7 = 0;
      }

      self->_gradeActiveVPNIDLoaded[a3] = v7;
    }

    v8 = self->_gradeActiveVPNID[a3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)activeVPNIDWithGrade:(unint64_t)a3
{
  if (a3 == 2)
  {
    v4 = 0;
  }

  else
  {
    gradeActiveVPNIDLoaded = self->_gradeActiveVPNIDLoaded;
    if (!self->_gradeActiveVPNIDLoaded[a3])
    {
      v9 = [(VPNConnectionStore *)self copyActiveVPNIDsFromPrefsForGrade:a3];
      gradeActiveVPNID = self->_gradeActiveVPNID;
      v11 = self->_gradeActiveVPNID[a3];
      self->_gradeActiveVPNID[a3] = 0;

      if (v9 && [v9 count])
      {
        v12 = [v9 firstObject];
        v13 = gradeActiveVPNID[a3];
        gradeActiveVPNID[a3] = v12;
      }

      gradeActiveVPNIDLoaded[a3] = gradeActiveVPNID[a3] != 0;
    }

    v4 = self->_gradeActiveVPNID[a3];
  }

  return v4;
}

- (BOOL)isActiveVPNID:(id)a3 withGrade:(unint64_t)a4
{
  v6 = a3;
  v7 = [(VPNConnectionStore *)self activeVPNIDWithGrade:a4];
  LOBYTE(self) = [v7 isEqual:v6];

  return self;
}

- (id)connectionWithServiceID:(id)a3 withGrade:(unint64_t)a4
{
  v6 = a3;
  if (a4 == 8 || a4 == 2)
  {
    v7 = self->_gradeCurrentConnection[a4];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = v7;
    v9 = [(VPNConnection *)v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = *v26;
      while (2)
      {
        for (i = 0; i != v9; i = (i + 1))
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          v13 = [v12 serviceID];
          v14 = [v13 isEqual:v6];

          if (v14)
          {
            v9 = v12;
            goto LABEL_13;
          }
        }

        v9 = [(VPNConnection *)v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    if (v9)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v15 = [(VPNConnection *)self->_gradeCurrentConnection[a4] serviceID];
    v16 = [v6 isEqual:v15];

    if (v16)
    {
      v9 = self->_gradeCurrentConnection[a4];
      if (v9)
      {
        goto LABEL_20;
      }
    }
  }

  connectionDict = self->_connectionDict;
  v18 = self->_connectionDict[a4];
  if (!v18)
  {
    v19 = objc_alloc_init(NSMutableDictionary);
    v20 = connectionDict[a4];
    connectionDict[a4] = v19;

    v18 = connectionDict[a4];
  }

  v9 = [(NSMutableDictionary *)v18 objectForKey:v6];
  if (!v9)
  {
    v22 = [(VPNConnectionStore *)self optionsForServiceID:v6 withGrade:a4];
    if (!v22 || (v23 = [[VPNConnection alloc] initWithServiceID:v6 options:v22]) == 0)
    {

      v9 = 0;
      goto LABEL_22;
    }

    v9 = v23;
    [(NSMutableDictionary *)connectionDict[a4] setObject:v23 forKey:v6];
  }

LABEL_20:
  if ([(VPNConnection *)v9 vpnConnectionType]== &dword_0 + 3)
  {
    v24 = 0;
    [(VPNConnectionStore *)self isTypeEnabledWithServiceID:v6 withGrade:a4 outProviderAvailable:&v24];
    [(VPNConnection *)v9 setIsProviderAvailable:v24];
  }

LABEL_22:

  return v9;
}

- (BOOL)alwaysOnToggleEnabledForServiceID:(id)a3
{
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(VPNConnectionStore *)self configurations];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v16 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v15 + 1) + 8 * v8);
      if ([v9 grade] != &dword_0 + 3)
      {
        v10 = [v9 identifier];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          break;
        }
      }

      if (v6 == ++v8)
      {
        v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v6 = v9;

    if (v6)
    {
      v13 = [v6 alwaysOnVPN];

      if (v13)
      {
        v5 = [v6 alwaysOnVPN];
        v12 = [v5 isToggleEnabled];
        goto LABEL_14;
      }
    }

    v12 = 0;
  }

  else
  {
LABEL_10:
    v12 = 0;
LABEL_14:
  }

  return v12;
}

- (id)organizationForServiceID:(id)a3
{
  v4 = a3;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = [(VPNConnectionStore *)self configurations];
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v29 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v28 + 1) + 8 * v9);
      if ([v10 grade] != &dword_0 + 3)
      {
        v11 = [v10 identifier];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v13 = v10;

    if (!v13)
    {
      goto LABEL_15;
    }

    v14 = [v13 payloadInfo];
    if (v14)
    {
      v15 = v14;
      v16 = [v13 payloadInfo];
      v17 = [v16 payloadOrganization];

      if (v17)
      {
        v18 = [v13 payloadInfo];
        v19 = [v18 payloadOrganization];

        goto LABEL_17;
      }
    }

    v22 = [v13 applicationName];

    if (v22)
    {
      v20 = [v13 applicationName];
    }

    else
    {
      v23 = [v13 appVPN];

      if (v23)
      {
        v24 = 2;
      }

      else
      {
        v25 = [v13 dnsProxy];

        if (v25)
        {
          v24 = 5;
        }

        else
        {
          v26 = [v13 contentFilter];

          if (v26)
          {
            v24 = 6;
          }

          else
          {
            v27 = [v13 urlFilter];

            if (v27)
            {
              v24 = 9;
            }

            else
            {
              v24 = 0;
            }
          }
        }
      }

      v20 = [VPNConnectionStore applicationNameForConfiguration:v13 withGrade:v24];
    }
  }

  else
  {
LABEL_10:

LABEL_15:
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = [v13 localizedStringForKey:@"CUSTOM" value:&stru_411E8 table:@"MobileVPN"];
  }

  v19 = v20;
LABEL_17:

  return v19;
}

- (id)organizationForService:(__SCNetworkService *)a3
{
  v3 = SCNetworkServiceCopyProtocol(a3, @"com.apple.payload");
  if (v3)
  {
    v4 = v3;
    v5 = SCNetworkProtocolGetConfiguration(v3);
    v6 = v5;
    if (v5)
    {
      v7 = [v5 objectForKeyedSubscript:@"PayloadOrganization"];
    }

    else
    {
      v7 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v7 = 0;
  }

  if ([v7 length])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)getProfileIDForServiceID:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(VPNConnectionStore *)self configurations];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 grade] != &dword_0 + 3)
        {
          v10 = [v9 identifier];
          v11 = [v10 isEqual:v4];

          if (v11)
          {
            v12 = [v9 payloadInfo];
            v6 = [v12 profileIdentifier];

            goto LABEL_12;
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v6;
}

- (id)vpnServicesForCurrentSetWithGrade:(unint64_t)a3 excludePerApp:(BOOL)a4
{
  v80 = a4;
  v6 = objc_alloc_init(NSMutableArray);
  v7 = objc_alloc_init(NSMutableArray);
  v8 = [(VPNConnectionStore *)self configurations];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_86;
  }

  v10 = [v8 mutableCopy];
  if ([v10 count] <= 0x20)
  {
    v11 = sub_F970;
  }

  else
  {
    v11 = sub_F900;
  }

  [v10 sortUsingFunction:v11 context:0];
  v12 = 1;
  if (a3)
  {
    v12 = 2;
  }

  v78 = v12;
  v79 = v7;
  v82 = v6;
  v70 = v9;
  v72 = self;
  v73 = v10;
  if (a3 != 4)
  {
    v85 = 0uLL;
    v86 = 0uLL;
    v83 = 0uLL;
    v84 = 0uLL;
    v25 = v10;
    v26 = [v25 countByEnumeratingWithState:&v83 objects:v95 count:16];
    v27 = v80;
    if (!v26)
    {
      goto LABEL_82;
    }

    v28 = v26;
    v29 = *v84;
    v81 = v25;
    while (1)
    {
      v30 = 0;
      do
      {
        if (*v84 != v29)
        {
          objc_enumerationMutation(v25);
        }

        v31 = *(*(&v83 + 1) + 8 * v30);
        if ([v31 grade] == &dword_0 + 3)
        {
          goto LABEL_59;
        }

        if (v27)
        {
          v32 = [v31 externalIdentifier];

          if (v32)
          {
            goto LABEL_59;
          }
        }

        if (a3 <= 5)
        {
          switch(a3)
          {
            case 2uLL:
              v39 = [v31 appVPN];

              if (!v39)
              {
                goto LABEL_59;
              }

              v40 = [v31 appVPN];
              v41 = [v40 isEnabled];

              v34 = [v31 identifier];
              if (v41)
              {
                goto LABEL_56;
              }

              v42 = v79;
LABEL_57:
              [v42 addObject:v34];
              goto LABEL_58;
            case 3uLL:
              v37 = [v31 alwaysOnVPN];
LABEL_54:
              v50 = v37;

              if (!v50)
              {
                goto LABEL_59;
              }

LABEL_55:
              v34 = [v31 identifier];
LABEL_56:
              v42 = v82;
              goto LABEL_57;
            case 5uLL:
              v37 = [v31 dnsProxy];
              goto LABEL_54;
          }

LABEL_46:
          v43 = [v31 VPN];
          if (v43)
          {
            v44 = v43;
            v45 = [v31 grade];

            if (v45 == v78)
            {
              goto LABEL_55;
            }
          }

          goto LABEL_59;
        }

        if (a3 > 7)
        {
          if (a3 != 8)
          {
            if (a3 == 9)
            {
              v38 = [v31 urlFilter];

              if (v38)
              {
                goto LABEL_55;
              }

              goto LABEL_59;
            }

            goto LABEL_46;
          }

          v46 = [v31 relay];
          if (!v46)
          {
            goto LABEL_59;
          }

          v47 = v46;
          v48 = [v31 relay];
          v49 = [v48 matchDomains];
          if ([v49 count])
          {

            v25 = v81;
LABEL_62:
            v53 = [v31 relay];
            v54 = [v53 isEnabled];

            v34 = [v31 identifier];
            if (v54)
            {
              v55 = v82;
            }

            else
            {
              v55 = v79;
            }

            [v55 addObject:v34];
            v27 = v80;
LABEL_58:

            goto LABEL_59;
          }

          v74 = [v31 relay];
          v51 = [v74 perApp];
          v52 = [v51 appRules];
          v76 = [v52 count];

          v27 = v80;
          v25 = v81;
          if (v76)
          {
            goto LABEL_62;
          }
        }

        else
        {
          if (a3 == 6)
          {
            v37 = [v31 contentFilter];
            goto LABEL_54;
          }

          v33 = [v31 relay];
          if (!v33)
          {
            goto LABEL_59;
          }

          v34 = v33;
          v35 = [v31 relay];
          v36 = [v35 matchDomains];
          if ([v36 count])
          {

            v25 = v81;
            goto LABEL_58;
          }

          v75 = [v31 relay];
          v56 = [v75 perApp];
          v57 = [v56 appRules];
          v77 = [v57 count];

          v27 = v80;
          v25 = v81;
          if (!v77)
          {
            goto LABEL_55;
          }
        }

LABEL_59:
        v30 = v30 + 1;
      }

      while (v28 != v30);
      v58 = [v25 countByEnumeratingWithState:&v83 objects:v95 count:16];
      v28 = v58;
      if (!v58)
      {
        goto LABEL_82;
      }
    }
  }

  v93 = 0uLL;
  v94 = 0uLL;
  v91 = 0uLL;
  v92 = 0uLL;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v91 objects:v97 count:16];
  if (!v14)
  {

    goto LABEL_71;
  }

  v15 = v14;
  v16 = 0;
  v17 = *v92;
  do
  {
    for (i = 0; i != v15; i = i + 1)
    {
      if (*v92 != v17)
      {
        objc_enumerationMutation(v13);
      }

      v19 = *(*(&v91 + 1) + 8 * i);
      if ([v19 grade] != &dword_0 + 3)
      {
        v20 = [v19 dnsSettings];
        if (v20)
        {
          v21 = v20;
          v22 = [v19 grade];

          if (v22 == &dword_0 + 1)
          {
            v23 = [v19 identifier];
            [v6 addObject:v23];

            v16 = 1;
          }
        }
      }
    }

    v15 = [v13 countByEnumeratingWithState:&v91 objects:v97 count:16];
  }

  while (v15);

  v24 = v73;
  if ((v16 & 1) == 0)
  {
LABEL_71:
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v59 = v13;
    v60 = [v59 countByEnumeratingWithState:&v87 objects:v96 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = *v88;
      do
      {
        for (j = 0; j != v61; j = j + 1)
        {
          if (*v88 != v62)
          {
            objc_enumerationMutation(v59);
          }

          v64 = *(*(&v87 + 1) + 8 * j);
          if ([v64 grade] != &dword_0 + 3)
          {
            v65 = [v64 dnsSettings];
            if (v65)
            {
              v66 = v65;
              v67 = [v64 grade];

              if (v67 == &dword_0 + 2)
              {
                v68 = [v64 identifier];
                [v6 addObject:v68];
              }
            }
          }
        }

        v61 = [v59 countByEnumeratingWithState:&v87 objects:v96 count:16];
      }

      while (v61);
    }

LABEL_82:
    v24 = v73;

    v6 = v82;
  }

  v7 = v79;
  if ([v79 count])
  {
    [v6 addObjectsFromArray:v79];
  }

  objc_storeStrong(&v72->_gradeVPNServiceIDs[a3], v6);

  v9 = v71;
LABEL_86:

  return v6;
}

- (id)vpnServiceCountWithGrade:(unint64_t)a3
{
  v3 = [(VPNConnectionStore *)self vpnServicesForCurrentSetWithGrade:a3];
  v4 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 count]);

  return v4;
}

- (id)vpnServiceTotalCount
{
  v3 = [(VPNConnectionStore *)self vpnServicesForCurrentSetWithGrade:3];
  v4 = [v3 count];

  if (v4)
  {
    v5 = (&dword_0 + 1);
  }

  else
  {
    v6 = [(VPNConnectionStore *)self vpnServicesForCurrentSetWithGrade:1];
    v7 = [v6 count];
    v8 = [(VPNConnectionStore *)self vpnServicesForCurrentSetWithGrade:0];
    v9 = &v7[[v8 count]];
    v10 = [(VPNConnectionStore *)self vpnServicesForCurrentSetWithGrade:2];
    v11 = [v10 count];
    v12 = [(VPNConnectionStore *)self vpnServicesForCurrentSetWithGrade:7];
    v13 = &v9[[v12 count] + v11];
    v14 = [(VPNConnectionStore *)self vpnServicesForCurrentSetWithGrade:2];
    v5 = [v14 count] + v13;
  }

  v15 = [NSNumber numberWithUnsignedInteger:v5];

  return v15;
}

- (BOOL)gradePresent:(unint64_t)a3
{
  v5 = [(VPNConnectionStore *)self vpnServicesForCurrentSetWithGrade:3];
  v6 = [v5 count];

  if (v6)
  {
    return a3 == 3;
  }

  v8 = [(VPNConnectionStore *)self vpnServicesForCurrentSetWithGrade:a3];
  v7 = [v8 count] != 0;

  return v7;
}

- (id)appNameForServiceID:(id)a3 withGrade:(unint64_t)a4
{
  v6 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [(VPNConnectionStore *)self configurations];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v11 grade] != &dword_0 + 3)
        {
          v12 = [v11 identifier];
          v13 = [v12 isEqual:v6];

          if (v13)
          {
            v8 = v11;
            goto LABEL_12;
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v14 = [VPNConnectionStore applicationNameForConfiguration:v8 withGrade:a4];

  return v14;
}

- (BOOL)isTypeEnabledWithServiceID:(id)a3 withGrade:(unint64_t)a4 outProviderAvailable:(BOOL *)a5
{
  v8 = a3;
  if (a5)
  {
    *a5 = 1;
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v9 = [(VPNConnectionStore *)self configurations];
  v10 = [v9 countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v60;
LABEL_5:
    v13 = 0;
    while (1)
    {
      if (*v60 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v59 + 1) + 8 * v13);
      if ([v14 grade] != &dword_0 + 3)
      {
        v15 = [v14 identifier];
        v16 = [v15 isEqual:v8];

        if (v16)
        {
          break;
        }
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v59 objects:v64 count:16];
        if (v11)
        {
          goto LABEL_5;
        }

        goto LABEL_12;
      }
    }

    v17 = v14;

    if (!v17)
    {
      goto LABEL_49;
    }

    if (a4 <= 1)
    {
      v18 = [v17 VPN];

      if (!v18)
      {
        goto LABEL_49;
      }

      v19 = [v17 VPN];
      v20 = [v19 protocol];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v22 = [v17 VPN];
        goto LABEL_18;
      }

      goto LABEL_48;
    }

    switch(a4)
    {
      case 4uLL:
        v46 = [v17 dnsSettings];
        break;
      case 3uLL:
        v46 = [v17 alwaysOnVPN];
        break;
      case 2uLL:
        v42 = [v17 appVPN];

        if (!v42)
        {
          goto LABEL_49;
        }

        v43 = [v17 appVPN];
        v44 = [v43 protocol];
        objc_opt_class();
        v45 = objc_opt_isKindOfClass();

        if (v45)
        {
          v22 = [v17 appVPN];
LABEL_18:
          v23 = v22;
          v24 = [v22 protocol];
          v25 = [v24 pluginType];

          if (!v25)
          {
            goto LABEL_50;
          }

          v26 = [LSApplicationProxy applicationProxyForIdentifier:v25];
          v27 = v26;
          if (v26)
          {
            v28 = [v26 appState];
            if (v28)
            {
              v29 = v28;
              v30 = [v27 appState];
              if ([v30 isInstalled])
              {
                v31 = [v27 appState];
                v32 = [v31 isValid];

                if (v32)
                {
                  if (!a5)
                  {
                    v48 = 1;
                    goto LABEL_57;
                  }

                  [v27 plugInKitPlugins];
                  v55 = 0u;
                  v56 = 0u;
                  v57 = 0u;
                  v33 = v58 = 0u;
                  v54 = [(__CFString *)v33 countByEnumeratingWithState:&v55 objects:v63 count:16];
                  if (v54)
                  {
                    v52 = v27;
                    v53 = *v56;
                    while (2)
                    {
                      for (i = 0; i != v54; i = i + 1)
                      {
                        if (*v56 != v53)
                        {
                          objc_enumerationMutation(v33);
                        }

                        v35 = *(*(&v55 + 1) + 8 * i);
                        if (a4 > 1)
                        {
                          v38 = [*(*(&v55 + 1) + 8 * i) protocol];
                          if ([v38 isEqualToString:@"com.apple.networkextension.packet-tunnel"])
                          {

LABEL_61:
                            v41 = 1;
                            goto LABEL_62;
                          }

                          v39 = [v35 protocol];
                          v40 = [v39 isEqualToString:@"com.apple.networkextension.app-proxy"];

                          if (v40)
                          {
                            goto LABEL_61;
                          }
                        }

                        else
                        {
                          v36 = [*(*(&v55 + 1) + 8 * i) protocol];
                          v37 = [v36 isEqualToString:@"com.apple.networkextension.packet-tunnel"];

                          if (v37)
                          {
                            goto LABEL_61;
                          }
                        }
                      }

                      v54 = [(__CFString *)v33 countByEnumeratingWithState:&v55 objects:v63 count:16];
                      if (v54)
                      {
                        continue;
                      }

                      break;
                    }

                    v41 = 0;
LABEL_62:
                    v27 = v52;
                  }

                  else
                  {
                    v41 = 0;
                  }

                  *a5 = v41;
                  v48 = 1;
LABEL_56:

LABEL_57:
                  goto LABEL_51;
                }
              }

              else
              {
              }
            }
          }

          v33 = [NSString stringWithFormat:@"VPN-%@.plist", v25];
          v50 = SCPreferencesCreate(kCFAllocatorDefault, @"com.apple.mobilevpn", v33);
          if (v50)
          {
            v51 = v50;
            v48 = [SCPreferencesGetValue(v50 @"Enabled")];
            CFRelease(v51);
          }

          else
          {
            v48 = 0;
            *a5 = 0;
          }

          goto LABEL_56;
        }

LABEL_48:
        v25 = 0;
        v48 = 1;
        goto LABEL_51;
      default:
        if (a4 - 7 > 1)
        {
          goto LABEL_49;
        }

        v46 = [v17 relay];
        break;
    }

    v47 = v46;

    if (!v47)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

LABEL_12:

  v17 = 0;
LABEL_49:
  v25 = 0;
LABEL_50:
  v48 = 0;
LABEL_51:

  return v48;
}

- (BOOL)isEnabledWithServiceID:(id)a3 withGrade:(unint64_t)a4
{
  v6 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = [(VPNConnectionStore *)self configurations];
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = *v26;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v26 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v25 + 1) + 8 * v10);
      if ([v11 grade] != &dword_0 + 3)
      {
        v12 = [v11 identifier];
        v13 = [v12 isEqual:v6];

        if (v13)
        {
          break;
        }
      }

      if (v8 == ++v10)
      {
        v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v8 = v11;

    if (!v8)
    {
      goto LABEL_43;
    }

    if (a4 > 2)
    {
      if (a4 <= 4)
      {
        if (a4 == 3)
        {
          v20 = [v8 alwaysOnVPN];

          if (v20)
          {
            v16 = [v8 alwaysOnVPN];
            goto LABEL_38;
          }
        }

        else
        {
          v15 = [v8 dnsSettings];

          if (v15)
          {
            v16 = [v8 dnsSettings];
LABEL_38:
            v7 = v16;
            v14 = [v16 isEnabled];
            goto LABEL_39;
          }
        }

        goto LABEL_43;
      }

      if (a4 != 5)
      {
        if (a4 == 6)
        {
          v18 = [v8 contentFilter];

          if (v18)
          {
            v16 = [v8 contentFilter];
            goto LABEL_38;
          }

          goto LABEL_43;
        }

        goto LABEL_28;
      }

      v21 = [v8 dnsProxy];

      if (v21)
      {
        v16 = [v8 dnsProxy];
        goto LABEL_38;
      }

      goto LABEL_43;
    }

    if (a4)
    {
      if (a4 != 1)
      {
        if (a4 == 2)
        {
          v17 = [v8 appVPN];

          if (v17)
          {
            v16 = [v8 appVPN];
            goto LABEL_38;
          }

          goto LABEL_43;
        }

LABEL_28:
        if (a4 - 7 > 1)
        {
          if (a4 == 9)
          {
            v23 = [v8 urlFilter];

            if (v23)
            {
              v16 = [v8 urlFilter];
              goto LABEL_38;
            }
          }
        }

        else
        {
          v19 = [v8 relay];

          if (v19)
          {
            v16 = [v8 relay];
            goto LABEL_38;
          }
        }

        goto LABEL_43;
      }

      if ([v8 grade] != &dword_0 + 2)
      {
LABEL_43:
        v14 = 0;
        goto LABEL_44;
      }
    }

    else if ([v8 grade] != &dword_0 + 1)
    {
      goto LABEL_43;
    }

    v22 = [v8 VPN];

    if (v22)
    {
      v16 = [v8 VPN];
      goto LABEL_38;
    }

    goto LABEL_43;
  }

LABEL_10:
  v14 = 0;
LABEL_39:

LABEL_44:
  return v14;
}

- (BOOL)uiToggleAllowedWithServiceID:(id)a3 withGrade:(unint64_t)a4
{
  v6 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [(VPNConnectionStore *)self configurations];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v18 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v17 + 1) + 8 * v10);
      if ([v11 grade] != &dword_0 + 3)
      {
        v12 = [v11 identifier];
        v13 = [v12 isEqual:v6];

        if (v13)
        {
          break;
        }
      }

      if (v8 == ++v10)
      {
        v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v8 = v11;

    v14 = 0;
    if (a4 - 7 <= 1 && v8)
    {
      v15 = [v8 relay];

      if (v15)
      {
        v7 = [v8 relay];
        v14 = [v7 isUIToggleEnabled];
        goto LABEL_15;
      }

      v14 = 0;
    }
  }

  else
  {
LABEL_10:
    v14 = 0;
LABEL_15:
  }

  return v14;
}

+ (id)applicationNameForConfiguration:(id)a3 withGrade:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 applicationName];
  v7 = v6;
  if (v5 && !v6)
  {
    if (a4 <= 1)
    {
      v8 = [v5 VPN];
      v9 = [v8 protocol];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v11 = [v5 VPN];
        goto LABEL_6;
      }

LABEL_32:
      v7 = 0;
      goto LABEL_33;
    }

    v7 = 0;
    if (a4 <= 5)
    {
      if (a4 == 2)
      {
        v24 = [v5 appVPN];
        v25 = [v24 protocol];
        objc_opt_class();
        v26 = objc_opt_isKindOfClass();

        if ((v26 & 1) == 0)
        {
          goto LABEL_32;
        }

        v11 = [v5 appVPN];
      }

      else
      {
        if (a4 != 5)
        {
          goto LABEL_28;
        }

        v14 = [v5 dnsProxy];
        v15 = [v14 protocol];
        objc_opt_class();
        v16 = objc_opt_isKindOfClass();

        if ((v16 & 1) == 0)
        {
          goto LABEL_32;
        }

        v11 = [v5 dnsProxy];
      }

LABEL_6:
      v12 = v11;
      v13 = [v11 protocol];
      v7 = [v13 pluginType];

      if (!v7)
      {
        goto LABEL_28;
      }

LABEL_16:
      if ([v7 isEqualToString:@"com.cisco.anyconnect.applevpn.plugin"])
      {
        v17 = @"com.cisco.Cisco-AnyConnect.vpnplugin";
      }

      else
      {
        if (![v7 isEqualToString:@"net.juniper.sslvpn"])
        {
LABEL_21:
          v18 = [v7 componentsSeparatedByString:@"."];
          if ([v18 count] >= 4 && (objc_msgSend(v18, "lastObject"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isEqualToString:", @"vpnplugin"), v19, (v20 & 1) != 0))
          {
            v21 = -2;
          }

          else
          {
            if ([v18 count] < 3)
            {
LABEL_27:
              v7 = v7;

              goto LABEL_28;
            }

            v21 = -1;
          }

          v22 = [v18 objectAtIndexedSubscript:{objc_msgSend(v18, "count") + v21}];

          v7 = [v22 stringByReplacingOccurrencesOfString:@"-" withString:@" "];

          goto LABEL_27;
        }

        v17 = @"net.juniper.Junos-Pulse.vpnplugin";
      }

      v7 = v17;
      goto LABEL_21;
    }

    if (a4 == 6 || a4 == 9)
    {
      v7 = [v5 application];
      if (v7)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_28:
  if (v7)
  {
    v23 = v7;
    goto LABEL_34;
  }

LABEL_33:
  v27 = [NSBundle bundleForClass:objc_opt_class()];
  v23 = [v27 localizedStringForKey:@"UNKNOWN" value:&stru_411E8 table:@"MobileVPN"];

LABEL_34:

  return v23;
}

- (void)triggerLocalAuthenticationForConfigurationIdentifier:(id)a3 requestedByApp:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[NSUUID alloc] initWithUUIDString:v7];

  if (v8)
  {
    v9 = [(VPNConnectionStore *)self configurationManager];
    v10 = [(VPNConnectionStore *)self storeQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_11098;
    v11[3] = &unk_40B38;
    v12 = v6;
    [v9 triggerLocalAuthenticationForConfigurationWithID:v8 withCompletionQueue:v10 handler:v11];
  }
}

- (void)iterateContentFilterServicesWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(VPNConnectionStore *)self vpnServicesForCurrentSetWithGrade:6];
  if ([v5 count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (!v4[2](v4, *(*(&v11 + 1) + 8 * v10), 6))
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

- (void)iterateURLFilterServicesWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(VPNConnectionStore *)self vpnServicesForCurrentSetWithGrade:9];
  if ([v5 count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (!v4[2](v4, *(*(&v11 + 1) + 8 * v10), 9))
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

- (id)copyActiveVPNIDsFromPrefsForGrade:(unint64_t)a3
{
  v5 = objc_alloc_init(NSMutableArray);
  v42 = 0u;
  v43 = 0u;
  v6 = 1;
  if (a3)
  {
    v6 = 2;
  }

  v40 = v6;
  v41 = v5;
  v44 = 0uLL;
  v45 = 0uLL;
  v7 = [(VPNConnectionStore *)self configurations];
  v8 = [v7 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (!v8)
  {
    goto LABEL_52;
  }

  v9 = v8;
  v10 = *v43;
  while (2)
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v43 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v42 + 1) + 8 * i);
      if ([v12 grade] == &dword_0 + 3)
      {
        continue;
      }

      if (a3 <= 5)
      {
        if (a3 <= 3)
        {
          if (a3 == 2)
          {
            v20 = [v12 appVPN];
            if (v20)
            {
              v21 = v20;
              v22 = [v12 appVPN];
              v23 = [v22 isEnabled];

              if (v23)
              {
                goto LABEL_46;
              }
            }

            continue;
          }

          if (a3 == 3)
          {
            v13 = [v12 alwaysOnVPN];
            goto LABEL_32;
          }

          goto LABEL_38;
        }

        if (a3 == 4)
        {
          [v12 dnsSettings];
        }

        else
        {
          [v12 dnsProxy];
        }
        v13 = ;
LABEL_32:
        v24 = v13;

        if (v24)
        {
          goto LABEL_51;
        }

        continue;
      }

      if (a3 <= 7)
      {
        if (a3 == 6)
        {
          v13 = [v12 contentFilter];
          goto LABEL_32;
        }

        v14 = [v12 relay];
        if (!v14)
        {
          continue;
        }

        v15 = v14;
        v16 = [v12 relay];
        if ([v16 isEnabled])
        {
          v17 = [v12 relay];
          v18 = [v17 matchDomains];
          if (![v18 count])
          {
            v37 = [v12 relay];
            v35 = [v37 perApp];
            v33 = [v35 appRules];
            v39 = [v33 count];

            if (v39)
            {
              continue;
            }

LABEL_46:
            v15 = [v12 identifier];
            [v41 addObject:v15];
LABEL_47:

            continue;
          }
        }

LABEL_42:

        goto LABEL_47;
      }

      if (a3 != 8)
      {
        if (a3 == 9)
        {
          v19 = [v12 urlFilter];

          if (v19)
          {
            goto LABEL_51;
          }

          continue;
        }

LABEL_38:
        v28 = [v12 VPN];
        if (!v28)
        {
          continue;
        }

        v15 = v28;
        v16 = [v12 VPN];
        if (([v16 isEnabled] & 1) == 0)
        {
          goto LABEL_42;
        }

        v29 = [v12 grade];

        if (v29 == v40)
        {
LABEL_51:
          v30 = [v12 identifier];
          [v41 addObject:v30];

          goto LABEL_52;
        }

        continue;
      }

      v25 = [v12 relay];
      if (!v25)
      {
        continue;
      }

      v15 = v25;
      v16 = [v12 relay];
      if (([v16 isEnabled] & 1) == 0)
      {
        goto LABEL_42;
      }

      v26 = [v12 relay];
      v27 = [v26 matchDomains];
      if ([v27 count])
      {

        goto LABEL_46;
      }

      v36 = [v12 relay];
      v34 = [v36 perApp];
      v32 = [v34 appRules];
      v38 = [v32 count];

      if (v38)
      {
        goto LABEL_46;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_52:

  return v41;
}

@end