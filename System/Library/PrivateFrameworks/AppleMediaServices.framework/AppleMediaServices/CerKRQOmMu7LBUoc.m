@interface CerKRQOmMu7LBUoc
+ (id)scorerWithContext:(id)a3;
- (CerKRQOmMu7LBUoc)initWithContext:(id)a3;
- (id)VkBISyFszEu5z9lr:(id)a3 error:(id *)a4;
- (id)settingsFromContext:(id)a3;
- (void)_safeCallbackWithMessage:(id)a3 uuid:(id)a4 error:(id)a5;
- (void)eVZ8hjC0Tuzwvnqc:(id)a3;
- (void)prepareScoreMessage;
- (void)scoreWithScoreRequest:(id)a3 completionHandler:(id)a4;
- (void)stop;
@end

@implementation CerKRQOmMu7LBUoc

+ (id)scorerWithContext:(id)a3
{
  v3 = a3;
  v4 = [[CerKRQOmMu7LBUoc alloc] initWithContext:v3];

  return v4;
}

- (CerKRQOmMu7LBUoc)initWithContext:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CerKRQOmMu7LBUoc;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B3AB8;
  block[3] = &unk_1002BC730;
  v5 = [(CerKRQOmMu7LBUoc *)&v17 init];
  v16 = v5;
  if (qword_1003040D0[0] != -1)
  {
    dispatch_once(qword_1003040D0, block);
  }

  context = v5->_context;
  v5->_context = v4;
  v7 = v4;

  v8 = dispatch_queue_create("com.apple.libCoreAS.callback", 0);
  callback_queue = v5->_callback_queue;
  v5->_callback_queue = v8;

  v10 = dispatch_queue_create("com.apple.libCoreAS.sid", 0);
  score_id_queue = v5->_score_id_queue;
  v5->_score_id_queue = v10;

  v12 = +[NSMutableDictionary dictionary];
  identifier2UUID = v5->_identifier2UUID;
  v5->_identifier2UUID = v12;

  return v5;
}

- (id)settingsFromContext:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 serverEndpointIdentifier];
  [v4 setEndpointIdentifier:v5];

  [v4 setSettingsType:{objc_msgSend(v3, "eventFrequency") == 2}];
  v6 = [v3 phoneNumber];
  [v4 setPhone:v6];

  v7 = [v3 emailAddress];
  [v4 setEmail:v7];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = [v3 identities];
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      v12 = 0;
      do
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v29 + 1) + 8 * v12);
        v14 = [v13 fullName];
        if (v14 || ([v13 firstName], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
        {
        }

        else
        {
          v26 = [v13 lastName];

          if (!v26)
          {
            goto LABEL_13;
          }
        }

        if (![v13 type])
        {
          v15 = [v4 name];
          if (!v15 || (v16 = v15, v17 = [v13 source], v16, v17 == 2))
          {
            v18 = objc_opt_new();
            v19 = [v13 firstName];
            [v18 setFirstName:v19];

            v20 = [v13 lastName];
            [v18 setLastName:v20];

            v21 = [v13 fullName];
            [v18 setFullName:v21];

            [v4 setName:v18];
          }
        }

LABEL_13:
        v22 = [v13 phoneNumber];
        if (v22)
        {
        }

        else
        {
          v23 = [v13 emailAddress];

          if (!v23)
          {
            goto LABEL_21;
          }
        }

        if ([v13 type] == 1)
        {
          v24 = [v13 phoneNumber];
          [v4 setPPhone:v24];

          v25 = [v13 emailAddress];
          [v4 setPEmail:v25];
        }

        else
        {
          if ([v13 type])
          {
            goto LABEL_21;
          }

          v25 = [v13 phoneNumber];
          [v4 setPhone:v25];
        }

LABEL_21:
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v27 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
      v10 = v27;
    }

    while (v27);
  }

  return v4;
}

- (id)VkBISyFszEu5z9lr:(id)a3 error:(id *)a4
{
  v5 = a3;
  v12 = 0;
  sub_10001B154([v5 bytes], objc_msgSend(v5, "length"), &v12);
  if (v6)
  {
    v7 = v6;
    v8 = [NSString stringWithUTF8String:kCoreASErrorDomainCADecrypt];
    *a4 = [NSError errorWithDomain:v8 code:v7 userInfo:0];

    v9 = 0;
  }

  else
  {
    v10 = [NSData alloc];
    v9 = [v10 initWithBytes:v12 length:{objc_msgSend(v5, "length")}];
  }

  free(v12);

  return v9;
}

- (void)prepareScoreMessage
{
  self->_prepared = 1;
  v3 = +[ktSeAkOyXkmyQNgH sharedInstance];
  v4 = [(CerKRQOmMu7LBUoc *)self context];
  v5 = [(CerKRQOmMu7LBUoc *)self settingsFromContext:v4];

  score_id_queue = self->_score_id_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B4060;
  block[3] = &unk_1002BC780;
  v10 = v3;
  v11 = v5;
  v12 = self;
  v7 = v5;
  v8 = v3;
  dispatch_async(score_id_queue, block);
}

- (void)_safeCallbackWithMessage:(id)a3 uuid:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  callback_queue = self->_callback_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001B42B8;
  v15[3] = &unk_1002BC7A8;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(callback_queue, v15);
}

- (void)scoreWithScoreRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_1001B4F90();
  }

  v8 = objc_retainBlock(v7);
  handler = self->_handler;
  self->_handler = v8;

  if (self->_prepared)
  {
    v10 = +[ktSeAkOyXkmyQNgH sharedInstance];
    score_id_queue = self->_score_id_queue;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001B44D8;
    v15[3] = &unk_1002BC780;
    v15[4] = self;
    v16 = v6;
    v17 = v10;
    v12 = v10;
    dispatch_async(score_id_queue, v15);
  }

  else
  {
    v13 = [NSString stringWithUTF8String:kCoreASErrorDomainCA];
    v18 = NSLocalizedDescriptionKey;
    v19 = @"prepareScoreMessage wasn't called prior to scoreMessageWithNonce:completionHandler:";
    v14 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v12 = [NSError errorWithDomain:v13 code:-21 userInfo:v14];

    [(CerKRQOmMu7LBUoc *)self _safeCallbackWithMessage:0 uuid:0 error:v12];
  }
}

- (void)stop
{
  v3 = [NSString stringWithUTF8String:kCoreASErrorDomainCA];
  v6 = NSLocalizedDescriptionKey;
  v7 = @"Timeout Error";
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v5 = [NSError errorWithDomain:v3 code:40000 userInfo:v4];
  [(CerKRQOmMu7LBUoc *)self _safeCallbackWithMessage:0 uuid:0 error:v5];
}

- (void)eVZ8hjC0Tuzwvnqc:(id)a3
{
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_INFO, "confirmFinished", v4, 2u);
  }
}

@end