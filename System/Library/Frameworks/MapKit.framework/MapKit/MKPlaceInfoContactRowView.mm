@interface MKPlaceInfoContactRowView
- (MKPlaceInfoContactRowView)initWithFrame:(CGRect)frame;
- (void)_contentSizeDidChange;
- (void)copy:(id)copy;
- (void)setLabelColor:(id)color;
- (void)setLabeledValue:(id)value;
@end

@implementation MKPlaceInfoContactRowView

- (void)setLabeledValue:(id)value
{
  obj = value;
  if (([*&self->_isInRightMouseDownEvent isEqual:?] & 1) == 0)
  {
    v4 = obj;
    if (obj)
    {
      [(MKPlaceInfoContactRowView *)self _labeledValueExpectedValueType];
      value = [obj value];
      if (value && (objc_opt_isKindOfClass() & 1) == 0)
      {

        obj = 0;
      }

      v4 = obj;
    }

    obj = v4;
    objc_storeStrong(&self->_isInRightMouseDownEvent, v4);
    label = [*&self->_isInRightMouseDownEvent label];
    v7 = label;
    if (label && [label length])
    {
      v8 = [MEMORY[0x1E695CEE0] localizedStringForLabel:v7];
      [(CNLabeledValue *)self->_labeledValue setText:v8];
    }

    _valueString = [(MKPlaceInfoContactRowView *)self _valueString];
    [(MKVibrantLabel *)self->_titleLabel setText:_valueString];
  }
}

- (void)setLabelColor:(id)color
{
  colorCopy = color;
  if (self->_valueToBottomConstraint != colorCopy)
  {
    v8 = colorCopy;
    objc_storeStrong(&self->_valueToBottomConstraint, color);
    if (self->_valueToBottomConstraint)
    {
      [(MKVibrantLabel *)self->_titleLabel setTextColor:?];
    }

    else
    {
      mk_theme = [(UIView *)self mk_theme];
      textColor = [mk_theme textColor];
      [(MKVibrantLabel *)self->_titleLabel setTextColor:textColor];
    }

    colorCopy = v8;
  }
}

- (void)_contentSizeDidChange
{
  v3 = +[MKFontManager sharedManager];
  sectionHeaderFont = [v3 sectionHeaderFont];
  [(CNLabeledValue *)self->_labeledValue setFont:sectionHeaderFont];

  v5 = +[MKFontManager sharedManager];
  bodyFont = [v5 bodyFont];
  [(MKVibrantLabel *)self->_titleLabel setFont:bodyFont];

  v7 = +[MKFontManager sharedManager];
  bodyFont2 = [v7 bodyFont];
  [bodyFont2 _mapkit_scaledValueForValue:12.0];
  [(NSLayoutConstraint *)self->_topToTitleConstraint setConstant:?];

  v9 = +[MKFontManager sharedManager];
  bodyFont3 = [v9 bodyFont];
  [bodyFont3 _mapkit_scaledValueForValue:27.0];
  [(MKPlaceSectionHeaderView *)self->_headerView setConstant:?];

  v11 = +[MKFontManager sharedManager];
  bodyFont4 = [v11 bodyFont];
  [bodyFont4 _mapkit_scaledValueForValue:22.0];
  [(NSLayoutConstraint *)self->_topToIconConstraint setConstant:?];

  v14 = +[MKFontManager sharedManager];
  bodyFont5 = [v14 bodyFont];
  [bodyFont5 _mapkit_scaledValueForValue:17.0];
  [self->_iconSelectedBlock setConstant:?];
}

- (MKPlaceInfoContactRowView)initWithFrame:(CGRect)frame
{
  v48[4] = *MEMORY[0x1E69E9840];
  v46.receiver = self;
  v46.super_class = MKPlaceInfoContactRowView;
  v3 = [(MKPlaceSectionItemView *)&v46 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MKPlaceInfoContactRowView *)v3 setPreservesSuperviewLayoutMargins:1];
    objc_initWeak(&location, v4);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];

    v6 = [[MKVibrantLabel alloc] initWithStyle:1];
    labeledValue = v4->_labeledValue;
    v4->_labeledValue = v6;

    [(CNLabeledValue *)v4->_labeledValue setTextAlignment:4];
    [(CNLabeledValue *)v4->_labeledValue setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNLabeledValue *)v4->_labeledValue setClipsToBounds:0];
    v8 = [_MKUILabel alloc];
    v9 = [(_MKUILabel *)v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v9;

    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __43__MKPlaceInfoContactRowView_initWithFrame___block_invoke;
    v43[3] = &unk_1E76C8A50;
    objc_copyWeak(&v44, &location);
    [(MKVibrantLabel *)v4->_titleLabel set_mapkit_themeColorProvider:v43];
    [(MKVibrantLabel *)v4->_titleLabel setTextAlignment:4];
    [(MKVibrantLabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MKVibrantLabel *)v4->_titleLabel setNumberOfLines:0];
    [(MKVibrantLabel *)v4->_titleLabel setUserInteractionEnabled:1];
    [(MKPlaceInfoContactRowView *)v4 addSubview:v4->_labeledValue];
    [(MKPlaceInfoContactRowView *)v4 addSubview:v4->_titleLabel];
    firstBaselineAnchor = [(CNLabeledValue *)v4->_labeledValue firstBaselineAnchor];
    topAnchor = [(MKPlaceInfoContactRowView *)v4 topAnchor];
    v13 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor];
    headerView = v4->_headerView;
    v4->_headerView = v13;

    firstBaselineAnchor2 = [(MKVibrantLabel *)v4->_titleLabel firstBaselineAnchor];
    lastBaselineAnchor = [(CNLabeledValue *)v4->_labeledValue lastBaselineAnchor];
    v17 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor];
    topToIconConstraint = v4->_topToIconConstraint;
    v4->_topToIconConstraint = v17;

    bottomAnchor = [(MKPlaceInfoContactRowView *)v4 bottomAnchor];
    lastBaselineAnchor2 = [(MKVibrantLabel *)v4->_titleLabel lastBaselineAnchor];
    v21 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor2];
    iconSelectedBlock = v4->_iconSelectedBlock;
    v4->_iconSelectedBlock = v21;

    [(MKPlaceInfoContactRowView *)v4 _contentSizeDidChange];
    layoutMarginsGuide = [(MKPlaceInfoContactRowView *)v4 layoutMarginsGuide];
    trailingAnchor = [layoutMarginsGuide trailingAnchor];
    trailingAnchor2 = [(MKVibrantLabel *)v4->_titleLabel trailingAnchor];
    v26 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2];
    titleToValueConstraint = v4->_titleToValueConstraint;
    v4->_titleToValueConstraint = v26;

    v48[0] = v4->_headerView;
    v48[1] = v4->_topToIconConstraint;
    leadingAnchor = [(CNLabeledValue *)v4->_labeledValue leadingAnchor];
    leadingAnchor2 = [(MKVibrantLabel *)v4->_titleLabel leadingAnchor];
    v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v48[2] = v30;
    trailingAnchor3 = [(CNLabeledValue *)v4->_labeledValue trailingAnchor];
    trailingAnchor4 = [(MKVibrantLabel *)v4->_titleLabel trailingAnchor];
    v33 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4];
    v48[3] = v33;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:4];
    iconConstraints = v4->_iconConstraints;
    v4->_iconConstraints = v34;

    v36 = MEMORY[0x1E696ACD8];
    v47[0] = v4->_titleToValueConstraint;
    v47[1] = v4->_iconSelectedBlock;
    leadingAnchor3 = [(MKVibrantLabel *)v4->_titleLabel leadingAnchor];
    layoutMarginsGuide2 = [(MKPlaceInfoContactRowView *)v4 layoutMarginsGuide];
    leadingAnchor4 = [layoutMarginsGuide2 leadingAnchor];
    v40 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v47[2] = v40;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:3];
    [v36 activateConstraints:v41];

    [MEMORY[0x1E696ACD8] activateConstraints:v4->_iconConstraints];
    [(MKPlaceInfoContactRowView *)v4 tintColorDidChange];
    [(MKPlaceInfoContactRowView *)v4 _contentSizeDidChange];
    [(MKPlaceSectionItemView *)v4 infoCardThemeChanged];
    objc_destroyWeak(&v44);
    objc_destroyWeak(&location);
  }

  return v4;
}

id __43__MKPlaceInfoContactRowView_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && (v3 = WeakRetained[70]) != 0)
  {
    v4 = v3;
  }

  else
  {
    v5 = [WeakRetained mk_theme];
    v4 = [v5 textColor];
  }

  return v4;
}

- (void)copy:(id)copy
{
  _valueString = [(MKPlaceInfoContactRowView *)self _valueString];
  if ([_valueString length])
  {
    generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
    [generalPasteboard setString:_valueString];
  }
}

@end