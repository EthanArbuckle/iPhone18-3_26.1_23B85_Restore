@interface NotifyTestFlightClientTask
- (void)main;
@end

@implementation NotifyTestFlightClientTask

- (void)main
{
  v3 = [[KeepAlive alloc] initWithName:@"com.apple.appstored.NotifyTestFlightClient"];
  v4 = [TestFlightServiceHost alloc];
  v5 = dispatch_get_global_queue(17, 0);
  v6 = sub_1003E4DB4(&v4->super.isa, v5);

  if (sub_1003E541C(v6) == 1)
  {
    installPhase = self->_installPhase;
    v8 = 1;
    v9 = 2;
    if (installPhase != -30)
    {
      v9 = 0;
    }

    if (installPhase != -20)
    {
      v8 = v9;
    }

    if (installPhase == -40)
    {
      v10 = 3;
    }

    else
    {
      v10 = v8;
    }

    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    *buf = 0;
    v23 = buf;
    v24 = 0x3032000000;
    v25 = sub_1003840F4;
    v26 = sub_100384104;
    v27 = 0;
    v11 = dispatch_semaphore_create(0);
    bundle = self->_bundle;
    installError = self->_installError;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10038410C;
    v18[3] = &unk_10051BA78;
    v20 = &v28;
    v21 = buf;
    v14 = v11;
    v19 = v14;
    sub_1003E5FAC(v6, bundle, v10, installError, v18);
    dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
    if (*(v29 + 24) == 1)
    {
      [(Task *)self completeWithSuccess];
    }

    else
    {
      v16 = *(v23 + 5);
      v17 = v16;
      if (!v16)
      {
        v17 = [NSError errorWithDomain:ASDErrorDomain code:1072 userInfo:0];
      }

      [(Task *)self completeWithError:v17];
      if (!v16)
      {
      }
    }

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v15 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "NotifyTestFlightClient: extension not available. Quitting.", buf, 2u);
    }

    [(Task *)self completeWithSuccess];
  }
}

@end