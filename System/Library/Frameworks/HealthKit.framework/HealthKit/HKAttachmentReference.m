@interface HKAttachmentReference
- (HKAttachmentReference)initWithCoder:(id)a3;
- (id)_initWithIdentifier:(id)a3 objectIdentifier:(id)a4 attachment:(id)a5 creationDate:(id)a6 metadata:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKAttachmentReference

- (id)_initWithIdentifier:(id)a3 objectIdentifier:(id)a4 attachment:(id)a5 creationDate:(id)a6 metadata:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = HKAttachmentReference;
  v17 = [(HKAttachmentReference *)&v21 init];
  p_isa = &v17->super.isa;
  if (v17)
  {
    objc_storeStrong(&v17->_identifier, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
    objc_storeStrong(p_isa + 4, a6);
    objc_storeStrong(p_isa + 5, a7);
  }

  return p_isa;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HKAttachmentReference allocWithZone:a3];
  identifier = self->_identifier;
  objectIdentifier = self->_objectIdentifier;
  attachment = self->_attachment;
  creationDate = self->_creationDate;
  metadata = self->_metadata;

  return [(HKAttachmentReference *)v4 _initWithIdentifier:identifier objectIdentifier:objectIdentifier attachment:attachment creationDate:creationDate metadata:metadata];
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"Identifier"];
  [v5 encodeObject:self->_objectIdentifier forKey:@"ObjectIdentifier"];
  [v5 encodeObject:self->_attachment forKey:@"Attachment"];
  [v5 encodeObject:self->_creationDate forKey:@"CreationDate"];
  [v5 encodeObject:self->_metadata forKey:@"Metadata"];
}

- (HKAttachmentReference)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ObjectIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Attachment"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CreationDate"];
  v9 = [MEMORY[0x1E695DF20] hk_secureCodingClasses];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"Metadata"];

  v11 = [(HKAttachmentReference *)self _initWithIdentifier:v5 objectIdentifier:v6 attachment:v7 creationDate:v8 metadata:v10];
  return v11;
}

@end