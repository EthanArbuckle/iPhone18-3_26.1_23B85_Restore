@interface MLCloudSession
- (MLCloudSession)initWithTeamIdentifier:(id)a3;
- (id)fetchKeyResponseFromServerForKeyID:(id)a3 signedKeyRequest:(id)a4 error:(id *)a5;
@end

@implementation MLCloudSession

- (MLCloudSession)initWithTeamIdentifier:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MLCloudSession;
  v5 = [(MLCloudSession *)&v14 init];
  if (v5)
  {
    v6 = [CKContainer containerIDForContainerIdentifier:@"com.apple.coreml.modelkeystore" environment:1];
    v7 = [[CKContainer alloc] initWithContainerID:v6];
    container = v5->_container;
    v5->_container = v7;

    serviceName = v5->_serviceName;
    v5->_serviceName = @"mks-production";

    v10 = [v4 copy];
    teamIdentifier = v5->_teamIdentifier;
    v5->_teamIdentifier = v10;

    v12 = v5;
  }

  return v5;
}

- (id)fetchKeyResponseFromServerForKeyID:(id)a3 signedKeyRequest:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [CKCodeOperation alloc];
  v11 = [(MLCloudSession *)self serviceName];
  v12 = [v10 initWithServiceName:v11 functionName:@"fetchKey2" responseClass:objc_opt_class()];

  v13 = objc_alloc_init(ModelKeyServerAPIFetchKeyRequest);
  [(ModelKeyServerAPIFetchKeyRequest *)v13 setKeyId:v8];
  [(ModelKeyServerAPIFetchKeyRequest *)v13 setSignedKeyRequest:v9];
  v14 = [(MLCloudSession *)self teamIdentifier];
  [(ModelKeyServerAPIFetchKeyRequest *)v13 setTeamId:v14];

  [(ModelKeyServerAPIFetchKeyRequest *)v13 setRawRequest:0];
  [v12 setRequest:v13];
  [v12 setQualityOfService:25];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_1000048BC;
  v43 = sub_1000048CC;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_1000048BC;
  v37 = sub_1000048CC;
  v38 = 0;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000048D4;
  v29[3] = &unk_100010360;
  v31 = &v33;
  v15 = dispatch_semaphore_create(0);
  v30 = v15;
  v32 = &v39;
  [v12 setCodeOperationCompletionBlock:v29];
  v16 = [(MLCloudSession *)self container];
  v17 = [v16 publicCloudDatabase];
  [v17 addOperation:v12];

  v18 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v15, v18))
  {
    if (a5)
    {
      *a5 = [MLModelErrorUtils modelDecryptionKeyFetchErrorWithUnderlyingError:0 format:@"Fetching decryption key from server timed out. Make sure the device is online."];
    }

    v19 = +[MLLogging coreChannel];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100007604(v19, v20, v21, v22, v23, v24, v25, v26);
    }

    v27 = 0;
  }

  else
  {
    if (a5)
    {
      *a5 = v34[5];
    }

    v27 = v40[5];
  }

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  return v27;
}

@end