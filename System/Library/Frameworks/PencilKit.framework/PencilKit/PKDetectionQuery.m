@interface PKDetectionQuery
- (void)dealloc;
- (void)pause;
- (void)start;
- (void)teardown;
@end

@implementation PKDetectionQuery

- (void)start
{
  v2 = [(PKDetectionQuery *)self query];
  [v2 start];
}

- (void)pause
{
  v2 = [(PKDetectionQuery *)self query];
  [v2 pause];
}

- (void)teardown
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__PKDetectionQuery_teardown__block_invoke;
  block[3] = &unk_1E82D7148;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKDetectionQuery;
  [(PKDetectionQuery *)&v2 dealloc];
}

@end