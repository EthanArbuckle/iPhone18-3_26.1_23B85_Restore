@interface ProductTitleView
- (void)contentDidChange;
- (void)didTapIcon:(id)icon;
- (void)layoutSubviews;
@end

@implementation ProductTitleView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_5B5B2C();
}

- (void)didTapIcon:(id)icon
{
  v3 = *&self->_UINavigationBarTitleView_opaque[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_iconTapHandler];
  if (v3)
  {
    selfCopy = self;
    v5 = sub_F714(v3);
    v3(v5);

    sub_F704(v3);
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