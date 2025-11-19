@interface TUIElementButtonCustomContent
+ (void)addObject:(id)a3 toContainingBuilder:(id)a4 context:(id)a5;
+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5;
@end

@implementation TUIElementButtonCustomContent

+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5
{
  v10 = a3;
  v7 = a5;
  v8 = [a4 finalizeModelsWithParent:0 box:0 context:v7];
  if ([v8 count] == &dword_0 + 1)
  {
    v9 = [v8 firstObject];
    [v10 setModel:v9];
  }

  else
  {
    [v7 reportError:1021];
  }
}

+ (void)addObject:(id)a3 toContainingBuilder:(id)a4 context:(id)a5
{
  v9 = a3;
  v6 = a4;
  v7 = [v9 model];

  if (v7)
  {
    v8 = [v9 model];
    [v6 addContentModel:v8];
  }
}

@end