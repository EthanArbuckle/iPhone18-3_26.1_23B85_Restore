@interface TUIElementShelf
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementShelf

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  attributesCopy = attributes;
  boxCopy = box;
  v9 = [attributesCopy lengthForAttribute:58 node:var0];
  [boxCopy setContentWidth:{v9, v10}];
  v11 = [attributesCopy BOOLForAttribute:176 node:var0];

  [boxCopy setRespectsSafeArea:v11];
}

@end