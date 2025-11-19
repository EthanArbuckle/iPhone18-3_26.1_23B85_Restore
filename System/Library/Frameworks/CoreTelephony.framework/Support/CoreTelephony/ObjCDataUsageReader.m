@interface ObjCDataUsageReader
- (ObjCDataUsageReader)initWithRegistry:(const void *)a3 withQueue:(queue)a4;
- (id).cxx_construct;
- (void)logPerAppUsageData_sync:(BOOL)a3 withCurrentSubtag:(unsigned int)a4 withCallback:(function<void)(BOOL;
- (void)resetWorkspace_sync;
@end

@implementation ObjCDataUsageReader

- (ObjCDataUsageReader)initWithRegistry:(const void *)a3 withQueue:(queue)a4
{
  v22.receiver = self;
  v22.super_class = ObjCDataUsageReader;
  v5 = [(ObjCDataUsageReader *)&v22 init:a3];
  v6 = v5;
  if (v5)
  {
    v8 = *a3;
    v7 = *(a3 + 1);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v5->_registry.__cntrl_;
    v6->_registry.__ptr_ = v8;
    v6->_registry.__cntrl_ = v7;
    if (cntrl)
    {
      sub_100007C00(cntrl);
    }

    v10 = [AnalyticsWorkspace alloc];
    v11 = [NSString stringWithUTF8String:sub_1000020A8()];
    v12 = sub_100001FE8();
    if ((v12->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = v12->__r_.__value_.__r.__words[0];
    }

    v14 = [NSString stringWithUTF8String:v13];
    v15 = [v10 initWorkspaceWithName:v11 atPath:v14 useReadOnly:1];
    workspace = v6->_workspace;
    v6->_workspace = v15;

    v17 = [[ProcessAnalytics alloc] initWithWorkspace:v6->_workspace withCache:0];
    processSpace = v6->_processSpace;
    v6->_processSpace = v17;

    v19 = [[UsageAnalytics alloc] initWithWorkspace:v6->_workspace withCache:0];
    usageSpace = v6->_usageSpace;
    v6->_usageSpace = v19;
  }

  return v6;
}

- (void)resetWorkspace_sync
{
  v3 = objc_autoreleasePoolPush();
  [(AnalyticsWorkspace *)self->_workspace save];
  [(AnalyticsWorkspace *)self->_workspace reset];

  objc_autoreleasePoolPop(v3);
}

- (void)logPerAppUsageData_sync:(BOOL)a3 withCurrentSubtag:(unsigned int)a4 withCallback:(function<void)(BOOL
{
  v7 = a3;
  v9 = objc_autoreleasePoolPush();
  v66[0] = 0;
  v66[1] = 0;
  v64 = 0;
  v65 = v66;
  v62 = 0;
  v63 = 0;
  workspace = self->_workspace;
  DataUsageLog = getDataUsageLog();
  sub_100002EF8(workspace, &v65, a4, DataUsageLog, &v62);
  v12 = *getDataUsageLog();
  if (v7)
  {
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    *v49 = 0u;
    v50 = 0u;
    *v47 = 0u;
    memset(v48, 0, sizeof(v48));
    sub_100002844(v47);
    v13 = v47[0];
    *(v48 + *(v47[0] - 3) + 8) = 30;
    *(&v47[1] + *(v13 - 3)) = *(&v47[1] + *(v13 - 3)) & 0xFFFFFF4F | 0x80;
    v14 = sub_100004CC4(v47);
    v15 = *v14;
    *(v14 + *(*v14 - 24) + 24) = 30;
    *(v14 + *(v15 - 24) + 8) = *(v14 + *(v15 - 24) + 8) & 0xFFFFFF4F | 0x80;
    LOBYTE(v71[0].__locale_) = 124;
    v16 = sub_100004CC4(v14);
    v17 = *v16;
    *(v16 + *(*v16 - 24) + 24) = 25;
    *(v16 + *(v17 - 24) + 8) = *(v16 + *(v17 - 24) + 8) & 0xFFFFFF4F | 0x80;
    v18 = sub_100004CC4(v16);
    v19 = *v18;
    *(v18 + *(*v18 - 24) + 24) = 25;
    *(v18 + *(v19 - 24) + 8) = *(v18 + *(v19 - 24) + 8) & 0xFFFFFF4F | 0x80;
    LOBYTE(v71[0].__locale_) = 124;
    v20 = sub_100004CC4(v18);
    *(v20 + *(*v20 - 24) + 24) = 15;
    v21 = sub_100004CC4(v20);
    *(v21 + *(*v21 - 24) + 24) = 15;
    LOBYTE(v71[0].__locale_) = 124;
    v22 = sub_100004CC4(v21);
    *(v22 + *(*v22 - 24) + 24) = 15;
    v23 = sub_100004CC4(v22);
    *(v23 + *(*v23 - 24) + 24) = 15;
    LOBYTE(v71[0].__locale_) = 124;
    v24 = sub_100004CC4(v23);
    *(v24 + *(*v24 - 24) + 24) = 15;
    v25 = sub_100004CC4(v24);
    *(v25 + *(*v25 - 24) + 24) = 15;
    LOBYTE(v71[0].__locale_) = 124;
    v26 = sub_100004CC4(v25);
    *(v26 + *(*v26 - 24) + 24) = 15;
    v27 = sub_100004CC4(v26);
    *(v27 + *(*v27 - 24) + 24) = 15;
    LOBYTE(v71[0].__locale_) = 124;
    v28 = sub_100004CC4(v27);
    *(v28 + *(*v28 - 24) + 24) = 15;
    v29 = sub_100004CC4(v28);
    *(v29 + *(*v29 - 24) + 24) = 15;
    LOBYTE(v71[0].__locale_) = 124;
    v30 = sub_100004CC4(v29);
    *(v30 + *(*v30 - 24) + 24) = 15;
    v31 = sub_100004CC4(v30);
    *(v31 + *(*v31 - 24) + 24) = 15;
    LOBYTE(v71[0].__locale_) = 124;
    v32 = sub_100004CC4(v31);
    *(v32 + *(*v32 - 24) + 24) = 15;
    v33 = sub_100004CC4(v32);
    *(v33 + *(*v33 - 24) + 24) = 15;
    LOBYTE(v71[0].__locale_) = 124;
    v34 = sub_100004CC4(v33);
    std::ios_base::getloc((v34 + *(*v34 - 24)));
    v35 = std::locale::use_facet(v71, &std::ctype<char>::id);
    (v35->__vftable[2].~facet_0)(v35, 10);
    std::locale::~locale(v71);
    std::ostream::put();
    std::ostream::flush();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000029B0(v47, v71);
      v36 = SHIBYTE(v72[0].__locale_) >= 0 ? v71 : v71[0].__locale_;
      *buf = 136446210;
      *&buf[4] = v36;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      if (SHIBYTE(v72[0].__locale_) < 0)
      {
        operator delete(v71[0].__locale_);
      }
    }

    v37 = v65;
    if (v65 != v66)
    {
      do
      {
        v85 = 0;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        *__p = 0u;
        v74 = 0u;
        *&v71[0].__locale_ = 0u;
        memset(v72, 0, sizeof(v72));
        sub_100002844(v71);
        sub_100003C28(v71, v37 + 7);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000029B0(v71, buf);
          v40 = buf;
          if (v68 < 0)
          {
            v40 = *buf;
          }

          *v69 = 136446210;
          v70 = v40;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s", v69, 0xCu);
          if (v68 < 0)
          {
            operator delete(*buf);
          }
        }

        v71[0].__locale_ = v38;
        *(&v71[0].__locale_ + *(v38 - 3)) = v39;
        if (SHIBYTE(v74) < 0)
        {
          operator delete(__p[1]);
        }

        std::locale::~locale(v72);
        std::ostream::~ostream();
        std::ios::~ios();
        v41 = *(v37 + 1);
        if (v41)
        {
          do
          {
            v42 = v41;
            v41 = *v41;
          }

          while (v41);
        }

        else
        {
          do
          {
            v42 = *(v37 + 2);
            v43 = *v42 == v37;
            v37 = v42;
          }

          while (!v43);
        }

        v37 = v42;
      }

      while (v42 != v66);
    }

    v47[0] = v38;
    *(v47 + *(v38 - 3)) = v39;
    if (SHIBYTE(v50) < 0)
    {
      operator delete(v49[1]);
    }

    std::locale::~locale(v48);
    std::ostream::~ostream();
    std::ios::~ios();
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    sub_100002B78(v62, v47);
    v44 = (SBYTE7(v48[0]) & 0x80u) == 0 ? v47 : v47[0];
    LODWORD(v71[0].__locale_) = 136446210;
    *(&v71[0].__locale_ + 4) = v44;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Total cellular data usage: %{public}s ", v71, 0xCu);
    if (SBYTE7(v48[0]) < 0)
    {
      operator delete(v47[0]);
    }
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    sub_100002B78(v63, v47);
    v45 = (SBYTE7(v48[0]) & 0x80u) == 0 ? v47 : v47[0];
    LODWORD(v71[0].__locale_) = 136446210;
    *(&v71[0].__locale_ + 4) = v45;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Total cellular data usage (System): %{public}s", v71, 0xCu);
    if (SBYTE7(v48[0]) < 0)
    {
      operator delete(v47[0]);
    }
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    sub_100002B78(v64, v47);
    if ((SBYTE7(v48[0]) & 0x80u) == 0)
    {
      v46 = v47;
    }

    else
    {
      v46 = v47[0];
    }

    LODWORD(v71[0].__locale_) = 136446210;
    *(&v71[0].__locale_ + 4) = v46;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Total cellular data usage (System with no bundle): %{public}s", v71, 0xCu);
    if (SBYTE7(v48[0]) < 0)
    {
      operator delete(v47[0]);
    }
  }

  sub_1000050AC(&v65, v66[0]);
  objc_autoreleasePoolPop(v9);
  [(ObjCDataUsageReader *)self resetWorkspace_sync];
  sub_10004278C(a5, 1);
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end