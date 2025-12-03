@interface _NSAttributedStringReplacement
+ (id)_replacementsFromMetadataArray:(id)array;
- (_NSAttributedStringReplacement)initWithIndex:(int64_t)index specifierRangeInFormatString:(_NSRange)string replacementRangeInResult:(_NSRange)result replacementKind:(int64_t)kind argument:(id)argument;
- (_NSRange)replacementRangeInResult;
- (_NSRange)specifierRangeInFormatString;
- (id)_initWithMetadata:(id)metadata;
- (void)dealloc;
@end

@implementation _NSAttributedStringReplacement

- (id)_initWithMetadata:(id)metadata
{
  v22 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = _NSAttributedStringReplacement;
  v4 = [(_NSAttributedStringReplacement *)&v21 init];
  if (v4)
  {
    v5 = [metadata objectForKeyedSubscript:*MEMORY[0x1E695E1C0]];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !v5)
    {
      goto LABEL_24;
    }

    v4->_index = [v5 integerValue];
    v6 = *MEMORY[0x1E695E1D8];
    v7 = [metadata objectForKeyedSubscript:*MEMORY[0x1E695E1E0]];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = 0;
    }

    v8 = [metadata objectForKeyedSubscript:v6];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = 0;
    }

    if (!v7 || v8 == 0)
    {
      integerValue = 0x7FFFFFFFFFFFFFFFLL;
      integerValue2 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      integerValue = [v7 integerValue];
      integerValue2 = [v8 integerValue];
    }

    v4->_specifierRangeInFormatString.location = integerValue;
    v4->_specifierRangeInFormatString.length = integerValue2;
    if (integerValue == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_24;
    }

    v12 = *MEMORY[0x1E695E1C8];
    v13 = [metadata objectForKeyedSubscript:*MEMORY[0x1E695E1D0]];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
    }

    v14 = [metadata objectForKeyedSubscript:v12];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    integerValue3 = 0x7FFFFFFFFFFFFFFFLL;
    integerValue4 = 0x7FFFFFFFFFFFFFFFLL;
    if (v13 && v15)
    {
      integerValue3 = [v13 integerValue];
      integerValue4 = [v15 integerValue];
    }

    v4->_replacementRangeInResult.location = integerValue3;
    v4->_replacementRangeInResult.length = integerValue4;
    if (integerValue3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v4->_replacementKind = 2;
      v19 = [metadata objectForKeyedSubscript:*MEMORY[0x1E695E1B8]];
      if (v19)
      {
        v4->_argument = v19;
        v4->_replacementKind = 0;
      }

      else
      {
        v20 = [metadata objectForKeyedSubscript:*MEMORY[0x1E695E1B0]];
        if (v20)
        {
          v4->_argument = v20;
          v4->_replacementKind = 1;
        }
      }
    }

    else
    {
LABEL_24:

      return 0;
    }
  }

  return v4;
}

- (_NSAttributedStringReplacement)initWithIndex:(int64_t)index specifierRangeInFormatString:(_NSRange)string replacementRangeInResult:(_NSRange)result replacementKind:(int64_t)kind argument:(id)argument
{
  length = result.length;
  location = result.location;
  v10 = string.length;
  v11 = string.location;
  v18 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = _NSAttributedStringReplacement;
  v13 = [(_NSAttributedStringReplacement *)&v17 init];
  v14 = v13;
  if (v13)
  {
    v13->_index = index;
    v13->_specifierRangeInFormatString.length = v10;
    v13->_replacementRangeInResult.location = location;
    v13->_replacementRangeInResult.length = length;
    v13->_replacementKind = kind;
    v13->_specifierRangeInFormatString.location = v11;
    if (argument)
    {
      argumentCopy = argument;
    }

    else
    {
      argumentCopy = 0;
    }

    v14->_argument = argumentCopy;
  }

  return v14;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = _NSAttributedStringReplacement;
  [(_NSAttributedStringReplacement *)&v3 dealloc];
}

+ (id)_replacementsFromMetadataArray:(id)array
{
  v16 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [array countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(array);
        }

        v9 = [[_NSAttributedStringReplacement alloc] _initWithMetadata:*(*(&v12 + 1) + 8 * v8)];
        if (v9)
        {
          [array addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [array countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v6);
  }

  return array;
}

- (_NSRange)specifierRangeInFormatString
{
  dest[2] = *MEMORY[0x1E69E9840];
  objc_copyStruct(dest, &self->_specifierRangeInFormatString, 16, 1, 0);
  v2 = dest[0];
  v3 = dest[1];
  result.length = v3;
  result.location = v2;
  return result;
}

- (_NSRange)replacementRangeInResult
{
  dest[2] = *MEMORY[0x1E69E9840];
  objc_copyStruct(dest, &self->_replacementRangeInResult, 16, 1, 0);
  v2 = dest[0];
  v3 = dest[1];
  result.length = v3;
  result.location = v2;
  return result;
}

@end