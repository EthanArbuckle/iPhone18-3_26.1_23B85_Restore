@interface THWInteractiveImageRadioPanelInfo
- (THWInteractiveImageRadioPanelInfo)initWithGeometry:(id)geometry widgetInfo:(id)info;
@end

@implementation THWInteractiveImageRadioPanelInfo

- (THWInteractiveImageRadioPanelInfo)initWithGeometry:(id)geometry widgetInfo:(id)info
{
  v8.receiver = self;
  v8.super_class = THWInteractiveImageRadioPanelInfo;
  v5 = [(THWInteractiveImageRadioPanelInfo *)&v8 initWithContext:0 geometry:geometry];
  v6 = v5;
  if (v5)
  {
    [(THWInteractiveImageRadioPanelInfo *)v5 setWidgetInfo:info];
  }

  return v6;
}

@end