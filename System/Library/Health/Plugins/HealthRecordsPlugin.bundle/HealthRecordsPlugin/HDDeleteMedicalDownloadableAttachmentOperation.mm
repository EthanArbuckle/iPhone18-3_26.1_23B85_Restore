@interface HDDeleteMedicalDownloadableAttachmentOperation
- (HDDeleteMedicalDownloadableAttachmentOperation)initWithAttachmentIdentifier:(id)identifier;
- (HDDeleteMedicalDownloadableAttachmentOperation)initWithCoder:(id)coder;
@end

@implementation HDDeleteMedicalDownloadableAttachmentOperation

- (HDDeleteMedicalDownloadableAttachmentOperation)initWithAttachmentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = HDDeleteMedicalDownloadableAttachmentOperation;
  v5 = [(HDDeleteMedicalDownloadableAttachmentOperation *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (HDDeleteMedicalDownloadableAttachmentOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
  if (v5)
  {
    self = [(HDDeleteMedicalDownloadableAttachmentOperation *)self initWithAttachmentIdentifier:v5];
    selfCopy = self;
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
}

@end