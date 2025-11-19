@interface NTKCCLibraryListCell
+ (id)reuseIdentifier;
- (NTKCCLibraryListCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_fontSizeDidChange;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setCurrentFace:(BOOL)a3;
- (void)setFaceName:(id)a3;
@end

@implementation NTKCCLibraryListCell

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NTKCCLibraryListCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v37.receiver = self;
  v37.super_class = NTKCCLibraryListCell;
  v4 = [(NTKCCLibraryListCell *)&v37 initWithStyle:3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = BPSBackgroundColor();
    [(NTKCCLibraryListCell *)v4 setBackgroundColor:v5];

    v6 = objc_opt_new();
    horizontalStack = v4->_horizontalStack;
    v4->_horizontalStack = v6;

    [(UIStackView *)v4->_horizontalStack setAxis:0];
    v8 = NTKCScreenStyle();
    v9 = 15.0;
    if (v8 == -1)
    {
      v9 = 11.0;
    }

    [(UIStackView *)v4->_horizontalStack setSpacing:v9];
    [(UIStackView *)v4->_horizontalStack setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v4->_horizontalStack setAlignment:3];
    v10 = objc_opt_new();
    verticalStack = v4->_verticalStack;
    v4->_verticalStack = v10;

    [(UIStackView *)v4->_verticalStack setAxis:1];
    [(UIStackView *)v4->_verticalStack setAlignment:1];
    [(UIStackView *)v4->_verticalStack setSpacing:11.0];
    v12 = +[CLKDevice currentDevice];
    v13 = [v12 deviceCategory];

    if (v13 == &dword_0 + 1)
    {
      v14 = 90.0;
    }

    else
    {
      v14 = 92.0;
    }

    if (v13 == &dword_0 + 1)
    {
      v15 = 72.0;
    }

    else
    {
      v15 = 75.0;
    }

    v16 = [[NTKCFaceContainerView alloc] initWithFaceSize:3 style:v15, v14];
    faceContainer = v4->_faceContainer;
    v4->_faceContainer = v16;

    LODWORD(v18) = 1148829696;
    [(NTKCFaceContainerView *)v4->_faceContainer setContentCompressionResistancePriority:0 forAxis:v18];
    LODWORD(v19) = 1148829696;
    [(NTKCFaceContainerView *)v4->_faceContainer setContentCompressionResistancePriority:1 forAxis:v19];
    LODWORD(v20) = 1144750080;
    [(NTKCFaceContainerView *)v4->_faceContainer setContentHuggingPriority:0 forAxis:v20];
    [(UIStackView *)v4->_horizontalStack addArrangedSubview:v4->_faceContainer];
    [(UIStackView *)v4->_horizontalStack addArrangedSubview:v4->_verticalStack];
    v21 = objc_opt_new();
    name = v4->_name;
    v4->_name = v21;

    v23 = BPSTextColor();
    [(UILabel *)v4->_name setTextColor:v23];

    [(UILabel *)v4->_name setNumberOfLines:0];
    [(UIStackView *)v4->_verticalStack addArrangedSubview:v4->_name];
    v24 = objc_opt_new();
    subtitle = v4->_subtitle;
    v4->_subtitle = v24;

    v26 = NTKCCustomizationLocalizedString();
    v27 = [NSAttributedString NTKHyphenatableString:v26];
    [(UILabel *)v4->_subtitle setAttributedText:v27];

    v28 = BPSDetailTextColor();
    [(UILabel *)v4->_subtitle setTextColor:v28];

    [(UILabel *)v4->_subtitle setNumberOfLines:0];
    [(UILabel *)v4->_subtitle setHidden:!v4->_currentFace];
    [(UIStackView *)v4->_verticalStack addArrangedSubview:v4->_subtitle];
    LODWORD(v29) = 1132068864;
    [(UIStackView *)v4->_verticalStack setContentHuggingPriority:1 forAxis:v29];
    v30 = [(NTKCCLibraryListCell *)v4 contentView];
    [v30 addSubview:v4->_horizontalStack];

    v31 = _NSDictionaryOfVariableBindings(@"_horizontalStack", v4->_horizontalStack, 0);
    v32 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-(LeadingMargin)-[_horizontalStack]-(TrailingMargin)-|", 0, &off_21B18, v31);
    [NSLayoutConstraint activateConstraints:v32];

    v33 = _NSDictionaryOfVariableBindings(@"_horizontalStack", v4->_horizontalStack, 0);
    v34 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(VerticalPadding)-[_horizontalStack]-(VerticalPadding)-|", 0, &off_21B40, v33);
    [NSLayoutConstraint activateConstraints:v34];

    v35 = +[NSNotificationCenter defaultCenter];
    [v35 addObserver:v4 selector:"_fontSizeDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];

    [(NTKCCLibraryListCell *)v4 _fontSizeDidChange];
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:0];

  v4.receiver = self;
  v4.super_class = NTKCCLibraryListCell;
  [(NTKCCLibraryListCell *)&v4 dealloc];
}

- (void)setFaceName:(id)a3
{
  v4 = [NSAttributedString NTKHyphenatableString:a3];
  [(UILabel *)self->_name setAttributedText:v4];
}

- (void)setCurrentFace:(BOOL)a3
{
  if (self->_currentFace != a3)
  {
    self->_currentFace = a3;
    [(UILabel *)self->_subtitle setHidden:!a3];
  }
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = NTKCCLibraryListCell;
  [(NTKCCLibraryListCell *)&v16 layoutSubviews];
  [(NTKCCLibraryListCell *)self separatorInset];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [(NTKCFaceContainerView *)self->_faceContainer superview];
  horizontalStack = self->_horizontalStack;

  v11 = 0.0;
  if (v9 == horizontalStack)
  {
    [(UIStackView *)self->_horizontalStack spacing];
    v13 = v12 + 80.0 + 23.0;
    v14 = [(NTKCCLibraryListCell *)self contentView];
    [(NTKCCLibraryListCell *)self convertPoint:v14 fromView:v13, 0.0];
    v11 = v15;
  }

  [(NTKCCLibraryListCell *)self setSeparatorInset:v4, v11, v6, v8];
}

- (void)_fontSizeDidChange
{
  v3 = NTKCScreenStyle();
  v4 = &UIFontTextStyleCallout;
  if (v3 == -1)
  {
    v5 = &UIFontTextStyleCaption1;
  }

  else
  {
    v4 = &UIFontTextStyleTitle2;
    v5 = &UIFontTextStyleSubheadline;
  }

  v6 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:*v4];
  v7 = [v6 fontDescriptorWithSymbolicTraits:0x8000];

  TypographicBounds = 0.0;
  v9 = [UIFont fontWithDescriptor:v7 size:0.0];
  [(UILabel *)self->_name setFont:v9];

  v10 = *v5;
  v11 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:v10];
  v12 = [v11 fontDescriptorWithSymbolicTraits:0x8000];

  v13 = [UIFont fontWithDescriptor:v12 size:0.0];
  [(UILabel *)self->_subtitle setFont:v13];

  v14 = [UIFont preferredFontForTextStyle:v10];
  v15 = [NSAttributedString alloc];
  v28 = NSFontAttributeName;
  v29 = v14;
  v16 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v17 = [v15 initWithString:@"M" attributes:v16];

  v18 = CTLineCreateWithAttributedString(v17);
  if (v18)
  {
    v19 = v18;
    TypographicBounds = CTLineGetTypographicBounds(v18, 0, 0, 0);
    CFRelease(v19);
  }

  v20 = +[UIWindow _applicationKeyWindow];
  [v20 bounds];
  v22 = v21;

  v23 = [(NTKCFaceContainerView *)self->_faceContainer superview];
  v24 = v23;
  if ((v22 / TypographicBounds) > 0x10)
  {
    v25 = 32;
  }

  else
  {
    v25 = 40;
  }

  v26 = (&self->super.super.super.super.isa + v25);
  v27 = *(&self->super.super.super.super.isa + v25);

  if (v24 != v27)
  {
    [(NTKCFaceContainerView *)self->_faceContainer removeFromSuperview];
    [*v26 insertArrangedSubview:self->_faceContainer atIndex:0];
  }
}

@end