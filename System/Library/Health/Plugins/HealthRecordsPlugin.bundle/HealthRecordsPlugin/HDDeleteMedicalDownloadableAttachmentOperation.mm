@interface HDDeleteMedicalDownloadableAttachmentOperation
- (HDDeleteMedicalDownloadableAttachmentOperation)initWithAttachmentIdentifier:(id)a3;
- (HDDeleteMedicalDownloadableAttachmentOperation)initWithCoder:(id)a3;
@end

@implementation HDDeleteMedicalDownloadableAttachmentOperation

- (HDDeleteMedicalDownloadableAttachmentOperation)initWithAttachmentIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDDeleteMedicalDownloadableAttachmentOperation;
  v5 = [(HDDeleteMedicalDownloadableAttachmentOperation *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (HDDeleteMedicalDownloadableAttachmentOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
  if (v5)
  {
    self = [(HDDeleteMedicalDownloadableAttachmentOperation *)self initWithAttachmentIdentifier:v5];
    v6 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v6 = 0;
  }

  return v6;
}

@end