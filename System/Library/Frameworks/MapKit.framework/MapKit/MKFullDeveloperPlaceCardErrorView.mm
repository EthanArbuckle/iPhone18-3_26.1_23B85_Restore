@interface MKFullDeveloperPlaceCardErrorView
- (MKFullDeveloperPlaceCardErrorView)init;
@end

@implementation MKFullDeveloperPlaceCardErrorView

- (MKFullDeveloperPlaceCardErrorView)init
{
  v43[8] = *MEMORY[0x1E69E9840];
  v42.receiver = self;
  v42.super_class = MKFullDeveloperPlaceCardErrorView;
  v2 = [(MKFullDeveloperPlaceCardErrorView *)&v42 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v2)
  {
    v3 = objc_alloc_init(_MKUILabel);
    v4 = objc_alloc_init(_MKUILabel);
    v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v6 = [v5 _mapkit_fontWithWeight:*MEMORY[0x1E69DB980]];
    [(_MKUILabel *)v3 setFont:v6];

    v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    [(_MKUILabel *)v4 setFont:v7];

    v8 = _MKLocalizedStringFromThisBundle(@"Place Error Title [Developer Place Card]");
    [(_MKUILabel *)v3 setText:v8];

    v9 = _MKLocalizedStringFromThisBundle(@"Place Error Subtitle [Developer Place Card]");
    [(_MKUILabel *)v4 setText:v9];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v11 = [labelColor colorWithAlphaComponent:0.55];
    v41 = v3;
    [(_MKUILabel *)v3 setTextColor:v11];

    labelColor2 = [MEMORY[0x1E69DC888] labelColor];
    v13 = [labelColor2 colorWithAlphaComponent:0.55];
    v40 = v4;
    [(_MKUILabel *)v4 setTextColor:v13];

    v14 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v14 setAlignment:3];
    [v14 set_mk_axis:1];
    [v14 setSpacing:0.0];
    [v14 addArrangedSubview:v3];
    [v14 addArrangedSubview:v4];
    [(MKFullDeveloperPlaceCardErrorView *)v2 addSubview:v14];
    [(MKFullDeveloperPlaceCardErrorView *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v30 = MEMORY[0x1E696ACD8];
    centerYAnchor = [v14 centerYAnchor];
    centerYAnchor2 = [(MKFullDeveloperPlaceCardErrorView *)v2 centerYAnchor];
    v37 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v43[0] = v37;
    centerXAnchor = [v14 centerXAnchor];
    centerXAnchor2 = [(MKFullDeveloperPlaceCardErrorView *)v2 centerXAnchor];
    v34 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v43[1] = v34;
    leadingAnchor = [v14 leadingAnchor];
    leadingAnchor2 = [(MKFullDeveloperPlaceCardErrorView *)v2 leadingAnchor];
    v31 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:12.0];
    v43[2] = v31;
    trailingAnchor = [v14 trailingAnchor];
    trailingAnchor2 = [(MKFullDeveloperPlaceCardErrorView *)v2 trailingAnchor];
    v27 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-12.0];
    v43[3] = v27;
    topAnchor = [v14 topAnchor];
    topAnchor2 = [(MKFullDeveloperPlaceCardErrorView *)v2 topAnchor];
    v24 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:8.0];
    v43[4] = v24;
    bottomAnchor = [v14 bottomAnchor];
    bottomAnchor2 = [(MKFullDeveloperPlaceCardErrorView *)v2 bottomAnchor];
    v17 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:-8.0];
    v43[5] = v17;
    widthAnchor = [(MKFullDeveloperPlaceCardErrorView *)v2 widthAnchor];
    v19 = [widthAnchor constraintGreaterThanOrEqualToConstant:320.0];
    v43[6] = v19;
    heightAnchor = [(MKFullDeveloperPlaceCardErrorView *)v2 heightAnchor];
    v21 = [heightAnchor constraintGreaterThanOrEqualToConstant:180.0];
    v43[7] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:8];
    [v30 activateConstraints:v22];
  }

  return v2;
}

@end