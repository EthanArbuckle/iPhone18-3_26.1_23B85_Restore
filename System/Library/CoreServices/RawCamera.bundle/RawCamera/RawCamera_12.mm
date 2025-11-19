void sub_23381894C(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CUnpackedYCbCrUnpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_2338189D4()
{
  v0 = 0x100000000;
  v1 = xmmword_233903BB0;
  v2 = &qword_27DE37DF8;
  v20 = vdupq_n_s64(0x40A8000000000000uLL);
  v21 = vdupq_n_s64(0xC01uLL);
  v18 = vdupq_n_s64(0x3FADA98DF96BFFE8uLL);
  v19 = vdupq_n_s64(0xC00A40CA1EA7DC78);
  v3 = 3074;
  v16 = vdupq_n_s64(0xC024B4E61F0CC868);
  v17 = vdupq_n_s64(0x4020DCDB39699687uLL);
  __asm { FMOV            V0.2D, #1.0 }

  v15 = _Q0;
  v14 = vdupq_n_s64(2uLL);
  do
  {
    v25 = v1;
    v24 = vmovn_s64(vcgtq_u64(v21, v1)).u8[0];
    v9.i64[0] = v0.u32[0];
    v9.i64[1] = v0.u32[1];
    v10 = vdivq_f64(vcvtq_f64_u64(v9), v20);
    __x = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v10, vmulq_f64(v10, v19)), v18, v10), v10, vmulq_f64(v10, vmulq_f64(v10, v17))), v10, vmulq_f64(v10, vmulq_f64(v10, vmulq_f64(v10, v16))));
    v23 = exp(__x.f64[1]);
    v11.f64[0] = exp(__x.f64[0]);
    v11.f64[1] = v23;
    v12 = vsubq_f64(v15, v11);
    if (v24)
    {
      v13 = 16383.0 * v12.f64[0];
      if (v12.f64[0] < 0.0)
      {
        v13 = 0.0;
      }

      *(v2 - 1) = v13;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xC01uLL), *&v25)).i32[1])
    {
      v12.f64[0] = vmuld_lane_f64(16383.0, v12, 1);
      if (v12.f64[1] < 0.0)
      {
        v12.f64[0] = 0.0;
      }

      *v2 = *&v12.f64[0];
    }

    v1 = vaddq_s64(v25, v14);
    v0 = vadd_s32(v0, 0x200000002);
    v2 += 2;
    v3 -= 2;
  }

  while (v3);
}

BOOL sub_233818B98()
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 0;
  *v4 = 0x1900000006;
  v2 = 4;
  return sysctl(v4, 2u, &v3, &v2, 0, 0) || v3 < 2;
}

uint64_t sub_233818C24()
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = 0;
  *v6 = 0x1900000006;
  v4 = 4;
  v0 = sysctl(v6, 2u, &v5, &v4, 0, 0);
  if (v5 >= 32)
  {
    v1 = 32;
  }

  else
  {
    v1 = v5;
  }

  if (v5 > 0 && v0 == 0)
  {
    return v1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_233818CBC(uint64_t a1)
{
  v1 = *(a1 + 8);
  while (1)
  {
    v2 = atomic_load((v1 + 16));
    if (!v2)
    {
      break;
    }

    v3 = v2;
    atomic_compare_exchange_strong((v1 + 16), &v3, *v2);
    if (v3 == v2)
    {
      v4 = v2[1];
      if (v4)
      {
        return v4;
      }

      return (*v1)(*(a1 + 16));
    }
  }

  return (*v1)(*(a1 + 16));
}

uint64_t sub_233818CFC(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  v3 = (v2 + 16);
  v4 = (*(v2 + 24) + 16 * atomic_fetch_add((v2 + 32), 1u));
  v4[1] = a2;
  v5 = atomic_load(v3);
  *v4 = v5;
  v6 = v5;
  atomic_compare_exchange_strong(v3, &v6, v4);
  if (v6 != v5)
  {
    do
    {
      *v4 = v6;
      v7 = atomic_load(v3);
      *v4 = v7;
      v6 = v7;
      atomic_compare_exchange_strong(v3, &v6, v4);
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t sub_233818D54(uint64_t a1)
{
  v1 = *a1 + 16 * atomic_fetch_add((a1 + 16), 0xFFFFFFFF);
  v4[0] = *(v1 - 8);
  v4[1] = 0;
  v2 = *(v1 - 16);
  v5 = *(a1 + 40);
  v6 = v2;
  return (*(a1 + 24))(v4);
}

uint64_t sub_233818DA4(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v17 = v3;
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) == 0 || (objc_msgSend_isEqualToString_(v17, v18, @"NO", v19, v20) & 1) != 0 || (objc_msgSend_isEqualToString_(v17, v21, @"FALSE", v22, v23) & 1) != 0 || (objc_msgSend_isEqualToString_(v17, v24, @"OFF", v25, v26) & 1) != 0 || (objc_msgSend_isEqualToString_(v17, v27, @"0", v28, v29))
      {
        v16 = 0;
      }

      else if (objc_msgSend_isEqualToString_(v17, v30, @"YES", v31, v32) & 1) != 0 || (objc_msgSend_isEqualToString_(v17, v48, @"TRUE", v49, v50) & 1) != 0 || (objc_msgSend_isEqualToString_(v17, v51, @"ON", v52, v53) & 1) != 0 || (objc_msgSend_isEqualToString_(v17, v54, @"1", v55, v56))
      {
        v16 = 1;
      }

      else if (objc_msgSend_isEqualToString_(v17, v57, @"2", v58, v59))
      {
        v16 = 2;
      }

      else if (objc_msgSend_isEqualToString_(v17, v60, @"3", v61, v62))
      {
        v16 = 3;
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_66;
    }

    v4 = v3;
    v9 = objc_msgSend_objCType(v4, v5, v6, v7, v8);
    v10 = strlen(v9);
    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_2337304FC();
    }

    v15 = v10;
    if (v10 >= 0x17)
    {
      operator new();
    }

    v65 = v10;
    if (v10)
    {
      memmove(&__dst, v9, v10);
    }

    *(&__dst + v15) = 0;
    v33 = v65;
    if (v65 < 0)
    {
      if (v64 != 1)
      {
        v35 = 0;
        goto LABEL_31;
      }

      p_dst = __dst;
    }

    else
    {
      if (v65 != 1)
      {
        v35 = 0;
        goto LABEL_27;
      }

      p_dst = &__dst;
    }

    if (*p_dst == 66)
    {
      v35 = objc_msgSend_BOOLValue(v3, v11, v12, v13, v14);
      if ((v33 & 0x80) != 0)
      {
        goto LABEL_31;
      }

LABEL_27:
      if (v33 == 1)
      {
        v36 = __dst;
        if (__dst == 102)
        {
LABEL_40:
          objc_msgSend_floatValue(v3, v11, v12, v13, v14);
          v39 = fabsf(v38);
          if (v39 <= 0.0)
          {
            v40 = v39;
          }

          else
          {
            v40 = 0.0;
          }

          if (v39 <= (v40 * 0.1))
          {
            v16 = 0;
            if ((v33 & 0x80) != 0)
            {
              goto LABEL_65;
            }
          }

          else
          {
            v41 = fabsf(v38 + -1.0);
            v42 = 1.0;
            if (v39 <= 1.0)
            {
              v42 = v39;
            }

            if (v41 > (v42 * 0.1))
            {
              v43 = fabsf(v38 + -2.0);
              v44 = 2.0;
              if (v39 <= 2.0)
              {
                v44 = v39;
              }

              if (v43 <= (v44 * 0.1))
              {
                v16 = 2;
                if ((v33 & 0x80) == 0)
                {
                  goto LABEL_66;
                }
              }

              else
              {
                v45 = fabsf(v38 + -3.0);
                if (v39 > 3.0)
                {
                  v39 = 3.0;
                }

                if (v45 > (v39 * 0.1))
                {
                  v16 = v35;
                }

                else
                {
                  v16 = 3;
                }

                if ((v33 & 0x80) == 0)
                {
                  goto LABEL_66;
                }
              }

              goto LABEL_65;
            }

            v16 = 1;
            if ((v33 & 0x80) != 0)
            {
LABEL_65:
              operator delete(__dst);
            }
          }

LABEL_66:

          goto LABEL_67;
        }

        goto LABEL_39;
      }

      goto LABEL_34;
    }

    v35 = 0;
    if ((v65 & 0x80) == 0)
    {
      goto LABEL_27;
    }

LABEL_31:
    if (v64 != 1)
    {
      goto LABEL_36;
    }

    if (*__dst == 102)
    {
      goto LABEL_40;
    }

    if ((v33 & 0x80) != 0)
    {
LABEL_36:
      if (v64 != 1)
      {
        goto LABEL_57;
      }

      v37 = __dst;
      goto LABEL_38;
    }

LABEL_34:
    if (v33 != 1)
    {
      goto LABEL_57;
    }

    v37 = &__dst;
LABEL_38:
    v36 = *v37;
LABEL_39:
    if (v36 == 100)
    {
      goto LABEL_40;
    }

LABEL_57:
    v46 = objc_msgSend_intValue(v3, v11, v12, v13, v14);
    if (v46 - 1 >= 3)
    {
      v16 = 0;
    }

    else
    {
      v16 = v46;
    }

    if ((v33 & 0x80) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  v16 = 0;
LABEL_67:

  return v16;
}

void sub_23381916C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (v11 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__CFString *sub_2338191A8(int a1)
{
  if ((a1 - 1) > 2)
  {
    return @"0";
  }

  else
  {
    return off_2789EF228[a1 - 1];
  }
}

double sub_233819238@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *sub_233730758(a2, 2uLL);
  *v3 = *a1;
  result = *(a1 + 8);
  *(v3 + 8) = result;
  return result;
}

double sub_233819278@<D0>(float64x2_t *a1@<X0>, void *a2@<X8>)
{
  v2 = vminnmq_f64(vmaxnmq_f64(*a1, vdupq_n_s64(0x3F847AE147AE147BuLL)), vdupq_n_s64(0x3FEFAE147AE147AEuLL));
  v3 = v2.f64[1];
  v4 = vaddvq_f64(v2);
  if (v4 <= 0.99)
  {
    v8 = v2.f64[0];
  }

  else
  {
    v5 = 0.99 / v4;
    v8 = v2.f64[0] * v5;
    v3 = v2.f64[1] * v5;
  }

  v6 = *sub_233730758(a2, 3uLL);
  *v6 = v8 / v3;
  *(v6 + 8) = 0x3FF0000000000000;
  result = (1.0 - v8 - v3) / v3;
  *(v6 + 16) = result;
  return result;
}

double sub_23381933C(double *a1, double *a2, double *a3)
{
  v3 = a1[1];
  v4 = 1.5 - *a1 + v3 * 6.0;
  v5 = (*a1 + *a1) / v4;
  v6 = v3 * 3.0 / v4;
  v7 = 0.0;
  v8 = &unk_233908970;
  v9 = 29;
  v10 = 0.0;
  v11 = 0.0;
  do
  {
    v12 = v11;
    v13 = v10;
    v14 = v7;
    v15 = v8[7];
    v16 = sqrt(v15 * v15 + 1.0);
    v11 = 1.0 / v16;
    v10 = v15 / v16;
    v18 = v8[5];
    v17 = v8[6];
    v7 = (v6 - v17) * v11 - (v5 - v18) * v10;
    v8 += 4;
    v19 = v9-- != 0;
  }

  while (v19 && v7 > 0.0);
  v20 = 0.0;
  if (v9 != 28)
  {
    if (v7 > 0.0)
    {
      v7 = 0.0;
    }

    v20 = -v7 / (v14 - v7);
  }

  *a2 = 1000000.0 / ((1.0 - v20) * *v8 + *(v8 - 4) * v20);
  v21 = v12 * v20 + v11 * (1.0 - v20);
  v22 = v13 * v20 + v10 * (1.0 - v20);
  v23 = sqrt(v22 * v22 + v21 * v21);
  result = (v22 / v23 * (v6 - (v17 * (1.0 - v20) + *(v8 - 2) * v20)) + (v5 - (v18 * (1.0 - v20) + *(v8 - 3) * v20)) * (v21 / v23)) * -3000.0;
  *a3 = result;
  return result;
}

double sub_23381946C(double *a1, double a2, double a3)
{
  v3 = &qword_233908990;
  v4 = 29;
  v5 = 1000000.0 / a2;
  do
  {
    v6 = *v3;
    v3 += 4;
    v7 = v6;
    if (!v4)
    {
      break;
    }

    --v4;
  }

  while (v5 >= v7);
  v8 = a3 * -0.000333333333;
  v9 = (v7 - v5) / (v7 - *(v3 - 8));
  v10 = *(v3 - 3) * (1.0 - v9) + *(v3 - 7) * v9;
  v11 = *(v3 - 5);
  v12 = (1.0 - v9) * *(v3 - 2) + *(v3 - 6) * v9;
  v13 = *(v3 - 1);
  v14 = sqrt(v11 * v11 + 1.0);
  v15 = sqrt(v13 * v13 + 1.0);
  v16 = (1.0 - v9) * (1.0 / v15) + 1.0 / v14 * v9;
  v17 = (1.0 - v9) * (v13 / v15) + v11 / v14 * v9;
  v18 = sqrt(v17 * v17 + v16 * v16);
  v19 = v10 + v16 / v18 * v8;
  v20 = v12 + v17 / v18 * v8;
  v21 = v19 * 1.5;
  v22 = v19 + v20 * -4.0 + 2.0;
  result = v20 / v22;
  *a1 = v21 / v22;
  a1[1] = result;
  return result;
}

void sub_23381954C(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, _OWORD *a8@<X8>)
{
  sub_2337DF9CC(&v53, 3u, 3u, 0.8951, a3, a4, a5, a6, a7, 0x3FD10CB295E9E1B1);
  sub_233819278(a1, &v49);
  sub_2337DFE04(&v49, &v51);
  if (v49)
  {
    *(&v49 + 1) = v49;
    operator delete(v49);
  }

  sub_233819278(a2, &v46);
  sub_2337DFE04(&v46, &v49);
  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  v11.i64[0] = v51;
  v11.i64[1] = v49;
  if (vmaxv_u16(vmovn_s32(vceqzq_s32(v11))))
  {
    sub_2337DFDF8(a8);
  }

  else
  {
    sub_2337E032C(&v53, &v51, &v46);
    sub_2337E032C(&v53, &v49, v43);
    sub_2337DF9C8(&v40, 3u, 3u);
    sub_2337DFFC4(&v40);
    v35 = sub_2337DFCEC(v43, 0);
    __p = v12;
    v13 = *sub_2337DFD6C(&v35, 0);
    *&v33 = sub_2337DFCEC(&v46, 0);
    *(&v33 + 1) = v14;
    v15 = *sub_2337DFD6C(&v33, 0);
    v38 = sub_2337DFCEC(&v40, 0);
    v39 = v16;
    *sub_2337DFD6C(&v38, 0) = v13 / v15;
    v35 = sub_2337DFCEC(v43, 1u);
    __p = v17;
    v18 = *sub_2337DFD6C(&v35, 0);
    *&v33 = sub_2337DFCEC(&v46, 1u);
    *(&v33 + 1) = v19;
    v20 = *sub_2337DFD6C(&v33, 0);
    v38 = sub_2337DFCEC(&v40, 1u);
    v39 = v21;
    *sub_2337DFD6C(&v38, 1u) = v18 / v20;
    v35 = sub_2337DFCEC(v43, 2u);
    __p = v22;
    v23 = *sub_2337DFD6C(&v35, 0);
    *&v33 = sub_2337DFCEC(&v46, 2u);
    *(&v33 + 1) = v24;
    v25 = *sub_2337DFD6C(&v33, 0);
    v38 = sub_2337DFCEC(&v40, 2u);
    v39 = v26;
    *sub_2337DFD6C(&v38, 2u) = v23 / v25;
    v35 = sub_2337DFCEC(&v40, 0);
    __p = v27;
    v28 = sub_2337DFD6C(&v35, 0);
    *v28 = fmin(fmax(*v28, 0.1), 10.0);
    v35 = sub_2337DFCEC(&v40, 1u);
    __p = v29;
    v30 = sub_2337DFD6C(&v35, 1u);
    *v30 = fmin(fmax(*v30, 0.1), 10.0);
    v35 = sub_2337DFCEC(&v40, 2u);
    __p = v31;
    v32 = sub_2337DFD6C(&v35, 2u);
    *v32 = fmin(fmax(*v32, 0.1), 10.0);
    sub_2337E0720(&v53, &v33);
    sub_2337E032C(&v33, &v40, &v35);
    sub_2337E032C(&v35, &v53, a8);
    if (__p)
    {
      v37 = __p;
      operator delete(__p);
    }

    if (*(&v33 + 1))
    {
      v34 = *(&v33 + 1);
      operator delete(*(&v33 + 1));
    }

    if (v41)
    {
      v42 = v41;
      operator delete(v41);
    }

    if (v44)
    {
      v45 = v44;
      operator delete(v44);
    }

    if (v47)
    {
      v48 = v47;
      operator delete(v47);
    }
  }

  if (*(&v49 + 1))
  {
    v50 = *(&v49 + 1);
    operator delete(*(&v49 + 1));
  }

  if (*(&v51 + 1))
  {
    v52 = *(&v51 + 1);
    operator delete(*(&v51 + 1));
  }

  if (v54)
  {
    v55 = v54;
    operator delete(v54);
  }
}

void sub_233819958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  v35 = *(v33 - 136);
  if (v35)
  {
    *(v33 - 128) = v35;
    operator delete(v35);
  }

  v36 = *(v33 - 104);
  if (v36)
  {
    *(v33 - 96) = v36;
    operator delete(v36);
  }

  v37 = *(v33 - 72);
  if (v37)
  {
    *(v33 - 64) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_233819A7C(double *a1)
{
  if (*a1 <= 0.0)
  {
    return 0;
  }

  v1 = a1[1];
  return v1 > 0.0 && *a1 + v1 < 1.0;
}

double sub_233819AB0(int a1)
{
  result = 0.0;
  if ((a1 - 1) <= 0x17)
  {
    return dbl_233908D58[a1 - 1];
  }

  return result;
}

void sub_233819AD0(uint64_t a1@<X0>, unsigned int *a2@<X8>)
{
  if (*a1)
  {
    v4 = *(a1 + 4) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {

    sub_2337DF874(a2, a1);
  }

  else
  {
    v7.f64[0] = sub_2338191E8();
    v7.f64[1] = v5;
    sub_233819278(&v7, &__p);
    sub_2337DFE04(&__p, &v12);
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    sub_2337E032C(a1, &v12, &__p);
    v6 = sub_2337E0EE4(&__p);
    sub_2337DF874(a2, a1);
    if (v6 > 0.0 && (v6 < 0.99 || v6 > 1.01))
    {
      sub_2337E0244(a2, &v7, 1.0 / v6);
      sub_2337E004C(a2, &v7);
      if (*&v7.f64[1])
      {
        v8 = v7.f64[1];
        operator delete(*&v7.f64[1]);
      }
    }

    sub_2337E0BB0(a2, &v7, 10000.0);
    sub_2337E004C(a2, &v7);
    if (*&v7.f64[1])
    {
      v8 = v7.f64[1];
      operator delete(*&v7.f64[1]);
    }

    if (v10)
    {
      v11 = v10;
      operator delete(v10);
    }

    if (*(&v12 + 1))
    {
      v13 = *(&v12 + 1);
      operator delete(*(&v12 + 1));
    }
  }
}

void sub_233819C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  v21 = *(v19 + 8);
  if (v21)
  {
    *(v19 + 16) = v21;
    operator delete(v21);
  }

  if (a14)
  {
    operator delete(a14);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_233819CC0(_DWORD *a1, uint64_t *a2)
{
  v4 = a1 + 12;
  if (!a1[12] || (v5 = a1[13], v6 = a1 + 12, !v5))
  {
    v6 = a1 + 4;
  }

  if (sub_2337E003C(v6) >= 2)
  {
    v7 = a1[2];
    v8 = a1[3];
    v9 = sub_233819AB0(v7);
    v10 = sub_233819AB0(v8);
    sub_233819AD0((a1 + 4), &v56);
    sub_233819AD0(v4, &v53);
    sub_2337E0BB0(a1 + 54, &v50, 10000.0);
    sub_2337E0BB0(a1 + 62, &v47, 10000.0);
    sub_2337E0BB0(a1 + 20, &v43, 10000.0);
    sub_2337E0BB0(a1 + 28, &v39, 10000.0);
    sub_2337E0BB0(a1 + 36, &v36, 10000.0);
    sub_2337E0BB0(a1 + 44, &v33, 10000.0);
    if (v43 && v44)
    {
      v11 = sub_2337E003C(&v43);
      if (!*v4 || (v12 = v4, !a1[13]))
      {
        v12 = a1 + 4;
      }

      if (v11 == sub_2337E003C(v12))
      {
        v13 = sub_2337E0044(&v43);
        if (!*v4 || (v14 = v4, !a1[13]))
        {
          v14 = a1 + 4;
        }

        if (v13 == sub_2337E003C(v14))
        {
          sub_2337E032C(&v43, &v56, &v31);
          sub_2337E004C(&v56, &v31);
          if (*(&v31 + 1))
          {
            v32 = *(&v31 + 1);
            operator delete(*(&v31 + 1));
          }
        }
      }
    }

    if (v53 && v9 != v10 && v10 > 0.0 && v9 > 0.0 && HIDWORD(v53))
    {
      if (v39 && v40)
      {
        v15 = sub_2337E003C(&v39);
        if (!*v4 || (v16 = v4, !a1[13]))
        {
          v16 = a1 + 4;
        }

        if (v15 == sub_2337E003C(v16))
        {
          v17 = sub_2337E0044(&v39);
          if (!*v4 || (v18 = v4, !a1[13]))
          {
            v18 = a1 + 4;
          }

          if (v17 == sub_2337E003C(v18))
          {
            sub_2337E032C(&v39, &v53, &v31);
            sub_2337E004C(&v53, &v31);
            if (*(&v31 + 1))
            {
              v32 = *(&v31 + 1);
              operator delete(*(&v31 + 1));
            }
          }
        }
      }
    }

    else
    {
      sub_2337E004C(&v53, &v56);
      sub_2337E004C(&v47, &v50);
      v10 = 5000.0;
      v9 = 5000.0;
    }

    if (v43)
    {
      if (!v39)
      {
        if (!v44)
        {
          goto LABEL_69;
        }

        goto LABEL_58;
      }

      if (v44 && v40)
      {
        v19 = sub_2337E0044(&v43);
        if (v19 == sub_2337E0044(&v36))
        {
          sub_2337E0720(&v43, &v29);
          sub_2337E032C(&v36, &v29, &v31);
          sub_2337E004C(&v36, &v31);
          if (*(&v31 + 1))
          {
            v32 = *(&v31 + 1);
            operator delete(*(&v31 + 1));
          }

          if (*(&v29 + 1))
          {
            v30 = *(&v29 + 1);
            operator delete(*(&v29 + 1));
          }
        }

        v20 = sub_2337E0044(&v39);
        if (v20 != sub_2337E0044(&v33))
        {
          goto LABEL_69;
        }

        goto LABEL_45;
      }

      if (v44)
      {
LABEL_58:
        v23 = sub_2337E0044(&v43);
        if (v23 == sub_2337E0044(&v36))
        {
          v24 = sub_2337E0044(&v43);
          if (v24 == sub_2337E0044(&v33))
          {
            sub_2337E0720(&v43, &v29);
            sub_2337E032C(&v36, &v29, &v31);
            sub_2337E004C(&v36, &v31);
            if (*(&v31 + 1))
            {
              v32 = *(&v31 + 1);
              operator delete(*(&v31 + 1));
            }

            if (*(&v29 + 1))
            {
              v30 = *(&v29 + 1);
              operator delete(*(&v29 + 1));
            }

            sub_2337E0720(&v43, &v29);
            sub_2337E032C(&v33, &v29, &v31);
            sub_2337E004C(&v33, &v31);
            goto LABEL_65;
          }
        }

        goto LABEL_69;
      }

      if (!v40)
      {
        goto LABEL_69;
      }
    }

    else if (!v39 || !v40)
    {
      goto LABEL_69;
    }

    v21 = sub_2337E0044(&v39);
    if (v21 == sub_2337E0044(&v36))
    {
      v22 = sub_2337E0044(&v39);
      if (v22 == sub_2337E0044(&v33))
      {
        sub_2337E0720(&v39, &v29);
        sub_2337E032C(&v36, &v29, &v31);
        sub_2337E004C(&v36, &v31);
        if (*(&v31 + 1))
        {
          v32 = *(&v31 + 1);
          operator delete(*(&v31 + 1));
        }

        if (*(&v29 + 1))
        {
          v30 = *(&v29 + 1);
          operator delete(*(&v29 + 1));
        }

LABEL_45:
        sub_2337E0720(&v39, &v29);
        sub_2337E032C(&v33, &v29, &v31);
        sub_2337E004C(&v33, &v31);
LABEL_65:
        if (*(&v31 + 1))
        {
          v32 = *(&v31 + 1);
          operator delete(*(&v31 + 1));
        }

        if (*(&v29 + 1))
        {
          v30 = *(&v29 + 1);
          operator delete(*(&v29 + 1));
        }
      }
    }

LABEL_69:
    if (!*v4 || (v25 = v4, !a1[13]))
    {
      v25 = a1 + 4;
    }

    v27 = *a2;
    v26 = a2[1];
    if ((v26 - v27) >> 3 == sub_2337E003C(v25))
    {
      sub_2337E04E8(&v56, a2, &v31);
      sub_2337E004C(&v56, &v31);
      if (*(&v31 + 1))
      {
        v32 = *(&v31 + 1);
        operator delete(*(&v31 + 1));
      }

      sub_2337E04E8(&v53, a2, &v31);
      sub_2337E004C(&v53, &v31);
      if (*(&v31 + 1))
      {
        v32 = *(&v31 + 1);
        operator delete(*(&v31 + 1));
      }
    }

    if (v9 <= v10)
    {
      a1[2] = v7;
      a1[3] = v8;
      sub_2337E004C(a1 + 2, &v56);
      sub_2337E004C(v4, &v53);
      sub_2337E004C(a1 + 27, &v50);
      sub_2337E004C(a1 + 31, &v47);
      sub_2337E004C(a1 + 18, &v36);
      v28 = &v33;
    }

    else
    {
      a1[2] = v8;
      a1[3] = v7;
      sub_2337E004C(a1 + 2, &v53);
      sub_2337E004C(v4, &v56);
      sub_2337E004C(a1 + 27, &v47);
      sub_2337E004C(a1 + 31, &v50);
      sub_2337E004C(a1 + 18, &v33);
      v28 = &v36;
    }

    sub_2337E004C(a1 + 22, v28);
    sub_2337DF868(&v31);
    sub_2337E004C(a1 + 10, &v31);
    sub_2337E004C(a1 + 14, &v31);
    if (*(&v31 + 1))
    {
      v32 = *(&v31 + 1);
      operator delete(*(&v31 + 1));
    }

    if (v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }

    if (v41)
    {
      v42 = v41;
      operator delete(v41);
    }

    if (v45)
    {
      v46 = v45;
      operator delete(v45);
    }

    if (v48)
    {
      v49 = v48;
      operator delete(v48);
    }

    if (v51)
    {
      v52 = v51;
      operator delete(v51);
    }

    if (v54)
    {
      v55 = v54;
      operator delete(v54);
    }

    if (v57)
    {
      v58 = v57;
      operator delete(v57);
    }
  }
}

void sub_23381A3A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a30)
  {
    operator delete(a30);
  }

  if (a34)
  {
    operator delete(a34);
  }

  v37 = *(v35 - 200);
  if (v37)
  {
    *(v35 - 192) = v37;
    operator delete(v37);
  }

  v38 = *(v35 - 168);
  if (v38)
  {
    *(v35 - 160) = v38;
    operator delete(v38);
  }

  v39 = *(v35 - 136);
  if (v39)
  {
    *(v35 - 128) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(exception_object);
}

void sub_23381A514(uint64_t a1@<X0>, float64x2_t *a2@<X1>, unsigned int *a3@<X2>, void *a4@<X8>)
{
  sub_2337DF868(&v66);
  sub_2337DF868(&v64);
  sub_2337DF868(&v62);
  sub_2337DF868(&v60);
  sub_23381ACF4(a1, a2->f64, &v66, &v62, &v64);
  if (!v66 || !DWORD1(v66))
  {
    sub_2337DF874(a4, &v66);
    goto LABEL_70;
  }

  if (*(a1 + 208))
  {
    sub_233819278(a2, &v54);
    sub_2337DFE04(&v54, &v56);
    sub_2337E032C(&v66, &v56, &v58);
    if (*&v56.f64[1])
    {
      v57 = v56.f64[1];
      operator delete(*&v56.f64[1]);
    }

    if (v54)
    {
      *(&v54 + 1) = v54;
      operator delete(v54);
    }

    v8 = sub_2337E0EE4(&v58);
    for (i = 0; i < sub_2337E003C(&v58); ++i)
    {
      *&v56.f64[0] = sub_2337DFCEC(&v58, i);
      v56.f64[1] = v10;
      v11 = sub_2337DFD6C(&v56, 0);
      v12 = *v11 / v8;
      if (v12 <= 1.0)
      {
        v13 = *v11 / v8;
      }

      else
      {
        v13 = 1.0;
      }

      if (v12 >= 0.001)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0.001;
      }

      *&v54 = sub_2337DFCEC(&v58, i);
      *(&v54 + 1) = v15;
      *sub_2337DFD6C(&v54, 0) = v14;
    }

    sub_2337E1044(&v58, &v52);
    sub_2337DFEE0(&v52, &v54);
    sub_2337E0720(&v54, &v56);
    if (*(&v54 + 1))
    {
      v55 = *(&v54 + 1);
      operator delete(*(&v54 + 1));
    }

    if (v52)
    {
      *(&v52 + 1) = v52;
      operator delete(v52);
    }

    sub_2337E032C(&v64, &v56, &v54);
    sub_2337E004C(&v60, &v54);
    if (*(&v54 + 1))
    {
      v55 = *(&v54 + 1);
      operator delete(*(&v54 + 1));
    }

    if (!v60 || !DWORD1(v60))
    {
      sub_2337DF874(a4, &v60);
      sub_2338FC938(&v56, &v58);
      goto LABEL_70;
    }

    if (*&v56.f64[1])
    {
      v57 = v56.f64[1];
      operator delete(*&v56.f64[1]);
    }

    if (*(&v58 + 1))
    {
      v59 = *(&v58 + 1);
      operator delete(*(&v58 + 1));
    }

LABEL_56:
    sub_2337DF9CC(&v58, 3u, 1u, 1.0, v16, v17, v18, v19, v20, 0x3FF0000000000000);
    sub_2337E032C(a3, &v58, &v56);
    v47.f64[0] = sub_2338191E8();
    v47.f64[1] = v31;
    sub_233819278(&v47, &v52);
    sub_2337DFE04(&v52, &v54);
    if (v52)
    {
      *(&v52 + 1) = v52;
      operator delete(v52);
    }

    *&v52 = sub_2337DFCEC(&v54, 0);
    *(&v52 + 1) = v32;
    v33 = *sub_2337DFD6C(&v52, 0);
    *&v47.f64[0] = sub_2337DFCEC(&v56, 0);
    v47.f64[1] = v34;
    v35 = *sub_2337DFD6C(&v47, 0);
    *&v52 = sub_2337DFCEC(&v54, 1u);
    *(&v52 + 1) = v36;
    sub_2337DFD6C(&v52, 0);
    *&v47.f64[0] = sub_2337DFCEC(&v56, 1u);
    v47.f64[1] = v37;
    sub_2337DFD6C(&v47, 0);
    *&v52 = sub_2337DFCEC(&v54, 2u);
    *(&v52 + 1) = v38;
    sub_2337DFD6C(&v52, 0);
    *&v47.f64[0] = sub_2337DFCEC(&v56, 2u);
    v47.f64[1] = v39;
    sub_2337DFD6C(&v47, 0);
    sub_2337DF9CC(&v52, 3u, 3u, v33 / v35, v40, v41, v42, v43, v44, 0);
    sub_2337E032C(&v52, a3, &v47);
    sub_2337E0720(&v47, &v45);
    sub_2337E032C(&v45, &v60, a4);
    if (*(&v45 + 1))
    {
      v46 = *(&v45 + 1);
      operator delete(*(&v45 + 1));
    }

    if (*&v47.f64[1])
    {
      v48 = v47.f64[1];
      operator delete(*&v47.f64[1]);
    }

    if (*(&v52 + 1))
    {
      v53 = *(&v52 + 1);
      operator delete(*(&v52 + 1));
    }

    if (*(&v54 + 1))
    {
      v55 = *(&v54 + 1);
      operator delete(*(&v54 + 1));
    }

    if (*&v56.f64[1])
    {
      v57 = v56.f64[1];
      operator delete(*&v56.f64[1]);
    }

    if (*(&v58 + 1))
    {
      v59 = *(&v58 + 1);
      operator delete(*(&v58 + 1));
    }

    goto LABEL_70;
  }

  v56.f64[0] = sub_2338191E8();
  v56.f64[1] = v21;
  sub_23381954C(&v56, a2, v22, v23, v24, v25, v26, &v58);
  if (!v58 || !DWORD1(v58))
  {
    sub_2337DF874(a4, &v58);
    sub_2338FC97C(&v58);
    goto LABEL_70;
  }

  sub_2337E032C(&v66, &v58, &v56);
  v47.f64[0] = sub_2338191E8();
  v47.f64[1] = v27;
  sub_233819278(&v47, &v52);
  sub_2337DFE04(&v52, &v54);
  if (v52)
  {
    *(&v52 + 1) = v52;
    operator delete(v52);
  }

  sub_2337E032C(&v56, &v54, &v52);
  v28 = sub_2337E0EE4(&v52);
  if (*(&v52 + 1))
  {
    v53 = *(&v52 + 1);
    operator delete(*(&v52 + 1));
  }

  sub_2337E0244(&v56, &v52, 1.0 / v28);
  sub_2337E004C(&v56, &v52);
  if (*(&v52 + 1))
  {
    v53 = *(&v52 + 1);
    operator delete(*(&v52 + 1));
  }

  sub_2337DF874(&v49, &v62);
  sub_2337E0A98(&v56, &v49, &v52);
  sub_2337E004C(&v60, &v52);
  if (*(&v52 + 1))
  {
    v53 = *(&v52 + 1);
    operator delete(*(&v52 + 1));
  }

  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }

  if (v60)
  {
    v29 = DWORD1(v60) == 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = !v29;
  if (v29)
  {
    sub_2337DF874(a4, &v60);
  }

  if (*(&v54 + 1))
  {
    v55 = *(&v54 + 1);
    operator delete(*(&v54 + 1));
  }

  if (*&v56.f64[1])
  {
    v57 = v56.f64[1];
    operator delete(*&v56.f64[1]);
  }

  if (*(&v58 + 1))
  {
    v59 = *(&v58 + 1);
    operator delete(*(&v58 + 1));
  }

  if (v30)
  {
    goto LABEL_56;
  }

LABEL_70:
  if (*(&v60 + 1))
  {
    v61 = *(&v60 + 1);
    operator delete(*(&v60 + 1));
  }

  if (*(&v62 + 1))
  {
    v63 = *(&v62 + 1);
    operator delete(*(&v62 + 1));
  }

  if (*(&v64 + 1))
  {
    v65 = *(&v64 + 1);
    operator delete(*(&v64 + 1));
  }

  if (*(&v66 + 1))
  {
    v67 = *(&v66 + 1);
    operator delete(*(&v66 + 1));
  }
}

void sub_23381AAFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a38)
  {
    operator delete(a38);
  }

  if (a42)
  {
    operator delete(a42);
  }

  v45 = *(v43 - 216);
  if (v45)
  {
    *(v43 - 208) = v45;
    operator delete(v45);
  }

  v46 = *(v43 - 184);
  if (v46)
  {
    *(v43 - 176) = v46;
    operator delete(v46);
  }

  v47 = *(v43 - 152);
  if (v47)
  {
    *(v43 - 144) = v47;
    operator delete(v47);
  }

  v48 = *(v43 - 120);
  if (v48)
  {
    *(v43 - 112) = v48;
    operator delete(v48);
  }

  _Unwind_Resume(exception_object);
}

void sub_23381ACF4(uint64_t a1, double *a2, void *a3, void *a4, uint64_t a5)
{
  sub_2337DFDF8(&v38);
  sub_2337E004C(a3, &v38);
  if (*(&v38 + 1))
  {
    v39 = *(&v38 + 1);
    operator delete(*(&v38 + 1));
  }

  sub_2337DFDF8(&v38);
  sub_2337E004C(a4, &v38);
  if (*(&v38 + 1))
  {
    v39 = *(&v38 + 1);
    operator delete(*(&v38 + 1));
  }

  sub_2337DFDF8(&v38);
  sub_2337E004C(a5, &v38);
  if (*(&v38 + 1))
  {
    v39 = *(&v38 + 1);
    operator delete(*(&v38 + 1));
  }

  v10 = sub_23381B524(a1, a2);
  if (v10 >= 1.0)
  {
    v11 = (a1 + 16);
LABEL_21:
    sub_2337E004C(a3, v11);
    goto LABEL_22;
  }

  if (v10 <= 0.0)
  {
    v11 = (a1 + 48);
    goto LABEL_21;
  }

  if (!*(a1 + 16) || !*(a1 + 20) || !*(a1 + 48) || !*(a1 + 52))
  {
    sub_2337DFDF8(&v38);
    sub_2337E004C(a3, &v38);
    v12 = *(&v38 + 1);
    if (!*(&v38 + 1))
    {
      goto LABEL_22;
    }

    v39 = *(&v38 + 1);
    goto LABEL_41;
  }

  sub_2337E0244((a1 + 16), &v36, v10);
  sub_2337E0244((a1 + 48), &v34, 1.0 - v10);
  sub_2337E00C8(&v36, &v34, &v38);
  sub_2337E004C(a3, &v38);
  if (*(&v38 + 1))
  {
    v39 = *(&v38 + 1);
    operator delete(*(&v38 + 1));
  }

  if (*&v34.f64[1])
  {
    v35 = v34.f64[1];
    operator delete(*&v34.f64[1]);
  }

  v12 = v36.f64[1];
  if (*&v36.f64[1])
  {
    v37 = v36.f64[1];
LABEL_41:
    operator delete(*&v12);
  }

LABEL_22:
  v13 = (a1 + 216);
  if (!*(a1 + 216))
  {
    v14 = (a1 + 248);
    if (*(a1 + 248) && *(a1 + 252))
    {
      goto LABEL_45;
    }

    goto LABEL_47;
  }

  v14 = (a1 + 248);
  v15 = *(a1 + 220);
  if (!*(a1 + 248))
  {
    if (v15)
    {
      goto LABEL_43;
    }

LABEL_47:
    sub_2337DFDF8(&v38);
    sub_2337E004C(a4, &v38);
    v17 = *(&v38 + 1);
    if (!*(&v38 + 1))
    {
      goto LABEL_50;
    }

    v39 = *(&v38 + 1);
    goto LABEL_49;
  }

  v16 = *(a1 + 252);
  if (!v15 || !v16)
  {
    if (v15)
    {
      goto LABEL_43;
    }

    if (v16)
    {
      goto LABEL_45;
    }

    goto LABEL_47;
  }

  if (v10 >= 1.0)
  {
LABEL_43:
    v18 = a4;
LABEL_46:
    sub_2337E004C(v18, v13);
    goto LABEL_50;
  }

  if (v10 <= 0.0)
  {
LABEL_45:
    v18 = a4;
    v13 = v14;
    goto LABEL_46;
  }

  sub_2337E0244((a1 + 216), &v36, v10);
  sub_2337E0244((a1 + 248), &v34, 1.0 - v10);
  sub_2337E00C8(&v36, &v34, &v38);
  sub_2337E004C(a4, &v38);
  if (*(&v38 + 1))
  {
    v39 = *(&v38 + 1);
    operator delete(*(&v38 + 1));
  }

  if (*&v34.f64[1])
  {
    v35 = v34.f64[1];
    operator delete(*&v34.f64[1]);
  }

  v17 = v36.f64[1];
  if (*&v36.f64[1])
  {
    v37 = v36.f64[1];
LABEL_49:
    operator delete(*&v17);
  }

LABEL_50:
  if (!*(a1 + 208))
  {
    return;
  }

  v36.f64[0] = sub_233819224();
  v36.f64[1] = v19;
  sub_2337DF874(&v31, (a1 + 16));
  sub_23381B5BC(&v36, &v31, &v38);
  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  v34.f64[0] = sub_233819210();
  v34.f64[1] = v20;
  sub_2337DF874(&v28, (a1 + 48));
  sub_23381B5BC(&v34, &v28, &v36);
  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (v10 < 1.0)
  {
    if (v10 > 0.0)
    {
      sub_2337E0244(&v38, &v25, v10);
      sub_2337E0244(&v36, &v22, 1.0 - v10);
      sub_2337E00C8(&v25, &v22, &v34);
      sub_2337E004C(a5, &v34);
      if (*&v34.f64[1])
      {
        v35 = v34.f64[1];
        operator delete(*&v34.f64[1]);
      }

      if (v23)
      {
        v24 = v23;
        operator delete(v23);
      }

      if (v26)
      {
        v27 = v26;
        operator delete(v26);
      }

      goto LABEL_66;
    }

    v21 = &v36;
  }

  else
  {
    v21 = &v38;
  }

  sub_2337E004C(a5, v21);
LABEL_66:
  if (!*a5 || !*(a5 + 4))
  {
    *(a1 + 208) = 0;
  }

  if (*(a1 + 8) != 17 || *(a1 + 12) != 21)
  {
    *(a1 + 208) = 0;
  }

  if (*&v36.f64[1])
  {
    v37 = v36.f64[1];
    operator delete(*&v36.f64[1]);
  }

  if (*(&v38 + 1))
  {
    v39 = *(&v38 + 1);
    operator delete(*(&v38 + 1));
  }
}

void sub_23381B110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  v29 = *(v27 - 88);
  if (v29)
  {
    *(v27 - 80) = v29;
    operator delete(v29);
  }

  if (__p)
  {
    operator delete(__p);
  }

  v30 = *(v27 - 120);
  if (v30)
  {
    *(v27 - 112) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(exception_object);
}

void sub_23381B21C(unsigned int *a1, double *a2, void *a3, void *a4)
{
  sub_2337DFDF8(&v23);
  sub_2337E004C(a3, &v23);
  if (*(&v23 + 1))
  {
    v24 = *(&v23 + 1);
    operator delete(*(&v23 + 1));
  }

  sub_2337DFDF8(&v23);
  sub_2337E004C(a4, &v23);
  if (*(&v23 + 1))
  {
    v24 = *(&v23 + 1);
    operator delete(*(&v23 + 1));
  }

  v8 = sub_23381B524(a1, a2);
  if (v8 >= 1.0)
  {
    v9 = a1 + 4;
LABEL_19:
    sub_2337E004C(a3, v9);
    goto LABEL_20;
  }

  if (v8 <= 0.0)
  {
    v9 = a1 + 12;
    goto LABEL_19;
  }

  if (!a1[4] || !a1[5] || !a1[12] || !a1[13])
  {
    sub_2337DFDF8(&v23);
    sub_2337E004C(a3, &v23);
    v10 = *(&v23 + 1);
    if (!*(&v23 + 1))
    {
      goto LABEL_20;
    }

    v24 = *(&v23 + 1);
    goto LABEL_39;
  }

  sub_2337E0244(a1 + 4, &v20, v8);
  sub_2337E0244(a1 + 12, &v17, 1.0 - v8);
  sub_2337E00C8(&v20, &v17, &v23);
  sub_2337E004C(a3, &v23);
  if (*(&v23 + 1))
  {
    v24 = *(&v23 + 1);
    operator delete(*(&v23 + 1));
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  v10 = v21;
  if (v21)
  {
    v22 = v21;
LABEL_39:
    operator delete(v10);
  }

LABEL_20:
  v11 = a1 + 54;
  if (!a1[54])
  {
    v12 = a1 + 62;
    if (a1[62] && a1[63])
    {
      goto LABEL_43;
    }

    goto LABEL_45;
  }

  v12 = a1 + 62;
  v13 = a1[55];
  if (!a1[62])
  {
    if (v13)
    {
      goto LABEL_41;
    }

LABEL_45:
    sub_2337DFDF8(&v23);
    sub_2337E004C(a4, &v23);
    v15 = *(&v23 + 1);
    if (!*(&v23 + 1))
    {
      return;
    }

    v24 = *(&v23 + 1);
    goto LABEL_47;
  }

  v14 = a1[63];
  if (!v13 || !v14)
  {
    if (v13)
    {
      goto LABEL_41;
    }

    if (v14)
    {
      goto LABEL_43;
    }

    goto LABEL_45;
  }

  if (v8 >= 1.0)
  {
LABEL_41:
    v16 = a4;
LABEL_44:
    sub_2337E004C(v16, v11);
    return;
  }

  if (v8 <= 0.0)
  {
LABEL_43:
    v16 = a4;
    v11 = v12;
    goto LABEL_44;
  }

  sub_2337E0244(a1 + 54, &v20, v8);
  sub_2337E0244(a1 + 62, &v17, 1.0 - v8);
  sub_2337E00C8(&v20, &v17, &v23);
  sub_2337E004C(a4, &v23);
  if (*(&v23 + 1))
  {
    v24 = *(&v23 + 1);
    operator delete(*(&v23 + 1));
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  v15 = v21;
  if (v21)
  {
    v22 = v21;
LABEL_47:
    operator delete(v15);
  }
}

void sub_23381B4AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

double sub_23381B524(uint64_t a1, double *a2)
{
  v7 = 0;
  v8 = 0.0;
  sub_23381933C(a2, &v8, &v7);
  v3 = sub_233819AB0(*(a1 + 8));
  v4 = sub_233819AB0(*(a1 + 12));
  v5 = 1.0;
  if (v8 > v3)
  {
    v5 = 0.0;
    if (v8 < v4)
    {
      return (1.0 / v8 - 1.0 / v4) / (1.0 / v3 - 1.0 / v4);
    }
  }

  return v5;
}

void sub_23381B5BC(float64x2_t *a1@<X1>, unsigned int *a2@<X2>, _OWORD *a3@<X8>)
{
  sub_2337DFDF8(a3);
  sub_233819278(a1, &v32);
  sub_2337DFE04(&v32, &v35);
  sub_2337E032C(a2, &v35, v37);
  if (*(&v35 + 1))
  {
    v36 = *(&v35 + 1);
    operator delete(*(&v35 + 1));
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  sub_2337E1044(v37, &v32);
  sub_2337DFEE0(&v32, &v35);
  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  sub_2337E0720(a2, &v30);
  sub_2337E032C(&v30, &v35, &v32);
  if (*(&v30 + 1))
  {
    v31 = *(&v30 + 1);
    operator delete(*(&v30 + 1));
  }

  sub_2337DF9CC(&v30, 3u, 1u, 1.0, v6, v7, v8, v9, v10, 0x3FF0000000000000);
  sub_2337E032C(&v32, &v30, &v27);
  *&v25 = sub_2337DFCEC(&v27, 1u);
  *(&v25 + 1) = v11;
  v12 = 1.0 / *sub_2337DFD6C(&v25, 0);
  sub_2337E0244(&v27, &v25, v12);
  sub_2337E004C(&v27, &v25);
  if (*(&v25 + 1))
  {
    v26 = *(&v25 + 1);
    operator delete(*(&v25 + 1));
  }

  sub_2337E1044(&v27, &v21);
  sub_2338FC934(&v19, &v21);
  v24.f64[0] = sub_2338191E8();
  v24.f64[1] = v13;
  sub_23381954C(&v19, &v24, v14, v15, v16, v17, v18, &v25);
  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  sub_2337E032C(&v25, &v32, &v19);
  sub_2337E0244(&v19, &v21, v12);
  sub_2337E004C(a3, &v21);
  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  if (*&v19.f64[1])
  {
    v20 = v19.f64[1];
    operator delete(*&v19.f64[1]);
  }

  if (*(&v25 + 1))
  {
    v26 = *(&v25 + 1);
    operator delete(*(&v25 + 1));
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  if (*(&v30 + 1))
  {
    v31 = *(&v30 + 1);
    operator delete(*(&v30 + 1));
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (*(&v35 + 1))
  {
    v36 = *(&v35 + 1);
    operator delete(*(&v35 + 1));
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }
}

void sub_23381B808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a30)
  {
    operator delete(a30);
  }

  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 104);
  if (v35)
  {
    *(v32 - 96) = v35;
    operator delete(v35);
  }

  v36 = *(v32 - 72);
  if (v36)
  {
    *(v32 - 64) = v36;
    operator delete(v36);
  }

  v37 = *(v31 + 8);
  if (v37)
  {
    *(v31 + 16) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

double sub_23381B95C(unsigned int *a1, uint64_t *a2)
{
  v40 = sub_2338191E8();
  v41 = v4;
  sub_2337DFE04(a2, v39);
  if (LODWORD(v39[0]))
  {
    v5 = DWORD1(v39[0]) == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = 29;
    do
    {
      sub_2337DF868(&v37);
      sub_2337DF868(&v35);
      sub_23381B21C(a1, &v40, &v37, &v35);
      v7 = 1;
      if (v37 && DWORD1(v37))
      {
        sub_2337DF874(&v30, &v35);
        sub_2337E0A98(&v37, &v30, &v33);
        if (__p)
        {
          v32 = __p;
          operator delete(__p);
        }

        if (v33 && DWORD1(v33))
        {
          sub_2337E032C(&v33, v39, v27);
          v8 = sub_2338191E8();
          v10 = v9;
          v25 = sub_2337DFCEC(v27, 0);
          v26 = v11;
          v12 = *sub_2337DFD6C(&v25, 0);
          v24[0] = sub_2337DFCEC(v27, 1u);
          v24[1] = v13;
          v14 = *sub_2337DFD6C(v24, 0);
          v23[0] = sub_2337DFCEC(v27, 2u);
          v23[1] = v15;
          v16 = v12 + v14 + *sub_2337DFD6C(v23, 0);
          if (v16 > 0.0)
          {
            v25 = sub_2337DFCEC(v27, 0);
            v26 = v17;
            v18 = *sub_2337DFD6C(&v25, 0);
            v25 = sub_2337DFCEC(v27, 1u);
            v26 = v19;
            v8 = v18 / v16;
            v10 = *sub_2337DFD6C(&v25, 0) / v16;
          }

          v20 = vabdd_f64(v8, v40) + vabdd_f64(v10, v41);
          v7 = v20 < 0.0000001;
          if (v20 >= 0.0000001 && !v6)
          {
            v10 = (v10 + v41) * 0.5;
            v8 = (v8 + v40) * 0.5;
          }

          v40 = v8;
          v41 = v10;
          if (v28)
          {
            v29 = v28;
            operator delete(v28);
          }
        }

        if (*(&v33 + 1))
        {
          v34 = *(&v33 + 1);
          operator delete(*(&v33 + 1));
        }
      }

      if (*(&v35 + 1))
      {
        v36 = *(&v35 + 1);
        operator delete(*(&v35 + 1));
      }

      if (*(&v37 + 1))
      {
        v38 = *(&v37 + 1);
        operator delete(*(&v37 + 1));
      }

      if (v6)
      {
        v21 = v7;
      }

      else
      {
        v21 = 1;
      }

      --v6;
    }

    while ((v21 & 1) == 0);
  }

  sub_2338FC9A8(v39, &v40, &v41, &v37);
  return *&v37;
}

void sub_23381BBCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a28)
  {
    operator delete(a28);
  }

  v31 = *(v29 - 152);
  if (v31)
  {
    *(v29 - 144) = v31;
    operator delete(v31);
  }

  v32 = *(v29 - 120);
  if (v32)
  {
    *(v29 - 112) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(exception_object);
}

void sub_23381C30C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_233721B78(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23381C328(uint64_t a1)
{
  v2 = sub_23378E104();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWGamutMap", &unk_233945DBE, v5, 2u);
  }
}

char **sub_23381C448(uint64_t a1, char **a2)
{
  result = (a1 + 192);
  if (result != a2)
  {
    return sub_233754F80(result, *a2, a2[1], (a2[1] - *a2) >> 1);
  }

  return result;
}

void *sub_23381C474(uint64_t a1)
{
  *a1 = &unk_2849200F0;
  v2 = *(a1 + 344);
  if (v2)
  {
    j__free_3(*v2);
  }

  j__free_3(v2);
  v3 = *(a1 + 352);
  if (v3)
  {
    j__free_3(*v3);
  }

  j__free_3(v3);
  v4 = *(a1 + 200);
  if (v4)
  {
    j__free_3(v4);
    *(a1 + 200) = 0;
  }

  for (i = 272; i != 304; i += 8)
  {
    v6 = *(a1 + i);
    if (v6)
    {
      j__free_3(v6);
      *(a1 + i) = 0;
    }
  }

  if (*(a1 + 4519) < 0)
  {
    operator delete(*(a1 + 4496));
  }

  if (*(a1 + 4495) < 0)
  {
    operator delete(*(a1 + 4472));
  }

  return sub_233723A54(a1);
}

void sub_23381C55C(uint64_t a1)
{
  sub_23381C474(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_23381C594(uint64_t a1)
{
  v2 = *(a1 + 4460);
  if (v2 >= *(a1 + 4456))
  {
    v3 = (a1 + 362);
    v6 = 4096;
    sub_233723C18(&v7, &v6);
    v8 = (*(**(a1 + 24) + 32))(*(a1 + 24), a1 + 362, 4094);
    v4 = sub_23380A6B8(&v8);
    *(a1 + 4456) = v4 + 2;
    *(a1 + 4460) = 2;
    if (v4 < 1)
    {
      return 255;
    }

    *(a1 + 4460) = 3;
  }

  else
  {
    *(a1 + 4460) = v2 + 1;
    v3 = (a1 + v2 + 360);
  }

  return *v3;
}

void sub_23381C660(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6, unsigned int *a7)
{
  v7 = *(*(a5 + 8 * a2) + 2 * a3);
  v8 = 8 * a2 - 8;
  v9 = *(*(a4 + v8) + 2 * a3);
  v10 = *(*(a5 + v8) + 2 * a3);
  v11 = v7 + ((v9 - v10) >> 1);
  v12 = (v9 + v7) >> 1;
  if (a6 != 7)
  {
    v12 = 0;
  }

  if (a6 != 6)
  {
    v11 = v12;
  }

  v13 = v9 + v7 - v10;
  v14 = v9 + ((v7 - v10) >> 1);
  if (a6 != 5)
  {
    v14 = 0;
  }

  if (a6 != 4)
  {
    v13 = v14;
  }

  if (a6 <= 5)
  {
    v11 = v13;
  }

  if (a6 != 3)
  {
    v10 = 0;
  }

  if (a6 != 2)
  {
    v7 = v10;
  }

  if (a6 == 1)
  {
    v7 = v9;
  }

  if (a6 > 3)
  {
    v7 = v11;
  }

  *a7 = v7;
}

char *sub_23381C6EC(uint64_t a1)
{
  v2 = *(a1 + 208);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 200) + 6);
    do
    {
      if (*(v3 - 1) != 1 || *v3 != 1)
      {
        __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0]();
        sub_2338F83F4();
      }

      v3 += 5;
      --v2;
    }

    while (v2);
  }

  v4 = *(a1 + 248);
  v5 = v4 - 1;
  if (v4 == 1)
  {
    v6 = 250;
LABEL_16:
    *(a1 + v6) = v5;
    goto LABEL_17;
  }

  if (v4 > 4)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v4 >= 1)
  {
    v7 = vdupq_n_s64(v5);
    v8 = vmovn_s64(vcgeq_u64(v7, xmmword_233903BB0));
    if (vuzp1_s16(v8, *v7.i8).u8[0])
    {
      *(a1 + 250) = 0;
    }

    if (vuzp1_s16(v8, *&v7).i8[2])
    {
      *(a1 + 252) = 1;
    }

    v9 = vmovn_s64(vcgeq_u64(v7, xmmword_233903BE0));
    if (vuzp1_s16(v9, v9).i32[1])
    {
      *(a1 + 254) = 2;
      LOWORD(v5) = 3;
      v6 = 256;
      goto LABEL_16;
    }
  }

LABEL_17:
  v10 = sub_2338F6084(8 * *(a1 + 188));
  *(a1 + 344) = v10;
  if (!v10)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  *v10 = 0;
  v11 = sub_2338F6084(8 * *(a1 + 188));
  *(a1 + 352) = v11;
  if (!v11)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  *v11 = 0;
  v12 = 2 * *(a1 + 248);
  v13 = sub_2338F6084(v12 * *(a1 + 188));
  if (!v13)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v14 = v13;
  **(a1 + 344) = v13;
  result = sub_2338F6084(v12 * *(a1 + 188));
  if (!result)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  **(a1 + 352) = result;
  v16 = *(a1 + 188);
  if (v16 >= 2)
  {
    v17 = &result[v12];
    v18 = &v14[v12];
    for (i = 1; i != v16; ++i)
    {
      *(*(a1 + 344) + 8 * i) = v18;
      *(*(a1 + 352) + 8 * i) = v17;
      v17 += v12;
      v18 += v12;
    }
  }

  return result;
}

void sub_23381C97C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v41 = *MEMORY[0x277D85DE8];
  for (i = 1; i != 17; ++i)
  {
    v5 = *(a2 + i);
    if (*(a2 + i))
    {
      if (v3 <= 257)
      {
        v6 = 257;
      }

      else
      {
        v6 = v3;
      }

      v7 = v6 - v3;
      v8 = &v40[v3];
      do
      {
        if (!v7)
        {
          __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0]();
          sub_2338F83F4();
        }

        *v8++ = i;
        --v7;
        ++v3;
        --v5;
      }

      while (v5);
    }
  }

  v40[v3] = 0;
  v9 = v40[0];
  if (v40[0])
  {
    v10 = 0;
    v11 = 0;
    v12 = v40[0];
    do
    {
      if (v9 == v12)
      {
        if (v11 <= 257)
        {
          v13 = 257;
        }

        else
        {
          v13 = v11;
        }

        v14 = v13 - v11;
        v15 = &v39[v11];
        v16 = v11 << 32;
        v17 = &v40[v11 + 1];
        do
        {
          if (!v14)
          {
            __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0]();
            sub_2338F83F4();
          }

          *v15++ = v10++;
          v18 = *v17++;
          --v14;
          v16 += 0x100000000;
          v11 = (v11 + 1);
        }

        while (v9 == v18);
        v12 = v40[v16 >> 32];
      }

      v10 *= 2;
      ++v9;
    }

    while (v12);
  }

  *(a2 + 1016) = 0u;
  *(a2 + 1032) = 0u;
  *(a2 + 984) = 0u;
  *(a2 + 1000) = 0u;
  *(a2 + 952) = 0u;
  *(a2 + 968) = 0u;
  *(a2 + 920) = 0u;
  *(a2 + 936) = 0u;
  *(a2 + 888) = 0u;
  *(a2 + 904) = 0u;
  *(a2 + 856) = 0u;
  *(a2 + 872) = 0u;
  *(a2 + 824) = 0u;
  *(a2 + 840) = 0u;
  *(a2 + 792) = 0u;
  *(a2 + 808) = 0u;
  if (v3 >= 1)
  {
    v19 = (a2 + 17);
    v20 = v40;
    v21 = v39;
    v22 = v3;
    do
    {
      v23 = *v21++;
      *(a2 + 280 + 2 * *v19) = v23;
      LOBYTE(v23) = *v20++;
      v24 = v23;
      v25 = *v19++;
      *(a2 + 792 + v25) = v24;
      --v22;
    }

    while (v22);
  }

  v26 = 0;
  v27 = 0;
  v28 = a2 + 1050;
  v29 = (a2 + 1158);
  do
  {
    v30 = *(v28 + v26 - 1049);
    if (*(v28 + v26 - 1049))
    {
      *v29 = v27;
      *(v29 - 54) = v39[v27];
      v27 += v30;
      v31 = v39[v27 - 1];
    }

    else
    {
      v31 = -1;
    }

    *(v28 + 4 * v26++ + 38) = v31;
    ++v29;
  }

  while (v26 != 16);
  *(a2 + 1152) = 0xFFFFF;
  bzero((a2 + 1192), 0x400uLL);
  if (v3 >= 1)
  {
    for (j = 0; j != v3; ++j)
    {
      v33 = v40[j];
      if (v33 <= 8)
      {
        v34 = v39[j] << (8 - v33);
        v35 = v34;
        if (v33 != 8)
        {
          v35 = dword_233908E70[v40[j] + 24] | v34;
        }

        if (v35 > 255)
        {
          __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0]();
          sub_2338F83F4();
        }

        if (v34 <= v35)
        {
          v36 = *(a2 + 17 + j);
          v37 = (a2 + 1192 + 4 * v34);
          v38 = v35 - v34 + 1;
          do
          {
            *v37 = v33;
            v37[256] = v36;
            ++v37;
            --v38;
          }

          while (v38);
        }
      }
    }
  }
}

uint64_t sub_23381CCAC(uint64_t a1)
{
  v2 = sub_23381C594(a1);
  result = sub_23381C594(a1);
  v4 = result | (v2 << 8);
  v5 = v4 - 2;
  if (v4 != 2)
  {
    do
    {
      --v5;
      result = sub_23381C594(a1);
    }

    while (v5);
  }

  return result;
}

double sub_23381CCF8(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = sub_23381C594(a1);
  v3 = sub_23381C594(a1) | (v2 << 8);
  v5 = v3 - 2;
  if (v3 != 2)
  {
    v6 = 0;
    do
    {
      v7 = sub_23381C594(a1);
      LODWORD(v8) = 0;
      LOBYTE(v39) = 0;
      for (i = 1; i != 17; ++i)
      {
        v10 = sub_23381C594(a1);
        *(&v39 + i) = v10;
        v8 = (v8 + v10);
      }

      if (v8 > 0x100)
      {
        break;
      }

      if (v8)
      {
        v11 = v24;
        v12 = v8;
        do
        {
          *v11++ = sub_23381C594(a1);
          --v12;
        }

        while (v12);
      }

      if ((v7 & 0x10) == 0)
      {
        v6 = (a1 + 272 + 8 * v7);
      }

      if (v7 > 3)
      {
        break;
      }

      v13 = *v6;
      if (!*v6)
      {
        v13 = sub_2338F6084(0xCA8uLL);
        *v6 = v13;
        if (!v13)
        {
          break;
        }
      }

      *(v13 + 16) = v40;
      *v13 = v39;
      v14 = *v6;
      v15 = v36;
      *(v14 + 209) = v35;
      *(v14 + 225) = v15;
      v16 = v38;
      *(v14 + 241) = v37;
      v17 = v32;
      *(v14 + 145) = v31;
      *(v14 + 161) = v17;
      v18 = v34;
      *(v14 + 177) = v33;
      *(v14 + 193) = v18;
      v19 = v28;
      *(v14 + 81) = v27;
      *(v14 + 97) = v19;
      v20 = v30;
      *(v14 + 113) = v29;
      *(v14 + 129) = v20;
      v21 = v24[1];
      *(v14 + 17) = v24[0];
      *(v14 + 33) = v21;
      result = *&v25;
      v22 = v26;
      *(v14 + 49) = v25;
      *(v14 + 65) = v22;
      v23 = v5 - v8;
      *(v14 + 257) = v16;
      v5 = v5 - v8 - 17;
    }

    while (v23 != 17);
  }

  return result;
}

uint64_t sub_23381CEC0(uint64_t a1)
{
  v2 = sub_23381C594(a1);
  result = sub_23381C594(a1);
  if ((result | (v2 << 8)) == 4)
  {
    v4 = sub_23381C594(a1);
    result = sub_23381C594(a1);
    *(a1 + 312) = result | (v4 << 8);
  }

  return result;
}

uint64_t sub_23381CF18(uint64_t a1)
{
  v2 = sub_23381C594(a1);
  result = sub_23381C594(a1);
  if (((result & 0xFFFF00FF | (v2 << 8)) - 2) >= 1)
  {
    v4 = (v2 << 8) + result - 1;
    do
    {
      result = sub_23381C594(a1);
      --v4;
    }

    while (v4 > 1);
  }

  return result;
}

uint64_t sub_23381CF7C(uint64_t a1)
{
  v2 = sub_23381C594(a1);
  v3 = sub_23381C594(a1);
  *(a1 + 196) = sub_23381C594(a1);
  v4 = sub_23381C594(a1);
  *(a1 + 192) = sub_23381C594(a1) | (v4 << 8);
  v5 = sub_23381C594(a1);
  *(a1 + 188) = sub_23381C594(a1) | (v5 << 8);
  v6 = sub_23381C594(a1);
  *(a1 + 208) = v6;
  if (*(a1 + 192) < 1 || *(a1 + 188) < 1 || !v6 || (*(a1 + 196) - 17) <= 0xFFFFFFF0 || (v3 | (v2 << 8)) != 3 * v6 + 8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  result = sub_2338F6024(v6, 0xAuLL);
  *(a1 + 200) = result;
  if (*(a1 + 208) >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = (*(a1 + 200) + v8);
      v10[1] = v9;
      *v10 = sub_23381C594(a1);
      v11 = sub_23381C594(a1);
      v10[2] = v11 >> 4;
      v10[3] = v11 & 0xF;
      result = sub_23381C594(a1);
      ++v9;
      v8 += 10;
    }

    while (v9 < *(a1 + 208));
  }

  return result;
}

uint64_t sub_23381D144(uint64_t a1)
{
  v2 = sub_23381C594(a1);
  v3 = sub_23381C594(a1);
  result = sub_23381C594(a1);
  *(a1 + 248) = result;
  if ((result - 5) >= 0xFFFFFFFC && (v3 | (v2 << 8)) == 2 * result + 6)
  {
    v5 = 0;
    v6 = 0;
    v7 = result;
    while (1)
    {
      v8 = sub_23381C594(a1);
      result = sub_23381C594(a1);
      if (!v5 && v8 != **(a1 + 200))
      {
        v6 = v8;
      }

      v9 = *(a1 + 208);
      if (v9 < 1)
      {
        break;
      }

      for (i = *(a1 + 200); v8 - v6 != *i; i += 5)
      {
        if (!--v9)
        {
          return result;
        }
      }

      *(a1 + 216 + 8 * v5) = i;
      i[4] = result >> 4;
      if (++v5 == v7)
      {
        *(a1 + 304) = sub_23381C594(a1);
        sub_23381C594(a1);
        result = sub_23381C594(a1);
        *(a1 + 308) = result & 0xF;
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_23381D258(uint64_t a1)
{
  do
  {
      ;
    }

    do
    {
      result = sub_23381C594(a1);
    }

    while (result == 255);
  }

  while (!result);
  return result;
}

uint64_t sub_23381D29C(uint64_t a1)
{
  while (1)
  {
    do
    {
      while (1)
      {
        while (1)
        {
          result = sub_23381D258(a1);
          if (result <= 0xD7u)
          {
            break;
          }

          if (result <= 0xDCu)
          {
            if (result != 219)
            {
              v3 = result - 216;
              goto LABEL_15;
            }
          }

          else if (result == 221)
          {
            sub_23381CEC0(a1);
          }

          else
          {
            if (result != 224)
            {
              goto LABEL_19;
            }

            sub_23381CF18(a1);
          }
        }

        if (result <= 0xC4u)
        {
          break;
        }

        if (result - 208 >= 8)
        {
          if (result - 197 < 7)
          {
            return result;
          }

          v3 = result - 205;
LABEL_15:
          if (v3 < 3)
          {
            return result;
          }

LABEL_19:
          sub_23381CCAC(a1);
        }
      }
    }

    while (result == 1);
    if (result != 196)
    {
      break;
    }

    sub_23381CCF8(a1);
  }

  if (result - 192 >= 4)
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_23381D374(uint64_t a1)
{
  v2 = sub_23381C594(a1);
  v3 = sub_23381C594(a1);
  if (v2 != 255 || v3 != 216)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  *(a1 + 312) = 0;
  v4 = sub_23381D29C(a1);
  if (v4 != 195 && (v4 & 0xFE) != 0xC0)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return sub_23381CF7C(a1);
}

uint64_t sub_23381D440(uint64_t a1)
{
  if (sub_23381D29C(a1) != 218)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return sub_23381D144(a1);
}

uint64_t sub_23381D4B4(uint64_t result, int a2)
{
  if (*(result + 336) <= 56)
  {
    v3 = result;
    v4 = result + 360;
    do
    {
      result = sub_23381C594(v3);
      v5 = result;
      if (result == 255 && (result = sub_23381C594(v3), result))
      {
        v8 = *(v3 + 4460) - 1;
        *(v3 + 4460) = v8;
        *(v4 + v8) = result;
        v9 = *(v3 + 4460) - 1;
        *(v3 + 4460) = v9;
        *(v4 + v9) = -1;
        v7 = *(v3 + 336);
        if (v7 >= a2)
        {
          return result;
        }

        v6 = 0;
      }

      else
      {
        v6 = v5;
        v7 = *(v3 + 336);
      }

      *(v3 + 328) = v6 | (*(v3 + 328) << 8);
      *(v3 + 336) = v7 + 8;
    }

    while (v7 < 49);
  }

  return result;
}

void sub_23381D578(uint64_t a1)
{
  *(a1 + 336) = 0;
  if (*(a1 + 248) > 4u)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (*(a1 + 248))
  {
    v2 = 0;
    do
    {
      v3 = *(a1 + 216 + 8 * v2);
      if (!v3)
      {
        __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0]();
        sub_2338F83F4();
      }

      v4 = *(v3 + 8);
      if (v4 >= 4)
      {
        __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0]();
        sub_2338F83F4();
      }

      v5 = *(a1 + 272 + 8 * v4);
      if (!v5)
      {
        __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0]();
        sub_2338F83F4();
      }

      sub_23381C97C(a1, v5);
      ++v2;
    }

    while (v2 < *(a1 + 248));
  }

  v6 = *(a1 + 312) / *(a1 + 188);
  *(a1 + 316) = v6;
  *(a1 + 320) = v6;
  *(a1 + 324) = 0;
}

uint64_t sub_23381D6A8(uint64_t a1)
{
  *(a1 + 336) = 0;
  do
  {
      ;
    }

    do
    {
      result = sub_23381C594(a1);
    }

    while (result == 255);
  }

  while (!result);
  v3 = *(a1 + 324);
  if (v3 + 208 == result)
  {
    *(a1 + 320) = *(a1 + 316);
    *(a1 + 324) = (v3 + 1) & 7;
  }

  return result;
}

uint64_t sub_23381D718(uint64_t result, void *a2)
{
  v12 = 0;
  v2 = result;
  v3 = *(result + 248);
  v4 = *(result + 188);
  if (*(result + 248) >= 1)
  {
    v5 = 0;
    v6 = 1 << (*(result + 196) + ~*(result + 308));
    do
    {
      result = sub_2338FCA88(v2, *(v2 + 272 + 8 * *(*(v2 + 216 + 8 * *(v2 + v5 + 250)) + 8)), &v12 + 1);
      if (HIDWORD(v12))
      {
        result = sub_23381D8FC(v2, SHIDWORD(v12), &v12);
        LOWORD(v7) = v12;
        if (v12 < 1 << (BYTE4(v12) - 1))
        {
          v7 = v12 + (-1 << SBYTE4(v12)) + 1;
          LODWORD(v12) = v7;
        }
      }

      else
      {
        LOWORD(v7) = 0;
        LODWORD(v12) = 0;
      }

      *(*a2 + v5) = v7 + v6;
      v5 += 2;
    }

    while (2 * v3 != v5);
  }

  if (v4 > 1)
  {
    for (i = 1; i != v4; ++i)
    {
      if (v3 >= 1)
      {
        v9 = 0;
        do
        {
          result = sub_2338FCA88(v2, *(v2 + 272 + 8 * *(*(v2 + 216 + 8 * *(v2 + v9 + 250)) + 8)), &v12 + 1);
          if (HIDWORD(v12))
          {
            result = sub_23381D8FC(v2, SHIDWORD(v12), &v12);
            LOWORD(v10) = v12;
            if (v12 < 1 << (BYTE4(v12) - 1))
            {
              v10 = v12 + (-1 << SBYTE4(v12)) + 1;
              LODWORD(v12) = v10;
            }
          }

          else
          {
            LOWORD(v10) = 0;
            LODWORD(v12) = 0;
          }

          *(a2[i] + v9) = *(a2[i - 1] + v9) + v10;
          v9 += 2;
        }

        while (2 * v3 != v9);
      }
    }
  }

  if (*(v2 + 316))
  {
    --*(v2 + 320);
  }

  return result;
}

uint64_t sub_23381D8FC(uint64_t result, int a2, _DWORD *a3)
{
  v5 = result;
  v6 = *(result + 336);
  if (v6 < a2)
  {
    result = sub_23381D4B4(result, a2);
    v6 = *(v5 + 336);
  }

  v7 = *(v5 + 328);
  v8 = v6 - a2;
  *(v5 + 336) = v8;
  *a3 = dword_233908E2C[a2] & (v7 >> v8);
  return result;
}

void sub_23381D96C(uint64_t a1)
{
  v33 = *(a1 + 192);
  v35 = *(a1 + 248);
  v2 = *(a1 + 308);
  v3 = (a1 + 4496);
  v4 = *(a1 + 4519);
  if ((v4 & 0x80000000) == 0)
  {
    if (v4 != 8)
    {
      goto LABEL_7;
    }

LABEL_6:
    v5 = *v3 == 0x325320616369654CLL;
    goto LABEL_8;
  }

  if (*(a1 + 4504) == 8)
  {
    v3 = *v3;
    goto LABEL_6;
  }

LABEL_7:
  v5 = 0;
LABEL_8:
  v6 = *(a1 + 188);
  v36 = *(a1 + 304);
  v7 = *(a1 + 344);
  v37 = *(a1 + 352);
  v42 = 0;
  v43 = 0;
  if (v5 && v2 == 12)
  {
    v8 = 0;
  }

  else
  {
    v8 = v2;
  }

  v39 = v33;
  v40 = v35;
  v9 = *(a1 + 44);
  v38 = *(a1 + 48);
  if ((v35 - 5) <= 0xFFFBu)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v44 = v6;
  v44 = *sub_2337AD0B4(&v44, &v39);
  v10 = *sub_2337AD0B4(&v44, &v40);
  v44 = v9;
  if (v10 != *sub_2337AD0B4(&v44, &v38))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v41 = 0;
  sub_23381D718(a1, v7);
  if (v6 >= 1)
  {
    v11 = 0;
    v12 = *(a1 + 4464);
    do
    {
      v13 = 0;
      do
      {
        *v12++ = *(v7[v11] + v13) << v8;
        *(a1 + 4464) = v12;
        v13 += 2;
      }

      while (2 * v35 != v13);
      ++v11;
    }

    while (v11 != v6);
  }

  if (v33 > 1)
  {
    v14 = a1 + 216;
    v15 = a1 + 272;
    v16 = 2 * v35;
    for (i = 1; i != v33; ++i)
    {
      v18 = v37;
      v37 = v7;
      if (*(a1 + 316))
      {
        v19 = *(a1 + 320);
        if (!v19)
        {
          sub_23381D6A8(a1);
          sub_23381D718(a1, v18);
          if (v6 >= 1)
          {
            v30 = 0;
            v31 = *(a1 + 4464);
            do
            {
              v32 = 0;
              do
              {
                *v31++ = *(v18[v30] + v32) << v8;
                *(a1 + 4464) = v31;
                v32 += 2;
              }

              while (v16 != v32);
              ++v30;
            }

            while (v30 != v6);
          }

          goto LABEL_51;
        }

        *(a1 + 320) = v19 - 1;
      }

      if (v35 >= 1)
      {
        v20 = 0;
        do
        {
          sub_2338FCA88(a1, *(v15 + 8 * *(*(v14 + 8 * *(a1 + v20 + 250)) + 8)), &v43);
          if (v43)
          {
            sub_23381D8FC(a1, v43, &v42);
            LOWORD(v21) = v42;
            if (v42 < 1 << (v43 - 1))
            {
              v21 = v42 + (-1 << v43) + 1;
              v42 = v21;
            }
          }

          else
          {
            LOWORD(v21) = 0;
            v42 = 0;
          }

          *(*v18 + v20) = *(*v37 + v20) + v21;
          v20 += 2;
        }

        while (2 * v35 != v20);
      }

      v34 = i;
      if (v6 > 1)
      {
        for (j = 1; j != v6; ++j)
        {
          if (v35 >= 1)
          {
            v23 = 0;
            do
            {
              v24 = sub_2338FCA88(a1, *(v15 + 8 * *(*(v14 + 8 * *(a1 + 2 * v23 + 250)) + 8)), &v43);
              if (v43)
              {
                v24 = sub_23381D8FC(a1, v43, &v42);
                v25 = v42;
                if (v42 < 1 << (v43 - 1))
                {
                  v26 = v42 + (-1 << v43);
                  v25 = v26 + 1;
                  v42 = v26 + 1;
                }
              }

              else
              {
                v25 = 0;
                v42 = 0;
              }

              sub_23381C660(v24, j, v23, v18, v37, v36, &v41);
              *(v18[j] + 2 * v23++) = v41 + v25;
            }

            while (v35 != v23);
          }
        }
      }

      i = v34;
      if (v6 >= 1)
      {
        v27 = 0;
        v28 = *(a1 + 4464);
        do
        {
          v29 = 0;
          do
          {
            *v28++ = *(v18[v27] + v29) << v8;
            *(a1 + 4464) = v28;
            v29 += 2;
          }

          while (v16 != v29);
          ++v27;
        }

        while (v27 != v6);
      }

LABEL_51:
      v7 = v18;
    }
  }
}

void sub_23381DDD8(os_signpost_id_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CLjpgUnpacker", &unk_233945DBE, buf, 2u);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_23381DF28;
  v5[3] = &unk_2789EE800;
  v5[4] = a1;
  v4 = MEMORY[0x2383AC810](v5);
  *(a1 + 4464) = sub_2337ADCC4(a1);
  sub_23381D374(a1);
  sub_23381D440(a1);
  sub_23381C6EC(a1);
  sub_23381D578(a1);
  sub_23381D96C(a1);
  v4[2](v4);
}

void sub_23381DF28(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CLjpgUnpacker", &unk_233945DBE, v5, 2u);
  }
}

uint64_t sub_23381E020(uint64_t a1, const char *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a3;
  v6 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 8), a2, a2, a4, a5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_msgSend_BOOLValue(v6, v7, v8, v9, v10);
  }

  return v5;
}

double sub_23381E0BC(uint64_t a1, const char *a2, double *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a3;
  v6 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 8), a2, a2, a4, a5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_doubleValue(v6, v7, v8, v9, v10);
    v5 = v11;
  }

  return v5;
}

void sub_23381E1C4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, const void **a5@<X8>)
{
  v40 = *MEMORY[0x277D85DE8];
  v34 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 8), a2, off_27DE37BD8[0], a3, a4);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_count(v34, v7, v8, v9, v10) <= 4)
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v11 = v34;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v35, v39, 16);
    if (v17)
    {
      v18 = *v36;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v36 != v18)
          {
            objc_enumerationMutation(v11);
          }

          objc_msgSend_doubleValue(*(*(&v35 + 1) + 8 * i), v13, v14, v15, v16);
          v22 = a5[1];
          v21 = a5[2];
          if (v22 >= v21)
          {
            v24 = *a5;
            v25 = v22 - *a5;
            v26 = v25 >> 3;
            v27 = (v25 >> 3) + 1;
            if (v27 >> 61)
            {
              sub_2337235BC();
            }

            v28 = v21 - v24;
            if (v28 >> 2 > v27)
            {
              v27 = v28 >> 2;
            }

            if (v28 >= 0x7FFFFFFFFFFFFFF8)
            {
              v29 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v29 = v27;
            }

            if (v29)
            {
              sub_233723798(a5, v29);
            }

            *(8 * v26) = v20;
            v23 = 8 * v26 + 8;
            memcpy(0, v24, v25);
            v30 = *a5;
            *a5 = 0;
            a5[1] = v23;
            a5[2] = 0;
            if (v30)
            {
              operator delete(v30);
            }
          }

          else
          {
            *v22 = v20;
            v23 = (v22 + 8);
          }

          a5[1] = v23;
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v35, v39, 16);
      }

      while (v17);
    }
  }

  else
  {

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    v31 = *a2;
    v32 = *(a2 + 8);
    v33 = (v32 - *a2) >> 3;

    sub_2337236E0(a5, v31, v32, v33);
  }
}

void sub_23381E440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v13 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

void sub_23381E5A4(uint64_t a1)
{

  JUMPOUT(0x2383ABF10);
}

void sub_23381E6A4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284920210;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t *sub_23381E720(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v14 = a3;
  if (a1 && a2 && a3)
  {
    LODWORD(v15) = 1;
    result = sub_23374340C(&v13, &v15);
    while (v13 < a2)
    {
      for (i = 0; i < v14; ++i)
      {
        v15 = v13;
        v15 = *sub_23375B354(&v15, &v14);
        v11 = *sub_233743570(&v15, &i);
        v6 = *(a1 + sub_23375A0B4(&v11));
        v9 = 1;
        v15 = v13;
        v15 = *sub_23374346C(&v15, &v9);
        v15 = *sub_23375B354(&v15, &v14);
        v10 = *sub_233743570(&v15, &i);
        v7 = *(a1 + sub_23375A0B4(&v10)) + v6;
        v15 = v13;
        v15 = *sub_23375B354(&v15, &v14);
        v15 = *sub_233743570(&v15, &i);
        *(a1 + sub_23375A0B4(&v15)) = v7;
      }

      result = sub_23381E8C4(&v13);
    }
  }

  else
  {
    v8 = *MEMORY[0x277D85DF8];

    return fwrite("DecodeDeltaBytes: Invalid parameters\n", 0x25uLL, 1uLL, v8);
  }

  return result;
}

void *sub_23381E8C4(void *result)
{
  v1 = (*result)++ == -1;
  if (v1 << 63 >> 63 != v1)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

uint64_t *sub_23381E930(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (result)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (a5)
          {
            v9 = result;
            sub_23381E720(result, a5 * a3, a4);
            v10 = a4 * a3;
            v17 = 0;
            result = sub_23374340C(&v18, &v17);
            v11 = v18;
            if (v18 < a4 * a3)
            {
              v12 = v9 + v10 * (a5 - 1);
              v13 = -(a4 * a3);
              do
              {
                v14 = (a2 + v11 * a5);
                v15 = &v12[v11];
                v16 = a5;
                do
                {
                  *v14++ = *v15;
                  v15 += v13;
                  --v16;
                }

                while (v16);
                result = sub_23381E8C4(&v18);
                v11 = v18;
              }

              while (v18 < v10);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t *sub_23381E9FC(uint64_t *result, unint64_t a2, unint64_t a3)
{
  v12 = a3;
  if (result && a2 >= 2 && a3)
  {
    v4 = result;
    LODWORD(v13) = 2;
    result = sub_23374340C(&v11, &v13);
    while (v11 < a2)
    {
      for (i = 0; i < v12; ++i)
      {
        v13 = v11;
        v13 = *sub_23375B354(&v13, &v12);
        v9 = *sub_233743570(&v13, &i);
        v5 = *(v4 + sub_23375A0B4(&v9));
        v7 = 2;
        v13 = v11;
        v13 = *sub_23374346C(&v13, &v7);
        v13 = *sub_23375B354(&v13, &v12);
        v8 = *sub_233743570(&v13, &i);
        v6 = *(v4 + sub_23375A0B4(&v8)) + v5;
        v13 = v11;
        v13 = *sub_23375B354(&v13, &v12);
        v13 = *sub_233743570(&v13, &i);
        *(v4 + sub_23375A0B4(&v13)) = v6;
      }

      result = sub_23381E8C4(&v11);
    }
  }

  return result;
}

uint64_t *sub_23381EB64(uint64_t *result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  if (result && a2 && a3 >= 2 && a4 && a5)
  {
    v9 = result;
    sub_23381E9FC(result, a5 * a3, a4);
    v10 = a4 * a3;
    LODWORD(v12) = 0;
    result = sub_23374340C(&v13, &v12);
    while (v13 < v10)
    {
      v11 = 0;
      sub_23374340C(&v12, &v11);
      while (v12 < a5)
      {
        *(a2 + v13 * a5 + v12) = *(v9 + (~v12 + a5) * v10 + v13);
        sub_23381E8C4(&v12);
      }

      result = sub_23381E8C4(&v13);
    }
  }

  return result;
}

uint64_t sub_23381EC44(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v16 = a5;
  v17 = a4;
  if (result)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (a5 >= 2)
          {
            v7 = result;
            LODWORD(v18) = 0;
            for (result = sub_23374340C(&v15, &v18); v15 < a3; result = sub_23381EE6C(&v15))
            {
              for (i = 0; i < v17; ++i)
              {
                v18 = v15;
                v18 = *sub_23375B354(&v18, &v17);
                v18 = *sub_233743570(&v18, &i);
                v13 = *sub_23375B354(&v18, &v16);
                v8 = *(v7 + sub_23375A0B4(&v13));
                v18 = v15;
                v18 = *sub_23375B354(&v18, &v17);
                v18 = *sub_233743570(&v18, &i);
                v9 = *sub_23375B354(&v18, &v16);
                v12 = 1;
                v18 = v9;
                v18 = *sub_233723BA0(&v18, &v12);
                *(a2 + sub_23375A0B4(&v18)) = v8;
                v18 = v15;
                v18 = *sub_23375B354(&v18, &v17);
                v18 = *sub_233743570(&v18, &i);
                v10 = *sub_23375B354(&v18, &v16);
                v12 = 1;
                v18 = v10;
                v13 = *sub_233723BA0(&v18, &v12);
                v11 = *(v7 + sub_23375A0B4(&v13));
                v18 = v15;
                v18 = *sub_23375B354(&v18, &v17);
                v18 = *sub_233743570(&v18, &i);
                v18 = *sub_23375B354(&v18, &v16);
                *(a2 + sub_23375A0B4(&v18)) = v11;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_23381EE6C(uint64_t *a1)
{
  result = *a1;
  *a1 = result + 1;
  if (((result == -1) << 63) >> 63 != (result == -1))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

void *sub_23381EEDC(uint64_t a1, int a2, unsigned int a3)
{
  v4 = a3;
  v9 = 64;
  v10 = a2;
  v11 = a3;
  v5 = sub_233723BA0(&v11, &v9);
  v6 = malloc_type_malloc(*v5, 0x100004077774924uLL);
  v7 = *(a1 + 24);
  sub_233723AE0(&v11, &v10);
  (*(*v7 + 40))(v7, &v11, 0);
  (*(**(a1 + 24) + 32))(*(a1 + 24), v6, v4);
  return v6;
}

void sub_23381EFB8(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    free(v1);
  }

  __cxa_end_catch();
  JUMPOUT(0x23381EFA0);
}

void sub_23381EFE0(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, Bytef *a8, uInt a9, unsigned int a10, char a11)
{
  v59 = a6;
  *v60 = a7;
  memset(&strm.zalloc, 0, 24);
  v16 = (*(*a1 + 56))(a1);
  v17 = a1[73];
  sub_23374340C(&v56, v60);
  v47 = v16;
  __p = v16;
  *&v50.origin.x = v56;
  v18 = *sub_23375B354(&v50, &__p);
  v51 = v17;
  v50.origin.x = v18;
  v19 = *sub_23375B354(&v50, &v51);
  LODWORD(v49) = 8;
  v50.origin.x = v19;
  v20 = *sub_233820948(&v50, &v49);
  sub_23374340C(&v56, &v60[1]);
  v45 = v20;
  __p = v20;
  *&v50.origin.x = v56;
  v21 = *sub_23375B354(&v50, &__p);
  sub_233726218(&v56, v21 >> 1);
  if (v56 == v57)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  strm.avail_in = a9;
  strm.next_in = a8;
  strm.avail_out = v21;
  strm.next_out = v56;
  if (inflateInit_(&strm, "1.2.12", 112) || inflate(&strm, 0) != 1 || inflateEnd(&strm))
  {
    v39 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v39, "RawCameraException");
    __cxa_throw(v39, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  sub_233726154(&__p, v45);
  if (__p == v55)
  {
    v40 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v40, "RawCameraException");
    __cxa_throw(v40, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v61.origin.x = a3;
  v61.origin.y = SHIDWORD(a3);
  v61.size.width = a4;
  v61.size.height = SHIDWORD(a4);
  v62.origin.x = v59;
  v62.origin.y = SHIDWORD(v59);
  v62.size.width = v60[0];
  v62.size.height = v60[1];
  v50 = CGRectIntersection(v61, v62);
  sub_233741018(&v51, &v50.origin.x);
  sub_233741018(&v52, &v50.size.width);
  v22 = SHIDWORD(v51);
  if (HIDWORD(v51) < v53 + HIDWORD(v51))
  {
    v42 = a3 >> 32;
    v43 = v17 >> 3;
    v23 = a3;
    do
    {
      v24 = (v56 + (v22 - SHIDWORD(v59)) * v45);
      v25 = a1[72];
      switch(v25)
      {
        case 34894:
          sub_23381EB64(v24, __p, a1[56], v47, v43);
          break;
        case 3:
          sub_23381E930(v24, __p, a1[56], v47, v43);
          break;
        case 1:
          sub_23381EC44(v24, __p, a1[56], v47, v43);
          break;
        default:
          v41 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v41, "RawCameraException");
          __cxa_throw(v41, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v46 = v22;
      v26 = __p;
      v27 = a2 + (((v22 - v42) * a5) & 0xFFFFFFFFFFFFFFFELL);
      *&v49 = v51;
      while (*&v49 < (v52 + v51))
      {
        v48 = v59;
        v50.origin.x = v49;
        v28 = *sub_2338209C0(&v50, &v48);
        v48 = v23;
        v50.origin.x = v49;
        v29 = *sub_2338209C0(&v50, &v48) * a10;
        if (v29 > (a5 >> 1) - a10 || (v30 = v28 * v47, v28 * v47 > (v45 >> 1) - v47))
        {
          v37 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v37, "RawCameraException");
          __cxa_throw(v37, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        if (!(*(*a1 + 88))(a1))
        {
          v34 = v26[v30];
          if (a11)
          {
            goto LABEL_26;
          }

          if (qword_27DE175F0 == -1)
          {
            goto LABEL_31;
          }

          goto LABEL_33;
        }

        if (v47 != 3)
        {
          v34 = v26[v30];
          if (a11)
          {
LABEL_26:
            *(v27 + 2 * v29) = fmaxl(v34, COERCE_SHORT_FLOAT(0));
            goto LABEL_32;
          }

          if (qword_27DE175F0 == -1)
          {
            goto LABEL_31;
          }

LABEL_33:
          sub_2338FCBA0();
LABEL_31:
          *(v27 + 2 * v29) = *(xmmword_27DE175F8 + v34);
          goto LABEL_32;
        }

        v31 = v26[3 * v28];
        if (a11)
        {
          v32 = (v27 + 2 * v29);
          *v32 = fmaxl(v31, COERCE_SHORT_FLOAT(0));
          v33 = &v26[v30];
          v32[1] = fmaxl(v33[1], COERCE_SHORT_FLOAT(0));
          v32[2] = fmaxl(v33[2], COERCE_SHORT_FLOAT(0));
        }

        else
        {
          v35 = (v27 + 2 * v29);
          *v35 = v31;
          v36 = &v26[v30];
          v35[1] = v36[1];
          v35[2] = v36[2];
          if (qword_27DE175F0 != -1)
          {
            sub_2338FCBA0();
          }

          v35[3] = *(&xmmword_27DE175F8[0x1FFF] + 7);
        }

LABEL_32:
        sub_23381EE6C(&v49);
      }

      v22 = v46 + 1;
    }

    while (v46 + 1 < (v53 + SHIDWORD(v51)));
  }

  if (__p)
  {
    v55 = __p;
    operator delete(__p);
  }

  if (v56)
  {
    v57 = v56;
    operator delete(v56);
  }
}

void sub_23381F65C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23381F6F0(os_signpost_id_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_23378E038();
  v7 = v6;
  if (a1 + 1 >= 2 && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v7, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CDNGDeflateUnpacker", &unk_233945DBE, buf, 2u);
  }

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_23381FBCC;
  v36[3] = &unk_2789EE800;
  v36[4] = a1;
  v27 = MEMORY[0x2383AC810](v36);
  if ((*(*a1 + 56))(a1) == 3)
  {
    v8 = 4;
  }

  else
  {
    v8 = 1;
  }

  v26 = v8;
  v9 = *(a1 + 44);
  v10 = *(a1 + 48);
  v11 = *(a1 + 224);
  v12 = *(a1 + 228);
  *buf = (*(a1 + 240) - *(a1 + 232)) >> 2;
  sub_233723C18(&v32, buf);
  v13 = v32;
  if (v32 == 1 || *(a1 + 216) || (*(*a1 + 224))(a1) == 2)
  {
    sub_2337AF568(a1, a2, a3, a4);
  }

  else
  {
    v14 = *(a1 + 288);
    if (v14 != 1 && v14 != 3 && v14 != 34894 || v9 >> 5 >= 0x271 || v10 >> 5 >= 0x271 || v11 >> 5 >= 0x271 || v12 >> 5 >= 0x271 || v13 >> 5 >= 0x271)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v15 = ((v10 + v12 - 1) / v12) >> (*(a1 + 216) != 0);
    v16 = (v9 + v11 - 1) / v11;
    if (v15 * v16 != v13)
    {
      v25 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v25, "RawCameraException");
      __cxa_throw(v25, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    *buf = 0;
    sub_2337238F0(v35, v16 * v11, v15 * v12);
    v32 = 0;
    sub_2337238F0(&v33, v9, v10);
    if (v13)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 4 * v13;
      do
      {
        sub_2337238F0(&v30, v19, v18);
        sub_2337238F0(&v31, v11, v12);
        if (sub_23385F470(&v30, a3))
        {
          v21 = sub_23381EEDC(a1, *(*(a1 + 232) + v17), *(*(a1 + 256) + v17));
          if (v21)
          {
            sub_23381EFE0(a1, a2, *a3, *(a3 + 8), a4, v30, v31, v21, *(*(a1 + 256) + v17), v26, 0);
            free(v21);
          }
        }

        v22 = v19 + v11;
        if (v19 + v11 >= v9)
        {
          v19 = 0;
        }

        else
        {
          v19 += v11;
        }

        if (v22 >= v9)
        {
          v23 = v12;
        }

        else
        {
          v23 = 0;
        }

        v18 += v23;
        v17 += 4;
      }

      while (v20 != v17);
    }
  }

  v27[2](v27);
}

void sub_23381FB40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void (**a12)(void))
{
  __cxa_free_exception(v12);
  a12[2](a12);

  _Unwind_Resume(a1);
}

void sub_23381FBCC(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CDNGDeflateUnpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_23381FC54(os_signpost_id_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CDNGDeflateUnpacker", &unk_233945DBE, buf, 2u);
  }

  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = sub_233820380;
  v62[3] = &unk_2789EE800;
  v62[4] = a1;
  v4 = MEMORY[0x2383AC810](v62);
  (*(*a1 + 56))(a1);
  v45 = v5;
  v46 = *(a1 + 44);
  v50 = *(a1 + 224);
  *buf = (*(a1 + 240) - *(a1 + 232)) >> 2;
  sub_233723C18(&__p, buf);
  v6 = __p;
  v7 = *(a1 + 288);
  if (v7 != 1 && v7 != 3 && v7 != 34894 || v46 >> 5 >= 0x271 || HIDWORD(v46) >> 5 >= 0x271 || v50 >> 5 >= 0x271 || HIDWORD(v50) >> 5 >= 0x271 || __p >> 5 >= 0x271)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if ((((HIDWORD(v46) + HIDWORD(v50) - 1) / HIDWORD(v50)) >> (*(a1 + 216) != 0)) * ((v46 + v50 - 1) / v50) != __p)
  {
    v40 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v40, "RawCameraException");
    __cxa_throw(v40, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = *(a1 + 256);
  v8 = *(a1 + 264);
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      *buf = v10;
      v10 = *sub_233723874(buf, v9++);
    }

    while (v9 != v8);
  }

  v11 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  if ((v10 & 0x80000000) == 0 && v10 >= v11)
  {
    v41 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v41, "RawCameraException");
    __cxa_throw(v41, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v42 = a1;
  v44 = v4;
  group = dispatch_group_create();
  queue = dispatch_queue_create("Deflate DNG Unpacker I/O Queue", 0);
  v47 = dispatch_queue_create("Deflate DNG Unpacker Queue", MEMORY[0x277D85CD8]);
  __p = 0;
  v61 = 0uLL;
  if (v6)
  {
    sub_23375B2C8(buf, v6, 0, &__p);
    v12 = &v64[-(v61 - __p)];
    memcpy(v12, __p, v61 - __p);
    v13 = __p;
    v14 = *(&v61 + 1);
    __p = v12;
    v61 = v65;
    *&v65 = v13;
    *(&v65 + 1) = v14;
    *buf = v13;
    v64 = v13;
    if (v13)
    {
      operator delete(v13);
    }

    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = v61;
    do
    {
      if (v18 >= *(&v61 + 1))
      {
        v19 = 0xAAAAAAAAAAAAAAABLL * ((v18 - __p) >> 2);
        v20 = v19 + 1;
        if ((v19 + 1) > 0x1555555555555555)
        {
          sub_2337235BC();
        }

        if (0x5555555555555556 * ((*(&v61 + 1) - __p) >> 2) > v20)
        {
          v20 = 0x5555555555555556 * ((*(&v61 + 1) - __p) >> 2);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((*(&v61 + 1) - __p) >> 2) >= 0xAAAAAAAAAAAAAAALL)
        {
          v21 = 0x1555555555555555;
        }

        else
        {
          v21 = v20;
        }

        sub_23375B2C8(buf, v21, v19, &__p);
        v22 = v65;
        *v65 = v16;
        *(v22 + 4) = v15;
        *(v22 + 8) = v17;
        *&v65 = v22 + 12;
        v23 = &v64[-(v61 - __p)];
        memcpy(v23, __p, v61 - __p);
        v24 = __p;
        v25 = *(&v61 + 1);
        __p = v23;
        v26 = v65;
        v61 = v65;
        *&v65 = v24;
        *(&v65 + 1) = v25;
        *buf = v24;
        v64 = v24;
        if (v24)
        {
          v48 = v26;
          operator delete(v24);
          v26 = v48;
        }

        v18 = v26;
      }

      else
      {
        *v18 = v16;
        *(v18 + 1) = v15;
        *(v18 + 2) = v17;
        v18 += 12;
      }

      *&v61 = v18;
      v27 = v17 + v50;
      if (v17 + v50 >= v46)
      {
        v17 = 0;
      }

      else
      {
        v17 += v50;
      }

      if (v27 >= v46)
      {
        v28 = HIDWORD(v50);
      }

      else
      {
        v28 = 0;
      }

      v15 += v28;
      ++v16;
    }

    while (v6 != v16);
  }

  v29 = sub_2337ADCC4(v42);
  v30 = __p;
  v31 = v61;
  v32 = queue;
  if (__p != v61)
  {
    v33 = v29;
    v34 = MEMORY[0x277D85DD0];
    *&v35 = v50;
    *(&v35 + 1) = v46;
    v51 = v35;
    do
    {
      block[0] = v34;
      block[1] = 3221225472;
      block[2] = sub_233820408;
      block[3] = &unk_2789EEBC0;
      v55 = v42;
      v56 = v30;
      v36 = group;
      v53 = v36;
      v37 = v47;
      v58 = v51;
      v54 = v37;
      v57 = v33;
      v59 = v45;
      v38 = v36;
      v32 = queue;
      dispatch_group_async(v38, queue, block);

      v30 += 12;
    }

    while (v30 != v31);
  }

  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
  if (__p)
  {
    *&v61 = __p;
    operator delete(__p);
  }

  v44[2](v44);
}

void sub_2338202D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  __cxa_free_exception(v36);
  v37[2](v37);

  _Unwind_Resume(a1);
}

void sub_233820380(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CDNGDeflateUnpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_233820408(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 72);
  v4 = *(a1 + 76);
  sub_2337238F0(&v19, *(*(a1 + 56) + 8), *(*(a1 + 56) + 4));
  sub_2337238F0(&v20, v3, v4);
  v5 = sub_23381EEDC(v2, *(*(v2 + 232) + 4 * **(a1 + 56)), *(*(v2 + 256) + 4 * **(a1 + 56)));
  if (v5)
  {
    v6 = *(a1 + 56);
    v7 = *(v6 + 1);
    v8 = *v6;
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    v12 = *(a1 + 72);
    *&v11 = *(a1 + 80);
    *(&v11 + 1) = __PAIR64__(v7, HIDWORD(v7));
    block[2] = sub_233820524;
    block[3] = &unk_2789EE840;
    block[4] = v2;
    block[5] = v5;
    v15 = v11;
    v16 = v12;
    block[6] = *(a1 + 64);
    v13 = *(a1 + 88);
    v17 = v8;
    v18 = v13;
    dispatch_group_async(v10, v9, block);
  }

  else
  {
    puts("not readtile?");
  }
}

void sub_233820524(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = (*(*v3 + 72))(v3);
  v5 = *(a1 + 56);
  v6 = *(a1 + 60);
  v11 = 0;
  sub_2337238F0(&v12, v5, v6);
  v7 = *(a1 + 72);
  v8 = *(a1 + 76);
  sub_2337238F0(&v9, *(a1 + 64), *(a1 + 68));
  sub_2337238F0(&v10, v7, v8);
  sub_23381EFE0(v3, *(a1 + 48), v11, v12, v4, v9, v10, *(a1 + 40), *(*(v3 + 256) + 4 * *(a1 + 80)), *(a1 + 84), 1);
  if (v2)
  {
    free(v2);
  }
}

void sub_233820608(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2338205E0);
}

void sub_23382061C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_233820634(uint64_t a1, int a2, int a3, char **a4, char **a5)
{
  *(a1 + 224) = a2;
  *(a1 + 228) = a3;
  v7 = (a1 + 232);
  if (v7 != a4)
  {
    sub_233723454(v7, *a4, a4[1], (a4[1] - *a4) >> 2);
  }

  result = (a1 + 256);
  if ((a1 + 256) != a5)
  {
    v9 = *a5;
    v10 = a5[1];
    v11 = (v10 - *a5) >> 2;

    return sub_233723454(result, v9, v10, v11);
  }

  return result;
}

unint64_t sub_2338206AC(int *a1)
{
  v2 = (2 * a1[17]) + a1[70];
  result = 2 * (*(*a1 + 40))(a1) * v2;
  if ((result & 0x1E) != 0)
  {
    v4 = (2 * a1[17]) + a1[15];
    return (2 * v4 * (*(*a1 + 40))(a1) + 31) & 0xFFFFFFFFFFFFFFE0;
  }

  return result;
}

void *sub_233820760(void *a1)
{
  *a1 = &unk_284920260;
  v2 = a1[32];
  if (v2)
  {
    a1[33] = v2;
    operator delete(v2);
  }

  v3 = a1[29];
  if (v3)
  {
    a1[30] = v3;
    operator delete(v3);
  }

  *a1 = &unk_28491FFD8;
  v4 = a1[24];
  if (v4)
  {
    a1[25] = v4;
    operator delete(v4);
  }

  return sub_233723A54(a1);
}

void sub_2338207FC(void *a1)
{
  *a1 = &unk_284920260;
  v2 = a1[32];
  if (v2)
  {
    a1[33] = v2;
    operator delete(v2);
  }

  v3 = a1[29];
  if (v3)
  {
    a1[30] = v3;
    operator delete(v3);
  }

  *a1 = &unk_28491FFD8;
  v4 = a1[24];
  if (v4)
  {
    a1[25] = v4;
    operator delete(v4);
  }

  sub_233723A54(a1);

  JUMPOUT(0x2383ABF10);
}

int64x2_t sub_2338208B4()
{
  v0 = 0;
  result = xmmword_233903BC0;
  v2 = xmmword_233903BD0;
  v3 = xmmword_233903BE0;
  v4 = vdupq_n_s32(0x477FFF00u);
  v5 = xmmword_233903BB0;
  v6 = vdupq_n_s64(8uLL);
  do
  {
    xmmword_27DE175F8[v0] = vcvt_hight_f16_f32(vcvt_f16_f32(vdivq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(v5)), vcvtq_f64_u64(v3)), v4)), vdivq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(v2)), vcvtq_f64_u64(result)), v4));
    v2 = vaddq_s64(v2, v6);
    v3 = vaddq_s64(v3, v6);
    v5 = vaddq_s64(v5, v6);
    result = vaddq_s64(result, v6);
    ++v0;
  }

  while (v0 != 0x2000);
  return result;
}

uint64_t *sub_233820948(uint64_t *a1, _DWORD *a2)
{
  if (!*a2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  *a1 = __divti3();
  return a1;
}

void *sub_2338209C0(void *result, void *a2)
{
  v2 = *result >= *a2;
  *result -= *a2;
  if (!v2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

id sub_233820A24(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CD3720];
  v34 = *MEMORY[0x277CD3700];
  v35 = v5;
  v42[0] = MEMORY[0x277CBEC38];
  v42[1] = @"com.epson.raw-image";
  v6 = *MEMORY[0x277CD3718];
  v36 = *MEMORY[0x277CD36E0];
  v42[2] = @".erf.";
  v42[3] = &unk_284957C40;
  v42[4] = &unk_284957C58;
  v7 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], a2, sub_233720E7C, a4, a5, v34, v35, v36, v6, *MEMORY[0x277CD3708], *MEMORY[0x277CD3710]);
  v42[5] = v7;
  v37 = *MEMORY[0x277CD36C8];
  v11 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v8, sub_233820D1C, v9, v10);
  v42[6] = v11;
  v38 = *MEMORY[0x277CD36E8];
  v15 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v12, sub_233820D28, v13, v14);
  v42[7] = v15;
  v39 = *MEMORY[0x277CD36D0];
  v19 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v16, sub_23378BC54, v17, v18);
  v42[8] = v19;
  v40 = *MEMORY[0x277CD36F0];
  v23 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v20, sub_233820D34, v21, v22);
  v42[9] = v23;
  v41 = *MEMORY[0x277CD36F8];
  v27 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v24, sub_233820D40, v25, v26);
  v42[10] = v27;
  v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, v42, &v34, 11);
  v43[0] = v29;
  v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v30, v43, 1, v31);

  return v32;
}

void sub_233820D4C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  a4;
  a5;
  sub_233821B80();
}

uint64_t sub_233820DE8(uint64_t a1)
{
  __p = 0;
  v15 = 0;
  v16 = 0;
  sub_2337338AC(a1, &v12);
  v2 = v12;
  v10 = 8;
  sub_233726998(&v11, &v10);
  v3 = sub_2337257E8(v2, &v11, &__p);
  if (v13)
  {
    sub_2337239E8(v13);
  }

  if (!v3)
  {
    goto LABEL_13;
  }

  if ((SHIBYTE(v16) & 0x80000000) == 0)
  {
    if (SHIBYTE(v16) == 5)
    {
      p_p = &__p;
      goto LABEL_9;
    }

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  if (v15 != 5)
  {
    goto LABEL_13;
  }

  p_p = __p;
LABEL_9:
  v5 = *p_p;
  v6 = p_p[4];
  if (v5 != 1330860101 || v6 != 78)
  {
    goto LABEL_13;
  }

  sub_2337338AC(a1, &v12);
  sub_2337255C0(v12);
  if (v13)
  {
    sub_2337239E8(v13);
  }

  sub_2337338AC(a1, &v12);
  v11 = (*(*v12 + 48))(v12);
  (*(*a1 + 160))(a1, &v11);
  if (v13)
  {
    sub_2337239E8(v13);
  }

  v8 = 1;
LABEL_14:
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_233820F54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_233820F94(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  nullsub_6();
  v6 = *a3;
  if (v6 <= 0x27F)
  {
    if (v6 == 523)
    {
      sub_2338FA424(a3, a1);
    }

    else if (v6 == 524)
    {
      sub_2338FCBC8(a3, a1);
    }

    else if (v6 == 525 && a3[1] == 2 && *(a3 + 1) <= 0xDu)
    {
      memset(&__str, 0, sizeof(__str));
      if (sub_23375168C(a1, a3, &__str, 1))
      {
        std::string::operator=((a1 + 1184), &__str);
      }

      sub_2338F8878(&__str);
    }
  }

  else if (*a3 > 0x400u)
  {
    if (v6 == 1025)
    {
      if (((*(*a1 + 56))(a1) & 1) == 0 && a3[1] == 4 && *(a3 + 1) == 4)
      {
        sub_2337338AC(a1, &__p);
        sub_23374AEDC(a3, &__p, &__str.__r_.__value_.__l.__data_);
        __src = a2;
        v10 = sub_233757B14(a1 + 264, a2);
        v11 = v10[7];
        if (v11)
        {
          v10[8] = v11;
          operator delete(v11);
          v10[7] = 0;
          v10[8] = 0;
          v10[9] = 0;
        }

        *(v10 + 7) = __str;
        memset(&__str, 0, sizeof(__str));
        if (__p.__r_.__value_.__l.__size_)
        {
          sub_2337239E8(__p.__r_.__value_.__l.__size_);
        }
      }
    }

    else if (v6 == 3712 && ((*(*a1 + 56))(a1) & 1) == 0 && a3[1] == 7 && *(a3 + 1) == 256)
    {
      sub_2337338AC(a1, &__p);
      LODWORD(p_p) = *(a3 + 2) + 48;
      sub_233723AE0(&__src, &p_p);
      sub_233725F08(&__str, &__p, &__src, 0);
      if (__p.__r_.__value_.__l.__size_)
      {
        sub_2337239E8(__p.__r_.__value_.__l.__size_);
      }

      if (*(a2 + 23) < 0)
      {
        sub_233731FB8(&__p, *a2, *(a2 + 8));
      }

      else
      {
        __p = *a2;
      }

      std::string::append(&__p, ":WhitePoint", 0xBuLL);
      sub_2337338AC(a1, &__src);
      v12 = sub_2337255C0(__src);
      if (v20[0])
      {
        sub_2337239E8(v20[0]);
      }

      sub_2337338AC(a1, &__src);
      v13 = sub_2337255C0(__src);
      if (v20[0])
      {
        sub_2337239E8(v20[0]);
      }

      __src = (v12 | 0x10000000000);
      LODWORD(v20[0]) = v13;
      p_p = &__p;
      v14 = sub_2337577E4(a1 + 120, &__p.__r_.__value_.__l.__data_);
      sub_23375538C((v14 + 56), &__src, v20 + 4, 3uLL);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      sub_233725FD4(&__str);
    }
  }

  else if (v6 == 640)
  {
    if (a3[1] == 1)
    {
      sub_2337338AC(a1, &__str);
      v9 = sub_233725414(__str.__r_.__value_.__l.__data_);
      LODWORD(__src) = *(a3 + 2);
      LODWORD(__p.__r_.__value_.__l.__data_) = v9;
      *(a1 + 1232) = *sub_233723874(&__p, &__src);
      if (__str.__r_.__value_.__l.__size_)
      {
        sub_2337239E8(__str.__r_.__value_.__l.__size_);
      }

      *(a1 + 1240) = *(a3 + 1);
    }
  }

  else if (v6 == 1024 && a3[1] == 7 && *(a3 + 1) == 8)
  {
    sub_2337338AC(a1, &__p);
    LODWORD(p_p) = sub_233749410(a3);
    sub_233726A8C(&__src, &p_p);
    sub_233725F08(&__str, &__p, &__src, 0);
    if (__p.__r_.__value_.__l.__size_)
    {
      sub_2337239E8(__p.__r_.__value_.__l.__size_);
    }

    sub_2337338AC(a1, &__src);
    v7 = __src;
    v15 = 4;
    sub_233726998(&p_p, &v15);
    sub_233725B60(v7, &p_p, &__p);
    if (v20[0])
    {
      sub_2337239E8(v20[0]);
    }

    v8 = __p.__r_.__value_.__r.__words[0];
    *(a1 + 1216) = vmovl_u16(*__p.__r_.__value_.__l.__data_);
    __p.__r_.__value_.__l.__size_ = v8;
    operator delete(v8);
    sub_233725FD4(&__str);
  }
}

void sub_2338214F0(uint64_t a1@<X0>, void **a2@<X8>)
{
  sub_233753B14(a1, a2);
  sub_2337268D8(&v5, (a1 + 1232));
  v4 = *(a1 + 1240);
  sub_23373401C(a1, &v5, &v4, 1, &v6);
  if (v6)
  {
    sub_233753C74(a2, &v6);
  }

  if (*(&v6 + 1))
  {
    sub_2337239E8(*(&v6 + 1));
  }
}

void sub_23382156C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  sub_233723948(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_2338215A0(uint64_t a1)
{
  sub_23372A488(__p, "IFD0:SUBIFD0");
  v2 = sub_233753D88(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_2338215FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233821618(uint64_t a1)
{
  sub_23372A488(__p, "IFD0:SUBIFD0");
  v2 = sub_233753DFC(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_233821674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_233821690(uint64_t a1)
{
  sub_23372A488(__p, "IFD0:SUBIFD0");
  v2 = sub_233753F24(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_2338216EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_233821718(_DWORD *a1)
{
  (*(*a1 + 448))(a1);
  v4 = a1[302];
  if (v2 < v4 || (v5 = a1[303], v3 < v5))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return ((v2 - v4) / 2) | (((v3 - v5) / 2) << 32);
}

void sub_2338217D4(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_23372A488(&__p, "erf");
  sub_233735478(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_23372A488(&__p, "epson");
  sub_233735478(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_2337355A8(a1, &__p);
  sub_233735478(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_233821888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_233735AD4(&__p);
  _Unwind_Resume(a1);
}

id sub_2338218C8()
{
  v17[14] = *MEMORY[0x277D85DE8];
  v0 = sub_23374CF00();
  v5 = objc_msgSend_mutableCopy(v0, v1, v2, v3, v4);

  v16[0] = &unk_284957C70;
  v16[1] = &unk_284957C88;
  v17[0] = &unk_28495D4B0;
  v17[1] = &unk_28495D4D8;
  v16[2] = &unk_284957CA0;
  v16[3] = &unk_284957CB8;
  v17[2] = &unk_28495D500;
  v17[3] = &unk_28495D528;
  v16[4] = &unk_284957CD0;
  v16[5] = &unk_284957CE8;
  v17[4] = &unk_28495D550;
  v17[5] = &unk_28495D578;
  v16[6] = &unk_284957D00;
  v16[7] = &unk_284957D18;
  v17[6] = &unk_28495D5A0;
  v17[7] = &unk_28495D5C8;
  v16[8] = &unk_284957D30;
  v16[9] = &unk_284957D48;
  v17[8] = &unk_28495D5F0;
  v17[9] = &unk_28495D618;
  v16[10] = &unk_284957D60;
  v16[11] = &unk_284957D78;
  v17[10] = &unk_28495D640;
  v17[11] = &unk_28495D668;
  v16[12] = &unk_284957D90;
  v16[13] = &unk_284957DA8;
  v17[12] = &unk_28495D690;
  v17[13] = &unk_28495D6B8;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v6, v17, v16, 14);
  objc_msgSend_addEntriesFromDictionary_(v5, v8, v7, v9, v10);

  v14 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEAC0], v11, v5, v12, v13);

  return v14;
}

void sub_233821AAC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_233821AE8(uint64_t a1)
{
  sub_233821B20(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_233821B20(uint64_t a1)
{
  *a1 = &unk_2849203C0;
  if (*(a1 + 1207) < 0)
  {
    operator delete(*(a1 + 1184));
  }

  return sub_2337557B4(a1);
}

uint64_t sub_233821C24(uint64_t a1, void *a2, char *a3, void **a4, void **a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2849206F8;
  sub_23374B844(a1 + 24, a2, *a3, *a4, *a5);
  *(a1 + 24) = &unk_2849203C0;
  *(a1 + 1208) = 0u;
  *(a1 + 1224) = 0u;
  *(a1 + 1240) = 0u;
  *(a1 + 1252) = 0u;
  return a1;
}

void sub_233821CDC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849206F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_233821FC4(uint64_t a1, int a2, uint64_t *a3)
{
  *sub_2338F4DD0(a1, a2) = &unk_284920748;
  *(a1 + 12) = sub_233725614(*a3);
  *(a1 + 16) = sub_233725614(*a3);
  return a1;
}

id sub_233822028(uint64_t a1)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = [RAWOpcodeFixBadPixelsConstant alloc];
  v18[0] = @"Constant";
  v6 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v3, *(a1 + 12), v4, v5);
  v18[1] = @"BayerPhase";
  v19[0] = v6;
  v10 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v7, *(a1 + 16), v8, v9);
  v19[1] = v10;
  v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v19, v18, 2);
  v16 = objc_msgSend_initWithArguments_(v2, v13, v12, v14, v15);

  return v16;
}

uint64_t sub_233822178()
{
  v0 = MEMORY[0x28223BE20]();
  v898 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 136);
  if (*(v1 + 136))
  {
    if (*(v1 + 132) != 0.66667 || *(v1 + 188) != 1 || *(v1 + 120) || *(v1 + 124) != 2 || (*(v1 + 144) | 2) != 2 || *(v1 + 248))
    {
      return 0;
    }

    v2 = *(v1 + 252);
    if (!*(v1 + 252))
    {
      return v2;
    }

    v2 = *(v1 + 264);
    if (v2)
    {
      return 0;
    }

    v4 = *(v0 + 64);
    if (v4 >= 2)
    {
      v5 = *(v0 + 72);
      if (v5 >= 2)
      {
        v6 = *v0;
        if (v4 + *(v0 + 32) >= *v0 - 1)
        {
          return 0;
        }

        if (*(v1 + 496) != 0.0)
        {
          return 0;
        }

        v630 = *(v0 + 32);
        if (*(v1 + 304) != 1)
        {
          return 0;
        }

        v7 = *(v0 + 8);
        v631 = *(v0 + 16);
        v624 = *(v0 + 24);
        v8 = *(v0 + 40);
        v9 = *(v0 + 48);
        v10 = *(v0 + 56);
        v11 = *(v0 + 80);
        v12 = *(v1 + 4);
        v13 = v1;
        bzero(&v634, 0x2588uLL);
        v616 = v7;
        v617 = v6;
        v640.i64[0] = v6;
        v640.i64[1] = v7;
        v641 = v631;
        v642 = v624;
        v643 = v630;
        v644 = v8;
        v621 = v8;
        v645 = v9;
        v646 = v10;
        v647 = v4;
        v648 = v5;
        v632 = v13;
        v649 = v13;
        v650 = v11;
        v651 = v12;
        v652 = v12;
        v636 = 0;
        v14 = qword_27DE3DE00;
        if (!qword_27DE3DE00)
        {
          pthread_once(&stru_280C04D58, sub_2338278C8);
          v14 = qword_27DE3DE00;
          if (!qword_27DE3DE00)
          {
            return 0;
          }
        }

        v879 = v14;
        if (*(v14 + 64))
        {
          if (*(v14 + 72))
          {
            _ZF = *(v14 + 80) == 0;
          }

          else
          {
            _ZF = 1;
          }

          if (!_ZF)
          {
            goto LABEL_50;
          }
        }

        else
        {
          pthread_mutex_lock(v14);
          v31 = qword_27DE3DE00;
          if (!*(qword_27DE3DE00 + 64))
          {
            *(qword_27DE3DE00 + 112) = 0x4000000040000000;
            v32 = &v31[1].__opaque[52];
            v33 = &v31[1].__opaque[44];
            v34 = 3.0;
            for (i = 1; i < 0x1FFFE; i += 2)
            {
              v36 = *v33++;
              *(v32 - 1) = v36 * 0.5;
              *v32 = 2.0 / v34;
              v34 = v34 + 2.0;
              v32 += 2;
            }

            v31[1].__sig = &v31[1].__opaque[40];
          }

          pthread_mutex_unlock(v31);
          v14 = qword_27DE3DE00;
          if (*(qword_27DE3DE00 + 72))
          {
            v37 = *(qword_27DE3DE00 + 80) == 0;
          }

          else
          {
            v37 = 1;
          }

          if (!v37)
          {
LABEL_50:
            if (*(v14 + 88))
            {
              goto LABEL_51;
            }

            goto LABEL_36;
          }
        }

        pthread_mutex_lock(v14);
        v16 = qword_27DE3DE00;
        if (*(qword_27DE3DE00 + 72))
        {
          v17 = *(qword_27DE3DE00 + 80) == 0;
        }

        else
        {
          v17 = 1;
        }

        if (v17)
        {
          v18 = qword_27DE3DE00 + 788400;
          *(qword_27DE3DE00 + 524400) = 0;
          v19 = (v16 + 524404);
          *(v16 + 788400) = 0;
          v20 = (v16 + 788401);
          v21 = 65999;
          v22 = 2;
          v23 = 16;
          v24 = 1;
          do
          {
            v25 = 0xFFFFFFFF / v24;
            *v20++ = v23;
            v26 = v24 == v22;
            if (v24 == v22)
            {
              ++v25;
            }

            v22 <<= v26;
            v23 -= v26;
            *v19++ = v25;
            ++v24;
            --v21;
          }

          while (v21);
          *(v16 + 72) = v16 + 524400;
          *(v16 + 80) = v18;
        }

        pthread_mutex_unlock(v16);
        v14 = qword_27DE3DE00;
        if (*(qword_27DE3DE00 + 88))
        {
LABEL_51:
          if (*(v13 + 160) != 1)
          {
            goto LABEL_60;
          }

          goto LABEL_52;
        }

LABEL_36:
        pthread_mutex_lock(v14);
        v27 = qword_27DE3DE00;
        v28 = *(qword_27DE3DE00 + 88);
        if (!v28)
        {
          v29 = qword_27DE3DE00 + 854400;
          v30 = 0.0;
          do
          {
            *(v29 + v28) = (sqrt(v30) * 65535.0 + 0.5);
            v30 = v30 + 0.0000152590219;
            v28 += 2;
          }

          while (v28 != 0x20000);
          *(v27 + 88) = v29;
        }

        pthread_mutex_unlock(v27);
        if (*(v13 + 160) != 1)
        {
LABEL_60:
          v45 = v649;
          v46 = v649->i32[1];
          if (v46 != 8 && v46 != 6)
          {
            v67 = 0;
            goto LABEL_139;
          }

          v48 = llroundf(v649[48].f32[1]);
          v49 = llroundf(v649[49].f32[0]);
          v50 = vdupq_n_s64(0x40C0000000000000uLL);
          v51 = llround(v649[42].f32[0] * 8192.0);
          v52 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_f32(v649[41]), v50))));
          v53 = llround(v649[79].f32[0] * 16.0 * 8192.0);
          __asm { FMOV            V3.2D, #16.0 }

          v57 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmulq_f64(vmulq_f64(vcvtq_f64_f32(v649[78]), _Q3), v50))));
          v58 = vceq_s32(vdup_lane_s32(v52, 0), v57);
          if (v58.i8[0])
          {
            v59 = 3;
          }

          else
          {
            v59 = 1;
          }

          if (v52.i32[1] == v52.i32[0])
          {
            v59 |= 4u;
          }

          if (v58.i8[4])
          {
            v60 = v59 | 8;
          }

          else
          {
            v60 = v59;
          }

          v61 = v60 | 0x10;
          if (v52.i32[0] != v51)
          {
            v61 = v60;
          }

          if (v52.i32[0] == v53)
          {
            v62 = v61 | 0x20;
          }

          else
          {
            v62 = v61;
          }

          if (v49 != v48)
          {
            v62 = v60;
          }

          if ((v62 & 2) != 0)
          {
            if ((v62 & 4) != 0)
            {
              v65 = 1;
              goto LABEL_114;
            }

            if (vceq_s32(v57, v52).i8[4])
            {
              v66 = 12;
            }

            else
            {
              v66 = 4;
            }

            v62 |= v66;
            v65 = 2;
            if (v49 != v48)
            {
LABEL_114:
              v70 = v62 | 0x18;
              if (v57.i32[1] != v51)
              {
                v70 = v62;
              }

              if (v57.i32[1] == v53)
              {
                v71 = v70 | 0x20;
              }

              else
              {
                v71 = v70;
              }

              if (v49 == v48)
              {
                v72 = v71;
              }

              else
              {
                v72 = v62;
              }

              if ((v62 & 8) != 0)
              {
                v73 = v62;
              }

              else
              {
                v73 = v72;
              }

              if ((v62 & 8) != 0)
              {
                v74 = v65;
              }

              else
              {
                v74 = v65 + 1;
              }

              if ((v73 & 0x10) != 0 || (++v74, v53 != v51))
              {
                if ((v73 & 0x20) != 0)
                {
                  v888 = xmmword_233908FF0;
                  if (v74 == 1)
                  {
                    v67 = 1;
LABEL_139:
                    if (v46 == 6 || v46 == 8)
                    {
                      goto LABEL_144;
                    }

                    v896 = 0u;
                    v897 = 0u;
                    v894 = 0u;
                    v895 = 0u;
                    v886 = 0u;
                    v887 = 0u;
                    v80 = llroundf(v649[48].f32[1]);
                    v81 = llroundf(v649[49].f32[0]);
                    v82 = llroundf(v649[49].f32[1]);
                    v884 = 0u;
                    v885 = 0u;
                    v83 = v649[41].i32[0];
                    v84 = v649[41].i32[1];
                    v85 = v649[42].i32[0];
                    if (v652 <= 5)
                    {
                      if (v652 == 4)
                      {
                        DWORD1(v884) = v649[42].i32[0];
                        HIDWORD(v884) = v83;
                        LODWORD(v885) = v84;
                        DWORD2(v885) = v84;
                        DWORD1(v886) = v83;
                        HIDWORD(v886) = v85;
                        v89 = v82;
                        v90 = v80;
                        v91 = v81;
                        LODWORD(v887) = v84;
                        DWORD2(v887) = v84;
                        LODWORD(v894) = 0;
                        v82 = 0;
                        v81 = 0;
                        v80 = 0;
                        goto LABEL_299;
                      }

                      if (v652 != 5)
                      {
                        goto LABEL_300;
                      }
                    }

                    else
                    {
                      if (v652 == 6)
                      {
LABEL_182:
                        v86 = v649[78].i32[0];
                        v87 = v649[78].i32[1];
                        v88 = v649[79].i32[0];
                        LODWORD(v884) = v649[41].i32[0];
                        *(&v884 + 4) = __PAIR64__(v85, v86);
                        HIDWORD(v884) = v88;
                        *&v885 = __PAIR64__(v84, v87);
                        *(&v885 + 1) = __PAIR64__(v84, v87);
                        *&v886 = __PAIR64__(v88, v85);
                        *(&v886 + 1) = __PAIR64__(v86, v83);
                        *&v887 = __PAIR64__(v84, v87);
                        *(&v887 + 1) = __PAIR64__(v84, v87);
                        v89 = v80;
                        v90 = v82;
                        v91 = v81;
                        LODWORD(v894) = v80;
LABEL_299:
                        *(&v894 + 4) = __PAIR64__(v82, v89);
                        HIDWORD(v894) = v90;
                        *&v895 = __PAIR64__(v81, v91);
                        *(&v895 + 1) = __PAIR64__(v81, v91);
                        *&v896 = __PAIR64__(v90, v82);
                        *(&v896 + 1) = __PAIR64__(v89, v80);
                        *&v897 = __PAIR64__(v81, v91);
                        *(&v897 + 1) = __PAIR64__(v81, v91);
                        goto LABEL_300;
                      }

                      if (v652 != 7)
                      {
                        if (v652 == 8)
                        {
                          goto LABEL_182;
                        }

LABEL_300:
                        v174 = 0;
                        v175 = 0;
                        v176 = 0;
                        do
                        {
                          if (((v176 >> v174) & 1) == 0)
                          {
                            for (j = v174; j != 16; ++j)
                            {
                              if (*(&v894 + j) == *(&v894 + v174) && *(&v884 + j) == *(&v884 + v174))
                              {
                                v176 |= 1 << j;
                              }
                            }

                            ++v175;
                          }

                          ++v174;
                        }

                        while (v174 != 16);
                        if (v175 >= 1)
                        {
                          v178 = v67 + 1;
                          *(&v888 + v67) = xmmword_233908FF0;
                          if (v175 == 1)
                          {
LABEL_311:
                            v67 = v178;
                            goto LABEL_144;
                          }

                          v179 = v67 + 2;
                          *(&v888 + v178) = xmmword_233909000;
                          if (v175 < 3)
                          {
                            goto LABEL_327;
                          }

                          v178 = v67 + 3;
                          *(&v888 + v179) = xmmword_233909010;
                          if (v175 == 3)
                          {
                            goto LABEL_311;
                          }

                          v179 = v67 + 4;
                          *(&v888 + v178) = xmmword_233909020;
                          if (v175 < 5)
                          {
                            goto LABEL_327;
                          }

                          v178 = v67 + 5;
                          *(&v888 + v179) = xmmword_233909030;
                          if (v175 == 5)
                          {
                            goto LABEL_311;
                          }

                          v179 = v67 + 6;
                          *(&v888 + v178) = xmmword_233909040;
                          if (v175 < 7)
                          {
                            goto LABEL_327;
                          }

                          v178 = v67 + 7;
                          *(&v888 + v179) = xmmword_233909050;
                          if (v175 == 7)
                          {
                            goto LABEL_311;
                          }

                          v179 = v67 | 8;
                          *(&v888 + v178) = xmmword_233909060;
                          if (v175 < 9)
                          {
                            goto LABEL_327;
                          }

                          v178 = v67 + 9;
                          *(&v888 + v179) = xmmword_233909070;
                          if (v175 == 9)
                          {
                            goto LABEL_311;
                          }

                          v179 = v67 + 10;
                          *(&v888 + v178) = xmmword_233909080;
                          if (v175 < 0xB)
                          {
                            goto LABEL_327;
                          }

                          v178 = v67 + 11;
                          *(&v888 + v179) = xmmword_233909090;
                          if (v175 == 11)
                          {
                            goto LABEL_311;
                          }

                          v179 = v67 + 12;
                          *(&v888 + v178) = xmmword_2339090A0;
                          if (v175 < 0xD)
                          {
                            goto LABEL_327;
                          }

                          v178 = v67 + 13;
                          *(&v888 + v179) = xmmword_2339090B0;
                          if (v175 == 13)
                          {
                            goto LABEL_311;
                          }

                          v179 = v67 + 14;
                          *(&v888 + v178) = xmmword_2339090C0;
                          if (v175 < 0xF)
                          {
LABEL_327:
                            v67 = v179;
                          }

                          else
                          {
                            v178 = v67 + 15;
                            *(&v888 + v179) = xmmword_2339090D0;
                            if (v175 == 15)
                            {
                              goto LABEL_311;
                            }

                            v67 |= 0x10u;
                            *(&v888 + v178) = xmmword_2339090E0;
                          }
                        }

LABEL_144:
                        if (v45[6].i8[4])
                        {
                          v76 = 3640;
                        }

                        else
                        {
                          v76 = 0;
                        }

                        v77 = v76 | 7;
                        if (v45[17].i32[1] && (v45[18].i32[0] | 2) == 2)
                        {
                          v77 = v76 | 0x3F;
                        }

                        if (v45[8].i8[0] == 1)
                        {
                          *(&v888 + v67++) = xmmword_2339090F0;
                          if (v45[34].i8[0] != 1)
                          {
                            goto LABEL_152;
                          }
                        }

                        else if (v45[34].i8[0] != 1)
                        {
LABEL_152:
                          if ((v77 & 1) == 0)
                          {
                            goto LABEL_153;
                          }

                          goto LABEL_167;
                        }

                        v77 |= 0x1000u;
                        *(&v888 + v67++) = xmmword_233909100;
                        if ((v77 & 1) == 0)
                        {
LABEL_153:
                          if ((v77 & 2) == 0)
                          {
                            goto LABEL_154;
                          }

                          goto LABEL_168;
                        }

LABEL_167:
                        *(&v888 + v67++) = xmmword_233909110;
                        if ((v77 & 2) == 0)
                        {
LABEL_154:
                          if ((v77 & 4) == 0)
                          {
                            goto LABEL_155;
                          }

                          goto LABEL_169;
                        }

LABEL_168:
                        *(&v888 + v67++) = xmmword_233909120;
                        if ((v77 & 4) == 0)
                        {
LABEL_155:
                          if ((v77 & 8) == 0)
                          {
                            goto LABEL_156;
                          }

                          goto LABEL_170;
                        }

LABEL_169:
                        *(&v888 + v67++) = xmmword_233909130;
                        if ((v77 & 8) == 0)
                        {
LABEL_156:
                          if ((v77 & 0x10) == 0)
                          {
                            goto LABEL_157;
                          }

                          goto LABEL_171;
                        }

LABEL_170:
                        *(&v888 + v67++) = xmmword_233909140;
                        if ((v77 & 0x10) == 0)
                        {
LABEL_157:
                          if ((v77 & 0x20) == 0)
                          {
                            goto LABEL_158;
                          }

                          goto LABEL_172;
                        }

LABEL_171:
                        *(&v888 + v67++) = xmmword_233909150;
                        if ((v77 & 0x20) == 0)
                        {
LABEL_158:
                          if ((v77 & 0x200) == 0)
                          {
                            goto LABEL_159;
                          }

                          goto LABEL_173;
                        }

LABEL_172:
                        *(&v888 + v67++) = xmmword_233909160;
                        if ((v77 & 0x200) == 0)
                        {
LABEL_159:
                          if ((v77 & 0x400) == 0)
                          {
                            goto LABEL_160;
                          }

                          goto LABEL_174;
                        }

LABEL_173:
                        *(&v888 + v67++) = xmmword_233909170;
                        if ((v77 & 0x400) == 0)
                        {
LABEL_160:
                          if ((v77 & 0x800) == 0)
                          {
                            goto LABEL_161;
                          }

                          goto LABEL_175;
                        }

LABEL_174:
                        *(&v888 + v67++) = xmmword_233909180;
                        if ((v77 & 0x800) == 0)
                        {
LABEL_161:
                          if ((v77 & 0x1000) == 0)
                          {
                            goto LABEL_162;
                          }

                          goto LABEL_176;
                        }

LABEL_175:
                        *(&v888 + v67++) = xmmword_233909190;
                        if ((v77 & 0x1000) == 0)
                        {
LABEL_162:
                          if (v67 >= 1)
                          {
LABEL_163:
                            if (v67 >= 5)
                            {
                              v92 = v67 & 3;
                              if ((v67 & 3) == 0)
                              {
                                v92 = 4;
                              }

                              v78 = v67 - v92;
                              v93 = xmmword_2339091B0;
                              v94 = &v890 + 1;
                              v95 = 0uLL;
                              v96 = v78;
                              do
                              {
                                v97 = v94 - 4;
                                v98 = vld2q_f64(v97);
                                v99 = vld2q_f64(v94);
                                v93 = vaddq_s64(v98, v93);
                                v95 = vaddq_s64(v99, v95);
                                v94 += 8;
                                v96 -= 4;
                              }

                              while (v96);
                              v79 = vaddvq_s64(vaddq_s64(v95, v93));
                            }

                            else
                            {
                              v78 = 0;
                              v79 = 320;
                            }

                            v100 = v67 - v78;
                            v101 = ((&v888 + v78) | 8);
                            do
                            {
                              v102 = *v101;
                              v101 += 2;
                              v79 += v102;
                              --v100;
                            }

                            while (v100);
LABEL_190:
                            v103 = sub_2338F6024(1uLL, v79);
                            v881 = v103;
                            if (v103)
                            {
                              v104 = v103;
                              if (pthread_mutex_init(v103, 0))
                              {
LABEL_192:
                                if (v880)
                                {
                                  atomic_fetch_add(v880 + 4, 0xFFFFFFFF);
                                }

                                pthread_mutex_destroy(v104);
                                j__free_3(v104);
                                return 0;
                              }

                              if (v67 >= 1)
                              {
                                v105 = v104 + 5;
                                v106 = v67;
                                v107 = &v888.i64[1];
                                do
                                {
                                  v108 = *v107;
                                  *(&v104->__sig + *(v107 - 1)) = v105;
                                  v105 = (v105 + v108);
                                  v107 += 2;
                                  --v106;
                                }

                                while (v106);
                              }

                              v109 = *&v104[4].__opaque[48];
                              if (v109 && !*&v104[3].__opaque[40])
                              {
                                *&v104[3].__opaque[40] = v109 + 0x20000;
                              }

                              v110 = v45[57].f32[1];
                              v111 = v45[52].u8[4];
                              v112 = v45[53].f32[0];
                              v113 = v45[53].f32[1];
                              v114 = v45[54].f32[0];
                              v115 = v45[54].f32[1];
                              v116 = v45[55].f32[0];
                              v117 = v45[55].f32[1];
                              v118 = v45[56].f32[0];
                              v625 = v45[56].f32[1];
                              v119 = v45[57].i8[0];
                              LOWORD(v894) = *(v45[57].i16 + 1);
                              BYTE2(v894) = v45[57].i8[3];
                              pthread_mutex_lock(qword_27DE3DE00);
                              v120 = *(qword_27DE3DE00 + 104);
                              if (v120)
                              {
                                v121 = 0;
                                v122 = 0;
                                if (v111)
                                {
                                  while (v110 != *(v120 + 5) || v111 != *(v120 + 24) || ((v119 & 1) == 0 || (v120[15] & 1) == 0) && (v112 != *(v120 + 7) || v113 != *(v120 + 8) || v114 != *(v120 + 9) || v115 != *(v120 + 10) || v116 != *(v120 + 11) || v117 != *(v120 + 12) || v118 != *(v120 + 13) || v625 != *(v120 + 14) || (v119 & 1) != *(v120 + 60)))
                                  {
                                    if (!atomic_load(v120 + 4))
                                    {
                                      v122 = v120;
                                    }

                                    v120 = *(v120 + 1);
                                    ++v121;
                                    if (!v120)
                                    {
                                      goto LABEL_233;
                                    }
                                  }

LABEL_242:
                                  v880 = v120;
                                  atomic_fetch_add(v120 + 4, 1u);
                                  v104[1].__sig = (v120 + 16);
                                  v128 = qword_27DE3DE00;
                                  v129 = *(qword_27DE3DE00 + 104);
                                  if (v120 != v129)
                                  {
                                    v131 = *v120;
                                    v130 = *(v120 + 1);
                                    *(*v120 + 8) = v130;
                                    if (v130)
                                    {
                                      *v130 = v131;
                                    }

                                    *v120 = 0;
                                    *(v120 + 1) = v129;
                                    *v129 = v120;
                                    v128 = qword_27DE3DE00;
                                    *(qword_27DE3DE00 + 104) = v120;
                                  }

                                  pthread_mutex_unlock(v128);
                                  v609 = v881;
                                  v598 = *(v13 + 328);
                                  v600 = *(v13 + 336);
                                  v626.i64[0] = *(v13 + 388);
                                  v602 = *(v13 + 396);
                                  if (*(v13 + 416))
                                  {
                                    v580 = 0;
                                    v581 = 0;
                                  }

                                  else
                                  {
                                    v581 = vcvt_s32_f32(vrnda_f32(*(v13 + 376)));
                                    v580 = llroundf(*(v13 + 384));
                                  }

                                  LODWORD(v132) = *(v13 + 328);
                                  if (v598.f32[1] > v598.f32[0])
                                  {
                                    LODWORD(v132) = HIDWORD(*(v13 + 328));
                                  }

                                  if (v600 > v132)
                                  {
                                    v132 = *(v13 + 336);
                                  }

                                  LODWORD(v133) = *(v13 + 388);
                                  if (*&v626.i32[1] > *v626.i32)
                                  {
                                    LODWORD(v133) = HIDWORD(*(v13 + 388));
                                  }

                                  if (v602 > v133)
                                  {
                                    v133 = *(v13 + 396);
                                  }

                                  v613 = v133;
                                  if (*&v881[4].__opaque[40])
                                  {
                                    v134 = *&v881[3].__opaque[40] == 0;
                                  }

                                  else
                                  {
                                    v134 = 0;
                                  }

                                  v586 = *&v881[4].__opaque[40];
                                  v575 = *&v881[3].__opaque[40];
                                  if (v134)
                                  {
                                    v135 = *&v881[4].__opaque[40];
                                  }

                                  else
                                  {
                                    v135 = *&v881[3].__opaque[40];
                                  }

                                  v136 = *(v13 + 544);
                                  v137 = *(v13 + 540);
                                  if (v137 && v136 > v137)
                                  {
                                    v136 = v137;
                                  }

                                  v138 = *(v13 + 512);
                                  if (*(v13 + 508))
                                  {
                                    v139 = v136 * *(v13 + 516) + v136 * v138 * v136 + *(v13 + 520);
                                  }

                                  else
                                  {
                                    v139 = *(v13 + 516) + v138 * v136;
                                  }

                                  v140 = *(v13 + 528);
                                  if (*(v13 + 524))
                                  {
                                    v141 = v136 * *(v13 + 532) + v136 * v140 * v136 + *(v13 + 536);
                                  }

                                  else
                                  {
                                    v141 = *(v13 + 532) + v140 * v136;
                                  }

                                  v142 = *(v13 + 560);
                                  if (*(v13 + 556))
                                  {
                                    v143 = v136 * *(v13 + 564) + v136 * v142 * v136 + *(v13 + 568);
                                  }

                                  else
                                  {
                                    v143 = *(v13 + 564) + v142 * v136;
                                  }

                                  v618 = v143;
                                  v144 = v132;
                                  v145 = *(v13 + 576);
                                  if (*(v13 + 572))
                                  {
                                    v146 = v136 * *(v13 + 580) + v136 * v145 * v136 + *(v13 + 584);
                                  }

                                  else
                                  {
                                    v146 = *(v13 + 580) + v145 * v136;
                                  }

                                  v622 = v879[11];
                                  v607 = *&v881[3].__opaque[8];
                                  v611 = *&v881[3].__opaque[16];
                                  v605 = *&v881[3].__opaque[24];
                                  v147 = *(v13 + 592);
                                  v148 = *(v13 + 16) / 100.0 * 32768.0 / v144;
                                  if (*(v13 + 588))
                                  {
                                    v149 = v136 * *(v13 + 596) + v136 * v147 * v136 + *(v13 + 600);
                                  }

                                  else
                                  {
                                    v149 = *(v13 + 596) + v147 * v136;
                                  }

                                  v150.i32[0] = *(v13 + 340);
                                  v150.i32[1] = *(v13 + 352);
                                  v596 = v150;
                                  v150.i32[0] = *(v13 + 364);
                                  v150.i32[1] = *(v13 + 344);
                                  v594 = v150;
                                  v150.i32[0] = *(v13 + 356);
                                  v150.i32[1] = *(v13 + 368);
                                  v592 = v150;
                                  v150.i32[0] = *(v13 + 348);
                                  v150.i32[1] = *(v13 + 360);
                                  v590 = v150;
                                  v570 = *(v13 + 372);
                                  v588 = v879[9];
                                  v576 = *(v13 + 624);
                                  v577 = *(v13 + 628);
                                  v578 = *(v13 + 632);
                                  v151 = v148;
                                  v582 = *&v881[3].__opaque[32];
                                  v584 = *&v881[3].__opaque[48];
                                  v574 = *&v881[4].__opaque[16];
                                  v573 = *&v881[4].__opaque[24];
                                  v571 = v879[10];
                                  v572 = *&v881[4].__opaque[32];
                                  v152 = *(v13 + 608);
                                  if (*(v13 + 604))
                                  {
                                    v153 = v136 * *(v13 + 612) + v136 * v152 * v136 + *(v13 + 616);
                                  }

                                  else
                                  {
                                    v153 = *(v13 + 612) + v152 * v136;
                                  }

                                  LODWORD(v884) = 0;
                                  v883 = 0;
                                  v882 = 0;
                                  sub_233827924(v13, v607, v582, &v884, &v883, v151, v139, v141, v598.f32[0], *v626.i32);
                                  sub_233827924(v13, v611, v135, &v883 + 4, &v882, v151, v139, v141, v598.f32[1], *&v626.i32[1]);
                                  sub_233827924(v13, v605, v584, 0, 0, v151, v139, v141, v600, v602);
                                  v154 = v136 * *(v13 + 552);
                                  v155 = *(v622 + 2 * llround(v154));
                                  *&v154 = v151;
                                  v156 = sub_233827CA4(v155, v574, v154, v618, v146, v149, v153, v576, *v626.i32);
                                  *&v156 = v151;
                                  v157 = sub_233827CA4(v155, v573, v156, v618, v146, v149, v153, v577, *&v626.i32[1]);
                                  *&v157 = v151;
                                  sub_233827CA4(v155, v572, v157, v618, v146, v149, v153, v578, v602);
                                  if (v586)
                                  {
                                    v158 = llround(*(v13 + 296) * 4096.0);
                                    if (v586 - v135 > 0x1F)
                                    {
                                      v161 = vdupq_n_s32(v158);
                                      v162 = (v135 + 16);
                                      v163 = v586 + 1;
                                      v164 = 0x10000;
                                      v165.i64[0] = 0xFFFF0000FFFFLL;
                                      v165.i64[1] = 0xFFFF0000FFFFLL;
                                      do
                                      {
                                        v166 = *v162[-2].i8;
                                        v167.i64[0] = 0x80000000800;
                                        v167.i64[1] = 0x80000000800;
                                        v168 = vmlaq_s32(v167, v161, vmovl_high_u16(v166));
                                        v169.i64[0] = 0x80000000800;
                                        v169.i64[1] = 0x80000000800;
                                        v170 = vmlaq_s32(v169, v161, vmovl_u16(*v166.i8));
                                        v166.i64[0] = 0x80000000800;
                                        v166.i64[1] = 0x80000000800;
                                        v171.i64[0] = 0x80000000800;
                                        v171.i64[1] = 0x80000000800;
                                        v172 = vuzp1q_s16(vminq_s32(vshrq_n_s32(vmlaq_s32(v171, v161, vmovl_u16(*v162)), 0xCuLL), v165), vminq_s32(vshrq_n_s32(vmlaq_s32(v166, v161, vmovl_high_u16(*v162->i8)), 0xCuLL), v165));
                                        v163[-1] = vuzp1q_s16(vminq_s32(vshrq_n_s32(v170, 0xCuLL), v165), vminq_s32(vshrq_n_s32(v168, 0xCuLL), v165));
                                        *v163 = v172;
                                        v162 += 4;
                                        v163 += 2;
                                        v164 -= 16;
                                      }

                                      while (v164);
                                    }

                                    else
                                    {
                                      for (k = 0; k != 0x10000; ++k)
                                      {
                                        v160 = (*(v135 + k * 2) * v158 + 2048) >> 12;
                                        if (v160 >= 0xFFFF)
                                        {
                                          LOWORD(v160) = -1;
                                        }

                                        v586->i16[k] = v160;
                                      }
                                    }
                                  }

                                  v619 = *(v13 + 4);
                                  if (*(v13 + 8) == 1)
                                  {
                                    if (v619 - 5 > 3)
                                    {
                                      v173 = &byte_280C04D68;
                                    }

                                    else
                                    {
                                      v173 = off_2789EF240[v619 - 5];
                                    }

                                    v180 = llroundf(v613 + (v151 * *(v13 + 12)));
                                    v181 = llroundf(v613);
                                    if (v181 == v180)
                                    {
                                      v181 = v180 - 1;
                                    }

                                    v182 = llroundf(v613 + v151);
                                    if (*(v13 + 9))
                                    {
                                      v183 = v182;
                                    }

                                    else
                                    {
                                      v183 = 0;
                                    }

                                    v184 = 7u >> *v173;
                                    v185 = llroundf(v151);
                                    v186 = llround(65536.0 / (v180 - v181));
                                    v654 = sub_233827E0C;
                                    v657 = (8 * v180) | 4;
                                    v658 = v181;
                                    if (v184)
                                    {
                                      v187 = 4;
                                    }

                                    else
                                    {
                                      v187 = 5;
                                    }

                                    v659 = v183;
                                    v660 = v186;
                                    v661 = 2 * v185;
                                    v662 = v187;
                                    v614 = 1;
                                  }

                                  else
                                  {
                                    v614 = 0;
                                  }

                                  if (v619 == 8 || v619 == 6)
                                  {
                                    v188 = 0;
                                    v189 = 0;
                                    v190 = *(v632 + 40);
                                    v191 = v881;
                                    v192 = vcvt_s32_f32(vrnda_f32(*v626.i8));
                                    v193 = v192;
                                    v194 = &v888;
                                    vst2_f32(v194->f32, *v192.i8);
                                    ++v194;
                                    DWORD1(v889) = llroundf(v602);
                                    v568 = DWORD1(v889);
                                    v194->i32[0] = DWORD1(v889);
                                    v195 = vdupq_n_s64(0x40C0000000000000uLL);
                                    v196 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_f32(v598), v195))));
                                    *&v894 = __PAIR64__(llround(v576 * 16.0 * 8192.0), v196.u32[0]);
                                    v569 = v196;
                                    *(&v894 + 1) = __PAIR64__(llround(v577 * 16.0 * 8192.0), v196.u32[1]);
                                    v197.f64[0] = v600;
                                    v197.f64[1] = v578 * 16.0;
                                    *&v195.f64[0] = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmulq_f64(v197, v195))));
                                    v579 = LODWORD(v195.f64[0]);
                                    *&v895 = v195.f64[0];
                                    opaque = v191[1].__opaque;
                                    do
                                    {
                                      if (!v666[v188])
                                      {
                                        v199 = *&opaque[8 * v189];
                                        v200 = *(&v894 + v188);
                                        v666[v188] = v199;
                                        v201 = v888.u32[v188 >> 1];
                                        v202 = v201;
                                        v203 = v188 + 1;
                                        if (v188 != 5)
                                        {
                                          if (v888.i32[v203 >> 1] == v201 && *(&v894 + v203) == v200)
                                          {
                                            v666[v203] = v199;
                                          }

                                          v204 = v188 + 2;
                                          if (v188 != 4)
                                          {
                                            if (v888.i32[v204 >> 1] == v201 && *(&v894 + v204) == v200)
                                            {
                                              v666[v204] = v199;
                                            }

                                            v205 = v188 + 3;
                                            if (v188 != 3)
                                            {
                                              if (v888.i32[v205 >> 1] == v201 && *(&v894 + v205) == v200)
                                              {
                                                v666[v205] = v199;
                                              }

                                              v206 = v188 + 4;
                                              if (v188 != 2)
                                              {
                                                if (v888.i32[v206 >> 1] == v201 && *(&v894 + v206) == v200)
                                                {
                                                  v666[v206] = v199;
                                                }

                                                v207 = v188 + 5;
                                                if (v188 != 1 && v888.i32[v207 >> 1] == v201 && *(&v894 + v207) == v200)
                                                {
                                                  v666[v207] = v199;
                                                }
                                              }
                                            }
                                          }
                                        }

                                        ++v189;
                                        if (v201 <= 0 || (bzero(v199, 2 * v201), !WORD1(v201)))
                                        {
                                          v208 = v201 << 32;
                                          v209 = 4096;
                                          v210 = 131070 - 2 * v201;
                                          while (v209 >> 13 < 0x8000)
                                          {
                                            v199[v202] = v209 >> 13;
                                            v209 += v200;
                                            ++v202;
                                            v210 -= 2;
                                            v208 += 0x100000000;
                                            if (v202 == 0x10000)
                                            {
                                              goto LABEL_343;
                                            }
                                          }

                                          if (v202 < 0x10000)
                                          {
                                            memset_pattern16(v199 + (v208 >> 31), &unk_2339092C0, (v210 & 0x1FFFFFFFELL) + 2);
                                          }
                                        }
                                      }

LABEL_343:
                                      ++v188;
                                    }

                                    while (v188 != 6);
                                    v614 |= 2u;
                                    v663 = sub_233828460;
                                    v666[6] = v192;
                                    v667 = v568;
                                    v668 = v569;
                                    v211 = *(v632 + 404);
                                    v669 = v579;
                                    v670 = vcvtas_u32_f32(v190 * v211);
                                    v671 = vcvtad_u64_f64(33554432.0 / (llroundf(v211) - v670));
                                  }

                                  if (v619 == 6 || v619 == 8)
                                  {
LABEL_399:
                                    if (v619 <= 7 && ((1 << v619) & 0xB0) != 0 && *(v632 + 44) == 1)
                                    {
                                      v238 = (v598.f32[0] * (*(v632 + 404) - *(v632 + 388)));
                                      v239 = (v600 * (*(v632 + 412) - *(v632 + 396)));
                                      v240 = (*(v632 + 48) * (v598.f32[1] * (*(v632 + 408) - *(v632 + 392))));
                                      if (v240 >= v238)
                                      {
                                        v240 = (v598.f32[0] * (*(v632 + 404) - *(v632 + 388)));
                                      }

                                      if (v240 >= v239)
                                      {
                                        v241 = (v600 * (*(v632 + 412) - *(v632 + 396)));
                                      }

                                      else
                                      {
                                        v241 = v240;
                                      }

                                      v242 = 819 * v239 + 1023;
                                      if (819 * v239 >= 0)
                                      {
                                        v242 = 819 * v239;
                                      }

                                      v243 = sub_2338291D4;
                                      if (v652 == 4)
                                      {
                                        v243 = sub_233828A40;
                                      }

                                      v675[16] = v243;
                                      v678 = 819 * v238 / 1024;
                                      v679 = 819 * v241 / 1024;
                                      v680 = v242 >> 10;
                                      v681 = v238;
                                      v614 |= 8u;
                                      v682 = v241;
                                      v683 = v239;
                                    }

                                    if (*(v632 + 52) == 1)
                                    {
                                      v614 |= 0x10u;
                                      v687 = v622;
                                      if ((v651 - 4) > 4)
                                      {
                                        v244 = 0;
                                      }

                                      else
                                      {
                                        v244 = off_2789EF2A0[v651 - 4];
                                      }

                                      v688 = v244;
                                      v689 = v582;
                                      v690 = v575;
                                      v691 = v584;
                                      v692 = v574;
                                      v693 = v573;
                                      v694 = v572;
                                      v684 = sub_233829CB8;
                                    }

                                    v245 = *(v632 + 72);
                                    v246 = *(v632 + 100);
                                    if (v245 & 1) != 0 || (v246)
                                    {
                                      v614 |= 0x20u;
                                      v695 = sub_23382A878;
                                      v698 = v245;
                                      v699 = *(v632 + 76);
                                      v700 = v246;
                                      v701 = *(v632 + 104);
                                      v247 = *(v632 + 92);
                                      *&v248 = v247;
                                      *(&v248 + 1) = SHIDWORD(v247);
                                      v702 = v248;
                                    }

                                    v703 = sub_23382B014;
                                    v706 = 0x15500000AACLL;
                                    v707 = 848;
                                    v708 = v622;
                                    v249 = *(v632 + 140);
                                    if (v249)
                                    {
                                      v250 = llround(*(v632 + 156) * 4096.0);
                                      v251 = llround(*(v632 + 148) * 65535.0);
                                      v709 = sub_23382C074;
                                      v712 = v250;
                                      if (v251 >= 0x7FFF)
                                      {
                                        v252 = 0x7FFF;
                                      }

                                      else
                                      {
                                        v252 = v251;
                                      }

                                      v713 = v252;
                                      v714 = v622;
                                      v253 = v614 | 0xC0;
                                      v715 = v607;
                                      v716 = v605;
                                    }

                                    else
                                    {
                                      v253 = v614 | 0x40;
                                    }

                                    v254 = v652 - 5;
                                    if ((v652 - 5) > 3)
                                    {
                                      v255 = &byte_280C04D68;
                                    }

                                    else
                                    {
                                      v255 = off_2789EF260[v254];
                                    }

                                    if (v652 == 4)
                                    {
                                      v256 = 3;
                                    }

                                    else
                                    {
                                      v256 = -3;
                                    }

                                    v257 = llround(*(v632 + 200) * 65536.0);
                                    v258 = 2;
                                    if (v255[10] == 6)
                                    {
                                      v258 = 3;
                                    }

                                    v259 = 2 * (v255[v258 + 8] != 0);
                                    v260 = sub_23382C898;
                                    if (v652 == 6)
                                    {
                                      v260 = sub_23382C3BC;
                                    }

                                    v717 = v260;
                                    v720 = v257;
                                    v721 = v256;
                                    v722 = v259;
                                    v723 = v258;
                                    v261 = *(v632 + 208);
                                    if ((v651 - 5) >= 4)
                                    {
                                      v262 = 0;
                                      if (v651 == 4)
                                      {
                                        v263 = &byte_280C04D68;
                                        v264 = 1;
                                        v265 = 1;
                                        goto LABEL_447;
                                      }
                                    }

                                    else
                                    {
                                      v262 = 1;
                                    }

                                    if ((v651 - 7) >= 2)
                                    {
                                      if (v651 == 6)
                                      {
                                        v264 = 0;
                                        v263 = &byte_280C04D88;
                                        goto LABEL_446;
                                      }

                                      if (v651 != 5)
                                      {
                                        v264 = 0;
                                        v263 = 0;
                                        goto LABEL_446;
                                      }
                                    }

                                    v264 = 0;
                                    v263 = &byte_280C04D78;
LABEL_446:
                                    v265 = v262;
LABEL_447:
                                    v266 = llround(*(v632 + 204) * 65536.0);
                                    v724 = sub_23382CDE0;
                                    v727 = v261;
                                    v728 = v607;
                                    v729 = v611;
                                    v730 = v605;
                                    v731 = v622;
                                    v732 = v263;
                                    v733 = v265;
                                    v734 = v262;
                                    v735 = v264;
                                    v736 = v266;
                                    v267 = llround(*(v632 + 112) * 65535.0);
                                    v268 = 6 * v267 * v267;
                                    if (v268 >= 0x1000)
                                    {
                                      v271 = -1;
                                      for (m = v268; m > 0xFFF; m >>= 1)
                                      {
                                        ++v271;
                                      }

                                      v270 = 1 << v271;
                                      v269 = v271 + 1;
                                    }

                                    else
                                    {
                                      v269 = 0;
                                      v270 = 0;
                                    }

                                    v273 = *(v588 + 4 * ((v270 + v268) >> v269));
                                    v274 = llround(*(v632 + 116) * 4096.0);
                                    v737 = sub_233830F88;
                                    v740 = v588;
                                    v741 = v611;
                                    v742 = v622;
                                    v743 = v269;
                                    v744 = v270;
                                    v745 = (v273 + 1024) >> 11;
                                    v746 = v268;
                                    v747 = v274;
                                    if (v249)
                                    {
                                      v275 = *(v632 + 156);
                                      v276 = *(v632 + 144);
                                      v758 = xmmword_2339091C0;
                                      v759 = xmmword_2339091D0;
                                      v760 = xmmword_2339091E0;
                                      v761 = xmmword_2339091F0;
                                      v762 = xmmword_233909200;
                                      v763 = xmmword_233909210;
                                      v764 = 1365;
                                      v277 = v253 | 0xF00;
                                      v748 = sub_233831304;
                                      v751 = llround(v275 * 4096.0);
                                      v752 = 1311;
                                      v753 = v276;
                                      v754 = v582;
                                      v755 = v575;
                                      v756 = v584;
                                      v757 = v622;
                                    }

                                    else
                                    {
                                      v277 = v253 | 0x700;
                                    }

                                    if (*(v632 + 160) == 1)
                                    {
                                      v278 = *(v632 + 161);
                                      v279 = *(v632 + 162);
                                      v280 = *(v632 + 163);
                                      v281 = *(v632 + 184);
                                      v282 = *(v607 + 131070) * *(v607 + 131070) + *(v611 + 131070) * *(v611 + 131070) + *(v605 + 131070) * *(v605 + 131070);
                                      if (v282 <= 1)
                                      {
                                        v283 = 1;
                                      }

                                      else
                                      {
                                        v283 = *(v607 + 131070) * *(v607 + 131070) + *(v611 + 131070) * *(v611 + 131070) + *(v605 + 131070) * *(v605 + 131070);
                                      }

                                      v284 = *(v632 + 172) * *(v632 + 172);
                                      v285 = llroundf(v284 * 1024.0);
                                      v286 = 10;
                                      if (v282)
                                      {
                                        v287 = 0xFFFFFFFF / v283;
                                        if (v287 < v285)
                                        {
                                          v288 = 1024.0;
                                          do
                                          {
                                            v288 = v288 * 0.5;
                                            --v286;
                                            v285 = llroundf(v284 * v288);
                                          }

                                          while (v287 < v285);
                                        }
                                      }

                                      v277 |= 0x1000u;
                                      v289 = llround(*(v632 + 176) * 65536.0);
                                      v290 = llround(*(v632 + 180) * 65536.0);
                                      v291 = v289 * v289;
                                      v292 = (v290 * v290 - v289 * v289 + 64) >> 7;
                                      v293 = vcvtms_s32_f32(*(v632 + 164));
                                      v294 = vcvtms_s32_f32(*(v632 + 168));
                                      if (v294 <= v293)
                                      {
                                        v295 = v293;
                                      }

                                      else
                                      {
                                        v295 = v294;
                                      }

                                      v296 = v879[12];
                                      if (v652 == 4)
                                      {
                                        v297 = 80;
                                      }

                                      else
                                      {
                                        v297 = 5;
                                      }

                                      v765 = sub_233831CE8;
                                      v768 = v622;
                                      v769 = v607;
                                      v770 = v611;
                                      v771 = v605;
                                      v772 = v285;
                                      v773 = v286;
                                      v774 = v291;
                                      v775 = v292;
                                      v776 = v293;
                                      v777 = v295;
                                      v780 = v296;
                                      v298 = v281 * 65536.0;
                                      if (!v280)
                                      {
                                        v298 = 4294967300.0;
                                      }

                                      v778 = v278;
                                      v781 = llround(v298);
                                      v782 = v297;
                                      v783 = sub_233831DC4;
                                      if (v279)
                                      {
                                        v779 = v278;
                                        v778 = 0;
                                        v783 = sub_2338336B4;
                                        v299 = sub_233831DC4;
                                      }

                                      else
                                      {
                                        v299 = 0;
                                      }

                                      v784 = v299;
                                    }

                                    if (*(v632 + 240))
                                    {
                                      v300 = *(v632 + 228) | 0xA;
                                    }

                                    else
                                    {
                                      v300 = *(v632 + 228);
                                    }

                                    if (*(v632 + 212))
                                    {
                                      v300 |= 4u;
                                    }

                                    if ((v652 - 7) < 2)
                                    {
                                      goto LABEL_483;
                                    }

                                    if (v652 == 6)
                                    {
                                      v304.i32[0] = *(v632 + 216);
                                      v304.i32[1] = *(v632 + 232);
                                      v302 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_f32(v304), xmmword_233909220))));
                                      v301 = llround(*(v632 + 244) * 65536.0);
                                      v300 |= 0x10u;
                                      v303 = &byte_280C04D88;
                                    }

                                    else
                                    {
                                      if (v652 == 5)
                                      {
LABEL_483:
                                        v301 = 0;
                                        v302 = 0;
                                        v303 = &byte_280C04D78;
                                        goto LABEL_486;
                                      }

                                      v301 = 0;
                                      v302 = 0;
                                      v303 = &byte_280C04D68;
                                    }

LABEL_486:
                                    if (*(v632 + 212))
                                    {
                                      v305 = 2;
                                    }

                                    else
                                    {
                                      v305 = 255;
                                    }

                                    if (*v303 == 6)
                                    {
                                      v306 = 5;
                                    }

                                    else
                                    {
                                      v306 = 4;
                                    }

                                    v307 = sub_2338349A8;
                                    if (v652 == 6)
                                    {
                                      v307 = sub_2338343FC;
                                    }

                                    v785 = v307;
                                    v789 = v300;
                                    v788 = v306;
                                    v790 = v305;
                                    v791 = v302;
                                    v792 = v301;
                                    if (v619 == 6)
                                    {
                                      if (*(v632 + 253) == 1)
                                      {
                                        v308 = llround(*(v632 + 256) * 1024.0);
                                        v793 = sub_233834E1C;
                                        v309 = v277 | 0x6000;
                                        v796 = v308;
                                        v797 = v622;
                                      }

                                      else
                                      {
                                        v309 = v277 | 0x2000;
                                      }
                                    }

                                    else
                                    {
                                      v309 = v277 | 0xA000;
                                      if (v254 > 3)
                                      {
                                        v310 = &byte_280C04D68;
                                      }

                                      else
                                      {
                                        v310 = off_2789EF280[v254];
                                      }

                                      v798 = sub_233835098;
                                      v801 = v622;
                                      v802 = *v310 != 6;
                                      if (v619 != 8)
                                      {
LABEL_503:
                                        if (*(v632 + 64) == 1)
                                        {
                                          v312 = 0;
                                          v313 = *&v881[4].__opaque[48];
                                          v314 = vdupq_n_s32(llround(*(v632 + 68) * 65536.0));
                                          v315.i64[0] = 0x1900000019;
                                          v315.i64[1] = 0x1900000019;
                                          v316 = v575;
                                          do
                                          {
                                            v317 = *v316++;
                                            v318.i64[0] = 0x800000008000;
                                            v318.i64[1] = 0x800000008000;
                                            v319.i64[0] = 0x800000008000;
                                            v319.i64[1] = 0x800000008000;
                                            v320 = vshrq_n_s32(vmlaq_s32(v319, v314, vmovl_u16(*v317.i8)), 0x10uLL);
                                            v321 = vshrq_n_s32(vmlaq_s32(v318, v314, vmovl_high_u16(v317)), 0x10uLL);
                                            v318.i64[0] = 0x1000000010;
                                            v318.i64[1] = 0x1000000010;
                                            v322 = vmlaq_s32(v318, vmulq_s32(v321, v321), v315);
                                            v321.i64[0] = 0x1000000010;
                                            v321.i64[1] = 0x1000000010;
                                            v323 = (v313 + v312);
                                            *v323 = vshrq_n_s32(vmlaq_s32(v321, vmulq_s32(v320, v320), v315), 5uLL);
                                            v323[1] = vshrq_n_s32(v322, 5uLL);
                                            v312 += 32;
                                          }

                                          while (v312 != 0x40000);
                                          v324 = 0;
                                          v807 = sub_233835F40;
                                          v810 = v622;
                                          v811 = v313;
                                          v325 = v812;
                                          v326 = -48;
                                          do
                                          {
                                            v327 = v324++ | 0x4000;
                                            *(v325 - 1) = v327 / (v326 + 49);
                                            *v325 = (v324 | 0x4000u) / (v326 + 50);
                                            v325 += 2;
                                            v326 += 2;
                                          }

                                          while (v326);
                                          v812[47] = 334;
                                          v309 |= 0x20000u;
                                          if (*&v609[3].__opaque[40] == *&v609[4].__opaque[48] + 0x20000)
                                          {
                                            *&v609[3].__opaque[40] = 0;
                                          }
                                        }

                                        if (*(v632 + 272) != 1)
                                        {
                                          goto LABEL_561;
                                        }

                                        v813 = sub_233837428;
                                        v816 = v622;
                                        v817 = v586;
                                        v328 = *(v632 + 280) + *(v632 + 280);
                                        v329 = 0.0;
                                        if (v328 < 0.0)
                                        {
                                          v328 = 0.0;
                                        }

                                        v330 = v328 * 65536.0;
                                        v331 = roundf(v328 * 65536.0);
                                        if (v331 <= 65535.0)
                                        {
                                          v333 = 16;
                                        }

                                        else
                                        {
                                          v332 = 16;
                                          do
                                          {
                                            v330 = v330 * 0.5;
                                            v333 = v332 - 1;
                                            v331 = roundf(v330);
                                          }

                                          while (v331 > 65535.0 && v332-- > 1);
                                        }

                                        if (*(v632 + 288) >= 0.0)
                                        {
                                          v329 = *(v632 + 288);
                                        }

                                        v335 = v329 * 65536.0;
                                        v336 = roundf(v335);
                                        if (v336 <= 65535.0)
                                        {
                                          v338 = 16;
                                        }

                                        else
                                        {
                                          v337 = 16;
                                          do
                                          {
                                            v335 = v335 * 0.5;
                                            v338 = v337 - 1;
                                            v336 = roundf(v335);
                                          }

                                          while (v336 > 65535.0 && v337-- > 1);
                                        }

                                        v309 |= 0x40000u;
                                        v340 = v331;
                                        v818 = v336;
                                        v819 = v338;
                                        v341 = *(v632 + 292);
                                        v820 = v341 <= 0.0;
                                        sub_233837588(&v888, *(v632 + 276));
                                        v628 = vdupq_n_s64(0x40F0000000000000uLL);
                                        v342 = vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_f32(*v888.f32), v628))), vcvtq_s64_f64(vrndaq_f64(vmulq_f64(vcvt_hight_f64_f32(v888), v628)))));
                                        v827 = vext_s8(vzip1_s16(v342, v342), v342, 6uLL);
                                        v833 = v342.i16[1];
                                        v831 = v342.i16[3];
                                        v828 = HIWORD(v342.u32[1]);
                                        v832 = v342.i32[1];
                                        v825 = HIWORD(v342.u32[1]);
                                        v826 = v342.i32[1];
                                        v822 = v342;
                                        v830 = llround(*&v889 * 65536.0);
                                        v829 = v830;
                                        v824 = v830;
                                        v823 = v830;
                                        if (v341 > 0.0)
                                        {
                                          sub_233837588(&v888, v341);
                                          v343 = vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_f32(*v888.f32), v628))), vcvtq_s64_f64(vrndaq_f64(vmulq_f64(vcvt_hight_f64_f32(v888), v628)))));
                                          v845 = v343.i16[1];
                                          v843 = v343.i16[3];
                                          v840 = HIWORD(v343.u32[1]);
                                          v844 = v343.i32[1];
                                          v837 = HIWORD(v343.u32[1]);
                                          v838 = v343.i32[1];
                                          v839 = vext_s8(vzip1_s16(v343, v343), v343, 6uLL);
                                          v834 = v343;
                                          v842 = llround(*&v889 * 65536.0);
                                          v841 = v842;
                                          v836 = v842;
                                          v835 = v842;
                                        }

                                        v344 = 0;
                                        v345 = 0;
                                        v346 = llroundf(*(v632 + 284));
                                        v347 = *v881[3].__opaque;
                                        v821 = v347;
                                        v348 = v346 * 0.75;
                                        v349 = vcvtmd_s64_f64(v348);
                                        v350 = v346 - v348;
                                        v351 = (sqrt(v350 * v350 + (65535.0 - v348) * (65535.0 - v348)) - v350 + 0.5);
                                        v352 = v347 + 14;
                                        while (1)
                                        {
                                          v353 = v344 >> v333;
                                          if (v344 >> v333 >= 0xFFFF)
                                          {
                                            v353 = 0xFFFF;
                                          }

                                          *(v352 - 14) = v353;
                                          if (v353 >= v349)
                                          {
                                            break;
                                          }

                                          ++v345;
                                          v352 += 2;
                                          v344 += v340;
                                          if (v345 == 0x10000)
                                          {
                                            goto LABEL_560;
                                          }
                                        }

                                        if (v345 > 0x10000)
                                        {
                                          goto LABEL_560;
                                        }

                                        v354 = 0;
                                        v355 = v344 - v340;
                                        v356 = 65537 - v345;
                                        while (1)
                                        {
                                          v357 = v355 >> v333;
                                          if (v355 >> v333 >= 0xFFFF)
                                          {
                                            v357 = 0xFFFF;
                                          }

                                          v358 = v357 - (sqrt(v350 * v350 + (v357 - v348) * (v357 - v348)) - v350 + 0.5);
                                          if ((v358 ^ v351) == -1)
                                          {
                                            break;
                                          }

                                          *(v347 + 2 * v345 - 2) = v358;
                                          --v356;
                                          v354 -= 2;
                                          ++v345;
                                          v355 += v340;
                                          if (v345 == 65537)
                                          {
                                            goto LABEL_560;
                                          }
                                        }

                                        v359 = v345 - 1;
                                        if ((v345 - 1) >= 0x10000)
                                        {
LABEL_560:
                                          v846 = sub_2338378C0;
                                          v847 = sub_233838008;
                                          v848 = sub_233838858;
                                          v849 = sub_233838D28;
                                          v850 = sub_2338390E4;
LABEL_561:
                                          if (v882 <= 0)
                                          {
                                            sub_2338FCBE8();
                                          }

                                          v368 = vdupq_n_s64(0x40EFFFE000000000uLL);
                                          v369 = vmulq_f64(vcvtq_f64_f32(v592), v368);
                                          v851 = sub_2338398B0;
                                          v853 = v882;
                                          v854 = 0x10000u / v882;
                                          v855 = v622;
                                          v370 = *(v632 + 420);
                                          v371.i32[0] = *(v632 + 312);
                                          v372 = *(v632 + 324);
                                          v373 = v649;
                                          v374 = v649[20].u8[0];
                                          v375 = vshr_n_s32(vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_f32(v596), v368)))), 4uLL);
                                          v859 = v375;
                                          v376 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_f32(v590), v368))));
                                          v377 = vshr_n_s32(vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_f32(v594), v368)))), 4uLL);
                                          v860 = v377;
                                          v378 = vshr_n_s32(vmovn_s64(vcvtq_s64_f64(vrndaq_f64(v369))), 4uLL);
                                          v861 = v378;
                                          v379 = vshr_n_s32(v376, 4uLL);
                                          v862 = v379;
                                          v863 = llround(v570 * 65535.0) >> 4;
                                          v864 = v581;
                                          v865 = v580;
                                          if (v374 == 1)
                                          {
                                            v380 = (v884 * v884 + 0x8000) >> 16;
                                            v381 = (HIDWORD(v883) * HIDWORD(v883) + 0x8000) >> 16;
                                            v382 = (v883 * v883 + 0x8000) >> 16;
                                            v383 = (v882 * v882 + 0x8000) >> 16;
                                            v384 = *(v571 + (v382 - v380));
                                            v385 = *(v588 + 4 * (v382 - v380)) >> v384;
                                            v386 = *(v571 + (v383 - v381));
                                            v387 = *(v588 + 4 * (v383 - v381)) >> v386;
                                            v371.i32[1] = v372;
                                            v869 = v622;
                                            v870 = v385;
                                            v871 = 16 - v384;
                                            v872 = v380;
                                            v873 = v382;
                                            v874 = v387;
                                            v875 = 16 - v386;
                                            v876 = v381;
                                            v877 = v383;
                                            v878 = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_f32(v371), vdupq_n_s64(0x40B0000000000000uLL)))));
                                          }

                                          v867 = v588;
                                          v868 = v571;
                                          v388 = vorr_s8(vdup_lane_s32(vorr_s8(vorr_s8(v375, v377), vorr_s8(v378, v379)), 1), vorr_s8(v377, v379)).u32[0] | v581.i32[1] | v581.i32[0] | v580;
                                          v389 = v388 == 0;
                                          if (v388)
                                          {
                                            v390 = sub_23383DD6C;
                                          }

                                          else
                                          {
                                            v390 = sub_23383CE18;
                                          }

                                          v391 = sub_23383EFD8;
                                          if (v389)
                                          {
                                            v391 = sub_23383ECFC;
                                          }

                                          if (v374)
                                          {
                                            v391 = v390;
                                          }

                                          v856 = v391;
                                          sig = v881[1].__sig;
                                          if (*(sig + 131070))
                                          {
LABEL_572:
                                            v866 = sig;
                                            v653 = v309 | 0x180000;
                                            if (v636)
                                            {
                                              v656 = vdupq_lane_s64(v640.i64[0], 0);
                                              v655 = vdupq_laneq_s64(v640, 1);
                                              v664 = v655;
                                              v665 = v656;
                                              v673 = v655;
                                              v674 = v656;
                                              v676 = v655;
                                              v677 = v656;
                                              v685 = v655;
                                              v686 = v656;
                                              v696 = v655;
                                              v697 = v656;
                                              v704 = v655;
                                              v705 = v656;
                                              v710 = v655;
                                              v711 = v656;
                                              v718 = v655;
                                              v719 = v656;
                                              v725 = v655;
                                              v726 = v656;
                                              v738 = v655;
                                              v739 = v656;
                                              v749 = v655;
                                              v750 = v656;
                                              v766 = v655;
                                              v767 = v656;
                                              v786 = v655;
                                              v787 = v656;
                                              v794 = v655;
                                              v795 = v656;
                                              v799 = v655;
                                              v800 = v656;
                                              v804 = v655;
                                              v805 = v656;
                                              v808 = v655;
                                              v809 = v656;
                                              v814 = v655;
                                              v815 = v656;
                                              *v852 = v655;
                                              *&v852[16] = v656;
                                              v857 = v655;
                                              v858 = v656;
                                              v639 = vdupq_n_s64(0x28uLL);
                                              v638 = v639;
LABEL_805:
                                              v530 = sub_233818C24();
                                              v531 = v530;
                                              v532 = (v630 + 511) >> 9;
                                              v533 = (v621 + 255) >> 8;
                                              v634 = 0;
                                              v635 = 0;
                                              if (v533 * v532 > v530)
                                              {
                                                if (v533 * v532 % v530)
                                                {
                                                  v533 = (v533 + 1) & 0x1FFFFFFFFFFFFFELL;
                                                  if (v533 * v532 % v530)
                                                  {
                                                    v532 = (v532 + 1) & 0xFFFFFFFFFFFFFELL;
                                                  }
                                                }
                                              }

                                              v534 = (v630 / v532 + 63) & 0xFFFFFFFFFFFFFFC0;
                                              v535 = (v621 / v533 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                              *&v637 = v534;
                                              *(&v637 + 1) = v535;
                                              if (v534)
                                              {
                                                v534 = (v630 + v534 - 1) / v534 - 1;
                                              }

                                              if (v535)
                                              {
                                                v535 = (v621 + v535 - 1) / v535 - 1;
                                              }

                                              v536 = v639.i64[1] + v639.i64[0];
                                              if (v639.i64[1] + v639.i64[0] >= v617)
                                              {
                                                v536 = v617;
                                              }

                                              v537 = v638.i64[1] + v638.i64[0];
                                              if (v638.i64[1] + v638.i64[0] >= v616)
                                              {
                                                v537 = v616;
                                              }

                                              v538 = v616 * v617;
                                              v539 = (v616 + v537 * v535) * (v617 + v536 * v534) - v616 * v617;
                                              v540 = sub_233818B98();
                                              if (v531 == 1 || v540)
                                              {
                                                if (v538 >= 2 * v539)
                                                {
                                                  goto LABEL_823;
                                                }
                                              }

                                              else if (v539 / (v531 - 1) <= v538)
                                              {
LABEL_823:
                                                if ((v653 & 0x20) != 0)
                                                {
                                                  v636 = 1;
                                                }

                                                else if ((v636 & 1) == 0)
                                                {
                                                  goto LABEL_828;
                                                }

                                                v637 = 0uLL;
                                                v656 = vdupq_lane_s64(v640.i64[0], 0);
                                                v655 = vdupq_laneq_s64(v640, 1);
                                                v664 = v655;
                                                v665 = v656;
                                                v673 = v655;
                                                v674 = v656;
                                                v676 = v655;
                                                v677 = v656;
                                                v685 = v655;
                                                v686 = v656;
                                                v696 = v655;
                                                v697 = v656;
                                                v704 = v655;
                                                v705 = v656;
                                                v710 = v655;
                                                v711 = v656;
                                                v718 = v655;
                                                v719 = v656;
                                                v725 = v655;
                                                v726 = v656;
                                                v738 = v655;
                                                v739 = v656;
                                                v749 = v655;
                                                v750 = v656;
                                                v766 = v655;
                                                v767 = v656;
                                                v786 = v655;
                                                v787 = v656;
                                                v794 = v655;
                                                v795 = v656;
                                                v799 = v655;
                                                v800 = v656;
                                                v804 = v655;
                                                v805 = v656;
                                                v808 = v655;
                                                v809 = v656;
                                                v814 = v655;
                                                v815 = v656;
                                                *v852 = v655;
                                                *&v852[16] = v656;
                                                v857 = v655;
                                                v858 = v656;
                                                v639 = vdupq_n_s64(0x28uLL);
                                                v638 = v639;
LABEL_828:
                                                if (v637 == 0)
                                                {
                                                  v541 = 1;
                                                }

                                                else
                                                {
                                                  if (v637)
                                                  {
                                                    v542 = v637;
                                                  }

                                                  else
                                                  {
                                                    v542 = v643;
                                                  }

                                                  v543 = (v643 + v542 - 1) / v542;
                                                  if (DWORD2(v637))
                                                  {
                                                    v544 = DWORD2(v637);
                                                  }

                                                  else
                                                  {
                                                    v544 = v644;
                                                  }

                                                  v541 = (v644 + v544 - 1) / v544 * v543;
                                                }

                                                sub_2338FC70C(sub_233826508, v541, &v634, sub_2338274A8, sub_23382786C);
                                                v545 = v881;
                                                if (v881)
                                                {
                                                  if (v880)
                                                  {
                                                    atomic_fetch_add(v880 + 4, 0xFFFFFFFF);
                                                    v880 = 0;
                                                  }

                                                  pthread_mutex_destroy(v545);
                                                  j__free_3(v545);
                                                }

                                                return 1;
                                              }

                                              v636 = 1;
                                              goto LABEL_823;
                                            }

                                            v393 = 2;
                                            if (v652 == 4)
                                            {
                                              v394 = 2;
                                            }

                                            else
                                            {
                                              v394 = 3;
                                            }

                                            if (v652 == 4)
                                            {
                                              v395 = 3;
                                            }

                                            else
                                            {
                                              v395 = 2;
                                            }

                                            if ((v309 & 0x40000) != 0)
                                            {
                                              v399 = v395 | 8;
                                              v398 = v394 | 8;
                                              v393 = 10;
                                              v397 = 11;
                                              v396 = 12;
                                            }

                                            else
                                            {
                                              v396 = 0;
                                              v397 = 3;
                                              v398 = v394;
                                              v399 = v395;
                                            }

                                            v407 = v399 + 5;
                                            v408 = (v393 + 8) & 0x18;
                                            if ((v309 & 0x20000) == 0)
                                            {
                                              v408 = 0;
                                            }

                                            v633 = v408;
                                            if ((v309 & 0x20000) != 0)
                                            {
                                              v409 = (v397 + 8) & 0x18;
                                            }

                                            else
                                            {
                                              v409 = 0;
                                            }

                                            if ((v309 & 0x20000) != 0)
                                            {
                                              v410 = (v399 & 0xFFFFFFFFFFFFFFFCLL) + 8;
                                            }

                                            else
                                            {
                                              v410 = 0;
                                            }

                                            v623 = v410;
                                            v629 = v409;
                                            if ((v309 & 0x20000) != 0)
                                            {
                                              v411 = (v398 & 0xFFFFFFFFFFFFFFFCLL) + 8;
                                            }

                                            else
                                            {
                                              v411 = 0;
                                            }

                                            v620 = v411;
                                            if ((v309 & 0x20000) != 0)
                                            {
                                              LODWORD(v398) = v398 + 5;
                                              v412 = v397 + 5;
                                            }

                                            else
                                            {
                                              v407 = v399;
                                              v412 = v397;
                                            }

                                            if ((v309 & 0x20000) != 0)
                                            {
                                              v393 |= 5uLL;
                                            }

                                            v413.i64[0] = v393;
                                            v413.i64[1] = v412;
                                            if ((v309 & 0x10000) != 0)
                                            {
                                              v414 = v407 + 2;
                                              v394 = (v398 + 2);
                                              v615 = (v393 + 5) & 0x1C;
                                              v415 = vaddq_s64(v413, vdupq_n_s64(2uLL));
                                              v612 = (v412 + 5) & 0x3C;
                                              v610 = (v398 + 5) & 0xFFFFFFFC;
                                              LODWORD(v398) = v398 + 2;
                                              v395 = v407 + 2;
                                              v407 += 2;
                                              v413 = v415;
                                            }

                                            else
                                            {
                                              v612 = 0;
                                              v615 = 0;
                                              v610 = 0;
                                              v414 = 0;
                                              v415 = xmmword_233903BE0;
                                            }

                                            if ((v309 & 0x8000) != 0)
                                            {
                                              v416 = vaddq_s64(v413, vdupq_n_s64(2uLL));
                                              if (v395 <= v407 + 2)
                                              {
                                                v395 = v407 + 2;
                                              }

                                              if (v394 <= (v398 + 2))
                                              {
                                                v394 = (v398 + 2);
                                              }

                                              v415 = vbslq_s8(vcgtq_u64(v415, v416), v415, v416);
                                              v606 = (v413.i64[1] + 5) & 0xFFFFFFFFFFFFFFFCLL;
                                              v608 = (v413.i64[0] + 5) & 0xFFFFFFFFFFFFFFFCLL;
                                              v601 = (v398 + 5) & 0xFFFFFFFC;
                                              v604 = (v407 + 5) & 0xFFFFFFFFFFFFFFFCLL;
                                              LODWORD(v398) = v394;
                                              v407 = v395;
                                              v413 = v415;
                                            }

                                            else
                                            {
                                              v604 = 0;
                                              v606 = 0;
                                              v608 = 0;
                                              v601 = 0;
                                            }

                                            if ((v309 & 0x4000) != 0)
                                            {
                                              v417 = vaddq_s64(v413, vdupq_n_s64(2uLL));
                                              if (v395 <= v407 + 2)
                                              {
                                                v395 = v407 + 2;
                                              }

                                              if (v394 <= (v398 + 2))
                                              {
                                                v394 = (v398 + 2);
                                              }

                                              v415 = vbslq_s8(vcgtq_u64(v415, v417), v415, v417);
                                              v589 = (v413.i64[1] + 5) & 0xFFFFFFFFFFFFFFFCLL;
                                              v591 = (v413.i64[0] + 5) & 0xFFFFFFFFFFFFFFFCLL;
                                              v585 = (v398 + 5) & 0xFFFFFFFC;
                                              v587 = (v407 + 5) & 0xFFFFFFFFFFFFFFFCLL;
                                              v407 = v395;
                                              LODWORD(v398) = v394;
                                              v413 = v415;
                                            }

                                            else
                                            {
                                              v587 = 0;
                                              v589 = 0;
                                              v591 = 0;
                                              v585 = 0;
                                            }

                                            v418 = vaddq_s64(vshlq_n_s64(v413, 0x20uLL), vdupq_n_s64(0x400000000uLL));
                                            v419 = vshrq_n_u64(v418, 0x20uLL);
                                            v420 = v407 + 4;
                                            v421 = (v398 + 4);
                                            v422 = vbslq_s8(vcgtq_u64(v415, v419), v415, v419);
                                            if (v395 <= v407 + 4)
                                            {
                                              v395 = v407 + 4;
                                            }

                                            if (v394 <= v421)
                                            {
                                              v423 = (v398 + 4);
                                            }

                                            else
                                            {
                                              v423 = v394;
                                            }

                                            if ((v309 & 0x1000) != 0)
                                            {
                                              v428 = vcvtms_s32_f32(v373[20].f32[1]);
                                              v429 = vcvtms_s32_f32(v373[21].f32[0]);
                                              if (v429 > v428)
                                              {
                                                v428 = v429;
                                              }

                                              if (v373[20].i8[2])
                                              {
                                                v430 = 6;
                                              }

                                              else
                                              {
                                                v430 = 2;
                                              }

                                              LODWORD(v425) = v430 + 2 * v428;
                                              v424 = v425;
                                              if (v425 <= 2)
                                              {
                                                v425 = 2;
                                              }

                                              else
                                              {
                                                v425 = v425;
                                              }

                                              v431 = v425 << 32;
                                              v432 = ((v425 << 32) + 0x400000000) >> 32;
                                              if ((v309 & 0x800) == 0)
                                              {
                                                LODWORD(v425) = 0;
                                                v432 = 0;
                                              }

                                              v583 = v432;
                                              v433.i64[0] = ((v431 + 0x300000000) >> 32) & 0xFFFFFFFFFFFFFFFCLL;
                                              v433.i64[1] = (v431 + 0x300000000) >> 32;
                                              v427 = vorrq_s8(v433, xmmword_233909230);
                                            }

                                            else
                                            {
                                              v424 = 0;
                                              LODWORD(v425) = (v309 & 0x800) >> 10;
                                              v426 = 6;
                                              if ((v309 & 0x800) == 0)
                                              {
                                                v426 = 0;
                                              }

                                              v583 = v426;
                                              v427 = xmmword_233909240;
                                            }

                                            v434 = vshlq_n_s64(vbslq_s8(vcgtq_u64(v422, v427), v422, v427), 0x20uLL);
                                            if (v395 <= v427.i64[1])
                                            {
                                              v435 = v427.u64[1];
                                            }

                                            else
                                            {
                                              v435 = v395;
                                            }

                                            if (v423 <= v427.i64[1])
                                            {
                                              v436 = v427.u64[1];
                                            }

                                            else
                                            {
                                              v436 = v423;
                                            }

                                            if ((v309 & 0x1000) != 0)
                                            {
                                              v438 = vdupq_n_s64(v424);
                                              v439 = vbslq_s8(vcgtq_u64(v419, v438), v419, v438);
                                              if (v420 <= v424)
                                              {
                                                LODWORD(v420) = v424;
                                              }

                                              if (v424 <= v421)
                                              {
                                                v437 = v421;
                                              }

                                              else
                                              {
                                                v437 = v424;
                                              }

                                              v418 = vshlq_n_s64(v439, 0x20uLL);
                                            }

                                            else
                                            {
                                              v437 = v421;
                                            }

                                            v440 = vdupq_n_s64(0x300000000uLL);
                                            v441 = vaddq_s64(v418, v440);
                                            v442 = *&vadd_s32(__PAIR64__(v437, v420), 0x100000001) & 0xFFFFFFFEFFFFFFFELL;
                                            v443 = vadd_s32(v442, 0x300000003);
                                            v444.i64[0] = v443.i32[0];
                                            v444.i64[1] = v443.i32[1];
                                            v445 = v444;
                                            v446 = vadd_s32(v442, 0x200000002);
                                            v447 = v443.i32[0];
                                            if (v435 > v443.i32[0])
                                            {
                                              v447 = v435;
                                            }

                                            if (v436 <= v445.i64[1])
                                            {
                                              v436 = v445.u64[1];
                                            }

                                            v448 = vshrq_n_s64(vbslq_s8(vcgtq_u64(v434, v441), v434, v441), 0x20uLL);
                                            v449 = vdupq_n_s64(0x400000000uLL);
                                            v450 = vshrq_n_s64(vaddq_s64(v418, v449), 0x20uLL);
                                            v451 = vshrq_n_s64(vaddq_s64(vshll_n_s32(v446, 0x20uLL), vdupq_n_s64(0x200000000uLL)), 0x20uLL);
                                            v452.i64[0] = v447;
                                            v452.i64[1] = v436;
                                            v453 = vbslq_s8(vcgtq_u64(v452, v451), v452, v451);
                                            v454 = vbslq_s8(vcgtq_u64(v448, v450), v448, v450);
                                            if ((v309 & 0x80) != 0)
                                            {
                                              v456 = v425 + 1;
                                              v457 = vdupq_n_s64(v456);
                                              v453 = vbslq_s8(vcgtq_u64(v453, v457), v453, v457);
                                              v454 = vbslq_s8(vcgtq_u64(v454, v457), v454, v457);
                                              v455 = (v456 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                            }

                                            else
                                            {
                                              v455 = 0;
                                            }

                                            v458 = vaddq_s64(vshlq_n_s64(v453, 0x20uLL), v440);
                                            v459 = vdupq_n_s64(0xFFFFFFFC00000000);
                                            v460 = vandq_s8(vaddq_s64(vshlq_n_s64(v454, 0x20uLL), v440), v459);
                                            v461 = vaddq_s64(vandq_s8(v458, v459), v449);
                                            v462 = vshrq_n_s64(vaddq_s64(v460, v449), 0x20uLL);
                                            v463 = vshrq_n_s64(v461, 0x20uLL);
                                            v464 = vbslq_s8(vcgtq_u64(v453, v463), v453, v463);
                                            v465 = vbslq_s8(vcgtq_u64(v454, v462), v454, v462);
                                            v466 = v465.i64[1] << 32;
                                            v467 = vshlq_n_s64(v464, 0x20uLL);
                                            v468 = v465.i64[0];
                                            if ((v309 & 0x10) != 0)
                                            {
                                              v466 += 0x400000000;
                                              v467 = vaddq_s64(v467, vdupq_n_s64(0x400000000uLL));
                                              v471.i64[0] = (v465.i64[0] << 32) + 0x400000000;
                                              v471.i64[1] = v466;
                                              v472 = vshrq_n_s64(v471, 0x20uLL).u64[0];
                                              v473 = vdupq_n_s64(3uLL);
                                              v474 = vsraq_n_s64(v473, v471, 0x20uLL);
                                              v475 = vdupq_n_s64(0xFFFFFFFFFFFFFFFCLL);
                                              v469 = vandq_s8(v474, v475);
                                              v470 = vandq_s8(vsraq_n_s64(v473, v467, 0x20uLL), v475);
                                              v468 = v472;
                                            }

                                            else
                                            {
                                              v469 = 0uLL;
                                              v470 = 0uLL;
                                            }

                                            v476 = v468 << 32;
                                            if ((v309 & 8) != 0)
                                            {
                                              v467 = vaddq_s64(v467, vdupq_n_s64(0x200000000uLL));
                                              v599 = v467.i64[1] >> 32;
                                              v597 = v467.i64[0] >> 32;
                                              v466 += 0x200000000;
                                              v595 = v466 >> 32;
                                              v476 += 0x200000000;
                                              v593 = v476 >> 32;
                                              v478 = 4;
                                              v477 = 7;
                                            }

                                            else
                                            {
                                              v593 = 0;
                                              v595 = 0;
                                              v597 = 0;
                                              v599 = 0;
                                              v477 = 3;
                                              v478 = 3;
                                            }

                                            v479 = ((v476 >> 32) + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                            if ((v309 & 4) != 0)
                                            {
                                              v480 = ((v466 >> 32) + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                            }

                                            else
                                            {
                                              v479 = 0;
                                              v480 = 0;
                                            }

                                            if ((v309 & 4) != 0)
                                            {
                                              v481 = ((v467.i64[0] >> 32) + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                            }

                                            else
                                            {
                                              v481 = 0;
                                            }

                                            if ((v309 & 4) != 0)
                                            {
                                              v482 = ((v467.i64[1] >> 32) + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                            }

                                            else
                                            {
                                              v482 = 0;
                                            }

                                            v483 = v476 + 0x200000000;
                                            v484 = (v467.i64[0] + 0x300000000) >> 32;
                                            if ((v309 & 2) != 0)
                                            {
                                              v485 = (((v476 + 0x200000000) >> 32) + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                            }

                                            else
                                            {
                                              v485 = 0;
                                            }

                                            if ((v309 & 2) != 0)
                                            {
                                              v486 = (((v466 + 0x200000000) >> 32) + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                            }

                                            else
                                            {
                                              v486 = 0;
                                            }

                                            if ((v309 & 2) != 0)
                                            {
                                              v487 = (((v467.i64[1] + 0x100000000) >> 32) + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                            }

                                            else
                                            {
                                              v484 = 0;
                                              v487 = 0;
                                            }

                                            if ((v309 & 2) != 0)
                                            {
                                              v488 = v466 + 0x200000000;
                                            }

                                            else
                                            {
                                              v483 = v476;
                                              v488 = v466;
                                            }

                                            if ((v309 & 2) != 0)
                                            {
                                              v489 = v467.i64[0] + 0x300000000;
                                            }

                                            else
                                            {
                                              v489 = v467.i64[0];
                                            }

                                            if ((v309 & 2) != 0)
                                            {
                                              v490 = v467.i64[1] + 0x100000000;
                                            }

                                            else
                                            {
                                              v490 = v467.i64[1];
                                            }

                                            if (v309)
                                            {
                                              v495 = (v488 + 0x400000000) >> 32;
                                              v491 = (((v483 + 0x400000000) >> 32) + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                              v492 = (v495 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                              v493 = (((v489 + 0x400000000) >> 32) + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                              v494 = (((v490 + 0x400000000) >> 32) + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                            }

                                            else
                                            {
                                              v491 = 0;
                                              v492 = 0;
                                              v493 = 0;
                                              v494 = 0;
                                            }

                                            v857 = vdupq_n_s64(4uLL);
                                            v858 = v857;
                                            *v852 = 4;
                                            *&v852[8] = v857;
                                            *&v852[24] = 4;
                                            if ((v309 & 0x40000) != 0)
                                            {
                                              v814.i64[0] = v396;
                                              v814.i64[1] = v396;
                                              v815.i64[0] = v396;
                                              v815.i64[1] = v396;
                                              if ((v309 & 0x20000) == 0)
                                              {
LABEL_702:
                                                if ((v309 & 0x10000) == 0)
                                                {
                                                  goto LABEL_703;
                                                }

                                                goto LABEL_714;
                                              }
                                            }

                                            else if ((v309 & 0x20000) == 0)
                                            {
                                              goto LABEL_702;
                                            }

                                            v808.i64[0] = v633;
                                            v808.i64[1] = v629;
                                            v809.i64[0] = v623;
                                            v809.i64[1] = v620;
                                            if ((v309 & 0x10000) == 0)
                                            {
LABEL_703:
                                              if ((v309 & 0x8000) == 0)
                                              {
                                                goto LABEL_704;
                                              }

                                              goto LABEL_718;
                                            }

LABEL_714:
                                            if (v414 <= v484)
                                            {
                                              v500 = v484;
                                            }

                                            else
                                            {
                                              v500 = v414;
                                            }

                                            v804.i64[0] = v615;
                                            v804.i64[1] = v612;
                                            v805.i64[0] = (v500 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                            v805.i64[1] = v610;
                                            if ((v309 & 0x8000) == 0)
                                            {
LABEL_704:
                                              v497 = v418.i64[1];
                                              v496 = v418.i64[0];
                                              if ((v309 & 0x4000) == 0)
                                              {
                                                goto LABEL_706;
                                              }

                                              goto LABEL_705;
                                            }

LABEL_718:
                                            v799.i64[0] = v608;
                                            v799.i64[1] = v606;
                                            v800.i64[0] = v604;
                                            v800.i64[1] = v601;
                                            v497 = v418.i64[1];
                                            v496 = v418.i64[0];
                                            if ((v309 & 0x4000) == 0)
                                            {
LABEL_706:
                                              v498 = v496 + 0x200000000;
                                              v786.i64[0] = (v419.i32[0] + 3) & 0xFFFFFFFC;
                                              v786.i64[1] = (v419.i32[2] + 3) & 0xFFFFFFFC;
                                              v787.i64[0] = (v407 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                                              v787.i64[1] = (v421 + 3) & 0xFFFFFFFC;
                                              if ((v309 & 0x1000) == 0)
                                              {
                                                goto LABEL_724;
                                              }

                                              v499 = (v424 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                              v766.i64[0] = v499;
                                              v766.i64[1] = v499;
                                              v767.i64[0] = v499;
                                              v767.i64[1] = v499;
                                              if (v499 <= v638.i64[0])
                                              {
                                                if (v499 <= v638.i64[1])
                                                {
LABEL_709:
                                                  if (v499 > v639.i64[0])
                                                  {
                                                    goto LABEL_710;
                                                  }

                                                  goto LABEL_722;
                                                }
                                              }

                                              else
                                              {
                                                v638.i64[0] = (v424 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                                if (v499 <= v638.i64[1])
                                                {
                                                  goto LABEL_709;
                                                }
                                              }

                                              v638.i64[1] = (v424 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                              if (v499 > v639.i64[0])
                                              {
LABEL_710:
                                                v639.i64[0] = (v424 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                                if (v499 <= v639.i64[1])
                                                {
LABEL_724:
                                                  v501.i64[0] = v446.i32[0];
                                                  v501.i64[1] = v446.i32[1];
                                                  v502 = v501;
                                                  v503 = (v497 + 0x200000000) >> 32;
                                                  if ((v309 & 0x800) != 0)
                                                  {
                                                    v504 = (v583 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                                    v749.i64[0] = v504;
                                                    v749.i64[1] = v504;
                                                    v750.i64[0] = v504;
                                                    v750.i64[1] = v504;
                                                    if (v504 > v638.i64[0])
                                                    {
                                                      v638.i64[0] = (v583 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                                    }

                                                    if (v504 > v638.i64[1])
                                                    {
                                                      v638.i64[1] = (v583 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                                    }
                                                  }

                                                  v738.i64[0] = (v427.i64[0] + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                                  v738.i64[1] = (v427.i64[1] + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                                  v739.i64[0] = v738.i64[1];
                                                  v739.i64[1] = v738.i64[1];
                                                  if (v498 >> 32 <= (v441.i64[0] >> 32))
                                                  {
                                                    v505 = v441.i64[0] >> 32;
                                                  }

                                                  else
                                                  {
                                                    v505 = v498 >> 32;
                                                  }

                                                  if (v503 <= v441.i64[1] >> 32)
                                                  {
                                                    v503 = v441.i64[1] >> 32;
                                                  }

                                                  v506 = vbslq_s8(vcgtq_u64(v502, v445), v502, v445);
                                                  v725.i64[0] = (v505 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                                  v725.i64[1] = (v503 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                                  v507 = vdupq_n_s64(3uLL);
                                                  v508 = vdupq_n_s64(0xFFFFFFFFFFFFFFFCLL);
                                                  v726 = vandq_s8(vaddq_s64(v506, v507), v508);
                                                  v509 = vandq_s8(vaddq_s64(v450, v507), v508);
                                                  v510 = vandq_s8(vaddq_s64(v451, v507), v508);
                                                  v718 = v509;
                                                  v719 = v510;
                                                  v638 = v509;
                                                  v639 = v510;
                                                  v511 = v509.u64[1];
                                                  v512 = v509.i64[0];
                                                  v513 = v510.i64[0];
                                                  if ((v309 & 0x80) == 0)
                                                  {
                                                    goto LABEL_739;
                                                  }

                                                  v710.i64[0] = v455;
                                                  v710.i64[1] = v455;
                                                  v711.i64[0] = v455;
                                                  v711.i64[1] = v455;
                                                  if (v455 <= v509.i64[0])
                                                  {
                                                    if (v455 <= v509.i64[1])
                                                    {
LABEL_737:
                                                      if (v455 > v510.i64[0])
                                                      {
                                                        goto LABEL_738;
                                                      }

                                                      goto LABEL_742;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v638.i64[0] = v455;
                                                    v512 = v455;
                                                    if (v455 <= v509.i64[1])
                                                    {
                                                      goto LABEL_737;
                                                    }
                                                  }

                                                  v638.i64[1] = v455;
                                                  v511 = v455;
                                                  if (v455 > v510.i64[0])
                                                  {
LABEL_738:
                                                    v639.i64[0] = v455;
                                                    v513 = v455;
                                                    if (v455 <= v510.i64[1])
                                                    {
LABEL_739:
                                                      v455 = v510.u64[1];
                                                      goto LABEL_744;
                                                    }

LABEL_743:
                                                    v639.i64[1] = v455;
LABEL_744:
                                                    v704 = v462;
                                                    v705 = v463;
                                                    if (v462.i64[0] <= v512)
                                                    {
                                                      v514 = v462.i64[1];
                                                      if (v462.i64[1] <= v511)
                                                      {
LABEL_746:
                                                        v515 = v463.i64[0];
                                                        if (v463.i64[0] > v513)
                                                        {
                                                          goto LABEL_747;
                                                        }

                                                        goto LABEL_753;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v514 = v462.i64[1];
                                                      v638.i64[0] = v462.i64[0];
                                                      v512 = v462.i64[0];
                                                      if (v462.i64[1] <= v511)
                                                      {
                                                        goto LABEL_746;
                                                      }
                                                    }

                                                    v638.i64[1] = v514;
                                                    v511 = v514;
                                                    v515 = v463.i64[0];
                                                    if (v463.i64[0] > v513)
                                                    {
LABEL_747:
                                                      v639.i64[0] = v515;
                                                      v513 = v515;
                                                      v516 = v463.u64[1];
                                                      if (v463.i64[1] <= v455)
                                                      {
                                                        goto LABEL_748;
                                                      }

                                                      goto LABEL_754;
                                                    }

LABEL_753:
                                                    v516 = v463.u64[1];
                                                    if (v463.i64[1] <= v455)
                                                    {
LABEL_748:
                                                      if ((v309 & 0x20) == 0)
                                                      {
                                                        goto LABEL_749;
                                                      }

                                                      goto LABEL_755;
                                                    }

LABEL_754:
                                                    v639.i64[1] = v516;
                                                    v455 = v516;
                                                    if ((v309 & 0x20) == 0)
                                                    {
LABEL_749:
                                                      if ((v309 & 0x10) == 0)
                                                      {
                                                        goto LABEL_765;
                                                      }

LABEL_756:
                                                      v685 = v469;
                                                      v686 = v470;
                                                      if (v469.i64[0] <= v512)
                                                      {
                                                        v524 = v470.i64[0];
                                                        if (v469.i64[1] <= v511)
                                                        {
LABEL_758:
                                                          v525 = v470.u64[1];
                                                          if (v524 > v513)
                                                          {
                                                            goto LABEL_759;
                                                          }

                                                          goto LABEL_763;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v638.i64[0] = v469.i64[0];
                                                        v512 = v469.i64[0];
                                                        v524 = v470.i64[0];
                                                        if (v469.i64[1] <= v511)
                                                        {
                                                          goto LABEL_758;
                                                        }
                                                      }

                                                      v638.i64[1] = v469.i64[1];
                                                      v511 = v469.u64[1];
                                                      v525 = v470.u64[1];
                                                      if (v524 > v513)
                                                      {
LABEL_759:
                                                        v639.i64[0] = v524;
                                                        v513 = v524;
                                                        if (v525 <= v455)
                                                        {
LABEL_765:
                                                          if ((v309 & 8) == 0)
                                                          {
                                                            goto LABEL_775;
                                                          }

                                                          v526 = (v477 + v595) & 0xFFFFFFFFFFFFFFFCLL;
                                                          v527 = (v478 + v597) & 0xFFFFFFFFFFFFFFFCLL;
                                                          v676.i64[0] = (v477 + v593) & 0xFFFFFFFFFFFFFFFCLL;
                                                          v676.i64[1] = v526;
                                                          v528 = (v478 + v599) & 0xFFFFFFFFFFFFFFFCLL;
                                                          v677.i64[0] = v527;
                                                          v677.i64[1] = v528;
                                                          if (v676.i64[0] <= v512)
                                                          {
                                                            if (v526 <= v511)
                                                            {
LABEL_768:
                                                              if (v527 > v513)
                                                              {
                                                                goto LABEL_769;
                                                              }

                                                              goto LABEL_773;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v638.i64[0] = (v477 + v593) & 0xFFFFFFFFFFFFFFFCLL;
                                                            v512 = v638.i64[0];
                                                            if (v526 <= v511)
                                                            {
                                                              goto LABEL_768;
                                                            }
                                                          }

                                                          v638.i64[1] = (v477 + v595) & 0xFFFFFFFFFFFFFFFCLL;
                                                          v511 = v638.u64[1];
                                                          if (v527 > v513)
                                                          {
LABEL_769:
                                                            v639.i64[0] = (v478 + v597) & 0xFFFFFFFFFFFFFFFCLL;
                                                            v513 = v639.i64[0];
                                                            if (v528 <= v455)
                                                            {
LABEL_775:
                                                              if ((v309 & 4) == 0)
                                                              {
LABEL_780:
                                                                v482 = v455;
                                                                goto LABEL_785;
                                                              }

                                                              v673.i64[0] = v479;
                                                              v673.i64[1] = v480;
                                                              v674.i64[0] = v481;
                                                              v674.i64[1] = v482;
                                                              if (v479 <= v512)
                                                              {
                                                                if (v480 <= v511)
                                                                {
LABEL_778:
                                                                  if (v481 > v513)
                                                                  {
                                                                    goto LABEL_779;
                                                                  }

                                                                  goto LABEL_783;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v638.i64[0] = v479;
                                                                v512 = v479;
                                                                if (v480 <= v511)
                                                                {
                                                                  goto LABEL_778;
                                                                }
                                                              }

                                                              v638.i64[1] = v480;
                                                              v511 = v480;
                                                              if (v481 > v513)
                                                              {
LABEL_779:
                                                                v639.i64[0] = v481;
                                                                v513 = v481;
                                                                if (v482 <= v455)
                                                                {
                                                                  goto LABEL_780;
                                                                }

LABEL_784:
                                                                v639.i64[1] = v482;
LABEL_785:
                                                                if ((v309 & 2) == 0)
                                                                {
LABEL_790:
                                                                  v487 = v482;
                                                                  goto LABEL_795;
                                                                }

                                                                v529 = (v484 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                                                v664.i64[0] = v485;
                                                                v664.i64[1] = v486;
                                                                v665.i64[0] = v529;
                                                                v665.i64[1] = v487;
                                                                if (v485 <= v512)
                                                                {
                                                                  if (v486 <= v511)
                                                                  {
LABEL_788:
                                                                    if (v529 > v513)
                                                                    {
                                                                      goto LABEL_789;
                                                                    }

                                                                    goto LABEL_793;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v638.i64[0] = v485;
                                                                  v512 = v485;
                                                                  if (v486 <= v511)
                                                                  {
                                                                    goto LABEL_788;
                                                                  }
                                                                }

                                                                v638.i64[1] = v486;
                                                                v511 = v486;
                                                                if (v529 > v513)
                                                                {
LABEL_789:
                                                                  v639.i64[0] = (v484 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                                                  v513 = v639.i64[0];
                                                                  if (v487 <= v482)
                                                                  {
                                                                    goto LABEL_790;
                                                                  }

LABEL_794:
                                                                  v639.i64[1] = v487;
LABEL_795:
                                                                  if ((v309 & 1) == 0)
                                                                  {
                                                                    goto LABEL_805;
                                                                  }

                                                                  v655.i64[0] = v491;
                                                                  v655.i64[1] = v492;
                                                                  v656.i64[0] = v493;
                                                                  v656.i64[1] = v494;
                                                                  if (v491 <= v512)
                                                                  {
                                                                    if (v492 <= v511)
                                                                    {
LABEL_798:
                                                                      if (v493 > v513)
                                                                      {
                                                                        goto LABEL_799;
                                                                      }

                                                                      goto LABEL_803;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v638.i64[0] = v491;
                                                                    if (v492 <= v511)
                                                                    {
                                                                      goto LABEL_798;
                                                                    }
                                                                  }

                                                                  v638.i64[1] = v492;
                                                                  if (v493 > v513)
                                                                  {
LABEL_799:
                                                                    v639.i64[0] = v493;
                                                                    if (v494 <= v487)
                                                                    {
                                                                      goto LABEL_805;
                                                                    }

                                                                    goto LABEL_804;
                                                                  }

LABEL_803:
                                                                  if (v494 <= v487)
                                                                  {
                                                                    goto LABEL_805;
                                                                  }

LABEL_804:
                                                                  v639.i64[1] = v494;
                                                                  goto LABEL_805;
                                                                }

LABEL_793:
                                                                if (v487 <= v482)
                                                                {
                                                                  goto LABEL_790;
                                                                }

                                                                goto LABEL_794;
                                                              }

LABEL_783:
                                                              if (v482 <= v455)
                                                              {
                                                                goto LABEL_780;
                                                              }

                                                              goto LABEL_784;
                                                            }

LABEL_774:
                                                            v639.i64[1] = (v478 + v599) & 0xFFFFFFFFFFFFFFFCLL;
                                                            v455 = v639.u64[1];
                                                            goto LABEL_775;
                                                          }

LABEL_773:
                                                          if (v528 <= v455)
                                                          {
                                                            goto LABEL_775;
                                                          }

                                                          goto LABEL_774;
                                                        }

LABEL_764:
                                                        v639.i64[1] = v525;
                                                        v455 = v525;
                                                        goto LABEL_765;
                                                      }

LABEL_763:
                                                      if (v525 <= v455)
                                                      {
                                                        goto LABEL_765;
                                                      }

                                                      goto LABEL_764;
                                                    }

LABEL_755:
                                                    v463.i32[0] = 0;
                                                    v509.i32[0] = v309 & 0x20;
                                                    v517 = vdupq_lane_s32(*&vceqq_s32(v509, v463), 0);
                                                    v518 = vbicq_s8(v465, v517);
                                                    v519 = vbicq_s8(v464, v517);
                                                    v520 = vdupq_n_s64(3uLL);
                                                    v521 = vaddq_s64(v519, v520);
                                                    v522 = vaddq_s64(v518, v520);
                                                    v523 = vdupq_n_s64(0xFFFFFFFFFFFFFFFCLL);
                                                    v697 = vandq_s8(v521, v523);
                                                    v696 = vandq_s8(v522, v523);
                                                    if ((v309 & 0x10) == 0)
                                                    {
                                                      goto LABEL_765;
                                                    }

                                                    goto LABEL_756;
                                                  }

LABEL_742:
                                                  if (v455 <= v510.i64[1])
                                                  {
                                                    goto LABEL_739;
                                                  }

                                                  goto LABEL_743;
                                                }

LABEL_723:
                                                v639.i64[1] = (v424 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                                                goto LABEL_724;
                                              }

LABEL_722:
                                              if (v499 <= v639.i64[1])
                                              {
                                                goto LABEL_724;
                                              }

                                              goto LABEL_723;
                                            }

LABEL_705:
                                            v794.i64[0] = v591;
                                            v794.i64[1] = v589;
                                            v795.i64[0] = v587;
                                            v795.i64[1] = v585;
                                            goto LABEL_706;
                                          }

                                          v400 = (1.0 / v649[57].f32[1]);
                                          if (!v370)
                                          {
                                            v546 = 0;
                                            v547 = 0.0;
                                            do
                                            {
                                              v548 = v547;
                                              v549 = pow(v548, v400);
                                              v550 = v549 * 65535.0 + 0.5;
                                              v551 = v550 & ~(v550 >> 31);
                                              if (v551 >= 0xFFFF)
                                              {
                                                LOWORD(v551) = -1;
                                              }

                                              *(sig + v546) = v551;
                                              v547 = v547 + 0.0000152590219;
                                              v546 += 2;
                                            }

                                            while (v546 != 0x20000);
                                            goto LABEL_572;
                                          }

                                          if (v649[57].i8[0])
                                          {
                                            v401 = 0;
                                            v402 = 0.0;
                                            do
                                            {
                                              v403 = v402;
                                              v404 = pow(v403, v400);
                                              v405 = v404 * 65535.0 + 0.5;
                                              v406 = v405 & ~(v405 >> 31);
                                              if (v406 >= 0xFFFF)
                                              {
                                                LOWORD(v406) = -1;
                                              }

                                              *(sig + v401) = v406;
                                              v402 = v402 + 0.0000152590219;
                                              v401 += 2;
                                            }

                                            while (v401 != 0x20000);
                                            goto LABEL_572;
                                          }

                                          v552 = 0;
                                          v553 = 0.0;
                                          while (1)
                                          {
                                            v567 = v553;
                                            v563 = 0.0;
                                            if (v567 >= 0.0)
                                            {
                                              if (v567 < 0.1)
                                              {
                                                v554 = v373[53].f32[1];
                                                v555 = 0.1;
                                                v556 = 0.0;
                                                v557 = 2;
                                                v558 = &v373[53];
LABEL_849:
                                                v559 = v567 / v555;
                                                goto LABEL_850;
                                              }

                                              if (v567 < 0.2)
                                              {
                                                v556 = v373[53].f32[1];
                                                v554 = v373[54].f32[1] - v556;
                                                v567 = v567 + -0.1;
                                                v555 = 0.1;
                                                v557 = 4;
                                                v558 = &v373[54];
                                                goto LABEL_849;
                                              }

                                              if (v567 < 0.5)
                                              {
                                                v556 = v373[54].f32[1];
                                                v554 = v373[55].f32[1] - v556;
                                                v567 = v567 + -0.2;
                                                v555 = 0.3;
                                                v557 = 6;
                                                v558 = &v373[55];
                                                goto LABEL_849;
                                              }

                                              if (v567 < 1.0)
                                              {
                                                v556 = v373[55].f32[1];
                                                v554 = 1.0 - v556;
                                                v559 = (v567 + -0.5) + (v567 + -0.5);
                                                v555 = 0.5;
                                                v557 = 7;
                                                v558 = &v373[56];
LABEL_850:
                                                v560 = v555 / v554;
                                                v561 = v560 * *v558;
                                                v562 = ((v560 * v373[53].f32[v557]) + v561) + -2.0;
                                                v563 = v556 + (v554 * (((v559 * (v559 * (1.0 - (v561 + v562)))) + ((v559 * (v559 * v562)) * v559)) + (v561 * v559)));
                                                if (v563 < 0.0)
                                                {
                                                  v563 = 0.0;
                                                }

                                                goto LABEL_852;
                                              }

                                              v563 = ((v567 + -1.0) * v373[56].f32[1]) + 1.0;
                                            }

LABEL_852:
                                            v564 = pow(v563, v400);
                                            v565 = v564 * 65535.0 + 0.5;
                                            v566 = v565 & ~(v565 >> 31);
                                            if (v566 >= 0xFFFF)
                                            {
                                              LOWORD(v566) = -1;
                                            }

                                            *(sig + v552) = v566;
                                            v553 = v553 + 0.0000152590219;
                                            v552 += 2;
                                            if (v552 == 0x20000)
                                            {
                                              goto LABEL_572;
                                            }
                                          }
                                        }

                                        v360 = 65537 - v345;
                                        if (65537 - v345 >= 4)
                                        {
                                          if (v360 < 0x10)
                                          {
                                            v361 = 0;
                                            goto LABEL_554;
                                          }

                                          v362 = (v352 - v354);
                                          v361 = v360 & 0xFFFFFFFFFFFFFFF0;
                                          v363 = vdupq_n_s16(v358);
                                          v364 = v360 & 0xFFFFFFFFFFFFFFF0;
                                          do
                                          {
                                            v362[-1] = v363;
                                            *v362 = v363;
                                            v362 += 2;
                                            v364 -= 16;
                                          }

                                          while (v364);
                                          if (v360 == v361)
                                          {
                                            goto LABEL_560;
                                          }

                                          if ((v360 & 0xC) != 0)
                                          {
LABEL_554:
                                            v359 = (v356 & 0xFFFFFFFFFFFFFFFCLL) + v345 - 1;
                                            v365 = vdup_n_s16(v358);
                                            v366 = (v352 + 2 * v361 - v354 - 16);
                                            v367 = v361 - (v360 & 0xFFFFFFFFFFFFFFFCLL);
                                            do
                                            {
                                              *v366++ = v365;
                                              v367 += 4;
                                            }

                                            while (v367);
                                            if (v360 == (v360 & 0xFFFFFFFFFFFFFFFCLL))
                                            {
                                              goto LABEL_560;
                                            }

                                            goto LABEL_559;
                                          }

                                          v359 = (v356 & 0xFFFFFFFFFFFFFFF0) + v345 - 1;
                                        }

                                        do
                                        {
LABEL_559:
                                          *(v347 + 2 * v359++) = v358;
                                        }

                                        while (v359 != 0x10000);
                                        goto LABEL_560;
                                      }
                                    }

                                    v309 |= 0x10000u;
                                    v311 = *(v632 + 268);
                                    v803 = sub_233835208;
                                    v806 = v311;
                                    goto LABEL_503;
                                  }

                                  v614 |= 4u;
                                  v212 = v881;
                                  v890 = 0u;
                                  v891 = 0u;
                                  v888 = 0u;
                                  v889 = 0u;
                                  v896 = 0u;
                                  v897 = 0u;
                                  v213 = llroundf(*v626.i32);
                                  v894 = 0u;
                                  v895 = 0u;
                                  v214 = llroundf(*&v626.i32[1]);
                                  v215 = llroundf(v602);
                                  if (v619 == 7 || v619 == 5)
                                  {
                                    v225 = 0;
                                    v226 = 0;
                                    v227 = 0;
                                    v216 = &v897 + 12;
                                    v217 = (&v897 + 4);
                                    v218 = &v896 + 2;
                                    v219 = &v896;
                                    v220 = &v895 + 12;
                                    v221 = (&v895 + 4);
                                    v222 = &v894 + 2;
                                    v223 = v598.f32[0];
                                    LODWORD(v894) = v598.i32[0];
                                    v224 = v600;
                                  }

                                  else
                                  {
                                    if (v619 != 4)
                                    {
                                      goto LABEL_383;
                                    }

                                    v216 = &v897 + 8;
                                    v217 = &v897;
                                    v218 = &v896 + 3;
                                    v219 = &v896 + 1;
                                    v220 = &v895 + 8;
                                    v221 = &v895;
                                    v222 = &v894 + 3;
                                    v223 = v600;
                                    *(&v894 + 1) = v600;
                                    v224 = v598.f32[0];
                                    v225 = v215;
                                    v226 = v213;
                                    v227 = v214;
                                    v215 = 0;
                                    v214 = 0;
                                    v213 = 0;
                                  }

                                  *v222 = v224;
                                  *v221 = v598.i32[1];
                                  *v220 = v598.i32[1];
                                  *v219 = v224;
                                  *v218 = v223;
                                  *v217 = v598.i32[1];
                                  *v216 = v598.i32[1];
                                  v888.i64[0] = __PAIR64__(v225, v213);
                                  v888.i64[1] = __PAIR64__(v226, v215);
                                  *&v889 = __PAIR64__(v214, v227);
                                  *(&v889 + 1) = __PAIR64__(v214, v227);
                                  *&v890 = __PAIR64__(v226, v215);
                                  *(&v890 + 1) = __PAIR64__(v225, v213);
                                  *&v891 = __PAIR64__(v214, v227);
                                  *(&v891 + 1) = __PAIR64__(v214, v227);
LABEL_383:
                                  v228 = 0;
                                  v627 = 0;
                                  v603 = v212[1].__opaque;
                                  do
                                  {
                                    if (!v675[v228])
                                    {
                                      v229 = *&v603[8 * v627];
                                      v230 = v888.u32[v228];
                                      v231 = v230;
                                      v232 = *(&v894 + v228);
                                      for (n = v228; n != 16; ++n)
                                      {
                                        if (v888.i32[n] == v230 && *(&v894 + n) == v232)
                                        {
                                          v675[n] = v229;
                                        }
                                      }

                                      ++v627;
                                      if (v230 <= 0 || (bzero(v229, 2 * v230), !WORD1(v230)))
                                      {
                                        v234 = v230 << 32;
                                        v235 = 0.5;
                                        v236 = 131070 - 2 * v230;
                                        do
                                        {
                                          v229[v231] = v235;
                                          v237 = v231 + 1;
                                          v236 -= 2;
                                          v234 += 0x100000000;
                                          if (v231 > 65534)
                                          {
                                            break;
                                          }

                                          v235 = v235 + v232;
                                          ++v231;
                                        }

                                        while (v235 <= 32767.0);
                                        if (v237 - 1 <= 65534)
                                        {
                                          memset_pattern16(v229 + (v234 >> 31), &unk_2339092C0, (v236 & 0x1FFFFFFFELL) + 2);
                                        }
                                      }
                                    }

                                    ++v228;
                                  }

                                  while (v228 != 16);
                                  v672 = sub_2338289A0;
                                  goto LABEL_399;
                                }

                                do
                                {
                                  if (v110 == *(v120 + 5) && !*(v120 + 24))
                                  {
                                    goto LABEL_242;
                                  }

                                  if (!atomic_load(v120 + 4))
                                  {
                                    v122 = v120;
                                  }

                                  v120 = *(v120 + 1);
                                  ++v121;
                                }

                                while (v120);
LABEL_233:
                                if (v122 && v121 > 3)
                                {
LABEL_241:
                                  *(v122 + 5) = v110;
                                  v122[24] = v111;
                                  *(v122 + 7) = v112;
                                  *(v122 + 8) = v113;
                                  *(v122 + 9) = v114;
                                  *(v122 + 10) = v115;
                                  *(v122 + 11) = v116;
                                  *(v122 + 12) = v117;
                                  v122[60] = v119;
                                  *(v122 + 61) = v894;
                                  v122[63] = BYTE2(v894);
                                  v120 = v122;
                                  *(v122 + 13) = v118;
                                  *(v122 + 14) = v625;
                                  *(v122 + 65567) = 0;
                                  goto LABEL_242;
                                }
                              }

                              v122 = sub_2338F6084(0x20040uLL);
                              if (v122)
                              {
                                v126 = qword_27DE3DE00;
                                v127 = *(qword_27DE3DE00 + 104);
                                *v122 = 0;
                                *(v122 + 1) = v127;
                                atomic_store(0, v122 + 4);
                                if (v127)
                                {
                                  *v127 = v122;
                                }

                                *(v126 + 104) = v122;
                                goto LABEL_241;
                              }

                              v880 = 0;
                              pthread_mutex_unlock(qword_27DE3DE00);
                              v104 = v881;
                              if (v881)
                              {
                                goto LABEL_192;
                              }
                            }

                            return 0;
                          }

LABEL_177:
                          v79 = 320;
                          goto LABEL_190;
                        }

LABEL_176:
                        *(&v888 + v67++) = xmmword_2339091A0;
                        if (v67 >= 1)
                        {
                          goto LABEL_163;
                        }

                        goto LABEL_177;
                      }
                    }

                    v89 = 0;
                    v90 = 0;
                    v91 = 0;
                    LODWORD(v884) = v649[41].i32[0];
                    DWORD2(v884) = v85;
                    DWORD1(v885) = v84;
                    HIDWORD(v885) = v84;
                    LODWORD(v886) = v85;
                    DWORD2(v886) = v83;
                    DWORD1(v887) = v84;
                    HIDWORD(v887) = v84;
                    LODWORD(v894) = v80;
                    goto LABEL_299;
                  }

LABEL_135:
                  v889 = xmmword_233909000;
                  if (v74 < 3)
                  {
                    v67 = 2;
                  }

                  else
                  {
                    v890 = xmmword_233909010;
                    if (v74 == 3)
                    {
                      v67 = 3;
                    }

                    else
                    {
                      v891 = xmmword_233909020;
                      if (v74 < 5)
                      {
                        v67 = 4;
                      }

                      else
                      {
                        v892 = xmmword_233909030;
                        if (v74 == 5)
                        {
                          v67 = 5;
                        }

                        else
                        {
                          v893 = xmmword_233909040;
                          v67 = 6;
                        }
                      }
                    }
                  }

                  goto LABEL_139;
                }

                ++v74;
              }

              v888 = xmmword_233908FF0;
              goto LABEL_135;
            }
          }

          else
          {
            if (v52.i32[1] == v57.i32[0])
            {
              v63 = 6;
            }

            else
            {
              v63 = 2;
            }

            v62 |= v63;
            if (v57.i32[1] == v57.i32[0])
            {
              v62 |= 8u;
            }

            if (v49 != v48)
            {
              if (v57.i32[1] == v52.i32[1])
              {
                v68 = 12;
              }

              else
              {
                v68 = 4;
              }

              v69 = v62 | v68;
              if ((v62 & 4) != 0)
              {
                v65 = 2;
              }

              else
              {
                v62 = v69;
                v65 = 3;
              }

              goto LABEL_114;
            }

            if (v57.i32[0] == v51)
            {
              v62 |= 0x10u;
            }

            if (v57.i32[0] == v53)
            {
              v62 |= 0x20u;
            }

            if ((v62 & 4) != 0)
            {
              v65 = 2;
              goto LABEL_114;
            }

            if (v57.i32[1] == v52.i32[1])
            {
              v64 = 12;
            }

            else
            {
              v64 = 4;
            }

            v62 |= v64;
            v65 = 3;
          }

          if (v52.i32[1] == v51)
          {
            v62 |= 0x10u;
          }

          if (v52.i32[1] == v53)
          {
            v62 |= 0x20u;
          }

          goto LABEL_114;
        }

LABEL_52:
        if (!*(qword_27DE3DE00 + 96))
        {
          pthread_mutex_lock(qword_27DE3DE00);
          v38 = qword_27DE3DE00;
          if (!*(qword_27DE3DE00 + 96))
          {
            v39 = 0;
            v40 = qword_27DE3DE00 + 985472;
            LODWORD(v41) = 0x80000000;
            *(qword_27DE3DE00 + 985472) = 0x80000000;
            v42 = (v38 + 985476);
            v43 = -16383;
            do
            {
              if (v43 + 0x4000 > v39)
              {
                v41 = 0x10000uLL / (v43 + 0x4000);
                v39 = 0x10000 / v41;
              }

              *v42++ = v41;
            }

            while (!__CFADD__(v43++, 1));
            *(v38 + 96) = v40;
          }

          pthread_mutex_unlock(v38);
        }

        goto LABEL_60;
      }
    }
  }

  return v2;
}

void *sub_233826508(unsigned int *a1)
{
  v2 = *(a1 + 2);
  v3 = a1[1];
  v4 = *(v2 + 164);
  result = sub_233818CBC(a1);
  if (!result)
  {
    return result;
  }

  v6 = result;
  if ((*(v2 + 8) & 1) == 0)
  {
    v7 = *a1;
    v9 = result[12];
    v8 = result[13];
    v10 = *(v2 + 16);
    if (!v10)
    {
      v10 = result[12];
    }

    v11 = *(v2 + 24) ? *(v2 + 24) : result[13];
    v12 = (v8 + v11 - 1) / v11;
    v13 = v7 / v12;
    if (v7 / v12 < (v9 + v10 - 1) / v10)
    {
      v14 = *(v2 + 10);
      v15 = v7 % v12 * v11;
      if (v15 + v11 <= v8)
      {
        v16 = v11;
      }

      else
      {
        v16 = v8 - v15;
      }

      v17 = v13 * v10;
      v18 = v9 - v13 * v10;
      if (v13 * v10 + v10 <= v9)
      {
        v18 = v10;
      }

      v19 = *(v2 + 32);
      v20 = *(v2 + 136) + v15;
      if (v20 - v19 < 0)
      {
        v21 = 1;
      }

      else
      {
        v21 = *(v2 + 10);
      }

      v22 = v21 == 0;
      if (v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = v20 - v19;
      }

      if (v22)
      {
        v20 = *(v2 + 32);
      }

      if (*(v2 + 10))
      {
        v24 = result[1];
      }

      else
      {
        v25 = v20 + v16 + *(v2 + 40);
        v24 = result[1];
        if (v25 + v23 <= v24)
        {
          goto LABEL_28;
        }
      }

      v25 = v24 - v23;
LABEL_28:
      result[26] = v20;
      v26 = *(v2 + 48);
      v27 = *(v2 + 128) + v17;
      v28 = v27 - v26;
      if (v27 - v26 < 0)
      {
        v29 = 1;
      }

      else
      {
        v29 = v14;
      }

      if (v29)
      {
        v28 = 0;
        v26 = *(v2 + 128) + v17;
      }

      v30 = *v6;
      v31 = v26 + v18;
      if ((v14 & 1) != 0 || (v32 = *(v2 + 56) + v31, v32 + v28 > v30))
      {
        v32 = v30 - v28;
      }

      *(v6 + 192) = *(v6 + 120) + *(v6 + 112) * v15 + 3 * v17 * (*(v2 + 152) >> 3);
      *(v6 + 200) = v26;
      *(v6 + 168) = v18;
      *(v6 + 176) = v16;
      *(v6 + 136) = v32;
      *(v6 + 144) = v25;
      *(v6 + 360) = v32 >> 1;
      *(v6 + 368) = v25 >> 1;
      v33 = *(v6 + 16);
      v34 = *(v6 + 24) + v33 * v23 + 2 * v28;
      *(v6 + 80) = v33;
      *(v6 + 88) = v34;
      *(v6 + 64) = v23;
      *(v6 + 72) = v28;
      v35 = v25 - (v20 + v16);
      *(v6 + 32) = v20;
      *(v6 + 40) = v35;
      v36 = v32 - v31;
      *(v6 + 48) = v26;
      *(v6 + 56) = v32 - v31;
      v37 = *(v2 + 164);
      v38 = *(v6 + 152);
      v39 = *(v6 + 160);
      if ((v37 & 0x20) != 0)
      {
        v99 = *(v6 + 216);
        v98 = *(v6 + 224);
        *(v6 + 152) = v99;
        *(v6 + 160) = v98;
        *(v6 + 216) = v38;
        *(v6 + 224) = v39;
        v38 = v99;
        v39 = v98;
        *(v6 + 232) = v33;
        *(v6 + 240) = v34;
        *(v6 + 248) = v99;
        *(v6 + 256) = v98;
        if ((v37 & 1) == 0)
        {
LABEL_38:
          if ((v37 & 2) == 0)
          {
            goto LABEL_39;
          }

          goto LABEL_58;
        }
      }

      else
      {
        *(v6 + 232) = v33;
        *(v6 + 240) = v34;
        *(v6 + 248) = v38;
        *(v6 + 256) = v39;
        if ((v37 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      v100 = (v20 - *(v2 + 176)) & ~((v20 - *(v2 + 176)) >> 31);
      v101 = (v35 - *(v2 + 184)) & ~((v35 - *(v2 + 184)) >> 31);
      v102 = (v26 - *(v2 + 192)) & ~((v26 - *(v2 + 192)) >> 31);
      *(v6 + 544) = v32 - (((v36 - *(v2 + 200)) & ~((v36 - *(v2 + 200)) >> 31)) + v102);
      *(v6 + 552) = v25 - (v101 + v100);
      v103 = (2 * v102);
      *(v6 + 560) = v34 + v33 * v100 + v103;
      *(v6 + 568) = v33;
      *(v6 + 576) = v39 + v38 * v100 + v103;
      *(v6 + 584) = v38;
      *(v6 + 232) = v38;
      *(v6 + 240) = v39;
      v34 = v39;
      v33 = v38;
      if ((v37 & 2) == 0)
      {
LABEL_39:
        if ((v37 & 4) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_59;
      }

LABEL_58:
      v104 = (v20 - *(v2 + 248)) & ~((v20 - *(v2 + 248)) >> 31);
      v105 = (v35 - *(v2 + 256)) & ~((v35 - *(v2 + 256)) >> 31);
      v106 = (v26 - *(v2 + 264)) & ~((v26 - *(v2 + 264)) >> 31);
      *(v6 + 592) = v32 - (((v36 - *(v2 + 272)) & ~((v36 - *(v2 + 272)) >> 31)) + v106);
      *(v6 + 600) = v25 - (v105 + v104);
      v107 = 2 * v106;
      *(v6 + 608) = v34 + v33 * v104 + v107;
      *(v6 + 616) = v33;
      *(v6 + 624) = v39 + v38 * v104 + v107;
      *(v6 + 632) = v38;
      v108 = *(v6 + 264);
      *(v6 + 640) = *(v6 + 272) + v108 * v104 + (v106 >> 3);
      *(v6 + 648) = v108;
      *(v6 + 656) = *(v6 + 280);
      *(v6 + 232) = v38;
      *(v6 + 240) = v39;
      v34 = v39;
      v33 = v38;
      if ((v37 & 4) == 0)
      {
LABEL_40:
        if ((v37 & 8) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_60;
      }

LABEL_59:
      v109 = (v20 - *(v2 + 368)) & ~((v20 - *(v2 + 368)) >> 31);
      v110 = (v35 - *(v2 + 376)) & ~((v35 - *(v2 + 376)) >> 31);
      v111 = (v26 - *(v2 + 384)) & ~((v26 - *(v2 + 384)) >> 31);
      *(v6 + 664) = v32 - (((v36 - *(v2 + 392)) & ~((v36 - *(v2 + 392)) >> 31)) + v111);
      *(v6 + 672) = v25 - (v110 + v109);
      v112 = (2 * v111);
      *(v6 + 680) = v34 + v33 * v109 + v112;
      *(v6 + 688) = v33;
      *(v6 + 696) = v39 + v38 * v109 + v112;
      *(v6 + 704) = v38;
      *(v6 + 232) = v38;
      *(v6 + 240) = v39;
      if ((v37 & 8) == 0)
      {
LABEL_41:
        if ((v37 & 0x10) == 0)
        {
          goto LABEL_42;
        }

        goto LABEL_61;
      }

LABEL_60:
      v113 = (v20 - *(v2 + 536)) & ~((v20 - *(v2 + 536)) >> 31);
      v114 = (v35 - *(v2 + 544)) & ~((v35 - *(v2 + 544)) >> 31);
      v115 = (v26 - *(v2 + 552)) & ~((v26 - *(v2 + 552)) >> 31);
      *(v6 + 712) = v32 - (((v36 - *(v2 + 560)) & ~((v36 - *(v2 + 560)) >> 31)) + v115);
      *(v6 + 720) = v25 - (v114 + v113);
      *(v6 + 728) = v39 + v38 * v113 + (2 * v115);
      *(v6 + 736) = v38;
      *(v6 + 744) = *(v6 + 296);
      if ((v37 & 0x10) == 0)
      {
LABEL_42:
        if ((v37 & 0x20) == 0)
        {
          goto LABEL_44;
        }

        goto LABEL_43;
      }

LABEL_61:
      v116 = (v20 - *(v2 + 600)) & ~((v20 - *(v2 + 600)) >> 31);
      v117 = (v35 - *(v2 + 608)) & ~((v35 - *(v2 + 608)) >> 31);
      v118 = (v26 - *(v2 + 616)) & ~((v26 - *(v2 + 616)) >> 31);
      *(v6 + 752) = v32 - (((v36 - *(v2 + 624)) & ~((v36 - *(v2 + 624)) >> 31)) + v118);
      *(v6 + 760) = v25 - (v117 + v116);
      *(v6 + 768) = v39 + v38 * v116 + (2 * v118);
      *(v6 + 776) = v38;
      *(v6 + 784) = *(v6 + 304);
      if ((v37 & 0x20) == 0)
      {
LABEL_44:
        v46 = (v20 - *(v2 + 792)) & ~((v20 - *(v2 + 792)) >> 31);
        v47 = (v35 - *(v2 + 800)) & ~((v35 - *(v2 + 800)) >> 31);
        v48 = (v26 - *(v2 + 808)) & ~((v26 - *(v2 + 808)) >> 31);
        *(v6 + 856) = v32 - (((v36 - *(v2 + 816)) & ~((v36 - *(v2 + 816)) >> 31)) + v48);
        *(v6 + 864) = v25 - (v47 + v46);
        *(v6 + 872) = v39 + v38 * v46 + 2 * v48;
        *(v6 + 880) = v38;
        v49 = *(v6 + 376);
        v50 = *(v6 + 384);
        *(v6 + 888) = v50 + (v46 >> 1) * v49 + 6 * (v48 >> 1);
        *(v6 + 896) = v49;
        if ((v37 & 0x80) != 0)
        {
          v51 = (v20 - *(v2 + 856)) & ~((v20 - *(v2 + 856)) >> 31);
          v52 = (v35 - *(v2 + 864)) & ~((v35 - *(v2 + 864)) >> 31);
          v53 = (v26 - *(v2 + 872)) & ~((v26 - *(v2 + 872)) >> 31);
          *(v6 + 904) = v32 - (((v36 - *(v2 + 880)) & ~((v36 - *(v2 + 880)) >> 31)) + v53);
          *(v6 + 912) = v25 - (v52 + v51);
          *(v6 + 920) = v39 + v38 * v51 + 2 * v53;
          *(v6 + 928) = v38;
          v54 = *(v6 + 392);
          *(v6 + 936) = *(v6 + 400) + (v51 >> 1) * v54 + (v53 >> 1);
          *(v6 + 944) = v54;
        }

        v55 = *(v6 + 472);
        v56 = v20 - *(v2 + 928);
        v57 = *(v2 + 936);
        v58 = (v26 - *(v2 + 944)) & ~((v26 - *(v2 + 944)) >> 31);
        *(v6 + 952) = v32 - (((v36 - *(v2 + 952)) & ~((v36 - *(v2 + 952)) >> 31)) + v58);
        v59 = v56 & ~(v56 >> 31);
        *(v6 + 960) = v25 - (((v35 - v57) & ~((v35 - v57) >> 31)) + v59);
        v60 = 2 * v58;
        *(v6 + 968) = v39 + v38 * v59 + v60;
        *(v6 + 976) = v38;
        v61 = *(v6 + 504);
        *(v6 + 984) = v61 + v55 * v59 + v60;
        *(v6 + 992) = v55;
        *(v6 + 1000) = v50 + (v59 >> 1) * v49 + 6 * (v58 >> 1);
        *(v6 + 1008) = v49;
        v62 = (v20 - *(v2 + 992)) & ~((v20 - *(v2 + 992)) >> 31);
        LODWORD(v60) = (v35 - *(v2 + 1000)) & ~((v35 - *(v2 + 1000)) >> 31);
        v63 = (v26 - *(v2 + 1008)) & ~((v26 - *(v2 + 1008)) >> 31);
        *(v6 + 1016) = v32 - (((v36 - *(v2 + 1016)) & ~((v36 - *(v2 + 1016)) >> 31)) + v63);
        *(v6 + 1024) = v25 - (v60 + v62);
        v64 = 2 * v63;
        *(v6 + 1032) = v39 + v38 * v62 + v64;
        *(v6 + 1040) = v38;
        *(v6 + 1048) = v61 + v55 * v62 + v64;
        *(v6 + 1056) = v55;
        v66 = *(v6 + 416);
        v65 = *(v6 + 424);
        *(v6 + 1064) = v65 + v66 * v62 + (v63 >> 1);
        *(v6 + 1072) = v66;
        v67 = (v20 - *(v2 + 1096)) & ~((v20 - *(v2 + 1096)) >> 31);
        LODWORD(v63) = (v35 - *(v2 + 1104)) & ~((v35 - *(v2 + 1104)) >> 31);
        v68 = (v26 - *(v2 + 1112)) & ~((v26 - *(v2 + 1112)) >> 31);
        *(v6 + 1080) = v32 - (((v36 - *(v2 + 1120)) & ~((v36 - *(v2 + 1120)) >> 31)) + v68);
        *(v6 + 1088) = v25 - (v63 + v67);
        v69 = (2 * v68);
        *(v6 + 1096) = v39 + v38 * v67 + v69;
        *(v6 + 1104) = v38;
        v71 = *(v6 + 432);
        v70 = *(v6 + 440);
        *(v6 + 1112) = v70 + (v67 >> 1) * v71 + (v69 & 0xFFFFFFFC);
        *(v6 + 1120) = v71;
        if ((v37 & 0x800) != 0)
        {
          v72 = (v35 - *(v2 + 1192)) & ~((v35 - *(v2 + 1192)) >> 31);
          v73 = ((v20 - *(v2 + 1184)) & ~((v20 - *(v2 + 1184)) >> 31)) >> 1;
          v74 = ((v26 - *(v2 + 1200)) & ~((v26 - *(v2 + 1200)) >> 31)) >> 1;
          v75 = *(v6 + 368);
          *(v6 + 1128) = *(v6 + 360) - (v74 + (((v36 - *(v2 + 1208)) & ~((v36 - *(v2 + 1208)) >> 31)) >> 1));
          *(v6 + 1136) = v75 - (v73 + (v72 >> 1));
          *(v6 + 1144) = v50 + v49 * v73 + 6 * v74;
          *(v6 + 1152) = v49;
          v76 = *(v6 + 392);
          *(v6 + 1160) = *(v6 + 400) + v76 * v73 + v74;
          *(v6 + 1168) = v76;
          *(v6 + 1176) = *(v6 + 448);
          *(v6 + 1192) = *(v6 + 464);
        }

        if ((v37 & 0x1000) != 0)
        {
          v77 = (v20 - *(v2 + 1376)) & ~((v20 - *(v2 + 1376)) >> 31);
          v78 = (v36 - *(v2 + 1400)) & ~((v36 - *(v2 + 1400)) >> 31);
          v79 = ((v26 - *(v2 + 1392)) & ~((v26 - *(v2 + 1392)) >> 31)) >> 1;
          *(v6 + 1280) = v65 + v66 * v77 + v79;
          v80 = *(v6 + 368);
          v81 = *(v6 + 360) - (v79 + (v78 >> 1));
          v82 = (v35 - *(v2 + 1384)) & ~((v35 - *(v2 + 1384)) >> 31);
          *(v6 + 1288) = v66;
          v77 >>= 1;
          *(v6 + 1200) = v81;
          *(v6 + 1208) = v80 - v77 - (v82 >> 1);
          v83 = 2 * (v79 + 2 * v79);
          *(v6 + 1216) = v50 + v83 + v77 * v49;
          *(v6 + 1224) = *(v6 + 408) + v83 + v77 * v49;
          *(v6 + 1232) = v49;
          *(v6 + 1240) = v70 + v77 * v71 + 4 * v79;
          *(v6 + 1248) = v71;
          *(v6 + 1256) = *(v6 + 448);
          *(v6 + 1272) = *(v6 + 464);
        }

        v84 = (v20 - *(v2 + 1512)) & ~((v20 - *(v2 + 1512)) >> 31);
        v85 = (v35 - *(v2 + 1520)) & ~((v35 - *(v2 + 1520)) >> 31);
        v86 = (v26 - *(v2 + 1528)) & ~((v26 - *(v2 + 1528)) >> 31);
        *(v6 + 1296) = v32 - (((v36 - *(v2 + 1536)) & ~((v36 - *(v2 + 1536)) >> 31)) + v86);
        *(v6 + 1304) = v25 - (v85 + v84);
        *(v6 + 1312) = v61 + v55 * v84 + 2 * v86;
        *(v6 + 1320) = v55;
        *(v6 + 1328) = v65 + v66 * v84 + (v86 >> 1);
        *(v6 + 1336) = v66;
        *(v6 + 1344) = *(v6 + 312);
        if ((v37 & 0x4000) != 0)
        {
          v119 = (v20 - *(v2 + 1584)) & ~((v20 - *(v2 + 1584)) >> 31);
          v120 = (v35 - *(v2 + 1592)) & ~((v35 - *(v2 + 1592)) >> 31);
          v121 = (v26 - *(v2 + 1600)) & ~((v26 - *(v2 + 1600)) >> 31);
          *(v6 + 1352) = v32 - (((v36 - *(v2 + 1608)) & ~((v36 - *(v2 + 1608)) >> 31)) + v121);
          *(v6 + 1360) = v25 - (v120 + v119);
          *(v6 + 1368) = v61 + v55 * v119 + 2 * v121;
          *(v6 + 1376) = v55;
          *(v6 + 1384) = v65 + v66 * v119 + (v121 >> 1);
          *(v6 + 1392) = v66;
          *(v6 + 1400) = *(v6 + 320);
          v88 = *(v6 + 32);
          v87 = *(v6 + 40);
          v90 = *(v6 + 48);
          v89 = *(v6 + 56);
          v91 = *(v6 + 136);
          v92 = *(v6 + 144);
          if ((v37 & 0x8000) == 0)
          {
LABEL_52:
            if ((v37 & 0x10000) == 0)
            {
              goto LABEL_53;
            }

            goto LABEL_65;
          }
        }

        else
        {
          v88 = *(v6 + 32);
          v87 = *(v6 + 40);
          v90 = *(v6 + 48);
          v89 = *(v6 + 56);
          v91 = *(v6 + 136);
          v92 = *(v6 + 144);
          if ((v37 & 0x8000) == 0)
          {
            goto LABEL_52;
          }
        }

        v122 = (v88 - *(v2 + 1640)) & ~((v88 - *(v2 + 1640)) >> 31);
        v123 = (v87 - *(v2 + 1648)) & ~((v87 - *(v2 + 1648)) >> 31);
        v124 = (v90 - *(v2 + 1656)) & ~((v90 - *(v2 + 1656)) >> 31);
        *(v6 + 1408) = v91 - (((v89 - *(v2 + 1664)) & ~((v89 - *(v2 + 1664)) >> 31)) + v124);
        *(v6 + 1416) = v92 - (v123 + v122);
        *(v6 + 1424) = v61 + v55 * v122 + 2 * v124;
        *(v6 + 1432) = v55;
        *(v6 + 1440) = v65 + v66 * v122 + (v124 >> 1);
        *(v6 + 1448) = v66;
        if ((v37 & 0x10000) == 0)
        {
LABEL_53:
          v93 = v2 + 224 * v3;
          v94 = *(v6 + 472);
          if ((v37 & 0x20000) == 0)
          {
            goto LABEL_54;
          }

          goto LABEL_66;
        }

LABEL_65:
        v125 = (v88 - *(v2 + 1704)) & ~((v88 - *(v2 + 1704)) >> 31);
        v126 = (v87 - *(v2 + 1712)) & ~((v87 - *(v2 + 1712)) >> 31);
        v127 = (v90 - *(v2 + 1720)) & ~((v90 - *(v2 + 1720)) >> 31);
        *(v6 + 1456) = v91 - (((v89 - *(v2 + 1728)) & ~((v89 - *(v2 + 1728)) >> 31)) + v127);
        *(v6 + 1464) = v92 - (v126 + v125);
        *(v6 + 1472) = v61 + v55 * v125 + 2 * v127;
        *(v6 + 1480) = v55;
        *(v6 + 1488) = v65 + v66 * v125 + (v127 >> 1);
        *(v6 + 1496) = v66;
        v128 = *(v6 + 264);
        *(v6 + 1504) = *(v6 + 272) + v128 * v125 + (v127 >> 3);
        *(v6 + 1512) = v128;
        *(v6 + 1520) = *(v6 + 328);
        v93 = v2 + 224 * v3;
        v94 = *(v6 + 472);
        if ((v37 & 0x20000) == 0)
        {
LABEL_54:
          v95 = (v93 + 2440);
          v96 = *(v6 + 504);
          if ((v37 & 0x40000) == 0)
          {
LABEL_55:
            v97 = *(v6 + 480);
            goto LABEL_68;
          }

LABEL_67:
          v132 = (v88 - *(v2 + 2008)) & ~((v88 - *(v2 + 2008)) >> 31);
          v133 = (v87 - *(v2 + 2016)) & ~((v87 - *(v2 + 2016)) >> 31);
          v134 = (v90 - *(v2 + 2024)) & ~((v90 - *(v2 + 2024)) >> 31);
          *(v6 + 1600) = v91 - (((v89 - *(v2 + 2032)) & ~((v89 - *(v2 + 2032)) >> 31)) + v134);
          *(v6 + 1608) = v92 - (v133 + v132);
          v135 = v94 * v132;
          v136 = (2 * v134);
          *(v6 + 1616) = v96 + v136 + v94 * v132;
          v97 = *(v6 + 480);
          v137 = *(v6 + 488);
          *(v6 + 1624) = v97 + v136 + v135;
          *(v6 + 1632) = v94;
          *(v6 + 1640) = v137;
          *(v6 + 1648) = *(v6 + 520);
LABEL_68:
          v138 = *(v6 + 376);
          v139 = v88 - *(v2 + 2200);
          v140 = *(v2 + 2208);
          v141 = (v90 - *(v2 + 2216)) & ~((v90 - *(v2 + 2216)) >> 31);
          *(v6 + 1664) = v91 - (((v89 - *(v2 + 2224)) & ~((v89 - *(v2 + 2224)) >> 31)) + v141);
          v142 = v139 & ~(v139 >> 31);
          *(v6 + 1672) = v92 - (((v87 - v140) & ~((v87 - v140) >> 31)) + v142);
          v143 = *(v6 + 152);
          v144 = 2 * v141;
          *(v6 + 1680) = *(v6 + 160) + v143 * v142 + v144;
          *(v6 + 1688) = v143;
          v145 = *(v6 + 496);
          *(v6 + 1696) = v145 + v144 + v94 * v142;
          *(v6 + 1704) = v96 + v144 + v94 * v142;
          v146 = *(v6 + 512);
          *(v6 + 1712) = v146 + v144 + v94 * v142;
          *(v6 + 1720) = v97 + v144 + v94 * v142;
          *(v6 + 1728) = v94;
          v141 >>= 1;
          v147 = *(v6 + 408);
          v148 = *(v6 + 416);
          *(v6 + 1768) = v65 + v148 * v142 + v141;
          *(v6 + 1776) = v148;
          v142 >>= 1;
          *(v6 + 1736) = v147 + v142 * v138 + 6 * v141;
          *(v6 + 1744) = v138;
          *(v6 + 1752) = v70 + v142 * v71 + 4 * v141;
          *(v6 + 1760) = v71;
          v149 = *(v6 + 168);
          v150 = *(v6 + 176);
          *(v6 + 1784) = v149;
          *(v6 + 1792) = v150;
          *(v6 + 1800) = *(v6 + 200);
          v151 = *(v6 + 184);
          *(v6 + 1816) = *(v6 + 192);
          *(v6 + 1824) = v151;
          *(v6 + 1832) = v91;
          *(v6 + 1840) = v92;
          *(v6 + 1848) = v145;
          *(v6 + 1856) = v97;
          *(v6 + 1864) = v146;
          *(v6 + 1872) = v94;
          *(v6 + 1880) = v147;
          *(v6 + 1888) = v138;
          *(v6 + 1896) = v70;
          *(v6 + 1904) = *(v6 + 432);
          v152.i64[0] = vdupq_n_s64(1uLL).u64[0];
          v152.i64[1] = *(v6 + 144) * *(v6 + 136);
          *v95 = vaddq_s64(*v95, v152);
          v95[1].i64[0] += v150 * v149;
          v153 = *(v6 + 152);
          v154 = *(v6 + 160);
          if ((v4 & 0x20) != 0)
          {
            v157 = *(v6 + 216);
            v156 = *(v6 + 224);
            *(v6 + 152) = v157;
            *(v6 + 160) = v156;
            *(v6 + 216) = v153;
            *(v6 + 224) = v154;
            v158 = v156;
            v159 = *(v6 + 88);
            *(v6 + 232) = *(v6 + 80);
            *(v6 + 240) = v159;
            *(v6 + 248) = v157;
            *(v6 + 256) = v158;
            if ((v4 & 1) == 0)
            {
LABEL_70:
              if ((v4 & 2) == 0)
              {
                goto LABEL_71;
              }

              goto LABEL_91;
            }
          }

          else
          {
            v155 = *(v6 + 88);
            *(v6 + 232) = *(v6 + 80);
            *(v6 + 240) = v155;
            *(v6 + 248) = v153;
            *(v6 + 256) = v154;
            if ((v4 & 1) == 0)
            {
              goto LABEL_70;
            }
          }

          (*(v2 + 168))(v2, v6);
          v160 = *(v6 + 256);
          *(v6 + 232) = *(v6 + 248);
          *(v6 + 240) = v160;
          if ((v4 & 2) == 0)
          {
LABEL_71:
            if ((v4 & 4) == 0)
            {
              goto LABEL_72;
            }

            goto LABEL_92;
          }

LABEL_91:
          (*(v2 + 240))(v2, v6);
          v161 = *(v6 + 256);
          *(v6 + 232) = *(v6 + 248);
          *(v6 + 240) = v161;
          if ((v4 & 4) == 0)
          {
LABEL_72:
            if ((v4 & 8) == 0)
            {
              goto LABEL_73;
            }

            goto LABEL_93;
          }

LABEL_92:
          (*(v2 + 360))(v2, v6);
          v162 = *(v6 + 256);
          *(v6 + 232) = *(v6 + 248);
          *(v6 + 240) = v162;
          if ((v4 & 8) == 0)
          {
LABEL_73:
            if ((v4 & 0x10) == 0)
            {
              goto LABEL_74;
            }

            goto LABEL_94;
          }

LABEL_93:
          (*(v2 + 528))(v2, v6);
          if ((v4 & 0x10) == 0)
          {
LABEL_74:
            if ((v4 & 0x20) == 0)
            {
              goto LABEL_75;
            }

            goto LABEL_95;
          }

LABEL_94:
          (*(v2 + 592))(v2, v6);
          if ((v4 & 0x20) == 0)
          {
LABEL_75:
            (*(v2 + 784))(v2, v6);
            if ((v4 & 0x80) == 0)
            {
              goto LABEL_77;
            }

            goto LABEL_76;
          }

LABEL_95:
          (*(v2 + 696))(v2, v6);
          v164 = *(v6 + 152);
          v163 = *(v6 + 160);
          v165 = *(v6 + 224);
          *(v6 + 152) = *(v6 + 216);
          *(v6 + 160) = v165;
          *(v6 + 216) = v164;
          *(v6 + 224) = v163;
          (*(v2 + 784))(v2, v6);
          if ((v4 & 0x80) == 0)
          {
LABEL_77:
            (*(v2 + 920))(v2, v6);
            (*(v2 + 984))(v2, v6);
            (*(v2 + 1088))(v2, v6);
            if ((v4 & 0x800) != 0)
            {
              (*(v2 + 1176))(v2, v6);
              if ((v4 & 0x1000) == 0)
              {
LABEL_79:
                (*(v2 + 1504))(v2, v6);
                if ((v4 & 0x4000) == 0)
                {
                  goto LABEL_80;
                }

                goto LABEL_99;
              }
            }

            else if ((v4 & 0x1000) == 0)
            {
              goto LABEL_79;
            }

            (*(v2 + 1368))(v2, v6);
            (*(v2 + 1504))(v2, v6);
            if ((v4 & 0x4000) == 0)
            {
LABEL_80:
              if ((v4 & 0x8000) == 0)
              {
                goto LABEL_81;
              }

              goto LABEL_100;
            }

LABEL_99:
            (*(v2 + 1576))(v2, v6);
            if ((v4 & 0x8000) == 0)
            {
LABEL_81:
              if ((v4 & 0x10000) == 0)
              {
                goto LABEL_82;
              }

              goto LABEL_101;
            }

LABEL_100:
            (*(v2 + 1632))(v2, v6);
            if ((v4 & 0x10000) == 0)
            {
LABEL_82:
              if ((v4 & 0x20000) == 0)
              {
                goto LABEL_83;
              }

              goto LABEL_102;
            }

LABEL_101:
            (*(v2 + 1696))(v2, v6);
            if ((v4 & 0x20000) == 0)
            {
LABEL_83:
              if ((v4 & 0x40000) == 0)
              {
LABEL_85:
                (*(v2 + 2192))(v2, v6);
                (*(v2 + 2248))(v2, v6);
                goto LABEL_86;
              }

LABEL_84:
              (*(v2 + 2000))(v2, v6);
              goto LABEL_85;
            }

LABEL_102:
            (*(v2 + 1744))(v2, v6);
            if ((v4 & 0x40000) == 0)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          }

LABEL_76:
          (*(v2 + 848))(v2, v6);
          goto LABEL_77;
        }

LABEL_66:
        v129 = (v88 - *(v2 + 1752)) & ~((v88 - *(v2 + 1752)) >> 31);
        v130 = (v87 - *(v2 + 1760)) & ~((v87 - *(v2 + 1760)) >> 31);
        v131 = (v90 - *(v2 + 1768)) & ~((v90 - *(v2 + 1768)) >> 31);
        *(v6 + 1528) = v91 - (((v89 - *(v2 + 1776)) & ~((v89 - *(v2 + 1776)) >> 31)) + v131);
        *(v6 + 1536) = v92 - (v130 + v129);
        *(v6 + 1544) = v61 + v94 * v129 + (2 * v131);
        *(v6 + 1552) = v94;
        *(v6 + 1592) = *(v6 + 336);
        v95 = (v93 + 2440);
        v96 = *(v6 + 504);
        if ((v37 & 0x40000) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_67;
      }

LABEL_43:
      v40 = (v20 - *(v2 + 704)) & ~((v20 - *(v2 + 704)) >> 31);
      v41 = (v35 - *(v2 + 712)) & ~((v35 - *(v2 + 712)) >> 31);
      v42 = (v26 - *(v2 + 720)) & ~((v26 - *(v2 + 720)) >> 31);
      *(v6 + 792) = v32 - (((v36 - *(v2 + 728)) & ~((v36 - *(v2 + 728)) >> 31)) + v42);
      *(v6 + 800) = v25 - (v41 + v40);
      v43 = 2 * v42;
      *(v6 + 808) = v39 + v38 * v40 + v43;
      *(v6 + 816) = v38;
      v44 = *(v6 + 216);
      v45 = *(v6 + 224);
      *(v6 + 824) = v45 + v44 * v40 + v43;
      *(v6 + 832) = v44;
      *(v6 + 840) = v23 + v40;
      *(v6 + 848) = v28 + v42;
      *(v6 + 152) = v44;
      *(v6 + 160) = v45;
      *(v6 + 216) = v38;
      *(v6 + 224) = v39;
      v39 = v45;
      v38 = v44;
      goto LABEL_44;
    }
  }

LABEL_86:

  return sub_233818CFC(a1, v6);
}