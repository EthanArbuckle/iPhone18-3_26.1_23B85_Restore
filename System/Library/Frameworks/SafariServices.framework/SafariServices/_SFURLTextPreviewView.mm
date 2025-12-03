@interface _SFURLTextPreviewView
- (_SFURLTextPreviewView)initWithURL:(id)l;
- (void)setURL:(id)l;
@end

@implementation _SFURLTextPreviewView

- (_SFURLTextPreviewView)initWithURL:(id)l
{
  v49[7] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v48.receiver = self;
  v48.super_class = _SFURLTextPreviewView;
  v5 = [(_SFURLTextPreviewView *)&v48 init];
  if (v5)
  {
    v47 = lCopy;
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    domainLabel = v5->_domainLabel;
    v5->_domainLabel = v6;

    [(UILabel *)v5->_domainLabel setClipsToBounds:1];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v5->_domainLabel setBackgroundColor:clearColor];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v5->_domainLabel setTextColor:labelColor];

    [(UILabel *)v5->_domainLabel setOpaque:0];
    [(UILabel *)v5->_domainLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v5->_domainLabel setNumberOfLines:1];
    [(UILabel *)v5->_domainLabel setLineBreakMode:4];
    [(_SFURLTextPreviewView *)v5 addSubview:v5->_domainLabel];
    v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    urlLabel = v5->_urlLabel;
    v5->_urlLabel = v10;

    [(UILabel *)v5->_urlLabel setClipsToBounds:1];
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v5->_urlLabel setBackgroundColor:clearColor2];

    [(UILabel *)v5->_urlLabel setOpaque:0];
    [(UILabel *)v5->_urlLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v5->_urlLabel setNumberOfLines:3];
    [(UILabel *)v5->_urlLabel setLineBreakMode:4];
    v13 = MEMORY[0x1E69DB878];
    v14 = *MEMORY[0x1E69DDD80];
    v15 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80]];
    v16 = [v15 fontDescriptorWithSymbolicTraits:2];
    v17 = [v13 fontWithDescriptor:v16 size:0.0];
    [(UILabel *)v5->_domainLabel setFont:v17];

    v18 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v14];
    [(UILabel *)v5->_urlLabel setFont:v18];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v5->_urlLabel setTextColor:secondaryLabelColor];

    [(_SFURLTextPreviewView *)v5 addSubview:v5->_urlLabel];
    layoutMarginsGuide = [(_SFURLTextPreviewView *)v5 layoutMarginsGuide];
    v36 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UILabel *)v5->_domainLabel leadingAnchor];
    leadingAnchor2 = [(_SFURLTextPreviewView *)v5 leadingAnchor];
    v44 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v49[0] = v44;
    trailingAnchor = [(UILabel *)v5->_domainLabel trailingAnchor];
    trailingAnchor2 = [(_SFURLTextPreviewView *)v5 trailingAnchor];
    v41 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v49[1] = v41;
    leadingAnchor3 = [(UILabel *)v5->_urlLabel leadingAnchor];
    leadingAnchor4 = [(_SFURLTextPreviewView *)v5 leadingAnchor];
    v37 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v49[2] = v37;
    trailingAnchor3 = [(UILabel *)v5->_urlLabel trailingAnchor];
    trailingAnchor4 = [(_SFURLTextPreviewView *)v5 trailingAnchor];
    v33 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v49[3] = v33;
    v38 = layoutMarginsGuide;
    bottomAnchor = [layoutMarginsGuide bottomAnchor];
    bottomAnchor2 = [(UILabel *)v5->_urlLabel bottomAnchor];
    v22 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
    v49[4] = v22;
    topAnchor = [(UILabel *)v5->_domainLabel topAnchor];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v49[5] = v25;
    topAnchor3 = [(UILabel *)v5->_urlLabel topAnchor];
    bottomAnchor3 = [(UILabel *)v5->_domainLabel bottomAnchor];
    v28 = [topAnchor3 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor3 multiplier:1.0];
    v49[6] = v28;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:7];
    [v36 activateConstraints:v29];

    lCopy = v47;
    [(_SFURLTextPreviewView *)v5 setURL:v47];
    v30 = v5;
  }

  return v5;
}

- (void)setURL:(id)l
{
  objc_storeStrong(&self->_URL, l);
  lCopy = l;
  _lp_simplifiedDisplayString = [lCopy _lp_simplifiedDisplayString];
  [(UILabel *)self->_domainLabel setText:_lp_simplifiedDisplayString];

  _lp_userVisibleString = [lCopy _lp_userVisibleString];
  [(UILabel *)self->_urlLabel setText:_lp_userVisibleString];

  [(_SFURLTextPreviewView *)self setNeedsLayout];
}

@end