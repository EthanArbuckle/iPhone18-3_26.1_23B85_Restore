@interface TUIElementNowPlaying
+ (id)supportedAttributes;
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementNowPlaying

+ (id)supportedAttributes
{
  if (qword_2E6050 != -1)
  {
    sub_1997F8();
  }

  v3 = qword_2E6048;

  return v3;
}

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  attributesCopy = attributes;
  boxCopy = box;
  v10 = [attributesCopy stringForAttribute:151 node:var0];
  v13 = v10;
  if (v10)
  {
    v11 = [v10 caseInsensitiveCompare:@"playing"] == 0;
  }

  else
  {
    v11 = 0;
  }

  [boxCopy setPlaying:v11];
  v12 = [attributesCopy colorForAttribute:51 node:var0];

  [boxCopy setColor:v12];
}

@end