@interface LiveListenLeadingView
- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode;
- (_TtC10HearingApp21LiveListenLeadingView)initWithCoder:(id)coder;
- (_TtC10HearingApp21LiveListenLeadingView)initWithFrame:(CGRect)frame;
@end

@implementation LiveListenLeadingView

- (_TtC10HearingApp21LiveListenLeadingView)initWithCoder:(id)coder
{
  v5 = self + OBJC_IVAR____TtC10HearingApp21LiveListenLeadingView_compressedElementSize;
  *v5 = nullsub_1(14.3, 19.0);
  *(v5 + 1) = v6;
  v7 = self + OBJC_IVAR____TtC10HearingApp21LiveListenLeadingView_customElementSize;
  *v7 = nullsub_1(28.0, 37.7);
  *(v7 + 1) = v8;
  v12.receiver = self;
  v12.super_class = type metadata accessor for LiveListenLeadingView();
  coderCopy = coder;
  v10 = [(LiveListenLeadingView *)&v12 initWithCoder:coderCopy];

  if (v10)
  {
  }

  return v10;
}

- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode
{
  v4 = &OBJC_IVAR____TtC10HearingApp21LiveListenLeadingView_customElementSize;
  if (mode != 4)
  {
    v4 = &OBJC_IVAR____TtC10HearingApp21LiveListenLeadingView_compressedElementSize;
  }

  v5 = (self + *v4);
  v6 = *v5;
  v7 = v5[1];
  result.height = v7;
  result.width = v6;
  return result;
}

- (_TtC10HearingApp21LiveListenLeadingView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end