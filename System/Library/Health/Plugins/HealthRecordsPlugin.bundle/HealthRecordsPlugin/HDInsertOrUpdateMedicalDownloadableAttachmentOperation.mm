@interface HDInsertOrUpdateMedicalDownloadableAttachmentOperation
- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
- (HDInsertOrUpdateMedicalDownloadableAttachmentOperation)initWithAttachment:(id)attachment shouldReplace:(BOOL)replace;
- (HDInsertOrUpdateMedicalDownloadableAttachmentOperation)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDInsertOrUpdateMedicalDownloadableAttachmentOperation

- (HDInsertOrUpdateMedicalDownloadableAttachmentOperation)initWithAttachment:(id)attachment shouldReplace:(BOOL)replace
{
  attachmentCopy = attachment;
  v11.receiver = self;
  v11.super_class = HDInsertOrUpdateMedicalDownloadableAttachmentOperation;
  v7 = [(HDInsertOrUpdateMedicalDownloadableAttachmentOperation *)&v11 init];
  if (v7)
  {
    v8 = [attachmentCopy copy];
    attachment = v7->_attachment;
    v7->_attachment = v8;

    v7->_shouldReplace = replace;
  }

  return v7;
}

- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  v5 = [HDMedicalDownloadableAttachmentEntity _insertOrUpdateAttachment:self->_attachment shouldReplace:self->_shouldReplace databaseTransaction:transaction error:error];
  v6 = v5 != 0;

  return v6;
}

- (HDInsertOrUpdateMedicalDownloadableAttachmentOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Attachment"];
  if (v5 && ([coderCopy containsValueForKey:@"ShouldReplace"] & 1) != 0)
  {
    self = -[HDInsertOrUpdateMedicalDownloadableAttachmentOperation initWithAttachment:shouldReplace:](self, "initWithAttachment:shouldReplace:", v5, [coderCopy decodeBoolForKey:@"ShouldReplace"]);
    selfCopy = self;
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  attachment = self->_attachment;
  coderCopy = coder;
  [coderCopy encodeObject:attachment forKey:@"Attachment"];
  [coderCopy encodeBool:self->_shouldReplace forKey:@"ShouldReplace"];
}

@end