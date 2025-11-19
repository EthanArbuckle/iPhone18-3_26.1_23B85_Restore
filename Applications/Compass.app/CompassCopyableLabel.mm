@interface CompassCopyableLabel
- (CompassCopyableLabel)initWithFrame:(CGRect)a3;
- (void)_openMenu:(id)a3;
- (void)copy:(id)a3;
@end

@implementation CompassCopyableLabel

- (CompassCopyableLabel)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = CompassCopyableLabel;
  v3 = [(CompassCopyableLabel *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [[UIEditMenuInteraction alloc] initWithDelegate:v3];
    editMenuInteraction = v3->_editMenuInteraction;
    v3->_editMenuInteraction = v4;

    [(CompassCopyableLabel *)v3 addInteraction:v3->_editMenuInteraction];
    v6 = [[UILongPressGestureRecognizer alloc] initWithTarget:v3 action:"_openMenu:"];
    [(CompassCopyableLabel *)v3 addGestureRecognizer:v6];
  }

  return v3;
}

- (void)copy:(id)a3
{
  v5 = +[UIPasteboard generalPasteboard];
  v4 = [(CompassCopyableLabel *)self text];
  [v5 setString:v4];
}

- (void)_openMenu:(id)a3
{
  v5 = a3;
  if ([v5 state] == 1)
  {
    [(CompassCopyableLabel *)self becomeFirstResponder];
    [v5 locationInView:self];
    v4 = [UIEditMenuConfiguration configurationWithIdentifier:0 sourcePoint:?];
    [(UIEditMenuInteraction *)self->_editMenuInteraction presentEditMenuWithConfiguration:v4];
  }
}

@end