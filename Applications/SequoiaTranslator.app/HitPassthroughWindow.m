@interface HitPassthroughWindow
- (_TtC17SequoiaTranslator20HitPassthroughWindow)initWithWindowScene:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation HitPassthroughWindow

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for HitPassthroughWindow();
  v7 = v13.receiver;
  v8 = a4;
  v9 = [(HitPassthroughWindow *)&v13 hitTest:v8 withEvent:x, y];
  if (!v9)
  {

    goto LABEL_5;
  }

  v10 = v9;
  type metadata accessor for HitPassthroughView();
  v11 = [v10 isKindOfClass:{swift_getObjCClassFromMetadata(), v13.receiver, v13.super_class}];

  v7 = v10;
  if (v11)
  {
LABEL_5:

    v10 = 0;
  }

  return v10;
}

- (_TtC17SequoiaTranslator20HitPassthroughWindow)initWithWindowScene:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for HitPassthroughWindow();
  return [(HitPassthroughWindow *)&v5 initWithWindowScene:a3];
}

@end