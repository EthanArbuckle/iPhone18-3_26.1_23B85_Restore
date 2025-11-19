@interface ASCodableCloudKitCompetition
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)preferredVictoryBadgeStylesAtIndex:(unint64_t)a3;
- (int64_t)opponentScoresAtIndex:(unint64_t)a3;
- (int64_t)scoresAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasMaximumNumberOfPointsPerDay:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (int64_t)scoresAtIndex:(unint64_t)a3
{
  p_scores = &self->_scores;
  count = self->_scores.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_scores->list[a3];
}

- (int64_t)opponentScoresAtIndex:(unint64_t)a3
{
  p_opponentScores = &self->_opponentScores;
  count = self->_opponentScores.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_opponentScores->list[a3];
}

- (int)preferredVictoryBadgeStylesAtIndex:(unint64_t)a3
{
  p_preferredVictoryBadgeStyles = &self->_preferredVictoryBadgeStyles;
  count = self->_preferredVictoryBadgeStyles.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_preferredVictoryBadgeStyles->list[a3];
}

- (void)setHasMaximumNumberOfPointsPerDay:(BOOL)a3
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
  v8.super_class = ASCodableCloudKitCompetition;
  v4 = [(ASCodableCloudKitCompetition *)&v8 description];
  v5 = [(ASCodableCloudKitCompetition *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  uuid = self->_uuid;
  if (uuid)
  {
    [v3 setObject:uuid forKey:@"uuid"];
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
    v10 = [(ASCodableCloudKitDateComponents *)startDateComponents dictionaryRepresentation];
    [v4 setObject:v10 forKey:@"startDateComponents"];
  }

  durationDateComponents = self->_durationDateComponents;
  if (durationDateComponents)
  {
    v12 = [(ASCodableCloudKitDateComponents *)durationDateComponents dictionaryRepresentation];
    [v4 setObject:v12 forKey:@"durationDateComponents"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v13 = v4;
  if (self->_uuid)
  {
    PBDataWriterWriteDataField();
    v4 = v13;
  }

  if (*&self->_has)
  {
    currentCacheIndex = self->_currentCacheIndex;
    PBDataWriterWriteInt64Field();
    v4 = v13;
  }

  if (self->_scores.count)
  {
    v6 = 0;
    do
    {
      v7 = self->_scores.list[v6];
      PBDataWriterWriteInt64Field();
      v4 = v13;
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
      v4 = v13;
      ++v8;
    }

    while (v8 < self->_opponentScores.count);
  }

  if (self->_startDateComponents)
  {
    PBDataWriterWriteSubmessage();
    v4 = v13;
  }

  if (self->_durationDateComponents)
  {
    PBDataWriterWriteSubmessage();
    v4 = v13;
  }

  if (self->_preferredVictoryBadgeStyles.count)
  {
    v10 = 0;
    do
    {
      v11 = self->_preferredVictoryBadgeStyles.list[v10];
      PBDataWriterWriteInt32Field();
      v4 = v13;
      ++v10;
    }

    while (v10 < self->_preferredVictoryBadgeStyles.count);
  }

  if ((*&self->_has & 2) != 0)
  {
    maximumNumberOfPointsPerDay = self->_maximumNumberOfPointsPerDay;
    PBDataWriterWriteInt64Field();
    v4 = v13;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v14 = v4;
  if (self->_uuid)
  {
    [v4 setUuid:?];
    v4 = v14;
  }

  if (*&self->_has)
  {
    *(v4 + 10) = self->_currentCacheIndex;
    *(v4 + 120) |= 1u;
  }

  if ([(ASCodableCloudKitCompetition *)self scoresCount])
  {
    [v14 clearScores];
    v5 = [(ASCodableCloudKitCompetition *)self scoresCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [v14 addScores:{-[ASCodableCloudKitCompetition scoresAtIndex:](self, "scoresAtIndex:", i)}];
      }
    }
  }

  if ([(ASCodableCloudKitCompetition *)self opponentScoresCount])
  {
    [v14 clearOpponentScores];
    v8 = [(ASCodableCloudKitCompetition *)self opponentScoresCount];
    if (v8)
    {
      v9 = v8;
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
    v11 = [(ASCodableCloudKitCompetition *)self preferredVictoryBadgeStylesCount];
    if (v11)
    {
      v12 = v11;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_uuid copyWithZone:a3];
  v7 = *(v5 + 112);
  *(v5 + 112) = v6;

  if (*&self->_has)
  {
    *(v5 + 80) = self->_currentCacheIndex;
    *(v5 + 120) |= 1u;
  }

  PBRepeatedInt64Copy();
  PBRepeatedInt64Copy();
  v8 = [(ASCodableCloudKitDateComponents *)self->_startDateComponents copyWithZone:a3];
  v9 = *(v5 + 104);
  *(v5 + 104) = v8;

  v10 = [(ASCodableCloudKitDateComponents *)self->_durationDateComponents copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  uuid = self->_uuid;
  if (uuid | *(v4 + 14))
  {
    if (![(NSData *)uuid isEqual:?])
    {
      goto LABEL_20;
    }
  }

  v6 = *(v4 + 120);
  if (*&self->_has)
  {
    if ((*(v4 + 120) & 1) == 0 || self->_currentCacheIndex != *(v4 + 10))
    {
      goto LABEL_20;
    }
  }

  else if (*(v4 + 120))
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
  if (startDateComponents | *(v4 + 13))
  {
    if (![(ASCodableCloudKitDateComponents *)startDateComponents isEqual:?])
    {
      goto LABEL_20;
    }
  }

  durationDateComponents = self->_durationDateComponents;
  if (durationDateComponents | *(v4 + 12))
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

  v9 = (*(v4 + 120) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 120) & 2) == 0 || self->_maximumNumberOfPointsPerDay != *(v4 + 11))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v19 = v4;
  if (v4[14])
  {
    [(ASCodableCloudKitCompetition *)self setUuid:?];
    v4 = v19;
  }

  if (v4[15])
  {
    self->_currentCacheIndex = v4[10];
    *&self->_has |= 1u;
  }

  v5 = [v4 scoresCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[ASCodableCloudKitCompetition addScores:](self, "addScores:", [v19 scoresAtIndex:i]);
    }
  }

  v8 = [v19 opponentScoresCount];
  if (v8)
  {
    v9 = v8;
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
  v16 = [v12 preferredVictoryBadgeStylesCount];
  if (v16)
  {
    v17 = v16;
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