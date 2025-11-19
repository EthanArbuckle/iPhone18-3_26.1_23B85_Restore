@interface SFQRImageContentView
- (CGSize)sizeThatFits:(CGSize)a3;
- (SFQRImageContentView)initWithTitle:(id)a3 subtitle:(id)a4;
@end

@implementation SFQRImageContentView

- (SFQRImageContentView)initWithTitle:(id)a3 subtitle:(id)a4
{
  v65[4] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v63.receiver = self;
  v63.super_class = SFQRImageContentView;
  v8 = [(SFQRImageContentView *)&v63 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [MEMORY[0x1E69DC888] sf_barHairlineShadowColor];
    v10 = v61 = v7;
    [v9 setBackgroundColor:v10];

    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFQRImageContentView *)v8 addSubview:v9];
    v52 = MEMORY[0x1E696ACD8];
    v58 = [v9 heightAnchor];
    _SFOnePixel();
    v56 = [v58 constraintEqualToConstant:?];
    v65[0] = v56;
    v11 = v9;
    v54 = [v9 leadingAnchor];
    v12 = [(SFQRImageContentView *)v8 leadingAnchor];
    v13 = [v54 constraintEqualToAnchor:v12];
    v65[1] = v13;
    v60 = v11;
    v14 = [v11 trailingAnchor];
    v15 = [(SFQRImageContentView *)v8 trailingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v65[2] = v16;
    v17 = [v11 topAnchor];
    v18 = [(SFQRImageContentView *)v8 topAnchor];
    [v17 constraintEqualToAnchor:v18];
    v19 = v62 = v6;
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
    v25 = [MEMORY[0x1E69DC888] labelColor];
    [v23 setTextColor:v25];

    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFQRImageContentView *)v8 addSubview:v23];
    v26 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v27 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v21];
    [v26 setFont:v27];

    [v26 setText:v61];
    v28 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v26 setTextColor:v28];

    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFQRImageContentView *)v8 addSubview:v26];
    v47 = MEMORY[0x1E696ACD8];
    v57 = [v23 leadingAnchor];
    v55 = [(SFQRImageContentView *)v8 leadingAnchor];
    v53 = [v57 constraintEqualToAnchor:v55 constant:16.0];
    v64[0] = v53;
    v51 = [v23 trailingAnchor];
    v50 = [(SFQRImageContentView *)v8 trailingAnchor];
    v49 = [v51 constraintEqualToAnchor:v50 constant:-16.0];
    v64[1] = v49;
    v48 = [v23 firstBaselineAnchor];
    v46 = [(SFQRImageContentView *)v8 topAnchor];
    [v24 _scaledValueForValue:20.0];
    _SFRoundFloatToPixels();
    v45 = [v48 constraintEqualToAnchor:v46 constant:?];
    v64[2] = v45;
    v44 = [v26 leadingAnchor];
    v43 = [(SFQRImageContentView *)v8 leadingAnchor];
    v42 = [v44 constraintEqualToAnchor:v43 constant:16.0];
    v64[3] = v42;
    v40 = [v26 firstBaselineAnchor];
    v39 = [v23 firstBaselineAnchor];
    v41 = v24;
    [v24 _scaledValueForValue:15.0];
    _SFRoundFloatToPixels();
    v38 = [v40 constraintEqualToAnchor:v39 constant:?];
    v64[4] = v38;
    v29 = [v26 trailingAnchor];
    v30 = [(SFQRImageContentView *)v8 trailingAnchor];
    v31 = [v29 constraintEqualToAnchor:v30 constant:-16.0];
    v64[5] = v31;
    v32 = [(SFQRImageContentView *)v8 bottomAnchor];
    v33 = [v26 firstBaselineAnchor];
    [v24 _scaledValueForValue:12.0];
    _SFRoundFloatToPixels();
    v34 = [v32 constraintEqualToAnchor:v33 constant:?];
    v64[6] = v34;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:7];
    [v47 activateConstraints:v35];

    v7 = v61;
    v6 = v62;

    v36 = v8;
  }

  return v8;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  LODWORD(v3) = 1148846080;
  LODWORD(v4) = 1112014848;
  [(SFQRImageContentView *)self systemLayoutSizeFittingSize:a3.width withHorizontalFittingPriority:a3.height verticalFittingPriority:v3, v4];
  result.height = v6;
  result.width = v5;
  return result;
}

@end