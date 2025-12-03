@interface TUIElementProgress
+ (id)supportedAttributes;
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementProgress

+ (id)supportedAttributes
{
  if (qword_2E5FF0 != -1)
  {
    sub_1997A8();
  }

  v3 = qword_2E5FE8;

  return v3;
}

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  attributesCopy = attributes;
  contextCopy = context;
  var0 = node.var0;
  boxCopy = box;
  v12 = [attributesCopy stringForAttribute:116 node:node.var0];
  v13 = [attributesCopy objectForAttribute:113 node:var0];
  v14 = [attributesCopy objectForAttribute:150 node:var0];
  if (v12)
  {
    manager = [contextCopy manager];
    dynamicRegistry = [manager dynamicRegistry];
    v17 = [dynamicRegistry progressProviderForKind:v12];
  }

  else
  {
    v17 = 0;
  }

  v18 = [v17 dynamicProgressForKind:v12 instance:v13 parameters:v14];
  v19 = [attributesCopy stringForAttribute:159 node:var0];
  [boxCopy setProgressId:v19];

  v20 = [attributesCopy stringForAttribute:160 node:var0];
  [boxCopy setProgressMode:v20];

  [attributesCopy floatForAttribute:158 node:var0];
  [boxCopy setProgress:?];
  [boxCopy setDynamicProgress:v18];
  [boxCopy setPaused:{objc_msgSend(attributesCopy, "BOOLForAttribute:node:", 161, var0)}];
  v21 = [attributesCopy colorForAttribute:51 node:var0];
  [boxCopy setColor:v21];
}

@end