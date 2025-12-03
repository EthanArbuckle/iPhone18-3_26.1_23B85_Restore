@interface ADRequestDelayManager
- (ADRequestDelayManager)initWithQueue:(id)queue;
- (ADRequestDelayManagerDelegate)delegate;
- (id)_delayedCommandHandlers;
- (id)_delayedcontextCommandHandlers;
- (void)_beginTimerForContextCommands;
- (void)beginTimerForContextCommands;
- (void)dequeueDelayedCommandsAndSend:(BOOL)send completion:(id)completion;
- (void)interceptCommand:(id)command completion:(id)completion;
- (void)releaseStoredContextCommandsAndSendCommands:(BOOL)commands;
- (void)startDelaying;
- (void)stopDelayingAndSendCommands:(BOOL)commands completion:(id)completion;
@end

@implementation ADRequestDelayManager

- (ADRequestDelayManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)interceptCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  if (qword_100590240 != -1)
  {
    dispatch_once(&qword_100590240, &stru_1005128E0);
  }

  v8 = qword_100590238;
  groupIdentifier = [commandCopy groupIdentifier];
  v10 = [v8 objectForKey:groupIdentifier];
  if (!v10)
  {

    goto LABEL_9;
  }

  v11 = v10;
  groupIdentifier2 = [commandCopy groupIdentifier];
  v13 = [v8 objectForKey:groupIdentifier2];
  encodedClassName = [commandCopy encodedClassName];
  v15 = [v13 containsObject:encodedClassName];

  if (!v15)
  {
LABEL_9:
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10012AF3C;
    block[3] = &unk_10051E088;
    block[4] = self;
    v19 = commandCopy;
    v20 = completionCopy;
    dispatch_async(queue, block);

    goto LABEL_10;
  }

  v16 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v22 = "[ADRequestDelayManager interceptCommand:completion:]";
    v23 = 2112;
    v24 = commandCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Allowed command received, bypassing delay: %@", buf, 0x16u);
  }

  (*(completionCopy + 2))(completionCopy, 1);
LABEL_10:
}

- (void)_beginTimerForContextCommands
{
  _delayedcontextCommandHandlers = [(ADRequestDelayManager *)self _delayedcontextCommandHandlers];
  v4 = [_delayedcontextCommandHandlers count];

  if (v4)
  {
    objc_initWeak(&location, self);
    v5 = [AFWatchdogTimer alloc];
    queue = self->_queue;
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_10012B3C4;
    v14 = &unk_10051B5F0;
    objc_copyWeak(&v15, &location);
    v7 = [v5 initWithTimeoutInterval:queue onQueue:&v11 timeoutHandler:60.0];
    currentContextCommandsTimer = self->_currentContextCommandsTimer;
    self->_currentContextCommandsTimer = v7;

    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v18 = "[ADRequestDelayManager _beginTimerForContextCommands]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Starting/Resetting context commands timer", buf, 0xCu);
    }

    [(AFWatchdogTimer *)self->_currentContextCommandsTimer reset:v11];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v18 = "[ADRequestDelayManager _beginTimerForContextCommands]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Context command queue empty, not starting timer", buf, 0xCu);
    }
  }
}

- (void)beginTimerForContextCommands
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012B4FC;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)releaseStoredContextCommandsAndSendCommands:(BOOL)commands
{
  commandsCopy = commands;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    _delayedcontextCommandHandlers = [(ADRequestDelayManager *)self _delayedcontextCommandHandlers];
    v12 = 136315650;
    v13 = "[ADRequestDelayManager releaseStoredContextCommandsAndSendCommands:]";
    v14 = 2048;
    v15 = [_delayedcontextCommandHandlers count];
    v16 = 1024;
    v17 = commandsCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Releasing %lu delayed context commands sendCommands: %d", &v12, 0x1Cu);
  }

  while (1)
  {
    _delayedcontextCommandHandlers2 = [(ADRequestDelayManager *)self _delayedcontextCommandHandlers];
    v11 = [_delayedcontextCommandHandlers2 count];

    if (!v11)
    {
      break;
    }

    _delayedcontextCommandHandlers3 = [(ADRequestDelayManager *)self _delayedcontextCommandHandlers];
    dequeueObject = [_delayedcontextCommandHandlers3 dequeueObject];
    dequeueObject[2](dequeueObject, commandsCopy);
  }
}

- (void)dequeueDelayedCommandsAndSend:(BOOL)send completion:(id)completion
{
  sendCopy = send;
  completionCopy = completion;
  while (1)
  {
    _delayedCommandHandlers = [(ADRequestDelayManager *)self _delayedCommandHandlers];
    v7 = [_delayedCommandHandlers count];

    if (!v7)
    {
      break;
    }

    _delayedCommandHandlers2 = [(ADRequestDelayManager *)self _delayedCommandHandlers];
    dequeueObject = [_delayedCommandHandlers2 dequeueObject];

    dequeueObject[2](dequeueObject, sendCopy);
  }

  v10 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v10 = completionCopy;
  }
}

- (void)stopDelayingAndSendCommands:(BOOL)commands completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012B7B8;
  block[3] = &unk_10051D228;
  commandsCopy = commands;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(queue, block);
}

- (void)startDelaying
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012B990;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)_delayedcontextCommandHandlers
{
  delayedcontextCommandHandlers = self->_delayedcontextCommandHandlers;
  if (!delayedcontextCommandHandlers)
  {
    v4 = objc_alloc_init(AFQueue);
    v5 = self->_delayedcontextCommandHandlers;
    self->_delayedcontextCommandHandlers = v4;

    delayedcontextCommandHandlers = self->_delayedcontextCommandHandlers;
  }

  return delayedcontextCommandHandlers;
}

- (id)_delayedCommandHandlers
{
  delayedCommandHandlers = self->_delayedCommandHandlers;
  if (!delayedCommandHandlers)
  {
    v4 = objc_alloc_init(AFQueue);
    v5 = self->_delayedCommandHandlers;
    self->_delayedCommandHandlers = v4;

    delayedCommandHandlers = self->_delayedCommandHandlers;
  }

  return delayedCommandHandlers;
}

- (ADRequestDelayManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = ADRequestDelayManager;
  v6 = [(ADRequestDelayManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

@end