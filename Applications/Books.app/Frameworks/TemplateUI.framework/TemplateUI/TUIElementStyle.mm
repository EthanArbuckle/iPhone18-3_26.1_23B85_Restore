@interface TUIElementStyle
+ (id)attributesToEvaluate;
+ (void)configureContainingBuilder:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementStyle

+ (id)attributesToEvaluate
{
  if (qword_2E60F0 != -1)
  {
    sub_199B84();
  }

  v3 = qword_2E60E8;

  return v3;
}

+ (void)configureContainingBuilder:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v8 = a5;
  v9 = a6;
  v13 = 0uLL;
  v14 = 0;
  if (v8)
  {
    [v8 styleDefinitionWithNode:a4.var0 nameAttribute:137 inheritAttribute:106];
  }

  v10 = [v8 closureForNode:a4.var0];
  v11 = v13;
  v12 = v14;
  [v9 defineStyle:&v11 closure:v10];
}

@end