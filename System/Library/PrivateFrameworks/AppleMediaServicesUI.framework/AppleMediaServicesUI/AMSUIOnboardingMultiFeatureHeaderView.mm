@interface AMSUIOnboardingMultiFeatureHeaderView
- (AMSUIOnboardingMultiFeatureHeaderView)initWithFeatures:(id)a3;
- (CGSize)intrinsicContentSize;
- (void)adjustedContentInsetDidChange;
- (void)layoutSubviews;
- (void)setContainerHeight:(double)a3;
- (void)setFrame:(CGRect)a3;
- (void)setIsPresentedInFormSheet:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateContentSize;
@end

@implementation AMSUIOnboardingMultiFeatureHeaderView

- (AMSUIOnboardingMultiFeatureHeaderView)initWithFeatures:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v35.receiver = self;
  v35.super_class = AMSUIOnboardingMultiFeatureHeaderView;
  v5 = [(AMSUIOnboardingMultiFeatureHeaderView *)&v35 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v6;

    [(UILabel *)v5->_titleLabel setNumberOfLines:0];
    [(UILabel *)v5->_titleLabel setLineBreakMode:0];
    [(UILabel *)v5->_titleLabel setTextAlignment:1];
    [(AMSUIOnboardingMultiFeatureHeaderView *)v5 addSubview:v5->_titleLabel];
    v8 = MEMORY[0x1E69DB880];
    v9 = *MEMORY[0x1E69DDDB0];
    v10 = [(AMSUIOnboardingMultiFeatureHeaderView *)v5 traitCollection];
    v11 = [v8 preferredFontDescriptorWithTextStyle:v9 compatibleWithTraitCollection:v10];

    v12 = [v11 fontDescriptorWithSymbolicTraits:2];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v11;
    }

    v15 = v14;

    v16 = [MEMORY[0x1E69DB878] fontWithDescriptor:v15 size:0.0];
    v17 = [(AMSUIOnboardingMultiFeatureHeaderView *)v5 titleLabel];
    [v17 setFont:v16];

    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v19 = v4;
    v20 = [v19 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v32;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v32 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v31 + 1) + 8 * i);
          v25 = [AMSUIOnboardingFeatureView alloc];
          v26 = [(AMSUIOnboardingFeatureView *)v25 initWithFeature:v24, v31];
          [v18 addObject:v26];
          [(AMSUIOnboardingMultiFeatureHeaderView *)v5 addSubview:v26];
        }

        v21 = [v19 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v21);
    }

    v27 = [v18 copy];
    featureViews = v5->_featureViews;
    v5->_featureViews = v27;

    [(AMSUIOnboardingMultiFeatureHeaderView *)v5 setShowsVerticalScrollIndicator:0];
    [(AMSUIOnboardingMultiFeatureHeaderView *)v5 setShowsHorizontalScrollIndicator:0];
  }

  v29 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)layoutSubviews
{
  v46 = *MEMORY[0x1E69E9840];
  v44.receiver = self;
  v44.super_class = AMSUIOnboardingMultiFeatureHeaderView;
  [(AMSUIOnboardingMultiFeatureHeaderView *)&v44 layoutSubviews];
  if ([(AMSUIOnboardingMultiFeatureHeaderView *)self isPresentedInFormSheet])
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 44.0;
  }

  [(AMSUIOnboardingMultiFeatureHeaderView *)self safeAreaInsets];
  *&v4 = v3 + v4 + 140.0;
  v5 = floorf(*&v4);
  [(AMSUIOnboardingMultiFeatureHeaderView *)self bounds];
  Width = CGRectGetWidth(v47);
  v7 = [(AMSUIOnboardingMultiFeatureHeaderView *)self titleLabel];
  [v7 sizeThatFits:{Width, 3.40282347e38}];
  v9 = v8;
  v11 = v10;

  [(AMSUIOnboardingMultiFeatureHeaderView *)self bounds];
  v12 = CGRectGetMidX(v48) + v9 * -0.5;
  v13 = floorf(v12);
  v14 = [(AMSUIOnboardingMultiFeatureHeaderView *)self titleLabel];
  [v14 _firstBaselineOffsetFromTop];
  v16 = v5 - v15;
  v17 = [(AMSUIOnboardingMultiFeatureHeaderView *)self titleLabel];
  [v17 setFrame:{v13, v16, v9, v11}];

  v18 = [(AMSUIOnboardingMultiFeatureHeaderView *)self titleLabel];
  [v18 frame];
  MaxY = CGRectGetMaxY(v49);
  v20 = [(AMSUIOnboardingMultiFeatureHeaderView *)self titleLabel];
  [v20 _baselineOffsetFromBottom];
  v22 = v21;

  v23 = [MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[AMSUIOnboardingMultiFeatureHeaderView semanticContentAttribute](self, "semanticContentAttribute")}];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v24 = [(AMSUIOnboardingMultiFeatureHeaderView *)self featureViews];
  v25 = [v24 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = MaxY - v22 + 50.0;
    v28 = ceilf(v27);
    v29 = *v41;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v41 != v29)
        {
          objc_enumerationMutation(v24);
        }

        v31 = v28;
        v32 = *(*(&v40 + 1) + 8 * i);
        [v32 sizeThatFits:{Width, 3.40282347e38}];
        v35 = v34;
        v36 = Width - v34;
        if (v23 != 1)
        {
          v36 = 0.0;
        }

        [v32 setFrame:{v36, v31, v35, v33}];
        [v32 frame];
        v37 = CGRectGetMaxY(v50);
        [v32 baselineOffsetFromBottom];
        *&v38 = v37 - v38 + 36.0;
        v28 = ceilf(*&v38);
      }

      v26 = [v24 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v26);
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (void)adjustedContentInsetDidChange
{
  v3.receiver = self;
  v3.super_class = AMSUIOnboardingMultiFeatureHeaderView;
  [(AMSUIOnboardingMultiFeatureHeaderView *)&v3 adjustedContentInsetDidChange];
  [(AMSUIOnboardingMultiFeatureHeaderView *)self updateContentSize];
  [(AMSUIOnboardingMultiFeatureHeaderView *)self setNeedsLayout];
}

- (void)traitCollectionDidChange:(id)a3
{
  v14.receiver = self;
  v14.super_class = AMSUIOnboardingMultiFeatureHeaderView;
  [(AMSUIOnboardingMultiFeatureHeaderView *)&v14 traitCollectionDidChange:a3];
  v4 = MEMORY[0x1E69DB880];
  v5 = *MEMORY[0x1E69DDDB0];
  v6 = [(AMSUIOnboardingMultiFeatureHeaderView *)self traitCollection];
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

  v12 = [MEMORY[0x1E69DB878] fontWithDescriptor:v11 size:0.0];

  v13 = [(AMSUIOnboardingMultiFeatureHeaderView *)self titleLabel];
  [v13 setFont:v12];

  [(AMSUIOnboardingMultiFeatureHeaderView *)self updateContentSize];
  [(AMSUIOnboardingMultiFeatureHeaderView *)self setNeedsLayout];
}

- (void)setContainerHeight:(double)a3
{
  if (vabdd_f64(a3, self->_containerHeight) > 2.22044605e-16)
  {
    self->_containerHeight = a3;
    [(AMSUIOnboardingMultiFeatureHeaderView *)self updateContentSize];

    [(AMSUIOnboardingMultiFeatureHeaderView *)self setNeedsLayout];
  }
}

- (void)setIsPresentedInFormSheet:(BOOL)a3
{
  if (self->_isPresentedInFormSheet != a3)
  {
    self->_isPresentedInFormSheet = a3;
    [(AMSUIOnboardingMultiFeatureHeaderView *)self updateContentSize];

    [(AMSUIOnboardingMultiFeatureHeaderView *)self setNeedsLayout];
  }
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = AMSUIOnboardingMultiFeatureHeaderView;
  [(AMSUIOnboardingMultiFeatureHeaderView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(AMSUIOnboardingMultiFeatureHeaderView *)self updateContentSize];
}

- (CGSize)intrinsicContentSize
{
  [(AMSUIOnboardingMultiFeatureHeaderView *)self updateContentSize];

  [(AMSUIOnboardingMultiFeatureHeaderView *)self contentSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)updateContentSize
{
  v48 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDDB0]];
  v3 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDD78]];
  [(AMSUIOnboardingMultiFeatureHeaderView *)self bounds];
  Width = CGRectGetWidth(v50);
  if ([(AMSUIOnboardingMultiFeatureHeaderView *)self isPresentedInFormSheet])
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 44.0;
  }

  if ([(AMSUIOnboardingMultiFeatureHeaderView *)self isPresentedInFormSheet])
  {
    v6 = 140.0;
  }

  else
  {
    [(AMSUIOnboardingMultiFeatureHeaderView *)self containerHeight];
    v6 = v7 * 0.045;
  }

  v8 = [(AMSUIOnboardingMultiFeatureHeaderView *)self traitCollection];
  [v48 scaledValueForValue:v8 compatibleWithTraitCollection:v6];
  v10 = v9;

  if ([(AMSUIOnboardingMultiFeatureHeaderView *)self isPresentedInFormSheet])
  {
    v11 = [(AMSUIOnboardingMultiFeatureHeaderView *)self traitCollection];
    [v48 scaledValueForValue:v11 compatibleWithTraitCollection:50.0];
    v13 = v12;
  }

  else
  {
    [(AMSUIOnboardingMultiFeatureHeaderView *)self containerHeight];
    v13 = v14 * 0.055;
  }

  [(AMSUIOnboardingMultiFeatureHeaderView *)self safeAreaInsets];
  *&v15 = v10 + v5 + v15;
  v16 = floorf(*&v15);
  v17 = [(AMSUIOnboardingMultiFeatureHeaderView *)self titleLabel];
  [v17 _firstBaselineOffsetFromTop];
  v19 = v16 - v18 + 0.0;

  v20 = [(AMSUIOnboardingMultiFeatureHeaderView *)self titleLabel];
  [v20 sizeThatFits:{Width, 3.40282347e38}];
  v22 = v21;
  v23 = [(AMSUIOnboardingMultiFeatureHeaderView *)self titleLabel];
  [v23 _baselineOffsetFromBottom];
  *&v24 = v13 + v22 - v24;
  v25 = ceilf(*&v24);

  if ([(AMSUIOnboardingMultiFeatureHeaderView *)self isPresentedInFormSheet])
  {
    v26 = [(AMSUIOnboardingMultiFeatureHeaderView *)self traitCollection];
    [v3 scaledValueForValue:v26 compatibleWithTraitCollection:36.0];
    v28 = v27;
  }

  else
  {
    [(AMSUIOnboardingMultiFeatureHeaderView *)self containerHeight];
    v28 = v29 * 0.047;
  }

  v30 = v19 + v25;
  v31 = [(AMSUIOnboardingMultiFeatureHeaderView *)self featureViews];
  v32 = [v31 count];

  if (v32)
  {
    v33 = 0;
    do
    {
      v34 = [(AMSUIOnboardingMultiFeatureHeaderView *)self featureViews];
      v35 = [v34 objectAtIndexedSubscript:v33];

      [v35 sizeThatFits:{Width, 3.40282347e38}];
      v37 = v36;
      v38 = [(AMSUIOnboardingMultiFeatureHeaderView *)self featureViews];
      v39 = [v38 count] - 1;

      v40 = [(AMSUIOnboardingMultiFeatureHeaderView *)self featureViews];
      v41 = [v40 count];

      v42 = 0.0;
      if (v33 != v39)
      {
        [v35 baselineOffsetFromBottom];
      }

      if (++v33 >= v41)
      {
        v43 = 0.0;
      }

      else
      {
        v43 = v28;
      }

      v44 = v43 + v37 - v42;
      v30 = v30 + ceilf(v44);

      v45 = [(AMSUIOnboardingMultiFeatureHeaderView *)self featureViews];
      v46 = [v45 count];
    }

    while (v33 < v46);
  }

  v47 = v30;
  [(AMSUIOnboardingMultiFeatureHeaderView *)self setContentSize:Width, roundf(v47)];
}

@end