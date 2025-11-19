@interface UITextField
- (void)setCursorPosition:(unint64_t)a3;
@end

@implementation UITextField

- (void)setCursorPosition:(unint64_t)a3
{
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [(UITextField *)self text];
    v6 = [v5 length];

    if (v6 >= a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = v6;
    }

    [(UITextField *)self setSelectionRange:v7, 0];
  }
}

@end