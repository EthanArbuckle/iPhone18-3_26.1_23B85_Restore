@interface AAUIInheritanceAccessKeyCell
+ (id)specifierForAcessKey:(id)key qrCodeImage:(id)image;
- (AAUIInheritanceAccessKeyCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setupViews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation AAUIInheritanceAccessKeyCell

- (AAUIInheritanceAccessKeyCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = AAUIInheritanceAccessKeyCell;
  v4 = [(PSTableCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(AAUIInheritanceAccessKeyCell *)v4 setSelectionStyle:0];
    [(AAUIInheritanceAccessKeyCell *)v5 _setupViews];
  }

  return v5;
}

+ (id)specifierForAcessKey:(id)key qrCodeImage:(id)image
{
  v6 = MEMORY[0x1E69C5748];
  imageCopy = image;
  keyCopy = key;
  v9 = [v6 preferenceSpecifierNamed:keyCopy target:self set:0 get:0 detail:0 cell:-1 edit:0];
  [v9 setProperty:objc_opt_class() forKey:*MEMORY[0x1E69C5860]];
  [v9 setProperty:keyCopy forKey:@"AccessKey"];

  [v9 setProperty:imageCopy forKey:@"QRCodeImage"];

  return v9;
}

- (void)_setupViews
{
  v56[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [(AAUIInheritanceAccessKeyCell *)self setQrCodeImageView:v3];

  qrCodeImageView = [(AAUIInheritanceAccessKeyCell *)self qrCodeImageView];
  [qrCodeImageView setContentMode:1];

  qrCodeImageView2 = [(AAUIInheritanceAccessKeyCell *)self qrCodeImageView];
  LODWORD(v6) = 1132068864;
  [qrCodeImageView2 setContentCompressionResistancePriority:1 forAxis:v6];

  v7 = objc_alloc_init(MEMORY[0x1E69DD168]);
  [(AAUIInheritanceAccessKeyCell *)self setAccessKeyTextView:v7];

  v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  accessKeyTextView = [(AAUIInheritanceAccessKeyCell *)self accessKeyTextView];
  [accessKeyTextView setFont:v8];

  accessKeyTextView2 = [(AAUIInheritanceAccessKeyCell *)self accessKeyTextView];
  [accessKeyTextView2 setTextAlignment:1];

  accessKeyTextView3 = [(AAUIInheritanceAccessKeyCell *)self accessKeyTextView];
  [accessKeyTextView3 setEditable:0];

  accessKeyTextView4 = [(AAUIInheritanceAccessKeyCell *)self accessKeyTextView];
  [accessKeyTextView4 setSelectable:0];

  accessKeyTextView5 = [(AAUIInheritanceAccessKeyCell *)self accessKeyTextView];
  [accessKeyTextView5 setScrollEnabled:0];

  v14 = *MEMORY[0x1E69DDCE0];
  v15 = *(MEMORY[0x1E69DDCE0] + 8);
  v16 = *(MEMORY[0x1E69DDCE0] + 16);
  v17 = *(MEMORY[0x1E69DDCE0] + 24);
  accessKeyTextView6 = [(AAUIInheritanceAccessKeyCell *)self accessKeyTextView];
  [accessKeyTextView6 setTextContainerInset:{v14, v15, v16, v17}];

  accessKeyTextView7 = [(AAUIInheritanceAccessKeyCell *)self accessKeyTextView];
  LODWORD(v20) = 1148846080;
  [accessKeyTextView7 setContentCompressionResistancePriority:1 forAxis:v20];

  v21 = objc_alloc(MEMORY[0x1E69DCF90]);
  qrCodeImageView3 = [(AAUIInheritanceAccessKeyCell *)self qrCodeImageView];
  v56[0] = qrCodeImageView3;
  accessKeyTextView8 = [(AAUIInheritanceAccessKeyCell *)self accessKeyTextView];
  v56[1] = accessKeyTextView8;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];
  v25 = [v21 initWithArrangedSubviews:v24];

  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v25 setAxis:1];
  [v25 setSpacing:30.0];
  contentView = [(AAUIInheritanceAccessKeyCell *)self contentView];
  [contentView addSubview:v25];

  v43 = MEMORY[0x1E696ACD8];
  qrCodeImageView4 = [(AAUIInheritanceAccessKeyCell *)self qrCodeImageView];
  heightAnchor = [qrCodeImageView4 heightAnchor];
  v52 = [heightAnchor constraintEqualToConstant:155.0];
  v55[0] = v52;
  qrCodeImageView5 = [(AAUIInheritanceAccessKeyCell *)self qrCodeImageView];
  widthAnchor = [qrCodeImageView5 widthAnchor];
  v49 = [widthAnchor constraintEqualToConstant:155.0];
  v55[1] = v49;
  leadingAnchor = [v25 leadingAnchor];
  contentView2 = [(AAUIInheritanceAccessKeyCell *)self contentView];
  layoutMarginsGuide = [contentView2 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v44 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v55[2] = v44;
  trailingAnchor = [v25 trailingAnchor];
  contentView3 = [(AAUIInheritanceAccessKeyCell *)self contentView];
  layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v38 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v55[3] = v38;
  topAnchor = [v25 topAnchor];
  contentView4 = [(AAUIInheritanceAccessKeyCell *)self contentView];
  layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide3 topAnchor];
  v29 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:38.0];
  v55[4] = v29;
  bottomAnchor = [v25 bottomAnchor];
  contentView5 = [(AAUIInheritanceAccessKeyCell *)self contentView];
  layoutMarginsGuide4 = [contentView5 layoutMarginsGuide];
  bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
  v34 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-28.0];
  v55[5] = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:6];
  [v43 activateConstraints:v35];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = [specifierCopy propertyForKey:@"QRCodeImage"];
  qrCodeImageView = [(AAUIInheritanceAccessKeyCell *)self qrCodeImageView];
  [qrCodeImageView setImage:v5];

  v7 = [specifierCopy propertyForKey:@"AccessKey"];

  accessKeyTextView = [(AAUIInheritanceAccessKeyCell *)self accessKeyTextView];
  [accessKeyTextView setText:v7];

  [(AAUIInheritanceAccessKeyCell *)self setNeedsLayout];
}

@end