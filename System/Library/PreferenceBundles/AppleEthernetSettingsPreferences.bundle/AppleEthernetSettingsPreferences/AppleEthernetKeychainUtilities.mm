@interface AppleEthernetKeychainUtilities
+ (id)_passwordForHost:(id)a3 username:(id)a4 port:(int)a5;
+ (void)removePasswordForHost:(id)a3 username:(id)a4 port:(int)a5;
+ (void)setPassword:(id)a3 forHost:(id)a4 username:(id)a5 port:(int)a6;
- (AppleEthernetKeychainUtilities)init;
@end

@implementation AppleEthernetKeychainUtilities

- (AppleEthernetKeychainUtilities)init
{
  v3.receiver = self;
  v3.super_class = AppleEthernetKeychainUtilities;
  return [(AppleEthernetKeychainUtilities *)&v3 init];
}

+ (id)_passwordForHost:(id)a3 username:(id)a4 port:(int)a5
{
  v6 = a3;
  v7 = a4;
  if ([v6 length] && objc_msgSend(v7, "length") && (v8 = CFURLCredentialStorageCreate()) != 0)
  {
    v9 = v8;
    v10 = CFURLProtectionSpaceCreate();
    if (v10)
    {
      v11 = v10;
      v12 = CFURLCredentialStorageCopyDefaultCredentialForProtectionSpace();
      if (v12)
      {
        v13 = v12;
        v14 = CFURLCredentialCopyPassword();
        CFRelease(v13);
      }

      else
      {
        v14 = 0;
      }

      CFRelease(v11);
    }

    else
    {
      v14 = 0;
    }

    CFRelease(v9);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (void)setPassword:(id)a3 forHost:(id)a4 username:(id)a5 port:(int)a6
{
  v17 = a3;
  v8 = a4;
  v9 = a5;
  if (![v8 length])
  {
    goto LABEL_14;
  }

  if (![v17 length])
  {
    goto LABEL_14;
  }

  if (![v9 length])
  {
    goto LABEL_14;
  }

  v10 = CFURLCredentialStorageCreate();
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = v10;
  v12 = CFURLProtectionSpaceCreate();
  v13 = CFURLProtectionSpaceCreate();
  v14 = v13;
  if (v12 && v13)
  {
    v15 = CFURLCredentialCreate();
    if (v15)
    {
      v16 = v15;
      CFURLCredentialStorageSetDefaultCredentialForProtectionSpace();
      CFURLCredentialStorageSetDefaultCredentialForProtectionSpace();
      CFRelease(v16);
    }

    goto LABEL_10;
  }

  if (v12)
  {
LABEL_10:
    CFRelease(v12);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  CFRelease(v11);
LABEL_14:
}

+ (void)removePasswordForHost:(id)a3 username:(id)a4 port:(int)a5
{
  v17 = a3;
  v6 = a4;
  if (![v17 length])
  {
    goto LABEL_19;
  }

  if (![v6 length])
  {
    goto LABEL_19;
  }

  v7 = CFURLCredentialStorageCreate();
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = v7;
  v9 = CFURLProtectionSpaceCreate();
  v10 = CFURLProtectionSpaceCreate();
  v11 = v10;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if (!v9)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = CFURLCredentialStorageCopyDefaultCredentialForProtectionSpace();
    if (v13)
    {
      v14 = v13;
      CFURLCredentialStorageRemoveCredentialForProtectionSpace();
      CFRelease(v14);
    }

    v15 = CFURLCredentialStorageCopyDefaultCredentialForProtectionSpace();
    if (v15)
    {
      v16 = v15;
      CFURLCredentialStorageRemoveCredentialForProtectionSpace();
      CFRelease(v16);
    }
  }

  CFRelease(v9);
LABEL_16:
  if (v11)
  {
    CFRelease(v11);
  }

  CFRelease(v8);
LABEL_19:
}

@end