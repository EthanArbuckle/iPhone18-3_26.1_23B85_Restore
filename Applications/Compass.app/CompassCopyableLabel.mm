@interface CompassCopyableLabel
- (CompassCopyableLabel)initWithFrame:(CGRect)frame;
- (void)_openMenu:(id)menu;
- (void)copy:(id)copy;
@end

@implementation CompassCopyableLabel

- (CompassCopyableLabel)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = CompassCopyableLabel;
  v3 = [(CompassCopyableLabel *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)copy:(id)copy
{
  v5 = +[UIPasteboard generalPasteboard];
  text = [(CompassCopyableLabel *)self text];
  [v5 setString:text];
}

- (void)_openMenu:(id)menu
{
  menuCopy = menu;
  if ([menuCopy state] == 1)
  {
    [(CompassCopyableLabel *)self becomeFirstResponder];
    [menuCopy locationInView:self];
    v4 = [UIEditMenuConfiguration configurationWithIdentifier:0 sourcePoint:?];
    [(UIEditMenuInteraction *)self->_editMenuInteraction presentEditMenuWithConfiguration:v4];
  }
}

@end