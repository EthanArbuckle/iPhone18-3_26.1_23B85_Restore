@interface SearchHintView
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC18ASMessagesProvider14SearchHintView)initWithCoder:(id)coder;
- (_TtC18ASMessagesProvider14SearchHintView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation SearchHintView

- (_TtC18ASMessagesProvider14SearchHintView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_isHighlighted) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_showSeparator) = 0;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_separatorView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_iconImage) = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_66EA38();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = sub_66F3AC(in);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  swift_unknownObjectRelease();

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.var3 = v17;
  result.var2 = v16;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

- (_TtC18ASMessagesProvider14SearchHintView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end