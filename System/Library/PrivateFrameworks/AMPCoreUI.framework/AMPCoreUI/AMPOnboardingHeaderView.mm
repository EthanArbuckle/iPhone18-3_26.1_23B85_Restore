@interface AMPOnboardingHeaderView
- (AMPOnboardingHeaderView)initWithFrame:(CGRect)a3;
- (void)adjustedContentInsetDidChange;
- (void)layoutSubviews;
- (void)setContainerHeight:(double)a3;
- (void)setFrame:(CGRect)a3;
- (void)setIsPresentedInFormSheet:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateContentSize;
@end

@implementation AMPOnboardingHeaderView

- (AMPOnboardingHeaderView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = AMPOnboardingHeaderView;
  v3 = [(AMPOnboardingHeaderView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v6 = [(AMPOnboardingHeaderView *)self isPresentedInFormSheet];
  if ([(AMPOnboardingHeaderView *)self isPresentedInFormSheet])
  {
    v7 = 200.0;
  }

  else
  {
    [(AMPOnboardingHeaderView *)self containerHeight];
    v7 = v8 * 0.25;
  }

  if (v6)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 44.0;
  }

  v10 = [(AMPOnboardingHeaderView *)self traitCollection];
  [v3 scaledValueForValue:v10 compatibleWithTraitCollection:60.0];
  v12 = v11;

  v13 = [(AMPOnboardingHeaderView *)self imageView];
  [v13 sizeThatFits:{Width, 3.40282347e38}];
  v15 = v14;
  v17 = v16;

  [(AMPOnboardingHeaderView *)self safeAreaInsets];
  *&v18 = v9 + v18 + fmax(v7 - v12 - v17, 0.0);
  v19 = floorf(*&v18);
  [(AMPOnboardingHeaderView *)self bounds];
  v20 = CGRectGetMidX(v57) - v15 * 0.5;
  v21 = floorf(v20);
  v22 = [(AMPOnboardingHeaderView *)self imageView];
  [v22 setFrame:{v21, v19, v15, v17}];

  v23 = [(AMPOnboardingHeaderView *)self imageView];
  [v23 frame];
  v24 = v12 + CGRectGetMaxY(v58);

  v25 = [(AMPOnboardingHeaderView *)self titleLabel];
  [v25 sizeThatFits:{Width, 3.40282347e38}];
  v27 = v26;
  v29 = v28;

  [(AMPOnboardingHeaderView *)self bounds];
  v30 = CGRectGetMidX(v59) - v27 * 0.5;
  v31 = floorf(v30);
  v32 = [(AMPOnboardingHeaderView *)self titleLabel];
  [v32 _firstBaselineOffsetFromTop];
  v34 = v24 - v33;
  v35 = [(AMPOnboardingHeaderView *)self titleLabel];
  [v35 setFrame:{v31, v34, v27, v29}];

  v36 = [(AMPOnboardingHeaderView *)self titleLabel];
  [v36 frame];
  MaxY = CGRectGetMaxY(v60);
  v38 = [(AMPOnboardingHeaderView *)self titleLabel];
  [v38 _baselineOffsetFromBottom];
  v40 = MaxY - v39;

  v41 = [(AMPOnboardingHeaderView *)self descriptionLabel];
  [v41 sizeThatFits:{Width, 3.40282347e38}];
  v43 = v42;
  v45 = v44;

  [(AMPOnboardingHeaderView *)self bounds];
  v46 = CGRectGetMidX(v61) - v43 * 0.5;
  v47 = floorf(v46);
  v48 = [(AMPOnboardingHeaderView *)self traitCollection];
  [v4 scaledValueForValue:v48 compatibleWithTraitCollection:32.0];
  v50 = v40 + v49;
  v51 = [(AMPOnboardingHeaderView *)self descriptionLabel];
  [v51 _firstBaselineOffsetFromTop];
  v53 = v50 - v52;
  v54 = [(AMPOnboardingHeaderView *)self descriptionLabel];
  [v54 setFrame:{v47, v53, v43, v45}];
}

- (void)adjustedContentInsetDidChange
{
  v3.receiver = self;
  v3.super_class = AMPOnboardingHeaderView;
  [(AMPOnboardingHeaderView *)&v3 adjustedContentInsetDidChange];
  [(AMPOnboardingHeaderView *)self updateContentSize];
  [(AMPOnboardingHeaderView *)self setNeedsLayout];
}

- (void)traitCollectionDidChange:(id)a3
{
  v19.receiver = self;
  v19.super_class = AMPOnboardingHeaderView;
  [(AMPOnboardingHeaderView *)&v19 traitCollectionDidChange:a3];
  v4 = MEMORY[0x277D74310];
  v5 = *MEMORY[0x277D76A00];
  v6 = [(AMPOnboardingHeaderView *)self traitCollection];
  v7 = [v4 preferredFontDescriptorWithTextStyle:v5 compatibleWithTraitCollection:v6];

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

  v13 = [(AMPOnboardingHeaderView *)self titleLabel];
  [v13 setFont:v12];

  v14 = MEMORY[0x277D74300];
  v15 = *MEMORY[0x277D76918];
  v16 = [(AMPOnboardingHeaderView *)self traitCollection];
  v17 = [v14 preferredFontForTextStyle:v15 compatibleWithTraitCollection:v16];
  v18 = [(AMPOnboardingHeaderView *)self descriptionLabel];
  [v18 setFont:v17];

  [(AMPOnboardingHeaderView *)self updateContentSize];
  [(AMPOnboardingHeaderView *)self setNeedsLayout];
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = AMPOnboardingHeaderView;
  [(AMPOnboardingHeaderView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(AMPOnboardingHeaderView *)self updateContentSize];
}

- (void)updateContentSize
{
  v36 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76A00]];
  v3 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76918]];
  [(AMPOnboardingHeaderView *)self bounds];
  Width = CGRectGetWidth(v38);
  v5 = [(AMPOnboardingHeaderView *)self isPresentedInFormSheet];
  if ([(AMPOnboardingHeaderView *)self isPresentedInFormSheet])
  {
    v6 = 200.0;
  }

  else
  {
    [(AMPOnboardingHeaderView *)self containerHeight];
    v6 = v7 * 0.25;
  }

  if (v5)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 44.0;
  }

  v9 = [(AMPOnboardingHeaderView *)self traitCollection];
  [v36 scaledValueForValue:v9 compatibleWithTraitCollection:60.0];
  v11 = v10;

  v12 = [(AMPOnboardingHeaderView *)self imageView];
  [v12 sizeThatFits:{Width, 3.40282347e38}];
  v14 = v13;

  [(AMPOnboardingHeaderView *)self safeAreaInsets];
  *&v15 = v8 + v15 + fmax(v6 - v11 - v14, 0.0);
  v16 = v14 + floorf(*&v15);
  v17 = [(AMPOnboardingHeaderView *)self titleLabel];
  [v17 _firstBaselineOffsetFromTop];
  v19 = v11 - v18 + v16;

  v20 = [(AMPOnboardingHeaderView *)self titleLabel];
  [v20 sizeThatFits:{Width, 3.40282347e38}];
  v22 = v19 + v21;

  v23 = [(AMPOnboardingHeaderView *)self titleLabel];
  [v23 _baselineOffsetFromBottom];
  v25 = v22 - v24;

  v26 = [(AMPOnboardingHeaderView *)self traitCollection];
  [v3 scaledValueForValue:v26 compatibleWithTraitCollection:32.0];
  v28 = v27;
  v29 = [(AMPOnboardingHeaderView *)self descriptionLabel];
  [v29 _firstBaselineOffsetFromTop];
  v31 = v25 + v28 - v30;

  v32 = [(AMPOnboardingHeaderView *)self descriptionLabel];
  [v32 sizeThatFits:{Width, 3.40282347e38}];
  v34 = v31 + v33;

  v35 = v34;
  [(AMPOnboardingHeaderView *)self setContentSize:Width, roundf(v35)];
}

- (void)setContainerHeight:(double)a3
{
  if (vabdd_f64(a3, self->_containerHeight) > 2.22044605e-16)
  {
    self->_containerHeight = a3;
    [(AMPOnboardingHeaderView *)self updateContentSize];

    [(AMPOnboardingHeaderView *)self setNeedsLayout];
  }
}

- (void)setIsPresentedInFormSheet:(BOOL)a3
{
  if (self->_isPresentedInFormSheet != a3)
  {
    self->_isPresentedInFormSheet = a3;
    [(AMPOnboardingHeaderView *)self updateContentSize];

    [(AMPOnboardingHeaderView *)self setNeedsLayout];
  }
}

@end