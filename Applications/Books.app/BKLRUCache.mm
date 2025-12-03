@interface BKLRUCache
+ (id)unarchiveFrom:(id)from;
- (BOOL)isEmpty;
- (_TtC5Books10BKLRUCache)init;
- (id)objectForKey:(id)key;
- (int64_t)count;
- (void)encodeWithCoder:(id)coder;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation BKLRUCache

+ (id)unarchiveFrom:(id)from
{
  fromCopy = from;
  v4 = sub_1007969D4();
  v6 = v5;

  v7 = _s5Books10BKLRUCacheC9unarchive4fromACSg10Foundation4DataV_tFZ_0();
  sub_10000ADCC(v4, v6);

  return v7;
}

- (void)setObject:(id)object forKey:(id)key
{
  if (key)
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
  selfCopy = self;
  BKLRUCache.setObject(_:forKey:)(object, v6, v8);
  swift_unknownObjectRelease();
}

- (id)objectForKey:(id)key
{
  if (key)
  {
    v4 = sub_1007A2254();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8 = BKLRUCache.object(forKey:)(v4, v6);

  return v8;
}

- (void)removeObjectForKey:(id)key
{
  if (key)
  {
    v4 = sub_1007A2254();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8.value._countAndFlagsBits = v4;
  v8.value._object = v6;
  BKLRUCache.removeObject(forKey:)(v8);
}

- (void)removeAllObjects
{
  selfCopy = self;
  BKLRUCache.removeAllObjects()();
}

- (int64_t)count
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  selfCopy = self;
  sub_1007A2D84();

  return v5;
}

- (BOOL)isEmpty
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  selfCopy = self;
  sub_1007A2D84();

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  BKLRUCache.encode(with:)(coderCopy);
}

- (_TtC5Books10BKLRUCache)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end