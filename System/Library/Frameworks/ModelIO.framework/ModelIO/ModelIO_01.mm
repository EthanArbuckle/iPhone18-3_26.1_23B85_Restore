void sub_239E67F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_239E5B240(v32 - 128);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  *(v32 - 128) = &a29;
  sub_239E61AB0((v32 - 128));

  _Unwind_Resume(a1);
}

void sub_239E681C0(void *a1)
{
  v6 = a1;
  v3 = objc_msgSend_textureSamplerValue(v6, v1, v2);

  if (!v3)
  {
    v4 = objc_opt_new();
    objc_msgSend_setTextureSamplerValue_(v6, v5, v4);
  }
}

uint64_t sub_239E682E4(uint64_t a1)
{
  *(a1 + 96) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(a1 + 120) = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 112) = 1;
  v2 = *MEMORY[0x277D860B8];
  v3 = *(MEMORY[0x277D860B8] + 16);
  v4 = *(MEMORY[0x277D860B8] + 32);
  v5 = *(MEMORY[0x277D860B8] + 48);
  *(a1 + 128) = *MEMORY[0x277D860B8];
  *(a1 + 144) = v3;
  *(a1 + 160) = v4;
  *(a1 + 176) = v5;
  *(a1 + 192) = v2;
  *(a1 + 208) = v3;
  *(a1 + 224) = v4;
  *(a1 + 240) = v5;
  *(a1 + 256) = v2;
  *(a1 + 272) = v3;
  *(a1 + 288) = v4;
  *(a1 + 304) = v5;
  *(a1 + 320) = v2;
  *(a1 + 336) = v3;
  *(a1 + 352) = v4;
  *(a1 + 368) = v5;
  v6 = *a1;
  *(a1 + 8) = *a1;
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v9 = v7 - v6;
    v10 = v9 >> 4;
    if ((v9 >> 4) <= 1)
    {
      v10 = 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    sub_239E6861C(a1, v11);
  }

  *v6 = 0x7FEFFFFFFFFFFFFFLL;
  *(v6 + 16) = 0u;
  v8 = v6 + 32;
  v12 = *(a1 + 24);
  *(a1 + 8) = v8;
  *(a1 + 32) = v12;
  v13 = *(a1 + 40);
  if (v12 >= v13)
  {
    v15 = v13 - v12;
    v16 = v15 >> 4;
    if ((v15 >> 4) <= 1)
    {
      v16 = 1;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFE0)
    {
      v17 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v16;
    }

    sub_239E6861C(a1 + 24, v17);
  }

  *v12 = *(a1 + 96);
  *(v12 + 16) = 0u;
  v14 = v12 + 32;
  v18 = *(a1 + 48);
  *(a1 + 32) = v14;
  *(a1 + 56) = v18;
  v19 = *(a1 + 64);
  if (v18 >= v19)
  {
    v21 = v19 - v18;
    v22 = v21 >> 4;
    if ((v21 >> 4) <= 1)
    {
      v22 = 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFE0)
    {
      v23 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    sub_239E6861C(a1 + 48, v23);
  }

  *v18 = *(a1 + 96);
  *(v18 + 16) = 0u;
  v20 = v18 + 32;
  result = a1 + 72;
  v25 = *(a1 + 72);
  *(a1 + 56) = v20;
  *(a1 + 80) = v25;
  v26 = *(a1 + 88);
  if (v25 >= v26)
  {
    v32 = v26 - v25;
    v33 = v32 >> 4;
    if ((v32 >> 4) <= 1)
    {
      v33 = 1;
    }

    if (v32 >= 0x7FFFFFFFFFFFFFE0)
    {
      v34 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v34 = v33;
    }

    sub_239E6861C(result, v34);
  }

  *v25 = *(a1 + 96);
  __asm { FMOV            V0.4S, #1.0 }

  *(v25 + 16) = _Q0;
  *(a1 + 80) = v25 + 32;
  return result;
}

void sub_239E6861C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_239E79870();
}

uint64_t sub_239E68724(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__12SdfAssetPathE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17D48);
}

uint64_t sub_239E687A8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_239E68724(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return MEMORY[0x282207DB0](a1, sub_239EF2EC0, &stru_284D17D48);
  }
}

const void **sub_239E6883C(void *a1, const void **a2)
{
  v4 = sub_239E68B60(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    sub_239E68AA8();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_239EF2FF8(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_239E68A84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_239EF32D4(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_239E68B44(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_239EF32D4(v3, v2);
  _Unwind_Resume(a1);
}

unint64_t sub_239E68B60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return sub_239E68BA0(&v5, a2, v3);
}

unint64_t sub_239E68BA0(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return sub_239EF3214(a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return sub_239EF3168(a2, a3);
  }

  else
  {
    return sub_239EF3070(a2, a3);
  }
}

void sub_239E68DA8(pxrInternal__aapl__pxrReserved__::UsdShadeShader *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v7 = a2;
  MEMORY[0x23EE7ED20](&v27, "varname");
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v29, a1, &v27);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (sub_239E5E5B4(&v29) && (pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput() & 1) != 0)
  {
    v27 = 0u;
    v28 = 0u;
    MEMORY[0x23EE7ED20](&v25, "result");
    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetOutput(&v27, a1, &v25);
    if ((v25 & 7) != 0)
    {
      atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (pxrInternal__aapl__pxrReserved__::UsdShadeOutput::IsOutput())
    {
      *&v25 = MEMORY[0x23EE7F740](&v27);
      if (!atomic_load(MEMORY[0x277D86578]))
      {
        sub_239EB5678(MEMORY[0x277D86578]);
      }

      if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
      {
        if (pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::HasConnectedSource())
        {
          v25 = 0u;
          v26 = 0u;
          LODWORD(v21) = 1;
          v22 = 0;
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
          v24 = 0;
          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
          *(&v26 + 1) = 0;
          *&v25 = MEMORY[0x277D867A8] + 16;
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          sub_239E5B574(&v23);
          v20 = 0;
          v19 = 0;
          pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetConnectedSource();
          pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetInput(&v21, &v25, &v20);
          if (sub_239E5E5B4(&v21) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput())
          {
            v9 = sub_239E6929C(&v21, a3, a4);
          }

          else
          {
            MEMORY[0x23EE7ED20](&v14, "frame:stPrimvarName");
            pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetInput(&v15, &v25, &v14);
            if ((v14 & 7) != 0)
            {
              atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if (sub_239E5E5B4(&v15) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput())
            {
              v9 = sub_239E6929C(&v15, a3, a4);
            }

            else
            {
              v9 = -1;
            }

            if ((v18 & 7) != 0)
            {
              atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            sub_239E5B574(&v17);
            if (v16)
            {
              sub_239E5E560(v16);
            }
          }

          if ((v24 & 7) != 0)
          {
            atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          sub_239E5B574(&v23);
          if (v22)
          {
            sub_239E5E560(v22);
          }

          if ((v20 & 7) != 0)
          {
            atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          MEMORY[0x23EE7EB40](&v25);
        }

        else
        {
          v9 = sub_239E6929C(&v29, a3, a4);
        }

        if (v9 != -1)
        {
          sub_239E681C0(v7);
          v12 = objc_msgSend_textureSamplerValue(v7, v10, v11);
          objc_msgSend_setMappingChannel_(v12, v13, v9);
        }
      }
    }

    if ((BYTE8(v28) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v28 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(&v28);
    if (*(&v27 + 1))
    {
      sub_239E5E560(*(&v27 + 1));
    }
  }

  if ((v32 & 7) != 0)
  {
    atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v31);
  if (v30)
  {
    sub_239E5E560(v30);
  }
}

void sub_239E69184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  if ((a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((a3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_239EF06E8(va);
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x23EE7EB40](va1);
  sub_239EF0744(v10 - 112);
  sub_239EF06E8(v10 - 80);

  _Unwind_Resume(a1);
}

uint64_t sub_239E6929C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v12[0] = 0;
  v12[1] = 0;
  v4 = *a3;
  pxrInternal__aapl__pxrReserved__::UsdShadeInput::Get();
  memset(&__p, 0, sizeof(__p));
  if (sub_239E69514(v12))
  {
    v5 = sub_239E693F0(v12);
    if ((*v5 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*v5 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
    }
  }

  else
  {
    if (!sub_239EF28FC(v12))
    {
      goto LABEL_8;
    }

    EmptyString = sub_239EF2934(v12);
  }

  std::string::operator=(&__p, EmptyString);
LABEL_8:
  if (a2 + 8 == sub_239E69484(a2, &__p.__r_.__value_.__l.__data_))
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    p_p = &__p;
    v7 = *(sub_239E631F0(a2, &__p.__r_.__value_.__l.__data_) + 56);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_239E5B240(v12);
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_239E693C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_239E5B240(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_239E693F0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_239E69514(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return MEMORY[0x282207DB0](a1, sub_239EF428C, &stru_284D17C00);
  }
}

uint64_t sub_239E69484(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = sub_239E5BA74(a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || sub_239E5BA74(a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

uint64_t sub_239E69514(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 13)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17C00);
  }

  else
  {
    return 0;
  }
}

void sub_239E6954C(void *a1)
{
  v12 = a1;
  sub_239E681C0(v12);
  v3 = objc_msgSend_textureSamplerValue(v12, v1, v2);
  v6 = objc_msgSend_hardwareFilter(v3, v4, v5);

  if (!v6)
  {
    v7 = objc_opt_new();
    v10 = objc_msgSend_textureSamplerValue(v12, v8, v9);
    objc_msgSend_setHardwareFilter_(v10, v11, v7);
  }
}

void sub_239E695E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void *sub_239E696B4(void *result)
{
  v1 = result;
  v3 = *result;
  v2 = result[1];
  if (v2 != *result)
  {
    v4 = v2 - 12;
    do
    {
      v5 = *(v4 + 4);
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(v4 - 4);
      result = *(v4 - 12);
      if (result)
      {
        result = sub_239E5E560(result);
      }

      v6 = v4 - 20;
      v4 -= 32;
    }

    while (v6 != v3);
  }

  v1[1] = v3;
  return result;
}

uint64_t sub_239E69748(uint64_t a1, uint64_t *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = sub_239E697D8(a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || sub_239E697D8(a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

uint64_t sub_239E697D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  if (*a2)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (v3)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4 == 0;
    }

    return !v6;
  }

  else
  {
    if (v3 == v4)
    {
      return 0;
    }

    v8 = v3 & 0xFFFFFFFFFFFFFFF8;
    v9 = v4 & 0xFFFFFFFFFFFFFFF8;
    v10 = *(v8 + 8);
    v11 = *(v9 + 8);
    if (v10 < v11)
    {
      return 1;
    }

    if (v10 != v11)
    {
      return 0;
    }

    else
    {
      v14 = *(v9 + 16);
      v12 = v9 + 16;
      v13 = v14;
      v15 = *(v12 + 23);
      v18 = *(v8 + 16);
      v16 = v8 + 16;
      v17 = v18;
      v19 = *(v16 + 23);
      if (v19 >= 0)
      {
        v20 = *(v16 + 23);
      }

      else
      {
        v20 = *(v16 + 8);
      }

      if (v19 >= 0)
      {
        v21 = v16;
      }

      else
      {
        v21 = v17;
      }

      if (v15 >= 0)
      {
        v22 = *(v12 + 23);
      }

      else
      {
        v22 = *(v12 + 8);
      }

      if (v15 >= 0)
      {
        v23 = v12;
      }

      else
      {
        v23 = v13;
      }

      if (v22 >= v20)
      {
        v24 = v20;
      }

      else
      {
        v24 = v22;
      }

      v25 = memcmp(v21, v23, v24);
      if (v25)
      {
        return v25 < 0;
      }

      else
      {
        return v20 < v22;
      }
    }
  }
}

void sub_239E698A8(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v13 = a1;
  v14 = a3;
  if (pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::HasConnectedSource())
  {
    v26 = 0u;
    v27 = 0uLL;
    LODWORD(v22) = 1;
    v23 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    *&v26 = MEMORY[0x277D867A8] + 16;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(&v24);
    v21 = 0;
    v20 = 0;
    pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetConnectedSource();
    v16 = sub_239E5815C(&v22, &v26 + 1, &v27);
    pxrInternal__aapl__pxrReserved__::UsdShadeShader::_GetStaticTfType(v16);
    pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
    IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
    if ((v25 & 7) != 0)
    {
      atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(&v24);
    if (v23)
    {
      sub_239E5E560(v23);
    }

    if (IsA)
    {
      v19[1] = 0;
      v19[2] = 0;
      sub_239E5815C(&v22, &v26 + 1, &v27);
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
      v19[0] = MEMORY[0x277D86708] + 16;
      if ((v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(&v24);
      if (v23)
      {
        sub_239E5E560(v23);
      }

      pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetIdAttr(&v22, v19);
      v18 = *a5;
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
    }

    MEMORY[0x23EE7EB40](&v26);
  }

  sub_239E69DC4(v13, a2, v15, a5, a6, a8);
}

void sub_239E69CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a4 & 7) != 0)
  {
    atomic_fetch_add_explicit((a4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x23EE7E820](va);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x23EE7EB40](va1);

  _Unwind_Resume(a1);
}

void sub_239E69DC4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, uint64_t a6)
{
  v31[2] = *MEMORY[0x277D85DE8];
  v9 = a1;
  v31[0] = 0;
  v31[1] = 0;
  v10 = *a4;
  if (pxrInternal__aapl__pxrReserved__::UsdShadeInput::Get())
  {
    if (sub_239E6A188(v31))
    {
      v11 = sub_239EEDF80(v31);
      v12.n128_u64[0] = *v11;
      v12.n128_u32[2] = *(v11 + 8);
      sub_239EF1014(v9, a6, v12);
    }

    else if (sub_239E6A150(v31))
    {
      v13 = sub_239EEDEEC(v31);
      sub_239EF1120(v9, a6, *v13);
    }

    else if (sub_239E6A084(v31))
    {
      LODWORD(v14) = *sub_239E6A0BC(v31);
      objc_msgSend_setFloatValue_(v9, v15, v16, v14);
    }

    else if (sub_239E68724(v31))
    {
      memset(v30, 0, 32);
      *__dst = 0u;
      v17 = sub_239E687A8(v31);
      v18 = v17;
      if (*(v17 + 23) < 0)
      {
        sub_239E5BAE0(__dst, *v17, *(v17 + 8));
      }

      else
      {
        v19 = *v17;
        v30[0] = *(v17 + 16);
        *__dst = v19;
      }

      if (*(v18 + 47) < 0)
      {
        sub_239E5BAE0(&v30[1], *(v18 + 24), *(v18 + 32));
      }

      else
      {
        v20 = *(v18 + 24);
        v30[3] = *(v18 + 40);
        *&v30[1] = v20;
      }

      __p[0] = 0;
      __p[1] = 0;
      v28 = 0;
      if (SHIBYTE(v30[3]) < 0)
      {
        sub_239E5BAE0(__p, v30[1], v30[2]);
      }

      else
      {
        *__p = *&v30[1];
        v28 = v30[3];
      }

      v21 = objc_alloc(MEMORY[0x277CCACA8]);
      if (SHIBYTE(v28) >= 0)
      {
        v23 = objc_msgSend_initWithCString_encoding_(v21, v22, __p, 4, __p[0], __p[1], v28);
      }

      else
      {
        v23 = objc_msgSend_initWithCString_encoding_(v21, v22, __p[0], 4, __p[0], __p[1], v28);
      }

      v24 = v23;
      sub_239E6883C(a5, __p);
      objc_msgSend_setStringValue_(v9, v25, v24);

      if (SHIBYTE(v28) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v30[3]) < 0)
      {
        operator delete(v30[1]);
      }

      if (SHIBYTE(v30[0]) < 0)
      {
        operator delete(__dst[0]);
      }
    }
  }

  sub_239E5B240(v31);

  v26 = *MEMORY[0x277D85DE8];
}

void sub_239E6A000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_239EEDEA8(&__p);
  sub_239E5B240(v22 - 72);

  _Unwind_Resume(a1);
}

uint64_t sub_239E6A084(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 10)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, MEMORY[0x277D827B0]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239E6A0BC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_239E6A084(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v5(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {
    v4 = MEMORY[0x277D827B0];

    return MEMORY[0x282207DB0](a1, sub_239EF3338, v4);
  }
}

uint64_t sub_239E6A150(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 67)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17C20);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239E6A188(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 68)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17C50);
  }

  else
  {
    return 0;
  }
}

void *sub_239E6A1C0(void *result)
{
  v1 = result;
  v3 = *result;
  v2 = result[1];
  if (v2 != *result)
  {
    v4 = v2 - 12;
    do
    {
      v5 = *(v4 + 4);
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(v4 - 4);
      result = *(v4 - 12);
      if (result)
      {
        result = sub_239E5E560(result);
      }

      v6 = v4 - 20;
      v4 -= 32;
    }

    while (v6 != v3);
  }

  v1[1] = v3;
  return result;
}

void sub_239E6A244(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_239E79870();
}

uint64_t sub_239E6A2A0(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_239E797B4();
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

  v19 = a1;
  if (v6)
  {
    sub_239E6A244(a1, v6);
  }

  v7 = 56 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  *v7 = *a2;
  v8 = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 8) = v8;
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  v9 = *(a2 + 40);
  *(a2 + 48) = 0;
  *(v7 + 40) = v9;
  *(a2 + 40) = 0;
  *&v18 = 56 * v2 + 56;
  v10 = a1[1];
  v11 = 56 * v2 + *a1 - v10;
  sub_239E6A40C(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_239E6A4D4(&v16);
  return v15;
}

void sub_239E6A3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_239E6A4D4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_239E6A40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_239EF4398(a1, a4, v7);
      v7 += 56;
      a4 = v12 + 56;
      v12 += 56;
    }

    while (v7 != a3);
    LOBYTE(v10) = 1;
    while (v5 != a3)
    {
      sub_239EF2C1C(a1, v5);
      v5 += 56;
    }
  }

  return sub_239E6A508(v9);
}

void **sub_239E6A4D4(void **a1)
{
  sub_239E6A624(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_239E6A508(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_239EF4400(a1);
  }

  return a1;
}

void *sub_239E6A540(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  if (v3 != *result)
  {
    do
    {
      v4 = *(v3 - 16);
      if ((v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v5 = *(v3 - 24);
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(v3 - 32);
      result = *(v3 - 40);
      if (result)
      {
        result = sub_239E5E560(result);
      }

      v3 -= 48;
    }

    while (v3 != v2);
  }

  v1[1] = v2;
  return result;
}

void sub_239E6A5D0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_239E6A540(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_239E6A624(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 56;
    sub_239EF2C1C(v4, i - 56);
  }
}

void sub_239E6A66C(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_239E6A66C(a1, *a2);
    sub_239E6A66C(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t sub_239E6A6D0(pxrInternal__aapl__pxrReserved__::TfToken *a1)
{
  if (*(a1 + 2) == *(a1 + 1))
  {
    return 0;
  }

  __p[0] = 0;
  __p[1] = 0;
  v10 = 0;
  if ((*a1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = (*a1 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  if (*(EmptyString + 23) < 0)
  {
    sub_239E5BAE0(__p, *EmptyString, *(EmptyString + 8));
  }

  else
  {
    v4 = *EmptyString;
    v10 = *(EmptyString + 16);
    *__p = v4;
  }

  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  while (v5 != v6)
  {
    if ((sub_239E62960(v5, a1) & 1) == 0)
    {
      goto LABEL_20;
    }

    if (*(v5 + 2) && (sub_239E62E30(v5) & 1) == 0)
    {
      v7 = __p;
      if (v10 < 0)
      {
        v7 = __p[0];
      }

      NSLog(&cfstr_SHasAttributeW.isa, v7);
      goto LABEL_20;
    }

    v5 = (v5 + 96);
  }

  if (sub_239E6A810(a1))
  {
    v3 = sub_239E6AA2C(a1);
    goto LABEL_21;
  }

LABEL_20:
  v3 = 0;
LABEL_21:
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_239E6A7EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239E6A810(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if (v3[1] == v2 || !*(v2 + 1))
  {
    return 0;
  }

  NumElements = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(v2);
  v5 = NumElements;
  v6 = a1[19];
  __p[0] = 0;
  __p[1] = 0;
  v28 = 0;
  if ((*a1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = (*a1 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(NumElements);
  }

  if (*(EmptyString + 23) < 0)
  {
    sub_239E5BAE0(__p, *EmptyString, *(EmptyString + 8));
  }

  else
  {
    v9 = *EmptyString;
    v28 = *(EmptyString + 16);
    *__p = v9;
  }

  v10 = a1[14];
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      v12 = *(a1[18] + 4 * i);
      if ((v12 & 0x80000000) != 0 || (v13 = v6 - v12, v6 < v12))
      {
        v23 = __p;
        if (v28 < 0)
        {
          v23 = __p[0];
        }

        NSLog(&cfstr_SFaceZuVertexC.isa, v23, i, *(a1[18] + 4 * i), v6);
        goto LABEL_40;
      }

      v6 -= v12;
    }

    if (!v13)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (v6)
  {
LABEL_16:
    v14 = __p;
    if (v28 < 0)
    {
      v14 = __p[0];
    }

    NSLog(&cfstr_SFaceVertexInd.isa, v14);
    goto LABEL_40;
  }

LABEL_20:
  v15 = a1[19];
  if (v15)
  {
    v16 = a1[23];
    v17 = 4 * v15;
    while (1)
    {
      v18 = *v16;
      if ((v18 & 0x80000000) != 0 || v5 <= v18)
      {
        break;
      }

      ++v16;
      v17 -= 4;
      if (!v17)
      {
        goto LABEL_25;
      }
    }

    v24 = __p;
    if (v28 < 0)
    {
      v24 = __p[0];
    }

    NSLog(&cfstr_SFaceVertexInd_0.isa, v24);
  }

  else
  {
LABEL_25:
    v19 = a1[24];
    if (!v19)
    {
LABEL_30:
      v8 = 1;
      goto LABEL_41;
    }

    v20 = a1[28];
    v21 = 4 * v19;
    while (1)
    {
      v22 = *v20;
      if ((v22 & 0x80000000) != 0 || v10 < v22)
      {
        break;
      }

      ++v20;
      v21 -= 4;
      if (!v21)
      {
        goto LABEL_30;
      }
    }

    v25 = __p;
    if (v28 < 0)
    {
      v25 = __p[0];
    }

    NSLog(&cfstr_SHoleIndexOutO.isa, v25);
  }

LABEL_40:
  v8 = 0;
LABEL_41:
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

void sub_239E6AA04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239E6AA2C(pxrInternal__aapl__pxrReserved__::TfToken *a1)
{
  if ((*a1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = (*a1 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  __p[1] = 0;
  v35 = 0;
  __p[0] = 0;
  if (*(EmptyString + 23) < 0)
  {
    sub_239E5BAE0(__p, *EmptyString, *(EmptyString + 8));
  }

  else
  {
    v3 = *EmptyString;
    v35 = *(EmptyString + 16);
    *__p = v3;
  }

  if (*(a1 + 30) != *(a1 + 35))
  {
    v19 = __p;
    if (v35 < 0)
    {
      v19 = __p[0];
    }

    NSLog(&cfstr_SMismatchCorne.isa, v19);
    goto LABEL_34;
  }

  if (*(a1 + 45) != *(a1 + 50))
  {
    v20 = __p;
    if (v35 < 0)
    {
      v20 = __p[0];
    }

    NSLog(&cfstr_SMismatchCreas.isa, v20);
    goto LABEL_34;
  }

  v4 = *(a1 + 1);
  if (*(a1 + 2) == v4 || !*(v4 + 1))
  {
    v21 = __p;
    if (v35 < 0)
    {
      v21 = __p[0];
    }

    NSLog(&cfstr_SInvalidPoints.isa, v21);
    goto LABEL_34;
  }

  NumElements = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(v4);
  v6 = *(a1 + 30);
  if (v6)
  {
    v7 = *(a1 + 34);
    v8 = 4 * v6;
    while (1)
    {
      v9 = *v7;
      if ((v9 & 0x80000000) != 0 || NumElements <= v9)
      {
        break;
      }

      ++v7;
      v8 -= 4;
      if (!v8)
      {
        goto LABEL_16;
      }
    }

    v24 = __p;
    if (v35 < 0)
    {
      v24 = __p[0];
    }

    NSLog(&cfstr_SCornerIndexOu.isa, v24);
    goto LABEL_34;
  }

LABEL_16:
  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(a1 + 44);
    v12 = 4 * v10;
    while (1)
    {
      v13 = *v11;
      if ((v13 & 0x80000000) != 0 || NumElements <= v13)
      {
        break;
      }

      ++v11;
      v12 -= 4;
      if (!v12)
      {
        goto LABEL_21;
      }
    }

    v25 = __p;
    if (v35 < 0)
    {
      v25 = __p[0];
    }

    NSLog(&cfstr_SCreaseIndexOu.isa, v25);
    goto LABEL_34;
  }

LABEL_21:
  v14 = *(a1 + 45);
  if (v14)
  {
    LODWORD(v15) = 0;
    v16 = *(a1 + 49);
    v17 = 4 * v14;
    do
    {
      v18 = *v16++;
      v15 = v18 + v15;
      v17 -= 4;
    }

    while (v17);
  }

  else
  {
    v15 = 0;
  }

  if (v10 != v15)
  {
    v31 = __p;
    if (v35 < 0)
    {
      v31 = __p[0];
    }

    NSLog(&cfstr_SMismatchCreas_0.isa, v31);
LABEL_34:
    v22 = 0;
    goto LABEL_35;
  }

  v26 = *(a1 + 55);
  v27 = *(a1 + 56);
  if (v26 != v27)
  {
    v22 = 1;
    while (1)
    {
      v28 = *(v26 + 8);
      if (v28)
      {
        break;
      }

LABEL_52:
      v26 += 56;
      if (v26 == v27)
      {
        goto LABEL_35;
      }
    }

    v29 = *(v26 + 40);
    v30 = 4 * v28;
    while (*(a1 + 14) > *v29)
    {
      ++v29;
      v30 -= 4;
      if (!v30)
      {
        goto LABEL_52;
      }
    }

    v32 = *a1 & 0xFFFFFFFFFFFFFFF8;
    if (v32)
    {
      v33 = (v32 + 16);
      if (*(v32 + 39) < 0)
      {
        v33 = *v33;
      }
    }

    else
    {
      v33 = "";
    }

    NSLog(&cfstr_WarningMeshHas.isa, v33);
    goto LABEL_34;
  }

  v22 = 1;
LABEL_35:
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p[0]);
  }

  return v22;
}

void sub_239E6ACE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239E6AD14(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_239E6AE34(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return MEMORY[0x282207DB0](a1, sub_239EB55BC, &stru_284D17B40);
  }
}

std::type_info *sub_239E6ADA8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_239E6AE34(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_284D17B40, v1, v2);
    v1 = sub_239EC8B1C(v1, v5);
    sub_239E5B240(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_239E6AE34(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 21)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17B40);
  }

  else
  {
    return 0;
  }
}

BOOL sub_239E6AE6C(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v16 = *(a1 + 40);
  if (v1 == v16)
  {
    v12 = 0;
  }

  else
  {
    do
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v2 = *v1;
      v18 = v2;
      if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v18 &= 0xFFFFFFFFFFFFFFF8;
      }

      v19 = 0;
      v20 = 0;
      v21 = 0;
      sub_239EC7E90(&v19, v1[1], v1[2], 0xAAAAAAAAAAAAAAABLL * ((v1[2] - v1[1]) >> 5));
      v3 = v19;
      v4 = v20;
      if (v19 == v20)
      {
        v12 = 1;
      }

      else
      {
        do
        {
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          sub_239E5F7D4(&v22, v3);
          v5 = *(v3 + 32);
          v23 = *(v3 + 16);
          v24 = v5;
          v6 = *(v3 + 48);
          *&v25 = v6;
          if (v6)
          {
            v7 = (v6 - 16);
            if (*(&v24 + 1))
            {
              v7 = *(&v24 + 1);
            }

            atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
          }

          v8 = *(v3 + 56);
          *(&v25 + 1) = v8;
          if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *(&v25 + 1) &= 0xFFFFFFFFFFFFFFF8;
          }

          v9 = *(v3 + 64);
          *&v26 = v9;
          if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *&v26 = v26 & 0xFFFFFFFFFFFFFFF8;
          }

          v10 = *(v3 + 80);
          *(&v26 + 1) = *(v3 + 72);
          *&v27 = v10;
          if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *&v27 = v27 & 0xFFFFFFFFFFFFFFF8;
          }

          DWORD2(v27) = *(v3 + 88);
          MEMORY[0x23EE7ED20](&v17, "normals");
          v11 = v17 ^ *(&v25 + 1);
          v12 = (v17 ^ *(&v25 + 1)) > 7;
          if ((v17 & 7) != 0)
          {
            atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v27 & 7) != 0)
          {
            atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v26 & 7) != 0)
          {
            atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((BYTE8(v25) & 7) != 0)
          {
            atomic_fetch_add_explicit((*(&v25 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          sub_239E56C80(&v23);
          sub_239E5B240(&v22);
          if (v11 < 8)
          {
            break;
          }

          v3 += 96;
        }

        while (v3 != v4);
      }

      *&v22 = &v19;
      sub_239EC8004(&v22);
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v1 += 4;
      v13 = v1 == v16 || v12;
    }

    while (v13 != 1);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_239E6B110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_239E6B16C(void *a1, _BYTE *a2, char a3)
{
  v3 = a1[14];
  if (v3)
  {
    v6 = a1[18];
    if (*v6 == 3)
    {
      v7 = 1;
      do
      {
        v8 = v7;
        if (v3 == v7)
        {
          break;
        }

        v9 = v6[v7++];
      }

      while (v9 == 3);
      if (v3 <= v8)
      {
LABEL_20:
        LOBYTE(v3) = 0;
        return v3 & 1;
      }
    }

    LOBYTE(v3) = *a2 ^ 1;
    if ((v3 & 1) == 0 && (a3 & 1) == 0)
    {
      if ((a2[32] != 1 || !sub_239E5B290(a1)) && ((a2[27] & 1) != 0 || a2[26] == 1))
      {
        v10 = *a1 & 0xFFFFFFFFFFFFFFF8;
        if (v10)
        {
          v11 = (v10 + 16);
          if (*(v10 + 39) < 0)
          {
            v11 = *v11;
          }
        }

        else
        {
          v11 = "";
        }

        NSLog(&cfstr_WarningMeshSWi.isa, v11);
LABEL_25:
        LOBYTE(v3) = 1;
        return v3 & 1;
      }

      if (a2[33] == 1)
      {
        v12 = *a1 & 0xFFFFFFFFFFFFFFF8;
        if (v12)
        {
          v13 = (v12 + 16);
          if (*(v12 + 39) < 0)
          {
            v13 = *v13;
          }
        }

        else
        {
          v13 = "";
        }

        NSLog(&cfstr_WarningMeshSWi_0.isa, v13);
        goto LABEL_25;
      }

      goto LABEL_20;
    }
  }

  return v3 & 1;
}

void sub_239E6B2A4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a5, void *a6, pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a7, void *a8, float32x4_t a9, float32x4_t a10, float32x4_t a11, float32x4_t a12)
{
  if (a2 < 3)
  {
    return;
  }

  if (a2 == 4)
  {
    v20 = a4;
    v21 = (*(a3 + 32) + 4 * a4);
    v22 = *(a1 + 32);
    v23 = v22 + 12 * *v21;
    a9.i64[0] = *v23;
    a9.i32[2] = *(v23 + 8);
    v24 = a4 + 1;
    v25 = v22 + 12 * v21[1];
    a12.i64[0] = *v25;
    a12.i32[2] = *(v25 + 8);
    v26 = a4 + 2;
    v27 = v22 + 12 * v21[2];
    a10.i64[0] = *v27;
    a10.i32[2] = *(v27 + 8);
    v28 = a4 + 3;
    v29 = v22 + 12 * v21[3];
    a11.i64[0] = *v29;
    a11.i32[2] = *(v29 + 8);
    v30 = vsubq_f32(a12, a9);
    v31 = vsubq_f32(a11, a10);
    v32 = vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL);
    v33 = vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL);
    v34 = vsubq_f32(a11, a12);
    v35 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL), v30)), v32, v34);
    v36 = vsubq_f32(a10, a12);
    v37 = vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL);
    v38 = vmlaq_f32(vnegq_f32(vmulq_f32(v33, v36)), v31, v37);
    v39 = vmulq_f32(v35, v38);
    if (((v39.f32[2] + v39.f32[0]) + v39.f32[1]) < 0.0)
    {
      v40 = a6;
      v41 = (*a6)++;
      v42 = a5;
      sub_239E56C3C(a5);
      *(*(a5 + 4) + 4 * v41) = a4;
      v43 = (*a6)++;
      sub_239E56C3C(a5);
      *(*(a5 + 4) + 4 * v43) = v24;
      v44 = (*a6)++;
      sub_239E56C3C(a5);
      v45 = *(a5 + 4);
LABEL_7:
      *(v45 + 4 * v44) = v26;
      v46 = (*a8)++;
      sub_239E56C3C(a7);
      *(*(a7 + 4) + 4 * v46) = 3;
      v47 = (*v40)++;
      sub_239E56C3C(v42);
      *(*(v42 + 4) + 4 * v47) = v20;
LABEL_25:
      v74 = (*v40)++;
      sub_239E56C3C(v42);
      *(*(v42 + 4) + 4 * v74) = v26;
      v75 = (*v40)++;
      sub_239E56C3C(v42);
      *(*(v42 + 4) + 4 * v75) = v28;
      v76 = (*a8)++;
      sub_239E56C3C(a7);
      *(*(a7 + 4) + 4 * v76) = 3;
      return;
    }

    v58 = vsubq_f32(a10, a9);
    v59 = vmlaq_f32(vnegq_f32(vmulq_f32(v33, v58)), v31, vextq_s8(vuzp1q_s32(v58, v58), v58, 0xCuLL));
    v60 = vmlaq_f32(vnegq_f32(vmulq_f32(v37, v30)), v36, v32);
    v61 = vmulq_f32(v59, v60);
    if (((v61.f32[2] + v61.f32[0]) + v61.f32[1]) >= 0.0)
    {
      v64 = vmulq_f32(v35, v35);
      v65 = vmulq_f32(v38, v38);
      v66 = vabds_f32(fabsf((v64.f32[2] + v64.f32[0]) + v64.f32[1]), fabsf((v65.f32[2] + v65.f32[0]) + v65.f32[1]));
      v67 = vmulq_f32(v60, v60);
      v68 = vmulq_f32(v59, v59);
      v69 = vabds_f32(fabsf((v67.f32[2] + v67.f32[0]) + v67.f32[1]), fabsf((v68.f32[2] + v68.f32[0]) + v68.f32[1]));
      v40 = a6;
      v70 = (*a6)++;
      v42 = a5;
      sub_239E56C3C(a5);
      v20 = a4;
      *(*(a5 + 4) + 4 * v70) = a4;
      v71 = (*a6)++;
      sub_239E56C3C(a5);
      *(*(a5 + 4) + 4 * v71) = v24;
      v44 = (*a6)++;
      sub_239E56C3C(a5);
      v45 = *(a5 + 4);
      if (v66 >= v69)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v40 = a6;
      v62 = (*a6)++;
      v42 = a5;
      sub_239E56C3C(a5);
      *(*(a5 + 4) + 4 * v62) = a4;
      v63 = (*a6)++;
      sub_239E56C3C(a5);
      *(*(a5 + 4) + 4 * v63) = v24;
      v44 = (*a6)++;
      sub_239E56C3C(a5);
      v45 = *(a5 + 4);
    }

    *(v45 + 4 * v44) = v28;
    v72 = (*a8)++;
    sub_239E56C3C(a7);
    *(*(a7 + 4) + 4 * v72) = 3;
    v73 = (*v40)++;
    sub_239E56C3C(v42);
    *(*(v42 + 4) + 4 * v73) = v24;
    goto LABEL_25;
  }

  if (a2 != 3)
  {
    __p = 0;
    v82 = 0;
    v83 = 0;
    sub_239E96128(&__p, a2);
    v80[0] = v80;
    v80[1] = v80;
    v80[2] = 0;
    v48 = *(a1 + 32) + 12 * *(*(a3 + 32) + 4 * a4);
    *&v49 = *v48;
    DWORD2(v49) = *(v48 + 8);
    v50 = v82;
    if (v82 >= v83)
    {
      v52 = (v82 - __p) >> 4;
      if ((v52 + 1) >> 60)
      {
        sub_239E797B4();
      }

      v53 = (v83 - __p) >> 3;
      if (v53 <= v52 + 1)
      {
        v53 = v52 + 1;
      }

      if (v83 - __p >= 0x7FFFFFFFFFFFFFF0)
      {
        v54 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v54 = v53;
      }

      if (v54)
      {
        sub_239E91AC8(&__p, v54);
      }

      v55 = (16 * v52);
      *v55 = v49;
      v51 = 16 * v52 + 16;
      v56 = v55 - (v82 - __p);
      memcpy(v56, __p, v82 - __p);
      v57 = __p;
      __p = v56;
      v82 = v51;
      v83 = 0;
      if (v57)
      {
        operator delete(v57);
      }
    }

    else
    {
      *v82 = v49;
      v51 = (v50 + 16);
    }

    v82 = v51;
    operator new();
  }

  v16 = (*a6)++;
  sub_239E56C3C(a5);
  *(*(a5 + 4) + 4 * v16) = a4;
  v17 = (*a6)++;
  sub_239E56C3C(a5);
  *(*(a5 + 4) + 4 * v17) = a4 + 1;
  v18 = (*a6)++;
  sub_239E56C3C(a5);
  *(*(a5 + 4) + 4 * v18) = a4 + 2;
  v19 = (*a8)++;
  sub_239E56C3C(a7);
  *(*(a7 + 4) + 4 * v19) = 3;
}

void sub_239E6C7C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36)
{
  sub_239E79AAC(v36 - 168, *(v36 - 160));
  sub_239E9876C(&a26);
  if (__p)
  {
    a30 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_239E6C8D8(uint64_t a1, int a2, int a3, unsigned int a4, unint64_t a5, __int128 *a6, __int128 *a7)
{
  MEMORY[0x23EE7ED20](&v110, "constant");
  v14 = v110 ^ *(a1 + 80);
  if ((v110 & 7) != 0)
  {
    atomic_fetch_add_explicit((v110 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v14 > 7)
  {
    v15 = MEMORY[0x277D86578];
    if (!atomic_load(MEMORY[0x277D86578]))
    {
      sub_239EB5678(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
      goto LABEL_11;
    }

    if (!atomic_load(v15))
    {
      sub_239EB5678(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
LABEL_11:
      v18 = a6[1];
      v107 = *a6;
      v108 = v18;
      v19 = *(a6 + 4);
      v109 = v19;
      if (v19)
      {
        v20 = (v19 - 16);
        if (*(&v108 + 1))
        {
          v20 = *(&v108 + 1);
        }

        atomic_fetch_add_explicit(v20, 1uLL, memory_order_relaxed);
      }

      v21 = a7[1];
      v104 = *a7;
      v105 = v21;
      v22 = *(a7 + 4);
      v106 = v22;
      if (v22)
      {
        v23 = (v22 - 16);
        if (*(&v105 + 1))
        {
          v23 = *(&v105 + 1);
        }

        atomic_fetch_add_explicit(v23, 1uLL, memory_order_relaxed);
      }

      sub_239E6D724(&v107, &v104, a3, a4, a2, a5, a1, *(a1 + 88));
      sub_239E56C80(&v104);
      sub_239E56C80(&v107);
    }

    else
    {
      if (!atomic_load(v15))
      {
        sub_239EB5678(MEMORY[0x277D86578]);
      }

      if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
      {
        goto LABEL_29;
      }

      if (!atomic_load(v15))
      {
        sub_239EB5678(MEMORY[0x277D86578]);
      }

      if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
      {
        goto LABEL_29;
      }

      if (!atomic_load(v15))
      {
        sub_239EB5678(MEMORY[0x277D86578]);
      }

      if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
      {
LABEL_29:
        v27 = a6[1];
        v101 = *a6;
        v102 = v27;
        v28 = *(a6 + 4);
        v103 = v28;
        if (v28)
        {
          v29 = (v28 - 16);
          if (*(&v102 + 1))
          {
            v29 = *(&v102 + 1);
          }

          atomic_fetch_add_explicit(v29, 1uLL, memory_order_relaxed);
        }

        v30 = a7[1];
        v98 = *a7;
        v99 = v30;
        v31 = *(a7 + 4);
        v100 = v31;
        if (v31)
        {
          v32 = (v31 - 16);
          if (*(&v99 + 1))
          {
            v32 = *(&v99 + 1);
          }

          atomic_fetch_add_explicit(v32, 1uLL, memory_order_relaxed);
        }

        sub_239E56710(&v101, &v98, a3, a4, a2, a5, a1, *(a1 + 88));
        sub_239E56C80(&v98);
        sub_239E56C80(&v101);
      }

      else
      {
        if (!atomic_load(v15))
        {
          sub_239EB5678(MEMORY[0x277D86578]);
        }

        if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
        {
          v34 = a6[1];
          v95 = *a6;
          v96 = v34;
          v35 = *(a6 + 4);
          v97 = v35;
          if (v35)
          {
            v36 = (v35 - 16);
            if (*(&v96 + 1))
            {
              v36 = *(&v96 + 1);
            }

            atomic_fetch_add_explicit(v36, 1uLL, memory_order_relaxed);
          }

          v37 = a7[1];
          v92 = *a7;
          v93 = v37;
          v38 = *(a7 + 4);
          v94 = v38;
          if (v38)
          {
            v39 = (v38 - 16);
            if (*(&v93 + 1))
            {
              v39 = *(&v93 + 1);
            }

            atomic_fetch_add_explicit(v39, 1uLL, memory_order_relaxed);
          }

          sub_239F568A0(&v95, &v92, a3, a4, a2, a5, a1, *(a1 + 88));
          sub_239E56C80(&v92);
          sub_239E56C80(&v95);
        }

        else
        {
          if (!atomic_load(v15))
          {
            sub_239EB5678(MEMORY[0x277D86578]);
          }

          if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
          {
            v41 = a6[1];
            v89 = *a6;
            v90 = v41;
            v42 = *(a6 + 4);
            v91 = v42;
            if (v42)
            {
              v43 = (v42 - 16);
              if (*(&v90 + 1))
              {
                v43 = *(&v90 + 1);
              }

              atomic_fetch_add_explicit(v43, 1uLL, memory_order_relaxed);
            }

            v44 = a7[1];
            v86 = *a7;
            v87 = v44;
            v45 = *(a7 + 4);
            v88 = v45;
            if (v45)
            {
              v46 = (v45 - 16);
              if (*(&v87 + 1))
              {
                v46 = *(&v87 + 1);
              }

              atomic_fetch_add_explicit(v46, 1uLL, memory_order_relaxed);
            }

            sub_239F56B98(&v89, &v86, a3, a4, a2, a5, a1, *(a1 + 88));
            sub_239E56C80(&v86);
            sub_239E56C80(&v89);
          }

          else
          {
            if (!atomic_load(v15))
            {
              sub_239EB5678(MEMORY[0x277D86578]);
            }

            if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
            {
              v48 = a6[1];
              v83 = *a6;
              v84 = v48;
              v49 = *(a6 + 4);
              v85 = v49;
              if (v49)
              {
                v50 = (v49 - 16);
                if (*(&v84 + 1))
                {
                  v50 = *(&v84 + 1);
                }

                atomic_fetch_add_explicit(v50, 1uLL, memory_order_relaxed);
              }

              v51 = a7[1];
              v80 = *a7;
              v81 = v51;
              v52 = *(a7 + 4);
              v82 = v52;
              if (v52)
              {
                v53 = (v52 - 16);
                if (*(&v81 + 1))
                {
                  v53 = *(&v81 + 1);
                }

                atomic_fetch_add_explicit(v53, 1uLL, memory_order_relaxed);
              }

              sub_239F56EEC(&v83, &v80, a3, a4, a2, a5, a1, *(a1 + 88));
              sub_239E56C80(&v80);
              sub_239E56C80(&v83);
            }

            else
            {
              if (!atomic_load(v15))
              {
                sub_239EB5678(MEMORY[0x277D86578]);
              }

              if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
              {
                v55 = a6[1];
                v77 = *a6;
                v78 = v55;
                v56 = *(a6 + 4);
                v79 = v56;
                if (v56)
                {
                  v57 = (v56 - 16);
                  if (*(&v78 + 1))
                  {
                    v57 = *(&v78 + 1);
                  }

                  atomic_fetch_add_explicit(v57, 1uLL, memory_order_relaxed);
                }

                v58 = a7[1];
                v74 = *a7;
                v75 = v58;
                v59 = *(a7 + 4);
                v76 = v59;
                if (v59)
                {
                  v60 = (v59 - 16);
                  if (*(&v75 + 1))
                  {
                    v60 = *(&v75 + 1);
                  }

                  atomic_fetch_add_explicit(v60, 1uLL, memory_order_relaxed);
                }

                sub_239F571DC(&v77, &v74, a3, a4, a2, a5, a1, *(a1 + 88));
                sub_239E56C80(&v74);
                sub_239E56C80(&v77);
              }

              else
              {
                if (!atomic_load(v15))
                {
                  sub_239EB5678(MEMORY[0x277D86578]);
                }

                if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
                {
                  v62 = a6[1];
                  v71 = *a6;
                  v72 = v62;
                  v63 = *(a6 + 4);
                  v73 = v63;
                  if (v63)
                  {
                    v64 = (v63 - 16);
                    if (*(&v72 + 1))
                    {
                      v64 = *(&v72 + 1);
                    }

                    atomic_fetch_add_explicit(v64, 1uLL, memory_order_relaxed);
                  }

                  v65 = a7[1];
                  v68 = *a7;
                  v69 = v65;
                  v66 = *(a7 + 4);
                  v70 = v66;
                  if (v66)
                  {
                    v67 = (v66 - 16);
                    if (*(&v69 + 1))
                    {
                      v67 = *(&v69 + 1);
                    }

                    atomic_fetch_add_explicit(v67, 1uLL, memory_order_relaxed);
                  }

                  sub_239F574D4(&v71, &v68, a3, a4, a2, a5, a1, *(a1 + 88));
                  sub_239E56C80(&v68);
                  sub_239E56C80(&v71);
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    sub_239F563D4(a1, a4);
  }
}

void sub_239E6CF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_239E56C80(&a9);
  sub_239E56C80(&a15);
  _Unwind_Resume(a1);
}

void *sub_239E6D048(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_239E56D84(v6);
  if (a2 > 0xAAAAAAAAAAAAAA9)
  {
    v3 = -1;
  }

  else
  {
    v3 = 12 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6[0])
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

uint64_t sub_239E6D0E8(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v6 = 0;
  v5 = 0;
  sub_239E5B364(a1);
  v7 = &v5;
  sub_239E6D160(a1, a2, &v7);
  return a1;
}

void sub_239E6D160(unint64_t *a1, unint64_t a2, uint64_t **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_239E6D048(a1, a2);
              v7 = v10;
              if (v3)
              {
                v11 = 0;
                do
                {
                  v12 = v10 + v11;
                  v13 = *(v9 + v11);
                  *(v12 + 2) = *(v9 + v11 + 8);
                  *v12 = v13;
                  v11 += 12;
                }

                while (12 * v3 != v11);
              }
            }

            v14 = *a3;
            v15 = 12 * v3;
            do
            {
              v16 = v7 + v15;
              v17 = *v14;
              *(v16 + 2) = *(v14 + 2);
              *v16 = v17;
              v15 += 12;
            }

            while (12 * a2 != v15);
          }

          v18 = v7;
          goto LABEL_31;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v24 = a2;
      }

      else
      {
        v24 = *a1;
      }

      v25 = sub_239E6D048(a1, a2);
      v18 = v25;
      if (v3)
      {
        v26 = 12 * v24;
        v27 = v25;
        do
        {
          v28 = *v7;
          *(v27 + 2) = *(v7 + 2);
          *v27 = v28;
          v27 = (v27 + 12);
          v7 = (v7 + 12);
          v26 -= 12;
        }

        while (v26);
      }

      if (v3 < a2)
      {
        v29 = *a3;
        v30 = 12 * v3;
        do
        {
          v31 = v25 + v30;
          v32 = *v29;
          *(v31 + 2) = *(v29 + 2);
          *v31 = v32;
          v30 += 12;
        }

        while (12 * a2 != v30);
      }

      goto LABEL_31;
    }

    if (a2 < 0x1555555555555556)
    {
      v19 = sub_239E6D048(a1, a2);
      v18 = v19;
      v20 = 0;
      v21 = *a3;
      do
      {
        v22 = v19 + v20;
        v23 = *v21;
        *(v22 + 2) = *(v21 + 2);
        *v22 = v23;
        v20 += 12;
      }

      while (12 * a2 != v20);
LABEL_31:
      if (v18 != a1[4])
      {
        sub_239E56C80(a1);
        a1[4] = v18;
      }

      *a1 = a2;
      return;
    }
  }

  sub_239E5B364(a1);
}

uint64_t sub_239E6D38C(uint64_t *a1)
{
  v2 = a1[1];
  if ((v2 & 4) != 0)
  {
    sub_239F73968(v2, a1);
  }

  return sub_239E6D480(a1);
}

__n128 sub_239E6D3C8(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_239E6AE34(a1) & 1) == 0)
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    sub_239EB5788(a1);
  }

  v4 = sub_239E6D38C(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

uint64_t sub_239E6D480(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    sub_239EB5CFC();
  }

  return *a1;
}

void sub_239E6D4E8(unint64_t *a1, unint64_t a2, uint64_t **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_239E6DA1C(a1, a2);
              v7 = v10;
              if (v3)
              {
                for (i = 0; i != v3; ++i)
                {
                  v10[i] = *(v9 + i * 8);
                }
              }
            }

            v12 = *a3;
            v13 = v3;
            do
            {
              v7[v13++] = *v12;
            }

            while (a2 != v13);
          }

          v14 = v7;
          goto LABEL_31;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v19 = a2;
      }

      else
      {
        v19 = *a1;
      }

      v20 = sub_239E6DA1C(a1, a2);
      v14 = v20;
      if (v3)
      {
        v21 = 8 * v19;
        v22 = v20;
        do
        {
          v23 = *v7++;
          *v22++ = v23;
          v21 -= 8;
        }

        while (v21);
      }

      if (v3 < a2)
      {
        v24 = *a3;
        v25 = v3;
        do
        {
          v20[v25++] = *v24;
        }

        while (a2 != v25);
      }

      goto LABEL_31;
    }

    v15 = 8 * a2;
    if (8 * a2 / a2 == 8)
    {
      v16 = sub_239E6DA1C(a1, a2);
      v14 = v16;
      v17 = 0;
      v18 = *a3;
      do
      {
        v16[v17 / 8] = *v18;
        v17 += 8;
      }

      while (v15 != v17);
LABEL_31:
      if (v14 != a1[4])
      {
        sub_239E56C80(a1);
        a1[4] = v14;
      }

      *a1 = a2;
      return;
    }
  }

  sub_239E5B364(a1);
}

uint64_t sub_239E6D6B0(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = 0;
  sub_239E5B364(a1);
  v6 = &v5;
  sub_239E6D4E8(a1, a2, &v6);
  return a1;
}

void sub_239E6D724(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a1, pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a2, int a3, int a4, int a5, unint64_t a6, pxrInternal__aapl__pxrReserved__::VtValue *a7, int a8)
{
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  sub_239E6D6B0(v42, (a4 * a8));
  v37 = a7;
  v14 = sub_239E6DAB4(a7);
  v15 = *(v14 + 16);
  v39 = *v14;
  v40 = v15;
  v16 = *(v14 + 32);
  v41 = v16;
  if (v16)
  {
    v17 = (v16 - 16);
    if (*(&v40 + 1))
    {
      v17 = *(&v40 + 1);
    }

    atomic_fetch_add_explicit(v17, 1uLL, memory_order_relaxed);
  }

  if (!v39)
  {
    sub_239E6DC28(a7, v42);
    goto LABEL_10;
  }

  v36 = a5;
  v38 = a2;
  if (*a1 < a6)
  {
LABEL_7:
    v18 = a6 + 1;
    if (a6 + 1 <= *a2)
    {
      v27 = 0;
      v28 = a8 * a3;
      while (1)
      {
        sub_239E56C3C(a2);
        if (a8 >= 1)
        {
          break;
        }

LABEL_40:
        ++v27;
        a2 = v38;
        v28 += a8;
        if (*v38 / v18 <= v27)
        {
          goto LABEL_8;
        }
      }

      v29 = a8;
      v30 = *(*(v38 + 4) + 4 * v27 * v18 + 4 * v36) * a8;
      v31 = v28;
      while ((v28 & 0x80000000) == 0 && (v30 & 0x8000000000000000) == 0)
      {
        if (v42[0].n128_u64[0] <= v31 || v39 <= v30)
        {
          break;
        }

        sub_239E6DBE4(&v39);
        v33 = v41;
        sub_239E6DBE4(v42);
        *(v43 + 8 * v31++) = *(v33 + 8 * v30++);
        if (!--v29)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
LABEL_8:
      sub_239E6DC28(v37, v42);
    }

    goto LABEL_10;
  }

  v19 = 0;
  v20 = 0;
  v34 = a5;
  while (1)
  {
    sub_239E56C3C(a1);
    if (*(*(a1 + 4) + 4 * v19 * a6) != -1)
    {
      break;
    }

LABEL_27:
    if (*a1 / a6 <= ++v19)
    {
      goto LABEL_7;
    }
  }

  if (a5)
  {
    sub_239E56C3C(a1);
    v21 = *(*(a1 + 4) + 4 * v19 * a6 + 4 * v34 - 4);
  }

  else
  {
    v21 = v19;
  }

  if (a8 < 1)
  {
LABEL_26:
    ++v20;
    a5 = v36;
    a2 = v38;
    goto LABEL_27;
  }

  v22 = v21 * a8;
  v23 = a8;
  v24 = v20 * a8;
  while (((v20 * a8) & 0x80000000) == 0 && (v22 & 0x8000000000000000) == 0)
  {
    if (v42[0].n128_u64[0] <= v24 || v39 <= v22)
    {
      break;
    }

    sub_239E6DBE4(&v39);
    v26 = v41;
    sub_239E6DBE4(v42);
    *(v43 + 8 * v24++) = *(v26 + 8 * v22++);
    if (!--v23)
    {
      goto LABEL_26;
    }
  }

LABEL_10:
  sub_239E56C80(&v39);
  sub_239E56C80(v42);
}

void sub_239E6D9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_239E56C80(va);
  sub_239E56C80(va1);
  _Unwind_Resume(a1);
}

void *sub_239E6DA1C(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_239E56D84(v6);
  if (a2 > 0xFFFFFFFFFFFFFFDLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 8 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6[0])
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

uint64_t sub_239E6DAB4(pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) == 22)
    {
      goto LABEL_6;
    }

    if ((v2 & 4) != 0 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(this, &stru_284D17B70))
    {
      v2 = *(this + 1);
LABEL_6:
      if ((v2 & 4) == 0)
      {
        return *this;
      }

      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(this);
    }
  }

  return MEMORY[0x282207DB0](this, sub_239EB5E60, &stru_284D17B70);
}

void sub_239E6DB70(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(a1, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfVec2f]");
  v6 = sub_239E56B30();
  v8 = sub_239E6DA1C(v6, v7);
  v9 = v8;
  if (v2)
  {
    v10 = 8 * v2;
    v11 = v8;
    do
    {
      v12 = *v3++;
      *v11++ = v12;
      v10 -= 8;
    }

    while (v10);
  }

  sub_239E56C80(a1);
  *a2 = v9;
}

void sub_239E6DBE4(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a1)
{
  v1 = *(a1 + 4);
  if (v1)
  {
    if (*(a1 + 3) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_239E6DB70(a1, a1 + 4);
    }
  }
}

__n128 sub_239E6DC28(pxrInternal__aapl__pxrReserved__::VtValue *a1, __n128 *a2)
{
  if ((sub_239E6DD1C(a1) & 1) == 0)
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    sub_239F577CC(a1);
  }

  v4 = sub_239E6DCE0(a1);
  v5 = v4[2].n128_u64[0];
  v4[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v5;
  v6 = v4[1].n128_u64[0];
  result = *v4;
  v8 = a2[1].n128_u64[0];
  *v4 = *a2;
  v4[1].n128_u64[0] = v8;
  *a2 = result;
  a2[1].n128_u64[0] = v6;
  v9 = v4[1].n128_u64[1];
  v4[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v9;
  return result;
}

uint64_t sub_239E6DCE0(uint64_t *a1)
{
  v2 = a1[1];
  if ((v2 & 4) != 0)
  {
    sub_239F7554C(v2);
  }

  return sub_239E6DD54(a1);
}

uint64_t sub_239E6DD1C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 22)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17B70);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239E6DD54(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    sub_239EB5CFC();
  }

  return *a1;
}

void sub_239E6DDBC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_239E6DE10(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_239E6DE10(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_239E56C80(i))
  {
    i -= 40;
  }

  *(a1 + 8) = a2;
}

pxrInternal__aapl__pxrReserved__::TfToken *sub_239E6DE60(uint64_t a1, void *a2, void *a3, char a4, int a5)
{
  v114 = a2;
  v115 = a3;
  NumElements = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(*(a1 + 8));
  v123 = a1;
  v9 = *(a1 + 8);
  v116 = NumElements / v9[5].n128_i32[2];
  v113 = a5;
  if (a5)
  {
    for (i = *(a1 + 16); v9 != i; v9 += 6)
    {
      MEMORY[0x23EE7ED20](&v125, "uniform");
      v11 = v9[5].n128_u64[0];
      v12 = v125;
      if ((v125 & 7) != 0)
      {
        atomic_fetch_add_explicit((v125 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v12 ^ v11) > 7)
      {
        MEMORY[0x23EE7ED20](&v125, "constant");
        v13 = v9[5].n128_u64[0];
        v14 = v125;
        if ((v125 & 7) != 0)
        {
          atomic_fetch_add_explicit((v125 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v14 ^ v13) > 7)
        {
          MEMORY[0x23EE7ED20](&v125, "vertex");
          v15 = v9[5].n128_u64[0];
          v16 = v125;
          if ((v125 & 7) != 0)
          {
            atomic_fetch_add_explicit((v125 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v16 ^ v15) > 7)
          {
            MEMORY[0x23EE7ED20](&v125, "faceVarying");
            v17 = v9[5].n128_u64[0];
            v18 = v125;
            if ((v125 & 7) != 0)
            {
              atomic_fetch_add_explicit((v125 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v18 ^ v17) <= 7 && !v9[1].n128_u64[0])
            {
              v19 = *(a1 + 152);
              LODWORD(v127[0]) = 0;
              *&v125 = v127;
              sub_239E5AE38(v9[1].n128_u64, v19, &v125);
              if (*(a1 + 152))
              {
                v20 = 0;
                do
                {
                  sub_239E56C3C(&v9[1]);
                  *(v9[3].n128_u64[0] + 4 * v20) = v20;
                  ++v20;
                }

                while (*(a1 + 152) > v20);
              }
            }
          }

          else if (v9[1].n128_u64[0])
          {
            sub_239EC6600(a1, v9);
          }
        }

        else
        {
          sub_239EC677C(v9, v116);
        }
      }

      else
      {
        sub_239EC63C0(a1, v9);
      }
    }
  }

  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v125 = 0u;
  v126 = 0u;
  sub_239E6E634(v123, v21, &v125);
  if (v114 && (a5 & 1) == 0)
  {
    sub_239EC4120(v22, &v125, v114, v116, v23, v24, v21);
  }

  v117 = *(&v126 + 1);
  v112 = v21;
  v120 = sub_239E703D0(v117, v115, 0, v21);
  v25 = v123[1];
  if (v123[2] != v25)
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    do
    {
      v29 = v125;
      v30 = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements((v25 + v27));
      v31 = *(v25 + v27 + 88);
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsArrayValued((v25 + v27)))
      {
        ElementTypeid = pxrInternal__aapl__pxrReserved__::VtValue::GetElementTypeid((v25 + v27));
        v34 = pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(ElementTypeid, v33);
        Sizeof = pxrInternal__aapl__pxrReserved__::TfType::GetSizeof(v34);
        v122 = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements((v25 + v27)) * Sizeof;
      }

      else
      {
        v127[0] = pxrInternal__aapl__pxrReserved__::VtValue::GetType((v25 + v27));
        v122 = pxrInternal__aapl__pxrReserved__::TfType::GetSizeof(v127);
      }

      v38 = v29 + v26;
      v39 = *(v29 + v26 + 8);
      if (v39)
      {
        v121 = v28;
        v40 = v30 / v31;
        if (*(v29 + v26))
        {
          v41 = objc_msgSend_layouts(v117, v36, v37);
          v44 = objc_msgSend_bufferIndex(*(v38 + 8), v42, v43);
          v46 = objc_msgSend_objectAtIndexedSubscript_(v41, v45, v44);
          v119 = objc_msgSend_stride(v46, v47, v48);

          v51 = objc_msgSend_bufferIndex(*(v38 + 8), v49, v50);
          v53 = objc_msgSend_objectAtIndexedSubscript_(v120, v52, v51);
          v118 = objc_msgSend_length(v53, v54, v55);

          v58 = objc_msgSend_bufferIndex(*(v38 + 8), v56, v57);
          v60 = objc_msgSend_objectAtIndexedSubscript_(v120, v59, v58);
          v61 = v40;
          v64 = objc_msgSend_map(v60, v62, v63);

          v69 = objc_msgSend_bytes(v64, v65, v66);
          v70 = *(v25 + v27 + 8);
          if ((v70 & 4) != 0)
          {
            v71 = (*((v70 & 0xFFFFFFFFFFFFFFF8) + 168))(v25 + v27);
          }

          else
          {
            v71 = *(v25 + v27);
          }

          v72 = *(v71 + 32);
          v73 = *(v38 + 8);
          v74 = objc_msgSend_format(*(v29 + v26), v67, v68);
          v75 = sub_239E6FF8C(v74);
          sub_239E70888(v69, v119, v73, v72, v75, *(v29 + v26), v61, v118, v122);
        }

        else
        {
          v76 = objc_msgSend_bufferIndex(v39, v36, v37);
          v64 = objc_msgSend_objectAtIndexedSubscript_(v120, v77, v76);
          v80 = objc_msgSend_layouts(v117, v78, v79);
          v83 = objc_msgSend_bufferIndex(*(v38 + 8), v81, v82);
          v85 = objc_msgSend_objectAtIndexedSubscript_(v80, v84, v83);
          v88 = objc_msgSend_stride(v85, v86, v87);
          sub_239F5E970(v64, v88, *(v38 + 8), v40);
        }

        v28 = v121;
      }

      ++v28;
      v25 = v123[1];
      v27 += 96;
      v26 += 24;
    }

    while (v28 < 0xAAAAAAAAAAAAAAABLL * ((v123[2] - v25) >> 5));
  }

  if (a4)
  {
    sub_239EC5E74(v123, v115, v113);
  }

  else
  {
    sub_239EC4F14(v123, v115);
  }
  v89 = ;
  v90 = [MDLMesh alloc];
  v92 = objc_msgSend_initWithVertexBuffers_vertexCount_descriptor_submeshes_(v90, v91, v120, v116, v117, v89);
  v94 = v92;
  v95 = MEMORY[0x277CCACA8];
  if ((*v123 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = (*v123 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v92);
  }

  if (*(EmptyString + 23) < 0)
  {
    EmptyString = *EmptyString;
  }

  v97 = objc_msgSend_stringWithUTF8String_(v95, v93, EmptyString);
  objc_msgSend_setName_(v94, v98, v97);
  objc_msgSend_setName_(v94, v99, v97);

  v100 = v123[29];
  v124 = v100;
  if ((v100 & 7) != 0)
  {
    v101 = (v100 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v101, 2u, memory_order_relaxed) & 1) == 0)
    {
      v124 = v101;
    }
  }

  v102 = sub_239EC732C(&v124);
  objc_msgSend_setSubdivisionScheme_(v94, v103, v102);
  if ((v124 & 7) != 0)
  {
    atomic_fetch_add_explicit((v124 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v105 = v123[12];
  if (v105)
  {
    objc_msgSend_setComponent_forProtocol_(v94, v104, v105, &unk_284D24918);
  }

  v106 = (v123 + 4);
  if (v123[5] != v123[4])
  {
    v107 = sub_239EC49E0(v94, v106, v115);
    objc_msgSend_setComponent_forProtocol_(v94, v108, v107, &unk_284D25CD0);
  }

  v109 = v123[13];
  if (v109)
  {
    objc_msgSend_setComponent_forProtocol_(v94, v106, v109, &unk_284D24710);
  }

  v127[0] = &v125;
  sub_239EC7DE8(v127);

  return v94;
}

void sub_239E6E500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_239EC40E0(va);

  _Unwind_Resume(a1);
}

void sub_239E6E634(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a2;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v5 = objc_opt_new();
  v6 = *(a3 + 24);
  *(a3 + 24) = v5;

  v51 = sub_239E6EC14(a1 + 1);
  v9 = a1[1];
  v8 = a1[2];
  v49 = a1;
  if (v9 != v8)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = objc_msgSend_objectAtIndexedSubscript_(v51, v7, v10);
      pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v56, (v9 + 72));
      EmptyString = sub_239E6F4F8(&v56, *(v9 + 88));
      v14 = EmptyString;
      if ((v56 & 7) != 0)
      {
        atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (*(v9 + 88) >= 256)
      {
        if ((*(v9 + 56) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v15 = (*(v9 + 56) & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
          v15 = EmptyString;
        }

        if (*(v15 + 23) < 0)
        {
          v15 = *v15;
        }

        if ((*v49 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v16 = (*v49 & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          v16 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
        }

        if (*(v16 + 23) < 0)
        {
          v16 = *v16;
        }

        NSLog(&cfstr_WarningAttribu.isa, v15, v16, *(v9 + 88), 255);
        v14 = 0;
      }

      v17 = *(v9 + 80);
      v55 = v17;
      if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v55 &= 0xFFFFFFFFFFFFFFF8;
      }

      v18 = sub_239E6FD88(&v55);
      if ((v55 & 7) != 0)
      {
        atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v12)
      {
        v19 = v14 == 0;
      }

      else
      {
        v19 = 1;
      }

      v20 = !v19;
      location = 0;
      v53 = 0;
      v54 = 0;
      if (v20 & v18)
      {
        v21 = [MDLVertexAttribute alloc];
        v23 = objc_msgSend_initWithName_format_offset_bufferIndex_(v21, v22, v12, v14, 0, v11);
        v54 = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(v9) / *(v9 + 88);
        v25 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v24, v54);
        objc_msgSend_addObject_(v50, v26, v25);

        if ((objc_msgSend_isEqualToString_(v12, v27, @"jointIndices") & 1) != 0 || objc_msgSend_isEqualToString_(v12, v28, @"jointWeights"))
        {
          objc_msgSend_setInitializationValue_(v23, v28, v29, 0.0);
        }

        objc_msgSend_addOrReplaceAttribute_(*(a3 + 24), v28, v23);
        v32 = objc_msgSend_format(v23, v30, v31);
        v33 = sub_239E6FF8C(v32);
        v36 = objc_msgSend_layouts(*(a3 + 24), v34, v35);
        v38 = objc_msgSend_objectAtIndexedSubscript_(v36, v37, v11);
        objc_msgSend_setStride_(v38, v39, v33);

        ++v11;
      }

      else
      {
        if ((*(v9 + 56) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v40 = (*(v9 + 56) & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          v40 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v18);
        }

        if (*(v40 + 23) < 0)
        {
          v40 = *v40;
        }

        v23 = 0;
        NSLog(&cfstr_WarningUnableT.isa, v40);
      }

      objc_storeStrong(&location, v23);
      v43 = objc_msgSend_copy(v23, v41, v42);
      v44 = v53;
      v53 = v43;

      objc_msgSend_initializationValue(location, v45, v46);
      objc_msgSend_setInitializationValue_(v53, v47, v48);
      sub_239E70198(a3, &location);

      v9 += 96;
      ++v10;
    }

    while (v9 != v8);
  }
}

void sub_239E6E9B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  sub_239EC40E0(v16);

  _Unwind_Resume(a1);
}

id sub_239E6EC14(uint64_t *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280BC3A48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280BC3A48))
  {
    operator new();
  }

  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = 0;
    do
    {
      v17 = 0u;
      v18 = 0u;
      v16 = 0u;
      v14 = 0u;
      memset(v15, 0, sizeof(v15));
      sub_239E5A5D4(&v14, v3);
      if (qword_280BC3A38 + 8 != sub_239E69748(qword_280BC3A38, &v17))
      {
        v13 = &v17;
        v6 = *(sub_239E6F3B0(qword_280BC3A38, &v17) + 40);
        MEMORY[0x23EE7ED20](&v13, "textureCoordinates");
        v8 = v17;
        v9 = v13;
        if ((v13 & 7) != 0)
        {
          atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v9 ^ v8) <= 7)
        {
          if (v5 >= 1)
          {
            v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"%@%d", v6, v5);

            v6 = v10;
          }

          v5 = (v5 + 1);
        }

        objc_msgSend_addObject_(v2, v7, v6);
      }

      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((BYTE8(v16) & 7) != 0)
      {
        atomic_fetch_add_explicit((*(&v16 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      sub_239E56C80(v15);
      sub_239E5B240(&v14);
      v3 += 96;
    }

    while (v3 != v4);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v2;
}

void sub_239E6F108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v23 = (v21 + 120);
  v24 = -128;
  while (1)
  {

    if ((*(v23 - 1) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(v23 - 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v23 -= 2;
    v24 += 16;
    if (!v24)
    {
      if ((a13 & 7) != 0)
      {
        atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a14 & 7) != 0)
      {
        atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a15 & 7) != 0)
      {
        atomic_fetch_add_explicit((a15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a16 & 7) != 0)
      {
        atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a17 & 7) != 0)
      {
        atomic_fetch_add_explicit((a17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a18 & 7) != 0)
      {
        atomic_fetch_add_explicit((a18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a19 & 7) != 0)
      {
        atomic_fetch_add_explicit((a19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a20 & 7) != 0)
      {
        atomic_fetch_add_explicit((a20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      MEMORY[0x23EE802C0](v20, 0x1020C4062D53EE8);
      __cxa_guard_abort(&qword_280BC3A48);
      _Unwind_Resume(a1);
    }
  }
}

void *sub_239E6F314(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_239E697D8(a1, a3, v4 + 4))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_239E697D8(a1, v8 + 4, a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t sub_239E6F3B0(uint64_t a1, uint64_t *a2)
{
  v3 = 0;
  result = *sub_239E6F314(a1, &v3, a2);
  if (!result)
  {
    sub_239EC8360();
  }

  return result;
}

uint64_t sub_239E6F454(uint64_t a1, uint64_t *a2)
{
  v3 = 0;
  result = *sub_239E6F314(a1, &v3, a2);
  if (!result)
  {
    sub_239EC7D5C();
  }

  return result;
}

unint64_t sub_239E6F4F8(uint64_t *a1, int a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280BC3A20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280BC3A20))
  {
    operator new();
  }

  if (a2 < 2)
  {
    result = *(sub_239E6F454(qword_280BC3A10, a1) + 40);
  }

  else
  {
    result = *(sub_239E6F454(qword_280BC3A10, a1) + 40) & 0xFFFFFFFFFFFFF000 | a2;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_239E6FAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v26 = 208;
  while (1)
  {
    v27 = *(v24 + v26);
    if ((v27 & 7) != 0)
    {
      atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v26 -= 16;
    if (v26 == -16)
    {
      if ((a10 & 7) != 0)
      {
        atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a11 & 7) != 0)
      {
        atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a12 & 7) != 0)
      {
        atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a13 & 7) != 0)
      {
        atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a14 & 7) != 0)
      {
        atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a15 & 7) != 0)
      {
        atomic_fetch_add_explicit((a15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a16 & 7) != 0)
      {
        atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a17 & 7) != 0)
      {
        atomic_fetch_add_explicit((a17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a18 & 7) != 0)
      {
        atomic_fetch_add_explicit((a18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a19 & 7) != 0)
      {
        atomic_fetch_add_explicit((a19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a20 & 7) != 0)
      {
        atomic_fetch_add_explicit((a20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a21 & 7) != 0)
      {
        atomic_fetch_add_explicit((a21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a22 & 7) != 0)
      {
        atomic_fetch_add_explicit((a22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a23 & 7) != 0)
      {
        atomic_fetch_add_explicit((a23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      MEMORY[0x23EE802C0](v23, 0x1020C4062D53EE8);
      __cxa_guard_abort(&qword_280BC3A20);
      _Unwind_Resume(a1);
    }
  }
}

BOOL sub_239E6FD88(void *a1)
{
  MEMORY[0x23EE7ED20](&v11, "constant");
  v2 = v11;
  if ((v11 ^ *a1) >= 8)
  {
    MEMORY[0x23EE7ED20](&v10, "uniform");
    v4 = v10;
    if ((v10 ^ *a1) >= 8)
    {
      MEMORY[0x23EE7ED20](&v9, "varying");
      v5 = v9;
      if ((v9 ^ *a1) >= 8)
      {
        MEMORY[0x23EE7ED20](&v8, "vertex");
        v6 = v8;
        if ((v8 ^ *a1) >= 8)
        {
          MEMORY[0x23EE7ED20](&v7, "faceVarying");
          result = (v7 ^ *a1) < 8;
          if ((v7 & 7) != 0)
          {
            atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v6 = v8;
        }

        else
        {
          result = 1;
        }

        if ((v6 & 7) != 0)
        {
          atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v5 = v9;
      }

      else
      {
        result = 1;
      }

      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v4 = v10;
    }

    else
    {
      result = 1;
    }

    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v2 = v11;
  }

  else
  {
    result = 1;
  }

  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

uint64_t sub_239E6FF8C(uint64_t result)
{
  if ((result & 0x1000) != 0)
  {
    return 4 * (((result - 593924) & 0xFFFFFFFFFFFEFFFFLL) == 0);
  }

  if (WORD1(result) > 0xCu)
  {
    goto LABEL_9;
  }

  if (((1 << SBYTE2(result)) & 0x9E0) != 0)
  {
    return 2 * result;
  }

  if (((1 << SBYTE2(result)) & 0x600) != 0 || WORD1(result) == 12)
  {
    return 4 * result;
  }

LABEL_9:
  if (WORD1(result) - 1 >= 2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_239E70004(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_239E797B4();
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
    sub_239E70140(a1, v6);
  }

  v7 = 24 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  *v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *&v18 = v7 + 24;
  v10 = *(a1 + 8);
  v11 = v7 + *a1 - v10;
  sub_239E70244(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_239E7020C(&v16);
  return v15;
}

void sub_239E7012C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_239E7020C(va);
  _Unwind_Resume(a1);
}

void sub_239E70140(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_239E79870();
}

uint64_t sub_239E70198(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    result = sub_239E70004(a1, a2);
  }

  else
  {
    *v4 = *a2;
    v5 = *(a2 + 8);
    v6 = *(a2 + 16);
    v4[1] = v5;
    v4[2] = v6;
    result = (v4 + 3);
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_239E7020C(uint64_t a1)
{
  sub_239E70374(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_239E70244(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  v9 = a4;
  v8 = a4;
  v7[0] = a1;
  v7[1] = &v8;
  v7[2] = &v9;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = *v4;
      *v4 = 0;
      v4[1] = 0;
      *a4 = v5;
      *(a4 + 16) = v4[2];
      v4 += 3;
      a4 += 24;
    }

    while (v4 != a3);
    v9 = a4;
  }

  v7[3] = 1;
  sub_239E702E0(a1, a2, a3);
  return sub_239E70328(v7);
}

void sub_239E702E0(uint64_t a1, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {

      v5 = *v4;
      v4 += 3;
    }

    while (v4 != a3);
  }
}

uint64_t sub_239E70328(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_239EC83EC(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_239E70374(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
  }
}

id sub_239E703D0(void *a1, void *a2, uint64_t a3, void *a4)
{
  v78 = *MEMORY[0x277D85DE8];
  v6 = a1;
  v70 = a2;
  v72 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  context = objc_autoreleasePoolPush();
  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = objc_msgSend_layouts(v6, v8, v9);
    v15 = objc_msgSend_count(v12, v13, v14);

    if (v15 <= v10)
    {
      break;
    }

    v18 = objc_msgSend_layouts(v6, v16, v17);
    v20 = objc_msgSend_objectAtIndexedSubscript_(v18, v19, v10);
    v23 = objc_msgSend_stride(v20, v21, v22);

    ++v10;
    if (v23)
    {
      v11 = v10;
    }

    else
    {
      v11 = v11;
    }
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v24 = objc_msgSend_attributes(v6, v16, v17);
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v73, v77, 16);
  if (v28)
  {
    v29 = *v74;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v74 != v29)
        {
          objc_enumerationMutation(v24);
        }

        v31 = *(*(&v73 + 1) + 8 * i);
        if (objc_msgSend_format(v31, v26, v27))
        {
          v32 = objc_msgSend_bufferIndex(v31, v26, v27);
          if (v11 <= v32 + 1)
          {
            v11 = (v32 + 1);
          }

          else
          {
            v11 = v11;
          }
        }
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v73, v77, 16);
    }

    while (v28);
  }

  v37 = objc_msgSend_count(v72, v33, v34);
  if (v37 == v11)
  {
    if (v70)
    {
      v71 = v70;
    }

    else
    {
      v71 = objc_opt_new();
    }

    if (v11)
    {
      v42 = 0;
      while (1)
      {
        v43 = objc_msgSend_layouts(v6, v38, v39);
        v45 = objc_msgSend_objectAtIndexedSubscript_(v43, v44, v42);

        v48 = objc_msgSend_null(MEMORY[0x277CBEB68], v46, v47);
        if (objc_msgSend_isEqual_(v45, v49, v48))
        {
          break;
        }

        v54 = objc_msgSend_stride(v45, v50, v51) == 0;

        if (v54)
        {
          goto LABEL_28;
        }

        v55 = objc_msgSend_objectAtIndexedSubscript_(v72, v52, v42);
        v58 = objc_msgSend_integerValue(v55, v56, v57);
        v61 = objc_msgSend_stride(v45, v59, v60);

        v63 = objc_msgSend_newBufferFromZone_length_type_(v71, v62, 0, v61 * v58, 1);
        objc_msgSend_addObject_(v7, v64, v63);
LABEL_29:

        if (v37 == ++v42)
        {
          goto LABEL_30;
        }
      }

LABEL_28:
      v63 = objc_msgSend_null(MEMORY[0x277CBEB68], v52, v53);
      objc_msgSend_addObject_(v7, v65, v63);
      goto LABEL_29;
    }

LABEL_30:
  }

  else
  {
    v40 = objc_msgSend_count(v72, v35, v36);
    NSLog(&cfstr_UnableToCreate.isa, v40, v11, context);
    v41 = v7;
  }

  objc_autoreleasePoolPop(context);
  if (v37 == v11)
  {
    v66 = v7;
  }

  v67 = *MEMORY[0x277D85DE8];

  return v7;
}

void sub_239E70888(uint64_t a1, float *a2, void *a3, uint64_t a4, float *a5, void *a6, float *a7, unint64_t a8, float *a9)
{
  v40 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a6;
  bzero(v39, 0x3FCuLL);
  v19 = objc_msgSend_format(v15, v17, v18);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & (v19 < 5u)) == 1)
  {
    objc_msgSend_initializationValue(v15, v20, v21);
    if (v19)
    {
      v23 = 0;
      do
      {
        v38 = v22;
        v39[v23] = *(&v38 & 0xFFFFFFFFFFFFFFF3 | (4 * (v23 & 3)));
        ++v23;
      }

      while (v19 != v23);
    }
  }

  v24 = objc_msgSend_offset(v16, v20, v21);
  v27 = objc_msgSend_offset(v15, v25, v26);
  v30 = objc_msgSend_format(v15, v28, v29);
  v33 = objc_msgSend_format(v16, v31, v32);
  sub_239E70A2C((a1 + v27), v30, a2, (a4 + v24), v33, a5, v39, a7, v34, v35, a9, a8);

  v36 = *MEMORY[0x277D85DE8];
}

void sub_239E70A2C(void *a1, uint64_t a2, float *a3, const void *a4, float *a5, float *a6, float *a7, float *a8, double a9, float a10, float *a11, unint64_t a12)
{
  if (!a2 || !a5)
  {
    return;
  }

  if (a2 == a5 && a3 == a6 && sub_239E6FF8C(a2) == a3)
  {
    if (a12 >= a11)
    {
      v20 = a11;
    }

    else
    {
      v20 = a12;
    }

    if (v20 >= a8 * a3)
    {
      v21 = a8 * a3;
    }

    else
    {
      v21 = v20;
    }

    memcpy(a1, a4, v21);
    return;
  }

  v27[0] = a1;
  v27[1] = a2;
  v27[2] = a3;
  v27[3] = a4;
  v27[4] = a5;
  v27[5] = a6;
  v27[6] = a11;
  v27[7] = a7;
  v27[8] = a8;
  if ((a2 & 0x1000) != 0)
  {
    if (a2 == 593924)
    {
      sub_239F5F604(v27, 1.0);
    }

    else if (a2 == 659460)
    {
      sub_239F5ECA8(v27, 1.0);
    }
  }

  else
  {
    v22 = ((a2 & 0xFFFF0000) - 0x10000) >> 16;
    if (v22 <= 5)
    {
      if (((a2 & 0xFFFF0000) - 0x10000) >> 16 <= 2)
      {
        if (!v22)
        {
          v23 = 1.0;
LABEL_40:
          sub_239F640C0(v27, v23);
          return;
        }

        if (v22 != 1)
        {
          if (v22 != 2)
          {
            return;
          }

          v23 = 255.0;
          goto LABEL_40;
        }

        v26 = 1.0;
LABEL_45:
        sub_239F60F2C(v27, v26);
        return;
      }

      if (v22 == 3)
      {
        v26 = 127.0;
        goto LABEL_45;
      }

      if (v22 != 4)
      {
        if (v22 != 5)
        {
          return;
        }

        v24 = 1.0;
        goto LABEL_47;
      }

      v25 = 1.0;
LABEL_49:
      sub_239F651D4(v27, v25, a10);
      return;
    }

    if (((a2 & 0xFFFF0000) - 0x10000) >> 16 > 8)
    {
      switch(v22)
      {
        case 9uLL:
          sub_239F63070(v27, 1.0, a10);
          break;
        case 0xAuLL:
          sub_239F67254(v27, 1.0);
          break;
        case 0xBuLL:
          sub_239F5FF24(v27, 1.0, a10);
          break;
      }
    }

    else
    {
      switch(v22)
      {
        case 6uLL:
          v25 = 65535.0;
          goto LABEL_49;
        case 7uLL:
          v24 = 32767.0;
LABEL_47:
          sub_239F62040(v27, v24, a10);
          return;
        case 8uLL:
          sub_239F66204(v27, 1.0, a10);
          break;
      }
    }
  }
}

void sub_239E70D0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MDLMeshBufferMap;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

float sub_239E71064(uint64_t a1, uint64_t a2, int a3, int a4, float result)
{
  v5 = (a1 + 12 * a3 + 4 * a4);
  v6 = *v5;
  if (*v5 != 0.0)
  {
    v7 = a1 + 12 * a3;
    v8 = *(v7 + 4 * a3);
    v9 = a1 + 12 * a4;
    v10 = *(v9 + 4 * a4);
    v11 = (v10 - v8) / (v6 + v6);
    v12 = sqrtf((v11 * v11) + 1.0);
    if (v11 < 0.0)
    {
      v12 = -v12;
    }

    v13 = 1.0 / (v12 + v11);
    *&v14 = (v13 * v13) + 1.0;
    v15 = vrsqrte_f32(v14);
    v16 = vmul_f32(vrsqrts_f32(v14, vmul_f32(v15, v15)), v15);
    v17 = vmul_f32(v16, vrsqrts_f32(v14, vmul_f32(v16, v16)));
    v18 = v13 * v17.f32[0];
    v19 = vmul_f32(v17, v17).f32[0];
    v20 = v6 * v18 * (v17.f32[0] + v17.f32[0]);
    *(v7 + 4 * a3) = ((v8 * v19) + ((v18 * v18) * v10)) - v20;
    *(v9 + 4 * a4) = (v20 + (v19 * v10)) + ((v18 * v18) * v8);
    *v5 = v6;
    v21 = *(a1 + 4 * (3 - a4));
    v22 = a1 - 12 * a3;
    v23 = *(v22 + 20);
    *(a1 + 4 * (3 - a4)) = -((v18 * v23) - (v21 * v17.f32[0]));
    *(v22 + 20) = (v23 * v17.f32[0]) + (v18 * v21);
    *v5 = 0.0;
    v24 = *(a2 + 4 * a3);
    v25 = *(a2 + 4 * a4);
    *(a2 + 4 * a3) = -((v25 * v18) - (v24 * v17.f32[0]));
    *(a2 + 4 * a4) = (v24 * v18) + (v25 * v17.f32[0]);
    v26 = *(a2 + 12 + 4 * a3);
    v27 = *(a2 + 12 + 4 * a4);
    *(a2 + 12 + 4 * a3) = -((v27 * v18) - (v26 * v17.f32[0]));
    *(a2 + 12 + 4 * a4) = (v26 * v18) + (v27 * v17.f32[0]);
    v28 = *(a2 + 24 + 4 * a3);
    v29 = *(a2 + 24 + 4 * a4);
    v30 = -((v29 * v18) - (v28 * v17.f32[0]));
    result = (v28 * v18) + (v29 * v17.f32[0]);
    *(a2 + 24 + 4 * a3) = v30;
    *(a2 + 24 + 4 * a4) = result;
  }

  return result;
}

__n128 sub_239E711D8(uint64_t *a1, _OWORD *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v11 = *a1;
  v12 = *(a1 + 2);
  v13 = 0;
  v14 = *(a1 + 12);
  v15 = 0;
  LODWORD(v5) = *(a1 + 5);
  v16 = v5;
  v6 = 5;
  do
  {
    v7 = sub_239E71064(&v11, a3, 0, 1, *&v5);
    v8 = sub_239E71064(&v11, a3, 0, 2, v7);
    *&v5 = sub_239E71064(&v11, a3, 1, 2, v8);
    --v6;
  }

  while (v6);
  *&v5 = __PAIR64__(v14, v11);
  DWORD2(v5) = v16;
  *a2 = v5;
  v9 = *MEMORY[0x277D85DE8];
  result.n128_u64[0] = v5;
  result.n128_u32[2] = DWORD2(v5);
  return result;
}

float sub_239E712C4(float *a1, float *a2, __n128 a3)
{
  v3 = 0.0;
  v4 = 0.0;
  if (fabsf(a3.n128_f32[0]) >= 0.1)
  {
    v5 = 1.0 / a3.n128_f32[0];
    v6 = fabs(v5);
    v4 = v5;
    if (v6 < 0.100000001)
    {
      v4 = 0.0;
    }
  }

  if (fabsf(a3.n128_f32[1]) >= 0.1)
  {
    v7 = 1.0 / a3.n128_f32[1];
    if (fabs(v7) >= 0.100000001)
    {
      v3 = v7;
    }
  }

  a3.n128_u32[0] = 0;
  if (fabsf(a3.n128_f32[2]) >= 0.1)
  {
    v8 = 1.0 / a3.n128_f32[2];
    if (fabs(v8) >= 0.100000001)
    {
      a3.n128_f32[0] = v8;
    }
  }

  *a1 = (((*a2 * *a2) * v4) + ((a2[1] * a2[1]) * v3)) + ((a2[2] * a2[2]) * a3.n128_f32[0]);
  a1[1] = (((*a2 * v4) * a2[3]) + ((a2[1] * v3) * a2[4])) + ((a2[2] * a3.n128_f32[0]) * a2[5]);
  a1[2] = (((*a2 * v4) * a2[6]) + ((a2[1] * v3) * a2[7])) + ((a2[2] * a3.n128_f32[0]) * a2[8]);
  a1[3] = (((a2[3] * v4) * *a2) + ((a2[4] * v3) * a2[1])) + ((a2[5] * a3.n128_f32[0]) * a2[2]);
  a1[4] = (((a2[3] * a2[3]) * v4) + ((a2[4] * a2[4]) * v3)) + ((a2[5] * a2[5]) * a3.n128_f32[0]);
  a1[5] = (((a2[3] * v4) * a2[6]) + ((a2[4] * v3) * a2[7])) + ((a2[5] * a3.n128_f32[0]) * a2[8]);
  a1[6] = (((a2[6] * v4) * *a2) + ((a2[7] * v3) * a2[1])) + ((a2[8] * a3.n128_f32[0]) * a2[2]);
  a1[7] = (((a2[6] * v4) * a2[3]) + ((a2[7] * v3) * a2[4])) + ((a2[8] * a3.n128_f32[0]) * a2[5]);
  result = (((a2[6] * a2[6]) * v4) + ((a2[7] * a2[7]) * v3)) + ((a2[8] * a2[8]) * a3.n128_f32[0]);
  a1[8] = result;
  return result;
}

float sub_239E714D4(uint64_t *a1, _OWORD *a2, float32x4_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v16[0] = xmmword_239F9AD10;
  v16[1] = xmmword_239F9AD10;
  v17 = 1065353216;
  v13 = 0uLL;
  sub_239E711D8(a1, &v13, v16);
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  sub_239E712C4(v14, v16, v13);
  v4.i64[0] = *&v14[0];
  v4.i64[1] = DWORD2(v14[0]);
  v5 = vmulq_f32(v4, a3);
  *v5.i8 = vadd_f32(*v5.i8, *&vextq_s8(v5, v5, 8uLL));
  v6.i64[0] = *(v14 + 12);
  v6.i64[1] = DWORD1(v14[1]);
  v7 = vmulq_f32(v6, a3);
  *v7.f32 = vadd_f32(*v7.f32, *&vextq_s8(v7, v7, 8uLL));
  *&v9 = vadd_f32(vzip1_s32(*v5.i8, *v7.f32), vzip2_s32(*v5.i8, *v7.f32));
  v7.i64[0] = *(&v14[1] + 1);
  v7.i64[1] = v15;
  v8 = vmulq_f32(v7, a3);
  *v8.i8 = vadd_f32(*v8.i8, *&vextq_s8(v8, v8, 8uLL));
  *(&v9 + 1) = vadd_f32(*v8.i8, vdup_lane_s32(*v8.i8, 1)).u32[0];
  *a2 = v9;
  v10 = *MEMORY[0x277D85DE8];
  return *&v9;
}

float32x4_t sub_239E715F4(uint64_t a1, float32x4_t *a2, float32x4_t *a3, int8x16_t _Q0, float32x4_t a5)
{
  v5 = _Q0;
  v5.i32[3] = _Q0.i32[0];
  *a1 = vmlaq_f32(*a1, vtrn1q_s32(v5, vextq_s8(v5, v5, 0xCuLL)), vdupq_lane_s64(_Q0.i64[0], 0));
  *(a1 + 16) = vmla_laneq_f32(*(a1 + 16), vext_s8(*_Q0.i8, *&vextq_s8(_Q0, _Q0, 8uLL), 4uLL), _Q0, 2);
  _Q2 = vmulq_f32(a5, _Q0);
  _Q3 = vextq_s8(_Q2, _Q2, 8uLL);
  *_Q2.i8 = vadd_f32(*_Q2.i8, *_Q3.f32);
  *_Q3.f32 = vadd_f32(*_Q2.i8, vdup_lane_s32(*_Q2.i8, 1));
  *_Q2.i32 = vaddv_f32(*_Q2.i8);
  *_Q3.f32 = vdup_lane_s32(*_Q3.f32, 0);
  v8.i64[0] = vmlaq_f32(*a2, _Q0, _Q3).u64[0];
  __asm { FMLA            S3, S2, V0.S[2] }

  v8.i32[2] = _Q3.i32[0];
  v8.i32[3] = HIDWORD(*a2);
  *a2 = v8;
  a5.i32[3] = 1.0;
  result = vaddq_f32(*a3, a5);
  *a3 = result;
  return result;
}

float sub_239E7167C(uint64_t a1, float32x4_t a2, float32x4_t a3)
{
  v3.i32[3] = 0;
  v3.i32[0] = *a1;
  *(v3.i64 + 4) = *(a1 + 4);
  v4 = vmulq_f32(v3, a2);
  *v4.f32 = vadd_f32(*v4.f32, *&vextq_s8(v4, v4, 8uLL));
  v4.i32[0] = vadd_f32(*v4.f32, vdup_lane_s32(*v4.f32, 1)).u32[0];
  v5 = vmla_laneq_f32(vmla_lane_f32(vmul_n_f32(*(a1 + 4), a2.f32[0]), *(a1 + 12), *a2.f32, 1), *(a1 + 16), a2, 2);
  v4.i32[1] = v5.i32[0];
  v4.i64[1] = v5.u32[1];
  v6 = vsubq_f32(a3, v4);
  v7 = vmulq_f32(v6, v6);
  return vaddv_f32(vadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)));
}

void sub_239E716E0(uint64_t a1, float32x4_t *a2, float32x4_t a3, float32x4_t a4)
{
  __asm { FMOV            V2.4S, #1.0 }

  v15 = vmulq_f32(a4, vdivq_f32(_Q2, vdupq_laneq_s32(a4, 3)));
  _Q2.i32[3] = 0;
  _Q2.i32[0] = *a1;
  *(_Q2.i64 + 4) = *(a1 + 4);
  v11 = vmulq_f32(_Q2, v15);
  *v11.f32 = vadd_f32(*v11.f32, *&vextq_s8(v11, v11, 8uLL));
  v11.i32[0] = vadd_f32(*v11.f32, vdup_lane_s32(*v11.f32, 1)).u32[0];
  v12 = vmla_laneq_f32(vmla_lane_f32(vmul_n_f32(*&_Q2.i32[1], v15.f32[0]), *(a1 + 12), *v15.f32, 1), *(a1 + 16), v15, 2);
  v11.i32[1] = v12.i32[0];
  v11.i64[1] = v12.u32[1];
  sub_239E714D4(a1, a2, vsubq_f32(a3, v11));
  v13 = *a2;
  sub_239E7167C(a1, *a2, a3);
  *a2 = vaddq_f32(v13, v15);
}

double sub_239E71798(float32x4_t *a1, int8x16_t *a2, uint64_t a3, _DWORD *a4, float32x4_t *a5)
{
  v19[3] = *MEMORY[0x277D85DE8];
  v7 = 0uLL;
  v18 = 0u;
  memset(v19, 0, 24);
  if (a3)
  {
    v8 = a3;
    do
    {
      v11 = *a2++;
      v12 = v11;
      v13 = *a1++;
      sub_239E715F4(v19, &v18, a5, v12, v13);
      --v8;
    }

    while (v8);
    v7 = v18;
  }

  v17 = 0uLL;
  sub_239E716E0(v19, &v17, v7, *a5);
  *a4 = v14;
  result = *v17.i64;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239E71860(uint64_t a1, uint64_t a2, float32x4_t *a3, uint64_t a4, uint64_t a5, float32x4_t a6, float32x4_t a7)
{
  if ((vmaxvq_u32(vcltzq_f32(a7)) & 0x80000000) == 0)
  {
    if (*(a1 + 112))
    {
      v11.i64[0] = 0x3F0000003F000000;
      v11.i64[1] = 0x3F0000003F000000;
      v12 = vmulq_f32(vaddq_f32(a7, a6), v11);
      v13 = 4 * (*v12.i32 < a6.f32[2]);
      if (*&v12.i32[1] < a6.f32[2])
      {
        v13 |= 2u;
      }

      v14 = 4 * (*v12.i32 < a6.f32[1]);
      if (*&v12.i32[2] < a6.f32[1])
      {
        v14 |= 1u;
      }

      if (a6.f32[1] < a6.f32[2])
      {
        v13 = v14;
      }

      v15 = 2 * (*&v12.i32[1] < a6.f32[0]);
      if (*&v12.i32[2] < a6.f32[0])
      {
        v15 |= 1u;
      }

      if (a6.f32[0] < a6.f32[1] && a6.f32[0] < a6.f32[2])
      {
        v17 = v15;
      }

      else
      {
        v17 = v13;
      }

      v18 = a1 + 48;
      v55 = v12;
      while (1)
      {
        v19 = vbslq_s8(vcltzq_s32(xmmword_239F9ADF0[v17]), a7, v12);
        v20 = *(v18 + 8 * (v17 ^ a5));
        if (v20)
        {
          v58 = v19;
          v21 = sub_239E71860(v20, a2, a3, a4, a5, vbslq_s8(vcltzq_s32(xmmword_239F9AD70[v17]), a6, v12), v19);
          v19 = v58;
          v12 = v55;
          if (v21)
          {
            break;
          }
        }

        v22 = *(&unk_239F9AE70 + v17);
        v23 = HIDWORD(*(&unk_239F9AE70 + 2 * v17));
        if (v19.n128_f32[1] >= v19.n128_f32[2])
        {
          v23 = *(&unk_239F9AE70 + 2 * v17 + 1);
        }

        if (v19.n128_f32[0] < v19.n128_f32[2] && v19.n128_f32[0] < v19.n128_f32[1])
        {
          v17 = *(&unk_239F9AE70 + v17);
        }

        else
        {
          v17 = v23;
        }

        if (v17 >= 8)
        {
          return 0;
        }
      }

      return 1;
    }

    v25 = *a1;
    if (*a1)
    {
      v59 = *a4;
      v26 = *v25;
      v27 = v25[1];
      if (*v25 != v27)
      {
        v28 = 0;
        do
        {
          if (sub_239F53DA4(v26, &v59, *a3, a3[1]))
          {
            v28 = v26;
          }

          v26 += 14;
        }

        while (v26 != v27);
        if (v28)
        {
          v29 = v59;
          v30 = *a3;
          v31 = a3[1];
          *a4 = v59;
          v32 = vmlaq_n_f32(v30, v31, v29);
          *(a4 + 80) = v32;
          *v33.i8 = sub_239F53B28(v28, v32);
          v34 = vdupq_lane_s32(*v33.i8, 1).u64[0];
          v35 = vdupq_laneq_s32(v33, 2).u64[0];
          *(a4 + 96) = vmla_f32(vmla_f32(vmul_n_f32(*v28[11].f32, *v33.i32), v34, *&v28[11].u32[2]), v35, *v28[12].f32);
          *(a4 + 104) = vmla_f32(vmla_f32(vmul_n_f32(*&v28[12].u32[2], *v33.i32), v34, *v28[13].f32), v35, *&v28[13].u32[2]);
          v36 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v28[4], *v33.i32), v28[5], *v33.i8, 1), v28[6], v33, 2);
          v37 = vmulq_f32(v36, v36);
          v34.f32[0] = vaddv_f32(*v37.f32) + v37.f32[2];
          v38 = vrsqrte_f32(v34.u32[0]);
          v39 = vmulq_n_f32(v36, vmul_f32(vrsqrts_f32(v34.u32[0], vmul_f32(v38, v38)), v38).f32[0]);
          *(a4 + 16) = v39;
          *(a4 + 112) = v28->i64[1];
          v40 = vsubq_f32(v28[2], v28[1]);
          v41 = vmulq_f32(v40, v40);
          *&v42 = vaddv_f32(*v41.f32) + v41.f32[2];
          *v41.f32 = vrsqrte_f32(v42);
          *v41.f32 = vmul_f32(vrsqrts_f32(v42, vmul_f32(*v41.f32, *v41.f32)), *v41.f32);
          v43 = vmlaq_n_f32(xmmword_239F9AD20, v40, vmul_f32(*v41.f32, vrsqrts_f32(v42, vmul_f32(*v41.f32, *v41.f32))).f32[0]);
          v44 = vmulq_f32(v43, v43);
          v41.f32[0] = vaddv_f32(*v44.f32) + v44.f32[2];
          *v44.f32 = vrsqrte_f32(v41.u32[0]);
          v45 = vmulq_n_f32(v43, vmul_f32(vrsqrts_f32(v41.u32[0], vmul_f32(*v44.f32, *v44.f32)), *v44.f32).f32[0]);
          v46 = vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL);
          v47 = vmlaq_f32(vnegq_f32(vmulq_f32(v45, v46)), v39, vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL));
          v48 = vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL);
          v49 = vmulq_f32(v47, v47);
          *&v50 = (v49.f32[2] + v49.f32[0]) + v49.f32[1];
          *v49.f32 = vrsqrte_f32(v50);
          v51 = vmulq_n_f32(v48, vmul_f32(vrsqrts_f32(v50, vmul_f32(*v49.f32, *v49.f32)), *v49.f32).f32[0]);
          v52 = vmlaq_f32(vnegq_f32(vmulq_f32(v51, v46)), v39, vextq_s8(vuzp1q_s32(v51, v51), v51, 0xCuLL));
          v53 = vmulq_f32(v52, v52);
          v37.f32[0] = (v53.f32[2] + v53.f32[0]) + v53.f32[1];
          *v53.f32 = vrsqrte_f32(v37.u32[0]);
          *(a4 + 32) = vmulq_n_f32(vextq_s8(vuzp1q_s32(v52, v52), v52, 0xCuLL), vmul_f32(vrsqrts_f32(v37.u32[0], vmul_f32(*v53.f32, *v53.f32)), *v53.f32).f32[0]);
          *(a4 + 48) = v51;
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_239E71C08(uint64_t *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, float32x4_t a9)
{
  result = *a1;
  if (result)
  {
    v10 = *a2;
    v11 = *(a2 + 16);
    v23 = *a2;
    v24 = v11;
    if (*&v11 >= 0.0)
    {
      v12 = 0;
    }

    else
    {
      v23.f32[0] = -v10.f32[0];
      *&v24 = -*&v11;
      v12 = 4;
    }

    v13 = *(&v11 + 2);
    if (*(&v11 + 1) < 0.0)
    {
      v23.f32[1] = -v10.f32[1];
      *(&v24 + 1) = -*(&v11 + 1);
      v12 = v12 | 2;
    }

    v14 = *(result + 16);
    v15 = *(result + 32);
    if (v13 < 0.0)
    {
      v23.f32[2] = -v10.f32[2];
      *(&v24 + 2) = -v13;
      v12 = v12 | 1;
    }

    __asm { FMOV            V0.2S, #1.0 }

    *a9.f32 = vdiv_f32(_D0, *&v24);
    a9.f32[2] = 1.0 / *(&v24 + 2);
    v21 = vmulq_f32(vsubq_f32(v15, v23), a9);
    v22 = vmulq_f32(vsubq_f32(v14, v23), a9);
    if (fmaxf(v21.f32[0], fmaxf(v21.f32[1], v21.f32[2])) >= fminf(v22.f32[0], fminf(v22.f32[1], v22.f32[2])))
    {
      return 0;
    }

    else
    {
      v21.i32[3] = 0;
      v22.i32[3] = 0;
      return sub_239E71860(result, &v23, a2, a3, v12, v21, v22);
    }
  }

  return result;
}

id sub_239E71D1C(float32x4_t **a1, int a2, uint64_t a3, int a4)
{
  v144[1] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (*a1)
  {
    v141 = 0;
    v142 = 0;
    v143 = 0;
    v138 = 0;
    v139 = 0;
    v10 = (a1 + 6);
    v9 = a1[6];
    v140 = 0;
    __p = 0;
    v136 = 0;
    v137 = 0;
    a1[7] = v9;
    v11 = *(v4 + 32);
    v131 = v11;
    if (a3)
    {
      v134 = 0;
      sub_239E73254(a1 + 6, &v134);
    }

    else
    {
      sub_239E7261C(0, &v141, &v138, v11, *(v4 + 16));
      v134 = 1;
      sub_239E73254(v10, &v134);
    }

    sub_239E73334(&__p, *a1, a2 - 1, a3 | a4, a3, vsubq_f32((*a1)[1], (*a1)[2]), v131, v12);
    v15 = __p;
    v14 = v136;
    if (v136 != __p)
    {
      sub_239E7A428(__p, v136, 126 - 2 * __clz((v136 - __p) >> 3), 1);
      v132 = (*v15)[1];
      sub_239E73254(v10, *v10);
      v16 = v132.n128_f32[1];
      v17 = 1;
      do
      {
        v18 = *v15;
        sub_239E7261C(a3, &v141, &v138, (*v15)[1], (*v15)[2]);
        v19 = v18[1].n128_f32[1];
        if (v16 < v19)
        {
          sub_239E73254(v10, *v10 + v17++);
          v16 = v19;
        }

        ++*(*v10 + v17);
        ++v15;
      }

      while (v15 != v14);
    }

    v20 = objc_alloc_init(MDLMeshBufferAllocatorDefault);
    v22 = v138;
    v21 = v139;
    v129 = v20;
    v23 = objc_alloc(MEMORY[0x277CBEA90]);
    v127 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v23, v24, v138, v21 - v22, 0);
    v133 = objc_msgSend_newBufferWithData_type_(v20, v25, v127, 2);
    if (objc_msgSend_conformsToProtocol_(v133, v26, &unk_284D24D98))
    {
      v28 = v133;
      v31 = objc_msgSend_name(0, v29, v30);
      v33 = objc_msgSend_stringByAppendingString_(v31, v32, @"-Indices");
      objc_msgSend_setName_(v28, v34, v33);
    }

    v130 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x277CBEA90], v27, v141, v142 - v141, 0);
    v35 = objc_opt_new();
    v128 = v35;
    v38 = objc_msgSend_attributes(v35, v36, v37);
    v40 = objc_msgSend_objectAtIndexedSubscript_(v38, v39, 0);
    objc_msgSend_setName_(v40, v41, @"position");

    v44 = objc_msgSend_attributes(v35, v42, v43);
    v46 = objc_msgSend_objectAtIndexedSubscript_(v44, v45, 0);
    objc_msgSend_setFormat_(v46, v47, 786435);

    v50 = objc_msgSend_attributes(v35, v48, v49);
    v52 = objc_msgSend_objectAtIndexedSubscript_(v50, v51, 0);
    objc_msgSend_setOffset_(v52, v53, 0);

    v56 = objc_msgSend_attributes(v35, v54, v55);
    v58 = objc_msgSend_objectAtIndexedSubscript_(v56, v57, 0);
    objc_msgSend_setBufferIndex_(v58, v59, 0);

    if (a3)
    {
      v62 = objc_msgSend_attributes(v35, v60, v61);
      v64 = objc_msgSend_objectAtIndexedSubscript_(v62, v63, 1);
      objc_msgSend_setName_(v64, v65, @"normal");

      v68 = objc_msgSend_attributes(v35, v66, v67);
      v70 = objc_msgSend_objectAtIndexedSubscript_(v68, v69, 1);
      objc_msgSend_setFormat_(v70, v71, 786435);

      v74 = objc_msgSend_attributes(v35, v72, v73);
      v76 = objc_msgSend_objectAtIndexedSubscript_(v74, v75, 1);
      objc_msgSend_setOffset_(v76, v77, 12);

      v80 = objc_msgSend_attributes(v35, v78, v79);
      v82 = objc_msgSend_objectAtIndexedSubscript_(v80, v81, 1);
      objc_msgSend_setBufferIndex_(v82, v83, 0);

      v84 = 6;
    }

    else
    {
      v84 = 3;
    }

    v85 = objc_msgSend_layouts(v35, v60, v61);
    v87 = objc_msgSend_objectAtIndexedSubscript_(v85, v86, 0);
    objc_msgSend_setStride_(v87, v88, 4 * v84);

    v90 = objc_msgSend_newBufferWithData_type_(v129, v89, v130, 1);
    if (objc_msgSend_conformsToProtocol_(v90, v91, &unk_284D24D98))
    {
      v93 = v90;
      v94 = MEMORY[0x277CCACA8];
      v97 = objc_msgSend_name(0, v95, v96);
      v99 = objc_msgSend_stringWithFormat_(v94, v98, @"%@-%@", v97, @"position");
      objc_msgSend_setName_(v93, v100, v99);
    }

    if ((atomic_load_explicit(&qword_27DF90E08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF90E08))
    {
      v124 = [MDLMaterial alloc];
      v125 = objc_opt_new();
      qword_27DF90E00 = objc_msgSend_initWithName_scatteringFunction_(v124, v126, @"Octree material", v125);

      __cxa_guard_release(&qword_27DF90E08);
    }

    v101 = objc_msgSend_propertyWithSemantic_(qword_27DF90E00, v92, 2);
    objc_msgSend_setFloatValue_(v101, v102, v103, 0.0);
    v105 = objc_msgSend_propertyWithSemantic_(qword_27DF90E00, v104, 6);

    LODWORD(v106) = 1.0;
    objc_msgSend_setFloatValue_(v105, v107, v108, v106);
    v109 = [MDLSubmesh alloc];
    v111 = (v139 - v138) >> 2;
    if (a3)
    {
      v112 = objc_msgSend_initWithIndexBuffer_indexCount_indexType_geometryType_material_(v109, v110, v133, v111, 32, 2, qword_27DF90E00);
    }

    else
    {
      v112 = objc_msgSend_initWithIndexBuffer_indexCount_indexType_geometryType_material_(v109, v110, v133, v111, 32, 1, qword_27DF90E00);
    }

    v113 = v112;
    v115 = v141;
    v114 = v142;
    v116 = [MDLMesh alloc];
    v144[0] = v113;
    v118 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v117, v144, 1);
    v13 = objc_msgSend_initWithVertexBuffer_vertexCount_descriptor_submeshes_(v116, v119, v90, ((v114 - v115) >> 2) / v84, v128, v118);

    if (a3)
    {
      LODWORD(v121) = 1045220557;
      objc_msgSend_addNormalsWithAttributeNamed_creaseThreshold_(v13, v120, @"normal", v121);
    }

    if (__p)
    {
      operator delete(__p);
    }

    if (v138)
    {
      v139 = v138;
      operator delete(v138);
    }

    if (v141)
    {
      v142 = v141;
      operator delete(v141);
    }
  }

  else
  {
    v13 = 0;
  }

  v122 = *MEMORY[0x277D85DE8];

  return v13;
}

void sub_239E723EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  __cxa_guard_abort(&qword_27DF90E08);

  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a25)
  {
    operator delete(a25);
  }

  _Unwind_Resume(a1);
}

void sub_239E7261C(int a1, uint64_t a2, const void **a3, __n128 a4, __n128 a5)
{
  v15 = a4.n128_u32[0];
  v7 = a4.n128_u32[1];
  v8 = a4.n128_u32[2];
  v9 = (((*(a2 + 8) - *a2) >> 2) * 0xAAAAAAAAAAAAAAABLL) >> 64;
  if (a1)
  {
    v10 = ((*(a2 + 8) - *a2) >> 2) / 6uLL;
    v17 = a4.n128_u32[0];
    sub_239E798A4(a2, &v17);
    v17 = v7;
    sub_239E798A4(a2, &v17);
    v17 = v8;
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[0];
    sub_239E798A4(a2, &v17);
    v17 = v7;
    sub_239E798A4(a2, &v17);
    v17 = v8;
    sub_239E798A4(a2, &v17);
    v17 = v15;
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[1];
    sub_239E798A4(a2, &v17);
    v17 = v8;
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[0];
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[1];
    sub_239E798A4(a2, &v17);
    v17 = v8;
    sub_239E798A4(a2, &v17);
    v17 = v10;
    sub_239E73254(a3, &v17);
    v17 = v10 + 2;
    sub_239E73254(a3, &v17);
    v17 = v10 + 1;
    sub_239E73254(a3, &v17);
    v17 = v10 + 1;
    sub_239E73254(a3, &v17);
    v17 = v10 + 2;
    sub_239E73254(a3, &v17);
    v17 = v10 + 3;
    sub_239E73254(a3, &v17);
    v17 = v15;
    sub_239E798A4(a2, &v17);
    v17 = v7;
    sub_239E798A4(a2, &v17);
    v17 = v8;
    sub_239E798A4(a2, &v17);
    v17 = v15;
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[1];
    sub_239E798A4(a2, &v17);
    v17 = v8;
    sub_239E798A4(a2, &v17);
    v17 = v15;
    sub_239E798A4(a2, &v17);
    v17 = v7;
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[2];
    sub_239E798A4(a2, &v17);
    v17 = v15;
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[1];
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[2];
    sub_239E798A4(a2, &v17);
    v17 = v10 + 4;
    sub_239E73254(a3, &v17);
    v17 = v10 + 6;
    sub_239E73254(a3, &v17);
    v17 = v10 + 5;
    sub_239E73254(a3, &v17);
    v17 = v10 + 5;
    sub_239E73254(a3, &v17);
    v17 = v10 + 6;
    sub_239E73254(a3, &v17);
    v17 = v10 + 7;
    sub_239E73254(a3, &v17);
    v17 = v15;
    sub_239E798A4(a2, &v17);
    v17 = v7;
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[2];
    sub_239E798A4(a2, &v17);
    v17 = v15;
    sub_239E798A4(a2, &v17);
    v17 = v7;
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[2];
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[0];
    sub_239E798A4(a2, &v17);
    v17 = v7;
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[2];
    sub_239E798A4(a2, &v17);
    v17 = v15;
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[1];
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[2];
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[0];
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[1];
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[2];
    sub_239E798A4(a2, &v17);
    v17 = v10 + 8;
    sub_239E73254(a3, &v17);
    v17 = v10 + 9;
    sub_239E73254(a3, &v17);
    v17 = v10 + 10;
    sub_239E73254(a3, &v17);
    v17 = v10 + 9;
    sub_239E73254(a3, &v17);
    v17 = v10 + 11;
    sub_239E73254(a3, &v17);
    v17 = v10 + 10;
    sub_239E73254(a3, &v17);
    v17 = a5.n128_u32[0];
    sub_239E798A4(a2, &v17);
    v17 = v7;
    sub_239E798A4(a2, &v17);
    v17 = v8;
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[0];
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[1];
    sub_239E798A4(a2, &v17);
    v17 = v8;
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[0];
    sub_239E798A4(a2, &v17);
    v17 = v7;
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[2];
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[0];
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[1];
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[2];
    sub_239E798A4(a2, &v17);
    v17 = v10 + 12;
    sub_239E73254(a3, &v17);
    v17 = v10 + 15;
    sub_239E73254(a3, &v17);
    v17 = v10 + 14;
    sub_239E73254(a3, &v17);
    v17 = v10 + 12;
    sub_239E73254(a3, &v17);
    v17 = v10 + 13;
    sub_239E73254(a3, &v17);
    v17 = v10 + 15;
    sub_239E73254(a3, &v17);
    v17 = v15;
    sub_239E798A4(a2, &v17);
    v17 = v7;
    sub_239E798A4(a2, &v17);
    v17 = v8;
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[0];
    sub_239E798A4(a2, &v17);
    v17 = v7;
    sub_239E798A4(a2, &v17);
    v17 = v8;
    sub_239E798A4(a2, &v17);
    v17 = v15;
    sub_239E798A4(a2, &v17);
    v17 = v7;
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[2];
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[0];
    sub_239E798A4(a2, &v17);
    v17 = v7;
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[2];
    sub_239E798A4(a2, &v17);
    v17 = v10 + 16;
    sub_239E73254(a3, &v17);
    v17 = v10 + 17;
    sub_239E73254(a3, &v17);
    v17 = v10 + 19;
    sub_239E73254(a3, &v17);
    v17 = v10 + 16;
    sub_239E73254(a3, &v17);
    v17 = v10 + 19;
    sub_239E73254(a3, &v17);
    v17 = v10 + 18;
    sub_239E73254(a3, &v17);
    v17 = v15;
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[1];
    sub_239E798A4(a2, &v17);
    v17 = v8;
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[0];
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[1];
    sub_239E798A4(a2, &v17);
    v17 = v8;
    sub_239E798A4(a2, &v17);
    v17 = v15;
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[1];
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[2];
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[0];
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[1];
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[2];
    sub_239E798A4(a2, &v17);
    v17 = v10 + 20;
    sub_239E73254(a3, &v17);
    v17 = v10 + 22;
    sub_239E73254(a3, &v17);
    v17 = v10 + 21;
    sub_239E73254(a3, &v17);
    v17 = v10 + 21;
    sub_239E73254(a3, &v17);
    v17 = v10 + 22;
    sub_239E73254(a3, &v17);
    v17 = v10 + 23;
  }

  else
  {
    v11 = ((*(a2 + 8) - *a2) >> 2) / 3uLL;
    v17 = a4.n128_u32[0];
    sub_239E798A4(a2, &v17);
    v17 = v7;
    sub_239E798A4(a2, &v17);
    v17 = v8;
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[0];
    sub_239E798A4(a2, &v17);
    v17 = v7;
    sub_239E798A4(a2, &v17);
    v17 = v8;
    sub_239E798A4(a2, &v17);
    v17 = v15;
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[1];
    sub_239E798A4(a2, &v17);
    v17 = v8;
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[0];
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[1];
    sub_239E798A4(a2, &v17);
    v17 = v8;
    sub_239E798A4(a2, &v17);
    v17 = v15;
    sub_239E798A4(a2, &v17);
    v17 = v7;
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[2];
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[0];
    sub_239E798A4(a2, &v17);
    v17 = v7;
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[2];
    sub_239E798A4(a2, &v17);
    v17 = v15;
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[1];
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[2];
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[0];
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[1];
    sub_239E798A4(a2, &v17);
    v17 = a5.n128_u32[2];
    sub_239E798A4(a2, &v17);
    v17 = v11;
    sub_239E73254(a3, &v17);
    v17 = v11 + 1;
    sub_239E73254(a3, &v17);
    v17 = v11;
    sub_239E73254(a3, &v17);
    v17 = v11 + 2;
    sub_239E73254(a3, &v17);
    v17 = v11;
    sub_239E73254(a3, &v17);
    v12 = v11 + 4;
    v17 = v11 + 4;
    sub_239E73254(a3, &v17);
    v17 = v11 + 1;
    sub_239E73254(a3, &v17);
    v17 = v11 + 3;
    sub_239E73254(a3, &v17);
    v17 = v11 + 1;
    sub_239E73254(a3, &v17);
    v13 = v11 + 5;
    v17 = v11 + 5;
    sub_239E73254(a3, &v17);
    v17 = v11 + 2;
    sub_239E73254(a3, &v17);
    v17 = v11 + 3;
    sub_239E73254(a3, &v17);
    v17 = v11 + 2;
    sub_239E73254(a3, &v17);
    v14 = v11 + 6;
    v17 = v11 + 6;
    sub_239E73254(a3, &v17);
    v17 = v11 + 3;
    sub_239E73254(a3, &v17);
    LODWORD(v11) = v11 + 7;
    v17 = v11;
    sub_239E73254(a3, &v17);
    v17 = v12;
    sub_239E73254(a3, &v17);
    v17 = v13;
    sub_239E73254(a3, &v17);
    v17 = v12;
    sub_239E73254(a3, &v17);
    v17 = v14;
    sub_239E73254(a3, &v17);
    v17 = v13;
    sub_239E73254(a3, &v17);
    v17 = v11;
    sub_239E73254(a3, &v17);
    v17 = v14;
    sub_239E73254(a3, &v17);
    v17 = v11;
  }

  sub_239E73254(a3, &v17);
}

void sub_239E73254(const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_239E797B4();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_239E79984(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
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

uint64_t sub_239E73334(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int64x2_t a6, int8x16_t a7, uint64x2_t a8)
{
  if (a2 && (a3 & 0x80000000) == 0)
  {
    v11 = result;
    v12 = 0;
    v13.i64[0] = 0x3F0000003F000000;
    v13.i64[1] = 0x3F0000003F000000;
    v17 = vmulq_f32(a6, v13);
    v14 = v17.f32[1];
    v15 = v17.f32[2];
    v16 = a2 + 48;
    a6.i64[1] = a7.i64[1];
    v26 = v17;
    v17.f32[0] = v17.f32[0] + *a7.i32;
    v17.i32[1] = a7.i32[1];
    v18 = (a3 - 1);
    if (a3)
    {
      v19 = a4;
    }

    else
    {
      v19 = 0;
    }

    a8.i64[0] = 4;
    v17.i32[2] = a7.i32[2];
    v23 = a8;
    v24 = v17;
    while (!*(v16 + 8 * v12))
    {
LABEL_13:
      if (++v12 == 8)
      {
        return result;
      }
    }

    a6.i64[0] = v12;
    a6 = vdupq_lane_s64(vcgtq_u64(v23, a6).i64[0], 0);
    v20 = vbslq_s8(a6, a7, v24);
    if ((v12 & 2) != 0)
    {
      v21.n128_u32[0] = v20.n128_u32[0];
      v21.n128_f32[1] = v20.n128_f32[1] + v14;
      v21.n128_u64[1] = v20.n128_u64[1];
      v20 = v21;
      if ((v12 & 1) == 0)
      {
LABEL_10:
        if ((v19 & 1) == 0)
        {
          goto LABEL_17;
        }

LABEL_11:
        if (a3)
        {
          result = sub_239E73334(v11, *(v16 + 8 * v12), v18, a4, a5, v26, v20);
        }

        goto LABEL_13;
      }
    }

    else if ((v12 & 1) == 0)
    {
      goto LABEL_10;
    }

    v22.n128_u64[0] = v20.n128_u64[0];
    v22.n128_f32[2] = v20.n128_f32[2] + v15;
    v22.n128_u32[3] = v20.n128_u32[3];
    v20 = v22;
    if ((v19 & 1) == 0)
    {
LABEL_17:
      operator new();
    }

    goto LABEL_11;
  }

  return result;
}

float32x4_t *sub_239E735A0(float32x4_t *a1, void *a2, int a3)
{
  v13[7] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v8 = v5;
  a1->i64[0] = 0;
  a1[3].i64[0] = 0;
  a1[3].i64[1] = 0;
  a1[4].i64[0] = 0;
  a1[5].i64[0] = 0;
  if (a3 >= 1)
  {
    objc_msgSend_boundingBox(v5, v6, v7);
    a1[1] = v9;
    a1[2] = v10;
    if ((COERCE_FLOAT(vsubq_f32(v9, v10).i32[1]) / a3) > 0.0)
    {
      sub_239E73820(v8, v13);
      operator new();
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_239E73798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_239E7B424(va);
  MEMORY[0x23EE802C0](v8, 0x1020C40BD3C1984);
  if (v7)
  {
    operator delete(v7);
  }

  sub_239E7A3DC(v6, 0);
  v11 = *v9;
  if (*v9)
  {
    *(v4 + 56) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void sub_239E73820(void *a1@<X0>, void *a2@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  __p = 0;
  v18 = 0;
  v19 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a1;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v13, v20, 16);
  if (v5)
  {
    v6 = *v14;
    v7 = MEMORY[0x277D860B8];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(v7 + 32);
        v10 = *(v7 + 48);
        sub_239E753DC(*(*(&v13 + 1) + 8 * i), &__p, 1, *v7, *(v7 + 16));
      }

      v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v11, &v13, v20, 16);
    }

    while (v5);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_239E7C554(a2, __p, v18, 0x6DB6DB6DB6DB6DB7 * ((v18 - __p) >> 5));
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_239E7397C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_239E739BC(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 1312);
  *v4 = a4;
  v5 = (v4 + 10);
  if (v5 != a2)
  {
    sub_239E7B730(v5, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5));
  }
}

uint64_t sub_239E739F8(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
    v3 = *(a2 + 32);
    if (*&v2 < COERCE_FLOAT(HIDWORD(*(a2 + 16))))
    {
      LODWORD(v2) = HIDWORD(*(a2 + 16));
    }

    if (*&v2 < COERCE_FLOAT(*(a2 + 24)))
    {
      LODWORD(v2) = *(a2 + 24);
    }

    if (*(&v3 + 1) < *&v3)
    {
      LODWORD(v3) = HIDWORD(*(a2 + 32));
    }

    if (*(&v3 + 2) < *&v3)
    {
      LODWORD(v3) = DWORD2(*(a2 + 40));
    }

    *&v2 = fabsf(*&v2);
    v4 = fabsf(*&v3);
    if (*&v2 < v4)
    {
      *&v2 = v4;
    }

    *&v3 = -*&v2;
    *(a2 + 16) = vdupq_lane_s32(*&v2, 0);
    *(a2 + 32) = vdupq_lane_s32(*&v3, 0);
    v5 = *(result + 1312);
    if ((*v5 & 0x80000000) == 0)
    {
      v6 = (*v5 - 1) | ((*v5 - 1) >> 1) | (((*v5 - 1) | ((*v5 - 1) >> 1)) >> 2);
      v7 = v6 | (v6 >> 4) | ((v6 | (v6 >> 4)) >> 8);
      *(a2 + 8) = (v7 | HIWORD(v7)) + 1;
    }

    if (*(v5 + 48) != *(v5 + 40))
    {
      operator new();
    }
  }

  return result;
}

void sub_239E73C60(void *a1, float32x4_t **a2, float a3)
{
  if (*(a1[164] + 368))
  {
    v5 = sub_239E756B8(a1, a3);
    sub_239E75C74(a1, vcvtd_n_f64_s32(v5, 2uLL));

    sub_239E76168(a1, a2);
  }
}

float32x4_t *sub_239E73CC4(float32x4_t *a1, void *a2, int a3)
{
  v13[7] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v8 = v5;
  a1->i64[0] = 0;
  a1[3].i64[0] = 0;
  a1[3].i64[1] = 0;
  a1[4].i64[0] = 0;
  a1[5].i64[0] = 0;
  if (a3 >= 1)
  {
    objc_msgSend_boundingBoxAtTime_(v5, v6, v7, 0.0);
    a1[1] = v9;
    a1[2] = v10;
    if ((COERCE_FLOAT(vsubq_f32(v9, v10).i32[1]) / a3) > 0.0)
    {
      sub_239E73F48(v8, v13);
      operator new();
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_239E73EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_239E7B424(va);
  MEMORY[0x23EE802C0](v8, 0x1020C40BD3C1984);
  if (v7)
  {
    operator delete(v7);
  }

  sub_239E7A3DC(v6, 0);
  v11 = *v9;
  if (*v9)
  {
    *(v4 + 56) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void sub_239E73F48(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(MEMORY[0x277D860B8] + 32);
  v3 = *(MEMORY[0x277D860B8] + 48);
  sub_239E753DC(a1, a2, 1, *MEMORY[0x277D860B8], *(MEMORY[0x277D860B8] + 16));
}

void sub_239E73F8C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_239E73FAC(uint64_t a1)
{
  v2 = *MEMORY[0x277D85DE8];
  memcpy(a1, &unk_239F9AF00, 0x380uLL);
  memcpy((a1 + 896), &unk_239F9B280, 0x1A0uLL);
  operator new();
}

void sub_239E74078(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_239E7B424(va);
  MEMORY[0x23EE802C0](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_239E740A0(uint64_t a1)
{
  v2 = *(a1 + 1312);
  *(a1 + 1312) = 0;
  if (v2)
  {
    v3 = sub_239E7B690(v2);
    MEMORY[0x23EE802C0](v3, 0x10F0C401E272BA8);
  }

  return a1;
}

uint64_t sub_239E740EC(uint64_t a1, float32x4_t *a2, uint64_t a3, int a4, uint64x2_t a5, double a6, double a7, double a8, double a9, int8x16_t a10)
{
  v14 = 0;
  v54 = 0;
  v15 = a2 + 3;
  v16 = (a4 - 1);
  a5.i64[0] = 4;
  v48 = a5;
  __asm { FMOV            V0.4S, #0.25 }

  v49 = _Q0;
  do
  {
    v23 = a2[1];
    v22 = a2[2];
    v24.i64[0] = 0x3F0000003F000000;
    v24.i64[1] = 0x3F0000003F000000;
    v25 = vmulq_f32(vaddq_f32(v23, v22), v24);
    v26 = vsubq_f32(v23, v22);
    v27 = 0.25 * v26.f32[0];
    v24.i64[0] = v14;
    *v28.i32 = v25.f32[0] + (0.25 * v26.f32[0]);
    v28.i32[1] = v25.i32[1];
    v28.i64[1] = __PAIR64__(v48.u32[3], v25.u32[2]);
    *a10.i32 = v25.f32[0] - (0.25 * v26.f32[0]);
    a10.i32[1] = v25.i32[1];
    a10.i32[2] = v25.i32[2];
    v29 = vbslq_s8(vdupq_lane_s64(vcgtq_u64(v48, v24).i64[0], 0), a10, v28);
    if ((v14 & 2) != 0)
    {
      v30 = 0.25 * v26.f32[0];
    }

    else
    {
      v30 = -(v26.f32[0] * 0.25);
    }

    if ((v14 & 1) == 0)
    {
      v27 = -(v26.f32[0] * 0.25);
    }

    v29.f32[1] = v29.f32[1] + v30;
    v29.f32[2] = v29.f32[2] + v27;
    v53 = v29;
    result = sub_239EAB8B8(a3, v29, vmulq_f32(v26, v49));
    if (result)
    {
      v32 = v15->i64[v14];
      if (!v32)
      {
        operator new();
      }

      if (a4)
      {
        if (a4 >= 1)
        {
          result = sub_239E740EC(a1, v32, a3, v16);
          goto LABEL_28;
        }
      }

      else
      {
        sub_239E7BF04((v32 + 152), (a3 + 172));
        v33 = *(v32 + 116);
        if (*(a3 + 172) != *(v32 + 144))
        {
          v35 = *(a3 + 16);
          v34 = *(a3 + 32);
          v51 = *(a3 + 48);
          v52 = v35;
          v50 = v34;
          *v36.i64 = sub_239E74590(&v52, &v51, &v50, &v53);
          v37 = vsubq_f32(v53, v36);
          v38 = vmulq_f32(v37, v37);
          v39 = sqrtf(vaddv_f32(*v38.f32) + v38.f32[2]);
          if (v39 < fabsf(v33))
          {
            *(v32 + 116) = -v39;
            *(v32 + 128) = v36;
            *(v32 + 144) = *(a3 + 172);
            v40 = sub_239E74974(a1, v32);
            v41 = *(a1 + 1312);
            if (v40)
            {
              sub_239E7B9B0((v41 + 344), (v32 + 8));
            }

            else
            {
              v42 = sub_239E7C134((v41 + 344), (v32 + 8));
              if (v42)
              {
                sub_239E7C1E8((*(a1 + 1312) + 344), v42);
              }
            }
          }
        }
      }

      v43 = *v32;
      if (!*v32)
      {
        v44 = *(*(a1 + 1312) + 88);
        if (!v44)
        {
          sub_239E7C368();
        }

        v45 = (*(*v44 + 48))(v44);
        v52.i64[0] = 0;
        v46 = *v32;
        *v32 = v45;
        if (v46)
        {
          sub_239E7A380(v32, v46);
        }

        v47 = v52.i64[0];
        v52.i64[0] = 0;
        if (v47)
        {
          sub_239E7A380(&v52, v47);
        }

        v43 = *v32;
      }

      result = sub_239E79B00(v43, a3);
    }

LABEL_28:
    ++v14;
  }

  while (v14 != 8);
  return result;
}

uint64_t sub_239E744FC(uint64_t a1, float32x4_t a2, double a3, double a4)
{
  v4 = *(a1 + 1312);
  v5 = v4[15].f32[2];
  *&a4 = v5 * 0.5;
  v6 = vmulq_n_f32(vsubq_f32(vsubq_f32(a2, v4[17]), vdupq_lane_s32(*&a4, 0)), 1.0 / v5);
  v7 = llroundf(v6.f32[0]);
  v8 = llroundf(v6.f32[1]);
  v9 = llroundf(v6.f32[2]);
  return *(v4[9].i64[0] + 8 * v9) | ((*(v4[7].i64[1] + 8 * HIBYTE(v8)) | *(v4[9].i64[0] + 8 * HIBYTE(v9)) | *(v4[6].i64[0] + 8 * HIBYTE(v7))) << 24) | *(v4[7].i64[1] + 8 * v8) | *(v4[6].i64[0] + 8 * v7);
}

double sub_239E74590(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4)
{
  v4 = *a1;
  v5 = *a2;
  v6 = vsubq_f32(*a1, *a2).u32[0];
  v7 = vsubq_f32(*a2, *a1);
  if (vmovn_s32(vcgtq_f32(*a1, *a2)).u8[0])
  {
    v8 = *&v6;
  }

  else
  {
    v8 = v7.f32[0];
  }

  if (v8 <= 0.0001)
  {
    v9 = v4.f32[1] <= v5.f32[1] ? v5.f32[1] - v4.f32[1] : v4.f32[1] - v5.f32[1];
    if (v9 <= 0.0001)
    {
      v10 = v4.f32[2] <= v5.f32[2] ? v5.f32[2] - v4.f32[2] : v4.f32[2] - v5.f32[2];
      if (v10 <= 0.0001)
      {
        v11 = *a3;
        LODWORD(v12) = vsubq_f32(v4, *a3).u32[0];
        v13 = vsubq_f32(*a3, v4).u32[0];
        if ((vmovn_s32(vcgtq_f32(v4, *a3)).u8[0] & 1) == 0)
        {
          v12 = *&v13;
        }

        if (v12 <= 0.0001)
        {
          v14 = v4.f32[1] <= v11.f32[1] ? v11.f32[1] - v4.f32[1] : v4.f32[1] - v11.f32[1];
          if (v14 <= 0.0001)
          {
            v15 = v4.f32[2] <= v11.f32[2] ? v11.f32[2] - v4.f32[2] : v4.f32[2] - v11.f32[2];
            if (v15 <= 0.0001)
            {
              goto LABEL_88;
            }
          }
        }
      }
    }
  }

  v16 = *a3;
  v17 = vsubq_f32(*a3, v4);
  v18 = *a4;
  v19 = vsubq_f32(*a4, v4);
  v20 = vmulq_f32(v19, v17);
  if (v8 <= 0.0001)
  {
    v21 = v4.f32[1] <= v5.f32[1] ? v5.f32[1] - v4.f32[1] : v4.f32[1] - v5.f32[1];
    if (v21 <= 0.0001)
    {
      v22 = v4.f32[2] <= v5.f32[2] ? v5.f32[2] - v4.f32[2] : v4.f32[2] - v5.f32[2];
      if (v22 <= 0.0001)
      {
        v44 = vaddv_f32(*v20.i8) + *&v20.i32[2];
        if (v44 <= 0.0)
        {
          goto LABEL_88;
        }

        v45 = vmulq_f32(v17, v17);
        v46 = vaddv_f32(*v45.f32);
        if (v44 >= (v46 + v45.f32[2]))
        {
          v37 = *a3;
          return *v37.i64;
        }

        v47 = v44 / (v46 + v45.f32[2]);
LABEL_82:
        v4.i64[0] = vmlaq_n_f32(v4, v17, v47).u64[0];
        goto LABEL_88;
      }
    }
  }

  v23 = vmulq_f32(v19, v7);
  LODWORD(v24) = vsubq_f32(v4, v16).u32[0];
  if ((vmovn_s32(vcgtq_f32(v4, v16)).u8[0] & 1) == 0)
  {
    v24 = v17.f32[0];
  }

  if (v24 <= 0.0001)
  {
    v25 = v4.f32[1] <= v16.f32[1] ? v16.f32[1] - v4.f32[1] : v4.f32[1] - v16.f32[1];
    if (v25 <= 0.0001)
    {
      v26 = v4.f32[2] <= v16.f32[2] ? v16.f32[2] - v4.f32[2] : v4.f32[2] - v16.f32[2];
      if (v26 <= 0.0001)
      {
        goto LABEL_66;
      }
    }
  }

  LODWORD(v27) = vsubq_f32(v5, v16).u32[0];
  v28 = vsubq_f32(v16, v5);
  if ((vmovn_s32(vcgtq_f32(v5, v16)).u8[0] & 1) == 0)
  {
    v27 = v28.f32[0];
  }

  if (v27 <= 0.0001)
  {
    v29 = v5.f32[1] <= v16.f32[1] ? v16.f32[1] - v5.f32[1] : v5.f32[1] - v16.f32[1];
    if (v29 <= 0.0001)
    {
      v30 = v5.f32[2] <= v16.f32[2] ? v16.f32[2] - v5.f32[2] : v5.f32[2] - v16.f32[2];
      if (v30 <= 0.0001)
      {
LABEL_66:
        v41 = vaddv_f32(*v23.i8) + *&v23.i32[2];
        if (v41 <= 0.0)
        {
LABEL_88:
          v37.i64[0] = v4.i64[0];
          return *v37.i64;
        }

        v42 = vmulq_f32(v7, v7);
        v43 = vaddv_f32(*v42.f32);
        if (v41 < (v43 + v42.f32[2]))
        {
          v40 = v41 / (v43 + v42.f32[2]);
          goto LABEL_69;
        }

        goto LABEL_90;
      }
    }
  }

  v31 = vadd_f32(vadd_f32(vzip1_s32(*v23.i8, *v20.i8), vzip2_s32(*v23.i8, *v20.i8)), vzip1_s32(*&vextq_s8(v23, v23, 8uLL), *&vextq_s8(v20, v20, 8uLL)));
  if (v31.f32[0] <= 0.0 && v31.f32[1] <= 0.0)
  {
    goto LABEL_88;
  }

  v32 = vsubq_f32(v18, v5);
  v33 = vmulq_f32(v32, v7);
  v34 = vmulq_f32(v32, v17);
  v35 = vadd_f32(vadd_f32(vzip1_s32(*v33.i8, *v34.i8), vzip2_s32(*v33.i8, *v34.i8)), vzip1_s32(*&vextq_s8(v33, v33, 8uLL), *&vextq_s8(v34, v34, 8uLL)));
  v36 = v35.f32[0] < 0.0 || v35.f32[1] > v35.f32[0];
  v37 = *a2;
  if (v36)
  {
    v38 = vmul_f32(vrev64_s32(v35), v31);
    v39 = vsub_f32(v38, vdup_lane_s32(v38, 1));
    if (v35.f32[0] <= 0.0 && v39.f32[0] <= 0.0 && v31.f32[0] >= 0.0)
    {
      LODWORD(v40) = vdiv_f32(v31, vsub_f32(v31, v35)).u32[0];
LABEL_69:
      v4.i64[0] = vmlaq_n_f32(v4, v7, v40).u64[0];
      goto LABEL_88;
    }

    v48 = vsubq_f32(v18, v16);
    v49 = vmulq_f32(v48, v7);
    v50 = vmulq_f32(v48, v17);
    v51 = vadd_f32(vadd_f32(vzip1_s32(*v50.i8, *v49.i8), vzip2_s32(*v50.i8, *v49.i8)), vzip1_s32(*&vextq_s8(v50, v50, 8uLL), *&vextq_s8(v49, v49, 8uLL)));
    v52 = v51.f32[0] < 0.0 || v51.f32[1] > v51.f32[0];
    v37 = *a3;
    if (!v52)
    {
      return *v37.i64;
    }

    v53 = vmul_f32(v51, v31);
    v54 = vsub_f32(vdup_lane_s32(v53, 1), v53);
    if (v51.f32[0] <= 0.0 && v54.f32[0] <= 0.0 && v31.f32[1] >= 0.0)
    {
      v47 = v31.f32[1] / (v31.f32[1] - v51.f32[0]);
      goto LABEL_82;
    }

    v55 = vmul_f32(v51, v35);
    v56 = vsub_f32(v55, vdup_lane_s32(v55, 1));
    if (v56.f32[0] > 0.0 || (v35.f32[1] - v35.f32[0]) < 0.0 || (v57 = v51.f32[1] - v51.f32[0], v57 < 0.0))
    {
      v58 = 1.0 / vadd_f32(vadd_f32(v54, v39), v56).f32[0];
      v4.i64[0] = vmlaq_n_f32(vmlaq_n_f32(v4, v7, v58 * v54.f32[0]), v17, v58 * v39.f32[0]).u64[0];
      goto LABEL_88;
    }

    v5.i64[0] = vmlaq_n_f32(v5, v28, (v35.f32[1] - v35.f32[0]) / (v57 + (v35.f32[1] - v35.f32[0]))).u64[0];
LABEL_90:
    v37.i64[0] = v5.i64[0];
  }

  return *v37.i64;
}

uint64_t sub_239E74974(uint64_t a1, float32x4_t *a2)
{
  v2 = *(a1 + 1312);
  v3 = *(v2 + 320);
  if (!v3)
  {
    return 0;
  }

  v4.i64[0] = 0x3F0000003F000000;
  v4.i64[1] = 0x3F0000003F000000;
  while (!a2[10].i64[1])
  {
LABEL_11:
    v3 = v3->i64[0];
    if (!v3)
    {
      return 0;
    }
  }

  v5 = v3[1];
  v6 = vsubq_f32(v3[2], v5);
  v7 = vmulq_f32(v6, v6);
  v8 = vaddv_f32(*v7.f32) + v7.f32[2];
  v9 = a2[10].i64[1];
  while (1)
  {
    if (v3[3].i32[0] == *(v9 + 16))
    {
      v10 = vmulq_f32(vaddq_f32(a2[1], a2[2]), v4);
      v11 = vmulq_f32(vsubq_f32(v10, v5), v6);
      v12 = vaddv_f32(*v11.f32) + v11.f32[2];
      v13 = v3[1];
      if (v12 > 0.0)
      {
        v13 = v3[2];
        if (v12 < v8)
        {
          v13 = vmlaq_n_f32(v5, v6, v12 * (1.0 / v8));
        }
      }

      v14 = vsubq_f32(v13, v10);
      v15 = vmulq_f32(v14, v14);
      if (*(v2 + 248) * 0.866025404 > sqrtf(vaddv_f32(*v15.f32) + v15.f32[2]))
      {
        return 1;
      }
    }

    v9 = *v9;
    if (!v9)
    {
      goto LABEL_11;
    }
  }
}

void sub_239E74A5C(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  __p = 0;
  v9 = 0;
  v10 = 0;
  sub_239E7C5D0(&__p, 3uLL);
  v2 = *(a1 + 1312);
  v3 = *(v2 + 40);
  if (v3 != *(v2 + 48))
  {
    v6 = v3[1];
    v7 = v3[2];
    v5 = v3[3];
    operator new();
  }

  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_239E74C04(void *a1, void *a2, uint64_t *a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7)
{
  v147 = *MEMORY[0x277D85DE8];
  v8 = a1;
  v9 = a2;
  v115 = v9;
  v116 = v8;
  v11 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v8, v10, @"position", 786435);
  v14 = v11;
  if (!v11)
  {
    goto LABEL_45;
  }

  v15 = objc_msgSend_dataStart(v11, v12, v13);
  v18 = objc_msgSend_stride(v14, v16, v17);
  v21 = objc_msgSend_bufferSize(v14, v19, v20);
  v23 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v8, v22, @"normal", 786435);

  if (v23)
  {
    v123 = objc_msgSend_dataStart(v23, v24, v25);
    v126 = objc_msgSend_stride(v23, v26, v27);
    v125 = objc_msgSend_bufferSize(v23, v28, v29);
  }

  else
  {
    v125 = 0;
    v126 = 0;
    v123 = 0;
  }

  v30 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v8, v24, @"occlusionValue", 786435);

  if (v30)
  {
    objc_msgSend_dataStart(v30, v31, v32);
    objc_msgSend_stride(v30, v33, v34);
    objc_msgSend_bufferSize(v30, v35, v36);
  }

  v37 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v8, v31, @"textureCoordinate", 786435);

  if (v37)
  {
    v122 = objc_msgSend_dataStart(v37, v38, v39);
    v124 = objc_msgSend_stride(v37, v40, v41);
    v44 = objc_msgSend_bufferSize(v37, v42, v43);
  }

  else
  {
    v44 = 0;
    v124 = 0;
    v122 = 0;
  }

  v45 = objc_msgSend_indexBuffer(v9, v38, v39);
  v48 = objc_msgSend_map(v45, v46, v47);

  v114 = v48;
  v121 = objc_msgSend_bytes(v48, v49, v50);
  v118 = objc_msgSend_indexCount(v9, v51, v52);
  v143 = 0;
  v144 = 0;
  v145 = 0;
  if (objc_msgSend_geometryType(v9, v53, v54) != 2 || objc_msgSend_indexType(v9, v55, v56) != 32)
  {
    v59 = objc_msgSend_topology(v9, v55, v56);
    if (v59)
    {
      v60 = objc_msgSend_topology(v9, v57, v58);
      v63 = objc_msgSend_faceTopology(v60, v61, v62);

      if (v63)
      {
        v119 = objc_msgSend_topology(v9, v57, v58);
        v66 = objc_msgSend_faceTopology(v119, v64, v65);
        v59 = objc_msgSend_map(v66, v67, v68);

        v71 = objc_msgSend_topology(v9, v69, v70);
        v120 = objc_msgSend_faceCount(v71, v72, v73);

        if (v59)
        {
          v113 = objc_msgSend_bytes(v59, v57, v58);
LABEL_19:
          v112 = objc_msgSend_indexCount(v9, v57, v58);
          v76 = objc_msgSend_indexType(v9, v74, v75);
          v79 = objc_msgSend_geometryType(v9, v77, v78);
          sub_239F5960C(&v143, v121, v112, v113, v120, v76, v79, 2);
          v80 = v144;
          v121 = v143;

          v118 = (v80 - v121) >> 2;
          goto LABEL_20;
        }
      }

      else
      {
        v120 = 0;
        v59 = 0;
      }
    }

    else
    {
      v120 = 0;
    }

    v113 = 0;
    goto LABEL_19;
  }

LABEL_20:
  v81 = objc_msgSend_vertexCount(v116, v55, v56);
  if (v118)
  {
    v84 = v81;
    for (i = 0; i < v118; i += 3)
    {
      v141 = 0u;
      memset(v142, 0, sizeof(v142));
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v86 = &v121[4 * i];
      v87 = *(v86 + 1);
      v146[0] = *v86;
      v146[1] = v87;
      v88 = *(v86 + 2);
      v146[2] = v88;
      if (v84 > v146[0] && v84 > v87 && v84 > v88)
      {
        v89 = 0;
        v90 = 64;
        do
        {
          v91 = v146[v89];
          if (v18 * v91 + 8 < v21)
          {
            *(&v131 + v90 - 48) = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(a7, a4, *(v15 + v18 * v91)), a5, *(v15 + v18 * v91 + 4)), a6, *(v15 + v18 * v91 + 8));
            if (v23 && v126 * v91 + 8 < v125)
            {
              *(&v131 + v90) = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a4, *(v123 + v126 * v91)), a5, *(v123 + v126 * v91 + 4)), a6, *(v123 + v126 * v91 + 8)), 0, a7);
            }

            if (v37)
            {
              v92 = v124 * v91;
              if (v92 + 4 < v44)
              {
                *(v142 + v89) = *(v122 + v92);
              }
            }
          }

          ++v89;
          v90 += 16;
        }

        while (v89 != 3);
        if (v23)
        {
          v93 = vcvtq_f64_f32(*v132.f32);
          v94 = vcvt_hight_f64_f32(v132);
          v95 = vsubq_f64(vcvt_hight_f64_f32(v133), v94);
          v96 = vsubq_f64(vcvtq_f64_f32(*v133.f32), v93);
          v97 = vsubq_f64(vcvt_hight_f64_f32(v134), v94);
          v98 = vsubq_f64(vcvtq_f64_f32(*v134.f32), v93);
          v99 = vmlaq_laneq_f64(vnegq_f64(vmulq_laneq_f64(v95, v98, 1)), v97, v96, 1);
          v97.f64[1] = v98.f64[0];
          v95.f64[1] = v96.f64[0];
          v100 = vmlaq_f64(vnegq_f64(vmulq_f64(v97, v96)), v98, v95);
          v101 = vmulq_f64(v100, v100);
          v97.f64[0] = vmulq_f64(v99, v99).f64[0];
          v99.f64[1] = v100.f64[0];
          v101.f64[0] = 1.0 / sqrt(v97.f64[0] + v101.f64[0] + v101.f64[1]);
          v102 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v99, v101.f64[0])), vmulq_laneq_f64(v101, v100, 1));
        }

        else
        {
          v103 = vsubq_f32(v133, v132);
          v104 = vsubq_f32(v134, v132);
          v105 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v104, v104), v104, 0xCuLL), v103)), vextq_s8(vuzp1q_s32(v103, v103), v103, 0xCuLL), v104);
          v106 = vmulq_f32(v105, v105);
          *&v107 = (v106.f32[2] + v106.f32[0]) + v106.f32[1];
          *v104.f32 = vrsqrte_f32(v107);
          *v104.f32 = vmul_f32(vrsqrts_f32(v107, vmul_f32(*v104.f32, *v104.f32)), *v104.f32);
          v102 = vmulq_n_f32(vextq_s8(vuzp1q_s32(v105, v105), v105, 0xCuLL), vmul_f32(*v104.f32, vrsqrts_f32(v107, vmul_f32(*v104.f32, *v104.f32))).f32[0]);
          v135 = v102;
          v136 = v102;
          v137 = v102;
        }

        v138 = v102;
        *&v131 = v116;
        *(&v131 + 1) = objc_msgSend_material(v115, v82, v83);

        sub_239E7532C(&v131);
        v108 = a3[1];
        if (v108 >= a3[2])
        {
          v110 = sub_239E7C3B4(a3, &v131);
        }

        else
        {
          sub_239E79CE8(v108, &v131);
          v110 = v109 + 224;
        }

        a3[1] = v110;
      }
    }
  }

  if (v143)
  {
    v144 = v143;
    operator delete(v143);
  }

  v9 = v115;
LABEL_45:

  v111 = *MEMORY[0x277D85DE8];
}

void sub_239E7526C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14)
{
  v19 = *(v17 - 152);
  if (v19)
  {
    *(v17 - 144) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(a1);
}

float sub_239E7532C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 32);
  v3 = vcvt_hight_f64_f32(v1);
  v4 = vcvt_hight_f64_f32(v2);
  v5 = vcvtq_f64_f32(*v2.f32);
  v6 = vsubq_f64(vcvtq_f64_f32(*v1.f32), v5);
  v7 = vsubq_f64(v3, v4);
  v8 = *(a1 + 48);
  v9 = vsubq_f64(vcvtq_f64_f32(*v8.f32), v5);
  v10 = vsubq_f64(vcvt_hight_f64_f32(v8), v4);
  v11 = vaddvq_f64(vmulq_f64(v9, v9)) + vmulq_f64(v10, v10).f64[0];
  v12 = vaddq_f64(vpaddq_f64(vmulq_f64(v6, v6), vmulq_f64(v9, v6)), vzip1q_s64(vmulq_f64(v7, v7), vmulq_f64(v10, v7)));
  v13.f64[1] = v12.f64[1];
  v13.f64[0] = v11;
  v14 = vmulq_f64(v13, v12);
  v15 = vsubq_f64(vdupq_laneq_s64(v14, 1), v14);
  v15.f64[0] = 1.0 / v15.f64[0];
  *(a1 + 128) = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v6, v15.f64[0])), vmulq_f64(v15, v7));
  *(a1 + 144) = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v9, v15.f64[0])), vmulq_f64(v15, v10));
  *(a1 + 160) = vcvt_f32_f64(v12);
  result = v11;
  *(a1 + 168) = result;
  return result;
}

void sub_239E753DC(void *a1, uint64_t *a2, int a3, float32x4_t a4, float32x4_t a5)
{
  v58 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v10 = objc_msgSend_transform(v7, v8, v9);
  v13 = v10;
  if (v10)
  {
    objc_msgSend_matrix(v10, v11, v12);
    v14 = 0;
    v51[0] = v15;
    v51[1] = v16;
    v51[2] = v17;
    v51[3] = v18;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    do
    {
      *(&v52 + v14 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4, COERCE_FLOAT(v51[v14])), a5, *&v51[v14], 1), v40, v51[v14], 2), v39, v51[v14], 3);
      ++v14;
    }

    while (v14 != 4);
    a5 = v53;
    a4 = v52;
    v39 = v55;
    v40 = v54;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v7;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v24 = objc_msgSend_submeshes(v21, v22, v23);
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v47, v57, 16);
    if (v26)
    {
      v27 = *v48;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v48 != v27)
          {
            objc_enumerationMutation(v24);
          }

          sub_239E74C04(v21, *(*(&v47 + 1) + 8 * i), a2, a4, a5, v40, v39);
        }

        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v29, &v47, v57, 16);
      }

      while (v26);
    }
  }

  if (a3)
  {
    v30 = objc_msgSend_children(v7, v19, v20);
    v31 = v30;
    if (v30)
    {
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v32 = v30;
      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v43, v56, 16);
      if (v34)
      {
        v35 = *v44;
        do
        {
          for (j = 0; j != v34; ++j)
          {
            if (*v44 != v35)
            {
              objc_enumerationMutation(v32);
            }

            sub_239E753DC(*(*(&v43 + 1) + 8 * j), a2, 1, a4, a5, v40, v39);
          }

          v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v37, &v43, v56, 16);
        }

        while (v34);
      }
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

uint64_t sub_239E756B8(uint64_t a1, float a2)
{
  v2 = *(a1 + 1312);
  v3 = *(v2 + 248);
  if (v3 > a2)
  {
    return 0;
  }

  v76 = 0;
  *(v75.i64 + 4) = 0;
  v75.i32[0] = 0;
  v74 = 0;
  v72 = 0u;
  v73 = 0u;
  v7 = sub_239E7CBA4(&v72, v2 + 344);
  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  v8 = ceilf((a2 - v3) / *(*(a1 + 1312) + 248));
  v9 = v8 + v8;
  v10 = v9;
  LODWORD(v71) = 1065353216;
  if (v9 >= 4295000000.0)
  {
    v10 = -1;
  }

  v60 = v10;
  if (*(&v73 + 1))
  {
    v11 = 0;
    v12 = a1 + 896;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v61 = v10 - 1;
    __asm
    {
      FMOV            V1.4S, #1.0
      FMOV            V0.4S, #-1.0
    }

    v62 = _Q1;
    do
    {
      for (i = v73; i; i = *i)
      {
        v20 = *(a1 + 1312);
        v23 = *(v20 + 24);
        v21 = v20 + 24;
        v22 = v23;
        if (v23)
        {
          v24 = i[2];
          v25 = v21;
          do
          {
            v26 = *(v22 + 32);
            _CF = v26 >= v24;
            v27 = v26 < v24;
            if (_CF)
            {
              v25 = v22;
            }

            v22 = *(v22 + 8 * v27);
          }

          while (v22);
          if (v25 != v21 && v24 >= *(v25 + 32))
          {
            sub_239E761FC(v7, *(*(v25 + 40) + 8), &v75);
            for (j = 0; j != 6; ++j)
            {
              v29 = vaddq_s32(*(v12 + 16 * j), v75);
              if ((v29.i32[0] & 0x80000000) == 0 && (v29.i32[1] & 0x80000000) == 0)
              {
                v30 = v29.i32[2];
                if ((v29.i32[2] & 0x80000000) == 0)
                {
                  v31 = *(a1 + 1312);
                  v32 = vmovn_s32(vcgtq_s32(v31[18], v29));
                  if (v32.i8[0] & 1) != 0 && (v32.i8[2] & 1) != 0 && (v32.i8[4])
                  {
                    v76 = *(v31[9].i64[0] + 8 * v29.u8[8]) | ((*(v31[7].i64[1] + 8 * v29.u8[5]) | *(v31[9].i64[0] + 8 * v29.u8[9]) | *(v31[6].i64[0] + 8 * v29.u8[1])) << 24) | *(v31[7].i64[1] + 8 * v29.u8[4]) | *(v31[6].i64[0] + 8 * v29.u8[0]);
                    v64 = v29;
                    v7 = sub_239E7C134(&v31[10].i64[1], &v76);
                    if (!v7)
                    {
                      v33 = 0;
                      v34 = 0;
                      v35 = *(a1 + 1312);
                      v36 = 3.4028e38;
                      do
                      {
                        v37 = vaddq_s32(*(v12 + 16 * v33), v64);
                        v38 = v37.i16[0];
                        if ((v37.i32[0] & 0x80000000) == 0)
                        {
                          v39 = v37.i16[2];
                          if ((v37.i32[1] & 0x80000000) == 0)
                          {
                            v40 = v37.i16[4];
                            if ((v37.i32[2] & 0x80000000) == 0)
                            {
                              v37 = vcgtq_s32(*(v35 + 288), v37);
                              *v37.f32 = vmovn_s32(v37);
                              if (v37.i8[0] & 1) != 0 && (v37.i8[2] & 1) != 0 && (v37.i8[4])
                              {
                                v41 = *(v35 + 24);
                                if (v41)
                                {
                                  v42 = *(v35 + 144);
                                  v43 = *(v35 + 120);
                                  v44 = *(v35 + 96);
                                  v7 = *(v43 + 8 * HIBYTE(v39)) | *(v42 + 8 * HIBYTE(v40)) | *(v44 + 8 * HIBYTE(v38));
                                  v45 = *(v42 + 8 * v40) | (v7 << 24) | *(v43 + 8 * v39) | *(v44 + 8 * v38);
                                  v46 = v35 + 24;
                                  do
                                  {
                                    v47 = *(v41 + 32);
                                    _CF = v47 >= v45;
                                    v48 = v47 < v45;
                                    if (_CF)
                                    {
                                      v46 = v41;
                                    }

                                    v41 = *(v41 + 8 * v48);
                                  }

                                  while (v41);
                                  if (v46 != v35 + 24 && v45 >= *(v46 + 32))
                                  {
                                    v49 = *(v46 + 40);
                                    v50 = fabsf(*(v49 + 116));
                                    if (v50 < v36)
                                    {
                                      v36 = v50;
                                      v34 = v49;
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }

                        ++v33;
                      }

                      while (v33 != 18);
                      if (v34)
                      {
                        v37.i32[0] = *(v34 + 116);
                        *v37.f32 = vcvt_f32_s32(*v64.i8);
                        v37.f32[2] = v30;
                        v51 = vaddq_f32(v37, v62);
                        v52 = *(v35 + 248);
                        v53 = vmlaq_n_f32(*(v35 + 272), v51, v52);
                        v51.f32[0] = v52 * 0.5;
                        v63 = vsubq_f32(v53, vdupq_lane_s32(*v51.f32, 0));
                        v65 = v52;
                        v77[0] = v63;
                        v54 = (*(v35 + 40) + 224 * *(v34 + 144));
                        v68 = v54[1];
                        v67 = v54[3];
                        v66 = v54[2];
                        *v55.i64 = sub_239E74590(&v68, &v67, &v66, v77);
                        v56 = vsubq_f32(v63, v55);
                        v57 = vmulq_f32(v56, v56);
                        v58 = sqrtf(vaddv_f32(*v57.f32) + v57.f32[2]);
                        if (v58 <= v36)
                        {
                          v59 = v65 + v36;
                        }

                        else
                        {
                          v59 = v58;
                        }

                        if (v59 < a2)
                        {
                          operator new();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      if (v11 == v61)
      {
        break;
      }

      LODWORD(v74) = v71;
      sub_239E7CC1C(&v72, v70, 0);
      ++v11;
      v7 = sub_239E7D264(&v69);
    }

    while (*(&v73 + 1));
  }

  sub_239E7B644(&v69);
  sub_239E7B644(&v72);
  return v60;
}

void sub_239E75C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  sub_239E7B644(&a29);
  sub_239E7B644(&a35);
  _Unwind_Resume(a1);
}

void *sub_239E75C74(void *result, int a2)
{
  v2 = a2 - 1;
  if (a2 >= 1)
  {
    v3 = result;
    v75 = 0;
    *(v74.i64 + 4) = 0;
    v74.i32[0] = 0;
    v71 = 0u;
    v72 = 0u;
    v73 = 1065353216;
    v68 = 0u;
    v69 = 0u;
    v70 = 1065353216;
    v65 = 0u;
    v66 = 0u;
    v67 = 1065353216;
    v4 = *(result[164] + 400);
    if (v4)
    {
      do
      {
        v5 = v4[2];
        v64 = v5;
        v6 = v3[164];
        v7 = &v6[1].i8[8];
        v8 = v6[1].i64[1];
        if (v8)
        {
          v9 = &v6[1].i8[8];
          v10 = v6[1].i64[1];
          do
          {
            v11 = *(v10 + 32);
            v12 = v11 >= v5;
            v13 = v11 < v5;
            if (v12)
            {
              v9 = v10;
            }

            v10 = *(v10 + 8 * v13);
          }

          while (v10);
          if (v9 != v7 && v5 >= *(v9 + 4))
          {
            sub_239E761FC(result, *(*(v9 + 5) + 8), &v74);
            v14 = 0;
            while (1)
            {
              v15 = vaddq_s32(*&v3[2 * v14 + 112], v74);
              v16 = v15.i16[0];
              if (v15.i32[0] < 0)
              {
                break;
              }

              v17 = v15.i16[2];
              if (v15.i32[1] < 0)
              {
                break;
              }

              if (v15.i32[2] < 0)
              {
                break;
              }

              v18 = vmovn_s32(vcgtq_s32(v6[18], v15));
              if ((v18.i8[0] & 1) == 0 || (v18.i8[2] & 1) == 0 || (v18.i8[4] & 1) == 0)
              {
                break;
              }

              v19 = *(v6[9].i64[0] + 8 * v15.u8[8]) | ((*(v6[7].i64[1] + 8 * HIBYTE(v17)) | *(v6[9].i64[0] + 8 * v15.u8[9]) | *(v6[6].i64[0] + 8 * HIBYTE(v16))) << 24) | *(v6[7].i64[1] + 8 * v17) | *(v6[6].i64[0] + 8 * v16);
              v75 = v19;
              v20 = &v6[1].i8[8];
              v21 = v8;
              do
              {
                v22 = *(v21 + 4);
                v12 = v22 >= v19;
                v23 = v22 < v19;
                if (v12)
                {
                  v20 = v21;
                }

                v21 = *&v21[8 * v23];
              }

              while (v21);
              if (v20 == v7 || v19 < *(v20 + 4))
              {
                break;
              }

              if (++v14 == 6)
              {
                goto LABEL_28;
              }
            }

            result = sub_239E7B9B0(&v65, &v64);
          }
        }

LABEL_28:
        v4 = *v4;
      }

      while (v4);
      v24 = *&v67;
      v25 = v66;
    }

    else
    {
      v25 = 0;
      v24 = 1.0;
    }

    *&v73 = v24;
    sub_239E7CC1C(&v71, v25, 0);
    if (*(&v72 + 1))
    {
      v27 = 0;
      do
      {
        for (i = v72; i; i = *i)
        {
          v29 = v3[164];
          v32 = *(v29 + 24);
          v30 = v29 + 24;
          v31 = v32;
          if (v32)
          {
            v33 = i[2];
            v34 = v30;
            do
            {
              v35 = *(v31 + 32);
              v12 = v35 >= v33;
              v36 = v35 < v33;
              if (v12)
              {
                v34 = v31;
              }

              v31 = *(v31 + 8 * v36);
            }

            while (v31);
            if (v34 != v30 && v33 >= *(v34 + 32))
            {
              sub_239E761FC(v26, *(*(v34 + 40) + 8), &v74);
              v37 = 0;
              v63 = v74;
              do
              {
                v38 = vaddq_s32(*&v3[2 * v37 + 112], v63);
                v39 = v38.i16[0];
                if ((v38.i32[0] & 0x80000000) == 0)
                {
                  v40 = v38.i16[2];
                  if ((v38.i32[1] & 0x80000000) == 0 && (v38.i32[2] & 0x80000000) == 0)
                  {
                    v41 = v3[164];
                    v42 = vmovn_s32(vcgtq_s32(v41[18], v38));
                    if (v42.i8[0] & 1) != 0 && (v42.i8[2] & 1) != 0 && (v42.i8[4])
                    {
                      v45 = v41[1].i64[1];
                      v43 = &v41[1].i64[1];
                      v44 = v45;
                      v46 = *(v43[15] + 8 * v38.u8[8]) | ((*(v43[12] + 8 * HIBYTE(v40)) | *(v43[15] + 8 * v38.u8[9]) | *(v43[9] + 8 * HIBYTE(v39))) << 24) | *(v43[12] + 8 * v40) | *(v43[9] + 8 * v39);
                      v75 = v46;
                      if (!v45)
                      {
                        goto LABEL_57;
                      }

                      v47 = v43;
                      do
                      {
                        v48 = *(v44 + 32);
                        v12 = v48 >= v46;
                        v49 = v48 < v46;
                        if (v12)
                        {
                          v47 = v44;
                        }

                        v44 = *(v44 + 8 * v49);
                      }

                      while (v44);
                      if (v47 == v43 || v46 < v47[4])
                      {
LABEL_57:
                        v47 = v43;
                      }

                      v50 = sub_239E7C134(&v65, &v75);
                      v26 = sub_239E7C134((v3[164] + 384), &v75);
                      if (v47 != (v3[164] + 24) && v26 != 0 && v50 == 0)
                      {
                        v53 = v47[5];
                        if (*(v53 + 192) != 1 || *(v53 + 200) == 1)
                        {
                          sub_239E7B9B0(&v68, &v75);
                          v26 = sub_239E7B9B0(&v65, &v75);
                        }
                      }
                    }
                  }
                }

                ++v37;
              }

              while (v37 != 6);
            }
          }
        }

        if (v27 == v2)
        {
          break;
        }

        LODWORD(v73) = v70;
        sub_239E7CC1C(&v71, v69, 0);
        ++v27;
        v26 = sub_239E7D264(&v68);
      }

      while (*(&v72 + 1));
    }

    for (j = v66; j; j = *j)
    {
      v55 = j[2];
      v64 = v55;
      v56 = v3[164];
      v59 = *(v56 + 24);
      v57 = v56 + 24;
      v58 = v59;
      if (v59)
      {
        v60 = v57;
        do
        {
          v61 = *(v58 + 32);
          v12 = v61 >= v55;
          v62 = v61 < v55;
          if (v12)
          {
            v60 = v58;
          }

          v58 = *(v58 + 8 * v62);
        }

        while (v58);
        if (v60 != v57 && v55 >= *(v60 + 32))
        {
          sub_239E7D2D0((v3[164] + 168), &v64);
          sub_239E7D2D0((v3[164] + 384), &v64);
          sub_239E7D308((v3[164] + 16), &v64);
        }
      }
    }

    sub_239E7B644(&v65);
    sub_239E7B644(&v68);
    return sub_239E7B644(&v71);
  }

  return result;
}

void sub_239E76134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  sub_239E7B644(va);
  sub_239E7B644(va1);
  sub_239E7B644(va2);
  _Unwind_Resume(a1);
}

void sub_239E76168(uint64_t a1, float32x4_t **a2)
{
  for (i = *(*(a1 + 1312) + 400); i; i = *i)
  {
    v5 = *(a1 + 1312);
    v8 = *(v5 + 24);
    v6 = v5 + 24;
    v7 = v8;
    if (v8)
    {
      v9 = i[2];
      v10 = v6;
      do
      {
        v11 = *(v7 + 32);
        v12 = v11 >= v9;
        v13 = v11 < v9;
        if (v12)
        {
          v10 = v7;
        }

        v7 = *(v7 + 8 * v13);
      }

      while (v7);
      if (v10 != v6 && v9 >= *(v10 + 32))
      {
        sub_239E763B4(*a2, *(v10 + 40), *(*(a1 + 1312) + 424));
      }
    }
  }
}

double sub_239E761FC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = xmmword_239F9AD30;
  v4 = xmmword_239F9AD40;
  v5 = xmmword_239F9AD50;
  v6 = vdupq_n_s64(a2);
  v7 = 0uLL;
  v8 = vdupq_n_s64(1uLL);
  v9 = vdupq_n_s64(2uLL);
  v10 = vdupq_n_s64(4uLL);
  v11 = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  v12 = 24;
  v13 = xmmword_239F9AD60;
  v14 = vdupq_n_s64(0xFFFFFFFFFFFFFFFCLL);
  v15 = 0uLL;
  v16 = 0uLL;
  do
  {
    v17 = v3;
    v18.i64[0] = 3 * v3.i64[0];
    v19 = v4;
    v18.i64[1] = 3 * v17.i64[1];
    v20.i64[0] = 3 * v4.i64[0];
    v20.i64[1] = 3 * v19.i64[1];
    v21 = v16;
    v22 = v15;
    v23 = v7;
    v7 = vorrq_s8(v7, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v8, v20), v6), vnegq_s64(vaddq_s64(v19, v19))), vshlq_u64(vandq_s8(vshlq_u64(v8, v18), v6), vnegq_s64(vaddq_s64(v17, v17)))));
    v24 = vaddq_s64(v18, v5);
    v25 = vaddq_s64(v20, v13);
    v16 = vorrq_s8(v16, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v9, v20), v6), vmvnq_s8(v25)), vshlq_u64(vandq_s8(vshlq_u64(v9, v18), v6), vmvnq_s8(v24))));
    v15 = vorrq_s8(v15, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v10, v20), v6), vsubq_s64(v11, v25)), vshlq_u64(vandq_s8(vshlq_u64(v10, v18), v6), vsubq_s64(v11, v24))));
    v5 = vaddq_s64(v5, v14);
    v13 = vaddq_s64(v13, v14);
    v3 = vaddq_s64(v17, v10);
    v4 = vaddq_s64(v19, v10);
    v12 -= 4;
  }

  while (v12);
  v26 = vdupq_n_s64(0x15uLL);
  v27 = vuzp1q_s32(vcgtq_u64(v26, v19), vcgtq_u64(v26, v17));
  v28 = vbslq_s8(v27, v16, v21);
  v29 = vbslq_s8(v27, v15, v22);
  v30 = vbslq_s8(v27, v7, v23);
  *v30.i8 = vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL));
  v31 = v30.i32[0] | v30.i32[1];
  v32 = vorr_s8(*v29.i8, *&vextq_s8(v29, v29, 8uLL));
  *v30.i8 = vorr_s8(*v28.i8, *&vextq_s8(v28, v28, 8uLL));
  result = COERCE_DOUBLE(__PAIR64__(v30.i32[0] | v30.i32[1], v31));
  *(a3 + 8) = v32.i32[0] | v32.i32[1];
  *a3 = result;
  return result;
}

void sub_239E763B4(float32x4_t *a1, uint64_t a2, int a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = a3;
    v6.i64[0] = 0x3F0000003F000000;
    v6.i64[1] = 0x3F0000003F000000;
    __asm
    {
      FMOV            V1.4S, #-1.0
      FMOV            V0.4S, #0.25
    }

    while (v5 >= 1)
    {
      v13 = vcgeq_f32(vmulq_f32(vaddq_f32(*(a2 + 16), *(a2 + 32)), v6), vmulq_f32(vaddq_f32(v4[1], v4[2]), v6));
      v14 = vmovn_s32(vmvnq_s8(v13));
      if (v14.i8[0])
      {
        v15 = 0;
      }

      else
      {
        v15 = 4;
      }

      v16 = vmovn_s32(v13).i8[4];
      if (v14.i8[2])
      {
        v17 = v15;
      }

      else
      {
        v17 = v15 | 2;
      }

      v18 = v4[3].i64[v17 & 0xFFFFFFFE | v16 & 1];
      if (!v18)
      {
        operator new();
      }

      v4 = v4[3].i64[v17 & 0xFFFFFFFE | v16 & 1];
      if (!--v5)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v18 = a1;
LABEL_15:
    *(v18 + 32) = *(a2 + 32);
    *(v18 + 16) = *(a2 + 16);
    *(v18 + 116) = *(a2 + 116);
    *(v18 + 128) = *(a2 + 128);
    *(v18 + 144) = *(a2 + 144);
    *(v18 + 192) = *(a2 + 192);
    *(v18 + 8) = *(a2 + 8);
    *(v18 + 196) = *(a2 + 196);
    *(v18 + 200) = *(a2 + 200);
    if (v18 != a2)
    {
      *(v18 + 184) = *(a2 + 184);
      sub_239E7D780((v18 + 152), *(a2 + 168), 0);
    }

    *(v18 + 208) = *(a2 + 208);
    *(v18 + 224) = *(a2 + 224);
    *(v18 + 240) = *(a2 + 240);
    *(v18 + 256) = *(a2 + 256);
  }
}

float32x4_t *sub_239E76650(float32x4_t *result, float32x4_t *a2, int a3)
{
  v3 = a3 - 1;
  if (a3 == 1)
  {
    v4.i64[0] = 0x3F0000003F000000;
    v4.i64[1] = 0x3F0000003F000000;
    v5 = vmulq_f32(vaddq_f32(a2[1], a2[2]), v4);
    v6 = v5.f32[2];
  }

  else
  {
    if ((a3 & ~(a3 >> 31)) <= a3 - 2)
    {
      return result;
    }

    v7.i64[0] = 0x3F0000003F000000;
    v7.i64[1] = 0x3F0000003F000000;
    v5 = vmulq_f32(vaddq_f32(a2[1], a2[2]), v7);
    v6 = v5.f32[2];
    do
    {
      v8 = vcgeq_f32(v5, vmulq_f32(vaddq_f32(result[1], result[2]), v7));
      v9 = vmovn_s32(vmvnq_s8(v8));
      if (v9.i8[0])
      {
        v10 = 0;
      }

      else
      {
        v10 = 4;
      }

      if ((v9.i8[2] & 1) == 0)
      {
        v10 |= 2u;
      }

      result = result[3].i64[v10 & 0xFFFFFFFE | vmovn_s32(v8).i32[1] & 1];
      --v3;
    }

    while (v3);
  }

  v11.i64[0] = 0x3F0000003F000000;
  v11.i64[1] = 0x3F0000003F000000;
  v12 = vmulq_f32(vaddq_f32(result[1], result[2]), v11);
  v13 = vmvn_s8(vcge_f32(*v5.f32, *v12.f32));
  if (v13.i8[0])
  {
    v14 = 0;
  }

  else
  {
    v14 = 4;
  }

  if (v13.i8[4])
  {
    v15 = v14;
  }

  else
  {
    v15 = v14 | 2;
  }

  if (v6 >= v12.f32[2])
  {
    ++v15;
  }

  result[3].i64[v15] = 0;
  return result;
}

void sub_239E76738(uint64_t *a1)
{
  v56.i32[2] = 0;
  v56.i64[0] = 0;
  v46 = *(a1[164] + 184);
  if (v46)
  {
    v1 = a1;
    v57 = 0;
    v2 = a1 + 112;
    __asm
    {
      FMOV            V1.4S, #1.0
      FMOV            V0.4S, #-1.0
    }

    v48 = _Q1;
    do
    {
      v8 = v1[164];
      v11 = *(v8 + 24);
      v9 = v8 + 24;
      v10 = v11;
      if (v11)
      {
        v12 = v46[2];
        v13 = v9;
        do
        {
          v14 = *(v10 + 32);
          _CF = v14 >= v12;
          v15 = v14 < v12;
          if (_CF)
          {
            v13 = v10;
          }

          v10 = *(v10 + 8 * v15);
        }

        while (v10);
        if (v13 != v9 && v12 >= *(v13 + 32))
        {
          v47 = *(v13 + 40);
          for (i = *(v47 + 168); i; i = *i)
          {
            v55 = *(i + 4);
            v17 = v55;
            v18 = *(v1[164] + 40);
            sub_239E761FC(a1, *(v47 + 8), &v56);
            v19 = 0;
            v20 = v56;
            v21 = (v18 + 224 * v17);
            v49 = v56;
            do
            {
              v22 = vaddq_s32(*&v2[2 * v19], v20);
              v23 = v22.i16[0];
              if ((v22.i32[0] & 0x80000000) == 0)
              {
                v24 = v22.i16[2];
                if ((v22.i32[1] & 0x80000000) == 0)
                {
                  v25 = v22.i16[4];
                  if ((v22.i32[2] & 0x80000000) == 0)
                  {
                    v26 = v1[164];
                    v27 = vmovn_s32(vcgtq_s32(*(v26 + 288), v22));
                    if (v27.i8[0] & 1) != 0 && (v27.i8[2] & 1) != 0 && (v27.i8[4])
                    {
                      *v22.i8 = vcvt_f32_u32(*v22.i8);
                      *&v22.i32[2] = v22.u32[2];
                      v28 = vaddq_f32(v22, v48);
                      v29 = *(v26 + 248);
                      v30 = vmlaq_n_f32(*(v26 + 272), v28, v29);
                      v28.f32[0] = v29 * 0.5;
                      v50 = v29;
                      v51 = vsubq_f32(v30, vdupq_lane_s32(*v28.f32, 0));
                      v58[0] = v51;
                      v54 = v21[1];
                      v53 = v21[3];
                      v52 = v21[2];
                      *v31.i64 = sub_239E74590(&v54, &v53, &v52, v58);
                      v32 = vsubq_f32(v51, v31);
                      v33 = vmulq_f32(v32, v32);
                      v34 = sqrtf(vaddv_f32(*v33.f32) + v33.f32[2]);
                      v37 = *(v26 + 24);
                      v36 = (v26 + 24);
                      v35 = v37;
                      v38 = *(v36[15] + 8 * v25) | ((*(v36[12] + 8 * HIBYTE(v24)) | *(v36[15] + 8 * HIBYTE(v25)) | *(v36[9] + 8 * HIBYTE(v23))) << 24) | *(v36[12] + 8 * v24) | *(v36[9] + 8 * v23);
                      v57 = v38;
                      if (!v37)
                      {
                        goto LABEL_27;
                      }

                      v39 = v36;
                      do
                      {
                        v40 = v35[4];
                        _CF = v40 >= v38;
                        v41 = v40 < v38;
                        if (_CF)
                        {
                          v39 = v35;
                        }

                        v35 = v35[v41];
                      }

                      while (v35);
                      if (v39 == v36 || v38 < v39[4])
                      {
LABEL_27:
                        operator new();
                      }

                      v42 = v39[5];
                      v20 = v49;
                      if ((v42[12].i8[0] & 1) == 0)
                      {
                        v43 = fabsf(v42[7].f32[1]);
                        if (v50 * 0.866025404 <= v43)
                        {
                          v44 = v55;
                          if (v42[9].i32[0] != v55 && v34 < v43)
                          {
                            v42[7].f32[1] = -v34;
                            v42[8] = v31;
                            v42[9].i32[0] = v44;
                            a1 = sub_239E7BF04(&v42[9].i64[1], &v55);
                            v20 = v49;
                          }
                        }
                      }
                    }
                  }
                }
              }

              ++v19;
            }

            while (v19 != 26);
          }
        }
      }

      v46 = *v46;
    }

    while (v46);
  }
}

void sub_239E76B44(uint64_t a1)
{
  v40.i32[2] = 0;
  v40.i64[0] = 0;
  v1 = *(a1 + 1312);
  v2 = *(v1 + 184);
  if (v2)
  {
    v3 = v1 + 24;
    v4 = *(v1 + 24);
    v5 = a1 + 896;
    __asm { FMOV            V0.4S, #1.0 }

    v39 = _Q0;
    do
    {
      if (v4)
      {
        v11 = v2[2];
        v12 = v1 + 24;
        v13 = v4;
        do
        {
          v14 = *(v13 + 32);
          _CF = v14 >= v11;
          v15 = v14 < v11;
          if (_CF)
          {
            v12 = v13;
          }

          v13 = *(v13 + 8 * v15);
        }

        while (v13);
        if (v12 != v3 && v11 >= *(v12 + 32))
        {
          v16 = *(v12 + 40);
          v17 = *(v16 + 116);
          if (v17 < 0.0)
          {
            sub_239E761FC(a1, *(v16 + 8), &v40);
            v19 = 0;
            *v20.f32 = vcvt_f32_s32(*v40.i8);
            v20.f32[2] = v40.i32[2];
            v21 = vaddq_f32(v20, v39);
            while (1)
            {
              v22 = vaddq_s32(*(v5 + 16 * v19), v40);
              if ((v22.i32[0] & 0x80000000) == 0 && (v22.i32[1] & 0x80000000) == 0 && (v22.i32[2] & 0x80000000) == 0)
              {
                v23 = vmovn_s32(vcgtq_s32(*(v1 + 288), v22));
                if (v23.i8[0] & 1) != 0 && (v23.i8[2] & 1) != 0 && (v23.i8[4])
                {
                  v24 = *(*(v1 + 144) + 8 * v22.u8[8]) | ((*(*(v1 + 120) + 8 * v22.u8[5]) | *(*(v1 + 144) + 8 * v22.u8[9]) | *(*(v1 + 96) + 8 * v22.u8[1])) << 24) | *(*(v1 + 120) + 8 * v22.u8[4]) | *(*(v1 + 96) + 8 * v22.u8[0]);
                  v25 = v1 + 24;
                  v26 = v4;
                  do
                  {
                    v27 = *(v26 + 32);
                    _CF = v27 >= v24;
                    v28 = v27 < v24;
                    if (_CF)
                    {
                      v25 = v26;
                    }

                    v26 = *(v26 + 8 * v28);
                  }

                  while (v26);
                  if (v25 != v3 && v24 >= *(v25 + 32))
                  {
                    v29 = *(v25 + 40);
                    if ((v29[12].i8[0] & 1) == 0 && v29[7].f32[1] >= 0.0)
                    {
                      v30 = v29[8];
                      v31 = *(v1 + 248);
                      v18.f32[0] = v31 * 0.5;
                      v18 = vdupq_lane_s32(*v18.f32, 0);
                      v32 = vsubq_f32(vsubq_f32(vmlaq_n_f32(*(v1 + 272), v21, v31), v18), v30);
                      v33 = vmulq_f32(v32, v32);
                      *&v34 = vaddv_f32(*v33.f32) + v33.f32[2];
                      *v33.f32 = vrsqrte_f32(v34);
                      *v33.f32 = vmul_f32(vrsqrts_f32(v34, vmul_f32(*v33.f32, *v33.f32)), *v33.f32);
                      *v22.i8 = vcvt_f32_s32(*v22.i8);
                      *&v22.i32[2] = v22.i32[2];
                      v35 = vsubq_f32(vsubq_f32(vmlaq_n_f32(*(v1 + 272), vaddq_f32(v22, v39), v31), v18), v30);
                      v36 = vmulq_f32(v35, v35);
                      *&v37 = vaddv_f32(*v36.f32) + v36.f32[2];
                      *v36.f32 = vrsqrte_f32(v37);
                      *v36.f32 = vmul_f32(vrsqrts_f32(v37, vmul_f32(*v36.f32, *v36.f32)), *v36.f32);
                      v38 = vmulq_f32(vmulq_n_f32(v32, vmul_f32(*v33.f32, vrsqrts_f32(v34, vmul_f32(*v33.f32, *v33.f32))).f32[0]), vmulq_n_f32(v35, vmul_f32(*v36.f32, vrsqrts_f32(v37, vmul_f32(*v36.f32, *v36.f32))).f32[0]));
                      if ((vaddv_f32(*v38.f32) + v38.f32[2]) > 0.0)
                      {
                        break;
                      }
                    }
                  }
                }
              }

              if (++v19 == 26)
              {
                goto LABEL_30;
              }
            }

            *(v16 + 116) = -v17;
          }
        }
      }

LABEL_30:
      v2 = *v2;
    }

    while (v2);
  }
}

uint64_t sub_239E76DF4(uint64_t result)
{
  v1 = *(result + 1312);
  v2 = v1[18];
  if (v2.i32[0] >= 1)
  {
    v3 = 0;
    v4 = v1[18].i64[1];
    v5 = HIDWORD(v1[18].i64[0]);
    v6 = &v1[1].i8[8];
    v7 = result + 896;
    do
    {
      if ((v5 & 0x80000000) == 0)
      {
        v8 = 0;
        v9 = v3;
        result = 1;
        do
        {
          v10 = v9;
          v10.i32[2] = 0;
          v11 = v10;
          v11.i32[3] = v9.i32[3];
          if ((v4 & 0x80000000) == 0)
          {
            v12 = 0;
            v13 = v1[9].i64[0];
            v14 = v1[7].i64[1];
            v15 = v1[6].i64[0];
            v16 = v1[1].i64[1];
            do
            {
              if (v16)
              {
                v17 = *(v13 + 8 * v12) | ((*(v14 + 8 * v11.u8[5]) | *(v13 + 8 * BYTE1(v12)) | *(v15 + 8 * v11.u8[1])) << 24) | *(v14 + 8 * v11.u8[4]) | *(v15 + 8 * v11.u8[0]);
                v18 = &v1[1].i8[8];
                v19 = v16;
                do
                {
                  v20 = *(v19 + 4);
                  v21 = v20 >= v17;
                  v22 = v20 < v17;
                  if (v21)
                  {
                    v18 = v19;
                  }

                  v19 = *&v19[8 * v22];
                }

                while (v19);
                if (v18 != v6 && v17 >= *(v18 + 4))
                {
                  v23 = *(v18 + 5);
                  if (*(v23 + 192))
                  {
                    result = 0;
                    v8 = v12;
                  }

                  else if (result)
                  {
                    *(v23 + 116) = -*(v23 + 116);
                    *(v23 + 196) = -*(v23 + 196);
                    result = 1;
                  }

                  else
                  {
                    v24 = 3;
                    while (1)
                    {
                      v25 = vaddq_s32(*(v7 + 16 * v24), v11);
                      v26 = v25.i16[0];
                      if ((v25.i32[0] & 0x80000000) == 0)
                      {
                        v27 = v25.i16[2];
                        if ((v25.i32[1] & 0x80000000) == 0 && (v25.i32[2] & 0x80000000) == 0)
                        {
                          v28 = vmovn_s32(vcgtq_s32(v1[18], v25));
                          if (v28.i8[0] & 1) != 0 && (v28.i8[2] & 1) != 0 && (v28.i8[4])
                          {
                            v29 = *(v13 + 8 * v25.u8[8]) | ((*(v14 + 8 * HIBYTE(v27)) | *(v13 + 8 * v25.u8[9]) | *(v15 + 8 * HIBYTE(v26))) << 24) | *(v14 + 8 * v27) | *(v15 + 8 * v26);
                            v30 = &v1[1].i8[8];
                            v31 = v16;
                            do
                            {
                              v32 = *(v31 + 4);
                              v21 = v32 >= v29;
                              v33 = v32 < v29;
                              if (v21)
                              {
                                v30 = v31;
                              }

                              v31 = *&v31[8 * v33];
                            }

                            while (v31);
                            if (v30 != v6 && v29 >= *(v30 + 4) && *(*(v30 + 5) + 116) > 0.0)
                            {
                              break;
                            }
                          }
                        }
                      }

                      v21 = v24 >= 4;
                      v24 += 2;
                      if (v21)
                      {
                        result = 0;
                        if (v8 >= v12)
                        {
                          v8 = v12;
                        }

                        goto LABEL_38;
                      }
                    }

                    *(v23 + 116) = -*(v23 + 116);
                    *(v23 + 196) = -*(v23 + 196);
                    v36 = v12 - 1;
                    v37.i64[0] = v10.i64[0];
                    v37.i32[3] = v11.i32[3];
                    if (v12 <= v8)
                    {
LABEL_54:
                      v45.i32[3] = v37.i32[3];
                    }

                    else
                    {
                      do
                      {
                        v38 = *(v13 + 8 * v36) | ((*(v14 + 8 * v37.u8[5]) | *(v13 + 8 * BYTE1(v36)) | *(v15 + 8 * v37.u8[1])) << 24) | *(v14 + 8 * v37.u8[4]) | *(v15 + 8 * v37.u8[0]);
                        v39 = &v1[1].i8[8];
                        v40 = v16;
                        do
                        {
                          v41 = *(v40 + 4);
                          v21 = v41 >= v38;
                          v42 = v41 < v38;
                          if (v21)
                          {
                            v39 = v40;
                          }

                          v40 = *&v40[8 * v42];
                        }

                        while (v40);
                        if (v39 != v6 && v38 >= *(v39 + 4))
                        {
                          v43 = *(v39 + 5);
                          if (*(v43 + 192))
                          {
                            goto LABEL_54;
                          }

                          v44 = *(v43 + 116);
                          if (v44 < 0.0)
                          {
                            *(v43 + 116) = -v44;
                            *(v43 + 196) = -*(v43 + 196);
                          }
                        }

                        v10.i32[2] = v36 - 1;
                        v45 = v10;
                        v45.i32[3] = v37.i32[3];
                        v46 = v36-- <= v8;
                        v37 = v45;
                      }

                      while (!v46);
                    }

                    v10.i64[1] = __PAIR64__(v45.u32[3], v12);
                    result = 1;
                    v8 = v12;
                    v11 = v10;
                  }
                }
              }

LABEL_38:
              v34 = v11.i32[3];
              v35 = v11.i32[2];
              v12 = v11.i32[2] + 1;
              v10 = v11;
              v10.i32[2] = v11.i32[2] + 1;
              v11 = v10;
              v11.i32[3] = v34;
              v4 = v1[18].i32[2];
            }

            while (v35 < v4);
            v5 = v1[18].i32[1];
          }

          v9.i32[0] = v10.i32[0];
          v9.i32[1] = v11.i32[1] + 1;
          v9.i64[1] = __PAIR64__(v11.u32[3], v10.u32[2]);
        }

        while (v11.i32[1] < v5);
        v2 = v1[18];
      }

      ++v3;
      v5 = v2.i32[1];
      v4 = v2.i32[2];
    }

    while (v3 < v2.i32[0]);
  }

  return result;
}

void sub_239E77190(uint64_t a1)
{
  v24.i32[2] = 0;
  v24.i64[0] = 0;
  v1 = *(*(a1 + 1312) + 224);
  if (v1)
  {
    v2 = a1;
    v3 = a1 + 896;
    do
    {
      v4 = *(v2 + 1312);
      v5 = &v4[1].i8[8];
      v6 = v4[1].i64[1];
      if (v6)
      {
        v7 = v1[2];
        v8 = &v4[1].i8[8];
        v9 = v4[1].i64[1];
        do
        {
          v10 = *(v9 + 32);
          v11 = v10 >= v7;
          v12 = v10 < v7;
          if (v11)
          {
            v8 = v9;
          }

          v9 = *(v9 + 8 * v12);
        }

        while (v9);
        if (v8 != v5 && v7 >= *(v8 + 4))
        {
          v13 = *(v8 + 5);
          if (*(v13 + 116) < 0.0)
          {
            sub_239E761FC(a1, *(v13 + 8), &v24);
            v14 = 0;
            while (1)
            {
              v15 = vaddq_s32(*(v3 + 16 * v14), v24);
              v16 = v15.i16[0];
              if ((v15.i32[0] & 0x80000000) == 0)
              {
                v17 = v15.i16[2];
                if ((v15.i32[1] & 0x80000000) == 0 && (v15.i32[2] & 0x80000000) == 0)
                {
                  v18 = vmovn_s32(vcgtq_s32(v4[18], v15));
                  if (v18.i8[0] & 1) != 0 && (v18.i8[2] & 1) != 0 && (v18.i8[4])
                  {
                    v19 = *(v4[9].i64[0] + 8 * v15.u8[8]) | ((*(v4[7].i64[1] + 8 * HIBYTE(v17)) | *(v4[9].i64[0] + 8 * v15.u8[9]) | *(v4[6].i64[0] + 8 * HIBYTE(v16))) << 24) | *(v4[7].i64[1] + 8 * v17) | *(v4[6].i64[0] + 8 * v16);
                    v20 = &v4[1].i8[8];
                    v21 = v6;
                    do
                    {
                      v22 = *(v21 + 4);
                      v11 = v22 >= v19;
                      v23 = v22 < v19;
                      if (v11)
                      {
                        v20 = v21;
                      }

                      v21 = *&v21[8 * v23];
                    }

                    while (v21);
                    if (v20 != v5 && v19 >= *(v20 + 4) && *(*(v20 + 5) + 116) > 0.0)
                    {
                      break;
                    }
                  }
                }
              }

              if (++v14 == 6)
              {
                goto LABEL_28;
              }
            }

            a1 = sub_239E77354(v2, v13);
          }
        }
      }

LABEL_28:
      v1 = *v1;
    }

    while (v1);
  }
}

uint64_t sub_239E77354(uint64_t a1, uint64_t a2)
{
  v34 = 0;
  v35 = 0;
  v33.i32[2] = 0;
  v33.i64[0] = 0;
  v30 = 0u;
  v31 = 0u;
  v32 = 1065353216;
  sub_239E7B9B0(&v30, (a2 + 8));
  while (*(&v31 + 1))
  {
    v35 = *(v31 + 16);
    v3 = sub_239E7D2D0(&v30, &v35);
    v4 = *(a1 + 1312);
    v7 = *(v4 + 24);
    v5 = v4 + 24;
    v6 = v7;
    if (v7)
    {
      v8 = v5;
      do
      {
        v9 = *(v6 + 32);
        v10 = v9 >= v35;
        v11 = v9 < v35;
        if (v10)
        {
          v8 = v6;
        }

        v6 = *(v6 + 8 * v11);
      }

      while (v6);
      if (v8 != v5 && v35 >= *(v8 + 32))
      {
        v12 = *(v8 + 40);
        v13 = *(v12 + 116);
        if (v13 < 0.0)
        {
          *(v12 + 116) = -v13;
          *(v12 + 196) = -*(v12 + 196);
          sub_239E761FC(v3, *(v12 + 8), &v33);
          v14 = 0;
          v29 = v33;
          do
          {
            v15 = vaddq_s32(*(a1 + 896 + 16 * v14), v29);
            v16 = v15.i16[0];
            if ((v15.i32[0] & 0x80000000) == 0)
            {
              v17 = v15.i16[2];
              if ((v15.i32[1] & 0x80000000) == 0 && (v15.i32[2] & 0x80000000) == 0)
              {
                v18 = *(a1 + 1312);
                v19 = vmovn_s32(vcgtq_s32(v18[18], v15));
                if (v19.i8[0] & 1) != 0 && (v19.i8[2] & 1) != 0 && (v19.i8[4])
                {
                  v22 = v18[1].i64[1];
                  v20 = &v18[1].i64[1];
                  v21 = v22;
                  v23 = *(v20[15] + 8 * v15.u8[8]) | ((*(v20[12] + 8 * HIBYTE(v17)) | *(v20[15] + 8 * v15.u8[9]) | *(v20[9] + 8 * HIBYTE(v16))) << 24) | *(v20[12] + 8 * v17) | *(v20[9] + 8 * v16);
                  v34 = v23;
                  if (v22)
                  {
                    v24 = v20;
                    do
                    {
                      v25 = *(v21 + 32);
                      v10 = v25 >= v23;
                      v26 = v25 < v23;
                      if (v10)
                      {
                        v24 = v21;
                      }

                      v21 = *(v21 + 8 * v26);
                    }

                    while (v21);
                    if (v24 != v20 && v23 >= v24[4])
                    {
                      v27 = v24[5];
                      if (*(v27 + 116) < 0.0 && (*(v27 + 192) & 1) == 0)
                      {
                        sub_239E7B9B0(&v30, &v34);
                      }
                    }
                  }
                }
              }
            }

            ++v14;
          }

          while (v14 != 6);
        }
      }
    }
  }

  return sub_239E7B644(&v30);
}

void sub_239E7757C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_239E7B644(va);
  _Unwind_Resume(a1);
}

void sub_239E77598(uint64_t a1)
{
  for (i = *(*(*(a1 + 80) + 1312) + 224); i; i = *i)
  {
    v3 = *(*(a1 + 80) + 1312);
    v6 = *(v3 + 24);
    v4 = v3 + 24;
    v5 = v6;
    if (v6)
    {
      v7 = i[2];
      v8 = v4;
      do
      {
        v9 = *(v5 + 32);
        v10 = v9 >= v7;
        v11 = v9 < v7;
        if (v10)
        {
          v8 = v5;
        }

        v5 = *(v5 + 8 * v11);
      }

      while (v5);
      if (v8 != v4 && v7 >= *(v8 + 32))
      {
        v12 = *(v8 + 40);
        v13 = *(v12 + 116);
        sub_239E763B4(*a1, v12, *(*(*(a1 + 80) + 1312) + 424));
      }
    }
  }
}

uint64_t sub_239E77634(uint64_t a1)
{
  sub_239E76738(*(a1 + 80));
  sub_239E76DF4(*(a1 + 80));
  sub_239E77190(*(a1 + 80));
  sub_239E76B44(*(a1 + 80));
  sub_239E77694(*(a1 + 80), a1);
  v2 = *(a1 + 80);

  return sub_239E778F4(v2);
}

uint64_t sub_239E77694(void *a1, float32x4_t **a2)
{
  v33.i32[2] = 0;
  v33.i64[0] = 0;
  v30 = 0u;
  v31 = 0u;
  v32 = 1065353216;
  v2 = *(a1[164] + 184);
  if (v2)
  {
    v4 = a1;
    v5 = a1 + 112;
    do
    {
      v6 = v2[2];
      v29 = v6;
      v7 = v4[164];
      v8 = &v7[1].i64[1];
      v9 = v7[1].i64[1];
      if (v9)
      {
        v10 = &v7[1].i64[1];
        v11 = v7[1].i64[1];
        do
        {
          v12 = v11[4];
          v13 = v12 >= v6;
          v14 = v12 < v6;
          if (v13)
          {
            v10 = v11;
          }

          v11 = v11[v14];
        }

        while (v11);
        if (v10 != v8 && v6 >= v10[4])
        {
          v15 = v10[5];
          if (v15[7].f32[1] <= 0.0)
          {
            sub_239E761FC(a1, v15->u64[1], &v33);
            v16 = 0;
            while (1)
            {
              v17 = vaddq_s32(*&v5[2 * v16], v33);
              v18 = v17.i16[0];
              if ((v17.i32[0] & 0x80000000) == 0)
              {
                v19 = v17.i16[2];
                if ((v17.i32[1] & 0x80000000) == 0 && (v17.i32[2] & 0x80000000) == 0)
                {
                  v20 = vmovn_s32(vcgtq_s32(v7[18], v17));
                  if (v20.i8[0] & 1) != 0 && (v20.i8[2] & 1) != 0 && (v20.i8[4])
                  {
                    v21 = *(v7[9].i64[0] + 8 * v17.u8[8]) | ((*(v7[7].i64[1] + 8 * HIBYTE(v19)) | *(v7[9].i64[0] + 8 * v17.u8[9]) | *(v7[6].i64[0] + 8 * HIBYTE(v18))) << 24) | *(v7[7].i64[1] + 8 * v19) | *(v7[6].i64[0] + 8 * v18);
                    v22 = &v7[1].i64[1];
                    v23 = v9;
                    do
                    {
                      v24 = *(v23 + 4);
                      v13 = v24 >= v21;
                      v25 = v24 < v21;
                      if (v13)
                      {
                        v22 = v23;
                      }

                      v23 = *&v23[8 * v25];
                    }

                    while (v23);
                    if (v22 != v8 && v21 >= v22[4] && *(v22[5] + 116) > 0.0)
                    {
                      break;
                    }
                  }
                }
              }

              if (++v16 == 26)
              {
                sub_239E76650(*a2, v15, v7[26].i32[2]);
                sub_239E7D38C((v4[164] + 16), v10);
                operator delete(v10);
                a1 = sub_239E7B9B0(&v30, &v29);
                break;
              }
            }
          }
        }
      }

      v2 = *v2;
    }

    while (v2);
    v26 = *(&v31 + 1);
    for (i = v31; i; i = *i)
    {
      v29 = i[2];
      sub_239E7D2D0((v4[164] + 168), &v29);
    }
  }

  else
  {
    v26 = 0;
  }

  sub_239E7B644(&v30);
  return v26;
}

void sub_239E778DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_239E7B644(va);
  _Unwind_Resume(a1);
}

uint64_t sub_239E778F4(void *a1)
{
  v31.i32[2] = 0;
  v31.i64[0] = 0;
  v28 = 0u;
  v29 = 0u;
  v30 = 1065353216;
  v1 = *(a1[164] + 224);
  if (v1)
  {
    v2 = a1;
    v3 = a1 + 112;
    do
    {
      v4 = v1[2];
      v27 = v4;
      v5 = v2[164];
      v6 = (v5 + 24);
      v7 = *(v5 + 24);
      if (v7)
      {
        v8 = (v5 + 24);
        v9 = *(v5 + 24);
        do
        {
          v10 = v9[4];
          v11 = v10 >= v4;
          v12 = v10 < v4;
          if (v11)
          {
            v8 = v9;
          }

          v9 = v9[v12];
        }

        while (v9);
        if (v8 != v6 && v4 >= v8[4])
        {
          v13 = v8[5];
          if (*(v13 + 116) <= 0.0)
          {
            sub_239E761FC(a1, *(v13 + 8), &v31);
            v14 = 0;
            while (1)
            {
              v15 = vaddq_s32(*&v3[2 * v14], v31);
              v16 = v15.i16[0];
              if ((v15.i32[0] & 0x80000000) == 0)
              {
                v17 = v15.i16[2];
                if ((v15.i32[1] & 0x80000000) == 0 && (v15.i32[2] & 0x80000000) == 0)
                {
                  v18 = vmovn_s32(vcgtq_s32(*(v5 + 288), v15));
                  if (v18.i8[0] & 1) != 0 && (v18.i8[2] & 1) != 0 && (v18.i8[4])
                  {
                    v19 = *(*(v5 + 144) + 8 * v15.u8[8]) | ((*(*(v5 + 120) + 8 * HIBYTE(v17)) | *(*(v5 + 144) + 8 * v15.u8[9]) | *(*(v5 + 96) + 8 * HIBYTE(v16))) << 24) | *(*(v5 + 120) + 8 * v17) | *(*(v5 + 96) + 8 * v16);
                    v20 = (v5 + 24);
                    v21 = v7;
                    do
                    {
                      v22 = v21[4];
                      v11 = v22 >= v19;
                      v23 = v22 < v19;
                      if (v11)
                      {
                        v20 = v21;
                      }

                      v21 = v21[v23];
                    }

                    while (v21);
                    if (v20 != v6 && v19 >= v20[4] && (*(v20[5] + 192) & 1) != 0)
                    {
                      break;
                    }
                  }
                }
              }

              if (++v14 == 26)
              {
                sub_239E7D38C((v5 + 16), v8);
                operator delete(v8);
                a1 = sub_239E7B9B0(&v28, &v27);
                break;
              }
            }
          }
        }
      }

      v1 = *v1;
    }

    while (v1);
    v24 = *(&v29 + 1);
    for (i = v29; i; i = *i)
    {
      v27 = i[2];
      sub_239E7D2D0((v2[164] + 208), &v27);
    }
  }

  else
  {
    v24 = 0;
  }

  sub_239E7B644(&v28);
  return v24;
}

void sub_239E77B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_239E7B644(va);
  _Unwind_Resume(a1);
}

uint64_t sub_239E77B30(uint64_t result, float a2, float a3)
{
  v4 = *(*(result + 80) + 1312);
  v5 = *(v4 + 248) + *(v4 + 248);
  if (v5 < a2 || v5 < a3)
  {
    v8 = result;
    v78 = 0;
    *(v77.i64 + 4) = 0;
    v77.i32[0] = 0;
    v76 = 0;
    v74 = 0u;
    v75 = 0u;
    v9 = sub_239E7CBA4(&v74, v4 + 208);
    v71 = 0u;
    v72 = 0u;
    v73 = 1065353216;
    if (*(&v75 + 1))
    {
      v10 = 0;
      if (a2 >= a3)
      {
        v11 = a2;
      }

      else
      {
        v11 = a3;
      }

      v12 = ceilf((v11 - v5) / *(*(*(v8 + 80) + 1312) + 248));
      v13 = v12 + v12;
      v14 = v13;
      if (v13 <= 1)
      {
        v14 = 1;
      }

      v15 = v14 - 1;
      if (v13 >= 4295000000.0)
      {
        v15 = -2;
      }

      v63 = v15;
      __asm
      {
        FMOV            V1.4S, #1.0
        FMOV            V0.4S, #-1.0
      }

      v64 = _Q1;
      do
      {
        for (i = v75; i; i = *i)
        {
          v22 = *(*(v8 + 80) + 1312);
          v25 = *(v22 + 24);
          v23 = v22 + 24;
          v24 = v25;
          if (v25)
          {
            v26 = i[2];
            v27 = v23;
            do
            {
              v28 = *(v24 + 32);
              _CF = v28 >= v26;
              v29 = v28 < v26;
              if (_CF)
              {
                v27 = v24;
              }

              v24 = *(v24 + 8 * v29);
            }

            while (v24);
            if (v27 != v23 && v26 >= *(v27 + 32))
            {
              sub_239E761FC(v9, *(*(v27 + 40) + 8), &v77);
              for (j = 0; j != 26; ++j)
              {
                v31 = *(v8 + 80);
                v32 = vaddq_s32(*(v31 + 16 * j + 896), v77);
                if ((v32.i32[0] & 0x80000000) == 0 && (v32.i32[1] & 0x80000000) == 0)
                {
                  v33 = v32.i32[2];
                  if ((v32.i32[2] & 0x80000000) == 0)
                  {
                    v34 = *(v31 + 1312);
                    v35 = vmovn_s32(vcgtq_s32(v34[18], v32));
                    if (v35.i8[0] & 1) != 0 && (v35.i8[2] & 1) != 0 && (v35.i8[4])
                    {
                      v78 = *(v34[9].i64[0] + 8 * v32.u8[8]) | ((*(v34[7].i64[1] + 8 * v32.u8[5]) | *(v34[9].i64[0] + 8 * v32.u8[9]) | *(v34[6].i64[0] + 8 * v32.u8[1])) << 24) | *(v34[7].i64[1] + 8 * v32.u8[4]) | *(v34[6].i64[0] + 8 * v32.u8[0]);
                      v66 = v32;
                      v36 = sub_239E7C134(&v34[10].i64[1], &v78);
                      v9 = sub_239E7C134((*(*(v8 + 80) + 1312) + 208), &v78);
                      if (!(v36 | v9))
                      {
                        v37 = 0;
                        v38 = 0;
                        v39 = *(v8 + 80);
                        v40 = *(v39 + 1312);
                        v41 = v39 + 896;
                        v42 = 3.4028e38;
                        do
                        {
                          v43 = vaddq_s32(*(v41 + 16 * v37), v66);
                          v44 = v43.i16[0];
                          if ((v43.i32[0] & 0x80000000) == 0)
                          {
                            v45 = v43.i16[2];
                            if ((v43.i32[1] & 0x80000000) == 0)
                            {
                              v46 = v43.i16[4];
                              if ((v43.i32[2] & 0x80000000) == 0)
                              {
                                v43 = vcgtq_s32(*(v40 + 288), v43);
                                *v43.i8 = vmovn_s32(v43);
                                if (v43.i8[0] & 1) != 0 && (v43.i8[2] & 1) != 0 && (v43.i8[4])
                                {
                                  v47 = *(v40 + 24);
                                  if (v47)
                                  {
                                    v9 = *(v40 + 96);
                                    v48 = *(*(v40 + 144) + 8 * v46) | ((*(*(v40 + 120) + 8 * HIBYTE(v45)) | *(*(v40 + 144) + 8 * HIBYTE(v46)) | *(v9 + 8 * HIBYTE(v44))) << 24) | *(*(v40 + 120) + 8 * v45) | *(v9 + 8 * v44);
                                    v49 = v40 + 24;
                                    do
                                    {
                                      v50 = *(v47 + 32);
                                      _CF = v50 >= v48;
                                      v51 = v50 < v48;
                                      if (_CF)
                                      {
                                        v49 = v47;
                                      }

                                      v47 = *(v47 + 8 * v51);
                                    }

                                    while (v47);
                                    if (v49 != v40 + 24 && v48 >= *(v49 + 32))
                                    {
                                      v52 = *(v49 + 40);
                                      v53 = fabsf(*(v52 + 116));
                                      if (v53 < v42)
                                      {
                                        v42 = v53;
                                        v38 = v52;
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }

                          ++v37;
                        }

                        while (v37 != 18);
                        if (v38)
                        {
                          *v43.i8 = vcvt_f32_s32(*v66.i8);
                          *&v43.i32[2] = v33;
                          v54 = vaddq_f32(v43, v64);
                          v55 = *(v40 + 248);
                          v56 = vmlaq_n_f32(*(v40 + 272), v54, v55);
                          v54.f32[0] = v55 * 0.5;
                          v65 = vsubq_f32(v56, vdupq_lane_s32(*v54.f32, 0));
                          v67 = v55;
                          v79[0] = v65;
                          v57 = (*(v40 + 40) + 224 * *(v38 + 144));
                          v70 = v57[1];
                          v69 = v57[3];
                          v68 = v57[2];
                          *v58.i64 = sub_239E74590(&v70, &v69, &v68, v79);
                          v59 = vsubq_f32(v65, v58);
                          v60 = vmulq_f32(v59, v59);
                          v61 = sqrtf(vaddv_f32(*v60.f32) + v60.f32[2]);
                          if (v61 <= v42)
                          {
                            v62 = v67 + v42;
                          }

                          else
                          {
                            v62 = v61;
                          }

                          if (*(v38 + 116) >= 0.0)
                          {
                            if (v5 < a3 && v62 < a3)
                            {
LABEL_60:
                              operator new();
                            }
                          }

                          else if (v5 < a2 && v62 < a2)
                          {
                            goto LABEL_60;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        if (v10 == v63)
        {
          break;
        }

        LODWORD(v76) = v73;
        sub_239E7CC1C(&v74, v72, 0);
        ++v10;
        v9 = sub_239E7D264(&v71);
      }

      while (*(&v75 + 1));
    }

    sub_239E7B644(&v71);
    return sub_239E7B644(&v74);
  }

  return result;
}

void sub_239E78110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  sub_239E7B644(&a29);
  sub_239E7B644(&a35);
  _Unwind_Resume(a1);
}

uint64_t sub_239E78130(float32x4_t **a1, float a2, float a3)
{
  v5 = a1;
  v93 = 0;
  *(v92.i64 + 4) = 0;
  v92.i32[0] = 0;
  v89 = 0u;
  v90 = 0u;
  v91 = 1065353216;
  v86 = 0u;
  v87 = 0u;
  v88 = 1065353216;
  v83 = 0u;
  v84 = 0u;
  v85 = 1065353216;
  v6 = *(a1[10][82].i64[0] + 224);
  if (!v6)
  {
    v41 = 0;
    v40 = 1.0;
    goto LABEL_50;
  }

  do
  {
    v7 = v6[2];
    v82 = v7;
    v8 = v5[10];
    v9 = v8[82].i64[0];
    v10 = &v9[1].i8[8];
    v11 = v9[1].i64[1];
    if (v11)
    {
      v12 = &v9[1].i8[8];
      v13 = v9[1].i64[1];
      do
      {
        v14 = *(v13 + 32);
        v15 = v14 >= v7;
        v16 = v14 < v7;
        if (v15)
        {
          v12 = v13;
        }

        v13 = *(v13 + 8 * v16);
      }

      while (v13);
      if (v12 != v10 && v7 >= *(v12 + 4))
      {
        v17 = *(v12 + 5);
        if ((*(v17 + 201) & 1) == 0)
        {
          v18 = *(v17 + 116);
          sub_239E761FC(a1, *(v17 + 8), &v92);
          v19 = fabsf(v18);
          if (v18 >= 0.0)
          {
            if (v19 <= a3)
            {
              goto LABEL_47;
            }

            v30 = 0;
            while (1)
            {
              v31 = vaddq_s32(v8[v30 + 56], v92);
              v32 = v31.i16[0];
              if (v31.i32[0] < 0)
              {
                break;
              }

              v33 = v31.i16[2];
              if (v31.i32[1] < 0)
              {
                break;
              }

              if (v31.i32[2] < 0)
              {
                break;
              }

              v34 = vmovn_s32(vcgtq_s32(v9[18], v31));
              if ((v34.i8[0] & 1) == 0 || (v34.i8[2] & 1) == 0 || (v34.i8[4] & 1) == 0)
              {
                break;
              }

              v35 = *(v9[9].i64[0] + 8 * v31.u8[8]) | ((*(v9[7].i64[1] + 8 * HIBYTE(v33)) | *(v9[9].i64[0] + 8 * v31.u8[9]) | *(v9[6].i64[0] + 8 * HIBYTE(v32))) << 24) | *(v9[7].i64[1] + 8 * v33) | *(v9[6].i64[0] + 8 * v32);
              v93 = v35;
              v36 = &v9[1].i8[8];
              v37 = v11;
              do
              {
                v38 = *(v37 + 4);
                v15 = v38 >= v35;
                v39 = v38 < v35;
                if (v15)
                {
                  v36 = v37;
                }

                v37 = *&v37[8 * v39];
              }

              while (v37);
              if (v36 == v10 || v35 < *(v36 + 4))
              {
                break;
              }

              if (++v30 == 26)
              {
                goto LABEL_47;
              }
            }
          }

          else
          {
            if (v19 <= a2)
            {
              goto LABEL_47;
            }

            v20 = 0;
            while (1)
            {
              v21 = vaddq_s32(v8[v20 + 56], v92);
              v22 = v21.i16[0];
              if (v21.i32[0] < 0)
              {
                break;
              }

              v23 = v21.i16[2];
              if (v21.i32[1] < 0)
              {
                break;
              }

              if (v21.i32[2] < 0)
              {
                break;
              }

              v24 = vmovn_s32(vcgtq_s32(v9[18], v21));
              if ((v24.i8[0] & 1) == 0 || (v24.i8[2] & 1) == 0 || (v24.i8[4] & 1) == 0)
              {
                break;
              }

              v25 = *(v9[9].i64[0] + 8 * v21.u8[8]) | ((*(v9[7].i64[1] + 8 * HIBYTE(v23)) | *(v9[9].i64[0] + 8 * v21.u8[9]) | *(v9[6].i64[0] + 8 * HIBYTE(v22))) << 24) | *(v9[7].i64[1] + 8 * v23) | *(v9[6].i64[0] + 8 * v22);
              v93 = v25;
              v26 = &v9[1].i8[8];
              v27 = v11;
              do
              {
                v28 = *(v27 + 4);
                v15 = v28 >= v25;
                v29 = v28 < v25;
                if (v15)
                {
                  v26 = v27;
                }

                v27 = *&v27[8 * v29];
              }

              while (v27);
              if (v26 == v10 || v25 < *(v26 + 4))
              {
                break;
              }

              if (++v20 == 26)
              {
                goto LABEL_47;
              }
            }
          }

          a1 = sub_239E7B9B0(&v83, &v82);
        }
      }
    }

LABEL_47:
    v6 = *v6;
  }

  while (v6);
  v40 = *&v85;
  v41 = v84;
LABEL_50:
  *&v91 = v40;
  sub_239E7CC1C(&v89, v41, 0);
  while (*(&v90 + 1))
  {
    for (i = v90; i; i = *i)
    {
      v44 = v5[10][82].i64[0];
      v47 = *(v44 + 24);
      v45 = v44 + 24;
      v46 = v47;
      if (v47)
      {
        v48 = i[2];
        v49 = v45;
        do
        {
          v50 = *(v46 + 32);
          v15 = v50 >= v48;
          v51 = v50 < v48;
          if (v15)
          {
            v49 = v46;
          }

          v46 = *(v46 + 8 * v51);
        }

        while (v46);
        if (v49 != v45 && v48 >= *(v49 + 32))
        {
          sub_239E761FC(v42, *(*(v49 + 40) + 8), &v92);
          v52 = 0;
          v81 = v92;
          do
          {
            v53 = v5[10];
            v54 = vaddq_s32(v53[v52 + 56], v81);
            v55 = v54.i16[0];
            if ((v54.i32[0] & 0x80000000) == 0)
            {
              v56 = v54.i16[2];
              if ((v54.i32[1] & 0x80000000) == 0 && (v54.i32[2] & 0x80000000) == 0)
              {
                v57 = v53[82].i64[0];
                v58 = vmovn_s32(vcgtq_s32(v57[18], v54));
                if (v58.i8[0] & 1) != 0 && (v58.i8[2] & 1) != 0 && (v58.i8[4])
                {
                  v61 = v57[1].i64[1];
                  v59 = &v57[1].i64[1];
                  v60 = v61;
                  v62 = *(v59[15] + 8 * v54.u8[8]) | ((*(v59[12] + 8 * HIBYTE(v56)) | *(v59[15] + 8 * v54.u8[9]) | *(v59[9] + 8 * HIBYTE(v55))) << 24) | *(v59[12] + 8 * v56) | *(v59[9] + 8 * v55);
                  v93 = v62;
                  if (!v61)
                  {
                    goto LABEL_76;
                  }

                  v63 = v59;
                  do
                  {
                    v64 = *(v60 + 32);
                    v15 = v64 >= v62;
                    v65 = v64 < v62;
                    if (v15)
                    {
                      v63 = v60;
                    }

                    v60 = *(v60 + 8 * v65);
                  }

                  while (v60);
                  if (v63 == v59 || v62 < v63[4])
                  {
LABEL_76:
                    v63 = v59;
                  }

                  v42 = sub_239E7C134(&v83, &v93);
                  if (v63 != (v5[10][82].i64[0] + 24) && v42 == 0)
                  {
                    v67 = v63[5];
                    if ((*(v67 + 201) & 1) == 0 && (*(v67 + 192) & 1) == 0)
                    {
                      v68 = *(v67 + 116);
                      v69 = fabsf(v68);
                      v70 = v69 <= a2;
                      if (v68 >= 0.0)
                      {
                        v70 = v69 <= a3;
                      }

                      if (!v70)
                      {
                        sub_239E7B9B0(&v86, &v93);
                        v42 = sub_239E7B9B0(&v83, &v93);
                      }
                    }
                  }
                }
              }
            }

            ++v52;
          }

          while (v52 != 26);
        }
      }
    }

    LODWORD(v91) = v88;
    sub_239E7CC1C(&v89, v87, 0);
    v42 = sub_239E7D264(&v86);
  }

  for (j = v84; j; j = *j)
  {
    v72 = j[2];
    v82 = v72;
    v73 = v5[10][82].i64[0];
    v76 = *(v73 + 24);
    v74 = v73 + 24;
    v75 = v76;
    if (v76)
    {
      v77 = v74;
      do
      {
        v78 = *(v75 + 32);
        v15 = v78 >= v72;
        v79 = v78 < v72;
        if (v15)
        {
          v77 = v75;
        }

        v75 = *(v75 + 8 * v79);
      }

      while (v75);
      if (v77 != v74 && v72 >= *(v77 + 32))
      {
        sub_239E76650(*v5, *(v77 + 40), *(v5[10][82].i64[0] + 424));
        sub_239E7D2D0((v5[10][82].i64[0] + 208), &v82);
        sub_239E7D308((v5[10][82].i64[0] + 16), &v82);
      }
    }
  }

  sub_239E7B644(&v83);
  sub_239E7B644(&v86);
  return sub_239E7B644(&v89);
}