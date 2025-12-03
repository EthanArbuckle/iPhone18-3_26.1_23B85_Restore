@interface AXCaptionFontCell
+ (double)heightForFontName:(id)name;
- (AXCaptionFontCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_updateLabel;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation AXCaptionFontCell

+ (double)heightForFontName:(id)name
{
  nameCopy = name;
  v4 = [UIFont fontWithName:nameCopy size:17.0];
  [nameCopy _legacy_sizeWithFont:v4];
  v6 = v5;

  return v6;
}

- (AXCaptionFontCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = AXCaptionFontCell;
  v4 = [(AXCaptionFontCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    textLabel = [(AXCaptionFontCell *)v4 textLabel];
    [textLabel setNumberOfLines:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v5 selector:"_fontSizeChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v4.receiver = self;
  v4.super_class = AXCaptionFontCell;
  [(AXCaptionFontCell *)&v4 refreshCellContentsWithSpecifier:specifier];
  [(AXCaptionFontCell *)self _updateLabel];
}

- (void)_updateLabel
{
  selfCopy = self;
  specifier = [(AXCaptionFontCell *)self specifier];
  v4 = [specifier propertyForKey:PSIDKey];

  textLabel = [(AXCaptionFontCell *)selfCopy textLabel];
  specifier2 = [(AXCaptionFontCell *)selfCopy specifier];
  v7 = [specifier2 propertyForKey:PSTitleKey];
  if (v7)
  {
    [textLabel setText:v7];
  }

  else
  {
    specifier3 = [(AXCaptionFontCell *)selfCopy specifier];
    name = [specifier3 name];
    [textLabel setText:name];
  }

  if ([v4 isEqualToString:@"Helvetica-Bold"])
  {
    v10 = settingsLocString(@"default.choice", @"CaptioningStyle");
    specifier4 = [(AXCaptionFontCell *)selfCopy specifier];
    name2 = [specifier4 name];
    v13 = [NSString stringWithFormat:v10, name2];
    [textLabel setText:v13];
  }

  text = [textLabel text];

  if (text)
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
      v44 = selfCopy;
      v45 = textLabel;
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
      selfCopy = v44;
      textLabel = v45;
    }

    else
    {
      v26 = 17.0;
    }

    specifier5 = [(AXCaptionFontCell *)selfCopy specifier];
    v28 = [specifier5 propertyForKey:@"isBold"];
    bOOLValue = [v28 BOOLValue];

    if (bOOLValue)
    {
      v30 = 2;
    }

    else
    {
      v30 = 0;
    }

    v31 = _CTFontCreateWithNameAndSymbolicTraits();
    v32 = CTFontCopyCharacterSet(v31);
    text2 = [textLabel text];
    v34 = CFCharacterSetCreateWithCharactersInString(kCFAllocatorDefault, text2);

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
        [textLabel setFont:v42];
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

        [textLabel sizeToFit];

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