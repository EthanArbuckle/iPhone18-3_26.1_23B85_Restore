@interface TUIElementTemplate
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
+ (void)instantiateChildrenOfNode:(id)a3 object:(id)a4 builder:(id)a5 context:(id)a6 block:(id)a7;
@end

@implementation TUIElementTemplate

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v7 = a3;
  v8 = [a6 entry];
  [v7 setEntry:v8];
}

+ (void)instantiateChildrenOfNode:(id)a3 object:(id)a4 builder:(id)a5 context:(id)a6 block:(id)a7
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v13 = [v11 entry];
  v12 = [v9 updateWithEntry:v13 withBuilder:v10 environmentContainer:v11];

  [v11 setDirectEnvironmentUseMask:v12];
}

@end