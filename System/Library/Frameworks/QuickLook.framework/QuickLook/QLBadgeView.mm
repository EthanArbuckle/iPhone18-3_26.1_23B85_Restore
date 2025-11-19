@interface QLBadgeView
- (NSString)text;
- (QLBadgeView)initWithCoder:(id)a3;
- (QLBadgeView)initWithFrame:(CGRect)a3;
- (UIImage)image;
- (void)layoutSubviews;
- (void)setImage:(id)a3;
- (void)setText:(id)a3;
- (void)setupAppearance;
- (void)setupLayout;
- (void)setupSubviews;
- (void)setupView;
- (void)updateStackViewConstraints;
@end

@implementation QLBadgeView

- (QLBadgeView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = QLBadgeView;
  v3 = [(QLBadgeView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(QLBadgeView *)v3 setupView];
  }

  return v4;
}

- (QLBadgeView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = QLBadgeView;
  v3 = [(QLBadgeView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(QLBadgeView *)v3 setupView];
  }

  return v4;
}

- (NSString)text
{
  v2 = [(QLBadgeView *)self label];
  v3 = [v2 text];

  return v3;
}

- (void)setText:(id)a3
{
  v4 = a3;
  v5 = [(QLBadgeView *)self label];
  [v5 setText:v4];
}

- (UIImage)image
{
  v2 = [(QLBadgeView *)self imageView];
  v3 = [v2 image];

  return v3;
}

- (void)setImage:(id)a3
{
  v12 = a3;
  if (v12)
  {
    v4 = MEMORY[0x277D755D0];
    v5 = [(QLBadgeView *)self label];
    v6 = [v5 font];
    v7 = [v4 configurationWithFont:v6];

    v8 = [v12 imageWithConfiguration:v7];
    v9 = [(QLBadgeView *)self imageView];
    [v9 setImage:v8];

    v10 = [(QLBadgeView *)self imageView];
    [v10 setHidden:0];
  }

  else
  {
    v11 = [(QLBadgeView *)self imageView];
    [v11 setImage:0];

    v7 = [(QLBadgeView *)self imageView];
    [v7 setHidden:1];
  }

  [(QLBadgeView *)self updateStackViewConstraints];
}

- (void)setupView
{
  [(QLBadgeView *)self setupSubviews];
  [(QLBadgeView *)self setupAppearance];

  [(QLBadgeView *)self setupLayout];
}

- (void)setupSubviews
{
  v3 = objc_alloc_init(MEMORY[0x277D75A68]);
  [(QLBadgeView *)self setStackView:v3];

  v4 = [(QLBadgeView *)self stackView];
  [v4 setAxis:0];

  v5 = [(QLBadgeView *)self stackView];
  [v5 setAlignment:3];

  v6 = [(QLBadgeView *)self stackView];
  [v6 setSpacing:2.0];

  v7 = [(QLBadgeView *)self stackView];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = objc_alloc_init(MEMORY[0x277D755E8]);
  [(QLBadgeView *)self setImageView:v8];

  v9 = [(QLBadgeView *)self imageView];
  [v9 setContentMode:1];

  v10 = [(QLBadgeView *)self imageView];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(QLBadgeView *)self setLabel:v11];

  v12 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76940]];
  v13 = [v12 fontWithSize:12.0];
  v14 = [(QLBadgeView *)self label];
  [v14 setFont:v13];

  v15 = [(QLBadgeView *)self label];
  [v15 setTextAlignment:1];

  v16 = [(QLBadgeView *)self label];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = [(QLBadgeView *)self stackView];
  [(QLBadgeView *)self addSubview:v17];

  v18 = [(QLBadgeView *)self stackView];
  v19 = [(QLBadgeView *)self imageView];
  [v18 addArrangedSubview:v19];

  v21 = [(QLBadgeView *)self stackView];
  v20 = [(QLBadgeView *)self label];
  [v21 addArrangedSubview:v20];
}

- (void)setupAppearance
{
  v29[4] = *MEMORY[0x277D85DE8];
  v28 = [MEMORY[0x277D75210] effectWithStyle:9];
  v3 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v28];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(QLBadgeView *)self insertSubview:v3 atIndex:0];
  v22 = MEMORY[0x277CCAAD0];
  v27 = [v3 topAnchor];
  v26 = [(QLBadgeView *)self topAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v29[0] = v25;
  v24 = [v3 leadingAnchor];
  v23 = [(QLBadgeView *)self leadingAnchor];
  v4 = [v24 constraintEqualToAnchor:v23];
  v29[1] = v4;
  v5 = [v3 trailingAnchor];
  v6 = [(QLBadgeView *)self trailingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v29[2] = v7;
  v8 = [v3 bottomAnchor];
  v9 = [(QLBadgeView *)self bottomAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v29[3] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
  [v22 activateConstraints:v11];

  [(QLBadgeView *)self setClipsToBounds:1];
  v12 = [MEMORY[0x277D75348] quaternaryLabelColor];
  v13 = [v12 CGColor];
  v14 = [(QLBadgeView *)self layer];
  [v14 setBorderColor:v13];

  v15 = [(QLBadgeView *)self layer];
  [v15 setBorderWidth:1.0];

  v16 = [MEMORY[0x277D75348] secondaryLabelColor];
  v17 = [(QLBadgeView *)self imageView];
  [v17 setTintColor:v16];

  v18 = [MEMORY[0x277D75348] secondaryLabelColor];
  v19 = [(QLBadgeView *)self label];
  [v19 setTextColor:v18];

  v20 = [(QLBadgeView *)self imageView];
  [v20 setHidden:1];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)setupLayout
{
  v23[4] = *MEMORY[0x277D85DE8];
  v3 = [(QLBadgeView *)self stackView];
  v4 = [v3 leadingAnchor];
  v5 = [(QLBadgeView *)self leadingAnchor];
  v6 = [v4 constraintEqualToAnchor:v5 constant:0.0];
  [(QLBadgeView *)self setStackViewLeadingConstraint:v6];

  v17 = MEMORY[0x277CCAAD0];
  v22 = [(QLBadgeView *)self stackViewLeadingConstraint];
  v23[0] = v22;
  v21 = [(QLBadgeView *)self stackView];
  v20 = [v21 trailingAnchor];
  v19 = [(QLBadgeView *)self trailingAnchor];
  v18 = [v20 constraintEqualToAnchor:v19 constant:-6.0];
  v23[1] = v18;
  v7 = [(QLBadgeView *)self stackView];
  v8 = [v7 topAnchor];
  v9 = [(QLBadgeView *)self topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:3.0];
  v23[2] = v10;
  v11 = [(QLBadgeView *)self stackView];
  v12 = [v11 bottomAnchor];
  v13 = [(QLBadgeView *)self bottomAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:-3.0];
  v23[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  [v17 activateConstraints:v15];

  [(QLBadgeView *)self updateStackViewConstraints];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)updateStackViewConstraints
{
  v3 = [(QLBadgeView *)self image];

  v4 = [(QLBadgeView *)self stackViewLeadingConstraint];
  v6 = v4;
  v5 = 4.0;
  if (!v3)
  {
    v5 = 6.0;
  }

  [v4 setConstant:v5];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = QLBadgeView;
  [(QLBadgeView *)&v6 layoutSubviews];
  [(QLBadgeView *)self bounds];
  v4 = v3 * 0.5;
  v5 = [(QLBadgeView *)self layer];
  [v5 setCornerRadius:v4];
}

@end