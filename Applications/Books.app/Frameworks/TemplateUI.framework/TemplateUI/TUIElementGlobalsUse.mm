@interface TUIElementGlobalsUse
+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementGlobalsUse

+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  contextCopy = context;
  [contextCopy useGlobalsWithName:{objc_msgSend(attributes, "globalsNameForAttribute:node:", 137, var0)}];
}

@end