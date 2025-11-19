@interface MFComposeStyleSelectorButton
+ (id)buttonWithStyleType:(int64_t)a3 target:(id)a4 action:(SEL)a5;
+ (id)buttonWithStyleType:(int64_t)a3 target:(id)a4 action:(SEL)a5 maximumContentSizeCategory:(id)a6;
- (MFComposeStyleSelectorButton)initWithCoder:(id)a3;
- (MFComposeStyleSelectorButton)initWithFrame:(CGRect)a3;
- (id)_imageForTextStyleType:(int64_t)a3 maximumContentSizeCategory:(id)a4;
- (void)_commonInit;
- (void)setSelected:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation MFComposeStyleSelectorButton

+ (id)buttonWithStyleType:(int64_t)a3 target:(id)a4 action:(SEL)a5
{
  v5 = [MFComposeStyleSelectorButton buttonWithStyleType:a3 target:a4 action:a5 maximumContentSizeCategory:*MEMORY[0x1E69DDC90]];

  return v5;
}

+ (id)buttonWithStyleType:(int64_t)a3 target:(id)a4 action:(SEL)a5 maximumContentSizeCategory:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = [MFComposeStyleSelectorButton buttonWithType:0];
  v11[93] = a3;
  v11[94] = v10;
  v12 = [MFComposeTextStyle accessibilityIdenitifierForTextStyleType:a3];
  [v11 setAccessibilityIdentifier:v12];

  v13 = [v11 _imageForTextStyleType:a3 maximumContentSizeCategory:v10];
  [v11 setImage:v13 forState:0];

  [v11 addTarget:v9 action:a5 forControlEvents:64];

  return v11;
}

- (MFComposeStyleSelectorButton)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MFComposeStyleSelectorButton;
  v3 = [(MFComposeStyleSelectorButton *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MFComposeStyleSelectorButton *)v3 _commonInit];
  }

  return v4;
}

- (MFComposeStyleSelectorButton)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MFComposeStyleSelectorButton;
  v5 = [(MFComposeStyleSelectorButton *)&v8 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    [(MFComposeStyleSelectorButton *)v5 _commonInit];
  }

  return v6;
}

- (void)_commonInit
{
  v3 = [MEMORY[0x1E69DC888] labelColor];
  [(MFComposeStyleSelectorButton *)self setTintColor:?];

  v4 = [MEMORY[0x1E69DC888] labelColor];
  [MFComposeStyleSelectorButton setTitleColor:"setTitleColor:forState:" forState:?];

  v5 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [(MFComposeStyleSelectorButton *)self setBackgroundColor:?];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = MFComposeStyleSelectorButton;
  [(MFComposeStyleSelectorButton *)&v6 setSelected:?];
  if (v3)
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

- (id)_imageForTextStyleType:(int64_t)a3 maximumContentSizeCategory:(id)a4
{
  v5 = a4;
  if (a3 != 7 || ([MEMORY[0x1E69DCAB8] mf_systemImageNamedNumberAware:@"list.number" textStyle:*MEMORY[0x1E69DDCF8] scale:3 weight:0 maximumContentSizeCategory:v5], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = [MFComposeTextStyle imageNameForTextStyleType:a3];
    if (v7)
    {
      v6 = [MEMORY[0x1E69DCAB8] mf_systemImageNamed:v7 textStyle:*MEMORY[0x1E69DDCF8] scale:3 weight:0 maximumContentSizeCategory:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MFComposeStyleSelectorButton;
  [(MFComposeStyleSelectorButton *)&v10 traitCollectionDidChange:v4];
  v5 = [(MFComposeStyleSelectorButton *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  if (v6 != v7)
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