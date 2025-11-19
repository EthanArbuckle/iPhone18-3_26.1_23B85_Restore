@interface TUIElementProgress
+ (id)supportedAttributes;
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementProgress

+ (id)supportedAttributes
{
  if (qword_2E5FF0 != -1)
  {
    sub_1997A8();
  }

  v3 = qword_2E5FE8;

  return v3;
}

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v22 = a5;
  v9 = a6;
  var0 = a4.var0;
  v11 = a3;
  v12 = [v22 stringForAttribute:116 node:a4.var0];
  v13 = [v22 objectForAttribute:113 node:var0];
  v14 = [v22 objectForAttribute:150 node:var0];
  if (v12)
  {
    v15 = [v9 manager];
    v16 = [v15 dynamicRegistry];
    v17 = [v16 progressProviderForKind:v12];
  }

  else
  {
    v17 = 0;
  }

  v18 = [v17 dynamicProgressForKind:v12 instance:v13 parameters:v14];
  v19 = [v22 stringForAttribute:159 node:var0];
  [v11 setProgressId:v19];

  v20 = [v22 stringForAttribute:160 node:var0];
  [v11 setProgressMode:v20];

  [v22 floatForAttribute:158 node:var0];
  [v11 setProgress:?];
  [v11 setDynamicProgress:v18];
  [v11 setPaused:{objc_msgSend(v22, "BOOLForAttribute:node:", 161, var0)}];
  v21 = [v22 colorForAttribute:51 node:var0];
  [v11 setColor:v21];
}

@end