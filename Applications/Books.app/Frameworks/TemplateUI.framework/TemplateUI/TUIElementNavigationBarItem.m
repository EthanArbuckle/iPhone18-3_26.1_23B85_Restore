@interface TUIElementNavigationBarItem
+ (id)builderWithNode:(id)a3 object:(id)a4 attributes:(id)a5 context:(id)a6;
+ (id)supportedAttributes;
+ (unint64_t)itemTypeFromString:(id)a3;
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5;
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

+ (unint64_t)itemTypeFromString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (qword_2E6350 != -1)
  {
    sub_19A4EC();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [qword_2E6348 objectForKeyedSubscript:v4];
  v6 = [v5 unsignedIntegerValue];

LABEL_6:
  return v6;
}

+ (id)builderWithNode:(id)a3 object:(id)a4 attributes:(id)a5 context:(id)a6
{
  v7 = a5;
  v8 = objc_alloc_init(_TUIElementNavigationBarItemBuilder);
  v9 = [v7 BOOLForAttribute:139 node:a3.var0];

  [(_TUIElementNavigationBarItemBuilder *)v8 setMenuIsPrimary:v9];
  return v8;
}

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v20 = a3;
  v8 = a5;
  v9 = [v8 stringForAttribute:206 node:a4.var0];
  [v20 setTitle:v9];

  [v20 setEnabled:{objc_msgSend(v8, "BOOLForAttribute:withDefault:node:", 74, 1, a4.var0)}];
  v10 = [v8 stringForAttribute:116 node:a4.var0];
  [v20 setButtonType:{+[TUIButtonBox buttonTypeFromString:](TUIButtonBox, "buttonTypeFromString:", v10)}];

  v11 = [v8 stringForAttribute:44 node:a4.var0];
  [v20 setButtonRole:{+[TUIButtonBox buttonRoleFromString:](TUIButtonBox, "buttonRoleFromString:", v11)}];

  v12 = [v8 stringForAttribute:142 node:a4.var0];
  [v20 setObserveTrigger:v12];

  v13 = [v8 stringForAttribute:144 node:a4.var0];
  [v20 setObserveTriggerValue:{+[TUIBox triggerStateFromString:](TUIBox, "triggerStateFromString:", v13)}];

  [v20 setIgnoreInsetsForOpacityTrigger:{objc_msgSend(v8, "BOOLForAttribute:node:", 105, a4.var0)}];
  v14 = [v8 stringForAttribute:140 node:a4.var0];
  [v20 setItemType:{+[TUIElementNavigationBarItem itemTypeFromString:](TUIElementNavigationBarItem, "itemTypeFromString:", v14)}];

  [v20 setPrefersNoPlatter:{objc_msgSend(v8, "BOOLForAttribute:withDefault:node:", 155, 0, a4.var0)}];
  [v20 setSearchTextMaxLength:{objc_msgSend(v8, "integerForAttribute:withDefault:node:", 184, 0x7FFFFFFFFFFFFFFFLL, a4.var0)}];
  v15 = [v8 stringForAttribute:202 node:a4.var0];
  [v20 setText:v15];

  v16 = [v20 itemType];
  v17 = NAN;
  if (v16 == &dword_4 + 3)
  {
    [v8 floatForAttribute:146 withDefault:a4.var0 node:NAN];
  }

  [v20 setNavigationBarBackgroundOpacity:v17];
  v18 = [v8 stringForAttribute:165 node:a4.var0];
  [v20 setRefId:v18];

  v19 = [v8 stringForAttribute:166 node:a4.var0];
  [v20 setRefInstance:v19];
}

+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5
{
  v22 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [TUIElementActionTriggerHandler alloc];
  v10 = [v7 finalizeTriggers];
  v11 = [v8 actionObject];
  v12 = [v8 actionDelegate];
  v13 = [(TUIElementActionTriggerHandler *)v9 initWithActionsData:v10 actionObject:v11 actionDelegate:v12];
  [v22 setActionHandler:v13];

  v14 = [v7 finalizeModelsWithParent:v22 box:v22 context:v8];
  v15 = [v7 attributedTitle];
  if ([v22 itemType] == &dword_0 + 3 || objc_msgSend(v22, "itemType") == &dword_4)
  {
    v16 = [v15 tui_attributedTitleForButtonType:{objc_msgSend(v22, "buttonType")}];

    v15 = v16;
  }

  [v22 setAttributedTitle:v15];
  v17 = [v7 image];
  [v22 setImage:v17];

  v18 = [v7 placeholderText];
  [v22 setPlaceholderText:v18];

  v19 = [v7 menuContainer];
  [v22 setMenuContainer:v19];

  [v22 setMenuIsPrimary:{objc_msgSend(v7, "menuIsPrimary")}];
  v20 = [v7 hostingIdentifiers];
  [v22 setHostingIdentifiers:v20];

  v21 = [v7 hostingProperities];
  [v22 setHostingProperties:v21];
}

@end