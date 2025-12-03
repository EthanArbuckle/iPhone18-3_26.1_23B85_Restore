@interface TUIElementMicaPlayer
+ (id)supportedAttributes;
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementMicaPlayer

+ (id)supportedAttributes
{
  if (qword_2E5FC8 != -1)
  {
    sub_199718();
  }

  v3 = qword_2E5FC0;

  return v3;
}

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  contextCopy = context;
  attributesCopy = attributes;
  boxCopy = box;
  v12 = [attributesCopy stringForAttribute:215 node:var0];
  [boxCopy setUrlString:v12];

  v13 = [contextCopy baseURLForNode:var0];

  [boxCopy setBaseURL:v13];
  v14 = [attributesCopy stringForAttribute:117 node:var0];
  v23 = [TUIBox layerContentsGravityFromString:v14];

  [boxCopy setGravity:v23];
  v15 = [attributesCopy stringForAttribute:132 node:var0];
  [boxCopy setTextKey:v15];

  v16 = [attributesCopy stringForAttribute:133 node:var0];
  [boxCopy setTextValue:v16];

  [boxCopy setShouldStartAtEnd:{objc_msgSend(attributesCopy, "BOOLForAttribute:withDefault:node:", 197, 0, var0)}];
  v17 = [attributesCopy stringForAttribute:142 node:var0];
  [boxCopy setTriggerName:v17];

  v18 = [attributesCopy stringForAttribute:144 node:var0];
  v19 = [TUIBox triggerStateFromString:v18];

  [boxCopy setTargetTriggerState:v19];
  [attributesCopy floatForAttribute:143 node:var0];
  [boxCopy setTriggerDelay:?];
  [attributesCopy floatForAttribute:146 node:var0];
  if (v20 == 0.0)
  {
    v20 = 1.0;
  }

  [boxCopy setOpacity:v20];
  v21 = [attributesCopy fontSpecForNode:var0];
  [boxCopy setFontSpec:v21];

  v22 = [attributesCopy stringForAttribute:173 node:var0];

  [boxCopy setResourceKind:v22];
}

@end