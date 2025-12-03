@interface MFComposePhotoPickerItem
+ (NSString)contentIdentifierPrefix;
+ (id)assetIdentifierFromContentIdentifier:(id)identifier;
+ (id)bestTypeToLoadFrom:(id)from;
- (BOOL)isVideo;
- (MFComposePhotoPickerItem)initWithAssetIdentifier:(id)identifier assetURL:(id)l assetData:(id)data contentType:(id)type;
- (NSData)assetData;
- (NSString)assetIdentifier;
- (NSString)contentIdentifier;
- (NSURL)assetURL;
- (UTType)contentType;
@end

@implementation MFComposePhotoPickerItem

- (NSString)assetIdentifier
{
  MEMORY[0x1E69E5928](self);
  PhotoPickerItem.assetIdentifier.getter();
  MEMORY[0x1E69E5920](self);
  v4 = sub_1BE94224C();

  return v4;
}

- (NSURL)assetURL
{
  selfCopy = self;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB60D0);
  v11 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3, v4, v5, v6);
  v13 = &v9 - v11;
  MEMORY[0x1E69E5928](self);
  PhotoPickerItem.assetURL.getter(v13);
  MEMORY[0x1E69E5920](selfCopy);
  v14 = sub_1BE941E5C();
  v15 = *(v14 - 8);
  v16 = v14 - 8;
  if ((*(v15 + 48))(v13, 1) == 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = sub_1BE941E3C();
    (*(v15 + 8))(v13, v14);
    v10 = v9;
  }

  v7 = v10;

  return v7;
}

- (NSData)assetData
{
  MEMORY[0x1E69E5928](self);
  v7 = PhotoPickerItem.assetData.getter();
  v8 = v2;
  MEMORY[0x1E69E5920](self);
  if ((v8 & 0xF000000000000000) == 0xF000000000000000)
  {
    v5 = 0;
  }

  else
  {
    v4 = sub_1BE941E6C();
    sub_1BE938BA4(v7, v8);
    v5 = v4;
  }

  return v5;
}

- (UTType)contentType
{
  selfCopy = self;
  v13 = sub_1BE941F5C();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v9 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13, v3, v4, v5);
  v14 = &v8 - v9;
  MEMORY[0x1E69E5928](self);
  PhotoPickerItem.contentType.getter(v14);
  MEMORY[0x1E69E5920](selfCopy);
  v15 = sub_1BE941F0C();
  (*(v11 + 8))(v14, v13);
  v6 = v15;

  return v6;
}

- (NSString)contentIdentifier
{
  MEMORY[0x1E69E5928](self);
  PhotoPickerItem.contentIdentifier.getter();
  MEMORY[0x1E69E5920](self);
  v4 = sub_1BE94224C();

  return v4;
}

- (BOOL)isVideo
{
  MEMORY[0x1E69E5928](self);
  sub_1BE938FA0();
  MEMORY[0x1E69E5920](self);
  return sub_1BE941E8C() & 1;
}

+ (NSString)contentIdentifierPrefix
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  static PhotoPickerItem.contentIdentifierPrefix.getter();
  v3 = sub_1BE94224C();

  return v3;
}

- (MFComposePhotoPickerItem)initWithAssetIdentifier:(id)identifier assetURL:(id)l assetData:(id)data contentType:(id)type
{
  selfCopy = self;
  identifierCopy = identifier;
  lCopy = l;
  dataCopy = data;
  typeCopy = type;
  v31 = 0;
  v32 = (*(*(sub_1BE941F5C() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v6, v7, v8);
  v33 = &v19 - v32;
  v34 = sub_1BE941E5C();
  v35 = *(v34 - 8);
  v36 = v34 - 8;
  v37 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34, v9, v10, v11);
  v38 = &v19 - v37;
  v39 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB60D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x1EEE9AC00](identifierCopy, v12, v13, v14);
  v40 = &v19 - v39;
  MEMORY[0x1E69E5928](v15);
  MEMORY[0x1E69E5928](lCopy);
  MEMORY[0x1E69E5928](dataCopy);
  MEMORY[0x1E69E5928](typeCopy);
  v45 = sub_1BE94225C();
  v46 = v16;
  if (lCopy)
  {
    v29 = lCopy;
    v28 = lCopy;
    sub_1BE941E4C();
    (*(v35 + 32))(v40, v38, v34);
    (*(v35 + 56))(v40, 0, 1, v34);
    MEMORY[0x1E69E5920](v28);
  }

  else
  {
    (*(v35 + 56))(v40, 1, 1, v34);
  }

  if (dataCopy)
  {
    v27 = dataCopy;
    v22 = dataCopy;
    v23 = sub_1BE941E7C();
    v24 = v17;
    MEMORY[0x1E69E5920](v22);
    v25 = v23;
    v26 = v24;
  }

  else
  {
    v25 = 0;
    v26 = 0xF000000000000000;
  }

  v20 = v26;
  v19 = v25;
  sub_1BE941F1C();
  v21 = PhotoPickerItem.init(assetIdentifier:assetURL:assetData:contentType:)(v45, v46, v40, v19, v20, v33);
  MEMORY[0x1E69E5920](typeCopy);
  MEMORY[0x1E69E5920](identifierCopy);
  return v21;
}

+ (id)bestTypeToLoadFrom:(id)from
{
  selfCopy = self;
  fromCopy = from;
  swift_getObjCClassMetadata();
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6500) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](fromCopy, v3, v4, v5);
  v15 = &v9 - v11;
  MEMORY[0x1E69E5928](v6);
  v16 = sub_1BE941F5C();
  v13 = sub_1BE94239C();
  swift_getObjCClassMetadata();
  sub_1BE939E04(v13, v15);

  MEMORY[0x1E69E5920](fromCopy);
  v17 = *(v16 - 8);
  v18 = v16 - 8;
  if ((*(v17 + 48))(v15, 1) == 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = sub_1BE941F0C();
    (*(v17 + 8))(v15, v16);
    v10 = v9;
  }

  v7 = v10;

  return v7;
}

+ (id)assetIdentifierFromContentIdentifier:(id)identifier
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](identifier);
  sub_1BE94225C();
  swift_getObjCClassMetadata();
  sub_1BE93AC78();
  v8 = v3;

  MEMORY[0x1E69E5920](identifier);
  if (v8)
  {
    v5 = sub_1BE94224C();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end