@interface ObservableItemCollection
- (_TtC17StorageSettingsUI24ObservableItemCollection)init;
- (void)dataForCollectionShouldBeReloaded:(id)reloaded;
- (void)dealloc;
@end

@implementation ObservableItemCollection

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC17StorageSettingsUI24ObservableItemCollection_itemCollection);
  selfCopy = self;
  [v2 stopObserving];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for ObservableItemCollection(0);
  [(ObservableItemCollection *)&v4 dealloc];
}

- (void)dataForCollectionShouldBeReloaded:(id)reloaded
{
  reloadedCopy = reloaded;
  selfCopy = self;
  sub_48A70(reloadedCopy);
}

- (_TtC17StorageSettingsUI24ObservableItemCollection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end