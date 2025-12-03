@interface PDFCard
- (UIColor)backgroundColor;
- (void)setBackgroundColor:(id)color;
@end

@implementation PDFCard

- (UIColor)backgroundColor
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7PreviewP33_D9717818CCE14894D4E0059ED81FD5BD7PDFCard__backgroundColor);

  return v3;
}

- (void)setBackgroundColor:(id)color
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  colorCopy = color;
  selfCopy = self;
  sub_1000B6CD0(color);
}

@end