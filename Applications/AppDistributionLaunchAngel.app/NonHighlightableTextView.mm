@interface NonHighlightableTextView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (_TtC26AppDistributionLaunchAngel24NonHighlightableTextView)initWithCoder:(id)coder;
- (_TtC26AppDistributionLaunchAngel24NonHighlightableTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
@end

@implementation NonHighlightableTextView

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  eventCopy = event;
  selfCopy = self;
  v8 = sub_100041238();

  return v8 & 1;
}

- (_TtC26AppDistributionLaunchAngel24NonHighlightableTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12.receiver = self;
  v12.super_class = type metadata accessor for NonHighlightableTextView();
  height = [(NonHighlightableTextView *)&v12 initWithFrame:container textContainer:x, y, width, height];

  return height;
}

- (_TtC26AppDistributionLaunchAngel24NonHighlightableTextView)initWithCoder:(id)coder
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
  coderCopy = coder;
  v6 = [(NonHighlightableTextView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end