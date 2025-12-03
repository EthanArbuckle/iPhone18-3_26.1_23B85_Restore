@interface ICIntentsExtension
- (ICIntentsExtension)init;
- (id)handlerForIntent:(id)intent;
- (void)dealloc;
- (void)noteContextDidUnlockObjectCreation:(id)creation;
- (void)noteContextWillLockObjectCreation:(id)creation;
- (void)persistentContainerDidUnlockDatabase:(id)database;
- (void)persistentContainerWillLockDatabase:(id)database;
@end

@implementation ICIntentsExtension

- (ICIntentsExtension)init
{
  v7.receiver = self;
  v7.super_class = ICIntentsExtension;
  v2 = [(ICIntentsExtension *)&v7 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"persistentContainerWillLockDatabase:" name:ICPersistentContainerWillLockDatabaseNotification object:0];
    [v3 addObserver:v2 selector:"persistentContainerDidUnlockDatabase:" name:ICPersistentContainerDidUnlockDatabaseNotification object:0];
    databaseLockingBackgroundTask = v2->_databaseLockingBackgroundTask;
    v2->_databaseLockingBackgroundTask = 0;

    [v3 addObserver:v2 selector:"noteContextWillLockObjectCreation:" name:NoteContextWillLockObjectCreationNotification object:0];
    [v3 addObserver:v2 selector:"noteContextDidUnlockObjectCreation:" name:NoteContextDidUnlockObjectCreationNotification object:0];
    objectCreationLockingBackgroundTask = v2->_objectCreationLockingBackgroundTask;
    v2->_objectCreationLockingBackgroundTask = 0;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  if (self->_databaseLockingBackgroundTask)
  {
    v4 = os_log_create("com.apple.notes", "Intents");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_100012B9C();
    }

    [(RBSAssertion *)self->_databaseLockingBackgroundTask invalidate];
    databaseLockingBackgroundTask = self->_databaseLockingBackgroundTask;
    self->_databaseLockingBackgroundTask = 0;
  }

  if (self->_objectCreationLockingBackgroundTask)
  {
    v6 = os_log_create("com.apple.notes", "Intents");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100012BD0();
    }

    [(RBSAssertion *)self->_objectCreationLockingBackgroundTask invalidate];
    objectCreationLockingBackgroundTask = self->_objectCreationLockingBackgroundTask;
    self->_objectCreationLockingBackgroundTask = 0;
  }

  v8.receiver = self;
  v8.super_class = ICIntentsExtension;
  [(ICIntentsExtension *)&v8 dealloc];
}

- (void)persistentContainerWillLockDatabase:(id)database
{
  databaseCopy = database;
  v5 = os_log_create("com.apple.notes", "Intents");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[ICIntentsExtension persistentContainerWillLockDatabase:]";
    v18 = 1024;
    v19 = 69;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s:%d", buf, 0x12u);
  }

  v6 = +[RBSTarget currentProcess];
  v7 = [RBSDomainAttribute attributeWithDomain:@"com.apple.common" name:@"FinishTaskInterruptable"];
  v8 = [RBSAssertion alloc];
  v15 = v7;
  v9 = [NSArray arrayWithObjects:&v15 count:1];
  v10 = [v8 initWithExplanation:@"Finish Database-locking operation" target:v6 attributes:v9];
  databaseLockingBackgroundTask = self->_databaseLockingBackgroundTask;
  self->_databaseLockingBackgroundTask = v10;

  objc_initWeak(buf, self);
  v12 = self->_databaseLockingBackgroundTask;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100001DC0;
  v13[3] = &unk_100020740;
  objc_copyWeak(&v14, buf);
  [(RBSAssertion *)v12 acquireWithInvalidationHandler:v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (void)persistentContainerDidUnlockDatabase:(id)database
{
  v4 = os_log_create("com.apple.notes", "Intents");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[ICIntentsExtension persistentContainerDidUnlockDatabase:]";
    v9 = 1024;
    v10 = 86;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s:%d", &v7, 0x12u);
  }

  if (self->_databaseLockingBackgroundTask)
  {
    v5 = os_log_create("com.apple.notes", "Intents");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100012C04();
    }

    [(RBSAssertion *)self->_databaseLockingBackgroundTask invalidate];
    databaseLockingBackgroundTask = self->_databaseLockingBackgroundTask;
    self->_databaseLockingBackgroundTask = 0;
  }
}

- (void)noteContextWillLockObjectCreation:(id)creation
{
  creationCopy = creation;
  v5 = os_log_create("com.apple.notes", "Intents");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[ICIntentsExtension noteContextWillLockObjectCreation:]";
    v18 = 1024;
    v19 = 98;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s:%d", buf, 0x12u);
  }

  v6 = +[RBSTarget currentProcess];
  v7 = [RBSDomainAttribute attributeWithDomain:@"com.apple.common" name:@"FinishTaskInterruptable"];
  v8 = [RBSAssertion alloc];
  v15 = v7;
  v9 = [NSArray arrayWithObjects:&v15 count:1];
  v10 = [v8 initWithExplanation:@"Finish object creation-locking operation" target:v6 attributes:v9];
  objectCreationLockingBackgroundTask = self->_objectCreationLockingBackgroundTask;
  self->_objectCreationLockingBackgroundTask = v10;

  objc_initWeak(buf, self);
  v12 = self->_objectCreationLockingBackgroundTask;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000021F8;
  v13[3] = &unk_100020740;
  objc_copyWeak(&v14, buf);
  [(RBSAssertion *)v12 acquireWithInvalidationHandler:v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (void)noteContextDidUnlockObjectCreation:(id)creation
{
  v4 = os_log_create("com.apple.notes", "Intents");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[ICIntentsExtension noteContextDidUnlockObjectCreation:]";
    v9 = 1024;
    v10 = 115;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s:%d", &v7, 0x12u);
  }

  if (self->_objectCreationLockingBackgroundTask)
  {
    v5 = os_log_create("com.apple.notes", "Intents");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100012C38();
    }

    [(RBSAssertion *)self->_objectCreationLockingBackgroundTask invalidate];
    objectCreationLockingBackgroundTask = self->_objectCreationLockingBackgroundTask;
    self->_objectCreationLockingBackgroundTask = 0;
  }
}

- (id)handlerForIntent:(id)intent
{
  intentCopy = intent;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = off_100020340;
LABEL_11:
    v5 = objc_alloc_init(*v4);
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = off_100020338;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = off_100020330;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = off_100020328;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = &off_100020348;
    goto LABEL_11;
  }

  v5 = 0;
LABEL_12:

  return v5;
}

@end