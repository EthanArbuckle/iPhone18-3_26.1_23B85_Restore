@interface BEDragInteraction
- (BEDragInteraction)initWithDelegate:(id)a3;
- (BOOL)_itemsForAddingToSession:(id)a3 atPoint:(CAPoint3D)a4 completion:(id)a5;
- (void)_prepareForSession:(id)a3 completion:(id)a4;
@end

@implementation BEDragInteraction

- (BEDragInteraction)initWithDelegate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BEDragInteraction;
  v5 = [(UIDragInteraction *)&v10 initWithDelegate:v4];
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

- (void)_prepareForSession:(id)a3 completion:(id)a4
{
  v6 = a4;
  if (*&self->_delegateImplements)
  {
    v8 = a3;
    v9 = [_BEBurnableBlock alloc];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __51__BEDragInteraction__prepareForSession_completion___block_invoke;
    v16[3] = &unk_1E762C490;
    v17 = v6;
    v10 = [(_BEBurnableBlock *)v9 initWithTimeout:v16 block:&__block_literal_global defaultInputProvider:0.5];
    v11 = [(UIDragInteraction *)self delegate];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __51__BEDragInteraction__prepareForSession_completion___block_invoke_3;
    v14[3] = &unk_1E762C4D8;
    v15 = v10;
    v12 = v10;
    [v11 dragInteraction:self prepareDragSession:v8 completion:v14];

    v7 = v17;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = BEDragInteraction;
    v7 = a3;
    [(UIDragInteraction *)&v13 _prepareForSession:v7 completion:v6];
  }
}

uint64_t __51__BEDragInteraction__prepareForSession_completion___block_invoke(uint64_t a1, void *a2)
{
  [a2 BOOLValue];
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (BOOL)_itemsForAddingToSession:(id)a3 atPoint:(CAPoint3D)a4 completion:(id)a5
{
  var2 = a4.var2;
  var1 = a4.var1;
  var0 = a4.var0;
  v10 = a5;
  if ((*&self->_delegateImplements & 2) != 0)
  {
    v13 = a3;
    v14 = [_BEBurnableBlock alloc];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __65__BEDragInteraction__itemsForAddingToSession_atPoint_completion___block_invoke;
    v22[3] = &unk_1E762C500;
    v23 = v10;
    v15 = [(_BEBurnableBlock *)v14 initWithTimeout:v22 block:&__block_literal_global_12 defaultInputProvider:0.5];
    v16 = [(UIDragInteraction *)self delegate];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __65__BEDragInteraction__itemsForAddingToSession_atPoint_completion___block_invoke_3;
    v20[3] = &unk_1E762C548;
    v21 = v15;
    v17 = v15;
    [v16 dragInteraction:self itemsForAddingToSession:v13 forTouchAtPoint:v20 completion:{var0, var1}];

    v12 = 1;
    v11 = v23;
  }

  else
  {
    v19.receiver = self;
    v19.super_class = BEDragInteraction;
    v11 = a3;
    v12 = [(UIDragInteraction *)&v19 _itemsForAddingToSession:v11 atPoint:v10 completion:var0, var1, var2];
  }

  return v12;
}

@end