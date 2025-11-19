@interface ADFauxUIService
- (ADFauxUIService)init;
- (id)commandsForDomain:(id)a3;
- (id)domains;
- (void)_appPunchOutHandler:(id)a3 forDomain:(id)a4 completion:(id)a5;
- (void)_unhandledCommand:(id)a3 error:(id)a4 forDomain:(id)a5 completion:(id)a6;
- (void)handleCommand:(id)a3 forDomain:(id)a4 executionContext:(id)a5 reply:(id)a6;
@end

@implementation ADFauxUIService

- (id)domains
{
  v4 = SAUIGroupIdentifier;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)_unhandledCommand:(id)a3 error:(id)a4 forDomain:(id)a5 completion:(id)a6
{
  if (a6)
  {
    v8 = a6;
    v9 = a4;
    v10 = [[SACommandFailed alloc] initWithReason:@"Command not supported "];
    (*(a6 + 2))(v8, v10, v9);
  }
}

- (void)_appPunchOutHandler:(id)a3 forDomain:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19 = v8;
  v11 = [v19 punchOutUri];
  v12 = [v11 absoluteString];
  v13 = [v12 length];

  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = [[TUDialRequest alloc] initWithURL:v11];
  if (([v14 isValid] & 1) == 0)
  {

LABEL_10:
    goto LABEL_11;
  }

  if (!v14)
  {
LABEL_11:
    [(ADFauxUIService *)self _unhandledCommand:v19 forDomain:v9 completion:v10];
    v14 = 0;
    goto LABEL_12;
  }

  v15 = [v14 URL];
  v16 = sub_100215118(v15);

  v17 = SACommandSucceeded_ptr;
  if (!v16)
  {
    v17 = SACommandFailed_ptr;
  }

  v18 = objc_alloc_init(*v17);
  if (v10)
  {
    v10[2](v10, v18, 0);
  }

LABEL_12:
}

- (void)handleCommand:(id)a3 forDomain:(id)a4 executionContext:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v15 = v14;
    v16 = [v10 encodedClassName];
    v17 = [v10 groupIdentifier];
    *buf = 136315650;
    v30 = "[ADFauxUIService handleCommand:forDomain:executionContext:reply:]";
    v31 = 2112;
    v32 = v16;
    v33 = 2112;
    v34 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Dispatching command (%@) for domain (%@)", buf, 0x20u);
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002BF0C8;
  block[3] = &unk_10051D2A0;
  v24 = v10;
  v25 = self;
  v27 = v12;
  v28 = v13;
  v26 = v11;
  v19 = v12;
  v20 = v13;
  v21 = v11;
  v22 = v10;
  dispatch_async(serialQueue, block);
}

- (id)commandsForDomain:(id)a3
{
  v3 = SAUIGroupIdentifier;
  if ([a3 isEqualToString:SAUIGroupIdentifier])
  {
    v6 = v3;
    v4 = [NSArray arrayWithObjects:&v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (ADFauxUIService)init
{
  v9.receiver = self;
  v9.super_class = ADFauxUIService;
  v2 = [(ADFauxUIService *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("Faux UI Service Queue", v3);

    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v4;

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [(ADService *)v2 setIdentifier:v7];
  }

  return v2;
}

@end