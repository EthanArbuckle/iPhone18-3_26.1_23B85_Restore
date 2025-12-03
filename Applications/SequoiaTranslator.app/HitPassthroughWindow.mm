@interface HitPassthroughWindow
- (_TtC17SequoiaTranslator20HitPassthroughWindow)initWithWindowScene:(id)scene;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation HitPassthroughWindow

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for HitPassthroughWindow();
  v7 = v13.receiver;
  eventCopy = event;
  v9 = [(HitPassthroughWindow *)&v13 hitTest:eventCopy withEvent:x, y];
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

- (_TtC17SequoiaTranslator20HitPassthroughWindow)initWithWindowScene:(id)scene
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for HitPassthroughWindow();
  return [(HitPassthroughWindow *)&v5 initWithWindowScene:scene];
}

@end