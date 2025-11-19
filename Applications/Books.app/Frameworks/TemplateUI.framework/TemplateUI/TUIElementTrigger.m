@interface TUIElementTrigger
+ (id)supportedAttributes;
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementTrigger

+ (id)supportedAttributes
{
  if (qword_2E6408 != -1)
  {
    sub_19B104();
  }

  v3 = qword_2E6400;

  return v3;
}

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v8 = a5;
  v9 = a3;
  [v8 floatForAttribute:212 node:var0];
  [v9 setAnchorOffset:?];
  v10 = [v8 stringForAttribute:138 node:var0];
  [v9 setName:v10];

  v11 = [v8 stringForAttribute:141 node:var0];

  [v9 setObservationMode:{+[TUITriggerBox observationModeFromString:](TUITriggerBox, "observationModeFromString:", v11)}];
}

@end