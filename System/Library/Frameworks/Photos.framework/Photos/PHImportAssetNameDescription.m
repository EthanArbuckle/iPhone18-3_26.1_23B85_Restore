@interface PHImportAssetNameDescription
- (PHImportAssetNameDescription)initWithFileName:(id)a3 uuid:(id)a4;
- (id)redactedDescription;
@end

@implementation PHImportAssetNameDescription

- (id)redactedDescription
{
  v2 = MEMORY[0x1E696AEC0];
  uuid = self->_uuid;
  v4 = [(NSString *)self->_filename pathExtension];
  v5 = [v2 stringWithFormat:@"%@.%@", uuid, v4];

  return v5;
}

- (PHImportAssetNameDescription)initWithFileName:(id)a3 uuid:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PHImportAssetNameDescription;
  v9 = [(PHImportAssetNameDescription *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_filename, a3);
    objc_storeStrong(&v10->_uuid, a4);
  }

  return v10;
}

@end