@interface CRLiOSBoardView
- (_TtC8Freeform15CRLiOSBoardView)initWithCoder:(id)coder;
- (_TtC8Freeform15CRLiOSBoardView)initWithFrame:(CGRect)frame;
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
    window = [v2 window];
    sub_1010530A8(window);

    swift_unknownObjectRelease();
  }
}

- (_TtC8Freeform15CRLiOSBoardView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *&self->delegate[OBJC_IVAR____TtC8Freeform15CRLiOSBoardView_delegate] = 0;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for CRLiOSBoardView();
  return [(CRLiOSBoardView *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC8Freeform15CRLiOSBoardView)initWithCoder:(id)coder
{
  *&self->delegate[OBJC_IVAR____TtC8Freeform15CRLiOSBoardView_delegate] = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for CRLiOSBoardView();
  coderCopy = coder;
  v6 = [(CRLiOSBoardView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end