@interface HKAttachmentBuilder
- (HKAttachmentBuilder)initWithAttachmentStore:(id)a3;
- (void)finishWithCompletion:(id)a3;
@end

@implementation HKAttachmentBuilder

- (HKAttachmentBuilder)initWithAttachmentStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKAttachmentBuilder;
  v6 = [(HKAttachmentBuilder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attachmentStore, a3);
  }

  return v7;
}

- (void)finishWithCompletion:(id)a3
{
  contentType = self->_contentType;
  attachmentStore = self->_attachmentStore;
  name = self->_name;
  objectIdentifier = self->_objectIdentifier;
  schemaIdentifier = self->_schemaIdentifier;
  attachmentMetadata = self->_attachmentMetadata;
  referenceMetadata = self->_referenceMetadata;
  v11 = self->_fileURL;
  v12 = contentType;
  v13 = name;
  [(HKAttachmentStore *)attachmentStore addAttachmentWithName:v13 contentType:v12 URL:v11 toObjectWithIdentifier:objectIdentifier schemaIdentifier:schemaIdentifier attachmentMetadata:attachmentMetadata referenceMetadata:referenceMetadata completion:a3];
}

@end