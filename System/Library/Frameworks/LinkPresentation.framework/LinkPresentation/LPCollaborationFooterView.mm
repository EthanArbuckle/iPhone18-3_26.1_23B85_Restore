@interface LPCollaborationFooterView
- (CGSize)_layoutFooterForSize:(CGSize)a3 applyingLayout:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (LPCollaborationFooterView)initWithHost:(id)a3 properties:(id)a4 style:(id)a5;
- (UIEdgeInsets)additionalPadding;
- (void)_footerTapRecognized:(id)a3;
- (void)layoutComponentView;
- (void)updateIndicator;
@end

@implementation LPCollaborationFooterView

- (LPCollaborationFooterView)initWithHost:(id)a3 properties:(id)a4 style:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v71.receiver = self;
  v71.super_class = LPCollaborationFooterView;
  v11 = [(LPComponentView *)&v71 initWithHost:v8];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_style, a5);
    v13 = [v9 action];
    action = v12->_action;
    v12->_action = v13;

    v66 = v8;
    v67 = v10;
    v15 = [v9 title];
    v65 = v15;
    if (v15)
    {
      v16 = objc_alloc_init(MEMORY[0x1E696AD40]);
      v17 = [v9 glyphAttachmentImage];

      if (v17)
      {
        v18 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
        v19 = [v9 glyphAttachmentImage];
        v20 = [(LPCollaborationFooterView *)v12 _resolvedGlyphAttachmentImageFromImage:v19];
        [v18 setImage:v20];

        v21 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v18];
        [v16 appendAttributedString:v21];

        v22 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
        [v16 appendAttributedString:v22];

        v15 = v65;
      }

      v23 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v15];
      [v16 appendAttributedString:v23];

      v24 = [v10 options];
      if ([v10 useInlineIndicator] && v12->_action)
      {
        v64 = [v24 copy];

        v25 = objc_alloc_init(LPGlyphStyle);
        v26 = [MEMORY[0x1E69DCAD8] _lp_configurationWithTextStyle:*MEMORY[0x1E69DDD28] weight:7 scale:1];
        v27 = +[LPResources chevron];
        v28 = [v27 platformImage];
        v29 = [v28 _lp_imageByApplyingSymbolConfiguration:v26];

        v15 = v65;
        v30 = [[LPImage alloc] initWithPlatformImage:v29];
        [(LPGlyphStyle *)v25 setImage:v30];

        v31 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
        [(LPGlyphStyle *)v25 setColor:v31];

        [v64 setTrailingGlyph:v25];
        v24 = v64;
        v8 = v66;
        v10 = v67;
      }

      v32 = [[LPTextView alloc] initWithHost:v8 text:v16 style:v24];
      optionsView = v12->_optionsView;
      v12->_optionsView = v32;

      [(LPCollaborationFooterView *)v12 addSubview:v12->_optionsView];
    }

    v34 = [v9 subtitle];
    if (v34 || ([v9 initiatorNameComponents], (v34 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v63 = [v9 initiatorName];

      if (!v63)
      {
        goto LABEL_19;
      }
    }

    v35 = [v9 subtitle];
    v36 = v35;
    if (v35)
    {
      v37 = v35;
    }

    else
    {
      v37 = [v9 initiatorName];
    }

    v39 = v37;

    v40 = [v9 initiatorNameComponents];
    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = __59__LPCollaborationFooterView_initWithHost_properties_style___block_invoke;
    v68[3] = &unk_1E7A35A40;
    v41 = v40;
    v69 = v41;
    v42 = v39;
    v70 = v42;
    v43 = __59__LPCollaborationFooterView_initWithHost_properties_style___block_invoke(v68);
    if (v43)
    {
      v44 = [LPTextView alloc];
      v45 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v43];
      v46 = [v67 handle];
      v47 = [(LPTextView *)v44 initWithHost:v66 text:v45 style:v46];
      subtitleView = v12->_subtitleView;
      v12->_subtitleView = v47;

      [(LPCollaborationFooterView *)v12 addSubview:v12->_subtitleView];
    }

    v8 = v66;
    v10 = v67;
    v15 = v65;
LABEL_19:
    v49 = v12->_optionsView;
    if (v12->_subtitleView)
    {
      if (!v49)
      {
LABEL_26:
        if ([(LPCollaborationFooterStyle *)v12->_style showSeparator])
        {
          v54 = [MEMORY[0x1E69DC888] _lp_colorWithDynamicProvider:&__block_literal_global_6 name:@"LPCollaborationFooterSeparatorColor"];
          v55 = [[LPBackgroundColorView alloc] initWithColor:v54];
          separatorView = v12->_separatorView;
          v12->_separatorView = &v55->super;

          [(LPCollaborationFooterView *)v12 addSubview:v12->_separatorView];
        }

        if (v12->_optionsView)
        {
          v57 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v12 action:sel__footerTapRecognized_];
          [(LPCollaborationFooterView *)v12 addGestureRecognizer:v57];
          [(UIView *)v12 _lp_setHoverEffectEnabled:1];
        }

        v58 = [(LPCollaborationFooterStyle *)v12->_style cornerRadius];

        if (v58)
        {
          v59 = [(LPCollaborationFooterStyle *)v12->_style cornerRadius];
          [v59 value];
          [(UIView *)v12 _lp_setCornerRadius:?];
        }

        v60 = [(LPCollaborationFooterStyle *)v12->_style backgroundColor];

        if (v60)
        {
          v61 = [(LPCollaborationFooterStyle *)v12->_style backgroundColor];
          [(UIView *)v12 _lp_setBackgroundColor:v61];
        }

        v38 = v12;
        goto LABEL_35;
      }
    }

    else if (!v49)
    {
      v38 = 0;
LABEL_35:

      goto LABEL_36;
    }

    if (([v10 useInlineIndicator] & 1) == 0 && v12->_action)
    {
      v50 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      indicatorView = v12->_indicatorView;
      v12->_indicatorView = v50;

      [(LPCollaborationFooterView *)v12 updateIndicator];
      v52 = v12->_indicatorView;
      v53 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
      [(UIImageView *)v52 _lp_setTintColor:v53];

      [(UIImageView *)v12->_indicatorView setContentMode:4];
      [(LPCollaborationFooterView *)v12 addSubview:v12->_indicatorView];
    }

    goto LABEL_26;
  }

  v38 = 0;
LABEL_36:

  return v38;
}

id __59__LPCollaborationFooterView_initWithHost_properties_style___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = objc_alloc_init(MEMORY[0x1E696ADF8]);
    v3 = [v2 stringFromPersonNameComponents:*(a1 + 32)];
    v4 = v3;
    if (*(a1 + 40))
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = LPLocalizedString(@"Share as %@ (%@)");
      v7 = [v5 localizedStringWithFormat:v6, v4, *(a1 + 40)];
    }

    else
    {
      v7 = v3;
    }
  }

  else
  {
    v7 = *(a1 + 40);
  }

  return v7;
}

id __59__LPCollaborationFooterView_initWithHost_properties_style___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 userInterfaceIdiom] == 6)
  {
    [MEMORY[0x1E69DC888] separatorColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] opaqueSeparatorColor];
  }
  v3 = ;

  return v3;
}

- (void)layoutComponentView
{
  [(LPCollaborationFooterView *)self bounds];

  [(LPCollaborationFooterView *)self _layoutFooterForSize:1 applyingLayout:v3, v4];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(LPCollaborationFooterView *)self _layoutFooterForSize:0 applyingLayout:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutFooterForSize:(CGSize)a3 applyingLayout:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
  v8 = [(LPCollaborationFooterStyle *)self->_style padding];
  [v8 asInsetsForLTR:{-[UIView _lp_isLTR](self, "_lp_isLTR")}];
  v10 = v9;
  v12 = v11;
  v49 = v14;
  v50 = v13;
  left = self->_additionalPadding.left;
  top = self->_additionalPadding.top;
  bottom = self->_additionalPadding.bottom;
  right = self->_additionalPadding.right;

  v47 = height;
  if (self->_indicatorView)
  {
    v18 = [(LPCollaborationFooterStyle *)self->_style indicatorSpacing];
    [v18 value];
    v20 = v19;

    indicatorView = self->_indicatorView;
  }

  else
  {
    indicatorView = 0;
    v20 = 0.0;
  }

  v22 = [(UIImageView *)indicatorView image];
  [v22 size];
  v24 = v23;
  v25 = v10 + left;
  v26 = v12 + right;

  v52 = v20;
  v27 = width - (v26 + v25 + v20 + v24);
  [(LPTextView *)self->_optionsView sizeThatFits:v27, 1.79769313e308];
  v54 = v28;
  v55 = v29;
  [(LPTextView *)self->_subtitleView sizeThatFits:v27, 1.79769313e308];
  v31 = v30;
  v53 = v32;
  v33 = 0.0;
  if ([(LPCollaborationFooterStyle *)self->_style showSeparator])
  {
    v34 = [(LPCollaborationFooterStyle *)self->_style separatorMargin];
    v35 = [v34 bottom];
    [v35 value];
    v33 = v36;
  }

  v37 = v49 + bottom;
  v38 = v50 + top + v33;
  if (v4)
  {
    v51 = v37;
    v39 = v47 - v38 - v37;
    if ([(UIView *)self _lp_isLTR])
    {
      [(UIImageView *)self->_indicatorView setFrame:width - v24 - v26, v38, v24, v39];
      [(LPTextView *)self->_optionsView setFrame:v25, v38, v54, v55];
      [(LPTextView *)self->_optionsView frame];
      MaxY = CGRectGetMaxY(v57);
      if (MaxY == 0.0)
      {
        v41 = v38;
      }

      else
      {
        v41 = MaxY;
      }

      v42 = v25;
    }

    else
    {
      [(UIImageView *)self->_indicatorView setFrame:v25, v38, v24, v39];
      v43 = v52 + v25 + v24;
      [(LPTextView *)self->_optionsView setFrame:v43 + v27 - v54, v38, v54, v55];
      v42 = v43 + v27 - v31;
      [(LPTextView *)self->_optionsView frame];
      v44 = CGRectGetMaxY(v58);
      if (v44 == 0.0)
      {
        v41 = v38;
      }

      else
      {
        v41 = v44;
      }
    }

    [(LPTextView *)self->_subtitleView setFrame:v42, v41, v31, v53];
    [(UIView *)self->_separatorView setFrame:v25, 0.0, width - v25 - v26, 0.5];
    v37 = v51;
  }

  v45 = v37 + v53 + v55 + v38;
  v46 = v24 + v52 + fmax(v54, v31);
  result.height = v45;
  result.width = v46;
  return result;
}

- (void)updateIndicator
{
  if (self->_indicatorView)
  {
    v3 = *MEMORY[0x1E69DDD28];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__LPCollaborationFooterView_updateIndicator__block_invoke;
    v9[3] = &unk_1E7A35A88;
    v9[4] = self;
    v4 = __44__LPCollaborationFooterView_updateIndicator__block_invoke(v9);
    v5 = [MEMORY[0x1E69DCAB8] _lp_systemImageNamed:v4];
    v6 = [MEMORY[0x1E69DCAD8] _lp_configurationWithTextStyle:v3 weight:7 scale:1];
    v7 = [v5 _lp_imageByApplyingSymbolConfiguration:v6];
    [(UIImageView *)self->_indicatorView setImage:v7];

    v8 = [(LPCollaborationFooterView *)self window];

    if (v8)
    {
      [(UIView *)self _lp_setNeedsLayout];
    }
  }
}

__CFString *__44__LPCollaborationFooterView_updateIndicator__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) host];
  v3 = [v2 showingDisclosureViewForComponentView:*(a1 + 32)];

  if (v3)
  {
    return @"chevron.down";
  }

  if ([*(a1 + 32) _lp_isLTR])
  {
    return @"chevron.right";
  }

  return @"chevron.left";
}

- (void)_footerTapRecognized:(id)a3
{
  action = self->_action;
  if (action)
  {
    action[2]();
  }
}

- (UIEdgeInsets)additionalPadding
{
  top = self->_additionalPadding.top;
  left = self->_additionalPadding.left;
  bottom = self->_additionalPadding.bottom;
  right = self->_additionalPadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end