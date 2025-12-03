@interface PKUISSBannerHandle
- (void)configureForRequest:(id)request withState:(id)state didStartReply:(id)reply;
- (void)detachWithReply:(id)reply;
- (void)displayWithReply:(id)reply;
- (void)updateState:(id)state withReply:(id)reply;
@end

@implementation PKUISSBannerHandle

- (void)configureForRequest:(id)request withState:(id)state didStartReply:(id)reply
{
  requestCopy = request;
  stateCopy = state;
  replyCopy = reply;
  v12 = replyCopy;
  if (!self->_invalidated)
  {
    if (self->_phase)
    {
      v13 = PKLogFacilityTypeGetObject();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
LABEL_6:

        sub_1000011B0(self, 0);
        goto LABEL_7;
      }

      v20 = 134217984;
      selfCopy5 = self;
      v14 = "PKUISSBannerHandle (%p): out of order - configure - invalidating.";
LABEL_5:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, &v20, 0xCu);
      goto LABEL_6;
    }

    self->_phase = 1;
    if (!replyCopy)
    {
      v13 = PKLogFacilityTypeGetObject();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }

      v20 = 134217984;
      selfCopy5 = self;
      v14 = "PKUISSBannerHandle (%p): missing reply - invalidating.";
      goto LABEL_5;
    }

    if (!requestCopy)
    {
      v13 = PKLogFacilityTypeGetObject();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }

      v20 = 134217984;
      selfCopy5 = self;
      v14 = "PKUISSBannerHandle (%p): missing request - invalidating.";
      goto LABEL_5;
    }

    if (stateCopy)
    {
      type = [stateCopy type];
      if (type != [requestCopy type])
      {
        v13 = PKLogFacilityTypeGetObject();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_6;
        }

        v20 = 134217984;
        selfCopy5 = self;
        v14 = "PKUISSBannerHandle (%p): type mismatch - invalidating.";
        goto LABEL_5;
      }
    }

    objc_storeStrong(&self->_request, request);
    objc_storeStrong(&self->_clientState, state);
    v16 = objc_retainBlock(v12);
    didStartReply = self->_didStartReply;
    self->_didStartReply = v16;

    v18 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      type2 = [(PKBannerHandleRequest *)self->_request type];
      v20 = 134218240;
      selfCopy5 = self;
      v22 = 2048;
      v23 = type2;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "PKUISSBannerHandle (%p): configured for %ld.", &v20, 0x16u);
    }
  }

LABEL_7:
}

- (void)updateState:(id)state withReply:(id)reply
{
  stateCopy = state;
  replyCopy = reply;
  if (!self->_invalidated)
  {
    phase = self->_phase;
    if (self->_phase)
    {
      if (stateCopy)
      {
        type = [stateCopy type];
        if (type != [(PKBannerHandleRequest *)self->_request type])
        {
          v11 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v17 = 134217984;
            selfCopy4 = self;
            v12 = "PKUISSBannerHandle (%p): type mismatch - ignoring state update.";
            goto LABEL_20;
          }

LABEL_21:

          replyCopy[2](replyCopy, 0);
          goto LABEL_22;
        }

        phase = self->_phase;
      }

      if (phase == 4)
      {
        v11 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 134217984;
          selfCopy4 = self;
          v12 = "PKUISSBannerHandle (%p): ignoring state update.";
LABEL_20:
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, &v17, 0xCu);
          goto LABEL_21;
        }

        goto LABEL_21;
      }

      v14 = self->_clientState;
      objc_storeStrong(&self->_clientState, state);
      v15 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 134217984;
        selfCopy4 = self;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "PKUISSBannerHandle (%p): state updated.", &v17, 0xCu);
      }

      replyCopy[2](replyCopy, 0);
      if (stateCopy | v14 && (self->_phase & 0xFE) == 2)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained bannerHandle:self didChangeFromClientState:v14];
      }
    }

    else
    {
      v13 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 134217984;
        selfCopy4 = self;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "PKUISSBannerHandle (%p): out of order - update state - invalidating.", &v17, 0xCu);
      }

      sub_1000011B0(self, 0);
    }
  }

LABEL_22:
}

- (void)displayWithReply:(id)reply
{
  replyCopy = reply;
  if (self->_invalidated)
  {
    goto LABEL_13;
  }

  if (self->_phase != 1)
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PKUISSBannerHandle (%p): out of order - display - invalidating.", buf, 0xCu);
    }

    goto LABEL_12;
  }

  request = self->_request;
  if (!request)
  {
    goto LABEL_12;
  }

  type = [(PKBannerHandleRequest *)request type];
  if (type == 2)
  {
    v7 = v13;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v8 = sub_10000244C;
    goto LABEL_17;
  }

  if (type == 1)
  {
    if (PKSystemApertureIsAvailable())
    {
      v7 = v14;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v8 = sub_1000023F8;
      goto LABEL_17;
    }

LABEL_12:
    sub_1000011B0(self, 0);
    goto LABEL_13;
  }

  if (type || !PKSystemApertureIsAvailable())
  {
    goto LABEL_12;
  }

  v7 = v15;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v8 = sub_1000023A4;
LABEL_17:
  v7[2] = v8;
  v7[3] = &unk_10000C378;
  v7[4] = self;
  v10 = objc_retainBlock(v7);
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = v10;
  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "PKUISSBannerHandle (%p): started.", buf, 0xCu);
  }

  replyCopy[2](replyCopy, 0);
  self->_phase = 2;
  v11[2](v11);

LABEL_13:
}

- (void)detachWithReply:(id)reply
{
  replyCopy = reply;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PKUISSBannerHandle (%p): received remote detach.", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v11 = 0x2020000000;
  v12 = UIBackgroundTaskInvalid;
  v6 = +[UIApplication sharedApplication];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000268C;
  v9[3] = &unk_10000C300;
  v9[4] = &buf;
  v7 = [v6 beginBackgroundTaskWithName:@"banner.detach.receive" expirationHandler:v9];
  *(*(&buf + 1) + 24) = v7;

  self->_detached = 1;
  replyCopy[2](replyCopy, 0);
  sub_1000011B0(self, 0);
  if (*(*(&buf + 1) + 24) != UIBackgroundTaskInvalid)
  {
    v8 = +[UIApplication sharedApplication];
    [v8 endBackgroundTask:*(*(&buf + 1) + 24)];

    *(*(&buf + 1) + 24) = UIBackgroundTaskInvalid;
  }

  _Block_object_dispose(&buf, 8);
}

@end