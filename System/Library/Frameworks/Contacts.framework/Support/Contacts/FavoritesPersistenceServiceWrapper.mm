@interface FavoritesPersistenceServiceWrapper
+ (FavoritesPersistenceServiceWrapper)sharedInstance;
- (BOOL)resetAndReturnError:(id *)a3;
- (FavoritesPersistenceServiceWrapper)init;
- (NSArray)entries;
- (id)setWithEntries:(id)a3 shouldSync:(BOOL)a4 error:(id *)a5;
- (void)dealloc;
@end

@implementation FavoritesPersistenceServiceWrapper

+ (FavoritesPersistenceServiceWrapper)sharedInstance
{
  if (qword_10004D4D8 != -1)
  {
    swift_once();
  }

  v3 = static FavoritesPersistenceServiceWrapper.shared;

  return v3;
}

- (FavoritesPersistenceServiceWrapper)init
{
  v3 = OBJC_IVAR___FavoritesPersistenceServiceWrapper_lock;
  sub_100018CD0(&qword_10004D528, &qword_1000341C0);
  v4 = swift_allocObject();
  *(v4 + 4) = 0;
  *(&self->super.isa + v3) = v4;
  *(&self->super.isa + OBJC_IVAR___FavoritesPersistenceServiceWrapper__serviceImpl) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FavoritesPersistenceServiceWrapper();
  v5 = [(FavoritesPersistenceServiceWrapper *)&v7 init];
  sub_10001F3B0();

  return v5;
}

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 sharedInstance];
  v6 = String._bridgeToObjectiveC()();
  [v5 removeUnlockHandlerWithIdentifier:v6];

  v7.receiver = v4;
  v7.super_class = type metadata accessor for FavoritesPersistenceServiceWrapper();
  [(FavoritesPersistenceServiceWrapper *)&v7 dealloc];
}

- (NSArray)entries
{
  v2 = self;
  FavoritesPersistenceServiceWrapper.entries.getter();

  sub_1000204F8();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (id)setWithEntries:(id)a3 shouldSync:(BOOL)a4 error:(id *)a5
{
  sub_1000204F8();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  v10.super.super.isa = FavoritesPersistenceServiceWrapper.set(entries:shouldSync:)(v8, a4).super.super.isa;

  if (v11)
  {
    if (a5)
    {
      v12 = _convertErrorToNSError(_:)();

      v13 = v12;
      isa = 0;
      *a5 = v12;
    }

    else
    {

      isa = 0;
    }
  }

  else
  {
    isa = v10.super.super.isa;
  }

  return isa;
}

- (BOOL)resetAndReturnError:(id *)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR___FavoritesPersistenceServiceWrapper_lock);
  v4 = self;
  os_unfair_lock_lock(v3 + 4);
  sub_100001FE0(&v9);
  os_unfair_lock_unlock(v3 + 4);
  v5 = v9;
  if (v9)
  {
    v6 = *&v9[OBJC_IVAR____TtC9contactsd27FavoritesPersistenceService_localStore];
    sub_100025944();
    v8 = *&v5[OBJC_IVAR____TtC9contactsd27FavoritesPersistenceService_remoteStore];
    sub_100017CCC();
  }

  return 1;
}

@end