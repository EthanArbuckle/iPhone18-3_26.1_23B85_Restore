@interface _ADSiriInfoBroadcastLink
- (_ADSiriInfoBroadcastLink)init;
- (id)siriInfoToBeBroadcasted;
- (void)_broadcastSiriInfo:(BOOL)info;
- (void)_configureRapportLinkAndReconnectNow:(BOOL)now;
- (void)_handleFoundRemoteDevice:(id)device;
- (void)_handleUpdatedLocalDevice:(id)device;
- (void)rapportLink:(id)link didFindDevice:(id)device;
- (void)rapportLink:(id)link didUpdateLocalDevice:(id)device;
- (void)rapportLinkDidInterrupt:(id)interrupt;
- (void)rapportLinkDidInvalidate:(id)invalidate;
- (void)updateSiriInfoWithObject:(id)object forKey:(id)key;
@end

@implementation _ADSiriInfoBroadcastLink

- (void)_broadcastSiriInfo:(BOOL)info
{
  infoCopy = info;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000A82B0;
  v13[3] = &unk_10051DFE8;
  v13[4] = self;
  v5 = objc_retainBlock(v13);
  v6 = v5;
  v7 = self->_generation + 1;
  self->_generation = v7;
  if (infoCopy)
  {
    (v5[2])(v5);
  }

  else
  {
    v8 = dispatch_time(0, 250000000);
    queue = self->_queue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000A8380;
    v10[3] = &unk_10051BFA8;
    v10[4] = self;
    v12 = v7;
    v11 = v6;
    dispatch_after(v8, queue, v10);
  }
}

- (void)_handleFoundRemoteDevice:(id)device
{
  deviceCopy = device;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[_ADSiriInfoBroadcastLink _handleFoundRemoteDevice:]";
    v8 = 2112;
    v9 = deviceCopy;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s Remote device %@ found, broadcasting soon...", &v6, 0x16u);
  }

  [(_ADSiriInfoBroadcastLink *)self _broadcastSiriInfo:0];
}

- (void)_handleUpdatedLocalDevice:(id)device
{
  deviceCopy = device;
  if (deviceCopy && !self->_isLocalDeviceAvailble)
  {
    self->_isLocalDeviceAvailble = 1;
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315394;
      v7 = "[_ADSiriInfoBroadcastLink _handleUpdatedLocalDevice:]";
      v8 = 2112;
      v9 = deviceCopy;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s Local device %@ becomes available, broadcasting SiriInfo now...", &v6, 0x16u);
    }

    [(_ADSiriInfoBroadcastLink *)self _broadcastSiriInfo:1];
  }
}

- (void)rapportLinkDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[_ADSiriInfoBroadcastLink rapportLinkDidInvalidate:]";
    v8 = 2112;
    v9 = invalidateCopy;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s %@", &v6, 0x16u);
  }

  [(_ADSiriInfoBroadcastLink *)self _configureRapportLinkAndReconnectNow:0];
}

- (void)rapportLinkDidInterrupt:(id)interrupt
{
  interruptCopy = interrupt;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[_ADSiriInfoBroadcastLink rapportLinkDidInterrupt:]";
    v8 = 2112;
    v9 = interruptCopy;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s %@", &v6, 0x16u);
  }

  [(_ADSiriInfoBroadcastLink *)self _configureRapportLinkAndReconnectNow:1];
}

- (void)rapportLink:(id)link didFindDevice:(id)device
{
  linkCopy = link;
  deviceCopy = device;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315394;
    v10 = "[_ADSiriInfoBroadcastLink rapportLink:didFindDevice:]";
    v11 = 2112;
    v12 = linkCopy;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s %@", &v9, 0x16u);
  }

  [(_ADSiriInfoBroadcastLink *)self _handleFoundRemoteDevice:deviceCopy];
}

- (void)rapportLink:(id)link didUpdateLocalDevice:(id)device
{
  linkCopy = link;
  deviceCopy = device;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315394;
    v10 = "[_ADSiriInfoBroadcastLink rapportLink:didUpdateLocalDevice:]";
    v11 = 2112;
    v12 = linkCopy;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s %@", &v9, 0x16u);
  }

  [(_ADSiriInfoBroadcastLink *)self _handleUpdatedLocalDevice:deviceCopy];
}

- (void)updateSiriInfoWithObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A89CC;
  block[3] = &unk_10051DB68;
  v12 = keyCopy;
  v13 = objectCopy;
  selfCopy = self;
  v9 = objectCopy;
  v10 = keyCopy;
  dispatch_async(queue, block);
}

- (id)siriInfoToBeBroadcasted
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000A8CF0;
  v10 = sub_1000A8D00;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A8D08;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_configureRapportLinkAndReconnectNow:(BOOL)now
{
  nowCopy = now;
  rapportLink = self->_rapportLink;
  if (rapportLink)
  {
    [(ADRapportLink *)rapportLink removeListener:self];
    [(ADRapportLink *)self->_rapportLink invalidate];
    v6 = self->_rapportLink;
    self->_rapportLink = 0;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000A8EA0;
  v13[3] = &unk_10051DFE8;
  v13[4] = self;
  v7 = objc_retainBlock(v13);
  v8 = v7;
  if (nowCopy)
  {
    (v7[2])(v7);
  }

  else
  {
    v9 = dispatch_time(0, 20000000000);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A8F90;
    block[3] = &unk_10051E038;
    block[4] = self;
    v12 = v8;
    dispatch_after(v9, queue, block);
  }
}

- (_ADSiriInfoBroadcastLink)init
{
  v10.receiver = self;
  v10.super_class = _ADSiriInfoBroadcastLink;
  v2 = [(_ADSiriInfoBroadcastLink *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

    v5 = dispatch_queue_create("_ADSiriInfoBroadcastLink", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    siriInfoCache = v2->_siriInfoCache;
    v2->_siriInfoCache = v7;

    [(_ADSiriInfoBroadcastLink *)v2 _configureRapportLinkAndReconnectNow:1];
  }

  return v2;
}

@end