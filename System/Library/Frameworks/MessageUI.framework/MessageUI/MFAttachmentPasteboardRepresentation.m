@interface MFAttachmentPasteboardRepresentation
- (BOOL)isValid;
- (MFAttachmentPasteboardRepresentation)initWithAttachment:(id)a3;
- (MFAttachmentPasteboardRepresentation)initWithCoder:(id)a3;
- (MFAttachmentPasteboardRepresentation)initWithMFAttachment:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MFAttachmentPasteboardRepresentation

- (MFAttachmentPasteboardRepresentation)initWithAttachment:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MFAttachmentPasteboardRepresentation;
  v5 = [(MFAttachmentPasteboardRepresentation *)&v11 init];
  if (v5)
  {
    v6 = [v4 fileWrapperForcingDownload:{objc_msgSend(v4, "hasBeenDownloaded")}];
    v7 = [v6 regularFileContents];
    [(MFAttachmentPasteboardRepresentation *)v5 setData:v7];

    v8 = [v6 preferredFilename];
    [(MFAttachmentPasteboardRepresentation *)v5 setName:v8];

    v9 = [v6 mimeType];
    [(MFAttachmentPasteboardRepresentation *)v5 setMimeType:v9];
  }

  return v5;
}

- (MFAttachmentPasteboardRepresentation)initWithMFAttachment:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MFAttachmentPasteboardRepresentation;
  v5 = [(MFAttachmentPasteboardRepresentation *)&v10 init];
  if (v5 && [v4 isDataAvailableLocally])
  {
    v6 = [v4 fileName];
    [(MFAttachmentPasteboardRepresentation *)v5 setName:v6];

    v7 = [v4 mimeType];
    [(MFAttachmentPasteboardRepresentation *)v5 setMimeType:v7];

    v8 = [v4 fetchLocalData];
    [(MFAttachmentPasteboardRepresentation *)v5 setData:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(MFAttachmentPasteboardRepresentation *)self data];
  [v7 encodeObject:v4 forKey:@"data"];

  v5 = [(MFAttachmentPasteboardRepresentation *)self name];
  [v7 encodeObject:v5 forKey:@"name"];

  v6 = [(MFAttachmentPasteboardRepresentation *)self mimeType];
  [v7 encodeObject:v6 forKey:@"mimeType"];
}

- (MFAttachmentPasteboardRepresentation)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MFAttachmentPasteboardRepresentation;
  v5 = [(MFAttachmentPasteboardRepresentation *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    [(MFAttachmentPasteboardRepresentation *)v5 setData:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(MFAttachmentPasteboardRepresentation *)v5 setName:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mimeType"];
    [(MFAttachmentPasteboardRepresentation *)v5 setMimeType:v8];
  }

  return v5;
}

- (BOOL)isValid
{
  v2 = [(MFAttachmentPasteboardRepresentation *)self data];
  v3 = [v2 length] != 0;

  return v3;
}

@end