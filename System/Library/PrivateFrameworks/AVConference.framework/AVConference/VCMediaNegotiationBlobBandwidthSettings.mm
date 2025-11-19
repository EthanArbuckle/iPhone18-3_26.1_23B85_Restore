@interface VCMediaNegotiationBlobBandwidthSettings
+ (int)bandwidthConfigurationFor2GWithArbiterMode:(unsigned __int8)a3;
+ (int)bandwidthConfigurationFor3GWithArbiterMode:(unsigned __int8)a3;
+ (int)bandwidthConfigurationFor5GWithArbiterMode:(unsigned __int8)a3;
+ (int)bandwidthConfigurationForAWDLWithArbiterMode:(unsigned __int8)a3;
+ (int)bandwidthConfigurationForLTEWithArbiterMode:(unsigned __int8)a3;
+ (int)bandwidthConfigurationForUSBWithArbiterMode:(unsigned __int8)a3;
+ (int)bandwidthConfigurationForWiFiWithArbiterMode:(unsigned __int8)a3;
+ (int)bandwidthConfigurationForWiredWithArbiterMode:(unsigned __int8)a3;
+ (int)bandwidthConfigurationWithArbiterMode:(unsigned __int8)a3 connectionType:(int)a4;
- (BOOL)isEqual:(id)a3;
- (id)configurationAsString:(int)a3;
- (id)configurationExtensionAsString:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)newBandwidthConfigurations;
- (int)StringAsConfiguration:(id)a3;
- (int)StringAsConfigurationExtension:(id)a3;
- (int)configurationExtension;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCMediaNegotiationBlobBandwidthSettings

- (id)configurationAsString:(int)a3
{
  if (a3 <= 1023)
  {
    if (a3 <= 15)
    {
      if (a3 <= 1)
      {
        if (!a3)
        {
          return @"mode_Invalid";
        }

        if (a3 == 1)
        {
          return @"mode_Default_Wifi";
        }
      }

      else
      {
        switch(a3)
        {
          case 2:
            return @"mode_Default_LTE";
          case 4:
            return @"mode_FaceTime_Wifi";
          case 8:
            return @"mode_FaceTime_LTE";
        }
      }
    }

    else if (a3 > 127)
    {
      switch(a3)
      {
        case 128:
          return @"mode_Screen_3G";
        case 256:
          return @"mode_Default_3G";
        case 512:
          return @"mode_FaceTime_2G";
      }
    }

    else
    {
      switch(a3)
      {
        case 16:
          return @"mode_Screen_Wifi";
        case 32:
          return @"mode_Screen_LTE";
        case 64:
          return @"mode_FaceTime_3G";
      }
    }
  }

  else if (a3 >= 0x10000)
  {
    if (a3 >= 0x80000)
    {
      switch(a3)
      {
        case 0x80000:
          return @"mode_ImmersiveVideo_WiFi";
        case 0x100000:
          return @"mode_ImmersiveVideo_Wired";
        case 0x1FFFFF:
          return @"mode_SUPPORTED";
      }
    }

    else
    {
      switch(a3)
      {
        case 0x10000:
          return @"mode_RemoteCamera_USB";
        case 0x20000:
          return @"mode_MultiwayScreen_Wifi";
        case 0x40000:
          return @"mode_LowLatencyScreen_Wired";
      }
    }
  }

  else if (a3 >= 0x2000)
  {
    switch(a3)
    {
      case 0x2000:
        return @"mode_iPadCompanion_USB";
      case 0x4000:
        return @"mode_FaceTime_5G";
      case 0x8000:
        return @"mode_RemoteCamera_AWDL";
    }
  }

  else
  {
    switch(a3)
    {
      case 1024:
        return @"mode_Screen_2G";
      case 2048:
        return @"mode_Default_2G";
      case 4096:
        return @"mode_iPadCompanion_AWDL";
    }
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
}

- (int)StringAsConfiguration:(id)a3
{
  if ([a3 isEqualToString:@"mode_Invalid"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"mode_Default_Wifi"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"mode_Default_LTE"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"mode_FaceTime_Wifi"])
  {
    return 4;
  }

  if ([a3 isEqualToString:@"mode_FaceTime_LTE"])
  {
    return 8;
  }

  if ([a3 isEqualToString:@"mode_Screen_Wifi"])
  {
    return 16;
  }

  if ([a3 isEqualToString:@"mode_Screen_LTE"])
  {
    return 32;
  }

  if ([a3 isEqualToString:@"mode_FaceTime_3G"])
  {
    return 64;
  }

  if ([a3 isEqualToString:@"mode_Screen_3G"])
  {
    return 128;
  }

  if ([a3 isEqualToString:@"mode_Default_3G"])
  {
    return 256;
  }

  if ([a3 isEqualToString:@"mode_FaceTime_2G"])
  {
    return 512;
  }

  if ([a3 isEqualToString:@"mode_Screen_2G"])
  {
    return 1024;
  }

  if ([a3 isEqualToString:@"mode_Default_2G"])
  {
    return 2048;
  }

  if ([a3 isEqualToString:@"mode_iPadCompanion_AWDL"])
  {
    return 4096;
  }

  if ([a3 isEqualToString:@"mode_iPadCompanion_USB"])
  {
    return 0x2000;
  }

  if ([a3 isEqualToString:@"mode_FaceTime_5G"])
  {
    return 0x4000;
  }

  if ([a3 isEqualToString:@"mode_RemoteCamera_AWDL"])
  {
    return 0x8000;
  }

  if ([a3 isEqualToString:@"mode_RemoteCamera_USB"])
  {
    return 0x10000;
  }

  if ([a3 isEqualToString:@"mode_MultiwayScreen_Wifi"])
  {
    return 0x20000;
  }

  if ([a3 isEqualToString:@"mode_LowLatencyScreen_Wired"])
  {
    return 0x40000;
  }

  if ([a3 isEqualToString:@"mode_ImmersiveVideo_WiFi"])
  {
    return 0x80000;
  }

  if ([a3 isEqualToString:@"mode_ImmersiveVideo_Wired"])
  {
    return 0x100000;
  }

  if ([a3 isEqualToString:@"mode_SUPPORTED"])
  {
    return 0x1FFFFF;
  }

  return 0;
}

- (int)configurationExtension
{
  if (*&self->_has)
  {
    return self->_configurationExtension;
  }

  else
  {
    return 0;
  }
}

- (id)configurationExtensionAsString:(int)a3
{
  if (a3 <= 1023)
  {
    if (a3 <= 15)
    {
      if (a3 <= 1)
      {
        if (!a3)
        {
          return @"mode_Invalid";
        }

        if (a3 == 1)
        {
          return @"mode_Default_Wifi";
        }
      }

      else
      {
        switch(a3)
        {
          case 2:
            return @"mode_Default_LTE";
          case 4:
            return @"mode_FaceTime_Wifi";
          case 8:
            return @"mode_FaceTime_LTE";
        }
      }
    }

    else if (a3 > 127)
    {
      switch(a3)
      {
        case 128:
          return @"mode_Screen_3G";
        case 256:
          return @"mode_Default_3G";
        case 512:
          return @"mode_FaceTime_2G";
      }
    }

    else
    {
      switch(a3)
      {
        case 16:
          return @"mode_Screen_Wifi";
        case 32:
          return @"mode_Screen_LTE";
        case 64:
          return @"mode_FaceTime_3G";
      }
    }
  }

  else if (a3 >= 0x10000)
  {
    if (a3 >= 0x80000)
    {
      switch(a3)
      {
        case 0x80000:
          return @"mode_ImmersiveVideo_WiFi";
        case 0x100000:
          return @"mode_ImmersiveVideo_Wired";
        case 0x1FFFFF:
          return @"mode_SUPPORTED";
      }
    }

    else
    {
      switch(a3)
      {
        case 0x10000:
          return @"mode_RemoteCamera_USB";
        case 0x20000:
          return @"mode_MultiwayScreen_Wifi";
        case 0x40000:
          return @"mode_LowLatencyScreen_Wired";
      }
    }
  }

  else if (a3 >= 0x2000)
  {
    switch(a3)
    {
      case 0x2000:
        return @"mode_iPadCompanion_USB";
      case 0x4000:
        return @"mode_FaceTime_5G";
      case 0x8000:
        return @"mode_RemoteCamera_AWDL";
    }
  }

  else
  {
    switch(a3)
    {
      case 1024:
        return @"mode_Screen_2G";
      case 2048:
        return @"mode_Default_2G";
      case 4096:
        return @"mode_iPadCompanion_AWDL";
    }
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
}

- (int)StringAsConfigurationExtension:(id)a3
{
  if ([a3 isEqualToString:@"mode_Invalid"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"mode_Default_Wifi"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"mode_Default_LTE"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"mode_FaceTime_Wifi"])
  {
    return 4;
  }

  if ([a3 isEqualToString:@"mode_FaceTime_LTE"])
  {
    return 8;
  }

  if ([a3 isEqualToString:@"mode_Screen_Wifi"])
  {
    return 16;
  }

  if ([a3 isEqualToString:@"mode_Screen_LTE"])
  {
    return 32;
  }

  if ([a3 isEqualToString:@"mode_FaceTime_3G"])
  {
    return 64;
  }

  if ([a3 isEqualToString:@"mode_Screen_3G"])
  {
    return 128;
  }

  if ([a3 isEqualToString:@"mode_Default_3G"])
  {
    return 256;
  }

  if ([a3 isEqualToString:@"mode_FaceTime_2G"])
  {
    return 512;
  }

  if ([a3 isEqualToString:@"mode_Screen_2G"])
  {
    return 1024;
  }

  if ([a3 isEqualToString:@"mode_Default_2G"])
  {
    return 2048;
  }

  if ([a3 isEqualToString:@"mode_iPadCompanion_AWDL"])
  {
    return 4096;
  }

  if ([a3 isEqualToString:@"mode_iPadCompanion_USB"])
  {
    return 0x2000;
  }

  if ([a3 isEqualToString:@"mode_FaceTime_5G"])
  {
    return 0x4000;
  }

  if ([a3 isEqualToString:@"mode_RemoteCamera_AWDL"])
  {
    return 0x8000;
  }

  if ([a3 isEqualToString:@"mode_RemoteCamera_USB"])
  {
    return 0x10000;
  }

  if ([a3 isEqualToString:@"mode_MultiwayScreen_Wifi"])
  {
    return 0x20000;
  }

  if ([a3 isEqualToString:@"mode_LowLatencyScreen_Wired"])
  {
    return 0x40000;
  }

  if ([a3 isEqualToString:@"mode_ImmersiveVideo_WiFi"])
  {
    return 0x80000;
  }

  if ([a3 isEqualToString:@"mode_ImmersiveVideo_Wired"])
  {
    return 0x100000;
  }

  if ([a3 isEqualToString:@"mode_SUPPORTED"])
  {
    return 0x1FFFFF;
  }

  return 0;
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCMediaNegotiationBlobBandwidthSettings;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[VCMediaNegotiationBlobBandwidthSettings description](&v3, sel_description), -[VCMediaNegotiationBlobBandwidthSettings dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  configuration = self->_configuration;
  if (configuration <= 1023)
  {
    if (configuration <= 15)
    {
      if (configuration <= 1)
      {
        if (!configuration)
        {
          v5 = @"mode_Invalid";
          goto LABEL_55;
        }

        if (configuration == 1)
        {
          v5 = @"mode_Default_Wifi";
          goto LABEL_55;
        }
      }

      else
      {
        switch(configuration)
        {
          case 2:
            v5 = @"mode_Default_LTE";
            goto LABEL_55;
          case 4:
            v5 = @"mode_FaceTime_Wifi";
            goto LABEL_55;
          case 8:
            v5 = @"mode_FaceTime_LTE";
            goto LABEL_55;
        }
      }
    }

    else if (configuration > 127)
    {
      switch(configuration)
      {
        case 128:
          v5 = @"mode_Screen_3G";
          goto LABEL_55;
        case 256:
          v5 = @"mode_Default_3G";
          goto LABEL_55;
        case 512:
          v5 = @"mode_FaceTime_2G";
          goto LABEL_55;
      }
    }

    else
    {
      switch(configuration)
      {
        case 16:
          v5 = @"mode_Screen_Wifi";
          goto LABEL_55;
        case 32:
          v5 = @"mode_Screen_LTE";
          goto LABEL_55;
        case 64:
          v5 = @"mode_FaceTime_3G";
          goto LABEL_55;
      }
    }
  }

  else if (configuration >= 0x10000)
  {
    if (configuration >= 0x80000)
    {
      switch(configuration)
      {
        case 0x80000:
          v5 = @"mode_ImmersiveVideo_WiFi";
          goto LABEL_55;
        case 0x100000:
          v5 = @"mode_ImmersiveVideo_Wired";
          goto LABEL_55;
        case 0x1FFFFF:
          v5 = @"mode_SUPPORTED";
          goto LABEL_55;
      }
    }

    else
    {
      switch(configuration)
      {
        case 0x10000:
          v5 = @"mode_RemoteCamera_USB";
          goto LABEL_55;
        case 0x20000:
          v5 = @"mode_MultiwayScreen_Wifi";
          goto LABEL_55;
        case 0x40000:
          v5 = @"mode_LowLatencyScreen_Wired";
          goto LABEL_55;
      }
    }
  }

  else if (configuration >= 0x2000)
  {
    switch(configuration)
    {
      case 0x2000:
        v5 = @"mode_iPadCompanion_USB";
        goto LABEL_55;
      case 0x4000:
        v5 = @"mode_FaceTime_5G";
        goto LABEL_55;
      case 0x8000:
        v5 = @"mode_RemoteCamera_AWDL";
        goto LABEL_55;
    }
  }

  else
  {
    switch(configuration)
    {
      case 1024:
        v5 = @"mode_Screen_2G";
        goto LABEL_55;
      case 2048:
        v5 = @"mode_Default_2G";
        goto LABEL_55;
      case 4096:
        v5 = @"mode_iPadCompanion_AWDL";
        goto LABEL_55;
    }
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_configuration];
LABEL_55:
  [v3 setObject:v5 forKey:@"configuration"];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_maxBandwidth), @"maxBandwidth"}];
  if (*&self->_has)
  {
    configurationExtension = self->_configurationExtension;
    if (configurationExtension <= 1023)
    {
      if (configurationExtension <= 15)
      {
        if (configurationExtension <= 1)
        {
          if (!configurationExtension)
          {
            v7 = @"mode_Invalid";
            goto LABEL_110;
          }

          if (configurationExtension == 1)
          {
            v7 = @"mode_Default_Wifi";
            goto LABEL_110;
          }
        }

        else
        {
          switch(configurationExtension)
          {
            case 2:
              v7 = @"mode_Default_LTE";
              goto LABEL_110;
            case 4:
              v7 = @"mode_FaceTime_Wifi";
              goto LABEL_110;
            case 8:
              v7 = @"mode_FaceTime_LTE";
              goto LABEL_110;
          }
        }
      }

      else if (configurationExtension > 127)
      {
        switch(configurationExtension)
        {
          case 128:
            v7 = @"mode_Screen_3G";
            goto LABEL_110;
          case 256:
            v7 = @"mode_Default_3G";
            goto LABEL_110;
          case 512:
            v7 = @"mode_FaceTime_2G";
            goto LABEL_110;
        }
      }

      else
      {
        switch(configurationExtension)
        {
          case 16:
            v7 = @"mode_Screen_Wifi";
            goto LABEL_110;
          case 32:
            v7 = @"mode_Screen_LTE";
            goto LABEL_110;
          case 64:
            v7 = @"mode_FaceTime_3G";
            goto LABEL_110;
        }
      }
    }

    else if (configurationExtension >= 0x10000)
    {
      if (configurationExtension >= 0x80000)
      {
        switch(configurationExtension)
        {
          case 0x80000:
            v7 = @"mode_ImmersiveVideo_WiFi";
            goto LABEL_110;
          case 0x100000:
            v7 = @"mode_ImmersiveVideo_Wired";
            goto LABEL_110;
          case 0x1FFFFF:
            v7 = @"mode_SUPPORTED";
            goto LABEL_110;
        }
      }

      else
      {
        switch(configurationExtension)
        {
          case 0x10000:
            v7 = @"mode_RemoteCamera_USB";
            goto LABEL_110;
          case 0x20000:
            v7 = @"mode_MultiwayScreen_Wifi";
            goto LABEL_110;
          case 0x40000:
            v7 = @"mode_LowLatencyScreen_Wired";
            goto LABEL_110;
        }
      }
    }

    else if (configurationExtension >= 0x2000)
    {
      switch(configurationExtension)
      {
        case 0x2000:
          v7 = @"mode_iPadCompanion_USB";
          goto LABEL_110;
        case 0x4000:
          v7 = @"mode_FaceTime_5G";
          goto LABEL_110;
        case 0x8000:
          v7 = @"mode_RemoteCamera_AWDL";
          goto LABEL_110;
      }
    }

    else
    {
      switch(configurationExtension)
      {
        case 1024:
          v7 = @"mode_Screen_2G";
          goto LABEL_110;
        case 2048:
          v7 = @"mode_Default_2G";
          goto LABEL_110;
        case 4096:
          v7 = @"mode_iPadCompanion_AWDL";
LABEL_110:
          [v3 setObject:v7 forKey:@"configurationExtension"];
          return v3;
      }
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_configurationExtension];
    goto LABEL_110;
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteUint32Field();
  if (*&self->_has)
  {

    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)a3
{
  *(a3 + 2) = self->_configuration;
  *(a3 + 4) = self->_maxBandwidth;
  if (*&self->_has)
  {
    *(a3 + 3) = self->_configurationExtension;
    *(a3 + 20) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 2) = self->_configuration;
  *(result + 4) = self->_maxBandwidth;
  if (*&self->_has)
  {
    *(result + 3) = self->_configurationExtension;
    *(result + 20) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (self->_configuration != *(a3 + 2) || self->_maxBandwidth != *(a3 + 4))
    {
      goto LABEL_8;
    }

    LOBYTE(v5) = (*(a3 + 20) & 1) == 0;
    if (*&self->_has)
    {
      if ((*(a3 + 20) & 1) != 0 && self->_configurationExtension == *(a3 + 3))
      {
        LOBYTE(v5) = 1;
        return v5;
      }

LABEL_8:
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_configurationExtension;
  }

  else
  {
    v2 = 0;
  }

  return (2654435761 * self->_maxBandwidth) ^ v2 ^ (2654435761 * self->_configuration);
}

- (void)mergeFrom:(id)a3
{
  self->_configuration = *(a3 + 2);
  self->_maxBandwidth = *(a3 + 4);
  if (*(a3 + 20))
  {
    self->_configurationExtension = *(a3 + 3);
    *&self->_has |= 1u;
  }
}

+ (int)bandwidthConfigurationFor2GWithArbiterMode:(unsigned __int8)a3
{
  if (a3 < 9u)
  {
    return dword_1DBD50468[a3];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    +[VCMediaNegotiationBlobBandwidthSettings(BandwidthSettings) bandwidthConfigurationFor2GWithArbiterMode:];
  }

  return 0;
}

+ (int)bandwidthConfigurationFor3GWithArbiterMode:(unsigned __int8)a3
{
  if (a3 < 9u)
  {
    return dword_1DBD5048C[a3];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    +[VCMediaNegotiationBlobBandwidthSettings(BandwidthSettings) bandwidthConfigurationFor3GWithArbiterMode:];
  }

  return 0;
}

+ (int)bandwidthConfigurationForLTEWithArbiterMode:(unsigned __int8)a3
{
  if (a3 < 9u)
  {
    return dword_1DBD504B0[a3];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    +[VCMediaNegotiationBlobBandwidthSettings(BandwidthSettings) bandwidthConfigurationForLTEWithArbiterMode:];
  }

  return 0;
}

+ (int)bandwidthConfigurationFor5GWithArbiterMode:(unsigned __int8)a3
{
  if (a3 == 1)
  {
    return 0x4000;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    +[VCMediaNegotiationBlobBandwidthSettings(BandwidthSettings) bandwidthConfigurationFor5GWithArbiterMode:];
  }

  return 0;
}

+ (int)bandwidthConfigurationForWiFiWithArbiterMode:(unsigned __int8)a3
{
  if (a3 < 9u)
  {
    return dword_1DBD504D4[a3];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    +[VCMediaNegotiationBlobBandwidthSettings(BandwidthSettings) bandwidthConfigurationForWiFiWithArbiterMode:];
  }

  return 0;
}

+ (int)bandwidthConfigurationForAWDLWithArbiterMode:(unsigned __int8)a3
{
  if ((a3 - 4) < 3)
  {
    return dword_1DBD504F8[(a3 - 4)];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    +[VCMediaNegotiationBlobBandwidthSettings(BandwidthSettings) bandwidthConfigurationForAWDLWithArbiterMode:];
  }

  return 0;
}

+ (int)bandwidthConfigurationForUSBWithArbiterMode:(unsigned __int8)a3
{
  if ((a3 - 4) < 3)
  {
    return dword_1DBD50504[(a3 - 4)];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    +[VCMediaNegotiationBlobBandwidthSettings(BandwidthSettings) bandwidthConfigurationForUSBWithArbiterMode:];
  }

  return 0;
}

+ (int)bandwidthConfigurationForWiredWithArbiterMode:(unsigned __int8)a3
{
  if (a3 == 5)
  {
    return 0x40000;
  }

  if (a3 == 8)
  {
    return 0x100000;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    +[VCMediaNegotiationBlobBandwidthSettings(BandwidthSettings) bandwidthConfigurationForWiredWithArbiterMode:];
  }

  return 0;
}

+ (int)bandwidthConfigurationWithArbiterMode:(unsigned __int8)a3 connectionType:(int)a4
{
  v5 = a3;
  v19 = *MEMORY[0x1E69E9840];
  if (a4 > 3)
  {
    if (a4 > 5)
    {
      if (a4 == 6)
      {

        return [a1 bandwidthConfigurationFor5GWithArbiterMode:?];
      }

      else
      {
        if (a4 != 7)
        {
LABEL_34:
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v7 = VRTraceErrorLogLevelToCSTR();
            v8 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              v9 = 136316162;
              v10 = v7;
              v11 = 2080;
              v12 = "+[VCMediaNegotiationBlobBandwidthSettings(BandwidthSettings) bandwidthConfigurationWithArbiterMode:connectionType:]";
              v13 = 1024;
              v14 = 1212;
              v15 = 1024;
              v16 = a4;
              v17 = 1024;
              v18 = v5;
              _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid bandwidth configuration: connection type=%d, arbiterMode=%hhu", &v9, 0x28u);
            }
          }

          return 0;
        }

        return [a1 bandwidthConfigurationForWiredWithArbiterMode:?];
      }
    }

    else if (a4 == 4)
    {

      return [a1 bandwidthConfigurationForAWDLWithArbiterMode:?];
    }

    else
    {

      return [a1 bandwidthConfigurationForUSBWithArbiterMode:?];
    }
  }

  else if (a4 > 1)
  {
    if (a4 == 2)
    {

      return [a1 bandwidthConfigurationForLTEWithArbiterMode:?];
    }

    else
    {

      return [a1 bandwidthConfigurationForWiFiWithArbiterMode:?];
    }
  }

  else
  {
    if (a4)
    {
      if (a4 == 1)
      {

        return [a1 bandwidthConfigurationFor3GWithArbiterMode:?];
      }

      goto LABEL_34;
    }

    return [a1 bandwidthConfigurationFor2GWithArbiterMode:?];
  }
}

- (id)newBandwidthConfigurations
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  configuration = self->_configuration;
  if (configuration)
  {
    v9 = [[VCMediaNegotiatorBandwidthConfiguration alloc] initWithConnectionType:3 maxBandwidth:self->_maxBandwidth];
    [v3 addObject:v9];

    configuration = self->_configuration;
    if ((configuration & 2) == 0)
    {
LABEL_3:
      if ((configuration & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((configuration & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = [[VCMediaNegotiatorBandwidthConfiguration alloc] initWithConnectionType:2 maxBandwidth:self->_maxBandwidth];
  [v3 addObject:v10];

  configuration = self->_configuration;
  if ((configuration & 4) == 0)
  {
LABEL_4:
    if ((configuration & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  v11 = [[VCMediaNegotiatorBandwidthConfiguration alloc] initWithArbiterMode:1 connectionType:3 maxBandwidth:self->_maxBandwidth];
  [v3 addObject:v11];

  configuration = self->_configuration;
  if ((configuration & 8) == 0)
  {
LABEL_5:
    if ((configuration & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  v12 = [[VCMediaNegotiatorBandwidthConfiguration alloc] initWithArbiterMode:1 connectionType:2 maxBandwidth:self->_maxBandwidth];
  [v3 addObject:v12];

  configuration = self->_configuration;
  if ((configuration & 0x10) == 0)
  {
LABEL_6:
    if ((configuration & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  v13 = [[VCMediaNegotiatorBandwidthConfiguration alloc] initWithArbiterMode:3 connectionType:3 maxBandwidth:self->_maxBandwidth];
  [v3 addObject:v13];

  configuration = self->_configuration;
  if ((configuration & 0x20) == 0)
  {
LABEL_7:
    if ((configuration & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  v14 = [[VCMediaNegotiatorBandwidthConfiguration alloc] initWithArbiterMode:3 connectionType:2 maxBandwidth:self->_maxBandwidth];
  [v3 addObject:v14];

  configuration = self->_configuration;
  if ((configuration & 0x40) == 0)
  {
LABEL_8:
    if ((configuration & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  v15 = [[VCMediaNegotiatorBandwidthConfiguration alloc] initWithArbiterMode:1 connectionType:1 maxBandwidth:self->_maxBandwidth];
  [v3 addObject:v15];

  configuration = self->_configuration;
  if ((configuration & 0x80) == 0)
  {
LABEL_9:
    if ((configuration & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  v16 = [[VCMediaNegotiatorBandwidthConfiguration alloc] initWithArbiterMode:3 connectionType:1 maxBandwidth:self->_maxBandwidth];
  [v3 addObject:v16];

  configuration = self->_configuration;
  if ((configuration & 0x100) == 0)
  {
LABEL_10:
    if ((configuration & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  v17 = [[VCMediaNegotiatorBandwidthConfiguration alloc] initWithConnectionType:1 maxBandwidth:self->_maxBandwidth];
  [v3 addObject:v17];

  configuration = self->_configuration;
  if ((configuration & 0x200) == 0)
  {
LABEL_11:
    if ((configuration & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  v18 = [[VCMediaNegotiatorBandwidthConfiguration alloc] initWithArbiterMode:1 connectionType:0 maxBandwidth:self->_maxBandwidth];
  [v3 addObject:v18];

  configuration = self->_configuration;
  if ((configuration & 0x400) == 0)
  {
LABEL_12:
    if ((configuration & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_37:
  v19 = [[VCMediaNegotiatorBandwidthConfiguration alloc] initWithArbiterMode:3 connectionType:0 maxBandwidth:self->_maxBandwidth];
  [v3 addObject:v19];

  if ((self->_configuration & 0x800) != 0)
  {
LABEL_13:
    v5 = [[VCMediaNegotiatorBandwidthConfiguration alloc] initWithConnectionType:0 maxBandwidth:self->_maxBandwidth];
    [v3 addObject:v5];
  }

LABEL_14:
  configurationExtension = self->_configurationExtension;
  if ((configurationExtension & 0x1000) != 0)
  {
    v20 = [[VCMediaNegotiatorBandwidthConfiguration alloc] initWithArbiterMode:4 connectionType:4 maxBandwidth:self->_maxBandwidth];
    [v3 addObject:v20];

    configurationExtension = self->_configurationExtension;
    if ((configurationExtension & 0x2000) == 0)
    {
LABEL_16:
      if ((configurationExtension & 0x4000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_41;
    }
  }

  else if ((configurationExtension & 0x2000) == 0)
  {
    goto LABEL_16;
  }

  v21 = [[VCMediaNegotiatorBandwidthConfiguration alloc] initWithArbiterMode:4 connectionType:5 maxBandwidth:self->_maxBandwidth];
  [v3 addObject:v21];

  configurationExtension = self->_configurationExtension;
  if ((configurationExtension & 0x4000) == 0)
  {
LABEL_17:
    if ((configurationExtension & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  v22 = [[VCMediaNegotiatorBandwidthConfiguration alloc] initWithArbiterMode:1 connectionType:6 maxBandwidth:self->_maxBandwidth];
  [v3 addObject:v22];

  configurationExtension = self->_configurationExtension;
  if ((configurationExtension & 0x1000) == 0)
  {
LABEL_18:
    if ((configurationExtension & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  v23 = [[VCMediaNegotiatorBandwidthConfiguration alloc] initWithArbiterMode:5 connectionType:4 maxBandwidth:self->_maxBandwidth];
  [v3 addObject:v23];

  configurationExtension = self->_configurationExtension;
  if ((configurationExtension & 0x2000) == 0)
  {
LABEL_19:
    if ((configurationExtension & 0x8000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  v24 = [[VCMediaNegotiatorBandwidthConfiguration alloc] initWithArbiterMode:5 connectionType:5 maxBandwidth:self->_maxBandwidth];
  [v3 addObject:v24];

  configurationExtension = self->_configurationExtension;
  if ((configurationExtension & 0x8000) == 0)
  {
LABEL_20:
    if ((configurationExtension & 0x10000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  v25 = [[VCMediaNegotiatorBandwidthConfiguration alloc] initWithArbiterMode:6 connectionType:4 maxBandwidth:self->_maxBandwidth];
  [v3 addObject:v25];

  configurationExtension = self->_configurationExtension;
  if ((configurationExtension & 0x10000) == 0)
  {
LABEL_21:
    if ((configurationExtension & 0x20000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_46;
  }

LABEL_45:
  v26 = [[VCMediaNegotiatorBandwidthConfiguration alloc] initWithArbiterMode:6 connectionType:5 maxBandwidth:self->_maxBandwidth];
  [v3 addObject:v26];

  configurationExtension = self->_configurationExtension;
  if ((configurationExtension & 0x20000) == 0)
  {
LABEL_22:
    if ((configurationExtension & 0x40000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_47;
  }

LABEL_46:
  v27 = [[VCMediaNegotiatorBandwidthConfiguration alloc] initWithArbiterMode:7 connectionType:3 maxBandwidth:self->_maxBandwidth];
  [v3 addObject:v27];

  configurationExtension = self->_configurationExtension;
  if ((configurationExtension & 0x40000) == 0)
  {
LABEL_23:
    if ((configurationExtension & 0x80000) == 0)
    {
      goto LABEL_24;
    }

LABEL_48:
    v29 = [[VCMediaNegotiatorBandwidthConfiguration alloc] initWithArbiterMode:8 connectionType:3 maxBandwidth:self->_maxBandwidth];
    [v3 addObject:v29];

    if ((self->_configurationExtension & 0x100000) == 0)
    {
      return v3;
    }

    goto LABEL_25;
  }

LABEL_47:
  v28 = [[VCMediaNegotiatorBandwidthConfiguration alloc] initWithArbiterMode:5 connectionType:7 maxBandwidth:self->_maxBandwidth];
  [v3 addObject:v28];

  configurationExtension = self->_configurationExtension;
  if ((configurationExtension & 0x80000) != 0)
  {
    goto LABEL_48;
  }

LABEL_24:
  if ((configurationExtension & 0x100000) != 0)
  {
LABEL_25:
    v7 = [[VCMediaNegotiatorBandwidthConfiguration alloc] initWithArbiterMode:8 connectionType:7 maxBandwidth:self->_maxBandwidth];
    [v3 addObject:v7];
  }

  return v3;
}

@end