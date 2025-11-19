@interface UIView(ASViewExtras)
- (void)as_shakeHorizontally;
@end

@implementation UIView(ASViewExtras)

- (void)as_shakeHorizontally
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__UIView_ASViewExtras__as_shakeHorizontally__block_invoke;
  block[3] = &unk_1E7AF7608;
  block[4] = a1;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

@end