@interface VPNConnection
+ (id)statusTextForStatus:(unint64_t)a3;
- (VPNConnection)initWithServiceID:(id)a3 options:(id)a4;
- (__CFString)vpnType;
- (id)_fullOptions;
- (id)alertText;
- (id)connectTimeForSubConnection:(unint64_t)a3;
- (id)convertTimeToString:(unint64_t)a3;
- (id)elapsedTimeLocalizedString;
- (id)elapsedTimeLocalizedStringForSubConnection:(unint64_t)a3;
- (id)interfaceTypeForSubConnection:(unint64_t)a3;
- (id)ipAddressesForSubConnection:(unint64_t)a3;
- (id)remoteAddressForSubConnection:(unint64_t)a3;
- (id)statusText;
- (id)tunnelType;
- (id)vpnTypeLocalizedString;
- (unint64_t)elapsedTimeSinceStartTime:(id)a3;
- (unint64_t)status;
- (unint64_t)subConnectionCount;
- (void)connect;
- (void)dealloc;
- (void)disconnect;
- (void)updateWithOptions:(id)a3;
@end

@implementation VPNConnection

- (VPNConnection)initWithServiceID:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  v43.receiver = self;
  v43.super_class = VPNConnection;
  v9 = [(VPNConnection *)&v43 init];
  if (v9)
  {
    objc_initWeak(&location, v9);
    v10 = [v8 objectForKey:@"VPNEnabled"];
    v9->_enabled = [v10 BOOLValue];

    objc_storeStrong(&v9->_serviceID, a3);
    v11 = [v8 objectForKey:@"dispName"];
    displayName = v9->_displayName;
    v9->_displayName = v11;

    v13 = [v8 objectForKey:@"VPNApplicationBundleID"];
    bundleID = v9->_bundleID;
    v9->_bundleID = v13;

    v15 = dispatch_queue_create("VPNConnection", 0);
    queue = v9->_queue;
    v9->_queue = v15;

    v17 = [v8 objectForKey:@"VPNGrade"];
    v9->_grade = [v17 unsignedIntegerValue];

    if (v9->_grade == 3)
    {
      v18 = objc_alloc_init(NSMutableArray);
      subConnections = v9->_subConnections;
      v9->_subConnections = v18;
    }

    if (v9->_queue)
    {
      *buf = 0;
      *&buf[8] = 0;
      [(NSUUID *)v9->_serviceID getUUIDBytes:buf];
      v20 = v9->_grade - 2;
      if (v20 < 8)
      {
        v21 = dword_3C2F8[v20];
      }

      v22 = ne_session_create();
      v9->_session = v22;
      v9->_session_status = 1;
      v23 = objc_loadWeakRetained(&location);
      sub_4760(v23);

      if (v9->_session)
      {
        v24 = v9->_queue;
        objc_copyWeak(v41, &location);
        v41[1] = v22;
        ne_session_set_event_handler();
        objc_destroyWeak(v41);
      }
    }

    v25 = [v8 objectForKey:@"VPNType"];
    v9->_vpnConnectionType = [v25 unsignedIntegerValue];

    v26 = [v8 objectForKey:@"authorization"];
    accountName = v9->_accountName;
    v9->_accountName = v26;

    v28 = [v8 objectForKey:@"server"];
    server = v9->_server;
    v9->_server = v28;

    v30 = [v8 objectForKey:@"securID"];
    v9->_useRSASecurID = [v30 BOOLValue];

    v31 = [v8 objectForKey:@"secret"];
    sharedSecret = v9->_sharedSecret;
    v9->_sharedSecret = v31;

    v33 = [v8 objectForKey:@"password"];
    password = v9->_password;
    v9->_password = v33;

    v35 = [v8 objectForKey:@"VPNCertificate"];
    certificate = v9->_certificate;
    v9->_certificate = v35;

    v9->_isProviderAvailable = 1;
    v37 = [v8 objectForKey:@"VPNOnDemandUserOverrideDisabled"];
    v9->_onDemandUserOverrideDisabled = [v37 BOOLValue];

    v38 = [v8 objectForKey:@"VPNIsPerApp"];
    v9->_isPerApp = [v38 BOOLValue];

    objc_destroyWeak(&location);
  }

  v39 = sub_46D8();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    v45 = 2112;
    v46 = v8;
    _os_log_debug_impl(&dword_0, v39, OS_LOG_TYPE_DEBUG, "New VPN service %@ for service %@, options %@", buf, 0x20u);
  }

  return v9;
}

- (void)updateWithOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"VPNEnabled"];
  self->_enabled = [v5 BOOLValue];

  v6 = [v4 objectForKey:@"dispName"];
  displayName = self->_displayName;
  self->_displayName = v6;

  v8 = [v4 objectForKey:@"VPNApplicationBundleID"];
  bundleID = self->_bundleID;
  self->_bundleID = v8;

  v10 = [v4 objectForKey:@"authorization"];
  accountName = self->_accountName;
  self->_accountName = v10;

  v12 = [v4 objectForKey:@"server"];
  server = self->_server;
  self->_server = v12;

  v14 = [v4 objectForKey:@"securID"];
  self->_useRSASecurID = [v14 BOOLValue];

  v15 = [v4 objectForKey:@"secret"];
  sharedSecret = self->_sharedSecret;
  self->_sharedSecret = v15;

  v17 = [v4 objectForKey:@"password"];
  password = self->_password;
  self->_password = v17;

  v19 = [v4 objectForKey:@"VPNCertificate"];

  certificate = self->_certificate;
  self->_certificate = v19;
}

- (void)dealloc
{
  if ([(VPNConnection *)self session])
  {
    [(VPNConnection *)self session];
    ne_session_cancel();
    [(VPNConnection *)self setSession:0];
  }

  v3.receiver = self;
  v3.super_class = VPNConnection;
  [(VPNConnection *)&v3 dealloc];
}

- (unint64_t)subConnectionCount
{
  subConnections = self->_subConnections;
  if (subConnections)
  {
    return [(NSMutableArray *)subConnections count];
  }

  else
  {
    return 1;
  }
}

- (id)ipAddressesForSubConnection:(unint64_t)a3
{
  subConnections = self->_subConnections;
  if (subConnections)
  {
    if ([(NSMutableArray *)subConnections count]<= a3)
    {
      v7 = &__NSArray0__struct;
    }

    else
    {
      v6 = [(NSMutableArray *)self->_subConnections objectAtIndexedSubscript:a3];
      v7 = [v6 objectForKeyedSubscript:off_49D60];
    }
  }

  else
  {
    v7 = [(VPNConnection *)self sessionIPAddresses];
  }

  return v7;
}

- (id)remoteAddressForSubConnection:(unint64_t)a3
{
  subConnections = self->_subConnections;
  if (subConnections)
  {
    if ([(NSMutableArray *)subConnections count]<= a3)
    {
      v7 = &stru_411E8;
    }

    else
    {
      v6 = [(NSMutableArray *)self->_subConnections objectAtIndexedSubscript:a3];
      v7 = [v6 objectForKeyedSubscript:off_49D68];
    }
  }

  else
  {
    v7 = [(VPNConnection *)self sessionRemoteAddress];
  }

  return v7;
}

- (id)connectTimeForSubConnection:(unint64_t)a3
{
  subConnections = self->_subConnections;
  if (subConnections)
  {
    if ([(NSMutableArray *)subConnections count]<= a3)
    {
      v7 = &off_43548;
    }

    else
    {
      v6 = [(NSMutableArray *)self->_subConnections objectAtIndexedSubscript:a3];
      v7 = [v6 objectForKeyedSubscript:off_49D70];
    }
  }

  else
  {
    v7 = [(VPNConnection *)self sessionConnectTime];
  }

  return v7;
}

- (id)interfaceTypeForSubConnection:(unint64_t)a3
{
  subConnections = self->_subConnections;
  if (!subConnections || [(NSMutableArray *)subConnections count]<= a3)
  {
    v15 = &stru_411E8;
    goto LABEL_17;
  }

  v6 = [(NSMutableArray *)self->_subConnections objectAtIndexedSubscript:a3];
  v7 = [NWInterface alloc];
  v8 = [v6 objectForKeyedSubscript:off_49D78];
  v9 = [v7 initWithInterfaceName:v8];

  v10 = [v9 type];
  if (v10 == &dword_0 + 3)
  {
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = v12;
    v14 = @"ETHERNET";
    goto LABEL_15;
  }

  if (v10 == &dword_0 + 2)
  {
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = v12;
    v14 = @"CELLULAR";
LABEL_15:
    v15 = [v12 localizedStringForKey:v14 value:&stru_411E8 table:@"MobileVPN"];

    goto LABEL_16;
  }

  if (v10 == &dword_0 + 1)
  {
    if (qword_4A080 != -1)
    {
      sub_29C80();
    }

    v11 = byte_4A078;
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = v12;
    if (v11 == 1)
    {
      v14 = @"WLAN";
    }

    else
    {
      v14 = @"WIFI";
    }

    goto LABEL_15;
  }

  v15 = &stru_411E8;
LABEL_16:

LABEL_17:

  return v15;
}

- (id)elapsedTimeLocalizedStringForSubConnection:(unint64_t)a3
{
  v4 = [(VPNConnection *)self connectTimeForSubConnection:a3];
  v5 = [(VPNConnection *)self elapsedTimeSinceStartTime:v4];

  return [(VPNConnection *)self convertTimeToString:v5];
}

- (id)_fullOptions
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = +[NSMutableDictionary dictionary];
  v5 = +[NSMutableDictionary dictionary];
  v6 = [(VPNConnection *)self vpnConnectionType];
  v7 = [(VPNConnection *)self accountName];
  if (v6 == 2)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  v9 = &kSCPropNetIPSecXAuthName;
  if (v6 == 2)
  {
    v10 = &kSCPropNetIPSecRemoteAddress;
  }

  else
  {
    v9 = &kSCPropNetPPPAuthName;
    v10 = &kSCPropNetPPPCommRemoteAddress;
  }

  [v8 setObject:v7 forKey:*v9];

  v11 = [(VPNConnection *)self server];
  [v8 setObject:v11 forKey:*v10];

  v12 = [(VPNConnection *)self password];
  v13 = [v12 length];

  if (v13)
  {
    v14 = [(VPNConnection *)self password];
    v15 = &kSCPropNetIPSecXAuthPassword;
    if (v6 != 2)
    {
      v15 = &kSCPropNetPPPAuthPassword;
    }

    [v8 setValue:v14 forKey:*v15];
  }

  v16 = [(VPNConnection *)self sharedSecret];
  v17 = [v16 length];

  if (v17)
  {
    [v5 setObject:kSCValNetIPSecAuthenticationMethodSharedSecret forKey:kSCPropNetIPSecAuthenticationMethod];
    v18 = [(VPNConnection *)self sharedSecret];
    [v5 setObject:v18 forKey:kSCPropNetIPSecSharedSecret];
  }

  [v3 setObject:v4 forKey:kSCEntNetPPP];
  [v3 setObject:v5 forKey:kSCValNetL2TPTransportIPSec];

  return v3;
}

- (id)vpnTypeLocalizedString
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"UNKNOWN" value:&stru_411E8 table:@"MobileVPN"];

  if ([(VPNConnection *)self grade]== &dword_4 + 3 || [(VPNConnection *)self grade]== &dword_8)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"RELAY" value:&stru_411E8 table:@"MobileVPN"];

    goto LABEL_13;
  }

  v7 = [(VPNConnection *)self vpnType];
  if (v7)
  {
    v8 = v7;
    if (CFStringCompare(v7, kSCEntNetPPTP, 0))
    {
      if (CFStringCompare(v8, kSCEntNetL2TP, 0))
      {
        v9 = v8;
LABEL_11:

        v4 = v9;
        goto LABEL_12;
      }

      v10 = [NSBundle bundleForClass:objc_opt_class()];
      v11 = v10;
      v12 = @"L2TP_IPSEC";
    }

    else
    {
      v10 = [NSBundle bundleForClass:objc_opt_class()];
      v11 = v10;
      v12 = @"PPTP";
    }

    v9 = [v10 localizedStringForKey:v12 value:&stru_411E8 table:@"MobileVPN"];

    v4 = v11;
    goto LABEL_11;
  }

LABEL_12:
  v4 = v4;
  v6 = v4;
LABEL_13:

  return v6;
}

- (__CFString)vpnType
{
  v2 = [(VPNConnection *)self vpnConnectionType];

  return [VPNConnectionStore vpnTypeFromConnectionType:v2];
}

- (unint64_t)status
{
  if ([(VPNConnection *)self grade]== &dword_4 + 3 || [(VPNConnection *)self grade]== &dword_8)
  {
    if ([(VPNConnection *)self enabled])
    {
      return 6;
    }

    else
    {
      return 5;
    }
  }

  else if ([(VPNConnection *)self grade]== &dword_0 + 2 && ![(VPNConnection *)self enabled])
  {
    return 5;
  }

  else
  {
    v4 = [(VPNConnection *)self session_status];
    if (v4 > 5)
    {
      return 1;
    }

    else
    {
      return qword_3C318[v4];
    }
  }
}

+ (id)statusTextForStatus:(unint64_t)a3
{
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = v4;
  if (a3 - 2 > 4)
  {
    v6 = @"NOT_CONNECTED";
  }

  else
  {
    v6 = off_40CA8[a3 - 2];
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_411E8 table:@"MobileVPN"];

  return v7;
}

- (id)alertText
{
  v3 = [(VPNConnection *)self lastStopCause];
  v4 = [v3 intValue];

  if ([(VPNConnection *)self grade]== &dword_8 || [(VPNConnection *)self grade]== &dword_4 + 3)
  {
    v5 = v4 - 17;
    if (v4 - 17 < 0xE && ((0x2D9Bu >> v5) & 1) != 0)
    {
      v6 = off_40CD0[v5];
LABEL_20:
      v13 = [NSBundle bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:v6 value:&stru_411E8 table:@"MobileVPN"];

      goto LABEL_24;
    }
  }

  if ([(VPNConnection *)self session_status]!= 1)
  {
    goto LABEL_23;
  }

  if (![(VPNConnection *)self isProviderAvailable])
  {
    v6 = @"MISSING_PROVIDER_ALERT";
    goto LABEL_20;
  }

  v7 = [(VPNConnection *)self lastStopCause];

  if (!v7)
  {
    goto LABEL_23;
  }

  v8 = [(VPNConnection *)self vpnConnectionType];
  v9 = [(VPNConnection *)self lastStopCause];
  v10 = [v9 intValue];

  if (v8 == 4)
  {
    if (v10 != 27)
    {
      v11 = [(VPNConnection *)self lastStopCause];
      if ([v11 intValue] == 25)
      {
LABEL_18:

LABEL_19:
        v6 = @"CERTIFICATE_ERROR";
        goto LABEL_20;
      }

      v12 = [(VPNConnection *)self lastStopCause];
      if ([v12 intValue] == 26)
      {
LABEL_13:

        goto LABEL_18;
      }

      goto LABEL_22;
    }

LABEL_16:
    v6 = @"CERTIFICATE_EXPIRED";
    goto LABEL_20;
  }

  if (v10 == 21)
  {
    goto LABEL_16;
  }

  v11 = [(VPNConnection *)self lastStopCause];
  if ([v11 intValue] == 13)
  {
    goto LABEL_18;
  }

  v12 = [(VPNConnection *)self lastStopCause];
  if ([v12 intValue] == 20)
  {
    goto LABEL_13;
  }

LABEL_22:
  v15 = [(VPNConnection *)self lastStopCause];
  v16 = [v15 intValue];

  if (v16 == 24)
  {
    goto LABEL_19;
  }

LABEL_23:
  v14 = &stru_411E8;
LABEL_24:

  return v14;
}

- (id)statusText
{
  v3 = [(VPNConnection *)self grade]== &dword_4 + 1 || [(VPNConnection *)self grade]== &dword_4 + 2 || [(VPNConnection *)self grade]== &dword_8 + 1;
  if ([(VPNConnection *)self grade]== &dword_4 + 3 || [(VPNConnection *)self grade]== &dword_8)
  {
    v4 = [(VPNConnection *)self enabled];
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    if (v4)
    {
      v6 = @"ON";
    }

    else
    {
      v6 = @"OFF";
    }

    goto LABEL_10;
  }

  if ([(VPNConnection *)self grade]!= &dword_0 + 2 || [(VPNConnection *)self enabled])
  {
    v10 = [(VPNConnection *)self session_status];
    if (v10 <= 2)
    {
      if (!v10)
      {
        v5 = [NSBundle bundleForClass:objc_opt_class()];
        if (!v3)
        {
          v6 = @"INACTIVE";
          goto LABEL_10;
        }

        goto LABEL_32;
      }

      if (v10 == 2)
      {
LABEL_20:
        v5 = [NSBundle bundleForClass:objc_opt_class()];
        if (v3)
        {
          v6 = @"STARTING";
        }

        else
        {
          v6 = @"CONNECTING";
        }

        goto LABEL_10;
      }
    }

    else
    {
      switch(v10)
      {
        case 3:
          v5 = [NSBundle bundleForClass:objc_opt_class()];
          if (v3)
          {
            v6 = @"RUNNING";
          }

          else
          {
            v6 = @"CONNECTED";
          }

          goto LABEL_10;
        case 5:
          v5 = [NSBundle bundleForClass:objc_opt_class()];
          if (v3)
          {
            v6 = @"STOPPING";
          }

          else
          {
            v6 = @"DISCONNECTING";
          }

          goto LABEL_10;
        case 4:
          goto LABEL_20;
      }
    }

    v5 = [NSBundle bundleForClass:objc_opt_class()];
    if (!v3)
    {
      v6 = @"NOT_CONNECTED";
LABEL_10:
      v7 = v5;
      goto LABEL_11;
    }

LABEL_32:
    v6 = @"INVALID";
    goto LABEL_10;
  }

  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = v7;
  v6 = @"INACTIVE";
LABEL_11:
  v8 = [v7 localizedStringForKey:v6 value:&stru_411E8 table:@"MobileVPN"];

  return v8;
}

- (void)connect
{
  [VPNConnection cancelPreviousPerformRequestsWithTarget:self];
  v3 = [(VPNConnection *)self session];

  _ne_session_start(v3);
}

- (void)disconnect
{
  v2 = [(VPNConnection *)self session];

  _ne_session_stop(v2);
}

- (id)elapsedTimeLocalizedString
{
  v3 = [(VPNConnection *)self sessionConnectTime];
  v4 = [(VPNConnection *)self elapsedTimeSinceStartTime:v3];

  return [(VPNConnection *)self convertTimeToString:v4];
}

- (unint64_t)elapsedTimeSinceStartTime:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  [v3 unsignedLongLongValue];
  if (qword_4A090 != -1)
  {
    sub_29C94();
  }

  v4 = (*&qword_4A088 * mach_absolute_time());
  v5 = [v3 unsignedLongLongValue];

  return v4 - v5;
}

- (id)convertTimeToString:(unint64_t)a3
{
  if (!a3)
  {
    goto LABEL_24;
  }

  v3 = a3;
  v4 = a3 % 0x3C;
  v5 = ((a3 / 0x3C * 0x888888888888889uLL) >> 64) >> 1;
  v6 = a3 / 0x3C - 60 * v5;
  v7 = a3 + 3599;
  if (a3 / 0x3C != 60 * v5 || v7 > 0x1C1E)
  {
    if (v6 > 9 || v7 > 0x1C1E)
    {
      if (v6 < 0xA || v7 > 0x1C1E)
      {
        v11 = (a3 / 3600);
        v12 = [NSBundle bundleForClass:objc_opt_class()];
        v14 = v12;
        if (v3 > 35999)
        {
          v13 = @"TIME_HHMS";
        }

        else
        {
          v13 = @"TIME_HMS";
        }

        v15 = [v12 localizedStringForKey:v13 value:&stru_411E8 table:@"MobileVPN"];
        [NSString stringWithFormat:v15, v11, v6, v4];
        goto LABEL_22;
      }

      v16 = [NSBundle bundleForClass:objc_opt_class()];
      v14 = v16;
      v17 = @"TIME_MMS";
    }

    else
    {
      v16 = [NSBundle bundleForClass:objc_opt_class()];
      v14 = v16;
      v17 = @"TIME_MS";
    }

    v15 = [v16 localizedStringForKey:v17 value:&stru_411E8 table:@"MobileVPN"];
    [NSString stringWithFormat:v15, v6, v4, v21];
  }

  else
  {
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"TIME_S" value:&stru_411E8 table:@"MobileVPN"];
    [NSString stringWithFormat:v15, v4, v20, v21];
  }

  v18 = LABEL_22:;

  if ([(__CFString *)v18 length])
  {
    goto LABEL_25;
  }

LABEL_24:
  v18 = &stru_411E8;
LABEL_25:

  return v18;
}

- (id)tunnelType
{
  if ([(VPNConnection *)self grade]== &dword_0 + 1 || ![(VPNConnection *)self grade])
  {
    v4 = [(VPNConnection *)self isPrimary];
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = v5;
    if (v4)
    {
      v7 = @"FULL_TUNNEL";
    }

    else
    {
      v7 = @"SPLIT_TUNNEL";
    }

    v3 = [v5 localizedStringForKey:v7 value:&stru_411E8 table:@"MobileVPN"];
  }

  else
  {
    v3 = &stru_411E8;
  }

  return v3;
}

@end