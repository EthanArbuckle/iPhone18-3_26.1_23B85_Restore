@interface _MKPlacePoisInlineMapContentView
- (CGSize)intrinsicContentSize;
- (_MKPlacePoisInlineMapContentView)initWithFrame:(CGRect)a3;
- (void)setLocationsNumber:(unint64_t)a3;
- (void)setVisible:(BOOL)a3;
@end

@implementation _MKPlacePoisInlineMapContentView

- (CGSize)intrinsicContentSize
{
  v3 = [(_MKPlacePoisInlineMapContentView *)self visible];
  v4 = *MEMORY[0x1E69DE788];
  v5 = 0.0;
  if (v3)
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

- (void)setLocationsNumber:(unint64_t)a3
{
  if (a3 >= 2)
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
  v7 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v6, a3];
  [(_MKUILabel *)self->_storesLabel setText:v7];
}

- (void)setVisible:(BOOL)a3
{
  if (self->_visible != a3)
  {
    self->_visible = a3;
    v3 = 0.0;
    if (a3)
    {
      v3 = 1.0;
    }

    [(_MKUILabel *)self->super._titleLabel setAlpha:v3];
  }
}

- (_MKPlacePoisInlineMapContentView)initWithFrame:(CGRect)a3
{
  v57[9] = *MEMORY[0x1E69E9840];
  v56.receiver = self;
  v56.super_class = _MKPlacePoisInlineMapContentView;
  v3 = [(_MKPlaceInlineMapContentView *)&v56 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD298]);
    v5 = [MEMORY[0x1E69DC730] effectWithStyle:7];
    v6 = [v4 initWithEffect:v5];

    v7 = v6;
    v8 = [v7 contentView];
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
    v17 = [v16 attributionFont];
    [(_MKUILabel *)v3->_storesLabel setFont:v17];

    v55 = v8;
    [v8 addSubview:v3->_storesLabel];
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
    v22 = [v21 attributionFont];
    [(_MKUILabel *)v3->_seeMoreLabel setFont:v22];

    [v8 addSubview:v3->_seeMoreLabel];
    v43 = MEMORY[0x1E696ACD8];
    v54 = [v7 bottomAnchor];
    v53 = [(UIView *)v3->super._mapView bottomAnchor];
    v52 = [v54 constraintEqualToAnchor:v53];
    v57[0] = v52;
    v51 = [v7 leadingAnchor];
    v50 = [(UIView *)v3->super._mapView leadingAnchor];
    v49 = [v51 constraintEqualToAnchor:v50];
    v57[1] = v49;
    v48 = [v7 trailingAnchor];
    v47 = [(UIView *)v3->super._mapView trailingAnchor];
    v46 = [v48 constraintEqualToAnchor:v47];
    v57[2] = v46;
    v45 = [v7 heightAnchor];
    v44 = [v45 constraintEqualToConstant:40.0];
    v57[3] = v44;
    v42 = [(_MKUILabel *)v3->_storesLabel centerYAnchor];
    v41 = [v7 centerYAnchor];
    v40 = [v42 constraintEqualToAnchor:v41];
    v57[4] = v40;
    v37 = [(_MKUILabel *)v3->_storesLabel leadingAnchor];
    v38 = [v7 layoutMarginsGuide];
    v36 = [v38 leadingAnchor];
    v35 = [v37 constraintEqualToAnchor:v36];
    v57[5] = v35;
    v34 = [(_MKUILabel *)v3->_storesLabel trailingAnchor];
    v33 = [(_MKUILabel *)v3->_seeMoreLabel leadingAnchor];
    v23 = [v34 constraintLessThanOrEqualToAnchor:v33];
    v57[6] = v23;
    v24 = [(_MKUILabel *)v3->_seeMoreLabel centerYAnchor];
    v25 = [(_MKUILabel *)v3->_storesLabel centerYAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    v57[7] = v26;
    v27 = [(_MKUILabel *)v3->_seeMoreLabel trailingAnchor];
    v39 = v7;
    v28 = [v7 layoutMarginsGuide];

    v29 = [v28 trailingAnchor];
    v30 = [v27 constraintEqualToAnchor:v29];
    v57[8] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:9];
    [v43 activateConstraints:v31];

    [(_MKPlaceInlineMapContentView *)v3 _contentSizeDidChange];
    [(_MKUILabel *)v3->super._titleLabel layoutIfNeeded];
  }

  return v3;
}

@end