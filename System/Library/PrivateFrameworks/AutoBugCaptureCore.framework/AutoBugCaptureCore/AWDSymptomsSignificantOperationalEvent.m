@interface AWDSymptomsSignificantOperationalEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsError:(id)a3;
- (int)StringAsName:(id)a3;
- (int)StringAsStatus:(id)a3;
- (int)error;
- (int)name;
- (int)status;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasError:(BOOL)a3;
- (void)setHasName:(BOOL)a3;
- (void)setHasStatus:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDSymptomsSignificantOperationalEvent

- (void)setHasTimestamp:(BOOL)a3
{
  if (a3)
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

- (void)setHasName:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsName:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"DatabaseIntegrityCheckFailed"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"DestroyPersistentStoreFailed"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"DatabaseFileDeletionFailed"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"InvalidMetadataForPersistentStore"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"InsufficientDiskStorageAvailable"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"QueryReturnedInconsistentContent"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"NotificationTokenUnavailable"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"CLIPSRulesSuspectInDatabase"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"CLIPSRulesFailedToLoad"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"CLIPSRulesFailedDuringRun"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"CLIPSRulesLoopDetected"])
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

- (void)setHasError:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsError:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Uninitialized"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ExpectedFailure"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"UnexpectedFailure"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"MissingValue"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"EmptyValue"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"TimedOut"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"InsufficientPermission"])
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

- (void)setHasStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Success"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Fail"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Undetermined"])
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
  v5 = [(AWDSymptomsSignificantOperationalEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v5 forKey:@"timestamp"];

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

    [v3 setObject:v7 forKey:@"name"];
  }

  alternateName = self->_alternateName;
  if (alternateName)
  {
    [v3 setObject:alternateName forKey:@"alternateName"];
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

    [v3 setObject:v10 forKey:@"error"];
  }

  errorDomain = self->_errorDomain;
  if (errorDomain)
  {
    [v3 setObject:errorDomain forKey:@"errorDomain"];
  }

  v12 = self->_has;
  if (v12)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_errorCode];
    [v3 setObject:v13 forKey:@"errorCode"];

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

    [v3 setObject:v15 forKey:@"status"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[2] = self->_timestamp;
    *(v4 + 56) |= 2u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(v4 + 12) = self->_name;
    *(v4 + 56) |= 8u;
  }

  v7 = v4;
  if (self->_alternateName)
  {
    [v4 setAlternateName:?];
    v4 = v7;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v4 + 8) = self->_error;
    *(v4 + 56) |= 4u;
  }

  if (self->_errorDomain)
  {
    [v7 setErrorDomain:?];
    v4 = v7;
  }

  v6 = self->_has;
  if (v6)
  {
    v4[1] = self->_errorCode;
    *(v4 + 56) |= 1u;
    v6 = self->_has;
  }

  if ((v6 & 0x10) != 0)
  {
    *(v4 + 13) = self->_status;
    *(v4 + 56) |= 0x10u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  v8 = [(NSString *)self->_alternateName copyWithZone:a3];
  v9 = *(v6 + 24);
  *(v6 + 24) = v8;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 32) = self->_error;
    *(v6 + 56) |= 4u;
  }

  v10 = [(NSString *)self->_errorDomain copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  has = self->_has;
  v6 = *(v4 + 56);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 56) & 2) == 0 || self->_timestamp != *(v4 + 2))
    {
      goto LABEL_32;
    }
  }

  else if ((*(v4 + 56) & 2) != 0)
  {
    goto LABEL_32;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 56) & 8) == 0 || self->_name != *(v4 + 12))
    {
      goto LABEL_32;
    }
  }

  else if ((*(v4 + 56) & 8) != 0)
  {
    goto LABEL_32;
  }

  alternateName = self->_alternateName;
  if (alternateName | *(v4 + 3))
  {
    if (![(NSString *)alternateName isEqual:?])
    {
      goto LABEL_32;
    }

    has = self->_has;
  }

  v8 = *(v4 + 56);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 56) & 4) == 0 || self->_error != *(v4 + 8))
    {
      goto LABEL_32;
    }
  }

  else if ((*(v4 + 56) & 4) != 0)
  {
    goto LABEL_32;
  }

  errorDomain = self->_errorDomain;
  if (errorDomain | *(v4 + 5))
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
    if ((*(v4 + 56) & 1) == 0 || self->_errorCode != *(v4 + 1))
    {
      goto LABEL_32;
    }
  }

  else if (*(v4 + 56))
  {
    goto LABEL_32;
  }

  v10 = (*(v4 + 56) & 0x10) == 0;
  if ((has & 0x10) != 0)
  {
    if ((*(v4 + 56) & 0x10) == 0 || self->_status != *(v4 + 13))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 56);
  if ((v5 & 2) != 0)
  {
    self->_timestamp = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 56);
  }

  if ((v5 & 8) != 0)
  {
    self->_name = *(v4 + 12);
    *&self->_has |= 8u;
  }

  v7 = v4;
  if (*(v4 + 3))
  {
    [(AWDSymptomsSignificantOperationalEvent *)self setAlternateName:?];
    v4 = v7;
  }

  if ((*(v4 + 56) & 4) != 0)
  {
    self->_error = *(v4 + 8);
    *&self->_has |= 4u;
  }

  if (*(v4 + 5))
  {
    [(AWDSymptomsSignificantOperationalEvent *)self setErrorDomain:?];
    v4 = v7;
  }

  v6 = *(v4 + 56);
  if (v6)
  {
    self->_errorCode = *(v4 + 1);
    *&self->_has |= 1u;
    v6 = *(v4 + 56);
  }

  if ((v6 & 0x10) != 0)
  {
    self->_status = *(v4 + 13);
    *&self->_has |= 0x10u;
  }
}

@end