@interface THWSceneLayout
- (BOOL)isCompactFlowPresentation;
- (BOOL)isReflowablePresentation;
- (id)layoutGeometryFromProvider;
- (void)updateChildrenFromInfo;
@end

@implementation THWSceneLayout

- (BOOL)isCompactFlowPresentation
{
  v3 = [(THWSceneLayout *)self delegate];

  return [(THWWidgetLayoutDelegate *)v3 widgetLayoutIsCompactFlow:self];
}

- (BOOL)isReflowablePresentation
{
  v3 = [(THWSceneLayout *)self delegate];

  return [(THWWidgetLayoutDelegate *)v3 widgetLayoutIsReflowablePresentation:self];
}

- (void)updateChildrenFromInfo
{
  v6.receiver = self;
  v6.super_class = THWSceneLayout;
  [(THWSceneLayout *)&v6 updateChildrenFromInfo];
  v3 = +[NSMutableArray array];
  if (![(THWSceneLayout *)self isExpanded])
  {
    v4 = [-[THWSceneLayout info](self "info")];
    v5 = [-[THWSceneLayout layoutController](self "layoutController")];
    if (v5 || (v5 = [objc_alloc(objc_msgSend(v4 "layoutClass"))]) != 0)
    {
      [v3 addObject:v5];
    }
  }

  [(THWSceneLayout *)self setChildren:v3];
  [-[THWSceneLayout children](self "children")];
}

- (id)layoutGeometryFromProvider
{
  if ([(THWSceneLayout *)self isExpanded])
  {
    [(THWWidgetLayoutDelegate *)[(THWSceneLayout *)self delegate] widgetLayoutBounds];
    v7 = [[TSDLayoutGeometry alloc] initWithFrame:{v3, v4, v5, v6}];

    return v7;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = THWSceneLayout;
    return [(THWSceneLayout *)&v9 layoutGeometryFromProvider];
  }
}

@end