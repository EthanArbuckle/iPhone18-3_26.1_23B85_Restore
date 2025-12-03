@interface MFComposeStyleSelectorButton
+ (id)buttonWithStyleType:(int64_t)type target:(id)target action:(SEL)action;
+ (id)buttonWithStyleType:(int64_t)type target:(id)target action:(SEL)action maximumContentSizeCategory:(id)category;
- (MFComposeStyleSelectorButton)initWithCoder:(id)coder;
- (MFComposeStyleSelectorButton)initWithFrame:(CGRect)frame;
- (id)_imageForTextStyleType:(int64_t)type maximumContentSizeCategory:(id)category;
- (void)_commonInit;
- (void)setSelected:(BOOL)selected;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MFComposeStyleSelectorButton

+ (id)buttonWithStyleType:(int64_t)type target:(id)target action:(SEL)action
{
  v5 = [MFComposeStyleSelectorButton buttonWithStyleType:type target:target action:action maximumContentSizeCategory:*MEMORY[0x1E69DDC90]];

  return v5;
}

+ (id)buttonWithStyleType:(int64_t)type target:(id)target action:(SEL)action maximumContentSizeCategory:(id)category
{
  targetCopy = target;
  categoryCopy = category;
  v11 = [MFComposeStyleSelectorButton buttonWithType:0];
  v11[93] = type;
  v11[94] = categoryCopy;
  v12 = [MFComposeTextStyle accessibilityIdenitifierForTextStyleType:type];
  [v11 setAccessibilityIdentifier:v12];

  v13 = [v11 _imageForTextStyleType:type maximumContentSizeCategory:categoryCopy];
  [v11 setImage:v13 forState:0];

  [v11 addTarget:targetCopy action:action forControlEvents:64];

  return v11;
}

- (MFComposeStyleSelectorButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MFComposeStyleSelectorButton;
  v3 = [(MFComposeStyleSelectorButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MFComposeStyleSelectorButton *)v3 _commonInit];
  }

  return v4;
}

- (MFComposeStyleSelectorButton)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = MFComposeStyleSelectorButton;
  v5 = [(MFComposeStyleSelectorButton *)&v8 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    [(MFComposeStyleSelectorButton *)v5 _commonInit];
  }

  return v6;
}

- (void)_commonInit
{
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(MFComposeStyleSelectorButton *)self setTintColor:?];

  labelColor2 = [MEMORY[0x1E69DC888] labelColor];
  [MFComposeStyleSelectorButton setTitleColor:"setTitleColor:forState:" forState:?];

  secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [(MFComposeStyleSelectorButton *)self setBackgroundColor:?];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v6.receiver = self;
  v6.super_class = MFComposeStyleSelectorButton;
  [(MFComposeStyleSelectorButton *)&v6 setSelected:?];
  if (selectedCopy)
  {
    [MEMORY[0x1E69DC888] mailComposeFormatButtonSelectedBackgroundColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  }
  v5 = ;
  [(MFComposeStyleSelectorButton *)self setBackgroundColor:v5];
}

- (id)_imageForTextStyleType:(int64_t)type maximumContentSizeCategory:(id)category
{
  categoryCopy = category;
  if (type != 7 || ([MEMORY[0x1E69DCAB8] mf_systemImageNamedNumberAware:@"list.number" textStyle:*MEMORY[0x1E69DDCF8] scale:3 weight:0 maximumContentSizeCategory:categoryCopy], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = [MFComposeTextStyle imageNameForTextStyleType:type];
    if (v7)
    {
      v6 = [MEMORY[0x1E69DCAB8] mf_systemImageNamed:v7 textStyle:*MEMORY[0x1E69DDCF8] scale:3 weight:0 maximumContentSizeCategory:categoryCopy];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = MFComposeStyleSelectorButton;
  [(MFComposeStyleSelectorButton *)&v10 traitCollectionDidChange:changeCopy];
  traitCollection = [(MFComposeStyleSelectorButton *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    styleType = self->_styleType;
    if (styleType)
    {
      v9 = [(MFComposeStyleSelectorButton *)self _imageForTextStyleType:styleType maximumContentSizeCategory:self->_maximumContentSizeCategory];
      [(MFComposeStyleSelectorButton *)self setImage:v9 forState:0];
    }
  }
}

@end