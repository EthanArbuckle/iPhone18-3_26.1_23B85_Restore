@interface BKLRUCache
+ (id)unarchiveFrom:(id)a3;
- (BOOL)isEmpty;
- (_TtC5Books10BKLRUCache)init;
- (id)objectForKey:(id)a3;
- (int64_t)count;
- (void)encodeWithCoder:(id)a3;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation BKLRUCache

+ (id)unarchiveFrom:(id)a3
{
  v3 = a3;
  v4 = sub_1007969D4();
  v6 = v5;

  v7 = _s5Books10BKLRUCacheC9unarchive4fromACSg10Foundation4DataV_tFZ_0();
  sub_10000ADCC(v4, v6);

  return v7;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  if (a4)
  {
    v6 = sub_1007A2254();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  swift_unknownObjectRetain();
  v9 = self;
  BKLRUCache.setObject(_:forKey:)(a3, v6, v8);
  swift_unknownObjectRelease();
}

- (id)objectForKey:(id)a3
{
  if (a3)
  {
    v4 = sub_1007A2254();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  v8 = BKLRUCache.object(forKey:)(v4, v6);

  return v8;
}

- (void)removeObjectForKey:(id)a3
{
  if (a3)
  {
    v4 = sub_1007A2254();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  v8.value._countAndFlagsBits = v4;
  v8.value._object = v6;
  BKLRUCache.removeObject(forKey:)(v8);
}

- (void)removeAllObjects
{
  v2 = self;
  BKLRUCache.removeAllObjects()();
}

- (int64_t)count
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = self;
  sub_1007A2D84();

  return v5;
}

- (BOOL)isEmpty
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = self;
  sub_1007A2D84();

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  BKLRUCache.encode(with:)(v4);
}

- (_TtC5Books10BKLRUCache)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end