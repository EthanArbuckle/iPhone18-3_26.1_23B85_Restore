@interface SFQRImageContentView
- (CGSize)sizeThatFits:(CGSize)fits;
- (SFQRImageContentView)initWithTitle:(id)title subtitle:(id)subtitle;
@end

@implementation SFQRImageContentView

- (SFQRImageContentView)initWithTitle:(id)title subtitle:(id)subtitle
{
  v65[4] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  subtitleCopy = subtitle;
  v63.receiver = self;
  v63.super_class = SFQRImageContentView;
  v8 = [(SFQRImageContentView *)&v63 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [MEMORY[0x1E69DC888] sf_barHairlineShadowColor];
    v10 = v61 = subtitleCopy;
    [v9 setBackgroundColor:v10];

    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFQRImageContentView *)v8 addSubview:v9];
    v52 = MEMORY[0x1E696ACD8];
    heightAnchor = [v9 heightAnchor];
    _SFOnePixel();
    v56 = [heightAnchor constraintEqualToConstant:?];
    v65[0] = v56;
    v11 = v9;
    leadingAnchor = [v9 leadingAnchor];
    leadingAnchor2 = [(SFQRImageContentView *)v8 leadingAnchor];
    v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v65[1] = v13;
    v60 = v11;
    trailingAnchor = [v11 trailingAnchor];
    trailingAnchor2 = [(SFQRImageContentView *)v8 trailingAnchor];
    v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v65[2] = v16;
    topAnchor = [v11 topAnchor];
    topAnchor2 = [(SFQRImageContentView *)v8 topAnchor];
    [topAnchor constraintEqualToAnchor:topAnchor2];
    v19 = v62 = titleCopy;
    v65[3] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:4];
    [v52 activateConstraints:v20];

    v21 = *MEMORY[0x1E69DDD08];
    v59 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD08] addingSymbolicTraits:2 options:0];
    v22 = [MEMORY[0x1E69DB878] fontWithDescriptor:v59 size:0.0];
    v23 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v24 = v22;
    [v23 setFont:v22];
    [v23 setText:v62];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [v23 setTextColor:labelColor];

    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFQRImageContentView *)v8 addSubview:v23];
    v26 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v27 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v21];
    [v26 setFont:v27];

    [v26 setText:v61];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v26 setTextColor:secondaryLabelColor];

    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFQRImageContentView *)v8 addSubview:v26];
    v47 = MEMORY[0x1E696ACD8];
    leadingAnchor3 = [v23 leadingAnchor];
    leadingAnchor4 = [(SFQRImageContentView *)v8 leadingAnchor];
    v53 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
    v64[0] = v53;
    trailingAnchor3 = [v23 trailingAnchor];
    trailingAnchor4 = [(SFQRImageContentView *)v8 trailingAnchor];
    v49 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];
    v64[1] = v49;
    firstBaselineAnchor = [v23 firstBaselineAnchor];
    topAnchor3 = [(SFQRImageContentView *)v8 topAnchor];
    [v24 _scaledValueForValue:20.0];
    _SFRoundFloatToPixels();
    v45 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor3 constant:?];
    v64[2] = v45;
    leadingAnchor5 = [v26 leadingAnchor];
    leadingAnchor6 = [(SFQRImageContentView *)v8 leadingAnchor];
    v42 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:16.0];
    v64[3] = v42;
    firstBaselineAnchor2 = [v26 firstBaselineAnchor];
    firstBaselineAnchor3 = [v23 firstBaselineAnchor];
    v41 = v24;
    [v24 _scaledValueForValue:15.0];
    _SFRoundFloatToPixels();
    v38 = [firstBaselineAnchor2 constraintEqualToAnchor:firstBaselineAnchor3 constant:?];
    v64[4] = v38;
    trailingAnchor5 = [v26 trailingAnchor];
    trailingAnchor6 = [(SFQRImageContentView *)v8 trailingAnchor];
    v31 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-16.0];
    v64[5] = v31;
    bottomAnchor = [(SFQRImageContentView *)v8 bottomAnchor];
    firstBaselineAnchor4 = [v26 firstBaselineAnchor];
    [v24 _scaledValueForValue:12.0];
    _SFRoundFloatToPixels();
    v34 = [bottomAnchor constraintEqualToAnchor:firstBaselineAnchor4 constant:?];
    v64[6] = v34;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:7];
    [v47 activateConstraints:v35];

    subtitleCopy = v61;
    titleCopy = v62;

    v36 = v8;
  }

  return v8;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  LODWORD(v3) = 1148846080;
  LODWORD(v4) = 1112014848;
  [(SFQRImageContentView *)self systemLayoutSizeFittingSize:fits.width withHorizontalFittingPriority:fits.height verticalFittingPriority:v3, v4];
  result.height = v6;
  result.width = v5;
  return result;
}

@end