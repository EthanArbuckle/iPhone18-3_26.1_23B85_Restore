@interface ChromeBar
- (_TtC17SequoiaTranslator9ChromeBar)initWithCoder:(id)a3;
- (_TtC17SequoiaTranslator9ChromeBar)initWithFrame:(CGRect)a3;
@end

@implementation ChromeBar

- (_TtC17SequoiaTranslator9ChromeBar)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC17SequoiaTranslator9ChromeBar_backgroundView;
  if (qword_1003A91B8 != -1)
  {
    swift_once();
  }

  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(UIVisualEffectView) initWithEffect:qword_1003ABB60];
  v13.receiver = self;
  v13.super_class = type metadata accessor for ChromeBar();
  v9 = [(ChromeBar *)&v13 initWithFrame:x, y, width, height];
  v10 = *(&v9->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator9ChromeBar_backgroundView);
  v11 = v9;
  [(ChromeBar *)v11 addSubview:v10];
  sub_10003D9C8();

  return v11;
}

- (_TtC17SequoiaTranslator9ChromeBar)initWithCoder:(id)a3
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