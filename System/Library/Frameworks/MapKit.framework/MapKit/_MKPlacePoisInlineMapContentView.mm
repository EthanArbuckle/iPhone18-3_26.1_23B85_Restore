@interface _MKPlacePoisInlineMapContentView
- (CGSize)intrinsicContentSize;
- (_MKPlacePoisInlineMapContentView)initWithFrame:(CGRect)frame;
- (void)setLocationsNumber:(unint64_t)number;
- (void)setVisible:(BOOL)visible;
@end

@implementation _MKPlacePoisInlineMapContentView

- (CGSize)intrinsicContentSize
{
  visible = [(_MKPlacePoisInlineMapContentView *)self visible];
  v4 = *MEMORY[0x1E69DE788];
  v5 = 0.0;
  if (visible)
  {
    [(_MKPlacePoisInlineMapContentView *)self mapViewHeight];
    v7 = v6;
    [(_MKPlaceInlineMapContentView *)self titleHeight];
    v5 = v7 + v8;
  }

  v9 = v4;
  result.height = v5;
  result.width = v9;
  return result;
}

- (void)setLocationsNumber:(unint64_t)number
{
  if (number >= 2)
  {
    v5 = @"Map_View_title_plural";
  }

  else
  {
    v5 = @"Map_View_title";
  }

  v8 = _MKLocalizedStringFromThisBundle(v5);
  [(_MKUILabel *)self->super._titleLabel setText:v8];
  v6 = _MKLocalizedStringFromThisBundle(@"Map_Location_Nearby");
  number = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v6, number];
  [(_MKUILabel *)self->_storesLabel setText:number];
}

- (void)setVisible:(BOOL)visible
{
  if (self->_visible != visible)
  {
    self->_visible = visible;
    v3 = 0.0;
    if (visible)
    {
      v3 = 1.0;
    }

    [(_MKUILabel *)self->super._titleLabel setAlpha:v3];
  }
}

- (_MKPlacePoisInlineMapContentView)initWithFrame:(CGRect)frame
{
  v57[9] = *MEMORY[0x1E69E9840];
  v56.receiver = self;
  v56.super_class = _MKPlacePoisInlineMapContentView;
  v3 = [(_MKPlaceInlineMapContentView *)&v56 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD298]);
    v5 = [MEMORY[0x1E69DC730] effectWithStyle:7];
    v6 = [v4 initWithEffect:v5];

    v7 = v6;
    contentView = [v7 contentView];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->super._mapView addSubview:v7];
    [(_MKUILabel *)v3->super._titleLabel setText:&stru_1F15B23C0];
    [(_MKUILabel *)v3->super._titleLabel setAlpha:0.0];
    v9 = [_MKUILabel alloc];
    v10 = *MEMORY[0x1E695F058];
    v11 = *(MEMORY[0x1E695F058] + 8);
    v12 = *(MEMORY[0x1E695F058] + 16);
    v13 = *(MEMORY[0x1E695F058] + 24);
    v14 = [(_MKUILabel *)v9 initWithFrame:*MEMORY[0x1E695F058], v11, v12, v13];
    storesLabel = v3->_storesLabel;
    v3->_storesLabel = v14;

    [(_MKUILabel *)v3->_storesLabel setTextAlignment:4];
    [(_MKUILabel *)v3->_storesLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_MKUILabel *)v3->_storesLabel setPreservesSuperviewLayoutMargins:1];
    v16 = +[MKFontManager sharedManager];
    attributionFont = [v16 attributionFont];
    [(_MKUILabel *)v3->_storesLabel setFont:attributionFont];

    v55 = contentView;
    [contentView addSubview:v3->_storesLabel];
    v18 = [[_MKUILabel alloc] initWithFrame:v10, v11, v12, v13];
    seeMoreLabel = v3->_seeMoreLabel;
    v3->_seeMoreLabel = v18;

    [(_MKUILabel *)v3->_seeMoreLabel set_mapkit_themeColorProvider:&__block_literal_global_214];
    [(_MKUILabel *)v3->_seeMoreLabel setTextAlignment:4];
    [(_MKUILabel *)v3->_seeMoreLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_MKUILabel *)v3->_seeMoreLabel setPreservesSuperviewLayoutMargins:1];
    v20 = _MKLocalizedStringFromThisBundle(@"Map_View_More");
    [(_MKUILabel *)v3->_seeMoreLabel setText:v20];

    v21 = +[MKFontManager sharedManager];
    attributionFont2 = [v21 attributionFont];
    [(_MKUILabel *)v3->_seeMoreLabel setFont:attributionFont2];

    [contentView addSubview:v3->_seeMoreLabel];
    v43 = MEMORY[0x1E696ACD8];
    bottomAnchor = [v7 bottomAnchor];
    bottomAnchor2 = [(UIView *)v3->super._mapView bottomAnchor];
    v52 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v57[0] = v52;
    leadingAnchor = [v7 leadingAnchor];
    leadingAnchor2 = [(UIView *)v3->super._mapView leadingAnchor];
    v49 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v57[1] = v49;
    trailingAnchor = [v7 trailingAnchor];
    trailingAnchor2 = [(UIView *)v3->super._mapView trailingAnchor];
    v46 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v57[2] = v46;
    heightAnchor = [v7 heightAnchor];
    v44 = [heightAnchor constraintEqualToConstant:40.0];
    v57[3] = v44;
    centerYAnchor = [(_MKUILabel *)v3->_storesLabel centerYAnchor];
    centerYAnchor2 = [v7 centerYAnchor];
    v40 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v57[4] = v40;
    leadingAnchor3 = [(_MKUILabel *)v3->_storesLabel leadingAnchor];
    layoutMarginsGuide = [v7 layoutMarginsGuide];
    leadingAnchor4 = [layoutMarginsGuide leadingAnchor];
    v35 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v57[5] = v35;
    trailingAnchor3 = [(_MKUILabel *)v3->_storesLabel trailingAnchor];
    leadingAnchor5 = [(_MKUILabel *)v3->_seeMoreLabel leadingAnchor];
    v23 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:leadingAnchor5];
    v57[6] = v23;
    centerYAnchor3 = [(_MKUILabel *)v3->_seeMoreLabel centerYAnchor];
    centerYAnchor4 = [(_MKUILabel *)v3->_storesLabel centerYAnchor];
    v26 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v57[7] = v26;
    trailingAnchor4 = [(_MKUILabel *)v3->_seeMoreLabel trailingAnchor];
    v39 = v7;
    layoutMarginsGuide2 = [v7 layoutMarginsGuide];

    trailingAnchor5 = [layoutMarginsGuide2 trailingAnchor];
    v30 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    v57[8] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:9];
    [v43 activateConstraints:v31];

    [(_MKPlaceInlineMapContentView *)v3 _contentSizeDidChange];
    [(_MKUILabel *)v3->super._titleLabel layoutIfNeeded];
  }

  return v3;
}

@end