@interface AMSUIMessageViewSolariumLayoutContext
- (AMSUIMessageView)messageView;
- (AMSUIMessageViewSolariumLayoutContext)initWithMessageView:(id)a3;
- (BOOL)_isSymbolImage;
- (BOOL)_isTopButtonLeading;
- (BOOL)_isVisionNative;
- (BOOL)_shouldTextViewTextFillUnderCloseButton;
- (BOOL)isAXSize;
- (BOOL)isBannerStyle;
- (BOOL)isBubbleTipStyle;
- (BOOL)isImageViewHidden;
- (BOOL)shouldUseStackedAXLayout;
- (CGPoint)imageOrigin;
- (CGPoint)textViewOrigin;
- (CGRect)_effectiveTextViewFrame;
- (CGRect)accessorySecondaryViewFrame;
- (CGRect)accessoryViewFrame;
- (CGRect)calculateHorizontalButtonContainerFrame:(id)a3 inParentFrame:(CGRect)a4;
- (CGRect)debugButtonFrame;
- (CGRect)footerContainerViewFrame;
- (CGRect)imageViewFrame;
- (CGRect)lastMessageViewFrame;
- (CGRect)mainContentFrame;
- (CGRect)maskViewFrame;
- (CGRect)textViewFrame;
- (CGRect)topAlignButtonLayoutFrame;
- (CGSize)_contentSizeThatFits:(CGRect)a3;
- (CGSize)_makeImageViewSize;
- (CGSize)contentSize;
- (CGSize)debugButtonSize;
- (CGSize)lastFittingSize;
- (CGSize)lastSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)textViewContentHuggingSize;
- (NSDirectionalEdgeInsets)contentLayoutMargins;
- (NSDirectionalEdgeInsets)footerLayoutMargins;
- (NSDirectionalEdgeInsets)topAlignButtonsLayoutMargins;
- (double)_footerButtonInterSpacing;
- (double)_footerButtonSpacing;
- (double)_footerMinimumHeight;
- (double)_imageLength;
- (double)_imageToLabelSpacing;
- (double)_interitemSpacing;
- (double)_maxFooterButtonWidthInFrame:(CGRect)a3;
- (double)_maxTextContainerWidth;
- (double)_scaledUIValueForValue:(double)a3;
- (double)accessorySpacing;
- (double)closeButtonHeight;
- (double)leadingContentTextBaseline;
- (double)totalFooterButtonHeight;
- (id)_calculateFooterButtonFrames:(id)a3 inFrame:(CGRect)a4;
- (id)bottomAlignButtons;
- (id)framesForButtons:(id)a3;
- (id)layoutHorizontalButtonsFrames:(id)a3;
- (id)topAlignButtonCandidates;
- (unint64_t)effectiveImageStyle;
- (unint64_t)indexForButton:(id)a3;
- (unint64_t)numberOfTextLines;
- (void)_updateWithRootFrame:(CGRect)a3;
- (void)calculateButtonSizes;
- (void)calculateImageViewFrameInParentFrame:(CGRect)a3;
- (void)calculateMainContentFrameRootFrame:(CGRect)a3;
- (void)calculateTextViewExclusionFrame;
- (void)calculateTextViewSizeInFrame:(CGRect)a3 dirty:(BOOL)a4;
- (void)invalidate;
- (void)layoutSubviewFrames;
- (void)setVerticalTextAlignmentInParentFrame:(CGRect)a3;
@end

@implementation AMSUIMessageViewSolariumLayoutContext

- (AMSUIMessageViewSolariumLayoutContext)initWithMessageView:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = AMSUIMessageViewSolariumLayoutContext;
  v5 = [(AMSUIMessageViewSolariumLayoutContext *)&v15 init];
  v6 = v5;
  if (v5)
  {
    v13 = *MEMORY[0x1E695F058];
    v14 = *(MEMORY[0x1E695F058] + 16);
    v5->_accessoryViewFrame.origin = *MEMORY[0x1E695F058];
    v5->_accessoryViewFrame.size = v14;
    v5->_debugButtonFrame.origin = v13;
    v5->_debugButtonFrame.size = v14;
    v12 = *MEMORY[0x1E695F060];
    v5->_contentSize = *MEMORY[0x1E695F060];
    v7 = [MEMORY[0x1E695DF70] array];
    footerButtonFrames = v6->_footerButtonFrames;
    v6->_footerButtonFrames = v7;

    v6->_footerContainerViewFrame.origin = v13;
    v6->_footerContainerViewFrame.size = v14;
    v6->_imageViewFrame.origin = v13;
    v6->_imageViewFrame.size = v14;
    v6->_isDirty = 1;
    v6->_lastFittingSize = v12;
    v6->_lastSize = v12;
    v6->_lastMessageViewFrame.origin = v13;
    v6->_lastMessageViewFrame.size = v14;
    v6->_mainContentFrame.origin = v13;
    v6->_mainContentFrame.size = v14;
    v6->_maskViewFrame.origin = v13;
    v6->_maskViewFrame.size = v14;
    objc_storeWeak(&v6->_messageView, v4);
    v9 = [MEMORY[0x1E695DF70] array];
    separatorViewFrames = v6->_separatorViewFrames;
    v6->_separatorViewFrames = v9;

    v6->_textViewFrame.origin = v13;
    v6->_textViewFrame.size = v14;
  }

  return v6;
}

- (void)invalidate
{
  [(AMSUIMessageViewSolariumLayoutContext *)self setIsDirty:1];
  [(AMSUIMessageViewSolariumLayoutContext *)self setLastFittingSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  [(AMSUIMessageViewSolariumLayoutContext *)self setIsTopAlignedTextButtonAllowed:0];
  [(AMSUIMessageViewSolariumLayoutContext *)self setIsFooterButtonStacked:0];

  [(AMSUIMessageViewSolariumLayoutContext *)self setShouldLayoutAXStackedEffective:0];
}

- (void)layoutSubviewFrames
{
  v3 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(AMSUIMessageViewSolariumLayoutContext *)self contentSize];
  if (v13 == *MEMORY[0x1E695F060] && v12 == *(MEMORY[0x1E695F060] + 8))
  {
    [(AMSUIMessageViewSolariumLayoutContext *)self setContentSize:v9, v11];
  }

  v15 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v16 = [v15 isSizing];

  if (v16)
  {
    [(AMSUIMessageViewSolariumLayoutContext *)self lastSize];
    v9 = v17;
    v11 = v18;
  }

  [(AMSUIMessageViewSolariumLayoutContext *)self lastMessageViewFrame];
  v21.origin.x = v5;
  v21.origin.y = v7;
  v21.size.width = v9;
  v21.size.height = v11;
  if (!CGRectEqualToRect(v20, v21))
  {
    [(AMSUIMessageViewSolariumLayoutContext *)self setIsDirty:1];
    [(AMSUIMessageViewSolariumLayoutContext *)self _contentSizeThatFits:v5, v7, v9, v11];
    [(AMSUIMessageViewSolariumLayoutContext *)self setContentSize:?];
  }

  [(AMSUIMessageViewSolariumLayoutContext *)self _updateWithRootFrame:v5, v7, v9, v11];

  [(AMSUIMessageViewSolariumLayoutContext *)self setLastMessageViewFrame:v5, v7, v9, v11];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(AMSUIMessageViewSolariumLayoutContext *)self lastFittingSize];
  v7 = v6;
  v9 = v8;
  [(AMSUIMessageViewSolariumLayoutContext *)self lastSize];
  v12 = v10;
  v13 = v11;
  if (width != v7 || height != v9)
  {
    if (width == v10 && height == v11)
    {
      [(AMSUIMessageViewSolariumLayoutContext *)self lastSize];
      v12 = v18;
      v13 = v19;
    }

    else
    {
      [(AMSUIMessageViewSolariumLayoutContext *)self invalidate];
      [(AMSUIMessageViewSolariumLayoutContext *)self setLastFittingSize:width, height];
      if (height > 5000.0)
      {
        height = 5000.0;
      }

      if (width > 5000.0)
      {
        width = 5000.0;
      }

      [(AMSUIMessageViewSolariumLayoutContext *)self _contentSizeThatFits:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), width, height];
      if (v16 >= width)
      {
        v12 = width;
      }

      else
      {
        v12 = v16;
      }

      if (v17 >= height)
      {
        v13 = height;
      }

      else
      {
        v13 = v17;
      }

      [(AMSUIMessageViewSolariumLayoutContext *)self setLastSize:v12, v13];
    }
  }

  v20 = v12;
  v21 = v13;
  result.height = v21;
  result.width = v20;
  return result;
}

- (CGSize)_contentSizeThatFits:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v9 = [v8 style] != 6;
  [(AMSUIMessageViewSolariumLayoutContext *)self setIsDirty:1];
  [(AMSUIMessageViewSolariumLayoutContext *)self _updateWithRootFrame:x, y, width, height];
  v10 = v9 | [(AMSUIMessageViewSolariumLayoutContext *)self shouldUseStackedAXLayout];
  if (v10)
  {
    v11 = ![(AMSUIMessageViewSolariumLayoutContext *)self isTopAlignedTextButtonAllowed];
  }

  else
  {
    v11 = 0;
  }

  [(AMSUIMessageViewSolariumLayoutContext *)self contentLayoutMargins];
  v13 = v12;
  v15 = v14;
  [(AMSUIMessageViewSolariumLayoutContext *)self imageViewFrame];
  v17 = v16;
  [(AMSUIMessageViewSolariumLayoutContext *)self _footerButtonSpacing];
  v19 = v18;
  [(AMSUIMessageViewSolariumLayoutContext *)self totalFooterButtonHeight];
  v21 = v20;
  [(AMSUIMessageViewSolariumLayoutContext *)self footerLayoutMargins];
  v23 = v22;
  [(AMSUIMessageViewSolariumLayoutContext *)self _effectiveTextViewFrame];
  if (v10)
  {
    v25 = v24;
    if ([(AMSUIMessageViewSolariumLayoutContext *)self isBannerStyle])
    {
      v25 = v25 + -4.0;
    }

    if (![(AMSUIMessageViewSolariumLayoutContext *)self isImageViewHidden])
    {
      if ([(AMSUIMessageViewSolariumLayoutContext *)self shouldUseStackedAXLayout])
      {
        v26 = [v8 textView];
        v27 = [v26 hasText];
        v28 = 0.0;
        if (v27)
        {
          [(AMSUIMessageViewSolariumLayoutContext *)self _imageToLabelSpacing];
        }

        v25 = v25 + v17 + v28;
      }

      else if (v17 >= v25)
      {
        v25 = v17;
      }
    }

    if ([(AMSUIMessageViewSolariumLayoutContext *)self isBannerStyle])
    {
      [(AMSUIMessageViewSolariumLayoutContext *)self topAlignButtonLayoutFrame];
      if (v35 >= v25)
      {
        v25 = v35;
      }
    }
  }

  else
  {
    [(AMSUIMessageViewSolariumLayoutContext *)self _effectiveTextViewFrame];
    v30 = v29;
    v31 = [(AMSUIMessageViewSolariumLayoutContext *)self bottomButtonFrames];

    if (v31)
    {
      v32 = v21 + v19 + v30;
    }

    else
    {
      v32 = v30;
    }

    v33 = [(AMSUIMessageViewSolariumLayoutContext *)self isImageViewHidden];
    if (v17 < v32 || v33)
    {
      v25 = v32;
    }

    else
    {
      v25 = v17;
    }

    v21 = 0.0;
  }

  v36 = 30.0;
  if (v25 >= 30.0)
  {
    v36 = v25;
  }

  v37 = v13 + v36;
  v38 = 0.0;
  if (v11)
  {
    v39 = 0.0;
  }

  else
  {
    v39 = v15;
  }

  v40 = v39 + v37;
  if (v11)
  {
    v41 = v19;
  }

  else
  {
    v41 = 0.0;
  }

  v42 = v21 + v41 + v40;
  if (v11)
  {
    v38 = v23;
  }

  v43 = v38 + v42;
  v44 = [v8 maskShapeView];

  if (v44)
  {
    v45 = [v8 maskShapeView];
    if ([v45 arrowDirection] == 1)
    {
    }

    else
    {
      v46 = [v8 maskShapeView];
      v47 = [v46 arrowDirection];

      if (v47 != 2)
      {
        goto LABEL_42;
      }
    }

    v48 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
    v49 = [v48 maskShapeView];
    [v49 arrowHeight];
    v43 = v43 + v50;
  }

LABEL_42:
  v51 = [(AMSUIMessageViewSolariumLayoutContext *)self isBannerStyle];
  v52 = 54.0;
  if (v43 >= 54.0)
  {
    v52 = v43;
  }

  v53 = 40.0;
  if (v43 >= 40.0)
  {
    v53 = v43;
  }

  if (v51)
  {
    v54 = v52;
  }

  else
  {
    v54 = v53;
  }

  v55 = width;
  v56 = v54;
  result.height = v56;
  result.width = v55;
  return result;
}

- (void)_updateWithRootFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v281 = *MEMORY[0x1E69E9840];
  [(AMSUIMessageViewSolariumLayoutContext *)self calculateMainContentFrameRootFrame:?];
  if ([(AMSUIMessageViewSolariumLayoutContext *)self isDirty])
  {
    [(AMSUIMessageViewSolariumLayoutContext *)self calculateButtonSizes];
  }

  [(AMSUIMessageViewSolariumLayoutContext *)self maskViewFrame];
  [(AMSUIMessageViewSolariumLayoutContext *)self _effectiveTextViewFrame];
  v247 = v8;
  v10 = v9;
  v11 = MEMORY[0x1E695F058];
  [(AMSUIMessageViewSolariumLayoutContext *)self debugButtonSize];
  v255 = v13;
  v256 = v12;
  v14 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v15 = [v14 traitCollection];
  v257 = [v15 layoutDirection];

  [(AMSUIMessageViewSolariumLayoutContext *)self isImageViewHidden];
  v249 = [(AMSUIMessageViewSolariumLayoutContext *)self shouldUseStackedAXLayout];
  v16 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v258 = [v16 style];

  [(AMSUIMessageViewSolariumLayoutContext *)self footerLayoutMargins];
  v18 = v17;
  v264 = v19;
  v20 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v21 = [v20 textView];
  [v21 textContainerInset];
  v244 = v23;
  v245 = v22;

  [(AMSUIMessageViewSolariumLayoutContext *)self contentLayoutMargins];
  [(AMSUIMessageViewSolariumLayoutContext *)self leadingContentTextBaseline];
  v253 = v24;
  [(AMSUIMessageViewSolariumLayoutContext *)self setTopButtonFrames:0];
  [(AMSUIMessageViewSolariumLayoutContext *)self setBottomButtonFrames:0];
  v25 = [(AMSUIMessageViewSolariumLayoutContext *)self topAlignButtonCandidates];
  v26 = [(AMSUIMessageViewSolariumLayoutContext *)self bottomAlignButtons];
  v27 = [(AMSUIMessageViewSolariumLayoutContext *)self framesForButtons:v25];
  [(AMSUIMessageViewSolariumLayoutContext *)self setTopButtonFrames:v27];

  v28 = [(AMSUIMessageViewSolariumLayoutContext *)self topButtonFrames];
  [(AMSUIMessageViewSolariumLayoutContext *)self calculateHorizontalButtonContainerFrame:v28 inParentFrame:x, y, width, height];
  [(AMSUIMessageViewSolariumLayoutContext *)self setTopAlignButtonLayoutFrame:?];

  if ([(AMSUIMessageViewSolariumLayoutContext *)self _isTopButtonLeading])
  {
    [(AMSUIMessageViewSolariumLayoutContext *)self leadingContentTextBaseline];
    v18 = v29;
  }

  v30 = *(v11 + 8);
  [(AMSUIMessageViewSolariumLayoutContext *)self _maxFooterButtonWidthInFrame:x, y, width, height];
  v32 = v31;
  v33 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v34 = [v33 maskShapeView];

  v254 = v30;
  v251 = v10;
  if (v34)
  {
    v35 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
    v36 = [v35 maskShapeView];
    v37 = [v36 arrowDirection];

    v38 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
    v39 = [v38 maskShapeView];
    v40 = v39;
    if (v37 == 2)
    {
      [v39 arrowHeight];
      v42 = v30 - v41;
LABEL_10:

      goto LABEL_12;
    }

    v43 = [v39 arrowDirection];

    if (v43 == 4)
    {
      v38 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
      v40 = [v38 maskShapeView];
      [v40 arrowHeight];
      v18 = v18 + v44;
      v42 = v30;
      goto LABEL_10;
    }
  }

  v42 = v30;
LABEL_12:
  v45 = *(v11 + 24);
  v263 = v32;
  if (v26)
  {
    [(AMSUIMessageViewSolariumLayoutContext *)self setIsTopAlignedTextButtonAllowed:0];
    v46 = [(AMSUIMessageViewSolariumLayoutContext *)self topButtonFrames];
    v47 = [(AMSUIMessageViewSolariumLayoutContext *)self layoutHorizontalButtonsFrames:v46];
    [(AMSUIMessageViewSolariumLayoutContext *)self setTopButtonFrames:v47];

    v48 = [(AMSUIMessageViewSolariumLayoutContext *)self framesForButtons:v26];
    [(AMSUIMessageViewSolariumLayoutContext *)self setBottomButtonFrames:v48];

    v49 = [(AMSUIMessageViewSolariumLayoutContext *)self bottomButtonFrames];
    v50 = [(AMSUIMessageViewSolariumLayoutContext *)self _calculateFooterButtonFrames:v49 inFrame:v18, v42, v32, v45];
    [(AMSUIMessageViewSolariumLayoutContext *)self setBottomButtonFrames:v50];
  }

  else
  {
    v51 = v18;
    v52 = *(v11 + 24);
    [(AMSUIMessageViewSolariumLayoutContext *)self topAlignButtonLayoutFrame];
    v54 = v53;
    [(AMSUIMessageViewSolariumLayoutContext *)self topAlignButtonsLayoutMargins];
    v56 = (v54 + v55) / width;
    [(AMSUIMessageViewSolariumLayoutContext *)self setIsTopAlignedTextButtonAllowed:v56 <= 0.35];
    [(AMSUIMessageViewSolariumLayoutContext *)self topAlignButtonLayoutFrame];
    if (v56 > 0.35)
    {
      v58 = v57 - (v247 + v253);
      [(AMSUIMessageViewSolariumLayoutContext *)self accessorySpacing];
      if (v58 >= v59)
      {
        [(AMSUIMessageViewSolariumLayoutContext *)self setIsTopAlignedTextButtonAllowed:1];
      }
    }

    [(AMSUIMessageViewSolariumLayoutContext *)self contentLayoutMargins];
    [(AMSUIMessageViewSolariumLayoutContext *)self leadingContentTextBaseline];
    v253 = v60;
    v61 = [(AMSUIMessageViewSolariumLayoutContext *)self topButtonFrames];
    [(AMSUIMessageViewSolariumLayoutContext *)self calculateHorizontalButtonContainerFrame:v61 inParentFrame:x, y, width, height];
    [(AMSUIMessageViewSolariumLayoutContext *)self setTopAlignButtonLayoutFrame:?];

    if ([(AMSUIMessageViewSolariumLayoutContext *)self isTopAlignedTextButtonAllowed])
    {
      v62 = [(AMSUIMessageViewSolariumLayoutContext *)self topButtonFrames];
      v63 = [(AMSUIMessageViewSolariumLayoutContext *)self layoutHorizontalButtonsFrames:v62];
      [(AMSUIMessageViewSolariumLayoutContext *)self setTopButtonFrames:v63];

      v45 = v52;
      v18 = v51;
      v32 = v263;
    }

    else
    {
      v241 = v25;
      v64 = [MEMORY[0x1E695DF70] array];
      v65 = [MEMORY[0x1E695DF70] array];
      v275 = 0u;
      v276 = 0u;
      v277 = 0u;
      v278 = 0u;
      v66 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
      v67 = [v66 buttons];

      v68 = [v67 countByEnumeratingWithState:&v275 objects:v280 count:16];
      v45 = v52;
      v18 = v51;
      v32 = v263;
      if (v68)
      {
        v69 = v68;
        v70 = *v276;
        do
        {
          for (i = 0; i != v69; ++i)
          {
            if (*v276 != v70)
            {
              objc_enumerationMutation(v67);
            }

            v72 = *(*(&v275 + 1) + 8 * i);
            v73 = [v72 configuration];
            v74 = [v73 title];

            if (v74)
            {
              v75 = v65;
            }

            else
            {
              v75 = v64;
            }

            [v75 addObject:v72];
          }

          v69 = [v67 countByEnumeratingWithState:&v275 objects:v280 count:16];
        }

        while (v69);
      }

      v76 = [(AMSUIMessageViewSolariumLayoutContext *)self framesForButtons:v64];
      [(AMSUIMessageViewSolariumLayoutContext *)self setTopButtonFrames:v76];

      v77 = [(AMSUIMessageViewSolariumLayoutContext *)self topButtonFrames];
      v78 = [(AMSUIMessageViewSolariumLayoutContext *)self layoutHorizontalButtonsFrames:v77];
      [(AMSUIMessageViewSolariumLayoutContext *)self setTopButtonFrames:v78];

      v79 = [(AMSUIMessageViewSolariumLayoutContext *)self topButtonFrames];
      [(AMSUIMessageViewSolariumLayoutContext *)self calculateHorizontalButtonContainerFrame:v79 inParentFrame:x, y, width, height];
      [(AMSUIMessageViewSolariumLayoutContext *)self setTopAlignButtonLayoutFrame:?];

      v80 = [(AMSUIMessageViewSolariumLayoutContext *)self framesForButtons:v65];
      [(AMSUIMessageViewSolariumLayoutContext *)self setBottomButtonFrames:v80];

      v81 = [(AMSUIMessageViewSolariumLayoutContext *)self bottomButtonFrames];
      v82 = [(AMSUIMessageViewSolariumLayoutContext *)self _calculateFooterButtonFrames:v81 inFrame:v18, v42, v263, v45];
      [(AMSUIMessageViewSolariumLayoutContext *)self setBottomButtonFrames:v82];

      v25 = v241;
      v26 = 0;
    }
  }

  v83 = [MEMORY[0x1E695DEC8] array];
  [(AMSUIMessageViewSolariumLayoutContext *)self setButtonFrames:v83];

  v84 = [(AMSUIMessageViewSolariumLayoutContext *)self bottomButtonFrames];

  if (v84)
  {
    [(AMSUIMessageViewSolariumLayoutContext *)self totalFooterButtonHeight];
    v45 = v85;
    [(AMSUIMessageViewSolariumLayoutContext *)self contentSize];
    v42 = v86 - v45 - v264;
    v87 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
    v88 = [v87 maskShapeView];

    if (v88)
    {
      v89 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
      v90 = [v89 maskShapeView];
      v91 = [v90 arrowDirection];

      if (v91 == 2)
      {
        v92 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
        v93 = [v92 maskShapeView];
        [v93 arrowHeight];
        v42 = v42 - v94;
      }
    }

    v95 = [(AMSUIMessageViewSolariumLayoutContext *)self bottomButtonFrames];
    v274[0] = MEMORY[0x1E69E9820];
    v274[1] = 3221225472;
    v274[2] = __62__AMSUIMessageViewSolariumLayoutContext__updateWithRootFrame___block_invoke;
    v274[3] = &__block_descriptor_64_e26___NSValue_16__0__NSValue_8l;
    *&v274[4] = v18;
    *&v274[5] = v42;
    *&v274[6] = v32;
    *&v274[7] = v45;
    v96 = [v95 ams_mapWithTransform:v274];
    [(AMSUIMessageViewSolariumLayoutContext *)self setBottomButtonFrames:v96];

    v97 = [(AMSUIMessageViewSolariumLayoutContext *)self buttonFrames];
    v98 = [(AMSUIMessageViewSolariumLayoutContext *)self bottomButtonFrames];
    v99 = [v97 arrayByAddingObjectsFromArray:v98];
    [(AMSUIMessageViewSolariumLayoutContext *)self setButtonFrames:v99];
  }

  v100 = v42;
  v265 = v45;
  v101 = [(AMSUIMessageViewSolariumLayoutContext *)self topButtonFrames];

  if (v101)
  {
    v102 = [(AMSUIMessageViewSolariumLayoutContext *)self topButtonFrames];
    v273[0] = MEMORY[0x1E69E9820];
    v273[1] = 3221225472;
    v273[2] = __62__AMSUIMessageViewSolariumLayoutContext__updateWithRootFrame___block_invoke_2;
    v273[3] = &unk_1E7F25200;
    v273[4] = self;
    v103 = [v102 ams_mapWithTransform:v273];
    [(AMSUIMessageViewSolariumLayoutContext *)self setTopButtonFrames:v103];

    v104 = [(AMSUIMessageViewSolariumLayoutContext *)self buttonFrames];
    v105 = [(AMSUIMessageViewSolariumLayoutContext *)self topButtonFrames];
    v106 = [v104 arrayByAddingObjectsFromArray:v105];
    [(AMSUIMessageViewSolariumLayoutContext *)self setButtonFrames:v106];
  }

  [(AMSUIMessageViewSolariumLayoutContext *)self calculateImageViewFrameInParentFrame:x, y, width, height];
  [(AMSUIMessageViewSolariumLayoutContext *)self textViewFrame];
  [(AMSUIMessageViewSolariumLayoutContext *)self textViewOrigin];
  [(AMSUIMessageViewSolariumLayoutContext *)self setTextViewFrame:?];
  [(AMSUIMessageViewSolariumLayoutContext *)self calculateTextViewSizeInFrame:[(AMSUIMessageViewSolariumLayoutContext *)self isDirty] dirty:x, y, width, height];
  [(AMSUIMessageViewSolariumLayoutContext *)self textViewFrame];
  if (v258 != 6 || v249)
  {
    v259 = v18;
    v107 = v45;
    goto LABEL_40;
  }

  v242 = x;
  v243 = v26;
  v167 = *MEMORY[0x1E695F060];
  v168 = *(MEMORY[0x1E695F060] + 8);
  v169 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v170 = [v169 textView];
  v171 = [v170 hasText];

  if (v171)
  {
    v172 = v251 + v168;
  }

  else
  {
    v172 = v168;
  }

  if (v171)
  {
    v173 = v247 + v167;
  }

  else
  {
    v173 = v167;
  }

  v174 = [(AMSUIMessageViewSolariumLayoutContext *)self bottomButtonFrames];
  v175 = [v174 count];

  if (v175)
  {
    v176 = v25;
    v271 = 0u;
    v272 = 0u;
    v269 = 0u;
    v270 = 0u;
    v177 = [(AMSUIMessageViewSolariumLayoutContext *)self bottomButtonFrames];
    v178 = [v177 countByEnumeratingWithState:&v269 objects:v279 count:16];
    if (v178)
    {
      v179 = v178;
      v180 = *v270;
      do
      {
        for (j = 0; j != v179; ++j)
        {
          if (*v270 != v180)
          {
            objc_enumerationMutation(v177);
          }

          [*(*(&v269 + 1) + 8 * j) CGRectValue];
          v184 = v183;
          if (v173 < v182)
          {
            v173 = v182;
          }

          [(AMSUIMessageViewSolariumLayoutContext *)self _footerButtonSpacing];
          v172 = v172 + v185 + v184;
        }

        v179 = [v177 countByEnumeratingWithState:&v269 objects:v279 count:16];
      }

      while (v179);
    }

    v25 = v176;
  }

  v186 = (height - v172) * 0.5;
  v187 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v188 = [v187 maskShapeView];

  if (v188)
  {
    v189 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
    v190 = [v189 maskShapeView];
    if ([v190 arrowDirection] == 1)
    {

      goto LABEL_71;
    }

    v191 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
    v192 = [v191 maskShapeView];
    v193 = [v192 arrowDirection];

    if (v193 == 2)
    {
LABEL_71:
      v194 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
      v195 = [v194 maskShapeView];
      [v195 arrowHeight];
      v186 = (height - v196 - v172) * 0.5;

      v197 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
      v198 = [v197 maskShapeView];
      v199 = [v198 arrowDirection];

      if (v199 == 1)
      {
        v200 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
        v201 = [v200 maskShapeView];
        [v201 arrowHeight];
        v186 = v186 + v202;
      }
    }
  }

  v260 = v186;
  v262 = height;
  v248 = y;
  v250 = width;
  [(AMSUIMessageViewSolariumLayoutContext *)self textViewFrame];
  v204 = v203;
  v206 = v205;
  [(AMSUIMessageViewSolariumLayoutContext *)self _footerButtonSpacing];
  v208 = v251 + v207;
  v209 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v210 = [v209 textView];
  if ([v210 hasText])
  {
  }

  else
  {
    v211 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
    v212 = [v211 buttons];
    v213 = [v212 count];

    if (v213)
    {
      v208 = 0.0;
    }
  }

  [AMSUICGRectHelper flattenRect:-v244 toParentFrame:-v245, v204, v206, v253, v260, v173, v172];
  v252 = v214;
  v246 = v215;
  v217 = v216;
  v219 = v218;
  [AMSUICGRectHelper flattenRect:0.0 toParentFrame:v208, v263, v265, v253, v260, v173, v172];
  v221 = v220;
  v100 = v222;
  v224 = v223;
  v107 = v225;
  [(AMSUIMessageViewSolariumLayoutContext *)self setTextViewFrame:v252, v246, v217, v219];
  v226 = [(AMSUIMessageViewSolariumLayoutContext *)self bottomButtonFrames];
  v227 = [v226 count];

  v26 = v243;
  v259 = v221;
  v263 = v224;
  if (v227)
  {
    v228 = [(AMSUIMessageViewSolariumLayoutContext *)self bottomButtonFrames];
    v229 = [(AMSUIMessageViewSolariumLayoutContext *)self _calculateFooterButtonFrames:v228 inFrame:v221, v100, v224, v107];
    [(AMSUIMessageViewSolariumLayoutContext *)self setBottomButtonFrames:v229];

    v230 = [(AMSUIMessageViewSolariumLayoutContext *)self bottomButtonFrames];
    v268[0] = MEMORY[0x1E69E9820];
    v268[1] = 3221225472;
    v268[2] = __62__AMSUIMessageViewSolariumLayoutContext__updateWithRootFrame___block_invoke_3;
    v268[3] = &__block_descriptor_64_e26___NSValue_16__0__NSValue_8l;
    *&v268[4] = v221;
    *&v268[5] = v100;
    *&v268[6] = v224;
    *&v268[7] = v107;
    v231 = [v230 ams_mapWithTransform:v268];
    [(AMSUIMessageViewSolariumLayoutContext *)self setBottomButtonFrames:v231];

    v232 = [MEMORY[0x1E695DEC8] array];
    [(AMSUIMessageViewSolariumLayoutContext *)self setButtonFrames:v232];

    v233 = [(AMSUIMessageViewSolariumLayoutContext *)self bottomButtonFrames];

    height = v262;
    y = v248;
    width = v250;
    x = v242;
    if (v233)
    {
      v234 = [(AMSUIMessageViewSolariumLayoutContext *)self buttonFrames];
      v235 = [(AMSUIMessageViewSolariumLayoutContext *)self bottomButtonFrames];
      v236 = [v234 arrayByAddingObjectsFromArray:v235];
      [(AMSUIMessageViewSolariumLayoutContext *)self setButtonFrames:v236];
    }

    v237 = [(AMSUIMessageViewSolariumLayoutContext *)self topButtonFrames];

    if (v237)
    {
      v238 = [(AMSUIMessageViewSolariumLayoutContext *)self buttonFrames];
      v239 = [(AMSUIMessageViewSolariumLayoutContext *)self topButtonFrames];
      v240 = [v238 arrayByAddingObjectsFromArray:v239];
      [(AMSUIMessageViewSolariumLayoutContext *)self setButtonFrames:v240];
    }
  }

  else
  {
    height = v262;
    y = v248;
    width = v250;
    x = v242;
  }

LABEL_40:
  if ([(AMSUIMessageViewSolariumLayoutContext *)self isDirty]&& [(AMSUIMessageViewSolariumLayoutContext *)self isBannerStyle]&& ![(AMSUIMessageViewSolariumLayoutContext *)self isImageViewHidden]&& [(AMSUIMessageViewSolariumLayoutContext *)self isAXSize]&& ![(AMSUIMessageViewSolariumLayoutContext *)self shouldLayoutAXStackedEffective]&& [(AMSUIMessageViewSolariumLayoutContext *)self numberOfTextLines]>= 4)
  {
    [(AMSUIMessageViewSolariumLayoutContext *)self setShouldLayoutAXStackedEffective:1];
    [(AMSUIMessageViewSolariumLayoutContext *)self _updateWithRootFrame:x, y, width, height];
  }

  else
  {
    v261 = v100;
    v266 = v107;
    v108 = *MEMORY[0x1E695F058];
    [(AMSUIMessageViewSolariumLayoutContext *)self setVerticalTextAlignmentInParentFrame:x, y, width, height];
    [(AMSUIMessageViewSolariumLayoutContext *)self mainContentFrame];
    [AMSUICGRectHelper flattenRect:v108 toParentFrame:v254, v256, v255, v109, v110, v111, v112];
    v114 = v113;
    v116 = v115;
    v118 = v117 + -12.0;
    v120 = v119 + -10.0;
    if (v257 == 1)
    {
      [(AMSUIMessageViewSolariumLayoutContext *)self imageViewFrame];
      v122 = v121;
      v124 = v123;
      v126 = v125;
      v128 = v127;
      [(AMSUIMessageViewSolariumLayoutContext *)self mainContentFrame];
      [AMSUICGRectHelper rect:v122 withFlippedOriginXRelativeTo:v124, v126, v128, v129, v130, v131, v132];
      [(AMSUIMessageViewSolariumLayoutContext *)self setImageViewFrame:?];
      [(AMSUIMessageViewSolariumLayoutContext *)self textViewFrame];
      v134 = v133;
      v136 = v135;
      v138 = v137;
      v140 = v139;
      [(AMSUIMessageViewSolariumLayoutContext *)self mainContentFrame];
      [AMSUICGRectHelper rect:v134 withFlippedOriginXRelativeTo:v136, v138, v140, v141, v142, v143, v144];
      [(AMSUIMessageViewSolariumLayoutContext *)self setTextViewFrame:?];
      v145 = MEMORY[0x1E695DF70];
      v146 = [(AMSUIMessageViewSolariumLayoutContext *)self buttonFrames];
      v267[0] = MEMORY[0x1E69E9820];
      v267[1] = 3221225472;
      v267[2] = __62__AMSUIMessageViewSolariumLayoutContext__updateWithRootFrame___block_invoke_4;
      v267[3] = &unk_1E7F25200;
      v267[4] = self;
      v147 = [v146 ams_mapWithTransform:v267];
      v148 = [v145 arrayWithArray:v147];
      [(AMSUIMessageViewSolariumLayoutContext *)self setButtonFrames:v148];

      [(AMSUIMessageViewSolariumLayoutContext *)self mainContentFrame];
      [AMSUICGRectHelper rect:v118 withFlippedOriginXRelativeTo:v120, v114, v116, v149, v150, v151, v152];
      v118 = v153;
      v120 = v154;
      v114 = v155;
      v116 = v156;
    }

    v157 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
    [v157 bounds];
    v159 = v158;
    v161 = v160;
    v163 = v162;
    v165 = v164;

    [(AMSUIMessageViewSolariumLayoutContext *)self setMaskViewFrame:v159, v161, v163, v165];
    [(AMSUIMessageViewSolariumLayoutContext *)self setFooterContainerViewFrame:v259, v261, v263, v266];
    [(AMSUIMessageViewSolariumLayoutContext *)self setDebugButtonFrame:v118, v120, v114, v116];
    [(AMSUIMessageViewSolariumLayoutContext *)self setIsDirty:0];
  }

  v166 = *MEMORY[0x1E69E9840];
}

uint64_t __62__AMSUIMessageViewSolariumLayoutContext__updateWithRootFrame___block_invoke(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696B098];
  [a2 CGRectValue];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  [AMSUICGRectHelper flattenRect:"flattenRect:toParentFrame:" toParentFrame:?];

  return [v3 valueWithCGRect:?];
}

uint64_t __62__AMSUIMessageViewSolariumLayoutContext__updateWithRootFrame___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696B098];
  [a2 CGRectValue];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [*(a1 + 32) topAlignButtonLayoutFrame];
  [AMSUICGRectHelper flattenRect:v5 toParentFrame:v7, v9, v11, v12, v13, v14, v15];

  return [v3 valueWithCGRect:?];
}

uint64_t __62__AMSUIMessageViewSolariumLayoutContext__updateWithRootFrame___block_invoke_3(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696B098];
  [a2 CGRectValue];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  [AMSUICGRectHelper flattenRect:"flattenRect:toParentFrame:" toParentFrame:?];

  return [v3 valueWithCGRect:?];
}

uint64_t __62__AMSUIMessageViewSolariumLayoutContext__updateWithRootFrame___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696B098];
  [a2 CGRectValue];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [*(a1 + 32) mainContentFrame];
  [AMSUICGRectHelper rect:v5 withFlippedOriginXRelativeTo:v7, v9, v11, v12, v13, v14, v15];

  return [v3 valueWithCGRect:?];
}

- (void)setVerticalTextAlignmentInParentFrame:(CGRect)a3
{
  height = a3.size.height;
  if (![(AMSUIMessageViewSolariumLayoutContext *)self shouldUseStackedAXLayout:a3.origin.x])
  {
    if ([(AMSUIMessageViewSolariumLayoutContext *)self isBannerStyle])
    {
      [(AMSUIMessageViewSolariumLayoutContext *)self textViewFrame];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v11 = [(AMSUIMessageViewSolariumLayoutContext *)self bottomButtonFrames];
      v12 = [v11 count];

      if (v12)
      {
        v13 = [(AMSUIMessageViewSolariumLayoutContext *)self bottomButtonFrames];
        v14 = [v13 firstObject];
        [v14 CGRectValue];
        height = v15;
      }

      [(AMSUIMessageViewSolariumLayoutContext *)self setTextViewFrame:v6, (height - v10) * 0.5, v8, v10];
    }

    else
    {
      v16 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
      [v16 style];
    }
  }
}

- (double)closeButtonHeight
{
  [(AMSUIMessageViewSolariumLayoutContext *)self isBannerStyle];
  [(AMSUIMessageViewSolariumLayoutContext *)self isBubbleTipStyle];
  return 30.0;
}

- (void)calculateButtonSizes
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v5 = [v4 buttons];

  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    v9 = *MEMORY[0x1E695F058];
    v10 = *(MEMORY[0x1E695F058] + 8);
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        [v12 sizeThatFits:{400.0, 1.79769313e308}];
        v14 = v13;
        v16 = v15;
        if (-[AMSUIMessageViewSolariumLayoutContext isBannerStyle](self, "isBannerStyle") || [v12 isDefaultCloseButton])
        {
          [(AMSUIMessageViewSolariumLayoutContext *)self closeButtonHeight];
          if (v16 < v17)
          {
            v16 = v17;
          }
        }

        if (v14 >= v16)
        {
          v18 = v14;
        }

        else
        {
          v18 = v16;
        }

        v19 = [MEMORY[0x1E696B098] valueWithCGRect:{v9, v10, v18, v16}];
        [v3 addObject:v19];
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  [(AMSUIMessageViewSolariumLayoutContext *)self setButtonFrames:v3];
  v20 = *MEMORY[0x1E69E9840];
}

- (void)calculateMainContentFrameRootFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  [(AMSUIMessageViewSolariumLayoutContext *)self mainContentFrame:a3.origin.x];
  [(AMSUIMessageViewSolariumLayoutContext *)self contentLayoutMargins];
  v7 = v6;
  v9 = v8;
  v11 = height - v6 - v10;
  v13 = width - v8 - v12;
  v14 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v15 = [v14 style];

  if (v15 == 2)
  {
    v16 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
    [v16 safeAreaInsets];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v11 = v11 - (v18 + v22);
    v13 = v13 - (v20 + v24);
  }

  v25 = [(AMSUIMessageViewSolariumLayoutContext *)self bottomButtonFrames];
  if ([v25 count])
  {
    v26 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
    v27 = [v26 style];

    if (v27 != 6)
    {
      [(AMSUIMessageViewSolariumLayoutContext *)self _footerButtonSpacing];
      v29 = v11 - v28;
      [(AMSUIMessageViewSolariumLayoutContext *)self totalFooterButtonHeight];
      v11 = v29 - v30;
    }
  }

  else
  {
  }

  v31 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v32 = [v31 maskShapeView];

  if (v32)
  {
    v33 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
    v34 = [v33 maskShapeView];
    [v34 arrowHeight];
    v36 = v35;

    v37 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
    v38 = [v37 maskShapeView];
    v39 = [v38 arrowDirection];

    if (v39 <= 3)
    {
      if (v39 == 1)
      {
        v7 = v7 + v36;
      }

      else if (v39 != 2)
      {
        goto LABEL_19;
      }

      v11 = v11 - v36;
      goto LABEL_19;
    }

    if (v39 == 4)
    {
      v9 = v9 + v36;
    }

    else if (v39 != 8)
    {
      goto LABEL_19;
    }

    v13 = v13 - v36;
  }

LABEL_19:

  [(AMSUIMessageViewSolariumLayoutContext *)self setMainContentFrame:v9, v7, v13, v11];
}

- (void)calculateTextViewSizeInFrame:(CGRect)a3 dirty:(BOOL)a4
{
  v4 = a4;
  width = a3.size.width;
  v51[1] = *MEMORY[0x1E69E9840];
  v7 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView:a3.origin.x];
  v8 = [v7 textView];
  v9 = [v8 hasText];

  if (v9)
  {
    [(AMSUIMessageViewSolariumLayoutContext *)self leadingContentTextBaseline];
    v11 = v10;
    [(AMSUIMessageViewSolariumLayoutContext *)self contentLayoutMargins];
    if (v4)
    {
      v13 = width - v11 - v12;
      [(AMSUIMessageViewSolariumLayoutContext *)self mainContentFrame];
      v15 = v14;
      v16 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
      v17 = [v16 textView];
      [v17 textContainerInset];
      v19 = v18;
      v21 = v20;

      v22 = v21 + v15 + v19;
      [(AMSUIMessageViewSolariumLayoutContext *)self textViewFrame];
      [(AMSUIMessageViewSolariumLayoutContext *)self setTextViewFrame:?];
      [(AMSUIMessageViewSolariumLayoutContext *)self calculateTextViewExclusionFrame];
      v23 = [(AMSUIMessageViewSolariumLayoutContext *)self textViewExclusionPath];

      if (v23)
      {
        v24 = [(AMSUIMessageViewSolariumLayoutContext *)self textViewExclusionPath];
        v51[0] = v24;
        v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
        v26 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
        v27 = [v26 textView];
        v28 = [v27 textContainer];
        [v28 setExclusionPaths:v25];
      }

      else
      {
        v24 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
        v25 = [v24 textView];
        v26 = [v25 textContainer];
        [v26 setExclusionPaths:MEMORY[0x1E695E0F0]];
      }

      v34 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
      v35 = [v34 textView];
      [v35 sizeThatFits:{v13, v22}];
      v37 = v36;
      v39 = v38;

      v40 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
      v41 = [v40 traitCollection];
      v42 = [v41 layoutDirection];

      if (v42 == 1)
      {
        v43 = v13;
      }

      else
      {
        v43 = v37;
      }

      [(AMSUIMessageViewSolariumLayoutContext *)self setTextViewContentHuggingSize:v43, v39];
    }

    [(AMSUIMessageViewSolariumLayoutContext *)self textViewFrame];
    v45 = v44;
    v47 = v46;
    [(AMSUIMessageViewSolariumLayoutContext *)self textViewContentHuggingSize];
    [(AMSUIMessageViewSolariumLayoutContext *)self setTextViewFrame:v45, v47, v48, v49];
    v50 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v29 = *MEMORY[0x1E69E9840];
    v30 = *MEMORY[0x1E695F058];
    v31 = *(MEMORY[0x1E695F058] + 8);
    v32 = *(MEMORY[0x1E695F058] + 16);
    v33 = *(MEMORY[0x1E695F058] + 24);

    [(AMSUIMessageViewSolariumLayoutContext *)self setTextViewFrame:v30, v31, v32, v33];
  }
}

- (void)calculateTextViewExclusionFrame
{
  if ([(AMSUIMessageViewSolariumLayoutContext *)self _isVisionNative])
  {
    goto LABEL_8;
  }

  v3 = [(AMSUIMessageViewSolariumLayoutContext *)self topButtonFrames];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v5 = [(AMSUIMessageViewSolariumLayoutContext *)self topButtonFrames];
  v6 = [v5 count];

  if (v6 && (![(AMSUIMessageViewSolariumLayoutContext *)self shouldUseStackedAXLayout]|| [(AMSUIMessageViewSolariumLayoutContext *)self isImageViewHidden]))
  {
    v7 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
    v8 = [v7 traitCollection];
    v9 = [v8 layoutDirection];

    [(AMSUIMessageViewSolariumLayoutContext *)self textViewFrame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [(AMSUIMessageViewSolariumLayoutContext *)self topAlignButtonLayoutFrame];
    v50.origin.x = v18;
    v50.origin.y = v19;
    v50.size.width = v20;
    v50.size.height = v21;
    v46.origin.x = v11;
    v46.origin.y = v13;
    v46.size.width = v15;
    v46.size.height = v17;
    v47 = CGRectIntersection(v46, v50);
    x = v47.origin.x;
    y = v47.origin.y;
    width = v47.size.width;
    height = v47.size.height;
    [(AMSUIMessageViewSolariumLayoutContext *)self textViewFrame];
    v27 = v26;
    v28 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
    v29 = [v28 textView];
    [v29 textContainerInset];
    v31 = x - (v27 + v30);

    [(AMSUIMessageViewSolariumLayoutContext *)self textViewFrame];
    v33 = v32;
    [(AMSUIMessageViewSolariumLayoutContext *)self accessorySpacing];
    v35 = v34;
    if ([(AMSUIMessageViewSolariumLayoutContext *)self _shouldTextViewTextFillUnderCloseButton])
    {
      v36 = y - v33;
    }

    else
    {
      [(AMSUIMessageViewSolariumLayoutContext *)self mainContentFrame];
      height = v37;
      v36 = 0.0;
    }

    v38 = v31 - v35;
    v39 = width + v35;
    if (v9 == 1)
    {
      memset(&v44, 0, sizeof(v44));
      CGAffineTransformMakeScale(&v44, -1.0, 1.0);
      memset(&v43, 0, sizeof(v43));
      [(AMSUIMessageViewSolariumLayoutContext *)self _maxTextContainerWidth];
      v42 = v44;
      CGAffineTransformTranslate(&v43, &v42, -v40, 0.0);
      v42 = v43;
      v48.origin.x = v31 - v35;
      v48.origin.y = v36;
      v48.size.width = v39;
      v48.size.height = height;
      v49 = CGRectApplyAffineTransform(v48, &v42);
      v36 = v49.origin.y;
      v39 = v49.size.width;
      height = v49.size.height;
      if (v49.origin.x >= 0.01)
      {
        v38 = v49.origin.x + -30.0;
      }

      else
      {
        v38 = -30.0;
      }
    }

    v41 = [MEMORY[0x1E69DC728] bezierPathWithRect:{v38, v36, v39 + 30.0, height}];
    [(AMSUIMessageViewSolariumLayoutContext *)self setTextViewExclusionPath:v41];
  }

  else
  {
LABEL_8:

    [(AMSUIMessageViewSolariumLayoutContext *)self setTextViewExclusionPath:0];
  }
}

- (id)_calculateFooterButtonFrames:(id)a3 inFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = v9;
  if (v9 && [v9 count])
  {
    v11 = [MEMORY[0x1E695DF70] array];
    [(AMSUIMessageViewSolariumLayoutContext *)self _footerButtonInterSpacing];
    v13 = v12;
    [(AMSUIMessageViewSolariumLayoutContext *)self _footerButtonInterSpacing];
    v15 = v14;
    v16 = [v10 count];
    v17 = [v10 count];
    v53[0] = 0;
    v53[1] = v53;
    v53[2] = 0x2020000000;
    v53[3] = 0;
    v49 = 0;
    v50 = &v49;
    v51 = 0x2020000000;
    v52 = 0;
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 0;
    v18 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
    v19 = [v18 style];

    if (v19 == 6)
    {
      *(v46 + 24) = 1;
    }

    if ([(AMSUIMessageViewSolariumLayoutContext *)self isBubbleTipStyle])
    {
      v20 = [(AMSUIMessageViewSolariumLayoutContext *)self _isVisionNative];
      v21 = v46;
      if (v20)
      {
        *(v46 + 24) = 1;
      }
    }

    else
    {
      v21 = v46;
    }

    if ((v21[3] & 1) == 0)
    {
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __78__AMSUIMessageViewSolariumLayoutContext__calculateFooterButtonFrames_inFrame___block_invoke;
      v38[3] = &unk_1E7F25250;
      v43 = (width - v15 * (v16 - 1)) / v17;
      v38[4] = self;
      v40 = &v45;
      v41 = v53;
      v42 = &v49;
      v11 = v11;
      v39 = v11;
      v44 = v13;
      [v10 enumerateObjectsUsingBlock:v38];

      if ((v46[3] & 1) == 0 && [v11 count] >= 2)
      {
        v22 = [MEMORY[0x1E695DF70] array];
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __78__AMSUIMessageViewSolariumLayoutContext__calculateFooterButtonFrames_inFrame___block_invoke_2;
        v35[3] = &unk_1E7F25278;
        v37 = &v49;
        v23 = v22;
        v36 = v23;
        [v11 enumerateObjectsUsingBlock:v35];
        v24 = v23;

        v11 = v24;
      }
    }

    if (*(v46 + 24) == 1)
    {
      [(AMSUIMessageViewSolariumLayoutContext *)self setIsFooterButtonStacked:1];
      [v11 removeAllObjects];
      v34[0] = 0;
      v34[1] = v34;
      v34[2] = 0x2020000000;
      v34[3] = 0;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __78__AMSUIMessageViewSolariumLayoutContext__calculateFooterButtonFrames_inFrame___block_invoke_3;
      v26[3] = &unk_1E7F252A0;
      v28 = v34;
      v26[4] = self;
      v29 = x;
      v30 = y;
      v31 = width;
      v32 = height;
      v27 = v11;
      v33 = v13;
      [v10 enumerateObjectsUsingBlock:v26];

      _Block_object_dispose(v34, 8);
    }

    else
    {
      [(AMSUIMessageViewSolariumLayoutContext *)self setIsFooterButtonStacked:0];
    }

    [(AMSUIMessageViewSolariumLayoutContext *)self setTotalFooterButtonHeight:v50[3]];
    _Block_object_dispose(&v45, 8);
    _Block_object_dispose(&v49, 8);
    _Block_object_dispose(v53, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __78__AMSUIMessageViewSolariumLayoutContext__calculateFooterButtonFrames_inFrame___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  [a2 CGRectValue];
  v7 = v6;
  v9 = v8;
  [*(a1 + 32) _footerMinimumHeight];
  if (v9 < v10)
  {
    v9 = v10;
  }

  v11 = *(a1 + 72);
  if (v7 > v11)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
    v11 = v7;
  }

  v12 = *(*(*(a1 + 56) + 8) + 24);
  v13 = *(*(a1 + 64) + 8);
  if (v9 > *(v13 + 24))
  {
    *(v13 + 24) = v9;
  }

  v14 = *(a1 + 40);
  v15 = [MEMORY[0x1E696B098] valueWithCGRect:{v12, 0.0, v11, v9}];
  [v14 addObject:v15];

  *(*(*(a1 + 56) + 8) + 24) = v11 + *(a1 + 80) + *(*(*(a1 + 56) + 8) + 24);
  v16 = *(*(a1 + 64) + 8);
  v17 = *(v16 + 24);
  if (v17 < v9)
  {
    v17 = v9;
  }

  *(v16 + 24) = v17;
}

void __78__AMSUIMessageViewSolariumLayoutContext__calculateFooterButtonFrames_inFrame___block_invoke_2(uint64_t a1, void *a2)
{
  [a2 CGRectValue];
  v4 = a1 + 32;
  v3 = *(a1 + 32);
  v5 = *(*(*(v4 + 8) + 8) + 24);
  v6 = [MEMORY[0x1E696B098] valueWithCGRect:?];
  [v3 addObject:v6];
}

double __78__AMSUIMessageViewSolariumLayoutContext__calculateFooterButtonFrames_inFrame___block_invoke_3(uint64_t a1, void *a2)
{
  [a2 CGRectValue];
  v4 = v3;
  v5 = *(*(*(a1 + 48) + 8) + 24);
  [*(a1 + 32) _footerMinimumHeight];
  if (v4 < v6)
  {
    v4 = v6;
  }

  v7 = *(a1 + 40);
  v8 = [MEMORY[0x1E696B098] valueWithCGRect:{0.0, v5, *(a1 + 72), v4}];
  [v7 addObject:v8];

  v9 = *(*(a1 + 48) + 8);
  result = v4 + *(a1 + 88) + *(v9 + 24);
  *(v9 + 24) = result;
  return result;
}

- (CGRect)calculateHorizontalButtonContainerFrame:(id)a3 inParentFrame:(CGRect)a4
{
  width = a4.size.width;
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = ([v6 count] - 1);
  [(AMSUIMessageViewSolariumLayoutContext *)self _interitemSpacing];
  v9 = v8 * v7;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v42;
    v14 = 0.0;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v41 + 1) + 8 * i) CGRectValue];
        v9 = v9 + v17;
        if (v16 >= v14)
        {
          v14 = v16;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v12);
  }

  else
  {
    v14 = 0.0;
  }

  [(AMSUIMessageViewSolariumLayoutContext *)self topAlignButtonsLayoutMargins];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  if ([(AMSUIMessageViewSolariumLayoutContext *)self _isTopButtonLeading])
  {
    v24 = v21;
  }

  else
  {
    v24 = width - v23 - v9;
  }

  v25 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v26 = [v25 maskShapeView];

  if (v26)
  {
    v27 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
    v28 = [v27 maskShapeView];
    v29 = [v28 arrowDirection];

    v30 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
    v31 = [v30 maskShapeView];
    v32 = v31;
    if (v29 == 1)
    {
      [v31 arrowHeight];
      v19 = v19 + v33;
LABEL_20:

      goto LABEL_21;
    }

    v34 = [v31 arrowDirection];

    if (v34 == 8)
    {
      v30 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
      v32 = [v30 maskShapeView];
      [v32 arrowHeight];
      v24 = v24 - v35;
      goto LABEL_20;
    }
  }

LABEL_21:

  v36 = *MEMORY[0x1E69E9840];
  v37 = v24;
  v38 = v19;
  v39 = v9;
  v40 = v14;
  result.size.height = v40;
  result.size.width = v39;
  result.origin.y = v38;
  result.origin.x = v37;
  return result;
}

- (id)layoutHorizontalButtonsFrames:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x2020000000;
    v17[3] = 0;
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2020000000;
    v16[3] = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __71__AMSUIMessageViewSolariumLayoutContext_layoutHorizontalButtonsFrames___block_invoke;
    v10[3] = &unk_1E7F252C8;
    v15 = 0;
    v13 = v17;
    v14 = v16;
    v7 = v6;
    v11 = v7;
    v12 = self;
    [v5 enumerateObjectsUsingBlock:v10];
    v8 = v7;

    _Block_object_dispose(v16, 8);
    _Block_object_dispose(v17, 8);
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

double __71__AMSUIMessageViewSolariumLayoutContext_layoutHorizontalButtonsFrames___block_invoke(uint64_t a1, void *a2)
{
  [a2 CGRectValue];
  v5 = v3;
  v6 = *(*(*(a1 + 48) + 8) + 24);
  if (*(a1 + 64) == 1)
  {
    v7 = *(*(a1 + 56) + 8);
    if (v4 > *(v7 + 24))
    {
      *(v7 + 24) = v4;
    }
  }

  v8 = *(a1 + 32);
  v9 = [MEMORY[0x1E696B098] valueWithCGRect:{v6, 0.0, v3}];
  [v8 addObject:v9];

  [*(a1 + 40) _interitemSpacing];
  v11 = *(*(a1 + 48) + 8);
  result = v5 + v10 + *(v11 + 24);
  *(v11 + 24) = result;
  return result;
}

- (unint64_t)indexForButton:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v6 = [v5 buttons];
  v7 = [v6 indexOfObject:v4];

  return v7;
}

- (id)framesForButtons:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(AMSUIMessageViewSolariumLayoutContext *)self indexForButton:*(*(&v18 + 1) + 8 * v10), v18];
        v12 = [(AMSUIMessageViewSolariumLayoutContext *)self buttonFrames];
        v13 = [v12 objectAtIndexedSubscript:v11];
        [v5 addObject:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v14 = v5;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)topAlignButtonCandidates
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  if ([(AMSUIMessageViewSolariumLayoutContext *)self isBannerStyle])
  {
    v30 = 0uLL;
    v31 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v4 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
    v5 = [v4 buttons];

    v6 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v29;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v28 + 1) + 8 * i);
          v12 = [v11 configuration];
          v13 = [v12 title];

          if (v13)
          {
            if (v8 < 4)
            {
              [v3 addObject:v11];
              ++v8;
            }

            else
            {
              [v3 removeAllObjects];
            }
          }

          else
          {
            [v3 addObject:v11];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v26 = 0uLL;
    v27 = 0uLL;
    *(&v24 + 1) = 0;
    v25 = 0uLL;
    v14 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
    v5 = [v14 buttons];

    v15 = [v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      while (2)
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v5);
          }

          v19 = *(*(&v24 + 1) + 8 * j);
          v20 = [v19 dialogAction];
          v21 = [v20 style];

          if (v21 == 2)
          {
            [v3 addObject:v19];
            goto LABEL_25;
          }
        }

        v16 = [v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_25:

  v22 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)bottomAlignButtons
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v5 = [v4 buttons];

  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v6;
  v8 = *v18;
  do
  {
    v9 = 0;
    do
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v17 + 1) + 8 * v9);
      if ([(AMSUIMessageViewSolariumLayoutContext *)self isBannerStyle])
      {
        v11 = [v10 configuration];
        v12 = [v11 title];

        if (!v12)
        {
          goto LABEL_9;
        }

LABEL_8:
        [v3 addObject:v10];
        goto LABEL_9;
      }

      if (([v10 isDefaultCloseButton] & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_9:
      ++v9;
    }

    while (v7 != v9);
    v13 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    v7 = v13;
  }

  while (v13);
LABEL_14:

  if (-[AMSUIMessageViewSolariumLayoutContext isBannerStyle](self, "isBannerStyle") && [v3 count] > 4 || !-[AMSUIMessageViewSolariumLayoutContext isBannerStyle](self, "isBannerStyle") && objc_msgSend(v3, "count"))
  {
    v14 = v3;
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (NSDirectionalEdgeInsets)contentLayoutMargins
{
  v3 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v4 = [v3 traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  UIContentSizeCategoryIsAccessibilityCategory(v5);

  v6 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v7 = [v6 style];

  if (v7 > 4)
  {
    v9 = 16.0;
    if (v7 == 5)
    {
      v10 = 16.0;
    }

    else
    {
      if (v7 != 6)
      {
        goto LABEL_14;
      }

      v10 = 22.0;
    }

    v11 = 16.0;
    goto LABEL_18;
  }

  if (v7 < 2 || v7 == 4)
  {
    v8 = [(AMSUIMessageViewSolariumLayoutContext *)self isTopAlignedTextButtonAllowed];
    v9 = 12.0;
    if (v8)
    {
      v10 = 12.0;
    }

    else
    {
      v10 = 14.0;
    }

    v11 = 9.0;
    if (!v8)
    {
      v11 = 12.0;
    }

    goto LABEL_18;
  }

LABEL_14:
  if ([(AMSUIMessageViewSolariumLayoutContext *)self _isVisionNative])
  {
    v9 = 12.0;
  }

  else
  {
    v9 = 22.0;
  }

  v10 = v9;
  v11 = v9;
LABEL_18:
  v12 = v11;
  result.trailing = v9;
  result.bottom = v12;
  result.leading = v10;
  result.top = v11;
  return result;
}

- (NSDirectionalEdgeInsets)topAlignButtonsLayoutMargins
{
  [(AMSUIMessageViewSolariumLayoutContext *)self contentLayoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(AMSUIMessageViewSolariumLayoutContext *)self isBubbleTipStyle])
  {
    v10 = 16.0;
    if ([(AMSUIMessageViewSolariumLayoutContext *)self _isVisionNative])
    {
      v6 = 12.0;
    }

    else
    {
      v6 = 16.0;
    }

    v4 = 16.0;
  }

  else if ([(AMSUIMessageViewSolariumLayoutContext *)self isBannerStyle])
  {
    if ([(AMSUIMessageViewSolariumLayoutContext *)self shouldUseStackedAXLayout])
    {
      v10 = 10.0;
    }

    else
    {
      v10 = 12.0;
    }

    v4 = v10;
  }

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.trailing = v14;
  result.bottom = v13;
  result.leading = v12;
  result.top = v11;
  return result;
}

- (CGPoint)textViewOrigin
{
  [(AMSUIMessageViewSolariumLayoutContext *)self contentLayoutMargins];
  v4 = v3;
  v5 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v6 = [v5 textView];
  [v6 textContainerInset];
  v8 = v7;

  if ([(AMSUIMessageViewSolariumLayoutContext *)self shouldUseStackedAXLayout]&& ![(AMSUIMessageViewSolariumLayoutContext *)self isImageViewHidden])
  {
    [(AMSUIMessageViewSolariumLayoutContext *)self imageViewFrame];
    v10 = v9;
    [(AMSUIMessageViewSolariumLayoutContext *)self imageViewFrame];
    v12 = v10 + v11;
    [(AMSUIMessageViewSolariumLayoutContext *)self _imageToLabelSpacing];
    v4 = v13 + v12;
  }

  v14 = v4 - v8;
  [(AMSUIMessageViewSolariumLayoutContext *)self leadingContentTextBaseline];
  v16 = v15;
  v17 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v18 = [v17 maskShapeView];

  if (v18)
  {
    v19 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
    v20 = [v19 maskShapeView];
    v21 = [v20 arrowDirection];

    v22 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
    v23 = [v22 maskShapeView];
    v24 = v23;
    if (v21 == 1)
    {
      [v23 arrowHeight];
      v14 = v14 + v25;
LABEL_9:

      goto LABEL_10;
    }

    v26 = [v23 arrowDirection];

    if (v26 == 4)
    {
      v22 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
      v24 = [v22 maskShapeView];
      [v24 arrowHeight];
      v16 = v16 + v27;
      goto LABEL_9;
    }
  }

LABEL_10:
  v28 = v16;
  v29 = v14;
  result.y = v29;
  result.x = v28;
  return result;
}

- (CGPoint)imageOrigin
{
  [(AMSUIMessageViewSolariumLayoutContext *)self contentLayoutMargins];
  v4 = v3;
  v6 = v5;
  if ([(AMSUIMessageViewSolariumLayoutContext *)self isBannerStyle])
  {
    if ([(AMSUIMessageViewSolariumLayoutContext *)self shouldUseStackedAXLayout])
    {
      v4 = 10.0;
    }

    else
    {
      v4 = 9.0;
    }
  }

  if ([(AMSUIMessageViewSolariumLayoutContext *)self _isTopButtonLeading])
  {
    v7 = [(AMSUIMessageViewSolariumLayoutContext *)self topButtonFrames];
    v8 = [v7 count];

    if (v8)
    {
      [(AMSUIMessageViewSolariumLayoutContext *)self topAlignButtonLayoutFrame];
      v10 = v9;
      [(AMSUIMessageViewSolariumLayoutContext *)self topAlignButtonLayoutFrame];
      v12 = v10 + v11;
      [(AMSUIMessageViewSolariumLayoutContext *)self _interitemSpacing];
      v6 = v13 + v12;
    }
  }

  v14 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v15 = [v14 maskShapeView];

  if (v15)
  {
    v16 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
    v17 = [v16 maskShapeView];
    v18 = [v17 arrowDirection];

    v19 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
    v20 = [v19 maskShapeView];
    v21 = v20;
    if (v18 == 1)
    {
      [v20 arrowHeight];
      v4 = v4 + v22;
LABEL_13:

      goto LABEL_14;
    }

    v23 = [v20 arrowDirection];

    if (v23 == 4)
    {
      v19 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
      v21 = [v19 maskShapeView];
      [v21 arrowHeight];
      v6 = v6 + v24;
      goto LABEL_13;
    }
  }

LABEL_14:
  v25 = v6;
  v26 = v4;
  result.y = v26;
  result.x = v25;
  return result;
}

- (void)calculateImageViewFrameInParentFrame:(CGRect)a3
{
  height = a3.size.height;
  [(AMSUIMessageViewSolariumLayoutContext *)self imageViewFrame:a3.origin.x];
  v5 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v6 = [v5 style];

  [(AMSUIMessageViewSolariumLayoutContext *)self imageOrigin];
  v8 = v7;
  v10 = v9;
  [(AMSUIMessageViewSolariumLayoutContext *)self _makeImageViewSize];
  v12 = v11;
  v14 = v13;
  if (v6 != 6 || [(AMSUIMessageViewSolariumLayoutContext *)self shouldUseStackedAXLayout])
  {
    goto LABEL_10;
  }

  v15 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v16 = [v15 maskShapeView];

  if (v16)
  {
    v17 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
    v18 = [v17 maskShapeView];
    if ([v18 arrowDirection] == 1)
    {
    }

    else
    {
      v19 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
      v20 = [v19 maskShapeView];
      v21 = [v20 arrowDirection];

      if (v21 != 2)
      {
        goto LABEL_8;
      }
    }

    v22 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
    v23 = [v22 maskShapeView];
    [v23 arrowHeight];
    height = height - v24;
  }

LABEL_8:
  v10 = (height - v14) * 0.5;
  v25 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v26 = [v25 maskShapeView];
  v27 = [v26 arrowDirection];

  if (v27 == 1)
  {
    v28 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
    v29 = [v28 maskShapeView];
    [v29 arrowHeight];
    v10 = v10 + v30;
  }

LABEL_10:

  [(AMSUIMessageViewSolariumLayoutContext *)self setImageViewFrame:v8, v10, v12, v14];
}

- (NSDirectionalEdgeInsets)footerLayoutMargins
{
  v3 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v4 = [v3 traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  UIContentSizeCategoryIsAccessibilityCategory(v5);

  v6 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v7 = [v6 style];

  if (v7 > 3)
  {
    v8 = 16.0;
    if (v7 == 6)
    {
      v10 = 22.0;
      v9 = 16.0;
      goto LABEL_10;
    }

    if (v7 == 5)
    {
LABEL_14:
      [(AMSUIMessageViewSolariumLayoutContext *)self _scaledUIValueForValue:v8];
      v11 = v12;
      [(AMSUIMessageViewSolariumLayoutContext *)self _scaledUIValueForValue:v8];
      v9 = v13;
      [(AMSUIMessageViewSolariumLayoutContext *)self _scaledUIValueForValue:v8];
      v10 = v14;
      [(AMSUIMessageViewSolariumLayoutContext *)self _scaledUIValueForValue:v8];
      v8 = v15;
      goto LABEL_15;
    }

    if (v7 != 4)
    {
LABEL_11:
      if ([(AMSUIMessageViewSolariumLayoutContext *)self _isVisionNative])
      {
        v8 = 12.0;
      }

      else
      {
        v8 = 22.0;
      }

      goto LABEL_14;
    }
  }

  else if (v7 >= 2)
  {
    if ((v7 - 2) < 2)
    {
      v8 = 16.0;
      v9 = 16.0;
      v10 = 16.0;
LABEL_10:
      v11 = 16.0;
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v8 = 12.0;
  v9 = 12.0;
  v10 = 12.0;
  v11 = 12.0;
LABEL_15:
  v16 = v11;
  v17 = v10;
  v18 = v9;
  v19 = v8;
  result.trailing = v19;
  result.bottom = v18;
  result.leading = v17;
  result.top = v16;
  return result;
}

- (CGSize)_makeImageViewSize
{
  [(AMSUIMessageViewSolariumLayoutContext *)self _imageLength];
  v4 = v3;
  v5 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v6 = [v5 imageView];
  v7 = [v6 image];

  v8 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  LODWORD(v6) = [v8 preLayoutImageView];

  if (v6 && !v7)
  {
    goto LABEL_8;
  }

  if (!v7)
  {
    v9 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
    v10 = [v9 micaPlayer];

    if (!v10)
    {
      v4 = *MEMORY[0x1E695F060];
      v14 = *(MEMORY[0x1E695F060] + 8);
      goto LABEL_9;
    }
  }

  v11 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v12 = [v11 micaPlayer];

  if (v12 || ![(AMSUIMessageViewSolariumLayoutContext *)self isBannerStyle])
  {
LABEL_8:
    v14 = v4;
  }

  else
  {
    [(AMSUIMessageViewSolariumLayoutContext *)self _scaledUIValueForValue:v4];
    v4 = v13;
    v14 = v13;
  }

LABEL_9:

  v15 = v4;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (unint64_t)effectiveImageStyle
{
  v3 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v4 = [v3 imageStyle];

  if (!v4)
  {
    return 1;
  }

  v5 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v6 = [v5 imageStyle];

  return v6;
}

- (BOOL)isBannerStyle
{
  v2 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v3 = [v2 style];

  return v3 < 2 || v3 == 4;
}

- (BOOL)isBubbleTipStyle
{
  v2 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v3 = [v2 style];

  return v3 == 6 || (v3 & 0xFFFFFFFFFFFFFFFELL) == 2;
}

- (double)_footerButtonInterSpacing
{
  v3 = [(AMSUIMessageViewSolariumLayoutContext *)self _isVisionNative];
  result = 4.0;
  if (!v3)
  {
    v5 = [(AMSUIMessageViewSolariumLayoutContext *)self isBannerStyle];
    result = 8.0;
    if (v5)
    {
      return 10.0;
    }
  }

  return result;
}

- (double)_footerButtonSpacing
{
  v3 = [(AMSUIMessageViewSolariumLayoutContext *)self bottomButtonFrames];
  v4 = [v3 count];

  v5 = 0.0;
  if (v4 && ![(AMSUIMessageViewSolariumLayoutContext *)self isTopAlignedTextButtonAllowed])
  {
    v6 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
    v7 = [v6 style];

    if (v7 == 6)
    {
      if ([(AMSUIMessageViewSolariumLayoutContext *)self shouldUseStackedAXLayout])
      {
        return 4.0;
      }

      else
      {
        return 0.0;
      }
    }

    else
    {
      [(AMSUIMessageViewSolariumLayoutContext *)self contentLayoutMargins];
      return v8;
    }
  }

  return v5;
}

- (double)_footerMinimumHeight
{
  v3 = 0.0;
  if ([(AMSUIMessageViewSolariumLayoutContext *)self _isVisionNative])
  {
    return v3;
  }

  v4 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v5 = [v4 style];

  if (v5 == 6)
  {
    return v3;
  }

  v6 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v7 = [v6 style];

  if (v7 == 5)
  {
    return 48.0;
  }

  [(AMSUIMessageViewSolariumLayoutContext *)self _scaledUIValueForValue:30.0];
  return result;
}

- (CGRect)_effectiveTextViewFrame
{
  v3 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v4 = [v3 textView];
  [v4 textContainerInset];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(AMSUIMessageViewSolariumLayoutContext *)self textViewFrame];
  v16 = v15 - (v6 + v10);
  v18 = v17 - (v8 + v12);
  result.size.height = v16;
  result.size.width = v18;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (double)_imageLength
{
  v3 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v4 = [v3 style];

  if (v4 == 6)
  {
    return 41.0;
  }

  v6 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  if ([v6 style] == 3)
  {

    goto LABEL_6;
  }

  v7 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v8 = [v7 style];

  if (v8 == 2)
  {
LABEL_6:
    v9 = [(AMSUIMessageViewSolariumLayoutContext *)self _isSymbolImage];
    result = 64.0;
    if (v9)
    {
      return 41.0;
    }

    return result;
  }

  v10 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v11 = [v10 style];

  if (v11 == 4)
  {
    return 48.0;
  }

  if ([(AMSUIMessageViewSolariumLayoutContext *)self isBannerStyle])
  {
    return 36.0;
  }

  v13 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v14 = [v13 style];

  result = 40.0;
  if (v14 == 5)
  {
    return 38.0;
  }

  return result;
}

- (double)_imageToLabelSpacing
{
  if (![(AMSUIMessageViewSolariumLayoutContext *)self isBannerStyle])
  {
    return 4.0;
  }

  v3 = [(AMSUIMessageViewSolariumLayoutContext *)self shouldUseStackedAXLayout];
  result = 0.0;
  if (!v3)
  {
    return 4.0;
  }

  return result;
}

- (double)_interitemSpacing
{
  if ([(AMSUIMessageViewSolariumLayoutContext *)self isBannerStyle])
  {
    v3 = ![(AMSUIMessageViewSolariumLayoutContext *)self isTopAlignedTextButtonAllowed];
    v4 = 10.0;
    v5 = 6.0;
    goto LABEL_5;
  }

  if ([(AMSUIMessageViewSolariumLayoutContext *)self isBubbleTipStyle])
  {
    v3 = ![(AMSUIMessageViewSolariumLayoutContext *)self _isVisionNative];
    v4 = 12.0;
    v5 = 8.0;
LABEL_5:
    if (!v3)
    {
      v4 = v5;
    }

    goto LABEL_10;
  }

  v6 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v7 = [v6 style];

  v4 = 12.0;
  v5 = 13.0;
  if (v7 == 5)
  {
    v4 = 13.0;
  }

LABEL_10:

  [(AMSUIMessageViewSolariumLayoutContext *)self _scaledUIValueForValue:v4, v5];
  return result;
}

- (BOOL)_isTopButtonLeading
{
  v3 = [(AMSUIMessageViewSolariumLayoutContext *)self _isVisionNative];
  if (v3)
  {

    LOBYTE(v3) = [(AMSUIMessageViewSolariumLayoutContext *)self isBubbleTipStyle];
  }

  return v3;
}

- (BOOL)_isSymbolImage
{
  v3 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  if ([v3 isImageSymbolImage])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
    v6 = [v5 imageView];
    v7 = [v6 image];
    v4 = [v7 isSymbolImage];
  }

  return v4;
}

- (BOOL)_isVisionNative
{
  v2 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v3 = [v2 traitCollection];
  v4 = [v3 userInterfaceIdiom] == 6;

  return v4;
}

- (double)_maxFooterButtonWidthInFrame:(CGRect)a3
{
  width = a3.size.width;
  v30 = *MEMORY[0x1E69E9840];
  if ([(AMSUIMessageViewSolariumLayoutContext *)self isBubbleTipStyle:a3.origin.x]&& [(AMSUIMessageViewSolariumLayoutContext *)self _isVisionNative])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = [(AMSUIMessageViewSolariumLayoutContext *)self buttonFrames];
    v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      v9 = 0.0;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v25 + 1) + 8 * i) CGRectValue];
          if (v11 >= v9)
          {
            v9 = v11;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v7);
    }

    else
    {
      v9 = 0.0;
    }

    goto LABEL_19;
  }

  [(AMSUIMessageViewSolariumLayoutContext *)self footerLayoutMargins];
  v9 = width - v12 - v13;
  v14 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v15 = [v14 maskShapeView];

  if (v15)
  {
    v16 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
    v17 = [v16 maskShapeView];
    if ([v17 arrowDirection] == 4)
    {

LABEL_17:
      v5 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
      v21 = [v5 maskShapeView];
      [v21 arrowHeight];
      v9 = v9 - v22;

LABEL_19:
      goto LABEL_20;
    }

    v18 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
    v19 = [v18 maskShapeView];
    v20 = [v19 arrowDirection];

    if (v20 == 8)
    {
      goto LABEL_17;
    }
  }

LABEL_20:
  v23 = *MEMORY[0x1E69E9840];
  return v9;
}

- (double)_maxTextContainerWidth
{
  [(AMSUIMessageViewSolariumLayoutContext *)self mainContentFrame];
  v4 = v3;
  [(AMSUIMessageViewSolariumLayoutContext *)self leadingContentTextBaseline];
  v6 = v4 - v5;
  v7 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v8 = [v7 textView];
  [v8 textContainerInset];
  v10 = v6 - v9;

  return v10;
}

- (double)_scaledUIValueForValue:(double)a3
{
  v5 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDD80]];
  v6 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v7 = [v6 traitCollection];
  [v5 scaledValueForValue:v7 compatibleWithTraitCollection:a3];
  v9 = v8;

  return v9;
}

- (BOOL)_shouldTextViewTextFillUnderCloseButton
{
  v19 = *MEMORY[0x1E69E9840];
  if (-[AMSUIMessageViewSolariumLayoutContext isBannerStyle](self, "isBannerStyle") || (-[AMSUIMessageViewSolariumLayoutContext messageView](self, "messageView"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 style], v3, v4 == 5))
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
    v8 = [v7 buttons];
    v9 = [v8 reverseObjectEnumerator];

    v5 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v9);
          }

          if ([*(*(&v14 + 1) + 8 * i) isDefaultCloseButton])
          {
            LOBYTE(v5) = 1;
            goto LABEL_14;
          }
        }

        v5 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isAXSize
{
  v2 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v3 = [v2 traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  v5 = v4 >= *MEMORY[0x1E69DDC40];

  return v5;
}

- (BOOL)shouldUseStackedAXLayout
{
  if ([(AMSUIMessageViewSolariumLayoutContext *)self isBannerStyle])
  {
    v3 = [(AMSUIMessageViewSolariumLayoutContext *)self isAXSize];
    if (v3)
    {

      LOBYTE(v3) = [(AMSUIMessageViewSolariumLayoutContext *)self shouldLayoutAXStackedEffective];
    }
  }

  else
  {
    v4 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
    v5 = [v4 traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v6);

    LOBYTE(v3) = IsAccessibilityCategory;
  }

  return v3;
}

- (double)accessorySpacing
{
  v2 = [(AMSUIMessageViewSolariumLayoutContext *)self isBannerStyle];
  result = 16.0;
  if (v2)
  {
    return 10.0;
  }

  return result;
}

- (BOOL)isImageViewHidden
{
  v3 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v4 = [v3 imageView];
  v5 = [v4 image];
  if (v5)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v7 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
    v6 = [v7 preLayoutImageView] ^ 1;
  }

  return v6;
}

- (double)leadingContentTextBaseline
{
  if (![(AMSUIMessageViewSolariumLayoutContext *)self shouldUseStackedAXLayout])
  {
    if ([(AMSUIMessageViewSolariumLayoutContext *)self isImageViewHidden])
    {
      if (![(AMSUIMessageViewSolariumLayoutContext *)self _isTopButtonLeading])
      {
        v3 = 22.0;
        if ([(AMSUIMessageViewSolariumLayoutContext *)self isBannerStyle])
        {
          goto LABEL_9;
        }

        goto LABEL_3;
      }

      [(AMSUIMessageViewSolariumLayoutContext *)self topAlignButtonLayoutFrame];
      v6 = v5 + 0.0;
      [(AMSUIMessageViewSolariumLayoutContext *)self topAlignButtonLayoutFrame];
    }

    else
    {
      [(AMSUIMessageViewSolariumLayoutContext *)self imageViewFrame];
      v6 = v8 + 0.0;
      [(AMSUIMessageViewSolariumLayoutContext *)self imageViewFrame];
    }

    v9 = v6 + v7;
    [(AMSUIMessageViewSolariumLayoutContext *)self _interitemSpacing];
    v3 = v10 + v9;
    goto LABEL_9;
  }

  v3 = 16.0;
  if (![(AMSUIMessageViewSolariumLayoutContext *)self isBannerStyle])
  {
LABEL_3:
    [(AMSUIMessageViewSolariumLayoutContext *)self contentLayoutMargins];
    v3 = v4;
  }

LABEL_9:
  v11 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v12 = [v11 textView];
  [v12 textContainerInset];
  v14 = v3 - v13;

  return v14;
}

- (unint64_t)numberOfTextLines
{
  v3 = objc_alloc_init(MEMORY[0x1E69DB828]);
  v4 = objc_alloc(MEMORY[0x1E69DB800]);
  [(AMSUIMessageViewSolariumLayoutContext *)self textViewFrame];
  v7 = [v4 initWithSize:{v5, v6}];
  [v3 setTextContainer:v7];
  v8 = [(AMSUIMessageViewSolariumLayoutContext *)self messageView];
  v9 = [v8 textView];
  v10 = [v9 textLayoutManager];
  v11 = [v10 textContentManager];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  [v12 addTextLayoutManager:v3];
  v13 = [v3 textContentManager];
  v14 = [v13 documentRange];

  [v3 ensureLayoutForRange:v14];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __58__AMSUIMessageViewSolariumLayoutContext_numberOfTextLines__block_invoke;
  v18[3] = &unk_1E7F252F0;
  v18[4] = &v19;
  v15 = [v3 enumerateTextLayoutFragmentsFromLocation:0 options:0 usingBlock:v18];
  v16 = v20[3];
  _Block_object_dispose(&v19, 8);

  return v16;
}

uint64_t __58__AMSUIMessageViewSolariumLayoutContext_numberOfTextLines__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 textLineFragments];
  *(*(*(a1 + 32) + 8) + 24) += [v3 count];

  return 1;
}

- (double)totalFooterButtonHeight
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = [(AMSUIMessageViewSolariumLayoutContext *)self bottomButtonFrames];
  v4 = 0.0;
  if (v3)
  {
    v5 = v3;
    v6 = [(AMSUIMessageViewSolariumLayoutContext *)self bottomButtonFrames];
    v7 = [v6 count];

    if (v7)
    {
      if ([(AMSUIMessageViewSolariumLayoutContext *)self isFooterButtonStacked])
      {
        [(AMSUIMessageViewSolariumLayoutContext *)self _footerButtonInterSpacing];
        v9 = v8;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v10 = [(AMSUIMessageViewSolariumLayoutContext *)self bottomButtonFrames];
        v11 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v30;
          v14 = 0.0;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v30 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [*(*(&v29 + 1) + 8 * i) CGRectValue];
              v14 = v14 + v9 + v16;
            }

            v12 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
          }

          while (v12);
        }

        else
        {
          v14 = 0.0;
        }

        v4 = v14 - v9;
      }

      else
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v17 = [(AMSUIMessageViewSolariumLayoutContext *)self bottomButtonFrames];
        v18 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v26;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v26 != v20)
              {
                objc_enumerationMutation(v17);
              }

              [*(*(&v25 + 1) + 8 * j) CGRectValue];
              if (v4 < v22)
              {
                v4 = v22;
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v19);
        }
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return v4;
}

- (CGRect)accessoryViewFrame
{
  x = self->_accessoryViewFrame.origin.x;
  y = self->_accessoryViewFrame.origin.y;
  width = self->_accessoryViewFrame.size.width;
  height = self->_accessoryViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)accessorySecondaryViewFrame
{
  x = self->_accessorySecondaryViewFrame.origin.x;
  y = self->_accessorySecondaryViewFrame.origin.y;
  width = self->_accessorySecondaryViewFrame.size.width;
  height = self->_accessorySecondaryViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)debugButtonFrame
{
  x = self->_debugButtonFrame.origin.x;
  y = self->_debugButtonFrame.origin.y;
  width = self->_debugButtonFrame.size.width;
  height = self->_debugButtonFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)debugButtonSize
{
  width = self->_debugButtonSize.width;
  height = self->_debugButtonSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)imageViewFrame
{
  x = self->_imageViewFrame.origin.x;
  y = self->_imageViewFrame.origin.y;
  width = self->_imageViewFrame.size.width;
  height = self->_imageViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)maskViewFrame
{
  x = self->_maskViewFrame.origin.x;
  y = self->_maskViewFrame.origin.y;
  width = self->_maskViewFrame.size.width;
  height = self->_maskViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)textViewFrame
{
  x = self->_textViewFrame.origin.x;
  y = self->_textViewFrame.origin.y;
  width = self->_textViewFrame.size.width;
  height = self->_textViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)topAlignButtonLayoutFrame
{
  x = self->_topAlignButtonLayoutFrame.origin.x;
  y = self->_topAlignButtonLayoutFrame.origin.y;
  width = self->_topAlignButtonLayoutFrame.size.width;
  height = self->_topAlignButtonLayoutFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)footerContainerViewFrame
{
  x = self->_footerContainerViewFrame.origin.x;
  y = self->_footerContainerViewFrame.origin.y;
  width = self->_footerContainerViewFrame.size.width;
  height = self->_footerContainerViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)lastFittingSize
{
  width = self->_lastFittingSize.width;
  height = self->_lastFittingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)lastMessageViewFrame
{
  x = self->_lastMessageViewFrame.origin.x;
  y = self->_lastMessageViewFrame.origin.y;
  width = self->_lastMessageViewFrame.size.width;
  height = self->_lastMessageViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)lastSize
{
  width = self->_lastSize.width;
  height = self->_lastSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)mainContentFrame
{
  x = self->_mainContentFrame.origin.x;
  y = self->_mainContentFrame.origin.y;
  width = self->_mainContentFrame.size.width;
  height = self->_mainContentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (AMSUIMessageView)messageView
{
  WeakRetained = objc_loadWeakRetained(&self->_messageView);

  return WeakRetained;
}

- (CGSize)textViewContentHuggingSize
{
  width = self->_textViewContentHuggingSize.width;
  height = self->_textViewContentHuggingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end