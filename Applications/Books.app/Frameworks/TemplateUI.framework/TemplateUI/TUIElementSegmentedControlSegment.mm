@interface TUIElementSegmentedControlSegment
+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementSegmentedControlSegment

+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context
{
  builderCopy = builder;
  v8 = [attributes stringForAttribute:217 node:node.var0];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"(null)";
  }

  [builderCopy addSegmentWithTitle:v10];
}

@end