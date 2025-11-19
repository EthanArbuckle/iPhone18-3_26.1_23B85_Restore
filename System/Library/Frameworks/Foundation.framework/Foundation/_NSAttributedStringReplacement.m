@interface _NSAttributedStringReplacement
+ (id)_replacementsFromMetadataArray:(id)a3;
- (_NSAttributedStringReplacement)initWithIndex:(int64_t)a3 specifierRangeInFormatString:(_NSRange)a4 replacementRangeInResult:(_NSRange)a5 replacementKind:(int64_t)a6 argument:(id)a7;
- (_NSRange)replacementRangeInResult;
- (_NSRange)specifierRangeInFormatString;
- (id)_initWithMetadata:(id)a3;
- (void)dealloc;
@end

@implementation _NSAttributedStringReplacement

- (id)_initWithMetadata:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = _NSAttributedStringReplacement;
  v4 = [(_NSAttributedStringReplacement *)&v21 init];
  if (v4)
  {
    v5 = [a3 objectForKeyedSubscript:*MEMORY[0x1E695E1C0]];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !v5)
    {
      goto LABEL_24;
    }

    v4->_index = [v5 integerValue];
    v6 = *MEMORY[0x1E695E1D8];
    v7 = [a3 objectForKeyedSubscript:*MEMORY[0x1E695E1E0]];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = 0;
    }

    v8 = [a3 objectForKeyedSubscript:v6];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = 0;
    }

    if (!v7 || v8 == 0)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = [v7 integerValue];
      v11 = [v8 integerValue];
    }

    v4->_specifierRangeInFormatString.location = v10;
    v4->_specifierRangeInFormatString.length = v11;
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_24;
    }

    v12 = *MEMORY[0x1E695E1C8];
    v13 = [a3 objectForKeyedSubscript:*MEMORY[0x1E695E1D0]];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
    }

    v14 = [a3 objectForKeyedSubscript:v12];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = 0x7FFFFFFFFFFFFFFFLL;
    v17 = 0x7FFFFFFFFFFFFFFFLL;
    if (v13 && v15)
    {
      v16 = [v13 integerValue];
      v17 = [v15 integerValue];
    }

    v4->_replacementRangeInResult.location = v16;
    v4->_replacementRangeInResult.length = v17;
    if (v16 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v4->_replacementKind = 2;
      v19 = [a3 objectForKeyedSubscript:*MEMORY[0x1E695E1B8]];
      if (v19)
      {
        v4->_argument = v19;
        v4->_replacementKind = 0;
      }

      else
      {
        v20 = [a3 objectForKeyedSubscript:*MEMORY[0x1E695E1B0]];
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

- (_NSAttributedStringReplacement)initWithIndex:(int64_t)a3 specifierRangeInFormatString:(_NSRange)a4 replacementRangeInResult:(_NSRange)a5 replacementKind:(int64_t)a6 argument:(id)a7
{
  length = a5.length;
  location = a5.location;
  v10 = a4.length;
  v11 = a4.location;
  v18 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = _NSAttributedStringReplacement;
  v13 = [(_NSAttributedStringReplacement *)&v17 init];
  v14 = v13;
  if (v13)
  {
    v13->_index = a3;
    v13->_specifierRangeInFormatString.length = v10;
    v13->_replacementRangeInResult.location = location;
    v13->_replacementRangeInResult.length = length;
    v13->_replacementKind = a6;
    v13->_specifierRangeInFormatString.location = v11;
    if (a7)
    {
      v15 = a7;
    }

    else
    {
      v15 = 0;
    }

    v14->_argument = v15;
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

+ (id)_replacementsFromMetadataArray:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v12 objects:v11 count:16];
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
          objc_enumerationMutation(a3);
        }

        v9 = [[_NSAttributedStringReplacement alloc] _initWithMetadata:*(*(&v12 + 1) + 8 * v8)];
        if (v9)
        {
          [v4 addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v6);
  }

  return v4;
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