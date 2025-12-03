@interface HDMedicalDownloadableAttachmentStoreServer
+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error;
- (HDMedicalDownloadableAttachmentStoreServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate attachmentManager:(id)manager;
- (void)_unitTesting_remote_triggerDownloadableAttachmentDidChange:(id)change completion:(id)completion;
- (void)dealloc;
- (void)downloadableAttachmentDidChangeState:(id)state;
- (void)remote_fetchAttachmentWithIdentifier:(id)identifier completion:(id)completion;
- (void)remote_insertDownloadableAttachment:(id)attachment completion:(id)completion;
- (void)remote_markDataAvailableForAttachmentWithIdentifier:(id)identifier attachmentContent:(id)content completion:(id)completion;
- (void)remote_markDownloadCompleteForAttachmentWithIdentifier:(id)identifier fileURL:(id)l completion:(id)completion;
- (void)remote_processAttachmentWithIdentifier:(id)identifier completion:(id)completion;
- (void)remote_removeAllAttachmentsFromMedicalRecord:(id)record completion:(id)completion;
- (void)remote_triggerAttachmentRetryForMedicalRecordWithIdentifier:(id)identifier completion:(id)completion;
- (void)remote_updateErrorStatusAndRetryCountForAttachmentWithIdentifier:(id)identifier errorStatus:(int64_t)status lastError:(id)error retryCount:(int64_t)count completion:(id)completion;
- (void)remote_updateRetryCountForAttachmentWithIdentifier:(id)identifier retryCount:(int64_t)count nextRetryDate:(id)date completion:(id)completion;
- (void)remote_updateStatusAndClearErrorForAttachmentWithIdentifier:(id)identifier status:(int64_t)status completion:(id)completion;
@end

@implementation HDMedicalDownloadableAttachmentStoreServer

- (HDMedicalDownloadableAttachmentStoreServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate attachmentManager:(id)manager
{
  managerCopy = manager;
  v17.receiver = self;
  v17.super_class = HDMedicalDownloadableAttachmentStoreServer;
  v14 = [(HDMedicalDownloadableAttachmentStoreServer *)&v17 initWithUUID:d configuration:configuration client:client delegate:delegate];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_attachmentManager, manager);
    [(HDMedicalDownloadableAttachmentManager *)v15->_attachmentManager addDownloadableAttachmentStateObserver:v15];
  }

  return v15;
}

+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error
{
  dCopy = d;
  configurationCopy = configuration;
  delegateCopy = delegate;
  clientCopy = client;
  profile = [clientCopy profile];
  v17 = [profile profileExtensionWithIdentifier:HKHealthRecordsPluginIdentifier];

  downloadableAttachmentManager = [v17 downloadableAttachmentManager];
  if (downloadableAttachmentManager)
  {
    v19 = [[self alloc] initWithUUID:dCopy configuration:configurationCopy client:clientCopy delegate:delegateCopy attachmentManager:downloadableAttachmentManager];
  }

  else
  {
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    profile2 = [clientCopy profile];

    [NSError hk_assignError:error code:100 format:@"Cannot use %@ on profile without downloadable attachment manager: %@", v21, profile2];
    v19 = 0;
    clientCopy = v21;
  }

  return v19;
}

- (void)dealloc
{
  [(HDMedicalDownloadableAttachmentManager *)self->_attachmentManager removeDownloadableAttachmentStateObserver:self];
  v3.receiver = self;
  v3.super_class = HDMedicalDownloadableAttachmentStoreServer;
  [(HDMedicalDownloadableAttachmentStoreServer *)&v3 dealloc];
}

- (void)remote_updateRetryCountForAttachmentWithIdentifier:(id)identifier retryCount:(int64_t)count nextRetryDate:(id)date completion:(id)completion
{
  attachmentManager = self->_attachmentManager;
  v14 = 0;
  completionCopy = completion;
  LODWORD(count) = [(HDMedicalDownloadableAttachmentManager *)attachmentManager updateRetryCountForAttachmentWithIdentifier:identifier retryCount:count nextRetryDate:date error:&v14];
  v11 = v14;
  if (count)
  {
    v12 = 1;
    v13 = 0;
  }

  else
  {
    v12 = 0;
    v13 = v11;
  }

  (completionCopy)[2](completionCopy, v12, v13);
}

- (void)remote_updateStatusAndClearErrorForAttachmentWithIdentifier:(id)identifier status:(int64_t)status completion:(id)completion
{
  attachmentManager = self->_attachmentManager;
  v12 = 0;
  completionCopy = completion;
  LODWORD(identifier) = [(HDMedicalDownloadableAttachmentManager *)attachmentManager updateStatusAndClearErrorForAttachmentWithIdentifier:identifier status:status error:&v12];
  v9 = v12;
  if (identifier)
  {
    v10 = 1;
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = v9;
  }

  (completionCopy)[2](completionCopy, v10, v11);
}

- (void)remote_updateErrorStatusAndRetryCountForAttachmentWithIdentifier:(id)identifier errorStatus:(int64_t)status lastError:(id)error retryCount:(int64_t)count completion:(id)completion
{
  attachmentManager = self->_attachmentManager;
  v16 = 0;
  completionCopy = completion;
  LODWORD(error) = [(HDMedicalDownloadableAttachmentManager *)attachmentManager updateErrorStatusAndRetryCountForAttachmentWithIdentifier:identifier errorStatus:status lastError:error retryCount:count error:&v16];
  v13 = v16;
  if (error)
  {
    v14 = 1;
    v15 = 0;
  }

  else
  {
    v14 = 0;
    v15 = v13;
  }

  (completionCopy)[2](completionCopy, v14, v15);
}

- (void)remote_markDownloadCompleteForAttachmentWithIdentifier:(id)identifier fileURL:(id)l completion:(id)completion
{
  attachmentManager = self->_attachmentManager;
  v12 = 0;
  completionCopy = completion;
  LODWORD(identifier) = [(HDMedicalDownloadableAttachmentManager *)attachmentManager markDownloadCompleteForAttachmentWithIdentifier:identifier fileURL:l error:&v12];
  v9 = v12;
  if (identifier)
  {
    v10 = 1;
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = v9;
  }

  (completionCopy)[2](completionCopy, v10, v11);
}

- (void)remote_markDataAvailableForAttachmentWithIdentifier:(id)identifier attachmentContent:(id)content completion:(id)completion
{
  attachmentManager = self->_attachmentManager;
  v12 = 0;
  completionCopy = completion;
  LODWORD(identifier) = [(HDMedicalDownloadableAttachmentManager *)attachmentManager markDataAvailableForAttachmentWithIdentifier:identifier attachmentContent:content error:&v12];
  v9 = v12;
  if (identifier)
  {
    v10 = 1;
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = v9;
  }

  (completionCopy)[2](completionCopy, v10, v11);
}

- (void)remote_fetchAttachmentWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  attachmentManager = self->_attachmentManager;
  v12 = 0;
  v9 = [(HDMedicalDownloadableAttachmentManager *)attachmentManager fetchAttachmentWithIdentifier:identifierCopy error:&v12];
  v10 = v12;
  identifierCopy = v10;
  if (v9)
  {
    completionCopy[2](completionCopy, v9, 0);
  }

  else
  {
    if (!v10)
    {
      identifierCopy = [NSError hk_error:118 format:@"HKMedicalDownloadableAttachment for identifier %@ not found", identifierCopy];
    }

    (completionCopy)[2](completionCopy, 0, identifierCopy);
  }
}

- (void)remote_processAttachmentWithIdentifier:(id)identifier completion:(id)completion
{
  attachmentManager = self->_attachmentManager;
  v10 = 0;
  completionCopy = completion;
  LODWORD(attachmentManager) = [(HDMedicalDownloadableAttachmentManager *)attachmentManager processDownloadableAttachmentWithIdentifier:identifier error:&v10];
  v7 = v10;
  if (attachmentManager)
  {
    v8 = 1;
    v9 = 0;
  }

  else
  {
    v8 = 0;
    v9 = v7;
  }

  (completionCopy)[2](completionCopy, v8, v9);
}

- (void)remote_triggerAttachmentRetryForMedicalRecordWithIdentifier:(id)identifier completion:(id)completion
{
  attachmentManager = self->_attachmentManager;
  v10 = 0;
  completionCopy = completion;
  LODWORD(attachmentManager) = [(HDMedicalDownloadableAttachmentManager *)attachmentManager triggerAttachmentRetryForMedicalRecordWithIdentifier:identifier error:&v10];
  v7 = v10;
  if (attachmentManager)
  {
    v8 = 1;
    v9 = 0;
  }

  else
  {
    v8 = 0;
    v9 = v7;
  }

  (completionCopy)[2](completionCopy, v8, v9);
}

- (void)remote_insertDownloadableAttachment:(id)attachment completion:(id)completion
{
  attachmentManager = self->_attachmentManager;
  v10 = 0;
  completionCopy = completion;
  LODWORD(attachmentManager) = [(HDMedicalDownloadableAttachmentManager *)attachmentManager insertDownloadableAttachment:attachment error:&v10];
  v7 = v10;
  if (attachmentManager)
  {
    v8 = 1;
    v9 = 0;
  }

  else
  {
    v8 = 0;
    v9 = v7;
  }

  (completionCopy)[2](completionCopy, v8, v9);
}

- (void)remote_removeAllAttachmentsFromMedicalRecord:(id)record completion:(id)completion
{
  attachmentManager = self->_attachmentManager;
  v10 = 0;
  completionCopy = completion;
  LODWORD(attachmentManager) = [(HDMedicalDownloadableAttachmentManager *)attachmentManager removeAllAttachmentsFromMedicalRecord:record error:&v10];
  v7 = v10;
  if (attachmentManager)
  {
    v8 = 1;
    v9 = 0;
  }

  else
  {
    v8 = 0;
    v9 = v7;
  }

  (completionCopy)[2](completionCopy, v8, v9);
}

- (void)_unitTesting_remote_triggerDownloadableAttachmentDidChange:(id)change completion:(id)completion
{
  attachmentManager = self->_attachmentManager;
  v10 = 0;
  completionCopy = completion;
  LODWORD(attachmentManager) = [(HDMedicalDownloadableAttachmentManager *)attachmentManager _unitTesting_triggerDownloadableAttachmentDidChange:change error:&v10];
  v7 = v10;
  if (attachmentManager)
  {
    v8 = 1;
    v9 = 0;
  }

  else
  {
    v8 = 0;
    v9 = v7;
  }

  (completionCopy)[2](completionCopy, v8, v9);
}

- (void)downloadableAttachmentDidChangeState:(id)state
{
  stateCopy = state;
  _HKInitializeLogging();
  v5 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A31AC(self, v5, stateCopy);
  }

  client = [(HDMedicalDownloadableAttachmentStoreServer *)self client];
  connection = [client connection];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_511EC;
  v9[3] = &unk_105C38;
  v9[4] = self;
  v8 = [connection remoteObjectProxyWithErrorHandler:v9];

  [v8 clientRemote_downloadableAttachmentDidChangeState:stateCopy];
}

@end