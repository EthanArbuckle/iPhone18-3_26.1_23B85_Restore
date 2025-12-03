@interface OSABridgeLinkRemote
+ (void)instantiate;
- (OSABridgeLinkRemote)init;
- (void)enforceQuota;
- (void)transferInternal:(id)internal key:(id)key;
@end

@implementation OSABridgeLinkRemote

+ (void)instantiate
{
  if (qword_10002A430 != -1)
  {
    sub_100015A90();
  }
}

- (OSABridgeLinkRemote)init
{
  if (OSAIsRSDDevice())
  {
    v15.receiver = self;
    v15.super_class = OSABridgeLinkRemote;
    v3 = [(OSABridgeLinkRemote *)&v15 init];
    if (v3)
    {
      v4 = dispatch_queue_create("com.apple.ReportCrash.xfer_queue", 0);
      serial_xfer_queue = v3->_serial_xfer_queue;
      v3->_serial_xfer_queue = v4;

      v6 = objc_opt_new();
      xfer_counts = v3->_xfer_counts;
      v3->_xfer_counts = v6;

      v8 = +[NSUserDefaults standardUserDefaults];
      v9 = [v8 dictionaryForKey:@"xfer-counts"];

      if (v9)
      {
        [(NSMutableDictionary *)v3->_xfer_counts addEntriesFromDictionary:v9];
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_100015AA4(&v3->_xfer_counts);
      }

      v10 = objc_opt_new();
      bridgeEndpoint = v3->_bridgeEndpoint;
      v3->_bridgeEndpoint = v10;

      v12 = [[PCCProxiedDevice alloc] initWithEndpoint:v3->_bridgeEndpoint];
      bridgeLink = v3->_bridgeLink;
      v3->_bridgeLink = v12;

      if (!v3->_bridgeLink)
      {

        v3 = 0;
      }
    }
  }

  else
  {

    return 0;
  }

  return v3;
}

- (void)transferInternal:(id)internal key:(id)key
{
  internalCopy = internal;
  keyCopy = key;
  serial_xfer_queue = self->_serial_xfer_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D004;
  block[3] = &unk_100025098;
  block[4] = self;
  v12 = keyCopy;
  v13 = internalCopy;
  v9 = internalCopy;
  v10 = keyCopy;
  dispatch_async(serial_xfer_queue, block);
}

- (void)enforceQuota
{
  v6 = 0;
  v7 = 0;
  v2 = dirstat_np();
  v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v2 < 0)
  {
    if (v3)
    {
      v4 = __error();
      v5 = strerror(*v4);
      *buf = 136315138;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "failed to dirstat [%s]", buf, 0xCu);
    }
  }

  else if (v3)
  {
    *buf = 134218240;
    v9 = v6;
    v10 = 2048;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "enforceQuota usage: %llu bytes, %llu descendants", buf, 0x16u);
  }
}

@end