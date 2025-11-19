@interface TUIElementSmartGrid
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5;
@end

@implementation TUIElementSmartGrid

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v26 = a3;
  v9 = a5;
  v10 = a6;
  v11 = [v10 modelIdentifierByAppendingString:@"scrollable" node:a4.var0];
  [v26 setModelIdentifierForScrollable:v11];

  [v26 setAcceptsDrop:{objc_msgSend(v9, "BOOLForAttribute:withDefault:node:", 2, 0, a4.var0)}];
  v12 = [v9 stringForAttribute:65 node:a4.var0];
  [v26 setDecelerationRate:TUIBoxDecelerationRateFromString(v12)];

  [v9 insetsForAttribute:112 node:a4.var0];
  [v26 setInsets:?];
  v13 = [v9 objectForAttribute:52 node:a4.var0];
  [v26 setColumns:v13];

  [v26 setMaxColumns:{objc_msgSend(v9, "unsignedIntegerForAttribute:withDefault:node:", 128, 0x7FFFFFFFFFFFFFFFLL, a4.var0)}];
  v14 = [v9 lengthForAttribute:56 node:a4.var0];
  [v26 setColumnWidth:{v14, v15}];
  v16 = [v9 lengthForAttribute:54 node:a4.var0];
  [v26 setColumnSpacing:{v16, v17}];
  [v26 setColumnMultiple:{objc_msgSend(v9, "unsignedIntegerForAttribute:withDefault:node:", 53, 1, a4.var0)}];
  v18 = [v9 stringForAttribute:120 node:a4.var0];
  [v26 setLayoutMode:{+[TUISmartGridBox layoutModeFromString:](TUISmartGridBox, "layoutModeFromString:", v18)}];

  if ([v26 layoutMode])
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v19 = 1;
  }

  [v26 setRows:{objc_msgSend(v9, "unsignedIntegerForAttribute:withDefault:node:", 179, v19, a4.var0)}];
  v20 = [v9 lengthForAttribute:180 node:a4.var0];
  [v26 setRowSpacing:{v20, v21}];
  v22 = [v10 environment];

  v23 = 0;
  if ([v22 deviceClass] == &dword_4 + 2)
  {
    v23 = TUISwooshUseUnboundedScroll() ^ 1;
  }

  [v26 setPaginated:{objc_msgSend(v9, "BOOLForAttribute:withDefault:node:", 148, v23, a4.var0)}];
  [v26 setMaxPages:{objc_msgSend(v9, "unsignedIntegerForAttribute:withDefault:node:", 130, 0x7FFFFFFFFFFFFFFFLL, a4.var0)}];
  v24 = [v9 stringForAttribute:222 node:a4.var0];
  [v26 setVerticalPlacement:{+[TUISmartGridBox verticalPlacementFromString:](TUISmartGridBox, "verticalPlacementFromString:", v24)}];

  v25 = [v9 snapForAttribute:226 node:a4.var0];
  [v26 setWidthSnap:v25];

  [v9 insetsForAttribute:91 node:a4.var0];
  [v26 setGradientInsets:?];
  [v9 insetsForAttribute:92 withDefault:a4.var0 node:{1.0, 1.0, 1.0, 1.0}];
  [v26 setGradientFraction:?];
  [v26 setBalanceSections:{objc_msgSend(v9, "BOOLForAttribute:node:", 31, a4.var0)}];
  [v26 setTruncate:{objc_msgSend(v9, "BOOLForAttribute:node:", 213, a4.var0)}];
}

+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5
{
  v17 = a3;
  v7 = a4;
  v8 = a5;
  if ([v17 acceptsDrop])
  {
    v9 = [v7 finalizeTriggers];
    v10 = [v9 behaviorDataForTrigger:@"drop"];

    if (v10)
    {
      v11 = [TUIElementActionTriggerHandler alloc];
      v12 = [v8 actionObject];
      v13 = [v8 actionDelegate];
      v14 = [(TUIElementActionTriggerHandler *)v11 initWithActionsData:v9 actionObject:v12 actionDelegate:v13];
      [v17 setDropHandler:v14];
    }
  }

  v15 = [v7 finalizeContentsWithContext:v8];
  [v17 updateWithContents:v15];

  v16 = [v7 configuration];
  [v17 setConfiguration:v16];
}

@end