@interface AMSSendableBag
- (AMSProcessInfo)processInfo;
- (AMSSendableBag)initWithWrappedBag:(id)a3;
- (BOOL)isExpired;
- (NSDate)expirationDate;
- (id)BOOLForKey:(id)a3;
- (id)URLForKey:(id)a3;
- (id)arrayForKey:(id)a3;
- (id)dictionaryForKey:(id)a3;
- (id)doubleForKey:(id)a3;
- (id)integerForKey:(id)a3;
- (id)stringForKey:(id)a3;
- (void)createSnapshotWithCompletion:(id)a3;
@end

@implementation AMSSendableBag

- (id)URLForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = SendableBag.url(forKey:)(v4);

  return v6;
}

- (id)stringForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = SendableBag.string(forKey:)(v4);

  return v6;
}

- (id)arrayForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = SendableBag.array(forKey:)(v4);

  return v6;
}

- (id)dictionaryForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = SendableBag.dictionary(forKey:)(v4);

  return v6;
}

- (AMSSendableBag)initWithWrappedBag:(id)a3
{
  swift_getObjectType();
  v4 = swift_unknownObjectRetain();

  return sub_1929082D8(v4, self);
}

- (id)doubleForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = SendableBag.double(forKey:)(v4);

  return v6;
}

- (id)BOOLForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = SendableBag.BOOL(forKey:)(v4);

  return v6;
}

- (BOOL)isExpired
{
  v2 = self;
  v3 = SendableBag.isExpired.getter();

  return v3 & 1;
}

- (NSDate)expirationDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12E10);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = self;
  SendableBag.expirationDate.getter(v6);

  v8 = sub_192F95CFC();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_192F95C4C();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  return v9;
}

- (void)createSnapshotWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_1928FB3BC(&unk_192FCE118, v5);
}

- (id)integerForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = SendableBag.integer(forKey:)(v4);

  return v6;
}

- (AMSProcessInfo)processInfo
{
  v2 = self;
  v3 = SendableBag.processInfo.getter();

  return v3;
}

@end