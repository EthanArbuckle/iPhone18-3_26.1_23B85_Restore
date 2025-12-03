@interface THWViewportLayout
- (BOOL)isCompactFlowPresentation;
- (BOOL)isExpanded;
- (BOOL)isReflowablePresentation;
- (THWViewportLayout)initWithInfo:(id)info;
- (id)layoutGeometryForLayout:(id)layout;
- (id)layoutGeometryFromProvider;
- (void)dealloc;
- (void)p_invalidateExternal;
- (void)updateChildrenFromInfo;
- (void)wasAddedToLayoutController:(id)controller;
@end

@implementation THWViewportLayout

- (THWViewportLayout)initWithInfo:(id)info
{
  v4.receiver = self;
  v4.super_class = THWViewportLayout;
  return [(THWViewportLayout *)&v4 initWithInfo:info];
}

- (void)dealloc
{
  [(THWViewportLayout *)self setScrollableCanvasControlLayout:0];
  v3.receiver = self;
  v3.super_class = THWViewportLayout;
  [(THWViewportLayout *)&v3 dealloc];
}

- (void)p_invalidateExternal
{
  [(THWViewportLayout *)self invalidateFrame];

  [(THWViewportLayout *)self invalidateChildren];
}

- (void)wasAddedToLayoutController:(id)controller
{
  v4.receiver = self;
  v4.super_class = THWViewportLayout;
  [(THWViewportLayout *)&v4 wasAddedToLayoutController:controller];
  [(THWViewportLayout *)self p_invalidateExternal];
}

- (BOOL)isExpanded
{
  delegate = self->_delegate;
  if (delegate)
  {
    LOBYTE(delegate) = [(THWWidgetLayoutDelegate *)delegate widgetLayoutMode:self]== 1;
  }

  return delegate;
}

- (BOOL)isCompactFlowPresentation
{
  delegate = [(THWViewportLayout *)self delegate];

  return [(THWWidgetLayoutDelegate *)delegate widgetLayoutIsCompactFlow:self];
}

- (BOOL)isReflowablePresentation
{
  delegate = [(THWViewportLayout *)self delegate];

  return [(THWWidgetLayoutDelegate *)delegate widgetLayoutIsReflowablePresentation:self];
}

- (id)layoutGeometryFromProvider
{
  if ([(THWViewportLayout *)self isExpanded])
  {
    [(THWWidgetLayoutDelegate *)[(THWViewportLayout *)self delegate] widgetLayoutBounds];
    v7 = [[TSDLayoutGeometry alloc] initWithFrame:{v3, v4, v5, v6}];

    return v7;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = THWViewportLayout;
    return [(THWViewportLayout *)&v9 layoutGeometryFromProvider];
  }
}

- (void)updateChildrenFromInfo
{
  v6.receiver = self;
  v6.super_class = THWViewportLayout;
  [(THWViewportLayout *)&v6 updateChildrenFromInfo];
  v3 = +[NSMutableArray array];
  if (![(THWViewportLayout *)self scrollableCanvasControlLayout])
  {
    [(THWViewportLayout *)self setScrollableCanvasControlLayout:objc_alloc_init(THWScrollableCanvasControlLayout)];
  }

  [v3 addObject:{-[THWViewportLayout scrollableCanvasControlLayout](self, "scrollableCanvasControlLayout")}];
  if (![(THWViewportLayout *)self isExpanded])
  {
    v4 = [-[THWViewportLayout info](self "info")];
    v5 = [-[THWViewportLayout layoutController](self "layoutController")];
    if (v5 || (v5 = [objc_alloc(objc_msgSend(objc_msgSend(-[THWViewportLayout info](self "info")]) != 0)
    {
      [v3 addObject:v5];
    }
  }

  [(THWViewportLayout *)self setChildren:v3];
}

- (id)layoutGeometryForLayout:(id)layout
{
  [-[THWViewportLayout geometry](self "geometry")];
  TSDRectWithSize();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (-[THWViewportLayout scrollableCanvasControlLayout](self, "scrollableCanvasControlLayout") != layout && [-[THWViewportLayout layoutController](self "layoutController")] != layout)
  {
    return 0;
  }

  v14 = [[TSDLayoutGeometry alloc] initWithFrame:{v6, v8, v10, v12}];

  return v14;
}

@end