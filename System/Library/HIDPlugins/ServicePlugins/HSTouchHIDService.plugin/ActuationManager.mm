@interface ActuationManager
+ (id)playlistFromPlist:(id)plist forRevision:(unint64_t)revision;
+ (id)playlistFromV2OrV3Plist:(id)plist forRevision:(unint64_t)revision withPlistVersion:(unint64_t)version;
+ (id)plistV3FromPlaylist:(id)playlist;
- (ActuationManager)initWithService:(unsigned int)service;
- (NSDictionary)debug;
- (NSDictionary)overridePlaylistPlist;
- (NSDictionary)productionPlaylistPlist;
- (id)productionPlist;
- (int)actuateForDictionary:(id)dictionary strength:(float)strength timeDilation:(float)dilation device:(__MTActuator *)device actuatorLimits:(id)limits options:(unsigned int)options;
- (int)actuateForID:(int)d strength:(float)strength timeDilation:(float)dilation device:(__MTActuator *)device actuatorLimits:(id)limits options:(unsigned int)options;
- (int)actuateWaveform:(id)waveform strength:(float)strength timeDilation:(float)dilation device:(__MTActuator *)device actuatorLimits:(id)limits options:(unsigned int)options;
- (void)setOverridePlaylistPlist:(id)plist;
@end

@implementation ActuationManager

- (ActuationManager)initWithService:(unsigned int)service
{
  v11.receiver = self;
  v11.super_class = ActuationManager;
  v4 = [(ActuationManager *)&v11 init];
  if (v4)
  {
    CFProperty = IORegistryEntryCreateCFProperty(service, @"ActuatorRevision", kCFAllocatorDefault, 0);
    v4->_actuatorRevision = [CFProperty unsignedIntValue];
    productionPlist = [(ActuationManager *)v4 productionPlist];
    v7 = [ActuationManager playlistFromPlist:productionPlist forRevision:[(ActuationManager *)v4 actuatorRevision]];
    productionPlaylist = v4->_productionPlaylist;
    v4->_productionPlaylist = v7;

    overridePlaylist = v4->_overridePlaylist;
    v4->_overridePlaylist = 0;
  }

  return v4;
}

- (NSDictionary)productionPlaylistPlist
{
  productionPlaylist = [(ActuationManager *)self productionPlaylist];
  v4 = [ActuationManager plistV3FromPlaylist:productionPlaylist];
  v5 = [v4 mutableCopy];

  v6 = [NSString stringWithFormat:@"Production Playlist(Rev. %lu)", [(ActuationManager *)self actuatorRevision]];
  [v5 setObject:v6 forKeyedSubscript:@"Name"];

  v7 = [v5 copy];

  return v7;
}

- (NSDictionary)overridePlaylistPlist
{
  overridePlaylist = [(ActuationManager *)self overridePlaylist];
  v3 = [ActuationManager plistV3FromPlaylist:overridePlaylist];
  v4 = [v3 mutableCopy];

  [v4 setObject:@"Override Playlist" forKeyedSubscript:@"Name"];
  v5 = [v4 copy];

  return v5;
}

- (void)setOverridePlaylistPlist:(id)plist
{
  plistCopy = plist;
  v4 = [plistCopy objectForKeyedSubscript:@"Version"];
  v5 = +[ActuationManager playlistFromPlist:forRevision:](ActuationManager, "playlistFromPlist:forRevision:", plistCopy, [v4 unsignedIntegerValue]);
  [(ActuationManager *)self setOverridePlaylist:v5];
}

- (NSDictionary)debug
{
  v14 = @"ActuationPlaylists";
  v12[0] = @"Production";
  productionPlaylistPlist = [(ActuationManager *)self productionPlaylistPlist];
  v4 = productionPlaylistPlist;
  if (productionPlaylistPlist)
  {
    v5 = productionPlaylistPlist;
  }

  else
  {
    v5 = @"None";
  }

  v12[1] = @"Override";
  v13[0] = v5;
  overridePlaylistPlist = [(ActuationManager *)self overridePlaylistPlist];
  v7 = overridePlaylistPlist;
  if (overridePlaylistPlist)
  {
    v8 = overridePlaylistPlist;
  }

  else
  {
    v8 = @"None";
  }

  v13[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];

  return v10;
}

- (int)actuateForID:(int)d strength:(float)strength timeDilation:(float)dilation device:(__MTActuator *)device actuatorLimits:(id)limits options:(unsigned int)options
{
  v8 = *&options;
  v12 = *&d;
  limitsCopy = limits;
  v15 = [NSNumber numberWithInt:v12];
  if ((v8 & 8) != 0)
  {
    v16 = [NSNumber numberWithInt:-v12];

    v15 = v16;
  }

  overridePlaylist = [(ActuationManager *)self overridePlaylist];
  v18 = overridePlaylist;
  if (overridePlaylist)
  {
    productionPlaylist = overridePlaylist;
  }

  else
  {
    productionPlaylist = [(ActuationManager *)self productionPlaylist];
  }

  v20 = productionPlaylist;

  v21 = [v20 objectForKeyedSubscript:v15];
  *&v22 = strength;
  *&v23 = dilation;
  v24 = [(ActuationManager *)self actuateWaveform:v21 strength:device timeDilation:limitsCopy device:v8 actuatorLimits:v22 options:v23];

  return v24;
}

- (int)actuateForDictionary:(id)dictionary strength:(float)strength timeDilation:(float)dilation device:(__MTActuator *)device actuatorLimits:(id)limits options:(unsigned int)options
{
  v8 = *&options;
  dictionaryCopy = dictionary;
  limitsCopy = limits;
  if (dictionaryCopy)
  {
    v16 = [[ActuationWaveform alloc] initWithDictionary:dictionaryCopy];
    *&v17 = strength;
    *&v18 = dilation;
    v19 = [(ActuationManager *)self actuateWaveform:v16 strength:device timeDilation:limitsCopy device:v8 actuatorLimits:v17 options:v18];
  }

  else
  {
    v19 = -536870206;
  }

  return v19;
}

- (id)productionPlist
{
  ProductionPlist = MTActuatorGetProductionPlist();
  if (ProductionPlist)
  {
    v8 = 0;
    v3 = [NSPropertyListSerialization propertyListWithData:ProductionPlist options:0 format:0 error:&v8];
    v4 = v8;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v6 = MTLoggingPlugin();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [ActuationManager productionPlist];
      }
    }
  }

  else
  {
    v4 = MTLoggingPlugin();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [ActuationManager productionPlist];
    }

    v3 = 0;
  }

  return v3;
}

- (int)actuateWaveform:(id)waveform strength:(float)strength timeDilation:(float)dilation device:(__MTActuator *)device actuatorLimits:(id)limits options:(unsigned int)options
{
  v8 = *&options;
  v13 = -536870199;
  waveformCopy = waveform;
  limitsCopy = limits;
  if (device && (MTActuatorIsOpen() & 1) != 0)
  {
    *&v16 = strength;
    *&v17 = dilation;
    v18 = [waveformCopy parameterizeWaveformWithStrength:limitsCopy timeDilation:v8 actuatorLimits:v16 options:v17];
    v19 = v18;
    if (v18 && [v18 length] && objc_msgSend(v19, "length") <= 0x200)
    {
      kdebug_trace();
      [v19 bytes];
      [v19 length];
      v13 = MTActuatorSetReport();
    }
  }

  else
  {
    v13 = -536870185;
  }

  return v13;
}

+ (id)playlistFromPlist:(id)plist forRevision:(unint64_t)revision
{
  plistCopy = plist;
  v6 = plistCopy;
  if (plistCopy)
  {
    v7 = [plistCopy objectForKeyedSubscript:@"Version"];
    if (([v7 intValue]& 0xFFFFFFFE) == 2)
    {
      v8 = [ActuationManager playlistFromV2OrV3Plist:v6 forRevision:revision withPlistVersion:[v7 unsignedIntegerValue]];
      goto LABEL_10;
    }

    v9 = MTLoggingPlugin();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[ActuationManager playlistFromPlist:forRevision:];
    }
  }

  else
  {
    v7 = MTLoggingPlugin();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[ActuationManager playlistFromPlist:forRevision:];
    }
  }

  v8 = 0;
LABEL_10:

  return v8;
}

+ (id)playlistFromV2OrV3Plist:(id)plist forRevision:(unint64_t)revision withPlistVersion:(unint64_t)version
{
  plistCopy = plist;
  revision = [NSString stringWithFormat:@"Actuator_%d", revision];
  v6 = [plistCopy objectForKeyedSubscript:?];
  if (v6 || ([plistCopy objectForKeyedSubscript:@"Default"], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v26 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v7)
    {
      v8 = *v30;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v29 + 1) + 8 * i);
          v11 = [v10 objectForKeyedSubscript:@"ActuationID"];
          v12 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", -[v11 intValue]);
          if (version == 3)
          {
            v13 = [v10 objectForKeyedSubscript:@"Default"];
          }

          else
          {
            v13 = v10;
          }

          v14 = v13;
          v15 = [v10 objectForKeyedSubscript:@"Silent"];
          if (v11)
          {
            v16 = v14 == 0;
          }

          else
          {
            v16 = 1;
          }

          if (v16)
          {
            p_super = MTLoggingPlugin();
            if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109632;
              *v34 = v11 == 0;
              *&v34[4] = 1024;
              *&v34[6] = v14 == 0;
              v35 = 2048;
              versionCopy = version;
              _os_log_error_impl(&dword_0, p_super, OS_LOG_TYPE_ERROR, "Error parsing click playlist, unable to determine actuation id(%d) or default waveform not defined(%d) playlistVersion=%lu", buf, 0x18u);
            }
          }

          else
          {
            v18 = [[ActuationWaveform alloc] initWithDictionary:v14];
            p_super = &v18->super;
            if (v18)
            {
              [v26 setObject:v18 forKeyedSubscript:v11];
              if (!v15)
              {
                v15 = v14;
              }

              v19 = [[ActuationWaveform alloc] initWithDictionary:v15];
              if (v19)
              {
                [v26 setObject:v19 forKeyedSubscript:v12];
              }

              else
              {
                v20 = MTLoggingPlugin();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  *v34 = v12;
                  _os_log_error_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "Error parsing click playlist, failed to create silent waveform for actuationID=%@", buf, 0xCu);
                }
              }
            }

            else
            {
              v19 = MTLoggingPlugin();
              if (os_log_type_enabled(&v19->super, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *v34 = v11;
                _os_log_error_impl(&dword_0, &v19->super, OS_LOG_TYPE_ERROR, "Error parsing click playlist, failed to create default waveform for actuationID=%@", buf, 0xCu);
              }
            }
          }
        }

        v7 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v7);
    }

    v21 = [v26 copy];
  }

  else
  {
    v23 = MTLoggingPlugin();
    obj = v23;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [ActuationManager playlistFromV2OrV3Plist:revision forRevision:v23 withPlistVersion:?];
    }

    v21 = 0;
  }

  return v21;
}

+ (id)plistV3FromPlaylist:(id)playlist
{
  playlistCopy = playlist;
  if (playlistCopy)
  {
    v3 = objc_opt_new();
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = [playlistCopy allKeys];
    v4 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v4)
    {
      v5 = *v25;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v25 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v24 + 1) + 8 * i);
          intValue = [v7 intValue];
          if (intValue >= 0)
          {
            v9 = intValue;
          }

          else
          {
            v9 = -intValue;
          }

          v10 = [NSNumber numberWithInt:v9];
          v11 = [v3 objectForKeyedSubscript:v10];
          v12 = [v11 mutableCopy];

          if (!v12)
          {
            v12 = objc_opt_new();
            [v12 setObject:v10 forKeyedSubscript:@"ActuationID"];
            [v3 setObject:v12 forKeyedSubscript:v10];
          }

          intValue2 = [v7 intValue];
          v14 = @"Default";
          if (intValue2 < 0)
          {
            v14 = @"Silent";
          }

          v15 = v14;
          v16 = [playlistCopy objectForKeyedSubscript:v7];
          dictionary = [v16 dictionary];
          [v12 setObject:dictionary forKeyedSubscript:v15];

          v18 = [v12 copy];
          [v3 setObject:v18 forKeyedSubscript:v10];
        }

        v4 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v4);
    }

    if ([v3 count])
    {
      v28[0] = @"Version";
      v28[1] = @"Default";
      v29[0] = &off_111FF0;
      allValues = [v3 allValues];
      v29[1] = allValues;
      v20 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (void)playlistFromV2OrV3Plist:(uint64_t)a1 forRevision:(NSObject *)a2 withPlistVersion:.cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Error parsing click playlist, revision %lu and default not found", &v2, 0xCu);
}

@end