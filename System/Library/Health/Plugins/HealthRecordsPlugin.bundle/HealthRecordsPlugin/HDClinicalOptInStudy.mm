@interface HDClinicalOptInStudy
+ (void)initialize;
- (BOOL)_createDirectory:(id)directory error:(id *)error;
- (BOOL)_lock_loadCertificateWithError:(id *)error;
- (BOOL)_lock_loadHealthWrapConfigurationWithError:(id *)error;
- (BOOL)_removeDirectory:(id)directory error:(id *)error;
- (BOOL)_submitAnalyticsData:(id)data error:(id *)error;
- (BOOL)_uploadSubmittedAnalyticsDataWithUploadDelegate:(id)delegate error:(id *)error;
- (BOOL)cleanWithError:(id *)error;
- (BOOL)submitJSONAnalyticsData:(id)data error:(id *)error;
- (BOOL)triggerOptInAnalyticsDataUploadToHealthCloudWithUploadDelegate:(id)delegate error:(id *)error;
- (HDClinicalOptInStudy)initWithProfile:(id)profile environment:(int64_t)environment;
- (HDClinicalOptInStudyDelegate)delegate;
- (HDProfile)profile;
- (NSURLSession)session;
- (id)_keyValueDomain;
- (id)_registrationURL;
- (id)_subjectIDKey;
- (id)_subjectTokenKey;
- (id)_uploadURL;
- (id)currentSubjectID;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream;
- (void)_lock_enableDataCollectionIfNecessary;
- (void)_lock_registerDevice;
- (void)_setSubjectID:(id)d subjectToken:(id)token;
- (void)enableDataCollection;
@end

@implementation HDClinicalOptInStudy

+ (void)initialize
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = HDClinicalOptInStudyHealthCloudEnvironmentKey;
  v4 = [v2 valueForKey:HDClinicalOptInStudyHealthCloudEnvironmentKey];

  if (!v4)
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    [v5 setInteger:2 forKey:v3];
  }
}

- (HDClinicalOptInStudy)initWithProfile:(id)profile environment:(int64_t)environment
{
  profileCopy = profile;
  v31.receiver = self;
  v31.super_class = HDClinicalOptInStudy;
  v7 = [(HDClinicalOptInStudy *)&v31 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_profile, profileCopy);
    v8->_environment = environment;
    if (environment <= 2)
    {
      v9 = off_105A88[environment];
      v10 = off_105AA0[environment];
      v11 = off_105AB8[environment];
      v12 = 0x1BB20FB01BBuLL >> (16 * environment);
      v13 = off_105AD0[environment];
      v14 = off_105AE8[environment];
      authorizationKey = v8->_authorizationKey;
      v8->_authorizationKey = &v9->isa;

      channel = v8->_channel;
      v8->_channel = @"DataAnalytics";

      scheme = v8->_scheme;
      v8->_scheme = &v10->isa;

      hostname = v8->_hostname;
      v8->_hostname = &v11->isa;

      v8->_port = v12;
      studyID = v8->_studyID;
      v8->_studyID = &v13->isa;

      certString = v8->_certString;
      v8->_certString = &v14->isa;
    }

    directoryPath = [profileCopy directoryPath];
    v22 = [directoryPath stringByAppendingPathComponent:@"HealthCloud"];
    healthCloudDirectoryPath = v8->_healthCloudDirectoryPath;
    v8->_healthCloudDirectoryPath = v22;

    v8->_ivarLock._os_unfair_lock_opaque = 0;
    v24 = objc_alloc_init(NSMutableDictionary);
    responses = v8->_responses;
    v8->_responses = v24;

    v26 = objc_alloc_init(NSMutableDictionary);
    inputStreams = v8->_inputStreams;
    v8->_inputStreams = v26;

    v28 = objc_alloc_init(NSOperationQueue);
    operationQueue = v8->_operationQueue;
    v8->_operationQueue = v28;
  }

  return v8;
}

- (NSURLSession)session
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  session = selfCopy->_session;
  if (!session)
  {
    v4 = [NSURLSessionConfiguration backgroundSessionConfigurationWithIdentifier:@"com.apple.healthd.HealthRecordsPlugin.OptInStudy"];
    v5 = [NSURLSession sessionWithConfiguration:v4 delegate:selfCopy delegateQueue:selfCopy->_operationQueue];
    v6 = selfCopy->_session;
    selfCopy->_session = v5;

    session = selfCopy->_session;
  }

  v7 = session;
  objc_sync_exit(selfCopy);

  return v7;
}

- (id)currentSubjectID
{
  os_unfair_lock_lock(&self->_ivarLock);
  v3 = [(NSString *)self->_subjectID copy];
  os_unfair_lock_unlock(&self->_ivarLock);

  return v3;
}

- (void)_setSubjectID:(id)d subjectToken:(id)token
{
  tokenCopy = token;
  dCopy = d;
  os_unfair_lock_lock(&self->_ivarLock);
  [(HDClinicalOptInStudy *)self setSubjectID:dCopy];

  [(HDClinicalOptInStudy *)self setSubjectToken:tokenCopy];

  os_unfair_lock_unlock(&self->_ivarLock);
}

- (void)enableDataCollection
{
  os_unfair_lock_lock(&self->_ivarLock);
  [(HDClinicalOptInStudy *)self _lock_enableDataCollectionIfNecessary];

  os_unfair_lock_unlock(&self->_ivarLock);
}

- (BOOL)submitJSONAnalyticsData:(id)data error:(id *)error
{
  dataCopy = data;
  [(HDClinicalOptInStudy *)self enableDataCollection];
  LOBYTE(error) = [(HDClinicalOptInStudy *)self _submitAnalyticsData:dataCopy error:error];

  return error;
}

- (BOOL)triggerOptInAnalyticsDataUploadToHealthCloudWithUploadDelegate:(id)delegate error:(id *)error
{
  delegateCopy = delegate;
  if ([delegateCopy clinicalOptInStudyShouldAbortUpload:self])
  {
    v7 = @"Opt-in upload was asked to defer [before enabling collection]";
  }

  else
  {
    [(HDClinicalOptInStudy *)self enableDataCollection];
    if (![delegateCopy clinicalOptInStudyShouldAbortUpload:self])
    {
      v8 = [(HDClinicalOptInStudy *)self _uploadSubmittedAnalyticsDataWithUploadDelegate:delegateCopy error:error];
      goto LABEL_7;
    }

    v7 = @"Opt-in upload was asked to defer [before upload]";
  }

  [NSError hk_assignError:error code:708 description:v7];
  v8 = 0;
LABEL_7:

  return v8;
}

- (BOOL)cleanWithError:(id *)error
{
  healthCloudDirectoryPath = [(HDClinicalOptInStudy *)self healthCloudDirectoryPath];
  v11 = 0;
  v6 = [(HDClinicalOptInStudy *)self _removeDirectory:healthCloudDirectoryPath error:&v11];
  v7 = v11;

  if (!v6)
  {
    v8 = v7;
    if (v8)
    {
      if (error)
      {
        v9 = v8;
        *error = v8;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_9C218();
    }
  }

  return v6;
}

- (void)_lock_enableDataCollectionIfNecessary
{
  os_unfair_lock_assert_owner(&self->_ivarLock);
  if (self->_readyForAnalyticsSubmission)
  {
    return;
  }

  subjectID = [(HDClinicalOptInStudy *)self subjectID];
  if (![subjectID length])
  {

    goto LABEL_8;
  }

  subjectToken = [(HDClinicalOptInStudy *)self subjectToken];
  v5 = [subjectToken length];

  if (!v5)
  {
LABEL_8:

    [(HDClinicalOptInStudy *)self _lock_registerDevice];
    return;
  }

  v13 = 0;
  v6 = [(HDClinicalOptInStudy *)self _lock_loadCertificateWithError:&v13];
  v7 = v13;
  v8 = v7;
  if (v6)
  {
    v12 = v7;
    v9 = [(HDClinicalOptInStudy *)self _lock_loadHealthWrapConfigurationWithError:&v12];
    v10 = v12;

    if (v9)
    {
      self->_readyForAnalyticsSubmission = 1;
      delegate = [(HDClinicalOptInStudy *)self delegate];
      [delegate clinicalOptInStudyIsReadyForDataSubmission:self];
    }

    else
    {
      if (!v10)
      {
        return;
      }

      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_9C2F8();
      }
    }

    v8 = v10;
  }

  else
  {
    if (!v7)
    {
      return;
    }

    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_9C288();
    }
  }
}

- (void)_lock_registerDevice
{
  os_unfair_lock_assert_owner(&self->_ivarLock);
  _HKInitializeLogging();
  v3 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Attempting to register device for clinical opt-in study", buf, 2u);
  }

  v4 = [NSMutableURLRequest alloc];
  _registrationURL = [(HDClinicalOptInStudy *)self _registrationURL];
  v6 = [v4 initWithURL:_registrationURL];

  [v6 setAllowsCellularAccess:1];
  [v6 setHTTPMethod:@"POST"];
  authorizationKey = [(HDClinicalOptInStudy *)self authorizationKey];
  [v6 setValue:authorizationKey forHTTPHeaderField:@"Authorization"];

  [v6 setValue:@"application/octet-stream" forHTTPHeaderField:@"Content-Type"];
  [v6 setValue:@"application/json" forHTTPHeaderField:@"Accept"];
  v8 = +[NSURLSession sharedSession];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_95E8;
  v10[3] = &unk_105A68;
  v10[4] = self;
  v9 = [v8 dataTaskWithRequest:v6 completionHandler:v10];

  [v9 resume];
}

- (BOOL)_lock_loadHealthWrapConfigurationWithError:(id *)error
{
  os_unfair_lock_assert_owner(&self->_ivarLock);
  if (!self->_certificate)
  {
    return 0;
  }

  v5 = [NSUUID alloc];
  subjectID = [(HDClinicalOptInStudy *)self subjectID];
  v7 = [v5 initWithUUIDString:subjectID];

  v8 = [NSUUID alloc];
  studyID = [(HDClinicalOptInStudy *)self studyID];
  v10 = [v8 initWithUUIDString:studyID];

  if (v7)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v11)
  {
    [NSError hk_assignError:error code:100 format:@"Received mal-formatted subject ID or study ID"];
  }

  else
  {
    v13 = [HKHealthWrapMessageConfiguration alloc];
    channel = [(HDClinicalOptInStudy *)self channel];
    v15 = [v13 initWithSubjectUUID:v7 studyUUID:v10 channel:channel payloadType:@"JSON" certificate:self->_certificate];

    healthWrapConfiguration = self->_healthWrapConfiguration;
    self->_healthWrapConfiguration = v15;
  }

  return v12;
}

- (BOOL)_lock_loadCertificateWithError:(id *)error
{
  os_unfair_lock_assert_owner(&self->_ivarLock);
  certString = self->_certString;
  v6 = HKHealthWrapDERDataFromString();
  if (!v6)
  {
    v9 = @"Failed to decode base64 certificate data.";
LABEL_6:
    [NSError hk_assignError:error code:100 format:v9];
    v8 = 0;
    goto LABEL_7;
  }

  v7 = SecCertificateCreateWithData(0, v6);
  self->_certificate = v7;
  if (!v7)
  {
    v9 = @"Failed to create certificate.";
    goto LABEL_6;
  }

  v8 = 1;
LABEL_7:

  return v8;
}

- (BOOL)_submitAnalyticsData:(id)data error:(id *)error
{
  dataCopy = data;
  _HKInitializeLogging();
  v7 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Attempting to submit analytics data", v19, 2u);
  }

  os_unfair_lock_lock(&self->_ivarLock);
  readyForAnalyticsSubmission = self->_readyForAnalyticsSubmission;
  os_unfair_lock_unlock(&self->_ivarLock);
  if (!readyForAnalyticsSubmission)
  {
    v14 = [NSError hk_error:0 description:@"Not ready for submission yet"];
    if (v14)
    {
      if (error)
      {
        v17 = v14;
        v16 = 0;
        *error = v14;
LABEL_12:
        healthWrapConfiguration = v14;
        goto LABEL_13;
      }

      _HKLogDroppedError();
    }

    v16 = 0;
    goto LABEL_12;
  }

  _healthCloudUploadDirectoryPath = [(HDClinicalOptInStudy *)self _healthCloudUploadDirectoryPath];
  v10 = [(HDClinicalOptInStudy *)self _createDirectory:_healthCloudUploadDirectoryPath error:error];

  if (v10)
  {
    os_unfair_lock_lock(&self->_ivarLock);
    healthWrapConfiguration = [(HDClinicalOptInStudy *)self healthWrapConfiguration];
    os_unfair_lock_unlock(&self->_ivarLock);
    v12 = [HDAnalyticsWriter alloc];
    profile = [(HDClinicalOptInStudy *)self profile];
    v14 = [v12 initWithProfile:profile];

    _healthCloudUploadDirectoryPath2 = [(HDClinicalOptInStudy *)self _healthCloudUploadDirectoryPath];
    v16 = [v14 submitJSONAnalyticsData:dataCopy toDirectory:_healthCloudUploadDirectoryPath2 withConfiguration:healthWrapConfiguration error:error];

LABEL_13:
    goto LABEL_14;
  }

  v16 = 0;
LABEL_14:

  return v16;
}

- (BOOL)_uploadSubmittedAnalyticsDataWithUploadDelegate:(id)delegate error:(id *)error
{
  delegateCopy = delegate;
  _HKInitializeLogging();
  v7 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Attempting to upload submitted analytics data", buf, 2u);
  }

  os_unfair_lock_lock(&self->_ivarLock);
  readyForAnalyticsSubmission = self->_readyForAnalyticsSubmission;
  os_unfair_lock_unlock(&self->_ivarLock);
  if (!readyForAnalyticsSubmission)
  {
    _healthCloudUploadDirectoryPath = [NSError hk_error:0 description:@"Not ready for submission yet"];
    if (_healthCloudUploadDirectoryPath)
    {
      if (error)
      {
        v11 = _healthCloudUploadDirectoryPath;
        v12 = 0;
        *error = _healthCloudUploadDirectoryPath;
LABEL_41:
        _uploadURL = _healthCloudUploadDirectoryPath;
        goto LABEL_42;
      }

      _HKLogDroppedError();
    }

    v12 = 0;
    goto LABEL_41;
  }

  _uploadURL = [(HDClinicalOptInStudy *)self _uploadURL];
  _healthCloudUploadDirectoryPath = [(HDClinicalOptInStudy *)self _healthCloudUploadDirectoryPath];
  +[NSFileManager defaultManager];
  v37 = v50 = 0;
  v38 = [v37 contentsOfDirectoryAtPath:_healthCloudUploadDirectoryPath error:&v50];
  v39 = v50;
  if (v39)
  {
    if (error)
    {
      *error = v39;
    }

    else
    {
      _HKLogDroppedError();
    }

    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_9C580();
    }
  }

  if ([delegateCopy clinicalOptInStudyShouldAbortUpload:self])
  {
    [NSError hk_assignError:error code:708 description:@"Opt-in upload was asked to defer [before file loop]"];
LABEL_37:
    v12 = 0;
  }

  else
  {
    if ([v38 count])
    {
      errorCopy = error;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      obj = v38;
      v13 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v47;
        v40 = *v47;
        while (2)
        {
          v16 = 0;
          v41 = v14;
          do
          {
            if (*v47 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v46 + 1) + 8 * v16);
            if ([v17 hasPrefix:@"HealthWrap"])
            {
              v18 = [delegateCopy clinicalOptInStudyShouldAbortUpload:self];
              _HKInitializeLogging();
              v19 = HKLogHealthRecords;
              v20 = os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO);
              if (v18)
              {
                if (v20)
                {
                  *buf = 0;
                  _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "Aborting upload of analytics health wrap messages", buf, 2u);
                }

                [NSError hk_assignError:errorCopy code:708 description:@"Opt-in upload was asked to defer [during file loop]"];

                goto LABEL_37;
              }

              if (v20)
              {
                *buf = 138412290;
                v52 = v17;
                _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "Start upload analytics health wrap message: %@", buf, 0xCu);
              }

              v21 = [_healthCloudUploadDirectoryPath stringByAppendingPathComponent:v17];
              v22 = +[NSFileManager defaultManager];
              v45 = 0;
              v23 = [v22 attributesOfItemAtPath:v21 error:&v45];
              v44 = v45;

              if (v23)
              {
                v24 = [v23 objectForKeyedSubscript:NSFileSize];
                v43 = [NSString stringWithFormat:@"%@", v24];

                v25 = [NSMutableURLRequest requestWithURL:_uploadURL];
                [v25 setAllowsCellularAccess:0];
                [v25 setHTTPMethod:@"POST"];
                [v25 setValue:@"application/octet-stream" forHTTPHeaderField:@"Content-Type"];
                [v25 setValue:@"application/json" forHTTPHeaderField:@"Accept"];
                [v25 setValue:v43 forHTTPHeaderField:@"Content-Length"];
                authorizationKey = [(HDClinicalOptInStudy *)self authorizationKey];
                [v25 setValue:authorizationKey forHTTPHeaderField:@"Authorization"];

                subjectToken = [(HDClinicalOptInStudy *)self subjectToken];
                [v25 setValue:subjectToken forHTTPHeaderField:@"X-HDS-Subject-Authorization"];

                session = [(HDClinicalOptInStudy *)self session];
                [session uploadTaskWithStreamedRequest:v25];
                selfCopy = self;
                v30 = _uploadURL;
                v31 = _healthCloudUploadDirectoryPath;
                v33 = v32 = delegateCopy;

                [v33 setTaskDescription:v21];
                [v33 resume];

                delegateCopy = v32;
                _healthCloudUploadDirectoryPath = v31;
                _uploadURL = v30;
                self = selfCopy;

                v15 = v40;
              }

              else
              {
                _HKInitializeLogging();
                v34 = HKLogHealthRecords;
                v15 = v40;
                if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v52 = v21;
                  v53 = 2112;
                  v54 = v44;
                  _os_log_error_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "Failed to get attributes for file at path: %@, error: %@", buf, 0x16u);
                }
              }

              v14 = v41;
            }

            v16 = v16 + 1;
          }

          while (v14 != v16);
          v14 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }
    }

    v12 = 1;
  }

LABEL_42:
  return v12;
}

- (BOOL)_createDirectory:(id)directory error:(id *)error
{
  directoryCopy = directory;
  v6 = objc_alloc_init(NSFileManager);
  if ([v6 fileExistsAtPath:directoryCopy isDirectory:0])
  {
    v7 = 1;
  }

  else
  {
    v13 = 0;
    v7 = [v6 createDirectoryAtPath:directoryCopy withIntermediateDirectories:1 attributes:0 error:&v13];
    v8 = v13;
    if ((v7 & 1) == 0)
    {
      directoryCopy = [NSString stringWithFormat:@"Error creating submission directory %@", directoryCopy];
      v10 = [NSError hk_error:100 description:directoryCopy underlyingError:v8];
      if (v10)
      {
        if (error)
        {
          v11 = v10;
          *error = v10;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  return v7;
}

- (BOOL)_removeDirectory:(id)directory error:(id *)error
{
  directoryCopy = directory;
  v6 = objc_alloc_init(NSFileManager);
  if ([v6 fileExistsAtPath:directoryCopy isDirectory:0])
  {
    v7 = [v6 removeItemAtPath:directoryCopy error:error];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  taskCopy = task;
  dataCopy = data;
  os_unfair_lock_assert_not_owner(&self->_ivarLock);
  os_unfair_lock_lock(&self->_ivarLock);
  responses = [(HDClinicalOptInStudy *)self responses];
  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [taskCopy taskIdentifier]);
  v10 = [responses objectForKey:v9];

  if (!v10)
  {
    v10 = objc_alloc_init(NSMutableData);
    responses = self->_responses;
    v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [taskCopy taskIdentifier]);
    [(NSMutableDictionary *)responses setObject:v10 forKey:v12];
  }

  os_unfair_lock_unlock(&self->_ivarLock);
  [v10 appendData:dataCopy];
}

- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream
{
  taskCopy = task;
  streamCopy = stream;
  os_unfair_lock_assert_not_owner(&self->_ivarLock);
  os_unfair_lock_lock(&self->_ivarLock);
  inputStreams = [(HDClinicalOptInStudy *)self inputStreams];
  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [taskCopy taskIdentifier]);
  v10 = [inputStreams objectForKeyedSubscript:v9];

  if (!v10)
  {
    taskDescription = [taskCopy taskDescription];
    v10 = [NSInputStream inputStreamWithFileAtPath:taskDescription];

    inputStreams2 = [(HDClinicalOptInStudy *)self inputStreams];
    v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [taskCopy taskIdentifier]);
    [inputStreams2 setObject:v10 forKeyedSubscript:v13];
  }

  os_unfair_lock_unlock(&self->_ivarLock);
  streamCopy[2](streamCopy, v10);
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  os_unfair_lock_assert_not_owner(&self->_ivarLock);
  taskDescription = [taskCopy taskDescription];
  if ([taskCopy state] == &dword_0 + 3 && objc_msgSend(taskDescription, "length"))
  {
    os_unfair_lock_lock(&self->_ivarLock);
    responses = [(HDClinicalOptInStudy *)self responses];
    v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [taskCopy taskIdentifier]);
    v12 = [responses objectForKey:v11];

    v13 = [[NSString alloc] initWithBytesNoCopy:objc_msgSend(v12 length:"bytes") encoding:objc_msgSend(v12 freeWhenDone:{"length"), 4, 0}];
    responses2 = [(HDClinicalOptInStudy *)self responses];
    v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [taskCopy taskIdentifier]);
    [responses2 removeObjectForKey:v15];

    os_unfair_lock_unlock(&self->_ivarLock);
    response = [taskCopy response];
    statusCode = [response statusCode];
    if ((statusCode - 200) >= 0x64)
    {
      v31 = statusCode;
      _HKInitializeLogging();
      v32 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218498;
        v37 = v31;
        v38 = 2112;
        v39 = v13;
        v40 = 2112;
        v41 = errorCopy;
        _os_log_error_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "Failed to upload analytics for opt-in study: received status code %ld, response: %@, error: %@", buf, 0x20u);
      }
    }

    else
    {
      v33 = v13;
      os_unfair_lock_lock(&self->_ivarLock);
      inputStreams = [(HDClinicalOptInStudy *)self inputStreams];
      v19 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [taskCopy taskIdentifier]);
      v20 = [inputStreams objectForKeyedSubscript:v19];

      [v20 close];
      inputStreams2 = [(HDClinicalOptInStudy *)self inputStreams];
      v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [taskCopy taskIdentifier]);
      [inputStreams2 removeObjectForKey:v22];

      os_unfair_lock_unlock(&self->_ivarLock);
      v23 = +[NSFileManager defaultManager];
      v35 = 0;
      v24 = [v23 removeItemAtPath:taskDescription error:&v35];
      v25 = v35;

      if (!v24 || v25)
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
        {
          sub_9C5F0();
        }
      }

      _HKInitializeLogging();
      v26 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
      {
        v27 = v26;
        lastPathComponent = [taskDescription lastPathComponent];
        *buf = 138412290;
        v37 = lastPathComponent;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "Successfully uploaded analytics health wrap message: %@", buf, 0xCu);
      }

      delegate = [(HDClinicalOptInStudy *)self delegate];
      lastPathComponent2 = [taskDescription lastPathComponent];
      [delegate clinicalOptInStudy:self hasFinishedUploadingFile:lastPathComponent2];

      v13 = v34;
    }
  }
}

- (id)_keyValueDomain
{
  profile = [(HDClinicalOptInStudy *)self profile];
  if (!profile)
  {
    sub_9C664(a2, self);
  }

  v5 = [[HDKeyValueDomain alloc] initWithCategory:100 domainName:@"healthrecords-study" profile:profile];

  return v5;
}

- (id)_subjectIDKey
{
  v3 = [NSString alloc];
  environment = [(HDClinicalOptInStudy *)self environment];
  v5 = @"staging";
  if (environment == 1)
  {
    v5 = @"testing";
  }

  if (environment == 2)
  {
    v5 = @"production";
  }

  v6 = [v3 initWithFormat:@"subject-id-%@", v5];

  return v6;
}

- (id)_subjectTokenKey
{
  v3 = [NSString alloc];
  environment = [(HDClinicalOptInStudy *)self environment];
  v5 = @"staging";
  if (environment == 1)
  {
    v5 = @"testing";
  }

  if (environment == 2)
  {
    v5 = @"production";
  }

  v6 = [v3 initWithFormat:@"subject-token-%@", v5];

  return v6;
}

- (id)_registrationURL
{
  v3 = objc_alloc_init(NSURLComponents);
  hostname = [(HDClinicalOptInStudy *)self hostname];
  [v3 setHost:hostname];

  studyID = [(HDClinicalOptInStudy *)self studyID];
  v6 = [@"/ingest/v2/register" stringByAppendingPathComponent:studyID];
  [v3 setPath:v6];

  scheme = [(HDClinicalOptInStudy *)self scheme];
  [v3 setScheme:scheme];

  v8 = [NSNumber numberWithUnsignedShort:self->_port];
  [v3 setPort:v8];

  v9 = [v3 URL];

  return v9;
}

- (id)_uploadURL
{
  v3 = objc_alloc_init(NSURLComponents);
  hostname = [(HDClinicalOptInStudy *)self hostname];
  [v3 setHost:hostname];

  [v3 setPath:@"/ingest/v2/submit"];
  scheme = [(HDClinicalOptInStudy *)self scheme];
  [v3 setScheme:scheme];

  v6 = [NSNumber numberWithUnsignedShort:self->_port];
  [v3 setPort:v6];

  v7 = [v3 URL];

  return v7;
}

- (HDClinicalOptInStudyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end