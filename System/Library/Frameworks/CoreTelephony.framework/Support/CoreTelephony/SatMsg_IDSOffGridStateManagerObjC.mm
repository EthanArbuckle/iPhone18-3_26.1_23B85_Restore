@interface SatMsg_IDSOffGridStateManagerObjC
- (SatMsg_IDSOffGridStateManagerObjC)initWithQueue:(const queue *)queue delegate:(weak_ptr<SatMsg_IDSOffGridStateManagerDelegate>)delegate;
- (id).cxx_construct;
- (optional<BOOL>)getCachedOffGridMode;
- (shared_ptr<std::vector<ctu::cf::CFSharedRef<const)addPrimaryContacts:(id)contacts dst:(void *)dst;
- (shared_ptr<std::vector<ctu::cf::CFSharedRef<const)getContacts;
- (void)dealloc;
- (void)doInitManagerAndFetch;
- (void)doInitManagerIfRequired;
- (void)fetchOffGridMode;
- (void)initManagerAndFetch;
- (void)manager:(id)manager contactInfoUpdated:(id)updated;
- (void)manager:(id)manager offGridModeUpdated:(int64_t)updated publishStatus:(int64_t)status context:(id)context;
- (void)setContacts:(const void *)contacts;
- (void)setOffGridMode:(BOOL)mode entryPoint:(const void *)point;
- (void)updateOffGridMode:(int64_t)mode;
@end

@implementation SatMsg_IDSOffGridStateManagerObjC

- (SatMsg_IDSOffGridStateManagerObjC)initWithQueue:(const queue *)queue delegate:(weak_ptr<SatMsg_IDSOffGridStateManagerDelegate>)delegate
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
  selfCopy = self;
  v4 = sub_100032AC8(&self->fManagerQueue.fObj.fObj);
  operator new();
}

- (void)doInitManagerIfRequired
{
  v3 = sub_100032AC8(&self->fManagerQueue.fObj.fObj);
  dispatch_assert_queue_V2(v3);

  fManager = [(SatMsg_IDSOffGridStateManagerObjC *)self fManager];

  if (!fManager)
  {
    v5 = [IDSOffGridStateManager alloc];
    v6 = sub_100032AC8(&self->fManagerQueue.fObj.fObj);
    v10 = 0;
    v7 = [v5 initWithQueue:v6 error:&v10];
    v8 = v10;

    if (v8)
    {
      fManager2 = sub_100032AC8(self->logger.__ptr_);
      if (os_log_type_enabled(fManager2, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v8;
        _os_log_error_impl(&_mh_execute_header, fManager2, OS_LOG_TYPE_ERROR, "failed to create IDSOffGridStateManager, error: %@", buf, 0xCu);
      }
    }

    else
    {
      [(SatMsg_IDSOffGridStateManagerObjC *)self setFManager:v7];
      fManager2 = [(SatMsg_IDSOffGridStateManagerObjC *)self fManager];
      [fManager2 setDelegate:self];
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
    fManager = [(SatMsg_IDSOffGridStateManagerObjC *)self fManager];

    if (fManager)
    {
      v5 = sub_100032AC8(self->logger.__ptr_);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I IDS contacts initial fetch started", buf, 2u);
      }

      objc_initWeak(buf, self);
      fManager2 = [(SatMsg_IDSOffGridStateManagerObjC *)self fManager];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1012E9F14;
      v7[3] = &unk_101F2A448;
      objc_copyWeak(&v8, buf);
      [fManager2 fetchContactsOfType:1 completion:v7];

      objc_destroyWeak(&v8);
      objc_destroyWeak(buf);
    }

    else
    {
      self->fInFetch = 0;
    }
  }
}

- (void)setContacts:(const void *)contacts
{
  selfCopy = self;
  v6 = *(contacts + 1);
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
    initManagerAndFetch = [(SatMsg_IDSOffGridStateManagerObjC *)self initManagerAndFetch];
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
  result.__ptr_ = initManagerAndFetch;
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

  selfCopy = self;
  v5 = sub_100032AC8(&self->fManagerQueue.fObj.fObj);
  operator new();
}

- (void)updateOffGridMode:(int64_t)mode
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

  to[3] = mode;
  v7 = sub_100032AC8(&self->fStewieQueue.fObj.fObj);
  operator new();
}

- (optional<BOOL>)getCachedOffGridMode
{
  v3 = sub_100032AC8(&self->fStewieQueue.fObj.fObj);
  dispatch_assert_queue_V2(v3);

  return self->fCachedOffGridMode;
}

- (void)setOffGridMode:(BOOL)mode entryPoint:(const void *)point
{
  selfCopy = self;
  if (*(point + 23) < 0)
  {
    sub_100005F2C(__p, *point, *(point + 1));
  }

  else
  {
    *__p = *point;
    __p[2] = *(point + 2);
  }

  v6 = sub_100032AC8(&selfCopy->fManagerQueue.fObj.fObj);
  operator new();
}

- (void)manager:(id)manager offGridModeUpdated:(int64_t)updated publishStatus:(int64_t)status context:(id)context
{
  v9 = sub_100032AC8(self->logger.__ptr_);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (updated > 2)
    {
      v10 = "???";
    }

    else
    {
      v10 = off_101F2A560[updated];
    }

    if (status > 2)
    {
      v11 = "???";
    }

    else
    {
      v11 = off_101F2A578[status];
    }

    v12 = 136315394;
    v13 = v10;
    v14 = 2080;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I OffGridMode updated: mode = %s, publishStatus = %s", &v12, 0x16u);
  }

  [(SatMsg_IDSOffGridStateManagerObjC *)self updateOffGridMode:updated];
}

- (void)manager:(id)manager contactInfoUpdated:(id)updated
{
  managerCopy = manager;
  updatedCopy = updated;
  v8 = sub_100032AC8(&self->fManagerQueue.fObj.fObj);
  dispatch_assert_queue_V2(v8);

  v9 = sub_100032AC8(self->logger.__ptr_);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = [updatedCopy count];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I contacts updated with %d records", buf, 8u);
  }

  fManager = [(SatMsg_IDSOffGridStateManagerObjC *)self fManager];
  v11 = [managerCopy isEqual:fManager];

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

- (shared_ptr<std::vector<ctu::cf::CFSharedRef<const)addPrimaryContacts:(id)contacts dst:(void *)dst
{
  v26 = v4;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = contacts;
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
        unprefixedURI = [v12 unprefixedURI];
        IsPhoneNumber = IMStringIsPhoneNumber();

        ++v8;
        if (IsPhoneNumber)
        {
          theString2 = 0;
          v15 = [v11 uri];
          unprefixedURI2 = [v15 unprefixedURI];
          v17 = unprefixedURI2;
          theString2 = unprefixedURI2;
          if (unprefixedURI2)
          {
            CFRetain(unprefixedURI2);
          }

          v18 = **dst;
          v19 = *(*dst + 8);
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

          sub_10021B890(*dst, &theString2);
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

  v23 = *(dst + 1);
  *v26 = *dst;
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