@interface MFAttachmentMarkup
+ (id)attachmentMarkupWithProperties:(id)a3 contentID:(id)a4 mimeType:(id)a5 filename:(id)a6 contextID:(id)a7;
@end

@implementation MFAttachmentMarkup

+ (id)attachmentMarkupWithProperties:(id)a3 contentID:(id)a4 mimeType:(id)a5 filename:(id)a6 contextID:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = objc_alloc_init(MFAttachmentMarkup);
  [(MFAttachmentMarkup *)v16 setAttachmentData:v11];
  [(MFAttachmentMarkup *)v16 setContentID:v12];
  [(MFAttachmentMarkup *)v16 setMimeType:v13];
  [(MFAttachmentMarkup *)v16 setFilename:v14];
  [(MFAttachmentMarkup *)v16 setContextID:v15];

  return v16;
}

@end