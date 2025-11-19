@interface AMSBagUnderlyingDataPersistence
+ (id)persistenceWithDefaultDirectory;
- (AMSBagUnderlyingDataPersistence)initWithDirectoryURL:(id)a3;
- (BOOL)persist:(id)a3 error:(id *)a4;
- (BOOL)removeUnderlyingDataFor:(id)a3 error:(id *)a4;
- (id)underlyingDataFor:(id)a3 error:(id *)a4;
@end

@implementation AMSBagUnderlyingDataPersistence

+ (id)persistenceWithDefaultDirectory
{
  swift_getObjCClassMetadata();
  v2 = static BagUnderlyingDataPersistence.persistenceWithDefaultDirectory()();

  return v2;
}

- (id)underlyingDataFor:(id)a3 error:(id *)a4
{
  sub_192F967CC();
  v5 = self;
  v6 = BagUnderlyingDataPersistence.underlyingData(for:)();

  return v6;
}

- (BOOL)persist:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  BagUnderlyingDataPersistence.persist(_:)();

  return 1;
}

- (AMSBagUnderlyingDataPersistence)initWithDirectoryURL:(id)a3
{
  v3 = sub_192F95A8C();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192F959AC();
  return BagUnderlyingDataPersistence.init(directoryURL:)(v6);
}

- (BOOL)removeUnderlyingDataFor:(id)a3 error:(id *)a4
{
  v6 = sub_192F967CC();
  v8 = v7;
  v9 = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  BagUnderlyingDataPersistence.removeUnderlyingData(for:)(v10);

  if (v11)
  {
    if (a4)
    {
      v12 = sub_192F958CC();

      v13 = v12;
      *a4 = v12;
    }

    else
    {
    }
  }

  return v11 == 0;
}

@end