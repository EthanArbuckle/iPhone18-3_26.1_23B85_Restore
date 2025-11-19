void sub_10072C9B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  v19 = v17[5];
  v17[5] = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  ctu::OsLogLogger::~OsLogLogger((v17 + 4));
  sub_1000C0544(v17);
  _Unwind_Resume(a1);
}

void *sub_10072CACC(void *a1, NSObject **a2, OsLogContext *a3)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = *a2;
  a1[2] = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  a1[3] = 0;
  ctu::OsLogLogger::OsLogLogger(v7, a3);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), v7);
  ctu::OsLogLogger::~OsLogLogger(v7);
  return a1;
}

void sub_10072CB34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

const char *sub_10072CB58(int a1)
{
  v1 = "lazuli.chatbot.mdl.?";
  if (a1 == 2)
  {
    v1 = "lazuli.chatbot.mdl.2";
  }

  if (a1 == 1)
  {
    return "lazuli.chatbot.mdl.1";
  }

  else
  {
    return v1;
  }
}

capabilities::ct *sub_10072CB84(capabilities::ct *a1)
{
  *a1 = 0;
  if ((capabilities::ct::supportsGemini(a1) & 1) == 0)
  {
    operator new();
  }

  if (!*a1)
  {
    operator new();
  }

  return a1;
}

void sub_10072CCDC(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_1000A8744(va);
  operator delete();
}

void sub_10072CD4C(uint64_t a1)
{
  v2 = *(*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (a1 + 216);
    if (*(a1 + 239) < 0)
    {
      v3 = *v3;
    }

    v4 = "without";
    if (*(a1 + 152))
    {
      v4 = "with";
    }

    *buf = 136446466;
    *&buf[4] = v3;
    *&buf[12] = 2080;
    *&buf[14] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Starting chatbot search for: [%{public}s] %s auth parameters", buf, 0x16u);
  }

  memset(&v33, 0, sizeof(v33));
  sub_10072D450(a1 + 216, &v33);
  memset(buf, 0, 32);
  v5 = *(a1 + 112);
  if (*(a1 + 239) < 0)
  {
    sub_100005F2C(&__dst, *(a1 + 216), *(a1 + 224));
  }

  else
  {
    __dst = *(a1 + 216);
    v29 = *(a1 + 232);
  }

  sub_100732108(&v30, &__dst);
  sub_10000501C(&__p, "etag");
  sub_10072D970(v5, &v30, &__p, buf);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v30);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(__dst);
  }

  v30 = 0;
  v31 = 0;
  v32 = 0;
  v6 = *(a1 + 88);
  v25[0] = *(a1 + 80);
  v25[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10006F264(&v23, (a1 + 128));
  sub_10006F264(&v21, buf);
  sub_10072DA38(v25, a1 + 216, &v23, &v33, &v21, &v30);
  if (v22 == 1 && SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (v24 == 1 && SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v6)
  {
    sub_100004A34(v6);
  }

  v19 = 0;
  v20 = 0;
  ctu::Http::HttpRequest::create();
  v7 = *(a1 + 184);
  *(a1 + 176) = __p;
  v8 = (a1 + 176);
  __p = 0uLL;
  if (v7)
  {
    sub_100004A34(v7);
    if (*(&__p + 1))
    {
      sub_100004A34(*(&__p + 1));
    }
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  if (*v8)
  {
    sub_100A99478(*(a1 + 48), (a1 + 80), (a1 + 176));
    (*(**v8 + 96))(30.0);
    (*(**v8 + 208))(*v8, 1);
    (*(**(a1 + 176) + 8))(*(a1 + 176), *(a1 + 16));
    (*(**v8 + 200))(*v8, 75);
    sub_100004AA0(&__p, a1);
    v9 = __p;
    if (*(&__p + 1))
    {
      atomic_fetch_add_explicit((*(&__p + 1) + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(*(&v9 + 1));
    }

    v10 = *(a1 + 176);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1174405120;
    v16[2] = sub_10072E00C;
    v16[3] = &unk_101E770C8;
    v16[4] = a1;
    v17 = v9;
    if (*(&v9 + 1))
    {
      atomic_fetch_add_explicit((*(&v9 + 1) + 16), 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v18, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
    }

    else
    {
      v18 = v33;
    }

    (*(*v10 + 16))(v10, v16);
    v12 = (*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
    __p = 0uLL;
    v27 = 0;
    sub_100A95200(v12, &v30, &v33, 0, &__p);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p);
    }

    v13 = *v8;
    v14[1] = 0;
    v15 = 0;
    v14[0] = 0;
    (*(*v13 + 40))(v13, v14);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(v14[0]);
    }

    sub_10072F354(a1);
  }

  v11 = *(a1 + 32);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Invalid web request", &__p, 2u);
  }

  sub_1000DD0AC(&v30, v31);
  if (buf[24] == 1 && buf[23] < 0)
  {
    operator delete(*buf);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }
}

void sub_10072D2DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, char a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a22)
  {
    std::__shared_weak_count::__release_weak(a22);
  }

  if (v52)
  {
    std::__shared_weak_count::__release_weak(v52);
  }

  sub_1000DD0AC(v53 - 144, *(v53 - 136));
  if (*(v53 - 72) == 1 && *(v53 - 73) < 0)
  {
    operator delete(*(v53 - 96));
  }

  if (*(v53 - 97) < 0)
  {
    operator delete(*(v53 - 120));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10072D450@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  *v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  memset(v49, 0, sizeof(v49));
  v47 = 0u;
  sub_10000C320(&v47);
  v4 = *(a1 + 256);
  for (i = *(a1 + 264); v4 != i; v4 += 24)
  {
    v6 = sub_10000C030(&v48);
    sub_10000C030(v6);
  }

  v44 = 0;
  v45 = 0;
  v46 = 0;
  sub_100A97768(a1, &v44);
  std::operator+<char>();
  v7 = std::string::append(&v37, "/bot?id=", 8uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (v46 >= 0)
  {
    v9 = &v44;
  }

  else
  {
    v9 = v44;
  }

  if (v46 >= 0)
  {
    v10 = HIBYTE(v46);
  }

  else
  {
    v10 = v45;
  }

  v11 = std::string::append(&v38, v9, v10);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v39, "&ho=", 4uLL);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = *(a1 + 183);
  if (v15 >= 0)
  {
    v16 = (a1 + 160);
  }

  else
  {
    v16 = *(a1 + 160);
  }

  if (v15 >= 0)
  {
    v17 = *(a1 + 183);
  }

  else
  {
    v17 = *(a1 + 168);
  }

  v18 = std::string::append(&v40, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v22 = *(a1 + 184);
  v21 = a1 + 184;
  v20 = v22;
  v23 = *(v21 + 23);
  if (v23 >= 0)
  {
    v24 = v21;
  }

  else
  {
    v24 = v20;
  }

  if (v23 >= 0)
  {
    v25 = *(v21 + 23);
  }

  else
  {
    v25 = *(v21 + 8);
  }

  v26 = std::string::append(&v41, v24, v25);
  v27 = *&v26->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  sub_100061574(&v47, __p);
  if ((v36 & 0x80u) == 0)
  {
    v28 = __p;
  }

  else
  {
    v28 = __p[0];
  }

  if ((v36 & 0x80u) == 0)
  {
    v29 = v36;
  }

  else
  {
    v29 = __p[1];
  }

  v30 = std::string::append(&v42, v28, v29);
  v31 = *&v30->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v43, "&v=3", 4uLL);
  *a2 = *v32;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(v44);
  }

  *&v48 = v33;
  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50[1]);
  }

  std::locale::~locale(v49);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10072D880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, void *__p, uint64_t a57, int a58, __int16 a59, char a60, char a61, void *a62, uint64_t a63)
{
  if (a61 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a67 < 0)
  {
    operator delete(a62);
  }

  sub_10068C9D8(&a68);
  _Unwind_Resume(a1);
}

void sub_10072D970(os_log_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  object = 0;
  v7 = 0;
  sub_100B310C4(a1, a2, a3, &object);
  if (v7 == 1)
  {
    v5 = object;
    if (object)
    {
      xpc_retain(object);
    }

    else
    {
      v5 = xpc_null_create();
    }

    sub_1007355B0(&v5, a4);
    xpc_release(v5);
    v5 = 0;
    if (v7)
    {
      xpc_release(object);
    }
  }

  else
  {
    *a4 = 0;
    a4[24] = 0;
  }
}

void sub_10072DA10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11)
{
  xpc_release(object);
  sub_1001A8028(&a11);
  _Unwind_Resume(a1);
}

const void **sub_10072DA38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const std::string *a3@<X2>, uint64_t a4@<X3>, const std::string *a5@<X4>, void *a6@<X8>)
{
  a6[2] = 0;
  a6[1] = 0;
  *a6 = a6 + 1;
  v11 = *(a2 + 208);
  sub_10000501C(&__p, "X-3GPP-Intended-Identity");
  __str.__r_.__value_.__r.__words[0] = &__p;
  v12 = sub_100416DA4(a6, &__p);
  std::string::operator=((v12 + 56), v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_10000501C(&__p, "User-Agent");
  __str.__r_.__value_.__r.__words[0] = &__p;
  v13 = sub_100416DA4(a6, &__p);
  if (*(v13 + 79) < 0)
  {
    *(v13 + 64) = 8;
    v14 = *(v13 + 56);
  }

  else
  {
    v14 = (v13 + 56);
    *(v13 + 79) = 8;
  }

  strcpy(v14, "3gpp-gba");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (a3[1].__r_.__value_.__s.__data_[0] == 1)
  {
    sub_10000501C(&__p, "Authorization");
    __str.__r_.__value_.__r.__words[0] = &__p;
    v15 = sub_100416DA4(a6, &__p);
    std::string::operator=((v15 + 56), a3);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v16 = *(a1 + 8);
    v40 = *a1;
    v41 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100A94AFC(&v40, &__p);
    sub_10000501C(&__str, "Date");
    v36.__r_.__value_.__r.__words[0] = &__str;
    v17 = sub_100416DA4(a6, &__str);
    v18 = v17;
    if (*(v17 + 79) < 0)
    {
      operator delete(*(v17 + 56));
    }

    *(v18 + 56) = __p;
    *(&__p.__r_.__value_.__s + 23) = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (v41)
    {
      sub_100004A34(v41);
    }

    sub_10000501C(&__p, "Accept");
    __str.__r_.__value_.__r.__words[0] = &__p;
    v19 = sub_100416DA4(a6, &__p);
    if (*(v19 + 79) < 0)
    {
      *(v19 + 64) = 3;
      v20 = *(v19 + 56);
    }

    else
    {
      v20 = (v19 + 56);
      *(v19 + 79) = 3;
    }

    *v20 = 2764586;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  anURL = 0;
  v21 = *(a4 + 23);
  if (v21 >= 0)
  {
    v22 = a4;
  }

  else
  {
    v22 = *a4;
  }

  if (v21 >= 0)
  {
    v23 = *(a4 + 23);
  }

  else
  {
    v23 = *(a4 + 8);
  }

  v24 = CFURLCreateWithBytes(kCFAllocatorDefault, v22, v23, 0x8000100u, 0);
  v37 = 0;
  anURL = v24;
  if (v24)
  {
    v25 = CFURLCopyHostName(v24);
    v26 = v37;
    v37 = v25;
    __p.__r_.__value_.__r.__words[0] = v26;
    sub_100005978(&__p.__r_.__value_.__l.__data_);
    v27 = CFURLGetPortNumber(anURL);
    if (v37)
    {
      v28 = v27;
      memset(&__str, 0, sizeof(__str));
      memset(&__p, 0, sizeof(__p));
      ctu::cf::assign();
      __str = __p;
      if (v28 != -1)
      {
        std::to_string(&v36, v28);
        v29 = std::string::insert(&v36, 0, ":", 1uLL);
        v30 = *&v29->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v30;
        v29->__r_.__value_.__l.__size_ = 0;
        v29->__r_.__value_.__r.__words[2] = 0;
        v29->__r_.__value_.__r.__words[0] = 0;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(&__str, p_p, size);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v36.__r_.__value_.__l.__data_);
        }
      }

      sub_10000501C(&__p, "Host");
      v36.__r_.__value_.__r.__words[0] = &__p;
      v33 = sub_100416DA4(a6, &__p);
      std::string::operator=((v33 + 56), &__str);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }
  }

  if (a5[1].__r_.__value_.__s.__data_[0] == 1)
  {
    sub_10000501C(&__p, "If-None-Match");
    __str.__r_.__value_.__r.__words[0] = &__p;
    v34 = sub_100416DA4(a6, &__p);
    std::string::operator=((v34 + 56), a5);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  sub_100005978(&v37);
  return sub_1002030AC(&anURL);
}

void sub_10072DED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, const void *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  sub_100005978(&a16);
  sub_1002030AC(&a17);
  sub_1000DD0AC(v32, *(v32 + 8));
  _Unwind_Resume(a1);
}

void sub_10072E00C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (*(a1 + 40))
      {
        v8 = *(v5 + 208);
        if (v8)
        {
          *(v5 + 208) = 0;
          (*(*v8 + 8))(v8);
        }

        v9 = *a2;
        if (*a2)
        {
          v10 = a2[1];
          v12[0] = v9;
          v12[1] = v10;
          if (v10)
          {
            atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_10072E134(v5, (a1 + 56), v12);
          if (v10)
          {
            sub_100004A34(v10);
          }
        }

        else
        {
          v11 = *(v5 + 32);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Invalid response received", buf, 2u);
          }
        }
      }

      sub_100004A34(v7);
    }
  }
}

void sub_10072E114(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

void sub_10072E134(uint64_t a1, const std::string *a2, void *a3)
{
  v6 = (*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
  v7 = a3[1];
  v63 = *a3;
  v64 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100A96920(v6, &v63, a2);
  if (v64)
  {
    sub_100004A34(v64);
  }

  v8 = (*(**a3 + 24))();
  v9 = (*(**a3 + 32))();
  (*(**a3 + 48))(&v60);
  v10 = *(*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v62;
    if ((v62 & 0x80u) != 0)
    {
      v11 = v61;
    }

    *buf = 67109632;
    v80 = v8;
    v81 = 2048;
    v82 = v9;
    v83 = 2048;
    v84 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Received HTTP response: %d, client error: %ld, body length: %zu", buf, 0x1Cu);
  }

  v12 = *(a1 + 104);
  if (v12)
  {
    v13 = std::__shared_weak_count::lock(v12);
    if (v13)
    {
      v14 = *(a1 + 96);
      if (v14)
      {
        if (v8 > 400)
        {
          if (v8 == 404)
          {
            v20 = (*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
            if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
            {
              sub_10177C6BC();
            }

            goto LABEL_29;
          }

          if (v8 == 401 && ((*(**(a1 + 160) + 8))(*(a1 + 160), *(a1 + 48)) & 1) == 0)
          {
            v21 = *(*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Received 401 response. Starting GBA auth...", buf, 2u);
            }

            v22 = a3[1];
            v59[0] = *a3;
            v59[1] = v22;
            if (v22)
            {
              atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            sub_1007305F4(a1, a2, v59);
            if (v22)
            {
              sub_100004A34(v22);
            }

            goto LABEL_110;
          }
        }

        else
        {
          if (v8 == 200)
          {
            bzero(buf, 0x348uLL);
            if (v9)
            {
              goto LABEL_31;
            }

            v23 = v62;
            if ((v62 & 0x80u) != 0)
            {
              v23 = v61;
            }

            if (!v23)
            {
LABEL_31:
              v19 = (*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
              if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
              {
                sub_10177C6F0();
              }

              sub_1006FB24C(v71, (a1 + 216));
              v74 = 0;
              v73 = 0;
              v75 = 0;
              sub_1007321B4(&v73, *(a1 + 328), *(a1 + 336), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 336) - *(a1 + 328)) >> 3));
              v76 = 2;
              v77 = 1;
              v78[0] = 0;
              v78[688] = 0;
              sub_100731394(buf, v71);
              sub_100732330(v71);
            }

            else
            {
              (*(**a3 + 56))(&v57);
              bzero(__p, 0x2B8uLL);
              v24 = (*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
              sub_1007E248C((a1 + 80), v24, &v60, __p);
              v25 = *(*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                if (v56)
                {
                  v26 = "OK";
                }

                else
                {
                  v26 = "Failed";
                }

                *v71 = 136315138;
                *&v71[4] = v26;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I JSON parsing status: %s", v71, 0xCu);
              }

              sub_10000501C(v71, "Cache-Control");
              v27 = sub_10038F068(&v57, v71);
              if (SHIBYTE(v72) < 0)
              {
                operator delete(*v71);
              }

              if (&v58 != v27)
              {
                v67 = 0u;
                v68 = 0u;
                *&v65[0].__locale_ = 0u;
                v66 = 0u;
                sub_1001C7FB0(v65, ".*max-age.*?(\\d+).*", 0);
              }

              v28 = 86400;
              memset(v71, 0, sizeof(v71));
              v72 = 0;
              sub_10000501C(v65, "Cache-Control");
              v29 = sub_100732A58(&v57, v65);
              if (*(v29 + 23) < 0)
              {
                sub_100005F2C(v71, *v29, *(v29 + 8));
              }

              else
              {
                v30 = *v29;
                v72 = *(v29 + 16);
                *v71 = v30;
              }

              if (SBYTE7(v66) < 0)
              {
                operator delete(v65[0].__locale_);
              }

              sub_10000501C(v65, "Date");
              v31 = sub_100732A58(&v57, v65);
              sub_10000501C(&v69, "%a, %d %b %Y %H:%M:%S %Z");
              v32 = sub_100A94FE4(v31);
              if (v70 < 0)
              {
                operator delete(v69.__vftable);
              }

              if (SBYTE7(v66) < 0)
              {
                operator delete(v65[0].__locale_);
              }

              sub_10000501C(v65, "Expires");
              v33 = sub_100732A58(&v57, v65);
              sub_10000501C(&v69, "%a, %d %b %Y %H:%M:%S %Z");
              v34 = sub_100A94FE4(v33);
              if (v70 < 0)
              {
                operator delete(v69.__vftable);
              }

              if (SBYTE7(v66) < 0)
              {
                operator delete(v65[0].__locale_);
              }

              v35 = v34 - v32;
              if (v34 <= v32 || v35 >= 86400)
              {
                v38 = 0;
                v37 = 0;
                v36 = 1;
              }

              else
              {
                v36 = 0;
                v37 = v35 & 0xFFFFFFFFFFFFFF00;
                v38 = v35;
              }

              if (SHIBYTE(v72) < 0)
              {
                operator delete(*v71);
              }

              if (!v36)
              {
                v28 = v37 | v38;
              }

              memset(v71, 0, sizeof(v71));
              v72 = 0;
              sub_10000501C(v65, "Etag");
              v39 = sub_100732A58(&v57, v65);
              if (*(v39 + 23) < 0)
              {
                sub_100005F2C(v71, *v39, *(v39 + 8));
              }

              else
              {
                v40 = *v39;
                v72 = *(v39 + 16);
                *v71 = v40;
              }

              if (SBYTE7(v66) < 0)
              {
                operator delete(v65[0].__locale_);
              }

              if (SHIBYTE(v72) < 0)
              {
                sub_100005F2C(v43, *v71, *&v71[8]);
                v45 = 1;
                if (SHIBYTE(v72) < 0)
                {
                  operator delete(*v71);
                }
              }

              else
              {
                *v43 = *v71;
                v44 = v72;
                v45 = 1;
              }

              sub_100730D6C(a1, a1 + 216, &v60, v28, v43);
              if (v45 == 1 && SHIBYTE(v44) < 0)
              {
                operator delete(v43[0]);
              }

              sub_1006FB24C(v71, (a1 + 216));
              v74 = 0;
              v73 = 0;
              v75 = 0;
              sub_1007321B4(&v73, *(a1 + 328), *(a1 + 336), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 336) - *(a1 + 328)) >> 3));
              LOBYTE(v76) = 0;
              v77 = 0;
              sub_100732A9C(v78, __p);
              sub_100731394(buf, v71);
              sub_100732330(v71);
              if (v56 == 1)
              {
                if (v55 == 1 && v54 < 0)
                {
                  operator delete(v53);
                }

                if (v52 < 0)
                {
                  operator delete(v51);
                }

                if (v50 < 0)
                {
                  operator delete(v49);
                }

                if (v48[24] == 1)
                {
                  *v71 = v48;
                  sub_100191E28(v71);
                }

                sub_1006FA044(__p);
              }

              sub_1000DD0AC(&v57, v58);
            }

            (*(*v14 + 88))(v14, *(a1 + 48), buf);
            goto LABEL_109;
          }

          if (v8 == 304)
          {
            v15 = *(*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Searching complete with response: 304", buf, 2u);
            }

            bzero(buf, 0x348uLL);
            sub_1006FB24C(buf, (a1 + 216));
            v86 = 0;
            v85 = 0;
            v87 = 0;
            sub_1007321B4(&v85, *(a1 + 328), *(a1 + 336), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 336) - *(a1 + 328)) >> 3));
            LOBYTE(v88) = 0;
            v89 = 0;
            v90 = 0;
            v91 = 0;
            v16 = *(a1 + 112);
            if (*(a1 + 239) < 0)
            {
              sub_100005F2C(v41, *(a1 + 216), *(a1 + 224));
            }

            else
            {
              *v41 = *(a1 + 216);
              v42 = *(a1 + 232);
            }

            sub_100732108(v71, v41);
            sub_10000501C(__p, "etag");
            sub_100B31008(v16, v71, __p);
            if (v47 < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v72) < 0)
            {
              operator delete(*v71);
            }

            if (SHIBYTE(v42) < 0)
            {
              operator delete(v41[0]);
            }

            (*(*v14 + 88))(v14, *(a1 + 48), buf);
            goto LABEL_109;
          }
        }

        v18 = *(*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_10177C724(v8, v18);
        }

LABEL_29:
        bzero(buf, 0x348uLL);
        sub_1006FB24C(buf, (a1 + 216));
        v86 = 0;
        v85 = 0;
        v87 = 0;
        sub_1007321B4(&v85, *(a1 + 328), *(a1 + 336), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 336) - *(a1 + 328)) >> 3));
        v88 = 3;
        v89 = 1;
        v90 = 0;
        v91 = 0;
        (*(*v14 + 88))(v14, *(a1 + 48), buf);
LABEL_109:
        sub_100732330(buf);
        sub_10073006C(a1);
LABEL_110:
        sub_100004A34(v13);
        goto LABEL_111;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  v17 = (*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
  if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
  {
    sub_10177C79C();
  }

  if (v13)
  {
    goto LABEL_110;
  }

LABEL_111:
  if (v62 < 0)
  {
    operator delete(v60);
  }
}

void sub_10072EF58(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  v11 = STACK[0x3F0];
  if (STACK[0x3F0])
  {
    STACK[0x3F8] = v11;
    operator delete(v11);
  }

  sub_1001C3924(&STACK[0x380]);
  sub_1006F9FAC(va);
  sub_1000DD0AC(&STACK[0x2F8], STACK[0x300]);
  sub_100732330(&STACK[0x740]);
  sub_100004A34(v9);
  if (SLOBYTE(STACK[0x337]) < 0)
  {
    operator delete(STACK[0x320]);
  }

  _Unwind_Resume(a1);
}

char *sub_10072F284(char *result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 5) = *(a2 + 40);
  *(result + 6) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    return sub_100005F2C(result + 56, *(a2 + 56), *(a2 + 64));
  }

  v3 = *(a2 + 56);
  *(result + 9) = *(a2 + 72);
  *(result + 56) = v3;
  return result;
}

void sub_10072F2E8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10072F300(uint64_t a1)
{
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

void sub_10072F354(uint64_t a1)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    *(a1 + 208) = 0;
    (*(*v2 + 8))(v2);
  }

  Registry::getTimerService(&v6, *(a1 + 80));
  sub_10000501C(v4, "Operation timeout timer");
  sub_100004AA0(&v9, a1);
  v3 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v3);
  }

  *__p = *v4;
  v8 = v5;
  v4[0] = 0;
  v4[1] = 0;
  v5 = 0;
  v11 = 0;
  operator new();
}

void sub_10072F560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  sub_10002B644(&a24);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(a1);
}

void sub_10072F5CC(uint64_t a1, uint64_t a2)
{
  v4 = *(*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a1 + 216);
    if (*(a1 + 239) < 0)
    {
      v5 = *v5;
    }

    LODWORD(buf) = 136446210;
    *(&buf + 4) = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Starting Web search: [%{public}s] (with auth)", &buf, 0xCu);
  }

  buf = 0u;
  v38 = 0u;
  v6 = *(a1 + 112);
  if (*(a1 + 239) < 0)
  {
    sub_100005F2C(&__dst, *(a1 + 216), *(a1 + 224));
  }

  else
  {
    __dst = *(a1 + 216);
    v35 = *(a1 + 232);
  }

  sub_100732108(&v36, &__dst);
  sub_10000501C(&v31, "etag");
  sub_10072D970(v6, &v36, &v31, &buf);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v31);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(__dst);
  }

  memset(&v36, 0, sizeof(v36));
  sub_10072D450(a1 + 216, &v36);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v7 = *(a1 + 88);
  v30[0] = *(a1 + 80);
  v30[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&v28, *a2, *(a2 + 8));
  }

  else
  {
    v28 = *a2;
  }

  v29 = 1;
  sub_10006F264(&__p, &buf);
  sub_10072DA38(v30, a1 + 216, &v28, &v36, &__p, &v31);
  if (v27 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v29 == 1 && SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }

  if (!*(a1 + 176))
  {
    v14 = *(*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_50;
    }

    *v20 = 0;
    v15 = "#I No previous request...";
    goto LABEL_43;
  }

  v8 = *(a1 + 184);
  v24 = *(a1 + 176);
  v25 = v8;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  ctu::Http::HttpRequest::create();
  v9 = *(a1 + 200);
  *(a1 + 192) = *v20;
  v10 = (a1 + 192);
  memset(v20, 0, sizeof(v20));
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (v25)
  {
    sub_100004A34(v25);
  }

  if (*v10)
  {
    sub_100A99478(*(a1 + 48), (a1 + 80), (a1 + 192));
    (*(**v10 + 96))(30.0);
    (*(**v10 + 208))(*v10, 1);
    (*(**(a1 + 192) + 8))(*(a1 + 192), *(a1 + 16));
    sub_100004AA0(v20, a1);
    v12 = *v20;
    v11 = *&v20[8];
    if (*&v20[8])
    {
      atomic_fetch_add_explicit((*&v20[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
    }

    v13 = *(a1 + 192);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 1174405120;
    v22[2] = sub_10072FD14;
    v22[3] = &unk_101E770F8;
    v22[4] = a1;
    v22[5] = v12;
    v22[6] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v23, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
    }

    else
    {
      v23 = v36;
    }

    (*(*v13 + 16))(v13, v22);
    v16 = (*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
    memset(v20, 0, sizeof(v20));
    v21 = 0;
    sub_100A95200(v16, &v31, &v36, 0, v20);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(*v20);
    }

    v17 = *v10;
    v18[1] = 0;
    v19 = 0;
    v18[0] = 0;
    (*(*v17 + 40))(v17, v18);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(v18[0]);
    }

    sub_10072F354(a1);
  }

  v14 = *(a1 + 32);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    v15 = "#I Invalid web request";
LABEL_43:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, v20, 2u);
  }

LABEL_50:
  sub_1000DD0AC(&v31, v32);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (BYTE8(v38) == 1 && SBYTE7(v38) < 0)
  {
    operator delete(buf);
  }
}

void sub_10072FB9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, char a51)
{
  if (a29)
  {
    std::__shared_weak_count::__release_weak(a29);
  }

  if (v51)
  {
    std::__shared_weak_count::__release_weak(v51);
  }

  sub_1000DD0AC(v52 - 168, *(v52 - 160));
  if (*(v52 - 97) < 0)
  {
    operator delete(*(v52 - 120));
  }

  if (*(v52 - 72) == 1 && *(v52 - 73) < 0)
  {
    operator delete(*(v52 - 96));
  }

  _Unwind_Resume(a1);
}

void sub_10072FD14(void *a1, uint64_t *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v8 = *(v5 + 208);
        if (v8)
        {
          *(v5 + 208) = 0;
          (*(*v8 + 8))(v8);
        }

        v9 = *a2;
        if (*a2)
        {
          v10 = a2[1];
          v12[0] = v9;
          v12[1] = v10;
          if (v10)
          {
            atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_10072E134(v5, a1 + 7, v12);
          if (v10)
          {
            sub_100004A34(v10);
          }
        }

        else
        {
          v11 = *(v5 + 32);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Invalid response received", buf, 2u);
          }
        }
      }

      sub_100004A34(v7);
    }
  }
}

void sub_10072FE1C(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

void sub_10072FE3C(uint64_t a1)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    *(a1 + 208) = 0;
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 176))
  {
    v3 = *(a1 + 184);
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    if (v3)
    {
      sub_100004A34(v3);
    }
  }

  v4 = *(a1 + 104);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(a1 + 96);
      if (v6)
      {
        v7 = (*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
        {
          sub_10177C7D0();
        }

        sub_10073006C(a1);
        bzero(__dst, 0x348uLL);
        sub_1006FB24C(__dst, (a1 + 216));
        memset(v10, 0, sizeof(v10));
        sub_1007321B4(v10, *(a1 + 328), *(a1 + 336), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 336) - *(a1 + 328)) >> 3));
        v11 = 2;
        v12 = 1;
        v13 = 0;
        v14 = 0;
        (*(*v6 + 88))(v6, *(a1 + 48), __dst);
        sub_100732330(__dst);
        goto LABEL_15;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = (*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
  {
    sub_10177C804();
    if (!v5)
    {
      return;
    }
  }

  else if (!v5)
  {
    return;
  }

LABEL_15:
  sub_100004A34(v5);
}

void sub_100730024(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100732330(va);
  sub_100004A34(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10073006C(uint64_t a1)
{
  (***(a1 + 160))(*(a1 + 160), *(a1 + 48));
  v2 = *(a1 + 184);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 200);
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  if (v3)
  {
    sub_100004A34(v3);
  }

  result = *(a1 + 208);
  *(a1 + 208) = 0;
  if (result)
  {
    v5 = *(*result + 8);

    return v5();
  }

  return result;
}

void sub_100730120(uint64_t a1, int a2, void **a3, uint64_t a4)
{
  v8 = *(*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = (a1 + 216);
    if (*(a1 + 239) < 0)
    {
      v9 = *v9;
    }

    v10 = CSIBOOLAsString(a2);
    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    *buf = 136446978;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = v10;
    *&buf[22] = 2082;
    v21 = v11;
    v22 = 2112;
    v23 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I GBA Auth status for:[%{public}s] : [%s][%{public}s], lifetime:%@", buf, 0x2Au);
  }

  if (a2)
  {
    *buf = a1;
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(&buf[8], *a3, a3[1]);
    }

    else
    {
      *&buf[8] = *a3;
      v21 = a3[2];
    }

    v19[0] = 0;
    v19[1] = 0;
    sub_100004AA0(v19, a1);
    operator new();
  }

  v12 = *(*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I GBA auth failure", buf, 2u);
  }

  if (*(a1 + 152) == 1)
  {
    v13 = *(*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Resetting existing auth parameters and trying again.", buf, 2u);
    }

    if (*(a1 + 152) == 1)
    {
      if (*(a1 + 151) < 0)
      {
        operator delete(*(a1 + 128));
      }

      *(a1 + 152) = 0;
    }

    (***(a1 + 160))(*(a1 + 160), *(a1 + 48));
    sub_10072CD4C(a1);
  }

  else
  {
    v14 = *(a1 + 104);
    if (v14)
    {
      v15 = std::__shared_weak_count::lock(v14);
      if (v15)
      {
        v16 = v15;
        v17 = *(a1 + 96);
        if (v17)
        {
          v18 = (*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
          if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
          {
            sub_10177C7D0();
          }

          bzero(buf, 0x348uLL);
          sub_1006FB24C(buf, (a1 + 216));
          memset(v24, 0, sizeof(v24));
          sub_1007321B4(v24, *(a1 + 328), *(a1 + 336), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 336) - *(a1 + 328)) >> 3));
          v25 = 2;
          v26 = 1;
          v27 = 0;
          v28 = 0;
          (*(*v17 + 88))(v17, *(a1 + 48), buf);
          sub_100732330(buf);
        }

        sub_100004A34(v16);
      }
    }
  }
}

void sub_1007305A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100732330(va);
  sub_100004A34(v5);
  _Unwind_Resume(a1);
}

uint64_t sub_1007305F4(uint64_t a1, const std::string *a2, void *a3)
{
  v53 = 0;
  memset(v52, 0, sizeof(v52));
  v6 = *(a1 + 88);
  v50 = *(a1 + 80);
  v51 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *a3;
  v7 = a3[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v46 = 0;
  v48 = 0;
  v44 = 0uLL;
  v45 = 0uLL;
  v42 = 0uLL;
  v43 = 0uLL;
  *__str = 0uLL;
  memset(v41, 0, sizeof(v41));
  HIDWORD(v43) = 3;
  memset(v47, 0, sizeof(v47));
  v55[0] = 0;
  v55[1] = 0;
  v56 = 0;
  PersonalityIdFromSlotId();
  ServiceMap = Registry::getServiceMap(v50);
  v10 = ServiceMap;
  if (v11 < 0)
  {
    v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
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
  *&v54 = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, &v54);
  if (!v15)
  {
    v17 = 0;
LABEL_13:
    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    if (!v17)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  v17 = v15[3];
  v16 = v15[4];
  if (!v16)
  {
    goto LABEL_13;
  }

  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v10);
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v16);
  v18 = 0;
  if (!v17)
  {
LABEL_11:
    v52[0] = 0;
    sub_100732424(&v52[8], __str);
    goto LABEL_33;
  }

LABEL_14:
  (**v17)(&v54, v17, v55);
  v19 = v54;
  v54 = 0uLL;
  v20 = __str[1];
  *__str = v19;
  if (v20)
  {
    sub_100004A34(v20);
    if (*(&v54 + 1))
    {
      sub_100004A34(*(&v54 + 1));
    }
  }

  std::string::operator=(v41, (a1 + 448));
  if (&v41[24] != (a1 + 424))
  {
    sub_100008234(&v41[24], *(a1 + 424), *(a1 + 432), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 432) - *(a1 + 424)) >> 3));
  }

  if (*(a1 + 496) == 1)
  {
    *&v54 = kCTDataConnectionServiceTypeInternet;
    sub_10021D11C(v47, &v54);
  }

  std::string::operator=(&v47[1], __str[0]);
  v21 = Registry::getServiceMap(v50);
  v22 = v21;
  if ((v23 & 0x8000000000000000) != 0)
  {
    v24 = (v23 & 0x7FFFFFFFFFFFFFFFLL);
    v25 = 5381;
    do
    {
      v23 = v25;
      v26 = *v24++;
      v25 = (33 * v25) ^ v26;
    }

    while (v26);
  }

  std::mutex::lock(v21);
  v57[0] = v23;
  v27 = sub_100009510(&v22[1].__m_.__sig, v57);
  if (v27)
  {
    v28 = v27[3];
    v29 = v27[4];
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v28 = 0;
    v29 = 0;
  }

  std::mutex::unlock(v22);
  *&v54 = v28;
  *(&v54 + 1) = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v29);
  }

  BYTE4(v44) = sub_100A99CD0(&v54);
  if (*(&v54 + 1))
  {
    sub_100004A34(*(&v54 + 1));
  }

  HIDWORD(v43) = 0;
  std::string::operator=(&v42, a2);
  LOWORD(v48) = (*(*v8 + 80))(v8);
  LODWORD(v44) = 8080;
  v52[0] = 1;
  sub_100732424(&v52[8], __str);
LABEL_33:
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  if (SHIBYTE(v56) < 0)
  {
    operator delete(v55[0]);
  }

  sub_1004F389C(__str);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v51)
  {
    sub_100004A34(v51);
  }

  if (v52[0])
  {
    v30 = *(*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__str[0]) = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I GBA auth will be started...", __str, 2u);
    }

    goto LABEL_54;
  }

  v31 = *(a1 + 104);
  if (!v31)
  {
    v32 = 0;
    goto LABEL_51;
  }

  v32 = std::__shared_weak_count::lock(v31);
  if (!v32 || (v33 = *(a1 + 96)) == 0)
  {
LABEL_51:
    v35 = (*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
    if (os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
    {
      sub_10177C86C();
      if (!v32)
      {
        goto LABEL_54;
      }
    }

    else if (!v32)
    {
LABEL_54:
      v36 = *(a1 + 160);
      v37 = *(a1 + 48);
      (*(**a3 + 56))(__str);
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 0x40000000;
      v39[2] = sub_100730D64;
      v39[3] = &unk_101E77128;
      v39[4] = a1;
      (*(*v36 + 16))(v36, v37, &v52[8], __str, v39);
      sub_1000DD0AC(__str, __str[1]->__r_.__value_.__r.__words);
      return sub_1004F389C(&v52[8]);
    }

    sub_100004A34(v32);
    goto LABEL_54;
  }

  v34 = (*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
  if (os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
  {
    sub_10177C838();
  }

  bzero(__str, 0x348uLL);
  sub_1006FB24C(__str, (a1 + 216));
  v43 = 0uLL;
  *&v44 = 0;
  sub_1007321B4(&v43, *(a1 + 328), *(a1 + 336), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 336) - *(a1 + 328)) >> 3));
  DWORD2(v44) = 3;
  BYTE12(v44) = 1;
  LOBYTE(v45) = 0;
  v49 = 0;
  (*(*v33 + 88))(v33, *(a1 + 48), __str);
  sub_10073006C(a1);
  sub_100732330(__str);
  sub_100004A34(v32);
  return sub_1004F389C(&v52[8]);
}

void sub_100730C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10067AA50(va);
  sub_100004A34(v7);
  sub_1004F389C(v8 | 8);
  _Unwind_Resume(a1);
}

void sub_100730D6C(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4, uint64_t a5)
{
  v10 = *(a1 + 112);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v17 = *(a2 + 16);
  }

  sub_100732108(v18, __dst);
  sub_10000501C(__p, "render_info");
  sub_100730F98(v10, v18, __p, a3, a4, 1);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__dst[0]);
  }

  if (*(a5 + 24) == 1)
  {
    v11 = *(a1 + 112);
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(v12, *a2, *(a2 + 8));
    }

    else
    {
      *v12 = *a2;
      v13 = *(a2 + 16);
    }

    sub_100732108(v18, v12);
    sub_10000501C(__p, "etag");
    if ((*(a5 + 24) & 1) == 0)
    {
      sub_1000D1644();
    }

    sub_100730F98(v11, v18, __p, a5, a4, 1);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }

    if (SHIBYTE(v13) < 0)
    {
      operator delete(v12[0]);
    }
  }
}

void sub_100730F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5, char a6)
{
  v32 = 0;
  sub_100B307AC(a1, a2, &v32);
  if (xpc_get_type(v32) != &_xpc_type_dictionary)
  {
    v22 = 0;
    v12 = xpc_dictionary_create(0, 0, 0);
    v13 = v12;
    if (v12)
    {
      v22 = v12;
    }

    else
    {
      v13 = xpc_null_create();
      v22 = v13;
      if (!v13)
      {
        v14 = xpc_null_create();
        v13 = 0;
        goto LABEL_25;
      }
    }

    if (xpc_get_type(v13) == &_xpc_type_dictionary)
    {
      xpc_retain(v13);
LABEL_26:
      xpc_release(v13);
      if (*(a4 + 23) < 0)
      {
        sub_100005F2C(v18, *a4, *(a4 + 8));
      }

      else
      {
        *v18 = *a4;
        v19 = *(a4 + 16);
      }

      sub_100735C00(a1, v18, a5, a6, &v20);
      if (*(a3 + 23) < 0)
      {
        sub_100005F2C(__p, *a3, *(a3 + 8));
      }

      else
      {
        *__p = *a3;
        v25 = *(a3 + 16);
      }

      v16 = __p;
      if (v25 < 0)
      {
        v16 = __p[0];
      }

      v26 = &v22;
      v27 = v16;
      sub_100DAE90C(&v26, &v20, &v21);
      xpc_release(v21);
      v21 = 0;
      if (SHIBYTE(v25) < 0)
      {
        operator delete(__p[0]);
      }

      xpc_release(v20);
      v20 = 0;
      if (SHIBYTE(v19) < 0)
      {
        operator delete(v18[0]);
      }

      v17 = v22;
      if (v22)
      {
        xpc_retain(v22);
      }

      else
      {
        v17 = xpc_null_create();
      }

      sub_100B30120(a1, a2, &v17);
      xpc_release(v17);
      v17 = 0;
      xpc_release(v22);
      goto LABEL_42;
    }

    v14 = xpc_null_create();
LABEL_25:
    v22 = v14;
    goto LABEL_26;
  }

  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(__dst, *a4, *(a4 + 8));
  }

  else
  {
    *__dst = *a4;
    v29 = *(a4 + 16);
  }

  sub_100735C00(a1, __dst, a5, a6, &v30);
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v25 = *(a3 + 16);
  }

  v15 = __p;
  if (v25 < 0)
  {
    v15 = __p[0];
  }

  v26 = &v32;
  v27 = v15;
  sub_100DAE90C(&v26, &v30, &v31);
  xpc_release(v31);
  v31 = 0;
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v30);
  v30 = 0;
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__dst[0]);
  }

  object = v32;
  if (v32)
  {
    xpc_retain(v32);
  }

  else
  {
    object = xpc_null_create();
  }

  sub_100B30120(a1, a2, &object);
  xpc_release(object);
  object = 0;
LABEL_42:
  xpc_release(v32);
}

void sub_1007312A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, xpc_object_t object, uint64_t a19, xpc_object_t a20, xpc_object_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  xpc_release(*(v33 - 104));
  *(v33 - 104) = 0;
  if (a33 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v33 - 88));
  _Unwind_Resume(a1);
}

uint64_t sub_100731394(uint64_t a1, __int128 *a2)
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
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  *(a1 + 48) = *(a2 + 48);
  sub_10055D990(a1 + 56, (a2 + 56));
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  v6 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 13);
  *(a1 + 88) = v6;
  *(a2 + 111) = 0;
  *(a2 + 88) = 0;
  sub_1007342E4(a1 + 112);
  *(a1 + 112) = a2[7];
  *(a1 + 128) = *(a2 + 16);
  *(a2 + 14) = 0;
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  v7 = *(a2 + 34);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 136) = v7;
  sub_100734324(a1 + 144, (a2 + 9));
  return a1;
}

void sub_10073148C(void *a1, uint64_t a2)
{
  sub_100735130(&v3, a2);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, a1);
  operator new();
}

void sub_100731594(uint64_t a1@<X0>, __int128 *a2@<X1>, BOOL *a3@<X8>)
{
  v23[0] = 0;
  v23[1] = 0;
  v24 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__dst, *a2, *(a2 + 1));
  }

  else
  {
    __dst = *a2;
    v22 = *(a2 + 2);
  }

  sub_100732108(v23, &__dst);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__dst);
  }

  v19[0] = 0;
  v19[1] = 0;
  v20 = 0;
  sub_10000501C(v19, "render_info");
  v17 = 0u;
  v18 = 0u;
  sub_10072D970(*(a1 + 112), v23, v19, &v17);
  if (BYTE8(v18))
  {
    v5 = sub_100B30BE8(*(a1 + 112), v23, v19);
    bzero(v7, 0x2B8uLL);
    if ((BYTE8(v18) & 1) == 0)
    {
      sub_1000D1644();
    }

    v6 = (*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
    sub_1007E248C((a1 + 80), v6, &v17, v7);
    *a3 = (v5 & 0x100) != 0 && (v5 & 1) == 0;
    sub_100732A9C(a3 + 8, v7);
    if (v16 == 1)
    {
      if (v15 == 1 && v14 < 0)
      {
        operator delete(__p);
      }

      if (v12 < 0)
      {
        operator delete(v11);
      }

      if (v10 < 0)
      {
        operator delete(v9);
      }

      if (v8[24] == 1)
      {
        v25 = v8;
        sub_100191E28(&v25);
      }

      sub_1006FA044(v7);
    }

    if ((BYTE8(v18) & 1) != 0 && SBYTE7(v18) < 0)
    {
      operator delete(v17);
    }
  }

  else
  {
    *a3 = 0;
    a3[8] = 0;
    a3[696] = 0;
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }
}

void sub_1007317B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1006F9FAC(va);
  if (*(v2 - 136) == 1 && *(v2 - 137) < 0)
  {
    operator delete(*(v2 - 160));
  }

  if (*(v2 - 97) < 0)
  {
    operator delete(*(v2 - 120));
  }

  if (*(v2 - 41) < 0)
  {
    operator delete(*(v2 - 64));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100731840(uint64_t a1, __int128 *a2)
{
  v4 = *(*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    v7 = 136446210;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Adding operation ID: %{public}s", &v7, 0xCu);
  }

  return sub_100731930((a1 + 328), a2);
}

uint64_t sub_100731930(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_100735390(a1, a2);
  }

  else
  {
    sub_100735330(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void sub_10073197C(uint64_t a1)
{
  v2 = *(*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 152) == 1)
    {
      v3 = (a1 + 128);
      if (*(a1 + 151) < 0)
      {
        v3 = *v3;
      }
    }

    else
    {
      v3 = "(null)";
    }

    *buf = 136446210;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Auth parameters: %{public}s", buf, 0xCu);
  }

  v4 = *(*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 160))
    {
      v5 = "YES";
    }

    else
    {
      v5 = "NO";
    }

    if (*(a1 + 176))
    {
      v6 = "YES";
    }

    else
    {
      v6 = "NO";
    }

    if (*(a1 + 192))
    {
      v7 = "YES";
    }

    else
    {
      v7 = "NO";
    }

    *buf = 136446722;
    *&buf[4] = v5;
    v15 = 2082;
    v16 = v6;
    v17 = 2082;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I GBA helper: %{public}s, Web-req: %{public}s, Web-req auth: %{public}s", buf, 0x20u);
  }

  v8 = *(*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 208))
    {
      v9 = "YES";
    }

    else
    {
      v9 = "NO";
    }

    *buf = 136446210;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Timeout timer: %{public}s", buf, 0xCu);
  }

  v10 = *(*(**(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    sub_100731C54((a1 + 216), buf);
    if (v17 >= 0)
    {
      v11 = buf;
    }

    else
    {
      v11 = *buf;
    }

    v12 = 136446210;
    v13 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Search param: %{public}s", &v12, 0xCu);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(*buf);
    }
  }
}

uint64_t sub_100731C54@<X0>(std::string **a1@<X0>, _BYTE *a2@<X8>)
{
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  *v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  memset(v24, 0, sizeof(v24));
  v22 = 0u;
  sub_10000C320(&v22);
  v4 = sub_10000C030(&v23);
  v5 = sub_10000C030(v4);
  v6 = sub_10000C030(v5);
  v7 = sub_10000C030(v6);
  v8 = sub_10000C030(v7);
  v9 = sub_10000C030(v8);
  v10 = sub_10000C030(v9);
  v11 = sub_10000C030(v10);
  v12 = sub_10000C030(v11);
  sub_1000D1184(a1[26], a1[27], ",", 1uLL, &v21);
  v13 = sub_10000C030(v12);
  v14 = sub_10000C030(v13);
  v15 = sub_10000C030(v14);
  v16 = sub_10000C030(v15);
  sub_1000D1184(a1[32], a1[33], ",", 1uLL, &__p);
  v17 = sub_10000C030(v16);
  sub_10000C030(v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  sub_100061574(&v22, a2);
  *&v23 = v18;
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[1]);
  }

  std::locale::~locale(v24);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100731FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_10068C9D8(&a21);
  _Unwind_Resume(a1);
}

uint64_t sub_100732020(uint64_t a1)
{
  v3 = (a1 + 256);
  sub_1000087B4(&v3);
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  v3 = (a1 + 208);
  sub_1000087B4(&v3);
  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v3 = (a1 + 112);
  sub_10005AAF8(&v3);
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 80) == 1)
  {
    v3 = (a1 + 56);
    sub_1000087B4(&v3);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_100732108(void *__dst, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v5 = *(a2 + 16);
  }

  if (SHIBYTE(v5) < 0)
  {
    sub_100005F2C(__dst, __p[0], __p[1]);
    if (SHIBYTE(v5) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *__dst = *__p;
    __dst[2] = v5;
  }

  return __dst;
}

void sub_100732198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007321B4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10008E2D0(result, a4);
  }

  return result;
}

void sub_10073221C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10005AAF8(&a9);
  _Unwind_Resume(a1);
}

char *sub_10073223C(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_100005F2C(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  LOBYTE(v10) = 1;
  sub_1007322F8(v9);
  return v4;
}

uint64_t sub_1007322F8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000D46BC(a1);
  }

  return a1;
}

uint64_t sub_100732330(uint64_t a1)
{
  if (*(a1 + 832) == 1)
  {
    if (*(a1 + 824) == 1 && *(a1 + 823) < 0)
    {
      operator delete(*(a1 + 800));
    }

    if (*(a1 + 799) < 0)
    {
      operator delete(*(a1 + 776));
    }

    if (*(a1 + 775) < 0)
    {
      operator delete(*(a1 + 752));
    }

    if (*(a1 + 736) == 1)
    {
      v3 = (a1 + 712);
      sub_100191E28(&v3);
    }

    sub_1006FA044(a1 + 144);
  }

  v3 = (a1 + 112);
  sub_10005AAF8(&v3);
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 80) == 1)
  {
    v3 = (a1 + 56);
    sub_1000087B4(&v3);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100732424(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 39) < 0)
  {
    sub_100005F2C((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v5 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v5;
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_10004EFD0(a1 + 40, *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
  sub_10006F264(a1 + 64, (a2 + 64));
  if (*(a2 + 119) < 0)
  {
    sub_100005F2C((a1 + 96), *(a2 + 96), *(a2 + 104));
  }

  else
  {
    v6 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v6;
  }

  v7 = *(a2 + 120);
  *(a1 + 125) = *(a2 + 125);
  *(a1 + 120) = v7;
  sub_10006F264(a1 + 136, (a2 + 136));
  sub_10005C7A4((a1 + 168), (a2 + 168));
  if (*(a2 + 199) < 0)
  {
    sub_100005F2C((a1 + 176), *(a2 + 176), *(a2 + 184));
  }

  else
  {
    v8 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 176) = v8;
  }

  *(a1 + 200) = *(a2 + 200);
  return a1;
}

void sub_100732554(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978((v2 + 168));
  if (*(v2 + 160) == 1 && *(v2 + 159) < 0)
  {
    operator delete(*(v2 + 136));
  }

  if (*(v2 + 119) < 0)
  {
    operator delete(*(v2 + 96));
  }

  if (*(v2 + 88) == 1 && *(v2 + 87) < 0)
  {
    operator delete(*(v2 + 64));
  }

  sub_1000087B4(va);
  if (*(v2 + 39) < 0)
  {
    operator delete(*(v2 + 16));
  }

  v4 = *(v2 + 8);
  if (v4)
  {
    sub_100004A34(v4);
  }

  _Unwind_Resume(a1);
}

void *sub_100732600@<X0>(void *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 3) <= a2)
  {
    v3 = (result + 3);
  }

  else
  {
    v3 = *result + 24 * a2;
  }

  if (*(v3 + 16) == 1)
  {
    return sub_1001CD6B4(a3, *v3, *(v3 + 8), *(v3 + 8) - *v3);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_100732654(unsigned __int8 **a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    return 0;
  }

  v18[3] = v2;
  v18[4] = v3;
  v18[0] = 0;
  v7 = *v5;
  if (v7 == 45 || v7 == 43)
  {
    *a1 = ++v5;
  }

  v13[0] = 0;
  v14 = 1;
  v15 = v18;
  v16 = v5;
  v17 = v4;
  v8 = sub_1007326F8(v13);
  v9 = v18[0];
  if (v18[0] >= 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (v18[0] < 0x8000000000000001)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  if (v7 == 45)
  {
    v9 = -v18[0];
    result = v11;
  }

  else
  {
    result = v10;
  }

  *a2 = v9;
  return result;
}

uint64_t sub_1007326F8(uint64_t a1)
{
  v2 = *(a1 + 24);
  v1 = *(a1 + 32);
  *(a1 + 32) = v1 - 1;
  v3 = *(a1 + 16);
  *v3 = 0;
  if (v2 <= v1 - 1)
  {
    v4 = *(v1 - 1);
    if ((v4 - 58) >= 0xF6u)
    {
      *v3 = (v4 - 48);
      *(a1 + 32) = v1 - 2;
      v30.__locale_ = 0;
      std::locale::locale(&v30);
      v7 = std::locale::classic();
      if (std::locale::operator==(&v30, v7))
      {
        v5 = sub_1007329A4(a1);
LABEL_39:
        std::locale::~locale(&v30);
        return v5;
      }

      v8 = std::locale::use_facet(&v30, &std::numpunct<char>::id);
      (v8->__vftable[1].__on_zero_shared)(&__p);
      v9 = v29;
      if ((v29 & 0x8000000000000000) != 0)
      {
        v9 = v28;
        if (!v28)
        {
          goto LABEL_36;
        }

        p_p = __p;
      }

      else
      {
        if (!v29)
        {
          goto LABEL_36;
        }

        p_p = &__p;
      }

      if (*p_p >= 1)
      {
        v11 = (v8->__vftable[1].~facet_0)(v8);
        v12 = *(a1 + 24);
        v13 = *(a1 + 32);
        if (v13 >= v12)
        {
          v14 = 0;
          v15 = __p;
          if (v29 >= 0)
          {
            v15 = &__p;
          }

          v16 = *v15 - 1;
          do
          {
            if (v16)
            {
              v17 = *(a1 + 8);
              v18 = *a1 | (v17 > 0x1999999999999999);
              *a1 = v18;
              v19 = 10 * v17;
              *(a1 + 8) = v19;
              v20 = *v13;
              if ((v20 - 58) < 0xF6u)
              {
                goto LABEL_41;
              }

              v21 = v20 - 48;
              v22 = v19 * (v20 - 48);
              if (v21)
              {
                if (v18)
                {
                  goto LABEL_41;
                }

                if (!is_mul_ok(v21, v19))
                {
                  goto LABEL_41;
                }

                v23 = *(a1 + 16);
                v24 = *v23;
                if (__CFADD__(v22, *v23))
                {
                  goto LABEL_41;
                }
              }

              else
              {
                v23 = *(a1 + 16);
                v24 = *v23;
              }

              *v23 = v24 + v22;
              --v16;
            }

            else
            {
              if (*v13 != v11)
              {
                goto LABEL_36;
              }

              if (v13 == v12)
              {
LABEL_41:
                v5 = 0;
                goto LABEL_37;
              }

              if (v9 - 1 > v14)
              {
                ++v14;
              }

              if (v29 >= 0)
              {
                v25 = &__p;
              }

              else
              {
                v25 = __p;
              }

              v16 = v25[v14];
            }

            *(a1 + 32) = --v13;
          }

          while (v13 >= v12);
        }

        v5 = 1;
        goto LABEL_37;
      }

LABEL_36:
      v5 = sub_1007329A4(a1);
LABEL_37:
      if (v29 < 0)
      {
        operator delete(__p);
      }

      goto LABEL_39;
    }
  }

  return 0;
}

void sub_100732970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_1007329A4(char *a1)
{
  v1 = *(a1 + 3);
  v2 = *(a1 + 4);
  if (v2 < v1)
  {
    return 1;
  }

  v4 = *a1;
  while (1)
  {
    v5 = *(a1 + 1);
    v4 |= v5 > 0x1999999999999999;
    *a1 = v4 & 1;
    v6 = 10 * v5;
    *(a1 + 1) = 10 * v5;
    v7 = *v2;
    if ((v7 - 58) < 0xF6u)
    {
      break;
    }

    v8 = v7 - 48;
    v9 = v6 * (v7 - 48);
    if (v8)
    {
      if (v4)
      {
        return 0;
      }

      if (!is_mul_ok(v8, v6))
      {
        return 0;
      }

      v10 = *(a1 + 2);
      v11 = *v10;
      if (__CFADD__(v9, *v10))
      {
        return 0;
      }
    }

    else
    {
      v10 = *(a1 + 2);
      v11 = *v10;
    }

    *v10 = v11 + v9;
    *(a1 + 4) = --v2;
    if (v2 < v1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_100732A58(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = *sub_1000DFA58(a1, &v4, a2);
  if (!v2)
  {
    sub_1000A58E4("map::at:  key not found");
  }

  return v2 + 56;
}

_BYTE *sub_100732A9C(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[688] = 0;
  if (*(a2 + 688) == 1)
  {
    sub_100732B04(a1, a2);
    a1[688] = 1;
  }

  return a1;
}

void sub_100732AE4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 688) == 1)
  {
    sub_10073425C(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100732B04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100732C24(a1, a2);
  sub_100734148((v4 + 568), a2 + 568);
  *(a1 + 600) = *(a2 + 600);
  if (*(a2 + 631) < 0)
  {
    sub_100005F2C((a1 + 608), *(a2 + 608), *(a2 + 616));
  }

  else
  {
    v5 = *(a2 + 608);
    *(a1 + 624) = *(a2 + 624);
    *(a1 + 608) = v5;
  }

  v6 = (a1 + 632);
  if (*(a2 + 655) < 0)
  {
    sub_100005F2C(v6, *(a2 + 632), *(a2 + 640));
  }

  else
  {
    v7 = *(a2 + 632);
    *(a1 + 648) = *(a2 + 648);
    *v6 = v7;
  }

  sub_10073420C(a1 + 656, (a2 + 656));
  return a1;
}

void sub_100732BC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 631) < 0)
  {
    operator delete(*v3);
  }

  if (*(v2 + 592) == 1)
  {
    sub_100191E28(va);
  }

  sub_1006FA044(v2);
  _Unwind_Resume(a1);
}

char *sub_100732C24(char *a1, uint64_t a2)
{
  v4 = sub_100732DE8(a1, a2);
  sub_10006F264((v4 + 280), (a2 + 280));
  sub_10006F264((a1 + 312), (a2 + 312));
  sub_10006F264((a1 + 344), (a2 + 344));
  sub_10006F264((a1 + 376), (a2 + 376));
  sub_10006F264((a1 + 408), (a2 + 408));
  sub_10006F264((a1 + 440), (a2 + 440));
  sub_10006F264((a1 + 472), (a2 + 472));
  sub_10006F264((a1 + 504), (a2 + 504));
  sub_100733EB4((a1 + 536), a2 + 536);
  return a1;
}

void sub_100732CBC(_Unwind_Exception *a1)
{
  if (*(v1 + 528) == 1 && *(v1 + 527) < 0)
  {
    operator delete(*(v1 + 504));
  }

  if (*(v1 + 496) == 1 && *(v1 + 495) < 0)
  {
    operator delete(*(v1 + 472));
  }

  if (*(v1 + 464) == 1 && *(v1 + 463) < 0)
  {
    operator delete(*(v1 + 440));
  }

  if (*(v1 + 432) == 1 && *(v1 + 431) < 0)
  {
    operator delete(*(v1 + 408));
  }

  if (*(v1 + 400) == 1 && *(v1 + 399) < 0)
  {
    operator delete(*(v1 + 376));
  }

  if (*(v1 + 368) == 1 && *(v1 + 367) < 0)
  {
    operator delete(*(v1 + 344));
  }

  if (*(v1 + 336) == 1 && *(v1 + 335) < 0)
  {
    operator delete(*(v1 + 312));
  }

  sub_1007340F4(v1);
  _Unwind_Resume(a1);
}

void sub_100732DCC()
{
  if (*(v0 + 272) == 1)
  {
    sub_1006FA180(v0);
  }

  JUMPOUT(0x100732DC4);
}

char *sub_100732DE8(char *a1, uint64_t a2)
{
  *a1 = 0;
  a1[272] = 0;
  if (*(a2 + 272) == 1)
  {
    sub_100732E50(a1, a2);
    a1[272] = 1;
  }

  return a1;
}

void sub_100732E30(_Unwind_Exception *exception_object)
{
  if (*(v1 + 272) == 1)
  {
    sub_1006FA180(v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100732E50(char *a1, __int128 *a2)
{
  v4 = sub_100732F80(a1, a2);
  sub_100733394((v4 + 104), a2 + 104);
  sub_100733870((a1 + 136), a2 + 136);
  sub_100733B38(a1 + 168, a2 + 168);
  sub_100733BA0((a1 + 208), (a2 + 13));
  sub_100733BFC((a1 + 240), (a2 + 15));
  return a1;
}

void sub_100732EDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 232) == 1)
  {
    sub_1000087B4(va);
  }

  if (*(v2 + 200) == 1 && *(v2 + 192) == 1 && *(v2 + 191) < 0)
  {
    operator delete(*(v2 + 168));
  }

  if (*(v2 + 160) == 1)
  {
    sub_1006FA290(va);
  }

  if (*(v2 + 128) == 1)
  {
    sub_1006FA34C(va);
  }

  sub_100733E3C(v2);
  _Unwind_Resume(a1);
}

char *sub_100732F80(char *__dst, __int128 *a2)
{
  *__dst = 0;
  __dst[96] = 0;
  if (*(a2 + 96) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__dst, *a2, *(a2 + 1));
    }

    else
    {
      v4 = *a2;
      *(__dst + 2) = *(a2 + 2);
      *__dst = v4;
    }

    if (*(a2 + 47) < 0)
    {
      sub_100005F2C(__dst + 24, *(a2 + 3), *(a2 + 4));
    }

    else
    {
      v5 = *(a2 + 24);
      *(__dst + 5) = *(a2 + 5);
      *(__dst + 24) = v5;
    }

    if (*(a2 + 71) < 0)
    {
      sub_100005F2C(__dst + 48, *(a2 + 6), *(a2 + 7));
    }

    else
    {
      v6 = a2[3];
      *(__dst + 8) = *(a2 + 8);
      *(__dst + 3) = v6;
    }

    *(__dst + 9) = 0;
    *(__dst + 10) = 0;
    *(__dst + 11) = 0;
    sub_1007330C4((__dst + 72), *(a2 + 9), *(a2 + 10), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 10) - *(a2 + 9)) >> 3));
    __dst[96] = 1;
  }

  return __dst;
}

void sub_100733064(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  if (*(v1 + 96) == 1)
  {
    sub_100733328(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007330C4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10073314C(result, a4);
  }

  return result;
}

void sub_10073312C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1006FA290(&a9);
  _Unwind_Resume(a1);
}

void sub_10073314C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_100733198(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_100733198(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1007331F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_10006F264(v4, v6);
      *(v4 + 32) = *(v6 + 32);
      v6 += 40;
      v4 = v11 + 40;
      v11 += 40;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_100733298(v8);
  return v4;
}

uint64_t sub_100733298(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1007332D0(a1);
  }

  return a1;
}

void sub_1007332D0(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = v1;
    v1 -= 5;
    if (*(v3 - 16) == 1 && *(v3 - 17) < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t sub_100733328(uint64_t a1)
{
  v3 = (a1 + 72);
  sub_1006FA290(&v3);
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
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100733394(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_1007333F0(a1, a2);
  return a1;
}

void sub_1007333CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    sub_1006FA34C(&a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1007333F0(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = sub_100733450(result, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 4));
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t sub_100733450(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1007334D8(result, a4);
  }

  return result;
}

void sub_1007334B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1006FA34C(&a9);
  _Unwind_Resume(a1);
}

void sub_1007334D8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    sub_100733524(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_100733524(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_10073357C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2 + 8;
    do
    {
      v7 = v6 - 8;
      *v4 = *(v6 - 8);
      sub_100733634((v4 + 8), v6);
      *(v4 + 72) = *(v6 + 64);
      v4 = v12 + 80;
      v12 += 80;
      v6 += 80;
    }

    while (v7 + 80 != a3);
  }

  LOBYTE(v10) = 1;
  sub_1007337B0(v9);
  return v4;
}

_BYTE *sub_100733634(_BYTE *__dst, __int128 *a2)
{
  *__dst = 0;
  __dst[56] = 0;
  if (*(a2 + 56) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__dst, *a2, *(a2 + 1));
    }

    else
    {
      v4 = *a2;
      *(__dst + 2) = *(a2 + 2);
      *__dst = v4;
    }

    sub_1007336E4((__dst + 24), a2 + 24);
    __dst[56] = 1;
  }

  return __dst;
}

void sub_1007336AC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 56) == 1)
  {
    sub_100733760(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007336E4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_100034C50(a1, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_100733740(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_101760EC4(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100733760(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      *(a1 + 32) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1007337B0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1007337FC(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_1007337FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      if (*(v6 - 16) == 1)
      {
        if (*(v6 - 24) == 1)
        {
          v7 = *(v6 - 48);
          if (v7)
          {
            *(v6 - 40) = v7;
            operator delete(v7);
          }
        }

        if (*(v6 - 49) < 0)
        {
          operator delete(*(v6 - 72));
        }
      }

      v6 -= 80;
    }

    while (v6 != a5);
  }
}

uint64_t sub_100733870(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_1007338CC(a1, a2);
  return a1;
}

void sub_1007338A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    sub_1006FA290(&a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1007338CC(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = sub_10073392C(result, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 3));
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t sub_10073392C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1007339B4(result, a4);
  }

  return result;
}

void sub_100733994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1006FA290(&a9);
  _Unwind_Resume(a1);
}

void sub_1007339B4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_100733A00(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_100733A00(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_100733A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_10006F264(v4, v6);
      *(v4 + 32) = *(v6 + 32);
      v6 += 40;
      v4 = v11 + 40;
      v11 += 40;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_100733B00(v8);
  return v4;
}

uint64_t sub_100733B00(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1007332D0(a1);
  }

  return a1;
}

_BYTE *sub_100733B38(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[32] = 0;
  if (*(a2 + 32) == 1)
  {
    sub_10006F264(a1, a2);
    a1[32] = 1;
  }

  return a1;
}

void sub_100733B80(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    sub_1017618D0(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100733BA0(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_1002219CC(a1, a2);
  return a1;
}

void sub_100733BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    sub_1000087B4(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100733BFC(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_100733C58(a1, a2);
  return a1;
}

void sub_100733C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    sub_1001C6984(&a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100733C58(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = sub_100733CB8(result, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 4));
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t sub_100733CB8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100190468(result, a4);
  }

  return result;
}

void sub_100733D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1001C6984(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100733D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        sub_100005F2C(v8, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        *(v8 + 16) = *(v9 + 2);
        *v8 = v10;
      }

      v11 = a4 + v7;
      v12 = a2 + v7;
      if (*(a2 + v7 + 47) < 0)
      {
        sub_100005F2C((v11 + 24), *(v12 + 24), *(v12 + 32));
      }

      else
      {
        v13 = *(v12 + 24);
        *(v11 + 40) = *(v12 + 40);
        *(v11 + 24) = v13;
      }

      v7 += 48;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_100733DF0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 48;
    v5 = -v2;
    do
    {
      sub_1000DD108(v4);
      v4 -= 48;
      v5 += 48;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100733E3C(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    v3 = (a1 + 72);
    sub_1006FA290(&v3);
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
      operator delete(*a1);
    }
  }

  return a1;
}

uint64_t sub_100733EB4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_100733F10(a1, a2);
  return a1;
}

void sub_100733EEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    sub_1001C6984(&a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100733F10(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = sub_100733F70(result, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 4));
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t sub_100733F70(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100190468(result, a4);
  }

  return result;
}

void sub_100733FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1001C6984(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100733FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        sub_100005F2C(v8, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        *(v8 + 16) = *(v9 + 2);
        *v8 = v10;
      }

      v11 = a4 + v7;
      v12 = a2 + v7;
      if (*(a2 + v7 + 47) < 0)
      {
        sub_100005F2C((v11 + 24), *(v12 + 24), *(v12 + 32));
      }

      else
      {
        v13 = *(v12 + 24);
        *(v11 + 40) = *(v12 + 40);
        *(v11 + 24) = v13;
      }

      v7 += 48;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1007340A8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 48;
    v5 = -v2;
    do
    {
      sub_1000DD108(v4);
      v4 -= 48;
      v5 += 48;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007340F4(uint64_t a1)
{
  if (*(a1 + 304) == 1 && *(a1 + 303) < 0)
  {
    operator delete(*(a1 + 280));
  }

  if (*(a1 + 272) == 1)
  {
    sub_1006FA180(a1);
  }

  return a1;
}

uint64_t sub_100734148(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_1007341A4(a1, a2);
  return a1;
}

void sub_100734180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    sub_100191E28(&a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1007341A4(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = sub_100191BAC(result, *a2, *(a2 + 8), 0xEF7BDEF7BDEF7BDFLL * ((*(a2 + 8) - *a2) >> 3));
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t sub_10073420C(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_10006F35C(a1, a2);
  return a1;
}

void sub_10073423C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_1017633D8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10073425C(uint64_t a1)
{
  if (*(a1 + 680) == 1 && *(a1 + 679) < 0)
  {
    operator delete(*(a1 + 656));
  }

  if (*(a1 + 655) < 0)
  {
    operator delete(*(a1 + 632));
  }

  if (*(a1 + 631) < 0)
  {
    operator delete(*(a1 + 608));
  }

  if (*(a1 + 592) == 1)
  {
    v3 = (a1 + 568);
    sub_100191E28(&v3);
  }

  return sub_1006FA044(a1);
}

void sub_1007342E4(uint64_t a1)
{
  if (*a1)
  {
    sub_10005C234(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_100734324(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 688) == *(a2 + 688))
  {
    if (*(a1 + 688))
    {
      sub_10073454C(a1, a2);
      sub_100734D90(a1 + 568, (a2 + 568));
      *(a1 + 600) = *(a2 + 600);
      v4 = (a1 + 608);
      if (*(a1 + 631) < 0)
      {
        operator delete(*v4);
      }

      v5 = *(a2 + 608);
      *(a1 + 624) = *(a2 + 624);
      *v4 = v5;
      *(a2 + 631) = 0;
      *(a2 + 608) = 0;
      v6 = (a1 + 632);
      if (*(a1 + 655) < 0)
      {
        operator delete(*v6);
      }

      v7 = *(a2 + 632);
      *(a1 + 648) = *(a2 + 648);
      *v6 = v7;
      *(a2 + 655) = 0;
      *(a2 + 632) = 0;
      sub_10016A270(a1 + 656, (a2 + 656));
    }
  }

  else
  {
    if (*(a1 + 688))
    {
      if (*(a1 + 680) == 1 && *(a1 + 679) < 0)
      {
        operator delete(*(a1 + 656));
      }

      if (*(a1 + 655) < 0)
      {
        operator delete(*(a1 + 632));
      }

      if (*(a1 + 631) < 0)
      {
        operator delete(*(a1 + 608));
      }

      if (*(a1 + 592) == 1)
      {
        v12 = (a1 + 568);
        sub_100191E28(&v12);
      }

      sub_1006FA044(a1);
      v8 = 0;
    }

    else
    {
      sub_100734EA0(a1, a2);
      *(a1 + 568) = 0;
      *(a1 + 592) = 0;
      if (*(a2 + 592) == 1)
      {
        *(a1 + 584) = 0;
        *(a1 + 568) = 0u;
        *(a1 + 568) = *(a2 + 568);
        *(a1 + 576) = *(a2 + 576);
        *(a2 + 584) = 0;
        *(a2 + 568) = 0u;
        *(a1 + 592) = 1;
      }

      *(a1 + 600) = *(a2 + 600);
      v9 = *(a2 + 608);
      *(a1 + 624) = *(a2 + 624);
      *(a1 + 608) = v9;
      *(a2 + 624) = 0;
      *(a2 + 616) = 0;
      *(a2 + 608) = 0;
      v10 = *(a2 + 632);
      *(a1 + 648) = *(a2 + 648);
      *(a1 + 632) = v10;
      *(a2 + 648) = 0;
      *(a2 + 640) = 0;
      *(a2 + 632) = 0;
      *(a1 + 656) = 0;
      *(a1 + 680) = 0;
      v8 = 1;
      if (*(a2 + 680) == 1)
      {
        v11 = *(a2 + 656);
        *(a1 + 672) = *(a2 + 672);
        *(a1 + 656) = v11;
        *(a2 + 672) = 0;
        *(a2 + 664) = 0;
        *(a2 + 656) = 0;
        *(a1 + 680) = 1;
      }
    }

    *(a1 + 688) = v8;
  }
}

uint64_t sub_10073454C(uint64_t a1, uint64_t a2)
{
  sub_10073460C(a1, a2);
  sub_10016A270(a1 + 280, (a2 + 280));
  sub_10016A270(a1 + 312, (a2 + 312));
  sub_10016A270(a1 + 344, (a2 + 344));
  sub_10016A270(a1 + 376, (a2 + 376));
  sub_10016A270(a1 + 408, (a2 + 408));
  sub_10016A270(a1 + 440, (a2 + 440));
  sub_10016A270(a1 + 472, (a2 + 472));
  sub_10016A270(a1 + 504, (a2 + 504));
  sub_100734C64(a1 + 536, (a2 + 536));
  return a1;
}

void sub_10073460C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 272) == *(a2 + 272))
  {
    if (*(a1 + 272))
    {

      sub_100734664(a1, a2);
    }
  }

  else if (*(a1 + 272))
  {
    *(sub_1006FA180(a1) + 272) = 0;
  }

  else
  {

    sub_1007346E4(a1, a2);
  }
}

uint64_t sub_100734664(uint64_t a1, uint64_t a2)
{
  sub_100734860(a1, a2);
  sub_100734A38(a1 + 104, (a2 + 104));
  sub_100734B1C(a1 + 136, (a2 + 136));
  sub_100734BC0(a1 + 168, (a2 + 168));
  sub_10055D990(a1 + 208, (a2 + 208));
  sub_100734C64(a1 + 240, (a2 + 240));
  return a1;
}

void sub_1007346E4(uint64_t a1, uint64_t a2)
{
  sub_100734D08(a1, a2);
  *(v3 + 104) = 0;
  *(v3 + 128) = 0;
  if (*(a2 + 128) == 1)
  {
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
    *(v3 + 120) = 0;
    *(v3 + 104) = *(a2 + 104);
    *(v3 + 120) = *(a2 + 120);
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    *(v3 + 128) = 1;
  }

  *(v3 + 136) = 0;
  *(v3 + 160) = 0;
  if (*(a2 + 160) == 1)
  {
    *(v3 + 136) = 0;
    *(v3 + 144) = 0;
    *(v3 + 152) = 0;
    *(v3 + 136) = *(a2 + 136);
    *(v3 + 152) = *(a2 + 152);
    *(a2 + 136) = 0;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(v3 + 160) = 1;
  }

  *(v3 + 168) = 0;
  *(v3 + 200) = 0;
  if (*(a2 + 200) == 1)
  {
    *(v3 + 192) = 0;
    if (*(a2 + 192) == 1)
    {
      v4 = *(a2 + 168);
      *(v3 + 184) = *(a2 + 184);
      *(v3 + 168) = v4;
      *(a2 + 176) = 0;
      *(a2 + 184) = 0;
      *(a2 + 168) = 0;
      *(v3 + 192) = 1;
    }

    *(v3 + 200) = 1;
  }

  *(v3 + 208) = 0;
  *(v3 + 232) = 0;
  if (*(a2 + 232) == 1)
  {
    *(v3 + 208) = 0;
    *(v3 + 216) = 0;
    *(v3 + 224) = 0;
    *(v3 + 208) = *(a2 + 208);
    *(v3 + 224) = *(a2 + 224);
    *(a2 + 208) = 0;
    *(a2 + 216) = 0;
    *(a2 + 224) = 0;
    *(v3 + 232) = 1;
  }

  *(v3 + 240) = 0;
  *(v3 + 264) = 0;
  if (*(a2 + 264) == 1)
  {
    *(v3 + 240) = 0;
    *(v3 + 248) = 0;
    *(v3 + 256) = 0;
    *(v3 + 240) = *(a2 + 240);
    *(v3 + 256) = *(a2 + 256);
    *(a2 + 240) = 0;
    *(a2 + 248) = 0;
    *(a2 + 256) = 0;
    *(v3 + 264) = 1;
  }

  *(v3 + 272) = 1;
}

__n128 sub_100734860(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 96) == *(a2 + 96))
  {
    if (*(a1 + 96))
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
      if (*(a1 + 47) < 0)
      {
        operator delete(*(a1 + 24));
      }

      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 24) = v5;
      *(a2 + 47) = 0;
      *(a2 + 24) = 0;
      if (*(a1 + 71) < 0)
      {
        operator delete(*(a1 + 48));
      }

      v6 = a2[3];
      *(a1 + 64) = *(a2 + 8);
      *(a1 + 48) = v6;
      *(a2 + 71) = 0;
      *(a2 + 48) = 0;
      sub_1007349F8(a1 + 72);
      result = *(a2 + 72);
      *(a1 + 72) = result;
      *(a1 + 88) = *(a2 + 11);
      *(a2 + 9) = 0;
      *(a2 + 10) = 0;
      *(a2 + 11) = 0;
    }
  }

  else if (*(a1 + 96))
  {
    v11 = (a1 + 72);
    sub_1006FA290(&v11);
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
      operator delete(*a1);
    }

    *(a1 + 96) = 0;
  }

  else
  {
    v8 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v8;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v9 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v9;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v10 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v10;
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    *(a2 + 6) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    result = *(a2 + 72);
    *(a1 + 72) = result;
    *(a1 + 88) = *(a2 + 11);
    *(a2 + 9) = 0;
    *(a2 + 10) = 0;
    *(a2 + 11) = 0;
    *(a1 + 96) = 1;
  }

  return result;
}

void sub_1007349F8(uint64_t a1)
{
  if (*a1)
  {
    sub_1006FA2E4(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

__n128 sub_100734A38(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      sub_100734ADC(a1);
      result = *a2;
      *a1 = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      a2[1].n128_u64[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v5 = a1;
    sub_1006FA34C(&v5);
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

void sub_100734ADC(uint64_t *a1)
{
  if (*a1)
  {
    sub_1006FA3A0(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

__n128 sub_100734B1C(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      sub_1007349F8(a1);
      result = *a2;
      *a1 = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      a2[1].n128_u64[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v5 = a1;
    sub_1006FA290(&v5);
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

void sub_100734BC0(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 32) == a2[2].n128_u8[0])
  {
    if (*(a1 + 32))
    {
      sub_10016A270(a1, a2);
    }
  }

  else
  {
    if (*(a1 + 32))
    {
      if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      v3 = 0;
    }

    else
    {
      *a1 = 0;
      *(a1 + 24) = 0;
      v3 = 1;
      if (a2[1].n128_u8[8] == 1)
      {
        v4 = *a2;
        *(a1 + 16) = a2[1].n128_u64[0];
        *a1 = v4;
        a2->n128_u64[1] = 0;
        a2[1].n128_u64[0] = 0;
        a2->n128_u64[0] = 0;
        *(a1 + 24) = 1;
      }
    }

    *(a1 + 32) = v3;
  }
}

__n128 sub_100734C64(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      sub_1001C71E8(a1);
      result = *a2;
      *a1 = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      a2[1].n128_u64[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v5 = a1;
    sub_1001C6984(&v5);
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

__n128 sub_100734D08(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 96) = 0;
  if (*(a2 + 96) == 1)
  {
    v2 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v2;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v3 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v3;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v4 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v4;
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    *(a2 + 6) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    result = *(a2 + 72);
    *(a1 + 72) = result;
    *(a1 + 88) = *(a2 + 11);
    *(a2 + 9) = 0;
    *(a2 + 10) = 0;
    *(a2 + 11) = 0;
    *(a1 + 96) = 1;
  }

  return result;
}

__n128 sub_100734D90(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      sub_100734E34(a1);
      result = *a2;
      *a1 = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      a2[1].n128_u64[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v5 = a1;
    sub_100191E28(&v5);
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

void sub_100734E34(void **a1)
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
        v5 = v3 - 248;
        sub_100191D80((v3 - 240));
        v3 = v5;
      }

      while (v5 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

double sub_100734EA0(_BYTE *a1, uint64_t a2)
{
  v3 = sub_1007350EC(a1, a2);
  v3[280] = 0;
  v3[304] = 0;
  if (*(a2 + 304) == 1)
  {
    v4 = *(a2 + 280);
    *(v3 + 37) = *(a2 + 296);
    *(v3 + 280) = v4;
    *(a2 + 288) = 0;
    *(a2 + 296) = 0;
    *(a2 + 280) = 0;
    v3[304] = 1;
  }

  v3[312] = 0;
  v3[336] = 0;
  if (*(a2 + 336) == 1)
  {
    v4 = *(a2 + 312);
    *(v3 + 41) = *(a2 + 328);
    *(v3 + 312) = v4;
    *(a2 + 320) = 0;
    *(a2 + 328) = 0;
    *(a2 + 312) = 0;
    v3[336] = 1;
  }

  v3[344] = 0;
  v3[368] = 0;
  if (*(a2 + 368) == 1)
  {
    v4 = *(a2 + 344);
    *(v3 + 45) = *(a2 + 360);
    *(v3 + 344) = v4;
    *(a2 + 352) = 0;
    *(a2 + 360) = 0;
    *(a2 + 344) = 0;
    v3[368] = 1;
  }

  v3[376] = 0;
  v3[400] = 0;
  if (*(a2 + 400) == 1)
  {
    v4 = *(a2 + 376);
    *(v3 + 49) = *(a2 + 392);
    *(v3 + 376) = v4;
    *(a2 + 384) = 0;
    *(a2 + 392) = 0;
    *(a2 + 376) = 0;
    v3[400] = 1;
  }

  v3[408] = 0;
  v3[432] = 0;
  if (*(a2 + 432) == 1)
  {
    v4 = *(a2 + 408);
    *(v3 + 53) = *(a2 + 424);
    *(v3 + 408) = v4;
    *(a2 + 416) = 0;
    *(a2 + 424) = 0;
    *(a2 + 408) = 0;
    v3[432] = 1;
  }

  v3[440] = 0;
  v3[464] = 0;
  if (*(a2 + 464) == 1)
  {
    v4 = *(a2 + 440);
    *(v3 + 57) = *(a2 + 456);
    *(v3 + 440) = v4;
    *(a2 + 448) = 0;
    *(a2 + 456) = 0;
    *(a2 + 440) = 0;
    v3[464] = 1;
  }

  v3[472] = 0;
  v3[496] = 0;
  if (*(a2 + 496) == 1)
  {
    v4 = *(a2 + 472);
    *(v3 + 61) = *(a2 + 488);
    *(v3 + 472) = v4;
    *(a2 + 480) = 0;
    *(a2 + 488) = 0;
    *(a2 + 472) = 0;
    v3[496] = 1;
  }

  v3[504] = 0;
  v3[528] = 0;
  if (*(a2 + 528) == 1)
  {
    v4 = *(a2 + 504);
    *(v3 + 65) = *(a2 + 520);
    *(v3 + 504) = v4;
    *(a2 + 520) = 0;
    *(a2 + 504) = 0;
    *(a2 + 512) = 0;
    v3[528] = 1;
  }

  v3[536] = 0;
  v3[560] = 0;
  if (*(a2 + 560) == 1)
  {
    *(v3 + 69) = 0;
    *&v4 = 0;
    *(v3 + 536) = 0u;
    *(v3 + 67) = *(a2 + 536);
    *(v3 + 34) = *(a2 + 544);
    *(a2 + 552) = 0;
    *(a2 + 536) = 0u;
    v3[560] = 1;
  }

  return *&v4;
}

_BYTE *sub_1007350EC(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[272] = 0;
  if (*(a2 + 272) == 1)
  {
    sub_1007346E4(a1, a2);
  }

  return a1;
}

uint64_t sub_100735130(uint64_t a1, uint64_t a2)
{
  v4 = sub_1006FB24C(a1, a2);
  *(v4 + 14) = 0;
  *(v4 + 15) = 0;
  *(v4 + 16) = 0;
  sub_1007321B4((v4 + 112), *(a2 + 112), *(a2 + 120), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 120) - *(a2 + 112)) >> 3));
  if (*(a2 + 159) < 0)
  {
    sub_100005F2C((a1 + 136), *(a2 + 136), *(a2 + 144));
  }

  else
  {
    v5 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v5;
  }

  if (*(a2 + 183) < 0)
  {
    sub_100005F2C((a1 + 160), *(a2 + 160), *(a2 + 168));
  }

  else
  {
    v6 = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 160) = v6;
  }

  if (*(a2 + 207) < 0)
  {
    sub_100005F2C((a1 + 184), *(a2 + 184), *(a2 + 192));
  }

  else
  {
    v7 = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 184) = v7;
  }

  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  sub_10004EFD0(a1 + 208, *(a2 + 208), *(a2 + 216), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 216) - *(a2 + 208)) >> 3));
  if (*(a2 + 255) < 0)
  {
    sub_100005F2C((a1 + 232), *(a2 + 232), *(a2 + 240));
  }

  else
  {
    v8 = *(a2 + 232);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 232) = v8;
  }

  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  sub_10004EFD0(a1 + 256, *(a2 + 256), *(a2 + 264), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 264) - *(a2 + 256)) >> 3));
  *(a1 + 280) = *(a2 + 280);
  return a1;
}

void sub_100735294(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000087B4(va);
  if (*(v2 + 207) < 0)
  {
    operator delete(*(v2 + 184));
  }

  if (*(v2 + 183) < 0)
  {
    operator delete(*(v2 + 160));
  }

  if (*(v2 + 159) < 0)
  {
    operator delete(*(v2 + 136));
  }

  sub_10005AAF8(va);
  sub_10067AA50(v2);
  _Unwind_Resume(a1);
}

void *sub_100735330(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_100005F2C(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  v2[1] = v3 + 24;
  return result;
}

uint64_t sub_100735390(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1000CE3D4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_100005348(a1, v6);
  }

  v7 = 24 * v2;
  v16 = 0;
  v17 = 24 * v2;
  v18 = 24 * v2;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v7, *a2, *(a2 + 1));
    v7 = v17;
    v9 = v18;
  }

  else
  {
    v8 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v7 = v8;
    v9 = 24 * v2;
  }

  *&v18 = v9 + 24;
  v10 = *(a1 + 8);
  v11 = v7 + *a1 - v10;
  sub_1007354E0(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_1000054E0(&v16);
  return v15;
}

void sub_1007354CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000054E0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007354E0(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v12 = a4;
  v10 = 0;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      a4 += 24;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v6 = (v6 + 24);
    }

    while (v6 != a3);
    v12 = a4;
    LOBYTE(v10) = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 = (v5 + 24);
    }
  }

  return sub_1007322F8(v9);
}

void sub_1007355B0(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v11 = 0uLL;
  v12 = 0;
  sub_100B2FB0C(v7);
  if (v8 >= 0)
  {
    v4 = v7;
  }

  else
  {
    v4 = v7[0];
  }

  v9[0] = a1;
  v9[1] = v4;
  sub_100006354(v9, &object);
  xpc::dyn_cast_or_default();
  xpc_release(object);
  object = 0;
  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  v5 = HIBYTE(v12);
  v6 = SHIBYTE(v12);
  if (v12 < 0)
  {
    v5 = *(&v11 + 1);
  }

  if (v5)
  {
    *a2 = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
    if (v6 < 0)
    {
      operator delete(v11);
    }
  }
}

void sub_1007356A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, xpc_object_t object)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void *sub_1007356EC(void *a1)
{
  *a1 = off_101E77198;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100735738(void *a1)
{
  *a1 = off_101E77198;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100735818(uint64_t result, uint64_t a2)
{
  *a2 = off_101E77198;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100735858(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100735868(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1007358A8(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (a1[2])
      {
        v5 = (*(**(v3 + 40) + 16))(*(v3 + 40), *(v3 + 48));
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
        {
          sub_10177C8A0();
        }

        v6[0] = 0;
        v6[1] = 0;
        sub_100004AA0(v6, v3);
        operator new();
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_100735A14(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100735A60(uint64_t **a1)
{
  v1 = **a1;
  sub_10072FE3C(v1);
  v2 = *(v1 + 208);
  *(v1 + 208) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete();
}

uint64_t *sub_100735B14(void **a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v4 = *v1;
  v2 = (v1 + 1);
  v3 = v4;
  sub_1001696A4((v4 + 128), v2);
  v5 = *(v4 + 104);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *(v3 + 96);
      if (v8)
      {
        if ((*(v3 + 152) & 1) == 0)
        {
          sub_1000D1644();
        }

        (*(*v8 + 96))(v8, *(v3 + 48), v3 + 128);
      }

      sub_100004A34(v7);
    }
  }

  sub_10072F5CC(v3, v2);
  sub_1000EF424(&v11);
  return sub_1000049E0(&v10);
}

void sub_100735BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_1000EF424(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_100735C00(uint64_t a1@<X0>, const char *a2@<X1>, int64_t a3@<X2>, char a4@<W3>, void **a5@<X8>)
{
  *a5 = 0;
  v10 = xpc_dictionary_create(0, 0, 0);
  v11 = v10;
  if (v10)
  {
    *a5 = v10;
  }

  else
  {
    v11 = xpc_null_create();
    *a5 = v11;
    if (!v11)
    {
      v12 = xpc_null_create();
      v11 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v11) == &_xpc_type_dictionary)
  {
    xpc_retain(v11);
    goto LABEL_9;
  }

  v12 = xpc_null_create();
LABEL_8:
  *a5 = v12;
LABEL_9:
  xpc_release(v11);
  v13 = *a5;
  v14 = __p;
  sub_100B2FAEC(__p);
  if (v30 < 0)
  {
    v14 = __p[0];
  }

  v15 = *(a1 + 32);
  object[1] = *(a1 + 24);
  v28 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = sub_100A94378();
  xpc_dictionary_set_int64(v13, v14, v16);
  if (v28)
  {
    sub_100004A34(v28);
  }

  if (v30 < 0)
  {
    operator delete(__p[0]);
    if (a4)
    {
      goto LABEL_17;
    }
  }

  else if (a4)
  {
LABEL_17:
    v26 = xpc_int64_create(a3);
    if (!v26)
    {
      v26 = xpc_null_create();
    }

    sub_100B2FAFC(__p);
    if (v30 >= 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    v24 = a5;
    v25 = v17;
    sub_10000F688(&v24, &v26, object);
    xpc_release(object[0]);
    object[0] = 0;
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    xpc_release(v26);
    v26 = 0;
    goto LABEL_35;
  }

  if (*(a1 + 112) == 1)
  {
    v22 = xpc_int64_create(*(a1 + 104));
    if (!v22)
    {
      v22 = xpc_null_create();
    }

    sub_100B2FAFC(__p);
    if (v30 >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    v24 = a5;
    v25 = v18;
    sub_10000F688(&v24, &v22, &v23);
    xpc_release(v23);
    v23 = 0;
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    xpc_release(v22);
    v22 = 0;
  }

LABEL_35:
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  v20 = xpc_string_create(a2);
  if (!v20)
  {
    v20 = xpc_null_create();
  }

  sub_100B2FB0C(__p);
  if (v30 >= 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  v24 = a5;
  v25 = v19;
  sub_10000F688(&v24, &v20, &v21);
  xpc_release(v21);
  v21 = 0;
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v20);
}

void sub_100735ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  xpc_release(v26);
  sub_100DC3ED0(v25);
  _Unwind_Resume(a1);
}

uint64_t *sub_100735F84(uint64_t **a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  sub_100736040(*v1 + 216, (v1 + 1));
  sub_10072CD4C(v2);
  sub_100735FF0(&v5);
  return sub_1000049E0(&v4);
}

void sub_100735FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100735FF0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100735FF0(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100732020(v1 + 8);
    operator delete();
  }

  return result;
}

uint64_t sub_100736040(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  std::string::operator=((a1 + 24), (a2 + 24));
  *(a1 + 48) = *(a2 + 48);
  sub_100220FC4(a1 + 56, a2 + 56);
  std::string::operator=((a1 + 88), (a2 + 88));
  if (a1 == a2)
  {
    std::string::operator=((a1 + 136), (a2 + 136));
    std::string::operator=((a1 + 160), (a2 + 160));
    std::string::operator=((a1 + 184), (a2 + 184));
    std::string::operator=((a1 + 232), (a2 + 232));
  }

  else
  {
    sub_100736164((a1 + 112), *(a2 + 112), *(a2 + 120), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 120) - *(a2 + 112)) >> 3));
    std::string::operator=((a1 + 136), (a2 + 136));
    std::string::operator=((a1 + 160), (a2 + 160));
    std::string::operator=((a1 + 184), (a2 + 184));
    sub_100008234((a1 + 208), *(a2 + 208), *(a2 + 216), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 216) - *(a2 + 208)) >> 3));
    std::string::operator=((a1 + 232), (a2 + 232));
    sub_100008234((a1 + 256), *(a2 + 256), *(a2 + 264), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 264) - *(a2 + 256)) >> 3));
  }

  *(a1 + 280) = *(a2 + 280);
  return a1;
}

void sub_100736164(std::string **a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_1007342E4(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_10008E2D0(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8++, v6++);
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v15 = *(v11 - 1);
      v11 -= 3;
      if (v15 < 0)
      {
        operator delete(*v11);
      }
    }

    a1[1] = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = __str;
      do
      {
        std::string::operator=(v8++, v14++);
        v13 -= 24;
      }

      while (v13);
      v11 = a1[1];
    }

    a1[1] = sub_10073223C(a1, (v6 + v12), a3, v11);
  }
}

BOOL sub_100736304(uint64_t a1, uint64_t a2)
{
  v3 = [NSDictionary typecast:a2];
  if (v3)
  {
    sub_100736710(a1, @"transferType", v3);
    sub_1007367B8((a1 + 1), @"pendingTransferStatus", v3);
    sub_1004561CC((a1 + 24), @"mcc", v3);
    sub_1004561CC((a1 + 48), @"mnc", v3);
    sub_1004561CC((a1 + 72), @"gid1", v3);
    sub_1004561CC((a1 + 96), @"gid2", v3);
    sub_1004561CC((a1 + 120), @"sourceDeviceDisplayName", v3);
    sub_1004561CC((a1 + 144), @"planLabelText", v3);
    sub_1004561CC((a1 + 168), @"planLabelTag", v3);
    sub_1004561CC((a1 + 192), @"sourceImei", v3);
    sub_1004561CC((a1 + 216), @"sourceEid", v3);
    sub_1004561CC((a1 + 240), @"carrierName", v3);
    sub_1004561CC((a1 + 264), @"phoneNumber", v3);
    sub_1004561CC((a1 + 288), @"countryCode", v3);
    sub_100736860((a1 + 8), @"isActiveOnSource", v3);
    sub_100736860((a1 + 9), @"isLocalTransfer", v3);
    sub_100736908((a1 + 4), @"sourceInstance", v3);
    sub_1004561CC((a1 + 312), @"transferToken", v3);
    sub_1004561CC((a1 + 336), @"transferTokenExpiration", v3);
    sub_1004561CC((a1 + 360), @"carrierTransferData", v3);
    sub_1004561CC((a1 + 384), @"imsi", v3);
    sub_1004561CC((a1 + 432), @"sourceIccid", v3);
    sub_1004561CC((a1 + 456), @"expectedTargetIccid", v3);
    sub_1004561CC((a1 + 480), @"expectedTargetIccidHash", v3);
    sub_1004561CC((a1 + 504), @"altSmdpFqdn", v3);
    sub_1007369B0(a1 + 528, @"transferSimServiceResponse", v3);
    sub_100736A58(a1 + 688, @"transferSimServiceWebServiceResponse", v3);
    sub_1004561CC((a1 + 856), @"WebsheetResponse", v3);
    sub_100736B00((a1 + 880), @"UnusableIccid", v3);
    sub_100736860((a1 + 11), @"transferStatusReport", v3);
    sub_100736860((a1 + 12), @"isQRCodeTransfer", v3);
    sub_100736860((a1 + 1224), @"isProvisioningMonitorModeExhausted", v3);
    sub_100736860((a1 + 1225), @"IsTransferUsingRecoveryWithoutExplicitIccidMapping", v3);
    sub_100736860((a1 + 15), @"isCrossPlatformTransfer", v3);
    sub_100736860((a1 + 1226), @"IsRetryMonitorModeExhausted", v3);
    sub_100736860((a1 + 16), @"IsSourcePlanDeleted", v3);
    sub_100736860((a1 + 17), @"isCarrierSignupPlan", v3);
    sub_1004561CC((a1 + 192), @"sourceImei", v3);
    sub_100736BA8(a1 + 914, @"sourceCsn", v3);
    sub_1004561CC((a1 + 936), @"sourceDeviceType", v3);
    sub_1004561CC((a1 + 960), @"sourceDisplayName", v3);
    sub_1004561CC((a1 + 408), @"carrierCanonicalID", v3);
    sub_100736860((a1 + 19), @"isUseDs", v3);
    v4 = *(a1 + 455);
    if ((v4 & 0x80u) != 0)
    {
      v4 = *(a1 + 440);
    }

    if (v4)
    {
      goto LABEL_8;
    }

    v5 = *(a1 + 479);
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(a1 + 464);
    }

    if (v5)
    {
LABEL_8:
      v6 = 1;
    }

    else
    {
      v8 = *(a1 + 263);
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(a1 + 248);
      }

      v6 = v8 != 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_100736710(_BYTE *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 objectForKey:v5];
    v8 = sub_100737E20(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_1007367B8(_BYTE *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 objectForKey:v5];
    v8 = sub_100737EAC(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_100736860(BOOL *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 objectForKey:v5];
    v8 = sub_100737F38(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_100736908(_DWORD *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 objectForKey:v5];
    v8 = sub_100737FCC(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL sub_1007369B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 objectForKey:v5];
    v8 = sub_100738058(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL sub_100736A58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 objectForKey:v5];
    v8 = sub_100738218(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_100736B00(std::string *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 objectForKey:v5];
    v8 = sub_1007383C0(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_100736BA8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 objectForKey:v5];
    v8 = sub_1007384A8(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_100736C50(uint64_t a1)
{
  v2 = objc_opt_new();
  sub_1007373F0(a1, @"transferType", v2);
  sub_100737484((a1 + 1), @"pendingTransferStatus", v2);
  v3 = v2;
  v4 = *(a1 + 47);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 32);
  }

  if (v4)
  {
    sub_100737750((a1 + 24), @"mcc", v3);
  }

  v5 = v3;
  v6 = *(a1 + 71);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 56);
  }

  if (v6)
  {
    sub_100737750((a1 + 48), @"mnc", v5);
  }

  v7 = v5;
  v8 = *(a1 + 95);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 80);
  }

  if (v8)
  {
    sub_100737750((a1 + 72), @"gid1", v7);
  }

  v9 = v7;
  v10 = *(a1 + 119);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a1 + 104);
  }

  if (v10)
  {
    sub_100737750((a1 + 96), @"gid2", v9);
  }

  v11 = v9;
  v12 = *(a1 + 143);
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a1 + 128);
  }

  if (v12)
  {
    sub_100737750((a1 + 120), @"sourceDeviceDisplayName", v11);
  }

  v13 = v11;
  v14 = *(a1 + 167);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a1 + 152);
  }

  if (v14)
  {
    sub_100737750((a1 + 144), @"planLabelText", v13);
  }

  v15 = v13;
  v16 = *(a1 + 191);
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(a1 + 176);
  }

  if (v16)
  {
    sub_100737750((a1 + 168), @"planLabelTag", v15);
  }

  v17 = v15;
  v18 = *(a1 + 215);
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(a1 + 200);
  }

  if (v18)
  {
    sub_100737750((a1 + 192), @"sourceImei", v17);
  }

  v19 = v17;
  v20 = *(a1 + 239);
  if ((v20 & 0x80u) != 0)
  {
    v20 = *(a1 + 224);
  }

  if (v20)
  {
    sub_100737750((a1 + 216), @"sourceEid", v19);
  }

  v21 = v19;
  v22 = *(a1 + 263);
  if ((v22 & 0x80u) != 0)
  {
    v22 = *(a1 + 248);
  }

  if (v22)
  {
    sub_100737750((a1 + 240), @"carrierName", v21);
  }

  v23 = v21;
  v24 = *(a1 + 287);
  if ((v24 & 0x80u) != 0)
  {
    v24 = *(a1 + 272);
  }

  if (v24)
  {
    sub_100737750((a1 + 264), @"phoneNumber", v23);
  }

  v25 = v23;
  v26 = *(a1 + 311);
  if ((v26 & 0x80u) != 0)
  {
    v26 = *(a1 + 296);
  }

  if (v26)
  {
    sub_100737750((a1 + 288), @"countryCode", v25);
  }

  if (*(a1 + 8))
  {
    v28 = &__kCFBooleanTrue;
  }

  else
  {
    v28 = &__kCFBooleanFalse;
  }

  codec::setItem(v28, @"isActiveOnSource", v25, v27);
  if (*(a1 + 9))
  {
    v30 = &__kCFBooleanTrue;
  }

  else
  {
    v30 = &__kCFBooleanFalse;
  }

  codec::setItem(v30, @"isLocalTransfer", v25, v29);
  sub_100737518((a1 + 4), @"sourceInstance", v25);
  v31 = v25;
  v32 = *(a1 + 335);
  if ((v32 & 0x80u) != 0)
  {
    v32 = *(a1 + 320);
  }

  if (v32)
  {
    sub_100737750((a1 + 312), @"transferToken", v31);
  }

  v33 = v31;
  v34 = *(a1 + 359);
  if ((v34 & 0x80u) != 0)
  {
    v34 = *(a1 + 344);
  }

  if (v34)
  {
    sub_100737750((a1 + 336), @"transferTokenExpiration", v33);
  }

  v35 = v33;
  v36 = *(a1 + 383);
  if ((v36 & 0x80u) != 0)
  {
    v36 = *(a1 + 368);
  }

  if (v36)
  {
    sub_100737750((a1 + 360), @"carrierTransferData", v35);
  }

  v37 = v35;
  v38 = *(a1 + 407);
  if ((v38 & 0x80u) != 0)
  {
    v38 = *(a1 + 392);
  }

  if (v38)
  {
    sub_100737750((a1 + 384), @"imsi", v37);
  }

  v39 = v37;
  v40 = *(a1 + 455);
  if ((v40 & 0x80u) != 0)
  {
    v40 = *(a1 + 440);
  }

  if (v40)
  {
    sub_100737750((a1 + 432), @"sourceIccid", v39);
  }

  v41 = v39;
  v42 = *(a1 + 479);
  if ((v42 & 0x80u) != 0)
  {
    v42 = *(a1 + 464);
  }

  if (v42)
  {
    sub_100737750((a1 + 456), @"expectedTargetIccid", v41);
  }

  v43 = v41;
  v44 = *(a1 + 503);
  if ((v44 & 0x80u) != 0)
  {
    v44 = *(a1 + 488);
  }

  if (v44)
  {
    sub_100737750((a1 + 480), @"expectedTargetIccidHash", v43);
  }

  v45 = v43;
  v46 = *(a1 + 527);
  if ((v46 & 0x80u) != 0)
  {
    v46 = *(a1 + 512);
  }

  if (v46)
  {
    sub_100737750((a1 + 504), @"altSmdpFqdn", v45);
  }

  sub_1007375AC(a1 + 528, @"transferSimServiceResponse", v45);
  sub_100737638(a1 + 688, @"transferSimServiceWebServiceResponse", v45);
  v47 = v45;
  v48 = *(a1 + 879);
  if ((v48 & 0x80u) != 0)
  {
    v48 = *(a1 + 864);
  }

  if (v48)
  {
    sub_100737750((a1 + 856), @"WebsheetResponse", v47);
  }

  sub_1007376C4((a1 + 880), @"UnusableIccid", v47);
  if (*(a1 + 11))
  {
    v50 = &__kCFBooleanTrue;
  }

  else
  {
    v50 = &__kCFBooleanFalse;
  }

  codec::setItem(v50, @"transferStatusReport", v47, v49);
  if (*(a1 + 12))
  {
    v52 = &__kCFBooleanTrue;
  }

  else
  {
    v52 = &__kCFBooleanFalse;
  }

  codec::setItem(v52, @"isQRCodeTransfer", v47, v51);
  if (*(a1 + 1224))
  {
    v54 = &__kCFBooleanTrue;
  }

  else
  {
    v54 = &__kCFBooleanFalse;
  }

  codec::setItem(v54, @"isProvisioningMonitorModeExhausted", v47, v53);
  if (*(a1 + 1225))
  {
    v56 = &__kCFBooleanTrue;
  }

  else
  {
    v56 = &__kCFBooleanFalse;
  }

  codec::setItem(v56, @"IsTransferUsingRecoveryWithoutExplicitIccidMapping", v47, v55);
  if (*(a1 + 15))
  {
    v58 = &__kCFBooleanTrue;
  }

  else
  {
    v58 = &__kCFBooleanFalse;
  }

  codec::setItem(v58, @"isCrossPlatformTransfer", v47, v57);
  if (*(a1 + 1226))
  {
    v60 = &__kCFBooleanTrue;
  }

  else
  {
    v60 = &__kCFBooleanFalse;
  }

  codec::setItem(v60, @"IsRetryMonitorModeExhausted", v47, v59);
  if (*(a1 + 16))
  {
    v62 = &__kCFBooleanTrue;
  }

  else
  {
    v62 = &__kCFBooleanFalse;
  }

  codec::setItem(v62, @"IsSourcePlanDeleted", v47, v61);
  if (*(a1 + 17))
  {
    v64 = &__kCFBooleanTrue;
  }

  else
  {
    v64 = &__kCFBooleanFalse;
  }

  codec::setItem(v64, @"isCarrierSignupPlan", v47, v63);
  sub_100737750((a1 + 192), @"sourceImei", v47);
  sub_1007377F0(a1 + 914, @"sourceCsn", v47);
  sub_100737750((a1 + 936), @"sourceDeviceType", v47);
  sub_100737750((a1 + 960), @"sourceDisplayName", v47);
  v65 = v47;
  v66 = *(a1 + 431);
  if ((v66 & 0x80u) != 0)
  {
    v66 = *(a1 + 416);
  }

  if (v66)
  {
    sub_100737750((a1 + 408), @"carrierCanonicalID", v65);
  }

  if (*(a1 + 19))
  {
    v68 = &__kCFBooleanTrue;
  }

  else
  {
    v68 = &__kCFBooleanFalse;
  }

  codec::setItem(v68, @"isUseDs", v65, v67);

  return v65;
}

uint64_t sub_1007373F0(unsigned __int8 *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [NSNumber numberWithUnsignedLongLong:*a1];
  v9 = codec::setItem(v7, v5, v6, v8);

  return v9;
}

uint64_t sub_100737484(unsigned __int8 *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [NSNumber numberWithUnsignedLongLong:*a1];
  v9 = codec::setItem(v7, v5, v6, v8);

  return v9;
}

uint64_t sub_100737518(int *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [NSNumber numberWithLongLong:*a1];
  v9 = codec::setItem(v7, v5, v6, v8);

  return v9;
}

uint64_t sub_1007375AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100738618(a1);
  v9 = codec::setItem(v7, v5, v6, v8);

  return v9;
}

uint64_t sub_100737638(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100738664(a1);
  v9 = codec::setItem(v7, v5, v6, v8);

  return v9;
}

uint64_t sub_1007376C4(uint64_t *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1007386B0(a1);
  v9 = codec::setItem(v7, v5, v6, v8);

  return v9;
}

uint64_t sub_100737750(uint64_t *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 23) >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  v8 = [NSString stringWithUTF8String:v7];
  v10 = codec::setItem(v8, v5, v6, v9);

  return v10;
}

uint64_t sub_1007377F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100738718(a1);
  v9 = codec::setItem(v7, v5, v6, v8);

  return v9;
}

uint64_t sub_10073787C(std::string *a1, uint64_t a2)
{
  v3 = [NSDictionary typecast:a2];
  if (v3)
  {
    v4 = sub_1004561CC(a1 + 1, @"targetEid", v3);
    v5 = sub_1004561CC(a1, @"transferredToDeviceDisplayName", v3);
    v6 = sub_100737950(&a1[2], @"transferredStatus", v3);
    v7 = v4 & v5 & v6 & sub_100736860(&a1[2].__r_.__value_.__s.__data_[1], @"isNetworkRejected", v3);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_100737950(_BYTE *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 objectForKey:v5];
    v8 = sub_100738808(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_1007379F8(uint64_t a1)
{
  v2 = objc_opt_new();
  sub_100737750((a1 + 24), @"targetEid", v2);
  sub_100737750(a1, @"transferredToDeviceDisplayName", v2);
  sub_100737AB4((a1 + 48), @"transferredStatus", v2);
  if (*(a1 + 49))
  {
    v4 = &__kCFBooleanTrue;
  }

  else
  {
    v4 = &__kCFBooleanFalse;
  }

  codec::setItem(v4, @"isNetworkRejected", v2, v3);

  return v2;
}

uint64_t sub_100737AB4(unsigned __int8 *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [NSNumber numberWithUnsignedLongLong:*a1];
  v9 = codec::setItem(v7, v5, v6, v8);

  return v9;
}

void sub_100737B4C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = 0;
  v8 = 0;
  v6 = &v7;
  if (sub_100738894(&v6, a1))
  {
    v3 = v7;
    *a2 = v6;
    *(a2 + 8) = v3;
    v4 = a2 + 8;
    v5 = v8;
    *(a2 + 16) = v8;
    if (v5)
    {
      v3[2] = v4;
      v6 = &v7;
      v7 = 0;
      v8 = 0;
      v3 = 0;
    }

    else
    {
      *a2 = v4;
    }

    *(a2 + 24) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
    v3 = v7;
  }

  sub_100438D74(&v6, v3);
}

void sub_100737C04(void *a1)
{
  v1 = sub_100738D5C(a1);
  [NSObject jsonStringWithObject:?];
}

void sub_100737C7C(uint64_t *a1)
{
  v1 = sub_100738E64(a1);
  [NSObject jsonStringWithObject:?];
}

void sub_100737CF4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = 0;
  v8 = 0;
  v6 = &v7;
  if (sub_100738F6C(&v6, a1))
  {
    v3 = v7;
    *a2 = v6;
    *(a2 + 8) = v3;
    v4 = a2 + 8;
    v5 = v8;
    *(a2 + 16) = v8;
    if (v5)
    {
      v3[2] = v4;
      v6 = &v7;
      v7 = 0;
      v8 = 0;
      v3 = 0;
    }

    else
    {
      *a2 = v4;
    }

    *(a2 + 24) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
    v3 = v7;
  }

  sub_1000DD0AC(&v6, v3);
}

void sub_100737DAC(void *a1)
{
  v1 = sub_100739284(a1);
  [NSObject jsonStringWithObject:?];
}

uint64_t sub_100737E20(_BYTE *a1, void *a2)
{
  v3 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    *a1 = [v3 unsignedLongLongValue];
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_100737EAC(_BYTE *a1, void *a2)
{
  v3 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    *a1 = [v3 unsignedLongLongValue];
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_100737F38(BOOL *a1, void *a2)
{
  v3 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    *a1 = [v3 unsignedLongLongValue] != 0;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_100737FCC(_DWORD *a1, void *a2)
{
  v3 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    *a1 = [v3 longLongValue];
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL sub_100738058(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v15 = 0;
    v13 = 0u;
    *__p = 0u;
    *v11 = 0u;
    v12 = 0u;
    *v9 = 0u;
    v10 = 0u;
    *v7 = 0u;
    v8 = 0u;
    v6 = 0u;
    v4 = codec::fromJSONObject<entitlements::TransferSIMResponse>(&v6, v3);
    if (v4)
    {
      sub_10073816C(a1, &v6);
    }

    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    if (v13 == 1 && SHIBYTE(v12) < 0)
    {
      operator delete(v11[1]);
    }

    if (LOBYTE(v11[0]) == 1 && SHIBYTE(v10) < 0)
    {
      operator delete(v9[1]);
    }

    if (LOBYTE(v9[0]) == 1 && SHIBYTE(v8) < 0)
    {
      operator delete(v7[1]);
    }

    v16 = &v6;
    sub_10016C644(&v16);
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

void sub_100738154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10026BE9C(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10073816C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 152) == 1)
  {
    if (a1 != a2)
    {
      sub_1002845C0(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 5));
    }

    sub_10012BF3C((a1 + 24), (a2 + 24));
    sub_10012BF3C((a1 + 56), (a2 + 56));
    sub_10012BF3C((a1 + 88), (a2 + 88));
    *(a1 + 120) = *(a2 + 120);
    std::string::operator=((a1 + 128), (a2 + 128));
  }

  else
  {
    sub_100282340(a1, a2);
    *(a1 + 152) = 1;
  }

  return a1;
}

BOOL sub_100738218(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    *__p = 0u;
    v15 = 0u;
    v12 = 0u;
    *v13 = 0u;
    *v10 = 0u;
    v11 = 0u;
    *v8 = 0u;
    v9 = 0u;
    *v6 = 0u;
    v7 = 0u;
    v4 = codec::fromJSONObject<entitlements::TransferSIMViaWebServiceResponse>(v6, v3);
    if (v4)
    {
      sub_100738328(a1, v6);
    }

    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[1]);
    }

    if (SHIBYTE(__p[0]) < 0)
    {
      operator delete(v13[0]);
    }

    if (v12 == 1 && SHIBYTE(v11) < 0)
    {
      operator delete(v10[1]);
    }

    if (LOBYTE(v10[0]) == 1 && SHIBYTE(v9) < 0)
    {
      operator delete(v8[1]);
    }

    if (LOBYTE(v8[0]) == 1 && SHIBYTE(v7) < 0)
    {
      operator delete(v6[1]);
    }
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

void sub_100738310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002851A0(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_100738328(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 160) == 1)
  {
    *a1 = *a2;
    sub_10012BF3C((a1 + 8), (a2 + 8));
    sub_10012BF3C((a1 + 40), (a2 + 40));
    sub_10012BF3C((a1 + 72), (a2 + 72));
    *(a1 + 104) = *(a2 + 104);
    std::string::operator=((a1 + 112), (a2 + 112));
    std::string::operator=((a1 + 136), (a2 + 136));
  }

  else
  {
    sub_1002852A0(a1, a2);
    *(a1 + 160) = 1;
  }

  return a1;
}

uint64_t sub_1007383C0(std::string *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    memset(&__p, 0, sizeof(__p));
    v5 = v3;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      sub_100016890(&__p, [v5 UTF8String]);

      sub_1001696A4(a1, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
    }
  }

  else
  {
    isKindOfClass = 1;
  }

  return isKindOfClass & 1;
}

void sub_10073847C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007384A8(uint64_t a1, uint64_t a2)
{
  v3 = [NSArray typecast:a2];
  v4 = v3;
  if (v3 && [v3 count] == 16)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = [v4 objectAtIndexedSubscript:v5];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 &= sub_10073858C((a1 + v5), v7);
      }

      ++v5;
    }

    while (v5 != 16);
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

uint64_t sub_10073858C(_BYTE *a1, void *a2)
{
  v3 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    *a1 = [v3 unsignedLongLongValue];
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_100738618(uint64_t a1)
{
  if (*(a1 + 152) == 1)
  {
    v2 = codec::toJSONObject<entitlements::TransferSIMResponse>(a1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_100738664(uint64_t a1)
{
  if (*(a1 + 160) == 1)
  {
    v2 = codec::toJSONObject<entitlements::TransferSIMViaWebServiceResponse>(a1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1007386B0(uint64_t *a1)
{
  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 23) >= 0)
    {
      v3 = a1;
    }

    else
    {
      v3 = *a1;
    }

    v4 = [NSString stringWithUTF8String:v3, v1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_100738718(uint64_t a1)
{
  v2 = [NSMutableArray arrayWithCapacity:16];
  for (i = 0; i != 16; ++i)
  {
    v4 = [NSNumber numberWithUnsignedLongLong:*(a1 + i)];
    if (v4)
    {
      [v2 addObject:v4];
    }

    else
    {
      v5 = +[NSNull null];
      [v2 addObject:v5];
    }
  }

  return v2;
}

uint64_t sub_100738808(_BYTE *a1, void *a2)
{
  v3 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    *a1 = [v3 unsignedLongLongValue];
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL sub_100738894(uint64_t a1, uint64_t a2)
{
  v3 = [NSObject objectWithJSONString:a2];
  v4 = sub_1007388F4(a1, v3);

  return v4;
}

BOOL sub_1007388F4(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_100438D74(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  v4 = [NSArray typecast:v3];
  v5 = v4;
  if (v4)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = *v19;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v18 + 1) + 8 * v9);
          *__p = 0u;
          v17 = 0u;
          *v14 = 0u;
          v15 = 0u;
          *v13 = 0u;
          if ((sub_100738B44(v13, v10) & 1) == 0)
          {
            if (SBYTE7(v17) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v15) < 0)
            {
              operator delete(v14[1]);
            }

            if (SHIBYTE(v14[0]) < 0)
            {
              operator delete(v13[0]);
            }

            goto LABEL_24;
          }

          sub_100738C78(a1, v13);
          if (SBYTE7(v17) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v15) < 0)
          {
            operator delete(v14[1]);
          }

          if (SHIBYTE(v14[0]) < 0)
          {
            operator delete(v13[0]);
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = [v6 count] == *(a1 + 16);
  }

  else
  {
LABEL_24:
    v11 = 0;
  }

  return v11;
}

uint64_t sub_100738B44(std::string *a1, uint64_t a2)
{
  v3 = [NSDictionary typecast:a2];
  if (v3 && (sub_1004561CC(a1, @"key", v3) & 1) != 0)
  {
    v4 = sub_100738BD0(a1 + 1, @"value", v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_100738BD0(std::string *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 objectForKey:v5];
    v8 = sub_10073787C(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_100738C78(uint64_t a1, void **a2)
{
  v4 = 0;
  v2 = *sub_100005C2C(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

id sub_100738D5C(void *a1)
{
  if (a1[2])
  {
    v2 = [NSMutableArray arrayWithCapacity:?];
    v5 = *a1;
    v3 = a1 + 1;
    v4 = v5;
    if (v5 != v3)
    {
      do
      {
        v6 = sub_100738E64(v4 + 4);
        if (v6)
        {
          [v2 addObject:v6];
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
      }

      while (v8 != v3);
    }

    if ([v2 count])
    {
      v10 = v2;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_100738E64(uint64_t *a1)
{
  v2 = objc_opt_new();
  sub_100737750(a1, @"key", v2);
  sub_100738EE0((a1 + 3), @"value", v2);

  return v2;
}

uint64_t sub_100738EE0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1007379F8(a1);
  v9 = codec::setItem(v7, v5, v6, v8);

  return v9;
}

BOOL sub_100738F6C(uint64_t a1, uint64_t a2)
{
  v3 = [NSObject objectWithJSONString:a2];
  v4 = sub_100738FCC(a1, v3);

  return v4;
}

BOOL sub_100738FCC(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_1000DD0AC(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  v4 = [NSArray typecast:v3];
  v5 = v4;
  if (v4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = *v17;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v16 + 1) + 8 * v9);
          *__p = 0u;
          v15 = 0u;
          *v13 = 0u;
          if ((sub_1007391F8(v13, v10) & 1) == 0)
          {
            if (SHIBYTE(v15) < 0)
            {
              operator delete(__p[1]);
            }

            if (SHIBYTE(__p[0]) < 0)
            {
              operator delete(v13[0]);
            }

            goto LABEL_20;
          }

          sub_10064638C(a1, v13);
          if (SHIBYTE(v15) < 0)
          {
            operator delete(__p[1]);
          }

          if (SHIBYTE(__p[0]) < 0)
          {
            operator delete(v13[0]);
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = [v6 count] == *(a1 + 16);
  }

  else
  {
LABEL_20:
    v11 = 0;
  }

  return v11;
}

uint64_t sub_1007391F8(std::string *a1, uint64_t a2)
{
  v3 = [NSDictionary typecast:a2];
  if (v3 && (sub_1004561CC(a1, @"key", v3) & 1) != 0)
  {
    v4 = sub_1004561CC(a1 + 1, @"value", v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_100739284(void *a1)
{
  if (a1[2])
  {
    v2 = [NSMutableArray arrayWithCapacity:?];
    v5 = *a1;
    v3 = a1 + 1;
    v4 = v5;
    if (v5 != v3)
    {
      do
      {
        v6 = sub_10073938C(v4 + 4);
        if (v6)
        {
          [v2 addObject:v6];
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
      }

      while (v8 != v3);
    }

    if ([v2 count])
    {
      v10 = v2;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_10073938C(uint64_t *a1)
{
  v2 = objc_opt_new();
  sub_100737750(a1, @"key", v2);
  sub_100737750(a1 + 3, @"value", v2);

  return v2;
}

void sub_100739408()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_100739430(uint64_t a1, const void **a2, const void **a3, const void **a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_101E77218;
  sub_10005C7A4((a1 + 24), a2);
  sub_10005C7A4((a1 + 32), a3);
  sub_10005C7A4((a1 + 40), a4);
  return a1;
}

void sub_1007394A4(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  if ((a2 & 1) != 0 || (*(a1 + 23) >= 0 ? (v4 = *(a1 + 23)) : (v4 = *(a1 + 8)), v4))
  {
    if ((*(a1 + 23) & 0x80) != 0)
    {
      sub_100005F2C(v6, *a1, *(a1 + 8));
    }

    else
    {
      *v6 = *a1;
      v7 = *(a1 + 16);
    }

    if (SHIBYTE(v7) < 0)
    {
      sub_100005F2C(__dst, v6[0], v6[1]);
    }

    else
    {
      *__dst = *v6;
      v10 = v7;
    }

    v8 = 0;
    if (SHIBYTE(v10) < 0)
    {
      sub_100005F2C(__p, __dst[0], __dst[1]);
    }

    else
    {
      *__p = *__dst;
      v12 = v10;
    }

    v13 = 0;
    if (ctu::cf::convert_copy())
    {
      v5 = v8;
      v8 = v13;
      v14 = v5;
      sub_100005978(&v14);
    }

    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }

    *a3 = v8;
    v8 = 0;
    sub_100005978(&v8);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__dst[0]);
    }

    if (SHIBYTE(v7) < 0)
    {
      operator delete(v6[0]);
    }
  }

  else
  {
    *a3 = 0;
  }
}

void sub_1007395EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_100005978(&a15);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100739640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1007394A4(a2, 1, &v10);
  sub_1007394A4(a3, 1, &v9);
  sub_1007394A4(a4, 1, &v8);
  sub_100739430(a1, &v10, &v9, &v8);
  sub_100005978(&v8);
  sub_100005978(&v9);
  sub_100005978(&v10);
  return a1;
}

void sub_1007396D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  sub_100005978(va);
  sub_100005978(va1);
  _Unwind_Resume(a1);
}

void sub_1007396FC(uint64_t a1)
{
  *a1 = off_101E77218;
  sub_100005978((a1 + 40));
  sub_100005978((a1 + 32));
  sub_100005978((a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  UserAlertInterface::~UserAlertInterface(a1);
}

void sub_100739770(uint64_t a1)
{
  sub_1007396FC(a1);

  operator delete();
}

uint64_t sub_1007397F4(uint64_t a1, const void **a2, const void **a3, const void **a4, const void **a5, void *a6, uint64_t a7)
{
  v11 = sub_100739430(a1, a2, a3, a4);
  *v11 = off_101E77240;
  sub_10005C7A4((v11 + 48), a5);
  *(a1 + 56) = *a6;
  *a6 = 0;
  sub_10073A5F8(a1 + 64, a7);
  return a1;
}

void sub_10073986C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    dispatch_release(v3);
  }

  sub_100005978((v1 + 48));
  sub_1007396FC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100739898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, dispatch_object_t *a6, uint64_t a7)
{
  sub_1007394A4(a2, 1, &v18);
  sub_1007394A4(a3, 1, &v17);
  sub_1007394A4(a4, 1, &v16);
  sub_1007394A4(a5, 1, &v15);
  object = *a6;
  *a6 = 0;
  sub_1007397F4(a1, &v18, &v17, &v16, &v15, &object, a7);
  if (object)
  {
    dispatch_release(object);
  }

  sub_100005978(&v15);
  sub_100005978(&v16);
  sub_100005978(&v17);
  sub_100005978(&v18);
  return a1;
}

void sub_100739980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, const void *a11, const void *a12, const void *a13, const void *a14)
{
  if (object)
  {
    dispatch_release(object);
  }

  sub_100005978(&a11);
  sub_100005978(&a12);
  sub_100005978(&a13);
  sub_100005978(&a14);
  _Unwind_Resume(a1);
}

void sub_1007399D0(CFStringRef *a1)
{
  v2 = 0;
  CFUserNotificationDisplayAlert(0.0, 1uLL, 0, 0, 0, a1[3], a1[4], a1[5], a1[6], 0, &v2);
  sub_100739A48(a1);
}

void sub_100739A48(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  sub_100004AA0(&v1, (a1 + 8));
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_100739B10(uint64_t a1)
{
  *a1 = off_101E77240;
  sub_10010C330(a1 + 64);
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_release(v2);
  }

  sub_100005978((a1 + 48));

  sub_1007396FC(a1);
}

void sub_100739B7C(uint64_t a1)
{
  sub_100739B10(a1);

  operator delete();
}

uint64_t sub_100739BB4(uint64_t a1, const void **a2, const void **a3, const void **a4, const void **a5, const void **a6, dispatch_object_t *a7, uint64_t a8)
{
  object = *a7;
  *a7 = 0;
  sub_1007397F4(a1, a2, a3, a4, a5, &object, a8);
  if (object)
  {
    dispatch_release(object);
  }

  *a1 = off_101E77268;
  sub_10005C7A4((a1 + 96), a6);
  return a1;
}

void sub_100739C30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100739C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, dispatch_object_t *a7, uint64_t a8)
{
  sub_1007394A4(a2, 1, &v21);
  sub_1007394A4(a3, 1, &v20);
  sub_1007394A4(a4, 1, &v19);
  sub_1007394A4(a5, 1, &v18);
  sub_1007394A4(a6, 1, &v17);
  object = *a7;
  *a7 = 0;
  sub_100739BB4(a1, &v21, &v20, &v19, &v18, &v17, &object, a8);
  if (object)
  {
    dispatch_release(object);
  }

  sub_100005978(&v17);
  sub_100005978(&v18);
  sub_100005978(&v19);
  sub_100005978(&v20);
  sub_100005978(&v21);
  return a1;
}

void sub_100739D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, const void *a10, const void *a11, const void *a12, const void *a13, const void *a14)
{
  if (object)
  {
    dispatch_release(object);
  }

  sub_100005978(&a10);
  sub_100005978(&a11);
  sub_100005978(&a12);
  sub_100005978(&a13);
  sub_100005978(&a14);
  _Unwind_Resume(a1);
}

void sub_100739DBC(uint64_t a1)
{
  *a1 = off_101E77268;
  sub_100005978((a1 + 96));

  sub_100739B10(a1);
}

void sub_100739E10(uint64_t a1)
{
  *a1 = off_101E77268;
  sub_100005978((a1 + 96));
  sub_100739B10(a1);

  operator delete();
}

void sub_100739E78(const void **a1)
{
  theDict = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(theDict, kCFUserNotificationAlertHeaderKey, a1[3]);
  CFDictionarySetValue(theDict, kCFUserNotificationAlertMessageKey, a1[4]);
  CFDictionarySetValue(theDict, kCFUserNotificationAlternateButtonTitleKey, a1[5]);
  CFDictionarySetValue(theDict, kCFUserNotificationOtherButtonTitleKey, a1[6]);
  CFDictionarySetValue(theDict, kCFUserNotificationDefaultButtonTitleKey, a1[12]);
  valuePtr = 0;
  value = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(theDict, SBUserNotificationDefaultButtonPresentationStyleKey, value);
  CFDictionarySetValue(theDict, SBUserNotificationAlternateButtonPresentationStyleKey, value);
  CFDictionarySetValue(theDict, SBUserNotificationOtherButtonPresentationStyleKey, value);
  error = -1;
  v2 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 1uLL, &error, theDict);
  v3[1] = v2;
  if (error)
  {
    sub_100739A48(a1);
  }

  v3[0] = 0;
  if (CFUserNotificationReceiveResponse(v2, 0.0, v3))
  {
    sub_100739A48(a1);
  }

  sub_100739A48(a1);
}

void sub_10073A054(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  v8 = va_arg(va2, void);
  sub_1001DCA14(va);
  sub_100029A48(va1);
  sub_1000296E0(va2);
  _Unwind_Resume(a1);
}

uint64_t sub_10073A098(uint64_t a1, const void **a2, const void **a3, const void **a4, const void **a5, const void **a6, uint64_t a7)
{
  *a1 = 0;
  v13 = a1 + 48;
  sub_10005C7A4((a1 + 8), a2);
  sub_10005C7A4((a1 + 16), a3);
  sub_10005C7A4((a1 + 24), a4);
  sub_10005C7A4((a1 + 32), a5);
  sub_10005C7A4((a1 + 40), a6);
  sub_10073A78C(v13, a7);
  return a1;
}

void sub_10073A134(_Unwind_Exception *a1)
{
  sub_100005978(v1 + 5);
  sub_100005978(v1 + 4);
  sub_100005978(v1 + 3);
  sub_100005978(v1 + 2);
  sub_100005978(v1 + 1);
  sub_1001DCA14(v1);
  _Unwind_Resume(a1);
}

const void **sub_10073A174(uint64_t a1, NSObject **a2)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v5 = Mutable;
  dictionary = Mutable;
  v6 = *(a1 + 8);
  if (v6)
  {
    CFDictionarySetValue(Mutable, kCFUserNotificationAlertHeaderKey, v6);
    v5 = dictionary;
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    CFDictionarySetValue(v5, kCFUserNotificationAlertMessageKey, v7);
    v5 = dictionary;
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    CFDictionarySetValue(v5, kCFUserNotificationDefaultButtonTitleKey, v8);
    v5 = dictionary;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    CFDictionarySetValue(v5, kCFUserNotificationAlternateButtonTitleKey, v9);
    v5 = dictionary;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    CFDictionarySetValue(v5, kCFUserNotificationOtherButtonTitleKey, v10);
    v5 = dictionary;
  }

  error = -1;
  v11 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 1uLL, &error, v5);
  v12 = *a1;
  *a1 = v11;
  v27[0] = v12;
  sub_1001DCA14(v27);
  if (error || !*a1)
  {
    if (*(a1 + 72))
    {
      sub_10073A564(a1 + 48, error, 3);
LABEL_14:
      sub_100305C00(a1 + 48);
    }
  }

  else
  {
    if (*a2)
    {
      goto LABEL_35;
    }

    *(&v24.__r_.__value_.__s + 23) = 12;
    strcpy(&v24, "user-alert #");
    v13 = dword_101FBAAB8++;
    std::to_string(&__p, v13);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v16 = std::string::append(&v24, p_p, size);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v28 = v16->__r_.__value_.__r.__words[2];
    *v27 = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    v18 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    if (v28 >= 0)
    {
      v19 = v27;
    }

    else
    {
      v19 = v27[0];
    }

    v20 = dispatch_queue_create(v19, v18);
    v21 = *a2;
    *a2 = v20;
    if (v21)
    {
      dispatch_release(v21);
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27[0]);
    }

    if (*a2)
    {
LABEL_35:
      sub_10073A78C(v27, a1 + 48);
      sub_10073A5C0(&v29, a1);
      operator new();
    }

    if (*(a1 + 72))
    {
      sub_10073A564(a1 + 48, -1, 3);
      goto LABEL_14;
    }
  }

  return sub_1000296E0(&dictionary);
}

void sub_10073A4BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, const void *a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_1000296E0(&a22);
  _Unwind_Resume(a1);
}

const void **sub_10073A51C(const void ***a1)
{
  result = *a1;
  if (result)
  {
    CFUserNotificationCancel(result);
    v3 = *a1;
    *a1 = 0;
    v4 = v3;
    return sub_1001DCA14(&v4);
  }

  return result;
}

uint64_t sub_10073A564(uint64_t a1, int a2, uint64_t a3)
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

const void **sub_10073A5C0(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

uint64_t sub_10073A5F8(uint64_t a1, uint64_t a2)
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

uint64_t *sub_10073A690(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 24);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_10073A6E4(uint64_t a1)
{
  v2 = a1;
  sub_10073A738(*(a1 + 8) + 64, *a1);
  return sub_10073A690(&v2);
}

void sub_10073A724(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10073A690(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10073A738(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_10073A78C(uint64_t a1, uint64_t a2)
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

uint64_t *sub_10073A824(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1001DCA14((v1 + 32));
    sub_100305E5C(v1);
    operator delete();
  }

  return result;
}

uint64_t *sub_10073A878(uint64_t a1)
{
  v4 = a1;
  responseFlags = 0;
  v2 = CFUserNotificationReceiveResponse(*(a1 + 32), 0.0, &responseFlags);
  sub_10073A564(a1, v2, responseFlags);
  return sub_10073A824(&v4);
}

void sub_10073A9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  operator delete();
}

uint64_t sub_10073A9CC@<X0>(uint64_t *a1@<X8>)
{
  result = IDSCopyLocalDeviceUniqueID();
  *a1 = result;
  return result;
}

uint64_t sub_10073A9F4(uint64_t a1)
{
  *a1 = off_101E77308;
  [*(a1 + 32) dealloc];
  *(a1 + 32) = 0;
  v2 = *(a1 + 80);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    _Block_release(v3);
  }

  sub_10001021C((a1 + 56));
  sub_100005978((a1 + 40));
  v4 = *(a1 + 24);
  if (v4)
  {
    sub_100004A34(v4);
  }

  TMKXPCServer.shutdown()();
  ctu::OsLogLogger::~OsLogLogger((a1 + 8));
  return a1;
}

void sub_10073AA94(uint64_t a1)
{
  sub_10073A9F4(a1);

  operator delete();
}

const void **sub_10073AAE4(uint64_t a1, const void *a2)
{
  if (*(a1 + 32))
  {
    v4 = *(a1 + 32);

    return [v4 setBootstrapInformation:a2];
  }

  else
  {
    v6[1] = v2;
    v6[2] = v3;
    v6[0] = a2;
    return sub_1002A2218((a1 + 56), v6);
  }
}

id sub_10073AB44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(a1 + 32) copyWatchDeviceID];
  *a2 = result;
  return result;
}

const void **sub_10073AB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 48);
    *buf = 136315394;
    *&buf[4] = v7;
    v16 = 2080;
    v17 = " ";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sStarted", buf, 0x16u);
  }

  v8 = [IDSClientDelegate alloc];
  sub_10005C7A4(&v14, (a1 + 40));
  *(a1 + 32) = [(IDSClientDelegate *)v8 initWithServiceName:v14 codeName:*(a1 + 48) localService:*(a1 + 64) validate:*(a1 + 72) callback:a3 devices:*(a1 + 80) queue:a2 registry:a1 + 16];
  result = sub_100005978(&v14);
  v10 = (a1 + 56);
  if (*(a1 + 56))
  {
    v11 = *(a1 + 32);
    sub_100010024(&v13, v10);
    [v11 setBootstrapInformation:v13];
    sub_10001021C(&v13);
    v12 = *v10;
    *v10 = 0;
    *buf = v12;
    return sub_10001021C(buf);
  }

  return result;
}

void sub_10073ACC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10073AD04(uint64_t a1, void *a2, void *a3, uint64_t a4, char a5, const void *a6, const void *a7)
{
  ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "ps.ids");
  ctu::OsLogLogger::OsLogLogger(v21, buf);
  ctu::OsLogLogger::OsLogLogger((a1 + 8), v21);
  ctu::OsLogLogger::~OsLogLogger(v21);
  ctu::OsLogContext::~OsLogContext(buf);
  *a1 = off_101E77308;
  *(a1 + 16) = *a2;
  v14 = a2[1];
  *(a1 + 24) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = a3;
  *(a1 + 32) = 0;
  if (a3)
  {
    CFRetain(a3);
  }

  *(a1 + 56) = 0;
  *(a1 + 48) = a4;
  *(a1 + 64) = a5;
  if (a6)
  {
    v15 = _Block_copy(a6);
  }

  else
  {
    v15 = 0;
  }

  *(a1 + 72) = v15;
  if (a7)
  {
    v16 = _Block_copy(a7);
  }

  else
  {
    v16 = 0;
  }

  *(a1 + 80) = v16;
  v17 = *(a1 + 8);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 48);
    v19 = [a3 UTF8String];
    *buf = 136315650;
    v23 = v18;
    v24 = 2080;
    v25 = " ";
    v26 = 2080;
    v27 = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%sCreated a sync for service %s", buf, 0x20u);
  }

  return a1;
}

void sub_10073AED4(_Unwind_Exception *a1)
{
  v5 = v1[10];
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = v1[9];
  if (v6)
  {
    _Block_release(v6);
  }

  sub_10001021C(v3);
  sub_100005978(v2);
  v7 = v1[3];
  if (v7)
  {
    sub_100004A34(v7);
  }

  TMKXPCServer.shutdown()();
  ctu::OsLogLogger::~OsLogLogger((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t sub_10073AF6C(uint64_t result)
{
  *(result + 28) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &off_101E773C0;
  return result;
}

void sub_10073AF94(PB::Base *this)
{
  *this = &off_101E773C0;
  v4 = *(this + 2);
  v2 = (this + 16);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100140988(v2, v3);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    sub_100140988(this + 8, v5);
  }

  PB::Base::~Base(this);
}

void sub_10073B00C(PB::Base *a1)
{
  sub_10073AF94(a1);

  operator delete();
}

uint64_t sub_10073B044(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 28))
  {
    PB::TextFormatter::format(this, "error", *(a1 + 24));
  }

  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 16))
  {
    PB::TextFormatter::format();
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_10073B0D4(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_52;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(a1 + 28) |= 1u;
        v24 = *(this + 1);
        v23 = *(this + 2);
        v25 = *this;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v32 = 0;
          v33 = 0;
          v28 = 0;
          v17 = v23 >= v24;
          v34 = v23 - v24;
          if (!v17)
          {
            v34 = 0;
          }

          v35 = (v25 + v24);
          v36 = v24 + 1;
          while (1)
          {
            if (!v34)
            {
              LODWORD(v28) = 0;
              *(this + 24) = 1;
              goto LABEL_47;
            }

            v37 = *v35;
            *(this + 1) = v36;
            v28 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            --v34;
            ++v35;
            ++v36;
            v14 = v33++ > 8;
            if (v14)
            {
LABEL_43:
              LODWORD(v28) = 0;
              goto LABEL_47;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v28) = 0;
          }
        }

        else
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          while (1)
          {
            *(this + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
            if (v14)
            {
              goto LABEL_43;
            }
          }
        }

LABEL_47:
        *(a1 + 24) = v28;
      }

      else
      {
        if (v22 == 2)
        {
          operator new();
        }

        if (v22 == 1)
        {
          operator new();
        }

        if (!PB::Reader::skip(this, v22, v10 & 7, 0))
        {
          v39 = 0;
          return v39 & 1;
        }
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_52:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t sub_10073B3F4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 8))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 16))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 28))
  {
    v4 = *(v3 + 24);

    return PB::Writer::writeVarInt(this, v4, 3u);
  }

  return result;
}

void *sub_10073B47C(void *a1)
{
  *a1 = off_101E77448;
  ctu::OsLogContext::OsLogContext(&v3, kCtLoggingSystemName, "cp.meta.helper");
  ctu::OsLogLogger::OsLogLogger(v4, &v3);
  ctu::OsLogLogger::OsLogLogger((a1 + 1), v4);
  ctu::OsLogLogger::~OsLogLogger(v4);
  ctu::OsLogContext::~OsLogContext(&v3);
  a1[2] = 0;
  a1[3] = 0;
  *a1 = off_101E77420;
  return a1;
}

void sub_10073B528(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10073B550(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1002E19DC(0);
  __src = 0;
  v25 = 0;
  if (*(a2 + 24))
  {
    v7 = (a2 + 16);
    while (1)
    {
      v7 = *v7;
      if (!v7)
      {
        v20 = sub_1002E1D88(v6, &__src, &v25);
        if (v20)
        {
          v21 = *(a1 + 8);
          if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_39;
          }

          *buf = 67109120;
          *&buf[4] = v20;
          v17 = "#E Buffer creation failure (encodeDeviceInfo): %d";
          v18 = v21;
          v19 = 8;
          goto LABEL_38;
        }

        a3[1] = *a3;
        if (__src)
        {
          sub_1001122C4(a3, __src, __src + v25, v25);
          free(__src);
        }

        v23 = 1;
        if (v6)
        {
          goto LABEL_40;
        }

        return v23;
      }

      v8 = v7 + 2;
      sub_10073B908(buf, v7 + 1);
      v9 = sub_1002E19DC(0);
      v10 = v9;
      v11 = (v28 & 0x80u) == 0 ? buf : *buf;
      v12 = (v28 & 0x80u) == 0 ? v28 : *&buf[8];
      if (!sub_1002E1A8C(v9, 0, 0xCu, v11, v12, 0))
      {
        v13 = (v31 & 0x80u) == 0 ? &__p : __p;
        v14 = (v31 & 0x80u) == 0 ? v31 : v30;
        if (!sub_1002E1A8C(v10, 0, 0xCu, v13, v14, 0))
        {
          break;
        }
      }

      v15 = 0;
      if (v10)
      {
        goto LABEL_19;
      }

LABEL_20:
      if (v31 < 0)
      {
        operator delete(__p);
      }

      if (v28 < 0)
      {
        operator delete(*buf);
        if (!v15)
        {
LABEL_34:
          v22 = *(a1 + 8);
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_39;
          }

          if (*(v7 + 39) < 0)
          {
            v8 = *v8;
          }

          *buf = 136315138;
          *&buf[4] = v8;
          v17 = "#E Failure adding key (%s)";
          v18 = v22;
          v19 = 12;
          goto LABEL_38;
        }
      }

      else if (!v15)
      {
        goto LABEL_34;
      }
    }

    v15 = sub_1002E1E4C(v10, v6, 0, 0x10u) == 0;
    if (!v10)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1002E1A20(v10);
    goto LABEL_20;
  }

  v16 = *(a1 + 8);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v17 = "#E No device information";
    v18 = v16;
    v19 = 2;
LABEL_38:
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
  }

LABEL_39:
  v23 = 0;
  if (v6)
  {
LABEL_40:
    sub_1002E1A20(v6);
  }

  return v23;
}

void sub_10073B818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (v11)
  {
    sub_1002E1A20(v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10073B878(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 8));
  return a1;
}

void sub_10073B8B0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 8));

  operator delete();
}

char *sub_10073B908(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  return __dst;
}

void sub_10073B980(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10073BEAC(void **a1)
{
  AnalyticsEvent::~AnalyticsEvent(a1);

  operator delete();
}

uint64_t sub_10073BF14(uint64_t a1, uint64_t *a2, void *a3, int a4, uint64_t a5, uint64_t a6, NSObject **a7, char *a8, int a9)
{
  v15 = (PersonalitySpecificImpl::PersonalitySpecificImpl() + 24);
  v16 = a2[5];
  *v15 = v16;
  *(v15 + *(v16 - 56)) = a2[6];
  v17 = a2[4];
  *(a1 + 24) = v17;
  *(v15 + *(v17 - 56)) = a2[7];
  v18 = a2[3];
  *(a1 + 24) = v18;
  *(v15 + *(v18 - 56)) = a2[8];
  v19 = *a2;
  *a1 = *a2;
  *(a1 + *(v19 - 56)) = a2[9];
  *(a1 + 24) = a2[10];
  v20 = *(*a5 + 52);
  v21 = a4;
  if (a4 < 0)
  {
    if (a6)
    {
      v21 = (*(*a6 + 16))(a6);
    }

    else
    {
      v21 = -1;
    }
  }

  sub_10000501C(__p, a8);
  v22 = sub_10073C774(a1, v20, v21, __p);
  ctu::OsLogContext::OsLogContext(&v45, kCtLoggingSystemName, v22);
  sub_10073D820((a1 + 32), a7, &v45);
  ctu::OsLogContext::~OsLogContext(&v45);
  if (v44 < 0)
  {
    operator delete(__p[0]);
  }

  v23 = *a2;
  *a1 = *a2;
  *(a1 + *(v23 - 56)) = a2[9];
  *(a1 + 24) = a2[10];
  v24 = a3[1];
  *(a1 + 72) = *a3;
  *(a1 + 80) = v24;
  if (v24)
  {
    atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
  }

  v25 = *(*a5 + 52);
  v26 = a4;
  if (a4 < 0)
  {
    if (a6)
    {
      v26 = (*(*a6 + 16))(a6);
    }

    else
    {
      v26 = -1;
    }
  }

  sub_10000501C(v39, a8);
  v27 = sub_10073C774(a1, v25, v26, v39);
  sub_10000501C(&v41, v27);
  v28 = *a7;
  v38 = v28;
  if (v28)
  {
    dispatch_retain(v28);
  }

  object = 0;
  ctu::RestModule::RestModule();
  if (v38)
  {
    dispatch_release(v38);
  }

  if (v42 < 0)
  {
    operator delete(v41);
  }

  if (v40 < 0)
  {
    operator delete(v39[0]);
  }

  *(a1 + 104) = a4;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  sub_10000501C((a1 + 168), a8);
  v29 = 0;
  *(a1 + 240) = 0;
  *(a1 + 232) = 0;
  *(a1 + 244) = a9;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 342) = 0;
  *(a1 + 360) = 0;
  *(a1 + 352) = 0;
  *(a1 + 392) = a1 + 400;
  *(a1 + 400) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = a1 + 424;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  do
  {
    v30 = a1 + v29;
    *(v30 + 456) = 0;
    *(v30 + 464) = "";
    *(v30 + 472) = "";
    *(v30 + 480) = 0;
    *(v30 + 484) = 0;
    *(v30 + 488) = 2;
    v31 = (a1 + v29 + 492);
    *(v30 + 508) = 0;
    *(a1 + v29 + 500) = 0;
    v29 += 56;
    *v31 = 0;
  }

  while (v29 != 112);
  *(a1 + 584) = 0;
  *(a1 + 568) = 0u;
  *(a1 + 592) = 2;
  *(a1 + 596) = 0;
  *(a1 + 600) = 0;
  *(a1 + 624) = 0;
  CIPFamily::CIPFamily((a1 + 632));
  CIPFamily::CIPFamily((a1 + 648));
  *(a1 + 664) = 0;
  *(a1 + 666) = 0;
  *(a1 + 736) = 0;
  *(a1 + 744) = 0;
  *(a1 + 752) = 0;
  *(a1 + 760) = 0;
  *(a1 + 768) = 0;
  *(a1 + 776) = 0;
  *(a1 + 784) = 0;
  *(a1 + 792) = 0;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 713) = 0u;
  Registry::createRestModuleOneTimeUseConnection(&v35, *(a1 + 72));
  ctu::RestModule::connect();
  if (v36)
  {
    sub_100004A34(v36);
  }

  sub_10073D8AC(a1, a6);
  sub_10073DC70(a1);
  return a1;
}

void sub_10073C564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, dispatch_object_t object, dispatch_object_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  sub_10075B4C8(v33 + 664);
  v35 = (v33 + 648);
  v36 = -32;
  do
  {
    CIPFamily::~CIPFamily(v35);
    v35 = (v37 - 16);
    v36 += 16;
  }

  while (v36);
  v38 = *(v33 + 584);
  if (v38)
  {
    sub_100004A34(v38);
  }

  v39 = 0;
  while (1)
  {
    v40 = *(v33 + 560 + v39);
    if (v40)
    {
      sub_100004A34(v40);
    }

    v39 -= 56;
    if (v39 == -112)
    {
      v41 = *(v33 + 440);
      *(v33 + 440) = 0;
      if (v41)
      {
        (*(*v41 + 8))(v41);
      }

      v42 = v33 + 416;
      v43 = -48;
      do
      {
        sub_1001178E4(v42, *(v42 + 8));
        v42 -= 24;
        v43 += 24;
      }

      while (v43);
      v44 = 0;
      while (1)
      {
        v45 = *(v33 + 336 + v44);
        if (v45)
        {
          sub_100004A34(v45);
        }

        v44 -= 16;
        if (v44 == -32)
        {
          v46 = 0;
          while (1)
          {
            v47 = *(v33 + 304 + v46);
            if (v47)
            {
              sub_100004A34(v47);
            }

            v46 -= 16;
            if (v46 == -32)
            {
              v48 = *(v33 + 272);
              if (v48)
              {
                sub_100004A34(v48);
              }

              if (*(v33 + 191) < 0)
              {
                operator delete(*(v33 + 168));
              }

              v49 = (v33 + 152);
              v50 = -48;
              while (1)
              {
                v51 = *(v49 - 1);
                if (v51)
                {
                  *v49 = v51;
                  operator delete(v51);
                }

                v49 -= 3;
                v50 += 24;
                if (!v50)
                {
                  v52 = *(v33 + 96);
                  if (v52)
                  {
                    sub_100004A34(v52);
                  }

                  v53 = *(v33 + 80);
                  if (v53)
                  {
                    sub_100004A34(v53);
                  }

                  ctu::OsLogLogger::~OsLogLogger((v33 + 64));
                  sub_1000C0544((v33 + 32));
                  PersonalitySpecificImpl::~PersonalitySpecificImpl(v33);
                  _Unwind_Resume(a1);
                }
              }
            }
          }
        }
      }
    }
  }
}

const char *sub_10073C774(void *a1, int a2, int a3, uint64_t a4)
{
  if (*(a4 + 23) < 0)
  {
    v8 = *(a4 + 8);
    if (v8)
    {
      __s1[0] = 0;
      __s1[1] = 0;
      v21 = 0;
      goto LABEL_10;
    }

    *(a4 + 8) = 7;
    v7 = *a4;
  }

  else
  {
    if (*(a4 + 23))
    {
LABEL_8:
      *__s1 = *a4;
      v21 = *(a4 + 16);
      goto LABEL_11;
    }

    *(a4 + 23) = 7;
    v7 = a4;
  }

  strcpy(v7, "unknown");
  v9 = *(a4 + 23);
  __s1[0] = 0;
  __s1[1] = 0;
  v21 = 0;
  if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  v8 = *(a4 + 8);
LABEL_10:
  sub_100005F2C(__s1, *a4, v8);
LABEL_11:
  v10 = HIBYTE(v21);
  if (v21 >= 0)
  {
    v11 = __s1 + HIBYTE(v21);
  }

  else
  {
    v11 = &__s1[0][__s1[1]];
  }

  if (v21 >= 0)
  {
    v12 = __s1;
  }

  else
  {
    v12 = __s1[0];
  }

  if (v12 != v11)
  {
    do
    {
      *v12 = __toupper(*v12);
      v12 = (v12 + 1);
    }

    while (v12 != v11);
    v10 = HIBYTE(v21);
  }

  if (a2 != 1)
  {
    if (v10 < 0)
    {
      v15 = __s1[0];
      v16 = __s1[0];
    }

    else
    {
      v15 = __s1;
      v16 = __s1;
    }

    if (strstr(v16, "TETHER"))
    {
      if (a3 <= 4)
      {
        if (a3 > 1)
        {
          if (a3 == 2)
          {
            v17 = "Settings.2:2:tethering";
            a1[26] = "Settings.2:2:tethering";
            a1[27] = "Settings.2:2:tethering:bb";
            a1[28] = "Settings.2:2:tethering:wifi";
            v18 = "DATA.Settings.2:2:tethering";
          }

          else if (a3 == 3)
          {
            v17 = "Settings.2:3:tethering";
            a1[26] = "Settings.2:3:tethering";
            a1[27] = "Settings.2:3:tethering:bb";
            a1[28] = "Settings.2:3:tethering:wifi";
            v18 = "DATA.Settings.2:3:tethering";
          }

          else
          {
            v17 = "Settings.2:4:tethering";
            a1[26] = "Settings.2:4:tethering";
            a1[27] = "Settings.2:4:tethering:bb";
            a1[28] = "Settings.2:4:tethering:wifi";
            v18 = "DATA.Settings.2:4:tethering";
          }

          goto LABEL_175;
        }

        if (!a3)
        {
          v17 = "Settings.2:0:tethering";
          a1[26] = "Settings.2:0:tethering";
          a1[27] = "Settings.2:0:tethering:bb";
          a1[28] = "Settings.2:0:tethering:wifi";
          v18 = "DATA.Settings.2:0:tethering";
          goto LABEL_175;
        }

        if (a3 == 1)
        {
          v17 = "Settings.2:1:tethering";
          a1[26] = "Settings.2:1:tethering";
          a1[27] = "Settings.2:1:tethering:bb";
          a1[28] = "Settings.2:1:tethering:wifi";
          v18 = "DATA.Settings.2:1:tethering";
          goto LABEL_175;
        }
      }

      else
      {
        if (a3 <= 7)
        {
          if (a3 == 5)
          {
            v17 = "Settings.2:5:tethering";
            a1[26] = "Settings.2:5:tethering";
            a1[27] = "Settings.2:5:tethering:bb";
            a1[28] = "Settings.2:5:tethering:wifi";
            v18 = "DATA.Settings.2:5:tethering";
          }

          else if (a3 == 6)
          {
            v17 = "Settings.2:6:tethering";
            a1[26] = "Settings.2:6:tethering";
            a1[27] = "Settings.2:6:tethering:bb";
            a1[28] = "Settings.2:6:tethering:wifi";
            v18 = "DATA.Settings.2:6:tethering";
          }

          else
          {
            v17 = "Settings.2:7:tethering";
            a1[26] = "Settings.2:7:tethering";
            a1[27] = "Settings.2:7:tethering:bb";
            a1[28] = "Settings.2:7:tethering:wifi";
            v18 = "DATA.Settings.2:7:tethering";
          }

          goto LABEL_175;
        }

        switch(a3)
        {
          case 8:
            v17 = "Settings.2:8:tethering";
            a1[26] = "Settings.2:8:tethering";
            a1[27] = "Settings.2:8:tethering:bb";
            a1[28] = "Settings.2:8:tethering:wifi";
            v18 = "DATA.Settings.2:8:tethering";
            goto LABEL_175;
          case 9:
            v17 = "Settings.2:9:tethering";
            a1[26] = "Settings.2:9:tethering";
            a1[27] = "Settings.2:9:tethering:bb";
            a1[28] = "Settings.2:9:tethering:wifi";
            v18 = "DATA.Settings.2:9:tethering";
            goto LABEL_175;
          case 10:
            v17 = "Settings.2:10:tethering";
            a1[26] = "Settings.2:10:tethering";
            a1[27] = "Settings.2:10:tethering:bb";
            a1[28] = "Settings.2:10:tethering:wifi";
            v18 = "DATA.Settings.2:10:tethering";
            goto LABEL_175;
        }
      }

      v17 = "Settings.2:N:tethering";
      a1[26] = "Settings.2:N:tethering";
      a1[27] = "Settings.2:N:tethering:bb";
      a1[28] = "Settings.2:N:tethering:wifi";
      v18 = "DATA.Settings.2:N:tethering";
      goto LABEL_175;
    }

    if (strstr(v15, "OTA"))
    {
      if (a3 <= 4)
      {
        if (a3 > 1)
        {
          if (a3 == 2)
          {
            v17 = "Settings.2:2:ota";
            a1[26] = "Settings.2:2:ota";
            a1[27] = "Settings.2:2:ota:bb";
            a1[28] = "Settings.2:2:ota:wifi";
            v18 = "DATA.Settings.2:2:ota";
          }

          else if (a3 == 3)
          {
            v17 = "Settings.2:3:ota";
            a1[26] = "Settings.2:3:ota";
            a1[27] = "Settings.2:3:ota:bb";
            a1[28] = "Settings.2:3:ota:wifi";
            v18 = "DATA.Settings.2:3:ota";
          }

          else
          {
            v17 = "Settings.2:4:ota";
            a1[26] = "Settings.2:4:ota";
            a1[27] = "Settings.2:4:ota:bb";
            a1[28] = "Settings.2:4:ota:wifi";
            v18 = "DATA.Settings.2:4:ota";
          }

          goto LABEL_175;
        }

        if (!a3)
        {
          v17 = "Settings.2:0:ota";
          a1[26] = "Settings.2:0:ota";
          a1[27] = "Settings.2:0:ota:bb";
          a1[28] = "Settings.2:0:ota:wifi";
          v18 = "DATA.Settings.2:0:ota";
          goto LABEL_175;
        }

        if (a3 == 1)
        {
          v17 = "Settings.2:1:ota";
          a1[26] = "Settings.2:1:ota";
          a1[27] = "Settings.2:1:ota:bb";
          a1[28] = "Settings.2:1:ota:wifi";
          v18 = "DATA.Settings.2:1:ota";
          goto LABEL_175;
        }
      }

      else
      {
        if (a3 <= 7)
        {
          if (a3 == 5)
          {
            v17 = "Settings.2:5:ota";
            a1[26] = "Settings.2:5:ota";
            a1[27] = "Settings.2:5:ota:bb";
            a1[28] = "Settings.2:5:ota:wifi";
            v18 = "DATA.Settings.2:5:ota";
          }

          else if (a3 == 6)
          {
            v17 = "Settings.2:6:ota";
            a1[26] = "Settings.2:6:ota";
            a1[27] = "Settings.2:6:ota:bb";
            a1[28] = "Settings.2:6:ota:wifi";
            v18 = "DATA.Settings.2:6:ota";
          }

          else
          {
            v17 = "Settings.2:7:ota";
            a1[26] = "Settings.2:7:ota";
            a1[27] = "Settings.2:7:ota:bb";
            a1[28] = "Settings.2:7:ota:wifi";
            v18 = "DATA.Settings.2:7:ota";
          }

          goto LABEL_175;
        }

        switch(a3)
        {
          case 8:
            v17 = "Settings.2:8:ota";
            a1[26] = "Settings.2:8:ota";
            a1[27] = "Settings.2:8:ota:bb";
            a1[28] = "Settings.2:8:ota:wifi";
            v18 = "DATA.Settings.2:8:ota";
            goto LABEL_175;
          case 9:
            v17 = "Settings.2:9:ota";
            a1[26] = "Settings.2:9:ota";
            a1[27] = "Settings.2:9:ota:bb";
            a1[28] = "Settings.2:9:ota:wifi";
            v18 = "DATA.Settings.2:9:ota";
            goto LABEL_175;
          case 10:
            v17 = "Settings.2:10:ota";
            a1[26] = "Settings.2:10:ota";
            a1[27] = "Settings.2:10:ota:bb";
            a1[28] = "Settings.2:10:ota:wifi";
            v18 = "DATA.Settings.2:10:ota";
            goto LABEL_175;
        }
      }

      v17 = "Settings.2:N:ota";
      a1[26] = "Settings.2:N:ota";
      a1[27] = "Settings.2:N:ota:bb";
      a1[28] = "Settings.2:N:ota:wifi";
      v18 = "DATA.Settings.2:N:ota";
      goto LABEL_175;
    }

    if (a3 <= 4)
    {
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v17 = "Settings.2:2";
          a1[26] = "Settings.2:2";
          a1[27] = "Settings.2:2:bb";
          a1[28] = "Settings.2:2:wifi";
          v18 = "DATA.Settings.2:2";
        }

        else if (a3 == 3)
        {
          v17 = "Settings.2:3";
          a1[26] = "Settings.2:3";
          a1[27] = "Settings.2:3:bb";
          a1[28] = "Settings.2:3:wifi";
          v18 = "DATA.Settings.2:3";
        }

        else
        {
          v17 = "Settings.2:4";
          a1[26] = "Settings.2:4";
          a1[27] = "Settings.2:4:bb";
          a1[28] = "Settings.2:4:wifi";
          v18 = "DATA.Settings.2:4";
        }

        goto LABEL_175;
      }

      if (!a3)
      {
        v17 = "Settings.2:0";
        a1[26] = "Settings.2:0";
        a1[27] = "Settings.2:0:bb";
        a1[28] = "Settings.2:0:wifi";
        v18 = "DATA.Settings.2:0";
        goto LABEL_175;
      }

      if (a3 == 1)
      {
        v17 = "Settings.2:1";
        a1[26] = "Settings.2:1";
        a1[27] = "Settings.2:1:bb";
        a1[28] = "Settings.2:1:wifi";
        v18 = "DATA.Settings.2:1";
        goto LABEL_175;
      }
    }

    else
    {
      if (a3 <= 7)
      {
        if (a3 == 5)
        {
          v17 = "Settings.2:5";
          a1[26] = "Settings.2:5";
          a1[27] = "Settings.2:5:bb";
          a1[28] = "Settings.2:5:wifi";
          v18 = "DATA.Settings.2:5";
        }

        else if (a3 == 6)
        {
          v17 = "Settings.2:6";
          a1[26] = "Settings.2:6";
          a1[27] = "Settings.2:6:bb";
          a1[28] = "Settings.2:6:wifi";
          v18 = "DATA.Settings.2:6";
        }

        else
        {
          v17 = "Settings.2:7";
          a1[26] = "Settings.2:7";
          a1[27] = "Settings.2:7:bb";
          a1[28] = "Settings.2:7:wifi";
          v18 = "DATA.Settings.2:7";
        }

        goto LABEL_175;
      }

      switch(a3)
      {
        case 8:
          v17 = "Settings.2:8";
          a1[26] = "Settings.2:8";
          a1[27] = "Settings.2:8:bb";
          a1[28] = "Settings.2:8:wifi";
          v18 = "DATA.Settings.2:8";
          goto LABEL_175;
        case 9:
          v17 = "Settings.2:9";
          a1[26] = "Settings.2:9";
          a1[27] = "Settings.2:9:bb";
          a1[28] = "Settings.2:9:wifi";
          v18 = "DATA.Settings.2:9";
          goto LABEL_175;
        case 10:
          v17 = "Settings.2:10";
          a1[26] = "Settings.2:10";
          a1[27] = "Settings.2:10:bb";
          a1[28] = "Settings.2:10:wifi";
          v18 = "DATA.Settings.2:10";
          goto LABEL_175;
      }
    }

    v17 = "Settings.2:N";
    a1[26] = "Settings.2:N";
    a1[27] = "Settings.2:N:bb";
    a1[28] = "Settings.2:N:wifi";
    v18 = "DATA.Settings.2:N";
    goto LABEL_175;
  }

  if (v10 < 0)
  {
    v13 = __s1[0];
    v14 = __s1[0];
  }

  else
  {
    v13 = __s1;
    v14 = __s1;
  }

  if (!strstr(v14, "TETHER"))
  {
    if (strstr(v13, "OTA"))
    {
      if (a3 <= 4)
      {
        if (a3 > 1)
        {
          if (a3 == 2)
          {
            v17 = "Settings.1:2:ota";
            a1[26] = "Settings.1:2:ota";
            a1[27] = "Settings.1:2:ota:bb";
            a1[28] = "Settings.1:2:ota:wifi";
            v18 = "DATA.Settings.1:2:ota";
          }

          else if (a3 == 3)
          {
            v17 = "Settings.1:3:ota";
            a1[26] = "Settings.1:3:ota";
            a1[27] = "Settings.1:3:ota:bb";
            a1[28] = "Settings.1:3:ota:wifi";
            v18 = "DATA.Settings.1:3:ota";
          }

          else
          {
            v17 = "Settings.1:4:ota";
            a1[26] = "Settings.1:4:ota";
            a1[27] = "Settings.1:4:ota:bb";
            a1[28] = "Settings.1:4:ota:wifi";
            v18 = "DATA.Settings.1:4:ota";
          }

          goto LABEL_175;
        }

        if (!a3)
        {
          v17 = "Settings.1:0:ota";
          a1[26] = "Settings.1:0:ota";
          a1[27] = "Settings.1:0:ota:bb";
          a1[28] = "Settings.1:0:ota:wifi";
          v18 = "DATA.Settings.1:0:ota";
          goto LABEL_175;
        }

        if (a3 == 1)
        {
          v17 = "Settings.1:1:ota";
          a1[26] = "Settings.1:1:ota";
          a1[27] = "Settings.1:1:ota:bb";
          a1[28] = "Settings.1:1:ota:wifi";
          v18 = "DATA.Settings.1:1:ota";
          goto LABEL_175;
        }
      }

      else
      {
        if (a3 <= 7)
        {
          if (a3 == 5)
          {
            v17 = "Settings.1:5:ota";
            a1[26] = "Settings.1:5:ota";
            a1[27] = "Settings.1:5:ota:bb";
            a1[28] = "Settings.1:5:ota:wifi";
            v18 = "DATA.Settings.1:5:ota";
          }

          else if (a3 == 6)
          {
            v17 = "Settings.1:6:ota";
            a1[26] = "Settings.1:6:ota";
            a1[27] = "Settings.1:6:ota:bb";
            a1[28] = "Settings.1:6:ota:wifi";
            v18 = "DATA.Settings.1:6:ota";
          }

          else
          {
            v17 = "Settings.1:7:ota";
            a1[26] = "Settings.1:7:ota";
            a1[27] = "Settings.1:7:ota:bb";
            a1[28] = "Settings.1:7:ota:wifi";
            v18 = "DATA.Settings.1:7:ota";
          }

          goto LABEL_175;
        }

        switch(a3)
        {
          case 8:
            v17 = "Settings.1:8:ota";
            a1[26] = "Settings.1:8:ota";
            a1[27] = "Settings.1:8:ota:bb";
            a1[28] = "Settings.1:8:ota:wifi";
            v18 = "DATA.Settings.1:8:ota";
            goto LABEL_175;
          case 9:
            v17 = "Settings.1:9:ota";
            a1[26] = "Settings.1:9:ota";
            a1[27] = "Settings.1:9:ota:bb";
            a1[28] = "Settings.1:9:ota:wifi";
            v18 = "DATA.Settings.1:9:ota";
            goto LABEL_175;
          case 10:
            v17 = "Settings.1:10:ota";
            a1[26] = "Settings.1:10:ota";
            a1[27] = "Settings.1:10:ota:bb";
            a1[28] = "Settings.1:10:ota:wifi";
            v18 = "DATA.Settings.1:10:ota";
            goto LABEL_175;
        }
      }

      v17 = "Settings.1:N:ota";
      a1[26] = "Settings.1:N:ota";
      a1[27] = "Settings.1:N:ota:bb";
      a1[28] = "Settings.1:N:ota:wifi";
      v18 = "DATA.Settings.1:N:ota";
      goto LABEL_175;
    }

    if (a3 <= 4)
    {
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v17 = "Settings.1:2";
          a1[26] = "Settings.1:2";
          a1[27] = "Settings.1:2:bb";
          a1[28] = "Settings.1:2:wifi";
          v18 = "DATA.Settings.1:2";
        }

        else if (a3 == 3)
        {
          v17 = "Settings.1:3";
          a1[26] = "Settings.1:3";
          a1[27] = "Settings.1:3:bb";
          a1[28] = "Settings.1:3:wifi";
          v18 = "DATA.Settings.1:3";
        }

        else
        {
          v17 = "Settings.1:4";
          a1[26] = "Settings.1:4";
          a1[27] = "Settings.1:4:bb";
          a1[28] = "Settings.1:4:wifi";
          v18 = "DATA.Settings.1:4";
        }

        goto LABEL_175;
      }

      if (!a3)
      {
        v17 = "Settings.1:0";
        a1[26] = "Settings.1:0";
        a1[27] = "Settings.1:0:bb";
        a1[28] = "Settings.1:0:wifi";
        v18 = "DATA.Settings.1:0";
        goto LABEL_175;
      }

      if (a3 == 1)
      {
        v17 = "Settings.1:1";
        a1[26] = "Settings.1:1";
        a1[27] = "Settings.1:1:bb";
        a1[28] = "Settings.1:1:wifi";
        v18 = "DATA.Settings.1:1";
        goto LABEL_175;
      }
    }

    else
    {
      if (a3 <= 7)
      {
        if (a3 == 5)
        {
          v17 = "Settings.1:5";
          a1[26] = "Settings.1:5";
          a1[27] = "Settings.1:5:bb";
          a1[28] = "Settings.1:5:wifi";
          v18 = "DATA.Settings.1:5";
        }

        else if (a3 == 6)
        {
          v17 = "Settings.1:6";
          a1[26] = "Settings.1:6";
          a1[27] = "Settings.1:6:bb";
          a1[28] = "Settings.1:6:wifi";
          v18 = "DATA.Settings.1:6";
        }

        else
        {
          v17 = "Settings.1:7";
          a1[26] = "Settings.1:7";
          a1[27] = "Settings.1:7:bb";
          a1[28] = "Settings.1:7:wifi";
          v18 = "DATA.Settings.1:7";
        }

        goto LABEL_175;
      }

      switch(a3)
      {
        case 8:
          v17 = "Settings.1:8";
          a1[26] = "Settings.1:8";
          a1[27] = "Settings.1:8:bb";
          a1[28] = "Settings.1:8:wifi";
          v18 = "DATA.Settings.1:8";
          goto LABEL_175;
        case 9:
          v17 = "Settings.1:9";
          a1[26] = "Settings.1:9";
          a1[27] = "Settings.1:9:bb";
          a1[28] = "Settings.1:9:wifi";
          v18 = "DATA.Settings.1:9";
          goto LABEL_175;
        case 10:
          v17 = "Settings.1:10";
          a1[26] = "Settings.1:10";
          a1[27] = "Settings.1:10:bb";
          a1[28] = "Settings.1:10:wifi";
          v18 = "DATA.Settings.1:10";
          goto LABEL_175;
      }
    }

    v17 = "Settings.1:N";
    a1[26] = "Settings.1:N";
    a1[27] = "Settings.1:N:bb";
    a1[28] = "Settings.1:N:wifi";
    v18 = "DATA.Settings.1:N";
    goto LABEL_175;
  }

  if (a3 > 4)
  {
    if (a3 <= 7)
    {
      if (a3 == 5)
      {
        v17 = "Settings.1:5:tethering";
        a1[26] = "Settings.1:5:tethering";
        a1[27] = "Settings.1:5:tethering:bb";
        a1[28] = "Settings.1:5:tethering:wifi";
        v18 = "DATA.Settings.1:5:tethering";
      }

      else if (a3 == 6)
      {
        v17 = "Settings.1:6:tethering";
        a1[26] = "Settings.1:6:tethering";
        a1[27] = "Settings.1:6:tethering:bb";
        a1[28] = "Settings.1:6:tethering:wifi";
        v18 = "DATA.Settings.1:6:tethering";
      }

      else
      {
        v17 = "Settings.1:7:tethering";
        a1[26] = "Settings.1:7:tethering";
        a1[27] = "Settings.1:7:tethering:bb";
        a1[28] = "Settings.1:7:tethering:wifi";
        v18 = "DATA.Settings.1:7:tethering";
      }

      goto LABEL_175;
    }

    switch(a3)
    {
      case 8:
        v17 = "Settings.1:8:tethering";
        a1[26] = "Settings.1:8:tethering";
        a1[27] = "Settings.1:8:tethering:bb";
        a1[28] = "Settings.1:8:tethering:wifi";
        v18 = "DATA.Settings.1:8:tethering";
        goto LABEL_175;
      case 9:
        v17 = "Settings.1:9:tethering";
        a1[26] = "Settings.1:9:tethering";
        a1[27] = "Settings.1:9:tethering:bb";
        a1[28] = "Settings.1:9:tethering:wifi";
        v18 = "DATA.Settings.1:9:tethering";
        goto LABEL_175;
      case 10:
        v17 = "Settings.1:10:tethering";
        a1[26] = "Settings.1:10:tethering";
        a1[27] = "Settings.1:10:tethering:bb";
        a1[28] = "Settings.1:10:tethering:wifi";
        v18 = "DATA.Settings.1:10:tethering";
        goto LABEL_175;
    }

LABEL_121:
    v17 = "Settings.1:N:tethering";
    a1[26] = "Settings.1:N:tethering";
    a1[27] = "Settings.1:N:tethering:bb";
    a1[28] = "Settings.1:N:tethering:wifi";
    v18 = "DATA.Settings.1:N:tethering";
    goto LABEL_175;
  }

  if (a3 <= 1)
  {
    if (!a3)
    {
      v17 = "Settings.1:0:tethering";
      a1[26] = "Settings.1:0:tethering";
      a1[27] = "Settings.1:0:tethering:bb";
      a1[28] = "Settings.1:0:tethering:wifi";
      v18 = "DATA.Settings.1:0:tethering";
      goto LABEL_175;
    }

    if (a3 == 1)
    {
      v17 = "Settings.1:1:tethering";
      a1[26] = "Settings.1:1:tethering";
      a1[27] = "Settings.1:1:tethering:bb";
      a1[28] = "Settings.1:1:tethering:wifi";
      v18 = "DATA.Settings.1:1:tethering";
      goto LABEL_175;
    }

    goto LABEL_121;
  }

  if (a3 == 2)
  {
    v17 = "Settings.1:2:tethering";
    a1[26] = "Settings.1:2:tethering";
    a1[27] = "Settings.1:2:tethering:bb";
    a1[28] = "Settings.1:2:tethering:wifi";
    v18 = "DATA.Settings.1:2:tethering";
  }

  else if (a3 == 3)
  {
    v17 = "Settings.1:3:tethering";
    a1[26] = "Settings.1:3:tethering";
    a1[27] = "Settings.1:3:tethering:bb";
    a1[28] = "Settings.1:3:tethering:wifi";
    v18 = "DATA.Settings.1:3:tethering";
  }

  else
  {
    v17 = "Settings.1:4:tethering";
    a1[26] = "Settings.1:4:tethering";
    a1[27] = "Settings.1:4:tethering:bb";
    a1[28] = "Settings.1:4:tethering:wifi";
    v18 = "DATA.Settings.1:4:tethering";
  }

LABEL_175:
  a1[24] = v17;
  a1[25] = v18;
  if (v10 < 0)
  {
    operator delete(__s1[0]);
  }

  return v18;
}