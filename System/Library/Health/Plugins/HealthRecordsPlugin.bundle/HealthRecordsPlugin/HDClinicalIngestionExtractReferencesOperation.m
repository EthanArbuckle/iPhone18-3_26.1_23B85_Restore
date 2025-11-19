@interface HDClinicalIngestionExtractReferencesOperation
- (HDClinicalIngestionExtractReferencesOperation)initWithTask:(id)a3 account:(id)a4 resourceData:(id)a5 sourceResourceObjects:(id)a6 nextOperation:(id)a7;
- (void)main;
@end

@implementation HDClinicalIngestionExtractReferencesOperation

- (HDClinicalIngestionExtractReferencesOperation)initWithTask:(id)a3 account:(id)a4 resourceData:(id)a5 sourceResourceObjects:(id)a6 nextOperation:(id)a7
{
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = HDClinicalIngestionExtractReferencesOperation;
  v14 = [(HDClinicalIngestionPerAccountOperation *)&v20 initWithTask:a3 account:a4 nextOperation:a7];
  if (v14)
  {
    v15 = [v12 copy];
    FHIRResourceData = v14->_FHIRResourceData;
    v14->_FHIRResourceData = v15;

    v17 = [v13 copy];
    sourceResourceObjects = v14->_sourceResourceObjects;
    v14->_sourceResourceObjects = v17;
  }

  return v14;
}

- (void)main
{
  _HKInitializeLogging();
  v3 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(HDClinicalIngestionPerAccountOperation *)self debugDescription];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ beginning reference resolution", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v41 = 0x3032000000;
  v42 = sub_24274;
  v43 = sub_24284;
  v44 = 0;
  v32 = 0;
  v33[0] = &v32;
  v33[1] = 0x3032000000;
  v33[2] = sub_24274;
  v33[3] = sub_24284;
  v34 = 0;
  v6 = [(HDClinicalIngestionOperation *)self healthRecordsServiceClient];
  v7 = [(NSArray *)self->_sourceResourceObjects count];
  if ([(NSArray *)self->_FHIRResourceData count]+ v7)
  {
    v8 = [HDReferenceExtractionRequest alloc];
    sourceResourceObjects = self->_sourceResourceObjects;
    FHIRResourceData = self->_FHIRResourceData;
    v11 = [(HDClinicalIngestionPerAccountOperation *)self account];
    v12 = [v11 gateway];
    v13 = [v12 baseURL];
    v14 = [v8 initWithResources:sourceResourceObjects FHIRResourceData:FHIRResourceData serverBaseURL:v13];

    if (v14)
    {
      if (v6)
      {
        v15 = dispatch_group_create();
        dispatch_group_enter(v15);
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_2428C;
        v28[3] = &unk_106938;
        p_buf = &buf;
        v31 = &v32;
        v16 = v15;
        v29 = v16;
        [v6 executeFHIRReferenceExtractionRequest:v14 completion:v28];
        dispatch_group_wait(v16, 0xFFFFFFFFFFFFFFFFLL);

LABEL_14:
        goto LABEL_15;
      }

      _HKInitializeLogging();
      v20 = HKLogHealthRecords;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = [(HDClinicalIngestionPerAccountOperation *)self debugDescription];
        sub_9F27C(v21, v39, v20);
      }

      v19 = [NSError hk_error:100 description:@"Unable to extract references because there is no extraction service client"];
    }

    else
    {
      _HKInitializeLogging();
      v17 = HKLogHealthRecords;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = [(HDClinicalIngestionPerAccountOperation *)self debugDescription];
        sub_9F2D4(v18, v39, v17);
      }

      v19 = [NSError hk_error:100 description:@"Failed to instantiate reference extraction request. Are all resources of the same FHIR release?"];
    }

    v16 = *(v33[0] + 40);
    *(v33[0] + 40) = v19;
    goto LABEL_14;
  }

LABEL_15:
  if (*(*(&buf + 1) + 40))
  {
    [(HDClinicalIngestionExtractReferencesOperation *)self setExtractionResult:?];
    _HKInitializeLogging();
    v22 = HKLogHealthRecords;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(HDClinicalIngestionPerAccountOperation *)self debugDescription];
      v24 = [*(*(&buf + 1) + 40) debugDescription];
      v25 = HKSensitiveLogItem();
      *v35 = 138543618;
      v36 = v23;
      v37 = 2112;
      v38 = v25;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ done, %@", v35, 0x16u);
    }
  }

  else
  {
    [(HDClinicalIngestionExtractReferencesOperation *)self setResolutionError:*(v33[0] + 40)];
    _HKInitializeLogging();
    v26 = HKLogHealthRecords;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [(HDClinicalIngestionPerAccountOperation *)self debugDescription];
      sub_9F32C(v27, v33, v35, v26);
    }

    [(HDClinicalIngestionExtractReferencesOperation *)self cancel];
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&buf, 8);
}

@end