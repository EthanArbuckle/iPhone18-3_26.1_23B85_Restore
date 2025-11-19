@interface TUIElementHScroll
+ (id)supportedAttributes;
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5;
@end

@implementation TUIElementHScroll

+ (id)supportedAttributes
{
  if (qword_2E6030 != -1)
  {
    sub_1997D0();
  }

  v3 = qword_2E6028;

  return v3;
}

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v9 = a6;
  v10 = a5;
  v11 = a3;
  [v10 floatForAttribute:9 node:var0];
  [v11 setAnchorOffset:?];
  [v11 setAcceptsDrop:{objc_msgSend(v10, "BOOLForAttribute:withDefault:node:", 2, 0, var0)}];
  v12 = [v10 stringForAttribute:65 node:var0];

  [v11 setDecelerationRate:TUIBoxDecelerationRateFromString(v12)];
  v13 = [v9 modelIdentifierWithNode:var0];

  [v11 setModelIdentifierForScrollable:v13];
}

+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5
{
  v15 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v7 finalizeModelsWithParent:v15 box:v15 context:v8];
  if ([v15 acceptsDrop])
  {
    v10 = [v7 finalizeTriggers];
    v11 = [v10 behaviorDataForTrigger:@"drop"];

    if (v11)
    {
      v12 = [TUIElementActionTriggerHandler alloc];
      v13 = [v8 actionObject];
      v14 = [(TUIElementActionTriggerHandler *)v12 initWithActionsData:v10 actionObject:v13 actionDelegate:0];
      [v15 setDropHandler:v14];
    }
  }
}

@end