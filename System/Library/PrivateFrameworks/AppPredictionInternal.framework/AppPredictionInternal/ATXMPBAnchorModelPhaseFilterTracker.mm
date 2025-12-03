@interface ATXMPBAnchorModelPhaseFilterTracker
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPhaseDescription:(id)description;
- (int)phaseDescription;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasNumStartingCandidates:(BOOL)candidates;
- (void)setHasPhaseDescription:(BOOL)description;
- (void)writeTo:(id)to;
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

- (void)setHasPhaseDescription:(BOOL)description
{
  if (description)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsPhaseDescription:(id)description
{
  descriptionCopy = description;
  v4 = 1;
  if (([descriptionCopy isEqualToString:@"First"] & 1) == 0)
  {
    if ([descriptionCopy isEqualToString:@"Second"])
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

- (void)setHasNumStartingCandidates:(BOOL)candidates
{
  if (candidates)
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
  dictionaryRepresentation = [(ATXMPBAnchorModelPhaseFilterTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
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

    [dictionary setObject:v5 forKey:@"phaseDescription"];
  }

  phaseType = self->_phaseType;
  if (phaseType)
  {
    [dictionary setObject:phaseType forKey:@"phaseType"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numStartingCandidates];
    [dictionary setObject:v8 forKey:@"numStartingCandidates"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numEndingCandidates];
    [dictionary setObject:v9 forKey:@"numEndingCandidates"];
  }

  anchorType = self->_anchorType;
  if (anchorType)
  {
    [dictionary setObject:anchorType forKey:@"anchorType"];
  }

  abGroup = self->_abGroup;
  if (abGroup)
  {
    [dictionary setObject:abGroup forKey:@"abGroup"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if ((*&self->_has & 4) != 0)
  {
    phaseDescription = self->_phaseDescription;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
  }

  if (self->_phaseType)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    numStartingCandidates = self->_numStartingCandidates;
    PBDataWriterWriteUint32Field();
    toCopy = v9;
    has = self->_has;
  }

  if (has)
  {
    numEndingCandidates = self->_numEndingCandidates;
    PBDataWriterWriteUint32Field();
    toCopy = v9;
  }

  if (self->_anchorType)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_abGroup)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 4) != 0)
  {
    toCopy[8] = self->_phaseDescription;
    *(toCopy + 48) |= 4u;
  }

  v6 = toCopy;
  if (self->_phaseType)
  {
    [toCopy setPhaseType:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[7] = self->_numStartingCandidates;
    *(toCopy + 48) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    toCopy[6] = self->_numEndingCandidates;
    *(toCopy + 48) |= 1u;
  }

  if (self->_anchorType)
  {
    [v6 setAnchorType:?];
    toCopy = v6;
  }

  if (self->_abGroup)
  {
    [v6 setAbGroup:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 32) = self->_phaseDescription;
    *(v5 + 48) |= 4u;
  }

  v7 = [(NSString *)self->_phaseType copyWithZone:zone];
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

  v10 = [(NSString *)self->_anchorType copyWithZone:zone];
  v11 = *(v6 + 16);
  *(v6 + 16) = v10;

  v12 = [(NSString *)self->_abGroup copyWithZone:zone];
  v13 = *(v6 + 8);
  *(v6 + 8) = v12;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  has = self->_has;
  v6 = *(equalCopy + 48);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 48) & 4) == 0 || self->_phaseDescription != *(equalCopy + 8))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 48) & 4) != 0)
  {
    goto LABEL_24;
  }

  phaseType = self->_phaseType;
  if (phaseType | *(equalCopy + 5))
  {
    if (![(NSString *)phaseType isEqual:?])
    {
LABEL_24:
      v11 = 0;
      goto LABEL_25;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 48);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_numStartingCandidates != *(equalCopy + 7))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
    goto LABEL_24;
  }

  if (has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_numEndingCandidates != *(equalCopy + 6))
    {
      goto LABEL_24;
    }
  }

  else if (*(equalCopy + 48))
  {
    goto LABEL_24;
  }

  anchorType = self->_anchorType;
  if (anchorType | *(equalCopy + 2) && ![(NSString *)anchorType isEqual:?])
  {
    goto LABEL_24;
  }

  abGroup = self->_abGroup;
  if (abGroup | *(equalCopy + 1))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((fromCopy[12] & 4) != 0)
  {
    self->_phaseDescription = fromCopy[8];
    *&self->_has |= 4u;
  }

  v6 = fromCopy;
  if (*(fromCopy + 5))
  {
    [(ATXMPBAnchorModelPhaseFilterTracker *)self setPhaseType:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 48);
  if ((v5 & 2) != 0)
  {
    self->_numStartingCandidates = fromCopy[7];
    *&self->_has |= 2u;
    v5 = *(fromCopy + 48);
  }

  if (v5)
  {
    self->_numEndingCandidates = fromCopy[6];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    [(ATXMPBAnchorModelPhaseFilterTracker *)self setAnchorType:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 1))
  {
    [(ATXMPBAnchorModelPhaseFilterTracker *)self setAbGroup:?];
    fromCopy = v6;
  }
}

@end