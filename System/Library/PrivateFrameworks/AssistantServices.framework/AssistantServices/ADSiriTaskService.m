@interface ADSiriTaskService
- (ADSiriTaskService)initWithCommandType:(id)a3 requestTransformer:(id)a4 responseTransformer:(id)a5 requestHandler:(id)a6;
- (BOOL)implementsCommand:(id)a3 forDomain:(id)a4;
- (id)_informCommandCenter:(id)a3 willPerformLaunchApp:(id)a4;
- (id)commandsForDomain:(id)a3;
- (id)domains;
- (void)handleCommand:(id)a3 forDomain:(id)a4 executionContext:(id)a5 reply:(id)a6;
@end

@implementation ADSiriTaskService

- (void)handleCommand:(id)a3 forDomain:(id)a4 executionContext:(id)a5 reply:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v22 = "[ADSiriTaskService handleCommand:forDomain:executionContext:reply:]";
    v23 = 2112;
    v24 = self;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s %@ handling %@", buf, 0x20u);
  }

  queue = self->_queue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100282D38;
  v17[3] = &unk_10051E0D8;
  v17[4] = self;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v14 = v10;
  v15 = v11;
  v16 = v9;
  dispatch_async(queue, v17);
}

- (BOOL)implementsCommand:(id)a3 forDomain:(id)a4
{
  v6 = a3;
  commandType = self->_commandType;
  v8 = a4;
  v9 = [(ADServiceCommandType *)commandType domainName];
  LODWORD(commandType) = [v8 isEqualToString:v9];

  if (commandType)
  {
    v10 = [(ADServiceCommandType *)self->_commandType className];
    v11 = [v6 isEqualToString:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)commandsForDomain:(id)a3
{
  commandType = self->_commandType;
  v5 = a3;
  v6 = [(ADServiceCommandType *)commandType domainName];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = [(ADServiceCommandType *)self->_commandType className];
    v11 = v8;
    v9 = [NSArray arrayWithObjects:&v11 count:1];
  }

  else
  {
    v9 = &__NSArray0__struct;
  }

  return v9;
}

- (id)domains
{
  v2 = [(ADServiceCommandType *)self->_commandType domainName];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (id)_informCommandCenter:(id)a3 willPerformLaunchApp:(id)a4
{
  v5 = a3;
  v6 = [a4 launchId];
  [v5 willProcessAppLaunchWithBundleIdentifier:v6];
  objc_initWeak(&location, v5);

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1002836B4;
  v10[3] = &unk_10051ADC0;
  objc_copyWeak(&v12, &location);
  v11 = v6;
  v7 = v6;
  v8 = objc_retainBlock(v10);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v8;
}

- (ADSiriTaskService)initWithCommandType:(id)a3 requestTransformer:(id)a4 responseTransformer:(id)a5 requestHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v30.receiver = self;
  v30.super_class = ADSiriTaskService;
  v15 = [(ADSiriTaskService *)&v30 init];
  if (v15)
  {
    v16 = [NSString alloc];
    [v11 qualifiedCommandName];
    v17 = v29 = v12;
    v18 = [v16 initWithFormat:@"SiriTaskService-%@", v17];

    v19 = [v18 UTF8String];
    dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v28 = v11;
    v20 = v14;
    v22 = v21 = v13;
    v23 = dispatch_queue_create(v19, v22);

    queue = v15->_queue;
    v15->_queue = v23;

    objc_storeStrong(&v15->_commandType, a3);
    objc_storeStrong(&v15->_requestTransformer, a4);
    objc_storeStrong(&v15->_responseTransformer, a5);
    objc_storeStrong(&v15->_requestHandler, a6);
    v25 = [(ADServiceCommandType *)v15->_commandType qualifiedCommandName];
    v26 = [@"SiriTaskService-" stringByAppendingString:v25];
    [(ADService *)v15 setIdentifier:v26];

    v13 = v21;
    v14 = v20;
    v11 = v28;

    v12 = v29;
  }

  return v15;
}

@end