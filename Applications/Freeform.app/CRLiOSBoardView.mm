@interface CRLiOSBoardView
- (_TtC8Freeform15CRLiOSBoardView)initWithCoder:(id)a3;
- (_TtC8Freeform15CRLiOSBoardView)initWithFrame:(CGRect)a3;
- (void)didMoveToWindow;
@end

@implementation CRLiOSBoardView

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for CRLiOSBoardView();
  v2 = v4.receiver;
  [(CRLiOSBoardView *)&v4 didMoveToWindow];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = [v2 window];
    sub_1010530A8(v3);

    swift_unknownObjectRelease();
  }
}

- (_TtC8Freeform15CRLiOSBoardView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *&self->delegate[OBJC_IVAR____TtC8Freeform15CRLiOSBoardView_delegate] = 0;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for CRLiOSBoardView();
  return [(CRLiOSBoardView *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC8Freeform15CRLiOSBoardView)initWithCoder:(id)a3
{
  *&self->delegate[OBJC_IVAR____TtC8Freeform15CRLiOSBoardView_delegate] = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for CRLiOSBoardView();
  v5 = a3;
  v6 = [(CRLiOSBoardView *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end