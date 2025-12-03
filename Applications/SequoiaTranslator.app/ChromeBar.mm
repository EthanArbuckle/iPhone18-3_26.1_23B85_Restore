@interface ChromeBar
- (_TtC17SequoiaTranslator9ChromeBar)initWithCoder:(id)coder;
- (_TtC17SequoiaTranslator9ChromeBar)initWithFrame:(CGRect)frame;
@end

@implementation ChromeBar

- (_TtC17SequoiaTranslator9ChromeBar)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC17SequoiaTranslator9ChromeBar_backgroundView;
  if (qword_1003A91B8 != -1)
  {
    swift_once();
  }

  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(UIVisualEffectView) initWithEffect:qword_1003ABB60];
  v13.receiver = self;
  v13.super_class = type metadata accessor for ChromeBar();
  height = [(ChromeBar *)&v13 initWithFrame:x, y, width, height];
  v10 = *(&height->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator9ChromeBar_backgroundView);
  v11 = height;
  [(ChromeBar *)v11 addSubview:v10];
  sub_10003D9C8();

  return v11;
}

- (_TtC17SequoiaTranslator9ChromeBar)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC17SequoiaTranslator9ChromeBar_backgroundView;
  if (qword_1003A91B8 != -1)
  {
    swift_once();
  }

  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(UIVisualEffectView) initWithEffect:qword_1003ABB60];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end