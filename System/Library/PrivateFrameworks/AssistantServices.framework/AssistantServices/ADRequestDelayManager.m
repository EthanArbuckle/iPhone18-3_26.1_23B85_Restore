@interface ADRequestDelayManager
- (ADRequestDelayManager)initWithQueue:(id)a3;
- (ADRequestDelayManagerDelegate)delegate;
- (id)_delayedCommandHandlers;
- (id)_delayedcontextCommandHandlers;
- (void)_beginTimerForContextCommands;
- (void)beginTimerForContextCommands;
- (void)dequeueDelayedCommandsAndSend:(BOOL)a3 completion:(id)a4;
- (void)interceptCommand:(id)a3 completion:(id)a4;
- (void)releaseStoredContextCommandsAndSendCommands:(BOOL)a3;
- (void)startDelaying;
- (void)stopDelayingAndSendCommands:(BOOL)a3 completion:(id)a4;
@end

@implementation ADRequestDelayManager

- (ADRequestDelayManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)interceptCommand:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_100590240 != -1)
  {
    dispatch_once(&qword_100590240, &stru_1005128E0);
  }

  v8 = qword_100590238;
  v9 = [v6 groupIdentifier];
  v10 = [v8 objectForKey:v9];
  if (!v10)
  {

    goto LABEL_9;
  }

  v11 = v10;
  v12 = [v6 groupIdentifier];
  v13 = [v8 objectForKey:v12];
  v14 = [v6 encodedClassName];
  v15 = [v13 containsObject:v14];

  if (!v15)
  {
LABEL_9:
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10012AF3C;
    block[3] = &unk_10051E088;
    block[4] = self;
    v19 = v6;
    v20 = v7;
    dispatch_async(queue, block);

    goto LABEL_10;
  }

  v16 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v22 = "[ADRequestDelayManager interceptCommand:completion:]";
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Allowed command received, bypassing delay: %@", buf, 0x16u);
  }

  (*(v7 + 2))(v7, 1);
LABEL_10:
}

- (void)_beginTimerForContextCommands
{
  v3 = [(ADRequestDelayManager *)self _delayedcontextCommandHandlers];
  v4 = [v3 count];

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

- (void)releaseStoredContextCommandsAndSendCommands:(BOOL)a3
{
  v3 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = [(ADRequestDelayManager *)self _delayedcontextCommandHandlers];
    v12 = 136315650;
    v13 = "[ADRequestDelayManager releaseStoredContextCommandsAndSendCommands:]";
    v14 = 2048;
    v15 = [v7 count];
    v16 = 1024;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Releasing %lu delayed context commands sendCommands: %d", &v12, 0x1Cu);
  }

  while (1)
  {
    v10 = [(ADRequestDelayManager *)self _delayedcontextCommandHandlers];
    v11 = [v10 count];

    if (!v11)
    {
      break;
    }

    v8 = [(ADRequestDelayManager *)self _delayedcontextCommandHandlers];
    v9 = [v8 dequeueObject];
    v9[2](v9, v3);
  }
}

- (void)dequeueDelayedCommandsAndSend:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v11 = a4;
  while (1)
  {
    v6 = [(ADRequestDelayManager *)self _delayedCommandHandlers];
    v7 = [v6 count];

    if (!v7)
    {
      break;
    }

    v8 = [(ADRequestDelayManager *)self _delayedCommandHandlers];
    v9 = [v8 dequeueObject];

    v9[2](v9, v4);
  }

  v10 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11);
    v10 = v11;
  }
}

- (void)stopDelayingAndSendCommands:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012B7B8;
  block[3] = &unk_10051D228;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
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

- (ADRequestDelayManager)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ADRequestDelayManager;
  v6 = [(ADRequestDelayManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
  }

  return v7;
}

@end