@interface LPARAsset
- (BOOL)isEqual:(id)equal;
- (LPARAsset)initWithCoder:(id)coder;
- (LPARAsset)initWithData:(id)data MIMEType:(id)type properties:(id)properties;
- (id)_createTemporaryFileAndWriteData;
- (id)_ensureTemporaryAssetURL;
- (id)_initWithARAsset:(id)asset;
- (id)initByReferencingFileURL:(id)l MIMEType:(id)type properties:(id)properties;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LPARAsset

- (id)initByReferencingFileURL:(id)l MIMEType:(id)type properties:(id)properties
{
  v9.receiver = self;
  v9.super_class = LPARAsset;
  v5 = [(LPVisualMedia *)&v9 _initByReferencingFileURL:l MIMEType:type properties:properties];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  return v6;
}

- (LPARAsset)initWithData:(id)data MIMEType:(id)type properties:(id)properties
{
  v9.receiver = self;
  v9.super_class = LPARAsset;
  v5 = [(LPVisualMedia *)&v9 _initWithData:data MIMEType:type properties:properties];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  return v6;
}

- (id)_initWithARAsset:(id)asset
{
  assetCopy = asset;
  data = [assetCopy data];
  fileURL = [assetCopy fileURL];
  mIMEType = [assetCopy MIMEType];
  properties = [assetCopy properties];
  v12.receiver = self;
  v12.super_class = LPARAsset;
  v9 = [(LPVisualMedia *)&v12 _initWithData:data fileURL:fileURL MIMEType:mIMEType properties:properties];

  if (v9)
  {
    v10 = v9;
  }

  return v9;
}

- (id)_createTemporaryFileAndWriteData
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = NSTemporaryDirectory();
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v7 = [v4 stringByAppendingPathComponent:uUIDString];
  v8 = [v3 fileURLWithPath:v7];

  v9 = [v8 URLByAppendingPathExtension:@"usdz"];

  data = [(LPVisualMedia *)self data];
  [data writeToURL:v9 atomically:1];

  objc_storeStrong(&self->_temporaryFileURL, v9);

  return v9;
}

- (id)_ensureTemporaryAssetURL
{
  if ([(NSURL *)self->_temporaryFileURL isFileURL])
  {
    _createTemporaryFileAndWriteData = self->_temporaryFileURL;
  }

  else
  {
    _createTemporaryFileAndWriteData = [(LPARAsset *)self _createTemporaryFileAndWriteData];
  }

  return _createTemporaryFileAndWriteData;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = LPARAsset;
  [(LPVisualMedia *)&v3 encodeWithCoder:coder];
}

- (LPARAsset)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(LPARAssetProperties);
  v6 = [coderCopy _lp_strictlyDecodeNSStringForKey:@"accessibilityText"];
  [(LPVisualMediaProperties *)v5 setAccessibilityText:v6];

  v11.receiver = self;
  v11.super_class = LPARAsset;
  v7 = [(LPVisualMedia *)&v11 initWithCoder:coderCopy properties:v5];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = LPARAsset;
  if ([(LPVisualMedia *)&v7 isEqual:equalCopy])
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

@end