@interface MFMailComposeAttachmentWrapper
+ (id)wrapperWithData:(id)a3 mimeType:(id)a4 fileName:(id)a5;
+ (id)wrapperWithFileURL:(id)a3 mimeType:(id)a4;
+ (id)wrapperWithItemProvider:(id)a3 mimeType:(id)a4 fileName:(id)a5;
- (MFMailComposeAttachmentWrapper)initWithCoder:(id)a3;
- (MFMailComposeAttachmentWrapper)initWithData:(id)a3 mimeType:(id)a4 fileName:(id)a5;
- (MFMailComposeAttachmentWrapper)initWithFileURL:(id)a3 mimeType:(id)a4;
- (MFMailComposeAttachmentWrapper)initWithItemProvider:(id)a3 mimeType:(id)a4 fileName:(id)a5;
- (id)description;
- (unint64_t)fileSize;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MFMailComposeAttachmentWrapper

+ (id)wrapperWithFileURL:(id)a3 mimeType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[a1 alloc] initWithFileURL:v6 mimeType:v7];

  return v8;
}

+ (id)wrapperWithData:(id)a3 mimeType:(id)a4 fileName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[a1 alloc] initWithData:v8 mimeType:v9 fileName:v10];

  return v11;
}

+ (id)wrapperWithItemProvider:(id)a3 mimeType:(id)a4 fileName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[a1 alloc] initWithItemProvider:v8 mimeType:v9 fileName:v10];

  return v11;
}

- (MFMailComposeAttachmentWrapper)initWithFileURL:(id)a3 mimeType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = MFMailComposeAttachmentWrapper;
  v8 = [(MFMailComposeAttachmentWrapper *)&v20 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E699B970]) initWithFileURL:v6 readOnly:1];
    fileURLWrapper = v8->_fileURLWrapper;
    v8->_fileURLWrapper = v9;

    v11 = [v7 copy];
    mimeType = v8->_mimeType;
    v8->_mimeType = v11;

    v13 = [v6 lastPathComponent];
    v14 = [v13 copy];
    fileName = v8->_fileName;
    v8->_fileName = v14;

    v16 = [MEMORY[0x1E696AFB0] UUID];
    v17 = [v16 UUIDString];
    identifier = v8->_identifier;
    v8->_identifier = v17;
  }

  return v8;
}

- (MFMailComposeAttachmentWrapper)initWithData:(id)a3 mimeType:(id)a4 fileName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v22.receiver = self;
  v22.super_class = MFMailComposeAttachmentWrapper;
  v12 = [(MFMailComposeAttachmentWrapper *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_data, a3);
    v14 = [v10 copy];
    mimeType = v13->_mimeType;
    v13->_mimeType = v14;

    v16 = [v11 copy];
    fileName = v13->_fileName;
    v13->_fileName = v16;

    v18 = [MEMORY[0x1E696AFB0] UUID];
    v19 = [v18 UUIDString];
    identifier = v13->_identifier;
    v13->_identifier = v19;
  }

  return v13;
}

- (MFMailComposeAttachmentWrapper)initWithItemProvider:(id)a3 mimeType:(id)a4 fileName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v22.receiver = self;
  v22.super_class = MFMailComposeAttachmentWrapper;
  v12 = [(MFMailComposeAttachmentWrapper *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_itemProvider, a3);
    v14 = [v10 copy];
    mimeType = v13->_mimeType;
    v13->_mimeType = v14;

    v16 = [v11 copy];
    fileName = v13->_fileName;
    v13->_fileName = v16;

    v18 = [MEMORY[0x1E696AFB0] UUID];
    v19 = [v18 UUIDString];
    identifier = v13->_identifier;
    v13->_identifier = v19;
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
    v5 = [v4 startAccessingSecurityScopedResource];
    v17 = 0;
    v6 = *MEMORY[0x1E695DB50];
    v16 = 0;
    [v4 getResourceValue:&v17 forKey:v6 error:&v16];
    v7 = v17;
    v8 = v16;
    v9 = [v7 integerValue];
    if (v9)
    {
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v12 = [MEMORY[0x1E696AC08] defaultManager];
      v15 = v8;
      v13 = [v12 mf_sizeForDirectoryAtURL:v4 error:&v15];
      v14 = v15;

      v9 = v13 & ~(v13 >> 63);
      v8 = v14;
      if (!v5)
      {
LABEL_10:

        return v9;
      }
    }

    [v4 stopAccessingSecurityScopedResource];
    goto LABEL_10;
  }

  data = self->_data;

  return [(NSData *)data length];
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(MFMailComposeAttachmentWrapper *)self data];
  [v9 encodeObject:v4 forKey:@"EFPropertyKey_data"];

  v5 = [(MFMailComposeAttachmentWrapper *)self mimeType];
  [v9 encodeObject:v5 forKey:@"EFPropertyKey_mimeType"];

  v6 = [(MFMailComposeAttachmentWrapper *)self fileName];
  [v9 encodeObject:v6 forKey:@"EFPropertyKey_fileName"];

  v7 = [(MFMailComposeAttachmentWrapper *)self identifier];
  [v9 encodeObject:v7 forKey:@"EFPropertyKey_identifier"];

  v8 = [(MFMailComposeAttachmentWrapper *)self fileURLWrapper];
  [v9 encodeObject:v8 forKey:@"EFPropertyKey_fileURLWrapper"];
}

- (MFMailComposeAttachmentWrapper)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = MFMailComposeAttachmentWrapper;
  v5 = [(MFMailComposeAttachmentWrapper *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_data"];
    data = v5->_data;
    v5->_data = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_mimeType"];
    mimeType = v5->_mimeType;
    v5->_mimeType = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_fileName"];
    fileName = v5->_fileName;
    v5->_fileName = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_fileURLWrapper"];
    fileURLWrapper = v5->_fileURLWrapper;
    v5->_fileURLWrapper = v14;
  }

  return v5;
}

@end