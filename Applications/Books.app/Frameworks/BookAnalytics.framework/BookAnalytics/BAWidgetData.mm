@interface BAWidgetData
- (BAWidgetData)init;
- (BAWidgetData)initWithWidgetFamily:(id)family displayMode:(id)mode isContentExposed:(BOOL)exposed isStreakExposed:(BOOL)streakExposed;
@end

@implementation BAWidgetData

- (BAWidgetData)initWithWidgetFamily:(id)family displayMode:(id)mode isContentExposed:(BOOL)exposed isStreakExposed:(BOOL)streakExposed
{
  v9 = sub_1E1780();
  v11 = v10;
  v12 = sub_1E1780();
  v13 = (self + OBJC_IVAR___BAWidgetData_widgetFamily);
  *v13 = v9;
  v13[1] = v11;
  v14 = (self + OBJC_IVAR___BAWidgetData_displayMode);
  *v14 = v12;
  v14[1] = v15;
  *(&self->super.isa + OBJC_IVAR___BAWidgetData_isContentExposed) = exposed;
  *(&self->super.isa + OBJC_IVAR___BAWidgetData_isStreakExposed) = streakExposed;
  v17.receiver = self;
  v17.super_class = type metadata accessor for BridgedWidgetData();
  return [(BAWidgetData *)&v17 init];
}

- (BAWidgetData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end