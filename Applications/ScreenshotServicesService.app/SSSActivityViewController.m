@interface SSSActivityViewController
- (BOOL)didRenameScreenshot;
- (BOOL)isSharingMixedScreenshots;
- (BOOL)isSharingMultipleScreenScreenshots;
- (BOOL)isSharingSingleFullPageScreenshot;
- (BOOL)isSharingSingleFullPageScreenshotAsImageUsingAutomatic;
- (BOOL)isSharingSingleFullPageScreenshotAsPDFUsingAutomatic;
- (BOOL)isSharingSingleScreenScreenshot;
- (BOOL)screenshotItemProvidersContainsPDF;
- (BOOL)screenshotItemProvidersContainsPDFAsImage;
- (SSSActivityViewController)initWithActivityItems:(id)a3 applicationActivities:(id)a4 editMode:(int64_t)a5;
- (id)_bestFormatForScreenshotItemProvider:(id)a3;
- (id)_customizationGroupsForActivityViewController:(id)a3;
- (id)_updateItemProvidersWithOptions;
- (id)imageFormatGroup;
- (id)renameGroup;
- (id)screenshotItemProviders;
- (id)screenshots;
- (id)sendAsGroup;
- (void)didChangeRenameOption;
- (void)didChangeShareOptions;
- (void)reportStatistics;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SSSActivityViewController

- (id)screenshotItemProviders
{
  v3 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(SSSActivityViewController *)self activityItemProviders];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (id)screenshots
{
  v3 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(SSSActivityViewController *)self screenshotItemProviders];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 screenshot];

        if (v10)
        {
          v11 = [v9 screenshot];
          [v3 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [v3 copy];

  return v12;
}

- (BOOL)didRenameScreenshot
{
  v2 = [(SSSActivityViewController *)self renameOption];
  v3 = [v2 length] != 0;

  return v3;
}

- (BOOL)screenshotItemProvidersContainsPDF
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(SSSActivityViewController *)self activityItemProviders:0];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)screenshotItemProvidersContainsPDFAsImage
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(SSSActivityViewController *)self activityItemProviders:0];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)isSharingSingleFullPageScreenshot
{
  if ([(SSSActivityViewController *)self editMode]!= 1)
  {
    return 0;
  }

  v3 = [(SSSActivityViewController *)self screenshots];
  v4 = [v3 count] == 1;

  return v4;
}

- (BOOL)isSharingSingleFullPageScreenshotAsImageUsingAutomatic
{
  if (![(SSSActivityViewController *)self isSharingSingleFullPageScreenshot]|| [(SSSActivityViewController *)self editMode])
  {
    return 0;
  }

  return [(SSSActivityViewController *)self screenshotItemProvidersContainsPDF];
}

- (BOOL)isSharingSingleFullPageScreenshotAsPDFUsingAutomatic
{
  if (![(SSSActivityViewController *)self isSharingSingleFullPageScreenshot]|| [(SSSActivityViewController *)self editMode])
  {
    return 0;
  }

  return [(SSSActivityViewController *)self screenshotItemProvidersContainsPDFAsImage];
}

- (BOOL)isSharingSingleScreenScreenshot
{
  if ([(SSSActivityViewController *)self editMode])
  {
    return 0;
  }

  v4 = [(SSSActivityViewController *)self screenshots];
  v3 = [v4 count] == 1;

  return v3;
}

- (BOOL)isSharingMultipleScreenScreenshots
{
  if ([(SSSActivityViewController *)self editMode])
  {
    return 0;
  }

  v4 = [(SSSActivityViewController *)self screenshots];
  v3 = [v4 count] > 1;

  return v3;
}

- (BOOL)isSharingMixedScreenshots
{
  if ([(SSSActivityViewController *)self editMode]!= 1)
  {
    return 0;
  }

  v3 = [(SSSActivityViewController *)self screenshots];
  v4 = [v3 count] > 1;

  return v4;
}

- (SSSActivityViewController)initWithActivityItems:(id)a3 applicationActivities:(id)a4 editMode:(int64_t)a5
{
  v8 = a3;
  v16.receiver = self;
  v16.super_class = SSSActivityViewController;
  v9 = [(SSSActivityViewController *)&v16 initWithActivityItems:v8 applicationActivities:a4];
  v10 = v9;
  if (v9)
  {
    [(SSSActivityViewController *)v9 setActivityItemProviders:v8];
    [(SSSActivityViewController *)v10 setObjectManipulationDelegate:v10];
    v10->_editMode = a5;
    renameOption = v10->_renameOption;
    v10->_renameOption = 0;

    if ([(SSSActivityViewController *)v10 isSharingSingleFullPageScreenshot])
    {
      v12 = [(SSSActivityViewController *)v10 screenshots];
      v13 = [v12 firstObject];
      v10->_pdfCanBeConvertedToImage = [v13 pdfCanBeConvertedToImage];
    }

    else
    {
      v10->_pdfCanBeConvertedToImage = 0;
    }

    if ([(SSSActivityViewController *)v10 pdfCanBeConvertedToImage])
    {
      UsedFullPageScreenshotShareAsOption = _SSGetLastUsedFullPageScreenshotShareAsOption();
    }

    else
    {
      UsedFullPageScreenshotShareAsOption = 0;
    }

    v10->_shareAsOption = UsedFullPageScreenshotShareAsOption;
    v10->_shareFormatOption = 0;
    _SSSetLastUsedScreenshotShareFormatOption();
  }

  return v10;
}

- (void)viewWillAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = SSSActivityViewController;
  [(SSSActivityViewController *)&v9 viewWillAppear:a3];
  if (_UISolariumEnabled())
  {
    v4 = [(SSSActivityViewController *)self view];
    v5 = +[UIColor systemBackgroundColor];
    [v4 setBackgroundColor:v5];
  }

  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001976C;
  v6[3] = &unk_1000BA618;
  objc_copyWeak(&v7, &location);
  [(SSSActivityViewController *)self setPreCompletionHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)reportStatistics
{
  v3 = [(SSSActivityViewController *)self shareAsOption];
  if (v3)
  {
    if (v3 == 2)
    {
      v4 = +[SSStatisticsManager sharedStatisticsManager];
      [v4 didShareFullPageScreenshotAsPDF];
    }

    else
    {
      if (v3 != 1)
      {
        goto LABEL_17;
      }

      v4 = +[SSStatisticsManager sharedStatisticsManager];
      [v4 didShareFullPageScreenshotAsImage];
    }
  }

  else if ([(SSSActivityViewController *)self isSharingSingleFullPageScreenshotAsImageUsingAutomatic])
  {
    v4 = +[SSStatisticsManager sharedStatisticsManager];
    [v4 didShareFullPageScreenshotAsAutomaticImage];
  }

  else if ([(SSSActivityViewController *)self isSharingSingleFullPageScreenshotAsPDFUsingAutomatic])
  {
    v4 = +[SSStatisticsManager sharedStatisticsManager];
    [v4 didShareFullPageScreenshotAsAutomaticPDF];
  }

  else if ([(SSSActivityViewController *)self isSharingSingleScreenScreenshot])
  {
    v4 = +[SSStatisticsManager sharedStatisticsManager];
    [v4 didShareScreenSingleScreenshots];
  }

  else if ([(SSSActivityViewController *)self isSharingMultipleScreenScreenshots])
  {
    v4 = +[SSStatisticsManager sharedStatisticsManager];
    [v4 didShareScreenMultipleScreenshots];
  }

  else
  {
    if (![(SSSActivityViewController *)self isSharingMixedScreenshots])
    {
      goto LABEL_17;
    }

    v4 = +[SSStatisticsManager sharedStatisticsManager];
    [v4 didShareFullPageMixedScreenshots];
  }

LABEL_17:
  if ([(SSSActivityViewController *)self didRenameScreenshot])
  {
    v5 = +[SSStatisticsManager sharedStatisticsManager];
    [v5 didRenameScreenshot];
  }
}

- (id)_customizationGroupsForActivityViewController:(id)a3
{
  v4 = +[NSMutableArray array];
  if ([(SSSActivityViewController *)self pdfCanBeConvertedToImage])
  {
    [(SSSActivityViewController *)self sendAsGroup];
  }

  else
  {
    [(SSSActivityViewController *)self imageFormatGroup];
  }
  v5 = ;
  [v4 addObject:v5];

  v6 = [(SSSActivityViewController *)self renameGroup];
  [v4 addObject:v6];

  return v4;
}

- (id)imageFormatGroup
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"SHARING_OPTIONS_FORMAT_AUTOMATIC" value:@"Automatic" table:0];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"SHARING_OPTIONS_FORMAT_CURRENT" value:@"Current" table:0];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"SHARING_OPTIONS_FORMAT_MOST_COMPATIBLE" value:@"Most Compatible" table:0];

  v24[0] = v4;
  v24[1] = v6;
  v24[2] = v8;
  v9 = [NSArray arrayWithObjects:v24 count:3];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"SHARING_OPTIONS_FORMAT_FOOTER_TEXT" value:@"Choose Automatic for the best format for the destination or Current to prevent image conversions. Screenshots may be converted to PNG if you choose Most Compatible." table:0];

  objc_initWeak(&location, self);
  v12 = [(SSSActivityViewController *)self shareFormatOption];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100019D00;
  v20[3] = &unk_1000BA640;
  objc_copyWeak(&v21, &location);
  v13 = [_UIActivityItemCustomization pickerCustomizationWithIdentifier:@"SHARING_OPTIONS_SEND_AS_PICKER" options:v9 selectedOptionIndex:v12 footerText:v11 valueChangedHandler:v20];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"SHARING_OPTIONS_FORMAT_GROUP_TITLE" value:@"Format" table:0];

  v16 = [_UIActivityItemCustomizationGroup alloc];
  v23 = v13;
  v17 = [NSArray arrayWithObjects:&v23 count:1];
  v18 = [v16 _initGroupWithName:v15 identifier:@"SHARING_OPTIONS_FORMAT" customizations:v17];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  return v18;
}

- (id)sendAsGroup
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"SHARING_OPTIONS_SEND_AS_AUTOMATIC" value:@"Automatic" table:0];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"SHARING_OPTIONS_SEND_AS_IMAGE" value:@"Single Image" table:0];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"SHARING_OPTIONS_SEND_AS_PDF" value:@"PDF Document" table:0];

  v24[0] = v4;
  v24[1] = v6;
  v24[2] = v8;
  v9 = [NSArray arrayWithObjects:v24 count:3];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"SHARING_OPTIONS_SEND_AS_GROUP_FOOTER_TEXT" value:@"Automatic selects the best format based on the screenshot being shared." table:0];

  objc_initWeak(&location, self);
  v12 = [(SSSActivityViewController *)self shareAsOption];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10001A098;
  v20[3] = &unk_1000BA640;
  objc_copyWeak(&v21, &location);
  v13 = [_UIActivityItemCustomization pickerCustomizationWithIdentifier:@"SHARING_OPTIONS_SEND_AS_PICKER" options:v9 selectedOptionIndex:v12 footerText:v11 valueChangedHandler:v20];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"SHARING_OPTIONS_SEND_AS_GROUP_TITLE" value:@"Send as" table:0];

  v16 = [_UIActivityItemCustomizationGroup alloc];
  v23 = v13;
  v17 = [NSArray arrayWithObjects:&v23 count:1];
  v18 = [v16 _initGroupWithName:v15 identifier:@"SHARING_OPTIONS_SEND_AS_GROUP" customizations:v17];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  return v18;
}

- (id)renameGroup
{
  v3 = [(SSSActivityViewController *)self screenshots];
  v4 = [v3 count] == 1;

  v5 = [(SSSActivityViewController *)self renameOption];
  v6 = v5;
  if (v4)
  {
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v11 = [(SSSActivityViewController *)self screenshots];
      v12 = [v11 firstObject];
      v7 = [v12 filename];
    }

    v9 = [(SSSActivityViewController *)self screenshots];
    v13 = [v9 firstObject];
    v10 = [v13 filename];
  }

  else
  {
    v8 = &stru_1000BC350;
    if (v5)
    {
      v8 = v5;
    }

    v7 = v8;

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"SHARING_OPTIONS_RENAME_MULTIPLE_PLACEHOLDER" value:@"Multiple names" table:0];
  }

  objc_initWeak(&location, self);
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_10001A400;
  v24 = &unk_1000BA668;
  objc_copyWeak(&v25, &location);
  v14 = [_UIActivityItemCustomization textFieldCustomizationWithText:v7 placeholder:v10 identifier:@"SHARING_OPTIONS_RENAME_GROUP" footerText:0 textChangedHandler:&v21];
  v15 = [NSBundle mainBundle:v21];
  v16 = [v15 localizedStringForKey:@"SHARING_OPTIONS_RENAME_GROUP_TITLE" value:@"File Name" table:0];

  v17 = [_UIActivityItemCustomizationGroup alloc];
  v27 = v14;
  v18 = [NSArray arrayWithObjects:&v27 count:1];
  v19 = [v17 _initGroupWithName:v16 identifier:@"SHARING_OPTIONS_RENAME_GROUP" customizations:v18];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  return v19;
}

- (void)didChangeRenameOption
{
  v3 = [(SSSActivityViewController *)self renameOption];

  if (v3)
  {
    v4 = [(SSSActivityViewController *)self renameOption];
    v5 = +[NSCharacterSet whitespaceCharacterSet];
    v6 = [v4 stringByTrimmingCharactersInSet:v5];

    if (![v6 length] || -[SSSActivityViewController isSharingSingleFullPageScreenshot](self, "isSharingSingleFullPageScreenshot") && (-[SSSActivityViewController screenshots](self, "screenshots"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "firstObject"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "filename"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v6, "isEqualToString:", v9), v9, v8, v7, (v10 & 1) != 0))
    {
      v11 = 0;
    }

    else
    {
      v11 = v6;
    }

    [(SSSActivityViewController *)self setRenameOption:v11];
  }

  [(SSSActivityViewController *)self didChangeShareOptions];
}

- (void)didChangeShareOptions
{
  v4 = [(SSSActivityViewController *)self _updateItemProvidersWithOptions];
  [(SSSActivityViewController *)self setActivityItemProviders:v4];
  v3 = +[NSArray array];
  [(SSSActivityViewController *)self _updateActivityItems:v3];

  [(SSSActivityViewController *)self _updateActivityItems:self->_activityItemProviders];
}

- (id)_updateItemProvidersWithOptions
{
  v3 = +[NSMutableArray array];
  v4 = [(SSSActivityViewController *)self activityItemProviders];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = [(SSSActivityViewController *)self activityItemProviders];
      v9 = [v8 objectAtIndex:v7];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      [v3 addObject:v9];
LABEL_19:

      ++v7;
      v18 = [(SSSActivityViewController *)self activityItemProviders];
      v19 = [v18 count];

      if (v7 >= v19)
      {
        goto LABEL_20;
      }
    }

    v10 = v9;
    v11 = [(SSSActivityViewController *)self shareAsOption];
    if (v11 == 2)
    {
      v13 = SSSScreenshotItemProviderPDF;
    }

    else
    {
      if (v11 != 1)
      {
        if (v11)
        {
          v12 = 0;
        }

        else
        {
          v12 = [(SSSActivityViewController *)self _bestFormatForScreenshotItemProvider:v10];
        }

        goto LABEL_13;
      }

      v13 = SSSScreenshotItemProviderPDFAsImage;
    }

    v14 = [v13 alloc];
    v15 = [v10 screenshot];
    v12 = [v14 initWithScreenshot:v15];

LABEL_13:
    if ([(SSSActivityViewController *)self didRenameScreenshot])
    {
      v16 = [(SSSActivityViewController *)self renameOption];
      if (v6)
      {
        v17 = [NSString stringWithFormat:@"%@ %li", v16, v6];
        [v12 setOverrideName:v17];
      }

      else
      {
        [v12 setOverrideName:v16];
      }
    }

    [v3 addObject:v12];
    ++v6;

    goto LABEL_19;
  }

LABEL_20:

  return v3;
}

- (id)_bestFormatForScreenshotItemProvider:(id)a3
{
  v4 = a3;
  if ([(SSSActivityViewController *)self isSharingSingleFullPageScreenshot]&& [(SSSActivityViewController *)self pdfCanBeConvertedToImage])
  {
    v5 = [(SSSActivityViewController *)self screenshots];
    v6 = [v5 firstObject];
    v7 = [v6 PDFDocument];
    [v7 pageCount];
  }

  v8 = objc_alloc(objc_opt_class());
  v9 = [v4 screenshot];
  v10 = [v8 initWithScreenshot:v9];

  return v10;
}

@end