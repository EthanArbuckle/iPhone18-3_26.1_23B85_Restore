@interface MFAttachmentPasteboardRepresentation
- (BOOL)isValid;
- (MFAttachmentPasteboardRepresentation)initWithAttachment:(id)attachment;
- (MFAttachmentPasteboardRepresentation)initWithCoder:(id)coder;
- (MFAttachmentPasteboardRepresentation)initWithMFAttachment:(id)attachment;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MFAttachmentPasteboardRepresentation

- (MFAttachmentPasteboardRepresentation)initWithAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v11.receiver = self;
  v11.super_class = MFAttachmentPasteboardRepresentation;
  v5 = [(MFAttachmentPasteboardRepresentation *)&v11 init];
  if (v5)
  {
    v6 = [attachmentCopy fileWrapperForcingDownload:{objc_msgSend(attachmentCopy, "hasBeenDownloaded")}];
    regularFileContents = [v6 regularFileContents];
    [(MFAttachmentPasteboardRepresentation *)v5 setData:regularFileContents];

    preferredFilename = [v6 preferredFilename];
    [(MFAttachmentPasteboardRepresentation *)v5 setName:preferredFilename];

    mimeType = [v6 mimeType];
    [(MFAttachmentPasteboardRepresentation *)v5 setMimeType:mimeType];
  }

  return v5;
}

- (MFAttachmentPasteboardRepresentation)initWithMFAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v10.receiver = self;
  v10.super_class = MFAttachmentPasteboardRepresentation;
  v5 = [(MFAttachmentPasteboardRepresentation *)&v10 init];
  if (v5 && [attachmentCopy isDataAvailableLocally])
  {
    fileName = [attachmentCopy fileName];
    [(MFAttachmentPasteboardRepresentation *)v5 setName:fileName];

    mimeType = [attachmentCopy mimeType];
    [(MFAttachmentPasteboardRepresentation *)v5 setMimeType:mimeType];

    fetchLocalData = [attachmentCopy fetchLocalData];
    [(MFAttachmentPasteboardRepresentation *)v5 setData:fetchLocalData];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(MFAttachmentPasteboardRepresentation *)self data];
  [coderCopy encodeObject:data forKey:@"data"];

  name = [(MFAttachmentPasteboardRepresentation *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  mimeType = [(MFAttachmentPasteboardRepresentation *)self mimeType];
  [coderCopy encodeObject:mimeType forKey:@"mimeType"];
}

- (MFAttachmentPasteboardRepresentation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = MFAttachmentPasteboardRepresentation;
  v5 = [(MFAttachmentPasteboardRepresentation *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    [(MFAttachmentPasteboardRepresentation *)v5 setData:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(MFAttachmentPasteboardRepresentation *)v5 setName:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mimeType"];
    [(MFAttachmentPasteboardRepresentation *)v5 setMimeType:v8];
  }

  return v5;
}

- (BOOL)isValid
{
  data = [(MFAttachmentPasteboardRepresentation *)self data];
  v3 = [data length] != 0;

  return v3;
}

@end