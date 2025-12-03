@interface HDClinicalIngestionStoreServer
- (HDClinicalIngestionStoreServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)ingestionManagerUnavailableErrorWithActionDescription:(id)description;
- (void)clinicalIngestionManager:(id)manager willChangeIngestionState:(int64_t)state;
- (void)registerForIngestionStateChanges;
- (void)remote_abortIngestionWithCompletion:(id)completion;
- (void)remote_ingestHealthRecordsWithFHIRDocumentHandle:(id)handle accountIdentifier:(id)identifier options:(unint64_t)options completion:(id)completion;
- (void)remote_ingestHealthRecordsWithOptions:(unint64_t)options reason:(id)reason accountIdentifiers:(id)identifiers completion:(id)completion;
- (void)remote_ingestionStateWithCompletion:(id)completion;
- (void)remote_resetHealthRecordsLastExtractedRowIDWithCompletion:(id)completion;
@end

@implementation HDClinicalIngestionStoreServer

- (HDClinicalIngestionStoreServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  clientCopy = client;
  v16.receiver = self;
  v16.super_class = HDClinicalIngestionStoreServer;
  v11 = [(HDClinicalIngestionStoreServer *)&v16 initWithUUID:d configuration:configuration client:clientCopy delegate:delegate];
  if (v11)
  {
    profile = [clientCopy profile];
    v13 = [profile profileExtensionWithIdentifier:HKHealthRecordsPluginIdentifier];
    profileExtension = v11->_profileExtension;
    v11->_profileExtension = v13;
  }

  return v11;
}

- (id)ingestionManagerUnavailableErrorWithActionDescription:(id)description
{
  descriptionCopy = description;
  profile = [(HDClinicalIngestionStoreServer *)self profile];
  v6 = [NSError hk_error:100 format:@"Cannot %@ on profile without ingestion manager: %@", descriptionCopy, profile];

  return v6;
}

- (void)registerForIngestionStateChanges
{
  ingestionManager = [(HDHealthRecordsProfileExtension *)self->_profileExtension ingestionManager];

  if (ingestionManager)
  {
    ingestionManager2 = [(HDHealthRecordsProfileExtension *)self->_profileExtension ingestionManager];
    [ingestionManager2 registerIngestionStateChangeObserver:self];
  }

  else
  {
    _HKInitializeLogging();
    v4 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_9F39C(self, v4);
    }
  }
}

- (void)clinicalIngestionManager:(id)manager willChangeIngestionState:(int64_t)state
{
  _HKInitializeLogging();
  v6 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = HKStringFromHKClinicalIngestionState();
    *buf = 138543618;
    selfCopy = self;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: ingestion manager will change ingestion state to %{public}@", buf, 0x16u);
  }

  client = [(HDClinicalIngestionStoreServer *)self client];
  connection = [client connection];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_2479C;
  v12[3] = &unk_105C38;
  v12[4] = self;
  v11 = [connection remoteObjectProxyWithErrorHandler:v12];

  [v11 clientRemote_updateIngestionState:state];
}

- (void)remote_ingestionStateWithCompletion:(id)completion
{
  profileExtension = self->_profileExtension;
  completionCopy = completion;
  ingestionManager = [(HDHealthRecordsProfileExtension *)profileExtension ingestionManager];
  currentIngestionState = [ingestionManager currentIngestionState];

  completionCopy[2](completionCopy, currentIngestionState);
}

- (void)remote_ingestHealthRecordsWithOptions:(unint64_t)options reason:(id)reason accountIdentifiers:(id)identifiers completion:(id)completion
{
  reasonCopy = reason;
  identifiersCopy = identifiers;
  completionCopy = completion;
  ingestionManager = [(HDHealthRecordsProfileExtension *)self->_profileExtension ingestionManager];

  if (ingestionManager)
  {
    v14 = [[HDClinicalIngestionTaskContext alloc] initWithOptions:options reason:reasonCopy];
    ingestionManager2 = [(HDHealthRecordsProfileExtension *)self->_profileExtension ingestionManager];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_249E4;
    v17[3] = &unk_106960;
    v18 = completionCopy;
    [ingestionManager2 performIngestionWithContext:v14 accountIdentifiers:identifiersCopy completion:v17];
  }

  else
  {
    v16 = [(HDClinicalIngestionStoreServer *)self ingestionManagerUnavailableErrorWithActionDescription:@"trigger ingestion"];
    (*(completionCopy + 2))(completionCopy, 0, v16);
  }
}

- (void)remote_ingestHealthRecordsWithFHIRDocumentHandle:(id)handle accountIdentifier:(id)identifier options:(unint64_t)options completion:(id)completion
{
  handleCopy = handle;
  identifierCopy = identifier;
  completionCopy = completion;
  ingestionManager = [(HDHealthRecordsProfileExtension *)self->_profileExtension ingestionManager];

  if (ingestionManager)
  {
    v14 = [(HDClinicalIngestionTaskContext *)[HDClinicalIngestionTaskMutableContext alloc] initWithOptions:options reason:@"client request, file ingestion"];
    [(HDClinicalIngestionTaskMutableContext *)v14 setInputFileHandle:handleCopy];
    [(HDClinicalIngestionTaskMutableContext *)v14 setOptions:14];
    if (identifierCopy)
    {
      v20 = identifierCopy;
      v15 = [NSArray arrayWithObjects:&v20 count:1];
    }

    else
    {
      v15 = 0;
    }

    ingestionManager2 = [(HDHealthRecordsProfileExtension *)self->_profileExtension ingestionManager];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_24BD8;
    v18[3] = &unk_106960;
    v19 = completionCopy;
    [ingestionManager2 performIngestionWithContext:v14 accountIdentifiers:v15 completion:v18];
  }

  else
  {
    v16 = [(HDClinicalIngestionStoreServer *)self ingestionManagerUnavailableErrorWithActionDescription:@"ingest FHIR document"];
    (*(completionCopy + 2))(completionCopy, 0, v16);
  }
}

- (void)remote_abortIngestionWithCompletion:(id)completion
{
  completionCopy = completion;
  ingestionManager = [(HDHealthRecordsProfileExtension *)self->_profileExtension ingestionManager];

  if (ingestionManager)
  {
    ingestionManager2 = [(HDHealthRecordsProfileExtension *)self->_profileExtension ingestionManager];
    [ingestionManager2 cancelAllIngestionTasks];
  }

  else
  {
    ingestionManager2 = [(HDClinicalIngestionStoreServer *)self ingestionManagerUnavailableErrorWithActionDescription:@"abort ingestion"];
    completionCopy[2](completionCopy, ingestionManager2);
  }
}

- (void)remote_resetHealthRecordsLastExtractedRowIDWithCompletion:(id)completion
{
  profileExtension = self->_profileExtension;
  completionCopy = completion;
  accountManager = [(HDHealthRecordsProfileExtension *)profileExtension accountManager];

  if (accountManager)
  {
    accountManager2 = [(HDHealthRecordsProfileExtension *)self->_profileExtension accountManager];
    [accountManager2 resetLastExtractedRowIDWithCompletion:completionCopy];
  }

  else
  {
    profile = [(HDClinicalIngestionStoreServer *)self profile];
    accountManager2 = [NSError hk_error:100 format:@"Cannot reset last extracted row ID on profile without account manager: %@", profile];

    completionCopy[2](completionCopy, 0, accountManager2);
  }
}

@end