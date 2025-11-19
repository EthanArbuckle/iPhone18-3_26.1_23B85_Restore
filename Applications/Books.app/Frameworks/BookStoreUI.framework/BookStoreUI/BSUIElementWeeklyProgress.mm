@interface BSUIElementWeeklyProgress
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5;
@end

@implementation BSUIElementWeeklyProgress

+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [TUIConfiguration alloc];
  v11 = [v8 finalizeWidgetWithParent:0];

  v12 = [v10 initWithData:v11];
  [v9 setConfiguration:v12];

  v14 = [v9 weeklyProgressMetrics];
  v13 = [v9 configuration];

  [v14 updateWithConfiguration:v13 context:v7];
}

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = [[BSUIWeeklyProgressMetrics alloc] initWithNode:a4.var0 attributes:v10 context:v9];

  [v11 setWeeklyProgressMetrics:v12];
}

@end