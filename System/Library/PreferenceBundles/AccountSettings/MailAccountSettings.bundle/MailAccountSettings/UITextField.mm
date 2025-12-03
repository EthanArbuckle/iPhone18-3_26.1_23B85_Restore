@interface UITextField
- (void)setCursorPosition:(unint64_t)position;
@end

@implementation UITextField

- (void)setCursorPosition:(unint64_t)position
{
  if (position != 0x7FFFFFFFFFFFFFFFLL)
  {
    text = [(UITextField *)self text];
    v6 = [text length];

    if (v6 >= position)
    {
      positionCopy = position;
    }

    else
    {
      positionCopy = v6;
    }

    [(UITextField *)self setSelectionRange:positionCopy, 0];
  }
}

@end