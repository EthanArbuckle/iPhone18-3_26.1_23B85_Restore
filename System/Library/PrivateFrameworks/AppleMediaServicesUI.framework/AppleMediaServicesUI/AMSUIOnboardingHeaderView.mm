@interface AMSUIOnboardingHeaderView
- (AMSUIOnboardingHeaderView)initWithFrame:(CGRect)frame;
- (CGSize)intrinsicContentSize;
- (void)_traitCollectionDidChange:(id)change;
- (void)adjustedContentInsetDidChange;
- (void)layoutSubviews;
- (void)setContainerHeight:(double)height;
- (void)setFrame:(CGRect)frame;
- (void)setIsPresentedInFormSheet:(BOOL)sheet;
- (void)updateContentSize;
@end

@implementation AMSUIOnboardingHeaderView

- (AMSUIOnboardingHeaderView)initWithFrame:(CGRect)frame
{
  v31[1] = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = AMSUIOnboardingHeaderView;
  v3 = [(AMSUIOnboardingHeaderView *)&v30 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v3->_imageView;
    v3->_imageView = v4;

    [(UIImageView *)v3->_imageView setContentMode:1];
    [(AMSUIOnboardingHeaderView *)v3 addSubview:v3->_imageView];
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v6;

    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    [(UILabel *)v3->_titleLabel setLineBreakMode:0];
    [(UILabel *)v3->_titleLabel setTextAlignment:1];
    v8 = MEMORY[0x1E69DB880];
    traitCollection = [(AMSUIOnboardingHeaderView *)v3 traitCollection];
    v10 = [v8 preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDDB0] compatibleWithTraitCollection:traitCollection];

    v11 = [v10 fontDescriptorWithSymbolicTraits:2];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v10;
    }

    v14 = v13;

    v15 = [MEMORY[0x1E69DB878] fontWithDescriptor:v14 size:0.0];
    titleLabel = [(AMSUIOnboardingHeaderView *)v3 titleLabel];
    [titleLabel setFont:v15];

    [(AMSUIOnboardingHeaderView *)v3 addSubview:v3->_titleLabel];
    v17 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    descriptionLabel = v3->_descriptionLabel;
    v3->_descriptionLabel = v17;

    [(UILabel *)v3->_descriptionLabel setNumberOfLines:0];
    [(UILabel *)v3->_descriptionLabel setLineBreakMode:0];
    [(UILabel *)v3->_descriptionLabel setTextAlignment:1];
    v19 = MEMORY[0x1E69DB878];
    traitCollection2 = [(AMSUIOnboardingHeaderView *)v3 traitCollection];
    v21 = [v19 preferredFontForTextStyle:*MEMORY[0x1E69DDD80] compatibleWithTraitCollection:traitCollection2];
    descriptionLabel = [(AMSUIOnboardingHeaderView *)v3 descriptionLabel];
    [descriptionLabel setFont:v21];

    [(AMSUIOnboardingHeaderView *)v3 addSubview:v3->_descriptionLabel];
    [(AMSUIOnboardingHeaderView *)v3 setAutoresizingMask:16];
    [(AMSUIOnboardingHeaderView *)v3 setShowsVerticalScrollIndicator:0];
    [(AMSUIOnboardingHeaderView *)v3 setShowsHorizontalScrollIndicator:0];
    objc_initWeak(&location, v3);
    v31[0] = objc_opt_class();
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __43__AMSUIOnboardingHeaderView_initWithFrame___block_invoke;
    v27[3] = &unk_1E7F24690;
    objc_copyWeak(&v28, &location);
    v24 = [(AMSUIOnboardingHeaderView *)v3 registerForTraitChanges:v23 withHandler:v27];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  v25 = *MEMORY[0x1E69E9840];
  return v3;
}

void __43__AMSUIOnboardingHeaderView_initWithFrame___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [v11 traitCollection];
  v7 = [v6 preferredContentSizeCategory];
  v8 = [v5 preferredContentSizeCategory];

  if (v7 != v8)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v10 = [v11 traitCollection];
    [WeakRetained _traitCollectionDidChange:v10];
  }
}

- (void)layoutSubviews
{
  v64.receiver = self;
  v64.super_class = AMSUIOnboardingHeaderView;
  [(AMSUIOnboardingHeaderView *)&v64 layoutSubviews];
  v3 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDDB0]];
  v4 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDD80]];
  [(AMSUIOnboardingHeaderView *)self bounds];
  Width = CGRectGetWidth(v65);
  if ([(AMSUIOnboardingHeaderView *)self isPresentedInFormSheet])
  {
    v6 = 110.0;
  }

  else
  {
    [(AMSUIOnboardingHeaderView *)self containerHeight];
    v6 = v7 * 0.25;
  }

  traitCollection = [(AMSUIOnboardingHeaderView *)self traitCollection];
  [v3 scaledValueForValue:traitCollection compatibleWithTraitCollection:60.0];
  v10 = v9;

  imageView = [(AMSUIOnboardingHeaderView *)self imageView];
  [imageView sizeThatFits:{Width, 3.40282347e38}];
  v13 = v12;
  v15 = v14;

  [(AMSUIOnboardingHeaderView *)self safeAreaInsets];
  if (v16 < 60.0)
  {
    v16 = 60.0;
  }

  v17 = fmax(v6 - v10 - v15, 0.0) + v16 + 44.0;
  v18 = floorf(v17);
  [(AMSUIOnboardingHeaderView *)self bounds];
  v19 = CGRectGetMidX(v66) - v13 * 0.5;
  v20 = floorf(v19);
  imageView2 = [(AMSUIOnboardingHeaderView *)self imageView];
  [imageView2 setFrame:{v20, v18, v13, v15}];

  titleLabel = [(AMSUIOnboardingHeaderView *)self titleLabel];
  [titleLabel _firstBaselineOffsetFromTop];
  v24 = v15 + v18 + v10 - v23;

  titleLabel2 = [(AMSUIOnboardingHeaderView *)self titleLabel];
  [titleLabel2 sizeThatFits:{Width, 3.40282347e38}];
  v27 = v26;
  v29 = v28;

  titleLabel3 = [(AMSUIOnboardingHeaderView *)self titleLabel];
  [titleLabel3 _baselineOffsetFromBottom];
  v32 = v24 + v29 - v31;

  traitCollection2 = [(AMSUIOnboardingHeaderView *)self traitCollection];
  [v4 scaledValueForValue:traitCollection2 compatibleWithTraitCollection:32.0];
  v35 = v34;
  descriptionLabel = [(AMSUIOnboardingHeaderView *)self descriptionLabel];
  [descriptionLabel _firstBaselineOffsetFromTop];
  v38 = v32 + v35 - v37;

  descriptionLabel2 = [(AMSUIOnboardingHeaderView *)self descriptionLabel];
  [descriptionLabel2 sizeThatFits:{Width, 3.40282347e38}];
  v41 = v40;
  v43 = v42;

  descriptionLabel3 = [(AMSUIOnboardingHeaderView *)self descriptionLabel];
  [descriptionLabel3 _firstBaselineOffsetFromTop];
  v46 = v38 + v43 - (v29 + v43) - v45 - fmax(v29 + -160.0, 0.0);

  [(AMSUIOnboardingHeaderView *)self bounds];
  v47 = CGRectGetMidX(v67) - v27 * 0.5;
  v48 = floorf(v47);
  titleLabel4 = [(AMSUIOnboardingHeaderView *)self titleLabel];
  [titleLabel4 _firstBaselineOffsetFromTop];
  v51 = v46 - v50;
  titleLabel5 = [(AMSUIOnboardingHeaderView *)self titleLabel];
  [titleLabel5 setFrame:{v48, v51, v27, v29}];

  titleLabel6 = [(AMSUIOnboardingHeaderView *)self titleLabel];
  [titleLabel6 frame];
  MaxY = CGRectGetMaxY(v68);
  titleLabel7 = [(AMSUIOnboardingHeaderView *)self titleLabel];
  [titleLabel7 _baselineOffsetFromBottom];
  v57 = MaxY - v56;

  traitCollection3 = [(AMSUIOnboardingHeaderView *)self traitCollection];
  [v4 scaledValueForValue:traitCollection3 compatibleWithTraitCollection:32.0];
  v60 = v57 + v59;

  [(AMSUIOnboardingHeaderView *)self bounds];
  v61 = CGRectGetMidX(v69) - v41 * 0.5;
  v62 = floorf(v61);
  descriptionLabel4 = [(AMSUIOnboardingHeaderView *)self descriptionLabel];
  [descriptionLabel4 setFrame:{v62, v60, v41, v43}];
}

- (void)adjustedContentInsetDidChange
{
  v3.receiver = self;
  v3.super_class = AMSUIOnboardingHeaderView;
  [(AMSUIOnboardingHeaderView *)&v3 adjustedContentInsetDidChange];
  [(AMSUIOnboardingHeaderView *)self updateContentSize];
  [(AMSUIOnboardingHeaderView *)self setNeedsLayout];
}

- (void)_traitCollectionDidChange:(id)change
{
  v4 = MEMORY[0x1E69DB880];
  v5 = *MEMORY[0x1E69DDDB0];
  traitCollection = [(AMSUIOnboardingHeaderView *)self traitCollection];
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

  v12 = [MEMORY[0x1E69DB878] fontWithDescriptor:v11 size:0.0];

  titleLabel = [(AMSUIOnboardingHeaderView *)self titleLabel];
  [titleLabel setFont:v12];

  v14 = MEMORY[0x1E69DB878];
  v15 = *MEMORY[0x1E69DDD80];
  traitCollection2 = [(AMSUIOnboardingHeaderView *)self traitCollection];
  v17 = [v14 preferredFontForTextStyle:v15 compatibleWithTraitCollection:traitCollection2];
  descriptionLabel = [(AMSUIOnboardingHeaderView *)self descriptionLabel];
  [descriptionLabel setFont:v17];

  [(AMSUIOnboardingHeaderView *)self updateContentSize];

  [(AMSUIOnboardingHeaderView *)self setNeedsLayout];
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = AMSUIOnboardingHeaderView;
  [(AMSUIOnboardingHeaderView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(AMSUIOnboardingHeaderView *)self updateContentSize];
}

- (void)updateContentSize
{
  v33 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDDB0]];
  v3 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(AMSUIOnboardingHeaderView *)self bounds];
  Width = CGRectGetWidth(v35);
  traitCollection = [(AMSUIOnboardingHeaderView *)self traitCollection];
  [v33 scaledValueForValue:traitCollection compatibleWithTraitCollection:60.0];
  v7 = v6;

  imageView = [(AMSUIOnboardingHeaderView *)self imageView];
  [imageView sizeThatFits:{Width, 3.40282347e38}];
  v10 = v9;

  [(AMSUIOnboardingHeaderView *)self safeAreaInsets];
  if (v11 < 60.0)
  {
    v11 = 60.0;
  }

  v12 = fmax(110.0 - v7 - v10, 0.0) + v11 + 44.0;
  v13 = v10 + floorf(v12);
  titleLabel = [(AMSUIOnboardingHeaderView *)self titleLabel];
  [titleLabel _firstBaselineOffsetFromTop];
  v16 = v7 - v15 + v13;

  titleLabel2 = [(AMSUIOnboardingHeaderView *)self titleLabel];
  [titleLabel2 sizeThatFits:{Width, 3.40282347e38}];
  v19 = v18 + v16;

  titleLabel3 = [(AMSUIOnboardingHeaderView *)self titleLabel];
  [titleLabel3 _baselineOffsetFromBottom];
  v22 = v19 - v21;

  traitCollection2 = [(AMSUIOnboardingHeaderView *)self traitCollection];
  [v3 scaledValueForValue:traitCollection2 compatibleWithTraitCollection:32.0];
  v25 = v24;
  descriptionLabel = [(AMSUIOnboardingHeaderView *)self descriptionLabel];
  [descriptionLabel _firstBaselineOffsetFromTop];
  v28 = v22 + v25 - v27;

  descriptionLabel2 = [(AMSUIOnboardingHeaderView *)self descriptionLabel];
  [descriptionLabel2 sizeThatFits:{Width, 3.40282347e38}];
  v31 = v28 + v30;

  v32 = v31;
  [(AMSUIOnboardingHeaderView *)self setContentSize:Width, roundf(v32)];
}

- (CGSize)intrinsicContentSize
{
  [(AMSUIOnboardingHeaderView *)self updateContentSize];

  [(AMSUIOnboardingHeaderView *)self contentSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setContainerHeight:(double)height
{
  if (vabdd_f64(height, self->_containerHeight) > 2.22044605e-16)
  {
    self->_containerHeight = height;
    [(AMSUIOnboardingHeaderView *)self updateContentSize];

    [(AMSUIOnboardingHeaderView *)self setNeedsLayout];
  }
}

- (void)setIsPresentedInFormSheet:(BOOL)sheet
{
  if (self->_isPresentedInFormSheet != sheet)
  {
    self->_isPresentedInFormSheet = sheet;
    [(AMSUIOnboardingHeaderView *)self updateContentSize];

    [(AMSUIOnboardingHeaderView *)self setNeedsLayout];
  }
}

@end