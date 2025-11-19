@interface ASCodableDatabaseCompetitionScore
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int64_t)scoresAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ASCodableDatabaseCompetitionScore

- (void)dealloc
{
  PBRepeatedInt64Clear();
  v3.receiver = self;
  v3.super_class = ASCodableDatabaseCompetitionScore;
  [(ASCodableDatabaseCompetitionScore *)&v3 dealloc];
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ASCodableDatabaseCompetitionScore;
  v4 = [(ASCodableDatabaseCompetitionScore *)&v8 description];
  v5 = [(ASCodableDatabaseCompetitionScore *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = PBRepeatedInt64NSArray();
  [v2 setObject:v3 forKey:@"scores"];

  return v2;
}

- (void)writeTo:(id)a3
{
  p_scores = &self->_scores;
  if (self->_scores.count)
  {
    v4 = 0;
    do
    {
      v5 = p_scores->list[v4];
      PBDataWriterWriteInt64Field();
      ++v4;
    }

    while (v4 < p_scores->count);
  }
}

- (void)copyTo:(id)a3
{
  v7 = a3;
  if ([(ASCodableDatabaseCompetitionScore *)self scoresCount])
  {
    [v7 clearScores];
    v4 = [(ASCodableDatabaseCompetitionScore *)self scoresCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [v7 addScores:{-[ASCodableDatabaseCompetitionScore scoresAtIndex:](self, "scoresAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  PBRepeatedInt64Copy();
  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  if ([v3 isMemberOfClass:objc_opt_class()])
  {
    IsEqual = PBRepeatedInt64IsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (void)mergeFrom:(id)a3
{
  v7 = a3;
  v4 = [v7 scoresCount];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      -[ASCodableDatabaseCompetitionScore addScores:](self, "addScores:", [v7 scoresAtIndex:i]);
    }
  }
}

@end