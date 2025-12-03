@interface VPNConnectionStore
+ (__CFString)vpnTypeFromConnectionType:(unint64_t)type;
+ (id)applicationNameForConfiguration:(id)configuration withGrade:(unint64_t)grade;
+ (id)sharedInstance;
+ (unint64_t)connectionTypeFromVPNType:(__CFString *)type;
- (BOOL)alwaysOnToggleEnabledForServiceID:(id)d;
- (BOOL)configurationIsManaged:(id)managed;
- (BOOL)createVPNWithOptions:(id)options;
- (BOOL)deleteVPNWithServiceID:(id)d;
- (BOOL)disableToggle;
- (BOOL)gradePresent:(unint64_t)present;
- (BOOL)isActiveVPNID:(id)d withGrade:(unint64_t)grade;
- (BOOL)isEnabledWithServiceID:(id)d withGrade:(unint64_t)grade;
- (BOOL)isMDM:(id)m;
- (BOOL)isProfileBacked:(id)backed;
- (BOOL)isTypeEnabledWithServiceID:(id)d withGrade:(unint64_t)grade outProviderAvailable:(BOOL *)available;
- (BOOL)isUserCreatedVPN:(id)n;
- (BOOL)setOptions:(id)options toConfiguration:(id)configuration;
- (BOOL)uiToggleAllowedWithServiceID:(id)d withGrade:(unint64_t)grade;
- (BOOL)updateVPNWithServiceID:(id)d withOptions:(id)options;
- (VPNConnectionStore)init;
- (id)_defaultDictForType:(unint64_t)type;
- (id)activeVPNIDWithGrade:(unint64_t)grade;
- (id)activeVPNIDsWithGrade:(unint64_t)grade;
- (id)aggregateAlert;
- (id)aggregateStatusText;
- (id)aggregateStatusText:(unint64_t)text;
- (id)appNameForServiceID:(id)d withGrade:(unint64_t)grade;
- (id)connectionWithServiceID:(id)d withGrade:(unint64_t)grade;
- (id)copyActiveVPNIDsFromPrefsForGrade:(unint64_t)grade;
- (id)currentConnection:(BOOL)connection withGrade:(unint64_t)grade;
- (id)currentConnectionWithGrade:(unint64_t)grade;
- (id)currentConnectionsWithGrade:(unint64_t)grade;
- (id)currentPerAppConnections:(BOOL)connections withGrade:(unint64_t)grade;
- (id)getProfileIDForServiceID:(id)d;
- (id)optionsForServiceID:(id)d withGrade:(unint64_t)grade;
- (id)organizationForService:(__SCNetworkService *)service;
- (id)organizationForServiceID:(id)d;
- (id)vpnServiceCountWithGrade:(unint64_t)grade;
- (id)vpnServiceTotalCount;
- (id)vpnServicesForCurrentSetWithGrade:(unint64_t)grade excludePerApp:(BOOL)app;
- (unint64_t)aggregateStatus;
- (unint64_t)aggregateStatus:(unint64_t)status;
- (unint64_t)currentOnlyConnectionGrade;
- (void)_configurationChanged;
- (void)_connectionsChanged;
- (void)dealloc;
- (void)iterateContentFilterServicesWithBlock:(id)block;
- (void)iterateURLFilterServicesWithBlock:(id)block;
- (void)removeConnection:(id)connection withGrade:(unint64_t)grade;
- (void)setActiveVPNID:(id)d withGrade:(unint64_t)grade;
- (void)triggerLocalAuthenticationForConfigurationIdentifier:(id)identifier requestedByApp:(id)app;
@end

@implementation VPNConnectionStore

+ (unint64_t)connectionTypeFromVPNType:(__CFString *)type
{
  v4 = CFStringCompare(type, kSCEntNetL2TP, 1uLL) != kCFCompareEqualTo;
  if (CFStringCompare(type, kSCEntNetIPSec, 1uLL) == kCFCompareEqualTo)
  {
    return 2;
  }

  if (CFStringCompare(type, @"VPN", 1uLL) == kCFCompareEqualTo)
  {
    return 3;
  }

  v5 = 4 * v4;
  if (CFStringCompare(type, @"IKEv2", 1uLL))
  {
    return v5;
  }

  else
  {
    return 4;
  }
}

+ (__CFString)vpnTypeFromConnectionType:(unint64_t)type
{
  if (!type)
  {
    return kSCEntNetL2TP;
  }

  v3 = @"IKEv2";
  if (type == 2)
  {
    v3 = @"IPsec";
  }

  if (type == 3)
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
              status = [v12 status];
              if (status != v4)
              {
                if (status == (&dword_4 + 2))
                {
                  v4 = 6;
                }

                else
                {
                  if (status == (&dword_0 + 3))
                  {
                    v4 = 3;
                    goto LABEL_40;
                  }

                  if (status != (&dword_0 + 2) || v4 == 6)
                  {
                    if (v4 != 2 && v4 != 6 && status == &dword_4)
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

- (unint64_t)aggregateStatus:(unint64_t)status
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(VPNConnectionStore *)self currentConnectionsWithGrade:status, 0];
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
          status = [v9 status];
          if (status != v7)
          {
            if (status == (&dword_4 + 2))
            {
              v7 = 6;
            }

            else
            {
              if (status == (&dword_0 + 3))
              {
                v7 = 3;
                goto LABEL_30;
              }

              if (status != (&dword_0 + 2) || v7 == 6)
              {
                if (v7 != 2 && v7 != 6 && status == &dword_4)
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
            alertText = [v10 alertText];
            if ([(__CFString *)alertText length])
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
  alertText = &stru_411E8;
LABEL_15:

  return alertText;
}

- (id)aggregateStatusText
{
  aggregateStatus = [(VPNConnectionStore *)self aggregateStatus];
  if (aggregateStatus == 1)
  {
    aggregateAlert = [(VPNConnectionStore *)self aggregateAlert];
    if ([aggregateAlert length])
    {
      goto LABEL_5;
    }
  }

  aggregateAlert = [VPNConnection statusTextForStatus:aggregateStatus];
LABEL_5:

  return aggregateAlert;
}

- (id)aggregateStatusText:(unint64_t)text
{
  v4 = [(VPNConnectionStore *)self aggregateStatus:text];
  if (v4 == 1)
  {
    aggregateAlert = [(VPNConnectionStore *)self aggregateAlert];
    if ([aggregateAlert length])
    {
      goto LABEL_5;
    }
  }

  aggregateAlert = [VPNConnection statusTextForStatus:v4];
LABEL_5:

  return aggregateAlert;
}

- (unint64_t)currentOnlyConnectionGrade
{
  vpnServiceTotalCount = [(VPNConnectionStore *)self vpnServiceTotalCount];
  if ([vpnServiceTotalCount intValue] == 1)
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

- (BOOL)isUserCreatedVPN:(id)n
{
  nCopy = n;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  configurations = [(VPNConnectionStore *)self configurations];
  v6 = [configurations countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v6)
  {
    v7 = *v33;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v33 != v7)
      {
        objc_enumerationMutation(configurations);
      }

      v9 = *(*(&v32 + 1) + 8 * v8);
      if ([v9 grade] != &dword_0 + 3)
      {
        identifier = [v9 identifier];
        v11 = [identifier isEqual:nCopy];

        if (v11)
        {
          break;
        }
      }

      if (v6 == ++v8)
      {
        v6 = [configurations countByEnumeratingWithState:&v32 objects:v37 count:16];
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

    payloadInfo = [v6 payloadInfo];
    profileIdentifier = [payloadInfo profileIdentifier];

    if (!profileIdentifier)
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
    configurations = v18;
    v19 = [configurations countByEnumeratingWithState:&v28 objects:v36 count:16];
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
            objc_enumerationMutation(configurations);
          }

          v23 = *(*(&v28 + 1) + 8 * i);
          payloadInfo2 = [v6 payloadInfo];
          profileIdentifier2 = [payloadInfo2 profileIdentifier];
          identifier2 = [v23 identifier];
          v27 = [profileIdentifier2 isEqualToString:identifier2];

          if (v27)
          {
            v12 = 0;
            goto LABEL_27;
          }
        }

        v20 = [configurations countByEnumeratingWithState:&v28 objects:v36 count:16];
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

- (BOOL)isProfileBacked:(id)backed
{
  backedCopy = backed;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  configurations = [(VPNConnectionStore *)self configurations];
  v6 = [configurations countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = *v18;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v18 != v7)
      {
        objc_enumerationMutation(configurations);
      }

      v9 = *(*(&v17 + 1) + 8 * v8);
      if ([v9 grade] != &dword_0 + 3)
      {
        identifier = [v9 identifier];
        v11 = [identifier isEqual:backedCopy];

        if (v11)
        {
          break;
        }
      }

      if (v6 == ++v8)
      {
        v6 = [configurations countByEnumeratingWithState:&v17 objects:v21 count:16];
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
      LOBYTE(profileIdentifier) = 0;
      goto LABEL_16;
    }

    payloadInfo = [v6 payloadInfo];
    profileIdentifier = [payloadInfo profileIdentifier];

    if (!profileIdentifier)
    {
      goto LABEL_16;
    }

    profileIdentifier = +[MCProfileConnection sharedConnection];
    payloadInfo2 = [v6 payloadInfo];
    profileIdentifier2 = [payloadInfo2 profileIdentifier];
    configurations = [profileIdentifier installedProfileWithIdentifier:profileIdentifier2];

    LOBYTE(profileIdentifier) = configurations != 0;
  }

  else
  {
LABEL_10:
    LOBYTE(profileIdentifier) = 0;
  }

LABEL_16:
  return profileIdentifier;
}

- (void)_connectionsChanged
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"VPNConnectionsChangedNotification" object:self];
}

- (void)removeConnection:(id)connection withGrade:(unint64_t)grade
{
  connectionCopy = connection;
  v7 = connectionCopy;
  if (grade != 2)
  {
    gradeCurrentConnection = self->_gradeCurrentConnection;
    v9 = self->_gradeCurrentConnection[grade];
    v13 = v7;
    if (v9 == v7)
    {
      [(VPNConnection *)v9 disconnect];
      v10 = gradeCurrentConnection[grade];
      gradeCurrentConnection[grade] = 0;

      v7 = v13;
      self->_gradeCurrentConnectionHasBeenSet[grade] = 0;
    }

    v11 = self->_connectionDict[grade];
    serviceID = [(VPNConnection *)v7 serviceID];
    [(NSMutableDictionary *)v11 removeObjectForKey:serviceID];

    connectionCopy = [(VPNConnectionStore *)self _connectionsChanged];
    v7 = v13;
  }

  _objc_release_x1(connectionCopy, v7);
}

- (id)currentConnection:(BOOL)connection withGrade:(unint64_t)grade
{
  if (grade == 2)
  {
    v5 = 0;
  }

  else
  {
    if (connection && !self->_gradeCurrentConnectionHasBeenSet[grade])
    {
      gradeCurrentConnection = self->_gradeCurrentConnection;
      if (!self->_gradeCurrentConnection[grade])
      {
        v10 = [(VPNConnectionStore *)self activeVPNIDWithGrade:grade];
        v11 = [(VPNConnectionStore *)self connectionWithServiceID:v10 withGrade:grade];
        v12 = gradeCurrentConnection[grade];
        gradeCurrentConnection[grade] = v11;

        self->_gradeCurrentConnectionHasBeenSet[grade] = 1;
      }
    }

    v5 = self->_gradeCurrentConnection[grade];
  }

  return v5;
}

- (id)currentPerAppConnections:(BOOL)connections withGrade:(unint64_t)grade
{
  if (connections && !self->_gradeCurrentConnectionHasBeenSet[grade] && !self->_gradeCurrentConnection[grade])
  {
    gradeCurrentConnection = self->_gradeCurrentConnection;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [(VPNConnectionStore *)self activeVPNIDsWithGrade:grade];
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

          v12 = [(VPNConnectionStore *)self connectionWithServiceID:*(*(&v18 + 1) + 8 * i) withGrade:grade];
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

    v13 = gradeCurrentConnection[grade];
    gradeCurrentConnection[grade] = v9;
    v14 = v9;

    self->_gradeCurrentConnectionHasBeenSet[grade] = 1;
  }

  v15 = self->_gradeCurrentConnection[grade];

  return v15;
}

- (id)currentConnectionWithGrade:(unint64_t)grade
{
  v6 = 0;
  if (grade != 2 && grade != 8)
  {
    v6 = [(VPNConnectionStore *)self currentConnection:1 withGrade:grade, v3];
  }

  return v6;
}

- (id)currentConnectionsWithGrade:(unint64_t)grade
{
  if (grade == 8 || grade == 2)
  {
    v3 = [(VPNConnectionStore *)self currentPerAppConnections:1 withGrade:grade];
  }

  else
  {
    v4 = [(VPNConnectionStore *)self currentConnection:1 withGrade:grade];
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

- (id)_defaultDictForType:(unint64_t)type
{
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = v5;
  if (!type)
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

- (BOOL)setOptions:(id)options toConfiguration:(id)configuration
{
  optionsCopy = options;
  configurationCopy = configuration;
  v7 = [optionsCopy objectForKeyedSubscript:@"VPNGrade"];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  v9 = [optionsCopy objectForKeyedSubscript:@"VPNType"];
  unsignedIntegerValue2 = [v9 unsignedIntegerValue];

  if (unsignedIntegerValue == &dword_0 + 2)
  {
    v19 = [optionsCopy objectForKeyedSubscript:@"VPNOnDemandEnabled"];

    if (v19)
    {
      proxySettings = [optionsCopy objectForKeyedSubscript:@"VPNOnDemandEnabled"];
      bOOLValue = [proxySettings BOOLValue];
      appVPN = [configurationCopy appVPN];
      [appVPN setOnDemandEnabled:bOOLValue];

LABEL_15:
      goto LABEL_16;
    }
  }

  else
  {
    if (unsignedIntegerValue != &dword_0 + 1)
    {
      if (unsignedIntegerValue)
      {
LABEL_62:
        LOBYTE(v19) = 0;
        goto LABEL_63;
      }

      v11 = [configurationCopy VPN];

      if (!v11)
      {
        v12 = objc_alloc_init(NEVPN);
        [configurationCopy setVPN:v12];
      }

      v13 = [optionsCopy objectForKeyedSubscript:@"VPNOnDemandEnabled"];

      if (v13)
      {
        v14 = [optionsCopy objectForKeyedSubscript:@"VPNOnDemandEnabled"];
        bOOLValue2 = [v14 BOOLValue];

        v16 = [configurationCopy VPN];
        onDemandRules = [v16 onDemandRules];

        if (!onDemandRules)
        {
          proxySettings = sub_46D8();
          if (os_log_type_enabled(proxySettings, OS_LOG_TYPE_ERROR))
          {
            sub_29CA8();
          }

          goto LABEL_15;
        }

LABEL_12:
        v23 = [configurationCopy VPN];
        [v23 setOnDemandEnabled:bOOLValue2];

LABEL_16:
        LOBYTE(v19) = 1;
        goto LABEL_63;
      }

      if (unsignedIntegerValue2 == &dword_4)
      {
        v38 = [configurationCopy VPN];
        protocol = [v38 protocol];

        if (protocol)
        {
          v40 = [configurationCopy VPN];
          protocol2 = [v40 protocol];
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
          v56 = [configurationCopy VPN];
          [v56 setProtocol:v55];
        }

        v57 = [configurationCopy VPN];
        protocol3 = [v57 protocol];

        v58 = [optionsCopy objectForKeyedSubscript:@"VPNLocalIdentifier"];
        if (v58 && (v59 = v58, [optionsCopy objectForKeyedSubscript:@"VPNLocalIdentifier"], v60 = objc_claimAutoreleasedReturnValue(), v61 = objc_msgSend(v60, "length"), v60, v59, v61))
        {
          v62 = [optionsCopy objectForKeyedSubscript:@"VPNLocalIdentifier"];
          [protocol3 setLocalIdentifier:v62];
        }

        else
        {
          [protocol3 setLocalIdentifier:0];
        }

        v63 = [optionsCopy objectForKeyedSubscript:@"VPNRemoteIdentifier"];
        if (v63 && (v64 = v63, [optionsCopy objectForKeyedSubscript:@"VPNRemoteIdentifier"], v65 = objc_claimAutoreleasedReturnValue(), v66 = objc_msgSend(v65, "length"), v65, v64, v66))
        {
          v67 = [optionsCopy objectForKeyedSubscript:@"VPNRemoteIdentifier"];
          [protocol3 setRemoteIdentifier:v67];
        }

        else
        {
          [protocol3 setRemoteIdentifier:0];
        }

        unsignedIntegerValue3 = [optionsCopy objectForKeyedSubscript:@"eapType"];

        if (unsignedIntegerValue3)
        {
          v69 = [optionsCopy objectForKeyedSubscript:@"eapType"];
          unsignedIntegerValue3 = [v69 unsignedIntegerValue];
        }

        v70 = [optionsCopy objectForKeyedSubscript:@"authType"];

        if (v70)
        {
          v70 = [optionsCopy objectForKeyedSubscript:@"authType"];
          unsignedIntegerValue4 = [v70 unsignedIntegerValue];

          LODWORD(v70) = unsignedIntegerValue4 == &dword_0 + 1;
        }

        if (unsignedIntegerValue3)
        {
          [protocol3 setUseExtendedAuthentication:1];
          v49 = unsignedIntegerValue3 != &dword_0 + 2;
        }

        else
        {
          [protocol3 setUseExtendedAuthentication:0];
          v49 = 0;
        }

        if (v70)
        {
          [protocol3 setAuthenticationMethod:1];
        }

        else
        {
          [protocol3 setAuthenticationMethod:2];
          v97 = [optionsCopy objectForKeyedSubscript:@"secret"];
          if (v97)
          {
            v98 = v97;
            v99 = [optionsCopy objectForKeyedSubscript:@"secret"];
            v100 = [v99 length];

            if (v100)
            {
              sharedSecretKeychainItem = [protocol3 sharedSecretKeychainItem];

              if (sharedSecretKeychainItem)
              {
                sharedSecretKeychainItem2 = [protocol3 sharedSecretKeychainItem];
                copyPassword = [sharedSecretKeychainItem2 copyPassword];
                v104 = [optionsCopy objectForKeyedSubscript:@"secret"];
                v105 = [copyPassword isEqualToString:v104];

                if (v105)
                {
LABEL_103:

                  v152 = [optionsCopy objectForKeyedSubscript:@"dispName"];
                  if (v152)
                  {
                    v153 = v152;
                    v154 = [optionsCopy objectForKeyedSubscript:@"dispName"];
                    v155 = [v154 length];

                    if (v155)
                    {
                      v156 = [optionsCopy objectForKeyedSubscript:@"dispName"];
                      [configurationCopy setName:v156];
                    }
                  }

                  v157 = [optionsCopy objectForKeyedSubscript:@"server"];
                  if (v157)
                  {
                    v158 = v157;
                    v159 = [optionsCopy objectForKeyedSubscript:@"server"];
                    v160 = [v159 length];

                    if (v160)
                    {
                      v161 = [optionsCopy objectForKeyedSubscript:@"server"];
                      v162 = [configurationCopy VPN];
                      protocol4 = [v162 protocol];
                      [protocol4 setServerAddress:v161];
                    }
                  }

                  if (v49)
                  {
                    v164 = [optionsCopy objectForKeyedSubscript:@"authorization"];
                    if (v164 && (v165 = v164, [optionsCopy objectForKeyedSubscript:@"authorization"], v166 = objc_claimAutoreleasedReturnValue(), v167 = objc_msgSend(v166, "length"), v166, v165, v167))
                    {
                      v168 = [optionsCopy objectForKeyedSubscript:@"authorization"];
                      protocol6 = [configurationCopy VPN];
                      protocol5 = [protocol6 protocol];
                      [protocol5 setUsername:v168];
                    }

                    else
                    {
                      v168 = [configurationCopy VPN];
                      protocol6 = [v168 protocol];
                      [protocol6 setUsername:0];
                    }

                    v173 = [optionsCopy objectForKeyedSubscript:@"password"];
                    if (v173)
                    {
                      v174 = v173;
                      v175 = [optionsCopy objectForKeyedSubscript:@"password"];
                      v176 = [v175 length];

                      if (v176)
                      {
                        v177 = [configurationCopy VPN];
                        protocol7 = [v177 protocol];
                        passwordKeychainItem = [protocol7 passwordKeychainItem];

                        if (passwordKeychainItem)
                        {
                          v180 = [configurationCopy VPN];
                          protocol8 = [v180 protocol];
                          passwordKeychainItem2 = [protocol8 passwordKeychainItem];
                          copyPassword2 = [passwordKeychainItem2 copyPassword];

                          v184 = [optionsCopy objectForKeyedSubscript:@"password"];
                          LOBYTE(protocol8) = [copyPassword2 isEqualToString:v184];

                          if (protocol8)
                          {
                            goto LABEL_123;
                          }
                        }

                        v185 = [configurationCopy VPN];
                        protocol9 = [v185 protocol];
                        passwordKeychainItem3 = [protocol9 passwordKeychainItem];

                        if (passwordKeychainItem3)
                        {
                          v188 = [optionsCopy objectForKeyedSubscript:@"password"];
                          protocol19 = [configurationCopy VPN];
                          protocol10 = [protocol19 protocol];
                          passwordKeychainItem4 = [protocol10 passwordKeychainItem];
                          [passwordKeychainItem4 setPassword:v188];
                        }

                        else
                        {
                          v234 = [NEKeychainItem alloc];
                          v188 = [optionsCopy objectForKeyedSubscript:@"password"];
                          protocol19 = [v234 initWithPassword:v188 domain:0];
                          protocol10 = [configurationCopy VPN];
                          passwordKeychainItem4 = [protocol10 protocol];
                          [passwordKeychainItem4 setPasswordKeychainItem:protocol19];
                        }

LABEL_122:
LABEL_123:
                        v192 = [optionsCopy objectForKeyedSubscript:@"VPNCertificate"];

                        if (v192)
                        {
                          v193 = [optionsCopy objectForKeyedSubscript:@"VPNCertificate"];
                          protocol12 = [configurationCopy VPN];
                          protocol11 = [protocol12 protocol];
                          [protocol11 setIdentityReferenceInternal:v193];
                        }

                        else
                        {
                          v193 = [configurationCopy VPN];
                          protocol12 = [v193 protocol];
                          [protocol12 setIdentityReferenceInternal:0];
                        }

                        v196 = [configurationCopy VPN];
                        protocol13 = [v196 protocol];
                        proxySettings = [protocol13 proxySettings];

                        unsignedIntegerValue5 = [optionsCopy objectForKeyedSubscript:@"VPNProxyType"];

                        if (unsignedIntegerValue5)
                        {
                          v199 = [optionsCopy objectForKeyedSubscript:@"VPNProxyType"];
                          unsignedIntegerValue5 = [v199 unsignedIntegerValue];

                          if (unsignedIntegerValue5 == &dword_0 + 1)
                          {
                            if (!proxySettings)
                            {
                              v208 = objc_alloc_init(NEProxySettings);
                              v209 = [configurationCopy VPN];
                              protocol14 = [v209 protocol];
                              [protocol14 setProxySettings:v208];

                              v211 = [configurationCopy VPN];
                              protocol15 = [v211 protocol];
                              proxySettings = [protocol15 proxySettings];
                            }

                            [proxySettings setAutoProxyConfigurationEnabled:0];
                            [proxySettings setAutoProxyDiscovery:0];
                            [proxySettings setHTTPEnabled:1];
                            v205 = proxySettings;
                            v206 = 1;
                            goto LABEL_138;
                          }

                          if (unsignedIntegerValue5 == &dword_0 + 2)
                          {
                            if (!proxySettings)
                            {
                              v200 = objc_alloc_init(NEProxySettings);
                              v201 = [configurationCopy VPN];
                              protocol16 = [v201 protocol];
                              [protocol16 setProxySettings:v200];

                              v203 = [configurationCopy VPN];
                              protocol17 = [v203 protocol];
                              proxySettings = [protocol17 proxySettings];
                            }

                            [proxySettings setAutoProxyConfigurationEnabled:1];
                            [proxySettings setAutoProxyDiscovery:1];
                            [proxySettings setHTTPEnabled:0];
                            v205 = proxySettings;
                            v206 = 0;
LABEL_138:
                            [v205 setHTTPSEnabled:v206];
                            v207 = proxySettings != 0;
LABEL_139:
                            v213 = [optionsCopy objectForKeyedSubscript:@"VPNProxyPacFile"];
                            v214 = [v213 length];

                            if (v214)
                            {
                              if (v207 && [proxySettings autoProxyConfigurationEnabled]&& ([proxySettings HTTPEnabled]& 1) == 0)
                              {
                                v215 = [optionsCopy objectForKeyedSubscript:@"VPNProxyPacFile"];
                                v216 = [NSURL URLWithString:v215];
                                [proxySettings setProxyAutoConfigURL:v216];

                                [proxySettings setAutoProxyDiscovery:0];
                              }
                            }

                            else
                            {
                              [proxySettings setProxyAutoConfigURL:0];
                            }

                            v217 = [optionsCopy objectForKeyedSubscript:@"VPNProxyServer"];
                            if (v217 && (v218 = v217, [optionsCopy objectForKeyedSubscript:@"VPNProxyPort"], v219 = objc_claimAutoreleasedReturnValue(), v219, v218, v219))
                            {
                              if (v207 && ([proxySettings autoProxyConfigurationEnabled]& 1) == 0 && [proxySettings HTTPEnabled])
                              {
                                v220 = [NEProxyServer alloc];
                                v221 = [optionsCopy objectForKeyedSubscript:@"VPNProxyServer"];
                                v222 = [optionsCopy objectForKeyedSubscript:@"VPNProxyPort"];
                                v223 = [v220 initWithType:1 address:v221 port:{objc_msgSend(v222, "intValue")}];

                                v224 = [optionsCopy objectForKeyedSubscript:@"VPNProxyAuthenticate"];
                                LODWORD(v222) = [v224 BOOLValue];

                                if (v222)
                                {
                                  [v223 setAuthenticationRequired:1];
                                  v225 = [optionsCopy objectForKeyedSubscript:@"VPNProxyUsername"];
                                  [v223 setUsername:v225];

                                  v226 = [optionsCopy objectForKeyedSubscript:@"VPNProxyPassword"];
                                  [v223 setPassword:v226];
                                }

                                [proxySettings setHTTPServer:v223];
                                v227 = [NEProxyServer alloc];
                                v228 = [optionsCopy objectForKeyedSubscript:@"VPNProxyServer"];
                                v229 = [optionsCopy objectForKeyedSubscript:@"VPNProxyPort"];
                                v230 = [v227 initWithType:2 address:v228 port:{objc_msgSend(v229, "intValue")}];

                                v231 = [optionsCopy objectForKeyedSubscript:@"VPNProxyAuthenticate"];
                                LODWORD(v229) = [v231 BOOLValue];

                                if (v229)
                                {
                                  [v230 setAuthenticationRequired:1];
                                  v232 = [optionsCopy objectForKeyedSubscript:@"VPNProxyUsername"];
                                  [v230 setUsername:v232];

                                  v233 = [optionsCopy objectForKeyedSubscript:@"VPNProxyPassword"];
                                  [v230 setPassword:v233];
                                }

                                [proxySettings setHTTPSServer:v230];
                              }
                            }

                            else
                            {
                              [proxySettings setHTTPServer:0];
                              [proxySettings setHTTPSServer:0];
                            }

                            goto LABEL_15;
                          }
                        }

                        v207 = proxySettings != 0;
                        if (!unsignedIntegerValue5 && proxySettings)
                        {
                          [proxySettings setAutoProxyConfigurationEnabled:0];
                          [proxySettings setAutoProxyDiscovery:0];
                          [proxySettings setHTTPEnabled:0];
                          [proxySettings setHTTPSEnabled:0];
                          v207 = 1;
                        }

                        goto LABEL_139;
                      }
                    }
                  }

                  else
                  {
                    v171 = [configurationCopy VPN];
                    protocol18 = [v171 protocol];
                    [protocol18 setUsername:0];
                  }

                  v188 = [configurationCopy VPN];
                  protocol19 = [v188 protocol];
                  protocol10 = [protocol19 passwordKeychainItem];
                  [protocol10 setIdentifier:0];
                  goto LABEL_122;
                }
              }

              sharedSecretKeychainItem3 = [protocol3 sharedSecretKeychainItem];

              if (sharedSecretKeychainItem3)
              {
                sharedSecretKeychainItem5 = [optionsCopy objectForKeyedSubscript:@"secret"];
                sharedSecretKeychainItem4 = [protocol3 sharedSecretKeychainItem];
                [sharedSecretKeychainItem4 setPassword:sharedSecretKeychainItem5];
              }

              else
              {
                v145 = [NEKeychainItem alloc];
                sharedSecretKeychainItem5 = [optionsCopy objectForKeyedSubscript:@"secret"];
                sharedSecretKeychainItem4 = [v145 initWithPassword:sharedSecretKeychainItem5 domain:0];
                [protocol3 setSharedSecretKeychainItem:sharedSecretKeychainItem4];
              }

              goto LABEL_102;
            }
          }
        }

        sharedSecretKeychainItem5 = [protocol3 sharedSecretKeychainItem];
        [sharedSecretKeychainItem5 setIdentifier:0];
        goto LABEL_102;
      }

      if (unsignedIntegerValue2 != (&dword_0 + 2))
      {
        if (!unsignedIntegerValue2)
        {
          v26 = [configurationCopy VPN];
          protocol20 = [v26 protocol];

          if (protocol20)
          {
            v28 = [configurationCopy VPN];
            protocol21 = [v28 protocol];
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
            v73 = [configurationCopy VPN];
            [v73 setProtocol:v72];
          }

          v74 = [optionsCopy objectForKeyedSubscript:@"secret"];
          if (v74 && (v75 = v74, [optionsCopy objectForKeyedSubscript:@"secret"], v76 = objc_claimAutoreleasedReturnValue(), v77 = objc_msgSend(v76, "length"), v76, v75, v77))
          {
            v78 = [configurationCopy VPN];
            protocol22 = [v78 protocol];
            [protocol22 setMachineAuthenticationMethod:1];

            v80 = [configurationCopy VPN];
            protocol23 = [v80 protocol];
            sharedSecretKeychainItem6 = [protocol23 sharedSecretKeychainItem];

            if (sharedSecretKeychainItem6)
            {
              v83 = [configurationCopy VPN];
              protocol24 = [v83 protocol];
              sharedSecretKeychainItem7 = [protocol24 sharedSecretKeychainItem];

              copyPassword3 = [sharedSecretKeychainItem7 copyPassword];
              v87 = [optionsCopy objectForKeyedSubscript:@"secret"];
              v88 = [copyPassword3 isEqualToString:v87];

              if (v88)
              {
                goto LABEL_84;
              }
            }

            v89 = [configurationCopy VPN];
            protocol25 = [v89 protocol];
            sharedSecretKeychainItem8 = [protocol25 sharedSecretKeychainItem];

            if (sharedSecretKeychainItem8)
            {
              v92 = [optionsCopy objectForKeyedSubscript:@"secret"];
              protocol27 = [configurationCopy VPN];
              protocol26 = [protocol27 protocol];
              sharedSecretKeychainItem9 = [protocol26 sharedSecretKeychainItem];
              [sharedSecretKeychainItem9 setPassword:v92];
            }

            else
            {
              v128 = [NEKeychainItem alloc];
              v92 = [optionsCopy objectForKeyedSubscript:@"secret"];
              protocol27 = [v128 initWithPassword:v92 domain:0];
              protocol26 = [configurationCopy VPN];
              sharedSecretKeychainItem9 = [protocol26 protocol];
              [sharedSecretKeychainItem9 setSharedSecretKeychainItem:protocol27];
            }
          }

          else
          {
            v92 = [configurationCopy VPN];
            protocol27 = [v92 protocol];
            protocol26 = [protocol27 sharedSecretKeychainItem];
            [protocol26 setIdentifier:0];
          }

LABEL_84:
          v129 = [optionsCopy objectForKeyedSubscript:@"VPNSendAllTraffic"];

          if (v129)
          {
            v130 = [configurationCopy VPN];
            protocol28 = [v130 protocol];
            iPv4Settings = [protocol28 IPv4Settings];

            if (!iPv4Settings)
            {
              v133 = objc_alloc_init(NEIPv4Settings);
              v134 = [configurationCopy VPN];
              protocol29 = [v134 protocol];
              [protocol29 setIPv4Settings:v133];
            }

            v136 = [optionsCopy objectForKeyedSubscript:@"VPNSendAllTraffic"];
            bOOLValue3 = [v136 BOOLValue];
            v138 = [configurationCopy VPN];
            protocol30 = [v138 protocol];
            iPv4Settings2 = [protocol30 IPv4Settings];
            [iPv4Settings2 setOverridePrimary:bOOLValue3];
          }

          v141 = [optionsCopy objectForKeyedSubscript:@"securID"];
          if (v141)
          {
            v142 = v141;
            v143 = [optionsCopy objectForKeyedSubscript:@"securID"];
            bOOLValue4 = [v143 BOOLValue];

            if (bOOLValue4)
            {
              protocol3 = [configurationCopy VPN];
              sharedSecretKeychainItem5 = [protocol3 protocol];
              [sharedSecretKeychainItem5 setAuthenticationMethod:2];
LABEL_101:
              v49 = 1;
              goto LABEL_102;
            }
          }

          protocol3 = [configurationCopy VPN];
          sharedSecretKeychainItem5 = [protocol3 protocol];
          v49 = 1;
          [sharedSecretKeychainItem5 setAuthenticationMethod:1];
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

      v32 = [configurationCopy VPN];
      protocol31 = [v32 protocol];

      if (!protocol31)
      {
        v43 = objc_alloc_init(NEVPNProtocolIPSec);
        v44 = [configurationCopy VPN];
        [v44 setProtocol:v43];

        goto LABEL_35;
      }

      v31 = [configurationCopy VPN];
      protocol32 = [v31 protocol];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v35 = [configurationCopy VPN];
        protocol33 = [v35 protocol];
        objc_opt_class();
        v37 = objc_opt_isKindOfClass();

        if (v37)
        {
          goto LABEL_62;
        }

LABEL_35:
        v45 = [optionsCopy objectForKeyedSubscript:@"VPNCertificate"];

        v46 = [configurationCopy VPN];
        protocol34 = [v46 protocol];
        v48 = protocol34;
        if (v45)
        {
          v49 = 1;
          [protocol34 setAuthenticationMethod:1];

          v50 = [configurationCopy VPN];
          protocol35 = [v50 protocol];
          sharedSecretKeychainItem10 = [protocol35 sharedSecretKeychainItem];
          [sharedSecretKeychainItem10 setIdentifier:0];

          protocol3 = [configurationCopy VPN];
          sharedSecretKeychainItem5 = [protocol3 protocol];
          [sharedSecretKeychainItem5 setLocalIdentifier:0];
          goto LABEL_102;
        }

        [protocol34 setAuthenticationMethod:2];

        v108 = [optionsCopy objectForKeyedSubscript:@"secret"];
        if (v108 && (v109 = v108, [optionsCopy objectForKeyedSubscript:@"secret"], v110 = objc_claimAutoreleasedReturnValue(), v111 = objc_msgSend(v110, "length"), v110, v109, v111))
        {
          v112 = [configurationCopy VPN];
          protocol36 = [v112 protocol];
          sharedSecretKeychainItem11 = [protocol36 sharedSecretKeychainItem];

          if (sharedSecretKeychainItem11)
          {
            v115 = [configurationCopy VPN];
            protocol37 = [v115 protocol];
            sharedSecretKeychainItem12 = [protocol37 sharedSecretKeychainItem];

            copyPassword4 = [sharedSecretKeychainItem12 copyPassword];
            v119 = [optionsCopy objectForKeyedSubscript:@"secret"];
            v120 = [copyPassword4 isEqualToString:v119];

            if (v120)
            {
LABEL_97:
              v147 = [optionsCopy objectForKeyedSubscript:@"group"];
              if (v147 && (v148 = v147, [optionsCopy objectForKeyedSubscript:@"group"], v149 = objc_claimAutoreleasedReturnValue(), v150 = objc_msgSend(v149, "length"), v149, v148, v150))
              {
                protocol3 = [optionsCopy objectForKeyedSubscript:@"group"];
                sharedSecretKeychainItem5 = [configurationCopy VPN];
                protocol38 = [sharedSecretKeychainItem5 protocol];
                [protocol38 setLocalIdentifier:protocol3];
              }

              else
              {
                protocol3 = [configurationCopy VPN];
                sharedSecretKeychainItem5 = [protocol3 protocol];
                [sharedSecretKeychainItem5 setLocalIdentifier:0];
              }

              goto LABEL_101;
            }
          }

          v121 = [configurationCopy VPN];
          protocol39 = [v121 protocol];
          sharedSecretKeychainItem13 = [protocol39 sharedSecretKeychainItem];

          if (sharedSecretKeychainItem13)
          {
            v124 = [optionsCopy objectForKeyedSubscript:@"secret"];
            protocol41 = [configurationCopy VPN];
            protocol40 = [protocol41 protocol];
            sharedSecretKeychainItem14 = [protocol40 sharedSecretKeychainItem];
            [sharedSecretKeychainItem14 setPassword:v124];
          }

          else
          {
            v146 = [NEKeychainItem alloc];
            v124 = [optionsCopy objectForKeyedSubscript:@"secret"];
            protocol41 = [v146 initWithPassword:v124 domain:0];
            protocol40 = [configurationCopy VPN];
            sharedSecretKeychainItem14 = [protocol40 protocol];
            [sharedSecretKeychainItem14 setSharedSecretKeychainItem:protocol41];
          }
        }

        else
        {
          v124 = [configurationCopy VPN];
          protocol41 = [v124 protocol];
          protocol40 = [protocol41 sharedSecretKeychainItem];
          [protocol40 setIdentifier:0];
        }

        goto LABEL_97;
      }

LABEL_61:
      goto LABEL_62;
    }

    v19 = [optionsCopy objectForKeyedSubscript:@"VPNOnDemandEnabled"];

    if (v19)
    {
      v20 = [optionsCopy objectForKeyedSubscript:@"VPNOnDemandEnabled"];
      bOOLValue2 = [v20 BOOLValue];

      v21 = [configurationCopy VPN];
      onDemandRules2 = [v21 onDemandRules];

      if (onDemandRules2)
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

- (BOOL)createVPNWithOptions:(id)options
{
  optionsCopy = options;
  v5 = [optionsCopy objectForKeyedSubscript:@"dispName"];

  if (v5)
  {
    v6 = [NEConfiguration alloc];
    v7 = [optionsCopy objectForKeyedSubscript:@"dispName"];
    v8 = [v6 initWithName:v7 grade:1];

    v9 = [(VPNConnectionStore *)self setOptions:optionsCopy toConfiguration:v8];
    if (v9)
    {
      configurationManager = [(VPNConnectionStore *)self configurationManager];
      storeQueue = [(VPNConnectionStore *)self storeQueue];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_B940;
      v13[3] = &unk_40F40;
      v14 = v8;
      selfCopy = self;
      [configurationManager saveConfiguration:v14 withCompletionQueue:storeQueue handler:v13];
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)updateVPNWithServiceID:(id)d withOptions:(id)options
{
  dCopy = d;
  optionsCopy = options;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  configurations = [(VPNConnectionStore *)self configurations];
  v9 = [configurations countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = *v23;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v23 != v10)
      {
        objc_enumerationMutation(configurations);
      }

      v12 = *(*(&v22 + 1) + 8 * v11);
      if ([v12 grade] != &dword_0 + 3)
      {
        identifier = [v12 identifier];
        v14 = [identifier isEqual:dCopy];

        if (v14)
        {
          break;
        }
      }

      if (v9 == ++v11)
      {
        v9 = [configurations countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v9 = v12;

    if (v9 && [(VPNConnectionStore *)self setOptions:optionsCopy toConfiguration:v9])
    {
      configurationManager = [(VPNConnectionStore *)self configurationManager];
      storeQueue = [(VPNConnectionStore *)self storeQueue];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_BCAC;
      v19[3] = &unk_40F40;
      v9 = v9;
      v20 = v9;
      selfCopy = self;
      [configurationManager saveConfiguration:v9 withCompletionQueue:storeQueue handler:v19];

      v15 = 1;
      configurations = v20;
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

- (BOOL)deleteVPNWithServiceID:(id)d
{
  dCopy = d;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  configurations = [(VPNConnectionStore *)self configurations];
  v6 = [configurations countByEnumeratingWithState:&v21 objects:v25 count:16];
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
        objc_enumerationMutation(configurations);
      }

      v10 = *(*(&v21 + 1) + 8 * v9);
      if ([v10 grade] != &dword_0 + 3)
      {
        identifier = [v10 identifier];
        v12 = [identifier isEqual:dCopy];

        if (v12)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [configurations countByEnumeratingWithState:&v21 objects:v25 count:16];
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
      configurationManager = [(VPNConnectionStore *)self configurationManager];
      storeQueue = [(VPNConnectionStore *)self storeQueue];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_BFF4;
      v18[3] = &unk_40F40;
      v19 = v14;
      selfCopy = self;
      configurations = v14;
      [configurationManager removeConfiguration:configurations withCompletionQueue:storeQueue handler:v18];

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

- (BOOL)configurationIsManaged:(id)managed
{
  managedCopy = managed;
  payloadInfo = [managedCopy payloadInfo];

  if (payloadInfo)
  {
    payloadInfo2 = [managedCopy payloadInfo];
    profileSource = [payloadInfo2 profileSource];

    payloadInfo3 = [managedCopy payloadInfo];
    v8 = payloadInfo3;
    if (profileSource)
    {
      isManagedByMDM = [payloadInfo3 profileSource] == &dword_0 + 2;
      profileIdentifier = v8;
    }

    else
    {
      profileIdentifier = [payloadInfo3 profileIdentifier];

      if (profileIdentifier)
      {
        v11 = +[MCProfileConnection sharedConnection];
        v12 = [v11 installedProfileWithIdentifier:profileIdentifier];

        if (v12)
        {
          isManagedByMDM = [v12 isManagedByMDM];
        }

        else
        {
          isManagedByMDM = 0;
        }
      }

      else
      {
        isManagedByMDM = 0;
      }
    }
  }

  else
  {
    isManagedByMDM = 0;
  }

  return isManagedByMDM;
}

- (BOOL)isMDM:(id)m
{
  mCopy = m;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  configurations = [(VPNConnectionStore *)self configurations];
  v6 = [configurations countByEnumeratingWithState:&v16 objects:v20 count:16];
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
        objc_enumerationMutation(configurations);
      }

      v10 = *(*(&v16 + 1) + 8 * v9);
      if ([v10 grade] != &dword_0 + 3)
      {
        identifier = [v10 identifier];
        v12 = [identifier isEqual:mCopy];

        if (v12)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [configurations countByEnumeratingWithState:&v16 objects:v20 count:16];
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
      configurations = v14;
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

- (id)optionsForServiceID:(id)d withGrade:(unint64_t)grade
{
  dCopy = d;
  v351 = 0u;
  v352 = 0u;
  v353 = 0u;
  v354 = 0u;
  configurations = [(VPNConnectionStore *)self configurations];
  v8 = [configurations countByEnumeratingWithState:&v351 objects:v359 count:16];
  if (v8)
  {
    v9 = *v352;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v352 != v9)
      {
        objc_enumerationMutation(configurations);
      }

      v11 = *(*(&v351 + 1) + 8 * v10);
      if ([v11 grade] != &dword_0 + 3)
      {
        identifier = [v11 identifier];
        v13 = [identifier isEqual:dCopy];

        if (v13)
        {
          break;
        }
      }

      if (v8 == ++v10)
      {
        v8 = [configurations countByEnumeratingWithState:&v351 objects:v359 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_260;
      }
    }

    selfCopy = self;
    v14 = v11;

    if (!v14)
    {
      v8 = 0;
      goto LABEL_261;
    }

    v8 = +[NSMutableDictionary dictionary];
    v15 = [NSNumber numberWithUnsignedInteger:grade];
    [v8 setValue:v15 forKey:@"VPNGrade"];

    name = [v14 name];
    applicationName = [v14 applicationName];
    applicationIdentifier = [v14 applicationIdentifier];
    v16 = +[NSMutableDictionary dictionary];
    v316 = dCopy;
    v318 = v14;
    if (grade <= 1)
    {
      v17 = [v14 VPN];
      protocol = [v17 protocol];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v20 = &off_435C0;
      }

      else
      {
        v50 = [v14 VPN];
        protocol2 = [v50 protocol];
        objc_opt_class();
        v52 = objc_opt_isKindOfClass();

        if (v52)
        {
          v20 = &off_435D8;
        }

        else
        {
          v56 = [v14 VPN];
          protocol3 = [v56 protocol];
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
      protocol4 = [v61 protocol];
      serverAddress = [protocol4 serverAddress];

      v63 = [v14 VPN];
      protocol5 = [v63 protocol];
      username = [protocol5 username];

      v65 = [v14 VPN];
      onDemandRules = [v65 onDemandRules];

      if (onDemandRules)
      {
        v67 = [v14 VPN];
        isOnDemandEnabled = [v67 isOnDemandEnabled];

        if (isOnDemandEnabled)
        {
          v69 = &off_435A8;
        }

        else
        {
          v69 = &off_43560;
        }

        v304 = v69;
        v70 = [v14 VPN];
        isOnDemandUserOverrideDisabled = [v70 isOnDemandUserOverrideDisabled];

        if (isOnDemandUserOverrideDisabled)
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
      protocol6 = [v73 protocol];
      passwordKeychainItem = [protocol6 passwordKeychainItem];

      if (passwordKeychainItem)
      {
        v76 = [v14 VPN];
        protocol7 = [v76 protocol];
        passwordKeychainItem2 = [protocol7 passwordKeychainItem];
        copyPassword = [passwordKeychainItem2 copyPassword];
      }

      else
      {
        copyPassword = 0;
      }

      v79 = [v14 VPN];
      protocol8 = [v79 protocol];
      objc_opt_class();
      v81 = objc_opt_isKindOfClass();

      v82 = [v14 VPN];
      protocol9 = [v82 protocol];
      if (v81)
      {

        if ([protocol9 authenticationMethod] == &dword_0 + 1)
        {
          copyPassword2 = 0;
          v84 = &off_43578;
        }

        else
        {
          sharedSecretKeychainItem = [protocol9 sharedSecretKeychainItem];

          if (sharedSecretKeychainItem)
          {
            sharedSecretKeychainItem2 = [protocol9 sharedSecretKeychainItem];
            copyPassword2 = [sharedSecretKeychainItem2 copyPassword];
          }

          else
          {
            copyPassword2 = 0;
          }

          v84 = &off_43590;
        }

        v310 = v84;
        localIdentifier = [protocol9 localIdentifier];
        remoteIdentifier = [protocol9 remoteIdentifier];
        identityReferenceInternal = [protocol9 identityReferenceInternal];

        if (identityReferenceInternal)
        {
          identityReferenceInternal2 = [protocol9 identityReferenceInternal];
        }

        else
        {
          identityReferenceInternal2 = 0;
        }

        v171 = &off_43590;
        if ([protocol9 useExtendedAuthentication])
        {
          username2 = [protocol9 username];

          if (username2)
          {
            v171 = &off_43578;
          }

          else
          {
            identityReferenceInternal3 = [protocol9 identityReferenceInternal];

            if (identityReferenceInternal3)
            {
              v171 = &off_435D8;
            }
          }
        }

        v307 = v171;
        v326 = identityReferenceInternal2;

        localIdentifier3 = 0;
        v305 = &off_43560;
        v306 = &off_43560;
        v312 = &off_43560;
        goto LABEL_129;
      }

      objc_opt_class();
      v85 = objc_opt_isKindOfClass();

      v86 = [v14 VPN];
      protocol10 = [v86 protocol];
      v88 = protocol10;
      if (v85)
      {
        sharedSecretKeychainItem3 = [protocol10 sharedSecretKeychainItem];

        if (sharedSecretKeychainItem3)
        {
          v90 = [v14 VPN];
          protocol11 = [v90 protocol];
          sharedSecretKeychainItem4 = [protocol11 sharedSecretKeychainItem];
          copyPassword2 = [sharedSecretKeychainItem4 copyPassword];
        }

        else
        {
          copyPassword2 = 0;
        }

        v160 = [v14 VPN];
        protocol12 = [v160 protocol];
        iPv4Settings = [protocol12 IPv4Settings];
        overridePrimary = [iPv4Settings overridePrimary];

        if (overridePrimary)
        {
          v164 = &off_435A8;
        }

        else
        {
          v164 = &off_43560;
        }

        v312 = v164;
        v165 = [v14 VPN];
        protocol13 = [v165 protocol];
        authenticationMethod = [protocol13 authenticationMethod];

        v326 = 0;
        localIdentifier3 = 0;
        remoteIdentifier = 0;
        localIdentifier = 0;
        if (authenticationMethod == &dword_0 + 2)
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
        localIdentifier3 = 0;
        remoteIdentifier = 0;
        localIdentifier = 0;
        copyPassword2 = 0;
        v306 = &off_43560;
LABEL_117:
        v310 = &off_43590;
        v307 = &off_43590;
        v305 = &off_43560;
LABEL_129:
        v174 = [v14 VPN];
        protocol14 = [v174 protocol];
        proxySettings = [protocol14 proxySettings];

        v46 = &off_43590;
        if (proxySettings)
        {
          v176 = [v14 VPN];
          protocol15 = [v176 protocol];
          proxySettings2 = [protocol15 proxySettings];
          autoProxyConfigurationEnabled = [proxySettings2 autoProxyConfigurationEnabled];

          if (autoProxyConfigurationEnabled)
          {
            v180 = &off_435D8;
          }

          else
          {
            v181 = [v14 VPN];
            protocol16 = [v181 protocol];
            proxySettings3 = [protocol16 proxySettings];
            hTTPEnabled = [proxySettings3 HTTPEnabled];

            if (hTTPEnabled)
            {
              v180 = &off_43578;
            }

            else
            {
              v180 = &off_43590;
            }
          }

          v185 = [v14 VPN];
          protocol17 = [v185 protocol];
          proxySettings4 = [protocol17 proxySettings];
          proxyAutoConfigURL = [proxySettings4 proxyAutoConfigURL];
          absoluteString = [proxyAutoConfigURL absoluteString];

          v189 = [v14 VPN];
          protocol18 = [v189 protocol];
          proxySettings5 = [protocol18 proxySettings];
          proxySettings = [proxySettings5 HTTPServer];

          if (proxySettings)
          {
            v192 = [v14 VPN];
            protocol19 = [v192 protocol];
            proxySettings6 = [protocol19 proxySettings];
            hTTPServer = [proxySettings6 HTTPServer];
            address = [hTTPServer address];

            v196 = [v14 VPN];
            protocol20 = [v196 protocol];
            proxySettings7 = [protocol20 proxySettings];
            hTTPServer2 = [proxySettings7 HTTPServer];
            proxySettings = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu", [hTTPServer2 port]);

            v200 = [v14 VPN];
            protocol21 = [v200 protocol];
            proxySettings8 = [protocol21 proxySettings];
            hTTPServer3 = [proxySettings8 HTTPServer];
            LODWORD(hTTPServer2) = [hTTPServer3 authenticationRequired];

            if (hTTPServer2)
            {
              v204 = [v14 VPN];
              protocol22 = [v204 protocol];
              proxySettings9 = [protocol22 proxySettings];
              hTTPServer4 = [proxySettings9 HTTPServer];
              username3 = [hTTPServer4 username];

              v45 = username3;
              v209 = [v14 VPN];
              protocol23 = [v209 protocol];
              proxySettings10 = [protocol23 proxySettings];
              hTTPServer5 = [proxySettings10 HTTPServer];
              copyPassword3 = [hTTPServer5 copyPassword];

              matchDomains11 = 0;
              matchFQDNs = 0;
              excludedDomains = 0;
              excludedFQDNs = 0;
              v309 = 0;
              v47 = &off_435A8;
              v46 = &off_43590;
            }

            else
            {
              v45 = 0;
              copyPassword3 = 0;
              matchFQDNs = 0;
              matchDomains11 = 0;
              excludedDomains = 0;
              excludedFQDNs = 0;
              v309 = 0;
              v46 = &off_43590;
              v47 = &off_43560;
            }

            v314 = &off_43560;
          }

          else
          {
            excludedDomains = 0;
            address = 0;
            v45 = 0;
            copyPassword3 = 0;
            matchFQDNs = 0;
            matchDomains11 = 0;
            excludedFQDNs = 0;
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
        address = 0;
        absoluteString = 0;
        v45 = 0;
        copyPassword3 = 0;
        matchFQDNs = 0;
        matchDomains11 = 0;
        excludedDomains = 0;
        excludedFQDNs = 0;
        v309 = 0;
        v47 = &off_43560;
        v314 = &off_43560;
        goto LABEL_175;
      }

      v96 = [v14 VPN];
      protocol24 = [v96 protocol];
      authenticationMethod2 = [protocol24 authenticationMethod];

      v99 = [v14 VPN];
      protocol25 = [v99 protocol];
      v101 = protocol25;
      if (authenticationMethod2 == &dword_0 + 1)
      {
        identityReferenceInternal4 = [protocol25 identityReferenceInternal];

        if (identityReferenceInternal4)
        {
          v103 = [v14 VPN];
          protocol26 = [v103 protocol];
          identityReferenceInternal5 = [protocol26 identityReferenceInternal];
          localIdentifier3 = 0;
          copyPassword2 = 0;
          v106 = &off_43578;
LABEL_268:
          v310 = v106;
          v326 = identityReferenceInternal5;

LABEL_271:
          v297 = [v14 VPN];
          protocol27 = [v297 protocol];
          extendedAuthPasswordPrompt = [protocol27 extendedAuthPasswordPrompt];

          remoteIdentifier = 0;
          localIdentifier = 0;
          if (extendedAuthPasswordPrompt)
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
        localIdentifier3 = 0;
        copyPassword2 = 0;
        v293 = &off_43578;
      }

      else
      {
        sharedSecretKeychainItem5 = [protocol25 sharedSecretKeychainItem];

        if (sharedSecretKeychainItem5)
        {
          v252 = [v14 VPN];
          protocol28 = [v252 protocol];
          sharedSecretKeychainItem6 = [protocol28 sharedSecretKeychainItem];
          copyPassword2 = [sharedSecretKeychainItem6 copyPassword];
        }

        else
        {
          copyPassword2 = 0;
        }

        v294 = [v14 VPN];
        protocol29 = [v294 protocol];
        localIdentifier2 = [protocol29 localIdentifier];

        if (localIdentifier2)
        {
          v103 = [v14 VPN];
          protocol26 = [v103 protocol];
          localIdentifier3 = [protocol26 localIdentifier];
          identityReferenceInternal5 = 0;
          v106 = &off_43590;
          goto LABEL_268;
        }

        v326 = 0;
        localIdentifier3 = 0;
        v293 = &off_43590;
      }

      v310 = v293;
      goto LABEL_271;
    }

    if (grade <= 3)
    {
      if (grade == 2)
      {
        appVPN = [v14 appVPN];
        protocol30 = [appVPN protocol];
        objc_opt_class();
        v143 = objc_opt_isKindOfClass();

        if (v143)
        {
          v144 = &off_435C0;
        }

        else
        {
          appVPN2 = [v14 appVPN];
          protocol31 = [appVPN2 protocol];
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
        appVPN3 = [v14 appVPN];
        if ([appVPN3 isEnabled])
        {
          v221 = &off_435A8;
        }

        else
        {
          v221 = &off_43560;
        }

        v331 = v221;

        appVPN4 = [v14 appVPN];
        protocol32 = [appVPN4 protocol];
        serverAddress = [protocol32 serverAddress];

        appVPN5 = [v14 appVPN];
        protocol33 = [appVPN5 protocol];
        username = [protocol33 username];

        appVPN6 = [v14 appVPN];
        LODWORD(protocol33) = [appVPN6 isOnDemandEnabled];

        if (protocol33)
        {
          v227 = &off_435A8;
        }

        else
        {
          v227 = &off_43560;
        }

        v304 = v227;
        appVPN7 = [v14 appVPN];
        isOnDemandUserOverrideDisabled2 = [appVPN7 isOnDemandUserOverrideDisabled];

        if (isOnDemandUserOverrideDisabled2)
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
        appVPN8 = [v14 appVPN];
        appRules = [appVPN8 appRules];

        v233 = [appRules countByEnumeratingWithState:&v347 objects:v358 count:16];
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
                objc_enumerationMutation(appRules);
              }

              v237 = *(*(&v347 + 1) + 8 * i);
              matchSigningIdentifier = [v237 matchSigningIdentifier];
              if (matchSigningIdentifier)
              {
                v239 = matchSigningIdentifier;
                matchSigningIdentifier2 = [v237 matchSigningIdentifier];
                v241 = [v16 objectForKeyedSubscript:matchSigningIdentifier2];

                if (!v241)
                {
                  matchDomains = [v237 matchDomains];
                  if (matchDomains && (v243 = matchDomains, [v237 matchDomains], v244 = objc_claimAutoreleasedReturnValue(), v245 = objc_msgSend(v244, "count"), v244, v243, v245))
                  {
                    matchDomains2 = [v237 matchDomains];
                    v247 = [matchDomains2 count];

                    if (v247 == &dword_0 + 1)
                    {
                      matchDomains3 = [v237 matchDomains];
                      [matchDomains3 objectAtIndexedSubscript:0];
                    }

                    else
                    {
                      matchDomains3 = [NSBundle bundleForClass:objc_opt_class()];
                      [matchDomains3 localizedStringForKey:@"MULTIPLE_DOMAINS" value:&stru_411E8 table:@"MobileVPN"];
                    }
                    v249 = ;
                    matchSigningIdentifier3 = [v237 matchSigningIdentifier];
                    [v16 setObject:v249 forKeyedSubscript:matchSigningIdentifier3];
                  }

                  else
                  {
                    matchDomains3 = [v237 matchSigningIdentifier];
                    [v16 setObject:&stru_411E8 forKeyedSubscript:matchDomains3];
                  }
                }
              }
            }

            v234 = [appRules countByEnumeratingWithState:&v347 objects:v358 count:16];
          }

          while (v234);
        }

        v326 = 0;
        localIdentifier3 = 0;
        remoteIdentifier = 0;
        localIdentifier = 0;
        copyPassword2 = 0;
        copyPassword = 0;
        v43 = 0;
        address = 0;
        absoluteString = 0;
        proxySettings = 0;
        v45 = 0;
        copyPassword3 = 0;
        matchFQDNs = 0;
        excludedDomains = 0;
        v309 = 0;
        v46 = &off_43590;
        matchDomains11 = 0;
        v312 = &off_43560;
        v47 = &off_43560;
        v310 = &off_43590;
        v307 = &off_43590;
        excludedFQDNs = 0;
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

      if (grade == 3)
      {
        alwaysOnVPN = [v14 alwaysOnVPN];
        isEnabled = [alwaysOnVPN isEnabled];
        v55 = &off_435A8;
        if (!isEnabled)
        {
          v55 = &off_43560;
        }

        v331 = v55;

        [v8 setValue:&off_435C0 forKey:@"VPNType"];
        v326 = 0;
        localIdentifier3 = 0;
        remoteIdentifier = 0;
        localIdentifier = 0;
        copyPassword2 = 0;
        copyPassword = 0;
        v43 = 0;
        address = 0;
        absoluteString = 0;
        proxySettings = 0;
        v45 = 0;
        copyPassword3 = 0;
        matchFQDNs = 0;
        excludedDomains = 0;
        v309 = 0;
        serverAddress = 0;
        username = 0;
        v46 = &off_43590;
        v313 = &off_43560;
        v314 = &off_43560;
        matchDomains11 = 0;
        v312 = &off_43560;
        v47 = &off_43560;
        v48 = &off_43560;
        v49 = &off_43560;
        v310 = &off_43590;
        v307 = &off_43590;
        excludedFQDNs = 0;
        v305 = &off_43560;
        v306 = &off_43560;
        goto LABEL_194;
      }
    }

    else
    {
      switch(grade)
      {
        case 4uLL:
          grade = [v14 grade];
          v108 = &off_435A8;
          if (grade != &dword_0 + 1)
          {
            v108 = &off_43560;
          }

          v314 = v108;
          dnsSettings = [v14 dnsSettings];
          settings = [dnsSettings settings];
          objc_opt_class();
          v111 = objc_opt_isKindOfClass();

          dnsSettings2 = [v14 dnsSettings];
          settings2 = [dnsSettings2 settings];
          v114 = settings2;
          if (v111)
          {
            serverURL = [settings2 serverURL];
            serverAddress = [serverURL absoluteString];

            v326 = 0;
            localIdentifier3 = 0;
            remoteIdentifier = 0;
            localIdentifier = 0;
            copyPassword2 = 0;
            copyPassword = 0;
            v43 = 0;
            address = 0;
            absoluteString = 0;
            proxySettings = 0;
            v45 = 0;
            copyPassword3 = 0;
            matchFQDNs = 0;
            excludedDomains = 0;
            v309 = 0;
            v47 = &off_43560;
            v312 = &off_43560;
            v313 = &off_43560;
            v48 = &off_43560;
            v49 = &off_43560;
            v310 = &off_43590;
            matchDomains11 = 0;
            v307 = &off_43590;
            excludedFQDNs = 0;
            v305 = &off_43560;
            v306 = &off_43560;
            username = 0;
            v331 = &off_43560;
            v46 = &off_435D8;
          }

          else
          {
            objc_opt_class();
            v213 = objc_opt_isKindOfClass();

            dnsSettings3 = [v14 dnsSettings];
            settings3 = [dnsSettings3 settings];
            v216 = settings3;
            if (v213)
            {
              serverAddress = [settings3 serverName];

              v326 = 0;
              localIdentifier3 = 0;
              remoteIdentifier = 0;
              localIdentifier = 0;
              copyPassword2 = 0;
              copyPassword = 0;
              v43 = 0;
              address = 0;
              absoluteString = 0;
              proxySettings = 0;
              v45 = 0;
              copyPassword3 = 0;
              matchFQDNs = 0;
              excludedDomains = 0;
              v309 = 0;
              v47 = &off_43560;
              v312 = &off_43560;
              v313 = &off_43560;
              v48 = &off_43560;
              v49 = &off_43560;
              v310 = &off_43590;
              matchDomains11 = 0;
              v307 = &off_43590;
              excludedFQDNs = 0;
              v305 = &off_43560;
              v306 = &off_43560;
              username = 0;
              v331 = &off_43560;
              v46 = &off_43578;
            }

            else
            {
              servers = [settings3 servers];
              serverAddress = [servers firstObject];

              v326 = 0;
              localIdentifier3 = 0;
              remoteIdentifier = 0;
              localIdentifier = 0;
              copyPassword2 = 0;
              copyPassword = 0;
              v43 = 0;
              address = 0;
              absoluteString = 0;
              proxySettings = 0;
              v45 = 0;
              copyPassword3 = 0;
              matchFQDNs = 0;
              excludedDomains = 0;
              v309 = 0;
              v46 = &off_43590;
              v47 = &off_43560;
              v312 = &off_43560;
              v313 = &off_43560;
              v48 = &off_43560;
              v49 = &off_43560;
              v310 = &off_43590;
              matchDomains11 = 0;
              v307 = &off_43590;
              excludedFQDNs = 0;
              v305 = &off_43560;
              v306 = &off_43560;
              username = 0;
              v331 = &off_43560;
            }
          }

          goto LABEL_194;
        case 5uLL:
          v301 = v8;
          v116 = +[MCProfileConnection sharedConnection];
          isSupervised = [v116 isSupervised];

          v118 = &off_435A8;
          v345 = 0u;
          v346 = 0u;
          if (!isSupervised)
          {
            v118 = &off_43560;
          }

          v314 = v118;
          v343 = 0uLL;
          v344 = 0uLL;
          dnsProxy = [v14 dnsProxy];
          perApp = [dnsProxy perApp];
          appRules2 = [perApp appRules];

          v122 = [appRules2 countByEnumeratingWithState:&v343 objects:v357 count:16];
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
                  objc_enumerationMutation(appRules2);
                }

                v126 = *(*(&v343 + 1) + 8 * j);
                matchSigningIdentifier4 = [v126 matchSigningIdentifier];
                if (matchSigningIdentifier4)
                {
                  v128 = matchSigningIdentifier4;
                  matchSigningIdentifier5 = [v126 matchSigningIdentifier];
                  v130 = [v16 objectForKeyedSubscript:matchSigningIdentifier5];

                  if (!v130)
                  {
                    matchDomains4 = [v126 matchDomains];
                    if (matchDomains4 && (v132 = matchDomains4, [v126 matchDomains], v133 = objc_claimAutoreleasedReturnValue(), v134 = objc_msgSend(v133, "count"), v133, v132, v134))
                    {
                      matchDomains5 = [v126 matchDomains];
                      v136 = [matchDomains5 count];

                      if (v136 == &dword_0 + 1)
                      {
                        matchDomains6 = [v126 matchDomains];
                        [matchDomains6 objectAtIndexedSubscript:0];
                      }

                      else
                      {
                        matchDomains6 = [NSBundle bundleForClass:objc_opt_class()];
                        [matchDomains6 localizedStringForKey:@"MULTIPLE_DOMAINS" value:&stru_411E8 table:@"MobileVPN"];
                      }
                      v138 = ;
                      matchSigningIdentifier6 = [v126 matchSigningIdentifier];
                      [v16 setObject:v138 forKeyedSubscript:matchSigningIdentifier6];
                    }

                    else
                    {
                      matchDomains6 = [v126 matchSigningIdentifier];
                      [v16 setObject:&stru_411E8 forKeyedSubscript:matchDomains6];
                    }
                  }
                }
              }

              v123 = [appRules2 countByEnumeratingWithState:&v343 objects:v357 count:16];
            }

            while (v123);
          }

          externalIdentifier = [v318 externalIdentifier];
          v309 = externalIdentifier != 0;

          v326 = 0;
          localIdentifier3 = 0;
          remoteIdentifier = 0;
          localIdentifier = 0;
          copyPassword2 = 0;
          copyPassword = 0;
          v43 = 0;
          address = 0;
          absoluteString = 0;
          proxySettings = 0;
          v45 = 0;
          copyPassword3 = 0;
          matchFQDNs = 0;
          excludedDomains = 0;
          serverAddress = 0;
          v47 = &off_43560;
          v312 = &off_43560;
          v313 = &off_43560;
          v48 = &off_43560;
          v49 = &off_43560;
          v310 = &off_43590;
          matchDomains11 = 0;
          v307 = &off_43590;
          excludedFQDNs = 0;
          v305 = &off_43560;
          v306 = &off_43560;
          username = 0;
          v331 = &off_43560;
          v46 = &off_435F0;
          goto LABEL_193;
        case 6uLL:
          v301 = v8;
          v341 = 0u;
          v342 = 0u;
          v339 = 0u;
          v340 = 0u;
          contentFilter = [v14 contentFilter];
          perApp2 = [contentFilter perApp];
          appRules3 = [perApp2 appRules];

          v24 = [appRules3 countByEnumeratingWithState:&v339 objects:v356 count:16];
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
                  objc_enumerationMutation(appRules3);
                }

                v28 = *(*(&v339 + 1) + 8 * k);
                matchSigningIdentifier7 = [v28 matchSigningIdentifier];
                if (matchSigningIdentifier7)
                {
                  v30 = matchSigningIdentifier7;
                  matchSigningIdentifier8 = [v28 matchSigningIdentifier];
                  v32 = [v16 objectForKeyedSubscript:matchSigningIdentifier8];

                  if (!v32)
                  {
                    matchDomains7 = [v28 matchDomains];
                    if (matchDomains7 && (v34 = matchDomains7, [v28 matchDomains], v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(v35, "count"), v35, v34, v36))
                    {
                      matchDomains8 = [v28 matchDomains];
                      v38 = [matchDomains8 count];

                      if (v38 == &dword_0 + 1)
                      {
                        matchDomains9 = [v28 matchDomains];
                        [matchDomains9 objectAtIndexedSubscript:0];
                      }

                      else
                      {
                        matchDomains9 = [NSBundle bundleForClass:objc_opt_class()];
                        [matchDomains9 localizedStringForKey:@"MULTIPLE_DOMAINS" value:&stru_411E8 table:@"MobileVPN"];
                      }
                      v40 = ;
                      matchSigningIdentifier9 = [v28 matchSigningIdentifier];
                      [v16 setObject:v40 forKeyedSubscript:matchSigningIdentifier9];
                    }

                    else
                    {
                      matchDomains9 = [v28 matchSigningIdentifier];
                      [v16 setObject:&stru_411E8 forKeyedSubscript:matchDomains9];
                    }
                  }
                }
              }

              v25 = [appRules3 countByEnumeratingWithState:&v339 objects:v356 count:16];
            }

            while (v25);
          }

          externalIdentifier2 = [v318 externalIdentifier];
          v309 = externalIdentifier2 != 0;

          v326 = 0;
          localIdentifier3 = 0;
          remoteIdentifier = 0;
          localIdentifier = 0;
          copyPassword2 = 0;
          copyPassword = 0;
          v43 = 0;
          address = 0;
          absoluteString = 0;
          proxySettings = 0;
          v45 = 0;
          copyPassword3 = 0;
          matchFQDNs = 0;
          excludedDomains = 0;
          serverAddress = 0;
          v46 = &off_43590;
          matchDomains11 = 0;
          v312 = &off_43560;
          v47 = &off_43560;
          v313 = &off_43560;
          v48 = &off_43560;
          v49 = &off_43560;
          v310 = &off_43590;
          v307 = &off_43590;
          excludedFQDNs = 0;
          v306 = &off_43560;
          username = 0;
          v331 = &off_43560;
LABEL_192:
          v314 = &off_43560;
          v305 = &off_43560;
LABEL_193:
          v8 = v301;
LABEL_194:
          v275 = v49;
          if ([v49 BOOLValue] && -[VPNConnectionStore configurationIsManaged:](selfCopy, "configurationIsManaged:", v318))
          {
            [v8 setValue:v275 forKey:@"VPNOnDemandUserOverrideDisabled"];
          }

          [v8 setValue:v331 forKey:@"VPNEnabled"];
          if (username)
          {
            v276 = username;
          }

          else
          {
            v276 = &stru_411E8;
          }

          [v8 setValue:v276 forKey:@"authorization"];
          if (serverAddress)
          {
            v277 = serverAddress;
          }

          else
          {
            v277 = &stru_411E8;
          }

          [v8 setValue:v277 forKey:@"server"];
          if (name)
          {
            v278 = name;
          }

          else
          {
            v278 = &stru_411E8;
          }

          [v8 setValue:v278 forKey:@"dispName"];
          if (copyPassword2)
          {
            v279 = copyPassword2;
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
          if (localIdentifier3)
          {
            v280 = localIdentifier3;
          }

          else
          {
            v280 = &stru_411E8;
          }

          [v8 setValue:v280 forKey:@"group"];
          if (copyPassword)
          {
            v281 = copyPassword;
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
          if (address)
          {
            v283 = address;
          }

          else
          {
            v283 = &stru_411E8;
          }

          [v8 setValue:v283 forKey:@"VPNProxyServer"];
          if (proxySettings)
          {
            v284 = proxySettings;
          }

          else
          {
            v284 = &stru_411E8;
          }

          [v8 setValue:v284 forKey:@"VPNProxyPort"];
          if (absoluteString)
          {
            v285 = absoluteString;
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
          if (copyPassword3)
          {
            v287 = copyPassword3;
          }

          else
          {
            v287 = &stru_411E8;
          }

          [v8 setValue:v287 forKey:@"VPNProxyPassword"];
          [v8 setValue:&off_43560 forKey:@"VPNPasswordRequired"];
          if (applicationName)
          {
            v288 = applicationName;
          }

          else
          {
            v288 = &stru_411E8;
          }

          [v8 setValue:v288 forKey:@"VPNApplicationName"];
          if (applicationIdentifier)
          {
            v289 = applicationIdentifier;
          }

          else
          {
            v289 = &stru_411E8;
          }

          [v8 setValue:v289 forKey:@"VPNApplicationBundleID"];
          if (localIdentifier)
          {
            v290 = localIdentifier;
          }

          else
          {
            v290 = &stru_411E8;
          }

          [v8 setValue:v290 forKey:@"VPNLocalIdentifier"];
          if (remoteIdentifier)
          {
            v291 = remoteIdentifier;
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

          dCopy = v316;
          configurations = v318;
          if ([v16 count])
          {
            [v8 setValue:v16 forKey:@"VPNIncludedBundleIDs"];
          }

          if ([matchDomains11 count])
          {
            [v8 setValue:matchDomains11 forKey:@"VPNMatchDomains"];
          }

          if ([excludedDomains count])
          {
            [v8 setValue:excludedDomains forKey:@"VPNExcludeDomains"];
          }

          if ([matchFQDNs count])
          {
            [v8 setValue:matchFQDNs forKey:@"VPNMatchFQDNs"];
          }

          if ([excludedFQDNs count])
          {
            [v8 setValue:excludedFQDNs forKey:@"VPNExcludeFQDNs"];
          }

          goto LABEL_260;
      }
    }

    if (grade - 7 > 1)
    {
      v326 = 0;
      localIdentifier3 = 0;
      remoteIdentifier = 0;
      localIdentifier = 0;
      copyPassword2 = 0;
      copyPassword = 0;
      v43 = 0;
      address = 0;
      absoluteString = 0;
      proxySettings = 0;
      v45 = 0;
      copyPassword3 = 0;
      matchFQDNs = 0;
      matchDomains11 = 0;
      v312 = &off_43560;
      excludedDomains = 0;
      v309 = 0;
      serverAddress = 0;
      username = 0;
      v331 = &off_43560;
      v46 = &off_43590;
      v47 = &off_43560;
      v313 = &off_43560;
      v314 = &off_43560;
      v48 = &off_43560;
      v49 = &off_43560;
      v310 = &off_43590;
      v307 = &off_43590;
      excludedFQDNs = 0;
      v305 = &off_43560;
      v306 = &off_43560;
      goto LABEL_194;
    }

    relay = [v14 relay];
    isEnabled2 = [relay isEnabled];
    v147 = &off_435A8;
    if (!isEnabled2)
    {
      v147 = &off_43560;
    }

    v331 = v147;

    relay2 = [v14 relay];
    relays = [relay2 relays];
    lastObject = [relays lastObject];
    hTTP3RelayURL = [lastObject HTTP3RelayURL];
    absoluteString2 = [hTTP3RelayURL absoluteString];

    serverAddress = absoluteString2;
    if (!absoluteString2)
    {
      relay3 = [v14 relay];
      relays2 = [relay3 relays];
      lastObject2 = [relays2 lastObject];
      hTTP2RelayURL = [lastObject2 HTTP2RelayURL];
      serverAddress = [hTTP2RelayURL absoluteString];
    }

    relay4 = [v14 relay];
    perApp3 = [relay4 perApp];
    appRules4 = [perApp3 appRules];
    v301 = v8;
    if ([appRules4 count])
    {
      v309 = 1;
    }

    else
    {
      relay5 = [v14 relay];
      matchDomains10 = [relay5 matchDomains];
      v309 = [matchDomains10 count] != 0;
    }

    relay6 = [v14 relay];
    matchDomains11 = [relay6 matchDomains];

    relay7 = [v14 relay];
    excludedDomains = [relay7 excludedDomains];

    relay8 = [v14 relay];
    matchFQDNs = [relay8 matchFQDNs];

    relay9 = [v14 relay];
    excludedFQDNs = [relay9 excludedFQDNs];

    v337 = 0u;
    v338 = 0u;
    v335 = 0u;
    v336 = 0u;
    relay10 = [v14 relay];
    perApp4 = [relay10 perApp];
    appRules5 = [perApp4 appRules];

    v265 = [appRules5 countByEnumeratingWithState:&v335 objects:v355 count:16];
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
            objc_enumerationMutation(appRules5);
          }

          v269 = *(*(&v335 + 1) + 8 * m);
          matchSigningIdentifier10 = [v269 matchSigningIdentifier];
          if (matchSigningIdentifier10)
          {
            v271 = matchSigningIdentifier10;
            matchSigningIdentifier11 = [v269 matchSigningIdentifier];
            v273 = [v16 objectForKeyedSubscript:matchSigningIdentifier11];

            if (!v273)
            {
              matchSigningIdentifier12 = [v269 matchSigningIdentifier];
              [v16 setObject:&stru_411E8 forKeyedSubscript:matchSigningIdentifier12];
            }
          }
        }

        v266 = [appRules5 countByEnumeratingWithState:&v335 objects:v355 count:16];
      }

      while (v266);
    }

    v326 = 0;
    localIdentifier3 = 0;
    remoteIdentifier = 0;
    localIdentifier = 0;
    copyPassword2 = 0;
    copyPassword = 0;
    v43 = 0;
    address = 0;
    absoluteString = 0;
    proxySettings = 0;
    v45 = 0;
    copyPassword3 = 0;
    username = 0;
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

- (void)setActiveVPNID:(id)d withGrade:(unint64_t)grade
{
  dCopy = d;
  if (grade != 2)
  {
    v8 = (&self->super.isa + grade);
    v9 = v8 + 13;
    if (([v8[13] isEqual:dCopy] & 1) == 0)
    {
      if ([(VPNConnectionStore *)self saveActiveVPNIDToPreferences:dCopy withGrade:grade])
      {
        [v8[3] disconnect];
        objc_storeStrong(v9, d);
        v10 = [(VPNConnectionStore *)self connectionWithServiceID:*v9 withGrade:grade];
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

- (id)activeVPNIDsWithGrade:(unint64_t)grade
{
  if (grade == 8 || grade == 2)
  {
    if (!self->_gradeActiveVPNIDLoaded[grade])
    {
      v5 = [(VPNConnectionStore *)self copyActiveVPNIDsFromPrefsForGrade:grade];
      v6 = self->_gradeActiveVPNID[grade];
      self->_gradeActiveVPNID[grade] = v5;

      if (self->_gradeActiveVPNID[grade])
      {
        v7 = 1;
      }

      else
      {
        self->_gradeActiveVPNID[grade] = &__NSArray0__struct;

        v7 = 0;
      }

      self->_gradeActiveVPNIDLoaded[grade] = v7;
    }

    v8 = self->_gradeActiveVPNID[grade];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)activeVPNIDWithGrade:(unint64_t)grade
{
  if (grade == 2)
  {
    v4 = 0;
  }

  else
  {
    gradeActiveVPNIDLoaded = self->_gradeActiveVPNIDLoaded;
    if (!self->_gradeActiveVPNIDLoaded[grade])
    {
      v9 = [(VPNConnectionStore *)self copyActiveVPNIDsFromPrefsForGrade:grade];
      gradeActiveVPNID = self->_gradeActiveVPNID;
      v11 = self->_gradeActiveVPNID[grade];
      self->_gradeActiveVPNID[grade] = 0;

      if (v9 && [v9 count])
      {
        firstObject = [v9 firstObject];
        v13 = gradeActiveVPNID[grade];
        gradeActiveVPNID[grade] = firstObject;
      }

      gradeActiveVPNIDLoaded[grade] = gradeActiveVPNID[grade] != 0;
    }

    v4 = self->_gradeActiveVPNID[grade];
  }

  return v4;
}

- (BOOL)isActiveVPNID:(id)d withGrade:(unint64_t)grade
{
  dCopy = d;
  v7 = [(VPNConnectionStore *)self activeVPNIDWithGrade:grade];
  LOBYTE(self) = [v7 isEqual:dCopy];

  return self;
}

- (id)connectionWithServiceID:(id)d withGrade:(unint64_t)grade
{
  dCopy = d;
  if (grade == 8 || grade == 2)
  {
    v7 = self->_gradeCurrentConnection[grade];
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
          serviceID = [v12 serviceID];
          v14 = [serviceID isEqual:dCopy];

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
    serviceID2 = [(VPNConnection *)self->_gradeCurrentConnection[grade] serviceID];
    v16 = [dCopy isEqual:serviceID2];

    if (v16)
    {
      v9 = self->_gradeCurrentConnection[grade];
      if (v9)
      {
        goto LABEL_20;
      }
    }
  }

  connectionDict = self->_connectionDict;
  v18 = self->_connectionDict[grade];
  if (!v18)
  {
    v19 = objc_alloc_init(NSMutableDictionary);
    v20 = connectionDict[grade];
    connectionDict[grade] = v19;

    v18 = connectionDict[grade];
  }

  v9 = [(NSMutableDictionary *)v18 objectForKey:dCopy];
  if (!v9)
  {
    v22 = [(VPNConnectionStore *)self optionsForServiceID:dCopy withGrade:grade];
    if (!v22 || (v23 = [[VPNConnection alloc] initWithServiceID:dCopy options:v22]) == 0)
    {

      v9 = 0;
      goto LABEL_22;
    }

    v9 = v23;
    [(NSMutableDictionary *)connectionDict[grade] setObject:v23 forKey:dCopy];
  }

LABEL_20:
  if ([(VPNConnection *)v9 vpnConnectionType]== &dword_0 + 3)
  {
    v24 = 0;
    [(VPNConnectionStore *)self isTypeEnabledWithServiceID:dCopy withGrade:grade outProviderAvailable:&v24];
    [(VPNConnection *)v9 setIsProviderAvailable:v24];
  }

LABEL_22:

  return v9;
}

- (BOOL)alwaysOnToggleEnabledForServiceID:(id)d
{
  dCopy = d;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  configurations = [(VPNConnectionStore *)self configurations];
  v6 = [configurations countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v16 != v7)
      {
        objc_enumerationMutation(configurations);
      }

      v9 = *(*(&v15 + 1) + 8 * v8);
      if ([v9 grade] != &dword_0 + 3)
      {
        identifier = [v9 identifier];
        v11 = [identifier isEqual:dCopy];

        if (v11)
        {
          break;
        }
      }

      if (v6 == ++v8)
      {
        v6 = [configurations countByEnumeratingWithState:&v15 objects:v19 count:16];
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
      alwaysOnVPN = [v6 alwaysOnVPN];

      if (alwaysOnVPN)
      {
        configurations = [v6 alwaysOnVPN];
        isToggleEnabled = [configurations isToggleEnabled];
        goto LABEL_14;
      }
    }

    isToggleEnabled = 0;
  }

  else
  {
LABEL_10:
    isToggleEnabled = 0;
LABEL_14:
  }

  return isToggleEnabled;
}

- (id)organizationForServiceID:(id)d
{
  dCopy = d;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  configurations = [(VPNConnectionStore *)self configurations];
  v6 = [configurations countByEnumeratingWithState:&v28 objects:v32 count:16];
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
        objc_enumerationMutation(configurations);
      }

      v10 = *(*(&v28 + 1) + 8 * v9);
      if ([v10 grade] != &dword_0 + 3)
      {
        identifier = [v10 identifier];
        v12 = [identifier isEqual:dCopy];

        if (v12)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [configurations countByEnumeratingWithState:&v28 objects:v32 count:16];
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

    payloadInfo = [v13 payloadInfo];
    if (payloadInfo)
    {
      v15 = payloadInfo;
      payloadInfo2 = [v13 payloadInfo];
      payloadOrganization = [payloadInfo2 payloadOrganization];

      if (payloadOrganization)
      {
        payloadInfo3 = [v13 payloadInfo];
        payloadOrganization2 = [payloadInfo3 payloadOrganization];

        goto LABEL_17;
      }
    }

    applicationName = [v13 applicationName];

    if (applicationName)
    {
      applicationName2 = [v13 applicationName];
    }

    else
    {
      appVPN = [v13 appVPN];

      if (appVPN)
      {
        v24 = 2;
      }

      else
      {
        dnsProxy = [v13 dnsProxy];

        if (dnsProxy)
        {
          v24 = 5;
        }

        else
        {
          contentFilter = [v13 contentFilter];

          if (contentFilter)
          {
            v24 = 6;
          }

          else
          {
            urlFilter = [v13 urlFilter];

            if (urlFilter)
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

      applicationName2 = [VPNConnectionStore applicationNameForConfiguration:v13 withGrade:v24];
    }
  }

  else
  {
LABEL_10:

LABEL_15:
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    applicationName2 = [v13 localizedStringForKey:@"CUSTOM" value:&stru_411E8 table:@"MobileVPN"];
  }

  payloadOrganization2 = applicationName2;
LABEL_17:

  return payloadOrganization2;
}

- (id)organizationForService:(__SCNetworkService *)service
{
  v3 = SCNetworkServiceCopyProtocol(service, @"com.apple.payload");
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

- (id)getProfileIDForServiceID:(id)d
{
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  configurations = [(VPNConnectionStore *)self configurations];
  profileIdentifier = [configurations countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (profileIdentifier)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != profileIdentifier; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(configurations);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 grade] != &dword_0 + 3)
        {
          identifier = [v9 identifier];
          v11 = [identifier isEqual:dCopy];

          if (v11)
          {
            payloadInfo = [v9 payloadInfo];
            profileIdentifier = [payloadInfo profileIdentifier];

            goto LABEL_12;
          }
        }
      }

      profileIdentifier = [configurations countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (profileIdentifier)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return profileIdentifier;
}

- (id)vpnServicesForCurrentSetWithGrade:(unint64_t)grade excludePerApp:(BOOL)app
{
  appCopy = app;
  v6 = objc_alloc_init(NSMutableArray);
  v7 = objc_alloc_init(NSMutableArray);
  configurations = [(VPNConnectionStore *)self configurations];
  v9 = configurations;
  if (!configurations)
  {
    goto LABEL_86;
  }

  v10 = [configurations mutableCopy];
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
  if (grade)
  {
    v12 = 2;
  }

  v78 = v12;
  v79 = v7;
  v82 = v6;
  v70 = v9;
  selfCopy = self;
  v73 = v10;
  if (grade != 4)
  {
    v85 = 0uLL;
    v86 = 0uLL;
    v83 = 0uLL;
    v84 = 0uLL;
    v25 = v10;
    v26 = [v25 countByEnumeratingWithState:&v83 objects:v95 count:16];
    v27 = appCopy;
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
          externalIdentifier = [v31 externalIdentifier];

          if (externalIdentifier)
          {
            goto LABEL_59;
          }
        }

        if (grade <= 5)
        {
          switch(grade)
          {
            case 2uLL:
              appVPN = [v31 appVPN];

              if (!appVPN)
              {
                goto LABEL_59;
              }

              appVPN2 = [v31 appVPN];
              isEnabled = [appVPN2 isEnabled];

              identifier = [v31 identifier];
              if (isEnabled)
              {
                goto LABEL_56;
              }

              v42 = v79;
LABEL_57:
              [v42 addObject:identifier];
              goto LABEL_58;
            case 3uLL:
              alwaysOnVPN = [v31 alwaysOnVPN];
LABEL_54:
              v50 = alwaysOnVPN;

              if (!v50)
              {
                goto LABEL_59;
              }

LABEL_55:
              identifier = [v31 identifier];
LABEL_56:
              v42 = v82;
              goto LABEL_57;
            case 5uLL:
              alwaysOnVPN = [v31 dnsProxy];
              goto LABEL_54;
          }

LABEL_46:
          v43 = [v31 VPN];
          if (v43)
          {
            v44 = v43;
            grade = [v31 grade];

            if (grade == v78)
            {
              goto LABEL_55;
            }
          }

          goto LABEL_59;
        }

        if (grade > 7)
        {
          if (grade != 8)
          {
            if (grade == 9)
            {
              urlFilter = [v31 urlFilter];

              if (urlFilter)
              {
                goto LABEL_55;
              }

              goto LABEL_59;
            }

            goto LABEL_46;
          }

          relay = [v31 relay];
          if (!relay)
          {
            goto LABEL_59;
          }

          v47 = relay;
          relay2 = [v31 relay];
          matchDomains = [relay2 matchDomains];
          if ([matchDomains count])
          {

            v25 = v81;
LABEL_62:
            relay3 = [v31 relay];
            isEnabled2 = [relay3 isEnabled];

            identifier = [v31 identifier];
            if (isEnabled2)
            {
              v55 = v82;
            }

            else
            {
              v55 = v79;
            }

            [v55 addObject:identifier];
            v27 = appCopy;
LABEL_58:

            goto LABEL_59;
          }

          relay4 = [v31 relay];
          perApp = [relay4 perApp];
          appRules = [perApp appRules];
          v76 = [appRules count];

          v27 = appCopy;
          v25 = v81;
          if (v76)
          {
            goto LABEL_62;
          }
        }

        else
        {
          if (grade == 6)
          {
            alwaysOnVPN = [v31 contentFilter];
            goto LABEL_54;
          }

          relay5 = [v31 relay];
          if (!relay5)
          {
            goto LABEL_59;
          }

          identifier = relay5;
          relay6 = [v31 relay];
          matchDomains2 = [relay6 matchDomains];
          if ([matchDomains2 count])
          {

            v25 = v81;
            goto LABEL_58;
          }

          relay7 = [v31 relay];
          perApp2 = [relay7 perApp];
          appRules2 = [perApp2 appRules];
          v77 = [appRules2 count];

          v27 = appCopy;
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
        dnsSettings = [v19 dnsSettings];
        if (dnsSettings)
        {
          v21 = dnsSettings;
          grade2 = [v19 grade];

          if (grade2 == &dword_0 + 1)
          {
            identifier2 = [v19 identifier];
            [v6 addObject:identifier2];

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
            dnsSettings2 = [v64 dnsSettings];
            if (dnsSettings2)
            {
              v66 = dnsSettings2;
              grade3 = [v64 grade];

              if (grade3 == &dword_0 + 2)
              {
                identifier3 = [v64 identifier];
                [v6 addObject:identifier3];
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

  objc_storeStrong(&selfCopy->_gradeVPNServiceIDs[grade], v6);

  v9 = v71;
LABEL_86:

  return v6;
}

- (id)vpnServiceCountWithGrade:(unint64_t)grade
{
  v3 = [(VPNConnectionStore *)self vpnServicesForCurrentSetWithGrade:grade];
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

- (BOOL)gradePresent:(unint64_t)present
{
  v5 = [(VPNConnectionStore *)self vpnServicesForCurrentSetWithGrade:3];
  v6 = [v5 count];

  if (v6)
  {
    return present == 3;
  }

  v8 = [(VPNConnectionStore *)self vpnServicesForCurrentSetWithGrade:present];
  v7 = [v8 count] != 0;

  return v7;
}

- (id)appNameForServiceID:(id)d withGrade:(unint64_t)grade
{
  dCopy = d;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  configurations = [(VPNConnectionStore *)self configurations];
  v8 = [configurations countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(configurations);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v11 grade] != &dword_0 + 3)
        {
          identifier = [v11 identifier];
          v13 = [identifier isEqual:dCopy];

          if (v13)
          {
            v8 = v11;
            goto LABEL_12;
          }
        }
      }

      v8 = [configurations countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v14 = [VPNConnectionStore applicationNameForConfiguration:v8 withGrade:grade];

  return v14;
}

- (BOOL)isTypeEnabledWithServiceID:(id)d withGrade:(unint64_t)grade outProviderAvailable:(BOOL *)available
{
  dCopy = d;
  if (available)
  {
    *available = 1;
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  configurations = [(VPNConnectionStore *)self configurations];
  v10 = [configurations countByEnumeratingWithState:&v59 objects:v64 count:16];
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
        objc_enumerationMutation(configurations);
      }

      v14 = *(*(&v59 + 1) + 8 * v13);
      if ([v14 grade] != &dword_0 + 3)
      {
        identifier = [v14 identifier];
        v16 = [identifier isEqual:dCopy];

        if (v16)
        {
          break;
        }
      }

      if (v11 == ++v13)
      {
        v11 = [configurations countByEnumeratingWithState:&v59 objects:v64 count:16];
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

    if (grade <= 1)
    {
      v18 = [v17 VPN];

      if (!v18)
      {
        goto LABEL_49;
      }

      v19 = [v17 VPN];
      protocol = [v19 protocol];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        appVPN3 = [v17 VPN];
        goto LABEL_18;
      }

      goto LABEL_48;
    }

    switch(grade)
    {
      case 4uLL:
        dnsSettings = [v17 dnsSettings];
        break;
      case 3uLL:
        dnsSettings = [v17 alwaysOnVPN];
        break;
      case 2uLL:
        appVPN = [v17 appVPN];

        if (!appVPN)
        {
          goto LABEL_49;
        }

        appVPN2 = [v17 appVPN];
        protocol2 = [appVPN2 protocol];
        objc_opt_class();
        v45 = objc_opt_isKindOfClass();

        if (v45)
        {
          appVPN3 = [v17 appVPN];
LABEL_18:
          v23 = appVPN3;
          protocol3 = [appVPN3 protocol];
          pluginType = [protocol3 pluginType];

          if (!pluginType)
          {
            goto LABEL_50;
          }

          v26 = [LSApplicationProxy applicationProxyForIdentifier:pluginType];
          v27 = v26;
          if (v26)
          {
            appState = [v26 appState];
            if (appState)
            {
              v29 = appState;
              appState2 = [v27 appState];
              if ([appState2 isInstalled])
              {
                appState3 = [v27 appState];
                isValid = [appState3 isValid];

                if (isValid)
                {
                  if (!available)
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
                        if (grade > 1)
                        {
                          protocol4 = [*(*(&v55 + 1) + 8 * i) protocol];
                          if ([protocol4 isEqualToString:@"com.apple.networkextension.packet-tunnel"])
                          {

LABEL_61:
                            v41 = 1;
                            goto LABEL_62;
                          }

                          protocol5 = [v35 protocol];
                          v40 = [protocol5 isEqualToString:@"com.apple.networkextension.app-proxy"];

                          if (v40)
                          {
                            goto LABEL_61;
                          }
                        }

                        else
                        {
                          protocol6 = [*(*(&v55 + 1) + 8 * i) protocol];
                          v37 = [protocol6 isEqualToString:@"com.apple.networkextension.packet-tunnel"];

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

                  *available = v41;
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

          v33 = [NSString stringWithFormat:@"VPN-%@.plist", pluginType];
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
            *available = 0;
          }

          goto LABEL_56;
        }

LABEL_48:
        pluginType = 0;
        v48 = 1;
        goto LABEL_51;
      default:
        if (grade - 7 > 1)
        {
          goto LABEL_49;
        }

        dnsSettings = [v17 relay];
        break;
    }

    v47 = dnsSettings;

    if (!v47)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

LABEL_12:

  v17 = 0;
LABEL_49:
  pluginType = 0;
LABEL_50:
  v48 = 0;
LABEL_51:

  return v48;
}

- (BOOL)isEnabledWithServiceID:(id)d withGrade:(unint64_t)grade
{
  dCopy = d;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  configurations = [(VPNConnectionStore *)self configurations];
  v8 = [configurations countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = *v26;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v26 != v9)
      {
        objc_enumerationMutation(configurations);
      }

      v11 = *(*(&v25 + 1) + 8 * v10);
      if ([v11 grade] != &dword_0 + 3)
      {
        identifier = [v11 identifier];
        v13 = [identifier isEqual:dCopy];

        if (v13)
        {
          break;
        }
      }

      if (v8 == ++v10)
      {
        v8 = [configurations countByEnumeratingWithState:&v25 objects:v29 count:16];
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

    if (grade > 2)
    {
      if (grade <= 4)
      {
        if (grade == 3)
        {
          alwaysOnVPN = [v8 alwaysOnVPN];

          if (alwaysOnVPN)
          {
            alwaysOnVPN2 = [v8 alwaysOnVPN];
            goto LABEL_38;
          }
        }

        else
        {
          dnsSettings = [v8 dnsSettings];

          if (dnsSettings)
          {
            alwaysOnVPN2 = [v8 dnsSettings];
LABEL_38:
            configurations = alwaysOnVPN2;
            isEnabled = [alwaysOnVPN2 isEnabled];
            goto LABEL_39;
          }
        }

        goto LABEL_43;
      }

      if (grade != 5)
      {
        if (grade == 6)
        {
          contentFilter = [v8 contentFilter];

          if (contentFilter)
          {
            alwaysOnVPN2 = [v8 contentFilter];
            goto LABEL_38;
          }

          goto LABEL_43;
        }

        goto LABEL_28;
      }

      dnsProxy = [v8 dnsProxy];

      if (dnsProxy)
      {
        alwaysOnVPN2 = [v8 dnsProxy];
        goto LABEL_38;
      }

      goto LABEL_43;
    }

    if (grade)
    {
      if (grade != 1)
      {
        if (grade == 2)
        {
          appVPN = [v8 appVPN];

          if (appVPN)
          {
            alwaysOnVPN2 = [v8 appVPN];
            goto LABEL_38;
          }

          goto LABEL_43;
        }

LABEL_28:
        if (grade - 7 > 1)
        {
          if (grade == 9)
          {
            urlFilter = [v8 urlFilter];

            if (urlFilter)
            {
              alwaysOnVPN2 = [v8 urlFilter];
              goto LABEL_38;
            }
          }
        }

        else
        {
          relay = [v8 relay];

          if (relay)
          {
            alwaysOnVPN2 = [v8 relay];
            goto LABEL_38;
          }
        }

        goto LABEL_43;
      }

      if ([v8 grade] != &dword_0 + 2)
      {
LABEL_43:
        isEnabled = 0;
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
      alwaysOnVPN2 = [v8 VPN];
      goto LABEL_38;
    }

    goto LABEL_43;
  }

LABEL_10:
  isEnabled = 0;
LABEL_39:

LABEL_44:
  return isEnabled;
}

- (BOOL)uiToggleAllowedWithServiceID:(id)d withGrade:(unint64_t)grade
{
  dCopy = d;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  configurations = [(VPNConnectionStore *)self configurations];
  v8 = [configurations countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v18 != v9)
      {
        objc_enumerationMutation(configurations);
      }

      v11 = *(*(&v17 + 1) + 8 * v10);
      if ([v11 grade] != &dword_0 + 3)
      {
        identifier = [v11 identifier];
        v13 = [identifier isEqual:dCopy];

        if (v13)
        {
          break;
        }
      }

      if (v8 == ++v10)
      {
        v8 = [configurations countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v8 = v11;

    isUIToggleEnabled = 0;
    if (grade - 7 <= 1 && v8)
    {
      relay = [v8 relay];

      if (relay)
      {
        configurations = [v8 relay];
        isUIToggleEnabled = [configurations isUIToggleEnabled];
        goto LABEL_15;
      }

      isUIToggleEnabled = 0;
    }
  }

  else
  {
LABEL_10:
    isUIToggleEnabled = 0;
LABEL_15:
  }

  return isUIToggleEnabled;
}

+ (id)applicationNameForConfiguration:(id)configuration withGrade:(unint64_t)grade
{
  configurationCopy = configuration;
  applicationName = [configurationCopy applicationName];
  pluginType = applicationName;
  if (configurationCopy && !applicationName)
  {
    if (grade <= 1)
    {
      v8 = [configurationCopy VPN];
      protocol = [v8 protocol];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        appVPN2 = [configurationCopy VPN];
        goto LABEL_6;
      }

LABEL_32:
      pluginType = 0;
      goto LABEL_33;
    }

    pluginType = 0;
    if (grade <= 5)
    {
      if (grade == 2)
      {
        appVPN = [configurationCopy appVPN];
        protocol2 = [appVPN protocol];
        objc_opt_class();
        v26 = objc_opt_isKindOfClass();

        if ((v26 & 1) == 0)
        {
          goto LABEL_32;
        }

        appVPN2 = [configurationCopy appVPN];
      }

      else
      {
        if (grade != 5)
        {
          goto LABEL_28;
        }

        dnsProxy = [configurationCopy dnsProxy];
        protocol3 = [dnsProxy protocol];
        objc_opt_class();
        v16 = objc_opt_isKindOfClass();

        if ((v16 & 1) == 0)
        {
          goto LABEL_32;
        }

        appVPN2 = [configurationCopy dnsProxy];
      }

LABEL_6:
      v12 = appVPN2;
      protocol4 = [appVPN2 protocol];
      pluginType = [protocol4 pluginType];

      if (!pluginType)
      {
        goto LABEL_28;
      }

LABEL_16:
      if ([pluginType isEqualToString:@"com.cisco.anyconnect.applevpn.plugin"])
      {
        v17 = @"com.cisco.Cisco-AnyConnect.vpnplugin";
      }

      else
      {
        if (![pluginType isEqualToString:@"net.juniper.sslvpn"])
        {
LABEL_21:
          v18 = [pluginType componentsSeparatedByString:@"."];
          if ([v18 count] >= 4 && (objc_msgSend(v18, "lastObject"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isEqualToString:", @"vpnplugin"), v19, (v20 & 1) != 0))
          {
            v21 = -2;
          }

          else
          {
            if ([v18 count] < 3)
            {
LABEL_27:
              pluginType = pluginType;

              goto LABEL_28;
            }

            v21 = -1;
          }

          v22 = [v18 objectAtIndexedSubscript:{objc_msgSend(v18, "count") + v21}];

          pluginType = [v22 stringByReplacingOccurrencesOfString:@"-" withString:@" "];

          goto LABEL_27;
        }

        v17 = @"net.juniper.Junos-Pulse.vpnplugin";
      }

      pluginType = v17;
      goto LABEL_21;
    }

    if (grade == 6 || grade == 9)
    {
      pluginType = [configurationCopy application];
      if (pluginType)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_28:
  if (pluginType)
  {
    v23 = pluginType;
    goto LABEL_34;
  }

LABEL_33:
  v27 = [NSBundle bundleForClass:objc_opt_class()];
  v23 = [v27 localizedStringForKey:@"UNKNOWN" value:&stru_411E8 table:@"MobileVPN"];

LABEL_34:

  return v23;
}

- (void)triggerLocalAuthenticationForConfigurationIdentifier:(id)identifier requestedByApp:(id)app
{
  appCopy = app;
  identifierCopy = identifier;
  v8 = [[NSUUID alloc] initWithUUIDString:identifierCopy];

  if (v8)
  {
    configurationManager = [(VPNConnectionStore *)self configurationManager];
    storeQueue = [(VPNConnectionStore *)self storeQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_11098;
    v11[3] = &unk_40B38;
    v12 = appCopy;
    [configurationManager triggerLocalAuthenticationForConfigurationWithID:v8 withCompletionQueue:storeQueue handler:v11];
  }
}

- (void)iterateContentFilterServicesWithBlock:(id)block
{
  blockCopy = block;
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

        if (!blockCopy[2](blockCopy, *(*(&v11 + 1) + 8 * v10), 6))
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

- (void)iterateURLFilterServicesWithBlock:(id)block
{
  blockCopy = block;
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

        if (!blockCopy[2](blockCopy, *(*(&v11 + 1) + 8 * v10), 9))
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

- (id)copyActiveVPNIDsFromPrefsForGrade:(unint64_t)grade
{
  v5 = objc_alloc_init(NSMutableArray);
  v42 = 0u;
  v43 = 0u;
  v6 = 1;
  if (grade)
  {
    v6 = 2;
  }

  v40 = v6;
  v41 = v5;
  v44 = 0uLL;
  v45 = 0uLL;
  configurations = [(VPNConnectionStore *)self configurations];
  v8 = [configurations countByEnumeratingWithState:&v42 objects:v46 count:16];
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
        objc_enumerationMutation(configurations);
      }

      v12 = *(*(&v42 + 1) + 8 * i);
      if ([v12 grade] == &dword_0 + 3)
      {
        continue;
      }

      if (grade <= 5)
      {
        if (grade <= 3)
        {
          if (grade == 2)
          {
            appVPN = [v12 appVPN];
            if (appVPN)
            {
              v21 = appVPN;
              appVPN2 = [v12 appVPN];
              isEnabled = [appVPN2 isEnabled];

              if (isEnabled)
              {
                goto LABEL_46;
              }
            }

            continue;
          }

          if (grade == 3)
          {
            alwaysOnVPN = [v12 alwaysOnVPN];
            goto LABEL_32;
          }

          goto LABEL_38;
        }

        if (grade == 4)
        {
          [v12 dnsSettings];
        }

        else
        {
          [v12 dnsProxy];
        }
        alwaysOnVPN = ;
LABEL_32:
        v24 = alwaysOnVPN;

        if (v24)
        {
          goto LABEL_51;
        }

        continue;
      }

      if (grade <= 7)
      {
        if (grade == 6)
        {
          alwaysOnVPN = [v12 contentFilter];
          goto LABEL_32;
        }

        relay = [v12 relay];
        if (!relay)
        {
          continue;
        }

        identifier = relay;
        relay2 = [v12 relay];
        if ([relay2 isEnabled])
        {
          relay3 = [v12 relay];
          matchDomains = [relay3 matchDomains];
          if (![matchDomains count])
          {
            relay4 = [v12 relay];
            perApp = [relay4 perApp];
            appRules = [perApp appRules];
            v39 = [appRules count];

            if (v39)
            {
              continue;
            }

LABEL_46:
            identifier = [v12 identifier];
            [v41 addObject:identifier];
LABEL_47:

            continue;
          }
        }

LABEL_42:

        goto LABEL_47;
      }

      if (grade != 8)
      {
        if (grade == 9)
        {
          urlFilter = [v12 urlFilter];

          if (urlFilter)
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

        identifier = v28;
        relay2 = [v12 VPN];
        if (([relay2 isEnabled] & 1) == 0)
        {
          goto LABEL_42;
        }

        grade = [v12 grade];

        if (grade == v40)
        {
LABEL_51:
          identifier2 = [v12 identifier];
          [v41 addObject:identifier2];

          goto LABEL_52;
        }

        continue;
      }

      relay5 = [v12 relay];
      if (!relay5)
      {
        continue;
      }

      identifier = relay5;
      relay2 = [v12 relay];
      if (([relay2 isEnabled] & 1) == 0)
      {
        goto LABEL_42;
      }

      relay6 = [v12 relay];
      matchDomains2 = [relay6 matchDomains];
      if ([matchDomains2 count])
      {

        goto LABEL_46;
      }

      relay7 = [v12 relay];
      perApp2 = [relay7 perApp];
      appRules2 = [perApp2 appRules];
      v38 = [appRules2 count];

      if (v38)
      {
        goto LABEL_46;
      }
    }

    v9 = [configurations countByEnumeratingWithState:&v42 objects:v46 count:16];
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