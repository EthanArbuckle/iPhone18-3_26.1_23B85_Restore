@interface MTActionButtonContainerView
- (CGSize)sizeThatFits:(CGSize)a3;
- (MTActionButtonContainerView)initWithActionButtons:(id)a3;
- (void)layoutSubviews;
- (void)setActionButtons:(id)a3;
@end

@implementation MTActionButtonContainerView

- (MTActionButtonContainerView)initWithActionButtons:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MTActionButtonContainerView;
  v5 = [(MTActionButtonContainerView *)&v8 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v5)
  {
    v6 = +[UIColor whiteColor];
    [(MTActionButtonContainerView *)v5 setBackgroundColor:v6];

    [(MTActionButtonContainerView *)v5 setActionButtons:v4];
  }

  return v5;
}

- (void)setActionButtons:(id)a3
{
  v4 = a3;
  [(NSArray *)self->_actionButtons makeObjectsPerformSelector:"removeFromSuperview"];
  actionButtons = self->_actionButtons;
  self->_actionButtons = v4;
  v6 = v4;

  v7 = self->_actionButtons;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005931C;
  v8[3] = &unk_1004D81E8;
  v8[4] = self;
  [(NSArray *)v7 enumerateObjectsUsingBlock:v8];
  [(MTActionButtonContainerView *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = [(MTActionButtonContainerView *)self actionButtons];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005940C;
  v9[3] = &unk_1004D8210;
  *&v9[5] = width;
  *&v9[6] = height;
  v9[4] = &v10;
  [v5 enumerateObjectsUsingBlock:v9];

  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  v7 = v6;
  v8 = height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = MTActionButtonContainerView;
  [(MTActionButtonContainerView *)&v6 layoutSubviews];
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v5[3] = 0;
  v3 = [(MTActionButtonContainerView *)self actionButtons];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100059540;
  v4[3] = &unk_1004D8238;
  v4[4] = self;
  v4[5] = v5;
  [v3 enumerateObjectsUsingBlock:v4];

  _Block_object_dispose(v5, 8);
}

@end