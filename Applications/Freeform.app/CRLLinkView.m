@interface CRLLinkView
- (CGRect)frame;
- (_TtC8Freeform11CRLLinkView)initWithCoder:(id)a3;
- (_TtC8Freeform11CRLLinkView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)a3;
@end

@implementation CRLLinkView

- (_TtC8Freeform11CRLLinkView)initWithCoder:(id)a3
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

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_100B51C0C(x, y, width, height);
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for CRLLinkView();
  v7 = v13.receiver;
  v8 = a4;
  v9 = [(CRLLinkView *)&v13 hitTest:v8 withEvent:x, y];
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

- (_TtC8Freeform11CRLLinkView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end