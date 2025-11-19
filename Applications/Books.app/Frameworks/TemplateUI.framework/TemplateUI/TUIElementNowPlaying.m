@interface TUIElementNowPlaying
+ (id)supportedAttributes;
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementNowPlaying

+ (id)supportedAttributes
{
  if (qword_2E6050 != -1)
  {
    sub_1997F8();
  }

  v3 = qword_2E6048;

  return v3;
}

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v8 = a5;
  v9 = a3;
  v10 = [v8 stringForAttribute:151 node:var0];
  v13 = v10;
  if (v10)
  {
    v11 = [v10 caseInsensitiveCompare:@"playing"] == 0;
  }

  else
  {
    v11 = 0;
  }

  [v9 setPlaying:v11];
  v12 = [v8 colorForAttribute:51 node:var0];

  [v9 setColor:v12];
}

@end