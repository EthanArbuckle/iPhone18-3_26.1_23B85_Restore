@interface TUIElementTextFragmentInstantiator
+ (void)configureContainingBuilder:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementTextFragmentInstantiator

+ (void)configureContainingBuilder:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v9 = a3;
  v8 = [a5 stringForAttribute:0 node:a4.var0];
  if (v8)
  {
    [v9 appendString:v8];
  }
}

@end