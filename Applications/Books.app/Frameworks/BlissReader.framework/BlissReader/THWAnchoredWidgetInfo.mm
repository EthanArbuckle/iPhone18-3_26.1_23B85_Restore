@interface THWAnchoredWidgetInfo
- (THWAnchoredWidgetInfo)initWithContext:(id)context widgetInfo:(id)info;
- (void)dealloc;
@end

@implementation THWAnchoredWidgetInfo

- (THWAnchoredWidgetInfo)initWithContext:(id)context widgetInfo:(id)info
{
  v8.receiver = self;
  v8.super_class = THWAnchoredWidgetInfo;
  v5 = [(THWAnchoredWidgetInfo *)&v8 initWithContext:context];
  if (v5)
  {
    infoCopy = info;
    v5->_widgetInfo = infoCopy;
    [(THWWidgetInfo *)infoCopy setParentInfo:v5];
  }

  return v5;
}

- (void)dealloc
{
  [(THWWidgetInfo *)self->_widgetInfo setParentInfo:0];

  v3.receiver = self;
  v3.super_class = THWAnchoredWidgetInfo;
  [(THWAnchoredWidgetInfo *)&v3 dealloc];
}

@end