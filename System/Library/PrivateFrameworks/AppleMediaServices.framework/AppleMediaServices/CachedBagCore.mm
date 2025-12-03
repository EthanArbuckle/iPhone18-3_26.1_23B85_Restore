@interface CachedBagCore
- (AMSProcessInfo)processInfo;
- (BOOL)isExpired;
- (NSDate)expirationDate;
- (id)BOOLForKey:(id)key;
- (id)URLForKey:(id)key;
- (id)URLForKey:(id)key account:(id)account;
- (id)arrayForKey:(id)key;
- (id)dictionaryForKey:(id)key;
- (id)doubleForKey:(id)key;
- (id)integerForKey:(id)key;
- (id)stringForKey:(id)key;
@end

@implementation CachedBagCore

- (AMSProcessInfo)processInfo
{
  v2 = sub_192C5BB9C();

  return v2;
}

- (BOOL)isExpired
{
  selfCopy = self;
  v3 = sub_192C5C1CC();

  return v3 & 1;
}

- (NSDate)expirationDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12E10);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v11 - v5;
  selfCopy = self;
  sub_192C5C300(v6);

  v8 = sub_192F95CFC();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_192F95C4C();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  return v9;
}

- (id)stringForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_192C5D394(keyCopy, &unk_1F06F91B8, &unk_192FC8008, 4);

  return v6;
}

- (id)arrayForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_192C5D394(keyCopy, &unk_1F06F9190, &unk_192FC7FF8, 0);

  return v6;
}

- (id)BOOLForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_192C5D394(keyCopy, &unk_1F06F9168, &unk_192FC7FE8, 1);

  return v6;
}

- (id)doubleForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_192C5D394(keyCopy, &unk_1F06F9140, &unk_192FC7FD8, 2);

  return v6;
}

- (id)integerForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_192C5D394(keyCopy, &unk_1F06F9118, &unk_192FC7FC8, 3);

  return v6;
}

- (id)URLForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_192C5D394(keyCopy, &unk_1F06F90A0, &unk_192FC7F90, 5);

  return v6;
}

- (id)dictionaryForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_192C5D394(keyCopy, &unk_1F06F90C8, &unk_192FC7FA0, 6);

  return v6;
}

- (id)URLForKey:(id)key account:(id)account
{
  keyCopy = key;
  accountCopy = account;
  selfCopy = self;
  v9 = sub_192C5D5BC(keyCopy, account);

  return v9;
}

@end