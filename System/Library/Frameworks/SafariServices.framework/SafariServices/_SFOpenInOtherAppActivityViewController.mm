@interface _SFOpenInOtherAppActivityViewController
+ (BOOL)canOpenWithFilePath:(id)path UTI:(id)i sourceURL:(id)l;
+ (id)_activityItemsForFilePath:(id)path UTI:(id)i sourceURL:(id)l;
+ (id)_applicationsForDocumentProxy:(id)proxy;
- (_SFOpenInOtherAppActivityViewController)initWithFilePath:(id)path UTI:(id)i sourceURL:(id)l;
- (void)_prepareActivity:(id)activity;
@end

@implementation _SFOpenInOtherAppActivityViewController

+ (id)_applicationsForDocumentProxy:(id)proxy
{
  v23 = *MEMORY[0x1E69E9840];
  proxyCopy = proxy;
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v5 = [defaultWorkspace applicationsAvailableForOpeningDocument:proxyCopy];
  v6 = [v5 mutableCopy];

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

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
        bundleIdentifier2 = [v14 bundleIdentifier];
        v16 = [bundleIdentifier2 isEqualToString:bundleIdentifier];

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

+ (id)_activityItemsForFilePath:(id)path UTI:(id)i sourceURL:(id)l
{
  v34 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  iCopy = i;
  lCopy = l;
  array = [MEMORY[0x1E695DF70] array];
  if (array)
  {
    v12 = MEMORY[0x1E6963658];
    lastPathComponent = [pathCopy lastPathComponent];
    v14 = [v12 sf_documentProxyForName:lastPathComponent type:iCopy MIMEType:0 sourceURL:lCopy];

    if (v14)
    {
      v15 = [self _applicationsForDocumentProxy:v14];
      if ([v15 count])
      {
        v28 = lCopy;
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
              bundleIdentifier = [v21 bundleIdentifier];
              v24 = [(_SFOpenWithAppUIActivity *)v22 initWithApplicationIdentifier:bundleIdentifier andFilePath:pathCopy];
              [array addObject:v24];
            }

            v18 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
          }

          while (v18);
        }

        v25 = array;
        lCopy = v28;
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

+ (BOOL)canOpenWithFilePath:(id)path UTI:(id)i sourceURL:(id)l
{
  v5 = [self _activityItemsForFilePath:path UTI:i sourceURL:l];
  v6 = v5 != 0;

  return v6;
}

- (_SFOpenInOtherAppActivityViewController)initWithFilePath:(id)path UTI:(id)i sourceURL:(id)l
{
  v18[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  lCopy = l;
  iCopy = i;
  v11 = [[_SFOpenInOtherAppActivityItemsSource alloc] initWithFilePath:pathCopy];
  v12 = [objc_opt_class() _activityItemsForFilePath:pathCopy UTI:iCopy sourceURL:lCopy];

  if (v12)
  {
    v18[0] = v11;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v17.receiver = self;
    v17.super_class = _SFOpenInOtherAppActivityViewController;
    v14 = [(_SFActivityViewController *)&v17 initWithActivityItems:v13 applicationActivities:v12 sharingURL:lCopy sourceURL:lCopy];

    if (v14)
    {
      [(_SFOpenInOtherAppActivityViewController *)v14 setFilePath:pathCopy];
    }

    self = v14;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_prepareActivity:(id)activity
{
  activityCopy = activity;
  activityType = [activityCopy activityType];
  v5 = [activityType isEqualToString:*MEMORY[0x1E69CDAA0]];

  if (v5)
  {
    lastPathComponent = [(NSString *)self->_filePath lastPathComponent];
    [activityCopy setSubject:lastPathComponent];
  }
}

@end