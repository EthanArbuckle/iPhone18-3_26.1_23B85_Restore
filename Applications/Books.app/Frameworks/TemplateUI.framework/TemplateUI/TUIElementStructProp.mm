@interface TUIElementStructProp
+ (id)attributesToEvaluate;
+ (void)configureContainingBuilder:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementStructProp

+ (id)attributesToEvaluate
{
  if (qword_2E62B0 != -1)
  {
    sub_199E20();
  }

  v3 = qword_2E62A8;

  return v3;
}

+ (void)configureContainingBuilder:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v9 = a3;
  v8 = a5;
  [v9 setValue:objc_msgSend(v8 forKey:{"unresolvedValueForAttribute:node:", 217, a4.var0), objc_msgSend(v8, "propertyNameForAttribute:node:", 137, a4.var0)}];
}

@end