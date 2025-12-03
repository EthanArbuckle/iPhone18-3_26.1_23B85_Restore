@interface AWDProactiveAppPredictionLaunchesAtLocation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsLaunchReason:(id)reason;
- (int)launchReason;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsClip:(BOOL)clip;
- (void)setHasIsNegativeSession:(BOOL)session;
- (void)setHasIsTourist:(BOOL)tourist;
- (void)setHasLatitude:(BOOL)latitude;
- (void)setHasLaunchReason:(BOOL)reason;
- (void)setHasLocationAccuracy:(BOOL)accuracy;
- (void)setHasLongitude:(BOOL)longitude;
- (void)setHasTimeBucket:(BOOL)bucket;
- (void)writeTo:(id)to;
@end

@implementation AWDProactiveAppPredictionLaunchesAtLocation

- (void)setHasLatitude:(BOOL)latitude
{
  if (latitude)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasLongitude:(BOOL)longitude
{
  if (longitude)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasTimeBucket:(BOOL)bucket
{
  if (bucket)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasIsTourist:(BOOL)tourist
{
  if (tourist)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasIsClip:(BOOL)clip
{
  if (clip)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasLocationAccuracy:(BOOL)accuracy
{
  if (accuracy)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (int)launchReason
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_launchReason;
  }

  else
  {
    return 0;
  }
}

- (void)setHasLaunchReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (int)StringAsLaunchReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"ProactiveAppPredictionLaunchReasonNFC"])
  {
    v4 = 0;
  }

  else if ([reasonCopy isEqualToString:@"ProactiveAppPredictionLaunchReasonQR"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"ProactiveAppPredictionLaunchReasonLocationBasedSpotlight"])
  {
    v4 = 2;
  }

  else if ([reasonCopy isEqualToString:@"ProactiveAppPredictionLaunchReasonLocationBasedHomescreen"])
  {
    v4 = 3;
  }

  else if ([reasonCopy isEqualToString:@"ProactiveAppPredictionLaunchReasonSpringBoard"])
  {
    v4 = 4;
  }

  else if ([reasonCopy isEqualToString:@"ProactiveAppPredictionLaunchReasonMaps"])
  {
    v4 = 5;
  }

  else if ([reasonCopy isEqualToString:@"ProactiveAppPredictionLaunchReasonSafari"])
  {
    v4 = 6;
  }

  else if ([reasonCopy isEqualToString:@"ProactiveAppPredictionLaunchReasonMessages"])
  {
    v4 = 7;
  }

  else if ([reasonCopy isEqualToString:@"ProactiveAppPredictionLaunchReasonMail"])
  {
    v4 = 8;
  }

  else if ([reasonCopy isEqualToString:@"ProactiveAppPredictionLaunchReasonOther"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasIsNegativeSession:(BOOL)session
{
  if (session)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDProactiveAppPredictionLaunchesAtLocation;
  v4 = [(AWDProactiveAppPredictionLaunchesAtLocation *)&v8 description];
  dictionaryRepresentation = [(AWDProactiveAppPredictionLaunchesAtLocation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v15 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  *&v4 = self->_latitude;
  v16 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [dictionary setObject:v16 forKey:@"latitude"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_23:
  *&v4 = self->_longitude;
  v17 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [dictionary setObject:v17 forKey:@"longitude"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_5:
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_timeBucket];
    [dictionary setObject:v6 forKey:@"timeBucket"];
  }

LABEL_6:
  bundleId = self->_bundleId;
  if (bundleId)
  {
    [dictionary setObject:bundleId forKey:@"bundleId"];
  }

  v8 = self->_has;
  if ((v8 & 0x100) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_isTourist];
    [dictionary setObject:v9 forKey:@"isTourist"];

    v8 = self->_has;
  }

  if ((v8 & 0x40) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_isClip];
    [dictionary setObject:v10 forKey:@"isClip"];
  }

  urlHash = self->_urlHash;
  if (urlHash)
  {
    [dictionary setObject:urlHash forKey:@"urlHash"];
  }

  v12 = self->_has;
  if ((v12 & 8) != 0)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_locationAccuracy];
    [dictionary setObject:v18 forKey:@"locationAccuracy"];

    v12 = self->_has;
    if ((v12 & 4) == 0)
    {
LABEL_16:
      if ((v12 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((v12 & 4) == 0)
  {
    goto LABEL_16;
  }

  launchReason = self->_launchReason;
  if (launchReason >= 0xA)
  {
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_launchReason];
  }

  else
  {
    v20 = off_2785A1D48[launchReason];
  }

  [dictionary setObject:v20 forKey:@"launchReason"];

  if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_18;
  }

LABEL_17:
  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_isNegativeSession];
  [dictionary setObject:v13 forKey:@"isNegativeSession"];

LABEL_18:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  latitude = self->_latitude;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_23:
  longitude = self->_longitude;
  PBDataWriterWriteFloatField();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_5:
    timeBucket = self->_timeBucket;
    PBDataWriterWriteUint32Field();
  }

LABEL_6:
  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
  }

  v6 = self->_has;
  if ((v6 & 0x100) != 0)
  {
    isTourist = self->_isTourist;
    PBDataWriterWriteBOOLField();
    v6 = self->_has;
  }

  if ((v6 & 0x40) != 0)
  {
    isClip = self->_isClip;
    PBDataWriterWriteBOOLField();
  }

  if (self->_urlHash)
  {
    PBDataWriterWriteStringField();
  }

  v9 = self->_has;
  if ((v9 & 8) != 0)
  {
    locationAccuracy = self->_locationAccuracy;
    PBDataWriterWriteUint32Field();
    v9 = self->_has;
    if ((v9 & 4) == 0)
    {
LABEL_16:
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((v9 & 4) == 0)
  {
    goto LABEL_16;
  }

  launchReason = self->_launchReason;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_17:
    isNegativeSession = self->_isNegativeSession;
    PBDataWriterWriteBOOLField();
  }

LABEL_18:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 30) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 6) = LODWORD(self->_latitude);
  *(toCopy + 30) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_23:
  *(toCopy + 9) = LODWORD(self->_longitude);
  *(toCopy + 30) |= 0x10u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_5:
    *(toCopy + 10) = self->_timeBucket;
    *(toCopy + 30) |= 0x20u;
  }

LABEL_6:
  v8 = toCopy;
  if (self->_bundleId)
  {
    [toCopy setBundleId:?];
    toCopy = v8;
  }

  v6 = self->_has;
  if ((v6 & 0x100) != 0)
  {
    *(toCopy + 58) = self->_isTourist;
    *(toCopy + 30) |= 0x100u;
    v6 = self->_has;
  }

  if ((v6 & 0x40) != 0)
  {
    *(toCopy + 56) = self->_isClip;
    *(toCopy + 30) |= 0x40u;
  }

  if (self->_urlHash)
  {
    [v8 setUrlHash:?];
    toCopy = v8;
  }

  v7 = self->_has;
  if ((v7 & 8) != 0)
  {
    *(toCopy + 8) = self->_locationAccuracy;
    *(toCopy + 30) |= 8u;
    v7 = self->_has;
    if ((v7 & 4) == 0)
    {
LABEL_16:
      if ((v7 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((v7 & 4) == 0)
  {
    goto LABEL_16;
  }

  *(toCopy + 7) = self->_launchReason;
  *(toCopy + 30) |= 4u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_17:
    *(toCopy + 57) = self->_isNegativeSession;
    *(toCopy + 30) |= 0x80u;
  }

LABEL_18:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 60) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 24) = self->_latitude;
  *(v5 + 60) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_17:
  *(v5 + 36) = self->_longitude;
  *(v5 + 60) |= 0x10u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_5:
    *(v5 + 40) = self->_timeBucket;
    *(v5 + 60) |= 0x20u;
  }

LABEL_6:
  v8 = [(NSString *)self->_bundleId copyWithZone:zone];
  v9 = *(v6 + 16);
  *(v6 + 16) = v8;

  v10 = self->_has;
  if ((v10 & 0x100) != 0)
  {
    *(v6 + 58) = self->_isTourist;
    *(v6 + 60) |= 0x100u;
    v10 = self->_has;
  }

  if ((v10 & 0x40) != 0)
  {
    *(v6 + 56) = self->_isClip;
    *(v6 + 60) |= 0x40u;
  }

  v11 = [(NSString *)self->_urlHash copyWithZone:zone];
  v12 = *(v6 + 48);
  *(v6 + 48) = v11;

  v13 = self->_has;
  if ((v13 & 8) == 0)
  {
    if ((v13 & 4) == 0)
    {
      goto LABEL_12;
    }

LABEL_20:
    *(v6 + 28) = self->_launchReason;
    *(v6 + 60) |= 4u;
    if ((*&self->_has & 0x80) == 0)
    {
      return v6;
    }

    goto LABEL_13;
  }

  *(v6 + 32) = self->_locationAccuracy;
  *(v6 + 60) |= 8u;
  v13 = self->_has;
  if ((v13 & 4) != 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  if ((v13 & 0x80) != 0)
  {
LABEL_13:
    *(v6 + 57) = self->_isNegativeSession;
    *(v6 + 60) |= 0x80u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_57;
  }

  has = self->_has;
  v6 = *(equalCopy + 30);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_57;
    }
  }

  else if (v6)
  {
    goto LABEL_57;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_latitude != *(equalCopy + 6))
    {
      goto LABEL_57;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_longitude != *(equalCopy + 9))
    {
      goto LABEL_57;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_timeBucket != *(equalCopy + 10))
    {
      goto LABEL_57;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_57;
  }

  bundleId = self->_bundleId;
  if (bundleId | *(equalCopy + 2))
  {
    if (![(NSString *)bundleId isEqual:?])
    {
      goto LABEL_57;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 30);
  if ((has & 0x100) != 0)
  {
    if ((*(equalCopy + 30) & 0x100) == 0)
    {
      goto LABEL_57;
    }

    v11 = *(equalCopy + 58);
    if (self->_isTourist)
    {
      if ((*(equalCopy + 58) & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    else if (*(equalCopy + 58))
    {
      goto LABEL_57;
    }
  }

  else if ((*(equalCopy + 30) & 0x100) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 0x40) != 0)
  {
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_57;
    }

    v12 = *(equalCopy + 56);
    if (self->_isClip)
    {
      if ((*(equalCopy + 56) & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    else if (*(equalCopy + 56))
    {
      goto LABEL_57;
    }
  }

  else if ((v8 & 0x40) != 0)
  {
    goto LABEL_57;
  }

  urlHash = self->_urlHash;
  if (urlHash | *(equalCopy + 6))
  {
    if (![(NSString *)urlHash isEqual:?])
    {
      goto LABEL_57;
    }

    has = self->_has;
  }

  v10 = *(equalCopy + 30);
  if ((has & 8) != 0)
  {
    if ((v10 & 8) == 0 || self->_locationAccuracy != *(equalCopy + 8))
    {
      goto LABEL_57;
    }
  }

  else if ((v10 & 8) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 4) != 0)
  {
    if ((v10 & 4) == 0 || self->_launchReason != *(equalCopy + 7))
    {
      goto LABEL_57;
    }
  }

  else if ((v10 & 4) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 0x80) != 0)
  {
    if ((v10 & 0x80) != 0)
    {
      if (self->_isNegativeSession)
      {
        if ((*(equalCopy + 57) & 1) == 0)
        {
          goto LABEL_57;
        }
      }

      else if (*(equalCopy + 57))
      {
        goto LABEL_57;
      }

      v13 = 1;
      goto LABEL_58;
    }

LABEL_57:
    v13 = 0;
    goto LABEL_58;
  }

  v13 = (v10 & 0x80) == 0;
LABEL_58:

  return v13;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v6 = 2654435761u * self->_timestamp;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v6 = 0;
  if ((has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  latitude = self->_latitude;
  if (latitude < 0.0)
  {
    latitude = -latitude;
  }

  *v2.i32 = floorf(latitude + 0.5);
  v8 = (latitude - *v2.i32) * 1.8447e19;
  *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
  v9.i64[0] = 0x8000000080000000;
  v9.i64[1] = 0x8000000080000000;
  v2 = vbslq_s8(v9, v3, v2);
  v10 = 2654435761u * *v2.i32;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabsf(v8);
  }

LABEL_9:
  if ((has & 0x10) != 0)
  {
    longitude = self->_longitude;
    if (longitude < 0.0)
    {
      longitude = -longitude;
    }

    *v2.i32 = floorf(longitude + 0.5);
    v13 = (longitude - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v14.i64[0] = 0x8000000080000000;
    v14.i64[1] = 0x8000000080000000;
    v11 = 2654435761u * *vbslq_s8(v14, v3, v2).i32;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v11 += v13;
      }
    }

    else
    {
      v11 -= fabsf(v13);
    }
  }

  else
  {
    v11 = 0;
  }

  if ((has & 0x20) != 0)
  {
    v15 = 2654435761 * self->_timeBucket;
  }

  else
  {
    v15 = 0;
  }

  v16 = [(NSString *)self->_bundleId hash];
  v17 = self->_has;
  if ((v17 & 0x100) != 0)
  {
    v18 = 2654435761 * self->_isTourist;
    if ((v17 & 0x40) != 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v18 = 0;
    if ((v17 & 0x40) != 0)
    {
LABEL_24:
      v19 = 2654435761 * self->_isClip;
      goto LABEL_27;
    }
  }

  v19 = 0;
LABEL_27:
  v20 = [(NSString *)self->_urlHash hash];
  v21 = self->_has;
  if ((v21 & 8) == 0)
  {
    v22 = 0;
    if ((v21 & 4) != 0)
    {
      goto LABEL_29;
    }

LABEL_32:
    v23 = 0;
    if ((v21 & 0x80) != 0)
    {
      goto LABEL_30;
    }

LABEL_33:
    v24 = 0;
    return v10 ^ v6 ^ v11 ^ v15 ^ v18 ^ v19 ^ v16 ^ v20 ^ v22 ^ v23 ^ v24;
  }

  v22 = 2654435761 * self->_locationAccuracy;
  if ((v21 & 4) == 0)
  {
    goto LABEL_32;
  }

LABEL_29:
  v23 = 2654435761 * self->_launchReason;
  if ((v21 & 0x80) == 0)
  {
    goto LABEL_33;
  }

LABEL_30:
  v24 = 2654435761 * self->_isNegativeSession;
  return v10 ^ v6 ^ v11 ^ v15 ^ v18 ^ v19 ^ v16 ^ v20 ^ v22 ^ v23 ^ v24;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 30);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 30);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_latitude = *(fromCopy + 6);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 30);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_23:
  self->_longitude = *(fromCopy + 9);
  *&self->_has |= 0x10u;
  if ((*(fromCopy + 30) & 0x20) != 0)
  {
LABEL_5:
    self->_timeBucket = *(fromCopy + 10);
    *&self->_has |= 0x20u;
  }

LABEL_6:
  v8 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(AWDProactiveAppPredictionLaunchesAtLocation *)self setBundleId:?];
    fromCopy = v8;
  }

  v6 = *(fromCopy + 30);
  if ((v6 & 0x100) != 0)
  {
    self->_isTourist = *(fromCopy + 58);
    *&self->_has |= 0x100u;
    v6 = *(fromCopy + 30);
  }

  if ((v6 & 0x40) != 0)
  {
    self->_isClip = *(fromCopy + 56);
    *&self->_has |= 0x40u;
  }

  if (*(fromCopy + 6))
  {
    [(AWDProactiveAppPredictionLaunchesAtLocation *)self setUrlHash:?];
    fromCopy = v8;
  }

  v7 = *(fromCopy + 30);
  if ((v7 & 8) != 0)
  {
    self->_locationAccuracy = *(fromCopy + 8);
    *&self->_has |= 8u;
    v7 = *(fromCopy + 30);
    if ((v7 & 4) == 0)
    {
LABEL_16:
      if ((v7 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((v7 & 4) == 0)
  {
    goto LABEL_16;
  }

  self->_launchReason = *(fromCopy + 7);
  *&self->_has |= 4u;
  if ((*(fromCopy + 30) & 0x80) != 0)
  {
LABEL_17:
    self->_isNegativeSession = *(fromCopy + 57);
    *&self->_has |= 0x80u;
  }

LABEL_18:
}

@end