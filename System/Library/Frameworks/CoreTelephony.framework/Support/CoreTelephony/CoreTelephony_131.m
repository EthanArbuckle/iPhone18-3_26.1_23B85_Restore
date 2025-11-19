void sub_1011A2F98(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011A2FC8(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1011A3030(capabilities::ct *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 8) = 0;
  v8 = (a4 + 8);
  *(a4 + 16) = 0;
  *a4 = a4 + 8;
  if ((capabilities::ct::supportsGemini(a1) & 1) == 0 || !a2[2])
  {
    return;
  }

  v9 = *(a3 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = a3[1];
  }

  if (v9)
  {
    v48 = a1;
    context = objc_autoreleasePoolPush();
    __src = 0;
    v53 = 0;
    v54 = 0;
    v10 = [[NSMutableArray alloc] initWithCapacity:2 * a2[2]];
    v45 = a2;
    v13 = *a2;
    v12 = a2 + 1;
    v11 = v13;
    if (v13 != v12)
    {
      do
      {
        v14 = v11 + 8;
        if (*(v11 + 87) < 0)
        {
          v14 = *v14;
        }

        [v10 addObject:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v14, v45, context)}];
        v15 = v11 + 5;
        if (*(v11 + 63) < 0)
        {
          v15 = *v15;
        }

        [v10 addObject:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v15)}];
        v16 = v53;
        if (v53 >= v54)
        {
          v18 = __src;
          v19 = v53 - __src;
          v20 = (v53 - __src) >> 2;
          v21 = v20 + 1;
          if ((v20 + 1) >> 62)
          {
            sub_1000CE3D4();
          }

          v22 = v54 - __src;
          if ((v54 - __src) >> 1 > v21)
          {
            v21 = v22 >> 1;
          }

          v23 = v22 >= 0x7FFFFFFFFFFFFFFCLL;
          v24 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v23)
          {
            v24 = v21;
          }

          if (v24)
          {
            sub_100016740(&__src, v24);
          }

          *(4 * v20) = *(v11 + 8);
          v17 = 4 * v20 + 4;
          memcpy(0, v18, v19);
          v25 = __src;
          __src = 0;
          v53 = v17;
          v54 = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *v53 = *(v11 + 8);
          v17 = (v16 + 4);
        }

        v53 = v17;
        v26 = v11[1];
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
            v27 = v11[2];
            v28 = *v27 == v11;
            v11 = v27;
          }

          while (!v28);
        }

        v11 = v27;
      }

      while (v27 != v12);
    }

    if (*(a3 + 23) >= 0)
    {
      v29 = a3;
    }

    else
    {
      v29 = *a3;
    }

    [NSArray arrayWithObject:[NSString stringWithUTF8String:v29, v45]];
    v50 = 0;
    v51 = 0;
    Registry::getMobileHelper(&v50, *(v48 + 6));
    v30 = *(v48 + 5);
    if (!v50)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s%sgetShortLabelForSlots, failed to create Mobile Helper", buf, 0x16u);
      }

      v35 = 0;
      v42 = 1;
      goto LABEL_63;
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "#D %s%sLabels", buf, 0x16u);
    }

    *buf = off_101F176B8;
    *&buf[8] = v48;
    v57 = buf;
    logger::CFTypeRefLogger();
    sub_100007E44(buf);
    theArray = 0;
    (*(*v50 + 64))(&theArray);
    v31 = *(v48 + 5);
    if (theArray)
    {
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "#D %s%sBadges", buf, 0x16u);
      }

      *buf = off_101F17738;
      *&buf[8] = v48;
      v57 = buf;
      logger::CFTypeRefLogger();
      sub_100007E44(buf);
      Count = CFArrayGetCount(theArray);
      v33 = *(v46 + 16);
      if (Count != v33)
      {
        v43 = *(v48 + 5);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v44 = CFArrayGetCount(theArray);
          *buf = 136315906;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          v56 = 2048;
          v57 = v33;
          v58 = 2048;
          v59 = v44;
          _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "#E %s%smismatch in labels (%zu) / badges (%zu) - bail out", buf, 0x2Au);
        }

        v35 = 0;
        v42 = 1;
        goto LABEL_62;
      }

      v34 = __src;
      v35 = 1;
      if (v53 == __src)
      {
        v42 = 0;
        goto LABEL_62;
      }

      v36 = 0;
      do
      {
        CFArrayGetValueAtIndex(theArray, v36);
        v37 = *v8;
        if (!*v8)
        {
LABEL_47:
          operator new();
        }

        v38 = v34[v36];
        while (1)
        {
          while (1)
          {
            v39 = v37;
            v40 = *(v37 + 32);
            if (v40 <= v38)
            {
              break;
            }

            v37 = *v39;
            if (!*v39)
            {
              goto LABEL_47;
            }
          }

          if (v40 >= v38)
          {
            break;
          }

          v37 = v39[1];
          if (!v37)
          {
            goto LABEL_47;
          }
        }

        ++v36;
        v34 = __src;
      }

      while (v36 < (v53 - __src) >> 2);
    }

    else if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "#E %s%sEmpty getBadgeLabels result", buf, 0x16u);
    }

    v42 = 0;
    v35 = 1;
LABEL_62:
    sub_100010250(&theArray);
LABEL_63:
    if (v51)
    {
      sub_100004A34(v51);
    }

    if (__src)
    {
      v53 = __src;
      operator delete(__src);
    }

    objc_autoreleasePoolPop(context);
    if (((v35 | v42) & 1) == 0)
    {
      sub_1001B1588(a4, *(a4 + 8));
    }

    return;
  }

  v41 = *(a1 + 5);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#W %s%slanguage not set yet", buf, 0x16u);
  }
}

void sub_1011A3714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, uint64_t a18, char a19)
{
  sub_100010250(&a13);
  if (a15)
  {
    sub_100004A34(a15);
  }

  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  sub_1001B1588(v19, *(v19 + 8));
  _Unwind_Resume(a1);
}

void sub_1011A37B0(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = *(a1 + 40);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    *buf = 136315394;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sgetShortLabels", buf, 0x16u);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if ((capabilities::ct::supportsGemini(v9) & 1) != 0 && a2[1] != *a2)
  {
    v10 = *(a3 + 23);
    if ((v10 & 0x80u) != 0)
    {
      v10 = a3[1];
    }

    if (v10)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = [[NSMutableArray alloc] initWithCapacity:0x5555555555555556 * ((a2[1] - *a2) >> 4)];
      v13 = *a2;
      v14 = a2[1];
      if (*a2 != v14)
      {
        do
        {
          v15 = v13 + 3;
          if (*(v13 + 47) < 0)
          {
            v15 = *v15;
          }

          [v12 addObject:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v15)}];
          v16 = v13;
          if (*(v13 + 23) < 0)
          {
            v16 = *v13;
          }

          [v12 addObject:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v16)}];
          v13 += 6;
        }

        while (v13 != v14);
      }

      if (*(a3 + 23) >= 0)
      {
        v17 = a3;
      }

      else
      {
        v17 = *a3;
      }

      [NSArray arrayWithObject:[NSString stringWithUTF8String:v17]];
      v29 = 0;
      v30 = 0;
      Registry::getMobileHelper(&v29, *(a1 + 48));
      v18 = *(a1 + 40);
      if (!v29)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%sgetShortLabels, failed to create Mobile Helper", buf, 0x16u);
        }

        v25 = 0;
        v26 = 1;
        goto LABEL_40;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "#D %s%sLabels", buf, 0x16u);
      }

      *buf = off_101F177B8;
      *&buf[8] = a1;
      v33 = buf;
      logger::CFTypeRefLogger();
      sub_100007E44(buf);
      theArray = 0;
      (*(*v29 + 64))(&theArray);
      v19 = *(a1 + 40);
      if (theArray)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "#D %s%sBadges", buf, 0x16u);
        }

        *buf = off_101F17838;
        *&buf[8] = a1;
        v33 = buf;
        logger::CFTypeRefLogger();
        sub_100007E44(buf);
        Count = CFArrayGetCount(theArray);
        v21 = Count;
        v22 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4);
        if (Count != v22)
        {
          v27 = *(a1 + 40);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            *&buf[4] = "";
            *&buf[12] = 2080;
            *&buf[14] = "";
            v32 = 2048;
            v33 = v22;
            v34 = 2048;
            v35 = v21;
            _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "#E %s%smismatch in labels (%zu) / badges (%zu) - bail out", buf, 0x2Au);
          }

          v25 = 0;
          v26 = 1;
          goto LABEL_39;
        }

        if (Count)
        {
          v23 = 0;
          do
          {
            *buf = CFArrayGetValueAtIndex(theArray, v23);
            sub_1011A3DC4(a4, buf);
            ++v23;
          }

          while (v21 != v23);
        }
      }

      else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "#E %s%sEmpty getBadgeLabels result", buf, 0x16u);
      }

      v26 = 0;
      v25 = 1;
LABEL_39:
      sub_100010250(&theArray);
LABEL_40:
      if (v30)
      {
        sub_100004A34(v30);
      }

      objc_autoreleasePoolPop(v11);
      if (((v25 | v26) & 1) == 0)
      {
        *buf = a4;
        sub_100222314(buf);
      }

      return;
    }

    v24 = *(a1 + 40);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#W %s%slanguage not set yet", buf, 0x16u);
    }
  }
}

void sub_1011A3D4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, std::__shared_weak_count *);
  sub_100010250(va);
  if (v6)
  {
    sub_100004A34(v6);
  }

  sub_100222314(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1011A3DC4(void *a1, CFTypeRef *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_1000CE3D4();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v12[4] = a1;
    if (v11)
    {
      sub_10005B2E0(a1, v11);
    }

    v12[0] = 0;
    v12[1] = 8 * v8;
    v12[3] = 0;
    sub_100060DE8((8 * v8), a2);
    v12[2] = 8 * v8 + 8;
    sub_1002220D4(a1, v12);
    v7 = a1[1];
    result = sub_100222180(v12);
  }

  else
  {
    result = sub_100060DE8(a1[1], a2);
    v7 = v5 + 8;
    a1[1] = v5 + 8;
  }

  a1[1] = v7;
  return result;
}

void sub_1011A3ED4(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = *(a1 + 40);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    *buf = 136315394;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sgetLocalizedPredefinedLabels", buf, 0x16u);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if ((capabilities::ct::supportsGemini(v9) & 1) != 0 && a2[1] != *a2)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [[NSMutableArray alloc] initWithCapacity:0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2)];
    v12 = *a2;
    v13 = a2[1];
    if (*a2 != v13)
    {
      do
      {
        v14 = v12;
        if (*(v12 + 23) < 0)
        {
          v14 = *v12;
        }

        [v11 addObject:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v14)}];
        v12 += 3;
      }

      while (v12 != v13);
    }

    if (*(a3 + 23) < 0)
    {
      if (!a3[1])
      {
LABEL_15:
        +[NSArray array];
LABEL_16:
        v25 = 0;
        v26 = 0;
        Registry::getMobileHelper(&v25, *(a1 + 48));
        v15 = *(a1 + 40);
        if (!v25)
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "";
            *&buf[12] = 2080;
            *&buf[14] = "";
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sgetShortLabels, failed to create Mobile Helper", buf, 0x16u);
          }

          v21 = 0;
          v22 = 1;
          goto LABEL_37;
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "#D %s%sCT Labels", buf, 0x16u);
        }

        *buf = off_101F178B8;
        *&buf[8] = a1;
        v29 = buf;
        logger::CFTypeRefLogger();
        sub_100007E44(buf);
        theArray = 0;
        (*(*v25 + 72))(&theArray);
        v16 = *(a1 + 40);
        if (theArray)
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            *&buf[4] = "";
            *&buf[12] = 2080;
            *&buf[14] = "";
            _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "#D %s%sLocalized labels", buf, 0x16u);
          }

          *buf = off_101F17938;
          *&buf[8] = a1;
          v29 = buf;
          logger::CFTypeRefLogger();
          sub_100007E44(buf);
          Count = CFArrayGetCount(theArray);
          v18 = Count;
          v19 = 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2);
          if (Count != v19)
          {
            v23 = *(a1 + 40);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315906;
              *&buf[4] = "";
              *&buf[12] = 2080;
              *&buf[14] = "";
              v28 = 2048;
              v29 = v19;
              v30 = 2048;
              v31 = v18;
              _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "#E %s%smismatch in request (%zu) and localized labels (%zu) - bail out", buf, 0x2Au);
            }

            v21 = 0;
            v22 = 1;
            goto LABEL_36;
          }

          if (Count)
          {
            v20 = 0;
            do
            {
              *buf = CFArrayGetValueAtIndex(theArray, v20);
              sub_1011A3DC4(a4, buf);
              ++v20;
            }

            while (v18 != v20);
          }
        }

        else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "#E %s%sEmpty getLocalizedPredefinedLabels result", buf, 0x16u);
        }

        v22 = 0;
        v21 = 1;
LABEL_36:
        sub_100010250(&theArray);
LABEL_37:
        if (v26)
        {
          sub_100004A34(v26);
        }

        objc_autoreleasePoolPop(v10);
        if (((v21 | v22) & 1) == 0)
        {
          *buf = a4;
          sub_100222314(buf);
        }

        return;
      }

      a3 = *a3;
    }

    else if (!*(a3 + 23))
    {
      goto LABEL_15;
    }

    [NSArray arrayWithObject:[NSString stringWithUTF8String:a3]];
    goto LABEL_16;
  }
}

void sub_1011A43F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, std::__shared_weak_count *);
  sub_100010250(va);
  if (v6)
  {
    sub_100004A34(v6);
  }

  sub_100222314(va1);
  _Unwind_Resume(a1);
}

void sub_1011A4468(int a1, Registry *this, void *a3)
{
  ServiceMap = Registry::getServiceMap(this);
  v5 = ServiceMap;
  if ((v6 & 0x8000000000000000) != 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  v14 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v14);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_9:
  (*(*v12 + 40))(v12, kAlertDialogLocalizationTable, *a3, a3[1]);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_1011A458C(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011A45A8(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    CFUserNotificationCancel(v2);
    a1[10] = 0;
  }

  v3 = a1[8];
  if (v3)
  {
    v4 = a1[5];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *v3;
      v6 = *(*v3 + 175);
      v7 = (v6 & 0x80u) != 0;
      if ((v6 & 0x80u) != 0)
      {
        v6 = *(*v3 + 160);
      }

      v8 = (v5 + 19);
      if (v7)
      {
        v8 = v5[19];
      }

      if (v6)
      {
        v9 = v8;
      }

      else
      {
        v9 = "<invalid>";
      }

      if (*(v5 + 23) < 0)
      {
        v5 = *v5;
      }

      v11 = 136315906;
      v12 = "";
      v13 = 2080;
      v14 = "";
      v15 = 2080;
      v16 = v9;
      v17 = 2080;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sCanceling current alert for %s : %s", &v11, 0x2Au);
    }

    v10 = a1[9];
    a1[8] = 0;
    a1[9] = 0;
    if (v10)
    {
      sub_100004A34(v10);
    }
  }
}

void sub_1011A46D8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    *a2 = v4;
    a2[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(v3 + 1, 1uLL, memory_order_relaxed);
    }

    if (v4)
    {
      v5 = *(a1 + 40);
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v6 = v4[19];
      v7 = *(v4 + 175);
      v8 = v7;
      if ((v7 & 0x80u) != 0)
      {
        v7 = v4[20];
      }

      if (v8 >= 0)
      {
        v6 = (v4 + 19);
      }

      if (!v7)
      {
        v6 = "<invalid>";
      }

      if (*(v4 + 23) < 0)
      {
        v4 = *v4;
      }

      v13 = 136315906;
      v14 = "";
      v15 = 2080;
      v16 = "";
      v17 = 2080;
      v18 = v6;
      v19 = 2080;
      v20 = v4;
      v9 = "#I %s%scurrent alert for %s : %s";
      v10 = v5;
      v11 = 42;
      goto LABEL_18;
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  v12 = *(a1 + 40);
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    return;
  }

  v13 = 136315394;
  v14 = "";
  v15 = 2080;
  v16 = "";
  v9 = "#I %s%sno current alert";
  v10 = v12;
  v11 = 22;
LABEL_18:
  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &v13, v11);
}

void sub_1011A4854(void *a1, uint8_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a1 + 8;
  v5 = a1[8];
  if (v5)
  {
    v9 = a1[9];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = a1[9];
      *v4 = 0;
      v4[1] = 0;
      if (v10)
      {
        sub_100004A34(v10);
      }
    }

    else
    {
      *v4 = 0;
      a1[9] = 0;
    }

    v12 = a3[1];
    v17 = *a3;
    v18 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = a4[1];
    v15 = *a4;
    v16 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = *(v5 + 64);
    buf[0] = a2;
    if (!v14)
    {
      sub_100022DB4();
    }

    (*(*v14 + 48))(v14, buf, &v17, &v15);
    if (v16)
    {
      sub_100004A34(v16);
    }

    if (v18)
    {
      sub_100004A34(v18);
    }

    if (v9)
    {
      sub_100004A34(v9);
    }
  }

  else
  {
    v11 = a1[5];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "";
      v21 = 2080;
      v22 = "";
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "#E %s%sfinalizeDialog - no fAlertInfo?!", buf, 0x16u);
    }
  }
}

void sub_1011A49F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1011A4A20(capabilities::ct *a1)
{
  if (*(a1 + 8))
  {
    v1 = *(a1 + 5);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 136315394;
      *&buf[1] = "";
      LOWORD(buf[3]) = 2080;
      *(&buf[3] + 2) = "";
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I %s%sAlert on the screen - displayResolutionAlert ignored", buf, 0x16u);
    }
  }

  else if (capabilities::ct::supportsGemini(a1))
  {
    sub_1011A8050();
  }

  return 0;
}

void sub_1011A4EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va5, a5);
  va_start(va4, a5);
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v8 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v10 = va_arg(va3, const void *);
  va_copy(va4, va3);
  v12 = va_arg(va4, const void *);
  va_copy(va5, va4);
  v14 = va_arg(va5, const void *);
  sub_1000296E0(va);
  sub_100005978(va4);
  sub_100005978(va5);
  sub_100005978(va1);
  sub_100005978(va2);
  sub_100005978(va3);
  _Unwind_Resume(a1);
}

void sub_1011A4F8C(uint64_t a1, uint64_t a2)
{
  if (qword_101FCBD28)
  {
    v4 = std::__shared_weak_count::lock(qword_101FCBD28);
    if (v4)
    {
      v5 = v4;
      v6 = qword_101FCBD20;
      if (qword_101FCBD20)
      {
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3321888768;
        v12[2] = sub_1011A6048;
        v12[3] = &unk_101F175E0;
        v12[4] = qword_101FCBD20;
        v13 = v4;
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        v14 = a1;
        v15 = a2;
        v7 = v6[2];
        if (!v7 || (v8 = v6[1], (v9 = std::__shared_weak_count::lock(v7)) == 0))
        {
          sub_100013CC4();
        }

        v10 = v9;
        v11 = v6[3];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3321888768;
        block[2] = sub_1011A6BD8;
        block[3] = &unk_101F17618;
        block[5] = v8;
        v17 = v10;
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        block[4] = v12;
        dispatch_async(v11, block);
        if (v17)
        {
          sub_100004A34(v17);
        }

        sub_100004A34(v10);
        if (v13)
        {
          sub_100004A34(v13);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1011A50F0(uint64_t a1, uint64_t a2)
{
  if (qword_101FCBD28)
  {
    v4 = std::__shared_weak_count::lock(qword_101FCBD28);
    if (v4)
    {
      v5 = v4;
      v6 = qword_101FCBD20;
      if (qword_101FCBD20)
      {
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3321888768;
        v12[2] = sub_1011A6C14;
        v12[3] = &unk_101F175E0;
        v12[4] = qword_101FCBD20;
        v13 = v4;
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        v14 = a1;
        v15 = a2;
        v7 = v6[2];
        if (!v7 || (v8 = v6[1], (v9 = std::__shared_weak_count::lock(v7)) == 0))
        {
          sub_100013CC4();
        }

        v10 = v9;
        v11 = v6[3];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3321888768;
        block[2] = sub_1011A6BD8;
        block[3] = &unk_101F17618;
        block[5] = v8;
        v17 = v10;
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        block[4] = v12;
        dispatch_async(v11, block);
        if (v17)
        {
          sub_100004A34(v17);
        }

        sub_100004A34(v10);
        if (v13)
        {
          sub_100004A34(v13);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1011A5254(uint64_t a1, uint64_t a2)
{
  if (qword_101FCBD28)
  {
    v4 = std::__shared_weak_count::lock(qword_101FCBD28);
    if (v4)
    {
      v5 = v4;
      v6 = qword_101FCBD20;
      if (qword_101FCBD20)
      {
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3321888768;
        v12[2] = sub_1011A6ECC;
        v12[3] = &unk_101F175E0;
        v12[4] = qword_101FCBD20;
        v13 = v4;
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        v14 = a1;
        v15 = a2;
        v7 = v6[2];
        if (!v7 || (v8 = v6[1], (v9 = std::__shared_weak_count::lock(v7)) == 0))
        {
          sub_100013CC4();
        }

        v10 = v9;
        v11 = v6[3];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3321888768;
        block[2] = sub_1011A6BD8;
        block[3] = &unk_101F17618;
        block[5] = v8;
        v17 = v10;
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        block[4] = v12;
        dispatch_async(v11, block);
        if (v17)
        {
          sub_100004A34(v17);
        }

        sub_100004A34(v10);
        if (v13)
        {
          sub_100004A34(v13);
        }
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1011A53B8(capabilities::ct *a1)
{
  if (*(a1 + 8))
  {
    v1 = *(a1 + 5);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 136315394;
      *&buf[1] = "";
      LOWORD(buf[3]) = 2080;
      *(&buf[3] + 2) = "";
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I %s%sAlert on the screen - displayMultichoiceResolutionAlertx ignored", buf, 0x16u);
    }
  }

  else if (capabilities::ct::supportsGemini(a1))
  {
    sub_1011A8050();
  }

  return 0;
}

void sub_1011A5AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va5, a4);
  va_start(va4, a4);
  va_start(va3, a4);
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v7 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v9 = va_arg(va3, const void *);
  va_copy(va4, va3);
  v11 = va_arg(va4, const void *);
  va_copy(va5, va4);
  v13 = va_arg(va5, const void *);
  v15 = va_arg(va5, void);
  sub_1000296E0(va5);
  sub_100005978(va);
  sub_100005978(va1);
  sub_100005978(va2);
  sub_100005978(va3);
  sub_100005978(va4);
  _Unwind_Resume(a1);
}

void sub_1011A5B74(uint64_t a1, uint64_t a2)
{
  if (qword_101FCBD28)
  {
    v4 = std::__shared_weak_count::lock(qword_101FCBD28);
    if (v4)
    {
      v5 = v4;
      v6 = qword_101FCBD20;
      if (qword_101FCBD20)
      {
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3321888768;
        v12[2] = sub_1011A70D0;
        v12[3] = &unk_101F175E0;
        v12[4] = qword_101FCBD20;
        v13 = v4;
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        v14 = a1;
        v15 = a2;
        v7 = v6[2];
        if (!v7 || (v8 = v6[1], (v9 = std::__shared_weak_count::lock(v7)) == 0))
        {
          sub_100013CC4();
        }

        v10 = v9;
        v11 = v6[3];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3321888768;
        block[2] = sub_1011A6BD8;
        block[3] = &unk_101F17618;
        block[5] = v8;
        v17 = v10;
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        block[4] = v12;
        dispatch_async(v11, block);
        if (v17)
        {
          sub_100004A34(v17);
        }

        sub_100004A34(v10);
        if (v13)
        {
          sub_100004A34(v13);
        }
      }

      sub_100004A34(v5);
    }
  }
}

const void **sub_1011A5CD8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, CFStringRef *a3@<X8>)
{
  src = CFUUIDGetUUIDBytes(*(a1 + 112));
  memset(dst, 0, sizeof(dst));
  uuid_copy(dst, &src.byte0);
  v5 = [a2 dataUsingEncoding:4];
  memset(&v7, 0, sizeof(v7));
  CC_SHA1_Init(&v7);
  CC_SHA1_Update(&v7, dst, 0x10u);
  CC_SHA1_Update(&v7, [v5 bytes], objc_msgSend(v5, "length"));
  memset(md, 0, sizeof(md));
  v10 = 0;
  CC_SHA1_Final(md, &v7);
  *&v7.h0 = CFUUIDCreateFromUUIDBytes(0, vorrq_s8(vandq_s8(*md, xmmword_101927280), xmmword_101927290));
  *a3 = CFUUIDCreateString(0, *&v7.h0);
  return sub_1000475BC(&v7);
}

void sub_1011A5E28(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    v8 = *(a2 + 16);
  }

  if (SHIBYTE(v8) < 0)
  {
    sub_100005F2C(__dst, v7[0], v7[1]);
  }

  else
  {
    *__dst = *v7;
    v13 = v8;
  }

  v11 = 0;
  if (SHIBYTE(v13) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v15 = v13;
  }

  v16 = 0;
  if (ctu::cf::convert_copy())
  {
    v5 = v11;
    v11 = v16;
    v17 = v5;
    sub_100005978(&v17);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = v11;
  v9 = v11;
  v11 = 0;
  sub_100005978(&v11);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__dst[0]);
  }

  (*(*a1 + 96))(&v10, a1, v6);
  __p[0] = 0;
  __p[1] = 0;
  v15 = 0;
  ctu::cf::assign();
  *a3 = *__p;
  *(a3 + 16) = v15;
  sub_100005978(&v10);
  sub_100005978(&v9);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }
}

void sub_1011A5FC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, int a20, const void *a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  sub_100005978(&a21);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void sub_1011A6048(void *a1)
{
  v1 = a1[4];
  if (*(v1 + 80) != a1[6])
  {
    v2 = *(v1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sUnsolicited alert response", buf, 0x16u);
    }

    return;
  }

  v3 = a1[7];
  CFRelease(*(v1 + 80));
  *(v1 + 80) = 0;
  v4 = *(v1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    v50 = 1024;
    v51 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sResolution Alert result %d", buf, 0x1Cu);
  }

  if (v3 == 3 || v3 == 1)
  {
    v6 = *(v1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sShow Resolution Information Decide Later Alert", buf, 0x16u);
    }

    v47 = 0;
    sub_1011A4468(&v47, *(v1 + 48), &off_101FB93D0);
    v46 = 0;
    sub_1011A4468(&v46, *(v1 + 48), &off_101FB93E0);
    value = 0;
    v8 = **(*(v1 + 64) + 16);
    if (SHIBYTE(v8->data) < 0)
    {
      v8 = v8->isa;
    }

    v9 = v47;
    v48 = 0;
    source = 0;
    if (ctu::cf::convert_copy(&source, v8, 0x8000100, kCFAllocatorDefault, v7))
    {
      v10 = v48;
      v48 = source;
      *buf = v10;
      sub_100005978(buf);
    }

    v44 = v48;
    v48 = 0;
    sub_100005978(&v48);
    value = CFStringCreateWithFormat(0, 0, v9, v44);
    sub_100005978(&v44);
    v44 = 0;
    v12 = **(*(v1 + 64) + 16);
    if (SHIBYTE(v12->data) < 0)
    {
      v12 = v12->isa;
    }

    v13 = v46;
    v48 = 0;
    source = 0;
    if (ctu::cf::convert_copy(&source, v12, 0x8000100, kCFAllocatorDefault, v11))
    {
      v14 = v48;
      v48 = source;
      *buf = v14;
      sub_100005978(buf);
    }

    theDict = v48;
    v48 = 0;
    sub_100005978(&v48);
    v44 = CFStringCreateWithFormat(0, 0, v13, theDict);
    sub_100005978(&theDict);
    v48 = 0;
    sub_1011A4468(&v48, *(v1 + 48), &off_101FB93F0);
    theDict = 0;
    theDict = CFDictionaryCreateMutable(0, 3, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryAddValue(theDict, kCFUserNotificationAlertHeaderKey, value);
    CFDictionaryAddValue(theDict, kCFUserNotificationAlertMessageKey, v44);
    CFDictionaryAddValue(theDict, kCFUserNotificationDefaultButtonTitleKey, v48);
    error = 0;
    v15 = CFUserNotificationCreate(0, 0.0, 0, &error, theDict);
    v16 = v15;
    *(v1 + 80) = v15;
    if (error || !v15)
    {
      v31 = *(v1 + 40);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s%sCould not create displayResolutionDecideLaterInformationAlert", buf, 0x16u);
        v16 = *(v1 + 80);
      }

      if (v16)
      {
        CFRelease(v16);
        *(v1 + 80) = 0;
      }
    }

    else
    {
      source = CFUserNotificationCreateRunLoopSource(0, v15, sub_1011A5254, 0);
      if (source)
      {
        Main = CFRunLoopGetMain();
        CFRunLoopAddSource(Main, source, kCFRunLoopCommonModes);
        v18 = *(v1 + 40);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%sdisplayResolutionDecideLaterInformationAlert shown", buf, 0x16u);
        }
      }

      else
      {
        v33 = *(v1 + 40);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I %s%sCould not create displayResolutionDecideLaterInformationAlert runloop", buf, 0x16u);
        }

        CFRelease(*(v1 + 80));
        *(v1 + 80) = 0;
      }

      sub_100C190B8(&source);
      if (*(v1 + 80))
      {
        goto LABEL_60;
      }
    }

    v34 = *(v1 + 64);
    v35 = v34[1];
    *buf = *v34;
    *&buf[8] = v35;
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    source = 0;
    v41 = 0;
    sub_1011A4854(v1, 0, buf, &source);
    if (v35)
    {
      sub_100004A34(v35);
    }

LABEL_60:
    sub_1000296E0(&theDict);
    sub_100005978(&v48);
    v36 = &v44;
LABEL_70:
    sub_100005978(v36);
    sub_100005978(&value);
    sub_100005978(&v46);
    sub_100005978(&v47);
    return;
  }

  if (!v3)
  {
    v19 = *(v1 + 40);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%sShow Resolution Confirmation Alert", buf, 0x16u);
    }

    v47 = 0;
    sub_1011A4468(&v47, *(v1 + 48), &off_101FB9390);
    v46 = 0;
    sub_1011A4468(&v46, *(v1 + 48), &off_101FB93A0);
    value = 0;
    v21 = **(*(v1 + 64) + 16);
    if (SHIBYTE(v21->data) < 0)
    {
      v21 = v21->isa;
    }

    v22 = v46;
    v48 = 0;
    source = 0;
    if (ctu::cf::convert_copy(&source, v21, 0x8000100, kCFAllocatorDefault, v20))
    {
      v23 = v48;
      v48 = source;
      *buf = v23;
      sub_100005978(buf);
    }

    v44 = v48;
    v48 = 0;
    sub_100005978(&v48);
    value = CFStringCreateWithFormat(0, 0, v22, v44);
    sub_100005978(&v44);
    v48 = 0;
    sub_1011A4468(&v48, *(v1 + 48), &off_101FB93B0);
    v44 = 0;
    sub_1011A4468(&v44, *(v1 + 48), &off_101FB93C0);
    theDict = 0;
    theDict = CFDictionaryCreateMutable(0, 4, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryAddValue(theDict, kCFUserNotificationAlertHeaderKey, v47);
    CFDictionaryAddValue(theDict, kCFUserNotificationAlertMessageKey, value);
    CFDictionaryAddValue(theDict, kCFUserNotificationDefaultButtonTitleKey, v48);
    CFDictionaryAddValue(theDict, kCFUserNotificationAlternateButtonTitleKey, v44);
    error = 0;
    v24 = CFUserNotificationCreate(0, 0.0, 0, &error, theDict);
    v25 = v24;
    *(v1 + 80) = v24;
    if (error || !v24)
    {
      v32 = *(v1 + 40);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I %s%sCould not create displayResolutionConfirmationAlert", buf, 0x16u);
        v25 = *(v1 + 80);
      }

      if (v25)
      {
        CFRelease(v25);
        *(v1 + 80) = 0;
      }
    }

    else
    {
      source = CFUserNotificationCreateRunLoopSource(0, v24, sub_1011A50F0, 0);
      if (source)
      {
        v26 = CFRunLoopGetMain();
        CFRunLoopAddSource(v26, source, kCFRunLoopCommonModes);
        v27 = *(v1 + 40);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s%sdisplayResolutionConfirmationAlert shown", buf, 0x16u);
        }
      }

      else
      {
        v37 = *(v1 + 40);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I %s%sCould not create displayResolutionConfirmationAlert runloop", buf, 0x16u);
        }

        CFRelease(*(v1 + 80));
        *(v1 + 80) = 0;
      }

      sub_100C190B8(&source);
      if (*(v1 + 80))
      {
        goto LABEL_69;
      }
    }

    v38 = *(v1 + 64);
    v39 = v38[1];
    *buf = *v38;
    *&buf[8] = v39;
    if (v39)
    {
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    source = 0;
    v41 = 0;
    sub_1011A4854(v1, 0, buf, &source);
    if (v39)
    {
      sub_100004A34(v39);
    }

LABEL_69:
    sub_1000296E0(&theDict);
    sub_100005978(&v44);
    v36 = &v48;
    goto LABEL_70;
  }

  v28 = *(v1 + 40);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#W %s%sUnexpected Resolution Alert result", buf, 0x16u);
  }

  v29 = *(v1 + 64);
  v30 = v29[1];
  *buf = *v29;
  *&buf[8] = v30;
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  source = 0;
  v41 = 0;
  sub_1011A4854(v1, 0, buf, &source);
  if (v30)
  {
    sub_100004A34(v30);
  }
}

void sub_1011A6A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va5, a5);
  va_start(va4, a5);
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v8 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v10 = va_arg(va3, const void *);
  va_copy(va4, va3);
  v12 = va_arg(va4, const void *);
  va_copy(va5, va4);
  v14 = va_arg(va5, const void *);
  sub_1000296E0(va);
  sub_100005978(va1);
  sub_100005978(va5);
  sub_100005978(va2);
  sub_100005978(va3);
  sub_100005978(va4);
  _Unwind_Resume(a1);
}

uint64_t sub_1011A6BAC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1011A6BC8(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t sub_1011A6BE8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1011A6C04(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1011A6C14(void *a1)
{
  v1 = a1[4];
  if (*(v1 + 80) != a1[6])
  {
    v2 = *(v1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sUnsolicited alert response", buf, 0x16u);
    }

    return;
  }

  v3 = a1[7];
  CFRelease(*(v1 + 80));
  *(v1 + 80) = 0;
  v4 = *(v1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    v16 = 1024;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sResolution Confirmation Alert result %d", buf, 0x1Cu);
  }

  if (v3 == 3 || v3 == 1)
  {
    v6 = *(v1 + 64);
    v7 = v6[1];
    *buf = *v6;
    *&buf[8] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    if (!v3)
    {
      v8 = *(v1 + 64);
      v7 = v8[1];
      *buf = *v8;
      *&buf[8] = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v8 = *(v1 + 64);
      }

      v9 = v8[2];
      v10 = v9[1];
      v13 = *v9;
      v14 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_1011A4854(v1, 1u, buf, &v13);
      if (v10)
      {
        sub_100004A34(v10);
      }

      goto LABEL_26;
    }

    v11 = *(v1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#W %s%sUnexpected Resolution Confirmation Alert result", buf, 0x16u);
    }

    v12 = *(v1 + 64);
    v7 = v12[1];
    *buf = *v12;
    *&buf[8] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  v13 = 0;
  v14 = 0;
  sub_1011A4854(v1, 0, buf, &v13);
LABEL_26:
  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_1011A6E9C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011A6ECC(void *a1)
{
  v1 = a1[4];
  if (*(v1 + 80) == a1[6])
  {
    v3 = a1[7];
    CFRelease(*(v1 + 80));
    *(v1 + 80) = 0;
    v4 = *(v1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      v10 = 1024;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sResolution Information Decide Later Alert result %d", buf, 0x1Cu);
    }

    if ((v3 - 1) <= 2)
    {
      v5 = *(v1 + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%sUnexpected Resolution Information Decide Later Alert result", buf, 0x16u);
      }
    }

    v6 = *(v1 + 64);
    v7 = v6[1];
    *buf = *v6;
    *&buf[8] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8[0] = 0;
    v8[1] = 0;
    sub_1011A4854(v1, 0, buf, v8);
    if (v7)
    {
      sub_100004A34(v7);
    }
  }

  else
  {
    v2 = *(v1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sUnsolicited alert response", buf, 0x16u);
    }
  }
}

void sub_1011A70B8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011A70D0(void *a1)
{
  v1 = a1[4];
  if (*(v1 + 80) != a1[6])
  {
    v2 = *(v1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sUnsolicited alert response", buf, 0x16u);
    }

    return;
  }

  v3 = a1[7];
  CFRelease(*(v1 + 80));
  *(v1 + 80) = 0;
  v4 = *(v1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    v12 = 1024;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s Resolution Alert result %d", buf, 0x1Cu);
  }

  v5 = *(v1 + 64);
  v6 = v5[2];
  if (v5[3] - v6 < 0x11uLL)
  {
    if (!v3)
    {
      v7 = v5[1];
      *buf = *v5;
      *&buf[8] = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *(*(v1 + 64) + 16);
      }

      v8 = v6[1];
      v9 = *v6;
      v10 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      goto LABEL_27;
    }

    v7 = v5[1];
    *buf = *v5;
    *&buf[8] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v7 = v5[1];
      *buf = *v5;
      *&buf[8] = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *(*(v1 + 64) + 16);
      }

      v8 = v6[3];
      v9 = v6[2];
      v10 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      goto LABEL_27;
    }

    if (v3 == 1)
    {
      v7 = v5[1];
      *buf = *v5;
      *&buf[8] = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *(*(v1 + 64) + 16);
      }

      v8 = v6[1];
      v9 = *v6;
      v10 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

LABEL_27:
      sub_1011A4854(v1, 1u, buf, &v9);
      if (v8)
      {
        sub_100004A34(v8);
      }

      goto LABEL_32;
    }

    v7 = v5[1];
    *buf = *v5;
    *&buf[8] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  v9 = 0;
  v10 = 0;
  sub_1011A4854(v1, 0, buf, &v9);
LABEL_32:
  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_1011A73B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011A74B4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1011A7588);
  __cxa_rethrow();
}

void sub_1011A74F4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1011A7548(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1011A7588(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1011A7624(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F176B8;
  a2[1] = v2;
  return result;
}

void sub_1011A7650(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315650;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = v4;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "#D %s%s%s", &v5, 0x20u);
  }
}

uint64_t sub_1011A7720(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1011A77DC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F17738;
  a2[1] = v2;
  return result;
}

void sub_1011A7808(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315650;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = v4;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "#D %s%s%s", &v5, 0x20u);
  }
}

uint64_t sub_1011A78D8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1011A7924(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100005978(v2 + 5);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1011A79E0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F177B8;
  a2[1] = v2;
  return result;
}

void sub_1011A7A0C(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315650;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = v4;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "#D %s%s%s", &v5, 0x20u);
  }
}

uint64_t sub_1011A7ADC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1011A7B98(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F17838;
  a2[1] = v2;
  return result;
}

void sub_1011A7BC4(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315650;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = v4;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "#D %s%s%s", &v5, 0x20u);
  }
}

uint64_t sub_1011A7C94(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1011A7D50(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F178B8;
  a2[1] = v2;
  return result;
}

void sub_1011A7D7C(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315650;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = v4;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "#D %s%s%s", &v5, 0x20u);
  }
}

uint64_t sub_1011A7E4C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1011A7F08(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F17938;
  a2[1] = v2;
  return result;
}

void sub_1011A7F34(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315650;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = v4;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "#D %s%s%s", &v5, 0x20u);
  }
}

uint64_t sub_1011A8004(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1011A820C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011A827C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F179B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1011A82D0(uint64_t a1)
{
  sub_1011A8464(a1 + 64);
  v3 = (a1 + 40);
  sub_1000212F4(&v3);
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100004A34(v2);
  }
}

uint64_t sub_1011A8320(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10009A404(result, a4);
  }

  return result;
}

void sub_1011A8388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1000212F4(&a9);
  _Unwind_Resume(a1);
}

void *sub_1011A83A8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v8;
  v7[3] = 1;
  v8 = a4;
  v7[2] = &v9;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v9 = v4;
  }

  sub_1011A842C(v7);
  return v4;
}

uint64_t sub_1011A842C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000FA378(a1);
  }

  return a1;
}

uint64_t sub_1011A8464(uint64_t a1)
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

void sub_1011A8508(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2 || (v3 = *(a1 + 48), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    sub_100013CC4();
  }

  v5 = v4;
  p_shared_weak_owners = &v4->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v4);
  v25[5] = _NSConcreteStackBlock;
  v25[6] = 1174405120;
  v25[7] = sub_1011A88AC;
  v25[8] = &unk_101F17A18;
  v25[9] = a1;
  v25[10] = v3;
  v26 = v5;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  sub_10079D8A0();
  ServiceMap = Registry::getServiceMap(*(a1 + 8));
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
  v27[0] = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, v27);
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
      if (!v15)
      {
        goto LABEL_29;
      }

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
  if (!v15)
  {
    goto LABEL_29;
  }

LABEL_12:
  v17 = *(a1 + 56);
  if (!v17 || (v18 = *(a1 + 48), (v19 = std::__shared_weak_count::lock(v17)) == 0))
  {
    sub_100013CC4();
  }

  v20 = v19;
  atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v19);
  v21 = *(a1 + 64);
  if (v21)
  {
    dispatch_retain(*(a1 + 64));
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 0x40000000;
  v25[2] = sub_1011A8AB4;
  v25[3] = &unk_101F17A48;
  v25[4] = a1;
  if (v21)
  {
    v22 = _Block_copy(v25);
    v23 = v22;
    v30 = v21;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 1174405120;
    v27[2] = sub_1011A9668;
    v27[3] = &unk_101F17BC0;
    v27[4] = v18;
    v28 = v20;
    atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (v22)
    {
      v24 = _Block_copy(v22);
    }

    else
    {
      v24 = 0;
    }

    aBlock = v24;
    (*(*v15 + 40))(v15, "commCenterOperatingModeAssertion", 1, &v30, v27);
    if (v30)
    {
      dispatch_release(v30);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v28)
    {
      std::__shared_weak_count::__release_weak(v28);
    }

    if (v23)
    {
      _Block_release(v23);
    }
  }

  std::__shared_weak_count::__release_weak(v20);
LABEL_29:
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  std::__shared_weak_count::__release_weak(v5);
}

void sub_1011A8824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  v34 = *(v32 - 104);
  if (v34)
  {
    dispatch_release(v34);
  }

  if (v29)
  {
    _Block_release(v29);
  }

  std::__shared_weak_count::__release_weak(v30);
  if ((v31 & 1) == 0)
  {
    sub_100004A34(v28);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_weak(a20);
  }

  std::__shared_weak_count::__release_weak(v27);
  _Unwind_Resume(a1);
}

void sub_1011A88AC(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 0x40000000;
        v11[2] = sub_1011A89EC;
        v11[3] = &unk_101F179F8;
        v11[4] = v3;
        v6 = v3[7];
        if (!v6 || (v7 = v3[6], (v8 = std::__shared_weak_count::lock(v6)) == 0))
        {
          sub_100013CC4();
        }

        v9 = v8;
        v10 = v3[8];
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_1011A94B4;
        block[3] = &unk_101F17B10;
        block[5] = v7;
        v13 = v9;
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        block[4] = v11;
        dispatch_async(v10, block);
        if (v13)
        {
          sub_100004A34(v13);
        }

        sub_100004A34(v9);
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1011A89EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = off_101F17A98;
  v2[1] = v1;
  v2[3] = v2;
  sub_101172388(v1, v2);
}

void sub_1011A8A74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001C200(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1011A8A88(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1011A8AA4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1011A8AB4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = off_101F17B50;
  v2[1] = v1;
  v2[3] = v2;
  sub_101172388(v1, v2);
}

void sub_1011A8B3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001C200(va);
  _Unwind_Resume(a1);
}

void sub_1011A8B50(uint64_t a1, char a2, int a3, int a4, const char *a5)
{
  if ((a4 - 2) <= 3)
  {
    v9 = dword_101928090[a4 - 2];
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_7:
    if ((a2 & 2) == 0)
    {
      return;
    }

LABEL_12:
    if ((a3 - 2) > 3)
    {
      v11 = 0;
    }

    else
    {
      v11 = dword_101928090[a3 - 2];
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 8));
    v13 = ServiceMap;
    if (v14 < 0)
    {
      v15 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
      v16 = 5381;
      do
      {
        v14 = v16;
        v17 = *v15++;
        v16 = (33 * v16) ^ v17;
      }

      while (v17);
    }

    std::mutex::lock(ServiceMap);
    *buf = v14;
    v18 = sub_100009510(&v13[1].__m_.__sig, buf);
    if (v18)
    {
      v20 = v18[3];
      v19 = v18[4];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v13);
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v19);
        v21 = 0;
        if (!v20)
        {
          goto LABEL_21;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v20 = 0;
    }

    std::mutex::unlock(v13);
    v19 = 0;
    v21 = 1;
    if (!v20)
    {
LABEL_21:
      v22 = *(a1 + 80);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#E No Telephony Analytics Service", buf, 2u);
      }

LABEL_50:
      if ((v21 & 1) == 0)
      {
        sub_100004A34(v19);
      }

      return;
    }

LABEL_25:
    v38 = 0;
    v23 = xpc_dictionary_create(0, 0, 0);
    v24 = v23;
    if (v23)
    {
      v38 = v23;
    }

    else
    {
      v24 = xpc_null_create();
      v38 = v24;
      if (!v24)
      {
        v25 = xpc_null_create();
        v24 = 0;
        goto LABEL_32;
      }
    }

    if (xpc_get_type(v24) == &_xpc_type_dictionary)
    {
      xpc_retain(v24);
LABEL_33:
      xpc_release(v24);
      v35 = xpc_int64_create(v11);
      if (!v35)
      {
        v35 = xpc_null_create();
      }

      *buf = &v38;
      v40 = "old_mode";
      sub_10000F688(buf, &v35, object);
      xpc_release(object[0]);
      object[0] = 0;
      xpc_release(v35);
      v35 = 0;
      v33 = xpc_int64_create(v9);
      if (!v33)
      {
        v33 = xpc_null_create();
      }

      *buf = &v38;
      v40 = "new_mode";
      sub_10000F688(buf, &v33, &v34);
      xpc_release(v34);
      v34 = 0;
      xpc_release(v33);
      v33 = 0;
      v31 = xpc_uint64_create(*(a1 + 168));
      if (!v31)
      {
        v31 = xpc_null_create();
      }

      *buf = &v38;
      v40 = "duration_in_old_mode";
      sub_10000F688(buf, &v31, &v32);
      xpc_release(v32);
      v32 = 0;
      xpc_release(v31);
      v31 = 0;
      if (a5[23] >= 0)
      {
        v26 = a5;
      }

      else
      {
        v26 = *a5;
      }

      v29 = xpc_string_create(v26);
      if (!v29)
      {
        v29 = xpc_null_create();
      }

      *buf = &v38;
      v40 = "reason";
      sub_10000F688(buf, &v29, &v30);
      xpc_release(v30);
      v30 = 0;
      xpc_release(v29);
      v29 = 0;
      v27 = *(a1 + 80);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *&buf[4] = v11;
        LOWORD(v40) = 1024;
        *(&v40 + 2) = v9;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I Submit OperatingModeAssertion oldMode=%d, newMode=%d", buf, 0xEu);
      }

      v28 = v38;
      if (v38)
      {
        xpc_retain(v38);
      }

      else
      {
        v28 = xpc_null_create();
      }

      (*(*v20 + 16))(v20, "commCenterOperatingModeAssertion", &v28);
      xpc_release(v28);
      v28 = 0;
      xpc_release(v38);
      goto LABEL_50;
    }

    v25 = xpc_null_create();
LABEL_32:
    v38 = v25;
    goto LABEL_33;
  }

  v9 = 0;
  if ((a2 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  object[1] = _NSConcreteStackBlock;
  object[2] = 0x40000000;
  object[3] = sub_1011A91D4;
  object[4] = &unk_101F17A68;
  v37 = v9;
  object[5] = a5;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v38 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, 0x80106u);
  if (v38)
  {
    *buf = 0;
    v40 = 0;
    sub_10001C610(buf);
    if (*buf)
    {
      operator new();
    }

    if (v40)
    {
      sub_100004A34(v40);
    }
  }

  sub_10001C0A0(&v38);
  if ((a2 & 2) != 0)
  {
    goto LABEL_12;
  }
}

void sub_1011A90B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, xpc_object_t a24)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1011A91D4(wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase *a1, int *a2)
{
  v3 = a1;
  v4 = *(a1 + 10);
  a2[12] |= 2u;
  a2[10] = v4;
  v5 = a2[7];
  v6 = a2[6];
  if (v6 >= v5)
  {
    if (v5 == a2[8])
    {
      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 4), v5 + 1);
      v5 = a2[7];
    }

    a2[7] = v5 + 1;
    operator new();
  }

  v7 = *(a2 + 2);
  a2[6] = v6 + 1;
  v8 = *(v7 + 8 * v6);
  v8[11] |= 2u;
  v8[3] = v4;
  v9 = v8[7];
  v10 = v8[6];
  if (v10 >= v9)
  {
    if (v9 == v8[8])
    {
      a1 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v8 + 4), v9 + 1);
      v9 = v8[7];
    }

    v8[7] = v9 + 1;
    v12 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(a1);
    v13 = *(v8 + 2);
    v14 = v8[6];
    v8[6] = v14 + 1;
    *(v13 + 8 * v14) = v12;
  }

  else
  {
    v11 = *(v8 + 2);
    v8[6] = v10 + 1;
    v12 = *(v11 + 8 * v10);
  }

  v15 = *(v3 + 4);
  v16 = *(v15 + 23);
  if (v16 >= 0)
  {
    v17 = *(v3 + 4);
  }

  else
  {
    v17 = *v15;
  }

  if (v16 >= 0)
  {
    v18 = *(v15 + 23);
  }

  else
  {
    v18 = *(v15 + 8);
  }

  return std::string::append(v12, v17, v18);
}

uint64_t sub_1011A93BC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F17A98;
  a2[1] = v2;
  return result;
}

void sub_1011A93E8(uint64_t a1, uint64_t a2)
{
  *__p = *a2;
  v3 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  sub_1011A8B50(*(a1 + 8), 1, *(*(a1 + 8) + 112), *(*(a1 + 8) + 112), __p);
  if (SHIBYTE(v3) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1011A944C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1011A9468(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F17AF8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1011A94C4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1011A94E0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t sub_1011A9560(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F17B50;
  a2[1] = v2;
  return result;
}

void sub_1011A958C(uint64_t a1, uint64_t a2)
{
  *__p = *a2;
  v4 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v2 = *(a1 + 8);
  sub_101171CC0(v2, 0);
  sub_1011A8B50(v2, 2, *(v2 + 112), *(v2 + 112), __p);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1011A9600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1011A961C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F17BB0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1011A9668(void *a1, uint64_t a2)
{
  v3 = a1[5];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[4])
      {
        sub_100135ED0(a1 + 6, a2);
      }

      sub_100004A34(v6);
    }
  }
}

void *sub_1011A96F4(void *a1, void *a2)
{
  v3 = a2[5];
  a1[4] = a2[4];
  a1[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[6];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[6] = result;
  return result;
}

void sub_1011A9740(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1011A97C0(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1011A9EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, SubscriberSimCommandDriverDelegateInterface *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, dispatch_object_t object, dispatch_object_t a19, dispatch_object_t a20, dispatch_object_t a21, dispatch_object_t a22, void *a23, std::__shared_weak_count *a24, int a25, __int16 a26, char a27, char a28)
{
  if (__p)
  {
    (*(*__p + 8))(__p);
  }

  if (a24)
  {
    sub_100004A34(a24);
  }

  sub_100004A34(v28);
  _Unwind_Resume(a1);
}

uint64_t sub_1011AA2BC(uint64_t a1)
{
  v3 = (a1 + 32);
  sub_1000B2AF8(&v3);
  return sub_1011B5F64(a1);
}

uint64_t sub_1011AA2FC(uint64_t a1)
{
  *a1 = off_101F17C00;
  v2 = (a1 + 48);
  *(a1 + 48) = off_101F17DC0;
  sub_1011BAE58(a1 + 976, *(a1 + 984));
  v3 = *(a1 + 968);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_1011B5CC0(a1 + 904);
  sub_1010DD940(*(a1 + 888));
  sub_10032D3A4(a1 + 856, *(a1 + 864));
  sub_1001A8E08(a1 + 832, *(a1 + 840));
  v14 = (a1 + 800);
  sub_100112048(&v14);
  sub_1011BACF0(a1 + 744);
  v4 = *(a1 + 736);
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_100077CD4(a1 + 704, *(a1 + 712));
  sub_100B76DE0(a1 + 672);
  sub_10006DCAC(a1 + 648, *(a1 + 656));
  sub_10031D330(a1 + 616);
  sub_100E08CE0(*(a1 + 600));
  sub_10006DCAC(a1 + 568, *(a1 + 576));
  sub_10006DCAC(a1 + 544, *(a1 + 552));
  sub_100077CD4(a1 + 520, *(a1 + 528));
  sub_100077CD4(a1 + 496, *(a1 + 504));
  if (*(a1 + 488) == 1 && *(a1 + 487) < 0)
  {
    operator delete(*(a1 + 464));
  }

  sub_10006DCAC(a1 + 416, *(a1 + 424));
  sub_10006DCAC(a1 + 392, *(a1 + 400));
  sub_10031D330(a1 + 360);
  sub_1011B5E7C(*(a1 + 344));
  sub_1011B5EE4(a1 + 304);
  v14 = (a1 + 280);
  sub_1000B2AF8(&v14);
  sub_1011B5F64(a1 + 248);
  v14 = (a1 + 224);
  sub_1000B2AF8(&v14);
  sub_1011B5F64(a1 + 192);
  v14 = (a1 + 168);
  sub_100F75FA4(&v14);
  v5 = *(a1 + 160);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 144);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 128);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 112);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(a1 + 88);
  if (v10)
  {
    sub_100004A34(v10);
  }

  v11 = *(a1 + 72);
  if (v11)
  {
    sub_100004A34(v11);
  }

  v12 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  SubscriberSimCommandDriverDelegateInterface::~SubscriberSimCommandDriverDelegateInterface(v2);
  SubscriberSimInterface::~SubscriberSimInterface(a1);
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_1011AA588(uint64_t a1)
{
  sub_1011AA2FC(a1);

  operator delete();
}

void sub_1011AA5C0(uint64_t a1)
{
  sub_1011AA2FC(a1 - 48);

  operator delete();
}

void sub_1011AA5FC(uint64_t a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_1011AA720(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = qword_101FC8CE8;
  if (qword_101FC8CE8 != &unk_101FC8CF0)
  {
    do
    {
      v26 = *(v2 + 28);
      sub_1001FDFFC(a1, &v26);
      v3 = *(v2 + 8);
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = *(v2 + 16);
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (v4 != &unk_101FC8CF0);
  }

  v6 = qword_101FC8D00;
  if (qword_101FC8D00 != &unk_101FC8D08)
  {
    do
    {
      v26 = *(v6 + 28);
      sub_1001FDFFC(a1, &v26);
      v7 = *(v6 + 8);
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
          v8 = *(v6 + 16);
          v5 = *v8 == v6;
          v6 = v8;
        }

        while (!v5);
      }

      v6 = v8;
    }

    while (v8 != &unk_101FC8D08);
  }

  v9 = qword_101FC8D18;
  if (qword_101FC8D18 != &unk_101FC8D20)
  {
    do
    {
      v26 = *(v9 + 28);
      sub_1001FDFFC(a1, &v26);
      v10 = *(v9 + 8);
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
          v11 = *(v9 + 16);
          v5 = *v11 == v9;
          v9 = v11;
        }

        while (!v5);
      }

      v9 = v11;
    }

    while (v11 != &unk_101FC8D20);
  }

  v12 = qword_101FC8D30;
  if (qword_101FC8D30 != &unk_101FC8D38)
  {
    do
    {
      v26 = *(v12 + 28);
      sub_1001FDFFC(a1, &v26);
      v13 = *(v12 + 8);
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
          v14 = *(v12 + 16);
          v5 = *v14 == v12;
          v12 = v14;
        }

        while (!v5);
      }

      v12 = v14;
    }

    while (v14 != &unk_101FC8D38);
  }

  v16 = *(a1 + 8);
  v15 = *(a1 + 16);
  if (v16 >= v15)
  {
    v18 = *a1;
    v19 = v16 - *a1;
    v20 = v19 >> 2;
    v21 = (v19 >> 2) + 1;
    if (v21 >> 62)
    {
      sub_1000CE3D4();
    }

    v22 = v15 - v18;
    if (v22 >> 1 > v21)
    {
      v21 = v22 >> 1;
    }

    v23 = v22 >= 0x7FFFFFFFFFFFFFFCLL;
    v24 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v23)
    {
      v24 = v21;
    }

    if (v24)
    {
      sub_100016740(a1, v24);
    }

    *(4 * v20) = 9;
    v17 = 4 * v20 + 4;
    memcpy(0, v18, v19);
    v25 = *a1;
    *a1 = 0;
    *(a1 + 8) = v17;
    *(a1 + 16) = 0;
    if (v25)
    {
      operator delete(v25);
    }
  }

  else
  {
    *v16 = 9;
    v17 = (v16 + 1);
  }

  *(a1 + 8) = v17;
}

void sub_1011AA9B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011AA9DC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 456) == 1)
  {
    if (*(a2 + 8) == 1)
    {
      v4 = SubscriptionSlotConfiguration::operator!=();
    }

    else
    {
      v4 = 0;
    }

    memset(v15, 0, sizeof(v15));
    v5 = *(a1 + 168);
    v6 = *(a1 + 176);
    v28 = v15;
    if (v5 != v6)
    {
      do
      {
        sub_10173CF60(*v5, a3, v16);
        sub_1011B6A5C(&v28, v16);
        if (v27 < 0)
        {
          operator delete(__p);
        }

        if (v25 < 0)
        {
          operator delete(v24);
        }

        if (v23 < 0)
        {
          operator delete(v22);
        }

        if (v21 < 0)
        {
          operator delete(v20);
        }

        v29 = &v19;
        sub_100034D1C(&v29);
        if (v17)
        {
          v18 = v17;
          operator delete(v17);
        }

        v5 += 2;
      }

      while (v5 != v6);
      v5 = *(a1 + 168);
      v6 = *(a1 + 176);
    }

    for (; v5 != v6; v5 += 2)
    {
      if ((*(a1 + 456) & 1) == 0)
      {
        sub_1000D1644();
      }

      if ((SubscriptionSlotConfiguration::contains() & 1) == 0 && sub_10173C790(*v5, 1))
      {
        v7 = v5[1];
        v14[0] = *v5;
        v14[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1011B29E0(a1, v14);
        if (v7)
        {
          sub_100004A34(v7);
        }

        v4 = 1;
      }
    }

    if (v4)
    {
      sub_1011AF664(a1, a2, a3);
      sub_1011B1834(a1, v8, v9);
    }

    v10 = *(a1 + 168);
    v11 = *(a1 + 176);
    while (v10 != v11)
    {
      if ((*(a1 + 456) & 1) == 0)
      {
        sub_1000D1644();
      }

      if (SubscriptionSlotConfiguration::contains())
      {
        v4 |= sub_10173C790(*v10, 0);
      }

      v10 += 2;
    }

    if (v4)
    {
      sub_1011AF664(a1, a2, a3);
      sub_1011B1834(a1, v12, v13);
      sub_1011AFFC4(a1, v15);
    }

    v16[0] = v15;
    sub_1000B2AF8(v16);
  }
}

void sub_1011AABF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  *(v11 - 56) = &a11;
  sub_1000B2AF8((v11 - 56));
  _Unwind_Resume(a1);
}

void sub_1011AAC4C(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/carrier_bundles");
  v4[0] = off_101F187B8;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_1011AAD00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1011AAD2C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 784);
    *buf = 134218242;
    v22 = v4;
    v23 = 2080;
    v24 = printers::asString((a1 + 792), v3);
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I outstanding authentication requests: %zu - processing request %s", buf, 0x16u);
  }

  v5 = *(a1 + 728);
  if (v5)
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(v5 + 68) == 2;
      v8 = printers::asString(&v20, v7);
      *buf = 136315138;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I baseband booted assertion granted: %s", buf, 0xCu);
    }
  }

  v9 = *(a1 + 168);
  v10 = *(a1 + 176);
  while (v9 != v10)
  {
    v11 = *v9;
    v9 += 2;
    sub_10173E4E0(v11);
  }

  v12 = *(a1 + 880);
  if (v12 != (a1 + 888))
  {
    do
    {
      v13 = *(a1 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v12 + 4;
        if (*(v12 + 55) < 0)
        {
          v14 = *v14;
        }

        v15 = printers::asString();
        *buf = 136315394;
        v22 = v14;
        v23 = 2080;
        v24 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I sim (%s), pin initial active state (%s)", buf, 0x16u);
      }

      v16 = v12[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v12[2];
          v18 = *v17 == v12;
          v12 = v17;
        }

        while (!v18);
      }

      v12 = v17;
    }

    while (v17 != (a1 + 888));
  }

  return (***(a1 + 104))(*(a1 + 104));
}

void sub_1011AAF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_1011AB090(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, (a1 + 8));
  operator new();
}

void sub_1011AB1B4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  sub_10006F264(&__p, a3);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_1011AB2E4(uint64_t a1, void *a2)
{
  sub_1011C0634(&v3, a2);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_1011AB3F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char a5, int *a6, int *a7)
{
  memset(v13, 0, sizeof(v13));
  sub_100034C50(v13, *(a2 + 16), *(a2 + 24), *(a2 + 24) - *(a2 + 16));
  v14 = a3;
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    __p[2] = *(a4 + 16);
  }

  v16 = a5;
  v17 = *a6;
  v18 = *(a6 + 4);
  v19 = *a7;
  v20 = *(a7 + 4);
  v21[0] = 0;
  v21[1] = 0;
  sub_100004AA0(v21, (a1 + 8));
  operator new();
}

void sub_1011AB5F0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  v17 = *v15;
  if (*v15)
  {
    *(v14 + 32) = v17;
    operator delete(v17);
  }

  sub_10004F058(a1);
}

void sub_1011AB63C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, int *a6, int *a7)
{
  memset(v14, 0, sizeof(v14));
  sub_100034C50(v14, *(a2 + 16), *(a2 + 24), *(a2 + 24) - *(a2 + 16));
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v16 = *(a3 + 16);
  }

  v17 = a4;
  v13 = *a6;
  v18 = a5;
  v19 = v13;
  v20 = *(a6 + 4);
  v21 = *a7;
  v22 = *(a7 + 4);
  v23[0] = 0;
  v23[1] = 0;
  sub_100004AA0(v23, (a1 + 8));
  operator new();
}

void sub_1011AB830(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  v16 = *v14;
  if (*v14)
  {
    *(v13 + 32) = v16;
    operator delete(v16);
  }

  sub_10004F058(a1);
}

void sub_1011AB87C(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, int *a6, int *a7)
{
  memset(v13, 0, sizeof(v13));
  sub_100034C50(v13, *(a2 + 16), *(a2 + 24), *(a2 + 24) - *(a2 + 16));
  v14 = a3;
  v15 = a4;
  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(__p, *a5, *(a5 + 8));
  }

  else
  {
    *__p = *a5;
    v17 = *(a5 + 16);
  }

  v18 = *a6;
  v19 = *(a6 + 4);
  v20 = *a7;
  v21 = *(a7 + 4);
  v22[0] = 0;
  v22[1] = 0;
  sub_100004AA0(v22, (a1 + 8));
  operator new();
}

void sub_1011ABA7C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  v16 = *v14;
  if (*v14)
  {
    *(v13 + 32) = v16;
    operator delete(v16);
  }

  sub_10004F058(a1);
}

void sub_1011ABAC8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  memset(__p, 0, sizeof(__p));
  sub_100034C50(__p, *(a2 + 16), *(a2 + 24), *(a2 + 24) - *(a2 + 16));
  v7 = *a4;
  v9 = a3;
  v10 = v7;
  v11 = *(a4 + 2);
  v12[0] = 0;
  v12[1] = 0;
  sub_100004AA0(v12, (a1 + 8));
  operator new();
}

void sub_1011ABC30(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v7[4] = a1;
  v8 = *a2;
  memset(v9, 0, 24);
  sub_100034C50(v9, *(a2 + 2), *(a2 + 3), *(a2 + 3) - *(a2 + 2));
  v9[3] = *a3;
  v10 = *(a3 + 8);
  __p[1] = 0;
  v12 = 0;
  __p[0] = 0;
  sub_1011B66C0(__p, *(a3 + 16), *(a3 + 24), (*(a3 + 24) - *(a3 + 16)) >> 2);
  v13 = *(a3 + 40);
  sub_100A72FF4(&v14, a4);
  v7[0] = 0;
  v7[1] = 0;
  sub_100004AA0(v7, (a1 + 8));
  operator new();
}

void sub_1011ABE34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_1011ABE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v5, *a2, *(a2 + 8));
  }

  else
  {
    *v5 = *a2;
    v5[2] = *(a2 + 16);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    __p[2] = *(a3 + 16);
  }

  v7[0] = 0;
  v7[1] = 0;
  sub_100004AA0(v7, (a1 + 8));
  operator new();
}

void sub_1011AC048(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (*(v16 + 31) < 0)
  {
    operator delete(*v17);
  }

  sub_10004F058(a1);
}

void sub_1011AC094(uint64_t a1, uint64_t a2)
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

uint64_t sub_1011AC1E8(uint64_t a1, int a2)
{
  v5 = a1;
  v6 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_1011C2810;
  v7[3] = &unk_101F18988;
  v7[4] = a1 + 8;
  v7[5] = &v5;
  v8 = v7;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_1011C28DC;
    v12 = &unk_101F189C8;
    v13 = &v15;
    v14 = &v8;
    v15 = 0;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_1011C28A0;
    v12 = &unk_101F189A8;
    v13 = &v15;
    v14 = &v8;
    v15 = 0;
    dispatch_sync(v2, &block);
  }

  return v15;
}

void sub_1011AC318(uint64_t a1, uint64_t a2)
{
  v4[4] = a1;
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v6 = v5;
      (*(*v3 + 24))(v3, v5);
    }

    else
    {
      v6 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v6 = 0;
  }

  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_1011AC500(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1011AC51C(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1011C2ADC;
  v5[3] = &unk_101F189E8;
  v5[4] = a1 + 8;
  v5[5] = &v4;
  v6 = v5;
  v2 = a1 + 24;
  v1 = *(a1 + 24);
  if (*(v2 + 8))
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1011C2B7C;
    v10 = &unk_101F18A28;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1011C2B40;
    v10 = &unk_101F18A08;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13;
}

void sub_1011AC644(uint64_t a1, int a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_100063614(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_1011AC784(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1011AC79C(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_10002B13C(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_1011AC8C8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1011AC8E0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1011C4424;
  v5[3] = &unk_101F18AC8;
  v5[4] = a1 + 8;
  v5[5] = &v4;
  v6 = v5;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1011C44A4;
    v10 = &unk_101F18B08;
    v11 = a2;
    v12 = &v6;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_100040E94;
    v10 = &unk_101F18AE8;
    v11 = a2;
    v12 = &v6;
    dispatch_sync(v2, &block);
  }
}

uint64_t sub_1011ACA04(uint64_t a1, int a2)
{
  v5 = a1;
  v6 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_1011C4508;
  v7[3] = &unk_101F18B28;
  v7[4] = a1 + 8;
  v7[5] = &v5;
  v8 = v7;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_10006A29C;
    v12 = &unk_101F18B68;
    v13 = &v15;
    v14 = &v8;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_100059340;
    v12 = &unk_101F18B48;
    v13 = &v15;
    v14 = &v8;
    dispatch_sync(v2, &block);
  }

  return v15 & 1;
}

uint64_t sub_1011ACB38(uint64_t a1)
{
  v2[0] = off_101F18B98;
  v2[1] = a1;
  v2[3] = v2;
  (*(*a1 + 88))(a1, 1, v2);
  return sub_100627050(v2);
}

void sub_1011ACBE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100627050(va);
  _Unwind_Resume(a1);
}

void sub_1011ACBF4(uint64_t a1, int a2, uint64_t a3)
{
  v5[4] = a1;
  sub_1008C3488(v6, a3);
  v6[8] = a2;
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_1011ACD34(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1011ACD4C(uint64_t a1, int a2, char a3, uint64_t a4)
{
  v11 = _os_activity_create(&_mh_execute_header, "sim-pin-enable", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v11, &v8);
  os_activity_scope_leave(&v8);
  v8.opaque[0] = a1;
  LODWORD(v8.opaque[1]) = a2;
  BYTE4(v8.opaque[1]) = a3;
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    v10 = *(a4 + 16);
  }

  v12[0] = 0;
  v12[1] = 0;
  sub_100004AA0(v12, (a1 + 8));
  operator new();
}

void sub_1011ACEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1000C0590(va);
  _Unwind_Resume(a1);
}

void sub_1011ACF00(uint64_t a1, int a2, uint64_t a3)
{
  v9 = _os_activity_create(&_mh_execute_header, "sim-pin-unlock", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v6.opaque[0] = 0;
  v6.opaque[1] = 0;
  os_activity_scope_enter(v9, &v6);
  os_activity_scope_leave(&v6);
  v6.opaque[0] = a1;
  LODWORD(v6.opaque[1]) = a2;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v8 = *(a3 + 16);
  }

  v10[0] = 0;
  v10[1] = 0;
  sub_100004AA0(v10, (a1 + 8));
  operator new();
}

void sub_1011AD084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1000C0590(va);
  _Unwind_Resume(a1);
}

void sub_1011AD0A0(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v11 = _os_activity_create(&_mh_execute_header, "sim-puk-unlock", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  os_activity_scope_leave(&state);
  state.opaque[0] = a1;
  LODWORD(state.opaque[1]) = a2;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(v9, *a3, *(a3 + 8));
  }

  else
  {
    *v9 = *a3;
    v9[2] = *(a3 + 16);
  }

  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    __p[2] = *(a4 + 16);
  }

  v12[0] = 0;
  v12[1] = 0;
  sub_100004AA0(v12, (a1 + 8));
  operator new();
}

void sub_1011AD284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_1000C0590(&a21);
  _Unwind_Resume(a1);
}

void sub_1011AD2B8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v11 = _os_activity_create(&_mh_execute_header, "sim-pin-change", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  os_activity_scope_leave(&state);
  state.opaque[0] = a1;
  LODWORD(state.opaque[1]) = a2;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(v9, *a3, *(a3 + 8));
  }

  else
  {
    *v9 = *a3;
    v9[2] = *(a3 + 16);
  }

  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    __p[2] = *(a4 + 16);
  }

  v12[0] = 0;
  v12[1] = 0;
  sub_100004AA0(v12, (a1 + 8));
  operator new();
}

void sub_1011AD49C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_1000C0590(&a21);
  _Unwind_Resume(a1);
}

void sub_1011AD4D0(uint64_t a1, int a2, uint64_t a3)
{
  v5[4] = a1;
  sub_1001063CC(v6, a3);
  v6[8] = a2;
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_1011AD610(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1011AD628(uint64_t a1, int a2, uint64_t a3)
{
  v5[4] = a1;
  sub_1001063CC(v6, a3);
  v6[8] = a2;
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_1011AD768(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1011AD780(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6[4] = a1;
  v6[5] = v5;
  sub_1004F1F78(&v7, (a2 + 1));
  sub_1011C608C(&v8, a3);
  v6[0] = 0;
  v6[1] = 0;
  sub_100004AA0(v6, (a1 + 8));
  operator new();
}

void sub_1011AD908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_1011AD940(uint64_t a1, void *a2)
{
  sub_1011C6834(&v3, a2);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_1011ADA4C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1011C6834(&v4, a3);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_1011ADB70(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  v7 = a3;
  v8 = a2;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_1011C6A90;
  v9[3] = &unk_101F18C08;
  v9[4] = a1 + 8;
  v9[5] = v6;
  v10 = v9;
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  if (*(v5 + 8))
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    block = _NSConcreteStackBlock;
    v12 = 0x40000000;
    v13 = sub_1011C6B18;
    v14 = &unk_101F18C48;
    v15 = a4;
    v16 = &v10;
    dispatch_async_and_wait(v4, &block);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    block = _NSConcreteStackBlock;
    v12 = 0x40000000;
    v13 = sub_1011C6AAC;
    v14 = &unk_101F18C28;
    v15 = a4;
    v16 = &v10;
    dispatch_sync(v4, &block);
  }
}

void sub_1011ADCA8(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v5[4] = a1;
  v6 = a2;
  v7 = a3;
  sub_1011C6B84(&v8, a4);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_1011ADDDC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1011ADDF4(uint64_t a1, int a2, int a3, __int16 a4, uint64_t a5, uint64_t a6)
{
  v7[4] = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  *__p = *a5;
  v12 = *(a5 + 16);
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  sub_1011C70E0(&v13, a6);
  v7[0] = 0;
  v7[1] = 0;
  sub_100004AA0(v7, (a1 + 8));
  operator new();
}

void sub_1011ADF78(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1011ADF88(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v7 = a3;
  v8 = a2;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v7;
  v6[3] = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1011C76E4;
  block[3] = &unk_101F18C68;
  block[4] = a1 + 8;
  block[5] = v6;
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  if (*(v5 + 8))
  {
    dispatch_async_and_wait(v4, block);
  }

  else
  {
    dispatch_sync(v4, block);
  }
}

void sub_1011AE020(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v5[4] = a1;
  v6 = a2;
  v7 = a3;
  sub_1001058C4(&v8, a4);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_1011AE154(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1011AE16C(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v6 = a2;
  v5[0] = a1;
  v5[1] = &v6;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_1011C7814;
  v7[3] = &unk_101F18C88;
  v7[4] = a1 + 8;
  v7[5] = v5;
  v8 = v7;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_1011C44A4;
    v12 = &unk_101F18B08;
    v13 = a3;
    v14 = &v8;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_100040E94;
    v12 = &unk_101F18AE8;
    v13 = a3;
    v14 = &v8;
    dispatch_sync(v3, &block);
  }
}

void sub_1011AE29C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1011C78B0;
  v5[3] = &unk_101F18CA8;
  v5[4] = a1 + 8;
  v5[5] = &v4;
  v6 = v5;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1011C44A4;
    v10 = &unk_101F18B08;
    v11 = a2;
    v12 = &v6;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_100040E94;
    v10 = &unk_101F18AE8;
    v11 = a2;
    v12 = &v6;
    dispatch_sync(v2, &block);
  }
}

void sub_1011AE3C0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a2;
  v8[0] = a1;
  v8[1] = &v9;
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a5;
  v8[5] = a6;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1011C7914;
  block[3] = &unk_101F18CC8;
  block[4] = a1 + 8;
  block[5] = v8;
  v7 = a1 + 24;
  v6 = *(a1 + 24);
  if (*(v7 + 8))
  {
    dispatch_async_and_wait(v6, block);
  }

  else
  {
    dispatch_sync(v6, block);
  }
}

void sub_1011AE458(uint64_t a1, int a2, int a3, uint64_t *a4, uint64_t a5)
{
  v7[4] = a1;
  v8 = a2;
  v9 = a3;
  __p[1] = 0;
  v11 = 0;
  __p[0] = 0;
  sub_100034C50(__p, *a4, a4[1], a4[1] - *a4);
  sub_1000224C8(&v12, a5);
  v7[0] = 0;
  v7[1] = 0;
  sub_100004AA0(v7, (a1 + 8));
  operator new();
}

void sub_1011AE5CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_1011AE608(uint64_t a1, int a2, int a3)
{
  v7 = a3;
  v8 = a2;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_1011C808C;
  v9[3] = &unk_101F18CE8;
  v9[4] = a1 + 8;
  v9[5] = v6;
  v10 = v9;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    v17 = 0;
    block = _NSConcreteStackBlock;
    v12 = 0x40000000;
    v13 = sub_10006A29C;
    v14 = &unk_101F18B68;
    v15 = &v17;
    v16 = &v10;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    v17 = 0;
    block = _NSConcreteStackBlock;
    v12 = 0x40000000;
    v13 = sub_100059340;
    v14 = &unk_101F18B48;
    v15 = &v17;
    v16 = &v10;
    dispatch_sync(v3, &block);
  }

  return v17 & 1;
}

void sub_1011AE748(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

uint64_t sub_1011AE82C(uint64_t a1, int a2)
{
  v6 = a2;
  v5[0] = a1;
  v5[1] = &v6;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_1011C84C8;
  v7[3] = &unk_101F18D08;
  v7[4] = a1 + 8;
  v7[5] = v5;
  v8 = v7;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_10006A29C;
    v12 = &unk_101F18B68;
    v13 = &v15;
    v14 = &v8;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_100059340;
    v12 = &unk_101F18B48;
    v13 = &v15;
    v14 = &v8;
    dispatch_sync(v2, &block);
  }

  return v15 & 1;
}

void sub_1011AE964(uint64_t a1, int a2, uint64_t *a3, uint64_t a4)
{
  v6[4] = a1;
  v7 = a2;
  v5 = a3[1];
  v8 = *a3;
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1000224C8(&v10, a4);
  v6[0] = 0;
  v6[1] = 0;
  sub_100004AA0(v6, (a1 + 8));
  operator new();
}

void sub_1011AEAD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_1011AEB04(uint64_t a1, int a2, uint64_t *a3, char a4, uint64_t *a5, uint64_t a6)
{
  v9[4] = a1;
  v10 = a2;
  v7 = a3[1];
  v11 = *a3;
  v12 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = a4;
  v8 = a5[1];
  v14 = *a5;
  v15 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1000224C8(&v16, a6);
  v9[0] = 0;
  v9[1] = 0;
  sub_100004AA0(v9, (a1 + 8));
  operator new();
}

void sub_1011AECB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_1011AECF0(uint64_t a1, int a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_1000224C8(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_1011AEE30(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_1011AEE48(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1011C9598;
  v5[3] = &unk_101F18D28;
  v5[4] = a1 + 8;
  v5[5] = &v4;
  v6 = v5;
  v2 = a1 + 24;
  v1 = *(a1 + 24);
  if (*(v2 + 8))
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1011C2B7C;
    v10 = &unk_101F18A28;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1011C2B40;
    v10 = &unk_101F18A08;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13;
}

void sub_1011AEF70(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_1000224C8(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_1011AF09C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_1011AF0B4(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1011C9644;
  v5[3] = &unk_101F18D48;
  v5[4] = a1 + 8;
  v5[5] = &v4;
  v6 = v5;
  v2 = a1 + 24;
  v1 = *(a1 + 24);
  if (*(v2 + 8))
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_10006A29C;
    v10 = &unk_101F18B68;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_100059340;
    v10 = &unk_101F18B48;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13 & 1;
}

uint64_t sub_1011AF1E0(uint64_t a1, int a2, const void **a3)
{
  v4 = a1 + 8;
  v8 = a1;
  v9 = a2;
  sub_10006F22C(&v10, a3);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = sub_1011C96A0;
  v11[3] = &unk_101F18D68;
  v11[4] = v4;
  v11[5] = &v8;
  v12 = v11;
  v5 = *(a1 + 24);
  if (*(a1 + 32))
  {
    v19 = 0;
    block = _NSConcreteStackBlock;
    v14 = 0x40000000;
    v15 = sub_10006A29C;
    v16 = &unk_101F18B68;
    v17 = &v19;
    v18 = &v12;
    dispatch_async_and_wait(v5, &block);
  }

  else
  {
    v19 = 0;
    block = _NSConcreteStackBlock;
    v14 = 0x40000000;
    v15 = sub_100059340;
    v16 = &unk_101F18B48;
    v17 = &v19;
    v18 = &v12;
    dispatch_sync(v5, &block);
  }

  v6 = v19;
  sub_100010250(&v10);
  return v6 & 1;
}

BOOL sub_1011AF33C(const __CFDictionary *a1, const void *a2, const void *a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    CFDictionarySetValue(a1, a3, Value);
  }

  return Value != 0;
}

void sub_1011AF38C(__CFDictionary *a1, CFTypeRef cf, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    if (!*(a3 + 8))
    {
      return;
    }

    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    if (!*(a3 + 23))
    {
      return;
    }

    *__p = *a3;
    v6 = *(a3 + 16);
  }

  sub_1010C4F2C(a1, cf);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1011AF41C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011AF438(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __p = 0;
  v10 = 0;
  v11 = 0;
  sub_1011B2F00(&__p, a1, a2, a3);
  if (a3 > 9)
  {
    if (a3 == 10 || a3 == 11)
    {
      subscriber::sDecodeUIMID();
    }

    else
    {
      if (a3 != 12)
      {
        goto LABEL_17;
      }

      subscriber::sDecode1xImsi(&v7, __p, (v10 - __p), v6);
    }
  }

  else if ((a3 - 1) < 2)
  {
    ctu::hex(&v7, __p, (v10 - __p), v6);
  }

  else if (a3)
  {
    if (a3 != 3)
    {
      goto LABEL_17;
    }

    subscriber::sDecodeImsi(&v7, __p, (v10 - __p), v6);
  }

  else
  {
    subscriber::sDecodeIccid(&v7, __p, (v10 - __p), v6);
  }

  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v7;
  *(a4 + 16) = v8;
LABEL_17:
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_1011AF580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1011AF5B0(__CFDictionary *a1, CFTypeRef cf, unsigned int a3, CFAllocatorRef allocator)
{
  v11 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  valuePtr = a3;
  v8 = CFNumberCreate(allocator, kCFNumberLongLongType, &valuePtr);
  v10 = v8;
  if (cf && v8)
  {
    CFDictionarySetValue(a1, cf, v8);
  }

  sub_100DA3324(&v10);
  return sub_100DA3324(&v11);
}

void sub_1011AF640(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  sub_100DA3324(va);
  sub_100DA3324(va1);
  _Unwind_Resume(a1);
}

void sub_1011AF664(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a1;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v5 = *(a1 + 168);
  v4 = *(a1 + 176);
  if (v5 == v4)
  {
    v31 = 0;
    v30 = 0;
  }

  else
  {
    v61 = *(a1 + 176);
    do
    {
      v101 = 0;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      memset(v94, 0, sizeof(v94));
      cf = 0u;
      v93 = 0u;
      sub_10173CF60(*v5, a3, &cf);
      if (*(v3 + 456) == 1)
      {
        v7 = *(v3 + 448);
        if (v7)
        {
          if (v7 == *(*v5 + 32))
          {
            LODWORD(cf) = 1;
          }

          else if (*(*v5 + 36) == 1)
          {
            LODWORD(cf) = 0;
          }
        }

        if (capabilities::ct::supportsGemini(v6))
        {
          if ((*(v3 + 456) & 1) == 0)
          {
            sub_1000D1644();
          }

          v8 = *(v3 + 452);
          if (v8)
          {
            if (v8 == *(*v5 + 32))
            {
              LODWORD(cf) = 2;
            }

            else if (*(*v5 + 36) == 2)
            {
              LODWORD(cf) = 0;
            }
          }
        }
      }

      v9 = **(*v5 + 352);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v63 = subscriber::asString();
        v10 = subscriber::asString();
        v11 = subscriber::asString();
        v12 = subscriber::asString();
        v13 = &v95 + 8;
        if (v96 < 0)
        {
          v13 = *(&v95 + 1);
        }

        v62 = v13;
        v14 = v93;
        v78[0] = ",";
        v78[1] = 1;
        memset(&v69, 0, sizeof(v69));
        if (v93 == *(&v93 + 1))
        {
          v22 = 0;
          v23 = 0;
        }

        else
        {
          v15 = v3;
          v16 = subscriber::asString();
          sub_100016890(&v69, v16);
          v17 = v14 + 4;
          while (v14 != *(&v14 + 1))
          {
            sub_100074CFC(v78, __p);
            if ((v77 & 0x80u) == 0)
            {
              v18 = __p;
            }

            else
            {
              v18 = __p[0];
            }

            if ((v77 & 0x80u) == 0)
            {
              v19 = v77;
            }

            else
            {
              v19 = __p[1];
            }

            std::string::append(&v69, v18, v19);
            if (v77 < 0)
            {
              operator delete(__p[0]);
            }

            v20 = subscriber::asString();
            v21 = strlen(v20);
            v17 += 4;
            std::string::append(&v69, v20, v21);
          }

          v22 = v69.__r_.__value_.__r.__words[0];
          v23 = (v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
          v3 = v15;
          v4 = v61;
        }

        v24 = subscriber::asString();
        *buf = 136316674;
        v25 = &v69;
        if (v23)
        {
          v25 = v22;
        }

        *&buf[4] = v63;
        v80 = 2080;
        v81 = v10;
        v82 = 2080;
        v83 = v11;
        v84 = 2080;
        v85 = v12;
        v86 = 2080;
        v87 = v62;
        v88 = 2082;
        v89 = v25;
        v90 = 2080;
        v91 = v24;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I publishing sim info [slot:%s instance:%s state:%s tray:%s iccid:(%s) types:[%{public}s] vinyl:%s]", buf, 0x48u);
        if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v69.__r_.__value_.__l.__data_);
        }
      }

      if (cf)
      {
        v26 = v71;
        if (v71 >= v72)
        {
          v27 = sub_100438918(&v70, &cf);
        }

        else
        {
          sub_100032BFC(v71, &cf);
          v27 = v26 + 168;
        }

        v71 = v27;
      }

      v28 = v74;
      if (v74 >= v75)
      {
        v29 = sub_100438918(&v73, &cf);
      }

      else
      {
        sub_100032BFC(v74, &cf);
        v29 = v28 + 168;
      }

      v74 = v29;
      if (SHIBYTE(v101) < 0)
      {
        operator delete(v100);
      }

      if (SHIBYTE(v99) < 0)
      {
        operator delete(*(&v98 + 1));
      }

      if (SBYTE7(v98) < 0)
      {
        operator delete(v97);
      }

      if (SHIBYTE(v96) < 0)
      {
        operator delete(*(&v95 + 1));
      }

      *buf = &v94[8];
      sub_100034D1C(buf);
      if (v93)
      {
        *(&v93 + 1) = v93;
        operator delete(v93);
      }

      v5 += 2;
    }

    while (v5 != v4);
    v30 = v70;
    v31 = v71;
  }

  v32 = 126 - 2 * __clz(0xCF3CF3CF3CF3CF3DLL * ((v31 - v30) >> 3));
  if (v31 == v30)
  {
    v33 = 0;
  }

  else
  {
    v33 = v32;
  }

  sub_1011B6AB4(v30, v31, v33, 1);
  ServiceMap = Registry::getServiceMap(*(v3 + 64));
  v35 = ServiceMap;
  if (v36 < 0)
  {
    v37 = (v36 & 0x7FFFFFFFFFFFFFFFLL);
    v38 = 5381;
    do
    {
      v36 = v38;
      v39 = *v37++;
      v38 = (33 * v38) ^ v39;
    }

    while (v39);
  }

  std::mutex::lock(ServiceMap);
  *&cf = v36;
  v40 = sub_100009510(&v35[1].__m_.__sig, &cf);
  if (v40)
  {
    v42 = v40[3];
    v41 = v40[4];
    if (v41)
    {
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v35);
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v41);
      v43 = 0;
      goto LABEL_69;
    }
  }

  else
  {
    v42 = 0;
  }

  std::mutex::unlock(v35);
  v41 = 0;
  v43 = 1;
LABEL_69:
  if (!(*(*v42 + 16))(v42))
  {
    if ((v43 & 1) == 0)
    {
      sub_100004A34(v41);
    }

    goto LABEL_82;
  }

  v44 = _os_feature_enabled_impl();
  if ((v43 & 1) == 0)
  {
    sub_100004A34(v41);
  }

  if (!v44)
  {
LABEL_82:
    memset(v65, 0, sizeof(v65));
    sub_1000B2128(v65, v73, v74, 0xCF3CF3CF3CF3CF3DLL * ((v74 - v73) >> 3));
    memset(v64, 0, sizeof(v64));
    sub_1000B2128(v64, v70, v71, 0xCF3CF3CF3CF3CF3DLL * ((v71 - v70) >> 3));
    sub_1011B19B0(v3, v65, v64);
    *&cf = v64;
    sub_1000B2AF8(&cf);
    *&cf = v65;
    goto LABEL_95;
  }

  v45 = Registry::getServiceMap(*(v3 + 64));
  v46 = v45;
  if (v47 < 0)
  {
    v48 = (v47 & 0x7FFFFFFFFFFFFFFFLL);
    v49 = 5381;
    do
    {
      v47 = v49;
      v50 = *v48++;
      v49 = (33 * v49) ^ v50;
    }

    while (v50);
  }

  std::mutex::lock(v45);
  *&cf = v47;
  v51 = sub_100009510(&v46[1].__m_.__sig, &cf);
  if (v51)
  {
    v53 = v51[3];
    v52 = v51[4];
    if (v52)
    {
      v54 = 1;
      atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v46);
      atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v52);
      if (!v53)
      {
LABEL_91:
        sub_100004A34(v52);
        goto LABEL_92;
      }

LABEL_86:
      (*(*v53 + 40))(&cf, v53, @"ExplicitSubscriberDelay", kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      v55 = cf;
      v54 = 1;
      buf[0] = 1;
      if (cf)
      {
        v56 = CFGetTypeID(cf);
        if (v56 == CFNumberGetTypeID())
        {
          ctu::cf::assign(buf, v55, v57);
          v54 = buf[0];
        }

        else
        {
          v54 = 1;
        }
      }

      sub_10000A1EC(&cf);
      if (!v52)
      {
        goto LABEL_92;
      }

      goto LABEL_91;
    }

    std::mutex::unlock(v46);
    if (v53)
    {
      goto LABEL_86;
    }
  }

  else
  {
    std::mutex::unlock(v46);
  }

  v54 = 1;
LABEL_92:
  v58 = *(v3 + 40);
  if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
  {
    LODWORD(cf) = 67109120;
    DWORD1(cf) = v54;
    _os_log_error_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "WARNING: Delaying publishing by %u seconds", &cf, 8u);
  }

  v59 = dispatch_time(0, 1000000000 * v54);
  v60 = *(v3 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1011B18CC;
  block[3] = &unk_101F17E30;
  block[4] = v3;
  memset(v67, 0, sizeof(v67));
  sub_1000B2128(v67, v73, v74, 0xCF3CF3CF3CF3CF3DLL * ((v74 - v73) >> 3));
  memset(v68, 0, sizeof(v68));
  sub_1000B2128(v68, v70, v71, 0xCF3CF3CF3CF3CF3DLL * ((v71 - v70) >> 3));
  dispatch_after(v59, v60, block);
  *&cf = v68;
  sub_1000B2AF8(&cf);
  *&cf = v67;
LABEL_95:
  sub_1000B2AF8(&cf);
  *&cf = &v70;
  sub_1000B2AF8(&cf);
  *&cf = &v73;
  sub_1000B2AF8(&cf);
}

void sub_1011AFEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  if (v59)
  {
    sub_100004A34(v59);
  }

  a59 = &a38;
  sub_1000B2AF8(&a59);
  a59 = &a41;
  sub_1000B2AF8(&a59);
  _Unwind_Resume(a1);
}

void sub_1011AFFC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 168);
  v3 = *(a1 + 176);
  if (v2 != v3)
  {
    v6 = (a1 + 600);
    while (1)
    {
      v8 = *a2;
      v7 = *(a2 + 8);
      if (*a2 != v7)
      {
        while (v8[1] != *(*v2 + 32))
        {
          v8 += 42;
          if (v8 == v7)
          {
            goto LABEL_28;
          }
        }
      }

      if (v8 == v7)
      {
        goto LABEL_28;
      }

      if (subscriber::isSimPresent())
      {
        sub_100064FC8(*v2, v9, v10);
        if ((subscriber::isSimPresent() & 1) == 0)
        {
          break;
        }
      }

      sub_100064FC8(*v2, v9, v10);
      if (subscriber::isSimReady())
      {
        if (subscriber::isSimReady())
        {
          v11 = *v2;
          if (*v8 != *(*v2 + 36))
          {
            goto LABEL_15;
          }
        }
      }

LABEL_28:
      v2 += 2;
      if (v2 == v3)
      {
        return;
      }
    }

    v11 = *v2;
LABEL_15:
    v12 = *v6;
    if (*v6)
    {
      v13 = *(v11 + 32);
      v14 = v6;
      do
      {
        if (*(v12 + 32) >= v13)
        {
          v14 = v12;
        }

        v12 = *(v12 + 8 * (*(v12 + 32) < v13));
      }

      while (v12);
      if (v14 != v6 && v13 >= *(v14 + 8))
      {
        v15 = *(*(**(a1 + 56) + 16))(*(a1 + 56), *(v11 + 36));
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Forcing all SIM file updates", buf, 2u);
        }

        v16 = v2[1];
        v17 = *v2;
        v18 = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1011B01B0(a1, &v17, v14 + 5);
        if (v18)
        {
          sub_100004A34(v18);
        }
      }
    }

    goto LABEL_28;
  }
}

void sub_1011B0198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011B01B0(uint64_t a1, uint64_t *a2, void *a3)
{
  if (!subscriber::isValidSimSlot())
  {
    return;
  }

  sub_100064FC8(*a2, v6, v7);
  if (subscriber::isSimReady())
  {
    v8 = a2[1];
    v48[0] = *a2;
    v48[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1011B2CBC(a1, v48, a3);
    if (v8)
    {
      sub_100004A34(v8);
    }

    v9 = *a2;
    v10 = a2[1];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = *(v9 + 192);
    if (!v11)
    {
      goto LABEL_66;
    }

    v12 = v9 + 192;
    do
    {
      if (*(v11 + 32) >= 14)
      {
        v12 = v11;
      }

      v11 = *(v11 + 8 * (*(v11 + 32) < 14));
    }

    while (v11);
    if (v12 == v9 + 192 || *(v12 + 32) > 14 || *(v12 + 44) != 3)
    {
      goto LABEL_66;
    }

    v59 = *(v9 + 36);
    __p = 0;
    v57 = 0;
    v58 = 0;
    sub_1011B2F00(&__p, a1, v59, 14);
    v53 = 0;
    v54 = 0;
    v55 = 0;
    subscriber::sDecodePSISMSC();
    memset(&__str, 0, sizeof(__str));
    if (v53 != v54)
    {
      std::string::operator=(&__str, v53);
    }

    v49 = 0;
    v50 = 0;
    v51 = 0;
    sub_100288F04(&v49, a1 + 704);
    v13 = v50;
    v14 = &v50;
    if (!v50)
    {
      goto LABEL_26;
    }

    v15 = &v50;
    do
    {
      if (*(v13 + 8) >= v59)
      {
        v15 = v13;
      }

      v13 = *&v13[8 * (*(v13 + 8) < v59)];
    }

    while (v13);
    v14 = &v50;
    if (v15 != &v50 && (v14 = v15, v59 >= *(v15 + 8)))
    {
      std::string::operator=((v15 + 5), &__str);
    }

    else
    {
LABEL_26:
      v60 = 0;
      v61 = 0;
      if (!*sub_10002E2F4(&v49, v14, &v61, &v60, &v59))
      {
        operator new();
      }
    }

    if (*(a1 + 720) == v51)
    {
      v16 = *(a1 + 704);
      if (v16 == (a1 + 712))
      {
LABEL_62:
        sub_100077CD4(&v49, v50);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v62 = &v53;
        sub_1000087B4(&v62);
        if (__p)
        {
          v57 = __p;
          operator delete(__p);
        }

LABEL_66:
        if (v10)
        {
          sub_100004A34(v10);
        }

        goto LABEL_68;
      }

      v17 = v49;
      while (*(v16 + 8) == *(v17 + 8))
      {
        v18 = *(v16 + 63);
        if (v18 >= 0)
        {
          v19 = *(v16 + 63);
        }

        else
        {
          v19 = v16[6];
        }

        v20 = *(v17 + 63);
        v21 = v20;
        if ((v20 & 0x80u) != 0)
        {
          v20 = v17[6];
        }

        if (v19 != v20)
        {
          break;
        }

        v22 = v18 >= 0 ? v16 + 5 : v16[5];
        v23 = v21 >= 0 ? v17 + 5 : v17[5];
        if (memcmp(v22, v23, v19))
        {
          break;
        }

        v24 = v16[1];
        v25 = v16;
        if (v24)
        {
          do
          {
            v16 = v24;
            v24 = *v24;
          }

          while (v24);
        }

        else
        {
          do
          {
            v16 = v25[2];
            v42 = *v16 == v25;
            v25 = v16;
          }

          while (!v42);
        }

        v26 = v17[1];
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
            v27 = v17[2];
            v42 = *v27 == v17;
            v17 = v27;
          }

          while (!v42);
        }

        v17 = v27;
        if (v16 == (a1 + 712))
        {
          goto LABEL_62;
        }
      }
    }

    if ((a1 + 704) != &v49)
    {
      sub_1002856BC((a1 + 704), v49, &v50);
    }

    v28 = *(a1 + 696);
    if (v28)
    {
      (*(*v28 + 48))(v28, a1 + 704);
    }

    goto LABEL_62;
  }

LABEL_68:
  v30 = *a2;
  v29 = a2[1];
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v31 = qword_101FC8D18;
  if (qword_101FC8D18 == &unk_101FC8D20)
  {
    v32 = 1;
    if (v29)
    {
LABEL_90:
      sub_100004A34(v29);
    }
  }

  else
  {
    if (*(v30 + 192))
    {
      v32 = 1;
      while (1)
      {
        v33 = *(v31 + 28);
        v34 = v30 + 192;
        v35 = *(v30 + 192);
        do
        {
          if (*(v35 + 32) >= v33)
          {
            v34 = v35;
          }

          v35 = *(v35 + 8 * (*(v35 + 32) < v33));
        }

        while (v35);
        if (v34 == v30 + 192)
        {
          break;
        }

        if (*(v34 + 32) > v33)
        {
          break;
        }

        v36 = *(v34 + 44) == 3;
        if (!v36)
        {
          break;
        }

        v37 = *(v31 + 8);
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
            v38 = *(v31 + 16);
            v42 = *v38 == v31;
            v31 = v38;
          }

          while (!v42);
        }

        v32 &= v36;
        v31 = v38;
        if (v38 == &unk_101FC8D20)
        {
          goto LABEL_89;
        }
      }
    }

    v32 = 0;
LABEL_89:
    if (v29)
    {
      goto LABEL_90;
    }
  }

  LOBYTE(v53) = v32;
  LODWORD(__p) = *(v30 + 36);
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v39 = sub_1000517E4(&v62, a1 + 648);
  sub_100626598(v39, &__p, &v53);
  if (*(a1 + 664) != v64)
  {
LABEL_111:
    if ((a1 + 648) != &v62)
    {
      sub_10062AA68((a1 + 648), v62, &v63);
    }

    v47 = *(a1 + 640);
    if (v47)
    {
      (*(*v47 + 48))(v47, a1 + 648);
    }

    goto LABEL_115;
  }

  v40 = *(a1 + 648);
  if (v40 != (a1 + 656))
  {
    v41 = v62;
    do
    {
      v42 = *(v40 + 7) == *(v41 + 7) && *(v40 + 32) == *(v41 + 32);
      if (!v42)
      {
        goto LABEL_111;
      }

      v43 = v40[1];
      v44 = v40;
      if (v43)
      {
        do
        {
          v40 = v43;
          v43 = *v43;
        }

        while (v43);
      }

      else
      {
        do
        {
          v40 = v44[2];
          v42 = *v40 == v44;
          v44 = v40;
        }

        while (!v42);
      }

      v45 = v41[1];
      if (v45)
      {
        do
        {
          v46 = v45;
          v45 = *v45;
        }

        while (v45);
      }

      else
      {
        do
        {
          v46 = v41[2];
          v42 = *v46 == v41;
          v41 = v46;
        }

        while (!v42);
      }

      v41 = v46;
    }

    while (v40 != (a1 + 656));
  }

LABEL_115:
  sub_10006DCAC(&v62, v63);
  if (v29)
  {

    sub_100004A34(v29);
  }
}

void sub_1011B0808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, char *a12, uint64_t a13, char *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  *(v27 - 88) = 0;
  sub_1002859C8(v26 + 8, v25);
  sub_100077CD4(&a11, a12);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  __p = &a20;
  sub_1000087B4(&__p);
  if (a23)
  {
    a24 = a23;
    operator delete(a23);
  }

  if (v24)
  {
    sub_100004A34(v24);
  }

  _Unwind_Resume(a1);
}

void sub_1011B08AC(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v5 = sub_100064FC8(*a2, a2, a3);
  if (v5 > 0xB)
  {
LABEL_21:
    if (v5 != 1)
    {
      if (v5 != 3 || !subscriber::isValidSimSlot())
      {
        return;
      }

      v21 = *a2;
      v7 = a2[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (*(v21 + 58) == 1)
      {
        v22 = *(v21 + 192);
        if (v22)
        {
          v23 = *(v21 + 352);
          v24 = v21 + 192;
          do
          {
            v25 = *(v22 + 32);
            if ((v25 & 0x80000000) == 0)
            {
              v24 = v22;
            }

            v22 = *(v22 + ((v25 >> 28) & 8));
          }

          while (v22);
          if (v24 != v21 + 192 && *(v24 + 32) <= 0 && *(v24 + 44) == 3)
          {
            v26 = *(v21 + 59);
            if (v26 <= 2)
            {
              v27 = *v23;
              if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *&buf[4] = v26;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I Not enough PIN reties (%d) left", buf, 8u);
              }

              sub_10173C160(v21, 0);
            }

            if (v7)
            {
              atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            operator new();
          }
        }
      }

      goto LABEL_84;
    }

    goto LABEL_42;
  }

  if (((1 << v5) & 0xAC0) != 0)
  {
LABEL_42:
    v28 = *a2;
    v29 = **(*a2 + 352);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I Clear SIM PIN cache in state %s", buf, 0xCu);
      v28 = *a2;
    }

    v30 = a2[1];
    v47[0] = v28;
    v47[1] = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1011B29E0(a1, v47);
    if (v30)
    {
      sub_100004A34(v30);
    }

    return;
  }

  if (v5 != 4)
  {
    if (v5 == 5)
    {
      if (!subscriber::isValidSimSlot())
      {
        return;
      }

      v8 = *a2;
      v7 = a2[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      memset(buf, 0, sizeof(buf));
      v55 = 0;
      sub_10173C120(v8, v6, buf);
      v9 = HIBYTE(v55);
      if (v55 < 0)
      {
        v9 = *&buf[8];
      }

      if (!v9)
      {
        v31 = **(v8 + 352);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *__dst = 0;
          _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "empty ICCID for a ready SIM!!", __dst, 2u);
        }

        goto LABEL_82;
      }

      *__dst = buf;
      if (*(sub_1011CD67C(a1 + 880, buf) + 57) == 1)
      {
        if ((*(v8 + 58) & 1) == 0)
        {
          goto LABEL_82;
        }

        *__dst = buf;
        v10 = sub_1011CD67C(a1 + 880, buf);
        if ((*(v10 + 57) & 1) == 0)
        {
          sub_1000D1644();
        }

        if (*(v10 + 56))
        {
LABEL_82:
          if (SHIBYTE(v55) < 0)
          {
            operator delete(*buf);
          }

LABEL_84:
          if (v7)
          {

            sub_100004A34(v7);
          }

          return;
        }
      }

      ServiceMap = Registry::getServiceMap(*(a1 + 64));
      v12 = ServiceMap;
      if (v13 < 0)
      {
        v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
        v15 = 5381;
        do
        {
          v13 = v15;
          v16 = *v14++;
          v15 = (33 * v15) ^ v16;
        }

        while (v16);
      }

      std::mutex::lock(ServiceMap);
      *__dst = v13;
      v17 = sub_100009510(&v12[1].__m_.__sig, __dst);
      if (v17)
      {
        v19 = v17[3];
        v18 = v17[4];
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v12);
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v18);
          v20 = 0;
LABEL_55:
          if (v19)
          {
            memset(__dst, 0, sizeof(__dst));
            v51 = 0;
            if (SHIBYTE(v55) < 0)
            {
              sub_100005F2C(__dst, *buf, *&buf[8]);
            }

            else
            {
              *__dst = *buf;
              v51 = v55;
            }

            cf = 0;
            (*(*v19 + 24))(&cf, v19, __dst, @"InitialActiveState", @"SimPin", 0, 1);
            v33 = cf;
            if (!cf)
            {
              goto LABEL_92;
            }

            v53[0] = 0;
            v34 = CFGetTypeID(cf);
            if (v34 == CFBooleanGetTypeID())
            {
              ctu::cf::assign(v53, v33, v35);
            }

            v36 = v53[0];
            *v53 = buf;
            *(sub_1011CD67C(a1 + 880, buf) + 56) = v36 | 0x100;
            v37 = **(v8 + 352);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              v52 = buf;
              sub_1011CD67C(a1 + 880, buf);
              v38 = printers::asString();
              *v53 = 136315138;
              *&v53[4] = v38;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I PIN initial active state cached value: (%s)", v53, 0xCu);
            }

            if (*(v8 + 58) == 1)
            {
              *v53 = buf;
              v39 = sub_1011CD67C(a1 + 880, buf);
              if ((*(v39 + 57) & 1) == 0)
              {
                sub_1000D1644();
              }

              if ((*(v39 + 56) & 1) == 0)
              {
LABEL_92:
                if (*(v8 + 58))
                {
                  v40 = &kCFBooleanTrue;
                }

                else
                {
                  v40 = &kCFBooleanFalse;
                }

                v41 = *v40;
                *v53 = 0;
                sub_100045C8C(v53);
                v48 = v41;
                *v53 = 0;
                sub_100045C8C(v53);
                v42 = (*(*v19 + 16))(v19, __dst, @"InitialActiveState", v41, @"SimPin", 0, 1, 0);
                if (v42)
                {
                  v43 = **(v8 + 352);
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                  {
                    *v53 = 67109120;
                    *&v53[4] = v42;
                    _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Failed to store PIN initial active state to wallet, error (%d)", v53, 8u);
                  }
                }

                else
                {
                  v44 = *(v8 + 58);
                  *v53 = buf;
                  *(sub_1011CD67C(a1 + 880, buf) + 56) = v44 | 0x100;
                  v45 = **(v8 + 352);
                  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                  {
                    v52 = buf;
                    sub_1011CD67C(a1 + 880, buf);
                    v46 = printers::asString();
                    *v53 = 136315138;
                    *&v53[4] = v46;
                    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I Successfully cached PIN initial active state: (%s)", v53, 0xCu);
                  }
                }

                sub_100045C8C(&v48);
              }
            }

            sub_10000A1EC(&cf);
            if (SHIBYTE(v51) < 0)
            {
              operator delete(*__dst);
            }
          }

          else
          {
            v32 = **(v8 + 352);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              *__dst = 0;
              _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Failed to get Personal Wallet interface", __dst, 2u);
            }
          }

          if ((v20 & 1) == 0)
          {
            sub_100004A34(v18);
          }

          goto LABEL_82;
        }
      }

      else
      {
        v19 = 0;
      }

      std::mutex::unlock(v12);
      v18 = 0;
      v20 = 1;
      goto LABEL_55;
    }

    goto LABEL_21;
  }

  if (subscriber::isValidSimSlot())
  {
    memset(buf, 0, sizeof(buf));
    sub_100004AA0(buf, (a1 + 8));
    operator new();
  }
}

void sub_1011B1148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (v30)
  {
    sub_100004A34(v30);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011B121C(uint64_t a1, uint64_t *a2)
{
  i = a1;
  v44[0] = 0;
  v44[1] = 0;
  v43 = v44;
  v42 = *(*a2 + 32);
  *&v37 = &v42;
  v3 = sub_1011CA7D0(a1 + 592, v42);
  v4 = v3[5];
  v5 = v3 + 6;
  if (v4 != v3 + 6)
  {
    do
    {
      LODWORD(v37) = *(v4 + 7);
      SimCardForSimFilePath = subscriber::getSimCardForSimFilePath();
      v7 = v44[0];
LABEL_3:
      if (!v7)
      {
LABEL_10:
        operator new();
      }

      while (1)
      {
        v8 = v7;
        v9 = *(v7 + 8);
        if (v9 > SimCardForSimFilePath)
        {
          v7 = *v8;
          goto LABEL_3;
        }

        if (v9 >= SimCardForSimFilePath)
        {
          break;
        }

        v7 = v8[1];
        if (!v7)
        {
          goto LABEL_10;
        }
      }

      sub_10008528C((v8 + 5), v37);
      v10 = v4[1];
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
          v11 = v4[2];
          v12 = *v11 == v4;
          v4 = v11;
        }

        while (!v12);
      }

      v4 = v11;
    }

    while (v11 != v5);
  }

  v41[0] = 0;
  v41[1] = 0;
  v40 = v41;
  v13 = v43;
  if (v43 != v44)
  {
    v35 = i;
    do
    {
      *__p = 0u;
      v39 = 0u;
      v37 = 0u;
      sub_10173CA78(*a2, *(v13 + 8), &v37);
      if (BYTE8(v39))
      {
        (*(**(i + 104) + 112))(*(i + 104), &v37, v13 + 5);
        v14 = v41[0];
        if (!v41[0])
        {
LABEL_27:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v15 = v14;
            v16 = *(v14 + 8);
            if (v16 <= SHIDWORD(v37))
            {
              break;
            }

            v14 = *v15;
            if (!*v15)
            {
              goto LABEL_27;
            }
          }

          if (v16 >= SHIDWORD(v37))
          {
            break;
          }

          v14 = v15[1];
          if (!v14)
          {
            goto LABEL_27;
          }
        }

        v17 = v15;
        if (v13 != v15)
        {
          v18 = v13[5];
          v19 = (v13 + 6);
          if (v17[7])
          {
            v21 = v17 + 6;
            v20 = v17[6];
            v22 = v17[5];
            v17[5] = (v17 + 6);
            v20[2] = 0;
            v17[6] = 0;
            v17[7] = 0;
            if (*(v22 + 8))
            {
              v23 = *(v22 + 8);
            }

            else
            {
              v23 = v22;
            }

            if (v23)
            {
              v24 = sub_1000685CC(v23);
              if (v18 == v19)
              {
                v26 = v23;
              }

              else
              {
                v25 = v18;
                do
                {
                  v26 = v24;
                  v27 = *(v25 + 7);
                  *(v23 + 28) = v27;
                  v28 = *v21;
                  v29 = v17 + 6;
                  v30 = v17 + 6;
                  if (*v21)
                  {
                    do
                    {
                      while (1)
                      {
                        v29 = v28;
                        if (v27 >= *(v28 + 7))
                        {
                          break;
                        }

                        v28 = *v28;
                        v30 = v29;
                        if (!*v29)
                        {
                          goto LABEL_42;
                        }
                      }

                      v28 = v28[1];
                    }

                    while (v28);
                    v30 = v29 + 1;
                  }

LABEL_42:
                  sub_1000070DC(v17 + 5, v29, v30, v23);
                  if (v24)
                  {
                    v24 = sub_1000685CC(v24);
                  }

                  else
                  {
                    v24 = 0;
                  }

                  v31 = v25[1];
                  if (v31)
                  {
                    do
                    {
                      v18 = v31;
                      v31 = *v31;
                    }

                    while (v31);
                  }

                  else
                  {
                    do
                    {
                      v18 = v25[2];
                      v12 = *v18 == v25;
                      v25 = v18;
                    }

                    while (!v12);
                  }

                  if (!v26)
                  {
                    break;
                  }

                  v23 = v26;
                  v25 = v18;
                }

                while (v18 != v19);
              }

              sub_10006DCAC((v17 + 5), v26);
              if (v24)
              {
                v32 = v24[2];
                for (i = v35; v32; v32 = v32[2])
                {
                  v24 = v32;
                }

                sub_10006DCAC((v17 + 5), v24);
              }

              else
              {
                i = v35;
              }
            }

            else
            {
              sub_10006DCAC((v17 + 5), 0);
            }
          }

          if (v18 != v19)
          {
            operator new();
          }
        }
      }

      if (BYTE8(v39) == 1 && __p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v33 = v13[1];
      if (v33)
      {
        do
        {
          v34 = v33;
          v33 = *v33;
        }

        while (v33);
      }

      else
      {
        do
        {
          v34 = v13[2];
          v12 = *v34 == v13;
          v13 = v34;
        }

        while (!v12);
      }

      v13 = v34;
    }

    while (v34 != v44);
  }

  *&v39 = 0;
  v37 = 0u;
  *__p = 0u;
  subscriber::SimCardInfo::SimCardInfo();
  (*(**(i + 104) + 104))(*(i + 104), &v37, &v40);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  sub_100E08CE0(v41[0]);
  sub_100E08CE0(v44[0]);
}

void sub_1011B17D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_100E08CE0(a21);
  sub_100E08CE0(*(v21 - 96));
  _Unwind_Resume(a1);
}

void sub_1011B1834(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 168);
  for (i = *(a1 + 176); v3 != i; v3 += 2)
  {
    v6 = v3[1];
    v7[0] = *v3;
    v7[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1011B08AC(a1, v7, a3);
    if (v6)
    {
      sub_100004A34(v6);
    }
  }
}

void sub_1011B18B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011B18CC(void *a1)
{
  memset(v4, 0, sizeof(v4));
  v2 = a1[4];
  sub_1000B2128(v4, a1[5], a1[6], 0xCF3CF3CF3CF3CF3DLL * ((a1[6] - a1[5]) >> 3));
  memset(v3, 0, sizeof(v3));
  sub_1000B2128(v3, a1[8], a1[9], 0xCF3CF3CF3CF3CF3DLL * ((a1[9] - a1[8]) >> 3));
  sub_1011B19B0(v2, v4, v3);
  v5 = v3;
  sub_1000B2AF8(&v5);
  v5 = v4;
  sub_1000B2AF8(&v5);
}

void sub_1011B1980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v14 - 40) = v13;
  sub_1000B2AF8((v14 - 40));
  *(v14 - 40) = &a13;
  sub_1000B2AF8((v14 - 40));
  _Unwind_Resume(a1);
}

void sub_1011B19B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 64));
  v7 = ServiceMap;
  if (v8 < 0)
  {
    v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  __p[0] = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, __p);
  if (!v12)
  {
    v14 = 0;
LABEL_9:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    if (!v14)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v15 = 0;
  if (v14)
  {
LABEL_10:
    (*(*v14 + 24))(v14, a2);
  }

LABEL_11:
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  v16 = *(a1 + 224);
  v17 = *(a1 + 232);
  v18 = *a2;
  if (v17 - v16 == a2[1] - *a2 && v16 != v17)
  {
    do
    {
      v19 = BasicSimInfo::operator==();
      v16 += 168;
      v18 += 168;
      if (v16 == v17)
      {
        v20 = 0;
      }

      else
      {
        v20 = v19;
      }
    }

    while ((v20 & 1) != 0);
  }

  sub_1011B2120(a1 + 192, a2);
  v56 = 0;
  v57 = 0;
  v58 = 0;
  sub_1000B2128(&v56, *(a1 + 280), *(a1 + 288), 0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 288) - *(a1 + 280)) >> 3));
  v23 = *(a1 + 288);
  v24 = *(a1 + 280);
  v25 = *a3;
  if (v23 - v24 == a3[1] - *a3)
  {
    while (v24 != v23)
    {
      if (!BasicSimInfo::operator==())
      {
        goto LABEL_23;
      }

      v24 += 168;
      v25 += 168;
    }
  }

  else
  {
LABEL_23:
    if ((a1 + 280) != a3)
    {
      sub_100169790((a1 + 280), *a3, a3[1], 0xCF3CF3CF3CF3CF3DLL * ((a3[1] - *a3) >> 3));
    }

    v26 = *(a1 + 272);
    if (v26)
    {
      (*(*v26 + 48))(v26, a1 + 280);
    }

    sub_1011B21C0(a1);
  }

  v27 = *(a1 + 168);
  v28 = *(a1 + 176);
  while (v27 != v28)
  {
    if (*(*v27 + 36))
    {
      v29 = sub_100064FC8(*v27, v21, v22);
      v30 = *(*v27 + 36);
      v31 = v56;
      v32 = v57;
      while (v31 != v32)
      {
        if (*v31 == v30)
        {
          v33 = subscriber::toSimStatus();
          if (v33 == subscriber::toSimStatus())
          {
            goto LABEL_37;
          }
        }

        v31 += 42;
      }

      (*(**(a1 + 120) + 24))(*(a1 + 120), v30, v29);
    }

LABEL_37:
    v27 += 2;
  }

  if (sSupportsPartialActiveProfiles())
  {
    for (i = *(a1 + 168); i != *(a1 + 176); i += 16)
    {
      if (*(*i + 40) == 1)
      {
        goto LABEL_103;
      }
    }

    v62[0] = 0;
    v62[1] = 0;
    v61 = v62;
    v36 = *(a1 + 976);
    v37 = (a1 + 984);
    if (v36 != (a1 + 984))
    {
      do
      {
        v38 = *(a1 + 168);
        v39 = *(a1 + 176);
        if (*(v36 + 55) < 0)
        {
          sub_100005F2C(__dst, v36[4], v36[5]);
        }

        else
        {
          *__dst = *(v36 + 2);
          v60 = v36[6];
        }

        if (v38 != v39)
        {
          while (1)
          {
            sub_10173C120(*v38, v34, __p);
            v40 = SHIBYTE(v64);
            if (SHIBYTE(v64) >= 0)
            {
              v34 = HIBYTE(v64);
            }

            else
            {
              v34 = __p[1];
            }

            v41 = HIBYTE(v60);
            if (v60 < 0)
            {
              v41 = __dst[1];
            }

            if (v34 == v41)
            {
              break;
            }

            v44 = 0;
            if (SHIBYTE(v64) < 0)
            {
              goto LABEL_63;
            }

LABEL_64:
            if (v44)
            {
              goto LABEL_67;
            }

            v38 += 2;
            if (v38 == v39)
            {
              v38 = v39;
              goto LABEL_67;
            }
          }

          if (SHIBYTE(v64) >= 0)
          {
            v42 = __p;
          }

          else
          {
            v42 = __p[0];
          }

          if (v60 >= 0)
          {
            v43 = __dst;
          }

          else
          {
            v43 = __dst[0];
          }

          v44 = memcmp(v42, v43, v34) == 0;
          if ((v40 & 0x80000000) == 0)
          {
            goto LABEL_64;
          }

LABEL_63:
          operator delete(__p[0]);
          goto LABEL_64;
        }

LABEL_67:
        if (SHIBYTE(v60) < 0)
        {
          operator delete(__dst[0]);
        }

        if (v38 == *(a1 + 176))
        {
          sub_100005BA0(&v61, v36 + 4);
        }

        v45 = v36[1];
        if (v45)
        {
          do
          {
            v46 = v45;
            v45 = *v45;
          }

          while (v45);
        }

        else
        {
          do
          {
            v46 = v36[2];
            v47 = *v46 == v36;
            v36 = v46;
          }

          while (!v47);
        }

        v36 = v46;
      }

      while (v46 != v37);
      v48 = v61;
      if (v61 != v62)
      {
        do
        {
          __p[0] = 0;
          __p[1] = 0;
          v64 = 0;
          if (*(v48 + 55) < 0)
          {
            sub_100005F2C(__p, v48[4], v48[5]);
          }

          else
          {
            *__p = *(v48 + 2);
            v64 = v48[6];
          }

          v49 = *v37;
          if (*v37)
          {
            v50 = a1 + 984;
            do
            {
              v51 = sub_1000068BC((v49 + 32), __p);
              if ((v51 & 0x80u) == 0)
              {
                v50 = v49;
              }

              v49 = *(v49 + ((v51 >> 4) & 8));
            }

            while (v49);
            if (v50 != v37 && (sub_1000068BC(__p, (v50 + 32)) & 0x80) == 0)
            {
              sub_1000194D8((a1 + 976), v50);
              sub_1011BAEB4(v50 + 32);
              operator delete(v50);
            }
          }

          v52 = *(a1 + 40);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            if (SHIBYTE(v64) >= 0)
            {
              v53 = __p;
            }

            else
            {
              v53 = __p[0];
            }

            *buf = 136315138;
            v66 = v53;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#I %s data is removed", buf, 0xCu);
          }

          if (SHIBYTE(v64) < 0)
          {
            operator delete(__p[0]);
          }

          v54 = v48[1];
          if (v54)
          {
            do
            {
              v55 = v54;
              v54 = *v54;
            }

            while (v54);
          }

          else
          {
            do
            {
              v55 = v48[2];
              v47 = *v55 == v48;
              v48 = v55;
            }

            while (!v47);
          }

          v48 = v55;
        }

        while (v55 != v62);
      }
    }

    sub_100009970(&v61, v62[0]);
  }

LABEL_103:
  __p[0] = &v56;
  sub_1000B2AF8(__p);
}

void sub_1011B1FB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22)
{
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1011B2038(void *a1, uint64_t *a2)
{
  v3 = a1;
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  sub_1000B2128((a1 + 5), a2[5], a2[6], 0xCF3CF3CF3CF3CF3DLL * ((a2[6] - a2[5]) >> 3));
  v3[8] = 0;
  v3[9] = 0;
  v3 += 8;
  v3[2] = 0;
  return sub_1000B2128(v3, a2[8], a2[9], 0xCF3CF3CF3CF3CF3DLL * ((a2[9] - a2[8]) >> 3));
}

void sub_1011B20C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000B2AF8(va);
  _Unwind_Resume(a1);
}

void sub_1011B20DC(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = (a1 + 64);
  sub_1000B2AF8(&v2);
  v2 = v1;
  sub_1000B2AF8(&v2);
}

uint64_t sub_1011B2120(uint64_t a1, uint64_t *a2)
{
  if ((a1 + 32) != a2)
  {
    sub_100169790((a1 + 32), *a2, a2[1], 0xCF3CF3CF3CF3CF3DLL * ((a2[1] - *a2) >> 3));
  }

  result = *(a1 + 24);
  if (result)
  {
    v4 = *(*result + 48);

    return v4();
  }

  return result;
}

void sub_1011B21C0(uint64_t a1)
{
  if (*(a1 + 792) == 1)
  {
    v2 = *(a1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      v3 = "#I Outstanding auth request running";
LABEL_4:
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, v3, &buf, 2u);
      return;
    }

    return;
  }

  v4 = *(a1 + 784);
  v5 = *(a1 + 40);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (!v4)
  {
    if (v6)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I No auth requests to process", &buf, 2u);
    }

    v25 = *(a1 + 736);
    *(a1 + 728) = 0u;
    if (v25)
    {
      sub_100004A34(v25);
    }

    return;
  }

  if (v6)
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %zu auth requests outstanding", &buf, 0xCu);
  }

  v7 = *(a1 + 728);
  if (!v7)
  {
    v26 = *(a1 + 40);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Acquiring baseband booted assertion for auth", &buf, 2u);
    }

    sub_10000501C(&buf, "/cc/assertions/baseband_booted");
    ctu::rest::AssertionHandle::create();
    if (SBYTE7(v44) < 0)
    {
      operator delete(buf);
    }

    v27 = v40;
    v40 = 0uLL;
    v28 = *(a1 + 736);
    *(a1 + 728) = v27;
    if (v28)
    {
      sub_100004A34(v28);
      if (*(&v40 + 1))
      {
        sub_100004A34(*(&v40 + 1));
      }
    }

    *&buf = off_101F18F08;
    *(&buf + 1) = a1;
    *(&v44 + 1) = &buf;
    ctu::rest::AssertionHandle::setHandler_impl();
    sub_10000FF50(&buf);
    return;
  }

  if (*(v7 + 68) == 2)
  {
    if (!*(a1 + 784))
    {
      return;
    }

    while (1)
    {
      v45 = 0u;
      v46 = 0u;
      buf = 0u;
      v44 = 0u;
      v8 = (*(*(a1 + 752) + ((*(a1 + 776) >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((*(a1 + 776) & 0x3FLL) << 6));
      *&buf = *v8;
      sub_1004F1F78(&buf + 1, (v8 + 1));
      sub_1011C608C(&v45, (v8 + 4));
      for (i = *(a1 + 168); ; i += 2)
      {
        if (i == *(a1 + 176))
        {
          v13 = *(a1 + 40);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v22 = subscriber::asString();
            LODWORD(v40) = 136315138;
            *(&v40 + 4) = v22;
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Auth cannot occur because there is no SIM for (%s)", &v40, 0xCu);
          }

          sub_1011B3088(a1 + 744);
          v33[0] = 0;
          v33[1] = 0;
          v32 = v33;
          if (!*(&v46 + 1))
          {
            sub_100022DB4();
          }

          (*(**(&v46 + 1) + 48))(*(&v46 + 1), &v32);
          sub_10004EC58(&v32, v33[0]);
          sub_1004F26B0(&v45);
          sub_10004EC58(&buf + 8, v44);
          goto LABEL_33;
        }

        v12 = *i;
        if (*(*i + 36) == buf)
        {
          break;
        }
      }

      v14 = i[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_100064FC8(v12, v9, v10);
      if (subscriber::isSimSettled())
      {
        sub_1011B3088(a1 + 744);
        v41 = 0u;
        v42 = 0u;
        v40 = 0u;
        sub_10173CBA0(v12, SDWORD1(buf), &v40);
        v15 = BYTE8(v42);
        v16 = **(v12 + 352);
        if (BYTE8(v42))
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = subscriber::asString();
            *v36 = 136315394;
            v37 = v17;
            v38 = 2048;
            v39 = *(&v44 + 1);
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Sending auth request for type %s : input has %lu fields", v36, 0x16u);
          }

          *(a1 + 792) = 1;
          sub_1004F1F78(v29, &buf + 8);
          v33[2] = a1;
          v33[3] = v12;
          v33[4] = &v14->__vftable;
          if (v14)
          {
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v34 = DWORD1(buf);
          sub_1011C608C(v35, &v45);
          v35[7] = 0;
          operator new();
        }

        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v24 = subscriber::asString();
          *v36 = 136315138;
          v37 = v24;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Auth for type %s cannot occur because no SIM type matches", v36, 0xCu);
        }

        v31[0] = 0;
        v31[1] = 0;
        v30 = v31;
        if (!*(&v46 + 1))
        {
          sub_100022DB4();
        }

        (*(**(&v46 + 1) + 48))(*(&v46 + 1), &v30);
        sub_10004EC58(&v30, v31[0]);
        if (BYTE8(v42) == 1 && v41)
        {
          *(&v41 + 1) = v41;
          operator delete(v41);
        }

        v21 = v15 ^ 1;
        if (!v14)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v18 = **(v12 + 352);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_100064FC8(v12, v19, v20);
          v23 = subscriber::asString();
          LODWORD(v40) = 136315138;
          *(&v40 + 4) = v23;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Auth deferred because of SIM state %s", &v40, 0xCu);
        }

        v21 = 0;
        if (!v14)
        {
          goto LABEL_32;
        }
      }

      sub_100004A34(v14);
LABEL_32:
      sub_1004F26B0(&v45);
      sub_10004EC58(&buf + 8, v44);
      if (!v21)
      {
        return;
      }

LABEL_33:
      if (!*(a1 + 784))
      {
        return;
      }
    }
  }

  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    v3 = "#I Baseband booted assertion for auth not granted yet. Keep waiting...";
    goto LABEL_4;
  }
}

void sub_1011B28B8(_Unwind_Exception *a1)
{
  if (*(v2 - 184) == 1)
  {
    v4 = *(v2 - 208);
    if (v4)
    {
      *(v2 - 200) = v4;
      operator delete(v4);
    }
  }

  if (v1)
  {
    sub_100004A34(v1);
  }

  sub_1011B3154(v2 - 176);
  _Unwind_Resume(a1);
}

uint64_t sub_1011B29E0(uint64_t a1, uint64_t *a2)
{
  sub_10173C160(*a2, 0);
  result = *(a1 + 152);
  if (result)
  {
    v4 = *(*result + 40);

    return v4();
  }

  return result;
}

void sub_1011B2A5C(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *a2 | (a3 << 32);
  v5[0] = off_101F18E78;
  v5[1] = v3;
  v5[2] = v4;
  v5[3] = v5;
  sub_1011B2B00(v3, a2, a3, v5);
}

void sub_1011B2AEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1011C6C1C(va);
  _Unwind_Resume(a1);
}

void sub_1011B2B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(**(a1 + 56) + 16))(*(a1 + 56), *(a2 + 4));
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = subscriber::asString();
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Reading SIM file %s", buf, 0xCu);
  }

  sub_1011C6B84(&v6, a4);
  v9 = 0;
  operator new();
}

void sub_1011B2C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1011CB7A4(va);
  sub_1011C6C1C(v9 + 24);
  _Unwind_Resume(a1);
}

void sub_1011B2CBC(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = a3 + 1;
  v4 = *a3;
  if (*a3 != a3 + 1)
  {
    v6 = *(*a2 + 36);
    do
    {
      v7 = *a2;
      v8 = *(*a2 + 192);
      if (v8)
      {
        v9 = *(v4 + 7);
        v10 = *a2 + 192;
        do
        {
          if (*(v8 + 32) >= v9)
          {
            v10 = v8;
          }

          v8 = *(v8 + 8 * (*(v8 + 32) < v9));
        }

        while (v8);
        if (v10 != *a2 + 192 && *(v10 + 32) <= v9 && *(v10 + 44) == 3)
        {
          v11 = sub_101413A80(v7 + 184, *(v4 + 7));
          sub_101414040(v7 + 184, v9, &v15);
          v17 = v6;
          v18 = v9;
          v20 = 0;
          v21 = 0;
          v19 = 0;
          sub_100034C50(&v19, v15, v16, v16 - v15);
          v22 = v11 & ((v11 >> 17) >> 31);
          v23 = (v11 & ((v11 << 15) >> 63)) >> 32;
          v27 = 0;
          rest::write_rest_value();
          sub_10000501C(&__p, "/cc/events/subscriber_sim_file_event");
          object = v27;
          v27 = xpc_null_create();
          ctu::RestModule::sendEvent();
          xpc_release(object);
          object = 0;
          if (v26 < 0)
          {
            operator delete(__p);
          }

          xpc_release(v27);
          if (v19)
          {
            v20 = v19;
            operator delete(v19);
          }

          if (v15)
          {
            v16 = v15;
            operator delete(v15);
          }
        }
      }

      v12 = v4[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v4[2];
          v14 = *v13 == v4;
          v4 = v13;
        }

        while (!v14);
      }

      v4 = v13;
    }

    while (v13 != v3);
  }
}

void sub_1011B2E8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  xpc_release(object);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v24 - 88));
  if (a14)
  {
    operator delete(a14);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void sub_1011B2F00(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  for (i = *(a2 + 168); i != *(a2 + 176); i += 2)
  {
    v6 = *i;
    if (*(*i + 36) == a3)
    {
      v8 = i[1];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_101414040(v6 + 184, a4, a1);
      if (v8)
      {

        sub_100004A34(v8);
      }

      return;
    }
  }

  v7 = *(*(**(a2 + 56) + 16))(*(a2 + 56), a3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = subscriber::asString();
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E Can't get Sim File %s because there is no SIM", &v9, 0xCu);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_1011B3070(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011B3088(uint64_t a1)
{
  v2 = *(*(a1 + 8) + ((*(a1 + 32) >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((*(a1 + 32) & 0x3FLL) << 6);
  sub_1004F26B0(v2 + 32);
  sub_10004EC58(v2 + 8, *(v2 + 16));
  v3 = vaddq_s64(*(a1 + 32), xmmword_1017CD970);
  *(a1 + 32) = v3;
  if (v3.i64[0] >= 0x80uLL)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 64;
  }
}

uint64_t sub_1011B311C(uint64_t a1)
{
  sub_1004F26B0(a1 + 32);
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

uint64_t sub_1011B3154(uint64_t a1)
{
  sub_1004F26B0(a1 + 32);
  sub_10004EC58(a1 + 8, *(a1 + 16));
  return a1;
}

void sub_1011B318C(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = *(*a2 + 32);
  v40 = v4;
  v5 = *(a1 + 600);
  if (!v5)
  {
    goto LABEL_8;
  }

  v8 = a1 + 600;
  do
  {
    if (*(v5 + 32) >= v4)
    {
      v8 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < v4));
  }

  while (v5);
  if (v8 == a1 + 600 || v4 < *(v8 + 32))
  {
LABEL_8:
    v9 = **(v3 + 352);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "observed files list not available", buf, 2u);
    }

    return;
  }

  v38 = 0;
  v39 = 0;
  v36[1] = 0;
  v37 = &v38;
  v35 = v36;
  v36[0] = 0;
  v10 = a3 + 1;
  v11 = *a3;
  if (*a3 != a3 + 1)
  {
    do
    {
      v12 = *(v11 + 7);
      v34 = v12;
      *buf = &v40;
      v13 = sub_1011CA7D0(a1 + 592, v40);
      v16 = v13[6];
      v14 = v13 + 6;
      v15 = v16;
      if (!v16)
      {
        goto LABEL_18;
      }

      v17 = v14;
      do
      {
        if (*(v15 + 28) >= v12)
        {
          v17 = v15;
        }

        v15 = *(v15 + 8 * (*(v15 + 28) < v12));
      }

      while (v15);
      if (v17 == v14 || v12 < *(v17 + 7))
      {
LABEL_18:
        v17 = v14;
      }

      *buf = &v40;
      if (v17 == sub_1011CA7D0(a1 + 592, v40) + 6)
      {
        *buf = &v40;
        v19 = sub_1011CA7D0(a1 + 592, v40);
        sub_10008528C((v19 + 5), v12);
        v18 = &v37;
      }

      else
      {
        v18 = &v35;
      }

      sub_10008528C(v18, v12);
      v20 = v11[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v11[2];
          v22 = *v21 == v11;
          v11 = v21;
        }

        while (!v22);
      }

      v11 = v21;
    }

    while (v21 != v10);
    if (v39)
    {
      v24 = *a2;
      v23 = a2[1];
      if (v23 && (atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed), !v39))
      {
        v31 = *(a1 + 40);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I No new files to be observed", buf, 2u);
        }
      }

      else
      {
        v25 = v37;
        if (v37 != &v38)
        {
          do
          {
            sub_10173CD3C(v24, *(v25 + 7));
            v26 = v25[1];
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
                v27 = v25[2];
                v22 = *v27 == v25;
                v25 = v27;
              }

              while (!v22);
            }

            v25 = v27;
          }

          while (v27 != &v38);
        }

        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        *buf = _NSConcreteStackBlock;
        v42 = 0x40000000;
        v43 = sub_1011B2A5C;
        v44 = &unk_101F17E60;
        v45 = a1;
        sub_10173CBD4(v24, buf);
        if (!v23)
        {
          goto LABEL_43;
        }

        sub_100004A34(v23);
      }

      sub_100004A34(v23);
LABEL_43:
      v28 = a2[1];
      v33[0] = *a2;
      v33[1] = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_1011B121C(a1, v33);
      if (v28)
      {
        sub_100004A34(v28);
      }
    }
  }

  v29 = *a2;
  v30 = a2[1];
  v32[0] = v29;
  v32[1] = v30;
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1011B2CBC(a1, v32, &v35);
  if (v30)
  {
    sub_100004A34(v30);
  }

  sub_10006DCAC(&v35, v36[0]);
  sub_10006DCAC(&v37, v38);
}

void sub_1011B3520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *a15, uint64_t a16, char a17, void *a18)
{
  if (v18)
  {
    sub_100004A34(v18);
    sub_100004A34(v18);
  }

  sub_10006DCAC(&a14, a15);
  sub_10006DCAC(&a17, a18);
  _Unwind_Resume(a1);
}

uint64_t sub_1011B3584(uint64_t a1, char a2)
{
  v3 = a2;
  if (!a1)
  {
    sub_100022DB4();
  }

  return (*(*a1 + 48))(a1, &v3);
}

uint64_t sub_1011B35D4(uint64_t a1)
{
  sub_1011B67DC(a1 + 32);
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1011B362C(uint64_t result)
{
  if (*(result + 944) == 1)
  {
    v1 = result;
    v2 = *(result + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I processing first command in SIM commands queue", v4, 2u);
    }

    v3 = *(*(*(v1 + 912) + ((*(v1 + 936) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(v1 + 936) & 0x7FLL) + 24);
    if (!v3)
    {
      sub_100022DB4();
    }

    return (*(*v3 + 48))(v3);
  }

  return result;
}

uint64_t sub_1011B36E8(uint64_t result)
{
  if (*(result + 944))
  {
    v1 = result;
    v2 = *(result + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I processing next command in SIM commands queue", v4, 2u);
    }

    v3 = *(*(*(v1 + 912) + ((*(v1 + 936) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(v1 + 936) & 0x7FLL) + 24);
    if (!v3)
    {
      sub_100022DB4();
    }

    return (*(*v3 + 48))(v3);
  }

  return result;
}

void *sub_1011B37A0(void *a1)
{
  sub_10000FF50((a1 + 8));
  v2 = a1[7];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  return a1;
}

void *sub_1011B37E8(void *a1)
{
  sub_10000FF50((a1 + 11));
  v2 = a1[10];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1011B383C(uint64_t a1)
{
  sub_10000FF50(a1 + 48);
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1011B3878(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  sub_100064FC8(*a2, a2, a3);
  isSimReadyOrLocked = subscriber::isSimReadyOrLocked();
  v6 = *a2;
  if (isSimReadyOrLocked)
  {
    v7 = *(a1 + 800);
    v8 = *(a1 + 808);
    if (v7 == v8)
    {
      return 1;
    }

    v9 = 0;
    v10 = "bootstrap profile";
    do
    {
LABEL_4:
      if (*(v7 + 4) == *(v6 + 36) && *(v7 + 80) == 1)
      {
        for (i = *(v7 + 56); i != *(v7 + 64); i += 216)
        {
          if (*(i + 90) == 1 && (*(i + 89) & 1) != 0)
          {
            v7 += 88;
            v9 = 1;
            if (v7 != v8)
            {
              goto LABEL_4;
            }

            goto LABEL_18;
          }
        }
      }

      v7 += 88;
    }

    while (v7 != v8);
    if ((v9 & 1) == 0)
    {
      return 1;
    }

    v10 = "bootstrap profile";
  }

  else
  {
    v10 = "invalid state";
  }

LABEL_18:
  v12 = **(v6 + 352);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v13)
  {
    v15 = 136315138;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I PIN actions are not allowed because %s", &v15, 0xCu);
    return 0;
  }

  return result;
}

void sub_1011B39E0(uint64_t a1, int a2)
{
  v8 = 0;
  v2 = a2;
  v3 = subscriber::asString();
  ctu::rest::detail::write_enum_string_value(&v8, v2, v3, v4);
  sub_10000501C(&__p, "/cc/events/setting_session_complete");
  object = v8;
  v8 = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v8);
}

void sub_1011B3A84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void sub_1011B3AC8(uint64_t a1, int *a2)
{
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    v23 = v3;
  }

  else
  {
    v4 = xpc_null_create();
    v23 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    xpc_retain(v4);
    goto LABEL_9;
  }

  v5 = xpc_null_create();
LABEL_8:
  v23 = v5;
LABEL_9:
  xpc_release(v4);
  v6 = *a2;
  v7 = subscriber::asString();
  ctu::rest::detail::write_enum_string_value(&v21, v6, v7, v8);
  v19 = &v23;
  v20 = "first";
  sub_10000F688(&v19, &v21, &v22);
  xpc_release(v22);
  v22 = 0;
  xpc_release(v21);
  v21 = 0;
  v9 = a2[1];
  v10 = asString();
  ctu::rest::detail::write_enum_string_value(&v17, v9, v10, v11);
  v19 = &v23;
  v20 = "second";
  sub_10000F688(&v19, &v17, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v17);
  v17 = 0;
  v12 = v23;
  if (v23)
  {
    xpc_retain(v23);
  }

  else
  {
    v12 = xpc_null_create();
  }

  xpc_release(v23);
  sub_10000501C(&__p, "/cc/events/setting_session_error");
  v14 = v12;
  v13 = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(v14);
  if (v16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v13);
}

void sub_1011B3C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v16);
  _Unwind_Resume(a1);
}

void sub_1011B3D18(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 64));
  v3 = ServiceMap;
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(ServiceMap);
  buf.__r_.__value_.__r.__words[0] = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &buf);
  if (v8)
  {
    v9 = v8[3];
    v10 = v8[4];
    if (v10)
    {
      v11 = v8[3];
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      v13 = 0;
      if (!v11)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v9 = 0;
  }

  std::mutex::unlock(v3);
  v10 = 0;
  v13 = 1;
  if (!v9)
  {
LABEL_7:
    v14 = *(a1 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not find analytics interface, not submitting metrics.", &buf, 2u);
    }

    goto LABEL_279;
  }

LABEL_11:
  if (capabilities::ct::supportsGemini(v12))
  {
    if (*(a1 + 176) - *(a1 + 168) < 0x11uLL)
    {
      goto LABEL_279;
    }

    v15 = *(a1 + 824);
    if (v15 == 2)
    {
      v16 = 3;
    }

    else
    {
      v16 = 2 * (v15 == 1);
    }
  }

  else
  {
    v16 = 1;
  }

  v174 = 0;
  v17 = xpc_dictionary_create(0, 0, 0);
  v18 = v17;
  if (v17)
  {
    v174 = v17;
  }

  else
  {
    v18 = xpc_null_create();
    v174 = v18;
    if (!v18)
    {
      v19 = xpc_null_create();
      v18 = 0;
      goto LABEL_24;
    }
  }

  if (xpc_get_type(v18) == &_xpc_type_dictionary)
  {
    xpc_retain(v18);
    goto LABEL_25;
  }

  v19 = xpc_null_create();
LABEL_24:
  v174 = v19;
LABEL_25:
  xpc_release(v18);
  v172 = xpc_int64_create(v16);
  if (!v172)
  {
    v172 = xpc_null_create();
  }

  buf.__r_.__value_.__r.__words[0] = &v174;
  buf.__r_.__value_.__l.__size_ = "dualSimCapability";
  sub_10000F688(&buf, &v172, &v173);
  xpc_release(v173);
  v92 = v9;
  v173 = 0;
  xpc_release(v172);
  v172 = 0;
  sub_10000501C(&buf, "");
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_buf = &buf;
  }

  else
  {
    p_buf = buf.__r_.__value_.__r.__words[0];
  }

  v170 = xpc_string_create(p_buf);
  if (!v170)
  {
    v170 = xpc_null_create();
  }

  v165 = &v174;
  v166 = "carrierCombo";
  sub_10000F688(&v165, &v170, &v171);
  xpc_release(v171);
  v171 = 0;
  xpc_release(v170);
  v170 = 0;
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  sub_10000501C(&buf, "");
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &buf;
  }

  else
  {
    v21 = buf.__r_.__value_.__r.__words[0];
  }

  v168 = xpc_string_create(v21);
  if (!v168)
  {
    v168 = xpc_null_create();
  }

  v165 = &v174;
  v166 = "eSimCarrierCombo";
  sub_10000F688(&v165, &v168, &v169);
  xpc_release(v169);
  v169 = 0;
  xpc_release(v168);
  v168 = 0;
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v165 = 0;
  v166 = 0;
  v167 = 0;
  sub_100627878(&v165, a1 + 832);
  v22 = Registry::getServiceMap(*(a1 + 64));
  v23 = v22;
  if ((v24 & 0x8000000000000000) != 0)
  {
    v25 = (v24 & 0x7FFFFFFFFFFFFFFFLL);
    v26 = 5381;
    do
    {
      v24 = v26;
      v27 = *v25++;
      v26 = (33 * v26) ^ v27;
    }

    while (v27);
  }

  std::mutex::lock(v22);
  buf.__r_.__value_.__r.__words[0] = v24;
  v28 = sub_100009510(&v23[1].__m_.__sig, &buf);
  if (!v28)
  {
    v96 = 0;
    goto LABEL_48;
  }

  v29 = v28[4];
  v96 = v28[3];
  if (!v29)
  {
LABEL_48:
    std::mutex::unlock(v23);
    v93 = 0;
    v94 = 1;
    goto LABEL_49;
  }

  atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v23);
  atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  v93 = v29;
  sub_100004A34(v29);
  v94 = 0;
LABEL_49:
  v31 = *(a1 + 168);
  v30 = *(a1 + 176);
  if (v31 == v30)
  {
    v71 = 0;
    v70 = 0;
    v69 = 0;
  }

  else
  {
    v91 = v13;
    v90 = v10;
    v95 = 0;
    v97 = 0;
    v32 = (a1 + 864);
    v33 = (a1 + 424);
    do
    {
      v34 = *(*v31 + 36);
      if (v34)
      {
        memset(&buf, 0, sizeof(buf));
        memset(&__str, 0, sizeof(__str));
        v35 = *v32;
        if (!*v32)
        {
          goto LABEL_59;
        }

        v36 = a1 + 864;
        do
        {
          if (*(v35 + 32) >= v34)
          {
            v36 = v35;
          }

          v35 = *(v35 + 8 * (*(v35 + 32) < v34));
        }

        while (v35);
        if (v36 != v32 && v34 >= *(v36 + 32))
        {
          std::string::operator=(&buf, (v36 + 48));
          std::string::operator=(&__str, (v36 + 72));
        }

        else
        {
LABEL_59:
          v37 = *(a1 + 40);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v163.__r_.__value_.__l.__data_) = 0;
            _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Could not find carrier bundle!", &v163, 2u);
          }
        }

        memset(&v163, 0, sizeof(v163));
        v38 = asString();
        sub_10000501C(&v163, v38);
        v39 = *v33;
        if (!*v33)
        {
          goto LABEL_69;
        }

        v40 = a1 + 424;
        do
        {
          if (*(v39 + 28) >= v34)
          {
            v40 = v39;
          }

          v39 = *(v39 + 8 * (*(v39 + 28) < v34));
        }

        while (v39);
        if (v40 != v33 && v34 >= *(v40 + 28))
        {
          v44 = asString();
          sub_100016890(&v163, v44);
        }

        else
        {
LABEL_69:
          v41 = *(*(**(a1 + 56) + 16))(*(a1 + 56), v34);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v161) = 0;
            _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Could not find BB provisioned state!", &v161, 2u);
          }
        }

        sub_100064FC8(*v31, v42, v43);
        v45 = subscriber::asString();
        v161 = 0uLL;
        v162 = 0;
        sub_10173C874(*v31, &__p);
        subscriber::asString();
        if (__p)
        {
          *(&__p + 1) = __p;
          operator delete(__p);
        }

        v48 = *(*v31 + 58);
        v49 = *(*v31 + 52);
        sub_100064FC8(*v31, v46, v47);
        if (subscriber::isSimPresent())
        {
          v50 = v49 - 2;
          v51 = v97;
          if (v50 >= 4)
          {
            v52 = HIDWORD(v97);
          }

          else
          {
            v52 = HIDWORD(v97) + 1;
          }

          if (v50 > 3)
          {
            v51 = v97 + 1;
          }

          v97 = __PAIR64__(v52, v51);
          __p = 0uLL;
          v160 = 0;
          if (v96)
          {
            (*(*v96 + 16))(&__p);
          }

          else
          {
            sub_10000501C(&__p, "");
          }

          if (v34 == *(a1 + 444))
          {
            if (v160 >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            v157 = xpc_string_create(p_p);
            if (!v157)
            {
              v157 = xpc_null_create();
            }

            v109.__r_.__value_.__r.__words[0] = &v174;
            v109.__r_.__value_.__l.__size_ = "dataPrefCarrierName";
            sub_10000F688(&v109, &v157, &object);
            xpc_release(object);
            object = 0;
            xpc_release(v157);
            v157 = 0;
          }

          if (v34 == *(a1 + 460))
          {
            if (v160 >= 0)
            {
              v54 = &__p;
            }

            else
            {
              v54 = __p;
            }

            v155 = xpc_string_create(v54);
            if (!v155)
            {
              v155 = xpc_null_create();
            }

            v109.__r_.__value_.__r.__words[0] = &v174;
            v109.__r_.__value_.__l.__size_ = "voicePrefCarrierName";
            sub_10000F688(&v109, &v155, &v156);
            xpc_release(v156);
            v156 = 0;
            xpc_release(v155);
            v155 = 0;
          }

          if (v34 == 2)
          {
            if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v62 = &buf;
            }

            else
            {
              v62 = buf.__r_.__value_.__r.__words[0];
            }

            v133 = xpc_string_create(v62);
            if (!v133)
            {
              v133 = xpc_null_create();
            }

            v109.__r_.__value_.__r.__words[0] = &v174;
            v109.__r_.__value_.__l.__size_ = "carrier2BundleName";
            sub_10000F688(&v109, &v133, &v134);
            xpc_release(v134);
            v134 = 0;
            xpc_release(v133);
            v133 = 0;
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_str = &__str;
            }

            else
            {
              p_str = __str.__r_.__value_.__r.__words[0];
            }

            v131 = xpc_string_create(p_str);
            if (!v131)
            {
              v131 = xpc_null_create();
            }

            v109.__r_.__value_.__r.__words[0] = &v174;
            v109.__r_.__value_.__l.__size_ = "carrier2BundleVersion";
            sub_10000F688(&v109, &v131, &v132);
            xpc_release(v132);
            v132 = 0;
            xpc_release(v131);
            v131 = 0;
            if (v160 >= 0)
            {
              v64 = &__p;
            }

            else
            {
              v64 = __p;
            }

            v129 = xpc_string_create(v64);
            if (!v129)
            {
              v129 = xpc_null_create();
            }

            v109.__r_.__value_.__r.__words[0] = &v174;
            v109.__r_.__value_.__l.__size_ = "carrier2Name";
            sub_10000F688(&v109, &v129, &v130);
            xpc_release(v130);
            v130 = 0;
            xpc_release(v129);
            v129 = 0;
            v127 = xpc_string_create(v45);
            if (!v127)
            {
              v127 = xpc_null_create();
            }

            v109.__r_.__value_.__r.__words[0] = &v174;
            v109.__r_.__value_.__l.__size_ = "carrier2SimState";
            sub_10000F688(&v109, &v127, &v128);
            xpc_release(v128);
            v128 = 0;
            xpc_release(v127);
            v127 = 0;
            if (v162 >= 0)
            {
              v65 = &v161;
            }

            else
            {
              v65 = v161;
            }

            v125 = xpc_string_create(v65);
            if (!v125)
            {
              v125 = xpc_null_create();
            }

            v109.__r_.__value_.__r.__words[0] = &v174;
            v109.__r_.__value_.__l.__size_ = "carrier2SimType";
            sub_10000F688(&v109, &v125, &v126);
            xpc_release(v126);
            v126 = 0;
            xpc_release(v125);
            v125 = 0;
            v123 = xpc_BOOL_create(v48);
            if (!v123)
            {
              v123 = xpc_null_create();
            }

            v109.__r_.__value_.__r.__words[0] = &v174;
            v109.__r_.__value_.__l.__size_ = "carrier2SimPinEnabled";
            sub_10000F688(&v109, &v123, &v124);
            xpc_release(v124);
            v124 = 0;
            xpc_release(v123);
            v123 = 0;
            v121 = xpc_BOOL_create(v50 < 4);
            if (!v121)
            {
              v121 = xpc_null_create();
            }

            v109.__r_.__value_.__r.__words[0] = &v174;
            v109.__r_.__value_.__l.__size_ = "carrier2IsVinylCapable";
            sub_10000F688(&v109, &v121, &v122);
            xpc_release(v122);
            v122 = 0;
            xpc_release(v121);
            v121 = 0;
            if ((v163.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v66 = &v163;
            }

            else
            {
              v66 = v163.__r_.__value_.__r.__words[0];
            }

            v119 = xpc_string_create(v66);
            if (!v119)
            {
              v119 = xpc_null_create();
            }

            v109.__r_.__value_.__r.__words[0] = &v174;
            v109.__r_.__value_.__l.__size_ = "carrier2BBServiceProvisioningState";
            sub_10000F688(&v109, &v119, &v120);
            xpc_release(v120);
            v120 = 0;
            xpc_release(v119);
            v119 = 0;
            if (v160 >= 0)
            {
              v67 = &__p;
            }

            else
            {
              v67 = __p;
            }

            v117 = xpc_string_create(v67);
            if (!v117)
            {
              v117 = xpc_null_create();
            }

            v109.__r_.__value_.__r.__words[0] = &v174;
            v109.__r_.__value_.__l.__size_ = "carrierCombo";
            sub_10000F688(&v109, &v117, &v118);
            xpc_release(v118);
            v118 = 0;
            xpc_release(v117);
            v117 = 0;
            if (v50 <= 3)
            {
              if (v160 >= 0)
              {
                v68 = &__p;
              }

              else
              {
                v68 = __p;
              }

              v115 = xpc_string_create(v68);
              if (!v115)
              {
                v115 = xpc_null_create();
              }

              v109.__r_.__value_.__r.__words[0] = &v174;
              v109.__r_.__value_.__l.__size_ = "eSimCarrierCombo";
              sub_10000F688(&v109, &v115, &v116);
              xpc_release(v116);
              v116 = 0;
              xpc_release(v115);
              v115 = 0;
            }

            LOBYTE(v95) = 1;
          }

          else if (v34 == 1)
          {
            if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v55 = &buf;
            }

            else
            {
              v55 = buf.__r_.__value_.__r.__words[0];
            }

            v153 = xpc_string_create(v55);
            if (!v153)
            {
              v153 = xpc_null_create();
            }

            v109.__r_.__value_.__r.__words[0] = &v174;
            v109.__r_.__value_.__l.__size_ = "carrier1BundleName";
            sub_10000F688(&v109, &v153, &v154);
            xpc_release(v154);
            v154 = 0;
            xpc_release(v153);
            v153 = 0;
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v56 = &__str;
            }

            else
            {
              v56 = __str.__r_.__value_.__r.__words[0];
            }

            v151 = xpc_string_create(v56);
            if (!v151)
            {
              v151 = xpc_null_create();
            }

            v109.__r_.__value_.__r.__words[0] = &v174;
            v109.__r_.__value_.__l.__size_ = "carrier1BundleVersion";
            sub_10000F688(&v109, &v151, &v152);
            xpc_release(v152);
            v152 = 0;
            xpc_release(v151);
            v151 = 0;
            if (v160 >= 0)
            {
              v57 = &__p;
            }

            else
            {
              v57 = __p;
            }

            v149 = xpc_string_create(v57);
            if (!v149)
            {
              v149 = xpc_null_create();
            }

            v109.__r_.__value_.__r.__words[0] = &v174;
            v109.__r_.__value_.__l.__size_ = "carrier1Name";
            sub_10000F688(&v109, &v149, &v150);
            xpc_release(v150);
            v150 = 0;
            xpc_release(v149);
            v149 = 0;
            v147 = xpc_string_create(v45);
            if (!v147)
            {
              v147 = xpc_null_create();
            }

            v109.__r_.__value_.__r.__words[0] = &v174;
            v109.__r_.__value_.__l.__size_ = "carrier1SimState";
            sub_10000F688(&v109, &v147, &v148);
            xpc_release(v148);
            v148 = 0;
            xpc_release(v147);
            v147 = 0;
            if (v162 >= 0)
            {
              v58 = &v161;
            }

            else
            {
              v58 = v161;
            }

            v145 = xpc_string_create(v58);
            if (!v145)
            {
              v145 = xpc_null_create();
            }

            v109.__r_.__value_.__r.__words[0] = &v174;
            v109.__r_.__value_.__l.__size_ = "carrier1SimType";
            sub_10000F688(&v109, &v145, &v146);
            xpc_release(v146);
            v146 = 0;
            xpc_release(v145);
            v145 = 0;
            v143 = xpc_BOOL_create(v48);
            if (!v143)
            {
              v143 = xpc_null_create();
            }

            v109.__r_.__value_.__r.__words[0] = &v174;
            v109.__r_.__value_.__l.__size_ = "carrier1SimPinEnabled";
            sub_10000F688(&v109, &v143, &v144);
            xpc_release(v144);
            v144 = 0;
            xpc_release(v143);
            v143 = 0;
            v141 = xpc_BOOL_create(v50 < 4);
            if (!v141)
            {
              v141 = xpc_null_create();
            }

            v109.__r_.__value_.__r.__words[0] = &v174;
            v109.__r_.__value_.__l.__size_ = "carrier1IsVinylCapable";
            sub_10000F688(&v109, &v141, &v142);
            xpc_release(v142);
            v142 = 0;
            xpc_release(v141);
            v141 = 0;
            if ((v163.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v59 = &v163;
            }

            else
            {
              v59 = v163.__r_.__value_.__r.__words[0];
            }

            v139 = xpc_string_create(v59);
            if (!v139)
            {
              v139 = xpc_null_create();
            }

            v109.__r_.__value_.__r.__words[0] = &v174;
            v109.__r_.__value_.__l.__size_ = "carrier1BBServiceProvisioningState";
            sub_10000F688(&v109, &v139, &v140);
            xpc_release(v140);
            v140 = 0;
            xpc_release(v139);
            v139 = 0;
            if (v160 >= 0)
            {
              v60 = &__p;
            }

            else
            {
              v60 = __p;
            }

            v137 = xpc_string_create(v60);
            if (!v137)
            {
              v137 = xpc_null_create();
            }

            v109.__r_.__value_.__r.__words[0] = &v174;
            v109.__r_.__value_.__l.__size_ = "carrierCombo";
            sub_10000F688(&v109, &v137, &v138);
            xpc_release(v138);
            v138 = 0;
            xpc_release(v137);
            v137 = 0;
            if (v50 <= 3)
            {
              if (v160 >= 0)
              {
                v61 = &__p;
              }

              else
              {
                v61 = __p;
              }

              v135 = xpc_string_create(v61);
              if (!v135)
              {
                v135 = xpc_null_create();
              }

              v109.__r_.__value_.__r.__words[0] = &v174;
              v109.__r_.__value_.__l.__size_ = "eSimCarrierCombo";
              sub_10000F688(&v109, &v135, &v136);
              xpc_release(v136);
              v136 = 0;
              xpc_release(v135);
              v135 = 0;
            }

            BYTE4(v95) = 1;
          }

          if (SHIBYTE(v160) < 0)
          {
            operator delete(__p);
          }
        }

        if (SHIBYTE(v162) < 0)
        {
          operator delete(v161);
        }

        if (SHIBYTE(v163.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v163.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }
      }

      v31 += 2;
    }

    while (v31 != v30);
    v69 = BYTE4(v95) & v95;
    v10 = v90;
    v13 = v91;
    v70 = v97;
    v71 = HIDWORD(v97);
  }

  if (v70 + v71 == 1)
  {
    v73 = 1;
    if (v70 == 1)
    {
      v72 = 1;
    }

    else
    {
      v72 = 2 * (v71 == 1);
    }
  }

  else if (v70 + v71 == 2)
  {
    if (v71 == 1 && v70 == 1)
    {
      v72 = 3;
      v73 = 2;
    }

    else
    {
      v74 = 5;
      if (v71 != 2)
      {
        v74 = 0;
      }

      v73 = 2;
      if (v70 == 2)
      {
        v72 = 4;
      }

      else
      {
        v72 = v74;
      }
    }
  }

  else
  {
    v73 = 0;
    v72 = 0;
  }

  v113 = xpc_int64_create(v73);
  if (!v113)
  {
    v113 = xpc_null_create();
  }

  buf.__r_.__value_.__r.__words[0] = &v174;
  buf.__r_.__value_.__l.__size_ = "simUsage";
  sub_10000F688(&buf, &v113, &v114);
  xpc_release(v114);
  v114 = 0;
  xpc_release(v113);
  v113 = 0;
  v111 = xpc_int64_create(v72);
  if (!v111)
  {
    v111 = xpc_null_create();
  }

  buf.__r_.__value_.__r.__words[0] = &v174;
  buf.__r_.__value_.__l.__size_ = "simCombo";
  sub_10000F688(&buf, &v111, &v112);
  xpc_release(v112);
  v112 = 0;
  xpc_release(v111);
  v111 = 0;
  memset(&__str, 0, sizeof(__str));
  memset(&v163, 0, sizeof(v163));
  if (v69)
  {
    v161 = 0uLL;
    v162 = 0;
    *&__p = &v174;
    *(&__p + 1) = "carrier1Name";
    sub_100006354(&__p, &v109);
    memset(&buf, 0, sizeof(buf));
    xpc::dyn_cast_or_default();
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    xpc_release(v109.__r_.__value_.__l.__data_);
    __p = 0uLL;
    v160 = 0;
    v109.__r_.__value_.__r.__words[0] = &v174;
    v109.__r_.__value_.__l.__size_ = "carrier2Name";
    sub_100006354(&v109, &v110);
    memset(&buf, 0, sizeof(buf));
    xpc::dyn_cast_or_default();
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    xpc_release(v110);
    buf.__r_.__value_.__r.__words[0] = &v174;
    buf.__r_.__value_.__l.__size_ = "carrier1IsVinylCapable";
    sub_100006354(&buf, &v109);
    v76 = xpc::dyn_cast_or_default(&v109, 0, v75);
    xpc_release(v109.__r_.__value_.__l.__data_);
    buf.__r_.__value_.__r.__words[0] = &v174;
    buf.__r_.__value_.__l.__size_ = "carrier2IsVinylCapable";
    sub_100006354(&buf, &v109);
    v78 = xpc::dyn_cast_or_default(&v109, 0, v77);
    xpc_release(v109.__r_.__value_.__l.__data_);
    memset(&buf, 0, sizeof(buf));
    v79 = HIBYTE(v162);
    if (v162 < 0)
    {
      v79 = *(&v161 + 1);
    }

    if (v79)
    {
      v80 = sub_10016B30C(&buf, &v161);
      buf.__r_.__value_.__l.__size_ = v80;
    }

    else
    {
      v80 = 0;
    }

    v81 = HIBYTE(v160);
    if (v160 < 0)
    {
      v81 = *(&__p + 1);
    }

    if (v81)
    {
      if (v80 >= buf.__r_.__value_.__r.__words[2])
      {
        v80 = sub_10016B30C(&buf, &__p);
      }

      else
      {
        if (SHIBYTE(v160) < 0)
        {
          sub_100005F2C(v80, __p, *(&__p + 1));
        }

        else
        {
          v82 = __p;
          *(v80 + 16) = v160;
          *v80 = v82;
        }

        v80 += 24;
      }

      buf.__r_.__value_.__l.__size_ = v80;
    }

    v83 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v80 - buf.__r_.__value_.__r.__words[0]) >> 3));
    if (v80 == buf.__r_.__value_.__r.__words[0])
    {
      v84 = 0;
    }

    else
    {
      v84 = v83;
    }

    sub_10042C4EC(buf.__r_.__value_.__l.__data_, v80, &v110, v84, 1);
    sub_1000D1184(buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_, "/", 1uLL, &v109);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str = v109;
    if ((v109.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v85 = &__str;
    }

    else
    {
      v85 = __str.__r_.__value_.__r.__words[0];
    }

    v107 = xpc_string_create(v85);
    if (!v107)
    {
      v107 = xpc_null_create();
    }

    v109.__r_.__value_.__r.__words[0] = &v174;
    v109.__r_.__value_.__l.__size_ = "carrierCombo";
    sub_10000F688(&v109, &v107, &v108);
    xpc_release(v108);
    v108 = 0;
    xpc_release(v107);
    v107 = 0;
    if ((v76 & v78) == 1)
    {
      std::string::operator=(&v163, &__str);
      if ((v163.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v86 = &v163;
      }

      else
      {
        v86 = v163.__r_.__value_.__r.__words[0];
      }

      v105 = xpc_string_create(v86);
      if (!v105)
      {
        v105 = xpc_null_create();
      }

      v109.__r_.__value_.__r.__words[0] = &v174;
      v109.__r_.__value_.__l.__size_ = "eSimCarrierCombo";
      sub_10000F688(&v109, &v105, &v106);
      xpc_release(v106);
      v106 = 0;
      xpc_release(v105);
      v105 = 0;
    }

    v103 = xpc_BOOL_create(v71 == 2);
    if (!v103)
    {
      v103 = xpc_null_create();
    }

    v109.__r_.__value_.__r.__words[0] = &v174;
    v109.__r_.__value_.__l.__size_ = "isMEPEnabled";
    sub_10000F688(&v109, &v103, &v104);
    xpc_release(v104);
    v104 = 0;
    xpc_release(v103);
    v103 = 0;
    v109.__r_.__value_.__r.__words[0] = &buf;
    sub_1000087B4(&v109);
    if (SHIBYTE(v160) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v162) < 0)
    {
      operator delete(v161);
    }
  }

  v87 = *(a1 + 800);
  if (v87 != *(a1 + 808))
  {
    if (*(v87 + 12) == 5)
    {
      v88 = asString();
      v101 = xpc_string_create(v88);
      if (!v101)
      {
        v101 = xpc_null_create();
      }

      buf.__r_.__value_.__r.__words[0] = &v174;
      buf.__r_.__value_.__l.__size_ = "PairingState";
      sub_10000F688(&buf, &v101, &v102);
      xpc_release(v102);
      v102 = 0;
      xpc_release(v101);
      v101 = 0;
    }

    else
    {
      v89 = asString();
      v99 = xpc_string_create(v89);
      if (!v99)
      {
        v99 = xpc_null_create();
      }

      buf.__r_.__value_.__r.__words[0] = &v174;
      buf.__r_.__value_.__l.__size_ = "PairingState";
      sub_10000F688(&buf, &v99, &v100);
      xpc_release(v100);
      v100 = 0;
      xpc_release(v99);
      v99 = 0;
    }
  }

  v98 = v174;
  if (v174)
  {
    xpc_retain(v174);
  }

  else
  {
    v98 = xpc_null_create();
  }

  (*(*v92 + 16))(v92, "commCenterFullSimInfo", &v98);
  xpc_release(v98);
  v98 = 0;
  if (SHIBYTE(v163.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v163.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if ((v94 & 1) == 0)
  {
    sub_100004A34(v93);
  }

  sub_1001A8E08(&v165, v166);
  xpc_release(v174);
LABEL_279:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}