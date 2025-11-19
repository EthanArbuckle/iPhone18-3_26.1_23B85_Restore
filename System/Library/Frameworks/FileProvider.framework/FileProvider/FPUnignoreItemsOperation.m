@interface FPUnignoreItemsOperation
- (FPUnignoreItemsOperation)initWithItems:(id)a3;
@end

@implementation FPUnignoreItemsOperation

- (FPUnignoreItemsOperation)initWithItems:(id)a3
{
  v4.receiver = self;
  v4.super_class = FPUnignoreItemsOperation;
  return [(FPUpdateIgnoreStateOperation *)&v4 initWithItems:a3 ignoreState:0 action:@"Unignore"];
}

@end