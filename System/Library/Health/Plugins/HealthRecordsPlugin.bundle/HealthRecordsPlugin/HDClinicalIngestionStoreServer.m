@interface HDClinicalIngestionStoreServer
- (HDClinicalIngestionStoreServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (id)ingestionManagerUnavailableErrorWithActionDescription:(id)a3;
- (void)clinicalIngestionManager:(id)a3 willChangeIngestionState:(int64_t)a4;
- (void)registerForIngestionStateChanges;
- (void)remote_abortIngestionWithCompletion:(id)a3;
- (void)remote_ingestHealthRecordsWithFHIRDocumentHandle:(id)a3 accountIdentifier:(id)a4 options:(unint64_t)a5 completion:(id)a6;
- (void)remote_ingestHealthRecordsWithOptions:(unint64_t)a3 reason:(id)a4 accountIdentifiers:(id)a5 completion:(id)a6;
- (void)remote_ingestionStateWithCompletion:(id)a3;
- (void)remote_resetHealthRecordsLastExtractedRowIDWithCompletion:(id)a3;
@end

@implementation HDClinicalIngestionStoreServer

- (HDClinicalIngestionStoreServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a5;
  v16.receiver = self;
  v16.super_class = HDClinicalIngestionStoreServer;
  v11 = [(HDClinicalIngestionStoreServer *)&v16 initWithUUID:a3 configuration:a4 client:v10 delegate:a6];
  if (v11)
  {
    v12 = [v10 profile];
    v13 = [v12 profileExtensionWithIdentifier:HKHealthRecordsPluginIdentifier];
    profileExtension = v11->_profileExtension;
    v11->_profileExtension = v13;
  }

  return v11;
}

- (id)ingestionManagerUnavailableErrorWithActionDescription:(id)a3
{
  v4 = a3;
  v5 = [(HDClinicalIngestionStoreServer *)self profile];
  v6 = [NSError hk_error:100 format:@"Cannot %@ on profile without ingestion manager: %@", v4, v5];

  return v6;
}

- (void)registerForIngestionStateChanges
{
  v3 = [(HDHealthRecordsProfileExtension *)self->_profileExtension ingestionManager];

  if (v3)
  {
    v5 = [(HDHealthRecordsProfileExtension *)self->_profileExtension ingestionManager];
    [v5 registerIngestionStateChangeObserver:self];
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

- (void)clinicalIngestionManager:(id)a3 willChangeIngestionState:(int64_t)a4
{
  _HKInitializeLogging();
  v6 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = HKStringFromHKClinicalIngestionState();
    *buf = 138543618;
    v14 = self;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: ingestion manager will change ingestion state to %{public}@", buf, 0x16u);
  }

  v9 = [(HDClinicalIngestionStoreServer *)self client];
  v10 = [v9 connection];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_2479C;
  v12[3] = &unk_105C38;
  v12[4] = self;
  v11 = [v10 remoteObjectProxyWithErrorHandler:v12];

  [v11 clientRemote_updateIngestionState:a4];
}

- (void)remote_ingestionStateWithCompletion:(id)a3
{
  profileExtension = self->_profileExtension;
  v6 = a3;
  v4 = [(HDHealthRecordsProfileExtension *)profileExtension ingestionManager];
  v5 = [v4 currentIngestionState];

  v6[2](v6, v5);
}

- (void)remote_ingestHealthRecordsWithOptions:(unint64_t)a3 reason:(id)a4 accountIdentifiers:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(HDHealthRecordsProfileExtension *)self->_profileExtension ingestionManager];

  if (v13)
  {
    v14 = [[HDClinicalIngestionTaskContext alloc] initWithOptions:a3 reason:v10];
    v15 = [(HDHealthRecordsProfileExtension *)self->_profileExtension ingestionManager];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_249E4;
    v17[3] = &unk_106960;
    v18 = v12;
    [v15 performIngestionWithContext:v14 accountIdentifiers:v11 completion:v17];
  }

  else
  {
    v16 = [(HDClinicalIngestionStoreServer *)self ingestionManagerUnavailableErrorWithActionDescription:@"trigger ingestion"];
    (*(v12 + 2))(v12, 0, v16);
  }
}

- (void)remote_ingestHealthRecordsWithFHIRDocumentHandle:(id)a3 accountIdentifier:(id)a4 options:(unint64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(HDHealthRecordsProfileExtension *)self->_profileExtension ingestionManager];

  if (v13)
  {
    v14 = [(HDClinicalIngestionTaskContext *)[HDClinicalIngestionTaskMutableContext alloc] initWithOptions:a5 reason:@"client request, file ingestion"];
    [(HDClinicalIngestionTaskMutableContext *)v14 setInputFileHandle:v10];
    [(HDClinicalIngestionTaskMutableContext *)v14 setOptions:14];
    if (v11)
    {
      v20 = v11;
      v15 = [NSArray arrayWithObjects:&v20 count:1];
    }

    else
    {
      v15 = 0;
    }

    v17 = [(HDHealthRecordsProfileExtension *)self->_profileExtension ingestionManager];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_24BD8;
    v18[3] = &unk_106960;
    v19 = v12;
    [v17 performIngestionWithContext:v14 accountIdentifiers:v15 completion:v18];
  }

  else
  {
    v16 = [(HDClinicalIngestionStoreServer *)self ingestionManagerUnavailableErrorWithActionDescription:@"ingest FHIR document"];
    (*(v12 + 2))(v12, 0, v16);
  }
}

- (void)remote_abortIngestionWithCompletion:(id)a3
{
  v6 = a3;
  v4 = [(HDHealthRecordsProfileExtension *)self->_profileExtension ingestionManager];

  if (v4)
  {
    v5 = [(HDHealthRecordsProfileExtension *)self->_profileExtension ingestionManager];
    [v5 cancelAllIngestionTasks];
  }

  else
  {
    v5 = [(HDClinicalIngestionStoreServer *)self ingestionManagerUnavailableErrorWithActionDescription:@"abort ingestion"];
    v6[2](v6, v5);
  }
}

- (void)remote_resetHealthRecordsLastExtractedRowIDWithCompletion:(id)a3
{
  profileExtension = self->_profileExtension;
  v5 = a3;
  v6 = [(HDHealthRecordsProfileExtension *)profileExtension accountManager];

  if (v6)
  {
    v8 = [(HDHealthRecordsProfileExtension *)self->_profileExtension accountManager];
    [v8 resetLastExtractedRowIDWithCompletion:v5];
  }

  else
  {
    v7 = [(HDClinicalIngestionStoreServer *)self profile];
    v8 = [NSError hk_error:100 format:@"Cannot reset last extracted row ID on profile without account manager: %@", v7];

    v5[2](v5, 0, v8);
  }
}

@end