@interface NSAttributedString(MKAttributedFormat)
+ (id)_mapkit_attributedStringWithBindingFormat:()MKAttributedFormat replacements:attributes:;
+ (id)_mapkit_attributedStringWithBindingFormat:()MKAttributedFormat replacements:attributes:error:;
+ (id)_mapkit_attributedStringWithBindingFormat:()MKAttributedFormat replacements:defaultReplacementAttributes:startTokenDelimiter:endTokenDelimiter:error:;
+ (void)_handleFormattingError:()MKAttributedFormat forString:;
- (id)_mapkit_attributedStringByApplyingBindingFormatReplacements:()MKAttributedFormat;
- (id)_mapkit_attributedStringByApplyingBindingFormatReplacements:()MKAttributedFormat defaultReplacementAttributes:;
- (id)_mapkit_attributedStringByApplyingBindingFormatReplacements:()MKAttributedFormat defaultReplacementAttributes:startTokenDelimiter:endTokenDelimiter:error:;
@end

@implementation NSAttributedString(MKAttributedFormat)

- (id)_mapkit_attributedStringByApplyingBindingFormatReplacements:()MKAttributedFormat
{
  v9 = 0;
  v4 = [self _mapkit_attributedStringByApplyingBindingFormatReplacements:a3 error:&v9];
  v5 = v9;
  v6 = objc_opt_class();
  string = [self string];
  [v6 _handleFormattingError:v5 forString:string];

  return v4;
}

- (id)_mapkit_attributedStringByApplyingBindingFormatReplacements:()MKAttributedFormat defaultReplacementAttributes:
{
  v10 = 0;
  v5 = [self _mapkit_attributedStringByApplyingBindingFormatReplacements:a3 defaultReplacementAttributes:a4 error:&v10];
  v6 = v10;
  v7 = objc_opt_class();
  string = [self string];
  [v7 _handleFormattingError:v6 forString:string];

  return v5;
}

- (id)_mapkit_attributedStringByApplyingBindingFormatReplacements:()MKAttributedFormat defaultReplacementAttributes:startTokenDelimiter:endTokenDelimiter:error:
{
  v41[2] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = MEMORY[0x1E695E0F8];
  if (v12)
  {
    v15 = v12;
  }

  v36 = v15;
  v16 = [v13 substringToIndex:1];
  v35 = v13;
  v17 = [v13 substringFromIndex:1];
  v18 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v19 = objc_alloc(MEMORY[0x1E696AE88]);
  string = [self string];
  v21 = [v19 initWithString:string];

  [v21 setCharactersToBeSkipped:0];
  if ([v21 isAtEnd])
  {
LABEL_21:
    v30 = [objc_alloc(objc_opt_class()) initWithAttributedString:v18];
    goto LABEL_22;
  }

  scanLocation2 = 0;
  while (1)
  {
    [v21 scanUpToString:v16 intoString:0];
    scanLocation = [v21 scanLocation];
    if (scanLocation != scanLocation2)
    {
      v24 = [self attributedSubstringFromRange:{scanLocation2, scanLocation - scanLocation2}];
      [v18 appendAttributedString:v24];
    }

    if (![v21 scanString:v16 intoString:0])
    {
      goto LABEL_20;
    }

    if (![v21 scanString:v16 intoString:0])
    {
      break;
    }

    v25 = [self attributedSubstringFromRange:{objc_msgSend(v21, "scanLocation") - 1, 1}];
    [v18 appendAttributedString:v25];
LABEL_19:

LABEL_20:
    scanLocation2 = [v21 scanLocation];
    if ([v21 isAtEnd])
    {
      goto LABEL_21;
    }
  }

  if ([v17 length] && !objc_msgSend(v21, "scanString:intoString:", v17, 0))
  {
    goto LABEL_20;
  }

  v37 = 0;
  v26 = [v21 scanUpToString:v14 intoString:&v37];
  v25 = v37;
  v27 = [v21 scanString:v14 intoString:0];
  if (v26 && v27)
  {
    v28 = [v11 objectForKeyedSubscript:v25];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v18 appendAttributedString:v28];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a7)
        {
          v40[0] = @"MKStringAttributedFormatErrorReplacementTokensKey";
          v40[1] = @"MKStringAttributedFormatErrorReplacementTokensKey";
          v41[0] = v11;
          v41[1] = v25;
          v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];
          *a7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MKStringAttributedFormatErrorDomain" code:0 userInfo:v33];
        }

        goto LABEL_29;
      }

      v29 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v28 attributes:v36];
      [v18 appendAttributedString:v29];
    }

    goto LABEL_19;
  }

  if (!a7)
  {
    goto LABEL_30;
  }

  v38 = @"MKStringAttributedFormatErrorReplacementTokensKey";
  v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:scanLocation];
  v39 = v32;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];

  *a7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MKStringAttributedFormatErrorDomain" code:1 userInfo:v28];
LABEL_29:

LABEL_30:
  v30 = 0;
LABEL_22:

  return v30;
}

+ (void)_handleFormattingError:()MKAttributedFormat forString:
{
  v11 = a3;
  v5 = a4;
  if (v11)
  {
    if ([v11 code])
    {
      if ([v11 code] != 1)
      {
        goto LABEL_7;
      }

      userInfo = [v11 userInfo];
      v7 = [userInfo objectForKeyedSubscript:@"MKStringAttributedFormatErrorReplacementTokensKey"];

      [MEMORY[0x1E695DF30] raise:@"MapsBindingFormatStringException" format:{@"The format string '%@' has an unterminated replacement marker starting at %@.", v5, v7}];
    }

    else
    {
      userInfo2 = [v11 userInfo];
      v7 = [userInfo2 objectForKeyedSubscript:@"MKStringAttributedFormatErrorReplacementTokensKey"];

      userInfo3 = [v11 userInfo];
      v10 = [userInfo3 objectForKeyedSubscript:@"MKStringAttributedFormatErrorReplacementTokensKey"];

      [MEMORY[0x1E695DF30] raise:@"MapsBindingFormatArgumentException" format:{@"The format string '%@' has specified a key '%@', but that key is not present or not a string or attributed string in the replacements dictionary (value: %@)", v5, v7, v10}];
    }
  }

LABEL_7:
}

+ (id)_mapkit_attributedStringWithBindingFormat:()MKAttributedFormat replacements:attributes:
{
  v12 = 0;
  v8 = a3;
  v9 = [self _mapkit_attributedStringWithBindingFormat:v8 replacements:a4 attributes:a5 error:&v12];
  v10 = v12;
  [self _handleFormattingError:v10 forString:v8];

  return v9;
}

+ (id)_mapkit_attributedStringWithBindingFormat:()MKAttributedFormat replacements:defaultReplacementAttributes:startTokenDelimiter:endTokenDelimiter:error:
{
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [[self alloc] initWithString:v18 attributes:v16];

  v20 = [v19 _mapkit_attributedStringByApplyingBindingFormatReplacements:v17 defaultReplacementAttributes:v16 startTokenDelimiter:v15 endTokenDelimiter:v14 error:a8];

  return v20;
}

+ (id)_mapkit_attributedStringWithBindingFormat:()MKAttributedFormat replacements:attributes:error:
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[self alloc] initWithString:v12 attributes:v10];

  v14 = [v13 _mapkit_attributedStringByApplyingBindingFormatReplacements:v11 defaultReplacementAttributes:v10 error:a6];

  return v14;
}

@end