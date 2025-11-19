@interface CADisplayFlipBook
- (CADisplayFlipBook)init;
- (void)dealloc;
@end

@implementation CADisplayFlipBook

- (void)dealloc
{
  v3 = *MEMORY[0x1E69E9840];
  v2.receiver = self;
  v2.super_class = CADisplayFlipBook;
  [(CADisplayFlipBook *)&v2 dealloc];
}

- (CADisplayFlipBook)init
{
  [MEMORY[0x1E695DF30] raise:@"CADisplayFlipBook" format:@"Invalid initializer."];

  return 0;
}

@end