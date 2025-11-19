@interface THModelSearchIndexInflection
- (BOOL)isEqual:(id)a3;
- (THModelSearchIndexInflection)initWithInflection:(id)a3;
- (id)description;
- (void)addOccurrence:(id)a3 rank:(unint64_t)a4 paragraphIndex:(unint64_t)a5 pageNumber:(unint64_t)a6 displayPageNumber:(id)a7;
- (void)dealloc;
@end

@implementation THModelSearchIndexInflection

- (THModelSearchIndexInflection)initWithInflection:(id)a3
{
  v7.receiver = self;
  v7.super_class = THModelSearchIndexInflection;
  v4 = [(THModelSearchIndexInflection *)&v7 init];
  if (v4)
  {
    v5 = [a3 copy];
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

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v5) = 1;
  }

  else if (a3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = -[NSString isEqualToString:](self->mInflection, "isEqualToString:", [a3 inflection]);
    if (v5)
    {
      mOccurrenceCount = self->mOccurrenceCount;
      LOBYTE(v5) = mOccurrenceCount == [a3 occurrenceCount];
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
  v3 = [(THModelSearchIndexInflection *)self occurrenceCount];
  v4 = [NSMutableArray arrayWithCapacity:v3];
  v5 = [(THModelSearchIndexInflection *)self occurrences];
  if (v3)
  {
    p_var3 = &v5->var3;
    v7 = v3;
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

  return [NSString stringWithFormat:@"%@[%ld]%@", [(THModelSearchIndexInflection *)self inflection], v3, [(NSMutableArray *)v4 componentsJoinedByString:@", "]];
}

- (void)addOccurrence:(id)a3 rank:(unint64_t)a4 paragraphIndex:(unint64_t)a5 pageNumber:(unint64_t)a6 displayPageNumber:(id)a7
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
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
  v16[-1].var0 = v10;
  v16[-1].var1 = v9;
  v16[-1].var4 = [a3 copy];
  v16[-1].var2 = v8;
  v16[-1].var3 = [a7 copy];
}

@end