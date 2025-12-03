@interface BSUIElementAudiobookControl
+ (id)supportedAttributes;
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation BSUIElementAudiobookControl

+ (id)supportedAttributes
{
  if (qword_3CA758 != -1)
  {
    sub_2BD5B0();
  }

  v3 = qword_3CA750;

  return v3;
}

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  contextCopy = context;
  attributesCopy = attributes;
  boxCopy = box;
  v22 = [attributesCopy objectForAttribute:113 node:var0];
  v12 = [attributesCopy objectForAttribute:150 node:var0];

  manager = [contextCopy manager];
  dynamicRegistry = [manager dynamicRegistry];
  v15 = [dynamicRegistry progressProviderForKind:@"audiobookProgress"];

  v16 = [v15 dynamicProgressForKind:@"chapterProgress" instance:v22 parameters:v12];
  v17 = BUProtocolCast();

  manager2 = [contextCopy manager];

  dynamicRegistry2 = [manager2 dynamicRegistry];
  v20 = [dynamicRegistry2 stateProviderForKind:@"libraryItem"];

  v21 = [v20 dynamicStateForKind:@"libraryItem" instance:v22 parameters:v12];
  [boxCopy setDynamicAudiobookProgress:v17];
  [boxCopy setDynamicState:v21];
}

@end