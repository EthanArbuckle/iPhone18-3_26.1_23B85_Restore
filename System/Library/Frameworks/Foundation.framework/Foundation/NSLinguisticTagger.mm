@interface NSLinguisticTagger
+ (BOOL)supportsLanguage:(id)language;
+ (NSArray)availableTagSchemesForUnit:(NSLinguisticTaggerUnit)unit language:(NSString *)language;
+ (NSArray)tagsForString:(NSString *)string range:(NSRange)range unit:(NSLinguisticTaggerUnit)unit scheme:(NSLinguisticTagScheme)scheme options:(NSLinguisticTaggerOptions)options orthography:(NSOrthography *)orthography tokenRanges:(NSArray *)tokenRanges;
+ (NSLinguisticTag)tagForString:(NSString *)string atIndex:(NSUInteger)charIndex unit:(NSLinguisticTaggerUnit)unit scheme:(NSLinguisticTagScheme)scheme orthography:(NSOrthography *)orthography tokenRange:(NSRangePointer)tokenRange;
+ (NSString)dominantLanguageForString:(NSString *)string;
+ (void)enumerateTagsForString:(NSString *)string range:(NSRange)range unit:(NSLinguisticTaggerUnit)unit scheme:(NSLinguisticTagScheme)scheme options:(NSLinguisticTaggerOptions)options orthography:(NSOrthography *)orthography usingBlock:(void *)block;
- (BOOL)_acceptSentenceTerminatorRange:(_NSRange)range paragraphRange:(_NSRange)paragraphRange tokens:(_NSLTToken *)tokens count:(unint64_t)count tokenIndex:(unint64_t)index;
- (NSArray)possibleTagsAtIndex:(NSUInteger)charIndex scheme:(NSString *)tagScheme tokenRange:(NSRangePointer)tokenRange sentenceRange:(NSRangePointer)sentenceRange scores:(NSArray *)scores;
- (NSArray)tagsInRange:(NSRange)range scheme:(NSString *)tagScheme options:(NSLinguisticTaggerOptions)opts tokenRanges:(NSArray *)tokenRanges;
- (NSArray)tagsInRange:(NSRange)range unit:(NSLinguisticTaggerUnit)unit scheme:(NSLinguisticTagScheme)scheme options:(NSLinguisticTaggerOptions)options tokenRanges:(NSArray *)tokenRanges;
- (NSLinguisticTag)tagAtIndex:(NSUInteger)charIndex unit:(NSLinguisticTaggerUnit)unit scheme:(NSLinguisticTagScheme)scheme tokenRange:(NSRangePointer)tokenRange;
- (NSLinguisticTagger)initWithTagSchemes:(NSArray *)tagSchemes options:(NSUInteger)opts;
- (NSOrthography)orthographyAtIndex:(NSUInteger)charIndex effectiveRange:(NSRangePointer)effectiveRange;
- (NSRange)tokenRangeAtIndex:(NSUInteger)charIndex unit:(NSLinguisticTaggerUnit)unit;
- (NSString)dominantLanguage;
- (_NSRange)_sentenceRangeForRange:(_NSRange)range;
- (id)_tagAtIndex:(unint64_t)index scheme:(id)scheme tokenRange:(_NSRange *)range sentenceRange:(_NSRange *)sentenceRange;
- (id)_tagSchemeForScheme:(id)scheme;
- (id)_tokenDataForParagraphAtIndex:(unint64_t)index paragraphRange:(_NSRange *)range requireLemmas:(BOOL)lemmas requirePartsOfSpeech:(BOOL)speech requireNamedEntities:(BOOL)entities;
- (id)_tokenDataForParagraphAtIndex:(unint64_t)index paragraphRange:(_NSRange *)range tagScheme:(id)scheme;
- (id)_tokenDataForParagraphRange:(_NSRange)range requireLemmas:(BOOL)lemmas requirePartsOfSpeech:(BOOL)speech requireNamedEntities:(BOOL)entities;
- (id)description;
- (void)_acceptSentencesForParagraphRange:(_NSRange)range;
- (void)_analyzePunctuationTokensInRange:(_NSRange)range paragraphRange:(_NSRange)paragraphRange;
- (void)_analyzeTokensInInterwordRange:(_NSRange)range paragraphRange:(_NSRange)paragraphRange;
- (void)_analyzeTokensInWordRange:(_NSRange)range paragraphRange:(_NSRange)paragraphRange;
- (void)_calculateSentenceRangesForParagraphRange:(_NSRange)range;
- (void)_detectOrthographyIfNeededAtIndex:(unint64_t)index;
- (void)_enumerateTagsInRange:(_NSRange)range scheme:(id)scheme options:(unint64_t)options usingBlock:(id)block;
- (void)_nativeSetOrthography:(id)orthography range:(_NSRange)range;
- (void)_setOrthography:(id)orthography range:(_NSRange)range;
- (void)_tokenizeParagraphAtIndex:(unint64_t)index requireLemmas:(BOOL)lemmas requirePartsOfSpeech:(BOOL)speech requireNamedEntities:(BOOL)entities;
- (void)dealloc;
- (void)enumerateTagsInRange:(NSRange)range unit:(NSLinguisticTaggerUnit)unit scheme:(NSLinguisticTagScheme)scheme options:(NSLinguisticTaggerOptions)options usingBlock:(void *)block;
- (void)setOrthography:(NSOrthography *)orthography range:(NSRange)range;
- (void)setString:(NSString *)string;
- (void)stringEditedInRange:(NSRange)newRange changeInLength:(NSInteger)delta;
@end

@implementation NSLinguisticTagger

+ (NSArray)availableTagSchemesForUnit:(NSLinguisticTaggerUnit)unit language:(NSString *)language
{
  v5 = CFLocaleCreate(0, language);
  if (v5)
  {
    v6 = v5;
    if (qword_1ED43FF98 != -1)
    {
      dispatch_once(&qword_1ED43FF98, &__block_literal_global_580);
    }

    if (_MergedGlobals_142 == 1)
    {
      v7 = off_1ED43FE60(unit, v6);
    }

    else
    {
      v7 = 0;
    }

    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSLinguisticTagger)initWithTagSchemes:(NSArray *)tagSchemes options:(NSUInteger)opts
{
  v17 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = NSLinguisticTagger;
  v6 = [(NSLinguisticTagger *)&v16 init];
  v6->_schemes = [(NSArray *)tagSchemes copy];
  v6->_options = opts;
  if (qword_1ED43FE68 != -1)
  {
    dispatch_once(&qword_1ED43FE68, &__block_literal_global_68);
  }

  v7 = [MEMORY[0x1E695DF70] arrayWithArray:tagSchemes];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (([v7 containsObject:@"Language"] & 1) == 0)
  {
    [v7 addObject:@"Language"];
  }

  if (([v7 containsObject:@"Script"] & 1) == 0)
  {
    [v7 addObject:@"Script"];
  }

  if ((opts & 0x20000000) != 0)
  {
    [dictionary setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", 1), @"LSTMLanguageIdentifier"}];
  }

  if ((opts & 0x10000000) != 0)
  {
    [dictionary setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", 1), @"SmartTokenBreak"}];
  }

  if (qword_1ED43FF98 != -1)
  {
    dispatch_once(&qword_1ED43FF98, &__block_literal_global_580);
  }

  if (_MergedGlobals_142 == 1)
  {
    v6->_reserved = off_1ED43FE78(v7, dictionary);
  }

  [qword_1ED43FE70 lock];
  v9 = qword_1ED43FE80;
  if (!qword_1ED43FE80)
  {
    v9 = +[NSCharacterSet whitespaceCharacterSet];
    qword_1ED43FE80 = v9;
  }

  if (!qword_1ED43FE88)
  {
    qword_1ED43FE88 = [(NSCharacterSet *)v9 invertedSet];
  }

  v10 = qword_1ED43FE90;
  if (!qword_1ED43FE90)
  {
    v10 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    qword_1ED43FE90 = v10;
  }

  if (!qword_1ED43FE98)
  {
    qword_1ED43FE98 = [(NSCharacterSet *)v10 invertedSet];
  }

  if (!qword_1ED43FEA0)
  {
    qword_1ED43FEA0 = [NSCharacterSet characterSetWithCharactersInString:@"\r\f\n\u2029"];
  }

  v11 = qword_1ED43FEA8;
  if (!qword_1ED43FEA8)
  {
    v11 = +[NSCharacterSet punctuationCharacterSet];
    qword_1ED43FEA8 = v11;
  }

  if (!qword_1ED43FEB0)
  {
    qword_1ED43FEB0 = [(NSCharacterSet *)v11 invertedSet];
  }

  if (!qword_1ED43FEB8)
  {
    v12 = +[NSMutableCharacterSet whitespaceAndNewlineCharacterSet];
    [(NSMutableCharacterSet *)v12 formUnionWithCharacterSet:qword_1ED43FEA8];
    [(NSMutableCharacterSet *)v12 invert];
    qword_1ED43FEB8 = [(NSMutableCharacterSet *)v12 copy];
  }

  v13 = qword_1ED43FEC0;
  if (!qword_1ED43FEC0)
  {
    v13 = [NSCharacterSet characterSetWithCharactersInString:@".?!。！．？｡"];
    qword_1ED43FEC0 = v13;
  }

  if (!qword_1ED43FEC8)
  {
    qword_1ED43FEC8 = [(NSCharacterSet *)v13 invertedSet];
  }

  if (!qword_1ED43FED0)
  {
    qword_1ED43FED0 = [NSCharacterSet characterSetWithCharactersInString:@"'’"];
  }

  if (!qword_1ED43FED8)
  {
    qword_1ED43FED8 = [NSCharacterSet characterSetWithCharactersInString:@"-'()«»‐‑‒–—―‘’‚‛“”„‟‹›「」『』"];
  }

  if (!qword_1ED43FEE0)
  {
    qword_1ED43FEE0 = [NSCharacterSet characterSetWithCharactersInString:@"'«»‘’‚‛“”„‟‹›「」『』"];
  }

  if (!qword_1ED43FEE8)
  {
    qword_1ED43FEE8 = +[NSCharacterSet decimalDigitCharacterSet];
  }

  if (!qword_1ED43FEF0)
  {
    v14 = +[NSMutableCharacterSet punctuationCharacterSet];
    [(NSMutableCharacterSet *)v14 formUnionWithCharacterSet:qword_1ED43FEE8];
    [(NSMutableCharacterSet *)v14 invert];
    qword_1ED43FEF0 = [(NSMutableCharacterSet *)v14 copy];
  }

  if (!qword_1ED43FEF8)
  {
    qword_1ED43FEF8 = +[NSCharacterSet alphanumericCharacterSet];
  }

  if (!qword_1ED43FF00)
  {
    qword_1ED43FF00 = objc_retain([NSCharacterSet characterSetWithCharactersInString:@"([{</@-=–—")];
  }

  if (!qword_1ED43FF08)
  {
    qword_1ED43FF08 = [NSCharacterSet characterSetWithCharactersInString:@"nstNST"];
  }

  [qword_1ED43FE70 unlock];
  return v6;
}

NSLock *__49__NSLinguisticTagger_initWithTagSchemes_options___block_invoke()
{
  result = objc_alloc_init(NSLock);
  qword_1ED43FE70 = result;
  return result;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];

  reserved = self->_reserved;
  if (reserved)
  {
    CFRelease(reserved);
  }

  v4.receiver = self;
  v4.super_class = NSLinguisticTagger;
  [(NSLinguisticTagger *)&v4 dealloc];
}

- (id)description
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = NSLinguisticTagger;
  v3 = [(NSString *)NSMutableString stringWithFormat:@"%@\n", [(NSLinguisticTagger *)&v5 description]];
  [(NSMutableString *)v3 appendFormat:@"    tag schemes %@\n", self->_schemes];
  [(NSMutableString *)v3 appendFormat:@"    string %p has %lu characters\n", self->_string, [(NSString *)self->_string length]];
  return v3;
}

- (id)_tagSchemeForScheme:(id)scheme
{
  if (![(NSArray *)self->_schemes containsObject:?])
  {
    return 0;
  }

  v4 = @"TokenType";
  if (([@"TokenType" isEqualToString:scheme] & 1) == 0)
  {
    v4 = @"LexicalClass";
    if (([@"LexicalClass" isEqualToString:scheme] & 1) == 0)
    {
      v4 = @"NameType";
      if (([@"NameType" isEqualToString:scheme] & 1) == 0)
      {
        v4 = @"NameTypeOrLexicalClass";
        if (([@"NameTypeOrLexicalClass" isEqualToString:scheme] & 1) == 0)
        {
          v4 = @"Lemma";
          if (([@"Lemma" isEqualToString:scheme] & 1) == 0)
          {
            v4 = @"Language";
            if (([@"Language" isEqualToString:scheme] & 1) == 0)
            {
              v4 = @"Script";
              if (([@"Script" isEqualToString:scheme] & 1) == 0)
              {
                v4 = @"PossibleClasses";
                if (([@"PossibleClasses" isEqualToString:scheme] & 1) == 0)
                {
                  v4 = @"InternalClass";
                  if (![@"InternalClass" isEqualToString:scheme])
                  {
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

+ (BOOL)supportsLanguage:(id)language
{
  if (!language)
  {
    return 0;
  }

  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"en", @"fr", @"de", @"es", @"it", @"pt", @"ru", @"tr", @"ja", 0}];

  return [v4 containsObject:language];
}

- (void)setString:(NSString *)string
{
  v5 = self->_string;
  if (v5 != string)
  {

    self->_string = string;
  }

  tokenArray = self->_tokenArray;
  if (tokenArray)
  {

    self->_tokenArray = 0;
  }

  orthographyArray = self->_orthographyArray;
  if (orthographyArray)
  {

    self->_orthographyArray = 0;
  }

  if (self->_reserved)
  {
    v8 = off_1ED43FF10;

    v8();
  }
}

- (void)stringEditedInRange:(NSRange)newRange changeInLength:(NSInteger)delta
{
  length = newRange.length;
  location = newRange.location;
  v24 = *MEMORY[0x1E69E9840];
  v8 = newRange.length - delta;
  v22 = 0;
  v23 = 0;
  tokenArray = self->_tokenArray;
  if (tokenArray)
  {
    v10 = [tokenArray count];
    if (location < v10 && (v11 = [self->_tokenArray objectAtIndex:location effectiveRange:&v22]) != 0)
    {
      v12 = v8;
      v13 = location;
      if (([v11 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}] & 1) == 0)
      {
        v14 = location - v22;
        if (location < v22)
        {
          v14 = 0;
        }

        v15 = v14 + v8;
        if (v22 >= location)
        {
          v13 = location;
        }

        else
        {
          v13 = v22;
        }

        if (v23 + v22 <= v15 + v13)
        {
          v12 = v15;
        }

        else
        {
          v12 = v23 + v22 - v13;
        }
      }
    }

    else
    {
      v12 = v8;
      v13 = location;
    }

    if (v8)
    {
      if (v8 + location <= v10)
      {
        v16 = [self->_tokenArray objectAtIndex:v8 + location - 1 effectiveRange:&v22];
        if (v16)
        {
          if (([v16 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}] & 1) == 0 && v23 + v22 > v13 + v12)
          {
            v12 = v23 + v22 - v13;
          }
        }
      }
    }

    v17 = self->_tokenArray;
    null = [MEMORY[0x1E695DFB0] null];
    if (v12)
    {
      [v17 replaceObjectsInRange:v13 withObject:v12 length:{null, v12 + delta}];
    }

    else
    {
      [v17 insertObject:null range:{v13, delta}];
    }
  }

  orthographyArray = self->_orthographyArray;
  if (orthographyArray)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
    if (v8)
    {
      [orthographyArray replaceObjectsInRange:location withObject:v8 length:{null2, length}];
    }

    else
    {
      [orthographyArray insertObject:null2 range:{location, length}];
    }
  }

  reserved = self->_reserved;
  if (reserved)
  {
    off_1ED43FF18(reserved, location, length, delta);
  }
}

- (void)_setOrthography:(id)orthography range:(_NSRange)range
{
  if (self->_reserved)
  {
    length = range.length;
    location = range.location;
    dominantLanguage = [orthography dominantLanguage];
    v8 = dominantLanguage ? CFLocaleCreate(0, dominantLanguage) : 0;
    off_1ED43FF20(self->_reserved, v8, location, length);
    if (v8)
    {

      CFRelease(v8);
    }
  }
}

- (void)_nativeSetOrthography:(id)orthography range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v9 = [(NSString *)self->_string length];
  if (v9 < length || location > v9 - length)
  {
    v24 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Range or index out of bounds", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v24);
  }

  if (length)
  {
    orthographyArray = self->_orthographyArray;
    if (orthography | orthographyArray)
    {
      if (!orthographyArray)
      {
        v12 = [(NSRLEArray *)[NSMutableRLEArray allocWithZone:?]];
        self->_orthographyArray = v12;
        -[NSMutableRLEArray insertObject:range:](v12, "insertObject:range:", [MEMORY[0x1E695DFB0] null], 0, -[NSString length](self->_string, "length"));
        orthographyArray = self->_orthographyArray;
      }

      v13 = [orthographyArray count];
      v14 = location + length;
      if (location + length >= v13)
      {
        v14 = v13;
      }

      if (location)
      {
        v15 = 0;
      }

      else
      {
        v15 = v14;
      }

      v16 = v14 - location;
      if (location < v13)
      {
        v17 = location;
      }

      else
      {
        v17 = 0;
      }

      if (location < v13)
      {
        v18 = v16;
      }

      else
      {
        v18 = v15;
      }

      v19 = self->_orthographyArray;
      if (orthography)
      {
        v20 = v19;
        v21 = v17;
        v22 = v18;
        orthographyCopy = orthography;
      }

      else
      {
        orthographyCopy = [MEMORY[0x1E695DFB0] null];
        v20 = v19;
        v21 = v17;
        v22 = v18;
      }

      [v20 replaceObjectsInRange:v21 withObject:v22 length:{orthographyCopy, v18}];
    }
  }
}

- (void)setOrthography:(NSOrthography *)orthography range:(NSRange)range
{
  length = range.length;
  location = range.location;
  [NSLinguisticTagger _nativeSetOrthography:"_nativeSetOrthography:range:" range:?];
  if (self->_reserved)
  {

    [(NSLinguisticTagger *)self _setOrthography:orthography range:location, length];
  }
}

- (void)_detectOrthographyIfNeededAtIndex:(unint64_t)index
{
  orthographyArray = self->_orthographyArray;
  if (!orthographyArray || [orthographyArray count] <= index || (v6 = objc_msgSend(self->_orthographyArray, "objectAtIndex:effectiveRange:", index, 0), objc_msgSend(v6, "isEqual:", objc_msgSend(MEMORY[0x1E695DFB0], "null"))))
  {
    reserved = self->_reserved;
    if (reserved)
    {
      v8 = off_1ED43FF28(reserved, 2, index, @"Script");
      v9 = off_1ED43FF28(self->_reserved, 2, index, @"Language");
      v10 = v9;
      if (v8)
      {
        v11 = v9 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        if (!v8)
        {
          if (!v9)
          {
            return;
          }

LABEL_12:

          CFRelease(v10);
          return;
        }
      }

      else
      {
        v12 = [(NSString *)self->_string paragraphRangeForRange:index, 0];
        v14 = v13;
        v15 = off_1ED43FF30(self->_reserved, 2, index);
        v17 = v15;
        if (!v15 || (v18 = [v15 objectForKey:v8], v16 = v17, !v18))
        {
          v16 = [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObject:", v10, v16), v8}];
        }

        [(NSLinguisticTagger *)self _nativeSetOrthography:[NSOrthography range:"_orthographyWithDominantScript:languageMap:" _orthographyWithDominantScript:v8 languageMap:v16], v12, v14];
        if (v17)
        {
          CFRelease(v17);
        }
      }

      CFRelease(v8);
      if (!v10)
      {
        return;
      }

      goto LABEL_12;
    }
  }
}

- (NSOrthography)orthographyAtIndex:(NSUInteger)charIndex effectiveRange:(NSRangePointer)effectiveRange
{
  if ([(NSString *)self->_string length]<= charIndex)
  {
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Range or index out of bounds", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v15);
  }

  if (self->_reserved)
  {
    [(NSLinguisticTagger *)self _detectOrthographyIfNeededAtIndex:charIndex];
  }

  orthographyArray = self->_orthographyArray;
  if (orthographyArray)
  {
    v9 = [orthographyArray count];
    if (v9 > charIndex)
    {
      v10 = [self->_orthographyArray objectAtIndex:charIndex effectiveRange:effectiveRange];
      goto LABEL_14;
    }

    if (effectiveRange)
    {
      v12 = v9;
      v13 = [(NSString *)self->_string length];
      v10 = 0;
      if (v13 <= charIndex)
      {
        effectiveRange->location = charIndex;
        effectiveRange->length = 1;
      }

      else
      {
        effectiveRange->location = v12;
        effectiveRange->length = v13 - v12;
      }

      goto LABEL_14;
    }
  }

  else if (effectiveRange)
  {
    v11 = [(NSString *)self->_string length];
    v10 = 0;
    effectiveRange->location = 0;
    effectiveRange->length = v11;
    goto LABEL_14;
  }

  v10 = 0;
LABEL_14:
  if (-[NSOrthography isEqual:](v10, "isEqual:", [MEMORY[0x1E695DFB0] null]))
  {
    return 0;
  }

  else
  {
    return v10;
  }
}

- (_NSRange)_sentenceRangeForRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v20 = *MEMORY[0x1E69E9840];
  v7 = [(NSString *)[(NSLinguisticTagger *)self string] length];
  v8 = location + length;
  if (location + length > v7)
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Range or index out of bounds", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v13);
  }

  if (v7)
  {
    reserved = self->_reserved;
    if (reserved)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      off_1ED43FF38(&v17, reserved, 1, location);
      location = v17;
      v10 = v18;
      if (length)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        off_1ED43FF38(&v14, self->_reserved, 1, v8 - 1);
        if (v15 + v14 <= v10 + location)
        {
          length = v10;
        }

        else
        {
          length = v15 + v14 - location;
        }
      }

      else
      {
        length = v18;
      }
    }
  }

  else
  {
    location = 0;
    length = 0;
  }

  v11 = location;
  v12 = length;
  result.length = v12;
  result.location = v11;
  return result;
}

- (id)_tagAtIndex:(unint64_t)index scheme:(id)scheme tokenRange:(_NSRange *)range sentenceRange:(_NSRange *)sentenceRange
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(NSString *)self->_string length]<= index)
  {
    v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Range or index out of bounds", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v18);
  }

  v12 = [(NSLinguisticTagger *)self _tagSchemeForScheme:scheme];
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  reserved = self->_reserved;
  if (!reserved)
  {
    return 0;
  }

  v15 = off_1ED43FF28(reserved, 0, index, v13);
  v16 = tagForNLTag(v15);
  if (v15)
  {
    CFRelease(v15);
  }

  if (range)
  {
    v19 = 0;
    v20 = 0;
    off_1ED43FF38(&v19, self->_reserved, 0, index);
    *range = v19;
  }

  if (sentenceRange)
  {
    v19 = 0;
    v20 = 0;
    off_1ED43FF38(&v19, self->_reserved, 1, index);
    *sentenceRange = v19;
  }

  return v16;
}

- (NSArray)possibleTagsAtIndex:(NSUInteger)charIndex scheme:(NSString *)tagScheme tokenRange:(NSRangePointer)tokenRange sentenceRange:(NSRangePointer)sentenceRange scores:(NSArray *)scores
{
  v135 = *MEMORY[0x1E69E9840];
  LODWORD(v7) = 1.0;
  v15 = [NSNumber numberWithFloat:v7];
  if ([(NSString *)self->_string length]<= charIndex)
  {
    v112 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Range or index out of bounds", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v112);
  }

  v16 = [(NSLinguisticTagger *)self _tagSchemeForScheme:tagScheme];
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  v119 = v15;
  v120 = tokenRange;
  v124 = 0;
  v123 = 0;
  v122 = 0;
  v121 = 0;
  v18 = [(NSLinguisticTagger *)self _tokenDataForParagraphAtIndex:charIndex paragraphRange:&v123 tagScheme:v16];
  bytes = [v18 bytes];
  v20 = [v18 length] >> 4;
  v21 = v123;
  v22 = v124;
  v23 = sentenceRangeAtIndexInTokens(charIndex, v123, v124, bytes, v20, &v121);
  v25 = v21 + *(bytes + 16 * v121);
  if (v25 > charIndex)
  {
    v118 = scores;
    v26 = v25 - v23;
    if (v17 == @"NameType" || v17 == @"LexicalClass" || v17 == @"NameTypeOrLexicalClass" || v17 == @"PossibleClasses" || v17 == @"InternalClass")
    {
      v31 = @"Whitespace";
    }

    else
    {
      v31 = 0;
    }

    if (v17 == @"TokenType")
    {
      v32 = @"Whitespace";
    }

    else
    {
      v32 = v31;
    }

    v33 = 0;
    v34 = v23;
    goto LABEL_23;
  }

  v38 = v122;
  if (v121 >= v122 + v121)
  {
    v34 = 0;
    v26 = 0;
    v33 = 0;
LABEL_48:
    p_location = &v120->location;
    goto LABEL_49;
  }

  v118 = scores;
  v117 = sentenceRange;
  v39 = (bytes + 16 * v121);
  v40 = v121 + 1;
  while (1)
  {
    v41 = *v39;
    v34 = v21 + v41;
    v26 = *(v39 + 2);
    v42 = v21 + v41 + v26;
    if (v21 + v41 <= charIndex && v42 > charIndex)
    {
      break;
    }

    v44 = v22;
    if (v40 < v20)
    {
      v44 = v39[8];
    }

    v45 = v26 + v41;
    v46 = v44 >= v45;
    v47 = v44 - v45;
    if (v47 != 0 && v46)
    {
      if (v42 <= charIndex && v47 + v42 > charIndex)
      {
        if (v17 == @"NameType" || v17 == @"LexicalClass" || v17 == @"NameTypeOrLexicalClass" || v17 == @"PossibleClasses" || v17 == @"InternalClass")
        {
          v60 = @"Whitespace";
        }

        else
        {
          v60 = 0;
        }

        if (v17 == @"TokenType")
        {
          v32 = @"Whitespace";
        }

        else
        {
          v32 = v60;
        }

        v33 = 0;
        v26 = v47;
        v34 = v42;
        sentenceRange = v117;
LABEL_23:
        p_location = &v120->location;
LABEL_24:
        if (v32 && !v33)
        {
          v36 = v23;
          v37 = v24;
          v33 = [MEMORY[0x1E695DEC8] arrayWithObject:v32];
          if (v118)
          {
            *v118 = [MEMORY[0x1E695DEC8] arrayWithObject:v119];
          }

          v24 = v37;
          v23 = v36;
        }

        goto LABEL_49;
      }

      v26 = v47;
      v34 = v42;
    }

    v39 += 8;
    ++v40;
    if (!--v38)
    {
      v33 = 0;
      sentenceRange = v117;
      goto LABEL_48;
    }
  }

  v50 = *(v39 + 3);
  if ((v50 - 14) <= 0x4A)
  {
    string = self->_string;
    orthographyArray = self->_orthographyArray;
    v116 = v24;
    v115 = v23;
    if (v17 == @"TokenType")
    {
      v32 = @"Word";
      goto LABEL_157;
    }

    if (v17 != @"NameTypeOrLexicalClass" && v17 != @"LexicalClass" && v17 != @"NameType")
    {
      if (v17 == @"InternalClass")
      {
        v69 = internalTagForCategory_internalTagArray;
        if (!internalTagForCategory_internalTagArray)
        {
          v69 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"NONE", @"OTHER", @".", @"?", @"!", @"“", @"”", @"(", @")", @"-", @", ", @"--", @":", @"SYM", @"ABB", @"ACK", @"CC", @"CD", @"CS", @"DT", @"DTO", @"DTP", @"DTW", @"EX", @"FW", @"IN", @"JJ", @"JJR", @"JJS", @"LS", @"NN", @"NNS", @"NNP", @"NNPS", @"PRE", @"PRP", @"PRPD", @"PRPR", @"PRPS", @"PRPT", @"RB", @"RBC", @"RBN", @"RBP", @"RBR", @"RBS", @"RBW", @"RP", @"RPP", @"TO", @"UH", @"URL", @"VB", @"VBC", @"VBD", @"VBF", @"VBG", @"VBI", @"VBM", @"VBN", @"VBP"}];
          internalTagForCategory_internalTagArray = v69;
        }

        if ([v69 count] <= v50)
        {
          v32 = @"NONE";
        }

        else
        {
          v32 = [internalTagForCategory_internalTagArray objectAtIndex:v50];
        }
      }

      else
      {
        v32 = 0;
      }

      goto LABEL_157;
    }

    if ((v50 & 0x7B) == 0x43)
    {
      v66 = v17 == @"NameTypeOrLexicalClass" || v17 == @"NameType";
      v67 = @"PersonalName";
LABEL_117:
      if (v66)
      {
        v32 = v67;
      }

      else
      {
        v32 = @"Noun";
      }

      goto LABEL_157;
    }

    v68 = v50 - 30;
    if ((v50 - 30) <= 0x2D)
    {
      if (((1 << v68) & 0x200000000003) != 0)
      {
        goto LABEL_154;
      }

      if (((1 << v68) & 0x44000000000) != 0)
      {
        v66 = v17 == @"NameTypeOrLexicalClass" || v17 == @"NameType";
        v67 = @"PlaceName";
        goto LABEL_117;
      }

      if (((1 << v68) & 0x88000000000) != 0)
      {
        v66 = v17 == @"NameTypeOrLexicalClass" || v17 == @"NameType";
        v67 = @"OrganizationName";
        goto LABEL_117;
      }
    }

    if ((v50 & 0x7E) != 0x20)
    {
      v32 = @"OtherWord";
      switch(*(v39 + 3))
      {
        case 0x10:
        case 0x12:
        case 0x54:
          v110 = @"Conjunction";
          goto LABEL_257;
        case 0x11:
        case 0x1D:
        case 0x53:
          v110 = @"Number";
          goto LABEL_257;
        case 0x13:
        case 0x14:
        case 0x15:
        case 0x16:
        case 0x50:
          v110 = @"Determiner";
          goto LABEL_257;
        case 0x17:
        case 0x23:
        case 0x24:
        case 0x25:
        case 0x26:
        case 0x27:
        case 0x41:
        case 0x42:
        case 0x4F:
          v110 = @"Pronoun";
          goto LABEL_257;
        case 0x19:
        case 0x52:
          v110 = @"Preposition";
          goto LABEL_257;
        case 0x1A:
        case 0x1B:
        case 0x1C:
        case 0x4D:
          v110 = @"Adjective";
          goto LABEL_257;
        case 0x22:
        case 0x2B:
        case 0x2F:
        case 0x30:
        case 0x31:
        case 0x51:
          v110 = @"Particle";
          goto LABEL_257;
        case 0x28:
        case 0x29:
        case 0x2A:
        case 0x2D:
        case 0x2E:
        case 0x4E:
          v110 = @"Adverb";
          goto LABEL_257;
        case 0x32:
        case 0x55:
          v110 = @"Interjection";
          goto LABEL_257;
        case 0x34:
        case 0x35:
        case 0x36:
        case 0x37:
        case 0x38:
        case 0x39:
        case 0x3A:
        case 0x3B:
        case 0x3C:
        case 0x3D:
        case 0x3E:
        case 0x3F:
        case 0x40:
        case 0x4C:
          v110 = @"Verb";
          goto LABEL_257;
        case 0x56:
          v110 = @"Classifier";
          goto LABEL_257;
        case 0x57:
          v110 = @"Idiom";
LABEL_257:
          if (v17 != @"NameType")
          {
            v32 = v110;
          }

          break;
        default:
          break;
      }

LABEL_157:
      if (v17 == @"PossibleClasses" || v17 == @"Script" || v17 == @"Lemma" || v17 == @"Language" || v17 == @"NameTypeOrLexicalClass" || v17 == @"LexicalClass" || v17 == @"NameType")
      {
        v70 = orthographyArray;
        v71 = [orthographyArray count];
        v72 = malloc_type_malloc(2 * *(v39 + 2), 0x1000040BDFB0063uLL);
        v113 = string;
        if (v72)
        {
          v73 = v72;
          [(NSString *)string getCharacters:v72 range:v21 + *v39, *(v39 + 2)];
          v74 = NSOrthographyScriptIndexForCharacters(v73, *(v39 + 2), 0);
          free(v73);
        }

        else
        {
          v74 = 0;
        }

        if (v21 + *v39 >= v71)
        {
          v76 = 0;
        }

        else
        {
          v75 = [v70 objectAtIndex:? effectiveRange:?];
          if (objc_opt_isKindOfClass())
          {
            v76 = v75;
          }

          else
          {
            v76 = 0;
          }
        }

        p_location = &v120->location;
        if (v74 == 2)
        {
          allScripts = [v76 allScripts];
          v78 = @"Jpan";
          if (([allScripts containsObject:@"Jpan"] & 1) == 0)
          {
            v78 = @"Kore";
            if (([allScripts containsObject:@"Kore"] & 1) == 0)
            {
              v78 = @"Hans";
              if (([allScripts containsObject:@"Hans"] & 1) == 0)
              {
                v78 = @"Hant";
                if (![allScripts containsObject:@"Hant"])
                {
                  v78 = @"Hani";
                }
              }
            }
          }
        }

        else
        {
          if (v74 < 2)
          {
            goto LABEL_215;
          }

          v79 = v74 - 32 >= 0xFFFFFFFFFFFFFFE1 ? (v74 << 27) | 0x84202 : 0;
          v78 = NSOrthographyDominantScriptForFlags(v79);
          if (!v78)
          {
            goto LABEL_215;
          }
        }

        if (v17 == @"Lemma")
        {
          v94 = [v76 dominantLanguageForScript:v78];
          v95 = [(__CFString *)v94 isEqual:@"ja"];
          v96 = v21 + *v39;
          if (v95)
          {
            v97 = [(NSString *)v113 substringWithRange:v96 + *(v39 + 8), *(v39 + 9)];
          }

          else
          {
            v99 = *(v39 + 2);
            LXLemmatizer = getLXLemmatizer(v94);
            v101 = v99;
            p_location = &v120->location;
            v97 = lemmatizerLemmaForStringWithCategory(LXLemmatizer, [(NSString *)v113 substringWithRange:v96, v101], *(v39 + 3));
          }

          v32 = v97;
          goto LABEL_215;
        }

        if (v17 == @"Language")
        {
          v98 = [v76 dominantLanguageForScript:v78];
          if (v98)
          {
            v32 = v98;
          }

          else
          {
            v32 = @"und";
          }

          goto LABEL_215;
        }

        if (v17 == @"Script")
        {
          v32 = v78;
          goto LABEL_215;
        }

        if (v17 != @"PossibleClasses" && v17 != @"NameTypeOrLexicalClass" && v17 != @"LexicalClass" && v17 != @"NameType")
        {
          goto LABEL_215;
        }

        v80 = *v39;
        v81 = *(v39 + 2);
        v82 = getLXLemmatizer([v76 dominantLanguageForScript:v78]);
        if (v82)
        {
          v83 = v82;
          dictionary = [MEMORY[0x1E695DF90] dictionary];
          lemmatizerAddTagsForString(v83, [(NSString *)v113 substringWithRange:v21 + v80, v81], dictionary);
          v85 = [dictionary keysSortedByValueUsingComparator:&__block_literal_global_619];
          v86 = v85;
          if (v17 != @"PossibleClasses")
          {
            v114 = [MEMORY[0x1E695DEC8] arrayWithArray:v85];
            array = [MEMORY[0x1E695DF70] array];
            v131 = 0u;
            v132 = 0u;
            v133 = 0u;
            v134 = 0u;
            v88 = [v86 countByEnumeratingWithState:&v131 objects:v130 count:16];
            if (v88)
            {
              v89 = v88;
              v90 = 0;
              v91 = *v132;
              do
              {
                for (i = 0; i != v89; ++i)
                {
                  if (*v132 != v91)
                  {
                    objc_enumerationMutation(v86);
                  }

                  v90 += [objc_msgSend(dictionary objectForKey:{*(*(&v131 + 1) + 8 * i)), "integerValue"}];
                }

                v89 = [v86 countByEnumeratingWithState:&v131 objects:v130 count:16];
              }

              while (v89);
              v93 = v90;
            }

            else
            {
              v93 = 0.0;
            }

            v128 = 0u;
            v129 = 0u;
            v126 = 0u;
            v127 = 0u;
            v105 = [v86 countByEnumeratingWithState:&v126 objects:v125 count:16];
            if (v105)
            {
              v106 = v105;
              v107 = *v127;
              do
              {
                for (j = 0; j != v106; ++j)
                {
                  if (*v127 != v107)
                  {
                    objc_enumerationMutation(v86);
                  }

                  *&v109 = [objc_msgSend(dictionary objectForKey:{*(*(&v126 + 1) + 8 * j)), "integerValue"}] / v93;
                  [array addObject:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v109)}];
                }

                v106 = [v86 countByEnumeratingWithState:&v126 objects:v125 count:16];
              }

              while (v106);
            }

            v103 = [MEMORY[0x1E695DEC8] arrayWithArray:array];
            if (v114)
            {
              v33 = [MEMORY[0x1E695DEC8] arrayWithArray:?];
            }

            else
            {
              v33 = 0;
            }

            sentenceRange = v117;
            p_location = &v120->location;
            goto LABEL_216;
          }

          v32 = [v85 componentsJoinedByString:@"/"];
        }

        else
        {
          p_location = &v120->location;
          if (v17 != @"PossibleClasses")
          {
            goto LABEL_215;
          }

          v102 = *(v39 + 3);
          if ((v102 & 0xFFFFFFFFFFFFFFFBLL) == 0x43 || (v102 - 30) <= 0x2D && ((1 << (v102 - 30)) & 0x2CC000000003) != 0)
          {
            v32 = @"Noun";
            goto LABEL_215;
          }

          if ((v102 & 0xFE) == 0x20)
          {
            v32 = @"Noun";
          }

          else
          {
            v111 = v102 - 16;
            if (v111 > 0x47u)
            {
              v32 = @"OtherWord";
            }

            else
            {
              v32 = off_1E69F7350[v111];
            }
          }
        }
      }

      p_location = &v120->location;
LABEL_215:
      v103 = 0;
      v33 = 0;
      sentenceRange = v117;
LABEL_216:
      if (v118)
      {
        if (v103)
        {
          v104 = v103;
        }

        else
        {
          v104 = MEMORY[0x1E695E0F0];
        }

        *v118 = [MEMORY[0x1E695DEC8] arrayWithArray:v104];
      }

      v24 = v116;
      v23 = v115;
      goto LABEL_24;
    }

LABEL_154:
    if (v17 == @"NameType")
    {
      v32 = @"OtherWord";
    }

    else
    {
      v32 = @"Noun";
    }

    goto LABEL_157;
  }

  p_location = &v120->location;
  if ((v50 - 2) > 0xB)
  {
    sentenceRange = v117;
    if (v50 == 1)
    {
      v33 = 0;
      if (v17 == @"LexicalClass" || v17 == @"TokenType" || v17 == @"NameType" || v17 == @"NameTypeOrLexicalClass" || v17 == @"PossibleClasses" || v17 == @"InternalClass")
      {
        v32 = @"Other";
      }

      else
      {
        v32 = 0;
      }

      goto LABEL_24;
    }

    goto LABEL_111;
  }

  sentenceRange = v117;
  if (v17 == @"TokenType")
  {
    goto LABEL_150;
  }

  if (v17 != @"PossibleClasses" && v17 != @"NameTypeOrLexicalClass" && v17 != @"LexicalClass" && v17 != @"NameType")
  {
    if (v17 == @"InternalClass")
    {
      v53 = v23;
      v54 = v24;
      v55 = internalTagForCategory_internalTagArray;
      if (!internalTagForCategory_internalTagArray)
      {
        v55 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"NONE", @"OTHER", @".", @"?", @"!", @"“", @"”", @"(", @")", @"-", @", ", @"--", @":", @"SYM", @"ABB", @"ACK", @"CC", @"CD", @"CS", @"DT", @"DTO", @"DTP", @"DTW", @"EX", @"FW", @"IN", @"JJ", @"JJR", @"JJS", @"LS", @"NN", @"NNS", @"NNP", @"NNPS", @"PRE", @"PRP", @"PRPD", @"PRPR", @"PRPS", @"PRPT", @"RB", @"RBC", @"RBN", @"RBP", @"RBR", @"RBS", @"RBW", @"RP", @"RPP", @"TO", @"UH", @"URL", @"VB", @"VBC", @"VBD", @"VBF", @"VBG", @"VBI", @"VBM", @"VBN", @"VBP"}];
        internalTagForCategory_internalTagArray = v55;
      }

      if ([v55 count] <= v50)
      {
        v33 = 0;
        v32 = @"NONE";
      }

      else
      {
        v32 = [internalTagForCategory_internalTagArray objectAtIndex:v50];
        v33 = 0;
      }

      sentenceRange = v117;
      v24 = v54;
      v23 = v53;
      goto LABEL_24;
    }

LABEL_111:
    v33 = 0;
    goto LABEL_49;
  }

  v33 = 0;
  if (v50 <= 7)
  {
    if (v50 > 5)
    {
      v33 = 0;
      if (v50 == 6)
      {
        v32 = @"CloseQuote";
      }

      else
      {
        v32 = @"OpenParenthesis";
      }

      goto LABEL_24;
    }

    if (v50 == 2)
    {
      v32 = @"SentenceTerminator";
      goto LABEL_24;
    }

    if (v50 == 5)
    {
      v33 = 0;
      v32 = @"OpenQuote";
      goto LABEL_24;
    }

    goto LABEL_49;
  }

  if (v50 <= 10)
  {
    if (v50 == 8)
    {
      v33 = 0;
      v32 = @"CloseParenthesis";
      goto LABEL_24;
    }

    if (v50 == 9)
    {
      v33 = 0;
      v32 = @"WordJoiner";
      goto LABEL_24;
    }

    goto LABEL_49;
  }

  if (v50 == 11)
  {
    v33 = 0;
    v32 = @"Dash";
    goto LABEL_24;
  }

  if (v50 == 13)
  {
LABEL_150:
    v33 = 0;
    v32 = @"Punctuation";
    goto LABEL_24;
  }

LABEL_49:
  if (p_location)
  {
    *p_location = v34;
    p_location[1] = v26;
  }

  if (sentenceRange)
  {
    sentenceRange->location = v23;
    sentenceRange->length = v24;
  }

  return v33;
}

- (NSArray)tagsInRange:(NSRange)range scheme:(NSString *)tagScheme options:(NSLinguisticTaggerOptions)opts tokenRanges:(NSArray *)tokenRanges
{
  length = range.length;
  location = range.location;
  v28 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = __Block_byref_object_copy__23;
  v26 = __Block_byref_object_dispose__23;
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = __Block_byref_object_copy__23;
  v20 = __Block_byref_object_dispose__23;
  if (tokenRanges)
  {
    array2 = [MEMORY[0x1E695DF70] array];
  }

  else
  {
    array2 = 0;
  }

  v21 = array2;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__NSLinguisticTagger_tagsInRange_scheme_options_tokenRanges___block_invoke;
  v15[3] = &unk_1E69F71D0;
  v15[4] = &v22;
  v15[5] = &v16;
  [(NSLinguisticTagger *)self enumerateTagsInRange:location scheme:length options:tagScheme usingBlock:opts, v15];
  if (tokenRanges)
  {
    *tokenRanges = v17[5];
  }

  v13 = v23[5];
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
  return v13;
}

uint64_t __61__NSLinguisticTagger_tagsInRange_scheme_options_tokenRanges___block_invoke(uint64_t a1, __CFString *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = &stru_1EEEFDF90;
  }

  result = [*(*(*(a1 + 32) + 8) + 40) addObject:v7];
  v9 = *(*(*(a1 + 40) + 8) + 40);
  if (v9)
  {
    v10 = [NSValue valueWithRange:a3, a4];

    return [v9 addObject:v10];
  }

  return result;
}

- (void)enumerateTagsInRange:(NSRange)range unit:(NSLinguisticTaggerUnit)unit scheme:(NSLinguisticTagScheme)scheme options:(NSLinguisticTaggerOptions)options usingBlock:(void *)block
{
  length = range.length;
  location = range.location;
  v19[7] = *MEMORY[0x1E69E9840];
  if (range.location + range.length > [(NSString *)self->_string length])
  {
    v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Range or index out of bounds", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v18);
  }

  v15 = [(NSLinguisticTagger *)self _tagSchemeForScheme:scheme];
  if (v15)
  {
    v16 = v15;
    reserved = self->_reserved;
    if (reserved)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __74__NSLinguisticTagger_enumerateTagsInRange_unit_scheme_options_usingBlock___block_invoke;
      v19[3] = &unk_1E69F71F8;
      v19[4] = self;
      v19[5] = v16;
      v19[6] = block;
      off_1ED43FF40(reserved, unit, location, length, options, v19);
    }
  }
}

void __74__NSLinguisticTagger_enumerateTagsInRange_unit_scheme_options_usingBlock___block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = off_1ED43FF48(*(a1[4] + 48), a1[5]);
  tagForNLTag(v3);
  (*(a1[6] + 16))();
  if (v3)
  {
    CFRelease(v3);
  }

  objc_autoreleasePoolPop(v2);
}

- (NSLinguisticTag)tagAtIndex:(NSUInteger)charIndex unit:(NSLinguisticTaggerUnit)unit scheme:(NSLinguisticTagScheme)scheme tokenRange:(NSRangePointer)tokenRange
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(NSString *)self->_string length]<= charIndex)
  {
    v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Range or index out of bounds", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v18);
  }

  v12 = [(NSLinguisticTagger *)self _tagSchemeForScheme:scheme];
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  reserved = self->_reserved;
  if (!reserved)
  {
    return 0;
  }

  v15 = off_1ED43FF28(reserved, unit, charIndex, v13);
  v16 = tagForNLTag(v15);
  if (v15)
  {
    CFRelease(v15);
  }

  if (tokenRange)
  {
    v19 = 0;
    v20 = 0;
    off_1ED43FF38(&v19, self->_reserved, 0, charIndex);
    *tokenRange = v19;
  }

  return v16;
}

- (NSArray)tagsInRange:(NSRange)range unit:(NSLinguisticTaggerUnit)unit scheme:(NSLinguisticTagScheme)scheme options:(NSLinguisticTaggerOptions)options tokenRanges:(NSArray *)tokenRanges
{
  length = range.length;
  location = range.location;
  v17[6] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  if (tokenRanges)
  {
    array2 = [MEMORY[0x1E695DF70] array];
  }

  else
  {
    array2 = 0;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __66__NSLinguisticTagger_tagsInRange_unit_scheme_options_tokenRanges___block_invoke;
  v17[3] = &unk_1E69F7220;
  v17[4] = array;
  v17[5] = array2;
  [(NSLinguisticTagger *)self enumerateTagsInRange:location unit:length scheme:unit options:scheme usingBlock:options, v17];
  if (tokenRanges)
  {
    *tokenRanges = array2;
  }

  return array;
}

uint64_t __66__NSLinguisticTagger_tagsInRange_unit_scheme_options_tokenRanges___block_invoke(uint64_t a1, __CFString *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = &stru_1EEEFDF90;
  }

  result = [*(a1 + 32) addObject:v7];
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = [NSValue valueWithRange:a3, a4];

    return [v9 addObject:v10];
  }

  return result;
}

- (NSRange)tokenRangeAtIndex:(NSUInteger)charIndex unit:(NSLinguisticTaggerUnit)unit
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(NSString *)self->_string length]<= charIndex)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Range or index out of bounds", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v11);
  }

  reserved = self->_reserved;
  if (reserved)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    off_1ED43FF38(&v12, reserved, unit, charIndex);
    v9 = v12;
    v10 = v13;
  }

  else
  {
    v10 = 0;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  result.length = v10;
  result.location = v9;
  return result;
}

- (NSString)dominantLanguage
{
  if (![(NSString *)self->_string length])
  {
    return 0;
  }

  reserved = self->_reserved;
  if (!reserved)
  {
    return 0;
  }

  v4 = off_1ED43FF28(reserved, 3, 0, @"Language");
  v5 = tagForNLTag(v4);
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

+ (NSLinguisticTag)tagForString:(NSString *)string atIndex:(NSUInteger)charIndex unit:(NSLinguisticTaggerUnit)unit scheme:(NSLinguisticTagScheme)scheme orthography:(NSOrthography *)orthography tokenRange:(NSRangePointer)tokenRange
{
  v14 = [NSLinguisticTagger alloc];
  v15 = -[NSLinguisticTagger initWithTagSchemes:options:](v14, "initWithTagSchemes:options:", [MEMORY[0x1E695DEC8] arrayWithObject:scheme], 0x80000000);
  [(NSLinguisticTagger *)v15 setString:string];
  if (orthography)
  {
    [(NSLinguisticTagger *)v15 setOrthography:orthography range:0, [(NSString *)string length]];
  }

  v16 = [(NSLinguisticTagger *)v15 tagAtIndex:charIndex unit:unit scheme:scheme tokenRange:tokenRange];

  return v16;
}

+ (NSArray)tagsForString:(NSString *)string range:(NSRange)range unit:(NSLinguisticTaggerUnit)unit scheme:(NSLinguisticTagScheme)scheme options:(NSLinguisticTaggerOptions)options orthography:(NSOrthography *)orthography tokenRanges:(NSArray *)tokenRanges
{
  length = range.length;
  location = range.location;
  v15 = [NSLinguisticTagger alloc];
  v16 = -[NSLinguisticTagger initWithTagSchemes:options:](v15, "initWithTagSchemes:options:", [MEMORY[0x1E695DEC8] arrayWithObject:scheme], 0x80000000);
  [(NSLinguisticTagger *)v16 setString:string];
  if (orthography)
  {
    [(NSLinguisticTagger *)v16 setOrthography:orthography range:0, [(NSString *)string length]];
  }

  tokenRanges = [(NSLinguisticTagger *)v16 tagsInRange:location unit:length scheme:unit options:scheme tokenRanges:options, tokenRanges];

  return tokenRanges;
}

+ (void)enumerateTagsForString:(NSString *)string range:(NSRange)range unit:(NSLinguisticTaggerUnit)unit scheme:(NSLinguisticTagScheme)scheme options:(NSLinguisticTaggerOptions)options orthography:(NSOrthography *)orthography usingBlock:(void *)block
{
  length = range.length;
  location = range.location;
  v15 = [NSLinguisticTagger alloc];
  v16 = -[NSLinguisticTagger initWithTagSchemes:options:](v15, "initWithTagSchemes:options:", [MEMORY[0x1E695DEC8] arrayWithObject:scheme], 0x80000000);
  [(NSLinguisticTagger *)v16 setString:string];
  if (orthography)
  {
    [(NSLinguisticTagger *)v16 setOrthography:orthography range:0, [(NSString *)string length]];
  }

  [(NSLinguisticTagger *)v16 enumerateTagsInRange:location unit:length scheme:unit options:scheme usingBlock:options, block];
}

+ (NSString)dominantLanguageForString:(NSString *)string
{
  v4 = [NSLinguisticTagger alloc];
  v5 = -[NSLinguisticTagger initWithTagSchemes:options:](v4, "initWithTagSchemes:options:", [MEMORY[0x1E695DEC8] arrayWithObject:@"Language"], 0x80000000);
  [(NSLinguisticTagger *)v5 setString:string];
  dominantLanguage = [(NSLinguisticTagger *)v5 dominantLanguage];

  return dominantLanguage;
}

- (BOOL)_acceptSentenceTerminatorRange:(_NSRange)range paragraphRange:(_NSRange)paragraphRange tokens:(_NSLTToken *)tokens count:(unint64_t)count tokenIndex:(unint64_t)index
{
  location = paragraphRange.location;
  if ([(NSString *)self->_string characterAtIndex:range.location, range.length, paragraphRange.location, paragraphRange.length]== 46)
  {
    if (!index)
    {
      goto LABEL_14;
    }

    v11 = &tokens[index];
    if (v11[-1].var2 - 14 > 0x4A)
    {
      goto LABEL_14;
    }

    var1 = v11[-1].var1;
    if (var1 + v11[-1].var0 != v11->var0)
    {
      goto LABEL_14;
    }

    if (var1 == 1)
    {
      return 0;
    }

    if (!qword_1ED43FF50)
    {
      qword_1ED43FF50 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"mr", @"mrs", @"ms", @"messrs", @"mme", @"mmes", @"mlle", @"sr", @"sra", @"srta", @"dr", @"drs", @"pres", @"sen", @"atty", @"supt", @"amb", @"lcdo", @"ldo", @"st", @"msgr", @"fr", @"rdo", @"adm", @"col", @"maj", @"cmdr", @"cdr", @"capt", @"lieut", @"lt", @"sgt", @"cpl", @"pvt", @"jan", @"feb", @"febr", @"apr", @"jun", @"jul", @"aug", @"sep", @"oct", @"nov", @"dec", @"ph", @"eg", @"ie", @"viz", @"vs", 0}];
    }

    if (!qword_1ED43FF58)
    {
      qword_1ED43FF58 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"M", @"Hon", @"Rep", @"Gov", @"Sec", @"Prof", @"Ing", @"Rev", @"Gen", @"Ens", @"Spec", @"Mar", @"Sept", 0}];
    }

    if (v11[-1].var1)
    {
      v13 = [(NSString *)self->_string substringWithRange:location + v11[-1].var0];
      lowercaseString = [(NSString *)v13 lowercaseString];
      if ([qword_1ED43FF58 containsObject:v13] & 1) != 0 || (objc_msgSend(qword_1ED43FF50, "containsObject:", lowercaseString))
      {
        return 0;
      }

      v15 = [@"no" isEqualToString:lowercaseString] ^ 1;
    }

    else
    {
LABEL_14:
      v15 = 1;
    }

    if (index + 1 < count)
    {
      v16 = &tokens[index + 1];
      var2 = v16->var2;
      if ((var2 - 14) > 0x4A)
      {
        if ((var2 - 2) <= 0xB)
        {
          var0 = v16->var0;
          if (tokens[index].var1 + tokens[index].var0 == var0)
          {
            [(NSString *)self->_string rangeOfCharacterFromSet:qword_1ED43FED8 options:8 range:location + var0, v16->var1];
            if (!v19 || [(NSString *)self->_string characterAtIndex:location + v16->var0]== 45)
            {
              return 0;
            }
          }
        }
      }

      else if (tokens[index].var1 + tokens[index].var0 == v16->var0)
      {
        return 0;
      }

      v20 = index + 2;
      p_var2 = &tokens[index + 1].var2;
      v22 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        if (*p_var2 - 14 > 0x4A)
        {
          v23 = 0;
        }

        else
        {
          v22 = location + *(p_var2 - 3);
          v23 = *(p_var2 - 1);
          if (*(p_var2 - 1))
          {
            break;
          }
        }

        p_var2 += 16;
      }

      while (v20++ < count);
      if (v23)
      {
        [(NSString *)self->_string rangeOfCharacterFromSet:+[NSCharacterSet options:"lowercaseLetterCharacterSet"]range:8, v22, v23];
        if (v25)
        {
          return 0;
        }

        if ((v15 & 1) == 0)
        {
          [(NSString *)self->_string rangeOfCharacterFromSet:qword_1ED43FEE8 options:8 range:v22, v23];
          if (v27)
          {
            return 0;
          }
        }
      }
    }
  }

  return 1;
}

- (void)_acceptSentencesForParagraphRange:(_NSRange)range
{
  if (qword_1ED43FF60 >= 2)
  {
    length = range.length;
    location = range.location;
    v6 = 0;
    v7 = 24;
    do
    {
      if (*(qword_1ED43FF68 + v7 - 21) != 2 || [(NSLinguisticTagger *)self _acceptSentenceTerminatorRange:location + *(qword_1ED43FF68 + v7 - 24) paragraphRange:*(qword_1ED43FF68 + v7 - 22) tokens:location count:length tokenIndex:v6])
      {
        goto LABEL_16;
      }

      v8 = qword_1ED43FF68;
      v9 = *(qword_1ED43FF68 + v7 - 22);
      if (v6 && v9 == 1)
      {
        if (*(qword_1ED43FF68 + v7 - 37) - 14 <= 0x4A && *(qword_1ED43FF68 + v7 - 38) + *(qword_1ED43FF68 + v7 - 40) == *(qword_1ED43FF68 + v7 - 24))
        {
          v10 = v6 - 1;
          goto LABEL_14;
        }
      }

      else if (v9 != 1)
      {
        goto LABEL_15;
      }

      v11 = *(qword_1ED43FF68 + v7 - 5);
      if ((v11 - 14) > 0x4A || *(qword_1ED43FF68 + v7 - 24) + 1 != *(qword_1ED43FF68 + v7 - 8))
      {
LABEL_15:
        *(qword_1ED43FF68 + v7 - 21) = 13;
        goto LABEL_16;
      }

      v12 = qword_1ED43FF68 + v7;
      *(v12 - 21) = v11;
      *(v12 - 16) = *(v8 + v7);
      v10 = v6;
LABEL_14:
      joinTokensInRange(v8, v10, 2uLL);
LABEL_16:
      v13 = v6 + 2;
      ++v6;
      v7 += 16;
    }

    while (v13 < qword_1ED43FF60);
  }
}

- (void)_calculateSentenceRangesForParagraphRange:(_NSRange)range
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = range.location + range.length;
  if (range.location < range.location + range.length)
  {
    length = range.length;
    location = range.location;
    v6 = 0;
    v8 = qword_1ED43FF60;
    v7 = qword_1ED43FF68;
    v9 = qword_1ED43FF70;
    v10 = range.location;
    do
    {
      v14 = 0uLL;
      v11 = sentenceRangeAtIndexInTokens(v10, location, length, v7, v8, v14.i64);
      if (v6 < 0x100)
      {
        v13.i32[0] = v11 - location;
        v13.i32[1] = v12;
        *(v9 + 8 * v6++) = vuzp1_s16(v13, vmovn_s64(v14));
      }

      v10 = v11 + v12;
    }

    while (v10 < v3);
  }
}

- (void)_analyzePunctuationTokensInRange:(_NSRange)range paragraphRange:(_NSRange)paragraphRange
{
  length = paragraphRange.length;
  if (range.length)
  {
    location = paragraphRange.location;
    v5 = range.length;
    v6 = range.location;
    while (1)
    {
      v8 = [(NSString *)self->_string rangeOfCharacterFromSet:qword_1ED43FEA8 options:0 range:v6, v5];
      v10 = v6 + v5;
      if (v8 >= v6 + v5)
      {
        v11 = v6 + v5;
      }

      else
      {
        v11 = v8;
      }

      if (v9)
      {
        v12 = v11;
      }

      else
      {
        v12 = v6 + v5;
      }

      if (v12 > v6 && qword_1ED43FF60 <= 0xFFF)
      {
        v13 = qword_1ED43FF68 + 16 * qword_1ED43FF60;
        *v13 = v6 - location;
        *(v13 + 2) = v12 - v6;
        *(v13 + 3) = 88;
        *(v13 + 4) = 0;
        *(v13 + 8) = 0;
        ++qword_1ED43FF60;
      }

      if (v10 == v12)
      {
        return;
      }

      v14 = [(NSString *)self->_string rangeOfCharacterFromSet:qword_1ED43FEB0 options:0 range:v12, v10 - v12];
      if (v14 >= v10)
      {
        v16 = v6 + v5;
      }

      else
      {
        v16 = v14;
      }

      if (v15)
      {
        v6 = v16;
      }

      else
      {
        v6 += v5;
      }

      if (v6 <= v12)
      {
        goto LABEL_58;
      }

      v17 = [(NSString *)self->_string rangeOfCharacterFromSet:qword_1ED43FEC0 options:0 range:v12, v6 - v12];
      if (!v18)
      {
        break;
      }

      v19 = v17;
      v20 = v18;
      if (v17 > v12)
      {
        [(NSLinguisticTagger *)self _analyzePunctuationTokensInRange:v12 paragraphRange:v17 - v12, location, length];
      }

      if (v6 > v19 + v20)
      {
        v21 = [(NSString *)self->_string rangeOfCharacterFromSet:qword_1ED43FEC8 options:0 range:v19 + v20, v6 - (v19 + v20)];
        if (v21 >= v6)
        {
          v23 = v6;
        }

        else
        {
          v23 = v21;
        }

        if (v22)
        {
          v24 = v23;
        }

        else
        {
          v24 = v6;
        }

        if (qword_1ED43FF60 <= 0xFFF)
        {
          v25 = qword_1ED43FF68 + 16 * qword_1ED43FF60;
          *v25 = v19 - location;
          *(v25 + 2) = v24 - v19;
          *(v25 + 3) = 2;
          *(v25 + 4) = 0;
          *(v25 + 8) = 0;
          ++qword_1ED43FF60;
        }

        goto LABEL_56;
      }

      if (qword_1ED43FF60 <= 0xFFF)
      {
        v34 = qword_1ED43FF68 + 16 * qword_1ED43FF60;
        *v34 = v19 - location;
        *(v34 + 2) = v20;
        v35 = 2;
        goto LABEL_45;
      }

LABEL_58:
      v5 = v10 - v6;
      if (v10 == v6)
      {
        return;
      }
    }

    v26 = [(NSString *)self->_string rangeOfCharacterFromSet:qword_1ED43FED8 options:0 range:v12, v6 - v12];
    if (v27)
    {
      v28 = v26;
      v29 = v27;
      v30 = [(NSString *)self->_string characterAtIndex:v26];
      v31 = v30;
      if (v28 > v12 && qword_1ED43FF60 <= 0xFFF)
      {
        v32 = qword_1ED43FF68 + 16 * qword_1ED43FF60;
        *v32 = v12 - location;
        *(v32 + 2) = v28 - v12;
        *(v32 + 3) = 13;
        *(v32 + 4) = 0;
        *(v32 + 8) = 0;
        ++qword_1ED43FF60;
      }

      if (v30 == 45)
      {
        for (i = v29 + v28; i < v6 && [(NSString *)self->_string characterAtIndex:i]== 45; ++i)
        {
          ++v29;
        }

        if (v29)
        {
          v36 = 11;
        }

        else
        {
          v36 = 9;
        }

        goto LABEL_53;
      }

      if (v30 >> 1 == 4104)
      {
        v36 = 9;
        goto LABEL_53;
      }

      if ((v30 - 8210) < 4)
      {
        v36 = 11;
        goto LABEL_53;
      }

      if (v30 == 41)
      {
        v36 = 8;
        goto LABEL_53;
      }

      if (v30 == 40)
      {
        v36 = 7;
        goto LABEL_53;
      }

      if (![qword_1ED43FEE0 characterIsMember:v30])
      {
        goto LABEL_94;
      }

      v38 = 0;
      string = self->_string;
      v59 = string;
      while (1)
      {
        v40 = openingStrengthForQuoteCharacter_singleQuotes[v38];
        v41 = v40 != v31;
        if (v40 == v31)
        {
          break;
        }

        if (openingStrengthForQuoteCharacter_doubleQuotes[v38] == v31)
        {
          v44 = "\x02\x03\x01\x03\x01\x04\x01\x04";
          goto LABEL_72;
        }

        if (++v38 == 9)
        {
          v42 = [(NSString *)string length];
          v41 = 0;
          v43 = 2;
LABEL_75:
          v57 = v42;
          v58 = v43;
          if (v28 && (v45 = [(NSString *)v59 characterAtIndex:v28 - 1], v45))
          {
            v46 = v45;
            v55 = [qword_1ED43FE90 characterIsMember:?];
          }

          else
          {
            v46 = 0;
            v55 = 1;
          }

          v54 = [qword_1ED43FF00 characterIsMember:v46];
          v56 = [qword_1ED43FEF8 characterIsMember:v46];
          if (v28 + 1 >= v57)
          {
            v47 = 0;
          }

          else
          {
            v47 = [(NSString *)v59 characterAtIndex:?];
          }

          v48 = [qword_1ED43FEF8 characterIsMember:v47];
          if (v41)
          {
            if (v58 != 2)
            {
              if ((v48 & (v56 ^ 1)) != 0)
              {
                v36 = 5;
              }

              else
              {
                v36 = 6;
              }

              if ((v56 & (v48 ^ 1)) != 0)
              {
                v49 = 6;
              }

              else
              {
                v49 = 5;
              }

              if (v58 == 3)
              {
                v36 = v49;
              }

              goto LABEL_53;
            }

            if ((v55 & 1) == 0)
            {
              v52 = v46 == 39;
              goto LABEL_110;
            }

LABEL_73:
            v36 = 5;
            goto LABEL_53;
          }

          v50 = v48 ^ 1;
          if (((v56 ^ 1) & 1) == 0 && !v50)
          {
LABEL_94:
            v36 = 13;
            goto LABEL_53;
          }

          if (v58 == 2)
          {
            if (v55)
            {
              goto LABEL_73;
            }

            v52 = v46 == 34;
LABEL_110:
            v53 = v54;
            if (v52)
            {
              v53 = 1;
            }

            if (v53)
            {
              v36 = 5;
            }

            else
            {
              v36 = 6;
            }
          }

          else
          {
            if ((v48 & (v56 ^ 1)) != 0)
            {
              v51 = 5;
            }

            else
            {
              v51 = 6;
            }

            if ((v56 & v50) != 0)
            {
              v36 = 6;
            }

            else
            {
              v36 = 5;
            }

            if (v58 != 3)
            {
              v36 = v51;
            }
          }

LABEL_53:
          if (qword_1ED43FF60 <= 0xFFF)
          {
            v37 = qword_1ED43FF68 + 16 * qword_1ED43FF60;
            *v37 = v28 - location;
            *(v37 + 2) = v29;
            *(v37 + 3) = v36;
            *(v37 + 4) = 0;
            *(v37 + 8) = 0;
            ++qword_1ED43FF60;
          }

          v24 = v29 + v28;
LABEL_56:
          if (v6 > v24)
          {
            [NSLinguisticTagger _analyzePunctuationTokensInRange:"_analyzePunctuationTokensInRange:paragraphRange:" paragraphRange:?];
          }

          goto LABEL_58;
        }
      }

      v44 = "\x02\x03\x01\x04\x01\x03\x01\x04";
LABEL_72:
      v43 = v44[v38];
      v42 = [(NSString *)string length];
      if (v43 > 3)
      {
        goto LABEL_73;
      }

      if (v43)
      {
        goto LABEL_75;
      }

      v36 = 6;
      goto LABEL_53;
    }

    if (qword_1ED43FF60 > 0xFFF)
    {
      goto LABEL_58;
    }

    v34 = qword_1ED43FF68 + 16 * qword_1ED43FF60;
    *v34 = v12 - location;
    *(v34 + 2) = v6 - v12;
    v35 = 13;
LABEL_45:
    *(v34 + 3) = v35;
    *(v34 + 4) = 0;
    *(v34 + 8) = 0;
    ++qword_1ED43FF60;
    goto LABEL_58;
  }
}

- (void)_analyzeTokensInInterwordRange:(_NSRange)range paragraphRange:(_NSRange)paragraphRange
{
  if (range.length)
  {
    length = paragraphRange.length;
    location = paragraphRange.location;
    v6 = range.length;
    v7 = range.location;
    do
    {
      v9 = [(NSString *)self->_string rangeOfCharacterFromSet:qword_1ED43FE90 options:0 range:v7, v6];
      v11 = v7 + v6;
      if (v9 >= v7 + v6)
      {
        v12 = v7 + v6;
      }

      else
      {
        v12 = v9;
      }

      if (v10)
      {
        v13 = v12;
      }

      else
      {
        v13 = v7 + v6;
      }

      if (v13 > v7)
      {
        [(NSLinguisticTagger *)self _analyzePunctuationTokensInRange:v7 paragraphRange:v13 - v7, location, length];
      }

      if (v11 == v13)
      {
        break;
      }

      v14 = [(NSString *)self->_string rangeOfCharacterFromSet:qword_1ED43FE98 options:0 range:v13, v11 - v13];
      v16 = v14 >= v11 ? v11 : v14;
      v7 = v15 ? v16 : v11;
      v6 = v11 - v7;
    }

    while (v11 != v7);
  }
}

- (void)_analyzeTokensInWordRange:(_NSRange)range paragraphRange:(_NSRange)paragraphRange
{
  length = paragraphRange.length;
  location = paragraphRange.location;
  v6 = range.length;
  v7 = range.location;
  v9 = [(NSString *)self->_string rangeOfCharacterFromSet:qword_1ED43FED0 options:4 range:range.location, range.length];
  if (v10)
  {
    v11 = v9 > v7;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    if (!v10)
    {
LABEL_27:
      if (qword_1ED43FF60 <= 0xFFF)
      {
        v25 = qword_1ED43FF68 + 16 * qword_1ED43FF60;
        *v25 = v7 - location;
        *(v25 + 2) = v6;
        *(v25 + 3) = 88;
        *(v25 + 4) = 0;
        *(v25 + 8) = 0;
        ++qword_1ED43FF60;
      }

      return;
    }

    goto LABEL_19;
  }

  v12 = v7 + v6;
  v13 = v7 + v6 - (v9 + v10);
  if (v7 + v6 > v9 + v10)
  {
    if (v13 == 2)
    {
      [(NSString *)self->_string rangeOfString:@"ve" options:13 range:v7, v6];
      if (v37 || ([(NSString *)self->_string rangeOfString:@"ll" options:13 range:v7, v6], v38) || ([(NSString *)self->_string rangeOfString:@"re" options:13 range:v7, v6], v39))
      {
        v17 = -3;
        goto LABEL_47;
      }
    }

    else if (v13 == 1)
    {
      [(NSString *)self->_string rangeOfString:@"s" options:13 range:v7, v6];
      if (v14 || ([(NSString *)self->_string rangeOfString:@"d" options:13 range:v7, v6], v15) || ([(NSString *)self->_string rangeOfString:@"m" options:13 range:v7, v6], v16))
      {
        [(NSString *)self->_string rangeOfString:@"t" options:13 range:v7, v6];
        v17 = -2;
        if (!v18)
        {
          goto LABEL_47;
        }

        v19 = 0;
        goto LABEL_15;
      }

      [(NSString *)self->_string rangeOfString:@"t" options:13 range:v7, v6];
      if (v45)
      {
        v19 = 1;
        v17 = 0x8000000000000001;
LABEL_15:
        [(NSString *)self->_string rangeOfString:@"n" options:13 range:v7, v6 - 2];
        if (v20)
        {
          v17 = -3;
        }

        if (v19 && !v20)
        {
          goto LABEL_19;
        }

LABEL_47:
        v40 = v17 + v6;
        [(NSLinguisticTagger *)self _analyzeTokensInWordRange:v7 paragraphRange:v40, location, length];
        if (qword_1ED43FF60 <= 0xFFF)
        {
          v41 = qword_1ED43FF68 + 16 * qword_1ED43FF60;
          *v41 = v40 + v7 - location;
          *(v41 + 2) = v12 - (v40 + v7);
          *(v41 + 3) = 88;
          *(v41 + 4) = 0;
          *(v41 + 8) = 0;
          ++qword_1ED43FF60;
        }

        return;
      }
    }
  }

LABEL_19:
  v21 = [(NSString *)self->_string rangeOfCharacterFromSet:qword_1ED43FED0 options:0 range:v7, v6];
  if (v22)
  {
    v23 = v21 > v7;
  }

  else
  {
    v23 = 0;
  }

  if (!v23 || v21 + v22 >= v7 + v6)
  {
    goto LABEL_27;
  }

  v26 = v21 - v7;
  if (v21 - v7 == 4)
  {
    [(NSString *)self->_string rangeOfString:@"entr" options:9 range:v7, v6];
    if (!v43)
    {
      goto LABEL_27;
    }

    v36 = 5;
  }

  else if (v26 == 2)
  {
    [(NSString *)self->_string rangeOfString:@"qu" options:9 range:v7, v6];
    if (!v42)
    {
      goto LABEL_27;
    }

    v36 = 3;
  }

  else
  {
    if (v26 != 1)
    {
      goto LABEL_27;
    }

    [(NSString *)self->_string rangeOfString:@"c" options:9 range:v7, v6];
    if (!v27)
    {
      [(NSString *)self->_string rangeOfString:@"d" options:9 range:v7, v6];
      if (!v28)
      {
        [(NSString *)self->_string rangeOfString:@"j" options:9 range:v7, v6];
        if (!v29)
        {
          [(NSString *)self->_string rangeOfString:@"l" options:9 range:v7, v6];
          if (!v30)
          {
            [(NSString *)self->_string rangeOfString:@"m" options:9 range:v7, v6];
            if (!v31)
            {
              [(NSString *)self->_string rangeOfString:@"n" options:9 range:v7, v6];
              if (!v32)
              {
                [(NSString *)self->_string rangeOfString:@"s" options:9 range:v7, v6];
                if (!v33)
                {
                  [(NSString *)self->_string rangeOfString:@"t" options:9 range:v7, v6];
                  if (!v34)
                  {
                    [(NSString *)self->_string rangeOfString:@"y" options:9 range:v7, v6];
                    if (!v35)
                    {
                      goto LABEL_27;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v36 = 2;
  }

  if (qword_1ED43FF60 <= 0xFFF)
  {
    v44 = qword_1ED43FF68 + 16 * qword_1ED43FF60;
    *v44 = v7 - location;
    *(v44 + 2) = v36;
    *(v44 + 3) = 88;
    *(v44 + 4) = 0;
    *(v44 + 8) = 0;
    ++qword_1ED43FF60;
  }

  [(NSLinguisticTagger *)self _analyzeTokensInWordRange:v36 + v7 paragraphRange:v6 - v36, location, length];
}

- (id)_tokenDataForParagraphRange:(_NSRange)range requireLemmas:(BOOL)lemmas requirePartsOfSpeech:(BOOL)speech requireNamedEntities:(BOOL)entities
{
  entitiesCopy = entities;
  length = range.length;
  location = range.location;
  v114 = *MEMORY[0x1E69E9840];
  memset(v113, 0, sizeof(v113));
  memset(v112, 0, sizeof(v112));
  bzero(v111, 0x800uLL);
  selfCopy = self;
  v115.location = location;
  v115.length = length;
  v12 = CFStringTokenizerCopyBestStringLanguage(self->_string, v115);
  v13 = [(__CFString *)v12 hasPrefix:@"ja"];
  v14 = [(__CFString *)v12 hasPrefix:@"zh"];
  if (v12)
  {
    CFRelease(v12);
  }

  qword_1ED43FF60 = 0;
  v15 = qword_1ED43FF68;
  if (!qword_1ED43FF68)
  {
    v15 = malloc_type_calloc(0x1000uLL, 0x10uLL, 0x10820401907A9A8uLL);
    qword_1ED43FF68 = v15;
  }

  if (qword_1ED43FF70)
  {
    v16 = 1;
  }

  else
  {
    qword_1ED43FF70 = malloc_type_calloc(0x100uLL, 8uLL, 0x100004000313F17uLL);
    v15 = qword_1ED43FF68;
    v16 = qword_1ED43FF70 != 0;
  }

  v17 = 0;
  if (!v16 || !v15)
  {
    return v17;
  }

  if (!v13)
  {
    goto LABEL_180;
  }

  v18 = qword_1ED43FF78;
  if (!qword_1ED43FF78)
  {
    v19 = CFLocaleCreate(0, @"ja");
    v116.location = 0;
    v116.length = 0;
    v18 = CFStringTokenizerCreate(0, &stru_1EEEFDF90, v116, 0, v19);
    qword_1ED43FF78 = v18;
    if (v19)
    {
      CFRelease(v19);
      v18 = qword_1ED43FF78;
    }

    if (!v18)
    {
LABEL_180:
      v18 = qword_1ED43FF80;
      if (!qword_1ED43FF80)
      {
        v117.location = 0;
        v117.length = 0;
        v18 = CFStringTokenizerCreate(0, &stru_1EEEFDF90, v117, 0, 0);
        qword_1ED43FF80 = v18;
        if (!v18)
        {
          return 0;
        }
      }
    }
  }

  tokenizer = v18;
  v118.location = location;
  v118.length = length;
  CFStringTokenizerSetString(v18, selfCopy[3], v118);
  CharactersPtr = CFStringGetCharactersPtr(selfCopy[3]);
  if (CharactersPtr)
  {
    v21 = CharactersPtr;
    v22 = malloc_type_malloc(2 * length, 0x1000040BDFB0063uLL);
    if (v22)
    {
      v23 = v22;
      v24 = &v21[location];
      v25 = v22;
      if (!length)
      {
        goto LABEL_49;
      }

LABEL_23:
      v27 = v24;
      v28 = length;
      do
      {
        v30 = *v27++;
        v29 = v30;
        v31 = v30 - 65;
        v32 = v30 - 192;
        if (v30 - 216 >= 7 && v31 >= 0x1A && v32 > 0x16)
        {
          if (v29 == 376)
          {
            LOWORD(v29) = 255;
          }

          else if (v29)
          {
            if (v29 - 313 < 0xF || v29 - 377 < 5 || v29 - 461 < 0xF)
            {
              LOWORD(v29) = v29 + 1;
            }
          }

          else if (v29 - 256 < 0x37 || v29 - 330 < 0x2D || (vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_1814537E0, vaddq_s32(vdupq_n_s32(v29), xmmword_1814537D0)))) & 1) != 0 || v29 == 500)
          {
            LOWORD(v29) = v29 | 1;
          }
        }

        else
        {
          LOWORD(v29) = v29 | 0x20;
        }

        *v25 = v29;
        v25 += 2;
        --v28;
      }

      while (v28);
      goto LABEL_49;
    }

    return 0;
  }

  v26 = malloc_type_malloc(4 * length, 0x1000040BDFB0063uLL);
  if (!v26)
  {
    return 0;
  }

  v23 = v26;
  [(__CFString *)selfCopy[3] getCharacters:v26 range:location, length];
  v25 = &v23[length];
  v24 = v23;
  if (length)
  {
    goto LABEL_23;
  }

LABEL_49:
  v100 = v23;
  lemmasCopy = lemmas;
  speechCopy = speech;
  v106 = location + length;
  v98 = v13;
  if (CFStringTokenizerAdvanceToNextToken(tokenizer))
  {
    v97 = entitiesCopy;
    v104 = 0;
    v105 = 0;
    v37 = 0;
    v38 = 0;
    v39 = v13 | v14;
    v95 = -location;
    v96 = v24;
    v109 = &v24[-location];
    v40 = location;
    v107 = location;
    v41 = tokenizer;
    v102 = v39;
    do
    {
      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v41);
      v43 = CurrentTokenRange.location;
      v44 = CurrentTokenRange.length;
      if ((v39 & 1) == 0 || ([(__CFString *)selfCopy[3] rangeOfCharacterFromSet:qword_1ED43FEB8 options:0 range:CurrentTokenRange.location, CurrentTokenRange.length], v45))
      {
        v46 = v40 + v37;
        if (CurrentTokenRange.location > v40 + v37)
        {
          v47 = [(__CFString *)selfCopy[3] characterAtIndex:CurrentTokenRange.location - 1];
          if (v47 == 95 || v47 == 46)
          {
            v44 = CurrentTokenRange.length + 1;
            v43 = CurrentTokenRange.location - 1;
          }
        }

        v108 = v43;
        v48 = v43 + 64;
        while (1)
        {
          v37 = v44;
          v49 = v44 + v108;
          if (v44 + v108 >= v106)
          {
            break;
          }

          v108 = [(__CFString *)selfCopy[3] characterAtIndex:v44 + v108];
          v53 = (v108 - 39) <= 0x38 && ((1 << (v108 - 39)) & 0x100000000000081) != 0 || v108 == 8217;
          if ((v108 - 8208) >= 2 && v108 != 45)
          {
            goto LABEL_78;
          }

          if (v37 > 2)
          {
            if (v37 != 3)
            {
              if (v37 == 4)
              {
                v55 = selfCopy[3];
                v56 = @"anti";
                goto LABEL_84;
              }

LABEL_78:
              if (!v53)
              {
                break;
              }

              goto LABEL_88;
            }

            [(__CFString *)selfCopy[3] rangeOfString:@"mal" options:9 range:v108, 3];
            if (!v58)
            {
              v55 = selfCopy[3];
              v56 = @"non";
LABEL_84:
              [(__CFString *)v55 rangeOfString:v56 options:9 range:v108, v37, v95, v96];
              if (v59)
              {
                v60 = 1;
              }

              else
              {
                v60 = v53;
              }

              if ((v60 & 1) == 0)
              {
                break;
              }
            }
          }

          else if (v37 == 1)
          {
            [(__CFString *)selfCopy[3] rangeOfString:@"a" options:9 range:v108, 1];
            if (!v57)
            {
              v55 = selfCopy[3];
              v56 = @"t";
              goto LABEL_84;
            }
          }

          else
          {
            if (v37 != 2)
            {
              goto LABEL_78;
            }

            [(__CFString *)selfCopy[3] rangeOfString:@"co" options:9 range:v108, 2];
            if (!v54)
            {
              v55 = selfCopy[3];
              v56 = @"un";
              goto LABEL_84;
            }
          }

LABEL_88:
          if (CFStringTokenizerAdvanceToNextToken(v41))
          {
            v61 = CFStringTokenizerGetCurrentTokenRange(v41);
            if (v61.location == v49 + 1)
            {
              v44 = v61.location + v61.length - v108;
              if (v61.location + v61.length <= v48)
              {
                continue;
              }
            }
          }

          CFStringTokenizerGoToTokenAtIndex(v41, v49);
          break;
        }

        if (v108 > v46)
        {
          [(CFStringRef *)selfCopy _analyzeTokensInInterwordRange:v46 paragraphRange:v108 - v46, location, length];
        }

        v62 = v108;
        if (v108 < v49)
        {
          while (1)
          {
            if (v49 - v62 >= 0x40)
            {
              v63 = 64;
            }

            else
            {
              v63 = v49 - v62;
            }

            v64 = NSOrthographyScriptIndexForCharacters(&v109[v62], v63, v113);
            ++*(v112 + v64);
            if (!qword_1ED43FF88)
            {
              qword_1ED43FF88 = [NSCharacterSet characterSetWithCharactersInString:@"~#@$%^\\|<."];
            }

            if (qword_1ED43FF90)
            {
              if (!v62)
              {
                goto LABEL_109;
              }
            }

            else
            {
              qword_1ED43FF90 = [NSCharacterSet characterSetWithCharactersInString:@"~#@$%^\\|>:"];
              if (!v62)
              {
                goto LABEL_109;
              }
            }

            [(__CFString *)selfCopy[3] rangeOfCharacterFromSet:qword_1ED43FF88 options:12 range:0, v62, v95];
            if (v65)
            {
              goto LABEL_105;
            }

LABEL_109:
            v67 = v63 + v62;
            if (v106 <= v63 + v62)
            {
              if (v49 != v62)
              {
                goto LABEL_115;
              }
            }

            else
            {
              [(__CFString *)selfCopy[3] rangeOfCharacterFromSet:qword_1ED43FF90 options:8 range:v63 + v62, v106 - (v63 + v62)];
              if (v49 != v62 && !v68)
              {
LABEL_115:
                if (v63 <= 1)
                {
                  v69 = 1;
                }

                else
                {
                  v69 = v63;
                }

                v70 = &v109[v62];
                while (1)
                {
                  v72 = *v70++;
                  v71 = v72;
                  if (v72 == 46 || v71 == 95)
                  {
                    break;
                  }

                  if (!--v69)
                  {
                    goto LABEL_122;
                  }
                }

LABEL_105:
                if (v38)
                {
                  v66 = v105;
                  if (!v105)
                  {
                    v66 = langid_create();
                  }

                  v105 = v66;
                  v104 = langid_consume_string();
                  v38 = 0;
                  v67 = v63 + v62;
                  v107 = v63 + v62;
                }

                else
                {
                  v67 = v63 + v62;
                }

                goto LABEL_124;
              }

              if (v68)
              {
                goto LABEL_105;
              }
            }

LABEL_122:
            scoreOrthographyForCharacters(&v109[v62], v63, v64, v111);
            v38 = v62 - v107 + v63;
LABEL_124:
            [(CFStringRef *)selfCopy _analyzeTokensInWordRange:v62 paragraphRange:v63, location, length, v95];
            v62 = v67;
            if (v67 >= v49)
            {
              v40 = v108;
              v41 = tokenizer;
              v39 = v102;
              goto LABEL_127;
            }
          }
        }

        v40 = v108;
      }

LABEL_127:
      ;
    }

    while (CFStringTokenizerAdvanceToNextToken(v41));
    if (v38)
    {
      v73 = v105;
      if (v106 <= v107)
      {
        entitiesCopy = v97;
        v74 = v104;
      }

      else
      {
        entitiesCopy = v97;
        if (!v105)
        {
          v73 = langid_create();
        }

        v74 = langid_consume_string();
      }
    }

    else
    {
      entitiesCopy = v97;
      v74 = v104;
      v73 = v105;
    }

    if (v73)
    {
      v75 = v74;
      v76 = numberOfLanguageCodes_numCodes;
      if (numberOfLanguageCodes_numCodes < 0)
      {
        v76 = langid_numlanguages();
        numberOfLanguageCodes_numCodes = v76;
      }

      v77 = orthoIndexesForLanguageCodes();
      if (v77 && v76 >= 1)
      {
        v78 = v75;
        v79 = v76;
        do
        {
          v81 = *v77++;
          v80 = v81;
          if (v81)
          {
            v111[v80] += *v78;
          }

          ++v78;
          --v79;
        }

        while (v79);
      }

      langid_dispose();
    }
  }

  else
  {
    v37 = 0;
    v40 = location;
    v41 = tokenizer;
  }

  v82 = [(CFStringRef *)selfCopy orthographyAtIndex:location effectiveRange:0, v95];
  v83 = orthographyFlagsForScores(v113, v112, v111);
  if (!v82)
  {
    if (v83)
    {
      v84 = [NSSimpleOrthography orthographyWithFlags:v83];
      if (v84)
      {
        [(CFStringRef *)selfCopy setOrthography:v84 range:location, length];
      }
    }
  }

  if (v106 > v40 + v37)
  {
    [(CFStringRef *)selfCopy _analyzeTokensInInterwordRange:v40 + v37 paragraphRange:v106 - (v40 + v37), location, length];
  }

  [(CFStringRef *)selfCopy _acceptSentencesForParagraphRange:location, length];
  if (lemmasCopy || speechCopy || entitiesCopy)
  {
    v85 = location;
    if (v82)
    {
      v86 = [v82 dominantLanguageForScript:@"Latn"];
      if (([v86 isEqualToString:@"en"] & 1) == 0 && (objc_msgSend(v86, "isEqualToString:", @"fr") & 1) == 0 && (objc_msgSend(v86, "isEqualToString:", @"de") & 1) == 0 && (objc_msgSend(v86, "isEqualToString:", @"es") & 1) == 0 && (objc_msgSend(v86, "isEqualToString:", @"it") & 1) == 0 && (objc_msgSend(v86, "isEqualToString:", @"pt") & 1) == 0 && (objc_msgSend(v86, "isEqualToString:", @"nl") & 1) == 0 && (objc_msgSend(v86, "isEqualToString:", @"ko") & 1) == 0 && (objc_msgSend(v86, "isEqualToString:", @"ru") & 1) == 0)
      {
        [v86 isEqualToString:@"tr"];
      }
    }

    if (qword_1ED43FF60)
    {
      v87 = 0;
      v88 = 0;
      do
      {
        v89 = (qword_1ED43FF68 + v87);
        if (*(qword_1ED43FF68 + v87 + 3) == 88)
        {
          v90 = *v89;
          v91 = *(v89 + 2);
          [(__CFString *)selfCopy[3] rangeOfCharacterFromSet:qword_1ED43FEE8 options:0 range:v85 + v90, v91];
          if (v92)
          {
            [(__CFString *)selfCopy[3] rangeOfCharacterFromSet:qword_1ED43FEF0 options:0 range:v85 + v90, v91];
            if (!v93)
            {
              *(qword_1ED43FF68 + v87 + 3) = 17;
            }
          }
        }

        ++v88;
        v87 += 16;
      }

      while (v88 < qword_1ED43FF60);
    }

    v41 = tokenizer;
    if ((v98 & 1) == 0)
    {
      [(CFStringRef *)selfCopy _calculateSentenceRangesForParagraphRange:v85, length];
    }
  }

  v119.location = 0;
  v119.length = 0;
  CFStringTokenizerSetString(v41, &stru_1EEEFDF90, v119);
  free(v100);
  return [MEMORY[0x1E695DEF0] dataWithBytes:qword_1ED43FF68 length:16 * qword_1ED43FF60];
}

- (void)_tokenizeParagraphAtIndex:(unint64_t)index requireLemmas:(BOOL)lemmas requirePartsOfSpeech:(BOOL)speech requireNamedEntities:(BOOL)entities
{
  entitiesCopy = entities;
  speechCopy = speech;
  lemmasCopy = lemmas;
  v11 = [(NSString *)self->_string length];
  if (v11 <= index)
  {
    return;
  }

  v12 = v11;
  v13 = [(NSString *)self->_string paragraphRangeForRange:index, 0];
  v15 = v14;
  if (v14 <= 0x10000)
  {
    v16 = v13;
LABEL_6:
    if (!v15)
    {
      return;
    }

    goto LABEL_7;
  }

  v16 = ((index - v13) & 0xFFFFFFFFFFFF0000) + v13;
  v15 = v13 + v14 - v16;
  if (v15 <= 0x10000)
  {
    goto LABEL_6;
  }

  v15 = 0x10000;
LABEL_7:
  [qword_1ED43FE70 lock];
  entitiesCopy = [(NSLinguisticTagger *)self _tokenDataForParagraphRange:v16 requireLemmas:v15 requirePartsOfSpeech:lemmasCopy requireNamedEntities:speechCopy, entitiesCopy];
  [qword_1ED43FE70 unlock];
  if (self->_tokenArray)
  {
    if (!entitiesCopy)
    {
      return;
    }
  }

  else
  {
    v19 = [(NSRLEArray *)[NSMutableRLEArray allocWithZone:?]];
    self->_tokenArray = v19;
    -[NSMutableRLEArray insertObject:range:](v19, "insertObject:range:", [MEMORY[0x1E695DFB0] null], 0, v12);
    if (!entitiesCopy)
    {
      return;
    }
  }

  tokenArray = self->_tokenArray;

  [tokenArray replaceObjectsInRange:v16 withObject:v15 length:{entitiesCopy, v15}];
}

- (id)_tokenDataForParagraphAtIndex:(unint64_t)index paragraphRange:(_NSRange *)range requireLemmas:(BOOL)lemmas requirePartsOfSpeech:(BOOL)speech requireNamedEntities:(BOOL)entities
{
  entitiesCopy = entities;
  speechCopy = speech;
  lemmasCopy = lemmas;
  v19 = *MEMORY[0x1E69E9840];
  v13 = [self->_tokenArray count];
  v18 = xmmword_181406480;
  if (v13 <= index || (v14 = [self->_tokenArray objectAtIndex:index effectiveRange:&v18]) == 0 || (v15 = v14, objc_msgSend(v14, "isEqual:", objc_msgSend(MEMORY[0x1E695DFB0], "null"))))
  {
    [(NSLinguisticTagger *)self _tokenizeParagraphAtIndex:index requireLemmas:lemmasCopy requirePartsOfSpeech:speechCopy requireNamedEntities:entitiesCopy, v18];
    v16 = [self->_tokenArray objectAtIndex:index effectiveRange:&v18];
    if ([v16 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}])
    {
      v15 = 0;
    }

    else
    {
      v15 = v16;
    }
  }

  if (range)
  {
    *range = v18;
  }

  return v15;
}

- (id)_tokenDataForParagraphAtIndex:(unint64_t)index paragraphRange:(_NSRange *)range tagScheme:(id)scheme
{
  scheme = [(NSLinguisticTagger *)self _tagSchemeForScheme:@"Lemma", range, scheme];
  if ([(NSLinguisticTagger *)self _tagSchemeForScheme:@"NameType"]|| [(NSLinguisticTagger *)self _tagSchemeForScheme:@"NameTypeOrLexicalClass"])
  {
    v9 = 1;
LABEL_4:
    v10 = 1;
    goto LABEL_5;
  }

  if ([(NSLinguisticTagger *)self _tagSchemeForScheme:@"LexicalClass"])
  {
    v9 = 0;
    goto LABEL_4;
  }

  v12 = [(NSLinguisticTagger *)self _tagSchemeForScheme:@"InternalClass"];
  v9 = 0;
  v10 = v12 != 0;
LABEL_5:

  return [(NSLinguisticTagger *)self _tokenDataForParagraphAtIndex:index paragraphRange:range requireLemmas:scheme != 0 requirePartsOfSpeech:v10 requireNamedEntities:v9];
}

- (void)_enumerateTagsInRange:(_NSRange)range scheme:(id)scheme options:(unint64_t)options usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  v18[6] = *MEMORY[0x1E69E9840];
  v13 = [(NSString *)self->_string length];
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3010000000;
  v18[4] = 0;
  v18[5] = 0;
  v18[3] = &unk_181543D8B;
  if (location + length > v13)
  {
    v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Range or index out of bounds", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v16);
  }

  v14 = [(NSLinguisticTagger *)self _tagSchemeForScheme:scheme];
  if (v14)
  {
    reserved = self->_reserved;
    if (reserved)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __70__NSLinguisticTagger__enumerateTagsInRange_scheme_options_usingBlock___block_invoke;
      v17[3] = &unk_1E69F7248;
      v17[4] = self;
      v17[5] = v14;
      v17[6] = block;
      v17[7] = v18;
      off_1ED43FF40(reserved, 0, location, length, options, v17);
    }
  }

  _Block_object_dispose(v18, 8);
}

void __70__NSLinguisticTagger__enumerateTagsInRange_scheme_options_usingBlock___block_invoke(void *a1, unint64_t *a2, _BYTE *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  v7 = *a2;
  v8 = off_1ED43FF48(*(a1[4] + 48), a1[5]);
  tagForNLTag(v8);
  v11 = 0;
  if (v7 >= *(*(a1[7] + 8) + 40) + *(*(a1[7] + 8) + 32))
  {
    v9 = 0uLL;
    v10 = 0;
    off_1ED43FF38(&v9, *(a1[4] + 48), 1, v7);
    *(*(a1[7] + 8) + 32) = v9;
  }

  (*(a1[6] + 16))();
  if (v8)
  {
    CFRelease(v8);
  }

  if (v11 == 1)
  {
    *a3 = v11;
  }

  objc_autoreleasePoolPop(v6);
}

@end