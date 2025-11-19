@interface SatMsg_IDSOffGridStateManagerObjC
- (SatMsg_IDSOffGridStateManagerObjC)initWithQueue:(const queue *)a3 delegate:(weak_ptr<SatMsg_IDSOffGridStateManagerDelegate>)a4;
- (id).cxx_construct;
- (optional<BOOL>)getCachedOffGridMode;
- (shared_ptr<std::vector<ctu::cf::CFSharedRef<const)addPrimaryContacts:(id)a3 dst:(void *)a4;
- (shared_ptr<std::vector<ctu::cf::CFSharedRef<const)getContacts;
- (void)dealloc;
- (void)doInitManagerAndFetch;
- (void)doInitManagerIfRequired;
- (void)fetchOffGridMode;
- (void)initManagerAndFetch;
- (void)manager:(id)a3 contactInfoUpdated:(id)a4;
- (void)manager:(id)a3 offGridModeUpdated:(int64_t)a4 publishStatus:(int64_t)a5 context:(id)a6;
- (void)setContacts:(const void *)a3;
- (void)setOffGridMode:(BOOL)a3 entryPoint:(const void *)a4;
- (void)updateOffGridMode:(int64_t)a3;
@end

@implementation SatMsg_IDSOffGridStateManagerObjC

- (SatMsg_IDSOffGridStateManagerObjC)initWithQueue:(const queue *)a3 delegate:(weak_ptr<SatMsg_IDSOffGridStateManagerDelegate>)a4
{
  v5.receiver = self;
  v5.super_class = SatMsg_IDSOffGridStateManagerObjC;
  if ([(SatMsg_IDSOffGridStateManagerObjC *)&v5 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  [(SatMsg_IDSOffGridStateManagerObjC *)self setFManager:0];
  fObj = self->fManagerQueue.fObj.fObj;
  self->fManagerQueue.fObj.fObj = 0;

  v4 = self->fStewieQueue.fObj.fObj;
  self->fStewieQueue.fObj.fObj = 0;

  v5.receiver = self;
  v5.super_class = SatMsg_IDSOffGridStateManagerObjC;
  [(SatMsg_IDSOffGridStateManagerObjC *)&v5 dealloc];
}

- (void)initManagerAndFetch
{
  v3 = self;
  v4 = sub_100032AC8(&self->fManagerQueue.fObj.fObj);
  operator new();
}

- (void)doInitManagerIfRequired
{
  v3 = sub_100032AC8(&self->fManagerQueue.fObj.fObj);
  dispatch_assert_queue_V2(v3);

  v4 = [(SatMsg_IDSOffGridStateManagerObjC *)self fManager];

  if (!v4)
  {
    v5 = [IDSOffGridStateManager alloc];
    v6 = sub_100032AC8(&self->fManagerQueue.fObj.fObj);
    v10 = 0;
    v7 = [v5 initWithQueue:v6 error:&v10];
    v8 = v10;

    if (v8)
    {
      v9 = sub_100032AC8(self->logger.__ptr_);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v8;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "failed to create IDSOffGridStateManager, error: %@", buf, 0xCu);
      }
    }

    else
    {
      [(SatMsg_IDSOffGridStateManagerObjC *)self setFManager:v7];
      v9 = [(SatMsg_IDSOffGridStateManagerObjC *)self fManager];
      [v9 setDelegate:self];
    }
  }
}

- (void)doInitManagerAndFetch
{
  v3 = sub_100032AC8(&self->fManagerQueue.fObj.fObj);
  dispatch_assert_queue_V2(v3);

  if (!self->fInFetch)
  {
    self->fInFetch = 1;
    [(SatMsg_IDSOffGridStateManagerObjC *)self doInitManagerIfRequired];
    v4 = [(SatMsg_IDSOffGridStateManagerObjC *)self fManager];

    if (v4)
    {
      v5 = sub_100032AC8(self->logger.__ptr_);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I IDS contacts initial fetch started", buf, 2u);
      }

      objc_initWeak(buf, self);
      v6 = [(SatMsg_IDSOffGridStateManagerObjC *)self fManager];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1012E9F14;
      v7[3] = &unk_101F2A448;
      objc_copyWeak(&v8, buf);
      [v6 fetchContactsOfType:1 completion:v7];

      objc_destroyWeak(&v8);
      objc_destroyWeak(buf);
    }

    else
    {
      self->fInFetch = 0;
    }
  }
}

- (void)setContacts:(const void *)a3
{
  v5 = self;
  v6 = *(a3 + 1);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = sub_100032AC8(&self->fStewieQueue.fObj.fObj);
  operator new();
}

- (shared_ptr<std::vector<ctu::cf::CFSharedRef<const)getContacts
{
  v4 = v2;
  v5 = sub_100032AC8(&self->fStewieQueue.fObj.fObj);
  dispatch_assert_queue_V2(v5);

  ptr = self->fContacts.__ptr_;
  if (!ptr)
  {
    v6 = [(SatMsg_IDSOffGridStateManagerObjC *)self initManagerAndFetch];
    ptr = self->fContacts.__ptr_;
  }

  cntrl = self->fContacts.__cntrl_;
  *v4 = ptr;
  v4[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = v7;
  result.__ptr_ = v6;
  return result;
}

- (void)fetchOffGridMode
{
  v3 = sub_100032AC8(self->logger.__ptr_);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I fetchOffGridMode", buf, 2u);
  }

  v4 = self;
  v5 = sub_100032AC8(&self->fManagerQueue.fObj.fObj);
  operator new();
}

- (void)updateOffGridMode:(int64_t)a3
{
  v5 = sub_100032AC8(&self->fManagerQueue.fObj.fObj);
  dispatch_assert_queue_V2(v5);

  objc_initWeak(&location, self);
  objc_copyWeak(to, &location);
  cntrl = self->fDelegate.__cntrl_;
  to[1] = self->fDelegate.__ptr_;
  to[2] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 2, 1uLL, memory_order_relaxed);
  }

  to[3] = a3;
  v7 = sub_100032AC8(&self->fStewieQueue.fObj.fObj);
  operator new();
}

- (optional<BOOL>)getCachedOffGridMode
{
  v3 = sub_100032AC8(&self->fStewieQueue.fObj.fObj);
  dispatch_assert_queue_V2(v3);

  return self->fCachedOffGridMode;
}

- (void)setOffGridMode:(BOOL)a3 entryPoint:(const void *)a4
{
  v5 = self;
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(__p, *a4, *(a4 + 1));
  }

  else
  {
    *__p = *a4;
    __p[2] = *(a4 + 2);
  }

  v6 = sub_100032AC8(&v5->fManagerQueue.fObj.fObj);
  operator new();
}

- (void)manager:(id)a3 offGridModeUpdated:(int64_t)a4 publishStatus:(int64_t)a5 context:(id)a6
{
  v9 = sub_100032AC8(self->logger.__ptr_);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (a4 > 2)
    {
      v10 = "???";
    }

    else
    {
      v10 = off_101F2A560[a4];
    }

    if (a5 > 2)
    {
      v11 = "???";
    }

    else
    {
      v11 = off_101F2A578[a5];
    }

    v12 = 136315394;
    v13 = v10;
    v14 = 2080;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I OffGridMode updated: mode = %s, publishStatus = %s", &v12, 0x16u);
  }

  [(SatMsg_IDSOffGridStateManagerObjC *)self updateOffGridMode:a4];
}

- (void)manager:(id)a3 contactInfoUpdated:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100032AC8(&self->fManagerQueue.fObj.fObj);
  dispatch_assert_queue_V2(v8);

  v9 = sub_100032AC8(self->logger.__ptr_);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = [v7 count];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I contacts updated with %d records", buf, 8u);
  }

  v10 = [(SatMsg_IDSOffGridStateManagerObjC *)self fManager];
  v11 = [v6 isEqual:v10];

  if (v11)
  {
    operator new();
  }

  v12 = sub_100032AC8(self->logger.__ptr_);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I got manager:contactInfoUpdated callback - MANAGER is different", buf, 2u);
  }
}

- (shared_ptr<std::vector<ctu::cf::CFSharedRef<const)addPrimaryContacts:(id)a3 dst:(void *)a4
{
  v26 = v4;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = a3;
  v7 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v7)
  {
    v8 = 0;
    v9 = *v30;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v12 = [v11 uri];
        v13 = [v12 unprefixedURI];
        IsPhoneNumber = IMStringIsPhoneNumber();

        ++v8;
        if (IsPhoneNumber)
        {
          theString2 = 0;
          v15 = [v11 uri];
          v16 = [v15 unprefixedURI];
          v17 = v16;
          theString2 = v16;
          if (v16)
          {
            CFRetain(v16);
          }

          v18 = **a4;
          v19 = *(*a4 + 8);
          while (v18 != v19)
          {
            if (CFStringCompare(*v18, theString2, 0) == kCFCompareEqualTo)
            {
              goto LABEL_19;
            }

            ++v18;
          }

          v22 = sub_100032AC8(self->logger.__ptr_);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            v34 = v8;
            v35 = 2112;
            v36 = theString2;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %zu, adding contact: %@", buf, 0x16u);
          }

          sub_10021B890(*a4, &theString2);
LABEL_19:
          sub_100005978(&theString2);
        }

        else
        {
          v20 = sub_100032AC8(self->logger.__ptr_);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [v11 uri];
            *buf = 138412290;
            v34 = v21;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I skipped contact: %@", buf, 0xCu);
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v7);
  }

  v23 = *(a4 + 1);
  *v26 = *a4;
  v26[1] = v23;
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = v25;
  result.__ptr_ = v24;
  return result;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 4) = 0;
  *(self + 28) = 0;
  return self;
}

@end