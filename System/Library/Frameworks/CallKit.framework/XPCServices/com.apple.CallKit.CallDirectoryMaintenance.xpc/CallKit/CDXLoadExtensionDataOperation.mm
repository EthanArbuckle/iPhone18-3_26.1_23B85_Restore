@interface CDXLoadExtensionDataOperation
- (BOOL)extensionDataRequest:(id)a3 addedBlockingEntryData:(id)a4 error:(id *)a5;
- (BOOL)extensionDataRequest:(id)a3 addedIdentificationEntryData:(id)a4 error:(id *)a5;
- (BOOL)extensionDataRequest:(id)a3 isIncrementalLoadingAllowedWithError:(id *)a4;
- (BOOL)extensionDataRequest:(id)a3 removedAllBlockingEntriesWithError:(id *)a4;
- (BOOL)extensionDataRequest:(id)a3 removedAllIdentificationEntriesWithError:(id *)a4;
- (BOOL)extensionDataRequest:(id)a3 removedBlockingEntryData:(id)a4 error:(id *)a5;
- (BOOL)extensionDataRequest:(id)a3 removedIdentificationEntryData:(id)a4 error:(id *)a5;
- (BOOL)performInitialDeletionIfNecessaryWithError:(id *)a3;
- (CDXLoadExtensionDataOperation)initWithExtensionIdentifier:(id)a3 dataRequest:(id)a4 queue:(id)a5 store:(id)a6 lastUpdateDelegate:(id)a7;
- (CDXLoadExtensionDataOperation)initWithExtensionIdentifier:(id)a3 dataRequest:(id)a4 queue:(id)a5 store:(id)a6 maximumAllowedEntries:(unint64_t)a7 identificationEntriesChangedNotifier:(id)a8 lastUpdateDelegate:(id)a9;
- (void)performWithCompletionHandler:(id)a3;
@end

@implementation CDXLoadExtensionDataOperation

- (CDXLoadExtensionDataOperation)initWithExtensionIdentifier:(id)a3 dataRequest:(id)a4 queue:(id)a5 store:(id)a6 maximumAllowedEntries:(unint64_t)a7 identificationEntriesChangedNotifier:(id)a8 lastUpdateDelegate:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  v33.receiver = self;
  v33.super_class = CDXLoadExtensionDataOperation;
  v21 = [(CDXLoadExtensionDataOperation *)&v33 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_queue, a5);
    queue = v22->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000ECE8;
    block[3] = &unk_100035048;
    v26 = v22;
    v27 = v15;
    v28 = v20;
    v29 = v16;
    v30 = v18;
    v32 = a7;
    v31 = v19;
    dispatch_async(queue, block);
  }

  return v22;
}

- (CDXLoadExtensionDataOperation)initWithExtensionIdentifier:(id)a3 dataRequest:(id)a4 queue:(id)a5 store:(id)a6 lastUpdateDelegate:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [CDXNotifydNotifier alloc];
  v18 = [(CDXNotifydNotifier *)v17 initWithNotificationName:CXCallDirectoryManagerIdentificationEntriesChangedNotification];
  v19 = [(CDXLoadExtensionDataOperation *)self initWithExtensionIdentifier:v16 dataRequest:v15 queue:v14 store:v13 maximumAllowedEntries:2000000 identificationEntriesChangedNotifier:v18 lastUpdateDelegate:v12];

  return v19;
}

- (BOOL)performInitialDeletionIfNecessaryWithError:(id *)a3
{
  if (![(CDXLoadExtensionDataOperation *)self requiresInitialDeletion]|| [(CDXLoadExtensionDataOperation *)self hasPerfomedInitialDeletion])
  {
    return 1;
  }

  v6 = [(CDXLoadExtensionDataOperation *)self store];
  v17 = 0;
  v7 = [v6 removeBlockingEntriesForExtensionWithID:-[CDXLoadExtensionDataOperation extensionID](self error:{"extensionID"), &v17}];
  v8 = v17;
  if ((v7 & 1) == 0)
  {

LABEL_10:
    v12 = sub_100005CC4();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100022374();
    }

    v5 = 0;
    v11 = v8;
    goto LABEL_13;
  }

  v9 = [(CDXLoadExtensionDataOperation *)self store];
  v16 = v8;
  v10 = [v9 removeIdentificationEntriesForExtensionWithID:-[CDXLoadExtensionDataOperation extensionID](self error:{"extensionID"), &v16}];
  v11 = v16;

  if (!v10)
  {
    v8 = v11;
    goto LABEL_10;
  }

  v5 = 1;
  [(CDXLoadExtensionDataOperation *)self setHasPerfomedInitialDeletion:1];
  v12 = sub_100005CC4();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(CDXLoadExtensionDataOperation *)self extensionIdentifier];
    *buf = 138412290;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Performed initial deletion for extension with identifier %@", buf, 0xCu);
  }

LABEL_13:

  if (a3 && v11)
  {
    v14 = v11;
    *a3 = v11;
  }

  return v5;
}

- (void)performWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CDXLoadExtensionDataOperation *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000F1C0;
  v7[3] = &unk_100034B80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (BOOL)extensionDataRequest:(id)a3 isIncrementalLoadingAllowedWithError:(id *)a4
{
  v5 = [(CDXLoadExtensionDataOperation *)self queue:a3];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100005CC4();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = [(CDXLoadExtensionDataOperation *)self incrementalLoadingState];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Extension data request queried incremental loading allowed. incrementalLoadingState: %ld", &v10, 0xCu);
  }

  v7 = [(CDXLoadExtensionDataOperation *)self incrementalLoadingState];
  if (v7 == 2)
  {
    return 1;
  }

  if (v7 == 1)
  {
    v8 = sub_100005CC4();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Eligible for incremental loading, so changing incremental loading state to Confirmed", &v10, 2u);
    }

    [(CDXLoadExtensionDataOperation *)self setIncrementalLoadingState:2];
    return 1;
  }

  return 0;
}

- (BOOL)extensionDataRequest:(id)a3 addedBlockingEntryData:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [(CDXLoadExtensionDataOperation *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = sub_100005CC4();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Extension data request added blocking entry data: %@", buf, 0xCu);
  }

  if ([(CDXLoadExtensionDataOperation *)self performInitialDeletionIfNecessaryWithError:a5])
  {
    v10 = [v7 count];
    v11 = &v10[[(CDXLoadExtensionDataOperation *)self entriesAdded]];
    if (v11 >= [(CDXLoadExtensionDataOperation *)self maximumAllowedEntries])
    {
      v15 = sub_100005CC4();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100022A5C(self);
      }

      v12 = [NSError cx_callDirectoryManagerErrorWithCode:5];
    }

    else
    {
      v12 = 0;
      if (!v10)
      {
LABEL_31:
        v14 = v12 == 0;

        goto LABEL_32;
      }

      while (1)
      {
        v13 = [v7 phoneNumberAtIndex:v12];
        if (v13 == [(CDXLoadExtensionDataOperation *)self lastBlockingPhoneNumber])
        {
          break;
        }

        if (v13 < [(CDXLoadExtensionDataOperation *)self lastBlockingPhoneNumber])
        {
          v16 = sub_100005CC4();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_100022ADC();
          }

          v17 = 3;
          goto LABEL_20;
        }

        [(CDXLoadExtensionDataOperation *)self setLastBlockingPhoneNumber:v13];
        if (v10 == ++v12)
        {
          goto LABEL_21;
        }
      }

      v16 = sub_100005CC4();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100022B5C();
      }

      v17 = 4;
LABEL_20:

      v12 = [NSError cx_callDirectoryManagerErrorWithCode:v17];
      if (v12)
      {
        goto LABEL_28;
      }

LABEL_21:
      v18 = [(CDXLoadExtensionDataOperation *)self store];
      v24 = 0;
      v19 = [v18 addBlockingEntriesWithData:v7 extensionID:-[CDXLoadExtensionDataOperation extensionID](self error:{"extensionID"), &v24}];
      v12 = v24;

      v20 = sub_100005CC4();
      v21 = v20;
      if (v19)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v26 = v10;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Added %lu phone number blocking entries", buf, 0xCu);
        }

        [(CDXLoadExtensionDataOperation *)self setBlockingEntriesAdded:&v10[[(CDXLoadExtensionDataOperation *)self blockingEntriesAdded]]];
      }

      else
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_100022BDC();
        }
      }
    }

LABEL_28:
    if (a5 && v12)
    {
      v22 = v12;
      *a5 = v12;
    }

    goto LABEL_31;
  }

  v14 = 0;
LABEL_32:

  return v14;
}

- (BOOL)extensionDataRequest:(id)a3 removedBlockingEntryData:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [(CDXLoadExtensionDataOperation *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = sub_100005CC4();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Extension data request removed blocking entry data: %@", buf, 0xCu);
  }

  if ([(CDXLoadExtensionDataOperation *)self incrementalLoadingState]== 2)
  {
    v10 = [(CDXLoadExtensionDataOperation *)self store];
    v19 = 0;
    v11 = [v10 removeBlockingEntriesWithData:v7 extensionID:-[CDXLoadExtensionDataOperation extensionID](self error:{"extensionID"), &v19}];
    v12 = v19;

    v13 = sub_100005CC4();
    v14 = v13;
    if (v11)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v7 count];
        *buf = 134217984;
        v21 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Removed %lu phone number blocking entries", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100022C90();
    }

    if (a5)
    {
LABEL_14:
      if (v12)
      {
        v17 = v12;
        *a5 = v12;
      }
    }
  }

  else
  {
    v16 = sub_100005CC4();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100022C5C();
    }

    v12 = [NSError cx_callDirectoryManagerErrorWithCode:8];
    if (a5)
    {
      goto LABEL_14;
    }
  }

  return v12 == 0;
}

- (BOOL)extensionDataRequest:(id)a3 removedAllBlockingEntriesWithError:(id *)a4
{
  v6 = [(CDXLoadExtensionDataOperation *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = sub_100005CC4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Extension data request removed all blocking entries", buf, 2u);
  }

  if ([(CDXLoadExtensionDataOperation *)self incrementalLoadingState]== 2)
  {
    v8 = [(CDXLoadExtensionDataOperation *)self store];
    v17 = 0;
    v9 = [v8 removeBlockingEntriesForExtensionWithID:-[CDXLoadExtensionDataOperation extensionID](self error:{"extensionID"), &v17}];
    v10 = v17;

    v11 = sub_100005CC4();
    v12 = v11;
    if (v9)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Removed all phone number blocking entries", v16, 2u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100022D10();
    }

    if (a4)
    {
LABEL_14:
      if (v10)
      {
        v14 = v10;
        *a4 = v10;
      }
    }
  }

  else
  {
    v13 = sub_100005CC4();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100022C5C();
    }

    v10 = [NSError cx_callDirectoryManagerErrorWithCode:8];
    if (a4)
    {
      goto LABEL_14;
    }
  }

  return v10 == 0;
}

- (BOOL)extensionDataRequest:(id)a3 addedIdentificationEntryData:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [(CDXLoadExtensionDataOperation *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = sub_100005CC4();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Extension data request added identification entry data: %@", buf, 0xCu);
  }

  if ([(CDXLoadExtensionDataOperation *)self performInitialDeletionIfNecessaryWithError:a5])
  {
    v10 = [v7 count];
    v11 = &v10[[(CDXLoadExtensionDataOperation *)self entriesAdded]];
    if (v11 >= [(CDXLoadExtensionDataOperation *)self maximumAllowedEntries])
    {
      v15 = sub_100005CC4();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100022A5C(self);
      }

      v12 = [NSError cx_callDirectoryManagerErrorWithCode:5];
    }

    else
    {
      v12 = 0;
      if (!v10)
      {
LABEL_31:
        v14 = v12 == 0;

        goto LABEL_32;
      }

      while (1)
      {
        v13 = [v7 phoneNumberAtIndex:v12];
        if (v13 == [(CDXLoadExtensionDataOperation *)self lastIdentificationPhoneNumber])
        {
          break;
        }

        if (v13 < [(CDXLoadExtensionDataOperation *)self lastIdentificationPhoneNumber])
        {
          v16 = sub_100005CC4();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_100022D90();
          }

          v17 = 3;
          goto LABEL_20;
        }

        [(CDXLoadExtensionDataOperation *)self setLastIdentificationPhoneNumber:v13];
        if (v10 == ++v12)
        {
          goto LABEL_21;
        }
      }

      v16 = sub_100005CC4();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100022E10();
      }

      v17 = 4;
LABEL_20:

      v12 = [NSError cx_callDirectoryManagerErrorWithCode:v17];
      if (v12)
      {
        goto LABEL_28;
      }

LABEL_21:
      v18 = [(CDXLoadExtensionDataOperation *)self store];
      v24 = 0;
      v19 = [v18 addIdentificationEntriesWithData:v7 extensionID:-[CDXLoadExtensionDataOperation extensionID](self error:{"extensionID"), &v24}];
      v12 = v24;

      v20 = sub_100005CC4();
      v21 = v20;
      if (v19)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v26 = v10;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Added %lu phone number identification entries", buf, 0xCu);
        }

        [(CDXLoadExtensionDataOperation *)self setIdentificationEntriesAdded:&v10[[(CDXLoadExtensionDataOperation *)self identificationEntriesAdded]]];
      }

      else
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_100022E90();
        }
      }
    }

LABEL_28:
    if (a5 && v12)
    {
      v22 = v12;
      *a5 = v12;
    }

    goto LABEL_31;
  }

  v14 = 0;
LABEL_32:

  return v14;
}

- (BOOL)extensionDataRequest:(id)a3 removedIdentificationEntryData:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [(CDXLoadExtensionDataOperation *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = sub_100005CC4();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Extension data request removed identification entry data: %@", buf, 0xCu);
  }

  if ([(CDXLoadExtensionDataOperation *)self incrementalLoadingState]== 2)
  {
    v10 = [(CDXLoadExtensionDataOperation *)self store];
    v19 = 0;
    v11 = [v10 removeIdentificationEntriesWithData:v7 extensionID:-[CDXLoadExtensionDataOperation extensionID](self error:{"extensionID"), &v19}];
    v12 = v19;

    v13 = sub_100005CC4();
    v14 = v13;
    if (v11)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v7 count];
        *buf = 134217984;
        v21 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Removed %lu phone number identification entries", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100022F10();
    }

    if (a5)
    {
LABEL_14:
      if (v12)
      {
        v17 = v12;
        *a5 = v12;
      }
    }
  }

  else
  {
    v16 = sub_100005CC4();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100022C5C();
    }

    v12 = [NSError cx_callDirectoryManagerErrorWithCode:8];
    if (a5)
    {
      goto LABEL_14;
    }
  }

  return v12 == 0;
}

- (BOOL)extensionDataRequest:(id)a3 removedAllIdentificationEntriesWithError:(id *)a4
{
  v6 = [(CDXLoadExtensionDataOperation *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = sub_100005CC4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Extension data request removed all identification entries", buf, 2u);
  }

  if ([(CDXLoadExtensionDataOperation *)self incrementalLoadingState]== 2)
  {
    v8 = [(CDXLoadExtensionDataOperation *)self store];
    v17 = 0;
    v9 = [v8 removeIdentificationEntriesForExtensionWithID:-[CDXLoadExtensionDataOperation extensionID](self error:{"extensionID"), &v17}];
    v10 = v17;

    v11 = sub_100005CC4();
    v12 = v11;
    if (v9)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Removed all phone number identification entries", v16, 2u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100022F90();
    }

    if (a4)
    {
LABEL_14:
      if (v10)
      {
        v14 = v10;
        *a4 = v10;
      }
    }
  }

  else
  {
    v13 = sub_100005CC4();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100022C5C();
    }

    v10 = [NSError cx_callDirectoryManagerErrorWithCode:8];
    if (a4)
    {
      goto LABEL_14;
    }
  }

  return v10 == 0;
}

@end