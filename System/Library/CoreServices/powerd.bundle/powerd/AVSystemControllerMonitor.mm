@interface AVSystemControllerMonitor
- (AVSystemControllerMonitor)init;
- (AVSystemControllerMonitor)initWithBlock:(id)block;
- (BOOL)subscribe:(id)subscribe;
- (void)notificationDispatch:(BOOL)dispatch;
- (void)notificationHandler:(id)handler;
- (void)setupAVSystemController;
@end

@implementation AVSystemControllerMonitor

- (AVSystemControllerMonitor)init
{
  v7.receiver = self;
  v7.super_class = AVSystemControllerMonitor;
  v2 = [(AVSystemControllerMonitor *)&v7 init];
  v3 = objc_alloc_init(NSMutableArray);
  subscribers = v2->_subscribers;
  v2->_subscribers = v3;

  if (v2->_subscribers && ([(AVSystemControllerMonitor *)v2 setupAVSystemController], v2->_avSystemController))
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (AVSystemControllerMonitor)initWithBlock:(id)block
{
  blockCopy = block;
  v5 = [(AVSystemControllerMonitor *)self init];
  v6 = v5;
  if (v5)
  {
    [(AVSystemControllerMonitor *)v5 subscribe:blockCopy];
    v7 = v6;
  }

  return v6;
}

- (void)notificationDispatch:(BOOL)dispatch
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_subscribers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v8 + 1) + 8 * v7) + 16))(*(*(&v8 + 1) + 8 * v7));
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)notificationHandler:(id)handler
{
  handlerCopy = handler;
  if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEBUG))
  {
    sub_100068534();
  }

  userInfo = [handlerCopy userInfo];
  v6 = userInfo;
  if (userInfo)
  {
    v7 = [userInfo objectForKey:AVSystemController_WombatEnabledDidChangeNotificationParameter];
    v8 = v7;
    if (v7)
    {
      -[AVSystemControllerMonitor notificationDispatch:](self, "notificationDispatch:", [v7 BOOLValue]);
    }

    else if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_FAULT))
    {
      sub_1000685A4();
    }
  }

  else if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_FAULT))
  {
    sub_100068618();
  }
}

- (void)setupAVSystemController
{
  v3 = qword_1000AB980;
  if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting up AVSC listener\n", v12, 2u);
  }

  if (self->_avSystemController)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:self name:AVSystemController_ServerConnectionDiedNotification object:self->_avSystemController];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:self name:AVSystemController_WombatEnabledDidChangeNotification object:self->_avSystemController];

    sub_100041724();
    avSystemController = self->_avSystemController;
    self->_avSystemController = 0;
  }

  v7 = +[AVSystemController sharedAVSystemController];
  v8 = self->_avSystemController;
  self->_avSystemController = v7;

  if (self->_avSystemController)
  {
    v13[0] = AVSystemController_ServerConnectionDiedNotification;
    v13[1] = AVSystemController_WombatEnabledDidChangeNotification;
    v9 = [NSArray arrayWithObjects:v13 count:2];
    if (v9)
    {
      [(AVSystemController *)self->_avSystemController setAttribute:v9 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];
      v10 = +[NSNotificationCenter defaultCenter];
      [v10 addObserver:self selector:"setupAVSystemController" name:AVSystemController_ServerConnectionDiedNotification object:self->_avSystemController];

      v11 = +[NSNotificationCenter defaultCenter];
      [v11 addObserver:self selector:"notificationHandler:" name:AVSystemController_WombatEnabledDidChangeNotification object:self->_avSystemController];

      [(AVSystemControllerMonitor *)self notificationDispatch:[(AVSystemControllerMonitor *)self wombatActive]];
    }
  }

  else if (os_log_type_enabled(qword_1000AB980, OS_LOG_TYPE_ERROR))
  {
    sub_10006868C();
  }
}

- (BOOL)subscribe:(id)subscribe
{
  subscribers = self->_subscribers;
  subscribeCopy = subscribe;
  v6 = objc_retainBlock(subscribeCopy);
  [(NSMutableArray *)subscribers addObject:v6];

  (*(subscribeCopy + 2))(subscribeCopy, [(AVSystemControllerMonitor *)self wombatActive]);
  return 1;
}

@end