@interface HDClinicalIngestionDownloadAttachmentsOperation
- (void)main;
@end

@implementation HDClinicalIngestionDownloadAttachmentsOperation

- (void)main
{
  _HKInitializeLogging();
  v3 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(HDClinicalIngestionOperation *)self debugDescription];
    *buf = 138543362;
    v10 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting MedicalDownloadableAttachment Pipeline", buf, 0xCu);
  }

  profileExtension = [(HDClinicalIngestionOperation *)self profileExtension];
  downloadableAttachmentManager = [profileExtension downloadableAttachmentManager];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_7C640;
  v8[3] = &unk_1078C8;
  v8[4] = self;
  [downloadableAttachmentManager runMedicalDownloadableAttachmentPipelineWithCompletion:v8];
}

@end