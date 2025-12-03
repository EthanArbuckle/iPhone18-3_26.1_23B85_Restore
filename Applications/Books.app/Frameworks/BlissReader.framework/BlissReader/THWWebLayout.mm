@interface THWWebLayout
- (BOOL)isCompactFlowPresentation;
- (BOOL)isExpanded;
- (BOOL)isReflowablePresentation;
- (CGRect)idealWebFrame;
- (CGRect)idealWebFrameInRoot;
- (CGRect)stageFrame;
- (CGRect)stageFrameInRoot;
- (CGRect)webFrame;
- (CGRect)webFrameInRoot;
- (CGSize)p_idealForMaxSize:(CGSize)size;
- (CGSize)webSizeInStageSize:(CGSize)size;
- (THWWebLayout)initWithInfo:(id)info;
- (id)childrenForLayout;
- (id)dependentLayouts;
- (id)layoutGeometryForLayout:(id)layout;
- (id)layoutGeometryFromProvider;
- (void)dealloc;
- (void)hidePlayButton;
@end

@implementation THWWebLayout

- (THWWebLayout)initWithInfo:(id)info
{
  v5.receiver = self;
  v5.super_class = THWWebLayout;
  v3 = [(THWWebLayout *)&v5 initWithInfo:info];
  if (v3)
  {
    v3->_playButtonLayout = objc_alloc_init(THWButtonControlLayout);
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWWebLayout;
  [(THWContainerLayout *)&v3 dealloc];
}

- (CGRect)stageFrame
{
  v3 = [(THWWidgetLayoutDelegate *)self->_delegate widgetLayoutMode:self];
  if (v3 - 1 < 2)
  {
    [-[THWWebLayout geometry](self "geometry")];
    TSDRectWithSize();
  }

  else if (v3)
  {
    if (v3 == 3)
    {
      [-[THWWebLayout geometry](self "geometry")];
      [(THWWebLayout *)self p_idealForMaxSize:?];
      TSDRectWithSize();
      TSDRectWithSize();
      TSDCenterRectOverRect();
    }

    else
    {
      x = CGRectNull.origin.x;
      y = CGRectNull.origin.y;
      width = CGRectNull.size.width;
      height = CGRectNull.size.height;
    }
  }

  else
  {
    [objc_msgSend(-[THWWebLayout info](self "info")];
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)stageFrameInRoot
{
  [(THWWebLayout *)self stageFrame];

  [(THWWebLayout *)self rectInRoot:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)webFrame
{
  [(THWWebLayout *)self stageFrame];
  v4 = v3;
  v6 = v5;
  TSDCenterOfRect();
  [(THWWebLayout *)self webSizeInStageSize:v4, v6];

  TSDRectWithCenterAndSize();
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)webFrameInRoot
{
  [(THWWebLayout *)self webFrame];

  [(THWWebLayout *)self rectInRoot:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGSize)webSizeInStageSize:(CGSize)size
{
  [-[THWWebLayout info](self "info")];

  TSDShrinkSizeToFitInSize();
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGRect)idealWebFrame
{
  [(THWWebLayout *)self stageFrame];
  TSDCenterOfRect();
  [-[THWWebLayout info](self "info")];

  TSDRectWithCenterAndSize();
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)idealWebFrameInRoot
{
  [(THWWebLayout *)self idealWebFrame];

  [(THWWebLayout *)self rectInRoot:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)hidePlayButton
{
  self->_playButtonLayout = 0;

  [(THWWebLayout *)self invalidateChildren];
}

- (id)layoutGeometryFromProvider
{
  delegate = self->_delegate;
  if (delegate && [(THWWidgetLayoutDelegate *)delegate widgetLayoutMode:self]== 1)
  {
    [(THWWidgetLayoutDelegate *)self->_delegate widgetLayoutBounds];
    v8 = [[TSDLayoutGeometry alloc] initWithFrame:{v4, v5, v6, v7}];

    return v8;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = THWWebLayout;
    return [(THWWebLayout *)&v10 layoutGeometryFromProvider];
  }
}

- (id)dependentLayouts
{
  v5.receiver = self;
  v5.super_class = THWWebLayout;
  v3 = [-[THWWebLayout dependentLayouts](&v5 "dependentLayouts")];
  if (!v3)
  {
    v3 = +[NSMutableArray array];
  }

  if (self->_playButtonLayout)
  {
    [v3 addObject:?];
  }

  return v3;
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
  delegate = [(THWWebLayout *)self delegate];

  return [(THWWidgetLayoutDelegate *)delegate widgetLayoutIsCompactFlow:self];
}

- (BOOL)isReflowablePresentation
{
  delegate = [(THWWebLayout *)self delegate];

  return [(THWWidgetLayoutDelegate *)delegate widgetLayoutIsReflowablePresentation:self];
}

- (id)childrenForLayout
{
  v3 = [-[THWWebLayout info](self "info")];
  if (!-[THWWidgetLayoutDelegate widgetLayoutMode:](self->_delegate, "widgetLayoutMode:", self) && [-[THWWebLayout info](self "info")])
  {
    v3 = [objc_msgSend(-[THWWebLayout info](self "info")];
  }

  if (!v3)
  {
    v3 = &__NSArray0__struct;
  }

  if (-[THWWebLayout isExpanded](self, "isExpanded") || !self->_playButtonLayout || ([objc_msgSend(-[THWWebLayout info](self "info")] & 1) != 0)
  {
    return v3;
  }

  playButtonLayout = self->_playButtonLayout;

  return [v3 arrayByAddingObject:playButtonLayout];
}

- (id)layoutGeometryForLayout:(id)layout
{
  if (self->_playButtonLayout != layout)
  {
    return 0;
  }

  [(THWWebLayout *)self stageFrame];
  v9 = [[TSDLayoutGeometry alloc] initWithFrame:{v5, v6, v7, v8}];

  return v9;
}

- (CGSize)p_idealForMaxSize:(CGSize)size
{
  [objc_msgSend(-[THWWebLayout info](self "info")];
  TSDScaleSizeWithinSize();

  TSDRoundedSize();
  result.height = v4;
  result.width = v3;
  return result;
}

@end