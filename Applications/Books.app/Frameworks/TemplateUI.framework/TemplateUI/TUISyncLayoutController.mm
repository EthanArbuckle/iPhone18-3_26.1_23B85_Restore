@interface TUISyncLayoutController
- (BOOL)_processUntilDirtyOrEndtime:(double)a3;
- (BOOL)flush;
- (TUISyncLayoutController)init;
- (TUISyncLayoutController)initWithDelegate:(id)a3;
- (TUISyncLayoutControllerDelegate)delegate;
- (id)syncAssertionWithTimeout:(double)a3 transaction:(id)a4 feedId:(id)a5;
- (void)_removeAssertion:(id)a3;
- (void)removeAssertion:(id)a3;
@end

@implementation TUISyncLayoutController

- (TUISyncLayoutController)init
{
  v6.receiver = self;
  v6.super_class = TUISyncLayoutController;
  v2 = [(TUISyncLayoutController *)&v6 init];
  if (v2)
  {
    v3 = [NSHashTable hashTableWithOptions:517];
    assertions = v2->_assertions;
    v2->_assertions = v3;
  }

  return v2;
}

- (TUISyncLayoutController)initWithDelegate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TUISyncLayoutController;
  v5 = [(TUISyncLayoutController *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = [NSHashTable hashTableWithOptions:517];
    assertions = v6->_assertions;
    v6->_assertions = v7;
  }

  return v6;
}

- (BOOL)flush
{
  flags = self->_flags;
  if ((flags & 1) == 0)
  {
    v3 = self;
    *&self->_flags = flags & 0xFA | 1;
    Current = CFAbsoluteTimeGetCurrent();
    v5 = [(NSHashTable *)v3->_assertions allObjects];
    if ([v5 count])
    {
      v52 = flags;
      v6 = 0;
      v7 = 0;
      p_isa = &v3->super.isa;
      do
      {
        if ((v7 & 1) == 0)
        {
          v8 = TUITransactionLog();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            sub_199E5C(&v66, v67, v8);
          }

          v9 = TUITransactionLog();
          v6 = os_signpost_id_generate(v9);

          v10 = TUITransactionLog();
          v11 = v10;
          if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_0, v11, OS_SIGNPOST_INTERVAL_BEGIN, v6, "WaitForSyncTransaction", "", buf, 2u);
          }
        }

        *&v3->_flags &= ~2u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v12 = v5;
        v13 = [v12 countByEnumeratingWithState:&v62 objects:v74 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v63;
          v16 = 0.0;
          do
          {
            v17 = 0;
            do
            {
              if (*v63 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v18 = *(*(&v62 + 1) + 8 * v17);
              if (v18)
              {
                v19 = *(v18 + 16);
              }

              else
              {
                v19 = 0.0;
              }

              if (v16 < v19)
              {
                v16 = v19;
              }

              v17 = v17 + 1;
            }

            while (v14 != v17);
            v20 = [v12 countByEnumeratingWithState:&v62 objects:v74 count:16];
            v14 = v20;
          }

          while (v20);
        }

        else
        {
          v16 = 0.0;
        }

        v3 = p_isa;
        v21 = [p_isa _processUntilDirtyOrEndtime:Current + v16];
        v22 = [p_isa[2] allObjects];
        v5 = v22;
        if (v21)
        {
          break;
        }

        v23 = [v22 count];
        v7 = 1;
      }

      while (v23);
      v24 = [v5 count];
      v25 = CFAbsoluteTimeGetCurrent();
      if (v24)
      {
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v26 = v5;
        v27 = [v26 countByEnumeratingWithState:&v58 objects:v73 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v59;
          v30 = 0.0;
          do
          {
            v31 = 0;
            do
            {
              if (*v59 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v32 = *(*(&v58 + 1) + 8 * v31);
              if (v32)
              {
                v33 = *(v32 + 16);
              }

              else
              {
                v33 = 0.0;
              }

              if (v30 < v33)
              {
                v30 = v33;
              }

              v31 = v31 + 1;
            }

            while (v28 != v31);
            v34 = [v26 countByEnumeratingWithState:&v58 objects:v73 count:16];
            v28 = v34;
          }

          while (v34);
        }

        else
        {
          v30 = 0.0;
        }
      }

      else
      {
        v30 = 0.0;
      }

      v35 = TUITransactionLog();
      v36 = v35;
      if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
      {
        v37 = @"YES";
        if (!v24)
        {
          v37 = @"NO";
        }

        *buf = 134218242;
        v70 = v30;
        v71 = 2114;
        v72 = v37;
        _os_signpost_emit_with_name_impl(&dword_0, v36, OS_SIGNPOST_INTERVAL_END, v6, "WaitForSyncTransaction", "Time limit: %fs Timed out: %{public}@ enableTelemetry=YES ", buf, 0x16u);
      }

      v38 = v25 - Current;
      if (v38 > 0.1)
      {
        v39 = TUITransactionLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v70 = v38;
          _os_log_impl(&dword_0, v39, OS_LOG_TYPE_INFO, "time spent waiting for sync layout flush: %.2fs", buf, 0xCu);
        }
      }

      if (v24)
      {
        v40 = TUITransactionLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          sub_199E9C(v5, v40, v38);
        }

        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v41 = v5;
        v42 = [v41 countByEnumeratingWithState:&v54 objects:v68 count:16];
        if (v42)
        {
          v43 = v42;
          v44 = *v55;
          do
          {
            v45 = 0;
            do
            {
              if (*v55 != v44)
              {
                objc_enumerationMutation(v41);
              }

              v46 = *(*(&v54 + 1) + 8 * v45);
              v47 = TUITransactionLog();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
              {
                if (v46)
                {
                  v48 = *&v46[1].isa;
                }

                else
                {
                  v48 = 0.0;
                }

                *buf = 134218242;
                v70 = v48;
                v71 = 2114;
                v72 = v46;
                _os_log_impl(&dword_0, v47, OS_LOG_TYPE_INFO, "- [fid:%lu] %{public}@", buf, 0x16u);
              }

              v45 = v45 + 1;
            }

            while (v43 != v45);
            v49 = [v41 countByEnumeratingWithState:&v54 objects:v68 count:16];
            v43 = v49;
          }

          while (v49);
        }

        v3 = p_isa;
      }

      v50 = TUITransactionLog();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        sub_199F40(v50);
      }

      flags = v52;
    }

    *&v3->_flags &= ~1u;
  }

  return (flags & 1) == 0;
}

- (BOOL)_processUntilDirtyOrEndtime:(double)a3
{
  if ((*&self->_flags & 2) != 0)
  {
    return 0;
  }

  while (a3 - CFAbsoluteTimeGetCurrent() > 0.0)
  {
    v5 = TUIDispatchDrainWithTimeout();
    result = v5 == 3;
    if ((*&self->_flags & 2) != 0 || v5 == 3)
    {
      return result;
    }
  }

  return 1;
}

- (id)syncAssertionWithTimeout:(double)a3 transaction:(id)a4 feedId:(id)a5
{
  v8 = a4;
  v9 = [[_TUISyncLayoutAssertion alloc] initWithController:self timeout:v8 transaction:a5.var0 feedId:a3];
  [(NSHashTable *)self->_assertions addObject:v9];
  *&self->_flags |= 2u;
  v10 = TUITransactionLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v13 = 138543362;
    v14 = v8;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "scheduled sync-assertion for tx=%{public}@", &v13, 0xCu);
  }

  if ((*&self->_flags & 4) == 0 && (*&self->_flags & 1) == 0)
  {
    *&self->_flags |= 4u;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained syncLayoutControllerNeedsFlushing:self];
  }

  return v9;
}

- (void)removeAssertion:(id)a3
{
  v4 = a3;
  if (+[NSThread isMainThread])
  {
    [(TUISyncLayoutController *)self _removeAssertion:v4];
  }

  else
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_7F92C;
    v5[3] = &unk_25DCA0;
    v5[4] = self;
    v6 = v4;
    TUIDispatchAsyncViaRunLoop(v5);
  }
}

- (void)_removeAssertion:(id)a3
{
  v4 = a3;
  v5 = TUITransactionLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    sub_199F84(v4, v5);
  }

  if (v4)
  {
    [(NSHashTable *)self->_assertions removeObject:v4];
  }

  *&self->_flags |= 2u;
}

- (TUISyncLayoutControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end