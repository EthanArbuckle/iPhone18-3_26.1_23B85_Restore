@interface THWInteractiveImageRadioPanelInfo
- (THWInteractiveImageRadioPanelInfo)initWithGeometry:(id)a3 widgetInfo:(id)a4;
@end

@implementation THWInteractiveImageRadioPanelInfo

- (THWInteractiveImageRadioPanelInfo)initWithGeometry:(id)a3 widgetInfo:(id)a4
{
  v8.receiver = self;
  v8.super_class = THWInteractiveImageRadioPanelInfo;
  v5 = [(THWInteractiveImageRadioPanelInfo *)&v8 initWithContext:0 geometry:a3];
  v6 = v5;
  if (v5)
  {
    [(THWInteractiveImageRadioPanelInfo *)v5 setWidgetInfo:a4];
  }

  return v6;
}

@end