@interface ATXMPBAnchorModelPredictionsGeneratedTracker
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSecondsAfterAnchorEnd:(BOOL)end;
- (void)setHasSecondsAfterAnchorStart:(BOOL)start;
- (void)writeTo:(id)to;
@end

@implementation ATXMPBAnchorModelPredictionsGeneratedTracker

- (void)setHasSecondsAfterAnchorStart:(BOOL)start
{
  if (start)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSecondsAfterAnchorEnd:(BOOL)end
{
  if (end)
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
  v8.super_class = ATXMPBAnchorModelPredictionsGeneratedTracker;
  v4 = [(ATXMPBAnchorModelPredictionsGeneratedTracker *)&v8 description];
  dictionaryRepresentation = [(ATXMPBAnchorModelPredictionsGeneratedTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  anchorType = self->_anchorType;
  if (anchorType)
  {
    [dictionary setObject:anchorType forKey:@"anchorType"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_score];
    [v4 setObject:v6 forKey:@"score"];
  }

  candidateType = self->_candidateType;
  if (candidateType)
  {
    [v4 setObject:candidateType forKey:@"candidateType"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:self->_secondsAfterAnchorStart];
    [v4 setObject:v9 forKey:@"secondsAfterAnchorStart"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInt:self->_secondsAfterAnchorEnd];
    [v4 setObject:v10 forKey:@"secondsAfterAnchorEnd"];
  }

  abGroup = self->_abGroup;
  if (abGroup)
  {
    [v4 setObject:abGroup forKey:@"abGroup"];
  }

  executableObject = self->_executableObject;
  if (executableObject)
  {
    [v4 setObject:executableObject forKey:@"executableObject"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_anchorType)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (*&self->_has)
  {
    score = self->_score;
    PBDataWriterWriteDoubleField();
    toCopy = v9;
  }

  if (self->_candidateType)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    secondsAfterAnchorStart = self->_secondsAfterAnchorStart;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    secondsAfterAnchorEnd = self->_secondsAfterAnchorEnd;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
  }

  if (self->_abGroup)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_executableObject)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_anchorType)
  {
    [toCopy setAnchorType:?];
    toCopy = v6;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_score;
    *(toCopy + 56) |= 1u;
  }

  if (self->_candidateType)
  {
    [v6 setCandidateType:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 13) = self->_secondsAfterAnchorStart;
    *(toCopy + 56) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 12) = self->_secondsAfterAnchorEnd;
    *(toCopy + 56) |= 2u;
  }

  if (self->_abGroup)
  {
    [v6 setAbGroup:?];
    toCopy = v6;
  }

  if (self->_executableObject)
  {
    [v6 setExecutableObject:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_anchorType copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_score;
    *(v5 + 56) |= 1u;
  }

  v8 = [(NSString *)self->_candidateType copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 52) = self->_secondsAfterAnchorStart;
    *(v5 + 56) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 48) = self->_secondsAfterAnchorEnd;
    *(v5 + 56) |= 2u;
  }

  v11 = [(NSString *)self->_abGroup copyWithZone:zone];
  v12 = *(v5 + 16);
  *(v5 + 16) = v11;

  v13 = [(NSString *)self->_executableObject copyWithZone:zone];
  v14 = *(v5 + 40);
  *(v5 + 40) = v13;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  anchorType = self->_anchorType;
  if (anchorType | *(equalCopy + 3))
  {
    if (![(NSString *)anchorType isEqual:?])
    {
      goto LABEL_26;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 56);
  if (has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_score != *(equalCopy + 1))
    {
      goto LABEL_26;
    }
  }

  else if (*(equalCopy + 56))
  {
    goto LABEL_26;
  }

  candidateType = self->_candidateType;
  if (candidateType | *(equalCopy + 4))
  {
    if (![(NSString *)candidateType isEqual:?])
    {
LABEL_26:
      v12 = 0;
      goto LABEL_27;
    }

    has = self->_has;
  }

  v9 = *(equalCopy + 56);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 56) & 4) == 0 || self->_secondsAfterAnchorStart != *(equalCopy + 13))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 56) & 4) != 0)
  {
    goto LABEL_26;
  }

  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 56) & 2) == 0 || self->_secondsAfterAnchorEnd != *(equalCopy + 12))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 56) & 2) != 0)
  {
    goto LABEL_26;
  }

  abGroup = self->_abGroup;
  if (abGroup | *(equalCopy + 2) && ![(NSString *)abGroup isEqual:?])
  {
    goto LABEL_26;
  }

  executableObject = self->_executableObject;
  if (executableObject | *(equalCopy + 5))
  {
    v12 = [(NSString *)executableObject isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_27:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_anchorType hash];
  if (*&self->_has)
  {
    score = self->_score;
    if (score < 0.0)
    {
      score = -score;
    }

    *v4.i64 = floor(score + 0.5);
    v8 = (score - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v6 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = [(NSString *)self->_candidateType hash];
  if ((*&self->_has & 4) != 0)
  {
    v11 = 2654435761 * self->_secondsAfterAnchorStart;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  v11 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v12 = 2654435761 * self->_secondsAfterAnchorEnd;
LABEL_14:
  v13 = v6 ^ v3 ^ v10 ^ v11;
  v14 = v12 ^ [(NSString *)self->_abGroup hash];
  return v13 ^ v14 ^ [(NSString *)self->_executableObject hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(ATXMPBAnchorModelPredictionsGeneratedTracker *)self setAnchorType:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 56))
  {
    self->_score = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 4))
  {
    [(ATXMPBAnchorModelPredictionsGeneratedTracker *)self setCandidateType:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 56);
  if ((v5 & 4) != 0)
  {
    self->_secondsAfterAnchorStart = *(fromCopy + 13);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 56);
  }

  if ((v5 & 2) != 0)
  {
    self->_secondsAfterAnchorEnd = *(fromCopy + 12);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 2))
  {
    [(ATXMPBAnchorModelPredictionsGeneratedTracker *)self setAbGroup:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 5))
  {
    [(ATXMPBAnchorModelPredictionsGeneratedTracker *)self setExecutableObject:?];
    fromCopy = v6;
  }
}

@end