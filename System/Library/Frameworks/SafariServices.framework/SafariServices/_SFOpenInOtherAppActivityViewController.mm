@interface _SFOpenInOtherAppActivityViewController
+ (BOOL)canOpenWithFilePath:(id)a3 UTI:(id)a4 sourceURL:(id)a5;
+ (id)_activityItemsForFilePath:(id)a3 UTI:(id)a4 sourceURL:(id)a5;
+ (id)_applicationsForDocumentProxy:(id)a3;
- (_SFOpenInOtherAppActivityViewController)initWithFilePath:(id)a3 UTI:(id)a4 sourceURL:(id)a5;
- (void)_prepareActivity:(id)a3;
@end

@implementation _SFOpenInOtherAppActivityViewController

+ (id)_applicationsForDocumentProxy:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E6963608] defaultWorkspace];
  v5 = [v4 applicationsAvailableForOpeningDocument:v3];
  v6 = [v5 mutableCopy];

  v7 = [MEMORY[0x1E696AAE8] mainBundle];
  v8 = [v7 bundleIdentifier];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [v14 bundleIdentifier];
        v16 = [v15 isEqualToString:v8];

        if (v16)
        {
          [v9 removeObject:v14];
          goto LABEL_11;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v9;
}

+ (id)_activityItemsForFilePath:(id)a3 UTI:(id)a4 sourceURL:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E695DF70] array];
  if (v11)
  {
    v12 = MEMORY[0x1E6963658];
    v13 = [v8 lastPathComponent];
    v14 = [v12 sf_documentProxyForName:v13 type:v9 MIMEType:0 sourceURL:v10];

    if (v14)
    {
      v15 = [a1 _applicationsForDocumentProxy:v14];
      if ([v15 count])
      {
        v28 = v10;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = v15;
        v16 = v15;
        v17 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v30;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v30 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v29 + 1) + 8 * i);
              v22 = [_SFOpenWithAppUIActivity alloc];
              v23 = [v21 bundleIdentifier];
              v24 = [(_SFOpenWithAppUIActivity *)v22 initWithApplicationIdentifier:v23 andFilePath:v8];
              [v11 addObject:v24];
            }

            v18 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
          }

          while (v18);
        }

        v25 = v11;
        v10 = v28;
        v15 = v27;
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

+ (BOOL)canOpenWithFilePath:(id)a3 UTI:(id)a4 sourceURL:(id)a5
{
  v5 = [a1 _activityItemsForFilePath:a3 UTI:a4 sourceURL:a5];
  v6 = v5 != 0;

  return v6;
}

- (_SFOpenInOtherAppActivityViewController)initWithFilePath:(id)a3 UTI:(id)a4 sourceURL:(id)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [[_SFOpenInOtherAppActivityItemsSource alloc] initWithFilePath:v8];
  v12 = [objc_opt_class() _activityItemsForFilePath:v8 UTI:v10 sourceURL:v9];

  if (v12)
  {
    v18[0] = v11;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v17.receiver = self;
    v17.super_class = _SFOpenInOtherAppActivityViewController;
    v14 = [(_SFActivityViewController *)&v17 initWithActivityItems:v13 applicationActivities:v12 sharingURL:v9 sourceURL:v9];

    if (v14)
    {
      [(_SFOpenInOtherAppActivityViewController *)v14 setFilePath:v8];
    }

    self = v14;
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_prepareActivity:(id)a3
{
  v7 = a3;
  v4 = [v7 activityType];
  v5 = [v4 isEqualToString:*MEMORY[0x1E69CDAA0]];

  if (v5)
  {
    v6 = [(NSString *)self->_filePath lastPathComponent];
    [v7 setSubject:v6];
  }
}

@end