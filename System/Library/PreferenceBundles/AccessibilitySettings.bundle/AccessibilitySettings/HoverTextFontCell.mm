@interface HoverTextFontCell
+ (double)heightForFontName:(id)name;
- (HoverTextFontCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)_updateLabel;
@end

@implementation HoverTextFontCell

+ (double)heightForFontName:(id)name
{
  nameCopy = name;
  v4 = [UIFont fontWithName:nameCopy size:17.0];
  [nameCopy _legacy_sizeWithFont:v4];
  v6 = v5;

  return v6;
}

- (HoverTextFontCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v12.receiver = self;
  v12.super_class = HoverTextFontCell;
  specifierCopy = specifier;
  v8 = [(HoverTextFontCell *)&v12 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  [(HoverTextFontCell *)v8 setSpecifier:specifierCopy, v12.receiver, v12.super_class];

  textLabel = [(HoverTextFontCell *)v8 textLabel];
  [textLabel setNumberOfLines:0];

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 addObserver:v8 selector:"_fontSizeChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

  [(HoverTextFontCell *)v8 _updateLabel];
  return v8;
}

- (void)_updateLabel
{
  specifier = [(HoverTextFontCell *)self specifier];
  v22 = [specifier propertyForKey:PSIDKey];

  textLabel = [(HoverTextFontCell *)self textLabel];
  specifier2 = [(HoverTextFontCell *)self specifier];
  v6 = [specifier2 propertyForKey:PSTitleKey];
  if (v6)
  {
    [textLabel setText:v6];
  }

  else
  {
    specifier3 = [(HoverTextFontCell *)self specifier];
    name = [specifier3 name];
    [textLabel setText:name];
  }

  if ([v22 isEqualToString:@"Helvetica-Bold"])
  {
    v9 = settingsLocString(@"HOVER_TEXT_TEXT_STYLE_DEFAULT_CHOICE", @"Accessibility");
    specifier4 = [(HoverTextFontCell *)self specifier];
    name2 = [specifier4 name];
    v12 = [NSString stringWithFormat:v9, name2];
    [textLabel setText:v12];
  }

  text = [textLabel text];

  if (text)
  {
    v14 = _CTFontCreateWithNameAndSymbolicTraits();
    v15 = CTFontCopyCharacterSet(v14);
    text2 = [textLabel text];
    v17 = CFCharacterSetCreateWithCharactersInString(kCFAllocatorDefault, text2);

    if (v15 && v17)
    {
      if (CFCharacterSetIsSupersetOfSet(v15, v17))
      {
        v18 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
        [v18 _scaledValueForValue:17.0];
        v20 = v19;

        v21 = [UIFont fontWithName:v22 size:0 traits:v20];
        [textLabel setFont:v21];
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

      [textLabel sizeToFit];
      goto LABEL_18;
    }

    CFRelease(v15);
    goto LABEL_13;
  }

LABEL_18:
}

@end