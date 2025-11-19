@interface ATXMPBAppClipCaptureRateTracker
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCaptureType:(id)a3;
- (int)captureType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXMPBAppClipCaptureRateTracker

- (int)captureType
{
  if (*&self->_has)
  {
    return self->_captureType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsCaptureType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NFC"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"QR"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"LocationBasedSpotlight"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"LocationBasedHomescreen"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SpringBoard"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Maps"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"Safari"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"Messages"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"Mail"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"Other"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXMPBAppClipCaptureRateTracker;
  v4 = [(ATXMPBAppClipCaptureRateTracker *)&v8 description];
  v5 = [(ATXMPBAppClipCaptureRateTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    captureType = self->_captureType;
    if (captureType >= 0xA)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_captureType];
    }

    else
    {
      v5 = off_27859E8A0[captureType];
    }

    [v3 setObject:v5 forKey:@"captureType"];
  }

  bundleId = self->_bundleId;
  if (bundleId)
  {
    [v3 setObject:bundleId forKey:@"bundleId"];
  }

  urlHash = self->_urlHash;
  if (urlHash)
  {
    [v3 setObject:urlHash forKey:@"urlHash"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    captureType = self->_captureType;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_urlHash)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_captureType;
    *(v4 + 32) |= 1u;
  }

  v5 = v4;
  if (self->_bundleId)
  {
    [v4 setBundleId:?];
    v4 = v5;
  }

  if (self->_urlHash)
  {
    [v5 setUrlHash:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_captureType;
    *(v5 + 32) |= 1u;
  }

  v7 = [(NSString *)self->_bundleId copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(NSString *)self->_urlHash copyWithZone:a3];
  v10 = v6[3];
  v6[3] = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 32);
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_captureType != *(v4 + 4))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  bundleId = self->_bundleId;
  if (bundleId | *(v4 + 1) && ![(NSString *)bundleId isEqual:?])
  {
    goto LABEL_11;
  }

  urlHash = self->_urlHash;
  if (urlHash | *(v4 + 3))
  {
    v8 = [(NSString *)urlHash isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_captureType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_bundleId hash]^ v3;
  return v4 ^ [(NSString *)self->_urlHash hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[8])
  {
    self->_captureType = v4[4];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 1))
  {
    [(ATXMPBAppClipCaptureRateTracker *)self setBundleId:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(ATXMPBAppClipCaptureRateTracker *)self setUrlHash:?];
    v4 = v5;
  }
}

@end