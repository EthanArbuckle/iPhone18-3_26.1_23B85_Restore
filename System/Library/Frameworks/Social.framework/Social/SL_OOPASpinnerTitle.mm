@interface SL_OOPASpinnerTitle
- (CGSize)sizeThatFits:(CGSize)a3;
- (SL_OOPASpinnerTitle)init;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation SL_OOPASpinnerTitle

- (SL_OOPASpinnerTitle)init
{
  v10.receiver = self;
  v10.super_class = SL_OOPASpinnerTitle;
  v2 = [(SL_OOPASpinnerTitle *)&v10 initWithFrame:0.0, 0.0, 0.0, 22.0];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69DCC10]);
    v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    titleView = v2->_titleView;
    v2->_titleView = v4;

    v6 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:18.0];
    [(UILabel *)v2->_titleView setFont:v6];

    v7 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    spinner = v2->_spinner;
    v2->_spinner = v7;

    [(SL_OOPASpinnerTitle *)v2 addSubview:v2->_titleView];
    [(SL_OOPASpinnerTitle *)v2 addSubview:v2->_spinner];
  }

  return v2;
}

- (void)dealloc
{
  [(UIActivityIndicatorView *)self->_spinner stopAnimating];
  v3.receiver = self;
  v3.super_class = SL_OOPASpinnerTitle;
  [(SL_OOPASpinnerTitle *)&v3 dealloc];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UILabel *)self->_titleView sizeToFit:a3.width];
  [(UIActivityIndicatorView *)self->_spinner sizeToFit];
  [(UILabel *)self->_titleView frame];
  v5 = v4;
  [(UIActivityIndicatorView *)self->_spinner frame];
  if (v5 < v6)
  {
    v5 = v6;
  }

  [(UILabel *)self->_titleView frame];
  v8 = v7 + 10.0;
  [(UIActivityIndicatorView *)self->_spinner frame];
  v10 = v8 + v9 + 10.0;
  [(UIActivityIndicatorView *)self->_spinner frame];
  v12 = v10 + v11;
  v13 = v5;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = SL_OOPASpinnerTitle;
  [(SL_OOPASpinnerTitle *)&v11 layoutSubviews];
  [(UILabel *)self->_titleView sizeToFit];
  [(UIActivityIndicatorView *)self->_spinner sizeToFit];
  [(SL_OOPASpinnerTitle *)self bounds];
  v4 = v3;
  [(UIActivityIndicatorView *)self->_spinner frame];
  [(UIActivityIndicatorView *)self->_spinner setFrame:?];
  [(UILabel *)self->_titleView frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIActivityIndicatorView *)self->_spinner frame];
  [(UILabel *)self->_titleView setFrame:CGRectGetMaxX(v12) + 10.0, v6 + floor((v4 - v10) * 0.5), v8, v10];
}

@end