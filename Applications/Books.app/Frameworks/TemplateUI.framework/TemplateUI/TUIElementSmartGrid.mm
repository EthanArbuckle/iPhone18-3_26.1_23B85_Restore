@interface TUIElementSmartGrid
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context;
@end

@implementation TUIElementSmartGrid

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  boxCopy = box;
  attributesCopy = attributes;
  contextCopy = context;
  v11 = [contextCopy modelIdentifierByAppendingString:@"scrollable" node:node.var0];
  [boxCopy setModelIdentifierForScrollable:v11];

  [boxCopy setAcceptsDrop:{objc_msgSend(attributesCopy, "BOOLForAttribute:withDefault:node:", 2, 0, node.var0)}];
  v12 = [attributesCopy stringForAttribute:65 node:node.var0];
  [boxCopy setDecelerationRate:TUIBoxDecelerationRateFromString(v12)];

  [attributesCopy insetsForAttribute:112 node:node.var0];
  [boxCopy setInsets:?];
  v13 = [attributesCopy objectForAttribute:52 node:node.var0];
  [boxCopy setColumns:v13];

  [boxCopy setMaxColumns:{objc_msgSend(attributesCopy, "unsignedIntegerForAttribute:withDefault:node:", 128, 0x7FFFFFFFFFFFFFFFLL, node.var0)}];
  v14 = [attributesCopy lengthForAttribute:56 node:node.var0];
  [boxCopy setColumnWidth:{v14, v15}];
  v16 = [attributesCopy lengthForAttribute:54 node:node.var0];
  [boxCopy setColumnSpacing:{v16, v17}];
  [boxCopy setColumnMultiple:{objc_msgSend(attributesCopy, "unsignedIntegerForAttribute:withDefault:node:", 53, 1, node.var0)}];
  v18 = [attributesCopy stringForAttribute:120 node:node.var0];
  [boxCopy setLayoutMode:{+[TUISmartGridBox layoutModeFromString:](TUISmartGridBox, "layoutModeFromString:", v18)}];

  if ([boxCopy layoutMode])
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v19 = 1;
  }

  [boxCopy setRows:{objc_msgSend(attributesCopy, "unsignedIntegerForAttribute:withDefault:node:", 179, v19, node.var0)}];
  v20 = [attributesCopy lengthForAttribute:180 node:node.var0];
  [boxCopy setRowSpacing:{v20, v21}];
  environment = [contextCopy environment];

  v23 = 0;
  if ([environment deviceClass] == &dword_4 + 2)
  {
    v23 = TUISwooshUseUnboundedScroll() ^ 1;
  }

  [boxCopy setPaginated:{objc_msgSend(attributesCopy, "BOOLForAttribute:withDefault:node:", 148, v23, node.var0)}];
  [boxCopy setMaxPages:{objc_msgSend(attributesCopy, "unsignedIntegerForAttribute:withDefault:node:", 130, 0x7FFFFFFFFFFFFFFFLL, node.var0)}];
  v24 = [attributesCopy stringForAttribute:222 node:node.var0];
  [boxCopy setVerticalPlacement:{+[TUISmartGridBox verticalPlacementFromString:](TUISmartGridBox, "verticalPlacementFromString:", v24)}];

  v25 = [attributesCopy snapForAttribute:226 node:node.var0];
  [boxCopy setWidthSnap:v25];

  [attributesCopy insetsForAttribute:91 node:node.var0];
  [boxCopy setGradientInsets:?];
  [attributesCopy insetsForAttribute:92 withDefault:node.var0 node:{1.0, 1.0, 1.0, 1.0}];
  [boxCopy setGradientFraction:?];
  [boxCopy setBalanceSections:{objc_msgSend(attributesCopy, "BOOLForAttribute:node:", 31, node.var0)}];
  [boxCopy setTruncate:{objc_msgSend(attributesCopy, "BOOLForAttribute:node:", 213, node.var0)}];
}

+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context
{
  objectCopy = object;
  builderCopy = builder;
  contextCopy = context;
  if ([objectCopy acceptsDrop])
  {
    finalizeTriggers = [builderCopy finalizeTriggers];
    v10 = [finalizeTriggers behaviorDataForTrigger:@"drop"];

    if (v10)
    {
      v11 = [TUIElementActionTriggerHandler alloc];
      actionObject = [contextCopy actionObject];
      actionDelegate = [contextCopy actionDelegate];
      v14 = [(TUIElementActionTriggerHandler *)v11 initWithActionsData:finalizeTriggers actionObject:actionObject actionDelegate:actionDelegate];
      [objectCopy setDropHandler:v14];
    }
  }

  v15 = [builderCopy finalizeContentsWithContext:contextCopy];
  [objectCopy updateWithContents:v15];

  configuration = [builderCopy configuration];
  [objectCopy setConfiguration:configuration];
}

@end