@interface AMSBagUnderlyingDataPersistence
+ (id)persistenceWithDefaultDirectory;
- (AMSBagUnderlyingDataPersistence)initWithDirectoryURL:(id)l;
- (BOOL)persist:(id)persist error:(id *)error;
- (BOOL)removeUnderlyingDataFor:(id)for error:(id *)error;
- (id)underlyingDataFor:(id)for error:(id *)error;
@end

@implementation AMSBagUnderlyingDataPersistence

+ (id)persistenceWithDefaultDirectory
{
  swift_getObjCClassMetadata();
  v2 = static BagUnderlyingDataPersistence.persistenceWithDefaultDirectory()();

  return v2;
}

- (id)underlyingDataFor:(id)for error:(id *)error
{
  sub_192F967CC();
  selfCopy = self;
  v6 = BagUnderlyingDataPersistence.underlyingData(for:)();

  return v6;
}

- (BOOL)persist:(id)persist error:(id *)error
{
  persistCopy = persist;
  selfCopy = self;
  BagUnderlyingDataPersistence.persist(_:)();

  return 1;
}

- (AMSBagUnderlyingDataPersistence)initWithDirectoryURL:(id)l
{
  v3 = sub_192F95A8C();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192F959AC();
  return BagUnderlyingDataPersistence.init(directoryURL:)(v6);
}

- (BOOL)removeUnderlyingDataFor:(id)for error:(id *)error
{
  v6 = sub_192F967CC();
  v8 = v7;
  selfCopy = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  BagUnderlyingDataPersistence.removeUnderlyingData(for:)(v10);

  if (v11)
  {
    if (error)
    {
      v12 = sub_192F958CC();

      v13 = v12;
      *error = v12;
    }

    else
    {
    }
  }

  return v11 == 0;
}

@end