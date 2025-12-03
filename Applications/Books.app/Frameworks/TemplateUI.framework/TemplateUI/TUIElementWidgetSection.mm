@interface TUIElementWidgetSection
+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context;
+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementWidgetSection

+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  objectCopy = object;
  v9 = [attributes stringForAttribute:137 node:var0];
  [objectCopy setSectionName:v9];
}

+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context
{
  builderCopy = builder;
  objectCopy = object;
  v7 = [objectCopy finalizeWidgetWithParent:0];
  sectionName = [objectCopy sectionName];

  if (sectionName && v7)
  {
    [builderCopy addWidgetData:v7 withKey:sectionName];
  }
}

@end