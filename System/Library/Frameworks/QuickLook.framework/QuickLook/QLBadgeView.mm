@interface QLBadgeView
- (NSString)text;
- (QLBadgeView)initWithCoder:(id)coder;
- (QLBadgeView)initWithFrame:(CGRect)frame;
- (UIImage)image;
- (void)layoutSubviews;
- (void)setImage:(id)image;
- (void)setText:(id)text;
- (void)setupAppearance;
- (void)setupLayout;
- (void)setupSubviews;
- (void)setupView;
- (void)updateStackViewConstraints;
@end

@implementation QLBadgeView

- (QLBadgeView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = QLBadgeView;
  v3 = [(QLBadgeView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(QLBadgeView *)v3 setupView];
  }

  return v4;
}

- (QLBadgeView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = QLBadgeView;
  v3 = [(QLBadgeView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(QLBadgeView *)v3 setupView];
  }

  return v4;
}

- (NSString)text
{
  label = [(QLBadgeView *)self label];
  text = [label text];

  return text;
}

- (void)setText:(id)text
{
  textCopy = text;
  label = [(QLBadgeView *)self label];
  [label setText:textCopy];
}

- (UIImage)image
{
  imageView = [(QLBadgeView *)self imageView];
  image = [imageView image];

  return image;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (imageCopy)
  {
    v4 = MEMORY[0x277D755D0];
    label = [(QLBadgeView *)self label];
    font = [label font];
    imageView4 = [v4 configurationWithFont:font];

    v8 = [imageCopy imageWithConfiguration:imageView4];
    imageView = [(QLBadgeView *)self imageView];
    [imageView setImage:v8];

    imageView2 = [(QLBadgeView *)self imageView];
    [imageView2 setHidden:0];
  }

  else
  {
    imageView3 = [(QLBadgeView *)self imageView];
    [imageView3 setImage:0];

    imageView4 = [(QLBadgeView *)self imageView];
    [imageView4 setHidden:1];
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

  stackView = [(QLBadgeView *)self stackView];
  [stackView setAxis:0];

  stackView2 = [(QLBadgeView *)self stackView];
  [stackView2 setAlignment:3];

  stackView3 = [(QLBadgeView *)self stackView];
  [stackView3 setSpacing:2.0];

  stackView4 = [(QLBadgeView *)self stackView];
  [stackView4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = objc_alloc_init(MEMORY[0x277D755E8]);
  [(QLBadgeView *)self setImageView:v8];

  imageView = [(QLBadgeView *)self imageView];
  [imageView setContentMode:1];

  imageView2 = [(QLBadgeView *)self imageView];
  [imageView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(QLBadgeView *)self setLabel:v11];

  v12 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76940]];
  v13 = [v12 fontWithSize:12.0];
  label = [(QLBadgeView *)self label];
  [label setFont:v13];

  label2 = [(QLBadgeView *)self label];
  [label2 setTextAlignment:1];

  label3 = [(QLBadgeView *)self label];
  [label3 setTranslatesAutoresizingMaskIntoConstraints:0];

  stackView5 = [(QLBadgeView *)self stackView];
  [(QLBadgeView *)self addSubview:stackView5];

  stackView6 = [(QLBadgeView *)self stackView];
  imageView3 = [(QLBadgeView *)self imageView];
  [stackView6 addArrangedSubview:imageView3];

  stackView7 = [(QLBadgeView *)self stackView];
  label4 = [(QLBadgeView *)self label];
  [stackView7 addArrangedSubview:label4];
}

- (void)setupAppearance
{
  v29[4] = *MEMORY[0x277D85DE8];
  v28 = [MEMORY[0x277D75210] effectWithStyle:9];
  v3 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v28];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(QLBadgeView *)self insertSubview:v3 atIndex:0];
  v22 = MEMORY[0x277CCAAD0];
  topAnchor = [v3 topAnchor];
  topAnchor2 = [(QLBadgeView *)self topAnchor];
  v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v29[0] = v25;
  leadingAnchor = [v3 leadingAnchor];
  leadingAnchor2 = [(QLBadgeView *)self leadingAnchor];
  v4 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v29[1] = v4;
  trailingAnchor = [v3 trailingAnchor];
  trailingAnchor2 = [(QLBadgeView *)self trailingAnchor];
  v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v29[2] = v7;
  bottomAnchor = [v3 bottomAnchor];
  bottomAnchor2 = [(QLBadgeView *)self bottomAnchor];
  v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v29[3] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
  [v22 activateConstraints:v11];

  [(QLBadgeView *)self setClipsToBounds:1];
  quaternaryLabelColor = [MEMORY[0x277D75348] quaternaryLabelColor];
  cGColor = [quaternaryLabelColor CGColor];
  layer = [(QLBadgeView *)self layer];
  [layer setBorderColor:cGColor];

  layer2 = [(QLBadgeView *)self layer];
  [layer2 setBorderWidth:1.0];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  imageView = [(QLBadgeView *)self imageView];
  [imageView setTintColor:secondaryLabelColor];

  secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
  label = [(QLBadgeView *)self label];
  [label setTextColor:secondaryLabelColor2];

  imageView2 = [(QLBadgeView *)self imageView];
  [imageView2 setHidden:1];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)setupLayout
{
  v23[4] = *MEMORY[0x277D85DE8];
  stackView = [(QLBadgeView *)self stackView];
  leadingAnchor = [stackView leadingAnchor];
  leadingAnchor2 = [(QLBadgeView *)self leadingAnchor];
  v6 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
  [(QLBadgeView *)self setStackViewLeadingConstraint:v6];

  v17 = MEMORY[0x277CCAAD0];
  stackViewLeadingConstraint = [(QLBadgeView *)self stackViewLeadingConstraint];
  v23[0] = stackViewLeadingConstraint;
  stackView2 = [(QLBadgeView *)self stackView];
  trailingAnchor = [stackView2 trailingAnchor];
  trailingAnchor2 = [(QLBadgeView *)self trailingAnchor];
  v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-6.0];
  v23[1] = v18;
  stackView3 = [(QLBadgeView *)self stackView];
  topAnchor = [stackView3 topAnchor];
  topAnchor2 = [(QLBadgeView *)self topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:3.0];
  v23[2] = v10;
  stackView4 = [(QLBadgeView *)self stackView];
  bottomAnchor = [stackView4 bottomAnchor];
  bottomAnchor2 = [(QLBadgeView *)self bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-3.0];
  v23[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  [v17 activateConstraints:v15];

  [(QLBadgeView *)self updateStackViewConstraints];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)updateStackViewConstraints
{
  image = [(QLBadgeView *)self image];

  stackViewLeadingConstraint = [(QLBadgeView *)self stackViewLeadingConstraint];
  v6 = stackViewLeadingConstraint;
  v5 = 4.0;
  if (!image)
  {
    v5 = 6.0;
  }

  [stackViewLeadingConstraint setConstant:v5];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = QLBadgeView;
  [(QLBadgeView *)&v6 layoutSubviews];
  [(QLBadgeView *)self bounds];
  v4 = v3 * 0.5;
  layer = [(QLBadgeView *)self layer];
  [layer setCornerRadius:v4];
}

@end