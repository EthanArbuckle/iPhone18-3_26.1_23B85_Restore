@interface TUIElementTrackTimeRemaining
+ (id)supportedAttributes;
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementTrackTimeRemaining

+ (id)supportedAttributes
{
  if (qword_2E67F0 != -1)
  {
    sub_19BF54();
  }

  v3 = qword_2E67E8;

  return v3;
}

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v22 = [v10 fontSpecForNode:var0];
  v12 = [v10 objectForAttribute:113 node:var0];
  v13 = [v10 objectForAttribute:150 node:var0];
  v14 = objc_alloc_init(TUITextContentStyler);
  v15 = [v10 colorForAttribute:30 node:var0];
  [(TUIBackgroundColorStyler *)v14 setBackgroundColor:v15];

  v16 = [v10 colorForAttribute:51 node:var0];

  [(TUITextContentStyler *)v14 setTextColor:v16];
  v17 = [v22 font];
  [(TUITextContentStyler *)v14 setFont:v17];

  v18 = [v9 manager];

  v19 = [v18 dynamicRegistry];
  v20 = [v19 progressProviderForKind:@"audiobookProgress"];

  v21 = [v20 dynamicProgressForKind:@"timeRemaining" instance:v12 parameters:v13];
  [v11 setDynamicProgress:v21];
  [v11 setStyle:v14];
}

@end