@interface VPNSetupListController
- (BOOL)deleteConfiguration:(id)a3;
- (BOOL)haveEnoughValues;
- (BOOL)saveConfigurationSettings;
- (VPNSetupListController)init;
- (__CFString)vpnTypeForSpecifier:(id)a3;
- (id)authTypeForSpecifier:(id)a3;
- (id)bundle;
- (id)certificateObjectForSpecifier:(id)a3;
- (id)connection;
- (id)eapTypeForSpecifier:(id)a3;
- (id)getConnectionStateForSpecifier:(id)a3;
- (id)getDescriptionForApp:(id)a3;
- (id)interfaceTypeForConnection:(id)a3;
- (id)localIP2ForSpecifier:(id)a3;
- (id)localIPForSpecifier:(id)a3;
- (id)onDemand:(id)a3;
- (id)pacFile:(id)a3;
- (id)pptpEncryptionLevelForSpecifier:(id)a3;
- (id)proxyPassword:(id)a3;
- (id)proxyServer:(id)a3;
- (id)proxyServerPort:(id)a3;
- (id)proxyType:(id)a3;
- (id)proxyUsername:(id)a3;
- (id)proxyUsesAuthentication:(id)a3;
- (id)remoteIPForSpecifier:(id)a3;
- (id)sendAllTraffic:(id)a3;
- (id)serverForConnection:(id)a3;
- (id)specifiers;
- (id)statusForConnection:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)timeConnectedForSpecifier:(id)a3;
- (id)tunnelType:(id)a3;
- (id)typeForConnection:(id)a3;
- (id)useRSASecurIDForSpecifier:(id)a3;
- (id)usernameForConnection:(id)a3;
- (id)usesCertificatesForSpecifier:(id)a3;
- (id)vpnGradeForSpecifier:(id)a3;
- (id)vpnGradeNameForSpecifier:(id)a3;
- (void)appWillEnterForeground:(id)a3;
- (void)cancelButtonClicked:(id)a3;
- (void)dealloc;
- (void)deleteConfirm:(id)a3;
- (void)deleteVPNConfiguration:(id)a3;
- (void)disableButtonTapped:(id)a3;
- (void)displayAlertWithTitle:(id)a3 message:(id)a4 cancel:(id)a5;
- (void)enableButtonTapped:(id)a3;
- (void)enterEditMode;
- (void)leaveEditMode;
- (void)loadView;
- (void)renewCertificate:(id)a3;
- (void)saveButtonClicked:(id)a3;
- (void)saveButtonTapped:(id)a3;
- (void)scrollToSpecifier:(id)a3;
- (void)setAuthType:(id)a3 forSpecifier:(id)a4;
- (void)setCertificateObject:(id)a3 forSpecifier:(id)a4;
- (void)setConnectionState:(id)a3 forSpecifier:(id)a4;
- (void)setDisplayName:(id)a3 forSpecifier:(id)a4;
- (void)setEAPType:(id)a3 forSpecifier:(id)a4;
- (void)setGroupDisplayName:(id)a3 forSpecifier:(id)a4;
- (void)setLocalIdentifier:(id)a3 forSpecifier:(id)a4;
- (void)setOnDemand:(id)a3 forSpecifier:(id)a4;
- (void)setOnDemandService:(id)a3 forSpecifier:(id)a4;
- (void)setPPTPEncryptionLevel:(id)a3 forSpecifier:(id)a4;
- (void)setPacFile:(id)a3 specifier:(id)a4;
- (void)setPassword:(id)a3 forSpecifier:(id)a4;
- (void)setPasswordRequired:(id)a3 forSpecifier:(id)a4;
- (void)setProxyPassword:(id)a3 specifier:(id)a4;
- (void)setProxyServer:(id)a3 specifier:(id)a4;
- (void)setProxyServerPort:(id)a3 specifier:(id)a4;
- (void)setProxyType:(id)a3 specifier:(id)a4;
- (void)setProxyUsername:(id)a3 specifier:(id)a4;
- (void)setProxyUsesAuthentication:(id)a3 specifier:(id)a4;
- (void)setRemoteIdentifier:(id)a3 forSpecifier:(id)a4;
- (void)setSendAllTraffic:(id)a3 forSpecifier:(id)a4;
- (void)setServer:(id)a3 forSpecifier:(id)a4;
- (void)setSharedSecret:(id)a3 forSpecifier:(id)a4;
- (void)setStateForServiceID:(id)a3;
- (void)setUseRSASecurID:(id)a3 forSpecifier:(id)a4;
- (void)setUsername:(id)a3 forSpecifier:(id)a4;
- (void)setUsesCertificates:(id)a3 forSpecifier:(id)a4;
- (void)setVPNGrade:(id)a3 forSpecifier:(id)a4;
- (void)setVPNType:(__CFString *)a3 forSpecifier:(id)a4;
- (void)timerUpdated:(id)a3;
- (void)updateDoneButton;
- (void)vpnConfigurationChanged:(id)a3;
- (void)warnForPPTP;
@end

@implementation VPNSetupListController

- (void)vpnConfigurationChanged:(id)a3
{
  if ([(VPNSetupListController *)self overviewMode])
  {

    [(VPNSetupListController *)self reloadSpecifiers];
  }
}

- (void)appWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v6 = +[VPNConnectionStore sharedInstance];
  v7 = [v5 objectForKeyedSubscript:@"vpn-service-id"];
  v8 = [v6 connectionWithServiceID:v7 withGrade:{-[VPNSetupListController vpnGrade](self, "vpnGrade")}];
  objc_initWeak(&location, v8);

  v9 = objc_loadWeakRetained(&location);
  sub_4760(v9);

  objc_destroyWeak(&location);
}

- (void)timerUpdated:(id)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(VPNSetupListController *)self timeSpecifierArray:a3];
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

  v9 = [(VPNSetupListController *)self timeSpecifier];
  [(VPNSetupListController *)self reloadSpecifier:v9];
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

- (id)proxyServer:(id)a3
{
  v4 = [(VPNSetupListController *)self proxyServer];
  if (v4)
  {
    v5 = [(VPNSetupListController *)self proxyServer];
  }

  else
  {
    v5 = &stru_411E8;
  }

  return v5;
}

- (void)setProxyServer:(id)a3 specifier:(id)a4
{
  v7 = a3;
  v5 = [(VPNSetupListController *)self proxyServer];
  v6 = [v7 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    [(VPNSetupListController *)self setProxyServer:v7];
    [(VPNSetupListController *)self setDirty:1];
    [(VPNSetupListController *)self updateDoneButton];
  }
}

- (id)proxyServerPort:(id)a3
{
  v4 = [(VPNSetupListController *)self proxyPort];
  if (v4)
  {
    v5 = [(VPNSetupListController *)self proxyPort];
  }

  else
  {
    v5 = &stru_411E8;
  }

  return v5;
}

- (void)setProxyServerPort:(id)a3 specifier:(id)a4
{
  v7 = a3;
  v5 = [(VPNSetupListController *)self proxyPort];
  v6 = [v7 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    [(VPNSetupListController *)self setProxyPort:v7];
    [(VPNSetupListController *)self setDirty:1];
    [(VPNSetupListController *)self updateDoneButton];
  }
}

- (id)proxyUsername:(id)a3
{
  v4 = [(VPNSetupListController *)self proxyUsername];
  if (v4)
  {
    v5 = [(VPNSetupListController *)self proxyUsername];
  }

  else
  {
    v5 = &stru_411E8;
  }

  return v5;
}

- (void)setProxyUsername:(id)a3 specifier:(id)a4
{
  v7 = a3;
  v5 = [(VPNSetupListController *)self proxyUsername];
  v6 = [v7 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    [(VPNSetupListController *)self setProxyUsername:v7];
    [(VPNSetupListController *)self setDirty:1];
    [(VPNSetupListController *)self updateDoneButton];
  }
}

- (id)proxyPassword:(id)a3
{
  v4 = [(VPNSetupListController *)self proxyPassword];
  if (v4)
  {
    v5 = [(VPNSetupListController *)self proxyPassword];
  }

  else
  {
    v5 = &stru_411E8;
  }

  return v5;
}

- (void)setProxyPassword:(id)a3 specifier:(id)a4
{
  v7 = a3;
  v5 = [(VPNSetupListController *)self proxyPassword];
  v6 = [v7 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    [(VPNSetupListController *)self setProxyPassword:v7];
    [(VPNSetupListController *)self setDirty:1];
    [(VPNSetupListController *)self updateDoneButton];
  }
}

- (void)setProxyUsesAuthentication:(id)a3 specifier:(id)a4
{
  v11 = a3;
  v5 = [v11 BOOLValue];
  v6 = v5 == [(VPNSetupListController *)self proxyAuthenticated];
  v7 = v11;
  if (!v6)
  {
    -[VPNSetupListController setProxyAuthenticated:](self, "setProxyAuthenticated:", [v11 BOOLValue]);
    if (v5)
    {
      [(VPNSetupListController *)self setProxyUsername:0];
      [(VPNSetupListController *)self setProxyPassword:0];
      v8 = [(VPNSetupListController *)self proxyAuthSpecifiers];
      [(VPNSetupListController *)self insertContiguousSpecifiers:v8 afterSpecifierID:@"PROXY_AUTHENTICATION" animated:1];

      v9 = [(VPNSetupListController *)self proxyAuthSpecifiers];
      v10 = [v9 lastObject];
      [(VPNSetupListController *)self performSelector:"scrollToSpecifier:" withObject:v10 afterDelay:0.3];
    }

    else
    {
      v9 = [(VPNSetupListController *)self proxyAuthSpecifiers];
      [(VPNSetupListController *)self removeContiguousSpecifiers:v9 animated:1];
    }

    [(VPNSetupListController *)self setDirty:1];
    [(VPNSetupListController *)self updateDoneButton];
    v7 = v11;
  }
}

- (id)proxyUsesAuthentication:(id)a3
{
  v3 = [(VPNSetupListController *)self proxyAuthenticated];

  return [NSNumber numberWithBool:v3];
}

- (id)proxyType:(id)a3
{
  v3 = [(VPNSetupListController *)self proxyType];

  return [NSNumber numberWithUnsignedInteger:v3];
}

- (void)setProxyType:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = [(VPNSetupListController *)self proxyType:a4];
  v8 = [v7 intValue];

  v9 = [v6 intValue];
  v10 = [v6 unsignedIntegerValue];

  [(VPNSetupListController *)self setProxyType:v10];
  [(VPNSetupListController *)self loseFocus];
  v11 = [(VPNSetupListController *)self manualProxySpecifiers];
  v35 = [NSMutableArray arrayWithArray:v11];

  v12 = [(VPNSetupListController *)self proxyUsesAuthentication:0];
  LODWORD(v11) = [v12 BOOLValue];

  if (v11)
  {
    v13 = [(VPNSetupListController *)self proxyAuthSpecifiers];
    [v35 addObjectsFromArray:v13];
  }

  if (!v8 && v9 == 1)
  {
    [(VPNSetupListController *)self insertContiguousSpecifiers:v35 afterSpecifierID:@"PROXY_TYPE" animated:1];
    v14 = [v35 lastObject];
    [(VPNSetupListController *)self performSelector:"scrollToSpecifier:" withObject:v14 afterDelay:0.3];

    [(VPNSetupListController *)self setDirty:1];
    goto LABEL_14;
  }

  if (!v8 && v9 == 2)
  {
    v15 = [(VPNSetupListController *)self pacSpecifiers];
    [(VPNSetupListController *)self insertContiguousSpecifiers:v15 afterSpecifierID:@"PROXY_TYPE" animated:1];

    v16 = [(VPNSetupListController *)self pacSpecifiers];
    v17 = [v16 lastObject];
    [(VPNSetupListController *)self performSelector:"scrollToSpecifier:" withObject:v17 afterDelay:0.3];

LABEL_12:
    [(VPNSetupListController *)self setDirty:1];
LABEL_13:
    [(VPNSetupListController *)self updateDoneButton];
    goto LABEL_14;
  }

  if (v8 == 1 && !v9)
  {
    [(VPNSetupListController *)self removeContiguousSpecifiers:v35 animated:1];
    goto LABEL_12;
  }

  if (v8 == 1 && v9 == 2)
  {
    v18 = [v35 count] - 1;
    v19 = [(VPNSetupListController *)self pacSpecifiers];
    v20 = [v19 count] - 1;

    v21 = [v35 subarrayWithRange:{1, v18}];
    v22 = [(VPNSetupListController *)self pacSpecifiers];
    v23 = [v22 subarrayWithRange:{1, v20}];

    [(VPNSetupListController *)self replaceContiguousSpecifiers:v21 withSpecifiers:v23 animated:1];
    v24 = [(VPNSetupListController *)self pacSpecifiers];
    v25 = [v24 lastObject];
    [(VPNSetupListController *)self performSelector:"scrollToSpecifier:" withObject:v25 afterDelay:0.3];

LABEL_20:
    goto LABEL_21;
  }

  if (v8 == 2 && !v9)
  {
    v30 = [(VPNSetupListController *)self pacSpecifiers];
    [(VPNSetupListController *)self removeContiguousSpecifiers:v30 animated:1];

    goto LABEL_12;
  }

  if (v8 == 2 && v9 == 1)
  {
    v31 = [v35 count] - 1;
    v32 = [(VPNSetupListController *)self pacSpecifiers];
    v33 = [v32 count] - 1;

    v21 = [v35 subarrayWithRange:{1, v31}];
    v34 = [(VPNSetupListController *)self pacSpecifiers];
    v23 = [v34 subarrayWithRange:{1, v33}];

    [(VPNSetupListController *)self replaceContiguousSpecifiers:v23 withSpecifiers:v21 animated:1];
    v24 = [v35 lastObject];
    [(VPNSetupListController *)self performSelector:"scrollToSpecifier:" withObject:v24 afterDelay:0.3];
    goto LABEL_20;
  }

LABEL_21:
  if (v9 && v8)
  {
    v26 = [(VPNSetupListController *)self indexOfGroup:3];
    v27 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__table];
    v28 = [(VPNSetupListController *)self indexPathForIndex:v26 + 1];
    v29 = [v27 cellForRowAtIndexPath:v28];

    [v29 becomeFirstResponder];
  }

  [(VPNSetupListController *)self setDirty:1];
  if (v9 != 1)
  {
    goto LABEL_13;
  }

LABEL_14:
}

- (void)scrollToSpecifier:(id)a3
{
  v4 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] indexOfObject:a3];
  v5 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__table];
  v6 = [(VPNSetupListController *)self indexPathForIndex:v4];
  [v5 scrollToRowAtIndexPath:v6 atScrollPosition:2 animated:1];
}

- (id)pacFile:(id)a3
{
  v4 = [(VPNSetupListController *)self proxyPACFile];
  if (v4)
  {
    v5 = [(VPNSetupListController *)self proxyPACFile];
  }

  else
  {
    v5 = &stru_411E8;
  }

  return v5;
}

- (void)setPacFile:(id)a3 specifier:(id)a4
{
  v7 = a3;
  v5 = [(VPNSetupListController *)self proxyPACFile];
  v6 = [v7 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    [(VPNSetupListController *)self setProxyPACFile:v7];
    [(VPNSetupListController *)self setDirty:1];
    [(VPNSetupListController *)self updateDoneButton];
  }
}

- (void)setUseRSASecurID:(id)a3 forSpecifier:(id)a4
{
  v5 = [a3 BOOLValue];
  if (v5 == [(VPNSetupListController *)self useRSASecurID])
  {
    return;
  }

  [(VPNSetupListController *)self setUseRSASecurID:v5];
  v6 = [(VPNSetupListController *)self passwordSpecifier];
  v7 = [(VPNSetupListController *)self indexOfSpecifier:v6];

  if (![(VPNSetupListController *)self useRSASecurID]&& v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(VPNSetupListController *)self passwordSpecifier];
    [(VPNSetupListController *)self insertSpecifier:v8 afterSpecifierID:@"EAP_RSA" animated:1];
LABEL_9:

    goto LABEL_10;
  }

  if ([(VPNSetupListController *)self useRSASecurID]&& v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(VPNSetupListController *)self passwordSpecifier];
    [(VPNSetupListController *)self removeSpecifier:v8 animated:1];
    goto LABEL_9;
  }

LABEL_10:
  [(VPNSetupListController *)self setDirty:1];

  [(VPNSetupListController *)self updateDoneButton];
}

- (id)useRSASecurIDForSpecifier:(id)a3
{
  v3 = [(VPNSetupListController *)self useRSASecurID];

  return [NSNumber numberWithBool:v3];
}

- (void)setSendAllTraffic:(id)a3 forSpecifier:(id)a4
{
  v5 = [a3 BOOLValue];
  if (v5 != [(VPNSetupListController *)self sendAllTraffic])
  {
    [(VPNSetupListController *)self setSendAllTraffic:v5];
    [(VPNSetupListController *)self setDirty:1];

    [(VPNSetupListController *)self updateDoneButton];
  }
}

- (id)sendAllTraffic:(id)a3
{
  v3 = [(VPNSetupListController *)self sendAllTraffic];

  return [NSNumber numberWithBool:v3];
}

- (void)setOnDemand:(id)a3 forSpecifier:(id)a4
{
  v5 = [a3 BOOLValue];
  if (v5 != [(VPNSetupListController *)self onDemandEnabled])
  {
    [(VPNSetupListController *)self setOnDemandEnabled:v5];
    [(VPNSetupListController *)self setDirty:1];

    [(VPNSetupListController *)self saveButtonTapped:0];
  }
}

- (id)onDemand:(id)a3
{
  v3 = [(VPNSetupListController *)self onDemandEnabled];

  return [NSNumber numberWithBool:v3];
}

- (void)setOnDemandService:(id)a3 forSpecifier:(id)a4
{
  if (a3)
  {
    a3 = [a3 BOOLValue];
  }

  [(VPNSetupListController *)self setOnDemandService:a3, a4];
}

- (BOOL)haveEnoughValues
{
  v3 = [(VPNSetupListController *)self currentVPNType];
  v4 = [(VPNSetupListController *)self dirty];
  if (v3 == 4)
  {
    if (v4)
    {
      v5 = [(VPNSetupListController *)self server];
      if ([v5 length])
      {
        v6 = [(VPNSetupListController *)self displayName];
        if ([v6 length])
        {
          v7 = [(VPNSetupListController *)self remoteIdentifier];
          if ([v7 length])
          {
            v8 = [(VPNSetupListController *)self account];
            if ([v8 length])
            {
              v9 = 1;
            }

            else
            {
              v10 = [(VPNSetupListController *)self sharedSecret];
              if ([v10 length])
              {
                v9 = 1;
              }

              else
              {
                v11 = [(VPNSetupListController *)self certificateID];
                v9 = v11 != 0;
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

  else if (v4)
  {
    v5 = [(VPNSetupListController *)self server];
    if ([v5 length])
    {
      v6 = [(VPNSetupListController *)self displayName];
      if ([v6 length])
      {
        v7 = [(VPNSetupListController *)self account];
        if ([v7 length])
        {
          v9 = 1;
LABEL_24:

          goto LABEL_25;
        }

        if ([(VPNSetupListController *)self usesCertificates])
        {
          v8 = [(VPNSetupListController *)self certificateID];
          v9 = v8 != 0;
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
    v9 = [(VPNSetupListController *)self serviceID];
    v10 = [v8 connectionWithServiceID:v9 withGrade:{-[VPNSetupListController vpnGrade](self, "vpnGrade")}];

    v11 = [v10 status];
    if (v10 && (v11 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      [v10 disconnect];
    }

    v12 = [(VPNSetupListController *)self serviceID];
    v13 = [v8 updateVPNWithServiceID:v12 withOptions:v3];

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

    v16 = [(VPNSetupListController *)self displayName];
    if ([v16 length])
    {
      v17 = [(VPNSetupListController *)self displayName];
      [v3 setObject:v17 forKey:@"dispName"];
    }

    else
    {
      [v3 setObject:&stru_411E8 forKey:@"dispName"];
    }

    v18 = [(VPNSetupListController *)self account];
    if ([v18 length])
    {
      v19 = [(VPNSetupListController *)self account];
      [v3 setObject:v19 forKey:@"authorization"];
    }

    else
    {
      [v3 setObject:&stru_411E8 forKey:@"authorization"];
    }

    v20 = [(VPNSetupListController *)self server];
    if ([v20 length])
    {
      v21 = [(VPNSetupListController *)self server];
      [v3 setObject:v21 forKey:@"server"];
    }

    else
    {
      [v3 setObject:&stru_411E8 forKey:@"server"];
    }

    v22 = [(VPNSetupListController *)self sharedSecret];
    if ([v22 length])
    {
      v23 = [(VPNSetupListController *)self sharedSecret];
      [v3 setObject:v23 forKey:@"secret"];
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

    v29 = [(VPNSetupListController *)self groupDisplayName];
    if ([v29 length])
    {
      v30 = [(VPNSetupListController *)self groupDisplayName];
      [v3 setObject:v30 forKey:@"group"];
    }

    else
    {
      [v3 setObject:&stru_411E8 forKey:@"group"];
    }

    v31 = [(VPNSetupListController *)self password];
    if ([v31 length])
    {
      v32 = [(VPNSetupListController *)self password];
      [v3 setObject:v32 forKey:@"password"];
    }

    else
    {
      [v3 setObject:&stru_411E8 forKey:@"password"];
    }

    v33 = [(VPNSetupListController *)self localIdentifier];
    if ([v33 length])
    {
      v34 = [(VPNSetupListController *)self localIdentifier];
      [v3 setObject:v34 forKey:@"VPNLocalIdentifier"];
    }

    else
    {
      [v3 setObject:&stru_411E8 forKey:@"VPNLocalIdentifier"];
    }

    v35 = [(VPNSetupListController *)self remoteIdentifier];
    if ([v35 length])
    {
      v36 = [(VPNSetupListController *)self remoteIdentifier];
      [v3 setObject:v36 forKey:@"VPNRemoteIdentifier"];
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
        v48 = [(VPNSetupListController *)self certificateID];

        if (v48)
        {
          v49 = [(VPNSetupListController *)self certificateID];
          [v3 setObject:v49 forKey:@"VPNCertificate"];
        }
      }

      v50 = [(VPNSetupListController *)self serviceID];

      if (v50)
      {
        if (![(VPNSetupListController *)self originalVPNType]|| (v51 = [(VPNSetupListController *)self currentVPNType], v51 == [(VPNSetupListController *)self originalVPNType]))
        {
          v52 = +[VPNConnectionStore sharedInstance];
          v53 = [(VPNSetupListController *)self serviceID];
          v54 = [v52 connectionWithServiceID:v53 withGrade:{-[VPNSetupListController vpnGrade](self, "vpnGrade")}];

          v55 = [v54 status];
          if (v54 && (v55 & 0xFFFFFFFFFFFFFFFELL) == 2)
          {
            [v54 disconnect];
          }

          v56 = [(VPNSetupListController *)self serviceID];
          v13 = [v52 updateVPNWithServiceID:v56 withOptions:v3];

          goto LABEL_72;
        }

        v57 = +[VPNConnectionStore sharedInstance];
        v58 = [(VPNSetupListController *)self serviceID];
        v59 = [v57 deleteVPNWithServiceID:v58];

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
      v38 = [(VPNSetupListController *)self proxyServer];
      if ([v38 length])
      {
        v39 = [(VPNSetupListController *)self proxyServer];
        [v3 setObject:v39 forKey:@"VPNProxyServer"];
      }

      else
      {
        [v3 setObject:&stru_411E8 forKey:@"VPNProxyServer"];
      }

      v43 = [(VPNSetupListController *)self proxyPort];
      if ([v43 length])
      {
        v44 = [(VPNSetupListController *)self proxyPort];
        [v3 setObject:v44 forKey:@"VPNProxyPort"];
      }

      else
      {
        [v3 setObject:&stru_411E8 forKey:@"VPNProxyPort"];
      }

      if ([(VPNSetupListController *)self proxyAuthenticated])
      {
        [v3 setObject:&off_43680 forKey:@"VPNProxyAuthenticate"];
        v45 = [(VPNSetupListController *)self proxyUsername];
        if ([v45 length])
        {
          v46 = [(VPNSetupListController *)self proxyUsername];
          [v3 setObject:v46 forKey:@"VPNProxyUsername"];
        }

        else
        {
          [v3 setObject:&stru_411E8 forKey:@"VPNProxyUsername"];
        }

        v40 = [(VPNSetupListController *)self proxyPassword];
        if ([v40 length])
        {
          v41 = [(VPNSetupListController *)self proxyPassword];
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
      v40 = [(VPNSetupListController *)self proxyPACFile];
      if ([v40 length])
      {
        v41 = [(VPNSetupListController *)self proxyPACFile];
        v42 = off_40E18;
LABEL_54:
        [v3 setObject:v41 forKey:*v42];

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

- (void)displayAlertWithTitle:(id)a3 message:(id)a4 cancel:(id)a5
{
  v8 = a5;
  v10 = [UIAlertController alertControllerWithTitle:a3 message:a4 preferredStyle:1];
  v9 = [UIAlertAction actionWithTitle:v8 style:1 handler:0];

  [v10 addAction:v9];
  [(VPNSetupListController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)saveButtonTapped:(id)a3
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

- (void)enableButtonTapped:(id)a3
{
  [(VPNSetupListController *)self loseFocus];
  v16 = +[VPNConnectionStore sharedInstance];
  v4 = [(VPNSetupListController *)self serviceID];
  v5 = [v16 connectionWithServiceID:v4 withGrade:{-[VPNSetupListController vpnGrade](self, "vpnGrade")}];

  v6 = [v5 serviceID];
  v7 = [v16 isEnabledWithServiceID:v6 withGrade:{-[VPNSetupListController vpnGrade](self, "vpnGrade")}];

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

- (void)disableButtonTapped:(id)a3
{
  [(VPNSetupListController *)self loseFocus];
  v16 = +[VPNConnectionStore sharedInstance];
  v4 = [(VPNSetupListController *)self serviceID];
  v5 = [v16 connectionWithServiceID:v4 withGrade:{-[VPNSetupListController vpnGrade](self, "vpnGrade")}];

  v6 = [v5 serviceID];
  v7 = [v16 isEnabledWithServiceID:v6 withGrade:{-[VPNSetupListController vpnGrade](self, "vpnGrade")}];

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

- (void)saveButtonClicked:(id)a3
{
  v4 = [(VPNSetupListController *)self serviceID];

  if (!v4)
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

          v16 = [v15 displayName];
          v17 = [(VPNSetupListController *)self displayName];
          v18 = [v17 isEqualToString:v16];

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
    v5 = [(VPNSetupListController *)self saveConfigurationSettings];
    [(VPNSetupListController *)self setPptpWarningAccepted:0];
    if (v5)
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
  v5 = [(VPNSetupListController *)self navigationItem];
  v3 = [(VPNSetupListController *)self backButton];
  [v5 setLeftBarButtonItem:v3];

  v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:2 target:self action:"editButtonTapped:"];
  [v5 setRightBarButtonItem:v4];

  [(VPNSetupListController *)self setBackButton:0];
  [(VPNSetupListController *)self setOverviewMode:1];
  [(VPNSetupListController *)self setEditMode:0];
  [(VPNSetupListController *)self reloadSpecifiers];
}

- (void)enterEditMode
{
  v6 = [(VPNSetupListController *)self navigationItem];
  v3 = [v6 leftBarButtonItem];
  [(VPNSetupListController *)self setBackButton:v3];

  v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"cancelButtonClicked:"];
  [v6 setLeftBarButtonItem:v4];

  v5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"saveButtonClicked:"];
  [v6 setRightBarButtonItem:v5];

  [(VPNSetupListController *)self setOverviewMode:0];
  [(VPNSetupListController *)self setEditMode:1];
  [(VPNSetupListController *)self updateDoneButton];
  [(VPNSetupListController *)self reloadSpecifiers];
}

- (BOOL)deleteConfiguration:(id)a3
{
  v4 = +[VPNConnectionStore sharedInstance];
  v5 = [(VPNSetupListController *)self serviceID];
  v6 = [v4 deleteVPNWithServiceID:v5];

  return v6;
}

- (void)deleteVPNConfiguration:(id)a3
{
  if ([(VPNSetupListController *)self deleteConfiguration:0])
  {

    [(VPNSetupListController *)self settingsNavigationProxyPopWithAnimated:1];
  }
}

- (void)deleteConfirm:(id)a3
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
    v3 = [(VPNSetupListController *)self haveEnoughValues];
    v5 = [(VPNSetupListController *)self navigationItem];
    v4 = [v5 rightBarButtonItem];
    [v4 setEnabled:v3];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v18.receiver = self;
  v18.super_class = VPNSetupListController;
  v6 = a4;
  v7 = [(VPNSetupListController *)&v18 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(VPNSetupListController *)self indexForIndexPath:v6, v18.receiver, v18.super_class];

  v9 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  v10 = [(VPNSetupListController *)self certificateListSpecifier];

  if (v9 == v10)
  {
    v11 = [(VPNSetupListController *)self certificateID];

    if (v11)
    {
      v12 = [(VPNSetupListController *)self certificateID];
      v11 = sub_27B2C(v12);
    }

    [v7 setValue:v11];
  }

  v13 = [(VPNSetupListController *)self connectSpecifier];

  if (v9 == v13)
  {
    v14 = [(VPNSetupListController *)self connection];
    v15 = [v14 statusText];
    v16 = [v7 detailTextLabel];
    [v16 setText:v15];
  }

  return v7;
}

- (id)bundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

- (void)setPPTPEncryptionLevel:(id)a3 forSpecifier:(id)a4
{
  v5 = [a3 unsignedIntegerValue];
  if (v5 != [(VPNSetupListController *)self encryptionType])
  {
    [(VPNSetupListController *)self setEncryptionType:v5];

    [(VPNSetupListController *)self setDirty:1];
  }
}

- (id)pptpEncryptionLevelForSpecifier:(id)a3
{
  v3 = [(VPNSetupListController *)self encryptionType];

  return [NSNumber numberWithUnsignedInteger:v3];
}

- (void)setEAPType:(id)a3 forSpecifier:(id)a4
{
  v5 = [a3 unsignedIntegerValue];
  if (v5 != [(VPNSetupListController *)self eapType])
  {
    [(VPNSetupListController *)self setEapType:v5];
    if ([(VPNSetupListController *)self eapType])
    {
      [(VPNSetupListController *)self setAuthType:1];
    }

    [(VPNSetupListController *)self setDirty:1];

    [(VPNSetupListController *)self reloadSpecifiers];
  }
}

- (id)eapTypeForSpecifier:(id)a3
{
  v3 = [(VPNSetupListController *)self eapType];

  return [NSNumber numberWithUnsignedInteger:v3];
}

- (void)setAuthType:(id)a3 forSpecifier:(id)a4
{
  v5 = [a3 unsignedIntegerValue];
  if (v5 != [(VPNSetupListController *)self authType])
  {
    [(VPNSetupListController *)self setAuthType:v5];
    [(VPNSetupListController *)self setDirty:1];

    [(VPNSetupListController *)self reloadSpecifiers];
  }
}

- (id)authTypeForSpecifier:(id)a3
{
  v3 = [(VPNSetupListController *)self authType];

  return [NSNumber numberWithUnsignedInteger:v3];
}

- (void)setVPNGrade:(id)a3 forSpecifier:(id)a4
{
  v5 = [a3 unsignedIntegerValue];
  if (v5 != [(VPNSetupListController *)self vpnGrade])
  {
    [(VPNSetupListController *)self setVpnGrade:v5];

    [(VPNSetupListController *)self setDirty:1];
  }
}

- (id)vpnGradeForSpecifier:(id)a3
{
  v3 = [(VPNSetupListController *)self vpnGrade];

  return [NSNumber numberWithUnsignedInteger:v3];
}

- (id)vpnGradeNameForSpecifier:(id)a3
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
      v8 = [(VPNSetupListController *)self serviceID];
      v4 = [v6 appNameForServiceID:v8 withGrade:{-[VPNSetupListController vpnGrade](self, "vpnGrade")}];

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

- (void)setVPNType:(__CFString *)a3 forSpecifier:(id)a4
{
  v5 = [VPNConnectionStore connectionTypeFromVPNType:a3, a4];
  if (v5 != [(VPNSetupListController *)self currentVPNType])
  {
    [(VPNSetupListController *)self setCurrentVPNType:v5];
    [(VPNSetupListController *)self loseFocus];
    [(VPNSetupListController *)self setDirty:1];

    [(VPNSetupListController *)self reloadSpecifiers];
  }
}

- (__CFString)vpnTypeForSpecifier:(id)a3
{
  v3 = [(VPNSetupListController *)self currentVPNType];

  return [VPNConnectionStore vpnTypeFromConnectionType:v3];
}

- (id)usesCertificatesForSpecifier:(id)a3
{
  v3 = [(VPNSetupListController *)self usesCertificates];

  return [NSNumber numberWithBool:v3];
}

- (void)setUsername:(id)a3 forSpecifier:(id)a4
{
  v7 = a3;
  v5 = [(VPNSetupListController *)self account];
  v6 = [v7 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    [(VPNSetupListController *)self setAccount:v7];
    [(VPNSetupListController *)self setDirty:1];
    [(VPNSetupListController *)self updateDoneButton];
  }
}

- (void)setDisplayName:(id)a3 forSpecifier:(id)a4
{
  v8 = a3;
  v5 = [(VPNSetupListController *)self displayName];
  v6 = [v8 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    [(VPNSetupListController *)self setDisplayName:v8];
    [(VPNSetupListController *)self setDirty:1];
    [(VPNSetupListController *)self updateDoneButton];
    v7 = [(VPNSetupListController *)self serviceID];

    if (v7)
    {
      [(VPNSetupListController *)self setTitle:v8];
    }
  }
}

- (void)setServer:(id)a3 forSpecifier:(id)a4
{
  v7 = a3;
  v5 = [(VPNSetupListController *)self server];
  v6 = [v7 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    [(VPNSetupListController *)self setServer:v7];
    [(VPNSetupListController *)self setDirty:1];
    [(VPNSetupListController *)self updateDoneButton];
  }
}

- (void)setPassword:(id)a3 forSpecifier:(id)a4
{
  v9 = a3;
  v5 = [(VPNSetupListController *)self password];
  v6 = [v9 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    v7 = +[NSCharacterSet whitespaceCharacterSet];
    v8 = [v9 stringByTrimmingCharactersInSet:v7];

    [(VPNSetupListController *)self setPassword:v8];
    [(VPNSetupListController *)self setDirty:1];
    [(VPNSetupListController *)self updateDoneButton];
  }
}

- (void)setPasswordRequired:(id)a3 forSpecifier:(id)a4
{
  -[VPNSetupListController setPasswordRequired:](self, "setPasswordRequired:", [a3 BOOLValue]);
  v5 = [(VPNSetupListController *)self passwordRequired];
  v6 = [(VPNSetupListController *)self passwordSpecifier];
  v7 = [NSNumber numberWithBool:v5 ^ 1];
  [v6 setProperty:v7 forKey:PSEnabledKey];

  [(VPNSetupListController *)self setDirty:1];

  [(VPNSetupListController *)self updateDoneButton];
}

- (void)setUsesCertificates:(id)a3 forSpecifier:(id)a4
{
  v5 = [a3 BOOLValue];
  if (v5 != [(VPNSetupListController *)self usesCertificates])
  {
    [(VPNSetupListController *)self setUsesCertificates:v5];
    [(VPNSetupListController *)self setDirty:1];

    [(VPNSetupListController *)self reloadSpecifiers];
  }
}

- (void)setSharedSecret:(id)a3 forSpecifier:(id)a4
{
  v9 = a3;
  v5 = [(VPNSetupListController *)self sharedSecret];
  v6 = [v9 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    v7 = +[NSCharacterSet whitespaceCharacterSet];
    v8 = [v9 stringByTrimmingCharactersInSet:v7];

    [(VPNSetupListController *)self setSharedSecret:v8];
    [(VPNSetupListController *)self setDirty:1];
    [(VPNSetupListController *)self updateDoneButton];
  }
}

- (id)certificateObjectForSpecifier:(id)a3
{
  v4 = [(VPNSetupListController *)self certificateID];

  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = [(VPNSetupListController *)self certificateIDs];
  v6 = [(VPNSetupListController *)self certificateID];
  v7 = [v5 containsObject:v6];

  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = [(VPNSetupListController *)self certificateIDs];
  v9 = [(VPNSetupListController *)self certificateID];
  v10 = [v8 indexOfObject:v9];

  v11 = [(VPNSetupListController *)self certificateObjects];
  v12 = [v11 count];

  if (v10 < v12)
  {
    v13 = [(VPNSetupListController *)self certificateObjects];
    v14 = [v13 objectAtIndexedSubscript:v10];
  }

  else
  {
LABEL_5:
    v14 = 0;
  }

  return v14;
}

- (void)setCertificateObject:(id)a3 forSpecifier:(id)a4
{
  v25 = a3;
  v6 = a4;
  if (v25)
  {
    v7 = [(VPNSetupListController *)self certificateObjects];
    v8 = [v7 containsObject:v25];

    if (v8)
    {
      v9 = [(VPNSetupListController *)self certificateObjects];
      v10 = [v9 indexOfObject:v25];

      v11 = [(VPNSetupListController *)self certificateID];
      if (!v11)
      {
        goto LABEL_6;
      }

      v12 = v11;
      v13 = [(VPNSetupListController *)self certificateIDs];
      v14 = [(VPNSetupListController *)self certificateID];
      v15 = [v13 containsObject:v14];

      if (!v15 || (-[VPNSetupListController certificateIDs](self, "certificateIDs"), v16 = objc_claimAutoreleasedReturnValue(), -[VPNSetupListController certificateID](self, "certificateID"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v16 indexOfObject:v17], v17, v16, v10 != v18))
      {
LABEL_6:
        v19 = [(VPNSetupListController *)self certificateIDs];
        v20 = [v19 count];

        if (v10 < v20)
        {
          v21 = [(VPNSetupListController *)self certificateIDs];
          v22 = [v21 objectAtIndexedSubscript:v10];
          [(VPNSetupListController *)self setCertificateID:v22];
        }

        [(VPNSetupListController *)self setDirty:1];
        v23 = [(VPNSetupListController *)self certificateID];
        v24 = [NSNumber numberWithBool:v23 != 0];

        [(VPNSetupListController *)self setUsesCertificates:v24 forSpecifier:v6];
        [(VPNSetupListController *)self updateDoneButton];
        [(VPNSetupListController *)self reloadSpecifiers];
      }
    }
  }
}

- (void)setGroupDisplayName:(id)a3 forSpecifier:(id)a4
{
  v7 = a3;
  v5 = [(VPNSetupListController *)self groupDisplayName];
  v6 = [v7 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    [(VPNSetupListController *)self setGroupDisplayName:v7];
    [(VPNSetupListController *)self setDirty:1];
    [(VPNSetupListController *)self updateDoneButton];
  }
}

- (void)setLocalIdentifier:(id)a3 forSpecifier:(id)a4
{
  v7 = a3;
  v5 = [(VPNSetupListController *)self localIdentifier];
  v6 = [v7 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    [(VPNSetupListController *)self setLocalIdentifier:v7];
    [(VPNSetupListController *)self setDirty:1];
    [(VPNSetupListController *)self updateDoneButton];
  }
}

- (void)setRemoteIdentifier:(id)a3 forSpecifier:(id)a4
{
  v7 = a3;
  v5 = [(VPNSetupListController *)self remoteIdentifier];
  v6 = [v7 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    [(VPNSetupListController *)self setRemoteIdentifier:v7];
    [(VPNSetupListController *)self setDirty:1];
    [(VPNSetupListController *)self updateDoneButton];
  }
}

- (void)setStateForServiceID:(id)a3
{
  v42 = a3;
  v4 = [v42 copy];
  [(VPNSetupListController *)self setServiceID:v4];

  if (!v42)
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

  v5 = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v6 = [v5 objectForKey:@"service-grade"];
  -[VPNSetupListController setVpnGrade:](self, "setVpnGrade:", [v6 unsignedIntegerValue]);

  v7 = +[VPNConnectionStore sharedInstance];
  v8 = [v7 optionsForServiceID:v42 withGrade:{-[VPNSetupListController vpnGrade](self, "vpnGrade")}];

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

  v17 = [(VPNSetupListController *)self certificateID];
  v18 = [NSNumber numberWithBool:v17 != 0];
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

- (void)cancelButtonClicked:(id)a3
{
  if ([(VPNSetupListController *)self editMode])
  {
    v4 = [(VPNSetupListController *)self serviceID];
    [(VPNSetupListController *)self setStateForServiceID:v4];

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
  v4 = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v5 = [v4 objectForKeyedSubscript:@"overview-mode"];
  -[VPNSetupListController setOverviewMode:](self, "setOverviewMode:", [v5 BOOLValue]);

  v11.receiver = self;
  v11.super_class = VPNSetupListController;
  [(VPNSetupListController *)&v11 loadView];
  v6 = [*&self->PSListController_opaque[v3] userInfo];
  v7 = [v6 objectForKey:@"vpn-service-id"];
  [(VPNSetupListController *)self setStateForServiceID:v7];

  if (![(VPNSetupListController *)self overviewMode])
  {
    v8 = [(VPNSetupListController *)self navigationItem];
    v9 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"cancelButtonClicked:"];
    [v8 setLeftBarButtonItem:v9];

    v10 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"saveButtonClicked:"];
    [v8 setRightBarButtonItem:v10];

    [(VPNSetupListController *)self updateDoneButton];
  }
}

- (id)connection
{
  v3 = +[VPNConnectionStore sharedInstance];
  v4 = [(VPNSetupListController *)self serviceID];
  v5 = [v3 connectionWithServiceID:v4 withGrade:{-[VPNSetupListController vpnGrade](self, "vpnGrade")}];

  return v5;
}

- (id)statusForConnection:(id)a3
{
  v3 = [(VPNSetupListController *)self connection];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 statusText];
  }

  else
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v6 localizedStringForKey:@"NOT_CONFIGURED" value:&stru_411E8 table:@"MobileVPN"];
  }

  return v5;
}

- (id)interfaceTypeForConnection:(id)a3
{
  v4 = [a3 propertyForKey:@"VPNSubConnectionIndex"];
  if (v4)
  {
    v5 = [(VPNSetupListController *)self connection];
    v6 = [v5 interfaceTypeForSubConnection:{objc_msgSend(v4, "unsignedIntegerValue")}];
  }

  else
  {
    v6 = &stru_411E8;
  }

  return v6;
}

- (id)serverForConnection:(id)a3
{
  v3 = [(VPNSetupListController *)self connection];
  v4 = [v3 server];

  return v4;
}

- (id)usernameForConnection:(id)a3
{
  v3 = [(VPNSetupListController *)self connection];
  v4 = [v3 accountName];

  return v4;
}

- (id)typeForConnection:(id)a3
{
  v3 = [(VPNSetupListController *)self connection];
  v4 = [v3 vpnTypeLocalizedString];

  return v4;
}

- (id)localIPForSpecifier:(id)a3
{
  v4 = [a3 propertyForKey:@"VPNSubConnectionIndex"];
  v5 = [(VPNSetupListController *)self connection];
  v6 = v5;
  if (v4)
  {
    [v5 ipAddressesForSubConnection:{objc_msgSend(v4, "unsignedIntegerValue")}];
  }

  else
  {
    [v5 ipAddresses];
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

- (id)localIP2ForSpecifier:(id)a3
{
  v4 = [a3 propertyForKey:@"VPNSubConnectionIndex"];
  v5 = [(VPNSetupListController *)self connection];
  v6 = v5;
  if (v4)
  {
    [v5 ipAddressesForSubConnection:{objc_msgSend(v4, "unsignedIntegerValue")}];
  }

  else
  {
    [v5 ipAddresses];
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

- (id)remoteIPForSpecifier:(id)a3
{
  v4 = [a3 propertyForKey:@"VPNSubConnectionIndex"];
  v5 = [(VPNSetupListController *)self connection];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 remoteAddressForSubConnection:{objc_msgSend(v4, "unsignedIntegerValue")}];
  }

  else
  {
    v8 = [v5 remoteAddress];

    v9 = [(VPNSetupListController *)self connection];
    v10 = [v9 server];
    v11 = [v8 isEqualToString:v10];

    if (v11)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_21A74;
      block[3] = &unk_40B38;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }

    v12 = [(VPNSetupListController *)self connection];
    v7 = [v12 remoteAddress];
  }

  return v7;
}

- (id)timeConnectedForSpecifier:(id)a3
{
  v4 = [a3 propertyForKey:@"VPNSubConnectionIndex"];
  v5 = [(VPNSetupListController *)self connection];
  v6 = v5;
  if (v4)
  {
    [v5 elapsedTimeLocalizedStringForSubConnection:{objc_msgSend(v4, "unsignedIntegerValue")}];
  }

  else
  {
    [v5 elapsedTimeLocalizedString];
  }
  v7 = ;

  return v7;
}

- (id)tunnelType:(id)a3
{
  v3 = [(VPNSetupListController *)self connection];
  v4 = [v3 tunnelType];

  return v4;
}

- (id)getDescriptionForApp:(id)a3
{
  v3 = [a3 propertyForKey:@"AppDescription"];
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

- (void)setConnectionState:(id)a3 forSpecifier:(id)a4
{
  v6 = a3;
  v5 = [(VPNSetupListController *)self connection];
  if (v5)
  {
    if ([v6 BOOLValue])
    {
      [v5 connect];
    }

    else
    {
      [v5 disconnect];
    }
  }
}

- (id)getConnectionStateForSpecifier:(id)a3
{
  v3 = [(VPNSetupListController *)self connection];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 notDisconnectedOrDisconnecting]);

  return v4;
}

- (id)specifiers
{
  v2 = self;
  v3 = OBJC_IVAR___PSViewController__specifier;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier];
  if (!v4)
  {
    [(VPNSetupListController *)v2 settingsNavigationProxyPopWithAnimated:1];
    v23 = 0;
    goto LABEL_251;
  }

  v5 = [v4 userInfo];
  v6 = &selRef_setImageHidden_;
  v7 = +[VPNConnectionStore sharedInstance];
  v8 = sub_2791C();
  [(VPNSetupListController *)v2 setCertificateIDs:v8];

  v9 = sub_27A24();
  [(VPNSetupListController *)v2 setCertificateObjects:v9];

  v10 = &MGGetBoolAnswer_ptr;
  v11 = [(VPNSetupListController *)v2 loadSpecifiersFromPlistName:@"VPN" target:v2];
  v424 = [NSMutableArray arrayWithArray:v11];

  v420 = v7;
  if ([(VPNSetupListController *)v2 overviewMode])
  {
    v12 = [*&v2->PSListController_opaque[v3] name];
    [(VPNSetupListController *)v2 setTitle:v12];

    v13 = [v5 objectForKeyedSubscript:?];
    v14 = [v7 connectionWithServiceID:v13 withGrade:{-[VPNSetupListController vpnGrade](v2, "vpnGrade")}];

    v15 = objc_alloc_init(NSMutableArray);
    v436 = v2;
    v422 = v14;
    v423 = v15;
    v418 = v5;
    if ([v14 grade] == &dword_4 + 3 || objc_msgSend(v14, "grade") == &dword_8)
    {
      v16 = [v14 server];
      v17 = [v16 length];

      if (v17)
      {
        v18 = [NSBundle bundleForClass:objc_opt_class()];
        v19 = [v18 localizedStringForKey:@"SERVER" value:&stru_411E8 table:@"MobileVPN"];
        v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:v2 set:0 get:"serverForConnection:" detail:0 cell:4 edit:0];
        [(VPNSetupListController *)v2 setServerSpecifier:v20];

        v21 = [(VPNSetupListController *)v2 serverSpecifier];
        [v15 addObject:v21];
      }

      v22 = [(VPNSetupListController *)v2 matchDomains];
      if ([v22 count])
      {
      }

      else
      {
        v57 = [(VPNSetupListController *)v2 matchFQDNs];
        v58 = [v57 count];

        if (!v58)
        {
          v433 = 0;
LABEL_21:
          v63 = [(VPNSetupListController *)v2 matchDomains];
          v64 = [v63 count];

          if (v64)
          {
            v460 = 0u;
            v461 = 0u;
            v458 = 0u;
            v459 = 0u;
            v65 = [(VPNSetupListController *)v2 matchDomains];
            v66 = [v65 countByEnumeratingWithState:&v458 objects:v472 count:16];
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
                    objc_enumerationMutation(v65);
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

                  v73 = [PSSpecifier preferenceSpecifierNamed:v72 target:v2 set:0 get:0 detail:0 cell:4 edit:0];
                  [v433 addObject:v73];
                }

                v67 = [v65 countByEnumeratingWithState:&v458 objects:v472 count:16];
              }

              while (v67);
            }

            v6 = &selRef_setImageHidden_;
            v10 = &MGGetBoolAnswer_ptr;
          }

          v74 = [(VPNSetupListController *)v2 matchFQDNs];
          v75 = [v74 count];

          if (v75)
          {
            v456 = 0u;
            v457 = 0u;
            v454 = 0u;
            v455 = 0u;
            v76 = [(VPNSetupListController *)v2 matchFQDNs];
            v77 = [v76 countByEnumeratingWithState:&v454 objects:v471 count:16];
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
                    objc_enumerationMutation(v76);
                  }

                  v81 = [PSSpecifier preferenceSpecifierNamed:*(*(&v454 + 1) + 8 * j) target:v2 set:0 get:0 detail:0 cell:4 edit:0];
                  [v433 addObject:v81];
                }

                v78 = [v76 countByEnumeratingWithState:&v454 objects:v471 count:16];
              }

              while (v78);
            }

            v10 = &MGGetBoolAnswer_ptr;
          }

          v82 = [(VPNSetupListController *)v2 excludeDomains];
          if ([v82 count])
          {
          }

          else
          {
            v83 = [(VPNSetupListController *)v2 excludeFQDNs];
            v84 = [v83 count];

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
          v89 = [(VPNSetupListController *)v2 excludeDomains];
          v90 = [v89 count];

          if (v90)
          {
            v452 = 0u;
            v453 = 0u;
            v450 = 0u;
            v451 = 0u;
            v91 = [(VPNSetupListController *)v2 excludeDomains];
            v92 = [v91 countByEnumeratingWithState:&v450 objects:v470 count:16];
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
                    objc_enumerationMutation(v91);
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

                  v99 = [PSSpecifier preferenceSpecifierNamed:v98 target:v2 set:0 get:0 detail:0 cell:4 edit:0];
                  [v434 addObject:v99];
                }

                v93 = [v91 countByEnumeratingWithState:&v450 objects:v470 count:16];
              }

              while (v93);
            }

            v6 = &selRef_setImageHidden_;
            v10 = &MGGetBoolAnswer_ptr;
          }

          v100 = [(VPNSetupListController *)v2 excludeFQDNs];
          v101 = [v100 count];

          if (v101)
          {
            v448 = 0u;
            v449 = 0u;
            v446 = 0u;
            v447 = 0u;
            v102 = [(VPNSetupListController *)v2 excludeFQDNs];
            v103 = [v102 countByEnumeratingWithState:&v446 objects:v469 count:16];
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
                    objc_enumerationMutation(v102);
                  }

                  v107 = [PSSpecifier preferenceSpecifierNamed:*(*(&v446 + 1) + 8 * m) target:v2 set:0 get:0 detail:0 cell:4 edit:0];
                  [v434 addObject:v107];
                }

                v104 = [v102 countByEnumeratingWithState:&v446 objects:v469 count:16];
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

          v252 = [(VPNSetupListController *)v2 appName];
          if ([v252 length])
          {
            v253 = v422;
          }

          else
          {
            v253 = v422;
            if ([(VPNSetupListController *)v2 vpnGrade]== &dword_0 + 2)
            {
              v254 = [(VPNSetupListController *)v2 currentVPNType];

              if (v254 == &dword_0 + 3 || !v422)
              {
LABEL_144:
                v259 = [(VPNSetupListController *)v2 appName];
                v260 = [v259 length];

                v429 = v250;
                if (v260)
                {
                  v261 = [NSBundle bundleForClass:objc_opt_class()];
                  v262 = [v261 localizedStringForKey:@"APP_CONFIG_MESSAGE" value:&stru_411E8 table:@"MobileVPN"];
                  v263 = [(VPNSetupListController *)v2 displayName];
                  v264 = [(VPNSetupListController *)v2 appName];
                  v265 = [NSString stringWithFormat:v262, v263, v264];

                  [v419 setProperty:v265 forKey:PSFooterTextGroupKey];
                }

                if ([(VPNSetupListController *)v2 onDemandService])
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

                v270 = [v5 objectForKeyedSubscript:@"vpn-service-id"];
                v271 = [v270 copy];
                [(VPNSetupListController *)v2 setServiceID:v271];

                v272 = [v5 objectForKeyedSubscript:@"vpn-user-created"];
                -[VPNSetupListController setUserCreated:](v2, "setUserCreated:", [v272 BOOLValue]);

                v273 = [v5 objectForKeyedSubscript:@"vpn-profile-backed"];
                -[VPNSetupListController setProfileBacked:](v2, "setProfileBacked:", [v273 BOOLValue]);

                v274 = [v6 + 241 sharedInstance];
                v275 = [(VPNSetupListController *)v2 serviceID];
                v276 = [v274 isEnabledWithServiceID:v275 withGrade:{-[VPNSetupListController vpnGrade](v2, "vpnGrade")}];

                v277 = [v6 + 241 sharedInstance];
                v278 = [(VPNSetupListController *)v2 serviceID];
                v279 = [v277 uiToggleAllowedWithServiceID:v278 withGrade:{-[VPNSetupListController vpnGrade](v2, "vpnGrade")}];

                v280 = [(VPNSetupListController *)v2 vpnGrade];
                if (v276)
                {
                  if (v280 == &dword_8)
                  {
                    v24 = v250;
                    if (!v279)
                    {
                      goto LABEL_164;
                    }

                    goto LABEL_159;
                  }

                  v24 = v250;
                  if ((([(VPNSetupListController *)v2 vpnGrade]== &dword_4 + 3) & v279) != 0)
                  {
LABEL_159:
                    v281 = &selRef_disableButtonTapped_;
                    v282 = @"DEACTIVATE_CONFIGURATION";
                    goto LABEL_163;
                  }
                }

                else
                {
                  if (v280 == (&dword_0 + 2))
                  {
                    v281 = &selRef_enableButtonTapped_;
                    v282 = @"ACTIVATE_CONFIGURATION";
                    v24 = v429;
LABEL_163:
                    v283 = +[PSSpecifier emptyGroupSpecifier];
                    [v24 addObject:v283];

                    v284 = [NSBundle bundleForClass:objc_opt_class()];
                    v285 = [v284 localizedStringForKey:v282 value:&stru_411E8 table:@"MobileVPN"];
                    v286 = [PSSpecifier preferenceSpecifierNamed:v285 target:v2 set:0 get:0 detail:0 cell:13 edit:0];
                    [(VPNSetupListController *)v2 setEnableButton:v286];

                    v287 = *v281;
                    v288 = [(VPNSetupListController *)v2 enableButton];
                    [v288 setButtonAction:v287];

                    v289 = [(VPNSetupListController *)v2 enableButton];
                    [v24 addObject:v289];

                    goto LABEL_164;
                  }

                  v24 = v250;
                  if ([(VPNSetupListController *)v2 vpnGrade]== &dword_8 || [(VPNSetupListController *)v2 vpnGrade]== &dword_4 + 3)
                  {
                    v281 = &selRef_enableButtonTapped_;
                    v282 = @"ACTIVATE_CONFIGURATION";
                    goto LABEL_163;
                  }
                }

LABEL_164:
                if ([(VPNSetupListController *)v2 userCreated])
                {
                  v290 = [(VPNSetupListController *)v2 serviceID];
                  v291 = v290 != 0;
                }

                else
                {
                  v291 = 0;
                }

                if ([(VPNSetupListController *)v2 onDemandService])
                {
                  v292 = 0;
LABEL_178:
                  if (v291 || v292)
                  {
                    [(VPNSetupListController *)v2 setPasswordEditOnly:!v291];
                    v297 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:2 target:v2 action:"editButtonTapped:"];
                    v298 = [(VPNSetupListController *)v2 navigationItem];
                    [v298 setRightBarButtonItem:v297];
                  }

                  v300 = v422;
                  v299 = v423;
                  if (![(VPNSetupListController *)v2 profileBacked])
                  {
                    v301 = +[PSSpecifier emptyGroupSpecifier];
                    [v24 addObject:v301];

                    v302 = [v24 lastObject];
                    [v302 setProperty:@"SPACER_GROUP" forKey:PSIDKey];

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

                    v309 = [PSSpecifier deleteButtonSpecifierWithName:v308 target:v2 action:"deleteConfirm:"];
                    [v24 addObject:v309];
                  }

                  v310 = [v6 + 241 sharedInstance];
                  v311 = [(VPNSetupListController *)v2 serviceID];
                  v312 = [v310 getProfileIDForServiceID:v311];

                  if (v312)
                  {
                    v313 = [v422 lastStopCause];
                    if (([v313 intValue] == 13 || objc_msgSend(v313, "intValue") == 20 || objc_msgSend(v313, "intValue") == 21 || objc_msgSend(v313, "intValue") == 24) && -[VPNSetupListController vpnGrade](v2, "vpnGrade") != &dword_4 + 3 && -[VPNSetupListController vpnGrade](v2, "vpnGrade") != &dword_8)
                    {
                      v314 = +[PSSpecifier emptyGroupSpecifier];
                      [v24 addObject:v314];

                      v315 = [NSBundle bundleForClass:objc_opt_class()];
                      v316 = [v315 localizedStringForKey:@"RENEW_CERTIFICATE" value:&stru_411E8 table:@"MobileVPN"];
                      v317 = [PSSpecifier preferenceSpecifierNamed:v316 target:v2 set:0 get:0 detail:0 cell:13 edit:0];

                      v24 = v429;
                      [v317 setButtonAction:"renewCertificate:"];
                      [v429 addObject:v317];
                    }
                  }

                  v318 = [(VPNSetupListController *)v2 includedBundleIDs];
                  if (v318)
                  {
                    v319 = v318;
                    v320 = [(VPNSetupListController *)v2 includedBundleIDs];
                    v321 = [v320 count];

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
                      obj = [(VPNSetupListController *)v2 includedBundleIDs];
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
                            v333 = [v331 localizedName];

                            if (v333)
                            {
                              v334 = v332 == 0;
                            }

                            else
                            {
                              v334 = 0;
                            }

                            if (v334)
                            {
                              v335 = [PSSpecifier preferenceSpecifierNamed:v333 target:v436 set:0 get:"getDescriptionForApp:" detail:0 cell:4 edit:0];
                              v336 = [(VPNSetupListController *)v436 includedBundleIDs];
                              v337 = [v336 objectForKeyedSubscript:v329];
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

                      v5 = v418;
                      v2 = v436;
                      v300 = v422;
                      v299 = v423;
                      v24 = v429;
                    }
                  }

                  v342 = OBJC_IVAR___PSListController__specifiers;
                  objc_storeStrong(&v2->PSListController_opaque[OBJC_IVAR___PSListController__specifiers], v24);
                  v23 = *&v2->PSListController_opaque[v342];

                  v343 = v433;
                  v344 = v434;
                  v345 = v421;
                  goto LABEL_250;
                }

                v293 = [v6 + 241 sharedInstance];
                v294 = [(VPNSetupListController *)v2 serviceID];
                v295 = [v293 getProfileIDForServiceID:v294];
                if (!v295)
                {
                  v292 = 0;
                  goto LABEL_177;
                }

                v296 = [(VPNSetupListController *)v2 appName];
                if ([v296 length] || -[VPNSetupListController currentVPNType](v2, "currentVPNType") == &dword_0 + 3 || -[VPNSetupListController vpnGrade](v2, "vpnGrade") || -[VPNSetupListController alwaysPrompt](v2, "alwaysPrompt"))
                {
                  goto LABEL_174;
                }

                if ([(VPNSetupListController *)v2 currentVPNType]!= &dword_4)
                {
                  v292 = 1;
                  goto LABEL_175;
                }

                if ([(VPNSetupListController *)v2 eapType]!= &dword_0 + 1)
                {
LABEL_174:
                  v292 = 0;
                }

                else
                {
                  v400 = [v253 accountName];
                  v292 = [v400 length] != 0;
                }

LABEL_175:

LABEL_177:
                v24 = v429;
                goto LABEL_178;
              }

              v255 = [NSBundle bundleForClass:objc_opt_class()];
              v252 = [v255 localizedStringForKey:@"STATUS" value:&stru_411E8 table:@"MobileVPN"];

              v256 = [PSSpecifier preferenceSpecifierNamed:v252 target:v2 set:"setConnectionState:forSpecifier:" get:"getConnectionStateForSpecifier:" detail:0 cell:6 edit:0];
              v466 = PSCellClassKey;
              v467 = objc_opt_class();
              v257 = [NSDictionary dictionaryWithObjects:&v467 forKeys:&v466 count:1];
              [v256 setProperties:v257];

              [(VPNSetupListController *)v2 setConnectSpecifier:v256];
              v258 = [(VPNSetupListController *)v2 connectSpecifier];
              [v250 addObject:v258];
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

    v108 = [v14 connected];
    v109 = [(VPNSetupListController *)v2 vpnGrade];
    if (v108)
    {
      if (v109 != &dword_0 + 3)
      {
        v346 = [v14 server];
        v347 = [v346 length];

        if (v347)
        {
          v348 = [NSBundle bundleForClass:objc_opt_class()];
          v349 = [v348 localizedStringForKey:@"SERVER" value:&stru_411E8 table:@"MobileVPN"];
          v350 = [PSSpecifier preferenceSpecifierNamed:v349 target:v2 set:0 get:"serverForConnection:" detail:0 cell:4 edit:0];
          [(VPNSetupListController *)v2 setServerSpecifier:v350];

          v351 = [(VPNSetupListController *)v2 serverSpecifier];
          [v15 addObject:v351];
        }

        v352 = [v422 accountName];
        v353 = [v352 length];

        if (v353)
        {
          v354 = [NSBundle bundleForClass:objc_opt_class()];
          v355 = [v354 localizedStringForKey:@"ACCOUNT_NAME" value:&stru_411E8 table:@"MobileVPN"];
          v356 = [PSSpecifier preferenceSpecifierNamed:v355 target:v2 set:0 get:"usernameForConnection:" detail:0 cell:4 edit:0];
          [(VPNSetupListController *)v2 setAccountSpecifier:v356];

          v357 = [(VPNSetupListController *)v2 accountSpecifier];
          [v15 addObject:v357];
        }

        v358 = [v422 remoteAddress];
        v359 = [v358 length];

        if (v359)
        {
          v360 = [NSBundle bundleForClass:objc_opt_class()];
          v361 = [v360 localizedStringForKey:@"REMOTE_IP" value:&stru_411E8 table:@"MobileVPN"];
          v362 = [PSSpecifier preferenceSpecifierNamed:v361 target:v2 set:0 get:"remoteIPForSpecifier:" detail:0 cell:4 edit:0];
          [(VPNSetupListController *)v2 setServerAddressSpecifier:v362];

          v363 = [(VPNSetupListController *)v2 serverAddressSpecifier];
          [v15 addObject:v363];
        }

        v364 = [v422 ipAddresses];
        if ([v364 count])
        {
          v365 = [v422 ipAddresses];
          v366 = [v365 objectAtIndexedSubscript:0];
          v367 = [v366 length];

          if (v367)
          {
            v368 = [NSBundle bundleForClass:objc_opt_class()];
            v369 = [v368 localizedStringForKey:@"LOCAL_IP" value:&stru_411E8 table:@"MobileVPN"];
            v370 = [PSSpecifier preferenceSpecifierNamed:v369 target:v2 set:0 get:"localIPForSpecifier:" detail:0 cell:4 edit:0];

            [v15 addObject:v370];
LABEL_257:
            v389 = [v422 ipAddresses];
            if ([v389 count] <= 1)
            {
            }

            else
            {
              v390 = [v422 ipAddresses];
              v391 = [v390 objectAtIndexedSubscript:1];
              v392 = [v391 length];

              if (v392)
              {
                v393 = [NSBundle bundleForClass:objc_opt_class()];
                v394 = [v393 localizedStringForKey:@"LOCAL_IP" value:&stru_411E8 table:@"MobileVPN"];
                v395 = [PSSpecifier preferenceSpecifierNamed:v394 target:v2 set:0 get:"localIP2ForSpecifier:" detail:0 cell:4 edit:0];

                [v15 addObject:v395];
                v370 = v395;
              }
            }

            v396 = [NSBundle bundleForClass:objc_opt_class()];
            v397 = [v396 localizedStringForKey:@"CONNECT_TIME" value:&stru_411E8 table:@"MobileVPN"];
            v398 = [PSSpecifier preferenceSpecifierNamed:v397 target:v2 set:0 get:"timeConnectedForSpecifier:" detail:0 cell:4 edit:0];
            [(VPNSetupListController *)v2 setTimeSpecifier:v398];

            v399 = [(VPNSetupListController *)v2 timeSpecifier];
            [v15 addObject:v399];

            if (os_variant_has_internal_ui() && [(VPNSetupListController *)v2 currentVPNType]== &dword_4 && ([(VPNSetupListController *)v2 vpnGrade]== &dword_0 + 1 || ![(VPNSetupListController *)v2 vpnGrade]))
            {
              v401 = [NSBundle bundleForClass:objc_opt_class()];
              v402 = [v401 localizedStringForKey:@"TUNNEL_TYPE" value:&stru_411E8 table:@"MobileVPN"];
              v403 = [PSSpecifier preferenceSpecifierNamed:v402 target:v2 set:0 get:"tunnelType:" detail:0 cell:4 edit:0];

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
                v412 = [v422 matchDomains];
                v413 = [v412 countByEnumeratingWithState:&v442 objects:v468 count:16];
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
                        objc_enumerationMutation(v412);
                      }

                      v417 = [PSSpecifier preferenceSpecifierNamed:*(*(&v442 + 1) + 8 * n) target:v2 set:0 get:0 detail:0 cell:4 edit:0];
                      [v433 addObject:v417];
                    }

                    v414 = [v412 countByEnumeratingWithState:&v442 objects:v468 count:16];
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
      [(VPNSetupListController *)v2 setTimeSpecifierArray:v110];

      v430 = [v14 subConnectionCount];
      if (v430)
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
          v151 = [(VPNSetupListController *)v436 timeSpecifierArray];
          [v151 addObject:v149];

          v112 = v137 + 1;
        }

        while (v430 != v112);
        v433 = 0;
        v434 = 0;
        v5 = v418;
        v2 = v436;
        v6 = &selRef_setImageHidden_;
LABEL_75:
        v10 = &MGGetBoolAnswer_ptr;
        goto LABEL_135;
      }
    }

    else if (v109 != &dword_0 + 3)
    {
      v238 = [v14 server];
      v239 = [v238 length];

      if (v239)
      {
        v240 = [NSBundle bundleForClass:objc_opt_class()];
        v241 = [v240 localizedStringForKey:@"SERVER" value:&stru_411E8 table:@"MobileVPN"];
        v242 = [PSSpecifier preferenceSpecifierNamed:v241 target:v2 set:0 get:"serverForConnection:" detail:0 cell:4 edit:0];
        [(VPNSetupListController *)v2 setServerSpecifier:v242];

        v243 = [(VPNSetupListController *)v2 serverSpecifier];
        [v15 addObject:v243];
      }

      v244 = [v422 accountName];
      v245 = [v244 length];

      if (v245)
      {
        v246 = [NSBundle bundleForClass:objc_opt_class()];
        v247 = [v246 localizedStringForKey:@"ACCOUNT_NAME" value:&stru_411E8 table:@"MobileVPN"];
        v248 = [PSSpecifier preferenceSpecifierNamed:v247 target:v2 set:0 get:"usernameForConnection:" detail:0 cell:4 edit:0];
        [(VPNSetupListController *)v2 setAccountSpecifier:v248];

        v249 = [(VPNSetupListController *)v2 accountSpecifier];
        [v15 addObject:v249];
      }
    }

    v421 = 0;
    v433 = 0;
    v434 = 0;
    goto LABEL_135;
  }

  if (![(VPNSetupListController *)v2 passwordEditOnly])
  {
    v39 = [v424 specifierForID:@"VPN_GRADE"];
    [(VPNSetupListController *)v2 setVpnGradeStaticSpecifier:v39];

    v40 = [v424 specifierForID:@"GROUP_NAME"];
    [(VPNSetupListController *)v2 setGroupNameSpecifier:v40];

    v41 = [v424 specifierForID:@"LOCAL_IDENTIFIER"];
    [(VPNSetupListController *)v2 setLocalIdentifierSpecifier:v41];

    v42 = [v424 specifierForID:@"REMOTE_IDENTIFIER"];
    [(VPNSetupListController *)v2 setRemoteIdentifierSpecifier:v42];

    v43 = [v424 specifierForID:@"EAP_TYPE"];
    [(VPNSetupListController *)v2 setEapTypeSpecifier:v43];

    v44 = [v424 specifierForID:@"CERTIFICATE_BASED"];
    [(VPNSetupListController *)v2 setUseCertificateSwitchSpecifier:v44];

    v45 = [v424 specifierForID:@"CERTIFICATE_IKEV2"];
    [(VPNSetupListController *)v2 setAuthTypeSpecifier:v45];

    v46 = [v424 specifierForID:@"CERTIFICATE_LIST"];
    [(VPNSetupListController *)v2 setCertificateListSpecifier:v46];

    v47 = [(VPNSetupListController *)v2 certificateObjects];
    if ([v47 count])
    {
      v48 = [(VPNSetupListController *)v2 certificateObjects];
      v49 = [v48 count];
      v50 = [(VPNSetupListController *)v2 certificateIDs];
      v51 = [v50 count];

      if (v49 == v51)
      {
        v52 = [(VPNSetupListController *)v2 certificateListSpecifier];
        v53 = PSEnabledKey;
        v54 = &__kCFBooleanTrue;
        [v52 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];

        v55 = [(VPNSetupListController *)v2 certificateListSpecifier];
        v56 = [(VPNSetupListController *)v2 certificateObjects];
        [v55 setValues:v56];

        goto LABEL_99;
      }
    }

    else
    {
    }

    v55 = [(VPNSetupListController *)v2 certificateListSpecifier];
    v53 = PSEnabledKey;
    v54 = &__kCFBooleanFalse;
    [v55 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
LABEL_99:

    v159 = [(VPNSetupListController *)v2 useCertificateSwitchSpecifier];
    [v159 setProperty:v54 forKey:v53];

    v160 = [v424 specifierForID:@"SECRET"];
    [(VPNSetupListController *)v2 setSharedSecretSpecifier:v160];

    v161 = [v424 specifierForID:@"ENCRYPTION_LEVEL"];
    [(VPNSetupListController *)v2 setEncryptionTypeSpecifier:v161];

    v162 = +[UIDevice currentDevice];
    v163 = [v162 userInterfaceIdiom];

    if ((v163 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      v164 = [(VPNSetupListController *)v2 encryptionTypeSpecifier];
      v165 = [NSBundle bundleForClass:objc_opt_class()];
      v166 = [v165 localizedStringForKey:@"ENCRYPTION_LEVEL_ABBREVIATED" value:&stru_411E8 table:@"MobileVPN"];
      [v164 setName:v166];
    }

    v167 = [v424 specifierForID:@"EAP_RSA"];
    [(VPNSetupListController *)v2 setRsaSpecifier:v167];

    v168 = [v424 specifierForID:@"TYPE_SPECIFIER"];
    v462[0] = v168;
    v169 = [v424 specifierForID:@"TYPE_GROUP"];
    v462[1] = v169;
    v170 = [NSArray arrayWithObjects:v462 count:2];
    [(VPNSetupListController *)v2 setTypeTabSpecifiers:v170];

    v171 = [v424 specifierForID:@"SERVER"];
    [(VPNSetupListController *)v2 setEditServerSpecifier:v171];

    v172 = [v424 specifierForID:@"CISCO_IMAGE_GROUP"];
    [(VPNSetupListController *)v2 setCiscoImageSpecifier:v172];

    v173 = [v424 specifierForID:@"PASSWORD"];
    [(VPNSetupListController *)v2 setPasswordSpecifier:v173];

    v174 = [(VPNSetupListController *)v2 passwordSpecifier];
    v175 = [NSNumber numberWithBool:[(VPNSetupListController *)v2 passwordRequired]^ 1];
    [v174 setProperty:v175 forKey:v53];

    v176 = [v424 specifierForID:@"DISPLAY_NAME"];
    [(VPNSetupListController *)v2 setDisplayNameSpecifier:v176];

    if ([(VPNSetupListController *)v2 currentVPNType]== &dword_4)
    {
      v177 = @"USERNAME";
    }

    else
    {
      v177 = @"ACCOUNT_NAME";
    }

    v178 = [v424 specifierForID:v177];
    [(VPNSetupListController *)v2 setAccountSpecifier:v178];

    v179 = [(VPNSetupListController *)v2 accountSpecifier];
    [v179 setKeyboardType:0 autoCaps:0 autoCorrection:0];

    v180 = [v424 specifierForID:@"SEND_ALL_TRAFFIC"];
    [(VPNSetupListController *)v2 setSendAllTrafficSpecifier:v180];

    v181 = [v424 specifierForID:@"PROXY_LABEL"];
    [(VPNSetupListController *)v2 setProxyLabelSpecifier:v181];

    v182 = [NSArray alloc];
    v183 = [(VPNSetupListController *)v2 proxyLabelSpecifier];
    v184 = [v424 specifierForID:@"PROXY_TYPE"];
    v185 = [v182 initWithObjects:{v183, v184, 0}];
    [(VPNSetupListController *)v2 setProxyGroupSpecifiers:v185];

    v186 = [NSArray alloc];
    v187 = [v424 specifierForID:@"PROXY_GROUP"];
    v188 = [v424 specifierForID:@"PROXY_URL"];
    v189 = [v186 initWithObjects:{v187, v188, 0}];
    [(VPNSetupListController *)v2 setPacSpecifiers:v189];

    v190 = [NSArray alloc];
    v191 = [v424 specifierForID:@"PROXY_GROUP"];
    v192 = [v424 specifierForID:@"PROXY_SERVER"];
    v193 = [v424 specifierForID:@"PROXY_PORT"];
    v194 = [v424 specifierForID:@"PROXY_AUTHENTICATION"];
    v195 = [v190 initWithObjects:{v191, v192, v193, v194, 0}];
    [(VPNSetupListController *)v2 setManualProxySpecifiers:v195];

    v196 = [NSArray alloc];
    v197 = [v424 specifierForID:@"PROXY_USERNAME"];
    v198 = [v424 specifierForID:@"PROXY_PASSWORD"];
    v199 = [v196 initWithObjects:{v197, v198, 0}];
    [(VPNSetupListController *)v2 setProxyAuthSpecifiers:v199];

    v200 = [(VPNSetupListController *)v2 serviceID];

    if (!v200)
    {
      v201 = [*&v2->PSListController_opaque[v3] userInfo];
      v202 = [v201 objectForKey:@"vpn-service-id"];
      v203 = [v202 copy];
      [(VPNSetupListController *)v2 setServiceID:v203];
    }

    v204 = [(VPNSetupListController *)v2 serviceID];

    if (v204)
    {
      v205 = [*&v2->PSListController_opaque[v3] name];
      [(VPNSetupListController *)v2 setTitle:v205];
    }

    v206 = [*&v2->PSListController_opaque[v3] userInfo];
    v207 = [v206 objectForKey:@"vpn-user-created"];
    -[VPNSetupListController setUserCreated:](v2, "setUserCreated:", [v207 BOOLValue]);

    v208 = [*&v2->PSListController_opaque[v3] userInfo];
    v209 = [v208 objectForKey:@"vpn-profile-backed"];
    -[VPNSetupListController setProfileBacked:](v2, "setProfileBacked:", [v209 BOOLValue]);

    v24 = objc_alloc_init(NSMutableArray);
    v210 = [(VPNSetupListController *)v2 serviceID];

    if (v210)
    {
      if ([(VPNSetupListController *)v2 currentVPNType]== &dword_0 + 2)
      {
        v211 = [(VPNSetupListController *)v2 ciscoImageSpecifier];

        if (v211)
        {
          v212 = [(VPNSetupListController *)v2 ciscoImageSpecifier];
          [v24 addObject:v212];

          v213 = [(VPNSetupListController *)v2 ciscoImageSpecifier];
          [v213 setProperty:&off_43680 forKey:@"VisibleOnInit"];
        }
      }

      v214 = [(VPNSetupListController *)v2 vpnGradeStaticSpecifier];
      [v24 addObject:v214];

      v215 = +[PSSpecifier emptyGroupSpecifier];
      [v24 addObject:v215];
    }

    else
    {
      v216 = [(VPNSetupListController *)v2 ciscoImageSpecifier];

      if (v216)
      {
        v217 = [(VPNSetupListController *)v2 ciscoImageSpecifier];
        [v24 addObject:v217];

        v218 = [(VPNSetupListController *)v2 ciscoImageSpecifier];
        v219 = [NSNumber numberWithBool:[(VPNSetupListController *)v2 currentVPNType]== &dword_0 + 2];
        [v218 setProperty:v219 forKey:@"VisibleOnInit"];
      }

      v215 = [(VPNSetupListController *)v2 typeTabSpecifiers];
      [v24 addObjectsFromArray:v215];
    }

    if ([(VPNSetupListController *)v2 userCreated]|| ([(VPNSetupListController *)v2 serviceID], v220 = objc_claimAutoreleasedReturnValue(), v220, !v220))
    {
      v221 = [(VPNSetupListController *)v2 displayNameSpecifier];
      [v24 addObject:v221];
    }

    v222 = [(VPNSetupListController *)v2 editServerSpecifier];
    [v24 addObject:v222];

    if ([(VPNSetupListController *)v2 currentVPNType]== &dword_4)
    {
      v223 = [(VPNSetupListController *)v2 remoteIdentifierSpecifier];
      [v24 addObject:v223];

      v224 = [(VPNSetupListController *)v2 localIdentifierSpecifier];
      [v24 addObject:v224];

      v225 = [NSBundle bundleForClass:objc_opt_class()];
      v226 = [v225 localizedStringForKey:@"AUTHENTICATION" value:&stru_411E8 table:@"MobileVPN"];
      v227 = [PSSpecifier groupSpecifierWithName:v226];
      [v24 addObject:v227];

      v228 = [(VPNSetupListController *)v2 eapTypeSpecifier];
      [v24 addObject:v228];

      if (![(VPNSetupListController *)v2 eapType])
      {
        v229 = [(VPNSetupListController *)v2 authTypeSpecifier];
        [v24 addObject:v229];
      }

      if ([(VPNSetupListController *)v2 eapType]== &dword_0 + 1)
      {
        v230 = [(VPNSetupListController *)v2 accountSpecifier];
        [v24 addObject:v230];

        v231 = [(VPNSetupListController *)v2 passwordSpecifier];
        [v24 addObject:v231];
      }

      if ([(VPNSetupListController *)v2 eapType]== &dword_0 + 2 || [(VPNSetupListController *)v2 authType]== &dword_0 + 1 && ![(VPNSetupListController *)v2 eapType])
      {
        v232 = [(VPNSetupListController *)v2 certificateListSpecifier];
        [v24 addObject:v232];
      }

      if ([(VPNSetupListController *)v2 authType])
      {
LABEL_238:
        v373 = [(VPNSetupListController *)v2 proxyGroupSpecifiers];
        [v24 addObjectsFromArray:v373];

        v374 = [v24 specifierForID:@"PROXY_TYPE"];
        v375 = [(VPNSetupListController *)v2 proxyType:v374];
        v376 = [v375 intValue];

        if (v376 == 2)
        {
          v380 = [(VPNSetupListController *)v2 pacSpecifiers];
        }

        else
        {
          if (v376 != 1)
          {
            goto LABEL_244;
          }

          v377 = [(VPNSetupListController *)v2 manualProxySpecifiers];
          [v24 addObjectsFromArray:v377];

          v378 = [(VPNSetupListController *)v2 proxyUsesAuthentication:0];
          v379 = [v378 BOOLValue];

          if (!v379)
          {
LABEL_244:
            v382 = OBJC_IVAR___PSListController__specifiers;
            objc_storeStrong(&v2->PSListController_opaque[OBJC_IVAR___PSListController__specifiers], v24);
            v383 = [(VPNSetupListController *)v2 serviceID];
            if (v383)
            {
            }

            else
            {
              v384 = +[UIDevice currentDevice];
              v385 = [v384 userInterfaceIdiom];

              if ((v385 & 0xFFFFFFFFFFFFFFFBLL) != 1)
              {
                v386 = [NSBundle bundleForClass:objc_opt_class()];
                v388 = [v386 localizedStringForKey:@"ADD_VPN_ABBREVIATED" value:&stru_411E8 table:@"MobileVPN"];
                [(VPNSetupListController *)v2 setTitle:v388];

                goto LABEL_248;
              }
            }

            v386 = [(VPNSetupListController *)v2 displayName];
            [(VPNSetupListController *)v2 setTitle:v386];
LABEL_248:

            v23 = *&v2->PSListController_opaque[v382];
            goto LABEL_249;
          }

          v380 = [(VPNSetupListController *)v2 proxyAuthSpecifiers];
        }

        v381 = v380;
        [v24 addObjectsFromArray:v380];

        goto LABEL_244;
      }
    }

    else
    {
      v233 = [(VPNSetupListController *)v2 currentVPNType];
      v234 = [(VPNSetupListController *)v2 accountSpecifier];
      [v24 addObject:v234];

      if (v233 != &dword_0 + 2)
      {
        v304 = [(VPNSetupListController *)v2 rsaSpecifier];
        [v24 addObject:v304];

        if (![(VPNSetupListController *)v2 useRSASecurID])
        {
          v305 = [(VPNSetupListController *)v2 passwordSpecifier];
          [v24 addObject:v305];
        }

        v306 = [(VPNSetupListController *)v2 sharedSecretSpecifier];
        [v24 addObject:v306];

        v237 = [(VPNSetupListController *)v2 sendAllTrafficSpecifier];
        goto LABEL_237;
      }

      v235 = [(VPNSetupListController *)v2 passwordSpecifier];
      [v24 addObject:v235];

      v236 = [(VPNSetupListController *)v2 useCertificateSwitchSpecifier];
      [v24 addObject:v236];

      if ([(VPNSetupListController *)v2 usesCertificates])
      {
        v237 = [(VPNSetupListController *)v2 certificateListSpecifier];
LABEL_237:
        v372 = v237;
        [v24 addObject:v237];

        goto LABEL_238;
      }

      v371 = [(VPNSetupListController *)v2 groupNameSpecifier];
      [v24 addObject:v371];
    }

    v237 = [(VPNSetupListController *)v2 sharedSecretSpecifier];
    goto LABEL_237;
  }

  v24 = objc_alloc_init(NSMutableArray);
  v25 = [v424 specifierForID:@"VPN_GRADE"];
  [v24 addObject:v25];

  v26 = [v5 objectForKeyedSubscript:@"vpn-service-id"];
  v27 = [v7 connectionWithServiceID:v26 withGrade:{-[VPNSetupListController vpnGrade](v2, "vpnGrade")}];

  v28 = [v27 server];
  v29 = [v28 length];

  if (v29)
  {
    v30 = [NSBundle bundleForClass:objc_opt_class()];
    v31 = [v30 localizedStringForKey:@"SERVER" value:&stru_411E8 table:@"MobileVPN"];
    v32 = [PSSpecifier preferenceSpecifierNamed:v31 target:v2 set:0 get:"serverForConnection:" detail:0 cell:4 edit:0];
    [(VPNSetupListController *)v2 setServerSpecifier:v32];

    v33 = [(VPNSetupListController *)v2 serverSpecifier];
    [v24 addObject:v33];
  }

  if ([(VPNSetupListController *)v2 currentVPNType]!= &dword_4)
  {
    v36 = [v424 specifierForID:@"ACCOUNT_NAME"];
    [(VPNSetupListController *)v2 setAccountSpecifier:v36];
    goto LABEL_95;
  }

  v34 = [v27 accountName];
  v35 = [v34 length];

  if (v35)
  {
    v36 = [NSBundle bundleForClass:objc_opt_class()];
    v37 = [v36 localizedStringForKey:@"ACCOUNT_NAME" value:&stru_411E8 table:@"MobileVPN"];
    v38 = [PSSpecifier preferenceSpecifierNamed:v37 target:v2 set:0 get:"usernameForConnection:" detail:0 cell:4 edit:0];
    [(VPNSetupListController *)v2 setAccountSpecifier:v38];

LABEL_95:
    v152 = [(VPNSetupListController *)v2 accountSpecifier];
    [v24 addObject:v152];
  }

  v153 = [v424 specifierForID:@"PASSWORD"];
  [(VPNSetupListController *)v2 setPasswordSpecifier:v153];

  v154 = [(VPNSetupListController *)v2 passwordSpecifier];
  v155 = [NSNumber numberWithBool:[(VPNSetupListController *)v2 passwordRequired]^ 1];
  [v154 setProperty:v155 forKey:PSEnabledKey];

  v156 = [(VPNSetupListController *)v2 passwordSpecifier];
  [v24 addObject:v156];

  v157 = OBJC_IVAR___PSListController__specifiers;
  objc_storeStrong(&v2->PSListController_opaque[OBJC_IVAR___PSListController__specifiers], v24);
  v158 = [(VPNSetupListController *)v2 displayName];
  [(VPNSetupListController *)v2 setTitle:v158];

  v23 = *&v2->PSListController_opaque[v157];
LABEL_249:
  v345 = 0;
  v344 = 0;
  v343 = 0;
  v299 = 0;
LABEL_250:

LABEL_251:

  return v23;
}

- (void)renewCertificate:(id)a3
{
  v4 = +[VPNConnectionStore sharedInstance];
  v5 = [(VPNSetupListController *)self serviceID];
  v8 = [v4 getProfileIDForServiceID:v5];

  if (v8)
  {
    v6 = +[MCProfileConnection sharedConnection];
    [v6 showProfileErrorUIWithProfileIdentifier:v8 outError:0];

    WeakRetained = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__parentController]);
    [WeakRetained dismiss];
  }
}

@end