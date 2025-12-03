@interface NSXPCConnection(SLClientAuthentication)
- (const)sl_clientHasEntitlement:()SLClientAuthentication;
- (id)_clientBundleID;
- (id)sl_localizedClientName;
@end

@implementation NSXPCConnection(SLClientAuthentication)

- (const)sl_clientHasEntitlement:()SLClientAuthentication
{
  v5 = a3;
  v6 = [self valueForEntitlement:v5];
  v7 = v6;
  if (v6)
  {
    v8 = CFGetTypeID(v6);
    if (v8 == CFBooleanGetTypeID())
    {
      v7 = (CFBooleanGetValue(v7) != 0);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v15 = v5;
    _SLLog(v3, 3, @"Unable to get entitlement '%@'");
  }

  sl_localizedClientName = [self sl_localizedClientName];
  if (!sl_localizedClientName)
  {
    v10 = MEMORY[0x1E696AEC0];
    v16 = 648;
    dword_1EBF3D394 = [self processIdentifier];
    byte_1EBF3DB1B = 0;
    v11 = sysctl(getprocname_name, 4u, &getprocname_kp, &v16, 0, 0);
    if (byte_1EBF3DB1B)
    {
      v12 = &byte_1EBF3DB1B;
    }

    else
    {
      v12 = "exited?";
    }

    if (v11)
    {
      v13 = "?";
    }

    else
    {
      v13 = v12;
    }

    sl_localizedClientName = [v10 stringWithCString:v13 encoding:4];
  }

  _SLLog(v3, 6, @"Entitlement %@ verified for %@: %@");

  return v7;
}

- (id)sl_localizedClientName
{
  [self processIdentifier];
  v1 = SBSCopyDisplayIdentifiersForProcessID();
  if (v1)
  {
    v2 = v1;
    if (CFArrayGetCount(v1))
    {
      CFArrayGetValueAtIndex(v2, 0);
      v3 = SBSCopyLocalizedApplicationNameForDisplayIdentifier();
    }

    else
    {
      v3 = 0;
    }

    CFRelease(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_clientBundleID
{
  [self processIdentifier];
  v1 = SBSCopyBundleInfoValueForKeyAndProcessID();

  return v1;
}

@end