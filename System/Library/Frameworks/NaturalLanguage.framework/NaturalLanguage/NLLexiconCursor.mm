@interface NLLexiconCursor
- (BOOL)hasChildren;
- (BOOL)hasEntries;
- (NLLexiconCursor)initWithLexicon:(id)lexicon cursor:(_LXCursor *)cursor;
- (NLLexiconCursor)initWithLexicon:(id)lexicon string:(id)string;
- (NSString)traversedString;
- (double)prefixProbability;
- (double)terminationProbability;
- (id)cursorByAdvancingWithString:(id)string;
- (void)_enumerateEntriesUsingBlock:(id)block;
- (void)dealloc;
- (void)enumerateChildrenUsingBlock:(id)block;
- (void)enumerateCompletionsUsingBlock:(id)block;
- (void)enumerateEntriesUsingBlock:(id)block;
@end

@implementation NLLexiconCursor

- (NLLexiconCursor)initWithLexicon:(id)lexicon cursor:(_LXCursor *)cursor
{
  lexiconCopy = lexicon;
  selfCopy = 0;
  if (lexiconCopy && cursor)
  {
    v12.receiver = self;
    v12.super_class = NLLexiconCursor;
    v9 = [(NLLexiconCursor *)&v12 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_lexicon, lexicon);
      v10->_cursor = CFRetain(cursor);
    }

    self = v10;
    selfCopy = self;
  }

  return selfCopy;
}

- (NLLexiconCursor)initWithLexicon:(id)lexicon string:(id)string
{
  lexiconCopy = lexicon;
  stringCopy = string;
  if ([lexiconCopy lexicon])
  {
    RootCursor = LXLexiconCreateRootCursor();
    if ([stringCopy length] && RootCursor)
    {
      v9 = LXCursorCreateByAdvancing();
      CFRelease(RootCursor);
      RootCursor = v9;
    }
  }

  else
  {
    RootCursor = 0;
  }

  v10 = [(NLLexiconCursor *)self initWithLexicon:lexiconCopy cursor:RootCursor];
  if (RootCursor)
  {
    CFRelease(RootCursor);
  }

  return v10;
}

- (void)dealloc
{
  cursor = self->_cursor;
  if (cursor)
  {
    CFRelease(cursor);
  }

  v4.receiver = self;
  v4.super_class = NLLexiconCursor;
  [(NLLexiconCursor *)&v4 dealloc];
}

- (id)cursorByAdvancingWithString:(id)string
{
  stringCopy = string;
  if ([stringCopy length] && self->_cursor && (v5 = LXCursorCreateByAdvancing()) != 0)
  {
    v6 = v5;
    v7 = [[NLLexiconCursor alloc] initWithLexicon:self->_lexicon cursor:v5];
    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hasEntries
{
  cursor = self->_cursor;
  if (cursor)
  {
    LOBYTE(cursor) = LXCursorHasEntries() != 0;
  }

  return cursor;
}

- (BOOL)hasChildren
{
  cursor = self->_cursor;
  if (cursor)
  {
    LOBYTE(cursor) = LXCursorHasChildren() != 0;
  }

  return cursor;
}

- (double)prefixProbability
{
  cursor = self->_cursor;
  if (!cursor)
  {
    return -30.0;
  }

  MEMORY[0x1EEE18A98](cursor, a2);
  return result;
}

- (double)terminationProbability
{
  cursor = self->_cursor;
  if (!cursor)
  {
    return -30.0;
  }

  MEMORY[0x1EEE18AA0](cursor, a2);
  return result;
}

- (NSString)traversedString
{
  if (self->_cursor)
  {
    v3 = LXCursorCopyTraversedCharacters();
  }

  else
  {
    v3 = &stru_1F10C6540;
  }

  return v3;
}

- (void)enumerateChildrenUsingBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (self->_cursor)
  {
    v6 = blockCopy;
    LXCursorEnumerateChildren();
  }
}

void __47__NLLexiconCursor_enumerateChildrenUsingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [[NLLexiconCursor alloc] initWithLexicon:*(*(a1 + 32) + 8) cursor:a2];
  (*(*(a1 + 40) + 16))();
}

- (void)_enumerateEntriesUsingBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (self->_cursor)
  {
    v6 = blockCopy;
    LXCursorEnumerateEntries();
  }
}

void __47__NLLexiconCursor__enumerateEntriesUsingBlock___block_invoke(uint64_t a1)
{
  v2 = LXEntryCopyString();
  if (v2)
  {
    v3 = v2;
    LXEntryGetTokenID();
    LXEntryGetMetaFlags();
    LXEntryGetProbability();
    (*(*(a1 + 32) + 16))();
    CFRelease(v3);
  }
}

- (void)enumerateEntriesUsingBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__NLLexiconCursor_enumerateEntriesUsingBlock___block_invoke;
  v6[3] = &unk_1E7629120;
  v7 = blockCopy;
  v5 = blockCopy;
  [(NLLexiconCursor *)self _enumerateEntriesUsingBlock:v6];
}

void __46__NLLexiconCursor_enumerateEntriesUsingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [NLLexiconEntry entryWithString:a2 tokenID:a3 flags:a4 probability:?];
  (*(*(a1 + 32) + 16))();
}

- (void)enumerateCompletionsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (self->_cursor)
  {
    v6 = blockCopy;
    LXCursorEnumerateEntriesRecursively();
  }
}

void __50__NLLexiconCursor_enumerateCompletionsUsingBlock___block_invoke(uint64_t a1)
{
  v2 = LXEntryCopyString();
  if (v2)
  {
    v3 = v2;
    TokenID = LXEntryGetTokenID();
    MetaFlags = LXEntryGetMetaFlags();
    LXEntryGetProbability();
    v6 = [NLLexiconEntry entryWithString:v3 tokenID:TokenID flags:MetaFlags probability:?];
    (*(*(a1 + 32) + 16))();
    CFRelease(v3);
  }
}

@end