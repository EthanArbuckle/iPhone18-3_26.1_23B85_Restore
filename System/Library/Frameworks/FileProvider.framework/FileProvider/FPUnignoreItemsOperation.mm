@interface FPUnignoreItemsOperation
- (FPUnignoreItemsOperation)initWithItems:(id)items;
@end

@implementation FPUnignoreItemsOperation

- (FPUnignoreItemsOperation)initWithItems:(id)items
{
  v4.receiver = self;
  v4.super_class = FPUnignoreItemsOperation;
  return [(FPUpdateIgnoreStateOperation *)&v4 initWithItems:items ignoreState:0 action:@"Unignore"];
}

@end