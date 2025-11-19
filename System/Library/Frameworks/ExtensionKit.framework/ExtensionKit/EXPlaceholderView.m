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
    v3 = [MEMORY[0x1E69DC888] clearColor];
    [(EXPlaceholderView *)v2 setBackgroundColor:v3];
  }

  return v2;
}

@end