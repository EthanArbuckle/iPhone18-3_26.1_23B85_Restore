@interface THNoteCardContentLayer
- (CGRect)flipGlyphFrame;
- (CGRect)pageNumberLabelFrame;
- (CGSize)p_shadowOffsetForCurrentScreenScale;
- (NSArray)interactiveLayers;
- (double)p_shadowRadiusForCurrentScreenScale;
- (id).cxx_construct;
- (id)p_borderColorForCurrentScreenScale;
- (id)p_commonInit:(BOOL)a3 darkMode:(BOOL)a4;
- (void)clearContents;
- (void)dealloc;
- (void)layoutSublayers;
- (void)p_setupBackground;
- (void)p_setupBodyScrollLayer;
- (void)p_setupBorder;
- (void)p_setupCardNumberLabel;
- (void)p_setupColorBar;
- (void)p_setupFlipLabel;
- (void)p_setupPageNumberLabel;
- (void)p_setupTitleLabel;
- (void)p_updateFlipAffordanceDisplay;
- (void)p_updatePageNumberDisplay;
- (void)setBodyLayer:(id)a3;
- (void)setCardNumberString:(id)a3;
- (void)setContentsScale:(double)a3;
- (void)setDarkMode:(BOOL)a3;
- (void)setDisplayAttributes:(_THNoteCardDisplayAttributes)a3 animated:(BOOL)a4 duration:(double)a5;
- (void)setLayoutContext:(id)a3;
- (void)setPageNumber:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation THNoteCardContentLayer

- (id)p_commonInit:(BOOL)a3 darkMode:(BOOL)a4
{
  v8.receiver = self;
  v8.super_class = THNoteCardContentLayer;
  v6 = [(THNoteCardContentLayer *)&v8 init];
  if (v6)
  {
    TSDRectWithSize();
    [(THNoteCardContentLayer *)v6 setFrame:?];
    v6->_isBackLayer = a3;
    v6->_darkMode = a4;
    [(THNoteCardContentLayer *)v6 p_setupBackground];
    [(THNoteCardContentLayer *)v6 p_setupBorder];
    [(THNoteCardContentLayer *)v6 p_setupBodyScrollLayer];
    [(THNoteCardContentLayer *)v6 p_setupTitleLabel];
    [(THNoteCardContentLayer *)v6 p_setupPageNumberLabel];
    [(THNoteCardContentLayer *)v6 p_setupCardNumberLabel];
    [(THNoteCardContentLayer *)v6 p_setupFlipLabel];
    [(THNoteCardContentLayer *)v6 p_setupColorBar];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THNoteCardContentLayer;
  [(THNoteCardContentLayer *)&v3 dealloc];
}

- (void)clearContents
{
  [(THNoteCardContentLayer *)self setBodyLayer:0];
  [(THMultiLineLabel *)self->_titleLabel setText:&stru_471858];
  [(THMultiLineLabel *)self->_pageNumberLabel setText:&stru_471858];
  [(THMultiLineLabel *)self->_flipLabel setHidden:1];
  [(THMultiLineLabel *)self->_cardNumberLabel setText:&stru_471858];
  colorBarLayer = self->_colorBarLayer;

  [(CALayer *)colorBarLayer setBackgroundColor:0];
}

- (void)setBodyLayer:(id)a3
{
  bodyLayer = self->_bodyLayer;
  if (bodyLayer != a3)
  {

    v6 = a3;
    self->_bodyLayer = v6;
    [(THNoteCardBodyLayer *)v6 setLayoutContext:self->_layoutContext];
    [(THInteractiveScrollLayer *)self->_bodyScrollLayer setContentLayer:self->_bodyLayer];

    [(THNoteCardContentLayer *)self setNeedsLayout];
  }
}

- (void)setTitle:(id)a3
{
  [(THMultiLineLabel *)self->_titleLabel setText:a3];

  [(THNoteCardContentLayer *)self setNeedsLayout];
}

- (void)setCardNumberString:(id)a3
{
  [(THMultiLineLabel *)self->_cardNumberLabel setText:a3];

  [(THNoteCardContentLayer *)self setNeedsLayout];
}

- (void)setPageNumber:(id)a3
{
  -[THMultiLineLabel setText:](self->_pageNumberLabel, "setText:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", [THBundle() localizedStringForKey:@"page %@" value:&stru_471858 table:0], a3));

  [(THNoteCardContentLayer *)self setNeedsLayout];
}

- (CGRect)pageNumberLabelFrame
{
  [(THNoteCardContentLayer *)self layoutIfNeeded];
  pageNumberLabel = self->_pageNumberLabel;

  [(THMultiLineLabel *)pageNumberLabel frame];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)flipGlyphFrame
{
  [(THNoteCardContentLayer *)self layoutIfNeeded];
  flipLabel = self->_flipLabel;

  [(THMultiLineLabel *)flipLabel frame];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)setLayoutContext:(id)a3
{
  layoutContext = self->_layoutContext;
  if (layoutContext != a3)
  {

    self->_layoutContext = a3;
    [(THNoteCardBodyLayer *)self->_bodyLayer setLayoutContext:a3];
    [(THNoteCardLayoutContext *)self->_layoutContext noteCardShadowOpacity];
    *&v6 = v6;
    [(CALayer *)self->_backgroundLayer setShadowOpacity:v6];
    [(THNoteCardContentLayer *)self p_shadowOffsetForCurrentScreenScale];
    [(CALayer *)self->_backgroundLayer setShadowOffset:?];
    [(THNoteCardContentLayer *)self p_shadowRadiusForCurrentScreenScale];
    [(CALayer *)self->_backgroundLayer setShadowRadius:?];
    [a3 textScale];
    [(THMultiLineLabel *)self->_titleLabel setScale:?];
    [a3 textScale];
    [(THMultiLineLabel *)self->_pageNumberLabel setScale:?];
    [a3 textScale];
    [(THMultiLineLabel *)self->_cardNumberLabel setScale:?];
    [a3 textScale];
    [(THMultiLineLabel *)self->_flipLabel setScale:?];

    [(THNoteCardContentLayer *)self setNeedsLayout];
  }
}

- (NSArray)interactiveLayers
{
  [(THNoteCardContentLayer *)self layoutIfNeeded];
  v3 = [NSMutableArray arrayWithObjects:self->_bodyScrollLayer, 0];
  v4 = [(THNoteCardBodyLayer *)self->_bodyLayer interactiveLayers];
  if (v4)
  {
    [(NSMutableArray *)v3 addObjectsFromArray:v4];
  }

  return &v3->super;
}

- (void)setDisplayAttributes:(_THNoteCardDisplayAttributes)a3 animated:(BOOL)a4 duration:(double)a5
{
  v6 = a4;
  v7 = *&a3.drawBorder;
  if (!self->_backgroundLayer)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (!self->_borderLayer)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v9 = THNoteCardBackgroundColor([(THNoteCardContentLayer *)self darkMode]);
  if ((v7 & 0x1000000) != 0)
  {
    v9 = THNoteDarkenBackgroundColor([(THNoteCardContentLayer *)self darkMode]);
  }

  v10 = v9;
  [(THNoteCardContentLayer *)self setShowFlipGlyph:WORD1(v7) & 1];
  if ((v7 & 0x100000000) != 0)
  {
    v10 = THNoteDarkerBackgroundColor([(THNoteCardContentLayer *)self darkMode]);
  }

  if (v7)
  {
    v11 = [(THNoteCardContentLayer *)self p_borderColorForCurrentScreenScale];
  }

  else
  {
    v11 = +[TSUColor clearColor];
  }

  v12 = v11;
  if ((v7 & 0x100) != 0)
  {
    v13 = +[TSUColor blackColor];
  }

  else
  {
    v13 = +[TSUColor clearColor];
  }

  v14 = v13;
  if (v6)
  {
    v15 = [CABasicAnimation animationWithKeyPath:@"backgroundColor"];
    [(CABasicAnimation *)v15 setFromValue:[(CALayer *)self->_backgroundLayer backgroundColor]];
    [(CABasicAnimation *)v15 setToValue:[(TSUColor *)v10 CGColor]];
    v16 = [CABasicAnimation animationWithKeyPath:@"shadowColor"];
    [(CABasicAnimation *)v16 setFromValue:[(CALayer *)self->_backgroundLayer shadowColor]];
    -[CABasicAnimation setToValue:](v16, "setToValue:", [v14 CGColor]);
    v17 = +[CAAnimationGroup animation];
    [v17 setAnimations:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v15, v16, 0)}];
    [v17 setDuration:a5];
    [(CALayer *)self->_backgroundLayer addAnimation:v17 forKey:@"displayAttributes"];
    v18 = [CABasicAnimation animationWithKeyPath:@"borderColor"];
    [(CABasicAnimation *)v18 setFromValue:[(CALayer *)self->_borderLayer borderColor]];
    -[CABasicAnimation setToValue:](v18, "setToValue:", [v12 CGColor]);
    [(CABasicAnimation *)v18 setDuration:a5];
    [(CALayer *)self->_borderLayer addAnimation:v18 forKey:@"displayAttributes"];
  }

  [(CALayer *)self->_backgroundLayer setBackgroundColor:[(TSUColor *)v10 CGColor]];
  -[CALayer setShadowColor:](self->_backgroundLayer, "setShadowColor:", [v14 CGColor]);
  -[CALayer setBorderColor:](self->_borderLayer, "setBorderColor:", [v12 CGColor]);
  *&self->_displayAttributes.drawBorder = v7;
  self->_displayAttributes.drawFlipGlyph = BYTE2(v7);
  self->_displayAttributes.darkenBackground = BYTE3(v7);
  self->_displayAttributes.useDarkerBackground = BYTE4(v7);
}

- (void)setDarkMode:(BOOL)a3
{
  if (self->_darkMode != a3)
  {
    self->_darkMode = a3;
    [(THNoteCardContentLayer *)self setDisplayAttributes:*&self->_displayAttributes.drawBorder | (self->_displayAttributes.useDarkerBackground << 32) animated:0 duration:0.0];
    [(THMultiLineLabel *)self->_titleLabel setTextColor:THNoteCardHeaderColor([(THNoteCardContentLayer *)self darkMode])];
    [(THMultiLineLabel *)self->_pageNumberLabel setTextColor:THNoteCardHeaderColor([(THNoteCardContentLayer *)self darkMode])];
    [(THMultiLineLabel *)self->_cardNumberLabel setTextColor:THNoteCardFooterColor([(THNoteCardContentLayer *)self darkMode])];

    [(THNoteCardContentLayer *)self p_updateFlipAffordanceDisplay];
  }
}

- (void)layoutSublayers
{
  v97.receiver = self;
  v97.super_class = THNoteCardContentLayer;
  [(THNoteCardContentLayer *)&v97 layoutSublayers];
  v3 = [+[UIApplication sharedApplication](UIApplication userInterfaceLayoutDirection];
  [(THNoteCardContentLayer *)self bounds];
  v5 = v4;
  v7 = v6;
  [(CALayer *)self->_borderLayer setFrame:?];
  [(CALayer *)self->_borderLayer frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(CALayer *)self->_borderLayer borderWidth];
  v17 = v16;
  [(CALayer *)self->_borderLayer borderWidth];
  v19 = v18;
  v98.origin.x = v9;
  v98.origin.y = v11;
  v98.size.width = v13;
  v98.size.height = v15;
  v99 = CGRectInset(v98, v17, v19);
  [(CALayer *)self->_backgroundLayer setFrame:v99.origin.x, v99.origin.y, v99.size.width, v99.size.height];
  [(CALayer *)self->_backgroundLayer bounds];
  -[CALayer setShadowPath:](self->_backgroundLayer, "setShadowPath:", [+[TSDBezierPath bezierPathWithRect:](TSDBezierPath CGPath]);
  v20 = [(THNoteCardBodyLayer *)self->_bodyLayer shouldForceCentered];
  layoutContext = self->_layoutContext;
  if (v20)
  {
    [(THNoteCardLayoutContext *)layoutContext noteCardBodyWidth];
    [(THNoteCardLayoutContext *)self->_layoutContext noteCardBodyHeight];
  }

  else
  {
    [(THNoteCardLayoutContext *)layoutContext noteCardBodyLeftMargin];
    [(THNoteCardLayoutContext *)self->_layoutContext noteCardBodyTopMargin];
  }

  [(THNoteCardLayoutContext *)self->_layoutContext noteCardBodyWidth];
  [(THNoteCardLayoutContext *)self->_layoutContext noteCardBodyHeight];
  TSDRoundedRect();
  [(THInteractiveScrollLayer *)self->_bodyScrollLayer setFrame:?];
  [(THInteractiveScrollLayer *)self->_bodyScrollLayer bounds];
  [(THNoteCardBodyLayer *)self->_bodyLayer setFrame:?];
  [(THNoteCardBodyLayer *)self->_bodyLayer sizeToFit];
  [(THMultiLineLabel *)self->_pageNumberLabel resizeToFitTightly];
  if (v3 == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    [(THNoteCardLayoutContext *)self->_layoutContext noteCardRightMargin];
    v23 = v22;
  }

  else
  {
    [(THMultiLineLabel *)self->_pageNumberLabel bounds];
    v25 = v5 - v24;
    [(THNoteCardLayoutContext *)self->_layoutContext noteCardRightMargin];
    v23 = v25 - v26;
  }

  [(THNoteCardLayoutContext *)self->_layoutContext noteCardHeaderBaselineOffset];
  v28 = v27;
  [(THMultiLineLabel *)self->_pageNumberLabel firstLineAscent];
  [(THMultiLineLabel *)self->_pageNumberLabel setPosition:v23, v28 - v29];
  [(THMultiLineLabel *)self->_pageNumberLabel frame];
  v101 = CGRectIntegral(v100);
  [(THMultiLineLabel *)self->_pageNumberLabel setFrame:v101.origin.x, v101.origin.y, v101.size.width, v101.size.height];
  [(THMultiLineLabel *)self->_titleLabel resizeToFitTightly];
  [(THMultiLineLabel *)self->_titleLabel frame];
  v31 = v30;
  v33 = v32;
  [(THMultiLineLabel *)self->_pageNumberLabel bounds];
  v35 = v5 - v34;
  [(THNoteCardLayoutContext *)self->_layoutContext noteCardLeftMargin];
  v37 = v35 - v36;
  [(THNoteCardLayoutContext *)self->_layoutContext noteCardRightMargin];
  v39 = v37 - v38;
  [(THNoteCardLayoutContext *)self->_layoutContext noteCardSectionTitlePaddingToPageNumber];
  v41 = v39 - v40;
  if (v31 >= v41)
  {
    v31 = v41;
  }

  [(THNoteCardLayoutContext *)self->_layoutContext noteCardLeftMargin];
  if (v3 == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    v43 = v5 - v31 - v42;
  }

  else
  {
    v43 = v42;
  }

  [(THNoteCardLayoutContext *)self->_layoutContext noteCardHeaderBaselineOffset];
  v45 = v44;
  [(THMultiLineLabel *)self->_titleLabel firstLineAscent];
  v102.origin.y = v45 - v46;
  v102.origin.x = v43;
  v102.size.width = v31;
  v102.size.height = v33;
  v103 = CGRectIntegral(v102);
  [(THMultiLineLabel *)self->_titleLabel setFrame:v103.origin.x, v103.origin.y, v103.size.width, v103.size.height];
  [(THMultiLineLabel *)self->_cardNumberLabel resizeToFitTightly];
  if (v3 == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    [(THMultiLineLabel *)self->_cardNumberLabel bounds];
    v48 = v5 - v47;
    [(THNoteCardLayoutContext *)self->_layoutContext noteCardLeftMargin];
    v50 = v48 - v49;
  }

  else
  {
    [(THNoteCardLayoutContext *)self->_layoutContext noteCardLeftMargin];
    v50 = v51;
  }

  [(THNoteCardLayoutContext *)self->_layoutContext noteCardFooterBaselineOffset];
  v53 = v7 - v52;
  [(THMultiLineLabel *)self->_cardNumberLabel firstLineAscent];
  [(THMultiLineLabel *)self->_cardNumberLabel setPosition:v50, v53 - v54];
  [(THMultiLineLabel *)self->_cardNumberLabel frame];
  v105 = CGRectIntegral(v104);
  [(THMultiLineLabel *)self->_cardNumberLabel setFrame:v105.origin.x, v105.origin.y, v105.size.width, v105.size.height];
  [(THMultiLineLabel *)self->_flipLabel resizeToFitTightly];
  if (v3 == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    [(THNoteCardLayoutContext *)self->_layoutContext noteCardLeftMargin];
    v56 = v55;
  }

  else
  {
    [(THMultiLineLabel *)self->_flipLabel bounds];
    v58 = v5 - v57;
    [(THNoteCardLayoutContext *)self->_layoutContext noteCardLeftMargin];
    v56 = v58 - v59;
  }

  [(THNoteCardLayoutContext *)self->_layoutContext noteCardFooterBaselineOffset];
  v61 = v7 - v60;
  [(THMultiLineLabel *)self->_flipLabel firstLineAscent];
  [(THMultiLineLabel *)self->_flipLabel setPosition:v56, v61 - v62];
  [(THMultiLineLabel *)self->_flipLabel frame];
  v107 = CGRectIntegral(v106);
  [(THMultiLineLabel *)self->_flipLabel setFrame:v107.origin.x, v107.origin.y, v107.size.width, v107.size.height];
  [(THNoteCardBodyLayer *)self->_bodyLayer contentFrame];
  [(THNoteCardContentLayer *)self convertRect:self->_bodyLayer fromLayer:?];
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  [(THInteractiveScrollLayer *)self->_bodyScrollLayer frame];
  v95 = v72;
  v96 = v71;
  v94 = v73;
  v75 = v74;
  [(THNoteCardLayoutContext *)self->_layoutContext noteCardColorBarPaddingFromScrollBottom];
  v77 = v76;
  v78 = self->_layoutContext;
  if (v3 == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    [(THNoteCardLayoutContext *)v78 noteCardColorBarWidth];
    v80 = v5 - v79;
    [(THNoteCardLayoutContext *)self->_layoutContext noteCardLeftMargin];
    v82 = v80 - v81;
  }

  else
  {
    [(THNoteCardLayoutContext *)v78 noteCardLeftMargin];
  }

  v93 = v82;
  [(THNoteCardLayoutContext *)self->_layoutContext noteCardColorBarWidth];
  v92 = v83;
  v108.origin.x = v64;
  v108.origin.y = v66;
  v108.size.width = v68;
  v108.size.height = v70;
  recta = v70;
  v84 = v68;
  v85 = v66;
  v86 = v64;
  MinY = CGRectGetMinY(v108);
  v109.origin.x = v96;
  v109.origin.y = v95;
  v109.size.width = v94;
  v109.size.height = v75 - v77;
  v88 = fmax(MinY, CGRectGetMinY(v109));
  v110.origin.x = v86;
  v110.origin.y = v85;
  v110.size.width = v84;
  v110.size.height = recta;
  MaxY = CGRectGetMaxY(v110);
  v111.origin.x = v96;
  v111.origin.y = v95;
  v111.size.width = v94;
  v111.size.height = v75 - v77;
  v90 = fmin(MaxY, CGRectGetMaxY(v111));
  v112.size.height = 0.0;
  v112.origin.x = v93;
  v112.origin.y = v88;
  v112.size.width = v92;
  [(CALayer *)self->_colorBarLayer setFrame:v93, v88, v92, v90 - CGRectGetMinY(v112)];
}

- (void)setContentsScale:(double)a3
{
  v4.receiver = self;
  v4.super_class = THNoteCardContentLayer;
  [(THNoteCardContentLayer *)&v4 setContentsScale:a3];
  [(THNoteCardContentLayer *)self p_borderWidthForCurrentScreenScale];
  [(CALayer *)self->_borderLayer setBorderWidth:?];
  if (self->_displayAttributes.drawBorder)
  {
    -[CALayer setBorderColor:](self->_borderLayer, "setBorderColor:", [-[THNoteCardContentLayer p_borderColorForCurrentScreenScale](self "p_borderColorForCurrentScreenScale")]);
  }

  [(THNoteCardContentLayer *)self p_shadowOffsetForCurrentScreenScale];
  [(CALayer *)self->_backgroundLayer setShadowOffset:?];
  [(THNoteCardContentLayer *)self p_shadowRadiusForCurrentScreenScale];
  [(CALayer *)self->_backgroundLayer setShadowRadius:?];
  [(THNoteCardContentLayer *)self setNeedsLayout];
}

- (void)p_setupBackground
{
  if (!self->_backgroundLayer || ([+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")], !self->_backgroundLayer))
  {
    self->_backgroundLayer = objc_alloc_init(TSDNoDefaultImplicitActionLayer);
    [(CALayer *)self->_backgroundLayer setBackgroundColor:[(TSUColor *)THNoteCardBackgroundColor([(THNoteCardContentLayer *)self darkMode]) CGColor]];
    -[CALayer setShadowColor:](self->_backgroundLayer, "setShadowColor:", [+[TSUColor blackColor](TSUColor "blackColor")]);
    [(THNoteCardLayoutContext *)self->_layoutContext noteCardShadowOpacity];
    *&v3 = v3;
    [(CALayer *)self->_backgroundLayer setShadowOpacity:v3];
    [(THNoteCardContentLayer *)self p_shadowOffsetForCurrentScreenScale];
    [(CALayer *)self->_backgroundLayer setShadowOffset:?];
    [(THNoteCardContentLayer *)self p_shadowRadiusForCurrentScreenScale];
    [(CALayer *)self->_backgroundLayer setShadowRadius:?];
    [(THNoteCardContentLayer *)self addSublayer:self->_backgroundLayer];

    [(THNoteCardContentLayer *)self setNeedsLayout];
  }
}

- (void)p_setupBorder
{
  if (!self->_borderLayer || ([+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")], !self->_borderLayer))
  {
    self->_borderLayer = objc_alloc_init(TSDNoDefaultImplicitActionLayer);
    [(THNoteCardContentLayer *)self p_borderWidthForCurrentScreenScale];
    [(CALayer *)self->_borderLayer setBorderWidth:?];
    -[CALayer setBorderColor:](self->_borderLayer, "setBorderColor:", [-[THNoteCardContentLayer p_borderColorForCurrentScreenScale](self "p_borderColorForCurrentScreenScale")]);
    [(THNoteCardContentLayer *)self addSublayer:self->_borderLayer];

    [(THNoteCardContentLayer *)self setNeedsLayout];
  }
}

- (void)p_setupBodyScrollLayer
{
  v3 = objc_alloc_init(THInteractiveScrollLayer);
  self->_bodyScrollLayer = v3;
  [(THNoteCardContentLayer *)self addSublayer:v3];

  [(THNoteCardContentLayer *)self setNeedsLayout];
}

- (void)p_setupTitleLabel
{
  v3 = [[THMultiLineLabel alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  self->_titleLabel = v3;
  [(THMultiLineLabel *)v3 setAlignment:4];
  [(THMultiLineLabel *)self->_titleLabel setDelegate:self];
  [(THMultiLineLabel *)self->_titleLabel setAnchorPoint:CGPointZero.x, CGPointZero.y];
  [(THMultiLineLabel *)self->_titleLabel setFont:[TSUFont systemFontOfSize:21.0]];
  [(THMultiLineLabel *)self->_titleLabel setTextColor:THNoteCardHeaderColor([(THNoteCardContentLayer *)self darkMode])];
  [(THNoteCardLayoutContext *)self->_layoutContext textScale];
  [(THMultiLineLabel *)self->_titleLabel setScale:?];
  TSUScreenScale();
  [(THMultiLineLabel *)self->_titleLabel setContentsScale:?];
  titleLabel = self->_titleLabel;

  [(THNoteCardContentLayer *)self addSublayer:titleLabel];
}

- (void)p_setupPageNumberLabel
{
  v3 = [[THMultiLineLabel alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  self->_pageNumberLabel = v3;
  [(THMultiLineLabel *)v3 setAlignment:4];
  [(THMultiLineLabel *)self->_pageNumberLabel setDelegate:self];
  [(THMultiLineLabel *)self->_pageNumberLabel setAnchorPoint:CGPointZero.x, CGPointZero.y];
  [(THMultiLineLabel *)self->_pageNumberLabel setFont:[TSUFont systemFontOfSize:21.0]];
  [(THMultiLineLabel *)self->_pageNumberLabel setTextColor:THNoteCardHeaderColor([(THNoteCardContentLayer *)self darkMode])];
  [(THNoteCardLayoutContext *)self->_layoutContext textScale];
  [(THMultiLineLabel *)self->_pageNumberLabel setScale:?];
  TSUScreenScale();
  [(THMultiLineLabel *)self->_pageNumberLabel setContentsScale:?];
  [(THNoteCardContentLayer *)self addSublayer:self->_pageNumberLabel];

  [(THNoteCardContentLayer *)self p_updatePageNumberDisplay];
}

- (void)p_setupCardNumberLabel
{
  v3 = [[THMultiLineLabel alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  self->_cardNumberLabel = v3;
  [(THMultiLineLabel *)v3 setAlignment:4];
  [(THMultiLineLabel *)self->_cardNumberLabel setDelegate:self];
  [(THMultiLineLabel *)self->_cardNumberLabel setAnchorPoint:CGPointZero.x, CGPointZero.y];
  [(THMultiLineLabel *)self->_cardNumberLabel setFont:[TSUFont systemFontOfSize:25.0]];
  [(THMultiLineLabel *)self->_cardNumberLabel setTextColor:THNoteCardFooterColor([(THNoteCardContentLayer *)self darkMode])];
  [(THNoteCardLayoutContext *)self->_layoutContext textScale];
  [(THMultiLineLabel *)self->_cardNumberLabel setScale:?];
  TSUScreenScale();
  [(THMultiLineLabel *)self->_cardNumberLabel setContentsScale:?];
  cardNumberLabel = self->_cardNumberLabel;

  [(THNoteCardContentLayer *)self addSublayer:cardNumberLabel];
}

- (void)p_setupFlipLabel
{
  v3 = objc_alloc_init(THMultiLineLabel);
  self->_flipLabel = v3;
  [(THMultiLineLabel *)v3 setAlignment:4];
  [(THMultiLineLabel *)self->_flipLabel setDelegate:self];
  [(THMultiLineLabel *)self->_flipLabel setAnchorPoint:CGPointZero.x, CGPointZero.y];
  [(THMultiLineLabel *)self->_flipLabel setFont:[TSUFont systemFontOfSize:25.0]];
  [(THMultiLineLabel *)self->_flipLabel setTextColor:THNoteCardFooterFlipCardColor([(THNoteCardContentLayer *)self darkMode])];
  [(THNoteCardLayoutContext *)self->_layoutContext textScale];
  [(THMultiLineLabel *)self->_flipLabel setScale:?];
  -[THMultiLineLabel setText:](self->_flipLabel, "setText:", [THBundle() localizedStringForKey:@"Flip Card" value:&stru_471858 table:0]);
  TSUScreenScale();
  [(THMultiLineLabel *)self->_flipLabel setContentsScale:?];
  [(THNoteCardContentLayer *)self addSublayer:self->_flipLabel];

  [(THNoteCardContentLayer *)self p_updateFlipAffordanceDisplay];
}

- (void)p_setupColorBar
{
  v3 = objc_alloc_init(TSDNoDefaultImplicitActionLayer);
  self->_colorBarLayer = v3;
  [(CALayer *)v3 setDelegate:self];
  colorBarLayer = self->_colorBarLayer;

  [(THNoteCardContentLayer *)self addSublayer:colorBarLayer];
}

- (void)p_updatePageNumberDisplay
{
  if ([(THNoteCardContentLayer *)self pageNumberHovered])
  {
    v3 = [(THNoteCardContentLayer *)self pageNumberPressed];
    v4 = [(THNoteCardContentLayer *)self darkMode];
    if (v3)
    {
      v5 = THNoteCardPressedTextColor(v4);
    }

    else
    {
      v5 = THNoteCardHoveredTextColor(v4);
    }
  }

  else
  {
    v5 = THNoteCardHeaderColor([(THNoteCardContentLayer *)self darkMode]);
  }

  v6 = v5;
  pageNumberLabel = self->_pageNumberLabel;

  [(THMultiLineLabel *)pageNumberLabel setTextColor:v6];
}

- (void)p_updateFlipAffordanceDisplay
{
  v3 = [(THNoteCardContentLayer *)self flipAffordancePressed];
  v4 = [(THNoteCardContentLayer *)self darkMode];
  if (v3)
  {
    v5 = THNoteCardPressedTextColor(v4);
  }

  else
  {
    v5 = THNoteCardFooterFlipCardColor(v4);
  }

  v6 = v5;
  flipLabel = self->_flipLabel;

  [(THMultiLineLabel *)flipLabel setTextColor:v6];
}

- (id)p_borderColorForCurrentScreenScale
{
  [(THNoteCardContentLayer *)self contentsScale];
  v4 = v3 > 1.0;
  v5 = [(THNoteCardContentLayer *)self darkMode];

  return THNoteCardBorderColor(v5, v4);
}

- (CGSize)p_shadowOffsetForCurrentScreenScale
{
  layoutContext = self->_layoutContext;
  [(THNoteCardContentLayer *)self contentsScale];

  [(THNoteCardLayoutContext *)layoutContext noteCardShadowOffsetForScreenScale:?];
  result.height = v4;
  result.width = v3;
  return result;
}

- (double)p_shadowRadiusForCurrentScreenScale
{
  layoutContext = self->_layoutContext;
  [(THNoteCardContentLayer *)self contentsScale];

  [(THNoteCardLayoutContext *)layoutContext noteCardShadowRadiusForScreenScale:?];
  return result;
}

- (id).cxx_construct
{
  *(self + 24) = 257;
  *(self + 100) = 0;
  return self;
}

@end