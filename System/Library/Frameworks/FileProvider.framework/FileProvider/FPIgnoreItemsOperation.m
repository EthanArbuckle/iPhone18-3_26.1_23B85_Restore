@interface FPIgnoreItemsOperation
- (FPIgnoreItemsOperation)initWithItems:(id)a3;
@end

@implementation FPIgnoreItemsOperation

- (FPIgnoreItemsOperation)initWithItems:(id)a3
{
  v4.receiver = self;
  v4.super_class = FPIgnoreItemsOperation;
  return [(FPUpdateIgnoreStateOperation *)&v4 initWithItems:a3 ignoreState:1 action:@"ExcludeFromSync"];
}

@end