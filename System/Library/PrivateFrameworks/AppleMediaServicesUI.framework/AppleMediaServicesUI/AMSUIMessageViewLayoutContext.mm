@interface AMSUIMessageViewLayoutContext
- (AMSUIMessageView)messageView;
- (AMSUIMessageViewLayoutContext)initWithMessageView:(id)view;
- (BOOL)_isAccessoryViewLeading;
- (BOOL)_isFooterButtonPartOfContentFrame;
- (BOOL)_isIconImageTopAligned;
- (BOOL)_isSymbolImage;
- (BOOL)_isTextOnlyBanner;
- (BOOL)_shouldOffsetFooterButtonFromMainContentView;
- (BOOL)_shouldTextViewTextFillUnderCloseButton;
- (BOOL)isImageViewHidden;
- (BOOL)shouldUseStackedLayout;
- (CGRect)_effectiveTextViewFrame;
- (CGRect)accessorySecondaryViewFrame;
- (CGRect)accessoryViewFrame;
- (CGRect)debugButtonFrame;
- (CGRect)footerContainerViewFrame;
- (CGRect)imageViewFrame;
- (CGRect)lastMessageViewFrame;
- (CGRect)mainContentFrame;
- (CGRect)maskViewFrame;
- (CGRect)textViewFrame;
- (CGSize)_contentSizeThatFits:(CGRect)fits;
- (CGSize)_makeImageViewSize;
- (CGSize)contentSize;
- (CGSize)debugButtonSize;
- (CGSize)lastFittingSize;
- (CGSize)lastSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)textViewContentHuggingSize;
- (NSDirectionalEdgeInsets)contentLayoutMargins;
- (double)_bannerMaxTextWidth;
- (double)_bottomFooterSpacing;
- (double)_footerButtonSpacing;
- (double)_footerMinimumHeight;
- (double)_imageLength;
- (double)_imageToLabelSpacing;
- (double)_interitemSpacing;
- (double)_maxFooterButtonWidth;
- (double)_maxTextContainerWidth;
- (double)_scaledUIValueForValue:(double)value;
- (double)leadingContentTextBaseline;
- (double)separatorThickness;
- (double)totalFooterButtonHeight;
- (unint64_t)effectiveImageStyle;
- (void)_calculateFooterButtonSizes;
- (void)_updateWithRootFrame:(CGRect)frame;
- (void)calculateAccessorySecondaryViewFrame;
- (void)calculateAccessorySecondaryViewSize;
- (void)calculateAccessoryViewFrame;
- (void)calculateAccessoryViewSize;
- (void)calculateMainContentFrameRootFrame:(CGRect)frame;
- (void)calculateTextViewExclusionFrame;
- (void)calculateTextViewSizeInFrame:(CGRect)frame dirty:(BOOL)dirty;
- (void)invalidate;
- (void)layoutSubviewFrames;
@end

@implementation AMSUIMessageViewLayoutContext

- (AMSUIMessageViewLayoutContext)initWithMessageView:(id)view
{
  viewCopy = view;
  v17.receiver = self;
  v17.super_class = AMSUIMessageViewLayoutContext;
  v5 = [(AMSUIMessageViewLayoutContext *)&v17 init];
  v6 = v5;
  if (v5)
  {
    v15 = *(MEMORY[0x1E695F058] + 16);
    v16 = *MEMORY[0x1E695F058];
    v5->_accessoryViewFrame.origin = *MEMORY[0x1E695F058];
    v5->_accessoryViewFrame.size = v15;
    v5->_debugButtonFrame.origin = v16;
    v5->_debugButtonFrame.size = v15;
    v14 = *MEMORY[0x1E695F060];
    v5->_contentSize = *MEMORY[0x1E695F060];
    array = [MEMORY[0x1E695DF70] array];
    footerButtonFrames = v6->_footerButtonFrames;
    v6->_footerButtonFrames = array;

    array2 = [MEMORY[0x1E695DF70] array];
    footerButtonFramesPreFlatten = v6->_footerButtonFramesPreFlatten;
    v6->_footerButtonFramesPreFlatten = array2;

    v6->_footerContainerViewFrame.origin = v16;
    v6->_footerContainerViewFrame.size = v15;
    v6->_imageViewFrame.origin = v16;
    v6->_imageViewFrame.size = v15;
    v6->_isDirty = 1;
    v6->_lastFittingSize = v14;
    v6->_lastSize = v14;
    v6->_lastMessageViewFrame.origin = v16;
    v6->_lastMessageViewFrame.size = v15;
    v6->_mainContentFrame.origin = v16;
    v6->_mainContentFrame.size = v15;
    v6->_maskViewFrame.origin = v16;
    v6->_maskViewFrame.size = v15;
    objc_storeWeak(&v6->_messageView, viewCopy);
    array3 = [MEMORY[0x1E695DF70] array];
    separatorViewFrames = v6->_separatorViewFrames;
    v6->_separatorViewFrames = array3;

    v6->_textViewFrame.origin = v16;
    v6->_textViewFrame.size = v15;
  }

  return v6;
}

- (void)invalidate
{
  [(AMSUIMessageViewLayoutContext *)self setIsDirty:1];
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);

  [(AMSUIMessageViewLayoutContext *)self setLastFittingSize:v3, v4];
}

- (void)layoutSubviewFrames
{
  messageView = [(AMSUIMessageViewLayoutContext *)self messageView];
  [messageView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(AMSUIMessageViewLayoutContext *)self contentSize];
  if (v13 == *MEMORY[0x1E695F060] && v12 == *(MEMORY[0x1E695F060] + 8))
  {
    [(AMSUIMessageViewLayoutContext *)self setContentSize:v9, v11];
  }

  messageView2 = [(AMSUIMessageViewLayoutContext *)self messageView];
  isSizing = [messageView2 isSizing];

  if (isSizing)
  {
    [(AMSUIMessageViewLayoutContext *)self lastSize];
    v9 = v17;
    v11 = v18;
  }

  [(AMSUIMessageViewLayoutContext *)self lastMessageViewFrame];
  v21.origin.x = v5;
  v21.origin.y = v7;
  v21.size.width = v9;
  v21.size.height = v11;
  if (!CGRectEqualToRect(v20, v21))
  {
    [(AMSUIMessageViewLayoutContext *)self setIsDirty:1];
    [(AMSUIMessageViewLayoutContext *)self _contentSizeThatFits:v5, v7, v9, v11];
    [(AMSUIMessageViewLayoutContext *)self setContentSize:?];
  }

  [(AMSUIMessageViewLayoutContext *)self _updateWithRootFrame:v5, v7, v9, v11];

  [(AMSUIMessageViewLayoutContext *)self setLastMessageViewFrame:v5, v7, v9, v11];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(AMSUIMessageViewLayoutContext *)self lastFittingSize];
  if (width == v7 && height == v6)
  {
    [(AMSUIMessageViewLayoutContext *)self lastSize];
    width = v11;
    height = v12;
  }

  else
  {
    [(AMSUIMessageViewLayoutContext *)self setLastFittingSize:width, height];
    if (height > 5000.0)
    {
      height = 5000.0;
    }

    if (width > 5000.0)
    {
      width = 5000.0;
    }

    [(AMSUIMessageViewLayoutContext *)self _contentSizeThatFits:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), width, height];
    if (v9 < width)
    {
      width = v9;
    }

    if (v10 < height)
    {
      height = v10;
    }

    [(AMSUIMessageViewLayoutContext *)self setLastSize:width, height];
  }

  v13 = width;
  v14 = height;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)_contentSizeThatFits:(CGRect)fits
{
  height = fits.size.height;
  width = fits.size.width;
  y = fits.origin.y;
  x = fits.origin.x;
  messageView = [(AMSUIMessageViewLayoutContext *)self messageView];
  style = [messageView style];
  [(AMSUIMessageViewLayoutContext *)self setIsDirty:1];
  [(AMSUIMessageViewLayoutContext *)self _updateWithRootFrame:x, y, width, height];
  [(AMSUIMessageViewLayoutContext *)self _effectiveTextViewFrame];
  v11 = v10;
  if ([(AMSUIMessageViewLayoutContext *)self _isFooterButtonPartOfContentFrame])
  {
    [(AMSUIMessageViewLayoutContext *)self footerContainerViewFrame];
    v11 = v11 + v12;
  }

  if (![(AMSUIMessageViewLayoutContext *)self isImageViewHidden])
  {
    [(AMSUIMessageViewLayoutContext *)self _makeImageViewSize];
    v14 = v13;
    if ([(AMSUIMessageViewLayoutContext *)self shouldUseStackedLayout])
    {
      textView = [messageView textView];
      hasText = [textView hasText];
      v17 = 0.0;
      if (hasText)
      {
        [(AMSUIMessageViewLayoutContext *)self _imageToLabelSpacing];
      }

      v11 = v11 + v14 + v17;
    }

    else if (style == 5)
    {
      if (v14 + 10.0 + 10.0 >= v11)
      {
        v11 = v14 + 10.0 + 10.0;
      }
    }

    else if (v14 >= v11)
    {
      v11 = v14;
    }
  }

  accessorySecondaryView = [messageView accessorySecondaryView];

  if (accessorySecondaryView)
  {
    [(AMSUIMessageViewLayoutContext *)self accessorySecondaryViewFrame];
    if (v19 >= v11)
    {
      v11 = v19;
    }
  }

  [(AMSUIMessageViewLayoutContext *)self contentLayoutMargins];
  v21 = v20;
  v23 = v11 + v22;
  footerButtonFrames = [(AMSUIMessageViewLayoutContext *)self footerButtonFrames];
  v25 = [footerButtonFrames count];
  v26 = 0.0;
  v27 = 0.0;
  if (v25)
  {
    [(AMSUIMessageViewLayoutContext *)self _footerButtonSpacing];
  }

  v28 = v23 + v27;
  if (![(AMSUIMessageViewLayoutContext *)self _isFooterButtonPartOfContentFrame])
  {
    [(AMSUIMessageViewLayoutContext *)self footerContainerViewFrame];
    v26 = v29;
  }

  v30 = v21 + v28 + v26;

  maskShapeView = [messageView maskShapeView];

  if (maskShapeView)
  {
    maskShapeView2 = [messageView maskShapeView];
    if ([maskShapeView2 arrowDirection] == 1)
    {
    }

    else
    {
      maskShapeView3 = [messageView maskShapeView];
      arrowDirection = [maskShapeView3 arrowDirection];

      if (arrowDirection != 2)
      {
        goto LABEL_26;
      }
    }

    messageView2 = [(AMSUIMessageViewLayoutContext *)self messageView];
    maskShapeView4 = [messageView2 maskShapeView];
    [maskShapeView4 arrowHeight];
    v30 = v30 + v37;
  }

LABEL_26:
  if (style == 1)
  {
    traitCollection = [messageView traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];

    v40 = 76.0;
    if (v30 >= 76.0)
    {
      v40 = v30;
    }

    v41 = 60.0;
    if (v30 >= 60.0)
    {
      v41 = v30;
    }

    if (horizontalSizeClass == 2)
    {
      v30 = v40;
    }

    else
    {
      v30 = v41;
    }
  }

  else if (v30 < 60.0)
  {
    v30 = 60.0;
  }

  v42 = width;
  v43 = v30;
  result.height = v43;
  result.width = v42;
  return result;
}

- (void)_updateWithRootFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v384 = *MEMORY[0x1E69E9840];
  [(AMSUIMessageViewLayoutContext *)self calculateMainContentFrameRootFrame:?];
  if ([(AMSUIMessageViewLayoutContext *)self isDirty])
  {
    [(AMSUIMessageViewLayoutContext *)self calculateAccessoryViewSize];
    [(AMSUIMessageViewLayoutContext *)self calculateAccessorySecondaryViewSize];
  }

  [(AMSUIMessageViewLayoutContext *)self calculateAccessoryViewFrame];
  [(AMSUIMessageViewLayoutContext *)self calculateAccessorySecondaryViewFrame];
  v325 = height;
  [(AMSUIMessageViewLayoutContext *)self calculateTextViewSizeInFrame:[(AMSUIMessageViewLayoutContext *)self isDirty] dirty:x, y, width, height];
  [(AMSUIMessageViewLayoutContext *)self _calculateFooterButtonSizes];
  [(AMSUIMessageViewLayoutContext *)self setIsDirty:0];
  [(AMSUIMessageViewLayoutContext *)self imageViewFrame];
  [(AMSUIMessageViewLayoutContext *)self maskViewFrame];
  [(AMSUIMessageViewLayoutContext *)self textViewFrame];
  v9 = v8;
  v11 = v10;
  v356 = v12;
  v14 = v13;
  [(AMSUIMessageViewLayoutContext *)self _effectiveTextViewFrame];
  v367 = v15;
  v370 = v16;
  [(AMSUIMessageViewLayoutContext *)self accessoryViewFrame];
  v344 = v18;
  v346 = v17;
  v340 = v20;
  v342 = v19;
  [(AMSUIMessageViewLayoutContext *)self accessorySecondaryViewFrame];
  v334 = v22;
  v336 = v21;
  v24 = v23;
  v330 = v25;
  array = [MEMORY[0x1E695DF70] array];
  footerButtonFramesPreFlatten = [(AMSUIMessageViewLayoutContext *)self footerButtonFramesPreFlatten];
  [(AMSUIMessageViewLayoutContext *)self debugButtonSize];
  v28 = v27;
  v338 = v29;
  [(AMSUIMessageViewLayoutContext *)self accessorySpacing];
  v324 = v30;
  messageView = [(AMSUIMessageViewLayoutContext *)self messageView];
  buttons = [messageView buttons];

  _isAccessoryViewLeading = [(AMSUIMessageViewLayoutContext *)self _isAccessoryViewLeading];
  messageView2 = [(AMSUIMessageViewLayoutContext *)self messageView];
  traitCollection = [messageView2 traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  isImageViewHidden = [(AMSUIMessageViewLayoutContext *)self isImageViewHidden];
  [(AMSUIMessageViewLayoutContext *)self leadingContentTextBaseline];
  v38 = v37;
  shouldUseStackedLayout = [(AMSUIMessageViewLayoutContext *)self shouldUseStackedLayout];
  messageView3 = [(AMSUIMessageViewLayoutContext *)self messageView];
  style = [messageView3 style];

  [(AMSUIMessageViewLayoutContext *)self totalFooterButtonHeight];
  v43 = v42;
  v352 = *MEMORY[0x1E695EFF8];
  v362 = *(MEMORY[0x1E695EFF8] + 8);
  [(AMSUIMessageViewLayoutContext *)self _makeImageViewSize];
  v45 = v44;
  v360 = v46;
  messageView4 = [(AMSUIMessageViewLayoutContext *)self messageView];
  [messageView4 accessoryView];

  v358 = v45;
  if (!shouldUseStackedLayout)
  {
    _isIconImageTopAligned = [(AMSUIMessageViewLayoutContext *)self _isIconImageTopAligned];
    v49 = _isIconImageTopAligned;
    if (!style)
    {
      v58 = buttons;
      v59 = shouldUseStackedLayout;
      v60 = _isAccessoryViewLeading;
      v61 = isImageViewHidden;
      v328 = v14;
      messageView5 = [(AMSUIMessageViewLayoutContext *)self messageView];
      traitCollection2 = [messageView5 traitCollection];
      userInterfaceIdiom = [traitCollection2 userInterfaceIdiom];

      if (userInterfaceIdiom == 1)
      {
        [(AMSUIMessageViewLayoutContext *)self contentLayoutMargins];
        v352 = 15.0 - v65;
        v52 = 0.0;
        isImageViewHidden = v61;
        _isAccessoryViewLeading = v60;
        shouldUseStackedLayout = v59;
        buttons = v58;
        style = 0;
        if (v49)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v52 = 11.0;
        isImageViewHidden = v61;
        _isAccessoryViewLeading = v60;
        shouldUseStackedLayout = v59;
        buttons = v58;
        style = 0;
        if (v49)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_26;
    }

    if ((style & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v326 = v38;
      v328 = v14;
      v50 = v28;
      effectiveImageStyle = [(AMSUIMessageViewLayoutContext *)self effectiveImageStyle];
      if (effectiveImageStyle == 2)
      {
        v52 = 15.0;
      }

      else
      {
        v52 = 11.0;
      }

      v53 = effectiveImageStyle == 2 || v49;
      [(AMSUIMessageViewLayoutContext *)self mainContentFrame];
      v55 = v54;
      _isSymbolImage = [(AMSUIMessageViewLayoutContext *)self _isSymbolImage];
      v57 = v360 + v52 < v55 && _isSymbolImage;
      v28 = v50;
      if (v53)
      {
        v38 = v326;
LABEL_28:
        [(AMSUIMessageViewLayoutContext *)self _scaledUIValueForValue:v52];
        v362 = v82;
        v14 = v328;
LABEL_29:
        [(AMSUIMessageViewLayoutContext *)self contentLayoutMargins];
        v362 = v362 - v83;
        goto LABEL_30;
      }

      v38 = v326;
      if (v57)
      {
        goto LABEL_28;
      }

LABEL_26:
      messageView6 = [(AMSUIMessageViewLayoutContext *)self messageView];
      imageView = [messageView6 imageView];
      [imageView alignmentRectInsets];

      messageView7 = [(AMSUIMessageViewLayoutContext *)self messageView];
      imageView2 = [messageView7 imageView];
      [imageView2 alignmentRectForFrame:{v352, v362, v45, v360}];
      v73 = v72;
      v74 = v38;
      v75 = v11;
      v76 = v9;
      v77 = v28;
      v79 = v78;

      [(AMSUIMessageViewLayoutContext *)self mainContentFrame];
      v81 = v80 - v79;
      v28 = v77;
      v9 = v76;
      v11 = v75;
      v38 = v74;
      v362 = v81 * 0.5 - v73;
      v14 = v328;
      goto LABEL_30;
    }

    if (!_isIconImageTopAligned)
    {
      v328 = v14;
      goto LABEL_26;
    }

    v66 = 11.0;
    if (style == 5)
    {
      v66 = 10.0;
    }

    [(AMSUIMessageViewLayoutContext *)self _scaledUIValueForValue:v66];
    v362 = v67;
    if (style != 5)
    {
      goto LABEL_29;
    }
  }

LABEL_30:
  v84 = v28;
  v85 = MEMORY[0x1E695F058];
  v86 = v24;
  if (buttons)
  {
    [(AMSUIMessageViewLayoutContext *)self _maxFooterButtonWidth];
  }

  else
  {
    v87 = *(MEMORY[0x1E695F058] + 16);
    v43 = *(MEMORY[0x1E695F058] + 24);
  }

  v373 = v87;
  v88 = *v85;
  v348 = v85[1];
  v89 = 0x1E7F22000uLL;
  v329 = *v85;
  if (![(AMSUIMessageViewLayoutContext *)self _isFooterButtonPartOfContentFrame])
  {
    messageView8 = [(AMSUIMessageViewLayoutContext *)self messageView];
    textView = [messageView8 textView];
    [textView textContainerInset];
    v100 = v99;
    v101 = -v99;

    if ([(AMSUIMessageViewLayoutContext *)self _isTextOnlyBanner])
    {
      [(AMSUIMessageViewLayoutContext *)self mainContentFrame];
      v103 = (v102 - v367) * 0.5;
      messageView9 = [(AMSUIMessageViewLayoutContext *)self messageView];
      accessoryView = [messageView9 accessoryView];

      if (accessoryView)
      {
        v327 = v38;
        [(AMSUIMessageViewLayoutContext *)self accessorySpacing];
        v385.origin.x = v103;
        v106 = v101;
        v385.origin.y = v101;
        v385.size.width = v356;
        v385.size.height = v14;
        v387.size.width = v344;
        v387.origin.x = v346;
        v387.size.height = v340;
        v387.origin.y = v342;
        v386 = CGRectIntersection(v385, v387);
        v107 = v103;
        if (v386.size.width > 0.0)
        {
          v108 = v386.size.width;
          [(AMSUIMessageViewLayoutContext *)self accessorySpacing:v386.origin.x];
          v103 = v107 - (v108 + v109);
        }

        v101 = v106;
        v88 = v329;
        v38 = v327;
      }
    }

    else
    {
      if (!isImageViewHidden && shouldUseStackedLayout)
      {
        [(AMSUIMessageViewLayoutContext *)self _imageToLabelSpacing];
        v101 = v360 + v120 - v100;
      }

      v103 = v38;
    }

    v350 = v103;
    v141 = style == 5 || shouldUseStackedLayout;
    if ((v141 & 1) == 0)
    {
      [(AMSUIMessageViewLayoutContext *)self mainContentFrame];
      v143 = (v142 - v14) * 0.5;
      messageView10 = [(AMSUIMessageViewLayoutContext *)self messageView];
      textView2 = [messageView10 textView];
      [textView2 textContainerInset];
      v101 = -v146;

      if (v143 >= v101)
      {
        v101 = v143;
      }
    }

    v354 = v101;
    if (buttons)
    {
      [(AMSUIMessageViewLayoutContext *)self mainContentFrame];
      if (style != 5)
      {
        v147 = v38 + v147;
      }

      v371 = v147;
      [(AMSUIMessageViewLayoutContext *)self contentSize];
      v149 = v148 - v43;
      [(AMSUIMessageViewLayoutContext *)self _bottomFooterSpacing];
      v95 = v149 - v150;
      if (style == 3)
      {
        v365 = v43;
        v368 = v149 - v150;
        messageView11 = [(AMSUIMessageViewLayoutContext *)self messageView];
        maskShapeView = [messageView11 maskShapeView];
        arrowDirection = [maskShapeView arrowDirection];

        v139 = v338;
        if (arrowDirection == 2)
        {
          messageView12 = [(AMSUIMessageViewLayoutContext *)self messageView];
          maskShapeView2 = [messageView12 maskShapeView];
          [maskShapeView2 arrowHeight];
          v368 = v368 - v156;
        }

        v157 = v86;
        v158 = v14;
        v140 = v362;
LABEL_84:
        v363 = v140;
        v160 = v139;
        v381 = 0u;
        v382 = 0u;
        v379 = 0u;
        v380 = 0u;
        v161 = footerButtonFramesPreFlatten;
        v162 = [v161 countByEnumeratingWithState:&v379 objects:v383 count:16];
        if (v162)
        {
          v163 = v162;
          v164 = *v380;
          do
          {
            for (i = 0; i != v163; ++i)
            {
              if (*v380 != v164)
              {
                objc_enumerationMutation(v161);
              }

              [*(*(&v379 + 1) + 8 * i) CGRectValue];
              v167 = v166;
              v169 = v168;
              v171 = v170;
              [(AMSUIMessageViewLayoutContext *)self separatorThickness];
              v173 = [MEMORY[0x1E696B098] valueWithCGRect:{v167, v169, v171, v172}];
              [array addObject:v173];
            }

            v163 = [v161 countByEnumeratingWithState:&v379 objects:v383 count:16];
          }

          while (v163);
        }

        v89 = 0x1E7F22000;
        v139 = v160;
LABEL_92:
        v159 = v358;
        v140 = v363;
        v91 = v329;
        goto LABEL_95;
      }

      v91 = v88;
      v96 = v371;
      goto LABEL_79;
    }

    goto LABEL_77;
  }

  if (shouldUseStackedLayout)
  {
    if (!isImageViewHidden)
    {
      [(AMSUIMessageViewLayoutContext *)self _imageToLabelSpacing];
      v11 = v11 + v360 + v90;
    }

    v354 = v11;
    v350 = v9;
    if (buttons)
    {
      v91 = v88;
      [(AMSUIMessageViewLayoutContext *)self mainContentFrame];
      v93 = v92;
      [(AMSUIMessageViewLayoutContext *)self _footerButtonSpacing];
      v95 = v14 + v354 + v94;
      v96 = v93;
LABEL_79:
      v139 = v338;
      v140 = v362;
      goto LABEL_80;
    }

LABEL_77:
    v95 = v348;
    v91 = v88;
    v96 = v88;
    goto LABEL_79;
  }

  v321 = isImageViewHidden;
  v322 = v84;
  v110 = *MEMORY[0x1E695F060];
  v111 = *(MEMORY[0x1E695F060] + 8);
  messageView13 = [(AMSUIMessageViewLayoutContext *)self messageView];
  textView3 = [messageView13 textView];
  hasText = [textView3 hasText];

  if (hasText)
  {
    v115 = v370 + v111;
  }

  else
  {
    v115 = v111;
  }

  if (hasText)
  {
    v116 = v367 + v110;
  }

  else
  {
    v116 = v110;
  }

  v117 = _isAccessoryViewLeading;
  if (buttons)
  {
    v118 = v373;
    if (v116 < v373)
    {
      v116 = v373;
    }

    [(AMSUIMessageViewLayoutContext *)self _footerButtonSpacing];
    v115 = v115 + v43 + v119;
  }

  else
  {
    v118 = v373;
  }

  [(AMSUIMessageViewLayoutContext *)self mainContentFrame];
  v122 = v121;
  messageView14 = [(AMSUIMessageViewLayoutContext *)self messageView];
  textView4 = [messageView14 textView];
  [textView4 textContainerInset];

  [(AMSUIMessageViewLayoutContext *)self _footerButtonSpacing];
  v126 = v125;
  messageView15 = [(AMSUIMessageViewLayoutContext *)self messageView];
  textView5 = [messageView15 textView];
  hasText2 = [textView5 hasText];
  v130 = v370 + v126;
  if (buttons)
  {
    v131 = hasText2;
  }

  else
  {
    v131 = 1;
  }

  if (!v131)
  {
    v130 = 0.0;
  }

  [AMSUICGRectHelper flattenRect:"flattenRect:toParentFrame:" toParentFrame:?];
  v350 = v132;
  v354 = v133;
  v356 = v134;
  v135 = v116;
  v14 = v136;
  [AMSUICGRectHelper flattenRect:0.0 toParentFrame:v130, v118, v43, v38, (v122 - v115) * 0.5, v135, v115];
  v373 = v137;
  v43 = v138;
  v84 = v322;
  v139 = v338;
  v140 = v362;
  v91 = v329;
  _isAccessoryViewLeading = v117;
  isImageViewHidden = v321;
LABEL_80:
  v365 = v43;
  v368 = v95;
  v371 = v96;
  if (style - 2 < 2)
  {
    goto LABEL_83;
  }

  if (style == 1)
  {
    if (!isImageViewHidden && !shouldUseStackedLayout)
    {
      [(AMSUIMessageViewLayoutContext *)self contentLayoutMargins];
      v310 = v358 + v309;
      v323 = v86;
      v363 = v140;
      v311 = _isAccessoryViewLeading;
      if ([(AMSUIMessageViewLayoutContext *)self _isSymbolImage])
      {
        [(AMSUIMessageViewLayoutContext *)self _scaledUIValueForValue:16.0];
      }

      else
      {
        [(AMSUIMessageViewLayoutContext *)self _interitemSpacing];
      }

      v313 = v310 + v312;
      [(AMSUIMessageViewLayoutContext *)self separatorThickness];
      v315 = v314;
      messageView16 = [(AMSUIMessageViewLayoutContext *)self messageView];
      accessoryView2 = [messageView16 accessoryView];
      v318 = accessoryView2 != 0;

      v319 = v346 + v344 + v324 + v313;
      if (!v318 || !v311)
      {
        v319 = v313;
      }

      v320 = [MEMORY[0x1E696B098] valueWithCGRect:{v319, (v325 - (v325 + -24.0)) * 0.5, v315, v325 + -24.0}];
      [array addObject:v320];

      v157 = v323;
      v158 = v14;
      v139 = v338;
      goto LABEL_92;
    }
  }

  else if (style == 5)
  {
LABEL_83:
    v157 = v86;
    v158 = v14;
    v159 = v358;
    if (!buttons)
    {
      goto LABEL_95;
    }

    goto LABEL_84;
  }

  v157 = v86;
  v158 = v14;
  v159 = v358;
LABEL_95:
  v174 = *(v89 + 2504);
  [(AMSUIMessageViewLayoutContext *)self mainContentFrame];
  [v174 flattenRect:v352 toParentFrame:{v140, v159, v360, v175, v176, v177, v178}];
  v359 = v179;
  v361 = v180;
  v364 = v181;
  v183 = v182;
  v184 = *(v89 + 2504);
  [(AMSUIMessageViewLayoutContext *)self mainContentFrame];
  [v184 flattenRect:v350 toParentFrame:{v354, v356, v158, v185, v186, v187, v188}];
  v351 = v189;
  v353 = v190;
  v355 = v191;
  v357 = v192;
  v193 = *(v89 + 2504);
  [(AMSUIMessageViewLayoutContext *)self mainContentFrame];
  [v193 flattenRect:v91 toParentFrame:{v348, v84, v139, v194, v195, v196, v197}];
  v199 = v198;
  v201 = v200;
  v203 = v202;
  v205 = v204;
  v206 = *(v89 + 2504);
  [(AMSUIMessageViewLayoutContext *)self mainContentFrame];
  [v206 flattenRect:v346 toParentFrame:{v342, v344, v340, v207, v208, v209, v210}];
  v343 = v211;
  v345 = v212;
  v347 = v213;
  v349 = v214;
  v215 = *(v89 + 2504);
  [(AMSUIMessageViewLayoutContext *)self mainContentFrame];
  [v215 flattenRect:v336 toParentFrame:{v157, v334, v330, v216, v217, v218, v219}];
  v335 = v220;
  v337 = v221;
  v339 = v222;
  v341 = v223;
  if ([(AMSUIMessageViewLayoutContext *)self _shouldOffsetFooterButtonFromMainContentView])
  {
    v224 = *(v89 + 2504);
    [(AMSUIMessageViewLayoutContext *)self mainContentFrame];
    [v224 flattenRect:v371 toParentFrame:{v368, v373, v365, v225, v226, v227, v228}];
    v233 = v232;
    v234 = 0x1E695D000;
  }

  else
  {
    v234 = 0x1E695D000uLL;
    v231 = v373;
    v230 = v368;
    v229 = v371;
    v233 = v365;
  }

  v235 = *(v234 + 3952);
  v378[0] = MEMORY[0x1E69E9820];
  v378[1] = 3221225472;
  v378[2] = __54__AMSUIMessageViewLayoutContext__updateWithRootFrame___block_invoke;
  v378[3] = &__block_descriptor_64_e26___NSValue_16__0__NSValue_8l;
  v369 = v230;
  v372 = v229;
  *&v378[4] = v229;
  *&v378[5] = v230;
  v374 = v231;
  *&v378[6] = v231;
  *&v378[7] = v233;
  v236 = [footerButtonFramesPreFlatten ams_mapWithTransform:v378];
  v237 = [v235 arrayWithArray:v236];

  if (style <= 5 && ((1 << style) & 0x2C) != 0)
  {
    v238 = layoutDirection;
    v239 = v89;
    if (buttons)
    {
      v240 = *(v234 + 3952);
      v377[0] = MEMORY[0x1E69E9820];
      v377[1] = 3221225472;
      v377[2] = __54__AMSUIMessageViewLayoutContext__updateWithRootFrame___block_invoke_2;
      v377[3] = &__block_descriptor_64_e26___NSValue_16__0__NSValue_8l;
      *&v377[4] = v372;
      *&v377[5] = v369;
      *&v377[6] = v374;
      *&v377[7] = v233;
      v241 = [array ams_mapWithTransform:v377];
      v242 = [v240 arrayWithArray:v241];

      array = v242;
    }
  }

  else
  {
    v238 = layoutDirection;
    v239 = v89;
  }

  v243 = v199 + -12.0;
  v244 = v201 + -10.0;
  v366 = v233;
  if (v238 == 1)
  {
    v245 = *(v239 + 2504);
    [(AMSUIMessageViewLayoutContext *)self mainContentFrame];
    [v245 rect:v359 withFlippedOriginXRelativeTo:{v361, v364, v183, v246, v247, v248, v249}];
    v359 = v250;
    v361 = v251;
    v364 = v252;
    v333 = v253;
    v254 = *(v239 + 2504);
    [(AMSUIMessageViewLayoutContext *)self mainContentFrame];
    [v254 rect:v351 withFlippedOriginXRelativeTo:{v353, v355, v357, v255, v256, v257, v258}];
    v351 = v259;
    v353 = v260;
    v355 = v261;
    v357 = v262;
    v263 = *(v239 + 2504);
    [(AMSUIMessageViewLayoutContext *)self mainContentFrame];
    [v263 rect:v343 withFlippedOriginXRelativeTo:{v345, v347, v349, v264, v265, v266, v267}];
    v343 = v268;
    v345 = v269;
    v347 = v270;
    v349 = v271;
    v272 = *(v239 + 2504);
    [(AMSUIMessageViewLayoutContext *)self mainContentFrame];
    [v272 rect:v335 withFlippedOriginXRelativeTo:{v337, v339, v341, v273, v274, v275, v276}];
    v335 = v277;
    v337 = v278;
    v339 = v279;
    v341 = v280;
    v281 = *(v234 + 3952);
    v376[0] = MEMORY[0x1E69E9820];
    v376[1] = 3221225472;
    v376[2] = __54__AMSUIMessageViewLayoutContext__updateWithRootFrame___block_invoke_3;
    v376[3] = &unk_1E7F25200;
    v376[4] = self;
    v282 = [array ams_mapWithTransform:v376];
    v283 = [v281 arrayWithArray:v282];

    v284 = *(v234 + 3952);
    v375[0] = MEMORY[0x1E69E9820];
    v375[1] = 3221225472;
    v375[2] = __54__AMSUIMessageViewLayoutContext__updateWithRootFrame___block_invoke_4;
    v375[3] = &unk_1E7F25200;
    v375[4] = self;
    v285 = [v237 ams_mapWithTransform:v375];
    v286 = [v284 arrayWithArray:v285];

    v287 = *(v239 + 2504);
    [(AMSUIMessageViewLayoutContext *)self mainContentFrame];
    [v287 rect:v199 + -12.0 withFlippedOriginXRelativeTo:{v201 + -10.0, v203, v205, v288, v289, v290, v291}];
    v243 = v292;
    v294 = v293;
    v296 = v295;
    v298 = v297;
    v237 = v286;
    array = v283;
  }

  else
  {
    v333 = v183;
    v296 = v203;
    v298 = v205;
    v294 = v244;
  }

  messageView17 = [(AMSUIMessageViewLayoutContext *)self messageView];
  [messageView17 bounds];
  v301 = v300;
  v303 = v302;
  v305 = v304;
  v307 = v306;

  [(AMSUIMessageViewLayoutContext *)self setImageViewFrame:v359, v361, v364, v333];
  [(AMSUIMessageViewLayoutContext *)self setMaskViewFrame:v301, v303, v305, v307];
  [(AMSUIMessageViewLayoutContext *)self setTextViewFrame:v351, v353, v355, v357];
  [(AMSUIMessageViewLayoutContext *)self setAccessoryViewFrame:v343, v345, v347, v349];
  [(AMSUIMessageViewLayoutContext *)self setAccessorySecondaryViewFrame:v335, v337, v339, v341];
  [(AMSUIMessageViewLayoutContext *)self setSeparatorViewFrames:array];
  [(AMSUIMessageViewLayoutContext *)self setFooterContainerViewFrame:v372, v369, v374, v366];
  [(AMSUIMessageViewLayoutContext *)self setFooterButtonFrames:v237];
  [(AMSUIMessageViewLayoutContext *)self setDebugButtonFrame:v243, v294, v296, v298];

  v308 = *MEMORY[0x1E69E9840];
}

uint64_t __54__AMSUIMessageViewLayoutContext__updateWithRootFrame___block_invoke(void *a1, void *a2)
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

uint64_t __54__AMSUIMessageViewLayoutContext__updateWithRootFrame___block_invoke_2(void *a1, void *a2)
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

uint64_t __54__AMSUIMessageViewLayoutContext__updateWithRootFrame___block_invoke_3(uint64_t a1, void *a2)
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

uint64_t __54__AMSUIMessageViewLayoutContext__updateWithRootFrame___block_invoke_4(uint64_t a1, void *a2)
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

- (void)calculateAccessoryViewFrame
{
  messageView = [(AMSUIMessageViewLayoutContext *)self messageView];
  accessoryView = [messageView accessoryView];

  if (accessoryView)
  {
    [(AMSUIMessageViewLayoutContext *)self accessoryViewFrame];
    v6 = v5;
    v8 = v7;
    messageView2 = [(AMSUIMessageViewLayoutContext *)self messageView];
    accessoryView2 = [messageView2 accessoryView];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = accessoryView2;
    }

    else
    {
      v19 = 0;
    }

    v15 = 0.0;
    v16 = 0.0;
    if (([v19 isDefaultCloseButton] & 1) == 0)
    {
      [(AMSUIMessageViewLayoutContext *)self mainContentFrame];
      v16 = (v17 - v8) * 0.5;
    }

    if (![(AMSUIMessageViewLayoutContext *)self _isAccessoryViewLeading])
    {
      [(AMSUIMessageViewLayoutContext *)self mainContentFrame];
      v15 = v18 - v6;
    }

    [(AMSUIMessageViewLayoutContext *)self setAccessoryViewFrame:v15, v16, v6, v8];
  }

  else
  {
    v11 = *MEMORY[0x1E695F058];
    v12 = *(MEMORY[0x1E695F058] + 8);
    v13 = *(MEMORY[0x1E695F058] + 16);
    v14 = *(MEMORY[0x1E695F058] + 24);

    [(AMSUIMessageViewLayoutContext *)self setAccessoryViewFrame:v11, v12, v13, v14];
  }
}

- (void)calculateAccessorySecondaryViewFrame
{
  messageView = [(AMSUIMessageViewLayoutContext *)self messageView];
  accessorySecondaryView = [messageView accessorySecondaryView];

  if (accessorySecondaryView)
  {
    [(AMSUIMessageViewLayoutContext *)self accessorySecondaryViewFrame];
    v6 = v5;
    v8 = v7;
    [(AMSUIMessageViewLayoutContext *)self mainContentFrame];
    v10 = v9 - v6;
    [(AMSUIMessageViewLayoutContext *)self mainContentFrame];
    v12 = (v11 - v8) * 0.5;
  }

  else
  {
    v10 = *MEMORY[0x1E695F058];
    v12 = *(MEMORY[0x1E695F058] + 8);
    v6 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
  }

  [(AMSUIMessageViewLayoutContext *)self setAccessorySecondaryViewFrame:v10, v12, v6, v8];
}

- (void)calculateAccessoryViewSize
{
  messageView = [(AMSUIMessageViewLayoutContext *)self messageView];
  accessoryView = [messageView accessoryView];

  if (accessoryView)
  {
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    messageView2 = [(AMSUIMessageViewLayoutContext *)self messageView];
    accessoryView2 = [messageView2 accessoryView];
    [accessoryView2 sizeThatFits:{100.0, 1.79769313e308}];
    v10 = v9;
    v12 = v11;

    [(AMSUIMessageViewLayoutContext *)self setAccessoryViewFrame:v5, v6, v10, v12];
  }
}

- (void)calculateAccessorySecondaryViewSize
{
  messageView = [(AMSUIMessageViewLayoutContext *)self messageView];
  accessorySecondaryView = [messageView accessorySecondaryView];

  if (accessorySecondaryView)
  {
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    messageView2 = [(AMSUIMessageViewLayoutContext *)self messageView];
    accessorySecondaryView2 = [messageView2 accessorySecondaryView];
    [accessorySecondaryView2 sizeThatFits:{100.0, 1.79769313e308}];
    v10 = v9;
    v12 = v11;

    [(AMSUIMessageViewLayoutContext *)self setAccessorySecondaryViewFrame:v5, v6, v10, v12];
  }
}

- (void)calculateMainContentFrameRootFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  [(AMSUIMessageViewLayoutContext *)self mainContentFrame:frame.origin.x];
  [(AMSUIMessageViewLayoutContext *)self contentLayoutMargins];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = height - v6 - v12;
  [(AMSUIMessageViewLayoutContext *)self _bottomFooterSpacing];
  v15 = v13 - v14;
  v16 = width - v9 - v11;
  messageView = [(AMSUIMessageViewLayoutContext *)self messageView];
  style = [messageView style];

  if (style == 2)
  {
    messageView2 = [(AMSUIMessageViewLayoutContext *)self messageView];
    [messageView2 safeAreaInsets];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v15 = v15 - (v21 + v25);
    v16 = v16 - (v23 + v27);
  }

  footerButtonFrames = [(AMSUIMessageViewLayoutContext *)self footerButtonFrames];
  v29 = [footerButtonFrames count];

  if (v29)
  {
    [(AMSUIMessageViewLayoutContext *)self _footerButtonSpacing];
    v15 = v15 - v30;
  }

  if (![(AMSUIMessageViewLayoutContext *)self _isFooterButtonPartOfContentFrame])
  {
    [(AMSUIMessageViewLayoutContext *)self totalFooterButtonHeight];
    v15 = v15 - v31;
  }

  messageView3 = [(AMSUIMessageViewLayoutContext *)self messageView];
  maskShapeView = [messageView3 maskShapeView];

  if (maskShapeView)
  {
    messageView4 = [(AMSUIMessageViewLayoutContext *)self messageView];
    maskShapeView2 = [messageView4 maskShapeView];
    [maskShapeView2 arrowHeight];
    v37 = v36;

    messageView5 = [(AMSUIMessageViewLayoutContext *)self messageView];
    maskShapeView3 = [messageView5 maskShapeView];
    arrowDirection = [maskShapeView3 arrowDirection];

    if (arrowDirection <= 3)
    {
      if (arrowDirection == 1)
      {
        v7 = v7 + v37;
      }

      else if (arrowDirection != 2)
      {
        goto LABEL_19;
      }

      v15 = v15 - v37;
      goto LABEL_19;
    }

    if (arrowDirection == 4)
    {
      v9 = v9 + v37;
    }

    else if (arrowDirection != 8)
    {
      goto LABEL_19;
    }

    v16 = v16 - v37;
  }

LABEL_19:

  [(AMSUIMessageViewLayoutContext *)self setMainContentFrame:v9, v7, v16, v15];
}

- (void)calculateTextViewSizeInFrame:(CGRect)frame dirty:(BOOL)dirty
{
  dirtyCopy = dirty;
  v42[1] = *MEMORY[0x1E69E9840];
  v6 = [(AMSUIMessageViewLayoutContext *)self messageView:frame.origin.x];
  textView = [v6 textView];
  hasText = [textView hasText];

  if (hasText)
  {
    [(AMSUIMessageViewLayoutContext *)self _maxTextContainerWidth];
    v10 = v9;
    if ([(AMSUIMessageViewLayoutContext *)self _isTextOnlyBanner])
    {
      [(AMSUIMessageViewLayoutContext *)self _bannerMaxTextWidth];
      if (v10 >= v11)
      {
        v10 = v11;
      }
    }

    if (dirtyCopy)
    {
      [(AMSUIMessageViewLayoutContext *)self mainContentFrame];
      v13 = v12;
      messageView = [(AMSUIMessageViewLayoutContext *)self messageView];
      textView2 = [messageView textView];
      [textView2 textContainerInset];
      v17 = v16;
      v19 = v18;

      v20 = v19 + v13 + v17;
      [(AMSUIMessageViewLayoutContext *)self calculateTextViewExclusionFrame];
      textViewExclusionPath = [(AMSUIMessageViewLayoutContext *)self textViewExclusionPath];

      if (textViewExclusionPath)
      {
        textViewExclusionPath2 = [(AMSUIMessageViewLayoutContext *)self textViewExclusionPath];
        v42[0] = textViewExclusionPath2;
        textView4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
        messageView2 = [(AMSUIMessageViewLayoutContext *)self messageView];
        textView3 = [messageView2 textView];
        textContainer = [textView3 textContainer];
        [textContainer setExclusionPaths:textView4];
      }

      else
      {
        textViewExclusionPath2 = [(AMSUIMessageViewLayoutContext *)self messageView];
        textView4 = [textViewExclusionPath2 textView];
        messageView2 = [textView4 textContainer];
        [messageView2 setExclusionPaths:MEMORY[0x1E695E0F0]];
      }

      messageView3 = [(AMSUIMessageViewLayoutContext *)self messageView];
      textView5 = [messageView3 textView];
      [textView5 sizeThatFits:{v10, v20}];
      v30 = v29;
      v32 = v31;

      messageView4 = [(AMSUIMessageViewLayoutContext *)self messageView];
      traitCollection = [messageView4 traitCollection];
      layoutDirection = [traitCollection layoutDirection];

      if (layoutDirection == 1)
      {
        v36 = v10;
      }

      else
      {
        v36 = v30;
      }

      [(AMSUIMessageViewLayoutContext *)self setTextViewContentHuggingSize:v36, v32];
    }

    v37 = *MEMORY[0x1E695EFF8];
    v38 = *(MEMORY[0x1E695EFF8] + 8);
    [(AMSUIMessageViewLayoutContext *)self textViewContentHuggingSize];
    [(AMSUIMessageViewLayoutContext *)self setTextViewFrame:v37, v38, v39, v40];
  }

  v41 = *MEMORY[0x1E69E9840];
}

- (void)calculateTextViewExclusionFrame
{
  messageView = [(AMSUIMessageViewLayoutContext *)self messageView];
  if (!-[AMSUIMessageViewLayoutContext _isAccessoryViewLeading](self, "_isAccessoryViewLeading") || ([messageView accessorySecondaryView], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    accessoryView = [messageView accessoryView];
    if (accessoryView)
    {

      goto LABEL_6;
    }

    accessorySecondaryView = [messageView accessorySecondaryView];

    if (accessorySecondaryView)
    {
LABEL_6:
      [(AMSUIMessageViewLayoutContext *)self accessoryViewFrame];
      v8 = v7;
      y = v9;
      v12 = v11;
      height = v13;
      accessoryView2 = [messageView accessoryView];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = accessoryView2;
      }

      else
      {
        v16 = 0;
      }

      messageView2 = [(AMSUIMessageViewLayoutContext *)self messageView];
      accessorySecondaryView2 = [messageView2 accessorySecondaryView];

      if (accessorySecondaryView2)
      {
        [(AMSUIMessageViewLayoutContext *)self accessorySecondaryViewFrame];
        v8 = v19;
        y = v20;
        v12 = v21;
        height = v22;
        accessorySecondaryView3 = [messageView accessorySecondaryView];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = accessorySecondaryView3;
        }

        else
        {
          v24 = 0;
        }

        v16 = v24;
      }

      if ([(AMSUIMessageViewLayoutContext *)self _shouldTextViewTextFillUnderCloseButton])
      {
        if ([(AMSUIMessageViewLayoutContext *)self shouldUseStackedLayout]&& ![(AMSUIMessageViewLayoutContext *)self isImageViewHidden])
        {
          [(AMSUIMessageViewLayoutContext *)self setTextViewExclusionPath:0];
LABEL_25:

          goto LABEL_26;
        }
      }

      else
      {
        [(AMSUIMessageViewLayoutContext *)self mainContentFrame];
        height = v25;
        y = 0.0;
      }

      [(AMSUIMessageViewLayoutContext *)self leadingContentTextBaseline];
      v27 = v8 - v26;
      [(AMSUIMessageViewLayoutContext *)self accessorySpacing];
      x = v27 - v28;
      width = v12 + v28;
      traitCollection = [messageView traitCollection];
      layoutDirection = [traitCollection layoutDirection];

      if (layoutDirection == 1)
      {
        memset(&v37, 0, sizeof(v37));
        CGAffineTransformMakeScale(&v37, -1.0, 1.0);
        memset(&v36, 0, sizeof(v36));
        [(AMSUIMessageViewLayoutContext *)self _maxTextContainerWidth];
        v35 = v37;
        CGAffineTransformTranslate(&v36, &v35, -v33, 0.0);
        v35 = v36;
        v38.origin.x = x;
        v38.origin.y = y;
        v38.size.width = width;
        v38.size.height = height;
        v39 = CGRectApplyAffineTransform(v38, &v35);
        y = v39.origin.y;
        width = v39.size.width;
        height = v39.size.height;
        if (v39.origin.x >= 0.01)
        {
          x = v39.origin.x;
        }

        else
        {
          x = 0.0;
        }
      }

      v34 = [MEMORY[0x1E69DC728] bezierPathWithRect:{x, y, width, height}];
      [(AMSUIMessageViewLayoutContext *)self setTextViewExclusionPath:v34];

      goto LABEL_25;
    }
  }

  [(AMSUIMessageViewLayoutContext *)self setTextViewExclusionPath:0];
LABEL_26:
}

- (void)_calculateFooterButtonSizes
{
  if ([(AMSUIMessageViewLayoutContext *)self isDirty])
  {
    messageView = [(AMSUIMessageViewLayoutContext *)self messageView];
    buttons = [messageView buttons];
    v5 = [buttons count];

    if (v5)
    {
      footerButtonFramesPreFlatten = [(AMSUIMessageViewLayoutContext *)self footerButtonFramesPreFlatten];
      [footerButtonFramesPreFlatten removeAllObjects];

      [(AMSUIMessageViewLayoutContext *)self _maxFooterButtonWidth];
      v8 = v7;
      v12[0] = 0;
      v12[1] = v12;
      v12[2] = 0x2020000000;
      v12[3] = 0;
      messageView2 = [(AMSUIMessageViewLayoutContext *)self messageView];
      buttons2 = [messageView2 buttons];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __60__AMSUIMessageViewLayoutContext__calculateFooterButtonSizes__block_invoke;
      v11[3] = &unk_1E7F25228;
      v11[6] = v8;
      v11[7] = 0x4061800000000000;
      v11[4] = self;
      v11[5] = v12;
      [buttons2 enumerateObjectsUsingBlock:v11];

      _Block_object_dispose(v12, 8);
    }
  }
}

double __60__AMSUIMessageViewLayoutContext__calculateFooterButtonSizes__block_invoke(uint64_t a1, void *a2)
{
  [a2 sizeThatFits:{*(a1 + 48), *(a1 + 56)}];
  v4 = v3;
  [*(a1 + 32) _footerMinimumHeight];
  if (v4 < v5)
  {
    v4 = v5;
  }

  v6 = *(a1 + 48);
  v7 = *MEMORY[0x1E695EFF8];
  v8 = *(*(*(a1 + 40) + 8) + 24);
  v9 = [*(a1 + 32) footerButtonFramesPreFlatten];
  v10 = [MEMORY[0x1E696B098] valueWithCGRect:{v7, v8, v6, v4}];
  [v9 addObject:v10];

  [*(a1 + 32) _footerButtonInterSpacing];
  v12 = *(*(a1 + 40) + 8);
  result = v4 + v11 + *(v12 + 24);
  *(v12 + 24) = result;
  return result;
}

- (double)_bottomFooterSpacing
{
  messageView = [(AMSUIMessageViewLayoutContext *)self messageView];
  [messageView style];

  return 0.0;
}

- (NSDirectionalEdgeInsets)contentLayoutMargins
{
  messageView = [(AMSUIMessageViewLayoutContext *)self messageView];
  traitCollection = [messageView traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  messageView2 = [(AMSUIMessageViewLayoutContext *)self messageView];
  style = [messageView2 style];

  if (style == 1)
  {
    v12 = 10.0;
    v9 = 1;
    v10 = 12.0;
    v11 = 12.0;
  }

  else if (style)
  {
    v12 = 11.0;
    v9 = 1;
    v10 = 13.0;
    v11 = 13.0;
  }

  else if (IsAccessibilityCategory)
  {
    v9 = 0;
    v10 = 16.0;
    v11 = 16.0;
    v12 = 16.0;
  }

  else
  {
    messageView3 = [(AMSUIMessageViewLayoutContext *)self messageView];
    traitCollection2 = [messageView3 traitCollection];
    userInterfaceIdiom = [traitCollection2 userInterfaceIdiom];

    v12 = 11.0;
    if (userInterfaceIdiom == 1)
    {
      v10 = 9.0;
    }

    else
    {
      v10 = 11.0;
    }

    if (userInterfaceIdiom == 1)
    {
      v11 = 9.0;
    }

    else
    {
      v11 = 14.0;
    }

    v9 = 1;
  }

  messageView4 = [(AMSUIMessageViewLayoutContext *)self messageView];
  if ([messageView4 style] == 1 && !-[AMSUIMessageViewLayoutContext shouldUseStackedLayout](self, "shouldUseStackedLayout"))
  {
    isImageViewHidden = [(AMSUIMessageViewLayoutContext *)self isImageViewHidden];

    if (!isImageViewHidden)
    {
      if ([(AMSUIMessageViewLayoutContext *)self _isSymbolImage])
      {
        v11 = 16.0;
      }

      else
      {
        v11 = 20.0;
      }
    }
  }

  else
  {
  }

  if (v9)
  {
    [(AMSUIMessageViewLayoutContext *)self _scaledUIValueForValue:v12];
    v18 = v17;
    [(AMSUIMessageViewLayoutContext *)self _scaledUIValueForValue:v12];
    v12 = v19;
    [(AMSUIMessageViewLayoutContext *)self _scaledUIValueForValue:v11];
    v11 = v20;
    [(AMSUIMessageViewLayoutContext *)self _scaledUIValueForValue:v10];
    v10 = v21;
  }

  else
  {
    v18 = v12;
  }

  messageView5 = [(AMSUIMessageViewLayoutContext *)self messageView];
  if ([messageView5 style])
  {
  }

  else
  {
    messageView6 = [(AMSUIMessageViewLayoutContext *)self messageView];
    traitCollection3 = [messageView6 traitCollection];
    userInterfaceIdiom2 = [traitCollection3 userInterfaceIdiom];

    if (userInterfaceIdiom2 == 1)
    {
      messageView7 = [(AMSUIMessageViewLayoutContext *)self messageView];
      [messageView7 safeAreaInsets];
      v28 = v27;
      v30 = v29;

      messageView8 = [(AMSUIMessageViewLayoutContext *)self messageView];
      traitCollection4 = [messageView8 traitCollection];
      layoutDirection = [traitCollection4 layoutDirection];

      if (layoutDirection == 1)
      {
        if (v11 < v28)
        {
          v11 = v28;
        }
      }

      else if (v10 < v30)
      {
        v10 = v30;
      }
    }
  }

  v35 = v18;
  v36 = v11;
  v37 = v12;
  v38 = v10;
  result.trailing = v38;
  result.bottom = v37;
  result.leading = v36;
  result.top = v35;
  return result;
}

- (CGSize)_makeImageViewSize
{
  [(AMSUIMessageViewLayoutContext *)self _imageLength];
  v4 = v3;
  messageView = [(AMSUIMessageViewLayoutContext *)self messageView];
  imageView = [messageView imageView];
  image = [imageView image];

  messageView2 = [(AMSUIMessageViewLayoutContext *)self messageView];
  LODWORD(imageView) = [messageView2 preLayoutImageView];

  if (!imageView || image)
  {
    if (!image)
    {
      messageView3 = [(AMSUIMessageViewLayoutContext *)self messageView];
      micaPlayer = [messageView3 micaPlayer];

      if (!micaPlayer)
      {
        v4 = *MEMORY[0x1E695F060];
        v12 = *(MEMORY[0x1E695F060] + 8);
        goto LABEL_7;
      }
    }

    messageView4 = [(AMSUIMessageViewLayoutContext *)self messageView];
    [messageView4 micaPlayer];
  }

  v12 = v4;
LABEL_7:

  v13 = v4;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (double)_bannerMaxTextWidth
{
  messageView = [(AMSUIMessageViewLayoutContext *)self messageView];
  traitCollection = [messageView traitCollection];
  v4 = [traitCollection horizontalSizeClass] == 2;

  return dbl_1BB1EF250[v4];
}

- (unint64_t)effectiveImageStyle
{
  messageView = [(AMSUIMessageViewLayoutContext *)self messageView];
  imageStyle = [messageView imageStyle];

  if (!imageStyle)
  {
    return 1;
  }

  messageView2 = [(AMSUIMessageViewLayoutContext *)self messageView];
  imageStyle2 = [messageView2 imageStyle];

  return imageStyle2;
}

- (double)_footerButtonSpacing
{
  messageView = [(AMSUIMessageViewLayoutContext *)self messageView];
  style = [messageView style];

  if (style)
  {
    messageView2 = [(AMSUIMessageViewLayoutContext *)self messageView];
    style2 = [messageView2 style];

    v7 = 0.0;
    if (style2 == 6)
    {
      messageView3 = [(AMSUIMessageViewLayoutContext *)self messageView];
      traitCollection = [messageView3 traitCollection];
      preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
      IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

      v7 = 0.0;
      if (IsAccessibilityCategory)
      {
        v7 = 4.0;
      }
    }
  }

  else
  {
    v7 = 6.0;
  }

  [(AMSUIMessageViewLayoutContext *)self _scaledUIValueForValue:v7];
  return result;
}

- (double)_footerMinimumHeight
{
  messageView = [(AMSUIMessageViewLayoutContext *)self messageView];
  if (![messageView style] && !-[AMSUIMessageViewLayoutContext shouldUseStackedLayout](self, "shouldUseStackedLayout"))
  {

    return 0.0;
  }

  messageView2 = [(AMSUIMessageViewLayoutContext *)self messageView];
  style = [messageView2 style];

  if (style == 6)
  {
    return 0.0;
  }

  [(AMSUIMessageViewLayoutContext *)self _scaledUIValueForValue:44.0];
  return result;
}

- (CGRect)_effectiveTextViewFrame
{
  messageView = [(AMSUIMessageViewLayoutContext *)self messageView];
  textView = [messageView textView];
  [textView textContainerInset];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(AMSUIMessageViewLayoutContext *)self textViewFrame];
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
  if (_imageLength_ams_once_token___COUNTER__ != -1)
  {
    [AMSUIMessageViewLayoutContext _imageLength];
  }

  v3 = _imageLength_ams_once_object___COUNTER__;
  messageView = [(AMSUIMessageViewLayoutContext *)self messageView];
  traitCollection = [messageView traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (!IsAccessibilityCategory)
  {
    goto LABEL_6;
  }

  messageView2 = [(AMSUIMessageViewLayoutContext *)self messageView];
  traitCollection2 = [messageView2 traitCollection];
  preferredContentSizeCategory2 = [traitCollection2 preferredContentSizeCategory];
  v11 = [v3 objectForKeyedSubscript:preferredContentSizeCategory2];

  if (!v11 || ([v11 doubleValue], v13 = v12, v11, v13 == 2.22507386e-308))
  {
LABEL_6:
    messageView3 = [(AMSUIMessageViewLayoutContext *)self messageView];
    style = [messageView3 style];

    if (style)
    {
      messageView4 = [(AMSUIMessageViewLayoutContext *)self messageView];
      if ([messageView4 style] == 3)
      {
LABEL_10:

LABEL_11:
        if ([(AMSUIMessageViewLayoutContext *)self effectiveImageStyle]== 2)
        {
LABEL_16:
          *&v20 = 44.0;
LABEL_25:
          v13 = *&v20;
          goto LABEL_26;
        }

        if (![(AMSUIMessageViewLayoutContext *)self _isSymbolImage])
        {
          messageView5 = [(AMSUIMessageViewLayoutContext *)self messageView];
          if ([messageView5 style] == 3)
          {
            messageView6 = [(AMSUIMessageViewLayoutContext *)self messageView];
            [messageView6 buttons];
          }

          goto LABEL_16;
        }

        goto LABEL_19;
      }

      messageView7 = [(AMSUIMessageViewLayoutContext *)self messageView];
      if ([messageView7 style] == 2)
      {

        goto LABEL_10;
      }

      messageView8 = [(AMSUIMessageViewLayoutContext *)self messageView];
      style2 = [messageView8 style];

      if (style2 == 6)
      {
        goto LABEL_11;
      }

      messageView9 = [(AMSUIMessageViewLayoutContext *)self messageView];
      style3 = [messageView9 style];

      if (style3 == 5)
      {
LABEL_19:
        v13 = 45.0;
        goto LABEL_26;
      }

      messageView10 = [(AMSUIMessageViewLayoutContext *)self messageView];
      if ([messageView10 style] == 4)
      {
        _isSymbolImage = [(AMSUIMessageViewLayoutContext *)self _isSymbolImage];

        if (!_isSymbolImage)
        {
          *&v20 = 52.0;
          goto LABEL_25;
        }
      }

      else
      {
      }
    }

    *&v20 = 40.0;
    goto LABEL_25;
  }

LABEL_26:

  return v13;
}

void __45__AMSUIMessageViewLayoutContext__imageLength__block_invoke()
{
  v6[5] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69DDC38];
  v5[0] = *MEMORY[0x1E69DDC40];
  v5[1] = v0;
  v6[0] = &unk_1F394AAE0;
  v6[1] = &unk_1F394AAF0;
  v1 = *MEMORY[0x1E69DDC28];
  v5[2] = *MEMORY[0x1E69DDC30];
  v5[3] = v1;
  v6[2] = &unk_1F394AB00;
  v6[3] = &unk_1F394AB10;
  v5[4] = *MEMORY[0x1E69DDC20];
  v6[4] = &unk_1F394AB20;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v3 = _imageLength_ams_once_object___COUNTER__;
  _imageLength_ams_once_object___COUNTER__ = v2;

  v4 = *MEMORY[0x1E69E9840];
}

- (double)_imageToLabelSpacing
{
  messageView = [(AMSUIMessageViewLayoutContext *)self messageView];
  style = [messageView style];

  v5 = 4.0;
  if (!style)
  {
    v5 = 6.0;
  }

  [(AMSUIMessageViewLayoutContext *)self _scaledUIValueForValue:v5];
  return result;
}

- (double)_interitemSpacing
{
  messageView = [(AMSUIMessageViewLayoutContext *)self messageView];
  style = [messageView style];

  v5 = 10.0;
  if (style)
  {
    messageView2 = [(AMSUIMessageViewLayoutContext *)self messageView];
    style2 = [messageView2 style];

    if (style2 != 1)
    {
      messageView3 = [(AMSUIMessageViewLayoutContext *)self messageView];
      if ([messageView3 style] != 2)
      {
        messageView4 = [(AMSUIMessageViewLayoutContext *)self messageView];
        if ([messageView4 style] != 6)
        {
          messageView5 = [(AMSUIMessageViewLayoutContext *)self messageView];
          [messageView5 style];
        }
      }

      v5 = 11.0;
    }
  }

  [(AMSUIMessageViewLayoutContext *)self _scaledUIValueForValue:v5];
  return result;
}

- (BOOL)_isAccessoryViewLeading
{
  messageView = [(AMSUIMessageViewLayoutContext *)self messageView];
  accessoryView = [messageView accessoryView];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = accessoryView;
  }

  else
  {
    v5 = 0;
  }

  messageView2 = [(AMSUIMessageViewLayoutContext *)self messageView];
  traitCollection = [messageView2 traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 6)
  {
    messageView3 = [(AMSUIMessageViewLayoutContext *)self messageView];
    if ([messageView3 style] == 2)
    {
      isDefaultCloseButton = [v5 isDefaultCloseButton];
    }

    else
    {
      messageView4 = [(AMSUIMessageViewLayoutContext *)self messageView];
      if ([messageView4 style] == 6)
      {
        isDefaultCloseButton = [v5 isDefaultCloseButton];
      }

      else
      {
        messageView5 = [(AMSUIMessageViewLayoutContext *)self messageView];
        if ([messageView5 style] == 3)
        {
          isDefaultCloseButton = [v5 isDefaultCloseButton];
        }

        else
        {
          isDefaultCloseButton = 0;
        }
      }
    }
  }

  else
  {
    isDefaultCloseButton = 0;
  }

  return isDefaultCloseButton;
}

- (BOOL)_isIconImageTopAligned
{
  messageView = [(AMSUIMessageViewLayoutContext *)self messageView];
  style = [messageView style];

  if (style == 5)
  {
    return 1;
  }

  if (style)
  {
    return 0;
  }

  messageView2 = [(AMSUIMessageViewLayoutContext *)self messageView];
  traitCollection = [messageView2 traitCollection];
  v7 = [traitCollection userInterfaceIdiom] != 0;

  return v7;
}

- (BOOL)_isFooterButtonPartOfContentFrame
{
  messageView = [(AMSUIMessageViewLayoutContext *)self messageView];
  style = [messageView style];

  return (style - 6) < 0xFFFFFFFFFFFFFFFBLL;
}

- (BOOL)_isSymbolImage
{
  messageView = [(AMSUIMessageViewLayoutContext *)self messageView];
  if ([messageView isImageSymbolImage])
  {
    isSymbolImage = 1;
  }

  else
  {
    messageView2 = [(AMSUIMessageViewLayoutContext *)self messageView];
    imageView = [messageView2 imageView];
    image = [imageView image];
    isSymbolImage = [image isSymbolImage];
  }

  return isSymbolImage;
}

- (BOOL)_isTextOnlyBanner
{
  messageView = [(AMSUIMessageViewLayoutContext *)self messageView];
  if ([messageView style] == 1 && -[AMSUIMessageViewLayoutContext isImageViewHidden](self, "isImageViewHidden"))
  {
    v4 = ![(AMSUIMessageViewLayoutContext *)self shouldUseStackedLayout];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (double)_maxFooterButtonWidth
{
  [(AMSUIMessageViewLayoutContext *)self mainContentFrame];
  v4 = v3;
  messageView = [(AMSUIMessageViewLayoutContext *)self messageView];
  style = [messageView style];

  if (style != 5)
  {
    [(AMSUIMessageViewLayoutContext *)self leadingContentTextBaseline];
    v4 = v4 - v7;
  }

  messageView2 = [(AMSUIMessageViewLayoutContext *)self messageView];
  if ([messageView2 style] != 2)
  {
    messageView3 = [(AMSUIMessageViewLayoutContext *)self messageView];
    if ([messageView3 style] != 3)
    {
      messageView4 = [(AMSUIMessageViewLayoutContext *)self messageView];
      style2 = [messageView4 style];

      if (style2 != 5)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

LABEL_7:
  [(AMSUIMessageViewLayoutContext *)self contentLayoutMargins];
  v4 = v4 + v10;
LABEL_8:
  messageView5 = [(AMSUIMessageViewLayoutContext *)self messageView];
  if ([messageView5 style] || -[AMSUIMessageViewLayoutContext shouldUseStackedLayout](self, "shouldUseStackedLayout"))
  {
    messageView6 = [(AMSUIMessageViewLayoutContext *)self messageView];
    style3 = [messageView6 style];

    if (style3 != 6)
    {
      return v4;
    }
  }

  else
  {
  }

  [(AMSUIMessageViewLayoutContext *)self accessoryViewFrame];
  return v4 - v16;
}

- (double)_maxTextContainerWidth
{
  [(AMSUIMessageViewLayoutContext *)self mainContentFrame];
  v4 = v3;
  [(AMSUIMessageViewLayoutContext *)self leadingContentTextBaseline];
  return v4 - v5;
}

- (double)_scaledUIValueForValue:(double)value
{
  v5 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDD80]];
  messageView = [(AMSUIMessageViewLayoutContext *)self messageView];
  traitCollection = [messageView traitCollection];
  [v5 scaledValueForValue:traitCollection compatibleWithTraitCollection:value];
  v9 = v8;

  return v9;
}

- (BOOL)_shouldOffsetFooterButtonFromMainContentView
{
  messageView = [(AMSUIMessageViewLayoutContext *)self messageView];
  if ([messageView style])
  {
    messageView2 = [(AMSUIMessageViewLayoutContext *)self messageView];
    if ([messageView2 style] == 6)
    {
      v5 = ![(AMSUIMessageViewLayoutContext *)self shouldUseStackedLayout];
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    v5 = ![(AMSUIMessageViewLayoutContext *)self shouldUseStackedLayout];
  }

  return v5;
}

- (BOOL)_shouldTextViewTextFillUnderCloseButton
{
  messageView = [(AMSUIMessageViewLayoutContext *)self messageView];
  if (![messageView style])
  {
    isDefaultCloseButton = 0;
LABEL_9:

    return isDefaultCloseButton;
  }

  messageView2 = [(AMSUIMessageViewLayoutContext *)self messageView];
  style = [messageView2 style];

  if (style != 1)
  {
    messageView = [(AMSUIMessageViewLayoutContext *)self messageView];
    accessoryView = [messageView accessoryView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = accessoryView;
    }

    else
    {
      v8 = 0;
    }

    isDefaultCloseButton = [v8 isDefaultCloseButton];
    goto LABEL_9;
  }

  return 0;
}

- (BOOL)shouldUseStackedLayout
{
  messageView = [(AMSUIMessageViewLayoutContext *)self messageView];
  traitCollection = [messageView traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  return IsAccessibilityCategory;
}

- (BOOL)isImageViewHidden
{
  messageView = [(AMSUIMessageViewLayoutContext *)self messageView];
  imageView = [messageView imageView];
  image = [imageView image];
  if (image)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    messageView2 = [(AMSUIMessageViewLayoutContext *)self messageView];
    v6 = [messageView2 preLayoutImageView] ^ 1;
  }

  return v6;
}

- (double)leadingContentTextBaseline
{
  v3 = 0.0;
  if (![(AMSUIMessageViewLayoutContext *)self shouldUseStackedLayout]&& ![(AMSUIMessageViewLayoutContext *)self isImageViewHidden])
  {
    [(AMSUIMessageViewLayoutContext *)self _makeImageViewSize];
    v5 = v4 + 0.0;
    messageView = [(AMSUIMessageViewLayoutContext *)self messageView];
    style = [messageView style];

    if (style == 1)
    {
      if ([(AMSUIMessageViewLayoutContext *)self _isSymbolImage])
      {
        [(AMSUIMessageViewLayoutContext *)self _scaledUIValueForValue:16.0];
      }

      else
      {
        [(AMSUIMessageViewLayoutContext *)self _interitemSpacing];
      }

      v3 = v5 + v8 * 2.0;
    }

    else
    {
      [(AMSUIMessageViewLayoutContext *)self _interitemSpacing];
      v3 = v5 + v9;
    }
  }

  messageView2 = [(AMSUIMessageViewLayoutContext *)self messageView];
  accessoryView = [messageView2 accessoryView];
  if (accessoryView)
  {
    v12 = accessoryView;
    _isAccessoryViewLeading = [(AMSUIMessageViewLayoutContext *)self _isAccessoryViewLeading];

    if (_isAccessoryViewLeading)
    {
      [(AMSUIMessageViewLayoutContext *)self accessoryViewFrame];
      v15 = v14;
      [(AMSUIMessageViewLayoutContext *)self accessoryViewFrame];
      v17 = v15 + v16;
      [(AMSUIMessageViewLayoutContext *)self accessorySpacing];
      v3 = v3 + v18 + v17;
    }
  }

  else
  {
  }

  messageView3 = [(AMSUIMessageViewLayoutContext *)self messageView];
  textView = [messageView3 textView];
  [textView textContainerInset];
  v22 = v3 - v21;

  return v22;
}

- (double)separatorThickness
{
  messageView = [(AMSUIMessageViewLayoutContext *)self messageView];
  traitCollection = [messageView traitCollection];
  [traitCollection displayScale];
  v5 = 1.0 / v4;

  return v5;
}

- (double)totalFooterButtonHeight
{
  v21 = *MEMORY[0x1E69E9840];
  footerButtonFramesPreFlatten = [(AMSUIMessageViewLayoutContext *)self footerButtonFramesPreFlatten];
  v4 = [footerButtonFramesPreFlatten count];

  if (v4)
  {
    [(AMSUIMessageViewLayoutContext *)self _footerButtonInterSpacing];
    v6 = v5;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    footerButtonFramesPreFlatten2 = [(AMSUIMessageViewLayoutContext *)self footerButtonFramesPreFlatten];
    v8 = [footerButtonFramesPreFlatten2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      v11 = 0.0;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(footerButtonFramesPreFlatten2);
          }

          [*(*(&v16 + 1) + 8 * i) CGRectValue];
          v11 = v11 + v6 + v13;
        }

        v9 = [footerButtonFramesPreFlatten2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = 0.0;
    }

    result = v11 - v6;
  }

  else
  {
    result = 0.0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
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