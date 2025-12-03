@interface AWDSymptomsSignificantOperationalEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsError:(id)error;
- (int)StringAsName:(id)name;
- (int)StringAsStatus:(id)status;
- (int)error;
- (int)name;
- (int)status;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasError:(BOOL)error;
- (void)setHasName:(BOOL)name;
- (void)setHasStatus:(BOOL)status;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDSymptomsSignificantOperationalEvent

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)name
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_name;
  }

  else
  {
    return 1;
  }
}

- (void)setHasName:(BOOL)name
{
  if (name)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"DatabaseIntegrityCheckFailed"])
  {
    v4 = 1;
  }

  else if ([nameCopy isEqualToString:@"DestroyPersistentStoreFailed"])
  {
    v4 = 2;
  }

  else if ([nameCopy isEqualToString:@"DatabaseFileDeletionFailed"])
  {
    v4 = 3;
  }

  else if ([nameCopy isEqualToString:@"InvalidMetadataForPersistentStore"])
  {
    v4 = 4;
  }

  else if ([nameCopy isEqualToString:@"InsufficientDiskStorageAvailable"])
  {
    v4 = 5;
  }

  else if ([nameCopy isEqualToString:@"QueryReturnedInconsistentContent"])
  {
    v4 = 6;
  }

  else if ([nameCopy isEqualToString:@"NotificationTokenUnavailable"])
  {
    v4 = 7;
  }

  else if ([nameCopy isEqualToString:@"CLIPSRulesSuspectInDatabase"])
  {
    v4 = 8;
  }

  else if ([nameCopy isEqualToString:@"CLIPSRulesFailedToLoad"])
  {
    v4 = 9;
  }

  else if ([nameCopy isEqualToString:@"CLIPSRulesFailedDuringRun"])
  {
    v4 = 10;
  }

  else if ([nameCopy isEqualToString:@"CLIPSRulesLoopDetected"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int)error
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_error;
  }

  else
  {
    return 1;
  }
}

- (void)setHasError:(BOOL)error
{
  if (error)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsError:(id)error
{
  errorCopy = error;
  if ([errorCopy isEqualToString:@"Uninitialized"])
  {
    v4 = 1;
  }

  else if ([errorCopy isEqualToString:@"ExpectedFailure"])
  {
    v4 = 2;
  }

  else if ([errorCopy isEqualToString:@"UnexpectedFailure"])
  {
    v4 = 3;
  }

  else if ([errorCopy isEqualToString:@"MissingValue"])
  {
    v4 = 4;
  }

  else if ([errorCopy isEqualToString:@"EmptyValue"])
  {
    v4 = 5;
  }

  else if ([errorCopy isEqualToString:@"TimedOut"])
  {
    v4 = 6;
  }

  else if ([errorCopy isEqualToString:@"InsufficientPermission"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int)status
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_status;
  }

  else
  {
    return 1;
  }
}

- (void)setHasStatus:(BOOL)status
{
  if (status)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"Success"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"Fail"])
  {
    v4 = 2;
  }

  else if ([statusCopy isEqualToString:@"Undetermined"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDSymptomsSignificantOperationalEvent;
  v4 = [(AWDSymptomsSignificantOperationalEvent *)&v8 description];
  dictionaryRepresentation = [(AWDSymptomsSignificantOperationalEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v5 forKey:@"timestamp"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v6 = self->_name - 1;
    if (v6 >= 0xB)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_name];
    }

    else
    {
      v7 = off_278CF0100[v6];
    }

    [dictionary setObject:v7 forKey:@"name"];
  }

  alternateName = self->_alternateName;
  if (alternateName)
  {
    [dictionary setObject:alternateName forKey:@"alternateName"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v9 = self->_error - 1;
    if (v9 >= 7)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_error];
    }

    else
    {
      v10 = off_278CF0158[v9];
    }

    [dictionary setObject:v10 forKey:@"error"];
  }

  errorDomain = self->_errorDomain;
  if (errorDomain)
  {
    [dictionary setObject:errorDomain forKey:@"errorDomain"];
  }

  v12 = self->_has;
  if (v12)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_errorCode];
    [dictionary setObject:v13 forKey:@"errorCode"];

    v12 = self->_has;
  }

  if ((v12 & 0x10) != 0)
  {
    v14 = self->_status - 1;
    if (v14 >= 3)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_status];
    }

    else
    {
      v15 = off_278CF0190[v14];
    }

    [dictionary setObject:v15 forKey:@"status"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    name = self->_name;
    PBDataWriterWriteInt32Field();
  }

  if (self->_alternateName)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    error = self->_error;
    PBDataWriterWriteInt32Field();
  }

  if (self->_errorDomain)
  {
    PBDataWriterWriteStringField();
  }

  v8 = self->_has;
  if (v8)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteInt64Field();
    v8 = self->_has;
  }

  if ((v8 & 0x10) != 0)
  {
    status = self->_status;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[2] = self->_timestamp;
    *(toCopy + 56) |= 2u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(toCopy + 12) = self->_name;
    *(toCopy + 56) |= 8u;
  }

  v7 = toCopy;
  if (self->_alternateName)
  {
    [toCopy setAlternateName:?];
    toCopy = v7;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(toCopy + 8) = self->_error;
    *(toCopy + 56) |= 4u;
  }

  if (self->_errorDomain)
  {
    [v7 setErrorDomain:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if (v6)
  {
    toCopy[1] = self->_errorCode;
    *(toCopy + 56) |= 1u;
    v6 = self->_has;
  }

  if ((v6 & 0x10) != 0)
  {
    *(toCopy + 13) = self->_status;
    *(toCopy + 56) |= 0x10u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_timestamp;
    *(v5 + 56) |= 2u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(v5 + 48) = self->_name;
    *(v5 + 56) |= 8u;
  }

  v8 = [(NSString *)self->_alternateName copyWithZone:zone];
  v9 = *(v6 + 24);
  *(v6 + 24) = v8;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 32) = self->_error;
    *(v6 + 56) |= 4u;
  }

  v10 = [(NSString *)self->_errorDomain copyWithZone:zone];
  v11 = *(v6 + 40);
  *(v6 + 40) = v10;

  v12 = self->_has;
  if (v12)
  {
    *(v6 + 8) = self->_errorCode;
    *(v6 + 56) |= 1u;
    v12 = self->_has;
  }

  if ((v12 & 0x10) != 0)
  {
    *(v6 + 52) = self->_status;
    *(v6 + 56) |= 0x10u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  has = self->_has;
  v6 = *(equalCopy + 56);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 56) & 2) == 0 || self->_timestamp != *(equalCopy + 2))
    {
      goto LABEL_32;
    }
  }

  else if ((*(equalCopy + 56) & 2) != 0)
  {
    goto LABEL_32;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 56) & 8) == 0 || self->_name != *(equalCopy + 12))
    {
      goto LABEL_32;
    }
  }

  else if ((*(equalCopy + 56) & 8) != 0)
  {
    goto LABEL_32;
  }

  alternateName = self->_alternateName;
  if (alternateName | *(equalCopy + 3))
  {
    if (![(NSString *)alternateName isEqual:?])
    {
      goto LABEL_32;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 56);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 56) & 4) == 0 || self->_error != *(equalCopy + 8))
    {
      goto LABEL_32;
    }
  }

  else if ((*(equalCopy + 56) & 4) != 0)
  {
    goto LABEL_32;
  }

  errorDomain = self->_errorDomain;
  if (errorDomain | *(equalCopy + 5))
  {
    if ([(NSString *)errorDomain isEqual:?])
    {
      has = self->_has;
      goto LABEL_23;
    }

LABEL_32:
    v10 = 0;
    goto LABEL_33;
  }

LABEL_23:
  if (has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_errorCode != *(equalCopy + 1))
    {
      goto LABEL_32;
    }
  }

  else if (*(equalCopy + 56))
  {
    goto LABEL_32;
  }

  v10 = (*(equalCopy + 56) & 0x10) == 0;
  if ((has & 0x10) != 0)
  {
    if ((*(equalCopy + 56) & 0x10) == 0 || self->_status != *(equalCopy + 13))
    {
      goto LABEL_32;
    }

    v10 = 1;
  }

LABEL_33:

  return v10;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_name;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSString *)self->_alternateName hash];
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761 * self->_error;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSString *)self->_errorDomain hash];
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_errorCode;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    v9 = 0;
    return v4 ^ v3 ^ v6 ^ v5 ^ v7 ^ v8 ^ v9;
  }

  v8 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v9 = 2654435761 * self->_status;
  return v4 ^ v3 ^ v6 ^ v5 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 56);
  if ((v5 & 2) != 0)
  {
    self->_timestamp = *(fromCopy + 2);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 56);
  }

  if ((v5 & 8) != 0)
  {
    self->_name = *(fromCopy + 12);
    *&self->_has |= 8u;
  }

  v7 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(AWDSymptomsSignificantOperationalEvent *)self setAlternateName:?];
    fromCopy = v7;
  }

  if ((*(fromCopy + 56) & 4) != 0)
  {
    self->_error = *(fromCopy + 8);
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 5))
  {
    [(AWDSymptomsSignificantOperationalEvent *)self setErrorDomain:?];
    fromCopy = v7;
  }

  v6 = *(fromCopy + 56);
  if (v6)
  {
    self->_errorCode = *(fromCopy + 1);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 56);
  }

  if ((v6 & 0x10) != 0)
  {
    self->_status = *(fromCopy + 13);
    *&self->_has |= 0x10u;
  }
}

@end