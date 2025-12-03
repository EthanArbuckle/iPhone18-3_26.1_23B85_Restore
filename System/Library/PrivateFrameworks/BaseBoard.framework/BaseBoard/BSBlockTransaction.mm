@interface BSBlockTransaction
- (BSBlockTransaction)initWithBlock:(id)block;
- (id)_descriptionProem;
- (id)_graphNodeDebugName;
- (void)_begin;
@end

@implementation BSBlockTransaction

- (id)_descriptionProem
{
  debugName = [(BSBlockTransaction *)self debugName];
  if (debugName)
  {
    v4 = MEMORY[0x1E696AEC0];
    v10.receiver = self;
    v10.super_class = BSBlockTransaction;
    _descriptionProem = [(BSTransaction *)&v10 _descriptionProem];
    debugName2 = [(BSBlockTransaction *)self debugName];
    _descriptionProem2 = [v4 stringWithFormat:@"%@: %@", _descriptionProem, debugName2];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = BSBlockTransaction;
    _descriptionProem2 = [(BSTransaction *)&v9 _descriptionProem];
  }

  return _descriptionProem2;
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
  selfCopy = self;
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

- (BSBlockTransaction)initWithBlock:(id)block
{
  if (!block)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSBlockTransaction.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  v11.receiver = self;
  v11.super_class = BSBlockTransaction;
  v5 = [(BSTransaction *)&v11 init];
  if (v5)
  {
    v6 = [block copy];
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

- (id)_graphNodeDebugName
{
  debugName = [(BSBlockTransaction *)self debugName];
  if (debugName)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    debugName2 = [(BSBlockTransaction *)self debugName];
    _graphNodeDebugName = [v4 stringWithFormat:@"%@(%@)", v6, debugName2];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = BSBlockTransaction;
    _graphNodeDebugName = [(BSTransaction *)&v10 _graphNodeDebugName];
  }

  return _graphNodeDebugName;
}

@end