@interface AceObject
- (id)_ad_mediaRemoteOptions;
- (void)_ad_setPayloadOnRequestInfo:(id)a3;
- (void)_adui_notifyOthersOfArrival;
- (void)adClientConnection_enterRequestGroup:(id)a3;
- (void)adClientConnection_leaveRequestGroup;
@end

@implementation AceObject

- (void)adClientConnection_leaveRequestGroup
{
  v3 = objc_getAssociatedObject(self, off_10058ED10);
  if (v3)
  {
    v4 = v3;
    [v3 invokeWithSignal:0];
    objc_setAssociatedObject(self, off_10058ED10, 0, 1);
    v3 = v4;
  }
}

- (id)_ad_mediaRemoteOptions
{
  v3 = [[NSMutableDictionary alloc] initWithCapacity:4];
  v4 = [(AceObject *)self refId];
  if (v4)
  {
    [v3 setObject:v4 forKey:kMRMediaRemoteOptionContextID];
  }

  [v3 setObject:AFSiriMediaRemoteIdentifier forKey:kMRMediaRemoteOptionRemoteControlInterfaceIdentifier];

  return v3;
}

- (void)_ad_setPayloadOnRequestInfo:(id)a3
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[AceObject(AFRequestInfo) _ad_setPayloadOnRequestInfo:]";
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Don't know how to set push off request payload", &v4, 0xCu);
  }
}

- (void)_adui_notifyOthersOfArrival
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = "[AceObject(ADUIService) _adui_notifyOthersOfArrival]";
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s This command is not supposed to notify others of arrival", &v3, 0xCu);
  }
}

- (void)adClientConnection_enterRequestGroup:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    dispatch_group_enter(v4);
    v6 = [(AceObject *)self description];
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v15 = "[AceObject(ADClientConnectionSupport) adClientConnection_enterRequestGroup:]";
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s Entered request group %@ for command %@.", buf, 0x20u);
    }

    v8 = [AFSafetyBlock alloc];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10032AA84;
    v11[3] = &unk_10051C128;
    v12 = v5;
    v13 = v6;
    v9 = v6;
    v10 = [v8 initWithBlock:v11];
    objc_setAssociatedObject(self, off_10058ED10, v10, 1);
  }
}

@end