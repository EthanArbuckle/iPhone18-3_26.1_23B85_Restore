@interface ASCodableDatabaseCompetitionPreferredVictoryBadgeStyles
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)stylesAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ASCodableDatabaseCompetitionPreferredVictoryBadgeStyles

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = ASCodableDatabaseCompetitionPreferredVictoryBadgeStyles;
  [(ASCodableDatabaseCompetitionPreferredVictoryBadgeStyles *)&v3 dealloc];
}

- (int)stylesAtIndex:(unint64_t)index
{
  p_styles = &self->_styles;
  count = self->_styles.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_styles->list[index];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ASCodableDatabaseCompetitionPreferredVictoryBadgeStyles;
  v4 = [(ASCodableDatabaseCompetitionPreferredVictoryBadgeStyles *)&v8 description];
  dictionaryRepresentation = [(ASCodableDatabaseCompetitionPreferredVictoryBadgeStyles *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v3 = PBRepeatedInt32NSArray();
  [dictionary setObject:v3 forKey:@"styles"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  p_styles = &self->_styles;
  if (self->_styles.count)
  {
    v4 = 0;
    do
    {
      v5 = p_styles->list[v4];
      PBDataWriterWriteInt32Field();
      ++v4;
    }

    while (v4 < p_styles->count);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(ASCodableDatabaseCompetitionPreferredVictoryBadgeStyles *)self stylesCount])
  {
    [toCopy clearStyles];
    stylesCount = [(ASCodableDatabaseCompetitionPreferredVictoryBadgeStyles *)self stylesCount];
    if (stylesCount)
    {
      v5 = stylesCount;
      for (i = 0; i != v5; ++i)
      {
        [toCopy addStyles:{-[ASCodableDatabaseCompetitionPreferredVictoryBadgeStyles stylesAtIndex:](self, "stylesAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  PBRepeatedInt32Copy();
  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    IsEqual = PBRepeatedInt32IsEqual();
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
  stylesCount = [fromCopy stylesCount];
  if (stylesCount)
  {
    v5 = stylesCount;
    for (i = 0; i != v5; ++i)
    {
      -[ASCodableDatabaseCompetitionPreferredVictoryBadgeStyles addStyles:](self, "addStyles:", [fromCopy stylesAtIndex:i]);
    }
  }
}

@end