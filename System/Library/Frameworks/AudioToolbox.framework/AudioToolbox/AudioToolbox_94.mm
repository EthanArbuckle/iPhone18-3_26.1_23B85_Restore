void DTFS_fast_fs_inv(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v115 = *MEMORY[0x1E69E9840];
  v6 = a1 + 816;
  v7 = *(a1 + 816);
  if (v7 >> 1 >= *(a1 + 820))
  {
    v8 = *(a1 + 820);
  }

  else
  {
    v8 = v7 >> 1;
  }

  memset(__b, 255, sizeof(__b));
  if (v7 <= 256)
  {
    v7 = 256;
  }

  v9 = a1 + 408;
  __b[1] = *a1;
  __b[2] = 0.0;
  if (v8 <= 1u)
  {
    v13 = 1;
    v25 = 2;
  }

  else
  {
    v10 = 0;
    if (v8 >= 0x80u)
    {
      v11 = 128;
    }

    else
    {
      v11 = v8;
    }

    v12 = &__b[3];
    v13 = 1;
    do
    {
      v14 = a1 + v10;
      v15 = (a1 + v10 + 4);
      v16 = a1 + v10 + 8;
      v18 = v15 < a1 || v16 > v9 || v15 > v16;
      v19 = v12 + 1;
      _CF = !v18 && v12 >= __b;
      if (!_CF || v19 > &v115 || v12 > v19)
      {
        goto LABEL_159;
      }

      *v12 = *v15 * 128.0;
      v23 = (v14 + 412);
      if (v14 + 412 < v9)
      {
        goto LABEL_159;
      }

      v24 = v14 + 416;
      if (v24 > v6 || v23 > v24 || v12 + 1 < __b || v12 + 2 > &v115 || v12 + 1 > v12 + 2)
      {
        goto LABEL_159;
      }

      v12[1] = *v23 * 128.0;
      ++v13;
      v10 += 4;
      v12 += 2;
    }

    while (4 * v11 - 4 != v10);
    if (v8 > 0x7Fu)
    {
      goto LABEL_50;
    }

    v25 = ((2 * v11 + 131068) & 0x1FFFE) + 4;
  }

  v26 = (a1 + 4 * v13);
  if (v26 < a1)
  {
    goto LABEL_159;
  }

  if ((v26 + 1) > v9)
  {
    goto LABEL_159;
  }

  if (v26 > v26 + 1)
  {
    goto LABEL_159;
  }

  v27 = &__b[v25 | 1];
  if (v27 < __b)
  {
    goto LABEL_159;
  }

  if (v27 + 1 > &v115)
  {
    goto LABEL_159;
  }

  if (v27 > v27 + 1)
  {
    goto LABEL_159;
  }

  *v27 = *v26 * 128.0;
  v28 = (v9 + 4 * v13);
  if (v28 < v9)
  {
    goto LABEL_159;
  }

  if ((v28 + 1) > v6)
  {
    goto LABEL_159;
  }

  if (v28 > v28 + 1)
  {
    goto LABEL_159;
  }

  v29 = &__b[v25];
  v30 = v29 + 2;
  if (v29 + 2 < __b)
  {
    goto LABEL_159;
  }

  v31 = v29 + 3;
  if (v31 > &v115 || v30 > v31)
  {
    goto LABEL_159;
  }

  *v30 = *v28 * 128.0;
  ++v13;
LABEL_50:
  if (v13 <= 0x7Fu)
  {
    v32 = v13 - 128;
    v33 = &__b[2 * v13 + 2];
    while (1)
    {
      v34 = v33 + 1;
      v35 = v33 < __b || v34 > &v115;
      if (v35 || v33 > v34)
      {
        break;
      }

      *v33 = 0.0;
      if (v33 > &v115)
      {
        break;
      }

      *(v33 - 1) = 0.0;
      v33 += 2;
      _CF = __CFADD__(v32++, 1);
      if (_CF)
      {
        goto LABEL_62;
      }
    }

LABEL_159:
    __break(0x5519u);
  }

LABEL_62:
  v37 = 0;
  _D0 = 0x3F7FEC43BCC90AB0;
  v39 = 0x100000000000000;
  v40 = 0xFF000000000000;
  v41 = vdup_n_s32(0xB99DE7DF);
  do
  {
    v42 = &__b[v37 + 4];
    v43 = &__b[v37 + 3];
    if (v43 < __b || v42 > &v115 || v43 > v42)
    {
      goto LABEL_159;
    }

    v46 = (__b + (v40 >> 46));
    if (v46 < __b)
    {
      goto LABEL_159;
    }

    if (v46 + 1 > &v115)
    {
      goto LABEL_159;
    }

    if (v46 > v46 + 1)
    {
      goto LABEL_159;
    }

    v47 = &__b[v37 + 5];
    if (v47 > &v115)
    {
      goto LABEL_159;
    }

    if (v42 > v47)
    {
      goto LABEL_159;
    }

    v48 = (__b + (v39 >> 46));
    if (v48 < __b || v48 + 1 > &v115 || v48 > v48 + 1)
    {
      goto LABEL_159;
    }

    _S16 = (*v42 + *v48) * -0.5;
    _S5 = (*v43 - *v46) * 0.5;
    __asm { FMLA            S6, S16, V0.S[1] }

    *v43 = _S6 - (_S5 * _D0.f32[0]);
    __asm { FMLA            S19, S5, V0.S[1] }

    *v42 = _S19 + (_D0.f32[0] * _S16);
    __asm { FMLS            S7, S16, V0.S[1] }

    *v46 = _S7 + (_D0.f32[0] * _S5);
    __asm { FMLA            S6, S5, V0.S[1] }

    *v48 = _S6 + (_D0.f32[0] * _S16);
    _D0 = vadd_f32(_D0, vmla_f32(vrev64_s32(vmul_f32(_D0, 0xBCC90AB03CC90AB0)), v41, _D0));
    v37 += 2;
    v39 -= 0x2000000000000;
    v40 -= 0x2000000000000;
  }

  while (v37 != 126);
  v58 = (__b[1] - __b[2]) * 0.5;
  __b[1] = (__b[1] + __b[2]) * 0.5;
  __b[2] = v58;
  v59 = 1;
  LOWORD(v60) = 1;
  do
  {
    if (v59 < v60)
    {
      v61 = &__b[v60];
      v62 = v61 + 1;
      v64 = v61 < __b || v62 > &v115 || v61 > v62;
      v65 = &__b[v59];
      v66 = v65 + 1;
      if (v64 || v65 < __b || v66 > &v115 || v65 > v66)
      {
        goto LABEL_159;
      }

      v70 = *v61;
      *v61 = *v65;
      v71 = v61 + 2;
      *v65 = v70;
      v72 = v71 > &v115 || v62 > v71;
      v73 = v65 + 2;
      v74 = v72 || v73 > &v115;
      if (v74 || v66 > v73)
      {
        goto LABEL_159;
      }

      v76 = *v62;
      *v62 = *v66;
      *v66 = v76;
    }

    if (v60 < 129)
    {
      LOWORD(v77) = 128;
    }

    else
    {
      LOWORD(v77) = 128;
      do
      {
        v60 = (v60 - v77);
        v78 = v77;
        v77 = v77 >> 1;
      }

      while (v78 >= 4 && v60 > v77);
    }

    LOWORD(v60) = v77 + v60;
    _CF = v59 >= 0xFE;
    v59 += 2;
  }

  while (!_CF);
  v79 = 0x20000;
  v80 = 2;
  LOWORD(v81) = 2;
  do
  {
    v82 = 6.28318531 / -v80;
    v83 = sin((v82 * 0.5));
    v84 = sin(v82);
    if (v80 >= 2)
    {
      v86 = v83;
      v87 = (v86 * -2.0) * v86;
      v88 = v84;
      v89 = 0.0;
      v85.i32[0] = 1.0;
      v90 = 1;
      while (v90 > 256)
      {
LABEL_140:
        v104 = *v85.i32 * v88;
        *v85.i32 = *v85.i32 + ((-v89 * v88) + (*v85.i32 * v87));
        v89 = v89 + (v104 + (v89 * v87));
        v90 += 2;
        if (v80 <= v90)
        {
          goto LABEL_141;
        }
      }

      v91.f32[0] = v89;
      v92 = vdup_lane_s32(v85, 0);
      LOWORD(v93) = v90;
      while (1)
      {
        v94 = &__b[(v93 + v81)];
        v95 = v94 + 1;
        v96 = v94 < __b || v95 > &v115;
        v97 = v96 || v94 > v95;
        v98 = v94 + 1;
        v99 = v97 || v98 > &v115;
        if (v99 || v95 > v98)
        {
          goto LABEL_159;
        }

        v101 = &__b[v93];
        if (v101 < __b)
        {
          goto LABEL_159;
        }

        v102 = v101 + 4;
        if (&v101->i32[1] > &v115)
        {
          goto LABEL_159;
        }

        if (v101 > v102)
        {
          goto LABEL_159;
        }

        v91.f32[1] = -v89;
        v103 = vmla_f32(vrev64_s32(vmul_f32(*v94, v91)), *v94, v92);
        v94->f32[0] = v101->f32[0] - v103.f32[0];
        if (&v101[1] > &v115 || v102 > &v101[1])
        {
          goto LABEL_159;
        }

        *v95 = v101->f32[1] - v103.f32[1];
        *v101 = vadd_f32(v103, *v101);
        v93 = (v93 + 2 * v81);
        if (v93 >= 257)
        {
          goto LABEL_140;
        }
      }
    }

LABEL_141:
    v81 = v79 >> 15;
    v80 = (v79 >> 15);
    v79 *= 2;
  }

  while (v80 < 256);
  v105 = 1;
  do
  {
    v106 = &__b[v105];
    v107 = v106 + 1;
    if (v106 < __b || v107 > &v115 || v106 > v107)
    {
      goto LABEL_159;
    }

    v110 = a2 + 4 * v105;
    v111 = (v110 - 4);
    v112 = v110 - 4 < a2 || v110 > a3;
    if (v112 || v111 > v110)
    {
      goto LABEL_159;
    }

    *v111 = __b[v105++] * 0.0078125;
  }

  while (v7 >= v105);
}

void DTFS_zeroFilter(unint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 816);
  if (v2 >> 1 >= *(a1 + 820))
  {
    v3 = *(a1 + 820);
  }

  else
  {
    v3 = v2 >> 1;
  }

  if ((v3 & 0x80000000) == 0)
  {
    v6 = 0;
    v7 = a1 + 816;
    v8 = 6.2832 / v2;
    v9 = a2 + 68;
    v10 = a1 + 408;
    while (2)
    {
      v11 = 0;
      v12 = 0.0;
      v13 = 1.0;
      v14 = v8 * v6;
      do
      {
        v15 = (a2 + 4 * v11);
        v16 = v15 + 1;
        if (v15 < a2 || v16 > v9 || v15 > v16)
        {
          goto LABEL_24;
        }

        v19 = __sincos_stret(v14);
        v20 = *v15;
        v21 = v19.__cosval * v20;
        v13 = v13 + v21;
        v22 = v19.__sinval * v20;
        v12 = v12 + v22;
        v14 = (v8 * v6) + v14;
      }

      while (v11++ < 0x10);
      v24 = (a1 + 4 * v6);
      if (v24 < a1 || (v24 + 1) > v10 || v24 > v24 + 1 || (v25 = (v10 + 4 * v6), v25 < v10) || (v25 + 1) > v7 || v25 > v25 + 1)
      {
LABEL_24:
        __break(0x5519u);
        return;
      }

      v26 = *v24;
      v27 = *v25;
      *v24 = (*v24 * v13) - (*v25 * v12);
      *v25 = (v12 * v26) + (v27 * v13);
      if (v3 >= ++v6)
      {
        continue;
      }

      break;
    }
  }
}

void DTFS_pol2car(unint64_t a1)
{
  v2 = a1 + 816;
  v3 = *(a1 + 816);
  if ((v3 - 1) >> 1 >= *(a1 + 820))
  {
    v4 = *(a1 + 820);
  }

  else
  {
    v4 = (v3 - 1) >> 1;
  }

  if (v4 >= 1)
  {
    v5 = a1 + 408;
    LOWORD(v6) = 1;
    while (1)
    {
      v7 = v6;
      v8 = (v5 + 4 * v6);
      v9 = v8 + 1;
      v10 = v8 < v5 || v9 > v2;
      v11 = v10 || v8 > v9;
      v12 = (a1 + 4 * v7);
      v13 = v12 + 1;
      v14 = !v11 && v12 >= a1;
      v15 = !v14 || v13 > v5;
      if (v15 || v12 > v13)
      {
        goto LABEL_34;
      }

      v17 = __sincos_stret(*v8);
      v18 = (*v12 + *v12);
      v19 = v17.__sinval * v18;
      *v8 = v19;
      v20 = v17.__cosval * v18;
      *v12 = v20;
      LOWORD(v6) = v7 + 1;
      if (v4 < (v7 + 1))
      {
        v6 = v6;
        if ((v3 & 1) == 0)
        {
          goto LABEL_26;
        }

        return;
      }
    }
  }

  v6 = 1;
  if ((v3 & 1) == 0)
  {
LABEL_26:
    v21 = (a1 + 408 + 4 * v6);
    if (v21 < a1 + 408 || (v21 + 1) > v2 || v21 > v21 + 1 || (v22 = (a1 + 4 * v6), v22 < a1) || (v22 + 1) > a1 + 408 || v22 > v22 + 1)
    {
LABEL_34:
      __break(0x5519u);
      return;
    }

    v23 = __sincos_stret(*v21);
    v24 = *v22;
    v25 = v23.__sinval * v24;
    *v21 = v25;
    v26 = v23.__cosval * v24;
    *v22 = v26;
  }
}

uint64_t DTFS_zeroPadd(uint64_t result, unint64_t a2)
{
  v2 = *(a2 + 816);
  if (v2 != result)
  {
    v3 = v2 >> 1;
    if (v2 >> 1 >= result >> 1)
    {
LABEL_15:
      *(a2 + 816) = result;
      v10 = *(a2 + 832);
      v11 = vcvtmd_s64_f64(v10 / (12800.0 / result));
      *(a2 + 820) = v11;
      if ((v10 - ((12800.0 / result) * v11)) >= (12800.0 / result))
      {
        *(a2 + 820) = v11 + 1;
      }
    }

    else
    {
      v4 = a2 + 408;
      v5 = (result >> 1) - v3;
      v6 = a2 + 4 * v3;
      while (1)
      {
        v7 = v6 + 416;
        v8 = v6 + 412 < v4 || v7 > a2 + 816;
        if (v8 || v6 + 412 > v7)
        {
          break;
        }

        *(v6 + 412) = 0;
        if (v6 + 4 < a2 || v6 + 8 > v4 || v6 + 4 > v6 + 8)
        {
          break;
        }

        *(v6 + 4) = 0;
        v6 += 4;
        if (!--v5)
        {
          goto LABEL_15;
        }
      }

      __break(0x5519u);
    }
  }

  return result;
}

void DTFS_getSpEngyFromResAmp(unint64_t a1, uint64_t a2, float a3, float a4)
{
  v4 = *(a1 + 816);
  if (v4 >> 1 >= *(a1 + 824))
  {
    v5 = *(a1 + 824);
  }

  else
  {
    v5 = v4 >> 1;
  }

  if ((v5 & 0x80000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    if (*(a1 + 832) == a4)
    {
      a4 = 4001.0;
    }

    v10 = a1 + 408;
    v11 = a4;
    v12 = a3;
    v13 = 0.0;
    v33 = v12;
    v14 = 0.0;
    while (1)
    {
      v15 = (a1 + 4 * v9);
      v16 = v15 + 1;
      v17 = v15 < a1 || v16 > v10;
      if (v17 || v15 >= v16)
      {
        break;
      }

      v19 = *v15;
      if (*v15 < 0.0)
      {
        *v15 = 0.0;
        v19 = 0.0;
      }

      if (v13 < v11 && v13 >= v12)
      {
        v34 = v14;
        v21 = 0;
        v22 = v13 * 6.28318548 / 12800.0;
        v23 = 0.0;
        v24 = 1.0;
        v25 = v22;
        do
        {
          v26 = __sincos_stret(v25);
          v27 = *(a2 + v21);
          v28 = v26.__cosval * v27;
          v24 = v24 + v28;
          v29 = v26.__sinval * v27;
          v23 = v23 - v29;
          v25 = v25 + v22;
          v21 += 4;
        }

        while (v21 != 68);
        v31 = (v4 & 1) == 0 && v4 >> 1 == v8;
        if (!v9 || v31)
        {
          v32 = ((v19 * v19) / ((v23 * v23) + (v24 * v24)));
        }

        else
        {
          v32 = (v19 + v19) * v19 / ((v23 * v23) + (v24 * v24));
        }

        v14 = v34 + v32;
        v12 = v33;
      }

      ++v9;
      v13 = 12800.0 / v4 + v13;
      v8 = v9;
      if (v5 < v9)
      {
        return;
      }
    }

    __break(0x5519u);
  }
}

uint64_t erb_slot(uint64_t result, unsigned int *a2, unint64_t a3, _DWORD *a4, unint64_t a5, int a6)
{
  v6 = &erb_NB;
  v7 = a6;
  v8 = &erb_WB;
  if (a6 == 24)
  {
    v8 = &PowerCB_NB;
    v6 = &erb_WB;
    v9 = 6400;
  }

  else
  {
    v9 = 4000;
  }

  if (a6 >= 1)
  {
    v10 = a6;
    v11 = a4;
    v12 = a2;
    while (v12 >= a2)
    {
      if ((v12 + 1) > a3)
      {
        break;
      }

      if (v12 > v12 + 1)
      {
        break;
      }

      *v12 = 0;
      if (v11 < a4 || (v11 + 1) > a5 || v11 > v11 + 1)
      {
        break;
      }

      *v11++ = 0;
      ++v12;
      if (!--v10)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_52;
  }

LABEL_13:
  v13 = vcvtmd_s64_f64(v9 / (12800.0 / result));
  v14 = 12800.0 / result;
  v15 = v9;
  if ((v9 - (v14 * v13)) < v14)
  {
    v16 = v13;
  }

  else
  {
    v16 = v13 + 1;
  }

  if (result >> 1 < v16)
  {
    v16 = result >> 1;
  }

  if ((v16 & 0x80000000) == 0)
  {
    v17 = &v6[a6];
    if (v17 >= v6 && v17 + 1 <= v8 && v17 <= v17 + 1)
    {
      v18 = 0;
      v19 = 0;
      v20 = *v17;
      v21 = 0.0;
      while (1)
      {
        if (v21 > v20)
        {
          v21 = v20;
        }

        if (v21 >= v15)
        {
          v21 = v15;
        }

        if (v19 < a6)
        {
          break;
        }

LABEL_39:
        ++v18;
        v21 = v14 + v21;
        if (v16 < v18)
        {
          goto LABEL_40;
        }
      }

      v22 = v19;
      v23 = &v6[v19 + 1];
      while (v23 >= v6 && v23 + 1 <= v8 && v23 <= v23 + 1)
      {
        if (v21 < *v23)
        {
          v24 = &a4[v22];
          if (v24 >= a4 && (v24 + 1) <= a5 && v24 <= v24 + 1)
          {
            v19 = v22;
            *v24 = v21 + *v24;
            ++a2[v22];
            goto LABEL_39;
          }

          goto LABEL_52;
        }

        ++v22;
        ++v23;
        if (a6 == v22)
        {
          v19 = v22;
          goto LABEL_39;
        }
      }
    }

    goto LABEL_52;
  }

LABEL_40:
  if (a6 >= 1)
  {
    v25 = a4;
    for (i = a2; i >= a2 && (i + 1) <= a3 && i <= i + 1; ++i)
    {
      if (*i >= 2)
      {
        if (v25 < a4 || (v25 + 1) > a5 || v25 > v25 + 1)
        {
          break;
        }

        *v25 = *v25 / *i;
      }

      ++v25;
      if (!--v7)
      {
        return result;
      }
    }

LABEL_52:
    __break(0x5519u);
  }

  return result;
}

uint64_t erb_add(unint64_t a1, uint64_t a2, int *a3, uint64_t a4, int *a5, int a6)
{
  *v99 = *MEMORY[0x1E69E9840];
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v98[4] = v11;
  v98[5] = v11;
  v98[2] = v11;
  v98[3] = v11;
  v98[0] = v11;
  v98[1] = v11;
  memset(v97, 0, sizeof(v97));
  v94 = a6;
  memset(&v96[2], 0, 64);
  if (a6 == 24)
  {
    v12 = &AmpCB1_WB;
  }

  else
  {
    v12 = &AmpCB1_NB;
  }

  memset(v96, 0, 32);
  v13 = a2;
  v95 = v98;
  erb_slot(a2, v97, v98, v96, v97, a6);
  result = erb_slot(a4, v98, v99, v96, v97, a6);
  if (a6 < 1)
  {
    v18 = v95;
    if (v13 > a4)
    {
      v29 = v96 + 4 * a6;
      if (v29 - 4 < v96 || v29 > v97 || v29 - 4 > v29)
      {
        goto LABEL_173;
      }
    }
  }

  else
  {
    v15 = a6;
    v16 = v96;
    v17 = a6;
    v18 = v95;
    do
    {
      v19 = v16 + 1;
      if (v16 < v96 || v19 > v97 || v16 >= v19)
      {
        goto LABEL_173;
      }

      v22 = *a3++;
      *v16++ = v22;
      --v17;
    }

    while (v17);
    if (a4 > v13)
    {
      v23 = v96[0];
      v24 = v98;
      v25 = v96;
      while (1)
      {
        v26 = v24 + 4;
        if (v24 < v98 || v26 > v99 || v24 >= v26)
        {
          goto LABEL_173;
        }

        if ((*v24 & 0x80000000) != 0)
        {
          *v24 = 0;
        }

        else if (*v24)
        {
          if (v25 < v96 || v25 + 1 > v97 || v25 > v25 + 1)
          {
            goto LABEL_173;
          }

          v23 = *v25;
          goto LABEL_34;
        }

        if (v25 < v96 || v25 + 1 > v97 || v25 > v25 + 1)
        {
          goto LABEL_173;
        }

        *v25 = v23;
LABEL_34:
        ++v25;
        v24 += 4;
        if (!--v15)
        {
          goto LABEL_68;
        }
      }
    }

    if (v13 > a4)
    {
      v30 = v96 + 4 * v94;
      v31 = v30 - 4;
      if (v30 - 4 >= v96 && v30 <= v97 && v31 <= v30)
      {
        v32 = *v31;
        LODWORD(v33) = v94;
        while (1)
        {
          v33 = (v33 - 1);
          v34 = v98 + 4 * v33;
          v35 = v34 + 4;
          v36 = v34 < v98 || v35 > v99;
          if (v36 || v34 >= v35)
          {
            break;
          }

          v38 = v96 + v33;
          v41 = v38 + 1 <= v97 && v38 < v38 + 1 && v38 >= v96;
          if (*(v98 + v33))
          {
            if (!v41)
            {
              break;
            }

            v32 = *v38;
          }

          else
          {
            if (!v41)
            {
              break;
            }

            *v38 = v32;
          }

          if (v33 <= 0)
          {
            goto LABEL_68;
          }
        }
      }

LABEL_173:
      __break(0x5519u);
    }
  }

LABEL_68:
  v42 = 0;
  v43 = a1 + 4 * a6;
  do
  {
    if (*(v97 + v42 + 4))
    {
      v44 = &v12[40 * *a5];
      v45 = &v12[40 * *a5 + v42];
      v46 = (v45 + 4);
      v48 = v45 < v44 || v46 > (v44 + 40) || v45 >= v46;
      v49 = (a1 + v42 + 4);
      v50 = a1 + v42 + 8;
      if (v48 || v49 < a1 || v50 > v43 || v49 > v50)
      {
        goto LABEL_173;
      }

      v54 = *&v44[v42] + *(v96 + v42 + 4);
      if (v54 < 0.0)
      {
        v54 = 0.0;
      }

      *v49 = v54;
    }

    else
    {
      v55 = (a1 + v42 + 4);
      v56 = a1 + v42 + 8;
      if (v55 < a1 || v56 > v43 || v55 > v56)
      {
        goto LABEL_173;
      }

      *v55 = 0;
    }

    v42 += 4;
  }

  while (v42 != 40);
  if (a6 >= 14)
  {
    v59 = 0;
    v60 = a5 + 1;
    v62 = a5 + 1 <= a5 + 2 && v60 >= a5;
    result = 52;
    do
    {
      v63 = &v97[2] + v59 + 12;
      v64 = &v97[3] + v59;
      if (v63 < v97 || v64 > v18 || v63 > v64)
      {
        goto LABEL_173;
      }

      if (*v63)
      {
        if (a6 == 22)
        {
          if (!v62)
          {
            goto LABEL_173;
          }

          v67 = &AmpCB2_NB + 44 * *v60;
          v68 = &AmpCB2_NB + 44 * *v60 + v59;
          v69 = (v68 + 4);
          v71 = v68 < v67 || v69 > (v67 + 44) || v68 >= v69;
          v72 = (&v96[2] + v59 + 12);
          v73 = (&v96[3] + v59);
          v76 = v71 || v72 < v96 || v73 > v97 || v72 > v73;
          v77 = (a1 + v59 + 44);
          v78 = a1 + v59 + 48;
          v80 = v76 || v77 < a1 || v78 > v43;
        }

        else
        {
          if (a6 != 24)
          {
            goto LABEL_171;
          }

          if (!v62)
          {
            goto LABEL_173;
          }

          v67 = &AmpCB2_WB + 52 * *v60;
          v83 = &AmpCB2_WB + 52 * *v60 + v59;
          v84 = (v83 + 4);
          v86 = v83 < v67 || v84 > (v67 + 52) || v83 >= v84;
          v72 = (&v96[2] + v59 + 12);
          v87 = (&v96[3] + v59);
          v90 = v86 || v72 < v96 || v87 > v97 || v72 > v87;
          v77 = (a1 + v59 + 44);
          v78 = a1 + v59 + 48;
          v80 = v90 || v77 < a1 || v78 > a1 + 96;
        }

        if (v80 || v77 > v78)
        {
          goto LABEL_173;
        }

        v93 = *&v67[v59] + *v72;
        if (v93 < 0.0)
        {
          v93 = 0.0;
        }

        *v77 = v93;
      }

      else
      {
        v81 = (a1 + v59 + 44);
        if (v81 < a1)
        {
          goto LABEL_173;
        }

        v82 = a1 + v59 + 48;
        if (v82 > v43 || v81 > v82)
        {
          goto LABEL_173;
        }

        *v81 = 0;
      }

LABEL_171:
      v59 += 4;
    }

    while (4 * (v94 - 2) - 44 != v59);
  }

  return result;
}

uint64_t DTFS_erb_inv(uint64_t result, _DWORD *a2, _DWORD *a3, float *a4, int a5)
{
  v45 = *MEMORY[0x1E69E9840];
  v44 = -1;
  *&v5 = -1;
  *(&v5 + 1) = -1;
  v43[4] = v5;
  v43[5] = v5;
  v43[2] = v5;
  v43[3] = v5;
  v43[0] = v5;
  v43[1] = v5;
  v41 = -1;
  v40[4] = v5;
  v40[5] = v5;
  v40[2] = v5;
  v40[3] = v5;
  v6 = &erb_NB;
  v40[0] = v5;
  v40[1] = v5;
  if (a5 == 22)
  {
    v7 = &erb_WB;
    v8 = 1165623296;
    goto LABEL_5;
  }

  if (a5 == 24)
  {
    v6 = &erb_WB;
    v7 = &PowerCB_NB;
    v8 = 1170735104;
LABEL_5:
    v9 = *&v8;
    LODWORD(v43[0]) = 0;
    LODWORD(v40[0]) = 0;
LABEL_7:
    v10 = a5;
    v11 = 1;
    while (1)
    {
      if (*a2++)
      {
        v13 = v43 + 4 * v11;
        v14 = v13 + 4;
        if (v13 < v43 || v14 > &v45 || v13 > v14)
        {
          goto LABEL_69;
        }

        *(v43 + v11) = *a3;
        v17 = v40 + v11;
        if (v17 < v40 || v17 + 1 > &v42 || v17 > v17 + 1)
        {
          goto LABEL_69;
        }

        *v17 = *result;
        ++v11;
      }

      result += 4;
      ++a3;
      if (!--v10)
      {
        goto LABEL_21;
      }
    }
  }

  LODWORD(v43[0]) = 0;
  LODWORD(v40[0]) = 0;
  v7 = &erb_WB;
  v9 = 0.0;
  if (a5 >= 1)
  {
    goto LABEL_7;
  }

  v11 = 1;
LABEL_21:
  v18 = v43 + 4 * v11;
  if (v18 < v43 || v18 + 4 > &v45 || v18 > v18 + 4 || (v19 = v11, *(v43 + v11) = v9, v20 = v40 + 4 * v11, v20 < v40) || v20 + 4 > &v42 || v20 > v20 + 4)
  {
LABEL_69:
    __break(0x5519u);
  }

  *(v40 + v19) = 0;
  v21 = *(a4 + 204);
  v22 = v21 >> 1;
  if (v21 >> 1 >= *(a4 + 205))
  {
    v22 = *(a4 + 205);
  }

  if ((v22 & 0x80000000) == 0)
  {
    v23 = &v6[a5];
    if (v23 >= v6 && v23 + 1 <= v7 && v23 <= v23 + 1)
    {
      v24 = 0;
      v25 = v19 + 1;
      v26 = a5 + 2;
      v27 = *v23;
      v28 = 0.0;
      LOWORD(v29) = 1;
      while (1)
      {
        if (v28 > v27)
        {
          v28 = v27;
        }

        if (v26 < v25)
        {
          v25 = v26;
        }

        if (v28 > v9)
        {
          v28 = v9;
        }

        if (v25 > v29)
        {
          result = 4 * v29;
          v29 = v29;
          while (1)
          {
            v30 = v43 + result + 4;
            if ((v43 + result) < v43 || v30 > &v45 || v43 + result > v30)
            {
              goto LABEL_69;
            }

            v33 = *(v43 + v29);
            if (v28 <= v33)
            {
              break;
            }

            ++v29;
            result += 4;
            if (v25 == v29)
            {
              LOWORD(v29) = v25;
              goto LABEL_66;
            }
          }

          v34 = v40 + 4 * v29;
          if (v34 < v40)
          {
            goto LABEL_69;
          }

          if (v34 + 4 > &v42)
          {
            goto LABEL_69;
          }

          if (v34 > v34 + 4)
          {
            goto LABEL_69;
          }

          result = v29 - 1;
          v35 = v43 + 4 * v29 - 4;
          if (v35 < v43)
          {
            goto LABEL_69;
          }

          if (v35 + 4 > &v45)
          {
            goto LABEL_69;
          }

          if (v35 > v35 + 4)
          {
            goto LABEL_69;
          }

          v36 = v40 + result;
          if (v36 < v40)
          {
            goto LABEL_69;
          }

          if (v36 + 1 > &v42)
          {
            goto LABEL_69;
          }

          if (v36 > v36 + 1)
          {
            goto LABEL_69;
          }

          v37 = &a4[v24];
          if (v37 < a4 || v37 + 1 > a4 + 102 || v37 > v37 + 1)
          {
            goto LABEL_69;
          }

          v38 = *(v43 + result);
          v39 = ((v33 - v28) * *v36) + (*(v40 + v29) * (v28 - v38));
          *v37 = v39;
          if (v33 != v38)
          {
            *v37 = v39 / (v33 - v38);
          }
        }

LABEL_66:
        *a4 = 0.0;
        ++v24;
        v28 = (12800.0 / v21) + v28;
        if (v22 < v24)
        {
          return result;
        }
      }
    }

    goto LABEL_69;
  }

  return result;
}

void transition_enc(uint64_t a1, uint64_t a2, int a3, int a4, __int16 *a5, _WORD *a6, __int16 *a7, uint64_t a8, float *a9, unint64_t a10, __int16 *a11, unint64_t a12, __int16 *a13, unint64_t a14, __int16 *a15, unint64_t a16, unsigned __int16 *a17, unint64_t a18, __int16 *a19, unint64_t a20, void *a21, float *a22, unint64_t a23, const float *a24, unint64_t a25, float *a26, unint64_t a27, float *a28, unint64_t a29, char *a30, unint64_t a31, float *a32, unint64_t a33, float *a34, unint64_t a35, float *a36, unint64_t a37, __int16 *a38, unint64_t a39, unint64_t *a40, unint64_t *a41)
{
  v41 = a2;
  v42 = a19;
  v43 = a20;
  v673[1] = *MEMORY[0x1E69E9840];
  v653 = -21846;
  v636 = a5;
  v637 = a4;
  if (a4)
  {
    goto LABEL_104;
  }

  if (*a5 == 192)
  {
    v44 = a19;
    v45 = (a11 + 1) <= a12 && a11 + 1 >= a11;
    v46 = v45;
    if (a3 == 256)
    {
      if ((v46 & 1) == 0)
      {
        goto LABEL_1366;
      }

      v47 = a24 + 192;
      v48 = *a11;
      v49 = v48 >= 62 ? 64 : v48 + 2;
      if (v47 > a25)
      {
        goto LABEL_1366;
      }

      if (v47 < a24)
      {
        goto LABEL_1366;
      }

      v50 = v49;
      if (v49 < 0 || (a25 - v47) >> 2 < v49)
      {
        goto LABEL_1366;
      }

      if (v49 < 1)
      {
        v55 = 192;
        v54 = a5;
      }

      else
      {
        v51 = 0;
        v52 = 0;
        v53 = 0.0;
        v54 = a5;
        do
        {
          if ((v47[v51] * v47[v51]) > v53)
          {
            v53 = v47[v51] * v47[v51];
            v52 = v51;
          }

          ++v51;
        }

        while (v50 != v51);
        v55 = v52 + 192;
      }

      *a7 = v55;
      LOWORD(v75) = 192;
      goto LABEL_69;
    }

    if (!v46)
    {
      goto LABEL_1366;
    }

    v64 = a24 + 256;
    v65 = *a11;
    v66 = v65 >= 62 ? 64 : v65 + 2;
    if (v64 > a25)
    {
      goto LABEL_1366;
    }

    if (v64 < a24)
    {
      goto LABEL_1366;
    }

    v67 = v66;
    if (v66 < 0 || (a25 - v64) >> 2 < v66)
    {
      goto LABEL_1366;
    }

    if (v66 < 1)
    {
      v73 = 256;
      v71 = a5;
      v72 = a3;
    }

    else
    {
      v68 = 0;
      v69 = 0;
      v70 = 0.0;
      v71 = a5;
      v72 = a3;
      do
      {
        if ((v64[v68] * v64[v68]) > v70)
        {
          v70 = v64[v68] * v64[v68];
          v69 = v68;
        }

        ++v68;
      }

      while (v67 != v68);
      v73 = v69 + 256;
    }

    *a7 = v73;
    *v71 = 256;
    if (v72 != 320)
    {
LABEL_76:
      v85 = 1;
      goto LABEL_85;
    }

LABEL_78:
    v83 = a11 + 1;
    if (a11 + 1 < a11 || (a11 + 2) > a12 || v83 > a11 + 2)
    {
      goto LABEL_1366;
    }

    v84 = 42;
    goto LABEL_82;
  }

  if ((a11 + 1) > a12)
  {
    goto LABEL_1366;
  }

  if (a11 + 1 < a11)
  {
    goto LABEL_1366;
  }

  v56 = a25 - a24;
  if (a25 < a24)
  {
    goto LABEL_1366;
  }

  v57 = (*a11 + 2);
  if (v57 < 0)
  {
    goto LABEL_1366;
  }

  v58 = v56 >> 2;
  if (v56 >> 2 < (*a11 + 2))
  {
    goto LABEL_1366;
  }

  v44 = a19;
  if (v57 < 1)
  {
    v60 = 0;
    v61 = 0.0;
    v54 = a5;
    v63 = a3;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = 0.0;
    v62 = 0.0;
    v54 = a5;
    v63 = a3;
    do
    {
      if ((a24[v59] * a24[v59]) > v62)
      {
        v61 = a24[v59] * a24[v59];
        v62 = v61;
        v60 = v59;
      }

      ++v59;
    }

    while ((*a11 + 2) != v59);
  }

  *a7 = v60;
  if (v63 == 320)
  {
    v74 = *a11;
    if (v74 <= 84)
    {
      *v54 = (v60 + ((v60 >> 25) & 0x3F)) & 0xFFC0;
      goto LABEL_78;
    }

    goto LABEL_55;
  }

  if (v63 != 256)
  {
    goto LABEL_64;
  }

  v74 = *a11;
  if (v74 > 68)
  {
LABEL_55:
    v76 = (v74 >> 1) + 2;
    if (v58 < v76)
    {
      goto LABEL_1366;
    }

    v78 = 0;
    v79 = 0;
    v80 = 0.0;
    v81 = 0.0;
    do
    {
      if ((a24[v78] * a24[v78]) > v81)
      {
        v80 = a24[v78] * a24[v78];
        v81 = v80;
        v79 = v78;
      }

      ++v78;
    }

    while (v76 != v78);
    *__C = -1;
    vDSP_dotpr(a24, 1, a24, 1, __C, (v74 >> 1) + 2);
    v82 = sqrtf(v61);
    v54 = v636;
    if (sqrtf(v80) > (v82 * 0.8) && sqrtf((*__C + 0.01) / v76) < (v82 * 0.25))
    {
      *a7 = v79;
    }

    LOWORD(v60) = *a7;
    a4 = v637;
    v41 = a2;
    v63 = a3;
LABEL_64:
    *v54 = (v60 + ((v60 >> 25) & 0x3F)) & 0xFFC0;
    if (v63 == 256)
    {
      goto LABEL_70;
    }

    if (v63 != 320)
    {
      goto LABEL_76;
    }

    goto LABEL_78;
  }

  v75 = (v60 + ((v60 >> 25) & 0x3F)) & 0xFFFFFFC0;
LABEL_69:
  *v54 = v75;
LABEL_70:
  v83 = a11 + 1;
  if (a11 + 1 < a11 || (a11 + 2) > a12 || v83 > a11 + 2)
  {
    goto LABEL_1366;
  }

  v84 = 34;
LABEL_82:
  if (*v83 >= v84)
  {
    v85 = 1;
  }

  else
  {
    v85 = 2;
  }

LABEL_85:
  v86 = a11 + 1;
  if (a11 + 1 < a11)
  {
    goto LABEL_1366;
  }

  if ((a11 + 2) > a12)
  {
    goto LABEL_1366;
  }

  if (v86 > a11 + 2)
  {
    goto LABEL_1366;
  }

  v87 = *v86;
  if (a17)
  {
    if ((a17 + 1) > a18 || a17 + 1 < a17)
    {
      goto LABEL_1366;
    }
  }

  if (v44 && ((v44 + 1) > a20 || v44 + 1 < v44))
  {
    goto LABEL_1366;
  }

  v88 = v87 * v85;
  if (a3 == 256)
  {
    v89 = 34;
  }

  else
  {
    v89 = 42;
  }

  if (a3 == 256)
  {
    v90 = 231;
  }

  else
  {
    v90 = 289;
  }

  v91 = (v88 - 8);
  if (v91 <= v89)
  {
    LOWORD(v91) = v89;
  }

  *a17 = v91;
  v92 = v91 + 15;
  v42 = v44;
  *v44 = v92;
  a5 = v636;
  if (v90 < v92)
  {
    *v44 = v90;
    *a17 = v90 - 15;
  }

LABEL_104:
  v93 = a36;
  v94 = a37;
  v95 = a13;
  v96 = a34;
  v97 = a38;
  v98 = *a5;
  if (v98 > a4)
  {
    if ((a34 + 1) <= a35 && a34 + 1 >= a34)
    {
      *a34 = 0.0;
      if ((a38 + 1) <= a39 && a38 + 1 >= a38)
      {
        *a38 = 0;
        v99 = a36 + 1;
        if ((a36 + 1) <= a37 && v99 >= a36)
        {
          *a36 = 1.0;
          if ((a36 + 2) <= a37 && v99 <= a36 + 2)
          {
            *v99 = 1.0;
            v100 = (*a21 + 4 * a4);
            if (v100 >= a21[2])
            {
              *__C = 0;
              vDSP_vfill(__C, v100, 1, 0x40uLL);
              if (a3 == 256)
              {
                v101 = (*a41 + 4 * (5 * v637 / 2));
                if (v101 < a41[2])
                {
                  goto LABEL_1366;
                }

                v102 = 160;
              }

              else
              {
                v101 = (*a41 + 8 * v637);
                if (v101 < a41[2])
                {
                  goto LABEL_1366;
                }

                v102 = 128;
              }

              *__C = 0;
              vDSP_vfill(__C, v101, 1, v102);
              *__C = 0;
              vDSP_vfill(__C, a22, 1, 0x40uLL);
              if (a31 >= a30 && a29 >= a28 && a29 - a28 >= 0x100 && a31 - a30 > 0xFF)
              {
                memmove(a30, a28, 0x100uLL);
                if (a30 + 256 >= a30 && (a13 + 1) <= a14 && a13 + 1 >= a13)
                {
                  *a13 = 64;
                  if ((a15 + 1) <= a16 && a15 + 1 >= a15)
                  {
                    *a15 = 0;
                    v115 = *a40;
                    v116 = *a40 + 24;
                    if (v116 <= a40[1] && v115 <= v116 && v115 >= a40[2])
                    {
                      v117 = *v115;
                      v118 = (*v115 + 1);
                      if (v118 <= v115[1] && v117 <= v118 && v117 >= v115[2])
                      {
                        *v117 = *a13;
                        return;
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

    goto LABEL_1366;
  }

  if (v98 != a4)
  {
    if (v98 >= a4)
    {
      return;
    }

    if (a3 == 256)
    {
      *a6 = 1;
      v109 = *v636;
      v110 = (a4 - v109 - 63) > 1;
      if (v109 == 1)
      {
        if (a4 != 64)
        {
          v650 = 0;
          v646 = 34;
          LOWORD(v113) = 1;
          v648 = 1;
          goto LABEL_284;
        }

        if ((a13 + 1) > a14 || a13 + 1 < a13 || a17 && ((a17 + 1) > a18 || a17 + 1 < a17) || v42 && ((v42 + 1) > a20 || v42 + 1 < v42))
        {
          goto LABEL_1366;
        }

        v111 = (*a13 - 8);
        if (v111 <= 34)
        {
          LOWORD(v111) = 34;
        }

        *a17 = v111;
        v112 = v111 + 15;
        *v42 = v112;
        if (v112 >= 232)
        {
          *v42 = 231;
          *a17 = 216;
        }

        v113 = *v636;
        v114 = 1;
      }

      else
      {
        v113 = *v636;
        v114 = v110 << 6;
      }

      v648 = v114;
      v646 = 34;
      v650 = a4 == 64;
      if (a4 != 64 || v113)
      {
LABEL_284:
        if (v41 > 24399)
        {
          if (v41 <= 30399)
          {
            if (v41 > 29199)
            {
              if (v41 == 29200)
              {
                v150 = 113;
                goto LABEL_945;
              }

              if (v41 == 30200)
              {
                v150 = 123;
                goto LABEL_945;
              }
            }

            else
            {
              if (v41 == 24400)
              {
                v150 = 93;
                goto LABEL_945;
              }

              if (v41 == 29000)
              {
                v150 = 103;
                goto LABEL_945;
              }
            }
          }

          else if (v41 <= 47999)
          {
            if (v41 == 30400)
            {
              v150 = 133;
              goto LABEL_945;
            }

            if (v41 == 32000)
            {
              v150 = 143;
              goto LABEL_945;
            }
          }

          else
          {
            switch(v41)
            {
              case 48000:
                v150 = 153;
                goto LABEL_945;
              case 64000:
                v150 = 163;
                goto LABEL_945;
              case 96000:
                v150 = 173;
                goto LABEL_945;
            }
          }
        }

        else if (v41 <= 12849)
        {
          if (v41 > 11599)
          {
            if (v41 == 11600)
            {
              v150 = 23;
              goto LABEL_945;
            }

            if (v41 == 12150)
            {
              v150 = 33;
              goto LABEL_945;
            }
          }

          else
          {
            if (v41 == 7200)
            {
              v150 = 3;
              goto LABEL_945;
            }

            if (v41 == 8000)
            {
              v150 = 13;
              goto LABEL_945;
            }
          }
        }

        else if (v41 <= 14799)
        {
          if (v41 == 12850)
          {
            v150 = 43;
            goto LABEL_945;
          }

          if (v41 == 13200)
          {
            v150 = 53;
            goto LABEL_945;
          }
        }

        else
        {
          switch(v41)
          {
            case 14800:
              v150 = 63;
              goto LABEL_945;
            case 16400:
              v150 = 73;
              goto LABEL_945;
            case 22600:
              v150 = 83;
              goto LABEL_945;
          }
        }

        if (v41 == 128000)
        {
          v150 = 183;
        }

        else
        {
          v150 = -7;
        }

LABEL_945:
        v411 = v42;
        if (v113 > 3u)
        {
          if (v113 > 0x7Fu)
          {
            if (v113 == 128)
            {
              v412 = 5;
              goto LABEL_964;
            }

            if (v113 == 192)
            {
              v412 = 6;
              goto LABEL_964;
            }
          }

          else
          {
            if (v113 == 4)
            {
              v412 = 3;
              goto LABEL_964;
            }

            if (v113 == 64)
            {
              v412 = 4;
              goto LABEL_964;
            }
          }
        }

        else
        {
          if (v113 < 2u)
          {
            v412 = 0;
            goto LABEL_964;
          }

          if (v113 == 2)
          {
            v412 = 1;
            goto LABEL_964;
          }

          if (v113 == 3)
          {
            v412 = 2;
            goto LABEL_964;
          }
        }

        if (v113 == 256)
        {
          v412 = 7;
        }

        else
        {
          v412 = 0;
        }

LABEL_964:
        v413 = &ACB_bits_tbl[2 * ((v412 + v150) << (2 * (a4 != -1))) + 2 * (a4 / 64)];
        if (v413 < ACB_bits_tbl || v413 + 2 > ACB_bits_16kHz_tbl || v413 > v413 + 2)
        {
          goto LABEL_1366;
        }

        v414 = *v413;
        if (v650)
        {
          if (v113 >= 3)
          {
            if ((v95 + 1) > a14)
            {
              goto LABEL_1366;
            }

            if (v95 + 1 < v95)
            {
              goto LABEL_1366;
            }

            *v95 = 128;
            if ((a15 + 1) > a16)
            {
              goto LABEL_1366;
            }

            if (a15 + 1 < a15)
            {
              goto LABEL_1366;
            }

            *a15 = 0;
            *a6 = 0;
            v415 = (*a21 + 256);
            if (v415 < a21[2])
            {
              goto LABEL_1366;
            }

            *__C = 0;
            v416 = v41;
            vDSP_vfill(__C, v415, 1, 0x41uLL);
            v417 = v416;
            v418 = a41[2];
            v419 = (*a41 + 640);
LABEL_975:
            if (v419 < v418)
            {
              goto LABEL_1366;
            }

            *__C = 0;
            v420 = v417;
            vDSP_vfill(__C, v419, 1, 0xA0uLL);
            v421 = v420;
            v422 = v637;
            goto LABEL_1218;
          }

          if (v113 == 2)
          {
            if ((v95 + 1) > a14 || v95 + 1 < v95)
            {
              goto LABEL_1366;
            }

            v447 = *v95;
            v448 = *a7;
            v449 = *a7 + v447;
            if (v449 <= 63)
            {
              *v95 = 64 - v448;
              if ((a15 + 1) > a16 || a15 + 1 < a15)
              {
                goto LABEL_1366;
              }

              *a15 = 0;
              LOWORD(v447) = *v95;
              v448 = *a7;
              v449 = *a7 + *v95;
            }

            if (v449 >= 128)
            {
              *v95 = 127 - v448;
              if ((a15 + 1) > a16 || a15 + 1 < a15)
              {
                goto LABEL_1366;
              }

              *a15 = 2;
              LOWORD(v447) = *v95;
            }

            if (a17 && ((a17 + 1) > a18 || a17 + 1 < a17) || v42 && ((v42 + 1) > v43 || v42 + 1 < v42))
            {
              goto LABEL_1366;
            }

            v482 = (v447 - 8);
            if (v482 <= 34)
            {
              LOWORD(v482) = 34;
            }

            *a17 = v482;
            v483 = v482 + 15;
            *v42 = v483;
            if (v483 >= 232)
            {
              *v42 = 231;
              *a17 = 216;
            }

            if ((a15 + 1) > a16)
            {
              goto LABEL_1366;
            }

            if (a15 + 1 < a15)
            {
              goto LABEL_1366;
            }

            v484 = v41;
            push_indice(a1, 95, 2 * (*v95 - v646) + ((*a15 + (*a15 >> 15)) >> 1), v414);
            v485 = a21[1];
            v486 = *a21 + 256;
            if (v485 < v486)
            {
              goto LABEL_1366;
            }

            v487 = a21[2];
            if (v487 > v486 || (v485 - v486) < 257)
            {
              goto LABEL_1366;
            }

            v488 = *a15;
            v489 = *a13;
            *__C = *a21 + 256;
            *&__C[8] = v485;
            *&__C[16] = v487;
            pred_lt4(__C, v486, v489, v488, 65, inter4_2, &post_dct_wind, 0x10u, 4);
            v421 = v484;
            v422 = v637;
            v490 = a41[2];
            v491 = -((((((((vcvts_n_f32_s32(*a15, 2uLL) * 5.0) * 0.5) + 5.0) + 0.5) + ((5 * *a13 + ((5 * *a13) >> 31)) >> 1)) << 48) - 0x5000000000000) >> 46);
            for (i = 640; i != 1280; i += 4)
            {
              v493 = a41[1];
              v494 = (*a41 + v491 + i);
              v496 = (v494 + 1) <= v493 && v494 <= v494 + 1 && v494 >= v490;
              v497 = (*a41 + i);
              v498 = v497 + 1;
              if (!v496 || v498 > v493 || v497 > v498 || v497 < v490)
              {
                goto LABEL_1366;
              }

              *v497 = *v494;
            }

            goto LABEL_1218;
          }

LABEL_1058:
          if (v414 == 8 || v414 == 5)
          {
            v157 = v113 == 0;
            v457 = v650;
            if (!v157)
            {
              v457 = 0;
            }

            if (v457)
            {
LABEL_1082:
              if ((v95 + 1) > a14 || v95 + 1 < v95 || (a15 + 1) > a16 || a15 + 1 < a15 || a17 && ((a17 + 1) > a18 || a17 + 1 < a17))
              {
                goto LABEL_1366;
              }

              if (v411 && ((v411 + 1) > v43 || v411 + 1 < v411))
              {
                goto LABEL_1366;
              }

              v620 = v411;
              v463 = v41;
              pit_Q_enc(a1, 0, v414, 8, v648, 0, *v95, *a15, a17, v620);
              v464 = a21[1];
              v465 = *a21 + 4 * v637;
              if (v464 < v465)
              {
                goto LABEL_1366;
              }

              v466 = a21[2];
              if (v466 > v465 || (v464 - v465) < 257)
              {
                goto LABEL_1366;
              }

              v467 = *a15;
              v468 = *a13;
              *__C = *a21 + 4 * v637;
              *&__C[8] = v464;
              *&__C[16] = v466;
              pred_lt4(__C, v465, v468, v467, 65, inter4_2, &post_dct_wind, 0x10u, 4);
              v421 = v463;
              v422 = v637;
              v469 = 0;
              v470 = a41[2];
              v471 = 4 * (5 * v637 / 2);
              v472 = v471 - ((((((((vcvts_n_f32_s32(*a15, 2uLL) * 5.0) * 0.5) + 5.0) + 0.5) + ((5 * *a13 + ((5 * *a13) >> 31)) >> 1)) << 48) - 0x5000000000000) >> 46);
              do
              {
                v473 = a41[1];
                v474 = (*a41 + v472 + v469);
                v476 = (v474 + 1) <= v473 && v474 <= v474 + 1 && v474 >= v470;
                v477 = (*a41 + v471 + v469);
                v478 = v477 + 1;
                if (!v476 || v478 > v473 || v477 > v478 || v477 < v470)
                {
                  goto LABEL_1366;
                }

                *v477 = *v474;
                v469 += 4;
              }

              while (v469 != 640);
              goto LABEL_1218;
            }

            *__C = *a21 + 4 * a4;
            *&__C[8] = *(a21 + 1);
            if ((a17 + 1) > a18)
            {
              goto LABEL_1366;
            }

            if (a17 + 1 < a17)
            {
              goto LABEL_1366;
            }

            if ((v42 + 1) > v43)
            {
              goto LABEL_1366;
            }

            if (v42 + 1 < v42)
            {
              goto LABEL_1366;
            }

            v458 = *a17;
            v459 = *v411;
            if (a15)
            {
              if ((a15 + 1) > a16 || a15 + 1 < a15)
              {
                goto LABEL_1366;
              }
            }

            v460 = 0x5C00220000;
          }

          else
          {
            *__C = *a21 + 4 * a4;
            *&__C[8] = *(a21 + 1);
            if ((a17 + 1) > a18)
            {
              goto LABEL_1366;
            }

            if (a17 + 1 < a17)
            {
              goto LABEL_1366;
            }

            if ((v42 + 1) > v43)
            {
              goto LABEL_1366;
            }

            if (v42 + 1 < v42)
            {
              goto LABEL_1366;
            }

            v458 = *a17;
            v459 = *v411;
            if (a15)
            {
              if ((a15 + 1) > a16 || a15 + 1 < a15)
              {
                goto LABEL_1366;
              }
            }

            v460 = 0xA000800000;
          }

          v461 = v41;
          v462 = pitch_fr4(__C, a28, a29, a26, a27, v458, v459, a15, v648, v460, SWORD1(v460), (v460 & 0xFFFFFFFFFFFFLL | 0x100000000000000uLL) >> 32, (v460 & 0xFFFFFFFFFFFFLL | 0x100000000000000uLL) >> 48, 64);
          v41 = v461;
          v43 = a20;
          v95 = a13;
          if ((a13 + 1) > a14 || a13 + 1 < a13)
          {
            goto LABEL_1366;
          }

          *a13 = v462;
          goto LABEL_1082;
        }

        if (a4 == 192)
        {
          if (v113 == 3)
          {
            *__C = *a21 + 768;
            *&__C[8] = *(a21 + 1);
            if ((a17 + 1) > a18 || a17 + 1 < a17 || (v42 + 1) > v43 || v42 + 1 < v42 || a15 && ((a15 + 1) > a16 || a15 + 1 < a15))
            {
              goto LABEL_1366;
            }

            v504 = v41;
            v505 = pitch_fr4(__C, a28, a29, a26, a27, *a17, *v42, a15, 64, 0, 34, 92, 256, 64);
            if ((a13 + 1) > a14)
            {
              goto LABEL_1366;
            }

            if (a13 + 1 < a13)
            {
              goto LABEL_1366;
            }

            *a13 = v505;
            if ((a15 + 1) > a16)
            {
              goto LABEL_1366;
            }

            if (a15 + 1 < a15)
            {
              goto LABEL_1366;
            }

            push_indice(a1, 95, 2 * (v505 - *a17) + (*a15 >> 1), v414);
            v506 = a21[1];
            v507 = *a21 + 768;
            if (v506 < v507)
            {
              goto LABEL_1366;
            }

            v508 = a21[2];
            if (v508 > v507 || (v506 - v507) < 257)
            {
              goto LABEL_1366;
            }

            v509 = *a15;
            v510 = *a13;
            *__C = *a21 + 768;
            *&__C[8] = v506;
            *&__C[16] = v508;
            pred_lt4(__C, v507, v510, v509, 65, inter4_2, &post_dct_wind, 0x10u, 4);
            v421 = v504;
            v422 = v637;
            v511 = a41[2];
            v512 = -((((((((vcvts_n_f32_s32(*a15, 2uLL) * 5.0) * 0.5) + 5.0) + 0.5) + ((5 * *a13 + ((5 * *a13) >> 31)) >> 1)) << 48) - 0x5000000000000) >> 46);
            for (j = 1920; j != 2560; j += 4)
            {
              v514 = a41[1];
              v515 = (*a41 + v512 + j);
              v517 = (v515 + 1) <= v514 && v515 <= v515 + 1 && v515 >= v511;
              v518 = (*a41 + j);
              v519 = v518 + 1;
              if (!v517 || v519 > v514 || v518 > v519 || v518 < v511)
              {
                goto LABEL_1366;
              }

              *v518 = *v515;
            }

            goto LABEL_1218;
          }

          if (v113 != 4)
          {
            goto LABEL_1058;
          }

          *__C = *a21 + 768;
          *&__C[8] = *(a21 + 1);
          if ((a17 + 1) > a18 || a17 + 1 < a17 || (v42 + 1) > v43 || v42 + 1 < v42 || a15 && ((a15 + 1) > a16 || a15 + 1 < a15))
          {
            goto LABEL_1366;
          }

          v450 = v41;
          v451 = pitch_fr4(__C, a28, a29, a26, a27, *a17, *v42, a15, 0, 0, 34, 92, 256, 64);
          if ((a13 + 1) > a14 || a13 + 1 < a13)
          {
            goto LABEL_1366;
          }

          *a13 = v451;
          v452 = *a7;
          if (*a7 + v451 <= 191)
          {
            *a13 = 192 - v452;
            if ((a15 + 1) > a16 || a15 + 1 < a15)
            {
              goto LABEL_1366;
            }

            *a15 = 0;
            v452 = *a7;
            v451 = *a13;
          }

          v453 = 192 - v452;
          v454 = (279 - 2 * v452);
          v455 = (a15 + 1) <= a16 && a15 + 1 >= a15;
          v456 = v455;
          if (v454 <= v451)
          {
            if (!v456)
            {
              goto LABEL_1366;
            }

            LOWORD(v452) = 2 * v452 - 279 + v451 + 2 * (v454 - v453);
            *a15 = 0;
          }

          else
          {
            if (!v456)
            {
              goto LABEL_1366;
            }

            v452 = ((*a15 + (*a15 >> 15)) << 16 >> 17) + 2 * (v451 - v453);
          }

          push_indice(a1, 95, v452, v414);
          v523 = a21[1];
          v524 = *a21 + 768;
          if (v523 < v524)
          {
            goto LABEL_1366;
          }

          v525 = a21[2];
          if (v525 > v524 || (v523 - v524) < 257)
          {
            goto LABEL_1366;
          }

          v526 = *a13;
          v527 = *a15;
          *__C = *a21 + 768;
          *&__C[8] = v523;
          *&__C[16] = v525;
          pred_lt4(__C, v524, v526, v527, 65, inter4_2, &post_dct_wind, 0x10u, 4);
          v421 = v450;
          v422 = v637;
          v528 = a41[2];
          v529 = -((((((((vcvts_n_f32_s32(*a15, 2uLL) * 5.0) * 0.5) + 5.0) + 0.5) + ((5 * *a13 + ((5 * *a13) >> 31)) >> 1)) << 48) - 0x5000000000000) >> 46);
          for (k = 1920; k != 2560; k += 4)
          {
            v531 = a41[1];
            v532 = (*a41 + v529 + k);
            v534 = (v532 + 1) <= v531 && v532 <= v532 + 1 && v532 >= v528;
            v535 = (*a41 + k);
            v536 = v535 + 1;
            if (!v534 || v536 > v531 || v535 > v536 || v535 < v528)
            {
              goto LABEL_1366;
            }

            *v535 = *v532;
          }
        }

        else
        {
          if (a4 != 128)
          {
            goto LABEL_1058;
          }

          if (v113 == 4)
          {
            if ((v95 + 1) > a14)
            {
              goto LABEL_1366;
            }

            if (v95 + 1 < v95)
            {
              goto LABEL_1366;
            }

            *v95 = 256;
            if ((a15 + 1) > a16)
            {
              goto LABEL_1366;
            }

            if (a15 + 1 < a15)
            {
              goto LABEL_1366;
            }

            *a15 = 0;
            *a6 = 0;
            v502 = (*a21 + 512);
            if (v502 < a21[2])
            {
              goto LABEL_1366;
            }

            *__C = 0;
            v503 = v41;
            vDSP_vfill(__C, v502, 1, 0x41uLL);
            v417 = v503;
            v418 = a41[2];
            v419 = (*a41 + 1280);
            goto LABEL_975;
          }

          if (v113 != 3)
          {
            goto LABEL_1058;
          }

          v423 = *a7;
          *__C = *a21 + 512;
          *&__C[8] = *(a21 + 1);
          if ((a17 + 1) > a18 || a17 + 1 < a17 || (v42 + 1) > v43 || v42 + 1 < v42 || a15 && ((a15 + 1) > a16 || a15 + 1 < a15))
          {
            goto LABEL_1366;
          }

          v424 = 128 - v423;
          v626 = v41;
          v425 = pitch_fr4(__C, a28, a29, a26, a27, *a17, *v42, a15, 0, 0, 128 - v423, 192, 256, 64);
          if ((a13 + 1) > a14 || a13 + 1 < a13)
          {
            goto LABEL_1366;
          }

          *a13 = v425;
          v426 = *a7;
          v427 = *a7 + v425;
          if (v427 <= 127)
          {
            *a13 = 128 - v426;
            if ((a15 + 1) > a16 || a15 + 1 < a15)
            {
              goto LABEL_1366;
            }

            *a15 = 0;
            LOWORD(v425) = *a13;
            v426 = *a7;
            v427 = *a7 + *a13;
          }

          if (v427 >= 192)
          {
            *a13 = 191 - v426;
            if ((a15 + 1) > a16 || a15 + 1 < a15)
            {
              goto LABEL_1366;
            }

            *a15 = 2;
            LOWORD(v425) = *a13;
          }

          v428 = (v425 - 8);
          if (v428 <= 34)
          {
            LOWORD(v428) = 34;
          }

          *a17 = v428;
          v429 = v428 + 15;
          *v411 = v429;
          if (v429 >= 232)
          {
            *v411 = 231;
            *a17 = 216;
          }

          if ((a15 + 1) > a16)
          {
            goto LABEL_1366;
          }

          if (a15 + 1 < a15)
          {
            goto LABEL_1366;
          }

          push_indice(a1, 95, 2 * (*a13 - v424) + ((*a15 + (*a15 >> 15)) >> 1), v414);
          v430 = a21[1];
          v431 = *a21 + 512;
          if (v430 < v431)
          {
            goto LABEL_1366;
          }

          v432 = a21[2];
          if (v432 > v431 || (v430 - v431) < 257)
          {
            goto LABEL_1366;
          }

          v433 = *a15;
          v434 = *a13;
          *__C = *a21 + 512;
          *&__C[8] = v430;
          *&__C[16] = v432;
          pred_lt4(__C, v431, v434, v433, 65, inter4_2, &post_dct_wind, 0x10u, 4);
          v421 = v626;
          v422 = v637;
          v435 = a41[2];
          v436 = -((((((((vcvts_n_f32_s32(*a15, 2uLL) * 5.0) * 0.5) + 5.0) + 0.5) + ((5 * *a13 + ((5 * *a13) >> 31)) >> 1)) << 48) - 0x5000000000000) >> 46);
          for (m = 1280; m != 1920; m += 4)
          {
            v438 = a41[1];
            v439 = (*a41 + v436 + m);
            v441 = (v439 + 1) <= v438 && v439 <= v439 + 1 && v439 >= v435;
            v442 = (*a41 + m);
            v443 = v442 + 1;
            if (!v441 || v443 > v438 || v442 > v443 || v442 < v435)
            {
              goto LABEL_1366;
            }

            *v442 = *v439;
          }
        }

LABEL_1218:
        if (*a6)
        {
          if ((a29 - a28) < 253)
          {
            goto LABEL_1366;
          }

          if (a29 < a28)
          {
            goto LABEL_1366;
          }

          if (a33 < a32)
          {
            goto LABEL_1366;
          }

          if ((a33 - a32) < 21)
          {
            goto LABEL_1366;
          }

          v540 = v421;
          gp_clip(v421, a9, a10, v422, 4u, a28, a32);
          if ((a38 + 1) > a39)
          {
            goto LABEL_1366;
          }

          if (a38 + 1 < a38)
          {
            goto LABEL_1366;
          }

          *a38 = v541;
          if (a34)
          {
            if ((a34 + 1) > a35 || a34 + 1 < a34)
            {
              goto LABEL_1366;
            }
          }

          *__C = *a21;
          *&__C[16] = a21[2];
          v542 = lp_filt_exc_enc(1, v540, 0, 4u, v637, __C, a26, a27, a28, a29, a22, a23, a30, a31, 64, 256, a36, a37, v541, a34, &v653);
          v544 = v637;
          v543 = a13;
          if (v653 == 2)
          {
            push_indice(a1, 95, v542, 1);
            v544 = v637;
            v543 = a13;
          }
        }

        else
        {
          if (a31 < a30)
          {
            goto LABEL_1366;
          }

          if (a29 < a28)
          {
            goto LABEL_1366;
          }

          if (a29 - a28 < 0x100)
          {
            goto LABEL_1366;
          }

          if (a31 - a30 <= 0xFF)
          {
            goto LABEL_1366;
          }

          memmove(a30, a28, 0x100uLL);
          if (a30 + 256 < a30)
          {
            goto LABEL_1366;
          }

          v545 = a36 + 1;
          v544 = v637;
          v543 = a13;
          if ((a36 + 1) > a37)
          {
            goto LABEL_1366;
          }

          if (v545 < a36)
          {
            goto LABEL_1366;
          }

          *a36 = 0.0;
          if ((a36 + 2) > a37)
          {
            goto LABEL_1366;
          }

          if (v545 > a36 + 2)
          {
            goto LABEL_1366;
          }

          *v545 = 0.0;
          if ((a38 + 1) > a39 || a38 + 1 < a38)
          {
            goto LABEL_1366;
          }

          *a38 = 0;
        }

        if ((v543 + 1) > a14)
        {
          goto LABEL_1366;
        }

        if (v543 + 1 < v543)
        {
          goto LABEL_1366;
        }

        if ((a15 + 1) > a16)
        {
          goto LABEL_1366;
        }

        if (a15 + 1 < a15)
        {
          goto LABEL_1366;
        }

        v546 = *a40;
        v547 = *a40 + 24;
        if (v547 > a40[1])
        {
          goto LABEL_1366;
        }

        if (v546 > v547)
        {
          goto LABEL_1366;
        }

        v548 = a40[2];
        if (v546 < v548)
        {
          goto LABEL_1366;
        }

        v549 = *v546;
        v550 = *v546 + 4;
        if (v550 > *(v546 + 8) || v549 > v550 || v549 < *(v546 + 16))
        {
          goto LABEL_1366;
        }

        *v549 = vcvts_n_f32_s32(*a15, 2uLL) + *v543;
        if (v544 == 192 && *v636 >= 128)
        {
          v551 = *a40;
          v552 = *a40 + 24;
          if (v552 > a40[1])
          {
            goto LABEL_1366;
          }

          if (v551 > v552)
          {
            goto LABEL_1366;
          }

          if (v551 < v548)
          {
            goto LABEL_1366;
          }

          *v551 -= 12;
          v553 = *a40;
          v554 = *a40 + 24;
          if (v554 > a40[1])
          {
            goto LABEL_1366;
          }

          if (v553 > v554)
          {
            goto LABEL_1366;
          }

          v555 = a40[2];
          if (v553 < v555)
          {
            goto LABEL_1366;
          }

          v556 = *v553;
          v557 = *v553 + 4;
          if (v557 > *(v553 + 8))
          {
            goto LABEL_1366;
          }

          if (v556 > v557)
          {
            goto LABEL_1366;
          }

          if (v556 < *(v553 + 16))
          {
            goto LABEL_1366;
          }

          *v556 = vcvts_n_f32_s32(*a15, 2uLL) + *v543;
          v558 = *a40;
          v559 = *a40 + 24;
          if (v559 > a40[1])
          {
            goto LABEL_1366;
          }

          if (v558 > v559)
          {
            goto LABEL_1366;
          }

          if (v558 < v555)
          {
            goto LABEL_1366;
          }

          *v558 += 4;
          v560 = *a40;
          v561 = *a40 + 24;
          if (v561 > a40[1])
          {
            goto LABEL_1366;
          }

          if (v560 > v561)
          {
            goto LABEL_1366;
          }

          v562 = a40[2];
          if (v560 < v562)
          {
            goto LABEL_1366;
          }

          v563 = *v560;
          v564 = *v560 + 4;
          if (v564 > *(v560 + 8))
          {
            goto LABEL_1366;
          }

          if (v563 > v564)
          {
            goto LABEL_1366;
          }

          if (v563 < *(v560 + 16))
          {
            goto LABEL_1366;
          }

          *v563 = vcvts_n_f32_s32(*a15, 2uLL) + *v543;
          v565 = *a40;
          v566 = *a40 + 24;
          if (v566 > a40[1])
          {
            goto LABEL_1366;
          }

          if (v565 > v566)
          {
            goto LABEL_1366;
          }

          if (v565 < v562)
          {
            goto LABEL_1366;
          }

          *v565 += 4;
          v567 = *a40;
          v568 = *a40 + 24;
          if (v568 > a40[1])
          {
            goto LABEL_1366;
          }

          if (v567 > v568)
          {
            goto LABEL_1366;
          }

          v569 = a40[2];
          if (v567 < v569)
          {
            goto LABEL_1366;
          }

          v570 = *v567;
          v571 = *v567 + 4;
          if (v571 > *(v567 + 8))
          {
            goto LABEL_1366;
          }
        }

        else
        {
          v572 = *v636;
          if (v544 == 128 && v572 == 64)
          {
            v573 = *a40;
            v574 = *a40 + 24;
            if (v574 > a40[1])
            {
              goto LABEL_1366;
            }

            if (v573 > v574)
            {
              goto LABEL_1366;
            }

            if (v573 < v548)
            {
              goto LABEL_1366;
            }

            *v573 -= 8;
            v575 = *a40;
            v576 = *a40 + 24;
            if (v576 > a40[1])
            {
              goto LABEL_1366;
            }

            if (v575 > v576)
            {
              goto LABEL_1366;
            }

            v577 = a40[2];
            if (v575 < v577)
            {
              goto LABEL_1366;
            }

            v578 = *v575;
            v579 = *v575 + 4;
            if (v579 > *(v575 + 8))
            {
              goto LABEL_1366;
            }

            if (v578 > v579)
            {
              goto LABEL_1366;
            }

            if (v578 < *(v575 + 16))
            {
              goto LABEL_1366;
            }

            *v578 = vcvts_n_f32_s32(*a15, 2uLL) + *v543;
            v580 = *a40;
            v581 = *a40 + 24;
            if (v581 > a40[1])
            {
              goto LABEL_1366;
            }

            if (v580 > v581)
            {
              goto LABEL_1366;
            }

            if (v580 < v577)
            {
              goto LABEL_1366;
            }

            *v580 += 4;
            v567 = *a40;
            v582 = *a40 + 24;
            if (v582 > a40[1])
            {
              goto LABEL_1366;
            }

            if (v567 > v582)
            {
              goto LABEL_1366;
            }

            v569 = a40[2];
            if (v567 < v569)
            {
              goto LABEL_1366;
            }

            v570 = *v567;
            v571 = *v567 + 4;
            if (v571 > *(v567 + 8))
            {
              goto LABEL_1366;
            }
          }

          else
          {
            v583 = !v650;
            if (v572 != 2)
            {
              v583 = 1;
            }

            if (v583)
            {
              if (v544 != 128 || v572 != 3)
              {
                if (v544 != 192 || v572 != 4)
                {
                  return;
                }

                v600 = *a40;
                v601 = *a40 + 24;
                if (v601 > a40[1])
                {
                  goto LABEL_1366;
                }

                if (v600 > v601)
                {
                  goto LABEL_1366;
                }

                if (v600 < v548)
                {
                  goto LABEL_1366;
                }

                *v600 -= 12;
                v602 = *a40;
                v603 = *a40 + 24;
                if (v603 > a40[1])
                {
                  goto LABEL_1366;
                }

                if (v602 > v603)
                {
                  goto LABEL_1366;
                }

                v604 = a40[2];
                if (v602 < v604)
                {
                  goto LABEL_1366;
                }

                v605 = *v602;
                v606 = *v602 + 4;
                if (v606 > *(v602 + 8))
                {
                  goto LABEL_1366;
                }

                if (v605 > v606)
                {
                  goto LABEL_1366;
                }

                if (v605 < *(v602 + 16))
                {
                  goto LABEL_1366;
                }

                *v605 = vcvts_n_f32_s32(*a15, 2uLL) + *v543;
                v607 = *a40;
                v608 = *a40 + 24;
                if (v608 > a40[1])
                {
                  goto LABEL_1366;
                }

                if (v607 > v608)
                {
                  goto LABEL_1366;
                }

                if (v607 < v604)
                {
                  goto LABEL_1366;
                }

                *v607 += 4;
                v609 = *a40;
                v610 = *a40 + 24;
                if (v610 > a40[1])
                {
                  goto LABEL_1366;
                }

                if (v609 > v610)
                {
                  goto LABEL_1366;
                }

                v611 = a40[2];
                if (v609 < v611)
                {
                  goto LABEL_1366;
                }

                v612 = *v609;
                v613 = *v609 + 4;
                if (v613 > *(v609 + 8))
                {
                  goto LABEL_1366;
                }

                if (v612 > v613)
                {
                  goto LABEL_1366;
                }

                if (v612 < *(v609 + 16))
                {
                  goto LABEL_1366;
                }

                *v612 = vcvts_n_f32_s32(*a15, 2uLL) + *v543;
                v614 = *a40;
                v615 = *a40 + 24;
                if (v615 > a40[1])
                {
                  goto LABEL_1366;
                }

                if (v614 > v615)
                {
                  goto LABEL_1366;
                }

                if (v614 < v611)
                {
                  goto LABEL_1366;
                }

                *v614 += 4;
                v616 = *a40;
                v617 = *a40 + 24;
                if (v617 > a40[1])
                {
                  goto LABEL_1366;
                }

                if (v616 > v617)
                {
                  goto LABEL_1366;
                }

                v569 = a40[2];
                if (v616 < v569)
                {
                  goto LABEL_1366;
                }

                v618 = *v616;
                v619 = *v616 + 4;
                if (v619 > *(v616 + 8))
                {
                  goto LABEL_1366;
                }

                if (v618 > v619)
                {
                  goto LABEL_1366;
                }

                if (v618 < *(v616 + 16))
                {
                  goto LABEL_1366;
                }

                *v618 = vcvts_n_f32_s32(*a15, 2uLL) + *v543;
                v587 = *a40;
                v588 = *a40 + 24;
                if (v588 > a40[1])
                {
                  goto LABEL_1366;
                }

                goto LABEL_1312;
              }

              v589 = *a40;
              v590 = *a40 + 24;
              if (v590 > a40[1])
              {
                goto LABEL_1366;
              }

              if (v589 > v590)
              {
                goto LABEL_1366;
              }

              if (v589 < v548)
              {
                goto LABEL_1366;
              }

              *v589 -= 8;
              v591 = *a40;
              v592 = *a40 + 24;
              if (v592 > a40[1])
              {
                goto LABEL_1366;
              }

              if (v591 > v592)
              {
                goto LABEL_1366;
              }

              v593 = a40[2];
              if (v591 < v593)
              {
                goto LABEL_1366;
              }

              v594 = *v591;
              v595 = *v591 + 4;
              if (v595 > *(v591 + 8))
              {
                goto LABEL_1366;
              }

              if (v594 > v595)
              {
                goto LABEL_1366;
              }

              if (v594 < *(v591 + 16))
              {
                goto LABEL_1366;
              }

              *v594 = vcvts_n_f32_s32(*a15, 2uLL) + *v543;
              v596 = *a40;
              v597 = *a40 + 24;
              if (v597 > a40[1])
              {
                goto LABEL_1366;
              }

              if (v596 > v597)
              {
                goto LABEL_1366;
              }

              if (v596 < v593)
              {
                goto LABEL_1366;
              }

              *v596 += 4;
              v567 = *a40;
              v598 = *a40 + 24;
              if (v598 > a40[1])
              {
                goto LABEL_1366;
              }

              if (v567 > v598)
              {
                goto LABEL_1366;
              }

              v569 = a40[2];
              if (v567 < v569)
              {
                goto LABEL_1366;
              }

              v570 = *v567;
              v599 = *v567 + 4;
              if (v599 > *(v567 + 8) || v570 > v599)
              {
                goto LABEL_1366;
              }

LABEL_1310:
              if (v570 < *(v567 + 16))
              {
                goto LABEL_1366;
              }

              *v570 = vcvts_n_f32_s32(*a15, 2uLL) + *v543;
              v587 = *a40;
              v588 = *a40 + 24;
              if (v588 > a40[1])
              {
                goto LABEL_1366;
              }

LABEL_1312:
              if (v587 > v588 || v587 < v569)
              {
                goto LABEL_1366;
              }

              *v587 += 4;
              return;
            }

            v584 = *a40;
            v585 = *a40 + 24;
            if (v585 > a40[1])
            {
              goto LABEL_1366;
            }

            if (v584 > v585)
            {
              goto LABEL_1366;
            }

            if (v584 < v548)
            {
              goto LABEL_1366;
            }

            *v584 -= 4;
            v567 = *a40;
            v586 = *a40 + 24;
            if (v586 > a40[1])
            {
              goto LABEL_1366;
            }

            if (v567 > v586)
            {
              goto LABEL_1366;
            }

            v569 = a40[2];
            if (v567 < v569)
            {
              goto LABEL_1366;
            }

            v570 = *v567;
            v571 = *v567 + 4;
            if (v571 > *(v567 + 8))
            {
              goto LABEL_1366;
            }
          }
        }

        if (v570 > v571)
        {
          goto LABEL_1366;
        }

        goto LABEL_1310;
      }

      v130 = *a7;
      v131 = (64 - *a7);
      if (v131 <= 34)
      {
        LOWORD(v131) = 34;
      }

      if (v130 >= 34)
      {
        LOWORD(v131) = 34;
      }

      v646 = v131;
      *__C = *a21 + 256;
      *&__C[8] = *(a21 + 1);
      if ((a17 + 1) > a18)
      {
        goto LABEL_1366;
      }

      if (a17 + 1 < a17)
      {
        goto LABEL_1366;
      }

      v132 = v42;
      if ((v42 + 1) > a20 || v42 + 1 < v42 || a15 && ((a15 + 1) > a16 || a15 + 1 < a15))
      {
        goto LABEL_1366;
      }

      v133 = v41;
      v134 = pitch_fr4(__C, a28, a29, a26, a27, *a17, *v42, a15, v648, 0, v131, v130 + 2 * v131, 256, 64);
      v41 = v133;
      v43 = a20;
      a4 = v637;
      v95 = a13;
      if ((a13 + 1) > a14)
      {
        goto LABEL_1366;
      }

      if (a13 + 1 < a13)
      {
        goto LABEL_1366;
      }

      *a13 = v134;
      if ((a15 + 1) > a16 || a15 + 1 < a15)
      {
        goto LABEL_1366;
      }

      v135 = a41[2];
      v136 = -((((((((vcvts_n_f32_s32(*a15, 2uLL) * 5.0) * 0.5) + 5.0) + 0.5) + ((5 * v134 + ((5 * v134) >> 31)) >> 1)) << 48) - 0x5000000000000) >> 46);
      for (n = 640; n != 1280; n += 4)
      {
        v138 = a41[1];
        v139 = (*a41 + v136 + n);
        v141 = (v139 + 1) <= v138 && v139 <= v139 + 1 && v139 >= v135;
        v142 = (*a41 + n);
        v143 = v142 + 1;
        if (!v141 || v143 > v138 || v142 > v143 || v142 < v135)
        {
          goto LABEL_1366;
        }

        *v142 = *v139;
      }

      v147 = *a7;
      if (128 - v147 >= v134)
      {
        LOWORD(v113) = *v636;
        v42 = v132;
        if (*v636)
        {
LABEL_283:
          v650 = 1;
          goto LABEL_284;
        }

        LOWORD(v113) = 2;
      }

      else
      {
        if (v147 + v134 <= 191)
        {
          LOWORD(v113) = 3;
        }

        else
        {
          LOWORD(v113) = 4;
        }

        v42 = v132;
      }

      *v636 = v113;
      goto LABEL_283;
    }

    if (a4 <= 128)
    {
      v127 = a11 + 1;
      if (a4 == 128)
      {
        if (v127 < a11)
        {
          goto LABEL_1366;
        }

        if ((a11 + 2) > a12)
        {
          goto LABEL_1366;
        }

        if (v127 > a11 + 2)
        {
          goto LABEL_1366;
        }

        v128 = *v127;
        if (a17)
        {
          if ((a17 + 1) > a18 || a17 + 1 < a17)
          {
            goto LABEL_1366;
          }
        }

        if (v42 && ((v42 + 1) > a20 || v42 + 1 < v42))
        {
          goto LABEL_1366;
        }

        v129 = (v128 - 8);
        if (v129 <= 20)
        {
          *a17 = 21;
          *v42 = 36;
          goto LABEL_344;
        }

        *a17 = v129;
        v149 = v128 + 7;
      }

      else
      {
        if (v127 > a12 || v127 < a11 || a17 && ((a17 + 1) > a18 || a17 + 1 < a17) || v42 && ((v42 + 1) > a20 || v42 + 1 < v42))
        {
          goto LABEL_1366;
        }

        v148 = ((*a11 << (*a11 < 42)) - 8);
        if (v148 <= 42)
        {
          LOWORD(v148) = 42;
        }

        *a17 = v148;
        v149 = v148 + 15;
      }

      *v42 = v149;
      if (v149 >= 290)
      {
        *v42 = 289;
        *a17 = 274;
      }
    }

LABEL_344:
    if (a4 < 0)
    {
      v162 = 1;
    }

    else
    {
      v162 = 5;
    }

    if (v41 > 28999)
    {
      if (v41 > 30399)
      {
        switch(v41)
        {
          case 30400:
            v163 = v42;
            v164 = 51;
            break;
          case 32000:
            v163 = v42;
            v164 = 58;
            break;
          case 48000:
            v163 = v42;
            v164 = 65;
            break;
          default:
            goto LABEL_771;
        }
      }

      else
      {
        switch(v41)
        {
          case 29000:
            v163 = v42;
            v164 = 30;
            break;
          case 29200:
            v163 = v42;
            v164 = 37;
            break;
          case 30200:
            v163 = v42;
            v164 = 44;
            break;
          default:
LABEL_771:
            v163 = v42;
            if (v41 == 64000)
            {
              v164 = 72;
            }

            else
            {
              v164 = -5;
            }

            break;
        }
      }

LABEL_774:
      v344 = *v636;
      v345 = v344 == 256;
      v346 = (v344 >> 6) | (v344 << 10);
      v347 = 4 * v345;
      if ((v346 & 0xFFFC) != 0)
      {
        v346 = v347;
      }

      else
      {
        v346 = v346;
      }

      v652 = a4 + ((a4 >> 25) & 0x3F);
      v348 = &ACB_bits_16kHz_tbl[2 * (v164 + v346) * v162 + 2 * (v652 >> 6)];
      v349 = v348 + 2;
      if (v348 < ACB_bits_16kHz_tbl || v349 > FCB_bits_16kHz_tbl || v348 > v349)
      {
        goto LABEL_1366;
      }

      v352 = *v348;
      switch(v352)
      {
        case 6:
          *__C = *a21 + 4 * a4;
          *&__C[8] = *(a21 + 1);
          if ((a17 + 1) > a18 || a17 + 1 < a17 || (v163 + 1) > a20 || v163 + 1 < v163 || a15 && ((a15 + 1) > a16 || a15 + 1 < a15))
          {
            goto LABEL_1366;
          }

          v625 = v41;
          v361 = a4 > 127;
          v362 = pitch_fr4(__C, a28, a29, a26, a27, *a17, *v163, a15, 64, a4 > 127, 88, 130, a3, 64);
          if ((a13 + 1) > a14)
          {
            goto LABEL_1366;
          }

          if (a13 + 1 < a13)
          {
            goto LABEL_1366;
          }

          *a13 = v362;
          if ((a15 + 1) > a16 || a15 + 1 < a15)
          {
            goto LABEL_1366;
          }

          push_indice(a1, 95, *a15 + 4 * (v362 - *a17), 6);
          limit_T0(320, 8, 64, v361, *a13, *a15, a17, v163);
          v94 = a37;
          v93 = a36;
          v96 = a34;
          v97 = a38;
          v41 = v625;
          break;
        case 8:
          *__C = *a21 + 4 * a4;
          *&__C[8] = *(a21 + 1);
          if ((a17 + 1) > a18 || a17 + 1 < a17 || (v163 + 1) > a20 || v163 + 1 < v163 || a15 && ((a15 + 1) > a16 || a15 + 1 < a15))
          {
            goto LABEL_1366;
          }

          v356 = v41;
          v357 = pitch_fr4(__C, a28, a29, a26, a27, *a17, *v163, a15, 0, a4 > 127, 83, 128, a3, 64);
          if ((a13 + 1) > a14 || a13 + 1 < a13)
          {
            goto LABEL_1366;
          }

          *a13 = v357;
          if (*v163 >= 129)
          {
            *a13 = 128;
            if ((a15 + 1) > a16 || a15 + 1 < a15)
            {
              goto LABEL_1366;
            }

            *a15 = 0;
            v357 = *a13;
          }

          v359 = (a15 + 1) <= a16 && a15 + 1 >= a15;
          if (v357 > 82)
          {
            if (!v359)
            {
              goto LABEL_1366;
            }

            v360 = 2 * v357 + (*a15 >> 1) - 2;
          }

          else
          {
            if (!v359)
            {
              goto LABEL_1366;
            }

            LOWORD(v360) = *a15 + 4 * v357 - 168;
          }

          push_indice(a1, 95, v360, 8);
          a4 = v637;
          v95 = a13;
          v41 = v356;
          v97 = a38;
          v94 = a37;
          v96 = a34;
          v93 = a36;
          goto LABEL_837;
        case 10:
          *__C = *a21 + 4 * a4;
          *&__C[8] = *(a21 + 1);
          if ((a17 + 1) > a18 || a17 + 1 < a17 || (v163 + 1) > a20 || v163 + 1 < v163 || a15 && ((a15 + 1) > a16 || a15 + 1 < a15))
          {
            goto LABEL_1366;
          }

          v353 = v41;
          v354 = a4 > 127;
          v355 = pitch_fr4(__C, a28, a29, a26, a27, *a17, *v163, a15, 0, a4 > 127, 264, 289, a3, 64);
          if ((a13 + 1) > a14)
          {
            goto LABEL_1366;
          }

          if (a13 + 1 < a13)
          {
            goto LABEL_1366;
          }

          *a13 = v355;
          if ((a15 + 1) > a16 || a15 + 1 < a15)
          {
            goto LABEL_1366;
          }

          pit16k_Q_enc(a1, 10, v354, v355, *a15, a17, v163);
          v94 = a37;
          v93 = a36;
          v96 = a34;
          v97 = a38;
          v41 = v353;
          break;
        default:
          if (a4 != 64)
          {
            goto LABEL_863;
          }

LABEL_837:
          if ((v95 + 1) > a14 || v95 + 1 < v95)
          {
            goto LABEL_1366;
          }

          if (*v95 == 128)
          {
            if ((v96 + 1) > a35)
            {
              goto LABEL_1366;
            }

            if (v96 + 1 < v96)
            {
              goto LABEL_1366;
            }

            *v96 = 0.0;
            if ((v97 + 1) > a39)
            {
              goto LABEL_1366;
            }

            if (v97 + 1 < v97)
            {
              goto LABEL_1366;
            }

            *v97 = 0;
            v363 = v93 + 1;
            if ((v93 + 1) > v94)
            {
              goto LABEL_1366;
            }

            if (v363 < v93)
            {
              goto LABEL_1366;
            }

            *v93 = 0.01;
            v364 = v93 + 2;
            if (v364 > v94)
            {
              goto LABEL_1366;
            }

            if (v363 > v364)
            {
              goto LABEL_1366;
            }

            *v363 = 0.01;
            *a6 = 0;
            v365 = (*a21 + 256);
            if (v365 < a21[2])
            {
              goto LABEL_1366;
            }

            *__C = 0;
            vDSP_vfill(__C, v365, 1, 0x41uLL);
            push_indice(a1, 95, 0, 1);
            if (a31 < a30)
            {
              goto LABEL_1366;
            }

            if (a29 < a28)
            {
              goto LABEL_1366;
            }

            if (a29 - a28 < 0x100)
            {
              goto LABEL_1366;
            }

            if (a31 - a30 <= 0xFF)
            {
              goto LABEL_1366;
            }

            memmove(a30, a28, 0x100uLL);
            if (a30 + 256 < a30)
            {
              goto LABEL_1366;
            }

            *__C = 0;
            vDSP_vfill(__C, a22, 1, 0x40uLL);
            v366 = (*a41 + 512);
            if (v366 < a41[2])
            {
              goto LABEL_1366;
            }

            *__C = 0;
            vDSP_vfill(__C, v366, 1, 0x80uLL);
          }

          else
          {
LABEL_863:
            if ((v95 + 1) > a14)
            {
              goto LABEL_1366;
            }

            if (v95 + 1 < v95)
            {
              goto LABEL_1366;
            }

            if ((a15 + 1) > a16)
            {
              goto LABEL_1366;
            }

            if (a15 + 1 < a15)
            {
              goto LABEL_1366;
            }

            v367 = a21[1];
            v368 = *a21 + 4 * a4;
            if (v367 < v368)
            {
              goto LABEL_1366;
            }

            v369 = a21[2];
            if (v369 > v368 || (v367 - v368) < 257)
            {
              goto LABEL_1366;
            }

            v370 = v41;
            v371 = *v95;
            v372 = *a15;
            *__C = v368;
            *&__C[8] = v367;
            *&__C[16] = v369;
            pred_lt4(__C, v368, v371, v372, 65, inter4_2, &post_dct_wind, 0x10u, 4);
            v373 = a41[2];
            v374 = 8 * v637;
            v375 = 2 * v637 - (((*a15 * 0.5) + 4.0) + 0.5) - 2 * *a13;
            v376 = 128;
            do
            {
              v377 = a41[1];
              v378 = *a41 + 4 * v375;
              v379 = (v378 + 16);
              v380 = v378 + 20;
              v382 = v380 <= v377 && v379 <= v380 && v379 >= v373;
              v383 = (*a41 + v374);
              v384 = v383 + 1;
              if (!v382 || v384 > v377 || v383 > v384 || v383 < v373)
              {
                goto LABEL_1366;
              }

              *v383 = *v379;
              v374 += 4;
              ++v375;
              --v376;
            }

            while (v376);
            if ((a29 - a28) < 253)
            {
              goto LABEL_1366;
            }

            if (a29 < a28)
            {
              goto LABEL_1366;
            }

            if (a33 < a32)
            {
              goto LABEL_1366;
            }

            if ((a33 - a32) < 21)
            {
              goto LABEL_1366;
            }

            gp_clip(v370, a9, a10, v637, 4u, a28, a32);
            if ((a38 + 1) > a39)
            {
              goto LABEL_1366;
            }

            if (a38 + 1 < a38)
            {
              goto LABEL_1366;
            }

            *a38 = v388;
            if (a34)
            {
              if ((a34 + 1) > a35 || a34 + 1 < a34)
              {
                goto LABEL_1366;
              }
            }

            *__C = *a21;
            *&__C[16] = a21[2];
            v389 = lp_filt_exc_enc(1, v370, 0, 4u, v637, __C, a26, a27, a28, a29, a22, a23, a30, a31, 64, a3, a36, a37, v388, a34, &v653);
            if (v653 == 2)
            {
              push_indice(a1, 95, v389, 1);
            }

            *a6 = 1;
          }

          if ((a15 + 1) > a16)
          {
            goto LABEL_1366;
          }

          if (a15 + 1 < a15)
          {
            goto LABEL_1366;
          }

          v390 = *a40;
          v391 = *a40 + 24;
          if (v391 > a40[1])
          {
            goto LABEL_1366;
          }

          if (v390 > v391)
          {
            goto LABEL_1366;
          }

          v392 = a40[2];
          if (v390 < v392)
          {
            goto LABEL_1366;
          }

          v393 = *v390;
          v394 = *v390 + 4;
          if (v394 > *(v390 + 8) || v393 > v394 || v393 < *(v390 + 16))
          {
            goto LABEL_1366;
          }

          *v393 = vcvts_n_f32_s32(*a15, 2uLL) + *a13;
          if (v637 - *v636 == 64 || v637 == 128 && !*v636)
          {
            v395 = *a40;
            v396 = *a40 + 24;
            if (v396 > a40[1] || v395 > v396 || v395 < v392)
            {
              goto LABEL_1366;
            }

            v397 = v652 >> 6;
            *v395 += 4 * -v397;
            if (v637 >= 64)
            {
              v398 = 0;
              do
              {
                v399 = *a40;
                v400 = a40[2];
                v401 = *a40 + 24;
                if (v401 > a40[1] || v399 > v401 || v399 < v400)
                {
                  goto LABEL_1366;
                }

                v404 = *v399;
                v405 = *(v399 + 8);
                v406 = *(v399 + 16);
                v407 = (v404 + 1) > v405 || v404 > v404 + 1;
                if (v407 || v404 < v406)
                {
                  goto LABEL_1366;
                }

                *v404 = vcvts_n_f32_s32(*a15, 2uLL) + *a13;
                v409 = *a40;
                v410 = *a40 + 24;
                if (v410 > a40[1] || v409 > v410 || v409 < v400)
                {
                  goto LABEL_1366;
                }

                *v409 += 4;
                ++v398;
              }

              while (v397 > v398);
            }
          }

          return;
      }

      a4 = v637;
      v95 = a13;
      goto LABEL_837;
    }

    if (v41 <= 16399)
    {
      if (v41 == 8000)
      {
        v163 = v42;
        v164 = 2;
        goto LABEL_774;
      }

      if (v41 != 14800)
      {
        goto LABEL_771;
      }
    }

    else if (v41 != 16400)
    {
      if (v41 == 22600)
      {
        v163 = v42;
        v164 = 16;
      }

      else
      {
        if (v41 != 24400)
        {
          goto LABEL_771;
        }

        v163 = v42;
        v164 = 23;
      }

      goto LABEL_774;
    }

    v163 = v42;
    v164 = 9;
    goto LABEL_774;
  }

  v629 = v42;
  v103 = *a41;
  v104 = a41[2];
  if (a3 == 256)
  {
    v105 = (v103 - 2308);
    if (v103 - 2308 < v104)
    {
      goto LABEL_1366;
    }

    v106 = a17;
    v107 = v41;
    v108 = 577;
  }

  else
  {
    v105 = (v103 - 2312);
    if (v103 - 2312 < v104)
    {
      goto LABEL_1366;
    }

    v106 = a17;
    v107 = v41;
    v108 = 578;
  }

  *__C = 0;
  vDSP_vfill(__C, v105, 1, v108);
  v120 = v637;
  v119 = a13;
  if (*a41 < a41[2])
  {
    goto LABEL_1366;
  }

  v121 = a21[1];
  v122 = a21[2];
  v123 = *a7;
  v630 = *a21;
  v638 = (*a21 + 4 * v637);
  v631 = v122;
  v632 = v121;
  v623 = *a41;
  v624 = v107;
  v628 = v106;
  v622 = a41[1];
  if (a3 != 256)
  {
    v125 = 5;
    if (v637 < 0)
    {
      v125 = 1;
    }

    if (v107 > 28999)
    {
      if (v107 > 30399)
      {
        switch(v107)
        {
          case 30400:
            v126 = 51;
            goto LABEL_313;
          case 32000:
            v126 = 58;
            goto LABEL_313;
          case 48000:
            v126 = 65;
            goto LABEL_313;
        }
      }

      else
      {
        switch(v107)
        {
          case 29000:
            v126 = 30;
            goto LABEL_313;
          case 29200:
            v126 = 37;
            goto LABEL_313;
          case 30200:
            v126 = 44;
LABEL_313:
            v151 = *v636;
            v152 = v151 == 256;
            LODWORD(v153) = (v151 >> 6) | (v151 << 10);
            v154 = 4 * v152;
            if ((v153 & 0xFFFC) != 0)
            {
              v153 = v154;
            }

            else
            {
              v153 = v153;
            }

            v155 = &ACB_bits_16kHz_tbl[2 * (v153 + v126) * v125 + 2 * (((v637 + ((v637 >> 25) & 0x3F)) << 16) >> 22)];
            if (v155 < ACB_bits_16kHz_tbl || v155 + 2 > FCB_bits_16kHz_tbl || v155 > v155 + 2 || (a15 + 1) > a16 || a15 + 1 < a15)
            {
              goto LABEL_1366;
            }

            v156 = *v155;
            *a15 = 0;
            if (v156 == 6)
            {
              *__C = v638;
              *&__C[8] = v121;
              *&__C[16] = v122;
              if ((v106 + 1) > a18)
              {
                goto LABEL_1366;
              }

              if (v106 + 1 < v106)
              {
                goto LABEL_1366;
              }

              if ((v629 + 1) > a20)
              {
                goto LABEL_1366;
              }

              if (v629 + 1 < v629)
              {
                goto LABEL_1366;
              }

              v161 = pitch_fr4(__C, a28, a29, a26, a27, *v106, *v629, a15, 0, 0, 42, 64, 320, 64);
              v122 = v631;
              v120 = v637;
              if ((a13 + 1) > a14 || a13 + 1 < a13)
              {
                goto LABEL_1366;
              }

              *a13 = v161;
              if (v161 >= 65)
              {
                *a13 = 64;
                *a15 = 0;
              }

              v160 = 6;
            }

            else
            {
              v627 = v156;
              v157 = v156 == 10;
              v158 = v638;
              if (!v157)
              {
                goto LABEL_449;
              }

              *__C = v638;
              *&__C[8] = v121;
              *&__C[16] = v122;
              if ((v106 + 1) > a18)
              {
                goto LABEL_1366;
              }

              if (v106 + 1 < v106)
              {
                goto LABEL_1366;
              }

              if ((v629 + 1) > a20)
              {
                goto LABEL_1366;
              }

              if (v629 + 1 < v629)
              {
                goto LABEL_1366;
              }

              v159 = pitch_fr4(__C, a28, a29, a26, a27, *v106, *v629, a15, 0, 1, 264, 289, 320, 64);
              v122 = v631;
              v120 = v637;
              if ((a13 + 1) > a14 || a13 + 1 < a13)
              {
                goto LABEL_1366;
              }

              *a13 = v159;
              v160 = 10;
            }

            v627 = v160;
            goto LABEL_448;
        }
      }

      goto LABEL_311;
    }

    if (v107 <= 16399)
    {
      if (v107 == 8000)
      {
        v126 = 2;
        goto LABEL_313;
      }

      if (v107 != 14800)
      {
        goto LABEL_311;
      }
    }

    else if (v107 != 16400)
    {
      if (v107 == 22600)
      {
        v126 = 16;
        goto LABEL_313;
      }

      if (v107 == 24400)
      {
        v126 = 23;
        goto LABEL_313;
      }

LABEL_311:
      v126 = 72;
      if (v107 != 64000)
      {
        v126 = -5;
      }

      goto LABEL_313;
    }

    v126 = 9;
    goto LABEL_313;
  }

  if (v107 > 24399)
  {
    if (v107 <= 30399)
    {
      if (v107 > 29199)
      {
        if (v107 == 29200)
        {
          v124 = 113;
          goto LABEL_390;
        }

        if (v107 == 30200)
        {
          v124 = 123;
          goto LABEL_390;
        }
      }

      else
      {
        if (v107 == 24400)
        {
          v124 = 93;
          goto LABEL_390;
        }

        if (v107 == 29000)
        {
          v124 = 103;
          goto LABEL_390;
        }
      }
    }

    else if (v107 <= 47999)
    {
      if (v107 == 30400)
      {
        v124 = 133;
        goto LABEL_390;
      }

      if (v107 == 32000)
      {
        v124 = 143;
        goto LABEL_390;
      }
    }

    else
    {
      switch(v107)
      {
        case 48000:
          v124 = 153;
          goto LABEL_390;
        case 64000:
          v124 = 163;
          goto LABEL_390;
        case 96000:
          v124 = 173;
          goto LABEL_390;
      }
    }
  }

  else if (v107 <= 12849)
  {
    if (v107 > 11599)
    {
      if (v107 == 11600)
      {
        v124 = 23;
        goto LABEL_390;
      }

      if (v107 == 12150)
      {
        v124 = 33;
        goto LABEL_390;
      }
    }

    else
    {
      if (v107 == 7200)
      {
        v124 = 3;
        goto LABEL_390;
      }

      if (v107 == 8000)
      {
        v124 = 13;
        goto LABEL_390;
      }
    }
  }

  else if (v107 <= 14799)
  {
    if (v107 == 12850)
    {
      v124 = 43;
      goto LABEL_390;
    }

    if (v107 == 13200)
    {
      v124 = 53;
      goto LABEL_390;
    }
  }

  else
  {
    switch(v107)
    {
      case 14800:
        v124 = 63;
        goto LABEL_390;
      case 16400:
        v124 = 73;
        goto LABEL_390;
      case 22600:
        v124 = 83;
        goto LABEL_390;
    }
  }

  if (v107 == 128000)
  {
    v124 = 183;
  }

  else
  {
    v124 = -7;
  }

LABEL_390:
  v165 = *v636;
  if (v165 > 3)
  {
    if (*v636 > 0x7Fu)
    {
      if (v165 == 128)
      {
        v166 = 5;
        goto LABEL_408;
      }

      if (v165 == 192)
      {
        v166 = 6;
        goto LABEL_408;
      }
    }

    else
    {
      if (v165 == 4)
      {
        v166 = 3;
        goto LABEL_408;
      }

      if (v165 == 64)
      {
        v166 = 4;
        goto LABEL_408;
      }
    }

    if (v165 == 256)
    {
      v166 = 7;
    }

    else
    {
      v166 = 0;
    }
  }

  else if (v165 < 2)
  {
    v166 = 0;
  }

  else if (v165 == 2)
  {
    v166 = 1;
  }

  else
  {
    v166 = 2;
  }

LABEL_408:
  v167 = &ACB_bits_tbl[2 * ((v166 + v124) << (2 * (v637 != -1))) + 2 * ((v637 + ((v637 >> 25) & 0x3F)) >> 6)];
  if (v167 < ACB_bits_tbl)
  {
    goto LABEL_1366;
  }

  if (v167 + 2 > ACB_bits_16kHz_tbl)
  {
    goto LABEL_1366;
  }

  if (v167 > v167 + 2)
  {
    goto LABEL_1366;
  }

  if ((a15 + 1) > a16)
  {
    goto LABEL_1366;
  }

  if (a15 + 1 < a15)
  {
    goto LABEL_1366;
  }

  v627 = *v167;
  *a15 = 0;
  if ((v106 + 1) > a18 || v106 + 1 < v106)
  {
    goto LABEL_1366;
  }

  v168 = *v106;
  if (v168 < 65 || *v636 == 192)
  {
    v170 = (v629 + 1) <= a20 && v629 + 1 >= v629;
    if (v627 == 6)
    {
      *__C = v638;
      *&__C[8] = v121;
      *&__C[16] = v122;
      if (!v170)
      {
        goto LABEL_1366;
      }

      v171 = pitch_fr4(__C, a28, a29, a26, a27, v168, *v629, a15, 0, 0, 34, 64, 256, 64);
    }

    else if (v627 == 9)
    {
      *__C = v638;
      *&__C[8] = v121;
      *&__C[16] = v122;
      if (!v170)
      {
        goto LABEL_1366;
      }

      v171 = pitch_fr4(__C, a28, a29, a26, a27, v168, *v629, a15, 0, 0, 128, 160, 256, 64);
    }

    else
    {
      *__C = v638;
      *&__C[8] = v121;
      *&__C[16] = v122;
      if (!v170)
      {
        goto LABEL_1366;
      }

      v171 = pitch_fr4(__C, a28, a29, a26, a27, v168, *v629, a15, 0, 0, 231, 34, 256, 64);
    }

    v122 = v631;
    v120 = v637;
    v119 = a13;
    if ((a13 + 1) > a14 || a13 + 1 < a13)
    {
      goto LABEL_1366;
    }
  }

  else
  {
    if ((a13 + 1) > a14 || a13 + 1 < a13)
    {
      goto LABEL_1366;
    }

    v171 = 64;
  }

  *v119 = v171;
  if (*v636 == 64)
  {
    if ((v119 + 1) > a14 || v119 + 1 < v119)
    {
      goto LABEL_1366;
    }

    v158 = v638;
    if (v171 <= 63)
    {
      v171 = 64;
      *v119 = 64;
    }
  }

  else
  {
    v158 = v638;
  }

  if (!v120)
  {
    if ((v119 + 1) > a14 || v119 + 1 < v119)
    {
      goto LABEL_1366;
    }

    if (v171 < 64 || *v636 == 192)
    {
      *v636 = 1;
    }

LABEL_448:
    v158 = v638;
  }

LABEL_449:
  if (v158 < v122)
  {
    goto LABEL_1366;
  }

  v172 = 0;
  v173 = 0;
  v174 = 0;
  *&v175 = -1;
  *(&v175 + 1) = -1;
  v671 = v175;
  v672 = v175;
  v176 = v123 - v120;
  v621 = v120;
  v669 = v175;
  v670 = v175;
  v667 = v175;
  v668 = v175;
  v665 = v175;
  v666 = v175;
  v663 = v175;
  v664 = v175;
  v661 = v175;
  v662 = v175;
  v659 = v175;
  v660 = v175;
  *__C = v175;
  *&__C[16] = v175;
  v657[12] = v175;
  v657[13] = v175;
  v657[10] = v175;
  v657[11] = v175;
  v657[8] = v175;
  v657[9] = v175;
  v657[6] = v175;
  v657[7] = v175;
  v657[4] = v175;
  v657[5] = v175;
  v657[2] = v175;
  v657[3] = v175;
  v657[0] = v175;
  v657[1] = v175;
  v656[0] = v175;
  v656[1] = v175;
  v655[14] = v175;
  v655[15] = v175;
  v655[12] = v175;
  v655[13] = v175;
  v655[10] = v175;
  v655[11] = v175;
  v655[8] = v175;
  v655[9] = v175;
  v177 = (a26 + 1) <= a27 && a26 + 1 >= a26;
  v655[6] = v175;
  v655[7] = v175;
  v178 = !v177;
  v641 = v178;
  v179 = (a28 + 1) <= a29 && a28 + 1 >= a28;
  v655[4] = v175;
  v655[5] = v175;
  v180 = v179;
  v640 = v180;
  v655[2] = v175;
  v655[3] = v175;
  v655[0] = v175;
  v655[1] = v175;
  v181 = -1.0e12;
  do
  {
    v182 = v176 + 4;
    if (v176 >= 60)
    {
      v182 = 64;
    }

    v645 = v182;
    if (v176 <= 4)
    {
      v183 = 0;
    }

    else
    {
      v183 = v176 - 4;
    }

    if (v183 <= 8u)
    {
      v184 = 8;
    }

    else
    {
      v184 = v183;
    }

    v651 = v184;
    v644 = v174;
    v647 = v183;
    if (v183 <= 7u)
    {
      v185 = v183;
      *&__C[4 * v183] = 0;
      *(v656 + v183) = 0;
      v642 = 17 * v174;
      v649 = 17 * v174 + 8;
      v186 = &glottal_cdbk[v649 - v183];
      if (v186 >= glottal_cdbk)
      {
        v643 = v173;
        convolve_tc(v186, &table_logcum_fx, a26, a27, v655, v656, (v183 + 9));
        v187 = v643;
        v188 = 0;
        v189 = *&__C[4 * v185];
        do
        {
          v190 = *(v655 + v188 * 4);
          v189 = v189 + (v190 * v190);
          *&__C[4 * v185] = v189;
          v191 = &a28[v188];
          if (&a28[v188] < a28 || (v191 + 1) > a29 || v191 > v191 + 1)
          {
            goto LABEL_1366;
          }

          *(v656 + v185) = *(v656 + v185) + (v190 * *v191);
          ++v188;
        }

        while (v188 != 64);
        if (v647 == 7)
        {
LABEL_521:
          v215 = &glottal_cdbk[v642];
          v218 = v215 + 1 <= &table_logcum_fx && v215 <= v215 + 1 && v215 >= glottal_cdbk;
          LOWORD(v219) = 63;
          while (1)
          {
            v220 = v655 + v219 - 1;
            v221 = v220 + 1;
            v222 = v220 < v655 || v221 > v656;
            if (v222 || v220 > v221)
            {
              break;
            }

            if (!v218)
            {
              break;
            }

            v224 = &a26[v219];
            if (v224 < a26)
            {
              break;
            }

            if ((v224 + 1) > a27)
            {
              break;
            }

            if (v224 > v224 + 1)
            {
              break;
            }

            v225 = v655 + 4 * v219;
            if (v225 < v655 || v225 + 4 > v656 || v225 > v225 + 4)
            {
              break;
            }

            *(v655 + v219) = *v220 + (*v215 * *v224);
            v45 = v219 != 0;
            v219 = v219 - 1;
            if (v219 == 0 || !v45)
            {
              goto LABEL_549;
            }
          }
        }

        else
        {
          while (1)
          {
            v192 = v185 + 1;
            v193 = &__C[4 * v185 + 4];
            v194 = v193 + 1;
            v195 = v193 < __C || v194 > v673;
            if (v195 || v193 > v194)
            {
              break;
            }

            *&__C[4 * v192] = 0;
            v197 = v656 + v192;
            if (v197 < v656 || v197 + 1 > __C || v197 > v197 + 1)
            {
              break;
            }

            *(v656 + v192) = 0;
            v198 = &glottal_cdbk[v649 - v192];
            v199 = v198 + 1 > &table_logcum_fx || v198 > v198 + 1;
            v200 = !v199 && v198 >= glottal_cdbk;
            v201 = v200;
            LOWORD(v202) = 63;
            v203 = 0.0;
            v204 = 0.0;
            do
            {
              v205 = v655 + v202 - 1;
              v206 = v205 + 1;
              if (v205 < v655 || v206 > v656 || v205 > v206)
              {
                goto LABEL_1366;
              }

              if (!v201)
              {
                goto LABEL_1366;
              }

              v209 = &a26[v202];
              if (v209 < a26)
              {
                goto LABEL_1366;
              }

              if ((v209 + 1) > a27)
              {
                goto LABEL_1366;
              }

              if (v209 > v209 + 1)
              {
                goto LABEL_1366;
              }

              v210 = v655 + 4 * v202;
              if (v210 < v655)
              {
                goto LABEL_1366;
              }

              if (v210 + 4 > v656)
              {
                goto LABEL_1366;
              }

              if (v210 > v210 + 4)
              {
                goto LABEL_1366;
              }

              v211 = *v198;
              v212 = *v205 + (*v198 * *v209);
              *(v655 + v202) = v212;
              v204 = v204 + (v212 * v212);
              *v193 = v204;
              v213 = &a28[v202];
              if (v213 < a28 || (v213 + 1) > a29 || v213 > v213 + 1)
              {
                goto LABEL_1366;
              }

              v203 = v203 + (v212 * *v213);
              *v197 = v203;
              v45 = v202 != 0;
              v202 = v202 - 1;
            }

            while (v202 != 0 && v45);
            if (v641)
            {
              break;
            }

            v214 = v211 * *a26;
            *v655 = v214;
            *v193 = v204 + (v214 * v214);
            if (!v640)
            {
              break;
            }

            *v197 = v203 + (v214 * *a28);
            v45 = v185++ >= 6;
            if (v45)
            {
              goto LABEL_521;
            }
          }
        }
      }

      goto LABEL_1366;
    }

    v226 = &glottal_cdbk[17 * v174];
    if (v226 < glottal_cdbk)
    {
      goto LABEL_1366;
    }

    v227 = v173;
    convolve_tc(v226, &table_logcum_fx, a26, a27, v655, v656, 17);
    v187 = v227;
LABEL_549:
    v228 = v651;
    if (v645 >= v651)
    {
      v229 = 0;
      v230 = 0.0;
      do
      {
        v230 = v230 + (*(v655 + v229) * *(v655 + v229));
        v229 += 4;
      }

      while (v229 != 36);
      *(&v672 + 3) = v230;
      if (v647 <= 0x3Eu)
      {
        v231 = 62;
        v232 = 62;
        do
        {
          v233 = &__C[4 * v232];
          v234 = v233 + 1;
          v235 = v233 + 2;
          v236 = v233 + 1 < __C || v235 > v673;
          if (v236 || v234 > v235)
          {
            goto LABEL_1366;
          }

          v238 = v655 + 71 - v231;
          if (v238 < v655 || v238 + 1 > v656 || v238 > v238 + 1 || v233 < __C || v233 > v234)
          {
            goto LABEL_1366;
          }

          *v233 = *v234 + (*v238 * *v238);
          v231 = --v232;
          v228 = v651;
        }

        while (v651 <= v232);
      }

      if ((v645 - 8) > (v228 - 8))
      {
        v239 = v228 - 8;
        v240 = v228 - 9;
        v241 = &a28[v228];
        while (1)
        {
          v242 = 0.0;
          if (v239 <= 0x3F)
          {
            break;
          }

LABEL_588:
          v254 = v657 + v239;
          v255 = v254 + 1;
          if (v254 < v657 || v255 > __C || v254 > v255)
          {
            goto LABEL_1366;
          }

          *v254 = v242;
          ++v239;
          ++v240;
          ++v241;
          if (v239 == (v645 - 8))
          {
            goto LABEL_596;
          }
        }

        v243 = 0;
        v244 = v240;
        while (1)
        {
          v245 = &v241[v243 - 8];
          v246 = &v241[v243 - 7];
          v247 = v245 < a28 || v246 > a29;
          v248 = v247 || v245 > v246;
          v249 = v655 + v243 * 4;
          v250 = v655 + v243 * 4 + 4;
          v251 = !v248 && v249 >= v655;
          v252 = !v251 || v250 > v656;
          if (v252 || v249 > v250)
          {
            goto LABEL_1366;
          }

          v242 = v242 + (*v245 * *(v655 + v243 * 4));
          ++v244;
          ++v243;
          if (v244 >= 0x3F)
          {
            goto LABEL_588;
          }
        }
      }
    }

LABEL_596:
    if (v645 > v647)
    {
      if (v176 <= 4)
      {
        v258 = 4;
      }

      else
      {
        v258 = v176;
      }

      v259 = v258 - 4;
      v260 = 4 * v258;
      v261 = v656;
      v262 = __C;
      do
      {
        v263 = (v261 + v260 - 16);
        v264 = v261 + v260 - 12;
        v265 = v263 < v656 || v264 > __C;
        if (v265 || v263 > v264)
        {
          goto LABEL_1366;
        }

        v267 = &v262[v260 - 16];
        if (v267 < __C)
        {
          goto LABEL_1366;
        }

        v268 = &v262[v260 - 12];
        if (v268 > v673 || v267 > v268)
        {
          goto LABEL_1366;
        }

        if (((*v263 * *v263) / *v267) > v181)
        {
          v176 = v259;
          v172 = v187;
          v181 = (*v263 * *v263) / *v267;
        }

        ++v259;
        v261 = (v261 + 4);
        v262 += 4;
      }

      while (v259 < v645);
    }

    v173 = v187 + 1;
    v174 = v644 + 1;
  }

  while (v644 != 7);
  __A = 0.0;
  v269 = v638;
  vDSP_vfill(&__A, v638, 1, 0x40uLL);
  __A = 0.0;
  vDSP_vfill(&__A, a22, 1, 0x40uLL);
  v270 = (v176 - 8);
  v271 = v176 + 8;
  if (v271 >= v270)
  {
    v272 = (v176 - 8);
    v273 = v176 - 8;
    do
    {
      if (v273 <= 0x3Fu)
      {
        v274 = &glottal_cdbk[17 * v172 + v272 - v176];
        v275 = (v274 + 8);
        v276 = (v274 + 9);
        v278 = v275 < glottal_cdbk || v276 > &table_logcum_fx || v275 > v276;
        v279 = &v269[v273];
        v280 = v279 + 1;
        if (v278 || v279 < v269 || v280 > v632 || v279 > v280)
        {
          goto LABEL_1366;
        }

        *v279 = *v275;
        v269 = v638;
      }

      v272 = ++v273;
    }

    while (v271 >= v273);
  }

  v284 = (v176 + 17);
  if (v284 >= 64)
  {
    LOWORD(v284) = 64;
  }

  if (v270 <= 63)
  {
    if ((v269 + 1) <= v632 && v269 + 1 >= v269)
    {
      v285 = v270 & ~(v270 >> 31);
      v286 = &a26[v285];
      while (1)
      {
        v287 = &a26[v285];
        v288 = v287 + 1;
        if (v287 < a26 || v288 > a27 || v287 > v288)
        {
          goto LABEL_1366;
        }

        v291 = *v269 * *v287;
        v292 = v285 + 1;
        v293 = v285 <= v284 ? v285 + 1 : v284;
        v294 = v293;
        if (v293 >= 2)
        {
          break;
        }

LABEL_661:
        v301 = &a22[v285];
        if (v301 < a22 || (v301 + 1) > a23 || v301 > v301 + 1)
        {
          goto LABEL_1366;
        }

        *v301 = v291;
        ++v286;
        v285 = v292;
        if (v292 == 64)
        {
          goto LABEL_665;
        }
      }

      v295 = 0;
      v296 = 4 * v294 - 4;
      v297 = v269 + 1;
      while (v297 >= v269)
      {
        if ((v297 + 1) > v632)
        {
          break;
        }

        if (v297 > v297 + 1)
        {
          break;
        }

        v298 = &v286[v295];
        v299 = &v286[v295 - 1];
        if (v299 < a26 || v298 > a27 || v299 > v298)
        {
          break;
        }

        v300 = *v297++;
        v291 = v291 + (v300 * *v299);
        if (!(v296 + --v295 * 4))
        {
          goto LABEL_661;
        }
      }
    }

    goto LABEL_1366;
  }

LABEL_665:
  if ((a29 - a28) < 253 || a29 < a28 || a23 < a22 || (a23 - a22) < 253)
  {
    goto LABEL_1366;
  }

  __A = NAN;
  vDSP_dotpr(a28, 1, a22, 1, &__A, 0x40uLL);
  v302 = __A;
  __A = NAN;
  vDSP_dotpr(a22, 1, a22, 1, &__A, 0x40uLL);
  v303 = 0;
  v304 = v302 / (__A + 0.01);
  v305 = v304 >= 0.0;
  v306 = -v304;
  if (v304 >= 0.0)
  {
    v306 = v302 / (__A + 0.01);
  }

  while (v306 >= *&tbl_gain_trans_tc[v303])
  {
    if (++v303 == 7)
    {
      v307 = 7;
      LOWORD(v303) = 7;
      goto LABEL_675;
    }
  }

  v307 = v303;
LABEL_675:
  v308 = &tbl_gain_trans_tc[v307];
  if (v308 < tbl_gain_trans_tc || v308 + 1 > Idx_dortft80 || v308 > v308 + 1)
  {
    goto LABEL_1366;
  }

  v309 = v304 < 0.0 ? -*v308 : *v308;
  v310 = 64;
  v311 = v638;
  do
  {
    if ((v311 + 1) > v632 || v311 > v311 + 1 || v311 < v631)
    {
      goto LABEL_1366;
    }

    *v311 = v309 * *v311;
    ++v311;
    --v310;
  }

  while (v310);
  if (v630 - 1280 < v631)
  {
    goto LABEL_1366;
  }

  *__C = 0;
  vDSP_vfill(__C, (v630 - 1280), 1, 0x140uLL);
  if ((a13 + 1) > a14 || a13 + 1 < a13)
  {
    goto LABEL_1366;
  }

  v314 = *a13;
  v315 = *a15;
  *__C = v630;
  *&__C[8] = v632;
  *&__C[16] = v631;
  pred_lt4_tc(__C, v314, v315, v176, v637);
  if (a3 == 256)
  {
    v316 = (v623 + 4 * (5 * v637 / 2));
    if (v316 < v623)
    {
      goto LABEL_1366;
    }

    v317 = v638;
    v318 = v632;
    interp_code_5over2(v638, v632, v316, v622, 64);
  }

  else
  {
    v319 = v623 + 8 * v621;
    if (v319 < v623)
    {
      goto LABEL_1366;
    }

    v317 = v638;
    v318 = v632;
    interp_code_4over2(v638, v632, v319, v622, 64);
  }

  *__C = v317;
  *&__C[8] = v318;
  *&__C[16] = v631;
  conv_evs(__C, a26, a22, 64);
  corr_xy1(a28, a29, a22, a23, a36, a37, 64, 0);
  if ((a34 + 1) > a35 || a34 + 1 < a34)
  {
LABEL_1366:
    __break(0x5519u);
  }

  *a34 = v320;
  if (a3 == 256)
  {
    v321 = *v636;
    if (v637)
    {
      if (v321 == 64)
      {
        goto LABEL_721;
      }
    }

    else if (v321 != 1)
    {
      goto LABEL_721;
    }

    v322 = *a13;
    if (v321 != 192 && v322 >= 64)
    {
      v323 = v627;
      v324 = a1;
      v325 = 0;
LABEL_720:
      push_indice(v324, 95, v325, v323);
      goto LABEL_721;
    }

    v339 = *a15;
    if (v321 == 192)
    {
      if (v627 == 9)
      {
        v340 = 4;
      }

      else
      {
        v340 = 2;
      }

      v341 = abs_pit_enc(v340, 0, v322, v339);
      push_indice(a1, 95, v341, v627);
      if (v628 && ((v628 + 1) > a18 || v628 + 1 < v628) || v629 && ((v629 + 1) > a20 || v629 + 1 < v629))
      {
        goto LABEL_1366;
      }

      v342 = (*a13 - 8);
      if (v342 <= 34)
      {
        LOWORD(v342) = 34;
      }

      *v628 = v342;
      v343 = v342 + 15;
      *v629 = v343;
      if (v343 >= 232)
      {
        *v629 = 231;
        *v628 = 216;
      }

      goto LABEL_721;
    }

    if (v627 != 6)
    {
      v323 = v627;
      v325 = v322 - 33;
      v324 = a1;
      goto LABEL_720;
    }

    v326 = 2 * v322 + (v339 >> 1) - 66;
LABEL_719:
    v325 = v326;
    v324 = a1;
    v323 = 6;
    goto LABEL_720;
  }

  if (v627 == 6)
  {
    v326 = 2 * *a13 + ((*a15 + (*a15 >> 15)) >> 1) - 84;
    goto LABEL_719;
  }

  if (v627 == 10)
  {
    if (v628 && ((v628 + 1) > a18 || v628 + 1 < v628) || v629 && ((v629 + 1) > a20 || v629 + 1 < v629))
    {
      goto LABEL_1366;
    }

    pit16k_Q_enc(a1, 10, 1, *a13, *a15, v628, v629);
  }

LABEL_721:
  push_indice(a1, 95, v172, 3);
  push_indice(a1, 95, v176, 6);
  push_indice(a1, 95, v305, 1);
  push_indice(a1, 95, v303, 3);
  *a7 = v176 + v637;
  if (a33 < a32)
  {
    goto LABEL_1366;
  }

  if ((a33 - a32) < 21)
  {
    goto LABEL_1366;
  }

  gp_clip(v624, a9, a10, v637, 4u, a28, a32);
  if ((a38 + 1) > a39)
  {
    goto LABEL_1366;
  }

  if (a38 + 1 < a38)
  {
    goto LABEL_1366;
  }

  *a38 = v327;
  if (a31 < a30)
  {
    goto LABEL_1366;
  }

  if ((a31 - a30) < 253)
  {
    goto LABEL_1366;
  }

  v328 = 0;
  v329 = -*a34;
  do
  {
    *&a30[v328 * 4] = a28[v328] + (v329 * a22[v328]);
    ++v328;
  }

  while (v328 != 64);
  if ((a15 + 1) > a16 || a15 + 1 < a15)
  {
    goto LABEL_1366;
  }

  v330 = *a40;
  v331 = *a40 + 24;
  v332 = v331 > a40[1] || v330 > v331;
  if (v332 || v330 < a40[2])
  {
    goto LABEL_1366;
  }

  v334 = *v330;
  v335 = *(v330 + 8);
  v336 = *(v330 + 16);
  v337 = (v334 + 1) > v335 || v334 > v334 + 1;
  if (v337 || v334 < v336)
  {
    goto LABEL_1366;
  }

  *v334 = vcvts_n_f32_s32(*a15, 2uLL) + *a13;
  *a6 = 1;
}

char *pred_lt4_tc(void *a1, int a2, int a3, int a4, int a5)
{
  *&v48[4] = *MEMORY[0x1E69E9840];
  v47 = -1;
  *&v6 = -1;
  *(&v6 + 1) = -1;
  __C[14] = v6;
  __C[15] = v6;
  __C[12] = v6;
  __C[13] = v6;
  __C[10] = v6;
  __C[11] = v6;
  __C[8] = v6;
  __C[9] = v6;
  __C[6] = v6;
  __C[7] = v6;
  __C[4] = v6;
  __C[5] = v6;
  __C[2] = v6;
  __C[3] = v6;
  __C[0] = v6;
  __C[1] = v6;
  __dst[30] = v6;
  __dst[31] = v6;
  __dst[28] = v6;
  __dst[29] = v6;
  __dst[26] = v6;
  __dst[27] = v6;
  __dst[24] = v6;
  __dst[25] = v6;
  __dst[22] = v6;
  __dst[23] = v6;
  __dst[20] = v6;
  __dst[21] = v6;
  __dst[18] = v6;
  __dst[19] = v6;
  __dst[16] = v6;
  __dst[17] = v6;
  __dst[14] = v6;
  __dst[15] = v6;
  __dst[12] = v6;
  __dst[13] = v6;
  __dst[10] = v6;
  __dst[11] = v6;
  __dst[8] = v6;
  __dst[9] = v6;
  __dst[6] = v6;
  __dst[7] = v6;
  __dst[4] = v6;
  __dst[5] = v6;
  __dst[2] = v6;
  __dst[3] = v6;
  __dst[0] = v6;
  __dst[1] = v6;
  v7 = (*a1 + 4 * a5 - 256);
  if (v7 < a1[2])
  {
    goto LABEL_52;
  }

  v9 = a1[1];
  v42 = v9 >= v7;
  v10 = v9 - v7;
  if (!v42 || v10 <= 0x1FF)
  {
    goto LABEL_52;
  }

  result = memmove(__dst, v7, 0x200uLL);
  if (a2 <= 63 && a4 + a2 <= 71)
  {
    v15 = &__dst[16] - a2;
    if (v15 >= __dst)
    {
      __A = 0.0;
      vDSP_vfill(&__A, v15, 1, a2);
      __A = 0.0;
      vDSP_vfill(&__A, __C, 1, 0x41uLL);
      v16 = -a3;
      v17 = v16 < 0;
      if (v16 >= 0)
      {
        v18 = -a3;
      }

      else
      {
        LOWORD(v18) = 4 - a3;
      }

      v19 = -4;
      if (!v17)
      {
        v19 = 0;
      }

      v20 = v18;
      v21 = __dst;
      v22 = a2;
      do
      {
        v23 = 0;
        v24 = 0.0;
        v25 = inter4_2;
        v26 = v21;
        result = v21;
        do
        {
          v27 = &result[v19 + 256];
          if (v27 < __dst)
          {
            goto LABEL_52;
          }

          v28 = &result[v19 + 260];
          if (v28 > __C)
          {
            goto LABEL_52;
          }

          if (v27 > v28)
          {
            goto LABEL_52;
          }

          v29 = &v25[v20];
          if (&v25[v20] < inter4_2)
          {
            goto LABEL_52;
          }

          v30 = &v25[v20 + 1];
          if (v30 > &post_dct_wind)
          {
            goto LABEL_52;
          }

          if (v29 > v30)
          {
            goto LABEL_52;
          }

          v31 = (v26 + v19 + 260);
          if (v31 < __dst)
          {
            goto LABEL_52;
          }

          v32 = v26 + v19 + 264;
          if (v32 > __C)
          {
            goto LABEL_52;
          }

          if (v31 > v32)
          {
            goto LABEL_52;
          }

          v33 = &v25[-v18 + 4];
          if (v33 < inter4_2)
          {
            goto LABEL_52;
          }

          v34 = &v25[-v18 + 5];
          if (v34 > &post_dct_wind || v33 > v34)
          {
            goto LABEL_52;
          }

          v24 = v24 + ((*v31 * *v33) + (*v27 * *v29));
          result -= 4;
          v26 = (v26 + 4);
          v25 += 4;
          v42 = v23++ >= 0xF;
        }

        while (!v42);
        v35 = __C + 4 * v22;
        if (v35 < __C || v35 + 4 > v48 || v35 > v35 + 4)
        {
          goto LABEL_52;
        }

        *(__C + v22++) = v24;
        v21 = (v21 + 4);
      }

      while (v22 != 65);
      v36 = a2 - 64;
      for (i = 4 * a2; ; i += 4)
      {
        v38 = __C + i + 4;
        v39 = (__C + i) < __C || v38 > v48;
        if (v39 || __C + i > v38)
        {
          break;
        }

        v41 = (*a1 + 4 * a5 + i);
        v42 = (v41 + 1) > a1[1] || v41 >= v41 + 1;
        if (v42 || v41 < a1[2])
        {
          break;
        }

        *v41 = *v41 + (*(__C + i) * 0.85);
        v42 = __CFADD__(v36++, 1);
        if (v42)
        {
          return result;
        }
      }
    }

LABEL_52:
    __break(0x5519u);
  }

  return result;
}

float *convolve_tc(float *result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, int a7)
{
  if ((result + 1) <= a2 && result + 1 >= result)
  {
    v8 = 0;
    while (1)
    {
      v9 = (a3 + 4 * v8);
      v10 = v9 + 1;
      v11 = v9 < a3 || v10 > a4;
      if (v11 || v9 >= v10)
      {
        break;
      }

      v13 = v8;
      v14 = *result * *v9;
      if (v8 < a7)
      {
        v15 = v8 + 1;
      }

      else
      {
        v15 = a7;
      }

      if (v15 >= 2)
      {
        v16 = 1;
        for (i = 1; i < v15; v16 = ++i)
        {
          v18 = &result[i];
          v19 = v18 + 1;
          v20 = v18 < result || v19 > a2;
          if (v20 || v18 >= v19)
          {
            goto LABEL_35;
          }

          v22 = (a3 + 4 * (v13 - v16));
          if (v22 < a3 || (v22 + 1) > a4 || v22 > v22 + 1)
          {
            goto LABEL_35;
          }

          v14 = v14 + (*v18 * *v22);
        }
      }

      v23 = (a5 + 4 * v13);
      if (v23 < a5 || (v23 + 1) > a6 || v23 > v23 + 1)
      {
        break;
      }

      *v23 = v14;
      v8 = (v13 + 1);
      if (v13 >= 0x3F)
      {
        return result;
      }
    }
  }

LABEL_35:
  __break(0x5519u);
  return result;
}

void *modify_Fs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = v10;
  __dst = v12;
  v14 = v13;
  v104 = v16;
  v105 = v15;
  v18 = v17;
  v101 = v19;
  v20 = v9;
  *v121 = *MEMORY[0x1E69E9840];
  v111 = NAN;
  memset(__b, 255, sizeof(__b));
  v119 = -1;
  *&v21 = -1;
  *(&v21 + 1) = -1;
  v118[2] = v21;
  v118[3] = v21;
  v118[0] = v21;
  v118[1] = v21;
  v116 = -1;
  v115[2] = v21;
  v115[3] = v21;
  v115[0] = v21;
  v115[1] = v21;
  v113 = -1;
  v112[2] = v21;
  v112[3] = v21;
  v112[0] = v21;
  v112[1] = v21;
  __C = NAN;
  if (v18 == v14)
  {
    v22 = *v20;
    v23 = *(v20 + 8);
    if (*v20 <= v23 && v104 >= v105 && *(v20 + 16) <= v22)
    {
      v24 = 4 * v101;
      if (v24 <= v23 - v22 && v24 <= v104 - v105)
      {
        v25 = v105;
        v26 = v105;
        goto LABEL_104;
      }
    }

    goto LABEL_105;
  }

  v27 = &resampling_cfg_tbl;
  while (1)
  {
    v28 = *v27;
    if (!*v27)
    {
      v30 = &lsf_q_cb;
      v27 = &unk_1E752F248;
      goto LABEL_17;
    }

    if (v28 == v18 && v27[1] == v14)
    {
      break;
    }

    if (v27 + 10 >= &resampling_cfg_tbl)
    {
      v29 = v27 + 20;
      v27 += 10;
      if (v29 <= &lsf_q_cb)
      {
        continue;
      }
    }

    goto LABEL_105;
  }

  v30 = v27 + 10;
  v28 = v18;
LABEL_17:
  v109 = -1;
  v32 = v18 > 8000 && a9 != 0 && v14 == 12800;
  v33 = v32;
  v91 = v33;
  if (v32)
  {
    if (v30 < &resampling_cfg_tbl || v30 + 10 > &lsf_q_cb)
    {
      goto LABEL_105;
    }

    while (1)
    {
      v28 = *v30;
      if (!*v30)
      {
        break;
      }

      if (v28 == v18 && v30[1] == 12800)
      {
        v28 = v18;
        break;
      }

      if (v30 + 10 >= &resampling_cfg_tbl)
      {
        v34 = v30 + 20;
        v30 += 10;
        if (v34 <= &lsf_q_cb)
        {
          continue;
        }
      }

      goto LABEL_105;
    }

    v27 = v30;
  }

  v90 = v28;
  v89 = v27 - &resampling_cfg_tbl;
  if (v27 < &resampling_cfg_tbl || v27 + 10 > &lsf_q_cb || ((v35 = v14 == 12800, v36 = *(v27 + 16), v37 = v18 == 8000, v39 = v37 && v35, v38 = !v37 || !v35) ? (v40 = 0) : (v40 = 7), (v93 = v40, v38) ? (v41 = 0) : (v41 = 4), (v97 = *(v27 + 16), v95 = &__b[-(2 * v36) + 1050], v100 = &v95[-v101], v11 < __dst) || (__n = 8 * v36, __n > v11 - __dst) || v100 > v121 || __b > v100 || __n > v121 - v100 || (v103 = *(v27 + 4), v88 = v27[1], memcpy(v100, __dst, __n), v100 > &v100[__n / 4]) || (v42 = *v20, v43 = *(v20 + 8), *v20 > v43) || (v44 = &v100[2 * v97], *(v20 + 16) > v42) || (v86 = v101, v45 = 4 * v101, v45 > v43 - v42) || v44 > v121 || __b > v44 || v45 > v121 - v44 || (memcpy(&v100[2 * v97], v42, 4 * v101), v44 > &v44[v45 / 4])))
  {
LABEL_105:
    __break(0x5519u);
  }

  v94 = (v97 << 17) >> 16;
  if (v39)
  {
    v46 = &v100[v94 - 120 + v101];
    v92 = v46;
    if (v46 > v121)
    {
      goto LABEL_105;
    }

    if (__b > v46)
    {
      goto LABEL_105;
    }

    v85 = v121 - v46;
    if (v85 < 120)
    {
      goto LABEL_105;
    }

    autocorr(v46, v115, v117, 1, 120, &wind_sss, filter_LP15_180H_phase0of6, 0, 0);
    v47 = &v100[(2 * v97) + v101];
    v87 = v47 - 121;
    if (v47 - 121 < __b || v47 - 120 > v121 || v87 > v47 - 120)
    {
      goto LABEL_105;
    }

    v109 = *v87;
    v48 = *(v115 + 1) / *v115;
    preemph(v92, 120, &v109, *(v115 + 1) / *v115);
    autocorr(v92, v115, v117, 16, 120, &wind_sss, filter_LP15_180H_phase0of6, 0, 0);
    lag_wind_11465(v115, v117, 8000, 2);
    lev_dur(v118, __b, v115, v117, 16, v112, &v114);
    v49 = 0;
    v50 = v93 <= 1 ? 1 : v93;
    v51 = 4 * v50;
    v52 = __b + 4 * ((2 * v97) + v101) - v45 - 4 * ((v97 << 17) >> 16);
    v53 = v52 + 4204;
    do
    {
      vDSP_dotpr(&__b[v49 / 4 + 1049], -1, v118 + 1, 1, &__C, 0x10uLL);
      v54 = -__C;
      __C = -__C;
      if (&v47[v49 / 4] < __b || &v53[v49] > v121 || &v47[v49 / 4] > &v53[v49])
      {
        goto LABEL_105;
      }

      *&v52[v49 + 4200] = v54;
      v49 += 4;
    }

    while (v51 != v49);
    v109 = *v87;
    v55 = v93 | 0x78;
    if (v85 < v55)
    {
      goto LABEL_105;
    }

    deemph(v92, v55, &v109, v48);
  }

  v56 = v103;
  v57 = v90 * v103 / v88;
  v58 = v103 * v101;
  v59 = v97;
  v60 = v57 / v103;
  v61 = (v97 + 1) >> 1;
  if (!v91)
  {
    v61 = v97;
  }

  v102 = v57;
  v98 = v58 / v57;
  v62 = v98 << 16;
  if (v89 == 360)
  {
    if (v62 >= 1)
    {
      v67 = 0;
      v68 = v60;
      v69 = (&__b[1021] + 4 * v93 + 4 * v59 - 4 * v86 - 4 * v94);
      v70 = (8 * v60) | 4;
      do
      {
        vDSP_dotpr(v69, 1, filter_LP15_180H_phase0of6, 1, &v105[v67 >> 16], 0x3CuLL);
        vDSP_dotpr(&v69[v68], 1, filter_LP15_180H_phase3of6, 1, &v105[(v67 >> 16) + 1], 0x3CuLL);
        v67 += 0x20000;
        v69 = (v69 + v70);
      }

      while (v67 < v62);
    }
  }

  else if (v89 == 400)
  {
    v63 = v98;
    if (v63 >= 1)
    {
      v64 = (&__b[1021] + 4 * v93 + 4 * v59 - 4 * v86 - 4 * v94);
      v65 = 4 * v60;
      v66 = v105;
      do
      {
        vDSP_dotpr(v64, 1, filter_LP12_180H_phase0of6, 1, v66++, 0x3CuLL);
        v64 = (v64 + v65);
        --v63;
      }

      while (v63);
    }
  }

  else if (v62 >= 1)
  {
    v71 = v57 % v103;
    v72 = v61;
    v73 = v60;
    v74 = (v62 - 0x10000) + 0xFFFFLL;
    v75 = v105;
    v76 = &v100[v59 + v93];
    v77 = ~(v74 >> 16);
    do
    {
      v108[0] = v76;
      v108[1] = v121;
      v108[2] = __b;
      v106 = *(v27 + 1);
      v107 = v106;
      interpolation(v108, &v106, v41, v56, v72);
      if (v75 < v105 || (v75 + 1) > v104 || v75 > v75 + 1)
      {
        goto LABEL_105;
      }

      *v75++ = v78;
      v79 = (v41 + v71);
      v56 = v103;
      v80 = v79 < v103;
      v81 = v76 + 4 * (v79 >= v103);
      if (v80)
      {
        v82 = 0;
      }

      else
      {
        v82 = v103;
      }

      v41 = v41 + v71 - v82;
      v76 = v81 + 4 * v73;
    }

    while (!__CFADD__(v77++, 1));
  }

  if (v102 >= v56 != *(v27 + 17) < 0)
  {
    v111 = v56 / v102;
    MEMORY[0x19EAE6090](v105, 1, &v111, v105, 1, v98);
  }

  if (v121 < v95 || __b > v95 || __n > v121 - v95)
  {
    goto LABEL_105;
  }

  v25 = __dst;
  v26 = __dst;
  v22 = v95;
  v24 = __n;
LABEL_104:
  result = memcpy(v26, v22, v24);
  if ((v25 + v24) < v25)
  {
    goto LABEL_105;
  }

  return result;
}

void isf_enc_amr_wb(uint64_t a1, unint64_t a2, unint64_t a3, _OWORD *a4, unint64_t a5, unint64_t *a6, _DWORD *a7)
{
  v7 = a5;
  v9 = a3;
  v107[1] = *MEMORY[0x1E69E9840];
  v12 = *(a1 + 96);
  if (v12 == 1750)
  {
    for (i = 0; i != 64; i += 4)
    {
      v15 = (a2 + i);
      v16 = a2 + i + 4;
      if (a2 + i < a2 || v16 > a3 || v15 > v16)
      {
        goto LABEL_91;
      }

      *v15 = *v15 - *(&mean_isf_noise_amr_wb + i);
    }

    v19 = sub_VQ(a2, a3, dico1_ns_28b, dico2_ns_28b, 2u, 64, &v100);
    LOWORD(v102) = v19;
    if (a2 + 8 >= a2)
    {
      v20 = sub_VQ((a2 + 8), v9, dico2_ns_28b, &dico3_ns_28b, 3u, 64, &v100);
      WORD1(v102) = v20;
      if (a2 + 20 >= a2)
      {
        v21 = sub_VQ((a2 + 20), v9, &dico3_ns_28b, dico4_ns_28b, 3u, 64, &v100);
        WORD2(v102) = v21;
        if (a2 + 32 >= a2)
        {
          v22 = sub_VQ((a2 + 32), v9, dico4_ns_28b, &dico5_ns_28b, 4u, 32, &v100);
          WORD3(v102) = v22;
          if (a2 + 48 >= a2)
          {
            v23 = sub_VQ((a2 + 48), v9, &unk_19B390D50, dico1_isf, 4u, 31, &v100) + 1;
            WORD4(v102) = v23;
            push_indice(a1, 34, v19, 6);
            push_indice(a1, 35, v20, 6);
            push_indice(a1, 36, v21, 6);
            push_indice(a1, 37, v22, 5);
            push_indice(a1, 38, v23, 5);
            disf_ns_28b(&v102, &v102 + 10, a2, v9);
            if (v9 >= a2 && (v9 - a2) > 60)
            {
              reorder_isf(a2);
              if (a5 >= a4 && (a5 - a4) >= 61)
              {
                isf2isp(a2, a4);
                return;
              }
            }
          }
        }
      }
    }

LABEL_91:
    __break(0x5519u);
  }

  gp_clip_test_lsf(v12, a2, a3, (a1 + 18436), a1 + 18460, 1);
  v26 = *(a1 + 96);
  if (v26 == 6600)
  {
    if (v9 < a2 || (v9 - a2) < 61)
    {
      goto LABEL_91;
    }

    v83 = v9 - a2;
    v84 = a6;
    v85 = a7;
    v86 = v7;
    v87 = v9;
    v88 = a4;
    v27 = 0;
    *&v100 = 0xAAAAAAAAAAAAAAAALL;
    WORD4(v100) = -21846;
    v107[0] = 0xAAAAAAAAAAAAAAAALL;
    v99 = NAN;
    do
    {
      *(a2 + v27) = *(a2 + v27) - (*(&E_ROM_f_mean_isf + v27) + (*(a1 + 18540 + v27) * 0.33333));
      v27 += 4;
    }

    while (v27 != 64);
    *&v28 = -1;
    *(&v28 + 1) = -1;
    v104 = v28;
    v105 = v28;
    v102 = v28;
    v103 = v28;
    VQ_stage1(a2, a2 + 64, dico1_isf, &dico1_isf[9216], 9u, v107);
    v29 = 0;
    v97 = -21846;
    v30 = 1.0e30;
    v93 = -21846;
    v95 = -21846;
    do
    {
      v31 = 0;
      v32 = &dico1_isf[36 * *(v107 + v29)];
      do
      {
        v33 = &v32[v31];
        v34 = &v32[v31 + 4];
        if (&v32[v31] < dico1_isf || v34 > dico21_isf_36b || v33 > v34)
        {
          goto LABEL_91;
        }

        *(&v102 + v31) = *(a2 + v31) - *v33;
        v31 += 4;
      }

      while (v31 != 36);
      v37 = sub_VQ(&v102, &v106, dico21_isf_36b, dico22_isf_36b, 5u, 128, &v99);
      v38 = v99;
      v39 = sub_VQ(&v103 + 1, &v106, dico22_isf_36b, dico2_isf, 4u, 128, &v99);
      if ((v38 + v99) < v30)
      {
        v93 = *(v107 + v29);
        v95 = v37;
        LOWORD(v100) = v93;
        WORD2(v100) = v37;
        WORD3(v100) = v39;
        v97 = v39;
        v30 = v38 + v99;
      }

      ++v29;
    }

    while (v29 != 4);
    if (a2 + 36 < a2)
    {
      goto LABEL_91;
    }

    VQ_stage1((a2 + 36), a2 + 64, dico2_isf, &dico2_isf[1792], 7u, v107);
    v40 = 0;
    v91 = -21846;
    v41 = 1.0e30;
    v42 = -21846;
    do
    {
      v43 = &dico2_isf[7 * *(v107 + v40)];
      for (j = 9; j != 16; ++j)
      {
        v45 = &v43[j - 9];
        if (v45 < dico2_isf)
        {
          goto LABEL_91;
        }

        v46 = &v43[j - 8];
        if (v46 > dico23_isf_36b || v45 > v46)
        {
          goto LABEL_91;
        }

        *(&v102 + j * 4) = *(a2 + j * 4) - *v45;
      }

      v47 = sub_VQ(&v104 + 1, &v106, dico23_isf_36b, dico21_isf_46b, 3u, 64, &v99);
      if (v99 < v41)
      {
        v42 = *(v107 + v40);
        WORD1(v100) = v42;
        WORD4(v100) = v47;
        v91 = v47;
        v41 = v99;
      }

      ++v40;
    }

    while (v40 != 4);
    push_indice(a1, 34, v93, 8);
    push_indice(a1, 35, v42, 8);
    push_indice(a1, 39, v95, 7);
    push_indice(a1, 40, v97, 7);
    push_indice(a1, 41, v91, 6);
    disf_2s_36b(&v100, &v100 + 10, a2, a1 + 18476, a1 + 18540);
  }

  else
  {
    if (v26 <= 8849)
    {
      v73 = v9 - a2;
      goto LABEL_80;
    }

    if (v9 < a2 || (v9 - a2) < 61)
    {
      goto LABEL_91;
    }

    v83 = v9 - a2;
    v84 = a6;
    v85 = a7;
    v86 = v7;
    v87 = v9;
    v88 = a4;
    v48 = 0;
    *(&v100 + 6) = 0xAAAAAAAAAAAAAAAALL;
    *&v100 = 0xAAAAAAAAAAAAAAAALL;
    v107[0] = 0xAAAAAAAAAAAAAAAALL;
    v99 = NAN;
    do
    {
      *(a2 + v48) = *(a2 + v48) - (*(&E_ROM_f_mean_isf + v48) + (*(a1 + 18540 + v48) * 0.33333));
      v48 += 4;
    }

    while (v48 != 64);
    *&v49 = -1;
    *(&v49 + 1) = -1;
    v104 = v49;
    v105 = v49;
    v102 = v49;
    v103 = v49;
    VQ_stage1(a2, a2 + 64, dico1_isf, &dico1_isf[9216], 9u, v107);
    v50 = 0;
    v98 = -21846;
    v51 = 1.0e30;
    v94 = -21846;
    v96 = -21846;
    v92 = -21846;
    do
    {
      v52 = 0;
      v53 = &dico1_isf[36 * *(v107 + v50)];
      do
      {
        v54 = &v53[v52];
        v55 = &v53[v52 + 4];
        if (&v53[v52] < dico1_isf || v55 > dico21_isf_36b || v54 > v55)
        {
          goto LABEL_91;
        }

        *(&v102 + v52) = *(a2 + v52) - *v54;
        v52 += 4;
      }

      while (v52 != 36);
      v58 = sub_VQ(&v102, &v106, dico21_isf_46b, dico22_isf_46b, 3u, 64, &v99);
      v59 = v99;
      v60 = sub_VQ((&v102 | 0xC), &v106, dico22_isf_46b, &dico23_isf_46b, 3u, 128, &v99);
      v61 = v59 + v99;
      v62 = sub_VQ(&v103 + 2, &v106, &dico23_isf_46b, &dico24_isf_46b, 3u, 128, &v99);
      if ((v61 + v99) < v51)
      {
        v92 = *(v107 + v50);
        v94 = v58;
        LOWORD(v100) = v92;
        WORD2(v100) = v58;
        WORD3(v100) = v60;
        WORD4(v100) = v62;
        v96 = v60;
        v98 = v62;
        v51 = v61 + v99;
      }

      ++v50;
    }

    while (v50 != 4);
    if (a2 + 36 < a2)
    {
      goto LABEL_91;
    }

    VQ_stage1((a2 + 36), a2 + 64, dico2_isf, &dico2_isf[1792], 7u, v107);
    v63 = 0;
    v90 = -21846;
    v64 = 1.0e30;
    v89 = -21846;
    v65 = -21846;
    do
    {
      v66 = &dico2_isf[7 * *(v107 + v63)];
      for (k = 9; k != 16; ++k)
      {
        v68 = &v66[k - 9];
        if (v68 < dico2_isf)
        {
          goto LABEL_91;
        }

        v69 = &v66[k - 8];
        if (v69 > dico23_isf_36b || v68 > v69)
        {
          goto LABEL_91;
        }

        *(&v102 + k * 4) = *(a2 + k * 4) - *v68;
      }

      v70 = sub_VQ(&v104 + 1, &v106, &dico24_isf_46b, dico25_isf_46b, 3u, 32, &v99);
      v71 = v99;
      v72 = sub_VQ(&v105, &v106, dico25_isf_46b, &xmmword_19B397AC0, 4u, 32, &v99);
      if ((v71 + v99) < v64)
      {
        v65 = *(v107 + v63);
        WORD1(v100) = v65;
        WORD5(v100) = v70;
        WORD6(v100) = v72;
        v89 = v70;
        v90 = v72;
        v64 = v71 + v99;
      }

      ++v63;
    }

    while (v63 != 4);
    push_indice(a1, 34, v92, 8);
    push_indice(a1, 35, v65, 8);
    push_indice(a1, 39, v94, 6);
    push_indice(a1, 40, v96, 7);
    push_indice(a1, 41, v98, 7);
    push_indice(a1, 42, v89, 5);
    push_indice(a1, 43, v90, 5);
    disf_2s_46b(&v100, &v100 + 14, a2, a1 + 18476, a1 + 18540);
  }

  v9 = v87;
  a4 = v88;
  a7 = v85;
  v7 = v86;
  v73 = v83;
  a6 = v84;
LABEL_80:
  if (v9 < a2)
  {
    goto LABEL_91;
  }

  if (v73 < 61)
  {
    goto LABEL_91;
  }

  reorder_isf(a2);
  v74 = v7 >= a4;
  v75 = v7 - a4;
  if (!v74 || v75 < 61)
  {
    goto LABEL_91;
  }

  isf2isp(a2, a4);
  if (*(a1 + 122148))
  {
    if (v9 - a2 <= 0x3F)
    {
      goto LABEL_91;
    }

    v76 = *a2;
    v77 = *(a2 + 16);
    v78 = *(a2 + 48);
    *(a1 + 5300) = *(a2 + 32);
    *(a1 + 5316) = v78;
    *(a1 + 5268) = v76;
    *(a1 + 5284) = v77;
    if (v75 <= 0x3F)
    {
      goto LABEL_91;
    }

    v79 = *a4;
    v80 = a4[1];
    v81 = a4[3];
    *(a1 + 5236) = a4[2];
    *(a1 + 5252) = v81;
    *(a1 + 5204) = v79;
    *(a1 + 5220) = v80;
  }

  if (*a6 < a6[2])
  {
    goto LABEL_91;
  }

  int_lsp(256, a1 + 5204, a4, *a6, a6[1], interpol_isp_amr_wb, interpol_frac_12k8, 1);
  *&v102 = a2;
  *(&v102 + 1) = v9;
  *&v103 = a2;
  *&v100 = a1 + 5268;
  *(&v100 + 1) = a1 + 5332;
  v101 = a1 + 5268;
  lsf_stab(&v102, &v100, 1);
  *a7 = v82;
}

_DWORD *sub_VQ(_DWORD *result, unint64_t a2, unint64_t a3, unint64_t a4, unsigned __int16 a5, int a6, float *a7)
{
  LOWORD(v7) = 0;
  v8 = 0;
  v9 = 4 * (a5 - 1) + 4;
  v10 = a5;
  v11 = 1.0e30;
  v12 = a3;
LABEL_2:
  v13 = 0;
  v14 = 0.0;
  v15 = v10;
  while (1)
  {
    v16 = &result[v13];
    if (&result[v13] < result)
    {
      break;
    }

    v17 = (v12 + v13 * 4);
    v18 = (v16 + 1) > a2 || v16 > v16 + 1;
    v19 = v17 + 1;
    v20 = !v18 && v17 >= a3;
    v21 = !v20 || v19 > a4;
    if (v21 || v17 > v19)
    {
      break;
    }

    v14 = v14 + ((*v16 - *v17) * (*v16 - *v17));
    ++v13;
    if (!--v15)
    {
      if (v14 < v11)
      {
        v8 = v7;
        v11 = v14;
      }

      v7 = (v7 + 1);
      v12 += v9;
      if (v7 < a6)
      {
        goto LABEL_2;
      }

      *a7 = v11;
      v23 = v8;
      v24 = (a3 + 4 * v10 * v23);
      for (i = result; v24 >= a3 && (v24 + 1) <= a4 && v24 <= v24 + 1 && i >= result && (i + 1) <= a2 && i <= i + 1; ++i)
      {
        *i = *v24++;
        if (!--v10)
        {
          return v23;
        }
      }

      break;
    }
  }

  __break(0x5519u);
  return result;
}

float *disf_ns_28b(float *result, unint64_t a2, float *a3, unint64_t a4)
{
  v4 = result + 1;
  if (result + 2 <= a2 && v4 >= result)
  {
    v6 = 0;
    v7 = &dico1_ns_28b[8 * *result];
    v8 = 1;
    while (1)
    {
      v9 = &v7[4 * v6];
      if (v9 < dico1_ns_28b)
      {
        break;
      }

      v10 = v8;
      v11 = v9 + 4 > dico2_ns_28b || v9 > v9 + 4;
      v12 = &a3[v6];
      v13 = v12 + 1;
      v14 = !v11 && v12 >= a3;
      v15 = !v14 || v13 > a4;
      if (v15 || v12 > v13)
      {
        break;
      }

      v8 = 0;
      *v12 = *v9;
      v6 = 1;
      if ((v10 & 1) == 0)
      {
        v17 = (result + 1);
        v18 = result + 3;
        v21 = result + 6 <= a2 && v17 <= v18 && v17 >= result;
        if (v17 <= a2 && v4 <= v17)
        {
          v22 = 0;
          v23 = &dico2_ns_28b[12 * *v4];
          while (1)
          {
            v24 = &v23[v22 * 4];
            v25 = &v23[v22 * 4 + 4];
            v26 = &v23[v22 * 4] < dico2_ns_28b || v25 > &dico3_ns_28b;
            v27 = v26 || v24 > v25;
            v28 = &a3[v22 + 2];
            v29 = &a3[v22 + 3];
            v30 = !v27 && v28 >= a3;
            v31 = !v30 || v29 > a4;
            if (v31 || v28 > v29)
            {
              break;
            }

            *v28 = *v24;
            if (!v21)
            {
              break;
            }

            v33 = &dico3_ns_28b + 12 * *v17 + v22 * 4;
            v34 = v33 + 4;
            v35 = v33 < &dico3_ns_28b || v34 > dico4_ns_28b;
            v36 = v35 || v33 > v34;
            v37 = &a3[v22 + 5];
            v38 = &a3[v22 + 6];
            v39 = !v36 && v37 >= a3;
            v40 = !v39 || v38 > a4;
            if (v40 || v37 > v38)
            {
              break;
            }

            *v37 = *(&dico3_ns_28b + 12 * *v17 + v22 * 4);
            if (++v22 == 3)
            {
              v42 = (result + 2);
              v45 = result + 10 <= a2 && v42 <= result + 5 && v42 >= result;
              if (v18 >= result && v42 <= a2 && v18 <= v42)
              {
                v46 = 0;
                v47 = &dico4_ns_28b[16 * *v18];
                while (1)
                {
                  v48 = &v47[v46 * 4];
                  v49 = &v47[v46 * 4 + 4];
                  v50 = &v47[v46 * 4] < dico4_ns_28b || v49 > &dico5_ns_28b;
                  v51 = v50 || v48 > v49;
                  v52 = &a3[v46 + 8];
                  result = &a3[v46 + 9];
                  v53 = !v51 && v52 >= a3;
                  v54 = !v53 || result > a4;
                  if (v54 || v52 > result)
                  {
                    break;
                  }

                  *v52 = *v48;
                  if (!v45)
                  {
                    break;
                  }

                  v56 = *v42;
                  v57 = &dico5_ns_28b + 16 * v56 + v46 * 4;
                  if (v57 < &dico5_ns_28b)
                  {
                    break;
                  }

                  result = (v57 + 4);
                  if (v57 + 4 > dico1_isf)
                  {
                    break;
                  }

                  if (v57 > result)
                  {
                    break;
                  }

                  result = &a3[v46];
                  v58 = &a3[v46 + 12];
                  if (v58 < a3)
                  {
                    break;
                  }

                  result += 13;
                  if (result > a4 || v58 > result)
                  {
                    break;
                  }

                  *v58 = *(&dico5_ns_28b + 16 * v56 + v46 * 4);
                  if (++v46 == 4)
                  {
                    v59 = &mean_isf_noise_amr_wb;
                    v60 = 16;
                    for (i = a3; i >= a3 && (i + 1) <= a4 && i <= i + 1; ++i)
                    {
                      v62 = *v59++;
                      *i = v62 + *i;
                      if (!--v60)
                      {
                        return result;
                      }
                    }

                    goto LABEL_111;
                  }
                }
              }

              goto LABEL_111;
            }
          }
        }

        break;
      }
    }
  }

LABEL_111:
  __break(0x5519u);
  return result;
}

float *VQ_stage1(float *a1, unint64_t a2, unint64_t a3, unint64_t a4, unsigned __int16 a5, void *a6)
{
  v28 = *MEMORY[0x1E69E9840];
  memset_pattern16(__b, &unk_19B0B39E0, 0x10uLL);
  v12 = 0;
  *a6 = 0x3000200010000;
  v13 = a3;
  do
  {
    v14 = v13;
    v13 += (a5 - 1) + 1;
    v15 = 0.0;
    v16 = a1;
    v17 = a5;
    do
    {
      if (v16 < a1)
      {
        goto LABEL_30;
      }

      if ((v16 + 1) > a2)
      {
        goto LABEL_30;
      }

      if (v16 > v16 + 1)
      {
        goto LABEL_30;
      }

      if (v14 < a3)
      {
        goto LABEL_30;
      }

      result = v14 + 1;
      if ((v14 + 1) > a4 || v14 > result)
      {
        goto LABEL_30;
      }

      v19 = *v16++;
      v15 = v15 + ((v19 - *v14) * (v19 - *v14));
      ++v14;
      --v17;
    }

    while (v17);
    v20 = 0;
    while (v15 >= __b[v20])
    {
      if (++v20 == 4)
      {
        goto LABEL_27;
      }
    }

    if (v20 <= 2)
    {
      v21 = a6 + 1;
      v22 = &v27;
      v23 = 3;
      while (1)
      {
        result = v22 - 1;
        if (v22 - 1 < __b)
        {
          break;
        }

        if (v22 > &v28)
        {
          break;
        }

        if (result > v22)
        {
          break;
        }

        if (v22 < __b)
        {
          break;
        }

        *v22 = *(v22 - 1);
        if ((v21 - 4) < a6)
        {
          break;
        }

        v24 = v21 - 2;
        if ((v21 - 2) > a6 + 1 || v21 - 4 > v24 || v24 < a6 || v24 > v21)
        {
          break;
        }

        --v23;
        *(v21 - 1) = *(v21 - 2);
        v21 = (v21 - 2);
        v22 = result;
        if (v23 <= v20)
        {
          goto LABEL_26;
        }
      }

LABEL_30:
      __break(0x5519u);
    }

LABEL_26:
    __b[v20] = v15;
    *(a6 + v20) = v12;
LABEL_27:
    ;
  }

  while (v12++ < 0xFF);
  return result;
}

__int16 *disf_2s_36b(__int16 *result, unint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  v5 = result + 1;
  if ((result + 1) <= a2 && v5 >= result)
  {
    v7 = &dico1_isf[36 * *result];
    v8 = 9;
    v9 = a3;
    while (1)
    {
      v10 = v7 + 4;
      v11 = v7 < dico1_isf || v10 > dico21_isf_36b;
      if (v11 || v7 > v10)
      {
        break;
      }

      v13 = *v7;
      v7 += 4;
      *v9++ = v13;
      if (!--v8)
      {
        v14 = result + 2;
        if ((result + 2) <= a2 && v5 <= v14)
        {
          v15 = &dico2_isf[7 * *v5];
          v16 = 9;
          while (1)
          {
            v17 = v15 + 1;
            v18 = v15 < dico2_isf || v17 > dico23_isf_36b;
            if (v18 || v15 > v17)
            {
              break;
            }

            v20 = *v15++;
            a3[v16++] = v20;
            if (v16 == 16)
            {
              if (v14 >= result)
              {
                v21 = result + 3;
                if ((result + 3) <= a2 && v14 <= v21)
                {
                  v22 = &dico21_isf_36b[5 * *v14];
                  v23 = 5;
                  v24 = a3;
                  while (1)
                  {
                    v25 = v22 + 1;
                    v26 = v22 < dico21_isf_36b || v25 > dico22_isf_36b;
                    if (v26 || v22 > v25)
                    {
                      break;
                    }

                    v28 = *v22++;
                    *v24 = v28 + *v24;
                    ++v24;
                    if (!--v23)
                    {
                      if (v21 >= result)
                      {
                        v29 = result + 4;
                        if ((result + 4) <= a2 && v21 <= v29)
                        {
                          v30 = &dico22_isf_36b[4 * *v21];
                          v31 = 5;
                          while (1)
                          {
                            v32 = v30 + 1;
                            v33 = v30 < dico22_isf_36b || v32 > dico2_isf;
                            if (v33 || v30 > v32)
                            {
                              break;
                            }

                            v35 = *v30++;
                            *&a3[v31] = v35 + *&a3[v31];
                            if (++v31 == 9)
                            {
                              if (v29 >= result && (result + 5) <= a2 && v29 <= result + 5)
                              {
                                v36 = &dico23_isf_36b[7 * *v29];
                                v37 = 9;
                                while (1)
                                {
                                  v38 = v36 + 1;
                                  v39 = v36 < dico23_isf_36b || v38 > dico21_isf_46b;
                                  if (v39 || v36 > v38)
                                  {
                                    break;
                                  }

                                  v41 = *v36++;
                                  *&a3[v37] = v41 + *&a3[v37];
                                  if (++v37 == 16)
                                  {
                                    for (i = 0; i != 16; ++i)
                                    {
                                      *(a4 + i * 4) = *&a3[i] + (*(a5 + i * 4) * 0.33333);
                                      *(a5 + i * 4) = a3[i];
                                      *&a3[i] = *(a4 + i * 4) + *(&E_ROM_f_mean_isf + i * 4);
                                    }

                                    return result;
                                  }
                                }
                              }

                              goto LABEL_65;
                            }
                          }
                        }
                      }

                      goto LABEL_65;
                    }
                  }
                }
              }

              goto LABEL_65;
            }
          }
        }

        break;
      }
    }
  }

LABEL_65:
  __break(0x5519u);
  return result;
}

__int16 *disf_2s_46b(__int16 *result, unint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  v5 = result + 1;
  if ((result + 1) <= a2 && v5 >= result)
  {
    v7 = &dico1_isf[36 * *result];
    v8 = 9;
    v9 = a3;
    while (1)
    {
      v10 = v7 + 4;
      v11 = v7 < dico1_isf || v10 > dico21_isf_36b;
      if (v11 || v7 > v10)
      {
        break;
      }

      v13 = *v7;
      v7 += 4;
      *v9++ = v13;
      if (!--v8)
      {
        v14 = result + 2;
        if ((result + 2) <= a2 && v5 <= v14)
        {
          v15 = &dico2_isf[7 * *v5];
          v16 = 9;
          while (1)
          {
            v17 = v15 + 1;
            v18 = v15 < dico2_isf || v17 > dico23_isf_36b;
            if (v18 || v15 > v17)
            {
              break;
            }

            v20 = *v15++;
            a3[v16++] = v20;
            if (v16 == 16)
            {
              v21 = result + 3;
              v22 = result + 4;
              v25 = (result + 4) <= a2 && v21 <= v22 && v21 >= result;
              v26 = result + 5;
              v29 = (result + 5) <= a2 && v22 <= v26 && v22 >= result;
              v30 = result + 6;
              v33 = (result + 6) <= a2 && v26 <= v30 && v26 >= result;
              if (v14 >= result && v21 <= a2 && v14 <= v21)
              {
                v34 = 0;
                v35 = &dico21_isf_46b[3 * *v14];
                v36 = a3 + 6;
                while (1)
                {
                  v37 = &v35[v34];
                  v38 = &v35[v34 + 1];
                  v39 = &v35[v34] < dico21_isf_46b || v38 > dico22_isf_46b;
                  if (v39 || v37 > v38)
                  {
                    break;
                  }

                  *&a3[v34] = *v37 + *&a3[v34];
                  if (!v25)
                  {
                    break;
                  }

                  v41 = &dico22_isf_46b[3 * *v21 + v34];
                  v42 = v41 + 4;
                  v43 = v41 < dico22_isf_46b || v42 > &dico23_isf_46b;
                  if (v43 || v41 > v42)
                  {
                    break;
                  }

                  *&v36[v34 - 3] = dico22_isf_46b[3 * *v21 + v34] + *&v36[v34 - 3];
                  if (!v29)
                  {
                    break;
                  }

                  v45 = &dico23_isf_46b + 12 * *v22 + v34 * 4;
                  if (v45 < &dico23_isf_46b)
                  {
                    break;
                  }

                  if (v45 + 4 > &dico24_isf_46b)
                  {
                    break;
                  }

                  if (v45 > v45 + 4)
                  {
                    break;
                  }

                  *&v36[v34] = *(&dico23_isf_46b + 12 * *v22 + v34 * 4) + *&v36[v34];
                  if (!v33)
                  {
                    break;
                  }

                  v46 = &dico24_isf_46b + 12 * *v26 + v34 * 4;
                  if (v46 < &dico24_isf_46b || v46 + 4 > dico25_isf_46b || v46 > v46 + 4)
                  {
                    break;
                  }

                  *&v36[v34 + 3] = *(&dico24_isf_46b + 12 * *v26 + v34 * 4) + *&v36[v34 + 3];
                  if (++v34 == 3)
                  {
                    if (v30 >= result && (result + 7) <= a2 && v30 <= result + 7)
                    {
                      v47 = &dico25_isf_46b[4 * *v30];
                      v48 = 12;
                      while (1)
                      {
                        v49 = v47 + 1;
                        v50 = v47 < dico25_isf_46b || v49 > &xmmword_19B397AC0;
                        if (v50 || v47 > v49)
                        {
                          break;
                        }

                        v52 = *v47++;
                        *&a3[v48] = v52 + *&a3[v48];
                        if (++v48 == 16)
                        {
                          for (i = 0; i != 16; ++i)
                          {
                            *(a4 + i * 4) = *&a3[i] + (*(a5 + i * 4) * 0.33333);
                            *(a5 + i * 4) = a3[i];
                            *&a3[i] = *(a4 + i * 4) + *(&E_ROM_f_mean_isf + i * 4);
                          }

                          return result;
                        }
                      }
                    }

                    goto LABEL_96;
                  }
                }
              }

              goto LABEL_96;
            }
          }
        }

        break;
      }
    }
  }

LABEL_96:
  __break(0x5519u);
  return result;
}

void analy_sp(void *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, float *a11, __int16 a12, __int16 a13, unint64_t a14, unint64_t a15, unint64_t a16, unint64_t a17, unint64_t a18, unint64_t a19)
{
  v20 = a6;
  v22 = 0;
  v23 = 1;
  v24 = -128;
  *a11 = 0.0;
  v25 = a18;
LABEL_2:
  v26 = 0;
  v111 = v23;
  v27 = a1[1];
  v28 = *a1 + v24;
  v29 = a1[2];
  while (1)
  {
    v30 = (v28 + v26 * 4);
    v31 = v28 + v26 * 4 + 4;
    v32 = v31 > v27 || v30 > v31;
    v33 = !v32 && v30 >= v29;
    v34 = !v33 || &sqrt_han_window[v26 + 1] > tipos;
    v35 = (v25 + v26 * 4);
    v36 = v25 + v26 * 4 + 4;
    v37 = !v34 && v35 >= a18;
    v38 = !v37 || v36 > a19;
    if (v38 || v35 > v36)
    {
      break;
    }

    *v35 = *v30 * *&sqrt_han_window[v26++];
    if (v26 == 128)
    {
      v40 = 0;
      v41 = v28 + 512;
      v42 = sqrt_han_window;
      while (1)
      {
        v43 = v41 + v40;
        v44 = v41 + v40 + 4;
        if (v44 > v27)
        {
          goto LABEL_149;
        }

        if (v43 > v44)
        {
          goto LABEL_149;
        }

        if (v43 < v29)
        {
          goto LABEL_149;
        }

        if (v42 + 128 < sqrt_han_window)
        {
          goto LABEL_149;
        }

        if (v42 + 129 > tipos)
        {
          goto LABEL_149;
        }

        if (v42 + 128 > v42 + 129)
        {
          goto LABEL_149;
        }

        v45 = (v25 + v40 + 512);
        if (v45 < a18)
        {
          goto LABEL_149;
        }

        v46 = v25 + v40 + 516;
        if (v46 > a19 || v45 > v46)
        {
          goto LABEL_149;
        }

        *v45 = *(v41 + v40) * *(v42 + 128);
        v40 += 4;
        --v42;
        if (v40 == 512)
        {
          if (a19 >= v25 && v25 >= a18 && (a19 - v25) >= 1021)
          {
            v112 = v22;
            fft_rel(v25, 256, 8);
            if (v20 >= a6)
            {
              v47 = a9 + 4 * (74 * v112);
              if (v47 >= a9)
              {
                v48 = (a2 + 4 * (v112 << 7));
                if (v48 >= a2)
                {
                  v49 = a14 + 4 * (20 * v112);
                  if (v49 >= a14)
                  {
                    v50 = 0;
                    v51 = (v25 + 4);
                    v52 = (v25 + 1020);
                    v53 = 50.0;
                    while (1)
                    {
                      v54 = (v20 + 4 * v50);
                      v55 = v54 + 1;
                      v56 = v54 < v20 || v55 > a7;
                      if (v56 || v54 > v55)
                      {
                        break;
                      }

                      *v54 = 0.0;
                      v58 = crit_bands[v50];
                      if (v53 <= v58)
                      {
                        v61 = 0;
                        LOWORD(v59) = 0;
                        while (1)
                        {
                          v62 = &v51[v61 / 4];
                          if (&v51[v61 / 4] < a18)
                          {
                            goto LABEL_149;
                          }

                          if ((v62 + 1) > a19)
                          {
                            goto LABEL_149;
                          }

                          if (v62 > v62 + 1)
                          {
                            goto LABEL_149;
                          }

                          if (v52 < a18)
                          {
                            goto LABEL_149;
                          }

                          if ((v52 + 1) > a19)
                          {
                            goto LABEL_149;
                          }

                          if (v52 > v52 + 1)
                          {
                            goto LABEL_149;
                          }

                          v63 = v47 + v61 + 4;
                          if (v63 > a10)
                          {
                            goto LABEL_149;
                          }

                          if (v47 + v61 > v63)
                          {
                            goto LABEL_149;
                          }

                          v64 = ((*v52 * *v52) + (*v62 * *v62)) * 0.000061035;
                          *(v47 + v61) = v64;
                          v65 = &v48[v61 / 4 + 1];
                          if (v65 < &v48[v61 / 4] || v65 > a3)
                          {
                            goto LABEL_149;
                          }

                          v48[v61 / 4] = v64;
                          v60 = *(v47 + v61) + *v54;
                          *v54 = v60;
                          --v52;
                          v53 = v53 + 50.0;
                          LOWORD(v59) = v59 + 1;
                          v61 += 4;
                          if (v53 > v58)
                          {
                            v47 += v61;
                            v48 = (v48 + v61);
                            v51 = (v51 + v61);
                            v59 = v59;
                            goto LABEL_64;
                          }
                        }
                      }

                      v59 = 0;
                      v60 = 0.0;
LABEL_64:
                      v66 = &inv_tbl[v59];
                      if (v66 < inv_tbl)
                      {
                        goto LABEL_149;
                      }

                      if (v66 + 1 > dicnlg2)
                      {
                        goto LABEL_149;
                      }

                      if (v66 > v66 + 1)
                      {
                        goto LABEL_149;
                      }

                      v67 = v60 * *v66;
                      *v54 = v67;
                      v68 = (v49 + 4 * v50);
                      if (v68 < v49 || (v68 + 1) > a15 || v68 > v68 + 1)
                      {
                        goto LABEL_149;
                      }

                      *v68 = v67;
                      if (*v54 < 0.0035)
                      {
                        *v54 = 0.0035;
                      }

                      if (++v50 == 17)
                      {
                        v69 = 17;
                        while (1)
                        {
                          v70 = (v20 + 4 * v69);
                          v71 = v70 + 1;
                          v72 = v70 < v20 || v71 > a7;
                          if (v72 || v70 > v71)
                          {
                            goto LABEL_149;
                          }

                          *v70 = 0.0;
                          v74 = &crit_bands[v69];
                          if (v74 < crit_bands)
                          {
                            goto LABEL_149;
                          }

                          if (v74 + 1 > rot_vec_ana_re_L10 || v74 > v74 + 1)
                          {
                            goto LABEL_149;
                          }

                          v76 = *v74;
                          if (v53 <= *v74)
                          {
                            LOWORD(v77) = 0;
                            while (v51 >= a18)
                            {
                              v79 = v51 + 1;
                              if ((v51 + 1) > a19)
                              {
                                break;
                              }

                              if (v51 > v79)
                              {
                                break;
                              }

                              if (v52 < a18)
                              {
                                break;
                              }

                              if ((v52 + 1) > a19)
                              {
                                break;
                              }

                              if (v52 > v52 + 1)
                              {
                                break;
                              }

                              v80 = v48 + 1;
                              if ((v48 + 1) > a3 || v48 > v80)
                              {
                                break;
                              }

                              v81 = *v52--;
                              v82 = ((v81 * v81) + (*v51 * *v51)) * 0.000061035;
                              *v48 = v82;
                              v78 = *v70 + v82;
                              *v70 = v78;
                              v53 = v53 + 50.0;
                              LOWORD(v77) = v77 + 1;
                              ++v51;
                              ++v48;
                              if (v53 > v76)
                              {
                                v77 = v77;
                                v48 = v80;
                                v51 = v79;
                                goto LABEL_99;
                              }
                            }

                            goto LABEL_149;
                          }

                          v77 = 0;
                          v78 = 0.0;
LABEL_99:
                          v83 = &inv_tbl[v77];
                          if (v83 < inv_tbl)
                          {
                            goto LABEL_149;
                          }

                          if (v83 + 1 > dicnlg2)
                          {
                            goto LABEL_149;
                          }

                          if (v83 > v83 + 1)
                          {
                            goto LABEL_149;
                          }

                          v84 = v78 * *v83;
                          *v70 = v84;
                          v85 = (v49 + 4 * v69);
                          if (v85 < v49 || (v85 + 1) > a15 || v85 > v85 + 1)
                          {
                            goto LABEL_149;
                          }

                          *v85 = v84;
                          if (*v70 < 0.0035)
                          {
                            *v70 = 0.0035;
                          }

                          if (++v69 == 20)
                          {
                            v86 = *a11;
                            if (a12 > a13)
                            {
LABEL_118:
                              v23 = 0;
                              *a11 = v86;
                              v20 += 80;
                              v25 += 1024;
                              v22 = 1;
                              v24 = 384;
                              if (v111)
                              {
                                goto LABEL_2;
                              }

                              v92 = log10((v86 * 0.5));
                              *a11 = v92 * 10.0;
                              if (a2 + 504 >= a2)
                              {
                                v93 = a2 + 508;
                                if (a2 + 508 <= a3 && a2 + 504 <= v93 && v93 >= a2 && a2 + 512 <= a3 && v93 <= a2 + 512)
                                {
                                  *(a2 + 508) = *(a2 + 504);
                                  v94 = (a2 + 1016);
                                  if (a2 + 1016 >= a2)
                                  {
                                    v95 = (a2 + 1020);
                                    if (a2 + 1020 <= a3 && v94 <= v95 && v95 >= a2 && a2 + 1024 <= a3 && v95 <= a2 + 1024)
                                    {
                                      v96 = 0;
                                      *v95 = *v94;
                                      while (1)
                                      {
                                        v97 = (a2 + v96);
                                        v98 = (a4 + v96);
                                        v99 = a4 + v96 + 4;
                                        v100 = a2 + v96 + 4 <= a3 && v98 >= a4;
                                        v101 = !v100 || v99 > a5;
                                        if (v101 || v98 > v99)
                                        {
                                          break;
                                        }

                                        v103 = *v97;
                                        *v98 = *v97;
                                        if ((v97 + 129) > a3)
                                        {
                                          break;
                                        }

                                        if (v97 + 128 > v97 + 129)
                                        {
                                          break;
                                        }

                                        v104 = (a16 + v96);
                                        if (a16 + v96 < a16 || (v104 + 1) > a17 || v104 > v104 + 1)
                                        {
                                          break;
                                        }

                                        v105 = (((v103 + 0.00001) + v97[128]) + 0.00001) * 0.5;
                                        *v104 = v105;
                                        v106 = log(v105) * 10.0;
                                        *v97 = v106;
                                        v96 += 4;
                                        if (v96 == 512)
                                        {
                                          return;
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }

                            else
                            {
                              LOWORD(v87) = a12;
                              while (1)
                              {
                                v88 = (v20 + 4 * v87);
                                v89 = v88 + 1;
                                v90 = v88 < v20 || v89 > a7;
                                if (v90 || v88 > v89)
                                {
                                  break;
                                }

                                v86 = v86 + *v88;
                                v87 = (v87 + 1);
                                if (v87 > a13)
                                {
                                  goto LABEL_118;
                                }
                              }
                            }

                            goto LABEL_149;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          goto LABEL_149;
        }
      }
    }
  }

LABEL_149:
  __break(0x5519u);
}

uint64_t noise_est_pre(uint64_t result, float *a2, float *a3, float *a4, float *a5, _DWORD *a6, float *a7, int a8, float a9, float *a10)
{
  if (result > 1)
  {
    *a10 = (*a10 * 0.8) + (a9 * 0.2);
    v11 = *a3 + -0.04;
    if (v11 < a9)
    {
      v11 = a9;
    }

    *a3 = v11;
    v12 = *a2 + 0.08;
    *a2 = v12;
    if (a8 >= 51)
    {
      if (result <= 0x95 && (*a3 - *a10) < 3.0)
      {
        v13 = (*a5 - v12) * 0.1;
        if (v13 > 2.0)
        {
          v13 = 2.0;
        }

        v12 = v12 + v13;
        *a2 = v12;
      }

      v14 = *a5 - v12;
      if (a8 < 0xFB || v14 <= 30.0)
      {
        if (v14 <= 10.0)
        {
          goto LABEL_17;
        }

        v12 = v12 + 0.08;
      }

      else
      {
        v12 = v12 + (v14 * 0.02);
      }

      *a2 = v12;
    }

LABEL_17:
    if (v12 > a9)
    {
      *a2 = a9;
      v12 = a9;
    }

    if (result <= 0x63 && v12 < *a4)
    {
      v15 = *a4 * 0.9;
      v16 = 0.1;
LABEL_30:
      *a4 = v15 + (v12 * v16);
      v10 = (*a7 * 0.9) + ((*a3 - *a2) * 0.1);
      goto LABEL_31;
    }

    if (a8 <= 30)
    {
      v17 = *a4;
    }

    else
    {
      v17 = *a4;
      if (result < 0x96 || (*a5 - v12) > 30.0)
      {
LABEL_28:
        v15 = v17 * 0.97;
        v16 = 0.03;
        goto LABEL_30;
      }
    }

    if ((v17 - v12) <= 30.0)
    {
      v15 = v17 * 0.98;
      v16 = 0.02;
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  *a10 = a9;
  *a3 = a9;
  *a2 = a9;
  *a4 = a9;
  *a5 = a9;
  v10 = 0.0;
  *a6 = 0;
LABEL_31:
  *a7 = v10;
  return result;
}

BOOL wb_vad(uint64_t a1, float *a2, unint64_t a3, __int16 *a4, _WORD *a5, _WORD *a6, _WORD *a7, float *a8, __int16 *a9, _WORD *a10)
{
  v10 = a8;
  v11 = a7;
  v12 = a4;
  v14 = a1;
  *v181 = *MEMORY[0x1E69E9840];
  v15 = a1 + 24524;
  *&v16 = -1;
  *(&v16 + 1) = -1;
  v179[3] = v16;
  v180 = v16;
  v179[1] = v16;
  v179[2] = v16;
  v179[0] = v16;
  v17 = *(a1 + 128);
  if (*(a1 + 128))
  {
    v18 = 0;
    v19 = 1.3;
    if (v17 != 1)
    {
      v19 = 1.75;
    }

    v168 = v19;
    v20 = 0.8;
    if (v17 != 1)
    {
      v20 = 0.25;
    }

    v169 = v20;
    v167 = 2.5;
    v161 = 16.1;
    v162 = 35.0;
    v159 = 1.65;
    v160 = 2.05;
    v21 = 19;
    *&v166 = 0.2;
  }

  else
  {
    v161 = 16.0;
    v162 = 20.0;
    v21 = 16;
    v18 = 1;
    v168 = 1.75;
    v169 = 0.25;
    v160 = 4.0;
    v159 = 1.15;
    *&v166 = 0.05;
    v167 = 2.65;
  }

  *(a1 + 18632) = v18;
  *(a1 + 18634) = v21;
  if (*(a1 + 150))
  {
    *a5 = 0;
    *a6 = 0;
    *a7 = 0;
  }

  *a8 = 0.0;
  v22 = *(a1 + 24804) - *(a1 + 24992);
  v23 = &qword_19B0B0000;
  if (v22 > 24.0)
  {
    v158 = 0;
    v163 = fminf((v22 * 2.4) + -42.2, 80.0);
    *&v25 = 0.0;
    v171 = 0.0;
    *&v172 = 0.0;
    v24 = 6;
    goto LABEL_14;
  }

  if (v22 > 18.0)
  {
    v163 = fminf((v22 * 2.4) + -40.2, 80.0);
    v24 = 6;
    v171 = 0.1;
    *&v25 = 0.2;
    v158 = 1;
    *&v172 = 0.2;
LABEL_14:
    v170 = *&v25;
    goto LABEL_16;
  }

  v163 = fmaxf((v22 * 2.5) + -10.0, 1.0);
  v24 = 9;
  v171 = 0.2;
  v170 = 0.4;
  *&v172 = 0.3;
  v158 = 2;
LABEL_16:
  v26 = *(a1 + 18632);
  v155 = (a1 + 18610);
  v27 = *(a1 + 18634);
  v173 = (a1 + 24524);
  if (v26 <= *(a1 + 18634))
  {
    v150 = *(a1 + 24804) - *(a1 + 24992);
    v165 = *(a1 + 18634);
    v28 = 0;
    v37 = a2 + 20;
    v38 = a1 + 24604;
    v164 = a1 + 24444;
    v39 = 1.0;
    v30 = 0.0;
    v40 = 2.0;
    LOWORD(v41) = 20;
    v177 = 0.0;
    v178 = 0.0;
    v33 = 0.0;
    v42 = a2;
    v43 = (a1 + 24524);
    v44 = 1.0;
    v45 = 1.0;
    v34 = 0.0;
    v35 = 0.0;
    v46 = 0.0;
    v36 = 0.0;
    do
    {
      if (v42 < a2)
      {
        goto LABEL_258;
      }

      v47 = v42 + 1;
      if ((v42 + 1) > a3)
      {
        goto LABEL_258;
      }

      if (v42 > v47)
      {
        goto LABEL_258;
      }

      if (v37 < a2)
      {
        goto LABEL_258;
      }

      v48 = v37 + 1;
      if ((v37 + 1) > a3)
      {
        goto LABEL_258;
      }

      if (v37 > v48)
      {
        goto LABEL_258;
      }

      v49 = (v164 + 4 * v26);
      if (v49 < v164 || (v49 + 1) > v15 || v49 > v49 + 1)
      {
        goto LABEL_258;
      }

      v50 = *v42;
      v51 = *v37;
      v52 = ((*v42 * 0.4) + (*v49 * 0.2)) + (*v37 * 0.4);
      v53 = v43 + 1;
      v54 = (v43 + 1) > v38 || v43 > v53;
      v55 = !v54 && v43 >= v15;
      v56 = v55;
      if (v50 <= v51)
      {
        if (!v56)
        {
          goto LABEL_258;
        }

        v59 = v179 + 4 * v26;
        if (v59 < v179 || v59 + 4 > v181 || v59 > v59 + 4)
        {
          goto LABEL_258;
        }

        v58 = ((v50 * 0.3) + (*v49 * 0.2)) + (v51 * 0.5);
      }

      else
      {
        if (!v56)
        {
          goto LABEL_258;
        }

        v57 = v179 + 4 * v26;
        if (v57 < v179)
        {
          goto LABEL_258;
        }

        if (v57 + 4 > v181)
        {
          goto LABEL_258;
        }

        v58 = v52;
        if (v57 > v57 + 4)
        {
          goto LABEL_258;
        }
      }

      v174 = v52;
      v175 = v28;
      v176 = v35;
      v60 = v33;
      v61 = v44;
      v62 = v30;
      v63 = a3;
      v64 = v58 / *v43;
      v65 = (v41 - (v64 < v40));
      if (v64 < v39)
      {
        v64 = v39;
      }

      v66 = log10(v64);
      v40 = 2.0;
      v67 = 0;
      v68 = v66;
      *(v179 + v26) = v68;
      v177 = v177 + v68;
      v69 = *&v172;
      if (v26 >= 0x12u)
      {
        v69 = v170;
      }

      if (v26 < 7u)
      {
        v69 = v170;
      }

      if (v26 < 2)
      {
        v69 = v171;
      }

      v70 = v69 + v68;
      v71 = fminf(v70, 2.0);
      v72 = 1.0;
      do
      {
        v72 = v71 * v72;
        ++v67;
      }

      while (v24 > v67);
      v73 = 0;
      if (v26 < 7)
      {
        v70 = v70 + 0.4;
      }

      v74 = fminf(v70, 2.0);
      v30 = v62 + v72;
      v75 = v26 == 19 ? v72 : v61;
      if (v26 == 18)
      {
        v45 = v72;
        v44 = v61;
      }

      else
      {
        v44 = v75;
      }

      v76 = 1.0;
      v15 = v173;
      do
      {
        v76 = v74 * v76;
        ++v73;
      }

      while (v24 > v73);
      v77 = v173 + v26;
      v39 = 1.0;
      v35 = v176;
      v41 = v65;
      v28 = v175;
      if (v77 < v173 || (v77 + 1) > v38 || v77 > v77 + 1)
      {
        goto LABEL_258;
      }

      a3 = v63;
      v178 = v178 + v76;
      v78 = *v77;
      v79 = v174 / *v77;
      v80 = *&v166;
      if (v79 >= v167)
      {
        v80 = v174 / *v77;
      }

      v46 = v46 + v80;
      v81 = v169;
      if (v79 >= v168)
      {
        v81 = v174 / *v77;
      }

      v36 = v36 + v81;
      if (v79 < 1.0)
      {
        v79 = 1.0;
      }

      *(v179 + v26) = v79;
      v82 = v176 + v78;
      v83 = v34 + v78;
      if (v26 >= 3)
      {
        v34 = v83;
      }

      else
      {
        v35 = v82;
      }

      if (v79 <= v60)
      {
        v33 = v60;
      }

      else
      {
        v28 = v26;
        v33 = v79;
      }

      v26 = (v26 + 1);
      v42 = v47;
      v37 = v48;
      v43 = v53;
    }

    while (v26 <= v165);
    v32 = v41 > 13;
    v29 = v46;
    v27 = v165;
    v31 = v165 == 19;
    if (v165 == 19)
    {
      v11 = a7;
      v12 = a4;
      v23 = &qword_19B0B0000;
      if (*(&v180 + 2) <= 5.0)
      {
        v14 = a1;
        v10 = a8;
      }

      else
      {
        v14 = a1;
        v10 = a8;
        if (*(&v180 + 3) > 5.0)
        {
          v31 = 1;
          if (((v30 + ((v45 + v44) * 3.0)) * 0.77) > v30)
          {
            v84 = (v30 + ((v45 + v44) * 3.0)) * 0.77;
          }

          else
          {
            v84 = v30;
          }

          goto LABEL_100;
        }
      }
    }

    else
    {
      v12 = a4;
      v14 = a1;
      v10 = a8;
      v11 = a7;
      v23 = &qword_19B0B0000;
    }

    v22 = v150;
  }

  else
  {
    LOWORD(v28) = 0;
    v29 = 0.0;
    v30 = 0.0;
    v31 = v27 == 19;
    v32 = 1;
    v177 = 0.0;
    v178 = 0.0;
    v33 = 0.0;
    v34 = 0.0;
    v35 = 0.0;
    v36 = 0.0;
  }

  v85 = (v22 * 2.5) + -15.5;
  v54 = v85 <= 0.0;
  v86 = v85 + v30;
  if (v54)
  {
    v86 = v30;
  }

  if (!v32)
  {
    v86 = v30;
  }

  if (v22 <= 24.0)
  {
    v84 = v86;
  }

  else
  {
    v84 = v30;
  }

LABEL_100:
  v87 = (v14 + 57012);
  if (v31 && v33 < 50.0 && (v28 - 4) <= 0xCu)
  {
    if (v35 > (v34 * 10.0) || v33 < 10.0)
    {
      v36 = v36 - v33;
    }

    else
    {
      if (v35 > (v34 * 6.0) || v33 < 25.0)
      {
        v89 = 1.01;
      }

      else
      {
        v89 = 1.02;
      }

      v36 = (v36 - v33) * v89;
    }
  }

  *v87 = (v36 * 0.5) + (*v87 * 0.5);
  v90 = log10(v36);
  v91 = log10(v29);
  v92 = v91 * 10.0;
  *v10 = v91 * 10.0;
  v93 = v173;
  v94 = v173[35].f32[0];
  v95 = v94 - v173[58].f32[1];
  v96 = v173[36].f32[0];
  if (v95 < v96)
  {
    if ((v95 + 1.0) > v96)
    {
      v95 = v173[36].f32[0];
    }

    else
    {
      v95 = v95 + 1.0;
    }
  }

  v97 = v90;
  v98 = *(v23 + 399);
  v99 = (v161 + (v95 * v98)) + (v160 * (v173[35].f32[1] - v159));
  if (v95 > 20.0)
  {
    v101 = (v99 + ((v95 + -20.0) * 0.3)) > 24.1 && v95 > 40.0;
    if (v94 < 45.0 && v101 && v27 == 16)
    {
      v99 = 24.1;
    }

    else
    {
      v99 = v99 + ((v95 + -20.0) * 0.3);
    }
  }

  v102 = v97 * 10.0;
  if (*(v14 + 128))
  {
    if (v95 >= v162)
    {
      v106 = 3;
    }

    else
    {
      v103 = *v155;
      if (v28 > 4 || (v103 < 2 || *(v14 + 150)) && (*(v14 + 129778) < 2 || !*(v14 + 150)))
      {
        if ((v103 > 1 || v33 >= 25.0 || *(v14 + 150)) && (*(v14 + 129778) > 1 || v33 >= 25.0 || !*(v14 + 150)))
        {
          v107 = (v33 * -0.01) + 0.6;
          if (v107 < 0.0)
          {
            v107 = 0.0;
          }
        }

        else
        {
          v107 = (v33 * -0.04) + 1.0;
        }

        v99 = v107 + v99;
      }

      else
      {
        v99 = v99 + -1.0;
        v104 = log10(*v87);
        v93 = v173;
        *&v104 = v104;
        v102 = *&v104 * 10.0;
      }

      v106 = 4;
    }

    *v12 = 0;
    if (v84 > v163)
    {
      *v12 = 1;
      v109 = ++v93[43].i16[2];
      if (v109 < 3)
      {
        v110 = v93[43].i16[3];
        if (v110 <= 19 && v93[43].i16[3])
        {
          v93[43].i16[3] = v110 + 1;
        }
      }

      else
      {
        v93[43].i32[1] = 3;
      }

      v111 = v93[42].i16[0];
      v112 = __OFSUB__(v111, 1);
      v113 = v111 - 1;
      if (v113 < 0 == v112)
      {
        v93[42].i16[0] = v113;
      }
    }

    else
    {
      v93[43].i16[2] = 0;
    }

    if (v93[42].i16[1] >= 4)
    {
      v114 = &accf::hangover_sf_tbl[2 * v158];
      if (v93[41].f32[1] >= 40.0)
      {
        if (v114 < accf::hangover_sf_tbl || v114 + 2 > accf::hangover_hd_tbl || (v115 = &accf::hangover_sf_tbl[2 * v158], v114 > v114 + 2))
        {
LABEL_258:
          __break(0x5519u);
        }
      }

      else
      {
        v115 = (v114 + 6);
        if (v114 + 6 < accf::hangover_sf_tbl)
        {
          goto LABEL_258;
        }

        v116 = v114 + 8;
        if (v116 > accf::hangover_hd_tbl || v115 > v116)
        {
          goto LABEL_258;
        }
      }

      v93[42].i16[0] = *v115;
    }

    v117 = &accf::hangover_hd_tbl[v158];
    if (v117 < accf::hangover_hd_tbl || v117 + 1 > accf::kScaleCoreDCTFac || v117 > v117 + 1)
    {
      goto LABEL_258;
    }

    v118 = *v117;
    v119 = v93[41].f32[1];
    if (v119 < 40.0)
    {
      LOWORD(v118) = (v118 >> 1) + 1;
    }

    if (v84 > v163)
    {
      goto LABEL_187;
    }

    v120 = v93[42].i16[0];
    v121 = v120 - 1;
    if (v120 >= 1)
    {
      v120 = 0;
      if (v178 <= v163)
      {
        v121 = 0;
      }

      v93[42].i16[0] = v121;
      if (v178 > v163)
      {
LABEL_187:
        *v12 = 0;
        v124 = 1;
        if (v102 > v99)
        {
          *v12 = 1;
          v125 = ++v93[34].i16[2];
          if (v125 < 3)
          {
            v126 = v93[34].i16[3];
            v124 = 1;
            if (v126 <= 9)
            {
              result = 1;
              if (v93[34].i16[3])
              {
                v93[34].i16[3] = v126 + 1;
              }

              goto LABEL_239;
            }
          }

          else
          {
            v93[34].i32[1] = 3;
            v124 = 1;
          }

          goto LABEL_238;
        }

LABEL_226:
        v93[34].i16[2] = 0;
        v136 = v93[34].i16[3];
        if (v136 <= 9)
        {
          LOWORD(v136) = v136 + 1;
          v93[34].i16[3] = v136;
        }

        if (v106 < v136)
        {
          result = 0;
LABEL_239:
          if (v92 > v99)
          {
            v137 = v124;
          }

          else
          {
            v137 = 0;
          }

          *a9 = v137;
          goto LABEL_243;
        }

        if (v95 < v162 && v136 >= 2 && *(v14 + 150))
        {
          *a5 = 1;
        }

        if (v95 >= v162 && *(v14 + 150))
        {
          result = 1;
          if (v93[34].i16[3] >= 2)
          {
            *a6 = 1;
          }

          goto LABEL_239;
        }

LABEL_238:
        result = 1;
        goto LABEL_239;
      }
    }

    v122 = v118;
    v123 = v93[43].i16[3];
    if (v123 < v122 && !v120)
    {
      v93[43].i16[3] = v123 + 1;
      goto LABEL_187;
    }

    if (v93[21].i16[0] < 1)
    {
LABEL_225:
      v124 = 0;
      *v12 = 0;
      goto LABEL_226;
    }

    v128 = v93[42].i16[2]--;
    if (v177 <= v119)
    {
      if (v128 >= 1)
      {
        if (v177 >= (v119 + -30.0))
        {
          v129 = v177 * 0.05;
        }

        else
        {
          v129 = (v119 + -30.0) * 0.05;
        }

        v134 = 0.95;
        goto LABEL_218;
      }

      if (v177 >= (v119 + -10.0))
      {
        v133 = v177 * 0.00080001;
      }

      else
      {
        v133 = (v119 + -10.0) * 0.00080001;
      }

      v135 = 0.9992;
    }

    else
    {
      if (v128 >= 1)
      {
        if (v177 <= (v119 + 50.0))
        {
          v129 = v177 * 0.1;
        }

        else
        {
          v129 = (v119 + 50.0) * 0.1;
        }

        v134 = 0.9;
LABEL_218:
        v93[41].f32[1] = v129 + (v119 * v134);
        goto LABEL_225;
      }

      if (v177 <= (v119 + 10.0))
      {
        v133 = v177 * 0.01;
      }

      else
      {
        v133 = (v119 + 10.0) * 0.01;
      }

      v135 = 0.99;
    }

    v93[41].f32[1] = v133 + (v119 * v135);
    if ((v128 - 1) < 0)
    {
      v93[42].i16[2] = 0;
    }

    goto LABEL_225;
  }

  *a9 = v92 > v99;
  *v12 = 0;
  if (v102 <= v99)
  {
    v173[34].i16[2] = 0;
  }

  else
  {
    v105 = ++v173[34].i16[2];
    if (v105 >= 3)
    {
      v173[34].i32[1] = 3;
    }

    *v12 = 1;
  }

  v108 = v173[34].i16[3];
  if (v108 <= 7)
  {
    v173[34].i16[3] = v108 + 1;
    if (v95 >= 19.0)
    {
      if (v95 < 35.0)
      {
        v99 = v99 + -2.0;
      }
    }

    else
    {
      v99 = v99 + -5.2;
    }
  }

  v130 = flt_19B0B0180[*(v14 + 144) == 0];
  if (v95 >= v162)
  {
    v130 = -1.5;
  }

  v131 = v99 + v130;
  result = v102 > v99;
  if (v102 < v99 && v102 > v131)
  {
    *v12 = 0;
    result = 1;
    *v11 = 1;
  }

LABEL_243:
  *a10 = v95 < 35.0;
  v138 = vmla_n_f32(vmul_f32(v93[22], 0x3F7D70A43F4CCCCDLL), 0x3C23D70A3E4CCCCDLL, *v12);
  v139.i32[0] = v138.i32[1];
  if (v138.f32[0] <= v138.f32[1])
  {
    v139.f32[0] = v138.f32[0];
  }

  v139.f32[1] = *a9;
  v140 = vmla_f32(vmul_f32(v93[23], 0x3F4CCCCD3F666666), 0x3E4CCCCD3DCCCCCDLL, v139);
  v141 = v93[24].f32[1];
  v139.f32[0] = (v93[24].f32[0] * 0.99) + (v139.f32[1] * 0.01);
  *(v14 + 39876) = v102;
  *(v14 + 39880) = v99;
  v93[22] = v138;
  v93[23] = v140;
  v143 = v140.f32[1];
  if (v140.f32[1] > v139.f32[0])
  {
    v143 = v139.f32[0];
  }

  v93[24].i32[0] = v139.i32[0];
  v93[24].f32[1] = (v141 * 0.9) + (v143 * v98);
  v144 = *(v14 + 24824);
  if ((v144 & 0x40000) != 0)
  {
    --v93[40].i16[2];
  }

  v145 = 2 * (v144 & 0x3FFFFFFF);
  *(v14 + 24824) = v145;
  v146 = *(v14 + 24832);
  if ((v146 & 0x40000000) != 0)
  {
    *(v14 + 24824) = v145 | 1;
  }

  v147 = 2 * (v146 & 0x3FFFFFFF);
  *(v14 + 24832) = v147;
  if (result)
  {
    *(v14 + 24832) = v147 | 1;
    ++v93[40].i16[2];
  }

  v148 = *(v14 + 24840);
  if ((v148 & 0x8000) != 0)
  {
    --v93[40].i16[3];
  }

  v149 = 2 * (v148 & 0x3FFFFFFF);
  *(v14 + 24840) = v149;
  if (*v12)
  {
    *(v14 + 24840) = v149 | 1;
    ++v93[40].i16[3];
  }

  return result;
}

BOOL dtx_hangover_addition(uint64_t a1, int a2, int a3, __int16 a4, _WORD *a5, float a6)
{
  v6 = a1 + 24720;
  if (a6 < 16.0 && *(a1 + 128) || *v6 > 0.95)
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v8 = *(a1 + 24850);
  v9 = v7 + 2;
  if (v8 <= 12)
  {
    v9 = v7;
  }

  v10 = *(a1 + 24848);
  if (v10 <= 40)
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 + 5;
  }

  if (v11 >= 9)
  {
    v12 = 9;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(a1 + 88);
  if (v13 == 4)
  {
    v14 = 2;
  }

  else
  {
    v14 = 3;
  }

  if (a6 <= 25.0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 2;
  }

  if (!*(a1 + 128))
  {
    v15 = v14;
  }

  if (v11 > v15 && (v8 < 7 || a6 > 16.0 && *v6 < 0.85))
  {
    v12 = v15;
  }

  if (v13 != 4)
  {
    v12 = (v12 - a4) & ~((v12 - a4) >> 15);
  }

  if (a3 == 1)
  {
    v16 = 0;
    if (v10 <= 45 && *(a1 + 24800) <= 2)
    {
      v17 = *(a1 + 24852);
      if (v17 > 9 || !*(a1 + 24852))
      {
        goto LABEL_36;
      }

      v16 = v17 + 1;
    }

    *(a1 + 24852) = v16;
LABEL_36:
    *(a1 + 36814) = 0;
    if (*v6 > 0.98 && v10 >= 49 && v8 >= 15 && *(a1 + 24740) > 40.0)
    {
      *(a1 + 24854) = 0;
    }

    v18 = *(a1 + 24854);
    result = 1;
    if (v18 <= 19 && v18)
    {
      *(v6 + 134) = v18 + 1;
    }

    goto LABEL_57;
  }

  v20 = *(a1 + 24852);
  if (v20 <= 9)
  {
    LOWORD(v20) = v20 + 1;
    *(a1 + 24852) = v20;
  }

  v21 = *(a1 + 24854);
  if (v21 <= 19)
  {
    LOWORD(v21) = v21 + 1;
    *(a1 + 24854) = v21;
  }

  if (*(a1 + 36814) == 1)
  {
    LOWORD(v20) = 10;
    *(a1 + 24802) = 10;
    *(a1 + 24852) = 10;
    *(a1 + 36814) = 0;
    if (*(a1 + 24740) < 20.0)
    {
      LOWORD(v21) = 20;
      *(a1 + 24854) = 20;
    }
  }

  result = v21 < 16 || v20 <= v12;
LABEL_57:
  if (!a2 && result)
  {
    *a5 = 1;
  }

  return result;
}

void *bw_detect(uint64_t a1, float *a2, unint64_t a3, int a4, unint64_t a5, unint64_t a6)
{
  v11 = a1;
  v138 = *MEMORY[0x1E69E9840];
  v12 = a1 + 67420;
  memset(__b, 255, sizeof(__b));
  result = memset(v136, 255, sizeof(v136));
  v134 = NAN;
  *&v14 = -1;
  *(&v14 + 1) = -1;
  v132 = v14;
  v133 = v14;
  v131 = v14;
  v130 = NAN;
  __C = v14;
  v129 = v14;
  v126 = NAN;
  v125 = -1;
  v15 = *(v11 + 56);
  if (v15 < 8001)
  {
    goto LABEL_196;
  }

  v122 = v11;
  v123 = a5;
  v121 = v12;
  if (!a5)
  {
    if (v15 == 16000)
    {
      v124 = 1;
      v25 = 60;
      v26 = 5;
    }

    else if (v15 == 32000)
    {
      v124 = 2;
      v25 = 30;
      v26 = 10;
    }

    else
    {
      v124 = 3;
      v25 = 20;
      v26 = 13;
    }

    v27 = 0;
    v28 = a2;
    v29 = &hann_window_320;
    do
    {
      if (v28 < a2)
      {
        goto LABEL_231;
      }

      v30 = v28 + 1;
      if ((v28 + 1) > a3)
      {
        goto LABEL_231;
      }

      if (v28 > v30)
      {
        goto LABEL_231;
      }

      v31 = v29++;
      if (v29 > edct_table_600)
      {
        goto LABEL_231;
      }

      v136[v27++] = *v28++ * *v31;
    }

    while (v27 != 160);
    for (i = 160; i != 320; ++i)
    {
      v33 = &v30[i - 160];
      v34 = v31 + 1;
      v35 = &v30[i - 159];
      if (v33 < a2 || v35 > a3 || v33 > v35 || v31 < &hann_window_320 || v34 > edct_table_600 || v31 > v34)
      {
        goto LABEL_231;
      }

      v41 = *v31--;
      v136[i] = *v33 * v41;
    }

    edct(v136);
    __A = 0.001;
    vDSP_vfill(&__A, &v131, 1, v26);
    v42 = 0;
    while (1)
    {
      v43 = v42;
      v44 = &bwd_start_bin[v42];
      v45 = v44 + 1;
      v46 = v44 < bwd_start_bin || v45 > bwd_end_bin;
      v47 = v46 || v44 > v45;
      v48 = &bwd_end_bin[v43];
      v49 = v48 + 1;
      v50 = !v47 && v48 >= bwd_end_bin;
      v51 = !v50 || v49 > BAND_NUM_TAB;
      if (v51 || v48 > v49)
      {
        goto LABEL_231;
      }

      v53 = *v44;
      v54 = *v48;
      while (v53 <= v54)
      {
        v55 = &v131 + v53;
        if (v55 >= v55 + 1 || v55 + 1 > &v135 || v55 < &v131)
        {
          goto LABEL_231;
        }

        v58 = 0;
        v59 = 0;
        do
        {
          v60 = &__b[v58 + v25 * v53];
          v61 = v60 + 1;
          if (v60 < __b || v61 > &v138 || v60 > v61)
          {
            goto LABEL_231;
          }

          v64 = *v55 + (*v60 * *v60);
          *v55 = v64;
          v58 = ++v59;
        }

        while (v25 > v59);
        v65 = log10(v64);
        *v55 = v65;
        v53 = (v53 + 1);
      }

      v42 = v43 + 1;
      if (v124 < (v43 + 1))
      {
        goto LABEL_104;
      }
    }
  }

  v16 = *(*(v11 + 39824) + 152);
  __A = 0.001;
  vDSP_vfill(&__A, &__C, 1, 9uLL);
  v17 = (a5 + 12);
  if (a6 < a5 + 12 || v17 < a5 || (a6 - (a5 + 12)) <= 12)
  {
    goto LABEL_231;
  }

  *&__C = ((((COERCE_FLOAT(*v17) + 0.0) + COERCE_FLOAT(HIDWORD(*v17))) + COERCE_FLOAT(*(a5 + 20))) + COERCE_FLOAT(HIDWORD(*v17))) + *&__C;
  v18 = *(v11 + 56);
  if (v18 >= 16000)
  {
    if (a6 < a5 + 44)
    {
      goto LABEL_231;
    }

    if (a5 + 44 < a5)
    {
      goto LABEL_231;
    }

    if ((a6 - (a5 + 44)) < 13)
    {
      goto LABEL_231;
    }

    *(&__C + 1) = ((((COERCE_FLOAT(*(a5 + 44)) + 0.0) + COERCE_FLOAT(HIDWORD(*(a5 + 44)))) + COERCE_FLOAT(*(a5 + 52))) + COERCE_FLOAT(HIDWORD(*(a5 + 44)))) + *(&__C + 1);
    v19 = (a5 + 56);
    if (a6 < a5 + 56 || v19 < a5 || (a6 - (a5 + 56)) < 13)
    {
      goto LABEL_231;
    }

    *(&__C + 2) = ((((COERCE_FLOAT(*v19) + 0.0) + COERCE_FLOAT(HIDWORD(*v19))) + COERCE_FLOAT(*(a5 + 64))) + COERCE_FLOAT(HIDWORD(*v19))) + *(&__C + 2);
    if (v18 >= 32000)
    {
      if (a6 < a5 + 92)
      {
        goto LABEL_231;
      }

      if (a5 + 92 < a5)
      {
        goto LABEL_231;
      }

      if ((a6 - (a5 + 92)) < 13)
      {
        goto LABEL_231;
      }

      *(&__C + 3) = ((((COERCE_FLOAT(*(a5 + 92)) + 0.0) + COERCE_FLOAT(HIDWORD(*(a5 + 92)))) + COERCE_FLOAT(*(a5 + 100))) + COERCE_FLOAT(HIDWORD(*(a5 + 92)))) + *(&__C + 3);
      if (a6 < a5 + 108)
      {
        goto LABEL_231;
      }

      if (a5 + 108 < a5)
      {
        goto LABEL_231;
      }

      if ((a6 - (a5 + 108)) < 13)
      {
        goto LABEL_231;
      }

      *&v129 = ((((COERCE_FLOAT(*(a5 + 108)) + 0.0) + COERCE_FLOAT(HIDWORD(*(a5 + 108)))) + COERCE_FLOAT(*(a5 + 116))) + COERCE_FLOAT(HIDWORD(*(a5 + 108)))) + *&v129;
      if (a6 < a5 + 124)
      {
        goto LABEL_231;
      }

      if (a5 + 124 < a5)
      {
        goto LABEL_231;
      }

      if ((a6 - (a5 + 124)) < 13)
      {
        goto LABEL_231;
      }

      *(&v129 + 1) = ((((COERCE_FLOAT(*(a5 + 124)) + 0.0) + COERCE_FLOAT(HIDWORD(*(a5 + 124)))) + COERCE_FLOAT(*(a5 + 132))) + COERCE_FLOAT(HIDWORD(*(a5 + 124)))) + *(&v129 + 1);
      v20 = (a5 + 140);
      if (a6 < a5 + 140 || v20 < a5 || (a6 - (a5 + 140)) < 13)
      {
        goto LABEL_231;
      }

      *(&v129 + 2) = ((((COERCE_FLOAT(*v20) + 0.0) + COERCE_FLOAT(HIDWORD(*v20))) + COERCE_FLOAT(*(a5 + 148))) + COERCE_FLOAT(HIDWORD(*v20))) + *(&v129 + 2);
      if (v18 >= 48000)
      {
        if (a6 < a5 + 168)
        {
          goto LABEL_231;
        }

        if (a5 + 168 < a5)
        {
          goto LABEL_231;
        }

        if ((a6 - (a5 + 168)) < 13)
        {
          goto LABEL_231;
        }

        *(&v129 + 3) = ((((COERCE_FLOAT(*(a5 + 168)) + 0.0) + COERCE_FLOAT(HIDWORD(*(a5 + 168)))) + COERCE_FLOAT(*(a5 + 176))) + COERCE_FLOAT(HIDWORD(*(a5 + 168)))) + *(&v129 + 3);
        v21 = (a5 + 184);
        if (a6 < a5 + 184 || v21 < a5 || (a6 - (a5 + 184)) < 13)
        {
          goto LABEL_231;
        }

        v130 = ((((COERCE_FLOAT(*v21) + 0.0) + COERCE_FLOAT(HIDWORD(*v21))) + COERCE_FLOAT(*(a5 + 192))) + COERCE_FLOAT(HIDWORD(*v21))) + v130;
      }
    }
  }

  v22 = 0;
  v23 = 1.0 / ((v16 * v16) * 8.0);
  do
  {
    v24 = log10((v23 * *(&__C + v22)));
    *(&__C + v22) = v24;
    v22 += 4;
  }

  while (v22 != 36);
LABEL_104:
  if (!v123)
  {
    v71 = *(&v131 + 1);
    v67 = 0.0;
    v70 = *(&v131 + 1) + 0.0;
    v72 = ((*(&v131 + 3) + 0.0) + *&v132) * 0.5;
    result = maximum((&v131 | 0xC), 2, &v126);
    v11 = v122;
    v77 = *(v122 + 56);
    if (v77 == 32000)
    {
      v76 = ((((*(&v132 + 2) + 0.0) + *(&v132 + 3)) + *&v133) + *(&v133 + 1)) * 0.25;
      result = maximum(&v132 + 2, 4, &v125 + 1);
      LODWORD(v125) = 0;
      goto LABEL_114;
    }

    if (v77 != 16000)
    {
      v79 = (((*(&v132 + 2) + 0.0) + *(&v132 + 3)) + *&v133) + *(&v133 + 1);
      maximum(&v132 + 2, 4, &v125 + 1);
      v76 = v79 * 0.25;
      v67 = ((*(&v133 + 3) + 0.0) + v134) * 0.5;
      result = maximum(&v133 + 3, 2, &v125);
      goto LABEL_114;
    }

LABEL_110:
    v125 = 0;
    v76 = 0.0;
    goto LABEL_114;
  }

  v66 = *&__C;
  v67 = 0.0;
  v68 = *&__C + 0.0;
  v69 = ((*(&__C + 1) + 0.0) + *(&__C + 2)) * 0.5;
  result = maximum(&__C + 1, 2, &v126);
  v70 = v68 + 1.6;
  v71 = v66 + 1.6;
  v72 = v69 + 1.6;
  v126 = v126 + 1.6;
  v11 = v122;
  v73 = *(v122 + 56);
  if (v73 == 32000)
  {
    LODWORD(v125) = 0;
    v78 = ((((*(&__C + 3) + 0.0) + *&v129) + *(&v129 + 1)) + *(&v129 + 2)) * 0.25;
    result = maximum((&__C | 0xC), 4, &v125 + 1);
    v76 = v78 + 1.6;
    *(&v125 + 1) = *(&v125 + 1) + 1.6;
    goto LABEL_114;
  }

  if (v73 == 16000)
  {
    goto LABEL_110;
  }

  v74 = (((*(&__C + 3) + 0.0) + *&v129) + *(&v129 + 1)) + *(&v129 + 2);
  maximum((&__C | 0xC), 4, &v125 + 1);
  v75 = ((*(&v129 + 3) + 0.0) + v130) * 0.5;
  result = maximum(&v129 + 3, 2, &v125);
  v76 = (v74 * 0.25) + 1.6;
  v67 = v75 + 1.6;
  *&v125 = *&v125 + 1.6;
  *(&v125 + 1) = *(&v125 + 1) + 1.6;
LABEL_114:
  v12 = v121;
  if (!a4 && *(v11 + 24992) <= 30.0)
  {
    goto LABEL_196;
  }

  v80 = (v70 * 0.25) + (*v121 * 0.75);
  v81 = (v72 * 0.25) + (*(v121 + 4) * 0.75);
  *v121 = v80;
  *(v121 + 4) = v81;
  v82 = (v76 * 0.25) + (*(v121 + 8) * 0.75);
  *(v121 + 8) = v82;
  v83 = v126;
  if (v123)
  {
    v84 = v80 * 0.6;
    if ((v126 * 0.9) <= (v80 * 0.6))
    {
      if ((v72 * 3.5) >= v70)
      {
        goto LABEL_127;
      }

      v85 = -1;
    }

    else
    {
      if ((v126 * 2.5) <= v71)
      {
        goto LABEL_127;
      }

      v85 = 1;
    }

    *(v121 + 12) += v85;
LABEL_127:
    v87 = *(&v125 + 1);
    v89 = *(&v125 + 1) * 0.83;
    v90 = v81 * 0.6;
    if (v83 <= v84 || v89 <= v90)
    {
      if ((v76 * 3.0) < v72)
      {
        v92 = -1;
LABEL_136:
        *(v121 + 14) += v92;
      }
    }

    else if ((*(&v125 + 1) + *(&v125 + 1)) > v83)
    {
      v92 = 1;
      goto LABEL_136;
    }

    v93 = v82 * 0.6;
    if (v89 > v90 && v83 > v84 && *&v125 > v93)
    {
      v97 = *&v125 * 3.0;
LABEL_159:
      if (v97 <= v87)
      {
        goto LABEL_165;
      }

      v99 = 1;
      goto LABEL_164;
    }

    v96 = 4.1;
    goto LABEL_162;
  }

  v86 = v80 * 0.6;
  if (v126 <= (v80 * 0.6))
  {
    if ((v72 * 2.6) < v70)
    {
      --*(v121 + 12);
    }

    v87 = *(&v125 + 1);
    v88 = *(&v125 + 1) <= (v81 * 0.6);
    goto LABEL_150;
  }

  if ((v126 + v126) > v71)
  {
    ++*(v121 + 12);
  }

  v87 = *(&v125 + 1);
  if (*(&v125 + 1) <= (v81 * 0.6))
  {
    v88 = 1;
LABEL_150:
    if ((v76 * 3.0) >= v72)
    {
      goto LABEL_155;
    }

    v98 = -1;
    goto LABEL_154;
  }

  v88 = 0;
  if ((*(&v125 + 1) + *(&v125 + 1)) <= v83)
  {
    goto LABEL_155;
  }

  v98 = 1;
LABEL_154:
  *(v121 + 14) += v98;
LABEL_155:
  if (v83 > v86 && !v88 && *&v125 > (v82 * 0.6))
  {
    v97 = *&v125 + *&v125;
    goto LABEL_159;
  }

  v96 = 3.0;
LABEL_162:
  if ((v67 * v96) >= v76)
  {
    goto LABEL_165;
  }

  v99 = -1;
LABEL_164:
  *(v121 + 16) += v99;
LABEL_165:
  v100 = *(v121 + 12);
  if (v100 >= 100)
  {
    v101 = 100;
  }

  else
  {
    v101 = *(v121 + 12);
  }

  v102 = *(v121 + 14);
  if (v102 >= 100)
  {
    v103 = 100;
  }

  else
  {
    v103 = *(v121 + 14);
  }

  v104 = *(v121 + 16);
  if (v104 >= 100)
  {
    v105 = 100;
  }

  else
  {
    v105 = *(v121 + 16);
  }

  *(v121 + 12) = v101 & ~(v101 >> 31);
  *(v121 + 14) = v103 & ~(v103 >> 31);
  *(v121 + 16) = v105 & ~(v105 >> 31);
  v106 = *(v11 + 134);
  if (v106 > 1)
  {
    if (v106 == 2)
    {
      if (*(v11 + 56) >= 32001 && v104 > 10)
      {
        *(v11 + 128) = 3;
        *(v121 + 16) = 100;
      }

      if (v102 < 10)
      {
LABEL_188:
        *(v11 + 128) = 1;
        *(v121 + 14) = 0;
      }
    }

    else
    {
      if (v106 != 3)
      {
        goto LABEL_196;
      }

      if (v104 <= 9)
      {
        *(v11 + 128) = 2;
        *(v121 + 16) = 0;
      }

      if (v102 <= 9)
      {
        goto LABEL_188;
      }
    }

    if (v100 > 9)
    {
      goto LABEL_196;
    }

    goto LABEL_190;
  }

  if (!*(v11 + 134))
  {
    if (v100 < 11)
    {
      goto LABEL_196;
    }

    *(v11 + 128) = 1;
    *(v121 + 12) = 100;
    if (v102 < 11)
    {
      goto LABEL_196;
    }

    *(v11 + 128) = 2;
    *(v121 + 14) = 100;
    if (v104 < 11)
    {
      goto LABEL_196;
    }

    *(v11 + 128) = 3;
    v107 = 100;
LABEL_191:
    *(v121 + 16) = v107;
    goto LABEL_196;
  }

  if (v106 == 1)
  {
    if (*(v11 + 56) >= 16001 && v102 > 10)
    {
      *(v11 + 128) = 2;
      *(v121 + 14) = 100;
      if (v104 >= 11)
      {
        *(v11 + 128) = 3;
        *(v121 + 16) = 100;
      }
    }

    if (v100 < 10)
    {
LABEL_190:
      v107 = 0;
      *(v11 + 128) = 0;
      *(v121 + 12) = 0;
      goto LABEL_191;
    }
  }

LABEL_196:
  v108 = *(v11 + 128);
  v109 = *(v11 + 132);
  if (v108 > v109)
  {
    *(v11 + 128) = *(v11 + 132);
    v108 = v109;
  }

  if (*v11 != 1)
  {
    v111 = 0;
    v113 = FrameSizeConfig;
    while (1)
    {
      v114 = *v113;
      v113 += 6;
      v112 = ((*(v11 + 64) * 0xA3D70A3D70A3D70BLL) >> 64) + *(v11 + 64);
      if (((v112 >> 63) + (v112 >> 5)) == v114)
      {
        break;
      }

      if (++v111 == 13)
      {
        goto LABEL_223;
      }
    }

    v115 = &FrameSizeConfig[6 * v111];
    v116 = v115 + 6;
    if (v115 >= FrameSizeConfig && v116 <= inter6_2 && v115 <= v116)
    {
      v119 = *(v115 + 8);
      if (*(v12 + 42))
      {
        v119 = 1;
      }

      v120 = *(v115 + 9);
      if (v108 >= v120)
      {
        v108 = v120;
      }

      if (v108 <= v119)
      {
        LOWORD(v108) = v119;
      }

      goto LABEL_224;
    }

LABEL_231:
    __break(0x5519u);
  }

  *(v11 + 130) = v108;
  v110 = *(v11 + 64);
  if (v110 <= 9600 && v108 >= 2)
  {
    goto LABEL_223;
  }

  if ((v110 - 13200) <= 0xC80)
  {
    if (v108 < 3)
    {
      return result;
    }

    LOWORD(v108) = 2;
    goto LABEL_224;
  }

  if (v110 >= 32000 && v108 <= 0)
  {
LABEL_223:
    LOWORD(v108) = 1;
LABEL_224:
    *(v11 + 130) = v108;
  }

  return result;
}