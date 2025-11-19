@interface _NSPersonNameComponentsStyleFormatterAbbreviated
- (id)_formattedStringFromOrderedKeys:(id)a3 components:(id)a4 attributesByRange:(id)a5;
- (id)abbreviatedKeys;
- (id)fallbackStyleFormatter;
- (id)keysOfInterest;
@end

@implementation _NSPersonNameComponentsStyleFormatterAbbreviated

- (id)keysOfInterest
{
  result = self->super._keysOfInterest;
  if (!result)
  {
    result = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"givenName", @"familyName", 0}];
    self->super._keysOfInterest = result;
  }

  return result;
}

- (id)abbreviatedKeys
{
  v5[2] = *MEMORY[0x1E69E9840];
  result = self->super._abbreviatedKeys;
  if (!result)
  {
    v4 = objc_alloc(MEMORY[0x1E695DFD8]);
    v5[0] = @"givenName";
    v5[1] = @"familyName";
    result = [v4 initWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v5, 2)}];
    self->super._abbreviatedKeys = result;
  }

  return result;
}

- (id)fallbackStyleFormatter
{
  v2 = [[_NSPersonNameComponentsStyleFormatterShort alloc] initWithMasterFormatter:[(_NSPersonNameComponentsStyleFormatter *)self masterFormatter]];

  return v2;
}

- (id)_formattedStringFromOrderedKeys:(id)a3 components:(id)a4 attributesByRange:(id)a5
{
  v48 = *MEMORY[0x1E69E9840];
  v7 = [NSPersonNameComponentsFormatter __abbreviatedNameFormatForPersonNameComponents:a4];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a3, "count")}];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v9 = [a3 countByEnumeratingWithState:&v44 objects:v43 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v45;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v45 != v11)
        {
          objc_enumerationMutation(a3);
        }

        v13 = *(*(&v44 + 1) + 8 * i);
        if (+[NSPersonNameComponentsFormatter __inferredScriptIndexFromString:](NSPersonNameComponentsFormatter, "__inferredScriptIndexFromString:", [a4 valueForKey:v13]) != 1)
        {
          [v8 addObject:v13];
        }
      }

      v10 = [a3 countByEnumeratingWithState:&v44 objects:v43 count:16];
    }

    while (v10);
  }

  if ((v7 - 1) < 4)
  {
    [(_NSPersonNameComponentsStyleFormatter *)self masterFormatter];
    v14 = [objc_opt_class() __shouldFallbackToGivenNameInitialForAbbreviatedNameFormatFamilyNameOnly];
    v15 = v14;
    if ((v7 & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      v42[0] = @"givenName";
      v42[1] = @"familyName";
      v16 = MEMORY[0x1E695DEC8];
      v17 = v42;
    }

    else
    {
      if (!((v7 != 2) | v14 & 1))
      {
        v41 = @"familyName";
        v16 = MEMORY[0x1E695DEC8];
        v17 = &v41;
        v19 = 1;
LABEL_20:
        v21 = [v16 arrayWithObjects:v17 count:v19];
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v22 = [v21 countByEnumeratingWithState:&v36 objects:v35 count:16];
        if (v22)
        {
          v23 = v22;
          v31 = v15;
          v24 = *v37;
LABEL_22:
          v25 = 0;
          while (1)
          {
            if (*v37 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v36 + 1) + 8 * v25);
            if ([v8 containsObject:v26])
            {
              v27 = [a4 valueForKeyPath:v26];
              if ([v27 length])
              {
                break;
              }
            }

            if (v23 == ++v25)
            {
              v23 = [v21 countByEnumeratingWithState:&v36 objects:v35 count:16];
              if (v23)
              {
                goto LABEL_22;
              }

              v26 = 0;
              v27 = 0;
              break;
            }
          }

          v15 = v31;
        }

        else
        {
          v26 = 0;
          v27 = 0;
        }

        if ((v7 != 2) | v15 & 1)
        {
          if ((v7 - 3) < 2)
          {
            goto LABEL_38;
          }
        }

        else if ([(NSString *)v27 __graphemeCount]> 2)
        {
          v27 = 0;
          goto LABEL_39;
        }

        if ([(NSString *)v27 __graphemeCount]>= 3)
        {
LABEL_38:
          v27 = [NSPersonNameComponentsFormatter __initialsForString:v27];
        }

LABEL_39:
        v28 = objc_alloc_init(NSPersonNameComponents);
        v29 = v28;
        if (v26)
        {
          [(NSPersonNameComponents *)v28 setValue:v27 forKey:v26];
        }

        v20 = [[[_NSPersonNameComponentsStyleFormatterLong alloc] initWithMasterFormatter:[(_NSPersonNameComponentsStyleFormatter *)self masterFormatter]] _formattedStringFromOrderedKeys:v8 components:v29 attributesByRange:a5];
        goto LABEL_42;
      }

      v40[0] = @"familyName";
      v40[1] = @"givenName";
      v16 = MEMORY[0x1E695DEC8];
      v17 = v40;
    }

    v19 = 2;
    goto LABEL_20;
  }

  if (v7 != 6)
  {
    v34.receiver = self;
    v34.super_class = _NSPersonNameComponentsStyleFormatterAbbreviated;
    v20 = [(_NSPersonNameComponentsStyleFormatter *)&v34 _formattedStringFromOrderedKeys:v8 components:a4 attributesByRange:a5];
LABEL_42:
    v18 = v20;
    return [v18 uppercaseStringWithLocale:{+[NSPersonNameComponentsFormatter __currentLocale](NSPersonNameComponentsFormatter, "__currentLocale")}];
  }

  v18 = 0;
  return [v18 uppercaseStringWithLocale:{+[NSPersonNameComponentsFormatter __currentLocale](NSPersonNameComponentsFormatter, "__currentLocale")}];
}

@end