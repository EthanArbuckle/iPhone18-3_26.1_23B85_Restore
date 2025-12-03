@interface AccountButtonWrapper
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC5Music20AccountButtonWrapper)initWithCoder:(id)coder;
- (_TtC5Music20AccountButtonWrapper)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation AccountButtonWrapper

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  sub_10003C5A0();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (_TtC5Music20AccountButtonWrapper)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music20AccountButtonWrapper_button) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(AccountButtonWrapper *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC5Music20AccountButtonWrapper_button];
  if (v3)
  {
    v4 = v3;
    [v2 bounds];
    [v4 setFrame:?];
  }
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v3 = sub_10030C66C();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (_TtC5Music20AccountButtonWrapper)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end