@interface __FKOrderMessagesPreviewMetadata
+ (id)createWalletDeepLinkForExistingOrderAt:(id)at;
- (__FKOrderMessagesPreviewMetadata)init;
- (__FKOrderMessagesPreviewMetadata)initWithOrderData:(id)data error:(id *)error;
- (__FKOrderMessagesPreviewMetadata)initWithOrderData:(id)data workingDirectory:(id)directory error:(id *)error;
@end

@implementation __FKOrderMessagesPreviewMetadata

- (__FKOrderMessagesPreviewMetadata)initWithOrderData:(id)data error:(id *)error
{
  dataCopy = data;
  v5 = sub_1B77FF5B8();
  v7 = v6;

  v8 = sub_1B738EC58();
  sub_1B720A388(v5, v7);
  return v8;
}

- (__FKOrderMessagesPreviewMetadata)initWithOrderData:(id)data workingDirectory:(id)directory error:(id *)error
{
  v7 = sub_1B77FF4F8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  dataCopy = data;
  directoryCopy = directory;
  v12 = sub_1B77FF5B8();
  v14 = v13;

  sub_1B77FF478();
  return OrderMessagesPreviewMetadata.init(orderData:workingDirectory:)(v12, v14, v9);
}

+ (id)createWalletDeepLinkForExistingOrderAt:(id)at
{
  v3 = sub_1B77FF4F8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  sub_1B77FF478();
  if (qword_1EDAFB7C0 != -1)
  {
    swift_once();
  }

  sub_1B738E2C4(v6, qword_1EDAFB7C8, &type metadata for DeviceInfo, &protocol witness table for DeviceInfo, v9);
  v10 = *(v4 + 8);
  v10(v6, v3);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    v11 = 0;
  }

  else
  {
    v12 = sub_1B77FF3F8();
    v10(v9, v3);
    v11 = v12;
  }

  return v11;
}

- (__FKOrderMessagesPreviewMetadata)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end