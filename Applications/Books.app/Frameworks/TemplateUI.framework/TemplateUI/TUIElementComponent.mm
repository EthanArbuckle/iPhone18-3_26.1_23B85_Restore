@interface TUIElementComponent
+ (id)attributesToIgnoreWhenResolving;
+ (id)containerAttributes;
+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
+ (void)instantiateNode:(id)a3 withObject:(id)a4 context:(id)a5;
@end

@implementation TUIElementComponent

+ (id)containerAttributes
{
  if (qword_2E6388 != -1)
  {
    sub_19A97C();
  }

  v3 = qword_2E6380;

  return v3;
}

+ (id)attributesToIgnoreWhenResolving
{
  if (qword_2E6398 != -1)
  {
    sub_19A990();
  }

  v3 = qword_2E6390;

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
  v7 = a5;
  [v7 instantiateComponentWithReference:objc_msgSend(a4 withChildrenOfNode:{"nameReference"), a3.var0}];
}

@end