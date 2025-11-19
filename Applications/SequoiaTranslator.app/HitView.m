@interface HitView
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (_TtC17SequoiaTranslator7HitView)initWithCoder:(id)a3;
- (_TtC17SequoiaTranslator7HitView)initWithFrame:(CGRect)a3;
@end

@implementation HitView

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
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

  v6 = sub_1001C3A98(a3, v5);

  sub_100009EBC(v8, &unk_1003AB9C0);
  return v6;
}

- (_TtC17SequoiaTranslator7HitView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *&self->delegate[OBJC_IVAR____TtC17SequoiaTranslator7HitView_delegate] = 0;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for HitView();
  return [(HitView *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC17SequoiaTranslator7HitView)initWithCoder:(id)a3
{
  *&self->delegate[OBJC_IVAR____TtC17SequoiaTranslator7HitView_delegate] = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for HitView();
  v5 = a3;
  v6 = [(HitView *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end