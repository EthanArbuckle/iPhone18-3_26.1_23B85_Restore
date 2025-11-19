@interface AAUIAccountContactBulletPointSubPane
- (AAUIAccountContactBulletPointSubPane)initWithImage:(id)a3 title:(id)a4 message:(id)a5;
- (id)_imageViewWithImage:(id)a3;
- (id)_labelWithString:(id)a3 title:(BOOL)a4;
- (id)_verticalStackView;
@end

@implementation AAUIAccountContactBulletPointSubPane

- (AAUIAccountContactBulletPointSubPane)initWithImage:(id)a3 title:(id)a4 message:(id)a5
{
  v68[7] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v67.receiver = self;
  v67.super_class = AAUIAccountContactBulletPointSubPane;
  v11 = [(AAUIAccountContactBulletPointSubPane *)&v67 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v12 = v11;
  if (v11)
  {
    [(AAUIAccountContactBulletPointSubPane *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [(AAUIAccountContactBulletPointSubPane *)v12 _imageViewWithImage:v8];
    v66 = v8;
    bulletImageView = v12->_bulletImageView;
    v12->_bulletImageView = v13;

    [(AAUIAccountContactBulletPointSubPane *)v12 addSubview:v12->_bulletImageView];
    v15 = [(AAUIAccountContactBulletPointSubPane *)v12 _verticalStackView];
    messageStackView = v12->_messageStackView;
    v12->_messageStackView = v15;

    [(AAUIAccountContactBulletPointSubPane *)v12 addSubview:v12->_messageStackView];
    v17 = [(AAUIAccountContactBulletPointSubPane *)v12 _labelWithString:v9 title:1];
    titleLabel = v12->_titleLabel;
    v12->_titleLabel = v17;

    v19 = [(AAUIAccountContactBulletPointSubPane *)v12 _labelWithString:v10 title:0];
    v65 = v9;
    messageLabel = v12->_messageLabel;
    v12->_messageLabel = v19;

    [(UIStackView *)v12->_messageStackView addArrangedSubview:v12->_titleLabel];
    [(UIStackView *)v12->_messageStackView addArrangedSubview:v12->_messageLabel];
    v58 = MEMORY[0x1E696ACD8];
    v63 = [(UIImageView *)v12->_bulletImageView topAnchor];
    v61 = [(UILabel *)v12->_titleLabel firstBaselineAnchor];
    v62 = [(UILabel *)v12->_titleLabel font];
    [v62 ascender];
    v60 = [v63 constraintEqualToAnchor:v61 constant:-(v21 + -2.0)];
    v68[0] = v60;
    v22 = [(UIImageView *)v12->_bulletImageView leadingAnchor];
    v59 = v22;
    v23 = [(AAUIAccountContactBulletPointSubPane *)v12 leadingAnchor];
    v57 = v23;
    v64 = v10;
    v24 = [MEMORY[0x1E69DC938] currentDevice];
    v25 = [v24 userInterfaceIdiom];

    v26 = 66.0;
    if ((v25 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      v26 = 0.0;
    }

    v56 = [v22 constraintEqualToAnchor:v23 constant:v26];
    v68[1] = v56;
    v27 = [(UIImageView *)v12->_bulletImageView widthAnchor];
    v55 = v27;
    v28 = [MEMORY[0x1E69DC938] currentDevice];
    v29 = [v28 userInterfaceIdiom];

    v30 = 40.0;
    if ((v29 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v30 = 44.0;
    }

    v54 = [v27 constraintEqualToConstant:v30];
    v68[2] = v54;
    v31 = [(UIStackView *)v12->_messageStackView leadingAnchor];
    v53 = v31;
    v32 = [(UIImageView *)v12->_bulletImageView trailingAnchor];
    v52 = v32;
    v33 = [MEMORY[0x1E69DC938] currentDevice];
    v34 = [v33 userInterfaceIdiom];

    v35 = 26.0;
    if ((v34 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v35 = 16.0;
    }

    v51 = [v31 constraintEqualToAnchor:v32 constant:v35];
    v68[3] = v51;
    v36 = [(UIStackView *)v12->_messageStackView trailingAnchor];
    v50 = v36;
    v37 = [(AAUIAccountContactBulletPointSubPane *)v12 trailingAnchor];
    v38 = [MEMORY[0x1E69DC938] currentDevice];
    v39 = [v38 userInterfaceIdiom];

    v40 = -50.0;
    if ((v39 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      v40 = -16.0;
    }

    v41 = [v36 constraintEqualToAnchor:v37 constant:v40];
    v68[4] = v41;
    v42 = [(UIStackView *)v12->_messageStackView topAnchor];
    v43 = [(AAUIAccountContactBulletPointSubPane *)v12 topAnchor];
    v44 = [v42 constraintEqualToAnchor:v43];
    v68[5] = v44;
    v45 = [(UIStackView *)v12->_messageStackView bottomAnchor];
    v46 = [(AAUIAccountContactBulletPointSubPane *)v12 bottomAnchor];
    v47 = [v45 constraintLessThanOrEqualToAnchor:v46];
    v68[6] = v47;
    v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:7];
    [v58 activateConstraints:v48];

    v10 = v64;
    v8 = v66;

    v9 = v65;
  }

  return v12;
}

- (id)_labelWithString:(id)a3 title:(BOOL)a4
{
  v4 = a4;
  v5 = MEMORY[0x1E69DCC10];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = MEMORY[0x1E69DB980];
  if (!v4)
  {
    v8 = MEMORY[0x1E69DB978];
  }

  v9 = *v8;
  v10 = [MEMORY[0x1E69DCA40] defaultMetrics];
  v11 = [MEMORY[0x1E69DB878] systemFontOfSize:15.0 weight:v9];
  v12 = [v10 scaledFontForFont:v11];
  [v7 setFont:v12];

  [v7 setTextAlignment:4];
  [v7 setNumberOfLines:0];
  [v7 setAdjustsFontSizeToFitWidth:0];
  [v7 setAdjustsFontForContentSizeCategory:1];
  v13 = [MEMORY[0x1E69DC888] clearColor];
  [v7 setBackgroundColor:v13];

  [v7 setText:v6];
  if (!v4)
  {
    v14 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v7 setTextColor:v14];
  }

  return v7;
}

- (id)_verticalStackView
{
  v2 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setAlignment:1];
  [v2 setAxis:1];
  [v2 setDistribution:0];
  v3 = [MEMORY[0x1E69DC888] clearColor];
  [v2 setBackgroundColor:v3];

  return v2;
}

- (id)_imageViewWithImage:(id)a3
{
  v3 = MEMORY[0x1E69DCAE0];
  v4 = a3;
  v5 = [[v3 alloc] initWithImage:v4];

  [v5 setContentMode:1];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v5;
}

@end