@interface TUIElementStateInstantiator
+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
+ (void)instantiateChildrenOfNode:(id)a3 object:(id)a4 containingBuilder:(id)a5 context:(id)a6 block:(id)a7;
@end

@implementation TUIElementStateInstantiator

+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v8 = a3;
  v9 = [a5 stringForAttribute:137 node:a4.var0];
  v10 = v9;
  if (v9)
  {
    v12 = v9;
    v11 = [NSArray arrayWithObjects:&v12 count:1];
    [v8 setStates:v11];
  }
}

+ (void)instantiateChildrenOfNode:(id)a3 object:(id)a4 containingBuilder:(id)a5 context:(id)a6 block:(id)a7
{
  v10 = a5;
  v11 = a6;
  v12 = a7;
  v13 = [a4 states];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_13867C;
  v17[3] = &unk_262690;
  v19 = v10;
  v20 = v12;
  v18 = v11;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  [v15 evaluateStates:v13 block:v17];
}

@end