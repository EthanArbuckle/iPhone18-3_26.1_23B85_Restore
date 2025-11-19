@interface TUIElementConfiguration
+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5;
@end

@implementation TUIElementConfiguration

+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5
{
  v6 = a3;
  v7 = [a4 finalizeConfiguration];
  [v6 setData:v7];
}

@end