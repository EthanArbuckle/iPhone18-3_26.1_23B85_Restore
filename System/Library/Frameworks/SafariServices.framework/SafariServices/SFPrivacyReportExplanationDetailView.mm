@interface SFPrivacyReportExplanationDetailView
- (SFPrivacyReportExplanationDetailView)initWithFrame:(CGRect)frame;
- (void)setUsesInsetStyle:(BOOL)style;
@end

@implementation SFPrivacyReportExplanationDetailView

- (SFPrivacyReportExplanationDetailView)initWithFrame:(CGRect)frame
{
  v60[2] = *MEMORY[0x1E69E9840];
  v54.receiver = self;
  v54.super_class = SFPrivacyReportExplanationDetailView;
  v3 = [(SFPrivacyReportGridView *)&v54 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
    v5 = objc_alloc_init(SFPrivacyReportExplanationDetailItemView);
    v6 = _WBSLocalizedString();
    titleLabel = [(SFPrivacyReportExplanationDetailItemView *)v5 titleLabel];
    [titleLabel setText:v6];

    v8 = _WBSLocalizedString();
    bodyTextView = [(SFPrivacyReportExplanationDetailItemView *)v5 bodyTextView];
    [bodyTextView setText:v8];

    [v4 addObject:v5];
    safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
    LODWORD(v5) = [safari_browserDefaults safari_enableAdvancedPrivacyProtections:1];

    v11 = objc_alloc_init(SFPrivacyReportExplanationDetailItemView);
    v12 = _WBSLocalizedString();
    titleLabel2 = [(SFPrivacyReportExplanationDetailItemView *)v11 titleLabel];
    [titleLabel2 setText:v12];

    v14 = _WBSLocalizedString();
    bodyTextView2 = [(SFPrivacyReportExplanationDetailItemView *)v11 bodyTextView];
    [bodyTextView2 setText:v14];

    [v4 addObject:v11];
    if (v5)
    {
      v16 = objc_alloc_init(SFPrivacyReportExplanationDetailItemView);
      v17 = _WBSLocalizedString();
      titleLabel3 = [(SFPrivacyReportExplanationDetailItemView *)v16 titleLabel];
      [titleLabel3 setText:v17];

      _SFDeviceIsPad();
      v19 = _WBSLocalizedString();
      bodyTextView3 = [(SFPrivacyReportExplanationDetailItemView *)v16 bodyTextView];
      [bodyTextView3 setText:v19];

      [v4 addObject:v16];
      v21 = objc_alloc_init(SFPrivacyReportExplanationDetailItemView);
      v22 = _WBSLocalizedString();
      titleLabel4 = [(SFPrivacyReportExplanationDetailItemView *)v21 titleLabel];
      [titleLabel4 setText:v22];

      v24 = _WBSLocalizedString();
      bodyTextView4 = [(SFPrivacyReportExplanationDetailItemView *)v21 bodyTextView];
      [bodyTextView4 setText:v24];

      [v4 addObject:v21];
    }

    mEMORY[0x1E69C9808] = [MEMORY[0x1E69C9808] sharedManager];
    isPrivacyProxyActive = [mEMORY[0x1E69C9808] isPrivacyProxyActive];

    if (isPrivacyProxyActive)
    {
      mEMORY[0x1E69C9808]2 = [MEMORY[0x1E69C9808] sharedManager];
      isUserAccountInSubscriberTierForPrivacyProxy = [mEMORY[0x1E69C9808]2 isUserAccountInSubscriberTierForPrivacyProxy];

      mEMORY[0x1E69C9808]3 = [MEMORY[0x1E69C9808] sharedManager];
      isPrivacyProxyPaidTierUnavailableInUserCountry = [mEMORY[0x1E69C9808]3 isPrivacyProxyPaidTierUnavailableInUserCountry];

      v32 = objc_alloc_init(SFPrivacyReportExplanationDetailItemView);
      v53 = __PAIR64__(isUserAccountInSubscriberTierForPrivacyProxy, isPrivacyProxyPaidTierUnavailableInUserCountry);
      v33 = _WBSLocalizedString();
      titleLabel5 = [(SFPrivacyReportExplanationDetailItemView *)v32 titleLabel];
      [titleLabel5 setText:v33];

      v35 = _WBSLocalizedString();
      v36 = objc_alloc(MEMORY[0x1E696AD40]);
      v59[0] = *MEMORY[0x1E69DB648];
      bodyTextView5 = [(SFPrivacyReportExplanationDetailItemView *)v32 bodyTextView];
      font = [bodyTextView5 font];
      v60[0] = font;
      v59[1] = *MEMORY[0x1E69DB650];
      bodyTextView6 = [(SFPrivacyReportExplanationDetailItemView *)v32 bodyTextView];
      textColor = [bodyTextView6 textColor];
      v60[1] = textColor;
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:2];
      v42 = [v36 initWithString:v35 attributes:v41];

      if (BYTE4(v53) & 1 | ((v53 & 1) == 0))
      {
        v57 = *MEMORY[0x1E69DB670];
        v43 = [MEMORY[0x1E695DFF8] URLWithString:*MEMORY[0x1E69C9948]];
        v58 = v43;
        v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
        string = [v42 string];
        v46 = [string rangeOfString:@"{learn-more-link}"];
        [v42 addAttributes:v44 range:{v46, v47}];

        v48 = _WBSLocalizedString();
        v55 = @"{learn-more-link}";
        v56 = v48;
        v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
        [v42 safari_replaceCharactersWithStringBindings:v49];
      }

      bodyTextView7 = [(SFPrivacyReportExplanationDetailItemView *)v32 bodyTextView];
      [bodyTextView7 setAttributedText:v42];

      [v4 addObject:v32];
    }

    [(SFPrivacyReportGridView *)v3 setItemViews:v4];
    v51 = v3;
  }

  return v3;
}

- (void)setUsesInsetStyle:(BOOL)style
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_usesInsetStyle != style)
  {
    styleCopy = style;
    self->_usesInsetStyle = style;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    itemViews = [(SFPrivacyReportGridView *)self itemViews];
    v5 = [itemViews countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(itemViews);
          }

          [*(*(&v9 + 1) + 8 * i) setUsesInsetStyle:styleCopy];
        }

        v6 = [itemViews countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

@end