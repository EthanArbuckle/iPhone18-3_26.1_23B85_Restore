@interface TUIElementTrackTimeRemaining
+ (id)supportedAttributes;
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementTrackTimeRemaining

+ (id)supportedAttributes
{
  if (qword_2E67F0 != -1)
  {
    sub_19BF54();
  }

  v3 = qword_2E67E8;

  return v3;
}

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  contextCopy = context;
  attributesCopy = attributes;
  boxCopy = box;
  v22 = [attributesCopy fontSpecForNode:var0];
  v12 = [attributesCopy objectForAttribute:113 node:var0];
  v13 = [attributesCopy objectForAttribute:150 node:var0];
  v14 = objc_alloc_init(TUITextContentStyler);
  v15 = [attributesCopy colorForAttribute:30 node:var0];
  [(TUIBackgroundColorStyler *)v14 setBackgroundColor:v15];

  v16 = [attributesCopy colorForAttribute:51 node:var0];

  [(TUITextContentStyler *)v14 setTextColor:v16];
  font = [v22 font];
  [(TUITextContentStyler *)v14 setFont:font];

  manager = [contextCopy manager];

  dynamicRegistry = [manager dynamicRegistry];
  v20 = [dynamicRegistry progressProviderForKind:@"audiobookProgress"];

  v21 = [v20 dynamicProgressForKind:@"timeRemaining" instance:v12 parameters:v13];
  [boxCopy setDynamicProgress:v21];
  [boxCopy setStyle:v14];
}

@end