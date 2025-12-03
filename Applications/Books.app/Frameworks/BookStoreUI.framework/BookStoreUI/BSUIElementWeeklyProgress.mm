@interface BSUIElementWeeklyProgress
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context;
@end

@implementation BSUIElementWeeklyProgress

+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context
{
  contextCopy = context;
  builderCopy = builder;
  objectCopy = object;
  v10 = [TUIConfiguration alloc];
  v11 = [builderCopy finalizeWidgetWithParent:0];

  v12 = [v10 initWithData:v11];
  [objectCopy setConfiguration:v12];

  weeklyProgressMetrics = [objectCopy weeklyProgressMetrics];
  configuration = [objectCopy configuration];

  [weeklyProgressMetrics updateWithConfiguration:configuration context:contextCopy];
}

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  contextCopy = context;
  attributesCopy = attributes;
  boxCopy = box;
  v12 = [[BSUIWeeklyProgressMetrics alloc] initWithNode:node.var0 attributes:attributesCopy context:contextCopy];

  [boxCopy setWeeklyProgressMetrics:v12];
}

@end