__int16 *sub_239CE2CB4(__int16 *result, float32x4_t *a2, void *a3)
{
  v4 = a2;
  v5 = result;
  v6 = a3[12];
  if (v6 != 1)
  {
    if (!v6)
    {
      v7 = a3[6];
      if (v7)
      {
        if (a3[11] <= 1uLL)
        {
          v25 = 0;
          for (i = 0; i < v7; ++i)
          {
            v27 = a3[4];
            v28 = v27 * i;
            result = &v4->i16[2 * v27 * i];
            if (a3[11] < 2uLL)
            {
              result = MPSConvertFloatToHalf();
              v7 = a3[6];
            }

            else if (v27)
            {
              v30 = a3[9];
              v29 = a3[10];
              v31 = (v5 + a3[5] * v25);
              do
              {
                if (v28 % v29 < v30)
                {
                  v32 = *result;
                  result += 2;
                  _S0 = v32;
                  __asm { FCVT            H0, S0 }

                  *v31 = _S0;
                }

                ++v31;
                ++v28;
                --v27;
              }

              while (v27);
            }

            v25 += 2;
          }
        }

        else
        {
          v8 = a3[4];
          if (v8)
          {
            v9 = 0;
            v10 = 0;
            v12 = a3[9];
            v11 = a3[10];
            v13 = 2 * a3[5];
            do
            {
              v14 = &a2->i32[v10 * v8];
              v15 = v9;
              v16 = v5;
              result = v8;
              do
              {
                if (v15 % v11 < v12)
                {
                  v17 = *v14++;
                  _S0 = v17;
                  __asm { FCVT            H0, S0 }

                  *v16 = _S0;
                }

                ++v16;
                ++v15;
                result = (result - 1);
              }

              while (result);
              ++v10;
              v5 = (v5 + v13);
              v9 += v8;
            }

            while (v10 != v7);
          }
        }
      }

      return result;
    }

    v23 = a3[1];
    v92 = (v23 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    if (!v92)
    {
      return result;
    }

    v24 = a3[3];
    if (v24 > v6)
    {
      return result;
    }

    v34 = 0;
    v35 = 8 * v6;
    v36 = 3 * v6;
    v37 = 16 * v6;
    if (v24 <= 1)
    {
      v38 = 1;
    }

    else
    {
      v38 = a3[3];
    }

    result = (4 * (v38 & 0xFFFFFFFFFFFFFFFELL));
    v39 = &a2->i32[1];
    v40 = v6;
    v41 = a2->i64 + 4 * v6;
    v42 = a2 + v35;
    v91 = v23;
    v43 = 4 * v24;
    v44 = v6 / v24;
    while (1)
    {
      if (v34 >= v23)
      {
        v46 = v4;
        v62 = 0;
        do
        {
          v5 += 4 * v38;
          ++v62;
        }

        while (v62 < v44);
        goto LABEL_31;
      }

      if ((v34 | 1) >= v23)
      {
        break;
      }

      if ((v34 | 2) >= v23)
      {
        v77 = 0;
        v46 = v4;
        v78 = v4;
        v79 = v41;
        do
        {
          v80 = 0;
          do
          {
            _S0 = v78->i32[v80];
            __asm { FCVT            H0, S0 }

            _S1 = *(v79 + 4 * v80);
            *v5 = _S0;
            __asm { FCVT            H0, S1 }

            v5[1] = _S0;
            v5 += 4;
            ++v80;
          }

          while (v38 != v80);
          ++v77;
          v79 += v43;
          v78 = (v78 + v43);
        }

        while (v77 < v44);
      }

      else
      {
        if ((v34 | 3) < v23)
        {
          v45 = 0;
          v46 = v4;
          v47 = v5;
          while (1)
          {
            if (v24 >= 8)
            {
              v49 = (v4 + 4 * (v38 & 0xFFFFFFFFFFFFFFF8));
              v5 = &v47[4 * (v38 & 0xFFFFFFFFFFFFFFF8)];
              v50 = v38 & 0xFFFFFFFFFFFFFFF8;
              v51 = v40 * 4;
              v52 = v35;
              v53 = v36 * 4;
              v54 = v4;
              do
              {
                v56 = *v54;
                v55 = v54[1];
                v54 += 2;
                v94.val[1] = vcvt_hight_f16_f32(vcvt_f16_f32(*(v4 + v51)), *(v4 + v51 + 16));
                v94.val[0] = vcvt_hight_f16_f32(vcvt_f16_f32(v56), v55);
                v94.val[3] = vcvt_hight_f16_f32(vcvt_f16_f32(*(v4 + v53)), *(v4 + v53 + 16));
                v94.val[2] = vcvt_hight_f16_f32(vcvt_f16_f32(*(v4 + v52)), *(v4 + v52 + 16));
                vst4q_s16(v47, v94);
                v47 += 32;
                v53 += 32;
                v52 += 32;
                v51 += 32;
                v50 -= 8;
              }

              while (v50);
              v48 = v38 & 0xFFFFFFFFFFFFFFF8;
              if (v24 == (v38 & 0xFFFFFFFFFFFFFFF8))
              {
                goto LABEL_37;
              }
            }

            else
            {
              v48 = 0;
              v49 = v4;
              v5 = v47;
            }

            v57 = v38 - v48;
            do
            {
              _S0 = v49->i32[0];
              __asm { FCVT            H0, S0 }

              *v5 = _S0;
              _S0 = v49->i32[v40];
              __asm { FCVT            H0, S0 }

              v5[1] = _S0;
              _S0 = v49->i32[v35 / 4];
              __asm { FCVT            H0, S0 }

              _S1 = v49->i32[v36];
              v5[2] = _S0;
              __asm { FCVT            H0, S1 }

              v5[3] = _S0;
              v5 += 4;
              v49 = (v49 + 4);
              --v57;
            }

            while (v57);
LABEL_37:
            ++v45;
            v4 = (v4 + v43);
            v47 = v5;
            if (v45 >= v44)
            {
              goto LABEL_31;
            }
          }
        }

        v83 = 0;
        v46 = v4;
        v84 = v4;
        v85 = v41;
        v86 = v42;
        do
        {
          v87 = 0;
          do
          {
            _S0 = v84->i32[v87];
            __asm { FCVT            H0, S0 }

            *v5 = _S0;
            _S0 = *(v85 + 4 * v87);
            __asm { FCVT            H0, S0 }

            _S1 = *(v86 + 4 * v87);
            v5[1] = _S0;
            __asm { FCVT            H0, S1 }

            v5[2] = _S0;
            v5 += 4;
            ++v87;
          }

          while (v38 != v87);
          ++v83;
          v86 += v43;
          v85 += v43;
          v84 = (v84 + v43);
        }

        while (v83 < v44);
      }

LABEL_31:
      v34 += 4;
      v4 = &v46[v37 / 0x10];
      v39 = (v39 + v37);
      v41 += v37;
      v42 += v37;
      v23 = v91;
      if (v34 >= v92)
      {
        return result;
      }
    }

    v63 = 0;
    v64 = v39;
    v46 = v4;
    v65 = v4;
    v66 = v5;
    while (1)
    {
      if (v24 >= 2)
      {
        v68 = (result + v65);
        v5 = &v66[4 * (v38 & 0xFFFFFFFFFFFFFFFELL)];
        v69 = v66 + 4;
        v70 = v38 & 0xFFFFFFFFFFFFFFFELL;
        v71 = v64;
        do
        {
          _S0 = *(v71 - 1);
          _S1 = *v71;
          __asm
          {
            FCVT            H0, S0
            FCVT            H1, S1
          }

          *(v69 - 4) = _S0;
          *v69 = _S1;
          v69 += 8;
          v71 += 2;
          v70 -= 2;
        }

        while (v70);
        v67 = v38 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 == (v38 & 0xFFFFFFFFFFFFFFFELL))
        {
          goto LABEL_50;
        }
      }

      else
      {
        v67 = 0;
        v68 = v65;
        v5 = v66;
      }

      v74 = v38 - v67;
      do
      {
        v75 = v68->i32[0];
        v68 = (v68 + 4);
        _S0 = v75;
        __asm { FCVT            H0, S0 }

        *v5 = _S0;
        v5 += 4;
        --v74;
      }

      while (v74);
LABEL_50:
      ++v63;
      v65 = (v65 + 4 * v24);
      v64 = (v64 + v43);
      v66 = v5;
      if (v63 >= v44)
      {
        goto LABEL_31;
      }
    }
  }

  return MPSConvertFloatToHalf();
}

uint64_t sub_239CE31B4(uint64_t result, const __int16 *a2, void *a3)
{
  v3 = a2;
  v4 = result;
  v5 = a3[4];
  v6 = a3[12];
  if (v6 != 1)
  {
    if (!v6)
    {
      v7 = a3[6];
      if (v7)
      {
        v8 = a3[5];
        if (a3[11] <= 1uLL)
        {
          v118 = 2 * v8;
          do
          {
            result = MPSConvertHalfToFloat();
            v3 = (v3 + v118);
            v4 += 4 * v5;
            --v7;
          }

          while (v7);
        }

        else if (v5)
        {
          v9 = 0;
          v10 = 0;
          v11 = a3[9];
          v12 = a3[10];
          do
          {
            v13 = &a2[v10 * v8];
            v14 = v9;
            v15 = v5;
            do
            {
              if (v14 % v12 < v11)
              {
                v16 = *v13++;
                _H0 = v16;
                __asm { FCVT            S0, H0 }

                *(result + 4 * v14) = _S0;
              }

              ++v14;
              --v15;
            }

            while (v15);
            ++v10;
            v9 += v5;
          }

          while (v10 != v7);
        }
      }

      return result;
    }

    v23 = a3[1];
    v122 = (v23 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    if (!v122)
    {
      return result;
    }

    v24 = a3[3];
    if (v24 > v6)
    {
      return result;
    }

    v25 = 0;
    v26 = 2 * v6;
    v27 = 12 * v6;
    v119 = v6;
    if (v24 <= 1)
    {
      v28 = 1;
    }

    else
    {
      v28 = a3[3];
    }

    v29 = v28 & 0xF;
    if ((v28 & 0xF) == 0)
    {
      v29 = 16;
    }

    v30 = v28 - v29;
    result = 4 * (v28 - v29);
    v31 = 8 * (v28 - v29);
    v32 = (v6 & 0x3FFFFFFFFFFFFFF8) == 0 || v24 < 9;
    v33 = v28 & 7;
    if ((v28 & 7) == 0)
    {
      v33 = 8;
    }

    v34 = v28 - v33;
    v35 = 4 * (v28 - v33);
    v36 = 8 * (v28 - v33);
    v37 = v26 < 8 || (v6 & 0x3FFFFFFFFFFFFFF8) == 0;
    v38 = v27 < 0x20 || v37;
    v39 = (v4 + 32);
    v40 = 4 * v24;
    v41 = v6;
    v42 = v6 / v24;
    v120 = v23;
    while (1)
    {
      v123 = v39;
      if (v25 >= v23)
      {
        v72 = 0;
        do
        {
          v3 += 4 * v28;
          ++v72;
        }

        while (v72 < v42);
      }

      else if ((v25 | 1) >= v23)
      {
        v73 = 0;
        v74 = v4;
        do
        {
          if (v24 >= 0x11)
          {
            v76 = (v74 + result);
            v77 = (v3 + v31);
            v78 = v3 + 32;
            v79 = v30;
            v80 = v39;
            do
            {
              v81 = v78 - 32;
              v82 = vld4q_s16(v81);
              v83 = vld4q_s16(v78);
              v80[-2] = vcvtq_f32_f16(*&v82);
              v80[-1] = vcvt_hight_f32_f16(v82);
              *v80 = vcvtq_f32_f16(*&v83);
              v80[1] = vcvt_hight_f32_f16(v83);
              v80 += 4;
              v78 += 64;
              v79 -= 16;
            }

            while (v79);
            v75 = v30;
            v3 = v77;
          }

          else
          {
            v75 = 0;
            v76 = v74;
          }

          v84 = v28 - v75;
          do
          {
            v85 = *v3;
            v3 += 4;
            _H0 = v85;
            __asm { FCVT            S0, H0 }

            *v76++ = _S0;
            --v84;
          }

          while (v84);
          ++v73;
          v74 += v24;
          v39 = (v39 + v40);
        }

        while (v73 < v42);
      }

      else if ((v25 | 2) >= v23)
      {
        v88 = 0;
        v89 = v4;
        do
        {
          if (v32)
          {
            v90 = 0;
            v91 = v89;
          }

          else
          {
            v91 = (v89 + v35);
            v92 = (v3 + v36);
            v93 = v34;
            v94 = v41 * 4;
            v95 = v89;
            do
            {
              v126 = vld4q_s16(v3);
              v3 += 32;
              *v95 = vcvtq_f32_f16(*v126.val[0].i8);
              v95[1] = vcvt_hight_f32_f16(v126.val[0]);
              v95 += 2;
              v96 = (v89 + v94);
              *v96 = vcvtq_f32_f16(*v126.val[1].i8);
              v96[1] = vcvt_hight_f32_f16(v126.val[1]);
              v94 += 32;
              v93 -= 8;
            }

            while (v93);
            v90 = v34;
            v3 = v92;
          }

          v97 = v28 - v90;
          do
          {
            _H0 = *v3;
            __asm { FCVT            S0, H0 }

            v91->i32[0] = _S0;
            LOWORD(_S0) = v3[1];
            __asm { FCVT            S0, H0 }

            v91->i32[v41] = _S0;
            v3 += 4;
            v91 = (v91 + 4);
            --v97;
          }

          while (v97);
          ++v88;
          v89 = (v89 + v40);
        }

        while (v88 < v42);
      }

      else
      {
        if ((v25 | 3) < v23)
        {
          v43 = 0;
          v44 = v4;
          v45 = v3;
          v121 = v25;
          while (1)
          {
            if (v24 < 8)
            {
              v46 = 1;
            }

            else
            {
              v46 = v38;
            }

            if (v46)
            {
              v47 = 0;
              v48 = v44;
              v3 = v45;
            }

            else
            {
              v49 = v30;
              v50 = v38;
              v51 = v34;
              v52 = v32;
              v53 = v31;
              v54 = result;
              v55 = v37;
              v56 = v36;
              v57 = v35;
              v48 = (v44 + 4 * (v28 & 0xFFFFFFFFFFFFFFF8));
              v3 = &v45[4 * (v28 & 0xFFFFFFFFFFFFFFF8)];
              v58 = v28 & 0xFFFFFFFFFFFFFFF8;
              v59 = v41 * 4;
              v60 = v26 * 4;
              v61 = v27;
              v62 = v44;
              do
              {
                v125 = vld4q_s16(v45);
                v45 += 32;
                *v62 = vcvtq_f32_f16(*v125.val[0].i8);
                v62[1] = vcvt_hight_f32_f16(v125.val[0]);
                v62 += 2;
                v63 = (v44 + v59);
                *v63 = vcvtq_f32_f16(*v125.val[1].i8);
                v63[1] = vcvt_hight_f32_f16(v125.val[1]);
                v64 = (v44 + v60);
                *v64 = vcvtq_f32_f16(*v125.val[2].i8);
                v64[1] = vcvt_hight_f32_f16(v125.val[2]);
                v65 = (v44 + v61);
                v61 += 32;
                v60 += 32;
                *v65 = vcvtq_f32_f16(*v125.val[3].i8);
                v65[1] = vcvt_hight_f32_f16(v125.val[3]);
                v59 += 32;
                v58 -= 8;
              }

              while (v58);
              v47 = v28 & 0xFFFFFFFFFFFFFFF8;
              v35 = v57;
              v36 = v56;
              v37 = v55;
              result = v54;
              v31 = v53;
              v32 = v52;
              v34 = v51;
              v38 = v50;
              v30 = v49;
              v25 = v121;
              if (v24 == (v28 & 0xFFFFFFFFFFFFFFF8))
              {
                goto LABEL_40;
              }
            }

            v66 = v28 - v47;
            do
            {
              _H0 = *v3;
              __asm { FCVT            S0, H0 }

              v48->i32[0] = _S0;
              LOWORD(_S0) = v3[1];
              __asm { FCVT            S0, H0 }

              v48->i32[v41] = _S0;
              LOWORD(_S0) = v3[2];
              __asm { FCVT            S0, H0 }

              v48->i32[v26] = _S0;
              LOWORD(_S0) = v3[3];
              __asm { FCVT            S0, H0 }

              v48->i32[v27 / 4] = _S0;
              v3 += 4;
              v48 = (v48 + 4);
              --v66;
            }

            while (v66);
LABEL_40:
            ++v43;
            v44 = (v44 + v40);
            v45 = v3;
            if (v43 >= v42)
            {
              goto LABEL_34;
            }
          }
        }

        v101 = 0;
        v102 = v4;
        do
        {
          v103 = v24 < 9 || v37;
          if (v103)
          {
            v104 = 0;
            v105 = v102;
          }

          else
          {
            v105 = (v102 + v35);
            v106 = (v3 + v36);
            v107 = v34;
            v108 = v41 * 4;
            v109 = v26 * 4;
            v110 = v102;
            do
            {
              v127 = vld4q_s16(v3);
              v3 += 32;
              *v110 = vcvtq_f32_f16(*v127.val[0].i8);
              v110[1] = vcvt_hight_f32_f16(v127.val[0]);
              v110 += 2;
              v111 = (v102 + v108);
              *v111 = vcvtq_f32_f16(*v127.val[1].i8);
              v111[1] = vcvt_hight_f32_f16(v127.val[1]);
              v112 = (v102 + v109);
              v109 += 32;
              *v112 = vcvtq_f32_f16(*v127.val[2].i8);
              v112[1] = vcvt_hight_f32_f16(v127.val[2]);
              v108 += 32;
              v107 -= 8;
            }

            while (v107);
            v104 = v34;
            v3 = v106;
          }

          v113 = v28 - v104;
          do
          {
            _H0 = *v3;
            __asm { FCVT            S0, H0 }

            v105->i32[0] = _S0;
            LOWORD(_S0) = v3[1];
            __asm { FCVT            S0, H0 }

            v105->i32[v41] = _S0;
            LOWORD(_S0) = v3[2];
            __asm { FCVT            S0, H0 }

            v105->i32[v26] = _S0;
            v3 += 4;
            v105 = (v105 + 4);
            --v113;
          }

          while (v113);
          ++v101;
          v102 = (v102 + v40);
        }

        while (v101 < v42);
      }

LABEL_34:
      v25 += 4;
      v23 = v120;
      v4 += v119 * 16;
      v39 = &v123[v119];
      if (v25 >= v122)
      {
        return result;
      }
    }
  }

  return MPSConvertHalfToFloat();
}

unint64_t sub_239CE3780(unint64_t __dst, const float *__src, void *a3)
{
  v3 = __src;
  v4 = __dst;
  v5 = a3[4];
  v6 = a3[12];
  if (v6 != 1)
  {
    if (!v6)
    {
      v7 = a3[6];
      if (v7)
      {
        v8 = a3[5];
        if (a3[11] <= 1uLL)
        {
          v188 = 4 * v5;
          v189 = 4 * v8;
          do
          {
            __dst = memcpy(v4, v3, v188);
            v3 = (v3 + v189);
            v4 = (v4 + v188);
            --v7;
          }

          while (v7);
        }

        else if (v5)
        {
          v9 = 0;
          v10 = 0;
          v11 = a3[9];
          v12 = a3[10];
          do
          {
            v13 = &__src[v10 * v8];
            v14 = v9;
            v15 = v5;
            do
            {
              if (v14 % v12 < v11)
              {
                v16 = *v13;
                v13 += 4;
                *(__dst + 4 * v14) = v16;
              }

              ++v14;
              --v15;
            }

            while (v15);
            ++v10;
            v9 += v5;
          }

          while (v10 != v7);
        }
      }

      return __dst;
    }

    v17 = a3[1];
    v210 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    if (!v210)
    {
      return __dst;
    }

    v18 = a3[3];
    if (v18 > v6)
    {
      return __dst;
    }

    v19 = 0;
    __dst = 0;
    v20 = v6 / v18;
    if (v18 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = a3[3];
    }

    if (v20 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = v6 / v18;
    }

    v23 = v18 * (v22 + 0x3FFFFFFFFFFFFFFFLL);
    v197 = &v4->i8[4 * v23 + 4 * v21];
    v24 = 2 * v6;
    v25 = 3 * v6;
    v215 = 16 * v6;
    v26 = 4 * v21;
    v27 = 4 * v18;
    v28 = 4 * v6;
    v29 = 16 * v21 - 12;
    v227 = 16 * v21 - 8;
    v221 = 16 * v21 - 4;
    v196 = &v4->i8[4 * v6];
    v193 = v4 + 8 * v6;
    v191 = v4 + 12 * v6;
    v30 = v21 & 7;
    v31 = v4->i64 + 4 * v23 + 4 * v21;
    if ((v21 & 7) == 0)
    {
      v30 = 8;
    }

    v228 = v21 - v30;
    v224 = 4 * (v21 - v30);
    v225 = 4 * (v21 - v30);
    v194 = v31 + v28;
    v195 = v31;
    v192 = v31 + v24 * 4;
    v190 = v31 + v25 * 4;
    v202 = v21 & 0xFFFFFFFFFFFFFFF8;
    v203 = v17;
    v198 = 4 * (v21 & 0xFFFFFFFFFFFFFFF8);
    v199 = 4 * (v21 & 0xFFFFFFFFFFFFFFF8);
    v32 = v4 + 1;
    v33 = (v4 + v28 + 16);
    v34 = (v4 + v24 * 4 + 16);
    v223 = 16 * v21 - 12;
    while (1)
    {
      v219 = __dst;
      v220 = v19;
      v217 = v33;
      v218 = v32;
      v216 = v34;
      if (__dst < v17)
      {
        break;
      }

      v104 = 0;
      do
      {
        v3 = (v3 + v26 * 4);
        ++v104;
      }

      while (v104 < v20);
LABEL_26:
      __dst = v219 + 4;
      v4 = (v4 + v215);
      v19 = v220 + 1;
      v32 = &v218[v215 / 0x10];
      v33 = &v217[v215 / 0x10];
      v34 = &v216[v215 / 0x10];
      v17 = v203;
      if (v219 + 4 >= v210)
      {
        return __dst;
      }
    }

    v35 = v215 * v19;
    if ((__dst | 1) < v17)
    {
      v36 = &v196[v35];
      v226 = &v196[v35];
      if ((__dst | 2) < v17)
      {
        v37 = &v193[v35];
        v222 = &v193[v35];
        if ((__dst | 3) < v17)
        {
          v38 = 0;
          v39 = &v191[v35];
          v40 = v195 + v35;
          v41 = v194 + v35;
          v42 = v192 + v35;
          v43 = v190 + v35;
          v45 = v4 < v194 + v35 && v36 < v40;
          if (v4 < v42 && v37 < v40 || (v18 & 0x2000000000000000) != 0)
          {
            v45 = 1;
          }

          v207 = v194 + v35;
          v208 = v195 + v35;
          if (v4 < v43 && v39 < v40)
          {
            v45 = 1;
          }

          v204 = v45;
          v50 = v36 < v42 && v37 < v41;
          v52 = v36 < v43 && v39 < v41;
          v205 = v43;
          v206 = v42;
          v209 = v39;
          v54 = v37 < v43 && v39 < v42;
          v201 = v54;
          v200 = v52 || v50;
          v55 = v4;
          v56 = v3;
          while (1)
          {
            if (v18 >= 0x2C)
            {
              v59 = v21;
              v57 = 0;
              v60 = v56 + v29;
              v61 = v56 + 1;
              v62 = v56 + v227;
              v63 = v56 + 2;
              v64 = v56 + v221;
              v65 = v56 + 3;
              v66 = &v56[v26];
              v67 = v4 >= (v56 + v29) || v56 >= v208;
              v68 = v204;
              if (!v67)
              {
                v68 = 1;
              }

              if (v4 < v62 && v61 < v208)
              {
                v68 = 1;
              }

              if (v4 < v64 && v63 < v208)
              {
                v68 = 1;
              }

              if (v4 < v66 && v65 < v208)
              {
                v68 = 1;
              }

              v213 = v68;
              v74 = v36 < v60 && v56 < v207 || (v18 & 0x2000000000000000) != 0;
              v211 = v74;
              v76 = v36 < v62 && v61 < v207;
              v78 = v36 < v64 && v63 < v207;
              v80 = v36 < v66 && v65 < v207;
              v82 = v222 < v60 && v56 < v206;
              v84 = v222 < v62 && v61 < v206;
              v86 = v222 < v64 && v63 < v206;
              v88 = v222 < v66 && v65 < v206;
              v90 = v209 < v60 && v56 < v205;
              v92 = v209 < v62 && v61 < v205;
              v94 = v209 < v64 && v63 < v205;
              if (v65 >= v205 || v209 >= v66)
              {
                v21 = v59;
                if (!v94 && !v92 && !v90 && !v86 && !v84 && !v82 && (((v201 || v80 || v78) | v76 | v200 | v211 | v213) & 1) == 0 && !v88 && (v27 & 0x8000000000000000) == 0)
                {
                  v58 = (v55 + v199);
                  v3 = &v56[v198];
                  v96 = v56 + 16;
                  v97 = v202;
                  v98 = v55;
                  v36 = v226;
                  do
                  {
                    v99 = v96 - 16;
                    v230 = vld4q_f32(v99);
                    v233 = vld4q_f32(v96);
                    *v98 = v230.val[0];
                    v98[1] = v233.val[0];
                    v100 = (v98 + v28);
                    *v100 = v230.val[1];
                    v100[1] = v233.val[1];
                    v101 = (v98 + v28 + v28);
                    *v101 = v230.val[2];
                    v101[1] = v233.val[2];
                    v102 = (v101 + v28);
                    *v102 = v230.val[3];
                    v102[1] = v233.val[3];
                    v96 += 32;
                    v98 += 2;
                    v97 -= 8;
                  }

                  while (v97);
                  v57 = v202;
                  if (v18 == v202)
                  {
                    goto LABEL_70;
                  }

                  goto LABEL_182;
                }

                v58 = v55;
                v3 = v56;
              }

              else
              {
                v58 = v55;
                v3 = v56;
                v21 = v59;
              }

              v36 = v226;
            }

            else
            {
              v57 = 0;
              v58 = v55;
              v3 = v56;
            }

LABEL_182:
            v103 = v21 - v57;
            do
            {
              v58->f32[0] = *v3;
              v58->f32[v28 / 4] = v3[1];
              v58->f32[v24] = v3[2];
              v58->f32[v25] = v3[3];
              v3 += 4;
              v58 = (v58 + 4);
              --v103;
            }

            while (v103);
LABEL_70:
            ++v38;
            v55 = (v55 + v27);
            v56 = v3;
            v29 = v223;
            if (v38 >= v20)
            {
              goto LABEL_26;
            }
          }
        }

        v145 = 0;
        v146 = v195 + v35;
        v147 = v194 + v35;
        v148 = v192 + v35;
        v150 = v4 < v194 + v35 && v36 < v146;
        v214 = v146;
        v153 = v4 < v148 && v37 < v146 || (v18 & 0x2000000000000000) != 0 || v150;
        v212 = v153;
        v155 = v36 < v148 && v37 < v147;
        v156 = v32;
        v157 = v4;
        while (1)
        {
          if (v18 < 0x21)
          {
            v158 = 0;
            v159 = v157;
            goto LABEL_333;
          }

          v158 = 0;
          v160 = v3 + v29;
          v161 = v3 + 1;
          v162 = (v3 + v227);
          v163 = v3 + 2;
          v164 = (v3 + v221);
          v165 = v4 >= (v3 + v29) || v3 >= v214;
          v166 = v212;
          if (!v165)
          {
            v166 = 1;
          }

          if (v4 < v162 && v161 < v214)
          {
            v166 = 1;
          }

          if (v4 < v164 && v163 < v214)
          {
            v166 = 1;
          }

          v169 = v36 >= v160 || v3 >= v147;
          v170 = !v169;
          v171 = v36 >= v162 || v161 >= v147;
          v172 = !v171;
          v173 = v36 >= v164 || v163 >= v147;
          v174 = !v173;
          v175 = v222 >= v160 || v3 >= v148;
          v176 = !v175;
          v177 = v222 >= v162 || v161 >= v148;
          v178 = !v177;
          v179 = v163 >= v148 || v222 >= v164;
          if (!v179 || v178 || v174 || v172)
          {
            break;
          }

          v36 = v226;
          if (!v170 && ((v155 | v166) & 1) == 0 && !v176 && (v27 & 0x8000000000000000) == 0)
          {
            v159 = (v157 + v225);
            v180 = &v3[v224];
            v181 = v3 + 16;
            v182 = v34;
            v183 = v156;
            v184 = v33;
            v185 = v228;
            do
            {
              v186 = v181 - 16;
              v232 = vld4q_f32(v186);
              v235 = vld4q_f32(v181);
              v183[-1] = v232.val[0];
              *v183 = v235.val[0];
              v184[-1] = v232.val[1];
              *v184 = v235.val[1];
              v181 += 32;
              v182[-1] = v232.val[2];
              *v182 = v235.val[2];
              v184 += 2;
              v183 += 2;
              v182 += 2;
              v185 -= 8;
            }

            while (v185);
            v158 = v228;
            v3 = v180;
            v29 = v223;
            goto LABEL_332;
          }

          v159 = v157;
LABEL_333:
          v187 = v21 - v158;
          do
          {
            v159->f32[0] = *v3;
            v159->f32[v28 / 4] = v3[1];
            v159->f32[v24] = v3[2];
            v3 += 4;
            v159 = (v159 + 4);
            --v187;
          }

          while (v187);
          v157 = (v157 + 4 * v18);
          ++v145;
          v33 = (v33 + v27);
          v156 = (v156 + v27);
          v34 = (v34 + v27);
          if (v145 >= v20)
          {
            goto LABEL_26;
          }
        }

        v159 = v157;
LABEL_332:
        v36 = v226;
        goto LABEL_333;
      }

      v120 = 0;
      v121 = v195 + v35;
      v122 = v194 + v35;
      v124 = v4 < v194 + v35 && v36 < v121;
      v125 = v32;
      v126 = v4;
      while (1)
      {
        if (v18 >= 0x15)
        {
          v127 = 0;
          v129 = (v18 >> 61) & 1;
          v130 = v3 + 1;
          v131 = (v3 + v227);
          if (v4 < (v3 + v29) && v3 < v121)
          {
            LODWORD(v129) = 1;
          }

          v134 = v4 < v131 && v130 < v121;
          v136 = v36 < v3 + v29 && v3 < v122;
          v137 = v130 >= v122 || v36 >= v131;
          if (v137 && !v136 && !v134 && ((v124 | v129) & 1) == 0)
          {
            v128 = (v126 + v225);
            v138 = &v3[v224];
            v139 = v3 + 16;
            v140 = v125;
            v141 = v33;
            v142 = v228;
            do
            {
              v143 = v139 - 16;
              v231 = vld4q_f32(v143);
              v234 = vld4q_f32(v139);
              v140[-1] = v231.val[0];
              *v140 = v234.val[0];
              v141[-1] = v231.val[1];
              *v141 = v234.val[1];
              v139 += 32;
              v141 += 2;
              v140 += 2;
              v142 -= 8;
            }

            while (v142);
            v127 = v228;
            v3 = v138;
            v36 = v226;
            goto LABEL_243;
          }
        }

        else
        {
          v127 = 0;
        }

        v128 = v126;
LABEL_243:
        v144 = v21 - v127;
        do
        {
          v128->f32[0] = *v3;
          v128->f32[v28 / 4] = v3[1];
          v3 += 4;
          v128 = (v128 + 4);
          --v144;
        }

        while (v144);
        ++v120;
        v126 = (v126 + 4 * v18);
        v33 = (v33 + v27);
        v125 = (v125 + v27);
        if (v120 >= v20)
        {
          goto LABEL_26;
        }
      }
    }

    v105 = 0;
    v106 = &v197[v35];
    v107 = v32;
    v108 = v4;
    while (1)
    {
      if (v18 >= 0xD)
      {
        v109 = 0;
        v111 = v3 >= v106 || v4 >= (v3 + v29);
        if (v111 && (v18 & 0x2000000000000000) == 0)
        {
          v110 = (v108 + v225);
          v112 = v3 + 16;
          v113 = v228;
          v114 = v107;
          do
          {
            v115 = v112 - 16;
            v116 = vld4q_f32(v115);
            v117 = vld4q_f32(v112);
            *(v114 - 1) = v116;
            *v114 = v117;
            v112 += 32;
            v114 += 2;
            v113 -= 8;
          }

          while (v113);
          v109 = v228;
          v3 = (v3 + v224 * 4);
          goto LABEL_201;
        }
      }

      else
      {
        v109 = 0;
      }

      v110 = v108;
LABEL_201:
      v118 = v21 - v109;
      do
      {
        v119 = *v3;
        v3 += 4;
        v110->i32[0] = v119;
        v110 = (v110 + 4);
        --v118;
      }

      while (v118);
      ++v105;
      v108 = (v108 + 4 * v18);
      v107 = (v107 + v27);
      if (v105 >= v20)
      {
        goto LABEL_26;
      }
    }
  }

  return memcpy(__dst, __src, 4 * v5);
}

uint64_t sub_239CE41CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 432);
  v7 = *(a1 + 440);
  v8 = *(a1 + 444);
  v9 = *(a1 + 448);
  if (*(a4 + 240) && MTLReportFailureTypeEnabled())
  {
    v77 = objc_opt_class();
    v80 = NSStringFromClass(v77);
    MTLReportFailure();
  }

  if (*(a4 + 240) != *(a4 + 296) && MTLReportFailureTypeEnabled())
  {
    v78 = objc_opt_class();
    v80 = NSStringFromClass(v78);
    MTLReportFailure();
  }

  if (*(a4 + 192) && MTLReportFailureTypeEnabled())
  {
    v79 = objc_opt_class();
    v80 = NSStringFromClass(v79);
    MTLReportFailure();
  }

  ComputeState = MPSLibrary::GetComputeState();
  objc_msgSend_setComputePipelineState_(a2, v11, ComputeState, v12, v13, v14, v15, v16);
  MPSLibrary::ReleaseComputeState();
  v22 = *(a4 + 24);
  v23 = *(a4 + 40);
  if (*(a4 + 48) == 1)
  {
    v24 = (v22 + 3) >> 2;
  }

  else
  {
    v24 = 1;
  }

  v25 = *(a4 + 80) + 3;
  v26 = *(a4 + 144);
  v27 = *(a4 + 304) + 3;
  v28 = vmovn_s64(*(a4 + 224));
  v84 = *(a4 + 240) * ((v22 + 3) >> 2);
  v83 = vuzp1_s16(v28, v28).u32[0];
  v29 = vmovn_s64(*(a4 + 280));
  v86 = *(a4 + 296) * (v25 >> 2);
  v85 = vuzp1_s16(v29, v29).u32[0];
  v30 = vmovn_s64(*(a4 + 176));
  v88 = *(a4 + 192) * ((v26 + 3) >> 2) + (v27 >> 2);
  v87 = vuzp1_s16(v30, v30).u32[0];
  v31 = vmovn_s64(*(a4 + 200));
  v90 = v31.i16[2];
  v89 = v31.i16[0];
  v91 = v22;
  v92 = v26;
  v93 = v6;
  v94 = v6;
  v95 = v7;
  v96 = -v8;
  v97 = v9;
  v98 = 1.0 / v6;
  objc_msgSend_setTexture_atIndex_(a2, v17, v23, 0, v18, v19, v20, v21, v80);
  objc_msgSend_setTexture_atIndex_(a2, v32, *(a4 + 96), 1, v33, v34, v35, v36);
  objc_msgSend_setTexture_atIndex_(a2, v37, *(a4 + 160), 2, v38, v39, v40, v41);
  Sampler = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v43, Sampler, 0, v44, v45, v46, v47);
  objc_msgSend_setBytes_length_atIndex_(a2, v48, &v83, 64, 0, v49, v50, v51);
  v59 = objc_msgSend_threadExecutionWidth(ComputeState, v52, v53, v54, v55, v56, v57, v58);
  if (v59 <= 1)
  {
    v67 = 1;
  }

  else
  {
    v67 = v59;
  }

  v68 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v60, v61, v62, v63, v64, v65, v66);
  v69 = *(a4 + 216);
  v70 = (v68 / v67 + *(a4 + 208) - 1) / (v68 / v67);
  v82[0] = (v67 + *(a4 + 200) - 1) / v67;
  v82[1] = v70;
  v82[2] = v69 * v24;
  v81[0] = v67;
  v81[1] = v68 / v67;
  v81[2] = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v71, v82, v81, v72, v73, v74, v75);
  return 0;
}

uint64_t sub_239CE4A24(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 432);
  v11 = *(a1 + 436);
  v12 = *(a1 + 440);
  v13 = *(a1 + 256);
  v14 = *(a1 + 264);
  if ((*(a1 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    objc_msgSend_numberOfImages(*a4, a2, a3, a4, a5, a6, a7, a8);
    v15 = *(a4 + 216) + *(a4 + 240);
    if (v15 > objc_msgSend_numberOfImages(*a4, v16, v17, v18, v19, v20, v21, v22) && MTLReportFailureTypeEnabled())
    {
      v109 = objc_opt_class();
      v111 = NSStringFromClass(v109);
      MTLReportFailure();
    }

    objc_msgSend_numberOfImages(*(a4 + 120), v23, v24, v25, v26, v27, v28, v29, v111);
    v30 = *(a4 + 216) + *(a4 + 192);
    if (v30 > objc_msgSend_numberOfImages(*(a4 + 120), v31, v32, v33, v34, v35, v36, v37) && MTLReportFailureTypeEnabled())
    {
      v110 = objc_opt_class();
      v111 = NSStringFromClass(v110);
      MTLReportFailure();
    }
  }

  if (*(a4 + 240) && MTLReportFailureTypeEnabled())
  {
    v106 = objc_opt_class();
    v111 = NSStringFromClass(v106);
    MTLReportFailure();
  }

  if (*(a4 + 240) != *(a4 + 296) && MTLReportFailureTypeEnabled())
  {
    v107 = objc_opt_class();
    v111 = NSStringFromClass(v107);
    MTLReportFailure();
  }

  if (*(a4 + 192) && MTLReportFailureTypeEnabled())
  {
    v108 = objc_opt_class();
    v111 = NSStringFromClass(v108);
    MTLReportFailure();
  }

  ComputeState = MPSLibrary::GetComputeState();
  objc_msgSend_setComputePipelineState_(a2, v39, ComputeState, v40, v41, v42, v43, v44);
  MPSLibrary::ReleaseComputeState();
  v50 = *(a4 + 24);
  v51 = *(a4 + 40);
  if (*(a4 + 48) == 1)
  {
    v52 = (v50 + 3) >> 2;
  }

  else
  {
    v52 = 1;
  }

  v53 = *(a4 + 80) + 3;
  v54 = *(a4 + 144);
  v55 = *(a4 + 304) + 3;
  v56 = vmovn_s64(*(a4 + 224));
  v115 = *(a4 + 240) * ((v50 + 3) >> 2);
  v114 = vuzp1_s16(v56, v56).u32[0];
  v57 = vmovn_s64(*(a4 + 280));
  v117 = *(a4 + 296) * (v53 >> 2);
  v116 = vuzp1_s16(v57, v57).u32[0];
  v58 = vmovn_s64(*(a4 + 176));
  v59 = *(a4 + 192) * ((v54 + 3) >> 2) + (v55 >> 2);
  v118 = vuzp1_s16(v58, v58).u32[0];
  v60 = vmovn_s64(*(a4 + 200));
  v119 = v59;
  v121 = v60.i16[2];
  v120 = v60.i16[0];
  v122 = v50;
  v123 = v54;
  v124 = v13;
  v125 = v14;
  v126 = v10;
  v127 = -v11;
  v128 = v12;
  v129 = 1.0 / (v14 * v13);
  objc_msgSend_setTexture_atIndex_(a2, v45, v51, 0, v46, v47, v48, v49, v111);
  objc_msgSend_setTexture_atIndex_(a2, v61, *(a4 + 96), 1, v62, v63, v64, v65);
  objc_msgSend_setTexture_atIndex_(a2, v66, *(a4 + 160), 2, v67, v68, v69, v70);
  Sampler = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v72, Sampler, 0, v73, v74, v75, v76);
  objc_msgSend_setBytes_length_atIndex_(a2, v77, &v114, 64, 0, v78, v79, v80);
  v88 = objc_msgSend_threadExecutionWidth(ComputeState, v81, v82, v83, v84, v85, v86, v87);
  if (v88 <= 1)
  {
    v96 = 1;
  }

  else
  {
    v96 = v88;
  }

  v97 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v89, v90, v91, v92, v93, v94, v95);
  v98 = *(a4 + 216);
  v99 = (v97 / v96 + *(a4 + 208) - 1) / (v97 / v96);
  v113[0] = (v96 + *(a4 + 200) - 1) / v96;
  v113[1] = v99;
  v113[2] = v98 * v52;
  v112[0] = v96;
  v112[1] = v97 / v96;
  v112[2] = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v100, v113, v112, v101, v102, v103, v104);
  return 0;
}

uint64_t sub_239CE539C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 432);
  v11 = *(a1 + 436);
  v12 = *(a1 + 440);
  v13 = *(a1 + 444);
  v14 = *(a1 + 448);
  v15 = *(a1 + 452);
  v16 = *(a1 + 256);
  v17 = *(a1 + 264);
  if ((*(a1 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    objc_msgSend_numberOfImages(*a4, a2, a3, a4, a5, a6, a7, a8);
    v18 = *(a4 + 216) + *(a4 + 240);
    if (v18 > objc_msgSend_numberOfImages(*a4, v19, v20, v21, v22, v23, v24, v25) && MTLReportFailureTypeEnabled())
    {
      v111 = objc_opt_class();
      v113 = NSStringFromClass(v111);
      MTLReportFailure();
    }

    objc_msgSend_numberOfImages(*(a4 + 120), v26, v27, v28, v29, v30, v31, v32, v113);
    v33 = *(a4 + 216) + *(a4 + 192);
    if (v33 > objc_msgSend_numberOfImages(*(a4 + 120), v34, v35, v36, v37, v38, v39, v40) && MTLReportFailureTypeEnabled())
    {
      v112 = objc_opt_class();
      v113 = NSStringFromClass(v112);
      MTLReportFailure();
    }
  }

  if (*(a4 + 240) && MTLReportFailureTypeEnabled())
  {
    v108 = objc_opt_class();
    v113 = NSStringFromClass(v108);
    MTLReportFailure();
  }

  if (*(a4 + 240) != *(a4 + 296) && MTLReportFailureTypeEnabled())
  {
    v109 = objc_opt_class();
    v113 = NSStringFromClass(v109);
    MTLReportFailure();
  }

  if (*(a4 + 192) && MTLReportFailureTypeEnabled())
  {
    v110 = objc_opt_class();
    v113 = NSStringFromClass(v110);
    MTLReportFailure();
  }

  ComputeState = MPSLibrary::GetComputeState();
  objc_msgSend_setComputePipelineState_(a2, v42, ComputeState, v43, v44, v45, v46, v47);
  MPSLibrary::ReleaseComputeState();
  v53 = *(a4 + 24);
  v54 = *(a4 + 40);
  if (*(a4 + 48) == 1)
  {
    v55 = (v53 + 3) >> 2;
  }

  else
  {
    v55 = 1;
  }

  v56 = *(a4 + 80) + 3;
  v57 = *(a4 + 144);
  v58 = *(a4 + 304) + 3;
  v59 = vmovn_s64(*(a4 + 224));
  v117 = *(a4 + 240) * ((v53 + 3) >> 2);
  v116 = vuzp1_s16(v59, v59).u32[0];
  v60 = vmovn_s64(*(a4 + 280));
  v119 = *(a4 + 296) * (v56 >> 2);
  v118 = vuzp1_s16(v60, v60).u32[0];
  v61 = vmovn_s64(*(a4 + 176));
  v121 = *(a4 + 192) * ((v57 + 3) >> 2) + (v58 >> 2);
  v120 = vuzp1_s16(v61, v61).u32[0];
  v62 = vmovn_s64(*(a4 + 200));
  v123 = v62.i16[2];
  v122 = v62.i16[0];
  v124 = v53;
  v125 = v57;
  v126 = v16;
  v127 = v17;
  v128 = v10;
  v129 = -v11;
  v130 = v12;
  v131 = v13;
  v132 = v15;
  v133 = v14;
  v134 = 1.0 / (v17 * v16);
  objc_msgSend_setTexture_atIndex_(a2, v48, v54, 0, v49, v50, v51, v52, v113);
  objc_msgSend_setTexture_atIndex_(a2, v63, *(a4 + 96), 1, v64, v65, v66, v67);
  objc_msgSend_setTexture_atIndex_(a2, v68, *(a4 + 160), 2, v69, v70, v71, v72);
  Sampler = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v74, Sampler, 0, v75, v76, v77, v78);
  objc_msgSend_setBytes_length_atIndex_(a2, v79, &v116, 64, 0, v80, v81, v82);
  v90 = objc_msgSend_threadExecutionWidth(ComputeState, v83, v84, v85, v86, v87, v88, v89);
  if (v90 <= 1)
  {
    v98 = 1;
  }

  else
  {
    v98 = v90;
  }

  v99 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v91, v92, v93, v94, v95, v96, v97);
  v100 = *(a4 + 216);
  v101 = (v99 / v98 + *(a4 + 208) - 1) / (v99 / v98);
  v115[0] = (v98 + *(a4 + 200) - 1) / v98;
  v115[1] = v101;
  v115[2] = v100 * v55;
  v114[0] = v98;
  v114[1] = v99 / v98;
  v114[2] = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v102, v115, v114, v103, v104, v105, v106);
  return 0;
}

uint64_t sub_239CE619C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 112);
  v5 = [MPSCNNLoss alloc];
  result = objc_msgSend_initWithDevice_lossDescriptor_(v5, v6, a2, *(v4 + 64), v7, v8, v9, v10);
  *(a1 + 104) = result;
  return result;
}

uint64_t sub_239CE6608(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 112);
  v5 = [MPSCNNYOLOLoss alloc];
  result = objc_msgSend_initWithDevice_lossDescriptor_(v5, v6, a2, *(v4 + 64), v7, v8, v9, v10);
  *(a1 + 104) = result;
  return result;
}

void *sub_239CE6F34(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 112);
  v5 = [MPSNNForwardLoss alloc];
  result = objc_msgSend_initWithDevice_lossDescriptor_(v5, v6, a2, *(v4 + 88), v7, v8, v9, v10);
  *(a1 + 104) = result;
  v12 = *(v4 + 96);
  if (v12)
  {
    v13 = result;
    result = v12;
    v13[42] = result;
  }

  return result;
}

uint64_t sub_239CE6FB0(uint64_t a1, const char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a5;
  v56[1] = *MEMORY[0x277D85DE8];
  v12 = *(a1 + 104);
  if (objc_msgSend_count(a3, a2, a3, a4, a5, a6, a7, a8) < 3)
  {
    v19 = 0;
  }

  else
  {
    v19 = objc_msgSend_objectAtIndexedSubscript_(a3, v13, 2, v14, v15, v16, v17, v18);
  }

  v56[0] = objc_msgSend_objectAtIndexedSubscript_(a3, v13, 0, v14, v15, v16, v17, v18);
  v25 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v20, v56, 1, v21, v22, v23, v24);
  v55 = objc_msgSend_objectAtIndexedSubscript_(a3, v26, 1, v27, v28, v29, v30, v31);
  v43 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v32, &v55, 1, v33, v34, v35, v36);
  if (v19)
  {
    v54 = v19;
    v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v37, &v54, 1, v39, v40, v41, v42);
  }

  if (v9)
  {
    v53 = objc_msgSend_objectAtIndexedSubscript_(v9, v37, 0, v38, v39, v40, v41, v42);
    v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v44, &v53, 1, v45, v46, v47, v48);
  }

  v52 = a6;
  v49 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v37, &v52, 1, v39, v40, v41, v42);
  return objc_msgSend_encodeBatchToCommandBuffer_sourceImages_labels_weights_destinationStates_destinationImages_(v12, v50, a2, v25, v43, v19, v9, v49);
}

uint64_t sub_239CE7118(uint64_t a1, const char *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a1 + 104);
  if (objc_msgSend_count(a3, a2, a3, a4, a5, a6, a7, a8) < 3)
  {
    v19 = 0;
  }

  else
  {
    v19 = objc_msgSend_objectAtIndexedSubscript_(a3, v13, 2, v14, v15, v16, v17, v18);
  }

  v20 = objc_msgSend_objectAtIndexedSubscript_(a3, v13, 0, v14, v15, v16, v17, v18);
  v33 = objc_msgSend_objectAtIndexedSubscript_(a3, v21, 1, v22, v23, v24, v25, v26);
  if (a5)
  {
    v34 = objc_msgSend_objectAtIndexedSubscript_(a5, v27, 0, v28, v29, v30, v31, v32);
  }

  else
  {
    v34 = 0;
  }

  return objc_msgSend_encodeBatchToCommandBuffer_sourceImages_labels_weights_destinationStates_destinationImages_(v12, v27, a2, v20, v33, v19, v34, a6);
}

id sub_239CE786C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 112);
  v5 = [MPSNNLossGradient alloc];
  v11 = objc_msgSend_initWithDevice_lossDescriptor_(v5, v6, a2, v4[11], v7, v8, v9, v10);
  isLabelsGradientFilter = objc_msgSend_isLabelsGradientFilter(v4, v12, v13, v14, v15, v16, v17, v18);
  result = objc_msgSend_setComputeLabelGradients_(v11, v20, isLabelsGradientFilter, v21, v22, v23, v24, v25);
  *(a1 + 104) = v11;
  v27 = v4[13];
  if (v27)
  {
    result = v27;
    v11[53] = result;
  }

  return result;
}

uint64_t sub_239CE78FC(uint64_t a1, const char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a4;
  v69[1] = *MEMORY[0x277D85DE8];
  v12 = *(a1 + 104);
  if (objc_msgSend_count(a3, a2, a3, a4, a5, a6, a7, a8) < 4)
  {
    v19 = 0;
  }

  else
  {
    v19 = objc_msgSend_objectAtIndexedSubscript_(a3, v13, 3, v14, v15, v16, v17, v18);
  }

  v69[0] = objc_msgSend_objectAtIndexedSubscript_(a3, v13, 0, v14, v15, v16, v17, v18);
  v25 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v20, v69, 1, v21, v22, v23, v24);
  v68 = objc_msgSend_objectAtIndexedSubscript_(a3, v26, 1, v27, v28, v29, v30, v31);
  v37 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v32, &v68, 1, v33, v34, v35, v36);
  v67 = objc_msgSend_objectAtIndexedSubscript_(a3, v38, 2, v39, v40, v41, v42, v43);
  v55 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v44, &v67, 1, v45, v46, v47, v48);
  if (v19)
  {
    v66 = v19;
    v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v49, &v66, 1, v51, v52, v53, v54);
  }

  if (v9)
  {
    v65 = objc_msgSend_objectAtIndexedSubscript_(v9, v49, 0, v50, v51, v52, v53, v54);
    v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v56, &v65, 1, v57, v58, v59, v60);
  }

  v64 = a6;
  v61 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v49, &v64, 1, v51, v52, v53, v54);
  return objc_msgSend_encodeBatchToCommandBuffer_sourceGradients_sourceImages_labels_weights_sourceStates_destinationGradients_(v12, v62, a2, v25, v37, v55, v19, v9, v61);
}

uint64_t sub_239CE7A94(uint64_t a1, const char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a1 + 104);
  if (objc_msgSend_count(a3, a2, a3, a4, a5, a6, a7, a8) < 4)
  {
    v19 = 0;
  }

  else
  {
    v19 = objc_msgSend_objectAtIndexedSubscript_(a3, v13, 3, v14, v15, v16, v17, v18);
  }

  v20 = objc_msgSend_objectAtIndexedSubscript_(a3, v13, 0, v14, v15, v16, v17, v18);
  v27 = objc_msgSend_objectAtIndexedSubscript_(a3, v21, 1, v22, v23, v24, v25, v26);
  v40 = objc_msgSend_objectAtIndexedSubscript_(a3, v28, 2, v29, v30, v31, v32, v33);
  if (!a4)
  {
    return objc_msgSend_encodeBatchToCommandBuffer_sourceGradients_sourceImages_labels_weights_sourceStates_destinationGradients_(v12, v34, a2, v20, v27, v40, v19, 0, a6);
  }

  v41 = objc_msgSend_objectAtIndexedSubscript_(a4, v34, 0, v35, v36, v37, v38, v39);
  return objc_msgSend_encodeBatchToCommandBuffer_sourceGradients_sourceImages_labels_weights_sourceStates_destinationGradients_(v12, v42, a2, v20, v27, v40, v19, v41, a6);
}

uint64_t sub_239CE7E48(uint64_t a1, uint64_t a2)
{
  v4 = [MPSNNInitialGradient alloc];
  result = objc_msgSend_initWithDevice_(v4, v5, a2, v6, v7, v8, v9, v10);
  *(a1 + 104) = result;
  return result;
}

void sub_239CE7E88(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void *sub_239CE7EC0(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  (*(*a1 + 184))(a1);
  v17 = objc_msgSend_objectAtIndexedSubscript_(a4, v11, 0, v12, v13, v14, v15, v16);
  v18 = *(a1 + 104);
  v25 = objc_msgSend_objectAtIndexedSubscript_(a3, v19, 0, v20, v21, v22, v23, v24);
  result = objc_msgSend_encodeToCommandBuffer_sourceImage_labels_destinationImage_(v18, v26, a2, v25, v17, a6, v27, v28);
  v37 = **(a1 + 56);
  if (v37)
  {
    if (*(v37 + 80) == 1)
    {
      result = objc_msgSend_lossImage(v17, v30, v31, v32, v33, v34, v35, v36);
      if (result)
      {
        if ((*(result + *MEMORY[0x277CD7320] + 56) & 1) == 0)
        {

          return objc_msgSend_synchronizeOnCommandBuffer_(result, v38, a2, v39, v40, v41, v42, v43);
        }
      }
    }
  }

  return result;
}

void *sub_239CE7FC0(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  (*(*a1 + 192))(a1);
  v17 = objc_msgSend_objectAtIndexedSubscript_(a4, v11, 0, v12, v13, v14, v15, v16);
  v18 = *(a1 + 104);
  v25 = objc_msgSend_objectAtIndexedSubscript_(a3, v19, 0, v20, v21, v22, v23, v24);
  result = objc_msgSend_encodeBatchToCommandBuffer_sourceImages_labels_destinationImages_(v18, v26, a2, v25, v17, a6, v27, v28);
  v37 = **(a1 + 56);
  if (v37)
  {
    if (*(v37 + 80) == 1)
    {
      result = objc_msgSend_count(v17, v30, v31, v32, v33, v34, v35, v36);
      if (result)
      {
        v44 = result;
        v45 = 0;
        v46 = MEMORY[0x277CD7320];
        for (i = objc_msgSend_objectAtIndexedSubscript_(v17, v38, 0, v39, v40, v41, v42, v43); ; i = objc_msgSend_objectAtIndexedSubscript_(v17, v55, v45, v56, v57, v58, v59, v60))
        {
          result = objc_msgSend_lossImage(i, v48, v49, v50, v51, v52, v53, v54);
          if (result)
          {
            if ((*(result + *v46 + 56) & 1) == 0)
            {
              result = objc_msgSend_synchronizeOnCommandBuffer_(result, v55, a2, v56, v57, v58, v59, v60);
            }
          }

          if (v44 == ++v45)
          {
            break;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_239CE80D0(uint64_t result, const char *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(*(result + 104) + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    objc_msgSend_count(a4, a2, a3, a4, a5, a6, a7, a8);
    result = objc_msgSend_count(a4, v9, v10, v11, v12, v13, v14, v15);
    if (!result)
    {
      result = MTLReportFailureTypeEnabled();
      if (result)
      {

        return MTLReportFailure();
      }
    }
  }

  return result;
}

uint64_t sub_239CE8158(uint64_t result, const char *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(*(result + 104) + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    objc_msgSend_count(a4, a2, a3, a4, a5, a6, a7, a8);
    result = objc_msgSend_count(a4, v9, v10, v11, v12, v13, v14, v15);
    if (!result)
    {
      result = MTLReportFailureTypeEnabled();
      if (result)
      {

        return MTLReportFailure();
      }
    }
  }

  return result;
}

void sub_239CE81F4(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void *sub_239CE822C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  (*(*a1 + 184))(a1);
  v17 = objc_msgSend_objectAtIndexedSubscript_(a4, v11, 0, v12, v13, v14, v15, v16);
  v18 = *(a1 + 104);
  v25 = objc_msgSend_objectAtIndexedSubscript_(a3, v19, 0, v20, v21, v22, v23, v24);
  result = objc_msgSend_encodeToCommandBuffer_sourceImage_labels_destinationImage_(v18, v26, a2, v25, v17, a6, v27, v28);
  v37 = **(a1 + 56);
  if (v37)
  {
    if (*(v37 + 80) == 1)
    {
      result = objc_msgSend_lossImage(v17, v30, v31, v32, v33, v34, v35, v36);
      if (result)
      {
        if ((*(result + *MEMORY[0x277CD7320] + 56) & 1) == 0)
        {

          return objc_msgSend_synchronizeOnCommandBuffer_(result, v38, a2, v39, v40, v41, v42, v43);
        }
      }
    }
  }

  return result;
}

void *sub_239CE832C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  (*(*a1 + 192))(a1);
  v17 = objc_msgSend_objectAtIndexedSubscript_(a4, v11, 0, v12, v13, v14, v15, v16);
  v18 = *(a1 + 104);
  v25 = objc_msgSend_objectAtIndexedSubscript_(a3, v19, 0, v20, v21, v22, v23, v24);
  result = objc_msgSend_encodeBatchToCommandBuffer_sourceImages_labels_destinationImages_(v18, v26, a2, v25, v17, a6, v27, v28);
  v37 = **(a1 + 56);
  if (v37)
  {
    if (*(v37 + 80) == 1)
    {
      result = objc_msgSend_count(v17, v30, v31, v32, v33, v34, v35, v36);
      if (result)
      {
        v44 = result;
        v45 = 0;
        v46 = MEMORY[0x277CD7320];
        for (i = objc_msgSend_objectAtIndexedSubscript_(v17, v38, 0, v39, v40, v41, v42, v43); ; i = objc_msgSend_objectAtIndexedSubscript_(v17, v55, v45, v56, v57, v58, v59, v60))
        {
          result = objc_msgSend_lossImage(i, v48, v49, v50, v51, v52, v53, v54);
          if (result)
          {
            if ((*(result + *v46 + 56) & 1) == 0)
            {
              result = objc_msgSend_synchronizeOnCommandBuffer_(result, v55, a2, v56, v57, v58, v59, v60);
            }
          }

          if (v44 == ++v45)
          {
            break;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_239CE843C(uint64_t result, const char *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(*(result + 104) + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    objc_msgSend_count(a4, a2, a3, a4, a5, a6, a7, a8);
    result = objc_msgSend_count(a4, v9, v10, v11, v12, v13, v14, v15);
    if (!result)
    {
      result = MTLReportFailureTypeEnabled();
      if (result)
      {

        return MTLReportFailure();
      }
    }
  }

  return result;
}

uint64_t sub_239CE84C4(uint64_t result, const char *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(*(result + 104) + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    objc_msgSend_count(a4, a2, a3, a4, a5, a6, a7, a8);
    result = objc_msgSend_count(a4, v9, v10, v11, v12, v13, v14, v15);
    if (!result)
    {
      result = MTLReportFailureTypeEnabled();
      if (result)
      {

        return MTLReportFailure();
      }
    }
  }

  return result;
}

void sub_239CE8558(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239CE8590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 && MTLReportFailureTypeEnabled())
  {

    MTLReportFailure();
  }
}

void sub_239CE85E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 && MTLReportFailureTypeEnabled())
  {

    MTLReportFailure();
  }
}

void sub_239CE863C(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

void sub_239CE8688(uint64_t a1)
{
  sub_239C13FBC(a1);

  JUMPOUT(0x23EE7D130);
}

uint64_t sub_239CEA330(void *a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v82[1] = *MEMORY[0x277D85DE8];
  v74 = *(a4 + 120);
  v75 = *(a4 + 136);
  v76 = *(a4 + 152);
  v12 = *(a4 + 192);
  v51[0] = 1;
  v79 = v12;
  v20 = objc_msgSend_maxBatchSize(a1, a2, a3, a4, a5, a6, a7, a8);
  v22 = (a4 + 64);
  v21 = *(a4 + 64);
  if (v21)
  {
    v21 = objc_msgSend_featureChannels(v21, v13, v14, v15, v16, v17, v18, v19);
    v23 = *v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = *(a4 + 192);
  v25 = (v21 - v24 + 3) >> 2;
  if (v21 <= v24)
  {
    LOWORD(v25) = 0;
  }

  v26 = vmovn_s64(*(a4 + 120));
  LOWORD(v27) = v26.i16[0];
  WORD1(v27) = v26.i16[2];
  HIDWORD(v27) = ((v24 + 3) >> 2);
  v28 = vmovn_s64(*(a4 + 144));
  HIWORD(v29) = 1;
  LOWORD(v29) = v28.i16[0];
  WORD1(v29) = v28.i16[2];
  WORD2(v29) = v25;
  v30 = MEMORY[0x277CD72F8];
  if (v23)
  {
    v31 = *(v23 + *MEMORY[0x277CD72F8]);
  }

  else
  {
    v31 = 0;
  }

  v54 = v27;
  v55 = v29;
  v56 = v31;
  v57 = v23 != 0;
  v58 = 1;
  v59 = 0;
  v60 = v20;
  v61 = 0;
  if (*(a4 + 104))
  {
    v82[0] = *(a4 + 104);
    v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v82, 1, v16, v17, v18, v19);
  }

  else
  {
    v32 = 0;
  }

  v33 = *(a4 + 80);
  v46 = *v22;
  v47 = v33;
  v48 = *(a4 + 96);
  v34 = *(a4 + 16);
  v35 = *(a4 + 32);
  v44[0] = *a4;
  v44[1] = v34;
  v53 = v32;
  v52 = *(a4 + 80);
  v36 = *(a4 + 112);
  v44[2] = v35;
  v37 = *(a4 + 40);
  v45 = *(a4 + 48);
  v38 = *(a4 + 56);
  v49 = v36;
  v50 = v38;
  v51[3] = v44;
  v77 = *(a4 + 168);
  v39 = *(a4 + 200);
  v78 = *(a4 + 184);
  v80 = v39;
  v40 = *(*a4 + *v30);
  v41 = vmovn_s64(*(a4 + 168));
  v65 = v41.i16[2];
  v66 = 0x1000100000000;
  v64 = v41.i16[0];
  v68 = v41.i16[2];
  v67 = v41.i16[0];
  v69 = 0x1000100010001;
  v70 = v39;
  v71 = v40;
  v72 = v78;
  v73 = 1;
  v81 = v37;
  v63 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, &v81, 1, v16, v17, v18, v19, v44[0], v34, v35, v45, v46, v47, v48, v36, v50);
  v62 = *(a4 + 16);
  v42 = *(a4 + 208);
  v51[0] = *(a4 + 216);
  v51[1] = 1;
  v51[2] = v42;
  sub_239CEA5BC(a1, a2, a3, v51);
  return 0;
}

uint64_t sub_239CEA5BC(uint64_t a1, char *a2, void *a3, uint64_t a4)
{
  v554 = *MEMORY[0x277D85DE8];
  MEMORY[0x23EE7D040](v536, a3, 0);
  v7 = *(a4 + 24);
  v8 = v7[14];
  v9 = *v7;
  v506 = objc_msgSend_labelsImage(v8, v10, v11, v12, v13, v14, v15, v16);
  v509 = objc_msgSend_weightsImage(v8, v17, v18, v19, v20, v21, v22, v23);
  v490 = objc_msgSend_lossImage(v8, v24, v25, v26, v27, v28, v29, v30);
  v38 = MEMORY[0x277CD7378];
  if ((*(a1 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (!v506 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (!v9 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v489 = v9;
  v497 = *(a4 + 160);
  v493 = *(a4 + 168);
  v507 = *(v506 + *MEMORY[0x277CD72F8]);
  v39 = &OBJC_IVAR___MPSNNScale__destSize;
  if ((*(a1 + *v38) & 1) == 0 && *(a4 + 8))
  {
    v40 = 0;
    v41 = 0;
    do
    {
      v42 = (*(a4 + 24) + v40);
      v43 = *v42;
      v44 = v42[14];
      if (!v44 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v45 = objc_msgSend_labelsImage(v44, v31, v32, v33, v34, v35, v36, v37, v486);
      if (!v43 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (!v45 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (v509 && !objc_msgSend_weightsImage(v44, v31, v32, v33, v34, v35, v36, v37) && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*(a1 + 332) == 3)
      {
        v46 = v507;
        if (*(a1 + 328) == 2)
        {
          v46 = 1;
        }

        if (!(*(a4 + 168) * *(a4 + 160) * v46) && MTLReportFailureTypeEnabled())
        {
          v47 = objc_opt_class();
          v486 = NSStringFromClass(v47);
          MTLReportFailure();
        }
      }

      if (*(v43 + *MEMORY[0x277CD7330]) != *(v45 + *MEMORY[0x277CD7330]) && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*(v43 + *MEMORY[0x277CD7308]) != *(v45 + *MEMORY[0x277CD7308]) && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (((*(v45 + *MEMORY[0x277CD72F8]) + 3) ^ (*(v43 + *MEMORY[0x277CD72F8]) + 3)) >= 4 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      ++v41;
      v40 += 120;
    }

    while (v41 < *(a4 + 8));
  }

  v535 = 0;
  if (*(a1 + 332) == 3 && v509 != 0)
  {
    v49 = objc_alloc(MEMORY[0x277CBEB18]);
    v63 = objc_msgSend_initWithCapacity_(v49, v50, *(a4 + 8), v51, v52, v53, v54, v55);
    v64 = *(a4 + 8);
    if (v64)
    {
      v65 = 0;
      v66 = 112;
      do
      {
        v67 = objc_msgSend_weightsImage(*(*(a4 + 24) + v66), v56, v57, v58, v59, v60, v61, v62, v486);
        objc_msgSend_setObject_atIndexedSubscript_(v63, v68, v67, v65++, v69, v70, v71, v72);
        v64 = *(a4 + 8);
        v66 += 120;
      }

      while (v65 < v64);
      v39 = &OBJC_IVAR___MPSNNScale__destSize;
    }

    v73 = *a4;
    v74 = *(a4 + 120);
    v540[1] = *(a4 + 104);
    v541 = v74;
    *&v539 = v63;
    *(&v539 + 1) = v64;
    v75 = *(a4 + 16);
    *(&v540[0] + 1) = v73;
    *&v540[0] = v75;
    if (v8 && v8[129] == 1)
    {
      sub_239CF1628(a1, a2, a3, &v539, v536, 1, &v535, *(a1 + 368));

      goto LABEL_268;
    }

    if ((*(a1 + 336) & 1) == 0)
    {
      sub_239CF1628(a1, a2, a3, &v539, v536, 0, &v535, *(a1 + 368));
    }
  }

  v537 = 0;
  v76 = *(a4 + 32);
  *(&v537 + 2) = (v76 & 0x3F) << 6;
  LOWORD(v537) = 16 * (*(a4 + 88) & 0x3F);
  v77 = v506 + *MEMORY[0x277CD7320];
  explicit = atomic_load_explicit(v77, memory_order_acquire);
  if ((*(v77 + 56) & 2) != 0)
  {
    if (*(v77 + 52) < 2u)
    {
      v79 = 2;
    }

    else
    {
      v79 = 3;
    }
  }

  else if (explicit)
  {
    v79 = objc_msgSend_textureType(explicit, v31, v32, v33, v34, v35, v36, v37);
  }

  else
  {
    v79 = objc_msgSend_textureType(*(v77 + 40), v31, v32, v33, v34, v35, v36, v37);
  }

  v80 = v76 & 2;
  v81 = *(v506 + *MEMORY[0x277CD72F0]) - 1;
  if (v81 > 4)
  {
    v82 = 0;
  }

  else
  {
    v82 = dword_239D90940[v81];
  }

  v83 = v82 | (v79 == 3);
  if (*(v506 + *MEMORY[0x277CD7310]) > 1uLL)
  {
    v83 |= 2u;
  }

  if ((*(v506 + *MEMORY[0x277CD7318]) & 0x3000000) != 0)
  {
    v83 |= 4u;
  }

  v84 = v83 | v80;
  v85 = v537 & 0x3FF | (v84 << 10);
  LOWORD(v537) = v85;
  if (v509)
  {
    v86 = v509 + *MEMORY[0x277CD7320];
    v87 = atomic_load_explicit(v86, memory_order_acquire);
    if ((*(v86 + 56) & 2) != 0)
    {
      if (*(v86 + 52) < 2u)
      {
        v88 = 2;
      }

      else
      {
        v88 = 3;
      }
    }

    else if (v87)
    {
      v88 = objc_msgSend_textureType(v87, v31, v32, v33, v34, v35, v36, v37);
    }

    else
    {
      v88 = objc_msgSend_textureType(*(v86 + 40), v31, v32, v33, v34, v35, v36, v37);
    }

    v90 = *(v509 + *MEMORY[0x277CD72F0]) - 1;
    if (v90 > 4)
    {
      v91 = 0;
    }

    else
    {
      v91 = dword_239D90940[v90];
    }

    if (v88 == 3)
    {
      ++v91;
    }

    if (*(v509 + *MEMORY[0x277CD7310]) > 1uLL)
    {
      v91 |= 2u;
    }

    if ((*(v509 + *MEMORY[0x277CD7318] + 3) & 3) != 0)
    {
      v91 |= 4u;
    }

    v84 = v91 | v80;
    v85 = v537;
    v89 = 0x40000;
  }

  else
  {
    v89 = 0;
  }

  v92 = *(&v537 + 2) | (v538 << 48);
  LOWORD(v537) = v85 & 0xFFF0 | *(a1 + 328) & 0xF;
  HIWORD(v537) = 0;
  *(&v537 + 2) = v89 | *(&v537 + 2) & 0x3FFC0 | v84;
  v538 = (v92 & 0xFFFE00000003FFC0) >> 48;
  *&v93 = -1;
  *(&v93 + 1) = -1;
  v533 = v93;
  v534 = v93;
  v531 = v93;
  v532 = v93;
  *(&v530 + 1) = -1;
  *&v530 = objc_msgSend_maxBatchSize(a1, v31, v32, v33, v34, v35, v36, v37, v486);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  objc_msgSend_setComputePipelineState_(a2, v95, PipelineStateForMPSKey, v96, v97, v98, v99, v100, 0, 0, 0, 0, 0);
  MPSLibrary::ReleaseMPSKey();
  v101.i16[0] = v497;
  v101.i16[1] = v493;
  v499 = v101.i32[0];
  v492 = (v507 + 3) >> 2;
  v101.i16[2] = v492;
  v101.i16[3] = *(a4 + 8);
  v501 = v101;
  v109 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v102, v103, v104, v105, v106, v107, v108);
  objc_msgSend_threadExecutionWidth(PipelineStateForMPSKey, v110, v111, v112, v113, v114, v115, v116);
  if (v109 >= 0x100)
  {
    v121 = 256;
  }

  else
  {
    v121 = v109;
  }

  v529 = 0;
  sub_239CF203C(*(*(a1 + *MEMORY[0x277CD7350]) + 16), v121, 1uLL, &v529, v117, v118, v119, v120, v501);
  v502 = v122;
  v122.i32[0] = v529.i32[0];
  if (*(a4 + 8) != v529.u16[3] || v529.u16[2] != 1)
  {
    v122.i16[2] = 1;
    v122.i16[3] = *(a4 + 8);
    v529 = v122;
    v123 = v502;
    v124 = v502.u16[0] * v502.u16[1];
    if (v124 > v121)
    {
      v125 = 1;
    }

    else
    {
      v125 = v121 / v124;
    }

    if (v492 < v125)
    {
      v125 = (v507 + 3) >> 2;
    }

    if (v125 <= 1)
    {
      LOWORD(v125) = 1;
    }

    v123.i16[2] = v125;
    v502 = v123;
  }

  v126 = *(*(a1 + *MEMORY[0x277CD7370]) + 32);
  v127 = (*(*v126 + 16))(v126);
  if (v127 >= v502.u16[2])
  {
    v135 = v502.i16[2];
  }

  else
  {
    v135 = v127;
  }

  v495 = v529;
  v487 = v135;
  v488 = v502.u16[1];
  *(a4 + 70) = v502.i16[0] * v502.i16[1] * v135;
  v137 = *(a4 + 8);
  v136 = *(a4 + 16);
  v527 = v136 == 0;
  v138 = *a4;
  v528 = (v137 + v136) >= *a4;
  v519 = *(a1 + 352);
  v139 = 1.0 / v519;
  v523 = v139;
  v524 = v137;
  v526 = 0;
  v140 = *(a1 + 332);
  if (!v140)
  {
    v141 = *(a1 + 336);
    goto LABEL_110;
  }

  LOBYTE(v526) = 1;
  if (v140 == 3)
  {
    v140 = 0;
    BYTE2(v526) = 1;
    if (*(a1 + 336))
    {
      goto LABEL_107;
    }
  }

  else
  {
    if (v140 == 2)
    {
      v140 = 1;
      BYTE1(v526) = 1;
      if ((*(a1 + 336) & 1) == 0)
      {
        goto LABEL_109;
      }

LABEL_107:
      v141 = 1;
      HIBYTE(v526) = 1;
      goto LABEL_110;
    }

    v140 = 0;
    if (*(a1 + 336))
    {
      goto LABEL_107;
    }
  }

LABEL_109:
  v141 = 0;
LABEL_110:
  v142 = *(a1 + 364);
  v143 = *(a1 + 344);
  v517 = *(a1 + 340);
  v518 = v143;
  v520 = *(a1 + 360);
  v521 = v142;
  v522 = 1.0;
  if (v140)
  {
    v144 = v507;
    if (*(a1 + 328) == 2)
    {
      v144 = 1;
    }

    if ((v141 & 1) == 0)
    {
      v138 = 1;
    }

    v522 = 1.0 / (v493 * v497 * v138 * v144);
  }

  v152 = objc_msgSend_maxBatchSize(a1, v128, v129, v130, v131, v132, v133, v134);
  v153 = *(a4 + 40);
  v498 = a1;
  if ((*(a4 + 32) & 2) != 0)
  {
    v164 = objc_msgSend_count(v153, v145, v146, v147, v148, v149, v150, v151);
    v552 = 0u;
    v553 = 0u;
    v550 = 0u;
    v551 = 0u;
    v548 = 0u;
    v549 = 0u;
    v546 = 0u;
    v547 = 0u;
    v544 = 0u;
    v545 = 0u;
    v542 = 0u;
    v543 = 0u;
    v541 = 0u;
    v539 = 0u;
    memset(v540, 0, sizeof(v540));
    if (!v152)
    {
LABEL_136:
      v39 = &OBJC_IVAR___MPSNNScale__destSize;
      goto LABEL_137;
    }

    v165 = v164;
    v166 = 0;
    while (1)
    {
      if (v165 <= v166)
      {
        v167 = 0;
        if (v152 - v166 >= 0x20)
        {
          v168 = 32;
        }

        else
        {
          v168 = v152 - v166;
        }

        v169 = v168;
        if (!v168)
        {
          goto LABEL_129;
        }
      }

      else
      {
        if (v165 - v166 >= 0x20)
        {
          v167 = 32;
          objc_msgSend_getObjects_range_(v153, v160, &v539, v166, 32, v161, v162, v163);
        }

        else
        {
          v167 = v165 - v166;
          objc_msgSend_getObjects_range_(v153, v160, &v539, v166, v165 - v166, v161, v162, v163);
        }

        if (v152 - v166 >= 0x20)
        {
          v168 = 32;
        }

        else
        {
          v168 = v152 - v166;
        }

        v169 = v168 - v167;
        if (v168 == v167)
        {
          goto LABEL_129;
        }
      }

      bzero(&v540[-1] + 8 * v167, 8 * v169);
LABEL_129:
      objc_msgSend_setTextures_withRange_(a2, v160, &v539, v166, v168, v161, v162, v163);
      v166 += v168;
      if (v166 >= v152)
      {
        goto LABEL_136;
      }
    }
  }

  v154 = objc_msgSend_objectAtIndexedSubscript_(v153, v145, 0, v147, v148, v149, v150, v151);
  objc_msgSend_setTexture_atIndex_(a2, v155, v154, 0, v156, v157, v158, v159);
LABEL_137:
  objc_msgSend_setBytes_length_atIndex_(a2, v160, a4 + 48, 40, 0, v161, v162, v163);
  if (v527 && HIBYTE(v526) == 1)
  {
    *(a1 + 376) = objc_msgSend_texture(v490, v170, v171, v172, v173, v174, v175, v176);
  }

  if (*(a4 + 16))
  {
    if (*(a4 + 8) < v152)
    {
      v182 = objc_msgSend_count(*(a4 + 40), v170, v171, v172, v173, v174, v175, v176);
      if (v182 < v152)
      {
        do
        {
          objc_msgSend_setTexture_atIndex_(a2, v177, 0, v182++, v178, v179, v180, v181);
        }

        while (v152 != v182);
      }
    }
  }

  v183 = *(a4 + 8);
  v184 = 4 * v183 * ((*(v489 + *MEMORY[0x277CD72F8]) + 3) & 0x3FFFFFFFFFFFFFFCLL) * *(v489 + *MEMORY[0x277CD7330]) * *(v489 + *MEMORY[0x277CD7308]);
  if (*(a1 + v39[231]))
  {
    v184 = 4 * v495.u16[0] * v495.u16[1] * v183;
  }

  TempBuffer = MPSAutoCache::GetTempBuffer(v536, (v184 + 15) & 0xFFFFFFFFFFFFFFF0, 0);
  v192 = *(a4 + 96);
  if ((*(a4 + 88) & 2) != 0)
  {
    v203 = objc_msgSend_count(*(a4 + 96), v185, v186, v187, v188, v189, v190, v191);
    v552 = 0u;
    v553 = 0u;
    v550 = 0u;
    v551 = 0u;
    v548 = 0u;
    v549 = 0u;
    v546 = 0u;
    v547 = 0u;
    v544 = 0u;
    v545 = 0u;
    v542 = 0u;
    v543 = 0u;
    v541 = 0u;
    v539 = 0u;
    memset(v540, 0, sizeof(v540));
    if (!v152)
    {
LABEL_166:
      v39 = &OBJC_IVAR___MPSNNScale__destSize;
      goto LABEL_167;
    }

    v204 = v203;
    v205 = 0;
    while (1)
    {
      if (v204 <= v205)
      {
        v206 = 0;
        if (v152 - v205 >= 0x20)
        {
          v207 = 32;
        }

        else
        {
          v207 = v152 - v205;
        }

        v208 = v207;
        if (!v207)
        {
          goto LABEL_159;
        }
      }

      else
      {
        if (v204 - v205 >= 0x20)
        {
          v206 = 32;
          objc_msgSend_getObjects_range_(v192, v199, &v539, v205, 32, v200, v201, v202);
        }

        else
        {
          v206 = v204 - v205;
          objc_msgSend_getObjects_range_(v192, v199, &v539, v205, v204 - v205, v200, v201, v202);
        }

        if (v152 - v205 >= 0x20)
        {
          v207 = 32;
        }

        else
        {
          v207 = v152 - v205;
        }

        v208 = v207 - v206;
        if (v207 == v206)
        {
          goto LABEL_159;
        }
      }

      bzero(&v540[-1] + 8 * v206, 8 * v208);
LABEL_159:
      objc_msgSend_setTextures_withRange_(a2, v199, &v539, v205 + v152, v207, v200, v201, v202);
      v205 += v207;
      if (v205 >= v152)
      {
        goto LABEL_166;
      }
    }
  }

  v193 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 96), v185, 0, v187, v188, v189, v190, v191);
  objc_msgSend_setTexture_atIndex_(a2, v194, v193, v152, v195, v196, v197, v198);
LABEL_167:
  objc_msgSend_setBytes_length_atIndex_(a2, v199, a4 + 104, 32, 1, v200, v201, v202);
  Sampler = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v210, Sampler, 1, v211, v212, v213, v214);
  if (objc_msgSend_retainedReferences(a3, v215, v216, v217, v218, v219, v220, v221))
  {
    v226 = 0;
  }

  else
  {
    v226 = objc_opt_new();
    v515[0] = MEMORY[0x277D85DD0];
    v515[1] = 3221225472;
    v515[2] = sub_239CF2AEC;
    v515[3] = &unk_278B28F28;
    v515[4] = v226;
    objc_msgSend_addCompletedHandler_(a3, v227, v515, v228, v229, v230, v231, v232);
  }

  objc_msgSend_setBuffer_offset_atIndex_(a2, v222, TempBuffer, 0, 28, v223, v224, v225);
  if (*(a4 + 8))
  {
    v240 = 0;
    v241 = 2 * v152;
    v242 = 3 * v152;
    v243 = 112;
    do
    {
      v244 = *(*(a4 + 24) + v243);
      v245 = objc_msgSend_labelsImage(v244, v233, v234, v235, v236, v237, v238, v239);
      v253 = objc_msgSend_texture(v245, v246, v247, v248, v249, v250, v251, v252);
      objc_msgSend_setTexture_atIndex_(a2, v254, v253, v241 + v240, v255, v256, v257, v258);
      if (v226)
      {
        objc_msgSend_addObject_(v226, v233, v245, v235, v236, v237, v238, v239);
      }

      if (v509)
      {
        v259 = objc_msgSend_weightsImage(v244, v233, v234, v235, v236, v237, v238, v239);
        v267 = objc_msgSend_texture(v259, v260, v261, v262, v263, v264, v265, v266);
        objc_msgSend_setTexture_atIndex_(a2, v268, v267, v242 + v240, v269, v270, v271, v272);
        if (v226)
        {
          objc_msgSend_addObject_(v226, v233, v259, v235, v236, v237, v238, v239);
        }
      }

      ++v240;
      v243 += 120;
    }

    while (v240 < *(a4 + 8));
  }

  objc_msgSend_setBytes_length_atIndex_(a2, v233, a4 + 104, 32, 2, v237, v238, v239);
  v273 = v498;
  objc_msgSend_setBytes_length_atIndex_(a2, v274, a4 + 104, 32, 3, v275, v276, v277);
  v285 = v507;
  if (*(v498 + 328) == 2)
  {
    v285 = 1;
  }

  v286 = *(a4 + 168) * *(a4 + 160) * v285;
  v287 = *(v498 + 336);
  if (v287 == 1)
  {
    v286 *= *a4;
  }

  v288 = 1.0 / v286;
  v514 = v288;
  if (*(v498 + v39[231]) == 3 && v509)
  {
    if (v287)
    {
      v535 = objc_msgSend_data(*(v498 + 368), v278, v279, v280, v281, v282, v283, v284);
    }

    objc_msgSend_setBuffer_offset_atIndex_(a2, v278, v535, 0, 29, v282, v283, v284);
  }

  else
  {
    objc_msgSend_setBytes_length_atIndex_(a2, v278, &v514, 4, 29, v282, v283, v284);
  }

  objc_msgSend_setBytes_length_atIndex_(a2, v289, v516, 52, 30, v290, v291, v292);
  v293 = v502.u16[0];
  objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v294, (4 * v502.u16[0] * v502.u16[1] * v487 + 15) & 0x7FFFFFFFFFFF0, 0, v295, v296, v297, v298);
  v503 = vmovl_u16(v495).u64[0];
  v299 = vand_s8(v503, 0xFFFF0000FFFFLL);
  *&v300 = v299.u32[0];
  *(&v300 + 1) = v299.u32[1];
  v539 = v300;
  *&v540[0] = v495.u16[3];
  v512.i64[0] = v293;
  v512.i64[1] = v488;
  v513 = v487;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v301, &v539, &v512, v302, v303, v304, v305);
  v516[1] = v503.i16[2];
  v516[0] = v503.i16[0];
  v519 = v507;
  v537 = 0;
  v313 = &v490[*MEMORY[0x277CD7320]];
  v314 = atomic_load_explicit(v313, memory_order_acquire);
  if ((v313[56] & 2) != 0)
  {
    if (*(v313 + 13) < 2u)
    {
      v315 = 2;
    }

    else
    {
      v315 = 3;
    }
  }

  else if (v314)
  {
    v315 = objc_msgSend_textureType(v314, v306, v307, v308, v309, v310, v311, v312);
  }

  else
  {
    v315 = objc_msgSend_textureType(*(v313 + 5), v306, v307, v308, v309, v310, v311, v312);
  }

  v316 = *&v490[*MEMORY[0x277CD72F0]] - 1;
  if (v316 > 4)
  {
    LOWORD(v317) = 0;
  }

  else
  {
    v317 = dword_239D90940[v316];
  }

  if (v315 == 3)
  {
    LOWORD(v317) = v317 + 1;
  }

  v318 = v317 << 6;
  if (*&v490[*MEMORY[0x277CD7310]] > 1uLL)
  {
    v318 |= 0x80u;
  }

  if ((*&v490[*MEMORY[0x277CD7318]] & 0x3000000) != 0)
  {
    v319 = v318 | 0x100;
  }

  else
  {
    v319 = v318;
  }

  v320 = *(&v537 + 2) & 0xFFFFF03F | ((HIWORD(v537) | (v538 << 16)) << 32);
  *(&v537 + 2) = *(&v537 + 2) & 0xFFFFF03F | v319 & 0xFC0;
  if (objc_msgSend_count(*(a4 + 40), v306, v307, v308, v309, v310, v311, v312) >= 2)
  {
    v538 = BYTE6(v320);
    HIWORD(v537) = WORD2(v320);
    *(&v537 + 2) = v319 & 0xFC0 | v320 | 0x80;
  }

  LOWORD(v537) = (16 * (*(a4 + 88) & 0x3F)) | v537 & 0xFC0F;
  v328 = v506 + *MEMORY[0x277CD7320];
  v329 = atomic_load_explicit(v328, memory_order_acquire);
  if ((*(v328 + 56) & 2) != 0)
  {
    if (*(v328 + 52) < 2u)
    {
      v330 = 2;
    }

    else
    {
      v330 = 3;
    }
  }

  else if (v329)
  {
    v330 = objc_msgSend_textureType(v329, v321, v322, v323, v324, v325, v326, v327);
  }

  else
  {
    v330 = objc_msgSend_textureType(*(v328 + 40), v321, v322, v323, v324, v325, v326, v327);
  }

  v331 = *(v506 + *MEMORY[0x277CD72F0]) - 1;
  if (v331 > 4)
  {
    v332 = 0;
  }

  else
  {
    v332 = dword_239D90940[v331];
  }

  v333 = v332 | (v330 == 3);
  if (*(v506 + *MEMORY[0x277CD7310]) > 1uLL)
  {
    v333 |= 2u;
  }

  if ((*(v506 + *MEMORY[0x277CD7318]) & 0x3000000) != 0)
  {
    v333 |= 4u;
  }

  v334 = v537 & 0x3FF | (v333 << 10);
  LOWORD(v537) = v334;
  if (v509)
  {
    v335 = v509 + *MEMORY[0x277CD7320];
    v336 = atomic_load_explicit(v335, memory_order_acquire);
    if ((*(v335 + 56) & 2) != 0)
    {
      if (*(v335 + 52) < 2u)
      {
        v337 = 2;
      }

      else
      {
        v337 = 3;
      }
    }

    else if (v336)
    {
      v337 = objc_msgSend_textureType(v336, v321, v322, v323, v324, v325, v326, v327);
    }

    else
    {
      v337 = objc_msgSend_textureType(*(v335 + 40), v321, v322, v323, v324, v325, v326, v327);
    }

    v338 = *(v509 + *MEMORY[0x277CD72F0]) - 1;
    if (v338 > 4)
    {
      v333 = 0;
    }

    else
    {
      v333 = dword_239D90940[v338];
    }

    if (v337 == 3)
    {
      ++v333;
    }

    if (*(v509 + *MEMORY[0x277CD7310]) > 1uLL)
    {
      v333 |= 2u;
    }

    if ((*(v509 + *MEMORY[0x277CD7318] + 3) & 3) != 0)
    {
      v333 |= 4u;
    }

    v334 = v537;
  }

  v339 = (*(&v537 + 2) | ((HIWORD(v537) | (v538 << 16)) << 32)) & 0xFE0000000FFFC0;
  LOWORD(v537) = v334 & 0xFFF0 | *(v498 + 328) & 0xF;
  HIWORD(v537) = WORD2(v339);
  v538 = BYTE6(v339);
  v491 = v339 | v333;
  *(&v537 + 2) = v491 | 0x100000;
  *&v340 = -1;
  *(&v340 + 1) = -1;
  v530 = v340;
  v531 = v340;
  v532 = v340;
  v533 = v340;
  v534 = v340;
  *&v530 = objc_msgSend_maxBatchSize(v498, v321, v322, v323, v324, v325, v326, v327);
  MPSLibrary::CreateUberShaderKey();
  v341 = MPSLibrary::GetPipelineStateForMPSKey();
  objc_msgSend_setComputePipelineState_(a2, v342, v341, v343, v344, v345, v346, v347, 0, 0, 0, 0, 0);
  MPSLibrary::ReleaseMPSKey();
  if (*(v498 + 332))
  {
    v355 = 1;
  }

  else
  {
    v355 = v492;
  }

  v356 = *(a4 + 8);
  v357 = objc_msgSend_maxTotalThreadsPerThreadgroup(v341, v348, v349, v350, v351, v352, v353, v354);
  objc_msgSend_threadExecutionWidth(v341, v358, v359, v360, v361, v362, v363, v364);
  v369.i32[0] = v499;
  v369.i16[2] = v355;
  v369.i16[3] = v356;
  if (v357 >= 0x100)
  {
    v370 = 256;
  }

  else
  {
    v370 = v357;
  }

  v529 = 0;
  v496 = v370;
  v500 = v369;
  sub_239CF203C(*(*(v498 + *MEMORY[0x277CD7350]) + 16), v370, 1uLL, &v529, v365, v366, v367, v368, v369);
  v510 = v376;
  v377 = v376.u16[2];
  if (v355 >= 2u)
  {
    v379 = __clz(0x80000000 / v355);
    v380 = (0x80000000 / v355) >> (16 - v379);
    v381 = v379 + 15;
    v382 = -65536 * v355 * v380 / v355;
    if (v382 <= v380)
    {
      v383 = v380;
    }

    else
    {
      v383 = v380 + 1;
    }

    if (v382 <= v380)
    {
      LOWORD(v380) = 0;
    }

    v378 = (v381 << 48) | ((v382 - v380) << 32) | (v383 << 16) | v355;
  }

  else
  {
    v378 = 65537;
  }

  v508 = v529;
  v525 = v378;
  objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v371, (4 * v376.u16[0] * v376.u16[1] * v376.u16[2] + 15) & 0x7FFFFFFFFFFF0, 0, v372, v373, v374, v375);
  objc_msgSend_setBytes_length_atIndex_(a2, v384, v516, 52, 30, v385, v386, v387);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v388, TempBuffer, 0, 28, v389, v390, v391);
  v504 = v377;
  v406 = objc_msgSend_count(*(a4 + 40), v392, v393, v394, v395, v396, v397, v398);
  v407 = v356;
  if (v406)
  {
    v408 = 0;
    v409 = 112;
    do
    {
      v417 = objc_msgSend_lossImage(*(*(a4 + 24) + v409), v399, v400, v401, v402, v403, v404, v405);
      if (v226)
      {
        objc_msgSend_addObject_(v226, v410, v417, v412, v413, v414, v415, v416);
      }

      v418 = objc_msgSend_texture(v417, v410, v411, v412, v413, v414, v415, v416);
      v426 = objc_msgSend_featureChannels(v417, v419, v420, v421, v422, v423, v424, v425);
      v434 = objc_msgSend_arrayLength(v418, v427, v428, v429, v430, v431, v432, v433);
      objc_msgSend_setTexture_atIndex_(a2, v435, v418, v408++, v436, v437, v438, v439);
      v409 += 120;
    }

    while (v406 != v408);
    v273 = v498;
  }

  else
  {
    v426 = 0;
    v434 = 0;
  }

  *&v539 = 0;
  *(&v539 + 1) = v500;
  if (*(v273 + 332))
  {
    LODWORD(v440) = 65537;
    WORD2(v440) = 1;
    HIWORD(v440) = v407;
    *(&v539 + 1) = v440;
  }

  WORD1(v540[0]) = v434;
  LOWORD(v540[0]) = v426;
  *(v540 + 4) = *(a4 + 68);
  objc_msgSend_setBytes_length_atIndex_(a2, v399, &v539, 40, 0, v403, v404, v405);
  v441 = vand_s8(*&vmovl_u16(v508), 0xFFFF0000FFFFLL);
  v442.i64[0] = v441.u32[0];
  v442.i64[1] = v441.u32[1];
  v512 = v442;
  v513 = (v508.i16[2] * v508.i16[3]);
  v443 = vand_s8(*&vmovl_u16(v510), 0xFFFF0000FFFFLL);
  v442.i64[0] = v443.u32[0];
  v442.i64[1] = v443.u32[1];
  *v511 = v442;
  *&v511[16] = v504;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v444, &v512, v511, v445, v446, v447, v448);
  if (HIBYTE(v526) == 1)
  {
    HIWORD(v537) = WORD2(v491);
    *(&v537 + 2) = v491 | 0x600000;
    v538 = BYTE6(v491);
    MPSLibrary::CreateUberShaderKey();
    v449 = MPSLibrary::GetPipelineStateForMPSKey();
    objc_msgSend_setComputePipelineState_(a2, v450, v449, v451, v452, v453, v454, v455, 0, 0, 0, 0, 0);
    MPSLibrary::ReleaseMPSKey();
    if (v528)
    {
      v462 = *(v273 + 376);
      objc_msgSend_addObject_(v226, v456, v462, v457, v458, v459, v460, v461);
      objc_msgSend_setTexture_atIndex_(a2, v463, v462, 0, v464, v465, v466, v467);
    }

    objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v456, (4 * v496 + 15) & 0xFF0, 0, v458, v459, v460, v461);
    v475 = objc_msgSend_data(*(v273 + 368), v468, v469, v470, v471, v472, v473, v474);
    objc_msgSend_setBuffer_offset_atIndex_(a2, v476, v475, 0, 27, v477, v478, v479);
    v512 = vdupq_n_s64(1uLL);
    v513 = 1;
    *v511 = v496;
    *&v511[8] = v512;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v480, &v512, v511, v481, v482, v483, v484);
  }

  MPSLibrary::ReleaseComputeState();
LABEL_268:
  MPSAutoCache::~MPSAutoCache(v536);
  return 0;
}

uint64_t sub_239CED26C(uint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v144[1] = *MEMORY[0x277D85DE8];
  v10 = *(*(a4 + 56) + 312);
  v111 = vmovn_s64(*(a4 + 168));
  v11 = *(a4 + 128);
  v112 = *(a4 + 120);
  v113 = *(a4 + 56);
  v12 = *(a4 + 136);
  v13 = *(a4 + 144);
  v15 = *(a4 + 152);
  v14 = *(a4 + 160);
  v16 = objc_msgSend_reductionType(a1, a2, a3, a4, a5, a6, a7, a8);
  v31 = *(objc_msgSend_labelsImage(v10, v17, v18, v19, v20, v21, v22, v23) + *MEMORY[0x277CD7330]);
  if (v16)
  {
    v39 = *(objc_msgSend_labelsImage(v10, v24, v25, v26, v27, v28, v29, v30) + *MEMORY[0x277CD7308]);
  }

  else
  {
    if (v13 < v31)
    {
      v31 = v13;
    }

    v39 = *(objc_msgSend_labelsImage(v10, v24, v25, v26, v27, v28, v29, v30) + *MEMORY[0x277CD7308]);
    if (v15 < v39)
    {
      v39 = v15;
    }
  }

  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  memset(v138, 0, sizeof(v138));
  v40 = *(a1 + *MEMORY[0x277CD7350]);
  v41 = *(a1 + *MEMORY[0x277CD7370]);
  v136 = 0u;
  v137 = 0u;
  v42 = *(a1 + *MEMORY[0x277CD7378]);
  v43 = *(a1 + 272);
  v116[0] = v40;
  v116[1] = v41;
  v116[2] = v42;
  v116[3] = v43;
  v116[4] = 1;
  v117 = vextq_s8(*(a4 + 208), *(a4 + 208), 8uLL);
  v118 = v112;
  v119 = v11;
  v120 = v12;
  v121 = v31;
  v122 = v39;
  v123 = v14;
  v44 = *(a4 + 184);
  v124 = *(a4 + 192);
  v125 = 0;
  v126 = *(a4 + 40);
  v127 = *(a4 + 16);
  v129 = v111.i16[2];
  v130 = 0x1000100000000;
  v128 = v111.i16[0];
  v132 = v111.i16[2];
  v131 = v111.i16[0];
  v133 = 0x1000100010001;
  v134 = *(a4 + 200);
  v135 = *(a4 + 24);
  LOWORD(v136) = v44;
  WORD1(v136) = 1;
  *(&v136 + 1) = *(a4 + 104);
  LODWORD(v137) = *(a4 + 80);
  LOWORD(v45) = v112;
  WORD1(v45) = v11;
  WORD2(v45) = (v124 + 3) >> 2;
  HIWORD(v45) = v12;
  v46 = *(a4 + 88);
  LOWORD(v47) = v31;
  WORD1(v47) = v39;
  WORD2(v47) = (v46 + 3) >> 2;
  HIWORD(v47) = v14;
  *(&v137 + 1) = v45;
  *&v138[0] = v47;
  WORD4(v138[0]) = v46;
  WORD5(v138[0]) = objc_msgSend_numberOfImages(*(a4 + 64), v32, v33, v34, v35, v36, v37, v38);
  *(v138 + 12) = 0x1000000000001uLL;
  v55 = objc_msgSend_width(*a4, v48, v49, v50, v51, v52, v53, v54);
  v63 = objc_msgSend_height(*a4, v56, v57, v58, v59, v60, v61, v62);
  LOWORD(v139) = v55;
  WORD1(v139) = v63;
  v144[0] = objc_msgSend_labelsImage(v10, v64, v65, v66, v67, v68, v69, v70);
  *(&v139 + 1) = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v71, v144, 1, v72, v73, v74, v75);
  v83 = objc_msgSend_weightsImage(v10, v76, v77, v78, v79, v80, v81, v82);
  if (v83)
  {
    v143 = objc_msgSend_weightsImage(v10, v84, v85, v86, v87, v88, v89, v90);
    v83 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v91, &v143, 1, v92, v93, v94, v95);
  }

  *&v140 = v83;
  DWORD2(v140) = objc_msgSend_lossType(a1, v84, v85, v86, v87, v88, v89, v90);
  HIDWORD(v140) = objc_msgSend_reductionType(a1, v96, v97, v98, v99, v100, v101, v102);
  LOBYTE(v141) = *(a1 + 328);
  BYTE1(v141) = v10[129];
  *(&v141 + 4) = *(v113 + 292);
  *&v142 = objc_msgSend_numberOfClasses(a1, v103, v104, v105, v106, v107, v108, v109);
  *(&v142 + 1) = *(v113 + 300);
  sub_239CF2AFC(a1, a2, a3, v116);
  return 0;
}

uint64_t sub_239CED5B8(uint64_t a1, char *a2, void *a3, uint64_t a4)
{
  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  v13 = objc_msgSend_initWithCapacity_(v6, v7, *(a4 + 8), v8, v9, v10, v11, v12);
  v14 = *(*(a4 + 24) + 112);
  v15 = *(v14 + 312);
  if (objc_msgSend_weightsImage(v15, v16, v17, v18, v19, v20, v21, v22))
  {
    v30 = objc_alloc(MEMORY[0x277CBEB18]);
    v37 = objc_msgSend_initWithCapacity_(v30, v31, *(a4 + 8), v32, v33, v34, v35, v36);
    if (*(a4 + 8))
    {
      v38 = 0;
      v39 = 112;
      do
      {
        v40 = *(*(*(a4 + 24) + v39) + 312);
        v41 = objc_msgSend_labelsImage(v40, v23, v24, v25, v26, v27, v28, v29);
        objc_msgSend_setObject_atIndexedSubscript_(v13, v42, v41, v38, v43, v44, v45, v46);
        v54 = objc_msgSend_weightsImage(v40, v47, v48, v49, v50, v51, v52, v53);
        objc_msgSend_setObject_atIndexedSubscript_(v37, v55, v54, v38++, v56, v57, v58, v59);
        v39 += 120;
      }

      while (v38 < *(a4 + 8));
    }
  }

  else
  {
    if (*(a4 + 8))
    {
      v60 = 0;
      v61 = 112;
      do
      {
        v62 = objc_msgSend_labelsImage(*(*(*(a4 + 24) + v61) + 312), v23, v24, v25, v26, v27, v28, v29);
        objc_msgSend_setObject_atIndexedSubscript_(v13, v63, v62, v60++, v64, v65, v66, v67);
        v61 += 120;
      }

      while (v60 < *(a4 + 8));
    }

    v37 = 0;
  }

  v169 = *(a4 + 136);
  v68 = *(a4 + 160);
  v170 = *(a4 + 152);
  v69 = *(a4 + 168);
  v145 = *(a4 + 176);
  v70 = objc_msgSend_reductionType(a1, v23, v24, v25, v26, v27, v28, v29);
  v85 = *(objc_msgSend_labelsImage(v15, v71, v72, v73, v74, v75, v76, v77) + *MEMORY[0x277CD7330]);
  if (v70)
  {
    v92 = *(objc_msgSend_labelsImage(v15, v78, v79, v80, v81, v82, v83, v84) + *MEMORY[0x277CD7308]);
  }

  else
  {
    if (v68 < v85)
    {
      v85 = v68;
    }

    v92 = *(objc_msgSend_labelsImage(v15, v78, v79, v80, v81, v82, v83, v84) + *MEMORY[0x277CD7308]);
    if (v69 < v92)
    {
      v92 = v69;
    }
  }

  v164 = 0u;
  v165 = 0u;
  *&v162[32] = 0u;
  v163 = 0u;
  *&v162[16] = 0u;
  v93 = *(a1 + *MEMORY[0x277CD7350]);
  v94 = *(a1 + *MEMORY[0x277CD7370]);
  *&v161[12] = 0u;
  *v162 = 0u;
  v149 = vextq_s8(*a4, *a4, 8uLL);
  v151 = v169;
  *v161 = *(a4 + 120);
  v160 = *(a4 + 104);
  v95 = *(a4 + 48);
  *&v162[24] = *(a4 + 64);
  v96 = *(a1 + *MEMORY[0x277CD7378]);
  v97 = *(a1 + 272);
  v148[0] = v93;
  v148[1] = v94;
  v148[2] = v96;
  v148[3] = v97;
  v150 = *(a4 + 16);
  v152 = v170;
  v153 = v85;
  v154 = v92;
  v98 = *(a4 + 208);
  v155 = v145;
  v156 = v98;
  v99 = *(a4 + 96);
  v157 = 0;
  v158 = v99;
  v159 = *(a4 + 88);
  *&v161[20] = *(a4 + 40);
  *v162 = *(a4 + 32);
  *&v162[40] = *(a4 + 80);
  *&v162[8] = v95;
  v100 = objc_msgSend_objectAtIndexedSubscript_(v99, v86, 0, v87, v88, v89, v90, v91);
  v108 = objc_msgSend_width(v100, v101, v102, v103, v104, v105, v106, v107);
  v115 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 96), v109, 0, v110, v111, v112, v113, v114);
  LOWORD(v163) = v108;
  WORD1(v163) = objc_msgSend_height(v115, v116, v117, v118, v119, v120, v121, v122);
  *(&v163 + 1) = v13;
  *&v164 = v37;
  DWORD2(v164) = objc_msgSend_lossType(a1, v123, v124, v125, v126, v127, v128, v129);
  HIDWORD(v164) = objc_msgSend_reductionType(a1, v130, v131, v132, v133, v134, v135, v136);
  LOBYTE(v165) = *(a1 + 328);
  BYTE1(v165) = v15[129];
  *(&v165 + 4) = *(v14 + 292);
  v166 = objc_msgSend_numberOfClasses(a1, v137, v138, v139, v140, v141, v142, v143);
  v167 = *(v14 + 300);
  v168 = *(v14 + 304);
  sub_239CF2AFC(a1, a2, a3, v148);

  return 0;
}

uint64_t sub_239CEF214(uint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v245[1] = *MEMORY[0x277D85DE8];
  v183 = *(a4 + 288);
  v184 = *(a4 + 280);
  v185 = *(a4 + 232);
  v186 = *(a4 + 224);
  v10 = *(a4 + 176);
  v11 = *(a4 + 184);
  v173 = *(a1 + *MEMORY[0x277CD7350]);
  v12 = *(a4 + 192);
  v13 = *(a4 + 200);
  v169 = *(a1 + *MEMORY[0x277CD7370]);
  v168 = *(a1 + *MEMORY[0x277CD7378]);
  v14 = *(a4 + 208);
  v175 = *(a4 + 216);
  v166 = *(a1 + 360);
  v167 = *(a4 + 336);
  v170 = *(a4 + 304);
  v172 = *(a4 + 96);
  v171 = *(a4 + 72);
  v165 = *(a4 + 328);
  v177 = *(a4 + 80);
  v178 = *(a4 + 320);
  v180 = *(a4 + 160);
  v179 = *(a4 + 136);
  v15 = *(a4 + 144);
  v16 = *(a4 + 112);
  v176 = objc_msgSend_numberOfImages(*(a4 + 120), a2, a3, a4, a5, a6, a7, a8);
  v182 = *(a4 + 328);
  v181 = objc_msgSend_width(*(a4 + 56), v17, v18, v19, v20, v21, v22, v23);
  v174 = objc_msgSend_height(*(a4 + 56), v24, v25, v26, v27, v28, v29, v30);
  v245[0] = objc_msgSend_labelsImage(v16, v31, v32, v33, v34, v35, v36, v37);
  v164 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v38, v245, 1, v39, v40, v41, v42);
  if (objc_msgSend_weightsImage(v16, v43, v44, v45, v46, v47, v48, v49))
  {
    v244 = objc_msgSend_weightsImage(v16, v50, v51, v52, v53, v54, v55, v56);
    v163 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v57, &v244, 1, v58, v59, v60, v61);
  }

  else
  {
    v163 = 0;
  }

  v156 = v15;
  LOWORD(v62) = v13;
  WORD1(v62) = v14;
  WORD2(v62) = (v15 + 3) >> 2;
  HIWORD(v62) = v175;
  v162 = v62;
  LOWORD(v62) = v10;
  WORD1(v62) = v11;
  WORD2(v62) = (v170 + 3) >> 2;
  HIWORD(v62) = v12;
  v157 = v62;
  v161 = objc_msgSend_lossType(a1, v50, v51, v52, v53, v54, v55, v56);
  v70 = objc_msgSend_reductionType(a1, v63, v64, v65, v66, v67, v68, v69);
  v159 = *(a1 + 416);
  v160 = v70;
  v158 = v16[129];
  objc_msgSend_weight(a1, v71, v72, v73, v74, v75, v76, v77);
  v79 = v78;
  objc_msgSend_labelSmoothing(a1, v80, v81, v82, v83, v84, v85, v86);
  v88 = v87;
  v96 = objc_msgSend_numberOfClasses(a1, v89, v90, v91, v92, v93, v94, v95);
  objc_msgSend_epsilon(a1, v97, v98, v99, v100, v101, v102, v103);
  v105 = v104;
  objc_msgSend_delta(a1, v106, v107, v108, v109, v110, v111, v112);
  v189[0] = v173;
  v189[1] = v169;
  v189[2] = v168;
  v189[3] = v166;
  v189[4] = 1;
  v189[5] = v167;
  v189[6] = v165;
  v189[7] = v10;
  v189[8] = v11;
  v189[9] = v12;
  v189[10] = v13;
  v189[11] = v14;
  v189[12] = v175;
  v189[13] = v170;
  v189[14] = 0;
  v189[15] = v172;
  v190 = v171;
  v192 = v183;
  v191 = v184;
  v193 = 0x1000100000000;
  v195 = v183;
  v194 = v184;
  v196 = 0x1000100010001;
  v197 = v178;
  v198 = v177;
  v199 = 0x10000;
  v200 = v180;
  v201 = v179;
  v202 = 0;
  v203 = v157;
  v204 = v162;
  v205 = v156;
  v206 = v176;
  v207 = 2;
  v208 = v182;
  v209 = 1;
  v211 = 0;
  v210 = 0;
  v213 = v174;
  v212 = v181;
  v214 = 0;
  v215 = v164;
  v216 = v163;
  v217 = v161;
  v218 = v160;
  v219 = v159;
  v220 = v158;
  v221 = 0;
  v222 = v79;
  v223 = v88;
  v224 = 0;
  v225 = v96;
  v226 = v105;
  v227 = v113;
  v121 = objc_msgSend_width(*(a4 + 160), v114, v115, v116, v117, v118, v119, v120);
  v129 = objc_msgSend_height(*(a4 + 160), v122, v123, v124, v125, v126, v127, v128);
  v137 = objc_msgSend_width(*(a4 + 40), v130, v131, v132, v133, v134, v135, v136);
  v145 = objc_msgSend_height(*(a4 + 40), v138, v139, v140, v141, v142, v143, v144);
  v229 = v129;
  v228 = v121;
  v230 = v137;
  v231 = v145;
  v232 = *(a4 + 40);
  v233 = *(a4 + 16);
  v146 = *(a4 + 312);
  v147 = *(a4 + 24);
  v235 = v185;
  v234 = v186;
  v236 = 0x1000100000000;
  v238 = v185;
  v237 = v186;
  v239 = 0x1000100010001;
  v240 = v146;
  v241 = v147;
  v242 = 0x10000;
  v243 = objc_msgSend_computeLabelGradients(a1, v148, v149, v150, v151, v152, v153, v154);
  sub_239CF41A4(a1, a2, a3, v189);
  return 0;
}

uint64_t sub_239CEF654(uint64_t a1, char *a2, void *a3, uint64_t *a4)
{
  v284 = *MEMORY[0x277D85DE8];
  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  v13 = objc_msgSend_initWithCapacity_(v6, v7, a4[1], v8, v9, v10, v11, v12);
  v14 = *(a4[3] + 168);
  if (objc_msgSend_weightsImage(v14, v15, v16, v17, v18, v19, v20, v21))
  {
    v29 = objc_alloc(MEMORY[0x277CBEB18]);
    v37 = objc_msgSend_initWithCapacity_(v29, v30, a4[1], v31, v32, v33, v34, v35);
    if (a4[1])
    {
      v38 = 0;
      v39 = 168;
      do
      {
        v40 = *(a4[3] + v39);
        v41 = objc_msgSend_labelsImage(v40, v22, v36, v24, v25, v26, v27, v28);
        objc_msgSend_setObject_atIndexedSubscript_(v13, v42, v41, v38, v43, v44, v45, v46);
        v54 = objc_msgSend_weightsImage(v40, v47, v48, v49, v50, v51, v52, v53);
        objc_msgSend_setObject_atIndexedSubscript_(v37, v55, v54, v38++, v56, v57, v58, v59);
        v60 = a4[1];
        v39 += 176;
      }

      while (v38 < v60);
      goto LABEL_12;
    }

LABEL_11:
    v60 = 0;
    goto LABEL_12;
  }

  if (!a4[1])
  {
    v37 = 0;
    goto LABEL_11;
  }

  v61 = 0;
  v62 = 168;
  do
  {
    v63 = objc_msgSend_labelsImage(*(a4[3] + v62), v22, v23, v24, v25, v26, v27, v28);
    objc_msgSend_setObject_atIndexedSubscript_(v13, v64, v63, v61++, v65, v66, v67, v68);
    v60 = a4[1];
    v62 += 176;
  }

  while (v61 < v60);
  v37 = 0;
LABEL_12:
  v228 = *(a1 + *MEMORY[0x277CD7350]);
  v225 = *(a1 + *MEMORY[0x277CD7370]);
  v236 = *(a4 + 23);
  v237 = *(a4 + 25);
  v223 = *(a1 + *MEMORY[0x277CD7378]);
  v238 = *(a4 + 27);
  v221 = *a4;
  v222 = *(a1 + 360);
  v226 = a4[35];
  v227 = a4[2];
  v69 = a4[18];
  v231 = *(a4 + 34);
  v234 = *(a4 + 19);
  v235 = *(a4 + 21);
  v230 = a4[5];
  v229 = *(a4 + 8);
  v70 = *(a4 + 4);
  v281 = *(a4 + 3);
  v282 = v70;
  v283 = a4[10];
  v71 = objc_msgSend_objectAtIndexedSubscript_(v69, v22, 0, v24, v25, v26, v27, v28);
  v224 = objc_msgSend_width(v71, v72, v73, v74, v75, v76, v77, v78);
  v85 = objc_msgSend_objectAtIndexedSubscript_(a4[18], v79, 0, v80, v81, v82, v83, v84);
  v219 = objc_msgSend_height(v85, v86, v87, v88, v89, v90, v91, v92);
  v220 = objc_msgSend_lossType(a1, v93, v94, v95, v96, v97, v98, v99);
  v107 = objc_msgSend_reductionType(a1, v100, v101, v102, v103, v104, v105, v106);
  v108 = *(a1 + 416);
  v109 = v14[129];
  objc_msgSend_weight(a1, v110, v111, v112, v113, v114, v115, v116);
  v118 = v117;
  objc_msgSend_labelSmoothing(a1, v119, v120, v121, v122, v123, v124, v125);
  v127 = v126;
  v135 = objc_msgSend_numberOfClasses(a1, v128, v129, v130, v131, v132, v133, v134);
  objc_msgSend_epsilon(a1, v136, v137, v138, v139, v140, v141, v142);
  v144 = v143;
  objc_msgSend_delta(a1, v145, v146, v147, v148, v149, v150, v151);
  v239[0] = v228;
  v239[1] = v225;
  v239[2] = v223;
  v239[3] = v222;
  v239[4] = v60;
  v239[5] = v221;
  v240 = v236;
  v241 = v237;
  v242 = v238;
  v239[6] = v227;
  v243 = v226;
  v244 = 0;
  v245 = v69;
  v248 = v235;
  v247 = v234;
  v246 = v231;
  v249 = 0;
  v250 = v230;
  v251 = v229;
  v252 = 0;
  v255 = v283;
  v254 = v282;
  v253 = v281;
  v257 = v219;
  v256 = v224;
  v258 = 0;
  v259 = v13;
  v260 = v37;
  v261 = v220;
  v262 = v107;
  v263 = v108;
  v264 = v109;
  v265 = 0;
  v266 = v118;
  v267 = v127;
  v268 = 0;
  v269 = v135;
  v270 = v144;
  v271 = v152;
  v159 = objc_msgSend_objectAtIndexedSubscript_(a4[5], v153, 0, v154, v155, v156, v157, v158);
  v167 = objc_msgSend_width(v159, v160, v161, v162, v163, v164, v165, v166);
  v174 = objc_msgSend_objectAtIndexedSubscript_(a4[5], v168, 0, v169, v170, v171, v172, v173);
  LOWORD(v107) = objc_msgSend_height(v174, v175, v176, v177, v178, v179, v180, v181);
  v188 = objc_msgSend_objectAtIndexedSubscript_(a4[12], v182, 0, v183, v184, v185, v186, v187);
  LOWORD(v135) = objc_msgSend_width(v188, v189, v190, v191, v192, v193, v194, v195);
  v202 = objc_msgSend_objectAtIndexedSubscript_(a4[12], v196, 0, v197, v198, v199, v200, v201);
  v273 = v107;
  v272 = v167;
  v274 = v135;
  v275 = objc_msgSend_height(v202, v203, v204, v205, v206, v207, v208, v209);
  v276 = a4[12];
  v277 = *(a4 + 22);
  v210 = *(a4 + 15);
  v278 = *(a4 + 13);
  v279 = v210;
  v280 = objc_msgSend_computeLabelGradients(a1, v211, v212, v213, v214, v215, v216, v217);
  sub_239CF41A4(a1, a2, a3, v239);

  return 0;
}

uint64_t sub_239CF1140(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(*(a1 + 328) + 304);
  if ((*(v8 + *MEMORY[0x277CD7378]) & 8) != 0)
  {
    v19 = *(v8 + *MEMORY[0x277CD7360]);
    if (!v19)
    {
      v23 = a2;
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      a2 = v23;
      v19 = v21;
    }

    v22 = a2;
    objc_msgSend_pushDebugGroup_(a2, a2, v19, a4, a5, a6, a7, a8);
    v9 = v22;
  }

  else
  {
    v9 = 0;
  }

  v17 = (*(v8 + 288))(*(v8 + 304));
  if (v9)
  {
    objc_msgSend_popDebugGroup(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  return v17;
}

void sub_239CF1234(_Unwind_Exception *exception_object, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (v8)
  {
    objc_msgSend_popDebugGroup(v8, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239CF1254(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(*(a1 + 328) + 304);
  if ((*(v8 + *MEMORY[0x277CD7378]) & 8) != 0)
  {
    v19 = *(v8 + *MEMORY[0x277CD7360]);
    if (!v19)
    {
      v23 = a2;
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      a2 = v23;
      v19 = v21;
    }

    v22 = a2;
    objc_msgSend_pushDebugGroup_(a2, a2, v19, a4, a5, a6, a7, a8);
    v9 = v22;
  }

  else
  {
    v9 = 0;
  }

  v17 = (*(v8 + 296))(*(v8 + 304));
  if (v9)
  {
    objc_msgSend_popDebugGroup(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  return v17;
}

void sub_239CF1348(_Unwind_Exception *exception_object, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (v8)
  {
    objc_msgSend_popDebugGroup(v8, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239CF1628(char *a1, char *a2, void *a3, uint64_t a4, MPSAutoCache *a5, uint64_t a6, uint64_t *a7, void *a8)
{
  v8 = a6;
  v261 = *MEMORY[0x277D85DE8];
  v14 = objc_msgSend_objectAtIndexedSubscript_(*a4, a2, 0, a4, a5, a6, a7, a8);
  v22 = v14;
  v259 = 0;
  v243 = v8;
  if (v14)
  {
    v23 = *(a4 + 8) > 1uLL;
    v24 = v14 + *MEMORY[0x277CD7320];
    explicit = atomic_load_explicit(v24, memory_order_acquire);
    if ((*(v24 + 56) & 2) != 0)
    {
      if (*(v24 + 52) < 2u)
      {
        v26 = 2;
      }

      else
      {
        v26 = 3;
      }
    }

    else
    {
      if (!explicit)
      {
        explicit = *(v24 + 40);
      }

      v26 = objc_msgSend_textureType(explicit, v15, v16, v17, v18, v19, v20, v21);
    }

    v28 = *(v22 + *MEMORY[0x277CD72F0]) - 1;
    if (v28 > 4)
    {
      LOWORD(v29) = 0;
    }

    else
    {
      v29 = dword_239D90940[v28];
    }

    if (v26 == 3)
    {
      LOWORD(v29) = v29 + 1;
    }

    if (*(v22 + *MEMORY[0x277CD7310]) > 1uLL)
    {
      LOWORD(v29) = v29 | 2;
    }

    if ((*(v22 + *MEMORY[0x277CD7318] + 3) & 3) != 0)
    {
      LOWORD(v29) = v29 | 4;
    }

    v27 = v29 | (2 * v23);
  }

  else
  {
    v27 = 0;
  }

  LOWORD(v259) = (v27 << 10) | (16 * (v27 & 0x3F));
  v30 = *(&v259 + 2) & 0x3F03FLL | (v260 << 48) & 0xFFFE00000003F03FLL;
  HIWORD(v259) = 0;
  v260 = BYTE6(v30);
  v242 = v30 | ((v27 & 0x3FF) << 6);
  *(&v259 + 2) = v242 | 0x400000;
  *&v258[72] = -1;
  *&v31 = -1;
  *(&v31 + 1) = -1;
  *&v258[56] = v31;
  *&v258[40] = v31;
  *&v258[24] = v31;
  *&v258[8] = v31;
  *v258 = objc_msgSend_maxBatchSize(a1, v15, v16, v17, v18, v19, v20, v21);
  v32 = MEMORY[0x277CD7370];
  MPSLibrary::CreateUberShaderKey();
  v249 = a3;
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  objc_msgSend_setComputePipelineState_(a2, v34, PipelineStateForMPSKey, v35, v36, v37, v38, v39, 0, 0, 0, 0, 0);
  MPSLibrary::ReleaseMPSKey();
  v40 = (*(v22 + *MEMORY[0x277CD72F8]) + 3) >> 2;
  v41.i16[0] = *(v22 + *MEMORY[0x277CD7330]);
  v41.i16[1] = *(v22 + *MEMORY[0x277CD7308]);
  v41.i16[2] = v40;
  v41.i16[3] = *(a4 + 8);
  v247 = v41;
  v49 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v42, v43, v44, v45, v46, v47, v48);
  v57 = objc_msgSend_threadExecutionWidth(PipelineStateForMPSKey, v50, v51, v52, v53, v54, v55, v56);
  if (v49 >= 0x100)
  {
    v49 = 256;
  }

  v257 = 0;
  sub_239CF203C(*(*&a1[*MEMORY[0x277CD7350]] + 16), v49, v57, &v257, v58, v59, v60, v61, v247);
  LODWORD(v63) = v257;
  if (*(a4 + 8) != HIWORD(v257) || WORD2(v257) != 1)
  {
    WORD2(v63) = 1;
    HIWORD(v63) = *(a4 + 8);
    v257 = v63;
    v64 = v62 * WORD1(v62);
    if (v64 > v49)
    {
      v65 = 1;
    }

    else
    {
      v65 = v49 / v64;
    }

    if (v40 < v65)
    {
      v65 = v40;
    }

    if (v65 <= 1)
    {
      LOWORD(v65) = 1;
    }

    WORD2(v62) = v65;
  }

  v244 = v62;
  v66 = *(*&a1[*v32] + 32);
  v67 = (*(*v66 + 16))(v66);
  v68 = WORD2(v244);
  if (v67 < WORD2(v244))
  {
    v68 = v67;
  }

  v248 = HIWORD(v257);
  v69 = v244;
  v70 = WORD1(v244);
  v71 = v68;
  v238 = WORD1(v257);
  v239 = v257;
  v240 = WORD1(v257) * v257;
  v245 = a5;
  TempBuffer = MPSAutoCache::GetTempBuffer(a5, (4 * v240 * *(a4 + 8) + 15) & 0xFFFFFFFFFFFFFFF0, 0);
  Sampler = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v74, Sampler, 1, v75, v76, v77, v78);
  v90 = 0;
  if ((objc_msgSend_retainedReferences(v249, v79, v80, v81, v82, v83, v84, v85) & 1) == 0)
  {
    v90 = objc_opt_new();
    v256[0] = MEMORY[0x277D85DD0];
    v256[1] = 3221225472;
    v256[2] = sub_239CF2AF4;
    v256[3] = &unk_278B28F28;
    v256[4] = v90;
    objc_msgSend_addCompletedHandler_(v249, v91, v256, v92, v93, v94, v95, v96);
  }

  v241 = TempBuffer;
  objc_msgSend_setBuffer_offset_atIndex_(a2, v86, TempBuffer, 0, 29, v87, v88, v89);
  v104 = objc_msgSend_maxBatchSize(a1, v97, v98, v99, v100, v101, v102, v103);
  if (*(a4 + 8))
  {
    v111 = v104;
    if (v90)
    {
      v112 = 0;
      do
      {
        v113 = objc_msgSend_objectAtIndexedSubscript_(*a4, v105, v112, v106, v107, v108, v109, v110);
        v121 = objc_msgSend_texture(v113, v114, v115, v116, v117, v118, v119, v120);
        objc_msgSend_setTexture_atIndex_(a2, v122, v121, v111 + v112, v123, v124, v125, v126);
        objc_msgSend_addObject_(v90, v127, v113, v128, v129, v130, v131, v132);
        ++v112;
      }

      while (v112 < *(a4 + 8));
    }

    else
    {
      do
      {
        v133 = objc_msgSend_objectAtIndexedSubscript_(*a4, v105, v90, v106, v107, v108, v109, v110);
        v141 = objc_msgSend_texture(v133, v134, v135, v136, v137, v138, v139, v140);
        objc_msgSend_setTexture_atIndex_(a2, v142, v141, &(v90++)[v111], v143, v144, v145, v146);
      }

      while (v90 < *(a4 + 8));
    }
  }

  v147 = 1;
  objc_msgSend_setBytes_length_atIndex_(a2, v105, a4 + 32, 32, 1, v108, v109, v110);
  objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v148, (4 * (v69 * v70) * v71 + 15) & 0x7FFFFFFFFFFF0, 0, v149, v150, v151, v152);
  v254 = v239;
  v255.i64[0] = v238;
  v255.i64[1] = v248;
  v252 = v69;
  v253.i64[0] = v70;
  v253.i64[1] = v71;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v153, &v254, &v252, v154, v155, v156, v157);
  MPSLibrary::ReleaseComputeState();
  v165 = 1;
  if (v243)
  {
    v166 = *(a4 + 16);
    v147 = v166 == 0;
    v165 = (*(a4 + 8) + v166) >= *(a4 + 24);
  }

  v250[0] = v147;
  v250[1] = v165;
  v167 = v248;
  if (v243)
  {
    v168 = v248;
  }

  else
  {
    v168 = 1;
  }

  v251 = v168 * v240;
  v260 = BYTE6(v242);
  HIWORD(v259) = WORD2(v242);
  *(&v259 + 2) = v242 | 0x500000;
  *&v169 = -1;
  *(&v169 + 1) = -1;
  *v258 = v169;
  *&v258[16] = v169;
  *&v258[32] = v169;
  *&v258[48] = v169;
  *&v258[64] = v169;
  *v258 = objc_msgSend_maxBatchSize(a1, v158, v159, v160, v161, v162, v163, v164);
  MPSLibrary::CreateUberShaderKey();
  v170 = MPSLibrary::GetPipelineStateForMPSKey();
  objc_msgSend_setComputePipelineState_(a2, v171, v170, v172, v173, v174, v175, v176, 0, 0, 0, 0, 0);
  MPSLibrary::ReleaseMPSKey();
  v184 = objc_msgSend_maxTotalThreadsPerThreadgroup(v170, v177, v178, v179, v180, v181, v182, v183);
  objc_msgSend_threadExecutionWidth(v170, v185, v186, v187, v188, v189, v190, v191);
  if (v184 >= 0x100)
  {
    v197 = 256;
  }

  else
  {
    v197 = v184;
  }

  objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v192, (4 * v197 + 15) & 0xFF0, 0, v193, v194, v195, v196);
  objc_msgSend_setBytes_length_atIndex_(a2, v198, v250, 8, 29, v199, v200, v201);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v202, v241, 0, 28, v203, v204, v205);
  if (v243)
  {
    v213 = objc_msgSend_data(a8, v206, v207, v208, v209, v210, v211, v212);
    v221 = objc_msgSend_rowBytes(a8, v214, v215, v216, v217, v218, v219, v220);
    v167 = 1;
    objc_msgSend_setBuffer_offset_atIndex_(a2, v222, v213, v221, 30, v223, v224, v225);
  }

  else
  {
    if ((4 * *(a4 + 8)) <= 0x10)
    {
      v231 = 16;
    }

    else
    {
      v231 = 4 * *(a4 + 8);
    }

    v213 = MPSAutoCache::GetTempBuffer(v245, v231, 0);
    objc_msgSend_setBuffer_offset_atIndex_(a2, v232, v213, 0, 30, v233, v234, v235);
  }

  *a7 = v213;
  v254 = v167;
  v255 = vdupq_n_s64(1uLL);
  v252 = v197;
  v253 = v255;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v226, &v254, &v252, v227, v228, v229, v230);
  return MPSLibrary::ReleaseComputeState();
}

uint64_t sub_239CF1E04(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v63 = *MEMORY[0x277D85DE8];
  v62 = 0;
  v61 = *(a2 + 64);
  v4 = v61;
  v5 = MPSCreateFunctionConstantValues();
  v6 = *(&v61 + 2);
  v7 = *a3;
  v60 = (4 * v4) & 0xFC0 | (*(&v61 + 2) >> 6) & 0x3F | (((v4 & 0xFC00) >> 8) >> 2 << 12) & 0xC003FFFF | ((BYTE2(v61) & 0x3F) << 18) & 0xC0FFFFFF | (((*(&v61 + 2) >> 12) & 0x3F) << 24);
  objc_msgSend_setConstantValue_type_atIndex_(v5, v8, &v60, 33, 126, v9, v10, v11);
  if (v7 != -1)
  {
    v60 = v7;
    objc_msgSend_setConstantValue_type_atIndex_(v5, v12, &v60, 33, 125, v13, v14, v15);
  }

  v60 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v12, &v60, 33, 124, v13, v14, v15);
  v60 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v16, &v60, 33, 123, v17, v18, v19);
  v60 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v20, &v60, 33, 119, v21, v22, v23);
  v60 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v24, &v60, 33, 118, v25, v26, v27);
  v60 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v28, &v60, 33, 122, v29, v30, v31);
  v60 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v32, &v60, 33, 121, v33, v34, v35);
  v60 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v36, &v60, 33, 117, v37, v38, v39);
  v60 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v40, &v60, 33, 116, v41, v42, v43);
  LOWORD(v60) = v4 & 0xF;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v44, &v60, 41, 2, v45, v46, v47);
  v59 = (v6 & 0x40000) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v48, &v59, 53, 3, v49, v50, v51);
  v58 = (v6 & 0x80000) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v52, &v58, 53, 4, v53, v54, v55);
  v56 = _MPSNewSpecializedFunction();

  return v56;
}

unint64_t sub_239CF203C(unint64_t result, unint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint16x4_t a9)
{
  v12 = result;
  v13 = vmax_u16(a9, 0x1000100010001);
  v60 = v13;
  if (result)
  {
    result = objc_msgSend_maxThreadsPerThreadgroup(result, a2, a3, a4, a5, a6, a7, a8);
    v13 = v60;
  }

  v14 = v13.u16[0];
  v15 = v13.u16[1];
  v16 = v13.u16[2];
  if (v13.u16[0] * v13.u16[1] * v13.u16[2] <= a2 && v13.u16[0] == 0 && v13.u16[1] == 0 && v13.u16[2] == 0)
  {
    v21 = v13.i16[3];
    v22 = v13;
    v23 = v13.u16[2];
    v24 = v13.u16[1];
    v25 = v13.u16[0];
  }

  else
  {
    if (v12)
    {
      objc_msgSend_maxThreadsPerThreadgroup(v12, a2, a3, a4, a5, a6, a7, a8);
      v13.i16[3] = v60.i16[3];
    }

    LOWORD(v20) = 0;
    v26 = (64 - __clz(a2)) >> 1;
    v27 = 0;
    if (v26 < 0x8000000000000000)
    {
      v27 = v26;
    }

    if (!(a2 >> v27))
    {
      v20 = a2 >> v27;
    }

    v28 = 1 << v27;
    v22.i16[2] = 1;
    result = 0;
    v22.i16[0] = v20;
    v25 = 0;
    v24 = 0;
    v21 = v13.i16[3];
    v23 = 0;
    v22.i16[1] = v28;
  }

  if (v21 != 1 && v16 % v23)
  {
    goto LABEL_38;
  }

  if (a3 == 1 || !(v24 * v23 * v25 % a3))
  {
LABEL_52:
    v41 = 1;
LABEL_53:
    v43 = v25;
    v44 = v24;
    v45 = v23;
    goto LABEL_54;
  }

  if (v21 != 1)
  {
LABEL_38:
    if ((a3 & (a3 - 1)) == 0)
    {
      v34 = __clz((v25 - 1) ^ v25) ^ 0x3F;
      if (!v25)
      {
        v34 = 64;
      }

      v35 = __clz((v24 - 1) ^ v24) ^ 0x3F;
      if (!v24)
      {
        v35 = 64;
      }

      v36 = 63 - __clz(a3);
      v37 = 0x8000000000000000;
      if (a3)
      {
        v37 = v36;
      }

      result = v34 + v35;
      v38 = __clz((v23 - 1) ^ v23);
      v39 = v38 ^ 0x3F;
      if (v23)
      {
        v40 = v38 ^ 0x3F;
      }

      else
      {
        v40 = 64;
      }

      if (result + v40 < v37)
      {
        do
        {
          v41 = v23 > 1;
          if (v23 <= 1)
          {
            break;
          }

          v23 = 1 << v39;
          v42 = __clz(((1 << v39) - 1) ^ (1 << v39)) ^ 0x3F;
          v39 = v42;
        }

        while (result + v42 < v37);
        goto LABEL_53;
      }

      goto LABEL_52;
    }

    if (v23 < a3)
    {
      goto LABEL_79;
    }

    v25 = 0;
    v24 = 0;
    v23 = 0;
    if (a3 < 2)
    {
LABEL_82:
      v41 = 1;
      goto LABEL_53;
    }

LABEL_81:
    v23 = 0 / a3 * a3;
    goto LABEL_82;
  }

  if ((a3 & (a3 - 1)) != 0)
  {
    if (v23 < a3)
    {
      goto LABEL_79;
    }

    v25 = 0;
    v24 = 0;
    goto LABEL_81;
  }

  v29 = __clz((v25 - 1) ^ v25) ^ 0x3F;
  if (v25)
  {
    result = v29;
  }

  else
  {
    result = 64;
  }

  v30 = __clz((v24 - 1) ^ v24) ^ 0x3F;
  if (v24)
  {
    v31 = v30;
  }

  else
  {
    v31 = 64;
  }

  v32 = __clz((v23 - 1) ^ v23) ^ 0x3F;
  if (v23)
  {
    v33 = v32;
  }

  else
  {
    v33 = 64;
  }

  if (v31 + v33 + result >= (__clz(a3) ^ 0x3F))
  {
    goto LABEL_52;
  }

LABEL_79:
  v41 = 0;
  if (v23 < 2)
  {
    goto LABEL_53;
  }

  v54 = sqrt(v16);
  v55 = v54;
  v56 = v16 / v23;
  if (v16 / v23 >= v54)
  {
LABEL_92:
    if (v23 >= v55)
    {
      v58 = v54;
    }

    else
    {
      v58 = v23;
    }

    if (v58 >= 2)
    {
      v59 = v25 * v24 * v58;
      do
      {
        --v58;
        v59 -= v25 * v24;
      }

      while (v58 > 1);
    }

    v41 = 0;
    goto LABEL_53;
  }

  v57 = v25 * v24;
  while (1)
  {
    v45 = v16 / v56;
    if (v21 == 1 || v16 == (v16 / v45) * v45)
    {
      result = v57 * v45 / a3;
      if (!(v57 * v45 % a3) && !v45)
      {
        break;
      }
    }

    if (++v56 >= v55)
    {
      goto LABEL_92;
    }
  }

  v41 = 1;
  v43 = v25;
  v44 = v24;
LABEL_54:
  if (v22.i16[0])
  {
    v46 = (v14 + v22.u16[0] - 1) / v22.u16[0];
    LOWORD(v47) = v46;
    v48 = v22.u16[1];
    if (v22.i16[1])
    {
      goto LABEL_56;
    }
  }

  else
  {
    LOWORD(v46) = 0;
    LOWORD(v47) = 0;
    v48 = v22.u16[1];
    if (v22.i16[1])
    {
LABEL_56:
      v49 = (v15 + v48 - 1) / v48;
      WORD1(v47) = v49;
      v50 = v22.u16[2];
      if (v22.i16[2])
      {
        goto LABEL_57;
      }

LABEL_61:
      LOWORD(v51) = 0;
      WORD2(v47) = 0;
      HIWORD(v47) = v13.i16[3];
      if (!v41)
      {
        goto LABEL_75;
      }

      goto LABEL_62;
    }
  }

  LOWORD(v49) = 0;
  WORD1(v47) = 0;
  v50 = v22.u16[2];
  if (!v22.i16[2])
  {
    goto LABEL_61;
  }

LABEL_57:
  v51 = (v16 + v50 - 1) / v50;
  WORD2(v47) = v51;
  HIWORD(v47) = v13.i16[3];
  if (!v41)
  {
    goto LABEL_75;
  }

LABEL_62:
  if (v43)
  {
    v52 = (v14 + v43 - 1) / v43;
    if (v44)
    {
      goto LABEL_64;
    }

LABEL_70:
    result = 0;
    if (v45)
    {
      goto LABEL_65;
    }

LABEL_71:
    LOWORD(v53) = 0;
    goto LABEL_72;
  }

  LOWORD(v52) = 0;
  if (!v44)
  {
    goto LABEL_70;
  }

LABEL_64:
  result = (v15 + v44 - 1) / v44;
  if (!v45)
  {
    goto LABEL_71;
  }

LABEL_65:
  v53 = (v16 + v45 - 1) / v45;
LABEL_72:
  if (result * v52 * v53 < v49 * v46 * v51 || v22.u16[0] * v48 * v50 % a3)
  {
    LOWORD(v47) = v52;
    WORD1(v47) = result;
    WORD2(v47) = v53;
    HIWORD(v47) = v13.i16[3];
  }

LABEL_75:
  if (a4)
  {
    *a4 = v47;
  }

  return result;
}

void sub_239CF2AFC(uint64_t a1, char *a2, void *a3, uint64_t a4)
{
  v462 = *MEMORY[0x277D85DE8];
  v8 = *(a4 + 210);
  MEMORY[0x23EE7D040](v443, a3, 0);
  v418 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 232), v9, 0, v10, v11, v12, v13, v14);
  v22 = *(a4 + 240);
  if (v22)
  {
    v23 = objc_msgSend_objectAtIndexedSubscript_(v22, v15, 0, v17, v18, v19, v20, v21);
    if (*(a4 + 16))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v23 = 0;
    if (*(a4 + 16))
    {
      goto LABEL_7;
    }
  }

  if (!v418 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (!*(a4 + 120) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_7:
  v24 = *(a4 + 80);
  v25 = *(a4 + 88);
  v416 = *(v418 + *MEMORY[0x277CD72F8]);
  v442 = 0;
  if (*(a4 + 252) == 3 && v23)
  {
    v26 = *(a4 + 148);
    v448 = *(a4 + 132);
    v449 = v26;
    v27 = *(a4 + 32);
    v446.i64[0] = *(a4 + 240);
    v446.i64[1] = v27;
    v447 = vextq_s8(*(a4 + 40), *(a4 + 40), 8uLL);
    if (*(a4 + 257) == 1)
    {
      sub_239CF1628(a1, a2, a3, &v446, v443, 1, &v442, *(a1 + 344));
      goto LABEL_224;
    }

    if ((*(a1 + 328) & 1) == 0)
    {
      sub_239CF1628(a1, a2, a3, &v446, v443, 0, &v442, *(a1 + 344));
    }
  }

  v444 = 0;
  v28 = *(a4 + 176);
  *(&v444 + 2) = (v28 & 0x3F) << 6;
  LOWORD(v444) = 16 * (*(a4 + 128) & 0x3F);
  v29 = v418 + *MEMORY[0x277CD7320];
  explicit = atomic_load_explicit(v29, memory_order_acquire);
  if ((*(v29 + 56) & 2) != 0)
  {
    if (*(v29 + 52) < 2u)
    {
      v31 = 2;
    }

    else
    {
      v31 = 3;
    }
  }

  else if (explicit)
  {
    v31 = objc_msgSend_textureType(explicit, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v31 = objc_msgSend_textureType(*(v29 + 40), v15, v16, v17, v18, v19, v20, v21);
  }

  v32 = v28 & 2;
  v33 = *(v418 + *MEMORY[0x277CD72F0]) - 1;
  if (v33 > 4)
  {
    v34 = 0;
  }

  else
  {
    v34 = dword_239D90940[v33];
  }

  v35 = v34 | (v31 == 3);
  if (*(v418 + *MEMORY[0x277CD7310]) > 1uLL)
  {
    v35 |= 2u;
  }

  if ((*(v418 + *MEMORY[0x277CD7318]) & 0x3000000) != 0)
  {
    v35 |= 4u;
  }

  v36 = v35 | v32;
  v37 = v444 & 0x3FF | (v36 << 10);
  LOWORD(v444) = v37;
  v415 = a1;
  v407 = v23;
  v404 = v32;
  if (v23)
  {
    v38 = v23 + *MEMORY[0x277CD7320];
    v39 = atomic_load_explicit(v38, memory_order_acquire);
    if ((*(v38 + 56) & 2) != 0)
    {
      if (*(v38 + 52) < 2u)
      {
        v40 = 2;
      }

      else
      {
        v40 = 3;
      }
    }

    else if (v39)
    {
      v40 = objc_msgSend_textureType(v39, v15, v16, v17, v18, v19, v20, v21);
    }

    else
    {
      v40 = objc_msgSend_textureType(*(v38 + 40), v15, v16, v17, v18, v19, v20, v21);
    }

    v42 = *(v23 + *MEMORY[0x277CD72F0]) - 1;
    if (v42 > 4)
    {
      v43 = 0;
    }

    else
    {
      v43 = dword_239D90940[v42];
    }

    if (v40 == 3)
    {
      ++v43;
    }

    if (*(v23 + *MEMORY[0x277CD7310]) > 1uLL)
    {
      v43 |= 2u;
    }

    if ((*(v23 + *MEMORY[0x277CD7318] + 3) & 3) != 0)
    {
      v43 |= 4u;
    }

    v36 = v43 | v32;
    v37 = v444;
    v41 = 2359296;
  }

  else
  {
    v41 = 0x200000;
  }

  v44 = *(&v444 + 2) & 0x3FFC0 | (v445 << 48) & 0xFFFE00000003FFC0;
  LOWORD(v444) = v37 & 0xFFF0 | *(a4 + 248) & 0xF;
  HIWORD(v444) = 0;
  *(&v444 + 2) = v41 | *(&v444 + 2) & 0x3FFC0 | v36;
  v445 = BYTE6(v44);
  *&v45 = -1;
  *(&v45 + 1) = -1;
  v440 = v45;
  v439 = v45;
  v438 = v45;
  v437 = v45;
  v441 = -1;
  v436 = v8;
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  objc_msgSend_setComputePipelineState_(a2, v47, PipelineStateForMPSKey, v48, v49, v50, v51, v52, 0, 0, 0, 0, 0);
  MPSLibrary::ReleaseMPSKey();
  v53.i16[0] = v24;
  v53.i16[1] = v25;
  v409 = v53.i32[0];
  v53.i16[2] = (v416 + 3) >> 2;
  v53.i16[3] = *(a4 + 32);
  v411 = v53;
  v61 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v54, v55, v56, v57, v58, v59, v60);
  objc_msgSend_threadExecutionWidth(PipelineStateForMPSKey, v62, v63, v64, v65, v66, v67, v68);
  if (v61 >= 0x100)
  {
    v73 = 256;
  }

  else
  {
    v73 = v61;
  }

  v435 = 0;
  sub_239CF203C(*(*a4 + 16), v73, 1uLL, &v435, v69, v70, v71, v72, v411);
  v412 = v74;
  v74.i32[0] = v435.i32[0];
  if (*(a4 + 32) != v435.u16[3] || v435.u16[2] != 1)
  {
    v74.i16[2] = 1;
    v74.i16[3] = *(a4 + 32);
    v435 = v74;
    v75 = v412;
    v76 = v412.u16[0] * v412.u16[1];
    if (v76 > v73)
    {
      v77 = 1;
    }

    else
    {
      v77 = v73 / v76;
    }

    if ((v416 + 3) >> 2 < v77)
    {
      v77 = (v416 + 3) >> 2;
    }

    if (v77 <= 1)
    {
      LOWORD(v77) = 1;
    }

    v75.i16[2] = v77;
    v412 = v75;
  }

  v78 = (*(**(*(a4 + 8) + 32) + 16))(*(*(a4 + 8) + 32));
  if (v78 >= v412.u16[2])
  {
    v86 = v412.i16[2];
  }

  else
  {
    v86 = v78;
  }

  v405 = v435;
  v402 = v86;
  *(a4 + 206) = v412.i16[0] * v412.i16[1] * v86;
  v87 = *(a4 + 48);
  v433 = v87 == 0;
  v89 = *(a4 + 32);
  v88 = *(a4 + 40);
  v434 = v89 + v87 >= v88;
  v426 = *(a4 + 272);
  v90 = 1.0 / v426;
  v429 = v90;
  v430 = v89;
  v432 = 0;
  v91 = *(a4 + 252);
  if (v91)
  {
    LOBYTE(v432) = 1;
    if (v91 == 3)
    {
      v91 = 0;
      BYTE2(v432) = 1;
      v92 = *(a1 + 328);
      if (v92 != 1)
      {
        goto LABEL_69;
      }

      goto LABEL_68;
    }

    if (v91 == 2)
    {
      v91 = 1;
      BYTE1(v432) = 1;
      v92 = *(a1 + 328);
      if (v92 != 1)
      {
        goto LABEL_69;
      }

LABEL_68:
      HIBYTE(v432) = v92;
      goto LABEL_69;
    }

    v91 = 0;
    v92 = *(a1 + 328);
    if (v92 == 1)
    {
      goto LABEL_68;
    }
  }

LABEL_69:
  v425 = *(a4 + 260);
  v93 = vmovn_s64(*(a4 + 80));
  v427 = *(a4 + 280);
  v424 = v93.i16[2];
  v423 = v93.i16[0];
  v428 = 1.0;
  if (v91)
  {
    v94 = v416;
    if (*(a4 + 248) == 2)
    {
      v94 = 1;
    }

    if (!*(a4 + 256))
    {
      v88 = 1;
    }

    v428 = 1.0 / (v25 * v24 * v94 * v88);
  }

  v95 = *(a4 + 168);
  v403 = v412.u16[1];
  if ((*(a4 + 176) & 2) == 0)
  {
    objc_msgSend_setTexture_atIndex_(a2, v79, v95, 0, v82, v83, v84, v85);
    if (v433 && HIBYTE(v432) == 1)
    {
      v100 = *(a4 + 168);
LABEL_100:
      *(a1 + 352) = v100;
      goto LABEL_101;
    }

    goto LABEL_101;
  }

  v101 = objc_msgSend_count(v95, v79, v80, v81, v82, v83, v84, v85);
  v460 = 0u;
  v461 = 0u;
  v458 = 0u;
  v459 = 0u;
  v456 = 0u;
  v457 = 0u;
  v454 = 0u;
  v455 = 0u;
  v452 = 0u;
  v453 = 0u;
  v450 = 0u;
  v451 = 0u;
  v448 = 0u;
  v449 = 0u;
  v446 = 0u;
  v447 = 0u;
  if (v8)
  {
    v104 = v101;
    for (i = 0; i < v8; i += v107)
    {
      if (v104 <= i)
      {
        v106 = 0;
        if (v8 - i >= 0x20)
        {
          v107 = 32;
        }

        else
        {
          v107 = v8 - i;
        }

        v108 = v107;
        if (!v107)
        {
          goto LABEL_90;
        }
      }

      else
      {
        if (v104 - i >= 0x20)
        {
          v106 = 32;
          objc_msgSend_getObjects_range_(v95, v96, &v446, i, 32, v97, v98, v99);
        }

        else
        {
          v106 = v104 - i;
          objc_msgSend_getObjects_range_(v95, v96, &v446, i, v104 - i, v97, v98, v99);
        }

        if (v8 - i >= 0x20)
        {
          v107 = 32;
        }

        else
        {
          v107 = v8 - i;
        }

        v108 = v107 - v106;
        if (v107 == v106)
        {
          goto LABEL_90;
        }
      }

      bzero(&v446 + 8 * v106, 8 * v108);
LABEL_90:
      objc_msgSend_setTextures_withRange_(a2, v96, &v446, i, v107, v97, v98, v99);
    }
  }

  if (v433 && HIBYTE(v432) == 1)
  {
    v100 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 168), v96, 0, v102, v103, v97, v98, v99);
    goto LABEL_100;
  }

LABEL_101:
  objc_msgSend_setBytes_length_atIndex_(a2, v96, a4 + 184, 40, 0, v97, v98, v99);
  v109 = *(a4 + 32);
  v110 = 4 * v109 * ((*(v418 + *MEMORY[0x277CD72F8]) + 3) & 0x3FFFFFFFFFFFFFFCLL) * *(v418 + *MEMORY[0x277CD7330]) * *(v418 + *MEMORY[0x277CD7308]);
  v111 = 4 * v405.u16[0] * v405.u16[1] * v109;
  if (*(a4 + 252))
  {
    v110 = v111;
  }

  TempBuffer = MPSAutoCache::GetTempBuffer(v443, (v110 + 15) & 0xFFFFFFFFFFFFFFF0, 0);
  v120 = *(a4 + 120);
  if ((*(a4 + 128) & 2) == 0)
  {
    objc_msgSend_setTexture_atIndex_(a2, v112, *(a4 + 120), v8, v115, v116, v117, v118);
    goto LABEL_123;
  }

  v125 = objc_msgSend_count(*(a4 + 120), v112, v113, v114, v115, v116, v117, v118);
  v460 = 0u;
  v461 = 0u;
  v458 = 0u;
  v459 = 0u;
  v456 = 0u;
  v457 = 0u;
  v454 = 0u;
  v455 = 0u;
  v452 = 0u;
  v453 = 0u;
  v450 = 0u;
  v451 = 0u;
  v448 = 0u;
  v449 = 0u;
  v446 = 0u;
  v447 = 0u;
  if (v8)
  {
    v126 = v125;
    for (j = 0; j < v8; j += v129)
    {
      if (v126 <= j)
      {
        v128 = 0;
        if (v8 - j >= 0x20)
        {
          v129 = 32;
        }

        else
        {
          v129 = v8 - j;
        }

        v130 = v129;
        if (!v129)
        {
          goto LABEL_116;
        }
      }

      else
      {
        if (v126 - j >= 0x20)
        {
          v128 = 32;
          objc_msgSend_getObjects_range_(v120, v121, &v446, j, 32, v122, v123, v124);
        }

        else
        {
          v128 = v126 - j;
          objc_msgSend_getObjects_range_(v120, v121, &v446, j, v126 - j, v122, v123, v124);
        }

        if (v8 - j >= 0x20)
        {
          v129 = 32;
        }

        else
        {
          v129 = v8 - j;
        }

        v130 = v129 - v128;
        if (v129 == v128)
        {
          goto LABEL_116;
        }
      }

      bzero(&v446 + 8 * v128, 8 * v130);
LABEL_116:
      objc_msgSend_setTextures_withRange_(a2, v121, &v446, j + v8, v129, v122, v123, v124);
    }
  }

LABEL_123:
  objc_msgSend_setBytes_length_atIndex_(a2, v121, a4 + 132, 32, 1, v122, v123, v124);
  Sampler = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v132, Sampler, 1, v133, v134, v135, v136);
  if (objc_msgSend_retainedReferences(a3, v137, v138, v139, v140, v141, v142, v143))
  {
    v148 = 0;
  }

  else
  {
    v148 = objc_opt_new();
    v422[0] = MEMORY[0x277D85DD0];
    v422[1] = 3221225472;
    v422[2] = sub_239CF419C;
    v422[3] = &unk_278B28F28;
    v422[4] = v148;
    objc_msgSend_addCompletedHandler_(a3, v149, v422, v150, v151, v152, v153, v154);
  }

  objc_msgSend_setBuffer_offset_atIndex_(a2, v144, TempBuffer, 0, 28, v145, v146, v147);
  if (*(a4 + 32))
  {
    v161 = 2 * v8;
    if (v407)
    {
      v162 = 0;
      for (k = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 232), v155, 0, v156, v157, v158, v159, v160); ; k = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 232), v155, v162, v198, v199, v158, v159, v160))
      {
        v171 = k;
        v172 = objc_msgSend_texture(k, v164, v165, v166, v167, v168, v169, v170);
        objc_msgSend_setTexture_atIndex_(a2, v173, v172, v161 + v162, v174, v175, v176, v177);
        if (v148)
        {
          objc_msgSend_addObject_(v148, v178, v171, v179, v180, v181, v182, v183);
        }

        v184 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 240), v178, v162, v179, v180, v181, v182, v183);
        v192 = objc_msgSend_texture(v184, v185, v186, v187, v188, v189, v190, v191);
        objc_msgSend_setTexture_atIndex_(a2, v193, v192, 3 * v8 + v162, v194, v195, v196, v197);
        if (v148)
        {
          objc_msgSend_addObject_(v148, v155, v184, v198, v199, v158, v159, v160);
        }

        if (++v162 >= *(a4 + 32))
        {
          break;
        }
      }
    }

    else
    {
      v200 = 0;
      if (v148)
      {
        do
        {
          v201 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 232), v155, v200, v156, v157, v158, v159, v160);
          v209 = objc_msgSend_texture(v201, v202, v203, v204, v205, v206, v207, v208);
          objc_msgSend_setTexture_atIndex_(a2, v210, v209, v161 + v200, v211, v212, v213, v214);
          objc_msgSend_addObject_(v148, v215, v201, v216, v217, v218, v219, v220);
          ++v200;
        }

        while (v200 < *(a4 + 32));
      }

      else
      {
        do
        {
          v221 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 232), v155, v200, v156, v157, v158, v159, v160);
          v229 = objc_msgSend_texture(v221, v222, v223, v224, v225, v226, v227, v228);
          objc_msgSend_setTexture_atIndex_(a2, v230, v229, v161 + v200++, v231, v232, v233, v234);
        }

        while (v200 < *(a4 + 32));
      }
    }
  }

  objc_msgSend_setBytes_length_atIndex_(a2, v155, a4 + 132, 32, 2, v158, v159, v160);
  v235 = TempBuffer;
  objc_msgSend_setBytes_length_atIndex_(a2, v236, a4 + 132, 32, 3, v237, v238, v239);
  v247 = v416;
  if (*(a4 + 248) == 2)
  {
    v247 = 1;
  }

  v248 = *(a4 + 88) * *(a4 + 80) * v247;
  if (*(a4 + 256) == 1)
  {
    v248 *= *(a4 + 40);
  }

  v249 = 1.0 / v248;
  v421 = v249;
  if (*(a4 + 252) == 3 && v407)
  {
    if (*(v415 + 328))
    {
      v442 = objc_msgSend_data(*(v415 + 344), v240, v241, v242, v243, v244, v245, v246);
    }

    objc_msgSend_setBuffer_offset_atIndex_(a2, v240, v442, 0, 29, v244, v245, v246);
  }

  else
  {
    objc_msgSend_setBytes_length_atIndex_(a2, v240, &v421, 4, 29, v244, v245, v246);
  }

  objc_msgSend_setBytes_length_atIndex_(a2, v250, &v423, 52, 30, v251, v252, v253);
  v254 = v412.u16[0];
  objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v255, (4 * v412.u16[0] * v412.u16[1] * v402 + 15) & 0x7FFFFFFFFFFF0, 0, v256, v257, v258, v259);
  v413 = vmovl_u16(v405).u64[0];
  v260 = vand_s8(v413, 0xFFFF0000FFFFLL);
  v261.i64[0] = v260.u32[0];
  v261.i64[1] = v260.u32[1];
  v446 = v261;
  v447.i64[0] = v405.u16[3];
  *v420 = v254;
  *&v420[8] = v403;
  *&v420[16] = v402;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v262, &v446, v420, v263, v264, v265, v266);
  v424 = v413.i16[2];
  v423 = v413.i16[0];
  v426 = v416;
  v444 = 0;
  v274 = (v445 << 16) << 32;
  *(&v444 + 2) = (*(a4 + 176) & 0x3F) << 6;
  v445 = BYTE6(v274);
  HIWORD(v444) = WORD2(v274);
  LOWORD(v444) = 16 * (*(a4 + 128) & 0x3F);
  v275 = v418 + *MEMORY[0x277CD7320];
  v276 = atomic_load_explicit(v275, memory_order_acquire);
  if ((*(v275 + 56) & 2) != 0)
  {
    if (*(v275 + 52) < 2u)
    {
      v277 = 2;
    }

    else
    {
      v277 = 3;
    }
  }

  else if (v276)
  {
    v277 = objc_msgSend_textureType(v276, v267, v268, v269, v270, v271, v272, v273);
  }

  else
  {
    v277 = objc_msgSend_textureType(*(v275 + 40), v267, v268, v269, v270, v271, v272, v273);
  }

  v278 = *(v418 + *MEMORY[0x277CD72F0]) - 1;
  if (v278 > 4)
  {
    LOWORD(v279) = 0;
  }

  else
  {
    v279 = dword_239D90940[v278];
  }

  v280 = v279 | (v277 == 3);
  if (*(v418 + *MEMORY[0x277CD7310]) > 1uLL)
  {
    v280 |= 2u;
  }

  if ((*(v418 + *MEMORY[0x277CD7318]) & 0x3000000) != 0)
  {
    v280 |= 4u;
  }

  v281 = v280 | v404;
  v282 = v444 & 0x3FF | ((v280 | v404) << 10);
  LOWORD(v444) = v282;
  if (v407)
  {
    v283 = v407 + *MEMORY[0x277CD7320];
    v284 = atomic_load_explicit(v283, memory_order_acquire);
    if ((*(v283 + 56) & 2) != 0)
    {
      if (*(v283 + 52) < 2u)
      {
        v285 = 2;
      }

      else
      {
        v285 = 3;
      }
    }

    else if (v284)
    {
      v285 = objc_msgSend_textureType(v284, v267, v268, v269, v270, v271, v272, v273);
    }

    else
    {
      v285 = objc_msgSend_textureType(*(v283 + 40), v267, v268, v269, v270, v271, v272, v273);
    }

    v286 = *(v407 + *MEMORY[0x277CD72F0]) - 1;
    if (v286 > 4)
    {
      LOBYTE(v287) = 0;
    }

    else
    {
      v287 = dword_239D90940[v286];
    }

    if (v285 == 3)
    {
      LOBYTE(v287) = v287 + 1;
    }

    if (*(v407 + *MEMORY[0x277CD7310]) > 1uLL)
    {
      LOBYTE(v287) = v287 | 2;
    }

    if ((*(v407 + *MEMORY[0x277CD7318] + 3) & 3) != 0)
    {
      LOBYTE(v287) = v287 | 4;
    }

    v281 = v287 | v404;
    v282 = v444;
  }

  v288 = (*(&v444 + 2) | ((HIWORD(v444) | (v445 << 16)) << 32)) & 0xFE0000000FFFC0;
  LOWORD(v444) = v282 & 0xFFF0 | *(a4 + 248) & 0xF;
  HIWORD(v444) = WORD2(v288);
  v445 = BYTE6(v288);
  v408 = v288 | v281 & 0x3F;
  *(&v444 + 2) = v408 | 0x100000;
  *&v289 = -1;
  *(&v289 + 1) = -1;
  v437 = v289;
  v438 = v289;
  v439 = v289;
  v440 = v289;
  v441 = -1;
  v436 = *(a4 + 32);
  MPSLibrary::CreateUberShaderKey();
  v290 = MPSLibrary::GetPipelineStateForMPSKey();
  objc_msgSend_setComputePipelineState_(a2, v291, v290, v292, v293, v294, v295, v296, 0, 0, 0, 0, 0);
  MPSLibrary::ReleaseMPSKey();
  if (*(a4 + 252))
  {
    v304 = 1;
  }

  else
  {
    v304 = (v416 + 3) >> 2;
  }

  v305.i32[0] = v409;
  v305.i16[2] = v304;
  v305.i16[3] = *(a4 + 32);
  v410 = v305;
  v306 = objc_msgSend_maxTotalThreadsPerThreadgroup(v290, v297, v298, v299, v300, v301, v302, v303);
  objc_msgSend_threadExecutionWidth(v290, v307, v308, v309, v310, v311, v312, v313);
  if (v306 >= 0x100)
  {
    v318 = 256;
  }

  else
  {
    v318 = v306;
  }

  v435 = 0;
  v414 = v318;
  sub_239CF203C(*(*a4 + 16), v318, 1uLL, &v435, v314, v315, v316, v317, v410);
  v419 = v324;
  v325 = v324.u16[2];
  if (v304 >= 2u)
  {
    v327 = __clz(0x80000000 / v304);
    v328 = (0x80000000 / v304) >> (16 - v327);
    v329 = v327 + 15;
    v330 = -65536 * v304 * v328 / v304;
    if (v330 <= v328)
    {
      v331 = v328;
    }

    else
    {
      v331 = v328 + 1;
    }

    if (v330 <= v328)
    {
      LOWORD(v328) = 0;
    }

    v326 = (v329 << 48) | ((v330 - v328) << 32) | (v331 << 16) | v304;
  }

  else
  {
    v326 = 65537;
  }

  v417 = v435;
  v431 = v326;
  objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v319, (4 * v324.u16[0] * v324.u16[1] * v324.u16[2] + 15) & 0x7FFFFFFFFFFF0, 0, v320, v321, v322, v323);
  objc_msgSend_setBytes_length_atIndex_(a2, v332, &v423, 52, 30, v333, v334, v335);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v336, v235, 0, 28, v337, v338, v339);
  v347 = *(a4 + 168);
  if ((*(a4 + 176) & 2) != 0)
  {
    v352 = objc_msgSend_count(*(a4 + 168), v340, v341, v342, v343, v344, v345, v346);
    v406 = v325;
    v460 = 0u;
    v461 = 0u;
    v458 = 0u;
    v459 = 0u;
    v456 = 0u;
    v457 = 0u;
    v454 = 0u;
    v455 = 0u;
    v452 = 0u;
    v453 = 0u;
    v450 = 0u;
    v451 = 0u;
    v448 = 0u;
    v449 = 0u;
    v446 = 0u;
    v447 = 0u;
    if (!v8)
    {
LABEL_218:
      v325 = v406;
      goto LABEL_219;
    }

    v353 = v352;
    v354 = 0;
    while (1)
    {
      if (v353 <= v354)
      {
        v355 = 0;
        if (v8 - v354 >= 0x20)
        {
          v356 = 32;
        }

        else
        {
          v356 = v8 - v354;
        }

        v357 = v356;
        if (!v356)
        {
          goto LABEL_211;
        }
      }

      else
      {
        if (v353 - v354 >= 0x20)
        {
          v355 = 32;
          objc_msgSend_getObjects_range_(v347, v348, &v446, v354, 32, v349, v350, v351);
        }

        else
        {
          v355 = v353 - v354;
          objc_msgSend_getObjects_range_(v347, v348, &v446, v354, v353 - v354, v349, v350, v351);
        }

        if (v8 - v354 >= 0x20)
        {
          v356 = 32;
        }

        else
        {
          v356 = v8 - v354;
        }

        v357 = v356 - v355;
        if (v356 == v355)
        {
          goto LABEL_211;
        }
      }

      bzero(&v446 + 8 * v355, 8 * v357);
LABEL_211:
      objc_msgSend_setTextures_withRange_(a2, v348, &v446, v354, v356, v349, v350, v351);
      v354 += v356;
      if (v354 >= v8)
      {
        goto LABEL_218;
      }
    }
  }

  objc_msgSend_setTexture_atIndex_(a2, v340, *(a4 + 168), 0, v343, v344, v345, v346);
LABEL_219:
  objc_msgSend_setBytes_length_atIndex_(a2, v348, a4 + 184, 40, 0, v349, v350, v351);
  v358 = vand_s8(*&vmovl_u16(v417), 0xFFFF0000FFFFLL);
  v359.i64[0] = v358.u32[0];
  v359.i64[1] = v358.u32[1];
  v446 = v359;
  v447.i64[0] = (v417.i16[2] * v417.i16[3]);
  v360 = vand_s8(*&vmovl_u16(v419), 0xFFFF0000FFFFLL);
  v359.i64[0] = v360.u32[0];
  v359.i64[1] = v360.u32[1];
  *v420 = v359;
  *&v420[16] = v325;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v361, &v446, v420, v362, v363, v364, v365);
  if (HIBYTE(v432) == 1)
  {
    HIWORD(v444) = WORD2(v408);
    *(&v444 + 2) = v408 | 0x600000;
    v445 = BYTE6(v408);
    MPSLibrary::CreateUberShaderKey();
    v366 = MPSLibrary::GetPipelineStateForMPSKey();
    objc_msgSend_setComputePipelineState_(a2, v367, v366, v368, v369, v370, v371, v372, 0, 0, 0, 0, 0);
    MPSLibrary::ReleaseMPSKey();
    if (v434)
    {
      v379 = *(v415 + 352);
      objc_msgSend_addObject_(v148, v373, v379, v374, v375, v376, v377, v378);
      objc_msgSend_setTexture_atIndex_(a2, v380, v379, 0, v381, v382, v383, v384);
    }

    objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v373, (4 * v414 + 15) & 0xFF0, 0, v375, v376, v377, v378);
    v392 = objc_msgSend_data(*(v415 + 344), v385, v386, v387, v388, v389, v390, v391);
    objc_msgSend_setBuffer_offset_atIndex_(a2, v393, v392, 0, 27, v394, v395, v396);
    v446 = vdupq_n_s64(1uLL);
    v447.i64[0] = 1;
    *v420 = v414;
    *&v420[8] = v446;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v397, &v446, v420, v398, v399, v400, v401);
  }

  MPSLibrary::ReleaseComputeState();
LABEL_224:
  MPSAutoCache::~MPSAutoCache(v443);
}

void sub_239CF41A4(uint64_t a1, char *a2, void *a3, uint64_t a4)
{
  v346 = *MEMORY[0x277D85DE8];
  v7 = *(a4 + 210);
  MEMORY[0x23EE7D040](v327, a3, 0);
  v21 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 232), v8, 0, v9, v10, v11, v12, v13);
  v22 = *(a4 + 240);
  if (v22)
  {
    v305 = objc_msgSend_objectAtIndexedSubscript_(v22, v14, 0, v16, v17, v18, v19, v20);
    if (*(a4 + 16))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v305 = 0;
    if (*(a4 + 16))
    {
      goto LABEL_7;
    }
  }

  if (!v21 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (!*(a4 + 120) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_7:
  v23 = *(a4 + 80);
  v24 = *(a4 + 88);
  v301 = *(v21 + *MEMORY[0x277CD72F8]);
  v326 = 0;
  if (*(a4 + 252) == 3 && v305)
  {
    v25 = *(a4 + 148);
    v332 = *(a4 + 132);
    v333 = v25;
    v26 = *(a4 + 32);
    *&v330 = *(a4 + 240);
    *(&v330 + 1) = v26;
    v331 = vextq_s8(*(a4 + 40), *(a4 + 40), 8uLL);
    if (*(a4 + 257) == 1)
    {
      sub_239CF1628(a1, a2, a3, &v330, v327, 1, &v326, *(a1 + 432));
      goto LABEL_172;
    }

    if ((*(a1 + 416) & 1) == 0)
    {
      sub_239CF1628(a1, a2, a3, &v330, v327, 0, &v326, *(a1 + 432));
    }
  }

  v306 = a2;
  v328 = 0;
  v27 = *(a4 + 176);
  *(&v328 + 2) = (v27 & 0x3F) << 6;
  LOWORD(v328) = 16 * (*(a4 + 128) & 0x3F);
  v28 = MEMORY[0x277CD7320];
  v29 = v21 + *MEMORY[0x277CD7320];
  explicit = atomic_load_explicit(v29, memory_order_acquire);
  v300 = a3;
  if ((*(v29 + 56) & 2) != 0)
  {
    if (*(v29 + 52) < 2u)
    {
      v31 = 2;
    }

    else
    {
      v31 = 3;
    }
  }

  else if (explicit)
  {
    v31 = objc_msgSend_textureType(explicit, v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    v31 = objc_msgSend_textureType(*(v29 + 40), v14, v15, v16, v17, v18, v19, v20);
  }

  v32 = MEMORY[0x277CD72F0];
  v33 = v27 & 2;
  v34 = *(v21 + *MEMORY[0x277CD72F0]) - 1;
  if (v34 > 4)
  {
    v35 = 0;
  }

  else
  {
    v35 = dword_239D90940[v34];
  }

  v36 = v35 | (v31 == 3);
  v37 = MEMORY[0x277CD7310];
  if (*(v21 + *MEMORY[0x277CD7310]) > 1uLL)
  {
    v36 |= 2u;
  }

  v38 = MEMORY[0x277CD7318];
  if ((*(v21 + *MEMORY[0x277CD7318]) & 0x3000000) != 0)
  {
    v36 |= 4u;
  }

  v39 = v36 | v33;
  v40 = v328 & 0x3FF | ((v36 | v33) << 10);
  LOWORD(v328) = v40;
  if (!v305)
  {
    v46 = 3145728;
    v47 = v300;
    goto LABEL_46;
  }

  v41 = v305 + *v28;
  v42 = atomic_load_explicit(v41, memory_order_acquire);
  if ((*(v41 + 56) & 2) != 0)
  {
    if (*(v41 + 52) < 2u)
    {
      v43 = 2;
    }

    else
    {
      v43 = 3;
    }

    v44 = *(v305 + *v32) - 1;
    if (v44 <= 4)
    {
      goto LABEL_32;
    }

LABEL_38:
    v45 = 0;
    goto LABEL_39;
  }

  if (v42)
  {
    v43 = objc_msgSend_textureType(v42, v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    v43 = objc_msgSend_textureType(*(v41 + 40), v14, v15, v16, v17, v18, v19, v20);
  }

  v44 = *(v305 + *v32) - 1;
  if (v44 > 4)
  {
    goto LABEL_38;
  }

LABEL_32:
  v45 = dword_239D90940[v44];
LABEL_39:
  v47 = v300;
  if (v43 == 3)
  {
    ++v45;
  }

  if (*(v305 + *v37) > 1uLL)
  {
    v45 |= 2u;
  }

  if ((*(v305 + *v38 + 3) & 3) != 0)
  {
    v45 |= 4u;
  }

  v39 = v45 | v33;
  v40 = v328;
  v46 = 3407872;
LABEL_46:
  v48 = (*(a4 + 304) & 0x3Fu) << 12;
  v49 = *(a4 + 340);
  LOWORD(v328) = v40 & 0xFFF0 | *(a4 + 248) & 0xF;
  v50 = (WORD1(v328) & 0xFC0 | (v329 << 48) & 0xFE000000000FC0 | v39) + v46 + v48 + (v49 << 19);
  *(&v328 + 2) = (WORD1(v328) & 0xFC0 | v39) + v46 + v48 + (v49 << 19);
  HIWORD(v328) = WORD2(v50);
  v329 = BYTE6(v50);
  *&v51 = -1;
  *(&v51 + 1) = -1;
  v324 = v51;
  v323 = v51;
  v322 = v51;
  v321 = v51;
  v325 = -1;
  v320[1] = v7;
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  objc_msgSend_setComputePipelineState_(v306, v53, PipelineStateForMPSKey, v54, v55, v56, v57, v58, 0, 0, 0, 0, 0);
  MPSLibrary::ReleaseMPSKey();
  v59.i16[0] = v23;
  v59.i16[1] = v24;
  v59.i16[2] = (v301 + 3) >> 2;
  v59.i16[3] = *(a4 + 32);
  v302 = v59;
  v67 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v60, v61, v62, v63, v64, v65, v66);
  objc_msgSend_threadExecutionWidth(PipelineStateForMPSKey, v68, v69, v70, v71, v72, v73, v74);
  if (v67 >= 0x100)
  {
    v67 = 256;
  }

  v320[0] = 0;
  sub_239CF203C(*(*a4 + 16), v67, 1uLL, v320, v75, v76, v77, v78, v302);
  v303 = v79;
  LODWORD(v79) = v320[0];
  if (*(a4 + 32) != HIWORD(v320[0]) || WORD2(v320[0]) != 1)
  {
    WORD2(v79) = 1;
    HIWORD(v79) = *(a4 + 32);
    v320[0] = v79;
    v80 = v303;
    v81 = v303 * WORD1(v303);
    if (v81 > v67)
    {
      v82 = 1;
    }

    else
    {
      v82 = v67 / v81;
    }

    if ((v301 + 3) >> 2 < v82)
    {
      v82 = (v301 + 3) >> 2;
    }

    if (v82 <= 1)
    {
      LOWORD(v82) = 1;
    }

    WORD2(v80) = v82;
    v303 = v80;
  }

  v83 = (*(**(*(a4 + 8) + 32) + 16))(*(*(a4 + 8) + 32));
  if (v83 >= WORD2(v303))
  {
    v91 = WORD2(v303);
  }

  else
  {
    v91 = v83;
  }

  v298 = v320[0];
  v299 = v91;
  *(a4 + 206) = v303 * WORD1(v303) * v91;
  v92 = *(a4 + 48);
  v318 = v92 == 0;
  v94 = *(a4 + 32);
  v93 = *(a4 + 40);
  v319 = v94 + v92 >= v93;
  v312 = *(a4 + 272);
  v95 = 1.0 / v312;
  v315 = v95;
  v316 = v94;
  v317 = 0;
  v96 = *(a4 + 252);
  v97 = v306;
  if (v96)
  {
    LOBYTE(v317) = 1;
    if (v96 == 3)
    {
      v96 = 0;
      BYTE2(v317) = 1;
      v98 = *(a1 + 416);
      if (v98 != 1)
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    }

    if (v96 == 2)
    {
      v96 = 1;
      BYTE1(v317) = 1;
      v98 = *(a1 + 416);
      if (v98 != 1)
      {
        goto LABEL_68;
      }

LABEL_67:
      HIBYTE(v317) = v98;
      goto LABEL_68;
    }

    v96 = 0;
    v98 = *(a1 + 416);
    if (v98 == 1)
    {
      goto LABEL_67;
    }
  }

LABEL_68:
  v311 = *(a4 + 260);
  v313 = *(a4 + 280);
  v314 = 1.0;
  if (v96)
  {
    v99 = v301;
    if (*(a4 + 248) == 2)
    {
      v99 = 1;
    }

    if (!*(a4 + 256))
    {
      v93 = 1;
    }

    v314 = 1.0 / (v24 * v23 * v99 * v93);
  }

  v100 = *(a4 + 168);
  if ((*(a4 + 176) & 2) == 0)
  {
    objc_msgSend_setTexture_atIndex_(v306, v84, v100, 0, v87, v88, v89, v90);
    goto LABEL_95;
  }

  v105 = objc_msgSend_count(v100, v84, v85, v86, v87, v88, v89, v90);
  v344 = 0u;
  v345 = 0u;
  v342 = 0u;
  v343 = 0u;
  v340 = 0u;
  v341 = 0u;
  v338 = 0u;
  v339 = 0u;
  v336 = 0u;
  v337 = 0u;
  v334 = 0u;
  v335 = 0u;
  v332 = 0u;
  v333 = 0u;
  v330 = 0u;
  v331 = 0u;
  if (v7)
  {
    v106 = v105;
    for (i = 0; i < v7; i += v109)
    {
      if (v106 <= i)
      {
        v108 = 0;
        if (v7 - i >= 0x20)
        {
          v109 = 32;
        }

        else
        {
          v109 = v7 - i;
        }

        v110 = v109;
        if (!v109)
        {
          goto LABEL_87;
        }
      }

      else
      {
        if (v106 - i >= 0x20)
        {
          v108 = 32;
          objc_msgSend_getObjects_range_(v100, v101, &v330, i, 32, v102, v103, v104);
        }

        else
        {
          v108 = v106 - i;
          objc_msgSend_getObjects_range_(v100, v101, &v330, i, v106 - i, v102, v103, v104);
        }

        if (v7 - i >= 0x20)
        {
          v109 = 32;
        }

        else
        {
          v109 = v7 - i;
        }

        v110 = v109 - v108;
        if (v109 == v108)
        {
          goto LABEL_87;
        }
      }

      bzero(&v330 + 8 * v108, 8 * v110);
LABEL_87:
      objc_msgSend_setTextures_withRange_(v306, v101, &v330, i, v109, v102, v103, v104);
    }
  }

  v97 = v306;
  v47 = v300;
LABEL_95:
  objc_msgSend_setBytes_length_atIndex_(v97, v101, a4 + 184, 40, 0, v102, v103, v104);
  v118 = *(a4 + 120);
  if ((*(a4 + 128) & 2) == 0)
  {
    objc_msgSend_setTexture_atIndex_(v97, v111, *(a4 + 120), v7, v114, v115, v116, v117);
    goto LABEL_116;
  }

  v123 = objc_msgSend_count(*(a4 + 120), v111, v112, v113, v114, v115, v116, v117);
  v344 = 0u;
  v345 = 0u;
  v342 = 0u;
  v343 = 0u;
  v340 = 0u;
  v341 = 0u;
  v338 = 0u;
  v339 = 0u;
  v336 = 0u;
  v337 = 0u;
  v334 = 0u;
  v335 = 0u;
  v332 = 0u;
  v333 = 0u;
  v330 = 0u;
  v331 = 0u;
  if (v7)
  {
    v124 = v123;
    for (j = 0; j < v7; j += v127)
    {
      if (v124 <= j)
      {
        v126 = 0;
        if (v7 - j >= 0x20)
        {
          v127 = 32;
        }

        else
        {
          v127 = v7 - j;
        }

        v128 = v127;
        if (!v127)
        {
          goto LABEL_108;
        }
      }

      else
      {
        if (v124 - j >= 0x20)
        {
          v126 = 32;
          objc_msgSend_getObjects_range_(v118, v119, &v330, j, 32, v120, v121, v122);
        }

        else
        {
          v126 = v124 - j;
          objc_msgSend_getObjects_range_(v118, v119, &v330, j, v124 - j, v120, v121, v122);
        }

        if (v7 - j >= 0x20)
        {
          v127 = 32;
        }

        else
        {
          v127 = v7 - j;
        }

        v128 = v127 - v126;
        if (v127 == v126)
        {
          goto LABEL_108;
        }
      }

      bzero(&v330 + 8 * v126, 8 * v128);
LABEL_108:
      objc_msgSend_setTextures_withRange_(v306, v119, &v330, j + v7, v127, v120, v121, v122);
    }
  }

  v97 = v306;
  v47 = v300;
LABEL_116:
  objc_msgSend_setBytes_length_atIndex_(v97, v119, a4 + 132, 32, 1, v120, v121, v122);
  Sampler = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(v97, v130, Sampler, 1, v131, v132, v133, v134);
  if (objc_msgSend_retainedReferences(v47, v135, v136, v137, v138, v139, v140, v141))
  {
    v148 = 0;
  }

  else
  {
    v148 = objc_opt_new();
    v309[0] = MEMORY[0x277D85DD0];
    v309[1] = 3221225472;
    v309[2] = sub_239CF51E0;
    v309[3] = &unk_278B28F28;
    v309[4] = v148;
    objc_msgSend_addCompletedHandler_(v47, v149, v309, v150, v151, v152, v153, v154);
  }

  if (*(a4 + 32))
  {
    v155 = 2 * v7;
    if (v305)
    {
      v156 = 0;
      for (k = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 232), v142, 0, v143, v144, v145, v146, v147); ; k = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 232), v142, v156, v192, v193, v145, v146, v147))
      {
        v165 = k;
        v166 = objc_msgSend_texture(k, v158, v159, v160, v161, v162, v163, v164);
        objc_msgSend_setTexture_atIndex_(v306, v167, v166, v155 + v156, v168, v169, v170, v171);
        if (v148)
        {
          objc_msgSend_addObject_(v148, v172, v165, v173, v174, v175, v176, v177);
        }

        v178 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 240), v172, v156, v173, v174, v175, v176, v177);
        v186 = objc_msgSend_texture(v178, v179, v180, v181, v182, v183, v184, v185);
        objc_msgSend_setTexture_atIndex_(v306, v187, v186, 3 * v7 + v156, v188, v189, v190, v191);
        if (v148)
        {
          objc_msgSend_addObject_(v148, v142, v178, v192, v193, v145, v146, v147);
        }

        if (++v156 >= *(a4 + 32))
        {
          break;
        }
      }
    }

    else
    {
      v194 = 0;
      if (v148)
      {
        do
        {
          v195 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 232), v142, v194, v143, v144, v145, v146, v147);
          v203 = objc_msgSend_texture(v195, v196, v197, v198, v199, v200, v201, v202);
          objc_msgSend_setTexture_atIndex_(v306, v204, v203, v155 + v194, v205, v206, v207, v208);
          objc_msgSend_addObject_(v148, v209, v195, v210, v211, v212, v213, v214);
          ++v194;
        }

        while (v194 < *(a4 + 32));
      }

      else
      {
        do
        {
          v215 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 232), v142, v194, v143, v144, v145, v146, v147);
          v223 = objc_msgSend_texture(v215, v216, v217, v218, v219, v220, v221, v222);
          objc_msgSend_setTexture_atIndex_(v306, v224, v223, v155 + v194++, v225, v226, v227, v228);
        }

        while (v194 < *(a4 + 32));
      }
    }
  }

  objc_msgSend_setBytes_length_atIndex_(v306, v142, a4 + 132, 32, 2, v145, v146, v147);
  v229 = WORD1(v303);
  objc_msgSend_setBytes_length_atIndex_(v306, v230, a4 + 132, 32, 3, v231, v232, v233);
  v241 = *(a4 + 296);
  if ((*(a4 + 304) & 2) == 0)
  {
    objc_msgSend_setTexture_atIndex_(v306, v234, *(a4 + 296), 4 * v7, v237, v238, v239, v240);
    v248 = HIBYTE(v317);
    if (v318)
    {
      if ((v317 & 0x1000000) != 0)
      {
        v249 = *(a4 + 296);
LABEL_157:
        *(a1 + 440) = v249;
        goto LABEL_159;
      }

      goto LABEL_161;
    }

LABEL_158:
    if (v248)
    {
LABEL_159:
      if (v319)
      {
        objc_msgSend_addObject_(v148, v242, *(a1 + 440), v243, v244, v245, v246, v247);
        objc_msgSend_setTexture_atIndex_(v306, v256, *(a1 + 440), 4 * v7, v257, v258, v259, v260);

        *(a1 + 440) = 0;
      }

      goto LABEL_161;
    }

    goto LABEL_161;
  }

  v250 = objc_msgSend_count(*(a4 + 296), v234, v235, v236, v237, v238, v239, v240);
  v344 = 0u;
  v345 = 0u;
  v342 = 0u;
  v343 = 0u;
  v340 = 0u;
  v341 = 0u;
  v338 = 0u;
  v339 = 0u;
  v336 = 0u;
  v337 = 0u;
  v334 = 0u;
  v335 = 0u;
  v332 = 0u;
  v333 = 0u;
  v330 = 0u;
  v331 = 0u;
  if (v7)
  {
    v251 = v250;
    for (m = 0; m < v7; m += v254)
    {
      if (v251 <= m)
      {
        v253 = 0;
        if (v7 - m >= 0x20)
        {
          v254 = 32;
        }

        else
        {
          v254 = v7 - m;
        }

        v255 = v254;
        if (!v254)
        {
          goto LABEL_147;
        }
      }

      else
      {
        if (v251 - m >= 0x20)
        {
          v253 = 32;
          objc_msgSend_getObjects_range_(v241, v242, &v330, m, 32, v245, v246, v247);
        }

        else
        {
          v253 = v251 - m;
          objc_msgSend_getObjects_range_(v241, v242, &v330, m, v251 - m, v245, v246, v247);
        }

        if (v7 - m >= 0x20)
        {
          v254 = 32;
        }

        else
        {
          v254 = v7 - m;
        }

        v255 = v254 - v253;
        if (v254 == v253)
        {
          goto LABEL_147;
        }
      }

      bzero(&v330 + 8 * v253, 8 * v255);
LABEL_147:
      objc_msgSend_setTextures_withRange_(v306, v242, &v330, m + 4 * v7, v254, v245, v246, v247);
    }
  }

  v248 = HIBYTE(v317);
  v229 = WORD1(v303);
  if (!v318)
  {
    goto LABEL_158;
  }

  if ((v317 & 0x1000000) != 0)
  {
    v249 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 296), v242, 0, v243, v244, v245, v246, v247);
    goto LABEL_157;
  }

LABEL_161:
  objc_msgSend_setBytes_length_atIndex_(v306, v242, a4 + 308, 32, 4, v245, v246, v247);
  v261 = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(v306, v262, v261, 4, v263, v264, v265, v266);
  v274 = v301;
  if (*(a4 + 248) == 2)
  {
    v274 = 1;
  }

  v275 = *(a4 + 88) * *(a4 + 80) * v274;
  if (*(a4 + 256) == 1)
  {
    v275 *= *(a4 + 40);
  }

  v276 = 1.0 / v275;
  v308 = v276;
  if (*(a4 + 252) == 3 && v305)
  {
    if (*(a1 + 416))
    {
      v277 = objc_msgSend_data(*(a1 + 432), v267, v268, v269, v270, v271, v272, v273);
      objc_msgSend_setBuffer_offset_atIndex_(v306, v278, v277, 0, 29, v279, v280, v281);
    }

    else
    {
      objc_msgSend_setBuffer_offset_atIndex_(v306, v267, v326, 0, 29, v271, v272, v273);
    }
  }

  else
  {
    objc_msgSend_setBytes_length_atIndex_(v306, v267, &v308, 4, 29, v271, v272, v273);
  }

  objc_msgSend_setBytes_length_atIndex_(v306, v282, v310, 52, 30, v283, v284, v285);
  objc_msgSend_setThreadgroupMemoryLength_atIndex_(v306, v286, (4 * v303 * v229 * v299 + 15) & 0x7FFFFFFFFFFF0, 0, v287, v288, v289, v290);
  v291 = vand_s8(*&vmovl_u16(v298), 0xFFFF0000FFFFLL);
  *&v292 = v291.u32[0];
  *(&v292 + 1) = v291.u32[1];
  v330 = v292;
  v331.i64[0] = v298.u16[3];
  v307[0] = v303;
  v307[1] = v229;
  v307[2] = v299;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v306, v293, &v330, v307, v294, v295, v296, v297);
  MPSLibrary::ReleaseComputeState();
LABEL_172:
  MPSAutoCache::~MPSAutoCache(v327);
}

uint64_t sub_239CF541C(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v98[1] = *MEMORY[0x277D85DE8];
  v12 = *(a4 + 192);
  v88 = *(a4 + 176);
  v89 = v12;
  v90 = *(a4 + 208);
  v13 = *(a4 + 304);
  v66[0] = 1;
  v95 = v13;
  v21 = objc_msgSend_maxBatchSize(a1, a2, a3, a4, a5, a6, a7, a8);
  v23 = (a4 + 120);
  v22 = *(a4 + 120);
  if (v22)
  {
    v22 = objc_msgSend_featureChannels(v22, v14, v15, v16, v17, v18, v19, v20);
    v24 = *v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = *(a4 + 304);
  v26 = (v22 - v25 + 3) >> 2;
  if (v22 <= v25)
  {
    LOWORD(v26) = 0;
  }

  v27 = vmovn_s64(*(a4 + 176));
  LOWORD(v28) = v27.i16[0];
  WORD1(v28) = v27.i16[2];
  HIDWORD(v28) = ((v25 + 3) >> 2);
  v29 = vmovn_s64(*(a4 + 200));
  HIWORD(v30) = 1;
  LOWORD(v30) = v29.i16[0];
  WORD1(v30) = v29.i16[2];
  WORD2(v30) = v26;
  v31 = MEMORY[0x277CD72F8];
  if (v24)
  {
    v32 = *(v24 + *MEMORY[0x277CD72F8]);
  }

  else
  {
    v32 = 0;
  }

  v69 = v28;
  v70 = v30;
  v71 = v32;
  v72 = v24 != 0;
  v73 = 1;
  v74 = 0;
  v75 = v21;
  v76 = 0;
  if (*(a4 + 160))
  {
    v98[0] = *(a4 + 160);
    v33 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v14, v98, 1, v17, v18, v19, v20);
  }

  else
  {
    v33 = 0;
  }

  v68 = v33;
  v67 = *(a4 + 136);
  v34 = *(a4 + 136);
  v61 = *v23;
  v62 = v34;
  v63 = *(a4 + 152);
  v35 = *(a4 + 168);
  v36 = *(a4 + 16);
  v37 = *(a4 + 32);
  v53 = *a4;
  v54 = v36;
  v55 = v37;
  v38 = *(a4 + 40);
  v56 = *(a4 + 48);
  v39 = *(a4 + 56);
  v40 = *(a4 + 72);
  v41 = *(a4 + 88);
  v42 = *(a4 + 112);
  v60 = *(a4 + 104);
  v59 = v41;
  v58 = v40;
  v57 = v39;
  v64 = v35;
  v65 = v42;
  v66[3] = &v53;
  v43 = *(a4 + 240);
  v91 = *(a4 + 224);
  v93 = *(a4 + 280);
  v44 = *(a4 + 296);
  v92 = v43;
  v94 = v44;
  v96 = *(a4 + 312);
  *&v40 = vmovn_s64(*(a4 + 224));
  v45 = *(*a4 + *v31);
  v46 = *(a4 + 240);
  v81 = 0x1000100000000;
  v79 = v40;
  v80 = WORD2(v40);
  v82 = __PAIR32__(WORD2(v40), v40);
  v83 = 0x1000100010001;
  v84 = v96;
  v85 = v45;
  v86 = v46;
  v87 = 1;
  v97 = v38;
  v78 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v14, &v97, 1, v17, v18, v19, v20, v53, v54, v55, v56, v39, v58, v41, v60, v61, v62, v63, v64, v42);
  v77 = *(a4 + 16);
  v47 = *(a4 + 328);
  v66[0] = *(a4 + 336);
  v66[1] = 1;
  v66[2] = v47;
  sub_239CF56D8(a1, a2, a3, v66, v48, v49, v50, v51);
  return 0;
}

uint64_t sub_239CF56D8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v224 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 440);
  v11 = *(a1 + 448);
  v12 = MEMORY[0x277CD7350];
  v13 = *(a4 + 130);
  v14 = (v13 + 3) >> 2;
  v15 = (*(a4 + 280) + 3) >> 2;
  v16 = vuzp1_s16(vmovn_s64(*(a4 + 232)), *&v10).u32[0];
  v196 = 0;
  v195 = v16;
  v17 = vuzp1_s16(vmovn_s64(*(a4 + 184)), *&v10).u32[0];
  v198 = v15;
  v197 = v17;
  v18 = vuzp1_s16(vmovn_s64(*(a4 + 208)), *&v10).u32[0];
  v200 = v14 * *(a4 + 224);
  _Q2.f64[0] = v10;
  _Q2.f64[1] = v11;
  v199 = v18;
  v201 = vcvt_f32_f64(_Q2);
  v20 = *(a1 + 432);
  if (v20)
  {
    __asm { FMOV            V3.2D, #1.0 }

    v25 = vcvt_f32_f64(vdivq_f64(_Q3, vaddq_f64(_Q2, _Q2)));
    *_Q2.f64 = (v10 + 1.0) / v10;
    v26 = (v11 + 1.0) / v11;
  }

  else
  {
    v26 = 1.0;
    __asm { FMOV            V2.2S, #1.0 }

    v25 = 0x3F0000003F000000;
  }

  *(_Q2.f64 + 1) = v26;
  v202 = _Q2.f64[0];
  v203 = v25;
  if (v20 == 1)
  {
    v27 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 96), a2, 0, a4, a5, a6, a7, a8);
    objc_msgSend_pixelFormat(v27, v28, v29, v30, v31, v32, v33, v34);
  }

  objc_msgSend_maxBatchSize(a1, a2, a3, a4, a5, a6, a7, a8);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  objc_msgSend_setComputePipelineState_(a2, v36, PipelineStateForMPSKey, v37, v38, v39, v40, v41, 0, 0, 0, 0, 0);
  MPSLibrary::ReleaseMPSKey();
  v42 = vmovn_s64(*(a4 + 208));
  v42.i16[1] = v42.i16[2];
  v42.i16[2] = (v13 + 3) >> 2;
  v42.i16[3] = *(a4 + 8);
  v191 = v42;
  v50 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v43, v44, v45, v46, v47, v48, v49);
  objc_msgSend_threadExecutionWidth(PipelineStateForMPSKey, v51, v52, v53, v54, v55, v56, v57);
  if (v50 >= 0x100)
  {
    v65 = 256;
  }

  else
  {
    v65 = v50;
  }

  v66 = *(*(a1 + *v12) + 16);
  v67 = vmax_u16(v191, 0x1000100010001);
  v205 = 0;
  v206 = 0;
  v207 = 0;
  v192 = v67;
  if (v66)
  {
    objc_msgSend_maxThreadsPerThreadgroup(v66, v58, v59, v60, v61, v62, v63, v64);
    v67 = v192;
    v68 = v205;
    v69 = v206;
    v70 = v207;
  }

  else
  {
    v70 = 0;
    v69 = 0;
    v68 = 0;
  }

  v71 = v67.u16[0];
  v72 = v67.u16[1];
  v73 = v67.u16[2];
  if (v67.u16[0] * v67.u16[1] * v67.u16[2] <= v65 && v68 >= v67.u16[0] && v69 >= v67.u16[1] && v70 >= v67.u16[2])
  {
    v77 = v67;
    v78 = v67.u16[2];
    v79 = v67.u16[1];
    v80 = v67.u16[0];
    goto LABEL_80;
  }

  if (v66)
  {
    v208 = 0uLL;
    *&v209 = 0;
    objc_msgSend_maxThreadsPerThreadgroup(v66, v58, v59, v60, v61, v62, v63, v64);
    v67.i16[3] = v192.i16[3];
    v68 = v205;
    v69 = v206;
    v70 = v207;
  }

  v81 = (64 - __clz(v65)) >> 1;
  v82 = 0;
  if (v81 < 0x8000000000000000)
  {
    v82 = v81;
  }

  if (v65 >> v82)
  {
    v83 = 0;
  }

  else
  {
    v83 = v65 >> v82;
  }

  v84 = 1 << v82;
  v77.i16[2] = 1;
  if (v68 >= v71)
  {
    v85 = v71;
  }

  else
  {
    v85 = v68;
  }

  if (v69 >= v72)
  {
    v86 = v72;
  }

  else
  {
    v86 = v69;
  }

  if (v70 >= v73)
  {
    v87 = v73;
  }

  else
  {
    v87 = v70;
  }

  if (v83)
  {
    v88 = v71 + v83 - 1;
    v89 = (v72 + v84 - 1) / v84;
    if (v83 > v88)
    {
      v90 = 0;
      v77.i16[0] = v83;
      if (!v89)
      {
        goto LABEL_46;
      }

LABEL_44:
      v91 = (v72 + v89 - 1) / v89;
      goto LABEL_47;
    }

    v90 = (v71 + v88 / v83 - 1) / (v88 / v83);
    v77.i16[0] = v83;
    if (v89)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v90 = 0;
    v89 = (v72 + v84 - 1) / v84;
    v77.i16[0] = 0;
    if (v89)
    {
      goto LABEL_44;
    }
  }

LABEL_46:
  v91 = 0;
LABEL_47:
  if (v90 >= v85)
  {
    v80 = v85;
  }

  else
  {
    v80 = v90;
  }

  if (v91 >= v86)
  {
    v79 = v86;
  }

  else
  {
    v79 = v91;
  }

  v92 = v79 * v80;
  if (v65 / (v79 * v80) >= v87)
  {
    v93 = v87;
  }

  else
  {
    v93 = v65 / (v79 * v80);
  }

  if (v67.u16[3] < 2u)
  {
    v78 = v93;
    v95 = v65 - v93 * v92;
    if (v91 < v86)
    {
      goto LABEL_62;
    }
  }

  else
  {
    if (v93 < 2)
    {
      v78 = v93;
    }

    else
    {
      do
      {
        v78 = v93;
        v94 = v73 / v93 * v93;
        --v93;
      }

      while (v73 != v94);
    }

    v95 = v65 - v78 * v92;
    if (v91 < v86)
    {
LABEL_62:
      v96 = v78 * v80;
      if (v95 > v78 * v80)
      {
        v79 += v95 / v96;
        if (v79 >= v86)
        {
          v79 = v86;
        }

        v95 = v65 - v79 * v96;
      }
    }
  }

  v77.i16[1] = v84;
  if (v90 < v85)
  {
    v97 = v79 * v78;
    if (v95 > v79 * v78)
    {
      v80 += v95 / v97;
      if (v80 >= v85)
      {
        v80 = v85;
      }

      v95 = v65 - v80 * v97;
    }
  }

  if (v78 < v87 && v95 > v80 * v79)
  {
    v78 += v95 / (v80 * v79);
    if (v78 >= v87)
    {
      v78 = v87;
    }

    if (v67.u16[3] >= 2u && v78 >= 2)
    {
      do
      {
        v98 = v78;
        v99 = v73 / v78 * v78;
        --v78;
      }

      while (v73 != v99);
      v78 = v98;
    }
  }

LABEL_80:
  v100 = v77.i16[0];
  if (v77.i16[0])
  {
    v101 = (v71 + v77.u16[0] - 1) / v77.u16[0];
    LOWORD(v102) = v101;
    v103 = v77.u16[1];
    if (v77.i16[1])
    {
      goto LABEL_82;
    }
  }

  else
  {
    LOWORD(v101) = 0;
    LOWORD(v102) = 0;
    v103 = v77.u16[1];
    if (v77.i16[1])
    {
LABEL_82:
      v104 = (v72 + v103 - 1) / v103;
      WORD1(v102) = v104;
      v105 = v77.u16[2];
      if (v77.i16[2])
      {
        goto LABEL_83;
      }

      goto LABEL_89;
    }
  }

  LOWORD(v104) = 0;
  WORD1(v102) = 0;
  v105 = v77.u16[2];
  if (v77.i16[2])
  {
LABEL_83:
    v106 = (v73 + v105 - 1) / v105;
    WORD2(v102) = v106;
    if (v80)
    {
      goto LABEL_84;
    }

    goto LABEL_90;
  }

LABEL_89:
  LOWORD(v106) = 0;
  WORD2(v102) = 0;
  if (v80)
  {
LABEL_84:
    v107 = (v71 + v80 - 1) / v80;
    HIWORD(v102) = v67.i16[3];
    if (v79)
    {
      goto LABEL_85;
    }

LABEL_91:
    LOWORD(v108) = 0;
    if (v78)
    {
      goto LABEL_86;
    }

    goto LABEL_92;
  }

LABEL_90:
  LOWORD(v107) = 0;
  HIWORD(v102) = v67.i16[3];
  if (!v79)
  {
    goto LABEL_91;
  }

LABEL_85:
  v108 = (v72 + v79 - 1) / v79;
  if (v78)
  {
LABEL_86:
    v109 = (v73 + v78 - 1) / v78;
    goto LABEL_93;
  }

LABEL_92:
  v109 = 0;
LABEL_93:
  v110 = v108 * v107 * v109;
  v111 = v104 * v101 * v106;
  v112 = v110 >= v111;
  LOWORD(v113) = v107;
  WORD1(v113) = v108;
  WORD2(v113) = v109;
  HIWORD(v113) = v67.i16[3];
  if (v110 < v111)
  {
    v114 = v78;
  }

  else
  {
    v114 = v105;
  }

  if (v112)
  {
    v115 = v103;
  }

  else
  {
    v115 = v79;
  }

  if (v112)
  {
    v116 = v100;
  }

  else
  {
    v116 = v80;
  }

  if (v112)
  {
    v113 = v102;
  }

  v193 = v113;
  v188 = v114;
  v189 = v115;
  v190 = v116;
  *(a4 + 70) = v115 * v114 * v116;
  if (v13 >= 5)
  {
    v118 = __clz(0x80000000 / v14);
    v119 = (0x80000000 / v14) >> (16 - v118);
    v120 = v118 + 15;
    v121 = -65536 * v14 * v119 / v14;
    if (v121 <= v119)
    {
      v122 = v119;
    }

    else
    {
      v122 = v119 + 1;
    }

    if (v121 <= v119)
    {
      LOWORD(v119) = 0;
    }

    v117 = (v120 << 48) | ((v121 - v119) << 32) | (v122 << 16) | v14;
  }

  else
  {
    v117 = 65537;
  }

  v204 = v117;
  v130 = objc_msgSend_maxBatchSize(a1, v109, v110, v109, v61, v62, v63, v64);
  v131 = *(a4 + 40);
  if ((*(a4 + 32) & 2) == 0)
  {
    v132 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 40), v123, 0, v125, v126, v127, v128, v129);
    objc_msgSend_setTexture_atIndex_(a2, v133, v132, 0, v134, v135, v136, v137);
    goto LABEL_131;
  }

  v142 = objc_msgSend_count(*(a4 + 40), v123, v124, v125, v126, v127, v128, v129);
  v222 = 0u;
  v223 = 0u;
  v220 = 0u;
  v221 = 0u;
  v218 = 0u;
  v219 = 0u;
  v216 = 0u;
  v217 = 0u;
  v214 = 0u;
  v215 = 0u;
  v212 = 0u;
  v213 = 0u;
  v210 = 0u;
  v211 = 0u;
  v208 = 0u;
  v209 = 0u;
  if (v130)
  {
    v143 = v142;
    for (i = 0; i < v130; i += v146)
    {
      if (v143 <= i)
      {
        v145 = 0;
        if (v130 - i >= 0x20)
        {
          v146 = 32;
        }

        else
        {
          v146 = v130 - i;
        }

        v147 = v146;
        if (!v146)
        {
          goto LABEL_116;
        }
      }

      else
      {
        if (v143 - i >= 0x20)
        {
          v145 = 32;
          objc_msgSend_getObjects_range_(v131, v138, &v208, i, 32, v139, v140, v141);
        }

        else
        {
          v145 = v143 - i;
          objc_msgSend_getObjects_range_(v131, v138, &v208, i, v143 - i, v139, v140, v141);
        }

        if (v130 - i >= 0x20)
        {
          v146 = 32;
        }

        else
        {
          v146 = v130 - i;
        }

        v147 = v146 - v145;
        if (v146 == v145)
        {
          goto LABEL_116;
        }
      }

      bzero(&v208 + 8 * v145, 8 * v147);
LABEL_116:
      objc_msgSend_setTextures_withRange_(a2, v138, &v208, i, v146, v139, v140, v141);
    }
  }

LABEL_131:
  objc_msgSend_setBytes_length_atIndex_(a2, v138, a4 + 48, 40, 0, v139, v140, v141);
  v155 = *(a4 + 96);
  if ((*(a4 + 88) & 2) != 0)
  {
    v166 = objc_msgSend_count(*(a4 + 96), v148, v149, v150, v151, v152, v153, v154);
    v222 = 0u;
    v223 = 0u;
    v220 = 0u;
    v221 = 0u;
    v218 = 0u;
    v219 = 0u;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v212 = 0u;
    v213 = 0u;
    v210 = 0u;
    v211 = 0u;
    v208 = 0u;
    v209 = 0u;
    if (!v130)
    {
      goto LABEL_150;
    }

    v167 = v166;
    v168 = 0;
    while (1)
    {
      if (v167 <= v168)
      {
        v169 = 0;
        if (v130 - v168 >= 0x20)
        {
          v170 = 32;
        }

        else
        {
          v170 = v130 - v168;
        }

        v171 = v170;
        if (!v170)
        {
          goto LABEL_135;
        }
      }

      else
      {
        if (v167 - v168 >= 0x20)
        {
          v169 = 32;
          objc_msgSend_getObjects_range_(v155, v162, &v208, v168, 32, v163, v164, v165);
        }

        else
        {
          v169 = v167 - v168;
          objc_msgSend_getObjects_range_(v155, v162, &v208, v168, v167 - v168, v163, v164, v165);
        }

        if (v130 - v168 >= 0x20)
        {
          v170 = 32;
        }

        else
        {
          v170 = v130 - v168;
        }

        v171 = v170 - v169;
        if (v170 == v169)
        {
          goto LABEL_135;
        }
      }

      bzero(&v208 + 8 * v169, 8 * v171);
LABEL_135:
      objc_msgSend_setTextures_withRange_(a2, v162, &v208, v168 + v130, v170, v163, v164, v165);
      v168 += v170;
      if (v168 >= v130)
      {
        goto LABEL_150;
      }
    }
  }

  v156 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 96), v148, 0, v150, v151, v152, v153, v154);
  objc_msgSend_setTexture_atIndex_(a2, v157, v156, v130, v158, v159, v160, v161);
LABEL_150:
  objc_msgSend_setBytes_length_atIndex_(a2, v162, a4 + 104, 32, 1, v163, v164, v165);
  objc_msgSend_setBytes_length_atIndex_(a2, v172, &v195, 56, 30, v173, v174, v175);
  Sampler = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v177, Sampler, 1, v178, v179, v180, v181);
  *&v208 = v193;
  *(&v208 + 1) = WORD1(v193);
  *&v209 = (WORD2(v193) * HIWORD(v193));
  v205 = v190;
  v206 = v189;
  v207 = v188;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v182, &v208, &v205, v183, v184, v185, v186);
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t sub_239CF65CC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a2 + 64);
  v5 = MPSCreateFunctionConstantValues();
  v6 = *a3;
  v54 = (v4 >> 6) & 0x3F | ((v4 & 0x3F) << 6);
  objc_msgSend_setConstantValue_type_atIndex_(v5, v7, &v54, 33, 126, v8, v9, v10);
  if (v6 != -1)
  {
    v54 = v6;
    objc_msgSend_setConstantValue_type_atIndex_(v5, v11, &v54, 33, 125, v12, v13, v14);
  }

  v54 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v11, &v54, 33, 124, v12, v13, v14);
  v54 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v15, &v54, 33, 123, v16, v17, v18);
  v54 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v19, &v54, 33, 119, v20, v21, v22);
  v54 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v23, &v54, 33, 118, v24, v25, v26);
  v54 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v27, &v54, 33, 122, v28, v29, v30);
  v54 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v31, &v54, 33, 121, v32, v33, v34);
  v54 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v35, &v54, 33, 117, v36, v37, v38);
  v54 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v39, &v54, 33, 116, v40, v41, v42);
  LOBYTE(v54) = (v4 & 0x2000) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v43, &v54, 53, 0, v44, v45, v46);
  v53 = (v4 & 0x1000) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v5, v47, &v53, 53, 1, v48, v49, v50);
  v51 = _MPSNewSpecializedFunction();

  return v51;
}

uint64_t sub_239CF6B68(void *a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v610 = *MEMORY[0x277D85DE8];
  v11 = *(a4 + 168);
  v12 = objc_msgSend_kernelWidth(a1, a2, a3, a4, a5, a6, a7, a8);
  objc_msgSend_kernelHeight(a1, v13, v14, v15, v16, v17, v18, v19);
  v27 = objc_msgSend_dilationRateX(a1, v20, v21, v22, v23, v24, v25, v26);
  objc_msgSend_dilationRateY(a1, v28, v29, v30, v31, v32, v33, v34);
  memset(&v538[1], 0, 32);
  v538[0] = 0u;
  v531 = vdupq_n_s64(1uLL);
  v532 = *a4;
  v533 = *(a4 + 16);
  v534 = *(a4 + 80);
  v535 = *(a4 + 56);
  v536 = *(a4 + 80);
  v537 = *(a4 + 104);
  v35 = vmovn_s64(*(a4 + 120));
  LOWORD(v36) = v35.i16[0];
  WORD1(v36) = v35.i16[2];
  HIDWORD(v36) = ((*(a4 + 192) + 3) >> 2);
  v37 = vmovn_s64(*(a4 + 144));
  v38 = *(a4 + 88);
  HIWORD(v39) = 1;
  LOWORD(v39) = v37.i16[0];
  WORD1(v39) = v37.i16[2];
  WORD2(v39) = (v38 + 3) >> 2;
  *&v538[0] = v36;
  *(&v538[0] + 1) = v39;
  LOWORD(v538[1]) = v38;
  WORD2(v538[1]) = 1;
  WORD5(v538[1]) = objc_msgSend_maxBatchSize(a1, v40, v41, v42, v43, v44, v45, v46);
  *(&v538[1] + 12) = 0;
  DWORD2(v538[2]) = *(a4 + 16);
  v539 = *(a4 + 40);
  v541 = v11 - (v12 >> 1) * v27;
  v540 = v541;
  v542 = 0;
  v544 = v12;
  v543 = v12;
  v546 = v11;
  v545 = v11;
  v547 = objc_msgSend_strideInPixelsX(a1, v47, v48, v49, v50, v51, v52, v53);
  v548 = objc_msgSend_strideInPixelsY(a1, v54, v55, v56, v57, v58, v59, v60);
  v550 = v27;
  v549 = v27;
  v69 = *(a4 + 192);
  v68 = *(a4 + 200);
  v551 = v68;
  v552 = *(a4 + 24);
  v70 = *(a4 + 184);
  v553 = v70;
  v554 = 0;
  v71 = *(a4 + 152);
  *v556 = *(a4 + 136);
  *&v556[16] = v71;
  v555 = *(a4 + 120);
  v557 = *(a4 + 168);
  v558 = v70;
  v559 = v69;
  v560 = v68;
  if (*(&v534 + 1) < a1[44] + v69 && MTLReportFailureTypeEnabled())
  {
    v491 = objc_opt_class();
    v492 = NSStringFromClass(v491);
    v496 = a1[44];
    v497 = *(&v534 + 1) - v69;
    v495 = v492;
    MTLReportFailure();
  }

  if (*(&v533 + 1) < a1[44] + v68 && MTLReportFailureTypeEnabled())
  {
    v493 = objc_opt_class();
    v494 = NSStringFromClass(v493);
    v496 = a1[44];
    v497 = *(&v533 + 1) - v68;
    v495 = v494;
    MTLReportFailure();
  }

  v72 = *(a1 + *MEMORY[0x277CD7370]);
  v73 = objc_msgSend_maxBatchSize(a1, v61, v62, v63, v64, v65, v66, v67, v495, v496, v497);
  v74 = a1[44];
  v75 = v531.i64[1];
  v503 = a1;
  v76 = a1[45];
  v77 = *(v72 + 32);
  v593 = 0;
  v592 = 0;
  v594 = 0;
  (*(*v77 + 16))(&v592, v77);
  v510 = v592;
  v78 = v593;
  v522 = v594;
  v591 = 0u;
  v590 = 0u;
  v589 = 0u;
  objc_msgSend_epsilon(v503, v79, v80, v81, v82, v83, v84, v85);
  v86 = v503[44] / v76;
  *&v87 = 1.0 / ((*&v556[16] * *&v556[8]) * v86);
  *&v589 = __PAIR64__(v87, v88);
  WORD4(v589) = WORD4(v533);
  WORD5(v589) = *&v556[24];
  v89 = vmovn_s64(vandq_s8(v557, vcgtzq_s64(v557)));
  v90 = vmovn_s64(v555);
  WORD6(v589) = v531.i16[4];
  HIWORD(v589) = v560 >> 2;
  LOWORD(v590) = v559 >> 2;
  WORD1(v590) = *v556;
  WORD3(v590) = v89.i16[2];
  v512 = vmovn_s64(*&v556[8]);
  v513 = v89;
  WORD2(v590) = v89.i16[0];
  WORD5(v590) = v90.i16[2];
  WORD4(v590) = v90.i16[0];
  v91 = v74 + 3;
  v92 = (v74 + 3) >> 2;
  HIWORD(v590) = v512.i16[2];
  WORD6(v590) = v512.i16[0];
  LOWORD(v591) = v76;
  WORD1(v591) = v86;
  v529 = v92;
  if (((v74 + 3) & 0x3FFF8) != 0)
  {
    v93 = (v91 >> 2);
    v94 = __clz(0x80000000 / v93);
    v95 = (0x80000000 / v93) >> (16 - v94);
    v96 = v94 + 15;
    v97 = -65536 * v92 * v95 / v93;
    if (v97 <= v95)
    {
      v98 = v95;
    }

    else
    {
      v98 = v95 + 1;
    }

    if (v97 <= v95)
    {
      LOWORD(v95) = 0;
    }

    v99 = (v96 << 48) | ((v97 - v95) << 32) | (v98 << 16) | (v91 >> 2);
  }

  else
  {
    v99 = 65537;
  }

  *(&v591 + 4) = v99;
  BYTE12(v591) = 0;
  MEMORY[0x23EE7D040](v588, a3, 0);
  v100 = 4 * v531.i64[1];
  if (v535)
  {
    v101 = (*(v535 + *MEMORY[0x277CD7488]) + 8);
    explicit = atomic_load_explicit(v101, memory_order_acquire);
    if (!explicit)
    {
      MPSAutoBuffer::AllocateBuffer(v101, 0);
      explicit = atomic_load_explicit(v101, memory_order_acquire);
    }
  }

  else
  {
    explicit = MPSAutoCache::GetTempBuffer(v588, ((2 * v76 + 6) & 0x3FFFFFFFFFFFFFF8) * v100, 0);
  }

  TempBuffer = MPSAutoCache::GetTempBuffer(v588, ((2 * v91) & 0x3FFFFFFFFFFFFFF8) * v100, 0);
  v102 = ((DWORD2(v538[2]) - 1) & 0xFFFFFFFD) == 0;
  v514 = v77;
  if (atomic_load_explicit(v503[41], memory_order_acquire) || atomic_load_explicit(v503[42], memory_order_acquire))
  {
    v102 |= 2u;
  }

  *&v103 = -1;
  *(&v103 + 1) = -1;
  v586 = v103;
  v585 = v103;
  v584 = v103;
  v587 = -1;
  v581 = v73;
  v582 = v536 & 0x3F | ((BYTE8(v538[2]) & 0x3F) << 6) & 0xFFF | ((BYTE8(v538[2]) & 0x3F) << 12);
  v578 = v103;
  v579 = v103;
  v577 = v103;
  v580 = -1;
  v574 = v73;
  v575 = v582;
  v573 = -1;
  v571 = v103;
  v572 = v103;
  v568 = -1;
  v570 = v103;
  v567 = v73;
  MPSLibrary::CreateUberShaderKey();
  MPSLibrary::CreateUberShaderKey();
  MPSLibrary::CreateUberShaderKey();
  MPSLibrary::CreateUberShaderKey();
  MPSLibrary::CreateUberShaderKey();
  v583 = v102 | 8;
  v576 = v102 | 0xCLL;
  v569 = 8;
  MPSLibrary::CreateUberShaderKey();
  MPSLibrary::CreateUberShaderKey();
  MPSLibrary::CreateUberShaderKey();
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v509 = MPSLibrary::GetPipelineStateForMPSKey();
  v507 = MPSLibrary::GetPipelineStateForMPSKey();
  v518 = MPSLibrary::GetPipelineStateForMPSKey();
  v516 = MPSLibrary::GetPipelineStateForMPSKey();
  v508 = MPSLibrary::GetPipelineStateForMPSKey();
  v506 = MPSLibrary::GetPipelineStateForMPSKey();
  v517 = MPSLibrary::GetPipelineStateForMPSKey();
  v500 = MPSLibrary::GetPipelineStateForMPSKey();
  v527 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v104, v105, v106, v107, v108, v109, v110, 0, 0, 0, 0, 0);
  v525 = objc_msgSend_maxTotalThreadsPerThreadgroup(v509, v111, v112, v113, v114, v115, v116, v117);
  v125 = objc_msgSend_maxTotalThreadsPerThreadgroup(v507, v118, v119, v120, v121, v122, v123, v124);
  v133 = objc_msgSend_maxTotalThreadsPerThreadgroup(v518, v126, v127, v128, v129, v130, v131, v132);
  v141 = objc_msgSend_maxTotalThreadsPerThreadgroup(v516, v134, v135, v136, v137, v138, v139, v140);
  v149 = objc_msgSend_maxTotalThreadsPerThreadgroup(v508, v142, v143, v144, v145, v146, v147, v148);
  v157 = objc_msgSend_maxTotalThreadsPerThreadgroup(v506, v150, v151, v152, v153, v154, v155, v156);
  v165 = objc_msgSend_maxTotalThreadsPerThreadgroup(v517, v158, v159, v160, v161, v162, v163, v164);
  v173 = objc_msgSend_maxTotalThreadsPerThreadgroup(v500, v166, v167, v168, v169, v170, v171, v172);
  v521 = v529 * v531.i64[1];
  v180 = v527;
  if (v527 >= v525)
  {
    v180 = v525;
  }

  if (v180 >= v125)
  {
    v180 = v125;
  }

  if (v180 >= v133)
  {
    v180 = v133;
  }

  if (v180 >= v141)
  {
    v180 = v141;
  }

  if (v180 >= v149)
  {
    v180 = v149;
  }

  if (v180 >= v157)
  {
    v180 = v157;
  }

  if (v180 >= v165)
  {
    v180 = v165;
  }

  if (v180 >= v173)
  {
    v181 = v173;
  }

  else
  {
    v181 = v180;
  }

  v182 = v510;
  do
  {
    v183 = v78;
    v184 = v78 * v510;
    v78 >>= 1;
  }

  while (v184 > v181);
  v187 = (*&v556[8] > v510 || *&v556[16] > v183) && *(v514 + 32) == 0;
  v515 = v187;
  if ((*&v556[8] + v510 - 1) / v510 < v510)
  {
    v182 = (*&v556[8] + v510 - 1) / v510;
  }

  v188 = (*&v556[16] + v183 - 1) / v183;
  v498 = v188;
  v499 = (*&v556[8] + v510 - 1) / v510;
  if (v188 >= v183)
  {
    v188 = v183;
  }

  v504 = v188;
  v505 = v182;
  v565.i64[0] = v182;
  v565.i64[1] = v188;
  v566 = v529;
  v189 = v539;
  v190 = BYTE3(**(&v532 + 1)) & 0xF;
  v520 = v183;
  if (v190 == 2)
  {
    v191 = 105;
  }

  else if (v190 == 1)
  {
    v191 = 55;
  }

  else
  {
    v191 = 125;
  }

  v564 = **(&v532 + 1) & 0xFFFFFFFFFFFFFC00 | v191;
  v526 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v174, v531.i64[1], v175, v176, v177, v178, v179);
  v530 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v192, v531.i64[1], v193, v194, v195, v196, v197);
  v204 = v515;
  if (!v531.i64[1])
  {
    v204 = 0;
  }

  v205 = v510;
  if (v204)
  {
    do
    {
      TempTexture = MPSAutoCache::GetTempTexture();
      objc_msgSend_addObject_(v526, v207, TempTexture, v208, v209, v210, v211, v212);
      v213 = MPSAutoCache::GetTempTexture();
      objc_msgSend_addObject_(v530, v214, v213, v215, v216, v217, v218, v219);
      --v75;
    }

    while (v75);
  }

  v511 = v181;
  v220 = 16 * v184;
  v221 = 2 * v73;
  v222 = 1;
  v223 = PipelineStateForMPSKey;
  v519 = v220;
  do
  {
    v528 = v222;
    if (!v515)
    {
      v235 = v189;
      goto LABEL_155;
    }

    if (v222)
    {
      objc_msgSend_setComputePipelineState_(a2, v198, v509, v199, v200, v201, v202, v203);
    }

    else
    {
      objc_msgSend_setComputePipelineState_(a2, v198, v508, v199, v200, v201, v202, v203);
    }

    if ((BYTE8(v538[2]) & 2) == 0)
    {
      objc_msgSend_setTexture_atIndex_(a2, v224, v189, v73, v227, v228, v229, v230);
      goto LABEL_86;
    }

    v236 = objc_msgSend_count(v189, v224, v225, v226, v227, v228, v229, v230);
    v609 = 0u;
    v608 = 0u;
    v607 = 0u;
    v606 = 0u;
    v605 = 0u;
    v604 = 0u;
    v603 = 0u;
    v602 = 0u;
    v601 = 0u;
    v600 = 0u;
    v599 = 0u;
    v598 = 0u;
    v597 = 0u;
    v596 = 0u;
    memset(v595, 0, sizeof(v595));
    if (v73)
    {
      v237 = v236;
      for (i = 0; i < v73; i += v240)
      {
        if (v237 <= i)
        {
          v239 = 0;
          if (v73 - i >= 0x20)
          {
            v240 = 32;
          }

          else
          {
            v240 = v73 - i;
          }

          v241 = v240;
          if (!v240)
          {
            goto LABEL_78;
          }
        }

        else
        {
          if (v237 - i >= 0x20)
          {
            v239 = 32;
            objc_msgSend_getObjects_range_(v189, v231, v595, i, 32, v232, v233, v234);
          }

          else
          {
            v239 = v237 - i;
            objc_msgSend_getObjects_range_(v189, v231, v595, i, v237 - i, v232, v233, v234);
          }

          if (v73 - i >= 0x20)
          {
            v240 = 32;
          }

          else
          {
            v240 = v73 - i;
          }

          v241 = v240 - v239;
          if (v240 == v239)
          {
            goto LABEL_78;
          }
        }

        bzero(v595 + 8 * v239, 8 * v241);
LABEL_78:
        objc_msgSend_setTextures_withRange_(a2, v231, v595, i + v73, v240, v232, v233, v234);
      }
    }

    v220 = v519;
LABEL_86:
    objc_msgSend_setBytes_length_atIndex_(a2, v231, &v540, 32, 1, v232, v233, v234);
    if ((BYTE8(v538[2]) & 2) == 0)
    {
      v249 = objc_msgSend_objectAtIndexedSubscript_(v526, v242, 0, v244, v245, v246, v247, v248);
      objc_msgSend_setTexture_atIndex_(a2, v250, v249, 0, v251, v252, v253, v254);
      goto LABEL_107;
    }

    v259 = objc_msgSend_count(v526, v242, v243, v244, v245, v246, v247, v248);
    v609 = 0u;
    v608 = 0u;
    v607 = 0u;
    v606 = 0u;
    v605 = 0u;
    v604 = 0u;
    v603 = 0u;
    v602 = 0u;
    v601 = 0u;
    v600 = 0u;
    v599 = 0u;
    v598 = 0u;
    v597 = 0u;
    v596 = 0u;
    memset(v595, 0, sizeof(v595));
    if (v73)
    {
      v260 = v259;
      for (j = 0; j < v73; j += v263)
      {
        if (v260 <= j)
        {
          v262 = 0;
          if (v73 - j >= 0x20)
          {
            v263 = 32;
          }

          else
          {
            v263 = v73 - j;
          }

          v264 = v263;
          if (!v263)
          {
            goto LABEL_99;
          }
        }

        else
        {
          if (v260 - j >= 0x20)
          {
            v262 = 32;
            objc_msgSend_getObjects_range_(v526, v255, v595, j, 32, v256, v257, v258);
          }

          else
          {
            v262 = v260 - j;
            objc_msgSend_getObjects_range_(v526, v255, v595, j, v260 - j, v256, v257, v258);
          }

          if (v73 - j >= 0x20)
          {
            v263 = 32;
          }

          else
          {
            v263 = v73 - j;
          }

          v264 = v263 - v262;
          if (v263 == v262)
          {
            goto LABEL_99;
          }
        }

        bzero(v595 + 8 * v262, 8 * v264);
LABEL_99:
        objc_msgSend_setTextures_withRange_(a2, v255, v595, j, v263, v256, v257, v258);
      }
    }

    v220 = v519;
LABEL_107:
    objc_msgSend_setBytes_length_atIndex_(a2, v255, v538, 40, 0, v256, v257, v258);
    if ((BYTE8(v538[2]) & 2) == 0)
    {
      v272 = objc_msgSend_objectAtIndexedSubscript_(v530, v265, 0, v267, v268, v269, v270, v271);
      objc_msgSend_setTexture_atIndex_(a2, v273, v272, 2 * v73, v274, v275, v276, v277);
      goto LABEL_128;
    }

    v282 = objc_msgSend_count(v530, v265, v266, v267, v268, v269, v270, v271);
    v609 = 0u;
    v608 = 0u;
    v607 = 0u;
    v606 = 0u;
    v605 = 0u;
    v604 = 0u;
    v603 = 0u;
    v602 = 0u;
    v601 = 0u;
    v600 = 0u;
    v599 = 0u;
    v598 = 0u;
    v597 = 0u;
    v596 = 0u;
    memset(v595, 0, sizeof(v595));
    if (v73)
    {
      v283 = v282;
      for (k = 0; k < v73; k += v286)
      {
        if (v283 <= k)
        {
          v285 = 0;
          if (v73 - k >= 0x20)
          {
            v286 = 32;
          }

          else
          {
            v286 = v73 - k;
          }

          v287 = v286;
          if (!v286)
          {
            goto LABEL_120;
          }
        }

        else
        {
          if (v283 - k >= 0x20)
          {
            v285 = 32;
            objc_msgSend_getObjects_range_(v530, v278, v595, k, 32, v279, v280, v281);
          }

          else
          {
            v285 = v283 - k;
            objc_msgSend_getObjects_range_(v530, v278, v595, k, v283 - k, v279, v280, v281);
          }

          if (v73 - k >= 0x20)
          {
            v286 = 32;
          }

          else
          {
            v286 = v73 - k;
          }

          v287 = v286 - v285;
          if (v286 == v285)
          {
            goto LABEL_120;
          }
        }

        bzero(v595 + 8 * v285, 8 * v287);
LABEL_120:
        objc_msgSend_setTextures_withRange_(a2, v278, v595, k + v221, v286, v279, v280, v281);
      }
    }

    v220 = v519;
LABEL_128:
    objc_msgSend_setBytes_length_atIndex_(a2, v278, &v589, 48, 30, v279, v280, v281);
    if ((v528 & 1) == 0)
    {
      objc_msgSend_setBuffer_offset_atIndex_(a2, v288, explicit, 0, 29, v290, v291, v292);
    }

    objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v288, v220, 0, v289, v290, v291, v292);
    objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v293, v220, 1, v294, v295, v296, v297);
    Sampler = MPSDevice::GetSampler();
    objc_msgSend_setSamplerState_atIndex_(a2, v299, Sampler, 0, v300, v301, v302, v303);
    *&v595[0] = v505;
    *(&v595[0] + 1) = v504;
    *&v595[1] = v521;
    v562 = v205;
    *&v563 = v520;
    *(&v563 + 1) = v522;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v304, v595, &v562, v305, v306, v307, v308);
    v235 = objc_msgSend_objectAtIndexedSubscript_(v526, v309, 0, v310, v311, v312, v313, v314);
    HIWORD(v589) = 0;
    DWORD1(v590) = 0;
    v322 = vmovn_s64(v565);
    HIWORD(v590) = v322.i16[2];
    WORD6(v590) = v322.i16[0];
    if (v528)
    {
      v223 = v507;
    }

    else
    {
      v223 = v506;
    }

    if ((BYTE8(v538[2]) & 2) != 0)
    {
      v333 = objc_msgSend_count(v530, v315, v316, v317, v318, v319, v320, v321);
      v609 = 0u;
      v608 = 0u;
      v607 = 0u;
      v606 = 0u;
      v605 = 0u;
      v604 = 0u;
      v603 = 0u;
      v602 = 0u;
      v601 = 0u;
      v600 = 0u;
      v599 = 0u;
      v598 = 0u;
      v597 = 0u;
      v596 = 0u;
      memset(v595, 0, sizeof(v595));
      if (!v73)
      {
LABEL_153:
        v205 = v510;
        v220 = v519;
        goto LABEL_154;
      }

      v334 = v333;
      v335 = 0;
      while (1)
      {
        if (v334 <= v335)
        {
          v336 = 0;
          if (v73 - v335 >= 0x20)
          {
            v337 = 32;
          }

          else
          {
            v337 = v73 - v335;
          }

          v338 = v337;
          if (!v337)
          {
            goto LABEL_146;
          }
        }

        else
        {
          if (v334 - v335 >= 0x20)
          {
            v336 = 32;
            objc_msgSend_getObjects_range_(v530, v329, v595, v335, 32, v330, v331, v332);
          }

          else
          {
            v336 = v334 - v335;
            objc_msgSend_getObjects_range_(v530, v329, v595, v335, v334 - v335, v330, v331, v332);
          }

          if (v73 - v335 >= 0x20)
          {
            v337 = 32;
          }

          else
          {
            v337 = v73 - v335;
          }

          v338 = v337 - v336;
          if (v337 == v336)
          {
            goto LABEL_146;
          }
        }

        bzero(v595 + 8 * v336, 8 * v338);
LABEL_146:
        objc_msgSend_setTextures_withRange_(a2, v329, v595, v335 + v221, v337, v330, v331, v332);
        v335 += v337;
        if (v335 >= v73)
        {
          goto LABEL_153;
        }
      }
    }

    v323 = objc_msgSend_objectAtIndexedSubscript_(v530, v315, 0, v317, v318, v319, v320, v321);
    objc_msgSend_setTexture_atIndex_(a2, v324, v323, 2 * v73, v325, v326, v327, v328);
LABEL_154:
    objc_msgSend_setBytes_length_atIndex_(a2, v329, &v540, 32, 2, v330, v331, v332);
    v189 = v526;
LABEL_155:
    objc_msgSend_setComputePipelineState_(a2, v198, v223, v199, v200, v201, v202, v203);
    if ((BYTE8(v538[2]) & 2) == 0)
    {
      objc_msgSend_setTexture_atIndex_(a2, v339, v235, v73, v342, v343, v344, v345);
      goto LABEL_176;
    }

    v350 = objc_msgSend_count(v189, v339, v340, v341, v342, v343, v344, v345);
    v609 = 0u;
    v608 = 0u;
    v607 = 0u;
    v606 = 0u;
    v605 = 0u;
    v604 = 0u;
    v603 = 0u;
    v602 = 0u;
    v601 = 0u;
    v600 = 0u;
    v599 = 0u;
    v598 = 0u;
    v597 = 0u;
    v596 = 0u;
    memset(v595, 0, sizeof(v595));
    if (v73)
    {
      v351 = v350;
      for (m = 0; m < v73; m += v354)
      {
        if (v351 <= m)
        {
          v353 = 0;
          if (v73 - m >= 0x20)
          {
            v354 = 32;
          }

          else
          {
            v354 = v73 - m;
          }

          v355 = v354;
          if (!v354)
          {
            goto LABEL_168;
          }
        }

        else
        {
          if (v351 - m >= 0x20)
          {
            v353 = 32;
            objc_msgSend_getObjects_range_(v189, v346, v595, m, 32, v347, v348, v349);
          }

          else
          {
            v353 = v351 - m;
            objc_msgSend_getObjects_range_(v189, v346, v595, m, v351 - m, v347, v348, v349);
          }

          if (v73 - m >= 0x20)
          {
            v354 = 32;
          }

          else
          {
            v354 = v73 - m;
          }

          v355 = v354 - v353;
          if (v354 == v353)
          {
            goto LABEL_168;
          }
        }

        bzero(v595 + 8 * v353, 8 * v355);
LABEL_168:
        objc_msgSend_setTextures_withRange_(a2, v346, v595, m + v73, v354, v347, v348, v349);
      }
    }

    v205 = v510;
    v220 = v519;
LABEL_176:
    objc_msgSend_setBytes_length_atIndex_(a2, v346, &v540, 32, 1, v347, v348, v349);
    objc_msgSend_setBuffer_offset_atIndex_(a2, v356, TempBuffer, 0, 30, v357, v358, v359);
    if ((v528 & 1) == 0)
    {
      objc_msgSend_setBuffer_offset_atIndex_(a2, v360, explicit, 0, 28, v361, v362, v363);
    }

    objc_msgSend_setBytes_length_atIndex_(a2, v360, &v589, 48, 29, v361, v362, v363);
    objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v364, v220, 0, v365, v366, v367, v368);
    objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v369, v220, 1, v370, v371, v372, v373);
    v374 = MPSDevice::GetSampler();
    objc_msgSend_setSamplerState_atIndex_(a2, v375, v374, 0, v376, v377, v378, v379);
    v595[0] = vdupq_n_s64(1uLL);
    *&v595[1] = v521;
    v562 = v205;
    *&v563 = v520;
    *(&v563 + 1) = v522;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v380, v595, &v562, v381, v382, v383, v384);
    if (v528)
    {
      objc_msgSend_setComputePipelineState_(a2, v385, v518, v386, v387, v388, v389, v390);
    }

    else
    {
      objc_msgSend_setComputePipelineState_(a2, v385, v517, v386, v387, v388, v389, v390);
    }

    objc_msgSend_setBuffer_offset_atIndex_(a2, v391, TempBuffer, 0, 30, v392, v393, v394);
    objc_msgSend_setBuffer_offset_atIndex_(a2, v395, explicit, 0, 29, v396, v397, v398);
    objc_msgSend_setBytes_length_atIndex_(a2, v399, &v589, 48, 28, v400, v401, v402);
    *&v595[0] = v531.i64[1];
    *(v595 + 8) = vdupq_n_s64(1uLL);
    v562 = v511;
    v563 = *(v595 + 8);
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v403, v595, &v562, v404, v405, v406, v407);
    v222 = 0;
    HIWORD(v590) = v512.i16[2];
    WORD6(v590) = v512.i16[0];
    v189 = v539;
    HIWORD(v589) = v560 >> 2;
    WORD3(v590) = v513.i16[2];
    WORD2(v590) = v513.i16[0];
    v223 = v516;
  }

  while ((v528 & 1) != 0);
  objc_msgSend_setComputePipelineState_(a2, v198, v500, v199, v200, v201, v202, v203);
  v415 = v503;
  v416 = v539;
  if ((BYTE8(v538[2]) & 2) == 0)
  {
    objc_msgSend_setTexture_atIndex_(a2, v408, v539, v73, v411, v412, v413, v414);
    goto LABEL_203;
  }

  v421 = objc_msgSend_count(v539, v408, v409, v410, v411, v412, v413, v414);
  v609 = 0u;
  v608 = 0u;
  v607 = 0u;
  v606 = 0u;
  v605 = 0u;
  v604 = 0u;
  v603 = 0u;
  v602 = 0u;
  v601 = 0u;
  v600 = 0u;
  v599 = 0u;
  v598 = 0u;
  v597 = 0u;
  v596 = 0u;
  memset(v595, 0, sizeof(v595));
  if (v73)
  {
    v422 = v421;
    for (n = 0; n < v73; n += v425)
    {
      if (v422 <= n)
      {
        v424 = 0;
        if (v73 - n >= 0x20)
        {
          v425 = 32;
        }

        else
        {
          v425 = v73 - n;
        }

        v426 = v425;
        if (!v425)
        {
          goto LABEL_195;
        }
      }

      else
      {
        if (v422 - n >= 0x20)
        {
          v424 = 32;
          objc_msgSend_getObjects_range_(v416, v417, v595, n, 32, v418, v419, v420);
        }

        else
        {
          v424 = v422 - n;
          objc_msgSend_getObjects_range_(v416, v417, v595, n, v422 - n, v418, v419, v420);
        }

        if (v73 - n >= 0x20)
        {
          v425 = 32;
        }

        else
        {
          v425 = v73 - n;
        }

        v426 = v425 - v424;
        if (v425 == v424)
        {
          goto LABEL_195;
        }
      }

      bzero(v595 + 8 * v424, 8 * v426);
LABEL_195:
      objc_msgSend_setTextures_withRange_(a2, v417, v595, n + v73, v425, v418, v419, v420);
    }
  }

  v415 = v503;
  v205 = v510;
LABEL_203:
  objc_msgSend_setBytes_length_atIndex_(a2, v417, &v540, 32, 1, v418, v419, v420);
  if ((v536 & 2) == 0)
  {
    objc_msgSend_setTexture_atIndex_(a2, v427, v537, 0, v430, v431, v432, v433);
    goto LABEL_224;
  }

  v438 = objc_msgSend_count(v537, v427, v428, v429, v430, v431, v432, v433);
  v609 = 0u;
  v608 = 0u;
  v607 = 0u;
  v606 = 0u;
  v605 = 0u;
  v604 = 0u;
  v603 = 0u;
  v602 = 0u;
  v601 = 0u;
  v600 = 0u;
  v599 = 0u;
  v598 = 0u;
  v597 = 0u;
  v596 = 0u;
  memset(v595, 0, sizeof(v595));
  if (v73)
  {
    v439 = v438;
    for (ii = 0; ii < v73; ii += v442)
    {
      if (v439 <= ii)
      {
        v441 = 0;
        if (v73 - ii >= 0x20)
        {
          v442 = 32;
        }

        else
        {
          v442 = v73 - ii;
        }

        v443 = v442;
        if (!v442)
        {
          goto LABEL_216;
        }
      }

      else
      {
        if (v439 - ii >= 0x20)
        {
          v441 = 32;
          objc_msgSend_getObjects_range_(v537, v434, v595, ii, 32, v435, v436, v437);
        }

        else
        {
          v441 = v439 - ii;
          objc_msgSend_getObjects_range_(v537, v434, v595, ii, v439 - ii, v435, v436, v437);
        }

        if (v73 - ii >= 0x20)
        {
          v442 = 32;
        }

        else
        {
          v442 = v73 - ii;
        }

        v443 = v442 - v441;
        if (v442 == v441)
        {
          goto LABEL_216;
        }
      }

      bzero(v595 + 8 * v441, 8 * v443);
LABEL_216:
      objc_msgSend_setTextures_withRange_(a2, v434, v595, ii, v442, v435, v436, v437);
    }
  }

  v415 = v503;
  v205 = v510;
LABEL_224:
  objc_msgSend_setBytes_length_atIndex_(a2, v434, v538, 40, 0, v435, v436, v437);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v444, explicit, 0, 30, v445, v446, v447);
  if (atomic_load_explicit(v415[41], memory_order_acquire) || atomic_load_explicit(v415[42], memory_order_acquire))
  {
    v452 = v415[41];
    v453 = atomic_load_explicit(v452, memory_order_acquire);
    if (!v453)
    {
      MPSAutoBuffer::AllocateBuffer(v452, 0);
      v453 = atomic_load_explicit(v452, memory_order_acquire);
    }

    objc_msgSend_setBuffer_offset_atIndex_(a2, v448, v453, 0, 29, v449, v450, v451);
    v458 = v415[42];
    v459 = atomic_load_explicit(v458, memory_order_acquire);
    if (!v459)
    {
      MPSAutoBuffer::AllocateBuffer(v458, 0);
      v459 = atomic_load_explicit(v458, memory_order_acquire);
    }

    objc_msgSend_setBuffer_offset_atIndex_(a2, v454, v459, 0, 28, v455, v456, v457);
    if ((objc_msgSend_retainedReferences(a3, v460, v461, v462, v463, v464, v465, v466) & 1) == 0)
    {
      v467 = v415[41];
      v468 = atomic_load_explicit(v467, memory_order_acquire);
      if (v468)
      {
        v469 = v415[42];
        v470 = atomic_load_explicit(v469, memory_order_acquire);
        if (!v470)
        {
LABEL_235:
          MPSAutoBuffer::AllocateBuffer(v469, 0);
          v470 = atomic_load_explicit(v469, memory_order_acquire);
        }
      }

      else
      {
        MPSAutoBuffer::AllocateBuffer(v467, 0);
        v468 = atomic_load_explicit(v467, memory_order_acquire);
        v469 = v415[42];
        v470 = atomic_load_explicit(v469, memory_order_acquire);
        if (!v470)
        {
          goto LABEL_235;
        }
      }

      v471 = v468;
      v472 = v470;
      *&v595[0] = MEMORY[0x277D85DD0];
      *(&v595[0] + 1) = 3221225472;
      *&v595[1] = sub_239CFA058;
      *(&v595[1] + 1) = &unk_278B2F6B0;
      *&v596 = v468;
      *(&v596 + 1) = v470;
      objc_msgSend_addCompletedHandler_(a3, v473, v595, v474, v475, v476, v477, v478);
    }
  }

  objc_msgSend_setBytes_length_atIndex_(a2, v448, &v589, 48, 27, v449, v450, v451);
  v479 = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v480, v479, 0, v481, v482, v483, v484);
  v562 = v499;
  *&v563 = v498;
  *(&v563 + 1) = v521;
  v561[0] = v205;
  v561[1] = v520;
  v561[2] = v522;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v485, &v562, v561, v486, v487, v488, v489);
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseMPSKey();
  MPSLibrary::ReleaseMPSKey();
  MPSLibrary::ReleaseMPSKey();
  MPSLibrary::ReleaseMPSKey();
  MPSLibrary::ReleaseMPSKey();
  MPSLibrary::ReleaseMPSKey();
  MPSLibrary::ReleaseMPSKey();
  MPSLibrary::ReleaseMPSKey();
  MPSLibrary::ReleaseMPSKey();
  MPSAutoCache::~MPSAutoCache(v588);
  return 0;
}

void sub_239CF9714(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_239BE43B4(va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

__n128 sub_239CF9DEC@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  a2[1].n128_u64[0] = *(a1 + 24);
  return result;
}

uint64_t sub_239CF9E00(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = MPSCreateFunctionConstantValues();
  v9 = v4;
  v10 = *a3;
  v11 = *(a3 + 1);
  v12.i64[0] = -1;
  v12.i64[1] = -1;
  v13 = vceqq_s64(v11, v12);
  v14 = vaddvq_s32(vbicq_s8(xmmword_239D7CEE0, vuzp1q_s32(vceqq_s64(*(a3 + 3), v12), vceqq_s64(*(a3 + 4), v12))));
  v15 = ~vaddvq_s32(vandq_s8(vuzp1q_s32(v13, vceqq_s64(*(a3 + 3), v12)), xmmword_239D7CEE0)) & 0xF;
  if (*a3 != -1 || v15 != 0 || (v14 & 0xF) != 0 || a3[5] != -1)
  {
    if ((vuzp1_s16(vmovn_s64(v13), *v11.i8).u8[0] & 1) == 0)
    {
      v21 = *(a3 + 1);
      objc_msgSend_setConstantValue_type_atIndex_(v4, v5, &v21, 33, 126, v6, v7, v8);
      v10 = *a3;
    }

    if (v10 != -1)
    {
      v21 = v10;
      objc_msgSend_setConstantValue_type_atIndex_(v9, v5, &v21, 33, 125, v6, v7, v8);
    }

    if (a3[2] != -1)
    {
      v21 = a3[2];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v5, &v21, 33, 124, v6, v7, v8);
    }

    if (a3[3] != -1)
    {
      v21 = a3[3];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v5, &v21, 33, 123, v6, v7, v8);
    }

    if (a3[4] != -1)
    {
      v21 = a3[4];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v5, &v21, 33, 119, v6, v7, v8);
    }

    if (a3[5] != -1)
    {
      v21 = a3[5];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v5, &v21, 33, 118, v6, v7, v8);
    }

    if (a3[8] != -1)
    {
      v21 = a3[8];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v5, &v21, 33, 122, v6, v7, v8);
    }

    if (a3[9] != -1)
    {
      v21 = a3[9];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v5, &v21, 33, 121, v6, v7, v8);
    }

    if (a3[6] != -1)
    {
      v21 = a3[6];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v5, &v21, 33, 117, v6, v7, v8);
    }

    if (a3[7] != -1)
    {
      v21 = a3[7];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v5, &v21, 33, 116, v6, v7, v8);
    }
  }

  v19 = _MPSNewSpecializedFunction();

  return v19;
}

void sub_239CFA058(uint64_t a1)
{
  v2 = *(a1 + 40);
}

uint64_t sub_239CFA21C(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v194 = *MEMORY[0x277D85DE8];
  if (*(a4 + 144) && *(a4 + 152))
  {
    v160 = *&a1[*MEMORY[0x277CD7350]];
    objc_msgSend_dimensionOrder(a1, a2, a3, a4, a5, a6, a7, a8);
    v11 = (v181 + 1) % 3uLL;
    objc_msgSend_dimensionOrder(a1, v12, v13, v14, v15, v16, v17, v18);
    objc_msgSend_dimensionOrder(a1, v19, v20, v21, v22, v23, v24, v25);
    v33 = v181;
    if (v11 != v174)
    {
      v33 = 2 - v181;
    }

    v34 = (v11 == v174) | (2 * v33);
    v35 = objc_msgSend_maxBatchSize(a1, v26, v27, v28, v29, v30, v31, v32);
    v36 = *(a4 + 80) & 0x3F | ((*(a4 + 16) & 0x3Fu) << 6);
    *&v181 = v35;
    *(&v181 + 1) = v36;
    memset(v182 + 8, 0, 56);
    *&v182[0] = v34;
    MPSLibrary::CreateUberShaderKey();
    PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
    MPSLibrary::ReleaseMPSKey();
    LODWORD(v34) = (objc_msgSend_width(*a4, v38, v39, v40, v41, v42, v43, v44, 0, 0, 0, 0, 0) + 3) >> 2;
    v52 = objc_msgSend_height(*a4, v45, v46, v47, v48, v49, v50, v51);
    v53 = *(a4 + 24) + 3;
    v54 = (v53 >> 2);
    v55.i16[3] = 1;
    v55.i16[0] = v34;
    v55.i16[1] = (v52 + 3) >> 2;
    v55.i16[2] = v53 >> 2;
    v158 = v55;
    v63 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v56, v57, v58, v59, v60, v61, v62);
    v180 = 0;
    sub_239CFDA18(*(v160 + 16), v63, &v180, v64, v65, v66, v67, v68, v158);
    *&v179[4] = 0;
    v77 = vmovn_s64(*(a4 + 120));
    LOWORD(v78) = v77.i16[0];
    WORD1(v78) = v77.i16[2];
    HIDWORD(v78) = ((*(a4 + 192) + 3) >> 2);
    v79 = vmovn_s64(*(a4 + 144));
    v80 = *(a4 + 88);
    LOWORD(v81) = v79.i16[0];
    WORD1(v81) = v79.i16[2];
    HIDWORD(v81) = ((v80 + 3) >> 2);
    v173 = v78;
    v174 = v81;
    v175 = v80;
    v82 = 65537;
    v176 = 65537;
    v178 = 0x10000;
    v157 = v84;
    v159 = v83;
    v177 = v76 * v83 * v84;
    if (v54 >= 2)
    {
      v85 = __clz(0x80000000 / v54);
      v86 = (0x80000000 / v54) >> (16 - v85);
      v87 = v85 + 15;
      v88 = -65536 * (v53 >> 2) * v86 / v54;
      if (v88 <= v86)
      {
        v89 = v86;
      }

      else
      {
        v89 = v86 + 1;
      }

      if (v88 <= v86)
      {
        LOWORD(v86) = 0;
      }

      v82 = (v87 << 48) | ((v88 - v86) << 32) | (v89 << 16) | (v53 >> 2);
    }

    v154 = vmovl_u16(v180).u64[0];
    v155 = (v180.i16[2] * v180.i16[3]);
    v156 = v76;
    *v179 = v82;
    v163 = 0;
    v162 = 0;
    v90 = vmovn_s64(*(a4 + 168));
    v165 = v90.i16[2];
    v164 = v90.i16[0];
    v166 = objc_msgSend_strideInPixelsX(a1, v69, v70, v71, v72, v73, v74, v75);
    v167 = objc_msgSend_strideInPixelsY(a1, v91, v92, v93, v94, v95, v96, v97);
    v168 = 0;
    v169 = *(a4 + 200);
    v170 = *(a4 + 24);
    v171 = *(a4 + 184);
    v172 = 1;
    objc_msgSend_setComputePipelineState_(a2, v98, PipelineStateForMPSKey, v99, v100, v101, v102, v103);
    v111 = *(a4 + 40);
    if ((*(a4 + 16) & 2) == 0)
    {
      objc_msgSend_setTexture_atIndex_(a2, v104, *(a4 + 40), v35, v107, v108, v109, v110);
LABEL_31:
      objc_msgSend_setBytes_length_atIndex_(a2, v112, &v162, 32, 1, v113, v114, v115);
      Sampler = MPSDevice::GetSampler();
      objc_msgSend_setSamplerState_atIndex_(a2, v123, Sampler, 1, v124, v125, v126, v127);
      v135 = *(a4 + 104);
      if ((*(a4 + 80) & 2) == 0)
      {
        objc_msgSend_setTexture_atIndex_(a2, v128, *(a4 + 104), 0, v131, v132, v133, v134);
LABEL_50:
        objc_msgSend_setBytes_length_atIndex_(a2, v136, &v173, 40, 0, v137, v138, v139);
        v146 = vand_s8(v154, 0xFFFF0000FFFFLL);
        *&v147 = v146.u32[0];
        *(&v147 + 1) = v146.u32[1];
        v181 = v147;
        *&v182[0] = v155;
        v161[0] = v156;
        v161[1] = v159;
        v161[2] = v157;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v148, &v181, v161, v149, v150, v151, v152);
        return 0;
      }

      v140 = objc_msgSend_count(*(a4 + 104), v128, v129, v130, v131, v132, v133, v134);
      v192 = 0u;
      v193 = 0u;
      v190 = 0u;
      v191 = 0u;
      v188 = 0u;
      v189 = 0u;
      v186 = 0u;
      v187 = 0u;
      v184 = 0u;
      v185 = 0u;
      v183 = 0u;
      v181 = 0u;
      memset(v182, 0, sizeof(v182));
      if (!v35)
      {
        goto LABEL_50;
      }

      v141 = v140;
      v142 = 0;
      while (1)
      {
        if (v141 <= v142)
        {
          v143 = 0;
          if (v35 - v142 >= 0x20)
          {
            v144 = 32;
          }

          else
          {
            v144 = v35 - v142;
          }

          v145 = v144;
          if (!v144)
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (v141 - v142 >= 0x20)
          {
            v143 = 32;
            objc_msgSend_getObjects_range_(v135, v136, &v181, v142, 32, v137, v138, v139);
          }

          else
          {
            v143 = v141 - v142;
            objc_msgSend_getObjects_range_(v135, v136, &v181, v142, v141 - v142, v137, v138, v139);
          }

          if (v35 - v142 >= 0x20)
          {
            v144 = 32;
          }

          else
          {
            v144 = v35 - v142;
          }

          v145 = v144 - v143;
          if (v144 == v143)
          {
            goto LABEL_35;
          }
        }

        bzero(&v182[-1] + 8 * v143, 8 * v145);
LABEL_35:
        objc_msgSend_setTextures_withRange_(a2, v136, &v181, v142, v144, v137, v138, v139);
        v142 += v144;
        if (v142 >= v35)
        {
          goto LABEL_50;
        }
      }
    }

    v116 = objc_msgSend_count(*(a4 + 40), v104, v105, v106, v107, v108, v109, v110);
    v192 = 0u;
    v193 = 0u;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v186 = 0u;
    v187 = 0u;
    v184 = 0u;
    v185 = 0u;
    v183 = 0u;
    v181 = 0u;
    memset(v182, 0, sizeof(v182));
    if (!v35)
    {
      goto LABEL_31;
    }

    v117 = v116;
    v118 = 0;
    while (1)
    {
      if (v117 <= v118)
      {
        v119 = 0;
        if (v35 - v118 >= 0x20)
        {
          v120 = 32;
        }

        else
        {
          v120 = v35 - v118;
        }

        v121 = v120;
        if (!v120)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (v117 - v118 >= 0x20)
        {
          v119 = 32;
          objc_msgSend_getObjects_range_(v111, v112, &v181, v118, 32, v113, v114, v115);
        }

        else
        {
          v119 = v117 - v118;
          objc_msgSend_getObjects_range_(v111, v112, &v181, v118, v117 - v118, v113, v114, v115);
        }

        if (v35 - v118 >= 0x20)
        {
          v120 = 32;
        }

        else
        {
          v120 = v35 - v118;
        }

        v121 = v120 - v119;
        if (v120 == v119)
        {
          goto LABEL_16;
        }
      }

      bzero(&v182[-1] + 8 * v119, 8 * v121);
LABEL_16:
      objc_msgSend_setTextures_withRange_(a2, v112, &v181, v118 + v35, v120, v113, v114, v115);
      v118 += v120;
      if (v118 >= v35)
      {
        goto LABEL_31;
      }
    }
  }

  return 0;
}

uint64_t sub_239CFA810(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v159 = *MEMORY[0x277D85DE8];
  if (*(a4 + 160) && *(a4 + 168))
  {
    v10 = *&a1[*MEMORY[0x277CD7350]];
    objc_msgSend_dimensionOrder(a1, a2, a3, a4, a5, a6, a7, a8);
    v12 = (v146 + 1) % 3uLL;
    objc_msgSend_dimensionOrder(a1, v13, v14, v15, v16, v17, v18, v19);
    objc_msgSend_dimensionOrder(a1, v20, v21, v22, v23, v24, v25, v26);
    v34 = v146;
    if (v12 != v144)
    {
      v34 = 2 - v146;
    }

    v35 = (v12 == v144) | (2 * v34);
    v36 = objc_msgSend_maxBatchSize(a1, v27, v28, v29, v30, v31, v32, v33);
    v37 = *(a4 + 32) & 0x3F | ((*(a4 + 88) & 0x3Fu) << 6);
    *&v146 = v36;
    *(&v146 + 1) = v37;
    *&v147[0] = v35;
    memset(v147 + 8, 0, 56);
    MPSLibrary::CreateUberShaderKey();
    PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
    MPSLibrary::ReleaseMPSKey();
    v46 = objc_msgSend_width(**(a4 + 24), v39, v40, v41, v42, v43, v44, v45, 0, 0, 0, 0, 0);
    v54 = objc_msgSend_height(**(a4 + 24), v47, v48, v49, v50, v51, v52, v53);
    v55.i64[0] = v46;
    v55.i64[1] = v54;
    *v55.i8 = vshrn_n_s64(vaddq_s64(v55, vdupq_n_s64(3uLL)), 2uLL);
    v56 = *(a4 + 130);
    v57 = (v56 + 3) >> 2;
    v55.i16[1] = v55.i16[2];
    v55.i16[2] = v57;
    v55.i16[3] = *(a4 + 8);
    v140 = *v55.i8;
    v65 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v58, v59, v60, v61, v62, v63, v64);
    v142 = 0;
    sub_239CFDA18(*(v10 + 16), v65, &v142, v66, v67, v68, v69, v70, v140);
    v139 = v79;
    v141 = v78;
    *(a4 + 70) = v77 * v78 * v79;
    if (v56 >= 5)
    {
      v81 = __clz(0x80000000 / v57);
      v82 = (0x80000000 / v57) >> (16 - v81);
      v83 = v81 + 15;
      v84 = -65536 * v57 * v82 / v57;
      if (v84 <= v82)
      {
        v85 = v82;
      }

      else
      {
        v85 = v82 + 1;
      }

      if (v84 <= v82)
      {
        LOWORD(v82) = 0;
      }

      v80 = (v83 << 48) | ((v84 - v82) << 32) | (v85 << 16) | v57;
    }

    else
    {
      v80 = 65537;
    }

    v136 = vmovl_u16(v142).u64[0];
    v137 = (v142.i16[2] * v142.i16[3]);
    v138 = v77;
    *(a4 + 76) = v80;
    objc_msgSend_setComputePipelineState_(a2, v71, PipelineStateForMPSKey, v72, v73, v74, v75, v76);
    v93 = *(a4 + 96);
    if ((*(a4 + 88) & 2) == 0)
    {
      objc_msgSend_setTexture_atIndex_(a2, v86, *(a4 + 96), v36, v89, v90, v91, v92);
LABEL_32:
      objc_msgSend_setBytes_length_atIndex_(a2, v94, a4 + 104, 32, 1, v95, v96, v97);
      Sampler = MPSDevice::GetSampler();
      objc_msgSend_setSamplerState_atIndex_(a2, v105, Sampler, 1, v106, v107, v108, v109);
      v117 = *(a4 + 40);
      if ((*(a4 + 32) & 2) == 0)
      {
        objc_msgSend_setTexture_atIndex_(a2, v110, *(a4 + 40), 0, v113, v114, v115, v116);
LABEL_51:
        objc_msgSend_setBytes_length_atIndex_(a2, v118, a4 + 48, 40, 0, v119, v120, v121);
        v128 = vand_s8(v136, 0xFFFF0000FFFFLL);
        *&v129 = v128.u32[0];
        *(&v129 + 1) = v128.u32[1];
        v146 = v129;
        *&v147[0] = v137;
        v143 = v138;
        v144 = v141;
        v145 = v139;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v130, &v146, &v143, v131, v132, v133, v134);
        return 0;
      }

      v122 = objc_msgSend_count(*(a4 + 40), v110, v111, v112, v113, v114, v115, v116);
      v157 = 0u;
      v158 = 0u;
      v155 = 0u;
      v156 = 0u;
      v153 = 0u;
      v154 = 0u;
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v148 = 0u;
      v146 = 0u;
      memset(v147, 0, sizeof(v147));
      if (!v36)
      {
        goto LABEL_51;
      }

      v123 = v122;
      v124 = 0;
      while (1)
      {
        if (v123 <= v124)
        {
          v125 = 0;
          if (v36 - v124 >= 0x20)
          {
            v126 = 32;
          }

          else
          {
            v126 = v36 - v124;
          }

          v127 = v126;
          if (!v126)
          {
            goto LABEL_36;
          }
        }

        else
        {
          if (v123 - v124 >= 0x20)
          {
            v125 = 32;
            objc_msgSend_getObjects_range_(v117, v118, &v146, v124, 32, v119, v120, v121);
          }

          else
          {
            v125 = v123 - v124;
            objc_msgSend_getObjects_range_(v117, v118, &v146, v124, v123 - v124, v119, v120, v121);
          }

          if (v36 - v124 >= 0x20)
          {
            v126 = 32;
          }

          else
          {
            v126 = v36 - v124;
          }

          v127 = v126 - v125;
          if (v126 == v125)
          {
            goto LABEL_36;
          }
        }

        bzero(&v147[-1] + 8 * v125, 8 * v127);
LABEL_36:
        objc_msgSend_setTextures_withRange_(a2, v118, &v146, v124, v126, v119, v120, v121);
        v124 += v126;
        if (v124 >= v36)
        {
          goto LABEL_51;
        }
      }
    }

    v98 = objc_msgSend_count(v93, v86, v87, v88, v89, v90, v91, v92);
    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    v148 = 0u;
    v146 = 0u;
    memset(v147, 0, sizeof(v147));
    if (!v36)
    {
      goto LABEL_32;
    }

    v99 = v98;
    v100 = 0;
    while (1)
    {
      if (v99 <= v100)
      {
        v101 = 0;
        if (v36 - v100 >= 0x20)
        {
          v102 = 32;
        }

        else
        {
          v102 = v36 - v100;
        }

        v103 = v102;
        if (!v102)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v99 - v100 >= 0x20)
        {
          v101 = 32;
          objc_msgSend_getObjects_range_(v93, v94, &v146, v100, 32, v95, v96, v97);
        }

        else
        {
          v101 = v99 - v100;
          objc_msgSend_getObjects_range_(v93, v94, &v146, v100, v99 - v100, v95, v96, v97);
        }

        if (v36 - v100 >= 0x20)
        {
          v102 = 32;
        }

        else
        {
          v102 = v36 - v100;
        }

        v103 = v102 - v101;
        if (v102 == v101)
        {
          goto LABEL_17;
        }
      }

      bzero(&v147[-1] + 8 * v101, 8 * v103);
LABEL_17:
      objc_msgSend_setTextures_withRange_(a2, v94, &v146, v100 + v36, v102, v95, v96, v97);
      v100 += v102;
      if (v100 >= v36)
      {
        goto LABEL_32;
      }
    }
  }

  return 0;
}

void *sub_239CFCE30(void *a1, char *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = objc_msgSend_count(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v13 >= a4)
  {
    v20 = a4;
  }

  else
  {
    v20 = v13;
  }

  if (!v20)
  {
    return 0;
  }

  v134 = a5;
  v21 = objc_msgSend_objectAtIndexedSubscript_(a1, v14, 0, v15, v16, v17, v18, v19);
  v29 = objc_msgSend_featureChannels(v21, v22, v23, v24, v25, v26, v27, v28);
  v37 = objc_msgSend_retainedReferences(a2, v30, v31, v32, v33, v34, v35, v36);
  v38 = objc_alloc(MEMORY[0x277CBEB18]);
  v45 = objc_msgSend_initWithCapacity_(v38, v39, v20, v40, v41, v42, v43, v44);
  if (v29 < 5)
  {
    v46 = 2;
  }

  else
  {
    v46 = 3;
  }

  context = objc_autoreleasePoolPush();
  for (i = 0; i != v20; ++i)
  {
    v54 = objc_msgSend_objectAtIndexedSubscript_(a1, v47, a3 + i, v48, v49, v50, v51, v52);
    v62 = objc_msgSend_texture(v54, v55, v56, v57, v58, v59, v60, v61);
    if (objc_msgSend_textureType(v62, v63, v64, v65, v66, v67, v68, v69) == v46)
    {
      v71 = 1;
      if (!v62)
      {
        goto LABEL_13;
      }

LABEL_12:
      objc_msgSend_setObject_atIndexedSubscript_(v45, v47, v62, i, v49, v50, v51, v52);
      goto LABEL_13;
    }

    v72 = objc_msgSend_pixelFormat(v62, v47, v70, v48, v49, v50, v51, v52);
    v74 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v62, v73, v72, v46, 0, 1, 0, 1);
    v71 = v74 == 0;
    if (v74)
    {
      v62 = v74;
    }

    if (v62)
    {
      goto LABEL_12;
    }

LABEL_13:
    if (!v71)
    {
    }
  }

  if ((v37 & 1) == 0)
  {
    v75 = v45;
    v135[0] = MEMORY[0x277D85DD0];
    v135[1] = 3221225472;
    v135[2] = sub_239CFDE1C;
    v135[3] = &unk_278B28F28;
    v135[4] = v45;
    objc_msgSend_addCompletedHandler_(a2, v76, v135, v77, v78, v79, v80, v81);
  }

  objc_autoreleasePoolPop(context);
  if (v134)
  {
    v88 = objc_msgSend_objectAtIndexedSubscript_(a1, v82, 0, v83, v84, v85, v86, v87);
    v96 = objc_msgSend_featureChannelFormat(v88, v89, v90, v91, v92, v93, v94, v95);
    v103 = objc_msgSend_objectAtIndexedSubscript_(v45, v97, 0, v98, v99, v100, v101, v102);
    v111 = objc_msgSend_textureType(v103, v104, v105, v106, v107, v108, v109, v110);
    if (v96 - 1 > 4)
    {
      v119 = 0;
    }

    else
    {
      v119 = dword_239D90E88[v96 - 1];
    }

    if (v111 == 3)
    {
      v120 = v119 + 1;
    }

    else
    {
      v120 = v119;
    }

    objc_msgSend_device(v103, v112, v113, v114, v115, v116, v117, v118);
    MPSDevice = MPSDevice::GetMPSDevice();
    v129 = objc_msgSend_pixelFormat(v103, v122, v123, v124, v125, v126, v127, v128);
    PixelInfo = MPSDevice::GetPixelInfo(MPSDevice, v129, v96);
    v131 = v120 | 4;
    if ((PixelInfo & 0x3000000) == 0)
    {
      v131 = v120;
    }

    *v134 = v131 | 2;
  }

  return v45;
}

uint64_t sub_239CFDA18(void *a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint16x4_t a9)
{
  v12 = vmax_u16(a9, 0x1000100010001);
  v44 = v12;
  if (a1)
  {
    objc_msgSend_maxThreadsPerThreadgroup(a1, a2, a3, a4, a5, a6, a7, a8);
    v12 = v44;
  }

  v13 = v12.i16[0];
  v14 = v12.u16[1];
  v15 = v12.u16[2];
  if (v12.u16[0] * v12.u16[1] * v12.u16[2] <= a2 && v12.u16[0] == 0 && v12.u16[1] == 0 && v12.u16[2] == 0)
  {
    v19 = v12;
    v20 = v12.u16[0];
    v21 = v12.u16[1];
    v22 = v12.u16[2];
    goto LABEL_54;
  }

  if (a1)
  {
    objc_msgSend_maxThreadsPerThreadgroup(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v23 = (64 - __clz(a2)) >> 1;
  if (v23 >= 0x8000000000000000)
  {
    v24 = 0x8000000000000000;
  }

  else
  {
    v24 = v23;
  }

  if (a2 >> v24)
  {
    LOWORD(v25) = 0;
  }

  else
  {
    v25 = a2 >> v24;
  }

  if (v13)
  {
    v26 = 0;
  }

  else
  {
    v26 = v13;
  }

  if (v14)
  {
    v27 = 0;
  }

  else
  {
    v27 = v14;
  }

  v28 = v25;
  if (v25)
  {
    v28 = (v25 + v13 - 1) / v25;
  }

  v12.i16[3] = v44.i16[3];
  v19.i16[2] = 1;
  v29 = 1 << v24;
  if (v24 > 0xF)
  {
    v30 = 0;
    if (v28)
    {
      goto LABEL_32;
    }

LABEL_35:
    v31 = 0;
    v19.i16[0] = v25;
    if (v30)
    {
      goto LABEL_33;
    }

    goto LABEL_36;
  }

  v30 = (v29 + v14 - 1) / v29;
  if (!v28)
  {
    goto LABEL_35;
  }

LABEL_32:
  v31 = (v28 + v13 - 1) / v28;
  v19.i16[0] = v25;
  if (v30)
  {
LABEL_33:
    v32 = (v30 + v14 - 1) / v30;
    goto LABEL_37;
  }

LABEL_36:
  v32 = 0;
LABEL_37:
  if (v31 >= v26)
  {
    v20 = v26;
  }

  else
  {
    v20 = v31;
  }

  if (v32 >= v27)
  {
    v21 = v27;
  }

  else
  {
    v21 = v32;
  }

  if (v44.u16[3] < 2u)
  {
    v22 = 0;
    v33 = a2;
    if (v32 < v27)
    {
LABEL_45:
      if (v33)
      {
        v21 += v33 / 0;
        if (v21 >= v27)
        {
          v21 = v27;
        }

        v33 = a2;
      }
    }
  }

  else
  {
    v22 = 0;
    v33 = a2;
    if (v32 < v27)
    {
      goto LABEL_45;
    }
  }

  v19.i16[1] = v29;
  if (v31 < v26)
  {
    if (v33)
    {
      v20 += v33 / 0;
      if (v20 >= v26)
      {
        v20 = v26;
      }
    }
  }

LABEL_54:
  if (v19.i16[0])
  {
    v34 = (v19.u16[0] + v13 - 1) / v19.u16[0];
    LOWORD(v35) = v34;
    v36 = v19.u16[1];
    if (v19.i16[1])
    {
      goto LABEL_56;
    }
  }

  else
  {
    LOWORD(v34) = 0;
    LOWORD(v35) = 0;
    v36 = v19.u16[1];
    if (v19.i16[1])
    {
LABEL_56:
      v37 = (v36 + v14 - 1) / v36;
      WORD1(v35) = v37;
      v38 = v19.u16[2];
      if (v19.i16[2])
      {
        goto LABEL_57;
      }

      goto LABEL_62;
    }
  }

  LOWORD(v37) = 0;
  WORD1(v35) = 0;
  v38 = v19.u16[2];
  if (v19.i16[2])
  {
LABEL_57:
    v39 = (v15 + v38 - 1) / v38;
    WORD2(v35) = v39;
    if (v20)
    {
      goto LABEL_58;
    }

LABEL_63:
    LOWORD(v40) = 0;
    HIWORD(v35) = v12.i16[3];
    if (v21)
    {
      goto LABEL_59;
    }

    goto LABEL_64;
  }

LABEL_62:
  LOWORD(v39) = 0;
  WORD2(v35) = 0;
  if (!v20)
  {
    goto LABEL_63;
  }

LABEL_58:
  v40 = (v20 + v13 - 1) / v20;
  HIWORD(v35) = v12.i16[3];
  if (v21)
  {
LABEL_59:
    v41 = (v21 + v14 - 1) / v21;
    goto LABEL_65;
  }

LABEL_64:
  LOWORD(v41) = 0;
LABEL_65:
  v42 = (v15 + v22 - 1) / v22;
  result = v42;
  if (v41 * v40 * v42 < v37 * v34 * v39)
  {
    LOWORD(v35) = v40;
    WORD1(v35) = v41;
    WORD2(v35) = v42;
    HIWORD(v35) = v12.i16[3];
  }

  if (a3)
  {
    *a3 = v35;
  }

  return result;
}

void *sub_239CFF314(void *result, void *a2, uint64_t a3)
{
  v5 = result;
  v6 = a2;
  while (1)
  {
    v6 = *v6;
    if (!v6)
    {
      break;
    }

    if (v6[1] == a3)
    {
      return result;
    }
  }

  v7 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
  if (v7)
  {
    *v7 = *a2;
    *a2 = v7;
    v7[1] = a3;
  }

  result = objc_msgSend_count(*(a3 + 8), v8, v9, v10, v11, v12, v13, v14);
  if (result)
  {
    v21 = result;
    v22 = 0;
    result = objc_msgSend_objectAtIndexedSubscript_(*(a3 + 8), v15, 0, v16, v17, v18, v19, v20);
    while (2)
    {
      v29 = result;
      v30 = v5;
      while (1)
      {
        v30 = *v30;
        if (!v30)
        {
          break;
        }

        if (v30[1] == result)
        {
          ++v30[2];
          goto LABEL_9;
        }
      }

      result = malloc_type_malloc(0x20uLL, 0x10A0040F80CF474uLL);
      if (result)
      {
        *result = *v5;
        result[1] = v29;
        result[2] = 1;
        result[3] = 0;
        *v5 = result;
      }

      if ((*(v29 + 50) & 1) == 0)
      {
        if (v29[2])
        {
          result = sub_239CFF314(v5, a2);
        }
      }

LABEL_9:
      if (++v22 != v21)
      {
        result = objc_msgSend_objectAtIndexedSubscript_(*(a3 + 8), v23, v22, v24, v25, v26, v27, v28);
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_239CFF44C(void **a1, void *a2, void **a3, uint64_t a4, uint64_t a5, void *a6)
{
  v84[2] = *MEMORY[0x277D85DE8];
  v10 = a2;
  while (1)
  {
    v10 = *v10;
    if (!v10)
    {
      break;
    }

    if (v10[1] == a3)
    {
      return;
    }
  }

  v11 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
  if (v11)
  {
    *v11 = *a2;
    *a2 = v11;
    v11[1] = a3;
  }

  v83 = objc_msgSend_gradientFiltersWithSource_(a3, v12, a4, v13, v14, v15, v16, v17, a2);
  v82 = objc_msgSend_count(v83, v18, v19, v20, v21, v22, v23, v24);
  if (v82)
  {
    v31 = 0;
    v81 = a5;
    v79 = a4;
    for (i = objc_msgSend_objectAtIndexedSubscript_(v83, v25, 0, v26, v27, v28, v29, v30); ; i = objc_msgSend_objectAtIndexedSubscript_(v83, v48, v31, v49, v50, v51, v52, v53))
    {
      v39 = i;
      v40 = objc_msgSend_objectAtIndexedSubscript_(a3[1], v33, v31, v34, v35, v36, v37, v38);
      v54 = objc_msgSend_resultImage(v39, v41, v42, v43, v44, v45, v46, v47);
      if (a5)
      {
        (*(a5 + 16))(a5, v39, a3, v40, a4);
      }

      v55 = 0;
      v56 = a1;
      do
      {
        v57 = v55;
        v55 = *v56;
        if (!*v56)
        {
          goto LABEL_24;
        }

        v56 = *v56;
      }

      while (v55[1] != v40);
      v58 = a1;
      v60 = v55[2];
      v59 = v55[3];
      v55[2] = v60 - 1;
      if (!v59)
      {
        goto LABEL_10;
      }

      v84[0] = v59;
      v84[1] = v54;
      v61 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v48, v84, 2, v50, v51, v52, v53);
      v68 = objc_msgSend_nodeWithSources_(MPSNNAdditionNode, v62, v61, v63, v64, v65, v66, v67);
      v54 = objc_msgSend_resultImage(v68, v69, v70, v71, v72, v73, v74, v75);
      if (v60 > 1)
      {
        break;
      }

      a1 = v58;
      if (v57)
      {
        v76 = v57;
      }

      else
      {
        v76 = v58;
      }

      *v76 = *v55;
      free(v55);
      a4 = v79;
      a5 = v81;
LABEL_24:
      if (v54)
      {
        if (*(v40 + 16) && *(v40 + 50) != 1)
        {
          sub_239CFF44C(a1, v78);
        }

        else
        {
          objc_msgSend_addObject_(a6, v48, v39, v49, v50, v51, v52, v53);
        }
      }

LABEL_11:
      if (++v31 == v82)
      {
        return;
      }
    }

    a4 = v79;
LABEL_10:
    a1 = v58;
    v55[3] = v54;
    a5 = v81;
    goto LABEL_11;
  }
}