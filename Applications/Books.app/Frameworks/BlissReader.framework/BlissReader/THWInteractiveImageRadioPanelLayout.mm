@interface THWInteractiveImageRadioPanelLayout
- (BOOL)p_shouldUseTextLabelWithFrameWidth:(double)a3;
- (CGRect)nextButtonFrame;
- (CGRect)pageControlFrame;
- (CGRect)prevButtonFrame;
- (CGSize)controlButtonSize;
- (CGSize)navigationArrowSize;
- (double)p_desiredWidth;
- (id)additionalLayouts;
- (id)computeLayoutGeometry;
- (id)dependentLayouts;
- (id)layoutGeometryForLayout:(id)a3;
- (id)primaryColor;
- (void)dealloc;
@end

@implementation THWInteractiveImageRadioPanelLayout

- (void)dealloc
{
  self->_pageControl = 0;
  v3.receiver = self;
  v3.super_class = THWInteractiveImageRadioPanelLayout;
  [(THWContainerLayout *)&v3 dealloc];
}

- (id)additionalLayouts
{
  v3 = +[NSMutableArray array];
  -[THWInteractiveImageRadioPanelLayout setTotalCallouts:](self, "setTotalCallouts:", [-[THWInteractiveImageWidgetLayout info](-[THWInteractiveImageRadioPanelLayout widgetLayout](self "widgetLayout")]);
  pageControl = self->_pageControl;
  if (!pageControl)
  {
    self->_pageControl = [(THWControlLayout *)[THWPageControlLayout alloc] initWithTag:2];
    [(THWPageControlLayout *)self->_pageControl setCurrentPage:[(THWInteractiveImageWidgetLayout *)[(THWInteractiveImageRadioPanelLayout *)self widgetLayout] selectedCalloutIndex]];
    [(THWPageControlLayout *)self->_pageControl setNumberOfPages:[(THWInteractiveImageRadioPanelLayout *)self totalCallouts]];
    pageControl = self->_pageControl;
  }

  [v3 addObject:pageControl];
  v5 = objc_alloc_init(THWButtonControlLayout);
  [(THWControlLayout *)v5 setTag:0];
  [v3 addObject:v5];
  [(THWButtonControlLayout *)v5 invalidateFrame];

  v6 = objc_alloc_init(THWButtonControlLayout);
  [(THWControlLayout *)v6 setTag:1];
  [v3 addObject:v6];
  [(THWButtonControlLayout *)v6 invalidateFrame];

  return v3;
}

- (id)primaryColor
{
  if ([(THWInteractiveImageWidgetLayout *)[(THWInteractiveImageRadioPanelLayout *)self widgetLayout] isExpanded])
  {

    return +[TSUColor whiteColor];
  }

  else
  {
    v4 = [(THWInteractiveImageRadioPanelLayout *)self widgetLayout];

    return [(THWInteractiveImageWidgetLayout *)v4 primaryColor];
  }
}

- (double)p_desiredWidth
{
  v2 = [(THWInteractiveImageRadioPanelLayout *)self totalCallouts];
  v3 = v2 - 1;
  if (!v2)
  {
    v3 = 0;
  }

  return v3 * 4.0 + v2 * 31.0;
}

- (BOOL)p_shouldUseTextLabelWithFrameWidth:(double)a3
{
  [(THWInteractiveImageRadioPanelLayout *)self maxCalloutFrameWidth];
  v6 = v5;
  v7 = [(THWInteractiveImageRadioPanelLayout *)self totalCallouts];
  return v6 <= a3 || v7 > 0xA;
}

- (id)computeLayoutGeometry
{
  v28.receiver = self;
  v28.super_class = THWInteractiveImageRadioPanelLayout;
  v3 = [(THWInteractiveImageRadioPanelLayout *)&v28 computeLayoutGeometry];
  [v3 frame];
  v5 = v4;
  __asm { FMOV            V0.2D, #31.0 }

  self->_navigationArrowSize = _Q0;
  v27 = _Q0;
  self->_controlButtonSize = _Q0;
  [(THWInteractiveImageRadioPanelLayout *)self setMaxCalloutFrameWidth:v4 + -142.0];
  [(THWInteractiveImageRadioPanelLayout *)self p_desiredWidth];
  v12 = v11;
  [(THWInteractiveImageRadioPanelLayout *)self maxCalloutFrameWidth];
  if (v12 <= v13)
  {
    v14 = 4.0;
  }

  else
  {
    v14 = 1.0;
  }

  v15 = [(THWInteractiveImageRadioPanelLayout *)self totalCallouts];
  v16 = v14 * ([(THWInteractiveImageRadioPanelLayout *)self totalCallouts]- 1) + v15 * 31.0;
  v17 = [(THWInteractiveImageRadioPanelLayout *)self p_shouldUseTextLabelWithFrameWidth:v16];
  if (v17)
  {
    [(THWInteractiveImageRadioPanelLayout *)self maxCalloutFrameWidth];
    v16 = v18;
  }

  [v3 frame];
  p_pageControlFrame = &self->_pageControlFrame;
  self->_pageControlFrame.origin.x = (v5 - v16) * 0.5;
  self->_pageControlFrame.origin.y = (v19 + -31.0) * 0.5;
  self->_pageControlFrame.size.width = v16;
  self->_pageControlFrame.size.height = 31.0;
  [(THWPageControlLayout *)self->_pageControl setSpacing:v14];
  [(THWPageControlLayout *)self->_pageControl setForceTextOnly:v17];
  [v3 frame];
  v22 = v21;
  v23 = 0.0;
  if ([(THWInteractiveImageWidgetLayout *)[(THWInteractiveImageRadioPanelLayout *)self widgetLayout] isExpanded])
  {
    v23 = p_pageControlFrame->origin.x + -31.0 + -14.0;
  }

  if ([(THWInteractiveImageWidgetLayout *)[(THWInteractiveImageRadioPanelLayout *)self widgetLayout] isExpanded])
  {
    v29.origin.x = p_pageControlFrame->origin.x;
    v29.origin.y = self->_pageControlFrame.origin.y;
    v29.size.width = self->_pageControlFrame.size.width;
    v29.size.height = self->_pageControlFrame.size.height;
    v24 = CGRectGetMaxX(v29) + 14.0;
  }

  else
  {
    v24 = v5 + -31.0;
  }

  v25 = (v22 + -31.0) * 0.5;
  self->_prevButtonFrame.origin.x = v23;
  self->_prevButtonFrame.origin.y = v25;
  self->_prevButtonFrame.size = v27;
  self->_nextButtonFrame.origin.x = v24;
  self->_nextButtonFrame.origin.y = v25;
  self->_nextButtonFrame.size = v27;
  return v3;
}

- (id)dependentLayouts
{
  v3 = [NSMutableArray arrayWithArray:[(THWInteractiveImageRadioPanelLayout *)self children]];
  v5.receiver = self;
  v5.super_class = THWInteractiveImageRadioPanelLayout;
  [(NSMutableArray *)v3 addObjectsFromArray:[(THWInteractiveImageRadioPanelLayout *)&v5 dependentLayouts]];
  return v3;
}

- (id)layoutGeometryForLayout:(id)a3
{
  v4 = TSUProtocolCast();
  if (!v4)
  {
    return 0;
  }

  v5 = [v4 tag];
  if (v5 > 2)
  {
    return 0;
  }

  v6 = off_45E488[v5];
  v7 = [[TSDLayoutGeometry alloc] initWithFrame:{*&self->super.TSDContainerLayout_opaque[*v6], *&self->super.TSDContainerLayout_opaque[*v6 + 8], *&self->super.TSDContainerLayout_opaque[*v6 + 16], *&self->super.TSDContainerLayout_opaque[*v6 + 24]}];

  return v7;
}

- (CGSize)navigationArrowSize
{
  width = self->_navigationArrowSize.width;
  height = self->_navigationArrowSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)controlButtonSize
{
  width = self->_controlButtonSize.width;
  height = self->_controlButtonSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)nextButtonFrame
{
  x = self->_nextButtonFrame.origin.x;
  y = self->_nextButtonFrame.origin.y;
  width = self->_nextButtonFrame.size.width;
  height = self->_nextButtonFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)prevButtonFrame
{
  x = self->_prevButtonFrame.origin.x;
  y = self->_prevButtonFrame.origin.y;
  width = self->_prevButtonFrame.size.width;
  height = self->_prevButtonFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)pageControlFrame
{
  x = self->_pageControlFrame.origin.x;
  y = self->_pageControlFrame.origin.y;
  width = self->_pageControlFrame.size.width;
  height = self->_pageControlFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end