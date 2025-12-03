@interface AMSSendableBag
- (AMSProcessInfo)processInfo;
- (AMSSendableBag)initWithWrappedBag:(id)bag;
- (BOOL)isExpired;
- (NSDate)expirationDate;
- (id)BOOLForKey:(id)key;
- (id)URLForKey:(id)key;
- (id)arrayForKey:(id)key;
- (id)dictionaryForKey:(id)key;
- (id)doubleForKey:(id)key;
- (id)integerForKey:(id)key;
- (id)stringForKey:(id)key;
- (void)createSnapshotWithCompletion:(id)completion;
@end

@implementation AMSSendableBag

- (id)URLForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = SendableBag.url(forKey:)(keyCopy);

  return v6;
}

- (id)stringForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = SendableBag.string(forKey:)(keyCopy);

  return v6;
}

- (id)arrayForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = SendableBag.array(forKey:)(keyCopy);

  return v6;
}

- (id)dictionaryForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = SendableBag.dictionary(forKey:)(keyCopy);

  return v6;
}

- (AMSSendableBag)initWithWrappedBag:(id)bag
{
  swift_getObjectType();
  v4 = swift_unknownObjectRetain();

  return sub_1929082D8(v4, self);
}

- (id)doubleForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = SendableBag.double(forKey:)(keyCopy);

  return v6;
}

- (id)BOOLForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = SendableBag.BOOL(forKey:)(keyCopy);

  return v6;
}

- (BOOL)isExpired
{
  selfCopy = self;
  v3 = SendableBag.isExpired.getter();

  return v3 & 1;
}

- (NSDate)expirationDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12E10);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v11 - v5;
  selfCopy = self;
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

- (void)createSnapshotWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_1928FB3BC(&unk_192FCE118, v5);
}

- (id)integerForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = SendableBag.integer(forKey:)(keyCopy);

  return v6;
}

- (AMSProcessInfo)processInfo
{
  selfCopy = self;
  v3 = SendableBag.processInfo.getter();

  return v3;
}

@end