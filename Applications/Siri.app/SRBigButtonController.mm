@interface SRBigButtonController
- (UIEdgeInsets)defaultViewInsets;
- (double)desiredHeightForWidth:(double)width;
- (void)_bigButtonHit:(id)hit;
- (void)dealloc;
- (void)loadView;
- (void)setAceObject:(id)object;
@end

@implementation SRBigButtonController

- (void)dealloc
{
  button = [(SRBigButtonView *)self->_buttonView button];
  [button removeTarget:self action:"_bigButtonHit:" forControlEvents:64];

  v4.receiver = self;
  v4.super_class = SRBigButtonController;
  [(SRBigButtonController *)&v4 dealloc];
}

- (void)setAceObject:(id)object
{
  objectCopy = object;
  v6.receiver = self;
  v6.super_class = SRBigButtonController;
  [(SRBigButtonController *)&v6 setAceObject:objectCopy];
  buttonObject = self->_buttonObject;
  self->_buttonObject = objectCopy;
}

- (UIEdgeInsets)defaultViewInsets
{
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)loadView
{
  if (!self->_buttonView)
  {
    v3 = [[SRBigButtonView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    buttonView = self->_buttonView;
    self->_buttonView = v3;

    button = [(SRBigButtonView *)self->_buttonView button];
    text = [(SAUIButton *)self->_buttonObject text];
    [button setTitle:text forState:0];

    button2 = [(SRBigButtonView *)self->_buttonView button];
    [button2 addTarget:self action:"_bigButtonHit:" forControlEvents:64];

    button3 = [(SRBigButtonView *)self->_buttonView button];
    layer = [button3 layer];
    [layer setCornerRadius:9.0];

    button4 = [(SRBigButtonView *)self->_buttonView button];
    [button4 setRole:0];

    v11 = self->_buttonView;

    [(SRBigButtonController *)self setView:v11];
  }
}

- (double)desiredHeightForWidth:(double)width
{
  view = [(SRBigButtonController *)self view];
  [view sizeThatFits:{width, 1.79769313e308}];
  v6 = v5;

  return v6;
}

- (void)_bigButtonHit:(id)hit
{
  delegate = [(SRBigButtonController *)self delegate];
  commands = [(SAUIButton *)self->_buttonObject commands];
  [delegate siriViewController:self performAceCommands:commands];
}

@end