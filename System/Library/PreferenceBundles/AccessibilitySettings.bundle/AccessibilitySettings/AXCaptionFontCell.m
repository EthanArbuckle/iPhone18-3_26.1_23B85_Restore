@interface AXCaptionFontCell
+ (double)heightForFontName:(id)a3;
- (AXCaptionFontCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_updateLabel;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation AXCaptionFontCell

+ (double)heightForFontName:(id)a3
{
  v3 = a3;
  v4 = [UIFont fontWithName:v3 size:17.0];
  [v3 _legacy_sizeWithFont:v4];
  v6 = v5;

  return v6;
}

- (AXCaptionFontCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = AXCaptionFontCell;
  v4 = [(AXCaptionFontCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(AXCaptionFontCell *)v4 textLabel];
    [v6 setNumberOfLines:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v5 selector:"_fontSizeChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = AXCaptionFontCell;
  [(AXCaptionFontCell *)&v4 refreshCellContentsWithSpecifier:a3];
  [(AXCaptionFontCell *)self _updateLabel];
}

- (void)_updateLabel
{
  v2 = self;
  v3 = [(AXCaptionFontCell *)self specifier];
  v4 = [v3 propertyForKey:PSIDKey];

  v5 = [(AXCaptionFontCell *)v2 textLabel];
  v6 = [(AXCaptionFontCell *)v2 specifier];
  v7 = [v6 propertyForKey:PSTitleKey];
  if (v7)
  {
    [v5 setText:v7];
  }

  else
  {
    v8 = [(AXCaptionFontCell *)v2 specifier];
    v9 = [v8 name];
    [v5 setText:v9];
  }

  if ([v4 isEqualToString:@"Helvetica-Bold"])
  {
    v10 = settingsLocString(@"default.choice", @"CaptioningStyle");
    v11 = [(AXCaptionFontCell *)v2 specifier];
    v12 = [v11 name];
    v13 = [NSString stringWithFormat:v10, v12];
    [v5 setText:v13];
  }

  v14 = [v5 text];

  if (v14)
  {
    v15 = AXCaptionFonts();
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v16)
    {
      v17 = v16;
      v44 = v2;
      v45 = v5;
      v18 = *v47;
      v19 = 17.0;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v47 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v46 + 1) + 8 * i);
          v22 = [v21 objectForKeyedSubscript:@"name"];
          v23 = [v22 isEqualToString:v4];

          if (v23)
          {
            v24 = [v21 objectForKeyedSubscript:@"size"];
            [v24 floatValue];
            v19 = v25;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v17);
      v26 = v19;
      v2 = v44;
      v5 = v45;
    }

    else
    {
      v26 = 17.0;
    }

    v27 = [(AXCaptionFontCell *)v2 specifier];
    v28 = [v27 propertyForKey:@"isBold"];
    v29 = [v28 BOOLValue];

    if (v29)
    {
      v30 = 2;
    }

    else
    {
      v30 = 0;
    }

    v31 = _CTFontCreateWithNameAndSymbolicTraits();
    v32 = CTFontCopyCharacterSet(v31);
    v33 = [v5 text];
    v34 = CFCharacterSetCreateWithCharactersInString(kCFAllocatorDefault, v33);

    if (v32 && v34)
    {
      if (CFCharacterSetIsSupersetOfSet(v32, v34))
      {
        v35 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
        [v35 _scaledValueForValue:v26];
        v37 = v36;

        v38 = [v4 isEqualToString:MACaptionAppearanceSystemFontIdentifier];
        v39 = [v4 isEqual:MACaptionAppearanceMonoSystemFontIdentifier];
        v40 = [v4 isEqual:MACaptionAppearanceMediumSystemFontIdentifier];
        v41 = v37;
        if (v39)
        {
          v42 = [UIFont monospacedSystemFontOfSize:v41 weight:UIFontWeightRegular];
        }

        else if (v38)
        {
          v42 = [UIFont systemFontOfSize:v41];
        }

        else
        {
          if (v40)
          {
            [UIFont systemFontOfSize:v41 weight:UIFontWeightMedium];
          }

          else
          {
            [UIFont fontWithName:v4 size:v30 traits:v41];
          }
          v42 = ;
        }

        v43 = v42;
        [v5 setFont:v42];
      }
    }

    else if (!v32)
    {
      if (!v34)
      {
LABEL_29:
        if (v31)
        {
          CFRelease(v31);
        }

        [v5 sizeToFit];

        goto LABEL_32;
      }

LABEL_28:
      CFRelease(v34);
      goto LABEL_29;
    }

    CFRelease(v32);
    if (!v34)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_32:
}

@end