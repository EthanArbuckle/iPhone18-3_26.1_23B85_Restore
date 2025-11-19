@interface TKNFCReaderManager
- (BOOL)connectToTag:(id)a3 error:(id *)a4;
- (BOOL)disconnectTagWithCardRemoval:(BOOL)a3 error:(id *)a4;
- (BOOL)isTagPresent;
- (BOOL)stopPollingWithError:(id *)a3;
- (TKNFCReaderManager)initWithAppIdentifiers:(id)a3 uiMessage:(id)a4 nfcHwManager:(id)a5;
- (TKNFCReaderManagerDelegate)delegate;
- (id)transceiveAPDU:(id)a3 error:(id *)a4;
- (void)checkTagConnection;
- (void)dealloc;
- (void)endSessionWithCompletion:(id)a3;
- (void)readerSession:(id)a3 didDetectTags:(id)a4;
- (void)readerSessionDidEndUnexpectedly:(id)a3;
- (void)readerSessionDidEndUnexpectedly:(id)a3 reason:(id)a4;
- (void)startConnectionObservation;
- (void)startPollingWithCompletion:(id)a3;
- (void)stopConnectionObservation;
- (void)updateUIMessageWithMessage:(id)a3;
@end

@implementation TKNFCReaderManager

- (TKNFCReaderManager)initWithAppIdentifiers:(id)a3 uiMessage:(id)a4 nfcHwManager:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v41.receiver = self;
  v41.super_class = TKNFCReaderManager;
  v11 = [(TKNFCReaderManager *)&v41 init];
  v12 = v11;
  if (v11)
  {
    v33 = v10;
    v35 = v9;
    objc_storeStrong(&v11->_nfcHwManager, a5);
    objc_storeStrong(&v12->_uiMessage, a4);
    v12->_isStartingPolling = 0;
    v13 = objc_alloc_init(NSObject);
    lock = v12->_lock;
    v34 = v12;
    v12->_lock = v13;

    v15 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v8 count]);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v36 = v8;
    v16 = v8;
    v17 = [v16 countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v38;
      v20 = TKNFCSlotName;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v38 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v37 + 1) + 8 * i);
          v23 = [NSData dataFromAIDString:v22, v33];
          if (v23)
          {
            [(NSArray *)v15 addObject:v23];
          }

          else
          {
            v24 = sub_100012AB8();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v43 = v20;
              v44 = 2112;
              v45 = v22;
              _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Slot %@: Provided AID (%@) is not a valid AID", buf, 0x16u);
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v18);
    }

    v12 = v34;
    appIdentifiersData = v34->_appIdentifiersData;
    v34->_appIdentifiersData = v15;
    v26 = v15;

    v27 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v28 = qos_class_main();
    v29 = dispatch_queue_attr_make_with_qos_class(v27, v28, 0);

    v30 = dispatch_queue_create("com.apple.CryptoTokenKit.nfcslot", v29);
    queue = v34->_queue;
    v34->_queue = v30;

    v9 = v35;
    v8 = v36;
    v10 = v33;
  }

  return v12;
}

- (void)dealloc
{
  [(TKNFCReaderManager *)self stopConnectionObservation];
  overallSession = self->_overallSession;
  if (overallSession)
  {
    [(NFSession *)overallSession endSession];
  }

  if ([(NFReaderSession *)self->_nfReaderSession state]!= 2)
  {
    [(NFReaderSession *)self->_nfReaderSession endSession];
  }

  v4.receiver = self;
  v4.super_class = TKNFCReaderManager;
  [(TKNFCReaderManager *)&v4 dealloc];
}

- (void)startPollingWithCompletion:(id)a3
{
  v4 = a3;
  v18 = 0;
  v5 = [(TKNFCReaderManager *)self isNFCSupportedWithError:&v18];
  v6 = v18;
  if (v5)
  {
    v7 = self->_lock;
    objc_sync_enter(v7);
    if (self->_isStartingPolling)
    {
      v8 = sub_100012AB8();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
LABEL_14:

        if (v4)
        {
          v4[2](v4, 1, 0);
        }

        objc_sync_exit(v7);

        goto LABEL_17;
      }
    }

    else
    {
      nfReaderSession = self->_nfReaderSession;
      if (!nfReaderSession || [(NFReaderSession *)nfReaderSession state]== 2)
      {
        self->_isStartingPolling = 1;
        objc_sync_exit(v7);

        objc_initWeak(&location, self);
        nfcHwManager = self->_nfcHwManager;
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_100012DB0;
        v14[3] = &unk_100038DE0;
        objc_copyWeak(&v16, &location);
        v15 = v4;
        v12 = [(TKNFCHardwareManager *)nfcHwManager startNFCReaderSession:v14];
        overallSession = self->_overallSession;
        self->_overallSession = v12;

        objc_destroyWeak(&v16);
        objc_destroyWeak(&location);
        goto LABEL_17;
      }

      v8 = sub_100012AB8();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_14;
      }
    }

    sub_10001FC68();
    goto LABEL_14;
  }

  v9 = sub_100012AB8();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_10001FBE4();
  }

  [(TKNFCReaderManager *)self endSession];
  if (v4)
  {
    (v4)[2](v4, 0, v6);
  }

LABEL_17:
}

- (BOOL)stopPollingWithError:(id *)a3
{
  v5 = self->_lock;
  objc_sync_enter(v5);
  v6 = self->_nfReaderSession;
  objc_sync_exit(v5);

  v12 = 0;
  v7 = [(NFReaderSession *)v6 stopPollingWithError:&v12];
  v8 = v12;
  if (v8)
  {
    v9 = sub_100012AB8();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10001FDD4();
    }

    if (a3)
    {
      v10 = v8;
      v7 = 0;
      *a3 = v8;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)endSessionWithCompletion:(id)a3
{
  v4 = a3;
  [(TKNFCReaderManager *)self stopConnectionObservation];
  v5 = self->_lock;
  objc_sync_enter(v5);
  overallSession = self->_overallSession;
  if (!overallSession)
  {
    overallSession = self->_nfReaderSession;
  }

  v7 = overallSession;
  objc_sync_exit(v5);

  if (v7)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000133F8;
    v8[3] = &unk_100038E08;
    v9 = v4;
    [(NFSession *)v7 endSessionWithCompletion:v8];
  }

  else if (v4)
  {
    v4[2](v4);
  }
}

- (BOOL)disconnectTagWithCardRemoval:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  v7 = self->_lock;
  objc_sync_enter(v7);
  v8 = self->_nfReaderSession;
  objc_sync_exit(v7);

  if (v8)
  {
    if (v5)
    {
      v9 = [(NFReaderSession *)v8 disconnectTagWithCardRemoval:a4];
    }

    else
    {
      v9 = [(NFReaderSession *)v8 disconnectTagWithError:a4];
    }

    LOBYTE(a4) = v9;
  }

  else if (a4)
  {
    v12 = NSLocalizedDescriptionKey;
    v13 = @"No active NFC reader session";
    v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    *a4 = [NSError errorWithDomain:TKErrorDomain code:-6 userInfo:v10];

    LOBYTE(a4) = 0;
  }

  return a4;
}

- (BOOL)connectToTag:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = self->_lock;
  objc_sync_enter(v7);
  v8 = self->_nfReaderSession;
  objc_sync_exit(v7);

  if (v8)
  {
    LOBYTE(a4) = [(NFReaderSession *)v8 connectTag:v6 error:a4];
  }

  else if (a4)
  {
    v11 = NSLocalizedDescriptionKey;
    v12 = @"No active NFC reader session";
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    *a4 = [NSError errorWithDomain:TKErrorDomain code:-6 userInfo:v9];

    LOBYTE(a4) = 0;
  }

  return a4;
}

- (id)transceiveAPDU:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = self->_lock;
  objc_sync_enter(v7);
  v8 = self->_nfReaderSession;
  objc_sync_exit(v7);

  if (v8)
  {
    a4 = [(NFReaderSession *)v8 transceive:v6 error:a4];
  }

  else if (a4)
  {
    v11 = NSLocalizedDescriptionKey;
    v12 = @"No active NFC reader session";
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    *a4 = [NSError errorWithDomain:TKErrorDomain code:-6 userInfo:v9];

    a4 = 0;
  }

  return a4;
}

- (void)updateUIMessageWithMessage:(id)a3
{
  v5 = a3;
  v6 = self->_lock;
  objc_sync_enter(v6);
  objc_storeStrong(&self->_uiMessage, a3);
  objc_sync_exit(v6);

  nfReaderSession = self->_nfReaderSession;
  if (nfReaderSession)
  {
    v8 = [(NFReaderSession *)nfReaderSession updateUIAlertMessage:v5];
    if (v8)
    {
      v9 = sub_100012AB8();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10001FE48();
      }
    }
  }
}

- (BOOL)isTagPresent
{
  v3 = self->_lock;
  objc_sync_enter(v3);
  v4 = self->_nfReaderSession;
  objc_sync_exit(v3);

  if (v4)
  {
    v5 = [(NFReaderSession *)v4 checkPresence];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)startConnectionObservation
{
  [(TKNFCReaderManager *)self stopConnectionObservation];
  objc_initWeak(&location, self);
  v3 = self->_lock;
  objc_sync_enter(v3);
  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
  tagConnectionTimer = self->_tagConnectionTimer;
  self->_tagConnectionTimer = v4;

  objc_sync_exit(v3);
  v6 = dispatch_time(0, 1000000000);
  dispatch_source_set_timer(self->_tagConnectionTimer, v6, 0x3B9ACA00uLL, 0);
  v7 = self->_tagConnectionTimer;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100013A10;
  v8[3] = &unk_1000389A0;
  objc_copyWeak(&v9, &location);
  dispatch_source_set_event_handler(v7, v8);
  dispatch_activate(self->_tagConnectionTimer);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)stopConnectionObservation
{
  obj = self->_lock;
  objc_sync_enter(obj);
  tagConnectionTimer = self->_tagConnectionTimer;
  if (tagConnectionTimer)
  {
    dispatch_source_cancel(tagConnectionTimer);
    v4 = self->_tagConnectionTimer;
    self->_tagConnectionTimer = 0;
  }

  objc_sync_exit(obj);
}

- (void)checkTagConnection
{
  v3 = self->_lock;
  objc_sync_enter(v3);
  v4 = self->_nfReaderSession;
  objc_sync_exit(v3);

  if (v4)
  {
    v19 = 0;
    v5 = [(NFReaderSession *)v4 checkPresenceWithError:&v19];
    v6 = v19;
    if (v6)
    {
      v7 = sub_100012AB8();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v21 = self;
        v22 = 1024;
        v23 = v5;
        v24 = 2112;
        v25 = v6;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@: checking tag connection: connected: %d, error: %@", buf, 0x1Cu);
      }
    }

    else if (v5)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v6 = 0;
  }

  [(TKNFCReaderManager *)self stopConnectionObservation];
  v8 = [(TKNFCReaderManager *)self delegate];
  [v8 readerManagerDidDisconnectTag:self];

  v18 = 0;
  [(TKNFCReaderManager *)self restartPollingWithError:&v18];
  v9 = v18;
  v10 = sub_100012AB8();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10001FEBC(self, v9, v11);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10001FF44(self, v11, v12, v13, v14, v15, v16, v17);
  }

LABEL_14:
}

- (void)readerSession:(id)a3 didDetectTags:(id)a4
{
  v6 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = a4;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v16 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v15 + 1) + 8 * v11);
      if ([v12 type] == 3 || objc_msgSend(v12, "type") == 6)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v13 = v12;

    if (!v13)
    {
      goto LABEL_13;
    }

    v14 = [(TKNFCReaderManager *)self delegate];
    [v14 readerManager:self didDetectTag:v13];

    [(TKNFCReaderManager *)self startConnectionObservation];
  }

  else
  {
LABEL_10:

LABEL_13:
    [v6 restartPollingWithError:{0, v15}];
  }
}

- (void)readerSessionDidEndUnexpectedly:(id)a3 reason:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = [(TKNFCReaderManager *)self delegate];
    [v6 readerManager:self didEncounterError:v5];
  }

  v7 = [(TKNFCReaderManager *)self delegate];
  [v7 readerManagerDidEndSession:self];

  [(TKNFCReaderManager *)self stopConnectionObservation];
}

- (void)readerSessionDidEndUnexpectedly:(id)a3
{
  v4 = [(TKNFCReaderManager *)self delegate];
  [v4 readerManagerDidEndSession:self];

  [(TKNFCReaderManager *)self stopConnectionObservation];
}

- (TKNFCReaderManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end