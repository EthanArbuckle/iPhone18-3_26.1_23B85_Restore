const char *CTParser::asString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_10001C608[a1];
  }
}

void CTParserXPCData::CTParserXPCData(CTParserXPCData *this)
{
  *this = &off_10001C550;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    *(this + 1) = v2;
  }

  else
  {
    v3 = xpc_null_create();
    *(this + 1) = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v3) != &_xpc_type_dictionary)
  {
    v4 = xpc_null_create();
LABEL_8:
    *(this + 1) = v4;
    goto LABEL_9;
  }

  xpc_retain(v3);
LABEL_9:
  xpc_release(v3);
}

void *CTParserXPCData::CTParserXPCData(void *a1, void **a2)
{
  v3 = *a2;
  *a1 = &off_10001C550;
  a1[1] = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    a1[1] = xpc_null_create();
  }

  return a1;
}

void CTParserXPCData::~CTParserXPCData(xpc_object_t *this)
{
  *this = &off_10001C550;
  xpc_release(this[1]);
  this[1] = 0;
}

{
  CTParserXPCData::~CTParserXPCData(this);

  operator delete();
}

void CTParserXPCData::prepareForSend(uint64_t a1, int64_t value, __int16 a3)
{
  object = xpc_int64_create(value);
  if (!object)
  {
    object = xpc_null_create();
  }

  v5 = a1 + 8;
  v8 = v5;
  v9 = CTParser::kRemoteServiceTypeKey[0];
  sub_100000C28(&v8, &object, &v11);
  xpc_release(v11);
  v11 = 0;
  xpc_release(object);
  object = 0;
  if ((a3 & 0x100) != 0)
  {
    v6 = xpc_int64_create(a3);
    if (!v6)
    {
      v6 = xpc_null_create();
    }

    v8 = v5;
    v9 = CTParser::kTransactionId[0];
    sub_100000C28(&v8, &v6, &v7);
    xpc_release(v7);
    v7 = 0;
    xpc_release(v6);
  }
}

xpc_object_t sub_100000C28@<X0>(uint64_t a1@<X0>, xpc_object_t *a2@<X1>, xpc_object_t *a3@<X8>)
{
  xpc_dictionary_set_value(**a1, *(a1 + 8), *a2);
  *a3 = *a2;
  result = xpc_null_create();
  *a2 = result;
  return result;
}

uint64_t CTParserXPCData::describe(CTParserXPCData *this)
{
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  memset(v20, 0, sizeof(v20));
  v18 = 0u;
  v19 = 0u;
  sub_100000FC0(&v18);
  v2 = sub_1000017A0(&v19);
  v3 = this + 8;
  v16[0] = this + 8;
  v16[1] = CTParser::kRemoteServiceTypeKey[0];
  sub_100001264(v16, &v17);
  v4 = xpc::dyn_cast_or_default();
  if (v4 > 2)
  {
    v5 = "???";
  }

  else
  {
    v5 = off_10001C608[v4 & 3];
  }

  strlen(v5);
  v6 = sub_1000017A0(v2);
  v7 = sub_1000017A0(v6);
  v8 = sub_1000017A0(v7);
  v13[0] = v3;
  v13[1] = CTParser::kTransactionId[0];
  sub_100001264(v13, &object);
  v9 = xpc::dyn_cast_or_default();
  std::to_string(&v15, v9);
  v10 = sub_1000017A0(v8);
  sub_1000017A0(v10);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  xpc_release(object);
  xpc_release(v17);
  std::stringbuf::str();
  *&v19 = v11;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(*(&v21 + 1));
  }

  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100000F50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, xpc_object_t object, char a22)
{
  xpc_release(object);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void (__cdecl ***sub_100000FC0(void (__cdecl ***a1)(std::basic_stringstream<char> *__hidden this)))(std::basic_stringstream<char> *__hidden this)
{
  a1[22] = 0;
  v2 = a1 + 2;
  *a1 = v4;
  *(*(v4 - 3) + a1) = v3;
  a1[1] = 0;
  v5 = (*(*a1 - 3) + a1);
  std::ios_base::init(v5, a1 + 3);
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  a1[2] = v7;
  *(*(v7 - 3) + v2) = v6;
  *a1 = v8;
  sub_1000015DC((a1 + 3), 24);
  return a1;
}

void sub_10000123C(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

xpc_object_t sub_100001264@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_dictionary_get_value(**a1, *(a1 + 8));
  *a2 = value;
  if (value)
  {
    return xpc_retain(value);
  }

  result = xpc_null_create();
  *a2 = result;
  return result;
}

void *CTParserXPCRequest::CTParserXPCRequest(void *a1, xpc_object_t *a2)
{
  v3 = *a2;
  v5 = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v5 = v3;
  }

  CTParserXPCData::CTParserXPCData(a1, &v5);
  xpc_release(v3);
  *a1 = &off_10001C578;
  return a1;
}

void CTParserXPCRequest::~CTParserXPCRequest(xpc_object_t *this)
{
  CTParserXPCData::~CTParserXPCData(this);

  operator delete();
}

void CTParserXPCResponse::setError(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v5 = xpc_string_create(v3);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  v4[0] = a1 + 8;
  v4[1] = CTParser::kXPCErrorKey[0];
  sub_100000C28(v4, &v5, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v5);
}

void CTParserXPCResponse::~CTParserXPCResponse(xpc_object_t *this)
{
  CTParserXPCData::~CTParserXPCData(this);

  operator delete();
}

uint64_t sub_10000148C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t sub_1000015DC(uint64_t a1, int a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_100001698(a1);
  return a1;
}

void sub_100001670(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_100001698(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t sub_1000017A0(uint64_t a1)
{
  std::ostream::sentry::sentry();
  std::ostream::sentry::~sentry();
  return a1;
}

void sub_1000018E4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1000018C4);
}

uint64_t sub_10000194C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      __b[0] = 0;
      __b[1] = 0;
      v18 = 0;
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100001B3C();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v18) = v12;
      memset(__b, __c, v12);
      *(__b + v12) = 0;
      if (v18 >= 0)
      {
        v13 = __b;
      }

      else
      {
        v13 = __b[0];
      }

      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__b[0]);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_100001B20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100001B54(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100001BB0(exception, a1);
}

std::logic_error *sub_100001BB0(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_100001BE4(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10001C678;
  operator new();
}

void sub_100001C88(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100001D8C(v3);
  }

  _Unwind_Resume(exception_object);
}

void MTSmsDetailsSerialized::~MTSmsDetailsSerialized(MTSmsDetailsSerialized *this)
{
  *this = off_10001C678;
  v1 = *(this + 2);
  if (v1)
  {
    sub_100001D8C(v1);
  }
}

{
  *this = off_10001C678;
  v1 = *(this + 2);
  if (v1)
  {
    sub_100001D8C(v1);
  }

  operator delete();
}

void sub_100001D8C(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void *sub_100001DF8(void *a1)
{
  *a1 = off_10001C678;
  v2 = a1[2];
  if (v2)
  {
    sub_100001D8C(v2);
  }

  return a1;
}

void sub_100001E44(void *a1)
{
  *a1 = off_10001C678;
  v1 = a1[2];
  if (v1)
  {
    sub_100001D8C(v1);
  }

  operator delete();
}

void sub_100001ED0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10001C698;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *C2KSmsPduDecoderSerialized::C2KSmsPduDecoderSerialized(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100001FA8(a1, &v5);
  if (v6)
  {
    sub_100001D8C(v6);
  }

  *a1 = off_10001C6E8;
  return a1;
}

void *sub_100001FA8(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10001C7C0;
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v5 = a1[2];
    a1[1] = v4;
    a1[2] = v3;
    if (v5)
    {
      sub_100001D8C(v5);
    }
  }

  else
  {
    a1[1] = v4;
    a1[2] = 0;
  }

  return a1;
}

void C2KSmsPduDecoderSerialized::~C2KSmsPduDecoderSerialized(C2KSmsPduDecoderSerialized *this)
{
  *this = off_10001C7C0;
  v1 = *(this + 2);
  if (v1)
  {
    sub_100001D8C(v1);
  }
}

{
  *this = off_10001C7C0;
  v1 = *(this + 2);
  if (v1)
  {
    sub_100001D8C(v1);
  }

  operator delete();
}

void *C2KVmnInfoSerialized::C2KVmnInfoSerialized(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10000214C(a1, &v5);
  if (v6)
  {
    sub_100001D8C(v6);
  }

  *a1 = off_10001C708;
  return a1;
}

void *sub_10000214C(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10001C830;
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v5 = a1[2];
    a1[1] = v4;
    a1[2] = v3;
    if (v5)
    {
      sub_100001D8C(v5);
    }
  }

  else
  {
    a1[1] = v4;
    a1[2] = 0;
  }

  return a1;
}

void C2KVmnInfoSerialized::~C2KVmnInfoSerialized(C2KVmnInfoSerialized *this)
{
  *this = off_10001C830;
  v1 = *(this + 2);
  if (v1)
  {
    sub_100001D8C(v1);
  }
}

{
  *this = off_10001C830;
  v1 = *(this + 2);
  if (v1)
  {
    sub_100001D8C(v1);
  }

  operator delete();
}

void *C2KVmnAckInfoSerialized::C2KVmnAckInfoSerialized(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000022F0(a1, &v5);
  if (v6)
  {
    sub_100001D8C(v6);
  }

  *a1 = off_10001C728;
  return a1;
}

void *sub_1000022F0(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10001C8A0;
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v5 = a1[2];
    a1[1] = v4;
    a1[2] = v3;
    if (v5)
    {
      sub_100001D8C(v5);
    }
  }

  else
  {
    a1[1] = v4;
    a1[2] = 0;
  }

  return a1;
}

void C2KVmnAckInfoSerialized::~C2KVmnAckInfoSerialized(C2KVmnAckInfoSerialized *this)
{
  *this = off_10001C8A0;
  v1 = *(this + 2);
  if (v1)
  {
    sub_100001D8C(v1);
  }
}

{
  *this = off_10001C8A0;
  v1 = *(this + 2);
  if (v1)
  {
    sub_100001D8C(v1);
  }

  operator delete();
}

void *sub_10000241C(void *a1)
{
  *a1 = off_10001C7C0;
  v2 = a1[2];
  if (v2)
  {
    sub_100001D8C(v2);
  }

  return a1;
}

void sub_100002468(void *a1)
{
  *a1 = off_10001C7C0;
  v1 = a1[2];
  if (v1)
  {
    sub_100001D8C(v1);
  }

  operator delete();
}

void *sub_100002530(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10001C7E0;
  C2KSmsPduDecoder::C2KSmsPduDecoder((a1 + 3));
  return a1;
}

void sub_1000025AC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10001C7E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100002628(void *a1)
{
  *a1 = off_10001C830;
  v2 = a1[2];
  if (v2)
  {
    sub_100001D8C(v2);
  }

  return a1;
}

void sub_100002674(void *a1)
{
  *a1 = off_10001C830;
  v1 = a1[2];
  if (v1)
  {
    sub_100001D8C(v1);
  }

  operator delete();
}

void sub_100002700(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10001C850;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10000277C(void *a1)
{
  *a1 = off_10001C8A0;
  v2 = a1[2];
  if (v2)
  {
    sub_100001D8C(v2);
  }

  return a1;
}

void sub_1000027C8(void *a1)
{
  *a1 = off_10001C8A0;
  v1 = a1[2];
  if (v1)
  {
    sub_100001D8C(v1);
  }

  operator delete();
}

void sub_100002854(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10001C8C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1000028D0(void *a1)
{
  *a1 = off_10001C910;
  ctu::OsLogLogger::OsLogLogger((a1 + 1), off_100020030, "sms.service");
  return a1;
}

void sub_100002940(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  sub_1000054C0();
}

void sub_100002FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, char a10, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a2)
  {
    sub_100001478(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1000031C0(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100001B3C();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_100003278(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  sub_1000057C8();
}

void sub_1000034BC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  std::ios::~ios();
  if (*(v19 - 81) < 0)
  {
    operator delete(*(v19 - 104));
  }

  v22 = *(v19 - 80);
  if (v22)
  {
    *(v19 - 72) = v22;
    operator delete(v22);
  }

  if (a2 != 2 && a2 != 1)
  {
    v23 = *(v18 + 8);
    if (v23)
    {
      sub_100001D8C(v23);
    }

    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1000034A4);
}

void sub_100003594(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v7 = *a2;
  v8 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SmsPduDecoderSerialized::SmsPduDecoderSerialized(v9, &v7);
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  memset(v19, 0, sizeof(v19));
  sub_1000073C4(&v18);
  memset(v17, 0, sizeof(v17));
  memset(v16, 0, sizeof(v16));
  sub_100007680(v16, &v18, 0);
  v4 = sub_100004874();
  boost::archive::detail::basic_oarchive::save_object(v16, v9, v4);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  std::stringbuf::str();
  v5 = SHIBYTE(v15);
  if ((SHIBYTE(v15) & 0x8000000000000000) != 0)
  {
    v6 = v13;
    v5 = v14;
  }

  else
  {
    v6 = &v13;
  }

  __p = 0;
  v11 = 0;
  v12 = 0;
  sub_100007DB8(&__p, v6, v6 + v5, v5);
  xpc_dictionary_set_data(*(a1 + 8), ("23SmsPduDecoderSerialized" & 0x7FFFFFFFFFFFFFFFLL), __p, v11 - __p);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v13);
  }

  boost::archive::detail::basic_oarchive::~basic_oarchive(v16);
  boost::archive::basic_text_oprimitive<std::ostream>::~basic_text_oprimitive(v17);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(*(&v20 + 1));
  }

  std::locale::~locale(v19);
  std::ostream::~ostream();
  std::ios::~ios();
  SmsPduDecoderSerialized::~SmsPduDecoderSerialized(v9);
  if (v8)
  {
    sub_100001D8C(v8);
  }
}

void sub_1000037F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  boost::archive::detail::basic_oarchive::~basic_oarchive(&a24);
  boost::archive::basic_text_oprimitive<std::ostream>::~basic_text_oprimitive(&a30);
  sub_100007560(&a40);
  if (a2 == 2 || a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1000037D0);
  }

  SmsPduDecoderSerialized::~SmsPduDecoderSerialized(&a12);
  if (a11)
  {
    sub_100001D8C(a11);
  }

  _Unwind_Resume(a1);
}

void sub_1000038B8(uint64_t a1, uint64_t a2, void **a3)
{
  v5 = *a3;
  v7 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    v7 = xpc_null_create();
  }

  v6[0] = a1 + 8;
  v6[1] = a2;
  sub_100000C28(v6, &v7, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v7);
}

void sub_100003938(uint64_t a1@<X0>, const char *a2@<X1>, void *a3@<X8>)
{
  v6 = a1 + 8;
  v5 = *(a1 + 8);
  *a3 = 0;
  a3[1] = 0;
  if (xpc_dictionary_get_value(v5, a2))
  {
    v10[0] = v6;
    v10[1] = a2;
    sub_100001264(v10, &object);
    v7 = xpc_null_create();
    v8 = object;
    v12 = object;
    if (object && xpc_get_type(object) == &_xpc_type_dictionary)
    {
      xpc_retain(v8);
    }

    else
    {
      v8 = xpc_null_create();
      v12 = v8;
    }

    if (xpc_get_type(v8) != &_xpc_type_dictionary)
    {
      if (v7)
      {
        xpc_retain(v7);
        v9 = v7;
      }

      else
      {
        v9 = xpc_null_create();
      }

      v12 = v9;
      xpc_release(v8);
    }

    xpc_release(v7);
    sub_10000AEBC(a3, &v12);
    xpc_release(v12);
    v12 = 0;
    xpc_release(object);
  }
}

void sub_100003A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(a11);
  sub_100003DD8(v12);
  _Unwind_Resume(a1);
}

void sub_100003AB4(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v7 = *a2;
  v8 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  C2KSmsPduDecoderSerialized::C2KSmsPduDecoderSerialized(v9, &v7);
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  memset(v19, 0, sizeof(v19));
  sub_1000073C4(&v18);
  memset(v17, 0, sizeof(v17));
  memset(v16, 0, sizeof(v16));
  sub_100007680(v16, &v18, 0);
  v4 = sub_100005374();
  boost::archive::detail::basic_oarchive::save_object(v16, v9, v4);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  std::stringbuf::str();
  v5 = SHIBYTE(v15);
  if ((SHIBYTE(v15) & 0x8000000000000000) != 0)
  {
    v6 = v13;
    v5 = v14;
  }

  else
  {
    v6 = &v13;
  }

  __p = 0;
  v11 = 0;
  v12 = 0;
  sub_100007DB8(&__p, v6, v6 + v5, v5);
  xpc_dictionary_set_data(*(a1 + 8), ("26C2KSmsPduDecoderSerialized" & 0x7FFFFFFFFFFFFFFFLL), __p, v11 - __p);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v13);
  }

  boost::archive::detail::basic_oarchive::~basic_oarchive(v16);
  boost::archive::basic_text_oprimitive<std::ostream>::~basic_text_oprimitive(v17);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(*(&v20 + 1));
  }

  std::locale::~locale(v19);
  std::ostream::~ostream();
  std::ios::~ios();
  C2KSmsPduDecoderSerialized::~C2KSmsPduDecoderSerialized(v9);
  if (v8)
  {
    sub_100001D8C(v8);
  }
}

void sub_100003D18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  boost::archive::detail::basic_oarchive::~basic_oarchive(&a24);
  boost::archive::basic_text_oprimitive<std::ostream>::~basic_text_oprimitive(&a30);
  sub_100007560(&a40);
  if (a2 == 2 || a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x100003CF0);
  }

  C2KSmsPduDecoderSerialized::~C2KSmsPduDecoderSerialized(&a12);
  if (a11)
  {
    sub_100001D8C(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100003DD8(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    xpc_release(*a1);
    *a1 = 0;
  }

  return a1;
}

uint64_t sub_100003E18(void *a1)
{
  *a1 = off_10001C910;
  ctu::OsLogLogger::~OsLogLogger((a1 + 1));

  return nullsub_1(a1);
}

void sub_100003E6C(void *a1)
{
  *a1 = off_10001C910;
  ctu::OsLogLogger::~OsLogLogger((a1 + 1));
  nullsub_1(a1);

  operator delete();
}

void *sub_100003ED4()
{
  if (byte_100020250 == 1)
  {
    sub_1000149F4();
  }

  if ((atomic_load_explicit(&qword_100020248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100020248))
  {
    sub_1000060F0(&unk_100020228);
    __cxa_atexit(sub_1000060C4, &unk_100020228, &_mh_execute_header);
    __cxa_guard_release(&qword_100020248);
  }

  return &unk_100020228;
}

void *sub_100003F84()
{
  if (byte_100020280 == 1)
  {
    sub_1000149F4();
  }

  if ((atomic_load_explicit(&qword_100020278, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100020278))
  {
    sub_100006844(&unk_100020258);
    __cxa_atexit(sub_100006818, &unk_100020258, &_mh_execute_header);
    __cxa_guard_release(&qword_100020278);
  }

  return &unk_100020258;
}

void *sub_100004034()
{
  if (byte_1000202A8 == 1)
  {
    sub_1000149F4();
  }

  if ((atomic_load_explicit(&qword_1000202A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000202A0))
  {
    sub_100006FCC(qword_100020288);
    __cxa_atexit(sub_100006FA0, qword_100020288, &_mh_execute_header);
    __cxa_guard_release(&qword_1000202A0);
  }

  return qword_100020288;
}

void *sub_1000040E4()
{
  if (byte_1000202D0 == 1)
  {
    sub_1000149F4();
  }

  if ((atomic_load_explicit(&qword_1000202C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000202C8))
  {
    sub_100007120(qword_1000202B0);
    __cxa_atexit(sub_1000070F4, qword_1000202B0, &_mh_execute_header);
    __cxa_guard_release(&qword_1000202C8);
  }

  return qword_1000202B0;
}

void *sub_100004194()
{
  if (byte_100020300 == 1)
  {
    sub_1000149F4();
  }

  if ((atomic_load_explicit(&qword_1000202F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000202F8))
  {
    sub_100007E58(&unk_1000202D8);
    __cxa_atexit(sub_100007E2C, &unk_1000202D8, &_mh_execute_header);
    __cxa_guard_release(&qword_1000202F8);
  }

  return &unk_1000202D8;
}

void *sub_100004244()
{
  if (byte_100020328 == 1)
  {
    sub_1000149F4();
  }

  if ((atomic_load_explicit(&qword_100020320, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100020320))
  {
    sub_100009460(qword_100020308);
    __cxa_atexit(sub_100009434, qword_100020308, &_mh_execute_header);
    __cxa_guard_release(&qword_100020320);
  }

  return qword_100020308;
}

void *sub_1000042F4()
{
  if (byte_100020358 == 1)
  {
    sub_1000149F4();
  }

  if ((atomic_load_explicit(&qword_100020350, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100020350))
  {
    sub_1000095AC(&unk_100020330);
    __cxa_atexit(sub_100009580, &unk_100020330, &_mh_execute_header);
    __cxa_guard_release(&qword_100020350);
  }

  return &unk_100020330;
}

void *sub_1000043A4()
{
  if (byte_100020380 == 1)
  {
    sub_1000149F4();
  }

  if ((atomic_load_explicit(&qword_100020378, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100020378))
  {
    sub_100009940(qword_100020360);
    __cxa_atexit(sub_100009914, qword_100020360, &_mh_execute_header);
    __cxa_guard_release(&qword_100020378);
  }

  return qword_100020360;
}

void *sub_100004454()
{
  if (byte_1000203B0 == 1)
  {
    sub_1000149F4();
  }

  if ((atomic_load_explicit(&qword_1000203A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000203A8))
  {
    sub_100009A8C(&unk_100020388);
    __cxa_atexit(sub_100009A60, &unk_100020388, &_mh_execute_header);
    __cxa_guard_release(&qword_1000203A8);
  }

  return &unk_100020388;
}

void *sub_100004504()
{
  if (byte_1000203E0 == 1)
  {
    sub_1000149F4();
  }

  if ((atomic_load_explicit(&qword_1000203D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000203D8))
  {
    sub_10000A120(&unk_1000203B8);
    __cxa_atexit(sub_10000A0F4, &unk_1000203B8, &_mh_execute_header);
    __cxa_guard_release(&qword_1000203D8);
  }

  return &unk_1000203B8;
}

void *sub_1000045B4()
{
  if (byte_100020408 == 1)
  {
    sub_1000149F4();
  }

  if ((atomic_load_explicit(&qword_100020400, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100020400))
  {
    sub_10000A4F0(qword_1000203E8);
    __cxa_atexit(sub_10000A4C4, qword_1000203E8, &_mh_execute_header);
    __cxa_guard_release(&qword_100020400);
  }

  return qword_1000203E8;
}

void *sub_100004664()
{
  if (byte_100020430 == 1)
  {
    sub_1000149F4();
  }

  if ((atomic_load_explicit(&qword_100020428, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100020428))
  {
    sub_10000A640(qword_100020410);
    __cxa_atexit(sub_10000A614, qword_100020410, &_mh_execute_header);
    __cxa_guard_release(&qword_100020428);
  }

  return qword_100020410;
}

void *sub_100004714()
{
  if (byte_100020460 == 1)
  {
    sub_1000149F4();
  }

  if ((atomic_load_explicit(&qword_100020458, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100020458))
  {
    sub_10000A78C(&unk_100020438);
    __cxa_atexit(sub_10000A760, &unk_100020438, &_mh_execute_header);
    __cxa_guard_release(&qword_100020458);
  }

  return &unk_100020438;
}

void *sub_1000047C4()
{
  if (byte_100020488 == 1)
  {
    sub_1000149F4();
  }

  if ((atomic_load_explicit(&qword_100020480, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100020480))
  {
    sub_10000AC50(qword_100020468);
    __cxa_atexit(sub_10000AC24, qword_100020468, &_mh_execute_header);
    __cxa_guard_release(&qword_100020480);
  }

  return qword_100020468;
}

void *sub_100004874()
{
  if (byte_1000204B0 == 1)
  {
    sub_1000149F4();
  }

  if ((atomic_load_explicit(&qword_1000204A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000204A8))
  {
    sub_10000AD9C(qword_100020490);
    __cxa_atexit(sub_10000AD70, qword_100020490, &_mh_execute_header);
    __cxa_guard_release(&qword_1000204A8);
  }

  return qword_100020490;
}

void *sub_100004924()
{
  if (byte_1000204E0 == 1)
  {
    sub_1000149F4();
  }

  if ((atomic_load_explicit(&qword_1000204D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000204D8))
  {
    sub_10000AFF8(&unk_1000204B8);
    __cxa_atexit(sub_10000AFCC, &unk_1000204B8, &_mh_execute_header);
    __cxa_guard_release(&qword_1000204D8);
  }

  return &unk_1000204B8;
}

void *sub_1000049D4()
{
  if (byte_100020510 == 1)
  {
    sub_1000149F4();
  }

  if ((atomic_load_explicit(&qword_100020508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100020508))
  {
    sub_10000C4D4(&unk_1000204E8);
    __cxa_atexit(sub_10000C4A8, &unk_1000204E8, &_mh_execute_header);
    __cxa_guard_release(&qword_100020508);
  }

  return &unk_1000204E8;
}

void *sub_100004A84()
{
  if (byte_100020538 == 1)
  {
    sub_1000149F4();
  }

  if ((atomic_load_explicit(&qword_100020530, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100020530))
  {
    sub_10000C918(qword_100020518);
    __cxa_atexit(sub_10000C8EC, qword_100020518, &_mh_execute_header);
    __cxa_guard_release(&qword_100020530);
  }

  return qword_100020518;
}

void *sub_100004B34()
{
  if (byte_100020568 == 1)
  {
    sub_1000149F4();
  }

  if ((atomic_load_explicit(&qword_100020560, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100020560))
  {
    sub_10000CA64(&unk_100020540);
    __cxa_atexit(sub_10000CA38, &unk_100020540, &_mh_execute_header);
    __cxa_guard_release(&qword_100020560);
  }

  return &unk_100020540;
}

void *sub_100004BE4()
{
  if (byte_100020598 == 1)
  {
    sub_1000149F4();
  }

  if ((atomic_load_explicit(&qword_100020590, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100020590))
  {
    sub_10000CEB0(&unk_100020570);
    __cxa_atexit(sub_10000CE84, &unk_100020570, &_mh_execute_header);
    __cxa_guard_release(&qword_100020590);
  }

  return &unk_100020570;
}

void *sub_100004C94()
{
  if (byte_1000205C0 == 1)
  {
    sub_1000149F4();
  }

  if ((atomic_load_explicit(&qword_1000205B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000205B8))
  {
    sub_10000D1D8(qword_1000205A0);
    __cxa_atexit(sub_10000D1AC, qword_1000205A0, &_mh_execute_header);
    __cxa_guard_release(&qword_1000205B8);
  }

  return qword_1000205A0;
}

void *sub_100004D44()
{
  if (byte_1000205E8 == 1)
  {
    sub_1000149F4();
  }

  if ((atomic_load_explicit(&qword_1000205E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000205E0))
  {
    sub_10000D324(qword_1000205C8);
    __cxa_atexit(sub_10000D2F8, qword_1000205C8, &_mh_execute_header);
    __cxa_guard_release(&qword_1000205E0);
  }

  return qword_1000205C8;
}

void *sub_100004DF4()
{
  if (byte_100020618 == 1)
  {
    sub_1000149F4();
  }

  if ((atomic_load_explicit(&qword_100020610, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100020610))
  {
    sub_10000D470(&unk_1000205F0);
    __cxa_atexit(sub_10000D444, &unk_1000205F0, &_mh_execute_header);
    __cxa_guard_release(&qword_100020610);
  }

  return &unk_1000205F0;
}

void *sub_100004EA4()
{
  if (byte_100020640 == 1)
  {
    sub_1000149F4();
  }

  if ((atomic_load_explicit(&qword_100020638, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100020638))
  {
    sub_10000D818(qword_100020620);
    __cxa_atexit(sub_10000D7EC, qword_100020620, &_mh_execute_header);
    __cxa_guard_release(&qword_100020638);
  }

  return qword_100020620;
}

void *sub_100004F54()
{
  if (byte_100020670 == 1)
  {
    sub_1000149F4();
  }

  if ((atomic_load_explicit(&qword_100020668, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100020668))
  {
    sub_10000D95C(&unk_100020648);
    __cxa_atexit(sub_10000D930, &unk_100020648, &_mh_execute_header);
    __cxa_guard_release(&qword_100020668);
  }

  return &unk_100020648;
}

void *sub_100005004()
{
  if (byte_100020698 == 1)
  {
    sub_1000149F4();
  }

  if ((atomic_load_explicit(&qword_100020690, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100020690))
  {
    sub_10000E02C(qword_100020678);
    __cxa_atexit(sub_10000E000, qword_100020678, &_mh_execute_header);
    __cxa_guard_release(&qword_100020690);
  }

  return qword_100020678;
}

void *sub_1000050B4()
{
  if (byte_1000206C8 == 1)
  {
    sub_1000149F4();
  }

  if ((atomic_load_explicit(&qword_1000206C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000206C0))
  {
    sub_10000E178(&unk_1000206A0);
    __cxa_atexit(sub_10000E14C, &unk_1000206A0, &_mh_execute_header);
    __cxa_guard_release(&qword_1000206C0);
  }

  return &unk_1000206A0;
}

void *sub_100005164()
{
  if (byte_1000206F8 == 1)
  {
    sub_1000149F4();
  }

  if ((atomic_load_explicit(&qword_1000206F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000206F0))
  {
    sub_10000E680(&unk_1000206D0);
    __cxa_atexit(sub_10000E654, &unk_1000206D0, &_mh_execute_header);
    __cxa_guard_release(&qword_1000206F0);
  }

  return &unk_1000206D0;
}

void *sub_100005214()
{
  if (byte_100020720 == 1)
  {
    sub_1000149F4();
  }

  if ((atomic_load_explicit(&qword_100020718, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100020718))
  {
    sub_10000E9F4(qword_100020700);
    __cxa_atexit(sub_10000E9C8, qword_100020700, &_mh_execute_header);
    __cxa_guard_release(&qword_100020718);
  }

  return qword_100020700;
}

void *sub_1000052C4()
{
  if (byte_100020748 == 1)
  {
    sub_1000149F4();
  }

  if ((atomic_load_explicit(&qword_100020740, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100020740))
  {
    sub_10000EB40(qword_100020728);
    __cxa_atexit(sub_10000EB14, qword_100020728, &_mh_execute_header);
    __cxa_guard_release(&qword_100020740);
  }

  return qword_100020728;
}

void *sub_100005374()
{
  if (byte_100020770 == 1)
  {
    sub_1000149F4();
  }

  if ((atomic_load_explicit(&qword_100020768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100020768))
  {
    sub_10000EC8C(qword_100020750);
    __cxa_atexit(sub_10000EC60, qword_100020750, &_mh_execute_header);
    __cxa_guard_release(&qword_100020768);
  }

  return qword_100020750;
}

const void **sub_100005424(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_100005458(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_10000548C()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void *sub_10000551C(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10001C950;
  CTParserXPCResponse::CTParserXPCResponse((a1 + 3));
  return a1;
}

void sub_100005598(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10001C950;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void (__cdecl ***sub_100005614(void (__cdecl ***a1)(std::istringstream *__hidden this), const std::string *a2, int a3))(std::istringstream *__hidden this)
{
  a1[21] = 0;
  *a1 = v7;
  *(*(v7 - 3) + a1) = v6;
  a1[1] = 0;
  v8 = (*(*a1 - 3) + a1);
  std::ios_base::init(v8, a1 + 2);
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  sub_100005AA4((a1 + 2), a2, a3 | 8);
  return a1;
}

void sub_100005770(_Unwind_Exception *a1)
{
  std::istream::~istream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

boost::archive::detail::basic_iarchive *sub_100005798(boost::archive::detail::basic_iarchive *a1)
{
  boost::archive::detail::basic_iarchive::~basic_iarchive(a1);
  boost::archive::basic_text_iprimitive<std::istream>::~basic_text_iprimitive(v2 + 40);
  return a1;
}

void sub_100005824(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10001C9A0;
  MTSmsDetailsSerialized::MTSmsDetailsSerialized((a1 + 3));
}

void sub_1000058A0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10001C9A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10000591C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_100005990(result, a4);
  }

  return result;
}

void sub_100005974(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100005990(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_1000059E0();
}

_BYTE *sub_1000059F8(_BYTE *result, char *a2, char *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100001B3C();
  }

  v5 = result;
  if (a4 > 0x16)
  {
    operator new();
  }

  result[23] = a4;
  while (a2 != a3)
  {
    v6 = *a2++;
    *v5++ = v6;
  }

  *v5 = 0;
  return result;
}

uint64_t sub_100005AA4(uint64_t a1, const std::string *a2, int a3)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  sub_100001698(a1);
  return a1;
}

void sub_100005B50(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

boost::archive::detail::basic_iarchive *sub_100005B78(boost::archive::detail::basic_iarchive *a1, uint64_t *a2, int a3)
{
  v3 = a3;
  *boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::text_iarchive_impl(a1, a2, a3) = off_10001C9F0;
  if ((v3 & 1) == 0)
  {
    boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::init(a1);
  }

  return a1;
}

void sub_100005BCC(_Unwind_Exception *a1)
{
  boost::archive::detail::basic_iarchive::~basic_iarchive(v1);
  boost::archive::basic_text_iprimitive<std::istream>::~basic_text_iprimitive(v1 + 40);
  _Unwind_Resume(a1);
}

void *sub_100005BE8(uint64_t a1, _DWORD *a2)
{
  result = sub_100005C98((a1 + 40));
  *a2 = 0;
  return result;
}

void sub_100005C48(boost::archive::detail::basic_iarchive *a1)
{
  boost::archive::detail::basic_iarchive::~basic_iarchive(a1);
  boost::archive::basic_text_iprimitive<std::istream>::~basic_text_iprimitive(v1 + 40);

  operator delete();
}

void *sub_100005C98(uint64_t *a1)
{
  v1 = *a1;
  result = std::istream::operator>>();
  if ((*(result + *(*result - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v3, 8, 0, 0);
    sub_100005D4C(v3);
  }

  return result;
}

void sub_100005D4C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x90uLL);
  boost::archive::archive_exception::archive_exception(exception, a1);
}

void *sub_100005D8C(uint64_t *a1)
{
  v1 = *a1;
  result = std::istream::operator>>();
  if ((*(result + *(*result - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v3, 8, 0, 0);
    sub_100005D4C(v3);
  }

  return result;
}

void *sub_100005E40(uint64_t *a1)
{
  v1 = *a1;
  result = std::istream::operator>>();
  if ((*(result + *(*result - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v3, 8, 0, 0);
    sub_100005D4C(v3);
  }

  return result;
}

void *sub_100005EF4(uint64_t *a1)
{
  v1 = *a1;
  result = std::istream::operator>>();
  if ((*(result + *(*result - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v3, 8, 0, 0);
    sub_100005D4C(v3);
  }

  return result;
}

uint64_t sub_100005FA8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

void sub_1000060C4(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001CAB0;
  byte_100020250 = 1;
  sub_1000061EC(a1);
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *sub_1000060F0(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  *sub_10000617C(a1) = off_10001CAB0;
  if (byte_100020250 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *sub_10000617C(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  v2 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(a1, 0);
  *v2 = off_10001CB58;
  boost::serialization::extended_type_info::key_register(a1);
  return a1;
}

void sub_1000061EC(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001CB58;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

void sub_10000624C(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001CAB0;
  byte_100020250 = 1;
  sub_1000061EC(a1);

  operator delete();
}

uint64_t sub_1000062AC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    return *(v1 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

void sub_1000062C8(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      sub_100014A20();
    }

    if (a2 == 1)
    {
      sub_100014A20();
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        sub_100014A20();
      case 3:
        sub_100014A20();
      case 4:
        sub_100014A20();
    }
  }

  sub_100014A4C();
}

uint64_t sub_100006324(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void sub_100006358(boost::serialization::extended_type_info *a1)
{
  sub_1000061EC(a1);

  operator delete();
}

void sub_100006390(uint64_t a1, char **a2, uint64_t a3)
{
  v4 = sub_1000067BC(a2);

  sub_1000063D8(a3, v4);
}

void sub_1000063D8(uint64_t a1, boost::archive::detail::basic_iarchive *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000064D0(a1, a2, v5);
  sub_100006520(a1, a2, v5 + 1);
  sub_100006570(a1, a2, v5 + 2);
  sub_1000065C0(a1, a2, (v5 + 4));
  sub_100006618(a1, a2);
  sub_100006618(a1, a2);
  if (v4)
  {

    sub_100001D8C(v4);
  }
}

void sub_1000064B8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100001D8C(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000064D0(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = sub_100006654((a2 + 40));
  *a3 = 0;
  return result;
}

void sub_100006510(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x100006500);
}

void *sub_100006520(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = sub_100006654((a2 + 40));
  *a3 = 0;
  return result;
}

void sub_100006560(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x100006550);
}

void *sub_100006570(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = sub_100006654((a2 + 40));
  *a3 = 0;
  return result;
}

void sub_1000065B0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1000065A0);
}

void sub_1000065F8(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_100006638(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void *sub_100006654(uint64_t *a1)
{
  v1 = *a1;
  result = std::istream::operator>>();
  if ((*(result + *(*result - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v3, 8, 0, 0);
    sub_100005D4C(v3);
  }

  return result;
}

void *sub_100006708(uint64_t *a1)
{
  v1 = *a1;
  result = std::istream::operator>>();
  if ((*(result + *(*result - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v3, 8, 0, 0);
    sub_100005D4C(v3);
  }

  return result;
}

void *sub_1000067BC(char **a1)
{
  v1 = **a1;
  if (!result)
  {
    __cxa_bad_cast();
  }

  return result;
}

void sub_100006818(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001CBA0;
  byte_100020280 = 1;
  sub_100006940(a1);
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *sub_100006844(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  *sub_1000068D0(a1) = off_10001CBA0;
  if (byte_100020280 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *sub_1000068D0(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  v2 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(a1, 0);
  *v2 = off_10001CC48;
  boost::serialization::extended_type_info::key_register(a1);
  return a1;
}

void sub_100006940(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001CC48;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

void sub_1000069A0(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001CBA0;
  byte_100020280 = 1;
  sub_100006940(a1);

  operator delete();
}

void sub_100006A00(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      sub_100014A20();
    }

    if (a2 == 1)
    {
      sub_100014A20();
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        sub_100014A20();
      case 3:
        sub_100014A20();
      case 4:
        sub_100014A20();
    }
  }

  sub_100014A4C();
}

void sub_100006A68(boost::serialization::extended_type_info *a1)
{
  sub_100006940(a1);

  operator delete();
}

void **sub_100006AA0(void **result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (v2)
    {
      v1[1] = v2;
      operator delete(v2);
    }

    operator delete();
  }

  return result;
}

void sub_100006AFC(uint64_t a1, char **a2, void *a3)
{
  v4 = sub_1000067BC(a2);
  v7 = 0;
  boost::archive::detail::basic_iarchive::get_library_version(v4, &v7);
  v6 = 0;
  sub_100006D00(v4 + 5);
  if (v7 >= 4u)
  {
    sub_100005C98(v4 + 5);
  }

  sub_100006BA4(a3, v6);
  v5 = v6;
  sub_100006C6C(v4, a3, &v5);
}

void *sub_100006BA4(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_1000059E0();
  }

  return result;
}

void sub_100006C6C(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v6 = *a3;
  i = *a2;
  v8 = *(a2 + 8) - *a2;
  if (*a3 <= v8)
  {
    if (*a3 < v8)
    {
      *(a2 + 8) = &i[v6];
    }

    goto LABEL_7;
  }

  sub_100006DB4(a2, *a3 - v8);
  for (i = *a2; ; ++i)
  {
    v6 = *a3;
LABEL_7:
    *a3 = v6 - 1;
    if (!v6)
    {
      break;
    }

    sub_100006EEC((a1 + 40));
    *i = 0;
  }
}

void *sub_100006D00(uint64_t *a1)
{
  v1 = *a1;
  result = std::istream::operator>>();
  if ((*(result + *(*result - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v3, 8, 0, 0);
    sub_100005D4C(v3);
  }

  return result;
}

void sub_100006DB4(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      sub_1000059E0();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void *sub_100006EEC(uint64_t *a1)
{
  v1 = *a1;
  result = std::istream::operator>>();
  if ((*(result + *(*result - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v3, 8, 0, 0);
    sub_100005D4C(v3);
  }

  return result;
}

void sub_100006FA0(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = off_10001CCA0;
  byte_1000202A8 = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void *sub_100006FCC(void *a1)
{
  v2 = sub_100003F84();
  boost::archive::detail::basic_iserializer::basic_iserializer(a1, v2);
  *a1 = off_10001CCA0;
  if (byte_1000202A8 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void sub_100007064(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = off_10001CCA0;
  byte_1000202A8 = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  operator delete();
}

void sub_1000070F4(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = off_10001CD20;
  byte_1000202D0 = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void *sub_100007120(void *a1)
{
  v2 = sub_100003ED4();
  boost::archive::detail::basic_iserializer::basic_iserializer(a1, v2);
  *a1 = off_10001CD20;
  if (byte_1000202D0 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void sub_1000071B8(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = off_10001CD20;
  byte_1000202D0 = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  operator delete();
}

uint64_t sub_100007240(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void *sub_1000072CC(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10001CDA0;
  SmsPduDecoder::SmsPduDecoder((a1 + 3));
  return a1;
}

void sub_100007348(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10001CDA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void (__cdecl ***sub_1000073C4(void (__cdecl ***a1)(std::ostringstream *__hidden this)))(std::ostringstream *__hidden this)
{
  a1[20] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 1);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  sub_1000015DC((a1 + 1), 16);
  return a1;
}

void sub_100007508(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

boost::archive::detail::basic_oarchive *sub_100007530(boost::archive::detail::basic_oarchive *a1)
{
  boost::archive::detail::basic_oarchive::~basic_oarchive(a1);
  boost::archive::basic_text_oprimitive<std::ostream>::~basic_text_oprimitive(v2 + 48);
  return a1;
}

uint64_t sub_100007560(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  std::ios::~ios();
  return a1;
}

boost::archive::detail::basic_oarchive *sub_100007680(boost::archive::detail::basic_oarchive *a1, uint64_t *a2, int a3)
{
  v3 = a3;
  *boost::archive::text_oarchive_impl<boost::archive::text_oarchive>::text_oarchive_impl(a1, a2, a3) = off_10001CDF0;
  if ((v3 & 1) == 0)
  {
    boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::init(a1);
  }

  return a1;
}

void sub_1000076D4(_Unwind_Exception *a1)
{
  boost::archive::detail::basic_oarchive::~basic_oarchive(v1);
  boost::archive::basic_text_oprimitive<std::ostream>::~basic_text_oprimitive(v1 + 48);
  _Unwind_Resume(a1);
}

uint64_t sub_1000076F0(boost::archive::detail::basic_oarchive *a1, unsigned int *a2)
{
  boost::archive::detail::basic_oarchive::end_preamble(a1);
  v5 = *a2;
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(a1);
  v6 = 0;
  return sub_100007920(a1 + 6, &v5);
}

uint64_t sub_100007744(uint64_t a1, unsigned int *a2)
{
  *(a1 + 40) = 1;
  boost::archive::detail::basic_oarchive::end_preamble(a1);
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(a1);
  return sub_1000079E4((a1 + 48), a2);
}

uint64_t sub_100007798(boost::archive::detail::basic_oarchive *a1, unsigned int *a2)
{
  boost::archive::detail::basic_oarchive::end_preamble(a1);
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(a1);
  return sub_100007AA8(a1 + 6, a2);
}

uint64_t sub_1000077E4(boost::archive::detail::basic_oarchive *a1, __int16 *a2)
{
  boost::archive::detail::basic_oarchive::end_preamble(a1);
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(a1);
  return sub_100007B6C(a1 + 6, a2);
}

uint64_t sub_100007834(boost::archive::detail::basic_oarchive *a1, __int16 *a2)
{
  boost::archive::detail::basic_oarchive::end_preamble(a1);
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(a1);
  return sub_100007C30(a1 + 6, a2);
}

uint64_t sub_100007884(boost::archive::detail::basic_oarchive *a1, unsigned __int8 *a2)
{
  boost::archive::detail::basic_oarchive::end_preamble(a1);
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(a1);
  return sub_100007CF4(a1 + 6, a2);
}

void sub_1000078D0(boost::archive::detail::basic_oarchive *a1)
{
  boost::archive::detail::basic_oarchive::~basic_oarchive(a1);
  boost::archive::basic_text_oprimitive<std::ostream>::~basic_text_oprimitive(v1 + 48);

  operator delete();
}

uint64_t sub_100007920(void *a1, unsigned int *a2)
{
  if ((*(*a1 + *(**a1 - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
    sub_100005D4C(v4);
  }

  v2 = *a2;

  return std::ostream::operator<<();
}

uint64_t sub_1000079E4(void *a1, unsigned int *a2)
{
  if ((*(*a1 + *(**a1 - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
    sub_100005D4C(v4);
  }

  v2 = *a2;

  return std::ostream::operator<<();
}

uint64_t sub_100007AA8(void *a1, unsigned int *a2)
{
  if ((*(*a1 + *(**a1 - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
    sub_100005D4C(v4);
  }

  v2 = *a2;

  return std::ostream::operator<<();
}

uint64_t sub_100007B6C(void *a1, __int16 *a2)
{
  if ((*(*a1 + *(**a1 - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
    sub_100005D4C(v4);
  }

  v2 = *a2;

  return std::ostream::operator<<();
}

uint64_t sub_100007C30(void *a1, __int16 *a2)
{
  if ((*(*a1 + *(**a1 - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
    sub_100005D4C(v4);
  }

  v2 = *a2;

  return std::ostream::operator<<();
}

uint64_t sub_100007CF4(void *a1, unsigned __int8 *a2)
{
  if ((*(*a1 + *(**a1 - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
    sub_100005D4C(v4);
  }

  v2 = *a2;

  return std::ostream::operator<<();
}

uint64_t sub_100007DB8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_100005990(result, a4);
  }

  return result;
}

void sub_100007E10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100007E2C(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001CEC0;
  byte_100020300 = 1;
  sub_100007F54(a1);
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *sub_100007E58(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  *sub_100007EE4(a1) = off_10001CEC0;
  if (byte_100020300 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *sub_100007EE4(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  v2 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(a1, 0);
  *v2 = off_10001CF68;
  boost::serialization::extended_type_info::key_register(a1);
  return a1;
}

void sub_100007F54(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001CF68;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

void sub_100007FB4(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001CEC0;
  byte_100020300 = 1;
  sub_100007F54(a1);

  operator delete();
}

void sub_100008014(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      sub_100014A20();
    }

    if (a2 == 1)
    {
      sub_100014A20();
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        sub_100014A20();
      case 3:
        sub_100014A20();
      case 4:
        sub_100014A20();
    }
  }

  sub_100014A4C();
}

uint64_t sub_100008070(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void sub_1000080A4(boost::serialization::extended_type_info *a1)
{
  sub_100007F54(a1);

  operator delete();
}

void sub_1000080DC(uint64_t a1, char **a2, uint64_t a3)
{
  v5 = sub_100009184(a2);
  (*(*a1 + 40))(&v6, a1);
  sub_100008158(a3, v5);
}

void sub_100008158(uint64_t a1, boost::archive::detail::basic_oarchive *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1000086AC(a1, a2, (v5 + 32));
  sub_1000086EC(a1, a2, (v5 + 36));
  sub_10000872C(a1, a2, (v5 + 40));
  sub_10000872C(a1, a2, (v5 + 41));
  sub_10000872C(a1, a2, (v5 + 42));
  sub_10000872C(a1, a2, (v5 + 43));
  sub_10000872C(a1, a2, (v5 + 44));
  sub_100008768(a1, a2, v5 + 48);
  sub_100008768(a1, a2, v5 + 72);
  sub_100008828(a1, a2, (v5 + 96));
  sub_10000872C(a1, a2, (v5 + 100));
  sub_100008868(a1, a2, (v5 + 104));
  sub_1000088A4(a1, a2, (v5 + 108));
  sub_10000872C(a1, a2, (v5 + 112));
  sub_1000088A4(a1, a2, (v5 + 116));
  sub_10000872C(a1, a2, (v5 + 120));
  sub_100008868(a1, a2, (v5 + 124));
  sub_100008868(a1, a2, (v5 + 128));
  sub_100008868(a1, a2, (v5 + 132));
  sub_10000872C(a1, a2, (v5 + 136));
  sub_1000088E4(a1, a2, (v5 + 137));
  sub_100008920(a1, a2, v5 + 138);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_100008CA0();
}

void sub_1000085F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  if (a4)
  {
    sub_100001D8C(a4);
  }

  CSIDateSerialized::~CSIDateSerialized(va);
  CSIPhoneNumberSerialized::~CSIPhoneNumberSerialized(va1);
  CSIPhoneNumberSerialized::~CSIPhoneNumberSerialized((v10 - 64));
  if (v9)
  {
    sub_100001D8C(v9);
  }

  _Unwind_Resume(a1);
}

void sub_1000086DC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1000086D0);
}

void sub_10000871C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x100008710);
}

void sub_10000874C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_100008768(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a3 + 23);
  if (v5 < 0)
  {
    v3 = *a3;
    v5 = *(a3 + 8);
  }

  __p = 0;
  v8 = 0;
  v9 = 0;
  sub_100007DB8(&__p, v3, v3 + v5, v5);
  v6 = sub_100004244();
  boost::archive::detail::basic_oarchive::save_object(a2, &__p, v6);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }
}

void sub_1000087DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (a2 == 2 || a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1000087CCLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_100008858(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x10000884CLL);
}

void sub_100008888(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_1000088D4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1000088C8);
}

void sub_100008904(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_100008958(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_1000089B0(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_100008A08(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

boost::archive::detail::basic_oarchive *sub_100008A28(boost::archive::detail::basic_oarchive *a1, unsigned int *a2)
{
  boost::archive::detail::basic_oarchive::end_preamble(a1);
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(a1);
  sub_100008A78(a1 + 6, a2);
  return a1;
}

uint64_t sub_100008A78(void *a1, unsigned int *a2)
{
  if ((*(*a1 + *(**a1 - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
    sub_100005D4C(v4);
  }

  v2 = *a2;

  return std::ostream::operator<<();
}

uint64_t sub_100008B3C(boost::archive::detail::basic_oarchive *a1, unsigned __int8 *a2)
{
  boost::archive::detail::basic_oarchive::end_preamble(a1);
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(a1);
  v4 = *a2;

  return boost::archive::basic_text_oprimitive<std::ostream>::save(a1 + 6);
}

boost::archive::detail::basic_oarchive *sub_100008B84(boost::archive::detail::basic_oarchive *a1, unsigned __int8 *a2)
{
  boost::archive::detail::basic_oarchive::end_preamble(a1);
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(a1);
  v5 = *a2;
  v6 = 0;
  sub_100008BDC(a1 + 6, &v5);
  return a1;
}

uint64_t sub_100008BDC(void *a1, unsigned __int16 *a2)
{
  if ((*(*a1 + *(**a1 - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
    sub_100005D4C(v4);
  }

  v2 = *a2;

  return std::ostream::operator<<();
}

void *sub_100008D0C(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10001CFB0;
  sub_100008E68((a1 + 3), a2);
  return a1;
}

void sub_100008D88(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10001CFB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100008DDC(uint64_t a1)
{
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    v2 = *(a1 + 32);

    operator delete(v2);
  }
}

uint64_t sub_100008E68(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_100008FF0((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  if (*(a2 + 55) < 0)
  {
    sub_100008FF0((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
  }

  *(a1 + 56) = *(a2 + 56);
  if (*(a2 + 87) < 0)
  {
    sub_100008FF0((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v6 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v6;
  }

  v7 = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 88) = v7;
  if (*(a2 + 127) < 0)
  {
    sub_100008FF0((a1 + 104), *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v8 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v8;
  }

  if (*(a2 + 151) < 0)
  {
    sub_100008FF0((a1 + 128), *(a2 + 128), *(a2 + 136));
  }

  else
  {
    v9 = *(a2 + 128);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 128) = v9;
  }

  *(a1 + 152) = *(a2 + 152);
  return a1;
}

void sub_100008F8C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100008FF0(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_100001B3C();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

uint64_t sub_100009094(uint64_t a1)
{
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_100009128(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10001D000;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100009184(char **a1)
{
  v1 = **a1;
  if (!result)
  {
    __cxa_bad_cast();
  }

  return result;
}

boost::archive::detail::basic_oarchive *sub_1000091E0(uint64_t a1, char **a2, unsigned __int8 **a3)
{
  v5 = sub_100009184(a2);
  (*(*a1 + 40))(&v11, a1);
  v12 = a3[1] - *a3;
  v14 = "count";
  v15 = &v12;
  sub_1000092C8(v5, &v14);
  v13 = 0;
  v14 = "item_version";
  v15 = &v13;
  result = sub_100009318(v5, &v14);
  v7 = *a3;
  if (v12--)
  {
    do
    {
      v9 = v7 + 1;
      result = sub_100008B84(v5, v7);
      v10 = v12--;
      v7 = v9;
    }

    while (v10);
  }

  return result;
}

boost::archive::detail::basic_oarchive *sub_1000092C8(boost::archive::detail::basic_oarchive *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  boost::archive::detail::basic_oarchive::end_preamble(a1);
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(a1);
  sub_100009370(a1 + 6, v3);
  return a1;
}

boost::archive::detail::basic_oarchive *sub_100009318(boost::archive::detail::basic_oarchive *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  boost::archive::detail::basic_oarchive::end_preamble(a1);
  v5 = *v3;
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(a1);
  v6 = 0;
  sub_100007920(a1 + 6, &v5);
  return a1;
}

uint64_t sub_100009370(void *a1, uint64_t *a2)
{
  if ((*(*a1 + *(**a1 - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
    sub_100005D4C(v4);
  }

  v2 = *a2;

  return std::ostream::operator<<();
}

void sub_100009434(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = off_10001D050;
  byte_100020328 = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);
}

void *sub_100009460(void *a1)
{
  v2 = sub_100003F84();
  boost::archive::detail::basic_oserializer::basic_oserializer(a1, v2);
  *a1 = off_10001D050;
  if (byte_100020328 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void sub_1000094F8(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = off_10001D050;
  byte_100020328 = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);

  operator delete();
}

void sub_100009580(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001D0C8;
  byte_100020358 = 1;
  sub_1000096A8(a1);
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *sub_1000095AC(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  *sub_100009638(a1) = off_10001D0C8;
  if (byte_100020358 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *sub_100009638(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  v2 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(a1, 0);
  *v2 = off_10001D170;
  boost::serialization::extended_type_info::key_register(a1);
  return a1;
}

void sub_1000096A8(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001D170;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

void sub_100009708(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001D0C8;
  byte_100020358 = 1;
  sub_1000096A8(a1);

  operator delete();
}

void sub_100009768(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      sub_100014A20();
    }

    if (a2 == 1)
    {
      sub_100014A20();
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        sub_100014A20();
      case 3:
        sub_100014A20();
      case 4:
        sub_100014A20();
    }
  }

  sub_100014A4C();
}

void sub_1000097C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

void sub_1000097EC(boost::serialization::extended_type_info *a1)
{
  sub_1000096A8(a1);

  operator delete();
}

boost::archive::detail::basic_oarchive *sub_100009824(uint64_t a1, char **a2, uint64_t a3)
{
  v5 = sub_100009184(a2);
  (*(*a1 + 40))(v7, a1);
  v8 = "first";
  v9 = a3;
  sub_1000098C4(v5, &v8);
  v8 = "second";
  v9 = a3 + 2;
  return sub_1000098C4(v5, &v8);
}

boost::archive::detail::basic_oarchive *sub_1000098C4(boost::archive::detail::basic_oarchive *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  boost::archive::detail::basic_oarchive::end_preamble(a1);
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(a1);
  sub_100008BDC(a1 + 6, v3);
  return a1;
}

void sub_100009914(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = off_10001D1C8;
  byte_100020380 = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);
}

void *sub_100009940(void *a1)
{
  v2 = sub_1000042F4();
  boost::archive::detail::basic_oserializer::basic_oserializer(a1, v2);
  *a1 = off_10001D1C8;
  if (byte_100020380 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void sub_1000099D8(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = off_10001D1C8;
  byte_100020380 = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);

  operator delete();
}

void sub_100009A60(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001D240;
  byte_1000203B0 = 1;
  sub_100009B88(a1);
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *sub_100009A8C(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  *sub_100009B18(a1) = off_10001D240;
  if (byte_1000203B0 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *sub_100009B18(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  v2 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(a1, 0);
  *v2 = off_10001D2E8;
  boost::serialization::extended_type_info::key_register(a1);
  return a1;
}

void sub_100009B88(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001D2E8;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

void sub_100009BE8(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001D240;
  byte_1000203B0 = 1;
  sub_100009B88(a1);

  operator delete();
}

void sub_100009C48(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      sub_100014A20();
    }

    if (a2 == 1)
    {
      sub_100014A20();
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        sub_100014A20();
      case 3:
        sub_100014A20();
      case 4:
        sub_100014A20();
    }
  }

  sub_100014A4C();
}

uint64_t sub_100009CA4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void sub_100009CD8(boost::serialization::extended_type_info *a1)
{
  sub_100009B88(a1);

  operator delete();
}

void sub_100009D10(uint64_t a1, char **a2, uint64_t a3)
{
  v5 = sub_100009184(a2);
  (*(*a1 + 40))(&v6, a1);
  sub_100009D8C(a3, v5);
}

void sub_100009D8C(uint64_t a1, boost::archive::detail::basic_oarchive *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100009EE4(a1, a2, v5);
  sub_100009F24(a1, a2, (v5 + 4));
  sub_100009F60(a1, a2, v5 + 8);
  sub_100009F60(a1, a2, v5 + 32);
  v6 = 0;
  if (*(v5 + 60) == 1)
  {
    HIDWORD(v6) = *(v5 + 56);
    LOBYTE(v6) = 1;
  }

  sub_10000A020(a1, a2, &v6);
  sub_100009F60(a1, a2, v5 + 104);
  sub_100009F60(a1, a2, v5 + 128);
  sub_10000A078(a1, a2, (v5 + 96));
  sub_10000A078(a1, a2, (v5 + 97));
  sub_10000A0B4(a1, a2, (v5 + 152));
  if (v4)
  {
    sub_100001D8C(v4);
  }
}

void sub_100009EC8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100001D8C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100009F14(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x100009F08);
}

void sub_100009F44(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_100009F60(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a3 + 23);
  if (v5 < 0)
  {
    v3 = *a3;
    v5 = *(a3 + 8);
  }

  __p = 0;
  v8 = 0;
  v9 = 0;
  sub_100007DB8(&__p, v3, v3 + v5, v5);
  v6 = sub_100004244();
  boost::archive::detail::basic_oarchive::save_object(a2, &__p, v6);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }
}

void sub_100009FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (a2 == 2 || a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x100009FC4);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000A058(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_10000A098(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_10000A0E4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x10000A0D8);
}

void sub_10000A0F4(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001D330;
  byte_1000203E0 = 1;
  sub_10000A21C(a1);
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *sub_10000A120(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  *sub_10000A1AC(a1) = off_10001D330;
  if (byte_1000203E0 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *sub_10000A1AC(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  v2 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(a1, 0);
  *v2 = off_10001D3D8;
  boost::serialization::extended_type_info::key_register(a1);
  return a1;
}

void sub_10000A21C(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001D3D8;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

void sub_10000A27C(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001D330;
  byte_1000203E0 = 1;
  sub_10000A21C(a1);

  operator delete();
}

void sub_10000A2DC(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      sub_100014A20();
    }

    if (a2 == 1)
    {
      sub_100014A20();
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        sub_100014A20();
      case 3:
        sub_100014A20();
      case 4:
        sub_100014A20();
    }
  }

  sub_100014A4C();
}

void sub_10000A338(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

void sub_10000A360(boost::serialization::extended_type_info *a1)
{
  sub_10000A21C(a1);

  operator delete();
}

boost::archive::detail::basic_oarchive *sub_10000A398(uint64_t a1, char **a2, uint64_t a3)
{
  v5 = sub_100009184(a2);
  (*(*a1 + 40))(&v7, a1);
  return sub_10000A414(v5, a3);
}

boost::archive::detail::basic_oarchive *sub_10000A414(boost::archive::detail::basic_oarchive *a1, uint64_t a2)
{
  v5 = *a2;
  result = sub_100008B3C(a1, &v5);
  if (v5 == 1)
  {
    if ((*a2 & 1) == 0)
    {
      sub_100014A78();
    }

    return sub_10000A474(a1, (a2 + 4));
  }

  return result;
}

boost::archive::detail::basic_oarchive *sub_10000A474(boost::archive::detail::basic_oarchive *a1, unsigned int *a2)
{
  boost::archive::detail::basic_oarchive::end_preamble(a1);
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(a1);
  sub_100007920(a1 + 6, a2);
  return a1;
}

void sub_10000A4C4(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = off_10001D460;
  byte_100020408 = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);
}

void *sub_10000A4F0(void *a1)
{
  v2 = sub_100004504();
  boost::archive::detail::basic_oserializer::basic_oserializer(a1, v2);
  *a1 = off_10001D460;
  if (byte_100020408 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void sub_10000A588(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = off_10001D460;
  byte_100020408 = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);

  operator delete();
}

void sub_10000A614(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = off_10001D4D8;
  byte_100020430 = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);
}

void *sub_10000A640(void *a1)
{
  v2 = sub_100004454();
  boost::archive::detail::basic_oserializer::basic_oserializer(a1, v2);
  *a1 = off_10001D4D8;
  if (byte_100020430 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void sub_10000A6D8(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = off_10001D4D8;
  byte_100020430 = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);

  operator delete();
}

void sub_10000A760(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001D550;
  byte_100020460 = 1;
  sub_10000A888(a1);
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *sub_10000A78C(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  *sub_10000A818(a1) = off_10001D550;
  if (byte_100020460 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *sub_10000A818(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  v2 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(a1, 0);
  *v2 = off_10001D5F8;
  boost::serialization::extended_type_info::key_register(a1);
  return a1;
}

void sub_10000A888(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001D5F8;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

void sub_10000A8E8(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001D550;
  byte_100020460 = 1;
  sub_10000A888(a1);

  operator delete();
}

void sub_10000A948(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      sub_100014A20();
    }

    if (a2 == 1)
    {
      sub_100014A20();
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        sub_100014A20();
      case 3:
        sub_100014A20();
      case 4:
        sub_100014A20();
    }
  }

  sub_100014A4C();
}

uint64_t sub_10000A9A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void sub_10000A9D8(boost::serialization::extended_type_info *a1)
{
  sub_10000A888(a1);

  operator delete();
}

void sub_10000AA10(uint64_t a1, char **a2, uint64_t a3)
{
  v5 = sub_100009184(a2);
  (*(*a1 + 40))(&v6, a1);
  sub_10000AA8C(a3, v5);
}

void sub_10000AA8C(uint64_t a1, boost::archive::detail::basic_oarchive *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10000ABAC(a1, a2, v5);
  sub_10000ABAC(a1, a2, (v5 + 4));
  sub_10000ABAC(a1, a2, (v5 + 8));
  sub_10000ABAC(a1, a2, (v5 + 12));
  sub_10000ABAC(a1, a2, (v5 + 16));
  sub_10000ABAC(a1, a2, (v5 + 20));
  sub_10000ABAC(a1, a2, (v5 + 24));
  sub_10000ABE8(a1, a2, (v5 + 28));
  if (v4)
  {

    sub_100001D8C(v4);
  }
}

void sub_10000AB94(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100001D8C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000ABCC(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_10000AC08(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_10000AC24(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = off_10001D640;
  byte_100020488 = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);
}

void *sub_10000AC50(void *a1)
{
  v2 = sub_100004714();
  boost::archive::detail::basic_oserializer::basic_oserializer(a1, v2);
  *a1 = off_10001D640;
  if (byte_100020488 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void sub_10000ACE8(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = off_10001D640;
  byte_100020488 = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);

  operator delete();
}

void sub_10000AD70(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = off_10001D6B8;
  byte_1000204B0 = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);
}

void *sub_10000AD9C(void *a1)
{
  v2 = sub_100004194();
  boost::archive::detail::basic_oserializer::basic_oserializer(a1, v2);
  *a1 = off_10001D6B8;
  if (byte_1000204B0 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void sub_10000AE34(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = off_10001D6B8;
  byte_1000204B0 = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);

  operator delete();
}

uint64_t sub_10000AEBC(uint64_t a1, xpc_object_t *a2)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *a2;
    *a2 = xpc_null_create();
    v4 = *a1;
    *a1 = v3;
    xpc_release(v4);
  }

  else
  {
    sub_10000AF28(a1, a2);
  }

  return a1;
}

xpc_object_t sub_10000AF28(uint64_t a1, void *a2)
{
  *a1 = *a2;
  result = xpc_null_create();
  *a2 = result;
  *(a1 + 8) = 1;
  return result;
}

void *sub_10000AF68(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2 && (v4 = CFGetTypeID(*a2), v4 == CFDictionaryGetTypeID()))
  {
    *a1 = v3;
    CFRetain(v3);
  }

  else
  {
    *a1 = 0;
  }

  return a1;
}

void sub_10000AFCC(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001D730;
  byte_1000204E0 = 1;
  sub_10000B0F4(a1);
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *sub_10000AFF8(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  *sub_10000B084(a1) = off_10001D730;
  if (byte_1000204E0 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *sub_10000B084(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  v2 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(a1, 0);
  *v2 = off_10001D7D8;
  boost::serialization::extended_type_info::key_register(a1);
  return a1;
}

void sub_10000B0F4(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001D7D8;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

void sub_10000B154(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001D730;
  byte_1000204E0 = 1;
  sub_10000B0F4(a1);

  operator delete();
}

void sub_10000B1B4(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      sub_100014A20();
    }

    if (a2 == 1)
    {
      sub_100014A20();
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        sub_100014A20();
      case 3:
        sub_100014A20();
      case 4:
        sub_100014A20();
    }
  }

  sub_100014A4C();
}

uint64_t sub_10000B210(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void sub_10000B244(boost::serialization::extended_type_info *a1)
{
  sub_10000B0F4(a1);

  operator delete();
}

void sub_10000B27C(uint64_t a1, char **a2, uint64_t a3)
{
  v5 = sub_100009184(a2);
  (*(*a1 + 40))(&v6, a1);
  sub_10000B2F8(a3, v5);
}

void sub_10000B2F8(uint64_t a1, boost::archive::detail::basic_oarchive *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000B9A4(a1, a2, (v5 + 40));
  sub_10000B9E0(a1, a2, v5 + 48);
  sub_10000BA38(a1, a2, v5 + 72);
  sub_10000BA90(a1, a2, (v5 + 96));
  sub_10000BAD0(a1, a2, (v5 + 100));
  sub_10000B9A4(a1, a2, (v5 + 104));
  sub_10000BB10(a1, a2, (v5 + 108));
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_100008CA0();
}

void sub_10000B89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a11)
  {
    sub_100001D8C(a11);
  }

  C2KVmnInfoSerialized::~C2KVmnInfoSerialized(&a17);
  CSIPhoneNumberSerialized::~CSIPhoneNumberSerialized(&a22);
  CSIDateSerialized::~CSIDateSerialized(&a27);
  CSIDateSerialized::~CSIDateSerialized((v28 - 120));
  CSIPhoneNumberSerialized::~CSIPhoneNumberSerialized((v28 - 80));
  if (v27)
  {
    sub_100001D8C(v27);
  }

  _Unwind_Resume(a1);
}

void sub_10000B9C4(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_10000BA18(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_10000BA70(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_10000BAC0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x10000BAB4);
}

void sub_10000BB00(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x10000BAF4);
}

void sub_10000BB30(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_10000BB84(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_10000BBD4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x10000BBC8);
}

void sub_10000BC14(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x10000BC08);
}

void sub_10000BC54(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x10000BC48);
}

void sub_10000BC94(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x10000BC88);
}

void sub_10000BCA4(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a3 + 23);
  if (v5 < 0)
  {
    v3 = *a3;
    v5 = *(a3 + 8);
  }

  __p = 0;
  v8 = 0;
  v9 = 0;
  sub_100007DB8(&__p, v3, v3 + v5, v5);
  v6 = sub_100004244();
  boost::archive::detail::basic_oarchive::save_object(a2, &__p, v6);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }
}

void sub_10000BD18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (a2 == 2 || a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x10000BD08);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000BD9C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_10000BDEC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x10000BDE0);
}

void sub_10000BE2C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x10000BE20);
}

void sub_10000BE6C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x10000BE60);
}

void sub_10000BEB4(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_10000BF04(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x10000BEF8);
}

void sub_10000BF44(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x10000BF38);
}

void sub_10000BF84(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x10000BF78);
}

void sub_10000BFC4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x10000BFB8);
}

void sub_10000C00C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_10000C064(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_10000C0BC(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t sub_10000C148(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_10001C850;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  *(a1 + 64) = *(a2 + 40);
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  sub_100008E68(a1 + 72, a2 + 48);
  sub_100008E68(a1 + 232, a2 + 208);
  *(a1 + 392) = *(a2 + 368);
  ctu::OsLogLogger::OsLogLogger((a1 + 400), (a2 + 376));
  return a1;
}

void sub_10000C1F0(_Unwind_Exception *a1)
{
  sub_100009094(&v1[9].__shared_weak_owners_);
  sub_100009094(&v1[3]);
  std::__shared_weak_count::~__shared_weak_count(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10000C290(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  *a1 = off_10001C8C0;
  v4 = *(a2 + 8);
  *(a1 + 48) = 0;
  *(a1 + 32) = v4;
  *(a1 + 56) = 0u;
  sub_10000C3A8(a1 + 48, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_10000C3A8(a1 + 72, *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 2);
  *(a1 + 96) = *(a2 + 72);
  ctu::OsLogLogger::OsLogLogger((a1 + 104), (a2 + 80));
  return a1;
}

void sub_10000C364(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    v1[3].__shared_owners_ = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    v1[2].__shared_owners_ = v6;
    operator delete(v6);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10000C3A8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10000C424(result, a4);
  }

  return result;
}

void sub_10000C408(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000C424(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_10000C460(a1, a2);
  }

  sub_1000059E0();
}

void sub_10000C460(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_10000548C();
}

void sub_10000C4A8(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001D820;
  byte_100020510 = 1;
  sub_10000C5D0(a1);
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *sub_10000C4D4(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  *sub_10000C560(a1) = off_10001D820;
  if (byte_100020510 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *sub_10000C560(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  v2 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(a1, 0);
  *v2 = off_10001D8C8;
  boost::serialization::extended_type_info::key_register(a1);
  return a1;
}

void sub_10000C5D0(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001D8C8;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

void sub_10000C630(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001D820;
  byte_100020510 = 1;
  sub_10000C5D0(a1);

  operator delete();
}

void sub_10000C690(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      sub_100014A20();
    }

    if (a2 == 1)
    {
      sub_100014A20();
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        sub_100014A20();
      case 3:
        sub_100014A20();
      case 4:
        sub_100014A20();
    }
  }

  sub_100014A4C();
}

void sub_10000C6F8(boost::serialization::extended_type_info *a1)
{
  sub_10000C5D0(a1);

  operator delete();
}

uint64_t sub_10000C730(uint64_t a1, char **a2, char **a3)
{
  v5 = sub_100009184(a2);
  (*(*a1 + 40))(v10, a1);
  v11 = a3[1] - *a3;
  v13 = "count";
  v14 = &v11;
  sub_1000092C8(v5, &v13);
  v12 = 0;
  v13 = "item_version";
  v14 = &v12;
  result = sub_100009318(v5, &v13);
  v7 = *a3;
  while (v11--)
  {
    boost::archive::detail::basic_oarchive::end_preamble(v5);
    boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(v5);
    v9 = *v7++;
    LOWORD(v13) = v9;
    v15 = 0;
    result = sub_10000C828(v5 + 6, &v13);
  }

  return result;
}

uint64_t sub_10000C828(void *a1, __int16 *a2)
{
  if ((*(*a1 + *(**a1 - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
    sub_100005D4C(v4);
  }

  v2 = *a2;

  return std::ostream::operator<<();
}

void sub_10000C8EC(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = off_10001D920;
  byte_100020538 = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);
}

void *sub_10000C918(void *a1)
{
  v2 = sub_1000049D4();
  boost::archive::detail::basic_oserializer::basic_oserializer(a1, v2);
  *a1 = off_10001D920;
  if (byte_100020538 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void sub_10000C9B0(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = off_10001D920;
  byte_100020538 = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);

  operator delete();
}

void sub_10000CA38(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001D998;
  byte_100020568 = 1;
  sub_10000CB60(a1);
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *sub_10000CA64(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  *sub_10000CAF0(a1) = off_10001D998;
  if (byte_100020568 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *sub_10000CAF0(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  v2 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(a1, 0);
  *v2 = off_10001DA40;
  boost::serialization::extended_type_info::key_register(a1);
  return a1;
}

void sub_10000CB60(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001DA40;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

void sub_10000CBC0(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001D998;
  byte_100020568 = 1;
  sub_10000CB60(a1);

  operator delete();
}

void sub_10000CC20(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      sub_100014A20();
    }

    if (a2 == 1)
    {
      sub_100014A20();
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        sub_100014A20();
      case 3:
        sub_100014A20();
      case 4:
        sub_100014A20();
    }
  }

  sub_100014A4C();
}

void sub_10000CC88(boost::serialization::extended_type_info *a1)
{
  sub_10000CB60(a1);

  operator delete();
}

uint64_t sub_10000CCC0(uint64_t result)
{
  if (result)
  {
    sub_10000CD14(result, *(result + 8));

    operator delete();
  }

  return result;
}

void sub_10000CD14(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10000CD14(a1, *a2);
    sub_10000CD14(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t sub_10000CD68(uint64_t a1, char **a2, void *a3)
{
  v5 = sub_100009184(a2);
  (*(*a1 + 40))(v15, a1);
  v16 = a3[2];
  v18 = "count";
  v19 = &v16;
  sub_1000092C8(v5, &v18);
  v17 = 0;
  v18 = "item_version";
  v19 = &v17;
  result = sub_100009318(v5, &v18);
  v7 = *a3;
  if (v16--)
  {
    do
    {
      v9 = v7[1];
      v10 = v7;
      if (v9)
      {
        do
        {
          v11 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v11 = v10[2];
          v12 = *v11 == v10;
          v10 = v11;
        }

        while (!v12);
      }

      v13 = sub_100004C94();
      result = boost::archive::detail::basic_oarchive::save_object(v5, v7 + 28, v13);
      v14 = v16--;
      v7 = v11;
    }

    while (v14);
  }

  return result;
}

void sub_10000CE84(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001DA98;
  byte_100020598 = 1;
  sub_10000CFAC(a1);
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *sub_10000CEB0(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  *sub_10000CF3C(a1) = off_10001DA98;
  if (byte_100020598 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *sub_10000CF3C(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  v2 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(a1, 0);
  *v2 = off_10001DB40;
  boost::serialization::extended_type_info::key_register(a1);
  return a1;
}

void sub_10000CFAC(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001DB40;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

void sub_10000D00C(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001DA98;
  byte_100020598 = 1;
  sub_10000CFAC(a1);

  operator delete();
}

void sub_10000D06C(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      sub_100014A20();
    }

    if (a2 == 1)
    {
      sub_100014A20();
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        sub_100014A20();
      case 3:
        sub_100014A20();
      case 4:
        sub_100014A20();
    }
  }

  sub_100014A4C();
}

void sub_10000D0C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

void sub_10000D0F0(boost::serialization::extended_type_info *a1)
{
  sub_10000CFAC(a1);

  operator delete();
}

uint64_t sub_10000D128(uint64_t a1, char **a2, uint64_t a3)
{
  v5 = sub_100009184(a2);
  (*(*a1 + 40))(&v7, a1);
  sub_10000A474(v5, a3);
  return sub_100008B3C(v5, (a3 + 4));
}

void sub_10000D1AC(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = off_10001DB98;
  byte_1000205C0 = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);
}

void *sub_10000D1D8(void *a1)
{
  v2 = sub_100004BE4();
  boost::archive::detail::basic_oserializer::basic_oserializer(a1, v2);
  *a1 = off_10001DB98;
  if (byte_1000205C0 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void sub_10000D270(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = off_10001DB98;
  byte_1000205C0 = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);

  operator delete();
}

void sub_10000D2F8(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = off_10001DC10;
  byte_1000205E8 = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);
}

void *sub_10000D324(void *a1)
{
  v2 = sub_100004B34();
  boost::archive::detail::basic_oserializer::basic_oserializer(a1, v2);
  *a1 = off_10001DC10;
  if (byte_1000205E8 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void sub_10000D3BC(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = off_10001DC10;
  byte_1000205E8 = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);

  operator delete();
}

void sub_10000D444(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001DC88;
  byte_100020618 = 1;
  sub_10000D56C(a1);
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *sub_10000D470(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  *sub_10000D4FC(a1) = off_10001DC88;
  if (byte_100020618 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *sub_10000D4FC(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  v2 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(a1, 0);
  *v2 = off_10001DD30;
  boost::serialization::extended_type_info::key_register(a1);
  return a1;
}

void sub_10000D56C(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001DD30;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

void sub_10000D5CC(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001DC88;
  byte_100020618 = 1;
  sub_10000D56C(a1);

  operator delete();
}

void sub_10000D62C(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      sub_100014A20();
    }

    if (a2 == 1)
    {
      sub_100014A20();
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        sub_100014A20();
      case 3:
        sub_100014A20();
      case 4:
        sub_100014A20();
    }
  }

  sub_100014A4C();
}

void sub_10000D688(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

void sub_10000D6B0(boost::serialization::extended_type_info *a1)
{
  sub_10000D56C(a1);

  operator delete();
}

void sub_10000D6E8(uint64_t a1, char **a2, void *a3)
{
  v5 = sub_100009184(a2);
  (*(*a1 + 40))(v9, a1);
  v6 = 0;
  __p[1] = 0;
  v11 = 0x400000000000000;
  v7 = 3;
  __p[0] = 808464432;
  do
  {
    if ((*a3 >> v6))
    {
      if (v11 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      *(v8 + v7) = 49;
    }

    ++v6;
    --v7;
  }

  while (v6 != 4);
  boost::archive::detail::basic_oarchive::end_preamble(v5);
  boost::archive::text_oarchive_impl<boost::archive::text_oarchive>::save(v5, __p);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10000D7D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000D7EC(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = off_10001DDB0;
  byte_100020640 = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);
}

void *sub_10000D818(void *a1)
{
  v2 = sub_100004DF4();
  boost::archive::detail::basic_oserializer::basic_oserializer(a1, v2);
  *a1 = off_10001DDB0;
  if (byte_100020640 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void sub_10000D8B0(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = off_10001DDB0;
  byte_100020640 = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);

  operator delete();
}

void sub_10000D930(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001DE28;
  byte_100020670 = 1;
  sub_10000DA58(a1);
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *sub_10000D95C(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  *sub_10000D9E8(a1) = off_10001DE28;
  if (byte_100020670 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *sub_10000D9E8(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  v2 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(a1, 0);
  *v2 = off_10001DED0;
  boost::serialization::extended_type_info::key_register(a1);
  return a1;
}

void sub_10000DA58(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001DED0;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

void sub_10000DAB8(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001DE28;
  byte_100020670 = 1;
  sub_10000DA58(a1);

  operator delete();
}

void sub_10000DB18(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      sub_100014A20();
    }

    if (a2 == 1)
    {
      sub_100014A20();
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        sub_100014A20();
      case 3:
        sub_100014A20();
      case 4:
        sub_100014A20();
    }
  }

  sub_100014A4C();
}

uint64_t sub_10000DB74(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void sub_10000DBA8(boost::serialization::extended_type_info *a1)
{
  sub_10000DA58(a1);

  operator delete();
}

void sub_10000DBE0(uint64_t a1, char **a2, uint64_t a3)
{
  v5 = sub_100009184(a2);
  (*(*a1 + 40))(&v6, a1);
  sub_10000DC5C(a3, v5);
}

void sub_10000DC5C(uint64_t a1, boost::archive::detail::basic_oarchive *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000DEF0(a1, a2, (v5 + 8));
  sub_10000DF30(a1, a2, (v5 + 12));
  sub_10000DF30(a1, a2, (v5 + 13));
  sub_10000DF30(a1, a2, (v5 + 14));
  sub_10000DF6C(a1, a2, (v5 + 16));
  sub_10000DF6C(a1, a2, (v5 + 20));
  sub_10000DF6C(a1, a2, (v5 + 24));
  sub_10000DF30(a1, a2, (v5 + 28));
  sub_10000DF30(a1, a2, (v5 + 29));
  sub_10000DF30(a1, a2, (v5 + 30));
  sub_10000DF30(a1, a2, (v5 + 31));
  sub_10000DF6C(a1, a2, (v5 + 32));
  sub_10000DF6C(a1, a2, (v5 + 36));
  sub_10000DF6C(a1, a2, (v5 + 40));
  sub_10000DF6C(a1, a2, (v5 + 44));
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_100008CA0();
}

void sub_10000DE88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (a4)
  {
    sub_100001D8C(a4);
  }

  CSIPhoneNumberSerialized::~CSIPhoneNumberSerialized(va);
  if (v9)
  {
    sub_100001D8C(v9);
  }

  _Unwind_Resume(a1);
}

void sub_10000DF20(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x10000DF14);
}

void sub_10000DF50(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_10000DF8C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_10000DFE0(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_10000E000(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = off_10001DF18;
  byte_100020698 = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);
}

void *sub_10000E02C(void *a1)
{
  v2 = sub_100004F54();
  boost::archive::detail::basic_oserializer::basic_oserializer(a1, v2);
  *a1 = off_10001DF18;
  if (byte_100020698 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void sub_10000E0C4(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = off_10001DF18;
  byte_100020698 = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);

  operator delete();
}

void sub_10000E14C(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001DF90;
  byte_1000206C8 = 1;
  sub_10000E274(a1);
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *sub_10000E178(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  *sub_10000E204(a1) = off_10001DF90;
  if (byte_1000206C8 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *sub_10000E204(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  v2 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(a1, 0);
  *v2 = off_10001E038;
  boost::serialization::extended_type_info::key_register(a1);
  return a1;
}

void sub_10000E274(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001E038;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

void sub_10000E2D4(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001DF90;
  byte_1000206C8 = 1;
  sub_10000E274(a1);

  operator delete();
}

void sub_10000E334(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      sub_100014A20();
    }

    if (a2 == 1)
    {
      sub_100014A20();
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        sub_100014A20();
      case 3:
        sub_100014A20();
      case 4:
        sub_100014A20();
    }
  }

  sub_100014A4C();
}

uint64_t sub_10000E390(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void sub_10000E3C4(boost::serialization::extended_type_info *a1)
{
  sub_10000E274(a1);

  operator delete();
}

void sub_10000E3FC(uint64_t a1, char **a2, uint64_t a3)
{
  v5 = sub_100009184(a2);
  (*(*a1 + 40))(&v6, a1);
  sub_10000E478(a3, v5);
}

void sub_10000E478(uint64_t a1, boost::archive::detail::basic_oarchive *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10000E584(a1, a2, (v5 + 8));
  sub_10000E584(a1, a2, (v5 + 12));
  sub_10000E584(a1, a2, (v5 + 16));
  sub_10000E584(a1, a2, (v5 + 20));
  sub_10000E5C0(a1, a2, v5 + 24);
  sub_10000E5C0(a1, a2, v5 + 48);
  sub_10000E618(a1, a2, (v5 + 72));
  if (v4)
  {

    sub_100001D8C(v4);
  }
}

void sub_10000E56C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100001D8C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000E5A4(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_10000E5F8(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_10000E638(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_10000E654(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001E080;
  byte_1000206F8 = 1;
  sub_10000E77C(a1);
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *sub_10000E680(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  *sub_10000E70C(a1) = off_10001E080;
  if (byte_1000206F8 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *sub_10000E70C(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  v2 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(a1, 0);
  *v2 = off_10001E128;
  boost::serialization::extended_type_info::key_register(a1);
  return a1;
}

void sub_10000E77C(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001E128;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

void sub_10000E7DC(boost::serialization::extended_type_info *a1)
{
  *a1 = off_10001E080;
  byte_1000206F8 = 1;
  sub_10000E77C(a1);

  operator delete();
}

void sub_10000E83C(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      sub_100014A20();
    }

    if (a2 == 1)
    {
      sub_100014A20();
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        sub_100014A20();
      case 3:
        sub_100014A20();
      case 4:
        sub_100014A20();
    }
  }

  sub_100014A4C();
}

void sub_10000E8A4(boost::serialization::extended_type_info *a1)
{
  sub_10000E77C(a1);

  operator delete();
}

boost::archive::detail::basic_oarchive *sub_10000E8DC(uint64_t a1, char **a2, unsigned int **a3)
{
  v5 = sub_100009184(a2);
  (*(*a1 + 40))(v11, a1);
  v12 = a3[1] - *a3;
  v14 = "count";
  v15 = &v12;
  sub_1000092C8(v5, &v14);
  v13 = 0;
  v14 = "item_version";
  v15 = &v13;
  result = sub_100009318(v5, &v14);
  v7 = *a3;
  if (v12--)
  {
    do
    {
      v9 = v7 + 1;
      result = sub_100008A28(v5, v7);
      v10 = v12--;
      v7 = v9;
    }

    while (v10);
  }

  return result;
}

void sub_10000E9C8(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = off_10001E180;
  byte_100020720 = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);
}

void *sub_10000E9F4(void *a1)
{
  v2 = sub_100005164();
  boost::archive::detail::basic_oserializer::basic_oserializer(a1, v2);
  *a1 = off_10001E180;
  if (byte_100020720 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void sub_10000EA8C(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = off_10001E180;
  byte_100020720 = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);

  operator delete();
}

void sub_10000EB14(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = off_10001E1F8;
  byte_100020748 = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);
}

void *sub_10000EB40(void *a1)
{
  v2 = sub_1000050B4();
  boost::archive::detail::basic_oserializer::basic_oserializer(a1, v2);
  *a1 = off_10001E1F8;
  if (byte_100020748 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void sub_10000EBD8(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = off_10001E1F8;
  byte_100020748 = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);

  operator delete();
}

void sub_10000EC60(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = off_10001E270;
  byte_100020770 = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);
}

void *sub_10000EC8C(void *a1)
{
  v2 = sub_100004924();
  boost::archive::detail::basic_oserializer::basic_oserializer(a1, v2);
  *a1 = off_10001E270;
  if (byte_100020770 == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void sub_10000ED24(boost::archive::detail::basic_oserializer *a1)
{
  *a1 = off_10001E270;
  byte_100020770 = 1;
  boost::archive::detail::basic_oserializer::~basic_oserializer(a1);

  operator delete();
}

void sub_10000EDAC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_10000EDD4()
{
  if ((byte_100020040 & 1) == 0)
  {
    byte_100020040 = 1;
    qword_100020038 = sub_100003ED4();
  }
}

void sub_10000EE0C()
{
  if ((byte_100020050 & 1) == 0)
  {
    byte_100020050 = 1;
    qword_100020048 = sub_100003F84();
  }
}

void sub_10000EE44()
{
  if ((byte_100020060 & 1) == 0)
  {
    byte_100020060 = 1;
    qword_100020058 = sub_100004034();
  }
}

void sub_10000EE7C()
{
  if ((byte_100020070 & 1) == 0)
  {
    byte_100020070 = 1;
    qword_100020068 = sub_1000040E4();
  }
}

void sub_10000EEB4()
{
  if ((byte_100020080 & 1) == 0)
  {
    byte_100020080 = 1;
    qword_100020078 = sub_100004194();
  }
}

void sub_10000EEEC()
{
  if ((byte_100020090 & 1) == 0)
  {
    byte_100020090 = 1;
    qword_100020088 = sub_100004244();
  }
}

void sub_10000EF24()
{
  if ((byte_1000200A0 & 1) == 0)
  {
    byte_1000200A0 = 1;
    qword_100020098 = sub_1000042F4();
  }
}

void sub_10000EF5C()
{
  if ((byte_1000200B0 & 1) == 0)
  {
    byte_1000200B0 = 1;
    qword_1000200A8 = sub_1000043A4();
  }
}

void sub_10000EF94()
{
  if ((byte_1000200C0 & 1) == 0)
  {
    byte_1000200C0 = 1;
    qword_1000200B8 = sub_100004454();
  }
}

void sub_10000EFCC()
{
  if ((byte_1000200D0 & 1) == 0)
  {
    byte_1000200D0 = 1;
    qword_1000200C8 = sub_100004504();
  }
}

void sub_10000F004()
{
  if ((byte_1000200E0 & 1) == 0)
  {
    byte_1000200E0 = 1;
    qword_1000200D8 = sub_1000045B4();
  }
}

void sub_10000F03C()
{
  if ((byte_1000200F0 & 1) == 0)
  {
    byte_1000200F0 = 1;
    qword_1000200E8 = sub_100004664();
  }
}

void sub_10000F074()
{
  if ((byte_100020100 & 1) == 0)
  {
    byte_100020100 = 1;
    qword_1000200F8 = sub_100004714();
  }
}

void sub_10000F0AC()
{
  if ((byte_100020110 & 1) == 0)
  {
    byte_100020110 = 1;
    qword_100020108 = sub_1000047C4();
  }
}

void sub_10000F0E4()
{
  if ((byte_100020120 & 1) == 0)
  {
    byte_100020120 = 1;
    qword_100020118 = sub_100004874();
  }
}

void sub_10000F11C()
{
  if ((byte_100020130 & 1) == 0)
  {
    byte_100020130 = 1;
    qword_100020128 = sub_100004924();
  }
}

void sub_10000F154()
{
  if ((byte_100020140 & 1) == 0)
  {
    byte_100020140 = 1;
    qword_100020138 = sub_1000049D4();
  }
}

void sub_10000F18C()
{
  if ((byte_100020150 & 1) == 0)
  {
    byte_100020150 = 1;
    qword_100020148 = sub_100004A84();
  }
}

void sub_10000F1C4()
{
  if ((byte_100020160 & 1) == 0)
  {
    byte_100020160 = 1;
    qword_100020158 = sub_100004B34();
  }
}

void sub_10000F1FC()
{
  if ((byte_100020170 & 1) == 0)
  {
    byte_100020170 = 1;
    qword_100020168 = sub_100004BE4();
  }
}

void sub_10000F234()
{
  if ((byte_100020180 & 1) == 0)
  {
    byte_100020180 = 1;
    qword_100020178 = sub_100004C94();
  }
}

void sub_10000F26C()
{
  if ((byte_100020190 & 1) == 0)
  {
    byte_100020190 = 1;
    qword_100020188 = sub_100004D44();
  }
}

void sub_10000F2A4()
{
  if ((byte_1000201A0 & 1) == 0)
  {
    byte_1000201A0 = 1;
    qword_100020198 = sub_100004DF4();
  }
}

void sub_10000F2DC()
{
  if ((byte_1000201B0 & 1) == 0)
  {
    byte_1000201B0 = 1;
    qword_1000201A8 = sub_100004EA4();
  }
}

void sub_10000F314()
{
  if ((byte_1000201C0 & 1) == 0)
  {
    byte_1000201C0 = 1;
    qword_1000201B8 = sub_100004F54();
  }
}

void sub_10000F34C()
{
  if ((byte_1000201D0 & 1) == 0)
  {
    byte_1000201D0 = 1;
    qword_1000201C8 = sub_100005004();
  }
}

void sub_10000F384()
{
  if ((byte_1000201E0 & 1) == 0)
  {
    byte_1000201E0 = 1;
    qword_1000201D8 = sub_1000050B4();
  }
}

void sub_10000F3BC()
{
  if ((byte_1000201F0 & 1) == 0)
  {
    byte_1000201F0 = 1;
    qword_1000201E8 = sub_100005164();
  }
}

void sub_10000F3F4()
{
  if ((byte_100020200 & 1) == 0)
  {
    byte_100020200 = 1;
    qword_1000201F8 = sub_100005214();
  }
}

void sub_10000F42C()
{
  if ((byte_100020210 & 1) == 0)
  {
    byte_100020210 = 1;
    qword_100020208 = sub_1000052C4();
  }
}

void sub_10000F464()
{
  if ((byte_100020220 & 1) == 0)
  {
    byte_100020220 = 1;
    qword_100020218 = sub_100005374();
  }
}

void *CSIDateSerialized::CSIDateSerialized(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10000F514(a1, &v5);
  if (v6)
  {
    sub_100001D8C(v6);
  }

  *a1 = off_10001E2E8;
  return a1;
}

void *sub_10000F514(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &off_10001E330;
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v5 = a1[2];
    a1[1] = v4;
    a1[2] = v3;
    if (v5)
    {
      sub_100001D8C(v5);
    }
  }

  else
  {
    a1[1] = v4;
    a1[2] = 0;
  }

  return a1;
}

void CSIDateSerialized::~CSIDateSerialized(CSIDateSerialized *this)
{
  *this = &off_10001E330;
  v1 = *(this + 2);
  if (v1)
  {
    sub_100001D8C(v1);
  }
}

{
  *this = &off_10001E330;
  v1 = *(this + 2);
  if (v1)
  {
    sub_100001D8C(v1);
  }

  operator delete();
}

void *sub_10000F640(void *a1)
{
  *a1 = &off_10001E330;
  v2 = a1[2];
  if (v2)
  {
    sub_100001D8C(v2);
  }

  return a1;
}

void sub_10000F68C(void *a1)
{
  *a1 = &off_10001E330;
  v1 = a1[2];
  if (v1)
  {
    sub_100001D8C(v1);
  }

  operator delete();
}

void start()
{
  if (qword_100020860 != -1)
  {
    dispatch_once(&qword_100020860, &stru_10001E360);
  }

  v0 = *qword_100020858;
  if (os_log_type_enabled(*qword_100020858, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "CTParserService started...", v1, 2u);
  }

  xpc_main(sub_10000F7B8);
}

void sub_10000F7B8(_xpc_connection_s *a1)
{
  xpc_connection_set_event_handler(a1, &stru_10001E3A0);

  xpc_connection_activate(a1);
}

ctu::OsLogLogger *sub_10000F888(ctu::OsLogLogger **a1, ctu::OsLogLogger *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ctu::OsLogLogger::~OsLogLogger(result);

    operator delete();
  }

  return result;
}

void sub_10000F8D4(id a1, void *a2)
{
  if (xpc_get_type(a2) != &_xpc_type_error)
  {
    if (xpc_get_type(a2) == &_xpc_type_dictionary)
    {
      object = a2;
      if (a2)
      {
        xpc_retain(a2);
      }

      else
      {
        object = xpc_null_create();
      }

      v5 = 0;
      v6 = 0;
      sub_10000FFAC();
    }

    v3 = xpc_copy_description(a2);
    v4 = *qword_100020858;
    if (os_log_type_enabled(*qword_100020858, OS_LOG_TYPE_DEFAULT))
    {
      buf = 136315138;
      *buf_4 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Connection received object: %s", &buf, 0xCu);
    }

LABEL_13:
    free(v3);
    return;
  }

  if (a2 == &_xpc_error_connection_interrupted)
  {
    v3 = xpc_copy_description(&_xpc_error_connection_interrupted);
    if (os_log_type_enabled(*qword_100020858, OS_LOG_TYPE_ERROR))
    {
      sub_100014CA8();
    }

    goto LABEL_13;
  }

  if (a2 == &_xpc_error_connection_invalid && os_log_type_enabled(*qword_100020858, OS_LOG_TYPE_ERROR))
  {
    sub_100014C68();
  }
}

void sub_10000FDD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, xpc_object_t object, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (v23)
  {
    sub_100001D8C(v23);
  }

  if (v22)
  {
    sub_100001D8C(v22);
  }

  if (a13)
  {
    sub_100001D8C(a13);
  }

  xpc_release(object);
  _Unwind_Resume(a1);
}

xpc_object_t sub_10000FE94(uint64_t a1, const char *a2)
{
  v3 = a1 + 8;
  result = xpc_dictionary_get_value(*(a1 + 8), a2);
  if (result)
  {
    v6[0] = v3;
    v6[1] = a2;
    sub_100001264(v6, &object);
    v5 = xpc::dyn_cast_or_default();
    xpc_release(object);
    return (&_mh_execute_header & 0xFFFFFFFF00000000 | v5);
  }

  return result;
}

uint64_t sub_10000FF18(uint64_t a1, const char *a2)
{
  v3 = a1 + 8;
  if (xpc_dictionary_get_value(*(a1 + 8), a2))
  {
    v7[0] = v3;
    v7[1] = a2;
    sub_100001264(v7, &object);
    v4 = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = 1;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return v4 | (v5 << 8);
}

void *sub_100010018(void *a1, void **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10001E3D0;
  v4 = 0;
  sub_100010128(&v4, (a1 + 3), a2);
  return a1;
}

void sub_1000100AC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10001E3D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100010128(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = *a3;
  object = v4;
  if (v4 && xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  CTParserXPCRequest::CTParserXPCRequest(a2, &object);
  xpc_release(object);
}

void *sub_100010220(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10001E420;
  sub_10000293C(a1 + 3);
  return a1;
}

void sub_10001029C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10001E420;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *SmsPduDecoderSerialized::SmsPduDecoderSerialized(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000103C0(a1, &v5);
  if (v6)
  {
    sub_100001D8C(v6);
  }

  *a1 = off_10001E470;
  return a1;
}

void *sub_1000103C0(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10001E4B8;
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v5 = a1[2];
    a1[1] = v4;
    a1[2] = v3;
    if (v5)
    {
      sub_100001D8C(v5);
    }
  }

  else
  {
    a1[1] = v4;
    a1[2] = 0;
  }

  return a1;
}

void SmsPduDecoderSerialized::~SmsPduDecoderSerialized(SmsPduDecoderSerialized *this)
{
  *this = off_10001E4B8;
  v1 = *(this + 2);
  if (v1)
  {
    sub_100001D8C(v1);
  }
}

{
  *this = off_10001E4B8;
  v1 = *(this + 2);
  if (v1)
  {
    sub_100001D8C(v1);
  }

  operator delete();
}

void *sub_1000104EC(void *a1)
{
  *a1 = off_10001E4B8;
  v2 = a1[2];
  if (v2)
  {
    sub_100001D8C(v2);
  }

  return a1;
}

void sub_100010538(void *a1)
{
  *a1 = off_10001E4B8;
  v1 = a1[2];
  if (v1)
  {
    sub_100001D8C(v1);
  }

  operator delete();
}

void *CSIPhoneNumberSerialized::CSIPhoneNumberSerialized(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10001061C(a1, &v5);
  if (v6)
  {
    sub_100001D8C(v6);
  }

  *a1 = off_10001E4D8;
  return a1;
}

void *sub_10001061C(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10001E520;
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v5 = a1[2];
    a1[1] = v4;
    a1[2] = v3;
    if (v5)
    {
      sub_100001D8C(v5);
    }
  }

  else
  {
    a1[1] = v4;
    a1[2] = 0;
  }

  return a1;
}

void CSIPhoneNumberSerialized::~CSIPhoneNumberSerialized(CSIPhoneNumberSerialized *this)
{
  *this = off_10001E520;
  v1 = *(this + 2);
  if (v1)
  {
    sub_100001D8C(v1);
  }
}

{
  *this = off_10001E520;
  v1 = *(this + 2);
  if (v1)
  {
    sub_100001D8C(v1);
  }

  operator delete();
}

void *sub_100010748(void *a1)
{
  *a1 = off_10001E520;
  v2 = a1[2];
  if (v2)
  {
    sub_100001D8C(v2);
  }

  return a1;
}

void sub_100010794(void *a1)
{
  *a1 = off_10001E520;
  v1 = a1[2];
  if (v1)
  {
    sub_100001D8C(v1);
  }

  operator delete();
}

uint64_t boost::archive::archive_exception::archive_exception(uint64_t result, int a2, const char *a3, const char *a4)
{
  *result = off_10001E558;
  *(result + 136) = a2;
  v4 = result + 8;
  switch(a2)
  {
    case 0:
      for (i = 0; i != 23; ++i)
      {
        *(v4 + i) = aUninitializedE[i];
      }

      v6 = (result + 31);
      goto LABEL_119;
    case 1:
      for (j = 0; j != 25; ++j)
      {
        *(v4 + j) = aUnknownDerived[j];
      }

      v6 = (result + 33);
      goto LABEL_119;
    case 2:
      for (k = 0; k != 18; ++k)
      {
        *(v4 + k) = aUnregisteredCl[k];
      }

      *(result + 26) = 0;
      if (!a3)
      {
        return result;
      }

      v18 = 0;
      *(result + 26) = 2108704;
      v15 = 127;
      while (a3[v18])
      {
        *(result + 29 + v18) = a3[v18];
        v11 = v18++ == 105;
        if (v11)
        {
          goto LABEL_111;
        }
      }

      v15 = (v18 + 21);
      goto LABEL_111;
    case 3:
      for (m = 0; m != 17; ++m)
      {
        *(v4 + m) = aInvalidSignatu[m];
      }

      goto LABEL_84;
    case 4:
      for (n = 0; n != 19; ++n)
      {
        *(v4 + n) = aUnsupportedVer[n];
      }

      goto LABEL_28;
    case 5:
      for (ii = 0; ii != 16; ++ii)
      {
        *(v4 + ii) = aPointerConflic[ii];
      }

      v6 = (result + 24);
      goto LABEL_119;
    case 6:
      for (jj = 0; jj != 26; ++jj)
      {
        *(v4 + jj) = aIncompatibleNa[jj];
      }

      *(result + 34) = 0;
      if (!a3)
      {
        return result;
      }

      v27 = 0;
      *(result + 34) = 2108704;
      v15 = 127;
      while (a3[v27])
      {
        *(result + 37 + v27) = a3[v27];
        v11 = v27++ == 97;
        if (v11)
        {
          goto LABEL_111;
        }
      }

      v15 = v27 + 29;
      goto LABEL_111;
    case 7:
      for (kk = 0; kk != 20; ++kk)
      {
        *(v4 + kk) = aArraySizeTooSh[kk];
      }

      v6 = (result + 28);
      goto LABEL_119;
    case 8:
      for (mm = 0; mm != 18; ++mm)
      {
        *(v4 + mm) = aInputStreamErr[mm];
      }

      *(result + 26) = 0;
      if (!a3)
      {
        if (!a4)
        {
          return result;
        }

        v25 = 18;
        goto LABEL_115;
      }

      v35 = 0;
      *(result + 26) = 45;
      while (a3[v35])
      {
        *(result + 27 + v35) = a3[v35];
        v11 = v35++ == 107;
        if (v11)
        {
          v25 = 127;
          goto LABEL_113;
        }
      }

      v25 = v35 + 19;
LABEL_113:
      *(v4 + v25) = 0;
      if (!a4)
      {
        return result;
      }

      if (v25 > 0x7E)
      {
        goto LABEL_117;
      }

LABEL_115:
      v44 = v25;
      *(v4 + v25) = 45;
      if (v25 == 126)
      {
        goto LABEL_116;
      }

      *(v4 + ++v25) = 0;
      if (v44 <= 0x7D)
      {
        v42 = v44 + 9;
        do
        {
          v45 = *a4;
          if (!*a4)
          {
            goto LABEL_135;
          }

          ++a4;
          *(result + v42) = v45;
          v11 = v42++ == 134;
        }

        while (!v11);
LABEL_126:
        v25 = 127;
      }

      goto LABEL_118;
    case 9:
      for (nn = 0; nn != 19; ++nn)
      {
        *(v4 + nn) = aClassNameTooLo[nn];
      }

LABEL_28:
      v6 = (result + 27);
      goto LABEL_119;
    case 10:
      v28 = 0;
      do
      {
        *(v4 + v28) = aUnregisteredVo[v28];
        v29 = v28 + 1;
        v28 = v29;
      }

      while (v29 != 23);
      *(result + 31) = 0;
      v30 = "?";
      if (a3)
      {
        v31 = a3;
      }

      else
      {
        v31 = "?";
      }

      LODWORD(v32) = 25;
      while (1)
      {
        v33 = *v31;
        if (!*v31)
        {
          break;
        }

        ++v31;
        *(v4 + v29) = v33;
        LODWORD(v32) = v32 + 1;
        if (++v29 == 127)
        {
          *(result + 135) = 0;
LABEL_91:
          LODWORD(v29) = 127;
          goto LABEL_92;
        }
      }

      *(v4 + v29) = 0;
      if (v29 > 0x7E)
      {
LABEL_92:
        *(v4 + v29) = 0;
        LODWORD(v32) = v29;
        goto LABEL_93;
      }

      v37 = 0;
      v38 = v29;
      v39 = "<-";
      while (v37 != -2)
      {
        v40 = *v39++;
        *(v4 + v38) = v40;
        --v37;
        if (++v38 == 127)
        {
          goto LABEL_91;
        }
      }

      *(v4 + v38) = 0;
      if (v38 <= 0x7E)
      {
        v32 = (v29 + 2);
        if (a4)
        {
          v30 = a4;
        }

        v46 = (result + v32 + 8);
        v47 = v32 + 1;
        while (1)
        {
          v48 = *v30;
          if (!*v30)
          {
            break;
          }

          ++v30;
          *v46++ = v48;
          LODWORD(v32) = v32 + 1;
          v11 = v47++ == 127;
          if (v11)
          {
            LODWORD(v32) = 127;
            break;
          }
        }
      }

LABEL_93:
      v6 = (v4 + v32);
      goto LABEL_119;
    case 11:
      for (i1 = 0; i1 != 14; ++i1)
      {
        *(v4 + i1) = aClassVersion[i1];
      }

      v8 = 0;
      *(result + 22) = 0;
      if (a3)
      {
        v9 = a3;
      }

      else
      {
        v9 = "<unknown class>";
      }

      v10 = 127;
      while (v9[v8])
      {
        *(result + 22 + v8) = v9[v8];
        v11 = v8++ == 112;
        if (v11)
        {
          goto LABEL_86;
        }
      }

      v10 = v8 + 14;
LABEL_86:
      v6 = (v4 + v10);
      goto LABEL_119;
    case 12:
      for (i2 = 0; i2 != 41; ++i2)
      {
        *(v4 + i2) = aCodeInstantiat[i2];
      }

      *(result + 49) = 0;
      if (!a3)
      {
        return result;
      }

      v14 = 0;
      *(result + 49) = 2108704;
      v15 = 127;
      while (a3[v14])
      {
        *(result + 52 + v14) = a3[v14];
        v11 = v14++ == 82;
        if (v11)
        {
          goto LABEL_111;
        }
      }

      v15 = v14 + 44;
LABEL_111:
      v6 = (v4 + v15);
      goto LABEL_119;
    case 13:
      for (i3 = 0; i3 != 19; ++i3)
      {
        *(v4 + i3) = aOutputStreamEr[i3];
      }

      *(result + 27) = 0;
      if (a3)
      {
        v24 = 0;
        *(result + 27) = 45;
        while (a3[v24])
        {
          *(result + 28 + v24) = a3[v24];
          v11 = v24++ == 106;
          if (v11)
          {
            v25 = 127;
            goto LABEL_101;
          }
        }

        v25 = v24 + 20;
LABEL_101:
        *(v4 + v25) = 0;
        if (!a4)
        {
          return result;
        }

        if (v25 > 0x7E)
        {
LABEL_117:
          *(v4 + v25) = 0;
          goto LABEL_118;
        }
      }

      else
      {
        if (!a4)
        {
          return result;
        }

        v25 = 19;
      }

      v41 = v25;
      *(v4 + v25) = 45;
      if (v25 == 126)
      {
LABEL_116:
        v25 = 127;
        goto LABEL_117;
      }

      *(v4 + ++v25) = 0;
      if (v41 > 0x7D)
      {
        goto LABEL_118;
      }

      v42 = v41 + 9;
      while (1)
      {
        v43 = *a4;
        if (!*a4)
        {
          break;
        }

        ++a4;
        *(result + v42) = v43;
        v11 = v42++ == 134;
        if (v11)
        {
          goto LABEL_126;
        }
      }

LABEL_135:
      v25 = v42 - 8;
LABEL_118:
      v6 = (v4 + v25);
LABEL_119:
      *v6 = 0;
      return result;
    default:
      for (i4 = 0; i4 != 17; ++i4)
      {
        *(v4 + i4) = aProgrammingErr[i4];
      }

LABEL_84:
      v6 = (result + 25);
      goto LABEL_119;
  }
}

__n128 boost::archive::archive_exception::archive_exception(uint64_t a1, uint64_t a2)
{
  *a1 = off_10001E558;
  *(a1 + 136) = *(a2 + 136);
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  *(a1 + 24) = v3;
  *(a1 + 8) = v2;
  result = *(a2 + 72);
  v6 = *(a2 + 88);
  v7 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v7;
  *(a1 + 88) = v6;
  *(a1 + 72) = result;
  return result;
}

void boost::archive::archive_exception::~archive_exception(std::exception *this)
{
  std::exception::~exception(this);

  operator delete(v1);
}

void *sub_100010F18(void *result, uint64_t a2, _BYTE *a3)
{
  if ((a3[21] & 1) == 0)
  {
    v5 = result;
    if ((*(**a3 + 24))())
    {
      HIWORD(v6) = 0;
      (*(*a2 + 24))(a2, &v6 + 6);
      (*(*a2 + 40))(a2, a3 + 20);
      result = (**a2)(a2, (a3 + 16));
    }

    else
    {
      a3[20] = (*(**a3 + 32))(*a3, *(v5 + 1));
      result = (*(**a3 + 40))(&v6);
      *(a3 + 4) = v6;
    }

    a3[21] = 1;
  }

  return result;
}

BOOL sub_100011094(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = 0;
  (*(*a2 + 8))(a2, &v9);
  v5 = *(a1 + 8);
  v6 = (*(a1 + 16) - v5) >> 4;
  v7 = v9;
  if (v9 < v6)
  {
    *a3 = *(v5 + 16 * v9);
  }

  return v7 >= v6;
}

boost::archive::detail::basic_iarchive *boost::archive::detail::basic_iarchive::basic_iarchive(boost::archive::detail::basic_iarchive *this, int a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &off_10001E5A8;
  v4 = operator new(0x78uLL);
  boost::archive::BOOST_ARCHIVE_VERSION(v4);
  *(v4 + 1) = a2;
  *(v4 + 8) = 0;
  *(v4 + 7) = 0;
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 37) = 0;
  *(v4 + 6) = v4 + 56;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 100) = 0u;
  *(this + 4) = v4;
  return this;
}

void sub_1000111C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v10);
  sub_10001148C(&a10);
  _Unwind_Resume(a1);
}

void boost::archive::detail::basic_iarchive::~basic_iarchive(boost::archive::detail::basic_iarchive *this)
{
  *this = &off_10001E5A8;
  v1 = (this + 8);
  sub_100011DA8(this + 4);
  v2 = v1;
  sub_10001148C(&v2);
}

uint64_t sub_10001127C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v20 = a3;
  *(a1 + 44) = 0;
  if (*(a1 + 96) != a3 || *(a1 + 104) != a4)
  {
    v8 = *(a1 + 64);
    v23 = a4;
    v24 = v8;
    v9 = sub_100011840((a1 + 48), &v23, &v23);
    if (v10)
    {
      v21 = a4;
      v22[0] = 0;
      *(v22 + 6) = 0;
      sub_1000117E8((a1 + 72), &v21);
    }

    v11 = *(v9 + 20);
    v12 = *(a1 + 72) + 24 * v11;
    *(v12 + 8) = a4[2];
    sub_100010F18(a1, a2, v12);
    v13 = *(a1 + 32);
    v14 = *(v12 + 20);
    v15 = (*(a1 + 16) - *(a1 + 8)) >> 4;
    *(a1 + 32) = v15;
    if (v14 == 1)
    {
      result = sub_100011094(a1, a2, &v20);
      if ((result & 1) == 0)
      {
LABEL_13:
        *(a1 + 32) = v13;
        goto LABEL_14;
      }

      v5 = v20;
      v21 = v20;
      LOBYTE(v22[0]) = 0;
      WORD1(v22[0]) = v11;
      v17 = *(a1 + 16);
      if (v17 >= *(a1 + 24))
      {
        v19 = sub_1000115FC((a1 + 8), &v21);
      }

      else
      {
        v18 = v21;
        *(v17 + 8) = v22[0];
        *v17 = v18;
        *(v17 + 10) = v11;
        v19 = v17 + 16;
      }

      *(a1 + 16) = v19;
      *(a1 + 36) = (v19 - *(a1 + 8)) >> 4;
    }

    result = (*(*a4 + 16))(a4, a2, v5, *(v12 + 16));
    *(a1 + 40) = v15;
    goto LABEL_13;
  }

  result = (*(*a4 + 16))(a4, a2, a3, *(a1 + 112));
LABEL_14:
  *(a1 + 44) = 0;
  return result;
}

void sub_100011460(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  *(v1 + 44) = 0;
  _Unwind_Resume(a1);
}

void sub_10001148C(void ***a1)
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
        v6 = v4 - 3;
        sub_100011514(v4 - 1);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

atomic_uint **sub_100011514(atomic_uint **a1)
{
  v2 = *a1;
  if (v2)
  {
    sub_100011548(v2);
  }

  return a1;
}

atomic_uint *sub_100011548(atomic_uint *result)
{
  if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    v1 = result;
    v2 = result + 3;
    result = (*(*result + 16))(result);
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      v3 = *(*v1 + 24);

      return v3(v1);
    }
  }

  return result;
}

uint64_t sub_1000115FC(uint64_t *a1, uint64_t *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_1000059E0();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    v8 = sub_1000117B0(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[16 * v2];
  __p = v8;
  v14 = v9;
  v16 = &v8[16 * v7];
  v10 = *a2;
  v9[8] = *(a2 + 8);
  *v9 = v10;
  *(v9 + 5) = *(a2 + 5);
  v15 = v9 + 16;
  sub_100011730(a1, &__p);
  v11 = a1[1];
  if (v15 != v14)
  {
    v15 += (v14 - v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v11;
}

void sub_1000116F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100011730(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      v6 = *v2;
      *(v5 + 8) = *(v2 + 8);
      *v5 = v6;
      *(v5 + 10) = *(v2 + 5);
      v2 += 2;
      v5 += 16;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v7 = result[1];
  result[1] = a2[2];
  a2[2] = v7;
  v8 = result[2];
  result[2] = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

void *sub_1000117B0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    sub_10000548C();
  }

  return operator new(16 * a2);
}

uint64_t sub_1000117E8(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_100011B58(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *(v3 + 20) = *(a2 + 20);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void *sub_100011840(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000118CC(a1, &v9, a2);
  v6 = *v5;
  if (!*v5)
  {
    v7 = v5;
    v6 = operator new(0x30uLL);
    v6[4] = *a3;
    *(v6 + 20) = *(a3 + 8);
    sub_100011964(a1, v9, v7, v6);
  }

  return v6;
}

void *sub_1000118CC(uint64_t a1, void *a2, uint64_t a3)
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
        if (!boost::serialization::extended_type_info::operator<(*(*a3 + 8), *(v4[4] + 8)))
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

      if (!boost::serialization::extended_type_info::operator<(*(v7[4] + 8), *(*a3 + 8)))
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

uint64_t *sub_100011964(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_1000119BC(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_1000119BC(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t sub_100011B58(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1000059E0();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v15 = a1;
  if (v6)
  {
    v7 = sub_100011D60(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[24 * v2];
  __p = v7;
  v12 = v8;
  v14 = &v7[24 * v6];
  *v8 = *a2;
  *(v8 + 4) = *(a2 + 16);
  *(v8 + 10) = *(a2 + 20);
  v13 = v8 + 24;
  sub_100011CDC(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 = &v12[(v13 - v12 - 24) % 0x18uLL];
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_100011C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100011CDC(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v3;
    do
    {
      *v6 = *v5;
      *(v6 + 16) = *(v5 + 16);
      *(v6 + 20) = *(v5 + 20);
      v5 += 24;
      v6 += 24;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

void *sub_100011D60(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xAAAAAAAAAAAAAABLL)
  {
    sub_10000548C();
  }

  return operator new(24 * a2);
}

uint64_t *sub_100011DA8(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 + 72);
    if (v3)
    {
      *(v2 + 80) = v3;
      operator delete(v3);
    }

    sub_10000CD14(v2 + 48, *(v2 + 56));
    v4 = *(v2 + 8);
    if (v4)
    {
      *(v2 + 16) = v4;
      operator delete(v4);
    }

    operator delete(v2);
  }

  return a1;
}

void *boost::archive::detail::basic_iserializer::basic_iserializer(void *result, uint64_t a2)
{
  *result = off_10001E678;
  result[1] = a2;
  result[2] = 0;
  return result;
}

boost::archive::detail::basic_oarchive *boost::archive::detail::basic_oarchive::basic_oarchive(boost::archive::detail::basic_oarchive *this, int a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &off_10001E718;
  v4 = operator new(0x60uLL);
  *v4 = a2;
  v4[2] = 0;
  v4[1] = v4 + 2;
  v4[5] = 0;
  v4[3] = 0;
  v4[4] = v4 + 5;
  v4[8] = 0;
  v4[6] = 0;
  v4[7] = v4 + 8;
  v4[10] = 0;
  v4[11] = 0;
  v4[9] = 0;
  *(this + 4) = v4;
  return this;
}

void sub_100011ED4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001148C(va);
  _Unwind_Resume(a1);
}

void boost::archive::detail::basic_oarchive::~basic_oarchive(boost::archive::detail::basic_oarchive *this)
{
  *this = &off_10001E718;
  v1 = (this + 8);
  sub_1000124C4(this + 4);
  v2 = v1;
  sub_10001148C(&v2);
}

uint64_t sub_100011F68(unsigned int *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (*(a1 + 10) == a3 && *(a1 + 11) == a4)
  {
    v22 = *(*a4 + 16);
    v23 = *a4 + 16;

    return v22(a4);
  }

  else
  {
    v8 = *(a1 + 6);
    v27 = a4;
    v28 = v8;
    v29 = 0;
    v9 = sub_100012430(a1 + 4, &v27, &v27);
    if ((*(*a4 + 24))(a4) && (*(v9 + 42) & 1) == 0)
    {
      LOWORD(v27) = *(v9 + 20);
      (*(*a2 + 32))(a2, &v27);
      LOBYTE(v27) = (*(*a4 + 32))(a4, *a1);
      (*(*a2 + 56))(a2, &v27);
      (*(*a4 + 40))(&v27, a4);
      (**a2)(a2, &v27);
      *(v9 + 42) = 1;
    }

    if ((*(*a4 + 32))(a4, *a1))
    {
      v10 = *(a1 + 3);
      v11 = *(v9 + 20);
      v24 = a3;
      v25 = v11;
      v26 = v10;
      v12 = *(sub_100012338(a1 + 1, &v24, &v24) + 11);
      if (v13)
      {
        LODWORD(v27) = v12;
        (*(*a2 + 8))(a2, &v27);
        return (*(*a4 + 16))(a4, a2, a3);
      }

      else
      {
        v17 = *(a1 + 8);
        v16 = a1 + 16;
        v15 = v17;
        if (v17)
        {
          v18 = v16;
          do
          {
            v19 = v15[7];
            v20 = v19 >= v12;
            v21 = v19 < v12;
            if (v20)
            {
              v18 = v15;
            }

            v15 = *&v15[2 * v21];
          }

          while (v15);
          if (v18 != v16 && v12 >= v18[7])
          {
            boost::archive::archive_exception::archive_exception(&v27, 5, 0, 0);
            sub_100005D4C(&v27);
          }
        }

        LODWORD(v27) = v12;
        return (*(*a2 + 16))(a2, &v27);
      }
    }

    else
    {
      return (*(*a4 + 16))(a4, a2, a3);
    }
  }
}

void *sub_100012338(uint64_t **a1, unint64_t *a2, uint64_t a3)
{
  v5 = sub_1000123CC(a1, &v9, a2);
  v6 = *v5;
  if (!*v5)
  {
    v7 = v5;
    v6 = operator new(0x30uLL);
    v6[4] = *a3;
    *(v6 + 20) = *(a3 + 8);
    *(v6 + 11) = *(a3 + 12);
    sub_100011964(a1, v9, v7, v6);
  }

  return v6;
}

uint64_t *sub_1000123CC(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = *(a3 + 4);
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = v4[4];
        if (v6 >= v9)
        {
          break;
        }

LABEL_4:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v6 <= v9)
      {
        v10 = *(v8 + 20);
        if (v7 < v10)
        {
          goto LABEL_4;
        }

        if (v10 >= v7)
        {
          goto LABEL_12;
        }
      }

      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  v8 = result;
LABEL_12:
  *a2 = v8;
  return result;
}

void *sub_100012430(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000118CC(a1, &v9, a2);
  v6 = *v5;
  if (!*v5)
  {
    v7 = v5;
    v6 = operator new(0x30uLL);
    v6[4] = *a3;
    *(v6 + 20) = *(a3 + 8);
    *(v6 + 42) = *(a3 + 10);
    sub_100011964(a1, v9, v7, v6);
  }

  return v6;
}

void ***sub_1000124C4(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    sub_10000CD14((v2 + 7), v2[8]);
    sub_10000CD14((v2 + 4), v2[5]);
    sub_10000CD14((v2 + 1), v2[2]);
    operator delete(v2);
  }

  return a1;
}

void *boost::archive::detail::basic_oserializer::basic_oserializer(void *result, uint64_t a2)
{
  *result = off_10001E7B0;
  result[1] = a2;
  result[2] = 0;
  return result;
}

uint64_t *sub_10001254C(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

uint64_t boost::archive::basic_text_iprimitive<std::istream>::basic_text_iprimitive(uint64_t a1, uint64_t *a2, char a3)
{
  *a1 = a2;
  v6 = *a2;
  v7 = a2 + *(*a2 - 24);
  *(a1 + 8) = v7;
  *(a1 + 16) = *(v7 + 2);
  v8 = a2 + *(v6 - 24);
  *(a1 + 24) = v8;
  v9 = *(v8 + 2);
  v10 = (a1 + 40);
  *(a1 + 48) = 0;
  *(a1 + 32) = v9;
  *(a1 + 40) = &off_10001E820;
  std::ios_base::getloc((a2 + *(*a2 - 24)));
  v11 = std::locale::id::__get(&std::codecvt<char,char,__mbstate_t>::id);
  std::locale::__install_ctor((a1 + 56), &v18, v10, v11);
  std::locale::~locale(&v18);
  v12 = *a1;
  *(a1 + 64) = *a1;
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  if ((a3 & 1) == 0)
  {
    std::istream::sync();
    v13 = (a2 + *(*a2 - 24));
    std::ios_base::getloc(v13);
    std::ios_base::imbue(v13, (a1 + 56));
    std::locale::~locale(&v18);
    rdbuf = v13->__rdbuf_;
    if (rdbuf)
    {
      (*(rdbuf->__locale_ + 2))(rdbuf, a1 + 56);
      std::locale::locale(&v17, rdbuf + 1);
      std::locale::operator=(rdbuf + 1, (a1 + 56));
      std::locale::~locale(&v17);
    }

    std::locale::~locale(&v16);
  }

  *(a2 + *(*a2 - 24) + 8) &= ~1u;
  return a1;
}

{
  return boost::archive::basic_text_iprimitive<std::istream>::basic_text_iprimitive(a1, a2, a3);
}

void sub_100012AD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, char a12)
{
  std::locale::~locale(&a10);
  sub_100012BBC(v14);
  std::locale::~locale((v12 + 56));
  std::codecvt<char,char,__mbstate_t>::~codecvt(v13);
  *(*(v12 + 24) + 16) = *(v12 + 32);
  *(*(v12 + 8) + 8) = *(v12 + 16);
  _Unwind_Resume(a1);
}

uint64_t boost::archive::basic_text_iprimitive<std::istream>::~basic_text_iprimitive(uint64_t a1)
{
  sub_100012BBC((a1 + 64));
  std::locale::~locale((a1 + 56));
  std::codecvt<char,char,__mbstate_t>::~codecvt((a1 + 40));
  *(*(a1 + 24) + 16) = *(a1 + 32);
  *(*(a1 + 8) + 8) = *(a1 + 16);
  return a1;
}

{
  return boost::archive::basic_text_iprimitive<std::istream>::~basic_text_iprimitive(a1);
}

void sub_100012B8C(std::codecvt<char, char, mbstate_t> *a1)
{
  std::codecvt<char,char,__mbstate_t>::~codecvt(a1);

  operator delete(v1);
}

std::locale *sub_100012BBC(std::locale *a1)
{
  locale = a1->__locale_;
  std::istream::sync();
  v3 = (a1->__locale_ + *(*a1->__locale_ - 24));
  std::ios_base::getloc(v3);
  std::ios_base::imbue(v3, a1 + 1);
  std::locale::~locale(&v8);
  rdbuf = v3->__rdbuf_;
  if (rdbuf)
  {
    (*(rdbuf->__locale_ + 2))(rdbuf, a1 + 1);
    std::locale::locale(&v7, rdbuf + 1);
    std::locale::operator=(rdbuf + 1, a1 + 1);
    std::locale::~locale(&v7);
  }

  std::locale::~locale(&v6);
  std::locale::~locale(a1 + 1);
  return a1;
}

uint64_t boost::archive::basic_text_oprimitive<std::ostream>::save(void *a1)
{
  if ((*(*a1 + *(**a1 - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v2, 13, 0, 0);
    sub_100005D4C(v2);
  }

  return std::ostream::operator<<();
}

uint64_t boost::archive::basic_text_oprimitive<std::ostream>::basic_text_oprimitive(uint64_t a1, uint64_t *a2, char a3)
{
  *a1 = a2;
  v6 = *a2;
  v7 = a2 + *(*a2 - 24);
  *(a1 + 8) = v7;
  *(a1 + 16) = *(v7 + 2);
  v8 = a2 + *(v6 - 24);
  *(a1 + 24) = v8;
  v9 = *(v8 + 2);
  v10 = (a1 + 40);
  *(a1 + 48) = 0;
  *(a1 + 32) = v9;
  *(a1 + 40) = &off_10001E820;
  std::ios_base::getloc((a2 + *(*a2 - 24)));
  v11 = std::locale::id::__get(&std::codecvt<char,char,__mbstate_t>::id);
  std::locale::__install_ctor((a1 + 56), &v18, v10, v11);
  std::locale::~locale(&v18);
  v12 = *a1;
  *(a1 + 64) = *a1;
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  if ((a3 & 1) == 0)
  {
    std::ostream::flush();
    v13 = (a2 + *(*a2 - 24));
    std::ios_base::getloc(v13);
    std::ios_base::imbue(v13, (a1 + 56));
    std::locale::~locale(&v18);
    rdbuf = v13->__rdbuf_;
    if (rdbuf)
    {
      (*(rdbuf->__locale_ + 2))(rdbuf, a1 + 56);
      std::locale::locale(&v17, rdbuf + 1);
      std::locale::operator=(rdbuf + 1, (a1 + 56));
      std::locale::~locale(&v17);
    }

    std::locale::~locale(&v16);
  }

  *(a2 + *(*a2 - 24) + 8) &= ~1u;
  return a1;
}

{
  return boost::archive::basic_text_oprimitive<std::ostream>::basic_text_oprimitive(a1, a2, a3);
}

void sub_100012F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, char a12)
{
  std::locale::~locale(&a10);
  sub_1000131A8(v14);
  std::locale::~locale((v12 + 56));
  std::codecvt<char,char,__mbstate_t>::~codecvt(v13);
  *(*(v12 + 24) + 16) = *(v12 + 32);
  *(*(v12 + 8) + 8) = *(v12 + 16);
  _Unwind_Resume(a1);
}

uint64_t boost::archive::basic_text_oprimitive<std::ostream>::~basic_text_oprimitive(uint64_t a1)
{
  if (!std::uncaught_exceptions())
  {
    std::ios_base::getloc((*a1 + *(**a1 - 24)));
    v2 = std::locale::use_facet(&v4, &std::ctype<char>::id);
    (v2->__vftable[2].~facet_0)(v2, 10);
    std::locale::~locale(&v4);
    std::ostream::put();
    std::ostream::flush();
  }

  sub_1000131A8((a1 + 64));
  std::locale::~locale((a1 + 56));
  std::codecvt<char,char,__mbstate_t>::~codecvt((a1 + 40));
  *(*(a1 + 24) + 16) = *(a1 + 32);
  *(*(a1 + 8) + 8) = *(a1 + 16);
  return a1;
}

{
  return boost::archive::basic_text_oprimitive<std::ostream>::~basic_text_oprimitive(a1);
}

uint64_t boost::archive::basic_text_oprimitive<std::ostream>::put(void *a1)
{
  if ((*(*a1 + *(**a1 - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v2, 13, 0, 0);
    sub_100005D4C(v2);
  }

  return std::ostream::put();
}

{
  return boost::archive::basic_text_oprimitive<std::ostream>::put(a1);
}

std::locale *sub_1000131A8(std::locale *a1)
{
  locale = a1->__locale_;
  std::ostream::flush();
  v3 = (a1->__locale_ + *(*a1->__locale_ - 24));
  std::ios_base::getloc(v3);
  std::ios_base::imbue(v3, a1 + 1);
  std::locale::~locale(&v8);
  rdbuf = v3->__rdbuf_;
  if (rdbuf)
  {
    (*(rdbuf->__locale_ + 2))(rdbuf, a1 + 1);
    std::locale::locale(&v7, rdbuf + 1);
    std::locale::operator=(rdbuf + 1, a1 + 1);
    std::locale::~locale(&v7);
  }

  std::locale::~locale(&v6);
  std::locale::~locale(a1 + 1);
  return a1;
}

uint64_t *boost::serialization::extended_type_info::key_register(uint64_t *this)
{
  if (this[2])
  {
    v1 = this;
    v2 = sub_100013454();
    v3 = v1;
    return sub_1000134C4(v2, &v3);
  }

  return this;
}

void boost::serialization::extended_type_info::key_unregister(boost::serialization::extended_type_info *this)
{
  if (*(this + 2))
  {
    if ((byte_1000207A8 & 1) == 0)
    {
      v2 = sub_100013454();
      v8 = this;
      v3 = sub_1000135D0(v2, &v8, v2[1], v2 + 1);
      v8 = this;
      v4 = sub_10001364C(v2, &v8, v2[1], (v2 + 1));
      if (v3 != v4)
      {
        while (v3[4] != this)
        {
          v5 = v3[1];
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
              v6 = v3[2];
              v7 = *v6 == v3;
              v3 = v6;
            }

            while (!v7);
          }

          v3 = v6;
          if (v6 == v4)
          {
            return;
          }
        }

        sub_1000136C8(v2, v3);
        operator delete(v3);
      }
    }
  }
}

uint64_t boost::serialization::extended_type_info::extended_type_info(uint64_t this, int a2, const char *a3)
{
  *this = &off_10001E898;
  *(this + 8) = a2;
  *(this + 16) = a3;
  return this;
}

uint64_t boost::serialization::extended_type_info::operator<(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return (**a1)(a1);
  }

  else
  {
    return v2 < v3;
  }
}

uint64_t *sub_100013454()
{
  if ((atomic_load_explicit(&qword_1000207A0, memory_order_acquire) & 1) == 0)
  {
    sub_100014D1C();
  }

  return &qword_100020788;
}

uint64_t sub_10001348C(uint64_t a1)
{
  byte_1000207A8 = 1;
  sub_10000CD14(a1, *(a1 + 8));
  return a1;
}

uint64_t *sub_1000134C4(uint64_t **a1, uint64_t *a2)
{
  v4 = operator new(0x28uLL);
  v4[4] = *a2;
  v5 = sub_100013548(a1, &v7, v4 + 4);
  sub_100011964(a1, v7, v5, v4);
  return v4;
}

void *sub_100013548(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *a3;
    do
    {
      while (1)
      {
        v5 = v4;
        v7 = v4[4];
        if (v6 == v7)
        {
          break;
        }

        v8 = *(v6 + 16);
        v9 = *(v7 + 16);
        if (v8 == v9 || (strcmp(v8, v9) & 0x80000000) == 0)
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_11;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_11:
  *a2 = v5;
  return result;
}

void *sub_1000135D0(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  if (a3)
  {
    v5 = a3;
    v6 = *a2;
    do
    {
      v7 = v5[4];
      if (v7 == v6 || (v8 = *(v7 + 16), v9 = *(v6 + 16), v8 == v9))
      {
        a4 = v5;
      }

      else
      {
        v10 = strcmp(v8, v9);
        if (v10 >= 0)
        {
          a4 = v5;
        }

        v5 = (v5 + ((v10 >> 28) & 8));
      }

      v5 = *v5;
    }

    while (v5);
  }

  return a4;
}

uint64_t sub_10001364C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    v6 = *a2;
    do
    {
      v7 = *(v5 + 32);
      if (v6 == v7 || (v8 = *(v6 + 16), v9 = *(v7 + 16), v8 == v9))
      {
        v11 = (v5 + 8);
      }

      else
      {
        v10 = strcmp(v8, v9);
        v11 = (v5 + 8 * (v10 >= 0));
        if (v10 < 0)
        {
          a4 = v5;
        }
      }

      v5 = *v11;
    }

    while (*v11);
  }

  return a4;
}

uint64_t *sub_1000136C8(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_10001254C(v6, a2);
  return v3;
}

void sub_10001373C()
{
  if ((byte_100020780 & 1) == 0)
  {
    byte_100020780 = 1;
    qword_100020778 = sub_100013454();
  }
}

BOOL sub_100013790(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if ((v2 & 0x8000000000000000) != 0 && (v3 & 0x8000000000000000) != 0)
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) >> 31;
  }

  else
  {
    return v2 < v3;
  }
}

BOOL sub_1000137E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void *boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(boost::serialization::typeid_system::extended_type_info_typeid_0 *this, const char *a2)
{
  result = boost::serialization::extended_type_info::extended_type_info(this, 1, a2);
  *result = off_10001E908;
  result[3] = 0;
  return result;
}

uint64_t *boost::serialization::typeid_system::extended_type_info_typeid_0::type_register(boost::serialization::typeid_system::extended_type_info_typeid_0 *this, const std::type_info *a2)
{
  *(this + 3) = a2;
  v3 = sub_100013958();
  v5 = this;
  return sub_1000139C8(v3, &v5);
}

uint64_t *boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(uint64_t *this)
{
  v1 = this;
  if (this[3])
  {
    if ((byte_1000207E0 & 1) == 0)
    {
      v2 = sub_100013958();
      v4 = v1;
      this = sub_100013AE0(v2, &v4);
      if (v2 + 1 != this)
      {
        v3 = this;
        do
        {
          sub_1000136C8(v2, v3);
          operator delete(v3);
          v4 = v1;
          this = sub_100013AE0(v2, &v4);
          v3 = this;
        }

        while (v2 + 1 != this);
      }
    }
  }

  *(v1 + 24) = 0;
  return this;
}

uint64_t *sub_100013958()
{
  if ((atomic_load_explicit(&qword_1000207D8, memory_order_acquire) & 1) == 0)
  {
    sub_100014D94();
  }

  return &qword_1000207C0;
}

uint64_t sub_100013990(uint64_t a1)
{
  byte_1000207E0 = 1;
  sub_10000CD14(a1, *(a1 + 8));
  return a1;
}

uint64_t *sub_1000139C8(uint64_t **a1, uint64_t *a2)
{
  v4 = operator new(0x28uLL);
  v4[4] = *a2;
  v5 = sub_100013A4C(a1, &v7, v4 + 4);
  sub_100011964(a1, v7, v5, v4);
  return v4;
}

void *sub_100013A4C(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if (!(***a3)(*a3, v4[4]))
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

uint64_t sub_100013AE0(uint64_t a1, void *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = (***(v3 + 32))(*(v3 + 32), *a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || (***a2)(*a2, *(v5 + 32)))
  {
    return v2;
  }

  return v5;
}

void sub_100013BA4()
{
  if ((byte_1000207B8 & 1) == 0)
  {
    byte_1000207B8 = 1;
    qword_1000207B0 = sub_100013958();
  }
}

void boost::archive::basic_text_iarchive<boost::archive::text_iarchive>::load_override(uint64_t a1, void **a2)
{
  v4 = operator new(0x88uLL);
  *v4 = 0;
  *&__src.__r_.__value_.__r.__words[1] = xmmword_100019EF0;
  __src.__r_.__value_.__r.__words[0] = v4;
  boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::load(a1, &__src);
  size = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __src.__r_.__value_.__l.__size_;
    if (__src.__r_.__value_.__l.__size_ >= 0x80)
    {
      boost::archive::archive_exception::archive_exception(v9, 9, 0, 0);
      sub_100005D4C(v9);
    }

    p_src = __src.__r_.__value_.__r.__words[0];
  }

  else
  {
    p_src = &__src;
  }

  memcpy(*a2, p_src, size);
  v7 = HIBYTE(__src.__r_.__value_.__r.__words[2]);
  if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = __src.__r_.__value_.__l.__size_;
  }

  *(*a2 + v7) = 0;
  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__src.__r_.__value_.__l.__data_);
  }
}

void sub_100013CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::exception a15)
{
  boost::archive::archive_exception::~archive_exception(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void boost::archive::basic_text_iarchive<boost::archive::text_iarchive>::init(uint64_t a1)
{
  memset(&__s1, 0, sizeof(__s1));
  boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::load(a1, &__s1);
  v3 = boost::archive::BOOST_ARCHIVE_SIGNATURE(v2);
  v4 = strlen(v3);
  v5 = v4;
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v4 != __s1.__r_.__value_.__l.__size_)
    {
      goto LABEL_11;
    }

    if (v4 == -1)
    {
      sub_100014028();
    }

    p_s1 = __s1.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (v4 != SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
    {
      goto LABEL_11;
    }

    p_s1 = &__s1;
  }

  if (memcmp(p_s1, v3, v5))
  {
LABEL_11:
    boost::archive::archive_exception::archive_exception(v8, 3, 0, 0);
    sub_100005D4C(v8);
  }

  sub_100014108((a1 + 40));
  v8[0] = 0;
  boost::archive::detail::basic_iarchive::set_library_version(a1, v8);
  boost::archive::BOOST_ARCHIVE_VERSION(v8);
  if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s1.__r_.__value_.__l.__data_);
  }
}

void sub_100013E4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, std::exception a17)
{
  if (a2)
  {
    sub_100001478(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::load(uint64_t a1, std::string *a2)
{
  sub_1000141BC((a1 + 40));
  v4 = *(a1 + 40);
  std::istream::get();
  std::string::resize(a2, 0, 0);
}

{
  boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::load(a1, a2);
}

void boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::load_override(uint64_t a1, void **a2)
{
  boost::archive::basic_text_iarchive<boost::archive::text_iarchive>::load_override(a1, a2);
}

{
  boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::load_override(a1, a2);
}

void boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::init(uint64_t a1)
{
  boost::archive::basic_text_iarchive<boost::archive::text_iarchive>::init(a1);
}

{
  boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::init(a1);
}

boost::archive::detail::basic_iarchive *boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::text_iarchive_impl(boost::archive::detail::basic_iarchive *a1, uint64_t *a2, int a3)
{
  boost::archive::basic_text_iprimitive<std::istream>::basic_text_iprimitive(a1 + 40, a2, (a3 & 2) != 0);
  boost::archive::detail::basic_iarchive::basic_iarchive(a1, a3);
  *a1 = off_10001E968;
  return a1;
}

{
  return boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::text_iarchive_impl(a1, a2, a3);
}

boost::archive::detail::basic_iarchive *boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::~text_iarchive_impl(boost::archive::detail::basic_iarchive *a1)
{
  boost::archive::detail::basic_iarchive::~basic_iarchive(a1);
  boost::archive::basic_text_iprimitive<std::istream>::~basic_text_iprimitive(v2 + 40);
  return a1;
}

void boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::~text_iarchive_impl(boost::archive::detail::basic_iarchive *a1)
{
  boost::archive::detail::basic_iarchive::~basic_iarchive(a1);
  boost::archive::basic_text_iprimitive<std::istream>::~basic_text_iprimitive(v2 + 40);

  operator delete(a1);
}

uint64_t *sub_100013FF0()
{
  if ((atomic_load_explicit(&qword_100020810, memory_order_acquire) & 1) == 0)
  {
    sub_100014E0C();
  }

  return &qword_1000207F8;
}

void sub_100014040(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_10001409C(exception, a1);
}

std::logic_error *sub_10001409C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

uint64_t sub_1000140D0(uint64_t a1)
{
  byte_100020818 = 1;
  sub_10000CD14(a1, *(a1 + 8));
  return a1;
}

void *sub_100014108(uint64_t *a1)
{
  v1 = *a1;
  result = std::istream::operator>>();
  if ((*(result + *(*result - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v3, 8, 0, 0);
    sub_100005D4C(v3);
  }

  return result;
}

void *sub_1000141BC(uint64_t *a1)
{
  v1 = *a1;
  result = std::istream::operator>>();
  if ((*(result + *(*result - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v3, 8, 0, 0);
    sub_100005D4C(v3);
  }

  return result;
}

void sub_100014270()
{
  if ((byte_1000207F0 & 1) == 0)
  {
    byte_1000207F0 = 1;
    qword_1000207E8 = sub_100013FF0();
  }
}

uint64_t boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (!v2)
  {
LABEL_5:
    *(v1 + 40) = 2;
    return result;
  }

  if (v2 != 2)
  {
    if (v2 != 1)
    {
      return result;
    }

    result = boost::archive::basic_text_oprimitive<std::ostream>::put((result + 48));
    goto LABEL_5;
  }

  v3 = (result + 48);

  return boost::archive::basic_text_oprimitive<std::ostream>::put(v3);
}

{
  return boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(result);
}

void boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::save_override(boost::archive::detail::basic_oarchive *a1, char **a2)
{
  sub_1000145AC(__p, *a2);
  boost::archive::detail::basic_oarchive::end_preamble(a1);
  boost::archive::text_oarchive_impl<boost::archive::text_oarchive>::save(a1, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

{
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::save_override(a1, a2);
}

void sub_100014370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::init(boost::archive *a1)
{
  v2 = boost::archive::BOOST_ARCHIVE_SIGNATURE(a1);
  sub_1000145AC(__p, v2);
  boost::archive::detail::basic_oarchive::end_preamble(a1);
  boost::archive::text_oarchive_impl<boost::archive::text_oarchive>::save(a1, __p);
  boost::archive::BOOST_ARCHIVE_VERSION(&v3);
  sub_10001468C(a1, &v3);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

{
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::init(a1);
}

void sub_1000143FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::archive::text_oarchive_impl<boost::archive::text_oarchive>::save(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  v8 = v4;
  sub_100014798(a1, &v8);
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(a1);
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
  }

  return sub_1000017A0(a1[6]);
}

{
  return boost::archive::text_oarchive_impl<boost::archive::text_oarchive>::save(a1, a2);
}

boost::archive::detail::basic_oarchive *boost::archive::text_oarchive_impl<boost::archive::text_oarchive>::text_oarchive_impl(boost::archive::detail::basic_oarchive *a1, uint64_t *a2, int a3)
{
  boost::archive::basic_text_oprimitive<std::ostream>::basic_text_oprimitive(a1 + 48, a2, (a3 & 2) != 0);
  boost::archive::detail::basic_oarchive::basic_oarchive(a1, a3);
  *(a1 + 10) = 0;
  *a1 = off_10001EA08;
  return a1;
}

{
  return boost::archive::text_oarchive_impl<boost::archive::text_oarchive>::text_oarchive_impl(a1, a2, a3);
}

boost::archive::detail::basic_oarchive *boost::archive::text_oarchive_impl<boost::archive::text_oarchive>::~text_oarchive_impl(boost::archive::detail::basic_oarchive *a1)
{
  boost::archive::detail::basic_oarchive::~basic_oarchive(a1);
  boost::archive::basic_text_oprimitive<std::ostream>::~basic_text_oprimitive(v2 + 48);
  return a1;
}

void boost::archive::text_oarchive_impl<boost::archive::text_oarchive>::~text_oarchive_impl(boost::archive::detail::basic_oarchive *a1)
{
  boost::archive::detail::basic_oarchive::~basic_oarchive(a1);
  boost::archive::basic_text_oprimitive<std::ostream>::~basic_text_oprimitive(v2 + 48);

  operator delete(a1);
}

uint64_t *sub_100014574()
{
  if ((atomic_load_explicit(&qword_100020848, memory_order_acquire) & 1) == 0)
  {
    sub_100014E84();
  }

  return &qword_100020830;
}

void *sub_1000145AC(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100001B3C();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
}

uint64_t sub_100014654(uint64_t a1)
{
  byte_100020850 = 1;
  sub_10000CD14(a1, *(a1 + 8));
  return a1;
}

uint64_t sub_10001468C(boost::archive::detail::basic_oarchive *a1, unsigned __int16 *a2)
{
  boost::archive::detail::basic_oarchive::end_preamble(a1);
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(a1);
  return sub_1000146D4(a1 + 6, a2);
}

uint64_t sub_1000146D4(void *a1, unsigned __int16 *a2)
{
  if ((*(*a1 + *(**a1 - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
    sub_100005D4C(v4);
  }

  v2 = *a2;

  return std::ostream::operator<<();
}

uint64_t sub_100014798(boost::archive::detail::basic_oarchive *a1, uint64_t *a2)
{
  boost::archive::detail::basic_oarchive::end_preamble(a1);
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(a1);
  return sub_1000147E0(a1 + 6, a2);
}

uint64_t sub_1000147E0(void *a1, uint64_t *a2)
{
  if ((*(*a1 + *(**a1 - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
    sub_100005D4C(v4);
  }

  v2 = *a2;

  return std::ostream::operator<<();
}

void sub_1000148A4()
{
  if ((byte_100020828 & 1) == 0)
  {
    byte_100020828 = 1;
    qword_100020820 = sub_100014574();
  }
}

void sub_100014910(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Invalid SMS not handled: %s", buf, 0xCu);
}

void sub_100014AA4(void *a1, char *a2, uint64_t a3, NSObject *a4)
{
  free(a1);
  if (a2[23] >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  *a3 = 136315138;
  *(a3 + 4) = v7;
  _os_log_debug_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEBUG, "Received XPC object: %s", a3, 0xCu);
  if (a2[23] < 0)
  {
    operator delete(*a2);
  }
}

void sub_100014BE0(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unhandled service: %s", buf, 0xCu);
}

void sub_100014D1C()
{
  if (__cxa_guard_acquire(&qword_1000207A0))
  {
    qword_100020798 = 0;
    qword_100020790 = 0;
    qword_100020788 = &qword_100020790;
    __cxa_atexit(sub_10001348C, &qword_100020788, &_mh_execute_header);

    __cxa_guard_release(&qword_1000207A0);
  }
}

void sub_100014D94()
{
  if (__cxa_guard_acquire(&qword_1000207D8))
  {
    qword_1000207D0 = 0;
    qword_1000207C8 = 0;
    qword_1000207C0 = &qword_1000207C8;
    __cxa_atexit(sub_100013990, &qword_1000207C0, &_mh_execute_header);

    __cxa_guard_release(&qword_1000207D8);
  }
}

void sub_100014E0C()
{
  if (__cxa_guard_acquire(&qword_100020810))
  {
    qword_100020808 = 0;
    qword_100020800 = 0;
    qword_1000207F8 = &qword_100020800;
    __cxa_atexit(sub_1000140D0, &qword_1000207F8, &_mh_execute_header);

    __cxa_guard_release(&qword_100020810);
  }
}

void sub_100014E84()
{
  if (__cxa_guard_acquire(&qword_100020848))
  {
    qword_100020840 = 0;
    qword_100020838 = 0;
    qword_100020830 = &qword_100020838;
    __cxa_atexit(sub_100014654, &qword_100020830, &_mh_execute_header);

    __cxa_guard_release(&qword_100020848);
  }
}

uint64_t xpc::dyn_cast_or_default()
{
  return xpc::dyn_cast_or_default();
}

{
  return xpc::dyn_cast_or_default();
}

uint64_t std::istream::operator>>()
{
  return std::istream::operator>>();
}

{
  return std::istream::operator>>();
}

{
  return std::istream::operator>>();
}

{
  return std::istream::operator>>();
}

{
  return std::istream::operator>>();
}

{
  return std::istream::operator>>();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void operator new()
{
    ;
  }
}