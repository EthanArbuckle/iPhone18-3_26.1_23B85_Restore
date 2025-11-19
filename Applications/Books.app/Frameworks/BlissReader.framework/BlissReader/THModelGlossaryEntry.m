@interface THModelGlossaryEntry
- (BOOL)containsPrefix:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)normalizedTerm;
- (THModelGlossaryEntry)initWithContext:(id)a3 parent:(id)a4 applePubRelativePath:(id)a5 andTerm:(id)a6;
- (id)description;
- (id)normalizedPrefixSearchStrings;
- (id)summaryText;
- (unint64_t)hash;
- (void)dealloc;
- (void)loadInfoOnComplete:(id)a3;
- (void)p_didLoadInfo:(id)a3 onComplete:(id)a4;
- (void)p_loadInfoOnComplete:(id)a3;
- (void)setApplePubRelativePath:(id)a3;
- (void)setTerm:(id)a3;
- (void)synchronouslyLoadInfoOnComplete:(id)a3;
@end

@implementation THModelGlossaryEntry

- (void)setTerm:(id)a3
{
  [(THModelGlossaryEntry *)self willModify];
  v5 = a3;

  self->mTerm = a3;
}

- (void)setApplePubRelativePath:(id)a3
{
  [(THModelGlossaryEntry *)self willModify];
  v5 = a3;

  self->mApplePubRelativePath = a3;
}

- (THModelGlossaryEntry)initWithContext:(id)a3 parent:(id)a4 applePubRelativePath:(id)a5 andTerm:(id)a6
{
  v13.receiver = self;
  v13.super_class = THModelGlossaryEntry;
  v9 = [(THModelGlossaryEntry *)&v13 initWithContext:a3];
  v10 = v9;
  if (v9)
  {
    v9->mGlossary = a4;
    v11 = [[THModelGlossaryEntryFlushable alloc] initWithParent:v9];
    v10->mFlushable = v11;
    [(THModelGlossaryEntryFlushable *)v11 ownerRetain];
    v10->mApplePubRelativePath = [a5 copy];
    v10->mTerm = [a6 copy];
  }

  return v10;
}

- (void)dealloc
{
  self->mGlossary = 0;

  self->mTerm = 0;
  self->mApplePubRelativePath = 0;

  self->mNormalizedPrefixSearchStrings = 0;
  [(THModelGlossaryEntryFlushable *)self->mFlushable ownerRelease];
  self->mFlushable = 0;
  v3.receiver = self;
  v3.super_class = THModelGlossaryEntry;
  [(THModelGlossaryEntry *)&v3 dealloc];
}

- (void)p_didLoadInfo:(id)a3 onComplete:(id)a4
{
  v6 = a3;
  v7 = *(a4 + 2);

  v7(a4, self, v6);
}

- (void)p_loadInfoOnComplete:(id)a3
{
  v5 = [[THGlossaryEntryInfo alloc] initWithEntry:self body:self->mFlushable];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_B22D8;
  v6[3] = &unk_45B3A8;
  v6[4] = self;
  v6[5] = v5;
  v6[6] = a3;
  [+[NSOperationQueue mainQueue](NSOperationQueue addOperation:"addOperation:", [NSBlockOperation blockOperationWithBlock:v6]];
}

- (void)loadInfoOnComplete:(id)a3
{
  v4 = _Block_copy(a3);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_B239C;
  v5[3] = &unk_45AEA8;
  v5[4] = self;
  v5[5] = v4;
  [(NSOperationQueue *)[(THModelGlossary *)self->mGlossary loadingQueue] addOperation:[NSBlockOperation blockOperationWithBlock:v5]];
}

- (void)synchronouslyLoadInfoOnComplete:(id)a3
{
  v5 = [[THGlossaryEntryInfo alloc] initWithEntry:self body:self->mFlushable];

  [(THModelGlossaryEntry *)self p_didLoadInfo:v5 onComplete:a3];
}

- (id)normalizedPrefixSearchStrings
{
  result = self->mNormalizedPrefixSearchStrings;
  if (!result)
  {
    result = [(NSString *)[(THModelGlossaryEntry *)self term] normalizedStringsForPrefixSearch];
    self->mNormalizedPrefixSearchStrings = result;
  }

  return result;
}

- (NSString)normalizedTerm
{
  v2 = [(THModelGlossaryEntry *)self normalizedPrefixSearchStrings];

  return [v2 objectAtIndex:0];
}

- (BOOL)containsPrefix:(id)a3
{
  v4 = [(THModelGlossaryEntry *)self normalizedPrefixSearchStrings];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v10 + 1) + 8 * v8) hasPrefix:a3])
        {
          LOBYTE(v5) = 1;
          return v5;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v6 = v5;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return v5;
}

- (id)summaryText
{
  v2 = [[THGlossaryEntryInfo alloc] initWithEntry:self body:self->mFlushable];
  v3 = [(THGlossaryEntryInfo *)v2 bodyStorage];
  if ([(THWPStorage *)v3 paragraphCount])
  {
    v4 = [(THWPStorage *)v3 textRangeForParagraphAtIndex:0];
    v6 = [(THWPStorage *)v3 substringWithRange:v4, v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = THModelGlossaryEntry;
  return [-[THModelGlossaryEntry description](&v3 "description")];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    mApplePubRelativePath = self->mApplePubRelativePath;
    if (mApplePubRelativePath)
    {
      v6 = [v4 applePubRelativePath];
      v7 = mApplePubRelativePath;
    }

    else
    {
      mTerm = self->mTerm;
      v6 = [v4 term];
      v7 = mTerm;
    }

    LOBYTE(v4) = [(NSString *)v7 isEqual:v6];
  }

  return v4;
}

- (unint64_t)hash
{
  if (self->mApplePubRelativePath)
  {
    mApplePubRelativePath = self->mApplePubRelativePath;
  }

  else
  {
    mApplePubRelativePath = self->mTerm;
  }

  return [(NSString *)mApplePubRelativePath hash];
}

@end