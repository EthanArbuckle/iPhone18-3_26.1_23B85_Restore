@interface AMSUIBubbleTipViewController
- (AMSUIBubbleTipViewController)initWithRequest:(id)a3;
- (AMSUIBubbleTipViewController)initWithRequest:(id)a3 bag:(id)a4 account:(id)a5;
- (CGPoint)anchorPoint;
- (CGSize)preferredContentSize;
- (id)_defaultPreferredImageSymbolConfiguration;
- (id)_effectiveImageSymbolConfiguration;
- (id)_messageFontCompatibleWith:(id)a3;
- (id)_messageTextColor;
- (id)_titleFontCompatibleWith:(id)a3;
- (id)_titleTextColor;
- (int64_t)_iconAnimationPlayCount;
- (int64_t)_primaryImageRenderingMode;
- (unint64_t)_messageStyle;
- (unint64_t)directionForAMSUIPopoverArrowDirection:(unint64_t)a3;
- (void)_commitAppearance;
- (void)_preferredContentSizeCategoryDidChange:(id)a3;
- (void)_setDialogRequest:(id)a3;
- (void)_transferBackgroundColorForPopover;
- (void)_updateArrowProperties;
- (void)_updateSelfSizedContentSize;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setInlineAnchorInfo:(id)a3;
- (void)setModalPresentationStyle:(int64_t)a3;
- (void)setPreferredAppearance:(id)a3;
- (void)setPreferredContentSize:(CGSize)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation AMSUIBubbleTipViewController

- (AMSUIBubbleTipViewController)initWithRequest:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = AMSUIBubbleTipViewController;
  v5 = [(AMSUIBaseMessageViewController *)&v13 initWithRequest:v4];
  if (v5)
  {
    v6 = objc_alloc_init(AMSUIBubbleTipAppearance);
    preferredAppearance = v5->_preferredAppearance;
    v5->_preferredAppearance = v6;

    v8 = [AMSUIBubbleTipAppearance alloc];
    v9 = [v4 appearanceInfo];
    v10 = [(AMSUIBubbleTipAppearance *)v8 initWithDictionary:v9];
    requestAppearance = v5->_requestAppearance;
    v5->_requestAppearance = v10;

    v5->_isSelfSizing = 1;
    [(AMSUIBubbleTipViewController *)v5 _startObservations];
  }

  return v5;
}

- (AMSUIBubbleTipViewController)initWithRequest:(id)a3 bag:(id)a4 account:(id)a5
{
  v6.receiver = self;
  v6.super_class = AMSUIBubbleTipViewController;
  return [(AMSUIBaseMessageViewController *)&v6 initWithRequest:a3 bag:a4 account:a5];
}

- (void)dealloc
{
  [(AMSUIBubbleTipViewController *)self _endObservations];
  v3.receiver = self;
  v3.super_class = AMSUIBubbleTipViewController;
  [(AMSUIBubbleTipViewController *)&v3 dealloc];
}

- (void)setModalPresentationStyle:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = AMSUIBubbleTipViewController;
  [(AMSUIBubbleTipViewController *)&v6 setModalPresentationStyle:?];
  if (a3 == 7)
  {
    v5 = [(AMSUIBubbleTipViewController *)self popoverPresentationController];
    [v5 _setPrefersZoomTransitions:0];
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = AMSUIBubbleTipViewController;
  [(AMSUIBubbleTipViewController *)&v3 viewDidLayoutSubviews];
  [(AMSUIBubbleTipViewController *)self _updateArrowProperties];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = AMSUIBubbleTipViewController;
  v7 = a4;
  [(AMSUIBubbleTipViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__AMSUIBubbleTipViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E7F247A8;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (void)_preferredContentSizeCategoryDidChange:(id)a3
{
  [(AMSUIBaseMessageViewController *)self _updateTextWithAttributes:a3];
  [(AMSUIBubbleTipViewController *)self updateTraitsIfNeeded];

  [(AMSUIBubbleTipViewController *)self _updateSelfSizedContentSize];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a4 == self)
  {
    if ([a3 isEqualToString:@"modalPresentationStyle"])
    {
      v7 = [(AMSUIBubbleTipViewController *)self _messageStyle];
      v8 = [(AMSUIBubbleTipViewController *)self viewIfLoaded];
      if (v8)
      {
        v9 = v8;
        v10 = [(AMSUIBaseMessageViewController *)self _messageView];
        v11 = [v10 style];

        if (v11 != v7)
        {
          v12 = [(AMSUIBaseMessageViewController *)self _messageView];
          [v12 setStyle:v7];

          v13 = [(AMSUIBaseMessageViewController *)self _messageView];
          [v13 setNeedsLayout];
        }
      }
    }
  }
}

- (void)_setDialogRequest:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = AMSUIBubbleTipViewController;
  [(AMSUIBaseMessageViewController *)&v23 _setDialogRequest:v4];
  v5 = [(AMSUIBaseMessageViewController *)self _messageView];
  v6 = [v4 buttonActions];
  v7 = [(AMSUIBaseMessageViewController *)self dialogRequest];
  if ([v7 style] == 8)
  {
    v8 = [v6 count];

    if (v8 < 2)
    {
      goto LABEL_17;
    }

    v7 = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = v6;
    v9 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
    v10 = v6;
    if (v9)
    {
      v11 = v9;
      v12 = 0;
      v13 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v6);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          v16 = [v15 style];
          if (((v16 != 2) & v12) != 0)
          {
            v12 = 1;
          }

          else
          {
            v12 |= v16 != 2;
            [v7 addObject:v15];
          }
        }

        v11 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v11);

      if ((v12 & 1) == 0)
      {
        goto LABEL_16;
      }

      v10 = v7;
    }

    v6 = v10;
  }

LABEL_16:

LABEL_17:
  v17 = [v4 defaultAction];
  if (v17)
  {
    [v5 setBodyDialogAction:v17 target:self action:sel__didTapActionButton_];
  }

  if (v6 && [v6 count])
  {
    [v5 setButtonsForDialogActions:v6 target:self action:sel__didTapActionButton_];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (id)_messageFontCompatibleWith:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIBubbleTipViewController *)self requestAppearance];
  v6 = [v5 _messageFontDictionary];
  v7 = [AMSUIFontParser fontWithDictionary:v6 compatibleWith:v4];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [(AMSUIBubbleTipViewController *)self requestAppearance];
    v9 = [v10 messageFont];
  }

  if (!v9)
  {
    v11 = [(AMSUIBubbleTipViewController *)self preferredAppearance];
    v12 = [v11 _messageFontDictionary];
    v13 = [AMSUIFontParser fontWithDictionary:v12 compatibleWith:v4];
    v14 = v13;
    if (v13)
    {
      v9 = v13;
    }

    else
    {
      v15 = [(AMSUIBubbleTipViewController *)self preferredAppearance];
      v9 = [v15 messageFont];
    }
  }

  return v9;
}

- (id)_messageTextColor
{
  v3 = [(AMSUIBubbleTipViewController *)self requestAppearance];
  v4 = [v3 messageTextColor];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(AMSUIBubbleTipViewController *)self preferredAppearance];
    v6 = [v7 messageTextColor];
  }

  return v6;
}

- (id)_titleFontCompatibleWith:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIBubbleTipViewController *)self requestAppearance];
  v6 = [v5 _titleFontDictionary];
  v7 = [AMSUIFontParser fontWithDictionary:v6 compatibleWith:v4];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [(AMSUIBubbleTipViewController *)self requestAppearance];
    v9 = [v10 titleFont];
  }

  if (!v9)
  {
    v11 = [(AMSUIBubbleTipViewController *)self preferredAppearance];
    v12 = [v11 _titleFontDictionary];
    v13 = [AMSUIFontParser fontWithDictionary:v12 compatibleWith:v4];
    v14 = v13;
    if (v13)
    {
      v9 = v13;
    }

    else
    {
      v15 = [(AMSUIBubbleTipViewController *)self preferredAppearance];
      v9 = [v15 titleFont];
    }
  }

  return v9;
}

- (id)_titleTextColor
{
  v3 = [(AMSUIBubbleTipViewController *)self requestAppearance];
  v4 = [v3 titleTextColor];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(AMSUIBubbleTipViewController *)self preferredAppearance];
    v6 = [v7 titleTextColor];
  }

  return v6;
}

- (void)_commitAppearance
{
  v77 = *MEMORY[0x1E69E9840];
  v75.receiver = self;
  v75.super_class = AMSUIBubbleTipViewController;
  [(AMSUIBaseMessageViewController *)&v75 _commitAppearance];
  v4 = [(AMSUIBubbleTipViewController *)self viewIfLoaded];

  if (!v4)
  {
    goto LABEL_65;
  }

  v5 = [(AMSUIBaseMessageViewController *)self _messageView];
  v6 = [v5 accessoryView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(AMSUIBubbleTipViewController *)self requestAppearance];
  v9 = [v8 accessoryButtonBackgroundColor];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = [(AMSUIBubbleTipViewController *)self preferredAppearance];
    v11 = [v12 accessoryButtonBackgroundColor];
  }

  if (v7 && v11)
  {
    [v7 setPreferredBackgroundColor:v11];
  }

  v69 = v11;
  v13 = [(AMSUIBubbleTipViewController *)self requestAppearance];
  v14 = [v13 accessoryButtonColor];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v17 = [(AMSUIBubbleTipViewController *)self preferredAppearance];
    v16 = [v17 accessoryButtonColor];
  }

  if (v7 && v16)
  {
    [v7 setPreferredForegroundColor:v16];
  }

  v18 = [(AMSUIBubbleTipViewController *)self requestAppearance];
  v19 = [v18 accessoryButtonFont];
  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v21 = [(AMSUIBubbleTipViewController *)self preferredAppearance];
    v20 = [v21 accessoryButtonFont];

    if (!v20)
    {
      goto LABEL_21;
    }
  }

  [v7 setPreferredFont:v20];

LABEL_21:
  v22 = [(AMSUIBubbleTipViewController *)self requestAppearance];
  v23 = [v22 imageStyle];

  if (v23)
  {
    [(AMSUIBubbleTipViewController *)self requestAppearance];
  }

  else
  {
    [(AMSUIBubbleTipViewController *)self preferredAppearance];
  }
  v24 = ;
  [v5 setImageStyle:{objc_msgSend(v24, "imageStyle")}];

  v25 = [(AMSUIBubbleTipViewController *)self requestAppearance];
  v26 = [v25 backgroundColor];
  v68 = v16;
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    v28 = [(AMSUIBubbleTipViewController *)self preferredAppearance];
    v27 = [v28 backgroundColor];

    if (!v27)
    {
      goto LABEL_28;
    }
  }

  [v5 set_ams_backgroundColor:v27];
  [(AMSUIBubbleTipViewController *)self _transferBackgroundColorForPopover];

LABEL_28:
  v29 = [(AMSUIBubbleTipViewController *)self requestAppearance];
  v30 = [v29 backgroundImage];
  v31 = v30;
  if (!v30)
  {
    v2 = [(AMSUIBubbleTipViewController *)self preferredAppearance];
    v31 = [v2 backgroundImage];
  }

  v32 = [v5 backgroundImageView];
  [v32 setImage:v31];

  if (!v30)
  {
  }

  v33 = [(AMSUIBubbleTipViewController *)self requestAppearance];
  v34 = [v33 footerButtonBackgroundColor];
  v35 = v34;
  if (v34)
  {
    v36 = v34;
  }

  else
  {
    v37 = [(AMSUIBubbleTipViewController *)self preferredAppearance];
    v36 = [v37 footerButtonBackgroundColor];
  }

  v38 = [(AMSUIBubbleTipViewController *)self requestAppearance];
  v39 = [v38 footerButtonColor];
  v40 = v39;
  if (v39)
  {
    v41 = v39;
  }

  else
  {
    v42 = [(AMSUIBubbleTipViewController *)self preferredAppearance];
    v41 = [v42 footerButtonColor];
  }

  v70 = v7;

  v43 = [(AMSUIBubbleTipViewController *)self requestAppearance];
  v44 = [v43 footerButtonFont];
  v45 = v44;
  if (v44)
  {
    v46 = v44;
  }

  else
  {
    v47 = [(AMSUIBubbleTipViewController *)self preferredAppearance];
    v46 = [v47 footerButtonFont];
  }

  v48 = [v5 footerButtons];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v49 = [v48 countByEnumeratingWithState:&v71 objects:v76 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v72;
    do
    {
      for (i = 0; i != v50; ++i)
      {
        if (*v72 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = *(*(&v71 + 1) + 8 * i);
        if (v41)
        {
          [*(*(&v71 + 1) + 8 * i) setPreferredForegroundColor:v41];
        }

        if (v46)
        {
          [v53 setPreferredFont:v46];
        }

        if (v36)
        {
          [v53 setPreferredBackgroundColor:v36];
        }
      }

      v50 = [v48 countByEnumeratingWithState:&v71 objects:v76 count:16];
    }

    while (v50);
  }

  v54 = [(AMSUIBubbleTipViewController *)self requestAppearance];
  v55 = [v54 imageTintColor];
  if (v55)
  {
    v56 = v55;

    v57 = v70;
  }

  else
  {
    v58 = [(AMSUIBubbleTipViewController *)self preferredAppearance];
    v56 = [v58 imageTintColor];

    v57 = v70;
    if (!v56)
    {
      goto LABEL_58;
    }
  }

  [v5 setIconColor:v56];

LABEL_58:
  v59 = [(AMSUIBubbleTipViewController *)self requestAppearance];
  v60 = [v59 separatorColor];
  if (v60)
  {
    v61 = v60;

LABEL_61:
    [v5 setSeparatorColor:v61];

    goto LABEL_62;
  }

  v62 = [(AMSUIBubbleTipViewController *)self preferredAppearance];
  v61 = [v62 separatorColor];

  if (v61)
  {
    goto LABEL_61;
  }

LABEL_62:
  v63 = [(AMSUIBaseMessageViewController *)self _loadedImage];

  if (v63)
  {
    v64 = [(AMSUIBaseMessageViewController *)self _loadedImage];
    v65 = [v64 ams_imageWithRenderingMode:{-[AMSUIBubbleTipViewController _primaryImageRenderingMode](self, "_primaryImageRenderingMode")}];
    v66 = [v5 imageView];
    [v66 setImage:v65];
  }

  [(AMSUIBaseMessageViewController *)self _updateTextWithAttributes];

LABEL_65:
  v67 = *MEMORY[0x1E69E9840];
}

- (unint64_t)directionForAMSUIPopoverArrowDirection:(unint64_t)a3
{
  if (a3 + 1 > 4)
  {
    return 1;
  }

  else
  {
    return qword_1BB1EF1B0[a3 + 1];
  }
}

- (void)_transferBackgroundColorForPopover
{
  if ([(AMSUIBubbleTipViewController *)self modalPresentationStyle]== 7)
  {
    v3 = [(AMSUIBubbleTipViewController *)self popoverPresentationController];

    if (v3)
    {
      v4 = [(AMSUIBaseMessageViewController *)self _messageView];
      v8 = [v4 backgroundColor];

      v5 = [(AMSUIBaseMessageViewController *)self _messageView];
      v6 = [MEMORY[0x1E69DC888] clearColor];
      [v5 set_ams_backgroundColor:v6];

      v7 = [(AMSUIBubbleTipViewController *)self popoverPresentationController];
      [v7 setBackgroundColor:v8];
    }
  }
}

- (void)_updateArrowProperties
{
  v3 = [(AMSUIBubbleTipViewController *)self inlineAnchorInfo];

  if (v3)
  {
    v4 = [(AMSUIBubbleTipViewController *)self inlineAnchorInfo];
    v5 = -[AMSUIBubbleTipViewController directionForAMSUIPopoverArrowDirection:](self, "directionForAMSUIPopoverArrowDirection:", [v4 arrowDirection]);

    if (v5 + 1 < 2)
    {
      return;
    }

    v6 = [(AMSUIBubbleTipViewController *)self inlineAnchorInfo];
    [v6 arrowOffset];
    v8 = v7;

    v9 = [(AMSUIBubbleTipViewController *)self inlineAnchorInfo];
    v10 = v9;
    if (v8 == 2.22507386e-308)
    {
      [v9 relativeArrowOffset];
      v17 = v16;

      if (v17 == 2.22507386e-308)
      {
        return;
      }

      v18 = [(AMSUIBubbleTipViewController *)self inlineAnchorInfo];
      [v18 relativeArrowOffset];
      v20 = v19;

      if (v5 - 1 < 2)
      {
        v10 = [(AMSUIBubbleTipViewController *)self view];
        [v10 frame];
        v12 = v20 * v27;
      }

      else
      {
        if (v5 != 4 && v5 != 8)
        {
          return;
        }

        v10 = [(AMSUIBubbleTipViewController *)self view];
        [v10 frame];
        v12 = v20 * v21;
      }
    }

    else
    {
      [v9 arrowOffset];
      v12 = v11;
    }

    if (v5 - 1 < 2)
    {
      v13 = [(AMSUIBubbleTipViewController *)self view];
      [v13 frame];
      v15 = v22;
    }

    else
    {
      if (v5 != 4 && v5 != 8)
      {
        return;
      }

      v13 = [(AMSUIBubbleTipViewController *)self view];
      [v13 frame];
      v15 = v14;
    }

    v23 = [(AMSUIBaseMessageViewController *)self _messageView];
    [v23 setupBubbleArrowMaskView];

    v24 = [(AMSUIBaseMessageViewController *)self _messageView];
    v25 = [v24 maskShapeView];
    [v25 setArrowOffset:v12 + v15 * -0.5];

    v28 = [(AMSUIBaseMessageViewController *)self _messageView];
    v26 = [v28 maskShapeView];
    [v26 setArrowDirection:v5];
  }

  else
  {
    v28 = [(AMSUIBaseMessageViewController *)self _messageView];
    [v28 removeBubbleArrowMaskView];
  }
}

- (void)_updateSelfSizedContentSize
{
  if ([(AMSUIBubbleTipViewController *)self modalPresentationStyle]== 7)
  {
    v3 = [(AMSUIBubbleTipViewController *)self popoverPresentationController];

    if (v3)
    {
      if ([(AMSUIBubbleTipViewController *)self isSelfSizing]|| ([(AMSUIBubbleTipViewController *)self viewIfLoaded], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
      {
        v5 = [(AMSUIBubbleTipViewController *)self presentingViewController];
        v6 = [v5 view];
        [v6 directionalLayoutMargins];
        v8 = v7;
        v10 = v9;

        v11 = [(AMSUIBubbleTipViewController *)self presentingViewController];
        v12 = [v11 view];
        [v12 frame];
        v14 = v13;

        v15 = fmin(v14 - (v8 + v10), 327.0);
        v16 = [(AMSUIBubbleTipViewController *)self presentingViewController];
        v17 = [v16 view];
        v18 = [v17 window];
        [v18 frame];
        v20 = v19 * 0.5;

        v21 = [(AMSUIBubbleTipViewController *)self view];
        [v21 setNeedsLayout];

        v22 = [(AMSUIBubbleTipViewController *)self view];
        [v22 sizeThatFits:{v15, v20}];
        v24 = v23;
        v26 = v25;

        [(AMSUIBubbleTipViewController *)self preferredContentSize];
        if (v28 != v24 || v27 != v26)
        {
          [(AMSUIBubbleTipViewController *)self setPreferredContentSize:v24, v26];

          [(AMSUIBubbleTipViewController *)self setIsSelfSizing:1];
        }
      }
    }
  }
}

- (int64_t)_iconAnimationPlayCount
{
  v3 = 1;
  v4 = [(AMSUIBubbleTipViewController *)self preferredAppearance];
  if (v4)
  {
    v5 = v4;
    v6 = [(AMSUIBubbleTipViewController *)self preferredAppearance];
    v7 = [v6 iconAnimationPlayCount];

    if (v7 != -90)
    {
      v8 = [(AMSUIBubbleTipViewController *)self preferredAppearance];
      v3 = [v8 iconAnimationPlayCount];
    }
  }

  v9 = [(AMSUIBubbleTipViewController *)self requestAppearance];
  if (v9)
  {
    v10 = v9;
    v11 = [(AMSUIBubbleTipViewController *)self requestAppearance];
    v12 = [v11 iconAnimationPlayCount];

    if (v12 != -90)
    {
      v13 = [(AMSUIBubbleTipViewController *)self requestAppearance];
      v3 = [v13 iconAnimationPlayCount];
    }
  }

  return v3;
}

- (id)_defaultPreferredImageSymbolConfiguration
{
  v2 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDD58] scale:2];
  v3 = [MEMORY[0x1E69DCAD8] configurationWithWeight:6];
  v4 = [v2 configurationByApplyingConfiguration:v3];

  return v4;
}

- (id)_effectiveImageSymbolConfiguration
{
  v3 = [(AMSUIBubbleTipViewController *)self _defaultPreferredImageSymbolConfiguration];
  v4 = [(AMSUIBubbleTipViewController *)self preferredAppearance];
  v5 = [v4 imageSymbolConfiguration];
  v6 = [v3 configurationByApplyingConfiguration:v5];
  v7 = [(AMSUIBubbleTipViewController *)self requestAppearance];
  v8 = [v7 imageSymbolConfiguration];
  v9 = [v6 configurationByApplyingConfiguration:v8];

  return v9;
}

- (unint64_t)_messageStyle
{
  v3 = [(AMSUIBaseMessageViewController *)self dialogRequest];
  v4 = [v3 style];

  if (v4 == 8)
  {
    v5 = 6;
  }

  else
  {
    v5 = 3;
  }

  if ([(AMSUIBubbleTipViewController *)self modalPresentationStyle]== 7)
  {
    return 2;
  }

  else
  {
    return v5;
  }
}

- (void)setInlineAnchorInfo:(id)a3
{
  v7 = a3;
  v5 = [(AMSUIBubbleTipViewController *)self traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (v6 != 6)
  {
    objc_storeStrong(&self->_inlineAnchorInfo, a3);
    [(AMSUIBubbleTipViewController *)self _updateArrowProperties];
  }
}

- (void)setPreferredAppearance:(id)a3
{
  objc_storeStrong(&self->_preferredAppearance, a3);

  [(AMSUIBubbleTipViewController *)self _commitAppearance];
}

- (CGSize)preferredContentSize
{
  v4.receiver = self;
  v4.super_class = AMSUIBubbleTipViewController;
  [(AMSUIBubbleTipViewController *)&v4 preferredContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(AMSUIBubbleTipViewController *)self setIsSelfSizing:0];
  v6.receiver = self;
  v6.super_class = AMSUIBubbleTipViewController;
  [(AMSUIBubbleTipViewController *)&v6 setPreferredContentSize:width, height];
}

- (int64_t)_primaryImageRenderingMode
{
  v3 = [(AMSUIBubbleTipViewController *)self preferredAppearance];
  v4 = [v3 primaryImageRenderingMode];

  v5 = [(AMSUIBubbleTipViewController *)self requestAppearance];
  v6 = [v5 primaryImageRenderingMode];

  if (v6)
  {
    v7 = [(AMSUIBubbleTipViewController *)self requestAppearance];
    v4 = [v7 primaryImageRenderingMode];
  }

  return v4;
}

- (CGPoint)anchorPoint
{
  objc_copyStruct(v4, &self->_anchorPoint, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

@end