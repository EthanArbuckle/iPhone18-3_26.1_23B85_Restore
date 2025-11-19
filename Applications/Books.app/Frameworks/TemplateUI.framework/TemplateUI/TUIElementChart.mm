@interface TUIElementChart
+ (id)supportedAttributes;
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementChart

+ (id)supportedAttributes
{
  if (qword_2E6170 != -1)
  {
    sub_199C10();
  }

  v3 = qword_2E6168;

  return v3;
}

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v8 = a5;
  v9 = a3;
  v26 = [v8 stringForAttribute:49 node:var0];
  v10 = [v8 stringForAttribute:206 node:var0];
  v11 = [v8 stringForAttribute:202 node:var0];
  [v8 floatForAttribute:52 node:var0];
  v13 = fmax(v12, 1.0);
  [v8 floatForAttribute:60 node:var0];
  v15 = v14;
  [v8 floatForAttribute:158 node:var0];
  v17 = v16;
  [v8 floatForAttribute:195 node:var0];
  v19 = v18;
  v20 = [v8 colorForAttribute:51 node:var0];
  v21 = [v8 colorForAttribute:30 node:var0];
  v22 = [v8 colorForAttribute:187 node:var0];
  v23 = [v8 fontSpecForNode:var0];

  v24 = [v23 attributesForAttributedString];
  [v9 setChartType:v26];
  [v9 setTitle:v10];
  [v9 setFooter:v11];
  [v9 setColumns:v13];
  [v9 setCornerRadius:v15];
  [v9 setProgress:v17];
  [v9 setSpacing:v19];
  [v9 setColor:v20];
  [v9 setBackgroundColor:v21];
  [v9 setShadowColor:v22];
  [v9 setFontSpec:v23];
  v25 = [v24 attributes];
  [v9 setFontAttributes:v25];
}

@end