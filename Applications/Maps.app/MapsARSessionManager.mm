@interface MapsARSessionManager
+ (MapsARSessionManager)sharedManager;
- (ARSession)session;
- (MapsARSessionManager)init;
- (id)allSessionOwners;
- (id)currentSessionOwner;
- (void)requestSessionWithOwner:(id)owner;
- (void)resignSessionWithOwner:(id)owner;
@end

@implementation MapsARSessionManager

- (id)currentSessionOwner
{
  sessionOwners = [(MapsARSessionManager *)self sessionOwners];
  objc_sync_enter(sessionOwners);
  sessionOwners2 = [(MapsARSessionManager *)self sessionOwners];
  _maps_lastObject = [sessionOwners2 _maps_lastObject];

  objc_sync_exit(sessionOwners);

  return _maps_lastObject;
}

- (id)allSessionOwners
{
  sessionOwners = [(MapsARSessionManager *)self sessionOwners];
  objc_sync_enter(sessionOwners);
  v4 = +[NSMutableArray array];
  for (i = 0; ; ++i)
  {
    sessionOwners2 = [(MapsARSessionManager *)self sessionOwners];
    v7 = [sessionOwners2 count];

    if (i >= v7)
    {
      break;
    }

    sessionOwners3 = [(MapsARSessionManager *)self sessionOwners];
    objc_initWeak(&location, [sessionOwners3 pointerAtIndex:i]);

    v9 = objc_loadWeakRetained(&location);
    if (v9)
    {
      [v4 addObject:v9];
    }

    objc_destroyWeak(&location);
  }

  v10 = [v4 copy];

  objc_sync_exit(sessionOwners);

  return v10;
}

- (void)resignSessionWithOwner:(id)owner
{
  ownerCopy = owner;
  v5 = sub_100C98900();
  sessionOwners = v5;
  if (ownerCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = ownerCopy;
      _os_log_impl(&_mh_execute_header, sessionOwners, OS_LOG_TYPE_DEFAULT, "%@ is resigning session ownership", &v18, 0xCu);
    }

    sessionOwners = [(MapsARSessionManager *)self sessionOwners];
    objc_sync_enter(sessionOwners);
    sessionOwners2 = [(MapsARSessionManager *)self sessionOwners];
    v8 = [sessionOwners2 _maps_containsObject:ownerCopy];

    if (v8)
    {
      sessionOwners3 = [(MapsARSessionManager *)self sessionOwners];
      _maps_lastObject = [sessionOwners3 _maps_lastObject];

      sessionOwners4 = [(MapsARSessionManager *)self sessionOwners];
      [sessionOwners4 _maps_removeObject:ownerCopy];

      sessionOwners5 = [(MapsARSessionManager *)self sessionOwners];
      _maps_lastObject2 = [sessionOwners5 _maps_lastObject];

      v14 = sub_100C98900();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412546;
        v19 = _maps_lastObject;
        v20 = 2112;
        v21 = _maps_lastObject2;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Session ownership transitioned from %@ to %@", &v18, 0x16u);
      }

      if (_maps_lastObject == ownerCopy)
      {
        session = [(MapsARSessionManager *)self session];
        [ownerCopy sessionManager:self didResignSessionOwnership:session];
      }

      if (_maps_lastObject2 != _maps_lastObject)
      {
        session2 = [(MapsARSessionManager *)self session];
        [_maps_lastObject2 sessionManager:self didGainSessionOwnership:session2];
      }

      if (!_maps_lastObject2)
      {
        session3 = [(MapsARSessionManager *)self session];
        [session3 pause];
      }
    }

    else
    {
      _maps_lastObject = sub_100C98900();
      if (os_log_type_enabled(_maps_lastObject, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = ownerCopy;
        _os_log_impl(&_mh_execute_header, _maps_lastObject, OS_LOG_TYPE_DEFAULT, "Resigning session owner (%@) isn't part of the current session owners; ignoring", &v18, 0xCu);
      }
    }

    objc_sync_exit(sessionOwners);
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v18 = 136315138;
    v19 = "[MapsARSessionManager resignSessionWithOwner:]";
    _os_log_impl(&_mh_execute_header, sessionOwners, OS_LOG_TYPE_ERROR, "%s cannot be called with a nil owner", &v18, 0xCu);
  }
}

- (void)requestSessionWithOwner:(id)owner
{
  ownerCopy = owner;
  v5 = sub_100C98900();
  sessionOwners = v5;
  if (ownerCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = ownerCopy;
      _os_log_impl(&_mh_execute_header, sessionOwners, OS_LOG_TYPE_DEFAULT, "%@ is requesting session ownership", &v13, 0xCu);
    }

    sessionOwners = [(MapsARSessionManager *)self sessionOwners];
    objc_sync_enter(sessionOwners);
    sessionOwners2 = [(MapsARSessionManager *)self sessionOwners];
    _maps_lastObject = [sessionOwners2 _maps_lastObject];

    if (_maps_lastObject == ownerCopy)
    {
      session2 = sub_100C98900();
      if (os_log_type_enabled(session2, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412546;
        v14 = ownerCopy;
        v15 = 2112;
        v16 = ownerCopy;
        _os_log_impl(&_mh_execute_header, session2, OS_LOG_TYPE_DEFAULT, "Current session owner (%@) is equal to the requesting session owner (%@); ignoring", &v13, 0x16u);
      }
    }

    else
    {
      sessionOwners3 = [(MapsARSessionManager *)self sessionOwners];
      [sessionOwners3 _maps_moveOrAddObjectToTop:ownerCopy];

      v10 = sub_100C98900();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412546;
        v14 = _maps_lastObject;
        v15 = 2112;
        v16 = ownerCopy;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Session ownership transitioned from %@ to %@", &v13, 0x16u);
      }

      session = [(MapsARSessionManager *)self session];
      [_maps_lastObject sessionManager:self didResignSessionOwnership:session];

      session2 = [(MapsARSessionManager *)self session];
      [ownerCopy sessionManager:self didGainSessionOwnership:session2];
    }

    objc_sync_exit(sessionOwners);
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315138;
    v14 = "[MapsARSessionManager requestSessionWithOwner:]";
    _os_log_impl(&_mh_execute_header, sessionOwners, OS_LOG_TYPE_ERROR, "%s cannot be called with a nil owner", &v13, 0xCu);
  }
}

- (ARSession)session
{
  session = self->_session;
  if (!session)
  {
    v4 = objc_alloc_init(ARSession);
    v5 = self->_session;
    self->_session = v4;

    v6 = [[ARSessionDebugLogger alloc] initWithSession:self->_session];
    debugLogger = self->_debugLogger;
    self->_debugLogger = v6;

    session = self->_session;
  }

  return session;
}

- (MapsARSessionManager)init
{
  v6.receiver = self;
  v6.super_class = MapsARSessionManager;
  v2 = [(MapsARSessionManager *)&v6 init];
  if (v2)
  {
    v3 = [NSPointerArray pointerArrayWithOptions:2];
    sessionOwners = v2->_sessionOwners;
    v2->_sessionOwners = v3;
  }

  return v2;
}

+ (MapsARSessionManager)sharedManager
{
  if (qword_10195EE50 != -1)
  {
    dispatch_once(&qword_10195EE50, &stru_10164FEA8);
  }

  v3 = qword_10195EE48;

  return v3;
}

@end