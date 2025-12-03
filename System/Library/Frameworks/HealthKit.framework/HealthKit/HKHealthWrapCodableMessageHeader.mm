@interface HKHealthWrapCodableMessageHeader
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCompressed:(BOOL)compressed;
- (void)setHasTrailingHMACLength:(BOOL)length;
- (void)setHasTrailingSHALength:(BOOL)length;
- (void)writeTo:(id)to;
@end

@implementation HKHealthWrapCodableMessageHeader

- (void)setHasTrailingHMACLength:(BOOL)length
{
  if (length)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasTrailingSHALength:(BOOL)length
{
  if (length)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasCompressed:(BOOL)compressed
{
  if (compressed)
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
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKHealthWrapCodableMessageHeader;
  v4 = [(HKHealthWrapCodableMessageHeader *)&v8 description];
  dictionaryRepresentation = [(HKHealthWrapCodableMessageHeader *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_version];
    [dictionary setObject:v4 forKey:@"version"];
  }

  encryptedMessageKey = self->_encryptedMessageKey;
  if (encryptedMessageKey)
  {
    [dictionary setObject:encryptedMessageKey forKey:@"encryptedMessageKey"];
  }

  encryptionIdentity = self->_encryptionIdentity;
  if (encryptionIdentity)
  {
    [dictionary setObject:encryptionIdentity forKey:@"encryptionIdentity"];
  }

  uploadUUID = self->_uploadUUID;
  if (uploadUUID)
  {
    [dictionary setObject:uploadUUID forKey:@"uploadUUID"];
  }

  studyIdentifier = self->_studyIdentifier;
  if (studyIdentifier)
  {
    [dictionary setObject:studyIdentifier forKey:@"studyIdentifier"];
  }

  encryptedHMACKey = self->_encryptedHMACKey;
  if (encryptedHMACKey)
  {
    [dictionary setObject:encryptedHMACKey forKey:@"encryptedHMACKey"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInt:self->_trailingHMACLength];
    [dictionary setObject:v14 forKey:@"trailingHMACLength"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_15:
      if ((has & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_15;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithInt:self->_trailingSHALength];
  [dictionary setObject:v15 forKey:@"trailingSHALength"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_16:
    v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_compressed];
    [dictionary setObject:v11 forKey:@"compressed"];
  }

LABEL_17:
  studyUUID = self->_studyUUID;
  if (studyUUID)
  {
    [dictionary setObject:studyUUID forKey:@"studyUUID"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteInt64Field();
    toCopy = v10;
  }

  if (self->_encryptedMessageKey)
  {
    PBDataWriterWriteDataField();
    toCopy = v10;
  }

  if (self->_encryptionIdentity)
  {
    PBDataWriterWriteDataField();
    toCopy = v10;
  }

  if (self->_uploadUUID)
  {
    PBDataWriterWriteDataField();
    toCopy = v10;
  }

  if (self->_studyIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  if (self->_encryptedHMACKey)
  {
    PBDataWriterWriteDataField();
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    trailingHMACLength = self->_trailingHMACLength;
    PBDataWriterWriteInt32Field();
    toCopy = v10;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_15:
      if ((has & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_15;
  }

  trailingSHALength = self->_trailingSHALength;
  PBDataWriterWriteInt32Field();
  toCopy = v10;
  if ((*&self->_has & 8) != 0)
  {
LABEL_16:
    compressed = self->_compressed;
    PBDataWriterWriteBOOLField();
    toCopy = v10;
  }

LABEL_17:
  if (self->_studyUUID)
  {
    PBDataWriterWriteDataField();
    toCopy = v10;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_version;
    *(toCopy + 76) |= 1u;
  }

  v6 = toCopy;
  if (self->_encryptedMessageKey)
  {
    [toCopy setEncryptedMessageKey:?];
    toCopy = v6;
  }

  if (self->_encryptionIdentity)
  {
    [v6 setEncryptionIdentity:?];
    toCopy = v6;
  }

  if (self->_uploadUUID)
  {
    [v6 setUploadUUID:?];
    toCopy = v6;
  }

  if (self->_studyIdentifier)
  {
    [v6 setStudyIdentifier:?];
    toCopy = v6;
  }

  if (self->_encryptedHMACKey)
  {
    [v6 setEncryptedHMACKey:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 14) = self->_trailingHMACLength;
    *(toCopy + 76) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_15:
      if ((has & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_15;
  }

  *(toCopy + 15) = self->_trailingSHALength;
  *(toCopy + 76) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_16:
    *(toCopy + 72) = self->_compressed;
    *(toCopy + 76) |= 8u;
  }

LABEL_17:
  if (self->_studyUUID)
  {
    [v6 setStudyUUID:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_version;
    *(v5 + 76) |= 1u;
  }

  v7 = [(NSData *)self->_encryptedMessageKey copyWithZone:zone];
  v8 = *(v6 + 24);
  *(v6 + 24) = v7;

  v9 = [(NSData *)self->_encryptionIdentity copyWithZone:zone];
  v10 = *(v6 + 32);
  *(v6 + 32) = v9;

  v11 = [(NSData *)self->_uploadUUID copyWithZone:zone];
  v12 = *(v6 + 64);
  *(v6 + 64) = v11;

  v13 = [(NSString *)self->_studyIdentifier copyWithZone:zone];
  v14 = *(v6 + 40);
  *(v6 + 40) = v13;

  v15 = [(NSData *)self->_encryptedHMACKey copyWithZone:zone];
  v16 = *(v6 + 16);
  *(v6 + 16) = v15;

  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    *(v6 + 60) = self->_trailingSHALength;
    *(v6 + 76) |= 4u;
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *(v6 + 56) = self->_trailingHMACLength;
  *(v6 + 76) |= 2u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((has & 8) != 0)
  {
LABEL_6:
    *(v6 + 72) = self->_compressed;
    *(v6 + 76) |= 8u;
  }

LABEL_7:
  v18 = [(NSData *)self->_studyUUID copyWithZone:zone];
  v19 = *(v6 + 48);
  *(v6 + 48) = v18;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  v5 = *(equalCopy + 76);
  if (*&self->_has)
  {
    if ((*(equalCopy + 76) & 1) == 0 || self->_version != *(equalCopy + 1))
    {
      goto LABEL_32;
    }
  }

  else if (*(equalCopy + 76))
  {
    goto LABEL_32;
  }

  encryptedMessageKey = self->_encryptedMessageKey;
  if (encryptedMessageKey | *(equalCopy + 3) && ![(NSData *)encryptedMessageKey isEqual:?])
  {
    goto LABEL_32;
  }

  encryptionIdentity = self->_encryptionIdentity;
  if (encryptionIdentity | *(equalCopy + 4))
  {
    if (![(NSData *)encryptionIdentity isEqual:?])
    {
      goto LABEL_32;
    }
  }

  uploadUUID = self->_uploadUUID;
  if (uploadUUID | *(equalCopy + 8))
  {
    if (![(NSData *)uploadUUID isEqual:?])
    {
      goto LABEL_32;
    }
  }

  studyIdentifier = self->_studyIdentifier;
  if (studyIdentifier | *(equalCopy + 5))
  {
    if (![(NSString *)studyIdentifier isEqual:?])
    {
      goto LABEL_32;
    }
  }

  encryptedHMACKey = self->_encryptedHMACKey;
  if (encryptedHMACKey | *(equalCopy + 2))
  {
    if (![(NSData *)encryptedHMACKey isEqual:?])
    {
      goto LABEL_32;
    }
  }

  v11 = *(equalCopy + 76);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 76) & 2) == 0 || self->_trailingHMACLength != *(equalCopy + 14))
    {
      goto LABEL_32;
    }
  }

  else if ((*(equalCopy + 76) & 2) != 0)
  {
    goto LABEL_32;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 76) & 4) == 0 || self->_trailingSHALength != *(equalCopy + 15))
    {
      goto LABEL_32;
    }
  }

  else if ((*(equalCopy + 76) & 4) != 0)
  {
    goto LABEL_32;
  }

  if ((*&self->_has & 8) == 0)
  {
    if ((*(equalCopy + 76) & 8) == 0)
    {
      goto LABEL_29;
    }

LABEL_32:
    v13 = 0;
    goto LABEL_33;
  }

  if ((*(equalCopy + 76) & 8) == 0)
  {
    goto LABEL_32;
  }

  v15 = *(equalCopy + 72);
  if (self->_compressed)
  {
    if ((*(equalCopy + 72) & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (*(equalCopy + 72))
  {
    goto LABEL_32;
  }

LABEL_29:
  studyUUID = self->_studyUUID;
  if (studyUUID | *(equalCopy + 6))
  {
    v13 = [(NSData *)studyUUID isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_33:

  return v13;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_version;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_encryptedMessageKey hash];
  v5 = [(NSData *)self->_encryptionIdentity hash];
  v6 = [(NSData *)self->_uploadUUID hash];
  v7 = [(NSString *)self->_studyIdentifier hash];
  v8 = [(NSData *)self->_encryptedHMACKey hash];
  if ((*&self->_has & 2) == 0)
  {
    v9 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v10 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v11 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(NSData *)self->_studyUUID hash];
  }

  v9 = 2654435761 * self->_trailingHMACLength;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v10 = 2654435761 * self->_trailingSHALength;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v11 = 2654435761 * self->_compressed;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(NSData *)self->_studyUUID hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 76))
  {
    self->_version = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  v6 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(HKHealthWrapCodableMessageHeader *)self setEncryptedMessageKey:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 4))
  {
    [(HKHealthWrapCodableMessageHeader *)self setEncryptionIdentity:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 8))
  {
    [(HKHealthWrapCodableMessageHeader *)self setUploadUUID:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 5))
  {
    [(HKHealthWrapCodableMessageHeader *)self setStudyIdentifier:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 2))
  {
    [(HKHealthWrapCodableMessageHeader *)self setEncryptedHMACKey:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 76);
  if ((v5 & 2) != 0)
  {
    self->_trailingHMACLength = *(fromCopy + 14);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 76);
    if ((v5 & 4) == 0)
    {
LABEL_15:
      if ((v5 & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*(fromCopy + 76) & 4) == 0)
  {
    goto LABEL_15;
  }

  self->_trailingSHALength = *(fromCopy + 15);
  *&self->_has |= 4u;
  if ((*(fromCopy + 76) & 8) != 0)
  {
LABEL_16:
    self->_compressed = *(fromCopy + 72);
    *&self->_has |= 8u;
  }

LABEL_17:
  if (*(fromCopy + 6))
  {
    [(HKHealthWrapCodableMessageHeader *)self setStudyUUID:?];
    fromCopy = v6;
  }
}

@end