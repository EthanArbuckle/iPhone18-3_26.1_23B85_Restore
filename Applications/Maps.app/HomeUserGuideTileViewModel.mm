@interface HomeUserGuideTileViewModel
- (_TtC4Maps26HomeUserGuideTileViewModel)init;
- (void)dealloc;
@end

@implementation HomeUserGuideTileViewModel

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC4Maps26HomeUserGuideTileViewModel_collectionHandlerCellModel);
  selfCopy = self;
  [v4 removeObserver:selfCopy];
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(HomeUserGuideTileViewModel *)&v6 dealloc];
}

- (_TtC4Maps26HomeUserGuideTileViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end