@interface AMSUICommonCollectionViewCell
- (AMSUICommonCollectionViewCell)init;
- (AMSUICommonCollectionViewCell)initWithFrame:(CGRect)frame;
- (id)tintColor;
- (void)_setup;
- (void)layoutSubviews;
@end

@implementation AMSUICommonCollectionViewCell

- (AMSUICommonCollectionViewCell)init
{
  v5.receiver = self;
  v5.super_class = AMSUICommonCollectionViewCell;
  v2 = [(AMSUICommonCollectionViewCell *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AMSUICommonCollectionViewCell *)v2 _setup];
  }

  return v3;
}

- (AMSUICommonCollectionViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = AMSUICommonCollectionViewCell;
  v3 = [(AMSUICommonCollectionViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(AMSUICommonCollectionViewCell *)v3 _setup];
  }

  return v4;
}

- (id)tintColor
{
  v4.receiver = self;
  v4.super_class = AMSUICommonCollectionViewCell;
  tintColor = [(AMSUICommonCollectionViewCell *)&v4 tintColor];

  return tintColor;
}

- (void)_setup
{
  if (!self->_underlyingContentView)
  {
    v3 = objc_alloc_init(AMSUICommonView);
    underlyingContentView = self->_underlyingContentView;
    self->_underlyingContentView = v3;

    v6.receiver = self;
    v6.super_class = AMSUICommonCollectionViewCell;
    contentView = [(AMSUICommonCollectionViewCell *)&v6 contentView];
    [contentView addSubview:self->_underlyingContentView];
  }
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = AMSUICommonCollectionViewCell;
  [(AMSUICommonCollectionViewCell *)&v14 layoutSubviews];
  v13.receiver = self;
  v13.super_class = AMSUICommonCollectionViewCell;
  contentView = [(AMSUICommonCollectionViewCell *)&v13 contentView];
  [contentView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  underlyingContentView = [(AMSUICommonCollectionViewCell *)self underlyingContentView];
  [underlyingContentView setFrame:{v5, v7, v9, v11}];
}

@end