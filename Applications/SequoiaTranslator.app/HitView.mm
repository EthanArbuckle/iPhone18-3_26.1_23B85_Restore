@interface HitView
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (_TtC17SequoiaTranslator7HitView)initWithCoder:(id)coder;
- (_TtC17SequoiaTranslator7HitView)initWithFrame:(CGRect)frame;
@end

@implementation HitView

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  if (qword_1003A9168 != -1)
  {
    swift_once();
  }

  v5 = qword_1003D2468;

  v6 = sub_1001C3A98(action, v5);

  sub_100009EBC(v8, &unk_1003AB9C0);
  return v6;
}

- (_TtC17SequoiaTranslator7HitView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *&self->delegate[OBJC_IVAR____TtC17SequoiaTranslator7HitView_delegate] = 0;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for HitView();
  return [(HitView *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC17SequoiaTranslator7HitView)initWithCoder:(id)coder
{
  *&self->delegate[OBJC_IVAR____TtC17SequoiaTranslator7HitView_delegate] = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for HitView();
  coderCopy = coder;
  v6 = [(HitView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end