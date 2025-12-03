@interface THWMovieLayout
- (BOOL)isCompactFlowPresentation;
- (BOOL)isExpanded;
- (BOOL)isReflowablePresentation;
- (BOOL)p_isAutoplayAllowed;
- (id)layoutForPlayButton;
- (id)layoutGeometryForLayout:(id)layout;
- (id)layoutGeometryFromProvider;
- (void)dealloc;
- (void)updateChildrenFromInfo;
- (void)wasRemovedFromLayoutController:(id)controller;
@end

@implementation THWMovieLayout

- (void)dealloc
{
  [(THWMovieLayout *)self setMediaListener:0];
  v3.receiver = self;
  v3.super_class = THWMovieLayout;
  [(THWMovieLayout *)&v3 dealloc];
}

- (void)wasRemovedFromLayoutController:(id)controller
{
  mediaListener = [(THWMovieLayout *)self mediaListener];

  [(THWAVMediaListener *)mediaListener mediaWillBeRemoved];
}

- (BOOL)isExpanded
{
  v3 = [(THWWidgetLayoutDelegate *)self->_delegate widgetLayoutMode:self]- 1;
  if (self->_delegate)
  {
    v4 = v3 >= 2;
  }

  else
  {
    v4 = 1;
  }

  return !v4;
}

- (BOOL)isCompactFlowPresentation
{
  delegate = [(THWMovieLayout *)self delegate];

  return [(THWWidgetLayoutDelegate *)delegate widgetLayoutIsCompactFlow:self];
}

- (BOOL)isReflowablePresentation
{
  delegate = [(THWMovieLayout *)self delegate];

  return [(THWWidgetLayoutDelegate *)delegate widgetLayoutIsReflowablePresentation:self];
}

- (id)layoutGeometryFromProvider
{
  if ([(THWMovieLayout *)self isExpanded]|| [(THWMovieLayout *)self isIntroMedia])
  {
    [(THWWidgetLayoutDelegate *)[(THWMovieLayout *)self delegate] widgetLayoutBounds];
    layoutGeometryFromProvider = [[TSDLayoutGeometry alloc] initWithFrame:{v3, v4, v5, v6}];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = THWMovieLayout;
    layoutGeometryFromProvider = [(THWMovieLayout *)&v10 layoutGeometryFromProvider];
  }

  v8 = layoutGeometryFromProvider;
  if ([(THWMovieLayout *)self usesTransportController]&& ![(THWMovieLayout *)self mediaListener])
  {
    [THWAVTransportController createTransportControllerForLayouts:[NSArray arrayWithObject:self]];
  }

  return v8;
}

- (BOOL)p_isAutoplayAllowed
{
  if ((objc_opt_respondsToSelector() & 1) == 0 || ![(THWWidgetLayoutDelegate *)[(THWMovieLayout *)self delegate] widgetLayoutIsCompact:self])
  {
    return 1;
  }

  delegate = self->_delegate;

  return [(THWWidgetLayoutDelegate *)delegate widgetLayoutIsReflowablePresentation:self];
}

- (void)updateChildrenFromInfo
{
  objc_opt_class();
  [(THWMovieLayout *)self info];
  v3 = TSUDynamicCast();
  if ([(THWMovieLayout *)self usesTransportControllerControls])
  {
    if (![(THWMovieLayout *)self isExpanded]&& ![(THWMovieLayout *)self isIntroMedia])
    {
      [(THWMovieLayout *)self setChildren:[THWAVTransportController transportControllerLayoutsForLayouts:[NSArray arrayWithObject:self]]];

      [(THWMovieLayout *)self invalidate];
    }
  }

  else if (!v3 || ![v3 autoplayConfig] || !objc_msgSend(objc_msgSend(v3, "autoplayConfig"), "enabled") || !-[THWMovieLayout p_isAutoplayAllowed](self, "p_isAutoplayAllowed"))
  {
    v4 = [(THWControlLayout *)[THWButtonControlLayout alloc] initWithTag:1000];
    [(THWButtonControlLayout *)v4 invalidateFrame];
    [(THWMovieLayout *)self setChildren:[NSArray arrayWithObject:v4]];
  }
}

- (id)layoutForPlayButton
{
  [-[THWMovieLayout geometry](self "geometry")];
  TSDRectWithSize();
  v6 = [[TSDLayoutGeometry alloc] initWithFrame:{v3 + (v2 + -86.0) * 0.5, v5 + (v4 + -86.0) * 0.5, 86.0, 86.0}];

  return v6;
}

- (id)layoutGeometryForLayout:(id)layout
{
  result = TSUProtocolCast();
  if (result)
  {
    if ([(THWMovieLayout *)self usesTransportControllerControls])
    {
      mediaListener = [(THWMovieLayout *)self mediaListener];

      return [(THWAVMediaListener *)mediaListener layoutGeometryForLayout:?];
    }

    else
    {

      return [(THWMovieLayout *)self layoutForPlayButton];
    }
  }

  return result;
}

@end