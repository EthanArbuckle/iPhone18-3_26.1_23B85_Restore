uint64_t WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 32 * v3;
    v6 = v4 + 24;
    do
    {
      v7 = (v6 - 16);
      v8 = *v6;
      if (v8 <= 2)
      {
        if (v8 >= 2)
        {
          WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v7);
        }
      }

      else if (v8 <= 8 && ((1 << v8) & 0x1B0) == 0)
      {
        if (v8 == 3)
        {
          v10 = *v7;
          *v7 = 0;
          if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v10, a2);
          }
        }

        else if (v8 == 6)
        {
          v11 = *v7;
          *v7 = 0;
          if (v11)
          {
            WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v11, a2);
          }
        }
      }

      *v6 = -1;
      v6 += 32;
      v5 -= 32;
    }

    while (v5);
    v4 = *a1;
  }

  if (v4)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    if (v3 >= 2)
    {
      WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1, a2);
    }
  }

  else if (v3 <= 8 && ((1 << v3) & 0x1B0) == 0)
  {
    if (v3 == 3)
    {
      v5 = *a1;
      *a1 = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }
    }

    else if (v3 == 6)
    {
      v6 = *a1;
      *a1 = 0;
      if (v6)
      {
        WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v6, a2);
      }
    }
  }

  *(a1 + 16) = -1;
  return a1;
}

uint64_t WebCore::IDBCursorRecord::IDBCursorRecord(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::move_constructor(a1 + 8, (a2 + 8));
  *(a1 + 32) = *(a2 + 32);
  mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::move_constructor(a1 + 40, (a2 + 40));
  v4 = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 64) = v4;
  *(a1 + 80) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 72, (a2 + 72));
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 88, (a2 + 88));
  return a1;
}

void sub_19D7C7B48(_Unwind_Exception *a1, void *a2)
{
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 88) = 0;
    *(v2 + 96) = 0;
    WTF::fastFree(v6, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, a2);
  v8 = *(v2 + 64);
  *(v2 + 64) = 0;
  if (v8)
  {
    WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v8, v7);
  }

  mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v2 + 40, v7);
  mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v2 + 8, v9);
  _Unwind_Resume(a1);
}

_BYTE *mpark::detail::copy_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::copy_constructor(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[16] = -1;
  v4 = *(a2 + 16);
  if (v4 > 4)
  {
    if (*(a2 + 16) > 6u)
    {
      if (v4 - 7 >= 2)
      {
        return a1;
      }

      goto LABEL_19;
    }

    if (v4 == 5)
    {
      v5 = *a2;
    }

    else
    {
      v5 = *a2;
      if (*a2)
      {
        atomic_fetch_add(v5, 1u);
      }
    }

    goto LABEL_18;
  }

  if (*(a2 + 16) <= 1u)
  {
    if (!*(a2 + 16))
    {
      *a1 = 0;
    }

    goto LABEL_19;
  }

  if (v4 == 2)
  {
    WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1, a2);
  }

  else
  {
    if (v4 == 3)
    {
      v5 = *a2;
      if (*a2)
      {
        atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
      }

LABEL_18:
      *a1 = v5;
      goto LABEL_19;
    }

    *a1 = *a2;
  }

LABEL_19:
  a1[16] = *(a2 + 16);
  return a1;
}

void sub_19D7C7C8C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 + 16);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
    }
  }

  else if (v4 <= 8 && ((1 << v4) & 0x1B0) == 0)
  {
    if (v4 == 3)
    {
      v5 = *v2;
      *v2 = 0;
      if (v5)
      {
        if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }
      }
    }

    else if (v4 == 6)
    {
      v6 = *v2;
      *v2 = 0;
      if (v6)
      {
        WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v6, a2);
      }
    }
  }

  *(v2 + 16) = -1;
  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 12);
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = v3;
  if (!v3)
  {
    return v2;
  }

  if (!(v3 >> 27))
  {
    v5 = WTF::fastMalloc((32 * v3));
    *(v2 + 8) = v3;
    *v2 = v5;
    v6 = *(a2 + 12);
    if (v6)
    {
      v7 = v5 + 8;
      v8 = 32 * v6;
      v9 = *a2 + 8;
      do
      {
        *(v7 - 8) = *(v9 - 8);
        v7 = mpark::detail::copy_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::copy_constructor() + 32;
        v9 += 32;
        v8 -= 32;
      }

      while (v8);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

void sub_19D7C7DB4(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(uint64_t a1, void *a2)
{
  if (*(a1 + 16) != 255)
  {
    if (*(a1 + 16))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1, a2);
    }

    else
    {
      v4 = *a1;
      *a1 = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }
  }

  *(a1 + 16) = -1;
  return a1;
}

uint64_t WebCore::IDBGetResult::IDBGetResult(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 8, a2 + 2);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 24, a2 + 6);
  *(a1 + 40) = *(a2 + 20);
  mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::move_constructor(a1 + 48, a2 + 6);
  *(a1 + 72) = *(a2 + 36);
  mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::move_constructor(a1 + 80, a2 + 10);
  std::__optional_move_base<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,false>::__optional_move_base[abi:sn200100]((a1 + 104), (a2 + 13));
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 136, a2 + 34);
  *(a1 + 152) = *(a2 + 152);
  return a1;
}

void sub_19D7C7EF8(_Unwind_Exception *a1, void *a2)
{
  v7 = *v5;
  if (*v5)
  {
    *(v2 + 136) = 0;
    *(v2 + 144) = 0;
    WTF::fastFree(v7, a2);
  }

  if (*(v2 + 128) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v2 + 104, a2);
  }

  mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v2 + 80, a2);
  mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v2 + 48, v8);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, v9);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, v10);
  v12 = *v2;
  *v2 = 0;
  if (v12)
  {
    WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v12, v11);
  }

  _Unwind_Resume(a1);
}

void sub_19D7C7F74(uint64_t a1, void *a2)
{
  v4 = *v3;
  if (*v3)
  {
    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    WTF::fastFree(v4, a2);
  }

  JUMPOUT(0x19D7C7F54);
}

void sub_19D7C7F90(uint64_t a1, void *a2)
{
  v4 = *v3;
  if (*v3)
  {
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    WTF::fastFree(v4, a2);
  }

  JUMPOUT(0x19D7C7F5CLL);
}

_BYTE *std::__optional_move_base<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,false>::__optional_move_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[24] = 0;
  if (*(a2 + 24) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::move_constructor(a1, a2);
    a1[24] = 1;
  }

  return a1;
}

void sub_19D7C7FF4(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 24) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::move_constructor(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 16) = -1;
  v3 = *(a2 + 16);
  if (v3 != 255)
  {
    if (*(a2 + 16))
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
      LOBYTE(v3) = *(a2 + 16);
    }

    else
    {
      v6 = *a2;
      *a2 = 0;
      *a1 = v6;
    }

    *(a1 + 16) = v3;
  }

  return a1;
}

void sub_19D7C8080(_Unwind_Exception *a1, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v2, a2);
  _Unwind_Resume(a1);
}

void *mpark::detail::constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>::construct_alt<1ul,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(void *a1, _DWORD *a2)
{
  *a1 = 0;
  a1[1] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

void sub_19D7C80D8(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebCore::IDBCursorRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::IDBCursorRecord>::destruct(*a1, (*a1 + 104 * v3));
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::VectorTypeOperations<WebCore::IDBCursorRecord>::destruct(uint64_t result, void *a2)
{
  if (result != a2)
  {
    v3 = result + 88;
    do
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, a2);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3 - 16, v4);
      v6 = *(v3 - 24);
      *(v3 - 24) = 0;
      if (v6)
      {
        WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v6, v5);
      }

      mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v3 - 48, v5);
      result = mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v3 - 80, v7);
      v8 = (v3 + 16);
      v3 += 104;
    }

    while (v8 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::IDBValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::IDBValue>::destruct(*a1, (*a1 + 40 * v3));
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::VectorTypeOperations<WebCore::IDBValue>::destruct(uint64_t result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v3 + 3), a2);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v3 + 1), v4);
      result = *v3;
      *v3 = 0;
      if (result)
      {
        result = WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(result, a2);
      }

      v3 += 5;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBObjectStoreInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBObjectStoreInfo>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBObjectStoreInfo,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IDBObjectStoreInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1 + 48;
    do
    {
      if (*(v4 - 48) != -1)
      {
        v5 = *(v4 + 16);
        if (v5)
        {
          WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IDBIndexInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v5, a2);
        }

        if (*v4 == 1)
        {
          mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v4 - 24, a2);
        }

        v6 = *(v4 - 32);
        *(v4 - 32) = 0;
        if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, a2);
        }
      }

      v4 += 72;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WebCore::IDBTransactionInfo::IDBTransactionInfo(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 32, (a2 + 32));
  v5 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a1 + 48) = v5;
  return a1;
}

void sub_19D7C8360(_Unwind_Exception *exception_object, void *a2)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    WTF::fastFree(v5, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl ***std::unique_ptr<WebCore::IDBDatabaseInfo>::reset[abi:sn200100](WTF::StringImpl ***result, WTF::StringImpl **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[3];
    if (v3)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBObjectStoreInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBObjectStoreInfo>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBObjectStoreInfo,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IDBObjectStoreInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v3, a2);
    }

    v4 = *v2;
    *v2 = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    return bmalloc::api::tzoneFree(v2, a2);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IDBIndexInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1 + 32;
    do
    {
      if (*(v4 - 32) != -1)
      {
        mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v4, a2);
        v5 = *(v4 - 8);
        *(v4 - 8) = 0;
        if (v5)
        {
          if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v5, a2);
          }
        }
      }

      v4 += 64;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

WTF::StringImpl ****std::unique_ptr<WebCore::IDBTransactionInfo>::reset[abi:sn200100](WTF::StringImpl ****result, WTF::StringImpl ***a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::unique_ptr<WebCore::IDBDatabaseInfo>::reset[abi:sn200100](v2 + 6, 0);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v2 + 4), v3);

    return bmalloc::api::tzoneFree(v2, v4);
  }

  return result;
}

bmalloc::api **std::unique_ptr<WebCore::IDBKeyData>::reset[abi:sn200100](bmalloc::api **result, WTF::StringImpl *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v2 + 8, a2);

    return bmalloc::api::tzoneFree(v2, v3);
  }

  return result;
}

bmalloc::api **std::unique_ptr<WebCore::IDBGetResult>::reset[abi:sn200100](bmalloc::api **result, bmalloc::api *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    WTF::Vector<WebCore::IDBCursorRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 136, a2);
    if (*(v2 + 128) == 1)
    {
      mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v2 + 104, v3);
    }

    mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v2 + 80, v3);
    mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v2 + 48, v4);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 24, v5);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 8, v6);
    v8 = *v2;
    *v2 = 0;
    if (v8)
    {
      WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v8, v7);
    }

    return bmalloc::api::tzoneFree(v2, v7);
  }

  return result;
}

bmalloc::api **std::unique_ptr<WebCore::IDBGetAllResult>::reset[abi:sn200100](bmalloc::api **result, bmalloc::api *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*(v2 + 64) == 1)
    {
      mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v2 + 40, a2);
    }

    WTF::Vector<WebCore::IDBValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 24, a2);
    WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 8, v3);

    return bmalloc::api::tzoneFree(v2, v4);
  }

  return result;
}

_BYTE *mpark::detail::copy_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::copy_constructor(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[32] = -1;
  if (*(a2 + 32) <= 1u)
  {
    if (*(a2 + 32))
    {
      *a1 = *a2;
      mpark::detail::copy_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::copy_constructor(a1 + 8, a2 + 8);
    }

    else
    {
      *a1 = 0;
    }

    goto LABEL_7;
  }

  if (*(a2 + 32) == 2)
  {
    WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1, a2);
LABEL_7:
    a1[32] = *(a2 + 32);
  }

  return a1;
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 32) > 1u)
  {
    if (*(a1 + 32) == 2)
    {
      WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1, a2);
    }
  }

  else if (*(a1 + 32))
  {
    mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(a1 + 8, a2);
  }

  *(a1 + 32) = -1;
  return a1;
}

_BYTE *mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::move_constructor(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[32] = -1;
  mpark::detail::constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>::generic_construct<mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>>(a1, a2);
  return a1;
}

uint64_t mpark::detail::constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>::generic_construct<mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>>(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(result + 32) > 1u)
  {
    if (*(result + 32) == 2)
    {
      result = WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(result, a2);
    }
  }

  else if (*(result + 32))
  {
    result = mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(result + 8, a2);
  }

  *(v3 + 32) = -1;
  if (*(a2 + 32) > 1u)
  {
    if (*(a2 + 32) != 2)
    {
      return result;
    }

    *v3 = 0;
    *(v3 + 8) = 0;
    result = WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v3, a2);
  }

  else if (*(a2 + 32))
  {
    *v3 = *a2;
    result = mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::move_constructor(v3 + 8, (a2 + 8));
  }

  else
  {
    *v3 = 0;
  }

  *(v3 + 32) = *(a2 + 32);
  return result;
}

void sub_19D7C8804(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebCore::LinearTimingFunction::LinearTimingFunction(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F10E7DA0;
  WTF::Vector<WebCore::LinearTimingFunction::Point,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 16, a2);
  return a1;
}

uint64_t WebCore::LinearTimingFunction::clone@<X0>(WebCore::LinearTimingFunction *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = WTF::fastMalloc(0x20);
  result = WebCore::LinearTimingFunction::LinearTimingFunction(v4, this + 16);
  *a2 = v4;
  return result;
}

void WebCore::LinearTimingFunction::~LinearTimingFunction(WebCore::LinearTimingFunction *this, void *a2)
{
  v3 = *(this + 2);
  if (v3)
  {
    *(this + 2) = 0;
    *(this + 6) = 0;
    WTF::fastFree(v3, a2);
  }

  if (*(this + 2) != 1)
  {
    __break(0xC471u);
  }
}

{
  v3 = *(this + 2);
  if (v3)
  {
    *(this + 2) = 0;
    *(this + 6) = 0;
    WTF::fastFree(v3, a2);
  }

  if (*(this + 2) == 1)
  {

    WTF::fastFree(this, a2);
  }

  else
  {
    __break(0xC471u);
  }
}

BOOL WebCore::LinearTimingFunction::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 24))(a2))
  {
    return 0;
  }

  v4 = *(a1 + 28);
  if (v4 != *(a2 + 28))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);

  return WTF::VectorTypeOperations<WebCore::LinearTimingFunction::Point>::compare(v5, v6, v4);
}

uint64_t WTF::Vector<WebCore::LinearTimingFunction::Point,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 12);
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = v3;
  if (!v3)
  {
    return v2;
  }

  if (!(v3 >> 28))
  {
    v5 = WTF::fastMalloc((16 * v3));
    *(v2 + 8) = v3;
    *v2 = v5;
    v6 = *(a2 + 12);
    if (v6)
    {
      v7 = *a2;
      v8 = 16 * v6;
      do
      {
        v9 = *v7++;
        *v5++ = v9;
        v8 -= 16;
      }

      while (v8);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

BOOL WTF::VectorTypeOperations<WebCore::LinearTimingFunction::Point>::compare(double *a1, double *a2, unint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v3 = a1 + 3;
  v4 = a2 + 3;
  v5 = 1;
  do
  {
    v6 = v5;
    if (a3 == v5)
    {
      break;
    }

    if (*(v3 - 1) != *(v4 - 1))
    {
      break;
    }

    v7 = *v3;
    v3 += 2;
    v8 = v7;
    v9 = *v4;
    v4 += 2;
    ++v5;
  }

  while (v8 == v9);
  return v6 >= a3;
}

__n128 WebCore::CubicBezierTimingFunction::clone@<Q0>(__n128 *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = WTF::fastMalloc(0x38);
  v5 = this[3].n128_u8[0];
  *(v4 + 8) = 1;
  *v4 = &unk_1F10E7DD8;
  result = this[1];
  v7 = this[2];
  *(v4 + 16) = result;
  *(v4 + 32) = v7;
  *(v4 + 48) = v5;
  *a2 = v4;
  return result;
}

void WebCore::CubicBezierTimingFunction::~CubicBezierTimingFunction(WebCore::CubicBezierTimingFunction *this)
{
  if (*(this + 2) != 1)
  {
    __break(0xC471u);
  }
}

void WebCore::CubicBezierTimingFunction::~CubicBezierTimingFunction(WebCore::CubicBezierTimingFunction *this, void *a2)
{
  if (*(this + 2) == 1)
  {
    WTF::fastFree(this, a2);
  }

  else
  {
    __break(0xC471u);
  }
}

BOOL WebCore::CubicBezierTimingFunction::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 24))(a2) != 1)
  {
    return 0;
  }

  v4 = *(a1 + 48);
  if (v4 != *(a2 + 48))
  {
    return 0;
  }

  if (v4 == 4)
  {
    if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
    {
      return *(a1 + 40) == *(a2 + 40);
    }

    return 0;
  }

  return 1;
}

uint64_t WebCore::StepsTimingFunction::clone@<X0>(WebCore::StepsTimingFunction *this@<X0>, void *a2@<X8>)
{
  result = WTF::fastMalloc(0x18);
  v5 = *(this + 3);
  v6 = *(this + 8);
  *(result + 8) = 1;
  *(result + 12) = v5;
  *result = &unk_1F10E7E10;
  *(result + 16) = v6;
  *a2 = result;
  return result;
}

void WebCore::StepsTimingFunction::~StepsTimingFunction(WebCore::StepsTimingFunction *this)
{
  if (*(this + 2) != 1)
  {
    __break(0xC471u);
  }
}

void WebCore::StepsTimingFunction::~StepsTimingFunction(WebCore::StepsTimingFunction *this, void *a2)
{
  if (*(this + 2) == 1)
  {
    WTF::fastFree(this, a2);
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t WebCore::StepsTimingFunction::operator==(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 24))(a2);
  if (result != 2 || *(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  v5 = *(a1 + 17);
  v6 = *(a2 + 17);
  if (v5 != 1 || v6 == 0)
  {
    if (v5 == v6)
    {
      return 1;
    }
  }

  else if (*(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  if (v5)
  {
    if ((v6 & 1) == 0)
    {
      v8 = *(a1 + 16);
      return v8 == 5;
    }

    return 0;
  }

  if (v6)
  {
    v8 = *(a2 + 16);
    return v8 == 5;
  }

  __break(1u);
  return result;
}

__n128 WebCore::SpringTimingFunction::clone@<Q0>(__n128 *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = WTF::fastMalloc(0x30);
  *(v4 + 8) = 1;
  *v4 = &unk_1F10E7E48;
  result = this[1];
  v6 = this[2];
  *(v4 + 16) = result;
  *(v4 + 32) = v6;
  *a2 = v4;
  return result;
}

void WebCore::SpringTimingFunction::~SpringTimingFunction(WebCore::SpringTimingFunction *this)
{
  if (*(this + 2) != 1)
  {
    __break(0xC471u);
  }
}

void WebCore::SpringTimingFunction::~SpringTimingFunction(WebCore::SpringTimingFunction *this, void *a2)
{
  if (*(this + 2) == 1)
  {
    WTF::fastFree(this, a2);
  }

  else
  {
    __break(0xC471u);
  }
}

__n128 WebCore::ResourceLoadStatistics::ResourceLoadStatistics(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *a1 = v2;
  v3 = *(a2 + 1);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 8) = v3;
  *(a1 + 40) = 0;
  v4 = a2[5];
  a2[5] = 0;
  *(a1 + 40) = v4;
  *(a1 + 48) = 0;
  v5 = a2[6];
  a2[6] = 0;
  *(a1 + 48) = v5;
  *(a1 + 56) = 0;
  v6 = a2[7];
  a2[7] = 0;
  *(a1 + 56) = v6;
  *(a1 + 64) = 0;
  v7 = a2[8];
  a2[8] = 0;
  *(a1 + 64) = v7;
  *(a1 + 72) = 0;
  v8 = a2[9];
  a2[9] = 0;
  *(a1 + 72) = v8;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = 0;
  v9 = a2[11];
  a2[11] = 0;
  *(a1 + 88) = v9;
  *(a1 + 96) = 0;
  v10 = a2[12];
  a2[12] = 0;
  *(a1 + 96) = v10;
  *(a1 + 104) = 0;
  v11 = a2[13];
  a2[13] = 0;
  *(a1 + 104) = v11;
  *(a1 + 112) = 0;
  v12 = a2[14];
  a2[14] = 0;
  *(a1 + 112) = v12;
  *(a1 + 120) = 0;
  v13 = a2[15];
  a2[15] = 0;
  *(a1 + 120) = v13;
  *(a1 + 128) = *(a2 + 8);
  *(a1 + 144) = 0;
  v14 = a2[18];
  a2[18] = 0;
  *(a1 + 144) = v14;
  *(a1 + 152) = 0;
  v15 = a2[19];
  a2[19] = 0;
  *(a1 + 152) = v15;
  *(a1 + 160) = 0;
  v16 = a2[20];
  a2[20] = 0;
  *(a1 + 160) = v16;
  *(a1 + 168) = 0;
  v17 = a2[21];
  a2[21] = 0;
  *(a1 + 168) = v17;
  *(a1 + 176) = *(a2 + 176);
  result = *(a2 + 23);
  *(a1 + 184) = result;
  return result;
}

void WebCore::ResourceLoadStatistics::~ResourceLoadStatistics(WebCore::ResourceLoadStatistics *this, WTF::StringImpl *a2)
{
  v3 = *(this + 21);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 20);
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(this + 19);
  if (v5)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  v6 = *(this + 18);
  if (v6)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v6, a2);
  }

  v7 = *(this + 15);
  if (v7)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v7, a2);
  }

  v8 = *(this + 14);
  if (v8)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v8, a2);
  }

  v9 = *(this + 13);
  if (v9)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v9, a2);
  }

  v10 = *(this + 12);
  if (v10)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v10, a2);
  }

  v11 = *(this + 11);
  if (v11)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v11, a2);
  }

  v12 = *(this + 9);
  if (v12)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v12, a2);
  }

  v13 = *(this + 8);
  if (v13)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v13, a2);
  }

  v14 = *(this + 7);
  if (v14)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v14, a2);
  }

  v15 = *(this + 6);
  if (v15)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v15, a2);
  }

  v16 = *(this + 5);
  if (v16)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v16, a2);
  }

  v17 = *this;
  *this = 0;
  if (v17)
  {
    if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, a2);
    }
  }
}

uint64_t WTF::Vector<WTF::Ref<WebCore::File,WTF::RawPtrTraits<WebCore::File>,WTF::DefaultRefDerefTraits<WebCore::File>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WTF::Ref<WebCore::File,WTF::RawPtrTraits<WebCore::File>,WTF::DefaultRefDerefTraits<WebCore::File>>>::destruct(*a1, (*a1 + 8 * v3));
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

_DWORD *WTF::VectorDestructor<true,WTF::Ref<WebCore::File,WTF::RawPtrTraits<WebCore::File>,WTF::DefaultRefDerefTraits<WebCore::File>>>::destruct(_DWORD *result, _DWORD **a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = *v3;
      *v3 = 0;
      if (result)
      {
        if (result[4] == 1)
        {
          result = (*(*result + 8))(result);
        }

        else
        {
          --result[4];
        }
      }

      ++v3;
    }

    while (v3 != a2);
  }

  return result;
}

void WebCore::ShareDataWithParsedURL::~ShareDataWithParsedURL(WebCore::ShareDataWithParsedURL *this, void *a2)
{
  WTF::Vector<WebCore::RawFile,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 88, a2);
  if (*(this + 80) == 1)
  {
    v4 = *(this + 5);
    *(this + 5) = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, v3);
      }
    }
  }

  WTF::Vector<WTF::Ref<WebCore::File,WTF::RawPtrTraits<WebCore::File>,WTF::DefaultRefDerefTraits<WebCore::File>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 24, v3);
  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  v7 = *(this + 1);
  *(this + 1) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  v8 = *this;
  *this = 0;
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v5);
    }
  }
}

uint64_t WTF::Vector<WebCore::RawFile,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::RawFile>::destruct(*a1, (*a1 + 16 * v3));
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

void sub_19D7C93C4(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WTF::VectorTypeOperations<WebCore::RawFile>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 1);
      *(v3 + 1) = 0;
      if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v4 + 2);
        (*(*v4 + 8))(v4);
      }

      result = *v3;
      *v3 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      v3 = (v3 + 16);
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      if (*v4)
      {
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*v4, a2);
      }

      ++v4;
      v5 -= 8;
    }

    while (v5);
    v4 = *a1;
  }

  if (v4)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<WebCore::FloatPoint,WTF::String,WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::move_constructor(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 16) = -1;
  if (*(a2 + 16) <= 1u)
  {
    v4 = *a2;
    if (*(a2 + 16))
    {
      *a2 = 0;
    }

    *a1 = v4;
    goto LABEL_8;
  }

  if (*(a2 + 16) == 2)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
LABEL_8:
    *(a1 + 16) = *(a2 + 16);
  }

  return a1;
}

void sub_19D7C9594(_Unwind_Exception *a1, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  mpark::detail::move_constructor<mpark::detail::traits<WebCore::FloatPoint,WTF::String,WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v2, a2);
  _Unwind_Resume(a1);
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<WebCore::FloatPoint,WTF::String,WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 16) > 1u)
  {
    if (*(a1 + 16) == 2)
    {
      WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1, a2);
    }
  }

  else if (*(a1 + 16))
  {
    v3 = *a1;
    *a1 = 0;
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }
    }
  }

  *(a1 + 16) = -1;
  return a1;
}

uint64_t WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::deallocateTable(WTF::StringImpl **a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 1);
  if (v3)
  {
    v4 = a1;
    do
    {
      v5 = *v4;
      if (*v4 != -1)
      {
        *v4 = 0;
        if (v5)
        {
          if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v5, a2);
          }
        }
      }

      v4 += 5;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 2), a2);
}

uint64_t WebCore::PrivateClickMeasurement::PrivateClickMeasurement(uint64_t a1, _BYTE *a2, uint64_t *a3, uint64_t *a4, void *a5, _BYTE *a6, _OWORD *a7, uint64_t a8, _OWORD *a9, uint64_t *a10, uint64_t *a11)
{
  *a1 = *a2;
  v12 = *a3;
  *a3 = 0;
  *(a1 + 8) = v12;
  v13 = *a4;
  *a4 = 0;
  *(a1 + 16) = v13;
  *(a1 + 24) = *a5;
  *(a1 + 32) = *a6;
  *(a1 + 40) = *a7;
  std::__optional_move_base<WebCore::PCM::AttributionTriggerData,false>::__optional_move_base[abi:sn200100](a1 + 56, a8);
  v14 = a9[1];
  *(a1 + 192) = *a9;
  *(a1 + 208) = v14;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  if (*(a10 + 8) == 1)
  {
    v15 = *a10;
    *a10 = 0;
    *(a1 + 224) = v15;
    *(a1 + 232) = 1;
  }

  *(a1 + 296) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0;
  v16 = *a11;
  *a11 = 0;
  *(a1 + 304) = v16;
  return a1;
}

void WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(WebCore::PrivateClickMeasurement *this, WTF::StringImpl *a2)
{
  v3 = *(this + 38);
  *(this + 38) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  if (*(this + 296) == 1)
  {
    v4 = *(this + 36);
    *(this + 36) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *(this + 35);
    *(this + 35) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *(this + 34);
    *(this + 34) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }

  v7 = *(this + 33);
  *(this + 33) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(this + 32);
  *(this + 32) = 0;
  if (v8)
  {
  }

  v9 = *(this + 31);
  *(this + 31) = 0;
  if (v9)
  {
  }

  v10 = *(this + 30);
  *(this + 30) = 0;
  if (v10)
  {
  }

  if (*(this + 232) == 1)
  {
    v11 = *(this + 28);
    *(this + 28) = 0;
    if (v11)
    {
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, a2);
      }
    }
  }

  if (*(this + 184) == 1)
  {
    WebCore::PCM::AttributionTriggerData::~AttributionTriggerData((this + 56), a2);
  }

  v12 = *(this + 2);
  *(this + 2) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  v13 = *(this + 1);
  *(this + 1) = 0;
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }
  }
}

void WebCore::PCM::AttributionTriggerData::~AttributionTriggerData(WebCore::PCM::AttributionTriggerData *this, WTF::StringImpl *a2)
{
  if (*(this + 120) == 1)
  {
    v3 = *(this + 14);
    *(this + 14) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *(this + 13);
    *(this + 13) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *(this + 12);
    *(this + 12) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }

  if (*(this + 88) == 1)
  {
    v6 = *(this + 10);
    *(this + 10) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }

    v7 = *(this + 9);
    *(this + 9) = 0;
    if (v7)
    {
    }

    v8 = *(this + 8);
    *(this + 8) = 0;
    if (v8)
    {
    }

    v9 = *(this + 7);
    *(this + 7) = 0;
    if (v9)
    {
    }
  }

  if (*(this + 48) == 1)
  {
    v11 = *(this + 5);
    *(this + 5) = 0;
    if (v11)
    {
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, a2);
      }
    }
  }

  if (*(this + 32) == 1)
  {
    v10 = *(this + 3);
    *(this + 3) = 0;
    if (v10)
    {
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, a2);
      }
    }
  }

  if (*(this + 16) == 1)
  {
    v12 = *(this + 1);
    *(this + 1) = 0;
    if (v12)
    {
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, a2);
      }
    }
  }
}

__n128 std::__optional_move_base<WebCore::ApplePayLineItem,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    *a1 = *a2;
    v2 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a1 + 8) = v2;
    v3 = *(a2 + 16);
    *(a2 + 16) = 0;
    *(a1 + 16) = v3;
    result = *(a2 + 24);
    v5 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v5;
    *(a1 + 24) = result;
    v6 = *(a2 + 64);
    *(a2 + 64) = 0;
    *(a1 + 64) = v6;
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 80) = 1;
  }

  return result;
}

void WebCore::ApplePayRecurringPaymentRequest::~ApplePayRecurringPaymentRequest(WebCore::ApplePayRecurringPaymentRequest *this, WTF::StringImpl *a2)
{
  v3 = *(this + 24);
  *(this + 24) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 23);
  *(this + 23) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 22);
  *(this + 22) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  if (*(this + 168) == 1)
  {
    v6 = *(this + 19);
    *(this + 19) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }

    v7 = *(this + 13);
    *(this + 13) = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }

    v8 = *(this + 12);
    *(this + 12) = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, a2);
    }
  }

  v9 = *(this + 9);
  *(this + 9) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
  }

  v10 = *(this + 3);
  *(this + 3) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  v11 = *(this + 2);
  *(this + 2) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, a2);
  }

  v12 = *this;
  *this = 0;
  if (v12)
  {
    if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, a2);
    }
  }
}

void WebCore::ApplePayDeferredPaymentRequest::~ApplePayDeferredPaymentRequest(WebCore::ApplePayDeferredPaymentRequest *this, WTF::StringImpl *a2)
{
  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 14);
  *(this + 14) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 13);
  *(this + 13) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 12);
  *(this + 12) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(this + 9);
  *(this + 9) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(this + 3);
  *(this + 3) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  v9 = *(this + 2);
  *(this + 2) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
  }

  v10 = *this;
  *this = 0;
  if (v10)
  {
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, a2);
    }
  }
}

void WebCore::ApplePayAutomaticReloadPaymentRequest::~ApplePayAutomaticReloadPaymentRequest(WebCore::ApplePayAutomaticReloadPaymentRequest *this, WTF::StringImpl *a2)
{
  v3 = *(this + 13);
  *(this + 13) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 12);
  *(this + 12) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 11);
  *(this + 11) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 9);
  *(this + 9) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(this + 3);
  *(this + 3) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(this + 2);
  *(this + 2) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  v9 = *this;
  *this = 0;
  if (v9)
  {
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, a2);
    }
  }
}

void *WebCore::ApplePaySetupConfiguration::ApplePaySetupConfiguration(void *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  *a1 = v3;
  v4 = a2[1];
  a2[1] = 0;
  a1[1] = v4;
  v5 = a2[2];
  a2[2] = 0;
  a1[3] = 0;
  a1[2] = v5;
  a1[4] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((a1 + 3), a2 + 6);
  return a1;
}

void sub_19D7C9EC8(_Unwind_Exception *exception_object, void *a2)
{
  v4 = v3;
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    WTF::fastFree(v6, a2);
  }

  v7 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(v2 + 8);
  *(v2 + 8) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  v9 = *v2;
  *v2 = 0;
  if (v9)
  {
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebCore::ApplePayError::~ApplePayError(WebCore::ApplePayError *this, WTF::StringImpl *a2)
{
  WebCore::ApplePayError::~ApplePayError(this, a2);

  WTF::fastFree(v2, v3);
}

{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  if (*(this + 2) != 1)
  {
    __break(0xC471u);
  }
}

uint64_t std::__optional_move_base<WebCore::ApplePayRecurringPaymentRequest,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 200) = 0;
  if (*(a2 + 200) == 1)
  {
    v4 = *a2;
    *a2 = 0;
    *a1 = v4;
    *(a1 + 8) = *(a2 + 8);
    v5 = a2[2];
    a2[2] = 0;
    *(a1 + 16) = v5;
    v6 = a2[3];
    a2[3] = 0;
    *(a1 + 24) = v6;
    v7 = *(a2 + 2);
    v8 = *(a2 + 3);
    *(a1 + 64) = a2[8];
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
    v9 = a2[9];
    a2[9] = 0;
    *(a1 + 72) = v9;
    *(a1 + 80) = *(a2 + 40);
    std::__optional_move_base<WebCore::ApplePayLineItem,false>::__optional_move_base[abi:sn200100](a1 + 88, (a2 + 11));
    v10 = a2[22];
    a2[22] = 0;
    *(a1 + 176) = v10;
    v11 = a2[23];
    a2[23] = 0;
    *(a1 + 184) = v11;
    v12 = a2[24];
    a2[24] = 0;
    *(a1 + 192) = v12;
    *(a1 + 200) = 1;
  }

  return a1;
}

uint64_t std::__optional_move_base<WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  if (*(a2 + 16) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
    *(a1 + 16) = 1;
  }

  return a1;
}

void sub_19D7CA0F8(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  if (*(v2 + 16) == 1)
  {
    WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::__optional_move_base<WebCore::ApplePayDisbursementRequest,false>::__optional_move_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[24] = 0;
  if (*(a2 + 24) == 1)
  {
    std::__optional_move_base<WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](a1, a2);
    a1[24] = 1;
  }

  return a1;
}

void sub_19D7CA174(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 24) == 1 && *(v2 + 16) == 1)
  {
    v4 = *v2;
    if (*v2)
    {
      *v2 = 0;
      *(v2 + 8) = 0;
      WTF::fastFree(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebCore::ApplePayDetailsUpdateBase::~ApplePayDetailsUpdateBase(WebCore::ApplePayDetailsUpdateBase *this, void *a2)
{
  if (*(this + 608) == 1 && *(this + 600) == 1)
  {
    v3 = *(this + 73);
    if (v3)
    {
      *(this + 73) = 0;
      *(this + 148) = 0;
      WTF::fastFree(v3, a2);
    }
  }

  if (*(this + 576) == 1)
  {
    WebCore::ApplePayDeferredPaymentRequest::~ApplePayDeferredPaymentRequest((this + 448), a2);
  }

  if (*(this + 440) == 1)
  {
    WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 424, a2);
  }

  if (*(this + 416) == 1)
  {
    WebCore::ApplePayAutomaticReloadPaymentRequest::~ApplePayAutomaticReloadPaymentRequest((this + 304), a2);
  }

  if (*(this + 296) == 1)
  {
    WebCore::ApplePayRecurringPaymentRequest::~ApplePayRecurringPaymentRequest((this + 96), a2);
  }

  WTF::Vector<WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 80, a2);
  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  v7 = *(this + 1);
  *(this + 1) = 0;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v4);
    }
  }
}

uint64_t std::__optional_move_base<WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  if (*(a2 + 16) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
    *(a1 + 16) = 1;
  }

  return a1;
}

void sub_19D7CA300(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  if (*(v2 + 16) == 1)
  {
    v5 = *v2;
    if (*v2)
    {
      *v2 = 0;
      *(v2 + 8) = 0;
      WTF::fastFree(v5, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebCore::ApplePayInstallmentConfiguration::~ApplePayInstallmentConfiguration(WebCore::ApplePayInstallmentConfiguration *this, WTF::StringImpl *a2)
{
  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  WTF::Vector<WebCore::ApplePayInstallmentItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 64, a2);
  v5 = *(this + 7);
  *(this + 7) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  v6 = *(this + 6);
  *(this + 6) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  v7 = *(this + 4);
  *(this + 4) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v4);
  }

  v8 = *(this + 3);
  *(this + 3) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v4);
  }

  v9 = *(this + 2);
  *(this + 2) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v4);
  }

  v10 = *(this + 1);
  *(this + 1) = 0;
  if (v10)
  {
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v4);
    }
  }
}

uint64_t WebCore::ApplicationManifest::ApplicationManifest(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  *(a1 + 8) = *(a2 + 8);
  v5 = a2[2];
  a2[2] = 0;
  *(a1 + 16) = v5;
  v6 = a2[3];
  a2[3] = 0;
  *(a1 + 24) = v6;
  v7 = a2[4];
  a2[4] = 0;
  *(a1 + 32) = v7;
  WTF::URL::URL(a1 + 40, a2 + 5);
  *(a1 + 80) = *(a2 + 20);
  WTF::URL::URL(a1 + 88, a2 + 11);
  WTF::URL::URL(a1 + 128, a2 + 16);
  WTF::URL::URL(a1 + 168, a2 + 21);
  *(a1 + 208) = 0;
  if (a1 == a2)
  {
    *(a1 + 216) = 0;
  }

  else
  {
    v8 = a2[26];
    a2[26] = 0;
    *(a1 + 216) = 0;
    *(a1 + 208) = v8;
    v9 = a2[27];
    a2[27] = 0;
    *(a1 + 216) = v9;
  }

  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 224, a2 + 56);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 240, a2 + 60);
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 256, a2 + 64);
  return a1;
}

void sub_19D7CA564(_Unwind_Exception *a1, void *a2)
{
  v7 = *(v2 + 256);
  if (v7)
  {
    *(v2 + 256) = 0;
    *(v2 + 264) = 0;
    WTF::fastFree(v7, a2);
  }

  WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, a2);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, v8);
  v10 = *v5;
  if ((*v5 & 0x8000000000000) != 0)
  {
    v13 = (v10 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v10 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v13);
      WTF::fastFree(v13, v9);
    }
  }

  v11 = *(v2 + 208);
  if ((v11 & 0x8000000000000) != 0)
  {
    v14 = (v11 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v11 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v14);
      WTF::fastFree(v14, v9);
    }
  }

  v12 = *(v2 + 168);
  *(v2 + 168) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v9);
  }

  v15 = *(v2 + 128);
  *(v2 + 128) = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v9);
  }

  v16 = *(v2 + 88);
  *(v2 + 88) = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v9);
  }

  v17 = *(v2 + 40);
  *(v2 + 40) = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v9);
  }

  v18 = *(v2 + 32);
  *(v2 + 32) = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v9);
  }

  v19 = *(v2 + 24);
  *(v2 + 24) = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v9);
  }

  v20 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v9);
  }

  v21 = *v2;
  *v2 = 0;
  if (v21)
  {
    if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v9);
    }
  }

  _Unwind_Resume(a1);
}

void WebCore::ApplicationManifest::~ApplicationManifest(WebCore::ApplicationManifest *this, void *a2)
{
  WTF::Vector<WebCore::ApplicationManifest::Shortcut,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 256, a2);
  WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 240, v3);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 224, v4);
  v6 = *(this + 27);
  if ((v6 & 0x8000000000000) != 0)
  {
    v16 = (v6 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v6 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v16);
      WTF::fastFree(v16, v5);
    }
  }

  v7 = *(this + 26);
  if ((v7 & 0x8000000000000) != 0)
  {
    v17 = (v7 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v7 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v17);
      WTF::fastFree(v17, v5);
    }
  }

  v8 = *(this + 21);
  *(this + 21) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v5);
  }

  v9 = *(this + 16);
  *(this + 16) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v5);
  }

  v10 = *(this + 11);
  *(this + 11) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v5);
  }

  v11 = *(this + 5);
  *(this + 5) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v5);
  }

  v12 = *(this + 4);
  *(this + 4) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v5);
  }

  v13 = *(this + 3);
  *(this + 3) = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v5);
  }

  v14 = *(this + 2);
  *(this + 2) = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v5);
  }

  v15 = *this;
  *this = 0;
  if (v15)
  {
    if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v5);
    }
  }
}

uint64_t WTF::Vector<WebCore::ApplicationManifest::Shortcut,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::ApplicationManifest::Shortcut>::destruct(*a1, (*a1 + (v3 << 6)));
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

void sub_19D7CA914(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WTF::VectorTypeOperations<WebCore::ApplicationManifest::Shortcut>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v3 + 6), a2);
      v4 = v3[1];
      v3[1] = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }

      result = *v3;
      *v3 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      v3 += 8;
    }

    while (v3 != a2);
  }

  return result;
}

void *WebCore::ContactInfo::ContactInfo(void *a1, _DWORD *a2)
{
  *a1 = 0;
  a1[1] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  a1[2] = 0;
  a1[3] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((a1 + 2), a2 + 4);
  a1[4] = 0;
  a1[5] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((a1 + 4), a2 + 8);
  return a1;
}

void sub_19D7CAA1C(_Unwind_Exception *a1, void *a2)
{
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    WTF::fastFree(v6, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, a2);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, v7);
  _Unwind_Resume(a1);
}

uint64_t WebCore::NotificationData::NotificationData(uint64_t a1, uint64_t a2)
{
  WTF::URL::URL(a1, a2);
  v4 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(v5 + 40) = v4;
  v6 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(v5 + 48) = v6;
  v7 = *(a2 + 56);
  *(a2 + 56) = 0;
  *(v5 + 56) = v7;
  v8 = *(a2 + 64);
  *(a2 + 64) = 0;
  *(v5 + 64) = v8;
  v9 = *(a2 + 72);
  *(a2 + 72) = 0;
  *(v5 + 72) = v9;
  *(v5 + 80) = *(a2 + 80);
  v10 = *(a2 + 88);
  *(a2 + 88) = 0;
  *(v5 + 88) = v10;
  WTF::URL::URL(v5 + 96, (a2 + 96));
  v11 = *(a2 + 176);
  v12 = *(a2 + 192);
  v13 = *(a2 + 208);
  v15 = *(a2 + 144);
  v14 = *(a2 + 160);
  *(a1 + 224) = 0;
  *(a1 + 192) = v12;
  *(a1 + 208) = v13;
  *(a1 + 160) = v14;
  *(a1 + 176) = v11;
  *(a1 + 144) = v15;
  *(a1 + 232) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 224, (a2 + 224));
  *(a1 + 240) = *(a2 + 240);
  return a1;
}

void sub_19D7CAB4C(_Unwind_Exception *exception_object, void *a2)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 224) = 0;
    *(v2 + 232) = 0;
    WTF::fastFree(v5, a2);
  }

  v6 = *(v2 + 96);
  *(v2 + 96) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(v2 + 88);
  *(v2 + 88) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(v2 + 72);
  *(v2 + 72) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  v9 = *(v2 + 64);
  *(v2 + 64) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
  }

  v10 = *(v2 + 56);
  *(v2 + 56) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  v11 = *(v2 + 48);
  *(v2 + 48) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, a2);
  }

  v12 = *(v2 + 40);
  *(v2 + 40) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  v13 = *v2;
  *v2 = 0;
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebCore::NotificationData::~NotificationData(WebCore::NotificationData *this, void *a2)
{
  v3 = *(this + 28);
  if (v3)
  {
    *(this + 28) = 0;
    *(this + 58) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 12);
  *(this + 12) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 11);
  *(this + 11) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 9);
  *(this + 9) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(this + 8);
  *(this + 8) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(this + 7);
  *(this + 7) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  v9 = *(this + 6);
  *(this + 6) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
  }

  v10 = *(this + 5);
  *(this + 5) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  v11 = *this;
  *this = 0;
  if (v11)
  {
    if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, a2);
    }
  }
}

uint64_t WebCore::PushSubscriptionData::PushSubscriptionData(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  *(a1 + 32) = 0;
  *(a1 + 16) = v5;
  *(a1 + 40) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 32, (a2 + 32));
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 48, (a2 + 48));
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 64, (a2 + 64));
  return a1;
}

{
  *a1 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 44);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 44) = v5;
  if (v5)
  {
    v6 = WTF::fastMalloc(v5);
    *(a1 + 40) = v5;
    *(a1 + 32) = v6;
    memcpy(v6, *(a2 + 32), *(a2 + 44));
  }

  v7 = *(a2 + 60);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 60) = v7;
  if (v7)
  {
    v8 = WTF::fastMalloc(v7);
    *(a1 + 56) = v7;
    *(a1 + 48) = v8;
    memcpy(v8, *(a2 + 48), *(a2 + 60));
  }

  v9 = *(a2 + 76);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 76) = v9;
  if (v9)
  {
    v10 = WTF::fastMalloc(v9);
    *(a1 + 72) = v9;
    *(a1 + 64) = v10;
    memcpy(v10, *(a2 + 64), *(a2 + 76));
  }

  return a1;
}

void sub_19D7CAE40(_Unwind_Exception *exception_object, void *a2)
{
  v7 = *v5;
  if (*v5)
  {
    *(v2 + 64) = 0;
    *(v2 + 72) = 0;
    WTF::fastFree(v7, a2);
  }

  v8 = *v4;
  if (*v4)
  {
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    WTF::fastFree(v8, a2);
  }

  v9 = *v3;
  if (*v3)
  {
    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    WTF::fastFree(v9, a2);
  }

  v10 = *(v2 + 8);
  *(v2 + 8) = 0;
  if (v10)
  {
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__optional_move_base<WebCore::AuthenticationExtensionsClientOutputs,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    *a1 = *a2;
    *(a1 + 8) = 0;
    *(a1 + 32) = 0;
    if (*(a2 + 32) == 1)
    {
      *(a1 + 8) = *(a2 + 8);
      v3 = *(a2 + 16);
      *(a2 + 16) = 0;
      *(a1 + 16) = v3;
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = 1;
    }

    std::__optional_move_base<WebCore::AuthenticationExtensionsClientOutputs::PRFOutputs,false>::__optional_move_base[abi:sn200100](a1 + 40, a2 + 40);
    *(a1 + 80) = 1;
  }

  return a1;
}

void sub_19D7CAF44(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    v3 = *(v1 + 16);
    *(v1 + 16) = 0;
    if (v3)
    {
      WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v3);
    }
  }

  if (*(v1 + 80) == 1)
  {
    if (*(v1 + 72) == 1 && *(v1 + 64) == 1)
    {
      v4 = *(v1 + 56);
      *(v1 + 56) = 0;
      if (v4)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v4);
      }

      v5 = *(v1 + 48);
      *(v1 + 48) = 0;
      if (v5)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v5);
      }
    }

    if (*(v1 + 32) == 1)
    {
      v6 = *(v1 + 16);
      *(v1 + 16) = 0;
      if (v6)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v6);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

void *WebCore::AuthenticatorAttestationResponseData::AuthenticatorAttestationResponseData(void *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  std::__optional_move_base<WebCore::AuthenticationExtensionsClientOutputs,false>::__optional_move_base[abi:sn200100]((a1 + 1), (a2 + 1));
  v5 = a2[12];
  a2[12] = 0;
  a1[12] = v5;
  v6 = a2[13];
  a2[13] = 0;
  a1[14] = 0;
  a1[13] = v6;
  a1[15] = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt((a1 + 14), a2 + 14);
  return a1;
}

void sub_19D7CB03C(_Unwind_Exception *exception_object, void *a2)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 112) = 0;
    *(v2 + 120) = 0;
    WTF::fastFree(v5, a2);
  }

  v6 = *(v2 + 104);
  *(v2 + 104) = 0;
  if (v6)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v6);
  }

  v7 = *(v2 + 96);
  *(v2 + 96) = 0;
  if (v7)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v7);
  }

  if (*(v2 + 88) == 1)
  {
    if (*(v2 + 80) == 1 && *(v2 + 72) == 1)
    {
      v8 = *(v2 + 64);
      *(v2 + 64) = 0;
      if (v8)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v8);
      }

      v9 = *(v2 + 56);
      *(v2 + 56) = 0;
      if (v9)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v9);
      }
    }

    if (*(v2 + 40) == 1)
    {
      v10 = *(v2 + 24);
      *(v2 + 24) = 0;
      if (v10)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v10);
      }
    }
  }

  v11 = *v2;
  *v2 = 0;
  if (v11)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v11);
  }

  _Unwind_Resume(exception_object);
}

void WebCore::AuthenticatorAttestationResponseData::~AuthenticatorAttestationResponseData(WebCore::AuthenticatorAttestationResponseData *this, void *a2)
{
  v3 = *(this + 14);
  if (v3)
  {
    *(this + 14) = 0;
    *(this + 30) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 13);
  *(this + 13) = 0;
  if (v4)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v4);
  }

  v5 = *(this + 12);
  *(this + 12) = 0;
  if (v5)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v5);
  }

  if (*(this + 88) == 1)
  {
    if (*(this + 80) == 1 && *(this + 72) == 1)
    {
      v6 = *(this + 8);
      *(this + 8) = 0;
      if (v6)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v6);
      }

      v7 = *(this + 7);
      *(this + 7) = 0;
      if (v7)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v7);
      }
    }

    if (*(this + 40) == 1)
    {
      v8 = *(this + 3);
      *(this + 3) = 0;
      if (v8)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v8);
      }
    }
  }

  v9 = *this;
  *this = 0;
  if (v9)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v9);
  }
}

void WebCore::AuthenticatorAssertionResponseData::~AuthenticatorAssertionResponseData(WebCore::AuthenticatorAssertionResponseData *this)
{
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v2);
  }

  v3 = *(this + 14);
  *(this + 14) = 0;
  if (v3)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v3);
  }

  v4 = *(this + 13);
  *(this + 13) = 0;
  if (v4)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v4);
  }

  v5 = *(this + 12);
  *(this + 12) = 0;
  if (v5)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v5);
  }

  if (*(this + 88) == 1)
  {
    if (*(this + 80) == 1 && *(this + 72) == 1)
    {
      v6 = *(this + 8);
      *(this + 8) = 0;
      if (v6)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v6);
      }

      v7 = *(this + 7);
      *(this + 7) = 0;
      if (v7)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v7);
      }
    }

    if (*(this + 40) == 1)
    {
      v8 = *(this + 3);
      *(this + 3) = 0;
      if (v8)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v8);
      }
    }
  }

  v9 = *this;
  *this = 0;
  if (v9)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v9);
  }
}

_BYTE *std::__optional_copy_base<WebCore::AuthenticationExtensionsClientOutputs,false>::__optional_copy_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[80] = 0;
  if (*(a2 + 80) == 1)
  {
    std::__optional_storage_base<WebCore::AuthenticationExtensionsClientOutputs,false>::__construct[abi:sn200100]<WebCore::AuthenticationExtensionsClientOutputs const&>(a1, a2);
  }

  return a1;
}

void sub_19D7CB2D0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 80) == 1)
  {
    if (*(v1 + 72) == 1 && *(v1 + 64) == 1)
    {
      v3 = *(v1 + 56);
      *(v1 + 56) = 0;
      if (v3)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v3);
      }

      v4 = *(v1 + 48);
      *(v1 + 48) = 0;
      if (v4)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v4);
      }
    }

    if (*(v1 + 32) == 1)
    {
      v5 = *(v1 + 16);
      *(v1 + 16) = 0;
      if (v5)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v5);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::__optional_storage_base<WebCore::AuthenticationExtensionsClientOutputs,false>::__construct[abi:sn200100]<WebCore::AuthenticationExtensionsClientOutputs const&>(_BYTE *result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    *result = *a2;
    result[8] = 0;
    result[32] = 0;
    if (*(a2 + 32) == 1)
    {
      *(result + 4) = *(a2 + 8);
      v3 = *(a2 + 16);
      if (v3)
      {
        *v3 += 2;
      }

      *(result + 2) = v3;
      *(result + 12) = *(a2 + 24);
      result[32] = 1;
    }

    result = std::__optional_copy_base<WebCore::AuthenticationExtensionsClientOutputs::PRFOutputs,false>::__optional_copy_base[abi:sn200100](result + 40, a2 + 40);
    v2[80] = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_19D7CB3C4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    v3 = *(v1 + 16);
    *(v1 + 16) = 0;
    if (v3)
    {
      WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::__optional_copy_base<WebCore::AuthenticationExtensionsClientOutputs::PRFOutputs,false>::__optional_copy_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[32] = 0;
  if (*(a2 + 32) == 1)
  {
    *a1 = *a2;
    std::__optional_copy_base<WebCore::AuthenticationExtensionsClientOutputs::PRFValues,false>::__optional_copy_base[abi:sn200100]((a1 + 8), a2 + 8);
    a1[32] = 1;
  }

  return a1;
}

void sub_19D7CB448(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1 && *(v1 + 24) == 1)
  {
    v4 = *(v1 + 16);
    *(v1 + 16) = 0;
    if (v4)
    {
      WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v4);
    }

    v5 = *v2;
    *v2 = 0;
    if (v5)
    {
      WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v5);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__optional_copy_base<WebCore::AuthenticationExtensionsClientOutputs::PRFValues,false>::__optional_copy_base[abi:sn200100](uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 16) = 0;
  if (*(a2 + 16) == 1)
  {
    v2 = *a2;
    if (*a2)
    {
      *v2 += 2;
    }

    *result = v2;
    v3 = *(a2 + 8);
    if (v3)
    {
      *v3 += 2;
    }

    *(result + 8) = v3;
    *(result + 16) = 1;
  }

  return result;
}

void mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::AuthenticatorResponseBaseData,WebCore::AuthenticatorAttestationResponseData,WebCore::AuthenticatorAssertionResponseData>,(mpark::detail::Trait)1> &>(int a1, WTF::DeferrableRefCountedBase **this)
{
  v3 = *(this + 128);
  if (v3 == 255)
  {
    v3 = -1;
  }

  if (v3 > 1)
  {
    if (v3 == 2)
    {

      WebCore::AuthenticatorAttestationResponseData::~AuthenticatorAttestationResponseData(this, this);
    }

    else
    {

      WebCore::AuthenticatorAssertionResponseData::~AuthenticatorAssertionResponseData(this);
    }
  }

  else if (v3)
  {
    if (*(this + 88) == 1)
    {
      if (*(this + 80) == 1 && *(this + 72) == 1)
      {
        v4 = this[8];
        this[8] = 0;
        if (v4)
        {
          WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v4);
        }

        v5 = this[7];
        this[7] = 0;
        if (v5)
        {
          WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v5);
        }
      }

      if (*(this + 40) == 1)
      {
        v6 = this[3];
        this[3] = 0;
        if (v6)
        {
          WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v6);
        }
      }
    }

    v7 = *this;
    *this = 0;
    if (v7)
    {

      WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v7);
    }
  }
}

uint64_t WebCore::AuthenticatorResponseData::AuthenticatorResponseData(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = (a1 + 16);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0u;
  v5 = (a1 + 104);
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  v6 = *(a2 + 128);
  if (v6 == 255)
  {
    v7 = -1;
  }

  else
  {
    v7 = *(a2 + 128);
  }

  if (v7 > 1)
  {
    if (v7 == 2)
    {
      if (v6 != 2)
      {
        goto LABEL_45;
      }

      *a1 = 1;
      v8 = *a2;
      if (*a2)
      {
        *v8 += 2;
      }

      *(a1 + 8) = v8;
      std::__optional_storage_base<WebCore::AuthenticationExtensionsClientOutputs,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::AuthenticationExtensionsClientOutputs,false> const&>(v4, a2 + 8);
      v9 = *(a2 + 96);
      if (v9)
      {
        *v9 += 2;
      }

      v10 = *v5;
      *v5 = v9;
      if (v10)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v10);
      }

      v11 = *(a2 + 104);
      if (v11)
      {
        *v11 += 2;
      }

      v12 = *(a1 + 112);
      *(a1 + 112) = v11;
      if (v12)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v12);
      }

      WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=((a1 + 144), a2 + 112);
    }

    else
    {
      if (v6 != 3)
      {
        goto LABEL_45;
      }

      v14 = *a2;
      if (*a2)
      {
        *v14 += 2;
      }

      *(a1 + 8) = v14;
      std::__optional_storage_base<WebCore::AuthenticationExtensionsClientOutputs,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::AuthenticationExtensionsClientOutputs,false> const&>(v4, a2 + 8);
      v15 = *(a2 + 96);
      if (v15)
      {
        *v15 += 2;
      }

      v16 = *v5;
      *v5 = v15;
      if (v16)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v16);
      }

      v17 = *(a2 + 104);
      if (v17)
      {
        *v17 += 2;
      }

      v18 = *(a1 + 120);
      *(a1 + 120) = v17;
      if (v18)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v18);
      }

      v19 = *(a2 + 112);
      if (v19)
      {
        *v19 += 2;
      }

      v20 = *(a1 + 128);
      *(a1 + 128) = v19;
      if (v20)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v20);
      }

      v21 = *(a2 + 120);
      if (v21)
      {
        *v21 += 2;
      }

      v22 = *(a1 + 136);
      *(a1 + 136) = v21;
      if (v22)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v22);
      }
    }
  }

  else if (v7)
  {
    if (v6 != 1)
    {
      goto LABEL_45;
    }

    v13 = *a2;
    if (*a2)
    {
      *v13 += 2;
    }

    *(a1 + 8) = v13;
    std::__optional_storage_base<WebCore::AuthenticationExtensionsClientOutputs,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::AuthenticationExtensionsClientOutputs,false> const&>(v4, a2 + 8);
  }

  else if (*(a2 + 128))
  {
LABEL_45:
    mpark::throw_bad_variant_access(v4);
  }

  return a1;
}

{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a1 + 8) = v4;
  std::__optional_move_base<WebCore::AuthenticationExtensionsClientOutputs,false>::__optional_move_base[abi:sn200100](a1 + 16, a2 + 16);
  v5 = *(a2 + 104);
  *(a2 + 104) = 0;
  *(a1 + 104) = v5;
  v6 = *(a2 + 112);
  *(a2 + 112) = 0;
  *(a1 + 112) = v6;
  v7 = *(a2 + 120);
  *(a2 + 120) = 0;
  *(a1 + 120) = v7;
  v8 = *(a2 + 128);
  *(a2 + 128) = 0;
  *(a1 + 128) = v8;
  v9 = *(a2 + 136);
  *(a2 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 136) = v9;
  *(a1 + 152) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 144, (a2 + 144));
  return a1;
}

void sub_19D7CB7D0(_Unwind_Exception *exception_object, void *a2)
{
  v5 = *(v2 + 144);
  if (v5)
  {
    *(v2 + 144) = 0;
    *(v2 + 152) = 0;
    WTF::fastFree(v5, a2);
  }

  v6 = *(v2 + 136);
  *(v2 + 136) = 0;
  if (v6)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v6);
  }

  v7 = *(v2 + 128);
  *(v2 + 128) = 0;
  if (v7)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v7);
  }

  v8 = *(v2 + 120);
  *(v2 + 120) = 0;
  if (v8)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v8);
  }

  v9 = *(v2 + 112);
  *(v2 + 112) = 0;
  if (v9)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v9);
  }

  v10 = *v3;
  *v3 = 0;
  if (v10)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v10);
  }

  if (*(v2 + 96) == 1)
  {
    if (*(v2 + 88) == 1 && *(v2 + 80) == 1)
    {
      v11 = *(v2 + 72);
      *(v2 + 72) = 0;
      if (v11)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v11);
      }

      v12 = *(v2 + 64);
      *(v2 + 64) = 0;
      if (v12)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v12);
      }
    }

    if (*(v2 + 48) == 1)
    {
      v13 = *(v2 + 32);
      *(v2 + 32) = 0;
      if (v13)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v13);
      }
    }
  }

  v14 = *(v2 + 8);
  *(v2 + 8) = 0;
  if (v14)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v14);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::__optional_storage_base<WebCore::AuthenticationExtensionsClientOutputs,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::AuthenticationExtensionsClientOutputs,false> const&>(_BYTE *result, uint64_t a2)
{
  v2 = result;
  if (result[80] == *(a2 + 80))
  {
    if (result[80])
    {
      v3 = (a2 + 40);
      *result = *a2;
      std::__optional_storage_base<WebCore::AuthenticationExtensionsClientOutputs::LargeBlobOutputs,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::AuthenticationExtensionsClientOutputs::LargeBlobOutputs,false> const&>((result + 8), a2 + 8);

      return std::__optional_storage_base<WebCore::AuthenticationExtensionsClientOutputs::PRFOutputs,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::AuthenticationExtensionsClientOutputs::PRFOutputs,false> const&>((v2 + 40), v3);
    }
  }

  else if (result[80])
  {
    if (result[72] == 1 && result[64] == 1)
    {
      v4 = *(result + 7);
      *(v2 + 7) = 0;
      if (v4)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v4);
      }

      result = *(v2 + 6);
      *(v2 + 6) = 0;
      if (result)
      {
        result = WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(result);
      }
    }

    if (v2[32] == 1)
    {
      result = *(v2 + 2);
      *(v2 + 2) = 0;
      if (result)
      {
        result = WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(result);
      }
    }

    v2[80] = 0;
  }

  else
  {

    return std::__optional_storage_base<WebCore::AuthenticationExtensionsClientOutputs,false>::__construct[abi:sn200100]<WebCore::AuthenticationExtensionsClientOutputs const&>(result, a2);
  }

  return result;
}

uint64_t std::__optional_storage_base<WebCore::AuthenticationExtensionsClientOutputs::LargeBlobOutputs,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::AuthenticationExtensionsClientOutputs::LargeBlobOutputs,false> const&>(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(result + 24) == *(a2 + 24))
  {
    if (*(result + 24))
    {
      *result = *a2;
      v4 = *(a2 + 8);
      if (v4)
      {
        *v4 += 2;
      }

      result = *(result + 8);
      *(v3 + 8) = v4;
      if (result)
      {
        result = WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(result);
      }

      *(v3 + 16) = *(a2 + 16);
    }
  }

  else if (*(result + 24))
  {
    result = *(result + 8);
    *(v3 + 8) = 0;
    if (result)
    {
      result = WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(result);
    }

    *(v3 + 24) = 0;
  }

  else
  {
    *result = *a2;
    v5 = *(a2 + 8);
    if (v5)
    {
      *v5 += 2;
    }

    *(result + 8) = v5;
    *(result + 16) = *(a2 + 16);
    *(result + 24) = 1;
  }

  return result;
}

uint64_t std::__optional_storage_base<WebCore::AuthenticationExtensionsClientOutputs::PRFOutputs,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::AuthenticationExtensionsClientOutputs::PRFOutputs,false> const&>(uint64_t result, __int16 *a2)
{
  v2 = result;
  if (*(result + 32) == *(a2 + 32))
  {
    if (*(result + 32))
    {
      v4 = *a2;
      v3 = (a2 + 4);
      *result = v4;
      v5 = result + 8;

      return std::__optional_storage_base<WebCore::AuthenticationExtensionsClientOutputs::PRFValues,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::AuthenticationExtensionsClientOutputs::PRFValues,false> const&>(v5, v3);
    }
  }

  else if (*(result + 32))
  {
    if (*(result + 24) == 1)
    {
      v6 = *(result + 16);
      *(v2 + 16) = 0;
      if (v6)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v6);
      }

      result = *(v2 + 8);
      *(v2 + 8) = 0;
      if (result)
      {
        result = WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(result);
      }
    }

    *(v2 + 32) = 0;
  }

  else
  {
    *result = *a2;
    result = std::__optional_copy_base<WebCore::AuthenticationExtensionsClientOutputs::PRFValues,false>::__optional_copy_base[abi:sn200100](result + 8, (a2 + 4));
    *(v2 + 32) = 1;
  }

  return result;
}

uint64_t std::__optional_storage_base<WebCore::AuthenticationExtensionsClientOutputs::PRFValues,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::AuthenticationExtensionsClientOutputs::PRFValues,false> const&>(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(result + 16) == *(a2 + 16))
  {
    if (*(result + 16))
    {
      v4 = *a2;
      if (*a2)
      {
        *v4 += 2;
      }

      v5 = *result;
      *v3 = v4;
      if (v5)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v5);
      }

      v6 = *(a2 + 8);
      if (v6)
      {
        *v6 += 2;
      }

      result = *(v3 + 8);
      *(v3 + 8) = v6;
      if (result)
      {

        return WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(result);
      }
    }
  }

  else if (*(result + 16))
  {
    v7 = *(result + 8);
    *(v3 + 8) = 0;
    if (v7)
    {
      WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v7);
    }

    result = *v3;
    *v3 = 0;
    if (result)
    {
      result = WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(result);
    }

    *(v3 + 16) = 0;
  }

  else
  {
    v8 = *a2;
    if (*a2)
    {
      *v8 += 2;
    }

    *result = v8;
    v9 = *(a2 + 8);
    if (v9)
    {
      *v9 += 2;
    }

    *(result + 8) = v9;
    *(result + 16) = 1;
  }

  return result;
}

void sub_19D7CBCB8(_Unwind_Exception *exception_object, void *a2)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 144) = 0;
    *(v2 + 152) = 0;
    WTF::fastFree(v5, a2);
  }

  v6 = *(v2 + 136);
  *(v2 + 136) = 0;
  if (v6)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v6);
  }

  v7 = *(v2 + 128);
  *(v2 + 128) = 0;
  if (v7)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v7);
  }

  v8 = *(v2 + 120);
  *(v2 + 120) = 0;
  if (v8)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v8);
  }

  v9 = *(v2 + 112);
  *(v2 + 112) = 0;
  if (v9)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v9);
  }

  v10 = *(v2 + 104);
  *(v2 + 104) = 0;
  if (v10)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v10);
  }

  if (*(v2 + 96) == 1)
  {
    if (*(v2 + 88) == 1 && *(v2 + 80) == 1)
    {
      v11 = *(v2 + 72);
      *(v2 + 72) = 0;
      if (v11)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v11);
      }

      v12 = *(v2 + 64);
      *(v2 + 64) = 0;
      if (v12)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v12);
      }
    }

    if (*(v2 + 48) == 1)
    {
      v13 = *(v2 + 32);
      *(v2 + 32) = 0;
      if (v13)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v13);
      }
    }
  }

  v14 = *(v2 + 8);
  *(v2 + 8) = 0;
  if (v14)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v14);
  }

  _Unwind_Resume(exception_object);
}

void WebCore::AuthenticatorResponseData::~AuthenticatorResponseData(WebCore::AuthenticatorResponseData *this, void *a2)
{
  v3 = *(this + 18);
  if (v3)
  {
    *(this + 18) = 0;
    *(this + 38) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 17);
  *(this + 17) = 0;
  if (v4)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v4);
  }

  v5 = *(this + 16);
  *(this + 16) = 0;
  if (v5)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v5);
  }

  v6 = *(this + 15);
  *(this + 15) = 0;
  if (v6)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v6);
  }

  v7 = *(this + 14);
  *(this + 14) = 0;
  if (v7)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v7);
  }

  v8 = *(this + 13);
  *(this + 13) = 0;
  if (v8)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v8);
  }

  if (*(this + 96) == 1)
  {
    if (*(this + 88) == 1 && *(this + 80) == 1)
    {
      v9 = *(this + 9);
      *(this + 9) = 0;
      if (v9)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v9);
      }

      v10 = *(this + 8);
      *(this + 8) = 0;
      if (v10)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v10);
      }
    }

    if (*(this + 48) == 1)
    {
      v11 = *(this + 4);
      *(this + 4) = 0;
      if (v11)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v11);
      }
    }
  }

  v12 = *(this + 1);
  *(this + 1) = 0;
  if (v12)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v12);
  }
}

{
  WebCore::AuthenticatorResponseData::~AuthenticatorResponseData(this, a2);
}

uint64_t std::__optional_move_base<WebCore::AuthenticationExtensionsClientOutputs::PRFOutputs,false>::__optional_move_base[abi:sn200100](uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    *result = *a2;
    *(result + 8) = 0;
    *(result + 24) = 0;
    if (*(a2 + 24) == 1)
    {
      v2 = *(a2 + 8);
      *(a2 + 8) = 0;
      *(result + 8) = v2;
      v3 = *(a2 + 16);
      *(a2 + 16) = 0;
      *(result + 16) = v3;
      *(result + 24) = 1;
    }

    *(result + 32) = 1;
  }

  return result;
}

uint64_t std::__optional_storage_base<std::optional<WebCore::AuthenticationExtensionsClientInputs>,false>::~__optional_storage_base(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 152) == 1 && *(a1 + 144) == 1)
  {
    if (*(a1 + 136) == 1)
    {
      if (*(a1 + 128) == 1)
      {
        WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 112);
      }

      if (*(a1 + 104) == 1)
      {
        if (*(a1 + 96) == 1)
        {
          mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(a1 + 80);
        }

        mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(a1 + 64);
      }
    }

    if (*(a1 + 56) == 1)
    {
      if (*(a1 + 48) == 1)
      {
        mpark::detail::move_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(a1 + 32);
      }

      v3 = *(a1 + 16);
      *(a1 + 16) = 0;
      if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }
    }

    v4 = *a1;
    *a1 = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  return a1;
}

uint64_t mpark::detail::impl<std::monostate,WebCore::PathSegment,WTF::DataRef<WebCore::PathImpl>>::impl(uint64_t result, uint64_t *a2)
{
  *result = 0;
  *(result + 56) = -1;
  LODWORD(v2) = *(a2 + 56);
  if (v2 == 2)
  {
    v2 = *a2;
    *a2 = 0;
    *result = v2;
    LOBYTE(v2) = 2;
LABEL_3:
    *(result + 56) = v2;
    return result;
  }

  if (!*(a2 + 56))
  {
    goto LABEL_3;
  }

  if (v2 == 1)
  {
    v3 = *a2;
    v4 = *(a2 + 1);
    v5 = *(a2 + 2);
    *(result + 48) = a2[6];
    *(result + 16) = v4;
    *(result + 32) = v5;
    *result = v3;
    LOBYTE(v2) = *(a2 + 56);
    goto LABEL_3;
  }

  return result;
}

uint64_t mpark::detail::destructor<mpark::detail::traits<std::monostate,WebCore::PathSegment,WTF::DataRef<WebCore::PathImpl>>,(mpark::detail::Trait)1>::destroy(uint64_t result)
{
  v1 = result;
  v2 = *(result + 56);
  if (v2 >= 2 && v2 != 255)
  {
    result = *result;
    *v1 = 0;
    if (result)
    {
      if (atomic_fetch_add((result + 8), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, (result + 8));
        result = (*(*result + 8))(result);
      }
    }
  }

  *(v1 + 56) = -1;
  return result;
}

uint64_t mpark::detail::impl<std::monostate,WebCore::PathSegment,WTF::DataRef<WebCore::PathImpl>>::~impl(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 >= 2 && v2 != 255)
  {
    v3 = *a1;
    *a1 = 0;
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v3 + 2);
        (*(*v3 + 8))(v3);
      }
    }
  }

  *(a1 + 56) = -1;
  return a1;
}

void mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::ResourceRequestBase::RequestData,WebCore::ResourceRequestPlatformData>,(mpark::detail::Trait)1> &>(uint64_t a1, void **a2)
{
  if (*(a2 + 152))
  {
    v9 = *a2;
    *a2 = 0;
    if (v9)
    {
    }
  }

  else
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a2 + 16), a2);
    WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(a2 + 28, v3);
    WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector((a2 + 12), v4);
    v6 = a2[11];
    a2[11] = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v5);
    }

    v7 = a2[5];
    a2[5] = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v5);
    }

    v8 = *a2;
    *a2 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {

      WTF::StringImpl::destroy(v8, v5);
    }
  }
}

uint64_t _ZNSt3__127__optional_copy_assign_baseIN7WebCore13ResourceErrorELb0EECI2NS_24__optional_destruct_baseIS2_Lb0EEEIJS2_EEENS_10in_place_tEDpOT_(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  WTF::URL::URL(a1 + 8, a2 + 1);
  v5 = a2[6];
  a2[6] = 0;
  *(a1 + 48) = v5;
  LODWORD(v5) = *(a2 + 14);
  *(a1 + 60) = *(a2 + 30);
  *(a1 + 56) = v5;
  v6 = a2[8];
  a2[8] = 0;
  *(a1 + 64) = v6;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = 1;
  return a1;
}

void sub_19D7CC2A0(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebCore::WindowFeatures::WindowFeatures(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *a1 = v3;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 64, a2 + 16);
  return a1;
}

void sub_19D7CC320(_Unwind_Exception *exception_object, void *a2)
{
  v4 = v3;
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 64) = 0;
    *(v2 + 72) = 0;
    WTF::fastFree(v6, a2);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL>,(mpark::detail::Trait)1>::move_constructor(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[40] = -1;
  mpark::detail::constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL>>::generic_construct<mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL>,(mpark::detail::Trait)1>>(a1, a2);
  return a1;
}

void mpark::detail::constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL>>::generic_construct<mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL>,(mpark::detail::Trait)1>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL>,(mpark::detail::Trait)1> &>(&v4, a1);
  }

  *(a1 + 40) = -1;
  if (!*(a2 + 40))
  {
    mpark::detail::alt<0ul,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::alt<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2);
LABEL_5:
    *(a1 + 40) = *(a2 + 40);
    return;
  }

  if (*(a2 + 40) != 255)
  {
    WTF::URL::URL(a1, a2);
    goto LABEL_5;
  }
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL>,(mpark::detail::Trait)1>::~move_constructor(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 40);
  if (v3 != 255)
  {
    v4 = *a1;
    if (v3)
    {
      *a1 = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }

    else if (v4)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      WTF::fastFree(v4, a2);
    }
  }

  *(a1 + 40) = -1;
  return a1;
}

WTF::StringImpl *mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::URL>,(mpark::detail::Trait)1> &>(uint64_t a1, uint64_t a2)
{
  result = *a2;
  if (*(a2 + 40))
  {
    *a2 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, a2);
    }
  }

  else if (result)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    return WTF::fastFree(result, a2);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 944 * v3;
    do
    {
      WebCore::MediaTrackConstraintSetMap::~MediaTrackConstraintSetMap(v4, a2);
      v4 = (v6 + 944);
      v5 -= 944;
    }

    while (v5);
  }

  v7 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v7, a2);
  }

  return a1;
}

uint64_t WebCore::NumericConstraint<int>::isRequired(_BYTE *a1)
{
  if (a1[16] & 1) != 0 || (a1[24])
  {
    v1 = 1;
  }

  else
  {
    v1 = a1[32];
  }

  return v1 & 1;
}

uint64_t WebCore::NumericConstraint<double>::isRequired(_BYTE *a1)
{
  if (a1[24] & 1) != 0 || (a1[40])
  {
    v1 = 1;
  }

  else
  {
    v1 = a1[56];
  }

  return v1 & 1;
}

WTF *std::__optional_storage_base<WebCore::StringConstraint,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::StringConstraint,false>>(WTF *result, uint64_t a2)
{
  v3 = result;
  if (*(result + 48) == *(a2 + 48))
  {
    if (*(result + 48))
    {
      *(result + 8) = *(a2 + 8);
      v4 = *(result + 7);
      if (v4)
      {
        WTF::VectorDestructor<true,WTF::String>::destruct(*(result + 2), (*(result + 2) + 8 * v4));
      }

      WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v3 + 16, (a2 + 16));
      v5 = *(v3 + 11);
      if (v5)
      {
        WTF::VectorDestructor<true,WTF::String>::destruct(*(v3 + 4), (*(v3 + 4) + 8 * v5));
      }

      return WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v3 + 32, (a2 + 32));
    }
  }

  else if (*(result + 48))
  {
    *result = &unk_1F10E7F90;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(result + 32, a2);
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3 + 16, v6);
    *(v3 + 48) = 0;
  }

  else
  {

    return std::__optional_storage_base<WebCore::StringConstraint,false>::__construct[abi:sn200100]<WebCore::StringConstraint>(result, a2);
  }

  return result;
}

WTF *std::__optional_storage_base<WebCore::StringConstraint,false>::__construct[abi:sn200100]<WebCore::StringConstraint>(WTF *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    *(result + 8) = *(a2 + 8);
    *result = &unk_1F10E7F90;
    *(result + 2) = 0;
    *(result + 3) = 0;
    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(result + 16, (a2 + 16));
    *(v3 + 4) = 0;
    *(v3 + 5) = 0;
    result = WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v3 + 32, (a2 + 32));
    *(v3 + 48) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_19D7CC768(_Unwind_Exception *a1, void *a2)
{
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    WTF::fastFree(v6, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, a2);
  _Unwind_Resume(a1);
}

void WebCore::MediaTrackConstraintSetMap::~MediaTrackConstraintSetMap(WebCore::MediaTrackConstraintSetMap *this, void *a2)
{
  if (*(this + 776) == 1)
  {
    *(this + 91) = &unk_1F10E7F90;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 760, a2);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 744, v3);
  }

  if (*(this + 720) == 1)
  {
    *(this + 84) = &unk_1F10E7F90;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 704, a2);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 688, v4);
  }

  if (*(this + 664) == 1)
  {
    *(this + 77) = &unk_1F10E7F90;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 648, a2);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 632, v5);
  }

  if (*(this + 608) == 1)
  {
    *(this + 70) = &unk_1F10E7F90;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 592, a2);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 576, v6);
  }
}

_BYTE *mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>,(mpark::detail::Trait)1>::move_constructor(_BYTE *a1, unsigned __int8 *a2)
{
  *a1 = 0;
  a1[40] = -1;
  mpark::detail::constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>>::generic_construct<mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>,(mpark::detail::Trait)1>>(a1, a2);
  return a1;
}

void sub_19D7CC978(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 40) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>,(mpark::detail::Trait)1> &>(v2, a2);
  }

  *(v2 + 40) = -1;
  _Unwind_Resume(exception_object);
}

void mpark::detail::constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>>::generic_construct<mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>,(mpark::detail::Trait)1>>(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 40) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>,(mpark::detail::Trait)1> &>(a1, a2);
  }

  *(a1 + 40) = -1;
  v4 = a2[40];
  if (v4 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJN3WTF6VectorIhLm0ENS6_15CrashOnOverflowELm16ENS6_10FastMallocEEEN7WebCore15FormDataElement15EncodedFileDataENSC_15EncodedBlobDataEEEEE17generic_constructINS0_16move_constructorISF_LNS0_5TraitE1EEEEEvRSG_OT_EUlRSM_OT0_E_JSL_SK_EEEDcmSN_DpOT0_(v4, a1, a2);
    *(a1 + 40) = a2[40];
  }
}

__n128 _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJN3WTF6VectorIhLm0ENS6_15CrashOnOverflowELm16ENS6_10FastMallocEEEN7WebCore15FormDataElement15EncodedFileDataENSC_15EncodedBlobDataEEEEE17generic_constructINS0_16move_constructorISF_LNS0_5TraitE1EEEEEvRSG_OT_EUlRSM_OT0_E_JSL_SK_EEEDcmSN_DpOT0_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = *a3;
      *a3 = 0;
      *a2 = v4;
      result = *(a3 + 8);
      *(a2 + 17) = *(a3 + 17);
      *(a2 + 8) = result;
    }

    else
    {
      result.n128_f64[0] = WTF::URL::URL(a2, a3);
    }
  }

  else
  {
    mpark::detail::alt<0ul,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::alt<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2, a3);
  }

  return result;
}

WTF *mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>,(mpark::detail::Trait)1> &>(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  if (v3 == 255)
  {
    v3 = -1;
  }

  result = *a1;
  if (!v3)
  {
    if (result)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      return WTF::fastFree(result, a2);
    }

    return result;
  }

  if (v3 == 1)
  {
    *a1 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, a2);
    }
  }

  else
  {
    *a1 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, a2);
    }
  }

  return result;
}

uint64_t WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebCore::ScreenData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebCore::ScreenData>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 40);
    do
    {
      if (*(v4 - 10) != -1)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          CFRelease(v5);
        }
      }

      v4 += 9;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::Vector<WebCore::DataListSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::HTTPHeaderField>::destruct(*a1, (*a1 + 16 * v3));
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

void sub_19D7CCB6C(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mpark::variant<WTF::String,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>::~variant(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 8);
  if (v3 != 255)
  {
    v4 = *a1;
    *a1 = 0;
    if (v3)
    {
      if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v4 + 2);
        (*(*v4 + 8))(v4);
      }
    }

    else if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  *(a1 + 8) = -1;
  return a1;
}

uint64_t WTF::Vector<WebCore::PasteboardCustomData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::PasteboardCustomData::Entry>::destruct(*a1, (*a1 + 32 * v3));
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

void sub_19D7CCC78(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WTF::VectorTypeOperations<WebCore::PasteboardCustomData::Entry>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      mpark::variant<WTF::String,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>::~variant((v3 + 2), a2);
      v4 = v3[1];
      v3[1] = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }

      result = *v3;
      *v3 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      v3 += 4;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WebCore::MediaTrackConstraintSetMap::MediaTrackConstraintSetMap(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    *(a1 + 8) = *(a2 + 8);
    *a1 = &unk_1F10E7EC8;
    v4 = *(a2 + 12);
    *(a1 + 25) = *(a2 + 25);
    *(a1 + 12) = v4;
    *a1 = &unk_1F10E7EA0;
    *(a1 + 48) = 1;
  }

  *(a1 + 56) = 0;
  *(a1 + 104) = 0;
  if (*(a2 + 104) == 1)
  {
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 56) = &unk_1F10E7EC8;
    v5 = *(a2 + 68);
    *(a1 + 81) = *(a2 + 81);
    *(a1 + 68) = v5;
    *(a1 + 56) = &unk_1F10E7EA0;
    *(a1 + 104) = 1;
  }

  *(a1 + 112) = 0;
  *(a1 + 160) = 0;
  if (*(a2 + 160) == 1)
  {
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 112) = &unk_1F10E7EC8;
    v6 = *(a2 + 124);
    *(a1 + 137) = *(a2 + 137);
    *(a1 + 124) = v6;
    *(a1 + 112) = &unk_1F10E7EA0;
    *(a1 + 160) = 1;
  }

  *(a1 + 168) = 0;
  *(a1 + 216) = 0;
  if (*(a2 + 216) == 1)
  {
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 168) = &unk_1F10E7EC8;
    v7 = *(a2 + 180);
    *(a1 + 193) = *(a2 + 193);
    *(a1 + 180) = v7;
    *(a1 + 168) = &unk_1F10E7EA0;
    *(a1 + 216) = 1;
  }

  *(a1 + 224) = 0;
  *(a1 + 304) = 0;
  if (*(a2 + 304) == 1)
  {
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 224) = &unk_1F10E7F40;
    v8 = *(a2 + 240);
    v9 = *(a2 + 256);
    v10 = *(a2 + 272);
    *(a1 + 281) = *(a2 + 281);
    *(a1 + 256) = v9;
    *(a1 + 272) = v10;
    *(a1 + 240) = v8;
    *(a1 + 224) = &unk_1F10E7F18;
    *(a1 + 304) = 1;
  }

  *(a1 + 312) = 0;
  *(a1 + 392) = 0;
  if (*(a2 + 392) == 1)
  {
    *(a1 + 320) = *(a2 + 320);
    *(a1 + 312) = &unk_1F10E7F40;
    v11 = *(a2 + 328);
    v12 = *(a2 + 344);
    v13 = *(a2 + 360);
    *(a1 + 369) = *(a2 + 369);
    *(a1 + 344) = v12;
    *(a1 + 360) = v13;
    *(a1 + 328) = v11;
    *(a1 + 312) = &unk_1F10E7F18;
    *(a1 + 392) = 1;
  }

  *(a1 + 400) = 0;
  *(a1 + 480) = 0;
  if (*(a2 + 480) == 1)
  {
    *(a1 + 408) = *(a2 + 408);
    *(a1 + 400) = &unk_1F10E7F40;
    v14 = *(a2 + 416);
    v15 = *(a2 + 432);
    v16 = *(a2 + 448);
    *(a1 + 457) = *(a2 + 457);
    *(a1 + 432) = v15;
    *(a1 + 448) = v16;
    *(a1 + 416) = v14;
    *(a1 + 400) = &unk_1F10E7F18;
    *(a1 + 480) = 1;
  }

  *(a1 + 488) = 0;
  *(a1 + 504) = 0;
  if (*(a2 + 504) == 1)
  {
    *(a1 + 496) = *(a2 + 496);
    *(a1 + 488) = &unk_1F10E7F68;
    *(a1 + 497) = *(a2 + 497);
    *(a1 + 504) = 1;
  }

  *(a1 + 512) = 0;
  *(a1 + 528) = 0;
  if (*(a2 + 528) == 1)
  {
    *(a1 + 520) = *(a2 + 520);
    *(a1 + 512) = &unk_1F10E7F68;
    *(a1 + 521) = *(a2 + 521);
    *(a1 + 528) = 1;
  }

  *(a1 + 536) = 0;
  *(a1 + 552) = 0;
  if (*(a2 + 552) == 1)
  {
    *(a1 + 544) = *(a2 + 544);
    *(a1 + 536) = &unk_1F10E7F68;
    *(a1 + 545) = *(a2 + 545);
    *(a1 + 552) = 1;
  }

  std::__optional_move_base<WebCore::StringConstraint,false>::__optional_move_base[abi:sn200100]((a1 + 560), a2 + 560);
  std::__optional_move_base<WebCore::StringConstraint,false>::__optional_move_base[abi:sn200100]((a1 + 616), a2 + 616);
  std::__optional_move_base<WebCore::StringConstraint,false>::__optional_move_base[abi:sn200100]((a1 + 672), a2 + 672);
  std::__optional_move_base<WebCore::StringConstraint,false>::__optional_move_base[abi:sn200100]((a1 + 728), a2 + 728);
  *(a1 + 784) = 0;
  *(a1 + 864) = 0;
  if (*(a2 + 864) == 1)
  {
    *(a1 + 792) = *(a2 + 792);
    *(a1 + 784) = &unk_1F10E7F40;
    v17 = *(a2 + 800);
    v18 = *(a2 + 816);
    v19 = *(a2 + 832);
    *(a1 + 841) = *(a2 + 841);
    *(a1 + 816) = v18;
    *(a1 + 832) = v19;
    *(a1 + 800) = v17;
    *(a1 + 784) = &unk_1F10E7F18;
    *(a1 + 864) = 1;
  }

  *(a1 + 872) = 0;
  *(a1 + 888) = 0;
  if (*(a2 + 888) == 1)
  {
    *(a1 + 880) = *(a2 + 880);
    *(a1 + 872) = &unk_1F10E7F68;
    *(a1 + 881) = *(a2 + 881);
    *(a1 + 888) = 1;
  }

  *(a1 + 896) = 0;
  *(a1 + 912) = 0;
  if (*(a2 + 912) == 1)
  {
    *(a1 + 904) = *(a2 + 904);
    *(a1 + 896) = &unk_1F10E7F68;
    *(a1 + 905) = *(a2 + 905);
    *(a1 + 912) = 1;
  }

  *(a1 + 920) = 0;
  *(a1 + 936) = 0;
  if (*(a2 + 936) == 1)
  {
    *(a1 + 928) = *(a2 + 928);
    *(a1 + 920) = &unk_1F10E7F68;
    *(a1 + 929) = *(a2 + 929);
    *(a1 + 936) = 1;
  }

  return a1;
}

void sub_19D7CD328(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 720) == 1)
  {
    *(v2 + 672) = &unk_1F10E7F90;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 704, a2);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 688, v4);
  }

  if (*(v2 + 664) == 1)
  {
    *(v2 + 616) = &unk_1F10E7F90;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 648, a2);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 632, v5);
  }

  if (*(v2 + 608) == 1)
  {
    *(v2 + 560) = &unk_1F10E7F90;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 592, a2);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 576, v6);
  }

  _Unwind_Resume(exception_object);
}

WTF *std::__optional_move_base<WebCore::StringConstraint,false>::__optional_move_base[abi:sn200100](WTF *a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    std::__optional_storage_base<WebCore::StringConstraint,false>::__construct[abi:sn200100]<WebCore::StringConstraint>(a1, a2);
  }

  return a1;
}

void sub_19D7CD434(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 48) == 1)
  {
    *v2 = &unk_1F10E7F90;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 32, a2);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 16, v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::HashTable<WebCore::EventTrackingRegionsEventType,WTF::KeyValuePair<WebCore::EventTrackingRegionsEventType,WebCore::Region>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::EventTrackingRegionsEventType,WebCore::Region>>,WTF::IntHash<WebCore::EventTrackingRegionsEventType>,WTF::HashMap<WebCore::EventTrackingRegionsEventType,WebCore::Region,WTF::IntHash<WebCore::EventTrackingRegionsEventType>,WTF::StrongEnumHashTraits<WebCore::EventTrackingRegionsEventType>,WTF::HashTraits<WebCore::Region>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::EventTrackingRegionsEventType>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 8) != 254)
      {
        WebCore::Region::~Region(v4);
      }

      v4 = (v4 + 32);
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::Vector<WebCore::TextManipulationToken,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::TextManipulationToken>::destruct(*a1, (*a1 + 96 * v3));
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

WTF::StringImpl *WTF::VectorTypeOperations<WebCore::TextManipulationToken>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      if (*(v3 + 80) == 1)
      {
        v4 = *(v3 + 4);
        *(v3 + 4) = 0;
        if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v4, a2);
        }

        v5 = *(v3 + 3);
        *(v3 + 3) = 0;
        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }

        v6 = *(v3 + 2);
        *(v3 + 2) = 0;
        if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, a2);
        }
      }

      result = *(v3 + 1);
      *(v3 + 1) = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      v3 = (v3 + 96);
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t std::__optional_move_base<WebCore::TextManipulationTokenInfo,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 64) = 0;
  if (*(a2 + 64) == 1)
  {
    v4 = *a2;
    *a2 = 0;
    *a1 = v4;
    v5 = a2[1];
    a2[1] = 0;
    *(a1 + 8) = v5;
    WTF::URL::URL(a1 + 16, a2 + 2);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = 1;
  }

  return a1;
}

void sub_19D7CD65C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 + 8);
  *(v2 + 8) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *v2;
  *v2 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  if (*(v2 + 64) == 1)
  {
    v6 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }

    v7 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }

    v8 = *v2;
    *v2 = 0;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebCore::AuthenticationChallengeBase::AuthenticationChallengeBase(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a1 + 16) = v5;
  LODWORD(v5) = *(a2 + 24);
  *(a1 + 27) = *(a2 + 27);
  *(a1 + 24) = v5;
  v6 = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 32) = v6;
  v7 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a1 + 48) = v7;
  *(a1 + 56) = *(a2 + 56);
  v8 = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 64) = v8;
  *(a1 + 72) = *(a2 + 72);
  WebCore::ResourceResponseBase::ResourceResponseBase(a1 + 80, a2 + 80);
  v9 = *(a2 + 328);
  *(a2 + 328) = 0;
  *(a1 + 328) = v9;
  *(a1 + 336) = *(a2 + 336);
  v10 = *(a2 + 344);
  *(a2 + 344) = 0;
  *(a1 + 344) = v10;
  WTF::URL::URL(a1 + 352, (a2 + 352));
  v11 = *(a2 + 392);
  *(a2 + 392) = 0;
  *(a1 + 392) = v11;
  LODWORD(v11) = *(a2 + 400);
  *(a1 + 404) = *(a2 + 404);
  *(a1 + 400) = v11;
  v12 = *(a2 + 408);
  *(a2 + 408) = 0;
  *(a1 + 408) = v12;
  *(a1 + 416) = *(a2 + 416);
  return a1;
}

void sub_19D7CD808(_Unwind_Exception *a1, WTF::StringImpl *a2)
{
  v4 = v2[43];
  v2[43] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = v2[41];
  v2[41] = 0;
  if (v5)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase((v2 + 10), a2);
  v7 = v2[8];
  v2[8] = 0;
  if (v7)
  {
  }

  v8 = v2[6];
  v2[6] = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  v9 = v2[5];
  v2[5] = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v6);
  }

  v10 = v2[4];
  v2[4] = 0;
  if (v10)
  {
  }

  v11 = v2[2];
  v2[2] = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v6);
  }

  v12 = v2[1];
  v2[1] = 0;
  if (v12)
  {
    if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v6);
    }
  }

  _Unwind_Resume(a1);
}

void WebCore::AuthenticationChallengeBase::~AuthenticationChallengeBase(WebCore::AuthenticationChallengeBase *this, WTF::StringImpl *a2)
{
  v3 = *(this + 51);
  *(this + 51) = 0;
  if (v3)
  {
  }

  v4 = *(this + 49);
  *(this + 49) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 44);
  *(this + 44) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 43);
  *(this + 43) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(this + 41);
  *(this + 41) = 0;
  if (v7)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase((this + 80), a2);
  v9 = *(this + 8);
  *(this + 8) = 0;
  if (v9)
  {
  }

  v10 = *(this + 6);
  *(this + 6) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v8);
  }

  v11 = *(this + 5);
  *(this + 5) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v8);
  }

  v12 = *(this + 4);
  *(this + 4) = 0;
  if (v12)
  {
  }

  v13 = *(this + 2);
  *(this + 2) = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v8);
  }

  v14 = *(this + 1);
  *(this + 1) = 0;
  if (v14)
  {
    if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v8);
    }
  }
}

uint64_t WTF::Vector<WTF::Ref<WebCore::TransformOperation,WTF::RawPtrTraits<WebCore::TransformOperation>,WTF::DefaultRefDerefTraits<WebCore::TransformOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WTF::Ref<WebCore::TransformOperation,WTF::RawPtrTraits<WebCore::TransformOperation>,WTF::DefaultRefDerefTraits<WebCore::TransformOperation>>>::destruct(*a1, (*a1 + 8 * v3));
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

_DWORD *WTF::VectorDestructor<true,WTF::Ref<WebCore::TransformOperation,WTF::RawPtrTraits<WebCore::TransformOperation>,WTF::DefaultRefDerefTraits<WebCore::TransformOperation>>>::destruct(_DWORD *result, _DWORD **a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = *v3;
      *v3 = 0;
      if (result)
      {
        if (result[2] == 1)
        {
          result = (*(*result + 8))(result);
        }

        else
        {
          --result[2];
        }
      }

      ++v3;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(uint64_t this, void *a2)
{
  add = atomic_fetch_add(this, 0xFFFFFFFF);
  if (add == 1)
  {
    v4 = this;
    atomic_store(add, this);
    v5 = *(this + 8);
    if (v5)
    {
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      WTF::fastFree(v5, a2);
    }

    return WTF::fastFree(v4, a2);
  }

  return this;
}

uint64_t WTF::RefCounted<WebCore::SVGPathByteStream::Data>::deref(uint64_t result)
{
  v1 = result;
  if (*result == 1)
  {
    mpark::detail::impl<std::monostate,WebCore::PathSegment,WTF::DataRef<WebCore::PathImpl>>::~impl(result + 24);
    v3 = *(v1 + 8);
    if (v3)
    {
      *(v1 + 8) = 0;
      *(v1 + 16) = 0;
      WTF::fastFree(v3, v2);
    }

    if (*v1 == 1)
    {

      return WTF::fastFree(v1, v2);
    }

    else
    {
      result = 191;
      __break(0xC471u);
    }
  }

  else
  {
    --*result;
  }

  return result;
}

WTF **WTF::WeakPtrFactory<WebCore::SVGPathByteStream,WTF::SingleThreadWeakPtrImpl>::~WeakPtrFactory(WTF **a1, void *a2)
{
  if (*a1)
  {
    *(*a1 + 1) = 0;
    v3 = *a1;
    *a1 = 0;
    if (v3)
    {
      if (*v3 == 1)
      {
        WTF::fastFree(v3, a2);
      }

      else
      {
        --*v3;
      }
    }
  }

  return a1;
}

uint64_t _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(uint64_t result, unsigned int a2, uint64_t **a3)
{
  if (result == 2)
  {
    result = WebCore::Style::UnevaluatedCalculationBase::UnevaluatedCalculationBase();
    v4 = 0x2000000000000;
  }

  else if (result == 1)
  {
    v4 = a2 | 0x1000000000000;
  }

  else
  {
    v4 = a2;
  }

  **a3 = v4;
  return result;
}

uint64_t _ZN3WTF6VectorIN7WebCore19SpaceSeparatedPointINS1_5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEED2Ev(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    _ZN3WTF20VectorTypeOperationsIN7WebCore19SpaceSeparatedPointINS1_5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEEE8destructEPS8_SA_(*a1, *a1 + 16 * v3);
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

void _ZN3WTF20VectorTypeOperationsIN7WebCore19SpaceSeparatedPointINS1_5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEEE8destructEPS8_SA_(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v10[5] = v2;
    v10[6] = v3;
    v5 = a1;
    do
    {
      v6 = v5 + 16;
      for (i = 8; i != -8; i -= 8)
      {
        v8 = *(v5 + i);
        if (v8 != -1 && (v8 & 0xFE000000000000) != 0)
        {
          v10[0] = v8 & 0xFF00FFFFFFFFFFFFLL;
          WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(v10);
        }
      }

      v5 += 16;
    }

    while (v6 != a2);
  }
}

uint64_t _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(uint64_t result, unsigned int a2, uint64_t **a3)
{
  if (result == 2)
  {
    result = WebCore::Style::UnevaluatedCalculationBase::UnevaluatedCalculationBase();
    v4 = 0x2000000000000;
  }

  else if (result == 1)
  {
    v4 = a2 | 0x1000000000000;
  }

  else
  {
    v4 = a2;
  }

  **a3 = v4;
  return result;
}

uint64_t WTF::Vector<mpark::variant<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 88 * v3;
    do
    {
      if (v4[80] != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>,(mpark::detail::Trait)1> &>(v4);
      }

      v4[80] = -1;
      v4 += 88;
      v5 -= 88;
    }

    while (v5);
    v4 = *a1;
  }

  if (v4)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

void mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>,(mpark::detail::Trait)1> &>(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2 == 255)
  {
    v2 = -1;
  }

  if (v2 > 3)
  {
    if (v2 > 5)
    {
      if (v2 != 7)
      {
        for (i = 32; i != 16; i -= 8)
        {
          v4 = *(a1 + i);
          if (v4 != -1 && (v4 & 0xFE000000000000) != 0)
          {
            v6 = v4 & 0xFF00FFFFFFFFFFFFLL;
            WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v6);
          }
        }

        mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::ToPosition,WebCore::Style::ByCoordinatePair>,(mpark::detail::Trait)1>::~move_constructor(a1);
      }
    }

    else if (v2 == 4)
    {
      if (*(a1 + 72) != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::Style::CurveCommand::To,WebCore::Style::CurveCommand::By>,(mpark::detail::Trait)1> &>(a1);
      }

      *(a1 + 72) = -1;
    }

    else
    {
      if (*(a1 + 48) != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::Style::SmoothCommand::To,WebCore::Style::SmoothCommand::By>,(mpark::detail::Trait)1> &>(a1);
      }

      *(a1 + 48) = -1;
    }
  }

  else if (v2 > 1)
  {
    if (v2 == 2)
    {
    }

    mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::HLineCommand::To,WebCore::Style::HLineCommand::By>,(mpark::detail::Trait)1>::~move_constructor(a1);
  }

  else
  {

    mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::ToPosition,WebCore::Style::ByCoordinatePair>,(mpark::detail::Trait)1>::~move_constructor(a1);
  }
}

uint64_t _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS_7variantIJNS3_8ConstantILNS3_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEELNS0_5TraitE1EEC2EOSJ_(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = -1;
  if (*(a2 + 8) != 255)
  {
    if (*(a2 + 8))
    {
      *a1 = *a2;
    }

    else
    {
      v4 = *a2;
      if (*a2 == -1)
      {
        *a1 = -1;
      }

      else
      {
        v6 = a1;
        _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v4), v4, &v6);
      }

      *a2 = -1;
    }

    *(a1 + 8) = *(a2 + 8);
  }

  return a1;
}

uint64_t _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS_7variantIJNS3_8ConstantILNS3_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEELNS0_5TraitE1EED2Ev(uint64_t a1)
{
  if (!*(a1 + 8) && *a1 != -1 && (*a1 & 0xFE000000000000) != 0)
  {
    v4 = *a1 & 0xFF00FFFFFFFFFFFFLL;
    WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v4);
  }

  *(a1 + 8) = -1;
  return a1;
}

_BYTE *std::__optional_move_base<WebCore::Style::Position,false>::__optional_move_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[16] = 0;
  if (*(a2 + 16) == 1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = v4;
      v7 = *(a2 + 8 * v5);
      if (v7 == -1)
      {
        *&a1[8 * v5] = -1;
      }

      else
      {
        v9 = &a1[8 * v5];
        _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v7), v7, &v9);
      }

      *(a2 + 8 * v5) = -1;
      v4 = 1;
      v5 = 1;
    }

    while ((v6 & 1) == 0);
    a1[16] = 1;
  }

  return a1;
}

void sub_19D7CE1E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unint64_t a10)
{
  if ((v12 & 1) == 0)
  {
    v14 = 8 * v11;
    do
    {
      v15 = *(v10 - 8 + v14);
      if (v15 != -1 && (v15 & 0xFE000000000000) != 0)
      {
        a10 = v15 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&a10);
      }

      v14 -= 8;
    }

    while (v14);
  }

  if (*(v10 + 16) == 1)
  {
    for (i = 8; i != -8; i -= 8)
    {
      v18 = *(v10 + i);
      if (v18 != -1 && (v18 & 0xFE000000000000) != 0)
      {
        a10 = v18 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&a10);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebCore::Style::Inset::Inset(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 32; i += 8)
  {
    v5 = *(a2 + i);
    if (v5 == -1)
    {
      *(a1 + i) = -1;
    }

    else
    {
      v15[0] = (a1 + i);
      _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4copyERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v5), v5, v15);
    }
  }

  v6 = 0;
  v14 = a2 + 32;
  v7 = a1;
  do
  {
    v8 = 0;
    v9 = 0;
    v10 = 16 * v6 + 32;
    do
    {
      v11 = v8;
      v12 = *(v14 + 16 * v6 + 8 * v9);
      if (v12 == -1)
      {
        *(a1 + v10 + 8 * v9) = -1;
      }

      else
      {
        v15[0] = (a1 + v10 + 8 * v9);
        _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4copyERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v12), v12, v15);
      }

      v8 = 1;
      v9 = 1;
    }

    while ((v11 & 1) == 0);
    ++v6;
    v7 += 16;
  }

  while (v6 != 4);
  return a1;
}

void sub_19D7CE378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  if (v13)
  {
    v15 = v12 - 8;
    do
    {
      v16 = *(v15 + v13);
      if (v16 != -1 && (v16 & 0xFE000000000000) != 0)
      {
        a12 = v16 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&a12);
      }

      v13 -= 8;
    }

    while (v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4copyERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(uint64_t result, unsigned int a2, uint64_t **a3)
{
  if (result == 2)
  {
    result = WebCore::Style::UnevaluatedCalculationBase::UnevaluatedCalculationBase();
    v4 = 0x2000000000000;
  }

  else if (result == 1)
  {
    v4 = a2 | 0x1000000000000;
  }

  else
  {
    v4 = a2;
  }

  **a3 = v4;
  return result;
}

uint64_t _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ld0000000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4copyERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(uint64_t result, unsigned int a2, uint64_t **a3)
{
  if (result == 2)
  {
    result = WebCore::Style::UnevaluatedCalculationBase::UnevaluatedCalculationBase();
    v4 = 0x2000000000000;
  }

  else if (result == 1)
  {
    v4 = a2 | 0x1000000000000;
  }

  else
  {
    v4 = a2;
  }

  **a3 = v4;
  return result;
}

_BYTE *mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::ToPosition,WebCore::Style::ByCoordinatePair>,(mpark::detail::Trait)1>::move_constructor(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[16] = -1;
  v3 = *(a2 + 16);
  if (v3 != 255)
  {
    if (*(a2 + 16))
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = v8;
        v11 = *(a2 + 8 * v9);
        if (v11 == -1)
        {
          *&a1[8 * v9] = -1;
        }

        else
        {
          v13[0] = &a1[8 * v9];
          _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v11), v11, v13);
        }

        *(a2 + 8 * v9) = -1;
        v8 = 1;
        v9 = 1;
      }

      while ((v10 & 1) == 0);
    }

    else
    {
      v5 = 0;
      do
      {
        v6 = v3;
        v7 = *(a2 + 8 * v5);
        if (v7 == -1)
        {
          *&a1[8 * v5] = -1;
        }

        else
        {
          v13[0] = &a1[8 * v5];
          _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v7), v7, v13);
        }

        *(a2 + 8 * v5) = -1;
        LOBYTE(v3) = 1;
        v5 = 1;
      }

      while ((v6 & 1) == 0);
    }

    a1[16] = *(a2 + 16);
  }

  return a1;
}

void sub_19D7CE6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  if ((v12 & 1) == 0)
  {
    v14 = 8 * v11;
    do
    {
      v15 = *(v10 - 8 + v14);
      if (v15 != -1 && (v15 & 0xFE000000000000) != 0)
      {
        a10 = v15 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&a10);
      }

      v14 -= 8;
    }

    while (v14);
  }

  mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::ToPosition,WebCore::Style::ByCoordinatePair>,(mpark::detail::Trait)1>::~move_constructor(v10);
  _Unwind_Resume(a1);
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::ToPosition,WebCore::Style::ByCoordinatePair>,(mpark::detail::Trait)1>::~move_constructor(uint64_t a1)
{
  if (*(a1 + 16) != 255)
  {
    v2 = 8;
    if (*(a1 + 16))
    {
      do
      {
        v5 = *(a1 + v2);
        if (v5 != -1 && (v5 & 0xFE000000000000) != 0)
        {
          v8 = v5 & 0xFF00FFFFFFFFFFFFLL;
          WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v8);
        }

        v2 -= 8;
      }

      while (v2 != -8);
    }

    else
    {
      do
      {
        v3 = *(a1 + v2);
        if (v3 != -1 && (v3 & 0xFE000000000000) != 0)
        {
          v8 = v3 & 0xFF00FFFFFFFFFFFFLL;
          WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v8);
        }

        v2 -= 8;
      }

      while (v2 != -8);
    }
  }

  *(a1 + 16) = -1;
  return a1;
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::HLineCommand::To,WebCore::Style::HLineCommand::By>,(mpark::detail::Trait)1>::move_constructor(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = -1;
  v3 = *(a2 + 8);
  if (v3 != 255)
  {
    v5 = *a2;
    if (v3)
    {
      if (v5 != -1)
      {
LABEL_4:
        v7 = a1;
        _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v5), v5, &v7);
LABEL_7:
        *a2 = -1;
        *(a1 + 8) = *(a2 + 8);
        return a1;
      }
    }

    else if (v5 != -1)
    {
      goto LABEL_4;
    }

    *a1 = -1;
    goto LABEL_7;
  }

  return a1;
}

uint64_t *mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::HLineCommand::To,WebCore::Style::HLineCommand::By>,(mpark::detail::Trait)1>::~move_constructor(uint64_t *a1)
{
  if (*(a1 + 8) != 255)
  {
    v2 = *a1;
    if ((*a1 & 0xFE000000000000) != 0 && v2 != -1)
    {
      v6 = v2 & 0xFF00FFFFFFFFFFFFLL;
      WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v6);
    }
  }

  *(a1 + 8) = -1;
  return a1;
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::VLineCommand::To,WebCore::Style::VLineCommand::By>,(mpark::detail::Trait)1>::move_constructor(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = -1;
  v3 = *(a2 + 8);
  if (v3 != 255)
  {
    v5 = *a2;
    if (v3)
    {
      if (v5 != -1)
      {
LABEL_4:
        v7 = a1;
        _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v5), v5, &v7);
LABEL_7:
        *a2 = -1;
        *(a1 + 8) = *(a2 + 8);
        return a1;
      }
    }

    else if (v5 != -1)
    {
      goto LABEL_4;
    }

    *a1 = -1;
    goto LABEL_7;
  }

  return a1;
}

uint64_t std::__optional_move_base<WebCore::Style::AbsoluteControlPoint,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = v4;
      v7 = *(a2 + 8 * v5);
      if (v7 == -1)
      {
        *(a1 + 8 * v5) = -1;
      }

      else
      {
        v10 = (a1 + 8 * v5);
        _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v7), v7, &v10);
      }

      *(a2 + 8 * v5) = -1;
      v4 = 1;
      v5 = 1;
    }

    while ((v6 & 1) == 0);
    v8 = *(a2 + 16);
    *(a1 + 18) = *(a2 + 18);
    *(a1 + 16) = v8;
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_19D7CEA5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unint64_t a10)
{
  if ((v12 & 1) == 0)
  {
    v14 = 8 * v11;
    do
    {
      v15 = *(v10 - 8 + v14);
      if (v15 != -1 && (v15 & 0xFE000000000000) != 0)
      {
        a10 = v15 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&a10);
      }

      v14 -= 8;
    }

    while (v14);
  }

  if (*(v10 + 24) == 1)
  {
    for (i = 8; i != -8; i -= 8)
    {
      v18 = *(v10 + i);
      if (v18 != -1 && (v18 & 0xFE000000000000) != 0)
      {
        a10 = v18 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&a10);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebCore::Style::CurveCommand::To::To(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = v4;
    v7 = *(a2 + 8 * v5);
    if (v7 == -1)
    {
      *(a1 + 8 * v5) = -1;
    }

    else
    {
      v15[0] = (a1 + 8 * v5);
      _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v7), v7, v15);
    }

    *(a2 + 8 * v5) = -1;
    v4 = 1;
    v5 = 1;
  }

  while ((v6 & 1) == 0);
  v8 = 0;
  v9 = 0;
  v10 = a2 + 16;
  do
  {
    v11 = v8;
    v12 = *(v10 + 8 * v9);
    if (v12 == -1)
    {
      *(a1 + 8 * v9 + 16) = -1;
    }

    else
    {
      v15[0] = (a1 + 8 * v9 + 16);
      _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v12), v12, v15);
    }

    *(v10 + 8 * v9) = -1;
    v8 = 1;
    v9 = 1;
  }

  while ((v11 & 1) == 0);
  v13 = *(a2 + 32);
  *(a1 + 34) = *(a2 + 34);
  *(a1 + 32) = v13;
  std::__optional_move_base<WebCore::Style::AbsoluteControlPoint,false>::__optional_move_base[abi:sn200100](a1 + 40, a2 + 40);
  return a1;
}

void sub_19D7CEBEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unint64_t a10)
{
  v12 = 24;
  while (1)
  {
    v13 = *(v10 + v12);
    if (v13 != -1 && (v13 & 0xFE000000000000) != 0)
    {
      a10 = v13 & 0xFF00FFFFFFFFFFFFLL;
      WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&a10);
    }

    v12 -= 8;
    if (v12 == 8)
    {
      v15 = 8;
      while (1)
      {
        v16 = *(v10 + v15);
        if (v16 != -1 && (v16 & 0xFE000000000000) != 0)
        {
          a10 = v16 & 0xFF00FFFFFFFFFFFFLL;
          WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&a10);
        }

        v15 -= 8;
        if (v15 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

uint64_t std::__optional_move_base<WebCore::Style::RelativeControlPoint,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = v4;
      v7 = *(a2 + 8 * v5);
      if (v7 == -1)
      {
        *(a1 + 8 * v5) = -1;
      }

      else
      {
        v10 = (a1 + 8 * v5);
        _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v7), v7, &v10);
      }

      *(a2 + 8 * v5) = -1;
      v4 = 1;
      v5 = 1;
    }

    while ((v6 & 1) == 0);
    v8 = *(a2 + 16);
    *(a1 + 18) = *(a2 + 18);
    *(a1 + 16) = v8;
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_19D7CED98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unint64_t a10)
{
  if ((v12 & 1) == 0)
  {
    v14 = 8 * v11;
    do
    {
      v15 = *(v10 - 8 + v14);
      if (v15 != -1 && (v15 & 0xFE000000000000) != 0)
      {
        a10 = v15 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&a10);
      }

      v14 -= 8;
    }

    while (v14);
  }

  if (*(v10 + 24) == 1)
  {
    for (i = 8; i != -8; i -= 8)
    {
      v18 = *(v10 + i);
      if (v18 != -1 && (v18 & 0xFE000000000000) != 0)
      {
        a10 = v18 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&a10);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebCore::Style::CurveCommand::By::By(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = v4;
    v7 = *(a2 + 8 * v5);
    if (v7 == -1)
    {
      *(a1 + 8 * v5) = -1;
    }

    else
    {
      v15[0] = (a1 + 8 * v5);
      _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v7), v7, v15);
    }

    *(a2 + 8 * v5) = -1;
    v4 = 1;
    v5 = 1;
  }

  while ((v6 & 1) == 0);
  v8 = 0;
  v9 = 0;
  v10 = a2 + 16;
  do
  {
    v11 = v8;
    v12 = *(v10 + 8 * v9);
    if (v12 == -1)
    {
      *(a1 + 8 * v9 + 16) = -1;
    }

    else
    {
      v15[0] = (a1 + 8 * v9 + 16);
      _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v12), v12, v15);
    }

    *(v10 + 8 * v9) = -1;
    v8 = 1;
    v9 = 1;
  }

  while ((v11 & 1) == 0);
  v13 = *(a2 + 32);
  *(a1 + 34) = *(a2 + 34);
  *(a1 + 32) = v13;
  std::__optional_move_base<WebCore::Style::RelativeControlPoint,false>::__optional_move_base[abi:sn200100](a1 + 40, a2 + 40);
  return a1;
}

void sub_19D7CEF28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unint64_t a10)
{
  v12 = 24;
  while (1)
  {
    v13 = *(v10 + v12);
    if (v13 != -1 && (v13 & 0xFE000000000000) != 0)
    {
      a10 = v13 & 0xFF00FFFFFFFFFFFFLL;
      WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&a10);
    }

    v12 -= 8;
    if (v12 == 8)
    {
      v15 = 8;
      while (1)
      {
        v16 = *(v10 + v15);
        if (v16 != -1 && (v16 & 0xFE000000000000) != 0)
        {
          a10 = v16 & 0xFF00FFFFFFFFFFFFLL;
          WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&a10);
        }

        v15 -= 8;
        if (v15 == -8)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

_BYTE *mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::CurveCommand::To,WebCore::Style::CurveCommand::By>,(mpark::detail::Trait)1>::move_constructor(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[72] = -1;
  if (*(a2 + 72) != 255)
  {
    if (*(a2 + 72))
    {
      WebCore::Style::CurveCommand::By::By(a1, a2);
    }

    else
    {
      WebCore::Style::CurveCommand::To::To(a1, a2);
    }

    a1[72] = *(a2 + 72);
  }

  return a1;
}

void sub_19D7CF084(_Unwind_Exception *exception_object)
{
  if (*(v1 + 72) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::Style::CurveCommand::To,WebCore::Style::CurveCommand::By>,(mpark::detail::Trait)1> &>(v1);
  }

  *(v1 + 72) = -1;
  _Unwind_Resume(exception_object);
}

void mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::Style::CurveCommand::To,WebCore::Style::CurveCommand::By>,(mpark::detail::Trait)1> &>(uint64_t a1)
{
  if (*(a1 + 72))
  {
    if (*(a1 + 64))
    {
      for (i = 48; i != 32; i -= 8)
      {
        v3 = *(a1 + i);
        if (v3 != -1 && (v3 & 0xFE000000000000) != 0)
        {
          v18 = v3 & 0xFF00FFFFFFFFFFFFLL;
          WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v18);
        }
      }
    }

    for (j = 24; j != 8; j -= 8)
    {
      v6 = *(a1 + j);
      if (v6 != -1 && (v6 & 0xFE000000000000) != 0)
      {
        v18 = v6 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v18);
      }
    }

    do
    {
      v8 = *(a1 + j);
      if (v8 != -1 && (v8 & 0xFE000000000000) != 0)
      {
        v18 = v8 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v18);
      }

      j -= 8;
    }

    while (j != -8);
  }

  else
  {
    if (*(a1 + 64))
    {
      for (k = 48; k != 32; k -= 8)
      {
        v11 = *(a1 + k);
        if (v11 != -1 && (v11 & 0xFE000000000000) != 0)
        {
          v18 = v11 & 0xFF00FFFFFFFFFFFFLL;
          WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v18);
        }
      }
    }

    for (m = 24; m != 8; m -= 8)
    {
      v14 = *(a1 + m);
      if (v14 != -1 && (v14 & 0xFE000000000000) != 0)
      {
        v18 = v14 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v18);
      }
    }

    do
    {
      v16 = *(a1 + m);
      if (v16 != -1 && (v16 & 0xFE000000000000) != 0)
      {
        v18 = v16 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v18);
      }

      m -= 8;
    }

    while (m != -8);
  }
}

_BYTE *mpark::detail::move_constructor<mpark::detail::traits<WebCore::Style::SmoothCommand::To,WebCore::Style::SmoothCommand::By>,(mpark::detail::Trait)1>::move_constructor(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[48] = -1;
  v3 = *(a2 + 48);
  if (v3 != 255)
  {
    if (*(a2 + 48))
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = v8;
        v11 = *(a2 + 8 * v9);
        if (v11 == -1)
        {
          *&a1[8 * v9] = -1;
        }

        else
        {
          v13[0] = &a1[8 * v9];
          _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v11), v11, v13);
        }

        *(a2 + 8 * v9) = -1;
        v8 = 1;
        v9 = 1;
      }

      while ((v10 & 1) == 0);
      std::__optional_move_base<WebCore::Style::RelativeControlPoint,false>::__optional_move_base[abi:sn200100]((a1 + 16), a2 + 16);
    }

    else
    {
      v5 = 0;
      do
      {
        v6 = v3;
        v7 = *(a2 + 8 * v5);
        if (v7 == -1)
        {
          *&a1[8 * v5] = -1;
        }

        else
        {
          v13[0] = &a1[8 * v5];
          _ZN3WTF12typeForIndexIN5mpark7variantIJN7WebCore5Style6LengthIXtlNS3_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEENS4_10PercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEENS4_22UnevaluatedCalculationINS6_16LengthPercentageIXtlS7_Ldfff0000000000000ELd7ff0000000000000EEEfEEEEEEEZNS_24CompactVariantOperationsIJS8_SA_SE_EE14payloadForDataIJZNSH_4moveERyyEUlTyRT_E_EEEDcyDpOT_EUlTyvE_EESN_mOT0_(BYTE6(v7), v7, v13);
        }

        *(a2 + 8 * v5) = -1;
        LOBYTE(v3) = 1;
        v5 = 1;
      }

      while ((v6 & 1) == 0);
      std::__optional_move_base<WebCore::Style::AbsoluteControlPoint,false>::__optional_move_base[abi:sn200100]((a1 + 16), a2 + 16);
    }

    a1[48] = *(a2 + 48);
  }

  return a1;
}

void sub_19D7CF338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unint64_t a10)
{
  v12 = 8;
  while (1)
  {
    v13 = *(v10 + v12);
    if (v13 != -1 && (v13 & 0xFE000000000000) != 0)
    {
      a10 = v13 & 0xFF00FFFFFFFFFFFFLL;
      WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&a10);
    }

    v12 -= 8;
    if (v12 == -8)
    {
      if (*(v10 + 48) != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::Style::SmoothCommand::To,WebCore::Style::SmoothCommand::By>,(mpark::detail::Trait)1> &>(v10);
      }

      *(v10 + 48) = -1;
      _Unwind_Resume(exception_object);
    }
  }
}

void mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::Style::SmoothCommand::To,WebCore::Style::SmoothCommand::By>,(mpark::detail::Trait)1> &>(uint64_t a1)
{
  if (*(a1 + 48))
  {
    if (*(a1 + 40))
    {
      for (i = 24; i != 8; i -= 8)
      {
        v3 = *(a1 + i);
        if (v3 != -1 && (v3 & 0xFE000000000000) != 0)
        {
          v14 = v3 & 0xFF00FFFFFFFFFFFFLL;
          WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v14);
        }
      }
    }

    for (j = 8; j != -8; j -= 8)
    {
      v6 = *(a1 + j);
      if (v6 != -1 && (v6 & 0xFE000000000000) != 0)
      {
        v14 = v6 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v14);
      }
    }
  }

  else
  {
    if (*(a1 + 40))
    {
      for (k = 24; k != 8; k -= 8)
      {
        v9 = *(a1 + k);
        if (v9 != -1 && (v9 & 0xFE000000000000) != 0)
        {
          v14 = v9 & 0xFF00FFFFFFFFFFFFLL;
          WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v14);
        }
      }
    }

    for (m = 8; m != -8; m -= 8)
    {
      v12 = *(a1 + m);
      if (v12 != -1 && (v12 & 0xFE000000000000) != 0)
      {
        v14 = v12 & 0xFF00FFFFFFFFFFFFLL;
        WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v14);
      }
    }
  }
}

_BYTE *std::__optional_copy_base<WebCore::Path,false>::__optional_copy_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[64] = 0;
  if (*(a2 + 64) == 1)
  {
    mpark::detail::copy_constructor<mpark::detail::traits<std::monostate,WebCore::PathSegment,WTF::DataRef<WebCore::PathImpl>>,(mpark::detail::Trait)1>::copy_constructor(a1, a2);
    a1[64] = 1;
  }

  return a1;
}

void sub_19D7CF5A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 64) == 1)
  {
    mpark::detail::impl<std::monostate,WebCore::PathSegment,WTF::DataRef<WebCore::PathImpl>>::~impl(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mpark::detail::copy_constructor<mpark::detail::traits<std::monostate,WebCore::PathSegment,WTF::DataRef<WebCore::PathImpl>>,(mpark::detail::Trait)1>::copy_constructor(uint64_t result, uint64_t *a2)
{
  *result = 0;
  *(result + 56) = -1;
  if (*(a2 + 56) > 1u)
  {
    if (*(a2 + 56) != 2)
    {
      return result;
    }

    v5 = *a2;
    atomic_fetch_add((*a2 + 8), 1u);
    *result = v5;
  }

  else if (*(a2 + 56))
  {
    v2 = *a2;
    v3 = *(a2 + 1);
    v4 = *(a2 + 2);
    *(result + 48) = a2[6];
    *(result + 16) = v3;
    *(result + 32) = v4;
    *result = v2;
  }

  *(result + 56) = *(a2 + 56);
  return result;
}

void mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::FunctionNotation<(WebCore::CSSValueID)273,WebCore::Style::Circle>,WebCore::FunctionNotation<(WebCore::CSSValueID)709,WebCore::Style::Ellipse>,WebCore::FunctionNotation<(WebCore::CSSValueID)8,WebCore::Style::Inset>,WebCore::FunctionNotation<(WebCore::CSSValueID)904,WebCore::Style::Path>,WebCore::FunctionNotation<(WebCore::CSSValueID)799,WebCore::Style::Polygon>,WebCore::FunctionNotation<(WebCore::CSSValueID)800,WebCore::Style::Shape>>,(mpark::detail::Trait)1> &>(uint64_t a1, void *a2)
{
  v3 = *(a1 + 96);
  if (v3 == 255)
  {
    v3 = -1;
  }

  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v13 = *(a1 + 16);
      *(a1 + 16) = 0;
      if (v13)
      {
        WTF::RefCounted<WebCore::SVGPathByteStream::Data>::deref(v13);
      }

      WTF::WeakPtrFactory<WebCore::SVGPathByteStream,WTF::SingleThreadWeakPtrImpl>::~WeakPtrFactory((a1 + 8), a2);
    }

    else if (v3 == 4)
    {
      v9 = a1 + 8;

      _ZN3WTF6VectorIN7WebCore19SpaceSeparatedPointINS1_5Style16LengthPercentageIXtlNS1_3CSS5RangeELdfff0000000000000ELd7ff0000000000000EEEfEEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEED2Ev(v9, a2);
    }

    else
    {
      WTF::Vector<mpark::variant<WebCore::Style::MoveCommand,WebCore::Style::LineCommand,WebCore::Style::HLineCommand,WebCore::Style::VLineCommand,WebCore::Style::CurveCommand,WebCore::Style::SmoothCommand,WebCore::Style::ArcCommand,WebCore::Constant<(WebCore::CSSValueID)809>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 24, a2);
      v22 = 16;
      do
      {
        v23 = *(a1 + v22);
        if (v23 != -1 && (v23 & 0xFE000000000000) != 0)
        {
          v25 = v23 & 0xFF00FFFFFFFFFFFFLL;
          WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v25);
        }

        v22 -= 8;
      }

      while (v22);
    }
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      if (*(a1 + 48) == 1)
      {
        for (i = 40; i != 24; i -= 8)
        {
          v5 = *(a1 + i);
          if (v5 != -1 && (v5 & 0xFE000000000000) != 0)
          {
            v25 = v5 & 0xFF00FFFFFFFFFFFFLL;
            WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v25);
          }
        }
      }

      v7 = a1 + 16;
      v8 = -32;
      do
      {
        v7 = _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS_7variantIJNS3_8ConstantILNS3_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEELNS0_5TraitE1EED2Ev(v7) - 16;
        v8 += 16;
      }

      while (v8);
    }

    else
    {
      v14 = a1 + 88;
      for (j = 96; j != 32; j -= 16)
      {
        for (k = 0; k != -16; k -= 8)
        {
          v17 = *(v14 + k);
          if (v17 != -1 && (v17 & 0xFE000000000000) != 0)
          {
            v25 = v17 & 0xFF00FFFFFFFFFFFFLL;
            WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v25);
          }
        }

        v14 -= 16;
      }

      for (m = 24; m != -8; m -= 8)
      {
        v20 = *(a1 + m);
        if (v20 != -1 && (v20 & 0xFE000000000000) != 0)
        {
          v25 = v20 & 0xFF00FFFFFFFFFFFFLL;
          WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v25);
        }
      }
    }
  }

  else
  {
    if (*(a1 + 32) == 1)
    {
      for (n = 24; n != 8; n -= 8)
      {
        v11 = *(a1 + n);
        if (v11 != -1 && (v11 & 0xFE000000000000) != 0)
        {
          v25 = v11 & 0xFF00FFFFFFFFFFFFLL;
          WebCore::Style::UnevaluatedCalculationBase::~UnevaluatedCalculationBase(&v25);
        }
      }
    }

    _ZN5mpark6detail16move_constructorINS0_6traitsIJN7WebCore5Style16LengthPercentageIXtlNS3_3CSS5RangeELd0000000000000000ELd7ff0000000000000EEEfEENS_7variantIJNS3_8ConstantILNS3_10CSSValueIDE711EEENSA_ILSB_710EEENSA_ILSB_713EEENSA_ILSB_712EEEEEEEEELNS0_5TraitE1EED2Ev(a1);
  }
}

void WebCore::ResourceResponseData::~ResourceResponseData(WebCore::ResourceResponseData *this, WTF::StringImpl *a2)
{
  if (*(this + 288) == 1)
  {
    v13 = *(this + 35);
    *(this + 35) = 0;
    if (v13)
    {
      CFRelease(v13);
    }
  }

  v3 = *(this + 33);
  *(this + 33) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  if (*(this + 248) == 1)
  {
    v4 = *(this + 30);
    *(this + 30) = 0;
    if (v4)
    {
      WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v4, a2);
    }

    v5 = *(this + 26);
    *(this + 26) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }

  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(this + 26, a2);
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(this + 88, v6);
  v8 = *(this + 10);
  *(this + 10) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  v9 = *(this + 9);
  *(this + 9) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  v10 = *(this + 7);
  *(this + 7) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v7);
  }

  v11 = *(this + 5);
  *(this + 5) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v7);
  }

  v12 = *this;
  *this = 0;
  if (v12)
  {
    if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v7);
    }
  }
}

uint64_t WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 12);
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = v3;
  if (!v3)
  {
    return v2;
  }

  if (!(v3 >> 29))
  {
    v5 = WTF::fastMalloc((8 * v3));
    *(v2 + 8) = v3;
    *v2 = v5;
    v6 = *(a2 + 12);
    if (v6)
    {
      v7 = *a2;
      v8 = 8 * v6;
      do
      {
        v9 = *v7++;
        *v5++ = v9;
        v8 -= 8;
      }

      while (v8);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

uint64_t WTF::Vector<WTF::Ref<WebCore::ArchiveResource,WTF::RawPtrTraits<WebCore::ArchiveResource>,WTF::DefaultRefDerefTraits<WebCore::ArchiveResource>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WTF::Ref<WebCore::ArchiveResource,WTF::RawPtrTraits<WebCore::ArchiveResource>,WTF::DefaultRefDerefTraits<WebCore::ArchiveResource>>>::destruct(*a1, (*a1 + 8 * v3));
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

_DWORD *WTF::VectorDestructor<true,WTF::Ref<WebCore::ArchiveResource,WTF::RawPtrTraits<WebCore::ArchiveResource>,WTF::DefaultRefDerefTraits<WebCore::ArchiveResource>>>::destruct(_DWORD *result, _DWORD **a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = *v3;
      *v3 = 0;
      if (result)
      {
        if (result[2] == 1)
        {
          result = (*(*result + 8))(result);
        }

        else
        {
          --result[2];
        }
      }

      ++v3;
    }

    while (v3 != a2);
  }

  return result;
}

void WebCore::ButtonPart::~ButtonPart(WebCore::ButtonPart *this)
{
  WebCore::ControlPart::~ControlPart(this);

  WTF::fastFree(v1, v2);
}

uint64_t WebCore::ButtonPart::createPlatformControl(WebCore::ButtonPart *this)
{
  v1 = *(*WebCore::ControlPart::controlFactory(this) + 24);

  return v1();
}

void WebCore::ControlPart::~ControlPart(WebCore::ControlPart *this)
{
  *this = &unk_1F10E7FE0;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    if (v2[2] == 1)
    {
      (*(*v2 + 8))(v2);
    }

    else
    {
      --v2[2];
    }
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    if (v3[2] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[2];
    }
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

void WebCore::InnerSpinButtonPart::~InnerSpinButtonPart(WebCore::InnerSpinButtonPart *this)
{
  WebCore::ControlPart::~ControlPart(this);

  WTF::fastFree(v1, v2);
}

uint64_t WebCore::InnerSpinButtonPart::createPlatformControl(WebCore::InnerSpinButtonPart *this)
{
  v1 = *(*WebCore::ControlPart::controlFactory(this) + 40);

  return v1();
}

void WebCore::MenuListButtonPart::~MenuListButtonPart(WebCore::MenuListButtonPart *this)
{
  WebCore::ControlPart::~ControlPart(this);

  WTF::fastFree(v1, v2);
}

uint64_t WebCore::MenuListButtonPart::createPlatformControl(WebCore::MenuListButtonPart *this)
{
  v1 = *(*WebCore::ControlPart::controlFactory(this) + 56);

  return v1();
}

void WebCore::MenuListPart::~MenuListPart(WebCore::MenuListPart *this)
{
  WebCore::ControlPart::~ControlPart(this);

  WTF::fastFree(v1, v2);
}

uint64_t WebCore::MenuListPart::createPlatformControl(WebCore::MenuListPart *this)
{
  v1 = *(*WebCore::ControlPart::controlFactory(this) + 48);

  return v1();
}

void WebCore::SearchFieldPart::~SearchFieldPart(WebCore::SearchFieldPart *this)
{
  WebCore::ControlPart::~ControlPart(this);

  WTF::fastFree(v1, v2);
}

uint64_t WebCore::SearchFieldPart::createPlatformControl(WebCore::SearchFieldPart *this)
{
  v1 = *(*WebCore::ControlPart::controlFactory(this) + 80);

  return v1();
}

void WebCore::SliderThumbPart::~SliderThumbPart(WebCore::SliderThumbPart *this)
{
  WebCore::ControlPart::~ControlPart(this);

  WTF::fastFree(v1, v2);
}

uint64_t WebCore::SliderThumbPart::createPlatformControl(WebCore::SliderThumbPart *this)
{
  v1 = *(*WebCore::ControlPart::controlFactory(this) + 104);

  return v1();
}

void WebCore::SearchFieldResultsPart::~SearchFieldResultsPart(WebCore::SearchFieldResultsPart *this)
{
  WebCore::ControlPart::~ControlPart(this);

  WTF::fastFree(v1, v2);
}

uint64_t WebCore::SearchFieldResultsPart::createPlatformControl(WebCore::SearchFieldResultsPart *this)
{
  v1 = *(*WebCore::ControlPart::controlFactory(this) + 96);

  return v1();
}

void WebCore::SearchFieldCancelButtonPart::~SearchFieldCancelButtonPart(WebCore::SearchFieldCancelButtonPart *this)
{
  WebCore::ControlPart::~ControlPart(this);

  WTF::fastFree(v1, v2);
}

uint64_t WebCore::SearchFieldCancelButtonPart::createPlatformControl(WebCore::SearchFieldCancelButtonPart *this)
{
  v1 = *(*WebCore::ControlPart::controlFactory(this) + 88);

  return v1();
}

void WebCore::TextAreaPart::~TextAreaPart(WebCore::TextAreaPart *this)
{
  WebCore::ControlPart::~ControlPart(this);

  WTF::fastFree(v1, v2);
}

uint64_t WebCore::TextAreaPart::createPlatformControl(WebCore::TextAreaPart *this)
{
  v1 = *(*WebCore::ControlPart::controlFactory(this) + 136);

  return v1();
}

void WebCore::TextFieldPart::~TextFieldPart(WebCore::TextFieldPart *this)
{
  WebCore::ControlPart::~ControlPart(this);

  WTF::fastFree(v1, v2);
}

uint64_t WebCore::TextFieldPart::createPlatformControl(WebCore::TextFieldPart *this)
{
  v1 = *(*WebCore::ControlPart::controlFactory(this) + 144);

  return v1();
}

void WebCore::ToggleButtonPart::~ToggleButtonPart(WebCore::ToggleButtonPart *this)
{
  WebCore::ControlPart::~ControlPart(this);

  WTF::fastFree(v1, v2);
}

uint64_t WebCore::ToggleButtonPart::createPlatformControl(WebCore::ToggleButtonPart *this)
{
  v1 = *(*WebCore::ControlPart::controlFactory(this) + 152);

  return v1();
}

void WebCore::ColorWellPart::~ColorWellPart(WebCore::ColorWellPart *this)
{
  WebCore::ControlPart::~ControlPart(this);

  WTF::fastFree(v1, v2);
}

uint64_t WebCore::ColorWellPart::createPlatformControl(WebCore::ColorWellPart *this)
{
  v1 = *(*WebCore::ControlPart::controlFactory(this) + 32);

  return v1();
}

void WebCore::SwitchThumbPart::~SwitchThumbPart(WebCore::SwitchThumbPart *this)
{
  WebCore::ControlPart::~ControlPart(this);

  WTF::fastFree(v1, v2);
}

uint64_t WebCore::SwitchThumbPart::createPlatformControl(WebCore::SwitchThumbPart *this)
{
  v1 = *(*WebCore::ControlPart::controlFactory(this) + 120);

  return v1();
}

void WebCore::SwitchTrackPart::~SwitchTrackPart(WebCore::SwitchTrackPart *this)
{
  WebCore::ControlPart::~ControlPart(this);

  WTF::fastFree(v1, v2);
}

uint64_t WebCore::SwitchTrackPart::createPlatformControl(WebCore::SwitchTrackPart *this)
{
  v1 = *(*WebCore::ControlPart::controlFactory(this) + 128);

  return v1();
}

uint64_t WTF::Vector<float,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 12);
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = v3;
  if (!v3)
  {
    return v2;
  }

  if (!(v3 >> 30))
  {
    v5 = WTF::fastMalloc((4 * v3));
    *(v2 + 8) = v3;
    *v2 = v5;
    v6 = *(a2 + 12);
    if (v6)
    {
      v7 = *a2;
      v8 = 4 * v6;
      do
      {
        v9 = *v7++;
        *v5++ = v9;
        v8 -= 4;
      }

      while (v8);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

uint64_t std::__optional_move_base<WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  if (*(a2 + 16) == 1)
  {
    WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1, a2);
    *(a1 + 16) = 1;
  }

  return a1;
}

void sub_19D7D046C(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 16) == 1)
  {
    WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(void *a1, _DWORD *a2)
{
  *a1 = 0;
  a1[1] = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

void sub_19D7D04BC(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>>::destruct(*a1, (*a1 + 136 * v3));
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

void sub_19D7D052C(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WTF::VectorTypeOperations<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>>::destruct(WTF::StringImpl *result, void *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      WebKit::JavaScriptEvaluationResult::~JavaScriptEvaluationResult((v3 + 1), a2);
      result = *v3;
      *v3 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      v3 += 17;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t _ZNSt3__127__optional_copy_assign_baseIN6WebKit23RunJavaScriptParametersELb0EECI2NS_24__optional_destruct_baseIS2_Lb0EEEIJS2_EEENS_10in_place_tEDpOT_(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  *(a1 + 8) = *(a2 + 8);
  WTF::URL::URL(a1 + 16, a2 + 2);
  *(a1 + 56) = *(a2 + 56);
  std::__optional_move_base<WTF::Vector<std::pair<WTF::String,WebKit::JavaScriptEvaluationResult>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](a1 + 64, (a2 + 8));
  *(a1 + 88) = *(a2 + 44);
  *(a1 + 96) = 1;
  return a1;
}

void sub_19D7D0624(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = v2[2];
  v2[2] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *v2;
  *v2 = 0;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebCore::FontAttributes::~FontAttributes(WebCore::FontAttributes *this, void *a2)
{
  WTF::Vector<WebCore::TextList,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 56, a2);
  v4 = *(this + 3);
  if ((v4 & 0x8000000000000) != 0)
  {
    v10 = (v4 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v4 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10);
      WTF::fastFree(v10, v3);
    }
  }

  v5 = *(this + 2);
  if ((v5 & 0x8000000000000) != 0)
  {
    v11 = (v5 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v5 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11);
      WTF::fastFree(v11, v3);
    }
  }

  v6 = *(this + 1);
  if ((v6 & 0x8000000000000) != 0)
  {
    v12 = (v6 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v6 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v12);
      WTF::fastFree(v12, v3);
    }
  }

  v7 = *this;
  *this = 0;
  if (v7)
  {
    if (*v7 == 1)
    {
      v8 = MEMORY[0x19EB0DCB0]();
      WTF::fastFree(v8, v9);
    }

    else
    {
      --*v7;
    }
  }
}

WTF::StringImpl *WTF::VectorDestructor<true,WebCore::TextList>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = v3[1];
      v3[1] = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      v3 += 3;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::FormDataElement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v6 = 48 * v3;
    do
    {
      if (v4[40] != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::FormDataElement::EncodedFileData,WebCore::FormDataElement::EncodedBlobData>,(mpark::detail::Trait)1> &>(v4, a2);
      }

      v4[40] = -1;
      v4 += 48;
      v6 -= 48;
    }

    while (v6);
    v4 = *a1;
  }

  if (v4)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t JSC::ArrayBufferView::baseAddress(JSC::ArrayBufferView *this)
{
  if (JSC::ArrayBufferView::isDetached(this))
  {
    return 0;
  }

  result = *(this + 3);
  if (result)
  {
    v3 = *(MEMORY[0x1E696EBF0] + 56);
    if (v3)
    {
      if ((*(MEMORY[0x1E696EBF0] + 34) & 1) != 0 || (*MEMORY[0x1E696EBE8] & 1) == 0)
      {
        return (result & 0x3FFFFFFFFLL) + v3;
      }
    }
  }

  return result;
}

uint64_t JSC::ArrayBuffer::span(JSC::ArrayBuffer *this)
{
  result = *(this + 2);
  if (result)
  {
    v2 = *(MEMORY[0x1E696EBF0] + 56);
    if (v2)
    {
      if ((*(MEMORY[0x1E696EBF0] + 34) & 1) != 0 || (*MEMORY[0x1E696EBE8] & 1) == 0)
      {
        return (result & 0x3FFFFFFFFLL) + v2;
      }
    }
  }

  return result;
}

void WebCore::FontAttributeChanges::~FontAttributeChanges(WebCore::FontAttributeChanges *this, WTF::StringImpl *a2)
{
  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  if (*(this + 64) == 1)
  {
    v5 = *(this + 5);
    if ((v5 & 0x8000000000000) != 0)
    {
      v10 = (v5 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v5 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v10);
        WTF::fastFree(v10, a2);
      }
    }
  }

  if (*(this + 32) == 1)
  {
    v6 = *(this + 3);
    if ((v6 & 0x8000000000000) != 0)
    {
      v8 = (v6 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v6 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v8);
        WTF::fastFree(v8, a2);
      }
    }
  }

  if (*(this + 16) == 1)
  {
    v7 = *(this + 1);
    if ((v7 & 0x8000000000000) != 0)
    {
      v9 = (v7 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v7 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v9);
        WTF::fastFree(v9, a2);
      }
    }
  }
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<WebCore::TextManipulationControllerExclusionRule::ElementRule,WebCore::TextManipulationControllerExclusionRule::AttributeRule,WebCore::TextManipulationControllerExclusionRule::ClassRule>,(mpark::detail::Trait)1>::~move_constructor(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 16) > 1u)
  {
    if (*(a1 + 16) != 2)
    {
      goto LABEL_10;
    }
  }

  else if (*(a1 + 16))
  {
    v3 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }
    }
  }

  v4 = *a1;
  *a1 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

LABEL_10:
  *(a1 + 16) = -1;
  return a1;
}

uint64_t WebCore::MediaEngineSupportParameters::MediaEngineSupportParameters(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  *(a1 + 8) = *(a2 + 8);
  WTF::URL::URL(a1 + 16, a2 + 2);
  v5 = *(a2 + 14);
  *(a1 + 64) = 0;
  *(a1 + 56) = v5;
  *(a1 + 72) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 64, a2 + 16);
  std::__optional_move_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100]((a1 + 80), (a2 + 10));
  std::__optional_move_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100]((a1 + 104), (a2 + 13));
  std::__optional_move_base<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](a1 + 128, (a2 + 16));
  std::__optional_move_base<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](a1 + 152, (a2 + 19));
  std::__optional_move_base<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](a1 + 176, (a2 + 22));
  return a1;
}

void sub_19D7D0B2C(_Unwind_Exception *a1, void *a2)
{
  if (*(v2 + 168) == 1)
  {
    v5 = *(v2 + 152);
    if (v5)
    {
      *(v2 + 152) = 0;
      *(v2 + 160) = 0;
      WTF::fastFree(v5, a2);
    }
  }

  if (*(v2 + 144) == 1)
  {
    v6 = *(v2 + 128);
    if (v6)
    {
      *(v2 + 128) = 0;
      *(v2 + 136) = 0;
      WTF::fastFree(v6, a2);
    }
  }

  if (*(v2 + 120) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 104, a2);
  }

  if (*(v2 + 96) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 80, a2);
  }

  WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, a2);
  v8 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  v9 = *v2;
  *v2 = 0;
  if (v9)
  {
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v7);
    }
  }

  _Unwind_Resume(a1);
}

void WebCore::MediaEngineSupportParameters::~MediaEngineSupportParameters(WebCore::MediaEngineSupportParameters *this, void *a2)
{
  if (*(this + 192) == 1)
  {
    v3 = *(this + 22);
    if (v3)
    {
      *(this + 22) = 0;
      *(this + 46) = 0;
      WTF::fastFree(v3, a2);
    }
  }

  if (*(this + 168) == 1)
  {
    v4 = *(this + 19);
    if (v4)
    {
      *(this + 19) = 0;
      *(this + 40) = 0;
      WTF::fastFree(v4, a2);
    }
  }

  if (*(this + 144) == 1)
  {
    v5 = *(this + 16);
    if (v5)
    {
      *(this + 16) = 0;
      *(this + 34) = 0;
      WTF::fastFree(v5, a2);
    }
  }

  if (*(this + 120) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 104, a2);
  }

  if (*(this + 96) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 80, a2);
  }

  WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 64, a2);
  v7 = *(this + 2);
  *(this + 2) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  v8 = *this;
  *this = 0;
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v6);
    }
  }
}

_BYTE *mpark::detail::move_constructor<mpark::detail::traits<std::monostate,WebCore::SpeechRecognitionError,WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::move_constructor(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  a1[16] = -1;
  mpark::detail::constructor<mpark::detail::traits<std::monostate,WebCore::SpeechRecognitionError,WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>::generic_construct<mpark::detail::move_constructor<mpark::detail::traits<std::monostate,WebCore::SpeechRecognitionError,WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>>(a1, a2);
  return a1;
}

uint64_t mpark::detail::constructor<mpark::detail::traits<std::monostate,WebCore::SpeechRecognitionError,WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>::generic_construct<mpark::detail::move_constructor<mpark::detail::traits<std::monostate,WebCore::SpeechRecognitionError,WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>>(uint64_t result, _BYTE *a2)
{
  v3 = result;
  if (*(result + 16) > 1u)
  {
    if (*(result + 16) == 2)
    {
      result = WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(result, a2);
    }
  }

  else if (*(result + 16))
  {
    result = *(result + 8);
    *(v3 + 8) = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, a2);
      }
    }
  }

  *(v3 + 16) = -1;
  LODWORD(v4) = a2[16];
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      return result;
    }

    *v3 = 0;
    *(v3 + 8) = 0;
    result = WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v3, a2);
    LOBYTE(v4) = a2[16];
  }

  else if (a2[16])
  {
    *v3 = *a2;
    v4 = *(a2 + 1);
    *(a2 + 1) = 0;
    *(v3 + 8) = v4;
    LOBYTE(v4) = 1;
  }

  *(v3 + 16) = v4;
  return result;
}

void sub_19D7D0E24(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<std::monostate,WebCore::SpeechRecognitionError,WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(uint64_t a1, void *a2)
{
  if (*(a1 + 16) > 1u)
  {
    if (*(a1 + 16) == 2)
    {
      WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1, a2);
    }
  }

  else if (*(a1 + 16))
  {
    v3 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }
    }
  }

  *(a1 + 16) = -1;
  return a1;
}

uint64_t WTF::Vector<WebCore::SpeechRecognitionResultData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 24 * v3;
    do
    {
      v4 = WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, a2) + 24;
      v5 -= 24;
    }

    while (v5);
  }

  v6 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v6, a2);
  }

  return a1;
}

void WebCore::GenericCueData::~GenericCueData(WebCore::GenericCueData *this, void *a2)
{
  v3 = *(this + 15);
  if ((v3 & 0x8000000000000) != 0)
  {
    v9 = (v3 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v3 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v9);
      WTF::fastFree(v9, a2);
    }
  }

  v4 = *(this + 14);
  if ((v4 & 0x8000000000000) != 0)
  {
    v10 = (v4 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v4 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10);
      WTF::fastFree(v10, a2);
    }
  }

  v5 = *(this + 13);
  if ((v5 & 0x8000000000000) != 0)
  {
    v11 = (v5 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v5 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11);
      WTF::fastFree(v11, a2);
    }
  }

  v6 = *(this + 7);
  *(this + 7) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(this + 6);
  *(this + 6) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(this + 5);
  *(this + 5) = 0;
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, a2);
    }
  }
}

void *WebCore::CustomHeaderFields::CustomHeaderFields(void *a1, _DWORD *a2)
{
  *a1 = 0;
  a1[1] = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
  a1[2] = 0;
  a1[3] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((a1 + 2), a2 + 4);
  return a1;
}

void sub_19D7D1058(_Unwind_Exception *a1, void *a2)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    WTF::fastFree(v5, a2);
  }

  WTF::Vector<WebCore::HTTPHeaderField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  _Unwind_Resume(a1);
}

void WebCore::NavigationRequester::~NavigationRequester(WebCore::NavigationRequester *this, WTF::StringImpl *a2)
{
  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 14);
  *(this + 14) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 12);
  *(this + 12) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 11);
  *(this + 11) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 56, a2);
  v8 = *(this + 6);
  *(this + 6) = 0;
  if (v8)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v8, v7);
  }

  v9 = *(this + 5);
  *(this + 5) = 0;
  if (v9)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v9, v7);
  }

  v10 = *this;
  *this = 0;
  if (v10)
  {
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v7);
    }
  }
}

uint64_t WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t result, void *a2)
{
  v2 = *(result + 12);
  if (v2)
  {
    v4 = result;
    WTF::VectorDestructor<true,WebCore::SpeechRecognitionAlternativeData>::destruct(*result, (*result + 16 * v2));
    result = v4;
  }

  v3 = *result;
  if (*result)
  {
    *result = 0;
    *(result + 8) = 0;
    v5 = result;
    WTF::fastFree(v3, a2);
    return v5;
  }

  return result;
}

void WebCore::PolicyContainer::~PolicyContainer(WebCore::PolicyContainer *this, WTF::StringImpl *a2)
{
  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 5);
  *(this + 5) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 4);
  *(this + 4) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this, a2);
}

void WebCore::ServiceWorkerClientData::~ServiceWorkerClientData(WebCore::ServiceWorkerClientData *this, void *a2)
{
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 168, a2);
  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  v5 = *(this + 5);
  *(this + 5) = 0;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v3);
    }
  }
}

void WebCore::ServiceWorkerJobData::~ServiceWorkerJobData(WebCore::ServiceWorkerJobData *this, WTF::StringImpl *a2)
{
  if (*(this + 248) == 1)
  {
    v3 = *(this + 29);
    *(this + 29) = 0;
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }
    }
  }

  v4 = *(this + 27);
  *(this + 27) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 14);
  *(this + 14) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(this + 80);
  v7 = *(this + 5);
  *(this + 5) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  v8 = *this;
  *this = 0;
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v6);
    }
  }
}

void WebCore::ServiceWorkerRoutePattern::~ServiceWorkerRoutePattern(WebCore::ServiceWorkerRoutePattern *this, WTF::StringImpl *a2)
{
  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 5);
  *(this + 5) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 4);
  *(this + 4) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(this + 3);
  *(this + 3) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(this + 2);
  *(this + 2) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  v9 = *(this + 1);
  *(this + 1) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
  }

  v10 = *this;
  *this = 0;
  if (v10)
  {
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, a2);
    }
  }
}

uint64_t std::__optional_move_base<WebCore::ServiceWorkerRoutePattern,false>::__optional_move_base[abi:sn200100](uint64_t result, uint64_t *a2)
{
  *result = 0;
  *(result + 64) = 0;
  if (*(a2 + 64) == 1)
  {
    v2 = *a2;
    *a2 = 0;
    *result = v2;
    v3 = a2[1];
    a2[1] = 0;
    *(result + 8) = v3;
    v4 = a2[2];
    a2[2] = 0;
    *(result + 16) = v4;
    v5 = a2[3];
    a2[3] = 0;
    *(result + 24) = v5;
    v6 = a2[4];
    a2[4] = 0;
    *(result + 32) = v6;
    v7 = a2[5];
    a2[5] = 0;
    *(result + 40) = v7;
    v8 = a2[6];
    a2[6] = 0;
    *(result + 48) = v8;
    v9 = a2[7];
    a2[7] = 0;
    *(result + 56) = v9;
    *(result + 64) = 1;
  }

  return result;
}

uint64_t *std::unique_ptr<WebCore::ServiceWorkerRouteCondition>::reset[abi:sn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::unique_ptr<WebCore::ServiceWorkerRouteCondition>::reset[abi:sn200100](v2 + 104, 0);
    WTF::Vector<WebCore::ServiceWorkerRouteCondition,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 88, v3);
    v5 = *(v2 + 72);
    *(v2 + 72) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v4);
    }

    if (*(v2 + 64) == 1)
    {
      WebCore::ServiceWorkerRoutePattern::~ServiceWorkerRoutePattern(v2, v4);
    }

    return WTF::fastFree(v2, v4);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::ServiceWorkerRouteCondition,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WebCore::ServiceWorkerRouteCondition>::destruct(*a1, *a1 + 112 * v3);
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

void WTF::VectorDestructor<true,WebCore::ServiceWorkerRouteCondition>::destruct(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = a1 + 104;
    do
    {
      std::unique_ptr<WebCore::ServiceWorkerRouteCondition>::reset[abi:sn200100](v3, 0);
      WTF::Vector<WebCore::ServiceWorkerRouteCondition,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3 - 16);
      v5 = *(v3 - 32);
      *(v3 - 32) = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v4);
      }

      if (*(v3 - 40) == 1)
      {
        WebCore::ServiceWorkerRoutePattern::~ServiceWorkerRoutePattern((v3 - 104), v4);
      }

      v6 = v3 + 8;
      v3 += 112;
    }

    while (v6 != a2);
  }
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<WebCore::RouterSourceDict,WebCore::RouterSourceEnum>,(mpark::detail::Trait)1>::~move_constructor(uint64_t a1, WTF::StringImpl *a2)
{
  if (!*(a1 + 8))
  {
    v3 = *a1;
    *a1 = 0;
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }
    }
  }

  *(a1 + 8) = -1;
  return a1;
}

void WebCore::SecurityPolicyViolationEventInit::~SecurityPolicyViolationEventInit(WebCore::SecurityPolicyViolationEventInit *this, WTF::StringImpl *a2)
{
  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 6);
  *(this + 6) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 5);
  *(this + 5) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(this + 4);
  *(this + 4) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(this + 3);
  *(this + 3) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  v9 = *(this + 2);
  *(this + 2) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
  }

  v10 = *(this + 1);
  *(this + 1) = 0;
  if (v10)
  {
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, a2);
    }
  }
}

uint64_t WebCore::RealtimeMediaSourceCapabilities::RealtimeMediaSourceCapabilities(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v5;
  *a1 = v4;
  v6 = *(a2 + 15);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 60) = v6;
  if (v6)
  {
    v7 = WTF::fastMalloc(v6);
    *(a1 + 56) = v6;
    *(a1 + 48) = v7;
    memcpy(v7, *(a2 + 6), *(a2 + 15));
  }

  v8 = a2[4];
  v9 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v8;
  *(a1 + 80) = v9;
  v10 = *(a2 + 13);
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  *(a1 + 104) = v10;
  v11 = *(a2 + 14);
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
  }

  *(a1 + 112) = v11;
  *(a1 + 120) = *(a2 + 120);
  v12 = *(a2 + 37);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 148) = v12;
  if (v12)
  {
    v13 = WTF::fastMalloc(v12);
    *(a1 + 144) = v12;
    *(a1 + 136) = v13;
    memcpy(v13, *(a2 + 17), *(a2 + 37));
  }

  v14 = *(a2 + 152);
  v15 = *(a2 + 168);
  *(a1 + 182) = *(a2 + 182);
  *(a1 + 168) = v15;
  *(a1 + 152) = v14;
  return a1;
}

void sub_19D7D196C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v5 = *(v2 + 112);
  *(v2 + 112) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(v2 + 104);
  *(v2 + 104) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *v3;
  if (*v3)
  {
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    WTF::fastFree(v7, a2);
  }

  _Unwind_Resume(exception_object);
}

void WebCore::RealtimeMediaSourceCapabilities::~RealtimeMediaSourceCapabilities(WebCore::RealtimeMediaSourceCapabilities *this, void *a2)
{
  v3 = *(this + 17);
  if (v3)
  {
    *(this + 17) = 0;
    *(this + 36) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 14);
  *(this + 14) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 13);
  *(this + 13) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 6);
  if (v6)
  {
    *(this + 6) = 0;
    *(this + 14) = 0;
    WTF::fastFree(v6, a2);
  }
}

uint64_t std::__optional_destruct_base<WTF::RefPtr<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,false>::~__optional_destruct_base[abi:sn200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      if (*v2 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v2;
      }
    }
  }

  return a1;
}

_DWORD *WTF::Vector<std::pair<WebCore::ContentExtensions::RedirectAction,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(_DWORD *a1, WTF::StringImpl *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v6 = (*a1 + 112);
    v7 = 152 * v3;
    do
    {
      v8 = *v6;
      *v6 = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, a2);
      }

      if (*(v6 - 8) != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::ContentExtensions::RedirectAction::ExtensionPathAction,WebCore::ContentExtensions::RedirectAction::RegexSubstitutionAction,WebCore::ContentExtensions::RedirectAction::URLTransformAction,WebCore::ContentExtensions::RedirectAction::URLAction>,(mpark::detail::Trait)1> &>(&v9, (v6 - 13));
      }

      *(v6 - 8) = -1;
      v6 += 19;
      v7 -= 152;
    }

    while (v7);
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    a1[2] = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

void mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::ContentExtensions::RedirectAction::ExtensionPathAction,WebCore::ContentExtensions::RedirectAction::RegexSubstitutionAction,WebCore::ContentExtensions::RedirectAction::URLTransformAction,WebCore::ContentExtensions::RedirectAction::URLAction>,(mpark::detail::Trait)1> &>(int a1, WebCore::ContentExtensions::RedirectAction::URLTransformAction *this)
{
  v3 = *(this + 96);
  if (v3 == 255)
  {
    v3 = -1;
  }

  if (v3 <= 1)
  {
    if (v3)
    {
      v4 = *(this + 1);
      *(this + 1) = 0;
      if (v4)
      {
        if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v4, this);
        }
      }
    }

    goto LABEL_12;
  }

  if (v3 != 2)
  {
LABEL_12:
    v5 = *this;
    *this = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {

      WTF::StringImpl::destroy(v5, this);
    }

    return;
  }

  WebCore::ContentExtensions::RedirectAction::URLTransformAction::~URLTransformAction(this, this);
}

void WebCore::ContentExtensions::RedirectAction::URLTransformAction::~URLTransformAction(WebCore::ContentExtensions::RedirectAction::URLTransformAction *this, WTF::StringImpl *a2)
{
  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  if (*(this + 72) != 255)
  {
    if (*(this + 72))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 56, a2);
      WTF::Vector<WebCore::ContentExtensions::RedirectAction::URLTransformAction::QueryTransform::QueryKeyValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 10, v6);
    }

    else
    {
      v5 = *(this + 5);
      *(this + 5) = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }
    }
  }

  *(this + 72) = -1;
  v7 = *(this + 3);
  *(this + 3) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(this + 2);
  *(this + 2) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  v9 = *(this + 1);
  *(this + 1) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
  }

  v10 = *this;
  *this = 0;
  if (v10)
  {
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, a2);
    }
  }
}

unsigned int *WTF::Vector<WebCore::ContentExtensions::RedirectAction::URLTransformAction::QueryTransform::QueryKeyValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(unsigned int *a1, WTF::StringImpl *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = 24 * v3;
    v5 = (*a1 + 16);
    do
    {
      v6 = *v5;
      *v5 = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }

      v7 = *(v5 - 2);
      *(v5 - 2) = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, a2);
      }

      v5 += 3;
      v4 -= 24;
    }

    while (v4);
  }

  v8 = *a1;
  if (*a1)
  {
    *a1 = 0;
    a1[2] = 0;
    WTF::fastFree(v8, a2);
  }

  return a1;
}

uint64_t WTF::Vector<std::pair<WTF::String,WebCore::ContentRuleListResults::Result>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<std::pair<WTF::String,WebCore::ContentRuleListResults::Result>>::destruct(*a1, (*a1 + 32 * v3));
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

WTF::StringImpl *WTF::VectorTypeOperations<std::pair<WTF::String,WebCore::ContentRuleListResults::Result>>::destruct(WTF::StringImpl *result, void *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v3 + 2), a2);
      result = *v3;
      *v3 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      v3 += 4;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(atomic_uchar *this, void *a2)
{
  v3 = 0;
  atomic_compare_exchange_strong_explicit(this, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x19EB01E30](this);
  }

  v4 = *(this + 1) - 1;
  *(this + 1) = v4;
  if (v4)
  {
    result = 0;
  }

  else
  {
    result = *(this + 3);
    ++*(this + 2);
    *(this + 3) = 0;
  }

  v6 = 1;
  atomic_compare_exchange_strong_explicit(this, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 == 1)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v10 = v4;
    v11 = result;
    WTF::Lock::unlockSlow(this);
    result = v11;
    if (v10)
    {
      return result;
    }
  }

  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v7 = 0;
  v8 = 1;
  atomic_compare_exchange_strong_explicit(this, &v7, 1u, memory_order_acquire, memory_order_acquire);
  if (v7)
  {
    result = MEMORY[0x19EB01E30](this);
    v8 = 1;
  }

  v9 = *(this + 2) - 1;
  *(this + 2) = v9;
  atomic_compare_exchange_strong_explicit(this, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 == 1)
  {
    if (v9)
    {
      return result;
    }
  }

  else
  {
    v12 = v9;
    result = WTF::Lock::unlockSlow(this);
    if (v12)
    {
      return result;
    }
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar **WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref(atomic_uchar **result, void *a2)
{
  do
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::ImageBuffer,(WTF::DestructionThread)0>(*result, a2);
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, (v2 - 2), memory_order_relaxed, memory_order_relaxed);
  }

  while (v3 != v2);
  if (v2 == 3)
  {
    return (*(*(result - 1) + 1))();
  }

  return result;
}

uint64_t WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::ImageBuffer,(WTF::DestructionThread)0>(atomic_uchar *this, void *a2)
{
  v3 = 0;
  atomic_compare_exchange_strong_explicit(this, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x19EB01E30](this);
  }

  v4 = *(this + 1) - 1;
  *(this + 1) = v4;
  if (v4)
  {
    result = 0;
  }

  else
  {
    result = *(this + 3);
    ++*(this + 2);
    *(this + 3) = 0;
  }

  v6 = 1;
  atomic_compare_exchange_strong_explicit(this, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {
    v10 = v4;
    v11 = result;
    WTF::Lock::unlockSlow(this);
    v4 = v10;
    result = v11;
  }

  if (!v4)
  {
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    v7 = 0;
    v8 = 1;
    atomic_compare_exchange_strong_explicit(this, &v7, 1u, memory_order_acquire, memory_order_acquire);
    if (v7)
    {
      result = MEMORY[0x19EB01E30](this);
      v8 = 1;
    }

    v9 = *(this + 2) - 1;
    *(this + 2) = v9;
    atomic_compare_exchange_strong_explicit(this, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 != 1)
    {
      v12 = v9;
      result = WTF::Lock::unlockSlow(this);
      v9 = v12;
    }

    if (!v9)
    {

      return WTF::fastFree(this, a2);
    }
  }

  return result;
}

uint64_t WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::HTTPHeaderField>::destruct(*a1, (*a1 + 16 * v3));
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

void sub_19D7D21CC(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::__optional_move_base<WebCore::Region,false>::__optional_move_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[24] = 0;
  if (*(a2 + 24) == 1)
  {
    WebCore::Region::Region();
    a1[24] = 1;
  }

  return a1;
}

void sub_19D7D2238(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    WebCore::Region::~Region(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebCore::EventRegion::EventRegion(uint64_t a1, uint64_t a2)
{
  v4 = WebCore::Region::Region();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  v5 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(v4 + 24) = v5;
  LODWORD(v5) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(v4 + 32) = v5;
  LODWORD(v5) = *(a2 + 36);
  *(a2 + 36) = 0;
  *(v4 + 36) = v5;
  WebCore::Region::Region();
  WebCore::Region::Region();
  std::__optional_move_base<WebCore::Region,false>::__optional_move_base[abi:sn200100]((a1 + 88), a2 + 88);
  return a1;
}

void sub_19D7D22DC(_Unwind_Exception *a1)
{
  WebCore::Region::~Region((v1 + 64));
  WebCore::Region::~Region((v2 + 16));
  WTF::Vector<WebCore::Region,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, v4);
  WebCore::Region::~Region(v1);
  _Unwind_Resume(a1);
}

uint64_t WTF::Vector<WebCore::MediaControlsContextMenuItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WebCore::MediaControlsContextMenuItem>::destruct(*a1, (*a1 + 48 * v3));
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

WTF::StringImpl *WTF::VectorDestructor<true,WebCore::MediaControlsContextMenuItem>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      WTF::Vector<WebCore::MediaControlsContextMenuItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3 + 32);
      v5 = *(v3 + 2);
      *(v3 + 2) = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v4);
      }

      result = *(v3 + 1);
      *(v3 + 1) = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v4);
        }
      }

      v3 = (v3 + 48);
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t std::__optional_move_base<WebCore::ServiceWorkerData,false>::__optional_move_base[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 64) = 0;
  if (*(a2 + 64) == 1)
  {
    *a1 = *a2;
    WTF::URL::URL(a1 + 16, (a2 + 16));
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = 1;
  }

  return a1;
}

void sub_19D7D244C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 64) == 1)
  {
    v4 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

void WebCore::WorkerFetchResult::~WorkerFetchResult(WebCore::WorkerFetchResult *this, WTF::StringImpl *a2)
{
  v3 = *(this + 22);
  *(this + 22) = 0;
  if (v3)
  {
  }

  v4 = *(this + 20);
  *(this + 20) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 15);
  *(this + 15) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 14);
  *(this + 14) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(this + 13);
  *(this + 13) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(this + 12);
  *(this + 12) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  v9 = *(this + 11);
  *(this + 11) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
  }

  WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 56, a2);
  v11 = *(this + 6);
  *(this + 6) = 0;
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(this + 1);
  *(this + 1) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v10);
  }

  v13 = *this;
  *this = 0;
  if (v13)
  {
    if (atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v13 + 2);
      (*(*v13 + 8))(v13);
    }
  }
}

void WebCore::ServiceWorkerRegistrationData::~ServiceWorkerRegistrationData(WebCore::ServiceWorkerRegistrationData *this, WTF::StringImpl *a2)
{
  if (*(this + 344) == 1)
  {
    v3 = *(this + 37);
    *(this + 37) = 0;
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }
    }
  }

  if (*(this + 272) == 1)
  {
    v4 = *(this + 28);
    *(this + 28) = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }
  }

  if (*(this + 200) == 1)
  {
    v5 = *(this + 19);
    *(this + 19) = 0;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }
    }
  }

  v6 = *(this + 10);
  *(this + 10) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(this + 4);
  *(this + 4) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(this);
}

uint64_t WebCore::ServiceWorkerRegistrationData::ServiceWorkerRegistrationData(uint64_t a1, uint64_t a2)
{
  v4 = mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_constructor(a1);
  WTF::URL::URL((v4 + 32), (a2 + 32));
  *(a1 + 72) = *(a2 + 72);
  WTF::URL::URL(a1 + 80, (a2 + 80));
  *(a1 + 120) = *(a2 + 120);
  std::__optional_move_base<WebCore::ServiceWorkerData,false>::__optional_move_base[abi:sn200100](a1 + 136, a2 + 136);
  std::__optional_move_base<WebCore::ServiceWorkerData,false>::__optional_move_base[abi:sn200100](a1 + 208, a2 + 208);
  std::__optional_move_base<WebCore::ServiceWorkerData,false>::__optional_move_base[abi:sn200100](a1 + 280, a2 + 280);
  return a1;
}

void sub_19D7D2774(_Unwind_Exception *a1, WTF::StringImpl *a2)
{
  if (*(v2 + 272) == 1)
  {
    v4 = *(v2 + 224);
    *(v2 + 224) = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }
  }

  if (*(v2 + 200) == 1)
  {
    v5 = *(v2 + 152);
    *(v2 + 152) = 0;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }
    }
  }

  v6 = *(v2 + 80);
  *(v2 + 80) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(v2 + 32);
  *(v2 + 32) = 0;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }
  }

  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v2);
  _Unwind_Resume(a1);
}