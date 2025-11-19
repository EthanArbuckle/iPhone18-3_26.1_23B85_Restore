@interface THChapterBrowserScrubbablePageControl
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (CGPoint)p_indicatorCenterAtIndex:(unint64_t)a3;
- (THChapterBrowserScrubbablePageControl)initWithFrame:(CGRect)a3;
- (id)p_layerForPageIndex:(unint64_t)a3;
- (id)p_layerForSelectingPage;
- (unint64_t)p_pageIndexForPoint:(CGPoint)a3;
- (void)_selectDotAtIndex:(unint64_t)a3 animated:(BOOL)a4;
- (void)cancelTrackingWithEvent:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)p_selectDotClosestToPageIndex:(int64_t)a3 animated:(BOOL)a4;
- (void)p_setCurrentPage:(unint64_t)a3;
- (void)p_updateWithNewPageIndex:(unint64_t)a3 animated:(BOOL)a4;
- (void)p_updateWithTouch:(id)a3 animated:(BOOL)a4 lastTouch:(BOOL)a5;
- (void)setCurrentPage:(unint64_t)a3;
- (void)setFrame:(CGRect)a3;
- (void)setNumberOfPages:(unint64_t)a3;
@end

@implementation THChapterBrowserScrubbablePageControl

- (THChapterBrowserScrubbablePageControl)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = THChapterBrowserScrubbablePageControl;
  v3 = [(THChapterBrowserScrubbablePageControl *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_currentPage = 0x7FFFFFFFFFFFFFFFLL;
    v3->_currentPageIndicatorIndex = 0x7FFFFFFFFFFFFFFFLL;
    v5 = objc_alloc_init(TSKFidgetResolver);
    v4->_fidgetResolver = v5;
    [(TSKFidgetResolver *)v5 setFidgetThreshold:0.02];
    v4->_indicators = objc_alloc_init(NSMutableArray);
    [(THChapterBrowserScrubbablePageControl *)v4 setNeedsLayout];
    [(THChapterBrowserScrubbablePageControl *)v4 setAutoresizingMask:2];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THChapterBrowserScrubbablePageControl;
  [(THChapterBrowserScrubbablePageControl *)&v3 dealloc];
}

- (void)setNumberOfPages:(unint64_t)a3
{
  if (self->_numberOfPages != a3)
  {
    [(THChapterBrowserScrubbablePageControl *)self bounds];
    if (CGRectIsEmpty(v17))
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    self->_numberOfPages = a3;
    [(THChapterBrowserScrubbablePageControl *)self bounds];
    TSUClamp();
    self->_dotWidth = v5;
    [(THChapterBrowserScrubbablePageControl *)self bounds];
    v7 = fmax(v6 / self->_dotWidth, 1.0);
    if (v7 >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = v7;
    }

    [(THChapterBrowserScrubbablePageControl *)self bounds];
    self->_leftMargin = (v9 - (v8 * self->_dotWidth)) * 0.5;
    if ([(NSMutableArray *)self->_indicators count]>= v8)
    {
      indicators = self->_indicators;
      if (v8)
      {
        for (i = [(NSMutableArray *)indicators count]- 1; i >= v8; --i)
        {
          [-[NSMutableArray objectAtIndex:](self->_indicators objectAtIndex:{i), "removeFromSuperlayer"}];
          [(NSMutableArray *)self->_indicators removeObjectAtIndex:i];
        }
      }

      else
      {
        [(NSMutableArray *)indicators makeObjectsPerformSelector:"removeFromSuperlayer"];
        [(NSMutableArray *)self->_indicators removeAllObjects];
      }
    }

    else
    {
      v10 = [(NSMutableArray *)self->_indicators count];
      if (v10 < v8)
      {
        v11 = v10;
        do
        {
          v12 = [(THChapterBrowserScrubbablePageControl *)self p_layerForPageIndex:v11];
          [-[THChapterBrowserScrubbablePageControl layer](self "layer")];
          [(NSMutableArray *)self->_indicators addObject:v12];
          ++v11;
        }

        while (v8 != v11);
      }
    }

    v15 = a3 - 1;
    if ([(THChapterBrowserScrubbablePageControl *)self currentPage]> v15)
    {
      [(THChapterBrowserScrubbablePageControl *)self setCurrentPage:v15];
    }

    [(THChapterBrowserScrubbablePageControl *)self setNeedsLayout];
  }
}

- (void)setCurrentPage:(unint64_t)a3
{
  [(THChapterBrowserScrubbablePageControl *)self p_setCurrentPage:a3];
  v4 = [(THChapterBrowserScrubbablePageControl *)self currentPage];

  [(THChapterBrowserScrubbablePageControl *)self p_selectDotClosestToPageIndex:v4 animated:0];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  dotWidth = self->_dotWidth;
  numberOfPages = fmax(a3.size.width / dotWidth, 1.0);
  if (self->_numberOfPages < numberOfPages)
  {
    numberOfPages = self->_numberOfPages;
  }

  self->_leftMargin = (a3.size.width - (numberOfPages * dotWidth)) * 0.5;
  self->_numberOfPages = 0;
  [(THChapterBrowserScrubbablePageControl *)self setNumberOfPages:?];
  v10.receiver = self;
  v10.super_class = THChapterBrowserScrubbablePageControl;
  [(THChapterBrowserScrubbablePageControl *)&v10 setFrame:x, y, width, height];
}

- (void)layoutSubviews
{
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v3 = [(NSMutableArray *)self->_indicators count];
  if (v3)
  {
    v4 = v3;
    leftMargin = self->_leftMargin;
    dotWidth = self->_dotWidth;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    indicators = self->_indicators;
    v8 = [(NSMutableArray *)indicators countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = leftMargin + vcvtd_n_f64_u64(dotWidth, 1uLL);
      v11 = *v14;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(indicators);
          }

          [*(*(&v13 + 1) + 8 * i) setPosition:{round(v10), 24.0}];
          v10 = v10 + self->_dotWidth;
        }

        v9 = [(NSMutableArray *)indicators countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    if (self->_currentPageIndicatorIndex < v4)
    {
      [(THChapterBrowserScrubbablePageControl *)self p_indicatorCenterAtIndex:?];
      [(CALayer *)self->_currentPageIndicator setPosition:?];
    }
  }

  +[CATransaction commit];
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = THChapterBrowserScrubbablePageControl;
  v6 = [(THChapterBrowserScrubbablePageControl *)&v8 beginTrackingWithTouch:a3 withEvent:a4];
  if (v6)
  {
    self->_startingPage = [(THChapterBrowserScrubbablePageControl *)self currentPage];
  }

  [(THChapterBrowserScrubbablePageControl *)self p_updateWithTouch:a3 animated:1 lastTouch:0];
  return v6;
}

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  self->_dragging = 1;
  [(THChapterBrowserScrubbablePageControl *)self p_updateWithTouch:a3 animated:0 lastTouch:0];
  return 1;
}

- (void)cancelTrackingWithEvent:(id)a3
{
  if ([(THChapterBrowserScrubbablePageControl *)self currentPage]!= self->_startingPage)
  {
    [(THChapterBrowserScrubbablePageControl *)self sendActionsForControlEvents:4096];
  }

  [(THChapterBrowserScrubbablePageControl *)self sendActionsForControlEvents:128];
}

- (id)p_layerForSelectingPage
{
  v2 = +[CALayer layer];
  [(CALayer *)v2 setBounds:0.0, 0.0, 22.0, 22.0];
  -[CALayer setBorderColor:](v2, "setBorderColor:", [+[UIColor whiteColor](UIColor CGColor]);
  [(CALayer *)v2 setBorderWidth:1.0];
  -[CALayer setBackgroundColor:](v2, "setBackgroundColor:", [+[UIColor colorWithWhite:alpha:](UIColor CGColor:1.0]);
  [(CALayer *)v2 setCornerRadius:11.0];
  return v2;
}

- (id)p_layerForPageIndex:(unint64_t)a3
{
  v3 = 6.0;
  if (a3 || (![(THChapterBrowserScrubbablePageControl *)self firstDotSpecialRendering]? (v3 = 6.0) : (v3 = 7.0), ![(THChapterBrowserScrubbablePageControl *)self firstDotSpecialRendering]))
  {
    v5 = +[CALayer layer];
    [(CALayer *)v5 setBounds:0.0, 0.0, 6.0, v3];
    [(CALayer *)v5 setCornerRadius:3.0];
    -[CALayer setBackgroundColor:](v5, "setBackgroundColor:", [+[UIColor whiteColor](UIColor CGColor]);
  }

  else
  {
    v5 = +[CAShapeLayer layer];
    [(CALayer *)v5 setBounds:0.0, 0.0, 6.0, v3];
    -[CALayer setFillColor:](v5, "setFillColor:", [+[UIColor whiteColor](UIColor CGColor]);
    v6 = +[UIBezierPath bezierPath];
    y = CGPointZero.y;
    [(UIBezierPath *)v6 moveToPoint:CGPointZero.x, y];
    [(UIBezierPath *)v6 addLineToPoint:0.0, v3];
    [(UIBezierPath *)v6 addLineToPoint:6.0, v3 * 0.5];
    [(UIBezierPath *)v6 addLineToPoint:CGPointZero.x, y];
    CGAffineTransformMakeTranslation(&v9, 1.0, 0.0);
    [(UIBezierPath *)v6 applyTransform:&v9];
    [(CALayer *)v5 setPath:[(UIBezierPath *)v6 CGPath]];
  }

  return v5;
}

- (void)p_setCurrentPage:(unint64_t)a3
{
  numberOfPages = self->_numberOfPages;
  if (numberOfPages <= a3)
  {
    v4 = numberOfPages - 1;
  }

  else
  {
    v4 = a3;
  }

  self->_currentPage = v4;
}

- (void)_selectDotAtIndex:(unint64_t)a3 animated:(BOOL)a4
{
  if ([(NSMutableArray *)self->_indicators count]> a3)
  {
    if (!self->_currentPageIndicator)
    {
      self->_currentPageIndicator = [(THChapterBrowserScrubbablePageControl *)self p_layerForSelectingPage];
      [-[THChapterBrowserScrubbablePageControl layer](self "layer")];
    }

    self->_currentPageIndicatorIndex = a3;
    +[CATransaction begin];
    [CATransaction setAnimationDuration:0.15];
    if (!a4)
    {
      [CATransaction setDisableActions:1];
    }

    [(THChapterBrowserScrubbablePageControl *)self p_indicatorCenterAtIndex:self->_currentPageIndicatorIndex];
    [(CALayer *)self->_currentPageIndicator setPosition:?];

    +[CATransaction commit];
  }
}

- (void)p_selectDotClosestToPageIndex:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = vcvtas_u32_f32(([(NSMutableArray *)self->_indicators count]/ self->_numberOfPages) * a3);

  [(THChapterBrowserScrubbablePageControl *)self _selectDotAtIndex:v6 animated:v4];
}

- (CGPoint)p_indicatorCenterAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_indicators count]<= a3)
  {
    x = CGPointZero.x;
    y = CGPointZero.y;
  }

  else
  {
    [-[NSMutableArray objectAtIndex:](self->_indicators objectAtIndex:{a3), "position"}];
  }

  result.y = y;
  result.x = x;
  return result;
}

- (void)p_updateWithTouch:(id)a3 animated:(BOOL)a4 lastTouch:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  [a3 locationInView:self];
  v8 = [(THChapterBrowserScrubbablePageControl *)self p_pageIndexForPoint:?];
  [(TSKFidgetResolver *)[(THChapterBrowserScrubbablePageControl *)self fidgetResolver] pushValue:[NSNumber numberWithUnsignedInteger:v8]];
  if (v5)
  {
    v8 = [-[TSKFidgetResolver nonFidgetValue](-[THChapterBrowserScrubbablePageControl fidgetResolver](self "fidgetResolver")];
  }

  [(THChapterBrowserScrubbablePageControl *)self p_updateWithNewPageIndex:v8 animated:v6];
}

- (void)p_updateWithNewPageIndex:(unint64_t)a3 animated:(BOOL)a4
{
  if (self->_currentPage != a3)
  {
    v5 = a4;
    [(THChapterBrowserScrubbablePageControl *)self p_setCurrentPage:?];
    [(THChapterBrowserScrubbablePageControl *)self p_selectDotClosestToPageIndex:[(THChapterBrowserScrubbablePageControl *)self currentPage] animated:v5];

    [(THChapterBrowserScrubbablePageControl *)self sendActionsForControlEvents:4096];
  }
}

- (unint64_t)p_pageIndexForPoint:(CGPoint)a3
{
  x = a3.x;
  [(THChapterBrowserScrubbablePageControl *)self bounds:a3.x];
  v6 = v5 + self->_leftMargin * -2.0;
  v7 = ((x - self->_leftMargin) / (v6 / [(THChapterBrowserScrubbablePageControl *)self numberOfPages]));
  if ((v7 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  if ([(THChapterBrowserScrubbablePageControl *)self numberOfPages]<= v7)
  {
    return [(THChapterBrowserScrubbablePageControl *)self numberOfPages]- 1;
  }

  return v7;
}

@end