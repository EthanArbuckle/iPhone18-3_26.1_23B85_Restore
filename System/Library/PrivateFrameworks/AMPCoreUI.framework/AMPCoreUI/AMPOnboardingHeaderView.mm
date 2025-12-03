@interface AMPOnboardingHeaderView
- (AMPOnboardingHeaderView)initWithFrame:(CGRect)frame;
- (void)adjustedContentInsetDidChange;
- (void)layoutSubviews;
- (void)setContainerHeight:(double)height;
- (void)setFrame:(CGRect)frame;
- (void)setIsPresentedInFormSheet:(BOOL)sheet;
- (void)traitCollectionDidChange:(id)change;
- (void)updateContentSize;
@end

@implementation AMPOnboardingHeaderView

- (AMPOnboardingHeaderView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = AMPOnboardingHeaderView;
  v3 = [(AMPOnboardingHeaderView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D755E8]);
    imageView = v3->_imageView;
    v3->_imageView = v4;

    [(UIImageView *)v3->_imageView setContentMode:1];
    [(AMPOnboardingHeaderView *)v3 addSubview:v3->_imageView];
    v6 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v6;

    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    [(UILabel *)v3->_titleLabel setLineBreakMode:0];
    [(UILabel *)v3->_titleLabel setTextAlignment:1];
    [(AMPOnboardingHeaderView *)v3 addSubview:v3->_titleLabel];
    v8 = objc_alloc_init(MEMORY[0x277D756B8]);
    descriptionLabel = v3->_descriptionLabel;
    v3->_descriptionLabel = v8;

    [(UILabel *)v3->_descriptionLabel setNumberOfLines:0];
    [(UILabel *)v3->_descriptionLabel setLineBreakMode:0];
    [(UILabel *)v3->_descriptionLabel setTextAlignment:1];
    [(AMPOnboardingHeaderView *)v3 addSubview:v3->_descriptionLabel];
    [(AMPOnboardingHeaderView *)v3 setShowsVerticalScrollIndicator:0];
    [(AMPOnboardingHeaderView *)v3 setShowsHorizontalScrollIndicator:0];
  }

  return v3;
}

- (void)layoutSubviews
{
  v55.receiver = self;
  v55.super_class = AMPOnboardingHeaderView;
  [(AMPOnboardingHeaderView *)&v55 layoutSubviews];
  v3 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76A00]];
  v4 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76918]];
  [(AMPOnboardingHeaderView *)self bounds];
  Width = CGRectGetWidth(v56);
  isPresentedInFormSheet = [(AMPOnboardingHeaderView *)self isPresentedInFormSheet];
  if ([(AMPOnboardingHeaderView *)self isPresentedInFormSheet])
  {
    v7 = 200.0;
  }

  else
  {
    [(AMPOnboardingHeaderView *)self containerHeight];
    v7 = v8 * 0.25;
  }

  if (isPresentedInFormSheet)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 44.0;
  }

  traitCollection = [(AMPOnboardingHeaderView *)self traitCollection];
  [v3 scaledValueForValue:traitCollection compatibleWithTraitCollection:60.0];
  v12 = v11;

  imageView = [(AMPOnboardingHeaderView *)self imageView];
  [imageView sizeThatFits:{Width, 3.40282347e38}];
  v15 = v14;
  v17 = v16;

  [(AMPOnboardingHeaderView *)self safeAreaInsets];
  *&v18 = v9 + v18 + fmax(v7 - v12 - v17, 0.0);
  v19 = floorf(*&v18);
  [(AMPOnboardingHeaderView *)self bounds];
  v20 = CGRectGetMidX(v57) - v15 * 0.5;
  v21 = floorf(v20);
  imageView2 = [(AMPOnboardingHeaderView *)self imageView];
  [imageView2 setFrame:{v21, v19, v15, v17}];

  imageView3 = [(AMPOnboardingHeaderView *)self imageView];
  [imageView3 frame];
  v24 = v12 + CGRectGetMaxY(v58);

  titleLabel = [(AMPOnboardingHeaderView *)self titleLabel];
  [titleLabel sizeThatFits:{Width, 3.40282347e38}];
  v27 = v26;
  v29 = v28;

  [(AMPOnboardingHeaderView *)self bounds];
  v30 = CGRectGetMidX(v59) - v27 * 0.5;
  v31 = floorf(v30);
  titleLabel2 = [(AMPOnboardingHeaderView *)self titleLabel];
  [titleLabel2 _firstBaselineOffsetFromTop];
  v34 = v24 - v33;
  titleLabel3 = [(AMPOnboardingHeaderView *)self titleLabel];
  [titleLabel3 setFrame:{v31, v34, v27, v29}];

  titleLabel4 = [(AMPOnboardingHeaderView *)self titleLabel];
  [titleLabel4 frame];
  MaxY = CGRectGetMaxY(v60);
  titleLabel5 = [(AMPOnboardingHeaderView *)self titleLabel];
  [titleLabel5 _baselineOffsetFromBottom];
  v40 = MaxY - v39;

  descriptionLabel = [(AMPOnboardingHeaderView *)self descriptionLabel];
  [descriptionLabel sizeThatFits:{Width, 3.40282347e38}];
  v43 = v42;
  v45 = v44;

  [(AMPOnboardingHeaderView *)self bounds];
  v46 = CGRectGetMidX(v61) - v43 * 0.5;
  v47 = floorf(v46);
  traitCollection2 = [(AMPOnboardingHeaderView *)self traitCollection];
  [v4 scaledValueForValue:traitCollection2 compatibleWithTraitCollection:32.0];
  v50 = v40 + v49;
  descriptionLabel2 = [(AMPOnboardingHeaderView *)self descriptionLabel];
  [descriptionLabel2 _firstBaselineOffsetFromTop];
  v53 = v50 - v52;
  descriptionLabel3 = [(AMPOnboardingHeaderView *)self descriptionLabel];
  [descriptionLabel3 setFrame:{v47, v53, v43, v45}];
}

- (void)adjustedContentInsetDidChange
{
  v3.receiver = self;
  v3.super_class = AMPOnboardingHeaderView;
  [(AMPOnboardingHeaderView *)&v3 adjustedContentInsetDidChange];
  [(AMPOnboardingHeaderView *)self updateContentSize];
  [(AMPOnboardingHeaderView *)self setNeedsLayout];
}

- (void)traitCollectionDidChange:(id)change
{
  v19.receiver = self;
  v19.super_class = AMPOnboardingHeaderView;
  [(AMPOnboardingHeaderView *)&v19 traitCollectionDidChange:change];
  v4 = MEMORY[0x277D74310];
  v5 = *MEMORY[0x277D76A00];
  traitCollection = [(AMPOnboardingHeaderView *)self traitCollection];
  v7 = [v4 preferredFontDescriptorWithTextStyle:v5 compatibleWithTraitCollection:traitCollection];

  v8 = [v7 fontDescriptorWithSymbolicTraits:2];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  v11 = v10;

  v12 = [MEMORY[0x277D74300] fontWithDescriptor:v11 size:0.0];

  titleLabel = [(AMPOnboardingHeaderView *)self titleLabel];
  [titleLabel setFont:v12];

  v14 = MEMORY[0x277D74300];
  v15 = *MEMORY[0x277D76918];
  traitCollection2 = [(AMPOnboardingHeaderView *)self traitCollection];
  v17 = [v14 preferredFontForTextStyle:v15 compatibleWithTraitCollection:traitCollection2];
  descriptionLabel = [(AMPOnboardingHeaderView *)self descriptionLabel];
  [descriptionLabel setFont:v17];

  [(AMPOnboardingHeaderView *)self updateContentSize];
  [(AMPOnboardingHeaderView *)self setNeedsLayout];
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = AMPOnboardingHeaderView;
  [(AMPOnboardingHeaderView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(AMPOnboardingHeaderView *)self updateContentSize];
}

- (void)updateContentSize
{
  v36 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76A00]];
  v3 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76918]];
  [(AMPOnboardingHeaderView *)self bounds];
  Width = CGRectGetWidth(v38);
  isPresentedInFormSheet = [(AMPOnboardingHeaderView *)self isPresentedInFormSheet];
  if ([(AMPOnboardingHeaderView *)self isPresentedInFormSheet])
  {
    v6 = 200.0;
  }

  else
  {
    [(AMPOnboardingHeaderView *)self containerHeight];
    v6 = v7 * 0.25;
  }

  if (isPresentedInFormSheet)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 44.0;
  }

  traitCollection = [(AMPOnboardingHeaderView *)self traitCollection];
  [v36 scaledValueForValue:traitCollection compatibleWithTraitCollection:60.0];
  v11 = v10;

  imageView = [(AMPOnboardingHeaderView *)self imageView];
  [imageView sizeThatFits:{Width, 3.40282347e38}];
  v14 = v13;

  [(AMPOnboardingHeaderView *)self safeAreaInsets];
  *&v15 = v8 + v15 + fmax(v6 - v11 - v14, 0.0);
  v16 = v14 + floorf(*&v15);
  titleLabel = [(AMPOnboardingHeaderView *)self titleLabel];
  [titleLabel _firstBaselineOffsetFromTop];
  v19 = v11 - v18 + v16;

  titleLabel2 = [(AMPOnboardingHeaderView *)self titleLabel];
  [titleLabel2 sizeThatFits:{Width, 3.40282347e38}];
  v22 = v19 + v21;

  titleLabel3 = [(AMPOnboardingHeaderView *)self titleLabel];
  [titleLabel3 _baselineOffsetFromBottom];
  v25 = v22 - v24;

  traitCollection2 = [(AMPOnboardingHeaderView *)self traitCollection];
  [v3 scaledValueForValue:traitCollection2 compatibleWithTraitCollection:32.0];
  v28 = v27;
  descriptionLabel = [(AMPOnboardingHeaderView *)self descriptionLabel];
  [descriptionLabel _firstBaselineOffsetFromTop];
  v31 = v25 + v28 - v30;

  descriptionLabel2 = [(AMPOnboardingHeaderView *)self descriptionLabel];
  [descriptionLabel2 sizeThatFits:{Width, 3.40282347e38}];
  v34 = v31 + v33;

  v35 = v34;
  [(AMPOnboardingHeaderView *)self setContentSize:Width, roundf(v35)];
}

- (void)setContainerHeight:(double)height
{
  if (vabdd_f64(height, self->_containerHeight) > 2.22044605e-16)
  {
    self->_containerHeight = height;
    [(AMPOnboardingHeaderView *)self updateContentSize];

    [(AMPOnboardingHeaderView *)self setNeedsLayout];
  }
}

- (void)setIsPresentedInFormSheet:(BOOL)sheet
{
  if (self->_isPresentedInFormSheet != sheet)
  {
    self->_isPresentedInFormSheet = sheet;
    [(AMPOnboardingHeaderView *)self updateContentSize];

    [(AMPOnboardingHeaderView *)self setNeedsLayout];
  }
}

@end