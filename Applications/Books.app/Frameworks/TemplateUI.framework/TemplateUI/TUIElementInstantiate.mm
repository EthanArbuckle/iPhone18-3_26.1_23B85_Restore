@interface TUIElementInstantiate
+ (id)containerAttributes;
+ (void)configureContainingBuilder:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementInstantiate

+ (id)containerAttributes
{
  if (qword_2E6060 != -1)
  {
    sub_1999E8();
  }

  v3 = qword_2E6058;

  return v3;
}

+ (void)configureContainingBuilder:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v13 = a3;
  v9 = a5;
  v10 = a6;
  v11 = [v9 nameReferenceForAttribute:137 node:a4.var0];
  v12 = objc_autoreleasePoolPush();
  [v10 instantiateElementReference:v11 withChildrenOfNode:a4.var0];
  objc_autoreleasePoolPop(v12);
}

@end