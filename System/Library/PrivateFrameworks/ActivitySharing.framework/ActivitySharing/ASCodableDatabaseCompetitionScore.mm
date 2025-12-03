@interface ASCodableDatabaseCompetitionScore
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int64_t)scoresAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ASCodableDatabaseCompetitionScore

- (void)dealloc
{
  PBRepeatedInt64Clear();
  v3.receiver = self;
  v3.super_class = ASCodableDatabaseCompetitionScore;
  [(ASCodableDatabaseCompetitionScore *)&v3 dealloc];
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ASCodableDatabaseCompetitionScore;
  v4 = [(ASCodableDatabaseCompetitionScore *)&v8 description];
  dictionaryRepresentation = [(ASCodableDatabaseCompetitionScore *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v3 = PBRepeatedInt64NSArray();
  [dictionary setObject:v3 forKey:@"scores"];

  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(ASCodableDatabaseCompetitionScore *)self scoresCount])
  {
    [toCopy clearScores];
    scoresCount = [(ASCodableDatabaseCompetitionScore *)self scoresCount];
    if (scoresCount)
    {
      v5 = scoresCount;
      for (i = 0; i != v5; ++i)
      {
        [toCopy addScores:{-[ASCodableDatabaseCompetitionScore scoresAtIndex:](self, "scoresAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  PBRepeatedInt64Copy();
  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    IsEqual = PBRepeatedInt64IsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  scoresCount = [fromCopy scoresCount];
  if (scoresCount)
  {
    v5 = scoresCount;
    for (i = 0; i != v5; ++i)
    {
      -[ASCodableDatabaseCompetitionScore addScores:](self, "addScores:", [fromCopy scoresAtIndex:i]);
    }
  }
}

@end