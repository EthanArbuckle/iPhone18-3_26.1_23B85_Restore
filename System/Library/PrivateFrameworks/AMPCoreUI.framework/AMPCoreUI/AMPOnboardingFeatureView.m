@interface AMPOnboardingFeatureView
- (AMPOnboardingFeatureView)initWithFeature:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (double)baselineOffsetFromBottom;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation AMPOnboardingFeatureView

- (AMPOnboardingFeatureView)initWithFeature:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = AMPOnboardingFeatureView;
  v5 = [(AMPOnboardingFeatureView *)&v16 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277D755E8]);
    imageView = v5->_imageView;
    v5->_imageView = v6;

    v8 = [v4 image];
    [(UIImageView *)v5->_imageView setImage:v8];

    [(UIImageView *)v5->_imageView setContentMode:4];
    [(AMPOnboardingFeatureView *)v5 addSubview:v5->_imageView];
    v9 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v9;

    [(UILabel *)v5->_titleLabel setNumberOfLines:0];
    [(UILabel *)v5->_titleLabel setLineBreakMode:0];
    v11 = [v4 titleText];
    [(UILabel *)v5->_titleLabel setText:v11];

    [(AMPOnboardingFeatureView *)v5 addSubview:v5->_titleLabel];
    v12 = objc_alloc_init(MEMORY[0x277D756B8]);
    descriptionLabel = v5->_descriptionLabel;
    v5->_descriptionLabel = v12;

    [(UILabel *)v5->_descriptionLabel setNumberOfLines:0];
    [(UILabel *)v5->_descriptionLabel setLineBreakMode:0];
    v14 = [v4 descriptionText];
    [(UILabel *)v5->_descriptionLabel setText:v14];

    [(AMPOnboardingFeatureView *)v5 addSubview:v5->_descriptionLabel];
  }

  return v5;
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = AMPOnboardingFeatureView;
  [(AMPOnboardingFeatureView *)&v23 layoutSubviews];
  v3 = [MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[AMPOnboardingFeatureView semanticContentAttribute](self, "semanticContentAttribute")}];
  v4 = 0.0;
  if (v3 == 1)
  {
    [(AMPOnboardingFeatureView *)self bounds];
    v4 = CGRectGetWidth(v24) + -50.0;
  }

  v5 = [(AMPOnboardingFeatureView *)self imageView];
  [v5 setFrame:{v4, 0.0, 50.0, 50.0}];

  [(AMPOnboardingFeatureView *)self bounds];
  v6 = CGRectGetWidth(v25) + -62.0;
  v7 = [(AMPOnboardingFeatureView *)self titleLabel];
  [v7 sizeThatFits:{v6, 3.40282347e38}];
  v9 = v8;
  v11 = v10;

  if (v3 == 1)
  {
    [(AMPOnboardingFeatureView *)self bounds];
    v12 = CGRectGetWidth(v26) + -62.0 - v9;
  }

  else
  {
    v12 = 62.0;
  }

  v13 = [(AMPOnboardingFeatureView *)self titleLabel];
  [v13 setFrame:{v12, 0.0, v9, v11}];

  v14 = [(AMPOnboardingFeatureView *)self descriptionLabel];
  [v14 sizeThatFits:{v6, 3.40282347e38}];
  v16 = v15;
  v18 = v17;

  if (v3 == 1)
  {
    [(AMPOnboardingFeatureView *)self bounds];
    v19 = CGRectGetWidth(v27) + -62.0 - v16;
  }

  else
  {
    v19 = 62.0;
  }

  v20 = [(AMPOnboardingFeatureView *)self titleLabel];
  [v20 frame];
  MaxY = CGRectGetMaxY(v28);
  v22 = [(AMPOnboardingFeatureView *)self descriptionLabel];
  [v22 setFrame:{v19, MaxY, v16, v18}];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = [(AMPOnboardingFeatureView *)self titleLabel];
  [v5 sizeThatFits:{width + -62.0, 3.40282347e38}];
  v7 = v6;

  v8 = [(AMPOnboardingFeatureView *)self descriptionLabel];
  [v8 sizeThatFits:{width + -62.0, 3.40282347e38}];
  v10 = v9;

  v11 = v7 + v10;
  if (v7 + v10 < 50.0)
  {
    v11 = 50.0;
  }

  v12 = v11;
  v13 = roundf(v12);
  v14 = width;
  result.height = v13;
  result.width = v14;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v12.receiver = self;
  v12.super_class = AMPOnboardingFeatureView;
  [(AMPOnboardingFeatureView *)&v12 traitCollectionDidChange:a3];
  v4 = *MEMORY[0x277D769C0];
  v5 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769C0] addingSymbolicTraits:2 options:0];
  v6 = [MEMORY[0x277D74300] fontWithDescriptor:v5 size:0.0];
  v7 = [(AMPOnboardingFeatureView *)self titleLabel];
  [v7 setFont:v6];

  v8 = MEMORY[0x277D74300];
  v9 = [(AMPOnboardingFeatureView *)self traitCollection];
  v10 = [v8 preferredFontForTextStyle:v4 compatibleWithTraitCollection:v9];
  v11 = [(AMPOnboardingFeatureView *)self descriptionLabel];
  [v11 setFont:v10];

  [(AMPOnboardingFeatureView *)self setNeedsLayout];
}

- (double)baselineOffsetFromBottom
{
  v2 = [(AMPOnboardingFeatureView *)self descriptionLabel];
  [v2 _baselineOffsetFromBottom];
  v4 = v3;

  return v4;
}

@end