@interface _NSPersonNameComponentsStyleFormatter
- (NSArray)fallbackDescriptor;
- (NSArray)orderedKeysOfInterest;
- (NSArray)orderedTemplate;
- (_NSPersonNameComponentsStyleFormatter)initWithMasterFormatter:(id)formatter;
- (id)_delimiterBetweenString:(id)string andString:(id)andString isPhonetic:(BOOL)phonetic;
- (id)_formattedStringFromOrderedKeys:(id)keys components:(id)components attributesByRange:(id)range;
- (id)_orderedNonEmptyKeysFromComponents:(id)components;
- (id)annotatedStringFromPersonNameComponents:(id)components;
- (id)stringFromComponents:(id)components attributesByRange:(id)range;
- (void)_releaseIvars;
- (void)dealloc;
@end

@implementation _NSPersonNameComponentsStyleFormatter

- (NSArray)orderedKeysOfInterest
{
  v10[5] = *MEMORY[0x1E69E9840];
  if (![(_NSPersonNameComponentsStyleFormatter *)self keysOfInterest])
  {
    return 0;
  }

  orderedTemplate = [(_NSPersonNameComponentsStyleFormatter *)self orderedTemplate];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62___NSPersonNameComponentsStyleFormatter_orderedKeysOfInterest__block_invoke;
  v10[3] = &unk_1E69FA3E0;
  v10[4] = self;
  v4 = [(NSArray *)orderedTemplate indexesOfObjectsPassingTest:v10];
  array = [MEMORY[0x1E695DF70] array];
  isPhonetic = [(NSPersonNameComponentsFormatter *)[(_NSPersonNameComponentsStyleFormatter *)self masterFormatter] isPhonetic];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62___NSPersonNameComponentsStyleFormatter_orderedKeysOfInterest__block_invoke_2;
  v8[3] = &unk_1E69FA408;
  v9 = isPhonetic;
  v8[4] = self;
  v8[5] = array;
  [(NSIndexSet *)v4 enumerateIndexesUsingBlock:v8];
  return array;
}

- (NSArray)orderedTemplate
{
  result = self->_orderedTemplate;
  if (!result)
  {
    if ([(_NSPersonNameComponentsStyleFormatter *)self ordering]== 2)
    {
      v4 = +[NSPersonNameComponentsFormatter __familyNameFirstOrdering];
    }

    else
    {
      v4 = +[NSPersonNameComponentsFormatter __givenNameFirstOrdering];
    }

    result = [v4 copy];
    self->_orderedTemplate = result;
  }

  return result;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(_NSPersonNameComponentsStyleFormatter *)self _releaseIvars];
  v3.receiver = self;
  v3.super_class = _NSPersonNameComponentsStyleFormatter;
  [(_NSPersonNameComponentsStyleFormatter *)&v3 dealloc];
}

- (void)_releaseIvars
{
  masterFormatter = self->_masterFormatter;
}

- (_NSPersonNameComponentsStyleFormatter)initWithMasterFormatter:(id)formatter
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = _NSPersonNameComponentsStyleFormatter;
  v5 = [(_NSPersonNameComponentsStyleFormatter *)&v7 init];
  if (v5)
  {
    if (!formatter)
    {
      [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:v5 lineNumber:@"NSPersonNameComponentsFormatter.m" description:746, @"We should never have a nil master formatter"];
    }

    v5->_masterFormatter = [formatter copy];
  }

  return v5;
}

- (id)stringFromComponents:(id)components attributesByRange:(id)range
{
  v7 = [(_NSPersonNameComponentsStyleFormatter *)self _orderedNonEmptyKeysFromComponents:?];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [NSPersonNameComponentsFormatter __shortStyleRestrictionExistsForComponents:components shortStyle:[(_NSPersonNameComponentsStyleFormatter *)self shortNameFormat]]|| ![(_NSPersonNameComponentsStyleFormatter *)self fullComponentsAreValid:components]|| ![(_NSPersonNameComponentsStyleFormatter *)self isEnabled]|| [(NSPersonNameComponentsFormatter *)[(_NSPersonNameComponentsStyleFormatter *)self masterFormatter] __localizedRestrictionExistsForComponents:components ignoreUndeterminedComponents:[(_NSPersonNameComponentsStyleFormatter *)self shouldIgnoreComponentsContainingSpecialCharacters]])
  {
    v8 = 0;
  }

  else
  {
    v8 = [(_NSPersonNameComponentsStyleFormatter *)self _formattedStringFromOrderedKeys:v7 components:components attributesByRange:range];
  }

  if ([v8 length])
  {
    return v8;
  }

  if (![(_NSPersonNameComponentsStyleFormatter *)self shouldFallBack]|| [(NSPersonNameComponentsFormatter *)[(_NSPersonNameComponentsStyleFormatter *)self masterFormatter] _ignoresFallbacks]|| ![(_NSPersonNameComponentsStyleFormatter *)self fallbackStyleFormatter])
  {
    return 0;
  }

  fallbackStyleFormatter = [(_NSPersonNameComponentsStyleFormatter *)self fallbackStyleFormatter];

  return [(_NSPersonNameComponentsStyleFormatter *)fallbackStyleFormatter stringFromComponents:components attributesByRange:range];
}

- (id)_orderedNonEmptyKeysFromComponents:(id)components
{
  v7[5] = *MEMORY[0x1E69E9840];
  [(_NSPersonNameComponentsStyleFormatter *)self setOrdering:[(NSPersonNameComponentsFormatter *)[(_NSPersonNameComponentsStyleFormatter *)self masterFormatter] __computedNameOrderForComponents:components]];
  orderedKeysOfInterest = [(_NSPersonNameComponentsStyleFormatter *)self orderedKeysOfInterest];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76___NSPersonNameComponentsStyleFormatter__orderedNonEmptyKeysFromComponents___block_invoke;
  v7[3] = &unk_1E69FA3E0;
  v7[4] = components;
  return [(NSArray *)[(_NSPersonNameComponentsStyleFormatter *)self orderedKeysOfInterest] objectsAtIndexes:[(NSArray *)orderedKeysOfInterest indexesOfObjectsPassingTest:v7]];
}

- (id)_delimiterBetweenString:(id)string andString:(id)andString isPhonetic:(BOOL)phonetic
{
  if (phonetic)
  {
    goto LABEL_9;
  }

  v7 = [NSPersonNameComponentsFormatter __inferredScriptIndexFromString:?];
  v8 = [NSPersonNameComponentsFormatter __inferredScriptIndexFromString:andString];
  if (v7 - 2 > 3)
  {
    goto LABEL_9;
  }

  if (v8 - 3 < 3)
  {
LABEL_4:
    v9 = &stru_1EEEFDF90;
    goto LABEL_10;
  }

  if (v8 != 2)
  {
LABEL_9:
    v9 = @" ";
  }

  else
  {
    if (![NSPersonNameComponentsFormatter isKatakana:string]|| ![NSPersonNameComponentsFormatter isKatakana:andString])
    {
      goto LABEL_4;
    }

    v9 = @"・";
  }

LABEL_10:
  v10 = [(__CFString *)v9 copy];

  return v10;
}

- (id)_formattedStringFromOrderedKeys:(id)keys components:(id)components attributesByRange:(id)range
{
  v18 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__34;
  v16 = __Block_byref_object_dispose__34;
  v17 = +[(NSString *)NSMutableString];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __102___NSPersonNameComponentsStyleFormatter__formattedStringFromOrderedKeys_components_attributesByRange___block_invoke;
  v11[3] = &unk_1E69FA430;
  v11[4] = components;
  v11[5] = self;
  v11[7] = range;
  v11[8] = &v12;
  v11[6] = keys;
  [keys enumerateObjectsUsingBlock:v11];
  v9 = v13[5];
  _Block_object_dispose(&v12, 8);
  return v9;
}

- (id)annotatedStringFromPersonNameComponents:(id)components
{
  v10[5] = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v6 = [(_NSPersonNameComponentsStyleFormatter *)self stringFromComponents:components attributesByRange:dictionary];
  if (!v6)
  {
    if (qword_1ED43F500 != -1)
    {
      dispatch_once(&qword_1ED43F500, &__block_literal_global_1459);
    }

    if (byte_1ED43F461)
    {
      v6 = &stru_1EEEFDF90;
    }

    else
    {
      v6 = 0;
    }
  }

  v7 = [NSMutableAttributedString alloc];
  v8 = [(NSMutableAttributedString *)v7 initWithString:v6 attributes:MEMORY[0x1E695E0F8]];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81___NSPersonNameComponentsStyleFormatter_annotatedStringFromPersonNameComponents___block_invoke;
  v10[3] = &unk_1E69F3270;
  v10[4] = v8;
  [dictionary enumerateKeysAndObjectsUsingBlock:v10];
  return [(NSMutableAttributedString *)v8 copy];
}

- (NSArray)fallbackDescriptor
{
  result = self->_fallbackDescriptor;
  if (!result)
  {
    array = [MEMORY[0x1E695DF70] array];
    v5 = [MEMORY[0x1E695DFD8] setWithArray:{-[_NSPersonNameComponentsStyleFormatter orderedKeysOfInterest](self, "orderedKeysOfInterest")}];
    if (v5)
    {
      [array addObject:v5];
    }

    fallbackStyleFormatter = [(_NSPersonNameComponentsStyleFormatter *)self fallbackStyleFormatter];
    if (fallbackStyleFormatter)
    {
      fallbackStyleFormatter2 = fallbackStyleFormatter;
      do
      {
        v8 = [MEMORY[0x1E695DFD8] setWithArray:{-[_NSPersonNameComponentsStyleFormatter orderedKeysOfInterest](fallbackStyleFormatter2, "orderedKeysOfInterest")}];
        if (v8)
        {
          v9 = v8;
          if ([v8 count])
          {
            if (([array containsObject:v9] & 1) == 0)
            {
              [array addObject:v9];
            }
          }
        }

        fallbackStyleFormatter2 = [(_NSPersonNameComponentsStyleFormatter *)fallbackStyleFormatter2 fallbackStyleFormatter];
      }

      while (fallbackStyleFormatter2);
    }

    result = array;
    self->_fallbackDescriptor = result;
  }

  return result;
}

@end