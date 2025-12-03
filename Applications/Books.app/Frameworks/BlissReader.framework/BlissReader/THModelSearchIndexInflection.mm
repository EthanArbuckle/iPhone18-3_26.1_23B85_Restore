@interface THModelSearchIndexInflection
- (BOOL)isEqual:(id)equal;
- (THModelSearchIndexInflection)initWithInflection:(id)inflection;
- (id)description;
- (void)addOccurrence:(id)occurrence rank:(unint64_t)rank paragraphIndex:(unint64_t)index pageNumber:(unint64_t)number displayPageNumber:(id)pageNumber;
- (void)dealloc;
@end

@implementation THModelSearchIndexInflection

- (THModelSearchIndexInflection)initWithInflection:(id)inflection
{
  v7.receiver = self;
  v7.super_class = THModelSearchIndexInflection;
  v4 = [(THModelSearchIndexInflection *)&v7 init];
  if (v4)
  {
    v5 = [inflection copy];
    v4->mOccurrenceCount = 0;
    v4->mOccurrences = 0;
    v4->mInflection = v5;
  }

  return v4;
}

- (void)dealloc
{
  if (self->mOccurrenceCount)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = &self->mOccurrences[v3];

      ++v4;
      ++v3;
    }

    while (v4 < self->mOccurrenceCount);
  }

  free(self->mOccurrences);
  v6.receiver = self;
  v6.super_class = THModelSearchIndexInflection;
  [(THModelSearchIndexInflection *)&v6 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v5) = 1;
  }

  else if (equal && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = -[NSString isEqualToString:](self->mInflection, "isEqualToString:", [equal inflection]);
    if (v5)
    {
      mOccurrenceCount = self->mOccurrenceCount;
      LOBYTE(v5) = mOccurrenceCount == [equal occurrenceCount];
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)description
{
  occurrenceCount = [(THModelSearchIndexInflection *)self occurrenceCount];
  v4 = [NSMutableArray arrayWithCapacity:occurrenceCount];
  occurrences = [(THModelSearchIndexInflection *)self occurrences];
  if (occurrenceCount)
  {
    p_var3 = &occurrences->var3;
    v7 = occurrenceCount;
    do
    {
      v8 = *(p_var3 - 4);
      v9 = *(p_var3 - 3);
      v10 = *(p_var3 - 1);
      v12 = *p_var3;
      v11 = p_var3[1];
      p_var3 += 3;
      [(NSMutableArray *)v4 addObject:[NSString stringWithFormat:@"{rid=%@, rk=%d, idx=%d, pgi=%lu, dp=%@}", v11, v8, v9, v10, v12]];
      --v7;
    }

    while (v7);
  }

  return [NSString stringWithFormat:@"%@[%ld]%@", [(THModelSearchIndexInflection *)self inflection], occurrenceCount, [(NSMutableArray *)v4 componentsJoinedByString:@", "]];
}

- (void)addOccurrence:(id)occurrence rank:(unint64_t)rank paragraphIndex:(unint64_t)index pageNumber:(unint64_t)number displayPageNumber:(id)pageNumber
{
  numberCopy = number;
  indexCopy = index;
  rankCopy = rank;
  mOccurrenceCount = self->mOccurrenceCount;
  mOccurrences = self->mOccurrences;
  self->mOccurrenceCount = ++mOccurrenceCount;
  v15 = malloc_type_realloc(mOccurrences, 24 * mOccurrenceCount, 0x1080040D2F62047uLL);
  self->mOccurrences = v15;
  if (!v15)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    v15 = self->mOccurrences;
  }

  v16 = &v15[self->mOccurrenceCount];
  v16[-1].var0 = rankCopy;
  v16[-1].var1 = indexCopy;
  v16[-1].var4 = [occurrence copy];
  v16[-1].var2 = numberCopy;
  v16[-1].var3 = [pageNumber copy];
}

@end