@interface VCMediaNegotiationBlobV2GeneralInfo
- (BOOL)isEqual:(id)equal;
- (CGSize)screenResolution;
- (VCMediaNegotiationBlobV2GeneralInfo)initWithCreationTime:(tagNTP)time screenResolution:(CGSize)resolution abSwitches:(unsigned int)switches fecHeaderVersion:(unsigned __int8)version rtxVersion:(unsigned __int8)rtxVersion;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)abSwitches;
- (unsigned)fecHeaderVersion;
- (unsigned)rtxVersion;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)printWithLogFile:(void *)file prefix:(id)prefix;
- (void)setHasAbSwitches:(BOOL)switches;
- (void)setHasFecHeaderVersion:(BOOL)version;
- (void)setHasRtxVersion:(BOOL)version;
- (void)setHasScreenRes:(BOOL)res;
- (void)writeTo:(id)to;
@end

@implementation VCMediaNegotiationBlobV2GeneralInfo

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCMediaNegotiationBlobV2GeneralInfo *)self setCname:0];
  v3.receiver = self;
  v3.super_class = VCMediaNegotiationBlobV2GeneralInfo;
  [(VCMediaNegotiationBlobV2GeneralInfo *)&v3 dealloc];
}

- (unsigned)abSwitches
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_abSwitches;
  }

  else
  {
    return 0;
  }
}

- (void)setHasAbSwitches:(BOOL)switches
{
  if (switches)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasScreenRes:(BOOL)res
{
  if (res)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (unsigned)fecHeaderVersion
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_fecHeaderVersion;
  }

  else
  {
    return 1;
  }
}

- (void)setHasFecHeaderVersion:(BOOL)version
{
  if (version)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (unsigned)rtxVersion
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_rtxVersion;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRtxVersion:(BOOL)version
{
  if (version)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCMediaNegotiationBlobV2GeneralInfo;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[VCMediaNegotiationBlobV2GeneralInfo description](&v3, sel_description), -[VCMediaNegotiationBlobV2GeneralInfo dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedLongLong:", self->_ntpTime), @"ntpTime"}];
  }

  cname = self->_cname;
  if (cname)
  {
    [dictionary setObject:cname forKey:@"cname"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_abSwitches), @"abSwitches"}];
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_8;
      }

LABEL_13:
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_fecHeaderVersion), @"fecHeaderVersion"}];
      if ((*&self->_has & 8) == 0)
      {
        return dictionary;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_7;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_screenRes), @"screenRes"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((has & 8) != 0)
  {
LABEL_9:
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_rtxVersion), @"rtxVersion"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  if (self->_cname)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      PBDataWriterWriteUint32Field();
      if ((*&self->_has & 8) == 0)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ((has & 8) == 0)
  {
    return;
  }

LABEL_13:

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_ntpTime;
    *(to + 44) |= 1u;
  }

  if (self->_cname)
  {
    [to setCname:?];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(to + 4) = self->_abSwitches;
    *(to + 44) |= 2u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_7;
  }

  *(to + 10) = self->_screenRes;
  *(to + 44) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      return;
    }

    goto LABEL_9;
  }

LABEL_13:
  *(to + 8) = self->_fecHeaderVersion;
  *(to + 44) |= 4u;
  if ((*&self->_has & 8) == 0)
  {
    return;
  }

LABEL_9:
  *(to + 9) = self->_rtxVersion;
  *(to + 44) |= 8u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_ntpTime;
    *(v5 + 44) |= 1u;
  }

  *(v6 + 24) = [(NSString *)self->_cname copyWithZone:zone];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 16) = self->_abSwitches;
    *(v6 + 44) |= 2u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

LABEL_11:
      *(v6 + 32) = self->_fecHeaderVersion;
      *(v6 + 44) |= 4u;
      if ((*&self->_has & 8) == 0)
      {
        return v6;
      }

      goto LABEL_7;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 40) = self->_screenRes;
  *(v6 + 44) |= 0x10u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((has & 8) != 0)
  {
LABEL_7:
    *(v6 + 36) = self->_rtxVersion;
    *(v6 + 44) |= 8u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    if (has)
    {
      if ((*(equal + 44) & 1) == 0 || self->_ntpTime != *(equal + 1))
      {
        goto LABEL_29;
      }
    }

    else if (*(equal + 44))
    {
LABEL_29:
      LOBYTE(v5) = 0;
      return v5;
    }

    cname = self->_cname;
    if (cname | *(equal + 3))
    {
      v5 = [(NSString *)cname isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    if ((has & 2) != 0)
    {
      if ((*(equal + 44) & 2) == 0 || self->_abSwitches != *(equal + 4))
      {
        goto LABEL_29;
      }
    }

    else if ((*(equal + 44) & 2) != 0)
    {
      goto LABEL_29;
    }

    if ((has & 0x10) != 0)
    {
      if ((*(equal + 44) & 0x10) == 0 || self->_screenRes != *(equal + 10))
      {
        goto LABEL_29;
      }
    }

    else if ((*(equal + 44) & 0x10) != 0)
    {
      goto LABEL_29;
    }

    if ((has & 4) != 0)
    {
      if ((*(equal + 44) & 4) == 0 || self->_fecHeaderVersion != *(equal + 8))
      {
        goto LABEL_29;
      }
    }

    else if ((*(equal + 44) & 4) != 0)
    {
      goto LABEL_29;
    }

    LOBYTE(v5) = (*(equal + 44) & 8) == 0;
    if ((has & 8) != 0)
    {
      if ((*(equal + 44) & 8) == 0 || self->_rtxVersion != *(equal + 9))
      {
        goto LABEL_29;
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
    v3 = 2654435761u * self->_ntpTime;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_cname hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_abSwitches;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_6:
      v6 = 2654435761 * self->_screenRes;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_7;
      }

LABEL_11:
      v7 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      v8 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v7 = 2654435761 * self->_fecHeaderVersion;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v8 = 2654435761 * self->_rtxVersion;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 44))
  {
    self->_ntpTime = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 3))
  {
    [(VCMediaNegotiationBlobV2GeneralInfo *)self setCname:?];
  }

  v5 = *(from + 44);
  if ((v5 & 2) != 0)
  {
    self->_abSwitches = *(from + 4);
    *&self->_has |= 2u;
    v5 = *(from + 44);
    if ((v5 & 0x10) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  else if ((*(from + 44) & 0x10) == 0)
  {
    goto LABEL_7;
  }

  self->_screenRes = *(from + 10);
  *&self->_has |= 0x10u;
  v5 = *(from + 44);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      return;
    }

    goto LABEL_9;
  }

LABEL_13:
  self->_fecHeaderVersion = *(from + 8);
  *&self->_has |= 4u;
  if ((*(from + 44) & 8) == 0)
  {
    return;
  }

LABEL_9:
  self->_rtxVersion = *(from + 9);
  *&self->_has |= 8u;
}

- (VCMediaNegotiationBlobV2GeneralInfo)initWithCreationTime:(tagNTP)time screenResolution:(CGSize)resolution abSwitches:(unsigned int)switches fecHeaderVersion:(unsigned __int8)version rtxVersion:(unsigned __int8)rtxVersion
{
  rtxVersionCopy = rtxVersion;
  versionCopy = version;
  v9 = *&switches;
  height = resolution.height;
  width = resolution.width;
  v13 = [(VCMediaNegotiationBlobV2GeneralInfo *)self init];
  v14 = v13;
  if (v13)
  {
    [(VCMediaNegotiationBlobV2GeneralInfo *)v13 setNtpTime:time.wide];
    if ([(VCMediaNegotiationBlobV2GeneralInfo *)v14 abSwitches]!= v9)
    {
      [(VCMediaNegotiationBlobV2GeneralInfo *)v14 setAbSwitches:v9];
    }

    if ([(VCMediaNegotiationBlobV2GeneralInfo *)v14 fecHeaderVersion]!= versionCopy)
    {
      [(VCMediaNegotiationBlobV2GeneralInfo *)v14 setFecHeaderVersion:versionCopy];
    }

    if ([(VCMediaNegotiationBlobV2GeneralInfo *)v14 rtxVersion]!= rtxVersionCopy)
    {
      [(VCMediaNegotiationBlobV2GeneralInfo *)v14 setRtxVersion:rtxVersionCopy];
    }

    v15 = height;
    if (width >= 0x10000 && v15 >= 0x10000)
    {
      [VCMediaNegotiationBlobV2GeneralInfo(Utils) initWithCreationTime:v14 screenResolution:width abSwitches:height fecHeaderVersion:? rtxVersion:?];
      return 0;
    }

    else
    {
      [(VCMediaNegotiationBlobV2GeneralInfo *)v14 setScreenRes:v15 | (width << 16)];
    }
  }

  return v14;
}

- (CGSize)screenResolution
{
  v3 = ([(VCMediaNegotiationBlobV2GeneralInfo *)self screenRes]>> 16);
  screenRes = [(VCMediaNegotiationBlobV2GeneralInfo *)self screenRes];
  v5 = v3;
  result.height = screenRes;
  result.width = v5;
  return result;
}

- (void)printWithLogFile:(void *)file prefix:(id)prefix
{
  v30 = *MEMORY[0x1E69E9840];
  ntpTime = [(VCMediaNegotiationBlobV2GeneralInfo *)self ntpTime];
  [(VCMediaNegotiationBlobV2GeneralInfo *)self screenResolution];
  v9 = v8;
  v11 = v10;
  prefix = [MEMORY[0x1E696AD60] stringWithFormat:@"[%lu] %@", objc_msgSend(-[VCMediaNegotiationBlobV2GeneralInfo data](self, "data"), "length"), prefix];
  [prefix appendFormat:@"General Info: ntpTime=%f screenResolution=%d/%d ABSwitches=0x%08x", NTPToMicro(ntpTime), v9, v11, -[VCMediaNegotiationBlobV2GeneralInfo abSwitches](self, "abSwitches")];
  uTF8String = [prefix UTF8String];
  VRLogfilePrintWithTimestamp(file, "%s\n", v14, v15, v16, v17, v18, v19, uTF8String);
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v23 = v20;
      v24 = 2080;
      v25 = "[VCMediaNegotiationBlobV2GeneralInfo(Utils) printWithLogFile:prefix:]";
      v26 = 1024;
      v27 = 72;
      v28 = 2112;
      v29 = prefix;
      _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@", buf, 0x26u);
    }
  }
}

@end