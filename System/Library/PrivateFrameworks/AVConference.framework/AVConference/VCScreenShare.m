@interface VCScreenShare
- (VCScreenShare)initWithConfig:(id)a3 pid:(id)a4 captureSourceID:(id)a5;
- (void)dealloc;
- (void)setConfig:(id)a3 pid:(id)a4 captureSourceID:(id)a5;
- (void)setPrivateContentCaptureAllowedForConfig:(id)a3;
- (void)setScreenVirtualDisplayLabelforConfig:(id)a3;
- (void)updateScreenCaptureWithConfig:(id)a3;
@end

@implementation VCScreenShare

- (VCScreenShare)initWithConfig:(id)a3 pid:(id)a4 captureSourceID:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = VCScreenShare;
  v8 = [(VCScreenShare *)&v18 init];
  if (v8)
  {
    if (objc_opt_class() == v8)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 136315650;
      v20 = v10;
      v21 = 2080;
      v22 = "[VCScreenShare initWithConfig:pid:captureSourceID:]";
      v23 = 1024;
      v24 = 36;
      v12 = " [%s] %s:%d ";
      v13 = v11;
      v14 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v9 = [(VCScreenShare *)v8 performSelector:sel_logPrefix];
      }

      else
      {
        v9 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 136316162;
      v20 = v15;
      v21 = 2080;
      v22 = "[VCScreenShare initWithConfig:pid:captureSourceID:]";
      v23 = 1024;
      v24 = 36;
      v25 = 2112;
      v26 = v9;
      v27 = 2048;
      v28 = v8;
      v12 = " [%s] %s:%d %@(%p) ";
      v13 = v16;
      v14 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
LABEL_13:
    [(VCScreenShare *)v8 setConfig:a3 pid:a4 captureSourceID:a5];
    [(VCScreenShare *)v8 setScreenVirtualDisplayLabelforConfig:a3];
    [(VCScreenShare *)v8 setPrivateContentCaptureAllowedForConfig:a3];
  }

  return v8;
}

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v13 = v4;
        v14 = 2080;
        v15 = "[VCScreenShare dealloc]";
        v16 = 1024;
        v17 = 45;
        v6 = " [%s] %s:%d ";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCScreenShare *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v13 = v9;
        v14 = 2080;
        v15 = "[VCScreenShare dealloc]";
        v16 = 1024;
        v17 = 45;
        v18 = 2112;
        v19 = v3;
        v20 = 2048;
        v21 = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  [(VCScreenShare *)self setClientPID:0];
  [(VCScreenShare *)self setSelectiveScreenUUID:0];
  [(VCScreenShare *)self setExcludedApplicationBundleIDs:0];
  [(VCScreenShare *)self setClientBundleID:0];

  self->_clientAuditTokenData = 0;
  [(VCScreenShare *)self setExcludedAudioPids:0];

  v11.receiver = self;
  v11.super_class = VCScreenShare;
  [(VCScreenShare *)&v11 dealloc];
}

- (void)updateScreenCaptureWithConfig:(id)a3
{
  v5 = [(VCScreenShare *)self clientPID];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_captureSourceID];

  [(VCScreenShare *)self setConfig:a3 pid:v5 captureSourceID:v6];
}

- (void)setConfig:(id)a3 pid:(id)a4 captureSourceID:(id)a5
{
  self->_width = [objc_msgSend(a3 objectForKey:{@"vcScreenCaptureWidth", "intValue"}];
  self->_height = [objc_msgSend(a3 objectForKey:{@"vcScreenCaptureHeight", "intValue"}];
  self->_frameRate = [objc_msgSend(a3 objectForKey:{@"vcScreenCaptureFramerate", "intValue"}];
  self->_screenCaptureDisplayID = [objc_msgSend(a3 objectForKey:{@"vcScreenCaptureScreenDisplayID", "intValue"}];
  self->_displayMode = [objc_msgSend(a3 objectForKey:{@"vcScreenCaptureScreenDisplayMode", "intValue"}];
  -[VCScreenShare setClientBundleID:](self, "setClientBundleID:", [a3 objectForKey:@"vcScreenCaptureClientBundleID"]);
  [(VCScreenShare *)self setClientPID:a4];
  self->_isWindowed = [objc_msgSend(a3 objectForKey:{@"vcScreenCaptureScreenIsWindowed", "BOOLValue"}];
  self->_isCursorCaptured = [objc_msgSend(a3 objectForKey:{@"vcScreenCaptureIsCursorCaptured", "BOOLValue"}];
  -[VCScreenShare setExcludedApplicationBundleIDs:](self, "setExcludedApplicationBundleIDs:", [a3 objectForKey:@"vcScreenCaptureCaptureExcludedBundleIDs"]);
  self->_selectiveSharingPort = [objc_msgSend(a3 objectForKey:{@"vcScreenCaptureScreenMachPort", "unsignedIntValue"}];
  -[VCScreenShare setSelectiveScreenUUID:](self, "setSelectiveScreenUUID:", [a3 objectForKey:@"vcScreenCaptureScreenUUID"]);
  self->_captureSourceID = [a5 integerValue];
  v9 = [(VCScreenShare *)self excludedApplicationBundleIDs];
  v10 = (-[NSArray isEqual:](v9, "isEqual:", [MEMORY[0x1E695DFB0] null]) & 1) == 0 && -[NSArray count](-[VCScreenShare excludedApplicationBundleIDs](self, "excludedApplicationBundleIDs"), "count") != 0;
  self->_contentRepickingAllowed = v10;
  self->_pdProtectionOptions = [objc_msgSend(a3 objectForKey:{@"vcScreenCaptureCapturePdProtectionFlags", "unsignedIntValue"}];
  -[VCScreenShare setExcludedAudioPids:](self, "setExcludedAudioPids:", [a3 objectForKey:@"vcScreenCaptureCaptureExcludedAudioPids"]);
  v11 = [a3 objectForKeyedSubscript:@"vcScreenCaptureXpcAuthToken"];
  if (v11)
  {
    v11 = [a3 objectForKeyedSubscript:@"vcScreenCaptureXpcAuthToken"];
  }

  self->_clientAuditTokenData = v11;
}

- (void)setScreenVirtualDisplayLabelforConfig:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  if ([(VCScreenShare *)self clientBundleID])
  {
    v4 = [VCDefaults BOOLeanValueForKey:@"forceEnableScreenVirtualDisplayLabel" defaultValue:0];
    if ([(NSString *)[(VCScreenShare *)self clientBundleID] isEqualToString:@"com.apple.ScreenContinuityShell"]|| v4)
    {
      v5 = [VCDefaults copyStringValueForKey:@"screenVirtualDisplayLabelName"];
      if (v5)
      {
        v6 = v5;
      }

      else
      {
        v6 = @"Continuity";
      }

      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_18;
        }

        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }

        v15 = 136316162;
        v16 = v8;
        v17 = 2080;
        v18 = "[VCScreenShare setScreenVirtualDisplayLabelforConfig:]";
        v19 = 1024;
        v20 = 97;
        v21 = 2112;
        v22 = v6;
        v23 = 1024;
        LODWORD(v24) = v4;
        v10 = " [%s] %s:%d screenVirtualDisplayLabel=%@ forceEnableScreenVirtualDisplayLabel=%d";
        v11 = v9;
        v12 = 44;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v7 = [(VCScreenShare *)self performSelector:sel_logPrefix];
        }

        else
        {
          v7 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_18;
        }

        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }

        v15 = 136316674;
        v16 = v13;
        v17 = 2080;
        v18 = "[VCScreenShare setScreenVirtualDisplayLabelforConfig:]";
        v19 = 1024;
        v20 = 97;
        v21 = 2112;
        v22 = v7;
        v23 = 2048;
        v24 = self;
        v25 = 2112;
        v26 = v6;
        v27 = 1024;
        v28 = v4;
        v10 = " [%s] %s:%d %@(%p) screenVirtualDisplayLabel=%@ forceEnableScreenVirtualDisplayLabel=%d";
        v11 = v14;
        v12 = 64;
      }

      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v15, v12);
LABEL_18:
      self->_screenVirtualDisplayLabel = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v6];
    }
  }
}

- (void)setPrivateContentCaptureAllowedForConfig:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  IsInternalOSInstalled = VRTraceIsInternalOSInstalled();
  v6 = [a3 objectForKeyedSubscript:@"vcScreenCaptureXpcAuthToken"];
  v7 = v6 != 0;
  if (v6 && (v8 = [a3 objectForKeyedSubscript:@"vcScreenCaptureXpcAuthToken"], *&v9 = 0xAAAAAAAAAAAAAAAALL, *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL, *v16 = v9, *&v16[16] = v9, objc_msgSend(v8, "getBytes:length:", v16, 32), v25[0] = *v16, v25[1] = *&v16[16], !+[AVConferenceXPCServer clientWithToken:hasEntitlement:](AVConferenceXPCServer, "clientWithToken:hasEntitlement:", v25, @"com.apple.avconference.screencapture.privatecontent.allow")))
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v7 = 0;
  }

  else if ([(VCScreenShare *)self clientBundleID])
  {
    v10 = [(NSString *)[(VCScreenShare *)self clientBundleID] isEqualToString:@"com.apple.ScreenContinuityShell"];
    v11 = [(NSString *)[(VCScreenShare *)self clientBundleID] isEqualToString:@"com.apple.CoreDevice.dtremotedisplayd"]& IsInternalOSInstalled;
    v12 = [(NSString *)[(VCScreenShare *)self clientBundleID] isEqualToString:@"com.apple.VideoConference.AVConferenceTestRunneriOS"]& IsInternalOSInstalled;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 136316930;
      *&v16[4] = v13;
      *&v16[12] = 2080;
      *&v16[14] = "[VCScreenShare setPrivateContentCaptureAllowedForConfig:]";
      *&v16[22] = 1024;
      *&v16[24] = 124;
      *&v16[28] = 1024;
      *&v16[30] = v7;
      v17 = 1024;
      v18 = v10;
      v19 = 1024;
      v20 = v11;
      v21 = 1024;
      v22 = v12;
      v23 = 1024;
      v24 = IsInternalOSInstalled;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d hasEntitlement=%d, isNearbyScreenShare=%d, isCoreDeviceScreenShare=%d, isAVCAppTestRunner=%d, isInternalBuild=%d", v16, 0x3Au);
    }
  }

  if (v10 || !v7)
  {
    v15 = v7;
  }

  else
  {
    v15 = v11 | v12;
  }

  self->_privateContentCaptureAllowed = v15 & 1;
}

@end