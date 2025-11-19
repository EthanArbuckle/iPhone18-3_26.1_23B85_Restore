@interface VCPositionalInfo
- (BOOL)isEqual:(id)a3;
- (VCPositionalInfo)init;
- (VCPositionalInfo)initWithCoder:(id)a3;
- (const)metadataPositionalInfo;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serialize;
- (tagAVCPositionalInfo)avcPositionalInfo;
- (void)applyPositionalInfo:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)serialize;
- (void)setAvcPositionalInfo:(tagAVCPositionalInfo *)a3;
- (void)setIsVisible:(BOOL)a3;
- (void)setProminenceIndex:(unsigned int)a3;
- (void)unserialize:(id)a3;
@end

@implementation VCPositionalInfo

- (VCPositionalInfo)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCPositionalInfo;
  result = [(VCPositionalInfo *)&v3 init];
  if (result)
  {
    result->_hasPendingChanges = 0;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || *(a3 + 8) != self->_isInCanvas || *(a3 + 2) != self->_size.width || *(a3 + 3) != self->_size.height || *(a3 + 4) != self->_x || *(a3 + 5) != self->_y || *(a3 + 6) != self->_z || *(a3 + 57) != self->_isVisible || *(a3 + 15) != self->_prominenceIndex)
  {
    return 0;
  }

  return *(a3 + 8) == *&self->_metadataPositionalInfo.positionX && *(a3 + 9) == *&self->_metadataPositionalInfo.positionZ && *(a3 + 10) == *&self->_metadataPositionalInfo.isVisible;
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
        [VCPositionalInfo serialize];
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
  v17 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:a3 error:&v8];
  if (v8)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCPositionalInfo unserialize:];
      }
    }
  }

  else
  {
    [(VCPositionalInfo *)self applyPositionalInfo:v4];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(VCPositionalInfo *)self description];
        *buf = 136315906;
        v10 = v5;
        v11 = 2080;
        v12 = "[VCPositionalInfo unserialize:]";
        v13 = 1024;
        v14 = 90;
        v15 = 2112;
        v16 = v7;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [AVC SPATIAL AUDIO] unserialize done. %@", buf, 0x26u);
      }
    }
  }
}

- (void)applyPositionalInfo:(id)a3
{
  v3 = *(a3 + 4);
  if (v3 != self->_x)
  {
    self->_x = v3;
    self->_hasPendingChanges = 1;
  }

  v4 = *(a3 + 5);
  if (v4 != self->_y)
  {
    self->_y = v4;
    self->_hasPendingChanges = 1;
  }

  v5 = *(a3 + 6);
  if (v5 != self->_z)
  {
    self->_z = v5;
    self->_hasPendingChanges = 1;
  }

  v6 = *(a3 + 2);
  if (v6 != self->_size.width)
  {
    self->_size.width = v6;
    self->_hasPendingChanges = 1;
  }

  v7 = *(a3 + 3);
  if (v7 != self->_size.height)
  {
    self->_size.height = v7;
    self->_hasPendingChanges = 1;
  }

  v8 = *(a3 + 8);
  if (v8 != self->_isInCanvas)
  {
    self->_isInCanvas = v8;
    self->_hasPendingChanges = 1;
  }

  v9 = *(a3 + 15);
  if (v9 != self->_prominenceIndex)
  {
    self->_prominenceIndex = v9;
    self->_hasPendingChanges = 1;
  }
}

- (const)metadataPositionalInfo
{
  *&self->_metadataPositionalInfo.positionX = vcvt_f32_f64(*&self->_x);
  result = &self->_metadataPositionalInfo;
  v3 = *&result[-1].positionZ;
  result->positionZ = v3;
  v4 = BYTE1(result[-1].isVisible);
  result->prominence = result[-1].isInCanvas;
  result->isVisible = v4;
  result->isInCanvas = LOBYTE(result[-3].isVisible);
  return result;
}

- (tagAVCPositionalInfo)avcPositionalInfo
{
  retstr->var0 = LOBYTE(self->var1.width);
  v3 = *&self->var3;
  retstr->var1 = *&self->var1.height;
  *&retstr->var2 = v3;
  retstr->var4 = *&self[1].var0;
  return self;
}

- (void)setAvcPositionalInfo:(tagAVCPositionalInfo *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  var2 = a3->var2;
  if (var2 != self->_x)
  {
    self->_x = var2;
    self->_hasPendingChanges = 1;
  }

  var3 = a3->var3;
  if (var3 != self->_y)
  {
    self->_y = var3;
    self->_hasPendingChanges = 1;
  }

  var4 = a3->var4;
  if (var4 != self->_z)
  {
    self->_z = var4;
    self->_hasPendingChanges = 1;
  }

  width = a3->var1.width;
  if (width != self->_size.width)
  {
    self->_size.width = width;
    self->_hasPendingChanges = 1;
  }

  height = a3->var1.height;
  if (height != self->_size.height)
  {
    self->_size.height = height;
    self->_hasPendingChanges = 1;
  }

  if ((a3->var0 & 1) != self->_isInCanvas)
  {
    self->_isInCanvas = a3->var0 & 1;
    self->_hasPendingChanges = 1;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315906;
      v12 = v9;
      v13 = 2080;
      v14 = "[VCPositionalInfo setAvcPositionalInfo:]";
      v15 = 1024;
      v16 = 139;
      v17 = 2112;
      v18 = self;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [AVC SPATIAL AUDIO] %@", &v11, 0x26u);
    }
  }
}

- (void)setProminenceIndex:(unsigned int)a3
{
  if (self->_prominenceIndex != a3)
  {
    self->_prominenceIndex = a3;
    self->_hasPendingChanges = 1;
  }
}

- (void)setIsVisible:(BOOL)a3
{
  if (self->_isVisible != a3)
  {
    self->_isVisible = a3;
    self->_hasPendingChanges = 1;
  }
}

- (void)encodeWithCoder:(id)a3
{
  x = self->_x;
  *&x = x;
  [a3 encodeFloat:kVCPositionalInfoTilePositionX forKey:x];
  y = self->_y;
  *&y = y;
  [a3 encodeFloat:kVCPositionalInfoTilePositionY forKey:y];
  z = self->_z;
  if (z != 0.0)
  {
    *&z = z;
    [a3 encodeFloat:kVCPositionalInfoTilePositionZ forKey:z];
  }

  width = self->_size.width;
  *&width = width;
  [a3 encodeFloat:kVCPositionalInfoTileWidth forKey:width];
  height = self->_size.height;
  *&height = height;
  [a3 encodeFloat:kVCPositionalInfoTileHeight forKey:height];
  if (self->_isInCanvas)
  {
    [a3 encodeBool:1 forKey:kVCPositionalInfoInCanvas];
  }

  if (self->_isVisible)
  {
    [a3 encodeBool:1 forKey:kVCPositionalInfoIsVisible];
  }

  if (self->_prominenceIndex)
  {

    [a3 encodeInt32:? forKey:?];
  }
}

- (VCPositionalInfo)initWithCoder:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = VCPositionalInfo;
  v4 = [(VCPositionalInfo *)&v11 init];
  if (!v4)
  {
    return v4;
  }

  if (([a3 containsValueForKey:kVCPositionalInfoTilePositionX] & 1) == 0)
  {
    [VCPositionalInfo initWithCoder:];
LABEL_19:

    return 0;
  }

  if (([a3 containsValueForKey:kVCPositionalInfoTilePositionY] & 1) == 0)
  {
    [VCPositionalInfo initWithCoder:];
    goto LABEL_19;
  }

  if (([a3 containsValueForKey:kVCPositionalInfoTileWidth] & 1) == 0)
  {
    [VCPositionalInfo initWithCoder:];
    goto LABEL_19;
  }

  if (([a3 containsValueForKey:kVCPositionalInfoTileHeight] & 1) == 0)
  {
    [VCPositionalInfo initWithCoder:];
    goto LABEL_19;
  }

  [a3 decodeFloatForKey:kVCPositionalInfoTilePositionX];
  v4->_x = v5;
  [a3 decodeFloatForKey:kVCPositionalInfoTilePositionY];
  v4->_y = v6;
  if ([a3 containsValueForKey:kVCPositionalInfoTilePositionZ])
  {
    [a3 decodeFloatForKey:kVCPositionalInfoTilePositionZ];
    v4->_z = v7;
  }

  [a3 decodeFloatForKey:kVCPositionalInfoTileWidth];
  v4->_size.width = v8;
  [a3 decodeFloatForKey:kVCPositionalInfoTileHeight];
  v4->_size.height = v9;
  if ([a3 containsValueForKey:kVCPositionalInfoInCanvas])
  {
    v4->_isInCanvas = [a3 decodeBoolForKey:kVCPositionalInfoInCanvas];
  }

  if ([a3 containsValueForKey:kVCPositionalInfoProminence])
  {
    v4->_prominenceIndex = [a3 decodeInt32ForKey:kVCPositionalInfoProminence];
  }

  if ([a3 containsValueForKey:kVCPositionalInfoIsVisible])
  {
    v4->_isVisible = [a3 decodeBoolForKey:kVCPositionalInfoIsVisible];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [[VCPositionalInfo allocWithZone:?]];
  if (result)
  {
    *(result + 8) = self->_isInCanvas;
    *(result + 1) = self->_size;
    x = self->_x;
    *(result + 4) = x;
    *(result + 5) = x;
    *(result + 6) = *&self->_z;
    *(result + 56) = self->_hasPendingChanges;
    *(result + 57) = self->_isVisible;
    *(result + 15) = self->_prominenceIndex;
    v6 = *&self->_metadataPositionalInfo.positionX;
    *(result + 10) = *&self->_metadataPositionalInfo.isVisible;
    *(result + 4) = v6;
  }

  return result;
}

- (void)serialize
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to serialize. error=%@");
}

- (void)unserialize:.cold.1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d [AVC SPATIAL AUDIO] Failed to serialize. error=%@");
}

- (void)initWithCoder:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_14_13(&dword_1DB56E000, v0, v1, " [%s] %s:%d Missing property name=%@", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithCoder:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_14_13(&dword_1DB56E000, v0, v1, " [%s] %s:%d Missing property name=%@", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithCoder:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_14_13(&dword_1DB56E000, v0, v1, " [%s] %s:%d Missing property name=%@", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithCoder:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_14_13(&dword_1DB56E000, v0, v1, " [%s] %s:%d Missing property name=%@", v2, v3, v4, v5, v6);
    }
  }
}

@end