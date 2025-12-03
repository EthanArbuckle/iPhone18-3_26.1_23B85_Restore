@interface TUIElementConfigurationSection
+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context;
+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementConfigurationSection

+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  objectCopy = object;
  v9 = [attributes stringForAttribute:137 node:var0];
  [objectCopy setName:v9];
}

+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context
{
  objectCopy = object;
  builderCopy = builder;
  finalizeConfiguration = [objectCopy finalizeConfiguration];
  name = [objectCopy name];
  if (name && finalizeConfiguration)
  {
    name2 = [objectCopy name];
    [builderCopy addConfigurationData:finalizeConfiguration withKey:name2];
  }
}

@end