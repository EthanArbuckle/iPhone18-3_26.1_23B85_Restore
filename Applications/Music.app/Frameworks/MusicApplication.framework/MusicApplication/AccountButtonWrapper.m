@interface AccountButtonWrapper
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC16MusicApplication20AccountButtonWrapper)initWithCoder:(id)a3;
- (_TtC16MusicApplication20AccountButtonWrapper)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation AccountButtonWrapper

- (_TtC16MusicApplication20AccountButtonWrapper)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication20AccountButtonWrapper_button) = 0;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(AccountButtonWrapper *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC16MusicApplication20AccountButtonWrapper_button];
  if (v3)
  {
    v4 = v3;
    [v2 bounds];
    [v4 setFrame:?];

    v2 = v4;
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = sub_3F1110();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  sub_3F115C();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (_TtC16MusicApplication20AccountButtonWrapper)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end