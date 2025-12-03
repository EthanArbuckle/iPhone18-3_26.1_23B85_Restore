@interface TUIElementChart
+ (id)supportedAttributes;
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementChart

+ (id)supportedAttributes
{
  if (qword_2E6170 != -1)
  {
    sub_199C10();
  }

  v3 = qword_2E6168;

  return v3;
}

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  attributesCopy = attributes;
  boxCopy = box;
  v26 = [attributesCopy stringForAttribute:49 node:var0];
  v10 = [attributesCopy stringForAttribute:206 node:var0];
  v11 = [attributesCopy stringForAttribute:202 node:var0];
  [attributesCopy floatForAttribute:52 node:var0];
  v13 = fmax(v12, 1.0);
  [attributesCopy floatForAttribute:60 node:var0];
  v15 = v14;
  [attributesCopy floatForAttribute:158 node:var0];
  v17 = v16;
  [attributesCopy floatForAttribute:195 node:var0];
  v19 = v18;
  v20 = [attributesCopy colorForAttribute:51 node:var0];
  v21 = [attributesCopy colorForAttribute:30 node:var0];
  v22 = [attributesCopy colorForAttribute:187 node:var0];
  v23 = [attributesCopy fontSpecForNode:var0];

  attributesForAttributedString = [v23 attributesForAttributedString];
  [boxCopy setChartType:v26];
  [boxCopy setTitle:v10];
  [boxCopy setFooter:v11];
  [boxCopy setColumns:v13];
  [boxCopy setCornerRadius:v15];
  [boxCopy setProgress:v17];
  [boxCopy setSpacing:v19];
  [boxCopy setColor:v20];
  [boxCopy setBackgroundColor:v21];
  [boxCopy setShadowColor:v22];
  [boxCopy setFontSpec:v23];
  attributes = [attributesForAttributedString attributes];
  [boxCopy setFontAttributes:attributes];
}

@end