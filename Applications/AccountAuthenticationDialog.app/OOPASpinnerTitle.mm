@interface OOPASpinnerTitle
- (CGSize)sizeThatFits:(CGSize)fits;
- (OOPASpinnerTitle)initWithTitle:(id)title;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation OOPASpinnerTitle

- (OOPASpinnerTitle)initWithTitle:(id)title
{
  titleCopy = title;
  v12.receiver = self;
  v12.super_class = OOPASpinnerTitle;
  v5 = [(OOPASpinnerTitle *)&v12 initWithFrame:0.0, 0.0, 0.0, 22.0];
  if (v5)
  {
    v6 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    titleView = v5->_titleView;
    v5->_titleView = v6;

    [(UILabel *)v5->_titleView setText:titleCopy];
    v8 = [UIFont boldSystemFontOfSize:18.0];
    [(UILabel *)v5->_titleView setFont:v8];

    v9 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    spinner = v5->_spinner;
    v5->_spinner = v9;

    [(OOPASpinnerTitle *)v5 addSubview:v5->_titleView];
    [(OOPASpinnerTitle *)v5 addSubview:v5->_spinner];
  }

  return v5;
}

- (void)dealloc
{
  [(UIActivityIndicatorView *)self->_spinner stopAnimating];
  v3.receiver = self;
  v3.super_class = OOPASpinnerTitle;
  [(OOPASpinnerTitle *)&v3 dealloc];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UILabel *)self->_titleView sizeToFit:fits.width];
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
  v11.super_class = OOPASpinnerTitle;
  [(OOPASpinnerTitle *)&v11 layoutSubviews];
  [(UILabel *)self->_titleView sizeToFit];
  [(UIActivityIndicatorView *)self->_spinner sizeToFit];
  [(OOPASpinnerTitle *)self bounds];
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