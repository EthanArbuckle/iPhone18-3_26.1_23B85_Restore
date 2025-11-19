@interface PKDispatchAfterBlocks
- (PKDispatchAfterBlocks)initWithIdentifier:(id)a3;
- (void)dealloc;
- (void)dispatchAfter:(double)a3 withBlock:(id)a4;
@end

@implementation PKDispatchAfterBlocks

- (PKDispatchAfterBlocks)initWithIdentifier:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKDispatchAfterBlocks;
  v5 = [(PKDispatchAfterBlocks *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PKDispatchAfterBlocks *)v5 setIdentifier:v4];
  }

  return v6;
}

- (void)dealloc
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
  v3.receiver = self;
  v3.super_class = PKDispatchAfterBlocks;
  [(PKDispatchAfterBlocks *)&v3 dealloc];
}

- (void)dispatchAfter:(double)a3 withBlock:(id)a4
{
  v7 = [a4 copy];
  v6 = _Block_copy(v7);
  [(PKDispatchAfterBlocks *)self performSelector:sel_performBlock_ withObject:v6 afterDelay:a3];
}

@end