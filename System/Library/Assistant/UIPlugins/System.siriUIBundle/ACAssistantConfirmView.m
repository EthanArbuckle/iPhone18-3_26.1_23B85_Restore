@interface ACAssistantConfirmView
- (ACAssistantConfirmView)initWithFrame:(CGRect)a3;
- (BOOL)_showsConfirmButton;
- (CGSize)sizeThatFits:(CGSize)result;
- (UIEdgeInsets)edgeInsets;
- (void)_hideConfirmButton;
- (void)_showConfirmButton;
- (void)layoutSubviews;
- (void)setCancelText:(id)a3;
- (void)setConfirmText:(id)a3;
@end

@implementation ACAssistantConfirmView

- (ACAssistantConfirmView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = ACAssistantConfirmView;
  v3 = [(ACAssistantConfirmView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[SiriUIContentButton buttonWithLightWeightFont];
    cancelButton = v3->_cancelButton;
    v3->_cancelButton = v4;

    v6 = [(SiriUIContentButton *)v3->_cancelButton layer];
    [v6 setCornerRadius:9.0];

    [(SiriUIContentButton *)v3->_cancelButton setRole:0];
    [(ACAssistantConfirmView *)v3 addSubview:v3->_cancelButton];
    v7 = +[SiriUIContentButton buttonWithMediumWeightFont];
    confirmButton = v3->_confirmButton;
    v3->_confirmButton = v7;

    v9 = [(SiriUIContentButton *)v3->_confirmButton layer];
    [v9 setCornerRadius:9.0];

    [(SiriUIContentButton *)v3->_confirmButton setRole:0];
    [(ACAssistantConfirmView *)v3 addSubview:v3->_confirmButton];
    *&v3->_edgeInsets.top = 0u;
    *&v3->_edgeInsets.bottom = 0u;
  }

  return v3;
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = ACAssistantConfirmView;
  [(ACAssistantConfirmView *)&v17 layoutSubviews];
  [(ACAssistantConfirmView *)self bounds];
  top = self->_edgeInsets.top;
  if (top == 0.0)
  {
    v18 = CGRectInset(*&v3, 16.0, 16.0);
    x = v18.origin.x;
    y = v18.origin.y;
    width = v18.size.width;
    height = v18.size.height;
  }

  else
  {
    left = self->_edgeInsets.left;
    x = v3 + left;
    y = v4 + top;
    width = v5 - (left + self->_edgeInsets.right);
    height = v6 - (top + self->_edgeInsets.bottom);
  }

  v13 = width * 0.5;
  if ([(ACAssistantConfirmView *)self _showsConfirmButton])
  {
    v14 = v13 + -8.0;
  }

  else
  {
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v14 = CGRectGetWidth(v19);
  }

  v15 = [(ACAssistantConfirmView *)self semanticContentAttribute];
  if (v15 == &dword_4)
  {
    v16 = v13 + 16.0;
  }

  else
  {
    v16 = x;
  }

  if (v15 != &dword_4)
  {
    x = v13 + 16.0;
  }

  [(SiriUIContentButton *)self->_cancelButton setFrame:v16, y, v14, height];
  [(SiriUIContentButton *)self->_confirmButton setFrame:x, y, v14, height];
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = 72.0 - self->_edgeInsets.top;
  result.height = v3;
  return result;
}

- (void)setCancelText:(id)a3
{
  [(SiriUIContentButton *)self->_cancelButton setTitle:a3 forState:0];

  [(ACAssistantConfirmView *)self setNeedsLayout];
}

- (BOOL)_showsConfirmButton
{
  v2 = self;
  v3 = [(SiriUIContentButton *)self->_confirmButton superview];
  LOBYTE(v2) = v3 == v2;

  return v2;
}

- (void)_showConfirmButton
{
  if (![(ACAssistantConfirmView *)self _showsConfirmButton])
  {
    [(ACAssistantConfirmView *)self addSubview:self->_confirmButton];
    verticalKeyline = self->_verticalKeyline;

    [(ACAssistantConfirmView *)self addSubview:verticalKeyline];
  }
}

- (void)_hideConfirmButton
{
  if ([(ACAssistantConfirmView *)self _showsConfirmButton])
  {
    [(SiriUIContentButton *)self->_confirmButton removeFromSuperview];
    verticalKeyline = self->_verticalKeyline;

    [(SiriUIKeyline *)verticalKeyline removeFromSuperview];
  }
}

- (void)setConfirmText:(id)a3
{
  [(SiriUIContentButton *)self->_confirmButton setTitle:a3 forState:0];
  v4 = [(SiriUIContentButton *)self->_confirmButton titleForState:0];
  v5 = [v4 length];

  if (v5)
  {

    [(ACAssistantConfirmView *)self _showConfirmButton];
  }

  else
  {

    [(ACAssistantConfirmView *)self _hideConfirmButton];
  }
}

- (UIEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end