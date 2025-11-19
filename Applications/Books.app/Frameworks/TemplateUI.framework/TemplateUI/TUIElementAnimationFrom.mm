@interface TUIElementAnimationFrom
+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5;
@end

@implementation TUIElementAnimationFrom

+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5
{
  v7 = a3;
  v6 = [a4 finalizeAnimationValues];
  [v7 setValues:v6];
}

@end