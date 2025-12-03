@interface VCMediaNegotiationBlobV2BandwidthSettings
+ (id)filteredSetForArbiterMode:(unsigned __int8)mode bandwidthConfigurations:(id)configurations;
- (BOOL)isDefaultSettings;
- (BOOL)isEqual:(id)equal;
- (BOOL)setupCapForBandwidthConfiguration:(id)configuration;
- (VCMediaNegotiationBlobV2BandwidthSettings)initWithBandwidthConfigurations:(id)configurations;
- (id)bandwidthConfigurations;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)cap2G;
- (unsigned)cap3G;
- (unsigned)cap5G;
- (unsigned)capLTE;
- (unsigned)capWifi;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)printWithLogFile:(void *)file prefix:(id)prefix;
- (void)setHasCap3G:(BOOL)g;
- (void)setHasCap5G:(BOOL)g;
- (void)setHasCapLTE:(BOOL)e;
- (void)setHasCapWifi:(BOOL)wifi;
- (void)setupCap2G:(unsigned int)g;
- (void)setupCap3G:(unsigned int)g;
- (void)setupCap5G:(unsigned int)g;
- (void)setupCapLTE:(unsigned int)e;
- (void)setupCapWifi:(unsigned int)wifi;
- (void)writeTo:(id)to;
@end

@implementation VCMediaNegotiationBlobV2BandwidthSettings

- (VCMediaNegotiationBlobV2BandwidthSettings)initWithBandwidthConfigurations:(id)configurations
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [(VCMediaNegotiationBlobV2BandwidthSettings *)self init];
  if (!v4)
  {
    return v4;
  }

  if (!configurations)
  {
    [VCMediaNegotiationBlobV2BandwidthSettings(Utils) initWithBandwidthConfigurations:];
LABEL_14:

    return 0;
  }

  v5 = [VCMediaNegotiationBlobV2BandwidthSettings filteredSetForArbiterMode:1 bandwidthConfigurations:configurations];
  if (!v5)
  {
    [VCMediaNegotiationBlobV2BandwidthSettings(Utils) initWithBandwidthConfigurations:];
    goto LABEL_14;
  }

  v6 = v5;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (![(VCMediaNegotiationBlobV2BandwidthSettings *)v4 setupCapForBandwidthConfiguration:*(*(&v13 + 1) + 8 * i)])
        {
          [VCMediaNegotiationBlobV2BandwidthSettings(Utils) initWithBandwidthConfigurations:];
          goto LABEL_14;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  return v4;
}

- (id)bandwidthConfigurations
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if (!v3)
  {
    [(VCMediaNegotiationBlobV2BandwidthSettings(Utils) *)&v17 bandwidthConfigurations];
LABEL_15:
    v15 = v17;
    v4 = v18[0];
    goto LABEL_8;
  }

  v4 = v3;
  v5 = [[VCMediaNegotiatorBandwidthConfiguration alloc] initWithConnectionType:0 maxBandwidth:[(VCMediaNegotiationBlobV2BandwidthSettings *)self cap2G]];
  if (!v5)
  {
    [VCMediaNegotiationBlobV2BandwidthSettings(Utils) bandwidthConfigurations];
    goto LABEL_15;
  }

  v6 = v5;
  [v4 addObject:v5];

  v7 = [[VCMediaNegotiatorBandwidthConfiguration alloc] initWithConnectionType:1 maxBandwidth:[(VCMediaNegotiationBlobV2BandwidthSettings *)self cap3G]];
  if (!v7)
  {
    [VCMediaNegotiationBlobV2BandwidthSettings(Utils) bandwidthConfigurations];
    goto LABEL_15;
  }

  v8 = v7;
  [v4 addObject:v7];

  v9 = [[VCMediaNegotiatorBandwidthConfiguration alloc] initWithConnectionType:2 maxBandwidth:[(VCMediaNegotiationBlobV2BandwidthSettings *)self capLTE]];
  if (!v9)
  {
    [VCMediaNegotiationBlobV2BandwidthSettings(Utils) bandwidthConfigurations];
    goto LABEL_15;
  }

  v10 = v9;
  [v4 addObject:v9];

  v11 = [[VCMediaNegotiatorBandwidthConfiguration alloc] initWithConnectionType:6 maxBandwidth:[(VCMediaNegotiationBlobV2BandwidthSettings *)self cap5G]];
  if (!v11)
  {
    [VCMediaNegotiationBlobV2BandwidthSettings(Utils) bandwidthConfigurations];
    goto LABEL_15;
  }

  v12 = v11;
  [v4 addObject:v11];

  v13 = [[VCMediaNegotiatorBandwidthConfiguration alloc] initWithConnectionType:3 maxBandwidth:[(VCMediaNegotiationBlobV2BandwidthSettings *)self capWifi]];
  if (!v13)
  {
    [VCMediaNegotiationBlobV2BandwidthSettings(Utils) bandwidthConfigurations];
    goto LABEL_15;
  }

  v14 = v13;
  [v4 addObject:v13];

  v15 = 0;
LABEL_8:

  return v4;
}

- (BOOL)isDefaultSettings
{
  v3 = objc_alloc_init(VCMediaNegotiationBlobV2BandwidthSettings);
  LOBYTE(self) = [(VCMediaNegotiationBlobV2BandwidthSettings(Utils) *)self isEqual:v3];

  return self;
}

- (void)printWithLogFile:(void *)file prefix:(id)prefix
{
  v24 = *MEMORY[0x1E69E9840];
  prefix = [MEMORY[0x1E696AD60] stringWithFormat:@"[%lu] %@", objc_msgSend(-[VCMediaNegotiationBlobV2BandwidthSettings data](self, "data"), "length"), prefix];
  [prefix appendFormat:@"BandwidthSettings: 2G=%u 3G=%u LTE=%u 5G=%u Wifi=%u", -[VCMediaNegotiationBlobV2BandwidthSettings cap2G](self, "cap2G"), -[VCMediaNegotiationBlobV2BandwidthSettings cap3G](self, "cap3G"), -[VCMediaNegotiationBlobV2BandwidthSettings capLTE](self, "capLTE"), -[VCMediaNegotiationBlobV2BandwidthSettings cap5G](self, "cap5G"), -[VCMediaNegotiationBlobV2BandwidthSettings capWifi](self, "capWifi")];
  uTF8String = [prefix UTF8String];
  VRLogfilePrintWithTimestamp(file, "%s\n", v8, v9, v10, v11, v12, v13, uTF8String);
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v17 = v14;
      v18 = 2080;
      v19 = "[VCMediaNegotiationBlobV2BandwidthSettings(Utils) printWithLogFile:prefix:]";
      v20 = 1024;
      v21 = 90;
      v22 = 2112;
      v23 = prefix;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@", buf, 0x26u);
    }
  }
}

- (void)setupCap2G:(unsigned int)g
{
  v3 = *&g;
  if ([(VCMediaNegotiationBlobV2BandwidthSettings *)self cap2G]!= g)
  {

    [(VCMediaNegotiationBlobV2BandwidthSettings *)self setCap2G:v3];
  }
}

- (void)setupCap3G:(unsigned int)g
{
  v3 = *&g;
  if ([(VCMediaNegotiationBlobV2BandwidthSettings *)self cap3G]!= g)
  {

    [(VCMediaNegotiationBlobV2BandwidthSettings *)self setCap3G:v3];
  }
}

- (void)setupCapLTE:(unsigned int)e
{
  v3 = *&e;
  if ([(VCMediaNegotiationBlobV2BandwidthSettings *)self capLTE]!= e)
  {

    [(VCMediaNegotiationBlobV2BandwidthSettings *)self setCapLTE:v3];
  }
}

- (void)setupCap5G:(unsigned int)g
{
  v3 = *&g;
  if ([(VCMediaNegotiationBlobV2BandwidthSettings *)self cap5G]!= g)
  {

    [(VCMediaNegotiationBlobV2BandwidthSettings *)self setCap5G:v3];
  }
}

- (void)setupCapWifi:(unsigned int)wifi
{
  v3 = *&wifi;
  if ([(VCMediaNegotiationBlobV2BandwidthSettings *)self capWifi]!= wifi)
  {

    [(VCMediaNegotiationBlobV2BandwidthSettings *)self setCapWifi:v3];
  }
}

+ (id)filteredSetForArbiterMode:(unsigned __int8)mode bandwidthConfigurations:(id)configurations
{
  modeCopy = mode;
  v19 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [configurations countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(configurations);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v11, "connectionType")}];
        if ([v11 isDefaultMode] && !objc_msgSend(dictionary, "objectForKeyedSubscript:", v12) || objc_msgSend(v11, "mode") == modeCopy)
        {
          [dictionary setObject:v11 forKeyedSubscript:v12];
        }
      }

      v8 = [configurations countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v8);
  }

  return [MEMORY[0x1E695DFD8] setWithArray:{objc_msgSend(dictionary, "allValues")}];
}

- (BOOL)setupCapForBandwidthConfiguration:(id)configuration
{
  connectionType = [configuration connectionType];
  result = 0;
  if (connectionType > 2)
  {
    if ((connectionType - 4) >= 2)
    {
      if (connectionType == 3)
      {
        -[VCMediaNegotiationBlobV2BandwidthSettings setupCapWifi:](self, "setupCapWifi:", [configuration maxBandwidth]);
      }

      else
      {
        if (connectionType != 6)
        {
          return result;
        }

        -[VCMediaNegotiationBlobV2BandwidthSettings setupCap5G:](self, "setupCap5G:", [configuration maxBandwidth]);
      }
    }
  }

  else if (connectionType)
  {
    if (connectionType == 1)
    {
      -[VCMediaNegotiationBlobV2BandwidthSettings setupCap3G:](self, "setupCap3G:", [configuration maxBandwidth]);
    }

    else
    {
      if (connectionType != 2)
      {
        return result;
      }

      -[VCMediaNegotiationBlobV2BandwidthSettings setupCapLTE:](self, "setupCapLTE:", [configuration maxBandwidth]);
    }
  }

  else
  {
    -[VCMediaNegotiationBlobV2BandwidthSettings setupCap2G:](self, "setupCap2G:", [configuration maxBandwidth]);
  }

  return 1;
}

- (unsigned)cap2G
{
  if (*&self->_has)
  {
    return self->_cap2G;
  }

  else
  {
    return 100;
  }
}

- (unsigned)cap3G
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_cap3G;
  }

  else
  {
    return 228;
  }
}

- (void)setHasCap3G:(BOOL)g
{
  if (g)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (unsigned)capLTE
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_capLTE;
  }

  else
  {
    return 600;
  }
}

- (void)setHasCapLTE:(BOOL)e
{
  if (e)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (unsigned)cap5G
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_cap5G;
  }

  else
  {
    return 2000;
  }
}

- (void)setHasCap5G:(BOOL)g
{
  if (g)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (unsigned)capWifi
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_capWifi;
  }

  else
  {
    return 4100;
  }
}

- (void)setHasCapWifi:(BOOL)wifi
{
  if (wifi)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCMediaNegotiationBlobV2BandwidthSettings;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[VCMediaNegotiationBlobV2BandwidthSettings description](&v3, sel_description), -[VCMediaNegotiationBlobV2BandwidthSettings dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_cap2G), @"cap2G"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_cap3G), @"cap3G"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_cap5G), @"cap5G"}];
    if ((*&self->_has & 0x10) == 0)
    {
      return dictionary;
    }

    goto LABEL_6;
  }

LABEL_10:
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_capLTE), @"capLTE"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((has & 0x10) != 0)
  {
LABEL_6:
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_capWifi), @"capWifi"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x10) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_9:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((has & 0x10) == 0)
  {
    return;
  }

LABEL_11:

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 2) = self->_cap2G;
    *(to + 28) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(to + 3) = self->_cap3G;
  *(to + 28) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  *(to + 5) = self->_capLTE;
  *(to + 28) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      return;
    }

LABEL_11:
    *(to + 6) = self->_capWifi;
    *(to + 28) |= 0x10u;
    return;
  }

LABEL_10:
  *(to + 4) = self->_cap5G;
  *(to + 28) |= 4u;
  if ((*&self->_has & 0x10) != 0)
  {
    goto LABEL_11;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 2) = self->_cap2G;
    *(result + 28) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 3) = self->_cap3G;
  *(result + 28) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(result + 5) = self->_capLTE;
  *(result + 28) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_11:
  *(result + 4) = self->_cap5G;
  *(result + 28) |= 4u;
  if ((*&self->_has & 0x10) == 0)
  {
    return result;
  }

LABEL_6:
  *(result + 6) = self->_capWifi;
  *(result + 28) |= 0x10u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(equal + 28) & 1) == 0 || self->_cap2G != *(equal + 2))
      {
        goto LABEL_26;
      }
    }

    else if (*(equal + 28))
    {
LABEL_26:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 28) & 2) == 0 || self->_cap3G != *(equal + 3))
      {
        goto LABEL_26;
      }
    }

    else if ((*(equal + 28) & 2) != 0)
    {
      goto LABEL_26;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(equal + 28) & 8) == 0 || self->_capLTE != *(equal + 5))
      {
        goto LABEL_26;
      }
    }

    else if ((*(equal + 28) & 8) != 0)
    {
      goto LABEL_26;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 28) & 4) == 0 || self->_cap5G != *(equal + 4))
      {
        goto LABEL_26;
      }
    }

    else if ((*(equal + 28) & 4) != 0)
    {
      goto LABEL_26;
    }

    LOBYTE(v5) = (*(equal + 28) & 0x10) == 0;
    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(equal + 28) & 0x10) == 0 || self->_capWifi != *(equal + 6))
      {
        goto LABEL_26;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_cap2G;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_cap3G;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_capLTE;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6;
  }

LABEL_9:
  v4 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v5 = 2654435761 * self->_cap5G;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 2654435761 * self->_capWifi;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 28);
  if (v3)
  {
    self->_cap2G = *(from + 2);
    *&self->_has |= 1u;
    v3 = *(from + 28);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(from + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_cap3G = *(from + 3);
  *&self->_has |= 2u;
  v3 = *(from + 28);
  if ((v3 & 8) == 0)
  {
LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  self->_capLTE = *(from + 5);
  *&self->_has |= 8u;
  v3 = *(from + 28);
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      return;
    }

LABEL_11:
    self->_capWifi = *(from + 6);
    *&self->_has |= 0x10u;
    return;
  }

LABEL_10:
  self->_cap5G = *(from + 4);
  *&self->_has |= 4u;
  if ((*(from + 28) & 0x10) != 0)
  {
    goto LABEL_11;
  }
}

@end