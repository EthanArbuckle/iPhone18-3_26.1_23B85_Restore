@interface IconSilhouetteView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation IconSilhouetteView

- (void)layoutSubviews
{
  v2 = self;
  sub_120394();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v4 = sub_7652D0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider18IconSilhouetteView_preferredIconWidth);
  (*(v5 + 16))(v8, self + OBJC_IVAR____TtC18ASMessagesProvider18IconSilhouetteView_iconStyle, v4, v6);
  sub_765280();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

@end