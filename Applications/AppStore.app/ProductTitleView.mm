@interface ProductTitleView
- (void)contentDidChange;
- (void)didTapIcon:(id)a3;
- (void)layoutSubviews;
@end

@implementation ProductTitleView

- (void)layoutSubviews
{
  v2 = self;
  sub_100274844();
}

- (void)didTapIcon:(id)a3
{
  v3 = *&self->_UINavigationBarTitleView_opaque[OBJC_IVAR____TtC8AppStore16ProductTitleView_iconTapHandler];
  if (v3)
  {
    v4 = self;
    v5 = sub_10000827C(v3);
    v3(v5);

    sub_10001F63C(v3);
  }
}

- (void)contentDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ProductTitleView();
  v2 = v3.receiver;
  [(ProductTitleView *)&v3 contentDidChange];
  [v2 setNeedsLayout];
}

@end