@interface THModelGlossaryEntry
- (BOOL)containsPrefix:(id)prefix;
- (BOOL)isEqual:(id)equal;
- (NSString)normalizedTerm;
- (THModelGlossaryEntry)initWithContext:(id)context parent:(id)parent applePubRelativePath:(id)path andTerm:(id)term;
- (id)description;
- (id)normalizedPrefixSearchStrings;
- (id)summaryText;
- (unint64_t)hash;
- (void)dealloc;
- (void)loadInfoOnComplete:(id)complete;
- (void)p_didLoadInfo:(id)info onComplete:(id)complete;
- (void)p_loadInfoOnComplete:(id)complete;
- (void)setApplePubRelativePath:(id)path;
- (void)setTerm:(id)term;
- (void)synchronouslyLoadInfoOnComplete:(id)complete;
@end

@implementation THModelGlossaryEntry

- (void)setTerm:(id)term
{
  [(THModelGlossaryEntry *)self willModify];
  termCopy = term;

  self->mTerm = term;
}

- (void)setApplePubRelativePath:(id)path
{
  [(THModelGlossaryEntry *)self willModify];
  pathCopy = path;

  self->mApplePubRelativePath = path;
}

- (THModelGlossaryEntry)initWithContext:(id)context parent:(id)parent applePubRelativePath:(id)path andTerm:(id)term
{
  v13.receiver = self;
  v13.super_class = THModelGlossaryEntry;
  v9 = [(THModelGlossaryEntry *)&v13 initWithContext:context];
  v10 = v9;
  if (v9)
  {
    v9->mGlossary = parent;
    v11 = [[THModelGlossaryEntryFlushable alloc] initWithParent:v9];
    v10->mFlushable = v11;
    [(THModelGlossaryEntryFlushable *)v11 ownerRetain];
    v10->mApplePubRelativePath = [path copy];
    v10->mTerm = [term copy];
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

- (void)p_didLoadInfo:(id)info onComplete:(id)complete
{
  infoCopy = info;
  v7 = *(complete + 2);

  v7(complete, self, infoCopy);
}

- (void)p_loadInfoOnComplete:(id)complete
{
  v5 = [[THGlossaryEntryInfo alloc] initWithEntry:self body:self->mFlushable];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_B22D8;
  v6[3] = &unk_45B3A8;
  v6[4] = self;
  v6[5] = v5;
  v6[6] = complete;
  [+[NSOperationQueue mainQueue](NSOperationQueue addOperation:"addOperation:", [NSBlockOperation blockOperationWithBlock:v6]];
}

- (void)loadInfoOnComplete:(id)complete
{
  v4 = _Block_copy(complete);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_B239C;
  v5[3] = &unk_45AEA8;
  v5[4] = self;
  v5[5] = v4;
  [(NSOperationQueue *)[(THModelGlossary *)self->mGlossary loadingQueue] addOperation:[NSBlockOperation blockOperationWithBlock:v5]];
}

- (void)synchronouslyLoadInfoOnComplete:(id)complete
{
  v5 = [[THGlossaryEntryInfo alloc] initWithEntry:self body:self->mFlushable];

  [(THModelGlossaryEntry *)self p_didLoadInfo:v5 onComplete:complete];
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
  normalizedPrefixSearchStrings = [(THModelGlossaryEntry *)self normalizedPrefixSearchStrings];

  return [normalizedPrefixSearchStrings objectAtIndex:0];
}

- (BOOL)containsPrefix:(id)prefix
{
  normalizedPrefixSearchStrings = [(THModelGlossaryEntry *)self normalizedPrefixSearchStrings];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [normalizedPrefixSearchStrings countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(normalizedPrefixSearchStrings);
        }

        if ([*(*(&v10 + 1) + 8 * v8) hasPrefix:prefix])
        {
          LOBYTE(v5) = 1;
          return v5;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v5 = [normalizedPrefixSearchStrings countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  bodyStorage = [(THGlossaryEntryInfo *)v2 bodyStorage];
  if ([(THWPStorage *)bodyStorage paragraphCount])
  {
    v4 = [(THWPStorage *)bodyStorage textRangeForParagraphAtIndex:0];
    v6 = [(THWPStorage *)bodyStorage substringWithRange:v4, v5];
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

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    mApplePubRelativePath = self->mApplePubRelativePath;
    if (mApplePubRelativePath)
    {
      applePubRelativePath = [v4 applePubRelativePath];
      v7 = mApplePubRelativePath;
    }

    else
    {
      mTerm = self->mTerm;
      applePubRelativePath = [v4 term];
      v7 = mTerm;
    }

    LOBYTE(v4) = [(NSString *)v7 isEqual:applePubRelativePath];
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