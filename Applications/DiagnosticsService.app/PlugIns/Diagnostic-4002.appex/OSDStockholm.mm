@interface OSDStockholm
- (BOOL)isNfcDisabledByProfile;
- (BOOL)overrideNfcEnabledState;
- (BOOL)startCardEmulationWithTimeout:(double)timeout;
- (BOOL)updateUserNfcEnabledState;
- (OSDStockholm)initWithDelegate:(id)delegate;
- (OSDStockholmDelegate)delegate;
- (id)_appletAID;
- (id)serialNumber;
- (id)serverRegistrationInfo;
- (void)contactlessSession:(id)session didDetectField:(BOOL)field;
- (void)contactlessSession:(id)session didSelectApplet:(id)applet;
- (void)contactlessSessionDidEndUnexpectedly:(id)unexpectedly;
- (void)dealloc;
- (void)restoreNfcEnabledState;
- (void)stopCardEmulation:(double)emulation;
@end

@implementation OSDStockholm

- (OSDStockholm)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = OSDStockholm;
  v5 = [(OSDStockholm *)&v12 init];
  if (v5)
  {
    if (!objc_opt_class() || !objc_opt_class() || !objc_opt_class())
    {
      v10 = 0;
      goto LABEL_8;
    }

    v6 = dispatch_semaphore_create(0);
    start_timeout_sema = v5->_start_timeout_sema;
    v5->_start_timeout_sema = v6;

    v8 = dispatch_semaphore_create(0);
    end_timeout_sema = v5->_end_timeout_sema;
    v5->_end_timeout_sema = v8;

    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  v10 = v5;
LABEL_8:

  return v10;
}

- (void)dealloc
{
  contactlessSession = [(OSDStockholm *)self contactlessSession];

  if (contactlessSession)
  {
    contactlessSession2 = [(OSDStockholm *)self contactlessSession];
    [contactlessSession2 endSession];
  }

  v5.receiver = self;
  v5.super_class = OSDStockholm;
  [(OSDStockholm *)&v5 dealloc];
}

- (BOOL)startCardEmulationWithTimeout:(double)timeout
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v5 = +[NFHardwareManager sharedHardwareManager];
  getHwSupport = [v5 getHwSupport];
  if (getHwSupport == 4)
  {
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100002A3C();
    }

LABEL_4:

    v8 = 0;
    goto LABEL_22;
  }

  v9 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = getHwSupport;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Hardware state : %u", &buf, 8u);
  }

  if (getHwSupport != 2)
  {
    v10 = 0;
    do
    {
      [NSThread sleepForTimeInterval:0.100000001];
      getHwSupport2 = [v5 getHwSupport];
      if (getHwSupport2 == 2)
      {
        break;
      }
    }

    while (v10++ < 9);
    if (getHwSupport2 != 2)
    {
      v7 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100002984();
      }

      goto LABEL_4;
    }
  }

  objc_initWeak(&buf, self);
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_10000193C;
  v21 = &unk_100008208;
  objc_copyWeak(&v23, &buf);
  v22 = &v24;
  v13 = [v5 startContactlessSession:&v18];
  [(OSDStockholm *)self setSessionController:v13, v18, v19, v20, v21];

  start_timeout_sema = self->_start_timeout_sema;
  v15 = dispatch_time(0, (timeout * 1000000000.0));
  if (dispatch_semaphore_wait(start_timeout_sema, v15))
  {
    v16 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100002A00();
    }

    v8 = 0;
    *(v25 + 24) = 0;
  }

  else
  {
    v8 = *(v25 + 24);
  }

  objc_destroyWeak(&v23);
  objc_destroyWeak(&buf);
LABEL_22:

  _Block_object_dispose(&v24, 8);
  return v8 & 1;
}

- (void)stopCardEmulation:(double)emulation
{
  objc_initWeak(&location, self);
  v5 = dispatch_get_global_queue(25, 0);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100001BC0;
  v6[3] = &unk_100008258;
  objc_copyWeak(v7, &location);
  v6[4] = self;
  v7[1] = *&emulation;
  dispatch_sync(v5, v6);

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

- (id)serverRegistrationInfo
{
  v2 = +[NFRemoteAdminManager sharedRemoteAdminManager];
  registrationInfo = [v2 registrationInfo];

  return registrationInfo;
}

- (id)serialNumber
{
  v7 = 0;
  v2 = [NFSecureElement embeddedSecureElementWithError:&v7];
  v3 = v7;
  if (v3)
  {
    v4 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Failed to get NearField embedded SN with error: %@", buf, 0xCu);
    }

    serialNumber = 0;
  }

  else
  {
    serialNumber = [v2 serialNumber];
  }

  return serialNumber;
}

- (BOOL)isNfcDisabledByProfile
{
  if (![(OSDStockholm *)self userNfcEnabledStateCaptured])
  {
    [(OSDStockholm *)self updateUserNfcEnabledState];
  }

  return [(OSDStockholm *)self userNfcEnabledState]== -1;
}

- (BOOL)overrideNfcEnabledState
{
  if (![(OSDStockholm *)self userNfcEnabledStateCaptured])
  {
    [(OSDStockholm *)self updateUserNfcEnabledState];
    if (![(OSDStockholm *)self userNfcEnabledStateCaptured])
    {
      v4 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100002CD8();
      }

      goto LABEL_9;
    }
  }

  v3 = +[NFHardwareManager sharedHardwareManager];
  v4 = v3;
  if (!v3)
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  v5 = [v3 setRadioEnabledSetting:1];
  v6 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109378;
    v9[1] = v5 == 0;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "NFC radio state overridden: %d with error: %@", v9, 0x12u);
  }

  v7 = v5 == 0;
LABEL_10:

  return v7;
}

- (void)restoreNfcEnabledState
{
  if ([(OSDStockholm *)self userNfcEnabledStateCaptured])
  {
    v3 = +[NFHardwareManager sharedHardwareManager];
    if (v3)
    {
      v4 = [v3 setRadioEnabledSetting:[(OSDStockholm *)self userNfcEnabledState]== 1];
      v5 = DiagnosticLogHandleForCategory();
      v6 = v5;
      if (v4)
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          sub_100002D14(self, v4, v6);
        }
      }

      else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 134217984;
        userNfcEnabledState = [(OSDStockholm *)self userNfcEnabledState];
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "NFC radio enabled state restored to %ld", &v7, 0xCu);
      }
    }
  }

  else
  {
    v3 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User NFC state was not captured. Not altering state", &v7, 2u);
    }
  }
}

- (BOOL)updateUserNfcEnabledState
{
  v3 = +[NFHardwareManager sharedHardwareManager];
  v4 = v3;
  if (v3)
  {
    v10 = 0;
    v5 = [v3 getRadioEnabledState:&v10];
    v6 = v5 == 0;
    if (v5)
    {
      v7 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100002DB0();
      }
    }

    else
    {
      [(OSDStockholm *)self setUserNfcEnabledState:v10];
      [(OSDStockholm *)self setUserNfcEnabledStateCaptured:1];
      v7 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        userNfcEnabledState = [(OSDStockholm *)self userNfcEnabledState];
        *buf = 134217984;
        v12 = userNfcEnabledState;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully backed up original NFC radio state %ld", buf, 0xCu);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_appletAID
{
  v2 = +[NFSecureElement embeddedSecureElement];
  v3 = v2;
  if (!v2)
  {
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100002E9C();
    }

    goto LABEL_11;
  }

  v4 = [v2 hwType] - 1;
  if (v4 >= 5 || ((0x1Du >> v4) & 1) == 0)
  {
    v6 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100002E24();
    }

LABEL_11:
    v5 = &stru_1000083A0;
    goto LABEL_12;
  }

  v5 = *(&off_100008278 + v4);
LABEL_12:

  return v5;
}

- (void)contactlessSession:(id)session didDetectField:(BOOL)field
{
  v6 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@", &v9, 0xCu);
  }

  delegate = [(OSDStockholm *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate osdStockholmDidDetectField];
  }
}

- (void)contactlessSessionDidEndUnexpectedly:(id)unexpectedly
{
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@", &v8, 0xCu);
  }

  delegate = [(OSDStockholm *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate osdStockholmDidEndUnexpectedly];
  }
}

- (void)contactlessSession:(id)session didSelectApplet:(id)applet
{
  appletCopy = applet;
  v7 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    identifier = [appletCopy identifier];
    v13 = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = identifier;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ %@", &v13, 0x16u);
  }

  delegate = [(OSDStockholm *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    identifier2 = [appletCopy identifier];
    v12 = [identifier2 isEqualToString:@"D27600008554657374010101"];

    if (v12)
    {
      [delegate osdStockholmDidSelectEchoApplet];
    }
  }
}

- (OSDStockholmDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end