@interface ASCodableDatabaseCompetitionPreferredVictoryBadgeStyles
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)stylesAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ASCodableDatabaseCompetitionPreferredVictoryBadgeStyles

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = ASCodableDatabaseCompetitionPreferredVictoryBadgeStyles;
  [(ASCodableDatabaseCompetitionPreferredVictoryBadgeStyles *)&v3 dealloc];
}

- (int)stylesAtIndex:(unint64_t)a3
{
  p_styles = &self->_styles;
  count = self->_styles.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_styles->list[a3];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ASCodableDatabaseCompetitionPreferredVictoryBadgeStyles;
  v4 = [(ASCodableDatabaseCompetitionPreferredVictoryBadgeStyles *)&v8 description];
  v5 = [(ASCodableDatabaseCompetitionPreferredVictoryBadgeStyles *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = PBRepeatedInt32NSArray();
  [v2 setObject:v3 forKey:@"styles"];

  return v2;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  v7 = a3;
  if ([(ASCodableDatabaseCompetitionPreferredVictoryBadgeStyles *)self stylesCount])
  {
    [v7 clearStyles];
    v4 = [(ASCodableDatabaseCompetitionPreferredVictoryBadgeStyles *)self stylesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [v7 addStyles:{-[ASCodableDatabaseCompetitionPreferredVictoryBadgeStyles stylesAtIndex:](self, "stylesAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  PBRepeatedInt32Copy();
  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  if ([v3 isMemberOfClass:objc_opt_class()])
  {
    IsEqual = PBRepeatedInt32IsEqual();
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
  v4 = [v7 stylesCount];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      -[ASCodableDatabaseCompetitionPreferredVictoryBadgeStyles addStyles:](self, "addStyles:", [v7 stylesAtIndex:i]);
    }
  }
}

@end