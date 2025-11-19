void sub_1004A89C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, void *a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  std::ios::~ios();
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_10006DCAC(&a26, a27);
  _Unwind_Resume(a1);
}

void *DataServiceController::getGenreForBundleID_sync@<X0>(uint64_t a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  result = sub_100007A6C(a1 + 4984, a2);
  if ((a1 + 4992) == result || *(result + 80) != 1)
  {
    a3[2] = 0;
    a3[1] = 0;
    *a3 = a3 + 1;
  }

  else
  {

    return sub_1002B84C8(a3, (result + 7));
  }

  return result;
}

void *DataServiceController::getBundleIdByUUID_sync@<X0>(void *result@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result[623];
  v5 = result + 624;
  if (v4 == result + 624)
  {
LABEL_10:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  else
  {
    while (1)
    {
      if (*(v4 + 112) == 1)
      {
        result = sub_100007A6C((v4 + 11), a2);
        if (v4 + 12 != result)
        {
          break;
        }
      }

      v7 = v4[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v4[2];
          v9 = *v8 == v4;
          v4 = v8;
        }

        while (!v9);
      }

      v4 = v8;
      if (v8 == v5)
      {
        goto LABEL_10;
      }
    }

    if (*(v4 + 55) < 0)
    {
      v11 = v4[4];
      v12 = v4[5];

      return sub_100005F2C(a3, v11, v12);
    }

    else
    {
      v10 = *(v4 + 2);
      *(a3 + 16) = v4[6];
      *a3 = v10;
    }
  }

  return result;
}

void DataServiceController::convertBundleIdToAccountIds(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if ((atomic_load_explicit(&qword_101FBA4A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA4A8))
  {
    sub_1001C7FB0(&unk_101FBA468, "^(\\*|[1-8])(\\.([0-9]+))(\\.(xr|(.*)))?$", 0);
  }

  v60 = 0u;
  memset(v61, 0, sizeof(v61));
  v59 = 0u;
  v10 = *(a2 + 23);
  if ((v10 & 0x80u) == 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a2 + 8);
  }

  v12 = sub_100200C08(v11, v11 + v10, &v59, &unk_101FBA468, 0);
  v13 = v59;
  if (!v12 || 0xAAAAAAAAAAAAAAABLL * ((*(&v59 + 1) - v59) >> 3) < 4)
  {
    goto LABEL_90;
  }

  __dst = 0;
  v57 = 0;
  v58 = 0;
  if (*(v59 + 40) == 1)
  {
    sub_1001CD6B4(&__dst, *(v59 + 24), *(v59 + 32), *(v59 + 32) - *(v59 + 24));
    v13 = v59;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((*(&v59 + 1) - v59) >> 3) > 3;
  }

  else
  {
    v14 = 1;
  }

  v15 = &v61[8];
  __p = 0;
  v54 = 0;
  v55 = 0;
  if (v14)
  {
    v15 = v13 + 88;
  }

  if (*v15 == 1)
  {
    v16 = !v14;
    if (v14)
    {
      v17 = (v13 + 72);
    }

    else
    {
      v17 = &v60 + 1;
    }

    v18 = *v17;
    v19 = (v13 + 80);
    if (v16)
    {
      v19 = v61;
    }

    sub_1001CD6B4(&__p, v18, *v19, *v19 - v18);
  }

  if (a4)
  {
    v20 = v55 >= 0 ? &__p : __p;
    *buf = strtoull(v20, 0, 10);
    sub_1004C12FC(a1 + 5032, buf);
    if (!DataServiceController::realGoodGenre(a4, *buf))
    {
      v23 = 0;
      v24 = 1;
      goto LABEL_85;
    }
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(&v59 + 1) - v59) >> 3) >= 6)
  {
    *buf = 0;
    v64 = 0;
    *v65 = 0;
    if (*(v59 + 136) == 1)
    {
      sub_1001CD6B4(buf, *(v59 + 120), *(v59 + 128), *(v59 + 128) - *(v59 + 120));
      v21 = v65[7];
      if ((v65[7] & 0x80000000) != 0)
      {
        v22 = *buf;
        if (v64 != 2)
        {
LABEL_38:
          operator delete(v22);
          goto LABEL_39;
        }
      }

      else
      {
        if (v65[7] != 2)
        {
          goto LABEL_39;
        }

        v22 = buf;
      }

      if (*v22 == 29304)
      {
        *a3 = 1;
      }

      if (v21 < 0)
      {
        v22 = *buf;
        goto LABEL_38;
      }
    }
  }

LABEL_39:
  if ((SHIBYTE(v58) & 0x80000000) == 0)
  {
    if (SHIBYTE(v58) == 1)
    {
      p_dst = &__dst;
      goto LABEL_44;
    }

LABEL_62:
    TrafficClassFromString = DataServiceController::getTrafficClassFromString(&__dst);
    if ((TrafficClassFromString & 0x100000000) == 0)
    {
      operator new();
    }

    v38 = TrafficClassFromString;
    sub_10000501C(&v50, "com.apple.networkrelay.tethering.");
    if (v58 >= 0)
    {
      v39 = &__dst;
    }

    else
    {
      v39 = __dst;
    }

    if (v58 >= 0)
    {
      v40 = HIBYTE(v58);
    }

    else
    {
      v40 = v57;
    }

    v41 = std::string::append(&v50, v39, v40);
    v42 = *&v41->__r_.__value_.__l.__data_;
    v51.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
    *&v51.__r_.__value_.__l.__data_ = v42;
    v41->__r_.__value_.__l.__size_ = 0;
    v41->__r_.__value_.__r.__words[2] = 0;
    v41->__r_.__value_.__r.__words[0] = 0;
    v43 = std::string::append(&v51, ".", 1uLL);
    v44 = *&v43->__r_.__value_.__l.__data_;
    v52.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
    *&v52.__r_.__value_.__l.__data_ = v44;
    v43->__r_.__value_.__l.__size_ = 0;
    v43->__r_.__value_.__r.__words[2] = 0;
    v43->__r_.__value_.__r.__words[0] = 0;
    if (v55 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v55 >= 0)
    {
      v46 = HIBYTE(v55);
    }

    else
    {
      v46 = v54;
    }

    v47 = std::string::append(&v52, p_p, v46);
    v48 = v47->__r_.__value_.__r.__words[0];
    v62[0] = v47->__r_.__value_.__l.__size_;
    *(v62 + 7) = *(&v47->__r_.__value_.__r.__words[1] + 7);
    v49 = HIBYTE(v47->__r_.__value_.__r.__words[2]);
    v47->__r_.__value_.__l.__size_ = 0;
    v47->__r_.__value_.__r.__words[2] = 0;
    v47->__r_.__value_.__r.__words[0] = 0;
    *buf = v38;
    *&v65[7] = *(v62 + 7);
    v64 = v48;
    *v65 = v62[0];
    v66 = v49;
    sub_1004A93F4(a5, buf);
    if (v66 < 0)
    {
      operator delete(v64);
    }

    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    goto LABEL_84;
  }

  if (v57 != 1)
  {
    goto LABEL_62;
  }

  p_dst = __dst;
LABEL_44:
  if (*p_dst != 42)
  {
    goto LABEL_62;
  }

  v26 = dword_1018086D0;
  for (i = 1; i != 9; ++i)
  {
    v29 = *v26++;
    v28 = v29;
    sub_10000501C(&v50, "com.apple.networkrelay.tethering.");
    std::string::push_back(&v50, i | 0x30);
    v51 = v50;
    memset(&v50, 0, sizeof(v50));
    v30 = std::string::append(&v51, ".", 1uLL);
    v31 = *&v30->__r_.__value_.__l.__data_;
    v52.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
    *&v52.__r_.__value_.__l.__data_ = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    if (v55 >= 0)
    {
      v32 = &__p;
    }

    else
    {
      v32 = __p;
    }

    if (v55 >= 0)
    {
      v33 = HIBYTE(v55);
    }

    else
    {
      v33 = v54;
    }

    v34 = std::string::append(&v52, v32, v33);
    v35 = v34->__r_.__value_.__r.__words[0];
    v62[0] = v34->__r_.__value_.__l.__size_;
    *(v62 + 7) = *(&v34->__r_.__value_.__r.__words[1] + 7);
    v36 = HIBYTE(v34->__r_.__value_.__r.__words[2]);
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    *buf = v28;
    v64 = v35;
    *&v65[7] = *(v62 + 7);
    *v65 = v62[0];
    v66 = v36;
    sub_1004A93F4(a5, buf);
    if (v66 < 0)
    {
      operator delete(v64);
    }

    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }
  }

LABEL_84:
  v24 = 0;
  v23 = 1;
LABEL_85:
  if (SHIBYTE(v55) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(__dst);
  }

  v13 = v59;
  if (v23)
  {
LABEL_90:
    if (v13)
    {
      *(&v59 + 1) = v13;
      operator delete(v13);
    }

    return;
  }

  if (v59)
  {
    *(&v59 + 1) = v59;
    operator delete(v59);
  }

  if ((v24 & 1) == 0)
  {
    *&v59 = a5;
    sub_10001E200(&v59);
  }
}

void sub_1004A9288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43)
{
  __cxa_guard_abort(&qword_101FBA4A8);
  sub_10001E200(&a42);
  _Unwind_Resume(a1);
}

BOOL DataServiceController::realGoodGenre(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 336);
  if (!v2)
  {
    return 1;
  }

  v3 = a1 + 336;
  do
  {
    v4 = *(v2 + 32);
    v5 = v4 >= a2;
    v6 = v4 < a2;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  return v3 == a1 + 336 || *(v3 + 32) > a2 || (*(v3 + 40) & 1) != 0 || *(v3 + 44) == 0;
}

uint64_t sub_1004A93F4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      sub_1000CE3D4();
    }

    v10 = v5 - *result;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      sub_1004BE98C(result, v11);
    }

    v12 = 32 * v8;
    *v12 = *a2;
    v13 = *(a2 + 8);
    *(v12 + 24) = *(a2 + 24);
    *(v12 + 8) = v13;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v7 = 32 * v8 + 32;
    v14 = *(result + 8) - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_1004BE9D4(v18);
  }

  else
  {
    *v4 = *a2;
    v6 = *(a2 + 8);
    *(v4 + 24) = *(a2 + 24);
    *(v4 + 8) = v6;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v7 = v4 + 32;
  }

  v3[1] = v7;
  return result;
}

uint64_t DataServiceController::matchAndConvertCategorySlice(DataServiceController *a1, int a2, TrafficDescriptor **a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(**(a1 + 6) + 16))(*(a1 + 6));
  v48 = a2;
  LODWORD(__p[0]) = a2;
  v10 = sub_100007DEC(a1 + 4960, __p);
  v11 = *a3;
  v46 = a3[1];
  if (*a3 != v46)
  {
    v45 = 0;
    v47 = *v10;
    while ((TrafficDescriptor::hasBundleInfo(v11) & 1) == 0 && (DataServiceController::isInternalSliceApp_sync(a1, v11) & 1) == 0)
    {
      v42 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        TrafficDescriptor::toString(__p, v11);
        v43 = (SBYTE7(v51) & 0x80u) == 0 ? __p : __p[0];
        *v76 = 136315394;
        *&v76[4] = a5;
        v77 = 2082;
        v78 = v43;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#N matchAndConvert (%s):(0.1-no bundle id) %{public}s", v76, 0x16u);
        if (SBYTE7(v51) < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_1004A6280(a4, v11);
LABEL_87:
      v11 = (v11 + 304);
      if (v11 == v46)
      {
        return v45 & 1;
      }
    }

    v73 = 0;
    v74 = 0;
    v75 = 0;
    v72 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    DataServiceController::convertAppCategoryToApps(v11, a1, &v72, &v69);
    v13 = v69;
    v12 = v70;
    if (v69 == v70)
    {
      if ((v72 & 1) == 0)
      {
        sub_1004A6280(&v73, v11);
      }
    }

    else
    {
      do
      {
        sub_1004A6280(&v73, v13);
        v13 = (v13 + 304);
      }

      while (v13 != v12);
      v45 = 1;
    }

    v15 = v73;
    v14 = v74;
    while (1)
    {
      if (v15 == v14)
      {
        __p[0] = &v69;
        sub_1001B8A7C(__p);
        __p[0] = &v73;
        sub_1001B8A7C(__p);
        goto LABEL_87;
      }

      if (DataServiceController::isInternalSliceApp_sync(a1, v15))
      {
        v16 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          TrafficDescriptor::toString(__p, v15);
          if ((SBYTE7(v51) & 0x80u) == 0)
          {
            v17 = __p;
          }

          else
          {
            v17 = __p[0];
          }

          *v76 = 136315394;
          *&v76[4] = a5;
          v77 = 2082;
          v78 = v17;
          v18 = v16;
          v19 = "#N matchAndConvert (%s):(0.2-internal) %{public}s";
          goto LABEL_41;
        }

        goto LABEL_43;
      }

      if (!TrafficDescriptor::hasBundleInfo(v15))
      {
        v29 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          TrafficDescriptor::toString(__p, v15);
          if ((SBYTE7(v51) & 0x80u) == 0)
          {
            v30 = __p;
          }

          else
          {
            v30 = __p[0];
          }

          *v76 = 136315394;
          *&v76[4] = a5;
          v77 = 2082;
          v78 = v30;
          v18 = v29;
          v19 = "#N matchAndConvert (%s):(5-no bundle id) %{public}s";
LABEL_41:
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v19, v76, 0x16u);
          if (SBYTE7(v51) < 0)
          {
            operator delete(__p[0]);
          }
        }

LABEL_43:
        sub_1004A6280(a4, v15);
        goto LABEL_72;
      }

      if ((*(v15 + 72) & 1) == 0)
      {
        goto LABEL_91;
      }

      AppUuids = DataServiceController::getAppUuids(a1, (v15 + 48));
      if (!AppUuids[2])
      {
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
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
        *__p = 0u;
        TrafficDescriptor::TrafficDescriptor(__p, v15);
        v31 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          TrafficDescriptor::toString(v76, __p);
          v32 = v76;
          if (v79 < 0)
          {
            v32 = *v76;
          }

          *buf = 136315394;
          v82 = a5;
          v83 = 2082;
          v84 = v32;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#N matchAndConvert (%s):(4-no uuids) %{public}s", buf, 0x16u);
          if (v79 < 0)
          {
            operator delete(*v76);
          }
        }

        v76[0] = 0;
        v80 = 0;
        sub_10016A270(&v53, v76);
        if (v80 == 1 && v79 < 0)
        {
          operator delete(*v76);
        }

        v76[0] = 0;
        v80 = 0;
        sub_10016A270(&v51, v76);
        if (v80 == 1 && v79 < 0)
        {
          operator delete(*v76);
        }

        if ((TrafficDescriptor::empty(__p) & 1) == 0)
        {
          *v76 = v48;
          *(*sub_100007DEC(a1 + 4960, v76) + 128) = 1;
          sub_1004A6280(a4, __p);
        }

        goto LABEL_71;
      }

      if (*(v47 + 15) == 1)
      {
        break;
      }

      if (*(v15 + 72) != 1)
      {
LABEL_91:
        sub_1000D1644();
      }

      if (DataServiceController::isManagedApp(a1, v48, (v15 + 48)))
      {
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
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
        *__p = 0u;
        TrafficDescriptor::TrafficDescriptor(__p, v15);
        v33 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          TrafficDescriptor::toString(v76, __p);
          v34 = v76;
          if (v79 < 0)
          {
            v34 = *v76;
          }

          *buf = 136315394;
          v82 = a5;
          v83 = 2082;
          v84 = v34;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#N matchAndConvert (%s):(2-managed) %{public}s", buf, 0x16u);
          if (v79 < 0)
          {
            operator delete(*v76);
          }
        }

        v37 = *AppUuids;
        v36 = AppUuids + 1;
        v35 = v37;
        if (v37 != v36)
        {
          do
          {
            sub_1001696A4(&v51, (v35 + 4));
            sub_1004A6280(a4, __p);
            v38 = v35[1];
            if (v38)
            {
              do
              {
                v39 = v38;
                v38 = *v38;
              }

              while (v38);
            }

            else
            {
              do
              {
                v39 = v35[2];
                v28 = *v39 == v35;
                v35 = v39;
              }

              while (!v28);
            }

            v35 = v39;
          }

          while (v39 != v36);
        }

        goto LABEL_71;
      }

      v40 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        TrafficDescriptor::toString(__p, v15);
        v41 = (SBYTE7(v51) & 0x80u) == 0 ? __p : __p[0];
        *v76 = 136315394;
        *&v76[4] = a5;
        v77 = 2082;
        v78 = v41;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#N matchAndConvert (%s):(3-skip consumer) %{public}s", v76, 0x16u);
        if (SBYTE7(v51) < 0)
        {
          operator delete(__p[0]);
        }
      }

LABEL_72:
      v15 += 304;
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
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
    *__p = 0u;
    TrafficDescriptor::TrafficDescriptor(__p, v15);
    v21 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      TrafficDescriptor::toString(v76, __p);
      v22 = v76;
      if (v79 < 0)
      {
        v22 = *v76;
      }

      *buf = 136315394;
      v82 = a5;
      v83 = 2082;
      v84 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#N matchAndConvert (%s):(1-generic) %{public}s", buf, 0x16u);
      if (v79 < 0)
      {
        operator delete(*v76);
      }
    }

    v25 = *AppUuids;
    v24 = AppUuids + 1;
    v23 = v25;
    if (v25 != v24)
    {
      do
      {
        sub_1001696A4(&v51, (v23 + 4));
        sub_1004A6280(a4, __p);
        v26 = v23[1];
        if (v26)
        {
          do
          {
            v27 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v27 = v23[2];
            v28 = *v27 == v23;
            v23 = v27;
          }

          while (!v28);
        }

        v23 = v27;
      }

      while (v27 != v24);
    }

    if ((BYTE8(v54) & 1) == 0)
    {
      sub_1000D1644();
    }

    DataServiceController::addAllowedSliceApp(a1, v48, &v53, 0);
LABEL_71:
    TrafficDescriptor::~TrafficDescriptor(__p);
    goto LABEL_72;
  }

  v45 = 0;
  return v45 & 1;
}

void sub_1004A9D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  a17 = (v17 - 216);
  sub_1001B8A7C(&a17);
  a17 = (v17 - 184);
  sub_1001B8A7C(&a17);
  _Unwind_Resume(a1);
}

uint64_t DataServiceController::trafficClassAllowed_sync(DataServiceController *this, void **a2)
{
  if (DataServiceController::isInternalSliceApp_sync(this, a2))
  {
    v4 = *(this + 5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      TrafficDescriptor::toString(__p, a2);
      if (v24 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      *buf = 136446210;
      v26 = v5;
      v6 = "#I trafficClassAllowed: true: %{public}s (1)";
LABEL_34:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }

      return 1;
    }

    return 1;
  }

  if (!TrafficDescriptor::hasBundleInfo(a2) || *(a2 + 232) != 1 || (v7 = (*(*this + 1120))(this), !DataServiceController::SlicesDataContainer::useEntitlementsGenres(this + 4960, v7)))
  {
    v4 = *(this + 5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      TrafficDescriptor::toString(__p, a2);
      if (v24 >= 0)
      {
        v21 = __p;
      }

      else
      {
        v21 = __p[0];
      }

      *buf = 136446210;
      v26 = v21;
      v6 = "#I trafficClassAllowed: true: %{public}s (4)";
      goto LABEL_34;
    }

    return 1;
  }

  if ((a2[9] & 1) == 0)
  {
    goto LABEL_43;
  }

  v8 = sub_100007A6C(this + 4984, a2 + 6);
  if ((this + 4992) == v8 || *(v8 + 160) != 1)
  {
    goto LABEL_22;
  }

  if ((a2[29] & 1) == 0)
  {
LABEL_43:
    sub_1000D1644();
  }

  v11 = *(v8 + 144);
  v9 = v8 + 144;
  v10 = v11;
  if (v11)
  {
    v12 = *(a2 + 57);
    v13 = v9;
    do
    {
      v14 = *(v10 + 28);
      v15 = v14 >= v12;
      v16 = v14 < v12;
      if (v15)
      {
        v13 = v10;
      }

      v10 = *(v10 + 8 * v16);
    }

    while (v10);
    if (v13 != v9 && v12 >= *(v13 + 28))
    {
      v4 = *(this + 5);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        TrafficDescriptor::toString(__p, a2);
        if (v24 >= 0)
        {
          v22 = __p;
        }

        else
        {
          v22 = __p[0];
        }

        *buf = 136446210;
        v26 = v22;
        v6 = "#I trafficClassAllowed: true: %{public}s (2)";
        goto LABEL_34;
      }

      return 1;
    }
  }

LABEL_22:
  v17 = *(this + 5);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v18)
  {
    TrafficDescriptor::toString(__p, a2);
    if (v24 >= 0)
    {
      v20 = __p;
    }

    else
    {
      v20 = __p[0];
    }

    *buf = 136446210;
    v26 = v20;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I trafficClassAllowed: false: %{public}s (3)", buf, 0xCu);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return result;
}

BOOL sub_1004AA0B4(uint64_t a1, void **this)
{
  if (TrafficDescriptor::hasDnnInfo(this))
  {
    return 1;
  }

  if (*(this + 104) == 1)
  {
    return a1 + 168 != sub_100007A6C(a1 + 160, this + 10);
  }

  return 0;
}

uint64_t *DataServiceController::adjustProtocol(uint64_t *this, TrafficDescriptor *a2)
{
  if (*(a2 + 72) == 1)
  {
    v3 = this;
    v4 = a2 + 48;
    this = (*(*this + 2432))(this, a2 + 48);
    if (this)
    {
      if ((*(a2 + 224) & 1) == 0)
      {
        v7 = (*(*v3 + 1120))(v3);
        this = sub_100007DEC((v3 + 620), &v7);
        if (*(*this + 17) == 1)
        {
          if ((*(a2 + 72) & 1) == 0)
          {
            sub_1000D1644();
          }

          v5 = *(a2 + 71);
          if (v5 < 0)
          {
            if (*(a2 + 7) != 9)
            {
LABEL_15:
              *(a2 + 73) = 257;
              return this;
            }

            v4 = *(a2 + 6);
          }

          else if (v5 != 9)
          {
            goto LABEL_15;
          }

          if (*v4 != 0x656269762E6D6F63 || v4[8] != 114)
          {
            goto LABEL_15;
          }
        }
      }
    }
  }

  return this;
}

void DataServiceController::addAllowedSliceApp(uint64_t a1, int a2, void **a3, int a4)
{
  __p[0] = 0;
  __p[1] = 0;
  v26 = 0;
  v23[0] = 0;
  v23[1] = 0;
  v24 = 0;
  DataServiceController::makeDataSimSlotRange(a1, a2, &v21);
  v9 = *(&v21 + 1);
  v8 = v21;
  if (v21 == *(&v21 + 1))
  {
LABEL_6:
    if (v8)
    {
      *(&v21 + 1) = v8;
      operator delete(v8);
    }

    if (!a4)
    {
      goto LABEL_27;
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 104));
    v11 = ServiceMap;
    if (v12 < 0)
    {
      v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
      v14 = 5381;
      do
      {
        v12 = v14;
        v15 = *v13++;
        v14 = (33 * v14) ^ v15;
      }

      while (v15);
    }

    std::mutex::lock(ServiceMap);
    *&v21 = v12;
    v16 = sub_100009510(&v11[1].__m_.__sig, &v21);
    if (v16)
    {
      v18 = v16[3];
      v17 = v16[4];
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v11);
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v17);
        v19 = 0;
        if (!v18)
        {
LABEL_25:
          if ((v19 & 1) == 0)
          {
            sub_100004A34(v17);
          }

LABEL_27:
          DataServiceController::addAllowedSliceApp(a1, a2, a3, __p, v23, a4);
          if ((SHIBYTE(v24) & 0x80000000) == 0)
          {
            goto LABEL_30;
          }

          v20 = v23[0];
          goto LABEL_29;
        }

LABEL_20:
        (*(*v18 + 120))(&v21, v18, a3);
        if (SHIBYTE(v26) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v21;
        v26 = v22;
        (*(*v18 + 128))(&v21, v18, a3);
        if (SHIBYTE(v24) < 0)
        {
          operator delete(v23[0]);
        }

        *v23 = v21;
        v24 = v22;
        goto LABEL_25;
      }
    }

    else
    {
      v18 = 0;
    }

    std::mutex::unlock(v11);
    v17 = 0;
    v19 = 1;
    if (!v18)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  while ((a4 & 1) != 0 || (DataServiceController::isManagedApp(a1, *v8, a3) & 1) == 0)
  {
    if (++v8 == v9)
    {
      v8 = v21;
      goto LABEL_6;
    }
  }

  v20 = v21;
  if (v21)
  {
    *(&v21 + 1) = v21;
LABEL_29:
    operator delete(v20);
  }

LABEL_30:
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1004AA498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if ((v26 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::forwardTrafficToAgent_sync(DataServiceController *this, const TrafficDescriptor *a2)
{
  if ((TrafficDescriptor::empty(a2) & 1) == 0)
  {
    v4 = *(this + 5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      TrafficDescriptor::toString(v7, a2);
      if (v8 >= 0)
      {
        v5 = v7;
      }

      else
      {
        v5 = v7[0];
      }

      *buf = 136446210;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I TrafficDescriptor forward: %{public}s", buf, 0xCu);
      if (v8 < 0)
      {
        operator delete(v7[0]);
      }
    }

    TrafficDescriptor::TrafficDescriptor(v6, a2);
    v9[0] = off_101E50210;
    v9[1] = this;
    v9[3] = v9;
    DataServiceController::selectConnectionTypeForTd_sync();
    sub_1004C2008(v9);
    TrafficDescriptor::~TrafficDescriptor(v6);
  }
}

void sub_1004AA640(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1004C2008(v2 - 112);
  TrafficDescriptor::~TrafficDescriptor(va);
  _Unwind_Resume(a1);
}

void DataServiceController::selectConnectionTypeForTd_sync()
{
  v0 = __chkstk_darwin();
  v119 = v1;
  v118 = v2;
  v4 = v3;
  v5 = v0;
  if ((DataServiceController::trafficClassAllowed_sync(v0, v3) & 1) == 0)
  {
    *(v4 + 228) = 0;
    *(v4 + 232) = 0;
  }

  if (TrafficDescriptor::empty(v4))
  {
    v6 = (*(*v5 + 1120))(v5);
    sub_10000501C(__p, "");
    v133[304] = 0;
    v133[608] = 0;
    v7 = DataServiceController::chooseConnectionTypeByDnn_sync(v5, v6, __p);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v8 = (*(*v5 + 1120))(v5);
    TrafficDescriptor::TrafficDescriptor(v133, v4);
    v9 = v133;
    sub_1004ADB00(v118, v8, v7);
LABEL_231:
    TrafficDescriptor::~TrafficDescriptor(v9);
    return;
  }

  DataServiceController::makeDataSimSlotRange(v5, 3, &v157);
  v116 = *(&v157 + 1);
  v10 = v157;
  if (v157 == *(&v157 + 1))
  {
LABEL_190:
    v76 = 1;
    goto LABEL_219;
  }

  __s = kWildCardDnn;
  while (1)
  {
    v122 = *v10;
    v11 = (*(**(v5 + 48) + 16))(*(v5 + 48));
    v12 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
    {
      TrafficDescriptor::toString(__p, v4);
      v13 = __p;
      if (__p[23] < 0)
      {
        v13 = *__p;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
      *(buf.__r_.__value_.__r.__words + 4) = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I TrafficDescriptor select: %{public}s", &buf, 0xCu);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    v117 = v10;
    if ((*(*v5 + 2272))(v5, v122, 1))
    {
      break;
    }

LABEL_132:
    v10 = v117 + 1;
    if (v117 + 1 == v116)
    {
      goto LABEL_190;
    }
  }

  *__p = v122;
  v14 = *sub_100007DEC(v5 + 4960, __p);
  *__p = v122;
  v15 = *sub_100007DEC(v5 + 4960, __p);
  if (v119 && (*(v15 + 1) & 1) != 0)
  {
    goto LABEL_20;
  }

  if (!TrafficDescriptor::hasBundleInfo(v4))
  {
    goto LABEL_21;
  }

  if ((v4[9] & 1) == 0)
  {
    sub_1000D1644();
  }

  if (DataServiceController::isManagedApp(v5, v122, v4 + 6))
  {
LABEL_20:
    v120 = 1;
  }

  else
  {
LABEL_21:
    __p[0] = 0;
    __p[24] = 0;
    sub_10016A270((v4 + 30), __p);
    if (__p[24] == 1 && (__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v120 = 0;
  }

  if (*(v5 + 5272) != 1 || (*(v5 + 5273) & 1) != 0 || !TrafficDescriptor::hasBundleInfo(v4) || (TrafficDescriptor::hasAccountInfo(v4) & 1) != 0)
  {
LABEL_50:
    if (!v120)
    {
LABEL_79:
      v29 = *(v5 + 144);
      v31 = *(v29 + 8);
      v30 = *(v29 + 16);
      for (i = v30; ; v30 = i)
      {
        if (v31 == v30)
        {
          goto LABEL_132;
        }

        v33 = v31[52];
        v32 = v31[53];
        if (v32)
        {
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          v34 = *(v33 + 52);
          sub_100004A34(v32);
        }

        else
        {
          v34 = *(v33 + 52);
        }

        if (v34 == v122 && v31[3])
        {
          v35 = DataServiceController::sliceTrafficDescriptors_sync(v5, v122, "select connection for td");
          if (v35[1] == *v35)
          {
            if ((v120 & *(v5 + 5348)) == 1 && TrafficDescriptor::hasDnnInfo(v4))
            {
              v77 = *(v5 + 40);
              if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
              {
                TrafficDescriptor::toString(__p, v4);
                v78 = __p[23] >= 0 ? __p : *__p;
                LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
                *(buf.__r_.__value_.__r.__words + 4) = v78;
                _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "#N Allowing 'fake' CB-configured Managed Slicing in an Internal or a Carrier build (1): %{public}s", &buf, 0xCu);
                if ((__p[23] & 0x80000000) != 0)
                {
                  operator delete(*__p);
                }
              }

              v154 = 0u;
              v155 = 0u;
              v152 = 0u;
              v153 = 0u;
              v150 = 0u;
              v151 = 0u;
              v148 = 0u;
              v149 = 0u;
              v146 = 0u;
              v147 = 0u;
              v144 = 0u;
              v145 = 0u;
              v142 = 0u;
              v143 = 0u;
              memset(__p, 0, sizeof(__p));
              TrafficDescriptor::TrafficDescriptor(__p);
              DataServiceController::updateMatchedDescriptor(v79, v80, __p, v4);
              if ((BYTE8(v153) & 1) == 0)
              {
                sub_1000D1644();
              }

              v128[304] = 0;
              v128[608] = 0;
              v81 = DataServiceController::chooseConnectionTypeByDnn_sync(v5, v122, &v152);
              TrafficDescriptor::TrafficDescriptor(v128, __p);
              sub_1004ADB00(v118, v122, v81);
              v82 = v128;
            }

            else
            {
              v154 = 0u;
              v155 = 0u;
              v152 = 0u;
              v153 = 0u;
              v150 = 0u;
              v151 = 0u;
              v148 = 0u;
              v149 = 0u;
              v146 = 0u;
              v147 = 0u;
              v144 = 0u;
              v145 = 0u;
              v142 = 0u;
              v143 = 0u;
              memset(__p, 0, sizeof(__p));
              TrafficDescriptor::TrafficDescriptor(__p);
              DataServiceController::updateMatchedDescriptor(v84, v85, __p, v4);
              v86 = *(v5 + 40);
              if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "#I NW does not have URSP and DNN is not known; use Internet", &buf, 2u);
              }

              sub_10000501C(&buf, "");
              v127[304] = 0;
              v127[608] = 0;
              v87 = DataServiceController::chooseConnectionTypeByDnn_sync(v5, v122, &buf);
              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }

              TrafficDescriptor::TrafficDescriptor(v127, __p);
              sub_1004ADB00(v118, v122, v87);
              v82 = v127;
            }

            goto LABEL_208;
          }

          v154 = 0u;
          v155 = 0u;
          v152 = 0u;
          v153 = 0u;
          v150 = 0u;
          v151 = 0u;
          v148 = 0u;
          v149 = 0u;
          v146 = 0u;
          v147 = 0u;
          v144 = 0u;
          v145 = 0u;
          v142 = 0u;
          v143 = 0u;
          memset(__p, 0, sizeof(__p));
          TrafficDescriptor::TrafficDescriptor(__p);
          memset(&buf, 0, sizeof(buf));
          DataServiceController::findRsDnn_sync(v5, v35, v4, &buf);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            if (buf.__r_.__value_.__l.__size_)
            {
LABEL_201:
              DataServiceController::updateMatchedDescriptor(v36, v37, __p, v4);
              v126[304] = 0;
              v126[608] = 0;
              v83 = DataServiceController::chooseConnectionTypeByDnn_sync(v5, v122, &buf);
              TrafficDescriptor::TrafficDescriptor(v126, __p);
              sub_1004ADB00(v118, v122, v83);
              TrafficDescriptor::~TrafficDescriptor(v126);
              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }

              goto LABEL_209;
            }

            operator delete(buf.__r_.__value_.__l.__data_);
          }

          else if (*(&buf.__r_.__value_.__s + 23))
          {
            goto LABEL_201;
          }

          TrafficDescriptor::~TrafficDescriptor(__p);
          memset(&buf, 0, sizeof(buf));
          v38 = *(v5 + 40);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            TrafficDescriptor::toString(__p, v4);
            v39 = __p;
            if (__p[23] < 0)
            {
              v39 = *__p;
            }

            LODWORD(v140.__r_.__value_.__l.__data_) = 136446210;
            *(v140.__r_.__value_.__r.__words + 4) = v39;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I TrafficDescriptor <%{public}s> matching:", &v140, 0xCu);
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }
          }

          v40 = *v35;
          if (678152731 * ((v35[1] - *v35) >> 4))
          {
            v41 = 0;
            v42 = 0;
            do
            {
              if ((TrafficDescriptor::empty((v40 + v41)) & 1) == 0 && (TrafficDescriptor::hasRsDnnInfo((v40 + v41)) & 1) == 0)
              {
                v43 = *(v5 + 40);
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  TrafficDescriptor::toString(__p, (v40 + v41));
                  v44 = __p;
                  if (__p[23] < 0)
                  {
                    v44 = *__p;
                  }

                  LODWORD(v140.__r_.__value_.__l.__data_) = 136446210;
                  *(v140.__r_.__value_.__r.__words + 4) = v44;
                  _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I bbTd <%{public}s>", &v140, 0xCu);
                  if ((__p[23] & 0x80000000) != 0)
                  {
                    operator delete(*__p);
                  }
                }

                if (((TrafficDescriptor::hasDnnInfo((v40 + v41)) & 1) != 0 || (TrafficDescriptor::hasAppInfo((v40 + v41)) & 1) != 0 || (TrafficDescriptor::hasTrafficInfo((v40 + v41)) & 1) != 0 || TrafficDescriptor::hasAccountInfo((v40 + v41))) && DataServiceController::match(v5, (v40 + v41), v4))
                {
                  v45 = *(v5 + 40);
                  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                  {
                    *__p = 0;
                    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I TrafficDescriptor match", __p, 2u);
                  }

                  v154 = 0u;
                  v155 = 0u;
                  v152 = 0u;
                  v153 = 0u;
                  v150 = 0u;
                  v151 = 0u;
                  v148 = 0u;
                  v149 = 0u;
                  v146 = 0u;
                  v147 = 0u;
                  v144 = 0u;
                  v145 = 0u;
                  v142 = 0u;
                  v143 = 0u;
                  memset(__p, 0, sizeof(__p));
                  v46 = TrafficDescriptor::TrafficDescriptor(__p, (v40 + v41));
                  DataServiceController::updateMatchedDescriptor(v46, v47, __p, v4);
                  size = buf.__r_.__value_.__l.__size_;
                  if (buf.__r_.__value_.__l.__size_ >= buf.__r_.__value_.__r.__words[2])
                  {
                    v49 = sub_1001C1784(&buf, __p);
                  }

                  else
                  {
                    TrafficDescriptor::TrafficDescriptor(buf.__r_.__value_.__l.__size_, __p);
                    v49 = size + 304;
                  }

                  buf.__r_.__value_.__l.__size_ = v49;
                  TrafficDescriptor::~TrafficDescriptor(__p);
                }
              }

              ++v42;
              v40 = *v35;
              v41 += 304;
            }

            while (v42 < 678152731 * ((v35[1] - *v35) >> 4));
          }

          v51 = buf.__r_.__value_.__l.__size_;
          v50 = buf.__r_.__value_.__r.__words[0];
          v52 = v119;
          if (buf.__r_.__value_.__r.__words[0] != buf.__r_.__value_.__l.__size_)
          {
            v52 = 0;
          }

          if (v120 & v52)
          {
            v53 = *(v5 + 40);
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
            {
              *__p = 0;
              _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I TrafficDescriptor matched none, trying the directly configured TD", __p, 2u);
            }

            sub_1004A6280(&buf, v4);
            v51 = buf.__r_.__value_.__l.__size_;
            v50 = buf.__r_.__value_.__r.__words[0];
          }

          if (v50 != v51)
          {
            v54 = *(v5 + 40);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              *__p = 0;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#I TrafficDescriptor matched", __p, 2u);
            }

            memset(&__p[8], 0, 64);
            *__p = v5;
            *&__p[8] = v122;
            sub_1004C3D50(&__p[16], v118);
            memset(&__p[48], 0, 24);
            sub_1004BE904(&__p[48], buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_, 0x86BCA1AF286BCA1BLL * ((buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0]) >> 4));
            memset(v125, 0, sizeof(v125));
            sub_1004BE904(v125, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_, 0x86BCA1AF286BCA1BLL * ((buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0]) >> 4));
            v134 = *__p;
            v135 = *&__p[8];
            sub_1004C3D50(&v136, &__p[16]);
            memset(v137, 0, 24);
            sub_1004BE904(v137, *&__p[48], *&__p[56], 0x86BCA1AF286BCA1BLL * ((*&__p[56] - *&__p[48]) >> 4));
            v137[6] = 0;
            operator new();
          }

          if ((v120 & *(v5 + 5348)) == 1 && TrafficDescriptor::hasDnnInfo(v4))
          {
            v88 = *(v5 + 40);
            if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
            {
              TrafficDescriptor::toString(__p, v4);
              v89 = __p[23] >= 0 ? __p : *__p;
              LODWORD(v140.__r_.__value_.__l.__data_) = 136446210;
              *(v140.__r_.__value_.__r.__words + 4) = v89;
              _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "#N Allowing 'fake' CB-configured Managed Slicing in an Internal or a Carrier build (2): %{public}s", &v140, 0xCu);
              if ((__p[23] & 0x80000000) != 0)
              {
                operator delete(*__p);
              }
            }

            v154 = 0u;
            v155 = 0u;
            v152 = 0u;
            v153 = 0u;
            v150 = 0u;
            v151 = 0u;
            v148 = 0u;
            v149 = 0u;
            v146 = 0u;
            v147 = 0u;
            v144 = 0u;
            v145 = 0u;
            v142 = 0u;
            v143 = 0u;
            memset(__p, 0, sizeof(__p));
            TrafficDescriptor::TrafficDescriptor(__p);
            DataServiceController::updateMatchedDescriptor(v90, v91, __p, v4);
            if ((BYTE8(v153) & 1) == 0)
            {
              sub_1000D1644();
            }

            v124[304] = 0;
            v124[608] = 0;
            v92 = DataServiceController::chooseConnectionTypeByDnn_sync(v5, v122, &v152);
            TrafficDescriptor::TrafficDescriptor(v124, __p);
            sub_1004ADB00(v118, v122, v92);
            TrafficDescriptor::~TrafficDescriptor(v124);
            TrafficDescriptor::~TrafficDescriptor(__p);
            *__p = &buf;
            sub_1001B8A7C(__p);
            goto LABEL_218;
          }

          *__p = &buf;
          sub_1001B8A7C(__p);
        }

        v31 += 54;
      }
    }

    goto LABEL_51;
  }

  if (!v120)
  {
    goto LABEL_47;
  }

  memset(__p, 0, 24);
  memset(&buf, 0, sizeof(buf));
  v16 = *(v4 + 72);
  if (v16 == 1)
  {
    v17 = sub_100007A6C(v15 + 160, v4 + 6);
    LOBYTE(v16) = *(v4 + 72);
    if (v15 + 168 != v17)
    {
      if (v4[9])
      {
        std::string::operator=(&buf, v4 + 2);
        goto LABEL_36;
      }

LABEL_264:
      sub_1000D1644();
    }
  }

  if ((v16 & 1) == 0)
  {
    goto LABEL_264;
  }

  DataServiceController::getManagedAppInfo(v5, v122, v4 + 6, __p, &buf);
LABEL_36:
  v18 = __p[23];
  if (__p[23] < 0)
  {
    v18 = *&__p[8];
  }

  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v19 = buf.__r_.__value_.__l.__size_;
  }

  v20 = (v18 | v19) != 0;
  if ((*(&buf.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    if ((__p[23] & 0x80) == 0)
    {
LABEL_43:
      if (v20)
      {
        goto LABEL_51;
      }

      goto LABEL_47;
    }
  }

  else if ((__p[23] & 0x80) == 0)
  {
    goto LABEL_43;
  }

  operator delete(*__p);
  if (!v20)
  {
LABEL_47:
    if ((v4[9] & 1) == 0)
    {
      sub_1000D1644();
    }

    if (*(v5 + 5348) != 1 || v5 + 5288 == sub_100007A6C(v5 + 5280, v4 + 6))
    {
      v104 = (*(*v5 + 1120))(v5);
      sub_10000501C(__p, "");
      v132[304] = 0;
      v132[608] = 0;
      v105 = DataServiceController::chooseConnectionTypeByDnn_sync(v5, v104, __p);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      v154 = 0u;
      v155 = 0u;
      v152 = 0u;
      v153 = 0u;
      v150 = 0u;
      v151 = 0u;
      v148 = 0u;
      v149 = 0u;
      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      v142 = 0u;
      v143 = 0u;
      memset(__p, 0, sizeof(__p));
      TrafficDescriptor::TrafficDescriptor(__p);
      sub_10012BF3C(&__p[48], v4 + 2);
      if (*(v4 + 40) != 1)
      {
        goto LABEL_246;
      }

      v106 = *(v4 + 39);
      if ((v106 & 0x8000000000000000) != 0)
      {
        v106 = v4[3];
      }

      if (v106)
      {
        sub_10012BF3C(&__p[16], (v4 + 2));
      }

      else
      {
LABEL_246:
        if (*(v4 + 8) != 1)
        {
          if ((v4[9] & 1) == 0)
          {
            sub_1000D1644();
          }

          AppUuids = DataServiceController::getAppUuids(v5, v4 + 6);
          v110 = AppUuids + 1;
          v109 = *AppUuids;
          if (*AppUuids != AppUuids + 1)
          {
            do
            {
              sub_1001696A4(&__p[16], (v109 + 4));
              v111 = (*(*v5 + 1120))(v5);
              TrafficDescriptor::TrafficDescriptor(v132, __p);
              sub_1004ADB00(v118, v111, v105);
              TrafficDescriptor::~TrafficDescriptor(v132);
              v112 = v109[1];
              if (v112)
              {
                do
                {
                  v113 = v112;
                  v112 = *v112;
                }

                while (v112);
              }

              else
              {
                do
                {
                  v113 = v109[2];
                  v114 = *v113 == v109;
                  v109 = v113;
                }

                while (!v114);
              }

              v109 = v113;
            }

            while (v113 != v110);
          }

          goto LABEL_209;
        }

        *&__p[4] = *(v4 + 1);
        __p[8] = *(v4 + 8);
      }

      v107 = (*(*v5 + 1120))(v5);
      TrafficDescriptor::TrafficDescriptor(v131, __p);
      sub_1004ADB00(v118, v107, v105);
      v82 = v131;
      goto LABEL_208;
    }

    goto LABEL_50;
  }

LABEL_51:
  if (DataServiceController::getRawDataMode(v5, v122) == 17)
  {
    goto LABEL_78;
  }

  if (!v119 || !TrafficDescriptor::hasDnnInfo(v4))
  {
    memset(&buf, 0, sizeof(buf));
    *__p = v122;
    v21 = sub_100007DEC(v5 + 4960, __p);
    v22 = *v21;
    if (*(*v21 + 303) < 0)
    {
      sub_100005F2C(&buf, *(v22 + 280), *(v22 + 288));
    }

    else
    {
      buf = *(v22 + 280);
    }

    v23 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    v24 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v23 = buf.__r_.__value_.__l.__size_;
    }

    if (!v23)
    {
      goto LABEL_76;
    }

    memset(&v140, 0, sizeof(v140));
    if (TrafficDescriptor::hasBundleInfo(v4))
    {
      if ((v4[9] & 1) == 0)
      {
        sub_1000D1644();
      }

      DataServiceController::getManagedAppInfo(v5, v122, v4 + 6, &v140);
    }

    v25 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
    if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v25 = v140.__r_.__value_.__l.__size_;
    }

    if (v25)
    {
      std::string::operator=(&buf, &v140);
    }

    v26 = strlen(__s);
    v27 = v26;
    v24 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v26 == buf.__r_.__value_.__l.__size_)
      {
        if (v26 == -1)
        {
          sub_10013C334();
        }

        p_buf = buf.__r_.__value_.__r.__words[0];
LABEL_73:
        if (!memcmp(p_buf, __s, v27))
        {
          if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v140.__r_.__value_.__l.__data_);
            v24 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
          }

LABEL_76:
          if (v24 < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

LABEL_78:
          if (TrafficDescriptor::hasDnnInfo(v4))
          {
            goto LABEL_79;
          }

          if (!TrafficDescriptor::hasBundleInfo(v4))
          {
LABEL_167:
            v63 = (v14 + 256);
            v64 = strlen(__s);
            v65 = v64;
            v66 = *(v14 + 279);
            if (v66 < 0)
            {
              v66 = *(v14 + 264);
              if (v64 != v66)
              {
                goto LABEL_174;
              }

              if (v64 == -1)
              {
                sub_10013C334();
              }

              v67 = *v63;
            }

            else
            {
              if (v64 != v66)
              {
                goto LABEL_174;
              }

              v67 = (v14 + 256);
            }

            if (!memcmp(v67, __s, v65))
            {
              v72 = *(v15 + 327);
              if (v72 < 0)
              {
                v72 = *(v15 + 312);
              }

              if (!v72)
              {
                v75 = *v11;
                if (!os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_79;
                }

                *__p = 0;
                v69 = v75;
                v70 = "#I TrafficDescriptor select: no DNN info and no anyLookupDnn";
                v71 = 2;
                goto LABEL_180;
              }

              v73 = (v15 + 304);
              sub_1001696A4(v4 + 10, (v15 + 304));
              v74 = *v11;
              if (!os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_79;
              }

              if (*(v15 + 327) < 0)
              {
                v73 = *v73;
              }

              *__p = 136446210;
              *&__p[4] = v73;
              v69 = v74;
              v70 = "#I TrafficDescriptor select: %{public}s: DNN updated from anyLookupDnn";
LABEL_179:
              v71 = 12;
LABEL_180:
              _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, v70, __p, v71);
              goto LABEL_79;
            }

LABEL_174:
            if (!v66)
            {
              goto LABEL_79;
            }

            sub_1001696A4(v4 + 10, (v14 + 256));
            v68 = *v11;
            if (!os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_79;
            }

            if (*(v14 + 279) < 0)
            {
              v63 = *v63;
            }

            *__p = 136446210;
            *&__p[4] = v63;
            v69 = v68;
            v70 = "#I TrafficDescriptor select: %{public}s: DNN updated from enterpriseDnn";
            goto LABEL_179;
          }

          memset(__p, 0, 24);
          memset(&buf, 0, sizeof(buf));
          v55 = *(v4 + 72);
          if (v55 != 1 || (v56 = sub_100007A6C(v15 + 160, v4 + 6), LOBYTE(v55) = *(v4 + 72), v15 + 168 == v56))
          {
            if (v55)
            {
              DataServiceController::getManagedAppInfo(v5, v122, v4 + 6, __p, &buf);
LABEL_141:
              if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v57 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v57 = buf.__r_.__value_.__l.__size_;
              }

              if (v57)
              {
                sub_1001696A4((v4 + 10), &buf);
                v58 = *v11;
                if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
                {
                  TrafficDescriptor::toString(&v140, v4);
                  v59 = &v140;
                  if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v59 = v140.__r_.__value_.__r.__words[0];
                  }

                  v138 = 136446210;
                  v139 = v59;
                  _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "#I TrafficDescriptor select: fakeAppCategory: td = %{public}s", &v138, 0xCu);
                  if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v140.__r_.__value_.__l.__data_);
                  }
                }
              }

              v60 = __p[23];
              if (__p[23] < 0)
              {
                v60 = *&__p[8];
              }

              if (v60)
              {
                sub_1001696A4(v4 + 10, __p);
                v61 = *v11;
                if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
                {
                  v62 = __p;
                  if (__p[23] < 0)
                  {
                    v62 = *__p;
                  }

                  LODWORD(v140.__r_.__value_.__l.__data_) = 136446210;
                  *(v140.__r_.__value_.__r.__words + 4) = v62;
                  _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#I TrafficDescriptor select: %{public}s: DNN updated from MDM", &v140, 0xCu);
                }

                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(buf.__r_.__value_.__l.__data_);
                }

                if ((__p[23] & 0x80000000) != 0)
                {
                  operator delete(*__p);
                }

                goto LABEL_79;
              }

              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
                if ((__p[23] & 0x80) == 0)
                {
LABEL_163:
                  if (v57)
                  {
                    goto LABEL_79;
                  }

                  goto LABEL_167;
                }
              }

              else if ((__p[23] & 0x80) == 0)
              {
                goto LABEL_163;
              }

              operator delete(*__p);
              if (v57)
              {
                goto LABEL_79;
              }

              goto LABEL_167;
            }
          }

          else if (v4[9])
          {
            std::string::operator=(&buf, v4 + 2);
            goto LABEL_141;
          }

          sub_1000D1644();
        }
      }
    }

    else if (v26 == SHIBYTE(buf.__r_.__value_.__r.__words[2]))
    {
      p_buf = &buf;
      goto LABEL_73;
    }

    v154 = 0u;
    v155 = 0u;
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    memset(__p, 0, sizeof(__p));
    TrafficDescriptor::TrafficDescriptor(__p);
    v98 = sub_1001696A4(&v152, &buf);
    DataServiceController::updateMatchedDescriptor(v98, v99, __p, v4);
    v129[304] = 0;
    v129[608] = 0;
    v100 = DataServiceController::chooseConnectionTypeByDnn_sync(v5, v122, &buf);
    TrafficDescriptor::TrafficDescriptor(v129, __p);
    sub_1004ADB00(v118, v122, v100);
    TrafficDescriptor::~TrafficDescriptor(v129);
    TrafficDescriptor::~TrafficDescriptor(__p);
    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v140.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    goto LABEL_218;
  }

  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  memset(__p, 0, sizeof(__p));
  TrafficDescriptor::TrafficDescriptor(__p);
  DataServiceController::updateMatchedDescriptor(v101, v102, __p, v4);
  if ((BYTE8(v153) & 1) == 0)
  {
    sub_1000D1644();
  }

  v130[304] = 0;
  v130[608] = 0;
  v103 = DataServiceController::chooseConnectionTypeByDnn_sync(v5, v122, &v152);
  TrafficDescriptor::TrafficDescriptor(v130, __p);
  sub_1004ADB00(v118, v122, v103);
  v82 = v130;
LABEL_208:
  TrafficDescriptor::~TrafficDescriptor(v82);
LABEL_209:
  TrafficDescriptor::~TrafficDescriptor(__p);
LABEL_218:
  v76 = 0;
LABEL_219:
  if (v157)
  {
    *(&v157 + 1) = v157;
    operator delete(v157);
  }

  if (v76)
  {
    v93 = *(v5 + 40);
    if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
    {
      TrafficDescriptor::toString(__p, v4);
      v94 = __p[23] >= 0 ? __p : *__p;
      LODWORD(v157) = 136446210;
      *(&v157 + 4) = v94;
      _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "#N Cannot find connection type for td, using basic internet: td=[%{public}s]", &v157, 0xCu);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    v95 = (*(*v5 + 1120))(v5);
    sub_10000501C(__p, "");
    v123[304] = 0;
    v123[608] = 0;
    v96 = DataServiceController::chooseConnectionTypeByDnn_sync(v5, v95, __p);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v97 = (*(*v5 + 1120))(v5);
    TrafficDescriptor::TrafficDescriptor(v123, v4);
    v9 = v123;
    sub_1004ADB00(v118, v97, v96);
    goto LABEL_231;
  }
}

void sub_1004AC15C(_Unwind_Exception *a1)
{
  TrafficDescriptor::~TrafficDescriptor(&STACK[0x1800]);
  v3 = *(v1 - 128);
  if (v3)
  {
    *(v1 - 120) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t DataServiceController::isCallKitApp(uint64_t a1, void **a2)
{
  v5 = (*(*a1 + 1120))(a1);
  if (*(*sub_100007DEC(a1 + 4960, &v5) + 16) != 1)
  {
    return 0;
  }

  if (a1 + 5160 == sub_100007A6C(a1 + 5152, a2))
  {
    return (*(*a1 + 2448))(a1, a2);
  }

  return 1;
}

BOOL DataServiceController::readCallKitApp(uint64_t a1, const void **a2)
{
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  sub_100168A48("CallKitAppInfo_", a2, v14);
  if (SHIBYTE(v15) < 0)
  {
    sub_100005F2C(v11, v14[0], v14[1]);
  }

  else
  {
    *v11 = *v14;
    v12 = v15;
  }

  if (SHIBYTE(v12) < 0)
  {
    sub_100005F2C(__p, v11[0], v11[1]);
  }

  else
  {
    *__p = *v11;
    v18 = v12;
  }

  v16 = 0;
  if (SHIBYTE(v18) < 0)
  {
    sub_100005F2C(&__dst, __p[0], __p[1]);
  }

  else
  {
    __dst = *__p;
    v20 = v18;
  }

  v21 = 0;
  if (ctu::cf::convert_copy())
  {
    v2 = v16;
    v16 = v21;
    v22 = v2;
    sub_100005978(&v22);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(__dst);
  }

  v3 = v16;
  v13 = v16;
  v16 = 0;
  sub_100005978(&v16);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  v4 = CFPreferencesCopyValue(v3, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  *&__dst = v4;
  v9 = 0;
  if (v4)
  {
    v5 = CFGetTypeID(v4);
    if (v5 == CFNumberGetTypeID())
    {
      __p[0] = 0;
      v6 = __dst;
      if (__dst)
      {
        v7 = CFGetTypeID(__dst);
        v8 = v7 == CFNumberGetTypeID() ? v6 : 0;
      }

      else
      {
        v8 = 0;
      }

      CFNumberGetValue(v8, kCFNumberDoubleType, __p);
      if (CFAbsoluteTimeGetCurrent() - *__p < 86400.0)
      {
        v9 = 1;
      }
    }
  }

  sub_10000A1EC(&__dst);
  sub_100005978(&v13);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }

  return v9;
}

void sub_1004AC8F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_10000A1EC((v28 - 64));
  sub_100005978(&a15);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void DataServiceController::writeCallKitApp(uint64_t a1, const void **a2)
{
  v6[0] = 0;
  v6[1] = 0;
  v7 = 0;
  sub_100168A48("CallKitAppInfo_", a2, v6);
  if (SHIBYTE(v7) < 0)
  {
    sub_100005F2C(v3, v6[0], v6[1]);
  }

  else
  {
    *v3 = *v6;
    v4 = v7;
  }

  if (SHIBYTE(v4) < 0)
  {
    sub_100005F2C(__p, v3[0], v3[1]);
  }

  else
  {
    *__p = *v3;
    v10 = v4;
  }

  v8 = 0;
  if (SHIBYTE(v10) < 0)
  {
    sub_100005F2C(&valuePtr, __p[0], __p[1]);
  }

  else
  {
    valuePtr = *__p;
    v12 = v10;
  }

  v13 = 0;
  if (ctu::cf::convert_copy())
  {
    v2 = v8;
    v8 = v13;
    v14 = v2;
    sub_100005978(&v14);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(valuePtr);
  }

  key = v8;
  v8 = 0;
  sub_100005978(&v8);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v4) < 0)
  {
    operator delete(v3[0]);
  }

  *&valuePtr = CFAbsoluteTimeGetCurrent();
  __p[0] = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &valuePtr);
  CFPreferencesSetValue(key, __p[0], @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100029A48(__p);
  sub_100005978(&key);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1004ACB30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, const void *a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_100005978(&a22);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void DataServiceController::forwardTrafficToInternetAgent_sync(DataServiceController *a1, const TrafficDescriptor *a2)
{
  if ((TrafficDescriptor::empty(a2) & 1) == 0)
  {
    if ((DataServiceController::isInternalSliceApp_sync(a1, a2) & 1) == 0 && *(a2 + 40) == 1)
    {
      *(a2 + 4) = 0;
      *(a2 + 8) = 0;
    }

    v4 = *(a1 + 5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      TrafficDescriptor::toString(&__p, a2);
      v5 = v9 >= 0 ? &__p : __p;
      *buf = 136446210;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I TrafficDescriptor forward to internet: %{public}s", buf, 0xCu);
      if (v9 < 0)
      {
        operator delete(__p);
      }
    }

    __p = 0;
    v8 = 0;
    v6 = (*(*a1 + 1120))(a1);
    DataServiceController::getConnection_sync(a1, v6, 0, &__p);
    if (__p)
    {
      (*(*__p + 448))(__p, a2);
    }

    if (v8)
    {
      sub_100004A34(v8);
    }
  }
}

void sub_1004ACD54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DataServiceController::chooseConnectionTypeByDnn_sync(uint64_t a1, unsigned int a2, __int128 *a3)
{
  v3 = *(a3 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a3 + 1);
  }

  if (v3)
  {
    v7 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    v24 = 0;
    v25 = 0;
    DataServiceController::getConnection_sync(a1, a2, 0, &v24);
    if (!v24)
    {
      goto LABEL_24;
    }

    v30 = 0;
    v31 = 0;
    (*(*v24 + 136))(&v30);
    if (!v30)
    {
LABEL_22:
      if (v31)
      {
        sub_100004A34(v31);
      }

LABEL_24:
      if (v25)
      {
        sub_100004A34(v25);
      }

      v16 = 36;
      v31 = 0;
      v32 = 0;
      v30 = off_101E502A0;
      v33 = &v30;
      memset(v29, 0, sizeof(v29));
      v28 = 0u;
      v27 = 0u;
      v24 = a1;
      v25 = a2;
      v26 = v7;
      if (*(a3 + 23) < 0)
      {
        sub_100005F2C(&v27, *a3, *(a3 + 1));
      }

      else
      {
        v27 = *a3;
        *&v28 = *(a3 + 2);
      }

      *(&v28 + 1) = &v16;
      sub_1004C299C(v29, &v30);
      v22 = 0uLL;
      v23 = 0;
      if (*(a3 + 23) < 0)
      {
        sub_100005F2C(__p, *a3, *(a3 + 1));
      }

      else
      {
        *__p = *a3;
        __p[2] = *(a3 + 2);
      }

      sub_1004C299C(&v18, &v30);
      v21 = 0;
      operator new();
    }

    v20 = 0;
    *buf = 0;
    (*(*v30 + 59))(buf);
    if (!*buf)
    {
      goto LABEL_20;
    }

    v8 = *(*buf + 71);
    if (v8 >= 0)
    {
      v9 = *(*buf + 71);
    }

    else
    {
      v9 = *(*buf + 56);
    }

    v10 = *(a3 + 23);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a3 + 1);
    }

    if (v9 != v10 || (v8 >= 0 ? (v12 = (*buf + 48)) : (v12 = *(*buf + 48)), v11 >= 0 ? (v13 = a3) : (v13 = *a3), memcmp(v12, v13, v9)))
    {
LABEL_20:
      if (v20)
      {
        sub_100004A34(v20);
      }

      goto LABEL_22;
    }

    v14 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v22) = 136446210;
      *(&v22 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Requested Internet APN: %{public}s", &v22, 0xCu);
    }

    if (v20)
    {
      sub_100004A34(v20);
    }

    if (v31)
    {
      sub_100004A34(v31);
    }

    if (v25)
    {
      sub_100004A34(v25);
    }
  }

  return 0;
}

void sub_1004AD6EC(_Unwind_Exception *a1)
{
  STACK[0x200] = v1 - 256;
  sub_1004BEE7C(&STACK[0x200]);
  sub_1004AD930(v1 - 224);
  sub_1004C291C(v1 - 136);
  _Unwind_Resume(a1);
}

uint64_t sub_1004AD8AC(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1004BEB74(a1, a2);
  }

  else
  {
    result = sub_1004BEC80(v3, a2) + 32;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1004AD8F4(uint64_t a1)
{
  sub_1004C291C(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1004AD930(uint64_t a1)
{
  sub_1004C291C(a1 + 56);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

std::string *DataServiceController::updateMatchedDescriptor(int a1, int a2, uint64_t a3, TrafficDescriptor *this)
{
  if (TrafficDescriptor::hasAccountInfo(this))
  {
    if (*(this + 136))
    {

      return sub_1001696A4((a3 + 112), (this + 112));
    }

LABEL_24:
    sub_1000D1644();
  }

  if (TrafficDescriptor::hasDnnInfo(this))
  {
    if (*(a3 + 264) != 1)
    {
      goto LABEL_11;
    }

    v7 = *(a3 + 263);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a3 + 248);
    }

    if (!v7)
    {
LABEL_11:
      if ((*(this + 264) & 1) == 0)
      {
        goto LABEL_24;
      }

      sub_1001696A4((a3 + 240), this + 10);
    }
  }

  result = TrafficDescriptor::hasBundleInfo(this);
  if (result)
  {
    if ((*(this + 72) & 1) == 0)
    {
      goto LABEL_24;
    }

    result = sub_1001696A4((a3 + 48), this + 2);
  }

  if (*(this + 40) == 1)
  {
    v8 = *(this + 39);
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(this + 3);
    }

    if (v8)
    {
      result = sub_1001696A4((a3 + 16), (this + 16));
    }
  }

  if (*(this + 8) == 1)
  {
    *(a3 + 4) = *(this + 1);
    *(a3 + 8) = 1;
  }

  return result;
}

uint64_t DataServiceController::SlicesDataContainer::useEntitlementsGenres(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = a1 + 8;
    do
    {
      if (*(v2 + 32) >= a2)
      {
        v3 = v2;
      }

      v2 = *(v2 + 8 * (*(v2 + 32) < a2));
    }

    while (v2);
    if (v3 == a1 + 8 || *(v3 + 32) > a2)
    {
      v4 = 0;
    }

    else
    {
      v6 = a2;
      v4 = *(*sub_100007DEC(a1, &v6) + 23);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1004ADB00(uint64_t a1, int a2, int a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t DataServiceController::getManagedAppInfo(uint64_t a1, int a2, void **a3, std::string *a4, std::string *a5)
{
  v15 = a2;
  v10 = sub_100007DEC(a1 + 4960, &v15);
  v11 = *v10;
  if (*(*v10 + 1) != 1)
  {
    return 0;
  }

  v12 = sub_100007A6C(v11 + 136, a3);
  if (v11 + 144 == v12)
  {
    return 0;
  }

  v13 = v12;
  std::string::operator=(a4, (v12 + 80));
  std::string::operator=(a5, (v13 + 56));
  return DataServiceController::isGoodAppCategory(a1, a2, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t DataServiceController::getManagedAppInfo(uint64_t a1, int a2, void **a3, std::string *a4)
{
  v12 = a2;
  v8 = sub_100007DEC(a1 + 4960, &v12);
  v9 = *v8;
  if (*(*v8 + 1) != 1)
  {
    return 0;
  }

  v10 = sub_100007A6C(v9 + 136, a3);
  if (v9 + 144 == v10)
  {
    return 0;
  }

  std::string::operator=(a4, (v10 + 80));
  return DataServiceController::isGoodAppCategory(a1, a2, 0xFFFFFFFFFFFFFFFFLL);
}

void DataServiceController::findRsDnn_sync(DataServiceController *a1@<X0>, uint64_t *a2@<X1>, TrafficDescriptor *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    TrafficDescriptor::toString(__p, a3);
    v9 = v21 >= 0 ? __p : __p[0];
    *buf = 136446210;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I findRsDnn_sync <%{public}s>", buf, 0xCu);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v10 = *a2;
  v11 = a2[1];
  if (*a2 == v11)
  {
LABEL_17:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  else
  {
    while (1)
    {
      if (TrafficDescriptor::hasRsDnnInfo(v10))
      {
        v12 = *(a1 + 5);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          TrafficDescriptor::toString(__p, v10);
          v13 = v21 >= 0 ? __p : __p[0];
          *buf = 136446210;
          *&buf[4] = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I cbTd <%{public}s>", buf, 0xCu);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (DataServiceController::match(a1, v10, a3))
        {
          break;
        }
      }

      v10 += 304;
      if (v10 == v11)
      {
        goto LABEL_17;
      }
    }

    v14 = *(a1 + 5);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      TrafficDescriptor::toString(__p, a3);
      v15 = v21;
      v16 = __p[0];
      TrafficDescriptor::toString(buf, v10);
      v17 = __p;
      if (v15 < 0)
      {
        v17 = v16;
      }

      if (v23 >= 0)
      {
        v18 = buf;
      }

      else
      {
        v18 = *buf;
      }

      *v24 = 136446466;
      v25 = v17;
      v26 = 2082;
      v27 = v18;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I TrafficDescriptor find dnn: td=%{public}s: found cbTd: %{public}s", v24, 0x16u);
      if (v23 < 0)
      {
        operator delete(*buf);
      }

      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }

    TrafficDescriptor::operator=();
    if ((*(v10 + 296) & 1) == 0)
    {
      sub_1000D1644();
    }

    if (*(v10 + 295) < 0)
    {
      sub_100005F2C(a4, *(v10 + 272), *(v10 + 280));
    }

    else
    {
      v19 = *(v10 + 272);
      *(a4 + 16) = *(v10 + 288);
      *a4 = v19;
    }
  }
}

void sub_1004ADF74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DataServiceController::selectDnnForTd_sync(uint64_t a1, int a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a4;
  v8 = 0x86BCA1AF286BCA1BLL * ((a4[1] - *a4) >> 4);
  if (v8 <= a3)
  {
    v21 = *(a1 + 40);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1017725C4(a3, v8, v21);
    }
  }

  else
  {
    memset(v28, 0, sizeof(v28));
    TrafficDescriptor::TrafficDescriptor(v28, (v7 + 304 * a3));
    memset(v27, 0, sizeof(v27));
    memset(v26, 0, sizeof(v26));
    memset(v25, 0, sizeof(v25));
    TrafficDescriptor::TrafficDescriptor(v25, v28);
    if (TrafficDescriptor::hasAppCategoryInfo(v25))
    {
      sub_10012BF3C(v26, v27);
    }

    v41 = 0u;
    v42 = 0u;
    v43 = 0;
    memset(v40, 0, sizeof(v40));
    v39 = a1;
    v40[0] = a2;
    sub_1004C4634(&v40[2], a5);
    TrafficDescriptor::TrafficDescriptor(&v40[10], v28);
    *(&v41 + 1) = a3;
    v42 = 0uLL;
    v43 = 0;
    sub_1004BE904(&v42, *a4, a4[1], 0x86BCA1AF286BCA1BLL * ((a4[1] - *a4) >> 4));
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      TrafficDescriptor::toString(__p, v25);
      v13 = v24 >= 0 ? __p : __p[0];
      v14 = 678152731 * ((a4[1] - *a4) >> 4);
      *buf = 136446722;
      *&buf[4] = v13;
      v35 = 1024;
      v36 = a3;
      v37 = 1024;
      v38 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I trying lookup for: <%{public}s>, index %u, tds size: %u", buf, 0x18u);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v15 = *(a1 + 144);
    v16 = *(v15 + 8);
    for (i = *(v15 + 16); v16 != i; v16 += 54)
    {
      v19 = v16[52];
      v18 = v16[53];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        v20 = *(v19 + 52);
        sub_100004A34(v18);
      }

      else
      {
        v20 = *(v19 + 52);
      }

      if (v20 == a2 && v16[3])
      {
        v29 = v39;
        v30 = v40[0];
        sub_1004C4634(&v31, &v40[2]);
        TrafficDescriptor::TrafficDescriptor(v32, &v40[10]);
        v32[38] = *(&v41 + 1);
        memset(v33, 0, 24);
        sub_1004BE904(v33, v42, *(&v42 + 1), 0x86BCA1AF286BCA1BLL * ((*(&v42 + 1) - v42) >> 4));
        v33[6] = 0;
        operator new();
      }
    }

    *buf = &v42;
    sub_1001B8A7C(buf);
    TrafficDescriptor::~TrafficDescriptor(&v40[10]);
    sub_1004C45B4(&v40[2]);
    TrafficDescriptor::~TrafficDescriptor(v25);
    TrafficDescriptor::~TrafficDescriptor(v28);
  }

  return 0;
}

void sub_1004AE4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  sub_1004AE5A8(&STACK[0x438]);
  TrafficDescriptor::~TrafficDescriptor(&a13);
  TrafficDescriptor::~TrafficDescriptor(&a51);
  _Unwind_Resume(a1);
}

uint64_t sub_1004AE564(uint64_t a1)
{
  v3 = (a1 + 48);
  sub_1001B8A7C(&v3);
  sub_1004C2008(a1 + 16);
  return a1;
}

uint64_t sub_1004AE5A8(uint64_t a1)
{
  v3 = (a1 + 360);
  sub_1001B8A7C(&v3);
  TrafficDescriptor::~TrafficDescriptor((a1 + 48));
  sub_1004C45B4(a1 + 16);
  return a1;
}

BOOL DataServiceController::isAllowedApp(_BYTE *a1, int a2, void **a3)
{
  LODWORD(v15) = a2;
  v6 = sub_100007DEC((a1 + 4960), &v15);
  v7 = *v6;
  if (*(*v6 + 1) != 1 || v7 + 144 == sub_100007A6C(v7 + 136, a3))
  {
    if (*(v7 + 128))
    {
LABEL_10:
      if ((a1[5272] != 1 || (a1[5273] & 1) != 0 || a1[5348] == 1 && a1 + 5288 != sub_100007A6C((a1 + 5280), a3)) && *(v7 + 15) == 1)
      {
        v15 = 0;
        v16[0] = 0;
        v16[1] = 0;
        (*(*a1 + 2360))(&v15, a1, a3);
        v12 = v15;
        if (v15 == v16)
        {
LABEL_23:
          sub_10006DCAC(&v15, v16[0]);
          return 1;
        }

        while (DataServiceController::isGoodAppCategory(a1, a2, v12[4]))
        {
          v13 = v12[1];
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
              v14 = v12[2];
              v11 = *v14 == v12;
              v12 = v14;
            }

            while (!v11);
          }

          v12 = v14;
          if (v14 == v16)
          {
            goto LABEL_23;
          }
        }

        sub_10006DCAC(&v15, v16[0]);
      }

      return 0;
    }

    v8 = 0;
  }

  else
  {
    if ((DataServiceController::isGoodAppCategory(a1, a2, 0xFFFFFFFFFFFFFFFFLL) & 1) == 0)
    {
      return 0;
    }

    v8 = 1;
    result = 1;
    if (*(v7 + 128))
    {
      return result;
    }
  }

  v10 = sub_100007A6C(v7 + 104, a3);
  v11 = v7 + 112 == v10;
  result = v7 + 112 != v10;
  if ((v8 & 1) == 0 && !v11)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t DataServiceController::getSliceTrafficDescriptors(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1174405120;
  v11[2] = sub_1004AE948;
  v11[3] = &unk_101E50070;
  v11[4] = a1;
  v12[8] = a2;
  v12[9] = a3;
  sub_1004C4D8C(v12, a4);
  v9 = 0;
  v10 = 0;
  sub_100004AA0(&v9, (a1 + 8));
  v5 = *(a1 + 24);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1174405120;
  v7[2] = sub_10008D8E8;
  v7[3] = &unk_101E50748;
  v7[5] = v9;
  v8 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7[4] = v11;
  dispatch_async(v5, v7);
  if (v8)
  {
    sub_100004A34(v8);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  return sub_1004C4D0C(v12);
}

void sub_1004AE93C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1004AE948(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!sub_100097DB0(*(v2 + 144), *(a1 + 72)))
  {
    goto LABEL_9;
  }

  v7 = 0;
  v8[0] = 0;
  DataServiceController::getConnection_sync(v2, *(a1 + 72), *(a1 + 76), &v7);
  v3 = v7;
  if (v7)
  {
    __p[0] = 0;
    __p[1] = 0;
    v10 = 0;
    v4 = ((*v7)[52])(v7, __p);
    v5 = *(a1 + 64);
    if (!v5)
    {
      sub_100022DB4();
    }

    (*(*v5 + 48))(v5, __p, v4);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v8[0])
  {
    sub_100004A34(v8[0]);
  }

  if (!v3)
  {
LABEL_9:
    sub_10000501C(__p, "");
    v8[0] = 0;
    v8[1] = 0;
    v7 = v8;
    v6 = *(a1 + 64);
    if (!v6)
    {
      sub_100022DB4();
    }

    (*(*v6 + 48))(v6, __p, &v7);
    sub_10001BB0C(&v7, v8[0]);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1004AEAB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DataServiceController::getSliceTrafficDescriptors(uint64_t a1, uint64_t a2)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1174405120;
  v9[2] = sub_1004AEC68;
  v9[3] = &unk_101E500A0;
  v9[4] = a1;
  sub_1004C4EA4(v10, a2);
  v7 = 0;
  v8 = 0;
  sub_100004AA0(&v7, (a1 + 8));
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10008D8E8;
  block[3] = &unk_101E50748;
  block[5] = v7;
  v6 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v9;
  dispatch_async(v3, block);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }

  return sub_1004C4E24(v10);
}

void sub_1004AEC5C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1004AEC68(uint64_t a1)
{
  v2 = *(a1 + 32);
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  v3 = (*(*v2 + 1120))(v2);
  DataServiceController::makeDataSimSlotRange(v2, v3, &v11);
  v4 = v11;
  v5 = v12;
  if (v11 != v12)
  {
    do
    {
      v6 = *v4;
      v7 = DataServiceController::sliceTrafficDescriptors_sync(v2, *v4, "get descriptors");
      v8 = *v7;
      v9 = v7[1];
      while (v8 != v9)
      {
        if (DataServiceController::sliceAllowed(v2, v6, v8, 1, 0))
        {
          sub_100117AC4(&v13);
        }

        v8 += 38;
      }

      ++v4;
    }

    while (v4 != v5);
    v4 = v11;
  }

  if (v4)
  {
    v12 = v4;
    operator delete(v4);
  }

  v10 = *(a1 + 64);
  if (!v10)
  {
    sub_100022DB4();
  }

  (*(*v10 + 48))(v10, &v13);
  sub_10001BB0C(&v13, v14[0]);
}

void *DataServiceController::getSliceTrafficDescriptors_sync(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  if (!sub_100097DB0(*(a1 + 144), a2))
  {
    return &kEmptyTrafficDescriptorsSet;
  }

  v10 = 0;
  v11 = 0;
  DataServiceController::getConnection_sync(a1, v4, a3, &v10);
  v6 = v10;
  if (v10)
  {
    __p[0] = 0;
    __p[1] = 0;
    v9 = 0;
    v4 = (*(*v10 + 416))(v10, __p);
    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  if (!v6)
  {
    return &kEmptyTrafficDescriptorsSet;
  }

  return v4;
}

void sub_1004AEEF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::handleVrConnected(uint64_t a1, __int16 a2)
{
  v3 = HIBYTE(a2) & 1 & a2;
  v4 = *(a1 + 5320);
  if (v4 == v3)
  {
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = asStringBool(v4);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I (not changed) vrConnected = %s", &v8, 0xCu);
    }
  }

  else
  {
    *(a1 + 5320) = HIBYTE(a2) & 1 & a2;
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = asStringBool(v3);
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I (changed) vrConnected = %s", &v8, 0xCu);
    }

    v7 = (*(*a1 + 1120))(a1);
    DataServiceController::activateLlphs(a1, v7);
  }
}

void DataServiceController::callKitCallChanged_sync(DataServiceController *a1, uint64_t a2)
{
  *buf = (*(*a1 + 1120))(a1);
  if (**sub_100007DEC(a1 + 4960, buf) == 1)
  {
    v4 = *(a2 + 23);
    if ((v4 & 0x80u) != 0)
    {
      v4 = *(a2 + 8);
    }

    if (v4)
    {
      *buf = (*(*a1 + 1120))(a1);
      if ((*(*sub_100007DEC(a1 + 4960, buf) + 16) & 1) == 0)
      {
        sub_100009970(a1 + 5176, *(a1 + 648));
        *(a1 + 647) = a1 + 5184;
        *(a1 + 324) = 0u;
        return;
      }

      v5 = *(a2 + 26);
      v6 = *(a2 + 24);
      v7 = *(a1 + 5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v8 = a2;
        }

        else
        {
          v8 = *a2;
        }

        v9 = asStringBool(*(a2 + 25));
        v10 = asStringBool(*(a2 + 27));
        v11 = asStringBool(v6);
        v12 = asStringBool(v5);
        *buf = 136447234;
        *&buf[4] = v8;
        *&buf[12] = 2080;
        *&buf[14] = v9;
        *&buf[22] = 2080;
        v25 = v10;
        v26 = 2080;
        v27 = v11;
        v28 = 2080;
        v29 = v12;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I CallKit: Got VoIP Call Change event with bundleId %{public}s and active %s, video %s, callStart %s, callEnd %s", buf, 0x34u);
      }

      v13 = *(a2 + 25);
      *buf = a2;
      *(sub_100170224(a1 + 5176, a2) + 56) = v13;
      if (v5)
      {
        sub_1000727F0(a1 + 647, a2);
      }

      v14 = (*(*a1 + 1120))(a1);
      if (((*(*a1 + 2272))(a1, v14, 0) & v6) == 1)
      {
        if ((*(*a1 + 2432))(a1, a2))
        {
          v15 = (*(*a1 + 1120))(a1);
          if (DataServiceController::sliceApp(a1, v15, a2))
          {
            v16 = *(a1 + 5);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I CallKit: Got VoIP Call Change event: adding the front policies", buf, 2u);
            }

            v17 = (*(*a1 + 1120))(a1);
            DataServiceController::addFrontPolicies(a1, v17, a2);
          }
        }
      }

      (*(*a1 + 2456))(a1, a2);
      if ((*(*a1 + 2432))(a1, a2))
      {
        v18 = (*(*a1 + 1120))(a1);
        if (DataServiceController::sliceApp(a1, v18, a2) & 1 | ((v5 & 1) == 0))
        {
          return;
        }
      }

      else if (!v5)
      {
        return;
      }

      sub_100005BA0(a1 + 5152, a2);
      memset(buf, 0, sizeof(buf));
      (*(*a1 + 2360))(buf, a1, a2);
      v19 = *&buf[8];
      if (!*&buf[8])
      {
        goto LABEL_32;
      }

      v20 = &buf[8];
      do
      {
        if (*(v19 + 32) >> 3 < 0x465uLL)
        {
          v21 = 1;
        }

        else
        {
          v20 = v19;
          v21 = 0;
        }

        v19 = *(v19 + 8 * v21);
      }

      while (v19);
      if (v20 == &buf[8] || *(v20 + 4) >= 0x2329uLL)
      {
LABEL_32:
        sub_10000501C(__p, "App DB update: CallKit: new VoIP App detected");
        DataServiceController::updateSlicingDefinitionsWithAppDB(a1, __p);
        if (v23 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_10006DCAC(buf, *&buf[8]);
    }
  }
}

void sub_1004AF5B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, void *a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10006DCAC(&a16, a17);
  _Unwind_Resume(a1);
}

void DataServiceController::activateFacetime(DataServiceController *this)
{
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  sub_10000501C(__p, "com.apple.facetime");
  v2 = (*(*this + 1120))(this);
  if (DataServiceController::sliceApp(this, v2, __p))
  {
    v4[0] = 0;
    v4[1] = 0;
    v3 = v4;
    sub_100005BA0(&v3, __p);
    DataServiceController::handleActiveAppsChanged_sync(this, &v3);
    sub_100009970(&v3, v4[0]);
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1004AF6C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_100009970(&a9, a10);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void DataServiceController::handleNetworkSlicingSupportChanged_sync(void *a1, uint64_t a2)
{
  if (!(*(*a1 + 2288))(a1))
  {
    return;
  }

  v4 = a1[146];
  if (v4 == a1 + 147)
  {
    return;
  }

  v44 = 0;
  do
  {
    v5 = v4 + 4;
    v6 = sub_100007A6C(a2, v4 + 4);
    v7 = (v4 + 7);
    if (a2 + 8 == v6 || (sub_10024F71C((v6 + 56), (v4 + 7)) & 1) == 0)
    {
      v8 = a1[5];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(v4 + 55);
        v10 = (v9 & 0x80u) != 0;
        if ((v9 & 0x80u) != 0)
        {
          v9 = v4[5];
        }

        if (v10)
        {
          v11 = v4[4];
        }

        else
        {
          v11 = (v4 + 4);
        }

        v12 = v9 == 0;
        v13 = "<invalid>";
        if (!v12)
        {
          v13 = v11;
        }

        LODWORD(buf) = 136315138;
        *(&buf + 4) = v13;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I slice persona featureState updated: %s", &buf, 0xCu);
      }

      v14 = a1[75];
      v15 = *v14;
      v16 = *(v14 + 8);
      if (*v14 != v16)
      {
        v17 = *(v4 + 55);
        if (v17 >= 0)
        {
          v18 = *(v4 + 55);
        }

        else
        {
          v18 = v4[5];
        }

        if (v17 < 0)
        {
          v5 = v4[4];
        }

        while (1)
        {
          v19 = *v15;
          v20 = *(*v15 + 47);
          v21 = v20;
          if ((v20 & 0x80u) != 0)
          {
            v20 = *(*v15 + 32);
          }

          if (v20 == v18)
          {
            v24 = *(v19 + 24);
            v22 = v19 + 24;
            v23 = v24;
            v25 = (v21 >= 0 ? v22 : v23);
            if (!memcmp(v25, v5, v18))
            {
              break;
            }
          }

          v15 += 2;
          if (v15 == v16)
          {
            goto LABEL_64;
          }
        }
      }

      if (v15 != v16)
      {
        v26 = *v15;
        v27 = v15[1];
        if (v27)
        {
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!v26)
        {
          goto LABEL_62;
        }

        v28 = a1[14];
        *&buf = a1[13];
        *(&buf + 1) = v28;
        if (v28)
        {
          atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
        }

        isValidSimSlot = subscriber::isValidSimSlot();
        if (*(&buf + 1))
        {
          sub_100004A34(*(&buf + 1));
        }

        if ((isValidSimSlot & 1) == 0)
        {
          goto LABEL_62;
        }

        LODWORD(buf) = *(v26 + 52);
        v30 = sub_100007DEC((a1 + 620), &buf);
        v31 = *v30;
        if (*(*v30 + 344) == v4[9])
        {
          v32 = *(v31 + 328);
          v33 = (v31 + 336);
          if (v32 == v33)
          {
LABEL_62:
            if (v27)
            {
              sub_100004A34(v27);
            }

            goto LABEL_64;
          }

          v34 = *v7;
          while (v32[4] == v34[4] && *(v32 + 40) == *(v34 + 40) && *(v32 + 11) == *(v34 + 11))
          {
            v35 = v32[1];
            v36 = v32;
            if (v35)
            {
              do
              {
                v32 = v35;
                v35 = *v35;
              }

              while (v35);
            }

            else
            {
              do
              {
                v32 = v36[2];
                v12 = *v32 == v36;
                v36 = v32;
              }

              while (!v12);
            }

            v37 = v34[1];
            if (v37)
            {
              do
              {
                v38 = v37;
                v37 = *v37;
              }

              while (v37);
            }

            else
            {
              do
              {
                v38 = v34[2];
                v12 = *v38 == v34;
                v34 = v38;
              }

              while (!v12);
            }

            v34 = v38;
            if (v32 == v33)
            {
              goto LABEL_62;
            }
          }
        }

        LODWORD(buf) = *(v26 + 52);
        v39 = (*sub_100007DEC((a1 + 620), &buf) + 328);
        if (v39 != v7)
        {
          sub_10024F9C4(v39, v4[7], v4 + 8);
        }

        v40 = a1[5];
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = subscriber::asString();
          LODWORD(buf) = 136315138;
          *(&buf + 4) = v41;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I %s: slice persona featureState changed", &buf, 0xCu);
        }

        v44 = 1;
        goto LABEL_62;
      }
    }

LABEL_64:
    v42 = v4[1];
    if (v42)
    {
      do
      {
        v43 = v42;
        v42 = *v42;
      }

      while (v42);
    }

    else
    {
      do
      {
        v43 = v4[2];
        v12 = *v43 == v4;
        v4 = v43;
      }

      while (!v12);
    }

    v4 = v43;
  }

  while (v43 != a1 + 147);
  if (v44)
  {
    sub_10000501C(&buf, "feature state change");
    (*(*a1 + 2424))(a1, 3, &buf, 1);
    if (v46 < 0)
    {
      operator delete(buf);
    }
  }
}

void sub_1004AFB30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004AFB80(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 288) & 1) == 0)
  {
    v2 = *(v1 + 5456);
    *(v1 + 5456) = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    sub_100009970(v1 + 5128, *(v1 + 5136));
    *(v1 + 5128) = v1 + 5136;
    *(v1 + 5136) = 0u;
    sub_10000501C(__p, "App DB recovery");
    DataServiceController::updateSlicingDefinitionsWithAppDB(v1, __p);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1004AFC30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::sendNRSlicedRunningAppStateChanged_sync(DataServiceController *this)
{
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v1 = *(this + 623);
  v2 = this + 4992;
  if (v1 != this + 4992)
  {
    v34 = this + 4992;
    do
    {
      if (v1[128] == 1)
      {
        v3 = *(v1 + 31);
        if ((v3 - 5) >= 0xFFFFFFFE)
        {
          v68 = 0;
          v67 = 0u;
          memset(v66, 0, sizeof(v66));
          std::string::operator=(v66, (v1 + 32));
          v66[24] = v3 == 4;
          v4 = *(this + 14);
          *&v41 = *(this + 13);
          *(&v41 + 1) = v4;
          if (v4)
          {
            atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
          }

          subscriber::makeSimSlotRange();
          if (*(&v41 + 1))
          {
            sub_100004A34(*(&v41 + 1));
          }

          v5 = v63;
          v6 = v64;
          if (v63 != v64)
          {
            v7 = v65;
            do
            {
              if (v7(*v5))
              {
                break;
              }

              ++v5;
            }

            while (v5 != v6);
            v35 = v7;
            v36 = v64;
            while (v5 != v36)
            {
              v8 = sub_1000A8A0C(*(this + 18), *v5);
              v10 = *v8;
              v9 = *(v8 + 8);
              while (v10 != v9)
              {
                v12 = *v10;
                v11 = v10[1];
                if (v11)
                {
                  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                if (!v12)
                {
                  goto LABEL_55;
                }

                (*(*v12 + 488))(v12);
                if ((isSlice() & 1) == 0 || !(*(*v12 + 168))(v12))
                {
                  goto LABEL_55;
                }

                memset(&__str, 0, sizeof(__str));
                v13 = (*(*v12 + 416))(v12, &__str);
                v61 = 0u;
                memset(&v59, 0, sizeof(v59));
                v60 = &v61;
                std::string::operator=(&v59, &__str);
                v16 = *v13;
                v14 = v13 + 1;
                v15 = v16;
                if (v16 != v14)
                {
                  do
                  {
                    v57 = 0u;
                    v58 = 0u;
                    v55 = 0u;
                    v56 = 0u;
                    v53 = 0u;
                    v54 = 0u;
                    v51 = 0u;
                    v52 = 0u;
                    v49 = 0u;
                    v50 = 0u;
                    v47 = 0u;
                    v48 = 0u;
                    v45 = 0u;
                    v46 = 0u;
                    v43 = 0u;
                    v44 = 0u;
                    memset(v42, 0, sizeof(v42));
                    v41 = 0u;
                    TrafficDescriptor::TrafficDescriptor(&v41, (v15 + 4));
                    if (TrafficDescriptor::hasBundleInfo(&v41))
                    {
                      if ((BYTE8(v44) & 1) == 0)
                      {
                        sub_1000D1644();
                      }

                      if ((SBYTE7(v44) & 0x80u) == 0)
                      {
                        v17 = BYTE7(v44);
                      }

                      else
                      {
                        v17 = *(&v43 + 1);
                      }

                      v18 = v1[55];
                      v19 = v18;
                      if ((v18 & 0x80u) != 0)
                      {
                        v18 = *(v1 + 5);
                      }

                      if (v17 == v18)
                      {
                        v20 = (SBYTE7(v44) & 0x80u) == 0 ? &v43 : v43;
                        v21 = v19 >= 0 ? v1 + 32 : *(v1 + 4);
                        if (!memcmp(v20, v21, v17))
                        {
                          __p.n128_u8[0] = 0;
                          v40 = 0;
                          sub_10016A270(v42, &__p);
                          if (v40 == 1 && v39 < 0)
                          {
                            operator delete(__p.n128_u64[0]);
                          }

                          BYTE4(v41) = 0;
                          BYTE8(v41) = 0;
                          LODWORD(v41) = 0;
                          sub_100117AC4(&v60);
                        }
                      }
                    }

                    TrafficDescriptor::~TrafficDescriptor(&v41);
                    v22 = v15[1];
                    if (v22)
                    {
                      do
                      {
                        v23 = v22;
                        v22 = *v22;
                      }

                      while (v22);
                    }

                    else
                    {
                      do
                      {
                        v23 = v15[2];
                        v24 = *v23 == v15;
                        v15 = v23;
                      }

                      while (!v24);
                    }

                    v15 = v23;
                  }

                  while (v23 != v14);
                }

                if (*(&v61 + 1))
                {
                  v25 = *(&v67 + 1);
                  if (*(&v67 + 1) >= v68)
                  {
                    v26 = sub_1004BEF00(&v67, &v59);
                  }

                  else
                  {
                    sub_1004BF034(&v67, *(&v67 + 1), &v59);
                    v26 = v25 + 48;
                  }

                  *(&v67 + 1) = v26;
                }

                sub_10001BB0C(&v60, v61);
                if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v59.__r_.__value_.__l.__data_);
                }

                if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_55:
                  if (!v11)
                  {
                    goto LABEL_57;
                  }

LABEL_56:
                  sub_100004A34(v11);
                  goto LABEL_57;
                }

                operator delete(__str.__r_.__value_.__l.__data_);
                if (v11)
                {
                  goto LABEL_56;
                }

LABEL_57:
                v10 += 2;
              }

              for (++v5; v5 != v6; ++v5)
              {
                if (v35(*v5))
                {
                  break;
                }
              }
            }
          }

          v2 = v34;
          if (*(&v67 + 1) != v67)
          {
            v27 = v70;
            if (v70 >= v71)
            {
              v28 = sub_1004BF258(&v69, v66);
            }

            else
            {
              sub_1004BF3A4(&v69, v70, v66);
              v28 = v27 + 56;
            }

            v70 = v28;
          }

          *&v41 = &v67;
          sub_1004BF5A8(&v41);
          if ((v66[23] & 0x80000000) != 0)
          {
            operator delete(*v66);
          }
        }
      }

      v29 = *(v1 + 1);
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = *(v1 + 2);
          v24 = *v30 == v1;
          v1 = v30;
        }

        while (!v24);
      }

      v1 = v30;
    }

    while (v30 != v2);
  }

  if ((*(this + 5120) & 1) != 0 && (v31 = v69, v32 = v70, v33 = *(this + 637), v70 - v69 == *(this + 638) - v33))
  {
    while (v31 != v32)
    {
      if (!sub_1004BF7BC(v31, v33))
      {
        goto LABEL_82;
      }

      v31 = (v31 + 56);
      v33 += 7;
    }
  }

  else
  {
LABEL_82:
    sub_1004B02B0(this + 5096, &v69);
    (*(**(this + 573) + 144))(*(this + 573), &v69);
  }

  *&v41 = &v69;
  sub_1004BFFC4(&v41);
}

void sub_1004B01C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *(v20 - 104) = v19;
  a19 = a13;
  sub_1004BF5A8(&a19);
  if (*(v20 - 153) < 0)
  {
    operator delete(*(v20 - 176));
  }

  a19 = v20 - 112;
  sub_1004BFFC4(&a19);
  _Unwind_Resume(a1);
}

uint64_t sub_1004B02B0(uint64_t a1, std::string **a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      sub_1004BF98C(a1, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3));
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_1004BFF3C(a1, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3));
    *(a1 + 24) = 1;
  }

  return a1;
}

void DataServiceController::updateActiveSliceStatus_sync(DataServiceController *this)
{
  v2 = *(this + 14);
  v14 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  subscriber::makeSimSlotRange();
  if (v14)
  {
    sub_100004A34(v14);
  }

  v3 = v15;
  if (v15 == v16)
  {
    goto LABEL_25;
  }

  do
  {
    if (v17(*v3))
    {
      break;
    }

    ++v3;
  }

  while (v3 != v16);
  if (v3 == v16)
  {
LABEL_25:
    v11 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = *v3;
      if (sub_100097DB0(*(this + 18), *v3))
      {
        v6 = sub_1000A8A0C(*(this + 18), v5);
        v8 = *v6;
        v7 = *(v6 + 8);
        while (v8 != v7)
        {
          v10 = *v8;
          v9 = v8[1];
          if (v9)
          {
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v10)
          {
            (*(*v10 + 488))(v10);
            if (isSlice())
            {
              v4 += (*(*v10 + 168))(v10);
            }
          }

          if (v9)
          {
            sub_100004A34(v9);
          }

          v8 += 2;
        }
      }

      do
      {
        ++v3;
      }

      while (v3 != v16 && (v17(*v3) & 1) == 0);
    }

    while (v3 != v16);
    v11 = v4 != 0;
  }

  if ((*(this + 5227) & 1) == 0 || *(this + 5226) != v11)
  {
    *(this + 2613) = v11 | 0x100;
    v12 = (*(*this + 1120))(this);
    if (sub_100097DB0(*(this + 18), v12))
    {
      if (*(sub_1000A8A0C(*(this + 18), v12) + 24))
      {
        v13 = **(sub_1000A8A0C(*(this + 18), v12) + 24);
        (*(v13 + 976))();
      }
    }
  }
}

void sub_1004B05D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::makeSlicesStruct(DataServiceController *this)
{
  v1 = *(this + 14);
  v3 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  subscriber::makeSimSlotRange();
  if (v3)
  {
    sub_100004A34(v3);
  }

  v2 = v4;
  if (v4 != v5)
  {
    do
    {
      if (v6(*v2))
      {
        break;
      }

      ++v2;
    }

    while (v2 != v5);
    if (v2 != v5)
    {
      operator new();
    }
  }
}

void sub_1004B07F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

double DataServiceController::cleanSlicesStruct(DataServiceController *this)
{
  v2 = *(this + 620);
  v3 = this + 4968;
  if (v2 != this + 4968)
  {
    do
    {
      v4 = *(v2 + 5);
      if (v4)
      {
        sub_1004C0048(v4);
        operator delete();
      }

      v5 = *(v2 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v2 + 2);
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  sub_10006DCAC(this + 4960, *(this + 621));
  *(this + 620) = v3;
  result = 0.0;
  *(this + 4968) = 0u;
  return result;
}

uint64_t sub_1004B08C8(uint64_t a1, char a2, char a3, uint64_t a4)
{
  if (*(a4 + 24))
  {
    if (*a1)
    {
      goto LABEL_5;
    }

    sub_10000501C(__p, "not enabled");
    v8 = *(a4 + 24);
    if (!v8)
    {
      sub_100022DB4();
    }

    (*(*v8 + 48))(v8, __p);
    if (v19 < 0)
    {
      operator delete(__p[0]);
      if (a3)
      {
LABEL_6:
        sub_10000501C(__p, "inHome");
        v9 = *(a4 + 24);
        if (!v9)
        {
          sub_100022DB4();
        }

        goto LABEL_10;
      }
    }

    else
    {
LABEL_5:
      if (a3)
      {
        goto LABEL_6;
      }
    }

    sub_10000501C(__p, "not inHome");
    v9 = *(a4 + 24);
    if (!v9)
    {
      sub_100022DB4();
    }

LABEL_10:
    (*(*v9 + 48))(v9, __p);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    if (*(a1 + 19))
    {
      goto LABEL_15;
    }

    sub_10000501C(__p, "not internationalRoaming");
    v10 = *(a4 + 24);
    if (!v10)
    {
      sub_100022DB4();
    }

    (*(*v10 + 48))(v10, __p);
    if (v19 < 0)
    {
      operator delete(__p[0]);
      if ((a2 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
LABEL_15:
      if ((a2 & 1) == 0)
      {
LABEL_16:
        sub_10000501C(__p, "not hasInternalApps");
        v11 = *(a4 + 24);
        if (!v11)
        {
          sub_100022DB4();
        }

        (*(*v11 + 48))(v11, __p);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    if ((*(a1 + 128) & 1) == 0)
    {
      sub_10000501C(__p, "not allowedAppsAll");
      v12 = *(a4 + 24);
      if (!v12)
      {
        sub_100022DB4();
      }

      (*(*v12 + 48))(v12, __p);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (!*(a1 + 120))
    {
      sub_10000501C(__p, "not allowedApps.size()");
      v13 = *(a4 + 24);
      if (!v13)
      {
        sub_100022DB4();
      }

      (*(*v13 + 48))(v13, __p);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (*(a1 + 12) != 1 || (*(a1 + 13) & 1) == 0 && (*(a1 + 14) & 1) == 0)
    {
      sub_10000501C(__p, "not allowLLPHS()");
      v14 = *(a4 + 24);
      if (!v14)
      {
        sub_100022DB4();
      }

      (*(*v14 + 48))(v14, __p);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (*a1 != 1)
  {
    goto LABEL_46;
  }

  if (a3)
  {
    if (a2)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v15 = *(a1 + 19);
    if (v15 != 1 || (a2 & 1) != 0)
    {
      goto LABEL_47;
    }
  }

  if ((*(a1 + 128) & 1) != 0 || *(a1 + 120))
  {
    goto LABEL_42;
  }

  if (*(a1 + 12) != 1)
  {
LABEL_46:
    LOBYTE(v15) = 0;
    goto LABEL_47;
  }

  if (*(a1 + 13))
  {
LABEL_42:
    LOBYTE(v15) = 1;
    goto LABEL_47;
  }

  LOBYTE(v15) = *(a1 + 14);
LABEL_47:
  if (*(a4 + 24))
  {
    if (v15)
    {
      sub_10000501C(__p, "result true");
      v16 = *(a4 + 24);
      if (!v16)
      {
        sub_100022DB4();
      }
    }

    else
    {
      sub_10000501C(__p, "result false");
      v16 = *(a4 + 24);
      if (!v16)
      {
        sub_100022DB4();
      }
    }

    (*(*v16 + 48))(v16, __p);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v15 & 1;
}

void sub_1004B0D24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::adjustSlicesAppsDb(DataServiceController *this, int a2)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  if ((*(*this + 2296))(this))
  {
    if (a2)
    {
      LODWORD(__p[0]) = 6005;
      v5 = sub_1004C0254(&v22, __p, kFaceTimeBundleId);
    }

    else
    {
      v5 = sub_1004C03A8(&v22, &qword_101808710, kFaceTimeBundleId);
    }

    v6 = v5;
    v23 = v5;
    LODWORD(__p[0]) = 6014;
    if (v5 >= v24)
    {
      v4 = sub_1004C0254(&v22, __p, kGamedBundleId);
    }

    else
    {
      *v5 = 6014;
      sub_10000501C((v5 + 8), "com.apple.gamed");
      v4 = v6 + 32;
    }

    v23 = v4;
  }

  else
  {
    v4 = v23;
  }

  LODWORD(__p[0]) = 9001;
  if (v4 >= v24)
  {
    v7 = sub_1004C04B4(&v22, __p, "com.apple.tv");
  }

  else
  {
    *v4 = 9001;
    sub_10000501C((v4 + 8), "com.apple.tv");
    v7 = v4 + 32;
  }

  v23 = v7;
  LODWORD(__p[0]) = 6011;
  if (v7 >= v24)
  {
    v8 = sub_1004C05C0(&v22, __p, "com.apple.Music");
  }

  else
  {
    *v7 = 6011;
    sub_10000501C((v7 + 8), "com.apple.Music");
    v8 = v7 + 32;
  }

  v23 = v8;
  for (i = v22; i != v8; i = (v10 + 3))
  {
    v11 = *i;
    v10 = (i + 1);
    DataServiceController::hardcodeGenreApp(this, v11, v10, 1);
  }

  v25 = (*(*this + 1120))(this);
  if (*(*sub_100007DEC(this + 4960, &v25) + 16) == 1)
  {
    v12 = 0;
    v13 = this + 4992;
    do
    {
      v14 = off_101E50100[v12];
      sub_10000501C(__p, v14);
      v15 = sub_100007A6C(this + 4984, __p);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }

      if (v13 != v15)
      {
        sub_10000501C(__p, v14);
        sub_10017695C(this + 5152, __p);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }
      }

      ++v12;
    }

    while (v12 != 11);
    v16 = *(this + 644);
    if (v16 != (this + 5160))
    {
      do
      {
        if (v13 != sub_100007A6C(this + 4984, v16 + 4))
        {
          DataServiceController::hardcodeGenreCallKitApp(this, v16 + 4);
        }

        v17 = *(v16 + 1);
        if (v17)
        {
          do
          {
            v18 = v17;
            v17 = *v17;
          }

          while (v17);
        }

        else
        {
          do
          {
            v18 = *(v16 + 2);
            v19 = *v18 == v16;
            v16 = v18;
          }

          while (!v19);
        }

        v16 = v18;
      }

      while (v18 != (this + 5160));
    }
  }

  __p[0] = &v22;
  sub_10001E200(__p);
}

void sub_1004B10F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17)
{
  __p = &a16;
  sub_10001E200(&__p);
  _Unwind_Resume(a1);
}

void DataServiceController::hardcodeGenreApp(uint64_t a1, unint64_t a2, void **a3, int a4)
{
  v23 = a2;
  if (a4)
  {
    v21 = 0;
    v22 = 0;
    v20 = &v21;
    v6 = *(a1 + 5056);
    v7 = (a1 + 5064);
    if (v6 != (a1 + 5064))
    {
      do
      {
        if (v6[4] != v23)
        {
          sub_1004C12FC(&v20, v6 + 4);
        }

        v8 = v6[1];
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = v6[2];
            v10 = *v9 == v6;
            v6 = v9;
          }

          while (!v10);
        }

        v6 = v9;
      }

      while (v9 != v7);
      v11 = v20;
      if (v20 != &v21)
      {
        do
        {
          v18 = (v11 + 4);
          v12 = sub_1004C5010(a1 + 5056, v11 + 4);
          sub_1000727F0(v12 + 5, a3);
          v13 = v11[1];
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
              v14 = v11[2];
              v10 = *v14 == v11;
              v11 = v14;
            }

            while (!v10);
          }

          v11 = v14;
        }

        while (v14 != &v21);
      }
    }

    sub_10006DCAC(&v20, v21);
  }

  v20 = &v23;
  v15 = sub_1004C5010(a1 + 5056, &v23);
  sub_100005BA0((v15 + 5), a3);
  sub_1004C12FC(a1 + 5008, &v23);
  v21 = 0;
  v22 = 0;
  v20 = &v21;
  sub_1004C12FC(&v20, &v23);
  v16 = sub_1004C2088(a1 + 4984, a3);
  sub_1004B16B8(v16 + 56, &v20);
  v19[0] = 0;
  v19[1] = 0;
  v18 = v19;
  LODWORD(v24) = 100;
  do
  {
    sub_1004C50EC(&v18, &v24);
    LODWORD(v24) = v24 + 100;
  }

  while (v24 < 0x3E8);
  v24 = a3;
  v17 = sub_1004C2088(a1 + 4984, a3);
  sub_1004B1718(v17 + 136, &v18);
  sub_10006DCAC(&v18, v19[0]);
  sub_10006DCAC(&v20, v21);
}

void sub_1004B13C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11, uint64_t a12, char a13, void *a14)
{
  sub_10006DCAC(&a10, a11);
  sub_10006DCAC(&a13, a14);
  _Unwind_Resume(a1);
}

uint64_t *DataServiceController::hardcodeGenreCallKitApp(uint64_t a1, void **a2)
{
  v19 = 9000;
  v4 = sub_1004C5010(a1 + 5056, &v19);
  sub_100005BA0((v4 + 5), a2);
  sub_1004C12FC(a1 + 5008, &v19);
  v16 = a2;
  if ((*(sub_1004C2088(a1 + 4984, a2) + 80) & 1) == 0)
  {
    v17 = 0;
    v18 = 0;
    v16 = &v17;
    v20 = a2;
    v5 = sub_1004C2088(a1 + 4984, a2);
    sub_1004B1778(v5 + 56, &v16);
    sub_10006DCAC(&v16, v17);
  }

  v16 = a2;
  v6 = sub_1004C2088(a1 + 4984, a2);
  if ((*(v6 + 80) & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_1004C12FC(v6 + 56, &v19);
  v16 = a2;
  if ((*(sub_1004C2088(a1 + 4984, a2) + 160) & 1) == 0)
  {
    v17 = 0;
    v18 = 0;
    v16 = &v17;
    v20 = a2;
    v7 = sub_1004C2088(a1 + 4984, a2);
    sub_1004B1778(v7 + 136, &v16);
    sub_10006DCAC(&v16, v17);
  }

  v8 = qword_101FBA3C0;
  if (qword_101FBA3C0 != &unk_101FBA3C8)
  {
    while (1)
    {
      v9 = *(v8 + 26);
      v16 = a2;
      v10 = sub_1004C2088(a1 + 4984, a2);
      if ((*(v10 + 160) & 1) == 0)
      {
        break;
      }

      LODWORD(v16) = v9;
      sub_1004C50EC(v10 + 136, &v16);
      v11 = *(v8 + 8);
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = *(v8 + 16);
          v13 = *v12 == v8;
          v8 = v12;
        }

        while (!v13);
      }

      v8 = v12;
      if (v12 == &unk_101FBA3C8)
      {
        goto LABEL_14;
      }
    }

LABEL_16:
    sub_1000D1644();
  }

LABEL_14:
  v16 = a2;
  v14 = sub_1004C2088(a1 + 4984, a2);
  if ((*(v14 + 160) & 1) == 0)
  {
    goto LABEL_16;
  }

  LODWORD(v16) = 0;
  return sub_1004C50EC(v14 + 136, &v16);
}

uint64_t sub_1004B16B8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      sub_1004C06CC(a1, *a2, (a2 + 8));
    }
  }

  else
  {
    sub_1002B84C8(a1, a2);
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t sub_1004B1718(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      sub_1004C08D0(a1, *a2, (a2 + 8));
    }
  }

  else
  {
    sub_1004C0AD4(a1, a2);
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t sub_1004B1778(uint64_t a1, void *a2)
{
  if (*(a1 + 24) == 1)
  {
    sub_10004645C(a1, a2);
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

BOOL DataServiceController::checkSlicingDnnValidity_sync(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a3 + 8);
  }

  if (!v3)
  {
    return 1;
  }

  v20 = a2;
  v7 = *sub_100007DEC(a1 + 4960, &v20);
  v8 = (v7 + 256);
  v9 = strlen(kWildCardDnn);
  v10 = v9;
  v11 = *(v7 + 279);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v12 = (v7 + 256);
    if (v10 != v11)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v9 == *(v7 + 264))
  {
    if (v9 == -1)
    {
      sub_10013C334();
    }

    v12 = *v8;
LABEL_10:
    if (memcmp(v12, kWildCardDnn, v10))
    {
      goto LABEL_11;
    }

    v21 = a2;
    v19 = sub_100007DEC(a1 + 4960, &v21);
    std::string::operator=((*v19 + 304), a3);
    return 1;
  }

LABEL_11:
  v13 = *(a3 + 23);
  if (v13 >= 0)
  {
    v14 = *(a3 + 23);
  }

  else
  {
    v14 = *(a3 + 8);
  }

  v15 = *(v7 + 264);
  if (v11 >= 0)
  {
    v15 = v11;
  }

  if (v14 != v15)
  {
    return 0;
  }

  if (v13 >= 0)
  {
    v16 = a3;
  }

  else
  {
    v16 = *a3;
  }

  if (v11 >= 0)
  {
    v17 = (v7 + 256);
  }

  else
  {
    v17 = *v8;
  }

  return memcmp(v16, v17, v14) == 0;
}

BOOL DataServiceController::validSlicingOsId_sync(uint64_t a1, int a2, void *a3)
{
  v10 = a2;
  v4 = sub_100007DEC(a1 + 4960, &v10);
  v5 = *v4;
  if (*(*v4 + 208) != 1)
  {
    return 1;
  }

  v6 = *(v5 + 209);
  v7 = *(v5 + 217);
  return *a3 == v6 && a3[1] == v7;
}

__n128 DataServiceController::slicingOsId_sync(uint64_t a1, int a2, __n128 *a3)
{
  v6 = a2;
  v4 = sub_100007DEC(a1 + 4960, &v6);
  if (*(*v4 + 208) == 1)
  {
    result = *(*v4 + 209);
    *a3 = result;
  }

  return result;
}

__n128 non-virtual thunk toDataServiceController::slicingOsId_sync(uint64_t a1, int a2, __n128 *a3)
{
  v6 = a2;
  v4 = sub_100007DEC(a1 + 4880, &v6);
  if (*(*v4 + 208) == 1)
  {
    result = *(*v4 + 209);
    *a3 = result;
  }

  return result;
}

uint64_t DataServiceController::isAllowedAppOnAnySim(uint64_t a1, void **a2)
{
  v4 = *(a1 + 112);
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  subscriber::makeSimSlotRange();
  if (v9)
  {
    sub_100004A34(v9);
  }

  v5 = v10;
  if (v10 == v11)
  {
    return 0;
  }

  do
  {
    if (v12(*v5))
    {
      break;
    }

    ++v5;
  }

  while (v5 != v11);
  if (v5 == v11)
  {
    return 0;
  }

  while (1)
  {
    isAllowedApp = DataServiceController::isAllowedApp(a1, *v5, a2);
    if (isAllowedApp)
    {
      break;
    }

    v7 = isAllowedApp;
    do
    {
      ++v5;
    }

    while (v5 != v11 && (v12(*v5) & 1) == 0);
    if (v5 == v11)
    {
      return v7;
    }
  }

  return 1;
}

void sub_1004B1B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DataServiceController::isGoodAppCategory(uint64_t a1, int a2, unint64_t a3)
{
  v14 = a2;
  v5 = *sub_100007DEC(a1 + 4960, &v14);
  if (a3 == -1 && (*(a1 + 5346) & 1) != 0)
  {
    goto LABEL_13;
  }

  v6 = *(v5 + 336);
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v5 + 336;
  v8 = v5 + 336;
  do
  {
    v9 = *(v6 + 32);
    v10 = v9 >= a3;
    v11 = v9 < a3;
    if (v10)
    {
      v8 = v6;
    }

    v6 = *(v6 + 8 * v11);
  }

  while (v6);
  if (v8 == v7 || *(v8 + 32) > a3 || !*(v8 + 44))
  {
LABEL_13:
    v12 = 1;
  }

  else
  {
    v12 = *(v8 + 40);
  }

  return v12 & 1;
}

void DataServiceController::dumpSliceData_sync(DataServiceController *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: ========== Slicing: ==========", buf, 2u);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = asStringBool(*(this + 5348));
    *buf = 136315138;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: internalOrCarrierBuild: %s", buf, 0xCu);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (*(*this + 1120))(this);
    v5 = (*(*this + 1120))(this);
    v6 = (*(*this + 1120))(this);
    v7 = (*(*this + 1064))(this, v6);
    v269 = 0;
    v8 = DataServiceController::SlicesDataContainer::configured(this + 4960, v4, v5, v7, v268);
    v9 = asStringBool(v8);
    *buf = 136315138;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: configured(1): %s", buf, 0xCu);
    sub_100007E44(v268);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = asStringBool(*(this + 5224));
    *buf = 136315138;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: managedConfigObserverRegistered=%s", buf, 0xCu);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v11 = asStringBool(*(this + 5225));
    *buf = 136315138;
    *&buf[4] = v11;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: appObserverRegistered=%s", buf, 0xCu);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v12 = asStringBool();
    *buf = 136315138;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: activeSliceStatus: %s", buf, 0xCu);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v13 = asStringBool(*(this + 657) != 0);
    *buf = 136446210;
    *&buf[4] = v13;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: vpnManager: %{public}s", buf, 0xCu);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v14 = asStringBool(*(this + 5272));
    *buf = 136315138;
    *&buf[4] = v14;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: vpnActive: %s", buf, 0xCu);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v15 = asStringBool(*(this + 5273));
    *buf = 136315138;
    *&buf[4] = v15;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: vpnUsesPolicyBasedRouting: %s", buf, 0xCu);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v16 = asStringBool(*(this + 663) != 0);
    *buf = 136446210;
    *&buf[4] = v16;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: terminusAvailabilityManager: %{public}s", buf, 0xCu);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v17 = asStringBool(*(this + 5320));
    *buf = 136315138;
    *&buf[4] = v17;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: vrConnected: %s", buf, 0xCu);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v18 = asStringBool(*(this + 5344));
    *buf = 136315138;
    *&buf[4] = v18;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: ftCallStarting: %s", buf, 0xCu);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v19 = asStringBool(*(this + 5345));
    *buf = 136315138;
    *&buf[4] = v19;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: ftCallActive: %s", buf, 0xCu);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(this + 1307);
    *buf = 67109120;
    *&buf[4] = v20;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: screenLockRegToken: %d", buf, 8u);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(this + 1308);
    *buf = 67109120;
    *&buf[4] = v21;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: slicingLLPHSStateNotifyToken: %d", buf, 8u);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(this + 1309);
    *buf = 67109120;
    *&buf[4] = v22;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: slicingLLPHSStateNotifyTokenSecure: %d", buf, 8u);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(this + 1310);
    *buf = 67109120;
    *&buf[4] = v23;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: slicingInterfacesActiveStateNotifyToken: %d", buf, 8u);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(this + 1311);
    *buf = 67109120;
    *&buf[4] = v24;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: slicingInterfacesActiveStateNotifyTokenSecure: %d", buf, 8u);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v25 = asStringBool(*(this + 5346));
    *buf = 136315138;
    *&buf[4] = v25;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: supervisedDevice: %s", buf, 0xCu);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v26 = asStringBool(*(this + 5347));
    *buf = 136315138;
    *&buf[4] = v26;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: managedDevice: %s", buf, 0xCu);
  }

  v27 = *(this + 635);
  if (v27 && v27[2])
  {
    v28 = *(this + 5);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I DATA:: genreNames:", buf, 2u);
      v27 = *(this + 635);
    }

    v31 = *v27;
    v29 = v27 + 1;
    v30 = v31;
    if (v31 != v29)
    {
      do
      {
        v32 = *(this + 5);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = v30 + 5;
          if (*(v30 + 63) < 0)
          {
            v33 = *v33;
          }

          v34 = v30[4];
          *buf = 134218242;
          *&buf[4] = v34;
          *&buf[12] = 2080;
          *&buf[14] = v33;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t%lu\t%s", buf, 0x16u);
        }

        v35 = v30[1];
        if (v35)
        {
          do
          {
            v36 = v35;
            v35 = *v35;
          }

          while (v35);
        }

        else
        {
          do
          {
            v36 = v30[2];
            v37 = *v36 == v30;
            v30 = v36;
          }

          while (!v37);
        }

        v30 = v36;
      }

      while (v36 != v29);
    }
  }

  if (*(this + 673))
  {
    v38 = *(this + 5);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I DATA:: internalSliceAppCategory:", buf, 2u);
    }

    v39 = *(this + 671);
    if (v39 != (this + 5376))
    {
      do
      {
        v40 = *(this + 5);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = (v39 + 48);
          if (*(v39 + 71) < 0)
          {
            v41 = *v41;
          }

          v42 = (v39 + 72);
          if (*(v39 + 95) < 0)
          {
            v42 = *v42;
          }

          v43 = (v39 + 96);
          if (*(v39 + 119) < 0)
          {
            v43 = *v43;
          }

          v44 = *(v39 + 8);
          v45 = *(v39 + 5);
          *buf = 67110146;
          *&buf[4] = v44;
          *&buf[8] = 2082;
          *&buf[10] = v41;
          *&buf[18] = 2082;
          *&buf[20] = v42;
          *&buf[28] = 2082;
          *&buf[30] = v43;
          v266 = 2048;
          v267 = v45;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\tpid=%d procName=%{public}s bundleId=%{public}s uuid=%{public}s category=%llu", buf, 0x30u);
        }

        v46 = *(v39 + 1);
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
            v47 = *(v39 + 2);
            v37 = *v47 == v39;
            v39 = v47;
          }

          while (!v37);
        }

        v39 = v47;
      }

      while (v47 != (this + 5376));
    }
  }

  v48 = *(this + 623);
  if (v48 != (this + 4992))
  {
    do
    {
      v49 = *(this + 5);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = v48 + 32;
        if (*(v48 + 55) < 0)
        {
          v50 = *(v48 + 4);
        }

        *buf = 136446210;
        *&buf[4] = v50;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I DATA:: \tapp: %{public}s", buf, 0xCu);
        v49 = *(this + 5);
      }

      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v51 = (*(*this + 2448))(this, v48 + 32);
        v52 = asStringBool(v51);
        *buf = 136446210;
        *&buf[4] = v52;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I DATA::     \treadCallKitApp: %{public}s", buf, 0xCu);
      }

      if (*(v48 + 128) == 1)
      {
        v53 = *(this + 5);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          v54 = rest::asString();
          if ((*(v48 + 128) & 1) == 0)
          {
            sub_1000D1644();
          }

          v55 = *(v48 + 31);
          *buf = 136315394;
          *&buf[4] = v54;
          *&buf[12] = 1024;
          *&buf[14] = v55;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I DATA::     \tappRunningStatus: %s (%d)", buf, 0x12u);
        }
      }

      if (*(v48 + 121) == 1)
      {
        v56 = *(this + 5);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v57 = asStringBool(*(v48 + 120));
          *buf = 136315138;
          *&buf[4] = v57;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#I DATA::     \tappsBackgroundNetworkMode: %s", buf, 0xCu);
        }
      }

      if (*(v48 + 112) == 1)
      {
        v58 = *(this + 5);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\tappUUids:", buf, 2u);
          if ((*(v48 + 112) & 1) == 0)
          {
            sub_1000D1644();
          }
        }

        v59 = *(v48 + 11);
        if (v59 != (v48 + 96))
        {
          do
          {
            v60 = *(this + 5);
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              v61 = v59 + 4;
              if (*(v59 + 55) < 0)
              {
                v61 = *v61;
              }

              *buf = 136446210;
              *&buf[4] = v61;
              _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I DATA::     \t\tuuid %{public}s", buf, 0xCu);
            }

            v62 = v59[1];
            if (v62)
            {
              do
              {
                v63 = v62;
                v62 = *v62;
              }

              while (v62);
            }

            else
            {
              do
              {
                v63 = v59[2];
                v37 = *v63 == v59;
                v59 = v63;
              }

              while (!v37);
            }

            v59 = v63;
          }

          while (v63 != (v48 + 96));
        }
      }

      if (*(v48 + 80) == 1)
      {
        v64 = *(v48 + 7);
        if (v64 != (v48 + 64))
        {
          do
          {
            v65 = *(this + 5);
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
            {
              v66 = v64[4];
              *buf = 134217984;
              *&buf[4] = v66;
              _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "#I DATA::     \tgenre: %llu", buf, 0xCu);
            }

            v67 = v64[1];
            if (v67)
            {
              do
              {
                v68 = v67;
                v67 = *v67;
              }

              while (v67);
            }

            else
            {
              do
              {
                v68 = v64[2];
                v37 = *v68 == v64;
                v64 = v68;
              }

              while (!v37);
            }

            v64 = v68;
          }

          while (v68 != (v48 + 64));
        }
      }

      if (*(v48 + 160) == 1)
      {
        v69 = *(v48 + 17);
        if (v69 != (v48 + 144))
        {
          do
          {
            v70 = *(this + 5);
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
            {
              v71 = *(v69 + 7);
              *buf = 134217984;
              *&buf[4] = v71;
              _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "#I DATA::     \ttrafficClass: %lu", buf, 0xCu);
            }

            v72 = v69[1];
            if (v72)
            {
              do
              {
                v73 = v72;
                v72 = *v72;
              }

              while (v72);
            }

            else
            {
              do
              {
                v73 = v69[2];
                v37 = *v73 == v69;
                v69 = v73;
              }

              while (!v37);
            }

            v69 = v73;
          }

          while (v73 != (v48 + 144));
        }
      }

      v74 = *(v48 + 1);
      if (v74)
      {
        do
        {
          v75 = v74;
          v74 = *v74;
        }

        while (v74);
      }

      else
      {
        do
        {
          v75 = *(v48 + 2);
          v37 = *v75 == v48;
          v48 = v75;
        }

        while (!v37);
      }

      v48 = v75;
    }

    while (v75 != (this + 4992));
  }

  if ((*(this + 5120) & 1) != 0 && *(this + 638) != *(this + 637))
  {
    v76 = *(this + 5);
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "#I DATA::     appsInfo:", buf, 2u);
      if ((*(this + 5120) & 1) == 0)
      {
        sub_1000D1644();
      }
    }

    v77 = *(this + 637);
    for (i = *(this + 638); v77 != i; v77 += 7)
    {
      if (DataServiceController::isAllowedAppOnAnySim(this, v77))
      {
        v78 = *(this + 5);
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          v79 = v77;
          if (*(v77 + 23) < 0)
          {
            v79 = *v77;
          }

          v80 = asStringBool(*(v77 + 24));
          *buf = 136446466;
          *&buf[4] = v79;
          *&buf[12] = 2080;
          *&buf[14] = v80;
          _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "#I DATA::     \tbundleId: %{public}s foreground: %s", buf, 0x16u);
        }

        v82 = v77[4];
        v81 = v77[5];
        while (v82 != v81)
        {
          v83 = *(this + 5);
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            v84 = v82;
            if (*(v82 + 23) < 0)
            {
              v84 = *v82;
            }

            *buf = 136446210;
            *&buf[4] = v84;
            _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "#I DATA::     \tinterface: %{public}s", buf, 0xCu);
          }

          v85 = v82[3];
          if (v85 != v82 + 4)
          {
            do
            {
              v86 = *(this + 5);
              if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
              {
                TrafficDescriptor::toString(buf, (v85 + 4));
                v87 = buf[23] >= 0 ? buf : *buf;
                LODWORD(v263) = 136446210;
                *(&v263 + 4) = v87;
                _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "#I DATA::     \t\ttd: %{public}s", &v263, 0xCu);
                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }
              }

              v88 = v85[1];
              if (v88)
              {
                do
                {
                  v89 = v88;
                  v88 = *v88;
                }

                while (v88);
              }

              else
              {
                do
                {
                  v89 = v85[2];
                  v37 = *v89 == v85;
                  v85 = v89;
                }

                while (!v37);
              }

              v85 = v89;
            }

            while (v89 != v82 + 4);
          }

          v82 += 6;
        }
      }
    }
  }

  v90 = *(this + 5);
  if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "#I DATA:: genres vs apps:", buf, 2u);
  }

  v91 = *(this + 632);
  if (v91 != (this + 5064))
  {
    do
    {
      v92 = *(this + 5);
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
      {
        v93 = *(v91 + 4);
        *buf = 134217984;
        *&buf[4] = v93;
        _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "#I DATA::       \t\tgenre %llu", buf, 0xCu);
      }

      v94 = *(v91 + 5);
      if (v94 != (v91 + 48))
      {
        do
        {
          v95 = *(this + 5);
          if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
          {
            v96 = v94 + 4;
            if (*(v94 + 55) < 0)
            {
              v96 = *v96;
            }

            *buf = 136446210;
            *&buf[4] = v96;
            _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "#I DATA::       \t\t\tapp %{public}s", buf, 0xCu);
          }

          v97 = v94[1];
          if (v97)
          {
            do
            {
              v98 = v97;
              v97 = *v97;
            }

            while (v97);
          }

          else
          {
            do
            {
              v98 = v94[2];
              v37 = *v98 == v94;
              v94 = v98;
            }

            while (!v37);
          }

          v94 = v98;
        }

        while (v98 != (v91 + 48));
      }

      v99 = *(v91 + 1);
      if (v99)
      {
        do
        {
          v100 = v99;
          v99 = *v99;
        }

        while (v99);
      }

      else
      {
        do
        {
          v100 = *(v91 + 2);
          v37 = *v100 == v91;
          v91 = v100;
        }

        while (!v37);
      }

      v91 = v100;
    }

    while (v100 != (this + 5064));
  }

  v101 = *(this + 5);
  if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "#I DATA:: all local apps genres:", buf, 2u);
  }

  v102 = *(this + 626);
  if (v102 != (this + 5016))
  {
    do
    {
      v103 = *(this + 5);
      if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
      {
        v104 = *(v102 + 4);
        *buf = 134217984;
        *&buf[4] = v104;
        _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "#I DATA::       \t\tgenre %llu", buf, 0xCu);
      }

      v105 = *(v102 + 1);
      if (v105)
      {
        do
        {
          v106 = v105;
          v105 = *v105;
        }

        while (v105);
      }

      else
      {
        do
        {
          v106 = *(v102 + 2);
          v37 = *v106 == v102;
          v102 = v106;
        }

        while (!v37);
      }

      v102 = v106;
    }

    while (v106 != (this + 5016));
  }

  v107 = *(this + 5);
  if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "#I DATA:: slicing genres:", buf, 2u);
  }

  v108 = *(this + 629);
  if (v108 != (this + 5040))
  {
    do
    {
      v109 = *(this + 5);
      if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
      {
        v110 = *(v108 + 4);
        *buf = 134217984;
        *&buf[4] = v110;
        _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "#I DATA::       \t\tgenre %llu", buf, 0xCu);
      }

      v111 = *(v108 + 1);
      if (v111)
      {
        do
        {
          v112 = v111;
          v111 = *v111;
        }

        while (v111);
      }

      else
      {
        do
        {
          v112 = *(v108 + 2);
          v37 = *v112 == v108;
          v108 = v112;
        }

        while (!v37);
      }

      v108 = v112;
    }

    while (v112 != (this + 5040));
  }

  v113 = *(this + 5);
  if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "#I DATA:: frontApps:", buf, 2u);
  }

  v114 = *(this + 142);
  for (j = *(this + 143); v114 != j; v114 += 3)
  {
    v116 = *(this + 5);
    if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
    {
      v117 = v114;
      if (*(v114 + 23) < 0)
      {
        v117 = *v114;
      }

      *buf = 136446210;
      *&buf[4] = v117;
      _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "#I DATA::     \tapp: %{public}s", buf, 0xCu);
    }
  }

  if (*(this + 643))
  {
    v118 = *(this + 5);
    if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "#I DATA:: Rogue Apps:", buf, 2u);
    }

    v119 = *(this + 641);
    if (v119 != (this + 5136))
    {
      do
      {
        v120 = *(this + 5);
        if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
        {
          v121 = (v119 + 32);
          if (*(v119 + 55) < 0)
          {
            v121 = *v121;
          }

          *buf = 136446210;
          *&buf[4] = v121;
          _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "#I DATA::     \tapp: %{public}s", buf, 0xCu);
        }

        v122 = *(v119 + 1);
        if (v122)
        {
          do
          {
            v123 = v122;
            v122 = *v122;
          }

          while (v122);
        }

        else
        {
          do
          {
            v123 = *(v119 + 2);
            v37 = *v123 == v119;
            v119 = v123;
          }

          while (!v37);
        }

        v119 = v123;
      }

      while (v123 != (this + 5136));
    }
  }

  if (*(this + 646))
  {
    v124 = *(this + 5);
    if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "#I DATA:: CallKit Apps:", buf, 2u);
    }

    v125 = *(this + 644);
    if (v125 != (this + 5160))
    {
      do
      {
        v126 = *(this + 5);
        if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
        {
          v127 = (v125 + 32);
          if (*(v125 + 55) < 0)
          {
            v127 = *v127;
          }

          *buf = 136446210;
          *&buf[4] = v127;
          _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "#I DATA::     \tapp: %{public}s", buf, 0xCu);
        }

        v128 = *(v125 + 1);
        if (v128)
        {
          do
          {
            v129 = v128;
            v128 = *v128;
          }

          while (v128);
        }

        else
        {
          do
          {
            v129 = *(v125 + 2);
            v37 = *v129 == v125;
            v125 = v129;
          }

          while (!v37);
        }

        v125 = v129;
      }

      while (v129 != (this + 5160));
    }
  }

  if (*(this + 652))
  {
    v130 = *(this + 5);
    if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "#I DATA:: Forwarded Apps:", buf, 2u);
    }

    v131 = *(this + 650);
    if (v131 != (this + 5208))
    {
      do
      {
        v132 = *(this + 5);
        if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
        {
          v133 = (v131 + 32);
          if (*(v131 + 55) < 0)
          {
            v133 = *v133;
          }

          v134 = ((std::chrono::steady_clock::now().__d_.__rep_ - *(v131 + 7)) * 0x112E0BE826D694B3) >> 64;
          *buf = 136446466;
          *&buf[4] = v133;
          *&buf[12] = 2048;
          *&buf[14] = (v134 >> 26) + (v134 >> 63);
          _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEFAULT, "#I DATA::     \tapp: %{public}s timestamp: %llu secs old", buf, 0x16u);
        }

        v135 = *(v131 + 1);
        if (v135)
        {
          do
          {
            v136 = v135;
            v135 = *v135;
          }

          while (v135);
        }

        else
        {
          do
          {
            v136 = *(v131 + 2);
            v37 = *v136 == v131;
            v131 = v136;
          }

          while (!v37);
        }

        v131 = v136;
      }

      while (v136 != (this + 5208));
    }
  }

  if (*(this + 662))
  {
    v137 = *(this + 5);
    if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "#I DATA:: vpnAgnosticApps:", buf, 2u);
    }

    v138 = *(this + 660);
    if (v138 != (this + 5288))
    {
      do
      {
        v139 = *(this + 5);
        if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
        {
          v140 = (v138 + 32);
          if (*(v138 + 55) < 0)
          {
            v140 = *v140;
          }

          *buf = 136315138;
          *&buf[4] = v140;
          _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t%s", buf, 0xCu);
        }

        v141 = *(v138 + 1);
        if (v141)
        {
          do
          {
            v142 = v141;
            v141 = *v141;
          }

          while (v141);
        }

        else
        {
          do
          {
            v142 = *(v138 + 2);
            v37 = *v142 == v138;
            v138 = v142;
          }

          while (!v37);
        }

        v138 = v142;
      }

      while (v142 != (this + 5288));
    }
  }

  v143 = *(this + 14);
  *buf = *(this + 13);
  *&buf[8] = v143;
  if (v143)
  {
    atomic_fetch_add_explicit((v143 + 8), 1uLL, memory_order_relaxed);
  }

  subscriber::makeSimSlotRange();
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v255 = *(&v263 + 1);
  v144 = v263;
  if (v263 != *(&v263 + 1))
  {
    v254 = v264;
    do
    {
      if (v254(*v144))
      {
        break;
      }

      ++v144;
    }

    while (v144 != v255);
    v252 = *(&v263 + 1);
    while (v144 != v252)
    {
      v145 = *v144;
      v146 = *(this + 5);
      if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
      {
        v147 = subscriber::asString();
        *buf = 136315138;
        *&buf[4] = v147;
        _os_log_impl(&_mh_execute_header, v146, OS_LOG_TYPE_DEFAULT, "#I DATA::     ---------------- simSlot: %s ----------------", buf, 0xCu);
      }

      *buf = v145;
      v148 = *sub_100007DEC(this + 4960, buf);
      *buf = off_101E50788;
      *&buf[8] = this;
      *&buf[16] = v145;
      *&buf[24] = buf;
      v149 = *(this + 5);
      if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
      {
        sub_1001058C4(v260, buf);
        SlicingSupportInfo = DataServiceController::getSlicingSupportInfo(this, v145, v260);
        v151 = asStringBool(SlicingSupportInfo & 1);
        *v261 = 136315138;
        v262 = v151;
        _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_DEFAULT, "#I DATA::     getSlicingSupportInfo: %s", v261, 0xCu);
        sub_100007E44(v260);
      }

      sub_100007E44(buf);
      v152 = *(this + 5);
      v256 = v148;
      v253 = v253 & 0xFFFFFFFF00000000 | v145;
      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v153 = *(this + 673) != 0;
        v154 = (*(*this + 1064))(this, v145);
        v259 = 0;
        v155 = sub_1004B08C8(v256, v153, v154, v258);
        v156 = asStringBool(v155);
        *buf = 136315138;
        *&buf[4] = v156;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     configured(2): %s", buf, 0xCu);
        sub_100007E44(v258);
        v152 = *(this + 5);
        v148 = v256;
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v157 = (*(*this + 2272))(this, v145, 0);
        v158 = asStringBool(v157);
        *buf = 136315138;
        *&buf[4] = v158;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     useInternetSlicing_sync: %s", buf, 0xCu);
        v152 = *(this + 5);
        v148 = v256;
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v159 = asStringBool(*v148);
        *buf = 136315138;
        *&buf[4] = v159;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     enabled: %s", buf, 0xCu);
        v152 = *(this + 5);
        v148 = v256;
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v160 = asStringBool(*(v148 + 1));
        *buf = 136315138;
        *&buf[4] = v160;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     managedApps: %s", buf, 0xCu);
        v152 = *(this + 5);
        v148 = v256;
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v161 = asStringBool(*(v148 + 2));
        *buf = 136315138;
        *&buf[4] = v161;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     managedSliceApps: %s", buf, 0xCu);
        v152 = *(this + 5);
        v148 = v256;
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v162 = asStringBool(*(v148 + 21));
        *buf = 136315138;
        *&buf[4] = v162;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     wifiSupported: %s", buf, 0xCu);
        v152 = *(this + 5);
        v148 = v256;
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v163 = asStringBool(*(v148 + 23));
        *buf = 136315138;
        *&buf[4] = v163;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     entitlementsGenres: %s", buf, 0xCu);
        v152 = *(this + 5);
        v148 = v256;
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v164 = asStringBool(*(v148 + 22));
        *buf = 136315138;
        *&buf[4] = v164;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     shutdownOnDataModeChange: %s", buf, 0xCu);
        v152 = *(this + 5);
        v148 = v256;
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v165 = asStringBool(*(v148 + 24));
        *buf = 136315138;
        *&buf[4] = v165;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     allowSocketAPIWithTrafficClasses: %s", buf, 0xCu);
        v152 = *(this + 5);
        v148 = v256;
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v166 = *(v148 + 4);
        *buf = 67109120;
        *&buf[4] = v166;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     technologyMask: %u", buf, 8u);
        v152 = *(this + 5);
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v167 = *(v148 + 8);
        *buf = 67109120;
        *&buf[4] = v167;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     sliceInactivityTimeoutSecs: %u", buf, 8u);
        v152 = *(this + 5);
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v168 = *(v148 + 12);
        *buf = 67109120;
        *&buf[4] = v168;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     supportsLLPHS: %{BOOL}d", buf, 8u);
        v152 = *(this + 5);
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v169 = *(v148 + 13);
        *buf = 67109120;
        *&buf[4] = v169;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     entitledLLPHS: %{BOOL}d", buf, 8u);
        v152 = *(this + 5);
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v170 = *(v148 + 14);
        *buf = 67109120;
        *&buf[4] = v170;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     ignoreEntitledLLPHS: %{BOOL}d", buf, 8u);
        v152 = *(this + 5);
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v171 = *(v148 + 15);
        *buf = 67109120;
        *&buf[4] = v171;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     supportsConsumer: %{BOOL}d", buf, 8u);
        v152 = *(this + 5);
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v172 = *(v148 + 16);
        *buf = 67109120;
        *&buf[4] = v172;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     supportsCallKit: %{BOOL}d", buf, 8u);
        v152 = *(this + 5);
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v173 = *(v148 + 17);
        *buf = 67109120;
        *&buf[4] = v173;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     forceCallKitUdp: %{BOOL}d", buf, 8u);
        v152 = *(this + 5);
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v174 = *(v148 + 18);
        *buf = 67109120;
        *&buf[4] = v174;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     forcePoliciesDown: %{BOOL}d", buf, 8u);
        v152 = *(this + 5);
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v175 = *(v148 + 19);
        *buf = 67109120;
        *&buf[4] = v175;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     internationalRoaming: %{BOOL}d", buf, 8u);
        v152 = *(this + 5);
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v176 = *(v148 + 20);
        *buf = 67109120;
        *&buf[4] = v176;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#I DATA::     useOnlyXRForLLPHS: %{BOOL}d", buf, 8u);
      }

      if (*(v148 + 200))
      {
        v177 = *(this + 5);
        if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v177, OS_LOG_TYPE_DEFAULT, "#I DATA:: \tcbConfiguredVpnAgnosticApps:", buf, 2u);
        }

        v178 = *(v148 + 184);
        if (v178 != (v148 + 192))
        {
          do
          {
            v179 = *(this + 5);
            if (os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT))
            {
              v180 = v178 + 4;
              if (*(v178 + 55) < 0)
              {
                v180 = *v180;
              }

              *buf = 136315138;
              *&buf[4] = v180;
              _os_log_impl(&_mh_execute_header, v179, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t%s", buf, 0xCu);
            }

            v181 = v178[1];
            if (v181)
            {
              do
              {
                v182 = v181;
                v181 = *v181;
              }

              while (v181);
            }

            else
            {
              do
              {
                v182 = v178[2];
                v37 = *v182 == v178;
                v178 = v182;
              }

              while (!v37);
            }

            v178 = v182;
          }

          while (v182 != (v148 + 192));
        }
      }

      v183 = *(v148 + 328);
      v184 = (v148 + 336);
      if (v183 != v184)
      {
        do
        {
          v185 = *(this + 5);
          if (os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT))
          {
            v186 = v183[4];
            v187 = asStringBool(*(v183 + 40));
            v188 = asString();
            *buf = 134218498;
            *&buf[4] = v186;
            *&buf[12] = 2082;
            *&buf[14] = v187;
            *&buf[22] = 2082;
            *&buf[24] = v188;
            _os_log_impl(&_mh_execute_header, v185, OS_LOG_TYPE_DEFAULT, "#I DATA::     featureState: genre=%llu %{public}s / %{public}s", buf, 0x20u);
          }

          v189 = v183[1];
          if (v189)
          {
            do
            {
              v190 = v189;
              v189 = *v189;
            }

            while (v189);
          }

          else
          {
            do
            {
              v190 = v183[2];
              v37 = *v190 == v183;
              v183 = v190;
            }

            while (!v37);
          }

          v183 = v190;
        }

        while (v190 != v184);
      }

      v191 = *(v256 + 32);
      v192 = *(v256 + 40);
      if (v191 != v192)
      {
        v193 = *(this + 5);
        if (os_log_type_enabled(v193, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v193, OS_LOG_TYPE_DEFAULT, "#I DATA::     cbTrafficDescriptors:", buf, 2u);
          v191 = *(v256 + 32);
          v192 = *(v256 + 40);
        }

        while (v191 != v192)
        {
          v194 = *(this + 5);
          if (os_log_type_enabled(v194, OS_LOG_TYPE_DEFAULT))
          {
            TrafficDescriptor::toString(buf, v191);
            v195 = buf;
            if (buf[23] < 0)
            {
              v195 = *buf;
            }

            *v261 = 136446210;
            v262 = v195;
            _os_log_impl(&_mh_execute_header, v194, OS_LOG_TYPE_DEFAULT, "#I DATA::     \ttd(cb) %{public}s", v261, 0xCu);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          v191 = (v191 + 304);
        }
      }

      v196 = *(v256 + 56);
      v197 = *(v256 + 64);
      if (v196 != v197)
      {
        v198 = *(this + 5);
        if (os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v198, OS_LOG_TYPE_DEFAULT, "#I DATA::     tdsCache:", buf, 2u);
          v196 = *(v256 + 56);
          v197 = *(v256 + 64);
        }

        while (v196 != v197)
        {
          v199 = *(this + 5);
          if (os_log_type_enabled(v199, OS_LOG_TYPE_DEFAULT))
          {
            TrafficDescriptor::toString(buf, v196);
            v200 = buf;
            if (buf[23] < 0)
            {
              v200 = *buf;
            }

            *v261 = 136446210;
            v262 = v200;
            _os_log_impl(&_mh_execute_header, v199, OS_LOG_TYPE_DEFAULT, "#I DATA::     \ttd(cache) %{public}s", v261, 0xCu);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          v196 = (v196 + 304);
        }
      }

      if (*(v256 + 96))
      {
        v201 = *(this + 5);
        if (os_log_type_enabled(v201, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v201, OS_LOG_TYPE_DEFAULT, "#I DATA::     customAppCategories:", buf, 2u);
        }

        v202 = *(v256 + 80);
        if (v202 != (v256 + 88))
        {
          do
          {
            v203 = *(this + 5);
            if (os_log_type_enabled(v203, OS_LOG_TYPE_DEFAULT))
            {
              v204 = v202 + 5;
              if (*(v202 + 63) < 0)
              {
                v204 = *v204;
              }

              v205 = v202[4];
              *buf = 134218242;
              *&buf[4] = v205;
              *&buf[12] = 2082;
              *&buf[14] = v204;
              _os_log_impl(&_mh_execute_header, v203, OS_LOG_TYPE_DEFAULT, "#I DATA::     \t%llu %{public}s", buf, 0x16u);
            }

            v206 = v202[8];
            v207 = v202[9];
            while (v206 != v207)
            {
              v208 = *(this + 5);
              if (os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
              {
                v209 = v206;
                if (*(v206 + 23) < 0)
                {
                  v209 = *v206;
                }

                *buf = 136446210;
                *&buf[4] = v209;
                _os_log_impl(&_mh_execute_header, v208, OS_LOG_TYPE_DEFAULT, "#I DATA::     \t\tapp: %{public}s", buf, 0xCu);
              }

              v206 += 3;
            }

            v210 = v202[11];
            v211 = v202[12];
            while (v210 != v211)
            {
              v212 = *(this + 5);
              if (os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
              {
                v213 = *v210;
                *buf = 134217984;
                *&buf[4] = v213;
                _os_log_impl(&_mh_execute_header, v212, OS_LOG_TYPE_DEFAULT, "#I DATA::     \t\tac: %llu", buf, 0xCu);
              }

              ++v210;
            }

            v214 = v202[1];
            if (v214)
            {
              do
              {
                v215 = v214;
                v214 = *v214;
              }

              while (v214);
            }

            else
            {
              do
              {
                v215 = v202[2];
                v37 = *v215 == v202;
                v202 = v215;
              }

              while (!v37);
            }

            v202 = v215;
          }

          while (v215 != (v256 + 88));
        }
      }

      v216 = *(this + 5);
      if (os_log_type_enabled(v216, OS_LOG_TYPE_DEFAULT))
      {
        v217 = asStringBool(*(v256 + 128));
        *buf = 136315138;
        *&buf[4] = v217;
        _os_log_impl(&_mh_execute_header, v216, OS_LOG_TYPE_DEFAULT, "#I DATA::     allowedAppsAll: %s", buf, 0xCu);
      }

      if (*(v256 + 120))
      {
        v218 = *(this + 5);
        if (os_log_type_enabled(v218, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v218, OS_LOG_TYPE_DEFAULT, "#I DATA::     allowedApps:", buf, 2u);
        }

        v219 = *(v256 + 104);
        if (v219 != (v256 + 112))
        {
          do
          {
            v220 = *(this + 5);
            if (os_log_type_enabled(v220, OS_LOG_TYPE_DEFAULT))
            {
              v221 = v219 + 4;
              if (*(v219 + 55) < 0)
              {
                v221 = *v221;
              }

              *buf = 136446210;
              *&buf[4] = v221;
              _os_log_impl(&_mh_execute_header, v220, OS_LOG_TYPE_DEFAULT, "#I DATA::     \tapp: %{public}s", buf, 0xCu);
            }

            v222 = v219[1];
            if (v222)
            {
              do
              {
                v223 = v222;
                v222 = *v222;
              }

              while (v222);
            }

            else
            {
              do
              {
                v223 = v219[2];
                v37 = *v223 == v219;
                v219 = v223;
              }

              while (!v37);
            }

            v219 = v223;
          }

          while (v223 != (v256 + 112));
        }
      }

      if (*(v256 + 152))
      {
        v224 = *(this + 5);
        if (os_log_type_enabled(v224, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v224, OS_LOG_TYPE_DEFAULT, "#I DATA::     managedAllowedApps:", buf, 2u);
        }

        v225 = *(v256 + 136);
        if (v225 != (v256 + 144))
        {
          do
          {
            v226 = *(this + 5);
            if (os_log_type_enabled(v226, OS_LOG_TYPE_DEFAULT))
            {
              v227 = v225 + 4;
              if (*(v225 + 55) < 0)
              {
                v227 = *v227;
              }

              v228 = v225 + 10;
              if (*(v225 + 103) < 0)
              {
                v228 = *v228;
              }

              v229 = v225 + 7;
              if (*(v225 + 79) < 0)
              {
                v229 = *v229;
              }

              *buf = 136446722;
              *&buf[4] = v227;
              *&buf[12] = 2082;
              *&buf[14] = v228;
              *&buf[22] = 2082;
              *&buf[24] = v229;
              _os_log_impl(&_mh_execute_header, v226, OS_LOG_TYPE_DEFAULT, "#I DATA::     \tapp: %{public}s, dnn: %{public}s, fakeAppCategory: %{public}s", buf, 0x20u);
            }

            v230 = v225[1];
            if (v230)
            {
              do
              {
                v231 = v230;
                v230 = *v230;
              }

              while (v230);
            }

            else
            {
              do
              {
                v231 = v225[2];
                v37 = *v231 == v225;
                v225 = v231;
              }

              while (!v37);
            }

            v225 = v231;
          }

          while (v231 != (v256 + 144));
        }
      }

      if (*(v256 + 176))
      {
        v232 = *(this + 5);
        if (os_log_type_enabled(v232, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v232, OS_LOG_TYPE_DEFAULT, "#I DATA::     fakeAppCategorys:", buf, 2u);
        }

        v233 = *(v256 + 160);
        if (v233 != (v256 + 168))
        {
          do
          {
            v234 = *(this + 5);
            if (os_log_type_enabled(v234, OS_LOG_TYPE_DEFAULT))
            {
              v235 = v233 + 4;
              if (*(v233 + 55) < 0)
              {
                v235 = *v235;
              }

              *buf = 136446210;
              *&buf[4] = v235;
              _os_log_impl(&_mh_execute_header, v234, OS_LOG_TYPE_DEFAULT, "#I DATA::     \tfake app category: %{public}s", buf, 0xCu);
            }

            v236 = v233[1];
            if (v236)
            {
              do
              {
                v237 = v236;
                v236 = *v236;
              }

              while (v236);
            }

            else
            {
              do
              {
                v237 = v233[2];
                v37 = *v237 == v233;
                v233 = v237;
              }

              while (!v37);
            }

            v233 = v237;
          }

          while (v237 != (v256 + 168));
        }
      }

      if (*(v256 + 208) == 1)
      {
        v238 = *(v256 + 255);
        if (v238 < 0)
        {
          v239 = *(v256 + 240);
        }

        else
        {
          v239 = *(v256 + 255);
        }

        v240 = *(this + 5);
        if (v239 && os_log_type_enabled(*(this + 5), OS_LOG_TYPE_DEFAULT))
        {
          v241 = (v256 + 232);
          if ((v238 & 0x80000000) != 0)
          {
            v241 = *v241;
          }

          *buf = 136446210;
          *&buf[4] = v241;
          _os_log_impl(&_mh_execute_header, v240, OS_LOG_TYPE_DEFAULT, "#I DATA::     osId(str): %{public}s", buf, 0xCu);
          v240 = *(this + 5);
        }

        if (os_log_type_enabled(v240, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v240, OS_LOG_TYPE_DEFAULT, "#I DATA::     osId:", buf, 2u);
        }

        for (k = 0; k != 16; ++k)
        {
          v243 = *(this + 5);
          if (os_log_type_enabled(v243, OS_LOG_TYPE_DEFAULT))
          {
            v244 = *(v256 + 209 + k);
            *buf = 67109120;
            *&buf[4] = v244;
            _os_log_impl(&_mh_execute_header, v243, OS_LOG_TYPE_DEFAULT, "#I DATA::     \tosId 0x%x", buf, 8u);
          }
        }
      }

      v245 = *(v256 + 279);
      if (v245 < 0)
      {
        if (!*(v256 + 264))
        {
          goto LABEL_464;
        }
      }

      else if (!*(v256 + 279))
      {
        goto LABEL_464;
      }

      v246 = *(this + 5);
      if (os_log_type_enabled(v246, OS_LOG_TYPE_DEFAULT))
      {
        v247 = (v256 + 256);
        if ((v245 & 0x80000000) != 0)
        {
          v247 = *v247;
        }

        *buf = 136446210;
        *&buf[4] = v247;
        _os_log_impl(&_mh_execute_header, v246, OS_LOG_TYPE_DEFAULT, "#I DATA::     dnn: %{public}s", buf, 0xCu);
        v246 = *(this + 5);
      }

      if (os_log_type_enabled(v246, OS_LOG_TYPE_DEFAULT))
      {
        v248 = (v256 + 304);
        if (*(v256 + 327) < 0)
        {
          v248 = *v248;
        }

        *buf = 136446210;
        *&buf[4] = v248;
        _os_log_impl(&_mh_execute_header, v246, OS_LOG_TYPE_DEFAULT, "#I DATA::     anyLookupDnn: %{public}s", buf, 0xCu);
      }

LABEL_464:
      v249 = *(v256 + 303);
      if (v249 < 0)
      {
        if (*(v256 + 288))
        {
LABEL_468:
          v250 = *(this + 5);
          if (os_log_type_enabled(v250, OS_LOG_TYPE_DEFAULT))
          {
            v251 = (v256 + 280);
            if ((v249 & 0x80000000) != 0)
            {
              v251 = *v251;
            }

            *buf = 136446210;
            *&buf[4] = v251;
            _os_log_impl(&_mh_execute_header, v250, OS_LOG_TYPE_DEFAULT, "#I DATA::     apn: %{public}s", buf, 0xCu);
          }

          goto LABEL_472;
        }
      }

      else if (*(v256 + 303))
      {
        goto LABEL_468;
      }

      do
      {
LABEL_472:
        ++v144;
      }

      while (v144 != v255 && (v254(*v144) & 1) == 0);
    }
  }
}

void sub_1004B4730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  v35 = *(v33 - 184);
  if (v35)
  {
    sub_100004A34(v35);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DataServiceController::getSlicingSupportInfo(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v14 = a2;
  v6 = *sub_100007DEC((a1 + 4960), &v14);
  v7 = (*(*a1 + 1120))(a1);
  v8 = (*(*a1 + 1064))(a1, a2);
  sub_1001058C4(v15, a3);
  v9 = DataServiceController::SlicesDataContainer::configured((a1 + 4960), a2, v7, v8, v15);
  sub_100007E44(v15);
  if (!v9)
  {
    v11 = 0;
    v10 = 0;
LABEL_11:
    v12 = 0;
    return v11 | v10 | v12 | v9;
  }

  if ((v6[1] & 1) != 0 || v6[2] == 1)
  {
    v10 = a1[5347] << 8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v6[15] << 16;
  if (v6[12] != 1 || (v6[13] & 1) == 0 && v6[14] != 1)
  {
    goto LABEL_11;
  }

  v12 = 0x1000000;
  return v11 | v10 | v12 | v9;
}

void sub_1004B4928(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100007E44(va);
  _Unwind_Resume(a1);
}

uint64_t DataServiceController::updateSlicingDefinitions_sync(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a1;
  result = (*(*a1 + 2288))(a1);
  if (result)
  {
    v283 = v3;
    DataServiceController::makeDataSimSlotRange(v3, 3, __p);
    v5 = *__p;
    v6 = *&__p[8];
    if (*__p == *&__p[8])
    {
      v8 = 0;
      v7 = 0;
      BYTE4(v279) = 0;
      v278 = 1;
      if (*__p)
      {
LABEL_10:
        *&__p[8] = v5;
        operator delete(v5);
      }
    }

    else
    {
      v279 = 0;
      v7 = 0;
      v8 = 0;
      do
      {
        *buf = *v5;
        v9 = *buf;
        v10 = **sub_100007DEC(v3 + 4960, buf);
        *buf = v9;
        v11 = *(*sub_100007DEC(v3 + 4960, buf) + 23);
        *buf = v9;
        v12 = sub_100007DEC(v3 + 4960, buf);
        v13 = *v12;
        if (*(*v12 + 12) == 1)
        {
          if (*(v13 + 13))
          {
            v7 = 1;
          }

          else
          {
            v7 |= *(v13 + 14);
          }
        }

        *buf = v9;
        v278 = *(*sub_100007DEC(v3 + 4960, buf) + 15);
        *buf = v9;
        BYTE4(v279) |= v10;
        LODWORD(v279) = v11 | v279;
        v8 |= *(*sub_100007DEC(v3 + 4960, buf) + 19);
        ++v5;
      }

      while (v5 != v6);
      v5 = *__p;
      if (*__p)
      {
        goto LABEL_10;
      }
    }

    v14 = *(v3 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = subscriber::asString();
      if (*(a3 + 23) >= 0)
      {
        v16 = a3;
      }

      else
      {
        v16 = *a3;
      }

      v17 = asStringBool(v279 & 0x100000000);
      v18 = asStringBool(v7 & 1);
      v19 = asStringBool(v278);
      v20 = asStringBool(v8 & 1);
      *__p = 136316418;
      *&__p[4] = v15;
      *&__p[12] = 2082;
      *&__p[14] = v16;
      *&__p[22] = 2080;
      *&__p[24] = v17;
      *v290 = 2080;
      *&v290[2] = v18;
      v291 = 2080;
      v292 = v19;
      v293 = 2080;
      v294 = v20;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I update slicing: [%s] %{public}s, oldSliceUsed=%s oldLlphs=%s oldConsumer=%s oldInternationalRoaming=%s", __p, 0x3Eu);
      v3 = v283;
    }

    v21 = *(v3 + 112);
    *buf = *(v3 + 104);
    *&buf[8] = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
    }

    subscriber::makeSimSlotRange();
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    v23 = *__p;
    v22 = *&__p[8];
    if (*__p != *&__p[8])
    {
      v24 = *&__p[16];
      do
      {
        if (v24(*v23))
        {
          break;
        }

        ++v23;
      }

      while (v23 != v22);
      v276 = *&__p[8];
      v3 = v283;
      if (v23 != *&__p[8])
      {
        v274 = v22;
        v275 = v24;
        do
        {
          v25 = *v23;
          v280 = (*(**(v3 + 48) + 16))(*(v3 + 48), v25);
          *buf = v25;
          v26 = *sub_100007DEC(v283 + 4960, buf);
          *(v26 + 2) = 0;
          *v26 = 0;
          *(v26 + 4) = 0x1E00000000;
          *(v26 + 12) = 0;
          *(v26 + 13) = DataServiceController::calculateEntitledLLPHS(v283, v25);
          *(v26 + 14) = 256;
          *(v26 + 16) = 1;
          *(v26 + 22) = 0;
          *(v26 + 17) = 0;
          *(v26 + 23) = 1;
          if ((atomic_load_explicit(&qword_101FBA4C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA4C8))
          {
            *buf = @"NRSlicing";
            qword_101FBA4B8 = 0;
            unk_101FBA4C0 = 0;
            qword_101FBA4B0 = 0;
            sub_10005B328(&qword_101FBA4B0, buf, &buf[8], 1uLL);
            __cxa_atexit(sub_10041F938, &qword_101FBA4B0, &_mh_execute_header);
            __cxa_guard_release(&qword_101FBA4C8);
          }

          cf = 0;
          ServiceMap = Registry::getServiceMap(*(v283 + 13));
          v28 = ServiceMap;
          v30 = v29;
          if (v29 < 0)
          {
            v31 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
            v32 = 5381;
            do
            {
              v30 = v32;
              v33 = *v31++;
              v32 = (33 * v32) ^ v33;
            }

            while (v33);
          }

          std::mutex::lock(ServiceMap);
          *buf = v30;
          v34 = sub_100009510(&v28[1].__m_.__sig, buf);
          v35 = v283;
          if (v34)
          {
            v37 = v34[3];
            v36 = v34[4];
            if (v36)
            {
              atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v28);
              atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v36);
              v38 = 0;
              goto LABEL_35;
            }
          }

          else
          {
            v37 = 0;
          }

          std::mutex::unlock(v28);
          v36 = 0;
          v38 = 1;
LABEL_35:
          (*(*v37 + 88))(&cf, v37, v25, 1, &qword_101FBA4B0, 0, 0);
          if ((v38 & 1) == 0)
          {
            sub_100004A34(v36);
          }

          v39 = cf;
          v40 = *v280;
          v41 = os_log_type_enabled(*v280, OS_LOG_TYPE_DEFAULT);
          if (!v39)
          {
            if (v41)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I no NRSlicing definitions", buf, 2u);
            }

            sub_10000A1EC(&cf);
            v53 = v274;
            v52 = v275;
            goto LABEL_287;
          }

          if (v41)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I NRSlicing used", buf, 2u);
          }

          *v26 = 1;
          sub_10000A1EC(&cf);
          if ((atomic_load_explicit(&qword_101FBA4E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA4E8))
          {
            *buf = @"NRSlicing";
            *&buf[8] = @"ShutdownOnDataModeChange";
            qword_101FBA4D8 = 0;
            unk_101FBA4E0 = 0;
            qword_101FBA4D0 = 0;
            sub_10005B328(&qword_101FBA4D0, buf, v301, 2uLL);
            __cxa_atexit(sub_10041F938, &qword_101FBA4D0, &_mh_execute_header);
            __cxa_guard_release(&qword_101FBA4E8);
            v35 = v283;
          }

          cf = 0;
          v42 = Registry::getServiceMap(*(v35 + 13));
          v43 = v42;
          v44 = v29;
          if (v29 < 0)
          {
            v45 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
            v46 = 5381;
            do
            {
              v44 = v46;
              v47 = *v45++;
              v46 = (33 * v46) ^ v47;
            }

            while (v47);
          }

          std::mutex::lock(v42);
          *buf = v44;
          v48 = sub_100009510(&v43[1].__m_.__sig, buf);
          if (v48)
          {
            v50 = v48[3];
            v49 = v48[4];
            if (v49)
            {
              atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v43);
              atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v49);
              v51 = 0;
              goto LABEL_52;
            }
          }

          else
          {
            v50 = 0;
          }

          std::mutex::unlock(v43);
          v49 = 0;
          v51 = 1;
LABEL_52:
          (*(*v50 + 104))(&cf, v50, v25, 1, &qword_101FBA4D0, kCFBooleanFalse, 0);
          if ((v51 & 1) == 0)
          {
            sub_100004A34(v49);
          }

          v54 = cf;
          if (cf)
          {
            buf[0] = 0;
            v55 = CFGetTypeID(cf);
            if (v55 == CFBooleanGetTypeID())
            {
              ctu::cf::assign(buf, v54, v56);
            }

            if (buf[0] == 1)
            {
              v57 = *v280;
              if (os_log_type_enabled(*v280, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "#I ShutdownOnDataModeChange used", buf, 2u);
              }

              *(v26 + 22) = 1;
            }
          }

          sub_10000A1EC(&cf);
          v58 = Registry::getServiceMap(*(v283 + 13));
          v59 = v58;
          if (v60 < 0)
          {
            v61 = (v60 & 0x7FFFFFFFFFFFFFFFLL);
            v62 = 5381;
            do
            {
              v60 = v62;
              v63 = *v61++;
              v62 = (33 * v62) ^ v63;
            }

            while (v63);
          }

          std::mutex::lock(v58);
          *buf = v60;
          v64 = sub_100009510(&v59[1].__m_.__sig, buf);
          v65 = v283;
          if (v64)
          {
            v67 = v64[3];
            v66 = v64[4];
            if (v66)
            {
              atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v59);
              atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v66);
              v277 = 0;
              if (!v67)
              {
                goto LABEL_90;
              }

              goto LABEL_70;
            }
          }

          else
          {
            v67 = 0;
          }

          std::mutex::unlock(v59);
          v66 = 0;
          v277 = 1;
          if (!v67)
          {
            goto LABEL_90;
          }

LABEL_70:
          if (!(*(*v67 + 32))(v67))
          {
            goto LABEL_90;
          }

          if ((atomic_load_explicit(&qword_101FBA508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA508))
          {
            *buf = @"NRSlicing";
            *&buf[8] = @"EntitlementsGenres";
            qword_101FBA4F8 = 0;
            unk_101FBA500 = 0;
            qword_101FBA4F0 = 0;
            sub_10005B328(&qword_101FBA4F0, buf, v301, 2uLL);
            __cxa_atexit(sub_10041F938, &qword_101FBA4F0, &_mh_execute_header);
            __cxa_guard_release(&qword_101FBA508);
            v65 = v283;
          }

          cf = 0;
          v68 = Registry::getServiceMap(*(v65 + 13));
          v69 = v68;
          v70 = v29;
          if (v29 < 0)
          {
            v71 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
            v72 = 5381;
            do
            {
              v70 = v72;
              v73 = *v71++;
              v72 = (33 * v72) ^ v73;
            }

            while (v73);
          }

          std::mutex::lock(v68);
          *buf = v70;
          v74 = sub_100009510(&v69[1].__m_.__sig, buf);
          if (!v74)
          {
            v76 = 0;
LABEL_79:
            std::mutex::unlock(v69);
            v75 = 0;
            v77 = 1;
            goto LABEL_80;
          }

          v76 = v74[3];
          v75 = v74[4];
          if (!v75)
          {
            goto LABEL_79;
          }

          atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v69);
          atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v75);
          v77 = 0;
LABEL_80:
          (*(*v76 + 104))(&cf, v76, v25, 1, &qword_101FBA4F0, kCFBooleanTrue, 0);
          v65 = v283;
          if ((v77 & 1) == 0)
          {
            sub_100004A34(v75);
          }

          v78 = cf;
          if (cf)
          {
            buf[0] = 1;
            v79 = CFGetTypeID(cf);
            if (v79 == CFBooleanGetTypeID())
            {
              ctu::cf::assign(buf, v78, v80);
            }

            if ((buf[0] & 1) == 0)
            {
              v81 = *v280;
              if (os_log_type_enabled(*v280, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "#I AppStore Genres used", buf, 2u);
              }

              *(v26 + 23) = 0;
            }
          }

          sub_10000A1EC(&cf);
LABEL_90:
          if ((atomic_load_explicit(&qword_101FBA528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA528))
          {
            *buf = @"NRSlicing";
            *&buf[8] = @"AllowSocketAPIWithTrafficClasses";
            qword_101FBA518 = 0;
            unk_101FBA520 = 0;
            qword_101FBA510 = 0;
            sub_10005B328(&qword_101FBA510, buf, v301, 2uLL);
            __cxa_atexit(sub_10041F938, &qword_101FBA510, &_mh_execute_header);
            __cxa_guard_release(&qword_101FBA528);
            v65 = v283;
          }

          cf = 0;
          v82 = Registry::getServiceMap(*(v65 + 13));
          v83 = v82;
          v84 = v29;
          if (v29 < 0)
          {
            v85 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
            v86 = 5381;
            do
            {
              v84 = v86;
              v87 = *v85++;
              v86 = (33 * v86) ^ v87;
            }

            while (v87);
          }

          std::mutex::lock(v82);
          *buf = v84;
          v88 = sub_100009510(&v83[1].__m_.__sig, buf);
          if (v88)
          {
            v90 = v88[3];
            v89 = v88[4];
            if (v89)
            {
              atomic_fetch_add_explicit(&v89->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v83);
              atomic_fetch_add_explicit(&v89->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v89);
              v91 = 0;
              goto LABEL_99;
            }
          }

          else
          {
            v90 = 0;
          }

          std::mutex::unlock(v83);
          v89 = 0;
          v91 = 1;
LABEL_99:
          (*(*v90 + 104))(&cf, v90, v25, 1, &qword_101FBA510, kCFBooleanFalse, 0);
          v92 = v283;
          if ((v91 & 1) == 0)
          {
            sub_100004A34(v89);
          }

          v93 = cf;
          if (cf)
          {
            buf[0] = 0;
            v94 = CFGetTypeID(cf);
            if (v94 == CFBooleanGetTypeID())
            {
              ctu::cf::assign(buf, v93, v95);
            }

            if (buf[0] == 1)
            {
              v96 = *v280;
              if (os_log_type_enabled(*v280, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "#I AllowSocketAPIWithTrafficClasses used", buf, 2u);
              }

              *(v26 + 24) = 1;
            }
          }

          sub_10000A1EC(&cf);
          if ((atomic_load_explicit(&qword_101FBA548, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA548))
          {
            *buf = @"NRSlicing";
            *&buf[8] = @"TechnologyMask";
            qword_101FBA538 = 0;
            unk_101FBA540 = 0;
            qword_101FBA530 = 0;
            sub_10005B328(&qword_101FBA530, buf, v301, 2uLL);
            __cxa_atexit(sub_10041F938, &qword_101FBA530, &_mh_execute_header);
            __cxa_guard_release(&qword_101FBA548);
            v92 = v283;
          }

          cf = 0;
          v97 = Registry::getServiceMap(*(v92 + 13));
          v98 = v97;
          v99 = v29;
          if (v29 < 0)
          {
            v100 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
            v101 = 5381;
            do
            {
              v99 = v101;
              v102 = *v100++;
              v101 = (33 * v101) ^ v102;
            }

            while (v102);
          }

          std::mutex::lock(v97);
          *buf = v99;
          v103 = sub_100009510(&v98[1].__m_.__sig, buf);
          if (v103)
          {
            v105 = v103[3];
            v104 = v103[4];
            if (v104)
            {
              atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v98);
              atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v104);
              v106 = 0;
              goto LABEL_117;
            }
          }

          else
          {
            v105 = 0;
          }

          std::mutex::unlock(v98);
          v104 = 0;
          v106 = 1;
LABEL_117:
          (*(*v105 + 104))(v295, v105, v25, 1, &qword_101FBA530, 0, 0);
          sub_10010B240(&cf, v295);
          v107 = v283;
          sub_10000A1EC(v295);
          if ((v106 & 1) == 0)
          {
            sub_100004A34(v104);
          }

          if (cf)
          {
            *buf = 0;
            if (CFNumberGetValue(cf, kCFNumberIntType, buf))
            {
              *(v26 + 4) = *buf;
            }

            else
            {
              v108 = *v280;
              if (os_log_type_enabled(*v280, OS_LOG_TYPE_DEFAULT))
              {
                *v295 = 0;
                _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "#E Cannot retreive TechnologyMask value", v295, 2u);
              }
            }
          }

          sub_100029A48(&cf);
          if ((atomic_load_explicit(&qword_101FBA568, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA568))
          {
            *buf = @"NRSlicing";
            *&buf[8] = @"SliceInactivityTimeoutSecs";
            qword_101FBA558 = 0;
            unk_101FBA560 = 0;
            qword_101FBA550 = 0;
            sub_10005B328(&qword_101FBA550, buf, v301, 2uLL);
            __cxa_atexit(sub_10041F938, &qword_101FBA550, &_mh_execute_header);
            __cxa_guard_release(&qword_101FBA568);
            v107 = v283;
          }

          cf = 0;
          v109 = Registry::getServiceMap(*(v107 + 13));
          v110 = v109;
          v111 = v29;
          if (v29 < 0)
          {
            v112 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
            v113 = 5381;
            do
            {
              v111 = v113;
              v114 = *v112++;
              v113 = (33 * v113) ^ v114;
            }

            while (v114);
          }

          std::mutex::lock(v109);
          *buf = v111;
          v115 = sub_100009510(&v110[1].__m_.__sig, buf);
          if (v115)
          {
            v117 = v115[3];
            v116 = v115[4];
            if (v116)
            {
              atomic_fetch_add_explicit(&v116->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v110);
              atomic_fetch_add_explicit(&v116->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v116);
              v118 = 0;
              goto LABEL_133;
            }
          }

          else
          {
            v117 = 0;
          }

          std::mutex::unlock(v110);
          v116 = 0;
          v118 = 1;
LABEL_133:
          (*(*v117 + 104))(v295, v117, v25, 1, &qword_101FBA550, 0, 0);
          sub_10010B240(&cf, v295);
          v119 = v283;
          sub_10000A1EC(v295);
          if ((v118 & 1) == 0)
          {
            sub_100004A34(v116);
          }

          if (cf)
          {
            *buf = 30;
            if (CFNumberGetValue(cf, kCFNumberIntType, buf))
            {
              *(v26 + 8) = *buf;
            }

            else
            {
              v120 = *v280;
              if (os_log_type_enabled(*v280, OS_LOG_TYPE_DEFAULT))
              {
                *v295 = 0;
                _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "#E Cannot retreive SliceInactivityTimeoutSecs value", v295, 2u);
              }
            }
          }

          sub_100029A48(&cf);
          if ((atomic_load_explicit(&qword_101FBA588, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA588))
          {
            *buf = @"NRSlicing";
            *&buf[8] = @"SupportsLLPHS";
            qword_101FBA578 = 0;
            unk_101FBA580 = 0;
            qword_101FBA570 = 0;
            sub_10005B328(&qword_101FBA570, buf, v301, 2uLL);
            __cxa_atexit(sub_10041F938, &qword_101FBA570, &_mh_execute_header);
            __cxa_guard_release(&qword_101FBA588);
            v119 = v283;
          }

          cf = 0;
          v121 = Registry::getServiceMap(*(v119 + 13));
          v122 = v121;
          v123 = v29;
          if (v29 < 0)
          {
            v124 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
            v125 = 5381;
            do
            {
              v123 = v125;
              v126 = *v124++;
              v125 = (33 * v125) ^ v126;
            }

            while (v126);
          }

          std::mutex::lock(v121);
          *buf = v123;
          v127 = sub_100009510(&v122[1].__m_.__sig, buf);
          if (v127)
          {
            v129 = v127[3];
            v128 = v127[4];
            if (v128)
            {
              atomic_fetch_add_explicit(&v128->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v122);
              atomic_fetch_add_explicit(&v128->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v128);
              v130 = 0;
              goto LABEL_149;
            }
          }

          else
          {
            v129 = 0;
          }

          std::mutex::unlock(v122);
          v128 = 0;
          v130 = 1;
LABEL_149:
          (*(*v129 + 104))(&cf, v129, v25, 1, &qword_101FBA570, kCFBooleanFalse, 0);
          v131 = v283;
          if ((v130 & 1) == 0)
          {
            sub_100004A34(v128);
          }

          v132 = cf;
          if (cf)
          {
            buf[0] = 0;
            v133 = CFGetTypeID(cf);
            if (v133 == CFBooleanGetTypeID())
            {
              ctu::cf::assign(buf, v132, v134);
            }

            if (buf[0] == 1)
            {
              v135 = *v280;
              if (os_log_type_enabled(*v280, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_DEFAULT, "#I SupportsLLPHS used", buf, 2u);
              }

              *(v26 + 12) = 1;
            }
          }

          sub_10000A1EC(&cf);
          if ((atomic_load_explicit(&qword_101FBA5A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA5A8))
          {
            *buf = @"NRSlicing";
            *&buf[8] = @"IgnoreEntitledLLPHS";
            qword_101FBA598 = 0;
            unk_101FBA5A0 = 0;
            qword_101FBA590 = 0;
            sub_10005B328(&qword_101FBA590, buf, v301, 2uLL);
            __cxa_atexit(sub_10041F938, &qword_101FBA590, &_mh_execute_header);
            __cxa_guard_release(&qword_101FBA5A8);
            v131 = v283;
          }

          cf = 0;
          v136 = Registry::getServiceMap(*(v131 + 13));
          v137 = v136;
          v138 = v29;
          if (v29 < 0)
          {
            v139 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
            v140 = 5381;
            do
            {
              v138 = v140;
              v141 = *v139++;
              v140 = (33 * v140) ^ v141;
            }

            while (v141);
          }

          std::mutex::lock(v136);
          *buf = v138;
          v142 = sub_100009510(&v137[1].__m_.__sig, buf);
          if (v142)
          {
            v144 = v142[3];
            v143 = v142[4];
            if (v143)
            {
              atomic_fetch_add_explicit(&v143->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v137);
              atomic_fetch_add_explicit(&v143->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v143);
              v145 = 0;
              goto LABEL_167;
            }
          }

          else
          {
            v144 = 0;
          }

          std::mutex::unlock(v137);
          v143 = 0;
          v145 = 1;
LABEL_167:
          (*(*v144 + 104))(&cf, v144, v25, 1, &qword_101FBA590, kCFBooleanFalse, 0);
          v146 = v283;
          if ((v145 & 1) == 0)
          {
            sub_100004A34(v143);
          }

          v147 = cf;
          if (cf)
          {
            buf[0] = 0;
            v148 = CFGetTypeID(cf);
            if (v148 == CFBooleanGetTypeID())
            {
              ctu::cf::assign(buf, v147, v149);
            }

            if (buf[0] == 1)
            {
              v150 = *v280;
              if (os_log_type_enabled(*v280, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v150, OS_LOG_TYPE_DEFAULT, "#I IgnoreEntitledLLPHS used", buf, 2u);
              }

              *(v26 + 14) = 1;
            }
          }

          sub_10000A1EC(&cf);
          if ((atomic_load_explicit(&qword_101FBA5C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA5C8))
          {
            *buf = @"NRSlicing";
            *&buf[8] = @"Consumer";
            qword_101FBA5B8 = 0;
            unk_101FBA5C0 = 0;
            qword_101FBA5B0 = 0;
            sub_10005B328(&qword_101FBA5B0, buf, v301, 2uLL);
            __cxa_atexit(sub_10041F938, &qword_101FBA5B0, &_mh_execute_header);
            __cxa_guard_release(&qword_101FBA5C8);
            v146 = v283;
          }

          cf = 0;
          v151 = Registry::getServiceMap(*(v146 + 13));
          v152 = v151;
          v153 = v29;
          if (v29 < 0)
          {
            v154 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
            v155 = 5381;
            do
            {
              v153 = v155;
              v156 = *v154++;
              v155 = (33 * v155) ^ v156;
            }

            while (v156);
          }

          std::mutex::lock(v151);
          *buf = v153;
          v157 = sub_100009510(&v152[1].__m_.__sig, buf);
          if (v157)
          {
            v159 = v157[3];
            v158 = v157[4];
            if (v158)
            {
              atomic_fetch_add_explicit(&v158->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v152);
              atomic_fetch_add_explicit(&v158->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v158);
              v160 = 0;
              goto LABEL_185;
            }
          }

          else
          {
            v159 = 0;
          }

          std::mutex::unlock(v152);
          v158 = 0;
          v160 = 1;
LABEL_185:
          (*(*v159 + 104))(v295, v159, v25, 1, &qword_101FBA5B0, kCFBooleanTrue, 0);
          sub_10002FE1C(&cf, v295);
          v161 = v283;
          sub_10000A1EC(v295);
          if ((v160 & 1) == 0)
          {
            sub_100004A34(v158);
          }

          if (cf)
          {
            buf[0] = 0;
            ctu::cf::assign(buf, cf, v162);
            if ((buf[0] & 1) == 0)
            {
              v163 = *v280;
              if (os_log_type_enabled(*v280, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v163, OS_LOG_TYPE_DEFAULT, "#I Consumer used as false", buf, 2u);
              }

              *(v26 + 15) = 0;
            }
          }

          sub_100045C8C(&cf);
          if ((atomic_load_explicit(&qword_101FBA5E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA5E8))
          {
            *buf = @"NRSlicing";
            *&buf[8] = @"CallKitSupported";
            qword_101FBA5D8 = 0;
            unk_101FBA5E0 = 0;
            qword_101FBA5D0 = 0;
            sub_10005B328(&qword_101FBA5D0, buf, v301, 2uLL);
            __cxa_atexit(sub_10041F938, &qword_101FBA5D0, &_mh_execute_header);
            __cxa_guard_release(&qword_101FBA5E8);
            v161 = v283;
          }

          cf = 0;
          v164 = Registry::getServiceMap(*(v161 + 13));
          v165 = v164;
          v166 = v29;
          if (v29 < 0)
          {
            v167 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
            v168 = 5381;
            do
            {
              v166 = v168;
              v169 = *v167++;
              v168 = (33 * v168) ^ v169;
            }

            while (v169);
          }

          std::mutex::lock(v164);
          *buf = v166;
          v170 = sub_100009510(&v165[1].__m_.__sig, buf);
          if (v170)
          {
            v172 = v170[3];
            v171 = v170[4];
            if (v171)
            {
              atomic_fetch_add_explicit(&v171->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v165);
              atomic_fetch_add_explicit(&v171->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v171);
              v173 = 0;
              goto LABEL_201;
            }
          }

          else
          {
            v172 = 0;
          }

          std::mutex::unlock(v165);
          v171 = 0;
          v173 = 1;
LABEL_201:
          (*(*v172 + 104))(v295, v172, v25, 1, &qword_101FBA5D0, kCFBooleanTrue, 0);
          sub_10002FE1C(&cf, v295);
          v174 = v283;
          sub_10000A1EC(v295);
          if ((v173 & 1) == 0)
          {
            sub_100004A34(v171);
          }

          if (cf)
          {
            buf[0] = 0;
            ctu::cf::assign(buf, cf, v175);
            if ((buf[0] & 1) == 0)
            {
              v176 = *v280;
              if (os_log_type_enabled(*v280, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v176, OS_LOG_TYPE_DEFAULT, "#I CallKit not supported", buf, 2u);
              }

              *(v26 + 16) = 0;
            }
          }

          sub_100045C8C(&cf);
          if ((atomic_load_explicit(&qword_101FBA608, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA608))
          {
            *buf = @"NRSlicing";
            *&buf[8] = @"ForceCallKitUdp";
            qword_101FBA5F8 = 0;
            unk_101FBA600 = 0;
            qword_101FBA5F0 = 0;
            sub_10005B328(&qword_101FBA5F0, buf, v301, 2uLL);
            __cxa_atexit(sub_10041F938, &qword_101FBA5F0, &_mh_execute_header);
            __cxa_guard_release(&qword_101FBA608);
            v174 = v283;
          }

          cf = 0;
          v177 = Registry::getServiceMap(*(v174 + 13));
          v178 = v177;
          v179 = v29;
          if (v29 < 0)
          {
            v180 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
            v181 = 5381;
            do
            {
              v179 = v181;
              v182 = *v180++;
              v181 = (33 * v181) ^ v182;
            }

            while (v182);
          }

          std::mutex::lock(v177);
          *buf = v179;
          v183 = sub_100009510(&v178[1].__m_.__sig, buf);
          if (v183)
          {
            v185 = v183[3];
            v184 = v183[4];
            if (v184)
            {
              atomic_fetch_add_explicit(&v184->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v178);
              atomic_fetch_add_explicit(&v184->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v184);
              v186 = 0;
              goto LABEL_217;
            }
          }

          else
          {
            v185 = 0;
          }

          std::mutex::unlock(v178);
          v184 = 0;
          v186 = 1;
LABEL_217:
          (*(*v185 + 104))(v295, v185, v25, 1, &qword_101FBA5F0, kCFBooleanFalse, 0);
          sub_10002FE1C(&cf, v295);
          v187 = v283;
          sub_10000A1EC(v295);
          if ((v186 & 1) == 0)
          {
            sub_100004A34(v184);
          }

          if (cf)
          {
            buf[0] = 0;
            ctu::cf::assign(buf, cf, v188);
            if (buf[0] == 1)
            {
              v189 = *v280;
              if (os_log_type_enabled(*v280, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v189, OS_LOG_TYPE_DEFAULT, "#I CallKit UDP forced", buf, 2u);
              }

              *(v26 + 17) = 1;
            }
          }

          sub_100045C8C(&cf);
          if ((atomic_load_explicit(&qword_101FBA628, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA628))
          {
            *buf = @"NRSlicing";
            *&buf[8] = @"ForcePoliciesDown";
            qword_101FBA618 = 0;
            unk_101FBA620 = 0;
            qword_101FBA610 = 0;
            sub_10005B328(&qword_101FBA610, buf, v301, 2uLL);
            __cxa_atexit(sub_10041F938, &qword_101FBA610, &_mh_execute_header);
            __cxa_guard_release(&qword_101FBA628);
            v187 = v283;
          }

          cf = 0;
          v190 = Registry::getServiceMap(*(v187 + 13));
          v191 = v190;
          v192 = v29;
          if (v29 < 0)
          {
            v193 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
            v194 = 5381;
            do
            {
              v192 = v194;
              v195 = *v193++;
              v194 = (33 * v194) ^ v195;
            }

            while (v195);
          }

          std::mutex::lock(v190);
          *buf = v192;
          v196 = sub_100009510(&v191[1].__m_.__sig, buf);
          if (v196)
          {
            v198 = v196[3];
            v197 = v196[4];
            if (v197)
            {
              atomic_fetch_add_explicit(&v197->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v191);
              atomic_fetch_add_explicit(&v197->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v197);
              v199 = 0;
              goto LABEL_233;
            }
          }

          else
          {
            v198 = 0;
          }

          std::mutex::unlock(v191);
          v197 = 0;
          v199 = 1;
LABEL_233:
          (*(*v198 + 104))(v295, v198, v25, 1, &qword_101FBA610, kCFBooleanFalse, 0);
          sub_10002FE1C(&cf, v295);
          v200 = v283;
          sub_10000A1EC(v295);
          if ((v199 & 1) == 0)
          {
            sub_100004A34(v197);
          }

          if (cf)
          {
            buf[0] = 0;
            ctu::cf::assign(buf, cf, v201);
            if (buf[0] == 1)
            {
              v202 = *v280;
              if (os_log_type_enabled(*v280, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v202, OS_LOG_TYPE_DEFAULT, "#I Policies Down forced", buf, 2u);
              }

              *(v26 + 18) = 1;
            }
          }

          sub_100045C8C(&cf);
          if ((atomic_load_explicit(&qword_101FBA648, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA648))
          {
            *buf = @"NRSlicing";
            *&buf[8] = @"InternationalRoaming";
            qword_101FBA638 = 0;
            unk_101FBA640 = 0;
            qword_101FBA630 = 0;
            sub_10005B328(&qword_101FBA630, buf, v301, 2uLL);
            __cxa_atexit(sub_10041F938, &qword_101FBA630, &_mh_execute_header);
            __cxa_guard_release(&qword_101FBA648);
            v200 = v283;
          }

          cf = 0;
          v203 = Registry::getServiceMap(*(v200 + 13));
          v204 = v203;
          v205 = v29;
          if (v29 < 0)
          {
            v206 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
            v207 = 5381;
            do
            {
              v205 = v207;
              v208 = *v206++;
              v207 = (33 * v207) ^ v208;
            }

            while (v208);
          }

          std::mutex::lock(v203);
          *buf = v205;
          v209 = sub_100009510(&v204[1].__m_.__sig, buf);
          if (v209)
          {
            v211 = v209[3];
            v210 = v209[4];
            if (v210)
            {
              atomic_fetch_add_explicit(&v210->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v204);
              atomic_fetch_add_explicit(&v210->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v210);
              v212 = 0;
              goto LABEL_249;
            }
          }

          else
          {
            v211 = 0;
          }

          std::mutex::unlock(v204);
          v210 = 0;
          v212 = 1;
LABEL_249:
          (*(*v211 + 104))(&cf, v211, v25, 1, &qword_101FBA630, kCFBooleanFalse, 0);
          v213 = v283;
          if ((v212 & 1) == 0)
          {
            sub_100004A34(v210);
          }

          v214 = cf;
          if (cf)
          {
            buf[0] = 0;
            v215 = CFGetTypeID(cf);
            if (v215 == CFBooleanGetTypeID())
            {
              ctu::cf::assign(buf, v214, v216);
            }

            if (buf[0] == 1)
            {
              v217 = *v280;
              if (os_log_type_enabled(*v280, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v217, OS_LOG_TYPE_DEFAULT, "#I InternationalRoaming used", buf, 2u);
              }

              *(v26 + 19) = 1;
            }
          }

          sub_10000A1EC(&cf);
          if ((atomic_load_explicit(&qword_101FBA668, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA668))
          {
            *buf = @"NRSlicing";
            *&buf[8] = @"UseOnlyXRForLLPHS";
            qword_101FBA658 = 0;
            unk_101FBA660 = 0;
            qword_101FBA650 = 0;
            sub_10005B328(&qword_101FBA650, buf, v301, 2uLL);
            __cxa_atexit(sub_10041F938, &qword_101FBA650, &_mh_execute_header);
            __cxa_guard_release(&qword_101FBA668);
            v213 = v283;
          }

          cf = 0;
          v218 = Registry::getServiceMap(*(v213 + 13));
          v219 = v218;
          if (v29 < 0)
          {
            v220 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
            v221 = 5381;
            do
            {
              v29 = v221;
              v222 = *v220++;
              v221 = (33 * v221) ^ v222;
            }

            while (v222);
          }

          std::mutex::lock(v218);
          *buf = v29;
          v223 = sub_100009510(&v219[1].__m_.__sig, buf);
          if (!v223)
          {
            v225 = 0;
LABEL_266:
            std::mutex::unlock(v219);
            v224 = 0;
            v226 = 1;
            goto LABEL_267;
          }

          v225 = v223[3];
          v224 = v223[4];
          if (!v224)
          {
            goto LABEL_266;
          }

          atomic_fetch_add_explicit(&v224->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v219);
          atomic_fetch_add_explicit(&v224->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v224);
          v226 = 0;
LABEL_267:
          (*(*v225 + 104))(&cf, v225, v25, 1, &qword_101FBA650, kCFBooleanFalse, 0);
          if ((v226 & 1) == 0)
          {
            sub_100004A34(v224);
          }

          v227 = cf;
          if (cf)
          {
            buf[0] = 0;
            v228 = CFGetTypeID(cf);
            if (v228 == CFBooleanGetTypeID())
            {
              ctu::cf::assign(buf, v227, v229);
            }

            if (buf[0] == 1)
            {
              v230 = *v280;
              if (os_log_type_enabled(*v280, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v230, OS_LOG_TYPE_DEFAULT, "#I UseOnlyXRForLLPHS used", buf, 2u);
              }

              *(v26 + 20) = 1;
            }
          }

          sub_10000A1EC(&cf);
          DataServiceController::updateCarrierBundleTrafficDescriptors_sync(v283, v25);
          DataServiceController::updateCarrierBundleAppCategories_sync(v283, v25);
          DataServiceController::updateCarrierBundleSlicingEnterpriseDnn_sync(v283, v25);
          DataServiceController::updateCarrierBundleAllowedApps_sync(v283, v25);
          if ((*(v26 + 1) & 1) == 0 && (*(v26 + 2) & 1) == 0)
          {
            if (*(v26 + 303) < 0)
            {
              *(v26 + 288) = 0;
              v231 = *(v26 + 280);
            }

            else
            {
              v231 = (v26 + 280);
              *(v26 + 303) = 0;
            }

            *v231 = 0;
            if (*(v26 + 279) < 0)
            {
              *(v26 + 264) = 0;
              v232 = *(v26 + 256);
            }

            else
            {
              v232 = (v26 + 256);
              *(v26 + 279) = 0;
            }

            *v232 = 0;
          }

          DataServiceController::updateCarrierBundleSlicingOsId_sync(v283, v25);
          DataServiceController::sliceTrafficDescriptors_sync(v283, v25, "update");
          v53 = v274;
          v52 = v275;
          if ((v277 & 1) == 0)
          {
            sub_100004A34(v66);
          }

          do
          {
LABEL_287:
            ++v23;
          }

          while (v23 != v53 && (v52(*v23) & 1) == 0);
          v3 = v283;
        }

        while (v23 != v276);
      }
    }

    *__p = 1;
    *&__p[16] = 0u;
    *v290 = 0;
    *&__p[8] = v3 + 4272;
    sub_1004C5380(&__p[16], v3 + 4304);
    v233 = *(v283 + 14);
    cf = *(v283 + 13);
    v286 = v233;
    if (v233)
    {
      atomic_fetch_add_explicit(&v233->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    subscriber::makeSimSlotRange();
    if (v286)
    {
      sub_100004A34(v286);
    }

    v234 = *buf;
    v235 = *&buf[8];
    if (*buf != *&buf[8])
    {
      v236 = v301[0];
      do
      {
        if (v236(*v234))
        {
          break;
        }

        ++v234;
      }

      while (v234 != v235);
      v237 = *&buf[8];
      while (v234 != v237)
      {
        *v297 = *v234;
        v238 = (*(**(v283 + 6) + 16))(*(v283 + 6));
        SlicingConfiguredInfo = 0;
        SlicingConfiguredInfo = DataServiceController::getSlicingConfiguredInfo(v283, *v297);
        v239 = *v238;
        if (os_log_type_enabled(v239, OS_LOG_TYPE_DEFAULT))
        {
          rest::SlicingSupportInfo::toString(&cf, &SlicingConfiguredInfo);
          v240 = SHIBYTE(v287) >= 0 ? &cf : cf;
          *v295 = 136315138;
          *&v295[4] = v240;
          _os_log_impl(&_mh_execute_header, v239, OS_LOG_TYPE_DEFAULT, "#I update slicing: data_slicing_configured = %s (1)", v295, 0xCu);
          if (SHIBYTE(v287) < 0)
          {
            operator delete(cf);
          }
        }

        sub_1004BAE14(&__p[16], v297, &SlicingConfiguredInfo);
        do
        {
          ++v234;
        }

        while (v234 != v235 && (v236(*v234) & 1) == 0);
      }
    }

    sub_1004C53D8(__p);
    *__p = 1;
    *&__p[16] = 0u;
    *v290 = 0;
    *&__p[8] = v283 + 4328;
    sub_1004C5380(&__p[16], v283 + 4360);
    v241 = *(v283 + 14);
    *buf = *(v283 + 13);
    *&buf[8] = v241;
    if (v241)
    {
      atomic_fetch_add_explicit((v241 + 8), 1uLL, memory_order_relaxed);
    }

    subscriber::makeSimSlotRange();
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    v242 = cf;
    v243 = v286;
    if (cf != v286)
    {
      v244 = v287;
      do
      {
        if (v244(*v242))
        {
          break;
        }

        ++v242;
      }

      while (v242 != v243);
      v245 = v286;
      while (v242 != v245)
      {
        SlicingConfiguredInfo = *v242;
        v246 = (*(**(v283 + 6) + 16))(*(v283 + 6));
        *&buf[8] = v246;
        v301[0] = 0;
        *buf = off_101E50808;
        v301[1] = buf;
        SlicingSupportInfo = 0;
        v247 = SlicingConfiguredInfo;
        sub_1001058C4(v299, buf);
        SlicingSupportInfo = DataServiceController::getSlicingSupportInfo(v283, v247, v299);
        sub_100007E44(v299);
        v248 = *v246;
        if (os_log_type_enabled(v248, OS_LOG_TYPE_DEFAULT))
        {
          rest::SlicingSupportInfo::toString(v295, &SlicingSupportInfo);
          v249 = v296 >= 0 ? v295 : *v295;
          *v297 = 136315138;
          v298 = v249;
          _os_log_impl(&_mh_execute_header, v248, OS_LOG_TYPE_DEFAULT, "#I update slicing: data_slicing_support = %s (1)", v297, 0xCu);
          if (v296 < 0)
          {
            operator delete(*v295);
          }
        }

        sub_1004BAE14(&__p[16], &SlicingConfiguredInfo, &SlicingSupportInfo);
        sub_100007E44(buf);
        do
        {
          ++v242;
        }

        while (v242 != v243 && (v244(*v242) & 1) == 0);
      }
    }

    sub_1004C5638(__p);
    v250 = v283;
    v251 = *(v283 + 14);
    *buf = *(v283 + 13);
    *&buf[8] = v251;
    if (v251)
    {
      atomic_fetch_add_explicit((v251 + 8), 1uLL, memory_order_relaxed);
    }

    subscriber::makeSimSlotRange();
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    v252 = *__p;
    v253 = *&__p[8];
    if (*__p != *&__p[8])
    {
      v254 = *&__p[16];
      do
      {
        if (v254(*v252))
        {
          break;
        }

        ++v252;
      }

      while (v252 != v253);
      v255 = *&__p[8];
      while (1)
      {
        v250 = v283;
        if (v252 == v255)
        {
          break;
        }

        DataServiceController::resetSlicePolicies_sync(v283, *v252, 1, 0);
        do
        {
          ++v252;
        }

        while (v252 != v253 && (v254(*v252) & 1) == 0);
      }
    }

    DataServiceController::makeDataSimSlotRange(v250, 3, __p);
    v256 = *__p;
    v282 = *&__p[8];
    if (*__p == *&__p[8])
    {
      v259 = 0;
      v266 = 0;
      v257 = 0;
      v265 = 1;
      if (*__p)
      {
LABEL_379:
        *&__p[8] = v256;
        operator delete(v256);
      }
    }

    else
    {
      v257 = 0;
      v281 = 0;
      v258 = 0;
      v259 = 0;
      do
      {
        *buf = *v256;
        v260 = *buf;
        v261 = **sub_100007DEC(v283 + 4960, buf);
        *buf = v260;
        v262 = *(*sub_100007DEC(v283 + 4960, buf) + 23);
        *buf = v260;
        v263 = sub_100007DEC(v283 + 4960, buf);
        v264 = *v263;
        if (*(*v263 + 12) == 1)
        {
          if (*(v264 + 13))
          {
            v281 = 1;
          }

          else
          {
            v281 |= *(v264 + 14);
          }
        }

        *buf = v260;
        v265 = *(*sub_100007DEC(v283 + 4960, buf) + 15);
        *buf = v260;
        v259 |= v261;
        v258 |= v262;
        v257 |= *(*sub_100007DEC(v283 + 4960, buf) + 19);
        ++v256;
      }

      while (v256 != v282);
      v256 = *__p;
      v266 = v281;
      if (*__p)
      {
        goto LABEL_379;
      }
    }

    if ((v259 & v266 & 1) == 0)
    {
      DataServiceController::notifyLLPHS_sync(v283, 0, 0, 1);
    }

    v267 = *(v283 + 5);
    if (os_log_type_enabled(v267, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a3 + 23) >= 0)
      {
        v268 = a3;
      }

      else
      {
        v268 = *a3;
      }

      v269 = asStringBool(v259 & 1);
      v270 = asStringBool(v266 & 1);
      v271 = asStringBool(v265);
      v272 = asStringBool(v257 & 1);
      *__p = 136447234;
      *&__p[4] = v268;
      *&__p[12] = 2080;
      *&__p[14] = v269;
      *&__p[22] = 2080;
      *&__p[24] = v270;
      *v290 = 2080;
      *&v290[2] = v271;
      v291 = 2080;
      v292 = v272;
      _os_log_impl(&_mh_execute_header, v267, OS_LOG_TYPE_DEFAULT, "#I update slicing: %{public}s, newSliceUsed=%s, llphs=%s, consumer=%s,internationalRoaming=%s", __p, 0x34u);
    }

    DataServiceController::setSliceEventsListeners_sync(v283, v259 & 1, v266 & 1, 1);
    DataServiceController::setManagedConfigListener_sync(v283, v259 & 1);
    LOBYTE(cf) = 0;
    v295[0] = 0;
    sub_1004C581C();
  }

  return result;
}

void sub_1004B73F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  __cxa_guard_abort(&qword_101FBA668);
  if ((a17 & 1) == 0)
  {
    sub_100004A34(v44);
  }

  _Unwind_Resume(a1);
}

const void **DataServiceController::updateCarrierBundleTrafficDescriptors_sync(uint64_t a1, uint64_t a2)
{
  v58 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  LODWORD(v65) = a2;
  v4 = sub_100007DEC(a1 + 4960, &v65);
  v5 = *v4;
  v6 = *(*v4 + 32);
  v57 = *v4 + 32;
    ;
  }

  *(v5 + 40) = v6;
  theArray = 0;
  if ((atomic_load_explicit(&qword_101FBA788, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA788))
  {
    *&v65 = @"NRSlicing";
    *(&v65 + 1) = @"TrafficDescriptors";
    qword_101FBA778 = 0;
    unk_101FBA780 = 0;
    qword_101FBA770 = 0;
    sub_10005B328(&qword_101FBA770, &v65, v66, 2uLL);
    __cxa_atexit(sub_10041F938, &qword_101FBA770, &_mh_execute_header);
    __cxa_guard_release(&qword_101FBA788);
  }

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
  *&v65 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v65);
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
      goto LABEL_13;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
LABEL_13:
  (*(*v16 + 104))(&buf, v16, a2, 1, &qword_101FBA770, 0, 0);
  sub_10006DD00(&v63, &buf.__r_.__value_.__l.__data_);
  *&v65 = theArray;
  theArray = v63.__r_.__value_.__r.__words[0];
  v63.__r_.__value_.__r.__words[0] = 0;
  sub_100010250(&v65);
  sub_100010250(&v63.__r_.__value_.__l.__data_);
  sub_10000A1EC(&buf.__r_.__value_.__l.__data_);
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v19 = 0;
      while (1)
      {
        theDict = 0;
        *&v65 = CFArrayGetValueAtIndex(theArray, v19);
        sub_100010180(&theDict, &v65);
        if (theDict)
        {
          break;
        }

LABEL_91:
        sub_10001021C(&theDict);
        if (Count == ++v19)
        {
          return sub_100010250(&theArray);
        }
      }

      memset(v73, 0, sizeof(v73));
      v71 = 0u;
      v72 = 0u;
      memset(v70, 0, sizeof(v70));
      *__p = 0u;
      v69 = 0u;
      memset(v67, 0, sizeof(v67));
      memset(v66, 0, sizeof(v66));
      v65 = 0u;
      TrafficDescriptor::TrafficDescriptor(&v65);
      if (CFDictionaryGetValue(theDict, @"Domain"))
      {
        memset(&v63, 0, sizeof(v63));
        ctu::cf::assign();
        buf.__r_.__value_.__r.__words[0] = v63.__r_.__value_.__l.__size_;
        v20 = v63.__r_.__value_.__r.__words[0];
        *(buf.__r_.__value_.__r.__words + 7) = *(&v63.__r_.__value_.__r.__words[1] + 7);
        v21 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
        if (v70[0])
        {
          if (SHIBYTE(v69) < 0)
          {
            operator delete(__p[1]);
          }

          __p[1] = v20;
          *&v69 = buf.__r_.__value_.__r.__words[0];
          *(&v69 + 7) = *(buf.__r_.__value_.__r.__words + 7);
          HIBYTE(v69) = v21;
        }

        else
        {
          __p[1] = v63.__r_.__value_.__l.__data_;
          *&v69 = buf.__r_.__value_.__r.__words[0];
          *(&v69 + 7) = *(buf.__r_.__value_.__r.__words + 7);
          HIBYTE(v69) = *(&v63.__r_.__value_.__s + 23);
          LOBYTE(v70[0]) = 1;
        }
      }

      if (CFDictionaryGetValue(theDict, @"Dnn"))
      {
        memset(&v63, 0, sizeof(v63));
        ctu::cf::assign();
        buf.__r_.__value_.__r.__words[0] = v63.__r_.__value_.__l.__size_;
        v22 = v63.__r_.__value_.__r.__words[0];
        *(buf.__r_.__value_.__r.__words + 7) = *(&v63.__r_.__value_.__r.__words[1] + 7);
        v23 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
        if (v73[3])
        {
          if (SHIBYTE(v73[2]) < 0)
          {
            operator delete(v73[0]);
          }

          v73[0] = v22;
          v73[1] = buf.__r_.__value_.__l.__data_;
          *(&v73[1] + 7) = *(buf.__r_.__value_.__r.__words + 7);
          HIBYTE(v73[2]) = v23;
        }

        else
        {
          v73[0] = v63.__r_.__value_.__l.__data_;
          v73[1] = buf.__r_.__value_.__l.__data_;
          *(&v73[1] + 7) = *(buf.__r_.__value_.__r.__words + 7);
          HIBYTE(v73[2]) = *(&v63.__r_.__value_.__s + 23);
          LOBYTE(v73[3]) = 1;
        }
      }

      if (CFDictionaryGetValue(theDict, @"RsDnn"))
      {
        memset(&v63, 0, sizeof(v63));
        ctu::cf::assign();
        buf.__r_.__value_.__r.__words[0] = v63.__r_.__value_.__l.__size_;
        v24 = v63.__r_.__value_.__r.__words[0];
        *(buf.__r_.__value_.__r.__words + 7) = *(&v63.__r_.__value_.__r.__words[1] + 7);
        v25 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
        if (v73[7])
        {
          if (SHIBYTE(v73[6]) < 0)
          {
            operator delete(v73[4]);
          }

          v73[4] = v24;
          v73[5] = buf.__r_.__value_.__l.__data_;
          *(&v73[5] + 7) = *(buf.__r_.__value_.__r.__words + 7);
          HIBYTE(v73[6]) = v25;
        }

        else
        {
          v73[4] = v63.__r_.__value_.__l.__data_;
          v73[5] = buf.__r_.__value_.__l.__data_;
          *(&v73[5] + 7) = *(buf.__r_.__value_.__r.__words + 7);
          HIBYTE(v73[6]) = *(&v63.__r_.__value_.__s + 23);
          LOBYTE(v73[7]) = 1;
        }
      }

      Value = CFDictionaryGetValue(theDict, @"Port");
      v27 = Value;
      if (Value)
      {
        LOWORD(v63.__r_.__value_.__l.__data_) = 0;
        v28 = CFGetTypeID(Value);
        if (v28 == CFNumberGetTypeID())
        {
          ctu::cf::assign(&v63, v27, v29);
        }

        WORD2(v71) = v63.__r_.__value_.__l.__data_;
        BYTE6(v71) = 1;
      }

      v30 = CFDictionaryGetValue(theDict, @"PortRangeStart");
      if (v30)
      {
        v31 = CFDictionaryGetValue(theDict, @"PortRangeEnd");
        if (v31)
        {
          LOWORD(v63.__r_.__value_.__l.__data_) = 0;
          v32 = CFGetTypeID(v30);
          if (v32 == CFNumberGetTypeID())
          {
            ctu::cf::assign(&v63, v30, v33);
          }

          data_low = LOWORD(v63.__r_.__value_.__l.__data_);
          LOWORD(v63.__r_.__value_.__l.__data_) = 0;
          v35 = CFGetTypeID(v31);
          if (v35 == CFNumberGetTypeID())
          {
            ctu::cf::assign(&v63, v31, v36);
          }

          if (data_low <= LOWORD(v63.__r_.__value_.__l.__data_))
          {
            if (BYTE12(v71) == 1)
            {
              WORD4(v71) = data_low;
              WORD5(v71) = v63.__r_.__value_.__l.__data_;
            }

            else
            {
              DWORD2(v71) = data_low | (LOWORD(v63.__r_.__value_.__l.__data_) << 16);
              BYTE12(v71) = 1;
            }
          }
        }
      }

      if (CFDictionaryGetValue(theDict, @"Address"))
      {
        memset(&buf, 0, sizeof(buf));
        memset(&v63, 0, sizeof(v63));
        ctu::cf::assign();
        v59 = v63.__r_.__value_.__r.__words[0];
        v60 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
        CSIPacketAddress::CSIPacketAddress();
        if (v60 < 0)
        {
          operator delete(v59);
        }

        v37 = CFDictionaryGetValue(theDict, @"AddressPrefix");
        v38 = v37;
        if (v37)
        {
          v63.__r_.__value_.__s.__data_[0] = 0;
          v39 = CFGetTypeID(v37);
          if (v39 == CFNumberGetTypeID())
          {
            ctu::cf::assign(&v63, v38, v40);
          }

          CSIPacketAddress::setPrefixLen(&buf, v63.__r_.__value_.__s.__data_[0]);
        }

        sub_1001B88C0((v70 + 8), &buf);
      }

      v41 = CFDictionaryGetValue(theDict, @"IpProtocol");
      v42 = v41;
      if (v41)
      {
        LOWORD(v63.__r_.__value_.__l.__data_) = 0;
        v43 = CFGetTypeID(v41);
        if (v43 == CFNumberGetTypeID())
        {
          ctu::cf::assign(&v63, v42, v44);
        }

        HIWORD(v71) = v63.__r_.__value_.__l.__data_;
        LOBYTE(v72) = 1;
      }

      v45 = CFDictionaryGetValue(theDict, @"TrafficClass");
      if (v45)
      {
        TypeID = CFNumberGetTypeID();
        if (TypeID == CFGetTypeID(v45))
        {
          LODWORD(v63.__r_.__value_.__l.__data_) = 0;
          v47 = CFGetTypeID(v45);
          if (v47 == CFNumberGetTypeID())
          {
            ctu::cf::assign(&v63, v45, v48);
          }

          DWORD1(v72) = v63.__r_.__value_.__l.__data_;
          BYTE8(v72) = 1;
        }
      }

      if (CFDictionaryGetValue(theDict, @"App"))
      {
        memset(&buf, 0, sizeof(buf));
        memset(&v63, 0, sizeof(v63));
        ctu::cf::assign();
        buf = v63;
        size = v63.__r_.__value_.__l.__size_;
        v50 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
        if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v63.__r_.__value_.__r.__words[2]);
        }

        if (!size)
        {
          goto LABEL_79;
        }

        sub_1001696A4(v67, &buf);
      }

      else
      {
        if (!CFDictionaryGetValue(theDict, @"EApp"))
        {
LABEL_81:
          v52 = *v58;
          if (os_log_type_enabled(*v58, OS_LOG_TYPE_DEFAULT))
          {
            TrafficDescriptor::toString(&v63, &v65);
            v53 = (v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v63 : v63.__r_.__value_.__r.__words[0];
            LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
            *(buf.__r_.__value_.__r.__words + 4) = v53;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#I TrafficDescriptor from CB: %{public}s", &buf, 0xCu);
            if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v63.__r_.__value_.__l.__data_);
            }
          }

          v54 = *(v5 + 40);
          if (v54 >= *(v5 + 48))
          {
            v55 = sub_1001C1784(v57, &v65);
          }

          else
          {
            TrafficDescriptor::TrafficDescriptor(*(v5 + 40), &v65);
            v55 = v54 + 304;
            *(v5 + 40) = v54 + 304;
          }

          *(v5 + 40) = v55;
          TrafficDescriptor::~TrafficDescriptor(&v65);
          goto LABEL_91;
        }

        memset(&buf, 0, sizeof(buf));
        memset(&v63, 0, sizeof(v63));
        ctu::cf::assign();
        buf = v63;
        v51 = v63.__r_.__value_.__l.__size_;
        v50 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
        if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v51 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
        }

        if (!v51)
        {
LABEL_79:
          if (v50 < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          goto LABEL_81;
        }

        sub_100215390(v67, &kDefaultAppBundleId);
        sub_1001696A4(v66, &buf);
      }

      v50 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      goto LABEL_79;
    }
  }

  return sub_100010250(&theArray);
}