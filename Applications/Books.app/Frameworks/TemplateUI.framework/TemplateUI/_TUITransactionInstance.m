@interface _TUITransactionInstance
- (_TUITransactionInstance)initWithTransaction:(id)a3;
- (id)_aq_layoutBlocksToApply;
- (void)_aq_appendLayoutBlock:(id)a3;
- (void)dealloc;
@end

@implementation _TUITransactionInstance

- (_TUITransactionInstance)initWithTransaction:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _TUITransactionInstance;
  v6 = [(_TUITransactionInstance *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transaction, a3);
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

- (void)_aq_appendLayoutBlock:(id)a3
{
  v4 = a3;
  layoutBlocks = self->_layoutBlocks;
  v10 = v4;
  if (!layoutBlocks)
  {
    v6 = objc_opt_new();
    v7 = self->_layoutBlocks;
    self->_layoutBlocks = v6;

    v4 = v10;
    layoutBlocks = self->_layoutBlocks;
  }

  v8 = [v4 copy];
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