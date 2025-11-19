@interface ATXMPBAnchorModelPhaseFilterTracker
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPhaseDescription:(id)a3;
- (int)phaseDescription;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasNumStartingCandidates:(BOOL)a3;
- (void)setHasPhaseDescription:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXMPBAnchorModelPhaseFilterTracker

- (int)phaseDescription
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_phaseDescription;
  }

  else
  {
    return 1;
  }
}

- (void)setHasPhaseDescription:(BOOL)a3
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

- (int)StringAsPhaseDescription:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"First"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"Second"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)setHasNumStartingCandidates:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXMPBAnchorModelPhaseFilterTracker;
  v4 = [(ATXMPBAnchorModelPhaseFilterTracker *)&v8 description];
  v5 = [(ATXMPBAnchorModelPhaseFilterTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 4) != 0)
  {
    phaseDescription = self->_phaseDescription;
    if (phaseDescription == 1)
    {
      v5 = @"First";
    }

    else if (phaseDescription == 2)
    {
      v5 = @"Second";
    }

    else
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_phaseDescription];
    }

    [v3 setObject:v5 forKey:@"phaseDescription"];
  }

  phaseType = self->_phaseType;
  if (phaseType)
  {
    [v3 setObject:phaseType forKey:@"phaseType"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numStartingCandidates];
    [v3 setObject:v8 forKey:@"numStartingCandidates"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numEndingCandidates];
    [v3 setObject:v9 forKey:@"numEndingCandidates"];
  }

  anchorType = self->_anchorType;
  if (anchorType)
  {
    [v3 setObject:anchorType forKey:@"anchorType"];
  }

  abGroup = self->_abGroup;
  if (abGroup)
  {
    [v3 setObject:abGroup forKey:@"abGroup"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if ((*&self->_has & 4) != 0)
  {
    phaseDescription = self->_phaseDescription;
    PBDataWriterWriteInt32Field();
    v4 = v9;
  }

  if (self->_phaseType)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    numStartingCandidates = self->_numStartingCandidates;
    PBDataWriterWriteUint32Field();
    v4 = v9;
    has = self->_has;
  }

  if (has)
  {
    numEndingCandidates = self->_numEndingCandidates;
    PBDataWriterWriteUint32Field();
    v4 = v9;
  }

  if (self->_anchorType)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_abGroup)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 4) != 0)
  {
    v4[8] = self->_phaseDescription;
    *(v4 + 48) |= 4u;
  }

  v6 = v4;
  if (self->_phaseType)
  {
    [v4 setPhaseType:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[7] = self->_numStartingCandidates;
    *(v4 + 48) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[6] = self->_numEndingCandidates;
    *(v4 + 48) |= 1u;
  }

  if (self->_anchorType)
  {
    [v6 setAnchorType:?];
    v4 = v6;
  }

  if (self->_abGroup)
  {
    [v6 setAbGroup:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 32) = self->_phaseDescription;
    *(v5 + 48) |= 4u;
  }

  v7 = [(NSString *)self->_phaseType copyWithZone:a3];
  v8 = *(v6 + 40);
  *(v6 + 40) = v7;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 28) = self->_numStartingCandidates;
    *(v6 + 48) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v6 + 24) = self->_numEndingCandidates;
    *(v6 + 48) |= 1u;
  }

  v10 = [(NSString *)self->_anchorType copyWithZone:a3];
  v11 = *(v6 + 16);
  *(v6 + 16) = v10;

  v12 = [(NSString *)self->_abGroup copyWithZone:a3];
  v13 = *(v6 + 8);
  *(v6 + 8) = v12;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  has = self->_has;
  v6 = *(v4 + 48);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 48) & 4) == 0 || self->_phaseDescription != *(v4 + 8))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 48) & 4) != 0)
  {
    goto LABEL_24;
  }

  phaseType = self->_phaseType;
  if (phaseType | *(v4 + 5))
  {
    if (![(NSString *)phaseType isEqual:?])
    {
LABEL_24:
      v11 = 0;
      goto LABEL_25;
    }

    has = self->_has;
  }

  v8 = *(v4 + 48);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_numStartingCandidates != *(v4 + 7))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
    goto LABEL_24;
  }

  if (has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_numEndingCandidates != *(v4 + 6))
    {
      goto LABEL_24;
    }
  }

  else if (*(v4 + 48))
  {
    goto LABEL_24;
  }

  anchorType = self->_anchorType;
  if (anchorType | *(v4 + 2) && ![(NSString *)anchorType isEqual:?])
  {
    goto LABEL_24;
  }

  abGroup = self->_abGroup;
  if (abGroup | *(v4 + 1))
  {
    v11 = [(NSString *)abGroup isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_25:

  return v11;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_phaseDescription;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_phaseType hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_numStartingCandidates;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v5 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v6 = 2654435761 * self->_numEndingCandidates;
LABEL_9:
  v7 = v4 ^ v3 ^ v5 ^ v6 ^ [(NSString *)self->_anchorType hash];
  return v7 ^ [(NSString *)self->_abGroup hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((v4[12] & 4) != 0)
  {
    self->_phaseDescription = v4[8];
    *&self->_has |= 4u;
  }

  v6 = v4;
  if (*(v4 + 5))
  {
    [(ATXMPBAnchorModelPhaseFilterTracker *)self setPhaseType:?];
    v4 = v6;
  }

  v5 = *(v4 + 48);
  if ((v5 & 2) != 0)
  {
    self->_numStartingCandidates = v4[7];
    *&self->_has |= 2u;
    v5 = *(v4 + 48);
  }

  if (v5)
  {
    self->_numEndingCandidates = v4[6];
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    [(ATXMPBAnchorModelPhaseFilterTracker *)self setAnchorType:?];
    v4 = v6;
  }

  if (*(v4 + 1))
  {
    [(ATXMPBAnchorModelPhaseFilterTracker *)self setAbGroup:?];
    v4 = v6;
  }
}

@end