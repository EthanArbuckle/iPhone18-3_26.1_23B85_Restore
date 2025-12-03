@interface MKCompactDeveloperPlaceCardErrorView
- (MKCompactDeveloperPlaceCardErrorView)init;
@end

@implementation MKCompactDeveloperPlaceCardErrorView

- (MKCompactDeveloperPlaceCardErrorView)init
{
  v39[6] = *MEMORY[0x1E69E9840];
  v38.receiver = self;
  v38.super_class = MKCompactDeveloperPlaceCardErrorView;
  v2 = [(MKCompactDeveloperPlaceCardErrorView *)&v38 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
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
    v37 = v3;
    [(_MKUILabel *)v3 setTextColor:v11];

    labelColor2 = [MEMORY[0x1E69DC888] labelColor];
    v13 = [labelColor2 colorWithAlphaComponent:0.55];
    v36 = v4;
    [(_MKUILabel *)v4 setTextColor:v13];

    v14 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v14 setAlignment:1];
    [v14 set_mk_axis:1];
    [v14 setSpacing:0.0];
    [v14 addArrangedSubview:v3];
    [v14 addArrangedSubview:v4];
    [(MKCompactDeveloperPlaceCardErrorView *)v2 addSubview:v14];
    [(MKCompactDeveloperPlaceCardErrorView *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v28 = MEMORY[0x1E696ACD8];
    centerYAnchor = [v14 centerYAnchor];
    centerYAnchor2 = [(MKCompactDeveloperPlaceCardErrorView *)v2 centerYAnchor];
    v33 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v39[0] = v33;
    centerXAnchor = [v14 centerXAnchor];
    centerXAnchor2 = [(MKCompactDeveloperPlaceCardErrorView *)v2 centerXAnchor];
    v30 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v39[1] = v30;
    leadingAnchor = [v14 leadingAnchor];
    leadingAnchor2 = [(MKCompactDeveloperPlaceCardErrorView *)v2 leadingAnchor];
    v26 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:12.0];
    v39[2] = v26;
    trailingAnchor = [v14 trailingAnchor];
    trailingAnchor2 = [(MKCompactDeveloperPlaceCardErrorView *)v2 trailingAnchor];
    v15 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-12.0];
    v39[3] = v15;
    topAnchor = [v14 topAnchor];
    topAnchor2 = [(MKCompactDeveloperPlaceCardErrorView *)v2 topAnchor];
    v18 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:8.0];
    v39[4] = v18;
    bottomAnchor = [v14 bottomAnchor];
    bottomAnchor2 = [(MKCompactDeveloperPlaceCardErrorView *)v2 bottomAnchor];
    v21 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:-8.0];
    v39[5] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:6];
    [v28 activateConstraints:v22];
  }

  return v2;
}

@end