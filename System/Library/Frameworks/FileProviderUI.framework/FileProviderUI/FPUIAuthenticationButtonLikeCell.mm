@interface FPUIAuthenticationButtonLikeCell
- (FPUIAuthenticationButtonLikeCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UILabel)label;
- (void)prepareForReuse;
@end

@implementation FPUIAuthenticationButtonLikeCell

- (FPUIAuthenticationButtonLikeCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v31[4] = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = FPUIAuthenticationButtonLikeCell;
  v4 = [(FPUIAuthenticationButtonLikeCell *)&v30 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v29 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v5 = objc_opt_new();
    [v5 setFont:v29];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(FPUIAuthenticationButtonLikeCell *)v4 bounds];
    [v5 setFrame:?];
    contentView = [(FPUIAuthenticationButtonLikeCell *)v4 contentView];
    [contentView addSubview:v5];

    v20 = MEMORY[0x277CCAAD0];
    centerXAnchor = [v5 centerXAnchor];
    contentView2 = [(FPUIAuthenticationButtonLikeCell *)v4 contentView];
    centerXAnchor2 = [contentView2 centerXAnchor];
    v25 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v31[0] = v25;
    centerYAnchor = [v5 centerYAnchor];
    contentView3 = [(FPUIAuthenticationButtonLikeCell *)v4 contentView];
    centerYAnchor2 = [contentView3 centerYAnchor];
    v21 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v31[1] = v21;
    contentView4 = [(FPUIAuthenticationButtonLikeCell *)v4 contentView];
    layoutMarginsGuide = [contentView4 layoutMarginsGuide];
    bottomAnchor = [layoutMarginsGuide bottomAnchor];
    bottomAnchor2 = [v5 bottomAnchor];
    v8 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.5];
    v31[2] = v8;
    topAnchor = [v5 topAnchor];
    contentView5 = [(FPUIAuthenticationButtonLikeCell *)v4 contentView];
    layoutMarginsGuide2 = [contentView5 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide2 topAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.5];
    v31[3] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
    [v20 activateConstraints:v14];

    objc_storeWeak(&v4->_label, v5);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = FPUIAuthenticationButtonLikeCell;
  [(FPUIAuthenticationButtonLikeCell *)&v4 prepareForReuse];
  WeakRetained = objc_loadWeakRetained(&self->_label);
  [WeakRetained setText:0];
}

- (UILabel)label
{
  WeakRetained = objc_loadWeakRetained(&self->_label);

  return WeakRetained;
}

@end