@interface TUIElementTrigger
+ (id)supportedAttributes;
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementTrigger

+ (id)supportedAttributes
{
  if (qword_2E6408 != -1)
  {
    sub_19B104();
  }

  v3 = qword_2E6400;

  return v3;
}

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  attributesCopy = attributes;
  boxCopy = box;
  [attributesCopy floatForAttribute:212 node:var0];
  [boxCopy setAnchorOffset:?];
  v10 = [attributesCopy stringForAttribute:138 node:var0];
  [boxCopy setName:v10];

  v11 = [attributesCopy stringForAttribute:141 node:var0];

  [boxCopy setObservationMode:{+[TUITriggerBox observationModeFromString:](TUITriggerBox, "observationModeFromString:", v11)}];
}

@end