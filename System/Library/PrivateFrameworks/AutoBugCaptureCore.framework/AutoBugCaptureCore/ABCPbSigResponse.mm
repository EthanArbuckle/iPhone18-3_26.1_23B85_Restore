@interface ABCPbSigResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCaseCountTarget:(BOOL)target;
- (void)setHasDecision:(BOOL)decision;
- (void)writeTo:(id)to;
@end

@implementation ABCPbSigResponse

- (void)setHasCaseCountTarget:(BOOL)target
{
  if (target)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasDecision:(BOOL)decision
{
  if (decision)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ABCPbSigResponse;
  v4 = [(ABCPbSigResponse *)&v8 description];
  dictionaryRepresentation = [(ABCPbSigResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  caseIdentifier = self->_caseIdentifier;
  if (caseIdentifier)
  {
    [dictionary setObject:caseIdentifier forKey:@"case_identifier"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_caseCount];
    [v4 setObject:v7 forKey:@"case_count"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_caseCountTarget];
    [v4 setObject:v8 forKey:@"case_count_target"];
  }

  caseStatus = self->_caseStatus;
  if (caseStatus)
  {
    [v4 setObject:caseStatus forKey:@"case_status"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_decision];
    [v4 setObject:v10 forKey:@"decision"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_caseIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  has = self->_has;
  if (has)
  {
    caseCount = self->_caseCount;
    PBDataWriterWriteUint32Field();
    toCopy = v9;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    caseCountTarget = self->_caseCountTarget;
    PBDataWriterWriteUint32Field();
    toCopy = v9;
  }

  if (self->_caseStatus)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if ((*&self->_has & 4) != 0)
  {
    decision = self->_decision;
    PBDataWriterWriteBOOLField();
    toCopy = v9;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_caseIdentifier)
  {
    [toCopy setCaseIdentifier:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 2) = self->_caseCount;
    *(toCopy + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 3) = self->_caseCountTarget;
    *(toCopy + 36) |= 2u;
  }

  if (self->_caseStatus)
  {
    [v6 setCaseStatus:?];
    toCopy = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(toCopy + 32) = self->_decision;
    *(toCopy + 36) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_caseIdentifier copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_caseCount;
    *(v5 + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 12) = self->_caseCountTarget;
    *(v5 + 36) |= 2u;
  }

  v9 = [(NSString *)self->_caseStatus copyWithZone:zone];
  v10 = *(v5 + 24);
  *(v5 + 24) = v9;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 32) = self->_decision;
    *(v5 + 36) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  caseIdentifier = self->_caseIdentifier;
  if (caseIdentifier | *(equalCopy + 2))
  {
    if (![(NSString *)caseIdentifier isEqual:?])
    {
      goto LABEL_19;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 36);
  if (has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_caseCount != *(equalCopy + 2))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_caseCountTarget != *(equalCopy + 3))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_19;
  }

  caseStatus = self->_caseStatus;
  if (caseStatus | *(equalCopy + 3))
  {
    if (![(NSString *)caseStatus isEqual:?])
    {
      goto LABEL_19;
    }

    has = self->_has;
  }

  v9 = (*(equalCopy + 36) & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 36) & 4) != 0)
    {
      if (self->_decision)
      {
        if ((*(equalCopy + 32) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else if (*(equalCopy + 32))
      {
        goto LABEL_19;
      }

      v9 = 1;
      goto LABEL_20;
    }

LABEL_19:
    v9 = 0;
  }

LABEL_20:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_caseIdentifier hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_caseCount;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_caseCountTarget;
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  v6 = [(NSString *)self->_caseStatus hash];
  if ((*&self->_has & 4) != 0)
  {
    v7 = 2654435761 * self->_decision;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(ABCPbSigResponse *)self setCaseIdentifier:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 36);
  if (v5)
  {
    self->_caseCount = *(fromCopy + 2);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 36);
  }

  if ((v5 & 2) != 0)
  {
    self->_caseCountTarget = *(fromCopy + 3);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 3))
  {
    [(ABCPbSigResponse *)self setCaseStatus:?];
    fromCopy = v6;
  }

  if ((*(fromCopy + 36) & 4) != 0)
  {
    self->_decision = *(fromCopy + 32);
    *&self->_has |= 4u;
  }
}

@end