@interface AKClient
+ (BOOL)isAppWithBundleIDForeground:(id)a3;
- (AKClient)initWithAuditToken:(id *)a3;
- (AKClient)initWithConnection:(id)a3;
- (BOOL)_BOOLValueForEntitlement:(id)a3;
- (BOOL)_hasApprovedSigningIdentifier;
- (BOOL)_isAppleBinary;
- (BOOL)hasBirthdayAccess;
- (BOOL)hasInternalAccess;
- (BOOL)hasInternalEntitledAccess;
- (BOOL)hasInternalPrivateAccess;
- (BOOL)hasInternalPrivateEntitlementAccess;
- (BOOL)hasPrivateSignedAccess;
- (BOOL)hasSiwaDefaultEntitlementAccess;
- (BOOL)hasSiwaEntitlement;
- (BOOL)hasSiwaUnderageEntitlementAccess;
- (BOOL)isExemptedFromMandatoryUISecurityUpgrade;
- (BOOL)isPermittedForInteractiveAuthOnLimitedContext;
- (BOOL)isPermittedToProxy;
- (BOOL)isPermittedToProxyInitialAuth;
- (NSData)auditTokenData;
- (NSString)appID;
- (NSString)bundleID;
- (NSString)fullName;
- (NSString)localizedAppName;
- (NSString)name;
- (NSString)teamID;
- (id)_appIDForIOS;
- (id)_appIDForMacOS;
- (id)_approvedCodeSigningIdentifiers;
- (id)_arrayValueForEntitlement:(id)a3;
- (id)_authorizationAccessLevels;
- (id)_bundle;
- (id)_bundleNonPluginKit;
- (id)_codeSigningIdentifier;
- (id)_exemptedBundleIDsFromMandatoryUISecurityUpgrade;
- (id)_permitedProcessNamesToProxyInitialAuthWhiteList;
- (id)_permittedProcessNamesForInteractiveAuthOnLimitedContext;
- (id)_permittedProcessNamesToProxyAllowlist;
- (id)_stringValueForEntitlement:(id)a3;
- (id)_unsafeBundleID;
- (id)_unsafeDescription;
- (id)_unsafeFullName;
- (id)_unsafeName;
- (id)description;
- (id)proxyWithErrorHandler:(id)a3;
@end

@implementation AKClient

- (BOOL)hasInternalPrivateAccess
{
  v3 = 1;
  if (![(AKClient *)self hasInternalPrivateEntitlementAccess])
  {
    v3 = [(AKClient *)self hasPrivateSignedAccess];
  }

  return v3 & 1;
}

- (BOOL)hasInternalPrivateEntitlementAccess
{
  v3 = 1;
  if (![(AKClient *)self hasInternalAccess])
  {
    v3 = [(AKClient *)self hasPrivateAccess];
  }

  return v3 & 1;
}

- (BOOL)hasInternalAccess
{
  if ([(AKClient *)self hasOwnerAccess])
  {
    return 1;
  }

  else
  {
    return [(AKClient *)self _BOOLValueForEntitlement:@"com.apple.authkit.client.internal"];
  }
}

- (id)description
{
  v10[2] = self;
  v10[1] = a2;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1000264A0;
  v9 = &unk_10031F4C8;
  v10[0] = _objc_retain(self);
  v4 = sub_100025B04(&self->_unfairLock, &v5);
  objc_storeStrong(v10, 0);

  return v4;
}

- (NSString)name
{
  v10[2] = self;
  v10[1] = a2;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_100025BB4;
  v9 = &unk_10031F4C8;
  v10[0] = _objc_retain(self);
  v4 = sub_100025B04(&self->_unfairLock, &v5);
  objc_storeStrong(v10, 0);

  return v4;
}

- (BOOL)hasSiwaEntitlement
{
  v3 = [(AKClient *)self _authorizationAccessLevels];
  v4 = [v3 count] != 0;
  _objc_release(v3);
  return v4;
}

- (id)_authorizationAccessLevels
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(AKClient *)self _arrayValueForEntitlement:@"com.apple.developer.applesignin"];
  if ([location[0] count])
  {
    v5 = [NSSet setWithArray:location[0]];
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

- (BOOL)hasPrivateSignedAccess
{
  v3 = 0;
  if ([(AKClient *)self _isAppleBinary])
  {
    v3 = [(AKClient *)self _hasApprovedSigningIdentifier];
  }

  return v3 & 1;
}

- (BOOL)_isAppleBinary
{
  v10 = self;
  v9 = a2;
  v8 = 0;
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection auditToken];
  }

  else
  {
    memset(&token, 0, sizeof(token));
  }

  v7 = SecTaskCreateWithAuditToken(0, &token);
  if (v7)
  {
    CodeSignStatus = SecTaskGetCodeSignStatus(v7);
    CFRelease(v7);
    v8 = (CodeSignStatus & 0xC000001) == 67108865;
    v3 = 1;
    if ((CodeSignStatus & 0xC000001) != 0x4000001)
    {
      v3 = [(AKClient *)v10 _isOnInternalBuild];
    }

    v8 = v3 & 1;
  }

  return v8 & 1;
}

- (BOOL)_hasApprovedSigningIdentifier
{
  v6 = self;
  v5[1] = a2;
  v5[0] = [(AKClient *)self _codeSigningIdentifier];
  v3 = [(AKClient *)v6 _approvedCodeSigningIdentifiers];
  v4 = [v3 containsObject:v5[0]];
  _objc_release(v3);
  objc_storeStrong(v5, 0);
  return v4;
}

- (id)_codeSigningIdentifier
{
  v11 = self;
  v10 = a2;
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection auditToken];
  }

  else
  {
    memset(&token, 0, sizeof(token));
  }

  v9 = SecTaskCreateWithAuditToken(0, &token);
  v7 = 0;
  if (v9)
  {
    v2 = SecTaskCopySigningIdentifier(v9, 0);
    v3 = v7;
    v7 = v2;
    _objc_release(v3);
    if (v9)
    {
      CFRelease(v9);
    }
  }

  v5 = _objc_retain(v7);
  objc_storeStrong(&v7, 0);

  return v5;
}

- (id)_approvedCodeSigningIdentifiers
{
  v4 = self;
  v3 = a2;
  return [NSSet setWithObjects:@"com.apple.dt.Xcode", @"com.apple.dt.xcodebuild", @"com.apple.dt.xcscontrol", 0];
}

- (NSString)bundleID
{
  v10[2] = self;
  v10[1] = a2;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1000266FC;
  v9 = &unk_10031F4C8;
  v10[0] = _objc_retain(self);
  v4 = sub_100025B04(&self->_unfairLock, &v5);
  objc_storeStrong(v10, 0);

  return v4;
}

+ (BOOL)isAppWithBundleIDForeground:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = objc_alloc_init(BKSApplicationStateMonitor);
  v5 = [v6 applicationStateForApplication:location[0]];
  [v6 invalidate];
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_100024CD8(v9, location[0], v5);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "State of app %@: %d.", v9, 0x12u);
  }

  objc_storeStrong(&oslog, 0);
  v8 = v5 == 8 || v5 == 32;
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return v8;
}

- (AKClient)initWithConnection:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = AKClient;
  v8 = [(AKClient *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    objc_storeStrong(&v8->_connection, location[0]);
    v8->_unfairLock._os_unfair_lock_opaque = 0;
  }

  v5 = _objc_retain(v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (AKClient)initWithAuditToken:(id *)a3
{
  v13 = a2;
  v12 = a3;
  v14 = 0;
  v11.receiver = self;
  v11.super_class = AKClient;
  v9 = [(AKClient *)&v11 init];
  v14 = v9;
  objc_storeStrong(&v14, v9);
  if (v9)
  {
    v3 = sub_1000243F0();
    v10[0] = *a3->var0;
    v10[1] = *&a3->var0[4];
    v4 = [v3 tokenFromAuditToken:v10];
    auditToken = v14->_auditToken;
    v14->_auditToken = v4;
    _objc_release(auditToken);
    v14->_unfairLock._os_unfair_lock_opaque = 0;
  }

  v7 = _objc_retain(v14);
  objc_storeStrong(&v14, 0);
  return v7;
}

- (BOOL)hasInternalEntitledAccess
{
  v3 = 1;
  if (![(AKClient *)self hasInternalPrivateEntitlementAccess])
  {
    v3 = [(AKClient *)self hasOwnerAccess];
  }

  return v3 & 1;
}

- (BOOL)hasSiwaDefaultEntitlementAccess
{
  v3 = [(AKClient *)self _authorizationAccessLevels];
  v4 = [v3 containsObject:@"Default"];
  _objc_release(v3);
  return v4;
}

- (BOOL)hasSiwaUnderageEntitlementAccess
{
  v3 = [(AKClient *)self _authorizationAccessLevels];
  v4 = [v3 containsObject:@"underage-users"];
  _objc_release(v3);
  return v4;
}

- (BOOL)hasBirthdayAccess
{
  v3 = 0;
  if ([(AKClient *)self hasPrivateAccess])
  {
    v3 = [(AKClient *)self _BOOLValueForEntitlement:@"com.apple.authkit.birthday"];
  }

  return v3 & 1;
}

- (id)_permittedProcessNamesToProxyAllowlist
{
  v5 = &unk_100374528;
  location = 0;
  objc_storeStrong(&location, &stru_10031F440);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100374520;

  return v2;
}

- (BOOL)isPermittedToProxy
{
  v4 = [(AKClient *)self _permittedProcessNamesToProxyAllowlist];
  v3 = [(AKClient *)self name];
  v5 = [v4 containsObject:?];
  _objc_release(v3);
  _objc_release(v4);
  return v5;
}

- (id)_permitedProcessNamesToProxyInitialAuthWhiteList
{
  v5 = &unk_100374538;
  location = 0;
  objc_storeStrong(&location, &stru_10031F460);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100374530;

  return v2;
}

- (BOOL)isPermittedToProxyInitialAuth
{
  v4 = [(AKClient *)self _permitedProcessNamesToProxyInitialAuthWhiteList];
  v3 = [(AKClient *)self name];
  v5 = [v4 containsObject:?];
  _objc_release(v3);
  _objc_release(v4);
  return v5;
}

- (id)_permittedProcessNamesForInteractiveAuthOnLimitedContext
{
  v5 = &unk_100374548;
  location = 0;
  objc_storeStrong(&location, &stru_10031F480);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100374540;

  return v2;
}

- (BOOL)isPermittedForInteractiveAuthOnLimitedContext
{
  v4 = [(AKClient *)self _permittedProcessNamesForInteractiveAuthOnLimitedContext];
  v3 = [(AKClient *)self name];
  v5 = [v4 containsObject:?];
  _objc_release(v3);
  _objc_release(v4);
  return v5;
}

- (id)_exemptedBundleIDsFromMandatoryUISecurityUpgrade
{
  v5 = &unk_100374558;
  location = 0;
  objc_storeStrong(&location, &stru_10031F4A0);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100374550;

  return v2;
}

- (BOOL)isExemptedFromMandatoryUISecurityUpgrade
{
  v4 = [(AKClient *)self _exemptedBundleIDsFromMandatoryUISecurityUpgrade];
  v3 = [(AKClient *)self bundleID];
  v5 = [v4 containsObject:?];
  _objc_release(v3);
  _objc_release(v4);
  return v5;
}

- (NSData)auditTokenData
{
  v12 = self;
  v11 = a2;
  if (self->_auditToken)
  {
    v9 = 0u;
    v10 = 0u;
    auditToken = v12->_auditToken;
    if (auditToken)
    {
      [(BSAuditToken *)auditToken realToken];
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v13 = [[NSData alloc] initWithBytes:&v9 length:32];
  }

  else if (v12->_connection)
  {
    location = [sub_1000243F0() tokenFromNSXPCConnection:v12->_connection];
    v6 = 0u;
    v7 = 0u;
    if (location)
    {
      [location realToken];
    }

    else
    {
      v6 = 0u;
      v7 = 0u;
    }

    v13 = [[NSData alloc] initWithBytes:&v6 length:32];
    objc_storeStrong(&location, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
    {
      sub_1000194D4(v14, v12->_bundleID);
      _os_log_fault_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_FAULT, "Unable to obtain auditToken data for %@", v14, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v13 = 0;
  }

  v2 = v13;

  return v2;
}

- (id)_unsafeName
{
  v12 = self;
  v11 = a2;
  if (!self->_name)
  {
    pid = [(NSXPCConnection *)v12->_connection processIdentifier];
    v9 = proc_name(pid, buffer, 0x20u);
    if (v9 <= 0)
    {
      v15[0] = 1;
      v15[1] = 14;
      v15[2] = 1;
      v15[3] = pid;
      v8 = 648;
      bzero(v13, 0x200uLL);
      v14[0] = 0;
      if (sysctl(v15, 4u, v13, &v8, 0, 0))
      {
        objc_storeStrong(&v12->_name, @"?");
      }

      else if (v14[0])
      {
        v4 = [NSString stringWithUTF8String:v14];
        name = v12->_name;
        v12->_name = v4;
        _objc_release(name);
      }

      else
      {
        objc_storeStrong(&v12->_name, @"exited?");
      }
    }

    else
    {
      v2 = [NSString stringWithUTF8String:buffer];
      v3 = v12->_name;
      v12->_name = v2;
      _objc_release(v3);
    }
  }

  v6 = v12->_name;

  return v6;
}

- (NSString)fullName
{
  v10[2] = self;
  v10[1] = a2;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_100025EB8;
  v9 = &unk_10031F4C8;
  v10[0] = _objc_retain(self);
  v4 = sub_100025B04(&self->_unfairLock, &v5);
  objc_storeStrong(v10, 0);

  return v4;
}

- (id)_unsafeFullName
{
  if (!self->_fullName)
  {
    v8 = [(AKClient *)self _bundle];
    v2 = [v8 objectForInfoDictionaryKey:kCFBundleNameKey];
    fullName = self->_fullName;
    self->_fullName = v2;
    _objc_release(fullName);
    _objc_release(v8);
    if (!self->_fullName)
    {
      v4 = [(AKClient *)self _unsafeName];
      v5 = self->_fullName;
      self->_fullName = v4;
      _objc_release(v5);
    }
  }

  v6 = self->_fullName;

  return v6;
}

- (NSString)localizedAppName
{
  location[2] = self;
  location[1] = a2;
  v5 = [(AKClient *)self bundleID];
  location[0] = [LSApplicationProxy applicationProxyForIdentifier:?];
  _objc_release(0);
  _objc_release(v5);
  v6 = [location[0] localizedNameForContext:0];
  v7 = 0;
  if (v6)
  {
    v2 = _objc_retain(v6);
  }

  else
  {
    v8 = [location[0] localizedName];
    v7 = 1;
    v2 = _objc_retain(v8);
  }

  v10 = v2;
  if (v7)
  {
    _objc_release(v8);
  }

  _objc_release(v6);
  objc_storeStrong(location, 0);
  v3 = v10;

  return v3;
}

- (id)_bundleNonPluginKit
{
  v9 = self;
  v8 = a2;
  v7 = proc_pidpath([(NSXPCConnection *)self->_connection processIdentifier], buffer, 0x1000u);
  v4 = [[NSString alloc] initWithBytes:buffer length:v7 encoding:4];
  v6 = [NSURL fileURLWithPath:?];
  _objc_release(v4);
  if (v6)
  {
    v5 = _CFBundleCopyBundleURLForExecutableURL();
    v10 = [NSBundle bundleWithURL:v5];
    objc_storeStrong(&v5, 0);
  }

  else
  {
    v10 = 0;
  }

  objc_storeStrong(&v6, 0);
  v2 = v10;

  return v2;
}

- (id)_bundle
{
  v16 = self;
  v15[1] = a2;
  v15[0] = 0;
  v14 = 0;
  v13 = [(NSXPCConnection *)self->_connection processIdentifier];
  if (v13)
  {
    v11 = +[PKManager defaultManager];
    v2 = [v11 containingAppForPlugInWithPid:v13];
    v3 = v14;
    v14 = v2;
    _objc_release(v3);
    _objc_release(v11);
  }

  if (v14)
  {
    v12 = [LSApplicationProxy applicationProxyForIdentifier:v14];
    v10 = [v12 bundleURL];
    v4 = [NSBundle bundleWithURL:?];
    v5 = v15[0];
    v15[0] = v4;
    _objc_release(v5);
    _objc_release(v10);
    objc_storeStrong(&v12, 0);
  }

  if (!v15[0])
  {
    v6 = [(AKClient *)v16 _bundleNonPluginKit];
    v7 = v15[0];
    v15[0] = v6;
    _objc_release(v7);
  }

  v9 = _objc_retain(v15[0]);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(v15, 0);

  return v9;
}

- (id)_unsafeDescription
{
  if (!self->_description)
  {
    v7 = [(AKClient *)self _unsafeName];
    v6 = [NSNumber numberWithInt:[(NSXPCConnection *)self->_connection processIdentifier]];
    v2 = [NSString stringWithFormat:@"%@ (%@)", v7, v6];
    description = self->_description;
    self->_description = v2;
    _objc_release(description);
    _objc_release(v6);
    _objc_release(v7);
  }

  v4 = self->_description;

  return v4;
}

- (id)proxyWithErrorHandler:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (!v11->_connection)
  {
    v9 = _AKLogSystem();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      log = v9;
      type = v8;
      sub_10001CEEC(v7);
      _os_log_impl(&_mh_execute_header, log, type, "XPC connection is nil, couldn't create remote object.", v7, 2u);
    }

    objc_storeStrong(&v9, 0);
  }

  v4 = [(NSXPCConnection *)v11->_connection remoteObjectProxyWithErrorHandler:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_unsafeBundleID
{
  v24 = self;
  v23 = a2;
  if (!self->_bundleID)
  {
    v14 = +[PKManager defaultManager];
    v2 = [v14 containingAppForPlugInWithPid:{-[NSXPCConnection processIdentifier](v24->_connection, "processIdentifier")}];
    bundleID = v24->_bundleID;
    v24->_bundleID = v2;
    _objc_release(bundleID);
    _objc_release(v14);
    if (!v24->_bundleID)
    {
      v22 = proc_pidpath([(NSXPCConnection *)v24->_connection processIdentifier], buffer, 0x1000u);
      v13 = [[NSString alloc] initWithBytes:buffer length:v22 encoding:4];
      url = [NSURL fileURLWithPath:?];
      _objc_release(v13);
      if (url)
      {
        v20 = _CFBundleCopyBundleURLForExecutableURL();
        v19 = [NSBundle bundleWithURL:v20];
        v4 = [v19 bundleIdentifier];
        v5 = v24->_bundleID;
        v24->_bundleID = v4;
        _objc_release(v5);
        if (!v24->_bundleID)
        {
          oslog = _AKLogSystem();
          type = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
          {
            log = oslog;
            v11 = type;
            v12 = [(AKClient *)v24 _unsafeDescription];
            v16 = _objc_retain(v12);
            sub_1000194D4(v25, v16);
            _os_log_debug_impl(&_mh_execute_header, log, v11, "Unable to determine bundle ID of client %@ using NSBundle API. Falling back to CF.", v25, 0xCu);
            _objc_release(v12);
            objc_storeStrong(&v16, 0);
          }

          objc_storeStrong(&oslog, 0);
          v15 = CFBundleCopyInfoDictionaryForURL(url);
          v6 = [(__CFDictionary *)v15 objectForKeyedSubscript:kCFBundleIdentifierKey];
          v7 = v24->_bundleID;
          v24->_bundleID = v6;
          _objc_release(v7);
          objc_storeStrong(&v15, 0);
        }

        objc_storeStrong(&v19, 0);
        objc_storeStrong(&v20, 0);
      }

      objc_storeStrong(&url, 0);
    }
  }

  v8 = v24->_bundleID;

  return v8;
}

- (NSString)appID
{
  v7 = self;
  location[1] = a2;
  location[0] = [(AKClient *)self _appIDForIOS];
  if (![location[0] length])
  {
    v2 = [(AKClient *)v7 _appIDForMacOS];
    v3 = location[0];
    location[0] = v2;
    _objc_release(v3);
  }

  v8 = _objc_retain(location[0]);
  objc_storeStrong(location, 0);
  v4 = v8;

  return v4;
}

- (id)_appIDForMacOS
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(AKClient *)self _stringValueForEntitlement:@"com.apple.application-identifier"];
  if ([location[0] length])
  {
    v5 = _objc_retain(location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

- (id)_appIDForIOS
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(AKClient *)self _stringValueForEntitlement:@"application-identifier"];
  if ([location[0] length])
  {
    v5 = _objc_retain(location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

- (NSString)teamID
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(AKClient *)self _stringValueForEntitlement:@"com.apple.developer.team-identifier"];
  if ([location[0] length])
  {
    v5 = _objc_retain(location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

- (id)_arrayValueForEntitlement:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [(NSXPCConnection *)v8->_connection valueForEntitlement:location[0]];
  v3 = objc_opt_class();
  v5 = sub_100026E80(v3, v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (BOOL)_BOOLValueForEntitlement:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  if (v8->_auditToken)
  {
    v3 = [(BSAuditToken *)v8->_auditToken valueForEntitlement:location[0]];
  }

  else
  {
    v3 = [(NSXPCConnection *)v8->_connection valueForEntitlement:location[0]];
  }

  v4 = v6;
  v6 = v3;
  _objc_release(v4);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v6 BOOLValue] & 1;
  }

  else
  {
    v9 = 0;
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return v9 & 1;
}

- (id)_stringValueForEntitlement:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  if (v10->_auditToken)
  {
    v3 = [(BSAuditToken *)v10->_auditToken valueForEntitlement:location[0]];
  }

  else
  {
    v3 = [(NSXPCConnection *)v10->_connection valueForEntitlement:location[0]];
  }

  v4 = v8;
  v8 = v3;
  _objc_release(v4);
  v5 = objc_opt_class();
  v7 = sub_100026E80(v5, v8);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v7;
}

@end