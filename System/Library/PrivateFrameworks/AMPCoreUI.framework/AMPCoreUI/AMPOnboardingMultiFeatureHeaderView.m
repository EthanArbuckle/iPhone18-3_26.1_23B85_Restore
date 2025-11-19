@interface AMPOnboardingMultiFeatureHeaderView
- (AMPOnboardingMultiFeatureHeaderView)initWithFeatures:(id)a3;
- (void)adjustedContentInsetDidChange;
- (void)layoutSubviews;
- (void)setContainerHeight:(double)a3;
- (void)setFrame:(CGRect)a3;
- (void)setIsPresentedInFormSheet:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateContentSize;
@end

@implementation AMPOnboardingMultiFeatureHeaderView

- (AMPOnboardingMultiFeatureHeaderView)initWithFeatures:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = AMPOnboardingMultiFeatureHeaderView;
  v5 = [(AMPOnboardingMultiFeatureHeaderView *)&v25 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v6;

    [(UILabel *)v5->_titleLabel setNumberOfLines:0];
    [(UILabel *)v5->_titleLabel setLineBreakMode:0];
    [(UILabel *)v5->_titleLabel setTextAlignment:1];
    [(AMPOnboardingMultiFeatureHeaderView *)v5 addSubview:v5->_titleLabel];
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        v13 = 0;
        do
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * v13);
          v15 = [AMPOnboardingFeatureView alloc];
          v16 = [(AMPOnboardingFeatureView *)v15 initWithFeature:v14, v21];
          [v8 addObject:v16];
          [(AMPOnboardingMultiFeatureHeaderView *)v5 addSubview:v16];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v11);
    }

    v17 = [v8 copy];
    featureViews = v5->_featureViews;
    v5->_featureViews = v17;

    [(AMPOnboardingMultiFeatureHeaderView *)v5 setShowsVerticalScrollIndicator:0];
    [(AMPOnboardingMultiFeatureHeaderView *)v5 setShowsHorizontalScrollIndicator:0];
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)layoutSubviews
{
  v61 = *MEMORY[0x277D85DE8];
  v59.receiver = self;
  v59.super_class = AMPOnboardingMultiFeatureHeaderView;
  [(AMPOnboardingMultiFeatureHeaderView *)&v59 layoutSubviews];
  v3 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76A00]];
  v4 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D769C0]];
  if ([(AMPOnboardingMultiFeatureHeaderView *)self isPresentedInFormSheet])
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 44.0;
  }

  if ([(AMPOnboardingMultiFeatureHeaderView *)self isPresentedInFormSheet])
  {
    v6 = 100.0;
  }

  else
  {
    [(AMPOnboardingMultiFeatureHeaderView *)self containerHeight];
    v6 = v7 * 0.045;
  }

  v8 = [(AMPOnboardingMultiFeatureHeaderView *)self traitCollection];
  [v3 scaledValueForValue:v8 compatibleWithTraitCollection:v6];
  v10 = v9;

  [(AMPOnboardingMultiFeatureHeaderView *)self safeAreaInsets];
  *&v11 = v10 + v5 + v11;
  v12 = floorf(*&v11);
  [(AMPOnboardingMultiFeatureHeaderView *)self bounds];
  Width = CGRectGetWidth(v62);
  v14 = [(AMPOnboardingMultiFeatureHeaderView *)self titleLabel];
  [v14 sizeThatFits:{Width, 3.40282347e38}];
  v16 = v15;
  v18 = v17;

  [(AMPOnboardingMultiFeatureHeaderView *)self bounds];
  v19 = CGRectGetMidX(v63) + v16 * -0.5;
  v20 = floorf(v19);
  v21 = [(AMPOnboardingMultiFeatureHeaderView *)self titleLabel];
  [v21 _firstBaselineOffsetFromTop];
  v23 = v12 - v22;
  v24 = [(AMPOnboardingMultiFeatureHeaderView *)self titleLabel];
  [v24 setFrame:{v20, v23, v16, v18}];

  if ([(AMPOnboardingMultiFeatureHeaderView *)self isPresentedInFormSheet])
  {
    v25 = [(AMPOnboardingMultiFeatureHeaderView *)self traitCollection];
    [v3 scaledValueForValue:v25 compatibleWithTraitCollection:50.0];
    v27 = v26;
  }

  else
  {
    [(AMPOnboardingMultiFeatureHeaderView *)self containerHeight];
    v27 = v28 * 0.055;
  }

  v29 = [(AMPOnboardingMultiFeatureHeaderView *)self titleLabel];
  [v29 frame];
  MaxY = CGRectGetMaxY(v64);
  v31 = [(AMPOnboardingMultiFeatureHeaderView *)self titleLabel];
  [v31 _baselineOffsetFromBottom];
  v33 = v32;

  if ([(AMPOnboardingMultiFeatureHeaderView *)self isPresentedInFormSheet])
  {
    v34 = [(AMPOnboardingMultiFeatureHeaderView *)self traitCollection];
    [v4 scaledValueForValue:v34 compatibleWithTraitCollection:36.0];
    v36 = v35;
  }

  else
  {
    [(AMPOnboardingMultiFeatureHeaderView *)self containerHeight];
    v36 = v37 * 0.047;
  }

  v38 = [MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[AMPOnboardingMultiFeatureHeaderView semanticContentAttribute](self, "semanticContentAttribute")}];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v39 = [(AMPOnboardingMultiFeatureHeaderView *)self featureViews];
  v40 = [v39 countByEnumeratingWithState:&v55 objects:v60 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = v27 + MaxY - v33;
    v43 = ceilf(v42);
    v44 = *v56;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v56 != v44)
        {
          objc_enumerationMutation(v39);
        }

        v46 = v43;
        v47 = *(*(&v55 + 1) + 8 * i);
        [v47 sizeThatFits:{Width, 3.40282347e38}];
        v50 = v49;
        v51 = Width - v49;
        if (v38 != 1)
        {
          v51 = 0.0;
        }

        [v47 setFrame:{v51, v46, v50, v48}];
        [v47 frame];
        v52 = CGRectGetMaxY(v65);
        [v47 baselineOffsetFromBottom];
        *&v53 = v36 + v52 - v53;
        v43 = ceilf(*&v53);
      }

      v41 = [v39 countByEnumeratingWithState:&v55 objects:v60 count:16];
    }

    while (v41);
  }

  v54 = *MEMORY[0x277D85DE8];
}

- (void)adjustedContentInsetDidChange
{
  v3.receiver = self;
  v3.super_class = AMPOnboardingMultiFeatureHeaderView;
  [(AMPOnboardingMultiFeatureHeaderView *)&v3 adjustedContentInsetDidChange];
  [(AMPOnboardingMultiFeatureHeaderView *)self updateContentSize];
  [(AMPOnboardingMultiFeatureHeaderView *)self setNeedsLayout];
}

- (void)traitCollectionDidChange:(id)a3
{
  v14.receiver = self;
  v14.super_class = AMPOnboardingMultiFeatureHeaderView;
  [(AMPOnboardingMultiFeatureHeaderView *)&v14 traitCollectionDidChange:a3];
  v4 = MEMORY[0x277D74310];
  v5 = *MEMORY[0x277D76A00];
  v6 = [(AMPOnboardingMultiFeatureHeaderView *)self traitCollection];
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

  v13 = [(AMPOnboardingMultiFeatureHeaderView *)self titleLabel];
  [v13 setFont:v12];

  [(AMPOnboardingMultiFeatureHeaderView *)self updateContentSize];
  [(AMPOnboardingMultiFeatureHeaderView *)self setNeedsLayout];
}

- (void)setContainerHeight:(double)a3
{
  if (vabdd_f64(a3, self->_containerHeight) > 2.22044605e-16)
  {
    self->_containerHeight = a3;
    [(AMPOnboardingMultiFeatureHeaderView *)self updateContentSize];

    [(AMPOnboardingMultiFeatureHeaderView *)self setNeedsLayout];
  }
}

- (void)setIsPresentedInFormSheet:(BOOL)a3
{
  if (self->_isPresentedInFormSheet != a3)
  {
    self->_isPresentedInFormSheet = a3;
    [(AMPOnboardingMultiFeatureHeaderView *)self updateContentSize];

    [(AMPOnboardingMultiFeatureHeaderView *)self setNeedsLayout];
  }
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = AMPOnboardingMultiFeatureHeaderView;
  [(AMPOnboardingMultiFeatureHeaderView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(AMPOnboardingMultiFeatureHeaderView *)self updateContentSize];
}

- (void)updateContentSize
{
  v48 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76A00]];
  v3 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D769C0]];
  [(AMPOnboardingMultiFeatureHeaderView *)self bounds];
  Width = CGRectGetWidth(v50);
  if ([(AMPOnboardingMultiFeatureHeaderView *)self isPresentedInFormSheet])
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 44.0;
  }

  if ([(AMPOnboardingMultiFeatureHeaderView *)self isPresentedInFormSheet])
  {
    v6 = 100.0;
  }

  else
  {
    [(AMPOnboardingMultiFeatureHeaderView *)self containerHeight];
    v6 = v7 * 0.045;
  }

  v8 = [(AMPOnboardingMultiFeatureHeaderView *)self traitCollection];
  [v48 scaledValueForValue:v8 compatibleWithTraitCollection:v6];
  v10 = v9;

  if ([(AMPOnboardingMultiFeatureHeaderView *)self isPresentedInFormSheet])
  {
    v11 = [(AMPOnboardingMultiFeatureHeaderView *)self traitCollection];
    [v48 scaledValueForValue:v11 compatibleWithTraitCollection:50.0];
    v13 = v12;
  }

  else
  {
    [(AMPOnboardingMultiFeatureHeaderView *)self containerHeight];
    v13 = v14 * 0.055;
  }

  [(AMPOnboardingMultiFeatureHeaderView *)self safeAreaInsets];
  *&v15 = v10 + v5 + v15;
  v16 = floorf(*&v15);
  v17 = [(AMPOnboardingMultiFeatureHeaderView *)self titleLabel];
  [v17 _firstBaselineOffsetFromTop];
  v19 = v16 - v18 + 0.0;

  v20 = [(AMPOnboardingMultiFeatureHeaderView *)self titleLabel];
  [v20 sizeThatFits:{Width, 3.40282347e38}];
  v22 = v21;
  v23 = [(AMPOnboardingMultiFeatureHeaderView *)self titleLabel];
  [v23 _baselineOffsetFromBottom];
  *&v24 = v13 + v22 - v24;
  v25 = ceilf(*&v24);

  if ([(AMPOnboardingMultiFeatureHeaderView *)self isPresentedInFormSheet])
  {
    v26 = [(AMPOnboardingMultiFeatureHeaderView *)self traitCollection];
    [v3 scaledValueForValue:v26 compatibleWithTraitCollection:36.0];
    v28 = v27;
  }

  else
  {
    [(AMPOnboardingMultiFeatureHeaderView *)self containerHeight];
    v28 = v29 * 0.047;
  }

  v30 = v19 + v25;
  v31 = [(AMPOnboardingMultiFeatureHeaderView *)self featureViews];
  v32 = [v31 count];

  if (v32)
  {
    v33 = 0;
    do
    {
      v34 = [(AMPOnboardingMultiFeatureHeaderView *)self featureViews];
      v35 = [v34 objectAtIndexedSubscript:v33];

      [v35 sizeThatFits:{Width, 3.40282347e38}];
      v37 = v36;
      v38 = [(AMPOnboardingMultiFeatureHeaderView *)self featureViews];
      v39 = [v38 count] - 1;

      v40 = [(AMPOnboardingMultiFeatureHeaderView *)self featureViews];
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

      v45 = [(AMPOnboardingMultiFeatureHeaderView *)self featureViews];
      v46 = [v45 count];
    }

    while (v33 < v46);
  }

  v47 = v30;
  [(AMPOnboardingMultiFeatureHeaderView *)self setContentSize:Width, roundf(v47)];
}

@end