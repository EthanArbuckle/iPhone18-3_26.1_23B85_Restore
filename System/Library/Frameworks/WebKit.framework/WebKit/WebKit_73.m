void sub_19D95B908(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, WTF::StringImpl *a13, WTF::StringImpl *a14, uint64_t a15, WTF::StringImpl *a16, char a17)
{
  v19 = 1;
  atomic_compare_exchange_strong_explicit(v17, &v19, 0, memory_order_release, memory_order_relaxed);
  if (v19 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
  }

  if (a16)
  {
    if (atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a16, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WTF::LogArgument<WTF::NativePromise<WTF::String,void,0u>>::toString@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  WTF::LogArgument<void const*>::toString();
  WTF::Logger::LogSiteIdentifier::toString(&v7, (a1 + 16));
  WTF::makeString<WTF::ASCIILiteral,WTF::String,char,WTF::String,char>("NativePromise", 14, &v8, 60, &v7, 0x3Eu, a2);
  v5 = v7;
  v7 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  result = v8;
  v8 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v4);
    }
  }

  return result;
}

void sub_19D95BB00(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::makeString<WTF::ASCIILiteral,WTF::String,char,WTF::String,char>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, uint64_t *a5@<X4>, unsigned __int8 a6@<W5>, void *a7@<X8>)
{
  v11[0] = a1;
  v11[1] = a2;
  v10 = a4;
  v9 = a6;
  result = WTF::tryMakeString<WTF::ASCIILiteral,WTF::String,char,WTF::String,char>(v11, a3, &v10, a5, &v9, a7);
  if (!*a7)
  {
    __break(0xC471u);
  }

  return result;
}

uint64_t WTF::tryMakeString<WTF::ASCIILiteral,WTF::String,char,WTF::String,char>@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, unsigned __int8 *a5@<X4>, void *a6@<X8>)
{
  v6 = a1[1];
  v7 = v6 != 0;
  v8 = v6 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v14[0] = *a1;
  v14[1] = v8;
  if (v8 >> 31)
  {
    result = 161;
    __break(0xC471u);
  }

  else
  {
    v13 = *a2;
    v12 = *a3;
    v11 = *a4;
    v10 = *a5;
    return WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(v14, &v13, &v12, &v11, &v10, a6);
  }

  return result;
}

uint64_t WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, unsigned __int8 *a5@<X4>, void *a6@<X8>)
{
  v8 = *a2;
  if (*a2)
  {
    v9 = *(v8 + 4);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(result + 8);
  v11 = *a4;
  if (*a4)
  {
    v12 = *(v11 + 4);
    if (v12 < 0)
    {
LABEL_24:
      *a6 = 0;
      return result;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    goto LABEL_24;
  }

  v13 = __OFADD__(v14, 1);
  v15 = v14 + 1;
  v16 = v13;
  if (v9 < 0 || v16)
  {
    goto LABEL_24;
  }

  v13 = __OFADD__(v9, v15);
  v17 = v9 + v15;
  v18 = v13;
  if ((v10 & 0x80000000) != 0)
  {
    goto LABEL_24;
  }

  if (v18)
  {
    goto LABEL_24;
  }

  v13 = __OFADD__(v10, v17);
  v19 = (v10 + v17);
  if (v13)
  {
    goto LABEL_24;
  }

  v20 = (!v8 || (*(v8 + 16) & 4) != 0) && (!v11 || (*(v11 + 16) & 4) != 0);
  return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(v19, v20, *result, v10, v8, *a3, v11, *a5, a6);
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>@<X0>(uint64_t result@<X0>, int a2@<W1>, _OWORD *a3@<X2>, size_t a4@<X3>, char *a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, _BYTE *a8@<X7>, void *a9@<X8>)
{
  LOBYTE(v11) = a6;
  v15 = result;
  v17 = result;
  if (a2)
  {
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        result = WTF::tryFastCompactMalloc((result + 20));
        v18 = v38;
        if (v38)
        {
          v36 = a9;
          LOBYTE(a9) = a8;
          a8 = v38 + 5;
          *v38 = 2;
          v18[1] = v15;
          *(v18 + 1) = v18 + 5;
          v18[4] = 4;
          if (a4)
          {
            if (a4 == 1)
            {
              goto LABEL_35;
            }

            memcpy(v18 + 5, a3, a4);
          }

          while (1)
          {
            if (v17 >= a4)
            {
              v19 = a4;
              a4 = v17 - a4;
              a3 = &a8[v19];
              v38 = a5;
              WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v38, &a8[v19]);
              v20 = v38;
              if (!v38 || (v20 = v38[1], a4 >= v20))
              {
                if (a4 != v20)
                {
                  break;
                }
              }
            }

LABEL_34:
            __break(1u);
LABEL_35:
            *a8 = *a3;
          }

          *(a3 + v20) = v11;
          result = WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(a3 + v20 + 1, a4 + ~v20, a7, a9);
          a9 = v36;
        }

        goto LABEL_33;
      }

LABEL_15:
      v18 = 0;
      goto LABEL_33;
    }

LABEL_16:
    v18 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_33;
  }

  if (!result)
  {
    goto LABEL_16;
  }

  if (result > 0x7FFFFFEF)
  {
    goto LABEL_15;
  }

  result = WTF::tryFastCompactMalloc((2 * result + 20));
  v18 = v38;
  if (v38)
  {
    v21 = v38 + 5;
    *v38 = 2;
    v18[1] = v15;
    *(v18 + 1) = v18 + 5;
    v18[4] = 0;
    if (a4 <= 0x3F)
    {
      v22 = (v18 + 5);
    }

    else
    {
      v22 = v21 + 2 * (a4 & 0x7FFFFFFFFFFFFFC0);
      v23 = 0uLL;
      v24 = (v18 + 5);
      do
      {
        v39.val[0] = *a3;
        v25 = *(a3 + 1);
        v40.val[0] = a3[2];
        v26 = a3[3];
        a3 += 4;
        v27 = v26;
        v40.val[1] = 0uLL;
        v41.val[0] = v25;
        v39.val[1] = 0uLL;
        v28 = v24;
        vst2q_s8(v28, v39);
        v28 += 32;
        v41.val[1] = 0uLL;
        vst2q_s8(v28, v41);
        v29 = v24 + 64;
        vst2q_s8(v29, v40);
        v30 = v24 + 96;
        vst2q_s8(v30, *(&v23 - 1));
        v24 += 128;
      }

      while (v24 != v22);
    }

    while (v22 != v18 + 2 * a4 + 20)
    {
      v31 = *a3;
      a3 = (a3 + 1);
      *v22 = v31;
      v22 += 2;
    }

    if (v17 < a4)
    {
      goto LABEL_34;
    }

    v32 = a4;
    a4 = v17 - a4;
    a3 = (v21 + 2 * v32);
    v37 = a5;
    WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v37, a3);
    v33 = v37;
    if (v37)
    {
      v33 = *(v37 + 1);
      if (a4 < v33)
      {
        goto LABEL_34;
      }
    }

    if (a4 == v33)
    {
      goto LABEL_34;
    }

    v34 = a3 + v33;
    *v34 = v11;
    a5 = (v34 + 1);
    v11 = (a4 + ~v33);
    v38 = a7;
    result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v38, a5);
    v35 = v38;
    if (v38)
    {
      v35 = v38[1];
      if (v11 < v35)
      {
        goto LABEL_34;
      }
    }

    if (v11 == v35)
    {
      goto LABEL_34;
    }

    *&a5[2 * v35] = a8;
  }

LABEL_33:
  *a9 = v18;
  return result;
}

void sub_19D95BF94(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(char *__dst, unint64_t a2, uint64_t a3, char a4)
{
  v9 = a3;
  result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v9, __dst);
  v8 = v9;
  if (v9 && (v8 = *(v9 + 4), a2 < v8) || a2 == v8)
  {
    __break(1u);
  }

  else
  {
    __dst[v8] = a4;
  }

  return result;
}

WTF::StringImpl *WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [12],WTF::NativePromise<WTF::String,void,0u>>(uint64_t a1, WTF::Logger::LogSiteIdentifier *this, const char *a3, uint64_t a4)
{
  v38[2] = *MEMORY[0x1E69E9840];
  WTF::Logger::LogSiteIdentifier::toString(&v32, this);
  WTF::String::String(&v31, a3);
  WTF::LogArgument<WTF::NativePromise<WTF::String,void,0u>>::toString(a4, &v30);
  WTF::makeString<WTF::String,WTF::String,WTF::String>(&v32, &v31, &v30, &v33);
  v8 = v30;
  v30 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  v9 = v31;
  v31 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  v10 = v32;
  v32 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v7);
  }

  v11 = *(a1 + 32);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    WTF::String::utf8();
    v14 = v29[0] ? v29[0] + 16 : 0;
    *buf = 136446210;
    v35 = v14;
    _os_log_impl(&dword_19D52D000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    v12 = v29[0];
    v29[0] = 0;
    if (v12)
    {
      if (*v12 == 1)
      {
        v12 = WTF::fastFree(v12, v13);
      }

      else
      {
        --*v12;
      }
    }
  }

  if (*a1 && *(a1 + 16) >= 4u)
  {
    v15 = MEMORY[0x1E696EBC0];
    while (1)
    {
      v16 = *v15;
      if (v16)
      {
        break;
      }

      v17 = *v15;
      atomic_compare_exchange_strong_explicit(v15, &v17, v16 | 1, memory_order_acquire, memory_order_acquire);
      if (v17 == v16)
      {
        v18 = WTF::Logger::observers(v12);
        v19 = *(v18 + 12);
        if (v19)
        {
          v20 = *v18;
          v21 = *v18 + 8 * v19;
          do
          {
            v22 = *v20;
            *buf = 0;
            WTF::Logger::LogSiteIdentifier::toString((&v35 + 4), this);
            v36 = 0;
            WTF::String::String(v37, a3);
            v37[2] = 0;
            WTF::LogArgument<WTF::NativePromise<WTF::String,void,0u>>::toString(a4, v38);
            WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v29, buf, 3uLL);
            (*(*v22 + 16))(v22, a1, 4, v29);
            WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v29, v23);
            for (i = 40; i != -8; i -= 16)
            {
              v25 = *&buf[i];
              *&buf[i] = 0;
              if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v25, v13);
              }
            }

            ++v20;
          }

          while (v20 != v21);
        }

        v26 = 1;
        atomic_compare_exchange_strong_explicit(v15, &v26, 0, memory_order_release, memory_order_relaxed);
        if (v26 != 1)
        {
          WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
        }

        break;
      }
    }
  }

  result = v33;
  v33 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v13);
    }
  }

  return result;
}

void sub_19D95C328(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, WTF::StringImpl *a13, WTF::StringImpl *a14, uint64_t a15, WTF::StringImpl *a16, char a17)
{
  v19 = 1;
  atomic_compare_exchange_strong_explicit(v17, &v19, 0, memory_order_release, memory_order_relaxed);
  if (v19 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
  }

  if (a16)
  {
    if (atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a16, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::NativePromise<WTF::String,void,0u>::dispatchAll(uint64_t a1, atomic_uchar *volatile *a2)
{
  v44[0] = &v44[2];
  v44[1] = 1;
  __dst = &v42;
  v41 = 1;
  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt(&__dst, (a1 + 80));
  v4 = *(a1 + 92);
  if (v4)
  {
    WTF::VectorDestructor<true,WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>>::destruct(*(a1 + 80), (*(a1 + 80) + 8 * v4));
  }

  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt((a1 + 80), v44);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v44, v5);
  *&v6 = 0;
  v38 = *(a1 + 104);
  v39 = *(a1 + 112);
  *v44 = v6;
  *(a1 + 104) = v6;
  WTF::Vector<WTF::NativePromiseProducer<WTF::String,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v44, v7);
  if (HIDWORD(v41))
  {
    v9 = __dst;
    v10 = 8 * HIDWORD(v41);
    do
    {
      WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase::dispatch(*v9++, a1, a2);
      v10 -= 8;
    }

    while (v10);
  }

  if (HIDWORD(v39))
  {
    v11 = v38;
    v12 = v38 + 40 * HIDWORD(v39);
    do
    {
      v13 = *v11;
      *v11 = 0;
      v44[0] = v13;
      v14 = *(v11 + 24);
      *&v44[1] = *(v11 + 8);
      *&v44[3] = v14;
      if (v13)
      {
        atomic_fetch_add((v13 + 8), 1u);
      }

      v15 = 0;
      v43[0] = 0;
      v43[1] = 0;
      v43[2] = "<chained promise>";
      v43[3] = 0;
      v16 = (v13 + 48);
      v45 = (v13 + 48);
      v46 = 1;
      atomic_compare_exchange_strong_explicit((v13 + 48), &v15, 1u, memory_order_acquire, memory_order_acquire);
      if (v15)
      {
        v16 = MEMORY[0x19EB01E30]();
      }

      v17 = WTF::NativePromiseBase::logChannel(v16);
      if (*v17 && v17[16] >= 4u)
      {
        WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WTF::String,void,0u>>(v17, v43, " settling chained promise ", v13);
      }

      v19 = *(v13 + 72);
      v20 = *(a1 + 72);
      if (v19 == 255 && v20 == 255)
      {
        goto LABEL_33;
      }

      switch(v20)
      {
        case 255:
          if (*(v13 + 72) > 1u)
          {
            if (v19 == 2)
            {
              v22 = *(v13 + 56);
              *(v13 + 56) = 0;
              if (v22)
              {
                (*(*v22 + 8))(v22);
              }
            }
          }

          else if (*(v13 + 72))
          {
            mpark::detail::move_constructor<mpark::detail::traits<WebCore::RouterSourceDict,WebCore::RouterSourceEnum>,(mpark::detail::Trait)1>::~move_constructor(v13 + 56, v18);
          }

          *(v13 + 72) = -1;
          break;
        case 2:
          if (*(v13 + 72) > 1u)
          {
            if (v19 != 255)
            {
              v30 = *(a1 + 56);
              *(a1 + 56) = 0;
              v31 = *(v13 + 56);
              *(v13 + 56) = v30;
              if (v31)
              {
                (*(*v31 + 8))(v31);
              }

              break;
            }
          }

          else if (*(v13 + 72))
          {
            mpark::detail::move_constructor<mpark::detail::traits<WebCore::RouterSourceDict,WebCore::RouterSourceEnum>,(mpark::detail::Trait)1>::~move_constructor(v13 + 56, v18);
          }

          v28 = *(a1 + 56);
          *(a1 + 56) = 0;
          *(v13 + 56) = v28;
          *(v13 + 72) = 2;
          break;
        case 1:
          if (*(v13 + 72) > 1u)
          {
            if (v19 == 2)
            {
              v25 = *(v13 + 56);
              *(v13 + 56) = 0;
              if (v25)
              {
                (*(*v25 + 8))(v25);
              }
            }

LABEL_49:
            *(v13 + 56) = 0;
            *(v13 + 64) = -1;
            v26 = *(a1 + 64);
            if (v26 != 255)
            {
              if (!*(a1 + 64))
              {
                v27 = *(a1 + 56);
                *(a1 + 56) = 0;
                *(v13 + 56) = v27;
              }

              *(v13 + 64) = v26;
            }

            *(v13 + 72) = 1;
            break;
          }

          if (!*(v13 + 72))
          {
            goto LABEL_49;
          }

          LOBYTE(v47) = 0;
          v48 = -1;
          v21 = *(a1 + 64);
          if (*(a1 + 64))
          {
            if (v21 != 255)
            {
              v48 = *(a1 + 64);
            }

            LOBYTE(v49) = 0;
          }

          else
          {
            v32 = *(a1 + 56);
            *(a1 + 56) = 0;
            v48 = 0;
            v47 = 0;
            v49 = v32;
          }

          v50 = v21;
          mpark::variant<WTF::String,WTF::detail::VoidPlaceholder>::operator=(&v47, (v13 + 56));
          mpark::variant<WTF::String,WTF::detail::VoidPlaceholder>::operator=(v13 + 56, &v49);
          if (!v50)
          {
            v34 = v49;
            if (v49)
            {
              if (atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v34, v33);
              }
            }
          }

          if (!v48)
          {
            v35 = v47;
            v47 = 0;
            if (v35)
            {
              if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v35, v33);
              }
            }
          }

          break;
        default:
          if (*(v13 + 72) > 1u)
          {
            if (v19 == 2)
            {
              v29 = *(v13 + 56);
              *(v13 + 56) = 0;
              if (v29)
              {
                (*(*v29 + 8))(v29);
              }
            }
          }

          else
          {
            if (!*(v13 + 72))
            {
              break;
            }

            mpark::detail::move_constructor<mpark::detail::traits<WebCore::RouterSourceDict,WebCore::RouterSourceEnum>,(mpark::detail::Trait)1>::~move_constructor(v13 + 56, v18);
          }

          *(v13 + 72) = 0;
          break;
      }

LABEL_33:
      WTF::NativePromise<WTF::String,void,0u>::dispatchAll(v13, &v45);
      v23 = v46;
      if (v46 == 1)
      {
        v24 = v45;
        atomic_compare_exchange_strong_explicit(v45, &v23, 0, memory_order_release, memory_order_relaxed);
        if (v23 != 1)
        {
          WTF::Lock::unlockSlow(v24);
        }
      }

      if (atomic_fetch_add((v13 + 8), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, (v13 + 8));
        (*(*v13 + 16))(v13);
      }

      WTF::NativePromiseProducer<WTF::String,void,0u>::~NativePromiseProducer(v44);
      v11 += 40;
    }

    while (v11 != v12);
  }

  WTF::Vector<WTF::NativePromiseProducer<WTF::String,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v38, v8);
  return WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&__dst, v36);
}

void sub_19D95C928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, WTF *a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, atomic_uint *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, WTF::Lock *a24, char a25)
{
  if (v25)
  {
    if (atomic_fetch_add(v25 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v25 + 2);
      (*(*v25 + 16))(v25);
    }
  }

  WTF::NativePromiseProducer<WTF::String,void,0u>::~NativePromiseProducer(&a19);
  WTF::Vector<WTF::NativePromiseProducer<WTF::String,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, v27);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a12, v28);
  _Unwind_Resume(a1);
}

unsigned __int8 *WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase::dispatch(WTF::NativePromiseBase *a1, uint64_t a2, atomic_uchar *volatile *a3)
{
  v5 = a1;
  if (!*(a1 + 2) || (v6 = atomic_load((a2 + 121)), v6 == 1) && (a1 = (*(**(a1 + 2) + 24))(*(a1 + 2)), a1))
  {
    if (*(v5 + 56) == 1)
    {
      v20 = v5;
      result = WTF::NativePromiseBase::logChannel(a1);
      if (*result)
      {
        v10 = result[16] >= 4u;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        return WTF::Logger::log<char [32],WTF::NativePromise<WTF::String,void,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, 4u, "ThenCallback disconnected from ", a2, " aborting [callback:", &v20, " callSite:", (v5 + 6), "]");
      }
    }

    else
    {
      v11 = *a3;
      v12 = 1;
      atomic_compare_exchange_strong_explicit(*a3, &v12, 0, memory_order_release, memory_order_relaxed);
      if (v12 != 1)
      {
        WTF::Lock::unlockSlow(v11);
      }

      if (WTF::NativePromise<WTF::String,void,0u>::hasRunnable(a2))
      {
        WTF::NativePromise<WTF::String,void,0u>::takeResultRunnable(a2, &v19);
        (*(*v19 + 16))(&v20);
        (*(*v5 + 24))(v5, a2, &v20);
        if (!v21)
        {
          v14 = v20;
          v20 = 0;
          if (v14)
          {
            if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v14, v13);
            }
          }
        }

        v21 = -1;
        v15 = v19;
        v19 = 0;
        if (v15)
        {
          (*(*v15 + 8))(v15);
        }
      }

      else
      {
        WTF::NativePromise<WTF::String,void,0u>::takeResult(a2, &v20);
        (*(*v5 + 24))(v5, a2, &v20);
        if (!v21)
        {
          v17 = v20;
          v20 = 0;
          if (v17)
          {
            if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v17, v16);
            }
          }
        }
      }

      v18 = 0;
      result = *a3;
      atomic_compare_exchange_strong_explicit(*a3, &v18, 1u, memory_order_acquire, memory_order_acquire);
      if (v18)
      {
        return MEMORY[0x19EB01E30]();
      }
    }
  }

  else
  {
    v7 = *(v5 + 2);
    atomic_fetch_add(v5 + 2, 1u);
    atomic_fetch_add((a2 + 8), 1u);
    v8 = WTF::fastMalloc(0x18);
    *v8 = &unk_1F10EE188;
    *(v8 + 1) = v5;
    *(v8 + 2) = a2;
    v20 = v8;
    (*(*v7 + 16))(v7, &v20);
    result = v20;
    v20 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_19D95CD08(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (!a12 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  v14 = 0;
  atomic_compare_exchange_strong_explicit(*v12, &v14, 1u, memory_order_acquire, memory_order_acquire);
  if (v14)
  {
    MEMORY[0x19EB01E30]();
  }

  _Unwind_Resume(exception_object);
}

WTF *WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt(_DWORD *__dst, _DWORD *a2)
{
  v5 = (__dst + 4);
  result = *__dst;
  if (result != v5)
  {
    if (result)
    {
      *__dst = 0;
      __dst[2] = 0;
      result = WTF::fastFree(result, a2);
    }

    *__dst = v5;
  }

  v6 = a2 + 4;
  v7 = *a2;
  if (*a2 == a2 + 4)
  {
    result = memcpy(v5, v6, 8 * a2[3]);
    v8 = a2[2];
  }

  else
  {
    *a2 = v6;
    *__dst = v7;
    v8 = a2[2];
    a2[2] = 1;
  }

  __dst[2] = v8;
  v9 = a2[3];
  a2[3] = 0;
  __dst[3] = v9;
  return result;
}

unsigned int *WTF::VectorDestructor<true,WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>>::destruct(unsigned int *result, unsigned int **a2)
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
        if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result + 2);
          result = (*(*result + 8))(result);
        }
      }

      ++v3;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>>::destruct(*a1, (*a1 + 8 * v3));
  }

  v4 = *a1;
  if (a1 + 16 != *a1 && v4 != 0)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

atomic_uint **WTF::NativePromiseProducer<WTF::String,void,0u>::~NativePromiseProducer(atomic_uint **a1)
{
  WTF::NativePromiseProducer<WTF::String,void,0u>::assertIsDead(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  return a1;
}

void sub_19D95D0A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 2);
      (*(*v3 + 16))(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

atomic_uint **WTF::NativePromiseProducer<WTF::String,void,0u>::assertIsDead(atomic_uint **result)
{
  v1 = *result;
  if (*result)
  {
    atomic_fetch_add(v1 + 2, 1u);
    result = WTF::NativePromise<WTF::String,void,0u>::assertIsDead(v1);
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v1 + 2);
      v2 = *(*v1 + 16);

      return v2(v1);
    }
  }

  return result;
}

void sub_19D95D194(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    (*(*v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::NativePromise<WTF::String,void,0u>::assertIsDead(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = (result + 48);
  atomic_compare_exchange_strong_explicit((result + 48), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    result = MEMORY[0x19EB01E30](result + 48);
  }

  v4 = *(v1 + 116);
  if (v4)
  {
    v5 = *(v1 + 104);
    v6 = 40 * v4;
    do
    {
      result = WTF::NativePromiseProducer<WTF::String,void,0u>::assertIsDead(v5);
      v5 += 40;
      v6 -= 40;
    }

    while (v6);
  }

  v7 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v3);
  }

  return result;
}

void sub_19D95D294(_Unwind_Exception *exception_object)
{
  v3 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {
    WTF::Lock::unlockSlow(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WTF::NativePromiseProducer<WTF::String,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 40 * v3;
    do
    {
      v4 = WTF::NativePromiseProducer<WTF::String,void,0u>::~NativePromiseProducer(v4) + 5;
      v5 -= 40;
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

BOOL WTF::NativePromise<WTF::String,void,0u>::hasRunnable(uint64_t a1)
{
  v2 = 0;
  v3 = (a1 + 48);
  v4 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 48), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x19EB01E30](a1 + 48);
  }

  v5 = *(a1 + 72);
  atomic_compare_exchange_strong_explicit(v3, &v4, 0, memory_order_release, memory_order_relaxed);
  if (v4 != 1)
  {
    WTF::Lock::unlockSlow(v3);
  }

  return v5 == 2;
}

atomic_uchar *WTF::NativePromise<WTF::String,void,0u>::takeResultRunnable@<X0>(atomic_uchar *result@<X0>, void *a2@<X8>)
{
  v2 = result;
  v4 = 0;
  v5 = (result + 48);
  atomic_compare_exchange_strong_explicit(result + 48, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](result + 48);
  }

  if (v2[72] != 2)
  {
    mpark::throw_bad_variant_access(result);
  }

  v6 = *(v2 + 7);
  *(v2 + 7) = 0;
  *a2 = v6;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(v2 + 48, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

atomic_uchar *WTF::NativePromise<WTF::String,void,0u>::takeResult@<X0>(atomic_uchar *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = result;
  v4 = 0;
  v5 = result + 48;
  atomic_compare_exchange_strong_explicit(result + 48, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](result + 48);
  }

  if (v2[72] != 1)
  {
    mpark::throw_bad_variant_access(result);
  }

  *a2 = 0;
  a2[8] = -1;
  v6 = v2[64];
  if (v6 != 255)
  {
    if (!v2[64])
    {
      v7 = *(v2 + 7);
      *(v2 + 7) = 0;
      *a2 = v7;
    }

    a2[8] = v6;
  }

  v8 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

WTF::StringImpl *WTF::Logger::log<char [32],WTF::NativePromise<WTF::String,void,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(uint64_t a1, unsigned int a2, char *a3, uint64_t a4, const char *a5, int a6, const char *a7, WTF::Logger::LogSiteIdentifier *a8, char *a9)
{
  v63[1] = *MEMORY[0x1E69E9840];
  WTF::String::String(&v48, a3);
  WTF::LogArgument<WTF::NativePromise<WTF::String,void,0u>>::toString(a4, &v47);
  WTF::String::String(&v46, a5);
  WTF::LogArgument<void const*>::toString();
  WTF::String::String(&v44, a7);
  WTF::Logger::LogSiteIdentifier::toString(&v43, a8);
  WTF::String::String(&v42, a9);
  v41[0] = v47;
  v54 = v46;
  *buf = v48;
  v52 = v44;
  v53 = v45;
  v50 = v42;
  v51 = v43;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v41, &v54, &v53, &v52, &v51, &v50, &v49);
  if (v49)
  {
    v13 = v42;
    v42 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v12);
    }

    v14 = v43;
    v43 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v12);
    }

    v15 = v44;
    v44 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v12);
    }

    v16 = v45;
    v45 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v12);
    }

    v17 = v46;
    v46 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v12);
    }

    v18 = v47;
    v47 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v12);
    }

    v19 = v48;
    v48 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v12);
    }

    v20 = *(a1 + 32);
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (v21)
    {
      WTF::String::utf8();
      v23 = v41[0] ? v41[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v23;
      _os_log_impl(&dword_19D52D000, v20, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v21 = v41[0];
      v41[0] = 0;
      if (v21)
      {
        if (*v21 == 1)
        {
          v21 = WTF::fastFree(v21, v22);
        }

        else
        {
          --*v21;
        }
      }
    }

    if (*a1 && *(a1 + 16) >= a2)
    {
      v24 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v25 = *v24;
        if (v25)
        {
          break;
        }

        v26 = *v24;
        atomic_compare_exchange_strong_explicit(v24, &v26, v25 | 1, memory_order_acquire, memory_order_acquire);
        if (v26 == v25)
        {
          v27 = WTF::Logger::observers(v21);
          v28 = *(v27 + 12);
          if (v28)
          {
            v29 = *v27;
            v30 = *v27 + 8 * v28;
            do
            {
              v31 = *v29;
              *buf = 0;
              WTF::String::String(&buf[8], a3);
              v56 = 0;
              WTF::LogArgument<WTF::NativePromise<WTF::String,void,0u>>::toString(a4, &v57);
              v58 = 0;
              WTF::String::String(v59, a5);
              v59[2] = 0;
              WTF::LogArgument<void const*>::toString();
              v59[6] = 0;
              WTF::String::String(v60, a7);
              v60[2] = 0;
              WTF::Logger::LogSiteIdentifier::toString(&v61, a8);
              v62 = 0;
              WTF::String::String(v63, a9);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v41, buf, 7uLL);
              (*(*v31 + 16))(v31, a1, a2, v41);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v41, v32);
              for (i = 104; i != -8; i -= 16)
              {
                v34 = *&buf[i];
                *&buf[i] = 0;
                if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v34, v22);
                }
              }

              ++v29;
            }

            while (v29 != v30);
          }

          v35 = 1;
          atomic_compare_exchange_strong_explicit(v24, &v35, 0, memory_order_release, memory_order_relaxed);
          if (v35 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    result = v49;
    v49 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v22);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

void sub_19D95D948(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, WTF::StringImpl *a22, WTF::StringImpl *a23, WTF::StringImpl *a24, WTF::StringImpl *a25, WTF::StringImpl *a26, WTF::StringImpl *a27, uint64_t a28, WTF::StringImpl *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  v37 = 1;
  atomic_compare_exchange_strong_explicit(v35, &v37, 0, memory_order_release, memory_order_relaxed);
  if (v37 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
  }

  if (a29)
  {
    if (atomic_fetch_add_explicit(a29, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a29, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, unint64_t *a4@<X3>, unint64_t *a5@<X4>, unint64_t *a6@<X5>, uint64_t *a7@<X6>, void *a8@<X8>)
{
  if (*a1)
  {
    v16 = *(*a1 + 4);
  }

  else
  {
    v16 = 0;
  }

  if (*a2)
  {
    v17 = *(*a2 + 4);
  }

  else
  {
    v17 = 0;
  }

  if (*a3)
  {
    v18 = *(*a3 + 4);
  }

  else
  {
    v18 = 0;
  }

  if (*a4)
  {
    v19 = *(*a4 + 4);
  }

  else
  {
    v19 = 0;
  }

  if (*a5)
  {
    v20 = *(*a5 + 4);
  }

  else
  {
    v20 = 0;
  }

  if (*a6)
  {
    v21 = *(*a6 + 4);
  }

  else
  {
    v21 = 0;
  }

  if (*a7)
  {
    v22 = *(*a7 + 4);
  }

  else
  {
    v22 = 0;
  }

  result = WTF::checkedSum<int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int>(v16, v17, v18, v19, v20, v21, v22, v27);
  if (v27[0])
  {
    *a8 = 0;
  }

  else
  {
    v24 = *a1;
    if (!*a1 || (*(v24 + 16) & 4) != 0)
    {
      v26 = *a2;
      if ((!*a2 || (*(v26 + 16) & 4) != 0) && (!*a3 || (*(*a3 + 16) & 4) != 0) && (!*a4 || (*(*a4 + 16) & 4) != 0) && (!*a5 || (*(*a5 + 16) & 4) != 0) && (!*a6 || (*(*a6 + 16) & 4) != 0))
      {
        if (*a7)
        {
          v25 = (*(*a7 + 16) >> 2) & 1;
        }

        else
        {
          v25 = 1;
        }
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
      v26 = *a2;
    }

    return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(v28, v25, v24, v26, *a3, *a4, *a5, *a6, a8, *a7);
  }

  return result;
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, _DWORD *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v15 = result;
  v17 = a10;
  v18 = result;
  if (!a2)
  {
    if (result)
    {
      if (result <= 0x7FFFFFEF)
      {
        v30 = a5;
        result = WTF::tryFastCompactMalloc((2 * result + 20));
        v19 = v32;
        if (!v32)
        {
          goto LABEL_20;
        }

        v24 = (v32 + 5);
        *v32 = 2;
        v19[1] = v15;
        *(v19 + 1) = v19 + 5;
        v19[4] = 0;
        v31 = a3;
        v28 = a8;
        v29 = v19 + 5;
        WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v31, v24);
        if (!v31)
        {
          goto LABEL_22;
        }

        v25 = *(v31 + 4);
        if (v25 <= v15)
        {
          goto LABEL_17;
        }

        goto LABEL_21;
      }

LABEL_12:
      v19 = 0;
      goto LABEL_20;
    }

LABEL_13:
    v19 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_20;
  }

  if (!result)
  {
    goto LABEL_13;
  }

  if ((result & 0x80000000) != 0)
  {
    goto LABEL_12;
  }

  v30 = a5;
  result = WTF::tryFastCompactMalloc((result + 20));
  v19 = v32;
  if (!v32)
  {
    goto LABEL_20;
  }

  v29 = a9;
  a9 = a10;
  v17 = a7;
  a7 = a8;
  v20 = (v32 + 5);
  *v32 = 2;
  v19[1] = v15;
  *(v19 + 1) = v19 + 5;
  v19[4] = 4;
  v31 = a3;
  WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v31, v19 + 20);
  v21 = v31;
  if (!v31 || (v21 = *(v31 + 4), v21 <= v15))
  {
    v18 -= v21;
    v22 = &v20[v21];
    v32 = a4;
    WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v32, &v20[v21]);
    v23 = v32;
    if (!v32 || (v23 = v32[1], v18 >= v23))
    {
      result = WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(&v22[v23], v18 - v23, v30, a6, v17, a7, a10);
      a9 = v29;
      goto LABEL_20;
    }
  }

  do
  {
LABEL_21:
    __break(1u);
LABEL_22:
    v25 = 0;
LABEL_17:
    v26 = v18 - v25;
    v32 = a4;
    WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v32, v29 + 2 * v25);
    v27 = v32;
    if (!v32)
    {
      break;
    }

    v27 = v32[1];
  }

  while (v26 < v27);
  result = WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(v29 + 2 * v27 + 2 * v25, v26 - v27, v30, a6, a7, v28, v17);
LABEL_20:
  *a9 = v19;
  return result;
}

void sub_19D95DF3C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(char *__dst, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a3;
  result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v24, __dst);
  v14 = v24;
  if (v24 && (v14 = *(v24 + 4), a2 < v14) || (v15 = a2 - v14, v16 = &__dst[v14], v25 = a4, result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v25, v16), (v17 = v25) != 0) && (v17 = *(v25 + 4), v15 < v17) || (v18 = v15 - v17, v19 = &v16[v17], v26 = a5, result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v26, v19), (v20 = v26) != 0) && (v20 = *(v26 + 4), v18 < v20) || (v21 = v18 - v20, v22 = &v19[v20], v27 = a6, result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v27, &v19[v20]), (v23 = v27) != 0) && (v23 = *(v27 + 4), v21 < v23))
  {
    __break(1u);
  }

  else
  {
    v28 = a7;
    return WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v28, &v22[v23]);
  }

  return result;
}

uint64_t *WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(char *__dst, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = a3;
  WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v18, __dst);
  if (!v18)
  {
    goto LABEL_11;
  }

  v13 = *(v18 + 4);
  if (a2 < v13)
  {
    goto LABEL_10;
  }

  while (1)
  {
    a2 -= v13;
    v19 = a4;
    WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v19, &__dst[2 * v13]);
    if (!v19)
    {
      break;
    }

    v14 = *(v19 + 4);
    if (a2 >= v14)
    {
      goto LABEL_5;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    v13 = 0;
  }

  v14 = 0;
LABEL_5:
  a4 = a2 - v14;
  v20 = a5;
  WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v20, &__dst[2 * v14 + 2 * v13]);
  v15 = v20;
  if (v20)
  {
    v15 = *(v20 + 4);
    if (a4 < v15)
    {
      goto LABEL_10;
    }
  }

  a5 = a4 - v15;
  a4 = v15 + v14 + v13;
  v21 = a6;
  WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v21, &__dst[2 * a4]);
  v16 = v21;
  if (v21)
  {
    v16 = *(v21 + 4);
    if (a5 < v16)
    {
      goto LABEL_10;
    }
  }

  v22 = a7;
  return WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v22, &__dst[2 * a4 + 2 * v16]);
}

void *WTF::Detail::CallableWrapper<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WTF::String,void,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F10EE188;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WTF::String,void,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10EE188;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 16))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WTF::String,void,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  if (*(*a1 + 56) == 1)
  {
    v13 = *a1;
    result = WTF::NativePromiseBase::logChannel(a1);
    if (*result)
    {
      v4 = *(result + 16) >= 4u;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      return WTF::Logger::log<char [32],WTF::NativePromise<WTF::String,void,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, 4u, "ThenCallback disconnected from ", v1, " aborting [callback:", &v13, " callSite:", (v2 + 24), "]");
    }
  }

  else
  {
    hasRunnable = WTF::NativePromise<WTF::String,void,0u>::hasRunnable(*(a1 + 8));
    v7 = *a1;
    v8 = *(a1 + 8);
    if (hasRunnable)
    {
      WTF::NativePromise<WTF::String,void,0u>::takeResultRunnable(v8, &v12);
      (*(*v12 + 16))(&v13);
      (*(*v7 + 24))(v7, v8, &v13);
      if (!v14)
      {
        v10 = v13;
        v13 = 0;
        if (v10)
        {
          if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v10, v9);
          }
        }
      }

      v14 = -1;
      result = v12;
      v12 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }

    else
    {
      WTF::NativePromise<WTF::String,void,0u>::takeResult(v8, &v13);
      result = (*(*v7 + 24))(v7, v8, &v13);
      if (!v14)
      {
        result = v13;
        v13 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v11);
          }
        }
      }
    }
  }

  return result;
}

void sub_19D95E558(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (!a12 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WTF::String,void,0u>>(uint64_t a1, WTF::Logger::LogSiteIdentifier *this, const char *a3, uint64_t a4)
{
  v38[2] = *MEMORY[0x1E69E9840];
  WTF::Logger::LogSiteIdentifier::toString(&v32, this);
  WTF::String::String(&v31, a3);
  WTF::LogArgument<WTF::NativePromise<WTF::String,void,0u>>::toString(a4, &v30);
  WTF::makeString<WTF::String,WTF::String,WTF::String>(&v32, &v31, &v30, &v33);
  v8 = v30;
  v30 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  v9 = v31;
  v31 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  v10 = v32;
  v32 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v7);
  }

  v11 = *(a1 + 32);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    WTF::String::utf8();
    v14 = v29[0] ? v29[0] + 16 : 0;
    *buf = 136446210;
    v35 = v14;
    _os_log_impl(&dword_19D52D000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    v12 = v29[0];
    v29[0] = 0;
    if (v12)
    {
      if (*v12 == 1)
      {
        v12 = WTF::fastFree(v12, v13);
      }

      else
      {
        --*v12;
      }
    }
  }

  if (*a1 && *(a1 + 16) >= 4u)
  {
    v15 = MEMORY[0x1E696EBC0];
    while (1)
    {
      v16 = *v15;
      if (v16)
      {
        break;
      }

      v17 = *v15;
      atomic_compare_exchange_strong_explicit(v15, &v17, v16 | 1, memory_order_acquire, memory_order_acquire);
      if (v17 == v16)
      {
        v18 = WTF::Logger::observers(v12);
        v19 = *(v18 + 12);
        if (v19)
        {
          v20 = *v18;
          v21 = *v18 + 8 * v19;
          do
          {
            v22 = *v20;
            *buf = 0;
            WTF::Logger::LogSiteIdentifier::toString((&v35 + 4), this);
            v36 = 0;
            WTF::String::String(v37, a3);
            v37[2] = 0;
            WTF::LogArgument<WTF::NativePromise<WTF::String,void,0u>>::toString(a4, v38);
            WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v29, buf, 3uLL);
            (*(*v22 + 16))(v22, a1, 4, v29);
            WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v29, v23);
            for (i = 40; i != -8; i -= 16)
            {
              v25 = *&buf[i];
              *&buf[i] = 0;
              if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v25, v13);
              }
            }

            ++v20;
          }

          while (v20 != v21);
        }

        v26 = 1;
        atomic_compare_exchange_strong_explicit(v15, &v26, 0, memory_order_release, memory_order_relaxed);
        if (v26 != 1)
        {
          WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
        }

        break;
      }
    }
  }

  result = v33;
  v33 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v13);
    }
  }

  return result;
}

void sub_19D95E8F8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, WTF::StringImpl *a13, WTF::StringImpl *a14, uint64_t a15, WTF::StringImpl *a16, char a17)
{
  v19 = 1;
  atomic_compare_exchange_strong_explicit(v17, &v19, 0, memory_order_release, memory_order_relaxed);
  if (v19 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
  }

  if (a16)
  {
    if (atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a16, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t mpark::variant<WTF::String,WTF::detail::VoidPlaceholder>::operator=(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 8);
  v4 = a2[8];
  if (v3 == 255)
  {
    if (a2[8])
    {
      if (v4 != 255)
      {
LABEL_19:
        v6 = 1;
LABEL_20:
        *(a1 + 8) = v6;
        return a1;
      }

      return a1;
    }

LABEL_13:
    v7 = *a2;
    *a2 = 0;
    *a1 = v7;
    *(a1 + 8) = 0;
    return a1;
  }

  if (!a2[8])
  {
    if (!*(a1 + 8))
    {
      v10 = *a2;
      *a2 = 0;
      v11 = *a1;
      *a1 = v10;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, a2);
      }

      return a1;
    }

    goto LABEL_13;
  }

  if (v4 == 255)
  {
    if (!*(a1 + 8))
    {
      v5 = *a1;
      *a1 = 0;
      if (v5)
      {
        if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }
      }
    }

    v6 = -1;
    goto LABEL_20;
  }

  if (v3 != 1)
  {
    if (!*(a1 + 8))
    {
      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, a2);
        }
      }
    }

    goto LABEL_19;
  }

  return a1;
}

dispatch_queue_t ___ZN6WebKitL14udpSocketQueueEv_block_invoke()
{
  result = dispatch_queue_create("WebRTC UDP socket queue", MEMORY[0x1E69E96A8]);
  qword_1ED641C58 = result;
  return result;
}

void WTF::BlockPtr<void ()(nw_listener_state_t,NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkRTCUDPSocketCocoaConnections::NetworkRTCUDPSocketCocoaConnections(WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkRTCProvider &,webrtc::SocketAddress const&,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&,WTF::String &&,BOOL,BOOL,WebCore::RegistrableDomain const&)::$_0>(WebKit::NetworkRTCUDPSocketCocoaConnections::NetworkRTCUDPSocketCocoaConnections(WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkRTCProvider &,webrtc::SocketAddress const&,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&,WTF::String &&,BOOL,BOOL,WebCore::RegistrableDomain const&)::$_0)::{lambda(void const*)#1}::__invoke(void *a1, void *a2)
{
  v3 = a1[9];
  a1[9] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  v4 = a1[6];
  a1[6] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WebKit::NetworkRTCProvider,(WTF::DestructionThread)2>::deref((v4 + 24));
  }

  v5 = a1[5];
  a1[5] = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5);
  }

  v6 = a1[4];
  a1[4] = 0;
  if (v6)
  {
  }
}

void WTF::BlockPtr<void ()(nw_listener_state_t,NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkRTCUDPSocketCocoaConnections::NetworkRTCUDPSocketCocoaConnections(WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkRTCProvider &,webrtc::SocketAddress const&,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&,WTF::String &&,BOOL,BOOL,WebCore::RegistrableDomain const&)::$_0>(WebKit::NetworkRTCUDPSocketCocoaConnections::NetworkRTCUDPSocketCocoaConnections(WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkRTCProvider &,webrtc::SocketAddress const&,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&,WTF::String &&,BOOL,BOOL,WebCore::RegistrableDomain const&)::$_0)::{lambda(void *,nw_listener_state_t,NSObject  {objcproto11OS_nw_error}*)#1}::__invoke(uint64_t a1, int a2, NSObject *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  switch(a2)
  {
    case 4:
      v18 = qword_1ED641580;
      if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 56);
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v19;
        _os_log_impl(&dword_19D52D000, v18, OS_LOG_TYPE_DEFAULT, "NetworkRTCUDPSocketCocoaConnections cancelled listener %llu", &buf, 0xCu);
      }

      v20 = *(a1 + 32);
      *(a1 + 32) = 0;
      if (v20)
      {
      }

      break;
    case 3:
      v12 = qword_1ED641580;
      if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
      {
        if (a3)
        {
          error_code = nw_error_get_error_code(a3);
        }

        else
        {
          error_code = 0;
        }

        LODWORD(buf) = 67109120;
        DWORD1(buf) = error_code;
        _os_log_error_impl(&dword_19D52D000, v12, OS_LOG_TYPE_ERROR, "NetworkRTCUDPSocketCocoaConnections failed with error %d", &buf, 8u);
      }

      v13 = *(a1 + 48);
      atomic_fetch_add((v13 + 24), 1u);
      v14 = *(a1 + 56);
      v15 = WTF::fastMalloc(0x18);
      *v15 = &unk_1F10EDD30;
      v15[1] = v13;
      v15[2] = v14;
      *&buf = v15;
      (*(**(v13 + 152) + 48))(*(v13 + 152), &buf);
      v16 = buf;
      *&buf = 0;
      if (v16)
      {
        (*(*v16 + 8))(v16);
      }

      v17 = *(a1 + 40);
      v22 = -1;
      *&buf = a1 + 56;
      *(&buf + 1) = &v22;
      IPC::Connection::send<Messages::LibWebRTCNetwork::SignalClose>(v17, &buf, 0, 0, 0);
      break;
    case 2:
      v4 = *(a1 + 48);
      v6 = *(a1 + 64);
      v5 = *(a1 + 72);
      if (v5)
      {
        v7 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v5);
      }

      else
      {
        v7 = 0;
      }

      port = nw_listener_get_port(*(a1 + 32));
      v9 = WTF::fastMalloc(0x20);
      *v9 = &unk_1F10EDD08;
      *(v9 + 8) = v6;
      *(v9 + 16) = v7;
      *(v9 + 24) = port;
      *&buf = v9;
      (*(**(v4 + 152) + 48))(*(v4 + 152), &buf);
      v10 = buf;
      *&buf = 0;
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }

      break;
  }
}

void sub_19D95EEB8(_Unwind_Exception *exception_object, void *a2)
{
  if (v2)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkRTCUDPSocketCocoaConnections::NetworkRTCUDPSocketCocoaConnections(WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkRTCProvider &,webrtc::SocketAddress const&,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&,WTF::String &&,BOOL,BOOL,WebCore::RegistrableDomain const&)::$_0::operator()(nw_listener_state_t,NSObject  {objcproto11OS_nw_error}*)::{lambda(void)#1},void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10EDD08;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkRTCUDPSocketCocoaConnections::NetworkRTCUDPSocketCocoaConnections(WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkRTCProvider &,webrtc::SocketAddress const&,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&,WTF::String &&,BOOL,BOOL,WebCore::RegistrableDomain const&)::$_0::operator()(nw_listener_state_t,NSObject  {objcproto11OS_nw_error}*)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10EDD08;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::NetworkRTCUDPSocketCocoaConnections::NetworkRTCUDPSocketCocoaConnections(WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkRTCProvider &,webrtc::SocketAddress const&,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&,WTF::String &&,BOOL,BOOL,WebCore::RegistrableDomain const&)::$_0::operator()(nw_listener_state_t,NSObject  {objcproto11OS_nw_error}*)::{lambda(void)#1},void>::call(atomic_ullong *result)
{
  v1 = result[2];
  if (v1)
  {
    v2 = 0;
    v3 = result[1];
    atomic_compare_exchange_strong_explicit(v1, &v2, 1u, memory_order_acquire, memory_order_acquire);
    if (v2)
    {
      result = MEMORY[0x19EB01E30](v1);
    }

    if (*(v1 + 24))
    {
      ++*(v1 + 8);
    }

    else
    {
      v3 = 0;
    }

    v4 = 1;
    atomic_compare_exchange_strong_explicit(v1, &v4, 0, memory_order_release, memory_order_relaxed);
    if (v4 == 1)
    {
      if (!v3)
      {
        return result;
      }
    }

    else
    {
      result = WTF::Lock::unlockSlow(v1);
      if (!v3)
      {
        return result;
      }
    }

    webrtc::SocketAddress::SetPort((v3 + 11));
    v5 = v3[2];
    WebKit::WebRTCNetwork::SocketAddress::SocketAddress(v13, (v3 + 11));
    v7 = IPC::Encoder::operator new(0x238, v6);
    *v7 = 143;
    *(v7 + 68) = 0;
    *(v7 + 70) = 0;
    *(v7 + 69) = 0;
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
    *(v7 + 1) = 0;
    IPC::Encoder::encodeHeader(v7);
    v16 = v7;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, v3[1]);
    IPC::ArgumentCoder<WebKit::WebRTCNetwork::SocketAddress,void>::encode(v7, v13);
    IPC::Connection::sendMessageImpl(v5, &v16, 0, 0);
    v9 = v16;
    v16 = 0;
    if (v9)
    {
      IPC::Encoder::~Encoder(v9, v8);
      bmalloc::api::tzoneFree(v11, v12);
    }

    v10 = v14;
    if (v14)
    {
      v14 = 0;
      v15 = 0;
      WTF::fastFree(v10, v8);
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkRTCUDPSocketCocoaConnections,(WTF::DestructionThread)0>::deref(v3, v8);
  }

  return result;
}

void sub_19D95F0E8(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF *a11, int a12)
{
  if (a11)
  {
    WTF::fastFree(a11, a2);
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkRTCUDPSocketCocoaConnections,(WTF::DestructionThread)0>::deref(v12, a2);
  _Unwind_Resume(a1);
}

atomic_ullong *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkRTCUDPSocketCocoaConnections,(WTF::DestructionThread)0>::deref(atomic_ullong *this, void *a2)
{
  v2 = this;
  while (1)
  {
    v3 = *this;
    if ((*this & 1) == 0)
    {
      break;
    }

    v4 = *this;
    atomic_compare_exchange_strong_explicit(this, &v4, v3 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      if (v3 != 3)
      {
        return this;
      }

      WebKit::NetworkRTCUDPSocketCocoaConnections::~NetworkRTCUDPSocketCocoaConnections(this, a2);
      goto LABEL_23;
    }
  }

  v5 = 0;
  v2 = *this;
  atomic_compare_exchange_strong_explicit(*this, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    this = MEMORY[0x19EB01E30](v2);
  }

  v6 = v2[1] - 1;
  v2[1] = v6;
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v2[3];
    ++v2[2];
    v2[3] = 0;
  }

  v8 = 1;
  atomic_compare_exchange_strong_explicit(v2, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 == 1)
  {
    if (v6)
    {
      return this;
    }
  }

  else
  {
    v15 = v6;
    this = WTF::Lock::unlockSlow(v2);
    if (v15)
    {
      return this;
    }
  }

  if (v7)
  {
    WebKit::NetworkRTCUDPSocketCocoaConnections::~NetworkRTCUDPSocketCocoaConnections(v7, a2);
    this = WTF::fastFree(v9, v10);
  }

  v11 = 0;
  v12 = 1;
  atomic_compare_exchange_strong_explicit(v2, &v11, 1u, memory_order_acquire, memory_order_acquire);
  if (v11)
  {
    this = MEMORY[0x19EB01E30](v2);
  }

  v13 = v2[2] - 1;
  v2[2] = v13;
  atomic_compare_exchange_strong_explicit(v2, &v12, 0, memory_order_release, memory_order_relaxed);
  if (v12 == 1)
  {
    if (v13)
    {
      return this;
    }
  }

  else
  {
    v14 = v13;
    this = WTF::Lock::unlockSlow(v2);
    if (v14)
    {
      return this;
    }
  }

LABEL_23:

  return WTF::fastFree(v2, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkRTCUDPSocketCocoaConnections::NetworkRTCUDPSocketCocoaConnections(WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkRTCProvider &,webrtc::SocketAddress const&,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&,WTF::String &&,BOOL,BOOL,WebCore::RegistrableDomain const&)::$_0::operator()(nw_listener_state_t,NSObject  {objcproto11OS_nw_error}*)::{lambda(void)#2},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10EDD30;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::NetworkRTCProvider,(WTF::DestructionThread)2>::deref((v2 + 24));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkRTCUDPSocketCocoaConnections::NetworkRTCUDPSocketCocoaConnections(WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkRTCProvider &,webrtc::SocketAddress const&,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&,WTF::String &&,BOOL,BOOL,WebCore::RegistrableDomain const&)::$_0::operator()(nw_listener_state_t,NSObject  {objcproto11OS_nw_error}*)::{lambda(void)#2},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10EDD30;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::NetworkRTCProvider,(WTF::DestructionThread)2>::deref((v3 + 24));
  }

  return WTF::fastFree(this, a2);
}

atomic_ullong *WTF::BlockPtr<void ()(NSObject  {objcproto16OS_nw_connection}*)>::fromCallable<WebKit::NetworkRTCUDPSocketCocoaConnections::NetworkRTCUDPSocketCocoaConnections(WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkRTCProvider &,webrtc::SocketAddress const&,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&,WTF::String &&,BOOL,BOOL,WebCore::RegistrableDomain const&)::$_1>(WebKit::NetworkRTCUDPSocketCocoaConnections::NetworkRTCUDPSocketCocoaConnections(WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkRTCProvider &,webrtc::SocketAddress const&,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&,WTF::String &&,BOOL,BOOL,WebCore::RegistrableDomain const&)::$_1)::{lambda(void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkRTCUDPSocketCocoaConnections,(WTF::DestructionThread)0>::deref(result, a2);
  }

  return result;
}

void WTF::BlockPtr<void ()(NSObject  {objcproto16OS_nw_connection}*)>::fromCallable<WebKit::NetworkRTCUDPSocketCocoaConnections::NetworkRTCUDPSocketCocoaConnections(WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkRTCProvider &,webrtc::SocketAddress const&,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&,WTF::String &&,BOOL,BOOL,WebCore::RegistrableDomain const&)::$_1>(WebKit::NetworkRTCUDPSocketCocoaConnections::NetworkRTCUDPSocketCocoaConnections(WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkRTCProvider &,webrtc::SocketAddress const&,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&,WTF::String &&,BOOL,BOOL,WebCore::RegistrableDomain const&)::$_1)::{lambda(void *,NSObject  {objcproto16OS_nw_connection}*)#1}::__invoke(uint64_t a1, nw_connection_t connection)
{
  v4 = 0;
  v5 = (*(a1 + 32) + 168);
  atomic_compare_exchange_strong_explicit(v5, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](v5);
  }

  if ((*(*(a1 + 32) + 169) & 1) == 0)
  {
    v6 = nw_connection_copy_endpoint(connection);
    if (nw_endpoint_get_type(v6) == nw_endpoint_type_address)
    {
      v7 = nw_endpoint_copy_address_string(v6);
      v8 = v7;
      if (v7)
      {
        strlen(v7);
        nw_endpoint_get_port(v6);
        webrtc::SocketAddress::SocketAddress();
        free(v8);
        goto LABEL_9;
      }
    }

    else
    {
      hostname = nw_endpoint_get_hostname(v6);
      if (hostname)
      {
        strlen(hostname);
        nw_endpoint_get_port(v6);
        webrtc::SocketAddress::SocketAddress();
LABEL_9:
        if (!v6)
        {
          goto LABEL_10;
        }

        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_54:

LABEL_10:
    v10 = WTF::fastMalloc(8);
    *v10 = 1;
    WebKit::NetworkRTCUDPSocketCocoaConnections::setupNWConnection(*(a1 + 32), connection, v10, __p);
    v11 = *(a1 + 32);
    if (*(v11 + 188) == 1)
    {
      nw_connection_reset_traffic_class();
      v11 = *(a1 + 32);
    }

    if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<webrtc::SocketAddress>,false>::isEmptyValue<webrtc::SocketAddress>() || v38 == 0x80000000)
    {
      __break(0xC471u);
      JUMPOUT(0x19D95F6D8);
    }

    v12 = *(v11 + 176);
    if (v12 || (WTF::HashTable<webrtc::SocketAddress,WTF::KeyValuePair<webrtc::SocketAddress,std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<webrtc::SocketAddress,std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>>>,WTF::DefaultHash<webrtc::SocketAddress>,WTF::HashMap<webrtc::SocketAddress,std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>,WTF::DefaultHash<webrtc::SocketAddress>,WTF::HashTraits<webrtc::SocketAddress>,WTF::HashTraits<std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<webrtc::SocketAddress>,WTF::FastMalloc>::expand((v11 + 176), 0), (v12 = *(v11 + 176)) != 0))
    {
      v13 = *(v12 - 8);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13 & webrtc::SocketAddress::Hash(__p);
    v15 = v12 + 88 * v14;
    if ((WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<webrtc::SocketAddress>,false>::isEmptyValue<webrtc::SocketAddress>() & 1) == 0)
    {
      v34 = v11;
      v35 = v5;
      v17 = 0;
      v18 = 1;
      while (!WTF::DefaultHash<webrtc::SocketAddress>::equal(v15, __p))
      {
        v20 = *(v15 + 60);
        v14 = (v14 + v18) & v13;
        v16 = v12 + 88 * v14;
        v21 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<webrtc::SocketAddress>,false>::isEmptyValue<webrtc::SocketAddress>();
        if (v20 == 0x80000000)
        {
          v17 = v15;
        }

        ++v18;
        v15 = v12 + 88 * v14;
        if (v21)
        {
          v5 = v35;
          v11 = v34;
          if (v17)
          {
            webrtc::SocketAddress::SocketAddress(v17);
            *(v17 + 9) = 0;
            *(v17 + 10) = 0;
            --*(*(v34 + 176) - 16);
            v16 = v17;
          }

          goto LABEL_26;
        }
      }

      v5 = v35;
      if (connection)
      {
        v30 = connection;
      }

      v31 = *(v15 + 72);
      *(v15 + 72) = connection;
      if (v31)
      {
      }

      v32 = *(v15 + 80);
      *(v15 + 80) = v10;
      if (v32 && atomic_fetch_add(v32, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v32);
        WTF::fastFree(v32, v19);
      }

      goto LABEL_46;
    }

    v16 = v12 + 88 * v14;
LABEL_26:
    webrtc::SocketAddress::operator=();
    if (connection)
    {
      v23 = connection;
    }

    v24 = *(v16 + 72);
    *(v16 + 72) = connection;
    if (v24)
    {
    }

    v25 = *(v16 + 80);
    *(v16 + 80) = v10;
    if (v25 && atomic_fetch_add(v25, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v25);
      WTF::fastFree(v25, v22);
    }

    v26 = *(v11 + 176);
    if (v26)
    {
      v27 = *(v26 - 12) + 1;
    }

    else
    {
      v27 = 1;
    }

    *(v26 - 12) = v27;
    v28 = (*(v26 - 16) + v27);
    v29 = *(v26 - 4);
    if (v29 > 0x400)
    {
      if (v29 > 2 * v28)
      {
LABEL_46:
        if (v37 < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_48;
      }
    }

    else if (3 * v29 > 4 * v28)
    {
      goto LABEL_46;
    }

    WTF::HashTable<webrtc::SocketAddress,WTF::KeyValuePair<webrtc::SocketAddress,std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<webrtc::SocketAddress,std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>>>,WTF::DefaultHash<webrtc::SocketAddress>,WTF::HashMap<webrtc::SocketAddress,std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>,WTF::DefaultHash<webrtc::SocketAddress>,WTF::HashTraits<webrtc::SocketAddress>,WTF::HashTraits<std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<webrtc::SocketAddress>,WTF::FastMalloc>::expand((v11 + 176), v16);
    goto LABEL_46;
  }

LABEL_48:
  v33 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v33, 0, memory_order_release, memory_order_relaxed);
  if (v33 != 1)
  {
    WTF::Lock::unlockSlow(v5);
  }
}

void sub_19D95F6FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF *a12, WTF::Lock *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  v21 = 1;
  atomic_compare_exchange_strong_explicit(v19, &v21, 0, memory_order_release, memory_order_relaxed);
  if (v21 != 1)
  {
    WTF::Lock::unlockSlow(v19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::HashTable<webrtc::SocketAddress,WTF::KeyValuePair<webrtc::SocketAddress,std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<webrtc::SocketAddress,std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>>>,WTF::DefaultHash<webrtc::SocketAddress>,WTF::HashMap<webrtc::SocketAddress,std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>,WTF::DefaultHash<webrtc::SocketAddress>,WTF::HashTraits<webrtc::SocketAddress>,WTF::HashTraits<std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<webrtc::SocketAddress>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    LODWORD(v3) = *(v2 - 4);
    v4 = *(v2 - 12);
    if (v3)
    {
      v5 = v3 << (6 * v4 >= (2 * v3));
      goto LABEL_6;
    }
  }

  else
  {
    LODWORD(v3) = 0;
    v4 = 0;
  }

  v5 = 8;
LABEL_6:
  v6 = WTF::fastMalloc((88 * v5 + 16));
  v8 = v6;
  v9 = v6 + 16;
  if (v5)
  {
    v10 = v5;
    v11 = (v6 + 88);
    do
    {
      webrtc::SocketAddress::SocketAddress((v11 - 9));
      *v11 = 0;
      v11[1] = 0;
      v11 += 11;
      --v10;
    }

    while (v10);
  }

  *a1 = v9;
  v8[2] = v5 - 1;
  v8[3] = v5;
  *v8 = 0;
  v8[1] = v4;
  if (v3)
  {
    v12 = 0;
    v13 = 0;
    v3 = v3;
    v31 = v3;
    do
    {
      v14 = v2 + 88 * v12;
      if (*(v14 + 60) != 0x80000000)
      {
        if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<webrtc::SocketAddress>,false>::isEmptyValue<webrtc::SocketAddress>())
        {
          v15 = *(v14 + 80);
          *(v14 + 80) = 0;
          if (v15 && atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v15);
            WTF::fastFree(v15, v7);
          }

          v16 = *(v14 + 72);
          *(v14 + 72) = 0;
          if (v16)
          {
          }

          if (*(v14 + 23) < 0)
          {
            operator delete(*v14);
          }
        }

        else
        {
          v17 = v2;
          v18 = v13;
          v19 = *a1;
          if (*a1)
          {
            v20 = *(v19 - 8);
          }

          else
          {
            v20 = 0;
          }

          v21 = v20 & webrtc::SocketAddress::Hash(v14);
          v22 = 1;
          do
          {
            v23 = v19 + 88 * v21;
            v21 = (v21 + v22++) & v20;
          }

          while (!WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<webrtc::SocketAddress>,false>::isEmptyValue<webrtc::SocketAddress>());
          v25 = *(v23 + 80);
          *(v23 + 80) = 0;
          if (v25 && atomic_fetch_add(v25, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v25);
            WTF::fastFree(v25, v24);
          }

          v26 = *(v23 + 72);
          *(v23 + 72) = 0;
          v13 = v18;
          if (v26)
          {
          }

          v2 = v17;
          if (*(v23 + 23) < 0)
          {
            operator delete(*v23);
          }

          webrtc::SocketAddress::SocketAddress(v23, v14);
          v27 = *(v14 + 72);
          *(v14 + 72) = 0;
          *(v14 + 80) = 0;
          *(v23 + 72) = v27;
          v28 = *(v14 + 80);
          *(v14 + 80) = 0;
          v3 = v31;
          if (v28 && atomic_fetch_add(v28, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v28);
            WTF::fastFree(v28, v7);
          }

          v29 = *(v14 + 72);
          *(v14 + 72) = 0;
          if (v29)
          {
          }

          if (*(v14 + 23) < 0)
          {
            operator delete(*v14);
          }

          if (v14 == a2)
          {
            v13 = v23;
          }
        }
      }

      ++v12;
    }

    while (v12 != v3);
  }

  else
  {
    v13 = 0;
    result = 0;
    if (!v2)
    {
      return result;
    }
  }

  WTF::fastFree((v2 - 16), v7);
  return v13;
}

uint64_t WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<webrtc::SocketAddress>,false>::isEmptyValue<webrtc::SocketAddress>()
{
  webrtc::SocketAddress::SocketAddress(&__p);
  v0 = webrtc::SocketAddress::operator==();
  if (v3 < 0)
  {
    operator delete(__p);
  }

  return v0;
}

void sub_19D95FA90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::DefaultHash<webrtc::SocketAddress>::equal(webrtc::SocketAddress *a1, webrtc::SocketAddress *a2)
{
  if (webrtc::SocketAddress::operator==())
  {
    return 1;
  }

  result = webrtc::SocketAddress::IsNil(a1);
  if (result)
  {
    result = webrtc::SocketAddress::IsNil(a2);
    if (result)
    {
      return *(a1 + 15) == *(a2 + 15);
    }
  }

  return result;
}

uint64_t WTF::HashTable<webrtc::SocketAddress,WTF::KeyValuePair<webrtc::SocketAddress,std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<webrtc::SocketAddress,std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>>>,WTF::DefaultHash<webrtc::SocketAddress>,WTF::HashMap<webrtc::SocketAddress,std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>,WTF::DefaultHash<webrtc::SocketAddress>,WTF::HashTraits<webrtc::SocketAddress>,WTF::HashTraits<std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<webrtc::SocketAddress>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 80);
    do
    {
      if (*(v4 - 5) != 0x80000000)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v5);
          WTF::fastFree(v5, a2);
        }

        v6 = *(v4 - 1);
        *(v4 - 1) = 0;
        if (v6)
        {
        }

        if (*(v4 - 57) < 0)
        {
          operator delete(*(v4 - 10));
        }
      }

      v4 += 11;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

unsigned int *WTF::BlockPtr<void ()(nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkRTCUDPSocketCocoaConnections::setupNWConnection(NSObject {objcproto16OS_nw_connection}*,WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker &,webrtc::SocketAddress const&)::$_0>(WebKit::NetworkRTCUDPSocketCocoaConnections::setupNWConnection(NSObject {objcproto16OS_nw_connection}*,WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker &,webrtc::SocketAddress const&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, a2);
    }
  }

  return result;
}

void WTF::BlockPtr<void ()(nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkRTCUDPSocketCocoaConnections::setupNWConnection(NSObject {objcproto16OS_nw_connection}*,WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker &,webrtc::SocketAddress const&)::$_0>(WebKit::NetworkRTCUDPSocketCocoaConnections::setupNWConnection(NSObject {objcproto16OS_nw_connection}*,WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker &,webrtc::SocketAddress const&)::$_0)::{lambda(void *,nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)#1}::__invoke(uint64_t a1, int a2, NSObject *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2 == 4)
  {
    v5 = qword_1ED641580;
    if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
    {
      if (a3)
      {
        error_code = nw_error_get_error_code(a3);
      }

      else
      {
        error_code = 0;
      }

      v7[0] = 67109120;
      v7[1] = error_code;
      _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "NetworkRTCUDPSocketCocoaConnections connection failed with error %d", v7, 8u);
    }
  }

  else if ((a2 & 0xFFFFFFFE) != 4)
  {
    return;
  }

  *(*(a1 + 32) + 4) = 1;
}

void WTF::BlockPtr<void ()(NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)>::fromCallable<WebKit::processUDPData(WTF::RetainPtr<NSObject {objcproto16OS_nw_connection}*> &&,WTF::Ref<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections>>,int,WTF::Function<void ()(std::span<unsigned char const,18446744073709551615ul>,WebKit::WebRTCNetwork::EcnMarking)> &&)::{lambda(NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)#1}>(WebKit::processUDPData(WTF::RetainPtr<NSObject {objcproto16OS_nw_connection}*> &&,WTF::Ref<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections>>,int,WTF::Function<void ()(std::span<unsigned char const,18446744073709551615ul>,WebKit::WebRTCNetwork::EcnMarking)> &&)::{lambda(NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)#1})::{lambda(void const*)#1}::__invoke(void *a1, void *a2)
{
  v3 = a1[7];
  a1[7] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = a1[5];
  a1[5] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[4];
  a1[4] = 0;
  if (v5)
  {
  }
}

uint64_t WTF::BlockPtr<void ()(NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)>::fromCallable<WebKit::processUDPData(WTF::RetainPtr<NSObject {objcproto16OS_nw_connection}*> &&,WTF::Ref<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections>>,int,WTF::Function<void ()(std::span<unsigned char const,18446744073709551615ul>,WebKit::WebRTCNetwork::EcnMarking)> &&)::{lambda(NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)#1}>(WebKit::processUDPData(WTF::RetainPtr<NSObject {objcproto16OS_nw_connection}*> &&,WTF::Ref<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections>>,int,WTF::Function<void ()(std::span<unsigned char const,18446744073709551615ul>,WebKit::WebRTCNetwork::EcnMarking)> &&)::{lambda(NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)#1})::{lambda(void *,NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)#1}::__invoke(uint64_t result, uint64_t a2, NSObject *a3, uint64_t a4, NSObject *a5)
{
  v6 = result;
  v15 = *MEMORY[0x1E69E9840];
  context = a3;
  if (a2)
  {
    v7 = WTF::fastMalloc(0x20);
    *v7 = &unk_1F10EDDB8;
    v7[1] = v6 + 40;
    v7[2] = &context;
    v7[3] = v6 + 56;
    *buf = v7;
    dispatch_data_apply_span();
    result = *buf;
    if (*buf)
    {
      result = (*(**buf + 8))(*buf);
    }
  }

  if ((*(*(v6 + 56) + 4) & 1) == 0)
  {
    result = nw_content_context_get_is_final(context);
    if ((result & 1) == 0)
    {
      if (a5)
      {
        v8 = *(v6 + 48);
        if (v8 != nw_error_get_error_code(a5))
        {
          error_code = nw_error_get_error_code(a5);
          *(v6 + 48) = error_code;
          v10 = qword_1ED641580;
          if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = error_code;
            _os_log_error_impl(&dword_19D52D000, v10, OS_LOG_TYPE_ERROR, "NetworkRTCUDPSocketCocoaConnections failed processing UDP data with error %d", buf, 8u);
          }
        }
      }

      v11 = *(v6 + 56);
      *(v6 + 56) = 0;
      *buf = v11;
      WebKit::processUDPData(v6 + 32, buf, *(v6 + 48), v6 + 40);
      result = *buf;
      *buf = 0;
      if (result)
      {
        if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result);
          return WTF::fastFree(result, v12);
        }
      }
    }
  }

  return result;
}

void sub_19D95FF30(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF *a11)
{
  if (a11)
  {
    if (atomic_fetch_add(a11, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a11);
      WTF::fastFree(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::processUDPData(WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*> &&,WTF::Ref<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections>>,int,WTF::Function<void ()(std::span<unsigned char const,18446744073709551615ul>,WebKit::WebRTCNetwork::EcnMarking)> &&)::{lambda(NSObject {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)#1}::operator()(WTF::Function<void ()(std::span<unsigned char const,18446744073709551615ul>,WebKit::WebRTCNetwork::EcnMarking)> &&,NSObject {objcproto16OS_dispatch_data}*,BOOL,NSObject {objcproto21OS_nw_content_context}*)::{lambda(unsigned char const)#1},BOOL,unsigned char const>::call(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = **(a1 + 16);
  v7 = **(a1 + 24);
  v8 = nw_protocol_copy_ip_definition();
  v9 = nw_content_context_copy_protocol_metadata(v6, v8);
  v10 = v9;
  if (v9)
  {
    if (MEMORY[0x19EB159F0](v9))
    {
      ecn_flag = nw_ip_metadata_get_ecn_flag(v10);
      if (ecn_flag - 1 >= 3)
      {
        v12 = 0;
      }

      else
      {
        v12 = ecn_flag;
      }
    }

    else
    {
      v12 = 0;
    }

    if (v8)
    {
LABEL_13:
    }
  }

  else
  {
    if ((*(v7 + 5) & 1) == 0)
    {
      *(v7 + 5) = 1;
      v13 = qword_1ED641580;
      if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&dword_19D52D000, v13, OS_LOG_TYPE_INFO, "Could not retrieve the metadata from UDPSocket Context, so use default ECN value", v15, 2u);
      }
    }

    v12 = 0;
    if (v8)
    {
      goto LABEL_13;
    }
  }

  (*(**v5 + 16))(*v5, a2, a3, v12);
  return 1;
}

void sub_19D9600D4(_Unwind_Exception *a1)
{
  if (v1)
  {
  }

  _Unwind_Resume(a1);
}

atomic_ullong *WTF::BlockPtr<void ()(NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkRTCUDPSocketCocoaConnections::sendTo(std::span<unsigned char const,18446744073709551615ul>,webrtc::SocketAddress const&,webrtc::AsyncSocketPacketOptions const&)::$_1>(WebKit::NetworkRTCUDPSocketCocoaConnections::sendTo(std::span<unsigned char const,18446744073709551615ul>,webrtc::SocketAddress const&,webrtc::AsyncSocketPacketOptions const&)::$_1)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  webrtc::AsyncSocketPacketOptions::~AsyncSocketPacketOptions((a1 + 48));
  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  return result;
}

IPC::Encoder *WTF::BlockPtr<void ()(NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkRTCUDPSocketCocoaConnections::sendTo(std::span<unsigned char const,18446744073709551615ul>,webrtc::SocketAddress const&,webrtc::AsyncSocketPacketOptions const&)::$_1>(WebKit::NetworkRTCUDPSocketCocoaConnections::sendTo(std::span<unsigned char const,18446744073709551615ul>,webrtc::SocketAddress const&,webrtc::AsyncSocketPacketOptions const&)::$_1)::{lambda(void *,NSObject  {objcproto11OS_nw_error}*)#1}::__invoke(_BOOL8 a1, NSObject *a2)
{
  v2 = a1;
  v10[3] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v9 = qword_1ED641580;
    a1 = os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR);
    if (a1)
    {
      LODWORD(v10[0]) = 67109120;
      HIDWORD(v10[0]) = nw_error_get_error_code(a2);
      _os_log_error_impl(&dword_19D52D000, v9, OS_LOG_TYPE_ERROR, "NetworkRTCUDPSocketCocoaConnections::sendTo failed with error %d", v10, 8u);
    }
  }

  v3 = v2 + 32;
  v4 = *(v2 + 40);
  v5 = *(v2 + 56);
  v6 = webrtc::TimeMillis(a1);
  v10[0] = v3;
  v10[1] = v5;
  v10[2] = v6;
  return IPC::Connection::send<Messages::LibWebRTCNetwork::SignalSentPacket>(v4, v10);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          WTF::RefCounted<WebKit::NetworkTransportStream>::deref(v5, a2);
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t ___ZZN6WebKitL16createParametersERNS_29NetworkConnectionToWebProcessEON3WTF3URLEONS2_23ObjectIdentifierGenericINS_26WebPageProxyIdentifierTypeENS2_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEON7WebCore12ClientOriginEENK3__1cvU13block_pointerFvPU33objcproto22OS_nw_protocol_options8NSObjectEEv_block_invoke(uint64_t a1, uint64_t a2)
{
  nw_webtransport_options_set_is_unidirectional();
  nw_webtransport_options_set_is_datagram();
  WTF::String::utf8();
  if (v6)
  {
    v3 = v6 + 16;
  }

  else
  {
    v3 = 0;
  }

  (*MEMORY[0x1E69E2490])(a2, "origin", v3);
  result = v6;
  if (v6)
  {
    if (*v6 == 1)
    {
      return WTF::fastFree(v6, v4);
    }

    else
    {
      --*v6;
    }
  }

  return result;
}

void sub_19D96033C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10)
{
  if (a10)
  {
    if (*a10 == 1)
    {
      WTF::fastFree(a10, a2);
    }

    else
    {
      --*a10;
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c225_ZTSKZN6WebKitL16createParametersERNS_29NetworkConnectionToWebProcessEON3WTF3URLEONS2_23ObjectIdentifierGenericINS_26WebPageProxyIdentifierTypeENS2_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEON7WebCore12ClientOriginEE3__1(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *(result + 32) = v2;
  return result;
}

WTF::StringImpl *__destroy_helper_block_e8_32c225_ZTSKZN6WebKitL16createParametersERNS_29NetworkConnectionToWebProcessEON3WTF3URLEONS2_23ObjectIdentifierGenericINS_26WebPageProxyIdentifierTypeENS2_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEON7WebCore12ClientOriginEE3__1(uint64_t a1, WTF::StringImpl *a2)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, a2);
    }
  }

  return result;
}

void ___ZZN6WebKitL16createParametersERNS_29NetworkConnectionToWebProcessEON3WTF3URLEONS2_23ObjectIdentifierGenericINS_26WebPageProxyIdentifierTypeENS2_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEON7WebCore12ClientOriginEENK3__0cvU13block_pointerFvPU33objcproto22OS_nw_protocol_options8NSObjectEEv_block_invoke(uint64_t a1, id a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a2;
  sec_protocol_options_set_peer_authentication_required(v3, 1);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  ++*(v5 + 5);
  v24[0] = v5;
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  v24[1] = v4;
  v25 = *(a1 + 48);
  v26 = *(a1 + 64);
  v27 = *(a1 + 80);
  LOBYTE(v28) = 0;
  v30 = -1;
  v6 = *(a1 + 112);
  if (!*(a1 + 112))
  {
    v7 = *(a1 + 88);
    if (v7)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    }

    *&v28 = v7;
    v8 = *(a1 + 96);
    if (v8)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    }

    *(&v28 + 1) = v8;
    v29 = *(a1 + 104);
    v6 = *(a1 + 112);
    goto LABEL_9;
  }

  if (v6 != 255)
  {
    v28 = *(a1 + 88);
LABEL_9:
    v30 = v6;
  }

  LOBYTE(v31) = 0;
  v33 = -1;
  v9 = *(a1 + 144);
  if (!*(a1 + 144))
  {
    v10 = *(a1 + 120);
    if (v10)
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    }

    *&v31 = v10;
    v11 = *(a1 + 128);
    if (v11)
    {
      atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
    }

    *(&v31 + 1) = v11;
    v32 = *(a1 + 136);
    v9 = *(a1 + 144);
    v6 = v30;
    goto LABEL_16;
  }

  if (v9 != 255)
  {
    v31 = *(a1 + 120);
LABEL_16:
    v33 = v9;
  }

  *v34 = *v24;
  v35 = v25;
  v36 = v26;
  v37 = v27;
  LOBYTE(v38) = 0;
  v40 = -1;
  if (!v6)
  {
    v12 = v28;
    v28 = 0uLL;
    v38 = v12;
    v39 = v29;
LABEL_19:
    v40 = v6;
    goto LABEL_20;
  }

  if (v6 != 255)
  {
    v38 = v28;
    goto LABEL_19;
  }

LABEL_20:
  LOBYTE(v41) = 0;
  v43 = -1;
  if (!v9)
  {
    v13 = v31;
    v31 = 0uLL;
    v41 = v13;
    v42 = v32;
LABEL_22:
    v43 = v9;
    goto LABEL_23;
  }

  if (v9 != 255)
  {
    v41 = v31;
    goto LABEL_22;
  }

LABEL_23:
  v14 = malloc_type_malloc(0x98uLL, 0x10E204061AD993DuLL);
  *v14 = MEMORY[0x1E69E9818];
  *(v14 + 1) = 50331650;
  *(v14 + 2) = WTF::BlockPtr<void ()(NSObject  {objcproto24OS_sec_protocol_metadata}*,NSObject {objcproto12OS_sec_trust}*,void({block_pointer})(BOOL))>::fromCallable<WebKit::createParameters(WebKit::NetworkConnectionToWebProcess &,WTF::URL &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&,WebCore::ClientOrigin &&)::$_0::operator() const(NSObject {objcproto22OS_nw_protocol_options}*)::{lambda(NSObject  {objcproto24OS_sec_protocol_metadata}*,NSObject {objcproto12OS_sec_trust}*,void({block_pointer})(BOOL))#1}>(WebKit::createParameters(WebKit::NetworkConnectionToWebProcess &,WTF::URL &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&,WebCore::ClientOrigin &&)::$_0::operator() const(NSObject {objcproto22OS_nw_protocol_options}*)::{lambda(NSObject  {objcproto24OS_sec_protocol_metadata}*,NSObject {objcproto12OS_sec_trust}*,void({block_pointer})(BOOL))#1})::{lambda(void *,NSObject  {objcproto24OS_sec_protocol_metadata}*,NSObject {objcproto12OS_sec_trust}*,void({block_pointer})(BOOL))#1}::__invoke;
  *(v14 + 3) = &WTF::BlockPtr<void ()(NSObject  {objcproto24OS_sec_protocol_metadata}*,NSObject {objcproto12OS_sec_trust}*,void({block_pointer})(BOOL))>::fromCallable<WebKit::createParameters(WebKit::NetworkConnectionToWebProcess &,WTF::URL &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&,WebCore::ClientOrigin &&)::$_0::operator() const(NSObject {objcproto22OS_nw_protocol_options}*)::{lambda(NSObject  {objcproto24OS_sec_protocol_metadata}*,NSObject {objcproto12OS_sec_trust}*,void({block_pointer})(BOOL))#1}>(WebKit::createParameters(WebKit::NetworkConnectionToWebProcess &,WTF::URL &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&,WebCore::ClientOrigin &&)::$_0::operator() const(NSObject {objcproto22OS_nw_protocol_options}*)::{lambda(NSObject  {objcproto24OS_sec_protocol_metadata}*,NSObject {objcproto12OS_sec_trust}*,void({block_pointer})(BOOL))#1})::descriptor;
  v15 = v34[0];
  v34[0] = 0;
  *(v14 + 4) = v15;
  WTF::URL::URL((v14 + 40), &v34[1]);
  v16 = v37;
  v14[88] = 0;
  *(v14 + 10) = v16;
  v14[112] = -1;
  v17 = v40;
  if (!v40)
  {
    v18 = v38;
    v38 = 0uLL;
    *(v14 + 88) = v18;
    *(v14 + 26) = v39;
LABEL_25:
    v14[112] = v17;
    goto LABEL_26;
  }

  if (v40 != 255)
  {
    *(v14 + 88) = v38;
    goto LABEL_25;
  }

LABEL_26:
  v14[120] = 0;
  v14[144] = -1;
  v19 = v43;
  if (v43)
  {
    if (v43 == 255)
    {
      goto LABEL_29;
    }

    *(v14 + 120) = v41;
  }

  else
  {
    v20 = v41;
    v41 = 0uLL;
    *(v14 + 120) = v20;
    *(v14 + 34) = v42;
  }

  v14[144] = v19;
LABEL_29:
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v41);
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v38);
  v22 = v34[1];
  v34[1] = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v21);
  }

  v23 = v34[0];
  v34[0] = 0;
  if (v23)
  {
    if (*(v23 + 5) == 1)
    {
      (*(*v23 + 8))(v23);
    }

    else
    {
      --*(v23 + 5);
    }
  }

  sec_protocol_options_set_verify_block(v3, v14, MEMORY[0x1E69E96A0]);
  _Block_release(v14);
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v31);
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v28);
  if (v3)
  {
  }
}

void sub_19D9607EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _DWORD *a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, WTF::StringImpl *a26)
{
  _Block_release(v27);
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v29 + 88);
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v28 + 56);
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, v31);
  }

  if (a9)
  {
    if (a9[5] == 1)
    {
      (*(*a9 + 8))(a9);
    }

    else
    {
      --a9[5];
    }
  }

  if (v26)
  {
  }

  _Unwind_Resume(a1);
}

_BYTE *__copy_helper_block_e8_32c225_ZTSKZN6WebKitL16createParametersERNS_29NetworkConnectionToWebProcessEON3WTF3URLEONS2_23ObjectIdentifierGenericINS_26WebPageProxyIdentifierTypeENS2_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEON7WebCore12ClientOriginEE3__0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  ++*(v4 + 20);
  *(a1 + 32) = v4;
  v5 = *(a2 + 40);
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  *(a1 + 40) = v5;
  v6 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v6;
  *(a1 + 80) = *(a2 + 80);
  mpark::detail::copy_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::copy_constructor((a1 + 88), a2 + 88);
  return mpark::detail::copy_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::copy_constructor((a1 + 120), a2 + 120);
}

void sub_19D9609C0(_Unwind_Exception *a1)
{
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v1 + 88);
  v4 = *(v1 + 40);
  *(v1 + 40) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  v5 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v5)
  {
    if (v5[5] == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[5];
    }
  }

  _Unwind_Resume(a1);
}

_DWORD *__destroy_helper_block_e8_32c225_ZTSKZN6WebKitL16createParametersERNS_29NetworkConnectionToWebProcessEON3WTF3URLEONS2_23ObjectIdentifierGenericINS_26WebPageProxyIdentifierTypeENS2_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEON7WebCore12ClientOriginEE3__0(uint64_t a1)
{
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(a1 + 120);
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(a1 + 88);
  v3 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, v2);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    if (result[5] == 1)
    {
      v5 = *(*result + 8);

      return v5();
    }

    else
    {
      --result[5];
    }
  }

  return result;
}

_DWORD *WTF::BlockPtr<void ()(NSObject  {objcproto24OS_sec_protocol_metadata}*,NSObject {objcproto12OS_sec_trust}*,void({block_pointer})(BOOL))>::fromCallable<WebKit::createParameters(WebKit::NetworkConnectionToWebProcess &,WTF::URL &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&,WebCore::ClientOrigin &&)::$_0::operator() const(NSObject {objcproto22OS_nw_protocol_options}*)::{lambda(NSObject  {objcproto24OS_sec_protocol_metadata}*,NSObject {objcproto12OS_sec_trust}*,void({block_pointer})(BOOL))#1}>(WebKit::createParameters(WebKit::NetworkConnectionToWebProcess &,WTF::URL &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&,WebCore::ClientOrigin &&)::$_0::operator() const(NSObject {objcproto22OS_nw_protocol_options}*)::{lambda(NSObject  {objcproto24OS_sec_protocol_metadata}*,NSObject {objcproto12OS_sec_trust}*,void({block_pointer})(BOOL))#1})::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(a1 + 120);
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(a1 + 88);
  v3 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, v2);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    if (result[5] == 1)
    {
      v5 = *(*result + 8);

      return v5();
    }

    else
    {
      --result[5];
    }
  }

  return result;
}

void WTF::BlockPtr<void ()(NSObject  {objcproto24OS_sec_protocol_metadata}*,NSObject {objcproto12OS_sec_trust}*,void({block_pointer})(BOOL))>::fromCallable<WebKit::createParameters(WebKit::NetworkConnectionToWebProcess &,WTF::URL &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&,WebCore::ClientOrigin &&)::$_0::operator() const(NSObject {objcproto22OS_nw_protocol_options}*)::{lambda(NSObject  {objcproto24OS_sec_protocol_metadata}*,NSObject {objcproto12OS_sec_trust}*,void({block_pointer})(BOOL))#1}>(WebKit::createParameters(WebKit::NetworkConnectionToWebProcess &,WTF::URL &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&,WebCore::ClientOrigin &&)::$_0::operator() const(NSObject {objcproto22OS_nw_protocol_options}*)::{lambda(NSObject  {objcproto24OS_sec_protocol_metadata}*,NSObject {objcproto12OS_sec_trust}*,void({block_pointer})(BOOL))#1})::{lambda(void *,NSObject  {objcproto24OS_sec_protocol_metadata}*,NSObject {objcproto12OS_sec_trust}*,void({block_pointer})(BOOL))#1}::__invoke(uint64_t a1, uint64_t a2, NSObject *a3, void *a4)
{
  v66 = *MEMORY[0x1E69E9840];
  if ((WTF::URL::port((a1 + 40)) & 0x10000) == 0)
  {
    WTF::URL::protocol((a1 + 40));
    v13 = WTF::defaultPortForProtocol();
    if ((v13 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v13 = WTF::URL::port((a1 + 40));
  if ((v13 & 0x10000) == 0)
  {
    goto LABEL_48;
  }

LABEL_3:
  v15 = v13;
  v5 = sec_trust_copy_ref(a3);
  v16 = objc_alloc(MEMORY[0x1E695AC58]);
  v45 = WTF::URL::host((a1 + 40));
  LODWORD(v46) = v17;
  BYTE4(v46) = v18;
  WTF::StringView::createNSString(v57, &v45);
  v4 = [v16 initWithHost:v57[0] port:v15 protocol:*MEMORY[0x1E695ABA0] realm:0 authenticationMethod:*MEMORY[0x1E695AB80]];
  v19 = v57[0];
  v57[0] = 0;
  if (v19)
  {
  }

  [v4 _setServerTrust:v5];
  a3 = [objc_alloc(MEMORY[0x1E695AC30]) initWithProtectionSpace:v4 proposedCredential:0 previousFailureCount:0 failureResponse:0 error:0 sender:0];
  a4 = _Block_copy(a4);
  v20 = *(a1 + 32);
  v21 = *(v20 + 88);
  v45 = *(v20 + 96);
  v22 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v21 + 240), &v45);
  if (v22 && *(v22 + 1219) == 1)
  {
    v6 = *(a1 + 32);
    *(a1 + 32) = 0;
    v7 = *(a1 + 80);
    v57[1] = v7;
    v14 = v57;
    LOBYTE(v58) = 0;
    v60 = -1;
    v9 = *(a1 + 112);
    if (!*(a1 + 112))
    {
      v23 = *(a1 + 88);
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
      v58 = v23;
      v59 = *(a1 + 104);
      goto LABEL_9;
    }

LABEL_49:
    if (v9 == 255)
    {
LABEL_10:
      LOBYTE(v61) = 0;
      v63 = -1;
      v24 = *(a1 + 144);
      if (*(a1 + 144))
      {
        if (v24 == 255)
        {
LABEL_13:
          v57[0] = 0;
          v45 = v6;
          v46 = v7;
          LOBYTE(v47) = 0;
          v49 = -1;
          if (v9)
          {
            if (v9 == 255)
            {
LABEL_16:
              LOBYTE(v50) = 0;
              v52 = -1;
              v43 = a3;
              if (v24)
              {
                if (v24 == 255)
                {
LABEL_19:
                  v53 = a4;
                  v64 = 0;
                  v65 = 0;
                  v28 = malloc_type_malloc(0x80uLL, 0x10E204046C1EB83uLL);
                  v29 = v28;
                  *v28 = MEMORY[0x1E69E9818];
                  v28[1] = 50331650;
                  v28[2] = WTF::BlockPtr<void ()(NSURLAuthenticationChallenge *,int)>::fromCallable<WebKit::didReceiveServerTrustChallenge(WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>> &&,WTF::URL &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&,WebCore::ClientOrigin &&,NSObject  {objcproto12OS_sec_trust}*,void({block_pointer})(BOOL))::$_1>(WebKit::didReceiveServerTrustChallenge(WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>> &&,WTF::URL &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&,WebCore::ClientOrigin &&,NSObject  {objcproto12OS_sec_trust}*,void({block_pointer})(BOOL))::$_1)::{lambda(void *,NSURLAuthenticationChallenge *,int)#1}::__invoke;
                  v28[3] = &WTF::BlockPtr<void ()(NSURLAuthenticationChallenge *,int)>::fromCallable<WebKit::didReceiveServerTrustChallenge(WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>> &&,WTF::URL &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&,WebCore::ClientOrigin &&,NSObject  {objcproto12OS_sec_trust}*,void({block_pointer})(BOOL))::$_1>(WebKit::didReceiveServerTrustChallenge(WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>> &&,WTF::URL &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&,WebCore::ClientOrigin &&,NSObject  {objcproto12OS_sec_trust}*,void({block_pointer})(BOOL))::$_1)::descriptor;
                  v45 = 0;
                  v28[4] = v6;
                  v28[5] = v7;
                  *(v28 + 48) = 0;
                  *(v28 + 72) = -1;
                  if (v9)
                  {
                    if (v9 == 255)
                    {
LABEL_22:
                      *(v28 + 80) = 0;
                      *(v28 + 104) = -1;
                      if (v24)
                      {
                        a3 = v43;
                        if (v24 == 255)
                        {
                          goto LABEL_25;
                        }

                        *(v28 + 5) = v50;
                      }

                      else
                      {
                        v31 = v50;
                        v50 = 0uLL;
                        *(v28 + 5) = v31;
                        *(v28 + 24) = a3;
                        a3 = v43;
                      }

                      *(v28 + 104) = v24;
LABEL_25:
                      v28[14] = a4;
                      v28[15] = v5;
                      v53 = 0;
                      v54 = 0;
                      _Block_release(0);
                      mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v50);
                      mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v47);
                      v32 = v45;
                      v45 = 0;
                      if (v32)
                      {
                        if (v32[5] == 1)
                        {
                          (*(*v32 + 8))(v32);
                        }

                        else
                        {
                          --v32[5];
                        }
                      }

                      v33 = v65;
                      v65 = 0;
                      if (v33)
                      {
                        CFRelease(v33);
                      }

                      _Block_release(v64);
                      mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v61);
                      mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v58);
                      v34 = v57[0];
                      v57[0] = 0;
                      if (v34)
                      {
                        if (v34[5] == 1)
                        {
                          (*(*v34 + 8))(v34);
                        }

                        else
                        {
                          --v34[5];
                        }
                      }

                      [MEMORY[0x1E695AC78] _strictTrustEvaluate:a3 queue:objc_msgSend(objc_msgSend(MEMORY[0x1E696ADC8] completionHandler:{"mainQueue"), "underlyingQueue"), v29}];
                      _Block_release(v29);
                      goto LABEL_42;
                    }

                    *(v28 + 3) = v47;
                  }

                  else
                  {
                    v30 = v47;
                    v47 = 0uLL;
                    *(v28 + 3) = v30;
                    *(v28 + 16) = v8;
                  }

                  *(v28 + 72) = v9;
                  goto LABEL_22;
                }

                v50 = v61;
              }

              else
              {
                v27 = v61;
                v61 = 0uLL;
                v50 = v27;
                LODWORD(a3) = v62;
                v51 = v62;
              }

              v52 = v24;
              goto LABEL_19;
            }

            v47 = *(v14 + 1);
          }

          else
          {
            v26 = v58;
            v58 = 0uLL;
            v47 = v26;
            v8 = v59;
            v48 = v59;
          }

          v49 = v9;
          goto LABEL_16;
        }

        v61 = *(a1 + 120);
      }

      else
      {
        v25 = *(a1 + 120);
        *(a1 + 120) = 0;
        *(a1 + 128) = 0;
        v61 = v25;
        v62 = *(a1 + 136);
      }

      v63 = v24;
      goto LABEL_13;
    }

    *(v14 + 1) = *(a1 + 88);
LABEL_9:
    v60 = v9;
    goto LABEL_10;
  }

  WebKit::NetworkProcess::protectedAuthenticationManager(*(*(a1 + 32) + 88), v57);
  v35 = v57[0];
  v36 = *(*(a1 + 32) + 96);
  v37 = *(a1 + 80);
  MEMORY[0x19EB0B400](&v45, a3);
  v38 = WTF::fastMalloc(0x18);
  *v38 = &unk_1F10EDEC0;
  v38[1] = a4;
  v38[2] = v5;
  v44 = v38;
  WebKit::AuthenticationManager::didReceiveAuthenticationChallenge(v35, v36, v37, 1, (a1 + 88), &v45, 0, &v44);
  v40 = v44;
  v44 = 0;
  if (v40)
  {
    (*(*v40 + 8))(v40);
  }

  v41 = v56;
  v56 = 0;
  if (v41)
  {
  }

  v42 = v55;
  v55 = 0;
  if (v42)
  {
  }

  WebCore::AuthenticationChallengeBase::~AuthenticationChallengeBase(&v45, v39);
  if (v35)
  {
    WebKit::AuthenticationManager::deref(v35);
  }

LABEL_42:
  _Block_release(0);
  if (a3)
  {
  }

  if (v4)
  {
  }
}

void sub_19D96115C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, _DWORD *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  a23 = 0;
  if (v24)
  {
    CFRelease(v24);
  }

  _Block_release(v25);
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&a18);
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&a14);
  if (a12)
  {
    if (a12[5] == 1)
    {
      (*(*a12 + 8))(a12);
    }

    else
    {
      --a12[5];
    }
  }

  v28 = *(v26 - 104);
  *(v26 - 104) = 0;
  if (v28)
  {
    CFRelease(v28);
  }

  _Block_release(*(v26 - 112));
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v26 - 144);
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v26 - 176);
  v29 = *(v26 - 192);
  *(v26 - 192) = 0;
  if (v29)
  {
    if (v29[5] == 1)
    {
      (*(*v29 + 8))(v29);
    }

    else
    {
      --v29[5];
    }
  }

  _Block_release(0);
  if (a10)
  {
  }

  if (v23)
  {
  }

  _Unwind_Resume(a1);
}

_DWORD *WTF::BlockPtr<void ()(NSURLAuthenticationChallenge *,int)>::fromCallable<WebKit::didReceiveServerTrustChallenge(WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>> &&,WTF::URL &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&,WebCore::ClientOrigin &&,NSObject  {objcproto12OS_sec_trust}*,void({block_pointer})(BOOL))::$_1>(WebKit::didReceiveServerTrustChallenge(WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>> &&,WTF::URL &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&,WebCore::ClientOrigin &&,NSObject  {objcproto12OS_sec_trust}*,void({block_pointer})(BOOL))::$_1)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  _Block_release(*(a1 + 112));
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(a1 + 80);
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(a1 + 48);
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    if (result[5] == 1)
    {
      v4 = *(*result + 8);

      return v4();
    }

    else
    {
      --result[5];
    }
  }

  return result;
}

void WTF::BlockPtr<void ()(NSURLAuthenticationChallenge *,int)>::fromCallable<WebKit::didReceiveServerTrustChallenge(WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>> &&,WTF::URL &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&,WebCore::ClientOrigin &&,NSObject  {objcproto12OS_sec_trust}*,void({block_pointer})(BOOL))::$_1>(WebKit::didReceiveServerTrustChallenge(WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>> &&,WTF::URL &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&,WebCore::ClientOrigin &&,NSObject  {objcproto12OS_sec_trust}*,void({block_pointer})(BOOL))::$_1)::{lambda(void *,NSURLAuthenticationChallenge *,int)#1}::__invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    WebKit::NetworkProcess::protectedAuthenticationManager(*(*(a1 + 32) + 88), &v24);
    v5 = v24;
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 32) + 96);
    MEMORY[0x19EB0B400](&v19, a2);
    v8 = WTF::fastMalloc(0x18);
    *v8 = &unk_1F10EDEC0;
    v9 = *(a1 + 112);
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(v8 + 8) = v9;
    v18 = v8;
    WebKit::AuthenticationManager::didReceiveAuthenticationChallenge(v5, v7, v6, 1, (a1 + 48), &v19, 0, &v18);
    v11 = v18;
    v18 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = v23;
    v23 = 0;
    if (v12)
    {
    }

    v13 = v22;
    v22 = 0;
    if (v13)
    {
    }

    WebCore::AuthenticationChallengeBase::~AuthenticationChallengeBase(&v19, v10);
    if (v5)
    {
      WebKit::AuthenticationManager::deref(v5);
    }
  }

  else
  {
    WebCore::CredentialBase::CredentialBase(&v19);
    v21 = 0;
    WebKit::didReceiveServerTrustChallenge(WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>> &&,WTF::URL &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&,WebCore::ClientOrigin &&,NSObject  {objcproto12OS_sec_trust}*,void({block_pointer})(BOOL))::$_0::operator()(a1 + 112, 1, &v19);
    v15 = v21;
    v21 = 0;
    if (v15)
    {
    }

    v16 = v20;
    v20 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v14);
    }

    v17 = v19;
    v19 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v14);
    }
  }
}

void sub_19D9615B4(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12, uint64_t a13, void *a14)
{
  if (a14)
  {
  }

  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(a1);
}

void WebKit::didReceiveServerTrustChallenge(WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>> &&,WTF::URL &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&,WebCore::ClientOrigin &&,NSObject  {objcproto12OS_sec_trust}*,void({block_pointer})(BOOL))::$_0::operator()(uint64_t a1, int a2, WebCore::Credential *this)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      if (!WebCore::Credential::isEmpty(this))
      {
        goto LABEL_8;
      }

LABEL_7:
      v4 = *(a1 + 8);
      v5 = _Block_copy(*a1);
      v6 = malloc_type_malloc(0x28uLL, 0x10E0040799C3B1DuLL);
      *v6 = MEMORY[0x1E69E9818];
      v6[1] = 50331650;
      v6[2] = WTF::BlockPtr<void ()(__SecTrust *,BOOL,__CFError *)>::fromCallable<WebKit::didReceiveServerTrustChallenge(WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>> &&,WTF::URL &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&,WebCore::ClientOrigin &&,NSObject  {objcproto12OS_sec_trust}*,void({block_pointer})(BOOL))::$_0::operator() const(WebKit::AuthenticationChallengeDisposition,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>::Credential const&)::{lambda(__SecTrust *,BOOL,__CFError *)#1}>(WebKit::didReceiveServerTrustChallenge(WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>> &&,WTF::URL &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&,WebCore::ClientOrigin &&,NSObject  {objcproto12OS_sec_trust}*,void({block_pointer})(BOOL))::$_0::operator() const(WebKit::AuthenticationChallengeDisposition,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>::Credential const&)::{lambda(__SecTrust *,BOOL,__CFError *)#1})::{lambda(void *,__SecTrust *,BOOL,__CFError *)#1}::__invoke;
      v6[3] = &WTF::BlockPtr<void ()(__SecTrust *,BOOL,__CFError *)>::fromCallable<WebKit::didReceiveServerTrustChallenge(WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>> &&,WTF::URL &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&,WebCore::ClientOrigin &&,NSObject  {objcproto12OS_sec_trust}*,void({block_pointer})(BOOL))::$_0::operator() const(WebKit::AuthenticationChallengeDisposition,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>::Credential const&)::{lambda(__SecTrust *,BOOL,__CFError *)#1}>(WebKit::didReceiveServerTrustChallenge(WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>> &&,WTF::URL &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&,WebCore::ClientOrigin &&,NSObject  {objcproto12OS_sec_trust}*,void({block_pointer})(BOOL))::$_0::operator() const(WebKit::AuthenticationChallengeDisposition,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>::Credential const&)::{lambda(__SecTrust *,BOOL,__CFError *)#1})::descriptor;
      v6[4] = v5;
      _Block_release(0);
      LODWORD(v4) = SecTrustEvaluateAsyncWithError(v4, MEMORY[0x1E69E96A0], v6);
      _Block_release(v6);
      _Block_release(0);
      if (!v4)
      {
        return;
      }

      goto LABEL_8;
    }

    if (a2 == 1)
    {
      goto LABEL_7;
    }

LABEL_12:
    __break(0xC471u);
    JUMPOUT(0x19D9617CCLL);
  }

  if (a2 != 2)
  {
    if (a2 == 3)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

LABEL_8:
  v7 = *(*a1 + 16);

  v7();
}

void sub_19D9617E0(_Unwind_Exception *a1)
{
  _Block_release(v1);
  _Block_release(0);
  _Unwind_Resume(a1);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::didReceiveServerTrustChallenge(WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>> &&,WTF::URL &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&,WebCore::ClientOrigin &&,NSObject  {objcproto12OS_sec_trust}*,void({block_pointer})(BOOL))::$_0,void,WebKit::AuthenticationChallengeDisposition,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>::Credential const&>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F10EDEC0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  _Block_release(*(a1 + 8));
  return a1;
}

{
  *a1 = &unk_1F10EDEC0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  _Block_release(*(a1 + 8));

  return WTF::fastFree(a1, v3);
}

void ___ZZN6WebKitL16createParametersERNS_29NetworkConnectionToWebProcessEON3WTF3URLEONS2_23ObjectIdentifierGenericINS_26WebPageProxyIdentifierTypeENS2_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEON7WebCore12ClientOriginEENK3__2cvU13block_pointerFvPU33objcproto22OS_nw_protocol_options8NSObjectEEv_block_invoke(int a1, nw_protocol_options_t options)
{
  nw_quic_set_initial_max_streams_bidirectional(options, 0xFFFFFFFFuLL);
  nw_quic_set_initial_max_streams_unidirectional(options, 0xFFFFFFFFuLL);

  nw_quic_set_max_datagram_frame_size(options, 0xFFFFu);
}

_DWORD *WTF::BlockPtr<void ()(nw_connection_group_state_t,NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkTransportSession::initialize(WebKit::NetworkConnectionToWebProcess &,WTF::URL &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&,WebCore::ClientOrigin &&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>> &&)> &&)::$_0>(WebKit::NetworkTransportSession::initialize(WebKit::NetworkConnectionToWebProcess &,WTF::URL &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&,WebCore::ClientOrigin &&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>> &&)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    if (result[4] == 1)
    {
      v4 = *(*result + 24);

      return v4();
    }

    else
    {
      --result[4];
    }
  }

  return result;
}

void WTF::BlockPtr<void ()(nw_connection_group_state_t,NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkTransportSession::initialize(WebKit::NetworkConnectionToWebProcess &,WTF::URL &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&,WebCore::ClientOrigin &&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>> &&)> &&)::$_0>(WebKit::NetworkTransportSession::initialize(WebKit::NetworkConnectionToWebProcess &,WTF::URL &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&,WebCore::ClientOrigin &&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>> &&)> &&)::$_0)::{lambda(void *,nw_connection_group_state_t,NSObject  {objcproto11OS_nw_error}*)#1}::__invoke(uint64_t a1, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      if (*(a1 + 40))
      {
        WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>> &&)>::operator()((a1 + 40));
      }

      return;
    }

    if (a2 == 4)
    {
      return;
    }

LABEL_15:
    __break(0xC471u);
    JUMPOUT(0x19D961B78);
  }

  if (a2 < 2)
  {
    return;
  }

  if (a2 != 2)
  {
    goto LABEL_15;
  }

  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  v4 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    if (!v4)
    {
      WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>> &&)>::operator()(v3);
      return;
    }

    options = nw_webtransport_create_options();
    if (options)
    {
      nw_webtransport_options_set_is_unidirectional();
      nw_webtransport_options_set_is_datagram();
      connection = nw_connection_group_extract_connection(*(v4 + 56), 0, options);
      v7 = *(v4 + 72);
      *(v4 + 72) = connection;
      if (v7)
      {

        connection = *(v4 + 72);
      }

      if (connection)
      {
        v8 = *v3;
        *v3 = 0;
        ++*(v4 + 16);
        v9 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
        *v9 = MEMORY[0x1E69E9818];
        v9[1] = 50331650;
        v9[2] = WTF::BlockPtr<void ()(nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkTransportSession::setupDatagramConnection(WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>> &&)> &&)::$_0>(WebKit::NetworkTransportSession::setupDatagramConnection(WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>> &&)> &&)::$_0)::{lambda(void *,nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)#1}::__invoke;
        v9[3] = &WTF::BlockPtr<void ()(nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkTransportSession::setupDatagramConnection(WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>> &&)> &&)::$_0>(WebKit::NetworkTransportSession::setupDatagramConnection(WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>> &&)> &&)::$_0)::descriptor;
        v9[4] = v4;
        v9[5] = v8;
        nw_connection_set_state_changed_handler(connection, v9);
        _Block_release(v9);
        nw_connection_set_queue(*(v4 + 72), MEMORY[0x1E69E96A0]);
        nw_connection_start(*(v4 + 72));
      }

      else
      {
        WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>> &&)>::operator()(v3);
      }
    }

    else
    {
      WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>> &&)>::operator()(v3);
    }
  }

  else if (!v4)
  {
    return;
  }

  if (*(v4 + 16) == 1)
  {
    v10 = *(*v4 + 24);

    v10(v4);
  }

  else
  {
    --*(v4 + 16);
  }
}

void sub_19D961D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    if (a10[4] == 1)
    {
      (*(*a10 + 24))(a10);
    }

    else
    {
      --a10[4];
    }
  }

  if (v10[4] == 1)
  {
    (*(*v10 + 24))(v10);
  }

  else
  {
    --v10[4];
  }

  _Unwind_Resume(a1);
}

_DWORD *WTF::BlockPtr<void ()(nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkTransportSession::setupDatagramConnection(WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>> &&)> &&)::$_0>(WebKit::NetworkTransportSession::setupDatagramConnection(WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>> &&)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    if (result[4] == 1)
    {
      v4 = *(*result + 24);

      return v4();
    }

    else
    {
      --result[4];
    }
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkTransportSession::setupDatagramConnection(WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>> &&)> &&)::$_0>(WebKit::NetworkTransportSession::setupDatagramConnection(WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>> &&)> &&)::$_0)::{lambda(void *,nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)#1}::__invoke(uint64_t a1, int a2)
{
  result = *(a1 + 32);
  if (!result)
  {
    v5 = *(a1 + 40);
    v4 = (a1 + 40);
    if (!v5)
    {
      return result;
    }

    WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>> &&)>::operator()(v4);
    return 0;
  }

  if (a2 > 2)
  {
    if (a2 == 5)
    {
      *(a1 + 32) = 0;
      v8 = *(result + 16) - 1;
      if (*(result + 16) == 1)
      {
        v9 = *(*result + 24);

        return v9();
      }

LABEL_22:
      *(result + 16) = v8;
      return result;
    }

    if (a2 == 4)
    {
      v7 = *(a1 + 40);
      v6 = (a1 + 40);
      v8 = *(result + 16);
      *(result + 16) = v8 + 1;
      v11 = result;
      if (!v7)
      {
        goto LABEL_21;
      }

      WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>> &&)>::operator()(v6);
      result = v11;
      goto LABEL_20;
    }

    if (a2 != 3)
    {
LABEL_27:
      result = 268;
      __break(0xC471u);
      return result;
    }

    WebKit::NetworkTransportSession::receiveDatagramLoop(result);
    result = *(a1 + 32);
    if (result)
    {
      v8 = *(result + 16);
      *(result + 16) = v8 + 1;
      v10 = result;
      if (!*(a1 + 40))
      {
        goto LABEL_21;
      }

      WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>> &&)>::operator()((a1 + 40));
      result = v10;
LABEL_20:
      v8 = *(result + 16) - 1;
LABEL_21:
      if (!v8)
      {
        return (*(*result + 24))(result);
      }

      goto LABEL_22;
    }

    if (!*(a1 + 40))
    {
      return result;
    }

    WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>> &&)>::operator()((a1 + 40));
    return 0;
  }

  if (a2 >= 3)
  {
    goto LABEL_27;
  }

  return result;
}

void sub_19D96212C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    if (a10[4] == 1)
    {
      (*(*a10 + 24))(a10);
    }

    else
    {
      --a10[4];
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::BlockPtr<void ()(NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkTransportSession::sendDatagram(std::span<unsigned char const,18446744073709551615ul>,WTF::CompletionHandler<void ()(std::optional<WebCore::Exception> &&)> &&)::$_0>(WebKit::NetworkTransportSession::sendDatagram(std::span<unsigned char const,18446744073709551615ul>,WTF::CompletionHandler<void ()(std::optional<WebCore::Exception> &&)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkTransportSession::sendDatagram(std::span<unsigned char const,18446744073709551615ul>,WTF::CompletionHandler<void ()(std::optional<WebCore::Exception> &&)> &&)::$_0>(WebKit::NetworkTransportSession::sendDatagram(std::span<unsigned char const,18446744073709551615ul>,WTF::CompletionHandler<void ()(std::optional<WebCore::Exception> &&)> &&)::$_0)::{lambda(void *,NSObject  {objcproto11OS_nw_error}*)#1}::__invoke(uint64_t a1, nw_error_t error)
{
  if (error)
  {
    if (nw_error_get_error_domain(error) == nw_error_domain_posix && nw_error_get_error_code(error) == 89)
    {
      v7 = 0;
      result = WTF::CompletionHandler<void ()(std::optional<WebCore::Exception> &&)>::operator()((a1 + 32));
    }

    else
    {
      v6 = 0;
      v7 = 1;
      result = WTF::CompletionHandler<void ()(std::optional<WebCore::Exception> &&)>::operator()((a1 + 32));
    }
  }

  else
  {
    v7 = 0;
    result = WTF::CompletionHandler<void ()(std::optional<WebCore::Exception> &&)>::operator()((a1 + 32));
  }

  if (v7 == 1)
  {
    result = v6;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(v6, v5);
      }
    }
  }

  return result;
}

void sub_19D96229C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (a12 == 1 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(std::optional<WebCore::Exception> &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

unsigned int *WTF::BlockPtr<void ()(NSObject  {objcproto16OS_nw_connection}*)>::fromCallable<WebKit::NetworkTransportSession::setupConnectionHandler(void)::$_0>(WebKit::NetworkTransportSession::setupConnectionHandler(void)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, a2);
    }
  }

  return result;
}

void WTF::BlockPtr<void ()(NSObject  {objcproto16OS_nw_connection}*)>::fromCallable<WebKit::NetworkTransportSession::setupConnectionHandler(void)::$_0>(WebKit::NetworkTransportSession::setupConnectionHandler(void)::$_0)::{lambda(void *,NSObject  {objcproto16OS_nw_connection}*)#1}::__invoke(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      ++v3[4];
      WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v3 + 2, v3);
      v5 = *(v3 + 1);
      atomic_fetch_add(v5, 1u);
      if (a2)
      {
        v6 = a2;
      }

      v7 = malloc_type_malloc(0x30uLL, 0x10E0040331879E5uLL);
      *v7 = MEMORY[0x1E69E9818];
      v7[1] = 50331650;
      v7[2] = WTF::BlockPtr<void ()(nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkTransportSession::setupConnectionHandler(void)::$_0::operator()(NSObject {objcproto16OS_nw_connection}*)::{lambda(nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)#1}>(WebKit::NetworkTransportSession::setupConnectionHandler(void)::$_0::operator()(NSObject {objcproto16OS_nw_connection}*)::{lambda(nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)#1})::{lambda(void *,nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)#1}::__invoke;
      v7[3] = &WTF::BlockPtr<void ()(nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkTransportSession::setupConnectionHandler(void)::$_0::operator()(NSObject {objcproto16OS_nw_connection}*)::{lambda(nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)#1}>(WebKit::NetworkTransportSession::setupConnectionHandler(void)::$_0::operator()(NSObject {objcproto16OS_nw_connection}*)::{lambda(nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)#1})::descriptor;
      v7[4] = v5;
      v7[5] = a2;
      nw_connection_set_state_changed_handler(a2, v7);
      _Block_release(v7);
      nw_connection_set_queue(a2, MEMORY[0x1E69E96A0]);
      nw_connection_start(a2);
      if (v3[4] == 1)
      {
        v8 = *(*v3 + 24);

        v8(v3);
      }

      else
      {
        --v3[4];
      }
    }
  }
}

void sub_19D962500(_Unwind_Exception *exception_object, void *a2)
{
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  if (v2[4] == 1)
  {
    (*(*v2 + 24))(v2);
  }

  else
  {
    --v2[4];
  }

  _Unwind_Resume(exception_object);
}

unsigned int *WTF::BlockPtr<void ()(nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkTransportSession::setupConnectionHandler(void)::$_0::operator()(NSObject {objcproto16OS_nw_connection}*)::{lambda(nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)#1}>(WebKit::NetworkTransportSession::setupConnectionHandler(void)::$_0::operator()(NSObject {objcproto16OS_nw_connection}*)::{lambda(nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)#1})::{lambda(void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v3)
  {
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);

    return WTF::fastFree(result, a2);
  }

  return result;
}

void WTF::BlockPtr<void ()(nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkTransportSession::setupConnectionHandler(void)::$_0::operator()(NSObject {objcproto16OS_nw_connection}*)::{lambda(nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)#1}>(WebKit::NetworkTransportSession::setupConnectionHandler(void)::$_0::operator()(NSObject {objcproto16OS_nw_connection}*)::{lambda(nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)#1})::{lambda(void *,nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)#1}::__invoke(uint64_t a1, unsigned int a2)
{
  connection = *(a1 + 40);
  if (!connection)
  {
    return;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      ++*(v4 + 16);
      if (a2 < 3)
      {
        goto LABEL_8;
      }

      if (a2 - 4 > 1)
      {
        v6 = nw_protocol_copy_webtransport_definition();
        v5 = nw_connection_copy_protocol_metadata(connection, v6);
        if (v6)
        {
        }

        if (nw_webtransport_metadata_get_is_unidirectional())
        {
          v7 = *(a1 + 40);
          *(a1 + 40) = 0;
          v15[0] = v7;
          LOBYTE(v16) = 2;
          WebKit::NetworkTransportStream::create<WebKit::NetworkTransportSession &,NSObject  {objcproto16OS_nw_connection}*,WebKit::NetworkTransportStreamType>(&v17, v4, v15, &v16);
          if (v7)
          {
          }

          v8 = v17;
          v16 = *(v17 + 2);
          v9 = v16;
          WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>&>(v15, (v4 + 40), &v16, &v17);
          WebKit::NetworkTransportSession::receiveIncomingUnidirectionalStream(v4, v9);
        }

        else
        {
          v11 = *(a1 + 40);
          *(a1 + 40) = 0;
          v15[0] = v11;
          LOBYTE(v16) = 0;
          WebKit::NetworkTransportStream::create<WebKit::NetworkTransportSession &,NSObject  {objcproto16OS_nw_connection}*,WebKit::NetworkTransportStreamType>(&v17, v4, v15, &v16);
          if (v11)
          {
          }

          v8 = v17;
          v16 = *(v17 + 2);
          v12 = v16;
          WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>&>(v15, (v4 + 40), &v16, &v17);
          WebKit::NetworkTransportSession::receiveBidirectionalStream(v4, v12);
        }

        WTF::RefCounted<WebKit::NetworkTransportStream>::deref(v8, v10);
        if (!v5)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v5 = *(a1 + 40);
        *(a1 + 40) = 0;
        if (!v5)
        {
          goto LABEL_8;
        }
      }

LABEL_8:
      if (*(v4 + 16) == 1)
      {
        v13 = *(*v4 + 24);

        v13(v4);
      }

      else
      {
        --*(v4 + 16);
      }

      return;
    }
  }

  *(a1 + 40) = 0;
}

void sub_19D9627F8(_Unwind_Exception *a1, void *a2)
{
  v5 = v4;
  WTF::RefCounted<WebKit::NetworkTransportStream>::deref(v5, a2);
  if (v3)
  {
  }

  if (v2[4] == 1)
  {
    (*(*v2 + 24))(v2);
  }

  else
  {
    --v2[4];
  }

  _Unwind_Resume(a1);
}

uint64_t WebKit::NetworkTransportStream::create<WebKit::NetworkTransportSession &,NSObject  {objcproto16OS_nw_connection}*,WebKit::NetworkTransportStreamType>(WebKit::NetworkTransportStream *a1, void *a2, void **a3, unsigned __int8 *a4)
{
  v8 = WebKit::NetworkTransportStream::operator new(a1, a2);
  result = WebKit::NetworkTransportStream::NetworkTransportStream(v8, a2, *a3, *a4);
  *a1 = v8;
  return result;
}

uint64_t WebKit::NetworkTransportStream::operator new(WebKit::NetworkTransportStream *this, void *a2)
{
  if (WebKit::NetworkTransportStream::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::NetworkTransportStream::s_heapRef, a2);
  }

  else
  {
    return WebKit::NetworkTransportStream::operatorNewSlow(0x30);
  }
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>&>(uint64_t a1, uint64_t *a2, uint64_t *a3, _DWORD **a4)
{
  v4 = *a3;
  if (*a3 == -1 || !v4)
  {
    __break(0xC471u);
    JUMPOUT(0x19D962B1CLL);
  }

  v9 = *a2;
  if (!*a2)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, 0);
    v9 = *a2;
    v4 = *a3;
  }

  v10 = *(v9 - 8);
  v11 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v9 + 16 * v14);
  v16 = *v15;
  if (!*v15)
  {
LABEL_13:
    *v15 = v4;
    v19 = *a4;
    *v19 = **a4 + 1;
    result = v15[1];
    v15[1] = v19;
    if (result)
    {
      result = WTF::RefCounted<WebKit::NetworkTransportStream>::deref(result, a2);
    }

    v21 = *a2;
    if (*a2)
    {
      v22 = *(v21 - 12) + 1;
    }

    else
    {
      v22 = 1;
    }

    *(v21 - 12) = v22;
    v25 = (*(v21 - 16) + v22);
    v26 = *(v21 - 4);
    if (v26 > 0x400)
    {
      if (v26 <= 2 * v25)
      {
LABEL_24:
        result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, v15);
        v15 = result;
        v21 = *a2;
        if (*a2)
        {
          v26 = *(v21 - 4);
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else if (3 * v26 <= 4 * v25)
    {
      goto LABEL_24;
    }

    *a1 = v15;
    *(a1 + 8) = v21 + 16 * v26;
    *(a1 + 16) = 1;
    return result;
  }

  v17 = 0;
  v18 = 1;
  while (v16 != v4)
  {
    if (v16 == -1)
    {
      v17 = v15;
    }

    v14 = (v14 + v18) & v10;
    v15 = (v9 + 16 * v14);
    v16 = *v15;
    ++v18;
    if (!*v15)
    {
      if (v17)
      {
        *v17 = 0;
        v17[1] = 0;
        --*(*a2 - 16);
        v4 = *a3;
        v15 = v17;
      }

      goto LABEL_13;
    }
  }

  v23 = v9 + 16 * *(v9 - 4);
  *a1 = v15;
  *(a1 + 8) = v23;
  *(a1 + 16) = 0;
  v24 = *a4;
  *v24 = **a4 + 1;
  result = v15[1];
  v15[1] = v24;
  if (result)
  {

    return WTF::RefCounted<WebKit::NetworkTransportStream>::deref(result, a2);
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  if (*a1 && (v4 = *(v3 - 4)) != 0)
  {
    v5 = v4 << (6 * *(v3 - 12) >= (2 * v4));
  }

  else
  {
    v5 = 8;
  }

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = (v6 + 16 * v11);
      v14 = *v13;
      if (*v13 != -1)
      {
        if (v14)
        {
          v16 = *a1;
          if (*a1)
          {
            v17 = *(v16 - 8);
          }

          else
          {
            v17 = 0;
          }

          v18 = (v14 + ~(v14 << 32)) ^ ((v14 + ~(v14 << 32)) >> 22);
          v19 = 9 * ((v18 + ~(v18 << 13)) ^ ((v18 + ~(v18 << 13)) >> 8));
          v20 = (v19 ^ (v19 >> 15)) + ~((v19 ^ (v19 >> 15)) << 27);
          v21 = v17 & ((v20 >> 31) ^ v20);
          v22 = 1;
          do
          {
            v23 = v21;
            v24 = *(v16 + 16 * v21);
            v21 = (v21 + v22++) & v17;
          }

          while (v24);
          v25 = (v16 + 16 * v23);
          v26 = v25[1];
          v25[1] = 0;
          if (v26)
          {
            WTF::RefCounted<WebKit::NetworkTransportStream>::deref(v26, v10);
          }

          *v25 = *v13;
          v27 = v13[1];
          v13[1] = 0;
          v25[1] = v27;
          v28 = v13[1];
          v13[1] = 0;
          if (v28)
          {
            WTF::RefCounted<WebKit::NetworkTransportStream>::deref(v28, v10);
          }

          if (v13 == a3)
          {
            v12 = v25;
          }
        }

        else
        {
          v15 = v13[1];
          v13[1] = 0;
          if (v15)
          {
            WTF::RefCounted<WebKit::NetworkTransportStream>::deref(v15, v10);
          }
        }
      }

      ++v11;
    }

    while (v11 != v7);
  }

  else
  {
    v12 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v12;
}

unsigned int *WTF::BlockPtr<void ()(nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkTransportSession::createStream(WebKit::NetworkTransportStreamType,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)> &&)::$_0>(WebKit::NetworkTransportSession::createStream(WebKit::NetworkTransportStreamType,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)> &&)::$_0)::{lambda(void const*)#1}::__invoke(void *a1, void *a2)
{
  v3 = a1[6];
  a1[6] = 0;
  if (v3)
  {
    WTF::RefCounted<WebKit::NetworkTransportStream>::deref(v3, a2);
  }

  v4 = a1[5];
  a1[5] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  result = a1[4];
  a1[4] = 0;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);

    return WTF::fastFree(result, a2);
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkTransportSession::createStream(WebKit::NetworkTransportStreamType,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)> &&)::$_0>(WebKit::NetworkTransportSession::createStream(WebKit::NetworkTransportStreamType,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)> &&)::$_0)::{lambda(void *,nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)#1}::__invoke(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    if (a2 - 4 >= 2)
    {
      if (a2 != 3)
      {
        result = 398;
        __break(0xC471u);
        return result;
      }

      v3 = *(result + 48);
      *(result + 48) = 0;
      v4 = v3;
      WebKit::NetworkTransportSession::createStream(WebKit::NetworkTransportStreamType,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)> &&)::$_1::operator()((result + 32), &v4);
    }

    else
    {
      v4 = 0;
      WebKit::NetworkTransportSession::createStream(WebKit::NetworkTransportStreamType,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)> &&)::$_1::operator()((result + 32), &v4);
    }

    result = v4;
    if (v4)
    {
      return WTF::RefCounted<WebKit::NetworkTransportStream>::deref(v4, v2);
    }
  }

  return result;
}

void sub_19D962E40(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    WTF::RefCounted<WebKit::NetworkTransportStream>::deref(a10, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *WebKit::NetworkTransportSession::createStream(WebKit::NetworkTransportStreamType,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)> &&)::$_1::operator()(uint64_t *result, uint64_t *a2)
{
  v2 = result + 1;
  if (!result[1])
  {
    return result;
  }

  if (!*result)
  {
    v3 = 0;
    goto LABEL_22;
  }

  v3 = *(*result + 8);
  if (!v3)
  {
LABEL_22:
    v19 = 1;
    goto LABEL_24;
  }

  ++*(v3 + 16);
  v4 = *a2;
  if (!*a2)
  {
    v19 = 0;
LABEL_24:
    result = WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)>::operator()(result + 1);
    if (v19)
    {
      return result;
    }

    goto LABEL_33;
  }

  v5 = *(v4 + 16);
  *a2 = 0;
  if (v5 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19D96309CLL);
  }

  v6 = *(v3 + 40);
  if (!v6)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v3 + 40), 0);
    v6 = *(v3 + 40);
  }

  v7 = *(v6 - 8);
  v8 = (v5 + ~(v5 << 32)) ^ ((v5 + ~(v5 << 32)) >> 22);
  v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
  v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
  v11 = v7 & ((v10 >> 31) ^ v10);
  v12 = (v6 + 16 * v11);
  v13 = *v12;
  if (*v12)
  {
    v14 = 0;
    v15 = 1;
    while (v13 != v5)
    {
      if (v13 == -1)
      {
        v14 = v12;
      }

      v11 = (v11 + v15) & v7;
      v12 = (v6 + 16 * v11);
      v13 = *v12;
      ++v15;
      if (!*v12)
      {
        if (v14)
        {
          *v14 = 0;
          v14[1] = 0;
          --*(*(v3 + 40) - 16);
          v12 = v14;
        }

        goto LABEL_17;
      }
    }

    v20 = v12[1];
    v12[1] = v4;
    if (v20)
    {
      WTF::RefCounted<WebKit::NetworkTransportStream>::deref(v20, a2);
    }

    goto LABEL_32;
  }

LABEL_17:
  v16 = v12[1];
  *v12 = v5;
  v12[1] = v4;
  if (v16)
  {
    WTF::RefCounted<WebKit::NetworkTransportStream>::deref(v16, a2);
  }

  v17 = *(v3 + 40);
  if (v17)
  {
    v18 = *(v17 - 12) + 1;
  }

  else
  {
    v18 = 1;
  }

  *(v17 - 12) = v18;
  v21 = (*(v17 - 16) + v18);
  v22 = *(v17 - 4);
  if (v22 > 0x400)
  {
    if (v22 > 2 * v21)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (3 * v22 <= 4 * v21)
  {
LABEL_31:
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v3 + 40), v12);
  }

LABEL_32:
  result = WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)>::operator()(v2);
LABEL_33:
  if (*(v3 + 16) == 1)
  {
    v23 = *(*v3 + 24);

    return v23(v3);
  }

  else
  {
    --*(v3 + 16);
  }

  return result;
}

void sub_19D9630C0(_Unwind_Exception *exception_object)
{
  if (v1[4] == 1)
  {
    (*(*v1 + 24))(v1);
  }

  else
  {
    --v1[4];
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::RefCounted<WebKit::NetworkTransportStream>::deref(uint64_t result, void *a2)
{
  v2 = result;
  if (*result == 1)
  {
    v3 = *(result + 32);
    *(result + 32) = 0;
    if (v3)
    {
    }

    v4 = v2[3];
    v2[3] = 0;
    if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4);
      WTF::fastFree(v4, a2);
    }

    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v2 + 1, a2);
    if (*v2 == 1)
    {

      return bmalloc::api::tzoneFree(v2, v5);
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

unsigned int *WTF::BlockPtr<void ()(NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkTransportSession::receiveDatagramLoop(void)::$_0>(WebKit::NetworkTransportSession::receiveDatagramLoop(void)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, a2);
    }
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkTransportSession::receiveDatagramLoop(void)::$_0>(WebKit::NetworkTransportSession::receiveDatagramLoop(void)::$_0)::{lambda(void *,NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)#1}::__invoke(uint64_t result, uint64_t a2, int a3, char a4, nw_error_t error)
{
  v5 = *(result + 32);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      ++*(v6 + 4);
      if (error)
      {
        if (nw_error_get_error_domain(error) != nw_error_domain_posix || (result = nw_error_get_error_code(error), result != 89))
        {
          LOBYTE(v17) = 15;
          v18 = 0;
          v19 = 1;
          result = WebKit::NetworkTransportSession::receiveDatagram(v6, 0, 0, 0, &v17);
          if (v19 == 1)
          {
            result = v18;
            v18 = 0;
            if (result)
            {
              if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, v8);
              }
            }
          }
        }

        goto LABEL_27;
      }

      if (a2)
      {
        v9 = 0;
      }

      else
      {
        v9 = a4;
      }

      v15 = 0;
      v16 = 0;
      if (a2)
      {
        v10 = WTF::fastMalloc(0x10);
        *v10 = &unk_1F10EDFF8;
        v10[1] = &v15;
        v17 = v10;
        dispatch_data_apply_span();
        if (v17)
        {
          (*(*v17 + 8))(v17);
        }

        v11 = v15;
        v12 = HIDWORD(v16);
      }

      else
      {
        v12 = 0;
        v11 = 0;
      }

      LOBYTE(v17) = 0;
      v19 = 0;
      WebKit::NetworkTransportSession::receiveDatagram(v6, v11, v12, v9, &v17);
      if (v19 == 1)
      {
        v14 = v18;
        v18 = 0;
        if (v14)
        {
          if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v14, v13);
          }
        }
      }

      result = v15;
      if (v15)
      {
        v15 = 0;
        LODWORD(v16) = 0;
        result = WTF::fastFree(result, v13);
        if (v9)
        {
          goto LABEL_27;
        }
      }

      else if (v9)
      {
LABEL_27:
        if (*(v6 + 4) == 1)
        {
          return (*(*v6 + 24))(v6);
        }

        --*(v6 + 4);
        return result;
      }

      result = WebKit::NetworkTransportSession::receiveDatagramLoop(v6);
      goto LABEL_27;
    }
  }

  return result;
}

void sub_19D963410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, uint64_t a12)
{
  if (v12[4] == 1)
  {
    (*(*v12 + 24))(v12);
  }

  else
  {
    --v12[4];
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkTransportSession::receiveDatagramLoop(void)::$_0::operator() const(NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)::{lambda(NSObject  {objcproto16OS_dispatch_data}*)#1}::operator() const(NSObject  {objcproto16OS_dispatch_data}*)::{lambda(std::span<unsigned char const,18446744073709551615ul>)#1},BOOL,std::span<unsigned char const,18446744073709551615ul>>::call(uint64_t result, void *__src, size_t __n)
{
  if (!__n)
  {
    return 1;
  }

  v5 = *(result + 8);
  v7 = *(v5 + 8);
  v6 = *(v5 + 12);
  v8 = __n + v6;
  if (__n + v6 > v7)
  {
    v9 = v7 + (v7 >> 1);
    if (v9 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v9 <= v8)
    {
      v9 = v8;
    }

    if (v9 <= 0x10)
    {
      v10 = 16;
    }

    else
    {
      v10 = v9;
    }

    result = WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(*(result + 8), v10);
    v6 = *(v5 + 12);
  }

  if (v8 >= v6)
  {
    memcpy((*v5 + v6), __src, __n);
    *(v5 + 12) = v8;
    return 1;
  }

  __break(0xC471u);
  return result;
}

void sub_19D963774(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12, void *a13, char a14)
{
  if (a14 == 1)
  {
    if (a13)
    {
    }

    if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }

    if (a10)
    {
      if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(a10, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19D9638AC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12, uint64_t a13, void *a14)
{
  if (a14)
  {
  }

  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WebKit::AuthenticationChallengeDisposition>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WebKit::AuthenticationChallengeDisposition,void>::decode<IPC::Decoder>(a1);
  if ((result & 0x100) == 0)
  {
    v3 = *a1;
    v4 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v5 = a1[3];
    if (v5)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v7 = result;
      (*(*v5 + 16))(v5, v3);
      return v7;
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::AuthenticationChallengeDisposition,void>::decode<IPC::Decoder>(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v9 = a1;
    v6 = a1[3];
    if (v6)
    {
      if (v1)
      {
        (*(*v6 + 16))(v6);
        v3 = *v9;
        v1 = v9[1];
        goto LABEL_8;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
LABEL_8:
    *v9 = 0;
    v9[1] = 0;
    v7 = v9[3];
    if (v7 && v1)
    {
      (*(*v7 + 16))(v7, v3);
    }

    goto LABEL_9;
  }

  a1[2] = (v2 + 1);
  if (!v2)
  {
    v9 = a1;
    goto LABEL_8;
  }

  v4 = *v2;
  if (v4 >= 4)
  {
LABEL_9:
    v4 = 0;
    v5 = 0;
    return v4 | (v5 << 8);
  }

  v5 = 1;
  return v4 | (v5 << 8);
}

unsigned int *WTF::ThreadSafeRefCounted<WebKit::NetworkRTCProvider,(WTF::DestructionThread)2>::deref(unsigned int *result)
{
  if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    v1 = result;
    atomic_store(1u, result);
    v2 = WTF::fastMalloc(0x10);
    *v2 = &unk_1F10EE160;
    *(v2 + 1) = v1;
    v3 = v2;
    WTF::ensureOnMainRunLoop();
    result = v3;
    if (v3)
    {
      return (*(*v3 + 8))(v3);
    }
  }

  return result;
}

void sub_19D963D40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *WTF::RefCounted<WebKit::WebPaymentCoordinatorProxy>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    WebKit::WebPaymentCoordinatorProxy::~WebPaymentCoordinatorProxy((result - 10));

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessProxy::GetPaymentCoordinatorEmbeddingUserAgent,WTF::CompletionHandler<void ()(WTF::String const&)>>(WTF::CompletionHandler<void ()(WTF::String const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10EE098;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessProxy::GetPaymentCoordinatorEmbeddingUserAgent,WTF::CompletionHandler<void ()(WTF::String const&)>>(WTF::CompletionHandler<void ()(WTF::String const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10EE098;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessProxy::GetPaymentCoordinatorEmbeddingUserAgent,WTF::CompletionHandler<void ()(WTF::String const&)>>(WTF::CompletionHandler<void ()(WTF::String const&)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::Decoder::decode<std::tuple<WTF::String>>(a3, &v7);
    if (v8 == 1)
    {
      result = WTF::CompletionHandler<void ()(WTF::String const&)>::operator()((a1 + 8), &v7);
      if (v8)
      {
        result = v7;
        v7 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v5);
          }
        }
      }
    }

    else
    {
      return IPC::Connection::cancelReply<Messages::NetworkProcessProxy::GetPaymentCoordinatorEmbeddingUserAgent,WTF::CompletionHandler<void ()(WTF::String const&)>>((a1 + 8));
    }
  }

  else
  {
    v6 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::NetworkProcessProxy::GetPaymentCoordinatorEmbeddingUserAgent,WTF::CompletionHandler<void ()(WTF::String const&)>>(v6);
  }

  return result;
}

void sub_19D963F88(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a10 == 1 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::Connection::cancelReply<Messages::NetworkProcessProxy::GetPaymentCoordinatorEmbeddingUserAgent,WTF::CompletionHandler<void ()(WTF::String const&)>>(WTF::RefCountedBase *a1)
{
  v3 = 0;
  WTF::CompletionHandler<void ()(WTF::String const&)>::operator()(a1, &v3);
  result = v3;
  v3 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v1);
    }
  }

  return result;
}

void sub_19D964010(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

IPC::Decoder *IPC::Decoder::decode<std::tuple<WTF::String>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<WTF::String>(a1, &v5);
  if (v6 == 1)
  {
    *a2 = v5;
    *(a2 + 8) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkRTCTCPSocketCocoa::NetworkRTCTCPSocketCocoa(WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkRTCProvider &,webrtc::SocketAddress const&,int,WTF::String const&,BOOL,BOOL,WebCore::RegistrableDomain const&,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&)::$_1,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::FastMalloc&&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F10EE0C0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkRTCTCPSocketCocoa::NetworkRTCTCPSocketCocoa(WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkRTCProvider &,webrtc::SocketAddress const&,int,WTF::String const&,BOOL,BOOL,WebCore::RegistrableDomain const&,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&)::$_1,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::FastMalloc&&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10EE0C0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkRTCTCPSocketCocoa::NetworkRTCTCPSocketCocoa(WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkRTCProvider &,webrtc::SocketAddress const&,int,WTF::String const&,BOOL,BOOL,WebCore::RegistrableDomain const&,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&)::$_1,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::FastMalloc&&>::call(uint64_t a1)
{
  v1 = a1 + 8;
  v2 = a1 + 16;
  v3 = a1 + 24;
  v4 = a1 + 56;
  v5 = WTF::fastMalloc(0x28);
  *v5 = &unk_1F10EE0E8;
  v5[1] = v2;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v4;
  v8 = v5;
  WebCore::WebRTC::extractMessages();
  result = v8;
  if (v8)
  {
    v7 = *(*v8 + 8);

    return v7();
  }

  return result;
}

void sub_19D964254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit24NetworkRTCTCPSocketCocoaC1ENS_23ObjectIdentifierGenericIN7WebCore29LibWebRTCSocketIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEERNS2_18NetworkRTCProviderERKN6webrtc13SocketAddressEiRKNS_6StringEbbRKNS5_17RegistrableDomainEONS_3RefIN3IPC10ConnectionENS_12RawPtrTraitsISO_EENS_21DefaultRefDerefTraitsISO_EEEEEN3__1clEONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEUlT_E_vJNSt3__14spanIKhLm18446744073709551615EEEEE4callES16_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v15[0] = a2;
  v15[1] = a3;
  v4 = *(a1 + 16);
  v5 = **(a1 + 8);
  v6 = WebKit::WebRTCNetwork::IPAddress::IPAddress(v10, *(a1 + 24));
  LOWORD(v3) = **(v3 + 32);
  v7 = webrtc::TimeMicros(v6);
  v9 = 0;
  v11[0] = v4;
  v11[1] = v15;
  v11[2] = v10;
  v12 = v3;
  v13 = v7;
  v14 = &v9;
  return IPC::Connection::send<Messages::LibWebRTCNetwork::SignalReadPacket>(v5, v11);
}

IPC::Encoder *IPC::Connection::send<Messages::LibWebRTCNetwork::SignalReadPacket>(uint64_t *a1, __int16 *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 146;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, **a2);
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v4, **(a2 + 1), *(*(a2 + 1) + 8));
  v5 = *(a2 + 2);
  v11 = *(v5 + 16);
  IPC::Encoder::operator<<<BOOL>(v4, &v11);
  IPC::ArgumentCoder<mpark::variant<WebKit::WebRTCNetwork::IPAddress::UnspecifiedFamily,unsigned int,std::array<unsigned int,4ul>>,void>::encode<IPC::Encoder,mpark::variant<WebKit::WebRTCNetwork::IPAddress::UnspecifiedFamily,unsigned int,std::array<unsigned int,4ul>> const&>(v4, v5, v11);
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(v4, a2[12]);
  IPC::ArgumentCoder<API::Int64,void>::encode(v4, *(a2 + 4));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v4, **(a2 + 5));
  IPC::Connection::sendMessageImpl(a1, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void sub_19D964418(_Unwind_Exception *a1, void *a2)
{
  IPC::Encoder::~Encoder(v2, a2);
  bmalloc::api::tzoneFree(v4, v5);
  _Unwind_Resume(a1);
}

uint64_t WTF::NativePromise<WTF::String,void,0u>::~NativePromise(uint64_t a1)
{
  v1 = WTF::NativePromise<WTF::String,void,0u>::~NativePromise(a1);

  return WTF::fastFree(v1, v2);
}

{
  v35[2] = *MEMORY[0x1E69E9840];
  v2 = WTF::NativePromiseBase::logChannel(a1);
  if (*v2)
  {
    v3 = *(v2 + 16) >= 4u;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    WTF::String::String(&v31, "destroying ");
    WTF::LogArgument<WTF::NativePromise<WTF::String,void,0u>>::toString(a1, &v30);
    *buf = v31;
    v29[0] = v30;
    result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v29, &v32);
    if (!v32)
    {
      __break(0xC471u);
      return result;
    }

    v6 = v30;
    v30 = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v5);
    }

    v7 = v31;
    v31 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v5);
    }

    v8 = *(v2 + 32);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      WTF::String::utf8();
      v11 = v29[0] ? v29[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v11;
      _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v9 = v29[0];
      v29[0] = 0;
      if (v9)
      {
        if (*v9 == 1)
        {
          v9 = WTF::fastFree(v9, v10);
        }

        else
        {
          --*v9;
        }
      }
    }

    if (*v2 && *(v2 + 16) >= 4u)
    {
      v12 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v13 = *v12;
        if (v13)
        {
          break;
        }

        v14 = *v12;
        atomic_compare_exchange_strong_explicit(v12, &v14, v13 | 1, memory_order_acquire, memory_order_acquire);
        if (v14 == v13)
        {
          v15 = WTF::Logger::observers(v9);
          v16 = *(v15 + 12);
          if (v16)
          {
            v17 = *v15;
            v18 = *v15 + 8 * v16;
            do
            {
              v19 = *v17;
              *buf = 0;
              WTF::String::String(&buf[8], "destroying ");
              v34 = 0;
              WTF::LogArgument<WTF::NativePromise<WTF::String,void,0u>>::toString(a1, v35);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v29, buf, 2uLL);
              (*(*v19 + 16))(v19, v2, 4, v29);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v29, v20);
              for (i = 24; i != -8; i -= 16)
              {
                v22 = *&buf[i];
                *&buf[i] = 0;
                if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v22, v10);
                }
              }

              ++v17;
            }

            while (v17 != v18);
          }

          v23 = 1;
          atomic_compare_exchange_strong_explicit(v12, &v23, 0, memory_order_release, memory_order_relaxed);
          if (v23 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v24 = v32;
    v32 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v10);
    }
  }

  WTF::NativePromise<WTF::String,void,0u>::assertIsDead(a1);
  WTF::Vector<WTF::NativePromiseProducer<WTF::String,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 104, v25);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 80, v26);
  if (*(a1 + 72) > 1u)
  {
    if (*(a1 + 72) == 2)
    {
      v28 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v28)
      {
        (*(*v28 + 8))(v28);
      }
    }
  }

  else if (*(a1 + 72))
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::RouterSourceDict,WebCore::RouterSourceEnum>,(mpark::detail::Trait)1>::~move_constructor(a1 + 56, v27);
  }

  *(a1 + 72) = -1;
  return a1;
}

void sub_19D9647BC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, WTF::StringImpl *a12, uint64_t a13, WTF::StringImpl *a14, char a15, WTF::StringImpl *a16)
{
  v19 = 1;
  atomic_compare_exchange_strong_explicit(v17, &v19, 0, memory_order_release, memory_order_relaxed);
  if (v19 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
  }

  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  WTF::Vector<WTF::NativePromiseProducer<WTF::String,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v16 + 104, a2);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v16 + 80, v20);
  if (*(v16 + 72) > 1u)
  {
    if (*(v16 + 72) == 2)
    {
      v22 = *(v16 + 56);
      *(v16 + 56) = 0;
      if (v22)
      {
        (*(*v22 + 8))(v22);
      }
    }
  }

  else if (*(v16 + 72))
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::RouterSourceDict,WebCore::RouterSourceEnum>,(mpark::detail::Trait)1>::~move_constructor(v16 + 56, v21);
  }

  *(v16 + 72) = -1;
  _Unwind_Resume(a1);
}

uint64_t WTF::NativePromiseProducer<WTF::String,void,16u>::~NativePromiseProducer(atomic_uint **a1)
{
  v37[2] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (!*a1)
  {
    goto LABEL_50;
  }

  atomic_fetch_add(v2 + 2, 1u);
  isSettled = WTF::NativePromise<WTF::String,void,0u>::isSettled(v2);
  v4 = isSettled;
  if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    isSettled = (*(*v2 + 16))(v2);
    if (v4)
    {
      goto LABEL_44;
    }
  }

  else if (isSettled)
  {
    goto LABEL_44;
  }

  v5 = *a1;
  if (*a1)
  {
    atomic_fetch_add(v5 + 2, 1u);
  }

  v6 = WTF::NativePromiseBase::logChannel(isSettled);
  v7 = v6;
  if (!*v6 || v6[16] < 4u)
  {
LABEL_40:
    if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v5 + 2);
      (*(*v5 + 16))(v5);
    }

    *buf = 0uLL;
    v36 = "~NativePromiseProducer";
    v37[0] = 0;
    WTF::NativePromiseProducer<WTF::String,void,16u>::reject<std::enable_if<true,void>>(a1, buf);
LABEL_44:
    v29 = *a1;
    if (*a1)
    {
      atomic_fetch_add(v29 + 2, 1u);
      WTF::NativePromise<WTF::String,void,0u>::assertIsDead(v29);
      if (atomic_fetch_add(v29 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v29 + 2);
        (*(*v29 + 16))(v29);
      }

      v30 = *a1;
      *a1 = 0;
      if (v30)
      {
        if (atomic_fetch_add(v30 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v30 + 2);
          (*(*v30 + 16))(v30);
        }
      }

      return a1;
    }

LABEL_50:
    *a1 = 0;
    return a1;
  }

  WTF::String::String(&v33, "Non settled AutoRejectProducer, reject with default value");
  WTF::LogArgument<WTF::NativePromise<WTF::String,void,0u>>::toString(v5, &v32);
  *buf = v33;
  v31[0] = v32;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v31, &v34);
  if (v34)
  {
    v10 = v32;
    v32 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }

    v11 = v33;
    v33 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v9);
    }

    v12 = *(v7 + 4);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      WTF::String::utf8();
      v15 = v31[0] ? v31[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v15;
      _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v13 = v31[0];
      v31[0] = 0;
      if (v13)
      {
        if (*v13 == 1)
        {
          v13 = WTF::fastFree(v13, v14);
        }

        else
        {
          --*v13;
        }
      }
    }

    if (*v7 && v7[16] >= 4u)
    {
      v16 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v17 = *v16;
        if (v17)
        {
          break;
        }

        v18 = *v16;
        atomic_compare_exchange_strong_explicit(v16, &v18, v17 | 1, memory_order_acquire, memory_order_acquire);
        if (v18 == v17)
        {
          v19 = WTF::Logger::observers(v13);
          v20 = *(v19 + 12);
          if (v20)
          {
            v21 = *v19;
            v22 = *v19 + 8 * v20;
            do
            {
              v23 = *v21;
              *buf = 0;
              WTF::String::String(&buf[8], "Non settled AutoRejectProducer, reject with default value");
              LODWORD(v36) = 0;
              WTF::LogArgument<WTF::NativePromise<WTF::String,void,0u>>::toString(v5, v37);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v31, buf, 2uLL);
              (*(*v23 + 16))(v23, v7, 4, v31);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v31, v24);
              for (i = 24; i != -8; i -= 16)
              {
                v26 = *&buf[i];
                *&buf[i] = 0;
                if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v26, v14);
                }
              }

              ++v21;
            }

            while (v21 != v22);
          }

          v27 = 1;
          atomic_compare_exchange_strong_explicit(v16, &v27, 0, memory_order_release, memory_order_relaxed);
          if (v27 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v28 = v34;
    v34 = 0;
    if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v14);
    }

    goto LABEL_40;
  }

  __break(0xC471u);
  return result;
}

void sub_19D964DC0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, WTF::StringImpl *a12, uint64_t a13, WTF::StringImpl *a14, char a15, WTF::StringImpl *a16)
{
  v20 = 1;
  atomic_compare_exchange_strong_explicit(v18, &v20, 0, memory_order_release, memory_order_relaxed);
  if (v20 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
  }

  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  if (v17 && atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v17 + 2);
    (*(*v17 + 16))(v17);
  }

  v21 = *v16;
  *v16 = 0;
  if (v21)
  {
    if (atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v21 + 2);
      (*(*v21 + 16))(v21);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::HashTable<webrtc::SocketAddress,WTF::KeyValuePair<webrtc::SocketAddress,std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<webrtc::SocketAddress,std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>>>,WTF::DefaultHash<webrtc::SocketAddress>,WTF::HashMap<webrtc::SocketAddress,std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>,WTF::DefaultHash<webrtc::SocketAddress>,WTF::HashTraits<webrtc::SocketAddress>,WTF::HashTraits<std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<webrtc::SocketAddress>,WTF::FastMalloc>::begin(uint64_t a1)
{
  v1 = a1;
  if (!a1)
  {
    return a1;
  }

  v2 = *(a1 - 4);
  v3 = a1 + 88 * v2;
  if (!*(a1 - 12))
  {
    a1 += 88 * v2;
    return a1;
  }

  if (v2)
  {
    v4 = 88 * v2;
    while ((WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<webrtc::SocketAddress>,false>::isEmptyValue<webrtc::SocketAddress>() & 1) != 0 || *(v1 + 60) == 0x80000000)
    {
      v1 += 88;
      v4 -= 88;
      if (!v4)
      {
        return v3;
      }
    }
  }

  return v1;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkRTCUDPSocketCocoaConnections::setupNWConnection(NSObject  {objcproto16OS_nw_connection}*,WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker &,webrtc::SocketAddress const&)::$_1,void,std::span<unsigned char const,18446744073709551615ul>,WebKit::WebRTCNetwork::EcnMarking>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F10EE138;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkRTCUDPSocketCocoaConnections::setupNWConnection(NSObject  {objcproto16OS_nw_connection}*,WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker &,webrtc::SocketAddress const&)::$_1,void,std::span<unsigned char const,18446744073709551615ul>,WebKit::WebRTCNetwork::EcnMarking>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10EE138;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::NetworkRTCUDPSocketCocoaConnections::setupNWConnection(NSObject  {objcproto16OS_nw_connection}*,WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker &,webrtc::SocketAddress const&)::$_1,void,std::span<unsigned char const,18446744073709551615ul>,WebKit::WebRTCNetwork::EcnMarking>::call(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a1;
  v5 = a1 + 8;
  v16[0] = a2;
  v16[1] = a3;
  v15 = a4;
  v6 = *(a1 + 16);
  v7 = WebKit::WebRTCNetwork::IPAddress::IPAddress(v10, (a1 + 24));
  LOWORD(v4) = *(v4 + 56);
  v8 = webrtc::TimeMicros(v7);
  v11[0] = v5;
  v11[1] = v16;
  v11[2] = v10;
  v12 = v4;
  v13 = v8;
  v14 = &v15;
  return IPC::Connection::send<Messages::LibWebRTCNetwork::SignalReadPacket>(v6, v11);
}

uint64_t WebKit::RemoteRenderPipeline::didReceiveStreamMessage(WebKit::RemoteRenderPipeline *this, IPC::StreamServerConnection *a2, IPC::Decoder *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(*(this + 5) + 8);
  if (v3)
  {
    if ((*(v3 + 56) & 0x4000) != 0)
    {
      atomic_fetch_add(this + 2, 1u);
      v10 = *(a3 + 25);
      switch(v10)
      {
        case 0x61Fu:
          IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, v19);
          if (v19[8] & 1) != 0 || (v11 = *a3, v12 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (result = *(a3 + 3)) != 0) && v12 && (result = (*(*result + 16))(result, v11), (v19[8]))
          {
            result = WebKit::RemoteRenderPipeline::setLabel(this, v19);
            if (v19[8])
            {
              result = *v19;
              *v19 = 0;
              if (result)
              {
                if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  result = WTF::StringImpl::destroy(result, v11);
                }
              }
            }
          }

          break;
        case 0x61Eu:
          IPC::ArgumentCoder<std::tuple<unsigned int,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a3, v19);
          if (v19[16] & 1) != 0 || (v11 = *a3, v12 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (result = *(a3 + 3)) != 0) && v12 && (result = (*(*result + 16))(result, v11), (v19[16]))
          {
            result = WebKit::RemoteRenderPipeline::getBindGroupLayout(this, *v19, *&v19[8]);
          }

          break;
        case 0x61Du:
          result = WebKit::RemoteQuerySet::destruct(this);
          break;
        default:
          v13 = qword_1ED6416C8;
          if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
          {
            if (v10 >= 0x107F)
            {
              v16 = 4223;
            }

            else
            {
              v16 = v10;
            }

            v17 = (&IPC::Detail::messageDescriptions)[3 * v16];
            v18 = *(a3 + 7);
            *v19 = 136315394;
            *&v19[4] = v17;
            *&v19[12] = 2048;
            *&v19[14] = v18;
            _os_log_error_impl(&dword_19D52D000, v13, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", v19, 0x16u);
          }

          v11 = *a3;
          v12 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          result = *(a3 + 3);
          if (result && v12)
          {
            result = (*(*result + 16))(result, v11);
          }

          break;
      }

      if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, this + 2);
        return (*(*this + 8))(this, v11, v12);
      }
    }

    else
    {
      v5 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a3 + 25);
        if (v14 >= 0x107F)
        {
          v14 = 4223;
        }

        v15 = (&IPC::Detail::messageDescriptions)[3 * v14];
        *v19 = 136315138;
        *&v19[4] = v15;
        _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteRenderPipeline", v19, 0xCu);
      }

      v6 = *a3;
      v7 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      result = *(a3 + 3);
      if (result)
      {
        if (v7)
        {
          return (*(*result + 16))(result, v6);
        }
      }
    }
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteSampler::didReceiveStreamMessage(WebKit::RemoteSampler *this, IPC::StreamServerConnection *a2, IPC::Decoder *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = *(*(this + 5) + 8);
  if (v3)
  {
    if ((*(v3 + 56) & 0x4000) != 0)
    {
      atomic_fetch_add(this + 2, 1u);
      v10 = *(a3 + 25);
      if (v10 == 1618)
      {
        IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, v19);
        if (v19[8] & 1) != 0 || (v11 = *a3, v12 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (result = *(a3 + 3)) != 0) && v12 && (result = (*(*result + 16))(result, v11), (v19[8]))
        {
          result = WebKit::RemoteSampler::setLabel(this, v19);
          if (v19[8])
          {
            result = *v19;
            *v19 = 0;
            if (result)
            {
              if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, v11);
              }
            }
          }
        }
      }

      else if (v10 == 1617)
      {
        result = WebKit::RemoteQuerySet::destruct(this);
      }

      else
      {
        v13 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          if (v10 >= 0x107F)
          {
            v16 = 4223;
          }

          else
          {
            v16 = v10;
          }

          v17 = (&IPC::Detail::messageDescriptions)[3 * v16];
          v18 = *(a3 + 7);
          *v19 = 136315394;
          *&v19[4] = v17;
          v20 = 2048;
          v21 = v18;
          _os_log_error_impl(&dword_19D52D000, v13, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", v19, 0x16u);
        }

        v11 = *a3;
        v12 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        result = *(a3 + 3);
        if (result && v12)
        {
          result = (*(*result + 16))(result, v11);
        }
      }

      if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, this + 2);
        return (*(*this + 8))(this, v11, v12);
      }
    }

    else
    {
      v5 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a3 + 25);
        if (v14 >= 0x107F)
        {
          v14 = 4223;
        }

        v15 = (&IPC::Detail::messageDescriptions)[3 * v14];
        *v19 = 136315138;
        *&v19[4] = v15;
        _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteSampler", v19, 0xCu);
      }

      v6 = *a3;
      v7 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      result = *(a3 + 3);
      if (result)
      {
        if (v7)
        {
          return (*(*result + 16))(result, v6);
        }
      }
    }
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteShaderModule::didReceiveStreamMessage(WebKit::RemoteShaderModule *this, atomic_uint *a2, IPC::Decoder *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = *(*(this + 5) + 8);
  if (v3)
  {
    if ((*(v3 + 56) & 0x4000) != 0)
    {
      atomic_fetch_add(this + 2, 1u);
      v10 = *(a3 + 25);
      switch(v10)
      {
        case 0x65Eu:
          IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, v22);
          if (v22[8] & 1) != 0 || (v12 = *a3, v13 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (result = *(a3 + 3)) != 0) && v13 && (result = (*(*result + 16))(result, v12), (v22[8]))
          {
            result = WebKit::RemoteShaderModule::setLabel(this, v22);
            if (v22[8])
            {
              result = *v22;
              *v22 = 0;
              if (result)
              {
                if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  result = WTF::StringImpl::destroy(result, v12);
                }
              }
            }
          }

          break;
        case 0x65Du:
          result = WebKit::RemoteShaderModule::destruct(this);
          break;
        case 0x65Cu:
          result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
          if (v12)
          {
            v14 = result;
            atomic_fetch_add(a2 + 2, 1u);
            v15 = WTF::fastMalloc(0x18);
            *v15 = &unk_1F10EE1D0;
            v15[1] = v14;
            v15[2] = a2;
            *v22 = v15;
            WebKit::RemoteShaderModule::compilationInfo(this, v22);
            result = *v22;
            *v22 = 0;
            if (result)
            {
              result = (*(*result + 8))(result);
            }
          }

          break;
        default:
          v16 = qword_1ED6416C8;
          if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
          {
            if (v10 >= 0x107F)
            {
              v19 = 4223;
            }

            else
            {
              v19 = v10;
            }

            v20 = (&IPC::Detail::messageDescriptions)[3 * v19];
            v21 = *(a3 + 7);
            *v22 = 136315394;
            *&v22[4] = v20;
            v23 = 2048;
            v24 = v21;
            _os_log_error_impl(&dword_19D52D000, v16, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", v22, 0x16u);
          }

          v12 = *a3;
          v13 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          result = *(a3 + 3);
          if (result && v13)
          {
            result = (*(*result + 16))(result, v12);
          }

          break;
      }

      if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, this + 2);
        return (*(*this + 8))(this, v12, v13);
      }
    }

    else
    {
      v5 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        v17 = *(a3 + 25);
        if (v17 >= 0x107F)
        {
          v17 = 4223;
        }

        v18 = (&IPC::Detail::messageDescriptions)[3 * v17];
        *v22 = 136315138;
        *&v22[4] = v18;
        _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteShaderModule", v22, 0xCu);
      }

      v6 = *a3;
      v7 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      result = *(a3 + 3);
      if (result)
      {
        if (v7)
        {
          return (*(*result + 16))(result, v6);
        }
      }
    }
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteTextDetector::didReceiveStreamMessage(atomic_uint *this, atomic_uint *a2, IPC::Decoder *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  WebKit::RemoteBarcodeDetector::sharedPreferencesForWebProcess(this, v22);
  if (v22[24] == 1 && (v22[15] & 0x10) != 0)
  {
    atomic_fetch_add(this + 2, 1u);
    v10 = *(a3 + 25);
    if (v10 == 1664)
    {
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v11)
      {
        v13 = result;
        result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v11)
        {
          v14 = result;
          atomic_fetch_add(a2 + 2, 1u);
          v15 = WTF::fastMalloc(0x18);
          *v15 = &unk_1F10EE1F8;
          v15[1] = v14;
          v15[2] = a2;
          *buf = v15;
          WebKit::RemoteTextDetector::detect(this, v13, buf);
          result = *buf;
          *buf = 0;
          if (result)
          {
            result = (*(*result + 8))(result);
          }
        }
      }
    }

    else
    {
      v16 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v10 >= 0x107F)
        {
          v19 = 4223;
        }

        else
        {
          v19 = v10;
        }

        v20 = (&IPC::Detail::messageDescriptions)[3 * v19];
        v21 = *(a3 + 7);
        *buf = 136315394;
        *&buf[4] = v20;
        v24 = 2048;
        v25 = v21;
        _os_log_error_impl(&dword_19D52D000, v16, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", buf, 0x16u);
      }

      v11 = *a3;
      v12 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      result = *(a3 + 3);
      if (result && v12)
      {
        result = (*(*result + 16))(result, v11);
      }
    }

    if (this && atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, this + 2);
      return (*(*this + 8))(this, v11, v12);
    }
  }

  else
  {
    v6 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a3 + 25);
      if (v17 >= 0x107F)
      {
        v17 = 4223;
      }

      v18 = (&IPC::Detail::messageDescriptions)[3 * v17];
      *buf = 136315138;
      *&buf[4] = v18;
      _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteTextDetector", buf, 0xCu);
    }

    v7 = *a3;
    v8 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    result = *(a3 + 3);
    if (result)
    {
      if (v8)
      {
        return (*(*result + 16))(result, v7);
      }
    }
  }

  return result;
}

WTF::StringImpl *WebKit::RemoteTexture::didReceiveStreamMessage(WebKit::RemoteTexture *this, IPC::StreamServerConnection *a2, IPC::Decoder *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = *(*(this + 8) + 8);
  if (!v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19D96634CLL);
  }

  if ((*(v3 + 56) & 0x4000) == 0)
  {
    v5 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a3 + 25);
      if (v24 >= 0x107F)
      {
        v24 = 4223;
      }

      v25 = (&IPC::Detail::messageDescriptions)[3 * v24];
      *v38 = 136315138;
      *&v38[4] = v25;
      _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteTexture", v38, 0xCu);
    }

    v6 = *a3;
    v7 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    result = *(a3 + 3);
    if (result)
    {
      if (v7)
      {
        return (*(*result + 16))(result, v6);
      }
    }

    return result;
  }

  atomic_fetch_add(this + 2, 1u);
  v10 = *(a3 + 25);
  if (v10 <= 0x684)
  {
    if (v10 != 1667)
    {
      if (v10 != 1668)
      {
LABEL_28:
        v21 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          if (v10 >= 0x107F)
          {
            v26 = 4223;
          }

          else
          {
            v26 = v10;
          }

          v27 = (&IPC::Detail::messageDescriptions)[3 * v26];
          v28 = *(a3 + 7);
          *v38 = 136315394;
          *&v38[4] = v27;
          *&v38[12] = 2048;
          *&v38[14] = v28;
          _os_log_error_impl(&dword_19D52D000, v21, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", v38, 0x16u);
        }

        goto LABEL_29;
      }

      result = WebKit::RemoteTexture::destroy(this);
      goto LABEL_30;
    }

    v13 = *(a3 + 1);
    v14 = *(a3 + 2);
    v15 = *a3;
    if (v13 <= &v14[-*a3])
    {
      *a3 = 0;
      *(a3 + 1) = 0;
      v35 = *(a3 + 3);
      if (v35)
      {
        if (v13)
        {
          (*(*v35 + 16))(v35);
          v13 = *(a3 + 1);
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      *(a3 + 2) = v14 + 1;
      if (v14)
      {
        v16 = *v14;
        if (v16 < 2)
        {
          if (v16)
          {
            IPC::ArgumentCoder<WebKit::WebGPU::TextureViewDescriptor,void>::decode(a3, v38);
            if ((v39 & 1) == 0)
            {
              v29 = *a3;
              v30 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v31 = *(a3 + 3);
              if (!v31 || !v30 || ((*(*v31 + 16))(v31, v29), (v39 & 1) == 0))
              {
LABEL_55:
                v32 = *a3;
                v33 = *(a3 + 1);
                *a3 = 0;
                *(a3 + 1) = 0;
                v34 = *(a3 + 3);
                if (v34 && v33)
                {
                  (*(*v34 + 16))(v34, v32);
                }

                goto LABEL_29;
              }
            }

            v17 = *v38;
            v42[0] = *&v38[8];
            *(v42 + 13) = *&v38[21];
            v18 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
            if ((v19 & 1) == 0)
            {
              if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v17, v19);
              }

              goto LABEL_29;
            }

            v20 = v18;
            *v38 = v17;
            *&v38[8] = v42[0];
            *&v38[21] = *(v42 + 13);
            v39 = 1;
          }

          else
          {
            v22 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
            v38[0] = 0;
            if ((v23 & 1) == 0)
            {
LABEL_29:
              v11 = *a3;
              v12 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              result = *(a3 + 3);
              if (result && v12)
              {
                result = (*(*result + 16))(result, v11);
              }

              goto LABEL_30;
            }

            v20 = v22;
            v39 = 0;
          }

          v40 = v20;
          v41 = 1;
          result = WebKit::RemoteTexture::createView(this, v38, v20);
          if ((v41 & 1) != 0 && v39 == 1)
          {
            goto LABEL_18;
          }

          goto LABEL_30;
        }

        goto LABEL_66;
      }
    }

    *a3 = 0;
    *(a3 + 1) = 0;
    v36 = *(a3 + 3);
    if (v36)
    {
      if (v13)
      {
        (*(*v36 + 16))(v36);
        v15 = *a3;
        v13 = *(a3 + 1);
        goto LABEL_66;
      }
    }

    else
    {
      v13 = 0;
    }

    v15 = 0;
LABEL_66:
    *a3 = 0;
    *(a3 + 1) = 0;
    v37 = *(a3 + 3);
    if (v37 && v13)
    {
      (*(*v37 + 16))(v37, v15);
    }

    goto LABEL_55;
  }

  switch(v10)
  {
    case 0x685u:
      result = WebKit::RemoteTexture::destruct(this);
      break;
    case 0x686u:
      IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, v38);
      if (v38[8] & 1) != 0 || (v11 = *a3, v12 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (result = *(a3 + 3)) != 0) && v12 && (result = (*(*result + 16))(result, v11), (v38[8]))
      {
        result = WebKit::RemoteTexture::setLabel(this, v38);
        if (v38[8])
        {
LABEL_18:
          result = *v38;
          *v38 = 0;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v11);
          }
        }
      }

      break;
    case 0x687u:
      result = WebKit::RemoteTexture::undestroy(this);
      break;
    default:
      goto LABEL_28;
  }

LABEL_30:
  if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, this + 2);
    return (*(*this + 8))(this, v11, v12);
  }

  return result;
}

uint64_t WebKit::RemoteTextureView::didReceiveStreamMessage(WebKit::RemoteTextureView *this, IPC::StreamServerConnection *a2, IPC::Decoder *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = *(*(this + 5) + 8);
  if (v3)
  {
    if ((*(v3 + 56) & 0x4000) != 0)
    {
      atomic_fetch_add(this + 2, 1u);
      v10 = *(a3 + 25);
      if (v10 == 1666)
      {
        IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, v19);
        if (v19[8] & 1) != 0 || (v11 = *a3, v12 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (result = *(a3 + 3)) != 0) && v12 && (result = (*(*result + 16))(result, v11), (v19[8]))
        {
          result = WebKit::RemoteTextureView::setLabel(this, v19);
          if (v19[8])
          {
            result = *v19;
            *v19 = 0;
            if (result)
            {
              if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, v11);
              }
            }
          }
        }
      }

      else if (v10 == 1665)
      {
        result = WebKit::RemoteShaderModule::destruct(this);
      }

      else
      {
        v13 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          if (v10 >= 0x107F)
          {
            v16 = 4223;
          }

          else
          {
            v16 = v10;
          }

          v17 = (&IPC::Detail::messageDescriptions)[3 * v16];
          v18 = *(a3 + 7);
          *v19 = 136315394;
          *&v19[4] = v17;
          v20 = 2048;
          v21 = v18;
          _os_log_error_impl(&dword_19D52D000, v13, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", v19, 0x16u);
        }

        v11 = *a3;
        v12 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        result = *(a3 + 3);
        if (result && v12)
        {
          result = (*(*result + 16))(result, v11);
        }
      }

      if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, this + 2);
        return (*(*this + 8))(this, v11, v12);
      }
    }

    else
    {
      v5 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a3 + 25);
        if (v14 >= 0x107F)
        {
          v14 = 4223;
        }

        v15 = (&IPC::Detail::messageDescriptions)[3 * v14];
        *v19 = 136315138;
        *&v19[4] = v15;
        _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteTextureView", v19, 0xCu);
      }

      v6 = *a3;
      v7 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      result = *(a3 + 3);
      if (result)
      {
        if (v7)
        {
          return (*(*result + 16))(result, v6);
        }
      }
    }
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

atomic_uchar **WebKit::RemoteVideoFrameObjectHeap::didReceiveMessage(WebKit::RemoteVideoFrameObjectHeap *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = (this + 8);
  while (1)
  {
    v6 = *v5;
    if ((*v5 & 1) == 0)
    {
      break;
    }

    v7 = *v5;
    atomic_compare_exchange_strong_explicit(v5, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_6:
  v8 = *(a3 + 25);
  if (v8 > 0x68D)
  {
    if (v8 == 1678)
    {
      IPC::Decoder::decode<std::tuple<WebCore::SharedMemoryHandle>>(a3, buf);
      if (buf[16] != 1)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v5, v9);
      }

      WebKit::RemoteVideoFrameObjectHeap::setSharedVideoFrameMemory(this);
      if ((buf[16] & 1) == 0)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v5, v9);
      }
    }

    else
    {
      if (v8 != 1679)
      {
LABEL_16:
        v10 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          if (v8 >= 0x107F)
          {
            v11 = 4223;
          }

          else
          {
            v11 = v8;
          }

          v12 = (&IPC::Detail::messageDescriptions)[3 * v11];
          v13 = *(a3 + 7);
          *buf = 136315394;
          *&buf[4] = v12;
          *&buf[12] = 2048;
          *&buf[14] = v13;
          _os_log_error_impl(&dword_19D52D000, v10, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
        }

        goto LABEL_41;
      }

      IPC::Decoder::decode<std::tuple<IPC::Semaphore>>(a3, buf);
      if (buf[8] != 1)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v5, v9);
      }

      WebKit::RemoteVideoFrameObjectHeap::setSharedVideoFrameSemaphore(this, buf);
      if ((buf[8] & 1) == 0)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v5, v9);
      }

      IPC::Semaphore::destroy(buf);
    }

    WTF::MachSendRight::~MachSendRight(buf);
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v5, v9);
  }

  if (v8 != 1676)
  {
    if (v8 == 1677)
    {
      IPC::ArgumentCoder<IPC::ObjectIdentifierWriteReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::decode(a3, buf);
      if (v30)
      {
        goto LABEL_10;
      }

      v9 = *a3;
      v18 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v19 = *(a3 + 3);
      if (!v19 || !v18)
      {
        *a3 = 0;
        *(a3 + 1) = 0;
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v5, v9);
      }

      (*(*v19 + 16))(v19, v9);
      if (v30)
      {
LABEL_10:
        v26 = *buf;
        v27 = *&buf[16];
        v28 = 1;
        WebKit::RemoteVideoFrameObjectHeap::releaseVideoFrame(this, &v26);
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v5, v9);
      }

      v9 = *a3;
      v20 = *(a3 + 1);
      v21 = *(a3 + 3);
      *a3 = 0;
      *(a3 + 1) = 0;
      if (!v21)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v5, v9);
      }

      goto LABEL_43;
    }

    goto LABEL_16;
  }

  IPC::Decoder::decode<IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(&v26, a3);
  if (v27 != 1)
  {
    goto LABEL_41;
  }

  v14 = *(a3 + 1);
  v15 = *(a3 + 2);
  v16 = *a3;
  if (v14 <= &v15[-*a3])
  {
    *a3 = 0;
    *(a3 + 1) = 0;
    v22 = *(a3 + 3);
    if (v22)
    {
      if (v14)
      {
        (*(*v22 + 16))(v22);
        v14 = *(a3 + 1);
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    *(a3 + 2) = v15 + 1;
    if (v15)
    {
      v17 = *v15;
      if (v17 < 2)
      {
        *buf = v26;
        buf[16] = v17;
        v30 = 1;
        WebKit::RemoteVideoFrameObjectHeap::getVideoFrameBuffer(this, buf, v17 & 1);
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v5, v9);
      }

      goto LABEL_40;
    }
  }

  *a3 = 0;
  *(a3 + 1) = 0;
  v23 = *(a3 + 3);
  if (v23)
  {
    if (v14)
    {
      (*(*v23 + 16))(v23);
      v16 = *a3;
      v14 = *(a3 + 1);
      goto LABEL_40;
    }
  }

  else
  {
    v14 = 0;
  }

  v16 = 0;
LABEL_40:
  *a3 = 0;
  *(a3 + 1) = 0;
  v24 = *(a3 + 3);
  if (v24 && v14)
  {
    (*(*v24 + 16))(v24, v16);
  }

LABEL_41:
  v9 = *a3;
  v20 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  v21 = *(a3 + 3);
  if (!v21)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v5, v9);
  }

LABEL_43:
  if (v20)
  {
    (*(*v21 + 16))(v21, v9);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v5, v9);
}

uint64_t WebKit::RemoteVideoFrameObjectHeap::didReceiveSyncMessage(WebKit *a1, atomic_ullong *a2, uint64_t a3, uint64_t *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = (a1 + 8);
  while (1)
  {
    v9 = *v8;
    if ((*v8 & 1) == 0)
    {
      break;
    }

    v10 = *v8;
    atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v10 == v9)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_6:
  v11 = *(a3 + 50);
  if (v11 == 4127)
  {
    IPC::ArgumentCoder<std::tuple<WebKit::SharedVideoFrame>,void>::decode<IPC::Decoder>(a3, buf);
    if (v39 & 1) != 0 || (v19 = *a3, v33 = *(a3 + 8), *a3 = 0, *(a3 + 8) = 0, (v34 = *(a3 + 24)) != 0) && v33 && ((*(*v34 + 16))(v34, v19), (v39))
    {
      v15 = *a4;
      *a4 = 0;
      while (1)
      {
        v16 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v17 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v17, v16 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v17 == v16)
        {
          goto LABEL_22;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_22:
      v23 = WTF::fastMalloc(0x18);
      *v23 = &unk_1F10EE248;
      v23[1] = v15;
      v23[2] = a2;
      *&v35 = v23;
      if ((v39 & 1) == 0)
      {
        __break(1u);
      }

      WebKit::RemoteVideoFrameObjectHeap::convertFrameBuffer(a1, buf, &v35);
      v24 = v35;
      *&v35 = 0;
      if (v24)
      {
        (*(*v24 + 8))(v24);
      }

      if ((v39 & 1) != 0 && v38[16] == 2)
      {
        WTF::MachSendRight::~MachSendRight(v38);
      }
    }

    goto LABEL_34;
  }

  if (v11 == 4128)
  {
    IPC::Decoder::decode<IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(buf, a3);
    if (buf[16])
    {
      v35 = *buf;
      v36 = 1;
      v12 = *a4;
      *a4 = 0;
      while (1)
      {
        v13 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v14 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v14, v13 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v14 == v13)
        {
          goto LABEL_32;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_32:
      v27 = WTF::fastMalloc(0x18);
      *v27 = &unk_1F10EE220;
      v27[1] = v12;
      v27[2] = a2;
      *buf = v27;
      WebKit::RemoteVideoFrameObjectHeap::pixelBuffer(a1, &v35, buf);
      v28 = *buf;
      *buf = 0;
      if (v28)
      {
        (*(*v28 + 8))(v28);
      }
    }

    else
    {
      v19 = *a3;
      v25 = *(a3 + 8);
      *a3 = 0;
      *(a3 + 8) = 0;
      v26 = *(a3 + 24);
      if (v26 && v25)
      {
        (*(*v26 + 16))(v26, v19);
      }
    }

LABEL_34:
    v22 = 1;
    goto LABEL_35;
  }

  v18 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    if (v11 >= 0x107F)
    {
      v30 = 4223;
    }

    else
    {
      v30 = v11;
    }

    v31 = (&IPC::Detail::messageDescriptions)[3 * v30];
    v32 = *(a3 + 56);
    *buf = 136315394;
    *&buf[4] = v31;
    *&buf[12] = 2048;
    *&buf[14] = v32;
    _os_log_error_impl(&dword_19D52D000, v18, OS_LOG_TYPE_ERROR, "Unhandled synchronous message %s to %llu", buf, 0x16u);
  }

  v19 = *a3;
  v20 = *(a3 + 8);
  *a3 = 0;
  *(a3 + 8) = 0;
  v21 = *(a3 + 24);
  if (v21 && v20)
  {
    (*(*v21 + 16))(v21, v19);
  }

  v22 = 0;
LABEL_35:
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v8, v19);
  return v22;
}

atomic_ullong *WebKit::RemoteVideoFrameObjectHeapProxyProcessor::didReceiveMessage(WebKit::RemoteVideoFrameObjectHeapProxyProcessor *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = (this + 8);
  while (1)
  {
    v6 = *v5;
    if ((*v5 & 1) == 0)
    {
      break;
    }

    v7 = *v5;
    atomic_compare_exchange_strong_explicit(v5, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_6:
  v8 = *(a3 + 25);
  if (v8 > 0x689)
  {
    if (v8 == 1674)
    {
      IPC::Decoder::decode<std::tuple<WebCore::SharedMemoryHandle>>(a3, buf);
      if (BYTE2(v33) != 1)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v5);
      }

      WebKit::RemoteDevice::setSharedVideoFrameMemory(this);
      if ((v33 & 0x10000) == 0)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v5);
      }
    }

    else
    {
      if (v8 != 1675)
      {
LABEL_22:
        v12 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          if (v8 >= 0x107F)
          {
            v17 = 4223;
          }

          else
          {
            v17 = v8;
          }

          v18 = (&IPC::Detail::messageDescriptions)[3 * v17];
          v19 = *(a3 + 7);
          *buf = 136315394;
          *&buf[4] = v18;
          v32 = 2048;
          v33 = v19;
          _os_log_error_impl(&dword_19D52D000, v12, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
        }

        v13 = *a3;
        v14 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v15 = *(a3 + 3);
        if (v15 && v14)
        {
          (*(*v15 + 16))(v15, v13);
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v5);
      }

      IPC::Decoder::decode<std::tuple<IPC::Semaphore>>(a3, buf);
      if (buf[8] != 1)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v5);
      }

      WebKit::RemoteDevice::setSharedVideoFrameSemaphore(this, buf);
      if ((buf[8] & 1) == 0)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v5);
      }

      IPC::Semaphore::destroy(buf);
    }

    v16 = buf;
    goto LABEL_36;
  }

  if (v8 != 1672)
  {
    if (v8 == 1673)
    {
      v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v10)
      {
        v11 = v9;
        IPC::Decoder::decode<std::optional<mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>>>(v27, a3);
        if (v30 == 1)
        {
          *buf = v11;
          buf[8] = 0;
          v35 = 0;
          if (v29 == 1)
          {
            mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>::variant(&buf[8], v27);
            v35 = 1;
            v36 = 1;
            if ((v30 & 1) != 0 && (v29 & 1) != 0 && v28 == 2)
            {
              WTF::MachSendRight::~MachSendRight(v27);
              if ((v36 & 1) == 0)
              {
LABEL_52:
                v20 = *a3;
                v21 = *(a3 + 1);
                *a3 = 0;
                *(a3 + 1) = 0;
                v22 = *(a3 + 3);
                if (!v22)
                {
                  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v5);
                }

                if (!v21)
                {
                  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v5);
                }

                (*(*v22 + 16))(v22, v20);
                if ((v36 & 1) == 0)
                {
                  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v5);
                }
              }
            }
          }

          else
          {
            v36 = 1;
          }

          WebKit::RemoteVideoFrameObjectHeapProxyProcessor::newVideoFrameBuffer(this, *buf, &buf[8]);
          if ((v36 & 1) == 0 || v35 != 1 || v34 != 2)
          {
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v5);
          }

          v16 = &buf[8];
LABEL_36:
          WTF::MachSendRight::~MachSendRight(v16);
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v5);
        }
      }

      buf[0] = 0;
      v36 = 0;
      goto LABEL_52;
    }

    goto LABEL_22;
  }

  IPC::Decoder::decode<std::optional<mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>>>(buf, a3);
  if (v35 != 1)
  {
    v27[0] = 0;
    v30 = 0;
    goto LABEL_57;
  }

  v27[0] = 0;
  v29 = 0;
  if (v34 == 1)
  {
    mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>::variant(v27, buf);
    v29 = 1;
    v30 = 1;
    if ((v35 & 1) != 0 && (v34 & 1) != 0 && BYTE2(v33) == 2)
    {
      WTF::MachSendRight::~MachSendRight(buf);
      if ((v30 & 1) == 0)
      {
LABEL_57:
        v23 = *a3;
        v24 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v25 = *(a3 + 3);
        if (!v25)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v5);
        }

        if (!v24)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v5);
        }

        (*(*v25 + 16))(v25, v23);
        if ((v30 & 1) == 0)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v5);
        }
      }
    }
  }

  else
  {
    v30 = 1;
  }

  WebKit::RemoteVideoFrameObjectHeapProxyProcessor::newConvertedVideoFrameBuffer(this, v27);
  if ((v30 & 1) != 0 && v29 == 1 && v28 == 2)
  {
    v16 = v27;
    goto LABEL_36;
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v5);
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages18RemoteShaderModule15CompilationInfoENS2_22StreamServerConnectionEN6WebKit18RemoteShaderModuleES9_FvONS_17CompletionHandlerIFvONS_6VectorINS8_6WebGPU18CompilationMessageELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EE1D0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages18RemoteShaderModule15CompilationInfoENS2_22StreamServerConnectionEN6WebKit18RemoteShaderModuleES9_FvONS_17CompletionHandlerIFvONS_6VectorINS8_6WebGPU18CompilationMessageELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EE1D0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages18RemoteShaderModule15CompilationInfoENS2_22StreamServerConnectionEN6WebKit18RemoteShaderModuleES9_FvONS_17CompletionHandlerIFvONS_6VectorINS8_6WebGPU18CompilationMessageELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EE4callESH_(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 8);
  v4 = *(*(a1 + 16) + 40);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3532;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v3;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v13 = v5;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, a2[3]);
  v6 = a2[3];
  if (v6)
  {
    v7 = *a2;
    v8 = 48 * v6;
    do
    {
      IPC::ArgumentCoder<WebKit::WebGPU::CompilationMessage,void>::encode(v5, v7);
      v7 += 48;
      v8 -= 48;
    }

    while (v8);
  }

  IPC::Connection::sendMessageImpl(v4, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages18RemoteTextDetector6DetectENS2_22StreamServerConnectionEN6WebKit18RemoteTextDetectorES9_FvNS_23ObjectIdentifierGenericIN7WebCore31RenderingResourceIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONS_6VectorINSB_14ShapeDetection12DetectedTextELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EE1F8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages18RemoteTextDetector6DetectENS2_22StreamServerConnectionEN6WebKit18RemoteTextDetectorES9_FvNS_23ObjectIdentifierGenericIN7WebCore31RenderingResourceIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONS_6VectorINSB_14ShapeDetection12DetectedTextELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EE1F8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages18RemoteTextDetector6DetectENS2_22StreamServerConnectionEN6WebKit18RemoteTextDetectorES9_FvNS_23ObjectIdentifierGenericIN7WebCore31RenderingResourceIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONS_6VectorINSB_14ShapeDetection12DetectedTextELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EE4callESN_(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 8);
  v4 = *(*(a1 + 16) + 40);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3539;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v3;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v13 = v5;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, a2[3]);
  v6 = a2[3];
  if (v6)
  {
    v7 = *a2;
    v8 = 40 * v6;
    do
    {
      IPC::ArgumentCoder<WebCore::ShapeDetection::DetectedText,void>::encode(v5, v7);
      v7 += 40;
      v8 -= 40;
    }

    while (v8);
  }

  IPC::Connection::sendMessageImpl(v4, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

unint64_t IPC::Decoder::decode<IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(_BYTE *a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::decode(a2, a1);
  if ((a1[16] & 1) == 0)
  {
    v5 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages26RemoteVideoFrameObjectHeap11PixelBufferEN6WebKit26RemoteVideoFrameObjectHeapES8_FvONS2_29ObjectIdentifierReadReferenceINS_23ObjectIdentifierGenericINS7_30RemoteVideoFrameIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvNS_9RetainPtrIP10__CVBufferEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSL_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10EE220;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages26RemoteVideoFrameObjectHeap11PixelBufferEN6WebKit26RemoteVideoFrameObjectHeapES8_FvONS2_29ObjectIdentifierReadReferenceINS_23ObjectIdentifierGenericINS7_30RemoteVideoFrameIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvNS_9RetainPtrIP10__CVBufferEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSL_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10EE220;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages26RemoteVideoFrameObjectHeap11PixelBufferEN6WebKit26RemoteVideoFrameObjectHeapES8_FvONS2_29ObjectIdentifierReadReferenceINS_23ObjectIdentifierGenericINS7_30RemoteVideoFrameIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvNS_9RetainPtrIP10__CVBufferEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSL_EE4callESL_(uint64_t a1, CFTypeRef *a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<__CVBuffer *,void>::encode(*(a1 + 8), *a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

void IPC::ArgumentCoder<std::tuple<WebKit::SharedVideoFrame>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<WebKit::SharedVideoFrame,void>::decode(a1, &v9);
  if (v12 & 1) != 0 || ((v5 = *a1, v6 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v7 = *(a1 + 3)) != 0) ? (v8 = v6 == 0) : (v8 = 1), !v8 && ((*(*v7 + 16))(v7, v5), (v12)))
  {
    *a2 = v9;
    *(a2 + 16) = v10;
    mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>::variant((a2 + 24), v11);
    v4 = v12;
    *(a2 + 48) = 1;
    if ((v4 & 1) != 0 && v11[16] == 2)
    {
      WTF::MachSendRight::~MachSendRight(v11);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

_BYTE *mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>::variant(_BYTE *result, uint64_t a2)
{
  *result = 0;
  result[16] = -1;
  v3 = *(a2 + 16);
  if (v3 <= 1)
  {
    if (*(a2 + 16))
    {
      *result = *a2;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v3 == 2)
  {
    result = WTF::MachSendRight::MachSendRight();
  }

  else
  {
    if (v3 != 3)
    {
      return result;
    }

    *result = *a2;
  }

  result[16] = *(a2 + 16);
  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages26RemoteVideoFrameObjectHeap18ConvertFrameBufferEN6WebKit26RemoteVideoFrameObjectHeapES8_FvONS7_16SharedVideoFrameEONS_17CompletionHandlerIFvN7WebCore21DestinationColorSpaceEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSD_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10EE248;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages26RemoteVideoFrameObjectHeap18ConvertFrameBufferEN6WebKit26RemoteVideoFrameObjectHeapES8_FvONS7_16SharedVideoFrameEONS_17CompletionHandlerIFvN7WebCore21DestinationColorSpaceEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSD_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10EE248;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages26RemoteVideoFrameObjectHeap18ConvertFrameBufferEN6WebKit26RemoteVideoFrameObjectHeapES8_FvONS7_16SharedVideoFrameEONS_17CompletionHandlerIFvN7WebCore21DestinationColorSpaceEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSD_EE4callESD_(uint64_t a1, CFTypeRef *a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t WTF::ThreadSafeWeakPtrControlBlock::strongDeref<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>(void)const::{lambda(void)#1}::operator()(uint64_t *a1, void *a2)
{
  v3 = *a1;
  result = a1[1];
  if (result)
  {
    result = (*(*result + 24))(result);
  }

  v4 = 0;
  v5 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](v3);
  }

  v6 = *(v3 + 16) - 1;
  *(v3 + 16) = v6;
  atomic_compare_exchange_strong_explicit(v3, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != 1)
  {
    v7 = v6;
    result = WTF::Lock::unlockSlow(v3);
    v6 = v7;
  }

  if (!v6)
  {

    return WTF::fastFree(v3, a2);
  }

  return result;
}

void IPC::Decoder::decode<std::optional<mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>>>(_BYTE *a1, uint64_t *a2)
{
  v4 = a2[2];
  v5 = *a2;
  v6 = a2[1];
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    a2[1] = 0;
    v15 = a2[3];
    if (v15)
    {
      if (v6)
      {
        (*(*v15 + 16))(v15);
        v5 = *a2;
        v6 = a2[1];
        goto LABEL_25;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_25:
    *a2 = 0;
    a2[1] = 0;
    v16 = a2[3];
    if (v16)
    {
      if (v6)
      {
        (*(*v16 + 16))(v16, v5);
        v5 = *a2;
        v6 = a2[1];
        goto LABEL_28;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_28:
    *a2 = 0;
    a2[1] = 0;
    v17 = a2[3];
    if (v17 && v6)
    {
      (*(*v17 + 16))(v17, v5);
    }

    goto LABEL_13;
  }

  a2[2] = (v4 + 1);
  if (!v4)
  {
    goto LABEL_25;
  }

  v7 = *v4;
  if (v7 >= 2)
  {
    goto LABEL_28;
  }

  if (!v7)
  {
    *a1 = 0;
    a1[24] = 0;
    a1[32] = 1;
    return;
  }

  IPC::ArgumentCoder<mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>,void>::decode<IPC::Decoder>(a2, v18);
  if (v19 & 1) != 0 || (v9 = *a2, v10 = a2[1], *a2 = 0, a2[1] = 0, (v11 = a2[3]) != 0) && v10 && ((*(*v11 + 16))(v11, v9), (v19))
  {
    mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>::variant(a1, v18);
    a1[24] = 1;
    v8 = v19;
    a1[32] = 1;
    if ((v8 & 1) == 0)
    {
      return;
    }

    if (v18[16] != 2)
    {
      return;
    }

    WTF::MachSendRight::~MachSendRight(v18);
    if (a1[32])
    {
      return;
    }

    goto LABEL_14;
  }

LABEL_13:
  *a1 = 0;
  a1[32] = 0;
LABEL_14:
  v12 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v13 = a2[3];
  if (v13 && v12)
  {
    v14 = *(*v13 + 16);

    v14();
  }
}

uint64_t WebKit::NetworkTransportStream::NetworkTransportStream(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 8), a2);
  v8 = *(a2 + 8);
  atomic_fetch_add(v8, 1u);
  *(a1 + 24) = v8;
  *(a1 + 32) = a3;
  if (a3)
  {
    v9 = a3;
  }

  *(a1 + 40) = a4;
  switch(a4)
  {
    case 0:
      goto LABEL_6;
    case 1:
      *(a1 + 41) = 1;
      return a1;
    case 2:
LABEL_6:
      *(a1 + 41) = a4;
      break;
  }

  WebKit::NetworkTransportStream::receiveLoop(a1);
  return a1;
}

void sub_19D967DC8(_Unwind_Exception *a1, void *a2)
{
  v5 = *(v2 + 24);
  *(v2 + 24) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v3, a2);
  if (*v2 == 1)
  {
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void WebKit::NetworkTransportStream::receiveLoop(WebKit::NetworkTransportStream *this)
{
  if (*(this + 41) == 1)
  {
    __break(0xC471u);
  }

  else
  {
    v2 = *(this + 4);
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
    v3 = *(this + 1);
    atomic_fetch_add(v3, 1u);
    v4 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
    *v4 = MEMORY[0x1E69E9818];
    v4[1] = 50331650;
    v4[2] = WTF::BlockPtr<void ()(NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkTransportStream::receiveLoop(void)::$_0>(WebKit::NetworkTransportStream::receiveLoop(void)::$_0)::{lambda(void *,NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)#1}::__invoke;
    v4[3] = &WTF::BlockPtr<void ()(NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkTransportStream::receiveLoop(void)::$_0>(WebKit::NetworkTransportStream::receiveLoop(void)::$_0)::descriptor;
    v4[4] = v3;
    nw_connection_receive(v2, 0, 0xFFFFFFFF, v4);

    _Block_release(v4);
  }
}

WTF *WebKit::NetworkTransportStream::sendBytes(WTF *result, char *a2, WTF *this, BOOL a4, uint64_t *a5)
{
  if (*(result + 41) == 2)
  {
    LOBYTE(v21) = 8;
    WTF::CompletionHandler<void ()(std::optional<WebCore::Exception> &&)>::operator()(a5);
    result = 0;
    v22 = 0;
    return result;
  }

  v7 = this;
  v8 = result;
  v9 = *(result + 4);
  v21 = 0;
  LODWORD(v22) = 0;
  HIDWORD(v22) = this;
  if (this)
  {
    if (this >> 32)
    {
      __break(0xC471u);
      return result;
    }

    v11 = WTF::fastMalloc(this);
    LODWORD(v22) = v7;
    v21 = v11;
    do
    {
      v12 = *a2++;
      *v11 = v12;
      v11 = (v11 + 1);
      v7 = (v7 - 1);
    }

    while (v7);
  }

  WTF::makeDispatchData<unsigned char>(&v21, &v20);
  v13 = v20;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v8 + 8), v8);
  v14 = *(v8 + 8);
  atomic_fetch_add(v14, 1u);
  v15 = *a5;
  *a5 = 0;
  v16 = malloc_type_malloc(0x38uLL, 0x10E0040B81F93D4uLL);
  v17 = *MEMORY[0x1E6977E88];
  *v16 = MEMORY[0x1E69E9818];
  v16[1] = 50331650;
  v16[2] = WTF::BlockPtr<void ()(NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkTransportStream::sendBytes(std::span<unsigned char const,18446744073709551615ul>,BOOL,WTF::CompletionHandler<void ()(std::optional<WebCore::Exception> &&)> &&)::$_0>(WebKit::NetworkTransportStream::sendBytes(std::span<unsigned char const,18446744073709551615ul>,BOOL,WTF::CompletionHandler<void ()(std::optional<WebCore::Exception> &&)> &&)::$_0)::{lambda(void *,NSObject  {objcproto11OS_nw_error}*)#1}::__invoke;
  v16[3] = &WTF::BlockPtr<void ()(NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkTransportStream::sendBytes(std::span<unsigned char const,18446744073709551615ul>,BOOL,WTF::CompletionHandler<void ()(std::optional<WebCore::Exception> &&)> &&)::$_0>(WebKit::NetworkTransportStream::sendBytes(std::span<unsigned char const,18446744073709551615ul>,BOOL,WTF::CompletionHandler<void ()(std::optional<WebCore::Exception> &&)> &&)::$_0)::descriptor;
  v16[4] = v14;
  *(v16 + 40) = a4;
  v16[6] = v15;
  nw_connection_send(v9, v13, v17, a4, v16);
  _Block_release(v16);
  v19 = v20;
  v20 = 0;
  if (v19)
  {
  }

  result = v21;
  if (v21)
  {
    v21 = 0;
    LODWORD(v22) = 0;
    return WTF::fastFree(result, v18);
  }

  return result;
}

void sub_19D96814C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, WTF *a10, WTF::StringImpl *a11, char a12)
{
  _Block_release(v12);
  if (a9)
  {
  }

  if (a10)
  {
    WTF::fastFree(a10, v14);
  }

  _Unwind_Resume(a1);
}

uint64_t WebKit::NetworkTransportStream::cancelReceive(uint64_t result)
{
  v1 = *(result + 41);
  if (*(result + 41))
  {
    if (v1 == 2)
    {
      v2 = *(result + 24);
      if (v2)
      {
        v3 = *(v2 + 8);
        if (v3)
        {
          ++v3[4];
          result = WebKit::NetworkTransportSession::destroyStream(v3, *(result + 16));
          if (v3[4] == 1)
          {
            v4 = *(*v3 + 24);

            return v4(v3);
          }

          else
          {
            --v3[4];
          }
        }
      }
    }

    else if (v1 == 1)
    {
      result = 179;
      __break(0xC471u);
    }
  }

  else
  {
    *(result + 41) = 1;
  }

  return result;
}

uint64_t WebKit::NetworkTransportStream::cancelSend(uint64_t result)
{
  v1 = *(result + 41);
  if (*(result + 41))
  {
    if (v1 == 1)
    {
      v2 = *(result + 24);
      if (v2)
      {
        v3 = *(v2 + 8);
        if (v3)
        {
          ++v3[4];
          result = WebKit::NetworkTransportSession::destroyStream(v3, *(result + 16));
          if (v3[4] == 1)
          {
            v4 = *(*v3 + 24);

            return v4(v3);
          }

          else
          {
            --v3[4];
          }
        }
      }
    }

    else if (v1 == 2)
    {
      result = 200;
      __break(0xC471u);
    }
  }

  else
  {
    *(result + 41) = 2;
  }

  return result;
}

unsigned int *WTF::BlockPtr<void ()(NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkTransportStream::sendBytes(std::span<unsigned char const,18446744073709551615ul>,BOOL,WTF::CompletionHandler<void ()(std::optional<WebCore::Exception> &&)> &&)::$_0>(WebKit::NetworkTransportStream::sendBytes(std::span<unsigned char const,18446744073709551615ul>,BOOL,WTF::CompletionHandler<void ()(std::optional<WebCore::Exception> &&)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);

    return WTF::fastFree(result, a2);
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkTransportStream::sendBytes(std::span<unsigned char const,18446744073709551615ul>,BOOL,WTF::CompletionHandler<void ()(std::optional<WebCore::Exception> &&)> &&)::$_0>(WebKit::NetworkTransportStream::sendBytes(std::span<unsigned char const,18446744073709551615ul>,BOOL,WTF::CompletionHandler<void ()(std::optional<WebCore::Exception> &&)> &&)::$_0)::{lambda(void *,NSObject  {objcproto11OS_nw_error}*)#1}::__invoke(uint64_t result, nw_error_t error)
{
  v2 = *(result + 32);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v5 = result;
      ++*v3;
      if (error)
      {
        if (nw_error_get_error_domain(error) == nw_error_domain_posix && nw_error_get_error_code(error) == 89)
        {
          v9 = 0;
          WTF::CompletionHandler<void ()(std::optional<WebCore::Exception> &&)>::operator()((v5 + 48));
        }

        else
        {
          v8 = 0;
          v9 = 1;
          WTF::CompletionHandler<void ()(std::optional<WebCore::Exception> &&)>::operator()((v5 + 48));
        }

        if (v9 == 1 && v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v6);
        }
      }

      else
      {
        WTF::CompletionHandler<void ()(std::optional<WebCore::Exception> &&)>::operator()((result + 48));
        if (*(v5 + 40) == 1)
        {
          v7 = *(v3 + 41);
          if (*(v3 + 41))
          {
            if (v7 == 1)
            {
              WebKit::NetworkTransportStream::cancelSend(v3);
            }

            else if (v7 == 2)
            {
              result = 94;
              __break(0xC471u);
              return result;
            }
          }

          else
          {
            *(v3 + 41) = 2;
          }
        }
      }

      return WTF::RefCounted<WebKit::NetworkTransportStream>::deref(v3, v6);
    }
  }

  return result;
}

void sub_19D9685F8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12)
{
  if (a12 == 1 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  WTF::RefCounted<WebKit::NetworkTransportStream>::deref(v12, a2);
  _Unwind_Resume(a1);
}

unsigned int *WTF::BlockPtr<void ()(NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkTransportStream::receiveLoop(void)::$_0>(WebKit::NetworkTransportStream::receiveLoop(void)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, a2);
    }
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkTransportStream::receiveLoop(void)::$_0>(WebKit::NetworkTransportStream::receiveLoop(void)::$_0)::{lambda(void *,NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)#1}::__invoke(uint64_t result, void *a2, int a3, int a4, nw_error_t error)
{
  v5 = *(result + 32);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      ++*v6;
      v7 = *(v6 + 24);
      if (!v7)
      {
        return WTF::RefCounted<WebKit::NetworkTransportStream>::deref(v6, a2);
      }

      v8 = *(v7 + 8);
      if (!v8)
      {
        return WTF::RefCounted<WebKit::NetworkTransportStream>::deref(v6, a2);
      }

      ++v8[4];
      if (error)
      {
        if (nw_error_get_error_domain(error) != nw_error_domain_posix || nw_error_get_error_code(error) != 89)
        {
          v10 = *(v6 + 16);
          LOBYTE(v22) = 15;
          v23 = 0;
          v24 = 1;
          WebKit::NetworkTransportSession::streamReceiveBytes(v8, v10, 0, 0, 0, &v22);
          if (v24 == 1)
          {
            v11 = v23;
            v23 = 0;
            if (v11)
            {
              if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v11, a2);
              }
            }
          }
        }

        goto LABEL_30;
      }

      v13 = *(v6 + 16);
      v20 = 0;
      v21 = 0;
      if (a2)
      {
        v14 = WTF::fastMalloc(0x10);
        *v14 = &unk_1F10EE300;
        v14[1] = &v20;
        v22 = v14;
        dispatch_data_apply_span();
        if (v22)
        {
          (*(*v22 + 8))(v22);
        }

        v15 = v20;
        v16 = HIDWORD(v21);
      }

      else
      {
        v16 = 0;
        v15 = 0;
      }

      LOBYTE(v22) = 0;
      v24 = 0;
      WebKit::NetworkTransportSession::streamReceiveBytes(v8, v13, v15, v16, a4, &v22);
      if (v24 == 1)
      {
        v17 = v23;
        v23 = 0;
        if (v17)
        {
          if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, a2);
          }
        }
      }

      v18 = v20;
      if (v20)
      {
        v20 = 0;
        LODWORD(v21) = 0;
        WTF::fastFree(v18, a2);
        if (a4)
        {
LABEL_23:
          v19 = *(v6 + 41);
          if (*(v6 + 41))
          {
            if (v19 == 2)
            {
              WebKit::NetworkTransportStream::cancelReceive(v6);
            }

            else if (v19 == 1)
            {
              result = 141;
              __break(0xC471u);
              return result;
            }
          }

          else
          {
            *(v6 + 41) = 1;
          }

          goto LABEL_30;
        }
      }

      else if (a4)
      {
        goto LABEL_23;
      }

      WebKit::NetworkTransportStream::receiveLoop(v6);
LABEL_30:
      if (v8[4] == 1)
      {
        (*(*v8 + 24))(v8);
      }

      else
      {
        --v8[4];
      }

      return WTF::RefCounted<WebKit::NetworkTransportStream>::deref(v6, a2);
    }
  }

  return result;
}

void sub_19D968900(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  if (a10)
  {
    WTF::fastFree(a10, a2);
  }

  if (v13[4] == 1)
  {
    (*(*v13 + 24))(v13);
  }

  else
  {
    --v13[4];
  }

  WTF::RefCounted<WebKit::NetworkTransportStream>::deref(v12, a2);
  _Unwind_Resume(a1);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkTransportStream::receiveLoop(void)::$_0::operator() const(NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)::{lambda(NSObject  {objcproto16OS_dispatch_data}*)#1}::operator() const(NSObject  {objcproto16OS_dispatch_data}*)::{lambda(std::span<unsigned char const,18446744073709551615ul>)#1},BOOL,std::span<unsigned char const,18446744073709551615ul>>::call(uint64_t result, void *__src, size_t __n)
{
  if (!__n)
  {
    return 1;
  }

  v5 = *(result + 8);
  v7 = *(v5 + 8);
  v6 = *(v5 + 12);
  v8 = __n + v6;
  if (__n + v6 > v7)
  {
    v9 = v7 + (v7 >> 1);
    if (v9 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v9 <= v8)
    {
      v9 = v8;
    }

    if (v9 <= 0x10)
    {
      v10 = 16;
    }

    else
    {
      v10 = v9;
    }

    result = WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(*(result + 8), v10);
    v6 = *(v5 + 12);
  }

  if (v8 >= v6)
  {
    memcpy((*v5 + v6), __src, __n);
    *(v5 + 12) = v8;
    return 1;
  }

  __break(0xC471u);
  return result;
}

void WebKit::RemoteWebLockRegistry::didReceiveMessage(WebKit::RemoteWebLockRegistry *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  ++*(this + 2);
  v5 = *(a3 + 25);
  if (v5 != 1703)
  {
    if (v5 != 1702)
    {
      v12 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v5 >= 0x107F)
        {
          v14 = 4223;
        }

        else
        {
          v14 = v5;
        }

        v15 = (&IPC::Detail::messageDescriptions)[3 * v14];
        v16 = *(a3 + 7);
        *buf = 136315394;
        *&buf[4] = v15;
        *&buf[12] = 2048;
        *&buf[14] = v16;
        _os_log_error_impl(&dword_19D52D000, v12, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }

      goto LABEL_15;
    }

    IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3, &v20);
    if (v22)
    {
      IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::decode(a3, buf);
      if (v26)
      {
        v6 = *(a3 + 1);
        v7 = *(a3 + 2);
        v8 = *a3;
        if (v6 <= &v7[-*a3])
        {
          *a3 = 0;
          *(a3 + 1) = 0;
          v17 = *(a3 + 3);
          if (v17)
          {
            if (v6)
            {
              (*(*v17 + 16))(v17);
              v6 = *(a3 + 1);
            }
          }

          else
          {
            v6 = 0;
          }
        }

        else
        {
          *(a3 + 2) = v7 + 1;
          if (v7)
          {
            v9 = *v7;
            if (v9 < 2)
            {
              if (v22)
              {
                v23 = *buf;
                v24 = *&buf[16];
                WebKit::RemoteWebLockRegistry::didCompleteLockRequest(this, v20, v21, &v23, v9 & 1);
                goto LABEL_16;
              }

LABEL_25:
              __break(1u);
            }

            goto LABEL_34;
          }
        }

        *a3 = 0;
        *(a3 + 1) = 0;
        v18 = *(a3 + 3);
        if (!v18)
        {
          v6 = 0;
LABEL_30:
          v8 = 0;
LABEL_34:
          *a3 = 0;
          *(a3 + 1) = 0;
          v19 = *(a3 + 3);
          if (v19 && v6)
          {
            (*(*v19 + 16))(v19, v8);
          }

          goto LABEL_15;
        }

        if (!v6)
        {
          goto LABEL_30;
        }

        (*(*v18 + 16))(v18);
      }

LABEL_33:
      v8 = *a3;
      v6 = *(a3 + 1);
      goto LABEL_34;
    }

LABEL_15:
    v10 = *a3;
    v11 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v13 = *(a3 + 3);
    if (v13 && v11)
    {
      (*(*v13 + 16))(v13, v10);
    }

    goto LABEL_16;
  }

  IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3, &v20);
  if ((v22 & 1) == 0)
  {
    goto LABEL_15;
  }

  IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::decode(a3, buf);
  if ((v26 & 1) == 0)
  {
    goto LABEL_33;
  }

  if ((v22 & 1) == 0)
  {
    goto LABEL_25;
  }

  v23 = *buf;
  v24 = *&buf[16];
  WebKit::RemoteWebLockRegistry::didStealLock(this, v20, v21, &v23);
LABEL_16:
  if (*(this + 2) == 1)
  {
    (*(*this + 8))(this, v10, v11);
  }

  else
  {
    --*(this + 2);
  }
}

uint64_t WebKit::RemoteXRBinding::didReceiveStreamMessage(WebKit::RemoteXRBinding *this, IPC::StreamServerConnection *a2, IPC::Decoder *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = *(*(this + 8) + 8);
  if (!v3)
  {
    result = 92;
    __break(0xC471u);
    return result;
  }

  if ((*(v3 + 56) & 0x2000) == 0)
  {
    v5 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      v30 = *(a3 + 25);
      if (v30 >= 0x107F)
      {
        v30 = 4223;
      }

      v31 = (&IPC::Detail::messageDescriptions)[3 * v30];
      v35 = 136315138;
      v36 = v31;
      _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteXRBinding", &v35, 0xCu);
    }

    v6 = *a3;
    v7 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    result = *(a3 + 3);
    if (result)
    {
      if (v7)
      {
        return (*(*result + 16))(result, v6);
      }
    }

    return result;
  }

  atomic_fetch_add(this + 2, 1u);
  v10 = *(a3 + 25);
  switch(v10)
  {
    case 0x6A8u:
      v18 = IPC::Decoder::decode<WebCore::WebGPU::TextureFormat>(a3);
      if ((v18 & 0x100) == 0)
      {
        goto LABEL_21;
      }

      v19 = v18;
      v20 = IPC::Decoder::decode<std::optional<WebCore::WebGPU::TextureFormat>>(a3);
      if ((v20 & 0x10000) == 0)
      {
        goto LABEL_21;
      }

      v21 = v20;
      v22 = IPC::Decoder::decode<WTF::OptionSet<WebCore::WebGPU::TextureUsage>>(a3);
      if ((v22 & 0x100) == 0)
      {
        goto LABEL_21;
      }

      v23 = v22;
      v24 = IPC::Decoder::decode<unsigned long long>(a3);
      if ((v25 & 1) == 0)
      {
        goto LABEL_21;
      }

      v26 = *&v24;
      v27 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v28 & 1) == 0)
      {
        goto LABEL_21;
      }

      result = WebKit::RemoteXRBinding::createProjectionLayer(this, v19, v21, v23, v27, v26);
      break;
    case 0x6AAu:
      v13 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v14 & 1) == 0)
      {
        goto LABEL_21;
      }

      v15 = v13;
      v16 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v17 & 1) == 0)
      {
        goto LABEL_21;
      }

      result = WebKit::RemoteXRBinding::getViewSubImage(this, v15, v16);
      break;
    case 0x6A9u:
      result = WebKit::RemoteXRBinding::destruct(this);
      break;
    default:
      v29 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v10 >= 0x107F)
        {
          v32 = 4223;
        }

        else
        {
          v32 = v10;
        }

        v33 = (&IPC::Detail::messageDescriptions)[3 * v32];
        v34 = *(a3 + 7);
        v35 = 136315394;
        v36 = v33;
        v37 = 2048;
        v38 = v34;
        _os_log_error_impl(&dword_19D52D000, v29, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", &v35, 0x16u);
      }

LABEL_21:
      v11 = *a3;
      v12 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      result = *(a3 + 3);
      if (result && v12)
      {
        result = (*(*result + 16))(result, v11);
      }

      break;
  }

  if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, this + 2);
    return (*(*this + 8))(this, v11, v12);
  }

  return result;
}

void WebKit::RemoteXRProjectionLayer::didReceiveStreamMessage(WebKit::RemoteXRProjectionLayer *this, IPC::StreamServerConnection *a2, const char **a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = *(*(this + 6) + 8);
  if (!v5)
  {
    v11 = "T *WTF::WeakRef<WebKit::RemoteGPU>::ptr() const [T = WebKit::RemoteGPU, WeakPtrImpl = WTF::DefaultWeakPtrImpl]";
    v18 = 92;
    __break(0xC471u);
    goto LABEL_66;
  }

  v4 = a3;
  if ((*(v5 + 56) & 0x2000) == 0)
  {
    v6 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      v26 = *(v4 + 25);
      if (v26 >= 0x107F)
      {
        v26 = 4223;
      }

      v27 = (&IPC::Detail::messageDescriptions)[3 * v26];
      *buf = 136315138;
      *&buf[4] = v27;
      _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteXRProjectionLayer", buf, 0xCu);
    }

    v7 = *v4;
    v8 = *(v4 + 1);
    *v4 = 0;
    *(v4 + 1) = 0;
    v9 = *(v4 + 3);
    if (v9)
    {
      if (v8)
      {
        (*(*v9 + 16))(v9, v7);
      }
    }

    return;
  }

  v3 = this;
  atomic_fetch_add(this + 2, 1u);
  v10 = *(a3 + 25);
  if (v10 == 1707)
  {
    WebKit::RemoteTexture::destruct(this);
    goto LABEL_46;
  }

  if (v10 == 1708)
  {
    goto LABEL_46;
  }

  if (v10 != 1709)
  {
    v24 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v10 >= 0x107F)
      {
        v28 = 4223;
      }

      else
      {
        v28 = v10;
      }

      v29 = (&IPC::Detail::messageDescriptions)[3 * v28];
      v30 = *(v4 + 7);
      *buf = 136315394;
      *&buf[4] = v29;
      v42 = 2048;
      *v43 = v30;
      _os_log_error_impl(&dword_19D52D000, v24, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", buf, 0x16u);
    }

    a2 = *v4;
    a3 = *(v4 + 1);
    *v4 = 0;
    *(v4 + 1) = 0;
    v25 = *(v4 + 3);
    if (v25 && a3)
    {
      (*(*v25 + 16))(v25, a2);
    }

    goto LABEL_46;
  }

  v11 = a3[1];
  v12 = ((*(v4 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = v12 - *v4;
  v14 = v11 >= v13;
  v15 = &v11[-v13];
  if (!v14 || v15 <= 7)
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    v31 = *(v4 + 3);
    if (v31)
    {
      if (v11)
      {
        (*(*v31 + 16))(v31);
        v11 = *(v4 + 1);
      }
    }

    else
    {
      v11 = 0;
    }

LABEL_55:
    *v4 = 0;
    *(v4 + 1) = 0;
    v18 = *(v4 + 3);
    if (!v18)
    {
LABEL_56:
      buf[0] = 0;
      v44 = 0;
      goto LABEL_57;
    }

LABEL_67:
    if (v11)
    {
      (*(*v18 + 16))(v18);
    }

    goto LABEL_56;
  }

  *(v4 + 2) = v12 + 1;
  if (!v12)
  {
    goto LABEL_55;
  }

  v17 = *v12;
  IPC::Decoder::takeLastAttachment(v4, v35);
  if (v36 != 1)
  {
    buf[0] = 0;
    v44 = 0;
    goto LABEL_43;
  }

  IPC::Decoder::takeLastAttachment(v4, v37);
  if (v38 == 1)
  {
    IPC::Decoder::takeLastAttachment(v4, v39);
    if (v40 != 1)
    {
      buf[0] = 0;
      v44 = 0;
LABEL_39:
      if (v38)
      {
        WTF::MachSendRight::~MachSendRight(v37);
      }

      goto LABEL_41;
    }

    v11 = *(v4 + 1);
    v19 = ((*(v4 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    v20 = v19 - *v4;
    v14 = v11 >= v20;
    v21 = &v11[-v20];
    if (v14 && v21 > 7)
    {
      *(v4 + 2) = v19 + 1;
      if (v19)
      {
        if (v36 & 1) != 0 && (v38)
        {
          v22 = *v19;
          *buf = v17;
          WTF::MachSendRight::MachSendRight();
          WTF::MachSendRight::MachSendRight();
          WTF::MachSendRight::MachSendRight();
          *&v43[5] = v22;
          v23 = 1;
LABEL_26:
          v44 = v23;
          if (v40)
          {
            WTF::MachSendRight::~MachSendRight(v39);
          }

          goto LABEL_39;
        }

LABEL_66:
        __break(1u);
        goto LABEL_67;
      }
    }

    else
    {
      *v4 = 0;
      *(v4 + 1) = 0;
      v33 = *(v4 + 3);
      if (v33)
      {
        if (v11)
        {
          (*(*v33 + 16))(v33);
          v11 = *(v4 + 1);
        }
      }

      else
      {
        v11 = 0;
      }
    }

    *v4 = 0;
    *(v4 + 1) = 0;
    v34 = *(v4 + 3);
    if (v34 && v11)
    {
      (*(*v34 + 16))(v34);
    }

    v23 = 0;
    buf[0] = 0;
    goto LABEL_26;
  }

  buf[0] = 0;
  v44 = 0;
LABEL_41:
  if (v36)
  {
    WTF::MachSendRight::~MachSendRight(v35);
  }

LABEL_43:
  if (v44)
  {
    goto LABEL_44;
  }

LABEL_57:
  a2 = *v4;
  a3 = *(v4 + 1);
  *v4 = 0;
  *(v4 + 1) = 0;
  v32 = *(v4 + 3);
  if (v32)
  {
    if (a3)
    {
      (*(*v32 + 16))(v32, a2);
      if (v44)
      {
LABEL_44:
        WebKit::RemoteXRProjectionLayer::startFrame(v3);
        if (v44)
        {
          WTF::MachSendRight::~MachSendRight(&v43[1]);
          WTF::MachSendRight::~MachSendRight(&v42);
          WTF::MachSendRight::~MachSendRight(&buf[8]);
        }
      }
    }
  }

LABEL_46:
  if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3, a2, a3);
  }
}