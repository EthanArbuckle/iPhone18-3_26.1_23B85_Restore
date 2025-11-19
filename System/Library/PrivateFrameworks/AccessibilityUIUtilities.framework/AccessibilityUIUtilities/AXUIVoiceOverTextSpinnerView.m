@interface AXUIVoiceOverTextSpinnerView
- (AXUIVoiceOverTextSpinnerView)initWithSpecifier:(id)a3;
@end

@implementation AXUIVoiceOverTextSpinnerView

- (AXUIVoiceOverTextSpinnerView)initWithSpecifier:(id)a3
{
  v45[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v44.receiver = self;
  v44.super_class = AXUIVoiceOverTextSpinnerView;
  v5 = [(AXUIVoiceOverTextSpinnerView *)&v44 init];
  if (v5)
  {
    [v4 setProperty:v5 forKey:@"VoiceOverTextSpinnerView"];
    v6 = [MEMORY[0x1E69DC888] clearColor];
    [(AXUIVoiceOverTextSpinnerView *)v5 setBackgroundColor:v6];

    [(AXUIVoiceOverTextSpinnerView *)v5 setAutoresizingMask:2];
    v7 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    text = v5->_text;
    v5->_text = v7;

    v9 = v5->_text;
    v10 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v9 setBackgroundColor:v10];

    v11 = v5->_text;
    v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    [(UILabel *)v11 setFont:v12];

    v13 = v5->_text;
    v14 = [MEMORY[0x1E69DC888] systemGrayColor];
    [(UILabel *)v13 setTextColor:v14];

    [(UILabel *)v5->_text setShadowOffset:0.0, 1.0];
    [(UILabel *)v5->_text setLineBreakMode:0];
    [(UILabel *)v5->_text setNumberOfLines:0];
    v15 = v5->_text;
    v16 = [v4 name];
    v17 = [v16 localizedUppercaseString];
    [(UILabel *)v15 setText:v17];

    [(UILabel *)v5->_text setAdjustsFontForContentSizeCategory:1];
    v18 = v5->_text;
    v43.receiver = v5;
    v43.super_class = AXUIVoiceOverTextSpinnerView;
    [(AXUIVoiceOverTextSpinnerView *)&v43 addSubview:v18];
    v19 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    spinner = v5->_spinner;
    v5->_spinner = v19;

    [(UIActivityIndicatorView *)v5->_spinner setHidesWhenStopped:1];
    v41 = v4;
    v21 = [v4 propertyForKey:@"VoiceOverTextSpinnerViewEnabled"];
    LODWORD(v17) = [v21 BOOLValue];

    if (v17)
    {
      [(UIActivityIndicatorView *)v5->_spinner startAnimating];
    }

    v22 = v5->_spinner;
    v42.receiver = v5;
    v42.super_class = AXUIVoiceOverTextSpinnerView;
    [(AXUIVoiceOverTextSpinnerView *)&v42 addSubview:v22];
    [(UILabel *)v5->_text setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIActivityIndicatorView *)v5->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
    v34 = MEMORY[0x1E696ACD8];
    v40 = [(UILabel *)v5->_text leadingAnchor];
    v39 = [(AXUIVoiceOverTextSpinnerView *)v5 leadingAnchor];
    v38 = [v40 constraintEqualToAnchor:v39 constant:15.0];
    v45[0] = v38;
    v37 = [(UIActivityIndicatorView *)v5->_spinner leadingAnchor];
    v36 = [(UILabel *)v5->_text trailingAnchor];
    v35 = [v37 constraintEqualToAnchor:v36 constant:10.0];
    v45[1] = v35;
    v33 = [(UIActivityIndicatorView *)v5->_spinner trailingAnchor];
    v23 = [(AXUIVoiceOverTextSpinnerView *)v5 trailingAnchor];
    v24 = [v33 constraintLessThanOrEqualToAnchor:v23 constant:-10.0];
    v45[2] = v24;
    v25 = [(UILabel *)v5->_text centerYAnchor];
    v26 = [(AXUIVoiceOverTextSpinnerView *)v5 centerYAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    v45[3] = v27;
    v28 = [(UIActivityIndicatorView *)v5->_spinner centerYAnchor];
    v29 = [(AXUIVoiceOverTextSpinnerView *)v5 centerYAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    v45[4] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:5];
    [v34 activateConstraints:v31];

    v4 = v41;
  }

  return v5;
}

@end