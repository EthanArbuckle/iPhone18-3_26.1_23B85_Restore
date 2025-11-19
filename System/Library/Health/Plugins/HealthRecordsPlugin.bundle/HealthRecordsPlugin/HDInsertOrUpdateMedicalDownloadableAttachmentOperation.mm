@interface HDInsertOrUpdateMedicalDownloadableAttachmentOperation
- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5;
- (HDInsertOrUpdateMedicalDownloadableAttachmentOperation)initWithAttachment:(id)a3 shouldReplace:(BOOL)a4;
- (HDInsertOrUpdateMedicalDownloadableAttachmentOperation)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDInsertOrUpdateMedicalDownloadableAttachmentOperation

- (HDInsertOrUpdateMedicalDownloadableAttachmentOperation)initWithAttachment:(id)a3 shouldReplace:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HDInsertOrUpdateMedicalDownloadableAttachmentOperation;
  v7 = [(HDInsertOrUpdateMedicalDownloadableAttachmentOperation *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    attachment = v7->_attachment;
    v7->_attachment = v8;

    v7->_shouldReplace = a4;
  }

  return v7;
}

- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v5 = [HDMedicalDownloadableAttachmentEntity _insertOrUpdateAttachment:self->_attachment shouldReplace:self->_shouldReplace databaseTransaction:a4 error:a5];
  v6 = v5 != 0;

  return v6;
}

- (HDInsertOrUpdateMedicalDownloadableAttachmentOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Attachment"];
  if (v5 && ([v4 containsValueForKey:@"ShouldReplace"] & 1) != 0)
  {
    self = -[HDInsertOrUpdateMedicalDownloadableAttachmentOperation initWithAttachment:shouldReplace:](self, "initWithAttachment:shouldReplace:", v5, [v4 decodeBoolForKey:@"ShouldReplace"]);
    v6 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  attachment = self->_attachment;
  v5 = a3;
  [v5 encodeObject:attachment forKey:@"Attachment"];
  [v5 encodeBool:self->_shouldReplace forKey:@"ShouldReplace"];
}

@end