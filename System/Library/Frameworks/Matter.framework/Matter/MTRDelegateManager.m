@interface MTRDelegateManager
- (BOOL)_callDelegatesWithBlock:(id)a3 logString:(const char *)a4;
- (MTRDelegateManager)initWithOwner:(id)a3;
- (unint64_t)iterateDelegatesWithBlock:(id)a3;
- (void)addDelegateInfo:(id)a3;
- (void)removeDelegate:(id)a3;
@end

@implementation MTRDelegateManager

- (MTRDelegateManager)initWithOwner:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MTRDelegateManager;
  v5 = [(MTRDelegateManager *)&v10 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    delegates = v5->_delegates;
    v5->_delegates = v6;

    objc_storeWeak(&v5->_owner, v4);
    v8 = v5;
  }

  return v5;
}

- (void)addDelegateInfo:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  v6 = [MEMORY[0x277CBEB58] set];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = self;
  v7 = self->_delegates;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v8)
  {
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v12 = [v11 delegate];
        if (v12)
        {
          v13 = [v4 delegate];
          v14 = v12 == v13;

          if (v14)
          {
            [v6 addObject:v11];
            v15 = sub_2393D9044(0);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = [v4 delegate];
              *buf = 138412546;
              v34 = WeakRetained;
              v35 = 2048;
              v36 = v16;
              _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_DEFAULT, "%@ replacing delegate info for %p", buf, 0x16u);
            }

            if (sub_2393D5398(2u))
            {
              [v4 delegate];
              v27 = v26 = WeakRetained;
              sub_2393D5320(0, 2);
            }
          }
        }

        else
        {
          [v6 addObject:v11];
          v17 = sub_2393D9044(0);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v11 delegatePointerValue];
            *buf = 138412546;
            v34 = WeakRetained;
            v35 = 2048;
            v36 = v18;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "%@ removing delegate info for nil delegate %p", buf, 0x16u);
          }

          if (sub_2393D5398(2u))
          {
            v26 = WeakRetained;
            v27 = [v11 delegatePointerValue];
            sub_2393D5320(0, 2);
          }
        }
      }

      v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v8);
  }

  if ([v6 count])
  {
    v19 = [(NSMutableSet *)v28->_delegates count];
    [(NSMutableSet *)v28->_delegates minusSet:v6];
    v20 = sub_2393D9044(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [(NSMutableSet *)v28->_delegates count];
      *buf = 138412546;
      v34 = WeakRetained;
      v35 = 2048;
      v36 = v19 - v21;
      _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_DEFAULT, "%@ addDelegate: removed %lu", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      v26 = WeakRetained;
      v27 = (v19 - [(NSMutableSet *)v28->_delegates count]);
      sub_2393D5320(0, 2);
    }
  }

  [(NSMutableSet *)v28->_delegates addObject:v4, v26, v27];
  v22 = sub_2393D9044(0);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v4 delegatePointerValue];
    v24 = [(NSMutableSet *)v28->_delegates count];
    *buf = 138412802;
    v34 = WeakRetained;
    v35 = 2048;
    v36 = v23;
    v37 = 2048;
    v38 = v24;
    _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_DEFAULT, "%@ added delegate %p total %lu", buf, 0x20u);
  }

  if (sub_2393D5398(2u))
  {
    [v4 delegatePointerValue];
    [(NSMutableSet *)v28->_delegates count];
    sub_2393D5320(0, 2);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)removeDelegate:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  v6 = sub_2393D9044(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = WeakRetained;
    *&buf[12] = 2048;
    *&buf[14] = v4;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "%@ removeDelegate %p", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v21 = sub_238DB7464;
  v22 = sub_238DB7474;
  v23 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_238DB747C;
  v11[3] = &unk_278A716C0;
  v7 = v4;
  v12 = v7;
  v13 = buf;
  [(MTRDelegateManager *)self iterateDelegatesWithBlock:v11];
  if (*(*&buf[8] + 40))
  {
    [(NSMutableSet *)self->_delegates removeObject:?];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(NSMutableSet *)self->_delegates count];
      *v14 = 138412802;
      v15 = WeakRetained;
      v16 = 2048;
      v17 = v7;
      v18 = 2048;
      v19 = v8;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "%@ removed %p remaining %lu", v14, 0x20u);
    }

    if (sub_2393D5398(2u))
    {
LABEL_13:
      [(NSMutableSet *)self->_delegates count];
      sub_2393D5320(0, 2);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(NSMutableSet *)self->_delegates count];
      *v14 = 138412802;
      v15 = WeakRetained;
      v16 = 2048;
      v17 = v7;
      v18 = 2048;
      v19 = v9;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "%@ delegate %p not found in %lu", v14, 0x20u);
    }

    if (sub_2393D5398(2u))
    {
      goto LABEL_13;
    }
  }

  _Block_object_dispose(buf, 8);
  v10 = *MEMORY[0x277D85DE8];
}

- (unint64_t)iterateDelegatesWithBlock:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  if ([(NSMutableSet *)self->_delegates count])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = self->_delegates;
    v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v24 objects:v34 count:16];
    v7 = 0;
    if (v6)
    {
      v8 = *v25;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v24 + 1) + 8 * i);
          v11 = [v10 delegate];
          if (v11)
          {
            if (v4)
            {
              v12 = objc_autoreleasePoolPush();
              v4[2](v4, v10);
              objc_autoreleasePoolPop(v12);
            }
          }

          else
          {
            if (!v7)
            {
              v7 = [MEMORY[0x277CBEB58] set];
            }

            [v7 addObject:v10];
          }
        }

        v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v24 objects:v34 count:16];
      }

      while (v6);
    }

    if ([v7 count])
    {
      [(NSMutableSet *)self->_delegates minusSet:v7];
      v13 = sub_2393D9044(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v7 count];
        v15 = [(NSMutableSet *)self->_delegates count];
        *buf = 138412802;
        v29 = WeakRetained;
        v30 = 2048;
        v31 = v14;
        v32 = 2048;
        v33 = v15;
        _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_DEFAULT, "%@ iterateDelegatesWithBlock: removed %lu remaining %lu", buf, 0x20u);
      }

      if (sub_2393D5398(2u))
      {
        v21 = [v7 count];
        v22 = [(NSMutableSet *)self->_delegates count];
        v20 = WeakRetained;
        sub_2393D5320(0, 2);
      }
    }

    v16 = [(NSMutableSet *)self->_delegates count:v20];
  }

  else
  {
    v17 = sub_2393D9044(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = WeakRetained;
      _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_INFO, "%@ no delegates to iterate", buf, 0xCu);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }

    v16 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)_callDelegatesWithBlock:(id)a3 logString:(const char *)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238DB7A7C;
  v15[3] = &unk_278A716E8;
  v8 = v6;
  v16 = v8;
  v17 = &v18;
  [(MTRDelegateManager *)self iterateDelegatesWithBlock:v15];
  if (a4)
  {
    v9 = sub_2393D9044(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v19[3];
      *buf = 138412802;
      v23 = WeakRetained;
      v24 = 2048;
      v25 = v10;
      v26 = 2080;
      v27 = a4;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "%@ %lu delegates called for %s", buf, 0x20u);
    }

    if (sub_2393D5398(2u))
    {
      v14 = v19[3];
      sub_2393D5320(0, 2);
    }
  }

  v11 = v19[3] != 0;

  _Block_object_dispose(&v18, 8);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

@end