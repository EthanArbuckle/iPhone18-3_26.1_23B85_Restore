@interface BSUIElementReadingGoalsGauge
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context;
@end

@implementation BSUIElementReadingGoalsGauge

+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context
{
  contextCopy = context;
  builderCopy = builder;
  objectCopy = object;
  v10 = [TUIConfiguration alloc];
  v11 = [builderCopy finalizeWidgetWithParent:0];

  v12 = [v10 initWithData:v11];
  [objectCopy setConfiguration:v12];

  readingGoalsGaugeMetrics = [objectCopy readingGoalsGaugeMetrics];
  configuration = [objectCopy configuration];

  [readingGoalsGaugeMetrics updateWithConfiguration:configuration context:contextCopy];
}

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  contextCopy = context;
  attributesCopy = attributes;
  boxCopy = box;
  v12 = [[BSUIReadingGoalsGaugeMetrics alloc] initWithNode:node.var0 attributes:attributesCopy context:contextCopy];

  [boxCopy setReadingGoalsGaugeMetrics:v12];
}

@end