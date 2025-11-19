@interface IconSilhouetteView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation IconSilhouetteView

- (void)layoutSubviews
{
  v2 = self;
  sub_10020D8EC();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v4 = sub_10076BF6C();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension18IconSilhouetteView_preferredIconWidth);
  (*(v5 + 16))(v8, self + OBJC_IVAR____TtC20ProductPageExtension18IconSilhouetteView_iconStyle, v4, v6);
  sub_10076BF1C();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

@end