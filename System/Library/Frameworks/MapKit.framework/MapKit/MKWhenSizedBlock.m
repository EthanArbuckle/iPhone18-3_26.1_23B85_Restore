@interface MKWhenSizedBlock
- (MKWhenSizedBlock)initWithType:(int64_t)a3 block:(id)a4 completion:(id)a5;
- (void)perform;
@end

@implementation MKWhenSizedBlock

- (void)perform
{
  if (self->_shouldRun)
  {
    block = self->_block;
    if (block)
    {
      block[2](block, a2);
    }
  }

  completion = self->_completion;
  if (completion)
  {
    v5 = *(completion + 2);

    v5();
  }
}

- (MKWhenSizedBlock)initWithType:(int64_t)a3 block:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = MKWhenSizedBlock;
  v10 = [(MKWhenSizedBlock *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = a3;
    v12 = MEMORY[0x1A58E9F30](v8);
    block = v11->_block;
    v11->_block = v12;

    v14 = MEMORY[0x1A58E9F30](v9);
    completion = v11->_completion;
    v11->_completion = v14;

    v11->_shouldRun = 1;
  }

  return v11;
}

@end