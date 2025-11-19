@interface ACUISpinnerTitle
- (ACUISpinnerTitle)initWithTitle:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation ACUISpinnerTitle

- (ACUISpinnerTitle)initWithTitle:(id)a3
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = v22;
  CGRectMake();
  v17 = v3;
  v18 = v4;
  v19 = v5;
  v20 = v6;
  v22 = 0;
  v16.receiver = v15;
  v16.super_class = ACUISpinnerTitle;
  v22 = [(ACUISpinnerTitle *)&v16 initWithFrame:v3, v4, v5, v6];
  objc_storeStrong(&v22, v22);
  if (v22)
  {
    v7 = objc_alloc(MEMORY[0x277D756B8]);
    v8 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    titleView = v22->_titleView;
    v22->_titleView = v8;
    MEMORY[0x277D82BD8](titleView);
    [(UILabel *)v22->_titleView setText:location[0]];
    v14 = [MEMORY[0x277D74300] boldSystemFontOfSize:18.0];
    [(UILabel *)v22->_titleView setFont:?];
    MEMORY[0x277D82BD8](v14);
    v10 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    spinner = v22->_spinner;
    v22->_spinner = v10;
    MEMORY[0x277D82BD8](spinner);
    [(ACUISpinnerTitle *)v22 addSubview:v22->_titleView];
    [(ACUISpinnerTitle *)v22 addSubview:v22->_spinner];
  }

  v13 = MEMORY[0x277D82BE0](v22);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v22, 0);
  return v13;
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  [(UIActivityIndicatorView *)self->_spinner stopAnimating];
  v2.receiver = v4;
  v2.super_class = ACUISpinnerTitle;
  [(ACUISpinnerTitle *)&v2 dealloc];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UILabel *)self->_titleView sizeToFit];
  [(UIActivityIndicatorView *)self->_spinner sizeToFit];
  [(UILabel *)self->_titleView frame];
  v13 = v3;
  [(UIActivityIndicatorView *)self->_spinner frame];
  if (v13 >= v4)
  {
    v12 = v13;
  }

  else
  {
    v12 = v4;
  }

  [(UILabel *)self->_titleView frame];
  v10 = v5 + 10.0;
  [(UIActivityIndicatorView *)self->_spinner frame];
  v11 = v10 + v6 + 10.0;
  [(UIActivityIndicatorView *)self->_spinner frame];
  v8 = v11 + v7;
  v9 = v12;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  v16 = self;
  v15 = a2;
  v14.receiver = self;
  v14.super_class = ACUISpinnerTitle;
  [(ACUISpinnerTitle *)&v14 layoutSubviews];
  [(UILabel *)v16->_titleView sizeToFit];
  [(UIActivityIndicatorView *)v16->_spinner sizeToFit];
  [(ACUISpinnerTitle *)v16 bounds];
  v13 = v2;
  [(UIActivityIndicatorView *)v16->_spinner frame];
  [(UIActivityIndicatorView *)v16->_spinner setFrame:v5, v4 + floor((v13 - v3) / 2.0), v6, v3];
  [(UILabel *)v16->_titleView frame];
  v10 = v7;
  v11 = v8;
  v12 = v9;
  [(UIActivityIndicatorView *)v16->_spinner frame];
  [(UILabel *)v16->_titleView setFrame:CGRectGetMaxX(v17) + 10.0, v12 + floor((v13 - v11) / 2.0), v10, v11];
}

- (void)didMoveToWindow
{
  v2 = [(ACUISpinnerTitle *)self window];
  MEMORY[0x277D82BD8](v2);
  if (v2)
  {
    [(UIActivityIndicatorView *)self->_spinner startAnimating];
  }

  else
  {
    [(UIActivityIndicatorView *)self->_spinner stopAnimating];
  }
}

@end