@interface MFAttachmentMarkup
+ (id)attachmentMarkupWithProperties:(id)properties contentID:(id)d mimeType:(id)type filename:(id)filename contextID:(id)iD;
@end

@implementation MFAttachmentMarkup

+ (id)attachmentMarkupWithProperties:(id)properties contentID:(id)d mimeType:(id)type filename:(id)filename contextID:(id)iD
{
  propertiesCopy = properties;
  dCopy = d;
  typeCopy = type;
  filenameCopy = filename;
  iDCopy = iD;
  v16 = objc_alloc_init(MFAttachmentMarkup);
  [(MFAttachmentMarkup *)v16 setAttachmentData:propertiesCopy];
  [(MFAttachmentMarkup *)v16 setContentID:dCopy];
  [(MFAttachmentMarkup *)v16 setMimeType:typeCopy];
  [(MFAttachmentMarkup *)v16 setFilename:filenameCopy];
  [(MFAttachmentMarkup *)v16 setContextID:iDCopy];

  return v16;
}

@end