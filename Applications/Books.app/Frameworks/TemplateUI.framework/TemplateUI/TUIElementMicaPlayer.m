@interface TUIElementMicaPlayer
+ (id)supportedAttributes;
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementMicaPlayer

+ (id)supportedAttributes
{
  if (qword_2E5FC8 != -1)
  {
    sub_199718();
  }

  v3 = qword_2E5FC0;

  return v3;
}

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = [v10 stringForAttribute:215 node:var0];
  [v11 setUrlString:v12];

  v13 = [v9 baseURLForNode:var0];

  [v11 setBaseURL:v13];
  v14 = [v10 stringForAttribute:117 node:var0];
  v23 = [TUIBox layerContentsGravityFromString:v14];

  [v11 setGravity:v23];
  v15 = [v10 stringForAttribute:132 node:var0];
  [v11 setTextKey:v15];

  v16 = [v10 stringForAttribute:133 node:var0];
  [v11 setTextValue:v16];

  [v11 setShouldStartAtEnd:{objc_msgSend(v10, "BOOLForAttribute:withDefault:node:", 197, 0, var0)}];
  v17 = [v10 stringForAttribute:142 node:var0];
  [v11 setTriggerName:v17];

  v18 = [v10 stringForAttribute:144 node:var0];
  v19 = [TUIBox triggerStateFromString:v18];

  [v11 setTargetTriggerState:v19];
  [v10 floatForAttribute:143 node:var0];
  [v11 setTriggerDelay:?];
  [v10 floatForAttribute:146 node:var0];
  if (v20 == 0.0)
  {
    v20 = 1.0;
  }

  [v11 setOpacity:v20];
  v21 = [v10 fontSpecForNode:var0];
  [v11 setFontSpec:v21];

  v22 = [v10 stringForAttribute:173 node:var0];

  [v11 setResourceKind:v22];
}

@end