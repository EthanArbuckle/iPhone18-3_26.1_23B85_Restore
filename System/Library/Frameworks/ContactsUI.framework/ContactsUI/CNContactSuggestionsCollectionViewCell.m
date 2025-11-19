@interface CNContactSuggestionsCollectionViewCell
- (BOOL)useAccessibleLayout;
- (CNContactSuggestionsCollectionViewCell)initWithFrame:(CGRect)a3;
- (UIImage)image;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setCheckMarkHidden:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)setUpCheckMarkConstraints;
- (void)setupConstraints;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CNContactSuggestionsCollectionViewCell

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = CNContactSuggestionsCollectionViewCell;
  [(CNContactSuggestionsCollectionViewCell *)&v5 prepareForReuse];
  v3 = [(CNContactSuggestionsCollectionViewCell *)self avatarView];
  [v3 setImage:0];

  v4 = [(CNContactSuggestionsCollectionViewCell *)self nameLabel];
  [v4 setText:0];

  [(CNContactSuggestionsCollectionViewCell *)self setCheckMarkHidden:1];
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v5 = [(CNContactSuggestionsCollectionViewCell *)self avatarView];
  [v5 setImage:v4];
}

- (UIImage)image
{
  v2 = [(CNContactSuggestionsCollectionViewCell *)self avatarView];
  v3 = [v2 image];

  return v3;
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = CNContactSuggestionsCollectionViewCell;
  [(CNContactSuggestionsCollectionViewCell *)&v5 setSelected:?];
  [(CNContactSuggestionsCollectionViewCell *)self setCheckMarkHidden:!v3];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v7.receiver = self;
  v7.super_class = CNContactSuggestionsCollectionViewCell;
  v4 = [(CNContactSuggestionsCollectionViewCell *)&v7 preferredLayoutAttributesFittingAttributes:a3];
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
  v45 = [(CNContactSuggestionsCollectionViewCell *)self checkImageView];
  v43 = [v45 widthAnchor];
  v44 = [(CNContactSuggestionsCollectionViewCell *)self checkImageView];
  v42 = [v44 heightAnchor];
  v41 = [v43 constraintEqualToAnchor:v42];
  v46[0] = v41;
  v40 = [(CNContactSuggestionsCollectionViewCell *)self checkImageView];
  v38 = [v40 widthAnchor];
  v39 = [(CNContactSuggestionsCollectionViewCell *)self avatarView];
  v37 = [v39 widthAnchor];
  v36 = [v38 constraintEqualToAnchor:v37 multiplier:0.4];
  v46[1] = v36;
  v35 = [(CNContactSuggestionsCollectionViewCell *)self checkImageView];
  v33 = [v35 bottomAnchor];
  v34 = [(CNContactSuggestionsCollectionViewCell *)self avatarView];
  v32 = [v34 bottomAnchor];
  v31 = [v33 constraintEqualToAnchor:v32 constant:4.0];
  v46[2] = v31;
  v30 = [(CNContactSuggestionsCollectionViewCell *)self checkImageView];
  v28 = [v30 trailingAnchor];
  v29 = [(CNContactSuggestionsCollectionViewCell *)self avatarView];
  v27 = [v29 trailingAnchor];
  v26 = [v28 constraintEqualToAnchor:v27 constant:4.0];
  v46[3] = v26;
  v25 = [(CNContactSuggestionsCollectionViewCell *)self checkImageBackgroundView];
  v23 = [v25 widthAnchor];
  v24 = [(CNContactSuggestionsCollectionViewCell *)self checkImageBackgroundView];
  v22 = [v24 heightAnchor];
  v20 = [v23 constraintEqualToAnchor:v22];
  v46[4] = v20;
  v19 = [(CNContactSuggestionsCollectionViewCell *)self checkImageBackgroundView];
  v17 = [v19 widthAnchor];
  v18 = [(CNContactSuggestionsCollectionViewCell *)self checkImageView];
  v16 = [v18 widthAnchor];
  v15 = [v17 constraintEqualToAnchor:v16 multiplier:0.75];
  v46[5] = v15;
  v14 = [(CNContactSuggestionsCollectionViewCell *)self checkImageBackgroundView];
  v3 = [v14 centerXAnchor];
  v4 = [(CNContactSuggestionsCollectionViewCell *)self checkImageView];
  v5 = [v4 centerXAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  v46[6] = v6;
  v7 = [(CNContactSuggestionsCollectionViewCell *)self checkImageBackgroundView];
  v8 = [v7 centerYAnchor];
  v9 = [(CNContactSuggestionsCollectionViewCell *)self checkImageView];
  v10 = [v9 centerYAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v46[7] = v11;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:8];

  [MEMORY[0x1E696ACD8] activateConstraints:v21];
  v12 = [(CNContactSuggestionsCollectionViewCell *)self constraints];
  v13 = [v12 arrayByAddingObjectsFromArray:v21];
}

- (void)setupConstraints
{
  v58[7] = *MEMORY[0x1E69E9840];
  v3 = [(CNContactSuggestionsCollectionViewCell *)self useAccessibleLayout];
  v4 = [(CNContactSuggestionsCollectionViewCell *)self avatarView];
  v5 = [v4 widthAnchor];
  v6 = [(CNContactSuggestionsCollectionViewCell *)self avatarView];
  v7 = [v6 heightAnchor];
  v8 = [v5 constraintEqualToAnchor:v7];
  v9 = v8;
  if (v3)
  {
    v58[0] = v8;
    v32 = [(CNContactSuggestionsCollectionViewCell *)self avatarView];
    v30 = [v32 topAnchor];
    v31 = [(CNContactSuggestionsCollectionViewCell *)self contentView];
    v56 = [v31 topAnchor];
    v55 = [v30 constraintGreaterThanOrEqualToAnchor:22.0 constant:?];
    v58[1] = v55;
    v54 = [(CNContactSuggestionsCollectionViewCell *)self avatarView];
    v10 = [v54 centerYAnchor];
    v52 = [(CNContactSuggestionsCollectionViewCell *)self contentView];
    [v52 centerYAnchor];
    v51 = v53 = v10;
    v50 = [v10 constraintEqualToAnchor:?];
    v58[2] = v50;
    v49 = [(CNContactSuggestionsCollectionViewCell *)self nameLabel];
    v11 = [v49 centerYAnchor];
    v47 = [(CNContactSuggestionsCollectionViewCell *)self contentView];
    [v47 centerYAnchor];
    v46 = v48 = v11;
    v45 = [v11 constraintEqualToAnchor:?];
    v58[3] = v45;
    v44 = [(CNContactSuggestionsCollectionViewCell *)self avatarView];
    v12 = [v44 leadingAnchor];
    v42 = [(CNContactSuggestionsCollectionViewCell *)self contentView];
    [v42 leadingAnchor];
    v41 = v43 = v12;
    v40 = [v12 constraintEqualToAnchor:?];
    v58[4] = v40;
    v38 = [(CNContactSuggestionsCollectionViewCell *)self nameLabel];
    v13 = [v38 leadingAnchor];
    v36 = [(CNContactSuggestionsCollectionViewCell *)self avatarView];
    [v36 trailingAnchor];
    v35 = v37 = v13;
    v14 = [v13 constraintEqualToAnchor:10.0 constant:?];
    v58[5] = v14;
    [(CNContactSuggestionsCollectionViewCell *)self nameLabel];
    v15 = v34 = v4;
    [v15 trailingAnchor];
    v16 = v33 = v5;
    [(CNContactSuggestionsCollectionViewCell *)self contentView];
    v17 = v7;
    v19 = v18 = v6;
    [v19 trailingAnchor];
    v21 = v20 = v9;
    v22 = [v16 constraintEqualToAnchor:v21];
    v58[6] = v22;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:7];

    v23 = v31;
    v9 = v20;
    v24 = v30;

    v6 = v18;
    v7 = v17;
    v25 = v32;

    v5 = v33;
    v4 = v34;
  }

  else
  {
    v57[0] = v8;
    v25 = [(CNContactSuggestionsCollectionViewCell *)self avatarView];
    v24 = [v25 topAnchor];
    v23 = [(CNContactSuggestionsCollectionViewCell *)self contentView];
    v56 = [v23 topAnchor];
    v55 = [v24 constraintEqualToAnchor:?];
    v57[1] = v55;
    v54 = [(CNContactSuggestionsCollectionViewCell *)self nameLabel];
    v26 = [v54 topAnchor];
    v52 = [(CNContactSuggestionsCollectionViewCell *)self avatarView];
    [v52 bottomAnchor];
    v51 = v53 = v26;
    v50 = [v26 constraintEqualToAnchor:10.0 constant:?];
    v57[2] = v50;
    v49 = [(CNContactSuggestionsCollectionViewCell *)self avatarView];
    v27 = [v49 centerXAnchor];
    v47 = [(CNContactSuggestionsCollectionViewCell *)self contentView];
    [v47 centerXAnchor];
    v46 = v48 = v27;
    v45 = [v27 constraintEqualToAnchor:?];
    v57[3] = v45;
    v44 = [(CNContactSuggestionsCollectionViewCell *)self nameLabel];
    v28 = [v44 leadingAnchor];
    v42 = [(CNContactSuggestionsCollectionViewCell *)self contentView];
    [v42 leadingAnchor];
    v41 = v43 = v28;
    v40 = [v28 constraintEqualToAnchor:-1.0 constant:?];
    v57[4] = v40;
    v38 = [(CNContactSuggestionsCollectionViewCell *)self nameLabel];
    v29 = [v38 trailingAnchor];
    v36 = [(CNContactSuggestionsCollectionViewCell *)self contentView];
    [v36 trailingAnchor];
    v35 = v37 = v29;
    v14 = [v29 constraintEqualToAnchor:1.0 constant:?];
    v57[5] = v14;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:6];
  }

  [MEMORY[0x1E696ACD8] activateConstraints:v39];
  [(CNContactSuggestionsCollectionViewCell *)self setUpCheckMarkConstraints];
}

- (BOOL)useAccessibleLayout
{
  v9[5] = *MEMORY[0x1E69E9840];
  v2 = [(CNContactSuggestionsCollectionViewCell *)self traitCollection];
  v3 = *MEMORY[0x1E69DDC38];
  v9[0] = *MEMORY[0x1E69DDC40];
  v9[1] = v3;
  v4 = *MEMORY[0x1E69DDC28];
  v9[2] = *MEMORY[0x1E69DDC30];
  v9[3] = v4;
  v9[4] = *MEMORY[0x1E69DDC20];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:5];
  v6 = [v2 preferredContentSizeCategory];
  v7 = [v5 containsObject:v6];

  return v7;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = CNContactSuggestionsCollectionViewCell;
  [(CNContactSuggestionsCollectionViewCell *)&v13 layoutSubviews];
  [MEMORY[0x1E6979518] begin];
  v3 = [(CNContactSuggestionsCollectionViewCell *)self checkImageBackgroundView];
  [v3 frame];
  v5 = v4 * 0.5;
  v6 = [(CNContactSuggestionsCollectionViewCell *)self checkImageBackgroundView];
  v7 = [v6 layer];
  [v7 setCornerRadius:v5];

  v8 = [(CNContactSuggestionsCollectionViewCell *)self checkImageView];
  [v8 frame];
  v10 = v9 * 0.5;
  v11 = [(CNContactSuggestionsCollectionViewCell *)self checkImageView];
  v12 = [v11 layer];
  [v12 setCornerRadius:v10];

  [MEMORY[0x1E6979518] commit];
}

- (void)traitCollectionDidChange:(id)a3
{
  v12.receiver = self;
  v12.super_class = CNContactSuggestionsCollectionViewCell;
  v4 = a3;
  [(CNContactSuggestionsCollectionViewCell *)&v12 traitCollectionDidChange:v4];
  v5 = [(CNContactSuggestionsCollectionViewCell *)self traitCollection:v12.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    [MEMORY[0x1E6979518] begin];
    v8 = +[CNUIColorRepository contactSuggestionsCheckmarkBorderColor];
    v9 = [v8 CGColor];
    v10 = [(CNContactSuggestionsCollectionViewCell *)self checkImageView];
    v11 = [v10 layer];
    [v11 setBorderColor:v9];

    [MEMORY[0x1E6979518] commit];
  }
}

- (void)setCheckMarkHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactSuggestionsCollectionViewCell *)self checkImageBackgroundView];
  [v5 setHidden:v3];

  v6 = [(CNContactSuggestionsCollectionViewCell *)self checkImageView];
  [v6 setHidden:v3];
}

- (CNContactSuggestionsCollectionViewCell)initWithFrame:(CGRect)a3
{
  v40.receiver = self;
  v40.super_class = CNContactSuggestionsCollectionViewCell;
  v3 = [(CNContactSuggestionsCollectionViewCell *)&v40 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v11 = [(CNContactSuggestionsCollectionViewCell *)v3 contentView];
    [v11 addSubview:v10];

    [(CNContactSuggestionsCollectionViewCell *)v3 setAvatarView:v10];
    v12 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v6, v7, v8, v9}];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = +[CNUIColorRepository contactSuggestionsCheckmarkBackgroundViewColor];
    [v12 setBackgroundColor:v13];

    v14 = [(CNContactSuggestionsCollectionViewCell *)v3 contentView];
    [v14 addSubview:v12];

    [(CNContactSuggestionsCollectionViewCell *)v3 setCheckImageBackgroundView:v12];
    v15 = [(CNContactSuggestionsCollectionViewCell *)v3 checkImageBackgroundView];
    [v15 frame];
    v17 = v16 * 0.5;
    v18 = [(CNContactSuggestionsCollectionViewCell *)v3 checkImageBackgroundView];
    v19 = [v18 layer];
    [v19 setCornerRadius:v17];

    v20 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v6, v7, v8, v9}];
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = +[CNUIColorRepository contactSuggestionsCheckmarkBorderColor];
    v22 = [v21 CGColor];
    v23 = [v20 layer];
    [v23 setBorderColor:v22];

    v24 = [v20 layer];
    [v24 setBorderWidth:2.0];

    v25 = [(CNContactSuggestionsCollectionViewCell *)v3 contentView];
    [v25 addSubview:v20];

    v26 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.circle.fill"];
    [v20 setImage:v26];

    [(CNContactSuggestionsCollectionViewCell *)v3 setCheckImageView:v20];
    v27 = [(CNContactSuggestionsCollectionViewCell *)v3 checkImageView];
    [v27 frame];
    v29 = v28 * 0.5;
    v30 = [(CNContactSuggestionsCollectionViewCell *)v3 checkImageView];
    v31 = [v30 layer];
    [v31 setCornerRadius:v29];

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
    v35 = [(CNContactSuggestionsCollectionViewCell *)v3 contentView];
    [v35 addSubview:v32];

    [(CNContactSuggestionsCollectionViewCell *)v3 setNameLabel:v32];
    v36 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    v37 = [(CNContactSuggestionsCollectionViewCell *)v3 contentView];
    [v37 addLayoutGuide:v36];

    [(CNContactSuggestionsCollectionViewCell *)v3 setClipsToBounds:1];
    [(CNContactSuggestionsCollectionViewCell *)v3 setupConstraints];
    v38 = v3;
  }

  return v3;
}

@end