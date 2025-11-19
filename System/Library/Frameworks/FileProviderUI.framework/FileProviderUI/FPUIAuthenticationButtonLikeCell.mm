@interface FPUIAuthenticationButtonLikeCell
- (FPUIAuthenticationButtonLikeCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (UILabel)label;
- (void)prepareForReuse;
@end

@implementation FPUIAuthenticationButtonLikeCell

- (FPUIAuthenticationButtonLikeCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v31[4] = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = FPUIAuthenticationButtonLikeCell;
  v4 = [(FPUIAuthenticationButtonLikeCell *)&v30 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v29 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v5 = objc_opt_new();
    [v5 setFont:v29];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(FPUIAuthenticationButtonLikeCell *)v4 bounds];
    [v5 setFrame:?];
    v6 = [(FPUIAuthenticationButtonLikeCell *)v4 contentView];
    [v6 addSubview:v5];

    v20 = MEMORY[0x277CCAAD0];
    v27 = [v5 centerXAnchor];
    v28 = [(FPUIAuthenticationButtonLikeCell *)v4 contentView];
    v26 = [v28 centerXAnchor];
    v25 = [v27 constraintEqualToAnchor:v26];
    v31[0] = v25;
    v23 = [v5 centerYAnchor];
    v24 = [(FPUIAuthenticationButtonLikeCell *)v4 contentView];
    v22 = [v24 centerYAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v31[1] = v21;
    v19 = [(FPUIAuthenticationButtonLikeCell *)v4 contentView];
    v18 = [v19 layoutMarginsGuide];
    v17 = [v18 bottomAnchor];
    v7 = [v5 bottomAnchor];
    v8 = [v17 constraintEqualToAnchor:v7 constant:0.5];
    v31[2] = v8;
    v9 = [v5 topAnchor];
    v10 = [(FPUIAuthenticationButtonLikeCell *)v4 contentView];
    v11 = [v10 layoutMarginsGuide];
    v12 = [v11 topAnchor];
    v13 = [v9 constraintEqualToAnchor:v12 constant:0.5];
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