@interface NonHighlightableTextView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (_TtC26AppDistributionLaunchAngel24NonHighlightableTextView)initWithCoder:(id)a3;
- (_TtC26AppDistributionLaunchAngel24NonHighlightableTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
@end

@implementation NonHighlightableTextView

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a4;
  v7 = self;
  v8 = sub_100041238();

  return v8 & 1;
}

- (_TtC26AppDistributionLaunchAngel24NonHighlightableTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12.receiver = self;
  v12.super_class = type metadata accessor for NonHighlightableTextView();
  v10 = [(NonHighlightableTextView *)&v12 initWithFrame:a4 textContainer:x, y, width, height];

  return v10;
}

- (_TtC26AppDistributionLaunchAngel24NonHighlightableTextView)initWithCoder:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = self;
  v8.super_class = type metadata accessor for NonHighlightableTextView();
  v5 = a3;
  v6 = [(NonHighlightableTextView *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end