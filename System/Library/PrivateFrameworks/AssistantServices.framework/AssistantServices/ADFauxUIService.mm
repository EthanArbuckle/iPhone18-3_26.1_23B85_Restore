@interface ADFauxUIService
- (ADFauxUIService)init;
- (id)commandsForDomain:(id)domain;
- (id)domains;
- (void)_appPunchOutHandler:(id)handler forDomain:(id)domain completion:(id)completion;
- (void)_unhandledCommand:(id)command error:(id)error forDomain:(id)domain completion:(id)completion;
- (void)handleCommand:(id)command forDomain:(id)domain executionContext:(id)context reply:(id)reply;
@end

@implementation ADFauxUIService

- (id)domains
{
  v4 = SAUIGroupIdentifier;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)_unhandledCommand:(id)command error:(id)error forDomain:(id)domain completion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    errorCopy = error;
    v10 = [[SACommandFailed alloc] initWithReason:@"Command not supported "];
    (*(completion + 2))(completionCopy, v10, errorCopy);
  }
}

- (void)_appPunchOutHandler:(id)handler forDomain:(id)domain completion:(id)completion
{
  handlerCopy = handler;
  domainCopy = domain;
  completionCopy = completion;
  v19 = handlerCopy;
  punchOutUri = [v19 punchOutUri];
  absoluteString = [punchOutUri absoluteString];
  v13 = [absoluteString length];

  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = [[TUDialRequest alloc] initWithURL:punchOutUri];
  if (([v14 isValid] & 1) == 0)
  {

LABEL_10:
    goto LABEL_11;
  }

  if (!v14)
  {
LABEL_11:
    [(ADFauxUIService *)self _unhandledCommand:v19 forDomain:domainCopy completion:completionCopy];
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
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v18, 0);
  }

LABEL_12:
}

- (void)handleCommand:(id)command forDomain:(id)domain executionContext:(id)context reply:(id)reply
{
  commandCopy = command;
  domainCopy = domain;
  contextCopy = context;
  replyCopy = reply;
  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v15 = v14;
    encodedClassName = [commandCopy encodedClassName];
    groupIdentifier = [commandCopy groupIdentifier];
    *buf = 136315650;
    v30 = "[ADFauxUIService handleCommand:forDomain:executionContext:reply:]";
    v31 = 2112;
    v32 = encodedClassName;
    v33 = 2112;
    v34 = groupIdentifier;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Dispatching command (%@) for domain (%@)", buf, 0x20u);
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002BF0C8;
  block[3] = &unk_10051D2A0;
  v24 = commandCopy;
  selfCopy = self;
  v27 = contextCopy;
  v28 = replyCopy;
  v26 = domainCopy;
  v19 = contextCopy;
  v20 = replyCopy;
  v21 = domainCopy;
  v22 = commandCopy;
  dispatch_async(serialQueue, block);
}

- (id)commandsForDomain:(id)domain
{
  v3 = SAUIGroupIdentifier;
  if ([domain isEqualToString:SAUIGroupIdentifier])
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