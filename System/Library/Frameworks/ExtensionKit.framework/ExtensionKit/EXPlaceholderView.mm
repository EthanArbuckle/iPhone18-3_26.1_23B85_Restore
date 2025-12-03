@interface EXPlaceholderView
- (EXPlaceholderView)init;
@end

@implementation EXPlaceholderView

- (EXPlaceholderView)init
{
  v5.receiver = self;
  v5.super_class = EXPlaceholderView;
  v2 = [(EXPlaceholderView *)&v5 init];
  if (v2)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(EXPlaceholderView *)v2 setBackgroundColor:clearColor];
  }

  return v2;
}

@end