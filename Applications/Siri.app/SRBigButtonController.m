@interface SRBigButtonController
- (UIEdgeInsets)defaultViewInsets;
- (double)desiredHeightForWidth:(double)a3;
- (void)_bigButtonHit:(id)a3;
- (void)dealloc;
- (void)loadView;
- (void)setAceObject:(id)a3;
@end

@implementation SRBigButtonController

- (void)dealloc
{
  v3 = [(SRBigButtonView *)self->_buttonView button];
  [v3 removeTarget:self action:"_bigButtonHit:" forControlEvents:64];

  v4.receiver = self;
  v4.super_class = SRBigButtonController;
  [(SRBigButtonController *)&v4 dealloc];
}

- (void)setAceObject:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = SRBigButtonController;
  [(SRBigButtonController *)&v6 setAceObject:v4];
  buttonObject = self->_buttonObject;
  self->_buttonObject = v4;
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

    v5 = [(SRBigButtonView *)self->_buttonView button];
    v6 = [(SAUIButton *)self->_buttonObject text];
    [v5 setTitle:v6 forState:0];

    v7 = [(SRBigButtonView *)self->_buttonView button];
    [v7 addTarget:self action:"_bigButtonHit:" forControlEvents:64];

    v8 = [(SRBigButtonView *)self->_buttonView button];
    v9 = [v8 layer];
    [v9 setCornerRadius:9.0];

    v10 = [(SRBigButtonView *)self->_buttonView button];
    [v10 setRole:0];

    v11 = self->_buttonView;

    [(SRBigButtonController *)self setView:v11];
  }
}

- (double)desiredHeightForWidth:(double)a3
{
  v4 = [(SRBigButtonController *)self view];
  [v4 sizeThatFits:{a3, 1.79769313e308}];
  v6 = v5;

  return v6;
}

- (void)_bigButtonHit:(id)a3
{
  v5 = [(SRBigButtonController *)self delegate];
  v4 = [(SAUIButton *)self->_buttonObject commands];
  [v5 siriViewController:self performAceCommands:v4];
}

@end