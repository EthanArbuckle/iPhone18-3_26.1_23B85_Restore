@interface _TUITransactionInstance
- (_TUITransactionInstance)initWithTransaction:(id)transaction;
- (id)_aq_layoutBlocksToApply;
- (void)_aq_appendLayoutBlock:(id)block;
- (void)dealloc;
@end

@implementation _TUITransactionInstance

- (_TUITransactionInstance)initWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  v9.receiver = self;
  v9.super_class = _TUITransactionInstance;
  v6 = [(_TUITransactionInstance *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transaction, transaction);
    [(_TUITransaction *)v7->_transaction addCompletionDeferral];
    [(_TUITransaction *)v7->_transaction addSubTransactionCompletionDeferral];
  }

  return v7;
}

- (void)dealloc
{
  [(_TUITransaction *)self->_transaction removeCompletionDeferral];
  v3.receiver = self;
  v3.super_class = _TUITransactionInstance;
  [(_TUITransactionInstance *)&v3 dealloc];
}

- (void)_aq_appendLayoutBlock:(id)block
{
  blockCopy = block;
  layoutBlocks = self->_layoutBlocks;
  v10 = blockCopy;
  if (!layoutBlocks)
  {
    v6 = objc_opt_new();
    v7 = self->_layoutBlocks;
    self->_layoutBlocks = v6;

    blockCopy = v10;
    layoutBlocks = self->_layoutBlocks;
  }

  v8 = [blockCopy copy];
  v9 = objc_retainBlock(v8);
  [(NSMutableArray *)layoutBlocks addObject:v9];
}

- (id)_aq_layoutBlocksToApply
{
  layoutBlocks = self->_layoutBlocks;
  v4 = layoutBlocks;
  v5 = self->_layoutBlocks;
  self->_layoutBlocks = 0;

  return layoutBlocks;
}

@end