@interface VCMediaNegotiationBlobV2
+ (int)pruneDisabledCipherSuites:(int)suites u1AuthTagEnabled:(BOOL)enabled;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addStreamGroups:(id)groups;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)printWithTitle:(id)title logFile:(void *)file;
- (void)writeTo:(id)to;
@end

@implementation VCMediaNegotiationBlobV2

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCMediaNegotiationBlobV2 *)self setGeneralInfo:0];
  [(VCMediaNegotiationBlobV2 *)self setBandwidthSettings:0];
  [(VCMediaNegotiationBlobV2 *)self setCodecSupport:0];
  [(VCMediaNegotiationBlobV2 *)self setMicrophoneU1:0];
  [(VCMediaNegotiationBlobV2 *)self setCameraU1:0];
  [(VCMediaNegotiationBlobV2 *)self setMomentsSettings:0];
  [(VCMediaNegotiationBlobV2 *)self setStreamGroups:0];
  v3.receiver = self;
  v3.super_class = VCMediaNegotiationBlobV2;
  [(VCMediaNegotiationBlobV2 *)&v3 dealloc];
}

- (void)addStreamGroups:(id)groups
{
  streamGroups = self->_streamGroups;
  if (!streamGroups)
  {
    streamGroups = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_streamGroups = streamGroups;
  }

  [(NSMutableArray *)streamGroups addObject:groups];
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCMediaNegotiationBlobV2;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[VCMediaNegotiationBlobV2 description](&v3, sel_description), -[VCMediaNegotiationBlobV2 dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  generalInfo = self->_generalInfo;
  if (generalInfo)
  {
    [dictionary setObject:-[VCMediaNegotiationBlobV2GeneralInfo dictionaryRepresentation](generalInfo forKey:{"dictionaryRepresentation"), @"generalInfo"}];
  }

  bandwidthSettings = self->_bandwidthSettings;
  if (bandwidthSettings)
  {
    [dictionary setObject:-[VCMediaNegotiationBlobV2BandwidthSettings dictionaryRepresentation](bandwidthSettings forKey:{"dictionaryRepresentation"), @"bandwidthSettings"}];
  }

  codecSupport = self->_codecSupport;
  if (codecSupport)
  {
    [dictionary setObject:-[VCMediaNegotiationBlobV2CodecFeatures dictionaryRepresentation](codecSupport forKey:{"dictionaryRepresentation"), @"codecSupport"}];
  }

  microphoneU1 = self->_microphoneU1;
  if (microphoneU1)
  {
    [dictionary setObject:-[VCMediaNegotiationBlobV2MicrophoneSettingsU1 dictionaryRepresentation](microphoneU1 forKey:{"dictionaryRepresentation"), @"microphoneU1"}];
  }

  cameraU1 = self->_cameraU1;
  if (cameraU1)
  {
    [dictionary setObject:-[VCMediaNegotiationBlobV2CameraSettingsU1 dictionaryRepresentation](cameraU1 forKey:{"dictionaryRepresentation"), @"cameraU1"}];
  }

  momentsSettings = self->_momentsSettings;
  if (momentsSettings)
  {
    [dictionary setObject:-[VCMediaNegotiationBlobV2MomentsSettings dictionaryRepresentation](momentsSettings forKey:{"dictionaryRepresentation"), @"momentsSettings"}];
  }

  if ([(NSMutableArray *)self->_streamGroups count])
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_streamGroups, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    streamGroups = self->_streamGroups;
    v12 = [(NSMutableArray *)streamGroups countByEnumeratingWithState:&v18 objects:v17 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(streamGroups);
          }

          [v10 addObject:{objc_msgSend(*(*(&v18 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v13 = [(NSMutableArray *)streamGroups countByEnumeratingWithState:&v18 objects:v17 count:16];
      }

      while (v13);
    }

    [dictionary setObject:v10 forKey:@"streamGroups"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_generalInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_bandwidthSettings)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_codecSupport)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_microphoneU1)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_cameraU1)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_momentsSettings)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  streamGroups = self->_streamGroups;
  v5 = [(NSMutableArray *)streamGroups countByEnumeratingWithState:&v10 objects:v9 count:16];
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
          objc_enumerationMutation(streamGroups);
        }

        PBDataWriterWriteSubmessage();
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)streamGroups countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v6);
  }
}

- (void)copyTo:(id)to
{
  if (self->_generalInfo)
  {
    [to setGeneralInfo:?];
  }

  if (self->_bandwidthSettings)
  {
    [to setBandwidthSettings:?];
  }

  if (self->_codecSupport)
  {
    [to setCodecSupport:?];
  }

  if (self->_microphoneU1)
  {
    [to setMicrophoneU1:?];
  }

  if (self->_cameraU1)
  {
    [to setCameraU1:?];
  }

  if (self->_momentsSettings)
  {
    [to setMomentsSettings:?];
  }

  if ([(VCMediaNegotiationBlobV2 *)self streamGroupsCount])
  {
    [to clearStreamGroups];
    streamGroupsCount = [(VCMediaNegotiationBlobV2 *)self streamGroupsCount];
    if (streamGroupsCount)
    {
      v6 = streamGroupsCount;
      for (i = 0; i != v6; ++i)
      {
        [to addStreamGroups:{-[VCMediaNegotiationBlobV2 streamGroupsAtIndex:](self, "streamGroupsAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];

  v5[4] = [(VCMediaNegotiationBlobV2GeneralInfo *)self->_generalInfo copyWithZone:zone];
  v5[1] = [(VCMediaNegotiationBlobV2BandwidthSettings *)self->_bandwidthSettings copyWithZone:zone];

  v5[3] = [(VCMediaNegotiationBlobV2CodecFeatures *)self->_codecSupport copyWithZone:zone];
  v5[5] = [(VCMediaNegotiationBlobV2MicrophoneSettingsU1 *)self->_microphoneU1 copyWithZone:zone];

  v5[2] = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self->_cameraU1 copyWithZone:zone];
  v5[6] = [(VCMediaNegotiationBlobV2MomentsSettings *)self->_momentsSettings copyWithZone:zone];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  streamGroups = self->_streamGroups;
  v7 = [(NSMutableArray *)streamGroups countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(streamGroups);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) copyWithZone:zone];
        [v5 addStreamGroups:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)streamGroups countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    generalInfo = self->_generalInfo;
    if (!(generalInfo | *(equal + 4)) || (v5 = [(VCMediaNegotiationBlobV2GeneralInfo *)generalInfo isEqual:?]) != 0)
    {
      bandwidthSettings = self->_bandwidthSettings;
      if (!(bandwidthSettings | *(equal + 1)) || (v5 = [(VCMediaNegotiationBlobV2BandwidthSettings(Utils) *)bandwidthSettings isEqual:?]) != 0)
      {
        codecSupport = self->_codecSupport;
        if (!(codecSupport | *(equal + 3)) || (v5 = [(VCMediaNegotiationBlobV2CodecFeatures *)codecSupport isEqual:?]) != 0)
        {
          microphoneU1 = self->_microphoneU1;
          if (!(microphoneU1 | *(equal + 5)) || (v5 = [(VCMediaNegotiationBlobV2MicrophoneSettingsU1 *)microphoneU1 isEqual:?]) != 0)
          {
            cameraU1 = self->_cameraU1;
            if (!(cameraU1 | *(equal + 2)) || (v5 = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)cameraU1 isEqual:?]) != 0)
            {
              momentsSettings = self->_momentsSettings;
              if (!(momentsSettings | *(equal + 6)) || (v5 = [(VCMediaNegotiationBlobV2MomentsSettings *)momentsSettings isEqual:?]) != 0)
              {
                streamGroups = self->_streamGroups;
                if (streamGroups | *(equal + 7))
                {

                  LOBYTE(v5) = [(NSMutableArray *)streamGroups isEqual:?];
                }

                else
                {
                  LOBYTE(v5) = 1;
                }
              }
            }
          }
        }
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(VCMediaNegotiationBlobV2GeneralInfo *)self->_generalInfo hash];
  v4 = [(VCMediaNegotiationBlobV2BandwidthSettings *)self->_bandwidthSettings hash]^ v3;
  v5 = [(VCMediaNegotiationBlobV2CodecFeatures *)self->_codecSupport hash];
  v6 = v4 ^ v5 ^ [(VCMediaNegotiationBlobV2MicrophoneSettingsU1 *)self->_microphoneU1 hash];
  v7 = [(VCMediaNegotiationBlobV2CameraSettingsU1 *)self->_cameraU1 hash];
  v8 = v7 ^ [(VCMediaNegotiationBlobV2MomentsSettings *)self->_momentsSettings hash];
  return v6 ^ v8 ^ [(NSMutableArray *)self->_streamGroups hash];
}

- (void)mergeFrom:(id)from
{
  v27 = *MEMORY[0x1E69E9840];
  generalInfo = self->_generalInfo;
  v6 = *(from + 4);
  if (generalInfo)
  {
    if (v6)
    {
      [(VCMediaNegotiationBlobV2GeneralInfo *)generalInfo mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(VCMediaNegotiationBlobV2 *)self setGeneralInfo:?];
  }

  bandwidthSettings = self->_bandwidthSettings;
  v8 = *(from + 1);
  if (bandwidthSettings)
  {
    if (v8)
    {
      [(VCMediaNegotiationBlobV2BandwidthSettings *)bandwidthSettings mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(VCMediaNegotiationBlobV2 *)self setBandwidthSettings:?];
  }

  codecSupport = self->_codecSupport;
  v10 = *(from + 3);
  if (codecSupport)
  {
    if (v10)
    {
      [(VCMediaNegotiationBlobV2CodecFeatures *)codecSupport mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(VCMediaNegotiationBlobV2 *)self setCodecSupport:?];
  }

  microphoneU1 = self->_microphoneU1;
  v12 = *(from + 5);
  if (microphoneU1)
  {
    if (v12)
    {
      [(VCMediaNegotiationBlobV2MicrophoneSettingsU1 *)microphoneU1 mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(VCMediaNegotiationBlobV2 *)self setMicrophoneU1:?];
  }

  cameraU1 = self->_cameraU1;
  v14 = *(from + 2);
  if (cameraU1)
  {
    if (v14)
    {
      [(VCMediaNegotiationBlobV2CameraSettingsU1 *)cameraU1 mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(VCMediaNegotiationBlobV2 *)self setCameraU1:?];
  }

  momentsSettings = self->_momentsSettings;
  v16 = *(from + 6);
  if (momentsSettings)
  {
    if (v16)
    {
      [(VCMediaNegotiationBlobV2MomentsSettings *)momentsSettings mergeFrom:?];
    }
  }

  else if (v16)
  {
    [(VCMediaNegotiationBlobV2 *)self setMomentsSettings:?];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = *(from + 7);
  v18 = [v17 countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v24;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(VCMediaNegotiationBlobV2 *)self addStreamGroups:*(*(&v23 + 1) + 8 * i)];
      }

      v19 = [v17 countByEnumeratingWithState:&v23 objects:v22 count:16];
    }

    while (v19);
  }
}

- (void)printWithTitle:(id)title logFile:(void *)file
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (size=%lu):", title, objc_msgSend(-[VCMediaNegotiationBlobV2 data](self, "data"), "length")];
  uTF8String = [v6 UTF8String];
  VRLogfilePrintWithTimestamp(file, "Media Blob (v2) - %s\n", v8, v9, v10, v11, v12, v13, uTF8String);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v29 = v14;
      v30 = 2080;
      v31 = "[VCMediaNegotiationBlobV2(Utils) printWithTitle:logFile:]";
      v32 = 1024;
      v33 = 22;
      v34 = 2080;
      uTF8String2 = [v6 UTF8String];
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Media Blob (v2) - %s", buf, 0x26u);
    }
  }

  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s  ", "Media Blob (v2) - "];
  if ([(VCMediaNegotiationBlobV2 *)self hasGeneralInfo])
  {
    [(VCMediaNegotiationBlobV2GeneralInfo *)self->_generalInfo printWithLogFile:file prefix:v16];
  }

  if ([(VCMediaNegotiationBlobV2 *)self hasBandwidthSettings])
  {
    [(VCMediaNegotiationBlobV2BandwidthSettings *)self->_bandwidthSettings printWithLogFile:file prefix:v16];
  }

  if ([(VCMediaNegotiationBlobV2 *)self hasCodecSupport])
  {
    [(VCMediaNegotiationBlobV2CodecFeatures *)self->_codecSupport printWithLogFile:file prefix:v16];
  }

  if ([(VCMediaNegotiationBlobV2 *)self hasMicrophoneU1])
  {
    [(VCMediaNegotiationBlobV2MicrophoneSettingsU1 *)self->_microphoneU1 printWithLogFile:file prefix:v16];
  }

  if ([(VCMediaNegotiationBlobV2 *)self hasCameraU1])
  {
    cameraU1 = self->_cameraU1;
    [(VCMediaNegotiationBlobV2GeneralInfo *)self->_generalInfo screenResolution];
    [(VCMediaNegotiationBlobV2CameraSettingsU1 *)cameraU1 printWithLogFile:file prefix:v16 screenSize:?];
  }

  if ([(VCMediaNegotiationBlobV2 *)self hasMomentsSettings])
  {
    [(VCMediaNegotiationBlobV2MomentsSettings *)self->_momentsSettings printWithLogFile:file prefix:v16];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  streamGroups = [(VCMediaNegotiationBlobV2 *)self streamGroups];
  v19 = [(NSMutableArray *)streamGroups countByEnumeratingWithState:&v24 objects:v23 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      v22 = 0;
      do
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(streamGroups);
        }

        [*(*(&v24 + 1) + 8 * v22++) printWithLogFile:file prefix:v16];
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)streamGroups countByEnumeratingWithState:&v24 objects:v23 count:16];
    }

    while (v20);
  }
}

+ (int)pruneDisabledCipherSuites:(int)suites u1AuthTagEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = *&suites;
  v23 = *MEMORY[0x1E69E9840];
  v6 = +[VCMediaNegotiationBlobV2SettingsU1 appendCipherSuiteFlags:toDescription:](VCMediaNegotiationBlobV2SettingsU1, "appendCipherSuiteFlags:toDescription:", *&suites, [MEMORY[0x1E696AD60] string]);
  if (!enabledCopy || (VCFeatureFlagManager_U1AuthTagEnabled() & 1) == 0)
  {
    v5 = v5 & 0xFFFFFFF9;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315906;
        v16 = v7;
        v17 = 2080;
        v18 = "+[VCMediaNegotiationBlobV2(Utils) pruneDisabledCipherSuites:u1AuthTagEnabled:]";
        v19 = 1024;
        v20 = 53;
        v21 = 2112;
        v22 = v6;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Pruning AES128 RCCM2 ciphers from cipherSuites=%@", &v15, 0x26u);
      }
    }
  }

  if ((VCFeatureFlagManager_PQCU1Enabled() & 1) == 0)
  {
    v5 = v5 & 0xFFFFFFE7;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315906;
        v16 = v9;
        v17 = 2080;
        v18 = "+[VCMediaNegotiationBlobV2(Utils) pruneDisabledCipherSuites:u1AuthTagEnabled:]";
        v19 = 1024;
        v20 = 59;
        v21 = 2112;
        v22 = v6;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Pruning AES256 RCCM2 ciphers from cipherSuites=%@", &v15, 0x26u);
      }
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v13 = +[VCMediaNegotiationBlobV2SettingsU1 appendCipherSuiteFlags:toDescription:](VCMediaNegotiationBlobV2SettingsU1, "appendCipherSuiteFlags:toDescription:", v5, [MEMORY[0x1E696AD60] string]);
      v15 = 136315906;
      v16 = v11;
      v17 = 2080;
      v18 = "+[VCMediaNegotiationBlobV2(Utils) pruneDisabledCipherSuites:u1AuthTagEnabled:]";
      v19 = 1024;
      v20 = 61;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Resulting cipherSuites=%@", &v15, 0x26u);
    }
  }

  return v5;
}

@end