@interface PHImportAssetNameDescription
- (PHImportAssetNameDescription)initWithFileName:(id)name uuid:(id)uuid;
- (id)redactedDescription;
@end

@implementation PHImportAssetNameDescription

- (id)redactedDescription
{
  v2 = MEMORY[0x1E696AEC0];
  uuid = self->_uuid;
  pathExtension = [(NSString *)self->_filename pathExtension];
  v5 = [v2 stringWithFormat:@"%@.%@", uuid, pathExtension];

  return v5;
}

- (PHImportAssetNameDescription)initWithFileName:(id)name uuid:(id)uuid
{
  nameCopy = name;
  uuidCopy = uuid;
  v12.receiver = self;
  v12.super_class = PHImportAssetNameDescription;
  v9 = [(PHImportAssetNameDescription *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_filename, name);
    objc_storeStrong(&v10->_uuid, uuid);
  }

  return v10;
}

@end