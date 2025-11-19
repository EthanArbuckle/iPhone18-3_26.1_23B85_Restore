@interface AAUIDataclassSpecifierCell
+ (_NSRange)_rangeForLinkFromSpecifier:(id)a3;
+ (id)_attributedStringFromSpecifier:(id)a3;
+ (id)_subTitleAttributes;
- (AAUIDataclassSpecifierCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_setupViews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation AAUIDataclassSpecifierCell

- (AAUIDataclassSpecifierCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = AAUIDataclassSpecifierCell;
  v4 = [(PSTableCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(AAUIDataclassSpecifierCell *)v4 setSelectionStyle:0];
    [(AAUIDataclassSpecifierCell *)v5 _setupViews];
  }

  return v5;
}

- (void)_setupViews
{
  v98[12] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [(AAUIDataclassSpecifierCell *)self setHeaderImageView:v3];

  v4 = [(AAUIDataclassSpecifierCell *)self headerImageView];
  [v4 setContentMode:1];

  v5 = [(AAUIDataclassSpecifierCell *)self headerImageView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(AAUIDataclassSpecifierCell *)self headerImageView];
  LODWORD(v7) = 1132068864;
  [v6 setContentCompressionResistancePriority:1 forAxis:v7];

  v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(AAUIDataclassSpecifierCell *)self setHeaderTitleLabel:v8];

  v9 = [(AAUIDataclassSpecifierCell *)self headerTitleLabel];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = [(AAUIDataclassSpecifierCell *)self headerTitleLabel];
  v11 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDDC0] weight:*MEMORY[0x1E69DB958]];
  [v10 setFont:v11];

  v12 = [(AAUIDataclassSpecifierCell *)self headerTitleLabel];
  v13 = [MEMORY[0x1E69DC888] labelColor];
  [v12 setTextColor:v13];

  v14 = [(AAUIDataclassSpecifierCell *)self headerTitleLabel];
  [v14 setNumberOfLines:5];

  v15 = [(AAUIDataclassSpecifierCell *)self headerTitleLabel];
  [v15 setTextAlignment:1];

  v16 = [(AAUIDataclassSpecifierCell *)self headerTitleLabel];
  LODWORD(v17) = 1148846080;
  [v16 setContentCompressionResistancePriority:1 forAxis:v17];

  v18 = objc_alloc_init(MEMORY[0x1E69DD168]);
  [(AAUIDataclassSpecifierCell *)self setHeaderSubTitleTextView:v18];

  v19 = [(AAUIDataclassSpecifierCell *)self headerSubTitleTextView];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];

  v20 = +[AAUIDataclassSpecifierCell _subTitleFont];
  v21 = [(AAUIDataclassSpecifierCell *)self headerSubTitleTextView];
  [v21 setFont:v20];

  v22 = *MEMORY[0x1E69DDCE0];
  v23 = *(MEMORY[0x1E69DDCE0] + 8);
  v24 = *(MEMORY[0x1E69DDCE0] + 16);
  v25 = *(MEMORY[0x1E69DDCE0] + 24);
  v26 = [(AAUIDataclassSpecifierCell *)self headerSubTitleTextView];
  [v26 setLayoutMargins:{v22, v23, v24, v25}];

  v27 = [(AAUIDataclassSpecifierCell *)self headerSubTitleTextView];
  [v27 setTextContainerInset:{v22, v23, v24, v25}];

  v28 = [(AAUIDataclassSpecifierCell *)self headerSubTitleTextView];
  [v28 setTextAlignment:1];

  v29 = [(AAUIDataclassSpecifierCell *)self headerSubTitleTextView];
  [v29 setScrollEnabled:0];

  v30 = [(AAUIDataclassSpecifierCell *)self headerSubTitleTextView];
  [v30 setSelectable:1];

  v31 = [(AAUIDataclassSpecifierCell *)self headerSubTitleTextView];
  [v31 setEditable:0];

  v32 = [MEMORY[0x1E69DC888] clearColor];
  v33 = [(AAUIDataclassSpecifierCell *)self headerSubTitleTextView];
  [v33 setBackgroundColor:v32];

  v34 = [(AAUIDataclassSpecifierCell *)self contentView];
  v35 = [(AAUIDataclassSpecifierCell *)self headerImageView];
  [v34 addSubview:v35];

  v36 = [(AAUIDataclassSpecifierCell *)self contentView];
  v37 = [(AAUIDataclassSpecifierCell *)self headerTitleLabel];
  [v36 addSubview:v37];

  v38 = [(AAUIDataclassSpecifierCell *)self contentView];
  v39 = [(AAUIDataclassSpecifierCell *)self headerSubTitleTextView];
  [v38 addSubview:v39];

  v75 = MEMORY[0x1E696ACD8];
  v97 = [(AAUIDataclassSpecifierCell *)self headerImageView];
  v96 = [v97 heightAnchor];
  v95 = [v96 constraintEqualToConstant:56.0];
  v98[0] = v95;
  v94 = [(AAUIDataclassSpecifierCell *)self headerImageView];
  v93 = [v94 widthAnchor];
  v92 = [v93 constraintEqualToConstant:56.0];
  v98[1] = v92;
  v91 = [(AAUIDataclassSpecifierCell *)self headerImageView];
  v89 = [v91 leadingAnchor];
  v90 = [(AAUIDataclassSpecifierCell *)self contentView];
  v88 = [v90 leadingAnchor];
  v87 = [v89 constraintGreaterThanOrEqualToAnchor:v88 constant:24.0];
  v98[2] = v87;
  v86 = [(AAUIDataclassSpecifierCell *)self headerImageView];
  v84 = [v86 centerXAnchor];
  v85 = [(AAUIDataclassSpecifierCell *)self contentView];
  v83 = [v85 centerXAnchor];
  v82 = [v84 constraintEqualToAnchor:v83];
  v98[3] = v82;
  v81 = [(AAUIDataclassSpecifierCell *)self headerImageView];
  v79 = [v81 topAnchor];
  v80 = [(AAUIDataclassSpecifierCell *)self contentView];
  v78 = [v80 topAnchor];
  v77 = [v79 constraintEqualToAnchor:v78 constant:32.0];
  v98[4] = v77;
  v76 = [(AAUIDataclassSpecifierCell *)self headerImageView];
  v73 = [v76 bottomAnchor];
  v74 = [(AAUIDataclassSpecifierCell *)self headerTitleLabel];
  v72 = [v74 topAnchor];
  v71 = [v73 constraintEqualToAnchor:v72 constant:-16.0];
  v98[5] = v71;
  v70 = [(AAUIDataclassSpecifierCell *)self headerTitleLabel];
  v68 = [v70 leadingAnchor];
  v69 = [(AAUIDataclassSpecifierCell *)self contentView];
  v67 = [v69 leadingAnchor];
  v66 = [v68 constraintEqualToAnchor:v67 constant:24.0];
  v98[6] = v66;
  v65 = [(AAUIDataclassSpecifierCell *)self headerTitleLabel];
  v63 = [v65 centerXAnchor];
  v64 = [(AAUIDataclassSpecifierCell *)self contentView];
  v62 = [v64 centerXAnchor];
  v61 = [v63 constraintEqualToAnchor:v62];
  v98[7] = v61;
  v60 = [(AAUIDataclassSpecifierCell *)self headerTitleLabel];
  v58 = [v60 bottomAnchor];
  v59 = [(AAUIDataclassSpecifierCell *)self headerSubTitleTextView];
  v57 = [v59 topAnchor];
  v56 = [v58 constraintEqualToAnchor:v57 constant:-8.0];
  v98[8] = v56;
  v55 = [(AAUIDataclassSpecifierCell *)self headerSubTitleTextView];
  v53 = [v55 leadingAnchor];
  v54 = [(AAUIDataclassSpecifierCell *)self contentView];
  v52 = [v54 leadingAnchor];
  v51 = [v53 constraintEqualToAnchor:v52 constant:24.0];
  v98[9] = v51;
  v50 = [(AAUIDataclassSpecifierCell *)self headerSubTitleTextView];
  v40 = [v50 centerXAnchor];
  v41 = [(AAUIDataclassSpecifierCell *)self contentView];
  v42 = [v41 centerXAnchor];
  v43 = [v40 constraintEqualToAnchor:v42];
  v98[10] = v43;
  v44 = [(AAUIDataclassSpecifierCell *)self headerSubTitleTextView];
  v45 = [v44 bottomAnchor];
  v46 = [(AAUIDataclassSpecifierCell *)self contentView];
  v47 = [v46 bottomAnchor];
  v48 = [v45 constraintEqualToAnchor:v47 constant:-12.0];
  v98[11] = v48;
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:12];
  [v75 activateConstraints:v49];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = AAUIDataclassSpecifierCell;
  [(PSTableCell *)&v15 refreshCellContentsWithSpecifier:v4];
  v5 = [(PSTableCell *)self titleLabel];
  [v5 setText:&stru_1F447F790];

  v6 = [(AAUIDataclassSpecifierCell *)self imageView];
  [v6 setImage:0];

  v7 = [(AAUIDataclassSpecifierCell *)self headerImageView];
  v8 = [v4 propertyForKey:*MEMORY[0x1E69C5920]];
  [v7 setImage:v8];

  v9 = [(AAUIDataclassSpecifierCell *)self headerTitleLabel];
  v10 = [v4 propertyForKey:*MEMORY[0x1E69C59A8]];
  [v9 setText:v10];

  v11 = [AAUIDataclassSpecifierCell _attributedStringFromSpecifier:v4];
  v12 = [(AAUIDataclassSpecifierCell *)self headerSubTitleTextView];
  v13 = v12;
  if (v11)
  {
    [v12 setAttributedText:v11];
  }

  else
  {
    v14 = [v4 propertyForKey:*MEMORY[0x1E69C59A0]];
    [v13 setText:v14];
  }

  [(AAUIDataclassSpecifierCell *)self setNeedsLayout];
}

+ (id)_subTitleAttributes
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v3 setAlignment:1];
  v7[0] = *MEMORY[0x1E69DB648];
  v4 = [a1 _subTitleFont];
  v7[1] = *MEMORY[0x1E69DB688];
  v8[0] = v4;
  v8[1] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

+ (_NSRange)_rangeForLinkFromSpecifier:(id)a3
{
  v3 = *MEMORY[0x1E69C59A0];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = [v4 objectForKeyedSubscript:@"AAUIDataclassAttributedLinkText"];
  v7 = [v4 objectForKeyedSubscript:@"AAUIDataclassAttributedLink"];

  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || v7 == 0)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v12 = [v5 componentsSeparatedByString:@"%@"];
    if ([v12 count] == 2)
    {
      v13 = [v12 objectAtIndexedSubscript:0];
      v10 = [v13 length];
      v11 = [v7 length];
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }
  }

  v14 = v10;
  v15 = v11;
  result.length = v15;
  result.location = v14;
  return result;
}

+ (id)_attributedStringFromSpecifier:(id)a3
{
  v29[1] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69C59A0];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = [v5 objectForKeyedSubscript:@"AAUIDataclassAttributedLinkText"];
  v8 = [v5 objectForKeyedSubscript:@"AAUIDataclassAttributedLink"];

  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v8 == 0)
  {
    v11 = 0;
  }

  else
  {
    v12 = [v6 componentsSeparatedByString:@"%@"];
    if ([v12 count] == 2)
    {
      v25 = [v12 objectAtIndexedSubscript:0];
      v23 = [v12 objectAtIndexedSubscript:1];
      v28 = *MEMORY[0x1E69DB650];
      v13 = v28;
      v14 = [MEMORY[0x1E69DC888] labelColor];
      v29[0] = v14;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];

      v15 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v25 attributes:v24];
      v26[0] = v13;
      v16 = [MEMORY[0x1E69DC888] systemBlueColor];
      v27[0] = v16;
      v26[1] = *MEMORY[0x1E69DB670];
      v17 = [MEMORY[0x1E695DFF8] URLWithString:v8];
      v27[1] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];

      v19 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v7 attributes:v18];
      [v15 appendAttributedString:v19];
      v20 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v23];
      [v15 appendAttributedString:v20];
      v21 = [a1 _subTitleAttributes];
      [v15 addAttributes:v21 range:{0, objc_msgSend(v15, "length")}];

      v11 = [v15 copy];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

@end