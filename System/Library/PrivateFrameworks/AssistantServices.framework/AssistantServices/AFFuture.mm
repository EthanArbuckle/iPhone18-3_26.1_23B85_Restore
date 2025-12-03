@interface AFFuture
- (id)initAndGetSetterBlock:(id *)block;
- (id)waitForValue:(unint64_t)value;
@end

@implementation AFFuture

- (id)waitForValue:(unint64_t)value
{
  if (dispatch_group_wait(self->_group, value))
  {
    v4 = 0;
  }

  else
  {
    v4 = self->_value;
  }

  return v4;
}

- (id)initAndGetSetterBlock:(id *)block
{
  v23.receiver = self;
  v23.super_class = AFFuture;
  v4 = [(AFFuture *)&v23 init];
  if (v4)
  {
    v5 = dispatch_group_create();
    v6 = *(v4 + 1);
    *(v4 + 1) = v5;

    dispatch_group_enter(*(v4 + 1));
    v7 = [AFOneArgumentSafetyBlock alloc];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __34__AFFuture_initAndGetSetterBlock___block_invoke;
    v21 = &unk_1E7345270;
    v22 = v4;
    v8 = [(AFOneArgumentSafetyBlock *)v7 initWithBlock:&v18];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __34__AFFuture_initAndGetSetterBlock___block_invoke_2;
    v16 = &unk_1E7345270;
    v17 = v8;
    v9 = v8;
    v10 = MEMORY[0x193AFB7B0](&v13);
    v11 = v10;
    if (block)
    {
      *block = [v10 copy];
    }
  }

  return v4;
}

void __34__AFFuture_initAndGetSetterBlock___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 16), a2);
  v4 = a2;
  dispatch_group_leave(*(*(a1 + 32) + 8));
}

@end