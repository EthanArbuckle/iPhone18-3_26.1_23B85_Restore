@interface AAUIInheritanceAccessKeyCell
+ (id)specifierForAcessKey:(id)a3 qrCodeImage:(id)a4;
- (AAUIInheritanceAccessKeyCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_setupViews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation AAUIInheritanceAccessKeyCell

- (AAUIInheritanceAccessKeyCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = AAUIInheritanceAccessKeyCell;
  v4 = [(PSTableCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(AAUIInheritanceAccessKeyCell *)v4 setSelectionStyle:0];
    [(AAUIInheritanceAccessKeyCell *)v5 _setupViews];
  }

  return v5;
}

+ (id)specifierForAcessKey:(id)a3 qrCodeImage:(id)a4
{
  v6 = MEMORY[0x1E69C5748];
  v7 = a4;
  v8 = a3;
  v9 = [v6 preferenceSpecifierNamed:v8 target:a1 set:0 get:0 detail:0 cell:-1 edit:0];
  [v9 setProperty:objc_opt_class() forKey:*MEMORY[0x1E69C5860]];
  [v9 setProperty:v8 forKey:@"AccessKey"];

  [v9 setProperty:v7 forKey:@"QRCodeImage"];

  return v9;
}

- (void)_setupViews
{
  v56[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [(AAUIInheritanceAccessKeyCell *)self setQrCodeImageView:v3];

  v4 = [(AAUIInheritanceAccessKeyCell *)self qrCodeImageView];
  [v4 setContentMode:1];

  v5 = [(AAUIInheritanceAccessKeyCell *)self qrCodeImageView];
  LODWORD(v6) = 1132068864;
  [v5 setContentCompressionResistancePriority:1 forAxis:v6];

  v7 = objc_alloc_init(MEMORY[0x1E69DD168]);
  [(AAUIInheritanceAccessKeyCell *)self setAccessKeyTextView:v7];

  v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v9 = [(AAUIInheritanceAccessKeyCell *)self accessKeyTextView];
  [v9 setFont:v8];

  v10 = [(AAUIInheritanceAccessKeyCell *)self accessKeyTextView];
  [v10 setTextAlignment:1];

  v11 = [(AAUIInheritanceAccessKeyCell *)self accessKeyTextView];
  [v11 setEditable:0];

  v12 = [(AAUIInheritanceAccessKeyCell *)self accessKeyTextView];
  [v12 setSelectable:0];

  v13 = [(AAUIInheritanceAccessKeyCell *)self accessKeyTextView];
  [v13 setScrollEnabled:0];

  v14 = *MEMORY[0x1E69DDCE0];
  v15 = *(MEMORY[0x1E69DDCE0] + 8);
  v16 = *(MEMORY[0x1E69DDCE0] + 16);
  v17 = *(MEMORY[0x1E69DDCE0] + 24);
  v18 = [(AAUIInheritanceAccessKeyCell *)self accessKeyTextView];
  [v18 setTextContainerInset:{v14, v15, v16, v17}];

  v19 = [(AAUIInheritanceAccessKeyCell *)self accessKeyTextView];
  LODWORD(v20) = 1148846080;
  [v19 setContentCompressionResistancePriority:1 forAxis:v20];

  v21 = objc_alloc(MEMORY[0x1E69DCF90]);
  v22 = [(AAUIInheritanceAccessKeyCell *)self qrCodeImageView];
  v56[0] = v22;
  v23 = [(AAUIInheritanceAccessKeyCell *)self accessKeyTextView];
  v56[1] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];
  v25 = [v21 initWithArrangedSubviews:v24];

  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v25 setAxis:1];
  [v25 setSpacing:30.0];
  v26 = [(AAUIInheritanceAccessKeyCell *)self contentView];
  [v26 addSubview:v25];

  v43 = MEMORY[0x1E696ACD8];
  v54 = [(AAUIInheritanceAccessKeyCell *)self qrCodeImageView];
  v53 = [v54 heightAnchor];
  v52 = [v53 constraintEqualToConstant:155.0];
  v55[0] = v52;
  v51 = [(AAUIInheritanceAccessKeyCell *)self qrCodeImageView];
  v50 = [v51 widthAnchor];
  v49 = [v50 constraintEqualToConstant:155.0];
  v55[1] = v49;
  v47 = [v25 leadingAnchor];
  v48 = [(AAUIInheritanceAccessKeyCell *)self contentView];
  v46 = [v48 layoutMarginsGuide];
  v45 = [v46 leadingAnchor];
  v44 = [v47 constraintEqualToAnchor:v45 constant:16.0];
  v55[2] = v44;
  v41 = [v25 trailingAnchor];
  v42 = [(AAUIInheritanceAccessKeyCell *)self contentView];
  v40 = [v42 layoutMarginsGuide];
  v39 = [v40 trailingAnchor];
  v38 = [v41 constraintEqualToAnchor:v39 constant:-16.0];
  v55[3] = v38;
  v36 = [v25 topAnchor];
  v37 = [(AAUIInheritanceAccessKeyCell *)self contentView];
  v27 = [v37 layoutMarginsGuide];
  v28 = [v27 topAnchor];
  v29 = [v36 constraintEqualToAnchor:v28 constant:38.0];
  v55[4] = v29;
  v30 = [v25 bottomAnchor];
  v31 = [(AAUIInheritanceAccessKeyCell *)self contentView];
  v32 = [v31 layoutMarginsGuide];
  v33 = [v32 bottomAnchor];
  v34 = [v30 constraintEqualToAnchor:v33 constant:-28.0];
  v55[5] = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:6];
  [v43 activateConstraints:v35];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = [v4 propertyForKey:@"QRCodeImage"];
  v6 = [(AAUIInheritanceAccessKeyCell *)self qrCodeImageView];
  [v6 setImage:v5];

  v7 = [v4 propertyForKey:@"AccessKey"];

  v8 = [(AAUIInheritanceAccessKeyCell *)self accessKeyTextView];
  [v8 setText:v7];

  [(AAUIInheritanceAccessKeyCell *)self setNeedsLayout];
}

@end