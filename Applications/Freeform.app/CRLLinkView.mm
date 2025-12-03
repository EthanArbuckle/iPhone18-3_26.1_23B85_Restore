@interface CRLLinkView
- (CGRect)frame;
- (_TtC8Freeform11CRLLinkView)initWithCoder:(id)coder;
- (_TtC8Freeform11CRLLinkView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)frame;
@end

@implementation CRLLinkView

- (_TtC8Freeform11CRLLinkView)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform11CRLLinkView_viewScale) = 0x3FF0000000000000;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLLinkView();
  v2 = v3.receiver;
  [(CRLLinkView *)&v3 layoutSubviews];
  sub_100B51E70();
}

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for CRLLinkView();
  [(CRLLinkView *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  selfCopy = self;
  sub_100B51C0C(x, y, width, height);
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for CRLLinkView();
  v7 = v13.receiver;
  eventCopy = event;
  v9 = [(CRLLinkView *)&v13 hitTest:eventCopy withEvent:x, y];
  if (!v9)
  {

    goto LABEL_5;
  }

  v10 = v9;
  sub_100006370(0, &qword_1019F6D00);
  v11 = v7;
  v7 = v10;
  LOBYTE(v10) = static NSObject.== infix(_:_:)();

  if (v10)
  {
LABEL_5:

    v7 = 0;
  }

  return v7;
}

- (_TtC8Freeform11CRLLinkView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end