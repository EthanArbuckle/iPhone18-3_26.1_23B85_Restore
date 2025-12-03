@interface THWInteractiveImageRadioPanelRep
- (BOOL)control:(id)control isInteractionEnabledForRep:(id)rep;
- (__CTFont)pageControlCreateFont:(id)font;
- (id)buttonControl:(id)control imageForState:(int)state highlighted:(BOOL)highlighted;
- (id)p_calloutOptionLayerWithSize:(CGSize)size index:(unint64_t)index state:(int)state;
- (id)p_colorFromColor:(id)color withAlpha:(double)alpha;
- (id)p_dotOptionLayerWithColor:(id)color size:(CGSize)size;
- (id)p_simpleButtonLayerWithSize:(CGSize)size fillColor:(id)color borderColor:(id)borderColor;
- (id)p_textOptionWithColor:(id)color size:(CGSize)size index:(unint64_t)index;
- (id)pageControl:(id)control layerForState:(int)state;
- (id)pageControl:(id)control layerForState:(int)state pageIndex:(unint64_t)index;
- (id)pageControlTextColor:(id)color;
- (void)buttonControlWasPressed:(id)pressed;
- (void)control:(id)control repWasAdded:(id)added;
- (void)control:(id)control repWillBeRemoved:(id)removed;
- (void)pageControl:(id)control didChangeHighlightedFromPageIndex:(unint64_t)index toPageIndex:(unint64_t)pageIndex;
- (void)pageControl:(id)control didChangeInteractivelyFromPageIndex:(unint64_t)index toPageIndex:(unint64_t)pageIndex;
- (void)pageControl:(id)control updateLayer:(id)layer forHighlight:(BOOL)highlight;
- (void)setSelectedCallout:(unint64_t)callout;
@end

@implementation THWInteractiveImageRadioPanelRep

- (void)setSelectedCallout:(unint64_t)callout
{
  v4 = [-[THWInteractiveImageRadioPanelRep layout](self "layout")];

  [v4 setCurrentPage:callout];
}

- (void)buttonControlWasPressed:(id)pressed
{
  v5 = [-[THWInteractiveImageRadioPanelRep layout](self "layout")];
  currentPage = [v5 currentPage];
  v7 = [objc_msgSend(pressed "layout")];
  if (v7)
  {
    if (v7 == &dword_0 + 1)
    {
      if (currentPage < [v5 numberOfPages] - 1)
      {
        ++currentPage;
      }

      else
      {
        currentPage = 0;
      }
    }
  }

  else
  {
    if (!currentPage)
    {
      currentPage = [v5 numberOfPages];
    }

    --currentPage;
  }

  transportControlDelegate = [(THWInteractiveImageRadioPanelRep *)self transportControlDelegate];

  [(THWInteractiveImageTransportControlDelegate *)transportControlDelegate transportControl:self calloutOptionSelected:currentPage];
}

- (id)buttonControl:(id)control imageForState:(int)state highlighted:(BOOL)highlighted
{
  layout = [control layout];
  v8 = [layout tag];
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

  [layout frame];
  v11 = v10;
  v13 = v12;
  v14 = [-[THWInteractiveImageRadioPanelRep layout](self "layout")];
  highlighted = [control highlighted];
  [objc_msgSend(control "canvas")];

  return [THWButtonUtilities navigationArrowImageWithSize:v9 direction:v14 color:highlighted highlighted:v11 contentsScale:v13, v16];
}

- (BOOL)control:(id)control isInteractionEnabledForRep:(id)rep
{
  transportControlDelegate = [(THWInteractiveImageRadioPanelRep *)self transportControlDelegate];

  return [(THWInteractiveImageTransportControlDelegate *)transportControlDelegate transportControl:self isInteractionEnabledForRep:rep];
}

- (void)control:(id)control repWasAdded:(id)added
{
  v5 = [control tag];
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

- (void)control:(id)control repWillBeRemoved:(id)removed
{
  if ([control tag] <= 2)
  {
    self->_nextButtonRep = 0;
  }
}

- (void)pageControl:(id)control didChangeInteractivelyFromPageIndex:(unint64_t)index toPageIndex:(unint64_t)pageIndex
{
  if (pageIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(THWInteractiveImageRadioPanelRep *)self transportControlDelegate:control];

    [(THWInteractiveImageTransportControlDelegate *)v8 transportControl:self calloutOptionSelected:pageIndex];
  }
}

- (__CTFont)pageControlCreateFont:(id)font
{
  v3 = [+[TSUFont systemFontOfSize:](TSUFont systemFontOfSize:{font, 17.0), "familyName"}];
  v4.n128_u64[0] = 17.0;

  return _TSWPCreateFontWithFamilyName(v3, 1, 0, v4);
}

- (id)pageControlTextColor:(id)color
{
  layout = [(THWInteractiveImageRadioPanelRep *)self layout];

  return [layout primaryColor];
}

- (id)pageControl:(id)control layerForState:(int)state
{
  v4 = *&state;
  [-[THWInteractiveImageRadioPanelRep layout](self layout];

  return [(THWInteractiveImageRadioPanelRep *)self p_calloutOptionLayerWithSize:0 index:v4 state:?];
}

- (id)pageControl:(id)control layerForState:(int)state pageIndex:(unint64_t)index
{
  v6 = *&state;
  [-[THWInteractiveImageRadioPanelRep layout](self layout];

  return [(THWInteractiveImageRadioPanelRep *)self p_calloutOptionLayerWithSize:index index:v6 state:?];
}

- (void)pageControl:(id)control didChangeHighlightedFromPageIndex:(unint64_t)index toPageIndex:(unint64_t)pageIndex
{
  v5 = [(THWInteractiveImageRadioPanelRep *)self interactiveCanvasController:control];

  [v5 invalidateLayers];
}

- (void)pageControl:(id)control updateLayer:(id)layer forHighlight:(BOOL)highlight
{
  LODWORD(v5) = 1.0;
  if (highlight)
  {
    *&v5 = 0.5;
  }

  [layer setOpacity:{control, v5}];
}

- (id)p_colorFromColor:(id)color withAlpha:(double)alpha
{
  CopyWithAlpha = CGColorCreateCopyWithAlpha([color CGColor], alpha);
  v5 = [TSUColor colorWithCGColor:CopyWithAlpha];
  CGColorRelease(CopyWithAlpha);
  return v5;
}

- (id)p_simpleButtonLayerWithSize:(CGSize)size fillColor:(id)color borderColor:(id)borderColor
{
  height = size.height;
  width = size.width;
  v10 = +[TSDNoDefaultImplicitActionLayer layer];
  [v10 setDelegate:{-[THWInteractiveImageRadioPanelRep interactiveCanvasController](self, "interactiveCanvasController")}];
  v11 = 0.0;
  [v10 setFrame:{0.0, 0.0, width, height}];
  [v10 setCornerRadius:width * 0.5];
  [-[THWInteractiveImageRadioPanelRep canvas](self "canvas")];
  [v10 setContentsScale:?];
  if (borderColor)
  {
    [v10 setBorderColor:{objc_msgSend(borderColor, "CGColor")}];
    v11 = 1.0;
  }

  [v10 setBorderWidth:v11];
  if (color)
  {
    [v10 setBackgroundColor:{objc_msgSend(color, "CGColor")}];
  }

  return v10;
}

- (id)p_dotOptionLayerWithColor:(id)color size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = +[CAShapeLayer layer];
  [v7 setFrame:{0.0, 0.0, width, height}];
  [v7 setBorderWidth:0.0];
  [v7 setFillColor:{objc_msgSend(color, "CGColor")}];
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

- (id)p_textOptionWithColor:(id)color size:(CGSize)size index:(unint64_t)index
{
  height = size.height;
  width = size.width;
  v10 = objc_alloc_init(THWLabelLayer);
  [(THWLabelLayer *)v10 setFrame:0.0, 0.0, width, height];
  [-[THWInteractiveImageRadioPanelRep canvas](self "canvas")];
  [(THWLabelLayer *)v10 setContentsScale:?];
  [(THWLabelLayer *)v10 setDelegate:+[THNoAnimationLayerDelegate sharedInstance]];
  [(THWLabelLayer *)v10 setTextColor:color];
  [(THWLabelLayer *)v10 setVerticalAlignment:1];
  [(THWLabelLayer *)v10 setHorizontalAlignment:1];
  [(THWLabelLayer *)v10 setVerticalAlignmentRule:0];
  [(THWLabelLayer *)v10 setFontSize:17.0];
  -[THWLabelLayer setFontName:](v10, "setFontName:", [+[TSUFont systemFontOfSize:](TSUFont systemFontOfSize:{17.0), "fontName"}]);
  [(THWLabelLayer *)v10 setString:[NSString stringWithFormat:@"%lu", index]];
  return v10;
}

- (id)p_calloutOptionLayerWithSize:(CGSize)size index:(unint64_t)index state:(int)state
{
  height = size.height;
  width = size.width;
  v10 = [-[THWInteractiveImageRadioPanelRep layout](self "layout")];
  v11 = v10;
  if (state == 1)
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

  if (index)
  {
    height = [(THWInteractiveImageRadioPanelRep *)self p_textOptionWithColor:v11 size:index index:width, height];
  }

  else
  {
    height = [(THWInteractiveImageRadioPanelRep *)self p_dotOptionLayerWithColor:v11 size:width, height];
  }

  v15 = height;
  [-[THWInteractiveImageRadioPanelRep canvas](self "canvas")];
  [v15 setContentsScale:?];
  height2 = [(THWInteractiveImageRadioPanelRep *)self p_simpleButtonLayerWithSize:v12 fillColor:v13 borderColor:width, height];
  [height2 addSublayer:v15];
  return height2;
}

@end