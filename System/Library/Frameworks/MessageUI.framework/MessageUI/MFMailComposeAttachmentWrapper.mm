@interface MFMailComposeAttachmentWrapper
+ (id)wrapperWithData:(id)data mimeType:(id)type fileName:(id)name;
+ (id)wrapperWithFileURL:(id)l mimeType:(id)type;
+ (id)wrapperWithItemProvider:(id)provider mimeType:(id)type fileName:(id)name;
- (MFMailComposeAttachmentWrapper)initWithCoder:(id)coder;
- (MFMailComposeAttachmentWrapper)initWithData:(id)data mimeType:(id)type fileName:(id)name;
- (MFMailComposeAttachmentWrapper)initWithFileURL:(id)l mimeType:(id)type;
- (MFMailComposeAttachmentWrapper)initWithItemProvider:(id)provider mimeType:(id)type fileName:(id)name;
- (id)description;
- (unint64_t)fileSize;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MFMailComposeAttachmentWrapper

+ (id)wrapperWithFileURL:(id)l mimeType:(id)type
{
  lCopy = l;
  typeCopy = type;
  v8 = [[self alloc] initWithFileURL:lCopy mimeType:typeCopy];

  return v8;
}

+ (id)wrapperWithData:(id)data mimeType:(id)type fileName:(id)name
{
  dataCopy = data;
  typeCopy = type;
  nameCopy = name;
  v11 = [[self alloc] initWithData:dataCopy mimeType:typeCopy fileName:nameCopy];

  return v11;
}

+ (id)wrapperWithItemProvider:(id)provider mimeType:(id)type fileName:(id)name
{
  providerCopy = provider;
  typeCopy = type;
  nameCopy = name;
  v11 = [[self alloc] initWithItemProvider:providerCopy mimeType:typeCopy fileName:nameCopy];

  return v11;
}

- (MFMailComposeAttachmentWrapper)initWithFileURL:(id)l mimeType:(id)type
{
  lCopy = l;
  typeCopy = type;
  v20.receiver = self;
  v20.super_class = MFMailComposeAttachmentWrapper;
  v8 = [(MFMailComposeAttachmentWrapper *)&v20 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E699B970]) initWithFileURL:lCopy readOnly:1];
    fileURLWrapper = v8->_fileURLWrapper;
    v8->_fileURLWrapper = v9;

    v11 = [typeCopy copy];
    mimeType = v8->_mimeType;
    v8->_mimeType = v11;

    lastPathComponent = [lCopy lastPathComponent];
    v14 = [lastPathComponent copy];
    fileName = v8->_fileName;
    v8->_fileName = v14;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v8->_identifier;
    v8->_identifier = uUIDString;
  }

  return v8;
}

- (MFMailComposeAttachmentWrapper)initWithData:(id)data mimeType:(id)type fileName:(id)name
{
  dataCopy = data;
  typeCopy = type;
  nameCopy = name;
  v22.receiver = self;
  v22.super_class = MFMailComposeAttachmentWrapper;
  v12 = [(MFMailComposeAttachmentWrapper *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_data, data);
    v14 = [typeCopy copy];
    mimeType = v13->_mimeType;
    v13->_mimeType = v14;

    v16 = [nameCopy copy];
    fileName = v13->_fileName;
    v13->_fileName = v16;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v13->_identifier;
    v13->_identifier = uUIDString;
  }

  return v13;
}

- (MFMailComposeAttachmentWrapper)initWithItemProvider:(id)provider mimeType:(id)type fileName:(id)name
{
  providerCopy = provider;
  typeCopy = type;
  nameCopy = name;
  v22.receiver = self;
  v22.super_class = MFMailComposeAttachmentWrapper;
  v12 = [(MFMailComposeAttachmentWrapper *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_itemProvider, provider);
    v14 = [typeCopy copy];
    mimeType = v13->_mimeType;
    v13->_mimeType = v14;

    v16 = [nameCopy copy];
    fileName = v13->_fileName;
    v13->_fileName = v16;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v13->_identifier;
    v13->_identifier = uUIDString;
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NSData *)self->_data length];
  mimeType = self->_mimeType;
  fileName = self->_fileName;
  v7 = [(EFSandboxedURLWrapper *)self->_fileURLWrapper url];
  v8 = [v3 stringWithFormat:@"Data Len:%lu\nMIME Type:%@\nFile Name:%@\nFile URL:%@\nID:%@", v4, mimeType, fileName, v7, self->_identifier];

  return v8;
}

- (unint64_t)fileSize
{
  fileURLWrapper = self->_fileURLWrapper;
  if (fileURLWrapper)
  {
    v4 = [(EFSandboxedURLWrapper *)fileURLWrapper url];
    startAccessingSecurityScopedResource = [v4 startAccessingSecurityScopedResource];
    v17 = 0;
    v6 = *MEMORY[0x1E695DB50];
    v16 = 0;
    [v4 getResourceValue:&v17 forKey:v6 error:&v16];
    v7 = v17;
    v8 = v16;
    integerValue = [v7 integerValue];
    if (integerValue)
    {
      if (!startAccessingSecurityScopedResource)
      {
        goto LABEL_10;
      }
    }

    else
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v15 = v8;
      v13 = [defaultManager mf_sizeForDirectoryAtURL:v4 error:&v15];
      v14 = v15;

      integerValue = v13 & ~(v13 >> 63);
      v8 = v14;
      if (!startAccessingSecurityScopedResource)
      {
LABEL_10:

        return integerValue;
      }
    }

    [v4 stopAccessingSecurityScopedResource];
    goto LABEL_10;
  }

  data = self->_data;

  return [(NSData *)data length];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(MFMailComposeAttachmentWrapper *)self data];
  [coderCopy encodeObject:data forKey:@"EFPropertyKey_data"];

  mimeType = [(MFMailComposeAttachmentWrapper *)self mimeType];
  [coderCopy encodeObject:mimeType forKey:@"EFPropertyKey_mimeType"];

  fileName = [(MFMailComposeAttachmentWrapper *)self fileName];
  [coderCopy encodeObject:fileName forKey:@"EFPropertyKey_fileName"];

  identifier = [(MFMailComposeAttachmentWrapper *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"EFPropertyKey_identifier"];

  fileURLWrapper = [(MFMailComposeAttachmentWrapper *)self fileURLWrapper];
  [coderCopy encodeObject:fileURLWrapper forKey:@"EFPropertyKey_fileURLWrapper"];
}

- (MFMailComposeAttachmentWrapper)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = MFMailComposeAttachmentWrapper;
  v5 = [(MFMailComposeAttachmentWrapper *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_data"];
    data = v5->_data;
    v5->_data = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_mimeType"];
    mimeType = v5->_mimeType;
    v5->_mimeType = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_fileName"];
    fileName = v5->_fileName;
    v5->_fileName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_fileURLWrapper"];
    fileURLWrapper = v5->_fileURLWrapper;
    v5->_fileURLWrapper = v14;
  }

  return v5;
}

@end