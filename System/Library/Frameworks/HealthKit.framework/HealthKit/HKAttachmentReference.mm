@interface HKAttachmentReference
- (HKAttachmentReference)initWithCoder:(id)coder;
- (id)_initWithIdentifier:(id)identifier objectIdentifier:(id)objectIdentifier attachment:(id)attachment creationDate:(id)date metadata:(id)metadata;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKAttachmentReference

- (id)_initWithIdentifier:(id)identifier objectIdentifier:(id)objectIdentifier attachment:(id)attachment creationDate:(id)date metadata:(id)metadata
{
  identifierCopy = identifier;
  objectIdentifierCopy = objectIdentifier;
  attachmentCopy = attachment;
  dateCopy = date;
  metadataCopy = metadata;
  v21.receiver = self;
  v21.super_class = HKAttachmentReference;
  v17 = [(HKAttachmentReference *)&v21 init];
  p_isa = &v17->super.isa;
  if (v17)
  {
    objc_storeStrong(&v17->_identifier, identifier);
    objc_storeStrong(p_isa + 2, objectIdentifier);
    objc_storeStrong(p_isa + 3, attachment);
    objc_storeStrong(p_isa + 4, date);
    objc_storeStrong(p_isa + 5, metadata);
  }

  return p_isa;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HKAttachmentReference allocWithZone:zone];
  identifier = self->_identifier;
  objectIdentifier = self->_objectIdentifier;
  attachment = self->_attachment;
  creationDate = self->_creationDate;
  metadata = self->_metadata;

  return [(HKAttachmentReference *)v4 _initWithIdentifier:identifier objectIdentifier:objectIdentifier attachment:attachment creationDate:creationDate metadata:metadata];
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"Identifier"];
  [coderCopy encodeObject:self->_objectIdentifier forKey:@"ObjectIdentifier"];
  [coderCopy encodeObject:self->_attachment forKey:@"Attachment"];
  [coderCopy encodeObject:self->_creationDate forKey:@"CreationDate"];
  [coderCopy encodeObject:self->_metadata forKey:@"Metadata"];
}

- (HKAttachmentReference)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ObjectIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Attachment"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CreationDate"];
  hk_secureCodingClasses = [MEMORY[0x1E695DF20] hk_secureCodingClasses];
  v10 = [coderCopy decodeObjectOfClasses:hk_secureCodingClasses forKey:@"Metadata"];

  v11 = [(HKAttachmentReference *)self _initWithIdentifier:v5 objectIdentifier:v6 attachment:v7 creationDate:v8 metadata:v10];
  return v11;
}

@end