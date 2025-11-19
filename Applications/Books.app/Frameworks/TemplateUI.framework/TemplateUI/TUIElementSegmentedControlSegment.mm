@interface TUIElementSegmentedControlSegment
+ (void)configureContainingBuilder:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementSegmentedControlSegment

+ (void)configureContainingBuilder:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v11 = a3;
  v8 = [a5 stringForAttribute:217 node:a4.var0];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"(null)";
  }

  [v11 addSegmentWithTitle:v10];
}

@end