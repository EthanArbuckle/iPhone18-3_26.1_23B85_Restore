@interface IconSilhouetteView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation IconSilhouetteView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1000ECFC4();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = sub_10074F314();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension18IconSilhouetteView_preferredIconWidth);
  (*(v5 + 16))(v8, self + OBJC_IVAR____TtC22SubscribePageExtension18IconSilhouetteView_iconStyle, v4, v6);
  sub_10074F2C4();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

@end