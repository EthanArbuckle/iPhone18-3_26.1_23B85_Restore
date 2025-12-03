@interface SANPStartPlayback
- (void)_ad_performWithMediaRemoteService:(id)service replyHandler:(id)handler;
@end

@implementation SANPStartPlayback

- (void)_ad_performWithMediaRemoteService:(id)service replyHandler:(id)handler
{
  serviceCopy = service;
  handlerCopy = handler;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v33 = "[SANPStartPlayback(ADMediaRemote) _ad_performWithMediaRemoteService:replyHandler:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  _ad_mediaRemoteOptions = [(SANPStartPlayback *)self _ad_mediaRemoteOptions];
  v10 = +[ADCommandCenter sharedCommandCenter];
  hashedRouteUIDs = [(SANPStartPlayback *)self hashedRouteUIDs];
  if ([hashedRouteUIDs count])
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1001B6E28;
  v28[3] = &unk_100514FE8;
  v31 = v12;
  v13 = v10;
  v29 = v13;
  v14 = handlerCopy;
  v30 = v14;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001B7074;
  v20[3] = &unk_100514F98;
  v26 = objc_retainBlock(v28);
  v27 = v12;
  v21 = v13;
  selfCopy = self;
  v23 = _ad_mediaRemoteOptions;
  v24 = serviceCopy;
  v25 = v14;
  v15 = v26;
  v16 = serviceCopy;
  v17 = _ad_mediaRemoteOptions;
  v18 = v14;
  v19 = v13;
  [v19 prepareForStartPlaybackWithDestination:v12 intent:0 completion:v20];
}

@end