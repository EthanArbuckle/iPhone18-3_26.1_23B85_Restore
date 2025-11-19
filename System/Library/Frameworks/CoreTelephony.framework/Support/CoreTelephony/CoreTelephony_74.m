void sub_1004B806C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  __cxa_guard_abort(&qword_101FBA788);
  sub_100010250(va);
  _Unwind_Resume(a1);
}

const void **DataServiceController::updateCarrierBundleAppCategories_sync(uint64_t a1, uint64_t a2)
{
  v76 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  LODWORD(buf.__r_.__value_.__l.__data_) = a2;
  v4 = sub_100007DEC(a1 + 4960, &buf);
  v5 = *v4 + 88;
  v6 = (*v4 + 80);
  sub_1004C01D4(v6, *v5);
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 - 8) = v5;
  v75 = v5;
  if (!*(a1 + 5080))
  {
    operator new();
  }

  theArray = 0;
  if ((atomic_load_explicit(&qword_101FBA7A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA7A8))
  {
    buf.__r_.__value_.__r.__words[0] = @"NRSlicing";
    buf.__r_.__value_.__l.__size_ = @"AppCategories";
    qword_101FBA798 = 0;
    unk_101FBA7A0 = 0;
    qword_101FBA790 = 0;
    sub_10005B328(&qword_101FBA790, &buf, &buf.__r_.__value_.__r.__words[2], 2uLL);
    __cxa_atexit(sub_10041F938, &qword_101FBA790, &_mh_execute_header);
    __cxa_guard_release(&qword_101FBA7A8);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 104));
  v8 = ServiceMap;
  if ((v9 & 0x8000000000000000) != 0)
  {
    v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v11 = 5381;
    do
    {
      v9 = v11;
      v12 = *v10++;
      v11 = (33 * v11) ^ v12;
    }

    while (v12);
  }

  std::mutex::lock(ServiceMap);
  buf.__r_.__value_.__r.__words[0] = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &buf);
  if (v13)
  {
    v15 = v13[3];
    v14 = v13[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v14);
      v16 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
LABEL_12:
  (*(*v15 + 104))(&v78, v15, a2, 1, &qword_101FBA790, 0, 0);
  sub_10006DD00(&__p, &v78);
  buf.__r_.__value_.__r.__words[0] = theArray;
  theArray = __p.__r_.__value_.__r.__words[0];
  __p.__r_.__value_.__r.__words[0] = 0;
  sub_100010250(&buf.__r_.__value_.__l.__data_);
  sub_100010250(&__p.__r_.__value_.__l.__data_);
  sub_10000A1EC(&v78);
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  if (theArray)
  {
    v74 = a2;
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        theDict = 0;
        buf.__r_.__value_.__r.__words[0] = CFArrayGetValueAtIndex(theArray, i);
        sub_100010180(&theDict, &buf.__r_.__value_.__l.__data_);
        if (theDict)
        {
          memset(&__p, 0, sizeof(__p));
          v80 = 0;
          __val = 0;
          v78 = 0;
          v79 = 0;
          memset(&v77, 0, sizeof(v77));
          if (CFDictionaryGetValue(theDict, @"Name"))
          {
            memset(&buf, 0, sizeof(buf));
            ctu::cf::assign();
            v90.__r_.__value_.__r.__words[0] = buf.__r_.__value_.__l.__size_;
            v19 = buf.__r_.__value_.__r.__words[0];
            *(v90.__r_.__value_.__r.__words + 7) = *(&buf.__r_.__value_.__r.__words[1] + 7);
            v20 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            __p.__r_.__value_.__r.__words[0] = v19;
            __p.__r_.__value_.__l.__size_ = v90.__r_.__value_.__r.__words[0];
            *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v90.__r_.__value_.__r.__words + 7);
            *(&__p.__r_.__value_.__s + 23) = v20;
          }

          Value = CFDictionaryGetValue(theDict, @"ID");
          v22 = Value;
          if (Value)
          {
            buf.__r_.__value_.__r.__words[0] = 0;
            v23 = CFGetTypeID(Value);
            if (v23 == CFNumberGetTypeID())
            {
              ctu::cf::assign(&buf, v22, v24);
            }

            __val = buf.__r_.__value_.__r.__words[0];
          }

          if (CFDictionaryGetValue(theDict, @"Apps"))
          {
            memset(&v90, 0, sizeof(v90));
            memset(&buf, 0, sizeof(buf));
            ctu::cf::assign();
            v90 = buf;
            ctu::split_any_copy();
            sub_100071A6C(&v77);
            v77 = buf;
            p_buf = &buf;
            memset(&buf, 0, sizeof(buf));
            sub_1000087B4(&p_buf);
            if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v90.__r_.__value_.__l.__data_);
            }
          }

          v25 = CFDictionaryGetValue(theDict, @"ACs");
          v26 = v25;
          if (v25)
          {
            v27 = CFGetTypeID(v25);
            if (v27 == CFStringGetTypeID())
            {
              memset(&v90, 0, sizeof(v90));
              memset(&buf, 0, sizeof(buf));
              ctu::cf::assign();
              v90 = buf;
              memset(&buf, 0, sizeof(buf));
              ctu::split_any_copy();
              size = buf.__r_.__value_.__l.__size_;
              for (j = buf.__r_.__value_.__r.__words[0]; j != size; ++j)
              {
                p_buf = std::stoull(j, 0, 10);
                if (p_buf)
                {
                  sub_1004BC3F0(&v78, &p_buf);
                }
              }

              p_buf = &buf;
              sub_1000087B4(&p_buf);
              if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v90.__r_.__value_.__l.__data_);
              }
            }

            else if (v27 == CFNumberGetTypeID())
            {
              buf.__r_.__value_.__r.__words[0] = 0;
              v30 = CFGetTypeID(v26);
              if (v30 == CFNumberGetTypeID())
              {
                ctu::cf::assign(&buf, v26, v31);
              }

              v90.__r_.__value_.__r.__words[0] = buf.__r_.__value_.__r.__words[0];
              if (buf.__r_.__value_.__r.__words[0])
              {
                sub_1004BC3F0(&v78, &v90);
              }
            }

            else
            {
              v32 = *(a1 + 40);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
                *(buf.__r_.__value_.__r.__words + 4) = v27;
                _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I Wrong ACs type: %lu", &buf, 0xCu);
              }
            }
          }

          if (__val)
          {
            v33 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            v34 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            v35 = __p.__r_.__value_.__l.__size_;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v36 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v36 = __p.__r_.__value_.__l.__size_;
            }

            if (!v36)
            {
              v37 = *(a1 + 5080);
              v40 = *(v37 + 8);
              v38 = v37 + 8;
              v39 = v40;
              if (v40)
              {
                v41 = v38;
                do
                {
                  v42 = *(v39 + 32);
                  v43 = v42 >= __val;
                  v44 = v42 < __val;
                  if (v43)
                  {
                    v41 = v39;
                  }

                  v39 = *(v39 + 8 * v44);
                }

                while (v39);
                if (v41 != v38 && __val >= *(v41 + 32))
                {
                  std::string::operator=(&__p, (v41 + 40));
                  v33 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                  v35 = __p.__r_.__value_.__l.__size_;
                  v34 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                }
              }

              if (v34 < 0)
              {
                v33 = v35;
              }

              if (!v33)
              {
                std::to_string(&buf, __val);
                v45 = std::string::insert(&buf, 0, "Genre ", 6uLL);
                v46 = v45->__r_.__value_.__r.__words[0];
                v90.__r_.__value_.__r.__words[0] = v45->__r_.__value_.__l.__size_;
                *(v90.__r_.__value_.__r.__words + 7) = *(&v45->__r_.__value_.__r.__words[1] + 7);
                v47 = HIBYTE(v45->__r_.__value_.__r.__words[2]);
                v45->__r_.__value_.__l.__size_ = 0;
                v45->__r_.__value_.__r.__words[2] = 0;
                v45->__r_.__value_.__r.__words[0] = 0;
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                __p.__r_.__value_.__r.__words[0] = v46;
                __p.__r_.__value_.__l.__size_ = v90.__r_.__value_.__r.__words[0];
                *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v90.__r_.__value_.__r.__words + 7);
                *(&__p.__r_.__value_.__s + 23) = v47;
                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(buf.__r_.__value_.__l.__data_);
                }
              }
            }

            v48 = *v76;
            if (os_log_type_enabled(*v76, OS_LOG_TYPE_DEFAULT))
            {
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = __p.__r_.__value_.__r.__words[0];
              }

              LODWORD(buf.__r_.__value_.__l.__data_) = 134218242;
              *(buf.__r_.__value_.__r.__words + 4) = __val;
              WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
              *(&buf.__r_.__value_.__r.__words[1] + 6) = p_p;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I AppCategory from CB: %llu - %{public}s", &buf, 0x16u);
            }

            sub_1004C0DF8(&buf, &__p, &v77, &v78);
            p_buf = &__val;
            v50 = sub_1004C5CAC(v6, &__val);
            sub_1004C0ED8((v50 + 5), &buf);
            if (v88)
            {
              v89 = v88;
              operator delete(v88);
            }

            v90.__r_.__value_.__r.__words[0] = &v87;
            sub_1000087B4(&v90);
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }
          }

          buf.__r_.__value_.__r.__words[0] = &v77;
          sub_1000087B4(&buf);
          if (v78)
          {
            v79 = v78;
            operator delete(v78);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        sub_10001021C(&theDict);
      }
    }

    if ((*(*a1 + 1120))(a1) == v74)
    {
      if (*(a1 + 5080))
      {
        v51 = *v6;
        if (*v6 != v75)
        {
          v52 = a1 + 4992;
          v53 = (a1 + 5064);
          do
          {
            v54 = v51 + 4;
            v55 = *(a1 + 5080);
            buf.__r_.__value_.__r.__words[0] = (v51 + 4);
            v56 = sub_1004C5D94(v55, v51 + 4);
            std::string::operator=((v56 + 5), (v51 + 5));
            v58 = v51[8];
            v57 = v51[9];
            while (v58 != v57)
            {
              if (v52 != sub_100007A6C(a1 + 4984, v58))
              {
                DataServiceController::hardcodeGenreApp(a1, *v54, v58, 0);
              }

              v58 += 3;
            }

            v59 = v51[11];
            v60 = v51[12];
            while (v59 != v60)
            {
              v61 = *v53;
              if (*v53)
              {
                v62 = *v59;
                v63 = (a1 + 5064);
                do
                {
                  v64 = v61[4];
                  v43 = v64 >= v62;
                  v65 = v64 < v62;
                  if (v43)
                  {
                    v63 = v61;
                  }

                  v61 = v61[v65];
                }

                while (v61);
                if (v63 != v53 && v62 >= v63[4])
                {
                  memset(&buf, 0, sizeof(buf));
                  sub_100074920(&buf, (v63 + 5));
                  v66 = buf.__r_.__value_.__r.__words[0];
                  if (buf.__r_.__value_.__l.__data_ != &buf.__r_.__value_.__r.__words[1])
                  {
                    do
                    {
                      if (v52 != sub_100007A6C(a1 + 4984, (v66 + 32)))
                      {
                        DataServiceController::hardcodeGenreApp(a1, *v54, (v66 + 32), 1);
                      }

                      v67 = *(v66 + 8);
                      if (v67)
                      {
                        do
                        {
                          v68 = v67;
                          v67 = v67->__r_.__value_.__r.__words[0];
                        }

                        while (v67);
                      }

                      else
                      {
                        do
                        {
                          v68 = *(v66 + 16);
                          v69 = v68->__r_.__value_.__r.__words[0] == v66;
                          v66 = v68;
                        }

                        while (!v69);
                      }

                      v66 = v68;
                    }

                    while (v68 != &buf.__r_.__value_.__r.__words[1]);
                  }

                  __p.__r_.__value_.__r.__words[0] = v59;
                  v70 = sub_1004C5010(a1 + 5056, v59);
                  sub_100176728(v70 + 5, 0, 0);
                  sub_100009970(&buf, buf.__r_.__value_.__l.__size_);
                }
              }

              ++v59;
            }

            v71 = v51[1];
            if (v71)
            {
              do
              {
                v72 = v71;
                v71 = *v71;
              }

              while (v71);
            }

            else
            {
              do
              {
                v72 = v51[2];
                v69 = *v72 == v51;
                v51 = v72;
              }

              while (!v69);
            }

            v51 = v72;
          }

          while (v72 != v75);
        }
      }
    }
  }

  return sub_100010250(&theArray);
}

void sub_1004B8C4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, int a31, const void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  __cxa_guard_abort(&qword_101FBA7A8);
  sub_100010250(&a32);
  _Unwind_Resume(a1);
}

const void **DataServiceController::updateCarrierBundleSlicingEnterpriseDnn_sync(uint64_t a1, uint64_t a2)
{
  LODWORD(v39) = a2;
  v4 = sub_100007DEC(a1 + 4960, &v39);
  v5 = *v4;
  v6 = (*v4 + 256);
  if (*(*v4 + 279) < 0)
  {
    *(v5 + 264) = 0;
    v7 = *(v5 + 256);
  }

  else
  {
    *(v5 + 279) = 0;
    v7 = v6;
  }

  *v7 = 0;
  v37 = 0;
  if ((atomic_load_explicit(&qword_101FBA748, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA748))
  {
    v39 = @"NRSlicing";
    *&v40 = @"Dnn";
    qword_101FBA738 = 0;
    unk_101FBA740 = 0;
    qword_101FBA730 = 0;
    sub_10005B328(&qword_101FBA730, &v39, &v40 + 8, 2uLL);
    __cxa_atexit(sub_10041F938, &qword_101FBA730, &_mh_execute_header);
    __cxa_guard_release(&qword_101FBA748);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 104));
  v9 = ServiceMap;
  v11 = v10;
  if (v10 < 0)
  {
    v12 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = 5381;
    do
    {
      v11 = v13;
      v14 = *v12++;
      v13 = (33 * v13) ^ v14;
    }

    while (v14);
  }

  std::mutex::lock(ServiceMap);
  v39 = v11;
  v15 = sub_100009510(&v9[1].__m_.__sig, &v39);
  if (v15)
  {
    v17 = v15[3];
    v16 = v15[4];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v16);
      v18 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock(v9);
  v16 = 0;
  v18 = 1;
LABEL_13:
  (*(*v17 + 104))(&v36, v17, a2, 1, &qword_101FBA730, 0, 0);
  sub_100060DE8(v38, &v36);
  v39 = v37;
  v37 = *v38;
  *v38 = 0;
  sub_100005978(&v39);
  sub_100005978(v38);
  sub_10000A1EC(&v36);
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  if (v37)
  {
    v39 = 0;
    v40 = 0uLL;
    ctu::cf::assign();
    v19 = v39;
    *v38 = v40;
    *&v38[7] = *(&v40 + 7);
    v20 = HIBYTE(v40);
    if (*(v5 + 279) < 0)
    {
      operator delete(*v6);
    }

    v21 = *v38;
    *(v5 + 256) = v19;
    *(v5 + 264) = v21;
    *(v5 + 271) = *&v38[7];
    *(v5 + 279) = v20;
  }

  sub_100005978(&v37);
  if (*(v5 + 303) < 0)
  {
    *(v5 + 288) = 0;
    v22 = *(v5 + 280);
  }

  else
  {
    *(v5 + 303) = 0;
    v22 = (v5 + 280);
  }

  *v22 = 0;
  v37 = 0;
  if ((atomic_load_explicit(&qword_101FBA768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA768))
  {
    v39 = @"NRSlicing";
    *&v40 = @"Apn";
    qword_101FBA758 = 0;
    unk_101FBA760 = 0;
    qword_101FBA750 = 0;
    sub_10005B328(&qword_101FBA750, &v39, &v40 + 8, 2uLL);
    __cxa_atexit(sub_10041F938, &qword_101FBA750, &_mh_execute_header);
    __cxa_guard_release(&qword_101FBA768);
  }

  v23 = Registry::getServiceMap(*(a1 + 104));
  v24 = v23;
  if (v10 < 0)
  {
    v25 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v26 = 5381;
    do
    {
      v10 = v26;
      v27 = *v25++;
      v26 = (33 * v26) ^ v27;
    }

    while (v27);
  }

  std::mutex::lock(v23);
  v39 = v10;
  v28 = sub_100009510(&v24[1].__m_.__sig, &v39);
  if (v28)
  {
    v30 = v28[3];
    v29 = v28[4];
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v24);
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v29);
      v31 = 0;
      goto LABEL_31;
    }
  }

  else
  {
    v30 = 0;
  }

  std::mutex::unlock(v24);
  v29 = 0;
  v31 = 1;
LABEL_31:
  (*(*v30 + 104))(&v36, v30, a2, 1, &qword_101FBA750, 0, 0);
  sub_100060DE8(v38, &v36);
  v39 = v37;
  v37 = *v38;
  *v38 = 0;
  sub_100005978(&v39);
  sub_100005978(v38);
  sub_10000A1EC(&v36);
  if ((v31 & 1) == 0)
  {
    sub_100004A34(v29);
  }

  if (v37)
  {
    v39 = 0;
    v40 = 0uLL;
    ctu::cf::assign();
    v32 = v39;
    *v38 = v40;
    *&v38[7] = *(&v40 + 7);
    v33 = HIBYTE(v40);
    if (*(v5 + 303) < 0)
    {
      operator delete(*(v5 + 280));
    }

    v34 = *v38;
    *(v5 + 280) = v32;
    *(v5 + 288) = v34;
    *(v5 + 295) = *&v38[7];
    *(v5 + 303) = v33;
  }

  return sub_100005978(&v37);
}

void sub_1004B928C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  __cxa_guard_abort(&qword_101FBA768);
  sub_100005978(&a10);
  _Unwind_Resume(a1);
}

void DataServiceController::updateCarrierBundleAllowedApps_sync(uint64_t a1, unsigned int a2)
{
  LODWORD(buf.__r_.__value_.__l.__data_) = a2;
  v3 = *sub_100007DEC(a1 + 4960, &buf);
  *(v3 + 128) = 0;
  sub_100009970(v3 + 104, *(v3 + 112));
  *(v3 + 104) = v3 + 112;
  *(v3 + 120) = 0;
  *(v3 + 112) = 0;
  sub_1004C0118(*(v3 + 144));
  *(v3 + 136) = v3 + 144;
  *(v3 + 152) = 0;
  *(v3 + 144) = 0;
  sub_100009970(v3 + 160, *(v3 + 168));
  *(v3 + 160) = v3 + 168;
  *(v3 + 176) = 0;
  *(v3 + 168) = 0;
  sub_100009970(v3 + 184, *(v3 + 192));
  *(v3 + 184) = v3 + 192;
  *(v3 + 200) = 0;
  *(v3 + 192) = 0;
  v4 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I we are clearing cached traffic descriptors because we are re-reading carrier bundle info", &buf, 2u);
  }

  v6 = *(v3 + 56);
    ;
  }

  *(v3 + 64) = v6;
  theArray.__r_.__value_.__r.__words[0] = 0;
  if ((atomic_load_explicit(&qword_101FBA688, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA688))
  {
    buf.__r_.__value_.__r.__words[0] = @"NRSlicing";
    buf.__r_.__value_.__l.__size_ = @"VpnAgnosticApps";
    qword_101FBA678 = 0;
    unk_101FBA680 = 0;
    qword_101FBA670 = 0;
    sub_10005B328(&qword_101FBA670, &buf, &buf.__r_.__value_.__r.__words[2], 2uLL);
    __cxa_atexit(sub_10041F938, &qword_101FBA670, &_mh_execute_header);
    __cxa_guard_release(&qword_101FBA688);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 104));
  v8 = ServiceMap;
  v10 = v9;
  if (v9 < 0)
  {
    v11 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  buf.__r_.__value_.__r.__words[0] = v10;
  v14 = sub_100009510(&v8[1].__m_.__sig, &buf);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v8);
  v15 = 0;
  v17 = 1;
LABEL_15:
  (*(*v16 + 104))(type, v16, a2, 1, &qword_101FBA670, 0, 0);
  sub_10006DD00(&__p, type);
  buf.__r_.__value_.__r.__words[0] = theArray.__r_.__value_.__r.__words[0];
  theArray.__r_.__value_.__r.__words[0] = __p.__r_.__value_.__r.__words[0];
  __p.__r_.__value_.__r.__words[0] = 0;
  sub_100010250(&buf.__r_.__value_.__l.__data_);
  sub_100010250(&__p.__r_.__value_.__l.__data_);
  sub_10000A1EC(type);
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  if (theArray.__r_.__value_.__r.__words[0])
  {
    Count = CFArrayGetCount(theArray.__r_.__value_.__l.__data_);
    if (Count >= 1)
    {
      for (j = 0; j != Count; ++j)
      {
        *type = 0;
        buf.__r_.__value_.__r.__words[0] = CFArrayGetValueAtIndex(theArray.__r_.__value_.__l.__data_, j);
        sub_100060DE8(type, &buf.__r_.__value_.__l.__data_);
        if (*type)
        {
          memset(&__p, 0, sizeof(__p));
          memset(&buf, 0, sizeof(buf));
          ctu::cf::assign();
          __p = buf;
          size = buf.__r_.__value_.__l.__size_;
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          if (size)
          {
            sub_100005BA0(v3 + 184, &__p.__r_.__value_.__l.__data_);
          }

          else
          {
            v22 = *(a1 + 40);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf.__r_.__value_.__l.__data_) = 0;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#E VpnAgnosticApps contains empty app", &buf, 2u);
            }
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v21 = *(a1 + 40);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#E VpnAgnosticApps does not contain string", &buf, 2u);
          }
        }

        sub_100005978(type);
      }
    }
  }

  else
  {
    v23 = *(a1 + 40);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I CB section missed: VpnAgnosticApps", &buf, 2u);
    }
  }

  sub_100010250(&theArray.__r_.__value_.__l.__data_);
  v102 = 0;
  if ((atomic_load_explicit(&qword_101FBA6A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA6A8))
  {
    buf.__r_.__value_.__r.__words[0] = @"NRSlicing";
    buf.__r_.__value_.__l.__size_ = @"ManagedAllowedApps";
    qword_101FBA698 = 0;
    unk_101FBA6A0 = 0;
    qword_101FBA690 = 0;
    sub_10005B328(&qword_101FBA690, &buf, &buf.__r_.__value_.__r.__words[2], 2uLL);
    __cxa_atexit(sub_10041F938, &qword_101FBA690, &_mh_execute_header);
    __cxa_guard_release(&qword_101FBA6A8);
  }

  v24 = Registry::getServiceMap(*(a1 + 104));
  v25 = v24;
  v26 = v9;
  if (v9 < 0)
  {
    v27 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v28 = 5381;
    do
    {
      v26 = v28;
      v29 = *v27++;
      v28 = (33 * v28) ^ v29;
    }

    while (v29);
  }

  std::mutex::lock(v24);
  buf.__r_.__value_.__r.__words[0] = v26;
  v30 = sub_100009510(&v25[1].__m_.__sig, &buf);
  if (v30)
  {
    v32 = v30[3];
    v31 = v30[4];
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v25);
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v31);
      v33 = 0;
      goto LABEL_44;
    }
  }

  else
  {
    v32 = 0;
  }

  std::mutex::unlock(v25);
  v31 = 0;
  v33 = 1;
LABEL_44:
  (*(*v32 + 104))(&theArray, v32, a2, 1, &qword_101FBA690, 0, 0);
  sub_10006DD00(&__p, &theArray.__r_.__value_.__l.__data_);
  buf.__r_.__value_.__r.__words[0] = v102;
  v102 = __p.__r_.__value_.__r.__words[0];
  __p.__r_.__value_.__r.__words[0] = 0;
  sub_100010250(&buf.__r_.__value_.__l.__data_);
  sub_100010250(&__p.__r_.__value_.__l.__data_);
  sub_10000A1EC(&theArray.__r_.__value_.__l.__data_);
  if ((v33 & 1) == 0)
  {
    sub_100004A34(v31);
  }

  if (v102)
  {
    v34 = CFArrayGetCount(v102);
    if (v34 >= 1)
    {
      for (k = 0; k != v34; ++k)
      {
        *v101 = 0;
        buf.__r_.__value_.__r.__words[0] = CFArrayGetValueAtIndex(v102, k);
        sub_100060DE8(v101, &buf.__r_.__value_.__l.__data_);
        if (*v101)
        {
          memset(&__p, 0, sizeof(__p));
          memset(&buf, 0, sizeof(buf));
          ctu::cf::assign();
          __p = buf;
          v36 = buf.__r_.__value_.__l.__size_;
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v36 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          if (v36)
          {
            memset(&buf, 0, sizeof(buf));
            sub_10000501C(&buf, "");
            memset(&theArray, 0, sizeof(theArray));
            sub_10000501C(&theArray, "");
            *type = 0;
            v98 = 0;
            v99 = 0;
            ctu::tokenize();
            if (0xAAAAAAAAAAAAAAABLL * ((v98 - *type) >> 3) >= 2)
            {
              std::string::operator=(&__p, *type);
              std::string::operator=(&buf, (*type + 24));
              if (0xAAAAAAAAAAAAAAABLL * ((v98 - *type) >> 3) >= 3)
              {
                std::string::operator=(&theArray, (*type + 48));
              }
            }

            DataServiceController::addAllowedSliceApp(a1, a2, &__p, &buf, &theArray, 1);
            v103 = type;
            sub_1000087B4(&v103);
            if (SHIBYTE(theArray.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(theArray.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v38 = *(a1 + 40);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf.__r_.__value_.__l.__data_) = 0;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#E ManagedAllowedApps contains empty app", &buf, 2u);
            }
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v37 = *(a1 + 40);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#E ManagedAllowedApps does not contain string", &buf, 2u);
          }
        }

        sub_100005978(v101);
      }
    }
  }

  else
  {
    v39 = *(a1 + 40);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I CB section missed: ManagedAllowedApps", &buf, 2u);
    }
  }

  sub_100010250(&v102);
  if ((atomic_load_explicit(&qword_101FBA6C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA6C8))
  {
    buf.__r_.__value_.__r.__words[0] = @"NRSlicing";
    buf.__r_.__value_.__l.__size_ = @"ManagedSliceApps";
    qword_101FBA6B8 = 0;
    unk_101FBA6C0 = 0;
    qword_101FBA6B0 = 0;
    sub_10005B328(&qword_101FBA6B0, &buf, &buf.__r_.__value_.__r.__words[2], 2uLL);
    __cxa_atexit(sub_10041F938, &qword_101FBA6B0, &_mh_execute_header);
    __cxa_guard_release(&qword_101FBA6C8);
  }

  __p.__r_.__value_.__r.__words[0] = 0;
  v40 = Registry::getServiceMap(*(a1 + 104));
  v41 = v40;
  v42 = v9;
  if (v9 < 0)
  {
    v43 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v44 = 5381;
    do
    {
      v42 = v44;
      v45 = *v43++;
      v44 = (33 * v44) ^ v45;
    }

    while (v45);
  }

  std::mutex::lock(v40);
  buf.__r_.__value_.__r.__words[0] = v42;
  v46 = sub_100009510(&v41[1].__m_.__sig, &buf);
  if (v46)
  {
    v48 = v46[3];
    v47 = v46[4];
    if (v47)
    {
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v41);
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v47);
      v49 = 0;
      goto LABEL_79;
    }
  }

  else
  {
    v48 = 0;
  }

  std::mutex::unlock(v41);
  v47 = 0;
  v49 = 1;
LABEL_79:
  (*(*v48 + 104))(&__p, v48, a2, 1, &qword_101FBA6B0, kCFBooleanFalse, 0);
  if ((v49 & 1) == 0)
  {
    sub_100004A34(v47);
  }

  v50 = __p.__r_.__value_.__r.__words[0];
  if (__p.__r_.__value_.__r.__words[0])
  {
    buf.__r_.__value_.__s.__data_[0] = 0;
    v51 = CFGetTypeID(__p.__r_.__value_.__l.__data_);
    if (v51 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&buf, v50, v52);
    }

    if (buf.__r_.__value_.__s.__data_[0] == 1)
    {
      v53 = *(a1 + 40);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I ManagedSliceApps used", &buf, 2u);
      }

      *(v3 + 1) = 257;
      if ((*(v3 + 279) & 0x8000000000000000) != 0)
      {
        if (!*(v3 + 264))
        {
LABEL_91:
          sub_100016890((v3 + 256), kWildCardDnn);
        }
      }

      else if (!*(v3 + 279))
      {
        goto LABEL_91;
      }
    }
  }

  sub_10000A1EC(&__p.__r_.__value_.__l.__data_);
  if ((atomic_load_explicit(&qword_101FBA6E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA6E8))
  {
    buf.__r_.__value_.__r.__words[0] = @"NRSlicing";
    buf.__r_.__value_.__l.__size_ = @"ManagedApps";
    qword_101FBA6D8 = 0;
    unk_101FBA6E0 = 0;
    qword_101FBA6D0 = 0;
    sub_10005B328(&qword_101FBA6D0, &buf, &buf.__r_.__value_.__r.__words[2], 2uLL);
    __cxa_atexit(sub_10041F938, &qword_101FBA6D0, &_mh_execute_header);
    __cxa_guard_release(&qword_101FBA6E8);
  }

  __p.__r_.__value_.__r.__words[0] = 0;
  v54 = Registry::getServiceMap(*(a1 + 104));
  v55 = v54;
  if (v9 < 0)
  {
    v56 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v57 = 5381;
    do
    {
      v9 = v57;
      v58 = *v56++;
      v57 = (33 * v57) ^ v58;
    }

    while (v58);
  }

  std::mutex::lock(v54);
  buf.__r_.__value_.__r.__words[0] = v9;
  v59 = sub_100009510(&v55[1].__m_.__sig, &buf);
  if (v59)
  {
    v61 = v59[3];
    v60 = v59[4];
    if (v60)
    {
      atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v55);
      atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v60);
      v62 = 0;
      goto LABEL_101;
    }
  }

  else
  {
    v61 = 0;
  }

  std::mutex::unlock(v55);
  v60 = 0;
  v62 = 1;
LABEL_101:
  (*(*v61 + 104))(&__p, v61, a2, 1, &qword_101FBA6D0, kCFBooleanFalse, 0);
  if ((v62 & 1) == 0)
  {
    sub_100004A34(v60);
  }

  v63 = __p.__r_.__value_.__r.__words[0];
  if (__p.__r_.__value_.__r.__words[0])
  {
    buf.__r_.__value_.__s.__data_[0] = 0;
    v64 = CFGetTypeID(__p.__r_.__value_.__l.__data_);
    if (v64 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&buf, v63, v65);
    }

    if (buf.__r_.__value_.__s.__data_[0] == 1)
    {
      v66 = *(a1 + 40);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "#I managedApps used", &buf, 2u);
      }

      *(v3 + 1) = 1;
      if ((*(v3 + 279) & 0x8000000000000000) != 0)
      {
        if (*(v3 + 264))
        {
          goto LABEL_114;
        }
      }

      else if (*(v3 + 279))
      {
        goto LABEL_114;
      }

      sub_100016890((v3 + 256), kWildCardDnn);
    }
  }

LABEL_114:
  sub_10000A1EC(&__p.__r_.__value_.__l.__data_);
  v67 = Registry::getServiceMap(*(a1 + 104));
  v68 = v67;
  if ((v69 & 0x8000000000000000) != 0)
  {
    v70 = (v69 & 0x7FFFFFFFFFFFFFFFLL);
    v71 = 5381;
    do
    {
      v69 = v71;
      v72 = *v70++;
      v71 = (33 * v71) ^ v72;
    }

    while (v72);
  }

  std::mutex::lock(v67);
  buf.__r_.__value_.__r.__words[0] = v69;
  v73 = sub_100009510(&v68[1].__m_.__sig, &buf);
  if (!v73)
  {
    v74 = 0;
LABEL_122:
    std::mutex::unlock(v68);
    v75 = 0;
    v76 = 1;
    if (!v74)
    {
      goto LABEL_153;
    }

LABEL_123:
    if (*(v3 + 1) != 1)
    {
      goto LABEL_153;
    }

    v95 = v76;
    (*(*v74 + 48))(&buf, v74);
    v78 = buf.__r_.__value_.__l.__size_;
    v77 = buf.__r_.__value_.__r.__words[0];
    if (buf.__r_.__value_.__r.__words[0] == buf.__r_.__value_.__l.__size_)
    {
LABEL_152:
      __p.__r_.__value_.__r.__words[0] = &buf;
      sub_1000087B4(&__p);
      v76 = v95;
      goto LABEL_153;
    }

    while (1)
    {
      v79 = sub_100007A6C(a1 + 4984, v77);
      v80 = *(a1 + 40);
      v81 = os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT);
      if (a1 + 4992 == v79)
      {
        if (v81)
        {
          v89 = v77;
          if (*(v77 + 23) < 0)
          {
            v89 = *v77;
          }

          LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
          *(__p.__r_.__value_.__r.__words + 4) = "updateCarrierBundleAllowedApps_sync";
          WORD2(__p.__r_.__value_.__r.__words[1]) = 2082;
          *(&__p.__r_.__value_.__r.__words[1] + 6) = v89;
          v90 = v80;
          v91 = "#I %s: app not installed: %{public}s";
          goto LABEL_150;
        }
      }

      else
      {
        if (v81)
        {
          v82 = v77;
          if (*(v77 + 23) < 0)
          {
            v82 = *v77;
          }

          LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
          *(__p.__r_.__value_.__r.__words + 4) = "updateCarrierBundleAllowedApps_sync";
          WORD2(__p.__r_.__value_.__r.__words[1]) = 2082;
          *(&__p.__r_.__value_.__r.__words[1] + 6) = v82;
          _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "#I %s: app installed: %{public}s", &__p, 0x16u);
        }

        if ((*(v3 + 2) & 1) == 0)
        {
          v92 = *(a1 + 40);
          if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
          {
            v93 = v77;
            if (*(v77 + 23) < 0)
            {
              v93 = *v77;
            }

            LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
            *(__p.__r_.__value_.__r.__words + 4) = "updateCarrierBundleAllowedApps_sync";
            WORD2(__p.__r_.__value_.__r.__words[1]) = 2082;
            *(&__p.__r_.__value_.__r.__words[1] + 6) = v93;
            v87 = v92;
            v88 = "#I %s: app managed: %{public}s";
LABEL_144:
            _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, v88, &__p, 0x16u);
          }

LABEL_145:
          DataServiceController::addAllowedSliceApp(a1, a2, v77, 1);
          goto LABEL_151;
        }

        v83 = (*(*v74 + 64))(v74, v77);
        v84 = *(a1 + 40);
        v85 = os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT);
        if (v83)
        {
          if (v85)
          {
            v86 = v77;
            if (*(v77 + 23) < 0)
            {
              v86 = *v77;
            }

            LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
            *(__p.__r_.__value_.__r.__words + 4) = "updateCarrierBundleAllowedApps_sync";
            WORD2(__p.__r_.__value_.__r.__words[1]) = 2082;
            *(&__p.__r_.__value_.__r.__words[1] + 6) = v86;
            v87 = v84;
            v88 = "#I %s: app managed and sliced: %{public}s";
            goto LABEL_144;
          }

          goto LABEL_145;
        }

        if (v85)
        {
          v94 = v77;
          if (*(v77 + 23) < 0)
          {
            v94 = *v77;
          }

          LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
          *(__p.__r_.__value_.__r.__words + 4) = "updateCarrierBundleAllowedApps_sync";
          WORD2(__p.__r_.__value_.__r.__words[1]) = 2082;
          *(&__p.__r_.__value_.__r.__words[1] + 6) = v94;
          v90 = v84;
          v91 = "#I %s: app managed but not sliced: %{public}s";
LABEL_150:
          _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, v91, &__p, 0x16u);
        }
      }

LABEL_151:
      v77 += 24;
      if (v77 == v78)
      {
        goto LABEL_152;
      }
    }
  }

  v74 = v73[3];
  v75 = v73[4];
  if (!v75)
  {
    goto LABEL_122;
  }

  atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v68);
  atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v75);
  v76 = 0;
  if (v74)
  {
    goto LABEL_123;
  }

LABEL_153:
  if ((v76 & 1) == 0)
  {
    sub_100004A34(v75);
  }
}

const void **DataServiceController::updateCarrierBundleSlicingOsId_sync(uint64_t a1, uint64_t a2)
{
  LODWORD(uu.__r_.__value_.__l.__data_) = a2;
  v4 = *sub_100007DEC(a1 + 4960, &uu);
  *(v4 + 208) = 0;
  if (*(v4 + 255) < 0)
  {
    *(v4 + 240) = 0;
    v5 = *(v4 + 232);
  }

  else
  {
    *(v4 + 255) = 0;
    v5 = (v4 + 232);
  }

  *v5 = 0;
  *(v4 + 209) = 0;
  v6 = (v4 + 209);
  *(v4 + 217) = 0;
  *type = 0;
  theArray = 0;
  if ((atomic_load_explicit(&qword_101FBA708, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA708))
  {
    uu.__r_.__value_.__r.__words[0] = @"NRSlicing";
    uu.__r_.__value_.__l.__size_ = @"OsId";
    qword_101FBA6F8 = 0;
    unk_101FBA700 = 0;
    qword_101FBA6F0 = 0;
    sub_10005B328(&qword_101FBA6F0, &uu, &uu.__r_.__value_.__r.__words[2], 2uLL);
    __cxa_atexit(sub_10041F938, &qword_101FBA6F0, &_mh_execute_header);
    __cxa_guard_release(&qword_101FBA708);
  }

  __p.__r_.__value_.__r.__words[0] = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 104));
  v8 = ServiceMap;
  v10 = v9;
  if ((v9 & 0x8000000000000000) != 0)
  {
    v11 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  uu.__r_.__value_.__r.__words[0] = v10;
  v14 = sub_100009510(&v8[1].__m_.__sig, &uu);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v8);
  v15 = 0;
  v17 = 1;
LABEL_13:
  (*(*v16 + 104))(&__p, v16, a2, 1, &qword_101FBA6F0, 0, 0);
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    sub_10006DD00(&v45, &__p.__r_.__value_.__l.__data_);
    v18 = theArray;
    theArray = v45;
    uu.__r_.__value_.__r.__words[0] = v18;
    v45 = 0;
    sub_100010250(&uu.__r_.__value_.__l.__data_);
    sub_100010250(&v45);
    goto LABEL_30;
  }

  if ((atomic_load_explicit(&qword_101FBA728, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA728))
  {
    uu.__r_.__value_.__r.__words[0] = @"NRSlicing";
    uu.__r_.__value_.__l.__size_ = @"OsIdStr";
    qword_101FBA718 = 0;
    unk_101FBA720 = 0;
    qword_101FBA710 = 0;
    sub_10005B328(&qword_101FBA710, &uu, &uu.__r_.__value_.__r.__words[2], 2uLL);
    __cxa_atexit(sub_10041F938, &qword_101FBA710, &_mh_execute_header);
    __cxa_guard_release(&qword_101FBA728);
  }

  v19 = Registry::getServiceMap(*(a1 + 104));
  v20 = v19;
  if ((v9 & 0x8000000000000000) != 0)
  {
    v21 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v22 = 5381;
    do
    {
      v9 = v22;
      v23 = *v21++;
      v22 = (33 * v22) ^ v23;
    }

    while (v23);
  }

  std::mutex::lock(v19);
  uu.__r_.__value_.__r.__words[0] = v9;
  v24 = sub_100009510(&v20[1].__m_.__sig, &uu);
  if (!v24)
  {
    v26 = 0;
    goto LABEL_25;
  }

  v26 = v24[3];
  v25 = v24[4];
  if (!v25)
  {
LABEL_25:
    std::mutex::unlock(v20);
    v25 = 0;
    v27 = 1;
    goto LABEL_26;
  }

  atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v20);
  atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v25);
  v27 = 0;
LABEL_26:
  (*(*v26 + 104))(&v45, v26, a2, 1, &qword_101FBA710, 0, 0);
  uu.__r_.__value_.__r.__words[0] = __p.__r_.__value_.__r.__words[0];
  __p.__r_.__value_.__r.__words[0] = v45;
  v45 = 0;
  sub_10000A1EC(&uu.__r_.__value_.__l.__data_);
  sub_10000A1EC(&v45);
  if ((v27 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  if (!__p.__r_.__value_.__r.__words[0])
  {
    v40 = *(a1 + 40);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(uu.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I OsId: empty (1)", &uu, 2u);
    }

    sub_10000A1EC(&__p.__r_.__value_.__l.__data_);
    goto LABEL_65;
  }

  sub_100060DE8(&v45, &__p.__r_.__value_.__l.__data_);
  v28 = v45;
  uu.__r_.__value_.__r.__words[0] = *type;
  v45 = 0;
  *type = v28;
  sub_100005978(&uu.__r_.__value_.__l.__data_);
  sub_100005978(&v45);
LABEL_30:
  sub_10000A1EC(&__p.__r_.__value_.__l.__data_);
  if (!theArray)
  {
    if (!*type)
    {
      v41 = *(a1 + 40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(uu.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#E OsId: empty (2)", &uu, 2u);
      }

      goto LABEL_65;
    }

    memset(&uu, 0, sizeof(uu));
    ctu::cf::assign();
    __p = uu;
    *&uu.__r_.__value_.__l.__data_ = 0uLL;
    if ((uu.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (uuid_parse(p_p, &uu))
    {
      size = __p.__r_.__value_.__l.__size_;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      v36 = 16;
      if (size < 0x10)
      {
        v36 = size;
      }

      if (size)
      {
        v37 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v37 = __p.__r_.__value_.__r.__words[0];
        }

        do
        {
          v38 = v37->__r_.__value_.__s.__data_[0];
          v37 = (v37 + 1);
          *v6++ = v38;
          --v36;
        }

        while (v36);
      }
    }

    else
    {
      for (i = 0; i != 16; ++i)
      {
        v6[i] = uu.__r_.__value_.__s.__data_[i];
      }
    }

    std::string::operator=((v4 + 232), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

LABEL_64:
    *(v4 + 208) = 1;
    goto LABEL_65;
  }

  Count = CFArrayGetCount(theArray);
  v30 = Count - 1;
  if (Count < 1)
  {
    goto LABEL_64;
  }

  v31 = 0;
  if (v30 >= 0xF)
  {
    v30 = 15;
  }

  v32 = v30 + 1;
  while (1)
  {
    uu.__r_.__value_.__r.__words[0] = 0;
    __p.__r_.__value_.__r.__words[0] = CFArrayGetValueAtIndex(theArray, v31);
    sub_1002AF4F0(&uu, &__p.__r_.__value_.__l.__data_);
    if (!uu.__r_.__value_.__r.__words[0])
    {
      break;
    }

    __p.__r_.__value_.__s.__data_[0] = 0;
    ctu::cf::assign(&__p, uu.__r_.__value_.__l.__data_, v33);
    v6[v31] = __p.__r_.__value_.__s.__data_[0];
    sub_100029A48(&uu.__r_.__value_.__l.__data_);
    if (v32 == ++v31)
    {
      goto LABEL_64;
    }
  }

  v39 = *(a1 + 40);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#E OsId value incorrect", &__p, 2u);
  }

  sub_100029A48(&uu.__r_.__value_.__l.__data_);
LABEL_65:
  sub_100005978(type);
  return sub_100010250(&theArray);
}

void sub_1004BAC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14)
{
  __cxa_guard_abort(&qword_101FBA728);
  sub_10000A1EC(&a9);
  sub_100005978(&a13);
  sub_100010250(&a14);
  _Unwind_Resume(a1);
}

uint64_t DataServiceController::getSlicingConfiguredInfo(uint64_t a1, int a2)
{
  v10 = a2;
  v3 = sub_100007DEC(a1 + 4960, &v10);
  v4 = *v3;
  v5 = **v3;
  if (v5 != 1)
  {
    v7 = 0;
    v6 = 0;
LABEL_11:
    v8 = 0;
    return v7 | v6 | v8 | v5;
  }

  if ((v4[1] & 1) != 0 || v4[2] == 1)
  {
    v6 = *(a1 + 5347) << 8;
  }

  else
  {
    v6 = 0;
  }

  v7 = v4[15] << 16;
  if (v4[12] != 1 || (v4[13] & 1) == 0 && v4[14] != 1)
  {
    goto LABEL_11;
  }

  v8 = 0x1000000;
  return v7 | v6 | v8 | v5;
}

uint64_t sub_1004BAE14(void *a1, int *a2, _DWORD *a3)
{
  v5 = a1 + 1;
  v6 = a1[1];
  if (v6)
  {
    v7 = *a2;
    v8 = a1 + 1;
    do
    {
      if (*(v6 + 28) >= v7)
      {
        v8 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 28) < v7));
    }

    while (v6);
    if (v8 != v5 && v7 >= *(v8 + 7))
    {
      *(v8 + 8) = *a3;
      return v8;
    }

    v5 = v8;
  }

  return sub_1004C558C(a1, v5, a2);
}

void DataServiceController::setManagedConfigListener_sync(DataServiceController *this, int a2)
{
  if (*(this + 5224) != a2)
  {
    v2 = a2;
    if (a2)
    {
      sub_100004AA0(&__p, this + 1);
      v4 = v26;
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v4);
      }

      ServiceMap = Registry::getServiceMap(*(this + 13));
      v6 = ServiceMap;
      if (v7 < 0)
      {
        v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
        v9 = 5381;
        do
        {
          v7 = v9;
          v10 = *v8++;
          v9 = (33 * v9) ^ v10;
        }

        while (v10);
      }

      std::mutex::lock(ServiceMap);
      __p = v7;
      v11 = sub_100009510(&v6[1].__m_.__sig, &__p);
      if (v11)
      {
        v13 = v11[3];
        v12 = v11[4];
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v6);
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v12);
          v14 = 0;
          if (!v13)
          {
            goto LABEL_30;
          }

          goto LABEL_27;
        }
      }

      else
      {
        v13 = 0;
      }

      std::mutex::unlock(v6);
      v12 = 0;
      v14 = 1;
      if (!v13)
      {
LABEL_30:
        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        if (v4)
        {
          std::__shared_weak_count::__release_weak(v4);
        }

LABEL_34:
        *(this + 5224) = v2;
        return;
      }

LABEL_27:
      sub_10000501C(&__p, "slice");
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v28 = 0;
      operator new();
    }

    v15 = Registry::getServiceMap(*(this + 13));
    v16 = v15;
    if (v17 < 0)
    {
      v18 = (v17 & 0x7FFFFFFFFFFFFFFFLL);
      v19 = 5381;
      do
      {
        v17 = v19;
        v20 = *v18++;
        v19 = (33 * v19) ^ v20;
      }

      while (v20);
    }

    std::mutex::lock(v15);
    __p = v17;
    v21 = sub_100009510(&v16[1].__m_.__sig, &__p);
    if (v21)
    {
      v23 = v21[3];
      v22 = v21[4];
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v16);
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v22);
        v24 = 0;
        if (!v23)
        {
LABEL_23:
          if ((v24 & 1) == 0)
          {
            sub_100004A34(v22);
          }

          goto LABEL_34;
        }

LABEL_21:
        sub_10000501C(&__p, "slice");
        (*(*v23 + 144))(v23, &__p);
        if (v27 < 0)
        {
          operator delete(__p);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v23 = 0;
    }

    std::mutex::unlock(v16);
    v22 = 0;
    v24 = 1;
    if (!v23)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }
}

void sub_1004BB1AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_10002B644(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
    if (v17)
    {
LABEL_3:
      if (!v15)
      {
LABEL_8:
        _Unwind_Resume(a1);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v15);
      goto LABEL_8;
    }
  }

  else if (v17)
  {
    goto LABEL_3;
  }

  sub_100004A34(v16);
  if (!v15)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void DataServiceController::managedDeviceSliceInfo(uint64_t a1, NSObject ***a2, BOOL *a3, BOOL *a4)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 104));
  v9 = ServiceMap;
  if (v10 < 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  *v37 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, v37);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      if (!v16)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
  if (!v16)
  {
LABEL_7:
    v18 = **a2;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = asStringBool(*a3);
      v20 = asStringBool(*a4);
      sub_10177265C(v19, v20, v37, v18);
    }

    goto LABEL_33;
  }

LABEL_11:
  *a3 = (*(*v16 + 72))(v16);
  v21 = (*(*a1 + 1120))(a1);
  v22 = *(a1 + 112);
  *v37 = *(a1 + 104);
  *&v37[8] = v22;
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  isValidSimSlot = subscriber::isValidSimSlot();
  if (*&v37[8])
  {
    sub_100004A34(*&v37[8]);
  }

  if (!isValidSimSlot)
  {
    v25 = 0;
    v26 = 0;
LABEL_22:
    v29 = 0;
    goto LABEL_31;
  }

  *v37 = v21;
  v24 = sub_100007DEC(a1 + 4960, v37);
  v25 = **v24;
  v26 = *(*v24 + 1);
  if (*(*v24 + 2) == 1)
  {
    (*(*v16 + 48))(v37, v16);
    v27 = *v37;
    v28 = *&v37[8];
    while (v27 != v28)
    {
      if ((*(*v16 + 64))(v16, v27))
      {
        v30 = **a2;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v27 + 23) < 0)
          {
            v27 = *v27;
          }

          *buf = 136446210;
          *&buf[4] = v27;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I app managed and sliced: %{public}s", buf, 0xCu);
        }

        *a4 = 1;
        break;
      }

      v27 += 3;
    }

    *buf = v37;
    sub_1000087B4(buf);
    v29 = 1;
    goto LABEL_31;
  }

  if (!*(*v24 + 1))
  {
    goto LABEL_22;
  }

  (*(*v16 + 48))(v37, v16);
  *a4 = *&v37[8] != *v37;
  *buf = v37;
  sub_1000087B4(buf);
  v29 = 0;
  v26 = 1;
LABEL_31:
  v31 = **a2;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = asStringBool(*a3);
    v33 = asStringBool(*a4);
    v34 = asStringBool(v25);
    v35 = asStringBool(v26);
    v36 = asStringBool(v29);
    *v37 = 136316162;
    *&v37[4] = v32;
    *&v37[12] = 2080;
    *&v37[14] = v33;
    v38 = 2080;
    v39 = v34;
    v40 = 2080;
    v41 = v35;
    v42 = 2080;
    v43 = v36;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I supervisedDevice: %s managedDevice: %s (enabled = %s managedApps = %s managedSliceApps = %s)", v37, 0x34u);
  }

LABEL_33:
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }
}

void sub_1004BB690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::getLLPHSState_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 1) & 1) == 0)
  {
    DataServiceController::makeDataSimSlotRange(a1, 3, &__p);
    v6 = __p;
    v7 = v19;
    if (__p != v19)
    {
      do
      {
        v20 = *v6;
        if (**sub_100007DEC(a1 + 4960, &v20) == 1)
        {
          *a2 = 257;
        }

        ++v6;
      }

      while (v6 != v7);
      v6 = __p;
    }

    if (v6)
    {
      v19 = v6;
      operator delete(v6);
    }
  }

  if ((*(a3 + 1) & 1) == 0)
  {
    DataServiceController::makeDataSimSlotRange(a1, 3, &__p);
    v8 = __p;
    v9 = v19;
    if (__p != v19)
    {
      do
      {
        v20 = *v8;
        v10 = sub_100007DEC(a1 + 4960, &v20);
        v11 = *v10;
        if (*(*v10 + 12) == 1 && ((*(v11 + 13) & 1) != 0 || *(v11 + 14) == 1))
        {
          *a3 = 257;
        }

        ++v8;
      }

      while (v8 != v9);
      v8 = __p;
    }

    if (v8)
    {
      v19 = v8;
      operator delete(v8);
    }
  }

  DataServiceController::makeDataSimSlotRange(a1, 3, &__p);
  v12 = __p;
  v13 = v19;
  if (__p == v19)
  {
    v14 = 0;
    if (__p)
    {
LABEL_28:
      v19 = v12;
      operator delete(v12);
    }
  }

  else
  {
    v14 = 0;
    do
    {
      v20 = *v12;
      v15 = sub_100007DEC(a1 + 4960, &v20);
      v16 = *(*v15 + 56);
      v17 = *(*v15 + 64);
      while (v16 != v17)
      {
        if (TrafficDescriptor::hasAccountInfo(v16))
        {
          v14 = 1;
          break;
        }

        v16 = (v16 + 304);
      }

      ++v12;
    }

    while (v12 != v13);
    v12 = __p;
    if (__p)
    {
      goto LABEL_28;
    }
  }

  if ((v14 & 1) == 0)
  {
    *a3 = 256;
  }
}

void sub_1004BB8E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::addAllowedSliceApp(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  if (*(a1 + 5348) == 1)
  {
    for (i = 0; i != 3; ++i)
    {
      v12 = strlen(off_101E50158[i]);
      v13 = v12;
      v14 = *(a3 + 23);
      if (v14 < 0)
      {
        if (v12 == *(a3 + 8))
        {
          if (v12 == -1)
          {
            sub_10013C334();
          }

          v15 = *a3;
LABEL_9:
          if (!memcmp(v15, off_101E50158[i], v13))
          {
            sub_100005BA0(a1 + 5280, a3);
          }
        }
      }

      else
      {
        v15 = a3;
        if (v13 == v14)
        {
          goto LABEL_9;
        }
      }
    }
  }

  v60 = a5;
  DataServiceController::makeDataSimSlotRange(a1, a2, &v69);
  v16 = v69;
  v58 = v70;
  if (v69 != v70)
  {
    v57 = a1 + 4992;
    do
    {
      v68 = *v16;
      LODWORD(__p[0]) = v68;
      v17 = *sub_100007DEC(a1 + 4960, __p);
      v67 = 0;
      SlicingConfiguredInfo = DataServiceController::getSlicingConfiguredInfo(a1, v68);
      SlicingSupportInfo = 0;
      v67 = SlicingConfiguredInfo;
      v77 = 0;
      SlicingSupportInfo = DataServiceController::getSlicingSupportInfo(a1, v68, v76);
      sub_100007E44(v76);
      v19 = *(a3 + 23);
      if ((v19 & 0x80u) != 0)
      {
        v19 = *(a3 + 8);
      }

      if (!v19)
      {
        break;
      }

      if (*(a1 + 5348) == 1)
      {
        v20 = v17[23];
        if (v20 != v17 + 24)
        {
          do
          {
            v21 = *(a3 + 23);
            if (v21 >= 0)
            {
              v22 = *(a3 + 23);
            }

            else
            {
              v22 = *(a3 + 8);
            }

            v23 = *(v20 + 55);
            v24 = v23;
            if ((v23 & 0x80u) != 0)
            {
              v23 = v20[5];
            }

            if (v22 == v23)
            {
              v25 = v21 >= 0 ? a3 : *a3;
              v26 = v24 >= 0 ? v20 + 4 : v20[4];
              if (!memcmp(v25, v26, v22))
              {
                sub_100005BA0(a1 + 5280, a3);
              }
            }

            v27 = v20[1];
            if (v27)
            {
              do
              {
                v28 = v27;
                v27 = *v27;
              }

              while (v27);
            }

            else
            {
              do
              {
                v28 = v20[2];
                v30 = *v28 == v20;
                v20 = v28;
              }

              while (!v30);
            }

            v20 = v28;
          }

          while (v28 != v17 + 24);
        }
      }

      sub_100005BA0((v17 + 13), a3);
      v29 = *(a3 + 23);
      if (v29 < 0)
      {
        if (*(a3 + 8) != 17)
        {
          goto LABEL_74;
        }

        v32 = *a3;
        if (**a3 != 0x637369632E6D6F63 || *(*a3 + 8) != 0x6572617571732E6FLL || *(*a3 + 16) != 100)
        {
LABEL_48:
          v33 = *v32;
          v34 = v32[1];
          v35 = *(v32 + 16);
          if (v33 != 0x656265772E6D6F63 || v34 != 0x6E697465656D2E78 || v35 != 103)
          {
            goto LABEL_74;
          }

          sub_10000501C(__p, "com.cisco.squared");
          v38 = sub_100007A6C(a1 + 4984, __p);
          if (SHIBYTE(v64[0]) < 0)
          {
            operator delete(__p[0]);
          }

          if (v57 == v38)
          {
            goto LABEL_74;
          }

          sub_10000501C(__p, "com.cisco.squared");
          sub_10017695C((v17 + 13), __p);
          goto LABEL_73;
        }
      }

      else
      {
        if (v29 != 17)
        {
          goto LABEL_74;
        }

        v30 = *a3 == 0x637369632E6D6F63 && *(a3 + 8) == 0x6572617571732E6FLL;
        v31 = v30 && *(a3 + 16) == 100;
        v32 = a3;
        if (!v31)
        {
          goto LABEL_48;
        }
      }

      sub_10000501C(__p, "com.webex.meeting");
      v41 = sub_100007A6C(a1 + 4984, __p);
      if (SHIBYTE(v64[0]) < 0)
      {
        operator delete(__p[0]);
      }

      if (v57 == v41)
      {
LABEL_74:
        if (a6)
        {
          goto LABEL_76;
        }

        goto LABEL_75;
      }

      sub_10000501C(__p, "com.webex.meeting");
      sub_10017695C((v17 + 13), __p);
LABEL_73:
      if ((SHIBYTE(v64[0]) & 0x80000000) == 0)
      {
        goto LABEL_74;
      }

      operator delete(__p[0]);
      if (a6)
      {
LABEL_76:
        if (*(v60 + 23) < 0)
        {
          sub_100005F2C(__p, *v60, *(v60 + 8));
        }

        else
        {
          *__p = *v60;
          v64[0] = *(v60 + 16);
        }

        if (*(a4 + 23) < 0)
        {
          sub_100005F2C(&v64[1], *a4, *(a4 + 8));
        }

        else
        {
          *&v64[1] = *a4;
          v65 = *(a4 + 16);
        }

        v42 = v17[18];
        if (!v42)
        {
          goto LABEL_89;
        }

        v43 = v17 + 18;
        while (1)
        {
          while (1)
          {
            v44 = v42;
            if ((sub_1000068BC(a3, (v42 + 32)) & 0x80) == 0)
            {
              break;
            }

            v42 = *v44;
            v43 = v44;
            if (!*v44)
            {
              goto LABEL_89;
            }
          }

          if ((sub_1000068BC(v44 + 4, a3) & 0x80) == 0)
          {
            break;
          }

          v43 = v44 + 1;
          v42 = v44[1];
          if (!v42)
          {
            goto LABEL_89;
          }
        }

        v56 = *v43;
        if (!*v43)
        {
LABEL_89:
          operator new();
        }

        if (*(v56 + 79) < 0)
        {
          operator delete(*(v56 + 56));
        }

        *(v56 + 56) = *__p;
        *(v56 + 72) = v64[0];
        HIBYTE(v64[0]) = 0;
        LOBYTE(__p[0]) = 0;
        if (*(v56 + 103) < 0)
        {
          operator delete(*(v56 + 80));
          v48 = SHIBYTE(v64[0]);
          *(v56 + 80) = *&v64[1];
          *(v56 + 96) = v65;
          HIBYTE(v65) = 0;
          LOBYTE(v64[1]) = 0;
          if (v48 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *(v56 + 80) = *&v64[1];
          *(v56 + 96) = v65;
        }

        v49 = *(v60 + 23);
        if ((v49 & 0x80u) != 0)
        {
          v49 = *(v60 + 8);
        }

        if (v49)
        {
          sub_100005BA0((v17 + 20), v60);
        }

        sub_1004C12FC(a1 + 5008, &qword_101808708);
        sub_1004C12FC(a1 + 5032, &qword_101808708);
        a6 = 1;
        goto LABEL_109;
      }

LABEL_75:
      if (DataServiceController::isManagedApp(a1, v68, a3))
      {
        goto LABEL_76;
      }

      __p[0] = 0;
      __p[1] = 0;
      v64[0] = 0;
      (*(*a1 + 2360))(__p, a1, a3);
      v45 = __p[0];
      if (__p[0] != &__p[1])
      {
        do
        {
          sub_1004C12FC(a1 + 5008, v45 + 4);
          sub_1004C12FC(a1 + 5032, v45 + 4);
          v46 = v45[1];
          if (v46)
          {
            do
            {
              v47 = v46;
              v46 = *v46;
            }

            while (v46);
          }

          else
          {
            do
            {
              v47 = v45[2];
              v30 = *v47 == v45;
              v45 = v47;
            }

            while (!v30);
          }

          v45 = v47;
        }

        while (v47 != &__p[1]);
      }

      sub_10006DCAC(__p, __p[1]);
      a6 = 0;
LABEL_109:
      a5 = a5 & 0xFFFFFFFF00000000 | v68;
      v75[0] = off_101E509A8;
      v75[1] = a1;
      v75[2] = a5;
      v75[3] = v75;
      v62 = 0;
      v50 = DataServiceController::getSlicingConfiguredInfo(a1, v68);
      v61 = 0;
      v62 = v50;
      v51 = v68;
      if (v17[15] == 1)
      {
        sub_1001058C4(v73, v75);
      }

      else
      {
        v74 = 0;
      }

      v61 = DataServiceController::getSlicingSupportInfo(a1, v51, v73);
      sub_100007E44(v73);
      if ((rest::operator==() & 1) == 0)
      {
        v52 = *(a1 + 40);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          rest::SlicingSupportInfo::toString(__p, &v62);
          v53 = v64[0] >= 0 ? __p : __p[0];
          *buf = 136315138;
          v72 = v53;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#I update slicing: data_slicing_configured = %s (2)", buf, 0xCu);
          if (SHIBYTE(v64[0]) < 0)
          {
            operator delete(__p[0]);
          }
        }

        __p[0] = 1;
        memset(v64, 0, sizeof(v64));
        __p[1] = (a1 + 4272);
        sub_1004C5380(v64, a1 + 4304);
        sub_1004BAE14(v64, &v68, &v62);
        sub_1004C53D8(__p);
      }

      if ((rest::operator==() & 1) == 0)
      {
        v54 = *(a1 + 40);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          rest::SlicingSupportInfo::toString(__p, &v61);
          v55 = v64[0] >= 0 ? __p : __p[0];
          *buf = 136315138;
          v72 = v55;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#I update slicing: data_slicing_support = %s (2)", buf, 0xCu);
          if (SHIBYTE(v64[0]) < 0)
          {
            operator delete(__p[0]);
          }
        }

        __p[0] = 1;
        memset(v64, 0, sizeof(v64));
        __p[1] = (a1 + 4328);
        sub_1004C5380(v64, a1 + 4360);
        sub_1004BAE14(v64, &v68, &v61);
        sub_1004C5638(__p);
      }

      sub_100007E44(v75);
      ++v16;
    }

    while (v16 != v58);
  }

  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }
}

void sub_1004BC2DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a31)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004BC3F0(const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_1000CE3D4();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_10006A8B4(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t DataServiceController::isSlicingEnabledInCarrierBundle_sync(uint64_t a1, int a2)
{
  v4 = *(a1 + 112);
  v8 = *(a1 + 104);
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  isValidSimSlot = subscriber::isValidSimSlot();
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (isValidSimSlot)
  {
    LODWORD(v8) = a2;
    v6 = **sub_100007DEC(a1 + 4960, &v8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_1004BC564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::processUrsp_sync(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 144);
  v7 = *(v5 + 8);
  for (i = *(v5 + 16); v7 != i; v7 += 54)
  {
    v14 = v7[52];
    v13 = v7[53];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *(v14 + 52);
      sub_100004A34(v13);
    }

    else
    {
      v15 = *(v14 + 52);
    }

    if (v15 == a2)
    {
      v16 = v7[50];
      if (v16)
      {
        v17 = *(a1 + 40);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = subscriber::asString();
          *buf = 136315138;
          v20 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I processUrsp_sync on simSlot %s", buf, 0xCu);
          v16 = v7[50];
        }

        (*(*v16 + 40))(v16, a3, a4, a5);
      }
    }
  }
}

void DataServiceController::updateHomePlmnUrspList_sync(uint64_t a1, int a2)
{
  v2 = *(a1 + 144);
  v3 = *(v2 + 8);
  for (i = *(v2 + 16); v3 != i; v3 += 54)
  {
    v8 = v3[52];
    v7 = v3[53];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *(v8 + 52);
      sub_100004A34(v7);
    }

    else
    {
      v9 = *(v8 + 52);
    }

    if (v9 == a2)
    {
      v10 = v3[50];
      if (v10)
      {
        v11 = *(a1 + 40);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = subscriber::asString();
          *buf = 136315138;
          v14 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I updateHomePlmnUrspList_sync on simSlot %s", buf, 0xCu);
          v10 = v3[50];
        }

        (*(*v10 + 48))(v10, 1);
      }
    }
  }
}

void DataServiceController::updateAllowedNssaiList_sync(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 144);
  v4 = *(v3 + 8);
  for (i = *(v3 + 16); v4 != i; v4 += 54)
  {
    v10 = v4[52];
    v9 = v4[53];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = *(v10 + 52);
      sub_100004A34(v9);
    }

    else
    {
      v11 = *(v10 + 52);
    }

    if (v11 == a2)
    {
      v12 = v4[50];
      if (v12)
      {
        v13 = *(a1 + 40);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = subscriber::asString();
          *buf = 136315138;
          v16 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I updateAllowedNssaiList_sync on simSlot %s", buf, 0xCu);
          v12 = v4[50];
        }

        (*(*v12 + 56))(v12, a3);
      }
    }
  }
}

void *DataServiceController::allTdCombinationsFromUrsp_sync(uint64_t a1, int a2)
{
  v2 = *(a1 + 144);
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  if (v3 == v4)
  {
    return &unk_101808718;
  }

  v7 = &unk_101808718;
  while (1)
  {
    v9 = v3[52];
    v8 = v3[53];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = *(v9 + 52);
      sub_100004A34(v8);
    }

    else
    {
      v10 = *(v9 + 52);
    }

    if (v10 == a2)
    {
      v11 = v3[50];
      if (v11)
      {
        break;
      }
    }

    v3 += 54;
    if (v3 == v4)
    {
      return v7;
    }
  }

  v12 = *(a1 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = subscriber::asString();
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I allTdCombinationsFromUrsp_sync on simSlot %s", &v14, 0xCu);
    v11 = v3[50];
  }

  return (*(*v11 + 64))(v11);
}

void DataServiceController::resetAllUrspRules_sync(uint64_t a1, int a2, int a3)
{
  if (a3 == 8 || a3 == 1)
  {
    v5 = *(a1 + 144);
    v6 = *(v5 + 8);
    for (i = *(v5 + 16); v6 != i; v6 += 54)
    {
      v9 = v6[52];
      v8 = v6[53];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v10 = *(v9 + 52);
        sub_100004A34(v8);
      }

      else
      {
        v10 = *(v9 + 52);
      }

      if (v10 == a2)
      {
        v11 = v6[50];
        if (v11)
        {
          v12 = *(a1 + 40);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = subscriber::asString();
            *buf = 136315138;
            v15 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I resetAllUrspRules_sync on simSlot %s", buf, 0xCu);
            v11 = v6[50];
          }

          (*(*v11 + 72))(v11);
        }
      }
    }
  }
}

uint64_t DataServiceController::evaluateUrspWithTd_sync(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[18];
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);
  if (v7 == v8)
  {
LABEL_8:
    *buf = a1;
    sub_1001058C4(&buf[8], a4);
    v18[0] = 0;
    v18[1] = 0;
    sub_100004AA0(v18, a1 + 1);
    operator new();
  }

  while (1)
  {
    v12 = v7[52];
    v11 = v7[53];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = *(v12 + 52);
      sub_100004A34(v11);
    }

    else
    {
      v13 = *(v12 + 52);
    }

    if (v13 == a2)
    {
      v14 = v7[50];
      if (v14)
      {
        break;
      }
    }

    v7 += 54;
    if (v7 == v8)
    {
      goto LABEL_8;
    }
  }

  v15 = a1[5];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = subscriber::asString();
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I evaluateUrspWithTd_sync on simSlot %s", buf, 0xCu);
    v14 = v7[50];
  }

  sub_1001058C4(v20, a4);
  v16 = (*(*v14 + 80))(v14, a3, v20);
  sub_100007E44(v20);
  return v16;
}

void sub_1004BCEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_100007E44(va);
  _Unwind_Resume(a1);
}

uint64_t DataServiceController::checkSliceDataStall(DataServiceController *this, int a2)
{
  v3 = *(this + 14);
  *v105 = *(this + 13);
  *&v105[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  subscriber::makeSimSlotRange();
  if (*&v105[8])
  {
    sub_100004A34(*&v105[8]);
  }

  v76 = v103;
  v78 = v102;
  if (v102 != v103)
  {
    v75 = v104;
    do
    {
      if (v104(*v78))
      {
        break;
      }

      ++v78;
    }

    while (v78 != v103);
    v66 = v103;
    if (v78 != v103)
    {
      v4 = this + 5376;
      do
      {
        v77 = *v78;
        v5 = 28;
        while (1)
        {
          v100 = 0;
          v101 = 0;
          DataServiceController::getConnection_sync(this, v77, v5, &v100);
          if (v100 && ((*(*v100 + 168))(v100) & 1) != 0 && (*(*v100 + 200))(v100) == a2)
          {
            __p[0] = 0;
            __p[1] = 0;
            v99 = 0;
            v6 = (*(*v100 + 416))(v100, __p);
            v8 = v6 + 1;
            v7 = *v6;
            if (*v6 != v6 + 1)
            {
              while (1)
              {
                v9 = *(this + 5);
                if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
                {
                  TrafficDescriptor::toString(v105, (v7 + 4));
                  v10 = v105;
                  if (v105[23] < 0)
                  {
                    v10 = *v105;
                  }

                  *buf = 136446210;
                  *&buf[4] = v10;
                  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I checkSliceDataStall ???: %{public}s", buf, 0xCu);
                  if ((v105[23] & 0x80000000) != 0)
                  {
                    operator delete(*v105);
                  }
                }

                if (DataServiceController::isInternalSliceApp_sync(this, (v7 + 4)))
                {
                  v11 = *(this + 671);
                  if (v11 == v4)
                  {
LABEL_34:
                    v15 = *(this + 5);
                    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_142;
                    }

                    v16 = asString();
                    TrafficDescriptor::toString(buf, (v7 + 4));
                    v17 = buf;
                    if ((buf[23] & 0x80u) != 0)
                    {
                      v17 = *buf;
                    }

                    *v105 = 136315650;
                    *&v105[4] = v16;
                    *&v105[12] = 2048;
                    *&v105[14] = 9000;
                    *&v105[22] = 2082;
                    *&v105[24] = v17;
                    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I checkSliceDataStall: do not report slice connection %s because TD does not belong to %llu: internal traffic descriptor: %{public}s", v105, 0x20u);
                    if ((buf[23] & 0x80000000) == 0)
                    {
                      goto LABEL_142;
                    }

                    v18 = *buf;
                    goto LABEL_59;
                  }

                  while (1)
                  {
                    if (*(v7 + 40))
                    {
                      v12 = *(v7 + 9) == *(v11 + 8) && *(v11 + 5) == 9000;
                      if (v12)
                      {
                        break;
                      }
                    }

                    v13 = *(v11 + 1);
                    if (v13)
                    {
                      do
                      {
                        v14 = v13;
                        v13 = *v13;
                      }

                      while (v13);
                    }

                    else
                    {
                      do
                      {
                        v14 = *(v11 + 2);
                        v12 = *v14 == v11;
                        v11 = v14;
                      }

                      while (!v12);
                    }

                    v11 = v14;
                    if (v14 == v4)
                    {
                      goto LABEL_34;
                    }
                  }
                }

                else
                {
                  if ((TrafficDescriptor::hasBundleInfo((v7 + 4)) & 1) == 0)
                  {
                    v23 = *(this + 5);
                    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_142;
                    }

                    v24 = asString();
                    TrafficDescriptor::toString(v105, (v7 + 4));
                    v25 = v105;
                    if (v105[23] < 0)
                    {
                      v25 = *v105;
                    }

                    *buf = 136315394;
                    *&buf[4] = v24;
                    *&buf[12] = 2082;
                    *&buf[14] = v25;
                    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I checkSliceDataStall: do not report slice connection %s because TD has non-bundle-id based traffic descriptor: %{public}s", buf, 0x16u);
                    if ((v105[23] & 0x80000000) == 0)
                    {
                      goto LABEL_142;
                    }

                    v18 = *v105;
LABEL_59:
                    operator delete(v18);
                    goto LABEL_142;
                  }

                  memset(buf, 0, sizeof(buf));
                  if ((v7[13] & 1) == 0)
                  {
                    sub_1000D1644();
                  }

                  (*(*this + 2360))(buf, this, v7 + 10);
                  v19 = *&buf[8];
                  if (!*&buf[8])
                  {
                    goto LABEL_60;
                  }

                  v20 = &buf[8];
                  v21 = *&buf[8];
                  do
                  {
                    if (*(v21 + 32) >> 3 < 0x465uLL)
                    {
                      v22 = 1;
                    }

                    else
                    {
                      v20 = v21;
                      v22 = 0;
                    }

                    v21 = *(v21 + 8 * v22);
                  }

                  while (v21);
                  if (v20 == &buf[8] || *(v20 + 4) >= 0x2329uLL)
                  {
LABEL_60:
                    v26 = *(this + 5);
                    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                    {
                      v27 = asString();
                      TrafficDescriptor::toString(v112, (v7 + 4));
                      v28 = v112;
                      if (v115 < 0)
                      {
                        v28 = *v112;
                      }

                      *v105 = 136315650;
                      *&v105[4] = v27;
                      *&v105[12] = 2048;
                      *&v105[14] = 9000;
                      *&v105[22] = 2082;
                      *&v105[24] = v28;
                      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I checkSliceDataStall: do not report slice connection %s because TD does not belong to %llu: traffic descriptor: %{public}s", v105, 0x20u);
                      if (v115 < 0)
                      {
                        operator delete(*v112);
                      }

                      v19 = *&buf[8];
                    }

                    sub_10006DCAC(buf, v19);
                    goto LABEL_142;
                  }

                  sub_10006DCAC(buf, *&buf[8]);
                }

                v96 = 0;
                v97 = 0;
                (*(*v100 + 136))(&v96);
                if (v96)
                {
                  break;
                }

                v29 = *(this + 5);
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  v30 = asString();
                  TrafficDescriptor::toString(v105, (v7 + 4));
                  v31 = v105;
                  if (v105[23] < 0)
                  {
                    v31 = *v105;
                  }

                  *buf = 136315394;
                  *&buf[4] = v30;
                  *&buf[12] = 2082;
                  *&buf[14] = v31;
                  _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I checkSliceDataStall: do not report slice connection %s because settings object is empty: traffic descriptor: %{public}s", buf, 0x16u);
                  if ((v105[23] & 0x80000000) != 0)
                  {
                    operator delete(*v105);
                  }
                }

                LODWORD(v32) = 8;
LABEL_139:
                if (v97)
                {
                  sub_100004A34(v97);
                }

                if ((v32 | 8) != 8)
                {
                  goto LABEL_149;
                }

LABEL_142:
                v61 = v7[1];
                if (v61)
                {
                  do
                  {
                    v62 = v61;
                    v61 = *v61;
                  }

                  while (v61);
                }

                else
                {
                  do
                  {
                    v62 = v7[2];
                    v12 = *v62 == v7;
                    v7 = v62;
                  }

                  while (!v12);
                }

                v7 = v62;
                if (v62 == v8)
                {
                  goto LABEL_148;
                }
              }

              v94 = 0;
              v95 = 0;
              (*(*v96 + 472))(&v94);
              if (v94)
              {
                memset(buf, 0, sizeof(buf));
                if (*(v94 + 71) < 0)
                {
                  sub_100005F2C(buf, *(v94 + 48), *(v94 + 56));
                }

                else
                {
                  *buf = *(v94 + 48);
                  *&buf[16] = *(v94 + 64);
                }

                v36 = buf[23];
                if ((buf[23] & 0x80u) != 0)
                {
                  v36 = *&buf[8];
                }

                if (!v36)
                {
                  v47 = *(this + 5);
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                  {
                    v48 = asString();
                    TrafficDescriptor::toString(v105, (v7 + 4));
                    v49 = v105;
                    if (v105[23] < 0)
                    {
                      v49 = *v105;
                    }

                    *v112 = 136315394;
                    *&v112[4] = v48;
                    v113 = 2082;
                    v114 = v49;
                    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I checkSliceDataStall: do not report slice connection %s because DNN is empty: traffic descriptor: %{public}s", v112, 0x16u);
                    if ((v105[23] & 0x80000000) != 0)
                    {
                      operator delete(*v105);
                    }
                  }

                  LODWORD(v32) = 8;
                  goto LABEL_135;
                }

                ServiceMap = Registry::getServiceMap(*(this + 13));
                v38 = ServiceMap;
                if (v39 < 0)
                {
                  v40 = (v39 & 0x7FFFFFFFFFFFFFFFLL);
                  v41 = 5381;
                  do
                  {
                    v39 = v41;
                    v42 = *v40++;
                    v41 = (33 * v41) ^ v42;
                  }

                  while (v42);
                }

                std::mutex::lock(ServiceMap);
                *v105 = v39;
                v43 = sub_100009510(&v38[1].__m_.__sig, v105);
                if (v43)
                {
                  v32 = v43[3];
                  v44 = v43[4];
                  if (v44)
                  {
                    atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
                    std::mutex::unlock(v38);
                    atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
                    sub_100004A34(v44);
                    v45 = v44;
                    v46 = 0;
                    if (!v32)
                    {
                      goto LABEL_133;
                    }

LABEL_98:
                    v73 = v45;
                    *v112 = 0;
                    v50 = xpc_dictionary_create(0, 0, 0);
                    v51 = v50;
                    if (v50)
                    {
                      *v112 = v50;
                      goto LABEL_101;
                    }

                    v51 = xpc_null_create();
                    *v112 = v51;
                    if (v51)
                    {
LABEL_101:
                      if (xpc_get_type(v51) != &_xpc_type_dictionary)
                      {
                        v52 = xpc_null_create();
                        goto LABEL_105;
                      }

                      xpc_retain(v51);
                    }

                    else
                    {
                      v52 = xpc_null_create();
                      v51 = 0;
LABEL_105:
                      *v112 = v52;
                    }

                    xpc_release(v51);
                    if ((buf[23] & 0x80u) == 0)
                    {
                      v53 = buf;
                    }

                    else
                    {
                      v53 = *buf;
                    }

                    v92 = xpc_string_create(v53);
                    if (!v92)
                    {
                      v92 = xpc_null_create();
                    }

                    *v105 = v112;
                    *&v105[8] = "dnn";
                    sub_10000F688(v105, &v92, &object);
                    xpc_release(object);
                    object = 0;
                    xpc_release(v92);
                    v92 = 0;
                    v90 = xpc_int64_create(a2);
                    if (!v90)
                    {
                      v90 = xpc_null_create();
                    }

                    *v105 = v112;
                    *&v105[8] = "pdp";
                    sub_10000F688(v105, &v90, &v91);
                    xpc_release(v91);
                    v91 = 0;
                    xpc_release(v90);
                    v90 = 0;
                    memset(v89, 0, sizeof(v89));
                    v88 = 0;
                    v54 = (*(*this + 1288))(this);
                    if (DataServiceController::getCurrent5GSlicingCellInfo_sync(this, v77, &v89[2], &v89[1], v89, &v88))
                    {
                      v86 = xpc_int64_create(v89[2]);
                      if (!v86)
                      {
                        v86 = xpc_null_create();
                      }

                      *v105 = v112;
                      *&v105[8] = "mnc";
                      sub_10000F688(v105, &v86, &v87);
                      xpc_release(v87);
                      v87 = 0;
                      xpc_release(v86);
                      v86 = 0;
                      v84 = xpc_int64_create(v89[1]);
                      if (!v84)
                      {
                        v84 = xpc_null_create();
                      }

                      *v105 = v112;
                      *&v105[8] = "mcc";
                      sub_10000F688(v105, &v84, &v85);
                      xpc_release(v85);
                      v85 = 0;
                      xpc_release(v84);
                      v84 = 0;
                      if (v54)
                      {
                        v82 = xpc_int64_create(v89[0]);
                        if (!v82)
                        {
                          v82 = xpc_null_create();
                        }

                        *v105 = v112;
                        *&v105[8] = "areaId";
                        sub_10000F688(v105, &v82, &v83);
                        xpc_release(v83);
                        v83 = 0;
                        xpc_release(v82);
                        v82 = 0;
                        v80 = xpc_uint64_create(v88);
                        if (!v80)
                        {
                          v80 = xpc_null_create();
                        }

                        *v105 = v112;
                        *&v105[8] = "cellId";
                        sub_10000F688(v105, &v80, &v81);
                        xpc_release(v81);
                        v81 = 0;
                        xpc_release(v80);
                        v80 = 0;
                      }

                      else
                      {
                        v89[0] = 0;
                        v88 = 0;
                      }
                    }

                    log = *(this + 5);
                    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
                    {
                      v70 = v32;
                      v71 = v46;
                      v55 = v54;
                      v56 = buf[23];
                      v57 = *buf;
                      v58 = v89[2];
                      v67 = v89[1];
                      v68 = v89[0];
                      v69 = v88;
                      v59 = asStringBool(v55);
                      *v105 = 136447746;
                      v60 = buf;
                      if (v56 < 0)
                      {
                        v60 = v57;
                      }

                      *&v105[4] = v60;
                      *&v105[12] = 1024;
                      *&v105[14] = a2;
                      *&v105[18] = 2048;
                      *&v105[20] = v58;
                      *&v105[28] = 2048;
                      *&v105[30] = v67;
                      v106 = 2048;
                      v107 = v68;
                      v108 = 2048;
                      v109 = v69;
                      v110 = 2080;
                      v111 = v59;
                      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#E checkSliceDataStall: submitCoreAnalytics metricCCSliceDataStall for 5G Slice: dnn=%{public}s contextId=%u mnc=%lu mcc=%lu areaId=%lu cellId=%llu locationAuthorized=%s", v105, 0x44u);
                      v46 = v71;
                      v32 = v70;
                    }

                    v79 = *v112;
                    if (*v112)
                    {
                      xpc_retain(*v112);
                    }

                    else
                    {
                      v79 = xpc_null_create();
                    }

                    (*(*v32 + 16))(v32, "metricCCSliceDataStall", &v79);
                    xpc_release(v79);
                    v79 = 0;
                    xpc_release(*v112);
                    LODWORD(v32) = 1;
                    v45 = v73;
LABEL_133:
                    if ((v46 & 1) == 0)
                    {
                      sub_100004A34(v45);
                    }

LABEL_135:
                    if (buf[23] < 0)
                    {
                      operator delete(*buf);
                    }

LABEL_137:
                    if (v95)
                    {
                      sub_100004A34(v95);
                    }

                    goto LABEL_139;
                  }
                }

                else
                {
                  v32 = 0;
                }

                std::mutex::unlock(v38);
                v45 = 0;
                v46 = 1;
                if (v32)
                {
                  goto LABEL_98;
                }

                goto LABEL_133;
              }

              v33 = *(this + 5);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                v34 = asString();
                TrafficDescriptor::toString(v105, (v7 + 4));
                v35 = v105;
                if (v105[23] < 0)
                {
                  v35 = *v105;
                }

                *buf = 136315394;
                *&buf[4] = v34;
                *&buf[12] = 2082;
                *&buf[14] = v35;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I checkSliceDataStall: do not report slice connection %s because apnInfo object is empty: traffic descriptor: %{public}s", buf, 0x16u);
                if ((v105[23] & 0x80000000) != 0)
                {
                  operator delete(*v105);
                }
              }

              LODWORD(v32) = 8;
              goto LABEL_137;
            }

LABEL_148:
            LODWORD(v32) = 0;
LABEL_149:
            if (SHIBYTE(v99) < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            LODWORD(v32) = 6;
          }

          if (v101)
          {
            sub_100004A34(v101);
          }

          if (v32 != 6 && v32)
          {
            break;
          }

          if (++v5 == 36)
          {
            goto LABEL_159;
          }
        }

        if ((v32 & 0xFFFFFFFB) != 0)
        {
          return 1;
        }

        do
        {
LABEL_159:
          ++v78;
        }

        while (v78 != v76 && (v75(*v78) & 1) == 0);
      }

      while (v78 != v66);
    }
  }

  v63 = *(this + 5);
  v64 = os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v64)
  {
    *v105 = 67109120;
    *&v105[4] = a2;
    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#I checkSliceDataStall[%u]: false", v105, 8u);
    return 0;
  }

  return result;
}

void sub_1004BDD8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, xpc_object_t object, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *__p, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, uint64_t a63)
{
  v65 = *(v63 - 232);
  if (v65)
  {
    sub_100004A34(v65);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DataServiceController::getCurrent5GSlicingCellInfo_sync(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, void *a6)
{
  bzero(v20, 0x328uLL);
  RegisteredNetworkInfo::RegisteredNetworkInfo(v20, (a1 + 1224));
  if (a2 == 2)
  {
    RegisteredNetworkInfo::operator=();
  }

  if (v21 != 14)
  {
    if (v21 == 16)
    {
      if (v31 == 1)
      {
        *a3 = MCC::getIntValue(v28);
        *a4 = MCC::getIntValue(v27);
        *a5 = v29;
        *a6 = v30;
        v14 = MCC::valid(v28) ? MCC::valid(v27) : 0;
        v15 = *(a1 + 40);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 136315138;
          v19 = asStringBool(v14);
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Slice cell info from NR (NSA): %s", &v18, 0xCu);
        }

        if (v14)
        {
          goto LABEL_20;
        }
      }

      if (v26 == 1 && MCC::valid(v23) && MCC::valid(v22))
      {
        *a3 = MCC::getIntValue(v23);
        *a4 = MCC::getIntValue(v22);
        *a5 = v24;
        *a6 = v25;
        v12 = *(a1 + 40);
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_20;
        }

        LOWORD(v18) = 0;
        v13 = "#I Slice cell info from LTE (NR NSA)";
        goto LABEL_15;
      }
    }

    else if (v21 == 17 && v31 == 1)
    {
      *a3 = MCC::getIntValue(v28);
      *a4 = MCC::getIntValue(v27);
      *a5 = v29;
      *a6 = v30;
      v12 = *(a1 + 40);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        v13 = "#I Slice cell info from NR (SA)";
LABEL_15:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, &v18, 2u);
        goto LABEL_20;
      }

      goto LABEL_20;
    }

LABEL_26:
    v16 = 0;
    goto LABEL_27;
  }

  if (v26 != 1)
  {
    goto LABEL_26;
  }

  *a3 = MCC::getIntValue(v23);
  *a4 = MCC::getIntValue(v22);
  *a5 = v24;
  *a6 = v25;
  v12 = *(a1 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    v13 = "#I Slice cell info from LTE";
    goto LABEL_15;
  }

LABEL_20:
  v16 = 1;
LABEL_27:
  sub_10004543C(v20);
  return v16;
}

void sub_1004BE224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004543C(va);
  _Unwind_Resume(a1);
}

void DataServiceController::requestSliceByUUID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[4] = a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 16);
  }

  sub_1004C6168(&v7, a3);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

uint64_t DataServiceController::saveForwardedApp(DataServiceController *this, void **a2)
{
  result = TrafficDescriptor::hasBundleInfo(a2);
  if (result)
  {
    v5.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    if ((a2[9] & 1) == 0)
    {
      sub_1000D1644();
    }

    rep = v5.__d_.__rep_;
    result = sub_1004C768C(this + 5200, a2 + 6);
    *(result + 56) = rep;
  }

  return result;
}

void DataServiceController::requestSliceDeactivation(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

uint64_t sub_1004BE5E0(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = *(result + 8);
  v8 = a2 + v7 - a4;
  if (v8 >= a3)
  {
    v10 = *(result + 8);
  }

  else
  {
    v10 = *(result + 8);
    do
    {
      result = TrafficDescriptor::TrafficDescriptor();
      v8 += 304;
      v10 += 304;
    }

    while (v8 < a3);
  }

  *(v6 + 8) = v10;
  if (v7 != a4)
  {
    v11 = v7 - 304;
    v12 = a4 - v7;
    v13 = a2 + v7 - 304 - a4;
    do
    {
      result = TrafficDescriptor::operator=();
      v11 -= 304;
      v13 -= 304;
      v12 += 304;
    }

    while (v12);
  }

  return result;
}

TrafficDescriptor *sub_1004BE6A0(TrafficDescriptor **a1, const TrafficDescriptor *a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    v7 = v6 - *a1;
    if (v6 <= *a1)
    {
      if (v4 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0xD79435E50D79436 * ((v4 - *a1) >> 4);
      }

      v10 = a1[4];
      v12 = a1[4];
      sub_1001C1634(v10, v9);
    }

    v8 = (0x86BCA1AF286BCA1BLL * (v7 >> 4) + 1) / -2;
    v5 = (v6 - 304 * ((0x86BCA1AF286BCA1BLL * (v7 >> 4) + 1) / 2));
    if (v6 != v4)
    {
      do
      {
        TrafficDescriptor::operator=();
        v6 = (v6 + 304);
        v5 = (v5 + 304);
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = (v6 + 304 * v8);
    a1[2] = v5;
  }

  result = TrafficDescriptor::TrafficDescriptor(v5, a2);
  a1[2] = (a1[2] + 304);
  return result;
}

void sub_1004BE830(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001C1734(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004BE848(uint64_t a1, uint64_t a2, TrafficDescriptor *a3)
{
  v6 = *(a2 + 8);
  sub_1001C1690(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  sub_1001C1690(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t sub_1004BE904(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1001C1AD4(result, a4);
  }

  return result;
}

void sub_1004BE96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1001B8A7C(&a9);
  _Unwind_Resume(a1);
}

void sub_1004BE98C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1004BE9D4(uint64_t a1)
{
  sub_1004BEA0C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1004BEA0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 32;
      *(a1 + 16) = v2 - 32;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_1004BEA68(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1001C1AD4(result, a4);
  }

  return result;
}

void sub_1004BEAD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1001B8A7C(&a9);
  _Unwind_Resume(a1);
}

TrafficDescriptor *sub_1004BEAF0(uint64_t a1, const TrafficDescriptor *a2, const TrafficDescriptor *a3, TrafficDescriptor *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      TrafficDescriptor::TrafficDescriptor(a4, v6);
      v6 = (v6 + 304);
      a4 = (a4 + 304);
      v7 -= 304;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_1004BEB50(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 304);
    do
    {
      TrafficDescriptor::~TrafficDescriptor(v4);
      v4 = (v5 - 304);
      v2 += 304;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004BEB74(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1000CE3D4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    sub_1000DEC00(a1, v7);
  }

  v14 = 0;
  v15 = 32 * v2;
  sub_1004BEC80(32 * v2, a2);
  v16 = (32 * v2 + 32);
  v8 = a1[1];
  v9 = 32 * v2 + *a1 - v8;
  sub_1004BED00(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_1004BED70(&v14);
  return v13;
}

void sub_1004BEC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1004BED70(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004BEC80(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void sub_1004BED00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_1004BEC80(a4, v7);
      v7 += 32;
      a4 = v8 + 32;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_1004C2A34(v6);
      v6 += 32;
    }
  }
}

uint64_t sub_1004BED70(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    sub_1004C2A34(i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

TrafficDescriptor *sub_1004BEDC0(TrafficDescriptor *a1, const TrafficDescriptor *a2)
{
  *a1 = 0;
  *(a1 + 304) = 0;
  if (*(a2 + 304) == 1)
  {
    TrafficDescriptor::TrafficDescriptor(a1, a2);
    *(a1 + 304) = 1;
  }

  return a1;
}

void sub_1004BEE08(_Unwind_Exception *exception_object)
{
  if (*(v1 + 304) == 1)
  {
    TrafficDescriptor::~TrafficDescriptor(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004BEE28(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

void sub_1004BEE7C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_1004C2A34(v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1004BEF00(uint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1000CE3D4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1004BF0A8(a1, v6);
  }

  v13 = 0;
  v14 = 48 * v2;
  sub_1004BF034(a1, (48 * v2), a2);
  v15 = 48 * v2 + 48;
  v7 = a1[1];
  v8 = 48 * v2 + *a1 - v7;
  sub_1004BF100(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1004BF208(&v13);
  return v12;
}

void sub_1004BF020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1004BF208(va);
  _Unwind_Resume(a1);
}

void *sub_1004BF034(int a1, void *__dst, __int128 *a3)
{
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__dst, *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    __dst[2] = *(a3 + 2);
    *__dst = v5;
  }

  return sub_10009AEBC(__dst + 3, a3 + 24);
}

void sub_1004BF08C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004BF0A8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_100013D10();
}

void sub_1004BF100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v7 = (a2 + v6);
      v8 = a4 + v6;
      v9 = *(a2 + v6);
      *(v8 + 16) = *(a2 + v6 + 16);
      *v8 = v9;
      v7[1] = 0;
      v7[2] = 0;
      *v7 = 0;
      *(v8 + 24) = *(a2 + v6 + 24);
      v10 = (a2 + v6 + 32);
      v11 = *v10;
      *(a4 + v6 + 32) = *v10;
      v12 = a4 + v6 + 32;
      v13 = *(a2 + v6 + 40);
      *(v8 + 40) = v13;
      if (v13)
      {
        *(v11 + 16) = v12;
        v7[3] = v10;
        *v10 = 0;
        *(a2 + v6 + 40) = 0;
      }

      else
      {
        *(v8 + 24) = v12;
      }

      v6 += 48;
    }

    while (a2 + v6 != a3);
    while (v5 != a3)
    {
      sub_1004BF1B4(v5);
      v5 += 48;
    }
  }
}

void sub_1004BF1B4(uint64_t a1)
{
  sub_10001BB0C(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_1004BF208(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_1004BF1B4(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1004BF258(uint64_t *a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_1000CE3D4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1004BF62C(a1, v6);
  }

  v13 = 0;
  v14 = 56 * v2;
  sub_1004BF3A4(a1, (56 * v2), a2);
  v15 = (56 * v2 + 56);
  v7 = a1[1];
  v8 = 56 * v2 + *a1 - v7;
  sub_1004BF688(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1004BF76C(&v13);
  return v12;
}

void sub_1004BF390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1004BF76C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004BF3A4(int a1, void *__dst, __int128 *a3)
{
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__dst, *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    __dst[2] = *(a3 + 2);
    *__dst = v5;
  }

  v6 = *(a3 + 24);
  __dst[4] = 0;
  *(__dst + 24) = v6;
  __dst[5] = 0;
  __dst[6] = 0;
  return sub_1004BF43C((__dst + 4), *(a3 + 4), *(a3 + 5), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 5) - *(a3 + 4)) >> 4));
}

void sub_1004BF420(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004BF43C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1004BF4C4(result, a4);
  }

  return result;
}

void sub_1004BF4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1004BF5A8(&a9);
  _Unwind_Resume(a1);
}

void sub_1004BF4C4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_1004BF0A8(a1, a2);
  }

  sub_1000CE3D4();
}

char *sub_1004BF510(int a1, __int128 *a2, __int128 *a3, char *__dst)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = 0;
    do
    {
      sub_1004BF034(a1, __dst, v6);
      v6 += 3;
      __dst += 48;
      v8 -= 48;
    }

    while (v6 != a3);
  }

  return __dst;
}

void sub_1004BF580(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 48;
    do
    {
      sub_1004BF1B4(v4);
      v4 -= 48;
      v2 += 48;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004BF5A8(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        sub_1004BF1B4(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1004BF62C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_100013D10();
}

void sub_1004BF688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *a4 = v7;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v6 + 32);
      *(a4 + 48) = *(v6 + 48);
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      v6 += 56;
      a4 += 56;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      sub_1004BF724(v5);
      v5 += 56;
    }
  }
}

void sub_1004BF724(uint64_t a1)
{
  v2 = (a1 + 32);
  sub_1004BF5A8(&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t sub_1004BF76C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    sub_1004BF724(i - 56);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1004BF7BC(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (!memcmp(a1, a2, v3) && *(v7 + 24) == *(v6 + 24))
  {
    v10 = v7 + 4;
    v8 = v7[4];
    v9 = v10[1];
    v12 = v6 + 4;
    v11 = v6[4];
    if (v9 - v8 == v12[1] - v11)
    {
      if (v8 == v9)
      {
        return 1;
      }

      while (1)
      {
        v13 = *(v8 + 23);
        if (v13 >= 0)
        {
          v14 = *(v8 + 23);
        }

        else
        {
          v14 = *(v8 + 8);
        }

        v15 = *(v11 + 23);
        v16 = v15;
        if ((v15 & 0x80u) != 0)
        {
          v15 = *(v11 + 8);
        }

        if (v14 != v15)
        {
          break;
        }

        v17 = v13 >= 0 ? v8 : *v8;
        v18 = v16 >= 0 ? v11 : *v11;
        if (memcmp(v17, v18, v14) || *(v8 + 40) != *(v11 + 40))
        {
          break;
        }

        v19 = *(v8 + 24);
        if (v19 != (v8 + 32))
        {
          v20 = *(v11 + 24);
          do
          {
            result = TrafficDescriptor::operator==();
            if (!result)
            {
              return result;
            }

            v22 = v19[1];
            v23 = v19;
            if (v22)
            {
              do
              {
                v19 = v22;
                v22 = *v22;
              }

              while (v22);
            }

            else
            {
              do
              {
                v19 = v23[2];
                v24 = *v19 == v23;
                v23 = v19;
              }

              while (!v24);
            }

            v25 = v20[1];
            if (v25)
            {
              do
              {
                v26 = v25;
                v25 = *v25;
              }

              while (v25);
            }

            else
            {
              do
              {
                v26 = v20[2];
                v24 = *v26 == v20;
                v20 = v26;
              }

              while (!v24);
            }

            v20 = v26;
          }

          while (v19 != (v8 + 32));
        }

        v8 += 48;
        v11 += 48;
        result = 1;
        if (v8 == v9)
        {
          return result;
        }
      }
    }
  }

  return 0;
}

void sub_1004BF98C(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_1004BFB08(a1);
    if (a4 <= 0x492492492492492)
    {
      v9 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
      {
        v10 = 0x492492492492492;
      }

      else
      {
        v10 = v9;
      }

      sub_1004BFB70(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = *(a1 + 8) - v8;
  if (0x6DB6DB6DB6DB6DB7 * (v11 >> 3) >= a4)
  {
    sub_1004BFC58(&v16, __str, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 56;
        sub_1004BF724(v14);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    sub_1004BFC58(&v15, __str, (__str + v11), v8);
    *(a1 + 8) = sub_1004BFBC0(a1, (__str + v11), a3, *(a1 + 8));
  }
}

void sub_1004BFB08(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 56;
        sub_1004BF724(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_1004BFB70(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    sub_1004BF62C(a1, a2);
  }

  sub_1000CE3D4();
}

char *sub_1004BFBC0(int a1, __int128 *a2, __int128 *a3, char *__dst)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = 0;
    do
    {
      sub_1004BF3A4(a1, __dst, v6);
      v6 = (v6 + 56);
      __dst += 56;
      v8 -= 56;
    }

    while (v6 != a3);
  }

  return __dst;
}

void sub_1004BFC30(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 56;
    do
    {
      sub_1004BF724(v4);
      v4 -= 56;
      v2 += 56;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1004BFC58(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str != a3)
  {
    do
    {
      std::string::operator=(this, v5);
      this[1].__r_.__value_.__s.__data_[0] = v5[1].__r_.__value_.__s.__data_[0];
      if (this != v5)
      {
        sub_1004BFCE8(&this[1].__r_.__value_.__l.__size_, v5[1].__r_.__value_.__l.__size_, v5[1].__r_.__value_.__r.__words[2], 0xAAAAAAAAAAAAAAABLL * ((v5[1].__r_.__value_.__r.__words[2] - v5[1].__r_.__value_.__l.__size_) >> 4));
      }

      v5 = (v5 + 56);
      this = (this + 56);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_1004BFCE8(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    sub_1004BFE54(a1);
    if (a4 <= 0x555555555555555)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v10 = 0x555555555555555;
      }

      else
      {
        v10 = v9;
      }

      sub_1004BF4C4(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 4) >= a4)
  {
    sub_1004BFEBC(&v16, __str, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 48;
        sub_1004BF1B4(v14);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    sub_1004BFEBC(&v15, __str, (__str + v11), v8);
    *(a1 + 8) = sub_1004BF510(a1, (__str + v11), a3, *(a1 + 8));
  }
}

void sub_1004BFE54(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 48;
        sub_1004BF1B4(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

std::string *sub_1004BFEBC(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str != a3)
  {
    p_size = &__str[1].__r_.__value_.__l.__size_;
    do
    {
      std::string::operator=(this, v5);
      if (v5 != this)
      {
        sub_10001ACB0(&this[1], v5[1].__r_.__value_.__l.__data_, p_size);
      }

      v5 += 2;
      this += 2;
      p_size += 6;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_1004BFF3C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1004BFB70(result, a4);
  }

  return result;
}

void sub_1004BFFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1004BFFC4(&a9);
  _Unwind_Resume(a1);
}

void sub_1004BFFC4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 56;
        sub_1004BF724(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1004C0048(uint64_t a1)
{
  sub_10006DCAC(a1 + 328, *(a1 + 336));
  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  if (*(a1 + 303) < 0)
  {
    operator delete(*(a1 + 280));
  }

  if (*(a1 + 279) < 0)
  {
    operator delete(*(a1 + 256));
  }

  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  sub_100009970(a1 + 184, *(a1 + 192));
  sub_100009970(a1 + 160, *(a1 + 168));
  sub_1004C0118(*(a1 + 144));
  sub_100009970(a1 + 104, *(a1 + 112));
  sub_1004C01D4(a1 + 80, *(a1 + 88));
  v3 = (a1 + 56);
  sub_1001B8A7C(&v3);
  v3 = (a1 + 32);
  sub_1001B8A7C(&v3);
  return a1;
}

void sub_1004C0118(void *a1)
{
  if (a1)
  {
    sub_1004C0118(*a1);
    sub_1004C0118(a1[1]);
    sub_1004C016C((a1 + 4));

    operator delete(a1);
  }
}

void sub_1004C016C(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_1004C01D4(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1004C01D4(a1, *a2);
    sub_1004C01D4(a1, *(a2 + 1));
    v4 = *(a2 + 11);
    if (v4)
    {
      *(a2 + 12) = v4;
      operator delete(v4);
    }

    v5 = (a2 + 64);
    sub_1000087B4(&v5);
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

uint64_t sub_1004C0254(uint64_t a1, int *a2, char **a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1000CE3D4();
  }

  v7 = *(a1 + 16) - *a1;
  if (v7 >> 4 > v4)
  {
    v4 = v7 >> 4;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFE0)
  {
    v8 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  v19 = a1;
  if (v8)
  {
    sub_1004C0360(a1, v8);
  }

  v15 = 0;
  v16 = (32 * v3);
  v17 = 32 * v3;
  v18 = 0;
  *v16 = *a2;
  sub_10000501C((32 * v3 + 8), *a3);
  v9 = v17 + 32;
  v10 = *(a1 + 8) - *a1;
  v11 = v16 - v10;
  memcpy(v16 - v10, *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v9;
  v13 = *(a1 + 16);
  *(a1 + 16) = v18;
  v17 = v12;
  v18 = v13;
  v15 = v12;
  v16 = v12;
  sub_1004BE9D4(&v15);
  return v9;
}

void sub_1004C034C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1004BE9D4(va);
  _Unwind_Resume(a1);
}

void sub_1004C0360(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1004C03A8(uint64_t a1, void *a2, char **a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1000CE3D4();
  }

  v7 = *(a1 + 16) - *a1;
  if (v7 >> 4 > v4)
  {
    v4 = v7 >> 4;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFE0)
  {
    v8 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  v19 = a1;
  if (v8)
  {
    sub_1004C0360(a1, v8);
  }

  v15 = 0;
  v16 = (32 * v3);
  v17 = 32 * v3;
  v18 = 0;
  *v16 = *a2;
  sub_10000501C((32 * v3 + 8), *a3);
  v9 = v17 + 32;
  v10 = *(a1 + 8) - *a1;
  v11 = v16 - v10;
  memcpy(v16 - v10, *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v9;
  v13 = *(a1 + 16);
  *(a1 + 16) = v18;
  v17 = v12;
  v18 = v13;
  v15 = v12;
  v16 = v12;
  sub_1004BE9D4(&v15);
  return v9;
}

void sub_1004C04A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1004BE9D4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004C04B4(uint64_t a1, int *a2, char *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1000CE3D4();
  }

  v7 = *(a1 + 16) - *a1;
  if (v7 >> 4 > v4)
  {
    v4 = v7 >> 4;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFE0)
  {
    v8 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  v19 = a1;
  if (v8)
  {
    sub_1004C0360(a1, v8);
  }

  v15 = 0;
  v16 = (32 * v3);
  v17 = 32 * v3;
  v18 = 0;
  *v16 = *a2;
  sub_10000501C((32 * v3 + 8), a3);
  v9 = v17 + 32;
  v10 = *(a1 + 8) - *a1;
  v11 = v16 - v10;
  memcpy(v16 - v10, *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v9;
  v13 = *(a1 + 16);
  *(a1 + 16) = v18;
  v17 = v12;
  v18 = v13;
  v15 = v12;
  v16 = v12;
  sub_1004BE9D4(&v15);
  return v9;
}

void sub_1004C05AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1004BE9D4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004C05C0(uint64_t a1, int *a2, char *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1000CE3D4();
  }

  v7 = *(a1 + 16) - *a1;
  if (v7 >> 4 > v4)
  {
    v4 = v7 >> 4;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFE0)
  {
    v8 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  v19 = a1;
  if (v8)
  {
    sub_1004C0360(a1, v8);
  }

  v15 = 0;
  v16 = (32 * v3);
  v17 = 32 * v3;
  v18 = 0;
  *v16 = *a2;
  sub_10000501C((32 * v3 + 8), a3);
  v9 = v17 + 32;
  v10 = *(a1 + 8) - *a1;
  v11 = v16 - v10;
  memcpy(v16 - v10, *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v9;
  v13 = *(a1 + 16);
  *(a1 + 16) = v18;
  v17 = v12;
  v18 = v13;
  v15 = v12;
  v16 = v12;
  sub_1004BE9D4(&v15);
  return v9;
}

void sub_1004C06B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1004BE9D4(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_1004C06CC(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v8[4] = v9[4];
          sub_10024FB30(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_1000685CC(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_10013CD24(&v12);
  }

  if (a2 != a3)
  {
    sub_1004C0830();
  }

  return result;
}

void sub_1004C081C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10013CD24(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_1004C08D0(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 7) = *(v9 + 7);
          sub_10042531C(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_1000685CC(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_10013CD24(&v12);
  }

  if (a2 != a3)
  {
    sub_1004C0A34();
  }

  return result;
}

void sub_1004C0A20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10013CD24(va);
  _Unwind_Resume(a1);
}

void *sub_1004C0AD4(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1004C0B2C(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1004C0B2C(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1004C0BB4(v5, v5 + 1, v4 + 7);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_1004C0BB4(void *a1, uint64_t *a2, unsigned int *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_1004C0C50(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_1004C0C50(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void *sub_1004C0DF8(void *__dst, __int128 *a2, uint64_t *a3, uint64_t *a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v7;
  }

  __dst[3] = 0;
  __dst[4] = 0;
  __dst[5] = 0;
  sub_10004EFD0((__dst + 3), *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  __dst[6] = 0;
  __dst[7] = 0;
  __dst[8] = 0;
  sub_1001B9EC4((__dst + 6), *a4, a4[1], (a4[1] - *a4) >> 3);
  return __dst;
}

void sub_1004C0EA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000087B4(va);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

double sub_1004C0ED8(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  sub_100071A6C(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;

  *&result = sub_100015184(a1 + 48, a2 + 3).n128_u64[0];
  return result;
}

uint64_t sub_1004C0F5C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 24);
  sub_1000087B4(&v4);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1004C0FB8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_1004C1038(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 2 * a3;
    do
    {
      sub_1004C10B8(a1, v4, a2++);
      v6 -= 2;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_1004C10B8(void *a1, uint64_t *a2, unsigned __int16 *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_1004C1154(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_1004C1154(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned __int16 *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 13), v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 13) < v15)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 26);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 13))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 26);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void *sub_1004C12FC(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_1004C13C8(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1004C13C8(a1, *a2);
    sub_1004C13C8(a1, *(a2 + 1));
    if (a2[80] == 1 && a2[79] < 0)
    {
      operator delete(*(a2 + 7));
    }

    operator delete(a2);
  }
}

uint64_t sub_1004C1438(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = *sub_1004C14D8(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_1004C14D8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((sub_1004C1560(a3, (v4 + 4)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((sub_1004C1560((v7 + 4), a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t sub_1004C1560(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == 1 && (v3 & 1) != 0)
  {
    if (*a1 < *a2)
    {
      v4 = 0xFFFFFFFFLL;
    }

    else
    {
      v4 = 1;
    }

    if (*a1 != *a2)
    {
      return v4;
    }

LABEL_12:
    v6 = *(a1 + 20);
    v7 = *(a2 + 20);
    if (v6 == 1 && (v7 & 1) != 0)
    {
      v8 = *(a1 + 16);
      v9 = *(a2 + 16);
      v10 = v8 == v9;
      if (v8 < v9)
      {
        LODWORD(v4) = -1;
      }

      else
      {
        LODWORD(v4) = 1;
      }

      if (v10)
      {
        return 0;
      }

      else
      {
        return v4;
      }
    }

    else
    {
      if (((v6 ^ 1) & v7) != 0)
      {
        v11 = -1;
      }

      else
      {
        v11 = 1;
      }

      if ((v7 | v6))
      {
        return v11;
      }

      else
      {
        return 0;
      }
    }
  }

  v5 = (v2 ^ 1) & v3;
  if (v5)
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = 1;
  }

  if (v5 == v2)
  {
    goto LABEL_12;
  }

  return v4;
}

uint64_t sub_1004C15FC(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  result = *sub_1004C1688(a1, &v3, a2);
  if (!result)
  {
    sub_1004C1710();
  }

  return result;
}

void *sub_1004C1688(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((sub_1004C17B4(a3, (v4 + 4)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((sub_1004C17B4((v7 + 4), a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void sub_1004C1798(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1004C1888(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1004C17B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  if (v2 == 1 && (v3 & 1) != 0)
  {
    if (*a1 < *a2)
    {
      v4 = 0xFFFFFFFFLL;
    }

    else
    {
      v4 = 1;
    }

    if (*a1 != *a2)
    {
      return v4;
    }
  }

  else
  {
    v5 = (v2 ^ 1) & v3;
    if (v5)
    {
      v4 = 0xFFFFFFFFLL;
    }

    else
    {
      v4 = 1;
    }

    if (v5 != v2)
    {
      return v4;
    }
  }

  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  if (v6 == 1 && (v7 & 1) != 0)
  {
    v8 = *(a1 + 8);
    v9 = *(a2 + 8);
    v10 = v8 == v9;
    if (v8 < v9)
    {
      v4 = 0xFFFFFFFFLL;
    }

    else
    {
      v4 = 1;
    }

    if (!v10)
    {
      return v4;
    }
  }

  else
  {
    v11 = (v6 ^ 1) & v7;
    if (v11)
    {
      v4 = 0xFFFFFFFFLL;
    }

    else
    {
      v4 = 1;
    }

    if (v11 != v6)
    {
      return v4;
    }
  }

  v12 = *(a1 + 48);
  v13 = *(a2 + 48);
  if (v12 == 1 && (v13 & 1) != 0)
  {
    return sub_1000068BC((a1 + 24), (a2 + 24));
  }

  if (((v12 ^ 1) & v13) != 0)
  {
    v15 = -1;
  }

  else
  {
    v15 = 1;
  }

  if ((v13 | v12))
  {
    return v15;
  }

  else
  {
    return 0;
  }
}

void sub_1004C1888(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 80) == 1 && *(__p + 79) < 0)
    {
      operator delete(__p[7]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

__n128 sub_1004C1970(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E50180;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_1004C19C0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004C1A0C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1004C1AFC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E50210;
  a2[1] = v2;
  return result;
}

void sub_1004C1B28(uint64_t a1, unsigned int *a2, int *a3)
{
  v4 = *a2;
  v5 = *a3;
  TrafficDescriptor::TrafficDescriptor();
  v6 = *(a1 + 8);
  if (!v5)
  {
LABEL_9:
    v4 = (*(*v6 + 1120))(v6);
    v5 = 0;
    goto LABEL_10;
  }

  v7 = (*(*v6 + 1120))(v6);
  v8 = (*(*v6 + 1120))(v6);
  v9 = (*(*v6 + 1120))(v6);
  v10 = (*(*v6 + 1064))(v6, v9);
  v31 = 0;
  LOBYTE(v7) = DataServiceController::SlicesDataContainer::configured(v6 + 4960, v7, v8, v10, v30);
  sub_100007E44(v30);
  if ((v7 & 1) == 0)
  {
    v11 = *(v6 + 5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      TrafficDescriptor::toString(&v24, &v20);
      v12 = v25 >= 0 ? &v24 : v24;
      *buf = 136446210;
      v27 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#N Do not have slicing allowed, forwarding to Internet: %{public}s", buf, 0xCu);
      if (v25 < 0)
      {
        operator delete(v24);
      }
    }

    goto LABEL_9;
  }

LABEL_10:
  v13 = (*(**(v6 + 6) + 16))(*(v6 + 6), v4);
  v23 = 0uLL;
  DataServiceController::getConnection_sync(v6, v4, v5, &v23);
  if (v23)
  {
    goto LABEL_17;
  }

  v14 = (*(*v6 + 1120))(v6);
  DataServiceController::getConnection_sync(v6, v14, 0, &v24);
  v15 = v24;
  v24 = 0uLL;
  v16 = *(&v23 + 1);
  v23 = v15;
  if (!v16)
  {
    if (!v15)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  sub_100004A34(v16);
  if (*(&v24 + 1))
  {
    sub_100004A34(*(&v24 + 1));
  }

  if (v23)
  {
LABEL_17:
    if ((DataServiceController::isInternalSliceApp_sync(v6, &v20) & 1) == 0 && v22 == 1)
    {
      BYTE4(v20) = 0;
      v21 = 0;
    }

    v17 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
    {
      v18 = &v24;
      TrafficDescriptor::toString(&v24, &v20);
      if (v25 < 0)
      {
        v18 = v24;
      }

      (*(*v23 + 488))(v23);
      v19 = asString();
      *buf = 136446466;
      v27 = v18;
      v28 = 2082;
      v29 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I TrafficDescriptor traffic forward: %{public}s to %{public}s", buf, 0x16u);
      if (v25 < 0)
      {
        operator delete(v24);
      }
    }

    DataServiceController::saveForwardedApp(v6, &v20);
    (*(*v23 + 448))(v23, &v20);
  }

LABEL_26:
  if (*(&v23 + 1))
  {
    sub_100004A34(*(&v23 + 1));
  }

  TrafficDescriptor::~TrafficDescriptor(&v20);
}

void sub_1004C1F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(v9 - 168);
  if (v11)
  {
    sub_100004A34(v11);
  }

  TrafficDescriptor::~TrafficDescriptor(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1004C1FBC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004C2008(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1004C2088(uint64_t a1, void **a2)
{
  v3 = 0;
  result = *sub_100005C2C(a1, &v3, a2);
  if (!result)
  {
    sub_1004C212C();
  }

  return result;
}

void sub_1004C21E4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1004C2200(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1004C2200(uint64_t a1, char *__p)
{
  if (*(a1 + 8) == 1)
  {
    if (__p[160] == 1)
    {
      sub_10006DCAC((__p + 136), *(__p + 18));
    }

    if (__p[112] == 1)
    {
      sub_100009970((__p + 88), *(__p + 12));
    }

    if (__p[80] == 1)
    {
      sub_10006DCAC((__p + 56), *(__p + 8));
    }

    if (__p[55] < 0)
    {
      operator delete(*(__p + 4));
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_1004C22AC(uint64_t a1, void *a2)
{
  if (*(a1 + 24) == 1)
  {
    sub_100173768(a1, a2);
  }

  else
  {
    *a1 = *a2;
    v3 = a2 + 1;
    v4 = a2[1];
    *(a1 + 8) = v4;
    v5 = a1 + 8;
    v6 = a2[2];
    *(a1 + 16) = v6;
    if (v6)
    {
      *(v4 + 16) = v5;
      *a2 = v3;
      *v3 = 0;
      a2[2] = 0;
    }

    else
    {
      *a1 = v5;
    }

    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t sub_1004C2328(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 32) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_1000194D8(a1, v4);
  sub_100265450(v4 + 40);
  operator delete(v4);
  return 1;
}

uint64_t *sub_1004C23B4(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    v7 = 0;
    v8 = 0;
    v9 = 0;
    sub_1004C247C();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_1004C2560(_Unwind_Exception *a1)
{
  if (*(v2 + 95) < 0)
  {
    operator delete(*(v2 + 72));
  }

  if (*(v2 + 71) < 0)
  {
    operator delete(*(v2 + 48));
  }

  sub_1004C25A4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1004C25A4(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100265450(v2 + 40);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1004C2678(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = a3[23];
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a3 + 1);
  }

  if (v6 == v7)
  {
    v9 = v5 >= 0 ? a2 : *a2;
    v10 = v8 >= 0 ? a3 : *a3;
    if (!memcmp(v9, v10, v6))
    {
      return 1;
    }
  }

  v32 = 0;
  v33 = 0;
  v34 = 0;
  v11 = &v32;
  sub_1000677C4(&v32, v6 + 5);
  if (v34 < 0)
  {
    v11 = v32;
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    memmove(v11, v12, v6);
  }

  strcpy(v11 + v6, "_NULL");
  v13 = HIBYTE(v34);
  if (v34 >= 0)
  {
    v14 = HIBYTE(v34);
  }

  else
  {
    v14 = v33;
  }

  v15 = a3[23];
  if (v15 >= 0)
  {
    v16 = a3[23];
  }

  else
  {
    v16 = *(a3 + 1);
  }

  if (v14 == v16)
  {
    v17 = v34 >= 0 ? &v32 : v32;
    v18 = v15 >= 0 ? a3 : *a3;
    if (!memcmp(v17, v18, v14))
    {
      v27 = 1;
      if ((v13 & 0x80) == 0)
      {
        return v27;
      }

      goto LABEL_59;
    }
  }

  __p = 0;
  v30 = 0;
  v31 = 0;
  p_p = &__p;
  sub_1000677C4(&__p, v16 + 5);
  if (v31 < 0)
  {
    p_p = __p;
  }

  if (v16)
  {
    if (a3[23] >= 0)
    {
      v20 = a3;
    }

    else
    {
      v20 = *a3;
    }

    memmove(p_p, v20, v16);
  }

  strcpy(p_p + v16, "_NULL");
  v21 = SHIBYTE(v31);
  if (v31 >= 0)
  {
    v22 = HIBYTE(v31);
  }

  else
  {
    v22 = v30;
  }

  v23 = *(a2 + 23);
  v24 = v23;
  if ((v23 & 0x80u) != 0)
  {
    v23 = *(a2 + 8);
  }

  if (v22 != v23)
  {
    v27 = 0;
    if ((SHIBYTE(v31) & 0x80000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  if (v31 >= 0)
  {
    v25 = &__p;
  }

  else
  {
    v25 = __p;
  }

  if (v24 >= 0)
  {
    v26 = a2;
  }

  else
  {
    v26 = *a2;
  }

  v27 = memcmp(v25, v26, v22) == 0;
  if (v21 < 0)
  {
LABEL_57:
    operator delete(__p);
  }

LABEL_58:
  if (v34 < 0)
  {
LABEL_59:
    operator delete(v32);
  }

  return v27;
}

void sub_1004C28B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004C28D0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004C291C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1004C299C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1004C2A34(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1004C2AB4(uint64_t a1)
{
  *a1 = off_101E50330;
  sub_1004C291C(a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1004C2B08(uint64_t a1)
{
  *a1 = off_101E50330;
  sub_1004C291C(a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

uint64_t sub_1004C2C44(uint64_t a1, void *a2)
{
  *a2 = off_101E50330;
  v4 = a2 + 1;
  if (*(a1 + 31) < 0)
  {
    sub_100005F2C(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    a2[3] = *(a1 + 24);
    *v4 = v5;
  }

  return sub_1004C299C((a2 + 4), a1 + 32);
}

void sub_1004C2CC4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004C2CE8(void *a1)
{
  sub_1004C2E48(a1 + 8);

  operator delete(a1);
}

uint64_t sub_1004C2D24(uint64_t a1, void *a2)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(*(a1 + 56), *a2 + 48, a1 + 8) ^ 1;
}

uint64_t sub_1004C2D7C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004C2DC8(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void sub_1004C2E48(uint64_t a1)
{
  sub_1004C291C(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_1004C2E98(uint64_t a1)
{
  *a1 = off_101E503C0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1004C2EE8(uint64_t a1)
{
  *a1 = off_101E503C0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

char *sub_1004C2FEC(char *result, void *a2)
{
  *a2 = off_101E503C0;
  v2 = a2 + 1;
  if (result[31] < 0)
  {
    return sub_100005F2C(v2, *(result + 1), *(result + 2));
  }

  v3 = *(result + 8);
  v2[2] = *(result + 3);
  *v2 = v3;
  return result;
}

void sub_1004C3034(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void sub_1004C3048(void **__p)
{
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

uint64_t sub_1004C30E4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004C3130(uint64_t a1)
{
  *a1 = off_101E50440;
  if (*(a1 + 328) == 1)
  {
    TrafficDescriptor::~TrafficDescriptor((a1 + 24));
  }

  return a1;
}

void sub_1004C3184(uint64_t a1)
{
  *a1 = off_101E50440;
  if (*(a1 + 328) == 1)
  {
    TrafficDescriptor::~TrafficDescriptor((a1 + 24));
  }

  operator delete();
}

TrafficDescriptor *sub_1004C3280(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E50440;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
  return sub_1004BEDC0((a2 + 24), (a1 + 24));
}

void sub_1004C32BC(uint64_t a1)
{
  if (*(a1 + 328) == 1)
  {
    TrafficDescriptor::~TrafficDescriptor((a1 + 24));
  }
}

void sub_1004C32D4(char *__p)
{
  if (__p[328] == 1)
  {
    TrafficDescriptor::~TrafficDescriptor((__p + 24));
  }

  operator delete(__p);
}

uint64_t sub_1004C331C(uint64_t a1, uint64_t a2, int *a3, void *a4)
{
  v5 = *a3;
  v6 = *(a1 + 8);
  if ((*(**a4 + 960))(*a4, 2))
  {
    return 1;
  }

  v7 = sub_1000A8A0C(*(v6 + 144), *(a1 + 16));
  v8 = *v7;
  v9 = *(v7 + 8);
  if (*v7 == v9)
  {
    return 1;
  }

  while (1)
  {
    v11 = *v8;
    v10 = v8[1];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v11 || (*(*v11 + 488))(v11) != v5)
    {
      v17 = 3;
      if (!v10)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v28[0] = 0;
    v28[1] = 0;
    v29 = 0;
    v26 = 0;
    v27[0] = 0;
    v27[1] = 0;
    v12 = (*(*v11 + 416))(v11, v28);
    sub_10009AEBC(&v26, v12);
    v13 = v26;
    if (v26 == v27)
    {
LABEL_16:
      v17 = 0;
    }

    else
    {
      while (1)
      {
        if ((*(a1 + 328) & 1) == 0)
        {
          sub_1000D1644();
        }

        if (TrafficDescriptor::equalsTraffic((v13 + 4), (a1 + 24)))
        {
          break;
        }

        v14 = v13[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v15 = v13[2];
            v16 = *v15 == v13;
            v13 = v15;
          }

          while (!v16);
        }

        v13 = v15;
        if (v15 == v27)
        {
          goto LABEL_16;
        }
      }

      v18 = *(v6 + 40);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        TrafficDescriptor::toString(v24, (v13 + 4));
        if (v25 >= 0)
        {
          v19 = v24;
        }

        else
        {
          v19 = v24[0];
        }

        if ((*(a1 + 328) & 1) == 0)
        {
          sub_1000D1644();
        }

        TrafficDescriptor::toString(__p, (a1 + 24));
        v20 = __p;
        if (v23 < 0)
        {
          v20 = __p[0];
        }

        *buf = 136315394;
        v31 = v19;
        v32 = 2080;
        v33 = v20;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I equalsTraffic: matched td=%s, dnnTd=%s", buf, 0x16u);
        if (v23 < 0)
        {
          operator delete(__p[0]);
        }

        if (v25 < 0)
        {
          operator delete(v24[0]);
        }
      }

      v17 = 1;
    }

    sub_10001BB0C(&v26, v27[0]);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28[0]);
      if (!v10)
      {
        goto LABEL_34;
      }

LABEL_33:
      sub_100004A34(v10);
      goto LABEL_34;
    }

    if (v10)
    {
      goto LABEL_33;
    }

LABEL_34:
    if (v17 != 3 && v17)
    {
      return 0;
    }

    v8 += 2;
    if (v8 == v9)
    {
      return 1;
    }
  }
}

void sub_1004C363C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, void *a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10001BB0C(&a20, a21);
  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (v28)
  {
    sub_100004A34(v28);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1004C36A4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1004C36F0(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[304] = 0;
  if (*(a2 + 304) == 1)
  {
    TrafficDescriptor::TrafficDescriptor();
    a1[304] = 1;
  }

  return a1;
}

void sub_1004C3738(_Unwind_Exception *exception_object)
{
  if (*(v1 + 304) == 1)
  {
    TrafficDescriptor::~TrafficDescriptor(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1004C37E0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (!(*(**a4 + 960))(*a4, 2))
  {
    return 1;
  }

  v5 = *a2;
  v6 = (*a2 + 48);
  v7 = asString();
  v8 = strlen(v7);
  v9 = *(v5 + 71);
  if ((v9 & 0x8000000000000000) == 0)
  {
    if (v8 != v9)
    {
      return 1;
    }

    return memcmp(v6, v7, v8) != 0;
  }

  if (v8 == *(v5 + 56))
  {
    if (v8 == -1)
    {
      sub_10013C334();
    }

    v6 = *v6;
    return memcmp(v6, v7, v8) != 0;
  }

  return 1;
}

uint64_t sub_1004C38B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1004C3978(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E50540;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_1004C39AC(uint64_t a1, uint64_t a2, int *a3, void *a4)
{
  v5 = *a3;
  v6 = *(a1 + 8);
  if ((*(**a4 + 960))(*a4, 2))
  {
    v7 = sub_1000A8A0C(*(v6 + 144), *(a1 + 16));
    v8 = *v7;
    v9 = *(v7 + 8);
    if (*v7 == v9)
    {
      return 0;
    }

    while (1)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v11 && (*(*v11 + 488))(v11) == v5)
      {
        __p[0] = 0;
        __p[1] = 0;
        v15 = 0;
        v12 = *((*(*v11 + 416))(v11, __p) + 16) != 0;
        if (SHIBYTE(v15) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v12 = 3;
      }

      if (v10)
      {
        sub_100004A34(v10);
      }

      if (v12 != 3 && v12)
      {
        break;
      }

      v8 += 2;
      if (v8 == v9)
      {
        return 0;
      }
    }
  }

  return 1;
}

void sub_1004C3B1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004C3B4C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004C3C6C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004C3CB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1004C3D50(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1004C3DE8(uint64_t a1)
{
  *a1 = off_101E50640;
  v2 = a1 + 24;
  v4 = (a1 + 56);
  sub_1001B8A7C(&v4);
  sub_1004C2008(v2);
  return a1;
}

void sub_1004C3E4C(uint64_t a1)
{
  *a1 = off_101E50640;
  v1 = a1 + 24;
  v2 = (a1 + 56);
  sub_1001B8A7C(&v2);
  sub_1004C2008(v1);
  operator delete();
}

void sub_1004C3F68(_Unwind_Exception *a1)
{
  sub_1004C2008(v1 + 24);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1004C3F8C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E50640;
  v4 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v4;
  sub_1004C3D50(a2 + 24, a1 + 24);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  return sub_1004BE904(a2 + 56, *(a1 + 56), *(a1 + 64), 0x86BCA1AF286BCA1BLL * ((*(a1 + 64) - *(a1 + 56)) >> 4));
}

uint64_t sub_1004C402C(uint64_t a1)
{
  v3 = (a1 + 56);
  sub_1001B8A7C(&v3);
  return sub_1004C2008(a1 + 24);
}

void sub_1004C406C(void **a1)
{
  v2 = a1 + 7;
  sub_1001B8A7C(&v2);
  sub_1004C2008((a1 + 3));
  operator delete(a1);
}

void sub_1004C40B4(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v4 = *(a1 + 56);
  if (*(a1 + 64) == v4)
  {
    sub_1002030E0();
  }

  v6 = *a3;
  v26 = *(a1 + 8);
  memset(v35, 0, sizeof(v35));
  v33 = 0u;
  v34 = 0u;
  memset(v32, 0, sizeof(v32));
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  TrafficDescriptor::TrafficDescriptor(&v29, v4);
  if (v6)
  {
    v7 = 304;
    v8 = 1;
    do
    {
      v9 = *(a1 + 56);
      if (v8 >= 0x86BCA1AF286BCA1BLL * ((*(a1 + 64) - v9) >> 4))
      {
        break;
      }

      if ((v33 & 1) == 0 && *(v9 + v7 + 208) == 1)
      {
        sub_1004C4560(&v32[136], (v9 + v7 + 184));
      }

      if ((BYTE8(v29) & 1) == 0)
      {
        v10 = v9 + v7;
        if (*(v9 + v7 + 8) == 1)
        {
          v11 = *(v10 + 4);
          BYTE8(v29) = *(v10 + 8);
          DWORD1(v29) = v11;
        }
      }

      if ((BYTE8(v31) & 1) == 0 && *(v9 + v7 + 40) == 1)
      {
        sub_10012BF3C(&v30, (v9 + v7 + 16));
      }

      if ((TrafficDescriptor::hasBundleInfo(&v29) & 1) == 0 && TrafficDescriptor::hasBundleInfo((v9 + v7)))
      {
        sub_10012BF3C(v32, (v9 + v7 + 48));
      }

      if ((v32[128] & 1) == 0 && *(v9 + v7 + 176) == 1)
      {
        sub_10012BF3C(&v32[104], (v9 + v7 + 152));
      }

      if ((BYTE6(v33) & 1) == 0)
      {
        v12 = v9 + v7;
        if (*(v9 + v7 + 214) == 1)
        {
          v13 = *(v12 + 212);
          BYTE6(v33) = *(v12 + 214);
          WORD2(v33) = v13;
        }
      }

      if ((BYTE12(v33) & 1) == 0 && BYTE12(v33) != *(v9 + v7 + 220) && *(v9 + v7 + 220))
      {
        DWORD2(v33) = *(v9 + v7 + 216);
        BYTE12(v33) = 1;
      }

      if ((v34 & 1) == 0)
      {
        v14 = v9 + v7;
        if (*(v9 + v7 + 224) == 1)
        {
          v15 = *(v14 + 222);
          LOBYTE(v34) = *(v14 + 224);
          HIWORD(v33) = v15;
        }
      }

      if ((BYTE8(v34) & 1) == 0)
      {
        v16 = v9 + v7;
        if (*(v9 + v7 + 232) == 1)
        {
          v17 = *(v16 + 228);
          BYTE8(v34) = *(v16 + 232);
          DWORD1(v34) = v17;
        }
      }

      if ((TrafficDescriptor::hasDnnInfo(&v29) & 1) == 0 && TrafficDescriptor::hasDnnInfo((v9 + v7)))
      {
        sub_10012BF3C(v35, (v9 + v7 + 240));
      }

      ++v8;
      v7 += 304;
      --v6;
    }

    while (v6);
  }

  v18 = *(a1 + 16);
  TrafficDescriptor::TrafficDescriptor(v27, &v29);
  v28 = 1;
  v19 = DataServiceController::chooseConnectionTypeByDnn_sync(v26, v18, a2);
  if (v28 == 1)
  {
    TrafficDescriptor::~TrafficDescriptor(v27);
  }

  v20 = *(v26 + 40);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(a2 + 23);
    v22 = *a2;
    v23 = asString();
    if (v21 >= 0)
    {
      v24 = a2;
    }

    else
    {
      v24 = v22;
    }

    *buf = 136446466;
    v37 = v24;
    v38 = 2080;
    v39 = v23;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I TrafficDescriptor match: for dnn %{public}s selected connection %s", buf, 0x16u);
  }

  v25 = *(a1 + 16);
  TrafficDescriptor::TrafficDescriptor(buf, &v29);
  sub_1004ADB00(a1 + 24, v25, v19);
  TrafficDescriptor::~TrafficDescriptor(buf);
  TrafficDescriptor::~TrafficDescriptor(&v29);
}

uint64_t sub_1004C4494(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004C44E0(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void sub_1004C4560(CSIPacketAddress *a1, unsigned __int8 *a2)
{
  if (*(a1 + 24) == a2[24])
  {
    if (*(a1 + 24))
    {

      CSIPacketAddress::operator=();
    }
  }

  else if (*(a1 + 24))
  {
    *(a1 + 24) = 0;
  }

  else
  {
    CSIPacketAddress::CSIPacketAddress(a1, a2);
    *(v3 + 24) = 1;
  }
}

uint64_t sub_1004C45B4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1004C4634(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1004C46CC(uint64_t a1)
{
  *a1 = off_101E506D0;
  v2 = a1 + 24;
  v4 = (a1 + 368);
  sub_1001B8A7C(&v4);
  TrafficDescriptor::~TrafficDescriptor((a1 + 56));
  sub_1004C45B4(v2);
  return a1;
}

void sub_1004C4738(uint64_t a1)
{
  *a1 = off_101E506D0;
  v2 = a1 + 24;
  v3 = (a1 + 368);
  sub_1001B8A7C(&v3);
  TrafficDescriptor::~TrafficDescriptor((a1 + 56));
  sub_1004C45B4(v2);
  operator delete();
}

void sub_1004C486C(_Unwind_Exception *a1)
{
  TrafficDescriptor::~TrafficDescriptor((v1 + 56));
  sub_1004C45B4(v1 + 24);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1004C48A0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E506D0;
  v4 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v4;
  sub_1004C4634(a2 + 24, a1 + 24);
  TrafficDescriptor::TrafficDescriptor((a2 + 56), (a1 + 56));
  *(a2 + 360) = *(a1 + 360);
  *(a2 + 368) = 0;
  *(a2 + 376) = 0;
  *(a2 + 384) = 0;
  return sub_1004BE904(a2 + 368, *(a1 + 368), *(a1 + 376), 0x86BCA1AF286BCA1BLL * ((*(a1 + 376) - *(a1 + 368)) >> 4));
}

void sub_1004C493C(_Unwind_Exception *a1)
{
  TrafficDescriptor::~TrafficDescriptor((v1 + 56));
  sub_1004C45B4(v1 + 24);
  _Unwind_Resume(a1);
}

uint64_t sub_1004C4960(uint64_t a1)
{
  v3 = (a1 + 368);
  sub_1001B8A7C(&v3);
  TrafficDescriptor::~TrafficDescriptor((a1 + 56));
  return sub_1004C45B4(a1 + 24);
}

void sub_1004C49A8(void **a1)
{
  v2 = a1 + 46;
  sub_1001B8A7C(&v2);
  TrafficDescriptor::~TrafficDescriptor((a1 + 7));
  sub_1004C45B4((a1 + 3));
  operator delete(a1);
}

void sub_1004C49F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 360);
    TrafficDescriptor::toString(__p, (a1 + 56));
    v7 = v17 >= 0 ? __p : __p[0];
    v8 = *(a2 + 23) >= 0 ? a2 : *a2;
    *buf = 67109634;
    v20 = v6;
    v21 = 2080;
    v22 = v7;
    v23 = 2082;
    v24 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I TrafficDescriptor lookup result[%u] for %s: dnn %{public}s", buf, 0x1Cu);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v9 = *(a2 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 8);
  }

  if (v9 || (v10 = *(a1 + 368), v11 = *(a1 + 360) + 1, v12 = *(a1 + 376), v13 = 0x86BCA1AF286BCA1BLL * ((v12 - v10) >> 4), v11 >= v13) || (v14 = *(a1 + 16), __p[1] = 0, v17 = 0, __p[0] = 0, sub_1004BE904(__p, v10, v12, v13), sub_1004C4634(buf, a1 + 24), v15 = DataServiceController::selectDnnForTd_sync(v4, v14, v11, __p, buf), sub_1004C45B4(buf), v18 = __p, sub_1001B8A7C(&v18), (v15 & 1) == 0))
  {
    sub_1004C4CB8(a1 + 24, a2, *(a1 + 360));
  }
}

void sub_1004C4BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, char a13)
{
  sub_1004C45B4(&a13);
  a12 = &a9;
  sub_1001B8A7C(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1004C4BEC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004C4C38(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t sub_1004C4CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

uint64_t sub_1004C4D0C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1004C4D8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1004C4E24(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1004C4EA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t *sub_1004C4F3C(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *sub_1004C5010(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_1004C50EC(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

__n128 sub_1004C5230(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E50788;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void sub_1004C5264(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = subscriber::asString();
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    v6 = 136315394;
    v7 = v4;
    v8 = 2082;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I DATA::     [dump %s] Slice configured: %{public}s", &v6, 0x16u);
  }
}

uint64_t sub_1004C5334(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1004C5380(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10010935C(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1004C53D8(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_1004C5424(*(a1 + 8), (a1 + 16));
  }

  sub_10006DCAC(a1 + 16, *(a1 + 24));
  return a1;
}

uint64_t sub_1004C5424(uint64_t a1, void *a2)
{
  if (*(a1 + 48) == a2[2])
  {
    v4 = *(a1 + 32);
    v5 = a1 + 40;
    if (v4 == (a1 + 40))
    {
      return 0;
    }

    v6 = *a2;
    while (*(v4 + 7) == *(v6 + 7) && rest::operator==())
    {
      v7 = v4[1];
      v8 = v4;
      if (v7)
      {
        do
        {
          v4 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v4 = v8[2];
          v9 = *v4 == v8;
          v8 = v4;
        }

        while (!v9);
      }

      v10 = v6[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v6[2];
          v9 = *v11 == v6;
          v6 = v11;
        }

        while (!v9);
      }

      v6 = v11;
      if (v4 == v5)
      {
        return 0;
      }
    }
  }

  sub_1004C551C(a1, a2);
  return 1;
}

uint64_t sub_1004C551C(uint64_t a1, void *a2)
{
  sub_10004645C(a1 + 32, a2);
  result = *(a1 + 24);
  if (result)
  {
    v4 = *(*result + 48);

    return v4();
  }

  return result;
}

uint64_t sub_1004C558C(void *a1, uint64_t *a2, int *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_1000504CC(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t sub_1004C5638(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_1004C5424(*(a1 + 8), (a1 + 16));
  }

  sub_10006DCAC(a1 + 16, *(a1 + 24));
  return a1;
}

uint64_t sub_1004C56F4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E50808;
  a2[1] = v2;
  return result;
}

void sub_1004C5720(uint64_t a1, uint64_t *a2)
{
  v3 = **(a1 + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136446210;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I     (update) Slice configured: %{public}s", &v5, 0xCu);
  }
}

uint64_t sub_1004C57D0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1004C5890(void *a1, const char **a2, const char *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E50888;
  ctu::OsLogLogger::OsLogLogger((a1 + 3), *a2, a3);
  return a1;
}

void sub_1004C5910(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E50888;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1004C5970(void *a1)
{
  *a1 = off_101E508D8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1004C59BC(void *a1)
{
  *a1 = off_101E508D8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1004C5A9C(uint64_t result, uint64_t a2)
{
  *a2 = off_101E508D8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1004C5ADC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004C5AEC(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1004C5B2C(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[2])
      {
        sub_10000501C(__p, "Managed DB update");
        DataServiceController::updateSlicingDefinitionsWithAppDB(v3, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1004C5BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_1004C5BDC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1004C5C48(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E50958;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1004C5CAC(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *sub_1004C5D94(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1004C5E68(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1004C016C(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

__n128 sub_1004C5F2C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E509A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void sub_1004C5F60(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = subscriber::asString();
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    v6 = 136315394;
    v7 = v4;
    v8 = 2082;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I     [insert app %s] Slice configured: %{public}s", &v6, 0x16u);
  }
}

uint64_t sub_1004C6030(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1004C607C(void **a1)
{
  v1 = *a1;
  v12 = a1;
  v13 = v1;
  v2 = *(*v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1017726B4(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  sub_10000501C(__p, "");
  v10 = v1[4];
  if (!v10)
  {
    sub_100022DB4();
  }

  (*(*v10 + 48))(v10, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1001C2304(&v13);
  return sub_1000049E0(&v12);
}

void sub_1004C6134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1001C2304(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1004C6168(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1004C6200(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t *sub_1004C6280(void **a1)
{
  v1 = *a1;
  v18 = a1;
  v19 = v1;
  v2 = *v1;
  v3 = (*(**v1 + 1120))(*v1);
  if ((*(*v2 + 2272))(v2, v3, 0))
  {
    memset(v35, 0, 64);
    memset(v34, 0, sizeof(v34));
    memset(v33, 0, sizeof(v33));
    v31 = 0u;
    v32 = 0u;
    buf = 0u;
    TrafficDescriptor::TrafficDescriptor(&buf);
    memset(&v20, 0, sizeof(v20));
    sub_10000501C(__p, "DNN:");
    v4 = v1 + 1;
    sub_1004C6AEC((v1 + 1), &__p[0].__r_.__value_.__l.__data_, &v20);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v20.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      sub_1001696A4(v35, &v20);
    }

    else
    {
      memset(__p, 0, 24);
      sub_10000501C(v28, "dnn:");
      sub_1004C6AEC((v1 + 1), v28, __p);
      if ((v28[23] & 0x80000000) != 0)
      {
        operator delete(*v28);
      }

      v8 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v8 = __p[0].__r_.__value_.__l.__size_;
      }

      if (v8)
      {
        sub_1001696A4(v35, __p);
      }

      else
      {
        memset(v28, 0, 24);
        sub_10000501C(&v21, "AppCategory:");
        sub_1004C6AEC((v1 + 1), &v21.__r_.__value_.__l.__data_, v28);
        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }

        v9 = v28[23];
        if (v28[23] < 0)
        {
          v9 = *&v28[8];
        }

        if (v9)
        {
          sub_1001696A4(v33, v28);
        }

        else
        {
          memset(&v21, 0, sizeof(v21));
          sub_10000501C(v24, "appcategory:");
          sub_1004C6AEC((v1 + 1), v24, &v21);
          if (v25 < 0)
          {
            operator delete(v24[0]);
          }

          v10 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
          v11 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
          if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v10 = v21.__r_.__value_.__l.__size_;
          }

          if (v10)
          {
            sub_1001696A4(v33, &v21);
            v11 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
          }

          if (v11 < 0)
          {
            operator delete(v21.__r_.__value_.__l.__data_);
          }
        }

        if ((v28[23] & 0x80000000) != 0)
        {
          operator delete(*v28);
        }
      }

      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    if (!TrafficDescriptor::empty(&buf))
    {
      sub_100169660(v34, "vpn");
      v13 = v2[5];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v1 + 1;
        if (*(v1 + 31) < 0)
        {
          v14 = *v4;
        }

        TrafficDescriptor::toString(__p, &buf);
        if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = __p;
        }

        else
        {
          v15 = __p[0].__r_.__value_.__r.__words[0];
        }

        *v28 = 136315394;
        *&v28[4] = v14;
        *&v28[12] = 2082;
        *&v28[14] = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Slice requested for %s - trying to forward traffic descriptor %{public}s", v28, 0x16u);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      memset(&v28[8], 0, 48);
      v29 = 0;
      *v28 = v2;
      if (*(v1 + 31) < 0)
      {
        sub_100005F2C(&v28[8], v1[1], v1[2]);
      }

      else
      {
        v16 = *v4;
        *&v28[24] = v1[3];
        *&v28[8] = v16;
      }

      sub_1004C6168(&v28[32], (v1 + 4));
      TrafficDescriptor::TrafficDescriptor(__p, &buf);
      v21.__r_.__value_.__r.__words[0] = *v28;
      if ((v28[31] & 0x80000000) != 0)
      {
        sub_100005F2C(&v21.__r_.__value_.__s.__data_[8], *&v28[8], *&v28[16]);
      }

      else
      {
        *&v21.__r_.__value_.__r.__words[1] = *&v28[8];
        v22 = *&v28[24];
      }

      sub_1004C6168(&v23, &v28[32]);
      v26 = 0;
      operator new();
    }

    v12 = v2[5];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v1 + 31) < 0)
      {
        v4 = *v4;
      }

      LODWORD(__p[0].__r_.__value_.__l.__data_) = 136315138;
      *(__p[0].__r_.__value_.__r.__words + 4) = v4;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#N Slice requested for %s - but we found no slice info, failing the request", __p, 0xCu);
    }

    memset(__p, 0, 24);
    sub_1004C6A8C((v1 + 4), 0, 0, __p, 22);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    TrafficDescriptor::~TrafficDescriptor(&buf);
  }

  else
  {
    v6 = v2[5];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v1 + 1;
      if (*(v1 + 31) < 0)
      {
        v7 = *v7;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#N Slice requested for %s - but we are not able to use slice right now, failing the request", &buf, 0xCu);
    }

    buf = 0uLL;
    *&v31 = 0;
    sub_1004C6A8C((v1 + 4), 0, 0, &buf, 61);
    if (SBYTE7(v31) < 0)
    {
      operator delete(buf);
    }
  }

  sub_1004C6A2C(&v19);
  return sub_1000049E0(&v18);
}