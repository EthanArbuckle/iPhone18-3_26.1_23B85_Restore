@interface MKPlaceInfoContactRowView
- (MKPlaceInfoContactRowView)initWithFrame:(CGRect)a3;
- (void)_contentSizeDidChange;
- (void)copy:(id)a3;
- (void)setLabelColor:(id)a3;
- (void)setLabeledValue:(id)a3;
@end

@implementation MKPlaceInfoContactRowView

- (void)setLabeledValue:(id)a3
{
  obj = a3;
  if (([*&self->_isInRightMouseDownEvent isEqual:?] & 1) == 0)
  {
    v4 = obj;
    if (obj)
    {
      [(MKPlaceInfoContactRowView *)self _labeledValueExpectedValueType];
      v5 = [obj value];
      if (v5 && (objc_opt_isKindOfClass() & 1) == 0)
      {

        obj = 0;
      }

      v4 = obj;
    }

    obj = v4;
    objc_storeStrong(&self->_isInRightMouseDownEvent, v4);
    v6 = [*&self->_isInRightMouseDownEvent label];
    v7 = v6;
    if (v6 && [v6 length])
    {
      v8 = [MEMORY[0x1E695CEE0] localizedStringForLabel:v7];
      [(CNLabeledValue *)self->_labeledValue setText:v8];
    }

    v9 = [(MKPlaceInfoContactRowView *)self _valueString];
    [(MKVibrantLabel *)self->_titleLabel setText:v9];
  }
}

- (void)setLabelColor:(id)a3
{
  v5 = a3;
  if (self->_valueToBottomConstraint != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_valueToBottomConstraint, a3);
    if (self->_valueToBottomConstraint)
    {
      [(MKVibrantLabel *)self->_titleLabel setTextColor:?];
    }

    else
    {
      v6 = [(UIView *)self mk_theme];
      v7 = [v6 textColor];
      [(MKVibrantLabel *)self->_titleLabel setTextColor:v7];
    }

    v5 = v8;
  }
}

- (void)_contentSizeDidChange
{
  v3 = +[MKFontManager sharedManager];
  v4 = [v3 sectionHeaderFont];
  [(CNLabeledValue *)self->_labeledValue setFont:v4];

  v5 = +[MKFontManager sharedManager];
  v6 = [v5 bodyFont];
  [(MKVibrantLabel *)self->_titleLabel setFont:v6];

  v7 = +[MKFontManager sharedManager];
  v8 = [v7 bodyFont];
  [v8 _mapkit_scaledValueForValue:12.0];
  [(NSLayoutConstraint *)self->_topToTitleConstraint setConstant:?];

  v9 = +[MKFontManager sharedManager];
  v10 = [v9 bodyFont];
  [v10 _mapkit_scaledValueForValue:27.0];
  [(MKPlaceSectionHeaderView *)self->_headerView setConstant:?];

  v11 = +[MKFontManager sharedManager];
  v12 = [v11 bodyFont];
  [v12 _mapkit_scaledValueForValue:22.0];
  [(NSLayoutConstraint *)self->_topToIconConstraint setConstant:?];

  v14 = +[MKFontManager sharedManager];
  v13 = [v14 bodyFont];
  [v13 _mapkit_scaledValueForValue:17.0];
  [self->_iconSelectedBlock setConstant:?];
}

- (MKPlaceInfoContactRowView)initWithFrame:(CGRect)a3
{
  v48[4] = *MEMORY[0x1E69E9840];
  v46.receiver = self;
  v46.super_class = MKPlaceInfoContactRowView;
  v3 = [(MKPlaceSectionItemView *)&v46 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MKPlaceInfoContactRowView *)v3 setPreservesSuperviewLayoutMargins:1];
    objc_initWeak(&location, v4);
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v4 selector:sel__contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];

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
    v11 = [(CNLabeledValue *)v4->_labeledValue firstBaselineAnchor];
    v12 = [(MKPlaceInfoContactRowView *)v4 topAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    headerView = v4->_headerView;
    v4->_headerView = v13;

    v15 = [(MKVibrantLabel *)v4->_titleLabel firstBaselineAnchor];
    v16 = [(CNLabeledValue *)v4->_labeledValue lastBaselineAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    topToIconConstraint = v4->_topToIconConstraint;
    v4->_topToIconConstraint = v17;

    v19 = [(MKPlaceInfoContactRowView *)v4 bottomAnchor];
    v20 = [(MKVibrantLabel *)v4->_titleLabel lastBaselineAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    iconSelectedBlock = v4->_iconSelectedBlock;
    v4->_iconSelectedBlock = v21;

    [(MKPlaceInfoContactRowView *)v4 _contentSizeDidChange];
    v23 = [(MKPlaceInfoContactRowView *)v4 layoutMarginsGuide];
    v24 = [v23 trailingAnchor];
    v25 = [(MKVibrantLabel *)v4->_titleLabel trailingAnchor];
    v26 = [v24 constraintGreaterThanOrEqualToAnchor:v25];
    titleToValueConstraint = v4->_titleToValueConstraint;
    v4->_titleToValueConstraint = v26;

    v48[0] = v4->_headerView;
    v48[1] = v4->_topToIconConstraint;
    v28 = [(CNLabeledValue *)v4->_labeledValue leadingAnchor];
    v29 = [(MKVibrantLabel *)v4->_titleLabel leadingAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    v48[2] = v30;
    v31 = [(CNLabeledValue *)v4->_labeledValue trailingAnchor];
    v32 = [(MKVibrantLabel *)v4->_titleLabel trailingAnchor];
    v33 = [v31 constraintLessThanOrEqualToAnchor:v32];
    v48[3] = v33;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:4];
    iconConstraints = v4->_iconConstraints;
    v4->_iconConstraints = v34;

    v36 = MEMORY[0x1E696ACD8];
    v47[0] = v4->_titleToValueConstraint;
    v47[1] = v4->_iconSelectedBlock;
    v37 = [(MKVibrantLabel *)v4->_titleLabel leadingAnchor];
    v38 = [(MKPlaceInfoContactRowView *)v4 layoutMarginsGuide];
    v39 = [v38 leadingAnchor];
    v40 = [v37 constraintEqualToAnchor:v39];
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

- (void)copy:(id)a3
{
  v4 = [(MKPlaceInfoContactRowView *)self _valueString];
  if ([v4 length])
  {
    v3 = [MEMORY[0x1E69DCD50] generalPasteboard];
    [v3 setString:v4];
  }
}

@end