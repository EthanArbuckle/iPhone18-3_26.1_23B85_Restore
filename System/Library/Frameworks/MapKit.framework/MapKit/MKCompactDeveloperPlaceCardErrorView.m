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

    v10 = [MEMORY[0x1E69DC888] labelColor];
    v11 = [v10 colorWithAlphaComponent:0.55];
    v37 = v3;
    [(_MKUILabel *)v3 setTextColor:v11];

    v12 = [MEMORY[0x1E69DC888] labelColor];
    v13 = [v12 colorWithAlphaComponent:0.55];
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
    v35 = [v14 centerYAnchor];
    v34 = [(MKCompactDeveloperPlaceCardErrorView *)v2 centerYAnchor];
    v33 = [v35 constraintEqualToAnchor:v34];
    v39[0] = v33;
    v32 = [v14 centerXAnchor];
    v31 = [(MKCompactDeveloperPlaceCardErrorView *)v2 centerXAnchor];
    v30 = [v32 constraintEqualToAnchor:v31];
    v39[1] = v30;
    v29 = [v14 leadingAnchor];
    v27 = [(MKCompactDeveloperPlaceCardErrorView *)v2 leadingAnchor];
    v26 = [v29 constraintGreaterThanOrEqualToAnchor:v27 constant:12.0];
    v39[2] = v26;
    v25 = [v14 trailingAnchor];
    v24 = [(MKCompactDeveloperPlaceCardErrorView *)v2 trailingAnchor];
    v15 = [v25 constraintLessThanOrEqualToAnchor:v24 constant:-12.0];
    v39[3] = v15;
    v16 = [v14 topAnchor];
    v17 = [(MKCompactDeveloperPlaceCardErrorView *)v2 topAnchor];
    v18 = [v16 constraintGreaterThanOrEqualToAnchor:v17 constant:8.0];
    v39[4] = v18;
    v19 = [v14 bottomAnchor];
    v20 = [(MKCompactDeveloperPlaceCardErrorView *)v2 bottomAnchor];
    v21 = [v19 constraintLessThanOrEqualToAnchor:v20 constant:-8.0];
    v39[5] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:6];
    [v28 activateConstraints:v22];
  }

  return v2;
}

@end