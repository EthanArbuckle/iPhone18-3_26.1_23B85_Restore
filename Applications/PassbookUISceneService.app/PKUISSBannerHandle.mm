@interface PKUISSBannerHandle
- (void)configureForRequest:(id)a3 withState:(id)a4 didStartReply:(id)a5;
- (void)detachWithReply:(id)a3;
- (void)displayWithReply:(id)a3;
- (void)updateState:(id)a3 withReply:(id)a4;
@end

@implementation PKUISSBannerHandle

- (void)configureForRequest:(id)a3 withState:(id)a4 didStartReply:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
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
      v21 = self;
      v14 = "PKUISSBannerHandle (%p): out of order - configure - invalidating.";
LABEL_5:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, &v20, 0xCu);
      goto LABEL_6;
    }

    self->_phase = 1;
    if (!v11)
    {
      v13 = PKLogFacilityTypeGetObject();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }

      v20 = 134217984;
      v21 = self;
      v14 = "PKUISSBannerHandle (%p): missing reply - invalidating.";
      goto LABEL_5;
    }

    if (!v9)
    {
      v13 = PKLogFacilityTypeGetObject();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }

      v20 = 134217984;
      v21 = self;
      v14 = "PKUISSBannerHandle (%p): missing request - invalidating.";
      goto LABEL_5;
    }

    if (v10)
    {
      v15 = [v10 type];
      if (v15 != [v9 type])
      {
        v13 = PKLogFacilityTypeGetObject();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_6;
        }

        v20 = 134217984;
        v21 = self;
        v14 = "PKUISSBannerHandle (%p): type mismatch - invalidating.";
        goto LABEL_5;
      }
    }

    objc_storeStrong(&self->_request, a3);
    objc_storeStrong(&self->_clientState, a4);
    v16 = objc_retainBlock(v12);
    didStartReply = self->_didStartReply;
    self->_didStartReply = v16;

    v18 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(PKBannerHandleRequest *)self->_request type];
      v20 = 134218240;
      v21 = self;
      v22 = 2048;
      v23 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "PKUISSBannerHandle (%p): configured for %ld.", &v20, 0x16u);
    }
  }

LABEL_7:
}

- (void)updateState:(id)a3 withReply:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!self->_invalidated)
  {
    phase = self->_phase;
    if (self->_phase)
    {
      if (v7)
      {
        v10 = [v7 type];
        if (v10 != [(PKBannerHandleRequest *)self->_request type])
        {
          v11 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v17 = 134217984;
            v18 = self;
            v12 = "PKUISSBannerHandle (%p): type mismatch - ignoring state update.";
            goto LABEL_20;
          }

LABEL_21:

          v8[2](v8, 0);
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
          v18 = self;
          v12 = "PKUISSBannerHandle (%p): ignoring state update.";
LABEL_20:
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, &v17, 0xCu);
          goto LABEL_21;
        }

        goto LABEL_21;
      }

      v14 = self->_clientState;
      objc_storeStrong(&self->_clientState, a3);
      v15 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 134217984;
        v18 = self;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "PKUISSBannerHandle (%p): state updated.", &v17, 0xCu);
      }

      v8[2](v8, 0);
      if (v7 | v14 && (self->_phase & 0xFE) == 2)
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
        v18 = self;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "PKUISSBannerHandle (%p): out of order - update state - invalidating.", &v17, 0xCu);
      }

      sub_1000011B0(self, 0);
    }
  }

LABEL_22:
}

- (void)displayWithReply:(id)a3
{
  v4 = a3;
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
      v17 = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PKUISSBannerHandle (%p): out of order - display - invalidating.", buf, 0xCu);
    }

    goto LABEL_12;
  }

  request = self->_request;
  if (!request)
  {
    goto LABEL_12;
  }

  v6 = [(PKBannerHandleRequest *)request type];
  if (v6 == 2)
  {
    v7 = v13;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v8 = sub_10000244C;
    goto LABEL_17;
  }

  if (v6 == 1)
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

  if (v6 || !PKSystemApertureIsAvailable())
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
    v17 = self;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "PKUISSBannerHandle (%p): started.", buf, 0xCu);
  }

  v4[2](v4, 0);
  self->_phase = 2;
  v11[2](v11);

LABEL_13:
}

- (void)detachWithReply:(id)a3
{
  v4 = a3;
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
  v4[2](v4, 0);
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