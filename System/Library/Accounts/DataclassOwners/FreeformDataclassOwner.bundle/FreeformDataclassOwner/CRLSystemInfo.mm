@interface CRLSystemInfo
+ (NSString)deviceName;
+ (NSString)hwModel;
+ (NSString)macAddress;
+ (NSString)operatingSystemName;
+ (NSString)osVersion;
+ (NSString)processorName;
+ (NSString)systemVersion;
@end

@implementation CRLSystemInfo

+ (NSString)macAddress
{
  memset(v15, 0, 12);
  v2 = socket(2, 2, 0);
  if (v2 < 0)
  {
    v7 = 0;
  }

  else
  {
    v3 = v2;
    LODWORD(v15[0]) = 4000;
    *(v15 + 4) = v16;
    if (ioctl(v2, 0xC00C6924uLL, v15) < 0 || SLODWORD(v15[0]) < 1)
    {
      v7 = 0;
    }

    else
    {
      v4 = &v16[SLODWORD(v15[0])];
      v5 = v16;
      do
      {
        if (v5[17] == 18 && ((v13 = 0, v14 = 0, v12 = 0, v6 = ether_ntoa(&v5[v5[21] + 24]), sscanf(v6, "%x:%x:%x:%x:%x:%x", &v14 + 4, &v14, &v13 + 4, &v13, &v12 + 4, &v12), v14) || v13 || v12))
        {
          v7 = [NSString stringWithFormat:@"%02X:%02X:%02X:%02X:%02X:%02X", HIDWORD(v14), v14, HIDWORD(v13), v13, HIDWORD(v12), v12];
        }

        else
        {
          v7 = 0;
        }

        v8 = v5[16];
        if (v8 <= 0x10)
        {
          v9 = 32;
        }

        else
        {
          v9 = v8 + 16;
        }

        v5 += v9;
      }

      while (v5 < v4 && v7 == 0);
    }

    close(v3);
  }

  return v7;
}

+ (NSString)processorName
{
  *v5 = 0xC00000006;
  v4 = 257;
  if (sysctl(v5, 2u, v6, &v4, 0, 0) < 0 || ([NSString stringWithFormat:@"%s", v6], (v2 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v2 = +[UIDevice crl_platformString];
  }

  return v2;
}

+ (NSString)operatingSystemName
{
  v2 = +[UIDevice currentDevice];
  systemName = [v2 systemName];

  return systemName;
}

+ (NSString)systemVersion
{
  v2 = +[UIDevice currentDevice];
  systemVersion = [v2 systemVersion];

  return systemVersion;
}

+ (NSString)osVersion
{
  if (osVersion_onceToken != -1)
  {
    +[CRLSystemInfo osVersion];
  }

  v3 = osVersion_osVersion;

  return v3;
}

void __26__CRLSystemInfo_osVersion__block_invoke(id a1)
{
  size = 0;
  sysctlbyname("kern.osversion", 0, &size, 0, 0);
  v1 = malloc_type_malloc(size, 0x5A2F81B9uLL);
  sysctlbyname("kern.osversion", v1, &size, 0, 0);
  v2 = [[NSString alloc] initWithUTF8String:v1];
  v3 = osVersion_osVersion;
  osVersion_osVersion = v2;

  free(v1);
}

+ (NSString)hwModel
{
  if (hwModel_onceToken != -1)
  {
    +[CRLSystemInfo hwModel];
  }

  v3 = hwModel_hwModel;

  return v3;
}

void __24__CRLSystemInfo_hwModel__block_invoke(id a1)
{
  size = 0;
  sysctlbyname("hw.model", 0, &size, 0, 0);
  v1 = malloc_type_malloc(size, 0xF3A0382uLL);
  sysctlbyname("hw.model", v1, &size, 0, 0);
  v2 = [[NSString alloc] initWithUTF8String:v1];
  v3 = hwModel_hwModel;
  hwModel_hwModel = v2;

  free(v1);
}

+ (NSString)deviceName
{
  v2 = +[UIDevice currentDevice];
  name = [v2 name];

  if (name && ![name length])
  {

    name = 0;
  }

  return name;
}

@end