@interface CNKeyboardSettings
+ (BOOL)contentsIsSingleValue:(id)a3;
+ (BOOL)usesTextSuggestionDelegate:(id)a3;
+ (id)newKeyboardSettingsForProperty:(id)a3;
+ (int64_t)autocapitalizationTypeFromDictionary:(id)a3;
+ (int64_t)autocorrectionTypeFromDictionary:(id)a3;
+ (int64_t)keyboardTypeFromDictionary:(id)a3;
@end

@implementation CNKeyboardSettings

+ (BOOL)usesTextSuggestionDelegate:(id)a3
{
  v3 = [a3 valueForKey:@"suggest-delegate"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 caseInsensitiveCompare:@"yes"] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)contentsIsSingleValue:(id)a3
{
  v3 = [a3 valueForKey:@"single"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 caseInsensitiveCompare:@"yes"] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (int64_t)autocapitalizationTypeFromDictionary:(id)a3
{
  v3 = [a3 valueForKey:@"caps"];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_8;
  }

  if (![v3 caseInsensitiveCompare:@"all"])
  {
    v5 = 3;
    goto LABEL_11;
  }

  if ([v4 caseInsensitiveCompare:@"word"])
  {
    if ([v4 caseInsensitiveCompare:@"none"])
    {
      if ([v4 caseInsensitiveCompare:@"sentence"])
      {
        v5 = 1;
      }

      else
      {
        v5 = 2;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
LABEL_8:
    v5 = 1;
  }

LABEL_11:

  return v5;
}

+ (int64_t)autocorrectionTypeFromDictionary:(id)a3
{
  v3 = [a3 valueForKey:@"suggest"];
  v4 = v3;
  if (v3)
  {
    if ([v3 caseInsensitiveCompare:@"context"])
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

+ (int64_t)keyboardTypeFromDictionary:(id)a3
{
  v3 = [a3 valueForKey:@"fmt"];
  v4 = v3;
  if (v3 && [v3 caseInsensitiveCompare:@"alpha"])
  {
    if ([v4 caseInsensitiveCompare:@"num"])
    {
      if ([v4 caseInsensitiveCompare:@"phone"])
      {
        if ([v4 caseInsensitiveCompare:@"url"])
        {
          if ([v4 caseInsensitiveCompare:@"email"])
          {
            v5 = 0;
          }

          else
          {
            v5 = 7;
          }
        }

        else
        {
          v5 = 3;
        }
      }

      else
      {
        v5 = 5;
      }
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)newKeyboardSettingsForProperty:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x1E695C330]])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"phone", @"none", @"never", &stru_1F0CE7398, @"yes", @"yes", 0}];
    goto LABEL_10;
  }

  if ([v3 isEqualToString:*MEMORY[0x1E695C320]])
  {
    v5 = objc_alloc(MEMORY[0x1E695DEC8]);
    v13 = @" ";
    v6 = @"context";
    v7 = @"sentence";
    goto LABEL_5;
  }

  if ([v3 isEqualToString:*MEMORY[0x1E695C418]])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"url", @"none", @"never", &stru_1F0CE7398, @"no", @"no", 0}];
  }

  else
  {
    if (![v3 isEqualToString:*MEMORY[0x1E695C208]])
    {
      if ([v3 isEqualToString:*MEMORY[0x1E695C2B0]])
      {
        v5 = objc_alloc(MEMORY[0x1E695DEC8]);
      }

      else
      {
        v12 = [v3 isEqualToString:*MEMORY[0x1E695C3D0]];
        v5 = objc_alloc(MEMORY[0x1E695DEC8]);
        if (!v12)
        {
          v13 = &stru_1F0CE7398;
          v6 = @"never";
          v7 = @"word";
          goto LABEL_5;
        }
      }

      v13 = &stru_1F0CE7398;
      v6 = @"never";
      v7 = @"none";
LABEL_5:
      v4 = [v5 initWithObjects:{@"alpha", v7, v6, v13, @"no", @"no", 0}];
      goto LABEL_10;
    }

    v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"email", @"none", @"never", &stru_1F0CE7398, @"no", @"no", 0}];
  }

LABEL_10:
  v8 = v4;
  if (v4)
  {
    v9 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"fmt", @"caps", @"suggest", @"sep", @"single", @"suggest-delegate", 0}];
    v10 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjects:v8 forKeys:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end