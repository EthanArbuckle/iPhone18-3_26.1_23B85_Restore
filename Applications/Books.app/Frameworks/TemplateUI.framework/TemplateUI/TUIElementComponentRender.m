@interface TUIElementComponentRender
+ (id)attributesToIgnoreWhenResolving;
+ (id)containerAttributes;
+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
+ (void)instantiateNode:(id)a3 withObject:(id)a4 context:(id)a5;
@end

@implementation TUIElementComponentRender

+ (id)containerAttributes
{
  if (qword_2E63C8 != -1)
  {
    sub_19A9CC();
  }

  v3 = qword_2E63C0;

  return v3;
}

+ (id)attributesToIgnoreWhenResolving
{
  if (qword_2E63D8 != -1)
  {
    sub_19A9E0();
  }

  v3 = qword_2E63D0;

  return v3;
}

+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v8 = a3;
  [v8 setNameReference:{objc_msgSend(a5, "nameReferenceForAttribute:node:", 137, var0)}];
}

+ (void)instantiateNode:(id)a3 withObject:(id)a4 context:(id)a5
{
  v10 = a4;
  v7 = a5;
  v8 = [v10 nameReference];
  v9 = objc_autoreleasePoolPush();
  [v7 instantiateRender:v8 withChildrenOfNode:a3.var0];
  objc_autoreleasePoolPop(v9);
}

@end