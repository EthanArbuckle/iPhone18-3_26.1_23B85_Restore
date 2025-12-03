@interface ADSiriTaskService
- (ADSiriTaskService)initWithCommandType:(id)type requestTransformer:(id)transformer responseTransformer:(id)responseTransformer requestHandler:(id)handler;
- (BOOL)implementsCommand:(id)command forDomain:(id)domain;
- (id)_informCommandCenter:(id)center willPerformLaunchApp:(id)app;
- (id)commandsForDomain:(id)domain;
- (id)domains;
- (void)handleCommand:(id)command forDomain:(id)domain executionContext:(id)context reply:(id)reply;
@end

@implementation ADSiriTaskService

- (void)handleCommand:(id)command forDomain:(id)domain executionContext:(id)context reply:(id)reply
{
  commandCopy = command;
  contextCopy = context;
  replyCopy = reply;
  v12 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v22 = "[ADSiriTaskService handleCommand:forDomain:executionContext:reply:]";
    v23 = 2112;
    selfCopy = self;
    v25 = 2112;
    v26 = commandCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s %@ handling %@", buf, 0x20u);
  }

  queue = self->_queue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100282D38;
  v17[3] = &unk_10051E0D8;
  v17[4] = self;
  v18 = commandCopy;
  v19 = contextCopy;
  v20 = replyCopy;
  v14 = contextCopy;
  v15 = replyCopy;
  v16 = commandCopy;
  dispatch_async(queue, v17);
}

- (BOOL)implementsCommand:(id)command forDomain:(id)domain
{
  commandCopy = command;
  commandType = self->_commandType;
  domainCopy = domain;
  domainName = [(ADServiceCommandType *)commandType domainName];
  LODWORD(commandType) = [domainCopy isEqualToString:domainName];

  if (commandType)
  {
    className = [(ADServiceCommandType *)self->_commandType className];
    v11 = [commandCopy isEqualToString:className];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)commandsForDomain:(id)domain
{
  commandType = self->_commandType;
  domainCopy = domain;
  domainName = [(ADServiceCommandType *)commandType domainName];
  v7 = [domainCopy isEqualToString:domainName];

  if (v7)
  {
    className = [(ADServiceCommandType *)self->_commandType className];
    v11 = className;
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
  domainName = [(ADServiceCommandType *)self->_commandType domainName];
  v5 = domainName;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (id)_informCommandCenter:(id)center willPerformLaunchApp:(id)app
{
  centerCopy = center;
  launchId = [app launchId];
  [centerCopy willProcessAppLaunchWithBundleIdentifier:launchId];
  objc_initWeak(&location, centerCopy);

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1002836B4;
  v10[3] = &unk_10051ADC0;
  objc_copyWeak(&v12, &location);
  v11 = launchId;
  v7 = launchId;
  v8 = objc_retainBlock(v10);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v8;
}

- (ADSiriTaskService)initWithCommandType:(id)type requestTransformer:(id)transformer responseTransformer:(id)responseTransformer requestHandler:(id)handler
{
  typeCopy = type;
  transformerCopy = transformer;
  responseTransformerCopy = responseTransformer;
  handlerCopy = handler;
  v30.receiver = self;
  v30.super_class = ADSiriTaskService;
  v15 = [(ADSiriTaskService *)&v30 init];
  if (v15)
  {
    v16 = [NSString alloc];
    [typeCopy qualifiedCommandName];
    v17 = v29 = transformerCopy;
    v18 = [v16 initWithFormat:@"SiriTaskService-%@", v17];

    uTF8String = [v18 UTF8String];
    dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v28 = typeCopy;
    v20 = handlerCopy;
    v22 = v21 = responseTransformerCopy;
    v23 = dispatch_queue_create(uTF8String, v22);

    queue = v15->_queue;
    v15->_queue = v23;

    objc_storeStrong(&v15->_commandType, type);
    objc_storeStrong(&v15->_requestTransformer, transformer);
    objc_storeStrong(&v15->_responseTransformer, responseTransformer);
    objc_storeStrong(&v15->_requestHandler, handler);
    qualifiedCommandName = [(ADServiceCommandType *)v15->_commandType qualifiedCommandName];
    v26 = [@"SiriTaskService-" stringByAppendingString:qualifiedCommandName];
    [(ADService *)v15 setIdentifier:v26];

    responseTransformerCopy = v21;
    handlerCopy = v20;
    typeCopy = v28;

    transformerCopy = v29;
  }

  return v15;
}

@end