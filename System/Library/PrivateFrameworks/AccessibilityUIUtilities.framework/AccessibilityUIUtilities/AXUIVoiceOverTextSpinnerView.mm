@interface AXUIVoiceOverTextSpinnerView
- (AXUIVoiceOverTextSpinnerView)initWithSpecifier:(id)specifier;
@end

@implementation AXUIVoiceOverTextSpinnerView

- (AXUIVoiceOverTextSpinnerView)initWithSpecifier:(id)specifier
{
  v45[5] = *MEMORY[0x1E69E9840];
  specifierCopy = specifier;
  v44.receiver = self;
  v44.super_class = AXUIVoiceOverTextSpinnerView;
  v5 = [(AXUIVoiceOverTextSpinnerView *)&v44 init];
  if (v5)
  {
    [specifierCopy setProperty:v5 forKey:@"VoiceOverTextSpinnerView"];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(AXUIVoiceOverTextSpinnerView *)v5 setBackgroundColor:clearColor];

    [(AXUIVoiceOverTextSpinnerView *)v5 setAutoresizingMask:2];
    v7 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    text = v5->_text;
    v5->_text = v7;

    v9 = v5->_text;
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v9 setBackgroundColor:clearColor2];

    v11 = v5->_text;
    v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    [(UILabel *)v11 setFont:v12];

    v13 = v5->_text;
    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    [(UILabel *)v13 setTextColor:systemGrayColor];

    [(UILabel *)v5->_text setShadowOffset:0.0, 1.0];
    [(UILabel *)v5->_text setLineBreakMode:0];
    [(UILabel *)v5->_text setNumberOfLines:0];
    v15 = v5->_text;
    name = [specifierCopy name];
    localizedUppercaseString = [name localizedUppercaseString];
    [(UILabel *)v15 setText:localizedUppercaseString];

    [(UILabel *)v5->_text setAdjustsFontForContentSizeCategory:1];
    v18 = v5->_text;
    v43.receiver = v5;
    v43.super_class = AXUIVoiceOverTextSpinnerView;
    [(AXUIVoiceOverTextSpinnerView *)&v43 addSubview:v18];
    v19 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    spinner = v5->_spinner;
    v5->_spinner = v19;

    [(UIActivityIndicatorView *)v5->_spinner setHidesWhenStopped:1];
    v41 = specifierCopy;
    v21 = [specifierCopy propertyForKey:@"VoiceOverTextSpinnerViewEnabled"];
    LODWORD(localizedUppercaseString) = [v21 BOOLValue];

    if (localizedUppercaseString)
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
    leadingAnchor = [(UILabel *)v5->_text leadingAnchor];
    leadingAnchor2 = [(AXUIVoiceOverTextSpinnerView *)v5 leadingAnchor];
    v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:15.0];
    v45[0] = v38;
    leadingAnchor3 = [(UIActivityIndicatorView *)v5->_spinner leadingAnchor];
    trailingAnchor = [(UILabel *)v5->_text trailingAnchor];
    v35 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:10.0];
    v45[1] = v35;
    trailingAnchor2 = [(UIActivityIndicatorView *)v5->_spinner trailingAnchor];
    trailingAnchor3 = [(AXUIVoiceOverTextSpinnerView *)v5 trailingAnchor];
    v24 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:trailingAnchor3 constant:-10.0];
    v45[2] = v24;
    centerYAnchor = [(UILabel *)v5->_text centerYAnchor];
    centerYAnchor2 = [(AXUIVoiceOverTextSpinnerView *)v5 centerYAnchor];
    v27 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v45[3] = v27;
    centerYAnchor3 = [(UIActivityIndicatorView *)v5->_spinner centerYAnchor];
    centerYAnchor4 = [(AXUIVoiceOverTextSpinnerView *)v5 centerYAnchor];
    v30 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v45[4] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:5];
    [v34 activateConstraints:v31];

    specifierCopy = v41;
  }

  return v5;
}

@end