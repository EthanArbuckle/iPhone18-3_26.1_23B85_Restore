@interface TUIElementHoverVisible
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementHoverVisible

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  boxCopy = box;
  attributesCopy = attributes;
  v9 = [attributesCopy stringForAttribute:138 node:node.var0];
  [boxCopy setRegionName:v9];

  v10 = [attributesCopy stringForAttribute:227 node:node.var0];

  v11 = v10;
  v12 = v11;
  if (qword_2E64E0 == -1)
  {
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_19B6AC();
    if (!v12)
    {
      goto LABEL_6;
    }
  }

  v13 = [qword_2E64D8 objectForKeyedSubscript:v12];
  if (v13)
  {
    v14 = v13;
    unsignedIntegerValue = [v13 unsignedIntegerValue];

    goto LABEL_7;
  }

LABEL_6:
  unsignedIntegerValue = 0;
LABEL_7:

  [boxCopy setWhenUnavailable:unsignedIntegerValue];
}

@end