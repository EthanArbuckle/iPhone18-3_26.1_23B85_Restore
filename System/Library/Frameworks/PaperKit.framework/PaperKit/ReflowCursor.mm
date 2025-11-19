@interface ReflowCursor
- (void)handlePan:(id)a3;
- (void)layoutSubviews;
@end

@implementation ReflowCursor

- (void)handlePan:(id)a3
{
  v5 = self + OBJC_IVAR____TtC8PaperKit12ReflowCursor_panDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    swift_getObjectType();
    v7 = *(v6 + 8);
    v8 = a3;
    v9 = self;
    v7();
    swift_unknownObjectRelease();
  }
}

- (void)layoutSubviews
{
  v2 = self;
  ReflowCursor.layoutSubviews()();
}

@end