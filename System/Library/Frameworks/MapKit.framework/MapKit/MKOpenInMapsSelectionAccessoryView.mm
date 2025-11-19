@interface MKOpenInMapsSelectionAccessoryView
- (MKOpenInMapsSelectionAccessoryView)initWithURL:(id)a3;
- (id)_createButton;
- (void)_handlePress;
- (void)layoutSubviews;
@end

@implementation MKOpenInMapsSelectionAccessoryView

- (void)_handlePress
{
  v3 = +[MKSystemController sharedInstance];
  [v3 openURL:self->_url completionHandler:0];
}

- (id)_createButton
{
  v3 = _MKLocalizedStringFromThisBundle(@"[Developer Selection Accessory] Open in Apple Maps");
  objc_initWeak(&location, self);
  v4 = MEMORY[0x1E69DC628];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __51__MKOpenInMapsSelectionAccessoryView__createButton__block_invoke;
  v12 = &unk_1E76C8738;
  objc_copyWeak(&v13, &location);
  v5 = [v4 actionWithTitle:v3 image:0 identifier:0 handler:&v9];
  v6 = [MEMORY[0x1E69DC740] borderlessButtonConfiguration];
  [v6 setContentInsets:{4.0, 8.0, 4.0, 8.0}];
  [v6 setTitleTextAttributesTransformer:&__block_literal_global_15397];
  v7 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v6 primaryAction:v5];
  [v7 setPreferredBehavioralStyle:1];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v7;
}

void __51__MKOpenInMapsSelectionAccessoryView__createButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePress];
}

id __51__MKOpenInMapsSelectionAccessoryView__createButton__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v4 = [v3 _mapkit_fontWithWeight:*MEMORY[0x1E69DB980]];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  return v2;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = MKOpenInMapsSelectionAccessoryView;
  [(MKOpenInMapsSelectionAccessoryView *)&v6 layoutSubviews];
  [(MKOpenInMapsSelectionAccessoryView *)self bounds];
  v4 = v3 * 0.5;
  v5 = [(MKOpenInMapsSelectionAccessoryView *)self layer];
  [v5 setCornerRadius:v4];
}

- (MKOpenInMapsSelectionAccessoryView)initWithURL:(id)a3
{
  v37[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v36.receiver = self;
  v36.super_class = MKOpenInMapsSelectionAccessoryView;
  v6 = [(MKSelectionAccessoryView *)&v36 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, a3);
    v35 = v5;
    v8 = [MEMORY[0x1E69DC888] _mapkit_colorNamed:@"DeveloperPlaceCardCaptionBackgroundColor"];
    bgColor = v7->_bgColor;
    v7->_bgColor = v8;

    [(MKOpenInMapsSelectionAccessoryView *)v7 setBackgroundColor:v7->_bgColor];
    v10 = *MEMORY[0x1E695F060];
    v11 = *(MEMORY[0x1E695F060] + 8);
    v12 = [(MKOpenInMapsSelectionAccessoryView *)v7 layer];
    [v12 setShadowOffset:{v10, v11}];

    v13 = [(MKOpenInMapsSelectionAccessoryView *)v7 layer];
    [v13 setShadowRadius:15.0];

    v14 = [MEMORY[0x1E69DC888] blackColor];
    v15 = [v14 CGColor];
    v16 = [(MKOpenInMapsSelectionAccessoryView *)v7 layer];
    [v16 setShadowColor:v15];

    v17 = [(MKOpenInMapsSelectionAccessoryView *)v7 layer];
    LODWORD(v18) = 1047904911;
    [v17 setShadowOpacity:v18];

    v19 = [(MKOpenInMapsSelectionAccessoryView *)v7 _createButton];
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MKOpenInMapsSelectionAccessoryView *)v7 addSubview:v19];
    v29 = MEMORY[0x1E696ACD8];
    v34 = [v19 topAnchor];
    v33 = [(MKOpenInMapsSelectionAccessoryView *)v7 topAnchor];
    v32 = [v34 constraintEqualToAnchor:v33];
    v37[0] = v32;
    v31 = [v19 leadingAnchor];
    v30 = [(MKOpenInMapsSelectionAccessoryView *)v7 leadingAnchor];
    v20 = [v31 constraintEqualToAnchor:v30];
    v37[1] = v20;
    v21 = [(MKOpenInMapsSelectionAccessoryView *)v7 trailingAnchor];
    v22 = [v19 trailingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    v37[2] = v23;
    v24 = [(MKOpenInMapsSelectionAccessoryView *)v7 bottomAnchor];
    v25 = [v19 bottomAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    v37[3] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];
    [v29 activateConstraints:v27];

    v5 = v35;
  }

  return v7;
}

@end