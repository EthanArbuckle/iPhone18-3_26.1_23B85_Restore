@interface TUIElementSmartGridContent
+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context;
+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementSmartGridContent

+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  objectCopy = object;
  v9 = [context identifierWithNode:var0];
  [objectCopy setIdentifier:v9];
}

+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context
{
  contextCopy = context;
  builderCopy = builder;
  objectCopy = object;
  [builderCopy configureCell:objectCopy];
  [builderCopy finalizeModelsWithParent:objectCopy context:contextCopy];
}

@end