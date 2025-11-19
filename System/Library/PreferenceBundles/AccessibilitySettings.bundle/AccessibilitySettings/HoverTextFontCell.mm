@interface HoverTextFontCell
+ (double)heightForFontName:(id)a3;
- (HoverTextFontCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)_updateLabel;
@end

@implementation HoverTextFontCell

+ (double)heightForFontName:(id)a3
{
  v3 = a3;
  v4 = [UIFont fontWithName:v3 size:17.0];
  [v3 _legacy_sizeWithFont:v4];
  v6 = v5;

  return v6;
}

- (HoverTextFontCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v12.receiver = self;
  v12.super_class = HoverTextFontCell;
  v7 = a5;
  v8 = [(HoverTextFontCell *)&v12 initWithStyle:a3 reuseIdentifier:a4 specifier:v7];
  [(HoverTextFontCell *)v8 setSpecifier:v7, v12.receiver, v12.super_class];

  v9 = [(HoverTextFontCell *)v8 textLabel];
  [v9 setNumberOfLines:0];

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 addObserver:v8 selector:"_fontSizeChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

  [(HoverTextFontCell *)v8 _updateLabel];
  return v8;
}

- (void)_updateLabel
{
  v3 = [(HoverTextFontCell *)self specifier];
  v22 = [v3 propertyForKey:PSIDKey];

  v4 = [(HoverTextFontCell *)self textLabel];
  v5 = [(HoverTextFontCell *)self specifier];
  v6 = [v5 propertyForKey:PSTitleKey];
  if (v6)
  {
    [v4 setText:v6];
  }

  else
  {
    v7 = [(HoverTextFontCell *)self specifier];
    v8 = [v7 name];
    [v4 setText:v8];
  }

  if ([v22 isEqualToString:@"Helvetica-Bold"])
  {
    v9 = settingsLocString(@"HOVER_TEXT_TEXT_STYLE_DEFAULT_CHOICE", @"Accessibility");
    v10 = [(HoverTextFontCell *)self specifier];
    v11 = [v10 name];
    v12 = [NSString stringWithFormat:v9, v11];
    [v4 setText:v12];
  }

  v13 = [v4 text];

  if (v13)
  {
    v14 = _CTFontCreateWithNameAndSymbolicTraits();
    v15 = CTFontCopyCharacterSet(v14);
    v16 = [v4 text];
    v17 = CFCharacterSetCreateWithCharactersInString(kCFAllocatorDefault, v16);

    if (v15 && v17)
    {
      if (CFCharacterSetIsSupersetOfSet(v15, v17))
      {
        v18 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
        [v18 _scaledValueForValue:17.0];
        v20 = v19;

        v21 = [UIFont fontWithName:v22 size:0 traits:v20];
        [v4 setFont:v21];
      }
    }

    else if (!v15)
    {
LABEL_13:
      if (v17)
      {
        CFRelease(v17);
      }

      if (v14)
      {
        CFRelease(v14);
      }

      [v4 sizeToFit];
      goto LABEL_18;
    }

    CFRelease(v15);
    goto LABEL_13;
  }

LABEL_18:
}

@end