@interface THWInteractiveImageRadioPanelRep
- (BOOL)control:(id)a3 isInteractionEnabledForRep:(id)a4;
- (__CTFont)pageControlCreateFont:(id)a3;
- (id)buttonControl:(id)a3 imageForState:(int)a4 highlighted:(BOOL)a5;
- (id)p_calloutOptionLayerWithSize:(CGSize)a3 index:(unint64_t)a4 state:(int)a5;
- (id)p_colorFromColor:(id)a3 withAlpha:(double)a4;
- (id)p_dotOptionLayerWithColor:(id)a3 size:(CGSize)a4;
- (id)p_simpleButtonLayerWithSize:(CGSize)a3 fillColor:(id)a4 borderColor:(id)a5;
- (id)p_textOptionWithColor:(id)a3 size:(CGSize)a4 index:(unint64_t)a5;
- (id)pageControl:(id)a3 layerForState:(int)a4;
- (id)pageControl:(id)a3 layerForState:(int)a4 pageIndex:(unint64_t)a5;
- (id)pageControlTextColor:(id)a3;
- (void)buttonControlWasPressed:(id)a3;
- (void)control:(id)a3 repWasAdded:(id)a4;
- (void)control:(id)a3 repWillBeRemoved:(id)a4;
- (void)pageControl:(id)a3 didChangeHighlightedFromPageIndex:(unint64_t)a4 toPageIndex:(unint64_t)a5;
- (void)pageControl:(id)a3 didChangeInteractivelyFromPageIndex:(unint64_t)a4 toPageIndex:(unint64_t)a5;
- (void)pageControl:(id)a3 updateLayer:(id)a4 forHighlight:(BOOL)a5;
- (void)setSelectedCallout:(unint64_t)a3;
@end

@implementation THWInteractiveImageRadioPanelRep

- (void)setSelectedCallout:(unint64_t)a3
{
  v4 = [-[THWInteractiveImageRadioPanelRep layout](self "layout")];

  [v4 setCurrentPage:a3];
}

- (void)buttonControlWasPressed:(id)a3
{
  v5 = [-[THWInteractiveImageRadioPanelRep layout](self "layout")];
  v6 = [v5 currentPage];
  v7 = [objc_msgSend(a3 "layout")];
  if (v7)
  {
    if (v7 == &dword_0 + 1)
    {
      if (v6 < [v5 numberOfPages] - 1)
      {
        ++v6;
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    if (!v6)
    {
      v6 = [v5 numberOfPages];
    }

    --v6;
  }

  v8 = [(THWInteractiveImageRadioPanelRep *)self transportControlDelegate];

  [(THWInteractiveImageTransportControlDelegate *)v8 transportControl:self calloutOptionSelected:v6];
}

- (id)buttonControl:(id)a3 imageForState:(int)a4 highlighted:(BOOL)a5
{
  v7 = [a3 layout];
  v8 = [v7 tag];
  if (v8 == &dword_0 + 1)
  {
    v9 = 2;
  }

  else
  {
    if (v8)
    {
      return 0;
    }

    v9 = 4;
  }

  [v7 frame];
  v11 = v10;
  v13 = v12;
  v14 = [-[THWInteractiveImageRadioPanelRep layout](self "layout")];
  v15 = [a3 highlighted];
  [objc_msgSend(a3 "canvas")];

  return [THWButtonUtilities navigationArrowImageWithSize:v9 direction:v14 color:v15 highlighted:v11 contentsScale:v13, v16];
}

- (BOOL)control:(id)a3 isInteractionEnabledForRep:(id)a4
{
  v6 = [(THWInteractiveImageRadioPanelRep *)self transportControlDelegate];

  return [(THWInteractiveImageTransportControlDelegate *)v6 transportControl:self isInteractionEnabledForRep:a4];
}

- (void)control:(id)a3 repWasAdded:(id)a4
{
  v5 = [a3 tag];
  if (!v5)
  {
    objc_opt_class();
    v6 = TSUDynamicCast();
    v7 = 304;
LABEL_9:
    *&self->super.TSDContainerRep_opaque[v7] = v6;

    [v6 setDelegate:self];
    return;
  }

  if (v5 != &dword_0 + 2)
  {
    if (v5 != &dword_0 + 1)
    {
      return;
    }

    objc_opt_class();
    v6 = TSUDynamicCast();
    v7 = 312;
    goto LABEL_9;
  }

  objc_opt_class();
  v8 = TSUDynamicCast();
  self->_pageControlRep = v8;
  [(THWPageControlRep *)v8 setDelegate:self];
  pageControlRep = self->_pageControlRep;

  [(THWPageControlRep *)pageControlRep setPageDirectlyToIndex:1];
}

- (void)control:(id)a3 repWillBeRemoved:(id)a4
{
  if ([a3 tag] <= 2)
  {
    self->_nextButtonRep = 0;
  }
}

- (void)pageControl:(id)a3 didChangeInteractivelyFromPageIndex:(unint64_t)a4 toPageIndex:(unint64_t)a5
{
  if (a5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(THWInteractiveImageRadioPanelRep *)self transportControlDelegate:a3];

    [(THWInteractiveImageTransportControlDelegate *)v8 transportControl:self calloutOptionSelected:a5];
  }
}

- (__CTFont)pageControlCreateFont:(id)a3
{
  v3 = [+[TSUFont systemFontOfSize:](TSUFont systemFontOfSize:{a3, 17.0), "familyName"}];
  v4.n128_u64[0] = 17.0;

  return _TSWPCreateFontWithFamilyName(v3, 1, 0, v4);
}

- (id)pageControlTextColor:(id)a3
{
  v3 = [(THWInteractiveImageRadioPanelRep *)self layout];

  return [v3 primaryColor];
}

- (id)pageControl:(id)a3 layerForState:(int)a4
{
  v4 = *&a4;
  [-[THWInteractiveImageRadioPanelRep layout](self layout];

  return [(THWInteractiveImageRadioPanelRep *)self p_calloutOptionLayerWithSize:0 index:v4 state:?];
}

- (id)pageControl:(id)a3 layerForState:(int)a4 pageIndex:(unint64_t)a5
{
  v6 = *&a4;
  [-[THWInteractiveImageRadioPanelRep layout](self layout];

  return [(THWInteractiveImageRadioPanelRep *)self p_calloutOptionLayerWithSize:a5 index:v6 state:?];
}

- (void)pageControl:(id)a3 didChangeHighlightedFromPageIndex:(unint64_t)a4 toPageIndex:(unint64_t)a5
{
  v5 = [(THWInteractiveImageRadioPanelRep *)self interactiveCanvasController:a3];

  [v5 invalidateLayers];
}

- (void)pageControl:(id)a3 updateLayer:(id)a4 forHighlight:(BOOL)a5
{
  LODWORD(v5) = 1.0;
  if (a5)
  {
    *&v5 = 0.5;
  }

  [a4 setOpacity:{a3, v5}];
}

- (id)p_colorFromColor:(id)a3 withAlpha:(double)a4
{
  CopyWithAlpha = CGColorCreateCopyWithAlpha([a3 CGColor], a4);
  v5 = [TSUColor colorWithCGColor:CopyWithAlpha];
  CGColorRelease(CopyWithAlpha);
  return v5;
}

- (id)p_simpleButtonLayerWithSize:(CGSize)a3 fillColor:(id)a4 borderColor:(id)a5
{
  height = a3.height;
  width = a3.width;
  v10 = +[TSDNoDefaultImplicitActionLayer layer];
  [v10 setDelegate:{-[THWInteractiveImageRadioPanelRep interactiveCanvasController](self, "interactiveCanvasController")}];
  v11 = 0.0;
  [v10 setFrame:{0.0, 0.0, width, height}];
  [v10 setCornerRadius:width * 0.5];
  [-[THWInteractiveImageRadioPanelRep canvas](self "canvas")];
  [v10 setContentsScale:?];
  if (a5)
  {
    [v10 setBorderColor:{objc_msgSend(a5, "CGColor")}];
    v11 = 1.0;
  }

  [v10 setBorderWidth:v11];
  if (a4)
  {
    [v10 setBackgroundColor:{objc_msgSend(a4, "CGColor")}];
  }

  return v10;
}

- (id)p_dotOptionLayerWithColor:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = +[CAShapeLayer layer];
  [v7 setFrame:{0.0, 0.0, width, height}];
  [v7 setBorderWidth:0.0];
  [v7 setFillColor:{objc_msgSend(a3, "CGColor")}];
  Mutable = CGPathCreateMutable();
  v10.origin.x = (width + -7.0) * 0.5;
  v10.origin.y = (height + -7.0) * 0.5;
  v10.size.width = 7.0;
  v10.size.height = 7.0;
  CGPathAddEllipseInRect(Mutable, 0, v10);
  [v7 setPath:Mutable];
  CGPathRelease(Mutable);
  return v7;
}

- (id)p_textOptionWithColor:(id)a3 size:(CGSize)a4 index:(unint64_t)a5
{
  height = a4.height;
  width = a4.width;
  v10 = objc_alloc_init(THWLabelLayer);
  [(THWLabelLayer *)v10 setFrame:0.0, 0.0, width, height];
  [-[THWInteractiveImageRadioPanelRep canvas](self "canvas")];
  [(THWLabelLayer *)v10 setContentsScale:?];
  [(THWLabelLayer *)v10 setDelegate:+[THNoAnimationLayerDelegate sharedInstance]];
  [(THWLabelLayer *)v10 setTextColor:a3];
  [(THWLabelLayer *)v10 setVerticalAlignment:1];
  [(THWLabelLayer *)v10 setHorizontalAlignment:1];
  [(THWLabelLayer *)v10 setVerticalAlignmentRule:0];
  [(THWLabelLayer *)v10 setFontSize:17.0];
  -[THWLabelLayer setFontName:](v10, "setFontName:", [+[TSUFont systemFontOfSize:](TSUFont systemFontOfSize:{17.0), "fontName"}]);
  [(THWLabelLayer *)v10 setString:[NSString stringWithFormat:@"%lu", a5]];
  return v10;
}

- (id)p_calloutOptionLayerWithSize:(CGSize)a3 index:(unint64_t)a4 state:(int)a5
{
  height = a3.height;
  width = a3.width;
  v10 = [-[THWInteractiveImageRadioPanelRep layout](self "layout")];
  v11 = v10;
  if (a5 == 1)
  {
    v12 = [(THWInteractiveImageRadioPanelRep *)self p_colorFromColor:v10 withAlpha:0.2];
    v13 = [(THWInteractiveImageRadioPanelRep *)self p_colorFromColor:v11 withAlpha:0.7];
  }

  else
  {
    v11 = [v10 colorWithAlphaComponent:0.4];
    v12 = 0;
    v13 = 0;
  }

  if (a4)
  {
    v14 = [(THWInteractiveImageRadioPanelRep *)self p_textOptionWithColor:v11 size:a4 index:width, height];
  }

  else
  {
    v14 = [(THWInteractiveImageRadioPanelRep *)self p_dotOptionLayerWithColor:v11 size:width, height];
  }

  v15 = v14;
  [-[THWInteractiveImageRadioPanelRep canvas](self "canvas")];
  [v15 setContentsScale:?];
  v16 = [(THWInteractiveImageRadioPanelRep *)self p_simpleButtonLayerWithSize:v12 fillColor:v13 borderColor:width, height];
  [v16 addSublayer:v15];
  return v16;
}

@end