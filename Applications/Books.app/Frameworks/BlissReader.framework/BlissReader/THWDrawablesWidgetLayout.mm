@interface THWDrawablesWidgetLayout
- (BOOL)isCompactFlowPresentation;
- (BOOL)isExpanded;
- (BOOL)isReflowablePresentation;
- (CGRect)stageFrame;
- (CGSize)p_idealForMaxSize:(CGSize)size;
- (double)scaleForCenteredAutoRotateFromSize:(CGSize)size toSize:(CGSize)toSize scale:(double)scale;
- (id)actualStageDrawable;
- (id)adjustImageGeometry:(id)geometry withLayoutGeometry:(id)layoutGeometry forLayout:(id)layout;
- (id)adjustLayoutGeometry:(id)geometry forLayout:(id)layout;
- (id)childrenForLayout;
- (id)dependentLayouts;
- (id)layoutGeometryForLayout:(id)layout;
- (id)layoutGeometryFromProvider;
- (id)p_layoutGeometryForStageDrawable;
- (unsigned)widgetStack:(id)stack maxLinesForWPLayout:(id)layout withDefault:(unsigned int)default;
- (void)p_invalidateExternal;
- (void)wasAddedToLayoutController:(id)controller;
@end

@implementation THWDrawablesWidgetLayout

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
  delegate = [(THWDrawablesWidgetLayout *)self delegate];

  return [(THWWidgetLayoutDelegate *)delegate widgetLayoutIsCompactFlow:self];
}

- (BOOL)isReflowablePresentation
{
  delegate = [(THWDrawablesWidgetLayout *)self delegate];

  return [(THWWidgetLayoutDelegate *)delegate widgetLayoutIsReflowablePresentation:self];
}

- (CGSize)p_idealForMaxSize:(CGSize)size
{
  [objc_msgSend(-[THWDrawablesWidgetLayout actualStageDrawable](self "actualStageDrawable")];
  TSDScaleSizeWithinSize();
  TSDRoundedSize();
  v4 = v3 + 0.0;
  v6 = v5 + 0.0;
  result.height = v6;
  result.width = v4;
  return result;
}

- (unsigned)widgetStack:(id)stack maxLinesForWPLayout:(id)layout withDefault:(unsigned int)default
{
  objc_opt_class();
  [-[THWDrawablesWidgetLayout info](self "info")];
  if ([TSUDynamicCast() isAudioOnly])
  {
    return 3;
  }

  else
  {
    return default;
  }
}

- (id)actualStageDrawable
{
  if (-[THWDrawablesWidgetLayout isExpanded](self, "isExpanded") && [-[THWDrawablesWidgetLayout info](self "info")])
  {
    info = [(THWDrawablesWidgetLayout *)self info];

    return [info expandedStageDrawable];
  }

  else
  {
    info2 = [(THWDrawablesWidgetLayout *)self info];

    return [info2 stageDrawable];
  }
}

- (id)layoutGeometryFromProvider
{
  if ([(THWDrawablesWidgetLayout *)self isExpanded])
  {
    [(THWWidgetLayoutDelegate *)[(THWDrawablesWidgetLayout *)self delegate] widgetLayoutBounds];
    v7 = [[TSDLayoutGeometry alloc] initWithFrame:{v3, v4, v5, v6}];

    return v7;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = THWDrawablesWidgetLayout;
    return [(THWDrawablesWidgetLayout *)&v9 layoutGeometryFromProvider];
  }
}

- (id)childrenForLayout
{
  actualStageDrawable = [(THWDrawablesWidgetLayout *)self actualStageDrawable];
  if (actualStageDrawable)
  {
    v6 = actualStageDrawable;
    v4 = [NSArray arrayWithObjects:&v6 count:1];
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  if (!-[THWWidgetLayoutDelegate widgetLayoutMode:](self->_delegate, "widgetLayoutMode:", self) && [-[THWDrawablesWidgetLayout info](self "info")])
  {
    return [objc_msgSend(-[THWDrawablesWidgetLayout info](self "info")];
  }

  return v4;
}

- (id)dependentLayouts
{
  v5.receiver = self;
  v5.super_class = THWDrawablesWidgetLayout;
  v3 = [-[THWDrawablesWidgetLayout dependentLayouts](&v5 "dependentLayouts")];
  if (!v3)
  {
    v3 = +[NSMutableArray array];
  }

  [v3 addObjectsFromArray:{-[THWDrawablesWidgetLayout children](self, "children")}];
  return v3;
}

- (CGRect)stageFrame
{
  p_stageFrame = &self->_stageFrame;
  v8.origin.x = CGRectZero.origin.x;
  v8.origin.y = CGRectZero.origin.y;
  v8.size.width = CGRectZero.size.width;
  v8.size.height = CGRectZero.size.height;
  if (CGRectEqualToRect(v8, self->_stageFrame))
  {
    [-[THWDrawablesWidgetLayout p_layoutGeometryForStageDrawable](self "p_layoutGeometryForStageDrawable")];
    p_stageFrame->origin.x = x;
    p_stageFrame->origin.y = y;
    p_stageFrame->size.width = width;
    p_stageFrame->size.height = height;
  }

  else
  {
    x = p_stageFrame->origin.x;
    y = p_stageFrame->origin.y;
    width = p_stageFrame->size.width;
    height = p_stageFrame->size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)p_layoutGeometryForStageDrawable
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  children = [(THWDrawablesWidgetLayout *)self children];
  result = [children countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v11;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(children);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        info = [v8 info];
        if (info == [(THWDrawablesWidgetLayout *)self actualStageDrawable])
        {
          return [objc_msgSend(v8 "geometry")];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      result = [children countByEnumeratingWithState:&v10 objects:v14 count:16];
      v5 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (double)scaleForCenteredAutoRotateFromSize:(CGSize)size toSize:(CGSize)toSize scale:(double)scale
{
  v6 = toSize.width + -128.0;
  v7 = toSize.height + -128.0;
  v8 = [TSDLayout layoutGeometryFittingLayoutGeometry:[(THWDrawablesWidgetLayout *)self p_layoutGeometryForStageDrawable] inFrame:0.0, 0.0, size.width + -128.0, size.height + -128.0];
  v9 = [TSDLayout layoutGeometryFittingLayoutGeometry:[(THWDrawablesWidgetLayout *)self p_layoutGeometryForStageDrawable] inFrame:0.0, 0.0, v6, v7];
  [v8 frame];
  v11 = v10;
  v13 = v12;
  [v9 frame];
  result = 1.0;
  if (v11 > 0.0 && v13 > 0.0)
  {
    v17 = v14 / v11;
    v18 = v15 / v13;
    return fminf(v17, v18);
  }

  return result;
}

- (void)p_invalidateExternal
{
  [(THWDrawablesWidgetLayout *)self invalidateFrame];

  [(THWDrawablesWidgetLayout *)self invalidateChildren];
}

- (void)wasAddedToLayoutController:(id)controller
{
  v4.receiver = self;
  v4.super_class = THWDrawablesWidgetLayout;
  [(THWDrawablesWidgetLayout *)&v4 wasAddedToLayoutController:controller];
  [(THWDrawablesWidgetLayout *)self p_invalidateExternal];
}

- (id)layoutGeometryForLayout:(id)layout
{
  info = [layout info];
  if (info != [(THWDrawablesWidgetLayout *)self actualStageDrawable]|| [(THWWidgetLayoutDelegate *)self->_delegate widgetLayoutMode:self]!= 3)
  {
    return 0;
  }

  [-[THWDrawablesWidgetLayout geometry](self "geometry")];
  [(THWDrawablesWidgetLayout *)self p_idealForMaxSize:?];
  TSDRectWithSize();
  [-[THWDrawablesWidgetLayout geometry](self "geometry")];
  TSDRectWithSize();
  TSDCenterRectOverRect();
  v9 = [[TSDLayoutGeometry alloc] initWithFrame:{v5, v6, v7, v8}];

  return v9;
}

- (id)adjustLayoutGeometry:(id)geometry forLayout:(id)layout
{
  if (![(THWDrawablesWidgetLayout *)self isExpanded])
  {
    return geometry;
  }

  info = [layout info];
  if (info != [(THWDrawablesWidgetLayout *)self actualStageDrawable])
  {
    return geometry;
  }

  [(THWWidgetLayoutDelegate *)[(THWDrawablesWidgetLayout *)self delegate] widgetLayoutBounds];
  v11 = CGRectInset(v10, 64.0, 64.0);

  return [TSDLayout layoutGeometryFittingLayoutGeometry:geometry inFrame:v11.origin.x, v11.origin.y, v11.size.width, v11.size.height];
}

- (id)adjustImageGeometry:(id)geometry withLayoutGeometry:(id)layoutGeometry forLayout:(id)layout
{
  if (![(THWDrawablesWidgetLayout *)self isExpanded])
  {
    return geometry;
  }

  info = [layout info];
  if (info != [(THWDrawablesWidgetLayout *)self actualStageDrawable])
  {
    return geometry;
  }

  [(THWWidgetLayoutDelegate *)[(THWDrawablesWidgetLayout *)self delegate] widgetLayoutBounds];
  v20 = CGRectInset(v19, 64.0, 64.0);
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  [layoutGeometry frame];
  v17 = THScaleNeededToFitSizeInSize(v15, v16, width, height);

  return [TSDLayout layoutGeometryFittingLayoutGeometry:geometry inFrame:x scale:y, width, height, v17];
}

@end