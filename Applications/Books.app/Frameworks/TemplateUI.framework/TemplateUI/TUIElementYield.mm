@interface TUIElementYield
+ (void)configureContainingBuilder:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementYield

+ (void)configureContainingBuilder:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v13 = a3;
  v9 = a5;
  v10 = a6;
  v11 = [v9 elementReferenceForAttribute:149 node:a4.var0];
  v12 = objc_autoreleasePoolPush();
  [v10 instantiateNamedElementReference:v11];
  objc_autoreleasePoolPop(v12);
}

@end