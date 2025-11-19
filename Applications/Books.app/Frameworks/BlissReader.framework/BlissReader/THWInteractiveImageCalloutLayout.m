@interface THWInteractiveImageCalloutLayout
- (CGPoint)stackedControlContainerOrigin:(id)a3;
- (CGRect)backgroundRect;
- (CGRect)backgroundRectTitleOnly;
- (CGRect)groupFrameWithViewScale:(double)a3;
- (THWInteractiveImageCalloutLayout)initWithInfo:(id)a3;
- (UIEdgeInsets)p_scaledInsets;
- (double)p_scaledWidth;
- (double)stackedControlContainer:(id)a3 verticalPaddingAfter:(id)a4;
- (double)stackedControlContainer:(id)a3 verticalSpacingBefore:(id)a4;
- (id)computeLayoutGeometry;
- (id)controlContainerChildInfosForLayout:(id)a3;
- (id)sccLayout;
- (id)stackedControlContainer:(id)a3 styleProviderForLayout:(id)a4;
- (id)stackedControlContainerHeightLastChild:(id)a3;
- (void)dealloc;
- (void)invalidateTitleStyle;
- (void)p_invalidateTitleIfNeeded;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)setTitleOnly:(BOOL)a3;
@end

@implementation THWInteractiveImageCalloutLayout

- (THWInteractiveImageCalloutLayout)initWithInfo:(id)a3
{
  v5.receiver = self;
  v5.super_class = THWInteractiveImageCalloutLayout;
  v3 = [(THWInteractiveImageCalloutLayout *)&v5 initWithInfo:a3];
  if (v3)
  {
    v3->_stackedControlContainer = [[THWStackedControlContainer alloc] initWithDelegate:v3];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWInteractiveImageCalloutLayout;
  [(THWContainerLayout *)&v3 dealloc];
}

- (id)sccLayout
{
  objc_opt_class();
  [-[THWInteractiveImageCalloutLayout children](self "children")];

  return TSUDynamicCast();
}

- (id)computeLayoutGeometry
{
  v3 = [(THWInteractiveImageCalloutLayout *)self sccLayout];
  [(THWInteractiveImageCalloutLayout *)self p_scaledInsets];
  [objc_msgSend(objc_msgSend(-[THWInteractiveImageCalloutLayout layoutController](self "layoutController")];
  [(THWInteractiveImageCalloutLayout *)self p_scaledWidth];
  v4 = [(THWInteractiveImageCalloutLayout *)self delegate];
  [(THWInteractiveImageCalloutInfo *)self->_calloutInfo placardFixedPoint];
  [(THWInteractiveImageCalloutLayoutDelegate *)v4 interactiveImageCallout:self convertContentPointToUnscaledOverlayPoint:?];
  TSDRectWithCenterAndSize();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  TSDRectWithSize();
  self->_backgroundRectTitleOnly.origin.x = v13;
  self->_backgroundRectTitleOnly.origin.y = v14;
  self->_backgroundRectTitleOnly.size.width = v15;
  self->_backgroundRectTitleOnly.size.height = v16;
  if (self->_selected)
  {
    [objc_msgSend(v3 "geometry")];
    v12 = v17;
    TSDRectWithSize();
  }

  self->_backgroundRect.origin.x = v13;
  self->_backgroundRect.origin.y = v14;
  self->_backgroundRect.size.width = v15;
  self->_backgroundRect.size.height = v16;
  v18 = [[TSDLayoutGeometry alloc] initWithFrame:{v6, v8, v10, v12}];

  return v18;
}

- (void)setSelected:(BOOL)a3
{
  if (self->_selected != a3)
  {
    v8 = v3;
    self->_selected = a3;
    if (!self->_titleOnly)
    {
      [(THWInteractiveImageCalloutLayout *)self invalidateSize];
      [-[THWInteractiveImageCalloutLayout sccLayout](self "sccLayout")];
    }

    [objc_msgSend(-[THWInteractiveImageCalloutLayout layoutController](self layoutController];

    [(THWInteractiveImageCalloutLayout *)self p_invalidateTitleIfNeeded];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    self->_highlighted = a3;
    [objc_msgSend(-[THWInteractiveImageCalloutLayout layoutController](self "layoutController")];

    [(THWInteractiveImageCalloutLayout *)self p_invalidateTitleIfNeeded];
  }
}

- (void)setTitleOnly:(BOOL)a3
{
  if (self->_titleOnly != a3)
  {
    self->_titleOnly = a3;
    [(THWInteractiveImageCalloutLayout *)self invalidateSize];
    [-[THWInteractiveImageCalloutLayout sccLayout](self "sccLayout")];
    [-[THWInteractiveImageCalloutLayout sccLayout](self "sccLayout")];

    [(THWInteractiveImageCalloutLayout *)self invalidateTitleStyle];
  }
}

- (void)p_invalidateTitleIfNeeded
{
  if (self->_titleOnly)
  {
    [(THWInteractiveImageCalloutLayout *)self invalidateTitleStyle];
  }
}

- (void)invalidateTitleStyle
{
  v3 = [(THWInteractiveImageCalloutInfo *)self->_calloutInfo titleStorage];
  v4 = [(TSWPStorage *)[(THWInteractiveImageCalloutInfo *)self->_calloutInfo titleStorage] length];

  [(TSWPStorage *)v3 styleDidChangeInRange:0, v4];
}

- (CGRect)groupFrameWithViewScale:(double)a3
{
  v4 = [(THWInteractiveImageCalloutLayout *)self calloutInfo];
  [-[TSDShapeInfo geometry](-[THWInteractiveImageCalloutInfo groupShape](-[THWInteractiveImageCalloutLayout calloutInfo](self "calloutInfo")];
  [(THWInteractiveImageCalloutInfo *)v4 placardFixedPoint];
  TSDMultiplyPointScalar();

  TSDRectWithCenterAndSize();
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (id)controlContainerChildInfosForLayout:(id)a3
{
  v4 = [(THWInteractiveImageCalloutLayout *)self hasTitle];
  v5 = [(THWInteractiveImageCalloutLayout *)self hasDescription];
  if (self->_titleOnly)
  {
    if (v4)
    {
      v11 = [(THWInteractiveImageCalloutInfo *)self->_calloutInfo titleStorage];
      v6 = &v11;
LABEL_8:
      v7 = 1;
      return [NSArray arrayWithObjects:v6 count:v7];
    }
  }

  else
  {
    if ((v4 & v5) == 1)
    {
      v10[0] = [(THWInteractiveImageCalloutInfo *)self->_calloutInfo titleStorage];
      v10[1] = [(THWInteractiveImageCalloutInfo *)self->_calloutInfo descriptionStorage];
      v6 = v10;
      v7 = 2;
      return [NSArray arrayWithObjects:v6 count:v7];
    }

    if (v4)
    {
      v9 = [(THWInteractiveImageCalloutInfo *)self->_calloutInfo titleStorage];
      v6 = &v9;
      goto LABEL_8;
    }
  }

  return 0;
}

- (id)stackedControlContainerHeightLastChild:(id)a3
{
  if (self->_selected)
  {
    return 0;
  }

  v6 = [a3 children];

  return [v6 firstObject];
}

- (double)p_scaledWidth
{
  [-[TSDShapeInfo geometry](-[THWInteractiveImageCalloutInfo groupShape](self->_calloutInfo "groupShape")];
  [(THWInteractiveImageCalloutLayoutDelegate *)self->_delegate interactiveImageCalloutFontScale:self];
  TSURound();
  return fmax(v3, 1.0);
}

- (CGPoint)stackedControlContainerOrigin:(id)a3
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIEdgeInsets)p_scaledInsets
{
  [(THWInteractiveImageCalloutInfo *)self->_calloutInfo contentInset];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(THWInteractiveImageCalloutLayoutDelegate *)self->_delegate interactiveImageCalloutFontScale:self];
  if (v11 != 1.0)
  {
    TSURound();
    v4 = v12;
    TSURound();
    v8 = v13;
    TSURound();
    v6 = v14;
    TSURound();
    v10 = v15;
  }

  v16 = v4;
  v17 = v6;
  v18 = v8;
  v19 = v10;
  result.right = v19;
  result.bottom = v18;
  result.left = v17;
  result.top = v16;
  return result;
}

- (double)stackedControlContainer:(id)a3 verticalPaddingAfter:(id)a4
{
  [(THWInteractiveImageCalloutInfo *)self->_calloutInfo verticalSpacing:a3];
  [(THWInteractiveImageCalloutLayoutDelegate *)self->_delegate interactiveImageCalloutFontScale:self];

  TSURound();
  return result;
}

- (double)stackedControlContainer:(id)a3 verticalSpacingBefore:(id)a4
{
  [objc_msgSend(a3 "children")];
  [(THWInteractiveImageCalloutLayoutDelegate *)self->_delegate interactiveImageCalloutFontScale:self];

  TSURound();
  return result;
}

- (id)stackedControlContainer:(id)a3 styleProviderForLayout:(id)a4
{
  if (!self->_titleOnly)
  {
    return 0;
  }

  v5 = [a4 info];
  if (v5 != [(THWInteractiveImageCalloutInfo *)self->_calloutInfo titleStorage])
  {
    return 0;
  }

  if (!self->_styleProvider)
  {
    self->_styleProvider = [[THWInteractiveImageCalloutStyleProvider alloc] initWithStorage:[(THWInteractiveImageCalloutInfo *)self->_calloutInfo titleStorage]];
  }

  [(THWInteractiveImageCalloutLayoutDelegate *)[(THWInteractiveImageCalloutLayout *)self delegate] interactiveImageCalloutFontScale:self];
  [(THWInteractiveImageCalloutStyleProvider *)self->_styleProvider setFontScale:?];
  v7 = self->_selected || self->_highlighted;
  [(THWInteractiveImageCalloutStyleProvider *)self->_styleProvider setSelected:v7];
  return self->_styleProvider;
}

- (CGRect)backgroundRect
{
  x = self->_backgroundRect.origin.x;
  y = self->_backgroundRect.origin.y;
  width = self->_backgroundRect.size.width;
  height = self->_backgroundRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)backgroundRectTitleOnly
{
  x = self->_backgroundRectTitleOnly.origin.x;
  y = self->_backgroundRectTitleOnly.origin.y;
  width = self->_backgroundRectTitleOnly.size.width;
  height = self->_backgroundRectTitleOnly.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end