@interface TUIElementAXActions
+ (void)addObject:(id)a3 toContainingBuilder:(id)a4 context:(id)a5;
@end

@implementation TUIElementAXActions

+ (void)addObject:(id)a3 toContainingBuilder:(id)a4 context:(id)a5
{
  v6 = a4;
  v7 = [a3 finalizeAXActions];
  [v6 setAXActions:v7];
}

@end