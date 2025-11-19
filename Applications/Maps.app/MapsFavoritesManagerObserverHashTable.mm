@interface MapsFavoritesManagerObserverHashTable
- (_TtC4Maps37MapsFavoritesManagerObserverHashTable)initWithProtocol:(id)a3 queue:(id)a4;
- (void)registerObserver:(id)a3 queue:(id)a4;
@end

@implementation MapsFavoritesManagerObserverHashTable

- (void)registerObserver:(id)a3 queue:(id)a4
{
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = v9.receiver;
  [(MapsFavoritesManagerObserverHashTable *)&v9 registerObserver:a3 queue:v6];
  v8 = *&v7[OBJC_IVAR____TtC4Maps37MapsFavoritesManagerObserverHashTable_onRegisterObserver];
  if (v8)
  {

    v8(a3);
    swift_unknownObjectRelease();

    sub_1000588AC(v8);
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

- (_TtC4Maps37MapsFavoritesManagerObserverHashTable)initWithProtocol:(id)a3 queue:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end