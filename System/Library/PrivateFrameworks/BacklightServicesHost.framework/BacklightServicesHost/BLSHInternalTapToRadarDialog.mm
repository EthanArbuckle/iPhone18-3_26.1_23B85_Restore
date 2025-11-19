@interface BLSHInternalTapToRadarDialog
- (BLSHInternalTapToRadarDialog)initWithDescriptor:(id)a3 log:(id)a4;
- (BOOL)_shouldIgnore;
- (void)_alertDidDismiss:(int64_t)a3;
- (void)_cancel;
- (void)_file;
- (void)_gotError;
- (void)_ignore;
- (void)presentWithCompletion:(id)a3;
@end

@implementation BLSHInternalTapToRadarDialog

- (BLSHInternalTapToRadarDialog)initWithDescriptor:(id)a3 log:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (__dialog)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [BLSHInternalTapToRadarDialog initWithDescriptor:v9 log:?];
    }

    v10 = 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = BLSHInternalTapToRadarDialog;
    v11 = [(BLSHInternalTapToRadarDialog *)&v14 init];
    p_isa = &v11->super.isa;
    if (v11)
    {
      objc_storeStrong(&v11->_descriptor, a3);
      objc_storeStrong(p_isa + 2, a4);
      objc_storeStrong(&__dialog, p_isa);
    }

    self = p_isa;
    v10 = self;
  }

  return v10;
}

- (void)presentWithCompletion:(id)a3
{
  v21[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if ((os_variant_has_internal_ui() & 1) == 0)
  {
LABEL_5:
    (*(v4 + 2))(v4, 0, 0);
    goto LABEL_10;
  }

  if ([(BLSHInternalTapToRadarDialog *)self _shouldIgnore])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      [(BLSHInternalTapToRadarDialog *)self presentWithCompletion:?];
    }

    goto LABEL_5;
  }

  v6 = [(BLSHTapToRadarDescriptor *)self->_descriptor ttrPromptMessage];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [(BLSHTapToRadarDescriptor *)self->_descriptor radarDescription];
  }

  v9 = v8;

  v20[0] = *MEMORY[0x277CBF188];
  v10 = [(BLSHTapToRadarDescriptor *)self->_descriptor ttrPromptHeader];
  v11 = *MEMORY[0x277CBF198];
  v21[0] = v10;
  v21[1] = v9;
  v12 = *MEMORY[0x277CBF1E8];
  v20[1] = v11;
  v20[2] = v12;
  v13 = *MEMORY[0x277CBF1C0];
  v21[2] = @"File Radar";
  v21[3] = @"Ignore";
  v14 = *MEMORY[0x277CBF218];
  v20[3] = v13;
  v20[4] = v14;
  v21[4] = @"Don't Ask Again";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:5];

  presentWithCompletion____blsAlertUserNotification = CFUserNotificationCreate(0, 0.0, 3uLL, 0, v15);
  presentWithCompletion____blsWatchdogAlertRunLoopSource = CFUserNotificationCreateRunLoopSource(0, presentWithCompletion____blsAlertUserNotification, _blsAlertCallback, 99);
  Current = CFRunLoopGetCurrent();
  CFRunLoopAddSource(Current, presentWithCompletion____blsWatchdogAlertRunLoopSource, *MEMORY[0x277CBF048]);
  v17 = [v4 copy];
  completion = self->_completion;
  self->_completion = v17;

LABEL_10:
  v19 = *MEMORY[0x277D85DE8];
}

- (void)_alertDidDismiss:(int64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = __dialog;
  __dialog = 0;

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = a3;
    _os_log_impl(&dword_21FD11000, log, OS_LOG_TYPE_DEFAULT, "_alertDidDismiss: ttrDialogResult=%ld", &v9, 0xCu);
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      [(BLSHInternalTapToRadarDialog *)self _ignore];
      goto LABEL_14;
    }

    if (a3 == 3)
    {
      [(BLSHInternalTapToRadarDialog *)self _gotError];
      goto LABEL_14;
    }
  }

  else
  {
    if (!a3)
    {
      [(BLSHInternalTapToRadarDialog *)self _cancel];
      goto LABEL_14;
    }

    if (a3 == 1)
    {
      [(BLSHInternalTapToRadarDialog *)self _file];
      goto LABEL_14;
    }
  }

  v7 = self->_log;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    [(BLSHInternalTapToRadarDialog *)a3 _alertDidDismiss:v7];
  }

LABEL_14:
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_file
{
  objc_initWeak(&location, self);
  descriptor = self->_descriptor;
  log = self->_log;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__BLSHInternalTapToRadarDialog__file__block_invoke;
  v5[3] = &unk_27841FC08;
  objc_copyWeak(&v6, &location);
  [BLSHTapToRadarFiler fileRadar:descriptor log:log completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __37__BLSHInternalTapToRadarDialog__file__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (a3)
  {
    v6 = a2 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  [WeakRetained callCompletion:a2 shouldTryAgain:v6];
}

- (BOOL)_shouldIgnore
{
  v2 = [(BLSHTapToRadarDescriptor *)self->_descriptor designation];

  return [BLSHInternalTapToRadarIgnorer shouldIgnoreDesignation:v2];
}

- (void)_ignore
{
  v8 = *MEMORY[0x277D85DE8];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    descriptor = self->_descriptor;
    v6 = 138412290;
    v7 = descriptor;
    _os_log_impl(&dword_21FD11000, log, OS_LOG_TYPE_DEFAULT, "adding %@ to Tap-To-Radar ignore list", &v6, 0xCu);
  }

  [BLSHInternalTapToRadarIgnorer ignoreRadarDesignation:[(BLSHTapToRadarDescriptor *)self->_descriptor designation]];
  [(BLSHInternalTapToRadarDialog *)self callCompletion:0 shouldTryAgain:0];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_cancel
{
  v8 = *MEMORY[0x277D85DE8];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    descriptor = self->_descriptor;
    v6 = 138412290;
    v7 = descriptor;
    _os_log_impl(&dword_21FD11000, log, OS_LOG_TYPE_DEFAULT, "cancelling %@", &v6, 0xCu);
  }

  [(BLSHInternalTapToRadarDialog *)self callCompletion:0 shouldTryAgain:0];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_gotError
{
  v8 = *MEMORY[0x277D85DE8];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    descriptor = self->_descriptor;
    v6 = 138412290;
    v7 = descriptor;
    _os_log_impl(&dword_21FD11000, log, OS_LOG_TYPE_DEFAULT, "got error trying to prompt for tap-to-radar. will try again later %@", &v6, 0xCu);
  }

  [(BLSHInternalTapToRadarDialog *)self callCompletion:0 shouldTryAgain:1];
  v5 = *MEMORY[0x277D85DE8];
}

void __62__BLSHInternalTapToRadarDialog_callCompletion_shouldTryAgain___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (*(v2 + 24))
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 41);
      v11[0] = 67109376;
      v11[1] = v4;
      v12 = 1024;
      v13 = v5;
      _os_log_impl(&dword_21FD11000, v3, OS_LOG_TYPE_DEFAULT, "Tap-To-Radar dialog calling completion radarWasFiled:%{BOOL}u shouldTryAgain:%{BOOL}u", v11, 0xEu);
    }

    v6 = *(a1 + 40);
    v7 = *(a1 + 41);
    (*(*(*(a1 + 32) + 24) + 16))();
    v8 = *(a1 + 32);
    v9 = *(v8 + 24);
    *(v8 + 24) = 0;
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __62__BLSHInternalTapToRadarDialog_callCompletion_shouldTryAgain___block_invoke_cold_1(a1, v3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)presentWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_21FD11000, a2, OS_LOG_TYPE_ERROR, "ignoring Tap-To-Radar %@ per previous user request", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_alertDidDismiss:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_fault_impl(&dword_21FD11000, a2, OS_LOG_TYPE_FAULT, "Got unpexpected response in _alertDidDismiss(): %ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __62__BLSHInternalTapToRadarDialog_callCompletion_shouldTryAgain___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(a1 + 41);
  v5[0] = 67109376;
  v5[1] = v2;
  v6 = 1024;
  v7 = v3;
  _os_log_error_impl(&dword_21FD11000, a2, OS_LOG_TYPE_ERROR, "Tap-To-Radar dialog asked to call nil completion radarWasFiled:%{BOOL}u shouldTryAgain:%{BOOL}u", v5, 0xEu);
  v4 = *MEMORY[0x277D85DE8];
}

@end