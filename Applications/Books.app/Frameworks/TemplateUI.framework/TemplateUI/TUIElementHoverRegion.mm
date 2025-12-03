@interface TUIElementHoverRegion
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementHoverRegion

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  boxCopy = box;
  v9 = [attributes stringForAttribute:138 node:var0];
  [boxCopy setRegionName:v9];
}

@end