@interface ActuationManager
+ (id)playlistFromPlist:(id)a3 forRevision:(unint64_t)a4;
+ (id)playlistFromV2OrV3Plist:(id)a3 forRevision:(unint64_t)a4 withPlistVersion:(unint64_t)a5;
+ (id)plistV3FromPlaylist:(id)a3;
- (ActuationManager)initWithService:(unsigned int)a3;
- (NSDictionary)debug;
- (NSDictionary)overridePlaylistPlist;
- (NSDictionary)productionPlaylistPlist;
- (id)productionPlist;
- (int)actuateForDictionary:(id)a3 strength:(float)a4 timeDilation:(float)a5 device:(__MTActuator *)a6 actuatorLimits:(id)a7 options:(unsigned int)a8;
- (int)actuateForID:(int)a3 strength:(float)a4 timeDilation:(float)a5 device:(__MTActuator *)a6 actuatorLimits:(id)a7 options:(unsigned int)a8;
- (int)actuateWaveform:(id)a3 strength:(float)a4 timeDilation:(float)a5 device:(__MTActuator *)a6 actuatorLimits:(id)a7 options:(unsigned int)a8;
- (void)setOverridePlaylistPlist:(id)a3;
@end

@implementation ActuationManager

- (ActuationManager)initWithService:(unsigned int)a3
{
  v11.receiver = self;
  v11.super_class = ActuationManager;
  v4 = [(ActuationManager *)&v11 init];
  if (v4)
  {
    CFProperty = IORegistryEntryCreateCFProperty(a3, @"ActuatorRevision", kCFAllocatorDefault, 0);
    v4->_actuatorRevision = [CFProperty unsignedIntValue];
    v6 = [(ActuationManager *)v4 productionPlist];
    v7 = [ActuationManager playlistFromPlist:v6 forRevision:[(ActuationManager *)v4 actuatorRevision]];
    productionPlaylist = v4->_productionPlaylist;
    v4->_productionPlaylist = v7;

    overridePlaylist = v4->_overridePlaylist;
    v4->_overridePlaylist = 0;
  }

  return v4;
}

- (NSDictionary)productionPlaylistPlist
{
  v3 = [(ActuationManager *)self productionPlaylist];
  v4 = [ActuationManager plistV3FromPlaylist:v3];
  v5 = [v4 mutableCopy];

  v6 = [NSString stringWithFormat:@"Production Playlist(Rev. %lu)", [(ActuationManager *)self actuatorRevision]];
  [v5 setObject:v6 forKeyedSubscript:@"Name"];

  v7 = [v5 copy];

  return v7;
}

- (NSDictionary)overridePlaylistPlist
{
  v2 = [(ActuationManager *)self overridePlaylist];
  v3 = [ActuationManager plistV3FromPlaylist:v2];
  v4 = [v3 mutableCopy];

  [v4 setObject:@"Override Playlist" forKeyedSubscript:@"Name"];
  v5 = [v4 copy];

  return v5;
}

- (void)setOverridePlaylistPlist:(id)a3
{
  v6 = a3;
  v4 = [v6 objectForKeyedSubscript:@"Version"];
  v5 = +[ActuationManager playlistFromPlist:forRevision:](ActuationManager, "playlistFromPlist:forRevision:", v6, [v4 unsignedIntegerValue]);
  [(ActuationManager *)self setOverridePlaylist:v5];
}

- (NSDictionary)debug
{
  v14 = @"ActuationPlaylists";
  v12[0] = @"Production";
  v3 = [(ActuationManager *)self productionPlaylistPlist];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"None";
  }

  v12[1] = @"Override";
  v13[0] = v5;
  v6 = [(ActuationManager *)self overridePlaylistPlist];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
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

- (int)actuateForID:(int)a3 strength:(float)a4 timeDilation:(float)a5 device:(__MTActuator *)a6 actuatorLimits:(id)a7 options:(unsigned int)a8
{
  v8 = *&a8;
  v12 = *&a3;
  v14 = a7;
  v15 = [NSNumber numberWithInt:v12];
  if ((v8 & 8) != 0)
  {
    v16 = [NSNumber numberWithInt:-v12];

    v15 = v16;
  }

  v17 = [(ActuationManager *)self overridePlaylist];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = [(ActuationManager *)self productionPlaylist];
  }

  v20 = v19;

  v21 = [v20 objectForKeyedSubscript:v15];
  *&v22 = a4;
  *&v23 = a5;
  v24 = [(ActuationManager *)self actuateWaveform:v21 strength:a6 timeDilation:v14 device:v8 actuatorLimits:v22 options:v23];

  return v24;
}

- (int)actuateForDictionary:(id)a3 strength:(float)a4 timeDilation:(float)a5 device:(__MTActuator *)a6 actuatorLimits:(id)a7 options:(unsigned int)a8
{
  v8 = *&a8;
  v14 = a3;
  v15 = a7;
  if (v14)
  {
    v16 = [[ActuationWaveform alloc] initWithDictionary:v14];
    *&v17 = a4;
    *&v18 = a5;
    v19 = [(ActuationManager *)self actuateWaveform:v16 strength:a6 timeDilation:v15 device:v8 actuatorLimits:v17 options:v18];
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

- (int)actuateWaveform:(id)a3 strength:(float)a4 timeDilation:(float)a5 device:(__MTActuator *)a6 actuatorLimits:(id)a7 options:(unsigned int)a8
{
  v8 = *&a8;
  v13 = -536870199;
  v14 = a3;
  v15 = a7;
  if (a6 && (MTActuatorIsOpen() & 1) != 0)
  {
    *&v16 = a4;
    *&v17 = a5;
    v18 = [v14 parameterizeWaveformWithStrength:v15 timeDilation:v8 actuatorLimits:v16 options:v17];
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

+ (id)playlistFromPlist:(id)a3 forRevision:(unint64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:@"Version"];
    if (([v7 intValue]& 0xFFFFFFFE) == 2)
    {
      v8 = [ActuationManager playlistFromV2OrV3Plist:v6 forRevision:a4 withPlistVersion:[v7 unsignedIntegerValue]];
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

+ (id)playlistFromV2OrV3Plist:(id)a3 forRevision:(unint64_t)a4 withPlistVersion:(unint64_t)a5
{
  v25 = a3;
  v24 = [NSString stringWithFormat:@"Actuator_%d", a4];
  v6 = [v25 objectForKeyedSubscript:?];
  if (v6 || ([v25 objectForKeyedSubscript:@"Default"], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
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
          if (a5 == 3)
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
              v36 = a5;
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
      [ActuationManager playlistFromV2OrV3Plist:a4 forRevision:v23 withPlistVersion:?];
    }

    v21 = 0;
  }

  return v21;
}

+ (id)plistV3FromPlaylist:(id)a3
{
  v23 = a3;
  if (v23)
  {
    v3 = objc_opt_new();
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = [v23 allKeys];
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
          v8 = [v7 intValue];
          if (v8 >= 0)
          {
            v9 = v8;
          }

          else
          {
            v9 = -v8;
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

          v13 = [v7 intValue];
          v14 = @"Default";
          if (v13 < 0)
          {
            v14 = @"Silent";
          }

          v15 = v14;
          v16 = [v23 objectForKeyedSubscript:v7];
          v17 = [v16 dictionary];
          [v12 setObject:v17 forKeyedSubscript:v15];

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
      v19 = [v3 allValues];
      v29[1] = v19;
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