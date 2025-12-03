@interface LPCollaborationFooterView
- (CGSize)_layoutFooterForSize:(CGSize)size applyingLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (LPCollaborationFooterView)initWithHost:(id)host properties:(id)properties style:(id)style;
- (UIEdgeInsets)additionalPadding;
- (void)_footerTapRecognized:(id)recognized;
- (void)layoutComponentView;
- (void)updateIndicator;
@end

@implementation LPCollaborationFooterView

- (LPCollaborationFooterView)initWithHost:(id)host properties:(id)properties style:(id)style
{
  hostCopy = host;
  propertiesCopy = properties;
  styleCopy = style;
  v71.receiver = self;
  v71.super_class = LPCollaborationFooterView;
  v11 = [(LPComponentView *)&v71 initWithHost:hostCopy];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_style, style);
    action = [propertiesCopy action];
    action = v12->_action;
    v12->_action = action;

    v66 = hostCopy;
    v67 = styleCopy;
    title = [propertiesCopy title];
    v65 = title;
    if (title)
    {
      v16 = objc_alloc_init(MEMORY[0x1E696AD40]);
      glyphAttachmentImage = [propertiesCopy glyphAttachmentImage];

      if (glyphAttachmentImage)
      {
        v18 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
        glyphAttachmentImage2 = [propertiesCopy glyphAttachmentImage];
        v20 = [(LPCollaborationFooterView *)v12 _resolvedGlyphAttachmentImageFromImage:glyphAttachmentImage2];
        [v18 setImage:v20];

        v21 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v18];
        [v16 appendAttributedString:v21];

        v22 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
        [v16 appendAttributedString:v22];

        title = v65;
      }

      v23 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:title];
      [v16 appendAttributedString:v23];

      options = [styleCopy options];
      if ([styleCopy useInlineIndicator] && v12->_action)
      {
        v64 = [options copy];

        v25 = objc_alloc_init(LPGlyphStyle);
        v26 = [MEMORY[0x1E69DCAD8] _lp_configurationWithTextStyle:*MEMORY[0x1E69DDD28] weight:7 scale:1];
        v27 = +[LPResources chevron];
        platformImage = [v27 platformImage];
        v29 = [platformImage _lp_imageByApplyingSymbolConfiguration:v26];

        title = v65;
        v30 = [[LPImage alloc] initWithPlatformImage:v29];
        [(LPGlyphStyle *)v25 setImage:v30];

        tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
        [(LPGlyphStyle *)v25 setColor:tertiaryLabelColor];

        [v64 setTrailingGlyph:v25];
        options = v64;
        hostCopy = v66;
        styleCopy = v67;
      }

      v32 = [[LPTextView alloc] initWithHost:hostCopy text:v16 style:options];
      optionsView = v12->_optionsView;
      v12->_optionsView = v32;

      [(LPCollaborationFooterView *)v12 addSubview:v12->_optionsView];
    }

    subtitle = [propertiesCopy subtitle];
    if (subtitle || ([propertiesCopy initiatorNameComponents], (subtitle = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      initiatorName = [propertiesCopy initiatorName];

      if (!initiatorName)
      {
        goto LABEL_19;
      }
    }

    subtitle2 = [propertiesCopy subtitle];
    v36 = subtitle2;
    if (subtitle2)
    {
      initiatorName2 = subtitle2;
    }

    else
    {
      initiatorName2 = [propertiesCopy initiatorName];
    }

    v39 = initiatorName2;

    initiatorNameComponents = [propertiesCopy initiatorNameComponents];
    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = __59__LPCollaborationFooterView_initWithHost_properties_style___block_invoke;
    v68[3] = &unk_1E7A35A40;
    v41 = initiatorNameComponents;
    v69 = v41;
    v42 = v39;
    v70 = v42;
    v43 = __59__LPCollaborationFooterView_initWithHost_properties_style___block_invoke(v68);
    if (v43)
    {
      v44 = [LPTextView alloc];
      v45 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v43];
      handle = [v67 handle];
      v47 = [(LPTextView *)v44 initWithHost:v66 text:v45 style:handle];
      subtitleView = v12->_subtitleView;
      v12->_subtitleView = v47;

      [(LPCollaborationFooterView *)v12 addSubview:v12->_subtitleView];
    }

    hostCopy = v66;
    styleCopy = v67;
    title = v65;
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

        cornerRadius = [(LPCollaborationFooterStyle *)v12->_style cornerRadius];

        if (cornerRadius)
        {
          cornerRadius2 = [(LPCollaborationFooterStyle *)v12->_style cornerRadius];
          [cornerRadius2 value];
          [(UIView *)v12 _lp_setCornerRadius:?];
        }

        backgroundColor = [(LPCollaborationFooterStyle *)v12->_style backgroundColor];

        if (backgroundColor)
        {
          backgroundColor2 = [(LPCollaborationFooterStyle *)v12->_style backgroundColor];
          [(UIView *)v12 _lp_setBackgroundColor:backgroundColor2];
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

    if (([styleCopy useInlineIndicator] & 1) == 0 && v12->_action)
    {
      v50 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      indicatorView = v12->_indicatorView;
      v12->_indicatorView = v50;

      [(LPCollaborationFooterView *)v12 updateIndicator];
      v52 = v12->_indicatorView;
      tertiaryLabelColor2 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
      [(UIImageView *)v52 _lp_setTintColor:tertiaryLabelColor2];

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

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(LPCollaborationFooterView *)self _layoutFooterForSize:0 applyingLayout:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutFooterForSize:(CGSize)size applyingLayout:(BOOL)layout
{
  layoutCopy = layout;
  height = size.height;
  width = size.width;
  padding = [(LPCollaborationFooterStyle *)self->_style padding];
  [padding asInsetsForLTR:{-[UIView _lp_isLTR](self, "_lp_isLTR")}];
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
    indicatorSpacing = [(LPCollaborationFooterStyle *)self->_style indicatorSpacing];
    [indicatorSpacing value];
    v20 = v19;

    indicatorView = self->_indicatorView;
  }

  else
  {
    indicatorView = 0;
    v20 = 0.0;
  }

  image = [(UIImageView *)indicatorView image];
  [image size];
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
    separatorMargin = [(LPCollaborationFooterStyle *)self->_style separatorMargin];
    bottom = [separatorMargin bottom];
    [bottom value];
    v33 = v36;
  }

  v37 = v49 + bottom;
  v38 = v50 + top + v33;
  if (layoutCopy)
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

    window = [(LPCollaborationFooterView *)self window];

    if (window)
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

- (void)_footerTapRecognized:(id)recognized
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