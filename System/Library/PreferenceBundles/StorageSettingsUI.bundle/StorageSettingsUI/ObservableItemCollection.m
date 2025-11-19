@interface ObservableItemCollection
- (_TtC17StorageSettingsUI24ObservableItemCollection)init;
- (void)dataForCollectionShouldBeReloaded:(id)a3;
- (void)dealloc;
@end

@implementation ObservableItemCollection

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC17StorageSettingsUI24ObservableItemCollection_itemCollection);
  v3 = self;
  [v2 stopObserving];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for ObservableItemCollection(0);
  [(ObservableItemCollection *)&v4 dealloc];
}

- (void)dataForCollectionShouldBeReloaded:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_48A70(v4);
}

- (_TtC17StorageSettingsUI24ObservableItemCollection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end