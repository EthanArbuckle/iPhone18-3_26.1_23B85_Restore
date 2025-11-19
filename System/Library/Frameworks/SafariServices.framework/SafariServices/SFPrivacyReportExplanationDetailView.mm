@interface SFPrivacyReportExplanationDetailView
- (SFPrivacyReportExplanationDetailView)initWithFrame:(CGRect)a3;
- (void)setUsesInsetStyle:(BOOL)a3;
@end

@implementation SFPrivacyReportExplanationDetailView

- (SFPrivacyReportExplanationDetailView)initWithFrame:(CGRect)a3
{
  v60[2] = *MEMORY[0x1E69E9840];
  v54.receiver = self;
  v54.super_class = SFPrivacyReportExplanationDetailView;
  v3 = [(SFPrivacyReportGridView *)&v54 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
    v5 = objc_alloc_init(SFPrivacyReportExplanationDetailItemView);
    v6 = _WBSLocalizedString();
    v7 = [(SFPrivacyReportExplanationDetailItemView *)v5 titleLabel];
    [v7 setText:v6];

    v8 = _WBSLocalizedString();
    v9 = [(SFPrivacyReportExplanationDetailItemView *)v5 bodyTextView];
    [v9 setText:v8];

    [v4 addObject:v5];
    v10 = [MEMORY[0x1E695E000] safari_browserDefaults];
    LODWORD(v5) = [v10 safari_enableAdvancedPrivacyProtections:1];

    v11 = objc_alloc_init(SFPrivacyReportExplanationDetailItemView);
    v12 = _WBSLocalizedString();
    v13 = [(SFPrivacyReportExplanationDetailItemView *)v11 titleLabel];
    [v13 setText:v12];

    v14 = _WBSLocalizedString();
    v15 = [(SFPrivacyReportExplanationDetailItemView *)v11 bodyTextView];
    [v15 setText:v14];

    [v4 addObject:v11];
    if (v5)
    {
      v16 = objc_alloc_init(SFPrivacyReportExplanationDetailItemView);
      v17 = _WBSLocalizedString();
      v18 = [(SFPrivacyReportExplanationDetailItemView *)v16 titleLabel];
      [v18 setText:v17];

      _SFDeviceIsPad();
      v19 = _WBSLocalizedString();
      v20 = [(SFPrivacyReportExplanationDetailItemView *)v16 bodyTextView];
      [v20 setText:v19];

      [v4 addObject:v16];
      v21 = objc_alloc_init(SFPrivacyReportExplanationDetailItemView);
      v22 = _WBSLocalizedString();
      v23 = [(SFPrivacyReportExplanationDetailItemView *)v21 titleLabel];
      [v23 setText:v22];

      v24 = _WBSLocalizedString();
      v25 = [(SFPrivacyReportExplanationDetailItemView *)v21 bodyTextView];
      [v25 setText:v24];

      [v4 addObject:v21];
    }

    v26 = [MEMORY[0x1E69C9808] sharedManager];
    v27 = [v26 isPrivacyProxyActive];

    if (v27)
    {
      v28 = [MEMORY[0x1E69C9808] sharedManager];
      v29 = [v28 isUserAccountInSubscriberTierForPrivacyProxy];

      v30 = [MEMORY[0x1E69C9808] sharedManager];
      v31 = [v30 isPrivacyProxyPaidTierUnavailableInUserCountry];

      v32 = objc_alloc_init(SFPrivacyReportExplanationDetailItemView);
      v53 = __PAIR64__(v29, v31);
      v33 = _WBSLocalizedString();
      v34 = [(SFPrivacyReportExplanationDetailItemView *)v32 titleLabel];
      [v34 setText:v33];

      v35 = _WBSLocalizedString();
      v36 = objc_alloc(MEMORY[0x1E696AD40]);
      v59[0] = *MEMORY[0x1E69DB648];
      v37 = [(SFPrivacyReportExplanationDetailItemView *)v32 bodyTextView];
      v38 = [v37 font];
      v60[0] = v38;
      v59[1] = *MEMORY[0x1E69DB650];
      v39 = [(SFPrivacyReportExplanationDetailItemView *)v32 bodyTextView];
      v40 = [v39 textColor];
      v60[1] = v40;
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:2];
      v42 = [v36 initWithString:v35 attributes:v41];

      if (BYTE4(v53) & 1 | ((v53 & 1) == 0))
      {
        v57 = *MEMORY[0x1E69DB670];
        v43 = [MEMORY[0x1E695DFF8] URLWithString:*MEMORY[0x1E69C9948]];
        v58 = v43;
        v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
        v45 = [v42 string];
        v46 = [v45 rangeOfString:@"{learn-more-link}"];
        [v42 addAttributes:v44 range:{v46, v47}];

        v48 = _WBSLocalizedString();
        v55 = @"{learn-more-link}";
        v56 = v48;
        v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
        [v42 safari_replaceCharactersWithStringBindings:v49];
      }

      v50 = [(SFPrivacyReportExplanationDetailItemView *)v32 bodyTextView];
      [v50 setAttributedText:v42];

      [v4 addObject:v32];
    }

    [(SFPrivacyReportGridView *)v3 setItemViews:v4];
    v51 = v3;
  }

  return v3;
}

- (void)setUsesInsetStyle:(BOOL)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_usesInsetStyle != a3)
  {
    v3 = a3;
    self->_usesInsetStyle = a3;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [(SFPrivacyReportGridView *)self itemViews];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * i) setUsesInsetStyle:v3];
        }

        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

@end