@interface ATXMPBAppClipCaptureRateTracker
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCaptureType:(id)type;
- (int)captureType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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

- (int)StringAsCaptureType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"NFC"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"QR"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"LocationBasedSpotlight"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"LocationBasedHomescreen"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"SpringBoard"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"Maps"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"Safari"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"Messages"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"Mail"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"Other"])
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
  dictionaryRepresentation = [(ATXMPBAppClipCaptureRateTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
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

    [dictionary setObject:v5 forKey:@"captureType"];
  }

  bundleId = self->_bundleId;
  if (bundleId)
  {
    [dictionary setObject:bundleId forKey:@"bundleId"];
  }

  urlHash = self->_urlHash;
  if (urlHash)
  {
    [dictionary setObject:urlHash forKey:@"urlHash"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    captureType = self->_captureType;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_urlHash)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_captureType;
    *(toCopy + 32) |= 1u;
  }

  v5 = toCopy;
  if (self->_bundleId)
  {
    [toCopy setBundleId:?];
    toCopy = v5;
  }

  if (self->_urlHash)
  {
    [v5 setUrlHash:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_captureType;
    *(v5 + 32) |= 1u;
  }

  v7 = [(NSString *)self->_bundleId copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(NSString *)self->_urlHash copyWithZone:zone];
  v10 = v6[3];
  v6[3] = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_captureType != *(equalCopy + 4))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  bundleId = self->_bundleId;
  if (bundleId | *(equalCopy + 1) && ![(NSString *)bundleId isEqual:?])
  {
    goto LABEL_11;
  }

  urlHash = self->_urlHash;
  if (urlHash | *(equalCopy + 3))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[8])
  {
    self->_captureType = fromCopy[4];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(ATXMPBAppClipCaptureRateTracker *)self setBundleId:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(ATXMPBAppClipCaptureRateTracker *)self setUrlHash:?];
    fromCopy = v5;
  }
}

@end