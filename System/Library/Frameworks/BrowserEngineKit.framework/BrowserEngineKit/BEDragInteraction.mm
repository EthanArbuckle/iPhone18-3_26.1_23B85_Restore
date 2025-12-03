@interface BEDragInteraction
- (BEDragInteraction)initWithDelegate:(id)delegate;
- (BOOL)_itemsForAddingToSession:(id)session atPoint:(CAPoint3D)point completion:(id)completion;
- (void)_prepareForSession:(id)session completion:(id)completion;
@end

@implementation BEDragInteraction

- (BEDragInteraction)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = BEDragInteraction;
  v5 = [(UIDragInteraction *)&v10 initWithDelegate:delegateCopy];
  if (v5)
  {
    *&v5->_delegateImplements = *&v5->_delegateImplements & 0xFE | objc_opt_respondsToSelector() & 1;
    v6 = objc_opt_respondsToSelector();
    delegateImplements = v5->_delegateImplements;
    if (v6)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    *&v5->_delegateImplements = delegateImplements & 0xFD | v8;
    if (delegateImplements)
    {
      [(UIDragInteraction *)v5 _setLiftDelay:0.65];
      [(UIDragInteraction *)v5 _setAllowsPointerDragBeforeLiftDelay:0];
    }
  }

  return v5;
}

- (void)_prepareForSession:(id)session completion:(id)completion
{
  completionCopy = completion;
  if (*&self->_delegateImplements)
  {
    sessionCopy = session;
    v9 = [_BEBurnableBlock alloc];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __51__BEDragInteraction__prepareForSession_completion___block_invoke;
    v16[3] = &unk_1E762C490;
    v17 = completionCopy;
    v10 = [(_BEBurnableBlock *)v9 initWithTimeout:v16 block:&__block_literal_global defaultInputProvider:0.5];
    delegate = [(UIDragInteraction *)self delegate];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __51__BEDragInteraction__prepareForSession_completion___block_invoke_3;
    v14[3] = &unk_1E762C4D8;
    v15 = v10;
    v12 = v10;
    [delegate dragInteraction:self prepareDragSession:sessionCopy completion:v14];

    sessionCopy2 = v17;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = BEDragInteraction;
    sessionCopy2 = session;
    [(UIDragInteraction *)&v13 _prepareForSession:sessionCopy2 completion:completionCopy];
  }
}

uint64_t __51__BEDragInteraction__prepareForSession_completion___block_invoke(uint64_t a1, void *a2)
{
  [a2 BOOLValue];
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (BOOL)_itemsForAddingToSession:(id)session atPoint:(CAPoint3D)point completion:(id)completion
{
  var2 = point.var2;
  var1 = point.var1;
  var0 = point.var0;
  completionCopy = completion;
  if ((*&self->_delegateImplements & 2) != 0)
  {
    sessionCopy = session;
    v14 = [_BEBurnableBlock alloc];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __65__BEDragInteraction__itemsForAddingToSession_atPoint_completion___block_invoke;
    v22[3] = &unk_1E762C500;
    v23 = completionCopy;
    v15 = [(_BEBurnableBlock *)v14 initWithTimeout:v22 block:&__block_literal_global_12 defaultInputProvider:0.5];
    delegate = [(UIDragInteraction *)self delegate];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __65__BEDragInteraction__itemsForAddingToSession_atPoint_completion___block_invoke_3;
    v20[3] = &unk_1E762C548;
    v21 = v15;
    v17 = v15;
    [delegate dragInteraction:self itemsForAddingToSession:sessionCopy forTouchAtPoint:v20 completion:{var0, var1}];

    var2 = 1;
    sessionCopy2 = v23;
  }

  else
  {
    v19.receiver = self;
    v19.super_class = BEDragInteraction;
    sessionCopy2 = session;
    var2 = [(UIDragInteraction *)&v19 _itemsForAddingToSession:sessionCopy2 atPoint:completionCopy completion:var0, var1, var2];
  }

  return var2;
}

@end