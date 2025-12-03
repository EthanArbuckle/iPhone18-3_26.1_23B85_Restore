@interface ADLocalRequestProvider
+ (id)sharedProvider;
- (ADLocalRequestProvider)init;
- (id)_bundle;
- (void)_getLocalRequestWithType:(int64_t)type bundle:(id)bundle languageCode:(id)code outputVoiceInfo:(id)info completion:(id)completion;
- (void)getLocalRequestWithType:(int64_t)type completion:(id)completion;
@end

@implementation ADLocalRequestProvider

- (void)_getLocalRequestWithType:(int64_t)type bundle:(id)bundle languageCode:(id)code outputVoiceInfo:(id)info completion:(id)completion
{
  bundleCopy = bundle;
  codeCopy = code;
  infoCopy = info;
  completionCopy = completion;
  v15 = SiriCoreUUIDStringCreate();
  v16 = objc_alloc_init(SARequestCompleted);
  v17 = SiriCoreUUIDStringCreate();
  [v16 setAceId:v17];

  [v16 setRefId:v15];
  if (type != 1 || ((+[AFLocalization sharedInstance](AFLocalization, "sharedInstance"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [infoCopy gender], objc_msgSend(infoCopy, "languageCode"), v20 = objc_claimAutoreleasedReturnValue(), (v21 = v20) != 0) ? (v22 = v20) : (v22 = codeCopy), objc_msgSend(v18, "localizedStringForKey:gender:table:bundle:languageCode:", @"ASSISTANT_SERVICES_LOCAL_MUSIC_SUBSCRIPTION_LEASE", v19, 0, bundleCopy, v22), v32 = objc_claimAutoreleasedReturnValue(), v21, v18, v23 = objc_alloc_init(SAResultCallback), SiriCoreUUIDStringCreate(), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "setAceId:", v24), v24, objc_msgSend(v23, "setRefId:", v15), v36 = v16, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v36, 1), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "setCommands:", v25), v25, v26 = bundleCopy, v27 = objc_alloc_init(SAUISayIt), SiriCoreUUIDStringCreate(), v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "setAceId:", v28), v28, objc_msgSend(v27, "setRefId:", v15), objc_msgSend(v27, "setMessage:", v32), v35 = v23, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v35, 1), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "setCallbacks:", v29), v29, v34 = v27, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v34, 1), v30 = objc_claimAutoreleasedReturnValue(), v27, bundleCopy = v26, v23, v32, !v30))
  {
    v33 = v16;
    v30 = [NSArray arrayWithObjects:&v33 count:1];
  }

  v31 = objc_alloc_init(SAStartLocalRequest);
  [v31 setAceId:v15];
  [v31 setClientBoundCommands:v30];
  completionCopy[2](completionCopy, v31);
}

- (id)_bundle
{
  bundle = self->_bundle;
  if (!bundle)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = self->_bundle;
    self->_bundle = v4;

    bundle = self->_bundle;
  }

  return bundle;
}

- (void)getLocalRequestWithType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016404C;
  block[3] = &unk_10051BFA8;
  v10 = completionCopy;
  typeCopy = type;
  block[4] = self;
  v8 = completionCopy;
  dispatch_async(queue, block);
}

- (ADLocalRequestProvider)init
{
  v8.receiver = self;
  v8.super_class = ADLocalRequestProvider;
  v2 = [(ADLocalRequestProvider *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_DEFAULT, 0);

    v5 = dispatch_queue_create("com.apple.assistant.local-request-provider", v4);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

+ (id)sharedProvider
{
  if (qword_100590388 != -1)
  {
    dispatch_once(&qword_100590388, &stru_100513920);
  }

  v3 = qword_100590390;

  return v3;
}

@end