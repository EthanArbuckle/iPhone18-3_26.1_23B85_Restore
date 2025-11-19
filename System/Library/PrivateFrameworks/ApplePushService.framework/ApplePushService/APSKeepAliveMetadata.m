@interface APSKeepAliveMetadata
- (APSKeepAliveMetadata)initWithUsingWWAN:(BOOL)a3 keepAliveInterval:(int)a4 delayedResponseInterval:(int)a5 usingServerStats:(BOOL)a6 keepAliveState:(id)a7 hwVersion:(id)a8 swVersion:(id)a9 swBuild:(id)a10;
@end

@implementation APSKeepAliveMetadata

- (APSKeepAliveMetadata)initWithUsingWWAN:(BOOL)a3 keepAliveInterval:(int)a4 delayedResponseInterval:(int)a5 usingServerStats:(BOOL)a6 keepAliveState:(id)a7 hwVersion:(id)a8 swVersion:(id)a9 swBuild:(id)a10
{
  v12 = a3;
  v14 = a7;
  v15 = a8;
  v16 = a9;
  v17 = a10;
  v46.receiver = self;
  v46.super_class = APSKeepAliveMetadata;
  v18 = [(APSKeepAliveMetadata *)&v46 init];
  v19 = v18;
  if (v18)
  {
    carrier = v18->_carrier;
    v21 = @"Unknown";
    v18->_carrier = @"Unknown";

    if (v12)
    {
      v22 = [PCInterfaceMonitor sharedInstanceForIdentifier:1];
      v23 = objc_opt_respondsToSelector();

      if (v23)
      {
        v24 = [PCInterfaceMonitor sharedInstanceForIdentifier:1];
        v25 = [v24 networkCode];

        if (v25 && [v25 length])
        {
          v26 = [v25 copy];
          v27 = v19->_carrier;
          v19->_carrier = v26;
        }
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = v19->_carrier;
      v19->_carrier = @"WiFi";
    }

    if (v16 && v17)
    {
      v28 = [v16 copy];
      softwareVersion = v19->_softwareVersion;
      v19->_softwareVersion = v28;

      v30 = [v17 copy];
      softwareBuild = v19->_softwareBuild;
      v19->_softwareBuild = v30;
    }

    else
    {
      v32 = _CFCopySystemVersionDictionary();
      softwareBuild = v32;
      if (v32)
      {
        v33 = [(NSString *)v32 objectForKey:_kCFSystemVersionProductVersionKey];
        v34 = v19->_softwareVersion;
        v19->_softwareVersion = v33;

        v21 = [(NSString *)softwareBuild objectForKey:_kCFSystemVersionBuildVersionKey];
      }

      else
      {
        v35 = v19->_softwareVersion;
        v19->_softwareVersion = @"Unknown";
      }

      v36 = v19->_softwareBuild;
      v19->_softwareBuild = &v21->isa;
    }

    if (v15)
    {
      v37 = [v15 copy];
      hardwareVersion = v19->_hardwareVersion;
      v19->_hardwareVersion = v37;
    }

    else
    {
      size = 0;
      sysctlbyname("hw.machine", 0, &size, 0, 0);
      v39 = malloc_type_malloc(size, 0x100004077774924uLL);
      sysctlbyname("hw.machine", v39, &size, 0, 0);
      v40 = [[NSString alloc] initWithCString:v39 encoding:4];
      v41 = v19->_hardwareVersion;
      v19->_hardwareVersion = v40;

      if (v39)
      {
        free(v39);
      }
    }

    v19->_keepAliveInterval = a4;
    v19->_delayedResponseInterval = a5;
    v19->_usingServerStats = a6;
    v19->_keepAliveState = v14;
  }

  return v19;
}

@end