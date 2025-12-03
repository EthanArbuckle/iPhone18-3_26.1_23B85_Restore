@interface CNContactSuggestionsCollectionViewCell
- (BOOL)useAccessibleLayout;
- (CNContactSuggestionsCollectionViewCell)initWithFrame:(CGRect)frame;
- (UIImage)image;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setCheckMarkHidden:(BOOL)hidden;
- (void)setImage:(id)image;
- (void)setSelected:(BOOL)selected;
- (void)setUpCheckMarkConstraints;
- (void)setupConstraints;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CNContactSuggestionsCollectionViewCell

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = CNContactSuggestionsCollectionViewCell;
  [(CNContactSuggestionsCollectionViewCell *)&v5 prepareForReuse];
  avatarView = [(CNContactSuggestionsCollectionViewCell *)self avatarView];
  [avatarView setImage:0];

  nameLabel = [(CNContactSuggestionsCollectionViewCell *)self nameLabel];
  [nameLabel setText:0];

  [(CNContactSuggestionsCollectionViewCell *)self setCheckMarkHidden:1];
}

- (void)setImage:(id)image
{
  imageCopy = image;
  avatarView = [(CNContactSuggestionsCollectionViewCell *)self avatarView];
  [avatarView setImage:imageCopy];
}

- (UIImage)image
{
  avatarView = [(CNContactSuggestionsCollectionViewCell *)self avatarView];
  image = [avatarView image];

  return image;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v5.receiver = self;
  v5.super_class = CNContactSuggestionsCollectionViewCell;
  [(CNContactSuggestionsCollectionViewCell *)&v5 setSelected:?];
  [(CNContactSuggestionsCollectionViewCell *)self setCheckMarkHidden:!selectedCopy];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  v7.receiver = self;
  v7.super_class = CNContactSuggestionsCollectionViewCell;
  v4 = [(CNContactSuggestionsCollectionViewCell *)&v7 preferredLayoutAttributesFittingAttributes:attributes];
  if ([(CNContactSuggestionsCollectionViewCell *)self useAccessibleLayout])
  {
    v5 = +[CNUIFontRepository contactSuggestionsNameFont];
    [v5 lineHeight];

    [v4 size];
    [v4 setSize:?];
  }

  return v4;
}

- (void)setUpCheckMarkConstraints
{
  v46[8] = *MEMORY[0x1E69E9840];
  checkImageView = [(CNContactSuggestionsCollectionViewCell *)self checkImageView];
  widthAnchor = [checkImageView widthAnchor];
  checkImageView2 = [(CNContactSuggestionsCollectionViewCell *)self checkImageView];
  heightAnchor = [checkImageView2 heightAnchor];
  v41 = [widthAnchor constraintEqualToAnchor:heightAnchor];
  v46[0] = v41;
  checkImageView3 = [(CNContactSuggestionsCollectionViewCell *)self checkImageView];
  widthAnchor2 = [checkImageView3 widthAnchor];
  avatarView = [(CNContactSuggestionsCollectionViewCell *)self avatarView];
  widthAnchor3 = [avatarView widthAnchor];
  v36 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3 multiplier:0.4];
  v46[1] = v36;
  checkImageView4 = [(CNContactSuggestionsCollectionViewCell *)self checkImageView];
  bottomAnchor = [checkImageView4 bottomAnchor];
  avatarView2 = [(CNContactSuggestionsCollectionViewCell *)self avatarView];
  bottomAnchor2 = [avatarView2 bottomAnchor];
  v31 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:4.0];
  v46[2] = v31;
  checkImageView5 = [(CNContactSuggestionsCollectionViewCell *)self checkImageView];
  trailingAnchor = [checkImageView5 trailingAnchor];
  avatarView3 = [(CNContactSuggestionsCollectionViewCell *)self avatarView];
  trailingAnchor2 = [avatarView3 trailingAnchor];
  v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:4.0];
  v46[3] = v26;
  checkImageBackgroundView = [(CNContactSuggestionsCollectionViewCell *)self checkImageBackgroundView];
  widthAnchor4 = [checkImageBackgroundView widthAnchor];
  checkImageBackgroundView2 = [(CNContactSuggestionsCollectionViewCell *)self checkImageBackgroundView];
  heightAnchor2 = [checkImageBackgroundView2 heightAnchor];
  v20 = [widthAnchor4 constraintEqualToAnchor:heightAnchor2];
  v46[4] = v20;
  checkImageBackgroundView3 = [(CNContactSuggestionsCollectionViewCell *)self checkImageBackgroundView];
  widthAnchor5 = [checkImageBackgroundView3 widthAnchor];
  checkImageView6 = [(CNContactSuggestionsCollectionViewCell *)self checkImageView];
  widthAnchor6 = [checkImageView6 widthAnchor];
  v15 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6 multiplier:0.75];
  v46[5] = v15;
  checkImageBackgroundView4 = [(CNContactSuggestionsCollectionViewCell *)self checkImageBackgroundView];
  centerXAnchor = [checkImageBackgroundView4 centerXAnchor];
  checkImageView7 = [(CNContactSuggestionsCollectionViewCell *)self checkImageView];
  centerXAnchor2 = [checkImageView7 centerXAnchor];
  v6 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v46[6] = v6;
  checkImageBackgroundView5 = [(CNContactSuggestionsCollectionViewCell *)self checkImageBackgroundView];
  centerYAnchor = [checkImageBackgroundView5 centerYAnchor];
  checkImageView8 = [(CNContactSuggestionsCollectionViewCell *)self checkImageView];
  centerYAnchor2 = [checkImageView8 centerYAnchor];
  v11 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v46[7] = v11;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:8];

  [MEMORY[0x1E696ACD8] activateConstraints:v21];
  constraints = [(CNContactSuggestionsCollectionViewCell *)self constraints];
  v13 = [constraints arrayByAddingObjectsFromArray:v21];
}

- (void)setupConstraints
{
  v58[7] = *MEMORY[0x1E69E9840];
  useAccessibleLayout = [(CNContactSuggestionsCollectionViewCell *)self useAccessibleLayout];
  avatarView = [(CNContactSuggestionsCollectionViewCell *)self avatarView];
  widthAnchor = [avatarView widthAnchor];
  avatarView2 = [(CNContactSuggestionsCollectionViewCell *)self avatarView];
  heightAnchor = [avatarView2 heightAnchor];
  v8 = [widthAnchor constraintEqualToAnchor:heightAnchor];
  v9 = v8;
  if (useAccessibleLayout)
  {
    v58[0] = v8;
    avatarView3 = [(CNContactSuggestionsCollectionViewCell *)self avatarView];
    topAnchor = [avatarView3 topAnchor];
    contentView = [(CNContactSuggestionsCollectionViewCell *)self contentView];
    topAnchor2 = [contentView topAnchor];
    v55 = [topAnchor constraintGreaterThanOrEqualToAnchor:22.0 constant:?];
    v58[1] = v55;
    avatarView4 = [(CNContactSuggestionsCollectionViewCell *)self avatarView];
    centerYAnchor = [avatarView4 centerYAnchor];
    contentView2 = [(CNContactSuggestionsCollectionViewCell *)self contentView];
    [contentView2 centerYAnchor];
    v51 = v53 = centerYAnchor;
    v50 = [centerYAnchor constraintEqualToAnchor:?];
    v58[2] = v50;
    nameLabel = [(CNContactSuggestionsCollectionViewCell *)self nameLabel];
    centerYAnchor2 = [nameLabel centerYAnchor];
    contentView3 = [(CNContactSuggestionsCollectionViewCell *)self contentView];
    [contentView3 centerYAnchor];
    v46 = v48 = centerYAnchor2;
    v45 = [centerYAnchor2 constraintEqualToAnchor:?];
    v58[3] = v45;
    avatarView5 = [(CNContactSuggestionsCollectionViewCell *)self avatarView];
    leadingAnchor = [avatarView5 leadingAnchor];
    contentView4 = [(CNContactSuggestionsCollectionViewCell *)self contentView];
    [contentView4 leadingAnchor];
    v41 = v43 = leadingAnchor;
    v40 = [leadingAnchor constraintEqualToAnchor:?];
    v58[4] = v40;
    nameLabel2 = [(CNContactSuggestionsCollectionViewCell *)self nameLabel];
    leadingAnchor2 = [nameLabel2 leadingAnchor];
    avatarView6 = [(CNContactSuggestionsCollectionViewCell *)self avatarView];
    [avatarView6 trailingAnchor];
    v35 = v37 = leadingAnchor2;
    v14 = [leadingAnchor2 constraintEqualToAnchor:10.0 constant:?];
    v58[5] = v14;
    [(CNContactSuggestionsCollectionViewCell *)self nameLabel];
    v15 = v34 = avatarView;
    [v15 trailingAnchor];
    v16 = v33 = widthAnchor;
    [(CNContactSuggestionsCollectionViewCell *)self contentView];
    v17 = heightAnchor;
    v19 = v18 = avatarView2;
    [v19 trailingAnchor];
    v21 = v20 = v9;
    v22 = [v16 constraintEqualToAnchor:v21];
    v58[6] = v22;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:7];

    contentView5 = contentView;
    v9 = v20;
    topAnchor3 = topAnchor;

    avatarView2 = v18;
    heightAnchor = v17;
    avatarView7 = avatarView3;

    widthAnchor = v33;
    avatarView = v34;
  }

  else
  {
    v57[0] = v8;
    avatarView7 = [(CNContactSuggestionsCollectionViewCell *)self avatarView];
    topAnchor3 = [avatarView7 topAnchor];
    contentView5 = [(CNContactSuggestionsCollectionViewCell *)self contentView];
    topAnchor2 = [contentView5 topAnchor];
    v55 = [topAnchor3 constraintEqualToAnchor:?];
    v57[1] = v55;
    avatarView4 = [(CNContactSuggestionsCollectionViewCell *)self nameLabel];
    topAnchor4 = [avatarView4 topAnchor];
    contentView2 = [(CNContactSuggestionsCollectionViewCell *)self avatarView];
    [contentView2 bottomAnchor];
    v51 = v53 = topAnchor4;
    v50 = [topAnchor4 constraintEqualToAnchor:10.0 constant:?];
    v57[2] = v50;
    nameLabel = [(CNContactSuggestionsCollectionViewCell *)self avatarView];
    centerXAnchor = [nameLabel centerXAnchor];
    contentView3 = [(CNContactSuggestionsCollectionViewCell *)self contentView];
    [contentView3 centerXAnchor];
    v46 = v48 = centerXAnchor;
    v45 = [centerXAnchor constraintEqualToAnchor:?];
    v57[3] = v45;
    avatarView5 = [(CNContactSuggestionsCollectionViewCell *)self nameLabel];
    leadingAnchor3 = [avatarView5 leadingAnchor];
    contentView4 = [(CNContactSuggestionsCollectionViewCell *)self contentView];
    [contentView4 leadingAnchor];
    v41 = v43 = leadingAnchor3;
    v40 = [leadingAnchor3 constraintEqualToAnchor:-1.0 constant:?];
    v57[4] = v40;
    nameLabel2 = [(CNContactSuggestionsCollectionViewCell *)self nameLabel];
    trailingAnchor = [nameLabel2 trailingAnchor];
    avatarView6 = [(CNContactSuggestionsCollectionViewCell *)self contentView];
    [avatarView6 trailingAnchor];
    v35 = v37 = trailingAnchor;
    v14 = [trailingAnchor constraintEqualToAnchor:1.0 constant:?];
    v57[5] = v14;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:6];
  }

  [MEMORY[0x1E696ACD8] activateConstraints:v39];
  [(CNContactSuggestionsCollectionViewCell *)self setUpCheckMarkConstraints];
}

- (BOOL)useAccessibleLayout
{
  v9[5] = *MEMORY[0x1E69E9840];
  traitCollection = [(CNContactSuggestionsCollectionViewCell *)self traitCollection];
  v3 = *MEMORY[0x1E69DDC38];
  v9[0] = *MEMORY[0x1E69DDC40];
  v9[1] = v3;
  v4 = *MEMORY[0x1E69DDC28];
  v9[2] = *MEMORY[0x1E69DDC30];
  v9[3] = v4;
  v9[4] = *MEMORY[0x1E69DDC20];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:5];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v7 = [v5 containsObject:preferredContentSizeCategory];

  return v7;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = CNContactSuggestionsCollectionViewCell;
  [(CNContactSuggestionsCollectionViewCell *)&v13 layoutSubviews];
  [MEMORY[0x1E6979518] begin];
  checkImageBackgroundView = [(CNContactSuggestionsCollectionViewCell *)self checkImageBackgroundView];
  [checkImageBackgroundView frame];
  v5 = v4 * 0.5;
  checkImageBackgroundView2 = [(CNContactSuggestionsCollectionViewCell *)self checkImageBackgroundView];
  layer = [checkImageBackgroundView2 layer];
  [layer setCornerRadius:v5];

  checkImageView = [(CNContactSuggestionsCollectionViewCell *)self checkImageView];
  [checkImageView frame];
  v10 = v9 * 0.5;
  checkImageView2 = [(CNContactSuggestionsCollectionViewCell *)self checkImageView];
  layer2 = [checkImageView2 layer];
  [layer2 setCornerRadius:v10];

  [MEMORY[0x1E6979518] commit];
}

- (void)traitCollectionDidChange:(id)change
{
  v12.receiver = self;
  v12.super_class = CNContactSuggestionsCollectionViewCell;
  changeCopy = change;
  [(CNContactSuggestionsCollectionViewCell *)&v12 traitCollectionDidChange:changeCopy];
  v5 = [(CNContactSuggestionsCollectionViewCell *)self traitCollection:v12.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [MEMORY[0x1E6979518] begin];
    v8 = +[CNUIColorRepository contactSuggestionsCheckmarkBorderColor];
    cGColor = [v8 CGColor];
    checkImageView = [(CNContactSuggestionsCollectionViewCell *)self checkImageView];
    layer = [checkImageView layer];
    [layer setBorderColor:cGColor];

    [MEMORY[0x1E6979518] commit];
  }
}

- (void)setCheckMarkHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  checkImageBackgroundView = [(CNContactSuggestionsCollectionViewCell *)self checkImageBackgroundView];
  [checkImageBackgroundView setHidden:hiddenCopy];

  checkImageView = [(CNContactSuggestionsCollectionViewCell *)self checkImageView];
  [checkImageView setHidden:hiddenCopy];
}

- (CNContactSuggestionsCollectionViewCell)initWithFrame:(CGRect)frame
{
  v40.receiver = self;
  v40.super_class = CNContactSuggestionsCollectionViewCell;
  v3 = [(CNContactSuggestionsCollectionViewCell *)&v40 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[CNUIColorRepository contactSuggestionsBackgroundColor];
    [(CNContactSuggestionsCollectionViewCell *)v3 setBackgroundColor:v4];

    v5 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    v10 = [v5 initWithFrame:{*MEMORY[0x1E695F058], v7, v8, v9}];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(CNContactSuggestionsCollectionViewCell *)v3 contentView];
    [contentView addSubview:v10];

    [(CNContactSuggestionsCollectionViewCell *)v3 setAvatarView:v10];
    v12 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v6, v7, v8, v9}];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = +[CNUIColorRepository contactSuggestionsCheckmarkBackgroundViewColor];
    [v12 setBackgroundColor:v13];

    contentView2 = [(CNContactSuggestionsCollectionViewCell *)v3 contentView];
    [contentView2 addSubview:v12];

    [(CNContactSuggestionsCollectionViewCell *)v3 setCheckImageBackgroundView:v12];
    checkImageBackgroundView = [(CNContactSuggestionsCollectionViewCell *)v3 checkImageBackgroundView];
    [checkImageBackgroundView frame];
    v17 = v16 * 0.5;
    checkImageBackgroundView2 = [(CNContactSuggestionsCollectionViewCell *)v3 checkImageBackgroundView];
    layer = [checkImageBackgroundView2 layer];
    [layer setCornerRadius:v17];

    v20 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v6, v7, v8, v9}];
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = +[CNUIColorRepository contactSuggestionsCheckmarkBorderColor];
    cGColor = [v21 CGColor];
    layer2 = [v20 layer];
    [layer2 setBorderColor:cGColor];

    layer3 = [v20 layer];
    [layer3 setBorderWidth:2.0];

    contentView3 = [(CNContactSuggestionsCollectionViewCell *)v3 contentView];
    [contentView3 addSubview:v20];

    v26 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.circle.fill"];
    [v20 setImage:v26];

    [(CNContactSuggestionsCollectionViewCell *)v3 setCheckImageView:v20];
    checkImageView = [(CNContactSuggestionsCollectionViewCell *)v3 checkImageView];
    [checkImageView frame];
    v29 = v28 * 0.5;
    checkImageView2 = [(CNContactSuggestionsCollectionViewCell *)v3 checkImageView];
    layer4 = [checkImageView2 layer];
    [layer4 setCornerRadius:v29];

    [(CNContactSuggestionsCollectionViewCell *)v3 setCheckMarkHidden:1];
    v32 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
    [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v32 setNumberOfLines:2];
    v33 = +[CNUIFontRepository contactSuggestionsNameFont];
    [v32 setFont:v33];

    v34 = +[CNUIColorRepository contactSuggestionsTextLabelColor];
    [v32 setTextColor:v34];

    [v32 setTextAlignment:{-[CNContactSuggestionsCollectionViewCell useAccessibleLayout](v3, "useAccessibleLayout") ^ 1}];
    [v32 setAdjustsFontSizeToFitWidth:1];
    [v32 setMinimumScaleFactor:0.95];
    [v32 setAllowsDefaultTighteningForTruncation:0];
    contentView4 = [(CNContactSuggestionsCollectionViewCell *)v3 contentView];
    [contentView4 addSubview:v32];

    [(CNContactSuggestionsCollectionViewCell *)v3 setNameLabel:v32];
    v36 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    contentView5 = [(CNContactSuggestionsCollectionViewCell *)v3 contentView];
    [contentView5 addLayoutGuide:v36];

    [(CNContactSuggestionsCollectionViewCell *)v3 setClipsToBounds:1];
    [(CNContactSuggestionsCollectionViewCell *)v3 setupConstraints];
    v38 = v3;
  }

  return v3;
}

@end