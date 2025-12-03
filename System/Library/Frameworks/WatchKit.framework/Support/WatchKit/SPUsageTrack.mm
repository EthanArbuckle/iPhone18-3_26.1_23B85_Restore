@interface SPUsageTrack
- (SPUsageTrack)init;
- (int)_indexForSize:(unint64_t)size;
- (unsigned)_arrayForApplication:(id)application toGizmo:(BOOL)gizmo;
- (void)_logUsageData;
- (void)_prepareString:(char *)string fromArray:(unsigned int *)array;
- (void)_printSeparator;
- (void)_printString:(char *)string fromArray:(unsigned int *)array;
- (void)dataReceiedFromGizmo:(unint64_t)gizmo application:(id)application;
- (void)dataSentToGizmo:(unint64_t)gizmo application:(id)application;
@end

@implementation SPUsageTrack

- (SPUsageTrack)init
{
  v7.receiver = self;
  v7.super_class = SPUsageTrack;
  v2 = [(SPUsageTrack *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.companionappd.usagetrack", &_dispatch_queue_attr_concurrent);
    usageTrackQueue = v2->_usageTrackQueue;
    v2->_usageTrackQueue = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    [(SPUsageTrack *)v2 setAppUsageTrack:v5];
  }

  return v2;
}

- (void)_prepareString:(char *)string fromArray:(unsigned int *)array
{
  __sprintf_chk(__s2, 0, 0x20uLL, "%6u", *array);
  strcat(string, __s2);
  for (i = 1; i != 13; ++i)
  {
    strcat(string, ", ");
    __sprintf_chk(__s2, 0, 0x20uLL, "%6u", array[i]);
    strcat(string, __s2);
  }
}

- (void)_printString:(char *)string fromArray:(unsigned int *)array
{
  __strcpy_chk();
  [(SPUsageTrack *)self _prepareString:v13 fromArray:array];
  v6 = wk_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446722;
    v8 = "[SPUsageTrack _printString:fromArray:]";
    v9 = 1024;
    v10 = 192;
    v11 = 2082;
    v12 = v13;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: %{public}s", &v7, 0x1Cu);
  }
}

- (void)_printSeparator
{
  strcpy(v10, "          ");
  v2 = 13;
  do
  {
    __strcat_chk();
    --v2;
  }

  while (v2);
  v3 = wk_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446722;
    v5 = "[SPUsageTrack _printSeparator]";
    v6 = 1024;
    v7 = 201;
    v8 = 2082;
    v9 = v10;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: %{public}s", &v4, 0x1Cu);
  }
}

- (void)_logUsageData
{
  usageTrackQueue = self->_usageTrackQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008348;
  block[3] = &unk_100044778;
  block[4] = self;
  dispatch_async(usageTrackQueue, block);
}

- (void)dataSentToGizmo:(unint64_t)gizmo application:(id)application
{
  applicationCopy = application;
  usageTrackQueue = self->_usageTrackQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008750;
  block[3] = &unk_100045430;
  v10 = applicationCopy;
  gizmoCopy = gizmo;
  block[4] = self;
  v8 = applicationCopy;
  dispatch_barrier_async(usageTrackQueue, block);
}

- (void)dataReceiedFromGizmo:(unint64_t)gizmo application:(id)application
{
  applicationCopy = application;
  usageTrackQueue = self->_usageTrackQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000880C;
  block[3] = &unk_100045430;
  v10 = applicationCopy;
  gizmoCopy = gizmo;
  block[4] = self;
  v8 = applicationCopy;
  dispatch_barrier_async(usageTrackQueue, block);
}

- (int)_indexForSize:(unint64_t)size
{
  v3 = 0;
  while (dword_10003E180[v3] < size)
  {
    if (++v3 == 13)
    {
      LODWORD(v3) = -1;
      return v3;
    }
  }

  return v3;
}

- (unsigned)_arrayForApplication:(id)application toGizmo:(BOOL)gizmo
{
  gizmoCopy = gizmo;
  applicationCopy = application;
  appUsageTrack = [(SPUsageTrack *)self appUsageTrack];
  v8 = [appUsageTrack objectForKey:applicationCopy];

  if (!v8)
  {
    v8 = objc_alloc_init(SPAppUsageTrack);
    appUsageTrack2 = [(SPUsageTrack *)self appUsageTrack];
    [appUsageTrack2 setObject:v8 forKeyedSubscript:applicationCopy];
  }

  if (gizmoCopy)
  {
    toGizmoArray = [(SPAppUsageTrack *)v8 toGizmoArray];
  }

  else
  {
    toGizmoArray = [(SPAppUsageTrack *)v8 toCompArray];
  }

  v11 = toGizmoArray;

  return v11;
}

@end