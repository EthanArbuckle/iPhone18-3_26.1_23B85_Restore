@interface ABCPbSigResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCaseCountTarget:(BOOL)a3;
- (void)setHasDecision:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ABCPbSigResponse

- (void)setHasCaseCountTarget:(BOOL)a3
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

- (void)setHasDecision:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ABCPbSigResponse;
  v4 = [(ABCPbSigResponse *)&v8 description];
  v5 = [(ABCPbSigResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  caseIdentifier = self->_caseIdentifier;
  if (caseIdentifier)
  {
    [v3 setObject:caseIdentifier forKey:@"case_identifier"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_caseIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  has = self->_has;
  if (has)
  {
    caseCount = self->_caseCount;
    PBDataWriterWriteUint32Field();
    v4 = v9;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    caseCountTarget = self->_caseCountTarget;
    PBDataWriterWriteUint32Field();
    v4 = v9;
  }

  if (self->_caseStatus)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if ((*&self->_has & 4) != 0)
  {
    decision = self->_decision;
    PBDataWriterWriteBOOLField();
    v4 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_caseIdentifier)
  {
    [v4 setCaseIdentifier:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 2) = self->_caseCount;
    *(v4 + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 3) = self->_caseCountTarget;
    *(v4 + 36) |= 2u;
  }

  if (self->_caseStatus)
  {
    [v6 setCaseStatus:?];
    v4 = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v4 + 32) = self->_decision;
    *(v4 + 36) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_caseIdentifier copyWithZone:a3];
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

  v9 = [(NSString *)self->_caseStatus copyWithZone:a3];
  v10 = *(v5 + 24);
  *(v5 + 24) = v9;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 32) = self->_decision;
    *(v5 + 36) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  caseIdentifier = self->_caseIdentifier;
  if (caseIdentifier | *(v4 + 2))
  {
    if (![(NSString *)caseIdentifier isEqual:?])
    {
      goto LABEL_19;
    }
  }

  has = self->_has;
  v7 = *(v4 + 36);
  if (has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_caseCount != *(v4 + 2))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_caseCountTarget != *(v4 + 3))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
    goto LABEL_19;
  }

  caseStatus = self->_caseStatus;
  if (caseStatus | *(v4 + 3))
  {
    if (![(NSString *)caseStatus isEqual:?])
    {
      goto LABEL_19;
    }

    has = self->_has;
  }

  v9 = (*(v4 + 36) & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((*(v4 + 36) & 4) != 0)
    {
      if (self->_decision)
      {
        if ((*(v4 + 32) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else if (*(v4 + 32))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 2))
  {
    [(ABCPbSigResponse *)self setCaseIdentifier:?];
    v4 = v6;
  }

  v5 = *(v4 + 36);
  if (v5)
  {
    self->_caseCount = *(v4 + 2);
    *&self->_has |= 1u;
    v5 = *(v4 + 36);
  }

  if ((v5 & 2) != 0)
  {
    self->_caseCountTarget = *(v4 + 3);
    *&self->_has |= 2u;
  }

  if (*(v4 + 3))
  {
    [(ABCPbSigResponse *)self setCaseStatus:?];
    v4 = v6;
  }

  if ((*(v4 + 36) & 4) != 0)
  {
    self->_decision = *(v4 + 32);
    *&self->_has |= 4u;
  }
}

@end