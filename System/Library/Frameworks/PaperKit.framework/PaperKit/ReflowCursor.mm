@interface ReflowCursor
- (void)handlePan:(id)pan;
- (void)layoutSubviews;
@end

@implementation ReflowCursor

- (void)handlePan:(id)pan
{
  v5 = self + OBJC_IVAR____TtC8PaperKit12ReflowCursor_panDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    swift_getObjectType();
    v7 = *(v6 + 8);
    panCopy = pan;
    selfCopy = self;
    v7();
    swift_unknownObjectRelease();
  }
}

- (void)layoutSubviews
{
  selfCopy = self;
  ReflowCursor.layoutSubviews()();
}

@end