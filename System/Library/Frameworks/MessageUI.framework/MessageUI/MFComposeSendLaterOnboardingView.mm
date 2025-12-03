@interface MFComposeSendLaterOnboardingView
- (MFComposeSendLaterOnboardingView)initWithFrame:(CGRect)frame;
@end

@implementation MFComposeSendLaterOnboardingView

- (MFComposeSendLaterOnboardingView)initWithFrame:(CGRect)frame
{
  v48[2] = *MEMORY[0x1E69E9840];
  v44.receiver = self;
  v44.super_class = MFComposeSendLaterOnboardingView;
  v3 = [(MFComposeSendLaterOnboardingView *)&v44 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    sendLaterImageView = v3->_sendLaterImageView;
    v3->_sendLaterImageView = v4;

    v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up.circle.badge.clock"];
    [(UIImageView *)v3->_sendLaterImageView setImage:v6];

    [(UIImageView *)v3->_sendLaterImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDD58]];
    [(UIImageView *)v3->_sendLaterImageView setPreferredSymbolConfiguration:v7];

    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v8;

    v10 = _EFLocalizedString();
    [(UILabel *)v3->_titleLabel setText:v10];

    v11 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD40] weight:*MEMORY[0x1E69DB970]];
    [(UILabel *)v3->_titleLabel setFont:v11];

    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    [(UILabel *)v3->_titleLabel setAdjustsFontForContentSizeCategory:1];
    v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    subtitleLabel = v3->_subtitleLabel;
    v3->_subtitleLabel = v12;

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v3->_subtitleLabel setTextColor:secondaryLabelColor];

    v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    [(UILabel *)v3->_subtitleLabel setFont:v15];

    [(UILabel *)v3->_subtitleLabel setNumberOfLines:0];
    [(UILabel *)v3->_subtitleLabel setAdjustsFontForContentSizeCategory:1];
    plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    v16 = MEMORY[0x1E69DCAD8];
    v17 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD28] weight:*MEMORY[0x1E69DB958]];
    v18 = [v16 configurationWithFont:v17];
    [plainButtonConfiguration setPreferredSymbolConfigurationForImage:v18];

    v19 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark"];
    [plainButtonConfiguration setImage:v19];

    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    [plainButtonConfiguration setBaseForegroundColor:systemGrayColor];

    [plainButtonConfiguration setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
    v21 = [MEMORY[0x1E69DC738] buttonWithConfiguration:plainButtonConfiguration primaryAction:0];
    cancelButton = v3->_cancelButton;
    v3->_cancelButton = v21;

    LODWORD(v23) = 1148846080;
    [(UIButton *)v3->_cancelButton setContentHuggingPriority:0 forAxis:v23];
    v24 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    v48[0] = v3->_titleLabel;
    v48[1] = v3->_subtitleLabel;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
    [v24 mf_addArrangedSubviews:v25];

    [v24 setAxis:1];
    [v24 setSpacing:4.0];
    v26 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    v47[0] = v3->_sendLaterImageView;
    v47[1] = v24;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
    [v26 mf_addArrangedSubviews:v27];

    [v26 setAxis:0];
    [v26 setAlignment:1];
    [v26 setSpacing:12.0];
    v28 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    v46[0] = v26;
    v46[1] = v3->_cancelButton;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
    [v28 mf_addArrangedSubviews:v29];

    [v28 setAxis:0];
    [v28 setAlignment:1];
    [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v28 setSpacing:8.0];
    v30 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v30 addSubview:v28];
    [(MFComposeSendLaterOnboardingView *)v3 addSubview:v30];
    [v28 mf_pinToView:v30 usingLayoutMargins:1];
    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [v30 setBackgroundColor:secondarySystemBackgroundColor];

    secondarySystemBackgroundColor2 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [v30 setBackgroundColor:secondarySystemBackgroundColor2];

    systemGrayColor2 = [MEMORY[0x1E69DC888] systemGrayColor];
    [(UIImageView *)v3->_sendLaterImageView setTintColor:systemGrayColor2];

    v34 = _EFLocalizedString();
    [(UILabel *)v3->_subtitleLabel setText:v34];

    layer = [v30 layer];
    [layer setCornerRadius:10.0];

    layer2 = [v30 layer];
    [layer2 setMasksToBounds:1];

    [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v30 setDirectionalLayoutMargins:{8.0, 13.0, 8.0, 13.0}];
    [v30 mf_pinToView:v3 usingLayoutMargins:1];
    [(MFComposeSendLaterOnboardingView *)v3 setDirectionalLayoutMargins:0.0, 16.0, 16.0, 16.0];
    v37 = MEMORY[0x1E696ACD8];
    heightAnchor = [(UIImageView *)v3->_sendLaterImageView heightAnchor];
    widthAnchor = [(UIImageView *)v3->_sendLaterImageView widthAnchor];
    v40 = [heightAnchor constraintEqualToAnchor:widthAnchor];
    v45 = v40;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
    [v37 activateConstraints:v41];
  }

  return v3;
}

@end