uint64_t sub_19B665720(uint64_t a1, float *a2)
{
  if ((atomic_load_explicit(&qword_1ED71CB80, memory_order_acquire) & 1) == 0)
  {
    v13 = a2;
    v14 = __cxa_guard_acquire(&qword_1ED71CB80);
    a2 = v13;
    if (v14)
    {
      unk_1ED71CBD8 = xmmword_19B7BA958;
      unk_1ED71CBE8 = unk_19B7BA968;
      unk_1ED71CBF8 = xmmword_19B7BA978;
      unk_1ED71CC08 = unk_19B7BA988;
      unk_1ED71CBB8 = xmmword_19B7BA938;
      unk_1ED71CBC8 = unk_19B7BA948;
      __cxa_guard_release(&qword_1ED71CB80);
      a2 = v13;
    }
  }

  if ((atomic_load_explicit(&qword_1ED71CB88, memory_order_acquire) & 1) == 0)
  {
    v15 = a2;
    v16 = __cxa_guard_acquire(&qword_1ED71CB88);
    a2 = v15;
    if (v16)
    {
      xmmword_1ED71CC58 = xmmword_19B7BA9D8;
      unk_1ED71CC68 = unk_19B7BA9E8;
      xmmword_1ED71CC78 = xmmword_19B7BA9F8;
      xmmword_1ED71CC18 = xmmword_19B7BA998;
      unk_1ED71CC28 = unk_19B7BA9A8;
      xmmword_1ED71CC38 = xmmword_19B7BA9B8;
      unk_1ED71CC48 = unk_19B7BA9C8;
      __cxa_guard_release(&qword_1ED71CB88);
      a2 = v15;
    }
  }

  if ((atomic_load_explicit(&qword_1ED71CB90, memory_order_acquire) & 1) == 0)
  {
    v17 = a2;
    v18 = __cxa_guard_acquire(&qword_1ED71CB90);
    a2 = v17;
    if (v18)
    {
      xmmword_1ED71CF78 = xmmword_19B7BAAA8;
      unk_1ED71CF88 = unk_19B7BAAB8;
      xmmword_1ED71CF98 = xmmword_19B7BAAC8;
      unk_1ED71CFA8 = unk_19B7BAAD8;
      xmmword_1ED71CF38 = xmmword_19B7BAA68;
      unk_1ED71CF48 = unk_19B7BAA78;
      xmmword_1ED71CF58 = xmmword_19B7BAA88;
      unk_1ED71CF68 = unk_19B7BAA98;
      xmmword_1ED71CEF8 = xmmword_19B7BAA28;
      unk_1ED71CF08 = unk_19B7BAA38;
      xmmword_1ED71CF18 = xmmword_19B7BAA48;
      unk_1ED71CF28 = unk_19B7BAA58;
      xmmword_1ED71CED8 = xmmword_19B7BAA08;
      unk_1ED71CEE8 = unk_19B7BAA18;
      __cxa_guard_release(&qword_1ED71CB90);
      a2 = v17;
    }
  }

  if ((atomic_load_explicit(&qword_1ED71CB98, memory_order_acquire) & 1) == 0)
  {
    v20 = a2;
    v19 = __cxa_guard_acquire(&qword_1ED71CB98);
    a2 = v20;
    if (v19)
    {
      xmmword_1ED71CDC8 = xmmword_19B7BAB68;
      unk_1ED71CDD8 = unk_19B7BAB78;
      xmmword_1ED71CDE8 = xmmword_19B7BAB88;
      unk_1ED71CDF8 = unk_19B7BAB98;
      xmmword_1ED71CD88 = xmmword_19B7BAB28;
      unk_1ED71CD98 = unk_19B7BAB38;
      xmmword_1ED71CDA8 = xmmword_19B7BAB48;
      unk_1ED71CDB8 = unk_19B7BAB58;
      xmmword_1ED71CD48 = xmmword_19B7BAAE8;
      unk_1ED71CD58 = unk_19B7BAAF8;
      xmmword_1ED71CD68 = xmmword_19B7BAB08;
      unk_1ED71CD78 = unk_19B7BAB18;
      __cxa_guard_release(&qword_1ED71CB98);
      a2 = v20;
    }
  }

  for (i = 0; i != 12; i += 2)
  {
    if (*&qword_1ED71CB60[i + 11] >= a2[2])
    {
      break;
    }
  }

  v4 = 0;
  v5 = *&qword_1ED71CB60[i + 12];
  do
  {
    if (*&qword_1ED71CB60[v4 + 23] >= a2[3])
    {
      break;
    }

    v4 += 2;
  }

  while (v4 != 14);
  v6 = 0;
  v7 = v5 * *&qword_1ED71CB60[v4 + 24];
  do
  {
    if (*&qword_1ED71CB60[v6 + 111] >= a2[5])
    {
      break;
    }

    v6 += 2;
  }

  while (v6 != 28);
  v8 = 0;
  v9 = v7 * *&qword_1ED71CB60[v6 + 112];
  do
  {
    if (*&qword_1ED71CB60[v8 + 61] >= a2[7])
    {
      break;
    }

    v8 += 2;
  }

  while (v8 != 24);
  v10 = v9 * *&qword_1ED71CB60[v8 + 62];
  if (a2[4] < 0.05)
  {
    v10 = 0.0;
  }

  v11 = v10;
  v22 = v11;
  sub_19B5BC034(a1 + 10636, &v22);
  if (*(a1 + 10668) != *(a1 + 10666))
  {
    return 0;
  }

  if (*(a1 + 10636) == 1)
  {
    sub_19B5BE7E0(a1 + 10636);
  }

  if (((v21 = *(a1 + 10640), v21 >= 25.0) || *(a1 + 10774)) && (sub_19B5BC034(a1 + 10744, &v21), *(a1 + 10648) = 0u, *(a1 + 10664) = 0, *(a1 + 10636) = 1, *(a1 + 10776) == *(a1 + 10774)) && sub_19B5C0034((a1 + 10772), sub_19B5C0258, 0) >= 15.0 && sub_19B5C0034((a1 + 10772), sub_19B5C024C, 0) >= 25.0)
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

double sub_19B665AF0(uint64_t a1, float32x2_t *a2, float32x4_t a3)
{
  if ((atomic_load_explicit(&qword_1ED71CBA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71CBA0))
  {
    qword_1ED71CBA8 = 0;
    dword_1ED71CBB0 = -1082130432;
    __cxa_guard_release(&qword_1ED71CBA0);
  }

  v44 = sub_19B66BFF4(a2 + 4, a3);
  v45 = v5;
  v46 = v6;
  v47 = v7;
  v8 = sub_19B66C1A4(&v44, -a2[2].f32[1], -a2[3].f32[0], -a2[3].f32[1]);
  v10 = v9;
  v12 = v11;
  v13 = 0.0;
  for (i = 5; i != 8; ++i)
  {
    v13 = v13 + (a2->f32[i] * a2->f32[i]);
  }

  v44 = sqrtf(v13);
  sub_19B5BC034(a1 + 96, &v44);
  v16.f32[0] = sub_19B66BFF4((a1 + 76), v15);
  v43[0] = v16.f32[0];
  v43[1] = v17;
  v43[2] = v18;
  v43[3] = v19;
  v44 = sub_19B66BF70(v43, &a2[4], v16);
  v45 = v20;
  v46 = v21;
  v47 = v22;
  v23 = sub_19B66C1A4(&v44, v8, v10, 0.0);
  v25 = v24;
  v27 = v26;
  sub_19B66C1A4(&v44, *&qword_1ED71CBA8, *(&qword_1ED71CBA8 + 1), *&dword_1ED71CBB0);
  v28 = sqrtf((v27 * v27) + (v25 * v25));
  if (v30 >= -v29)
  {
    v31 = v25;
  }

  else
  {
    v31 = v27;
  }

  v32 = v28 * ((__PAIR64__(v31 > 0.0, LODWORD(v31)) - COERCE_UNSIGNED_INT(0.0)) >> 32);
  v33 = *a2;
  v43[0] = v12;
  sub_19B5BC034(a1 + 532, v43);
  v34 = sub_19B5BE1A8(*(a1 + 10888), v32);
  v35 = sub_19B5BE1A8(*(a1 + 10896), v23);
  v36 = sub_19B5BE1A8(*(a1 + 10904), v12);
  if (v34 && v35 && v36)
  {
    v39 = *(*(a1 + 10888) + 4 * *(*(a1 + 10888) + 8) + 16);
    v40 = *(*(a1 + 10896) + 4 * *(*(a1 + 10896) + 8) + 16);
    v41 = *(*(a1 + 10904) + 4 * *(*(a1 + 10904) + 8) + 16);
  }

  return v33;
}

void sub_19B665D04(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = 3.14159265 - *(a1 + 56);
  v41 = *(a1 + 32);
  v4 = __sincos_stret(v3);
  v38 = *(a1 + 40);
  v6 = __sincos_stret(v3 + v2);
  v5.f64[0] = v6.__cosval;
  if (*(a1 + 1778))
  {
    v7 = 0;
    v8.f64[0] = -v38;
    v5.f64[1] = v38;
    v8.f64[1] = v6.__sinval;
    v9.f64[0] = -v41;
    v10 = vmulq_f64(v5, v8);
    v9.f64[1] = v41;
    v8.f64[0] = v4.__cosval;
    v8.f64[1] = v4.__sinval;
    v37 = vcvt_f32_f64(vmlaq_f64(v10, v8, v9));
    do
    {
      if (v7)
      {
        v11 = sub_19B6680A0((a1 + 4984), v7 - 1);
        v12 = vadd_f32(v11[1], *sub_19B6196CC((a1 + 968), v7));
        v13 = vsub_f32(v12, *sub_19B6196CC((a1 + 968), v7 - 1));
      }

      else
      {
        v13 = vadd_f32(*sub_19B6196CC((a1 + 968), 0), v37);
      }

      v40 = v13;
      v14 = *(a1 + 32);
      v15 = __sincos_stret(v3);
      v42 = v3;
      v16 = -(v14 * v15.__cosval);
      v17 = v15.__sinval * v14;
      v18 = *(a1 + 40);
      v19 = __sincos_stret(v3 + v2);
      v20 = -(v18 * v19.__cosval) - v14 * v15.__cosval;
      v21 = v19.__sinval * v18 + v14 * v15.__sinval;
      v22 = *sub_19B6682BC((a1 + 1776), v7);
      v23 = sub_19B6680A0((a1 + 4984), v7);
      *v23 = v22;
      *(v23 + 8) = v20;
      *(v23 + 12) = v21;
      *(v23 + 16) = v16;
      *(v23 + 20) = v17;
      *(v23 + 24) = 0;
      *(v23 + 32) = 3.14159265 - v42;
      *(v23 + 40) = v2;
      *(v23 + 48) = v42 + 1.57079633;
      v24 = *(a1 + 32);
      v25 = pow(v24, 4.0);
      v39 = v24 * v24;
      v26 = *(a1 + 40);
      v27 = vmul_f32(v40, v40).f32[0];
      v28 = v27;
      *&v22 = vmuls_lane_f32(v40.f32[1], v40, 1);
      v29 = *&v22;
      v30 = (v39 + v39) * v27 - (v25 - (v39 + v39) * (v26 * v26)) + (v39 + v39) * *&v22 - pow(v26, 4.0) - (*&v22 * (v27 + v27)) + (v26 * v26 + v26 * v26) * v27 + (v26 * v26 + v26 * v26) * *&v22;
      v31 = v30 - pow(v40.f32[0], 4.0);
      v32 = sqrt(v31 - pow(v40.f32[1], 4.0));
      v33 = atan(-(v32 - (v24 + v24) * v40.f32[1]) / (v24 * v24 + v24 * -2.0 * v40.f32[0] - v26 * v26 + v28 + *&v22));
      v34 = v33 + v33;
      v35 = (v24 + v24) * v26 - v24 * v24 - v26 * v26 + v28 + v29;
      v36 = atan(sqrt(v35 * (v24 * v24 + (v24 + v24) * v26 + v26 * v26 - v28 - v29)) / v35);
      v3 = v34;
      v2 = v36 + v36;
      ++v7;
    }

    while (v7 < *(a1 + 1778));
  }
}

void sub_19B666024(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  __asm { FMOV            V0.2S, #-1.0 }

  *(a1 + 28) = _D0;
  if (*(a2 + 1778))
  {
    v9 = 0;
    v10 = 0.0;
    v11 = 0.0;
    do
    {
      v12 = sub_19B6682BC((a2 + 1776), v9);
      v10 = v10 + *(v12 + 8) * *(v12 + 8);
      v13 = sub_19B6682BC((a2 + 1776), v9);
      v11 = v11 + *(v13 + 16) * *(v13 + 16);
      ++v9;
    }

    while (v9 < *(a2 + 1778));
    v14 = sub_19B6664A8((a2 + 1776), sub_19B666708);
    v16 = v15;
    v17 = sub_19B6664A8((a2 + 1776), sub_19B666714);
    v19 = *(a2 + 1776) + *(a2 + 1778) - 1;
    v20 = *(a2 + 1780);
    if (v19 < v20)
    {
      v20 = 0;
    }

    *a1 = *(a2 + 32 * (v19 - v20) + 1784);
    v21 = v11;
    v22 = v10 + 0.000000999999997;
    v23 = (v18 - v16) * ((v17 - v14 > 0.0) - (v17 - v14 < 0.0));
    *(a1 + 8) = sqrtf(v21) / sqrtf(v22);
    *(a1 + 12) = v23;
    if (*(a2 + 96) == 1)
    {
      sub_19B5BE7E0(a2 + 96);
    }

    *(a1 + 16) = *(a2 + 100);
    sub_19B666720(buf, (a2 + 4984), sub_19B6669AC);
    v41 = v47;
    sub_19B666720(v43, (a2 + 4984), sub_19B6669C0);
    v24.f64[0] = v41;
    v42 = v44;
    v24.f64[1] = v44;
    *(a1 + 20) = vcvt_f32_f64(vmulq_f64(v24, vdupq_n_s64(0x404CA5DC20000000uLL)));
    if (v41 >= 1.74532926)
    {
      v25 = v41;
    }

    else
    {
      v25 = 1.74532926;
    }

    v26 = *sub_19B6680A0((a2 + 4984), 0);
    v27 = 0.0;
    v28 = 0.0;
    if (*(a2 + 4986))
    {
      v29 = 0;
      while (*(sub_19B6680A0((a2 + 4984), v29) + 48) > v25)
      {
        if (++v29 >= *(a2 + 4986))
        {
          v28 = 0.0;
          goto LABEL_28;
        }
      }

      v28 = *sub_19B6680A0((a2 + 4984), v29);
    }

LABEL_28:
    if (v28 == 0.0)
    {
      v33 = 0.0;
    }

    else
    {
      v33 = v28 - v26;
    }

    v34 = v33;
    *(a1 + 28) = v34;
    if (v42 <= 2.53072739)
    {
      v35 = v42;
    }

    else
    {
      v35 = 2.53072739;
    }

    v36 = *sub_19B6680A0((a2 + 4984), 0);
    if (*(a2 + 4986))
    {
      v37 = 0;
      while (*(sub_19B6680A0((a2 + 4984), v37) + 48) < v35)
      {
        if (++v37 >= *(a2 + 4986))
        {
          goto LABEL_40;
        }
      }

      v27 = *sub_19B6680A0((a2 + 4984), v37);
    }

LABEL_40:
    v38 = v27 - v36;
    if (v27 == 0.0)
    {
      v38 = 0.0;
    }

    v39 = v38;
    *(a1 + 32) = v39;
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
    }

    v30 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v46 = 0;
      _os_log_impl(&dword_19B41C000, v30, OS_LOG_TYPE_ERROR, "[SitStandDetector] startIdx out of range. =%d", buf, 8u);
    }

    v31 = sub_19B420058();
    if ((*(v31 + 160) & 0x80000000) == 0 || (*(v31 + 164) & 0x80000000) == 0 || (*(v31 + 168) & 0x80000000) == 0 || *(v31 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
      }

      v43[0] = 67109120;
      v43[1] = 0;
      v32 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "SitStandDetectorFeatures CMSitStandDetector::calcEpochFeatures(int)", "CoreLocation: %s\n", v32);
      if (v32 != buf)
      {
        free(v32);
      }
    }
  }

  v40 = *MEMORY[0x1E69E9840];
}

double sub_19B6664A8(unsigned __int16 *a1, unsigned int (*a2)(double, double, double, double, double, double, double, double))
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  if (!a1[1])
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E282E0);
    }

    v18 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_FAULT, "Assertion failed: n > 0, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 179,.", buf, 2u);
    }

    v19 = sub_19B420058();
    if ((*(v19 + 160) & 0x80000000) == 0 || (*(v19 + 164) & 0x80000000) == 0 || (*(v19 + 168) & 0x80000000) == 0 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E282E0);
      }

      v20 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMQueue<SitStandDetector::DecomposedUserAccel>::getComparison(int (*)(const T, const T), size_t) const [T = SitStandDetector::DecomposedUserAccel]", "CoreLocation: %s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }
  }

  v5 = sub_19B6682BC(a1, 0);
  v6 = *v5;
  v7 = v5[3];
  if (v4)
  {
    v8 = 0;
    v9 = v5[1];
    v10 = v5[2];
    do
    {
      v11 = sub_19B6682BC(a1, v8);
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (a2(*v11, v13, v14, v15, v6, v9, v10, v7))
      {
        v6 = v12;
        v9 = v13;
        v10 = v14;
        v7 = v15;
      }

      ++v8;
    }

    while (v4 != v8);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_19B666720(uint64_t a1, unsigned __int16 *a2, uint64_t (*a3)(_OWORD *, _OWORD *))
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2[1];
  if (a2[1])
  {
    v7 = sub_19B6680A0(a2, 0);
    v8 = 0;
    v9 = *(v7 + 16);
    *a1 = *v7;
    *(a1 + 16) = v9;
    *(a1 + 32) = *(v7 + 32);
    *(a1 + 48) = *(v7 + 48);
    do
    {
      v10 = sub_19B6680A0(a2, v8);
      v26 = *(v10 + 48);
      v25 = *(v10 + 32);
      v24 = *(v10 + 16);
      *buf = *v10;
      v21[0] = *buf;
      v21[1] = v24;
      v21[2] = v25;
      v22 = v26;
      v11 = *(a1 + 16);
      v19[0] = *a1;
      v19[1] = v11;
      v19[2] = *(a1 + 32);
      v20 = *(a1 + 48);
      result = a3(v21, v19);
      if (result)
      {
        v13 = v24;
        *a1 = *buf;
        *(a1 + 16) = v13;
        *(a1 + 32) = v25;
        *(a1 + 48) = v26;
      }

      ++v8;
    }

    while (v5 != v8);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E282E0);
    }

    v15 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_FAULT, "Assertion failed: n > 0, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 179,.", buf, 2u);
    }

    v16 = sub_19B420058();
    if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E282E0);
      }

      LOWORD(v21[0]) = 0;
      v17 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMQueue<SitStandDetector::TwoLinkPositionSample>::getComparison(int (*)(const T, const T), size_t) const [T = SitStandDetector::TwoLinkPositionSample]", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    result = sub_19B6680A0(a2, 0);
    v18 = *(result + 16);
    *a1 = *result;
    *(a1 + 16) = v18;
    *(a1 + 32) = *(result + 32);
    *(a1 + 48) = *(result + 48);
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B6669D4(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  *(a1 + 56) = xmmword_19B7BA540;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
  }

  v1 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEBUG, "[SitStandDetector] Set linkModel initial angles from Sitting state", buf, 2u);
  }

  v2 = sub_19B420058();
  if (*(v2 + 160) > 1 || *(v2 + 164) > 1 || *(v2 + 168) > 1 || *(v2 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
    }

    v3 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMSitStandDetector::setLinkModelJointAngles(const EventT *) [T = CMSitStandDetector::ESitting]", "CoreLocation: %s\n", v3);
    if (v3 != buf)
    {
      free(v3);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_19B666B84(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  *(a1 + 56) = xmmword_19B7BA550;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
  }

  v1 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEBUG, "[SitStandDetector] Set linkModel initial angles from Standing state", buf, 2u);
  }

  v2 = sub_19B420058();
  if (*(v2 + 160) > 1 || *(v2 + 164) > 1 || *(v2 + 168) > 1 || *(v2 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
    }

    v3 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMSitStandDetector::setLinkModelJointAngles(const EventT *) [T = CMSitStandDetector::EStanding]", "CoreLocation: %s\n", v3);
    if (v3 != buf)
    {
      free(v3);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_19B666D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  sub_19B79A0E8(a1, 2, a2);
  *(a1 + 72) = 1;
  v5 = *(a1 + 10912);
  if (v5 && *(a1 + 10920))
  {
    v5(1, a3);
  }

  *(a1 + 10824) = a3 + 500000;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
  }

  v6 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[SitStandDetector] Detected Sit->Stand", buf, 2u);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
    }

    v8 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMSitStandDetector::notifyWithDetection(const EventT *, uint64_t) [EventT = CMSitStandDetector::EStanding]", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  *(a1 + 1776) = 0;
  *(a1 + 968) = 0;
  *(a1 + 10604) = 0u;
  *(a1 + 10620) = 0;
  *(a1 + 10592) = 1;
  *(a1 + 10648) = 0u;
  *(a1 + 10664) = 0;
  *(a1 + 10636) = 1;
  *(a1 + 10692) = 0u;
  *(a1 + 10708) = 0;
  *(a1 + 10680) = 1;
  *(a1 + 10756) = 0u;
  *(a1 + 10772) = 0;
  *(a1 + 10744) = 1;
  sub_19B664E00();
}

void sub_19B666F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  sub_19B79A0E8(a1, 1, a2);
  *(a1 + 72) = 2;
  v5 = *(a1 + 10912);
  if (v5 && *(a1 + 10920))
  {
    v5(2, a3);
  }

  *(a1 + 10824) = a3 + 2000000;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
  }

  v6 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[SitStandDetector] Detected Stand->Sit", buf, 2u);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
    }

    v8 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMSitStandDetector::notifyWithDetection(const EventT *, uint64_t) [EventT = CMSitStandDetector::ESitting]", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  *(a1 + 1776) = 0;
  *(a1 + 968) = 0;
  *(a1 + 10604) = 0u;
  *(a1 + 10620) = 0;
  *(a1 + 10592) = 1;
  *(a1 + 10648) = 0u;
  *(a1 + 10664) = 0;
  *(a1 + 10636) = 1;
  *(a1 + 10692) = 0u;
  *(a1 + 10708) = 0;
  *(a1 + 10680) = 1;
  *(a1 + 10756) = 0u;
  *(a1 + 10772) = 0;
  *(a1 + 10744) = 1;
  sub_19B664E00();
}

unsigned __int16 *sub_19B6671CC(unsigned __int16 *result, __int128 *a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  v4 = &result[16 * (v3 - v2)];
  v5 = *a2;
  *(v4 + 12) = a2[1];
  *(v4 + 4) = v5;
  v6 = result[1];
  v7 = *(result + 1);
  if (v7 <= v6)
  {
    v8 = *result + 1;
    if (v8 < v7)
    {
      LOWORD(v7) = 0;
    }

    *result = v8 - v7;
  }

  else
  {
    result[1] = v6 + 1;
  }

  return result;
}

uint64_t sub_19B667230(uint64_t a1, uint64_t a2)
{
  v83 = *MEMORY[0x1E69E9840];
  if (*(a1 + 10824) <= (*a2 * 1000000.0))
  {
    v69 = (*a2 * 1000000.0);
    v4 = a1 + 0x2000;
    if (*(a1 + 1778))
    {
      v5 = *a2 - *(a1 + 10832);
      if (v5 > 0.5)
      {
        *(a1 + 1776) = 0;
        *(a1 + 968) = 0;
        *(a1 + 10604) = 0u;
        *(a1 + 10620) = 0;
        *(a1 + 10592) = 1;
        *(a1 + 10648) = 0u;
        *(a1 + 10664) = 0;
        *(a1 + 10636) = 1;
        *(a1 + 10692) = 0u;
        *(a1 + 10708) = 0;
        *(a1 + 10680) = 1;
        *(a1 + 10756) = 0u;
        *(a1 + 10772) = 0;
        *(a1 + 10744) = 1;
        sub_19B664E00();
      }

      if (v5 > 0.04)
      {
        v6 = rintf(v5 * 50.0);
        v7 = v6;
        v8 = (a1 + 10840);
        v9 = *(a1 + 10840);
        v70 = v9;
        v71 = *(a2 + 8);
        v10 = *(a2 + 24);
        v11 = *(a1 + 10856);
        v12 = a1 + 0x2000;
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
        }

        v13 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218240;
          *&buf[4] = v5;
          *&buf[12] = 1024;
          *&buf[14] = v7 - 1;
          _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_DEBUG, "[SitStandDetector] data gap of %.3f seconds, interpolating to %d samples.", buf, 0x12u);
        }

        v14 = sub_19B420058();
        if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
          }

          *v81 = 134218240;
          *&v81[4] = v5;
          *&v81[12] = 1024;
          *&v81[14] = v7 - 1;
          v16 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CMSitStandDetector::insertInterpolatedSamplesIfDataGap(const ImuData &)", "CoreLocation: %s\n", v16);
          if (v16 != buf)
          {
            free(v16);
          }
        }

        v4 = v12;
        if (v7 >= 2)
        {
          v17 = v6;
          *v15.i32 = 1.0 / v17;
          v18 = ((1.0 / v17) * v5);
          v72 = vmulq_n_f32(vsubq_f32(v71, v70), 1.0 / v17);
          v19 = vmul_f32(*&vdupq_lane_s32(v15, 0), vsub_f32(v10, v11));
          for (i = 1; i != v7; ++i)
          {
            memset(buf, 0, sizeof(buf));
            v80 = 1065353216;
            sub_19B41E130(&buf[32], 0);
            v21 = i;
            *&v21 = i;
            *buf = *(a1 + 10832) + i * v18;
            *&buf[8] = vaddq_f32(vmulq_n_f32(v72, i), *v8);
            *&buf[24] = vadd_f32(vmul_f32(v19, *&vdupq_lane_s32(*&v21, 0)), *(a1 + 10856));
            sub_19B66D5F4((a1 + 10864), (a2 + 32), i / v17);
            *&buf[32] = v22.i32[0];
            *&buf[36] = v23;
            *&buf[40] = v24;
            v80 = v25;
            *v81 = sub_19B665AF0(a1, buf, v22);
            *&v81[8] = v26;
            *&v81[16] = v27;
            *&v81[24] = v28;
            sub_19B6671CC((a1 + 1776), v81);
          }
        }
      }
    }

    v29 = *a2;
    v30 = *(a2 + 16);
    *(a1 + 10864) = *(a2 + 32);
    *(a1 + 10848) = v30;
    *(a1 + 10832) = v29;
    *&v73 = sub_19B665AF0(a1, a2, v29);
    *(&v73 + 1) = v31;
    v74 = v32;
    v75 = v33;
    sub_19B6671CC((a1 + 1776), &v73);
    if (*(a1 + 1780) == *(a1 + 1778))
    {
      v68 = v4;
      v34 = *(sub_19B6682BC((a1 + 1776), 0) + 8);
      v35 = *(sub_19B6682BC((a1 + 1776), 0) + 24);
      *buf = 0;
      sub_19B61966C((a1 + 968), buf);
      if (*(a1 + 1778) >= 2u)
      {
        v36 = 1;
        v37 = v35 * 0.02;
        v38 = v34 * 0.02;
        v39 = 0.0;
        v40 = 0.0;
        do
        {
          v41 = *sub_19B6682BC((a1 + 1776), v36);
          v42 = v36 - 1;
          v43 = v41 - *sub_19B6682BC((a1 + 1776), v42);
          if (v43 < 0.0)
          {
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
            }

            v44 = off_1EAFE29A0;
            if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
            {
              *buf = 134217984;
              *&buf[4] = 0;
              _os_log_impl(&dword_19B41C000, v44, OS_LOG_TYPE_ERROR, "[SitStandDetector] Timestamp went backwards. dt = %f", buf, 0xCu);
            }

            v45 = sub_19B420058();
            if ((*(v45 + 160) & 0x80000000) == 0 || (*(v45 + 164) & 0x80000000) == 0 || (*(v45 + 168) & 0x80000000) == 0 || (v43 = 0.0, *(v45 + 152)))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
              }

              *v81 = 134217984;
              *&v81[4] = 0;
              v46 = _os_log_send_and_compose_impl();
              sub_19B6BB7CC("Generic", 1, 0, 0, "void CMSitStandDetector::integrateUserAccel()", "CoreLocation: %s\n", v46);
              if (v46 != buf)
              {
                free(v46);
              }

              v43 = 0.0;
            }
          }

          v47 = *(sub_19B6682BC((a1 + 1776), v42) + 8);
          v48 = (v47 + *(sub_19B6682BC((a1 + 1776), v42 + 1) + 8)) * 0.5;
          v49 = *(sub_19B6682BC((a1 + 1776), v42) + 24);
          v50 = (v49 + *(sub_19B6682BC((a1 + 1776), v42 + 1) + 24)) * 0.5;
          v38 = v38 + v48 * 9.80665016 * v43;
          v37 = v37 + v50 * 9.80665016 * v43;
          v39 = v39 + v43 * v43 * (v48 * 4.90332508) + v38 * v43;
          v40 = v40 + v43 * v43 * (v50 * 4.90332508) + v37 * v43;
          *&v50 = v39;
          v51 = v40;
          *buf = LODWORD(v50);
          *&buf[4] = v51;
          sub_19B61966C((a1 + 968), buf);
          v36 = v42 + 2;
        }

        while (v36 < *(a1 + 1778));
      }

      if (*(a1 + 16))
      {
        sub_19B665D04(a1);
        sub_19B666024(v81, a1);
        v52 = *(a1 + 16);
        if (v52 == 2)
        {
          if (sub_19B665720(a1, v81))
          {
            sub_19B666F80(a1, buf, v69);
          }
        }

        else if (v52 == 1)
        {
          if (sub_19B6652F0(a1, v81))
          {
            sub_19B666D34(a1, buf, v69);
          }
        }

        else
        {
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
          }

          v59 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
          {
            v60 = *(a1 + 16);
            if (v60 > 3)
            {
              v61 = "Unknown";
            }

            else
            {
              v61 = off_1E7533C20[v60];
            }

            *buf = 136315138;
            *&buf[4] = v61;
            _os_log_impl(&dword_19B41C000, v59, OS_LOG_TYPE_INFO, "[SitStandDetector] Wrong FSM state, %s", buf, 0xCu);
          }

          v62 = sub_19B420058();
          if (*(v62 + 160) > 1 || *(v62 + 164) > 1 || *(v62 + 168) > 1 || *(v62 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E29420);
            }

            v63 = *(a1 + 16);
            if (v63 > 3)
            {
              v64 = "Unknown";
            }

            else
            {
              v64 = off_1E7533C20[v63];
            }

            v77 = 136315138;
            v78 = v64;
            v65 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMSitStandDetector::detectStateTransitions(uint64_t)", "CoreLocation: %s\n", v65);
            if (v65 != buf)
            {
              free(v65);
            }
          }
        }
      }

      else
      {
        sub_19B6669D4(a1);
        sub_19B665D04(a1);
        sub_19B666024(buf, a1);
        v53 = sub_19B6652F0(a1, buf);
        sub_19B666B84(a1);
        sub_19B665D04(a1);
        sub_19B666024(v81, a1);
        *buf = *v81;
        *&buf[16] = *&v81[16];
        *&buf[32] = v82;
        v54 = sub_19B665720(a1, buf);
        v55 = v54;
        if ((v53 & 1) != 0 || (v54 & 1) != 0 || *(a1 + 10880))
        {
          if (v53)
          {
            if (*(v68 + 2488) == 1)
            {
              sub_19B5BE7E0(v68 + 2488);
            }

            v56 = *(a1 + 10684) / 40.0;
            if (v56 > *(a1 + 10808))
            {
              *(a1 + 10808) = v56;
            }
          }

          if (v55)
          {
            if (*(v68 + 2552) == 1)
            {
              sub_19B5BE7E0(v68 + 2552);
            }

            v57 = *(a1 + 10748) / 25.0;
            if (v57 > *(a1 + 10812))
            {
              *(a1 + 10812) = v57;
            }
          }

          v58 = *(a1 + 10880);
          if (v58)
          {
            if (v58 <= v69)
            {
              if (*(a1 + 10808) > *(a1 + 10812))
              {
                sub_19B666D34(a1, &v76, v69);
              }

              sub_19B666F80(a1, &v77, v69);
            }
          }

          else
          {
            *(a1 + 10880) = v69 + 800000;
          }
        }
      }
    }
  }

  result = 0;
  *(a1 + 72) = 0;
  v67 = *MEMORY[0x1E69E9840];
  return result;
}

os_log_t sub_19B668070()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

uint64_t sub_19B6680A0(unsigned __int16 *a1, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E282E0);
    }

    v8 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v9 = *(a1 + 1);
      *buf = 134218240;
      v14 = a2;
      v15 = 1024;
      v16 = v9;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E282E0);
      }

      v12 = *(a1 + 1);
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T &CMQueue<SitStandDetector::TwoLinkPositionSample>::operator[](const size_t) const [T = SitStandDetector::TwoLinkPositionSample]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return &a1[28 * (v4 - v5) + 4];
}

uint64_t sub_19B6682BC(unsigned __int16 *a1, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E282E0);
    }

    v8 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v9 = *(a1 + 1);
      *buf = 134218240;
      v14 = a2;
      v15 = 1024;
      v16 = v9;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E282E0);
      }

      v12 = *(a1 + 1);
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T &CMQueue<SitStandDetector::DecomposedUserAccel>::operator[](const size_t) const [T = SitStandDetector::DecomposedUserAccel]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return &a1[16 * (v4 - v5) + 4];
}

uint64_t sub_19B66882C(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2840 != -1)
  {
    dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
  }

  v2 = qword_1EAFE2860;
  if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_INFO, "Closing PressureSample", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "CLPressureSampleDatabase::~CLPressureSampleDatabase()", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  sqlite3_reset(*(a1 + 16));
  sqlite3_close(*(a1 + 8));
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_19B668A10(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_19B45E110(a1);
}

uint64_t sub_19B668A1C(uint64_t a1, const char *a2, __int128 *a3, __int128 *a4)
{
  v82 = *MEMORY[0x1E69E9840];
  *(a1 + 16) = 0;
  v8 = (a1 + 16);
  if (*(a3 + 23) < 0)
  {
    sub_19B4C5138((a1 + 24), *a3, *(a3 + 1));
  }

  else
  {
    v9 = *a3;
    *(a1 + 40) = *(a3 + 2);
    *(a1 + 24) = v9;
  }

  if (*(a4 + 23) < 0)
  {
    sub_19B4C5138((a1 + 48), *a4, *(a4 + 1));
  }

  else
  {
    v10 = *a4;
    *(a1 + 64) = *(a4 + 2);
    *(a1 + 48) = v10;
  }

  pStmt = 0;
  if (a2[23] >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  v12 = *(a3 + 23);
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a3 + 1);
  }

  if (v12)
  {
    v13 = 6;
  }

  else
  {
    v13 = 1;
  }

  if (!sqlite3_open_v2(v11, (a1 + 8), v13, 0))
  {
    if (sqlite3_prepare_v2(*(a1 + 8), "SELECT COUNT(*) FROM PressureSample", -1, &pStmt, 0) || sqlite3_step(pStmt) != 100)
    {
      v44 = *(a3 + 23);
      if ((v44 & 0x80u) != 0)
      {
        v44 = *(a3 + 1);
      }

      if (!v44)
      {
        if (qword_1EAFE2840 != -1)
        {
          dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
        }

        v61 = qword_1EAFE2860;
        if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_FAULT))
        {
          if (a2[23] >= 0)
          {
            v62 = a2;
          }

          else
          {
            v62 = *a2;
          }

          *buf = 136315138;
          v79 = v62;
          _os_log_impl(&dword_19B41C000, v61, OS_LOG_TYPE_FAULT, "No PressureSample table in %s", buf, 0xCu);
        }

        v63 = sub_19B420058();
        if ((*(v63 + 160) & 0x80000000) != 0 && (*(v63 + 164) & 0x80000000) != 0 && (*(v63 + 168) & 0x80000000) != 0 && !*(v63 + 152))
        {
          goto LABEL_34;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2840 != -1)
        {
          dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
        }

        v64 = a2[23] >= 0 ? a2 : *a2;
        v74 = 136315138;
        v75 = v64;
        v24 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "CLPressureSampleDatabase::CLPressureSampleDatabase(const std::string &, const std::string &, const std::string &)", "CoreLocation: %s\n", v24);
        if (v24 == buf)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      if (sqlite3_prepare_v2(*(a1 + 8), "CREATE TABLE PressureSample (CFTime FLOAT, Timestamp FLOAT, Run TEXT, Tag TEXT, degC FLOAT, kPa FLOAT)", -1, &pStmt, 0) || sqlite3_step(pStmt) != 101)
      {
        if (qword_1EAFE2840 != -1)
        {
          dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
        }

        v53 = qword_1EAFE2860;
        if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_FAULT))
        {
          v54 = a2[23];
          v55 = *a2;
          v56 = sqlite3_errmsg(*(a1 + 8));
          if (v54 >= 0)
          {
            v57 = a2;
          }

          else
          {
            v57 = v55;
          }

          *buf = 136315394;
          v79 = v57;
          v80 = 2080;
          v81 = v56;
          _os_log_impl(&dword_19B41C000, v53, OS_LOG_TYPE_FAULT, "Can't create table in %s: %s", buf, 0x16u);
        }

        v58 = sub_19B420058();
        if ((*(v58 + 160) & 0x80000000) != 0 && (*(v58 + 164) & 0x80000000) != 0 && (*(v58 + 168) & 0x80000000) != 0 && !*(v58 + 152))
        {
          goto LABEL_34;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2840 != -1)
        {
          dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
        }

        v59 = a2[23];
        v60 = *a2;
        v42 = sqlite3_errmsg(*(a1 + 8));
        if (v59 >= 0)
        {
          v43 = a2;
        }

        else
        {
          v43 = v60;
        }
      }

      else
      {
        sqlite3_finalize(pStmt);
        pStmt = 0;
        if (sqlite3_prepare_v2(*(a1 + 8), "CREATE INDEX TheIdx ON PressureSample (Run, Tag, CFTime)", -1, &pStmt, 0) || sqlite3_step(pStmt) != 101)
        {
          if (qword_1EAFE2840 != -1)
          {
            dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
          }

          v65 = qword_1EAFE2860;
          if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_FAULT))
          {
            v66 = a2[23];
            v67 = *a2;
            v68 = sqlite3_errmsg(*(a1 + 8));
            if (v66 >= 0)
            {
              v69 = a2;
            }

            else
            {
              v69 = v67;
            }

            *buf = 136315394;
            v79 = v69;
            v80 = 2080;
            v81 = v68;
            _os_log_impl(&dword_19B41C000, v65, OS_LOG_TYPE_FAULT, "Can't create index in %s: %s", buf, 0x16u);
          }

          v70 = sub_19B420058();
          if ((*(v70 + 160) & 0x80000000) != 0 && (*(v70 + 164) & 0x80000000) != 0 && (*(v70 + 168) & 0x80000000) != 0 && !*(v70 + 152))
          {
            goto LABEL_34;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2840 != -1)
          {
            dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
          }

          v71 = a2[23];
          v72 = *a2;
          v42 = sqlite3_errmsg(*(a1 + 8));
          if (v71 >= 0)
          {
            v43 = a2;
          }

          else
          {
            v43 = v72;
          }
        }

        else
        {
          if (!sqlite3_prepare_v2(*(a1 + 8), "INSERT INTO PressureSample VALUES (?,?,?,?,?,?)", -1, v8, 0) && *v8)
          {
LABEL_149:
            sqlite3_finalize(pStmt);
            v25 = 1;
            goto LABEL_35;
          }

          if (qword_1EAFE2840 != -1)
          {
            dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
          }

          v45 = qword_1EAFE2860;
          if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_FAULT))
          {
            v46 = a2[23];
            v47 = *a2;
            v48 = sqlite3_errmsg(*(a1 + 8));
            if (v46 >= 0)
            {
              v49 = a2;
            }

            else
            {
              v49 = v47;
            }

            *buf = 136315394;
            v79 = v49;
            v80 = 2080;
            v81 = v48;
            _os_log_impl(&dword_19B41C000, v45, OS_LOG_TYPE_FAULT, "Can't create insert statment in %s: %s", buf, 0x16u);
          }

          v50 = sub_19B420058();
          if ((*(v50 + 160) & 0x80000000) != 0 && (*(v50 + 164) & 0x80000000) != 0 && (*(v50 + 168) & 0x80000000) != 0 && !*(v50 + 152))
          {
            goto LABEL_34;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2840 != -1)
          {
            dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
          }

          v51 = a2[23];
          v52 = *a2;
          v42 = sqlite3_errmsg(*(a1 + 8));
          if (v51 >= 0)
          {
            v43 = a2;
          }

          else
          {
            v43 = v52;
          }
        }
      }
    }

    else
    {
      if (qword_1EAFE2840 != -1)
      {
        dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
      }

      v28 = qword_1EAFE2860;
      if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_INFO))
      {
        if (a2[23] >= 0)
        {
          v29 = a2;
        }

        else
        {
          v29 = *a2;
        }

        *buf = 136315138;
        v79 = v29;
        _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_INFO, "Found PressureSample table already in %s", buf, 0xCu);
      }

      v30 = sub_19B420058();
      if (*(v30 + 160) > 1 || *(v30 + 164) > 1 || *(v30 + 168) > 1 || *(v30 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2840 != -1)
        {
          dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
        }

        if (a2[23] >= 0)
        {
          v31 = a2;
        }

        else
        {
          v31 = *a2;
        }

        v74 = 136315138;
        v75 = v31;
        v32 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "CLPressureSampleDatabase::CLPressureSampleDatabase(const std::string &, const std::string &, const std::string &)", "CoreLocation: %s\n", v32);
        if (v32 != buf)
        {
          free(v32);
        }
      }

      v33 = *(a3 + 23);
      if ((v33 & 0x80u) != 0)
      {
        v33 = *(a3 + 1);
      }

      if (!v33 || !sqlite3_prepare_v2(*(a1 + 8), "INSERT INTO PressureSample VALUES (?,?,?,?,?,?)", -1, v8, 0) && *v8)
      {
        goto LABEL_149;
      }

      if (qword_1EAFE2840 != -1)
      {
        dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
      }

      v34 = qword_1EAFE2860;
      if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_FAULT))
      {
        v35 = a2[23];
        v36 = *a2;
        v37 = sqlite3_errmsg(*(a1 + 8));
        if (v35 >= 0)
        {
          v38 = a2;
        }

        else
        {
          v38 = v36;
        }

        *buf = 136315394;
        v79 = v38;
        v80 = 2080;
        v81 = v37;
        _os_log_impl(&dword_19B41C000, v34, OS_LOG_TYPE_FAULT, "Can't create insert statment in %s: %s", buf, 0x16u);
      }

      v39 = sub_19B420058();
      if ((*(v39 + 160) & 0x80000000) != 0 && (*(v39 + 164) & 0x80000000) != 0 && (*(v39 + 168) & 0x80000000) != 0 && !*(v39 + 152))
      {
        goto LABEL_34;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2840 != -1)
      {
        dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
      }

      v40 = a2[23];
      v41 = *a2;
      v42 = sqlite3_errmsg(*(a1 + 8));
      if (v40 >= 0)
      {
        v43 = a2;
      }

      else
      {
        v43 = v41;
      }
    }

    v74 = 136315394;
    v75 = v43;
    v76 = 2080;
    v77 = v42;
    v24 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "CLPressureSampleDatabase::CLPressureSampleDatabase(const std::string &, const std::string &, const std::string &)", "CoreLocation: %s\n", v24);
    goto LABEL_32;
  }

  if (qword_1EAFE2840 != -1)
  {
    dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
  }

  v14 = qword_1EAFE2860;
  if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_FAULT))
  {
    v15 = a2[23];
    v16 = *a2;
    v17 = sqlite3_errmsg(*(a1 + 8));
    if (v15 >= 0)
    {
      v18 = a2;
    }

    else
    {
      v18 = v16;
    }

    *buf = 136315394;
    v79 = v18;
    v80 = 2080;
    v81 = v17;
    _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "Can't open %s: %s", buf, 0x16u);
  }

  v19 = sub_19B420058();
  if ((*(v19 + 160) & 0x80000000) != 0 && (*(v19 + 164) & 0x80000000) != 0 && (*(v19 + 168) & 0x80000000) != 0 && !*(v19 + 152))
  {
    goto LABEL_34;
  }

  bzero(buf, 0x65CuLL);
  if (qword_1EAFE2840 != -1)
  {
    dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
  }

  v20 = a2[23];
  v21 = *a2;
  v22 = sqlite3_errmsg(*(a1 + 8));
  if (v20 >= 0)
  {
    v23 = a2;
  }

  else
  {
    v23 = v21;
  }

  v74 = 136315394;
  v75 = v23;
  v76 = 2080;
  v77 = v22;
  v24 = _os_log_send_and_compose_impl();
  sub_19B6BB7CC("Generic", 1, 0, 0, "CLPressureSampleDatabase::CLPressureSampleDatabase(const std::string &, const std::string &, const std::string &)", "CoreLocation: %s\n", v24);
LABEL_32:
  if (v24 != buf)
  {
LABEL_33:
    free(v24);
  }

LABEL_34:
  sqlite3_finalize(pStmt);
  v25 = 0;
  *v8 = 0;
LABEL_35:
  *a1 = v25;
  v26 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_19B669784(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v2 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B6697FC(uint64_t a1, const void **a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  ppStmt = 0;
  sub_19B428B50(&v24, "SELECT Timestamp, degC, kPa FROM PressureSample WHERE ");
  if ((*a1 & 1) == 0)
  {
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
    }

    v17 = qword_1EAFE2860;
    if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_FAULT))
    {
      LOWORD(__p) = 0;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_FAULT, "Table PressureSample invalid", &__p, 2u);
    }

    v18 = sub_19B420058();
    if ((*(v18 + 160) & 0x80000000) != 0 && (*(v18 + 164) & 0x80000000) != 0 && (*(v18 + 168) & 0x80000000) != 0 && !*(v18 + 152))
    {
      goto LABEL_46;
    }

    bzero(&__p, 0x65CuLL);
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
    }

    LOWORD(v26) = 0;
    v16 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLPressureSampleDatabase::iterate(const std::string &, CLPressureSampleDatabase::OnSample)", "CoreLocation: %s\n", v16);
    if (v16 == &__p)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  p_p = &__p;
  sub_19B50FF5C(&__p, v6 + 20);
  if ((v29 & 0x80u) != 0)
  {
    p_p = __p;
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    memmove(p_p, v8, v6);
  }

  strcpy(p_p + v6, " ORDER BY CFTime ASC");
  if ((v29 & 0x80u) == 0)
  {
    v9 = &__p;
  }

  else
  {
    v9 = __p;
  }

  if ((v29 & 0x80u) == 0)
  {
    v10 = v29;
  }

  else
  {
    v10 = *(&__p + 1);
  }

  std::string::append(&v24, v9, v10);
  if (v29 < 0)
  {
    operator delete(__p);
  }

  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v24;
  }

  else
  {
    v11 = v24.__r_.__value_.__r.__words[0];
  }

  if (!sqlite3_prepare_v2(*(a1 + 8), v11, -1, &ppStmt, 0))
  {
    while (sqlite3_step(ppStmt) == 100)
    {
      *&__p = sqlite3_column_double(ppStmt, 0);
      v22 = sqlite3_column_double(ppStmt, 1);
      *(&__p + 3) = v22;
      v23 = sqlite3_column_double(ppStmt, 2);
      *(&__p + 2) = v23;
      (*(a3 + 16))(a3, &__p);
    }

    v19 = 1;
    goto LABEL_47;
  }

  if (qword_1EAFE2840 != -1)
  {
    dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
  }

  v12 = qword_1EAFE2860;
  if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_FAULT))
  {
    v13 = sqlite3_errmsg(*(a1 + 8));
    LODWORD(__p) = 136315138;
    *(&__p + 4) = v13;
    _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_FAULT, "Can't create query %s", &__p, 0xCu);
  }

  v14 = sub_19B420058();
  if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
  {
    bzero(&__p, 0x65CuLL);
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
    }

    v15 = sqlite3_errmsg(*(a1 + 8));
    v26 = 136315138;
    v27 = v15;
    v16 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLPressureSampleDatabase::iterate(const std::string &, CLPressureSampleDatabase::OnSample)", "CoreLocation: %s\n", v16);
    if (v16 != &__p)
    {
LABEL_45:
      free(v16);
    }
  }

LABEL_46:
  v19 = 0;
LABEL_47:
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

void sub_19B669C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ***sub_19B669CE4(void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = v2;
    sub_19B50FEB8(&v4);
    MEMORY[0x19EAE76F0](v2, 0x20C40960023A9);
  }

  return a1;
}

uint64_t sub_19B669D40(const char *a1, std::string::size_type a2, _WORD *a3)
{
  v129 = *MEMORY[0x1E69E9840];
  memset(buf, 0, sizeof(buf));
  memset(__p, 0, 24);
  sub_19B668A1C(v108, a1, buf, __p);
  if ((v108[0] & 1) == 0)
  {
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
    }

    v12 = qword_1EAFE2860;
    if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_FAULT))
    {
      if (a1[23] >= 0)
      {
        v13 = a1;
      }

      else
      {
        v13 = *a1;
      }

      *buf = 136315138;
      *&buf[4] = v13;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_FAULT, "%s is invalid", buf, 0xCu);
    }

    v14 = sub_19B420058();
    if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2840 != -1)
      {
        dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
      }

      if (a1[23] >= 0)
      {
        v15 = a1;
      }

      else
      {
        v15 = *a1;
      }

      LODWORD(__p[0]) = 136315138;
      *(__p + 4) = v15;
      v16 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "static BOOL CLPressureSampleDatabase::getPRTT(const std::string &, const std::string &, struct CLNonlinearPrtt::Syscfg &)", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    v17 = 0;
    goto LABEL_282;
  }

  ppStmt = 0;
  sub_19B428B50(__p, "SELECT Run, MAX(degC) + MIN(degC) AS Midx2, MAX(degC) - MIN(degC) AS Range FROM PressureSample GROUP BY Run HAVING Range > 5 ORDER BY Midx2");
  v100 = a3;
  if (v108[0])
  {
    if (SHIBYTE(__p[2]) >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    if (!sqlite3_prepare_v2(db, v6, -1, &ppStmt, 0))
    {
      operator new();
    }

    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
    }

    v7 = qword_1EAFE2860;
    if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_FAULT))
    {
      v8 = sqlite3_errmsg(db);
      *buf = 136315138;
      *&buf[4] = v8;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Can't create query %s", buf, 0xCu);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) != 0 && (*(v9 + 164) & 0x80000000) != 0 && (*(v9 + 168) & 0x80000000) != 0 && !*(v9 + 152))
    {
      goto LABEL_47;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
    }

    v10 = sqlite3_errmsg(db);
    v121 = 136315138;
    *v122 = v10;
    v11 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "std::unique_ptr<std::vector<std::string>> CLPressureSampleDatabase::findRuns()", "CoreLocation: %s\n", v11);
  }

  else
  {
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
    }

    v18 = qword_1EAFE2860;
    if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "PressureSample";
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_FAULT, "Table %s invalid", buf, 0xCu);
    }

    v19 = sub_19B420058();
    if ((*(v19 + 160) & 0x80000000) != 0 && (*(v19 + 164) & 0x80000000) != 0 && (*(v19 + 168) & 0x80000000) != 0 && !*(v19 + 152))
    {
      goto LABEL_47;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
    }

    v121 = 136315138;
    *v122 = "PressureSample";
    v11 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "std::unique_ptr<std::vector<std::string>> CLPressureSampleDatabase::findRuns()", "CoreLocation: %s\n", v11);
  }

  if (v11 != buf)
  {
    free(v11);
  }

LABEL_47:
  v107 = 0;
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  v20 = v107;
  v21 = a3;
  if (v107)
  {
    v106[0] = 0;
    v106[1] = 0;
    ppStmt = v106;
    *a3 = xmmword_19B7BABD0;
    *(a3 + 4) = -1;
    v99 = a3 + 8;
    v101 = a3 + 10;
    memset_pattern16(a3 + 10, &unk_19B7BD3F0, 0xCAuLL);
    v121 = 0;
    *&v122[4] = 0u;
    v123 = 0u;
    v124 = 0u;
    v126[0] = 0;
    v125 = v126;
    v127[1] = 0;
    v127[0] = 0;
    v126[1] = 0;
    v126[2] = v127;
    v127[2] = 0x6400000000;
    v22 = *v20;
    v103 = v20[1];
    if (*v20 != v103)
    {
      v102 = 0;
      while (1)
      {
        sub_19B428B50(&v120, "RUN=");
        if (*(v22 + 23) >= 0)
        {
          v23 = *(v22 + 23);
        }

        else
        {
          v23 = v22[1];
        }

        sub_19B50FF5C(buf, v23 + 1);
        if ((buf[23] & 0x80u) == 0)
        {
          v24 = buf;
        }

        else
        {
          v24 = *buf;
        }

        if (v23)
        {
          if (*(v22 + 23) >= 0)
          {
            v25 = v22;
          }

          else
          {
            v25 = *v22;
          }

          memmove(v24, v25, v23);
        }

        *&v24[v23] = 34;
        if ((buf[23] & 0x80u) == 0)
        {
          v26 = buf;
        }

        else
        {
          v26 = *buf;
        }

        if ((buf[23] & 0x80u) == 0)
        {
          v27 = buf[23];
        }

        else
        {
          v27 = *&buf[8];
        }

        std::string::append(&v120, v26, v27);
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        if (qword_1EAFE2840 != -1)
        {
          dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
        }

        v28 = qword_1EAFE2860;
        if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_DEBUG))
        {
          v29 = &v120;
          if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v29 = v120.__r_.__value_.__r.__words[0];
          }

          *buf = 136315138;
          *&buf[4] = v29;
          _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_DEBUG, "Calculating PRTT median for %s", buf, 0xCu);
        }

        v30 = sub_19B420058();
        if (*(v30 + 160) > 1 || *(v30 + 164) > 1 || *(v30 + 168) > 1 || *(v30 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2840 != -1)
          {
            dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
          }

          v31 = &v120;
          if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v31 = v120.__r_.__value_.__r.__words[0];
          }

          LODWORD(__p[0]) = 136315138;
          *(__p + 4) = v31;
          v32 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "static BOOL CLPressureSampleDatabase::getPRTT(const std::string &, const std::string &, struct CLNonlinearPrtt::Syscfg &)", "CoreLocation: %s\n", v32);
          if (v32 != buf)
          {
            free(v32);
          }
        }

        sub_19B6C31F4(&v121);
        v104[0] = MEMORY[0x1E69E9820];
        v104[1] = 3221225472;
        v104[2] = sub_19B66B6DC;
        v104[3] = &unk_1E7533C78;
        v104[4] = &v121;
        if ((sub_19B6697FC(v108, &v120.__r_.__value_.__l.__data_, v104) & 1) == 0)
        {
          if (qword_1EAFE2840 != -1)
          {
            dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
          }

          v36 = qword_1EAFE2860;
          if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_FAULT))
          {
            if (a1[23] >= 0)
            {
              v37 = a1;
            }

            else
            {
              v37 = *a1;
            }

            v38 = &v120;
            if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v38 = v120.__r_.__value_.__r.__words[0];
            }

            *buf = 136315394;
            *&buf[4] = v37;
            *&buf[12] = 2080;
            *&buf[14] = v38;
            _os_log_impl(&dword_19B41C000, v36, OS_LOG_TYPE_FAULT, "Problem running through %s for %s", buf, 0x16u);
          }

          v39 = sub_19B420058();
          if ((*(v39 + 160) & 0x80000000) == 0 || (*(v39 + 164) & 0x80000000) == 0 || (*(v39 + 168) & 0x80000000) == 0 || *(v39 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2840 != -1)
            {
              dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
            }

            if (a1[23] >= 0)
            {
              v40 = a1;
            }

            else
            {
              v40 = *a1;
            }

            v41 = &v120;
            if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v41 = v120.__r_.__value_.__r.__words[0];
            }

            LODWORD(__p[0]) = 136315394;
            *(__p + 4) = v40;
            WORD2(__p[1]) = 2080;
            *(&__p[1] + 6) = v41;
            v42 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 0, "static BOOL CLPressureSampleDatabase::getPRTT(const std::string &, const std::string &, struct CLNonlinearPrtt::Syscfg &)", "CoreLocation: %s\n", v42);
            if (v42 != buf)
            {
              free(v42);
            }
          }

          v43 = 0;
          goto LABEL_179;
        }

        sub_19B6C10B8(&v121, 4, __p);
        if ((v114 & 1) == 0)
        {
          if (qword_1EAFE2840 != -1)
          {
            dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
          }

          v44 = qword_1EAFE2860;
          if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_FAULT))
          {
            v45 = &v120;
            if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v45 = v120.__r_.__value_.__r.__words[0];
            }

            *buf = 136315138;
            *&buf[4] = v45;
            _os_log_impl(&dword_19B41C000, v44, OS_LOG_TYPE_FAULT, "Invalid stat for run %s", buf, 0xCu);
          }

          v46 = sub_19B420058();
          if ((*(v46 + 160) & 0x80000000) == 0 || (*(v46 + 164) & 0x80000000) == 0 || (*(v46 + 168) & 0x80000000) == 0 || *(v46 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2840 != -1)
            {
              dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
            }

            v47 = &v120;
            if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v47 = v120.__r_.__value_.__r.__words[0];
            }

            LODWORD(v112[0]) = 136315138;
            *(v112 + 4) = v47;
            v48 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 0, "static BOOL CLPressureSampleDatabase::getPRTT(const std::string &, const std::string &, struct CLNonlinearPrtt::Syscfg &)", "CoreLocation: %s\n", v48);
            if (v48 != buf)
            {
              free(v48);
            }
          }

          v43 = 0;
          goto LABEL_178;
        }

        v33 = *(__p + 1);
        v35 = v100 + 7;
        v34 = v100 + 4;
        if (!v102)
        {
          goto LABEL_132;
        }

        if (v102 == 2)
        {
          break;
        }

        v34 = v100 + 5;
        v35 = v99;
        if (v102 == 1)
        {
          goto LABEL_132;
        }

LABEL_133:
        memset(v112, 0, 24);
        v49 = v116;
        v50 = v117;
        v51 = (v116 + 8 * (v118 >> 9));
        if (v117 == v116)
        {
          v52 = 0;
        }

        else
        {
          v52 = (*v51 + 8 * (v118 & 0x1FF));
        }

        while (1)
        {
          v56 = v50 == v49 ? 0 : *(v49 + (((v119 + v118) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v119 + v118) & 0x1FF);
          if (v52 == v56)
          {
            break;
          }

          v110 = v52[1];
          *buf = &v110;
          v53 = sub_19B66BA20(&ppStmt, v110);
          for (i = v53[5]; i != v53[6]; ++i)
          {
            *buf = *v52 - *i;
            sub_19B5C706C(v112, buf);
          }

          v52 += 2;
          if ((v52 - *v51) == 4096)
          {
            v55 = v51[1];
            ++v51;
            v52 = v55;
          }

          v49 = v116;
          v50 = v117;
        }

        if (v112[1] == v112[0])
        {
          if (v102)
          {
            if (qword_1EAFE2840 != -1)
            {
              dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
            }

            v60 = qword_1EAFE2860;
            if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_FAULT))
            {
              v61 = &v120;
              if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v61 = v120.__r_.__value_.__r.__words[0];
              }

              *buf = 136315138;
              *&buf[4] = v61;
              _os_log_impl(&dword_19B41C000, v60, OS_LOG_TYPE_FAULT, "Cannot align run %s to previous runs", buf, 0xCu);
            }

            v62 = sub_19B420058();
            if ((*(v62 + 160) & 0x80000000) == 0 || (*(v62 + 164) & 0x80000000) == 0 || (*(v62 + 168) & 0x80000000) == 0 || *(v62 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2840 != -1)
              {
                dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
              }

              v63 = &v120;
              if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v63 = v120.__r_.__value_.__r.__words[0];
              }

              v110 = 136315138;
              v111 = v63;
              v64 = _os_log_send_and_compose_impl();
              sub_19B6BB7CC("Generic", 1, 0, 0, "static BOOL CLPressureSampleDatabase::getPRTT(const std::string &, const std::string &, struct CLNonlinearPrtt::Syscfg &)", "CoreLocation: %s\n", v64);
              if (v64 != buf)
              {
                free(v64);
              }
            }

            v43 = 0;
            goto LABEL_176;
          }

          v57 = 0.0;
        }

        else
        {
          v57 = sub_19B66BB08(v112[0], v112[1]);
          v49 = v116;
          v50 = v117;
        }

        v58 = (v49 + 8 * (v118 >> 9));
        if (v50 == v49)
        {
          v59 = 0;
        }

        else
        {
          v59 = (*v58 + 8 * (v118 & 0x1FF));
        }

        while (1)
        {
          v67 = v50 == v49 ? 0 : *(v49 + (((v119 + v118) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v119 + v118) & 0x1FF);
          if (v59 == v67)
          {
            break;
          }

          v110 = v59[1];
          *buf = &v110;
          v65 = sub_19B66BA20(&ppStmt, v110);
          *buf = *v59 - v57;
          sub_19B5C706C(v65 + 5, buf);
          v59 += 2;
          if ((v59 - *v58) == 4096)
          {
            v66 = v58[1];
            ++v58;
            v59 = v66;
          }

          v49 = v116;
          v50 = v117;
        }

        ++v102;
        v43 = 1;
LABEL_176:
        if (v112[0])
        {
          v112[1] = v112[0];
          operator delete(v112[0]);
        }

LABEL_178:
        sub_19B66B918(&v115);
LABEL_179:
        if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v120.__r_.__value_.__l.__data_);
        }

        if ((v43 & 1) == 0)
        {
          v17 = 0;
          goto LABEL_280;
        }

        v22 += 3;
        if (v22 == v103)
        {
          v76 = ppStmt;
          __p[1] = 0;
          __p[2] = 0;
          __p[0] = &__p[1];
          v75 = 3.4028e38;
          if (ppStmt == v106)
          {
            v21 = v100;
          }

          else
          {
            v21 = v100;
            do
            {
              v77 = sub_19B66BB08(*(v76 + 5), *(v76 + 6));
              v78 = __p[1];
              if (!__p[1])
              {
LABEL_226:
                operator new();
              }

              v79 = *(v76 + 8);
              while (1)
              {
                while (1)
                {
                  v80 = v78;
                  v81 = v78[7];
                  if (v81 <= v79)
                  {
                    break;
                  }

                  v78 = *v80;
                  if (!*v80)
                  {
                    goto LABEL_226;
                  }
                }

                if (v81 >= v79)
                {
                  break;
                }

                v78 = *(v80 + 1);
                if (!v78)
                {
                  goto LABEL_226;
                }
              }

              *(v80 + 8) = v77;
              if (v77 < v75)
              {
                v75 = v77;
              }

              v82 = *(v76 + 1);
              if (v82)
              {
                do
                {
                  v83 = v82;
                  v82 = *v82;
                }

                while (v82);
              }

              else
              {
                do
                {
                  v83 = *(v76 + 2);
                  v84 = *v83 == v76;
                  v76 = v83;
                }

                while (!v84);
              }

              v76 = v83;
            }

            while (v83 != v106);
          }

          goto LABEL_238;
        }
      }

      v35 = v100 + 9;
      v34 = v100 + 6;
LABEL_132:
      *v34 = vcvts_n_s32_f32(*__p * 1000.0, 8uLL);
      *v35 = vcvts_n_s32_f32(v33 * 1000.0, 8uLL);
      goto LABEL_133;
    }

    __p[1] = 0;
    __p[2] = 0;
    __p[0] = &__p[1];
    v75 = 3.4028e38;
LABEL_238:
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
    }

    v85 = qword_1EAFE2860;
    if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_DEBUG))
    {
      if (*(a2 + 23) >= 0)
      {
        v86 = a2;
      }

      else
      {
        v86 = *a2;
      }

      *buf = 134218242;
      *&buf[4] = v75;
      *&buf[12] = 2080;
      *&buf[14] = v86;
      _os_log_impl(&dword_19B41C000, v85, OS_LOG_TYPE_DEBUG, "min kPa = %f for %s", buf, 0x16u);
    }

    v87 = sub_19B420058();
    if (*(v87 + 160) > 1 || *(v87 + 164) > 1 || *(v87 + 168) > 1 || *(v87 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2840 != -1)
      {
        dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
      }

      if (*(a2 + 23) >= 0)
      {
        v88 = a2;
      }

      else
      {
        v88 = *a2;
      }

      LODWORD(v120.__r_.__value_.__l.__data_) = 134218242;
      *(v120.__r_.__value_.__r.__words + 4) = v75;
      WORD2(v120.__r_.__value_.__r.__words[1]) = 2080;
      *(&v120.__r_.__value_.__r.__words[1] + 6) = v88;
      v89 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "static BOOL CLPressureSampleDatabase::getPRTT(const std::string &, const std::string &, struct CLNonlinearPrtt::Syscfg &)", "CoreLocation: %s\n", v89);
      if (v89 != buf)
      {
        free(v89);
      }
    }

    v21[1] = vcvts_n_s32_f32(v75, 8uLL);
    v90 = __p[0];
    if (__p[0] != &__p[1])
    {
      do
      {
        v91 = *(v90 + 7);
        if (v91 < 0x64)
        {
          v101[v91] = vcvts_n_s32_f32((*(v90 + 8) - v75) * 1000.0, 6uLL);
        }

        else
        {
          if (qword_1EAFE2840 != -1)
          {
            dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
          }

          v92 = qword_1EAFE2860;
          if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = v91;
            _os_log_impl(&dword_19B41C000, v92, OS_LOG_TYPE_ERROR, "No bin for %d; dropping", buf, 8u);
          }

          v93 = sub_19B420058();
          if ((*(v93 + 160) & 0x80000000) == 0 || (*(v93 + 164) & 0x80000000) == 0 || (*(v93 + 168) & 0x80000000) == 0 || *(v93 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2840 != -1)
            {
              dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
            }

            LODWORD(v120.__r_.__value_.__l.__data_) = 67109120;
            HIDWORD(v120.__r_.__value_.__r.__words[0]) = v91;
            v94 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 0, "static BOOL CLPressureSampleDatabase::getPRTT(const std::string &, const std::string &, struct CLNonlinearPrtt::Syscfg &)", "CoreLocation: %s\n", v94);
            if (v94 != buf)
            {
              free(v94);
            }
          }
        }

        v95 = v90[1];
        if (v95)
        {
          do
          {
            v96 = v95;
            v95 = *v95;
          }

          while (v95);
        }

        else
        {
          do
          {
            v96 = v90[2];
            v84 = *v96 == v90;
            v90 = v96;
          }

          while (!v84);
        }

        v90 = v96;
      }

      while (v96 != &__p[1]);
    }

    sub_19B66BF24(__p[1]);
    v17 = 1;
LABEL_280:
    sub_19B6C1074(&v121);
    sub_19B66B9C4(v106[0]);
  }

  else
  {
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
    }

    v68 = qword_1EAFE2860;
    if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_FAULT))
    {
      if (a1[23] >= 0)
      {
        v69 = a1;
      }

      else
      {
        v69 = *a1;
      }

      if (*(a2 + 23) >= 0)
      {
        v70 = a2;
      }

      else
      {
        v70 = *a2;
      }

      *buf = 136315394;
      *&buf[4] = v69;
      *&buf[12] = 2080;
      *&buf[14] = v70;
      _os_log_impl(&dword_19B41C000, v68, OS_LOG_TYPE_FAULT, "%s has no runs for clause %s", buf, 0x16u);
    }

    v71 = sub_19B420058();
    if ((*(v71 + 160) & 0x80000000) == 0 || (*(v71 + 164) & 0x80000000) == 0 || (*(v71 + 168) & 0x80000000) == 0 || *(v71 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2840 != -1)
      {
        dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
      }

      if (a1[23] >= 0)
      {
        v72 = a1;
      }

      else
      {
        v72 = *a1;
      }

      if (*(a2 + 23) >= 0)
      {
        v73 = a2;
      }

      else
      {
        v73 = *a2;
      }

      LODWORD(__p[0]) = 136315394;
      *(__p + 4) = v72;
      WORD2(__p[1]) = 2080;
      *(&__p[1] + 6) = v73;
      v74 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "static BOOL CLPressureSampleDatabase::getPRTT(const std::string &, const std::string &, struct CLNonlinearPrtt::Syscfg &)", "CoreLocation: %s\n", v74);
      if (v74 != buf)
      {
        free(v74);
      }
    }

    v17 = 0;
  }

  sub_19B669CE4(&v107);
LABEL_282:
  sub_19B66882C(v108);
  v97 = *MEMORY[0x1E69E9840];
  return v17;
}

void sub_19B66B590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, __int16 a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a58 < 0)
  {
    operator delete(__p);
  }

  sub_19B66882C(&a38);
  _Unwind_Resume(a1);
}

void sub_19B66B6DC(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2840 != -1)
  {
    dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
  }

  v4 = qword_1EAFE2860;
  if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a2 + 12);
    v6 = *(a2 + 8);
    *buf = 134218240;
    v13 = v5;
    v14 = 2048;
    v15 = v6;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEBUG, "Feeding %f %f to median estimator", buf, 0x16u);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E29440);
    }

    v10 = *(a2 + 12);
    v11 = *(a2 + 8);
    v8 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "static BOOL CLPressureSampleDatabase::getPRTT(const std::string &, const std::string &, struct CLNonlinearPrtt::Syscfg &)_block_invoke", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  sub_19B6C23F4(*(a1 + 32), a2);
  v9 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B66B8E8()
{
  result = os_log_create("com.apple.locationd.Motion", "Pressure");
  qword_1EAFE2860 = result;
  return result;
}

uint64_t sub_19B66B918(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_19B42AD10(a1);
}

void sub_19B66B9C4(void *a1)
{
  if (a1)
  {
    sub_19B66B9C4(*a1);
    sub_19B66B9C4(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      a1[6] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

uint64_t *sub_19B66BA20(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

float sub_19B66BB08(float *a1, float *a2)
{
  v2 = a2 - a1;
  if (a2 - a1 <= 3)
  {
    __assert_rtn("getMedianInPlace", "CMPressureUtilities.h", 172, "size > 0");
  }

  v3 = a1;
  v4 = (v2 >> 1) & 0x3FFFFFFFFFFFFFFCLL;
  v5 = (a1 + v4);
  if ((a1 + v4) != a2)
  {
    sub_19B66BBE4(a1, (a1 + v4), a2);
  }

  if ((v2 & 4) != 0)
  {
    return *v5;
  }

  if (v4)
  {
    v6 = v3 + 1;
    if (v3 + 1 != v5)
    {
      v7 = *v3;
      v8 = v3 + 1;
      do
      {
        v9 = *v8++;
        v10 = v9;
        if (v7 < v9)
        {
          v7 = v10;
          v3 = v6;
        }

        v6 = v8;
      }

      while (v8 != v5);
    }
  }

  return *v3 + ((*v5 - *v3) * 0.5);
}

float *sub_19B66BBE4(float *result, float *a2, float *a3)
{
  while (a3 != a2)
  {
    v3 = a3 - result;
    if (v3 < 2)
    {
      break;
    }

    if (v3 == 3)
    {
      v41 = result[1];
      v42 = *(a3 - 1);
      if (v41 < v42)
      {
        v43 = *(result + 1);
      }

      else
      {
        v43 = *(a3 - 1);
      }

      if (v41 < v42)
      {
        v41 = *(a3 - 1);
      }

      *(a3 - 1) = v41;
      *(result + 1) = v43;
      v44 = *(a3 - 1);
      if (v44 < *result)
      {
        v45 = *(a3 - 1);
      }

      else
      {
        v45 = *result;
      }

      if (v44 < *result)
      {
        v44 = *result;
      }

      *(a3 - 1) = v44;
      v46 = result[1];
      if (v45 < v46)
      {
        v45 = result[1];
      }

      else
      {
        *result = v46;
      }

      result[1] = v45;
      return result;
    }

    if (v3 == 2)
    {
      v47 = *(a3 - 1);
      v48 = *result;
      if (v47 < *result)
      {
        *result = v47;
        *(a3 - 1) = v48;
      }

      return result;
    }

    if (v3 <= 7)
    {
      return sub_19B66BEB0(result, a3);
    }

    v4 = &result[(a3 - result) >> 3];
    v5 = a3 - 1;
    v6 = *(a3 - 1);
    v7 = *v4;
    if (*v4 < v6)
    {
      v8 = *v4;
    }

    else
    {
      v8 = *(a3 - 1);
    }

    if (*v4 < v6)
    {
      v9 = *(a3 - 1);
    }

    else
    {
      v9 = *v4;
    }

    *v5 = v9;
    *v4 = v8;
    v10 = *v5;
    v11 = *result;
    if (*v5 < *result)
    {
      v12 = *v5;
    }

    else
    {
      v12 = *result;
    }

    if (*v5 < *result)
    {
      v13 = *result;
    }

    else
    {
      v13 = *v5;
    }

    *v5 = v13;
    v14 = *v4;
    v15 = *v4;
    if (v12 >= *v4)
    {
      *result = v14;
      v15 = v12;
    }

    v16 = v10 >= v11;
    if (v12 >= v14)
    {
      v16 = 1;
    }

    *v4 = v15;
    if (v7 >= v6)
    {
      v16 = 1;
    }

    v17 = *result;
    if (*result >= v15)
    {
      v18 = a3 - 1;
      while (--v18 != result)
      {
        if (*v18 < v15)
        {
          *result = *v18;
          *v18 = v17;
          if (v16)
          {
            v16 = 2;
          }

          else
          {
            v16 = 1;
          }

          goto LABEL_33;
        }
      }

      v30 = result + 1;
      if (v17 >= *v5)
      {
        while (v30 != v5)
        {
          v31 = *v30;
          if (v17 < *v30)
          {
            *v30++ = *v5;
            *v5 = v31;
            goto LABEL_65;
          }

          ++v30;
        }

        return result;
      }

LABEL_65:
      if (v30 == v5)
      {
        return result;
      }

      while (1)
      {
        v35 = *result;
        do
        {
          v36 = *v30++;
          v37 = v36;
        }

        while (v35 >= v36);
        v38 = v30 - 1;
        do
        {
          v39 = *--v5;
          v40 = v39;
        }

        while (v35 < v39);
        if (v38 >= v5)
        {
          break;
        }

        *v38 = v40;
        *v5 = v37;
      }

      result = v30 - 1;
      if (v38 > a2)
      {
        return result;
      }
    }

    else
    {
      v18 = a3 - 1;
LABEL_33:
      v19 = result + 1;
      if (result + 1 >= v18)
      {
        v24 = result + 1;
      }

      else
      {
        v20 = result + 1;
        while (1)
        {
          v21 = *v4;
          do
          {
            v22 = *v20++;
            v23 = v22;
          }

          while (v22 < v21);
          v24 = v20 - 1;
          do
          {
            v25 = *--v18;
            v26 = v25;
          }

          while (v25 >= v21);
          if (v24 >= v18)
          {
            break;
          }

          *v24 = v26;
          *v18 = v23;
          ++v16;
          if (v24 == v4)
          {
            v4 = v18;
          }
        }
      }

      if (v24 != v4)
      {
        v27 = *v24;
        if (*v4 < *v24)
        {
          *v24 = *v4;
          *v4 = v27;
          ++v16;
        }
      }

      if (v24 == a2)
      {
        return result;
      }

      if (!v16)
      {
        if (v24 <= a2)
        {
          v32 = v24 + 1;
          while (v32 != a3)
          {
            v34 = *(v32 - 1);
            v33 = *v32++;
            if (v33 < v34)
            {
              goto LABEL_49;
            }
          }
        }

        else
        {
          while (v19 != v24)
          {
            v29 = *(v19 - 1);
            v28 = *v19++;
            if (v28 < v29)
            {
              goto LABEL_49;
            }
          }
        }

        return result;
      }

LABEL_49:
      if (v24 <= a2)
      {
        result = v24 + 1;
      }

      else
      {
        a3 = v24;
      }
    }
  }

  return result;
}

float *sub_19B66BEB0(float *result, float *a2)
{
  while (result != a2 - 1)
  {
    v2 = result++;
    if (v2 != a2 && result != a2)
    {
      v3 = *v2;
      v4 = *v2;
      v5 = result;
      v6 = v2;
      v7 = result;
      do
      {
        v8 = *v7++;
        v9 = v8;
        if (v8 < v4)
        {
          v4 = v9;
          v6 = v5;
        }

        v5 = v7;
      }

      while (v7 != a2);
      if (v6 != v2)
      {
        *v2 = *v6;
        *v6 = v3;
      }
    }
  }

  return result;
}

void sub_19B66BF24(void *a1)
{
  if (a1)
  {
    sub_19B66BF24(*a1);
    sub_19B66BF24(a1[1]);

    operator delete(a1);
  }
}

float32_t sub_19B66BF70(uint64_t a1, float *a2, float32x4_t a3)
{
  v3 = *(a1 + 8);
  a3.i32[0] = *(a1 + 12);
  v4 = a2[1];
  v5 = *(a1 + 4);
  v6 = a2[2];
  v7 = a2[3];
  *&v8 = (((v3 * v4) + (a3.f32[0] * *a2)) - (v5 * v6)) + (*a1 * v7);
  *&v9 = (((a3.f32[0] * v4) - (v3 * *a2)) + (*a1 * v6)) + (v5 * v7);
  *&v10 = (((v5 * *a2) - (*a1 * v4)) + (a3.f32[0] * v6)) + (v3 * v7);
  v11 = (-(v5 * v4) - (*a1 * *a2)) - (v3 * v6);
  v13.i64[0] = __PAIR64__(v9, v8);
  a3.f32[0] = v11 + (a3.f32[0] * v7);
  v13.i64[1] = __PAIR64__(a3.u32[0], v10);
  sub_19B41E130(&v13, a3);
  return v13.f32[0];
}

float32_t sub_19B66BFF4(float32x2_t *a1, float32x4_t a2)
{
  v2 = a1[1].i32[1];
  a2.f32[0] = -a1[1].f32[0];
  *v4.f32 = vneg_f32(*a1);
  v4.i64[1] = __PAIR64__(v2, a2.u32[0]);
  sub_19B41E130(&v4, a2);
  return v4.f32[0];
}

float32_t sub_19B66C038(float32x4_t *a1)
{
  v2 = vnegq_f32(*a1);
  sub_19B41E130(&v2, v2);
  return v2.f32[0];
}

float32_t sub_19B66C070(float32x4_t *a1)
{
  if (a1->f32[3] < 0.0)
  {
    return sub_19B66C038(a1);
  }

  result = a1->f32[0];
  v2 = a1->i32[1];
  v3 = a1->i32[2];
  return result;
}

float32_t sub_19B66C0A4(float32x2_t *a1, uint64_t a2, float32x4_t a3)
{
  v4.f32[0] = sub_19B66BFF4(a1, a3);
  v12[0] = v4.f32[0];
  v12[1] = v5;
  v12[2] = v6;
  v12[3] = v7;
  v13.i32[0] = sub_19B66BF70(a2, v12, v4);
  *(v13.i64 + 4) = __PAIR64__(v9, v8);
  v13.i32[3] = v10;
  return sub_19B66C070(&v13);
}

float sub_19B66C0F4(float *a1)
{
  v1 = 0;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  result = (((*a1 * *a1) + (v3 * v3)) * 2.0) + -1.0;
  v6 = ((*a1 * v2) - (v3 * v4)) + ((*a1 * v2) - (v3 * v4));
  v7 = ((v3 * v2) + (*a1 * v4)) + ((v3 * v2) + (*a1 * v4));
  v11[0] = result;
  v11[1] = v6;
  v11[2] = v7;
  v8 = 0.0;
  do
  {
    v8 = v8 + (v11[v1] * v11[v1]);
    ++v1;
  }

  while (v1 != 3);
  if (sqrtf(v8) > 0.00000011921)
  {
    v9 = 0;
    v10 = 0.0;
    do
    {
      v10 = v10 + (v11[v9] * v11[v9]);
      ++v9;
    }

    while (v9 != 3);
    return result / sqrtf(v10);
  }

  return result;
}

float sub_19B66C1A4(float *a1, float a2, float a3, float a4)
{
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = a4;
  sub_19B66D368(a1, v6, 1.0);
  return sub_19B61AD14(v6, v5);
}

void sub_19B66C1E0(float *a1, uint64_t a2)
{
  sub_19B66D368(a1, v5, -1.0);
  *a2 = sub_19B61AD14(v5, a2);
  *(a2 + 4) = v3;
  *(a2 + 8) = v4;
}

float sub_19B66C228(float *a1, float a2, float a3, float a4)
{
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = a4;
  sub_19B66D368(a1, v6, -1.0);
  return sub_19B61AD14(v6, v5);
}

double sub_19B66C264(float32x4_t *a1, float *a2)
{
  v4 = 0;
  v5 = 0.0;
  do
  {
    v5 = v5 + (a2[v4] * a2[v4]);
    ++v4;
  }

  while (v4 != 3);
  v6 = sqrtf(v5);
  v7 = 0.5;
  v8 = v6 * 0.5;
  if ((v6 * 0.5) > 0.0)
  {
    v7 = (sinf(v6 * 0.5) / v8) * 0.5;
  }

  a1->f32[0] = v7 * *a2;
  a1->f32[1] = v7 * a2[1];
  a1->f32[2] = v7 * a2[2];
  v9.f32[0] = cosf(v8);
  a1->i32[3] = v9.i32[0];

  *&result = sub_19B41E130(a1, v9).u64[0];
  return result;
}

float sub_19B66C31C(float32x4_t *a1)
{
  v11 = *a1;
  v2 = sub_19B66C070(&v11);
  v3 = 0;
  *v10 = v2;
  v10[1] = v4;
  v10[2] = v5;
  v6 = 0.0;
  do
  {
    v6 = v6 + (*&v10[v3] * *&v10[v3]);
    ++v3;
  }

  while (v3 != 3);
  v7 = sqrtf(v6);
  if (v7 >= 0.00000011921)
  {
    v8 = atan2f(v7, v1);
    return v2 * ((v8 + v8) / v7);
  }

  return v2;
}

BOOL sub_19B66C3CC(float *a1, float32x4_t *a2, uint64_t a3, float a4, float a5, float a6, float a7, float a8, float a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16)
{
  v160 = *MEMORY[0x1E69E9840];
  v152 = a4;
  v153 = __PAIR64__(LODWORD(a6), LODWORD(a5));
  v150 = a7;
  v151 = __PAIR64__(LODWORD(a9), LODWORD(a8));
  *v149 = a15;
  *&v149[8] = a16;
  if ((atomic_load_explicit(&qword_1ED71D1D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D1D0))
  {
    dword_1ED71D1C8 = 1043452116;
    __cxa_guard_release(&qword_1ED71D1D0);
  }

  v19 = 0;
  v20 = 0.0;
  do
  {
    v20 = v20 + (*(&v152 + v19) * *(&v152 + v19));
    v19 += 4;
  }

  while (v19 != 12);
  if (sqrtf(v20) == 0.0)
  {
    goto LABEL_8;
  }

  v21 = 0;
  v22 = 0.0;
  do
  {
    v22 = v22 + (*(&v150 + v21) * *(&v150 + v21));
    v21 += 4;
  }

  while (v21 != 12);
  if (sqrtf(v22) == 0.0)
  {
    goto LABEL_8;
  }

  v26 = 0;
  v27 = v152;
  v29 = v153.f32[1];
  v28 = v153.f32[0];
  *buf = v152;
  *&buf[4] = v153;
  v30 = 0.0;
  do
  {
    v30 = v30 + (*&buf[v26] * *&buf[v26]);
    v26 += 4;
  }

  while (v26 != 12);
  if (sqrtf(v30) > 0.00000011921)
  {
    v31 = 0;
    v32 = 0.0;
    do
    {
      v32 = v32 + (*&buf[v31] * *&buf[v31]);
      v31 += 4;
    }

    while (v31 != 12);
    v33 = sqrtf(v32);
    v27 = v152 / v33;
    v28 = v153.f32[0] / v33;
    v29 = v153.f32[1] / v33;
  }

  v34 = 0;
  v152 = v27;
  v153 = __PAIR64__(LODWORD(v29), LODWORD(v28));
  v35 = v150;
  v37 = v151.f32[1];
  v36 = v151.f32[0];
  *buf = v150;
  *&buf[4] = v151;
  v38 = 0.0;
  do
  {
    v38 = v38 + (*&buf[v34] * *&buf[v34]);
    v34 += 4;
  }

  while (v34 != 12);
  if (sqrtf(v38) > 0.00000011921)
  {
    v39 = 0;
    v40 = 0.0;
    do
    {
      v40 = v40 + (*&buf[v39] * *&buf[v39]);
      v39 += 4;
    }

    while (v39 != 12);
    v41 = sqrtf(v40);
    v35 = v150 / v41;
    v36 = v151.f32[0] / v41;
    v37 = v151.f32[1] / v41;
  }

  v42 = 0;
  v150 = v35;
  v151 = __PAIR64__(LODWORD(v37), LODWORD(v36));
  v43 = (v28 * v37) - (v29 * v36);
  v44 = (v29 * v35) - (v27 * v37);
  v45 = (v27 * v36) - (v28 * v35);
  v146 = v43;
  v147 = v44;
  v148 = v45;
  v46 = 0.0;
  do
  {
    v46 = v46 + (*(&v146 + v42) * *(&v146 + v42));
    v42 += 4;
  }

  while (v42 != 12);
  v47 = sqrtf(v46);
  if (v47 < *&dword_1ED71D1C8)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E29460);
    }

    v48 = off_1ED71C828;
    v49 = v47;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      *&buf[4] = v49;
      _os_log_impl(&dword_19B41C000, v48, OS_LOG_TYPE_DEBUG, "n and g are too close %f", buf, 0xCu);
    }

    v50 = sub_19B420058();
    if (*(v50 + 160) > 1 || *(v50 + 164) > 1 || *(v50 + 168) > 1 || *(v50 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E29460);
      }

      LODWORD(v154) = 134217984;
      *(&v154 + 4) = v49;
      v51 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "static BOOL CMOQuaternion::northAndGravity(CMVector<float, 3>, CMVector<float, 3>, CMVector<float, 3>, const float *, CMOQuaternion &, CMMatrix<float, 3> &)", "CoreLocation: %s\n", v51);
      if (v51 != buf)
      {
        free(v51);
      }
    }

LABEL_8:
    v23 = 0;
    goto LABEL_9;
  }

  v52 = 0;
  v53 = v43 / v47;
  v54 = v44 / v47;
  v146 = v43 / v47;
  v147 = v44 / v47;
  v55 = v45 / v47;
  v148 = v55;
  v57 = *&v149[4];
  v56 = *v149;
  v58 = *&v149[8];
  *buf = *v149;
  *&buf[8] = *&v149[8];
  v59 = 0.0;
  do
  {
    v59 = v59 + (*&buf[v52] * *&buf[v52]);
    v52 += 4;
  }

  while (v52 != 12);
  if (sqrtf(v59) > 0.00000011921)
  {
    v60 = 0;
    v61 = 0.0;
    do
    {
      v61 = v61 + (*&buf[v60] * *&buf[v60]);
      v60 += 4;
    }

    while (v60 != 12);
    v62 = sqrtf(v61);
    v56 = *v149 / v62;
    v57 = *&v149[4] / v62;
    v58 = *&v149[8] / v62;
  }

  v63 = 0;
  *v149 = v56;
  *&v149[4] = v57;
  *&v149[8] = v58;
  *v145 = 0;
  *&v145[8] = -1082130432;
  v64 = (v58 * -0.0) - v57;
  v65 = 0.0;
  v66 = v56 + (v58 * 0.0);
  v67 = (v57 * -0.0) + (v56 * 0.0);
  *buf = v64;
  *&buf[4] = v66;
  *&buf[8] = v67;
  do
  {
    v65 = v65 + (*&buf[v63] * *&buf[v63]);
    v63 += 4;
  }

  while (v63 != 12);
  if (sqrtf(v65) > 0.00000011921)
  {
    v68 = 0;
    v69 = 0.0;
    do
    {
      v69 = v69 + (*&buf[v68] * *&buf[v68]);
      v68 += 4;
    }

    while (v68 != 12);
    v70 = sqrtf(v69);
    v64 = v64 / v70;
    v66 = v66 / v70;
    v67 = v67 / v70;
  }

  v71 = 0;
  *v144 = v64;
  *&v144[1] = v66;
  *&v144[2] = v67;
  v72 = (v36 * v55) - (v37 * v54);
  v73 = (v37 * v53) - (v35 * v55);
  v74 = (v35 * v54) - (v36 * v53);
  *buf = v72;
  *&buf[4] = v73;
  *&buf[8] = v74;
  v75 = 0.0;
  do
  {
    v75 = v75 + (*&buf[v71] * *&buf[v71]);
    v71 += 4;
  }

  while (v71 != 12);
  if (sqrtf(v75) > 0.00000011921)
  {
    v76 = 0;
    v77 = 0.0;
    do
    {
      v77 = v77 + (*&buf[v76] * *&buf[v76]);
      v76 += 4;
    }

    while (v76 != 12);
    v78 = sqrtf(v77);
    v72 = v72 / v78;
    v73 = v73 / v78;
    v74 = v74 / v78;
  }

  v152 = v72;
  v153 = __PAIR64__(LODWORD(v74), LODWORD(v73));
  sub_19B66D118(&v154, &v152, v149);
  sub_19B66D118(&v141, &v150, v145);
  sub_19B66D118(v139, &v146, v144);
  v79 = ((a1[1] * a1[1]) + (*a1 * *a1)) + ((*a1 + *a1) * a1[1]);
  if (v79 == 0.0)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E29460);
    }

    v111 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v111, OS_LOG_TYPE_FAULT, "Assertion failed: lambda2 != 0, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMOQuaternion.cpp, line 208,invalid weights.", buf, 2u);
    }

    v112 = sub_19B420058();
    if ((*(v112 + 160) & 0x80000000) == 0 || (*(v112 + 164) & 0x80000000) == 0 || (*(v112 + 168) & 0x80000000) == 0 || *(v112 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E29460);
      }

      LOWORD(v137[0]) = 0;
      v113 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "static BOOL CMOQuaternion::northAndGravity(CMVector<float, 3>, CMVector<float, 3>, CMVector<float, 3>, const float *, CMOQuaternion &, CMMatrix<float, 3> &)", "CoreLocation: %s\n", v113);
      if (v113 != buf)
      {
        free(v113);
      }
    }
  }

  v137[0] = v139[0];
  v137[1] = v139[1];
  v138 = v140;
  v80 = *a1;
  *buf = v154;
  v158 = v155;
  v159 = v156;
  v124 = 0;
  v125 = v153.i32[1];
  v126 = vneg_f32(v153);
  v127 = 0;
  v128 = v152;
  v129 = v153.i32[0];
  v130 = -v152;
  v131 = 0;
  sub_19B604B68(&v124, v139, v132);
  v117 = 0;
  v118 = *&v149[8];
  v119 = vneg_f32(*&v149[4]);
  v120 = 0;
  v121 = *v149;
  v122 = -*v149;
  v123 = 0;
  sub_19B604B68(v132, &v117, v133);
  for (i = 0; i != 9; ++i)
  {
    *&buf[4 * i] = *&buf[4 * i] - sub_19B5DB794(v133, i);
  }

  v82 = 0;
  v83 = 1.0 / sqrtf(v79);
  v134 = *buf;
  v135 = v158;
  v136 = v159;
  do
  {
    *(&v134 + v82) = (v83 * v80) * *(&v134 + v82);
    v82 += 4;
  }

  while (v82 != 36);
  v84 = 0;
  *buf = v134;
  v158 = v135;
  v159 = v136;
  do
  {
    *(v137 + v84) = sub_19B5DB794(buf, v84) + *(v137 + v84);
    ++v84;
  }

  while (v84 != 9);
  v85 = a1[1];
  *buf = v141;
  v158 = v142;
  v159 = v143;
  v124 = 0;
  v125 = v151.i32[1];
  v126 = vneg_f32(v151);
  v127 = 0;
  v128 = v150;
  v129 = v151.i32[0];
  v130 = -v150;
  v131 = 0;
  sub_19B604B68(&v124, v139, v132);
  v117 = 0;
  v118 = *&v145[8];
  v119 = vneg_f32(*&v145[4]);
  v120 = 0;
  v121 = *v145;
  v122 = -*v145;
  v123 = 0;
  sub_19B604B68(v132, &v117, v133);
  for (j = 0; j != 9; ++j)
  {
    *&buf[4 * j] = *&buf[4 * j] - sub_19B5DB794(v133, j);
  }

  v87 = 0;
  v134 = *buf;
  v135 = v158;
  v136 = v159;
  do
  {
    *(&v134 + v87) = (v83 * v85) * *(&v134 + v87);
    v87 += 4;
  }

  while (v87 != 36);
  v88 = 0;
  *buf = v134;
  v158 = v135;
  v159 = v136;
  do
  {
    v89.f32[0] = sub_19B5DB794(buf, v88) + *(v137 + v88);
    *(v137 + v88++) = v89.i32[0];
  }

  while (v88 != 9);
  sub_19B66D1AC(a2, v137, v89);
  v90 = 0;
  v91 = *a1;
  v114 = v154;
  v115 = v155;
  v116 = v156;
  do
  {
    *(&v114 + v90) = v91 * *(&v114 + v90);
    v90 += 4;
  }

  while (v90 != 36);
  v92 = 0;
  v93 = a1[1];
  v134 = v141;
  v135 = v142;
  v136 = v143;
  do
  {
    *(&v134 + v92) = v93 * *(&v134 + v92);
    v92 += 4;
  }

  while (v92 != 36);
  v94 = 0;
  *buf = v134;
  v158 = v135;
  v159 = v136;
  do
  {
    *(&v114 + v94) = sub_19B5DB794(buf, v94) + *(&v114 + v94);
    ++v94;
  }

  while (v94 != 9);
  v95 = 0;
  v134 = v114;
  v135 = v115;
  v136 = v116;
  v96 = 0.0;
  do
  {
    v96 = v96 + (*(&v134 + v95) * *(&v134 + v95));
    v95 += 4;
  }

  while (v95 != 36);
  v97 = sqrtf(v96);
  v98 = (v79 - (v97 * v97)) * 0.5;
  v23 = v98 != 0.0;
  if (v98 == 0.0)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E29460);
    }

    v108 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v108, OS_LOG_TYPE_DEBUG, "kappa zero!", buf, 2u);
    }

    v109 = sub_19B420058();
    if (*(v109 + 160) > 1 || *(v109 + 164) > 1 || *(v109 + 168) > 1 || *(v109 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E29460);
      }

      v133[0] = 0;
      v110 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "static BOOL CMOQuaternion::northAndGravity(CMVector<float, 3>, CMVector<float, 3>, CMVector<float, 3>, const float *, CMOQuaternion &, CMMatrix<float, 3> &)", "CoreLocation: %s\n", v110);
      if (v110 != buf)
      {
        free(v110);
      }
    }
  }

  else
  {
    v99 = 0;
    v100 = v83 * (1.0 / v98);
    do
    {
      for (k = 0; k != 3; ++k)
      {
        v102 = 0;
        *sub_19B5D68B8(a3, v99, k) = 0;
        do
        {
          v103 = sub_19B601068(&v134, v99, v102);
          v104 = sub_19B601068(&v134, k, v102);
          v105 = sub_19B5D68B8(a3, v99, k);
          *v105 = *v105 + (v103 * v104);
          ++v102;
        }

        while (v102 != 3);
        v106 = sub_19B5D68B8(a3, v99, k);
        *v106 = v100 * *v106;
      }

      v107 = sub_19B5D68B8(a3, v99, v99);
      *v107 = v83 + *v107;
      ++v99;
    }

    while (v99 != 3);
  }

LABEL_9:
  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

float *sub_19B66D118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = 0; i != 3; ++i)
  {
    for (j = 0; j != 3; ++j)
    {
      v8 = sub_19B5D6144(a2, i);
      v9 = v8 * sub_19B5D6144(a3, j);
      result = sub_19B5D68B8(a1, i, j);
      *result = v9;
    }
  }

  return result;
}

double sub_19B66D1AC(float32x4_t *a1, float *a2, float32x4_t a3)
{
  v3 = *a2;
  v4 = a2[4];
  v5 = a2[8];
  v6 = (*a2 + v4) + v5;
  if (v6 <= 0.0)
  {
    if (v3 > v4)
    {
      v8 = v3 == v5;
      v9 = v3 < v5;
    }

    else
    {
      v8 = 1;
      v9 = 0;
    }

    if (v9 || v8)
    {
      if (v4 <= v5)
      {
        v15 = ((-v3 - v4) + v5) + 1.0;
        v16 = 0.5 / sqrtf(v15);
        a1->f32[2] = v15 * v16;
        a1->f32[3] = v16 * (a2[3] - a2[1]);
        a1->f32[0] = v16 * (a2[2] + a2[6]);
        a3.f32[0] = v16 * (a2[7] + a2[5]);
        a1->i32[1] = a3.i32[0];
      }

      else
      {
        v10 = ((v4 - v3) - v5) + 1.0;
        v11 = 0.5 / sqrtf(v10);
        a1->f32[1] = v10 * v11;
        a1->f32[0] = v11 * (a2[3] + a2[1]);
        a1->f32[3] = v11 * (a2[2] - a2[6]);
        a3.f32[0] = v11 * (a2[7] + a2[5]);
        a1->i32[2] = a3.i32[0];
      }
    }

    else
    {
      v13 = ((v3 - v4) - v5) + 1.0;
      v14 = 0.5 / sqrtf(v13);
      a1->f32[0] = v13 * v14;
      a1->f32[1] = v14 * (a2[3] + a2[1]);
      a1->f32[2] = v14 * (a2[2] + a2[6]);
      a3.f32[0] = v14 * (a2[7] - a2[5]);
      a1->i32[3] = a3.i32[0];
    }
  }

  else
  {
    v7 = 0.5 / sqrtf(v6 + 1.0);
    a1->f32[3] = (v6 + 1.0) * v7;
    a1->f32[2] = v7 * (a2[3] - a2[1]);
    a1->f32[1] = v7 * (a2[2] - a2[6]);
    a3.f32[0] = v7 * (a2[7] - a2[5]);
    a1->i32[0] = a3.i32[0];
  }

  *&result = sub_19B41E130(a1, a3).u64[0];
  return result;
}

float sub_19B66D368@<S0>(float *a1@<X0>, float *a2@<X8>, float a3@<S0>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = v3 + v3;
  v6 = *a1;
  v7 = a1[1];
  v8 = v7 + v7;
  v9 = v3 * (v3 + v3);
  v10 = ((v7 + v7) * v7) + -1.0;
  v11 = ((v4 + v4) * v4) + -1.0;
  v12 = (v6 + v6) * v7;
  v13 = (v6 + v6) * v4;
  v14 = v3 * (v6 + v6);
  v15 = v8 * v4;
  v16 = v3 * v8;
  v17 = v5 * v4;
  v18 = v9 + (((v6 + v6) * v6) + -1.0);
  v19 = v12 - (v17 * a3);
  v20 = v13 + (v16 * a3);
  v21 = v12 + (v17 * a3);
  v22 = v9 + v10;
  v23 = v15 - (v14 * a3);
  v24 = v13 - (v16 * a3);
  result = v15 + (v14 * a3);
  *a2 = v18;
  a2[1] = v19;
  a2[2] = v20;
  a2[3] = v21;
  a2[4] = v22;
  a2[5] = v23;
  a2[6] = v24;
  a2[7] = result;
  a2[8] = v9 + v11;
  return result;
}

void sub_19B66D3E8(float *a1)
{
  if ((atomic_load_explicit(&qword_1ED71D1D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D1D8))
  {
    dword_1ED71D1CC = 1043452116;
    __cxa_guard_release(&qword_1ED71D1D8);
  }

  v2 = sub_19B447000(a1);
  if (v4 <= sqrtf((v3 * v3) + (v2 * v2)))
  {
    v5 = -1.0;
  }

  else
  {
    v5 = 1.0;
  }

  v18 = 0x3F80000000000000;
  v19 = 0;
  v6 = sub_19B447000(a1);
  v9 = 0;
  v10 = (v8 * -0.0) + (v7 * v5);
  v11 = 0.0;
  v12 = (v8 * 0.0) - (v6 * v5);
  v13 = (v7 * -0.0) + (v6 * 0.0);
  v17[0] = v10;
  v17[1] = v12;
  v17[2] = v13;
  do
  {
    v11 = v11 + (v17[v9] * v17[v9]);
    ++v9;
  }

  while (v9 != 3);
  v14 = sqrtf(v11);
  if (v14 > *&dword_1ED71D1CC)
  {
    v15 = -atan2f(sqrtf((v7 * v7) + (v6 * v6)), v8 * v5) / v14;
    v20[0] = v10 * v15;
    v20[1] = v12 * v15;
    v20[2] = v13 * v15;
    sub_19B66C264(&v16, v20);
    sub_19B66D368(v16.f32, v20, -1.0);
    sub_19B61AD14(v20, &v18);
  }
}

float sub_19B66D564(float *a1)
{
  sub_19B66D3E8(a1);
  v5 = sub_19B66C228(a1, v2, v3, v4);
    ;
  }

    ;
  }

  return result;
}

void sub_19B66D5F4(float32x4_t *a1, float32x4_t *a2, float a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a3 < 0.0 || a3 > 1.0)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E29460);
    }

    v22 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      buf.i16[0] = 0;
      _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_FAULT, "Assertion failed: t >= 0 && t <= 1, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMOQuaternion.cpp, line 375,Invalid time t for slerp.", &buf, 2u);
    }

    v23 = sub_19B420058();
    if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E29460);
      }

      v28.i16[0] = 0;
      v24 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "static CMOQuaternion CMOQuaternion::slerp(const CMOQuaternion &, const CMOQuaternion &, const float)", "CoreLocation: %s\n", v24);
      if (v24 != &buf)
      {
        free(v24);
      }
    }
  }

  buf = *a1;
  sub_19B41E130(&buf, buf);
  v28 = *a2;
  sub_19B41E130(&v28, v28);
  v7 = v28.i64[0];
  v8 = buf.f32[2];
  v9 = v28.i64[1];
  v10 = fmaxf(fminf((((buf.f32[1] * v28.f32[1]) + (buf.f32[0] * v28.f32[0])) + (buf.f32[2] * v28.f32[2])) + (buf.f32[3] * v28.f32[3]), 1.0), -1.0);
  v11 = -v10;
  if (v10 > 0.0)
  {
    v11 = v10;
  }

  v12 = v11 + -1.0;
  if ((v11 + -1.0) <= 0.0)
  {
    v12 = -v12;
  }

  if (v12 >= 0.00000011921)
  {
    v25 = buf.f32[0];
    v26 = buf.f32[1];
    v27 = buf.f32[3];
    v13 = acosf(v10);
    v14 = sinf(v13);
    v15 = sinf((1.0 - a3) * v13);
    v16 = v13 * a3;
    v17 = v15 / v14;
    v18 = sinf(v16) / v14;
    *&v19 = (*&v9 * v18) + (v17 * v8);
    v29.f32[0] = (*&v7 * v18) + (v17 * v25);
    v29.f32[1] = (*(&v7 + 1) * v18) + (v17 * v26);
    v20.f32[0] = (*(&v9 + 1) * v18) + (v17 * v27);
    v29.i64[1] = __PAIR64__(v20.u32[0], v19);
    sub_19B41E130(&v29, v20);
  }

  else
  {
    v29 = *a1;
  }

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B66DC00()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  qword_1ED71D1E0 = v0;

  return objc_msgSend_setDateFormat_(v0, v1, @"yyyy-MM-dd HH:mm:ss Z");
}

uint64_t sub_19B66DC40(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  *a1 = 0x7FF8000000000000;
  v2.i64[0] = 0x3F0000003FLL;
  v2.i64[1] = 0x3F0000003FLL;
  v3 = vnegq_f32(v2);
  *(a1 + 8) = v3;
  *(a1 + 24) = v3;
  *(a1 + 40) = v3;
  *(a1 + 56) = 0;
  *(a1 + 61) = 0;
  *(a1 + 72) = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a1 + 120) = xmmword_19B7BAC08;
  *(a1 + 136) = unk_19B7BAC18;
  *(a1 + 152) = xmmword_19B7BAC28;
  *(a1 + 168) = unk_19B7BAC38;
  *(a1 + 88) = xmmword_19B7BABE8;
  *(a1 + 104) = unk_19B7BABF8;
  *(a1 + 264) = unk_19B7BAC98;
  *(a1 + 248) = xmmword_19B7BAC88;
  *(a1 + 232) = unk_19B7BAC78;
  *(a1 + 216) = xmmword_19B7BAC68;
  *(a1 + 200) = unk_19B7BAC58;
  *(a1 + 184) = xmmword_19B7BAC48;
  *(a1 + 280) = xmmword_19B7BACA8;
  *(a1 + 296) = unk_19B7BACB8;
  *(a1 + 312) = xmmword_19B7BACC8;
  *(a1 + 328) = unk_19B7BACD8;
  *(a1 + 344) = a1 + 88;
  *(a1 + 400) = 0;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 408) = a1 + 88;
  *(a1 + 464) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 472) = a1 + 88;
  *(a1 + 528) = 0;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 536) = a1 + 88;
  *(a1 + 592) = 0;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 600) = a1 + 88;
  *(a1 + 656) = 0;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 664) = a1 + 88;
  *(a1 + 720) = 0;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 672) = 0u;
  if (qword_1EAFE2A58 != -1)
  {
    dispatch_once(&qword_1EAFE2A58, &unk_1F0E294A0);
  }

  v4 = qword_1EAFE2A60;
  if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "Constructing CMPdrInputs.", buf, 2u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E294A0);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "CMPdrInputs::CMPdrInputs()", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_19B66DF0C(uint64_t a1, uint64_t a2, float32x4_t a3)
{
  v69 = *MEMORY[0x1E69E9840];
  v5 = *a2 - *(a1 + 72);
  *a3.i64 = v5;
  *(a1 + 72) = *a2;
  *(a1 + 80) = v5;
  *buf = sub_19B66BFF4((a2 + 32), a3);
  v67 = __PAIR64__(v7, v6);
  v68 = v8;
  v9.f32[0] = sub_19B66C1A4(buf, -*(a2 + 20), -*(a2 + 24), -*(a2 + 28));
  v59[0] = v9.i32[0];
  v59[1] = v10;
  v59[2] = v11;
  *buf = sub_19B66BFF4((a2 + 32), v9);
  v67 = __PAIR64__(v13, v12);
  v68 = v14;
  v15 = 0;
  v58[0] = sub_19B66C1A4(buf, *(a2 + 8), *(a2 + 12), *(a2 + 16));
  v58[1] = v16;
  v58[2] = v17;
  v18 = a1 + 344;
  do
  {
    v19 = sub_19B5D6144(v59, v15);
    sub_19B66E440(v18, v19);
    v20 = *(v18 + 8);
    *sub_19B5BC0F0(v57, v15) = v20;
    v21 = sub_19B5D6144(v58, v15);
    sub_19B66E440(v18 + 192, v21);
    ++v15;
    v18 += 64;
  }

  while (v15 != 3);
  v23 = *a2;
  v24 = *(a1 + 8);
  *(a1 + 68) = 0;
  v25 = 0;
  v26 = *(a1 + 12);
  *(a1 + 8) = *v57;
  *(a1 + 16) = *&v57[8];
  v27 = *(a1 + 20);
  v28 = *(a1 + 44);
  v29 = *(a1 + 48);
  v30 = *(a1 + 52);
  v31 = *v57 - v24;
  v32 = *(a1 + 24);
  v33 = vsub_f32(*&v57[4], v26);
  v60 = v31;
  v61 = v33;
  v34 = 0.0;
  do
  {
    v34 = v34 + (*(&v60 + v25) * *(&v60 + v25));
    v25 += 4;
  }

  while (v25 != 12);
  *v22.i32 = sqrtf(v34);
  *(a1 + 56) = v22.i32[0];
  if (*v22.i32 >= 0.005)
  {
    v37 = v31 / *v22.i32;
    _D4 = vdiv_f32(v33, vdup_lane_s32(v22, 0));
    *(a1 + 20) = v37;
    *(a1 + 24) = _D4;
    v39 = 0;
    v40 = v37 - v27;
    v41 = vsub_f32(_D4, v32);
    v64 = LODWORD(v40);
    v65 = *&v41;
    v42 = 0.0;
    do
    {
      v42 = v42 + (*(&v64 + v39) * *(&v64 + v39));
      v39 += 4;
    }

    while (v39 != 12);
    v43 = sqrtf(v42);
    *(a1 + 60) = v43;
    if (v43 >= 0.005)
    {
      _S6 = v40 / v43;
      v48 = v41.f32[0] / v43;
      v41.f32[0] = v41.f32[1] / v43;
      *(a1 + 32) = v40 / v43;
      *(a1 + 36) = v48;
      v49 = (_D4.f32[0] * (v41.f32[1] / v43)) - (_D4.f32[1] * v48);
      __asm { FMLA            S17, S6, V4.S[1] }

      v55 = (v37 * v48) - (_D4.f32[0] * _S6);
      *(a1 + 40) = v41.i32[0];
      *(a1 + 44) = v49;
      *(a1 + 48) = _S17;
      *(a1 + 52) = v55;
      *(a1 + 64) = -(((v41.f32[0] * (v55 - v30)) + (v48 * (_S17 - v29))) + (_S6 * (v49 - v28)));
      *(a1 + 68) = 1;
      *a1 = v23;
      goto LABEL_34;
    }

    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E294A0);
    }

    v44 = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v67 = *&v23;
      _os_log_impl(&dword_19B41C000, v44, OS_LOG_TYPE_DEBUG, "[CMTNBDoTEstimatorBase::TNBFrame] Failed to obtain a new normal(N) vector, time %f", buf, 0xCu);
    }

    v45 = sub_19B420058();
    if (*(v45 + 160) > 1 || *(v45 + 164) > 1 || *(v45 + 168) > 1 || *(v45 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E294A0);
      }

      v62 = 134217984;
      v63 = v23;
      goto LABEL_31;
    }
  }

  else
  {
    *(a1 + 20) = vneg_f32(0x3F0000003FLL);
    *(a1 + 28) = 2143289344;
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E294A0);
    }

    v35 = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v67 = *&v23;
      _os_log_impl(&dword_19B41C000, v35, OS_LOG_TYPE_DEBUG, "[CMTNBDoTEstimatorBase::TNBFrame] Failed to obtain a new tangent(T) vector, time %f", buf, 0xCu);
    }

    v36 = sub_19B420058();
    if (*(v36 + 160) > 1 || *(v36 + 164) > 1 || *(v36 + 168) > 1 || *(v36 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E294A0);
      }

      v64 = 134217984;
      v65 = v23;
LABEL_31:
      v46 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMPdrInputs::AccelTNBFrame::updateFrame(const CMVector3d &, double)", "CoreLocation: %s\n", v46);
      if (v46 != buf)
      {
        free(v46);
      }
    }
  }

LABEL_34:
  v56 = *MEMORY[0x1E69E9840];
}

void sub_19B66E440(uint64_t a1, float a2)
{
  v3 = sub_19B66E4BC(a1, 0, a2);
  *(a1 + 8) = v3;
  for (i = 1; i != 4; ++i)
  {
    v3 = sub_19B66E4BC(a1, i, v3);
    *(a1 + 8) = v3;
  }
}

os_log_t sub_19B66E48C()
{
  result = os_log_create("com.apple.locationd.Motion", "MotionContext");
  qword_1EAFE2A60 = result;
  return result;
}

float sub_19B66E4BC(void *a1, uint64_t a2, float a3)
{
  v4 = *a1;
  v3 = a1 + 12;
  v5 = v4 + 8 * a2;
  v6 = 3 * a2 + 1;
  v7 = *&v3[4 * v6];
  v8 = 3 * a2 + 2;
  v9 = *&v3[4 * v8];
  v10 = *(v4 + 96 + 24 * a2) * a3 * *(v5 + 192) - *(v4 + 96 + 8 * v6) * v7 - *(v4 + 96 + 8 * v8) * v9;
  v11 = *(v5 + 224) * (*(v4 + 8 * v6) * v7 + *(v4 + 24 * a2) * v10 + *(v4 + 8 * v8) * v9);
  *&v3[4 * v8] = v7;
  result = v11;
  *&v3[4 * v6] = v10;
  *&v3[12 * a2] = 0;
  return result;
}

void *sub_19B66E548(void *a1)
{
  *a1 = &unk_1F0E32A20;
  v2 = a1[16];
  if (v2)
  {
    MEMORY[0x19EAE76D0](v2, 0x1000C8052888210);
  }

  sub_19B66F4D8(a1 + 38);
  a1[29] = &unk_1F0E32728;
  sub_19B42A568(a1 + 32);
  return a1;
}

void sub_19B66E5D8(void *a1)
{
  sub_19B66E548(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B66E618(uint64_t result, double a2, int32x2_t a3)
{
  v127 = *MEMORY[0x1E69E9840];
  v3 = *(result + 148);
  if (v3)
  {
    v4 = result;
    v5 = result + 136;
    *a3.i32 = v3;
    v101 = a3;
    v6 = *(result + 136) / v3;
    v7 = *(result + 200) * v3;
    *(result + 148) = 0;
    v100 = exp(v7 / -5000.0);
    v98 = vdiv_f32(*(v5 + 4), vdup_lane_s32(v101, 0));
    bzero(v5, 0xCuLL);
    v8 = 0;
    v9 = 0;
    *(v5 - 48) = vmulq_n_f64(*(v5 - 48), v100);
    *(v5 - 32) = v100 * *(v5 - 32);
    v118[0] = 0;
    v10 = v98;
    v11 = v98.f32[1];
    v118[1] = v98.i32[1];
    v119 = vneg_f32(v98);
    v120 = 0;
    v121 = v6;
    v122 = v98.i32[0];
    v123 = -v6;
    v124 = 0;
    v99 = vmul_f32(v10, v10).f32[0];
    v110[0] = -(v99 + (v11 * v11));
    v110[1] = v6 * v98.f32[0];
    v111 = vmuls_lane_f32(v6, v98, 1);
    v112 = v6 * v98.f32[0];
    v113 = -((v6 * v6) + (v11 * v11));
    v114 = vmuls_lane_f32(v98.f32[0], v98, 1);
    v115 = v111;
    v116 = v114;
    v117 = -((v6 * v6) + (v10.f32[0] * v10.f32[0]));
    v12 = v7;
    v13 = -v12;
    v14 = v7 * v7 * 0.5;
    v15 = v14;
    do
    {
      v16 = v8;
      v17 = 3;
      do
      {
        *&v105[v16] = (*(v110 + v16) * v15) + (v13 * *(v118 + v16));
        v16 += 4;
        --v17;
      }

      while (v17);
      *&v105[16 * v9] = *&v105[16 * v9] + 1.0;
      ++v9;
      v8 += 12;
    }

    while (v9 != 3);
    v18 = 0;
    v19 = v108;
    do
    {
      *v19 = *&v105[v18];
      *(v19 + 2) = *&v105[v18 + 8];
      v18 += 12;
      v19 += 24;
    }

    while (v18 != 36);
    v20 = 0;
    v21 = 0;
    v22 = v14 / 5000.0 - v7;
    do
    {
      v23 = v20;
      v24 = 3;
      do
      {
        *&v105[v23] = *(v118 + v23) * v15;
        v23 += 4;
        --v24;
      }

      while (v24);
      *&v105[16 * v21] = *&v105[16 * v21] + v22;
      ++v21;
      v20 += 12;
    }

    while (v21 != 3);
    v25 = 0;
    v26 = &v109;
    do
    {
      *v26 = *&v105[v25];
      v26[2] = *&v105[v25 + 8];
      v25 += 12;
      v26 += 6;
    }

    while (v25 != 36);
    for (i = 12; i != 84; i += 24)
    {
      bzero(&v108[i], 0xCuLL);
    }

    for (j = 84; j != 156; j += 24)
    {
      bzero(&v108[j], 0xCuLL);
      v28 = v100;
      *&v108[i] = v28;
      i += 28;
    }

    v30 = 0;
    v31 = *(v4 + 112);
    v32 = v108;
    do
    {
      v33 = &v108[4 * v30];
      v34 = (v33 + 120);
      v35 = 5;
      LODWORD(v36) = 6;
      do
      {
        v37 = 0;
        v38 = v36 - 2;
        v36 = v35;
        v39 = *v34;
        v40 = v31 + 4 * (v38 * v35 / 2);
        v41 = v32;
        do
        {
          v42 = *v41;
          v41 += 6;
          v39 = v39 + (v42 * *(v40 + 4 * v37++));
        }

        while (v36 != v37);
        *v34 = v39;
        v35 = v36 - 1;
        v34 = &v33[24 * v36 - 24];
      }

      while (v36 > 1);
      ++v30;
      ++v32;
    }

    while (v30 != 6);
    v102[0] = v104;
    v102[1] = v103;
    v43 = 0;
    v44 = 2.76135698e-10 / (7.0 / (exp((0.11 - sqrtf((v99 + (v6 * v6)) + (v98.f32[1] * v98.f32[1]))) / 0.012) + 1.0) + 1.0);
    v46 = v105;
    do
    {
      bzero(&v105[v43], 0xCuLL);
      v45 = (v7 * -0.25 / 5000.0 + 0.333333333) * (v7 * (v7 * (v7 * v44))) + (*v101.i32 * 0.00000021323) * 0.5 * v7;
      *v46 = v45;
      v46 += 7;
      v43 += 24;
    }

    while (v43 != 72);
    v47 = expm1(-(v7 / 5000.0));
    v48 = exp(-(v7 / 5000.0));
    v49 = 0;
    v50 = 0;
    v51 = v44 * -0.5 * 1.24999999e11 * (v48 * (v7 / 5000.0 * (v7 / 5000.0) + v7 / 5000.0 * 2.0) + v47 * 2.0);
    v52 = v48 * (v7 * (v7 * (v44 * -0.5)));
    v53 = v51;
    do
    {
      v54 = v49;
      v55 = 3;
      do
      {
        *(&v125 + v54) = *(v118 + v54) * v53;
        v54 += 4;
        --v55;
      }

      while (v55);
      *(&v125 + 4 * v50) = *(&v125 + 4 * v50) + v52;
      ++v50;
      v49 += 12;
    }

    while (v50 != 3);
    v56 = &v106;
    v57 = &v107;
    v58 = &v125;
    v59 = 3;
    do
    {
      v60 = 0;
      v61 = v56;
      do
      {
        v62 = *(v58 + v60 * 4);
        v57[v60] = v62;
        *v61 = v62;
        v61 += 3;
        ++v60;
      }

      while (v60 != 3);
      ++v59;
      v56 = (v56 + 4);
      v57 += 6;
      v58 = (v58 + 12);
    }

    while (v59 != 6);
    v63 = (1.0 - exp(v7 * -2.0 / 5000.0)) * (v44 * 5000.0) * 0.5;
    v64 = 84;
    for (k = 84; k != 156; k += 24)
    {
      bzero(&v105[k], 0xCuLL);
      *&v105[v64] = v63;
      v64 += 28;
    }

    v66 = 6;
    sub_19B66EF8C(v102, v105, 6);
    v67 = 0;
    v68 = v104;
    v69 = 5;
    v71 = *(v4 + 112);
    v70 = *(v4 + 120);
    v72 = 20;
    result = v70;
    while (1)
    {
      v73 = 0;
      v74 = v66 - 1;
      v75 = 0.0;
      v76 = v72;
      do
      {
        v75 = v75 + ((*&v108[v76] * *&v108[v76]) * *(v70 + v73));
        v73 += 4;
        v76 += 24;
      }

      while (v73 != 24);
      v77 = &v103[v74];
      if (v66 >= 6)
      {
        v80 = v75 + *v77;
        *(&v125 + v74) = v80;
      }

      else
      {
        v78 = v67;
        do
        {
          v79 = v104[v74 + (((v78 + 5) * (v78 + 6)) >> 1)];
          v75 = v75 + ((v79 * v79) * *&v103[v78++ + 6]);
        }

        while (v78 + 6 < 6);
        v80 = v75 + *v77;
        *(&v125 + v74) = v80;
        if (v66 < 2)
        {
          *result = v125;
          *(result + 16) = v126;
          break;
        }
      }

      v81 = 0;
      v82 = 0;
      result = *(v4 + 120);
      v83 = (v74 * (v66 - 2) + ((v74 * (v66 - 2)) >> 31)) >> 1;
      do
      {
        v84 = 0;
        v85 = 0.0;
        v86 = v108;
        do
        {
          v85 = v85 + ((*&v86[v72] * *(result + v84)) * *&v86[v81]);
          v84 += 4;
          v86 += 24;
        }

        while (v84 != 24);
        v87 = v82 + v83;
        v88 = v85 + (*v77 * v104[v82 + v83]);
        if (v66 <= 5)
        {
          v89 = v68;
          for (m = v66; m < 6; ++m)
          {
            v91 = *v89++;
            v88 = v88 + ((v104[v74 + (((m - 1) * m) >> 1)] * v91) * v104[v82 + (((m - 1) * m) >> 1)]);
          }
        }

        v92 = v88 / v80;
        *(v71 + 4 * v87) = v92;
        v93 = v108;
        v94 = 6;
        do
        {
          *&v93[v81] = *&v93[v81] + (-v92 * *&v93[v72]);
          v93 += 24;
          --v94;
        }

        while (v94);
        if (v66 <= 5)
        {
          v95 = v69;
          do
          {
            v96 = v95 + 1;
            v104[v82 + ((v95 * v96) >> 1)] = v104[v82 + ((v95 * v96) >> 1)] - (*(v71 + 4 * v87) * v104[v74 + ((v95 * v96) >> 1)]);
            ++v95;
          }

          while (v96 != 5);
          v92 = *(v71 + 4 * v87);
        }

        v104[v87] = v104[v87] - v92;
        ++v82;
        v81 += 4;
      }

      while (v82 != v69);
      --v69;
      v72 -= 4;
      --v67;
      --v68;
      --v66;
    }
  }

  v97 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B66EDDC(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8)
{
  bzero(a1, 8 * a6);
  if (a7 >= 1)
  {
    v13 = 0;
    v14 = a8 + 4 * a6;
    do
    {
      sub_19B66F24C(a8, *a2, a3 + 4 * v13, a7, a6);
      if (a6 >= 1)
      {
        v15 = a2[1];
        v16 = v15;
        v17 = a8;
        v18 = a6;
        do
        {
          v19 = *v16++;
          v17[a6] = v19 * *v17;
          ++v17;
          --v18;
        }

        while (v18);
        v20 = 0;
        v21 = *(a5 + 4 * v13);
        v22 = *(a4 + 4 * v13);
        v23 = *a2;
        v24 = 1.0 / v22;
        do
        {
          v25 = v22;
          v26 = *(a8 + 4 * v20);
          v22 = v22 + (v26 * *(v14 + 4 * v20));
          v15[v20] = v15[v20] * (v25 * (1.0 / v22));
          if (v20)
          {
            v27 = 0;
            v28 = -(v26 * v24);
            v29 = v23 + 4 * ((v20 - 1) * v20 / 2);
            do
            {
              v30 = *(v29 + 4 * v27);
              *(v29 + 4 * v27) = v30 + (*(v14 + 4 * v27) * v28);
              *(v14 + 4 * v27) = *(v14 + 4 * v27) + (*(v14 + 4 * v20) * v30);
              ++v27;
            }

            while (v20 != v27);
          }

          ++v20;
          v24 = 1.0 / v22;
        }

        while (v20 != a6);
        v31 = v21 * (1.0 / v22);
        v32 = (a8 + 4 * a6);
        v33 = a1;
        v34 = a6;
        do
        {
          v35 = *v32++;
          *v33 = *v33 + (v31 * v35);
          ++v33;
          --v34;
        }

        while (v34);
      }

      ++v13;
    }

    while (v13 != a7);
  }
}

void sub_19B66EF8C(void **a1, uint64_t a2, int a3)
{
  bzero(*a1, 4 * ((a3 - 1) * a3 / 2));
  bzero(a1[1], 4 * a3);
  if (a3 >= 1)
  {
    v6 = *a1;
    v7 = a1[1];
    v8 = a3 - 2;
    v9 = a3 - 1;
    v10 = &v7[a3];
    v11 = a3;
    for (i = v9; ; --i)
    {
      v13 = *(a2 + 4 * i + 4 * i * a3);
      v14 = v10;
      v15 = v11;
      if (i < v9)
      {
        do
        {
          v16 = *v14++;
          v13 = v13 + (-(v6[i + (((v15 - 1) * v15) >> 1)] * v6[i + (((v15 - 1) * v15) >> 1)]) * v16);
          ++v15;
        }

        while (v15 < a3);
      }

      v7[i] = v13;
      if (i < 1)
      {
        break;
      }

      v17 = *a1;
      v18 = v8;
      do
      {
        v19 = *(a2 + 4 * i * a3 + 4 * v18);
        if (i < v9)
        {
          v20 = 0;
          v21 = v11;
          do
          {
            v19 = v19 + (-(v17[v18 + (((v21 - 1) * v21) >> 1)] * v17[i + (((v21 - 1) * v21) >> 1)]) * v10[v20]);
            ++v21;
            ++v20;
          }

          while (v21 < a3);
        }

        v6[(i - 1) * i / 2 + v18] = v19 / v7[i];
      }

      while (v18-- > 0);
      --v8;
      --v11;
      --v10;
    }
  }
}

double sub_19B66F0F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 88);
  v3 = 0.0;
  v4 = 0.0;
  if (v2 >= 2)
  {
    v5 = v2 * *(a1 + 40) - *(a1 + 32) * *(a1 + 32);
    v4 = 0.0;
    if (v5 >= 0.0)
    {
      v4 = v5 / ((v2 - 1) * v2);
    }
  }

  v6 = *(a1 + 168);
  if (v6 >= 2)
  {
    v7 = v6 * *(a1 + 120) - *(a1 + 112) * *(a1 + 112);
    if (v7 >= 0.0)
    {
      v3 = v7 / ((v6 - 1) * v6);
    }
  }

  v8 = *(a1 + 248);
  v9 = 0.0;
  if (v8 >= 2)
  {
    v10 = v8 * *(a1 + 200) - *(a1 + 192) * *(a1 + 192);
    if (v10 >= 0.0)
    {
      v9 = v10 / ((v8 - 1) * v8);
    }
  }

  *a2 = &unk_1F0E33EB0;
  *(a2 + 8) = sqrt(v4);
  *(a2 + 16) = sqrt(v3);
  result = sqrt(v9);
  *(a2 + 24) = result;
  return result;
}

uint64_t sub_19B66F1D4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 88);
  v3 = 0.0;
  v4 = 0.0;
  if (v2)
  {
    v4 = *(result + 32) / v2;
  }

  v5 = *(result + 168);
  if (v5)
  {
    v3 = *(result + 112) / v5;
  }

  v6 = *(result + 248);
  if (v6)
  {
    v7 = *(result + 192) / v6;
  }

  else
  {
    v7 = 0.0;
  }

  *a2 = &unk_1F0E33EB0;
  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_19B66F24C(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = 0;
    v6 = (a3 - 4 * a4);
    do
    {
      v7 = *(a3 + 4 * v5 * a4);
      *(result + 4 * v5) = v7;
      if (v5)
      {
        v8 = v6;
        v9 = v5;
        do
        {
          v7 = v7 + (*v8 * *(a2 - 4 + 4 * ((v5 - 1) * v5 / 2) + 4 * v9));
          *(result + 4 * v5) = v7;
          v8 -= a4;
        }

        while (v9-- > 1);
      }

      ++v5;
      v6 += a4;
    }

    while (v5 != a5);
  }

  return result;
}

uint64_t sub_19B66F2F4(_DWORD *a1, _DWORD *a2)
{
  *a2 = a1[39];
  a2[1] = a1[40];
  a2[2] = a1[41];
  return 1;
}

BOOL sub_19B66F314(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 176);
  if (v2 <= 0.0)
  {
    *a2 = 0;
    v10 = 0.0;
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32) + *(a1 + 32);
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    v7 = v3 * (v6 + v6) - v5 * v4;
    v8 = -(v3 * (v5 + v5)) - v6 * v4;
    v9 = v5 * (v5 + v5) + -1.0 + v6 * (v6 + v6);
    *&v5 = *(a1 + 184) - v7;
    *a2 = LODWORD(v5);
    *&v8 = *(a1 + 188) - v8;
    *(a2 + 4) = LODWORD(v8);
    v10 = *(a1 + 192) - v9;
  }

  result = v2 > 0.0;
  *(a2 + 8) = v10;
  return result;
}

os_log_t sub_19B66F3C8()
{
  result = os_log_create("com.apple.locationd.Motion", "Sensors");
  qword_1EAFE2898 = result;
  return result;
}

void *sub_19B66F3F8(void *a1)
{
  *a1 = &unk_1F0E32748;
  sub_19B66B918(a1 + 4);
  return a1;
}

void sub_19B66F43C(void *a1)
{
  sub_19B66F4D8(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B66F474(void *a1)
{
  *a1 = &unk_1F0E32748;
  sub_19B66B918(a1 + 4);

  JUMPOUT(0x19EAE76F0);
}

void *sub_19B66F4D8(void *a1)
{
  *a1 = &unk_1F0E32C18;
  a1[22] = &unk_1F0E32748;
  sub_19B66B918(a1 + 26);
  a1[12] = &unk_1F0E32748;
  sub_19B66B918(a1 + 16);
  a1[2] = &unk_1F0E32748;
  sub_19B66B918(a1 + 6);
  return a1;
}

double sub_19B66F590(uint64_t a1, double *a2)
{
  sub_19B66F62C(a1 + 32, a2);
  v4 = *(a1 + 72);
  if (v4 > *(a1 + 8))
  {
    v5 = *(a1 + 64);
    v6 = *(*(*(a1 + 40) + ((v5 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v5 & 0x1FF));
    v7 = *(a1 + 16) - v6;
    v8 = *(a1 + 24) - v6 * v6;
    *(a1 + 16) = v7;
    *(a1 + 24) = v8;
    *(a1 + 64) = v5 + 1;
    *(a1 + 72) = v4 - 1;
    sub_19B66F888(a1 + 32, 1);
  }

  v9 = *(a1 + 24);
  *(a1 + 16) = *a2 + *(a1 + 16);
  result = v9 + *a2 * *a2;
  *(a1 + 24) = result;
  return result;
}

double sub_19B66F62C(uint64_t a1, double *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = *(a1 + 40);
  v9 = v8 + *(a1 + 32);
  if (v7 == v9)
  {
    sub_19B66F6B4(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40);
    v9 = *(a1 + 32) + v8;
  }

  result = *a2;
  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  *(a1 + 40) = v8 + 1;
  return result;
}

void *sub_19B66F6B4(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_19B446FB8(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_19B4290B0(a1, &v10);
}

void sub_19B66F83C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19B66F888(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x200)
  {
    a2 = 1;
  }

  if (v2 < 0x400)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 512;
  }

  return v4 ^ 1u;
}

uint64_t sub_19B66F8FC(uint64_t a1, int a2)
{
  v3 = sub_19B43CCBC(a1, a2);
  v4 = *(v3 + 8);
  *(v3 + 256) = 0;
  *(v3 + 264) = 0;
  *(v3 + 272) = 0;
  *(v3 + 208) = 0;
  *(v3 + 216) = 0;
  *(v3 + 224) = 0;
  *(v3 + 273) = v4;
  *v3 = &unk_1F0E31FE8;
  *(v3 + 200) = &unk_1F0E32050;
  *(v3 + 274) = 0;
  *(v3 + 280) = 0;
  v5 = v3 + 288;
  sub_19B76D780(v3 + 288);
  sub_19B6198E4(a1 + 1120, v5);
  return a1;
}

void sub_19B66F9A4(_Unwind_Exception *a1)
{
  *(v1 + 288) = &unk_1F0E32700;
  sub_19B5D3E20(v2);
  sub_19B760468(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_19B66F9DC(uint64_t a1)
{
  *a1 = &unk_1F0E31FE8;
  v2 = (a1 + 200);
  *(a1 + 200) = &unk_1F0E32050;
  if (*(a1 + 225) == 1)
  {
    v3 = sub_19B442E70();
    sub_19B445814(v3);
    *(a1 + 225) = 0;
  }

  sub_19B427AEC(v2);
  sub_19B423148(v2);
  *(a1 + 288) = &unk_1F0E32700;
  sub_19B5D3E20(v2);

  return sub_19B760468(a1);
}

void sub_19B66FAAC(uint64_t a1)
{
  sub_19B66F9DC(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B66FAE4(uint64_t a1)
{
  sub_19B66F9DC(a1 - 200);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B66FB20(uint64_t a1)
{
  *(a1 + 1130) = 0;
  *(a1 + 1132) = 0;
  *(a1 + 1140) = 0x3F80000000000000;
  v5[0] = xmmword_19B7B9898;
  v5[1] = unk_19B7B98A8;
  v6 = 973279855;
  sub_19B61A35C(a1 + 1148, v5);
  *(a1 + 1128) = 0;
  *(a1 + 1184) = 0;
  *(a1 + 1192) = 0;
  *(a1 + 1200) = 1;
  sub_19B76D864(a1 + 288);
  v2 = *(a1 + 16);
  sub_19B4431A8(a1 + 200);
  v3 = *(a1 + 24);
  sub_19B442D78(a1 + 200);
  sub_19B442F50(a1 + 200);
  *&v5[0] = 2;
  result = sub_19B4453D4(a1, v5);
  *(a1 + 274) = 0;
  *(a1 + 280) = 0;
  return result;
}

void *sub_19B66FBD8(uint64_t a1)
{
  if (*(a1 + 225) == 1)
  {
    v2 = sub_19B442E70();
    sub_19B445814(v2);
    *(a1 + 225) = 0;
  }

  sub_19B427AEC((a1 + 200));

  return sub_19B423148((a1 + 200));
}

void sub_19B66FC2C(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E294E0);
  }

  v4 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v9 = a2;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "Application state changed, %d", buf, 8u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E294E0);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionService6AxisAP::applicationStateChanged(BOOL)", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  *(a1 + 274) = a2 ^ 1;
  v7 = *MEMORY[0x1E69E9840];
}

void sub_19B66FE04(uint64_t a1, uint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = (*a2 * 1000000.0);
  v5 = *(a2 + 16) * 0.017453;
  v38 = vmul_f32(*(a2 + 8), vdup_n_s32(0x3C8EFA35u));
  v39 = v5;
  sub_19B61B024(a1 + 1120, &v38, v4);
  sub_19B76DBF0(a1 + 288, &v38, v4);
  v23 = 0uLL;
  v22 = -1.0;
  sub_19B41E130(&v23, v6);
  v32 = 0;
  v31 = 0;
  v34 = 0;
  v22 = *a2;
  v23 = *(a1 + 1132);
  v7 = sub_19B61A6A4(a1 + 1120);
  v24 = LODWORD(v7);
  v25 = v8;
  v26 = v9;
  v10 = *(a1 + 1176);
  v27 = *(v10 + 440);
  v28 = *(v10 + 448);
  v33 = 511;
  v29 = xmmword_19B7BA310;
  v30 = -1082130432;
  if (*(a1 + 252))
  {
    v11 = 16;
  }

  else
  {
    v11 = 0;
  }

  if (*(v10 + 424) == 1 && *(v10 + 416) && *(a1 + 1130))
  {
    v11 |= 0x100u;
  }

  v34 = v11;
  v35 = 3;
  v37 = 0;
  v36 = *(a2 + 22);
  v12 = *a2;
  v13 = *(a1 + 280);
  if (v13 != 0.0)
  {
    v14 = v12 - v13;
    if (v12 - v13 > 0.100000001)
    {
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E294E0);
      }

      v15 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf[0]) = 134217984;
        *(buf + 4) = v14;
        _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_INFO, "Large time gap, %lf", buf, 0xCu);
      }

      v16 = sub_19B420058();
      if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E294E0);
        }

        v40 = 134217984;
        v41 = v14;
        v17 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionService6AxisAP::feedGyroData(const CLGyro::Sample *)", "CoreLocation: %s\n", v17);
        if (v17 != buf)
        {
          free(v17);
        }
      }

      if (*(a1 + 274) == 1)
      {
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E294E0);
        }

        v18 = off_1ED71C808;
        if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_DEFAULT, "Reset while backgrounded", buf, 2u);
        }

        v19 = sub_19B420058();
        if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E294E0);
          }

          LOWORD(v40) = 0;
          v20 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionService6AxisAP::feedGyroData(const CLGyro::Sample *)", "CoreLocation: %s\n", v20);
          if (v20 != buf)
          {
            free(v20);
          }
        }

        *(a1 + 1130) = 0;
        *(a1 + 1132) = 0;
        *(a1 + 1140) = 0;
        *(a1 + 1144) = 1065353216;
        buf[0] = xmmword_19B7B9898;
        buf[1] = unk_19B7B98A8;
        v43 = 973279855;
        sub_19B61A35C(a1 + 1148, buf);
        *(a1 + 1128) = 0;
        *(a1 + 1184) = 0;
        *(a1 + 1192) = 0;
        *(a1 + 1200) = 1;
      }
    }
  }

  *(a1 + 280) = v12;
  sub_19B41FA70(a1, &v22);
  v21 = *MEMORY[0x1E69E9840];
}

float sub_19B6702DC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = *(a2 + 8);
  v4 = *(a3 + 2);
  *(a1 + 712) = 1;
  v5 = *a3;
  *(a1 + 740) = *a2;
  *(a1 + 748) = result;
  *(a1 + 716) = v5;
  *(a1 + 724) = v4;
  return result;
}

float sub_19B67030C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = *(a2 + 8);
  v4 = *(a3 + 2);
  *(a1 + 512) = 1;
  v5 = *a3;
  *(a1 + 540) = *a2;
  *(a1 + 548) = result;
  *(a1 + 516) = v5;
  *(a1 + 524) = v4;
  return result;
}

uint64_t sub_19B67033C(float32x2_t *a1, uint64_t a2)
{
  v3 = (*a2 * 1000000.0);
  v4 = *(a2 + 16);
  v6 = *(a2 + 8);
  v7 = v4;
  sub_19B76D914(&a1[36], &v6, v3);
  return sub_19B61B33C(a1 + 140);
}

void *sub_19B6713E0(void *a1)
{
  *a1 = &unk_1F0E338C0;
  v2 = a1[6];
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  return sub_19B674784(a1);
}

void sub_19B671440(void *a1)
{
  sub_19B6713E0(a1);

  JUMPOUT(0x19EAE76F0);
}

CFStringRef CLClientCreateIso6709Notation(uint64_t a1)
{
  v2 = *(a1 + 36);
  v3 = *MEMORY[0x1E695E480];
  v4 = *(a1 + 4);
  if (v2 >= 0.0)
  {
    return CFStringCreateWithFormat(v3, 0, @"%+08.4lf%+09.4lf%+08.3lf/", v4, *&v4, *(a1 + 12), *(a1 + 28));
  }

  else
  {
    return CFStringCreateWithFormat(v3, 0, @"%+08.4lf%+09.4lf/", v4, *(a1 + 4), *(a1 + 12));
  }
}

void CLClientSnapLocationToResolution(_OWORD *a1, uint64_t a2, double a3)
{
  v3 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v3;
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[5];
  *(a2 + 64) = a1[4];
  *(a2 + 80) = v6;
  *(a2 + 32) = v4;
  *(a2 + 48) = v5;
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  *(a2 + 140) = *(a1 + 140);
  *(a2 + 112) = v8;
  *(a2 + 128) = v9;
  *(a2 + 96) = v7;
  v10 = a3 * 1.41421356;
  if (*(a2 + 20) < a3 * 1.41421356)
  {
    sub_19B5E3140((a2 + 4), (a2 + 12), a3);
    *(a2 + 20) = v10;
  }
}

void *sub_19B671564(uint64_t a1)
{
  *a1 = &unk_1F0E31878;
  *(a1 + 64) = 0;
  sub_19B42A614(a1, *(a1 + 32));
  v2 = *(a1 + 88);
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  return sub_19B674784(a1);
}

void sub_19B6715D4(uint64_t a1)
{
  sub_19B671564(a1);

  JUMPOUT(0x19EAE76F0);
}

os_log_t sub_19B67160C()
{
  result = os_log_create("com.apple.locationd.Motion", "Sensors");
  qword_1EAFE2898 = result;
  return result;
}

void sub_19B67178C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v20, v19);
  _Unwind_Resume(a1);
}

void sub_19B6717BC(uint64_t a1, CLConnectionMessage **a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v3, v6, v4, v5, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7)) != 0 && (v10 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage")) != 0)
  {
    v13 = objc_msgSend_intValue(v10, v11, v12);
  }

  else
  {
    v13 = 103;
  }

  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E27BE0);
  }

  v14 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
  {
    *buf = 67240192;
    v19 = v13;
    _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "ExericseMinute, Failed with CMError code %{public}d", buf, 8u);
  }

  v15 = sub_19B420058();
  if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E27BE0);
    }

    v16 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMExerciseMinuteInternal init]_block_invoke", "CoreLocation: %s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_19B6719E4(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v7 = ExecutablePathFromPid;
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E27BE0);
    }

    v8 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
    {
      v9 = getpid();
      v10 = *(a1 + 32);
      v11 = *(v10 + 32);
      *buf = 138413058;
      v23 = v7;
      v24 = 1024;
      v25 = v9;
      v26 = 1024;
      v27 = v11;
      v28 = 2048;
      v29 = v10;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "ExericseMinute, client connection interrupt, %@, %d, %d, %p", buf, 0x22u);
    }

    v12 = sub_19B420058();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E27BE0);
      }

      getpid();
      v21 = *(*(a1 + 32) + 32);
      v13 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMExerciseMinuteInternal init]_block_invoke", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  v14 = *(a1 + 32);
  if (*(v14 + 32) == 1)
  {
    v15 = objc_msgSend_copy(*(v14 + 48), v5, v6);
    v18 = objc_msgSend_copy(*(*(a1 + 32) + 40), v16, v17);
    objc_msgSend__startUpdatesFromRecord_handler_(*(a1 + 32), v19, v18, v15);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void sub_19B671D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B671E44(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  sub_19B428B50(&__p, "kCLConnectionMessageExerciseMinuteUpdate");
  CLConnectionClient::setHandlerForMessage();
  if (v12 < 0)
  {
    operator delete(__p);
  }

  v4 = *(a1 + 32);
  if (*(v4 + 32) && *(v4 + 48))
  {
    v9 = @"kCLConnectionMessageSubscribeKey";
    v10 = MEMORY[0x1E695E110];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v3, &v10, &v9, 1);
    sub_19B45280C();
  }

  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E27BE0);
  }

  v5 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "ExerciseMinute, Error stopping updates, no active clients.", &__p, 2u);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(&__p, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E27BE0);
    }

    v7 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMExerciseMinuteInternal _stopUpdates]_block_invoke", "CoreLocation: %s\n", v7);
    if (v7 != &__p)
    {
      free(v7);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_19B6720FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, std::__shared_weak_count *a18, int a19, __int16 a20, char a21, char a22)
{
  if (a12)
  {
    sub_19B41FFEC(a12);
  }

  if (a18)
  {
    sub_19B41FFEC(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B6721BC(uint64_t result)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v1 = *(result + 32);
  if (*(v1 + 8))
  {
    v2 = result;
    if (*(result + 40))
    {

      *(*(v2 + 32) + 48) = 0;
      *(*(v2 + 32) + 48) = *(v2 + 40);
      v3 = *(*(v2 + 32) + 8);
      sub_19B428B50(&__p, "kCLConnectionMessageExerciseMinuteUpdate");
      v6 = *(v2 + 32);
      CLConnectionClient::setHandlerForMessage();
      if (v8 < 0)
      {
        operator delete(__p);
      }

      v9 = @"kCLConnectionMessageSubscribeKey";
      v10[0] = MEMORY[0x1E695E118];
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v4, v10, &v9, 1);
      sub_19B45280C();
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B672370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, std::__shared_weak_count *a19, int a20, __int16 a21, char a22, char a23)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6723B4(uint64_t a1, const char *a2, uint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = *(*(a1 + 32) + 48);
  if (v4)
  {
    v6 = objc_msgSend_copy(v4, a2, a3);
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v13 = objc_msgSend_setWithObjects_(v7, v12, v8, v9, v10, v11, 0);
    if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v13)) != 0)
    {
      v16 = DictionaryOfClasses;
      v17 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v15, @"CMErrorMessage");
      v19 = objc_msgSend_objectForKeyedSubscript_(v16, v18, @"CMExerciseMinuteDataArray");
      if (v17)
      {
        *(*(a1 + 32) + 32) = 0;
        v20 = *(*(a1 + 32) + 24);
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = sub_19B672818;
        v32[3] = &unk_1E7532B90;
        v32[4] = v17;
        v32[5] = v6;
        v21 = v32;
      }

      else
      {
        v23 = v19;
        if (v19)
        {

          *(*(a1 + 32) + 40) = 0;
          *(*(a1 + 32) + 40) = objc_msgSend_lastObject(v23, v24, v25);
          v20 = *(*(a1 + 32) + 24);
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = sub_19B672890;
          v31[3] = &unk_1E7532B90;
          v31[4] = v23;
          v31[5] = v6;
          v21 = v31;
        }

        else
        {
          if (qword_1ED71C830 != -1)
          {
            dispatch_once(&qword_1ED71C830, &unk_1F0E27BE0);
          }

          v26 = off_1ED71C838;
          if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_FAULT, "ExerciseMinute, Unable to parse update.", buf, 2u);
          }

          v27 = sub_19B420058();
          if ((*(v27 + 160) & 0x80000000) == 0 || (*(v27 + 164) & 0x80000000) == 0 || (*(v27 + 168) & 0x80000000) == 0 || *(v27 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C830 != -1)
            {
              dispatch_once(&qword_1ED71C830, &unk_1F0E27BE0);
            }

            v30 = 0;
            v28 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 0, "[CMExerciseMinuteInternal _startUpdatesWithHandler:]_block_invoke", "CoreLocation: %s\n", v28);
            if (v28 != buf)
            {
              free(v28);
            }
          }

          v20 = *(*(a1 + 32) + 24);
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = sub_19B6728A8;
          v29[3] = &unk_1E7532B40;
          v29[4] = v6;
          v21 = v29;
        }
      }
    }

    else
    {
      v20 = *(*(a1 + 32) + 24);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_19B6727B4;
      block[3] = &unk_1E7532B40;
      block[4] = v6;
      v21 = block;
    }

    dispatch_async(v20, v21);
  }

  v22 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B6727B4(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B672818(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_intValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, v7);
}

uint64_t sub_19B6728A8(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

void *sub_19B672984(void *result, const char *a2, uint64_t a3)
{
  v28[1] = *MEMORY[0x1E69E9840];
  if (*(result[4] + 8))
  {
    v3 = result;
    if (result[6])
    {
      v4 = result[5];
      if (v4)
      {
        v25[0] = @"CMExerciseMinuteRecordId";
        v5 = MEMORY[0x1E696AD98];
        v6 = objc_msgSend_recordId(v4, a2, a3);
        v26[0] = objc_msgSend_numberWithInteger_(v5, v7, v6);
        v25[1] = @"CMExerciseMinuteStartDate";
        v8 = MEMORY[0x1E696AD98];
        started = objc_msgSend_startDate(v3[5], v9, v10);
        objc_msgSend_timeIntervalSinceReferenceDate(started, v12, v13);
        v26[1] = objc_msgSend_numberWithDouble_(v8, v14, v15);
        v25[2] = @"CMExerciseMinuteSourceId";
        if (objc_msgSend_sourceId(v3[5], v16, v17))
        {
          v20 = objc_msgSend_sourceId(v3[5], v18, v19);
        }

        else
        {
          v20 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v18, v19);
        }

        v26[2] = objc_msgSend_UUIDString(v20, v21, v22);
        objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v23, v26, v25, 3);
      }

      else
      {
        v27 = @"CMExerciseMinuteRecordId";
        v28[0] = &unk_1F0E6A540;
        objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v28, &v27, 1);
      }

      sub_19B5D12C8();
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B672B84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a17)
  {
    sub_19B41FFEC(a17);
  }

  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B672BB0(uint64_t a1, const char *a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_copy(*(a1 + 40), a2, a3);
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v12 = objc_msgSend_setWithObjects_(v6, v11, v7, v8, v9, v10, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v12)) != 0)
  {
    v15 = DictionaryOfClasses;
    v16 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v14, @"CMErrorMessage");
    v18 = objc_msgSend_objectForKeyedSubscript_(v15, v17, @"CMExerciseMinuteDataArray");
    if (v16)
    {
      v19 = *(*(a1 + 32) + 24);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = sub_19B672FDC;
      v29[3] = &unk_1E7532B90;
      v29[4] = v16;
      v29[5] = v5;
      v20 = v29;
    }

    else if (v18)
    {
      v22 = *(*(a1 + 32) + 24);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = sub_19B673054;
      v28[3] = &unk_1E7532B90;
      v28[4] = v18;
      v28[5] = v5;
      v20 = v28;
      v19 = v22;
    }

    else
    {
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E27BE0);
      }

      v23 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_FAULT, "ExerciseMinute, Unable to parse query.", buf, 2u);
      }

      v24 = sub_19B420058();
      if ((*(v24 + 160) & 0x80000000) == 0 || (*(v24 + 164) & 0x80000000) == 0 || (*(v24 + 168) & 0x80000000) == 0 || *(v24 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E27BE0);
        }

        v27 = 0;
        v25 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMExerciseMinuteInternal _queryExerciseMinutesFromRecord:handler:]_block_invoke", "CoreLocation: %s\n", v25);
        if (v25 != buf)
        {
          free(v25);
        }
      }

      v19 = *(*(a1 + 32) + 24);
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = sub_19B67306C;
      v26[3] = &unk_1E7532B40;
      v26[4] = v5;
      v20 = v26;
    }
  }

  else
  {
    v19 = *(*(a1 + 32) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B672F78;
    block[3] = &unk_1E7532B40;
    block[4] = v5;
    v20 = block;
  }

  dispatch_async(v19, v20);
  v21 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B672F78(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B672FDC(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_intValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, v7);
}

uint64_t sub_19B67306C(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B67330C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__internal(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);

  return objc_msgSend__startUpdatesFromRecord_handler_(v4, v5, v6, v7);
}

uint64_t sub_19B6733C0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend__internal(*(a1 + 32), a2, a3);

  return MEMORY[0x1EEE66B58](v3, sel__stopUpdates, v4);
}

uint64_t sub_19B6734BC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__internal(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  return objc_msgSend__startUpdatesWithHandler_(v4, v5, v6);
}

uint64_t sub_19B6735E0(uint64_t a1, const char *a2)
{
  result = objc_msgSend_isAuthorizedForEntitlement_(CMMotionUtils, a2, @"com.apple.locationd.activity");
  qword_1ED71D288 = result;
  return result;
}

uint64_t sub_19B673618()
{
  if (qword_1ED71D2A0 != -1)
  {
    dispatch_once(&qword_1ED71D2A0, &unk_1F0E29560);
  }

  return qword_1ED71D298;
}

uint64_t sub_19B673660()
{
  result = sub_19B423E34();
  if (result)
  {
    operator new();
  }

  return result;
}

void sub_19B673754(_Unwind_Exception *a1)
{
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  v5 = v1[11];
  if (v5)
  {
    sub_19B41FFEC(v5);
  }

  sub_19B674784(v1);
  MEMORY[0x19EAE76F0](v1, v2);
  _Unwind_Resume(a1);
}

void *sub_19B67379C(void *a1)
{
  *a1 = &unk_1F0E339A8;
  v5 = 0;
  sub_19B673820(a1, &v5);
  v2 = a1[11];
  a1[10] = 0;
  a1[11] = 0;
  if (v2)
  {
    sub_19B41FFEC(v2);
    v3 = a1[11];
    if (v3)
    {
      sub_19B41FFEC(v3);
    }
  }

  return sub_19B674784(a1);
}

uint64_t sub_19B673820(uint64_t a1, double *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  result = sub_19B423E34();
  if (result)
  {
    if (!*(a1 + 80))
    {
      v5 = sub_19B42CAAC();
      sub_19B42C428(v5);
    }

    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E28260);
    }

    v6 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_INFO))
    {
      v7 = *a2;
      *buf = 134349056;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "Setting magnetometer update and batch interval to %{public}f", buf, 0xCu);
    }

    v8 = sub_19B420058();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E28260);
      }

      v16 = *a2;
      v9 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLMagnetometer::setMagnetometerInterval(const CFTimeInterval &)", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    v12 = *(a1 + 80);
    v11 = (a1 + 80);
    v10 = v12;
    v13 = rint(*a2 * 1000000.0);
    if (*a2 < 0.0)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    sub_19B4238F4(v10, v14);
    result = sub_19B424A2C(*v11, *a2);
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B673CD4(void *a1)
{
  sub_19B67379C(a1);

  JUMPOUT(0x19EAE76F0);
}

BOOL sub_19B673D0C(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1)
  {
    v3 = objc_alloc(MEMORY[0x1E696AD98]);
    v5 = objc_msgSend_initWithBool_(v3, v4, 1);
    (*(**(a1 + 80) + 16))(*(a1 + 80), @"IOHIDCompasssResetDAC", v5);
  }

  return v1 != 0;
}

uint64_t sub_19B673D94(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  result = IOHIDEventGetType();
  if (result == 21)
  {
    IOHIDEventGetFloatValue();
    v4 = v3;
    IOHIDEventGetFloatValue();
    v6 = v5;
    IOHIDEventGetFloatValue();
    v8 = v7;
    TimeStamp = IOHIDEventGetTimeStamp();
    v10 = sub_19B41E070(TimeStamp);
    if (v10 > *(a1 + 64) + 1.0)
    {
      v11 = (*(**(a1 + 80) + 24))(*(a1 + 80), @"AppleVoltageDictionary");
      v13 = objc_msgSend_objectForKeyedSubscript_(v11, v12, @"COMPASS_TEMP");
      objc_msgSend_floatValue(v13, v14, v15);
      *(a1 + 72) = v16 / 100.0;
      *(a1 + 64) = v10;
    }

    v30 = v10;
    v17 = v6 - *(a1 + 52);
    v31 = v4 - *(a1 + 48);
    v32 = v17;
    v18 = *(a1 + 72);
    v33 = v8 - *(a1 + 56);
    v34 = v18;
    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E28260);
    }

    v19 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316162;
      v36 = "Magnetometer";
      v37 = 2048;
      v38 = v4;
      v39 = 2048;
      v40 = v6;
      v41 = 2048;
      v42 = v8;
      v43 = 2048;
      v44 = v10;
      _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_DEBUG, "Type,%s,x,%20.20f,y,%20.20f,z,%20.20f,timestamp,%20.20f", buf, 0x34u);
    }

    v20 = sub_19B420058();
    if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E28260);
      }

      *v48 = 136316162;
      *&v48[4] = "Magnetometer";
      *&v48[12] = 2048;
      *&v48[14] = v4;
      v49 = 2048;
      v50 = v6;
      *v51 = 2048;
      *&v51[2] = v8;
      *&v51[10] = 2048;
      v52 = v10;
      v21 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLMagnetometer::onMagnetometerData(const CLMotionTypeMagneticField &, const CLMotionTypeTimestamp &)", "CoreLocation: %s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    if (*(a1 + 32) == 1)
    {
      *v48 = &unk_1F0E313B0;
      *&v48[8] = CFAbsoluteTimeGetCurrent();
      v50 = v10;
      *v51 = v4;
      *&v51[4] = v6;
      *&v51[8] = v8;
      v22 = sub_19B720E40();
      sub_19B7223F8(v22, v48);
      sub_19B517F80(buf);
      sub_19B532648(buf);
      v47 |= 1u;
      v45 = *&v48[8];
      v23 = v46;
      *(v46 + 36) |= 1u;
      *(v23 + 8) = v10;
      v24 = v46;
      *(v46 + 36) |= 8u;
      *(v24 + 24) = v4;
      v25 = v46;
      *(v46 + 36) |= 0x10u;
      *(v25 + 28) = v6;
      v26 = v46;
      *(v46 + 36) |= 0x20u;
      *(v26 + 32) = v8;
      v27 = v46;
      v28 = *(a1 + 72);
      *(v46 + 36) |= 4u;
      *(v27 + 20) = v28;
      sub_19B51DBD4(buf);
    }

    result = sub_19B41DF08(a1, 0, &v30, 24);
  }

  v29 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B6741CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_19B51DBD4(va);
  _Unwind_Resume(a1);
}

void sub_19B6741E8(uint64_t a1, int a2, double *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E28260);
    }

    v4 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      v14 = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "Unrecognized magnetometer notification %{public}d", buf, 8u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E28260);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual CFTimeInterval CLMagnetometer::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  else
  {
    sub_19B673820(a1, a3);
    if (*a3 > 0.0 && !*(a1 + 40))
    {
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      operator new();
    }

    if (*a3 <= 0.0 && *(a1 + 40))
    {
      v9 = sub_19B708E64();
      sub_19B426A14(v9, 0, *(a1 + 40));
      v10 = *(a1 + 40);
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }

      *(a1 + 40) = 0;
    }

    v11 = *a3;
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_19B6744DC(float *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2890 != -1)
  {
    dispatch_once(&qword_1EAFE2890, &unk_1F0E28260);
  }

  v4 = qword_1EAFE2898;
  if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_INFO))
  {
    v5 = *a1;
    v6 = a1[1];
    v7 = a1[2];
    *buf = 134218496;
    v16 = v5;
    v17 = 2048;
    v18 = v6;
    v19 = 2048;
    v20 = v7;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "Received magnetometer offset (%f, %f, %f)", buf, 0x20u);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E28260);
    }

    v12 = *a1;
    v13 = a1[1];
    v14 = a1[2];
    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLMagnetometer::onOffset(const CLMotionTypeMagneticField *, void *)", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v10 = *a1;
  *(a2 + 56) = a1[2];
  *(a2 + 48) = v10;
  v11 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B67470C()
{
  result = os_log_create("com.apple.locationd.Motion", "Sensors");
  qword_1EAFE2898 = result;
  return result;
}

void sub_19B674740(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void *sub_19B674784(void *a1)
{
  *a1 = &unk_1F0E32D30;
  v2 = a1[2];
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = v2 + 80 * v4 - 48;
      v6 = -80 * v4;
      do
      {
        sub_19B674A48((v5 + 24));
        sub_19B654634(v5, *(v5 + 8));
        v5 -= 80;
        v6 += 80;
      }

      while (v6);
    }

    MEMORY[0x19EAE76D0](v3, 0x1020C80BCAB735ELL);
  }

  return a1;
}

void sub_19B674830(void *a1)
{
  sub_19B674784(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B674868(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24) <= a2)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E29580);
    }

    v4 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      v9 = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "Unknown notification %d", buf, 8u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E29580);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "ssize_t CLMotionNotifier::numberOfSpectators(int)", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    result = -1;
  }

  else
  {
    result = *(*(a1 + 16) + 80 * a2 + 72);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_19B674A48(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void sub_19B674B78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v18, v17);
  _Unwind_Resume(a1);
}

void sub_19B674EE0(uint64_t a1, const char *a2)
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = MEMORY[0x1E695E118];
  v3[0] = @"kCLConnectionMessageSubscribeKey";
  v3[1] = @"GNSSMotion/kCLConnectionMessageDecimationRate";
  v4[1] = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], a2, *(a1 + 40));
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v2, v4, v3, 2);
  sub_19B675404();
}

void sub_19B674FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  if (v10)
  {
    sub_19B41FFEC(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6752BC(uint64_t a1, const char *a2)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"kCLConnectionMessageSubscribeKey";
  v3[0] = MEMORY[0x1E695E110];
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v3, &v2, 1);
  sub_19B675404();
}

void sub_19B675394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  if (v10)
  {
    sub_19B41FFEC(v10);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B6753D4()
{
  result = os_log_create("com.apple.locationd.Motion", "GNSSMotion");
  qword_1EAFE2B20 = result;
  return result;
}

void sub_19B6754AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

uint64_t sub_19B677074()
{
  if (qword_1ED71D2B0 != -1)
  {
    dispatch_once(&qword_1ED71D2B0, &unk_1F0E295E0);
  }

  return qword_1ED71D2A8;
}

void sub_19B677564()
{
  v20 = *MEMORY[0x1E69E9840];
  if (qword_1ED71D2B0 != -1)
  {
    dispatch_once(&qword_1ED71D2B0, &unk_1F0E295E0);
  }

  v0 = qword_1ED71D2A8;
  v1 = sub_19B677F14();
  v2 = sub_19B677C18();
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A40);
  }

  v3 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v1;
    LOWORD(v19) = 1024;
    *(&v19 + 2) = v2;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "KeyboardMotion preferences changed,dataCollection,%d,accelStreaming,%d", buf, 0xEu);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A40);
    }

    v14 = 67109376;
    v15 = v1;
    v16 = 1024;
    v17 = v2;
    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLKeyboardMotionNotifier::dataCollectionSettingsChanged()", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  sub_19B677B98(v0, v2);
  if (*(v0 + 89) != v1)
  {
    buf[0] = -60;
    buf[1] = v1;
    if (objc_msgSend_setReport_payload_length_(*(v0 + 40), v6, 196, buf, 2))
    {
      *(v0 + 89) = v1;
    }
  }

  if (*(v0 + 90) != v2)
  {
    buf[0] = 105;
    buf[1] = v2;
    if (objc_msgSend_setReport_payload_length_(*(v0 + 48), v6, 105, buf, 2))
    {
      *(v0 + 90) = v2;
    }
  }

  v13 = 0;
  sub_19B5FC534(buf);
  v7 = sub_19B438CCC(*buf, "MotionLoggerLogKeyboardMotion", &v13);
  if (v19)
  {
    sub_19B41FFEC(v19);
  }

  if (v7)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A40);
    }

    v8 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v13;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "KeyboardMotion,Msl Logging,%d", buf, 8u);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A40);
      }

      v14 = 67109120;
      v15 = v13;
      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLKeyboardMotionNotifier::dataCollectionSettingsChanged()", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    sub_19B5FC534(buf);
    sub_19B5EE5B0(*buf, "MslLogger.Enable", &v13);
    if (v19)
    {
      sub_19B41FFEC(v19);
    }

    sub_19B5FC534(buf);
    if (v13)
    {
      v11 = 15;
    }

    else
    {
      v11 = 255;
    }

    v14 = v11;
    sub_19B5EF4EC(*buf, "MslLogger.FlushTimeout", &v14);
    if (v19)
    {
      sub_19B41FFEC(v19);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_19B6779F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_19B41FFEC(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B677A20()
{
  sub_19B421798();
  result = sub_19B4426E4();
  if (result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_19B677B98(uint64_t result, const char *a2)
{
  v2 = result;
  if (a2)
  {
    if (!*(result + 40))
    {
      result = objc_msgSend_registerForDeviceMatching_(*(result + 32), a2, &unk_1F0E6A3E0);
      *(v2 + 40) = result;
    }
  }

  else
  {
    result = sub_19B674868(result, 1);
    if (!result)
    {
      result = sub_19B674868(v2, 2);
      if (!result)
      {
        result = sub_19B674868(v2, 4);
        if (!result)
        {
          result = objc_msgSend_unregisterForDeviceMatching_(*(v2 + 32), v3, *(v2 + 40));
          *(v2 + 40) = 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_19B677C18()
{
  v4 = 0;
  sub_19B5FC534(&v2);
  v0 = sub_19B438CCC(v2, "EnableKeyboardMotionAccelStream", &v4);
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  return v0 & v4;
}

void sub_19B677C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B677C90(id *a1)
{
  *a1 = &unk_1F0E32268;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, a1, @"com.apple.locationd.KeyboardMotion.DataCollectionMode", 0);

  objc_msgSend_invalidate(a1[10], v3, v4);

  return sub_19B674784(a1);
}

void sub_19B677D30(id *a1)
{
  sub_19B677C90(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B677D68(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return;
      }

LABEL_8:

      sub_19B677B98(a1, (a3 != 0));
      return;
    }

    if (a3)
    {
      if (!*(a1 + 48))
      {
        *(a1 + 48) = objc_msgSend_registerForDeviceMatching_(*(a1 + 32), a2, &unk_1F0E6A318);
      }
    }

    else
    {
      objc_msgSend_unregisterForDeviceMatching_(*(a1 + 32), a2, *(a1 + 48));

      *(a1 + 48) = 0;
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        sub_19B677B98(a1, (a3 != 0));
        if (a3)
        {
          v5 = mach_absolute_time();
          sub_19B41E070(v5);
          sub_19B41DF08(a1, 2, a1 + 91, 1);
        }

        break;
      case 3:
        v6 = *(a1 + 64);
        if (a3)
        {
          if (!v6)
          {
            v7 = [CLHidEventMonitorManager alloc];
            v8 = *(a1 + 56);
            global_queue = dispatch_get_global_queue(0, 0);
            v11 = objc_msgSend_initWithDelegate_queue_matching_(v7, v10, v8, global_queue, &unk_1F0E6A3B8);
            *(a1 + 64) = v11;

            MEMORY[0x1EEE66B58](v11, sel_addSystemClientMatching_, &unk_1F0E6A3B8);
          }
        }

        else
        {

          MEMORY[0x1EEE66B58](v6, sel_removeSystemClientmatching_, &unk_1F0E6A3B8);
        }

        break;
      case 4:
        goto LABEL_8;
      default:
        return;
    }
  }
}

uint64_t sub_19B677F14()
{
  v4 = 0;
  sub_19B5FC534(&v2);
  v0 = sub_19B438CCC(v2, "EnableKeyboardMotionDataCollectionMode", &v4);
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  return v0 & v4;
}

void sub_19B677F74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  _Unwind_Resume(exception_object);
}

Class sub_19B677F8C()
{
  if (qword_1ED71D2C0 != -1)
  {
    dispatch_once(&qword_1ED71D2C0, &unk_1F0E3A9C0);
  }

  result = objc_getClass("SBSSmartCoverService");
  qword_1ED71D2B8 = result;
  off_1EE5DEA20 = sub_19B677FF0;
  return result;
}

void *sub_19B677FFC()
{
  result = dlopen("/System/Library/PrivateFrameworks/SpringBoardServices.framework/SpringBoardServices", 2);
  qword_1ED71D2C8 = result;
  return result;
}

os_log_t sub_19B678028()
{
  result = os_log_create("com.apple.locationd.Motion", "Accessory");
  qword_1ED71C7C8 = result;
  return result;
}

uint64_t sub_19B678058(uint64_t a1)
{
  if (qword_1ED71D2C0 != -1)
  {
    dispatch_once(&qword_1ED71D2C0, &unk_1F0E3A9C0);
  }

  v2 = dlsym(qword_1ED71D2C8, "NSStringFromSBSSmartCoverState");
  off_1EE5DEA18[0] = v2;

  return (v2)(a1);
}

uint64_t sub_19B6780E0(uint64_t a1, int a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (qword_1ED71C938 != -1)
  {
    dispatch_once(&qword_1ED71C938, &unk_1F0E29600);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B6781D0;
  v5[3] = &unk_1E7533DD8;
  v5[4] = &v7;
  v6 = a2;
  sub_19B420C9C(a1, v5);
  v3 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

void sub_19B6781B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B6781D0(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v2 = pthread_self();
  v3 = pthread_getschedparam(v2, &v10, &v11);
  if (v3)
  {
    v4 = v3;
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E280A0);
    }

    v5 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      v15 = v4;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "Could not get scheduling parameters for motion thread, error = %{public}d", buf, 8u);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E280A0);
      }

      v12 = 67240192;
      v13 = v4;
      v7 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLMotionCore::setMotionThreadPriority(int)_block_invoke", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  else
  {
    if (*(a1 + 40) >= 1)
    {
      v11.sched_priority = *(a1 + 40);
    }

    v8 = pthread_self();
    *(*(*(a1 + 32) + 8) + 24) = pthread_setschedparam(v8, v10, &v11) == 0;
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_19B6783F4(int a1, uint64_t a2, CFArrayRef theArray)
{
  if (a2 == 1)
  {
    goto LABEL_6;
  }

  if (a2 == 128 || a2 == 32)
  {
    Count = CFArrayGetCount(theArray);
    if (Count <= 0)
    {
      __assert_rtn("wrapRunLoopWithAutoreleasePoolHandler", "CLMotionCore.mm", 217, "count > 0");
    }

    v6 = Count - 1;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, Count - 1);
    MEMORY[0x19EAE7000](ValueAtIndex);
    CFArrayRemoveValueAtIndex(theArray, v6);
    if (a2 == 32)
    {
LABEL_6:
      v8 = MEMORY[0x19EAE7010](0);

      CFArrayAppendValue(theArray, v8);
    }
  }
}

void sub_19B6784C0()
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E27FC0);
  }

  v0 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
  {
    v1 = *(qword_1ED71C908 + 48);
    *buf = 67109120;
    v16 = v1;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_DEFAULT, "Motion thread deadlock watchdog after %d petting", buf, 8u);
  }

  v2 = sub_19B420058();
  if (*(v2 + 160) > 1 || *(v2 + 164) > 1 || *(v2 + 168) > 1 || *(v2 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E27FC0);
    }

    v14 = *(qword_1ED71C908 + 48);
    v3 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "static void *CLMotionCore::runMotionThread(void *)_block_invoke", "CoreLocation: %s\n", v3);
    if (v3 != buf)
    {
      free(v3);
    }
  }

  if (MEMORY[0x1EEE83328])
  {
    ADClientAddValueForScalarKey();
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], v5, v6);
    v10 = objc_msgSend_processName(v7, v8, v9);
    v12 = objc_msgSend_initWithFormat_(v4, v11, @"%@.%@", @"com.apple.CoreMotion.ThreadDeadlockCount", v10);
    ADClientAddValueForScalarKey();
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_19B6786FC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B678734(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_19B678764(uint64_t a1, uint64_t a2)
{
  if (sub_19B51106C(a2, &unk_1F0E34A10))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19B6787A4()
{
  if (qword_1ED71D2E8 != -1)
  {
    dispatch_once(&qword_1ED71D2E8, &unk_1F0E29620);
  }

  return qword_1ED71D2E0;
}

void *sub_19B6788A8(uint64_t a1, const char *a2, uint64_t a3)
{
  *a1 = &unk_1F0E32768;
  sub_19B678960(a1, a2, a3);
  v4 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return sub_19B674784(a1);
}

void sub_19B678960(io_object_t *notifier, const char *a2, uint64_t a3)
{
  if (*(notifier + 5))
  {
    v4 = sub_19B4484E8();
    sub_19B426A14(v4, 1, *(notifier + 5));
  }

  if (*(notifier + 6))
  {
    if (qword_1EAFE3A70 != -1)
    {
      dispatch_once(&qword_1EAFE3A70, &unk_1F0E29E40);
    }

    sub_19B426A14(qword_1EAFE3A90, 0, *(notifier + 6));
  }

  v5 = *(notifier + 8);
  if (v5)
  {

    *(notifier + 8) = 0;
  }

  v6 = *(notifier + 7);
  if (v6)
  {
    objc_msgSend_stopActivityUpdates(v6, a2, a3);

    *(notifier + 7) = 0;
  }

  v7 = *(notifier + 9);
  if (v7)
  {
    dispatch_release(v7);
    *(notifier + 9) = 0;
  }

  if (notifier[20])
  {
    IODeregisterForSystemPower(notifier + 20);
    notifier[20] = 0;
  }

  v8 = notifier[21];
  if (v8)
  {
    IOServiceClose(v8);
    notifier[21] = 0;
  }

  v9 = *(notifier + 11);
  if (v9)
  {
    IONotificationPortDestroy(v9);
    *(notifier + 11) = 0;
  }
}

void sub_19B678A50(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_19B6788A8(a1, a2, a3);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B678A88(__int128 *a1, uint64_t a2)
{
  v4 = *a1;
  v2 = *(a2 + 72);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B67964C;
  block[3] = &unk_1E7533E58;
  block[4] = a2;
  dispatch_async(v2, block);
}

uint64_t sub_19B678B00(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (objc_msgSend_stationary(a2, a2, a3))
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v3[24] = v4;

  return sub_19B450488(v3);
}

void sub_19B678B4C(void *refcon, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (!*(refcon + 5))
    {
      operator new();
    }

    if (!*(refcon + 6))
    {
      sub_19B421798();
      if (sub_19B5F9028())
      {
        operator new();
      }
    }

    if (!*(refcon + 9))
    {
      *(refcon + 9) = dispatch_queue_create("com.apple.CoreMotion.CLPocketStateService", 0);
    }

    if (!*(refcon + 8))
    {
      v4 = objc_opt_new();
      *(refcon + 8) = v4;
      objc_msgSend_setUnderlyingQueue_(v4, v5, *(refcon + 9));
    }

    if (!*(refcon + 7))
    {
      v6 = objc_alloc_init(CMMotionActivityManager);
      *(refcon + 7) = v6;
      v7 = *(refcon + 8);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = sub_19B678B00;
      v24[3] = &unk_1E7533E18;
      v24[4] = refcon;
      objc_msgSend_startActivityUpdatesToQueue_withHandler_(v6, v8, v7, v24);
    }

    if (*(refcon + 11))
    {
      goto LABEL_16;
    }

    v9 = IORegisterForSystemPower(refcon, refcon + 11, sub_19B4515A0, refcon + 20);
    *(refcon + 21) = v9;
    if (v9)
    {
      IONotificationPortSetDispatchQueue(*(refcon + 11), *(refcon + 9));
LABEL_16:
      if (qword_1EAFE2848 != -1)
      {
        dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
      }

      v10 = qword_1EAFE2868;
      if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, "enabled detection successfully", buf, 2u);
      }

      v11 = sub_19B420058();
      if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2848 != -1)
        {
          dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
        }

        v12 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLPocketStateService::enableDetection()", "CoreLocation: %s\n", v12);
        if (v12 != buf)
        {
          free(v12);
        }
      }

      goto LABEL_41;
    }

    if (qword_1EAFE2848 != -1)
    {
      dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
    }

    v19 = qword_1EAFE2868;
    if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_FAULT, "Could not subscribe to system power notifications", buf, 2u);
    }

    v20 = sub_19B420058();
    if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2848 != -1)
      {
        dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
      }

      v23 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLPocketStateService::enableDetection()", "CoreLocation: %s\n", v23);
      if (v23 != buf)
      {
        free(v23);
      }
    }

    sub_19B678960(refcon, v21, v22);
  }

  else
  {
    if (qword_1EAFE2848 != -1)
    {
      dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
    }

    v13 = qword_1EAFE2868;
    if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_DEFAULT, "disable Detection", buf, 2u);
    }

    v14 = sub_19B420058();
    if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2848 != -1)
      {
        dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
      }

      LOWORD(v24[0]) = 0;
      v17 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLPocketStateService::numberOfSpectatorsChanged(int, size_t)", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    sub_19B678960(refcon, v15, v16);
  }

LABEL_41:
  v18 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B67925C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], a2, a3);
  v6 = objc_msgSend_processName(v3, v4, v5);
  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  result = objc_msgSend_initWithFormat_(v7, v8, @"com.apple.CoreMotion.PocketState.%@", v6);
  qword_1ED71D2F0 = result;
  return result;
}

void sub_19B6792B8(uint64_t a1, double a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 100);
  v4 = *(a1 + 104);
  v6 = *(a1 + 96);
  kdebug_trace();
  v7 = mach_absolute_time();
  v8 = sub_19B41E070(v7);
  v9 = BKSHIDServicesRequestEstimatedProximityEvents();
  kdebug_trace();
  v10 = mach_absolute_time();
  v11 = sub_19B41E070(v10);
  if (qword_1EAFE2848 != -1)
  {
    dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
  }

  v12 = v11 - v8;
  v13 = qword_1EAFE2868;
  if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_DEFAULT))
  {
    v14 = mach_absolute_time();
    v15 = sub_19B41E070(v14);
    if (v9 > 2)
    {
      v16 = 0;
    }

    else
    {
      v16 = off_1E7533EF0[v9];
    }

    *buf = 134219010;
    v27 = v15;
    v28 = 2048;
    v29 = a2;
    v30 = 2048;
    v31 = a2 + 2.0;
    v32 = 2048;
    v33 = v12;
    v34 = 2080;
    v35 = v16;
    _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_DEFAULT, "%f: monitorTime, %f, bksMonitorTime, %f, bksDelay, %f, proxStatus, %s", buf, 0x34u);
  }

  v17 = sub_19B420058();
  if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2848 != -1)
    {
      dispatch_once(&qword_1EAFE2848, &unk_1F0E27F00);
    }

    v19 = mach_absolute_time();
    sub_19B41E070(v19);
    if (v9 <= 2)
    {
      v20 = off_1E7533EF0[v9];
    }

    v21 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLPocketStateService::queryInitiated(NSTimeInterval)", "CoreLocation: %s\n", v21);
    if (v21 != buf)
    {
      free(v21);
    }
  }

  if (v9 == 2)
  {
    v23 = @"proxStatus.ignored";
  }

  else if (v9 == 1)
  {
    v23 = @"proxStatus.extended";
  }

  else
  {
    if (v9)
    {
      goto LABEL_28;
    }

    v22 = mach_absolute_time();
    *(a1 + 112) = sub_19B41E070(v22);
    *(a1 + 104) = 0;
    v23 = @"proxStatus.started";
  }

  if (MEMORY[0x1EEE83328])
  {
    v24 = MEMORY[0x1E696AEC0];
    if (qword_1ED71D2F8 != -1)
    {
      dispatch_once(&qword_1ED71D2F8, &unk_1F0E28340);
    }

    objc_msgSend_stringWithFormat_(v24, v18, @"%@.%@", qword_1ED71D2F0, v23);
    ADClientAddValueForScalarKey();
  }

LABEL_28:
  v25 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B67965C()
{
  result = os_log_create("com.apple.locationd.Motion", "Pocket");
  qword_1EAFE2868 = result;
  return result;
}

void sub_19B6796A0(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B67981C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v20, v19);
  _Unwind_Resume(a1);
}

void sub_19B67984C(uint64_t a1, CLConnectionMessage **a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v3, v6, v4, v5, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7)) != 0 && (v10 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage")) != 0 && (v13 = v10, objc_msgSend_intValue(v10, v11, v12) != 100))
  {
    v16 = objc_msgSend_intValue(v13, v14, v15);
  }

  else
  {
    v16 = 103;
  }

  if (qword_1EAFE27A0 != -1)
  {
    dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
  }

  v17 = qword_1EAFE27D8;
  if (os_log_type_enabled(qword_1EAFE27D8, OS_LOG_TYPE_ERROR))
  {
    *buf = 67240192;
    v22 = v16;
    _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_ERROR, "Failed with CMError code %{public}d", buf, 8u);
  }

  v18 = sub_19B420058();
  if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27A0 != -1)
    {
      dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
    }

    v19 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionAlarmManagerInternal init]_block_invoke", "CoreLocation: %s\n", v19);
    if (v19 != buf)
    {
      free(v19);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

void sub_19B679A88(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v5 = ExecutablePathFromPid;
    if (qword_1EAFE27A0 != -1)
    {
      dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
    }

    v6 = qword_1EAFE27D8;
    if (os_log_type_enabled(qword_1EAFE27D8, OS_LOG_TYPE_INFO))
    {
      v7 = getpid();
      v8 = *(a1 + 32);
      v9 = *(v8 + 32);
      *buf = 138413058;
      v15 = v5;
      v16 = 1024;
      v17 = v7;
      v18 = 1024;
      v19 = v9;
      v20 = 2048;
      v21 = v8;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "CMMotionAlarmManager client connection interrupt, %@, %d, %d, %p", buf, 0x22u);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A0 != -1)
      {
        dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
      }

      getpid();
      v13 = *(*(a1 + 32) + 32);
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionAlarmManagerInternal init]_block_invoke", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

id sub_19B679D60(uint64_t a1)
{
  result = objc_alloc_init(*(a1 + 32));
  qword_1ED71D308 = result;
  return result;
}

uint64_t sub_19B67A030(uint64_t result)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v1 = *(result + 32);
  if ((*(v1 + 32) & 1) == 0)
  {
    v2 = result;
    v3 = *(v1 + 8);
    sub_19B428B50(&__p, "kCLConnectionMessageMotionAlarmFire");
    v6 = *(v2 + 32);
    CLConnectionClient::setHandlerForMessage();
    if (v8 < 0)
    {
      operator delete(__p);
    }

    v9 = @"kCLConnectionMessageSubscribeKey";
    v10[0] = MEMORY[0x1E695E118];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v4, v10, &v9, 1);
    sub_19B6258C4();
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B67A1AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, std::__shared_weak_count *a19, int a20, __int16 a21, char a22, char a23)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B67A1F0(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v4, v8, v5, v6, v7, 0);
  v10 = *(a1 + 32);
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v9);

  return MEMORY[0x1EEE66B58](v10, sel__handleAlarmFire_, DictionaryOfClasses);
}

void sub_19B67A310(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 32))
  {
    v6 = @"kCLConnectionMessageSubscribeKey";
    v7 = MEMORY[0x1E695E110];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, &v7, &v6, 1);
    sub_19B6258C4();
  }

  if (qword_1EAFE27A0 != -1)
  {
    dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
  }

  v2 = qword_1EAFE27D8;
  if (os_log_type_enabled(qword_1EAFE27D8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_INFO, "Unable to stop MotionAlarm data updates as we are are not receiving updates.", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27A0 != -1)
    {
      dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionAlarmManagerInternal _stopListeners]_block_invoke", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_19B67A560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a12)
  {
    sub_19B41FFEC(a12);
  }

  if (a18)
  {
    sub_19B41FFEC(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B67AA70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28)
{
  if (a18)
  {
    sub_19B41FFEC(a18);
  }

  if (a28)
  {
    sub_19B41FFEC(a28);
  }

  objc_sync_exit(v28);
  _Unwind_Resume(a1);
}

void sub_19B67AAB0(uint64_t a1, CLConnectionMessage **a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v4, v8, v5, v6, v7, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v9)) != 0)
  {
    v12 = DictionaryOfClasses;
    v13 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v11, @"CMErrorMessage");
    v15 = objc_msgSend_objectForKeyedSubscript_(v12, v14, @"CMMotionAlarmKey");
    if (objc_msgSend_intValue(v13, v16, v17) == 100)
    {
      if (v15)
      {
        objc_msgSend_copyPropertiesFromAlarm_(*(a1 + 32), v18, v15);
        v19 = v26;
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = sub_19B67B048;
        v26[3] = &unk_1E7532988;
        v26[4] = *(a1 + 32);
      }

      else
      {
        if (qword_1EAFE27A0 != -1)
        {
          dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
        }

        v20 = qword_1EAFE27D8;
        if (os_log_type_enabled(qword_1EAFE27D8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_ERROR, "Unable to parse kCLConnectionMessageMotionAlarmRegister message.", buf, 2u);
        }

        v21 = sub_19B420058();
        if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE27A0 != -1)
          {
            dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
          }

          v25 = 0;
          v22 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionAlarmManagerInternal _registerAlarm:error:]_block_invoke", "CoreLocation: %s\n", v22);
          if (v22 != buf)
          {
            free(v22);
          }
        }

        v19 = block;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_19B67B0B4;
        block[3] = &unk_1E7532988;
        block[4] = *(a1 + 32);
      }
    }

    else
    {
      v19 = v27;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_19B67AF44;
      v27[3] = &unk_1E7532A00;
      v27[4] = *(a1 + 32);
      v27[5] = v13;
    }
  }

  else
  {
    v19 = v28;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = sub_19B67AE50;
    v28[3] = &unk_1E7532988;
    v28[4] = *(a1 + 32);
  }

  dispatch_async(MEMORY[0x1E69E96A0], v19);
  v23 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B67AE50(uint64_t a1, const char *a2, uint64_t a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_manager(*(a1 + 32), a2, a3);
  objc_msgSend_delegate(v4, v5, v6);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v10 = objc_msgSend_manager(*(a1 + 32), v8, v9);
    v13 = objc_msgSend_delegate(v10, v11, v12);
    v14 = *(a1 + 32);
    v15 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A578];
    v23[0] = @"Alarm registration response missing";
    v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, v23, &v22, 1);
    v19 = objc_msgSend_errorWithDomain_code_userInfo_(v15, v18, @"CMErrorDomain", 103, v17);
    result = objc_msgSend_alarmDidRegister_error_(v13, v20, v14, v19);
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B67AF44(uint64_t a1, const char *a2, uint64_t a3)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_manager(*(a1 + 32), a2, a3);
  objc_msgSend_delegate(v4, v5, v6);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v10 = objc_msgSend_manager(*(a1 + 32), v8, v9);
    v13 = objc_msgSend_delegate(v10, v11, v12);
    v14 = MEMORY[0x1E696ABC0];
    v15 = *(a1 + 32);
    v18 = objc_msgSend_intValue(*(a1 + 40), v16, v17);
    v25 = *MEMORY[0x1E696A578];
    v26[0] = @"Alarm registration returned an error";
    v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v19, v26, &v25, 1);
    v22 = objc_msgSend_errorWithDomain_code_userInfo_(v14, v21, @"CMErrorDomain", v18, v20);
    result = objc_msgSend_alarmDidRegister_error_(v13, v23, v15, v22);
  }

  v24 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B67B048(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_manager(*(a1 + 32), a2, a3);
  objc_msgSend_delegate(v4, v5, v6);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v10 = objc_msgSend_manager(*(a1 + 32), v8, v9);
    v13 = objc_msgSend_delegate(v10, v11, v12);
    v15 = *(a1 + 32);

    return objc_msgSend_alarmDidRegister_error_(v13, v14, v15, 0);
  }

  return result;
}

uint64_t sub_19B67B0B4(uint64_t a1, const char *a2, uint64_t a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_manager(*(a1 + 32), a2, a3);
  objc_msgSend_delegate(v4, v5, v6);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v10 = objc_msgSend_manager(*(a1 + 32), v8, v9);
    v13 = objc_msgSend_delegate(v10, v11, v12);
    v14 = *(a1 + 32);
    v15 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A578];
    v23[0] = @"Unable to parse alarm registration response";
    v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, v23, &v22, 1);
    v19 = objc_msgSend_errorWithDomain_code_userInfo_(v15, v18, @"CMErrorDomain", 103, v17);
    result = objc_msgSend_alarmDidRegister_error_(v13, v20, v14, v19);
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B67B634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, id location, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  objc_destroyWeak((v25 + 40));
  if (a18)
  {
    sub_19B41FFEC(a18);
  }

  objc_destroyWeak(&location);
  if (a24)
  {
    sub_19B41FFEC(a24);
  }

  objc_sync_exit(v24);
  _Unwind_Resume(a1);
}

void sub_19B67B68C(uint64_t a1, CLConnectionMessage **a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v4, v8, v5, v6, v7, 0);
  if (!*a2 || (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v9)) == 0)
  {
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = sub_19B67BC28;
    v41[3] = &unk_1E7532988;
    v41[4] = *(a1 + 32);
    v27 = MEMORY[0x1E69E96A0];
    v28 = v41;
LABEL_21:
    dispatch_async(v27, v28);
    goto LABEL_22;
  }

  v12 = DictionaryOfClasses;
  v13 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v11, @"CMErrorMessage");
  v15 = objc_msgSend_objectForKeyedSubscript_(v12, v14, @"CMMotionAlarmKey");
  if (objc_msgSend_intValue(v13, v16, v17) != 100)
  {
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = sub_19B67BCBC;
    v40[3] = &unk_1E7532A00;
    v40[4] = *(a1 + 32);
    v40[5] = v13;
    v27 = MEMORY[0x1E69E96A0];
    v28 = v40;
    goto LABEL_21;
  }

  if (!v15)
  {
    if (qword_1EAFE27A0 != -1)
    {
      dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
    }

    v29 = qword_1EAFE27D8;
    if (os_log_type_enabled(qword_1EAFE27D8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v29, OS_LOG_TYPE_ERROR, "Unable to parse kCLConnectionMessageMotionAlarmUnregister message.", buf, 2u);
    }

    v30 = sub_19B420058();
    if ((*(v30 + 160) & 0x80000000) == 0 || (*(v30 + 164) & 0x80000000) == 0 || (*(v30 + 168) & 0x80000000) == 0 || *(v30 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A0 != -1)
      {
        dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
      }

      LOWORD(v42) = 0;
      v31 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionAlarmManagerInternal _unregisterAlarm:error:]_block_invoke", "CoreLocation: %s\n", v31);
      if (v31 != buf)
      {
        free(v31);
      }
    }

    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = sub_19B67BDD4;
    v38[3] = &unk_1E7532988;
    v38[4] = *(a1 + 32);
    v27 = MEMORY[0x1E69E96A0];
    v28 = v38;
    goto LABEL_21;
  }

  Weak = objc_loadWeak((a1 + 40));
  if (Weak)
  {
    v19 = Weak;
    objc_sync_enter(Weak);
    v20 = *(a1 + 32);
    objc_msgSend_copyPropertiesFromAlarm_(*(a1 + 32), v21, v15);
    v22 = v19[3];
    v25 = objc_msgSend_name(*(a1 + 32), v23, v24);
    objc_msgSend_removeObjectForKey_(v22, v26, v25);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B67BD6C;
    block[3] = &unk_1E7532988;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_sync_exit(v19);
  }

  else
  {
    if (qword_1EAFE27A0 != -1)
    {
      dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
    }

    v33 = qword_1EAFE27D8;
    if (os_log_type_enabled(qword_1EAFE27D8, OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(a1 + 32);
      *buf = 138543362;
      v45 = v34;
      _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_DEFAULT, "Alarm manager no longer exists, cannot unregister alarm: %{public}@", buf, 0xCu);
    }

    v35 = sub_19B420058();
    if (*(v35 + 160) > 1 || *(v35 + 164) > 1 || *(v35 + 168) > 1 || *(v35 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A0 != -1)
      {
        dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
      }

      v36 = *(a1 + 32);
      v42 = 138543362;
      v43 = v36;
      v37 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionAlarmManagerInternal _unregisterAlarm:error:]_block_invoke", "CoreLocation: %s\n", v37);
      if (v37 != buf)
      {
        free(v37);
      }
    }
  }

LABEL_22:
  v32 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B67BC28(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_manager(*(a1 + 32), a2, a3);
  objc_msgSend_delegate(v4, v5, v6);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v10 = objc_msgSend_manager(*(a1 + 32), v8, v9);
    v13 = objc_msgSend_delegate(v10, v11, v12);
    v16 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v14, @"CMErrorDomain", 103, 0);

    return objc_msgSend_alarmDidUnregister_error_(v13, v15, 0, v16);
  }

  return result;
}

uint64_t sub_19B67BCBC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_manager(*(a1 + 32), a2, a3);
  objc_msgSend_delegate(v4, v5, v6);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v10 = objc_msgSend_manager(*(a1 + 32), v8, v9);
    v13 = objc_msgSend_delegate(v10, v11, v12);
    v14 = MEMORY[0x1E696ABC0];
    v17 = objc_msgSend_intValue(*(a1 + 40), v15, v16);
    v20 = objc_msgSend_errorWithDomain_code_userInfo_(v14, v18, @"CMErrorDomain", v17, 0);

    return objc_msgSend_alarmDidUnregister_error_(v13, v19, 0, v20);
  }

  return result;
}

void sub_19B67BD6C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_manager(*(a1 + 32), a2, a3);
  objc_msgSend_delegate(v4, v5, v6);
  if (objc_opt_respondsToSelector())
  {
    v9 = objc_msgSend_manager(*(a1 + 32), v7, v8);
    v12 = objc_msgSend_delegate(v9, v10, v11);
    objc_msgSend_alarmDidUnregister_error_(v12, v13, *(a1 + 32), 0);
  }

  v14 = *(a1 + 32);
}

uint64_t sub_19B67BDD4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_manager(*(a1 + 32), a2, a3);
  objc_msgSend_delegate(v4, v5, v6);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v10 = objc_msgSend_manager(*(a1 + 32), v8, v9);
    v13 = objc_msgSend_delegate(v10, v11, v12);
    v16 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v14, @"CMErrorDomain", 103, 0);

    return objc_msgSend_alarmDidUnregister_error_(v13, v15, 0, v16);
  }

  return result;
}

void sub_19B67C1C4(uint64_t a1, CLConnectionMessage **a2)
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v4, v8, v5, v6, v7, 0);
  if (!*a2 || (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v9)) == 0)
  {
    if (qword_1EAFE27A0 != -1)
    {
      dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
    }

    v39 = qword_1EAFE27D8;
    if (os_log_type_enabled(qword_1EAFE27D8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v39, OS_LOG_TYPE_ERROR, "Unable to parse kCLConnectionMessageMotionAlarmAcknowledge message.", buf, 2u);
    }

    v40 = sub_19B420058();
    if ((*(v40 + 160) & 0x80000000) != 0 && (*(v40 + 164) & 0x80000000) != 0 && (*(v40 + 168) & 0x80000000) != 0 && !*(v40 + 152))
    {
      goto LABEL_51;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27A0 == -1)
    {
      goto LABEL_48;
    }

    goto LABEL_60;
  }

  v12 = DictionaryOfClasses;
  v13 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v11, @"CMErrorMessage");
  v15 = objc_msgSend_objectForKeyedSubscript_(v12, v14, @"CMMotionAlarmKey");
  if (objc_msgSend_intValue(v13, v16, v17) != 100)
  {
    if (qword_1EAFE27A0 != -1)
    {
      dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
    }

    v41 = qword_1EAFE27D8;
    if (os_log_type_enabled(qword_1EAFE27D8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v54) = objc_msgSend_intValue(v13, v42, v43);
      _os_log_impl(&dword_19B41C000, v41, OS_LOG_TYPE_ERROR, "Unable to call kCLConnectionMessageMotionAlarmAcknowledge message. Code: %d", buf, 8u);
    }

    v44 = sub_19B420058();
    if ((*(v44 + 160) & 0x80000000) != 0 && (*(v44 + 164) & 0x80000000) != 0 && (*(v44 + 168) & 0x80000000) != 0 && !*(v44 + 152))
    {
      goto LABEL_51;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27A0 != -1)
    {
      dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
    }

    objc_msgSend_intValue(v13, v45, v46);
    v47 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionAlarmManagerInternal _acknowledgeAlarm:error:]_block_invoke", "CoreLocation: %s\n", v47);
    goto LABEL_49;
  }

  if (!v15)
  {
    if (qword_1EAFE27A0 != -1)
    {
      dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
    }

    v48 = qword_1EAFE27D8;
    if (os_log_type_enabled(qword_1EAFE27D8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v48, OS_LOG_TYPE_ERROR, "Unable to parse kCLConnectionMessageMotionAlarmAcknowledge message.", buf, 2u);
    }

    v49 = sub_19B420058();
    if ((*(v49 + 160) & 0x80000000) != 0 && (*(v49 + 164) & 0x80000000) != 0 && (*(v49 + 168) & 0x80000000) != 0 && !*(v49 + 152))
    {
      goto LABEL_51;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27A0 == -1)
    {
      goto LABEL_48;
    }

    goto LABEL_60;
  }

  Weak = objc_loadWeak((a1 + 32));
  if (!Weak)
  {
    if (qword_1EAFE27A0 != -1)
    {
      dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
    }

    v50 = qword_1EAFE27D8;
    if (os_log_type_enabled(qword_1EAFE27D8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v54 = v15;
      _os_log_impl(&dword_19B41C000, v50, OS_LOG_TYPE_ERROR, "Alarm manager no longer exists, cannot acknowledge alarm: %{public}@", buf, 0xCu);
    }

    v51 = sub_19B420058();
    if ((*(v51 + 160) & 0x80000000) != 0 && (*(v51 + 164) & 0x80000000) != 0 && (*(v51 + 168) & 0x80000000) != 0 && !*(v51 + 152))
    {
      goto LABEL_51;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27A0 == -1)
    {
      goto LABEL_48;
    }

LABEL_60:
    dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
LABEL_48:
    v47 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionAlarmManagerInternal _acknowledgeAlarm:error:]_block_invoke", "CoreLocation: %s\n", v47);
LABEL_49:
    if (v47 != buf)
    {
      free(v47);
    }

LABEL_51:
    v52 = *MEMORY[0x1E69E9840];
    return;
  }

  v19 = Weak;
  objc_sync_enter(Weak);
  v20 = v19[3];
  v23 = objc_msgSend_name(v15, v21, v22);
  v25 = objc_msgSend_objectForKey_(v20, v24, v23);
  if ((objc_msgSend_repeats(v25, v26, v27) & 1) == 0)
  {
    v30 = objc_msgSend_alarmId(v15, v28, v29);
    if (v30 == objc_msgSend_alarmId(v25, v31, v32))
    {
      v35 = v19[3];
      v36 = objc_msgSend_name(v25, v33, v34);
      objc_msgSend_removeObjectForKey_(v35, v37, v36);
    }
  }

  v38 = *MEMORY[0x1E69E9840];

  objc_sync_exit(v19);
}

void sub_19B67C9F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15)
  {
    sub_19B41FFEC(a15);
  }

  sub_19B41FFEC(v22);
  objc_sync_exit(v21);
  _Unwind_Resume(a1);
}

void sub_19B67CA50(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v8 = objc_msgSend_setWithObjects_(v4, v7, v5, v6, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v8)) != 0)
  {
    v11 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v10, @"CMErrorMessage");
    if (objc_msgSend_intValue(v11, v12, v13) == 100)
    {
      v14 = v15;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = sub_19B67CCB0;
      v15[3] = &unk_1E7532988;
      v15[4] = *(a1 + 32);
    }

    else
    {
      v14 = block;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_19B67CC40;
      block[3] = &unk_1E7532A00;
      block[4] = *(a1 + 32);
      block[5] = v11;
    }
  }

  else
  {
    v14 = v17;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_19B67CBE4;
    v17[3] = &unk_1E7532988;
    v17[4] = *(a1 + 32);
  }

  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

uint64_t sub_19B67CBE4(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);

  return MEMORY[0x1EEE66B58](v2, sel_remoteAppLaunchedWithResult_error_, 1);
}

uint64_t sub_19B67CC40(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 32);
  v5 = objc_msgSend_intValue(*(a1 + 40), a2, a3);
  objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);

  return MEMORY[0x1EEE66B58](v4, sel_remoteAppLaunchedWithResult_error_, 1);
}

uint64_t sub_19B67D154(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_manager(*(a1 + 32), a2, a3);
  objc_msgSend_delegate(v4, v5, v6);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v10 = objc_msgSend_manager(*(a1 + 32), v8, v9);
    v13 = objc_msgSend_delegate(v10, v11, v12);
    v14 = MEMORY[0x1E696ABC0];
    v15 = *(a1 + 32);
    v18 = objc_msgSend_intValue(*(a1 + 40), v16, v17);
    objc_msgSend_errorWithDomain_code_userInfo_(v14, v19, @"CMErrorDomain", v18, 0);

    return MEMORY[0x1EEE66B58](v13, sel_alarmDidFire_error_, v15);
  }

  return result;
}

uint64_t sub_19B67D210(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_manager(*(a1 + 32), a2, a3);
  objc_msgSend_delegate(v4, v5, v6);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v10 = objc_msgSend_manager(*(a1 + 32), v8, v9);
    v13 = objc_msgSend_delegate(v10, v11, v12);
    v14 = *(a1 + 32);

    return MEMORY[0x1EEE66B58](v13, sel_alarmDidFire_error_, v14);
  }

  return result;
}

id sub_19B67D3C0(uint64_t a1)
{
  result = objc_alloc_init(*(a1 + 32));
  qword_1ED71D318 = result;
  return result;
}

os_log_t sub_19B67D664()
{
  result = os_log_create("com.apple.locationd.Motion", "MotionAlarm");
  qword_1EAFE27D8 = result;
  return result;
}

void *sub_19B67D708(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B67D764((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B67D764(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B67D7BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B67D84C(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B67D8A8((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B67D8A8(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B67D900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B67D91C(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>, float32x4_t a5@<Q0>)
{
  v44 = *MEMORY[0x1E69E9840];
  if (*(a1 + 728) == 2)
  {
    v9 = sub_19B74167C();
  }

  else
  {
    if (!*(a1 + 6664))
    {
      operator new();
    }

    sub_19B66DF0C(a1, a2, a5);
    sub_19B6E4FB0(*(a1 + 6664), a2, a3, *(a1 + 728) != 0);
  }

  *a4 = 0;
  *(a4 + 8) = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a4 + 40) = 0;
  *(a4 + 64) = 0x3F80000000000000;
  *(a4 + 56) = 0;
  *(a4 + 24) = v10;
  *(a4 + 32) = v11;
  v13 = v9;
  *(a4 + 44) = v13;
  *(a4 + 48) = v12;
  v14 = v9 * 0.0174532924;
  v27 = 0;
  v28 = v14;
  sub_19B66C264((a4 + 56), &v27);
  v15 = a3[1];
  v16 = ++dword_1EAFE38D0;
  *(a4 + 8) = *a3;
  *(a4 + 16) = v15;
  *a4 = 1;
  *(a4 + 40) = v16;
  if (qword_1EAFE2A58 != -1)
  {
    dispatch_once(&qword_1EAFE2A58, &unk_1F0E29660);
  }

  v17 = qword_1EAFE2A60;
  if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEBUG))
  {
    v18 = *a2;
    v19 = *a3;
    v20 = a3[1];
    buf[0] = 134218752;
    *&buf[1] = v18;
    v38 = 2048;
    v39 = v19;
    v40 = 2048;
    v41 = v20;
    v42 = 1024;
    v43 = dword_1EAFE38D0;
    _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_DEBUG, "[CMPdr] StepImpulse,time,%f,%f,%f, totalSteps,%d\n", buf, 0x26u);
  }

  v21 = sub_19B420058();
  if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E29660);
    }

    v22 = *a2;
    v23 = *a3;
    v24 = a3[1];
    v29 = 134218752;
    v30 = v22;
    v31 = 2048;
    v32 = v23;
    v33 = 2048;
    v34 = v24;
    v35 = 1024;
    v36 = dword_1EAFE38D0;
    v25 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "CMPdr::PdrResults CMPdr::feedImuData(const AccessoryActivity::ImuData *const, const CMAccessoryStepDetector::Impulse &)", "CoreLocation: %s\n", v25);
    if (v25 != buf)
    {
      free(v25);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B67DC88()
{
  result = os_log_create("com.apple.locationd.Motion", "MotionContext");
  qword_1EAFE2A60 = result;
  return result;
}

void sub_19B67DD6C(void *a1)
{
  sub_19B74FAE8(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B67DDA4(uint64_t a1, int a2, uint64_t *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AA78);
    }

    v4 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      LODWORD(v16) = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "[AccessoryPPG] Unrecognized update interval notification %{public}d", buf, 8u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AA78);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual CFTimeInterval CLAccessoryPPG::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  else
  {
    sub_19B750AC4(a1);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AA78);
    }

    v8 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_INFO))
    {
      v9 = *a3;
      *buf = 134349056;
      v16 = v9;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_INFO, "[AccessoryPPG] Setting update interval to %{public}f", buf, 0xCu);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AA78);
      }

      v14 = *a3;
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual CFTimeInterval CLAccessoryPPG::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    v12 = *a3;
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_19B67E0E4(uint64_t a1)
{
  v58 = *MEMORY[0x1E69E9840];
  DataValue = IOHIDEventGetDataValue();
  IntegerValue = IOHIDEventGetIntegerValue();
  if (DataValue)
  {
    v4 = IntegerValue;
    if (IntegerValue == 32)
    {
      TimeStamp = IOHIDEventGetTimeStamp();
      v6 = sub_19B41E070(TimeStamp);
      *v21 = v6;
      v7 = *(DataValue + 2);
      v21[1] = v7;
      v8 = *DataValue;
      v22 = *DataValue;
      v23 = DataValue[1];
      v9 = *(DataValue + 5);
      v25 = DataValue[12];
      v24 = v9;
      LOBYTE(v9) = DataValue[15];
      v26 = *(DataValue + 13);
      v27 = v9;
      v10 = *(DataValue + 8);
      v29 = DataValue[18];
      v28 = v10;
      v11 = *(DataValue + 19);
      v31 = DataValue[21];
      v30 = v11;
      LOBYTE(v11) = DataValue[24];
      v32 = *(DataValue + 11);
      v33 = v11;
      LOBYTE(v11) = DataValue[27];
      v34 = *(DataValue + 25);
      v35 = v11;
      v36 = *(DataValue + 14);
      v37 = *(DataValue + 15);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AA78);
      }

      v12 = qword_1ED71C7C8;
      if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67241219;
        v49 = v8;
        v50 = 2050;
        v51 = v7;
        v52 = 2050;
        v53 = v6;
        v54 = 1040;
        v55 = 32;
        v56 = 2097;
        v57 = DataValue;
        _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEBUG, "[AccessoryPPG] frameNum,%{public}d,sensorTime,%{public}llu,timestamp,%{public}20.20f,payload,{%{private}.*P}", buf, 0x2Cu);
      }

      v13 = sub_19B420058();
      if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AA78);
        }

        v38 = 67241219;
        v39 = v8;
        v40 = 2050;
        v41 = v7;
        v42 = 2050;
        v43 = v6;
        v44 = 1040;
        v45 = 32;
        v46 = 2097;
        v47 = DataValue;
        v14 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAccessoryPPG::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v14);
        if (v14 != buf)
        {
          free(v14);
        }
      }

      sub_19B41DF08(a1, 0, v21, 40);
      goto LABEL_38;
    }

    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AA78);
    }

    v17 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 68157955;
      v49 = v4;
      v50 = 2097;
      v51 = DataValue;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_ERROR, "[AccessoryPPG] Invalid payload: %{private}.*P", buf, 0x12u);
    }

    v18 = sub_19B420058();
    if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AA78);
      }

      v38 = 68157955;
      v39 = v4;
      v40 = 2097;
      v41 = DataValue;
LABEL_36:
      v19 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLAccessoryPPG::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }
  }

  else
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AA78);
    }

    v15 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_ERROR, "[AccessoryPPG] Invalid payload", buf, 2u);
    }

    v16 = sub_19B420058();
    if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E3AA78);
      }

      LOWORD(v38) = 0;
      goto LABEL_36;
    }
  }

LABEL_38:
  v20 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B67E670()
{
  result = os_log_create("com.apple.locationd.Motion", "Accessory");
  qword_1ED71C7C8 = result;
  return result;
}

void sub_19B67E7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B67E7F8(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_initPrivate(*(a1 + 32), a2, a3);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void sub_19B67E978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B67EAF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v20, v19);
  _Unwind_Resume(a1);
}

void sub_19B67EB20(uint64_t a1, CLConnectionMessage **a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2A88 != -1)
  {
    dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
  }

  v3 = qword_1EAFE2A90;
  if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_DEBUG))
  {
    v4 = CLConnectionMessage::name(*a2);
    if (*(v4 + 23) >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = *v4;
    }

    *buf = 136446210;
    v12 = v5;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "Default handler received message %{public}s", buf, 0xCu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A88 != -1)
    {
      dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
    }

    v7 = CLConnectionMessage::name(*a2);
    if (*(v7 + 23) < 0)
    {
      v8 = *v7;
    }

    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMOdometryManager setupBIO]_block_invoke", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}