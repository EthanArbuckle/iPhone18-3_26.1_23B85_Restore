@interface InAppDownloadManager
+ (id)manager;
- (BOOL)startDownloadWithID:(id)a3 client:(id)a4 auditToken:(id *)a5;
- (InAppDownloadManager)init;
- (id)addDownloadObserver:(id)a3;
- (id)processDownloadsForTransactions:(id)a3;
- (void)_notifyObserversDownloadStatusChanged:(id)a3;
- (void)cancelDownloadWithID:(id)a3;
- (void)pauseDownloadWithID:(id)a3;
- (void)removeDownloadObserver:(id)a3;
- (void)removeDownloadsForTransactionID:(id)a3;
@end

@implementation InAppDownloadManager

+ (id)manager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000AF0C;
  block[3] = &unk_10037F9B0;
  block[4] = a1;
  if (qword_1003D3AC8 != -1)
  {
    dispatch_once(&qword_1003D3AC8, block);
  }

  v2 = qword_1003D3AC0;

  return v2;
}

- (InAppDownloadManager)init
{
  v12.receiver = self;
  v12.super_class = InAppDownloadManager;
  v2 = [(InAppDownloadManager *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSLock);
    downloadLock = v2->_downloadLock;
    v2->_downloadLock = v3;

    v5 = objc_alloc_init(NSOperationQueue);
    downloadQueue = v2->_downloadQueue;
    v2->_downloadQueue = v5;

    [(NSOperationQueue *)v2->_downloadQueue setMaxConcurrentOperationCount:3];
    v7 = [NSMapTable mapTableWithKeyOptions:0x10000 valueOptions:5];
    observers = v2->_observers;
    v2->_observers = v7;

    v9 = objc_alloc_init(NSMutableDictionary);
    pendingDownloads = v2->_pendingDownloads;
    v2->_pendingDownloads = v9;
  }

  return v2;
}

- (id)addDownloadObserver:(id)a3
{
  v4 = a3;
  v5 = +[NSUUID UUID];
  v6 = [v5 UUIDString];

  v7 = self->_observers;
  objc_sync_enter(v7);
  [(NSMapTable *)self->_observers setObject:v4 forKey:v6];
  objc_sync_exit(v7);

  return v6;
}

- (void)removeDownloadObserver:(id)a3
{
  v5 = a3;
  v4 = self->_observers;
  objc_sync_enter(v4);
  [(NSMapTable *)self->_observers removeObjectForKey:v5];
  objc_sync_exit(v4);
}

- (BOOL)startDownloadWithID:(id)a3 client:(id)a4 auditToken:(id *)a5
{
  v7 = a3;
  v8 = a4;
  [(NSLock *)self->_downloadLock lock];
  v9 = [(NSMutableDictionary *)self->_pendingDownloads objectForKeyedSubscript:v7];
  v10 = [v9 task];
  v11 = v10;
  if (!v9)
  {
    if (qword_1003D3B18 != -1)
    {
      sub_1002C77D4();
    }

    v21 = off_1003CAB48;
    if (os_log_type_enabled(off_1003CAB48, OS_LOG_TYPE_ERROR))
    {
      sub_1002C7810(v21, self, v7);
    }

    goto LABEL_25;
  }

  if (!v10)
  {
    goto LABEL_15;
  }

  v12 = [(InAppDownloadTask *)v10 status];
  if (![v12 state])
  {

    goto LABEL_21;
  }

  v13 = [(InAppDownloadTask *)v11 status];
  v14 = [v13 state];

  if (v14 == 1)
  {
LABEL_21:
    if (qword_1003D3B18 != -1)
    {
      sub_1002C77D4();
    }

    v29 = off_1003CAB48;
    if (os_log_type_enabled(off_1003CAB48, OS_LOG_TYPE_INFO))
    {
      v30 = v29;
      v31 = [(InAppDownloadTask *)v11 logKey];
      *buf = 138543618;
      v40 = v31;
      v41 = 2114;
      v42 = v7;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "[%{public}@] Download already started for ID %{public}@", buf, 0x16u);
    }

    goto LABEL_25;
  }

  v15 = [(InAppDownloadTask *)v11 status];
  v16 = [v15 state];

  if (v16 == 3)
  {
    if (qword_1003D3B18 != -1)
    {
      sub_1002C77D4();
    }

    v17 = off_1003CAB48;
    if (os_log_type_enabled(off_1003CAB48, OS_LOG_TYPE_INFO))
    {
      v18 = v17;
      v19 = [(InAppDownloadTask *)v11 logKey];
      *buf = 138543618;
      v40 = v19;
      v41 = 2114;
      v42 = v7;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[%{public}@] Download already finished for ID %{public}@", buf, 0x16u);
    }

    v20 = [(InAppDownloadTask *)v11 status];
    [(InAppDownloadManager *)self _notifyObserversDownloadStatusChanged:v20];

LABEL_25:
    v28 = 0;
    goto LABEL_26;
  }

LABEL_15:
  v22 = [InAppDownloadTask alloc];
  v23 = [v9 info];
  v24 = [v8 callerBundleID];
  v25 = [(InAppDownloadTask *)v22 initWithDownloadID:v7 info:v23 bundleID:v24 containerID:0];

  [v9 setTask:v25];
  objc_initWeak(&location, self);
  v33 = _NSConcreteStackBlock;
  v34 = 3221225472;
  v35 = sub_10000B5A0;
  v36 = &unk_10037FC38;
  objc_copyWeak(&v37, &location);
  [(InAppDownloadTask *)v25 setStatusBlock:&v33];
  if (qword_1003D3B18 != -1)
  {
    sub_1002C77E8();
  }

  v26 = off_1003CAB48;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [(InAppDownloadTask *)v25 logKey:v33];
    *buf = 138543618;
    v40 = v27;
    v41 = 2114;
    v42 = v7;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting downloads for ID %{public}@", buf, 0x16u);
  }

  [(NSOperationQueue *)self->_downloadQueue addOperation:v25];
  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);
  v28 = 1;
  v11 = v25;
LABEL_26:
  [(NSLock *)self->_downloadLock unlock:v33];

  return v28;
}

- (void)cancelDownloadWithID:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_downloadLock lock];
  v5 = [(NSMutableDictionary *)self->_pendingDownloads objectForKeyedSubscript:v4];
  v6 = v5;
  if (!v5)
  {
    if (qword_1003D3B18 != -1)
    {
      sub_1002C77D4();
    }

    v15 = off_1003CAB48;
    if (!os_log_type_enabled(off_1003CAB48, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v14 = v15;
    *v19 = 138543618;
    *&v19[4] = objc_opt_class();
    *&v19[12] = 2114;
    *&v19[14] = v4;
    v16 = *&v19[4];
    v17 = "%{public}@: No downloads to cancel for ID %{public}@";
LABEL_17:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v17, v19, 0x16u);

LABEL_18:
    goto LABEL_19;
  }

  v7 = [v5 task];

  if (!v7)
  {
    if (qword_1003D3B18 != -1)
    {
      sub_1002C77D4();
    }

    v18 = off_1003CAB48;
    if (!os_log_type_enabled(off_1003CAB48, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v14 = v18;
    *v19 = 138543618;
    *&v19[4] = objc_opt_class();
    *&v19[12] = 2114;
    *&v19[14] = v4;
    v16 = *&v19[4];
    v17 = "%{public}@: Download is not started for ID %{public}@";
    goto LABEL_17;
  }

  v8 = [v6 task];
  v9 = [v8 isExecuting];

  if (v9)
  {
    if (qword_1003D3B18 != -1)
    {
      sub_1002C77D4();
    }

    v10 = off_1003CAB48;
    if (os_log_type_enabled(off_1003CAB48, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [v6 task];
      v13 = [v12 logKey];
      *v19 = 138543618;
      *&v19[4] = v13;
      *&v19[12] = 2114;
      *&v19[14] = v4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cancelling download for ID %{public}@", v19, 0x16u);
    }

    v14 = [v6 task];
    [v14 cancel];
    goto LABEL_18;
  }

LABEL_19:
  [(NSLock *)self->_downloadLock unlock:*v19];
}

- (void)pauseDownloadWithID:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_downloadLock lock];
  v5 = [(NSMutableDictionary *)self->_pendingDownloads objectForKeyedSubscript:v4];
  v6 = v5;
  if (!v5)
  {
    if (qword_1003D3B18 != -1)
    {
      sub_1002C77D4();
    }

    v15 = off_1003CAB48;
    if (!os_log_type_enabled(off_1003CAB48, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v14 = v15;
    *v19 = 138543618;
    *&v19[4] = objc_opt_class();
    *&v19[12] = 2114;
    *&v19[14] = v4;
    v16 = *&v19[4];
    v17 = "%{public}@: No downloads to pause for ID %{public}@";
LABEL_17:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v17, v19, 0x16u);

LABEL_18:
    goto LABEL_19;
  }

  v7 = [v5 task];

  if (!v7)
  {
    if (qword_1003D3B18 != -1)
    {
      sub_1002C77D4();
    }

    v18 = off_1003CAB48;
    if (!os_log_type_enabled(off_1003CAB48, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v14 = v18;
    *v19 = 138543618;
    *&v19[4] = objc_opt_class();
    *&v19[12] = 2114;
    *&v19[14] = v4;
    v16 = *&v19[4];
    v17 = "%{public}@: Download is not started for ID %{public}@";
    goto LABEL_17;
  }

  v8 = [v6 task];
  v9 = [v8 isExecuting];

  if (v9)
  {
    if (qword_1003D3B18 != -1)
    {
      sub_1002C77D4();
    }

    v10 = off_1003CAB48;
    if (os_log_type_enabled(off_1003CAB48, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [v6 task];
      v13 = [v12 logKey];
      *v19 = 138543618;
      *&v19[4] = v13;
      *&v19[12] = 2114;
      *&v19[14] = v4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Pausing download for ID %{public}@", v19, 0x16u);
    }

    v14 = [v6 task];
    [v14 pause];
    goto LABEL_18;
  }

LABEL_19:
  [(NSLock *)self->_downloadLock unlock:*v19];
}

- (void)removeDownloadsForTransactionID:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  [(NSLock *)self->_downloadLock lock];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v6 = [(NSMutableDictionary *)self->_pendingDownloads allValues];
  v7 = [v6 countByEnumeratingWithState:&v54 objects:v65 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v55;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v55 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v54 + 1) + 8 * i);
        v12 = [v11 transactionIdentifier];
        v13 = [v12 isEqualToString:v4];

        if (v13)
        {
          v14 = [v11 identifier];
          [v5 addObject:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v54 objects:v65 count:16];
    }

    while (v8);
  }

  [(NSLock *)self->_downloadLock unlock];
  if ([v5 count])
  {
    if (qword_1003D3B18 != -1)
    {
      sub_1002C77E8();
    }

    v15 = off_1003CAB48;
    if (os_log_type_enabled(off_1003CAB48, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = objc_opt_class();
      v18 = v17;
      v19 = [v5 count];
      *buf = 138543875;
      v60 = v17;
      v61 = 2048;
      v62 = v19;
      v63 = 2113;
      v64 = v4;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: Removing %lu downloads for transaction %{private}@", buf, 0x20u);
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v46 = v5;
    obj = v5;
    v20 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (v20)
    {
      v21 = v20;
      v48 = *v51;
      do
      {
        v22 = 0;
        do
        {
          if (*v51 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v50 + 1) + 8 * v22);
          [(InAppDownloadManager *)self cancelDownloadWithID:v23];
          [(NSLock *)self->_downloadLock lock];
          v24 = [(NSMutableDictionary *)self->_pendingDownloads objectForKeyedSubscript:v23];
          [(NSMutableDictionary *)self->_pendingDownloads setObject:0 forKeyedSubscript:v23];
          [(NSLock *)self->_downloadLock unlock];
          v25 = [v24 task];
          v26 = [v25 status];
          v27 = [v26 installPath];

          if (v27)
          {
            if (qword_1003D3B18 != -1)
            {
              sub_1002C77E8();
            }

            v28 = off_1003CAB48;
            if (os_log_type_enabled(off_1003CAB48, OS_LOG_TYPE_DEFAULT))
            {
              v29 = v28;
              v30 = objc_opt_class();
              *buf = 138543874;
              v60 = v30;
              v61 = 2114;
              v62 = v23;
              v63 = 2114;
              v64 = v27;
              v31 = v30;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: Removing downloaded content for %{public}@ at %{public}@", buf, 0x20u);
            }

            v32 = +[NSFileManager defaultManager];
            if ([v32 fileExistsAtPath:v27])
            {
              v49 = 0;
              [v32 removeItemAtPath:v27 error:&v49];
              v33 = v49;
              if (v33)
              {
                if (qword_1003D3B18 != -1)
                {
                  sub_1002C77E8();
                }

                v34 = off_1003CAB48;
                if (os_log_type_enabled(off_1003CAB48, OS_LOG_TYPE_ERROR))
                {
                  v43 = v34;
                  v44 = objc_opt_class();
                  *buf = 138543874;
                  v60 = v44;
                  v61 = 2114;
                  v62 = v23;
                  v63 = 2114;
                  v64 = v33;
                  v45 = v44;
                  _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%{public}@: Error removing downloaded content for ID %{public}@ - %{public}@", buf, 0x20u);
                }
              }
            }

            else
            {
              if (qword_1003D3B18 != -1)
              {
                sub_1002C77E8();
              }

              v39 = off_1003CAB48;
              if (os_log_type_enabled(off_1003CAB48, OS_LOG_TYPE_DEFAULT))
              {
                v40 = v39;
                v41 = objc_opt_class();
                *buf = 138543874;
                v60 = v41;
                v61 = 2114;
                v62 = v23;
                v63 = 2114;
                v64 = v27;
                v42 = v41;
                _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}@: Downloaded content was already moved or removed for %{public}@ at %{public}@", buf, 0x20u);
              }
            }
          }

          else
          {
            if (qword_1003D3B18 != -1)
            {
              sub_1002C77E8();
            }

            v35 = off_1003CAB48;
            if (os_log_type_enabled(off_1003CAB48, OS_LOG_TYPE_INFO))
            {
              v36 = v35;
              v37 = objc_opt_class();
              *buf = 138543618;
              v60 = v37;
              v61 = 2114;
              v62 = v23;
              v38 = v37;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "%{public}@: No download path to remove for ID %{public}@", buf, 0x16u);
            }
          }

          v22 = v22 + 1;
        }

        while (v21 != v22);
        v21 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
      }

      while (v21);
    }

    v5 = v46;
  }

  [(NSLock *)self->_downloadLock unlock];
}

- (id)processDownloadsForTransactions:(id)a3
{
  v4 = a3;
  v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v39 = self;
  [(NSLock *)self->_downloadLock lock];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v41;
    *&v7 = 138543619;
    v34 = v7;
    v35 = v5;
    v36 = *v41;
    do
    {
      v10 = 0;
      v37 = v8;
      do
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v40 + 1) + 8 * v10);
        v12 = [v11 mutableCopy];
        v13 = [v11 tcr_numberForKey:off_1003CAFC8];
        v14 = [v11 tcr_stringForKey:@"tid"];
        v15 = [v11 tcr_arrayForKey:@"assets"];
        v16 = v15;
        if (v13 && [v15 count])
        {
          v17 = [v16 firstObject];
          v18 = [v17 mutableCopy];

          v19 = [v11 tcr_stringForKey:off_1003CB1A8];
          [v18 setObject:v19 forKeyedSubscript:off_1003CB1A8];

          v20 = objc_alloc_init(NSMutableDictionary);
          v21 = [v18 objectForKeyedSubscript:@"file-size"];
          [v20 setObject:v21 forKeyedSubscript:@"hosted-content-length"];

          v22 = [v18 objectForKeyedSubscript:@"version"];
          [v20 setObject:v22 forKeyedSubscript:@"hosted-version"];

          v48 = v20;
          v23 = [NSArray arrayWithObjects:&v48 count:1];
          [v12 setObject:v23 forKeyedSubscript:@"assets"];

          v24 = [(NSMutableDictionary *)v39->_pendingDownloads objectForKeyedSubscript:v13];
          if (v24)
          {
            if (qword_1003D3B18 != -1)
            {
              sub_1002C77E8();
            }

            v25 = off_1003CAB48;
            if (os_log_type_enabled(off_1003CAB48, OS_LOG_TYPE_INFO))
            {
              v26 = v25;
              v27 = objc_opt_class();
              *buf = v34;
              v45 = v27;
              v46 = 2113;
              v47 = v13;
              v28 = v27;
              _os_log_impl(&_mh_execute_header, &v26->super, OS_LOG_TYPE_INFO, "%{public}@: Download %{private}@ already added to pending downloads", buf, 0x16u);

              goto LABEL_18;
            }
          }

          else
          {
            if (qword_1003D3B18 != -1)
            {
              sub_1002C77E8();
            }

            v29 = off_1003CAB48;
            if (os_log_type_enabled(off_1003CAB48, OS_LOG_TYPE_DEFAULT))
            {
              v30 = v29;
              v31 = objc_opt_class();
              *buf = v34;
              v45 = v31;
              v46 = 2113;
              v47 = v13;
              v32 = v31;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}@: Adding download %{private}@ to pending downloads", buf, 0x16u);
            }

            v26 = [[InAppDownload alloc] initWithIdentifier:v13 transactionIdentifier:v14 info:v18];
            [(NSMutableDictionary *)v39->_pendingDownloads setObject:v26 forKeyedSubscript:v13];
LABEL_18:

            v5 = v35;
          }

          v9 = v36;
          v8 = v37;
        }

        [v5 addObject:v12];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v8);
  }

  [(NSLock *)v39->_downloadLock unlock];

  return v5;
}

- (void)_notifyObserversDownloadStatusChanged:(id)a3
{
  v4 = a3;
  v5 = self->_observers;
  objc_sync_enter(v5);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(NSMapTable *)self->_observers objectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v10 + 1) + 8 * v9) downloadManager:self updatedStatus:v4];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

@end