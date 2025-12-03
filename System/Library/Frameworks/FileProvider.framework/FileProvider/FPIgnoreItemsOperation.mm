@interface FPIgnoreItemsOperation
- (FPIgnoreItemsOperation)initWithItems:(id)items;
@end

@implementation FPIgnoreItemsOperation

- (FPIgnoreItemsOperation)initWithItems:(id)items
{
  v4.receiver = self;
  v4.super_class = FPIgnoreItemsOperation;
  return [(FPUpdateIgnoreStateOperation *)&v4 initWithItems:items ignoreState:1 action:@"ExcludeFromSync"];
}

@end