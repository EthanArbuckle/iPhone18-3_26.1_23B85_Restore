@interface BSBlockTransaction
- (BSBlockTransaction)initWithBlock:(id)a3;
- (id)_descriptionProem;
- (id)_graphNodeDebugName;
- (void)_begin;
@end

@implementation BSBlockTransaction

- (id)_descriptionProem
{
  v3 = [(BSBlockTransaction *)self debugName];
  if (v3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v10.receiver = self;
    v10.super_class = BSBlockTransaction;
    v5 = [(BSTransaction *)&v10 _descriptionProem];
    v6 = [(BSBlockTransaction *)self debugName];
    v7 = [v4 stringWithFormat:@"%@: %@", v5, v6];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = BSBlockTransaction;
    v7 = [(BSTransaction *)&v9 _descriptionProem];
  }

  return v7;
}

- (void)_begin
{
  v10.receiver = self;
  v10.super_class = BSBlockTransaction;
  [(BSTransaction *)&v10 _begin];
  [(BSTransaction *)self addMilestone:@"awaitingCompletion"];
  block = self->_block;
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __28__BSBlockTransaction__begin__block_invoke;
  v8 = &unk_1E72CB9F8;
  v9 = self;
  block[2]();
  v4 = self->_block;
  self->_block = 0;
}

uint64_t __28__BSBlockTransaction__begin__block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 satisfyMilestone:@"awaitingCompletion"];
  }

  else
  {
    return [v2 failWithReason:@"Completion block indicated failure."];
  }
}

- (BSBlockTransaction)initWithBlock:(id)a3
{
  if (!a3)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"BSBlockTransaction.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  v11.receiver = self;
  v11.super_class = BSBlockTransaction;
  v5 = [(BSTransaction *)&v11 init];
  if (v5)
  {
    v6 = [a3 copy];
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

- (id)_graphNodeDebugName
{
  v3 = [(BSBlockTransaction *)self debugName];
  if (v3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [(BSBlockTransaction *)self debugName];
    v8 = [v4 stringWithFormat:@"%@(%@)", v6, v7];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = BSBlockTransaction;
    v8 = [(BSTransaction *)&v10 _graphNodeDebugName];
  }

  return v8;
}

@end