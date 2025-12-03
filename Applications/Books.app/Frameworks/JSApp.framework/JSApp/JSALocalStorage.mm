@interface JSALocalStorage
+ (id)sharedInstance;
- (JSALocalStorage)init;
- (id)getItem:(id)item;
- (unint64_t)length;
- (void)clear;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeItem:(id)item;
- (void)setItem:(id)item value:(id)value;
@end

@implementation JSALocalStorage

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C014;
  block[3] = &unk_B25E8;
  block[4] = self;
  if (qword_CC0C0 != -1)
  {
    dispatch_once(&qword_CC0C0, block);
  }

  v2 = qword_CC0C8;

  return v2;
}

- (JSALocalStorage)init
{
  v17.receiver = self;
  v17.super_class = JSALocalStorage;
  v2 = [(JSALocalStorage *)&v17 init];
  if (v2)
  {
    v4 = [NSUserDefaults alloc];
    v5 = +[BUAppGroup books];
    containerURL = [v5 containerURL];
    v7 = [v4 _initWithSuiteName:@"com.apple.iBooks.JSALocalStorage" container:containerURL];
    scriptingUserDefaults = v2->_scriptingUserDefaults;
    v2->_scriptingUserDefaults = v7;

    if (v2->_scriptingUserDefaults)
    {
      sub_7FBFC(v2);
    }

    else
    {
      v9 = JSALog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_7FF94(v9);
      }
    }

    v2->_accessLock._os_unfair_lock_opaque = 0;
    v10 = objc_alloc_init(NSMutableDictionary);
    values = v2->_values;
    v2->_values = v10;

    objc_opt_class();
    v12 = [(NSUserDefaults *)v2->_scriptingUserDefaults objectForKey:@"ScriptingLocalStorage"];
    v13 = BUDynamicCast();
    v14 = v13;
    v15 = &__NSDictionary0__struct;
    if (v13)
    {
      v15 = v13;
    }

    v16 = v15;

    sub_7FD90(v2, v16);
    [(NSUserDefaults *)v2->_scriptingUserDefaults addObserver:v2 forKeyPath:@"ScriptingLocalStorage" options:1 context:off_C99F0];
  }

  return v2;
}

- (void)dealloc
{
  [(NSUserDefaults *)self->_scriptingUserDefaults removeObserver:self forKeyPath:@"ScriptingLocalStorage" context:off_C99F0];
  v3.receiver = self;
  v3.super_class = JSALocalStorage;
  [(JSALocalStorage *)&v3 dealloc];
}

- (unint64_t)length
{
  os_unfair_lock_lock(&self->_accessLock);
  v3 = [(NSMutableDictionary *)self->_values count];
  os_unfair_lock_unlock(&self->_accessLock);
  return v3;
}

- (id)getItem:(id)item
{
  if (item)
  {
    itemCopy = item;
    os_unfair_lock_lock(&self->_accessLock);
    v5 = [(NSMutableDictionary *)self->_values objectForKeyedSubscript:itemCopy];

    os_unfair_lock_unlock(&self->_accessLock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setItem:(id)item value:(id)value
{
  if (item && value)
  {
    valueCopy = value;
    itemCopy = item;
    os_unfair_lock_lock(&self->_accessLock);
    [(NSMutableDictionary *)self->_values setObject:valueCopy forKeyedSubscript:itemCopy];

    os_unfair_lock_unlock(&self->_accessLock);

    sub_7FE10(self);
  }
}

- (void)removeItem:(id)item
{
  if (item)
  {
    sub_7FFD8(self, item);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (off_C99F0 == context)
  {
    objc_initWeak(&location, self);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_7FED8;
    v18[3] = &unk_B2780;
    v19 = changeCopy;
    objc_copyWeak(&v20, &location);
    v13 = objc_retainBlock(v18);
    v14 = objc_retainBlock(v13);
    if (v14)
    {
      if (+[NSThread isMainThread])
      {
        v14[2](v14);
      }

      else
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_C590;
        block[3] = &unk_B2100;
        v17 = v14;
        dispatch_async(&_dispatch_main_q, block);
      }
    }

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  else
  {
    v15.receiver = self;
    v15.super_class = JSALocalStorage;
    [(JSALocalStorage *)&v15 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)clear
{
  os_unfair_lock_lock(&self->_accessLock);
  [(NSMutableDictionary *)self->_values removeAllObjects];
  os_unfair_lock_unlock(&self->_accessLock);

  sub_7FE10(self);
}

@end