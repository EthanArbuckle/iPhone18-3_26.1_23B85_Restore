@interface AMSUIOnboardingFeatureView
- (AMSUIOnboardingFeatureView)initWithFeature:(id)feature;
- (CGSize)sizeThatFits:(CGSize)fits;
- (double)baselineOffsetFromBottom;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation AMSUIOnboardingFeatureView

- (AMSUIOnboardingFeatureView)initWithFeature:(id)feature
{
  featureCopy = feature;
  v24.receiver = self;
  v24.super_class = AMSUIOnboardingFeatureView;
  v5 = [(AMSUIOnboardingFeatureView *)&v24 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v5->_imageView;
    v5->_imageView = v6;

    image = [featureCopy image];
    [(UIImageView *)v5->_imageView setImage:image];

    [(UIImageView *)v5->_imageView setContentMode:1];
    [(AMSUIOnboardingFeatureView *)v5 addSubview:v5->_imageView];
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v9;

    [(UILabel *)v5->_titleLabel setNumberOfLines:0];
    [(UILabel *)v5->_titleLabel setLineBreakMode:0];
    titleText = [featureCopy titleText];
    [(UILabel *)v5->_titleLabel setText:titleText];

    [(AMSUIOnboardingFeatureView *)v5 addSubview:v5->_titleLabel];
    v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    descriptionLabel = v5->_descriptionLabel;
    v5->_descriptionLabel = v12;

    [(UILabel *)v5->_descriptionLabel setNumberOfLines:0];
    [(UILabel *)v5->_descriptionLabel setLineBreakMode:0];
    descriptionText = [featureCopy descriptionText];
    [(UILabel *)v5->_descriptionLabel setText:descriptionText];

    [(AMSUIOnboardingFeatureView *)v5 addSubview:v5->_descriptionLabel];
    v15 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] addingSymbolicTraits:2 options:0];
    v16 = [MEMORY[0x1E69DB878] fontWithDescriptor:v15 size:0.0];
    titleLabel = [(AMSUIOnboardingFeatureView *)v5 titleLabel];
    [titleLabel setFont:v16];

    v18 = MEMORY[0x1E69DB878];
    v19 = *MEMORY[0x1E69DDD88];
    traitCollection = [(AMSUIOnboardingFeatureView *)v5 traitCollection];
    v21 = [v18 preferredFontForTextStyle:v19 compatibleWithTraitCollection:traitCollection];
    descriptionLabel = [(AMSUIOnboardingFeatureView *)v5 descriptionLabel];
    [descriptionLabel setFont:v21];
  }

  return v5;
}

- (void)layoutSubviews
{
  v30.receiver = self;
  v30.super_class = AMSUIOnboardingFeatureView;
  [(AMSUIOnboardingFeatureView *)&v30 layoutSubviews];
  v3 = [MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[AMSUIOnboardingFeatureView semanticContentAttribute](self, "semanticContentAttribute")}];
  descriptionLabel = [(AMSUIOnboardingFeatureView *)self descriptionLabel];
  text = [descriptionLabel text];
  if (text)
  {
    descriptionLabel2 = [(AMSUIOnboardingFeatureView *)self descriptionLabel];
    text2 = [descriptionLabel2 text];
    v8 = [text2 length] == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = 0.0;
  v10 = 0.0;
  if (v3 == 1)
  {
    [(AMSUIOnboardingFeatureView *)self bounds];
    v10 = CGRectGetWidth(v31) + -50.0;
  }

  if (!v8)
  {
    [(AMSUIOnboardingFeatureView *)self bounds];
    v9 = CGRectGetHeight(v32) * 0.5 + -25.0;
  }

  imageView = [(AMSUIOnboardingFeatureView *)self imageView];
  [imageView setFrame:{v10, v9, 50.0, 50.0}];

  [(AMSUIOnboardingFeatureView *)self bounds];
  v12 = CGRectGetWidth(v33) + -75.0;
  titleLabel = [(AMSUIOnboardingFeatureView *)self titleLabel];
  [titleLabel sizeThatFits:{v12, 3.40282347e38}];
  v15 = v14;
  v17 = v16;

  descriptionLabel3 = [(AMSUIOnboardingFeatureView *)self descriptionLabel];
  [descriptionLabel3 sizeThatFits:{v12, 3.40282347e38}];
  v20 = v19;
  v22 = v21;

  if (v3 == 1)
  {
    [(AMSUIOnboardingFeatureView *)self bounds];
    v23 = CGRectGetWidth(v34) + -75.0 - v15;
  }

  else
  {
    v23 = 75.0;
  }

  v24 = 0.0;
  if (v8)
  {
    [(AMSUIOnboardingFeatureView *)self bounds];
    v24 = CGRectGetHeight(v35) * 0.5 - v17 * 0.5;
  }

  titleLabel2 = [(AMSUIOnboardingFeatureView *)self titleLabel];
  [titleLabel2 setFrame:{v23, v24, v15, v17}];

  if (v3 == 1)
  {
    [(AMSUIOnboardingFeatureView *)self bounds];
    v26 = CGRectGetWidth(v36) + -75.0 - v20;
  }

  else
  {
    v26 = 75.0;
  }

  titleLabel3 = [(AMSUIOnboardingFeatureView *)self titleLabel];
  [titleLabel3 frame];
  MaxY = CGRectGetMaxY(v37);
  descriptionLabel4 = [(AMSUIOnboardingFeatureView *)self descriptionLabel];
  [descriptionLabel4 setFrame:{v26, MaxY, v20, v22}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  titleLabel = [(AMSUIOnboardingFeatureView *)self titleLabel];
  [titleLabel sizeThatFits:{width + -75.0, 3.40282347e38}];
  v7 = v6;

  descriptionLabel = [(AMSUIOnboardingFeatureView *)self descriptionLabel];
  [descriptionLabel sizeThatFits:{width + -75.0, 3.40282347e38}];
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

- (void)traitCollectionDidChange:(id)change
{
  v12.receiver = self;
  v12.super_class = AMSUIOnboardingFeatureView;
  [(AMSUIOnboardingFeatureView *)&v12 traitCollectionDidChange:change];
  v4 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] addingSymbolicTraits:2 options:0];
  v5 = [MEMORY[0x1E69DB878] fontWithDescriptor:v4 size:0.0];
  titleLabel = [(AMSUIOnboardingFeatureView *)self titleLabel];
  [titleLabel setFont:v5];

  v7 = MEMORY[0x1E69DB878];
  v8 = *MEMORY[0x1E69DDD88];
  traitCollection = [(AMSUIOnboardingFeatureView *)self traitCollection];
  v10 = [v7 preferredFontForTextStyle:v8 compatibleWithTraitCollection:traitCollection];
  descriptionLabel = [(AMSUIOnboardingFeatureView *)self descriptionLabel];
  [descriptionLabel setFont:v10];

  [(AMSUIOnboardingFeatureView *)self setNeedsLayout];
}

- (double)baselineOffsetFromBottom
{
  descriptionLabel = [(AMSUIOnboardingFeatureView *)self descriptionLabel];
  [descriptionLabel _baselineOffsetFromBottom];
  v4 = v3;

  return v4;
}

@end