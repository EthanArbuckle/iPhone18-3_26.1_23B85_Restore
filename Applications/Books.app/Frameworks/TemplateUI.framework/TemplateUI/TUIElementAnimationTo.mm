@interface TUIElementAnimationTo
+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5;
@end

@implementation TUIElementAnimationTo

+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5
{
  v8 = a3;
  v6 = a4;
  [v8 setDuration:1.0];
  v7 = [v6 finalizeAnimationValues];
  [v8 setValues:v7];
}

@end