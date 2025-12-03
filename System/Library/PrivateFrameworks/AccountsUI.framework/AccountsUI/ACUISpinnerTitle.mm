@interface ACUISpinnerTitle
- (ACUISpinnerTitle)initWithTitle:(id)title;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation ACUISpinnerTitle

- (ACUISpinnerTitle)initWithTitle:(id)title
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  v15 = selfCopy;
  CGRectMake();
  v17 = v3;
  v18 = v4;
  v19 = v5;
  v20 = v6;
  selfCopy = 0;
  v16.receiver = v15;
  v16.super_class = ACUISpinnerTitle;
  selfCopy = [(ACUISpinnerTitle *)&v16 initWithFrame:v3, v4, v5, v6];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v7 = objc_alloc(MEMORY[0x277D756B8]);
    v8 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    titleView = selfCopy->_titleView;
    selfCopy->_titleView = v8;
    MEMORY[0x277D82BD8](titleView);
    [(UILabel *)selfCopy->_titleView setText:location[0]];
    v14 = [MEMORY[0x277D74300] boldSystemFontOfSize:18.0];
    [(UILabel *)selfCopy->_titleView setFont:?];
    MEMORY[0x277D82BD8](v14);
    v10 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    spinner = selfCopy->_spinner;
    selfCopy->_spinner = v10;
    MEMORY[0x277D82BD8](spinner);
    [(ACUISpinnerTitle *)selfCopy addSubview:selfCopy->_titleView];
    [(ACUISpinnerTitle *)selfCopy addSubview:selfCopy->_spinner];
  }

  v13 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v13;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  [(UIActivityIndicatorView *)self->_spinner stopAnimating];
  v2.receiver = selfCopy;
  v2.super_class = ACUISpinnerTitle;
  [(ACUISpinnerTitle *)&v2 dealloc];
}

- (CGSize)sizeThatFits:(CGSize)fits
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
  selfCopy = self;
  v15 = a2;
  v14.receiver = self;
  v14.super_class = ACUISpinnerTitle;
  [(ACUISpinnerTitle *)&v14 layoutSubviews];
  [(UILabel *)selfCopy->_titleView sizeToFit];
  [(UIActivityIndicatorView *)selfCopy->_spinner sizeToFit];
  [(ACUISpinnerTitle *)selfCopy bounds];
  v13 = v2;
  [(UIActivityIndicatorView *)selfCopy->_spinner frame];
  [(UIActivityIndicatorView *)selfCopy->_spinner setFrame:v5, v4 + floor((v13 - v3) / 2.0), v6, v3];
  [(UILabel *)selfCopy->_titleView frame];
  v10 = v7;
  v11 = v8;
  v12 = v9;
  [(UIActivityIndicatorView *)selfCopy->_spinner frame];
  [(UILabel *)selfCopy->_titleView setFrame:CGRectGetMaxX(v17) + 10.0, v12 + floor((v13 - v11) / 2.0), v10, v11];
}

- (void)didMoveToWindow
{
  window = [(ACUISpinnerTitle *)self window];
  MEMORY[0x277D82BD8](window);
  if (window)
  {
    [(UIActivityIndicatorView *)self->_spinner startAnimating];
  }

  else
  {
    [(UIActivityIndicatorView *)self->_spinner stopAnimating];
  }
}

@end