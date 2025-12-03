@interface ASCodableCloudKitCompetition
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)preferredVictoryBadgeStylesAtIndex:(unint64_t)index;
- (int64_t)opponentScoresAtIndex:(unint64_t)index;
- (int64_t)scoresAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasMaximumNumberOfPointsPerDay:(BOOL)day;
- (void)writeTo:(id)to;
@end

@implementation ASCodableCloudKitCompetition

- (void)dealloc
{
  PBRepeatedInt64Clear();
  PBRepeatedInt64Clear();
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = ASCodableCloudKitCompetition;
  [(ASCodableCloudKitCompetition *)&v3 dealloc];
}

- (int64_t)scoresAtIndex:(unint64_t)index
{
  p_scores = &self->_scores;
  count = self->_scores.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_scores->list[index];
}

- (int64_t)opponentScoresAtIndex:(unint64_t)index
{
  p_opponentScores = &self->_opponentScores;
  count = self->_opponentScores.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_opponentScores->list[index];
}

- (int)preferredVictoryBadgeStylesAtIndex:(unint64_t)index
{
  p_preferredVictoryBadgeStyles = &self->_preferredVictoryBadgeStyles;
  count = self->_preferredVictoryBadgeStyles.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_preferredVictoryBadgeStyles->list[index];
}

- (void)setHasMaximumNumberOfPointsPerDay:(BOOL)day
{
  if (day)
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
  v8.super_class = ASCodableCloudKitCompetition;
  v4 = [(ASCodableCloudKitCompetition *)&v8 description];
  dictionaryRepresentation = [(ASCodableCloudKitCompetition *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  uuid = self->_uuid;
  if (uuid)
  {
    [dictionary setObject:uuid forKey:@"uuid"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_currentCacheIndex];
    [v4 setObject:v6 forKey:@"currentCacheIndex"];
  }

  v7 = PBRepeatedInt64NSArray();
  [v4 setObject:v7 forKey:@"scores"];

  v8 = PBRepeatedInt64NSArray();
  [v4 setObject:v8 forKey:@"opponentScores"];

  startDateComponents = self->_startDateComponents;
  if (startDateComponents)
  {
    dictionaryRepresentation = [(ASCodableCloudKitDateComponents *)startDateComponents dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"startDateComponents"];
  }

  durationDateComponents = self->_durationDateComponents;
  if (durationDateComponents)
  {
    dictionaryRepresentation2 = [(ASCodableCloudKitDateComponents *)durationDateComponents dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"durationDateComponents"];
  }

  v13 = PBRepeatedInt32NSArray();
  [v4 setObject:v13 forKey:@"preferredVictoryBadgeStyles"];

  if ((*&self->_has & 2) != 0)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_maximumNumberOfPointsPerDay];
    [v4 setObject:v14 forKey:@"maximumNumberOfPointsPerDay"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v13 = toCopy;
  if (self->_uuid)
  {
    PBDataWriterWriteDataField();
    toCopy = v13;
  }

  if (*&self->_has)
  {
    currentCacheIndex = self->_currentCacheIndex;
    PBDataWriterWriteInt64Field();
    toCopy = v13;
  }

  if (self->_scores.count)
  {
    v6 = 0;
    do
    {
      v7 = self->_scores.list[v6];
      PBDataWriterWriteInt64Field();
      toCopy = v13;
      ++v6;
    }

    while (v6 < self->_scores.count);
  }

  if (self->_opponentScores.count)
  {
    v8 = 0;
    do
    {
      v9 = self->_opponentScores.list[v8];
      PBDataWriterWriteInt64Field();
      toCopy = v13;
      ++v8;
    }

    while (v8 < self->_opponentScores.count);
  }

  if (self->_startDateComponents)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v13;
  }

  if (self->_durationDateComponents)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v13;
  }

  if (self->_preferredVictoryBadgeStyles.count)
  {
    v10 = 0;
    do
    {
      v11 = self->_preferredVictoryBadgeStyles.list[v10];
      PBDataWriterWriteInt32Field();
      toCopy = v13;
      ++v10;
    }

    while (v10 < self->_preferredVictoryBadgeStyles.count);
  }

  if ((*&self->_has & 2) != 0)
  {
    maximumNumberOfPointsPerDay = self->_maximumNumberOfPointsPerDay;
    PBDataWriterWriteInt64Field();
    toCopy = v13;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v14 = toCopy;
  if (self->_uuid)
  {
    [toCopy setUuid:?];
    toCopy = v14;
  }

  if (*&self->_has)
  {
    *(toCopy + 10) = self->_currentCacheIndex;
    *(toCopy + 120) |= 1u;
  }

  if ([(ASCodableCloudKitCompetition *)self scoresCount])
  {
    [v14 clearScores];
    scoresCount = [(ASCodableCloudKitCompetition *)self scoresCount];
    if (scoresCount)
    {
      v6 = scoresCount;
      for (i = 0; i != v6; ++i)
      {
        [v14 addScores:{-[ASCodableCloudKitCompetition scoresAtIndex:](self, "scoresAtIndex:", i)}];
      }
    }
  }

  if ([(ASCodableCloudKitCompetition *)self opponentScoresCount])
  {
    [v14 clearOpponentScores];
    opponentScoresCount = [(ASCodableCloudKitCompetition *)self opponentScoresCount];
    if (opponentScoresCount)
    {
      v9 = opponentScoresCount;
      for (j = 0; j != v9; ++j)
      {
        [v14 addOpponentScores:{-[ASCodableCloudKitCompetition opponentScoresAtIndex:](self, "opponentScoresAtIndex:", j)}];
      }
    }
  }

  if (self->_startDateComponents)
  {
    [v14 setStartDateComponents:?];
  }

  if (self->_durationDateComponents)
  {
    [v14 setDurationDateComponents:?];
  }

  if ([(ASCodableCloudKitCompetition *)self preferredVictoryBadgeStylesCount])
  {
    [v14 clearPreferredVictoryBadgeStyles];
    preferredVictoryBadgeStylesCount = [(ASCodableCloudKitCompetition *)self preferredVictoryBadgeStylesCount];
    if (preferredVictoryBadgeStylesCount)
    {
      v12 = preferredVictoryBadgeStylesCount;
      for (k = 0; k != v12; ++k)
      {
        [v14 addPreferredVictoryBadgeStyles:{-[ASCodableCloudKitCompetition preferredVictoryBadgeStylesAtIndex:](self, "preferredVictoryBadgeStylesAtIndex:", k)}];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v14 + 11) = self->_maximumNumberOfPointsPerDay;
    *(v14 + 120) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_uuid copyWithZone:zone];
  v7 = *(v5 + 112);
  *(v5 + 112) = v6;

  if (*&self->_has)
  {
    *(v5 + 80) = self->_currentCacheIndex;
    *(v5 + 120) |= 1u;
  }

  PBRepeatedInt64Copy();
  PBRepeatedInt64Copy();
  v8 = [(ASCodableCloudKitDateComponents *)self->_startDateComponents copyWithZone:zone];
  v9 = *(v5 + 104);
  *(v5 + 104) = v8;

  v10 = [(ASCodableCloudKitDateComponents *)self->_durationDateComponents copyWithZone:zone];
  v11 = *(v5 + 96);
  *(v5 + 96) = v10;

  PBRepeatedInt32Copy();
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 88) = self->_maximumNumberOfPointsPerDay;
    *(v5 + 120) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  uuid = self->_uuid;
  if (uuid | *(equalCopy + 14))
  {
    if (![(NSData *)uuid isEqual:?])
    {
      goto LABEL_20;
    }
  }

  v6 = *(equalCopy + 120);
  if (*&self->_has)
  {
    if ((*(equalCopy + 120) & 1) == 0 || self->_currentCacheIndex != *(equalCopy + 10))
    {
      goto LABEL_20;
    }
  }

  else if (*(equalCopy + 120))
  {
LABEL_20:
    v9 = 0;
    goto LABEL_21;
  }

  if (!PBRepeatedInt64IsEqual())
  {
    goto LABEL_20;
  }

  if (!PBRepeatedInt64IsEqual())
  {
    goto LABEL_20;
  }

  startDateComponents = self->_startDateComponents;
  if (startDateComponents | *(equalCopy + 13))
  {
    if (![(ASCodableCloudKitDateComponents *)startDateComponents isEqual:?])
    {
      goto LABEL_20;
    }
  }

  durationDateComponents = self->_durationDateComponents;
  if (durationDateComponents | *(equalCopy + 12))
  {
    if (![(ASCodableCloudKitDateComponents *)durationDateComponents isEqual:?])
    {
      goto LABEL_20;
    }
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_20;
  }

  v9 = (*(equalCopy + 120) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 120) & 2) == 0 || self->_maximumNumberOfPointsPerDay != *(equalCopy + 11))
    {
      goto LABEL_20;
    }

    v9 = 1;
  }

LABEL_21:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_uuid hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_currentCacheIndex;
  }

  else
  {
    v4 = 0;
  }

  v5 = PBRepeatedInt64Hash();
  v6 = PBRepeatedInt64Hash();
  v7 = [(ASCodableCloudKitDateComponents *)self->_startDateComponents hash];
  v8 = [(ASCodableCloudKitDateComponents *)self->_durationDateComponents hash];
  v9 = PBRepeatedInt32Hash();
  if ((*&self->_has & 2) != 0)
  {
    v10 = 2654435761 * self->_maximumNumberOfPointsPerDay;
  }

  else
  {
    v10 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v19 = fromCopy;
  if (fromCopy[14])
  {
    [(ASCodableCloudKitCompetition *)self setUuid:?];
    fromCopy = v19;
  }

  if (fromCopy[15])
  {
    self->_currentCacheIndex = fromCopy[10];
    *&self->_has |= 1u;
  }

  scoresCount = [fromCopy scoresCount];
  if (scoresCount)
  {
    v6 = scoresCount;
    for (i = 0; i != v6; ++i)
    {
      -[ASCodableCloudKitCompetition addScores:](self, "addScores:", [v19 scoresAtIndex:i]);
    }
  }

  opponentScoresCount = [v19 opponentScoresCount];
  if (opponentScoresCount)
  {
    v9 = opponentScoresCount;
    for (j = 0; j != v9; ++j)
    {
      -[ASCodableCloudKitCompetition addOpponentScores:](self, "addOpponentScores:", [v19 opponentScoresAtIndex:j]);
    }
  }

  startDateComponents = self->_startDateComponents;
  v12 = v19;
  v13 = v19[13];
  if (startDateComponents)
  {
    if (!v13)
    {
      goto LABEL_17;
    }

    [(ASCodableCloudKitDateComponents *)startDateComponents mergeFrom:?];
  }

  else
  {
    if (!v13)
    {
      goto LABEL_17;
    }

    [(ASCodableCloudKitCompetition *)self setStartDateComponents:?];
  }

  v12 = v19;
LABEL_17:
  durationDateComponents = self->_durationDateComponents;
  v15 = v12[12];
  if (durationDateComponents)
  {
    if (!v15)
    {
      goto LABEL_23;
    }

    [(ASCodableCloudKitDateComponents *)durationDateComponents mergeFrom:?];
  }

  else
  {
    if (!v15)
    {
      goto LABEL_23;
    }

    [(ASCodableCloudKitCompetition *)self setDurationDateComponents:?];
  }

  v12 = v19;
LABEL_23:
  preferredVictoryBadgeStylesCount = [v12 preferredVictoryBadgeStylesCount];
  if (preferredVictoryBadgeStylesCount)
  {
    v17 = preferredVictoryBadgeStylesCount;
    for (k = 0; k != v17; ++k)
    {
      -[ASCodableCloudKitCompetition addPreferredVictoryBadgeStyles:](self, "addPreferredVictoryBadgeStyles:", [v19 preferredVictoryBadgeStylesAtIndex:k]);
    }
  }

  if ((v19[15] & 2) != 0)
  {
    self->_maximumNumberOfPointsPerDay = v19[11];
    *&self->_has |= 2u;
  }
}

@end