@interface TUIElementVideo
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5;
@end

@implementation TUIElementVideo

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = [v10 stringForAttribute:220 node:var0];
  [v11 setVideoId:v12];

  [v11 setMuted:{objc_msgSend(v10, "BOOLForAttribute:withDefault:node:", 136, 1, var0)}];
  [v11 setLoop:{objc_msgSend(v10, "BOOLForAttribute:withDefault:node:", 125, 1, var0)}];
  [v11 setAllowFullScreen:{objc_msgSend(v10, "BOOLForAttribute:withDefault:node:", 4, 1, var0)}];
  [v11 setAutoPlay:{objc_msgSend(v10, "BOOLForAttribute:withDefault:node:", 15, 1, var0)}];
  [v11 setShowPlaybackControls:{objc_msgSend(v10, "BOOLForAttribute:withDefault:node:", 193, 1, var0)}];
  v13 = [v10 stringForAttribute:118 node:var0];
  v14 = [TUIBox videoGravityFromString:v13];
  [v11 setGravity:v14];

  [v10 floatForAttribute:60 node:var0];
  [v11 setCornerRadius:?];
  v15 = [v10 stringForAttribute:215 node:var0];
  [v11 setUrlString:v15];

  v16 = [v10 stringForAttribute:154 node:var0];

  [v11 setPosterFrameUrlString:v16];
  v17 = [v9 baseURLForNode:var0];

  [v11 setBaseUrl:v17];
  v18 = [v11 identifier];
  v19 = [v18 tui_identifierByAppendingString:@"top"];
  v20 = [v19 tui_identifierToString];
  [v11 setTopTriggerName:v20];

  v21 = [v11 identifier];
  v22 = [v21 tui_identifierByAppendingString:@"bottom"];
  v23 = [v22 tui_identifierToString];
  [v11 setBottomTriggerName:v23];

  v24 = [v11 identifier];
  v25 = [v24 tui_identifierByAppendingString:@"left"];
  v26 = [v25 tui_identifierToString];
  [v11 setLeftTriggerName:v26];

  v29 = [v11 identifier];
  v27 = [v29 tui_identifierByAppendingString:@"right"];
  v28 = [v27 tui_identifierToString];
  [v11 setRightTriggerName:v28];
}

+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5
{
  v15 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [TUIElementActionTriggerHandler alloc];
  v10 = [v7 finalizeTriggers];
  v11 = [v8 actionObject];
  v12 = [v8 actionDelegate];
  v13 = [(TUIElementActionTriggerHandler *)v9 initWithActionsData:v10 actionObject:v11 actionDelegate:v12];
  [v15 setActionHandler:v13];

  v14 = [v7 finalizeModelsWithParent:v15 box:v15 context:v8];
}

@end