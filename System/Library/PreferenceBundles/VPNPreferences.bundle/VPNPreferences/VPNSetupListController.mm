@interface VPNSetupListController
- (BOOL)deleteConfiguration:(id)configuration;
- (BOOL)haveEnoughValues;
- (BOOL)saveConfigurationSettings;
- (VPNSetupListController)init;
- (__CFString)vpnTypeForSpecifier:(id)specifier;
- (id)authTypeForSpecifier:(id)specifier;
- (id)bundle;
- (id)certificateObjectForSpecifier:(id)specifier;
- (id)connection;
- (id)eapTypeForSpecifier:(id)specifier;
- (id)getConnectionStateForSpecifier:(id)specifier;
- (id)getDescriptionForApp:(id)app;
- (id)interfaceTypeForConnection:(id)connection;
- (id)localIP2ForSpecifier:(id)specifier;
- (id)localIPForSpecifier:(id)specifier;
- (id)onDemand:(id)demand;
- (id)pacFile:(id)file;
- (id)pptpEncryptionLevelForSpecifier:(id)specifier;
- (id)proxyPassword:(id)password;
- (id)proxyServer:(id)server;
- (id)proxyServerPort:(id)port;
- (id)proxyType:(id)type;
- (id)proxyUsername:(id)username;
- (id)proxyUsesAuthentication:(id)authentication;
- (id)remoteIPForSpecifier:(id)specifier;
- (id)sendAllTraffic:(id)traffic;
- (id)serverForConnection:(id)connection;
- (id)specifiers;
- (id)statusForConnection:(id)connection;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)timeConnectedForSpecifier:(id)specifier;
- (id)tunnelType:(id)type;
- (id)typeForConnection:(id)connection;
- (id)useRSASecurIDForSpecifier:(id)specifier;
- (id)usernameForConnection:(id)connection;
- (id)usesCertificatesForSpecifier:(id)specifier;
- (id)vpnGradeForSpecifier:(id)specifier;
- (id)vpnGradeNameForSpecifier:(id)specifier;
- (void)appWillEnterForeground:(id)foreground;
- (void)cancelButtonClicked:(id)clicked;
- (void)dealloc;
- (void)deleteConfirm:(id)confirm;
- (void)deleteVPNConfiguration:(id)configuration;
- (void)disableButtonTapped:(id)tapped;
- (void)displayAlertWithTitle:(id)title message:(id)message cancel:(id)cancel;
- (void)enableButtonTapped:(id)tapped;
- (void)enterEditMode;
- (void)leaveEditMode;
- (void)loadView;
- (void)renewCertificate:(id)certificate;
- (void)saveButtonClicked:(id)clicked;
- (void)saveButtonTapped:(id)tapped;
- (void)scrollToSpecifier:(id)specifier;
- (void)setAuthType:(id)type forSpecifier:(id)specifier;
- (void)setCertificateObject:(id)object forSpecifier:(id)specifier;
- (void)setConnectionState:(id)state forSpecifier:(id)specifier;
- (void)setDisplayName:(id)name forSpecifier:(id)specifier;
- (void)setEAPType:(id)type forSpecifier:(id)specifier;
- (void)setGroupDisplayName:(id)name forSpecifier:(id)specifier;
- (void)setLocalIdentifier:(id)identifier forSpecifier:(id)specifier;
- (void)setOnDemand:(id)demand forSpecifier:(id)specifier;
- (void)setOnDemandService:(id)service forSpecifier:(id)specifier;
- (void)setPPTPEncryptionLevel:(id)level forSpecifier:(id)specifier;
- (void)setPacFile:(id)file specifier:(id)specifier;
- (void)setPassword:(id)password forSpecifier:(id)specifier;
- (void)setPasswordRequired:(id)required forSpecifier:(id)specifier;
- (void)setProxyPassword:(id)password specifier:(id)specifier;
- (void)setProxyServer:(id)server specifier:(id)specifier;
- (void)setProxyServerPort:(id)port specifier:(id)specifier;
- (void)setProxyType:(id)type specifier:(id)specifier;
- (void)setProxyUsername:(id)username specifier:(id)specifier;
- (void)setProxyUsesAuthentication:(id)authentication specifier:(id)specifier;
- (void)setRemoteIdentifier:(id)identifier forSpecifier:(id)specifier;
- (void)setSendAllTraffic:(id)traffic forSpecifier:(id)specifier;
- (void)setServer:(id)server forSpecifier:(id)specifier;
- (void)setSharedSecret:(id)secret forSpecifier:(id)specifier;
- (void)setStateForServiceID:(id)d;
- (void)setUseRSASecurID:(id)d forSpecifier:(id)specifier;
- (void)setUsername:(id)username forSpecifier:(id)specifier;
- (void)setUsesCertificates:(id)certificates forSpecifier:(id)specifier;
- (void)setVPNGrade:(id)grade forSpecifier:(id)specifier;
- (void)setVPNType:(__CFString *)type forSpecifier:(id)specifier;
- (void)timerUpdated:(id)updated;
- (void)updateDoneButton;
- (void)vpnConfigurationChanged:(id)changed;
- (void)warnForPPTP;
@end

@implementation VPNSetupListController

- (void)vpnConfigurationChanged:(id)changed
{
  if ([(VPNSetupListController *)self overviewMode])
  {

    [(VPNSetupListController *)self reloadSpecifiers];
  }
}

- (void)appWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  userInfo = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v6 = +[VPNConnectionStore sharedInstance];
  v7 = [userInfo objectForKeyedSubscript:@"vpn-service-id"];
  v8 = [v6 connectionWithServiceID:v7 withGrade:{-[VPNSetupListController vpnGrade](self, "vpnGrade")}];
  objc_initWeak(&location, v8);

  v9 = objc_loadWeakRetained(&location);
  sub_4760(v9);

  objc_destroyWeak(&location);
}

- (void)timerUpdated:(id)updated
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(VPNSetupListController *)self timeSpecifierArray:updated];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(VPNSetupListController *)self reloadSpecifier:*(*(&v10 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  timeSpecifier = [(VPNSetupListController *)self timeSpecifier];
  [(VPNSetupListController *)self reloadSpecifier:timeSpecifier];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:off_49D50 object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:off_49D58 object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:@"VPNNEConfigurationChangedNotification" object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:UIApplicationWillEnterForegroundNotification object:0];

  v7.receiver = self;
  v7.super_class = VPNSetupListController;
  [(VPNSetupListController *)&v7 dealloc];
}

- (VPNSetupListController)init
{
  v8.receiver = self;
  v8.super_class = VPNSetupListController;
  v2 = [(VPNSetupListController *)&v8 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"vpnStatusChanged:" name:off_49D50 object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"timerUpdated:" name:off_49D58 object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"vpnConfigurationChanged:" name:@"VPNNEConfigurationChangedNotification" object:0];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v2 selector:"appWillEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];
  }

  return v2;
}

- (id)proxyServer:(id)server
{
  proxyServer = [(VPNSetupListController *)self proxyServer];
  if (proxyServer)
  {
    proxyServer2 = [(VPNSetupListController *)self proxyServer];
  }

  else
  {
    proxyServer2 = &stru_411E8;
  }

  return proxyServer2;
}

- (void)setProxyServer:(id)server specifier:(id)specifier
{
  serverCopy = server;
  proxyServer = [(VPNSetupListController *)self proxyServer];
  v6 = [serverCopy isEqualToString:proxyServer];

  if ((v6 & 1) == 0)
  {
    [(VPNSetupListController *)self setProxyServer:serverCopy];
    [(VPNSetupListController *)self setDirty:1];
    [(VPNSetupListController *)self updateDoneButton];
  }
}

- (id)proxyServerPort:(id)port
{
  proxyPort = [(VPNSetupListController *)self proxyPort];
  if (proxyPort)
  {
    proxyPort2 = [(VPNSetupListController *)self proxyPort];
  }

  else
  {
    proxyPort2 = &stru_411E8;
  }

  return proxyPort2;
}

- (void)setProxyServerPort:(id)port specifier:(id)specifier
{
  portCopy = port;
  proxyPort = [(VPNSetupListController *)self proxyPort];
  v6 = [portCopy isEqualToString:proxyPort];

  if ((v6 & 1) == 0)
  {
    [(VPNSetupListController *)self setProxyPort:portCopy];
    [(VPNSetupListController *)self setDirty:1];
    [(VPNSetupListController *)self updateDoneButton];
  }
}

- (id)proxyUsername:(id)username
{
  proxyUsername = [(VPNSetupListController *)self proxyUsername];
  if (proxyUsername)
  {
    proxyUsername2 = [(VPNSetupListController *)self proxyUsername];
  }

  else
  {
    proxyUsername2 = &stru_411E8;
  }

  return proxyUsername2;
}

- (void)setProxyUsername:(id)username specifier:(id)specifier
{
  usernameCopy = username;
  proxyUsername = [(VPNSetupListController *)self proxyUsername];
  v6 = [usernameCopy isEqualToString:proxyUsername];

  if ((v6 & 1) == 0)
  {
    [(VPNSetupListController *)self setProxyUsername:usernameCopy];
    [(VPNSetupListController *)self setDirty:1];
    [(VPNSetupListController *)self updateDoneButton];
  }
}

- (id)proxyPassword:(id)password
{
  proxyPassword = [(VPNSetupListController *)self proxyPassword];
  if (proxyPassword)
  {
    proxyPassword2 = [(VPNSetupListController *)self proxyPassword];
  }

  else
  {
    proxyPassword2 = &stru_411E8;
  }

  return proxyPassword2;
}

- (void)setProxyPassword:(id)password specifier:(id)specifier
{
  passwordCopy = password;
  proxyPassword = [(VPNSetupListController *)self proxyPassword];
  v6 = [passwordCopy isEqualToString:proxyPassword];

  if ((v6 & 1) == 0)
  {
    [(VPNSetupListController *)self setProxyPassword:passwordCopy];
    [(VPNSetupListController *)self setDirty:1];
    [(VPNSetupListController *)self updateDoneButton];
  }
}

- (void)setProxyUsesAuthentication:(id)authentication specifier:(id)specifier
{
  authenticationCopy = authentication;
  bOOLValue = [authenticationCopy BOOLValue];
  v6 = bOOLValue == [(VPNSetupListController *)self proxyAuthenticated];
  v7 = authenticationCopy;
  if (!v6)
  {
    -[VPNSetupListController setProxyAuthenticated:](self, "setProxyAuthenticated:", [authenticationCopy BOOLValue]);
    if (bOOLValue)
    {
      [(VPNSetupListController *)self setProxyUsername:0];
      [(VPNSetupListController *)self setProxyPassword:0];
      proxyAuthSpecifiers = [(VPNSetupListController *)self proxyAuthSpecifiers];
      [(VPNSetupListController *)self insertContiguousSpecifiers:proxyAuthSpecifiers afterSpecifierID:@"PROXY_AUTHENTICATION" animated:1];

      proxyAuthSpecifiers2 = [(VPNSetupListController *)self proxyAuthSpecifiers];
      lastObject = [proxyAuthSpecifiers2 lastObject];
      [(VPNSetupListController *)self performSelector:"scrollToSpecifier:" withObject:lastObject afterDelay:0.3];
    }

    else
    {
      proxyAuthSpecifiers2 = [(VPNSetupListController *)self proxyAuthSpecifiers];
      [(VPNSetupListController *)self removeContiguousSpecifiers:proxyAuthSpecifiers2 animated:1];
    }

    [(VPNSetupListController *)self setDirty:1];
    [(VPNSetupListController *)self updateDoneButton];
    v7 = authenticationCopy;
  }
}

- (id)proxyUsesAuthentication:(id)authentication
{
  proxyAuthenticated = [(VPNSetupListController *)self proxyAuthenticated];

  return [NSNumber numberWithBool:proxyAuthenticated];
}

- (id)proxyType:(id)type
{
  proxyType = [(VPNSetupListController *)self proxyType];

  return [NSNumber numberWithUnsignedInteger:proxyType];
}

- (void)setProxyType:(id)type specifier:(id)specifier
{
  typeCopy = type;
  v7 = [(VPNSetupListController *)self proxyType:specifier];
  intValue = [v7 intValue];

  intValue2 = [typeCopy intValue];
  unsignedIntegerValue = [typeCopy unsignedIntegerValue];

  [(VPNSetupListController *)self setProxyType:unsignedIntegerValue];
  [(VPNSetupListController *)self loseFocus];
  manualProxySpecifiers = [(VPNSetupListController *)self manualProxySpecifiers];
  v35 = [NSMutableArray arrayWithArray:manualProxySpecifiers];

  v12 = [(VPNSetupListController *)self proxyUsesAuthentication:0];
  LODWORD(manualProxySpecifiers) = [v12 BOOLValue];

  if (manualProxySpecifiers)
  {
    proxyAuthSpecifiers = [(VPNSetupListController *)self proxyAuthSpecifiers];
    [v35 addObjectsFromArray:proxyAuthSpecifiers];
  }

  if (!intValue && intValue2 == 1)
  {
    [(VPNSetupListController *)self insertContiguousSpecifiers:v35 afterSpecifierID:@"PROXY_TYPE" animated:1];
    lastObject = [v35 lastObject];
    [(VPNSetupListController *)self performSelector:"scrollToSpecifier:" withObject:lastObject afterDelay:0.3];

    [(VPNSetupListController *)self setDirty:1];
    goto LABEL_14;
  }

  if (!intValue && intValue2 == 2)
  {
    pacSpecifiers = [(VPNSetupListController *)self pacSpecifiers];
    [(VPNSetupListController *)self insertContiguousSpecifiers:pacSpecifiers afterSpecifierID:@"PROXY_TYPE" animated:1];

    pacSpecifiers2 = [(VPNSetupListController *)self pacSpecifiers];
    lastObject2 = [pacSpecifiers2 lastObject];
    [(VPNSetupListController *)self performSelector:"scrollToSpecifier:" withObject:lastObject2 afterDelay:0.3];

LABEL_12:
    [(VPNSetupListController *)self setDirty:1];
LABEL_13:
    [(VPNSetupListController *)self updateDoneButton];
    goto LABEL_14;
  }

  if (intValue == 1 && !intValue2)
  {
    [(VPNSetupListController *)self removeContiguousSpecifiers:v35 animated:1];
    goto LABEL_12;
  }

  if (intValue == 1 && intValue2 == 2)
  {
    v18 = [v35 count] - 1;
    pacSpecifiers3 = [(VPNSetupListController *)self pacSpecifiers];
    v20 = [pacSpecifiers3 count] - 1;

    v21 = [v35 subarrayWithRange:{1, v18}];
    pacSpecifiers4 = [(VPNSetupListController *)self pacSpecifiers];
    v23 = [pacSpecifiers4 subarrayWithRange:{1, v20}];

    [(VPNSetupListController *)self replaceContiguousSpecifiers:v21 withSpecifiers:v23 animated:1];
    pacSpecifiers5 = [(VPNSetupListController *)self pacSpecifiers];
    lastObject3 = [pacSpecifiers5 lastObject];
    [(VPNSetupListController *)self performSelector:"scrollToSpecifier:" withObject:lastObject3 afterDelay:0.3];

LABEL_20:
    goto LABEL_21;
  }

  if (intValue == 2 && !intValue2)
  {
    pacSpecifiers6 = [(VPNSetupListController *)self pacSpecifiers];
    [(VPNSetupListController *)self removeContiguousSpecifiers:pacSpecifiers6 animated:1];

    goto LABEL_12;
  }

  if (intValue == 2 && intValue2 == 1)
  {
    v31 = [v35 count] - 1;
    pacSpecifiers7 = [(VPNSetupListController *)self pacSpecifiers];
    v33 = [pacSpecifiers7 count] - 1;

    v21 = [v35 subarrayWithRange:{1, v31}];
    pacSpecifiers8 = [(VPNSetupListController *)self pacSpecifiers];
    v23 = [pacSpecifiers8 subarrayWithRange:{1, v33}];

    [(VPNSetupListController *)self replaceContiguousSpecifiers:v23 withSpecifiers:v21 animated:1];
    pacSpecifiers5 = [v35 lastObject];
    [(VPNSetupListController *)self performSelector:"scrollToSpecifier:" withObject:pacSpecifiers5 afterDelay:0.3];
    goto LABEL_20;
  }

LABEL_21:
  if (intValue2 && intValue)
  {
    v26 = [(VPNSetupListController *)self indexOfGroup:3];
    v27 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__table];
    v28 = [(VPNSetupListController *)self indexPathForIndex:v26 + 1];
    v29 = [v27 cellForRowAtIndexPath:v28];

    [v29 becomeFirstResponder];
  }

  [(VPNSetupListController *)self setDirty:1];
  if (intValue2 != 1)
  {
    goto LABEL_13;
  }

LABEL_14:
}

- (void)scrollToSpecifier:(id)specifier
{
  v4 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] indexOfObject:specifier];
  v5 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__table];
  v6 = [(VPNSetupListController *)self indexPathForIndex:v4];
  [v5 scrollToRowAtIndexPath:v6 atScrollPosition:2 animated:1];
}

- (id)pacFile:(id)file
{
  proxyPACFile = [(VPNSetupListController *)self proxyPACFile];
  if (proxyPACFile)
  {
    proxyPACFile2 = [(VPNSetupListController *)self proxyPACFile];
  }

  else
  {
    proxyPACFile2 = &stru_411E8;
  }

  return proxyPACFile2;
}

- (void)setPacFile:(id)file specifier:(id)specifier
{
  fileCopy = file;
  proxyPACFile = [(VPNSetupListController *)self proxyPACFile];
  v6 = [fileCopy isEqualToString:proxyPACFile];

  if ((v6 & 1) == 0)
  {
    [(VPNSetupListController *)self setProxyPACFile:fileCopy];
    [(VPNSetupListController *)self setDirty:1];
    [(VPNSetupListController *)self updateDoneButton];
  }
}

- (void)setUseRSASecurID:(id)d forSpecifier:(id)specifier
{
  bOOLValue = [d BOOLValue];
  if (bOOLValue == [(VPNSetupListController *)self useRSASecurID])
  {
    return;
  }

  [(VPNSetupListController *)self setUseRSASecurID:bOOLValue];
  passwordSpecifier = [(VPNSetupListController *)self passwordSpecifier];
  v7 = [(VPNSetupListController *)self indexOfSpecifier:passwordSpecifier];

  if (![(VPNSetupListController *)self useRSASecurID]&& v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    passwordSpecifier2 = [(VPNSetupListController *)self passwordSpecifier];
    [(VPNSetupListController *)self insertSpecifier:passwordSpecifier2 afterSpecifierID:@"EAP_RSA" animated:1];
LABEL_9:

    goto LABEL_10;
  }

  if ([(VPNSetupListController *)self useRSASecurID]&& v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    passwordSpecifier2 = [(VPNSetupListController *)self passwordSpecifier];
    [(VPNSetupListController *)self removeSpecifier:passwordSpecifier2 animated:1];
    goto LABEL_9;
  }

LABEL_10:
  [(VPNSetupListController *)self setDirty:1];

  [(VPNSetupListController *)self updateDoneButton];
}

- (id)useRSASecurIDForSpecifier:(id)specifier
{
  useRSASecurID = [(VPNSetupListController *)self useRSASecurID];

  return [NSNumber numberWithBool:useRSASecurID];
}

- (void)setSendAllTraffic:(id)traffic forSpecifier:(id)specifier
{
  bOOLValue = [traffic BOOLValue];
  if (bOOLValue != [(VPNSetupListController *)self sendAllTraffic])
  {
    [(VPNSetupListController *)self setSendAllTraffic:bOOLValue];
    [(VPNSetupListController *)self setDirty:1];

    [(VPNSetupListController *)self updateDoneButton];
  }
}

- (id)sendAllTraffic:(id)traffic
{
  sendAllTraffic = [(VPNSetupListController *)self sendAllTraffic];

  return [NSNumber numberWithBool:sendAllTraffic];
}

- (void)setOnDemand:(id)demand forSpecifier:(id)specifier
{
  bOOLValue = [demand BOOLValue];
  if (bOOLValue != [(VPNSetupListController *)self onDemandEnabled])
  {
    [(VPNSetupListController *)self setOnDemandEnabled:bOOLValue];
    [(VPNSetupListController *)self setDirty:1];

    [(VPNSetupListController *)self saveButtonTapped:0];
  }
}

- (id)onDemand:(id)demand
{
  onDemandEnabled = [(VPNSetupListController *)self onDemandEnabled];

  return [NSNumber numberWithBool:onDemandEnabled];
}

- (void)setOnDemandService:(id)service forSpecifier:(id)specifier
{
  if (service)
  {
    service = [service BOOLValue];
  }

  [(VPNSetupListController *)self setOnDemandService:service, specifier];
}

- (BOOL)haveEnoughValues
{
  currentVPNType = [(VPNSetupListController *)self currentVPNType];
  dirty = [(VPNSetupListController *)self dirty];
  if (currentVPNType == 4)
  {
    if (dirty)
    {
      server = [(VPNSetupListController *)self server];
      if ([server length])
      {
        displayName = [(VPNSetupListController *)self displayName];
        if ([displayName length])
        {
          remoteIdentifier = [(VPNSetupListController *)self remoteIdentifier];
          if ([remoteIdentifier length])
          {
            account = [(VPNSetupListController *)self account];
            if ([account length])
            {
              v9 = 1;
            }

            else
            {
              sharedSecret = [(VPNSetupListController *)self sharedSecret];
              if ([sharedSecret length])
              {
                v9 = 1;
              }

              else
              {
                certificateID = [(VPNSetupListController *)self certificateID];
                v9 = certificateID != 0;
              }
            }

            goto LABEL_23;
          }

          goto LABEL_18;
        }

        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if (dirty)
  {
    server = [(VPNSetupListController *)self server];
    if ([server length])
    {
      displayName = [(VPNSetupListController *)self displayName];
      if ([displayName length])
      {
        remoteIdentifier = [(VPNSetupListController *)self account];
        if ([remoteIdentifier length])
        {
          v9 = 1;
LABEL_24:

          goto LABEL_25;
        }

        if ([(VPNSetupListController *)self usesCertificates])
        {
          account = [(VPNSetupListController *)self certificateID];
          v9 = account != 0;
LABEL_23:

          goto LABEL_24;
        }

LABEL_18:
        v9 = 0;
        goto LABEL_24;
      }

LABEL_15:
      v9 = 0;
LABEL_25:

      goto LABEL_26;
    }

LABEL_14:
    v9 = 0;
LABEL_26:

    return v9;
  }

  return 0;
}

- (BOOL)saveConfigurationSettings
{
  if ([(VPNSetupListController *)self onDemandService]&& [(VPNSetupListController *)self dirty])
  {
    v3 = +[NSMutableDictionary dictionary];
    v4 = [NSNumber numberWithUnsignedInteger:[(VPNSetupListController *)self currentVPNType]];
    [v3 setObject:v4 forKey:@"VPNType"];

    v5 = [NSNumber numberWithUnsignedInteger:[(VPNSetupListController *)self vpnGrade]];
    [v3 setObject:v5 forKey:@"VPNGrade"];

    v6 = [(VPNSetupListController *)self onDemand:0];
    v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 intValue]);

    [v3 setValue:v7 forKey:@"VPNOnDemandEnabled"];
    v8 = +[VPNConnectionStore sharedInstance];
    serviceID = [(VPNSetupListController *)self serviceID];
    v10 = [v8 connectionWithServiceID:serviceID withGrade:{-[VPNSetupListController vpnGrade](self, "vpnGrade")}];

    status = [v10 status];
    if (v10 && (status & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      [v10 disconnect];
    }

    serviceID2 = [(VPNSetupListController *)self serviceID];
    v13 = [v8 updateVPNWithServiceID:serviceID2 withOptions:v3];

    goto LABEL_74;
  }

  if (![(VPNSetupListController *)self haveEnoughValues])
  {
    return 0;
  }

  if ([(VPNSetupListController *)self dirty])
  {
    v3 = +[NSMutableDictionary dictionary];
    v14 = [NSNumber numberWithUnsignedInteger:[(VPNSetupListController *)self currentVPNType]];
    [v3 setObject:v14 forKey:@"VPNType"];

    v15 = [NSNumber numberWithUnsignedInteger:[(VPNSetupListController *)self vpnGrade]];
    [v3 setObject:v15 forKey:@"VPNGrade"];

    displayName = [(VPNSetupListController *)self displayName];
    if ([displayName length])
    {
      displayName2 = [(VPNSetupListController *)self displayName];
      [v3 setObject:displayName2 forKey:@"dispName"];
    }

    else
    {
      [v3 setObject:&stru_411E8 forKey:@"dispName"];
    }

    account = [(VPNSetupListController *)self account];
    if ([account length])
    {
      account2 = [(VPNSetupListController *)self account];
      [v3 setObject:account2 forKey:@"authorization"];
    }

    else
    {
      [v3 setObject:&stru_411E8 forKey:@"authorization"];
    }

    server = [(VPNSetupListController *)self server];
    if ([server length])
    {
      server2 = [(VPNSetupListController *)self server];
      [v3 setObject:server2 forKey:@"server"];
    }

    else
    {
      [v3 setObject:&stru_411E8 forKey:@"server"];
    }

    sharedSecret = [(VPNSetupListController *)self sharedSecret];
    if ([sharedSecret length])
    {
      sharedSecret2 = [(VPNSetupListController *)self sharedSecret];
      [v3 setObject:sharedSecret2 forKey:@"secret"];
    }

    else
    {
      [v3 setObject:&stru_411E8 forKey:@"secret"];
    }

    v24 = [(VPNSetupListController *)self useRSASecurIDForSpecifier:0];
    [v3 setValue:v24 forKey:@"securID"];

    v25 = [(VPNSetupListController *)self sendAllTraffic:0];
    [v3 setValue:v25 forKey:@"VPNSendAllTraffic"];

    v26 = [NSNumber numberWithUnsignedInteger:[(VPNSetupListController *)self encryptionType]];
    [v3 setValue:v26 forKey:@"encrypLevel"];

    v27 = [NSNumber numberWithUnsignedInteger:[(VPNSetupListController *)self eapType]];
    [v3 setValue:v27 forKey:@"eapType"];

    v28 = [NSNumber numberWithUnsignedInteger:[(VPNSetupListController *)self authType]];
    [v3 setValue:v28 forKey:@"authType"];

    groupDisplayName = [(VPNSetupListController *)self groupDisplayName];
    if ([groupDisplayName length])
    {
      groupDisplayName2 = [(VPNSetupListController *)self groupDisplayName];
      [v3 setObject:groupDisplayName2 forKey:@"group"];
    }

    else
    {
      [v3 setObject:&stru_411E8 forKey:@"group"];
    }

    password = [(VPNSetupListController *)self password];
    if ([password length])
    {
      password2 = [(VPNSetupListController *)self password];
      [v3 setObject:password2 forKey:@"password"];
    }

    else
    {
      [v3 setObject:&stru_411E8 forKey:@"password"];
    }

    localIdentifier = [(VPNSetupListController *)self localIdentifier];
    if ([localIdentifier length])
    {
      localIdentifier2 = [(VPNSetupListController *)self localIdentifier];
      [v3 setObject:localIdentifier2 forKey:@"VPNLocalIdentifier"];
    }

    else
    {
      [v3 setObject:&stru_411E8 forKey:@"VPNLocalIdentifier"];
    }

    remoteIdentifier = [(VPNSetupListController *)self remoteIdentifier];
    if ([remoteIdentifier length])
    {
      remoteIdentifier2 = [(VPNSetupListController *)self remoteIdentifier];
      [v3 setObject:remoteIdentifier2 forKey:@"VPNRemoteIdentifier"];
    }

    else
    {
      [v3 setObject:&stru_411E8 forKey:@"VPNRemoteIdentifier"];
    }

    if (![(VPNSetupListController *)self proxyType])
    {
LABEL_59:
      if ([(VPNSetupListController *)self usesCertificates])
      {
        certificateID = [(VPNSetupListController *)self certificateID];

        if (certificateID)
        {
          certificateID2 = [(VPNSetupListController *)self certificateID];
          [v3 setObject:certificateID2 forKey:@"VPNCertificate"];
        }
      }

      serviceID3 = [(VPNSetupListController *)self serviceID];

      if (serviceID3)
      {
        if (![(VPNSetupListController *)self originalVPNType]|| (v51 = [(VPNSetupListController *)self currentVPNType], v51 == [(VPNSetupListController *)self originalVPNType]))
        {
          v52 = +[VPNConnectionStore sharedInstance];
          serviceID4 = [(VPNSetupListController *)self serviceID];
          v54 = [v52 connectionWithServiceID:serviceID4 withGrade:{-[VPNSetupListController vpnGrade](self, "vpnGrade")}];

          status2 = [v54 status];
          if (v54 && (status2 & 0xFFFFFFFFFFFFFFFELL) == 2)
          {
            [v54 disconnect];
          }

          serviceID5 = [(VPNSetupListController *)self serviceID];
          v13 = [v52 updateVPNWithServiceID:serviceID5 withOptions:v3];

          goto LABEL_72;
        }

        v57 = +[VPNConnectionStore sharedInstance];
        serviceID6 = [(VPNSetupListController *)self serviceID];
        v59 = [v57 deleteVPNWithServiceID:serviceID6];

        if (!v59)
        {
          v13 = 0;
          goto LABEL_73;
        }
      }

      v52 = +[VPNConnectionStore sharedInstance];
      v13 = [v52 createVPNWithOptions:v3];
LABEL_72:

LABEL_73:
      [(VPNSetupListController *)self setOriginalVPNType:[(VPNSetupListController *)self currentVPNType]];
LABEL_74:

      return v13;
    }

    v37 = [NSNumber numberWithInteger:[(VPNSetupListController *)self proxyType]];
    [v3 setObject:v37 forKey:@"VPNProxyType"];
    if ([(VPNSetupListController *)self proxyType]== &dword_0 + 1)
    {
      proxyServer = [(VPNSetupListController *)self proxyServer];
      if ([proxyServer length])
      {
        proxyServer2 = [(VPNSetupListController *)self proxyServer];
        [v3 setObject:proxyServer2 forKey:@"VPNProxyServer"];
      }

      else
      {
        [v3 setObject:&stru_411E8 forKey:@"VPNProxyServer"];
      }

      proxyPort = [(VPNSetupListController *)self proxyPort];
      if ([proxyPort length])
      {
        proxyPort2 = [(VPNSetupListController *)self proxyPort];
        [v3 setObject:proxyPort2 forKey:@"VPNProxyPort"];
      }

      else
      {
        [v3 setObject:&stru_411E8 forKey:@"VPNProxyPort"];
      }

      if ([(VPNSetupListController *)self proxyAuthenticated])
      {
        [v3 setObject:&off_43680 forKey:@"VPNProxyAuthenticate"];
        proxyUsername = [(VPNSetupListController *)self proxyUsername];
        if ([proxyUsername length])
        {
          proxyUsername2 = [(VPNSetupListController *)self proxyUsername];
          [v3 setObject:proxyUsername2 forKey:@"VPNProxyUsername"];
        }

        else
        {
          [v3 setObject:&stru_411E8 forKey:@"VPNProxyUsername"];
        }

        proxyPassword = [(VPNSetupListController *)self proxyPassword];
        if ([proxyPassword length])
        {
          proxyPassword2 = [(VPNSetupListController *)self proxyPassword];
          v42 = off_40E10;
          goto LABEL_54;
        }

        v47 = off_40E10;
        goto LABEL_56;
      }

      [v3 setObject:&off_43698 forKey:@"VPNProxyAuthenticate"];
    }

    else if ([(VPNSetupListController *)self proxyType]== &dword_0 + 2)
    {
      proxyPassword = [(VPNSetupListController *)self proxyPACFile];
      if ([proxyPassword length])
      {
        proxyPassword2 = [(VPNSetupListController *)self proxyPACFile];
        v42 = off_40E18;
LABEL_54:
        [v3 setObject:proxyPassword2 forKey:*v42];

LABEL_57:
        goto LABEL_58;
      }

      v47 = off_40E18;
LABEL_56:
      [v3 setObject:&stru_411E8 forKey:*v47];
      goto LABEL_57;
    }

LABEL_58:

    goto LABEL_59;
  }

  return 1;
}

- (void)displayAlertWithTitle:(id)title message:(id)message cancel:(id)cancel
{
  cancelCopy = cancel;
  v10 = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:1];
  v9 = [UIAlertAction actionWithTitle:cancelCopy style:1 handler:0];

  [v10 addAction:v9];
  [(VPNSetupListController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)saveButtonTapped:(id)tapped
{
  [(VPNSetupListController *)self loseFocus];
  if ([(VPNSetupListController *)self saveConfigurationSettings])
  {
    [(VPNSetupListController *)self setDirty:0];
    [(VPNSetupListController *)self updateDoneButton];

    [(VPNSetupListController *)self reload];
  }

  else
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = [v9 localizedStringForKey:@"VPN_ERROR" value:&stru_411E8 table:@"MobileVPN"];
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"VPN_SAVE_FAILURE_GENERIC" value:&stru_411E8 table:@"MobileVPN"];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"OK" value:&stru_411E8 table:@"MobileVPN"];
    [(VPNSetupListController *)self displayAlertWithTitle:v4 message:v6 cancel:v8];
  }
}

- (void)enableButtonTapped:(id)tapped
{
  [(VPNSetupListController *)self loseFocus];
  v16 = +[VPNConnectionStore sharedInstance];
  serviceID = [(VPNSetupListController *)self serviceID];
  v5 = [v16 connectionWithServiceID:serviceID withGrade:{-[VPNSetupListController vpnGrade](self, "vpnGrade")}];

  serviceID2 = [v5 serviceID];
  v7 = [v16 isEnabledWithServiceID:serviceID2 withGrade:{-[VPNSetupListController vpnGrade](self, "vpnGrade")}];

  if ((v7 & 1) != 0 || ([v5 serviceID], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v16, "enable:serviceID:withGrade:", 1, v8, -[VPNSetupListController vpnGrade](self, "vpnGrade")), v8, (v9 & 1) == 0))
  {
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"VPN_ERROR" value:&stru_411E8 table:@"MobileVPN"];
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"VPN_SAVE_FAILURE_GENERIC" value:&stru_411E8 table:@"MobileVPN"];
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"OK" value:&stru_411E8 table:@"MobileVPN"];
    [(VPNSetupListController *)self displayAlertWithTitle:v11 message:v13 cancel:v15];
  }

  else
  {
    [(VPNSetupListController *)self setDirty:0];
    [(VPNSetupListController *)self reloadSpecifiers];
  }
}

- (void)disableButtonTapped:(id)tapped
{
  [(VPNSetupListController *)self loseFocus];
  v16 = +[VPNConnectionStore sharedInstance];
  serviceID = [(VPNSetupListController *)self serviceID];
  v5 = [v16 connectionWithServiceID:serviceID withGrade:{-[VPNSetupListController vpnGrade](self, "vpnGrade")}];

  serviceID2 = [v5 serviceID];
  v7 = [v16 isEnabledWithServiceID:serviceID2 withGrade:{-[VPNSetupListController vpnGrade](self, "vpnGrade")}];

  if (v7 && ([v5 serviceID], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v16, "enable:serviceID:withGrade:", 0, v8, -[VPNSetupListController vpnGrade](self, "vpnGrade")), v8, (v9 & 1) != 0))
  {
    [(VPNSetupListController *)self setDirty:0];
    [(VPNSetupListController *)self reloadSpecifiers];
  }

  else
  {
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"VPN_ERROR" value:&stru_411E8 table:@"MobileVPN"];
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"VPN_SAVE_FAILURE_GENERIC" value:&stru_411E8 table:@"MobileVPN"];
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"OK" value:&stru_411E8 table:@"MobileVPN"];
    [(VPNSetupListController *)self displayAlertWithTitle:v11 message:v13 cancel:v15];
  }
}

- (void)saveButtonClicked:(id)clicked
{
  serviceID = [(VPNSetupListController *)self serviceID];

  if (!serviceID)
  {
    v6 = +[VPNConnectionStore sharedInstance];
    v7 = [v6 vpnServicesForCurrentSetWithGrade:{-[VPNSetupListController vpnGrade](self, "vpnGrade")}];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      while (2)
      {
        v12 = 0;
        do
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v31 + 1) + 8 * v12);
          v14 = +[VPNConnectionStore sharedInstance];
          v15 = [v14 connectionWithServiceID:v13 withGrade:{-[VPNSetupListController vpnGrade](self, "vpnGrade")}];

          displayName = [v15 displayName];
          displayName2 = [(VPNSetupListController *)self displayName];
          v18 = [displayName2 isEqualToString:displayName];

          if (v18)
          {
            v30 = [NSBundle bundleForClass:objc_opt_class()];
            v24 = [v30 localizedStringForKey:@"VPN_ERROR" value:&stru_411E8 table:@"MobileVPN"];
            v25 = [NSBundle bundleForClass:objc_opt_class()];
            v26 = [v25 localizedStringForKey:@"VPN_SAVE_FAILURE_NAME_CONFLICT" value:&stru_411E8 table:@"MobileVPN"];
            v27 = [NSBundle bundleForClass:objc_opt_class()];
            v28 = [v27 localizedStringForKey:@"OK" value:&stru_411E8 table:@"MobileVPN"];
            [(VPNSetupListController *)self displayAlertWithTitle:v24 message:v26 cancel:v28];

            goto LABEL_18;
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }
  }

  if ([(VPNSetupListController *)self currentVPNType]== &dword_0 + 1 && ![(VPNSetupListController *)self pptpWarningAccepted])
  {
    [(VPNSetupListController *)self warnForPPTP];
  }

  else
  {
    [(VPNSetupListController *)self loseFocus];
    saveConfigurationSettings = [(VPNSetupListController *)self saveConfigurationSettings];
    [(VPNSetupListController *)self setPptpWarningAccepted:0];
    if (saveConfigurationSettings)
    {
      if ([(VPNSetupListController *)self editMode])
      {
        [(VPNSetupListController *)self leaveEditMode];
      }

      else
      {
        WeakRetained = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__parentController]);
        [WeakRetained dismiss];
      }
    }

    else
    {
      v8 = [NSBundle bundleForClass:objc_opt_class()];
      v19 = [v8 localizedStringForKey:@"VPN_ERROR" value:&stru_411E8 table:@"MobileVPN"];
      v20 = [NSBundle bundleForClass:objc_opt_class()];
      v21 = [v20 localizedStringForKey:@"VPN_SAVE_FAILURE_GENERIC" value:&stru_411E8 table:@"MobileVPN"];
      v22 = [NSBundle bundleForClass:objc_opt_class()];
      v23 = [v22 localizedStringForKey:@"OK" value:&stru_411E8 table:@"MobileVPN"];
      [(VPNSetupListController *)self displayAlertWithTitle:v19 message:v21 cancel:v23];

LABEL_18:
    }
  }
}

- (void)leaveEditMode
{
  navigationItem = [(VPNSetupListController *)self navigationItem];
  backButton = [(VPNSetupListController *)self backButton];
  [navigationItem setLeftBarButtonItem:backButton];

  v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:2 target:self action:"editButtonTapped:"];
  [navigationItem setRightBarButtonItem:v4];

  [(VPNSetupListController *)self setBackButton:0];
  [(VPNSetupListController *)self setOverviewMode:1];
  [(VPNSetupListController *)self setEditMode:0];
  [(VPNSetupListController *)self reloadSpecifiers];
}

- (void)enterEditMode
{
  navigationItem = [(VPNSetupListController *)self navigationItem];
  leftBarButtonItem = [navigationItem leftBarButtonItem];
  [(VPNSetupListController *)self setBackButton:leftBarButtonItem];

  v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"cancelButtonClicked:"];
  [navigationItem setLeftBarButtonItem:v4];

  v5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"saveButtonClicked:"];
  [navigationItem setRightBarButtonItem:v5];

  [(VPNSetupListController *)self setOverviewMode:0];
  [(VPNSetupListController *)self setEditMode:1];
  [(VPNSetupListController *)self updateDoneButton];
  [(VPNSetupListController *)self reloadSpecifiers];
}

- (BOOL)deleteConfiguration:(id)configuration
{
  v4 = +[VPNConnectionStore sharedInstance];
  serviceID = [(VPNSetupListController *)self serviceID];
  v6 = [v4 deleteVPNWithServiceID:serviceID];

  return v6;
}

- (void)deleteVPNConfiguration:(id)configuration
{
  if ([(VPNSetupListController *)self deleteConfiguration:0])
  {

    [(VPNSetupListController *)self settingsNavigationProxyPopWithAnimated:1];
  }
}

- (void)deleteConfirm:(id)confirm
{
  if ([(VPNSetupListController *)self vpnGrade]== &dword_4 + 3 || [(VPNSetupListController *)self vpnGrade]== &dword_8)
  {
    v4 = @"DELETE_RELAY?";
  }

  else
  {
    v4 = @"DELETE_VPN?";
  }

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:v4 value:&stru_411E8 table:@"MobileVPN"];

  v7 = [UIAlertController alertControllerWithTitle:v6 message:0 preferredStyle:1];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"DELETE_CONFIRMATION" value:&stru_411E8 table:@"MobileVPN"];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1F4B0;
  v14[3] = &unk_41098;
  v14[4] = self;
  v10 = [UIAlertAction actionWithTitle:v9 style:0 handler:v14];
  [v7 addAction:v10];

  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"CANCEL" value:&stru_411E8 table:@"MobileVPN"];
  v13 = [UIAlertAction actionWithTitle:v12 style:1 handler:0];
  [v7 addAction:v13];

  [(VPNSetupListController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)warnForPPTP
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PPTP_WARNING_TITLE?" value:&stru_411E8 table:@"MobileVPN"];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"PPTP_WARNING" value:&stru_411E8 table:@"MobileVPN"];
  v7 = [UIAlertController alertControllerWithTitle:v4 message:v6 preferredStyle:1];

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"PPTP_CANCEL" value:&stru_411E8 table:@"MobileVPN"];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1F760;
  v15[3] = &unk_41098;
  v15[4] = self;
  v10 = [UIAlertAction actionWithTitle:v9 style:1 handler:v15];
  [v7 addAction:v10];

  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"PPTP_SAVE" value:&stru_411E8 table:@"MobileVPN"];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1F7B0;
  v14[3] = &unk_41098;
  v14[4] = self;
  v13 = [UIAlertAction actionWithTitle:v12 style:0 handler:v14];
  [v7 addAction:v13];

  [(VPNSetupListController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)updateDoneButton
{
  if ([(VPNSetupListController *)self editMode])
  {
    haveEnoughValues = [(VPNSetupListController *)self haveEnoughValues];
    navigationItem = [(VPNSetupListController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setEnabled:haveEnoughValues];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v18.receiver = self;
  v18.super_class = VPNSetupListController;
  pathCopy = path;
  v7 = [(VPNSetupListController *)&v18 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(VPNSetupListController *)self indexForIndexPath:pathCopy, v18.receiver, v18.super_class];

  v9 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  certificateListSpecifier = [(VPNSetupListController *)self certificateListSpecifier];

  if (v9 == certificateListSpecifier)
  {
    certificateID = [(VPNSetupListController *)self certificateID];

    if (certificateID)
    {
      certificateID2 = [(VPNSetupListController *)self certificateID];
      certificateID = sub_27B2C(certificateID2);
    }

    [v7 setValue:certificateID];
  }

  connectSpecifier = [(VPNSetupListController *)self connectSpecifier];

  if (v9 == connectSpecifier)
  {
    connection = [(VPNSetupListController *)self connection];
    statusText = [connection statusText];
    detailTextLabel = [v7 detailTextLabel];
    [detailTextLabel setText:statusText];
  }

  return v7;
}

- (id)bundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

- (void)setPPTPEncryptionLevel:(id)level forSpecifier:(id)specifier
{
  unsignedIntegerValue = [level unsignedIntegerValue];
  if (unsignedIntegerValue != [(VPNSetupListController *)self encryptionType])
  {
    [(VPNSetupListController *)self setEncryptionType:unsignedIntegerValue];

    [(VPNSetupListController *)self setDirty:1];
  }
}

- (id)pptpEncryptionLevelForSpecifier:(id)specifier
{
  encryptionType = [(VPNSetupListController *)self encryptionType];

  return [NSNumber numberWithUnsignedInteger:encryptionType];
}

- (void)setEAPType:(id)type forSpecifier:(id)specifier
{
  unsignedIntegerValue = [type unsignedIntegerValue];
  if (unsignedIntegerValue != [(VPNSetupListController *)self eapType])
  {
    [(VPNSetupListController *)self setEapType:unsignedIntegerValue];
    if ([(VPNSetupListController *)self eapType])
    {
      [(VPNSetupListController *)self setAuthType:1];
    }

    [(VPNSetupListController *)self setDirty:1];

    [(VPNSetupListController *)self reloadSpecifiers];
  }
}

- (id)eapTypeForSpecifier:(id)specifier
{
  eapType = [(VPNSetupListController *)self eapType];

  return [NSNumber numberWithUnsignedInteger:eapType];
}

- (void)setAuthType:(id)type forSpecifier:(id)specifier
{
  unsignedIntegerValue = [type unsignedIntegerValue];
  if (unsignedIntegerValue != [(VPNSetupListController *)self authType])
  {
    [(VPNSetupListController *)self setAuthType:unsignedIntegerValue];
    [(VPNSetupListController *)self setDirty:1];

    [(VPNSetupListController *)self reloadSpecifiers];
  }
}

- (id)authTypeForSpecifier:(id)specifier
{
  authType = [(VPNSetupListController *)self authType];

  return [NSNumber numberWithUnsignedInteger:authType];
}

- (void)setVPNGrade:(id)grade forSpecifier:(id)specifier
{
  unsignedIntegerValue = [grade unsignedIntegerValue];
  if (unsignedIntegerValue != [(VPNSetupListController *)self vpnGrade])
  {
    [(VPNSetupListController *)self setVpnGrade:unsignedIntegerValue];

    [(VPNSetupListController *)self setDirty:1];
  }
}

- (id)vpnGradeForSpecifier:(id)specifier
{
  vpnGrade = [(VPNSetupListController *)self vpnGrade];

  return [NSNumber numberWithUnsignedInteger:vpnGrade];
}

- (id)vpnGradeNameForSpecifier:(id)specifier
{
  if (![(VPNSetupListController *)self vpnGrade]|| [(VPNSetupListController *)self vpnGrade]== &dword_0 + 1)
  {
    if (![(VPNSetupListController *)self currentVPNType])
    {
      v4 = @"L2TP";
      goto LABEL_20;
    }

    if ([(VPNSetupListController *)self currentVPNType]== &dword_0 + 1)
    {
      v4 = @"PPTP";
      goto LABEL_20;
    }

LABEL_7:
    if ([(VPNSetupListController *)self currentVPNType]== &dword_0 + 2)
    {
      v4 = @"IPsec";
      goto LABEL_20;
    }

    if ([(VPNSetupListController *)self currentVPNType]== &dword_4)
    {
      v4 = @"IKEv2";
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if ([(VPNSetupListController *)self vpnGrade]== &dword_0 + 2)
  {
    goto LABEL_7;
  }

  if ([(VPNSetupListController *)self vpnGrade]== &dword_0 + 3)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"ALWAYSON";
  }

  else
  {
    if ([(VPNSetupListController *)self vpnGrade]!= &dword_4 + 3 && [(VPNSetupListController *)self vpnGrade]!= &dword_8)
    {
LABEL_18:
      v6 = +[VPNConnectionStore sharedInstance];
      serviceID = [(VPNSetupListController *)self serviceID];
      v4 = [v6 appNameForServiceID:serviceID withGrade:{-[VPNSetupListController vpnGrade](self, "vpnGrade")}];

      goto LABEL_19;
    }

    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"RELAY";
  }

  v4 = [v5 localizedStringForKey:v7 value:&stru_411E8 table:@"MobileVPN"];
LABEL_19:

LABEL_20:

  return v4;
}

- (void)setVPNType:(__CFString *)type forSpecifier:(id)specifier
{
  specifier = [VPNConnectionStore connectionTypeFromVPNType:type, specifier];
  if (specifier != [(VPNSetupListController *)self currentVPNType])
  {
    [(VPNSetupListController *)self setCurrentVPNType:specifier];
    [(VPNSetupListController *)self loseFocus];
    [(VPNSetupListController *)self setDirty:1];

    [(VPNSetupListController *)self reloadSpecifiers];
  }
}

- (__CFString)vpnTypeForSpecifier:(id)specifier
{
  currentVPNType = [(VPNSetupListController *)self currentVPNType];

  return [VPNConnectionStore vpnTypeFromConnectionType:currentVPNType];
}

- (id)usesCertificatesForSpecifier:(id)specifier
{
  usesCertificates = [(VPNSetupListController *)self usesCertificates];

  return [NSNumber numberWithBool:usesCertificates];
}

- (void)setUsername:(id)username forSpecifier:(id)specifier
{
  usernameCopy = username;
  account = [(VPNSetupListController *)self account];
  v6 = [usernameCopy isEqualToString:account];

  if ((v6 & 1) == 0)
  {
    [(VPNSetupListController *)self setAccount:usernameCopy];
    [(VPNSetupListController *)self setDirty:1];
    [(VPNSetupListController *)self updateDoneButton];
  }
}

- (void)setDisplayName:(id)name forSpecifier:(id)specifier
{
  nameCopy = name;
  displayName = [(VPNSetupListController *)self displayName];
  v6 = [nameCopy isEqualToString:displayName];

  if ((v6 & 1) == 0)
  {
    [(VPNSetupListController *)self setDisplayName:nameCopy];
    [(VPNSetupListController *)self setDirty:1];
    [(VPNSetupListController *)self updateDoneButton];
    serviceID = [(VPNSetupListController *)self serviceID];

    if (serviceID)
    {
      [(VPNSetupListController *)self setTitle:nameCopy];
    }
  }
}

- (void)setServer:(id)server forSpecifier:(id)specifier
{
  serverCopy = server;
  server = [(VPNSetupListController *)self server];
  v6 = [serverCopy isEqualToString:server];

  if ((v6 & 1) == 0)
  {
    [(VPNSetupListController *)self setServer:serverCopy];
    [(VPNSetupListController *)self setDirty:1];
    [(VPNSetupListController *)self updateDoneButton];
  }
}

- (void)setPassword:(id)password forSpecifier:(id)specifier
{
  passwordCopy = password;
  password = [(VPNSetupListController *)self password];
  v6 = [passwordCopy isEqualToString:password];

  if ((v6 & 1) == 0)
  {
    v7 = +[NSCharacterSet whitespaceCharacterSet];
    v8 = [passwordCopy stringByTrimmingCharactersInSet:v7];

    [(VPNSetupListController *)self setPassword:v8];
    [(VPNSetupListController *)self setDirty:1];
    [(VPNSetupListController *)self updateDoneButton];
  }
}

- (void)setPasswordRequired:(id)required forSpecifier:(id)specifier
{
  -[VPNSetupListController setPasswordRequired:](self, "setPasswordRequired:", [required BOOLValue]);
  passwordRequired = [(VPNSetupListController *)self passwordRequired];
  passwordSpecifier = [(VPNSetupListController *)self passwordSpecifier];
  v7 = [NSNumber numberWithBool:passwordRequired ^ 1];
  [passwordSpecifier setProperty:v7 forKey:PSEnabledKey];

  [(VPNSetupListController *)self setDirty:1];

  [(VPNSetupListController *)self updateDoneButton];
}

- (void)setUsesCertificates:(id)certificates forSpecifier:(id)specifier
{
  bOOLValue = [certificates BOOLValue];
  if (bOOLValue != [(VPNSetupListController *)self usesCertificates])
  {
    [(VPNSetupListController *)self setUsesCertificates:bOOLValue];
    [(VPNSetupListController *)self setDirty:1];

    [(VPNSetupListController *)self reloadSpecifiers];
  }
}

- (void)setSharedSecret:(id)secret forSpecifier:(id)specifier
{
  secretCopy = secret;
  sharedSecret = [(VPNSetupListController *)self sharedSecret];
  v6 = [secretCopy isEqualToString:sharedSecret];

  if ((v6 & 1) == 0)
  {
    v7 = +[NSCharacterSet whitespaceCharacterSet];
    v8 = [secretCopy stringByTrimmingCharactersInSet:v7];

    [(VPNSetupListController *)self setSharedSecret:v8];
    [(VPNSetupListController *)self setDirty:1];
    [(VPNSetupListController *)self updateDoneButton];
  }
}

- (id)certificateObjectForSpecifier:(id)specifier
{
  certificateID = [(VPNSetupListController *)self certificateID];

  if (!certificateID)
  {
    goto LABEL_5;
  }

  certificateIDs = [(VPNSetupListController *)self certificateIDs];
  certificateID2 = [(VPNSetupListController *)self certificateID];
  v7 = [certificateIDs containsObject:certificateID2];

  if (!v7)
  {
    goto LABEL_5;
  }

  certificateIDs2 = [(VPNSetupListController *)self certificateIDs];
  certificateID3 = [(VPNSetupListController *)self certificateID];
  v10 = [certificateIDs2 indexOfObject:certificateID3];

  certificateObjects = [(VPNSetupListController *)self certificateObjects];
  v12 = [certificateObjects count];

  if (v10 < v12)
  {
    certificateObjects2 = [(VPNSetupListController *)self certificateObjects];
    v14 = [certificateObjects2 objectAtIndexedSubscript:v10];
  }

  else
  {
LABEL_5:
    v14 = 0;
  }

  return v14;
}

- (void)setCertificateObject:(id)object forSpecifier:(id)specifier
{
  objectCopy = object;
  specifierCopy = specifier;
  if (objectCopy)
  {
    certificateObjects = [(VPNSetupListController *)self certificateObjects];
    v8 = [certificateObjects containsObject:objectCopy];

    if (v8)
    {
      certificateObjects2 = [(VPNSetupListController *)self certificateObjects];
      v10 = [certificateObjects2 indexOfObject:objectCopy];

      certificateID = [(VPNSetupListController *)self certificateID];
      if (!certificateID)
      {
        goto LABEL_6;
      }

      v12 = certificateID;
      certificateIDs = [(VPNSetupListController *)self certificateIDs];
      certificateID2 = [(VPNSetupListController *)self certificateID];
      v15 = [certificateIDs containsObject:certificateID2];

      if (!v15 || (-[VPNSetupListController certificateIDs](self, "certificateIDs"), v16 = objc_claimAutoreleasedReturnValue(), -[VPNSetupListController certificateID](self, "certificateID"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v16 indexOfObject:v17], v17, v16, v10 != v18))
      {
LABEL_6:
        certificateIDs2 = [(VPNSetupListController *)self certificateIDs];
        v20 = [certificateIDs2 count];

        if (v10 < v20)
        {
          certificateIDs3 = [(VPNSetupListController *)self certificateIDs];
          v22 = [certificateIDs3 objectAtIndexedSubscript:v10];
          [(VPNSetupListController *)self setCertificateID:v22];
        }

        [(VPNSetupListController *)self setDirty:1];
        certificateID3 = [(VPNSetupListController *)self certificateID];
        v24 = [NSNumber numberWithBool:certificateID3 != 0];

        [(VPNSetupListController *)self setUsesCertificates:v24 forSpecifier:specifierCopy];
        [(VPNSetupListController *)self updateDoneButton];
        [(VPNSetupListController *)self reloadSpecifiers];
      }
    }
  }
}

- (void)setGroupDisplayName:(id)name forSpecifier:(id)specifier
{
  nameCopy = name;
  groupDisplayName = [(VPNSetupListController *)self groupDisplayName];
  v6 = [nameCopy isEqualToString:groupDisplayName];

  if ((v6 & 1) == 0)
  {
    [(VPNSetupListController *)self setGroupDisplayName:nameCopy];
    [(VPNSetupListController *)self setDirty:1];
    [(VPNSetupListController *)self updateDoneButton];
  }
}

- (void)setLocalIdentifier:(id)identifier forSpecifier:(id)specifier
{
  identifierCopy = identifier;
  localIdentifier = [(VPNSetupListController *)self localIdentifier];
  v6 = [identifierCopy isEqualToString:localIdentifier];

  if ((v6 & 1) == 0)
  {
    [(VPNSetupListController *)self setLocalIdentifier:identifierCopy];
    [(VPNSetupListController *)self setDirty:1];
    [(VPNSetupListController *)self updateDoneButton];
  }
}

- (void)setRemoteIdentifier:(id)identifier forSpecifier:(id)specifier
{
  identifierCopy = identifier;
  remoteIdentifier = [(VPNSetupListController *)self remoteIdentifier];
  v6 = [identifierCopy isEqualToString:remoteIdentifier];

  if ((v6 & 1) == 0)
  {
    [(VPNSetupListController *)self setRemoteIdentifier:identifierCopy];
    [(VPNSetupListController *)self setDirty:1];
    [(VPNSetupListController *)self updateDoneButton];
  }
}

- (void)setStateForServiceID:(id)d
{
  dCopy = d;
  v4 = [dCopy copy];
  [(VPNSetupListController *)self setServiceID:v4];

  if (!dCopy)
  {
    [(VPNSetupListController *)self setCurrentVPNType:4];
    [(VPNSetupListController *)self setEncryptionType:1];
    [(VPNSetupListController *)self setEapType:1];
    [(VPNSetupListController *)self setAuthType:1];
    [(VPNSetupListController *)self setSendAllTraffic:1];
    [(VPNSetupListController *)self setUseRSASecurID:0];
    [(VPNSetupListController *)self setOnDemandService:0];
    [(VPNSetupListController *)self setVpnGrade:0];
    goto LABEL_13;
  }

  userInfo = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v6 = [userInfo objectForKey:@"service-grade"];
  -[VPNSetupListController setVpnGrade:](self, "setVpnGrade:", [v6 unsignedIntegerValue]);

  v7 = +[VPNConnectionStore sharedInstance];
  v8 = [v7 optionsForServiceID:dCopy withGrade:{-[VPNSetupListController vpnGrade](self, "vpnGrade")}];

  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = [v8 objectForKey:@"VPNOnDemandCapable"];
  [(VPNSetupListController *)self setOnDemandService:v9 forSpecifier:0];

  if ([(VPNSetupListController *)self onDemandService])
  {
    v10 = [v8 objectForKey:@"VPNOnDemandEnabled"];
    -[VPNSetupListController setOnDemandEnabled:](self, "setOnDemandEnabled:", [v10 BOOLValue]);
  }

  v11 = [v8 objectForKey:@"VPNType"];
  -[VPNSetupListController setCurrentVPNType:](self, "setCurrentVPNType:", [v11 unsignedIntegerValue]);

  v12 = [v8 objectForKey:@"dispName"];
  [(VPNSetupListController *)self setDisplayName:v12 forSpecifier:0];

  v13 = [v8 objectForKey:@"authorization"];
  [(VPNSetupListController *)self setUsername:v13 forSpecifier:0];

  v14 = [v8 objectForKey:@"server"];
  [(VPNSetupListController *)self setServer:v14 forSpecifier:0];

  v15 = [v8 objectForKey:@"secret"];
  [(VPNSetupListController *)self setSharedSecret:v15 forSpecifier:0];

  v16 = [v8 objectForKey:@"VPNCertificate"];
  [(VPNSetupListController *)self setCertificateID:v16];

  certificateID = [(VPNSetupListController *)self certificateID];
  v18 = [NSNumber numberWithBool:certificateID != 0];
  [(VPNSetupListController *)self setUsesCertificates:v18 forSpecifier:0];

  v19 = [v8 objectForKey:@"securID"];
  [(VPNSetupListController *)self setUseRSASecurID:v19 forSpecifier:0];

  v20 = [v8 objectForKey:@"VPNSendAllTraffic"];
  [(VPNSetupListController *)self setSendAllTraffic:v20 forSpecifier:0];

  v21 = [v8 objectForKey:@"encrypLevel"];
  [(VPNSetupListController *)self setPPTPEncryptionLevel:v21 forSpecifier:0];

  v22 = [v8 objectForKey:@"eapType"];
  [(VPNSetupListController *)self setEAPType:v22 forSpecifier:0];

  v23 = [v8 objectForKey:@"authType"];
  [(VPNSetupListController *)self setAuthType:v23 forSpecifier:0];

  v24 = [v8 objectForKey:@"group"];
  [(VPNSetupListController *)self setGroupDisplayName:v24 forSpecifier:0];

  v25 = [v8 objectForKey:@"password"];
  [(VPNSetupListController *)self setPassword:v25 forSpecifier:0];

  v26 = [v8 objectForKey:@"VPNPasswordRequired"];
  [(VPNSetupListController *)self setPasswordRequired:v26 forSpecifier:0];

  v27 = [v8 objectForKey:@"VPNLocalIdentifier"];
  [(VPNSetupListController *)self setLocalIdentifier:v27 forSpecifier:0];

  v28 = [v8 objectForKey:@"VPNRemoteIdentifier"];
  [(VPNSetupListController *)self setRemoteIdentifier:v28 forSpecifier:0];

  v29 = [v8 objectForKey:@"VPNProxyType"];
  [(VPNSetupListController *)self setProxyType:v29 specifier:0];

  if ([(VPNSetupListController *)self proxyType]== &dword_0 + 1)
  {
    v30 = [v8 objectForKey:@"VPNProxyServer"];
    [(VPNSetupListController *)self setProxyServer:v30 specifier:0];

    v31 = [v8 objectForKey:@"VPNProxyPort"];
    [(VPNSetupListController *)self setProxyServerPort:v31 specifier:0];

    v32 = [v8 objectForKey:@"VPNProxyAuthenticate"];
    [(VPNSetupListController *)self setProxyUsesAuthentication:v32 specifier:0];

    if ([(VPNSetupListController *)self proxyAuthenticated])
    {
      v33 = [v8 objectForKey:@"VPNProxyUsername"];
      [(VPNSetupListController *)self setProxyUsername:v33 specifier:0];

      v34 = [v8 objectForKey:@"VPNProxyPassword"];
      [(VPNSetupListController *)self setProxyPassword:v34 specifier:0];
LABEL_11:
    }
  }

  else if ([(VPNSetupListController *)self proxyType]== &dword_0 + 2)
  {
    v34 = [v8 objectForKey:@"VPNProxyPacFile"];
    [(VPNSetupListController *)self setPacFile:v34 specifier:0];
    goto LABEL_11;
  }

  v35 = [v8 objectForKey:@"VPNAlwaysPrompt"];
  -[VPNSetupListController setAlwaysPrompt:](self, "setAlwaysPrompt:", [v35 BOOLValue]);

  v36 = [v8 objectForKey:@"VPNApplicationName"];
  [(VPNSetupListController *)self setAppName:v36];

  v37 = [v8 objectForKeyedSubscript:@"VPNIncludedBundleIDs"];
  [(VPNSetupListController *)self setIncludedBundleIDs:v37];

  v38 = [v8 objectForKeyedSubscript:@"VPNMatchDomains"];
  [(VPNSetupListController *)self setMatchDomains:v38];

  v39 = [v8 objectForKeyedSubscript:@"VPNExcludeDomains"];
  [(VPNSetupListController *)self setExcludeDomains:v39];

  v40 = [v8 objectForKeyedSubscript:@"VPNMatchFQDNs"];
  [(VPNSetupListController *)self setMatchFQDNs:v40];

  v41 = [v8 objectForKeyedSubscript:@"VPNExcludeFQDNs"];
  [(VPNSetupListController *)self setExcludeFQDNs:v41];

  [(VPNSetupListController *)self setDirty:0];
  [(VPNSetupListController *)self setOriginalVPNType:[(VPNSetupListController *)self currentVPNType]];

LABEL_13:
}

- (void)cancelButtonClicked:(id)clicked
{
  if ([(VPNSetupListController *)self editMode])
  {
    serviceID = [(VPNSetupListController *)self serviceID];
    [(VPNSetupListController *)self setStateForServiceID:serviceID];

    [(VPNSetupListController *)self leaveEditMode];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__parentController]);
    [WeakRetained dismiss];
  }
}

- (void)loadView
{
  v3 = OBJC_IVAR___PSViewController__specifier;
  userInfo = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"overview-mode"];
  -[VPNSetupListController setOverviewMode:](self, "setOverviewMode:", [v5 BOOLValue]);

  v11.receiver = self;
  v11.super_class = VPNSetupListController;
  [(VPNSetupListController *)&v11 loadView];
  userInfo2 = [*&self->PSListController_opaque[v3] userInfo];
  v7 = [userInfo2 objectForKey:@"vpn-service-id"];
  [(VPNSetupListController *)self setStateForServiceID:v7];

  if (![(VPNSetupListController *)self overviewMode])
  {
    navigationItem = [(VPNSetupListController *)self navigationItem];
    v9 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"cancelButtonClicked:"];
    [navigationItem setLeftBarButtonItem:v9];

    v10 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"saveButtonClicked:"];
    [navigationItem setRightBarButtonItem:v10];

    [(VPNSetupListController *)self updateDoneButton];
  }
}

- (id)connection
{
  v3 = +[VPNConnectionStore sharedInstance];
  serviceID = [(VPNSetupListController *)self serviceID];
  v5 = [v3 connectionWithServiceID:serviceID withGrade:{-[VPNSetupListController vpnGrade](self, "vpnGrade")}];

  return v5;
}

- (id)statusForConnection:(id)connection
{
  connection = [(VPNSetupListController *)self connection];
  v4 = connection;
  if (connection)
  {
    statusText = [connection statusText];
  }

  else
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    statusText = [v6 localizedStringForKey:@"NOT_CONFIGURED" value:&stru_411E8 table:@"MobileVPN"];
  }

  return statusText;
}

- (id)interfaceTypeForConnection:(id)connection
{
  v4 = [connection propertyForKey:@"VPNSubConnectionIndex"];
  if (v4)
  {
    connection = [(VPNSetupListController *)self connection];
    v6 = [connection interfaceTypeForSubConnection:{objc_msgSend(v4, "unsignedIntegerValue")}];
  }

  else
  {
    v6 = &stru_411E8;
  }

  return v6;
}

- (id)serverForConnection:(id)connection
{
  connection = [(VPNSetupListController *)self connection];
  server = [connection server];

  return server;
}

- (id)usernameForConnection:(id)connection
{
  connection = [(VPNSetupListController *)self connection];
  accountName = [connection accountName];

  return accountName;
}

- (id)typeForConnection:(id)connection
{
  connection = [(VPNSetupListController *)self connection];
  vpnTypeLocalizedString = [connection vpnTypeLocalizedString];

  return vpnTypeLocalizedString;
}

- (id)localIPForSpecifier:(id)specifier
{
  v4 = [specifier propertyForKey:@"VPNSubConnectionIndex"];
  connection = [(VPNSetupListController *)self connection];
  v6 = connection;
  if (v4)
  {
    [connection ipAddressesForSubConnection:{objc_msgSend(v4, "unsignedIntegerValue")}];
  }

  else
  {
    [connection ipAddresses];
  }
  v7 = ;

  if ([v7 count])
  {
    v8 = [v7 objectAtIndexedSubscript:0];
  }

  else
  {
    v8 = &stru_411E8;
  }

  return v8;
}

- (id)localIP2ForSpecifier:(id)specifier
{
  v4 = [specifier propertyForKey:@"VPNSubConnectionIndex"];
  connection = [(VPNSetupListController *)self connection];
  v6 = connection;
  if (v4)
  {
    [connection ipAddressesForSubConnection:{objc_msgSend(v4, "unsignedIntegerValue")}];
  }

  else
  {
    [connection ipAddresses];
  }
  v7 = ;

  if ([v7 count] < 2)
  {
    v8 = &stru_411E8;
  }

  else
  {
    v8 = [v7 objectAtIndexedSubscript:1];
  }

  return v8;
}

- (id)remoteIPForSpecifier:(id)specifier
{
  v4 = [specifier propertyForKey:@"VPNSubConnectionIndex"];
  connection = [(VPNSetupListController *)self connection];
  v6 = connection;
  if (v4)
  {
    remoteAddress2 = [connection remoteAddressForSubConnection:{objc_msgSend(v4, "unsignedIntegerValue")}];
  }

  else
  {
    remoteAddress = [connection remoteAddress];

    connection2 = [(VPNSetupListController *)self connection];
    server = [connection2 server];
    v11 = [remoteAddress isEqualToString:server];

    if (v11)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_21A74;
      block[3] = &unk_40B38;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }

    connection3 = [(VPNSetupListController *)self connection];
    remoteAddress2 = [connection3 remoteAddress];
  }

  return remoteAddress2;
}

- (id)timeConnectedForSpecifier:(id)specifier
{
  v4 = [specifier propertyForKey:@"VPNSubConnectionIndex"];
  connection = [(VPNSetupListController *)self connection];
  v6 = connection;
  if (v4)
  {
    [connection elapsedTimeLocalizedStringForSubConnection:{objc_msgSend(v4, "unsignedIntegerValue")}];
  }

  else
  {
    [connection elapsedTimeLocalizedString];
  }
  v7 = ;

  return v7;
}

- (id)tunnelType:(id)type
{
  connection = [(VPNSetupListController *)self connection];
  tunnelType = [connection tunnelType];

  return tunnelType;
}

- (id)getDescriptionForApp:(id)app
{
  v3 = [app propertyForKey:@"AppDescription"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_411E8;
  }

  return v5;
}

- (void)setConnectionState:(id)state forSpecifier:(id)specifier
{
  stateCopy = state;
  connection = [(VPNSetupListController *)self connection];
  if (connection)
  {
    if ([stateCopy BOOLValue])
    {
      [connection connect];
    }

    else
    {
      [connection disconnect];
    }
  }
}

- (id)getConnectionStateForSpecifier:(id)specifier
{
  connection = [(VPNSetupListController *)self connection];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [connection notDisconnectedOrDisconnecting]);

  return v4;
}

- (id)specifiers
{
  selfCopy = self;
  v3 = OBJC_IVAR___PSViewController__specifier;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier];
  if (!v4)
  {
    [(VPNSetupListController *)selfCopy settingsNavigationProxyPopWithAnimated:1];
    v23 = 0;
    goto LABEL_251;
  }

  userInfo = [v4 userInfo];
  v6 = &selRef_setImageHidden_;
  v7 = +[VPNConnectionStore sharedInstance];
  v8 = sub_2791C();
  [(VPNSetupListController *)selfCopy setCertificateIDs:v8];

  v9 = sub_27A24();
  [(VPNSetupListController *)selfCopy setCertificateObjects:v9];

  v10 = &MGGetBoolAnswer_ptr;
  v11 = [(VPNSetupListController *)selfCopy loadSpecifiersFromPlistName:@"VPN" target:selfCopy];
  v424 = [NSMutableArray arrayWithArray:v11];

  v420 = v7;
  if ([(VPNSetupListController *)selfCopy overviewMode])
  {
    name = [*&selfCopy->PSListController_opaque[v3] name];
    [(VPNSetupListController *)selfCopy setTitle:name];

    v13 = [userInfo objectForKeyedSubscript:?];
    v14 = [v7 connectionWithServiceID:v13 withGrade:{-[VPNSetupListController vpnGrade](selfCopy, "vpnGrade")}];

    v15 = objc_alloc_init(NSMutableArray);
    v436 = selfCopy;
    v422 = v14;
    v423 = v15;
    v418 = userInfo;
    if ([v14 grade] == &dword_4 + 3 || objc_msgSend(v14, "grade") == &dword_8)
    {
      server = [v14 server];
      v17 = [server length];

      if (v17)
      {
        v18 = [NSBundle bundleForClass:objc_opt_class()];
        v19 = [v18 localizedStringForKey:@"SERVER" value:&stru_411E8 table:@"MobileVPN"];
        v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:selfCopy set:0 get:"serverForConnection:" detail:0 cell:4 edit:0];
        [(VPNSetupListController *)selfCopy setServerSpecifier:v20];

        serverSpecifier = [(VPNSetupListController *)selfCopy serverSpecifier];
        [v15 addObject:serverSpecifier];
      }

      matchDomains = [(VPNSetupListController *)selfCopy matchDomains];
      if ([matchDomains count])
      {
      }

      else
      {
        matchFQDNs = [(VPNSetupListController *)selfCopy matchFQDNs];
        v58 = [matchFQDNs count];

        if (!v58)
        {
          v433 = 0;
LABEL_21:
          matchDomains2 = [(VPNSetupListController *)selfCopy matchDomains];
          v64 = [matchDomains2 count];

          if (v64)
          {
            v460 = 0u;
            v461 = 0u;
            v458 = 0u;
            v459 = 0u;
            matchDomains3 = [(VPNSetupListController *)selfCopy matchDomains];
            v66 = [matchDomains3 countByEnumeratingWithState:&v458 objects:v472 count:16];
            if (v66)
            {
              v67 = v66;
              v68 = *v459;
              do
              {
                for (i = 0; i != v67; i = i + 1)
                {
                  if (*v459 != v68)
                  {
                    objc_enumerationMutation(matchDomains3);
                  }

                  v70 = *(*(&v458 + 1) + 8 * i);
                  if ([v70 length])
                  {
                    v71 = [v70 characterAtIndex:{objc_msgSend(v70, "length") - 1}] - 48 < 0xA;
                  }

                  else
                  {
                    v71 = 0;
                  }

                  if (([v70 hasPrefix:@"*."] & 1) != 0 || v71)
                  {
                    v72 = v70;
                  }

                  else
                  {
                    v72 = [@"*." stringByAppendingString:v70];
                  }

                  v73 = [PSSpecifier preferenceSpecifierNamed:v72 target:selfCopy set:0 get:0 detail:0 cell:4 edit:0];
                  [v433 addObject:v73];
                }

                v67 = [matchDomains3 countByEnumeratingWithState:&v458 objects:v472 count:16];
              }

              while (v67);
            }

            v6 = &selRef_setImageHidden_;
            v10 = &MGGetBoolAnswer_ptr;
          }

          matchFQDNs2 = [(VPNSetupListController *)selfCopy matchFQDNs];
          v75 = [matchFQDNs2 count];

          if (v75)
          {
            v456 = 0u;
            v457 = 0u;
            v454 = 0u;
            v455 = 0u;
            matchFQDNs3 = [(VPNSetupListController *)selfCopy matchFQDNs];
            v77 = [matchFQDNs3 countByEnumeratingWithState:&v454 objects:v471 count:16];
            if (v77)
            {
              v78 = v77;
              v79 = *v455;
              do
              {
                for (j = 0; j != v78; j = j + 1)
                {
                  if (*v455 != v79)
                  {
                    objc_enumerationMutation(matchFQDNs3);
                  }

                  v81 = [PSSpecifier preferenceSpecifierNamed:*(*(&v454 + 1) + 8 * j) target:selfCopy set:0 get:0 detail:0 cell:4 edit:0];
                  [v433 addObject:v81];
                }

                v78 = [matchFQDNs3 countByEnumeratingWithState:&v454 objects:v471 count:16];
              }

              while (v78);
            }

            v10 = &MGGetBoolAnswer_ptr;
          }

          excludeDomains = [(VPNSetupListController *)selfCopy excludeDomains];
          if ([excludeDomains count])
          {
          }

          else
          {
            excludeFQDNs = [(VPNSetupListController *)selfCopy excludeFQDNs];
            v84 = [excludeFQDNs count];

            if (!v84)
            {
              v434 = 0;
              goto LABEL_50;
            }
          }

          v85 = objc_alloc_init(v10[241]);
          v86 = [NSBundle bundleForClass:objc_opt_class()];
          v87 = [v86 localizedStringForKey:@"EXCLUDED_DOMAINS" value:&stru_411E8 table:@"MobileVPN"];
          v88 = [PSSpecifier groupSpecifierWithName:v87];

          v434 = v85;
          [v85 addObject:v88];

LABEL_50:
          excludeDomains2 = [(VPNSetupListController *)selfCopy excludeDomains];
          v90 = [excludeDomains2 count];

          if (v90)
          {
            v452 = 0u;
            v453 = 0u;
            v450 = 0u;
            v451 = 0u;
            excludeDomains3 = [(VPNSetupListController *)selfCopy excludeDomains];
            v92 = [excludeDomains3 countByEnumeratingWithState:&v450 objects:v470 count:16];
            if (v92)
            {
              v93 = v92;
              v94 = *v451;
              do
              {
                for (k = 0; k != v93; k = k + 1)
                {
                  if (*v451 != v94)
                  {
                    objc_enumerationMutation(excludeDomains3);
                  }

                  v96 = *(*(&v450 + 1) + 8 * k);
                  if ([v96 length])
                  {
                    v97 = [v96 characterAtIndex:{objc_msgSend(v96, "length") - 1}] - 48 < 0xA;
                  }

                  else
                  {
                    v97 = 0;
                  }

                  if (([v96 hasPrefix:@"*."] & 1) != 0 || v97)
                  {
                    v98 = v96;
                  }

                  else
                  {
                    v98 = [@"*." stringByAppendingString:v96];
                  }

                  v99 = [PSSpecifier preferenceSpecifierNamed:v98 target:selfCopy set:0 get:0 detail:0 cell:4 edit:0];
                  [v434 addObject:v99];
                }

                v93 = [excludeDomains3 countByEnumeratingWithState:&v450 objects:v470 count:16];
              }

              while (v93);
            }

            v6 = &selRef_setImageHidden_;
            v10 = &MGGetBoolAnswer_ptr;
          }

          excludeFQDNs2 = [(VPNSetupListController *)selfCopy excludeFQDNs];
          v101 = [excludeFQDNs2 count];

          if (v101)
          {
            v448 = 0u;
            v449 = 0u;
            v446 = 0u;
            v447 = 0u;
            excludeFQDNs3 = [(VPNSetupListController *)selfCopy excludeFQDNs];
            v103 = [excludeFQDNs3 countByEnumeratingWithState:&v446 objects:v469 count:16];
            if (v103)
            {
              v104 = v103;
              v105 = *v447;
              do
              {
                for (m = 0; m != v104; m = m + 1)
                {
                  if (*v447 != v105)
                  {
                    objc_enumerationMutation(excludeFQDNs3);
                  }

                  v107 = [PSSpecifier preferenceSpecifierNamed:*(*(&v446 + 1) + 8 * m) target:selfCopy set:0 get:0 detail:0 cell:4 edit:0];
                  [v434 addObject:v107];
                }

                v104 = [excludeFQDNs3 countByEnumeratingWithState:&v446 objects:v469 count:16];
              }

              while (v104);
            }

            v421 = 0;
            goto LABEL_75;
          }

          v421 = 0;
LABEL_135:
          v250 = objc_alloc_init(v10[241]);
          v419 = +[PSSpecifier emptyGroupSpecifier];
          [v250 addObject:?];
          v251 = [v424 specifierForID:@"VPN_GRADE"];
          [v250 addObject:v251];

          if (v15)
          {
            [v250 addObjectsFromArray:v15];
          }

          appName = [(VPNSetupListController *)selfCopy appName];
          if ([appName length])
          {
            v253 = v422;
          }

          else
          {
            v253 = v422;
            if ([(VPNSetupListController *)selfCopy vpnGrade]== &dword_0 + 2)
            {
              currentVPNType = [(VPNSetupListController *)selfCopy currentVPNType];

              if (currentVPNType == &dword_0 + 3 || !v422)
              {
LABEL_144:
                appName2 = [(VPNSetupListController *)selfCopy appName];
                v260 = [appName2 length];

                v429 = v250;
                if (v260)
                {
                  v261 = [NSBundle bundleForClass:objc_opt_class()];
                  v262 = [v261 localizedStringForKey:@"APP_CONFIG_MESSAGE" value:&stru_411E8 table:@"MobileVPN"];
                  displayName = [(VPNSetupListController *)selfCopy displayName];
                  appName3 = [(VPNSetupListController *)selfCopy appName];
                  v264 = [NSString stringWithFormat:v262, displayName, appName3];

                  [v419 setProperty:v264 forKey:PSFooterTextGroupKey];
                }

                if ([(VPNSetupListController *)selfCopy onDemandService])
                {
                  v266 = +[PSSpecifier emptyGroupSpecifier];
                  [v250 addObject:v266];

                  v267 = [v424 specifierForID:@"ON_DEMAND"];
                  v464 = PSEnabledKey;
                  v268 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v253 onDemandUserOverrideDisabled] ^ 1);
                  v465 = v268;
                  v269 = [NSDictionary dictionaryWithObjects:&v465 forKeys:&v464 count:1];
                  [v267 setProperties:v269];

                  [v250 addObject:v267];
                }

                if ([v433 count])
                {
                  [v250 addObjectsFromArray:v433];
                }

                if ([v434 count])
                {
                  [v250 addObjectsFromArray:v434];
                }

                v270 = [userInfo objectForKeyedSubscript:@"vpn-service-id"];
                v271 = [v270 copy];
                [(VPNSetupListController *)selfCopy setServiceID:v271];

                v272 = [userInfo objectForKeyedSubscript:@"vpn-user-created"];
                -[VPNSetupListController setUserCreated:](selfCopy, "setUserCreated:", [v272 BOOLValue]);

                v273 = [userInfo objectForKeyedSubscript:@"vpn-profile-backed"];
                -[VPNSetupListController setProfileBacked:](selfCopy, "setProfileBacked:", [v273 BOOLValue]);

                sharedInstance = [v6 + 241 sharedInstance];
                serviceID = [(VPNSetupListController *)selfCopy serviceID];
                v276 = [sharedInstance isEnabledWithServiceID:serviceID withGrade:{-[VPNSetupListController vpnGrade](selfCopy, "vpnGrade")}];

                sharedInstance2 = [v6 + 241 sharedInstance];
                serviceID2 = [(VPNSetupListController *)selfCopy serviceID];
                v279 = [sharedInstance2 uiToggleAllowedWithServiceID:serviceID2 withGrade:{-[VPNSetupListController vpnGrade](selfCopy, "vpnGrade")}];

                vpnGrade = [(VPNSetupListController *)selfCopy vpnGrade];
                if (v276)
                {
                  if (vpnGrade == &dword_8)
                  {
                    v24 = v250;
                    if (!v279)
                    {
                      goto LABEL_164;
                    }

                    goto LABEL_159;
                  }

                  v24 = v250;
                  if ((([(VPNSetupListController *)selfCopy vpnGrade]== &dword_4 + 3) & v279) != 0)
                  {
LABEL_159:
                    v281 = &selRef_disableButtonTapped_;
                    v282 = @"DEACTIVATE_CONFIGURATION";
                    goto LABEL_163;
                  }
                }

                else
                {
                  if (vpnGrade == (&dword_0 + 2))
                  {
                    v281 = &selRef_enableButtonTapped_;
                    v282 = @"ACTIVATE_CONFIGURATION";
                    v24 = v429;
LABEL_163:
                    v283 = +[PSSpecifier emptyGroupSpecifier];
                    [v24 addObject:v283];

                    v284 = [NSBundle bundleForClass:objc_opt_class()];
                    v285 = [v284 localizedStringForKey:v282 value:&stru_411E8 table:@"MobileVPN"];
                    v286 = [PSSpecifier preferenceSpecifierNamed:v285 target:selfCopy set:0 get:0 detail:0 cell:13 edit:0];
                    [(VPNSetupListController *)selfCopy setEnableButton:v286];

                    v287 = *v281;
                    enableButton = [(VPNSetupListController *)selfCopy enableButton];
                    [enableButton setButtonAction:v287];

                    enableButton2 = [(VPNSetupListController *)selfCopy enableButton];
                    [v24 addObject:enableButton2];

                    goto LABEL_164;
                  }

                  v24 = v250;
                  if ([(VPNSetupListController *)selfCopy vpnGrade]== &dword_8 || [(VPNSetupListController *)selfCopy vpnGrade]== &dword_4 + 3)
                  {
                    v281 = &selRef_enableButtonTapped_;
                    v282 = @"ACTIVATE_CONFIGURATION";
                    goto LABEL_163;
                  }
                }

LABEL_164:
                if ([(VPNSetupListController *)selfCopy userCreated])
                {
                  serviceID3 = [(VPNSetupListController *)selfCopy serviceID];
                  v291 = serviceID3 != 0;
                }

                else
                {
                  v291 = 0;
                }

                if ([(VPNSetupListController *)selfCopy onDemandService])
                {
                  v292 = 0;
LABEL_178:
                  if (v291 || v292)
                  {
                    [(VPNSetupListController *)selfCopy setPasswordEditOnly:!v291];
                    v297 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:2 target:selfCopy action:"editButtonTapped:"];
                    navigationItem = [(VPNSetupListController *)selfCopy navigationItem];
                    [navigationItem setRightBarButtonItem:v297];
                  }

                  v300 = v422;
                  v299 = v423;
                  if (![(VPNSetupListController *)selfCopy profileBacked])
                  {
                    v301 = +[PSSpecifier emptyGroupSpecifier];
                    [v24 addObject:v301];

                    lastObject = [v24 lastObject];
                    [lastObject setProperty:@"SPACER_GROUP" forKey:PSIDKey];

                    if ([v422 grade] == &dword_4 + 3 || objc_msgSend(v422, "grade") == &dword_8)
                    {
                      v303 = @"DELETE_RELAY";
                    }

                    else
                    {
                      v303 = @"DELETE_VPN";
                    }

                    v307 = [NSBundle bundleForClass:objc_opt_class()];
                    v308 = [v307 localizedStringForKey:v303 value:&stru_411E8 table:@"MobileVPN"];

                    v309 = [PSSpecifier deleteButtonSpecifierWithName:v308 target:selfCopy action:"deleteConfirm:"];
                    [v24 addObject:v309];
                  }

                  sharedInstance3 = [v6 + 241 sharedInstance];
                  serviceID4 = [(VPNSetupListController *)selfCopy serviceID];
                  v312 = [sharedInstance3 getProfileIDForServiceID:serviceID4];

                  if (v312)
                  {
                    lastStopCause = [v422 lastStopCause];
                    if (([lastStopCause intValue] == 13 || objc_msgSend(lastStopCause, "intValue") == 20 || objc_msgSend(lastStopCause, "intValue") == 21 || objc_msgSend(lastStopCause, "intValue") == 24) && -[VPNSetupListController vpnGrade](selfCopy, "vpnGrade") != &dword_4 + 3 && -[VPNSetupListController vpnGrade](selfCopy, "vpnGrade") != &dword_8)
                    {
                      v314 = +[PSSpecifier emptyGroupSpecifier];
                      [v24 addObject:v314];

                      v315 = [NSBundle bundleForClass:objc_opt_class()];
                      v316 = [v315 localizedStringForKey:@"RENEW_CERTIFICATE" value:&stru_411E8 table:@"MobileVPN"];
                      v317 = [PSSpecifier preferenceSpecifierNamed:v316 target:selfCopy set:0 get:0 detail:0 cell:13 edit:0];

                      v24 = v429;
                      [v317 setButtonAction:"renewCertificate:"];
                      [v429 addObject:v317];
                    }
                  }

                  includedBundleIDs = [(VPNSetupListController *)selfCopy includedBundleIDs];
                  if (includedBundleIDs)
                  {
                    v319 = includedBundleIDs;
                    includedBundleIDs2 = [(VPNSetupListController *)selfCopy includedBundleIDs];
                    v321 = [includedBundleIDs2 count];

                    if (v321)
                    {
                      v322 = [NSBundle bundleForClass:objc_opt_class()];
                      v323 = [v322 localizedStringForKey:@"INCLUDED_APPS_TITLE" value:&stru_411E8 table:@"MobileVPN"];
                      v324 = [PSSpecifier groupSpecifierWithName:v323];
                      [v24 addObject:v324];

                      v440 = 0u;
                      v441 = 0u;
                      v438 = 0u;
                      v439 = 0u;
                      obj = [(VPNSetupListController *)selfCopy includedBundleIDs];
                      v325 = [obj countByEnumeratingWithState:&v438 objects:v463 count:16];
                      if (v325)
                      {
                        v326 = v325;
                        v327 = *v439;
                        v428 = PSIDKey;
                        v426 = PSLazyIconLoading;
                        v427 = PSLazyIconAppID;
                        v425 = PSIconImageKey;
                        do
                        {
                          v328 = 0;
                          v431 = v326;
                          do
                          {
                            if (*v439 != v327)
                            {
                              objc_enumerationMutation(obj);
                            }

                            v329 = *(*(&v438 + 1) + 8 * v328);
                            v330 = [LSApplicationRecord alloc];
                            v437 = 0;
                            v331 = [v330 initWithBundleIdentifier:v329 allowPlaceholder:0 error:&v437];
                            v332 = v437;
                            localizedName = [v331 localizedName];

                            if (localizedName)
                            {
                              v334 = v332 == 0;
                            }

                            else
                            {
                              v334 = 0;
                            }

                            if (v334)
                            {
                              v335 = [PSSpecifier preferenceSpecifierNamed:localizedName target:v436 set:0 get:"getDescriptionForApp:" detail:0 cell:4 edit:0];
                              includedBundleIDs3 = [(VPNSetupListController *)v436 includedBundleIDs];
                              v337 = [includedBundleIDs3 objectForKeyedSubscript:v329];
                              [v335 setProperty:v337 forKey:@"AppDescription"];

                              [v335 setProperty:v329 forKey:v428];
                              if ([UIWebClip bundleIdentifierContainsWebClipIdentifier:v329])
                              {
                                v338 = [UIWebClip webClipIdentifierFromBundleIdentifier:v329];
                                v339 = [UIWebClip webClipWithIdentifier:v338];
                                v340 = +[UIScreen mainScreen];
                                [v340 scale];
                                v341 = [v339 generateIconImageForFormat:0 scale:?];

                                if (v341)
                                {
                                  [v335 setProperty:v341 forKey:v425];
                                }
                              }

                              else
                              {
                                [v335 setProperty:v329 forKey:v427];
                                v338 = [NSNumber numberWithBool:1];
                                [v335 setProperty:v338 forKey:v426];
                              }

                              v326 = v431;

                              [v429 addObject:v335];
                            }

                            v328 = v328 + 1;
                          }

                          while (v326 != v328);
                          v326 = [obj countByEnumeratingWithState:&v438 objects:v463 count:16];
                        }

                        while (v326);
                      }

                      userInfo = v418;
                      selfCopy = v436;
                      v300 = v422;
                      v299 = v423;
                      v24 = v429;
                    }
                  }

                  v342 = OBJC_IVAR___PSListController__specifiers;
                  objc_storeStrong(&selfCopy->PSListController_opaque[OBJC_IVAR___PSListController__specifiers], v24);
                  v23 = *&selfCopy->PSListController_opaque[v342];

                  v343 = v433;
                  v344 = v434;
                  v345 = v421;
                  goto LABEL_250;
                }

                sharedInstance4 = [v6 + 241 sharedInstance];
                serviceID5 = [(VPNSetupListController *)selfCopy serviceID];
                v295 = [sharedInstance4 getProfileIDForServiceID:serviceID5];
                if (!v295)
                {
                  v292 = 0;
                  goto LABEL_177;
                }

                appName4 = [(VPNSetupListController *)selfCopy appName];
                if ([appName4 length] || -[VPNSetupListController currentVPNType](selfCopy, "currentVPNType") == &dword_0 + 3 || -[VPNSetupListController vpnGrade](selfCopy, "vpnGrade") || -[VPNSetupListController alwaysPrompt](selfCopy, "alwaysPrompt"))
                {
                  goto LABEL_174;
                }

                if ([(VPNSetupListController *)selfCopy currentVPNType]!= &dword_4)
                {
                  v292 = 1;
                  goto LABEL_175;
                }

                if ([(VPNSetupListController *)selfCopy eapType]!= &dword_0 + 1)
                {
LABEL_174:
                  v292 = 0;
                }

                else
                {
                  accountName = [v253 accountName];
                  v292 = [accountName length] != 0;
                }

LABEL_175:

LABEL_177:
                v24 = v429;
                goto LABEL_178;
              }

              v255 = [NSBundle bundleForClass:objc_opt_class()];
              appName = [v255 localizedStringForKey:@"STATUS" value:&stru_411E8 table:@"MobileVPN"];

              v256 = [PSSpecifier preferenceSpecifierNamed:appName target:selfCopy set:"setConnectionState:forSpecifier:" get:"getConnectionStateForSpecifier:" detail:0 cell:6 edit:0];
              v466 = PSCellClassKey;
              v467 = objc_opt_class();
              v257 = [NSDictionary dictionaryWithObjects:&v467 forKeys:&v466 count:1];
              [v256 setProperties:v257];

              [(VPNSetupListController *)selfCopy setConnectSpecifier:v256];
              connectSpecifier = [(VPNSetupListController *)selfCopy connectSpecifier];
              [v250 addObject:connectSpecifier];
            }
          }

          goto LABEL_144;
        }
      }

      v59 = objc_alloc_init(NSMutableArray);
      v60 = [NSBundle bundleForClass:objc_opt_class()];
      v61 = [v60 localizedStringForKey:@"MATCH_DOMAINS" value:&stru_411E8 table:@"MobileVPN"];
      v62 = [PSSpecifier groupSpecifierWithName:v61];

      v433 = v59;
      [v59 addObject:v62];

      goto LABEL_21;
    }

    connected = [v14 connected];
    vpnGrade2 = [(VPNSetupListController *)selfCopy vpnGrade];
    if (connected)
    {
      if (vpnGrade2 != &dword_0 + 3)
      {
        server2 = [v14 server];
        v347 = [server2 length];

        if (v347)
        {
          v348 = [NSBundle bundleForClass:objc_opt_class()];
          v349 = [v348 localizedStringForKey:@"SERVER" value:&stru_411E8 table:@"MobileVPN"];
          v350 = [PSSpecifier preferenceSpecifierNamed:v349 target:selfCopy set:0 get:"serverForConnection:" detail:0 cell:4 edit:0];
          [(VPNSetupListController *)selfCopy setServerSpecifier:v350];

          serverSpecifier2 = [(VPNSetupListController *)selfCopy serverSpecifier];
          [v15 addObject:serverSpecifier2];
        }

        accountName2 = [v422 accountName];
        v353 = [accountName2 length];

        if (v353)
        {
          v354 = [NSBundle bundleForClass:objc_opt_class()];
          v355 = [v354 localizedStringForKey:@"ACCOUNT_NAME" value:&stru_411E8 table:@"MobileVPN"];
          v356 = [PSSpecifier preferenceSpecifierNamed:v355 target:selfCopy set:0 get:"usernameForConnection:" detail:0 cell:4 edit:0];
          [(VPNSetupListController *)selfCopy setAccountSpecifier:v356];

          accountSpecifier = [(VPNSetupListController *)selfCopy accountSpecifier];
          [v15 addObject:accountSpecifier];
        }

        remoteAddress = [v422 remoteAddress];
        v359 = [remoteAddress length];

        if (v359)
        {
          v360 = [NSBundle bundleForClass:objc_opt_class()];
          v361 = [v360 localizedStringForKey:@"REMOTE_IP" value:&stru_411E8 table:@"MobileVPN"];
          v362 = [PSSpecifier preferenceSpecifierNamed:v361 target:selfCopy set:0 get:"remoteIPForSpecifier:" detail:0 cell:4 edit:0];
          [(VPNSetupListController *)selfCopy setServerAddressSpecifier:v362];

          serverAddressSpecifier = [(VPNSetupListController *)selfCopy serverAddressSpecifier];
          [v15 addObject:serverAddressSpecifier];
        }

        ipAddresses = [v422 ipAddresses];
        if ([ipAddresses count])
        {
          ipAddresses2 = [v422 ipAddresses];
          v366 = [ipAddresses2 objectAtIndexedSubscript:0];
          v367 = [v366 length];

          if (v367)
          {
            v368 = [NSBundle bundleForClass:objc_opt_class()];
            v369 = [v368 localizedStringForKey:@"LOCAL_IP" value:&stru_411E8 table:@"MobileVPN"];
            v370 = [PSSpecifier preferenceSpecifierNamed:v369 target:selfCopy set:0 get:"localIPForSpecifier:" detail:0 cell:4 edit:0];

            [v15 addObject:v370];
LABEL_257:
            ipAddresses3 = [v422 ipAddresses];
            if ([ipAddresses3 count] <= 1)
            {
            }

            else
            {
              ipAddresses4 = [v422 ipAddresses];
              v391 = [ipAddresses4 objectAtIndexedSubscript:1];
              v392 = [v391 length];

              if (v392)
              {
                v393 = [NSBundle bundleForClass:objc_opt_class()];
                v394 = [v393 localizedStringForKey:@"LOCAL_IP" value:&stru_411E8 table:@"MobileVPN"];
                v395 = [PSSpecifier preferenceSpecifierNamed:v394 target:selfCopy set:0 get:"localIP2ForSpecifier:" detail:0 cell:4 edit:0];

                [v15 addObject:v395];
                v370 = v395;
              }
            }

            v396 = [NSBundle bundleForClass:objc_opt_class()];
            v397 = [v396 localizedStringForKey:@"CONNECT_TIME" value:&stru_411E8 table:@"MobileVPN"];
            v398 = [PSSpecifier preferenceSpecifierNamed:v397 target:selfCopy set:0 get:"timeConnectedForSpecifier:" detail:0 cell:4 edit:0];
            [(VPNSetupListController *)selfCopy setTimeSpecifier:v398];

            timeSpecifier = [(VPNSetupListController *)selfCopy timeSpecifier];
            [v15 addObject:timeSpecifier];

            if (os_variant_has_internal_ui() && [(VPNSetupListController *)selfCopy currentVPNType]== &dword_4 && ([(VPNSetupListController *)selfCopy vpnGrade]== &dword_0 + 1 || ![(VPNSetupListController *)selfCopy vpnGrade]))
            {
              v401 = [NSBundle bundleForClass:objc_opt_class()];
              v402 = [v401 localizedStringForKey:@"TUNNEL_TYPE" value:&stru_411E8 table:@"MobileVPN"];
              v403 = [PSSpecifier preferenceSpecifierNamed:v402 target:selfCopy set:0 get:"tunnelType:" detail:0 cell:4 edit:0];

              v421 = v403;
              [v15 addObject:v403];
              if (([v422 isPrimary] & 1) != 0 || (objc_msgSend(v422, "matchDomains"), v404 = objc_claimAutoreleasedReturnValue(), v405 = objc_msgSend(v404, "count"), v404, !v405))
              {
                v433 = 0;
                v434 = 0;
              }

              else
              {
                v406 = objc_alloc_init(NSMutableArray);
                v407 = [NSBundle bundleForClass:objc_opt_class()];
                v408 = [v407 localizedStringForKey:@"MATCH_DOMAINS" value:&stru_411E8 table:@"MobileVPN"];
                v409 = [PSSpecifier groupSpecifierWithName:v408];

                v433 = v406;
                v410 = v406;
                v411 = v409;
                [v410 addObject:v409];
                v444 = 0u;
                v445 = 0u;
                v442 = 0u;
                v443 = 0u;
                matchDomains4 = [v422 matchDomains];
                v413 = [matchDomains4 countByEnumeratingWithState:&v442 objects:v468 count:16];
                if (v413)
                {
                  v414 = v413;
                  v415 = *v443;
                  do
                  {
                    for (n = 0; n != v414; n = n + 1)
                    {
                      if (*v443 != v415)
                      {
                        objc_enumerationMutation(matchDomains4);
                      }

                      v417 = [PSSpecifier preferenceSpecifierNamed:*(*(&v442 + 1) + 8 * n) target:selfCopy set:0 get:0 detail:0 cell:4 edit:0];
                      [v433 addObject:v417];
                    }

                    v414 = [matchDomains4 countByEnumeratingWithState:&v442 objects:v468 count:16];
                  }

                  while (v414);
                }

                v434 = 0;
              }
            }

            else
            {
              v433 = 0;
              v434 = 0;
              v421 = v370;
            }

            v15 = v423;
            goto LABEL_75;
          }
        }

        else
        {
        }

        v370 = 0;
        goto LABEL_257;
      }

      v110 = objc_alloc_init(NSMutableArray);
      [(VPNSetupListController *)selfCopy setTimeSpecifierArray:v110];

      subConnectionCount = [v14 subConnectionCount];
      if (subConnectionCount)
      {
        v421 = 0;
        v111 = v15;
        v112 = 0;
        v113 = &MGGetBoolAnswer_ptr;
        do
        {
          v114 = +[PSSpecifier emptyGroupSpecifier];
          [v111 addObject:v114];

          v115 = [v113[214] bundleForClass:objc_opt_class()];
          [v115 localizedStringForKey:@"INTERFACE_TYPE" value:&stru_411E8 table:@"MobileVPN"];
          v116 = v112;
          v435 = v112;
          v118 = v117 = v113;
          v119 = [PSSpecifier preferenceSpecifierNamed:v118 target:v436 set:0 get:"interfaceTypeForConnection:" detail:0 cell:4 edit:0];

          v120 = [NSNumber numberWithUnsignedInteger:v116];
          [v119 setProperty:v120 forKey:@"VPNSubConnectionIndex"];

          [v15 addObject:v119];
          v121 = [v117[214] bundleForClass:objc_opt_class()];
          v122 = [v121 localizedStringForKey:@"REMOTE_IP" value:&stru_411E8 table:@"MobileVPN"];
          v123 = [PSSpecifier preferenceSpecifierNamed:v122 target:v436 set:0 get:"remoteIPForSpecifier:" detail:0 cell:4 edit:0];

          v124 = [NSNumber numberWithUnsignedInteger:v435];
          [v123 setProperty:v124 forKey:@"VPNSubConnectionIndex"];

          [v15 addObject:v123];
          v125 = [v117[214] bundleForClass:objc_opt_class()];
          v126 = [v125 localizedStringForKey:@"LOCAL_IP" value:&stru_411E8 table:@"MobileVPN"];
          v127 = [PSSpecifier preferenceSpecifierNamed:v126 target:v436 set:0 get:"localIPForSpecifier:" detail:0 cell:4 edit:0];

          v128 = [v422 ipAddressesForSubConnection:v435];
          if ([v128 count])
          {
            v129 = [v422 ipAddressesForSubConnection:v435];
            v130 = [v129 objectAtIndexedSubscript:0];
            v131 = [v130 length];

            v132 = v421;
            if (v131)
            {
              v133 = &MGGetBoolAnswer_ptr;
              v134 = [NSBundle bundleForClass:objc_opt_class()];
              v135 = [v134 localizedStringForKey:@"LOCAL_IP" value:&stru_411E8 table:@"MobileVPN"];
              v136 = [PSSpecifier preferenceSpecifierNamed:v135 target:v436 set:0 get:"localIPForSpecifier:" detail:0 cell:4 edit:0];

              v137 = v435;
              v138 = [NSNumber numberWithUnsignedInteger:v435];
              [v127 setProperty:v138 forKey:@"VPNSubConnectionIndex"];

              [v15 addObject:v127];
              v132 = v136;
            }

            else
            {
              v133 = &MGGetBoolAnswer_ptr;
              v137 = v435;
            }
          }

          else
          {

            v132 = v421;
            v133 = &MGGetBoolAnswer_ptr;
            v137 = v435;
          }

          v139 = [v422 ipAddressesForSubConnection:v137];
          if ([v139 count] <= 1)
          {
            v421 = v132;
          }

          else
          {
            v140 = [v422 ipAddressesForSubConnection:v137];
            v141 = [v140 objectAtIndexedSubscript:1];
            v142 = [v141 length];

            if (v142)
            {
              v133 = &MGGetBoolAnswer_ptr;
              v143 = [NSBundle bundleForClass:objc_opt_class()];
              v144 = [v143 localizedStringForKey:@"LOCAL_IP" value:&stru_411E8 table:@"MobileVPN"];
              v145 = [PSSpecifier preferenceSpecifierNamed:v144 target:v436 set:0 get:"localIP2ForSpecifier:" detail:0 cell:4 edit:0];

              v146 = [NSNumber numberWithUnsignedInteger:v137];
              [v127 setProperty:v146 forKey:@"VPNSubConnectionIndex"];

              [v15 addObject:v127];
              v421 = v145;
            }

            else
            {
              v421 = v132;
              v133 = &MGGetBoolAnswer_ptr;
            }
          }

          v147 = [v133[214] bundleForClass:objc_opt_class()];
          v148 = [v147 localizedStringForKey:@"CONNECT_TIME" value:&stru_411E8 table:@"MobileVPN"];
          v149 = [PSSpecifier preferenceSpecifierNamed:v148 target:v436 set:0 get:"timeConnectedForSpecifier:" detail:0 cell:4 edit:0];

          v150 = [NSNumber numberWithUnsignedInteger:v137];
          [v149 setProperty:v150 forKey:@"VPNSubConnectionIndex"];

          v111 = v15;
          [v15 addObject:v149];
          v113 = &MGGetBoolAnswer_ptr;
          timeSpecifierArray = [(VPNSetupListController *)v436 timeSpecifierArray];
          [timeSpecifierArray addObject:v149];

          v112 = v137 + 1;
        }

        while (subConnectionCount != v112);
        v433 = 0;
        v434 = 0;
        userInfo = v418;
        selfCopy = v436;
        v6 = &selRef_setImageHidden_;
LABEL_75:
        v10 = &MGGetBoolAnswer_ptr;
        goto LABEL_135;
      }
    }

    else if (vpnGrade2 != &dword_0 + 3)
    {
      server3 = [v14 server];
      v239 = [server3 length];

      if (v239)
      {
        v240 = [NSBundle bundleForClass:objc_opt_class()];
        v241 = [v240 localizedStringForKey:@"SERVER" value:&stru_411E8 table:@"MobileVPN"];
        v242 = [PSSpecifier preferenceSpecifierNamed:v241 target:selfCopy set:0 get:"serverForConnection:" detail:0 cell:4 edit:0];
        [(VPNSetupListController *)selfCopy setServerSpecifier:v242];

        serverSpecifier3 = [(VPNSetupListController *)selfCopy serverSpecifier];
        [v15 addObject:serverSpecifier3];
      }

      accountName3 = [v422 accountName];
      v245 = [accountName3 length];

      if (v245)
      {
        v246 = [NSBundle bundleForClass:objc_opt_class()];
        v247 = [v246 localizedStringForKey:@"ACCOUNT_NAME" value:&stru_411E8 table:@"MobileVPN"];
        v248 = [PSSpecifier preferenceSpecifierNamed:v247 target:selfCopy set:0 get:"usernameForConnection:" detail:0 cell:4 edit:0];
        [(VPNSetupListController *)selfCopy setAccountSpecifier:v248];

        accountSpecifier2 = [(VPNSetupListController *)selfCopy accountSpecifier];
        [v15 addObject:accountSpecifier2];
      }
    }

    v421 = 0;
    v433 = 0;
    v434 = 0;
    goto LABEL_135;
  }

  if (![(VPNSetupListController *)selfCopy passwordEditOnly])
  {
    v39 = [v424 specifierForID:@"VPN_GRADE"];
    [(VPNSetupListController *)selfCopy setVpnGradeStaticSpecifier:v39];

    v40 = [v424 specifierForID:@"GROUP_NAME"];
    [(VPNSetupListController *)selfCopy setGroupNameSpecifier:v40];

    v41 = [v424 specifierForID:@"LOCAL_IDENTIFIER"];
    [(VPNSetupListController *)selfCopy setLocalIdentifierSpecifier:v41];

    v42 = [v424 specifierForID:@"REMOTE_IDENTIFIER"];
    [(VPNSetupListController *)selfCopy setRemoteIdentifierSpecifier:v42];

    v43 = [v424 specifierForID:@"EAP_TYPE"];
    [(VPNSetupListController *)selfCopy setEapTypeSpecifier:v43];

    v44 = [v424 specifierForID:@"CERTIFICATE_BASED"];
    [(VPNSetupListController *)selfCopy setUseCertificateSwitchSpecifier:v44];

    v45 = [v424 specifierForID:@"CERTIFICATE_IKEV2"];
    [(VPNSetupListController *)selfCopy setAuthTypeSpecifier:v45];

    v46 = [v424 specifierForID:@"CERTIFICATE_LIST"];
    [(VPNSetupListController *)selfCopy setCertificateListSpecifier:v46];

    certificateObjects = [(VPNSetupListController *)selfCopy certificateObjects];
    if ([certificateObjects count])
    {
      certificateObjects2 = [(VPNSetupListController *)selfCopy certificateObjects];
      v49 = [certificateObjects2 count];
      certificateIDs = [(VPNSetupListController *)selfCopy certificateIDs];
      v51 = [certificateIDs count];

      if (v49 == v51)
      {
        certificateListSpecifier = [(VPNSetupListController *)selfCopy certificateListSpecifier];
        v53 = PSEnabledKey;
        v54 = &__kCFBooleanTrue;
        [certificateListSpecifier setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];

        certificateListSpecifier2 = [(VPNSetupListController *)selfCopy certificateListSpecifier];
        certificateObjects3 = [(VPNSetupListController *)selfCopy certificateObjects];
        [certificateListSpecifier2 setValues:certificateObjects3];

        goto LABEL_99;
      }
    }

    else
    {
    }

    certificateListSpecifier2 = [(VPNSetupListController *)selfCopy certificateListSpecifier];
    v53 = PSEnabledKey;
    v54 = &__kCFBooleanFalse;
    [certificateListSpecifier2 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
LABEL_99:

    useCertificateSwitchSpecifier = [(VPNSetupListController *)selfCopy useCertificateSwitchSpecifier];
    [useCertificateSwitchSpecifier setProperty:v54 forKey:v53];

    v160 = [v424 specifierForID:@"SECRET"];
    [(VPNSetupListController *)selfCopy setSharedSecretSpecifier:v160];

    v161 = [v424 specifierForID:@"ENCRYPTION_LEVEL"];
    [(VPNSetupListController *)selfCopy setEncryptionTypeSpecifier:v161];

    v162 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v162 userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      encryptionTypeSpecifier = [(VPNSetupListController *)selfCopy encryptionTypeSpecifier];
      v165 = [NSBundle bundleForClass:objc_opt_class()];
      v166 = [v165 localizedStringForKey:@"ENCRYPTION_LEVEL_ABBREVIATED" value:&stru_411E8 table:@"MobileVPN"];
      [encryptionTypeSpecifier setName:v166];
    }

    v167 = [v424 specifierForID:@"EAP_RSA"];
    [(VPNSetupListController *)selfCopy setRsaSpecifier:v167];

    v168 = [v424 specifierForID:@"TYPE_SPECIFIER"];
    v462[0] = v168;
    v169 = [v424 specifierForID:@"TYPE_GROUP"];
    v462[1] = v169;
    v170 = [NSArray arrayWithObjects:v462 count:2];
    [(VPNSetupListController *)selfCopy setTypeTabSpecifiers:v170];

    v171 = [v424 specifierForID:@"SERVER"];
    [(VPNSetupListController *)selfCopy setEditServerSpecifier:v171];

    v172 = [v424 specifierForID:@"CISCO_IMAGE_GROUP"];
    [(VPNSetupListController *)selfCopy setCiscoImageSpecifier:v172];

    v173 = [v424 specifierForID:@"PASSWORD"];
    [(VPNSetupListController *)selfCopy setPasswordSpecifier:v173];

    passwordSpecifier = [(VPNSetupListController *)selfCopy passwordSpecifier];
    v175 = [NSNumber numberWithBool:[(VPNSetupListController *)selfCopy passwordRequired]^ 1];
    [passwordSpecifier setProperty:v175 forKey:v53];

    v176 = [v424 specifierForID:@"DISPLAY_NAME"];
    [(VPNSetupListController *)selfCopy setDisplayNameSpecifier:v176];

    if ([(VPNSetupListController *)selfCopy currentVPNType]== &dword_4)
    {
      v177 = @"USERNAME";
    }

    else
    {
      v177 = @"ACCOUNT_NAME";
    }

    v178 = [v424 specifierForID:v177];
    [(VPNSetupListController *)selfCopy setAccountSpecifier:v178];

    accountSpecifier3 = [(VPNSetupListController *)selfCopy accountSpecifier];
    [accountSpecifier3 setKeyboardType:0 autoCaps:0 autoCorrection:0];

    v180 = [v424 specifierForID:@"SEND_ALL_TRAFFIC"];
    [(VPNSetupListController *)selfCopy setSendAllTrafficSpecifier:v180];

    v181 = [v424 specifierForID:@"PROXY_LABEL"];
    [(VPNSetupListController *)selfCopy setProxyLabelSpecifier:v181];

    v182 = [NSArray alloc];
    proxyLabelSpecifier = [(VPNSetupListController *)selfCopy proxyLabelSpecifier];
    v184 = [v424 specifierForID:@"PROXY_TYPE"];
    v185 = [v182 initWithObjects:{proxyLabelSpecifier, v184, 0}];
    [(VPNSetupListController *)selfCopy setProxyGroupSpecifiers:v185];

    v186 = [NSArray alloc];
    v187 = [v424 specifierForID:@"PROXY_GROUP"];
    v188 = [v424 specifierForID:@"PROXY_URL"];
    v189 = [v186 initWithObjects:{v187, v188, 0}];
    [(VPNSetupListController *)selfCopy setPacSpecifiers:v189];

    v190 = [NSArray alloc];
    v191 = [v424 specifierForID:@"PROXY_GROUP"];
    v192 = [v424 specifierForID:@"PROXY_SERVER"];
    v193 = [v424 specifierForID:@"PROXY_PORT"];
    v194 = [v424 specifierForID:@"PROXY_AUTHENTICATION"];
    v195 = [v190 initWithObjects:{v191, v192, v193, v194, 0}];
    [(VPNSetupListController *)selfCopy setManualProxySpecifiers:v195];

    v196 = [NSArray alloc];
    v197 = [v424 specifierForID:@"PROXY_USERNAME"];
    v198 = [v424 specifierForID:@"PROXY_PASSWORD"];
    v199 = [v196 initWithObjects:{v197, v198, 0}];
    [(VPNSetupListController *)selfCopy setProxyAuthSpecifiers:v199];

    serviceID6 = [(VPNSetupListController *)selfCopy serviceID];

    if (!serviceID6)
    {
      userInfo2 = [*&selfCopy->PSListController_opaque[v3] userInfo];
      v202 = [userInfo2 objectForKey:@"vpn-service-id"];
      v203 = [v202 copy];
      [(VPNSetupListController *)selfCopy setServiceID:v203];
    }

    serviceID7 = [(VPNSetupListController *)selfCopy serviceID];

    if (serviceID7)
    {
      name2 = [*&selfCopy->PSListController_opaque[v3] name];
      [(VPNSetupListController *)selfCopy setTitle:name2];
    }

    userInfo3 = [*&selfCopy->PSListController_opaque[v3] userInfo];
    v207 = [userInfo3 objectForKey:@"vpn-user-created"];
    -[VPNSetupListController setUserCreated:](selfCopy, "setUserCreated:", [v207 BOOLValue]);

    userInfo4 = [*&selfCopy->PSListController_opaque[v3] userInfo];
    v209 = [userInfo4 objectForKey:@"vpn-profile-backed"];
    -[VPNSetupListController setProfileBacked:](selfCopy, "setProfileBacked:", [v209 BOOLValue]);

    v24 = objc_alloc_init(NSMutableArray);
    serviceID8 = [(VPNSetupListController *)selfCopy serviceID];

    if (serviceID8)
    {
      if ([(VPNSetupListController *)selfCopy currentVPNType]== &dword_0 + 2)
      {
        ciscoImageSpecifier = [(VPNSetupListController *)selfCopy ciscoImageSpecifier];

        if (ciscoImageSpecifier)
        {
          ciscoImageSpecifier2 = [(VPNSetupListController *)selfCopy ciscoImageSpecifier];
          [v24 addObject:ciscoImageSpecifier2];

          ciscoImageSpecifier3 = [(VPNSetupListController *)selfCopy ciscoImageSpecifier];
          [ciscoImageSpecifier3 setProperty:&off_43680 forKey:@"VisibleOnInit"];
        }
      }

      vpnGradeStaticSpecifier = [(VPNSetupListController *)selfCopy vpnGradeStaticSpecifier];
      [v24 addObject:vpnGradeStaticSpecifier];

      typeTabSpecifiers = +[PSSpecifier emptyGroupSpecifier];
      [v24 addObject:typeTabSpecifiers];
    }

    else
    {
      ciscoImageSpecifier4 = [(VPNSetupListController *)selfCopy ciscoImageSpecifier];

      if (ciscoImageSpecifier4)
      {
        ciscoImageSpecifier5 = [(VPNSetupListController *)selfCopy ciscoImageSpecifier];
        [v24 addObject:ciscoImageSpecifier5];

        ciscoImageSpecifier6 = [(VPNSetupListController *)selfCopy ciscoImageSpecifier];
        v219 = [NSNumber numberWithBool:[(VPNSetupListController *)selfCopy currentVPNType]== &dword_0 + 2];
        [ciscoImageSpecifier6 setProperty:v219 forKey:@"VisibleOnInit"];
      }

      typeTabSpecifiers = [(VPNSetupListController *)selfCopy typeTabSpecifiers];
      [v24 addObjectsFromArray:typeTabSpecifiers];
    }

    if ([(VPNSetupListController *)selfCopy userCreated]|| ([(VPNSetupListController *)selfCopy serviceID], v220 = objc_claimAutoreleasedReturnValue(), v220, !v220))
    {
      displayNameSpecifier = [(VPNSetupListController *)selfCopy displayNameSpecifier];
      [v24 addObject:displayNameSpecifier];
    }

    editServerSpecifier = [(VPNSetupListController *)selfCopy editServerSpecifier];
    [v24 addObject:editServerSpecifier];

    if ([(VPNSetupListController *)selfCopy currentVPNType]== &dword_4)
    {
      remoteIdentifierSpecifier = [(VPNSetupListController *)selfCopy remoteIdentifierSpecifier];
      [v24 addObject:remoteIdentifierSpecifier];

      localIdentifierSpecifier = [(VPNSetupListController *)selfCopy localIdentifierSpecifier];
      [v24 addObject:localIdentifierSpecifier];

      v225 = [NSBundle bundleForClass:objc_opt_class()];
      v226 = [v225 localizedStringForKey:@"AUTHENTICATION" value:&stru_411E8 table:@"MobileVPN"];
      v227 = [PSSpecifier groupSpecifierWithName:v226];
      [v24 addObject:v227];

      eapTypeSpecifier = [(VPNSetupListController *)selfCopy eapTypeSpecifier];
      [v24 addObject:eapTypeSpecifier];

      if (![(VPNSetupListController *)selfCopy eapType])
      {
        authTypeSpecifier = [(VPNSetupListController *)selfCopy authTypeSpecifier];
        [v24 addObject:authTypeSpecifier];
      }

      if ([(VPNSetupListController *)selfCopy eapType]== &dword_0 + 1)
      {
        accountSpecifier4 = [(VPNSetupListController *)selfCopy accountSpecifier];
        [v24 addObject:accountSpecifier4];

        passwordSpecifier2 = [(VPNSetupListController *)selfCopy passwordSpecifier];
        [v24 addObject:passwordSpecifier2];
      }

      if ([(VPNSetupListController *)selfCopy eapType]== &dword_0 + 2 || [(VPNSetupListController *)selfCopy authType]== &dword_0 + 1 && ![(VPNSetupListController *)selfCopy eapType])
      {
        certificateListSpecifier3 = [(VPNSetupListController *)selfCopy certificateListSpecifier];
        [v24 addObject:certificateListSpecifier3];
      }

      if ([(VPNSetupListController *)selfCopy authType])
      {
LABEL_238:
        proxyGroupSpecifiers = [(VPNSetupListController *)selfCopy proxyGroupSpecifiers];
        [v24 addObjectsFromArray:proxyGroupSpecifiers];

        v374 = [v24 specifierForID:@"PROXY_TYPE"];
        v375 = [(VPNSetupListController *)selfCopy proxyType:v374];
        intValue = [v375 intValue];

        if (intValue == 2)
        {
          pacSpecifiers = [(VPNSetupListController *)selfCopy pacSpecifiers];
        }

        else
        {
          if (intValue != 1)
          {
            goto LABEL_244;
          }

          manualProxySpecifiers = [(VPNSetupListController *)selfCopy manualProxySpecifiers];
          [v24 addObjectsFromArray:manualProxySpecifiers];

          v378 = [(VPNSetupListController *)selfCopy proxyUsesAuthentication:0];
          bOOLValue = [v378 BOOLValue];

          if (!bOOLValue)
          {
LABEL_244:
            v382 = OBJC_IVAR___PSListController__specifiers;
            objc_storeStrong(&selfCopy->PSListController_opaque[OBJC_IVAR___PSListController__specifiers], v24);
            serviceID9 = [(VPNSetupListController *)selfCopy serviceID];
            if (serviceID9)
            {
            }

            else
            {
              v384 = +[UIDevice currentDevice];
              userInterfaceIdiom2 = [v384 userInterfaceIdiom];

              if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) != 1)
              {
                displayName2 = [NSBundle bundleForClass:objc_opt_class()];
                v388 = [displayName2 localizedStringForKey:@"ADD_VPN_ABBREVIATED" value:&stru_411E8 table:@"MobileVPN"];
                [(VPNSetupListController *)selfCopy setTitle:v388];

                goto LABEL_248;
              }
            }

            displayName2 = [(VPNSetupListController *)selfCopy displayName];
            [(VPNSetupListController *)selfCopy setTitle:displayName2];
LABEL_248:

            v23 = *&selfCopy->PSListController_opaque[v382];
            goto LABEL_249;
          }

          pacSpecifiers = [(VPNSetupListController *)selfCopy proxyAuthSpecifiers];
        }

        v381 = pacSpecifiers;
        [v24 addObjectsFromArray:pacSpecifiers];

        goto LABEL_244;
      }
    }

    else
    {
      currentVPNType2 = [(VPNSetupListController *)selfCopy currentVPNType];
      accountSpecifier5 = [(VPNSetupListController *)selfCopy accountSpecifier];
      [v24 addObject:accountSpecifier5];

      if (currentVPNType2 != &dword_0 + 2)
      {
        rsaSpecifier = [(VPNSetupListController *)selfCopy rsaSpecifier];
        [v24 addObject:rsaSpecifier];

        if (![(VPNSetupListController *)selfCopy useRSASecurID])
        {
          passwordSpecifier3 = [(VPNSetupListController *)selfCopy passwordSpecifier];
          [v24 addObject:passwordSpecifier3];
        }

        sharedSecretSpecifier = [(VPNSetupListController *)selfCopy sharedSecretSpecifier];
        [v24 addObject:sharedSecretSpecifier];

        sendAllTrafficSpecifier = [(VPNSetupListController *)selfCopy sendAllTrafficSpecifier];
        goto LABEL_237;
      }

      passwordSpecifier4 = [(VPNSetupListController *)selfCopy passwordSpecifier];
      [v24 addObject:passwordSpecifier4];

      useCertificateSwitchSpecifier2 = [(VPNSetupListController *)selfCopy useCertificateSwitchSpecifier];
      [v24 addObject:useCertificateSwitchSpecifier2];

      if ([(VPNSetupListController *)selfCopy usesCertificates])
      {
        sendAllTrafficSpecifier = [(VPNSetupListController *)selfCopy certificateListSpecifier];
LABEL_237:
        v372 = sendAllTrafficSpecifier;
        [v24 addObject:sendAllTrafficSpecifier];

        goto LABEL_238;
      }

      groupNameSpecifier = [(VPNSetupListController *)selfCopy groupNameSpecifier];
      [v24 addObject:groupNameSpecifier];
    }

    sendAllTrafficSpecifier = [(VPNSetupListController *)selfCopy sharedSecretSpecifier];
    goto LABEL_237;
  }

  v24 = objc_alloc_init(NSMutableArray);
  v25 = [v424 specifierForID:@"VPN_GRADE"];
  [v24 addObject:v25];

  v26 = [userInfo objectForKeyedSubscript:@"vpn-service-id"];
  v27 = [v7 connectionWithServiceID:v26 withGrade:{-[VPNSetupListController vpnGrade](selfCopy, "vpnGrade")}];

  server4 = [v27 server];
  v29 = [server4 length];

  if (v29)
  {
    v30 = [NSBundle bundleForClass:objc_opt_class()];
    v31 = [v30 localizedStringForKey:@"SERVER" value:&stru_411E8 table:@"MobileVPN"];
    v32 = [PSSpecifier preferenceSpecifierNamed:v31 target:selfCopy set:0 get:"serverForConnection:" detail:0 cell:4 edit:0];
    [(VPNSetupListController *)selfCopy setServerSpecifier:v32];

    serverSpecifier4 = [(VPNSetupListController *)selfCopy serverSpecifier];
    [v24 addObject:serverSpecifier4];
  }

  if ([(VPNSetupListController *)selfCopy currentVPNType]!= &dword_4)
  {
    v36 = [v424 specifierForID:@"ACCOUNT_NAME"];
    [(VPNSetupListController *)selfCopy setAccountSpecifier:v36];
    goto LABEL_95;
  }

  accountName4 = [v27 accountName];
  v35 = [accountName4 length];

  if (v35)
  {
    v36 = [NSBundle bundleForClass:objc_opt_class()];
    v37 = [v36 localizedStringForKey:@"ACCOUNT_NAME" value:&stru_411E8 table:@"MobileVPN"];
    v38 = [PSSpecifier preferenceSpecifierNamed:v37 target:selfCopy set:0 get:"usernameForConnection:" detail:0 cell:4 edit:0];
    [(VPNSetupListController *)selfCopy setAccountSpecifier:v38];

LABEL_95:
    accountSpecifier6 = [(VPNSetupListController *)selfCopy accountSpecifier];
    [v24 addObject:accountSpecifier6];
  }

  v153 = [v424 specifierForID:@"PASSWORD"];
  [(VPNSetupListController *)selfCopy setPasswordSpecifier:v153];

  passwordSpecifier5 = [(VPNSetupListController *)selfCopy passwordSpecifier];
  v155 = [NSNumber numberWithBool:[(VPNSetupListController *)selfCopy passwordRequired]^ 1];
  [passwordSpecifier5 setProperty:v155 forKey:PSEnabledKey];

  passwordSpecifier6 = [(VPNSetupListController *)selfCopy passwordSpecifier];
  [v24 addObject:passwordSpecifier6];

  v157 = OBJC_IVAR___PSListController__specifiers;
  objc_storeStrong(&selfCopy->PSListController_opaque[OBJC_IVAR___PSListController__specifiers], v24);
  displayName3 = [(VPNSetupListController *)selfCopy displayName];
  [(VPNSetupListController *)selfCopy setTitle:displayName3];

  v23 = *&selfCopy->PSListController_opaque[v157];
LABEL_249:
  v345 = 0;
  v344 = 0;
  v343 = 0;
  v299 = 0;
LABEL_250:

LABEL_251:

  return v23;
}

- (void)renewCertificate:(id)certificate
{
  v4 = +[VPNConnectionStore sharedInstance];
  serviceID = [(VPNSetupListController *)self serviceID];
  v8 = [v4 getProfileIDForServiceID:serviceID];

  if (v8)
  {
    v6 = +[MCProfileConnection sharedConnection];
    [v6 showProfileErrorUIWithProfileIdentifier:v8 outError:0];

    WeakRetained = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__parentController]);
    [WeakRetained dismiss];
  }
}

@end