@interface PassthroughWindow
- (_TtC17SequoiaTranslator17PassthroughWindow)initWithCoder:(id)a3;
- (_TtC17SequoiaTranslator17PassthroughWindow)initWithFrame:(CGRect)a3;
- (_TtC17SequoiaTranslator17PassthroughWindow)initWithWindowScene:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation PassthroughWindow

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_1001A0B0C(a4, x, y);

  return v10;
}

- (_TtC17SequoiaTranslator17PassthroughWindow)initWithWindowScene:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PassthroughWindow();
  return [(PassthroughWindow *)&v5 initWithWindowScene:a3];
}

- (_TtC17SequoiaTranslator17PassthroughWindow)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PassthroughWindow();
  return [(PassthroughWindow *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC17SequoiaTranslator17PassthroughWindow)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PassthroughWindow();
  v4 = a3;
  v5 = [(PassthroughWindow *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end