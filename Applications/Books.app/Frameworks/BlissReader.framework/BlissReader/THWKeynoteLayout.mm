@interface THWKeynoteLayout
- (BOOL)isCompact;
- (BOOL)isCompactFlowPresentation;
- (BOOL)isReflowablePresentation;
- (BOOL)p_autoplayEnabled;
- (BOOL)p_isExpanded;
- (BOOL)p_shouldShowPlayButton;
- (THWKeynoteLayout)initWithInfo:(id)info;
- (THWKeynoteShowLayout)showLayout;
- (id)additionalLayouts;
- (id)childInfosForLayout;
- (id)dependentLayouts;
- (id)layoutGeometryForLayout:(id)layout;
- (id)layoutGeometryFromProvider;
- (void)dealloc;
@end

@implementation THWKeynoteLayout

- (THWKeynoteLayout)initWithInfo:(id)info
{
  v6.receiver = self;
  v6.super_class = THWKeynoteLayout;
  v3 = [(THWKeynoteLayout *)&v6 initWithInfo:info];
  v4 = v3;
  if (v3)
  {
    if ([objc_msgSend(-[THWKeynoteLayout info](v3 "info")])
    {
      v4->_playButtonLayout = objc_alloc_init(THWButtonControlLayout);
      if ([-[THWKeynoteLayout info](v4 "info")])
      {
        v4->_transportControlLayout = objc_alloc_init(THWTransportControlLayout);
      }
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWKeynoteLayout;
  [(THWContainerLayout *)&v3 dealloc];
}

- (BOOL)p_autoplayEnabled
{
  v2 = [-[THWKeynoteLayout info](self "info")];

  return [v2 enabled];
}

- (BOOL)isCompact
{
  objc_opt_class();
  [objc_msgSend(-[THWKeynoteLayout layoutController](self "layoutController")];
  v3 = TSUDynamicCast();
  if (v3)
  {
    v4 = v3;
    if ([v3 isCompactWidth])
    {
      LOBYTE(v3) = 1;
    }

    else
    {

      LOBYTE(v3) = [v4 isCompactHeight];
    }
  }

  return v3;
}

- (BOOL)p_shouldShowPlayButton
{
  v3 = !self->_playButtonHidden;
  if ([(THWKeynoteLayout *)self p_autoplayEnabled])
  {
    v3 &= [(THWKeynoteLayout *)self isCompact];
  }

  return v3 & 1;
}

- (THWKeynoteShowLayout)showLayout
{
  result = [-[THWKeynoteLayout info](self "info")];
  if (result)
  {
    layoutController = [(THWKeynoteLayout *)self layoutController];
    v5 = [-[THWKeynoteLayout info](self "info")];

    return [layoutController layoutForInfo:v5];
  }

  return result;
}

- (id)layoutGeometryFromProvider
{
  if ([(THWKeynoteLayout *)self isExpanded])
  {
    [(THWWidgetLayoutDelegate *)self->_delegate widgetLayoutBounds];
    v7 = [[TSDLayoutGeometry alloc] initWithFrame:{v3, v4, v5, v6}];

    return v7;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = THWKeynoteLayout;
    return [(THWKeynoteLayout *)&v9 layoutGeometryFromProvider];
  }
}

- (id)dependentLayouts
{
  v3 = +[NSMutableArray array];
  showLayout = [(THWKeynoteLayout *)self showLayout];
  if (showLayout)
  {
    [v3 addObject:showLayout];
  }

  if ([(THWKeynoteLayout *)self p_shouldShowPlayButton]&& self->_playButtonLayout)
  {
    [v3 addObject:?];
  }

  if (self->_transportControlLayout)
  {
    [v3 addObject:?];
  }

  return v3;
}

- (id)childInfosForLayout
{
  if ([-[THWKeynoteLayout info](self "info")])
  {
    v3 = +[NSArray arrayWithObject:](NSArray, "arrayWithObject:", [-[THWKeynoteLayout info](self "info")]);
  }

  else
  {
    v3 = +[NSArray array];
  }

  v4 = v3;
  if (-[THWKeynoteLayout p_isExpanded](self, "p_isExpanded") || ![-[THWKeynoteLayout info](self "info")])
  {
    return v4;
  }

  v5 = [-[THWKeynoteLayout info](self "info")];

  return [v5 interleavedInfosWithInfos:v4];
}

- (id)additionalLayouts
{
  v3 = +[NSMutableArray array];
  if (![(THWKeynoteLayout *)self p_isExpanded])
  {
    if ([(THWKeynoteLayout *)self p_shouldShowPlayButton]&& self->_playButtonLayout)
    {
      [v3 addObject:?];
    }

    if (self->_transportControlLayout)
    {
      [v3 addObject:?];
    }
  }

  return v3;
}

- (BOOL)isCompactFlowPresentation
{
  delegate = [(THWKeynoteLayout *)self delegate];

  return [(THWWidgetLayoutDelegate *)delegate widgetLayoutIsCompactFlow:self];
}

- (BOOL)isReflowablePresentation
{
  delegate = [(THWKeynoteLayout *)self delegate];

  return [(THWWidgetLayoutDelegate *)delegate widgetLayoutIsReflowablePresentation:self];
}

- (id)layoutGeometryForLayout:(id)layout
{
  if (![-[THWKeynoteLayout info](self "info")])
  {
    return 0;
  }

  v5 = [[TSDLayoutGeometry alloc] initWithInfoGeometry:{objc_msgSend(objc_msgSend(-[THWKeynoteLayout info](self, "info"), "showInfo"), "geometry")}];
  if ([(THWKeynoteLayout *)self p_isExpanded])
  {
    [(THWKeynoteShowLayout *)[(THWKeynoteLayout *)self showLayout] showSize];
    [-[THWKeynoteLayout geometry](self "geometry")];
    TSDScaleSizeWithinSize();
    [-[THWKeynoteLayout geometry](self "geometry")];
    TSDCenterOfRect();
    TSDRectWithCenterAndSize();
    v5 = [[TSDLayoutGeometry alloc] initWithFrame:{v6, v7, v8, v9}];
  }

  if ([(THWKeynoteLayout *)self showLayout]== layout || self->_playButtonLayout == layout)
  {
    return v5;
  }

  if (self->_transportControlLayout != layout)
  {
    return 0;
  }

  [v5 frame];
  v11 = [[TSDLayoutGeometry alloc] initWithFrame:{v13.origin.x, CGRectGetMaxY(v13), v13.size.width, 30.0}];

  return v11;
}

- (BOOL)p_isExpanded
{
  delegate = self->_delegate;
  if (delegate)
  {
    LOBYTE(delegate) = [(THWWidgetLayoutDelegate *)delegate widgetLayoutMode:self]== 1;
  }

  return delegate;
}

@end