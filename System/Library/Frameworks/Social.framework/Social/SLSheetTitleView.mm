@interface SLSheetTitleView
- (CGSize)intrinsicContentSize;
- (SLSheetTitleView)initWithFrame:(CGRect)a3;
- (void)_setupTitleLabel;
- (void)layoutSubviews;
- (void)setServiceIconImage:(id)a3;
- (void)setTitle:(id)a3;
- (void)sizeToFit;
- (void)updateConstraints;
@end

@implementation SLSheetTitleView

- (SLSheetTitleView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = SLSheetTitleView;
  v3 = [(SLSheetTitleView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    constraints = v3->_constraints;
    v3->_constraints = v4;

    [(SLSheetTitleView *)v3 _setupTitleLabel];
  }

  return v3;
}

- (void)updateConstraints
{
  v19[2] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = SLSheetTitleView;
  [(SLSheetTitleView *)&v15 updateConstraints];
  [(SLSheetTitleView *)self removeConstraints:self->_constraints];
  [(NSMutableArray *)self->_constraints removeAllObjects];
  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_serviceIconView setTranslatesAutoresizingMaskIntoConstraints:0];
  constraints = self->_constraints;
  v4 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_titleLabel attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:-0.5];
  [(NSMutableArray *)constraints addObject:v4];

  serviceIconView = self->_serviceIconView;
  if (serviceIconView)
  {
    v6 = self->_constraints;
    v7 = [MEMORY[0x1E696ACD8] constraintWithItem:serviceIconView attribute:10 relatedBy:0 toItem:self->_titleLabel attribute:10 multiplier:1.0 constant:-0.5];
    [(NSMutableArray *)v6 addObject:v7];

    v8 = self->_serviceIconView;
    v18[0] = @"serviceIconView";
    v18[1] = @"titleLabel";
    titleLabel = self->_titleLabel;
    v19[0] = v8;
    v19[1] = titleLabel;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
    v11 = @"|[serviceIconView]-(iconLabelGap)-[titleLabel]|";
  }

  else
  {
    v12 = self->_titleLabel;
    v16 = @"titleLabel";
    v17 = v12;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v11 = @"|[titleLabel]|";
  }

  v13 = self->_constraints;
  v14 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:v11 options:0 metrics:&unk_1F4202C88 views:v10];
  [(NSMutableArray *)v13 addObjectsFromArray:v14];

  [(SLSheetTitleView *)self addConstraints:self->_constraints];
}

- (void)layoutSubviews
{
  [(UILabel *)self->_titleLabel layoutIfNeeded];
  v3.receiver = self;
  v3.super_class = SLSheetTitleView;
  [(SLSheetTitleView *)&v3 layoutSubviews];
}

- (void)_setupTitleLabel
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;

  [(SLSheetTitleView *)self addSubview:self->_titleLabel];
  v5 = [(SLSheetTitleView *)self title];
  [(UILabel *)self->_titleLabel setText:v5];

  v6 = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)self->_titleLabel setBackgroundColor:v6];

  v7 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:18.0];
  [(UILabel *)self->_titleLabel setFont:v7];

  [(UILabel *)self->_titleLabel invalidateIntrinsicContentSize];
  [(SLSheetTitleView *)self setNeedsLayout];

  [(SLSheetTitleView *)self setNeedsUpdateConstraints];
}

- (void)setTitle:(id)a3
{
  objc_storeStrong(&self->_title, a3);
  v5 = a3;
  [(UILabel *)self->_titleLabel setText:v5];
  [(UILabel *)self->_titleLabel invalidateIntrinsicContentSize];
}

- (void)setServiceIconImage:(id)a3
{
  v7 = a3;
  [(UIImageView *)self->_serviceIconView removeFromSuperview];
  if (v7)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v7];
    serviceIconView = self->_serviceIconView;
    self->_serviceIconView = v4;

    [(UIImageView *)self->_serviceIconView setAlpha:0.4];
    [(SLSheetTitleView *)self addSubview:self->_serviceIconView];
  }

  else
  {
    v6 = self->_serviceIconView;
    self->_serviceIconView = 0;
  }

  [(SLSheetTitleView *)self setNeedsUpdateConstraints];
  [(SLSheetTitleView *)self invalidateIntrinsicContentSize];
}

- (void)sizeToFit
{
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  [(SLSheetTitleView *)self intrinsicContentSize];

  [(SLSheetTitleView *)self setBounds:v3, v4, v5, v6];
}

- (CGSize)intrinsicContentSize
{
  [(UILabel *)self->_titleLabel layoutIfNeeded];
  [(UILabel *)self->_titleLabel intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  serviceIconView = self->_serviceIconView;
  if (serviceIconView)
  {
    [(UIImageView *)serviceIconView intrinsicContentSize];
    v9 = v8;
    v10 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v10 scale];
    v12 = v11;

    v13 = 8.0;
    if (v12 > 1.0)
    {
      v13 = 7.5;
    }

    v4 = v4 + v9 + v13;
  }

  v14 = v4;
  v15 = v6;
  result.height = v15;
  result.width = v14;
  return result;
}

@end