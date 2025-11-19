@interface TUIElementHoverVisible
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementHoverVisible

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v16 = a3;
  v8 = a5;
  v9 = [v8 stringForAttribute:138 node:a4.var0];
  [v16 setRegionName:v9];

  v10 = [v8 stringForAttribute:227 node:a4.var0];

  v11 = v10;
  v12 = v11;
  if (qword_2E64E0 == -1)
  {
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_19B6AC();
    if (!v12)
    {
      goto LABEL_6;
    }
  }

  v13 = [qword_2E64D8 objectForKeyedSubscript:v12];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 unsignedIntegerValue];

    goto LABEL_7;
  }

LABEL_6:
  v15 = 0;
LABEL_7:

  [v16 setWhenUnavailable:v15];
}

@end