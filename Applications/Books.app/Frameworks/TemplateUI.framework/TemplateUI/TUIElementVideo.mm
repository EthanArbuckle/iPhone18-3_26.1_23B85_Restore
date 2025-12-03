@interface TUIElementVideo
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context;
@end

@implementation TUIElementVideo

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  contextCopy = context;
  attributesCopy = attributes;
  boxCopy = box;
  v12 = [attributesCopy stringForAttribute:220 node:var0];
  [boxCopy setVideoId:v12];

  [boxCopy setMuted:{objc_msgSend(attributesCopy, "BOOLForAttribute:withDefault:node:", 136, 1, var0)}];
  [boxCopy setLoop:{objc_msgSend(attributesCopy, "BOOLForAttribute:withDefault:node:", 125, 1, var0)}];
  [boxCopy setAllowFullScreen:{objc_msgSend(attributesCopy, "BOOLForAttribute:withDefault:node:", 4, 1, var0)}];
  [boxCopy setAutoPlay:{objc_msgSend(attributesCopy, "BOOLForAttribute:withDefault:node:", 15, 1, var0)}];
  [boxCopy setShowPlaybackControls:{objc_msgSend(attributesCopy, "BOOLForAttribute:withDefault:node:", 193, 1, var0)}];
  v13 = [attributesCopy stringForAttribute:118 node:var0];
  v14 = [TUIBox videoGravityFromString:v13];
  [boxCopy setGravity:v14];

  [attributesCopy floatForAttribute:60 node:var0];
  [boxCopy setCornerRadius:?];
  v15 = [attributesCopy stringForAttribute:215 node:var0];
  [boxCopy setUrlString:v15];

  v16 = [attributesCopy stringForAttribute:154 node:var0];

  [boxCopy setPosterFrameUrlString:v16];
  v17 = [contextCopy baseURLForNode:var0];

  [boxCopy setBaseUrl:v17];
  identifier = [boxCopy identifier];
  v19 = [identifier tui_identifierByAppendingString:@"top"];
  tui_identifierToString = [v19 tui_identifierToString];
  [boxCopy setTopTriggerName:tui_identifierToString];

  identifier2 = [boxCopy identifier];
  v22 = [identifier2 tui_identifierByAppendingString:@"bottom"];
  tui_identifierToString2 = [v22 tui_identifierToString];
  [boxCopy setBottomTriggerName:tui_identifierToString2];

  identifier3 = [boxCopy identifier];
  v25 = [identifier3 tui_identifierByAppendingString:@"left"];
  tui_identifierToString3 = [v25 tui_identifierToString];
  [boxCopy setLeftTriggerName:tui_identifierToString3];

  identifier4 = [boxCopy identifier];
  v27 = [identifier4 tui_identifierByAppendingString:@"right"];
  tui_identifierToString4 = [v27 tui_identifierToString];
  [boxCopy setRightTriggerName:tui_identifierToString4];
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
}

@end