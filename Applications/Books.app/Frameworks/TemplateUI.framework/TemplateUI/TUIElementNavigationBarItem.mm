@interface TUIElementNavigationBarItem
+ (id)builderWithNode:(id)node object:(id)object attributes:(id)attributes context:(id)context;
+ (id)supportedAttributes;
+ (unint64_t)itemTypeFromString:(id)string;
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context;
@end

@implementation TUIElementNavigationBarItem

+ (id)supportedAttributes
{
  if (qword_2E6340 != -1)
  {
    sub_19A4D8();
  }

  v3 = qword_2E6338;

  return v3;
}

+ (unint64_t)itemTypeFromString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (qword_2E6350 != -1)
  {
    sub_19A4EC();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    unsignedIntegerValue = 0;
    goto LABEL_6;
  }

  if (!stringCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [qword_2E6348 objectForKeyedSubscript:v4];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

LABEL_6:
  return unsignedIntegerValue;
}

+ (id)builderWithNode:(id)node object:(id)object attributes:(id)attributes context:(id)context
{
  attributesCopy = attributes;
  v8 = objc_alloc_init(_TUIElementNavigationBarItemBuilder);
  v9 = [attributesCopy BOOLForAttribute:139 node:node.var0];

  [(_TUIElementNavigationBarItemBuilder *)v8 setMenuIsPrimary:v9];
  return v8;
}

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  boxCopy = box;
  attributesCopy = attributes;
  v9 = [attributesCopy stringForAttribute:206 node:node.var0];
  [boxCopy setTitle:v9];

  [boxCopy setEnabled:{objc_msgSend(attributesCopy, "BOOLForAttribute:withDefault:node:", 74, 1, node.var0)}];
  v10 = [attributesCopy stringForAttribute:116 node:node.var0];
  [boxCopy setButtonType:{+[TUIButtonBox buttonTypeFromString:](TUIButtonBox, "buttonTypeFromString:", v10)}];

  v11 = [attributesCopy stringForAttribute:44 node:node.var0];
  [boxCopy setButtonRole:{+[TUIButtonBox buttonRoleFromString:](TUIButtonBox, "buttonRoleFromString:", v11)}];

  v12 = [attributesCopy stringForAttribute:142 node:node.var0];
  [boxCopy setObserveTrigger:v12];

  v13 = [attributesCopy stringForAttribute:144 node:node.var0];
  [boxCopy setObserveTriggerValue:{+[TUIBox triggerStateFromString:](TUIBox, "triggerStateFromString:", v13)}];

  [boxCopy setIgnoreInsetsForOpacityTrigger:{objc_msgSend(attributesCopy, "BOOLForAttribute:node:", 105, node.var0)}];
  v14 = [attributesCopy stringForAttribute:140 node:node.var0];
  [boxCopy setItemType:{+[TUIElementNavigationBarItem itemTypeFromString:](TUIElementNavigationBarItem, "itemTypeFromString:", v14)}];

  [boxCopy setPrefersNoPlatter:{objc_msgSend(attributesCopy, "BOOLForAttribute:withDefault:node:", 155, 0, node.var0)}];
  [boxCopy setSearchTextMaxLength:{objc_msgSend(attributesCopy, "integerForAttribute:withDefault:node:", 184, 0x7FFFFFFFFFFFFFFFLL, node.var0)}];
  v15 = [attributesCopy stringForAttribute:202 node:node.var0];
  [boxCopy setText:v15];

  itemType = [boxCopy itemType];
  v17 = NAN;
  if (itemType == &dword_4 + 3)
  {
    [attributesCopy floatForAttribute:146 withDefault:node.var0 node:NAN];
  }

  [boxCopy setNavigationBarBackgroundOpacity:v17];
  v18 = [attributesCopy stringForAttribute:165 node:node.var0];
  [boxCopy setRefId:v18];

  v19 = [attributesCopy stringForAttribute:166 node:node.var0];
  [boxCopy setRefInstance:v19];
}

+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context
{
  objectCopy = object;
  builderCopy = builder;
  contextCopy = context;
  v9 = [TUIElementActionTriggerHandler alloc];
  finalizeTriggers = [builderCopy finalizeTriggers];
  actionObject = [contextCopy actionObject];
  actionDelegate = [contextCopy actionDelegate];
  v13 = [(TUIElementActionTriggerHandler *)v9 initWithActionsData:finalizeTriggers actionObject:actionObject actionDelegate:actionDelegate];
  [objectCopy setActionHandler:v13];

  v14 = [builderCopy finalizeModelsWithParent:objectCopy box:objectCopy context:contextCopy];
  attributedTitle = [builderCopy attributedTitle];
  if ([objectCopy itemType] == &dword_0 + 3 || objc_msgSend(objectCopy, "itemType") == &dword_4)
  {
    v16 = [attributedTitle tui_attributedTitleForButtonType:{objc_msgSend(objectCopy, "buttonType")}];

    attributedTitle = v16;
  }

  [objectCopy setAttributedTitle:attributedTitle];
  image = [builderCopy image];
  [objectCopy setImage:image];

  placeholderText = [builderCopy placeholderText];
  [objectCopy setPlaceholderText:placeholderText];

  menuContainer = [builderCopy menuContainer];
  [objectCopy setMenuContainer:menuContainer];

  [objectCopy setMenuIsPrimary:{objc_msgSend(builderCopy, "menuIsPrimary")}];
  hostingIdentifiers = [builderCopy hostingIdentifiers];
  [objectCopy setHostingIdentifiers:hostingIdentifiers];

  hostingProperities = [builderCopy hostingProperities];
  [objectCopy setHostingProperties:hostingProperities];
}

@end