@interface VCSessionPresentationInfo
+ (unsigned)avcUIStateWithUIState:(unsigned __int8)a3;
+ (unsigned)uiStateWithAVCUIState:(unsigned __int8)a3;
- (VCSessionPresentationInfo)init;
- (VCSessionPresentationInfo)initWithCoder:(id)a3;
- (const)metadataGlobalInfo;
- (id)serialize;
- (tagAVCSessionPresentationInfo)avcSessionPresentationInfo;
- (void)encodeWithCoder:(id)a3;
- (void)serialize;
- (void)setAvcSessionPresentationInfo:(tagAVCSessionPresentationInfo *)a3;
- (void)setDisplayID:(unsigned int)a3;
- (void)unserialize:(id)a3;
@end

@implementation VCSessionPresentationInfo

- (VCSessionPresentationInfo)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCSessionPresentationInfo;
  v2 = [(VCSessionPresentationInfo *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_hasPendingChanges = 0;
    v2->_displayID = 0;
    [(VCSessionPresentationInfo *)v2 setDisplayID:0];
  }

  return v3;
}

- (void)setDisplayID:(unsigned int)a3
{
  self->_displaySize.width = [+[VCHardwareSettingsEmbedded sharedInstance](VCHardwareSettingsEmbedded screenWidth];
  self->_displaySize.height = [+[VCHardwareSettingsEmbedded sharedInstance](VCHardwareSettingsEmbedded screenHeight];
  self->_displayID = a3;
}

+ (unsigned)uiStateWithAVCUIState:(unsigned __int8)a3
{
  if (a3 >= 4u)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (unsigned)avcUIStateWithUIState:(unsigned __int8)a3
{
  if (a3 >= 4u)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (id)serialize
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:v5];
  if (v5[0])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCSessionPresentationInfo serialize];
      }
    }
  }

  else
  {
    self->_hasPendingChanges = 0;
  }

  return v3;
}

- (void)unserialize:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:a3 error:&v15];
  if (v15)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCSessionPresentationInfo unserialize:];
      }
    }
  }

  else
  {
    v5 = v4;
    if (*(v4 + 8) != self->_displayID)
    {
      [(VCSessionPresentationInfo *)self setDisplayID:?];
      self->_hasPendingChanges = 1;
    }

    v6 = *(v5 + 64);
    if (v6 != self->_uiLayout)
    {
      self->_uiLayout = v6;
      self->_hasPendingChanges = 1;
    }

    v7 = *(v5 + 68);
    if (v7 != self->_uiState)
    {
      self->_uiState = v7;
      self->_hasPendingChanges = 1;
    }

    v8 = *(v5 + 32);
    if (v8 != self->_appWindowRect.origin.x)
    {
      self->_appWindowRect.origin.x = v8;
      self->_hasPendingChanges = 1;
    }

    v9 = *(v5 + 40);
    if (v9 != self->_appWindowRect.origin.y)
    {
      self->_appWindowRect.origin.y = v9;
      self->_hasPendingChanges = 1;
    }

    v10 = *(v5 + 48);
    if (v10 != self->_appWindowRect.size.width)
    {
      self->_appWindowRect.size.width = v10;
      self->_hasPendingChanges = 1;
    }

    v11 = *(v5 + 56);
    if (v11 != self->_appWindowRect.size.height)
    {
      self->_appWindowRect.size.height = v11;
      self->_hasPendingChanges = 1;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(VCSessionPresentationInfo *)self description];
        *buf = 136315906;
        v17 = v12;
        v18 = 2080;
        v19 = "[VCSessionPresentationInfo unserialize:]";
        v20 = 1024;
        v21 = 157;
        v22 = 2112;
        v23 = v14;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [AVC SPATIAL AUDIO] Updated presentation info: %@", buf, 0x26u);
      }
    }
  }
}

- (tagAVCSessionPresentationInfo)avcSessionPresentationInfo
{
  size = self->_appWindowRect.size;
  retstr->var0.origin = self->_appWindowRect.origin;
  retstr->var0.size = size;
  retstr->var1 = self->_displayID;
  retstr->var2 = [VCSessionPresentationInfo avcLayoutWithLayout:self->_uiLayout];
  result = [VCSessionPresentationInfo avcUIStateWithUIState:self->_uiState];
  retstr->var3 = result;
  return result;
}

- (void)setAvcSessionPresentationInfo:(tagAVCSessionPresentationInfo *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [VCSessionPresentationInfo uiStateWithAVCUIState:a3->var3];
  v6 = [VCSessionPresentationInfo layoutWithAVCLayout:a3->var2];
  if (a3->var1 != self->_displayID)
  {
    [(VCSessionPresentationInfo *)self setDisplayID:?];
    self->_hasPendingChanges = 1;
  }

  if (a3->var0.origin.x != self->_appWindowRect.origin.x)
  {
    self->_appWindowRect.origin.x = a3->var0.origin.x;
    self->_hasPendingChanges = 1;
  }

  y = a3->var0.origin.y;
  if (y != self->_appWindowRect.origin.y)
  {
    self->_appWindowRect.origin.y = y;
    self->_hasPendingChanges = 1;
  }

  width = a3->var0.size.width;
  if (width != self->_appWindowRect.size.width)
  {
    self->_appWindowRect.size.width = width;
    self->_hasPendingChanges = 1;
  }

  height = a3->var0.size.height;
  if (height != self->_appWindowRect.size.height)
  {
    self->_appWindowRect.size.height = height;
    self->_hasPendingChanges = 1;
  }

  if (v6 != self->_uiLayout)
  {
    self->_uiLayout = v6;
    self->_hasPendingChanges = 1;
  }

  if (v5 != self->_uiState)
  {
    self->_uiState = v5;
    self->_hasPendingChanges = 1;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315906;
      v13 = v10;
      v14 = 2080;
      v15 = "[VCSessionPresentationInfo setAvcSessionPresentationInfo:]";
      v16 = 1024;
      v17 = 188;
      v18 = 2112;
      v19 = self;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [AVC SPATIAL AUDIO] %@", &v12, 0x26u);
    }
  }
}

- (const)metadataGlobalInfo
{
  v2 = self;
  displayID = self->_displayID;
  v7 = vcvt_hight_f32_f64(vcvt_f32_f64(self->_displaySize), self->_appWindowRect.size);
  v4 = vcvt_f32_f64(self->_appWindowRect.origin);
  v5 = [VCSessionPresentationInfo metadataSateWithUIState:self->_uiState];
  v2->_metadataGlobalInfo.displayID = displayID;
  v2 = (v2 + 72);
  *(&v2->super.isa + 4) = v7;
  *(&v2->_displaySize.width + 4) = v4;
  HIDWORD(v2->_displaySize.height) = 0;
  LODWORD(v2->_appWindowRect.origin.x) = v5;
  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  x = self->_appWindowRect.origin.x;
  if (x != 0.0)
  {
    *&x = x;
    [a3 encodeFloat:kVCSessionPresentationInfoAppWindowRectX forKey:x];
  }

  y = self->_appWindowRect.origin.y;
  if (y != 0.0)
  {
    *&y = y;
    [a3 encodeFloat:kVCSessionPresentationInfoAppWindowRectY forKey:y];
  }

  width = self->_appWindowRect.size.width;
  *&width = width;
  [a3 encodeFloat:kVCSessionPresentationInfoAppWindowRectW forKey:width];
  height = self->_appWindowRect.size.height;
  *&height = height;
  [a3 encodeFloat:kVCSessionPresentationInfoAppWindowRectH forKey:height];
  displayID = self->_displayID;
  if (displayID)
  {
    [a3 encodeInt32:displayID forKey:kVCSessionPresentationInfoDisplayID];
  }

  uiLayout = self->_uiLayout;
  if (uiLayout)
  {
    [a3 encodeInt32:uiLayout forKey:kVCSessionPresentationInfoUILayout];
  }

  if (self->_uiState)
  {

    [a3 encodeInt32:? forKey:?];
  }
}

- (VCSessionPresentationInfo)initWithCoder:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = VCSessionPresentationInfo;
  v4 = [(VCSessionPresentationInfo *)&v10 init];
  if (v4)
  {
    if ([a3 containsValueForKey:kVCSessionPresentationInfoAppWindowRectX])
    {
      [a3 decodeFloatForKey:kVCSessionPresentationInfoAppWindowRectX];
      v4->_appWindowRect.origin.x = v5;
    }

    if ([a3 containsValueForKey:kVCSessionPresentationInfoAppWindowRectY])
    {
      [a3 decodeFloatForKey:kVCSessionPresentationInfoAppWindowRectY];
      v4->_appWindowRect.origin.y = v6;
    }

    if ([a3 containsValueForKey:kVCSessionPresentationInfoAppWindowRectW])
    {
      [a3 decodeFloatForKey:kVCSessionPresentationInfoAppWindowRectW];
      v4->_appWindowRect.size.width = v7;
    }

    if ([a3 containsValueForKey:kVCSessionPresentationInfoAppWindowRectH])
    {
      [a3 decodeFloatForKey:kVCSessionPresentationInfoAppWindowRectH];
      v4->_appWindowRect.size.height = v8;
    }

    if ([a3 containsValueForKey:kVCSessionPresentationInfoDisplayID])
    {
      v4->_displayID = [a3 decodeInt32ForKey:kVCSessionPresentationInfoDisplayID];
    }

    if ([a3 containsValueForKey:kVCSessionPresentationInfoUILayout])
    {
      v4->_uiLayout = [a3 decodeInt32ForKey:kVCSessionPresentationInfoUILayout];
    }

    if ([a3 containsValueForKey:kVCSessionPresentationInfoUIState])
    {
      v4->_uiState = [a3 decodeInt32ForKey:kVCSessionPresentationInfoUIState];
    }
  }

  return v4;
}

- (void)serialize
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to serialize. error=%@");
}

- (void)unserialize:.cold.1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d [AVC SPATIAL AUDIO] Failed to serialize. error=%@");
}

@end