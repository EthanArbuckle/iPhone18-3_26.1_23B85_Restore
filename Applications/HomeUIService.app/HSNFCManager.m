@interface HSNFCManager
- (BOOL)readerSupportedWithError:(id *)a3;
- (HSNFCManager)initWithDelegate:(id)a3;
- (HSNFCManagerDelegate)delegate;
- (id)start;
- (void)readerSession:(id)a3 didDetectTags:(id)a4;
- (void)readerSessionDidEndUnexpectedly:(id)a3;
- (void)stop;
@end

@implementation HSNFCManager

- (HSNFCManager)initWithDelegate:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HSNFCManager;
  v5 = [(HSNFCManager *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v8 = dispatch_queue_create("com.apple.Home.HomeUIService.NFCSessionQueue", v7);
    sessionQueue = v6->_sessionQueue;
    v6->_sessionQueue = v8;
  }

  return v6;
}

- (id)start
{
  v24 = 0;
  v3 = [(HSNFCManager *)self readerSupportedWithError:&v24];
  v4 = v24;
  if ((v3 & 1) == 0)
  {
    v16 = HFLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10007A7F8();
    }

    v17 = [NAFuture futureWithError:v4];
    goto LABEL_13;
  }

  v5 = [(HSNFCManager *)self nearFieldReaderSession];
  if (v5)
  {
    v6 = v5;
    v7 = [(HSNFCManager *)self nearFieldReaderSession];
    v8 = [v7 state];

    if (v8 != 2)
    {
      v18 = HFLogForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10007A838();
      }

      v17 = +[NAFuture futureWithNoResult];
LABEL_13:
      v15 = v17;
      goto LABEL_14;
    }
  }

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "NFC: Attempting to start session", &buf, 2u);
  }

  v10 = objc_alloc_init(NAFuture);
  objc_initWeak(&buf, self);
  v11 = +[NFHardwareManager sharedHardwareManager];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10004D1FC;
  v20[3] = &unk_1000C7870;
  v20[4] = self;
  objc_copyWeak(&v22, &buf);
  v12 = v10;
  v21 = v12;
  v13 = [v11 startReaderSession:v20];
  [(HSNFCManager *)self setOverallSession:v13];

  v14 = v21;
  v15 = v12;

  objc_destroyWeak(&v22);
  objc_destroyWeak(&buf);
LABEL_14:

  return v15;
}

- (void)stop
{
  if ([(HSNFCManager *)self readerSupportedWithError:0])
  {
    v3 = HFLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "NFC: Attempting to end session", buf, 2u);
    }

    v4 = dispatch_semaphore_create(0);
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    *buf = 0;
    v16 = buf;
    v17 = 0x3032000000;
    v18 = sub_10004D7DC;
    v19 = sub_10004D7EC;
    v5 = [BKSProcessAssertion alloc];
    v6 = getpid();
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10004D7F4;
    v12[3] = &unk_1000C7898;
    v14 = &v21;
    v7 = v4;
    v13 = v7;
    v20 = [v5 initWithPID:v6 flags:1 reason:4 name:@"HomeNFCStopAssertion" withHandler:v12];
    dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    if ((v22[3] & 1) == 0)
    {
      v8 = HFLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10007A964();
      }

      [*(v16 + 5) invalidate];
      v9 = *(v16 + 5);
      *(v16 + 5) = 0;
    }

    v10 = [(HSNFCManager *)self sessionQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10004D808;
    v11[3] = &unk_1000C78C0;
    v11[4] = self;
    v11[5] = buf;
    dispatch_async(v10, v11);

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v21, 8);
  }
}

- (BOOL)readerSupportedWithError:(id *)a3
{
  v4 = +[NFHardwareManager sharedHardwareManager];
  LOBYTE(a3) = [v4 areFeaturesSupported:1 outError:a3];

  return a3;
}

- (void)readerSession:(id)a3 didDetectTags:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v60 = v6;
    v61 = 2112;
    v62 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "NFC: readerSession:%@ didDetectTags:%@", buf, 0x16u);
  }

  v57 = 0;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v53 objects:v65 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v54;
    *&v10 = 138412546;
    v37 = v10;
    v38 = *v54;
    v39 = v6;
    do
    {
      v13 = 0;
      v40 = v11;
      do
      {
        if (*v54 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v53 + 1) + 8 * v13);
        v52 = 0;
        v15 = [v6 connectTag:v14 error:{&v52, v37}];
        v16 = v52;
        if (v15)
        {
          [v6 checkNdefSupportsRead:&v57 + 1 andWrite:&v57];
          v17 = HFLogForCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            if (HIBYTE(v57))
            {
              v18 = "YES";
            }

            else
            {
              v18 = "NO";
            }

            if (v57)
            {
              v19 = "YES";
            }

            else
            {
              v19 = "NO";
            }

            *buf = 138412802;
            v60 = v14;
            v61 = 2080;
            v62 = v18;
            v63 = 2080;
            v64 = v19;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "NFC: tag %@: read = %s write = %s", buf, 0x20u);
          }

          v51 = 0;
          v20 = [v6 ndefReadWithError:&v51];
          v44 = v51;
          v45 = v20;
          if (!v20)
          {
            v21 = HFLogForCategory();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = v37;
              v60 = v14;
              v61 = 2112;
              v62 = v44;
              _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "NFC: Unable to read tag: %@. Error = %@", buf, 0x16u);
            }

            v20 = 0;
          }

          v42 = v16;
          v43 = v13;
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v22 = [v20 records];
          v23 = [v22 countByEnumeratingWithState:&v47 objects:v58 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v48;
            do
            {
              for (i = 0; i != v24; i = i + 1)
              {
                if (*v48 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = [*(*(&v47 + 1) + 8 * i) decode];
                v28 = HFLogForCategory();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v60 = v27;
                  _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "NFC: read token: %@", buf, 0xCu);
                }

                v29 = [(HSNFCManager *)self delegate];
                v30 = [v29 nfcManager:self shouldReturnPayloadString:v27];

                if (v30)
                {
                  v31 = HFLogForCategory();
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v60 = v27;
                    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "NFC: Successfully read setup payload string %@", buf, 0xCu);
                  }

                  v32 = [(HSNFCManager *)self delegate];
                  [v32 nfcManager:self didRecognizePayloadString:v27];
                }
              }

              v24 = [v22 countByEnumeratingWithState:&v47 objects:v58 count:16];
            }

            while (v24);
          }

          v46 = 0;
          v6 = v39;
          v33 = [v39 disconnectTagWithError:&v46];
          v34 = v46;
          v11 = v40;
          v12 = v38;
          v16 = v42;
          v13 = v43;
          if ((v33 & 1) == 0)
          {
            v35 = HFLogForCategory();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v60 = v34;
              _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "NFC: Failed to disconnect tag with error:%@", buf, 0xCu);
            }
          }

          v36 = v44;
        }

        else
        {
          v36 = HFLogForCategory();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *buf = v37;
            v60 = v14;
            v61 = 2112;
            v62 = v16;
            _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "NFC: Unable to connect to tag: %@. Error = %@", buf, 0x16u);
          }
        }

        v13 = v13 + 1;
      }

      while (v13 != v11);
      v11 = [obj countByEnumeratingWithState:&v53 objects:v65 count:16];
    }

    while (v11);
  }
}

- (void)readerSessionDidEndUnexpectedly:(id)a3
{
  v3 = a3;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10007A9A4();
  }
}

- (HSNFCManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end