void sub_240BA5930(void *a1, void *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    for (i = 0; i < a3; i += 4)
    {
      v10 = 0;
      v11 = (a1[1] + v8);
      v12 = 4 * *a1;
      do
      {
        a4[v10++] = *v11;
        v11 = (v11 + v12);
      }

      while (v10 != 8);
      sub_240B41928(a4, a4 + 8);
      v13 = 0;
      v14.i64[0] = 0x3E0000003E000000;
      v14.i64[1] = 0x3E0000003E000000;
      do
      {
        *(a2[1] + 4 * *a2 * v13 + 4 * i) = vmulq_f32(a4[v13], v14);
        ++v13;
      }

      while (v13 != 8);
      v8 += 16;
    }
  }
}

void sub_240BA59F0(void *a1, void *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    v9 = 0;
    v14 = vdupq_n_s32(0x3D800000u);
    do
    {
      v10 = 0;
      v11 = (a1[1] + v8);
      v12 = 4 * *a1;
      do
      {
        a4[v10++] = *v11;
        v11 = (v11 + v12);
      }

      while (v10 != 16);
      sub_240B417F4(a4, a4 + 16);
      for (i = 0; i != 16; ++i)
      {
        *(a2[1] + 4 * *a2 * i + 4 * v9) = vmulq_f32(a4[i], v14);
      }

      v9 += 4;
      v8 += 16;
    }

    while (v9 < a3);
  }
}

void *sub_240BA5AC4(void *result, void *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v4 = 0;
    v5 = 0;
    v6 = vdupq_n_s32(0x3F0A8BD4u);
    v7 = vdupq_n_s32(0x3FA73D75u);
    v8 = vdupq_n_s32(0x3FB504F3u);
    __asm { FMOV            V3.4S, #0.25 }

    do
    {
      v14 = 0;
      v15 = (result[1] + v4);
      v16 = 4 * *result;
      do
      {
        a4[v14++] = *v15;
        v15 = (v15 + v16);
      }

      while (v14 != 4);
      v17 = 0;
      v18 = *a4;
      v19 = a4[1];
      v21 = a4[2];
      v20 = a4[3];
      v22 = vaddq_f32(*a4, v20);
      v23 = vaddq_f32(v19, v21);
      v24 = vaddq_f32(v22, v23);
      v25 = vsubq_f32(v22, v23);
      a4[4] = v24;
      a4[5] = v25;
      v26 = vmulq_f32(vsubq_f32(v18, v20), v6);
      v27 = vmulq_f32(vsubq_f32(v19, v21), v7);
      v28 = vaddq_f32(v26, v27);
      v29 = vsubq_f32(v26, v27);
      a4[7] = v29;
      a4[2] = v25;
      a4[3] = v29;
      v30 = vmlaq_f32(v29, v8, v28);
      a4[6] = v30;
      *a4 = v24;
      a4[1] = v30;
      do
      {
        *(a2[1] + 4 * *a2 * v17 + 4 * v5) = vmulq_f32(a4[v17], _Q3);
        ++v17;
      }

      while (v17 != 4);
      v5 += 4;
      v4 += 16;
    }

    while (v5 < a3);
  }

  return result;
}

void sub_240BA5BA8(uint64_t *a1, uint64_t *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    v9 = 0;
    v10 = a4 + 16;
    v32 = a4 + 31;
    v31 = vdupq_n_s32(0x3FB504F3u);
    do
    {
      v11 = 0;
      v13 = *a1;
      v12 = a1[1];
      v14 = *a2;
      v15 = a2[1];
      v16 = (v12 + v8);
      v17 = 8 * *a1;
      do
      {
        a4[v11++] = *v16;
        v16 = (v16 + v17);
      }

      while (v11 != 16);
      v18 = v12 + 4 * v13;
      for (i = 16; i != 32; ++i)
      {
        a4[i] = *(v18 + v8);
        v18 += v17;
      }

      sub_240B3FFF4(a4, 4, a4, 4, a4 + 32);
      v20 = -15;
      v21 = v32;
      v22 = v32;
      do
      {
        v23 = v22[-1];
        --v22;
        *v21 = vaddq_f32(*v21, v23);
        v21 = v22;
      }

      while (!__CFADD__(v20++, 1));
      *v10 = vmulq_f32(*v10, v31);
      sub_240B3FFF4(v10, 4, v10, 4, a4 + 32);
      v26 = 0;
      v27 = v15 + 124 * v14;
      v28 = v10;
      do
      {
        v25.f32[0] = dword_240C83FEC[v26];
        v29 = v28[-16];
        v30 = *v28++;
        *(v15 + v8) = vmlaq_n_f32(v29, v30, v25.f32[0]);
        *(v27 + v8) = vmlsq_lane_f32(v29, v30, v25, 0);
        ++v26;
        v27 -= 4 * v14;
        v15 += 4 * v14;
      }

      while (v26 != 16);
      v9 += 4;
      v8 += 16;
    }

    while (v9 < a3);
  }
}

void sub_240BA5D40(uint64_t *a1, uint64_t *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    for (i = 0; i < a3; i += 4)
    {
      sub_240B3FFF4((a1[1] + v8), *a1, (a2[1] + v8), *a2, a4);
      v8 += 16;
    }
  }
}

void sub_240BA5DB4(uint64_t *a1, uint64_t *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    for (i = 0; i < a3; i += 4)
    {
      sub_240B3F3A8((a1[1] + v8), *a1, (a2[1] + v8), *a2, a4);
      v8 += 16;
    }
  }
}

void sub_240BA5E28(uint64_t *a1, uint64_t *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    for (i = 0; i < a3; i += 4)
    {
      sub_240B40454((a1[1] + v8), *a1, a2[1] + v8, *a2, a4);
      v8 += 16;
    }
  }
}

float sub_240BA8880(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 56))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = (&v11 + v5);
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
      sub_240B2BA38(&v11 + v5, *(a4 + v5), *(a4 + v5 + 8), (*(a4 + v5 + 8) - *(a4 + v5)) >> 2);
      ++v6;
      v5 += 24;
    }

    while (v5 != 72);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    sub_240B86FB8(&v12, *(a4 + 72), *(a4 + 80), (*(a4 + 80) - *(a4 + 72)) >> 2);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    sub_240B28D90(&v15, *(a4 + 96), *(a4 + 104), *(a4 + 104) - *(a4 + 96));
    v18 = *(a4 + 120);
    sub_240B51508(&v15, byte_240C84890, &byte_240C84890[39], 0x27uLL);
    LODWORD(result) = 2;
    v18 = xmmword_240C11890;
    if (v15)
    {
      v16 = v15;
      operator delete(v15);
    }

    if (v12)
    {
      v13 = v12;
      operator delete(v12);
    }

    for (i = 0; i != -72; i -= 24)
    {
      v10 = *(&v11 + i + 48);
      if (v10)
      {
        *(&v11 + i + 56) = v10;
        operator delete(v10);
      }
    }
  }

  else if (*(a1 + 48) <= 6)
  {
    result = *a1;
    if (a2[1] * *a2 >= vcvts_n_u32_f32(*a1, 0xAuLL))
    {
      operator new();
    }
  }

  return result;
}

void sub_240BA9170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  MEMORY[0x245CCE590](v22, 0x1000C40DDE5C641);
  _Unwind_Resume(a1);
}

unint64_t sub_240BA9284(unint64_t result, unsigned __int8 *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = a2 - 1;
  v11 = v9;
  while (1)
  {
    v9 = v11;
    v12 = a2 - v11;
    if (a2 - v11 <= 2)
    {
      if ((a2 - v11) < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v99 = *v10;
        v100 = *v11;
        if (*(**a3 + 8 * v99) > *(**a3 + 8 * v100))
        {
          *v11 = v99;
          *v10 = v100;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v108 = v11 + 1;
      v109 = v11[1];
      v110 = v11 + 2;
      v111 = v11[2];
      v112 = **a3;
      v113 = *(v112 + 8 * v109);
      v114 = *v11;
      v115 = *(v112 + 8 * v111);
      if (v113 <= *(v112 + 8 * v114))
      {
        if (v115 > v113)
        {
          *v108 = v111;
          *v110 = v109;
          v112 = **a3;
          v116 = v11;
          v117 = v11 + 1;
          result = v109;
          v167 = v109;
          if (*(v112 + 8 * v111) > *(v112 + 8 * v114))
          {
            goto LABEL_184;
          }

LABEL_186:
          v173 = *v10;
          if (*(v112 + 8 * v173) > *(v112 + 8 * v109))
          {
            *v110 = v173;
            *v10 = v167;
            v174 = *v110;
            v175 = *v108;
            if (*(**a3 + 8 * v174) > *(**a3 + 8 * v175))
            {
              v11[1] = v174;
              v11[2] = v175;
              v176 = *v11;
              if (*(**a3 + 8 * v174) > *(**a3 + 8 * v176))
              {
                *v11 = v174;
                v11[1] = v176;
              }
            }
          }

          return result;
        }
      }

      else
      {
        if (v115 > v113)
        {
          v116 = v11;
          v117 = v11 + 2;
          v109 = *v11;
          result = v109;
          goto LABEL_184;
        }

        *v11 = v109;
        v11[1] = v114;
        v112 = **a3;
        v116 = v11 + 1;
        v117 = v11 + 2;
        v109 = v114;
        result = v114;
        if (*(v112 + 8 * v111) > *(v112 + 8 * v114))
        {
LABEL_184:
          *v116 = v111;
          *v117 = v114;
          v112 = **a3;
          v167 = result;
          goto LABEL_186;
        }
      }

      v109 = v111;
      v167 = v111;
      goto LABEL_186;
    }

    if (v12 == 5)
    {

      return sub_240BA9E14(v11, v11 + 1, v11 + 2, v11 + 3, a2 - 1, a3);
    }

LABEL_10:
    if (v12 <= 23)
    {
      v118 = v11 + 1;
      v120 = v11 == a2 || v118 == a2;
      if (a5)
      {
        if (!v120)
        {
          v121 = *a3;
          v122 = 1;
          v123 = v11;
          do
          {
            v124 = v123[1];
            v125 = *v123;
            v123 = v118;
            if (*(*v121 + 8 * v124) > *(*v121 + 8 * v125))
            {
              v126 = v122;
              LOBYTE(v127) = v125;
              while (1)
              {
                v11[v126] = v127;
                v128 = v126 - 1;
                if (v126 == 1)
                {
                  break;
                }

                v127 = v11[v126-- - 2];
                if (*(**a3 + 8 * v124) <= *(**a3 + 8 * v127))
                {
                  v129 = &v11[v128];
                  goto LABEL_127;
                }
              }

              v129 = v11;
LABEL_127:
              *v129 = v124;
              v121 = *a3;
            }

            v118 = v123 + 1;
            ++v122;
          }

          while (v123 + 1 != a2);
        }
      }

      else if (!v120)
      {
        v168 = *a3;
        do
        {
          v169 = v9[1];
          v170 = *v9;
          v9 = v118;
          if (*(*v168 + 8 * v169) > *(*v168 + 8 * v170))
          {
            v171 = v118;
            LOBYTE(v118) = v170;
            do
            {
              *v171 = v118;
              v118 = *(v171 - 2);
              --v171;
            }

            while (*(**a3 + 8 * v169) > *(**a3 + 8 * v118));
            *v171 = v169;
            v168 = *a3;
          }

          v118 = v9 + 1;
        }

        while (v9 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v11 != a2)
      {
        v130 = (a2 - v11 - 2) >> 1;
        v131 = v130;
        do
        {
          v132 = v131;
          if (v130 >= v131)
          {
            v133 = (2 * v131) | 1;
            v134 = &v11[v133];
            v135 = v11[v133];
            if (2 * v132 + 2 >= v12)
            {
              v136 = **a3;
            }

            else
            {
              v136 = **a3;
              result = *(v136 + 8 * v135);
              if (result > *(v136 + 8 * v134[1]))
              {
                LODWORD(v135) = *++v134;
                v133 = 2 * v132 + 2;
              }
            }

            v137 = &v11[v132];
            v138 = v11[v132];
            if (*(v136 + 8 * v135) <= *(v136 + 8 * v138))
            {
              do
              {
                v139 = v134;
                *v137 = v135;
                if (v130 < v133)
                {
                  break;
                }

                v140 = (2 * v133) | 1;
                v134 = &v11[v140];
                v133 = 2 * v133 + 2;
                v135 = v11[v140];
                if (v133 >= v12)
                {
                  v141 = **a3;
                  v133 = v140;
                }

                else
                {
                  v141 = **a3;
                  if (*(v141 + 8 * v135) <= *(v141 + 8 * v134[1]))
                  {
                    v133 = v140;
                  }

                  else
                  {
                    LODWORD(v135) = *++v134;
                  }
                }

                result = *(v141 + 8 * v135);
                v137 = v139;
              }

              while (result <= *(v141 + 8 * v138));
              *v139 = v138;
            }
          }

          v131 = v132 - 1;
        }

        while (v132);
        do
        {
          v142 = 0;
          v143 = *v11;
          v144 = v11;
          do
          {
            v145 = &v144[v142];
            v146 = &v144[v142 + 1];
            v147 = *v146;
            v148 = (2 * v142) | 1;
            v142 = 2 * v142 + 2;
            if (v142 >= v12)
            {
              v142 = v148;
            }

            else
            {
              v151 = v145[2];
              v149 = v145 + 2;
              v150 = v151;
              v152 = **a3;
              v153 = *(v152 + 8 * v147);
              result = *(v152 + 8 * v151);
              if (v153 <= result)
              {
                v142 = v148;
              }

              else
              {
                LOBYTE(v147) = v150;
                v146 = v149;
              }
            }

            *v144 = v147;
            v144 = v146;
          }

          while (v142 <= ((v12 - 2) >> 1));
          if (v146 == --a2)
          {
            *v146 = v143;
          }

          else
          {
            *v146 = *a2;
            *a2 = v143;
            v154 = v146 - v11 - 1;
            if (v146 - v11 + 1 >= 2)
            {
              v155 = &v11[v154 >> 1];
              v156 = *v155;
              v157 = *v146;
              if (*(**a3 + 8 * v156) > *(**a3 + 8 * v157))
              {
                v158 = v154 >> 1;
                do
                {
                  v159 = v155;
                  *v146 = v156;
                  if (!v158)
                  {
                    break;
                  }

                  v160 = v158 - 1;
                  v158 = (v158 - 1) >> 1;
                  v155 = &v11[v160 >> 1];
                  v156 = *v155;
                  v161 = **a3;
                  v162 = *(v161 + 8 * v156);
                  v163 = *(v161 + 8 * v157);
                  v146 = v159;
                }

                while (v162 > v163);
                *v159 = v157;
              }
            }
          }
        }

        while (v12-- > 2);
      }

      return result;
    }

    v13 = &v11[v12 >> 1];
    v14 = **a3;
    v15 = *v10;
    v16 = *(v14 + 8 * v15);
    if (v12 >= 0x81)
    {
      v17 = *v13;
      v18 = *v11;
      v19 = *(v14 + 8 * v17);
      if (v19 <= *(v14 + 8 * v18))
      {
        if (v16 > v19)
        {
          *v13 = v15;
          *v10 = v17;
          v23 = *v13;
          v24 = *v11;
          if (*(**a3 + 8 * v23) > *(**a3 + 8 * v24))
          {
            *v11 = v23;
            *v13 = v24;
          }
        }
      }

      else
      {
        if (v16 > v19)
        {
          *v11 = v15;
          goto LABEL_27;
        }

        *v11 = v17;
        *v13 = v18;
        v27 = *v10;
        if (*(**a3 + 8 * v27) > *(**a3 + 8 * v18))
        {
          *v13 = v27;
LABEL_27:
          *v10 = v18;
        }
      }

      v28 = v12 >> 1;
      v29 = &v11[v12 >> 1];
      v32 = *(v29 - 1);
      v30 = v29 - 1;
      v31 = v32;
      v33 = v11[1];
      v34 = **a3;
      v35 = *(v34 + 8 * v32);
      v36 = *(v34 + 8 * v33);
      v37 = *(a2 - 2);
      v38 = *(v34 + 8 * v37);
      if (v35 <= v36)
      {
        if (v38 > v35)
        {
          *v30 = v37;
          *(a2 - 2) = v31;
          v39 = *v30;
          v40 = v11[1];
          if (*(**a3 + 8 * v39) > *(**a3 + 8 * v40))
          {
            v11[1] = v39;
            *v30 = v40;
          }
        }
      }

      else
      {
        if (v38 > v35)
        {
          v11[1] = v37;
          goto LABEL_39;
        }

        v11[1] = v31;
        *v30 = v33;
        v42 = *(a2 - 2);
        if (*(**a3 + 8 * v42) > *(**a3 + 8 * v33))
        {
          *v30 = v42;
LABEL_39:
          *(a2 - 2) = v33;
        }
      }

      v43 = &v11[v28];
      v46 = v43[1];
      v44 = v43 + 1;
      v45 = v46;
      v47 = v11[2];
      v48 = **a3;
      v49 = *(v48 + 8 * v46);
      v50 = *(v48 + 8 * v47);
      v51 = *(a2 - 3);
      v52 = *(v48 + 8 * v51);
      if (v49 <= v50)
      {
        if (v52 > v49)
        {
          *v44 = v51;
          *(a2 - 3) = v45;
          v53 = *v44;
          v54 = v11[2];
          if (*(**a3 + 8 * v53) > *(**a3 + 8 * v54))
          {
            v11[2] = v53;
            *v44 = v54;
          }
        }
      }

      else
      {
        if (v52 > v49)
        {
          v11[2] = v51;
          goto LABEL_48;
        }

        v11[2] = v45;
        *v44 = v47;
        v55 = *(a2 - 3);
        if (*(**a3 + 8 * v55) > *(**a3 + 8 * v47))
        {
          *v44 = v55;
LABEL_48:
          *(a2 - 3) = v47;
        }
      }

      v56 = *v13;
      v57 = *v30;
      v58 = **a3;
      v59 = *(v58 + 8 * v56);
      v60 = *(v58 + 8 * v57);
      v61 = *v44;
      v62 = *(v58 + 8 * v61);
      if (v59 <= v60)
      {
        if (v62 <= v59)
        {
          goto LABEL_56;
        }

        *v13 = v61;
        *v44 = v56;
        v66 = **a3;
        v67 = *(v66 + 8 * v61);
        v68 = *(v66 + 8 * v57);
        v44 = v13;
        LOBYTE(v56) = v57;
        if (v67 <= v68)
        {
          LOBYTE(v56) = v61;
          goto LABEL_56;
        }
      }

      else if (v62 <= v59)
      {
        *v30 = v56;
        *v13 = v57;
        v63 = **a3;
        v64 = *(v63 + 8 * v61);
        v65 = *(v63 + 8 * v57);
        v30 = v13;
        LOBYTE(v56) = v61;
        if (v64 <= v65)
        {
          LOBYTE(v56) = v57;
LABEL_56:
          v69 = *v11;
          *v11 = v56;
          *v13 = v69;
          goto LABEL_57;
        }
      }

      *v30 = v61;
      *v44 = v57;
      goto LABEL_56;
    }

    v20 = *v11;
    v21 = *v13;
    v22 = *(v14 + 8 * v20);
    if (v22 <= *(v14 + 8 * v21))
    {
      if (v16 > v22)
      {
        *v11 = v15;
        *v10 = v20;
        v25 = *v11;
        v26 = *v13;
        if (*(**a3 + 8 * v25) > *(**a3 + 8 * v26))
        {
          *v13 = v25;
          *v11 = v26;
        }
      }

      goto LABEL_57;
    }

    if (v16 > v22)
    {
      *v13 = v15;
LABEL_36:
      *v10 = v21;
      goto LABEL_57;
    }

    *v13 = v20;
    *v11 = v21;
    v41 = *v10;
    if (*(**a3 + 8 * v41) > *(**a3 + 8 * v21))
    {
      *v11 = v41;
      goto LABEL_36;
    }

LABEL_57:
    --a4;
    v70 = *v11;
    v71 = **a3;
    if (a5)
    {
      v72 = *(v71 + 8 * v70);
LABEL_60:
      v73 = v11;
      do
      {
        v74 = v73;
        v76 = *++v73;
        v75 = v76;
      }

      while (*(v71 + 8 * v76) > v72);
      v77 = a2;
      if (v74 == v11)
      {
        v77 = a2;
        do
        {
          if (v73 >= v77)
          {
            break;
          }

          v79 = *--v77;
        }

        while (*(v71 + 8 * v79) <= v72);
      }

      else
      {
        do
        {
          v78 = *--v77;
        }

        while (*(v71 + 8 * v78) <= v72);
      }

      if (v73 < v77)
      {
        v80 = *v77;
        v81 = v73;
        v82 = v77;
        do
        {
          *v81 = v80;
          *v82 = v75;
          v83 = **a3;
          v84 = *(v83 + 8 * v70);
          do
          {
            v74 = v81;
            v85 = *++v81;
            v75 = v85;
          }

          while (*(v83 + 8 * v85) > v84);
          do
          {
            v86 = *--v82;
            v80 = v86;
          }

          while (*(v83 + 8 * v86) <= v84);
        }

        while (v81 < v82);
      }

      if (v74 != v11)
      {
        *v11 = *v74;
      }

      *v74 = v70;
      if (v73 < v77)
      {
        goto LABEL_79;
      }

      v87 = sub_240BA9FF0(v11, v74, a3);
      v11 = v74 + 1;
      result = sub_240BA9FF0(v74 + 1, a2, a3);
      if (result)
      {
        a2 = v74;
        if (!v87)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v87)
      {
LABEL_79:
        result = sub_240BA9284(v9, v74, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v74 + 1;
      }
    }

    else
    {
      v72 = *(v71 + 8 * v70);
      if (*(v71 + 8 * *(v11 - 1)) > v72)
      {
        goto LABEL_60;
      }

      if (v72 <= *(v71 + 8 * *v10))
      {
        v89 = v11 + 1;
        do
        {
          v11 = v89;
          if (v89 >= a2)
          {
            break;
          }

          ++v89;
        }

        while (v72 <= *(v71 + 8 * *v11));
      }

      else
      {
        do
        {
          v88 = *++v11;
        }

        while (v72 <= *(v71 + 8 * v88));
      }

      v90 = a2;
      if (v11 < a2)
      {
        v90 = a2;
        do
        {
          v91 = *--v90;
        }

        while (v72 > *(v71 + 8 * v91));
      }

      if (v11 < v90)
      {
        v92 = *v11;
        v93 = *v90;
        do
        {
          *v11 = v93;
          *v90 = v92;
          v94 = **a3;
          v95 = *(v94 + 8 * v70);
          do
          {
            v96 = *++v11;
            v92 = v96;
          }

          while (v95 <= *(v94 + 8 * v96));
          do
          {
            v97 = *--v90;
            v93 = v97;
          }

          while (v95 > *(v94 + 8 * v97));
        }

        while (v11 < v90);
      }

      v98 = v11 - 1;
      if (v11 - 1 != v9)
      {
        *v9 = *v98;
      }

      a5 = 0;
      *v98 = v70;
    }
  }

  v101 = v11[1];
  v102 = *v11;
  v103 = **a3;
  v104 = *(v103 + 8 * v101);
  v105 = *(v103 + 8 * v102);
  v106 = *v10;
  v107 = *(v103 + 8 * v106);
  if (v104 <= v105)
  {
    if (v107 > v104)
    {
      v11[1] = v106;
      *v10 = v101;
      v165 = v11[1];
      v166 = *v11;
      if (*(**a3 + 8 * v165) > *(**a3 + 8 * v166))
      {
        *v11 = v165;
        v11[1] = v166;
      }
    }
  }

  else
  {
    if (v107 <= v104)
    {
      *v11 = v101;
      v11[1] = v102;
      v172 = *v10;
      if (*(**a3 + 8 * v172) <= *(**a3 + 8 * v102))
      {
        return result;
      }

      v11[1] = v172;
    }

    else
    {
      *v11 = v106;
    }

    *v10 = v102;
  }

  return result;
}

_BYTE *sub_240BA9E14(_BYTE *result, char *a2, char *a3, _BYTE *a4, _BYTE *a5, uint64_t **a6)
{
  v6 = *a2;
  v7 = *a2;
  v8 = *result;
  v9 = **a6;
  v10 = *(v9 + 8 * v6);
  v11 = *(v9 + 8 * v8);
  v12 = *a3;
  v13 = *(v9 + 8 * v12);
  if (v10 > v11)
  {
    if (v13 > v10)
    {
      *result = v12;
LABEL_9:
      *a3 = v8;
      v6 = v8;
      v7 = v8;
      goto LABEL_12;
    }

    *result = v6;
    *a2 = v8;
    v6 = *a3;
    if (*(**a6 + 8 * v6) > *(**a6 + 8 * v8))
    {
      *a2 = v6;
      goto LABEL_9;
    }

LABEL_11:
    v7 = v6;
    goto LABEL_12;
  }

  if (v13 <= v10)
  {
    v6 = *a3;
    v7 = *a3;
    goto LABEL_12;
  }

  *a2 = v12;
  *a3 = v6;
  v14 = *a2;
  v15 = *result;
  if (*(**a6 + 8 * v14) > *(**a6 + 8 * v15))
  {
    *result = v14;
    *a2 = v15;
    v6 = *a3;
    goto LABEL_11;
  }

LABEL_12:
  v16 = *a4;
  v17 = **a6;
  if (*(v17 + 8 * v16) > *(v17 + 8 * v6))
  {
    *a3 = v16;
    *a4 = v7;
    v18 = *a3;
    v19 = *a2;
    v17 = **a6;
    if (*(v17 + 8 * v18) > *(v17 + 8 * v19))
    {
      *a2 = v18;
      *a3 = v19;
      v20 = *a2;
      v21 = *result;
      v17 = **a6;
      if (*(v17 + 8 * v20) > *(v17 + 8 * v21))
      {
        *result = v20;
        *a2 = v21;
        v17 = **a6;
      }
    }
  }

  v22 = *a5;
  v23 = *a4;
  if (*(v17 + 8 * v22) > *(v17 + 8 * v23))
  {
    *a4 = v22;
    *a5 = v23;
    v24 = *a4;
    v25 = *a3;
    if (*(**a6 + 8 * v24) > *(**a6 + 8 * v25))
    {
      *a3 = v24;
      *a4 = v25;
      v26 = *a3;
      v27 = *a2;
      if (*(**a6 + 8 * v26) > *(**a6 + 8 * v27))
      {
        *a2 = v26;
        *a3 = v27;
        v28 = *a2;
        v29 = *result;
        if (*(**a6 + 8 * v28) > *(**a6 + 8 * v29))
        {
          *result = v28;
          *a2 = v29;
        }
      }
    }
  }

  return result;
}

BOOL sub_240BA9FF0(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t **a3)
{
  v4 = a2 - a1;
  if (a2 - a1 > 2)
  {
    if (v4 == 3)
    {
      v7 = a1[1];
      v8 = *a1;
      v9 = **a3;
      v10 = *(v9 + 8 * v7);
      v11 = *(v9 + 8 * v8);
      v12 = *(a2 - 1);
      v13 = *(v9 + 8 * v12);
      if (v10 <= v11)
      {
        if (v13 > v10)
        {
          a1[1] = v12;
          *(a2 - 1) = v7;
          v37 = a1[1];
          v38 = *a1;
          if (*(**a3 + 8 * v37) > *(**a3 + 8 * v38))
          {
            *a1 = v37;
            a1[1] = v38;
          }
        }

        return 1;
      }

      if (v13 <= v10)
      {
        *a1 = v7;
        a1[1] = v8;
        v54 = *(a2 - 1);
        if (*(**a3 + 8 * v54) <= *(**a3 + 8 * v8))
        {
          return 1;
        }

        a1[1] = v54;
      }

      else
      {
        *a1 = v12;
      }

      *(a2 - 1) = v8;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 != 5)
      {
        goto LABEL_13;
      }

      sub_240BA9E14(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v26 = a1 + 1;
    v27 = a1[1];
    v28 = a1 + 2;
    v29 = a1[2];
    v30 = **a3;
    v31 = *(v30 + 8 * v27);
    v32 = *a1;
    v33 = *(v30 + 8 * v29);
    if (v31 <= *(v30 + 8 * v32))
    {
      if (v33 > v31)
      {
        *v26 = v29;
        *v28 = v27;
        v30 = **a3;
        v34 = a1;
        v35 = a1 + 1;
        v36 = v27;
        v53 = v27;
        if (*(v30 + 8 * v29) <= *(v30 + 8 * v32))
        {
          goto LABEL_47;
        }

        goto LABEL_45;
      }
    }

    else
    {
      if (v33 > v31)
      {
        v34 = a1;
        v35 = a1 + 2;
        v27 = *a1;
        v36 = *a1;
LABEL_45:
        *v34 = v29;
        *v35 = v32;
        v30 = **a3;
        v53 = v36;
LABEL_47:
        v55 = *(a2 - 1);
        if (*(v30 + 8 * v55) > *(v30 + 8 * v27))
        {
          *v28 = v55;
          *(a2 - 1) = v53;
          v56 = *v28;
          v57 = *v26;
          if (*(**a3 + 8 * v56) > *(**a3 + 8 * v57))
          {
            a1[1] = v56;
            a1[2] = v57;
            v58 = *a1;
            if (*(**a3 + 8 * v56) > *(**a3 + 8 * v58))
            {
              *a1 = v56;
              a1[1] = v58;
            }
          }
        }

        return 1;
      }

      *a1 = v27;
      a1[1] = v32;
      v30 = **a3;
      v34 = a1 + 1;
      v35 = a1 + 2;
      v27 = v32;
      v36 = v32;
      if (*(v30 + 8 * v29) > *(v30 + 8 * v32))
      {
        goto LABEL_45;
      }
    }

    v27 = v29;
    v53 = v29;
    goto LABEL_47;
  }

  if ((a2 - a1) < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *a1;
    if (*(**a3 + 8 * v5) > *(**a3 + 8 * v6))
    {
      *a1 = v5;
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_13:
  v15 = a1 + 2;
  v14 = a1[2];
  v16 = a1[1];
  v17 = **a3;
  v18 = *(v17 + 8 * v16);
  v19 = *a1;
  v20 = *(v17 + 8 * v14);
  if (v18 <= *(v17 + 8 * v19))
  {
    if (v20 <= v18)
    {
      goto LABEL_26;
    }

    a1[1] = v14;
    *v15 = v16;
    v39 = **a3;
    v24 = *(v39 + 8 * v14);
    v25 = *(v39 + 8 * v19);
    v21 = a1;
    v22 = a1 + 1;
LABEL_24:
    if (v24 <= v25)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v21 = a1;
  v22 = a1 + 2;
  if (v20 <= v18)
  {
    *a1 = v16;
    a1[1] = v19;
    v23 = **a3;
    v24 = *(v23 + 8 * v14);
    v25 = *(v23 + 8 * v19);
    v21 = a1 + 1;
    v22 = a1 + 2;
    goto LABEL_24;
  }

LABEL_25:
  *v21 = v14;
  *v22 = v19;
LABEL_26:
  v40 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v41 = 0;
  v42 = *a3;
  for (i = 3; ; ++i)
  {
    v44 = *v40;
    v45 = *v15;
    if (*(*v42 + 8 * v44) > *(*v42 + 8 * v45))
    {
      break;
    }

LABEL_36:
    v15 = v40;
    if (++v40 == a2)
    {
      return 1;
    }
  }

  v46 = i;
  LOBYTE(v47) = v45;
  while (1)
  {
    a1[v46] = v47;
    v48 = v46 - 1;
    if (v46 == 1)
    {
      break;
    }

    v47 = a1[v46 - 2];
    v49 = **a3;
    v50 = *(v49 + 8 * v44);
    v51 = *(v49 + 8 * v47);
    v46 = v48;
    if (v50 <= v51)
    {
      v52 = &a1[v48];
      goto LABEL_34;
    }
  }

  v52 = a1;
LABEL_34:
  *v52 = v44;
  if (++v41 != 8)
  {
    v42 = *a3;
    goto LABEL_36;
  }

  return v40 + 1 == a2;
}

uint64_t sub_240BAA3B8(unsigned int *a1, unsigned int *a2)
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = a1[1];
  sub_240B23590(&v66, v4, v5);
  v6 = v70;
  if (!v70)
  {
    v62 = v66;
    v7 = v68;
    v68 = 0;
    v63 = v67;
    v64 = v7;
    v65 = v69;
    if (a1[1] && *a1)
    {
      v8 = 0;
      v9 = v7;
      do
      {
        memcpy(v9, (*(a1 + 3) + *(a1 + 2) * v8++), 4 * *a1);
        v9 += v63;
      }

      while (v8 < a1[1]);
    }

    sub_240C107A4(&v57, &v62, 2uLL);
    v6 = v61;
    if (!v61)
    {
      v62 = v57;
      v10 = v59;
      v59 = 0;
      v11 = v60;
      v63 = v58;
      v64 = v10;
      if (v7)
      {
        atomic_fetch_add(&qword_27E519020, -*(v7 - 3));
        free(*(v7 - 4));
      }

      v65 = v11;
      sub_240B23590(&v53, v62, DWORD1(v62));
      v6 = v56;
      if (!v56)
      {
        v13 = v54;
        v12 = v55;
        v55 = 0;
        sub_240BAA830(&v62, v54, v12);
        v14 = a2[1];
        if (v14)
        {
          v15 = 0;
          v17 = *(a2 + 2);
          v16 = *(a2 + 3);
          v19 = *(a1 + 2);
          v18 = *(a1 + 3);
          v20 = -5;
          v21 = *a2;
          do
          {
            v22 = 0;
            v23 = v16 + v17 * v15;
            v72 = 0uLL;
            memset(v73, 0, sizeof(v73));
            v24 = v20;
            memset(v71, 0, sizeof(v71));
            do
            {
              v25 = v24 & ~(v24 >> 63);
              if (v25 >= v5)
              {
                v25 = v5 - 1;
              }

              *(v71 + v22) = v18 + v19 * v25;
              v22 += 8;
              ++v24;
            }

            while (v22 != 96);
            if (v21)
            {
              v26 = 0;
              for (i = 0; i != v21; ++i)
              {
                v28 = 0;
                v29 = 3.4028e38;
                v30 = 1.1755e-38;
                v31 = &v72 + 1;
                do
                {
                  v32 = v28;
                  v33 = *v31;
                  v34 = v26;
                  v35 = 2;
                  do
                  {
                    if (v34 >= v4)
                    {
                      v36 = v4 - 1;
                    }

                    else
                    {
                      v36 = v34;
                    }

                    v37 = *(v33 + 4 * v36);
                    if (v37 < v29)
                    {
                      v29 = *(v33 + 4 * v36);
                    }

                    if (v30 < v37)
                    {
                      v30 = *(v33 + 4 * v36);
                    }

                    ++v34;
                    --v35;
                  }

                  while (v35);
                  v28 = 1;
                  v31 = v73;
                }

                while ((v32 & 1) == 0);
                v38 = 0;
                v39 = 0.0;
                v40 = &dword_240C848E0;
                do
                {
                  v41 = -5;
                  v42 = v40;
                  do
                  {
                    v43 = (v26 + v41) & ~((v26 + v41) >> 63);
                    if (v43 >= v4)
                    {
                      v43 = v4 - 1;
                    }

                    v44 = *v42++;
                    v39 = v39 + (*(*(v71 + v38) + 4 * v43) * v44);
                    ++v41;
                  }

                  while (v41 != 7);
                  ++v38;
                  v40 += 12;
                }

                while (v38 != 12);
                *(v23 + 4 * i) = v39;
                v45 = *(v12 + v13 * v15 + 4 * i);
                v46 = v29 - v45;
                if (v39 < v46 || (v46 = v30 + v45, v39 > (v30 + v45)))
                {
                  *(v23 + 4 * i) = v46;
                }

                v26 += 2;
              }
            }

            ++v15;
            v20 += 2;
          }

          while (v15 != v14);
        }

        if (!v12 || (atomic_fetch_add(&qword_27E519020, -*(v12 - 24)), free(*(v12 - 32)), !v56))
        {
          v47 = v55;
          v55 = 0;
          if (v47)
          {
            atomic_fetch_add(&qword_27E519020, -*(v47 - 24));
            free(*(v47 - 32));
          }
        }

        v6 = 0;
      }

      if (!v61)
      {
        v48 = v59;
        v59 = 0;
        if (v48)
        {
          atomic_fetch_add(&qword_27E519020, -*(v48 - 3));
          free(*(v48 - 4));
        }
      }
    }

    v49 = v64;
    v64 = 0;
    if (v49)
    {
      atomic_fetch_add(&qword_27E519020, -*(v49 - 3));
      free(*(v49 - 4));
    }

    if (!v70)
    {
      v50 = v68;
      v68 = 0;
      if (v50)
      {
        atomic_fetch_add(&qword_27E519020, -*(v50 - 3));
        free(*(v50 - 4));
      }
    }
  }

  v51 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_240BAA78C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32)
{
  if (!a20 && a18)
  {
    atomic_fetch_add(&qword_27E519020, -*(a18 - 24));
    free(*(a18 - 32));
  }

  if (a24)
  {
    atomic_fetch_add(&qword_27E519020, -*(a24 - 24));
    free(*(a24 - 32));
  }

  if (!a32)
  {
    if (a30)
    {
      atomic_fetch_add(&qword_27E519020, -*(a30 - 24));
      free(*(a30 - 32));
    }
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_240BAA830(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 4);
  if (v3)
  {
    v4 = 0;
    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = *result;
    v8 = v5;
    do
    {
      if (v4)
      {
        v9 = v6 * (v4 - 1);
      }

      else
      {
        v9 = 0;
      }

      v10 = v4 + 1;
      if (v7)
      {
        v11 = 0;
        v12 = v5 + v9;
        v13 = v6 * v4;
        if (v10 < v3)
        {
          v13 = v6 * v10;
        }

        v14 = v5 + v13;
        result = 1;
        do
        {
          v15 = (v8 + v11);
          v16 = *(v8 + v11);
          v17 = v16;
          if (v11)
          {
            v17 = *(v15 - 1);
          }

          if (result < v7)
          {
            ++v15;
          }

          v18 = *v15;
          v19 = *(v12 + v11);
          v20 = *(v14 + v11);
          v21 = vabds_f32(v16, v17);
          *&v30 = 3.4028e38;
          v31 = 3.4028e38;
          v22 = 3.4028e38;
          if (v21 < 3.4028e38)
          {
            v31 = v21;
            v22 = v21;
          }

          v23 = vabds_f32(v16, v18);
          v24 = 3.4028e38;
          if (v23 < 3.4028e38)
          {
            if (v22 <= v23)
            {
              v25 = &v30;
            }

            else
            {
              *&v30 = v22;
              v25 = &v31;
            }

            *v25 = v23;
            v24 = *&v30;
          }

          v26 = vabds_f32(v16, v19);
          if (v24 > v26)
          {
            if (v31 <= v26)
            {
              v27 = &v30;
            }

            else
            {
              *&v30 = v31;
              v27 = &v31;
            }

            *v27 = v26;
            v24 = *&v30;
          }

          v28 = vabds_f32(v16, v20);
          if (v24 > v28)
          {
            if (v31 <= v28)
            {
              v29 = &v30;
            }

            else
            {
              *&v30 = v31;
              v29 = &v31;
            }

            *v29 = v28;
            v24 = *&v30;
          }

          *(a3 + v11) = v24;
          v11 += 4;
          ++result;
        }

        while (4 * v7 != v11);
      }

      a3 += a2;
      v8 += v6;
      v4 = v10;
    }

    while (v10 != v3);
  }

  return result;
}

unsigned int *sub_240BAA994(unsigned int *result, unsigned int *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = *result;
    v6 = result[1];
    v7 = *a2;
    v9 = a2 + 4;
    v8 = *(a2 + 2);
    v31 = *(v9 + 1);
    do
    {
      if (v3 <= 4)
      {
        v10 = 4;
      }

      else
      {
        v10 = v3;
      }

      if (v7)
      {
        v11 = 0;
        if (2 * v4 <= 4)
        {
          v12 = 4;
        }

        else
        {
          v12 = 2 * v4;
        }

        v13 = v12 - 4;
        v14 = 2 * v4 + 6;
        if (v14 >= v6)
        {
          v14 = v6;
        }

        v15 = *(result + 2);
        v16 = *(result + 3) + v15 * (v10 - 4);
        do
        {
          if (2 * v11 <= 4)
          {
            v17 = 4;
          }

          else
          {
            v17 = 2 * v11;
          }

          v18 = 2 * v11 + 6;
          if (v18 >= v5)
          {
            v18 = v5;
          }

          v19 = 0.0;
          if (v13 < v14)
          {
            v20 = v17 - 4;
            v21 = v16;
            v22 = v13;
            do
            {
              if (v20 < v18)
              {
                v23 = v4 - v22 / 2;
                v24 = v23 - 3;
                if (v22)
                {
                  v25 = &unk_240C84C4C;
                }

                else
                {
                  v25 = &unk_240C84B20;
                }

                v26 = 20 * v23;
                v27 = v20;
                do
                {
                  v28 = 0.0;
                  if (v24 >= 0xFFFFFFFFFFFFFFFBLL)
                  {
                    v29 = v11 - v27 / 2;
                    if ((v29 - 3) >= 0xFFFFFFFFFFFFFFFBLL)
                    {
                      if ((v27 & 1 & v22) != 0)
                      {
                        v30 = &unk_240C84B84;
                      }

                      else
                      {
                        v30 = &unk_240C84BE8;
                      }

                      if ((v27 & 1) == 0)
                      {
                        v30 = v25;
                      }

                      v28 = *&v30[4 * v29 + 48 + v26];
                    }
                  }

                  v19 = v19 + v28 * *(v21 + 4 * v27++);
                }

                while (v27 < v18);
              }

              ++v22;
              v21 += v15;
            }

            while (v22 < v14);
          }

          *(v31 + v8 * v4 + 4 * v11++) = v19;
        }

        while (v11 != v7);
      }

      ++v4;
      v3 += 2;
    }

    while (v4 != v2);
  }

  return result;
}

unsigned int *sub_240BAAB48(unsigned int *result, unsigned int *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v3 = 0;
    v4 = *result;
    v5 = result[1];
    v6 = *a2;
    v8 = *(result + 2);
    v7 = *(result + 3);
    result = &unk_240C84B20;
    do
    {
      if (v6)
      {
        v9 = 0;
        if (v3)
        {
          v10 = &unk_240C84C4C;
        }

        else
        {
          v10 = &unk_240C84B20;
        }

        v11 = (v3 >> 1) - 2;
        v12 = *(a2 + 3) + *(a2 + 2) * v3;
        do
        {
          v13 = 0;
          v14 = 3.4028e38;
          v15 = 1.1755e-38;
          do
          {
            v16 = (v11 + v13) & ~((v11 + v13) >> 63);
            if (v16 >= v5)
            {
              v16 = v5 - 1;
            }

            v17 = v7 + v8 * v16;
            v18 = (v9 >> 1) - 2;
            v19 = 5;
            do
            {
              v20 = v18 & ~(v18 >> 63);
              if (v20 >= v4)
              {
                v20 = v4 - 1;
              }

              v21 = *(v17 + 4 * v20);
              if (v21 < v14)
              {
                v14 = *(v17 + 4 * v20);
              }

              if (v15 < v21)
              {
                v15 = *(v17 + 4 * v20);
              }

              ++v18;
              --v19;
            }

            while (v19);
            ++v13;
          }

          while (v13 != 5);
          v22 = 0;
          if ((v3 & 1 & v9) != 0)
          {
            v23 = &unk_240C84B84;
          }

          else
          {
            v23 = &unk_240C84BE8;
          }

          if ((v9 & 1) == 0)
          {
            v23 = v10;
          }

          v24 = 0.0;
          do
          {
            v25 = 0;
            v26 = (v11 + v22) & ~((v11 + v22) >> 63);
            if (v26 >= v5)
            {
              v26 = v5 - 1;
            }

            v27 = v7 + v8 * v26;
            v28 = (v9 >> 1) - 2;
            do
            {
              v29 = v28 & ~(v28 >> 63);
              if (v29 >= v4)
              {
                v29 = v4 - 1;
              }

              v24 = v24 + (*(v27 + 4 * v29) * *&v23[v25]);
              v25 += 4;
              ++v28;
            }

            while (v25 != 20);
            ++v22;
            v23 += 20;
          }

          while (v22 != 5);
          *(v12 + 4 * v9) = v24;
          if (v24 < v14)
          {
            *(v12 + 4 * v9) = v14;
            v24 = v14;
          }

          if (v24 > v15)
          {
            *(v12 + 4 * v9) = v15;
          }

          ++v9;
        }

        while (v9 != v6);
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return result;
}

void sub_240BAACE4(uint64_t a1, unsigned int *a2, uint64_t a3, float a4)
{
  v8 = *a2;
  v9 = a2[1];
  sub_240B23590(&v26, *a2, v9);
  if (v30)
  {
    *(a1 + 40) = v30;
  }

  else
  {
    v10 = v27;
    v11 = v28;
    v12 = v29;
    if (v9)
    {
      v13 = 0;
      v15 = *(a2 + 2);
      v14 = *(a2 + 3);
      v16 = v28;
      v18 = *(a3 + 16);
      v17 = *(a3 + 24);
      do
      {
        v19 = v14;
        v20 = v17;
        v21 = v16;
        v22 = v8;
        if (v8)
        {
          do
          {
            v23 = *v19++;
            v24 = v23;
            v25 = *v20++;
            *v21++ = v24 + (v25 * a4);
            --v22;
          }

          while (v22);
        }

        ++v13;
        v16 = (v16 + v10);
        v17 = (v17 + v18);
        v14 = (v14 + v15);
      }

      while (v13 != v9);
    }

    *(a1 + 40) = 0;
    *a1 = v26;
    *(a1 + 16) = v10;
    *(a1 + 24) = v11;
    *(a1 + 32) = v12;
  }
}

uint64_t sub_240BAADCC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v5 = a5[1];
  if (v5)
  {
    v6 = 0;
    v7 = *a5;
    v9 = *(a5 + 2);
    v8 = *(a5 + 3);
    v10 = a2 - result - 4;
    do
    {
      if (v7)
      {
        v11 = 0;
        v12 = v8 + v9 * v6;
        v13 = v10;
        do
        {
          v14 = *(v12 + 4 * v11);
          v15 = *(a2 + v6 * result + 4 * v11);
          v16 = -1;
          v17 = v13;
          v18 = v15;
          do
          {
            v19 = v16 + v6;
            v20 = -1;
            v21 = v17;
            do
            {
              if (v11 + v20 >= 0 && (v19 & 0x8000000000000000) == 0 && v11 + v20 < v7 && v19 < v5)
              {
                if (*v21 < v18)
                {
                  v18 = *v21;
                }

                if (v15 < *v21)
                {
                  v15 = *v21;
                }
              }

              ++v20;
              ++v21;
            }

            while (v20 != 2);
            ++v16;
            v17 = (v17 + result);
          }

          while (v16 != 2);
          v22 = *(a4 + v6 * a3 + 4 * v11) + *(a4 + v6 * a3 + 4 * v11);
          v23 = v18 - v22;
          v24 = v15 + v22;
          if (v14 >= v23)
          {
            v25 = v14 <= v24;
          }

          else
          {
            v14 = v23;
            v25 = 0;
          }

          if (!v25)
          {
            if (v14 > v24)
            {
              v14 = v24;
            }

            *(v12 + 4 * v11) = v14;
          }

          ++v11;
          v13 += 4;
        }

        while (v11 != v7);
      }

      ++v6;
      v10 += result;
    }

    while (v6 != v5);
  }

  return result;
}

BOOL sub_240BAAED0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    return 0;
  }

  v8 = a2;
  v11[0] = a3;
  v11[1] = a4;
  if (*a1)
  {
    return (*a1)(*(a1 + 8), v11, sub_240BAB034, sub_240BAB3F8, 0, a2) != 0;
  }

  sub_240BAB034(v11, 1uLL, a3, a4, a5, a6, a7, a8);
  for (i = 0; i != v8; ++i)
  {
    sub_240BAB3F8(v11, i, 0);
  }

  return 0;
}

void sub_240BAAF84(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_240BAAFD8(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_240BAAFD8(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 120)
  {
    sub_240B22320((i - 16));
    sub_240B22320((i - 56));
    sub_240B22320((i - 96));
  }

  *(a1 + 8) = a2;
}

uint64_t sub_240BAB034(uint64_t **a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  v10 = **a1;
  *(v10 + 112) = 396288;
  if ((396288 * a2) >> 62)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_240AE3FA8(1585152 * a2, a2, a3, a4, a5, a6, a7, a8);
  }

  v41 = 0;
  v42 = 0uLL;
  sub_240B3ABD8((v10 + 120), v11);
  *(v10 + 128) = 0uLL;
  sub_240B38BD0(&v41);
  v19 = 0;
  *(v10 + 144) = 0x10000;
  if ((a2 & 0xC00000000000) == 0)
  {
    v19 = sub_240AE3FA8(a2 << 18, v12, v13, v14, v15, v16, v17, v18);
  }

  v41 = 0;
  v42 = 0uLL;
  v20 = *(v10 + 152);
  *(v10 + 152) = v19;
  if (v20)
  {
    v21 = *(v10 + 160);
    if (v21)
    {
      v21(*(v10 + 168), *(v20 - 16));
    }

    else
    {
      free(*(v20 - 16));
    }
  }

  *(v10 + 160) = v42;
  sub_240B786A0(&v41);
  v29 = v9[1];
  v30 = *v29;
  v31 = v29[1];
  v32 = 0xEEEEEEEEEEEEEEEFLL * ((v31 - *v29) >> 3);
  v33 = a2 - v32;
  if (a2 <= v32)
  {
    if (a2 < v32)
    {
      sub_240BAAFD8(v9[1], v30 + 120 * a2);
    }
  }

  else
  {
    v34 = v29[2];
    if (0xEEEEEEEEEEEEEEEFLL * ((v34 - v31) >> 3) < v33)
    {
      if (a2 <= 0x222222222222222)
      {
        v35 = 0xEEEEEEEEEEEEEEEFLL * ((v34 - v30) >> 3);
        v36 = 2 * v35;
        if (2 * v35 <= a2)
        {
          v36 = a2;
        }

        if (v35 >= 0x111111111111111)
        {
          v37 = 0x222222222222222;
        }

        else
        {
          v37 = v36;
        }

        if (v37 <= 0x222222222222222)
        {
          operator new();
        }

        sub_240B2291C();
      }

      sub_240B228BC();
    }

    bzero(v29[1], 120 * ((120 * v33 - 120) / 0x78) + 120);
    v29[1] = v31 + 120 * ((120 * v33 - 120) / 0x78) + 120;
  }

  v38 = v9[2];
  if ((347136 * a2) >> 62)
  {
    v39 = 0;
  }

  else
  {
    v39 = sub_240AE3FA8(1388544 * a2, v22, v23, v24, v25, v26, v27, v28);
  }

  v41 = 0;
  v42 = 0uLL;
  sub_240B3ABD8((v38 + 40), v39);
  *(v38 + 48) = v42;
  sub_240B38BD0(&v41);
  return 0;
}

void sub_240BAB3F8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v359 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v4 = atomic_load(*v3);
  if (v4)
  {
    goto LABEL_320;
  }

  v5 = *(v3 + 16);
  v6 = (*(*(v3 + 8) + 64) + 7) >> 3;
  v7.i64[0] = a2 % v6;
  v7.i64[1] = a2 / v6;
  v8 = vshlq_n_s64(v7, 3uLL);
  v9 = vaddq_s64(v8, vdupq_n_s64(8uLL));
  v10 = vsubq_s64(vbslq_s8(vcgtq_u64(v9, *(*(v3 + 8) + 64)), *(*(v3 + 8) + 64), v9), v8);
  v276 = v8;
  v330 = v8;
  v331 = v10;
  v278 = v3;
  if (*(v5 + 48) <= 3)
  {
    v327 = v10;
    sub_240B8A5F0(*(v3 + 24), &v330, **(v3 + 32), *(v3 + 40), *(v3 + 48), 0, 0, 0, 0, a3, *(v3 + 56));
    v3 = v278;
    v10 = v327;
  }

  v11 = v10.i64[1];
  v317 = v10.u64[1];
  v319 = v10.i64[0];
  v12 = *(v3 + 64);
  v308 = *(v3 + 72);
  v13 = *v12;
  if (*(*v12 + 48) >= 6)
  {
    if (v10.i64[1])
    {
      v15 = v10.i64[1];
      v14 = v10.i64[0];
      if (v10.i64[0] <= 1uLL)
      {
        v16 = 1;
      }

      else
      {
        v16 = v10.i64[0];
      }

      v10.i32[1] = v276.i32[1];
      v17 = v276.i64[1];
      do
      {
        if (v14)
        {
          memset((*(v308 + 24) + *(v308 + 16) * v17 + v276.i64[0]), 1, v16);
          v14 = v319;
        }

        ++v17;
        --v15;
      }

      while (v15);
    }

    goto LABEL_141;
  }

  v18 = *(v3 + 56);
  v19 = *v13;
  v324 = *(v12 + 15) + 4 * *(v12 + 14) * a3;
  v322 = v324 + 786432;
  v20 = *(v18 + 100);
  *&v354 = *(v18 + 104) + (*(*(v18 + 24) + *(v18 + 16) * (v276.i64[1] >> 3) + (v276.i64[0] >> 3)) * v20);
  DWORD1(v354) = 0;
  *(&v354 + 2) = *(v18 + 108) + (*(*(v18 + 64) + *(v18 + 56) * (v276.i64[1] >> 3) + (v276.i64[0] >> 3)) * v20);
  v10 = 0uLL;
  v352 = 0u;
  v353 = 0u;
  v350 = 0u;
  v351 = 0u;
  v348 = 0u;
  v349 = 0u;
  v346 = 0u;
  v347 = 0u;
  v344 = 0u;
  v345 = 0u;
  v342 = 0u;
  v343 = 0u;
  v340 = 0u;
  v341 = 0u;
  v338 = 0u;
  v339 = 0u;
  v328 = v12;
  v313 = v13;
  if (v11)
  {
    v21 = 0;
    if (v19 >= 12.0)
    {
      v23 = 1.0;
    }

    else
    {
      v22 = 8.0 / (v19 + -4.0);
      v23 = v22;
    }

    if (v319 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = v319;
    }

    v299 = v24;
    v25 = v319;
    do
    {
      if (v25)
      {
        v26 = 0;
        v315 = v21 + v276.i64[1];
        v27 = 8 * (v21 + v276.i64[1]);
        v296 = v21;
        v310 = 8 * v21;
        do
        {
          v28 = 0;
          v29 = *(v313 + 48);
          v30 = &qword_240C82F38;
          v31 = 160;
          v32 = 1.0e30;
          do
          {
            if (*(v30 - 1) >= v29)
            {
              v33 = *(v30 - 2);
              v34 = *v30;
              v334.i32[0] = v33;
              v334.i8[4] = 1;
              v35 = v34 / 0.8;
              if (v19 >= 5.0 || v33 - 1 > 1)
              {
                v36 = v19 > 4.0 && v33 >= 3;
                if (v36)
                {
                  v35 = v35 + (v23 * 0.5);
                }
              }

              else
              {
                v35 = v35 + ((((5.0 - v19) / 5.0) * ((5.0 - v19) / 5.0)) * -0.4);
              }

              v37 = sub_240B73474(&v334, 8 * (v26 + v276.i64[0]), v27, v328 + 2, &v354, v324, v322, v35);
              if (v32 > v37)
              {
                v28 = v33;
                v32 = v37;
              }
            }

            v30 += 2;
            v31 -= 16;
          }

          while (v31);
          v38 = v32;
          sub_240B4541C(v308, v26 + v276.i64[0], v315, v28, 0);
          *(&v338 + v26 + v310) = ((-0.4 / (v19 + 1.4)) + 1.0) * v38;
          ++v26;
        }

        while (v26 != v299);
        v25 = v319;
        v12 = v328;
        v13 = v313;
        v21 = v296;
      }

      ++v21;
    }

    while (v21 < v317);
    v39 = v317;
    v10 = 0uLL;
  }

  else
  {
    v39 = 0;
  }

  v40 = 0;
  v336 = v10;
  v337 = v10;
  v334 = v10;
  v335 = v10;
  v288 = *(v13 + 56);
  do
  {
    v41 = &byte_240C82FD0[v40];
    if (*(v13 + 56) > byte_240C82FD0[v40 + 5])
    {
      goto LABEL_115;
    }

    v42 = *v41;
    v43 = byte_240C87EBB[v42];
    if (v43 - 1 >= v39)
    {
      goto LABEL_115;
    }

    v44 = 0;
    v45 = *(v41 + 4);
    v46 = v41[2];
    v47 = byte_240C87EA0[v42];
    v48 = v47 - 1;
    if (v47 <= 1)
    {
      v49 = 1;
    }

    else
    {
      v49 = byte_240C87EA0[v42];
    }

    if (v43 <= 1)
    {
      v50 = 1;
    }

    else
    {
      v50 = byte_240C87EBB[v42];
    }

    v51 = 32 * v43;
    v52 = 8 * v43;
    v289 = v50;
    v53 = 32 * v50;
    v54 = &v338;
    v55 = &v334;
    v56 = byte_240C87EBB[v42];
    v287 = v56;
    __len = v49;
    v280 = v53;
    v281 = 4 * v49;
    v285 = 8 * v43;
    v286 = 32 * v43;
    do
    {
      v57 = v44;
      v44 = v56;
      if (v48 >= v319)
      {
        goto LABEL_114;
      }

      v292 = v56;
      v58 = 0;
      v59 = v42 == 10;
      v60 = v57 + 7;
      v61 = (v57 & 1) != 0 && v42 == 7;
      v62 = !v61;
      v293 = v62;
      v63 = (v57 & 3) != 0 && v42 == 11;
      v64 = v63;
      v311 = v64;
      v303 = v57 + 3;
      v297 = v57 + 1;
      v300 = v57;
      if (v63)
      {
        v59 = 1;
      }

      v306 = v59;
      v283 = v57 + v276.i64[1];
      v284 = 8 * (v57 + v276.i64[1]);
      v282 = (&v338 + 2 * v57);
      v290 = v55;
      v291 = v54;
      v65 = v47;
      v66 = v319;
      do
      {
        v67 = v58;
        v58 = v65;
        if (v67 + 7 >= v66 || v60 >= v317)
        {
          if ((v311 & 1) != 0 || v42 == 10 && (v67 & 3) != 0)
          {
            goto LABEL_103;
          }
        }

        else
        {
          if (*(v313 + 56) <= 3uLL && v42 == 20)
          {
            if (((v67 | v57) & 7) != 0)
            {
              goto LABEL_103;
            }

            sub_240B78008(8uLL, 1, v276.i64[0], v276.i64[1], v67, v57, v12 + 2, &v354, v46, 2.26, v308, &v338, v324, v322);
            goto LABEL_91;
          }

          if (v306)
          {
            goto LABEL_103;
          }
        }

        if (v67 + 3 < v319 && v303 < v317)
        {
          if (v42 == 11)
          {
            if (((v67 | v57) & 3) != 0)
            {
              goto LABEL_103;
            }

            sub_240B78008(4uLL, v288 < 4, v276.i64[0], v276.i64[1], v67, v57, v12 + 2, &v354, v46, 1.5, v308, &v338, v324, v322);
LABEL_91:
            v12 = v328;
LABEL_92:
            v57 = v300;
            goto LABEL_103;
          }

          if (v42 == 10)
          {
            goto LABEL_103;
          }
        }

        if (v67 + 1 >= v319 || v297 >= v317)
        {
          if (!v293 || v42 == 6 && (v67 & 1) != 0)
          {
            goto LABEL_103;
          }
        }

        else
        {
          if (v42 == 6)
          {
            goto LABEL_103;
          }

          if (v42 == 7)
          {
            if ((v67 | v57))
            {
              goto LABEL_103;
            }

            sub_240B78008(2uLL, 1, v276.i64[0], v276.i64[1], v67, v57, v12 + 2, &v354, v46, 1.35, v308, &v338, v324, v322);
            goto LABEL_91;
          }
        }

        v70 = 0;
        v332 = v42;
        v333 = (v42 | 0x100000000uLL) >> 32;
        v71 = 0.0;
        v72 = v55;
        v73 = v54;
LABEL_106:
        v74 = v72;
        v75 = v73;
        v76 = __len;
        while (1)
        {
          v77 = v74->u8[0];
          v74 = (v74 + 1);
          if (v77 >= v45)
          {
            break;
          }

          v78 = *v75++;
          v71 = v71 + v78;
          if (!--v76)
          {
            ++v70;
            v73 += 8;
            v72 = (v72 + 8);
            if (v70 != v289)
            {
              goto LABEL_106;
            }

            v79 = sub_240B73474(&v332, 8 * (v67 + v276.i64[0]), v284, v12 + 2, &v354, v324, v322, v46);
            v12 = v328;
            v57 = v300;
            if (v79 < v71)
            {
              v277 = v40;
              v80 = 0;
              v81 = v55;
              do
              {
                bzero(&v54[v80 / 0x10], v281);
                memset(v81, v45, __len);
                v80 += 32;
                v81 = (v81 + 8);
              }

              while (v280 != v80);
              sub_240B4541C(v308, v67 + v276.i64[0], v283, v42, 0);
              v282[v67] = v79;
              v12 = v328;
              v40 = v277;
              goto LABEL_92;
            }

            break;
          }
        }

LABEL_103:
        v65 = v58 + v47;
        v54 = (v54 + 4 * v47);
        v55 = (v55 + v47);
        v66 = v319;
      }

      while (v58 + v47 - 1 < v319);
      v39 = v317;
      v48 = v47 - 1;
      v43 = v287;
      v54 = v291;
      v44 = v292;
      v52 = v285;
      v51 = v286;
      v55 = v290;
LABEL_114:
      v56 = v44 + v43;
      v54 = (v54 + v51);
      v55 = (v55 + v52);
    }

    while (v44 + v43 - 1 < v39);
LABEL_115:
    v40 += 12;
    v13 = v313;
  }

  while (v40 != 108);
  if (*(v313 + 48) <= 4 && v39 >= 2)
  {
    v83 = 0;
    v84 = 1;
    do
    {
      v85 = v83;
      v83 = v84;
      if (v319 >= 2)
      {
        v86 = 0;
        do
        {
          if ((v86 | v85))
          {
            sub_240B78008(2uLL, 1, v276.i64[0], v276.i64[1], v86, v85, v328 + 2, &v354, 1.25, 1.35, v308, &v338, v324, v322);
          }

          v87 = v86 + 2;
          ++v86;
        }

        while (v87 < v319);
        v39 = v317;
        v13 = v313;
      }

      v84 = v83 + 1;
    }

    while (v83 + 1 < v39);
    if (*(v13 + 48) < 1)
    {
      v88 = 1;
    }

    else
    {
      v88 = 2;
    }

    if (v39 >= 4)
    {
      v89 = 0;
      do
      {
        if (v319 >= 4)
        {
          for (i = 3; i < v319; i += v88)
          {
            if ((((i - 3) | v89) & 3) != 0)
            {
              sub_240B78008(4uLL, v288 < 4, v276.i64[0], v276.i64[1], i - 3, v89, v328 + 2, &v354, 1.5, 1.5, v308, &v338, v324, v322);
            }
          }

          v39 = v317;
        }

        v89 += v88;
      }

      while (v89 + 3 < v39);
    }
  }

LABEL_141:
  v91 = *(v278 + 16);
  v92 = *(v278 + 104);
  v93 = *v91;
  v94 = *(v91 + 48);
  if (v93 < 0.5 || v94 > 4 || *(*(v278 + 88) + 452) == 0)
  {
    if (v317)
    {
      v97 = v319;
      if (v319 <= 1)
      {
        v98 = 1;
      }

      else
      {
        v98 = v319;
      }

      v10.i32[1] = v276.i32[1];
      v99 = v276.i64[1];
      do
      {
        if (v97)
        {
          memset((*(v92 + 24) + *(v92 + 16) * v99 + v276.i64[0]), 4, v98);
          v97 = v319;
        }

        ++v99;
        --v317;
      }

      while (v317);
    }
  }

  else
  {
    v100 = *(v278 + 40);
    v101 = **(v278 + 32);
    v298 = *(v278 + 72);
    v301 = *(v278 + 96);
    v102 = **(v278 + 80) + 120 * a3;
    v329 = *(v92 + 16);
    v104 = *v100;
    v103 = v100[1];
    if (!*v102)
    {
      sub_240B23590(&v338, 0x44u, 0x44u);
      if (DWORD2(v340))
      {
        goto LABEL_319;
      }

      v264 = v339;
      *(&v339 + 1) = 0;
      v265 = v340;
      *v102 = v338;
      v266 = *(v102 + 24);
      *(v102 + 16) = v264;
      if (v266)
      {
        atomic_fetch_add(&qword_27E519020, -*(v266 - 24));
        free(*(v266 - 32));
      }

      *(v102 + 32) = v265;
      sub_240B23590(&v334, 0x10u, 0x10u);
      v267 = v336.i32[2];
      if (!v336.i32[2])
      {
        v268 = v335;
        v335.i64[1] = 0;
        v269 = v336.i64[0];
        *(v102 + 40) = v334;
        v270 = *(v102 + 64);
        *(v102 + 56) = v268;
        if (v270)
        {
          atomic_fetch_add(&qword_27E519020, -*(v270 - 24));
          free(*(v270 - 32));
        }

        *(v102 + 72) = v269;
        sub_240B23590(&v354, 0x11u, 0x11u);
        v267 = v358;
        if (!v358)
        {
          v271 = v356;
          v272 = v357;
          *(v102 + 80) = v354;
          *(v102 + 96) = v355;
          sub_240B2453C((v102 + 104), v271);
          *(v102 + 112) = v272;
          v356 = 0;
        }

        if (!v336.i32[2])
        {
          v273 = v335.i64[1];
          v335.i64[1] = 0;
          if (v273)
          {
            atomic_fetch_add(&qword_27E519020, -*(v273 - 24));
            free(*(v273 - 32));
          }
        }
      }

      if (!DWORD2(v340))
      {
        v274 = *(&v339 + 1);
        *(&v339 + 1) = 0;
        if (v274)
        {
          atomic_fetch_add(&qword_27E519020, -*(v274 - 24));
          free(*(v274 - 32));
        }
      }

      if (v267)
      {
LABEL_319:
        atomic_store(1u, *v278);
        goto LABEL_320;
      }
    }

    v105 = v276.i64[0] + (v104 >> 3);
    v106 = v105 + v319;
    v107 = v276.i64[1] + (v103 >> 3);
    v108 = v107 + v317;
    v109 = 8 * v107;
    v110 = 8 * v107 - 2;
    if (!v107)
    {
      v110 = 0;
    }

    v111 = 8 * v108;
    if (8 * v108 != v101[1])
    {
      v111 = (8 * v108) | 2;
    }

    v112 = 8 * v105;
    if (8 * v106 == *v101)
    {
      v113 = 8 * v106;
    }

    else
    {
      v113 = (8 * v106) | 2;
    }

    if (v110 < v111)
    {
      do
      {
        v114 = 0;
        v115 = v110;
        v116 = *(v102 + 24) + *(v102 + 16) * (v110 - v109 + 2);
        v338 = 0uLL;
        *&v339 = 0;
        v334 = 0uLL;
        v335.i64[0] = 0;
        v354 = 0uLL;
        v355 = 0;
        v36 = v110 != 0;
        v117 = v110 - 1;
        if (!v36)
        {
          v117 = 0;
        }

        v118 = *(v101 + 2);
        v119 = v118 * v117;
        v110 = v115 + 1;
        v120 = v118 * v115;
        if (v115 + 1 < v101[1])
        {
          ++v115;
        }

        v121 = v115 * v118;
        v122 = (v101 + 6);
        do
        {
          v123 = *v122;
          v122 += 5;
          *(&v338 + v114 * 8) = v123 + v119;
          v334.i64[v114] = v123 + v120;
          *(&v354 + v114 * 8) = v123 + v121;
          ++v114;
        }

        while (v114 != 3);
        v124 = v112 - 2;
        if (!v105)
        {
          v125 = 0;
          v127 = 0.0;
          do
          {
            v128 = v334.i64[v125];
            v126 = *v101 > 1;
            v129 = (flt_240C837E8[v125] * (*(*(&v338 + v125) + 4 * v126) + (**(&v338 + v125) + ((*(*(&v354 + v125) + 4 * v126) + (**(&v354 + v125) + ((*v128 + v128[v126]) + **(&v354 + v125)))) + **(&v338 + v125))))) + (flt_240C837DC[v125] * *v128);
            v127 = v127 + (v129 * v129);
            ++v125;
          }

          while (v125 != 3);
          *(v116 + 4 * (2 - v112)) = v127;
          v124 = 1;
        }

        v130 = v124 + 4;
        if (v124 + 4 <= v113)
        {
          while (1)
          {
            v131 = v130;
            if (v124 + 5 > *v101)
            {
              break;
            }

            v132 = 0;
            v133 = 0uLL;
            do
            {
              v134 = v334.i64[v132] + 4 * v124;
              v135 = *(v134 - 4);
              v136 = *(v134 + 4);
              v137 = vmulq_n_f32(*v134, flt_240C837DC[v132]);
              v138 = *(&v338 + v132) + 4 * v124;
              v139 = *(v138 - 4);
              v140 = *v138;
              v141 = vaddq_f32(v135, *(v138 + 4));
              v142 = *(&v354 + v132) + 4 * v124;
              v143 = vmlaq_n_f32(v137, vaddq_f32(vaddq_f32(v141, vaddq_f32(v136, *(v142 - 4))), vaddq_f32(vaddq_f32(v139, *v142), vaddq_f32(v140, *(v142 + 4)))), flt_240C837E8[v132]);
              v133 = vmlaq_f32(v133, v143, v143);
              ++v132;
            }

            while (v132 != 3);
            *(v116 - 32 * v105 + 8 + 4 * v124) = v133;
            v130 = v131 + 4;
            v124 = v131;
            if (v131 + 4 > v113)
            {
              goto LABEL_183;
            }
          }
        }

        v131 = v124;
LABEL_183:
        if (v131 < v113)
        {
          v144 = *v101;
          v145 = v116 + 8;
          do
          {
            v146 = 0;
            if (v131)
            {
              v147 = v131 - 1;
            }

            else
            {
              v147 = 0;
            }

            v148 = v131 + 1;
            if (v131 + 1 >= v144)
            {
              v149 = v131;
            }

            else
            {
              v149 = v131 + 1;
            }

            v150 = 0.0;
            do
            {
              v151 = v334.i64[v146];
              v152 = *(&v354 + v146);
              v153 = (flt_240C837E8[v146] * (((((((*(v151 + 4 * v147) + *(v151 + 4 * v149)) + *(v152 + 4 * v147)) + *(v152 + 4 * v131)) + *(v152 + 4 * v149)) + *(*(&v338 + v146) + 4 * v147)) + *(*(&v338 + v146) + 4 * v131)) + *(*(&v338 + v146) + 4 * v149))) + (flt_240C837DC[v146] * *(v151 + 4 * v131));
              v150 = v150 + (v153 * v153);
              ++v146;
            }

            while (v146 != 3);
            *(v145 + 4 * (v131 - v112)) = v150;
            ++v131;
          }

          while (v148 != v113);
        }
      }

      while (v110 != v111);
    }

    v154 = *(v102 + 64);
    v155 = *(v102 + 56) >> 2;
    v325 = v331.i64[1];
    v156 = 2 * v331.i64[1];
    v158 = *(v102 + 16);
    v157 = *(v102 + 24);
    v320 = v331.i64[0];
    v159 = 2 * v331.i64[0];
    v160 = 4 * v158;
    if (2 * v331.i64[1])
    {
      v161 = 0;
      v162 = v157 + 2 * v158;
      do
      {
        v163 = 0;
        v338 = 0uLL;
        v339 = 0uLL;
        v164 = v162;
        do
        {
          *(&v338 + v163) = v164;
          v163 += 8;
          v164 += v158;
        }

        while (v163 != 32);
        if (v159)
        {
          for (j = 0; j != v159; ++j)
          {
            v166 = 0;
            v167 = 0uLL;
            do
            {
              v167 = vaddq_f32(v167, *(*(&v338 + v166) + 16 * j + 8));
              v166 += 8;
            }

            while (v166 != 32);
            v168 = vpaddq_f32(v167, v167).u64[0];
            v168.f32[0] = vaddv_f32(v168);
            v154[v161 * v155 + j] = 0.25 * vsqrtq_f32(vdupq_lane_s32(v168, 0)).f32[0];
          }
        }

        ++v161;
        v162 += v160;
      }

      while (v161 != v156);
    }

    v318 = v154;
    __lena = v92;
    v169 = 0;
    v170 = *(v102 + 104);
    v171 = *(v102 + 96) >> 2;
    v172 = -8 * v105;
    v174 = *v101;
    v173 = v101[1];
    v10 = 0uLL;
    do
    {
      v175 = 0;
      v338 = 0uLL;
      v339 = 0uLL;
      v176 = 4 * v169;
      v177 = v157;
      do
      {
        *(&v338 + v175) = v177;
        v175 += 8;
        v177 += v158;
      }

      while (v175 != 32);
      v178 = 0;
      v179 = v176 + v109;
      v180 = v176 + v109 == 0;
      v181 = 2 * (v176 + v109 == 0);
      v182 = v179 | 2;
      v183 = v173 + 2 - v179;
      if (v182 <= v173)
      {
        v184 = 4;
      }

      else
      {
        v184 = v183;
      }

      v185 = v184 - 2 * v180;
      do
      {
        v186 = (4 * v178) | 2;
        if (4 * v178 != v172)
        {
          v186 = 4 * v178;
        }

        if (((v112 + 4 * v178) | 2uLL) <= v174)
        {
          v187 = 4 * v178 + 4;
        }

        else
        {
          v187 = v174 - v112 + 2;
        }

        if (v187 - v186 == 4 && v185 == 4)
        {
          v193 = 0uLL;
          if (v184 > v181)
          {
            v194 = v181;
            do
            {
              if (v187 > v186)
              {
                v195 = (*(&v338 + v194) + 4 * v186);
                v196 = v186;
                do
                {
                  v197 = *v195++;
                  v193 = vaddq_f32(v193, v197);
                  v196 += 4;
                }

                while (v196 < v187);
              }

              ++v194;
            }

            while (v194 < v184);
          }

          v198 = vpaddq_f32(v193, v193).u64[0];
          v198.f32[0] = vaddv_f32(v198);
          v192 = 0.25 * vsqrtq_f32(vdupq_lane_s32(v198, 0)).f32[0];
        }

        else
        {
          v189 = 0.0;
          if (v184 > v181)
          {
            v190 = v181;
            do
            {
              if (v187 > v186)
              {
                v191 = v186;
                do
                {
                  v189 = v189 + *(*(&v338 + v190) + 4 * v191++);
                }

                while (v191 < v187);
              }

              ++v190;
            }

            while (v190 < v184);
          }

          v192 = sqrtf(v189 / ((v187 - v186) * v185));
        }

        *(v170 + 4 * v169 * v171 + 4 * v178) = v192;
        v61 = v178++ == v159;
      }

      while (!v61);
      v157 += v160;
      v61 = v169++ == v156;
    }

    while (!v61);
    v316 = v330.u64[1];
    v302 = v330.i64[1] + v325;
    if (v330.i64[1] < (v330.i64[1] + v325))
    {
      v304 = v330.i64[0];
      v326 = v330.i64[0] + v320;
      v199 = 8 * v155;
      v200 = 4 * v155;
      v314 = v154 + 1;
      v201 = 8 * v171;
      v309 = (v170 + 8);
      v312 = &v154[v155 + 1];
      v305 = v170 + 8 + 4 * v171;
      v307 = v170 + 8 + 8 * v171;
      do
      {
        if (v304 < v326)
        {
          v202 = v314;
          v323 = *(v298 + 24) + *(v298 + 16) * v316;
          v321 = *(v301 + 24) + *(v301 + 16) * v316;
          v204 = v304;
          v203 = v305;
          v205 = (*(__lena + 24) + v304 + *(__lena + 16) * v316);
          v206 = v307;
          v207 = v309;
          v208 = v312;
          v209 = v318;
          do
          {
            v210 = *(v323 + v204);
            if (v210)
            {
              v211 = 0;
              v212 = v210 >> 1;
              v213 = byte_240C87EBB[v210 >> 1];
              v214 = 2 * v213;
              v215 = byte_240C87EA0[v212];
              v216 = 2 * v215;
              if (2 * v215 <= 1)
              {
                v216 = 1;
              }

              if (v214 <= 1)
              {
                v214 = 1;
              }

              v217 = 0.0;
              v218 = v209;
              do
              {
                v219 = v218;
                v220 = v216;
                do
                {
                  v221 = *v219++;
                  v217 = v217 + (v221 * v221);
                  --v220;
                }

                while (v220);
                ++v211;
                v218 = (v218 + v200);
              }

              while (v211 != v214);
              v222 = 0;
              v223 = (1.0 / *(v321 + 4 * v204)) * 0.0625;
              v224 = sqrtf(v217 / (4 * v213 * v215)) + v223 * 3.25000005;
              if (v215 <= 1)
              {
                v225 = 1;
              }

              else
              {
                v225 = v215;
              }

              if (v213 <= 1)
              {
                v226 = 1;
              }

              else
              {
                v226 = v213;
              }

              v227 = v207;
              v228 = v203;
              v229 = v206;
              v230 = v208;
              v231 = v202;
              v232 = v205;
              do
              {
                v233 = v227;
                v234 = v228;
                v235 = v229;
                v236 = v230;
                v237 = v231;
                v238 = v232;
                v239 = v225;
                do
                {
                  v240 = *(v237 - 1);
                  v241 = *(v236 - 1);
                  v242 = *v236;
                  if (*v237 >= v240)
                  {
                    v243 = *(v237 - 1);
                  }

                  else
                  {
                    v243 = *v237;
                  }

                  if (v242 >= v241)
                  {
                    v244 = *(v236 - 1);
                  }

                  else
                  {
                    v244 = *v236;
                  }

                  if (v244 < v243)
                  {
                    v243 = v244;
                  }

                  v246 = *(v234 - 2);
                  v245 = *(v234 - 1);
                  if (v245 < v243)
                  {
                    v243 = *(v234 - 1);
                  }

                  v247 = *(v233 - 2);
                  if (*(v233 - 1) < v247)
                  {
                    v247 = *(v233 - 1);
                  }

                  v248 = *v233;
                  v233 += 2;
                  v249 = v248;
                  if (v246 >= v248)
                  {
                    v246 = v249;
                  }

                  v250 = *v234;
                  v234 += 2;
                  v251 = v250;
                  if (v250 >= v245)
                  {
                    v251 = v245;
                  }

                  v252 = *(v235 - 2);
                  if (*(v235 - 1) < v252)
                  {
                    v252 = *(v235 - 1);
                  }

                  if (v246 >= v247)
                  {
                    v246 = v247;
                  }

                  if (v252 >= v251)
                  {
                    v253 = v251;
                  }

                  else
                  {
                    v253 = v252;
                  }

                  if (v253 < v246)
                  {
                    v246 = v253;
                  }

                  v254 = *v235;
                  v235 += 2;
                  v255 = v254;
                  if (v254 < v246)
                  {
                    v246 = v255;
                  }

                  if (v246 >= v243)
                  {
                    v256 = v243;
                  }

                  else
                  {
                    v256 = v246;
                  }

                  v257 = (v243 * 0.125) + (v256 * 0.625);
                  if (v245 >= (v256 * 1.5))
                  {
                    v245 = v256 * 1.5;
                  }

                  v258 = (v257 + (v245 * 0.125)) + (v246 * 0.125);
                  v259 = v224 / (v223 + v258);
                  v260 = ((((v240 + *v237) + v241) + v242) + v258) * 0.2;
                  if (v259 > 3.2 || v260 < (v223 * 0.085))
                  {
                    v262 = 4;
                  }

                  else
                  {
                    v262 = 0;
                  }

                  *v238++ = v262;
                  v237 += 2;
                  v236 += 2;
                  --v239;
                }

                while (v239);
                ++v222;
                v232 += v329;
                v231 = (v231 + v199);
                v230 = (v230 + v199);
                v229 = (v229 + v201);
                v228 = (v228 + v201);
                v227 = (v227 + v201);
              }

              while (v222 != v226);
            }

            ++v204;
            v209 += 2;
            ++v205;
            v202 += 2;
            v208 += 8;
            v206 += 8;
            v203 += 8;
            v207 += 2;
          }

          while (v204 < v326);
        }

        ++v316;
        v318 = (v318 + v199);
        v314 = (v314 + v199);
        v312 += v199;
        v307 += v201;
        v305 += v201;
        v309 = (v309 + v201);
      }

      while (v316 < v302);
    }
  }

  v10.i32[0] = **(v278 + 16);
  sub_240B78894(*(*(v278 + 72) + 16), *(*(v278 + 72) + 24), v330.i64, *(v278 + 96), *v10.i64);
  sub_240B6A268(*(v278 + 112), *(*(v278 + 96) + 16), *(*(v278 + 96) + 24), &v330, *(v278 + 120));
  v263 = *(*(v278 + 16) + 48);
  if (v263 <= 5)
  {
    sub_240B8A5F0(*(v278 + 24), &v330, **(v278 + 32), *(v278 + 40), *(v278 + 48), *(v278 + 72), *(v278 + 120), *(v278 + 112), v263 > 3, a3, *(v278 + 56));
  }

LABEL_320:
  v275 = *MEMORY[0x277D85DE8];
}

void sub_240BAC990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (!a64 && a62)
  {
    atomic_fetch_add(&qword_27E519020, -*(a62 - 24));
    free(*(a62 - 32));
  }

  if (!a72)
  {
    if (a70)
    {
      atomic_fetch_add(&qword_27E519020, -*(a70 - 24));
      free(*(a70 - 32));
    }
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240BACA0C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v5 = 0;
  v6 = 0;
  v11 = *MEMORY[0x277D85DE8];
  memset(v10, 0, sizeof(v10));
  do
  {
    if (*(result + 4 * v5))
    {
      if (v6 > 3)
      {
        if (v6 != 4)
        {
          goto LABEL_10;
        }
      }

      else
      {
        *(v10 + v6) = v5;
      }

      ++v6;
    }

    ++v5;
  }

  while (a2 != v5);
  v7 = 64 - __clz(a2 - 1);
  if (v6 > 1)
  {
LABEL_10:
    sub_240C0F4E4(result, a2);
  }

  *(a5[3] + (*a5 >> 3)) = (1 << (*a5 & 7)) | *(a5[3] + (*a5 >> 3));
  v8 = *a5 + 4;
  *a5 = v8;
  *(a5[3] + (v8 >> 3)) = (*&v10[0] << (v8 & 7)) | *(a5[3] + (v8 >> 3));
  *a5 += v7;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240BAD310(unint64_t a1, size_t *a2)
{
  v4 = *a2;
  v5 = *a2 + 9;
  sub_240B4ADF0(a2, v5);
  v6 = a2[2];
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  if (a1 < 0x80)
  {
    v8 = v4;
    LOBYTE(v9) = a1;
  }

  else
  {
    do
    {
      v8 = v4 + 1;
      *(v6 + v4) = a1 | 0x80;
      v9 = a1 >> 7;
      v10 = a1 >> 14;
      a1 >>= 7;
      ++v4;
    }

    while (v10);
  }

  *(v6 + v8) = v9;
  sub_240B4ADF0(a2, v8 + 1);
  if (a2[2])
  {
    v11 = v8 + 1;
  }

  else
  {
    v11 = 0;
  }

  *a2 = v11;
}

void sub_240BAD3B4(uint64_t a1, unint64_t a2, unint64_t a3)
{
  sub_240B57EEC(v11, a2);
  if (a2)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      *(v12 + v7) = *(a1 + v6);
      v7 += (a2 + a3 - 1) / a3;
      if (v7 >= a2)
      {
        v7 = ++v8;
      }

      ++v6;
    }

    while (a2 != v6);
    v9 = 0;
    v10 = v12;
    do
    {
      *(a1 + v9) = *(v10 + v9);
      ++v9;
    }

    while (a2 != v9);
    v12 = 0;
  }

  else
  {
    v10 = v12;
    v12 = 0;
    if (!v10)
    {
      return;
    }
  }

  atomic_fetch_add(&qword_27E519020, -*(v10 - 24));
  free(*(v10 - 32));
}

uint64_t sub_240BAD484(unint64_t a1, unint64_t a2, int a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t *a7, size_t *a8)
{
  v8 = *a7 + a4;
  v9 = *a7 - 1;
  if (v8 > a6 || v9 >= v8)
  {
    return 1;
  }

  if (a1 > v9 >> 2 || *a7 < 4 * a1)
  {
    return 1;
  }

  v18 = *a8;
  if (a4)
  {
    for (i = 0; i != a4; ++i)
    {
      v22 = *a7;
      v23 = sub_240B59594(a5, *a7, i, a1, a2, a3);
      sub_240B57E90(a8, *(a5 + v22 + i) - v23);
    }

    v8 = *a7 + a4;
  }

  *a7 = v8;
  if (a2 > 1)
  {
    sub_240BAD3B4(a8[2] + v18, a4, a2);
  }

  return 0;
}

uint64_t sub_240BAD594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, void *a7, unsigned int *a8, float a9)
{
  v38 = a9;
  v15 = a6[1];
  v34[0] = *a6;
  v34[1] = v15;
  v16 = a6[3];
  v34[2] = a6[2];
  v36 = a8;
  v37 = a3;
  v34[3] = v16;
  memset(&v34[4], 0, 48);
  v35 = 0;
  v33 = *(a1 + 56) == 1;
  v17 = *(a4 + 16);
  if (v17 <= *a8)
  {
    v18 = *(a4 + 24);
    if (v18 <= a8[1])
    {
      v23 = a8 + 1;
      v24 = 120;
      do
      {
        *(v23 - 1) = v17;
        *v23 = v18;
        v23 += 10;
        v24 -= 40;
      }

      while (v24);
      goto LABEL_13;
    }
  }

  else
  {
    v18 = *(a4 + 24);
  }

  sub_240B2A11C(v30, v17, v18);
  v19 = v32;
  if (v32)
  {
    goto LABEL_18;
  }

  sub_240B2A358(v29, v30);
  sub_240B30D80(a8, v29);
  for (i = 13; i != -2; i -= 5)
  {
    sub_240B22320(&v29[i]);
  }

  if (!v32)
  {
    v21 = &v31;
    v22 = -120;
    do
    {
      sub_240B22320(v21);
      v21 -= 5;
      v22 += 40;
    }

    while (v22);
  }

  v18 = *(a4 + 24);
LABEL_13:
  v28 = 0;
  v29[0] = v34;
  v29[1] = a1;
  v29[2] = a5;
  v29[3] = &v38;
  v29[4] = a4;
  v30[0] = &v28;
  v30[1] = v34;
  v30[2] = &v33;
  v30[3] = a4;
  v30[4] = a2;
  v30[5] = a1;
  v30[6] = &v37;
  v30[7] = &v36;
  if (a7)
  {
    v25 = sub_240BAD79C(a7, v18, v29, v30);
  }

  else
  {
    v39[0] = 0;
    v39[1] = v39;
    v25 = sub_240BAD79C(v39, v18, v29, v30);
  }

  v19 = v25;
  if (!v25)
  {
    v26 = atomic_load(&v28);
    v19 = v26 & 1;
  }

LABEL_18:
  sub_240BAD864(v34);
  return v19;
}

BOOL sub_240BAD79C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a2;
  v8[0] = a3;
  v8[1] = a4;
  if (!*a1)
  {
    v5 = 1;
    if (sub_240BAD8BC(*a3, *(a3 + 8), *(a3 + 16), *(*(a3 + 32) + 16), 1, **(a3 + 24)))
    {
      return v5;
    }

    for (i = 0; i != v4; ++i)
    {
      sub_240BAD9F0(v8, i, 0);
    }

    return 0;
  }

  return (*a1)(a1[1], v8, sub_240BADC58, sub_240BAD9F0, 0, a2) != 0;
}

uint64_t sub_240BAD864(uint64_t a1)
{
  if (*(a1 + 64))
  {
    (*(a1 + 56))();
  }

  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    *(a1 + 80) = v3;
    operator delete(v3);
  }

  return a1;
}

BOOL sub_240BAD8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6)
{
  v12 = (a1 + 72);
  if (v12 != (a2 + 32))
  {
    sub_240B28A14(v12, *(a2 + 32), *(a2 + 40), *(a2 + 40) - *(a2 + 32));
  }

  v13 = *(a1 + 80) - *(a1 + 72);
  v22[0] = *(a1 + 72);
  v22[1] = v13;
  sub_240B250A4(v23, a2 + 16);
  v14 = 3;
  if (*(a2 + 56) == 1)
  {
    v14 = 1;
  }

  v15 = 4;
  if (!*(a2 + 60))
  {
    v15 = v14;
  }

  v23[13] = v15;
  if (a1 + 96 != a3 + 32)
  {
    sub_240B28A14((a1 + 96), *(a3 + 32), *(a3 + 40), *(a3 + 40) - *(a3 + 32));
  }

  v16 = *(a1 + 104) - *(a1 + 96);
  v20[0] = *(a1 + 96);
  v20[1] = v16;
  sub_240B250A4(v21, a3 + 16);
  if (*(a3 + 60))
  {
    return 1;
  }

  v18 = 3;
  if (*(a3 + 56) == 1)
  {
    v18 = 1;
  }

  v21[13] = v18;
  v19 = (*(a1 + 24))(*(a1 + 16), a5, a4, v22, v20, a6);
  *(a1 + 64) = v19;
  return v19 == 0;
}

float sub_240BAD9F0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = atomic_load(*v3);
  if (v4)
  {
    return result;
  }

  v7 = (*(*(v3 + 8) + 32))(*(*(v3 + 8) + 64), a3);
  if (**(v3 + 16) == 1)
  {
    v9 = *(*(v3 + 32) + 24) + *(*(v3 + 32) + 16) * (*(*(v3 + 24) + 8) + a2) + 4 * **(v3 + 24);
  }

  else
  {
    v9 = v7;
    if (*(*(v3 + 40) + 60) == 1)
    {
      v10 = **(v3 + 48);
      if (!v10)
      {
LABEL_18:
        atomic_store(1u, *v3);
        return result;
      }

      v11 = *(v3 + 24);
      v12 = v11[2];
      if (v12)
      {
        v13 = 0;
        v14 = *(v3 + 32);
        v15 = *v11;
        v16 = v11[1] + a2;
        v17 = *(v10 + 24) + *(v10 + 16) * v16;
        v18 = v14[2] * v16;
        v19 = v14[3] + v18 + 4 * v15;
        v20 = v14[8] + v18 + 4 * v15;
        v21 = v14[13] + v18 + 4 * v15;
        v22 = v17 + 4 * v15;
        v23 = (v7 + 8);
        do
        {
          *(v23 - 2) = *(v19 + 4 * v13);
          *(v23 - 1) = *(v20 + 4 * v13);
          *v23 = *(v21 + 4 * v13);
          v23[1] = *(v22 + 4 * v13++);
          v23 += 4;
        }

        while (v12 != v13);
      }
    }

    else
    {
      v24 = *(v3 + 24);
      v25 = v24[2];
      if (v25)
      {
        v26 = *(v3 + 32);
        v27 = *v24;
        v28 = v26[2] * (v24[1] + a2);
        v29 = (v26[3] + v28 + 4 * *v24);
        v30 = (v26[8] + v28 + 4 * v27);
        v31 = (v26[13] + v28 + 4 * v27);
        v32 = (v7 + 8);
        do
        {
          v33 = *v29++;
          *(v32 - 2) = v33;
          v34 = *v30++;
          *(v32 - 1) = v34;
          v35 = *v31++;
          *v32 = v35;
          v32 += 3;
          --v25;
        }

        while (v25);
      }
    }
  }

  v36 = (*(*(v3 + 8) + 40))(*(*(v3 + 8) + 64), a3);
  if (!(*(*(v3 + 8) + 48))(*(*(v3 + 8) + 64), a3, v9, v36, *(*(v3 + 24) + 16)))
  {
    goto LABEL_18;
  }

  v37 = **(v3 + 56);
  v38 = v37[2] * a2;
  v39 = (v37[3] + v38);
  v40 = (v37[8] + v38);
  v41 = (v37[13] + v38);
  v42 = *(*(v3 + 24) + 16);
  if (**(v3 + 16))
  {
    for (; v42; --v42)
    {
      v43 = *v36;
      *v39++ = *v36;
      *v40++ = v43;
      v44 = *v36++;
      result = v44;
      *v41++ = v44;
    }
  }

  else if (v42)
  {
    v45 = v36 + 1;
    do
    {
      *v39++ = *(v45 - 1);
      *v40++ = *v45;
      result = v45[1];
      *v41++ = result;
      v45 += 3;
      --v42;
    }

    while (v42);
  }

  return result;
}

uint64_t sub_240BADC90(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t *a5)
{
  if (sub_240B4A210(a1 + 232, a2 + 16))
  {
    v10 = *(a1 + 88);
    v11 = *(v10 + 328);
    v12 = *(v10 + 336);
    while (v11 != v12)
    {
      if (*(v11 + 12) == 4)
      {
        goto LABEL_6;
      }

      v11 += 96;
    }

    v13 = 0;
    *a5 = a1;
  }

  else
  {
LABEL_6:
    sub_240B2A11C(v56, *(a1 + 96), *(a1 + 100));
    v13 = v58;
    if (!v58)
    {
      sub_240B2A358(v55, v56);
      sub_240B32D14((a1 + 96), v55);
      sub_240B598DC(a4, v55, a1 + 216);
      v14 = *(a1 + 416);
      v15 = *(a1 + 424);
      v16 = *(a1 + 416);
      if (v16 == v15)
      {
LABEL_30:
        v31 = *(a4 + 96);
        v50 = 0uLL;
        *&v32 = v31;
        *(&v32 + 1) = HIDWORD(v31);
        v51 = v32;
        v33 = *(a4 + 88);
        v34 = *(v33 + 300);
        v35 = *(v33 + 328);
        v36 = *(v33 + 336);
        if (v35 == v36)
        {
          v39 = 0;
          v38 = a3;
        }

        else
        {
          v37 = v35;
          v38 = a3;
          while (*(v37 + 12) != 4)
          {
            v37 += 96;
            if (v37 == v36)
            {
              v39 = 0;
              goto LABEL_43;
            }
          }

          v40 = v35;
          while (*(v40 + 12) != 4)
          {
            v40 += 96;
            if (v40 == v36)
            {
              v40 = 0;
              break;
            }
          }

          v39 = *(a4 + 416) - 0x5555555555555548 * ((v40 - v35) >> 5);
        }

LABEL_43:
        if (sub_240BAD594(a4 + 216, a4 + 96, v39, &v50, a2, v38, 0, (a4 + 96), v34))
        {
          v13 = 1;
        }

        else
        {
          *(a4 + 224) = *(a2 + 8);
          v41 = *(a2 + 16);
          *(a4 + 237) = *(a2 + 21);
          *(a4 + 232) = v41;
          if (a4 + 216 != a2)
          {
            sub_240B28A14((a4 + 248), *(a2 + 32), *(a2 + 40), *(a2 + 40) - *(a2 + 32));
          }

          v13 = 0;
          v42 = *(a2 + 56);
          v43 = *(a2 + 72);
          v44 = *(a2 + 88);
          *(a4 + 320) = *(a2 + 104);
          *(a4 + 288) = v43;
          *(a4 + 304) = v44;
          *(a4 + 272) = v42;
          *(a4 + 336) = *(a2 + 120);
          *(a4 + 352) = *(a2 + 136);
          *(a4 + 376) = *(a2 + 160);
          *(a4 + 392) = *(a2 + 176);
          *(a4 + 408) = *(a2 + 192);
          *a5 = a4;
        }
      }

      else
      {
        memset(v54, 0, sizeof(v54));
        while (1)
        {
          sub_240B23590(&v50, *v16, v16[1]);
          v13 = v53;
          if (v53)
          {
            break;
          }

          v17 = v51;
          *(&v51 + 1) = 0;
          v18 = v52;
          if (v16[1] && *v16)
          {
            v19 = 0;
            v20 = *(&v17 + 1);
            do
            {
              memcpy(v20, (*(v16 + 3) + *(v16 + 2) * v19++), 4 * *v16);
              v20 += v17;
            }

            while (v19 < v16[1]);
          }

          v21 = *&v54[8];
          if (*&v54[8] >= *&v54[16])
          {
            v23 = 0xCCCCCCCCCCCCCCCDLL * ((*&v54[8] - *v54) >> 3);
            v24 = v23 + 1;
            if (v23 + 1 > 0x666666666666666)
            {
              sub_240B228BC();
            }

            if (0x999999999999999ALL * ((*&v54[16] - *v54) >> 3) > v24)
            {
              v24 = 0x999999999999999ALL * ((*&v54[16] - *v54) >> 3);
            }

            if (0xCCCCCCCCCCCCCCCDLL * ((*&v54[16] - *v54) >> 3) >= 0x333333333333333)
            {
              v25 = 0x666666666666666;
            }

            else
            {
              v25 = v24;
            }

            v62 = v54;
            if (v25)
            {
              sub_240B59980(v25);
            }

            v26 = 8 * ((*&v54[8] - *v54) >> 3);
            v59 = 0;
            v60 = v26;
            *(&v61 + 1) = 0;
            *v26 = v50;
            *(v26 + 16) = v17;
            *(v26 + 32) = v18;
            *&v61 = 40 * v23 + 40;
            v27 = 40 * v23 + *v54 - *&v54[8];
            sub_240B59A2C(*v54, *&v54[8], v26 + *v54 - *&v54[8]);
            v28 = *v54;
            v29 = *&v54[16];
            *v54 = v27;
            v49 = v61;
            *&v54[8] = v61;
            *&v61 = v28;
            *(&v61 + 1) = v29;
            v59 = v28;
            v60 = v28;
            sub_240B599D8(&v59);
            v22 = v49;
          }

          else
          {
            **&v54[8] = v50;
            *(v21 + 16) = v17;
            *(v21 + 32) = v18;
            v22 = v21 + 40;
          }

          *&v54[8] = v22;
          if (!v53)
          {
            v30 = *(&v51 + 1);
            *(&v51 + 1) = 0;
            if (v30)
            {
              atomic_fetch_add(&qword_27E519020, -*(v30 - 24));
              free(*(v30 - 32));
            }
          }

          v16 += 10;
          if (v16 == v15)
          {
            sub_240B30E18((a4 + 416));
            *(a4 + 416) = *v54;
            *(a4 + 432) = *&v54[16];
            memset(v54, 0, sizeof(v54));
            *&v50 = v54;
            sub_240B30C38(&v50);
            goto LABEL_30;
          }
        }

        *&v50 = v54;
        sub_240B30C38(&v50);
      }

      for (i = 104; i != -16; i -= 40)
      {
        sub_240B22320(&v55[i]);
      }

      if (!v58)
      {
        v46 = &v57;
        v47 = -120;
        do
        {
          sub_240B22320(v46);
          v46 -= 5;
          v47 += 40;
        }

        while (v47);
      }
    }
  }

  return v13;
}

void sub_240BAE100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52)
{
  for (i = 104; i != -16; i -= 40)
  {
    sub_240B22320((&a22 + i));
  }

  if (!a52)
  {
    v54 = &a50;
    v55 = -120;
    do
    {
      sub_240B22320(v54);
      v54 -= 5;
      v55 += 40;
    }

    while (v55);
  }

  _Unwind_Resume(a1);
}

void *sub_240BAE1C8(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    v9 = v7 >> 1;
    if (v7 >> 1 <= a4)
    {
      v9 = a4;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    sub_240B2287C(v6, v10);
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v17 = a3 - __src;
    if (v17)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v8[v17];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      do
      {
        v15 = *v13;
        v13 += 4;
        *v14 = v15;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v16 = v14;
  }

  v6[1] = v16;
  return result;
}

void *sub_240BAE2E8(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    v9 = v7 >> 1;
    if (v7 >> 1 <= a4)
    {
      v9 = a4;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    sub_240B2287C(v6, v10);
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(v8, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t sub_240BAE3EC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 152;
    sub_240B7BE18((i - 152));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_240BAE43C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *v79 = *MEMORY[0x277D85DE8];
  *(a1 + 48) = 0u;
  v7 = a1 + 48;
  *(a1 + 144) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  v8 = (a1 + 72);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  sub_240B2BCB4(a1 + 272);
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 320) = 0u;
  sub_240B3CC4C((a1 + 368), a2);
  sub_240B86714(a1 + 512, a3);
  *(a1 + 1216) = 0;
  *(a1 + 1200) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1224) = 13;
  *(a1 + 1232) = 0;
  *(a1 + 1248) = 0;
  *(a1 + 1240) = 0;
  v9 = *(a2 + 112);
  LODWORD(__src) = 5;
  *(&__src + 1) = 0;
  *&v77 = 0;
  *(&v77 + 1) = v9;
  v10 = sub_240B438A0(&__src, *(a1 + 480), *(a1 + 488));
  v75 = v10;
  v11 = sub_240B97DD0(a1 + 512);
  v12 = *(a1 + 568);
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      *(a1 + 788) = 0;
    }

    else
    {
      if (v12 != 3)
      {
LABEL_11:
        *(a1 + 728) = 0;
        *(a1 + 776) = 0;
        goto LABEL_14;
      }

      *(a1 + 728) = 0;
    }

    *(a1 + 776) = 5;
    goto LABEL_14;
  }

  if (!v12)
  {
    goto LABEL_17;
  }

  if (v12 != 1)
  {
    goto LABEL_11;
  }

  *(a1 + 788) = 1;
LABEL_14:
  if (*(a1 + 864) && sub_240B97DD0(a1 + 512))
  {
    *(a1 + 796) = 0;
    *(a1 + 728) = 0;
  }

LABEL_17:
  v14 = *(a1 + 48);
  v13 = *(a1 + 56);
  v15 = 0x2E8BA2E8BA2E8BA3 * ((v13 - v14) >> 3);
  v16 = v10 >= v15;
  v17 = v10 - v15;
  v71 = a1 + 1152;
  if (v17 != 0 && v16)
  {
    v18 = *(a1 + 64);
    if (0x2E8BA2E8BA2E8BA3 * ((v18 - v13) >> 3) < v17)
    {
      if (v10 > 0x2E8BA2E8BA2E8BALL)
      {
        sub_240B228BC();
      }

      v19 = 0x2E8BA2E8BA2E8BA3 * ((v18 - v14) >> 3);
      v20 = 2 * v19;
      if (2 * v19 <= v10)
      {
        v20 = v10;
      }

      if (v19 >= 0x1745D1745D1745DLL)
      {
        v21 = 0x2E8BA2E8BA2E8BALL;
      }

      else
      {
        v21 = v20;
      }

      if (v21 <= 0x2E8BA2E8BA2E8BALL)
      {
        operator new();
      }

LABEL_136:
      sub_240B2291C();
    }

    v22 = v13 + 88 * v17;
    do
    {
      *(v13 + 32) = 0uLL;
      *(v13 + 48) = 0uLL;
      *v13 = 0uLL;
      *(v13 + 16) = 0uLL;
      *(v13 + 64) = 8;
      *(v13 + 72) = 0;
      *(v13 + 80) = 1;
      v13 += 88;
    }

    while (v13 != v22);
    *(a1 + 56) = v22;
  }

  else if (!v16)
  {
    sub_240B7BDA8(v7, (v14 + 88 * v10));
  }

  v23 = *(a1 + 864);
  if (v23 < 0)
  {
    v23 = sub_240B97DD0(a1 + 512) ^ 1;
    *(a1 + 864) = v23;
  }

  *(a1 + 760) = (14 * *(a1 + 560) + 82);
  v72 = 0;
  v73 = 0;
  v74 = 0;
  if (v23)
  {
    __src = xmmword_240C84D10;
    v77 = unk_240C84D20;
    *v78 = xmmword_240C84D30;
    *&v78[16] = unk_240C84D40;
    sub_240BAE1C8(&v72, &__src, v79, 0x10uLL);
  }

  else
  {
    __src = xmmword_240C84D50;
    v77 = unk_240C84D60;
    *v78 = xmmword_240C84D70;
    *&v78[16] = unk_240C84D80;
    sub_240BAE1C8(&v72, &__src, v79, 0x10uLL);
    if (v10 <= 0x1D && *(a1 + 560) >= 2 && sub_240B97DD0(a3))
    {
      v24 = v72 + 4;
      v25 = v73 - (v72 + 8);
      if (v73 != v72 + 8)
      {
        memmove(v72 + 4, v72 + 8, v73 - (v72 + 8));
      }

      v73 = &v24[v25];
    }
  }

  if (*(a2 + 12) == 1)
  {
    v26 = 2;
  }

  else
  {
    v26 = -1;
  }

  if (v26 + *(*(a2 + 408) + 320) >= *(a1 + 732))
  {
    v27 = *(a1 + 732);
  }

  else
  {
    v27 = v26 + *(*(a2 + 408) + 320);
  }

  v28 = *(a1 + 560);
  if (v28 <= 2)
  {
    if (v28 < 2)
    {
      v29 = v72;
      sub_240B343B0((a1 + 736), v72, v73, (v73 - v72) >> 2);
      v30 = 256;
      goto LABEL_61;
    }

    if (v28 == 2)
    {
      v29 = v72;
      sub_240BAE2E8((a1 + 736), v72, v72 + 40, 0xAuLL);
      v30 = 96;
      goto LABEL_61;
    }

    goto LABEL_59;
  }

  if (v28 == 3)
  {
    v29 = v72;
    sub_240BAE2E8((a1 + 736), v72, v72 + 28, 7uLL);
    v30 = 48;
    goto LABEL_61;
  }

  if (v28 != 4)
  {
    if (v28 == 5)
    {
      v29 = v72;
      sub_240BAE2E8((a1 + 736), v72, v72 + 16, 4uLL);
      v30 = 24;
      goto LABEL_61;
    }

LABEL_59:
    v29 = v72;
    sub_240BAE2E8((a1 + 736), v72, v72 + 12, 3uLL);
    v30 = 16;
    goto LABEL_61;
  }

  v29 = v72;
  sub_240BAE2E8((a1 + 736), v72, v72 + 20, 5uLL);
  v30 = 32;
LABEL_61:
  *(a1 + 768) = v30;
  if (*(a1 + 560) <= 1)
  {
    if (v27 >= 1)
    {
      if (4 * v27 <= 1)
      {
        v32 = 1;
      }

      else
      {
        v32 = 4 * v27;
      }

      v33 = 16;
      do
      {
        LODWORD(__src) = v33;
        sub_240B22E1C(a1 + 736, &__src);
        ++v33;
        --v32;
      }

      while (v32);
    }
  }

  else if (v27 >= 1)
  {
    v31 = 19;
    do
    {
      LODWORD(__src) = v31;
      sub_240B22E1C(a1 + 736, &__src);
      v31 += 4;
      --v27;
    }

    while (v27);
  }

  if (v29)
  {
    operator delete(v29);
  }

  v34 = *(a1 + 776);
  if (v34 + 1 > 0xE)
  {
    goto LABEL_77;
  }

  if (((1 << (v34 + 1)) & 0x7890) == 0)
  {
    if (v34 == -1)
    {
      goto LABEL_81;
    }

LABEL_77:
    *(a1 + 1224) = v34;
    if (*(a1 + 888) != 1)
    {
      goto LABEL_90;
    }

    goto LABEL_88;
  }

  if (sub_240B97DD0(a1 + 512))
  {
    goto LABEL_77;
  }

  *(a1 + 776) = -1;
LABEL_81:
  v35 = *(a1 + 560);
  if (v35 > 0 || (*(a1 + 580) & 1) == 0 || !sub_240B97DD0(a1 + 512))
  {
    if (!*(a1 + 864) && *(a1 + 888) != 1)
    {
      if (*(a1 + 580) == 1 && sub_240B97DD0(a1 + 512))
      {
        if (v35 >= 7)
        {
          if (v35 == 7)
          {
            v34 = 6;
          }

          else
          {
            v34 = 5;
          }
        }

        else
        {
          v34 = 14;
        }
      }

      else
      {
        v34 = 5;
      }

      goto LABEL_89;
    }

    goto LABEL_88;
  }

  if (*(a1 + 864))
  {
LABEL_88:
    v34 = 0;
    goto LABEL_89;
  }

  v34 = 15;
LABEL_89:
  *(a1 + 776) = v34;
LABEL_90:
  if ((sub_240B97DD0(a1 + 512) & 1) == 0 && v34 <= 0xF && ((1 << v34) & 0xC040) != 0)
  {
    *(a1 + 776) = 0;
  }

  *&__src = 0;
  sub_240B495E8(a1 + 1152, &__src);
  if ((*(a1 + 580) & 1) == 0)
  {
    *(a1 + 784) = 1065353216;
    LODWORD(__src) = 1;
    v77 = 0uLL;
    *(&__src + 1) = 0;
    v72 = sub_240B438A0(&__src, *(a1 + 480), *(a1 + 488));
    sub_240B495E8(v71, &v72);
    LODWORD(__src) = 2;
    v77 = 0uLL;
    *(&__src + 1) = 0;
    v72 = sub_240B438A0(&__src, *(a1 + 480), *(a1 + 488));
    sub_240B495E8(v71, &v72);
    LODWORD(__src) = 3;
    v77 = 0uLL;
    *(&__src + 1) = 0;
    v72 = sub_240B438A0(&__src, *(a1 + 480), *(a1 + 488));
    sub_240B495E8(v71, &v72);
    LODWORD(__src) = 4;
    v77 = 0uLL;
    *(&__src + 1) = 0;
    v72 = sub_240B438A0(&__src, *(a1 + 480), *(a1 + 488));
    sub_240B495E8(v71, &v72);
    LODWORD(__src) = 5;
    v77 = 0uLL;
    *(&__src + 1) = 0;
    v72 = sub_240B438A0(&__src, *(a1 + 480), *(a1 + 488));
    sub_240B495E8(v71, &v72);
    sub_240B38D70(a1, *(a1 + 488));
    v36 = *(a1 + 488);
    v37 = *(a1 + 24);
    v38 = *(a1 + 32) - v37;
    if (v36 <= v38)
    {
      if (v36 < v38)
      {
        *(a1 + 32) = v37 + v36;
      }
    }

    else
    {
      sub_240B26918((a1 + 24), v36 - v38);
    }
  }

  sub_240B495E8(v71, &v75);
  v39 = (a1 + 712);
  v40 = (a1 + 760);
  v41 = *(a1 + 496);
  *(a1 + 712) = v41;
  *(a1 + 720) = v41;
  v42 = *(a1 + 72);
  v43 = *(a1 + 80);
  v44 = 0x86BCA1AF286BCA1BLL * ((v43 - v42) >> 3);
  v45 = v10 - v44;
  if (v10 <= v44)
  {
    if (v10 >= v44)
    {
      goto LABEL_116;
    }

    v49 = v42 + 152 * v10;
    while (v43 != v49)
    {
      v43 -= 152;
      sub_240B7BE18(v43);
    }
  }

  else
  {
    v46 = *(a1 + 88);
    if (0x86BCA1AF286BCA1BLL * ((v46 - v43) >> 3) < v45)
    {
      if (v10 > 0x1AF286BCA1AF286)
      {
        sub_240B228BC();
      }

      v47 = 0xD79435E50D79436 * ((v46 - v42) >> 3);
      if (v47 <= v10)
      {
        v47 = v10;
      }

      if (0x86BCA1AF286BCA1BLL * ((v46 - v42) >> 3) >= 0xD79435E50D7943)
      {
        v48 = 0x1AF286BCA1AF286;
      }

      else
      {
        v48 = v47;
      }

      *v78 = v8;
      if (v48 <= 0x1AF286BCA1AF286)
      {
        operator new();
      }

      goto LABEL_136;
    }

    v49 = v43 + 152 * v45;
    v50 = 152 * v10 - 152 * v44;
    do
    {
      v51 = *v39;
      *(v43 + 16) = *(a1 + 728);
      *v43 = v51;
      *(v43 + 24) = 0;
      *(v43 + 32) = 0;
      *(v43 + 40) = 0;
      sub_240B86FB8(v43 + 24, *(a1 + 736), *(a1 + 744), (*(a1 + 744) - *(a1 + 736)) >> 2);
      v52 = *v40;
      v53 = *(a1 + 776);
      *(v43 + 80) = *(a1 + 792);
      *(v43 + 48) = v52;
      *(v43 + 64) = v53;
      v54 = *(a1 + 800);
      *(v43 + 104) = 0;
      *(v43 + 88) = v54;
      *(v43 + 112) = 0;
      *(v43 + 120) = 0;
      sub_240B3C84C(v43 + 104, *(a1 + 816), *(a1 + 824), (*(a1 + 824) - *(a1 + 816)) >> 3);
      v55 = *(a1 + 840);
      *(v43 + 133) = *(a1 + 845);
      *(v43 + 128) = v55;
      *(v43 + 144) = *(a1 + 856);
      v43 += 152;
      v50 -= 152;
    }

    while (v50);
  }

  *(a1 + 80) = v49;
LABEL_116:
  v56 = *v8;
  v57 = *v39;
  *(v56 + 16) = *(a1 + 728);
  *v56 = v57;
  if (v56 == v39)
  {
    v60 = *v40;
    v61 = *(a1 + 776);
    *(v56 + 80) = *(a1 + 792);
    *(v56 + 48) = v60;
    *(v56 + 64) = v61;
    *(v56 + 88) = *(a1 + 800);
  }

  else
  {
    sub_240B343B0((v56 + 24), *(a1 + 736), *(a1 + 744), (*(a1 + 744) - *(a1 + 736)) >> 2);
    v58 = *v40;
    v59 = *(a1 + 776);
    *(v56 + 80) = *(a1 + 792);
    *(v56 + 48) = v58;
    *(v56 + 64) = v59;
    *(v56 + 88) = *(a1 + 800);
    sub_240BA2C68((v56 + 104), *(a1 + 816), *(a1 + 824), (*(a1 + 824) - *(a1 + 816)) >> 3);
  }

  v62 = *(a1 + 840);
  *(v56 + 133) = *(a1 + 845);
  *(v56 + 128) = v62;
  *(v56 + 144) = *(a1 + 856);
  v63 = *(a1 + 560);
  if (v63 == 7)
  {
    v64 = 5;
    goto LABEL_123;
  }

  if (v63 == 8)
  {
    v64 = 6;
LABEL_123:
    v65 = *v8;
    *(*v8 + 84) = v64;
    goto LABEL_125;
  }

  v65 = *v8;
LABEL_125:
  sub_240B8464C(&__src, a1 + 512, 0, 0, a4);
  v66 = *(v65 + 104);
  *(v65 + 88) = __src;
  if (v66)
  {
    *(v65 + 112) = v66;
    operator delete(v66);
    *(v65 + 104) = 0;
    *(v65 + 112) = 0;
    *(v65 + 120) = 0;
  }

  *(v65 + 104) = v77;
  v67 = *&v78[8];
  *(v65 + 120) = *v78;
  *(v65 + 128) = v67;
  *(v65 + 133) = *&v78[13];
  v68 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_240BAF170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, void **a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  v29 = *(v25 + 1232);
  if (v29)
  {
    *(v25 + 1240) = v29;
    operator delete(v29);
  }

  v30 = *(v25 + 1200);
  if (v30)
  {
    *(v25 + 1208) = v30;
    operator delete(v30);
  }

  __p = (v25 + 1176);
  sub_240B23988(&__p);
  v31 = *a18;
  if (*a18)
  {
    *(v25 + 1160) = v31;
    operator delete(v31);
  }

  sub_240B7BB60(v25 + 512);
  v32 = *(v25 + 344);
  if (v32)
  {
    *(v25 + 352) = v32;
    operator delete(v32);
  }

  sub_240B8C428(a14);
  __p = a15;
  sub_240B31E8C(&__p);
  __p = (v25 + 168);
  sub_240B4B18C(&__p);
  __p = a16;
  sub_240B31E8C(&__p);
  v33 = *(v25 + 120);
  if (v33)
  {
    *(v25 + 128) = v33;
    operator delete(v33);
  }

  v34 = *(v25 + 96);
  if (v34)
  {
    *(v25 + 104) = v34;
    operator delete(v34);
  }

  __p = v26;
  sub_240B7BCD0(&__p);
  __p = v27;
  sub_240B7BD54(&__p);
  v35 = *(v25 + 24);
  if (v35)
  {
    *(v25 + 32) = v35;
    operator delete(v35);
  }

  v36 = *v25;
  if (*v25)
  {
    *(v25 + 8) = v36;
    operator delete(v36);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240BAF358(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7, void *a8, uint64_t a9, uint64_t a10, __int128 *a11, uint64_t a12, char a13)
{
  v18 = a11;
  v282 = *MEMORY[0x277D85DE8];
  v274 = a4;
  v273 = a13;
  v19 = *(a9 + 4208);
  v272 = v19;
  if ((a13 & 1) == 0)
  {
    v22 = (a3 + 28);
    goto LABEL_12;
  }

  if (*(a2 + 425) == 1 && (v19 & 1) == 0)
  {
    *&v278 = vdup_n_s32(0x3F7DA86Bu);
    DWORD2(v278) = 1065199723;
    *v265 = 0uLL;
    *&v20 = *a4;
    *(&v20 + 1) = HIDWORD(*a4);
    *&v265[16] = v20;
    v21 = sub_240C0F1B0(a4, v265, &v278, a11);
    if (v21)
    {
      goto LABEL_33;
    }
  }

  v22 = (a3 + 28);
  if (*(a3 + 28) > 0x10u || *(a1 + 560) > 5 || *(a1 + 568) > 1uLL || (v19 & 1) != 0)
  {
LABEL_12:
    if (*(a1 + 1008) != *(a1 + 1016))
    {
      sub_240BA2EF4(a9 + 1432, a1 + 1000);
    }

    v25 = *a7;
    v249 = a7[1];
    if (*(a3 + 104) == 1)
    {
      v26 = 3;
      if (*(a1 + 576) == 1)
      {
        v26 = 1;
      }
    }

    else
    {
      v26 = 3;
    }

    if (!a13)
    {
      v26 = 0;
    }

    v28 = *a5;
    v27 = a5[1];
    v29 = *(a3 + 24) == 1 && *(a1 + 576) != 0;
    v271 = v29;
    v30 = *v22;
    if (*v22 < 0x20)
    {
      if (a13)
      {
LABEL_29:
        v250 = a3;
        v246 = a8;
        v31 = v30 + !v29;
        goto LABEL_31;
      }
    }

    else if (a13)
    {
      if (*(a1 + 576) && (v30 != 32 || !v29))
      {
        v21 = 1;
        goto LABEL_33;
      }

      goto LABEL_29;
    }

    v250 = a3;
    v246 = a8;
    v31 = 0;
LABEL_31:
    v32 = *(a1 + 48);
    v245 = v26 - 858993459 * ((v27 - v28) >> 3);
    sub_240B64760(v265, v25, v249, v30, v245);
    v21 = v270;
    if (v270)
    {
LABEL_32:
      sub_240B43B14(v265);
      goto LABEL_33;
    }

    v240 = v22;
    v247 = v25;
    v244 = (a1 + 512);
    v278 = *v265;
    memset(v265, 0, sizeof(v265));
    *v280 = *&v265[24];
    v279 = *&v265[16];
    v280[2] = v266;
    v266 = 0;
    *&v280[3] = v267;
    *&v280[5] = v268;
    LOBYTE(v281) = v269;
    sub_240B649A8(v32, &v278);
    v256 = v280;
    sub_240B37900(&v256);
    v256 = &v278;
    sub_240B379C0(&v256);
    v264 = 0;
    if (*(a1 + 576) || *(a1 + 580) != 1)
    {
      v35 = v25;
    }

    else
    {
      DWORD2(v278) = 1157627904;
      *&v278 = 0x4500000047000000;
      v35 = v25;
      if (*v244 > 0.0 && !*(a1 + 864))
      {
        __asm { FMOV            V2.2S, #1.0 }

        *&v278 = vmul_f32(vdiv_f32(_D2, vmla_n_f32(_D2, 0x4160000041B80000, *v244)), 0x4500000047000000);
        DWORD2(v278) = DWORD1(v278);
        *v244 = 0.0;
      }

      v40 = *(a1 + 952);
      if (*(a1 + 960) - v40 == 12)
      {
        sub_240BC0BC8(a9 + 208, v40);
      }

      else
      {
        sub_240BC0BC8(a9 + 208, &v278);
        v31 = 12;
      }
    }

    v41 = *(v32 + 64);
    if (v41 < 32)
    {
      v42 = ~(-1 << v41);
    }

    else
    {
      v42 = 0;
    }

    v255 = a2;
    if (a13)
    {
      v43 = v264;
      if (v264 <= 2)
      {
        v242 = a9 + 268;
        v44 = a2 + 48;
        while (1)
        {
          v45 = *(a1 + 576);
          if (*(v250 + 104) == 1 && v43 != 0 && v45 == 1)
          {
            goto LABEL_75;
          }

          v263 = v43;
          if (v43 != 2 && !v45)
          {
            break;
          }

          v275 = v42;
          v48 = v43;
          if (v45)
          {
            v49 = v43;
LABEL_68:
            v65 = *(v250 + 28);
            v261 = *(v250 + 32);
            v262 = v65;
            v66 = *(v255 + 60) - byte_240C85334[*(v44 + 4 * v49)];
            v67 = *v32;
            *(*v32 + (v48 << 6) + 56) = v66;
            *(v67 + (v263 << 6) + 60) = *(v255 + 61) - byte_240C85338[*(v44 + 4 * v264)];
            v68 = v67 + (v263 << 6);
            v260 = (v35 - 1 + (1 << *(v68 + 56))) / (1 << *(v68 + 56));
            v69 = 1 << *(v68 + 60);
            v70 = (v249 - 1 + v69) / v69;
            *(v68 + 40) = v260;
            *(v68 + 48) = v70;
            v21 = sub_240B43734(v68);
            if (v21)
            {
              goto LABEL_32;
            }

            v259 = 0;
            *&v278 = &v259;
            *(&v278 + 1) = &v274;
            v279 = &v264;
            v280[0] = a6;
            v280[1] = v32;
            v280[2] = &v263;
            v280[3] = &v260;
            v280[4] = &v262;
            v280[5] = &v261;
            v280[6] = &v271;
            v281 = &v275;
            if (a11)
            {
              v71 = sub_240BB0E70(a11, v70, &v278);
            }

            else
            {
              v256 = 0;
              *v257 = &v256;
              v71 = sub_240BB0E70(&v256, v70, &v278);
            }

            v21 = v71;
            if (v71)
            {
              goto LABEL_32;
            }

            v72 = atomic_load(&v259);
            if (v72)
            {
              goto LABEL_98;
            }

            goto LABEL_74;
          }

          v50 = *(v242 + 4 * v43);
          v275 = v50;
          v49 = v43;
          if (v43 != 2)
          {
            goto LABEL_68;
          }

          if (v249)
          {
            v51 = 0;
            v52 = 0;
            v53 = v274;
            v54 = v274[2];
            v55 = *v32;
            v57 = *(*v32 + 16);
            v56 = *(*v32 + 24);
            do
            {
              if (v35)
              {
                v58 = (*(v55 + (v263 << 6) + 24) + *(v55 + (v263 << 6) + 16) * v52);
                v59 = (v53[5 * v264 + 3] + v51);
                v60 = v56;
                v61 = v35;
                do
                {
                  v62 = *v59++;
                  v63 = v62 * v50 + 0.5;
                  *v58 = v63;
                  v64 = *v60++;
                  *v58++ = (v63 - v64 + ((v63 - v64) >> 31)) & 0xFFFFFFFE;
                  --v61;
                }

                while (v61);
              }

              ++v52;
              v56 = (v56 + v57);
              v51 += v54;
            }

            while (v52 != v249);
          }

LABEL_74:
          v43 = v264;
LABEL_75:
          v264 = v43 + 1;
          v234 = v43++ < 2;
          if (!v234)
          {
            goto LABEL_76;
          }
        }

        v48 = (1 - v43);
        v263 = 1 - v43;
        v49 = v43;
        v275 = *(v242 + 4 * v43);
        goto LABEL_68;
      }

LABEL_76:
      if (*(v250 + 104) == 1 && *(a1 + 576) == 1)
      {
        v264 = 1;
      }
    }

    v243 = v42;
    v248 = a7;
    v275 = 0.0;
    if (a5[1] != *a5)
    {
      v73 = 0;
      v74 = v264;
      do
      {
        v75 = *(v250 + 328);
        v76 = *(*(v255 + 272) + 4 * v73);
        v77 = *v32 + (v74 << 6);
        v78 = ((v76 - 1 + v248[3]) / v76);
        *(v77 + 40) = ((v76 - 1 + v248[2]) / v76);
        *(v77 + 48) = v78;
        v21 = sub_240B43734(v77);
        if (v21)
        {
          goto LABEL_32;
        }

        v79 = v75 + 96 * v73;
        v80 = __clz(v76);
        v81 = v80 ^ 0x3F;
        v82 = 64 - v80;
        v83 = *(v255 + 268);
        v84 = __clz(v83) ^ 0x1F;
        v85 = (v83 & (v83 - 1)) != 0;
        if ((v76 & (v76 - 1)) == 0)
        {
          v82 = v81;
        }

        v86 = v82 - v85 - v84;
        v87 = *v32;
        *(*v32 + (v264 << 6) + 60) = v86;
        *(v87 + (v264 << 6) + 56) = v86;
        v88 = *(v79 + 28);
        v263 = v88;
        v262 = *(v79 + 32);
        LOBYTE(v261) = *(v79 + 24);
        v89 = ~(-1 << *(v79 + 28));
        if (v261)
        {
          v89 = 1.0;
        }

        v260 = *&v89;
        if (v88 + (v261 ^ 1) > v31)
        {
          v31 = v88 + (v261 ^ 1);
        }

        v259 = 0;
        v90 = *(v87 + (v264 << 6) + 4);
        *&v278 = &v259;
        *(&v278 + 1) = a5;
        v279 = &v275;
        v280[0] = a6;
        v280[1] = v32;
        v280[2] = &v264;
        v280[3] = &v263;
        v280[4] = &v262;
        v280[5] = &v261;
        v280[6] = &v260;
        if (a11)
        {
          v91 = sub_240BB0F20(a11, v90, &v278);
        }

        else
        {
          v256 = 0;
          *v257 = &v256;
          v91 = sub_240BB0F20(&v256, v90, &v278);
        }

        v35 = v247;
        v21 = v91;
        if (v91)
        {
          goto LABEL_32;
        }

        v92 = atomic_load(&v259);
        if (v92)
        {
          goto LABEL_98;
        }

        v73 = *&v275 + 1;
        *&v275 = v73;
        v74 = ++v264;
      }

      while (v73 < 0xCCCCCCCCCCCCCCCDLL * ((a5[1] - *a5) >> 3));
    }

    if (*(a1 + 912) == 5)
    {
      v93 = 16;
    }

    else
    {
      v93 = 32;
    }

    if (v31 > v93)
    {
LABEL_98:
      v21 = 1;
      goto LABEL_32;
    }

    v239 = v31;
    v94 = a1 + 512;
    v238 = v93;
    if ((sub_240B97DD0(v244) & 1) == 0)
    {
      if (!*(a1 + 576))
      {
        *(a1 + 876) = 0;
      }

      *(a1 + 888) = 0;
      *(a1 + 880) = 0;
      if (v272)
      {
        goto LABEL_109;
      }

      goto LABEL_131;
    }

    if (*(a1 + 884))
    {
      v95 = v272;
    }

    else
    {
      v95 = v272;
      if ((*(a1 + 888) & 1) == 0)
      {
        if (v272)
        {
          goto LABEL_109;
        }

        goto LABEL_131;
      }
    }

    if (v95)
    {
LABEL_109:
      v96 = 1;
      goto LABEL_134;
    }

    if ((((*(v32 + 8) - *v32) >> 6) - *(v32 + 72)) >= 2)
    {
      sub_240B65F00(&v278, 1);
      v97 = *(v32 + 72);
      HIDWORD(v278) = v97;
      v98 = ((*(v32 + 8) - *v32) >> 6) - v97;
      v99 = v249 * v35;
      v100 = (v249 * v35) >> 1;
      v101 = *(a1 + 884);
      if (v101 >= 0)
      {
        v102 = *(a1 + 884);
      }

      else
      {
        v102 = -v101;
      }

      if (v102 < v100)
      {
        LODWORD(v100) = v102;
      }

      HIDWORD(v279) = v98;
      LODWORD(v280[0]) = v100;
      LOBYTE(v280[5]) = v101 >= 0;
      if (v98 == 3)
      {
        v103 = *(a1 + 888);
      }

      else
      {
        v103 = 0;
      }

      BYTE1(v280[5]) = v103;
      if (v103 == 1)
      {
        HIDWORD(v280[4]) = *(a1 + 1224);
      }

      v256 = &unk_2852A1238;
      *&v257[4] = 0u;
      memset(v258, 0, sizeof(v258));
      sub_240B53CC8(&v256);
      sub_240BB0FD0(v32, &v278, *(a1 + 560), &v256, a11, *(a1 + 856));
      *&v278 = &unk_2852A1210;
      v256 = &v280[1];
      sub_240B388C4(&v256);
      v35 = v247;
      if ((((*(v32 + 8) - *v32) >> 6) - *(v32 + 72)) >= 4)
      {
        sub_240B65F00(&v278, 1);
        HIDWORD(v278) = *(v32 + 72);
        v104 = v99 / 3;
        v105 = *(a1 + 884);
        if (v105 >= 0)
        {
          v106 = *(a1 + 884);
        }

        else
        {
          v106 = -v105;
        }

        if (v106 < v104)
        {
          LODWORD(v104) = v106;
        }

        HIDWORD(v279) = ((*(v32 + 8) - *v32) >> 6) + ~HIDWORD(v278);
        LODWORD(v280[0]) = v104;
        LOBYTE(v280[5]) = v105 >= 0;
        BYTE1(v280[5]) = *(a1 + 888);
        if (BYTE1(v280[5]) == 1)
        {
          HIDWORD(v280[4]) = *(a1 + 1224);
        }

        v256 = &unk_2852A1238;
        *&v257[4] = 0u;
        memset(v258, 0, sizeof(v258));
        sub_240B53CC8(&v256);
        sub_240BB0FD0(v32, &v278, *(a1 + 560), &v256, a11, *(a1 + 856));
        *&v278 = &unk_2852A1210;
        v256 = &v280[1];
        sub_240B388C4(&v256);
      }
    }

LABEL_131:
    if (*(a1 + 876) <= 0.0 || (*(a1 + 888) & 1) != 0)
    {
      v96 = 0;
    }

    else if (*(a1 + 560) < 9 || (v96 = 0, v273 == 1) && *v240 >= 9)
    {
      v253 = ((*(v32 + 8) - *v32) >> 6) - *(v32 + 72);
      if (v253)
      {
        v109 = 0;
        v110 = 0;
        v111 = (v249 * v35) >> 4;
        v112 = v243;
        do
        {
          v113 = (*v32 + (*(v32 + 72) << 6) + (v110 << 6));
          v114 = v113[6];
          if (v114)
          {
            v115 = 0;
            v117 = v113[2];
            v116 = v113[3];
            v118 = 0x80000000;
            v119 = 0x7FFFFFFF;
            v120 = v113[5];
            do
            {
              v121 = v116;
              for (i = v120; i; --i)
              {
                v124 = *v121++;
                v123 = v124;
                if (v124 < v119)
                {
                  v119 = v123;
                }

                if (v123 > v118)
                {
                  v118 = v123;
                }
              }

              ++v115;
              v116 = (v116 + v117);
            }

            while (v115 != v114);
            v125 = v119;
            v126 = v118 + 1;
          }

          else
          {
            v126 = -2147483647;
            v125 = 0x7FFFFFFFLL;
          }

          sub_240B65F00(&v278, 1);
          v127 = *(a1 + 876) / 100.0;
          HIDWORD(v278) = *(v32 + 72) + v110;
          v128 = (v127 * (v126 - v125));
          if (v128 >= v111)
          {
            v128 = v111;
          }

          HIDWORD(v279) = 1;
          LODWORD(v280[0]) = v128;
          v256 = &unk_2852A1238;
          *&v257[4] = 0u;
          memset(v258, 0, sizeof(v258));
          v276 = xmmword_240C112C0;
          *&v275 = &unk_2852A2120;
          v277 = 0;
          sub_240B63734(&v256, &v275);
          if (sub_240BB0FD0(v32, &v278, *(a1 + 560), &v256, a11, 0))
          {
            v129 = (*v32 + (*(v32 + 72) << 6) + (v110 << 6));
            v130 = v129[6];
            if (v130)
            {
              v131 = 0;
              v133 = v129[2];
              v132 = v129[3];
              v134 = 0x80000000;
              v135 = v129[5];
              do
              {
                v136 = v132;
                for (j = v135; j; --j)
                {
                  v139 = *v136++;
                  v138 = v139;
                  if (v139 > v134)
                  {
                    v134 = v138;
                  }
                }

                ++v131;
                v132 = (v132 + v133);
              }

              while (v131 != v130);
            }

            else
            {
              v134 = 0x80000000;
            }

            if (v134 < v112)
            {
              v112 = v134;
            }

            v140 = 32 - __clz(v134 - 1);
            if (v134 <= 0)
            {
              v141 = 0;
            }

            else
            {
              v141 = v140;
            }

            if (v109 <= v141)
            {
              v109 = v141;
            }
          }

          else
          {
            v109 = v239;
          }

          *&v278 = &unk_2852A1210;
          v256 = &v280[1];
          sub_240B388C4(&v256);
          ++v110;
        }

        while (v110 != v253);
        v243 = v112;
        v96 = 0;
        v239 = v109;
        v94 = a1 + 512;
      }

      else
      {
        v96 = 0;
        v239 = 0;
      }
    }

LABEL_134:
    v241 = v96;
    if (*(a1 + 576) == 1 && v273 == 1 && (((*(v32 + 8) - *v32) >> 6) - *(v32 + 72)) >= 3 && v239 + 1 < v93)
    {
      v107 = *(a1 + 868);
      if (v107 < 0)
      {
        if (!sub_240B97DD0(v94) || *(a1 + 560) >= 6)
        {
          sub_240B65F00(&v278, 0);
          HIDWORD(v278) = *(v32 + 72);
          LODWORD(v279) = 6;
          v256 = &unk_2852A1238;
          *&v257[4] = 0u;
          memset(v258, 0, sizeof(v258));
          sub_240B53CC8(&v256);
          sub_240BB1198(v32, &v278, &v256, a11, 0);
          goto LABEL_183;
        }
      }

      else if (v107 >= 1)
      {
        sub_240B65F00(&v278, 0);
        v108 = *(a1 + 868);
        HIDWORD(v278) = *(v32 + 72);
        LODWORD(v279) = v108;
        v256 = &unk_2852A1238;
        *&v257[4] = 0u;
        memset(v258, 0, sizeof(v258));
        sub_240B53CC8(&v256);
        sub_240BB1198(v32, &v278, &v256, a11, 0);
LABEL_183:
        *&v278 = &unk_2852A1210;
        v256 = &v280[1];
        sub_240B388C4(&v256);
        ++v239;
      }
    }

    v254 = v32;
    v142 = *(a1 + 872);
    if (v142 >= 1)
    {
      v144 = *v32;
      v143 = *(v32 + 8);
      if (v142 < (v143 - *v32) >> 6)
      {
        v145 = 0;
        v146 = *(a1 + 872);
        do
        {
          if (v142)
          {
            do
            {
              sub_240B65F00(&v278, 0);
              v147 = v142 + v145 - 2;
              if (v142 == 1)
              {
                v147 = v145;
                v148 = 28;
              }

              else
              {
                v148 = 14;
              }

              HIDWORD(v278) = v147;
              LODWORD(v279) = v148;
              v256 = &unk_2852A1238;
              if (v142 == 1)
              {
                v142 = 0;
              }

              else
              {
                v142 -= 2;
              }

              *&v257[4] = 0u;
              memset(v258, 0, sizeof(v258));
              v276 = xmmword_240C112C0;
              *&v275 = &unk_2852A2120;
              v277 = 0;
              sub_240B63734(&v256, &v275);
              sub_240BB1198(v32, &v278, &v256, a11, 0);
              *&v278 = &unk_2852A1210;
              v256 = &v280[1];
              sub_240B388C4(&v256);
            }

            while (v142);
            v146 = *(a1 + 872);
            v144 = *v32;
            v143 = *(v32 + 8);
          }

          ++v145;
          v142 = v146;
        }

        while (v145 + v146 < ((v143 - v144) >> 6));
      }
    }

    if (v241)
    {
      v149 = v248;
      v150 = (a1 + 512);
      v151 = v243;
      v153 = v238;
      v152 = v239;
    }

    else
    {
      v149 = v248;
      v151 = v243;
      v153 = v238;
      v152 = v239;
      if (*(a1 + 864))
      {
        v150 = (a1 + 512);
        if (*v32 != *(v32 + 8) && v239 + 2 < v238)
        {
          sub_240B65F00(&v278, 2);
          v256 = &unk_2852A1238;
          *&v257[4] = 0u;
          memset(v258, 0, sizeof(v258));
          sub_240B53CC8(&v256);
          sub_240BB1198(v32, &v278, &v256, a11, 0);
          *&v278 = &unk_2852A1210;
          v256 = &v280[1];
          sub_240B388C4(&v256);
          v152 = v239 + 2;
        }
      }

      else
      {
        v150 = (a1 + 512);
      }
    }

    if (v152 >= v153)
    {
      *(a1 + 868) = 0;
    }

    if ((sub_240B97DD0(v150) & 1) == 0)
    {
      v154 = (*(v32 + 8) - *v32) >> 6;
      LODWORD(v278) = 1;
      sub_240B2B4A8((a1 + 96), v154, &v278);
      if (*(a1 + 864))
      {
        v155 = 0.25;
      }

      else
      {
        v155 = 0.025;
      }

      if (*(a1 + 576))
      {
        v156 = v151 / 255.0;
      }

      else
      {
        v156 = 1.0;
      }

      v278 = 0uLL;
      v157 = 3;
      v279 = 0;
      do
      {
        *&v256 = v156 * (v155 * *v150);
        sub_240BB1EE4(&v278, &v256);
        --v157;
      }

      while (v157);
      if (a5[1] != *a5)
      {
        v158 = 0;
        v159 = 28;
        do
        {
          v160 = *(*(v250 + 328) + v159);
          if (v160 < 32)
          {
            v161 = ~(-1 << v160);
          }

          else
          {
            v161 = 0;
          }

          v162 = *(a1 + 520);
          v163 = 0.0;
          if (v158 < (*(a1 + 528) - v162) >> 2)
          {
            v163 = *(v162 + 4 * v158);
            if (v163 < 0.0)
            {
              v163 = *v150;
            }
          }

          *&v256 = (v161 / 255.0) * (v155 * v163);
          sub_240BB1EE4(&v278, &v256);
          ++v158;
          v159 += 96;
        }

        while (v158 < 0xCCCCCCCCCCCCCCCDLL * ((a5[1] - *a5) >> 3));
      }

      v164 = *(a1 + 728);
      if (v164 == 0.0)
      {
        v21 = 1;
        v168 = v278;
      }

      else
      {
        v165 = *(v32 + 72);
        v166 = *v32;
        v167 = (*(v32 + 8) - *v32) >> 6;
        v168 = v278;
        if (v167 > v165)
        {
          v169 = v165;
          v170 = 3;
          if (v273)
          {
            v170 = 0;
          }

          v171 = *(a1 + 576);
          v172 = *(a1 + 96);
          v173 = *(v32 + 72);
          do
          {
            v174 = (v166 + (v169 << 6));
            v175 = v174[15] + v174[14];
            if (v175 >= 16)
            {
              v176 = 16;
            }

            else
            {
              v176 = v174[15] + v174[14];
            }

            v177 = v175 > 0;
            v178 = v170 + (v169 - v165) % v245;
            if (v245 >= 3 && v167 - 4 <= v169 && *(a1 + 864))
            {
              v178 = 1;
            }

            v179 = v176 - v177;
            if (v171 || v178 > 2)
            {
              if (!*(a1 + 868) || (v178 - 1) > 1)
              {
                v182 = flt_240C84E9C[v179] * ((v168[v178] * 0.35) * 1.1);
                goto LABEL_244;
              }

              v180 = v168[v178] * 0.35;
              v181 = flt_240C84E5C[v179];
            }

            else
            {
              v180 = v168[v178] * 2.4;
              v181 = flt_240C84D9C[16 * v178 + v179];
            }

            v182 = v180 * v181;
LABEL_244:
            if (v182 <= 1)
            {
              v183 = 1;
            }

            else
            {
              v183 = v182;
            }

            if (v182 >= 2)
            {
              v184 = v174[1];
              if (v184)
              {
                v185 = 0;
                v187 = *(v174 + 2);
                v186 = *(v174 + 3);
                v188 = v183 >> 1;
                LODWORD(v189) = *v174;
                do
                {
                  if (v189)
                  {
                    v190 = 0;
                    do
                    {
                      v191 = *(v186 + 4 * v190);
                      if (v191 < 0)
                      {
                        v192 = (v188 - v191) % v183 - (v188 - v191);
                      }

                      else
                      {
                        v192 = (v191 + v188) / v183 * v183;
                      }

                      *(v186 + 4 * v190++) = v192;
                      v189 = *v174;
                    }

                    while (v190 < v189);
                    v184 = v174[1];
                    v18 = a11;
                  }

                  ++v185;
                  v186 += v187;
                }

                while (v185 < v184);
              }
            }

            *(v172 + 4 * v169) = v183;
            LODWORD(v173) = v173 + 1;
            v169 = v173;
            v149 = v248;
          }

          while (v167 > v173);
        }

        v21 = 0;
      }

      if (v168)
      {
        operator delete(v168);
      }

      if (v164 == 0.0)
      {
        goto LABEL_32;
      }
    }

    if (v149[15])
    {
      v193 = 0;
      do
      {
        v194 = v149[12];
        v195 = v193 / v194;
        v196 = v193 % v194;
        v197 = v149[17];
        v198 = v197 * v196;
        v199 = v196 + (*v246 >> 11);
        v200 = v197 * v195;
        v201 = v195 + (v246[1] >> 11);
        v202 = *(a1 + 464);
        *&v278 = v198;
        *(&v278 + 1) = v200;
        v279 = v197;
        v280[0] = v197;
        v280[1] = 0x3E800000003;
        LODWORD(v280[2]) = 2;
        v280[3] = 0;
        v280[4] = v199 + v201 * v202;
        v280[5] = 0;
        sub_240BB1FBC(a1 + 1232, &v278);
        ++v193;
      }

      while (v193 < v149[15]);
    }

    v203 = v149[14];
    if (v203)
    {
      v204 = 0;
      v205 = *(a9 + 4272);
      do
      {
        if (v205)
        {
          v206 = 0;
          v207 = v149[10];
          v208 = v204 / v207;
          v209 = v204 % v207;
          v210 = v149[16];
          v211 = v210 * v209;
          v212 = v210 * v208;
          v213 = *v246 / *(a1 + 496) + v209 + (v246[1] / *(a1 + 496) + v208) * *(a1 + 448);
          do
          {
            LODWORD(v256) = 0;
            LODWORD(v275) = 0;
            sub_240B3A8D8((v255 + 104), v206, &v275, &v256);
            *&v278 = v211;
            *(&v278 + 1) = v212;
            v279 = v210;
            v280[0] = v210;
            v280[1] = __PAIR64__(v256, LODWORD(v275));
            LODWORD(v280[2]) = 5;
            v280[3] = 0;
            v280[4] = v213;
            v280[5] = v206;
            sub_240BB1FBC(a1 + 1232, &v278);
            ++v206;
            v205 = *(a9 + 4272);
          }

          while (v206 < v205);
          v149 = v248;
          v203 = v248[14];
        }

        ++v204;
      }

      while (v204 < v203);
    }

    if (*(a1 + 1240) - *(a1 + 1232) == 144)
    {
      v278 = 0u;
      v279 = v247;
      v280[0] = v249;
      v280[1] = 0x3E800000000;
      memset(&v280[2], 0, 32);
      sub_240BB1FBC(a1 + 1232, &v278);
    }

    v214 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 56) - *(a1 + 48)) >> 3);
    v215 = *(a1 + 1184);
    v216 = *(a1 + 1176);
    v217 = 0xAAAAAAAAAAAAAAABLL * ((v215 - v216) >> 3);
    v218 = v214 - v217;
    if (v214 <= v217)
    {
      if (v214 < v217)
      {
        v222 = v216 + 0x5D1745D1745D1748 * ((*(a1 + 56) - *(a1 + 48)) >> 3);
        if (v215 != v222)
        {
          v223 = *(a1 + 1184);
          do
          {
            v225 = *(v223 - 24);
            v223 -= 24;
            v224 = v225;
            if (v225)
            {
              *(v215 - 16) = v224;
              operator delete(v224);
            }

            v215 = v223;
          }

          while (v223 != v222);
        }

        *(a1 + 1184) = v222;
      }
    }

    else
    {
      v219 = *(a1 + 1192);
      if (0xAAAAAAAAAAAAAAABLL * ((v219 - v215) >> 3) < v218)
      {
        if (v214 <= 0xAAAAAAAAAAAAAAALL)
        {
          v220 = 0xAAAAAAAAAAAAAAABLL * ((v219 - v216) >> 3);
          if (2 * v220 > v214)
          {
            v214 = 2 * v220;
          }

          if (v220 >= 0x555555555555555)
          {
            v221 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v221 = v214;
          }

          if (v221 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_240B2291C();
        }

        sub_240B228BC();
      }

      bzero(*(a1 + 1184), 24 * ((24 * v218 - 24) / 0x18) + 24);
      *(a1 + 1184) = v215 + 24 * ((24 * v218 - 24) / 0x18) + 24;
    }

    v226 = 954437177 * ((*(a1 + 1240) - *(a1 + 1232)) >> 3);
    *&v278 = a1;
    *(&v278 + 1) = &v273;
    v279 = &v272;
    if (v18)
    {
      v227 = sub_240BB2120(v18, v226, &v278);
    }

    else
    {
      v256 = 0;
      *v257 = &v256;
      v227 = sub_240BB2120(&v256, v226, &v278);
    }

    v21 = v227;
    if (!v227)
    {
      v228 = *(a1 + 48);
      v229 = v228[9];
      v230 = *v228;
      v231 = (v228[1] - *v228) >> 6;
      if (v229 < v231)
      {
        v232 = *(a1 + 496);
        v233 = (v230 + (v229 << 6) + 48);
        while (1)
        {
          v234 = *(v233 - 1) > v232 || *v233 > v232;
          if (v234)
          {
            break;
          }

          v233 += 8;
          if (v231 == ++v229)
          {
            goto LABEL_311;
          }
        }
      }

      if (v229 < v231)
      {
        v235 = v229 << 6;
        do
        {
          v236 = v230 + v235;
          v237 = *(v230 + v235 + 24);
          *v236 = 0u;
          *(v236 + 16) = 0u;
          if (v237)
          {
            atomic_fetch_add(&qword_27E519020, -*(v237 - 24));
            free(*(v237 - 32));
          }

          *(v236 + 32) = 0;
          ++v229;
          v230 = *v228;
          v235 += 64;
        }

        while (v229 < (v228[1] - *v228) >> 6);
      }

LABEL_311:
      v21 = sub_240B63CEC(v254, *(*(a1 + 72) + 8));
    }

    goto LABEL_32;
  }

  v23 = v274;
  v24 = *(a1 + 576);
  v21 = sub_240BB88F4();
  if (!v21)
  {
    sub_240BB8708((a9 + 1256), v23);
    v22 = (a3 + 28);
    goto LABEL_12;
  }

LABEL_33:
  v33 = *MEMORY[0x277D85DE8];
  return v21;
}

void sub_240BB0D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void **a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  *(v37 - 208) = &unk_2852A1210;
  a26 = (v37 - 176);
  sub_240B388C4(&a26);
  sub_240B43B14(&a37);
  _Unwind_Resume(a1);
}

BOOL sub_240BB0E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a2;
  v6[0] = sub_240B2AC64;
  v6[1] = a3;
  if (*a1)
  {
    return (*a1)(*(a1 + 8), v6, sub_240BB3E24, sub_240BB3D7C, 0, a2) != 0;
  }

  for (i = 0; i != v3; ++i)
  {
    sub_240BB3D7C(v6, i);
  }

  return 0;
}

BOOL sub_240BB0F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a2;
  v6[0] = sub_240B2AC64;
  v6[1] = a3;
  if (*a1)
  {
    return (*a1)(*(a1 + 8), v6, sub_240BB3BE8, sub_240BB3B44, 0, a2) != 0;
  }

  for (i = 0; i != v3; ++i)
  {
    sub_240BB3B44(v6, i);
  }

  return 0;
}

uint64_t sub_240BB0FD0(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, __int128 *a5, char a6)
{
  if ((a6 & 1) != 0 || a3 >= 3)
  {

    return sub_240BB1198(a1, a2, a4, a5, a6);
  }

  else
  {
    v10 = sub_240BB3870(*a1, a1[1]);
    v11 = sub_240BB1198(a1, a2, a4, a5, 0);
    result = 0;
    if (v11)
    {
      if (sub_240BB3870(*a1, a1[1]) <= v10)
      {
        return 1;
      }

      else
      {
        v13 = a1[4];
        v18 = &unk_2852A1210;
        v14 = *(v13 - 6);
        v19 = *(v13 - 4);
        v20 = v14;
        memset(v21, 0, 24);
        sub_240B4403C(v21, *(v13 - 5), *(v13 - 4), 0xAAAAAAAAAAAAAAABLL * ((*(v13 - 4) - *(v13 - 5)) >> 3));
        v15 = *(v13 - 2);
        v22 = *(v13 - 4);
        v21[3] = v15;
        if (!sub_240B65FBC(&v18, a1, a4, a5))
        {
          v16 = a1[4];
          v17 = *(v16 - 9);
          v16 -= 9;
          (*v17)(v16);
          a1[4] = v16;
        }

        v18 = &unk_2852A1210;
        v23 = v21;
        sub_240B388C4(&v23);
        return 0;
      }
    }
  }

  return result;
}

void sub_240BB117C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_240B388C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_240BB1198(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v152 = &unk_2852A1210;
  v153 = *(a2 + 8);
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  v154 = v11;
  v155 = 0;
  v156 = 0;
  v157 = 0;
  sub_240B4403C(&v155, v10, *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v10) >> 3));
  v158 = *(a2 + 56);
  v159 = *(a2 + 64);
  if (a5)
  {
    if (!sub_240B66BA4(&v152, a1))
    {
      goto LABEL_154;
    }

    goto LABEL_26;
  }

  if (v153 != 2)
  {
    if (v153 == 1)
    {
      v15 = v159;
      memset(&v173[8], 0, 32);
      v174 = 0u;
      v175 = 0u;
      v176 = 0u;
      v177 = 0u;
      v178 = 0u;
      v179 = 0u;
      v180 = 0u;
      v181 = 0u;
      LODWORD(v169) = v154;
      v16 = HIBYTE(v159);
      v173[0] = 0;
      v182 = 0;
      LODWORD(v168) = HIDWORD(v154);
      if (HIBYTE(v159) != 1 || *(a1 + 16) < 8 || (v17 = sub_240BDEAA4(a1, DWORD1(v153), DWORD1(v153) + HIDWORD(v153) - 1, &v169, &v168, v159, 1, &v158 + 1, a3, v173)) == 0)
      {
        v173[0] = 1;
        v17 = sub_240BDEAA4(a1, DWORD1(v153), DWORD1(v153) + HIDWORD(v153) - 1, &v154, &v154 + 1, v15, v16, &v158 + 1, a3, v173);
      }

      for (i = 0; i != -72; i -= 24)
      {
        v19 = *(&v181 + i);
        if (v19)
        {
          *(&v181 + i + 8) = v19;
          operator delete(v19);
        }
      }

      if (*(&v176 + 1))
      {
        operator delete(*(&v176 + 1));
      }

      for (j = 0; j != -72; j -= 24)
      {
        v21 = *(&v175 + j);
        if (v21)
        {
          *(&v175 + j + 8) = v21;
          operator delete(v21);
        }
      }

      if (!v17)
      {
        goto LABEL_154;
      }
    }

    else if (!v153 && !sub_240B66F50(a1, DWORD1(v153), DWORD1(v153) + 2) && DWORD2(v153))
    {
      v167 = DWORD2(v153) / 7;
      v166 = DWORD2(v153) % 7;
      *&v168 = DWORD1(v153);
      v12 = *a1 + (DWORD1(v153) << 6);
      v165 = *(v12 + 40);
      v13 = *(v12 + 48);
      v163 = (DWORD2(v153) % 7) & 1;
      v164 = (DWORD2(v153) % 7) >> 1;
      *v173 = a1;
      *&v173[8] = &v168;
      *&v173[16] = &v167;
      *&v173[24] = &v166;
      *&v173[32] = &v165;
      *&v174 = &v164;
      *(&v174 + 1) = &v163;
      if (a4)
      {
        v14 = sub_240BE650C(a4, v13, v173);
      }

      else
      {
        *&v169 = 0;
        *(&v169 + 1) = &v169;
        v14 = sub_240BE650C(&v169, v13, v173);
      }

      if (!v14)
      {
        goto LABEL_154;
      }
    }

    goto LABEL_26;
  }

  v160 = 0;
  v161 = 0;
  v162 = 0;
  sub_240B4403C(&v160, v155, v156, 0xAAAAAAAAAAAAAAABLL * ((v156 - v155) >> 3));
  v23 = v160;
  v24 = v161;
  if (v160 == v161)
  {
    sub_240B657D0(&v160, a1);
    v23 = v160;
    v24 = v161;
  }

  if (v23 == v24)
  {
    v40 = 1;
    goto LABEL_153;
  }

  v25 = 0;
  v137 = a1;
  while (1)
  {
    v26 = v23 + 24 * v25;
    v27 = *(v26 + 12);
    if (v27 < 0)
    {
      v40 = 1;
      goto LABEL_153;
    }

    v134 = v25;
    v28 = (a1[1] - *a1) >> 6;
    v29 = *(v26 + 16);
    v30 = v27 + v29 - 1;
    v33 = v30 < 0 || v30 < v27 || v30 >= v28;
    v34 = v27 >= v28 || v33;
    if (v34)
    {
      v40 = v34;
      goto LABEL_153;
    }

    v35 = v29 + v27;
    v140 = v35 - 1;
    if (v27 <= (v35 - 1))
    {
      break;
    }

LABEL_140:
    v25 = v134 + 1;
    if (v134 + 1 >= 0xAAAAAAAAAAAAAAABLL * ((v24 - v23) >> 3))
    {
      v40 = 0;
      goto LABEL_153;
    }
  }

  if (*(v26 + 9))
  {
    v36 = v35;
  }

  else
  {
    v36 = (a1[1] - *a1) >> 6;
  }

  v138 = v36 - v27;
  v139 = *(v26 + 8);
  while (1)
  {
    v37 = *a1 + (v27 << 6);
    v38 = *(v37 + 40);
    v142 = v138 + v27;
    v143 = v27;
    v141 = *(v37 + 56);
    if (v139)
    {
      break;
    }

    v147 = (*(v37 + 48) + 1) >> 1;
    sub_240B3AC2C(v173, v38, v147);
    v40 = v174;
    if (v174)
    {
      goto LABEL_148;
    }

    v168 = *v173;
    v150 = *&v173[16];
    v144 = *&v173[32];
    v145 = *&v173[24];
    v76 = *(v37 + 40);
    v75 = *(v37 + 48);
    v77 = v75 - v147;
    v78 = *(v37 + 56);
    v79 = *(v37 + 60);
    sub_240B3AC2C(&v169, v76, v75 - v147);
    v40 = v172;
    if (v172)
    {
      v114 = v145;
      if (!v145)
      {
        goto LABEL_148;
      }

      goto LABEL_147;
    }

    *v173 = v169;
    v80 = *(&v170 + 1);
    *&v173[16] = v170;
    *&v173[32] = v171;
    *&v174 = v76;
    *(&v174 + 1) = v75 - v147;
    LODWORD(v175) = v78;
    DWORD1(v175) = v79 + 1;
    v136 = *(v37 + 16);
    if (v75 != v147)
    {
      v81 = 0;
      v82 = *(v37 + 24);
      v83 = 2 * v136;
      v148 = *&v173[16];
      v84 = v82 - 4 * (v136 >> 2);
      v85 = v82 + 12 * (v136 >> 2);
      v86 = v82 + 8 * (v136 >> 2);
      v87 = v82 + 4 * (v136 >> 2);
      v88 = v145;
      do
      {
        v89 = v81 + 1;
        if (v38)
        {
          for (k = 0; k != v38; ++k)
          {
            v91 = *(v82 + 4 * k);
            v92 = *(v87 + 4 * k);
            v93 = v92 + v91;
            if (v91 > v92)
            {
              ++v93;
            }

            v94 = v93 >> 1;
            v95 = v94;
            *(v88 + 4 * k) = v94;
            if (v89 >= v77)
            {
              v99 = v94;
              if (*(v37 + 48))
              {
                v99 = *(v86 + 4 * k);
              }
            }

            else
            {
              v96 = *(v86 + 4 * k);
              v97 = *(v85 + 4 * k);
              if (v96 <= v97)
              {
                v98 = v97 + v96;
              }

              else
              {
                v98 = v97 + v96 + 1;
              }

              v99 = v98 >> 1;
            }

            if (v81)
            {
              v95 = *(v84 + 4 * k);
            }

            v100 = -3 * v99 - v94 + 4 * v95;
            v101 = v95 - v94;
            v102 = 2 * v101 - 1;
            if ((((v100 - 6) / 12) & 1) + (v100 - 6) / 12 >= 2 * v101)
            {
              v102 = (v100 - 6) / 12;
            }

            v103 = v94 - v99;
            if ((v102 & 0xFFFFFFFFFFFFFFFELL) < 2 * v103)
            {
              LODWORD(v102) = 2 * v103;
            }

            if (v94 > v99 || v95 > v94)
            {
              LODWORD(v102) = 0;
            }

            if ((((v100 + 6) / 12) & 0xFFFFFFFFFFFFFFFELL) > 2 * v101)
            {
              v105 = 2 * v101 + 1;
            }

            else
            {
              v105 = (v100 + 6) / 12;
            }

            if ((v105 & 1) + v105 > 2 * v103)
            {
              LODWORD(v105) = 2 * v103;
            }

            if (v94 < v99 || v95 < v94)
            {
              LODWORD(v105) = v102;
            }

            *(v80 + 4 * k) = v91 - v92 - v105;
          }
        }

        v80 += v148;
        v84 += v83;
        v88 += v150;
        v85 += v83;
        v86 += v83;
        v87 += v83;
        v82 += v83;
        ++v81;
      }

      while (v89 != v77);
    }

    if ((*(v37 + 48) & 1) != 0 && v38)
    {
      v107 = (*(v37 + 24) + 2 * v136 * (v147 - 1));
      v108 = (v145 + v150 * (v147 - 1));
      v109 = v38;
      do
      {
        v110 = *v107++;
        *v108++ = v110;
        --v109;
      }

      while (v109);
    }

    a1 = v137;
    v72 = v143;
    v111 = *v137 + (v143 << 6);
    *(v111 + 40) = v38;
    *(v111 + 48) = v147;
    *(v111 + 56) = v141 + 0x100000000;
    *v111 = v168;
    v112 = *(v111 + 24);
    *(v111 + 16) = v150;
    *(v111 + 24) = v145;
    if (v112)
    {
      atomic_fetch_add(&qword_27E519020, -*(v112 - 24));
      free(*(v112 - 32));
    }

    *(v111 + 32) = v144;
    sub_240B65AEC(v137, *v137 + (v142 << 6), v173);
LABEL_136:
    v113 = *&v173[24];
    *&v173[24] = 0;
    if (v113)
    {
      atomic_fetch_add(&qword_27E519020, -*(v113 - 24));
      free(*(v113 - 32));
    }

    v27 = v72 + 1;
    if (v72 + 1 > v140)
    {
      v23 = v160;
      v24 = v161;
      goto LABEL_140;
    }
  }

  v39 = *(v37 + 48);
  v149 = (v38 + 1) >> 1;
  sub_240B3AC2C(v173, v149, v39);
  v40 = v174;
  if (v174)
  {
    goto LABEL_148;
  }

  v168 = *v173;
  v41 = *&v173[16];
  v135 = *&v173[32];
  v42 = *(v37 + 40);
  v43 = v42 - v149;
  v44 = *(v37 + 56);
  v45 = *(v37 + 60);
  sub_240B3AC2C(&v169, v42 - v149, v39);
  v40 = v172;
  if (!v172)
  {
    *v173 = v169;
    v46 = *(&v170 + 1);
    *&v173[16] = v170;
    *&v173[32] = v171;
    *&v174 = v42 - v149;
    *(&v174 + 1) = v39;
    LODWORD(v175) = v44 + 1;
    DWORD1(v175) = v45;
    if (v39)
    {
      v47 = 0;
      v48 = *(v37 + 16);
      v49 = *&v173[16];
      v50 = *(v37 + 40);
      v51 = *(&v41 + 1);
      v146 = *(v37 + 24);
      v52 = (v146 + 12);
      do
      {
        if (v42 != v149)
        {
          v53 = 0;
          v54 = v52;
          do
          {
            v55 = *(v54 - 3);
            v56 = *(v54 - 2);
            v57 = v56 + v55;
            if (v55 > v56)
            {
              ++v57;
            }

            v58 = v57 >> 1;
            v59 = v57 >> 1;
            *(v51 + 4 * v53) = v57 >> 1;
            v60 = v53 + 1;
            if (v53 + 1 >= v43)
            {
              v63 = v58;
              if (v50)
              {
                v63 = *(v54 - 1);
              }
            }

            else
            {
              v61 = *(v54 - 1);
              if (v61 <= *v54)
              {
                v62 = *v54 + v61;
              }

              else
              {
                v62 = *v54 + v61 + 1;
              }

              v63 = v62 >> 1;
            }

            if (v53)
            {
              v59 = *(v54 - 4);
            }

            v64 = -3 * v63 - v58 + 4 * v59;
            v65 = (v64 - 6) / 12;
            v66 = v59 - v58;
            if ((v65 & 1) + v65 < 2 * v66)
            {
              v65 = 2 * v66 - 1;
            }

            v67 = v58 - v63;
            if ((v65 & 0xFFFFFFFFFFFFFFFELL) < 2 * v67)
            {
              LODWORD(v65) = 2 * v67;
            }

            if (v58 > v63 || v59 > v58)
            {
              LODWORD(v65) = 0;
            }

            if ((((v64 + 6) / 12) & 0xFFFFFFFFFFFFFFFELL) > 2 * v66)
            {
              v69 = 2 * v66 + 1;
            }

            else
            {
              v69 = (v64 + 6) / 12;
            }

            if ((v69 & 1) + v69 > 2 * v67)
            {
              LODWORD(v69) = 2 * v67;
            }

            if (v58 < v63 || v59 < v58)
            {
              LODWORD(v69) = v65;
            }

            *(v46 + 4 * v53) = v55 - v56 - v69;
            v54 += 2;
            ++v53;
          }

          while (v43 != v60);
        }

        if (v50)
        {
          *(*(&v41 + 1) + v41 * v47 + 4 * (v149 - 1)) = *(v146 + v48 * v47 + 8 * (v149 - 1));
        }

        ++v47;
        v46 += v49;
        v51 += v41;
        v52 = (v52 + v48);
      }

      while (v47 != v39);
    }

    LODWORD(v71) = v141 + 1;
    HIDWORD(v71) = HIDWORD(v141);
    a1 = v137;
    v72 = v143;
    v73 = *v137 + (v143 << 6);
    *(v73 + 40) = v149;
    *(v73 + 48) = v39;
    *(v73 + 56) = v71;
    *v73 = v168;
    v74 = *(v73 + 24);
    *(v73 + 16) = v41;
    if (v74)
    {
      atomic_fetch_add(&qword_27E519020, -*(v74 - 24));
      free(*(v74 - 32));
    }

    *(v73 + 32) = v135;
    sub_240B65AEC(v137, *v137 + (v142 << 6), v173);
    goto LABEL_136;
  }

  v114 = *(&v41 + 1);
  if (*(&v41 + 1))
  {
LABEL_147:
    atomic_fetch_add(&qword_27E519020, -*(v114 - 24));
    free(*(v114 - 32));
  }

LABEL_148:
  a1 = v137;
LABEL_153:
  *v173 = &v160;
  sub_240B388C4(v173);
  if (v40)
  {
LABEL_26:
    v22 = 0;
    goto LABEL_166;
  }

LABEL_154:
  v116 = a1[4];
  v115 = a1[5];
  if (v116 >= v115)
  {
    v120 = a1[3];
    v121 = 0x8E38E38E38E38E39 * ((v116 - v120) >> 3);
    if (v121 + 1 > 0x38E38E38E38E38ELL)
    {
      sub_240B228BC();
    }

    v122 = 0x8E38E38E38E38E39 * ((v115 - v120) >> 3);
    v123 = 2 * v122;
    if (2 * v122 <= v121 + 1)
    {
      v123 = v121 + 1;
    }

    if (v122 >= 0x1C71C71C71C71C7)
    {
      v124 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v124 = v123;
    }

    *&v173[32] = a1 + 3;
    if (v124)
    {
      sub_240B37D9C(v124);
    }

    v125 = 72 * v121;
    *v173 = 0;
    *&v173[8] = v125;
    *&v173[16] = v125;
    *v125 = &unk_2852A1210;
    v126 = v153;
    *(v125 + 24) = v154;
    *(v125 + 8) = v126;
    *(v125 + 40) = 0;
    *(v125 + 48) = 0;
    *(v125 + 32) = 0;
    sub_240B4403C(v125 + 32, v155, v156, 0xAAAAAAAAAAAAAAABLL * ((v156 - v155) >> 3));
    v127 = v158;
    *(v125 + 64) = v159;
    *(v125 + 56) = v127;
    *&v173[16] += 72;
    v128 = a1[3];
    v129 = a1[4];
    v130 = *&v173[8] + v128 - v129;
    sub_240B37DF8(v128, v129, v130);
    v131 = a1[3];
    a1[3] = v130;
    v132 = a1[5];
    v151 = *&v173[16];
    *(a1 + 2) = *&v173[16];
    *&v173[16] = v131;
    *&v173[24] = v132;
    *v173 = v131;
    *&v173[8] = v131;
    sub_240B37EDC(v173);
    v119 = v151;
  }

  else
  {
    *v116 = &unk_2852A1210;
    v117 = v153;
    *(v116 + 24) = v154;
    *(v116 + 8) = v117;
    *(v116 + 40) = 0;
    *(v116 + 48) = 0;
    *(v116 + 32) = 0;
    sub_240B4403C(v116 + 32, v155, v156, 0xAAAAAAAAAAAAAAABLL * ((v156 - v155) >> 3));
    v118 = v158;
    *(v116 + 64) = v159;
    *(v116 + 56) = v118;
    v119 = v116 + 72;
    a1[4] = v116 + 72;
  }

  a1[4] = v119;
  v22 = 1;
LABEL_166:
  v152 = &unk_2852A1210;
  *v173 = &v155;
  sub_240B388C4(v173);
  return v22;
}

void sub_240BB1DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void **a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void **a43)
{
  a43 = &a37;
  sub_240B388C4(&a43);
  a36 = v43;
  sub_240B388C4(&a36);
  _Unwind_Resume(a1);
}

void sub_240BB1EE4(uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_240B228BC();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_240B228D4(v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void sub_240BB1FBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v9 = *a1;
    v10 = v3 - *a1;
    v11 = 0x8E38E38E38E38E39 * (v10 >> 3) + 1;
    if (v11 > 0x38E38E38E38E38ELL)
    {
      sub_240B228BC();
    }

    v12 = 0x8E38E38E38E38E39 * ((v4 - v9) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x1C71C71C71C71C7)
    {
      v13 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (v13 <= 0x38E38E38E38E38ELL)
      {
        operator new();
      }

      sub_240B2291C();
    }

    v14 = 8 * (v10 >> 3);
    v15 = *(a2 + 48);
    *(v14 + 32) = *(a2 + 32);
    *(v14 + 48) = v15;
    *(v14 + 64) = *(a2 + 64);
    v16 = *(a2 + 16);
    *v14 = *a2;
    *(v14 + 16) = v16;
    v8 = v14 + 72;
    v17 = v14 - v10;
    memcpy((v14 - v10), v9, v10);
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    *v3 = *a2;
    v5 = *(a2 + 16);
    v6 = *(a2 + 32);
    v7 = *(a2 + 48);
    *(v3 + 64) = *(a2 + 64);
    *(v3 + 32) = v6;
    *(v3 + 48) = v7;
    *(v3 + 16) = v5;
    v8 = v3 + 72;
  }

  *(a1 + 8) = v8;
}

BOOL sub_240BB2120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a2;
  v6[0] = sub_240B2AC64;
  v6[1] = a3;
  if (*a1)
  {
    return (*a1)(*(a1 + 8), v6, sub_240BB3848, sub_240BB21D0, 0, a2) != 0;
  }

  for (i = 0; i != v3; ++i)
  {
    sub_240BB21D0(v6, i);
  }

  return 0;
}

void sub_240BB21D0(uint64_t a1, unsigned int a2)
{
  v253 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = *v2;
  v5 = sub_240B438A0(*(*v2 + 154) + 72 * a2 + 40, *(*v2 + 60), *(*v2 + 61));
  v6 = *(v3 + 9);
  v7 = v6 + 152 * v5;
  v8 = *(v6 + 16);
  *v7 = *v6;
  *(v7 + 16) = v8;
  if (v5)
  {
    sub_240B343B0((v7 + 24), *(v6 + 24), *(v6 + 32), (*(v6 + 32) - *(v6 + 24)) >> 2);
    v9 = *(v6 + 64);
    *(v7 + 48) = *(v6 + 48);
    *(v7 + 64) = v9;
    *(v7 + 80) = *(v6 + 80);
    *(v7 + 88) = *(v6 + 88);
    sub_240BA2C68((v7 + 104), *(v6 + 104), *(v6 + 112), (*(v6 + 112) - *(v6 + 104)) >> 3);
  }

  else
  {
    v10 = *(v6 + 48);
    v11 = *(v6 + 64);
    *(v7 + 80) = *(v6 + 80);
    *(v7 + 48) = v10;
    *(v7 + 64) = v11;
    *(v7 + 88) = *(v6 + 88);
  }

  v12 = *(v6 + 128);
  *(v7 + 133) = *(v6 + 133);
  *(v7 + 128) = v12;
  *(v7 + 144) = *(v6 + 144);
  v13 = (*(v3 + 154) + 72 * a2);
  v221 = (v3 + 512);
  v14 = v13[2].u32[0];
  v15 = v13[2].i32[1];
  v16 = *v2[1];
  v17 = *v2[2];
  v18 = sub_240B438A0(&v13[2].i64[1], *(v3 + 60), *(v3 + 61));
  v19 = *(v3 + 6);
  v20 = &v19[11 * v18];
  v196 = v18;
  v197 = v3;
  v199 = v20;
  if (v18)
  {
    v206 = v13[1].i64[1];
    v208 = v13[1].i64[0];
    sub_240B64760(&v245, v208, v206, *(v19 + 16), 0);
    if (v252)
    {
      goto LABEL_6;
    }

    v204 = v16;
    *v228 = v245;
    *&v228[16] = v246;
    v245 = 0uLL;
    *&v228[24] = v247;
    *&v228[40] = v248;
    v246 = 0;
    v247 = 0uLL;
    v248 = 0;
    *&v228[48] = v249;
    v229 = v250;
    v230 = v251;
    sub_240B649A8(v20, v228);
    *&v242[0] = &v228[24];
    sub_240B37900(v242);
    *&v242[0] = v228;
    sub_240B379C0(v242);
    v21 = v19[9];
    v23 = *v19;
    v22 = v19[1];
    v24 = (v22 - *v19) >> 6;
    v211 = v19;
    if ((v17 & 1) == 0 && v21 < v24)
    {
      v25 = *(v3 + 62);
      v26 = (v23 + (v21 << 6) + 48);
      while (1)
      {
        v27 = *(v26 - 1) > v25 || *v26 > v25;
        if (v27)
        {
          break;
        }

        v26 += 8;
        if (v24 == ++v21)
        {
          goto LABEL_44;
        }
      }
    }

    if (v21 < v24)
    {
      v210 = v15;
      do
      {
        v28 = v23 + (v21 << 6);
        v29 = *(v28 + 56);
        v30 = v29;
        if (SHIDWORD(v29) < v29)
        {
          v30 = HIDWORD(v29);
        }

        if (v30 <= v15 && v30 >= v14)
        {
          v32.i64[0] = v29;
          v32.i64[1] = HIDWORD(v29);
          v33 = vnegq_s64(v32);
          v34 = vshlq_u64(*v13, v33);
          v35 = vshlq_u64(v13[1], v33);
          v36 = vbslq_s8(vcgtq_u64(vaddq_s64(v35, v34), *(v28 + 40)), vqsubq_u64(*(v28 + 40), v34), v35);
          v37 = v36.i64[1];
          v38 = v36.i64[0];
          if (v36.i64[0] && v36.i64[1] != 0)
          {
            v215 = v36;
            v217 = v34;
            v40 = *(v3 + 147) + 24 * v196;
            *v228 = v21;
            sub_240B22E1C(v40, v228);
            sub_240B3AC2C(v228, v38, v37);
            if (*&v228[40])
            {
              goto LABEL_6;
            }

            v41 = v14;
            v242[0] = *v228;
            v43 = *&v228[24];
            v42 = *&v228[16];
            v213 = *&v228[32];
            v44 = *(v28 + 56);
            v45 = 4 * v38;
            v46 = v217.i64[1];
            v47 = v217.i64[0];
            v218 = *&v228[24];
            do
            {
              memcpy(v43, (*(v28 + 24) + *(v28 + 16) * v46++ + 4 * v47), v45);
              v43 += v42;
              --v37;
            }

            while (v37);
            v20 = v199;
            v48 = v199[1];
            v49 = v199[2];
            v3 = v197;
            if (v48 >= v49)
            {
              v52 = (v48 - *v199) >> 6;
              v53 = v52 + 1;
              v50 = v211;
              if ((v52 + 1) >> 58)
              {
                sub_240B228BC();
              }

              v14 = v41;
              v54 = v49 - *v199;
              if (v54 >> 5 > v53)
              {
                v53 = v54 >> 5;
              }

              if (v54 >= 0x7FFFFFFFFFFFFFC0)
              {
                v55 = 0x3FFFFFFFFFFFFFFLL;
              }

              else
              {
                v55 = v53;
              }

              *&v228[32] = v199;
              v15 = v210;
              if (v55)
              {
                sub_240B45274(v55);
              }

              v56 = v52 << 6;
              *v228 = 0;
              *&v228[8] = v56;
              *&v228[24] = 0;
              *v56 = v242[0];
              *(v56 + 16) = v42;
              *(v56 + 24) = v218;
              *(v56 + 32) = v213;
              *(v56 + 40) = v215;
              *(v56 + 56) = v44;
              *&v228[16] = (v52 << 6) + 64;
              v57 = v199[1];
              v58 = (v52 << 6) + *v199 - v57;
              sub_240B452BC(*v199, v57, v58);
              v59 = *v199;
              *v199 = v58;
              *&v228[8] = v59;
              v60 = v199[2];
              v219 = *&v228[16];
              *&v228[16] = v59;
              *(v199 + 1) = v219;
              *&v228[24] = v60;
              *v228 = v59;
              sub_240B45340(v228);
              v51 = v219;
            }

            else
            {
              *v48 = v242[0];
              *(v48 + 2) = v42;
              *(v48 + 3) = v218;
              v50 = v211;
              *(v48 + 4) = v213;
              *(v48 + 40) = v215;
              *(v48 + 7) = v44;
              v51 = v48 + 64;
              v14 = v41;
              v15 = v210;
            }

            v199[1] = v51;
            v23 = *v50;
            v22 = v50[1];
          }
        }

        ++v21;
      }

      while (v21 < (v22 - v23) >> 6);
    }

LABEL_44:
    v61 = *(v20 + 8);
    if (*v20 == v61)
    {
LABEL_6:
      sub_240B43B14(&v245);
      goto LABEL_233;
    }

    if (*v221 == 0.0 && *(v3 + 221) && *(v3 + 140) <= 5 && (((v61 - *v20) >> 6) - *(v20 + 72)) >= 2)
    {
      sub_240B65F00(v228, 1);
      *&v228[12] = *(v20 + 72);
      v62 = *(v3 + 221);
      v63 = v62 >= 0 ? *(v3 + 221) : -v62;
      *&v228[20] = ((*(v20 + 8) - *v20) >> 6) - *&v228[12];
      *&v228[24] = v63;
      LOBYTE(v229) = v62 >= 0;
      *&v242[0] = &unk_2852A1238;
      memset(v242 + 12, 0, 44);
      v224 = &unk_2852A2120;
      v225 = xmmword_240C112C0;
      *&v226 = 0;
      sub_240B63734(v242, &v224);
      sub_240BB0FD0(v20, v228, *(v3 + 140), v242, 0, 0);
      *v228 = &unk_2852A1210;
      *&v242[0] = &v228[32];
      sub_240B388C4(v242);
      if ((((*(v20 + 8) - *v20) >> 6) - *(v20 + 72)) >= 4)
      {
        sub_240B65F00(v228, 1);
        *&v228[12] = *(v20 + 72);
        v64 = *(v3 + 221);
        if (v64 >= 0)
        {
          v65 = *(v3 + 221);
        }

        else
        {
          v65 = -v64;
        }

        *&v228[20] = ((*(v20 + 8) - *v20) >> 6) + ~*&v228[12];
        *&v228[24] = v65;
        LOBYTE(v229) = v64 >= 0;
        BYTE1(v229) = v3[888];
        if (BYTE1(v229) == 1)
        {
          *&v228[60] = 6;
        }

        *&v242[0] = &unk_2852A1238;
        memset(v242 + 12, 0, 44);
        sub_240B53CC8(v242);
        sub_240BB0FD0(v20, v228, *(v3 + 140), v242, 0, 0);
        *v228 = &unk_2852A1210;
        *&v242[0] = &v228[32];
        sub_240B388C4(v242);
      }
    }

    if (*(v3 + 220) > 0.0 && *(v197 + 128) == 0.0 && (v197[888] & 1) == 0 && *(v197 + 140) <= 5 && (!*(v197 + 216) || !*(v197 + 71)))
    {
      v66 = (v199[1] - *v199) >> 6;
      v67 = v199[9];
      v68 = v66 - v67;
      if (v66 != v67)
      {
        v69 = 0;
        do
        {
          v70 = &(*v199)[8 * v199[9] + 8 * v69];
          v71 = v70[6];
          if (v71)
          {
            v72 = 0;
            v74 = v70[2];
            v73 = v70[3];
            v75 = 0x80000000;
            v76 = 0x7FFFFFFF;
            v77 = v70[5];
            do
            {
              v78 = v73;
              for (i = v77; i; --i)
              {
                v81 = *v78++;
                v80 = v81;
                if (v81 < v76)
                {
                  v76 = v80;
                }

                if (v80 > v75)
                {
                  v75 = v80;
                }
              }

              ++v72;
              v73 = (v73 + v74);
            }

            while (v72 != v71);
            v82 = v76;
            v83 = v75 + 1;
          }

          else
          {
            v83 = -2147483647;
            v82 = 0x7FFFFFFFLL;
          }

          sub_240B65F00(v228, 1);
          v84 = *(v197 + 220) / 100.0;
          *&v228[12] = *(v199 + 18) + v69;
          *&v228[20] = 1;
          v85 = (v84 * (v83 - v82));
          if (v85 >= ((v206 * v208) * 0.8))
          {
            v85 = ((v206 * v208) * 0.8);
          }

          *&v228[24] = v85;
          *&v242[0] = &unk_2852A1238;
          memset(v242 + 12, 0, 44);
          v224 = &unk_2852A2120;
          v225 = xmmword_240C112C0;
          *&v226 = 0;
          sub_240B63734(v242, &v224);
          sub_240BB0FD0(v199, v228, *(v197 + 140), v242, 0, 0);
          *v228 = &unk_2852A1210;
          *&v242[0] = &v228[32];
          sub_240B388C4(v242);
          ++v69;
        }

        while (v69 != v68);
      }
    }

    sub_240B43B14(&v245);
    v3 = v197;
    v20 = v199;
    v16 = v204;
  }

  if (*(v3 + 144) != 1 || v197[580] != 1 || !sub_240B97DD0(v221) || (*(v197 + 217) & 0x80000000) == 0 || (((*(v20 + 8) - *v20) >> 6) - *(v20 + 72)) < 3 || *(v197 + 216) || !v16 || *(v197 + 140) > 5)
  {
    goto LABEL_103;
  }

  sub_240B65F00(&v245, 0);
  HIDWORD(v245) = *(v20 + 72);
  v86 = *(v197 + 140) + 1;
  if (v86 > 6)
  {
    v87 = 0;
  }

  else
  {
    v87 = qword_240C84F90[v86];
  }

  v88 = 0;
  v89 = 0;
  v90 = 3.4028e38;
  while (1)
  {
    if (!v87)
    {
LABEL_101:
      LODWORD(v246) = v89;
      *v228 = &unk_2852A1238;
      memset(&v228[12], 0, 44);
      sub_240B53CC8(v228);
      sub_240BB1198(v20, &v245, v228, 0, 0);
      v98 = 1;
      goto LABEL_102;
    }

    v91 = dword_240C84EDC[v88];
    LODWORD(v246) = v91;
    *v228 = &unk_2852A1238;
    memset(&v228[12], 0, 44);
    *(v242 + 8) = xmmword_240C112C0;
    *&v242[0] = &unk_2852A2120;
    *(&v242[1] + 1) = 0;
    sub_240B63734(v228, v242);
    if (sub_240BB1198(v199, &v245, v228, 0, 0))
    {
      break;
    }

LABEL_100:
    ++v88;
    --v87;
    v20 = v199;
    if (v88 == 19)
    {
      goto LABEL_101;
    }
  }

  v92 = sub_240BB3870(*v199, v199[1]);
  if (v92 < v90)
  {
    v90 = v92;
    v89 = v91;
  }

  v93 = v199[4];
  *v228 = &unk_2852A1210;
  v94 = *(v93 - 4);
  *&v228[24] = *(v93 - 6);
  *&v228[8] = v94;
  memset(&v228[32], 0, 24);
  sub_240B4403C(&v228[32], *(v93 - 5), *(v93 - 4), 0xAAAAAAAAAAAAAAABLL * ((*(v93 - 4) - *(v93 - 5)) >> 3));
  v95 = *(v93 - 2);
  LOWORD(v229) = *(v93 - 4);
  *&v228[56] = v95;
  *&v242[0] = &unk_2852A1238;
  memset(v242 + 12, 0, 44);
  v224 = &unk_2852A2120;
  v225 = xmmword_240C112C0;
  *&v226 = 0;
  sub_240B63734(v242, &v224);
  if (!sub_240B65FBC(v228, v199, v242, 0))
  {
    v96 = v199[4];
    v97 = *(v96 - 9);
    v96 -= 9;
    (*v97)(v96);
    v199[4] = v96;
    *v228 = &unk_2852A1210;
    *&v242[0] = &v228[32];
    sub_240B388C4(v242);
    goto LABEL_100;
  }

  *v228 = &unk_2852A1210;
  *&v242[0] = &v228[32];
  sub_240B388C4(v242);
  v98 = 0;
  v20 = v199;
LABEL_102:
  *&v245 = &unk_2852A1210;
  *v228 = &v247 + 8;
  sub_240B388C4(v228);
  if ((v98 & 1) == 0)
  {
    goto LABEL_233;
  }

LABEL_103:
  v99 = v197;
  v100 = *(v197 + 140);
  if (v100 >= 2)
  {
    if (v100 != 2)
    {
      goto LABEL_233;
    }

    v198 = 2;
    v99 = v197;
  }

  else
  {
    v198 = 5;
  }

  v101 = *(v99 + 9) + 152 * v196;
  v102 = *(v101 + 64);
  v27 = v102 > 0xF;
  v103 = (1 << v102) & 0xC040;
  if (!v27 && v103 != 0)
  {
    v105 = 0;
    *(v101 + 68) = 0;
    v106 = 3.4028e38;
    v107 = 0uLL;
    do
    {
      for (j = 0; j != 1360; j += 40)
      {
        v109 = &v245 + j;
        *(v109 + 8) = 0;
        *v109 = v107;
        *(v109 + 1) = v107;
      }

      *&v242[0] = &unk_2852A1238;
      *(v242 + 12) = v107;
      *(&v242[1] + 12) = v107;
      *(&v242[2] + 8) = v107;
      *v228 = &unk_2852A2120;
      *&v228[8] = xmmword_240C112C0;
      *&v228[24] = 0;
      sub_240B63734(v242, v228);
      DWORD2(v242[2]) = 13;
      if (v105 > 3)
      {
        v119 = 4;
        v115 = 5;
        v113 = 10;
        v110 = 12;
        v111 = 12;
        v112 = 12;
        v114 = 10;
        v116 = 5;
        v117 = 5;
        v118 = 12;
      }

      else
      {
        v110 = dword_240C11AE0[v105];
        v111 = dword_240C11AF0[v105];
        v112 = dword_240C11B00[v105];
        v113 = dword_240C11B10[v105];
        v114 = dword_240C11B20[v105];
        v115 = dword_240C85588[v105];
        v116 = dword_240C11B30[v105];
        v117 = dword_240C11B40[v105];
        v118 = dword_240C11B50[v105];
        v119 = dword_240C11B60[v105];
      }

      *&v242[3] = __PAIR64__(v112, v111);
      HIDWORD(v242[0]) = v113;
      *&v242[1] = __PAIR64__(v115, v114);
      *(&v242[1] + 1) = __PAIR64__(v117, v116);
      *&v242[2] = __PAIR64__(v119, v118);
      HIDWORD(v242[2]) = v110;
      v201 = *(v20 + 8);
      v200 = v105;
      if (*v20 == v201)
      {
        v122 = 0.0;
        v192 = 0.0;
        goto LABEL_226;
      }

      v120 = *v20;
      v121 = 0;
      v122 = 0.0;
      do
      {
        v123 = *(v120 + 16);
        v224 = &unk_2852A1238;
        v227 = *(&v242[2] + 8);
        v225 = *(v242 + 8);
        v226 = *(&v242[1] + 8);
        v216 = v120;
        sub_240B62C98(v228, &v224, *(v120 + 40));
        sub_240B2B9C0(__p, 1uLL);
        v125 = v216;
        v126 = *(v216 + 48);
        if (!v126)
        {
          goto LABEL_213;
        }

        v127 = 0;
        v202 = -(v123 >> 2);
        v128 = *(v216 + 40);
        do
        {
          if (!v128)
          {
            goto LABEL_212;
          }

          v129 = 0;
          v130 = *(v125 + 24) + *(v125 + 16) * v127;
          v209 = v130 - 4;
          v207 = v130 - 4 + 4 * v202;
          v131 = (v130 + 4 * v202);
          v203 = &v131[v202];
          v205 = v131 + 1;
          v212 = v131;
          v214 = v127;
          do
          {
            if (v129)
            {
              v132 = *(v209 + 4 * v129);
              if (!v127)
              {
                goto LABEL_134;
              }

              v133 = *(v207 + 4 * v129);
            }

            else
            {
              if (!v127)
              {
                v132 = 0;
LABEL_134:
                v222 = v129 + 1;
                v135 = v132;
                v134 = v132;
                v133 = v132;
                v136 = v132;
                goto LABEL_135;
              }

              v132 = *v131;
              v133 = v132;
            }

            v134 = v131[v129];
            v135 = v134;
            v222 = v129 + 1;
            if (v129 + 1 < v128)
            {
              v135 = v205[v129];
            }

            if (v127 < 2)
            {
              v136 = v134;
            }

            else
            {
              v136 = v203[v129];
            }

LABEL_135:
            v137 = 0;
            v138 = v128 + 2;
            v220 = (v127 << 63) >> 63;
            v139 = v220 & (v128 + 2);
            v140 = v139 + v129;
            if (v128 - 1 <= v129)
            {
              v141 = v139 + v129;
            }

            else
            {
              v141 = v140 + 1;
            }

            v142 = v140 - 1;
            if (!v129)
            {
              v142 = v139;
            }

            for (k = 40; k != 136; k += 24)
            {
              v144 = (*(*&v228[k] + 4 * v141) + *(*&v228[k] + 4 * v140) + *(*&v228[k] + 4 * v142));
              v145 = __clz(v144 + 1) ^ 0x3F;
              if (v145 <= 5)
              {
                LOBYTE(v145) = 5;
              }

              v243.i32[v137] = ((*&v241[4 * (v144 >> (v145 - 5)) + 16] * *&v241[v137 * 4]) >> (v145 - 5)) + 4;
              ++v137;
            }

            if (v129)
            {
              if (v127)
              {
                v146 = 0;
              }

              else
              {
                v146 = v138;
              }

              v147 = *(v232 + v146 + v129 - 1);
            }

            else
            {
              v147 = 0;
            }

            v148 = 0;
            v149 = 8 * v134;
            v150 = 8 * v132;
            v151 = 8 * v135;
            v152 = *(v232 + v140);
            v153 = *(v232 + v142);
            v154 = v147 + v152;
            v155 = *(v232 + v141);
            if (v152 >= 0)
            {
              v156 = v152;
            }

            else
            {
              v156 = -v152;
            }

            if (v147 >= 0)
            {
              v157 = v147;
            }

            else
            {
              v157 = -v147;
            }

            if (v156 <= v157)
            {
              v158 = v147;
            }

            else
            {
              v158 = v152;
            }

            if (v153 >= 0)
            {
              v159 = v153;
            }

            else
            {
              v159 = -v153;
            }

            if (v158 >= 0)
            {
              v160 = v158;
            }

            else
            {
              v160 = -v158;
            }

            if (v159 > v160)
            {
              v158 = v153;
            }

            if (v155 >= 0)
            {
              v161 = v155;
            }

            else
            {
              v161 = -v155;
            }

            if (v158 >= 0)
            {
              v162 = v158;
            }

            else
            {
              v162 = -v158;
            }

            if (v161 > v162)
            {
              LODWORD(v158) = v155;
            }

            *__p[0] = v158;
            *v228 = v151 - v149 + v150;
            *&v228[8] = v149 - (((v154 + v155) * v234) >> 5);
            *&v228[16] = v150 - (((v154 + v153) * v235) >> 5);
            *&v228[24] = v149 - ((v236 * v153 + v237 * v152 + v238 * v155 + 8 * ((v136 - v134) * v239 + (v133 - v132) * v240)) >> 5);
            v244 = vshlq_u32(v243, vnegq_s32(vdupq_n_s32((__clz(vaddvq_s32(v243)) ^ 0x1F) - 4)));
            v163 = vaddvq_s32(v244);
            v164 = (v163 >> 1) - 1;
            do
            {
              v164 += *&v228[8 * v148] * v244.u32[v148];
              ++v148;
            }

            while (v148 != 4);
            v165 = v121;
            v166 = 0;
            v167 = 0;
            v168 = (v164 * *&v241[4 * v163 + 12]) >> 24;
            v169 = v153 ^ v152 | v147 ^ v152;
            if (v151 <= v149)
            {
              v170 = v149;
            }

            else
            {
              v170 = v151;
            }

            if (v150 > v170)
            {
              v170 = v150;
            }

            if (v149 >= v151)
            {
              v149 = v151;
            }

            if (v149 < v150)
            {
              v150 = v149;
            }

            if (v168 >= v170)
            {
              v171 = v170;
            }

            else
            {
              v171 = v168;
            }

            if (v150 <= v171)
            {
              v150 = v171;
            }

            if (v169 <= 0)
            {
              v168 = v150;
            }

            *&v228[32] = v168;
            do
            {
              if (*(&xmmword_240C854B4 + v166) >= v158)
              {
                ++v167;
              }

              v166 += 4;
            }

            while (v166 != 132);
            v172 = *(v130 + 4 * v129) - ((v168 + 3) >> 3);
            v173 = (2 * v172) ^ (v172 >> 31);
            v174 = __clz(v173);
            v175 = 29 - v174;
            v176 = (((-1 << (v174 ^ 0x1F)) + v173) >> (29 - v174)) - 4 * v174 + 124;
            if (v173 >= 0x10)
            {
              v177 = v176;
            }

            else
            {
              v177 = v173;
            }

            if (v173 >= 0x10)
            {
              v178 = v175;
            }

            else
            {
              v178 = 0;
            }

            v179 = v130;
            sub_240B82EB4(&v245 + 5 * v167, v177);
            v180 = 0;
            v130 = v179;
            v127 = v214;
            v128 = *(v216 + 40);
            if (v214)
            {
              v181 = 0;
            }

            else
            {
              v181 = v128 + 2;
            }

            v182 = 8 * *(v179 + 4 * v129);
            v183 = v181 + v129;
            *(v232 + v183) = *&v228[32] - v182;
            v184 = &v228[40];
            do
            {
              v185 = *&v228[v180] - v182;
              if (v185 < 0)
              {
                v185 = v182 - *&v228[v180];
              }

              v186 = (v185 + 3) >> 3;
              v187 = *v184;
              v184 += 3;
              *(v187 + 4 * v183) = v186;
              *(v187 + 4 * (v220 & (v128 + 2)) + 4 * v129 + 4) += v186;
              v180 += 8;
            }

            while (v180 != 32);
            v121 = v178 + v165;
            v129 = v222;
            v131 = v212;
          }

          while (v222 < v128);
          v125 = v216;
          v126 = *(v216 + 48);
LABEL_212:
          ++v127;
        }

        while (v127 < v126);
LABEL_213:
        v188 = &v245;
        v189 = 1360;
        do
        {
          sub_240B8ABB4(v188, v124);
          v124 = *(v188 + 8);
          v122 = v122 + v124;
          *(v188 + 1) = *v188;
          *(v188 + 3) = 0;
          v188 = (v188 + 40);
          v189 -= 40;
        }

        while (v189);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (v232)
        {
          v233 = v232;
          operator delete(v232);
        }

        for (m = 0; m != -96; m -= 24)
        {
          v191 = *&v231[m];
          if (v191)
          {
            *&v231[m + 8] = v191;
            operator delete(v191);
          }
        }

        v120 = v216 + 64;
      }

      while (v216 + 64 != v201);
      v192 = v121;
      v20 = v199;
LABEL_226:
      v193 = 170;
      do
      {
        v194 = *(&v242[3] + v193 * 8 + 8);
        if (v194)
        {
          v243.i64[v193] = v194;
          operator delete(v194);
        }

        v193 -= 5;
      }

      while (v193 * 8);
      if ((v122 + v192) < v106)
      {
        *(*(v197 + 9) + 152 * v196 + 68) = v200;
        v106 = v122 + v192;
      }

      v105 = v200 + 1;
      v107 = 0uLL;
    }

    while (v200 + 1 != v198);
  }

LABEL_233:
  v195 = *MEMORY[0x277D85DE8];
}

void sub_240BB3684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  STACK[0x300] = &a49;
  sub_240B388C4(&STACK[0x300]);
  sub_240B43B14(&STACK[0x360]);
  _Unwind_Resume(a1);
}

uint64_t sub_240BB3848(unsigned int (**a1)(uint64_t), uint64_t a2)
{
  if ((*a1)(a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

float sub_240BB3870(void *a1, void *a2)
{
  v2 = a1;
  v3 = 0;
  v41 = *MEMORY[0x277D85DE8];
  v4 = 0uLL;
  do
  {
    v5 = &v40[v3];
    *(v5 + 8) = 0;
    *v5 = 0uLL;
    *(v5 + 1) = 0uLL;
    v3 += 5;
  }

  while (v3 != 90);
  if (a1 == a2)
  {
    v7 = 0.0;
    v33 = 0.0;
  }

  else
  {
    v6 = 0;
    v7 = 0.0;
    do
    {
      v8 = v2[6];
      if (v8)
      {
        v9 = 0;
        v39 = -(v2[2] >> 2);
        v10 = v2[5];
        do
        {
          if (v10)
          {
            v11 = 0;
            v12 = v2[3] + v2[2] * v9;
            v13 = (v12 + 4 * v39);
            do
            {
              if (v11)
              {
                v14 = *(v12 - 4 + 4 * v11);
                v15 = v14;
                if (v9)
                {
                  v16 = v13[v11];
                  v17 = *(v12 - 4 + 4 * v39 + 4 * v11);
                }

                else
                {
                  v16 = v14;
                  v17 = v14;
                }
              }

              else if (v9)
              {
                v14 = *v13;
                v16 = *v13;
                v15 = v16;
                v17 = v16;
              }

              else
              {
                v16 = 0;
                v14 = 0;
                v15 = 0;
                v17 = 0;
              }

              v18 = 0;
              v19 = 0;
              if (v15 <= v16)
              {
                v20 = v16;
              }

              else
              {
                v20 = v15;
              }

              if (v20 <= v17)
              {
                v20 = v17;
              }

              if (v16 < v15)
              {
                v15 = v16;
              }

              if (v17 < v15)
              {
                v15 = v17;
              }

              v21 = v20 - v15;
              do
              {
                if (v21 < dword_240C84F28[v18])
                {
                  ++v19;
                }

                ++v18;
              }

              while (v18 != 17);
              if (v14 >= v16)
              {
                v22 = v16;
              }

              else
              {
                v22 = v14;
              }

              if (v14 <= v16)
              {
                v23 = v16;
              }

              else
              {
                v23 = v14;
              }

              v24 = v14 + v16 - v17;
              if (v22 > v17)
              {
                v24 = v23;
              }

              if (v23 < v17)
              {
                v24 = v22;
              }

              v25 = (2 * (*(v12 + 4 * v11) - v24)) ^ ((*(v12 + 4 * v11) - v24) >> 31);
              v26 = __clz(v25);
              v27 = 29 - v26;
              v28 = (((-1 << (v26 ^ 0x1F)) + v25) >> (29 - v26)) - 4 * v26 + 124;
              if (v25 >= 0x10)
              {
                v29 = v28;
              }

              else
              {
                v29 = v25;
              }

              if (v25 >= 0x10)
              {
                v30 = v27;
              }

              else
              {
                v30 = 0;
              }

              sub_240B82EB4(&v40[5 * v19], v29);
              v6 += v30;
              ++v11;
              v10 = v2[5];
            }

            while (v11 < v10);
            v8 = v2[6];
          }

          ++v9;
        }

        while (v9 < v8);
      }

      v31 = v40;
      v32 = 720;
      do
      {
        sub_240B8ABB4(v31, *&v4);
        LODWORD(v4) = *(v31 + 8);
        v7 = v7 + *&v4;
        v31[1] = *v31;
        v31[3] = 0;
        v31 += 5;
        v32 -= 40;
      }

      while (v32);
      v2 += 8;
    }

    while (v2 != a2);
    v33 = v6;
  }

  v34 = 90;
  do
  {
    v35 = v40[v34 - 5];
    if (v35)
    {
      v40[v34 - 4] = v35;
      operator delete(v35);
    }

    v34 -= 5;
  }

  while (v34 * 8);
  v36 = *MEMORY[0x277D85DE8];
  return v7 + v33;
}

void sub_240BB3B14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  v12 = 720;
  while (1)
  {
    v13 = *(&a11 + v12 - 40);
    if (v13)
    {
      *(&a11 + v12 - 32) = v13;
      operator delete(v13);
    }

    v12 -= 40;
    if (!v12)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t sub_240BB3B44(uint64_t result, int a2)
{
  v2 = *(result + 8);
  v3 = atomic_load(*v2);
  if ((v3 & 1) == 0)
  {
    v4 = (**(v2 + 32) + (**(v2 + 40) << 6));
    result = sub_240BB3C10((*(**(v2 + 8) + 40 * **(v2 + 16) + 24) + *(**(v2 + 8) + 40 * **(v2 + 16) + 16) * (*(*(v2 + 24) + 8) + a2) + 4 * **(v2 + 24)), (*(v4 + 3) + *(v4 + 2) * a2), *v4, **(v2 + 48), **(v2 + 56), **(v2 + 64), **(v2 + 72));
    if (result)
    {
      atomic_store(1u, *v2);
    }
  }

  return result;
}

uint64_t sub_240BB3BE8(unsigned int (**a1)(uint64_t), uint64_t a2)
{
  if ((*a1)(a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_240BB3C10(float *__src, int *__dst, uint64_t a3, unsigned int a4, int a5, char a6, double a7)
{
  v7 = __src;
  if ((a6 & 1) == 0)
  {
    if (a4 < 0x17)
    {
      if (a3)
      {
        v20 = a7;
        do
        {
          v21 = *v7++;
          v22 = v21;
          if (v21 >= 0.0)
          {
            v23 = 0.5;
          }

          else
          {
            v23 = -0.5;
          }

          *__dst++ = (v23 + (v22 * v20));
          --a3;
        }

        while (a3);
      }
    }

    else
    {
      for (; a3; --a3)
      {
        v8 = *v7++;
        v9 = v8;
        if (v8 >= 0.0)
        {
          v10 = 0.5;
        }

        else
        {
          v10 = -0.5;
        }

        *__dst++ = (v10 + v9 * a7);
      }
    }

    return 0;
  }

  if (a4 == 32)
  {
    memcpy(__dst, __src, 4 * a3);
    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  v11 = ~a5 + a4;
  while (1)
  {
    v13 = *v7++;
    v12 = LODWORD(v13);
    v14 = LODWORD(v13) & 0x7FFFFFFF;
    if ((LODWORD(v13) & 0x7FFFFFFF) == 0)
    {
      if (v12)
      {
        v19 = 1 << (a4 - 1);
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_23;
    }

    v15 = v14 >> 23;
    v16 = v15 - 127;
    if (v15 == 255)
    {
      return 1;
    }

    v17 = v12 & 0x7FFFFF;
    v18 = v16 + ~(-1 << (a5 - 1));
    if (v18 < 0)
    {
      if (v18 < -v11)
      {
        return 1;
      }

      v17 = (v17 | 0x800000) >> (1 - v18);
      v18 = 0;
    }

    if ((v18 >> a5) | v17 & ~(-1 << (23 - (~a5 + a4))))
    {
      return 1;
    }

    v19 = (v18 << v11) | (1 << (a4 - 1)) & (v12 >> 31) | (v17 >> (23 - v11));
LABEL_23:
    *__dst++ = v19;
    if (!--a3)
    {
      return 0;
    }
  }
}

uint64_t sub_240BB3D7C(uint64_t result, int a2)
{
  v2 = *(result + 8);
  v3 = atomic_load(*v2);
  if ((v3 & 1) == 0)
  {
    result = sub_240BB3C10((*(**(v2 + 8) + 40 * **(v2 + 16) + 24) + *(**(v2 + 8) + 16) * (*(*(v2 + 24) + 8) + a2) + 4 * **(v2 + 24)), (*(**(v2 + 32) + (**(v2 + 40) << 6) + 24) + *(**(v2 + 32) + (**(v2 + 40) << 6) + 16) * a2), **(v2 + 48), **(v2 + 56), **(v2 + 64), **(v2 + 72), **(v2 + 80));
    if (result)
    {
      atomic_store(1u, *v2);
    }
  }

  return result;
}

uint64_t sub_240BB3E24(unsigned int (**a1)(uint64_t), uint64_t a2)
{
  if ((*a1)(a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_240BB3E4C(void *a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  __p = 0;
  v85 = 0;
  v86 = 0;
  if (a1[12] != a1[13])
  {
    v5 = a1[6];
    v4 = a1[7];
    if (v4 != v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        if (!v8 || *(v3[147] + 24 * v7) != *(v3[147] + 24 * v7 + 8))
        {
          v9 = (v5 + 88 * v7);
          v10 = *(v9 + 18);
          v12 = *v9;
          v11 = v9[1];
          if (v10 < (v11 - *v9) >> 6)
          {
            break;
          }
        }

LABEL_35:
        v7 = ++v8;
        if (0x2E8BA2E8BA2E8BA3 * ((v4 - v5) >> 3) <= v8)
        {
          v29 = __p;
          v2 = a2;
          goto LABEL_38;
        }
      }

      v13 = (v3[9] + 152 * v7);
      v14 = v8 + 1;
      while (1)
      {
        v15 = v9[9];
        v16 = v10 >= v15;
        v17 = v10 - v15;
        if (!v16 || (v21 = v12 + (v10 << 6), *(v21 + 40) <= *v13) && *(v21 + 48) <= *v13)
        {
          v18 = v10;
          if (!v8)
          {
            goto LABEL_12;
          }

          v19 = (v3[147] + 24 * v7);
          if (*v19 != v19[1])
          {
            break;
          }
        }

LABEL_33:
        v10 = (v10 + 1);
        if (v10 >= (v11 - v12) >> 6)
        {
          v5 = v3[6];
          v4 = v3[7];
          goto LABEL_35;
        }
      }

      v18 = *(*v19 + 4 * v17);
LABEL_12:
      v20 = *(v3[12] + 4 * v18);
      if (__p != v6 && *(v6 - 3) == v8 && *(v6 - 1) == v20)
      {
        *(v6 - 4) = v10 + 1;
      }

      else
      {
        v22 = v10 + 1;
        if (v6 >= v86)
        {
          v23 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - __p) >> 2);
          v24 = v23 + 1;
          if (v23 + 1 > 0xCCCCCCCCCCCCCCCLL)
          {
            sub_240B228BC();
          }

          if (0x999999999999999ALL * ((v86 - __p) >> 2) > v24)
          {
            v24 = 0x999999999999999ALL * ((v86 - __p) >> 2);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v86 - __p) >> 2) >= 0x666666666666666)
          {
            v25 = 0xCCCCCCCCCCCCCCCLL;
          }

          else
          {
            v25 = v24;
          }

          if (v25)
          {
            sub_240BB54F0(v25);
          }

          v26 = 20 * v23;
          *v26 = v10;
          *(v26 + 4) = v22;
          *(v26 + 8) = v8;
          *(v26 + 12) = v14;
          *(v26 + 16) = v20;
          v6 = (20 * v23 + 20);
          v27 = __p;
          v28 = (v26 - (v85 - __p));
          memcpy(v28, __p, v85 - __p);
          __p = v28;
          v86 = 0;
          if (v27)
          {
            operator delete(v27);
          }

          v3 = a1;
        }

        else
        {
          *v6 = v10;
          *(v6 + 1) = v22;
          *(v6 + 2) = v8;
          *(v6 + 3) = v14;
          *(v6 + 4) = v20;
          v6 += 20;
        }

        v85 = v6;
        v12 = *v9;
        v11 = v9[1];
      }

      goto LABEL_33;
    }

    v6 = 0;
    v29 = 0;
LABEL_38:
    v30 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v29) >> 2);
    v31 = 126 - 2 * __clz(v30);
    if (v6 == v29)
    {
      v32 = 0;
    }

    else
    {
      v32 = v31;
    }

    v33 = 1;
    sub_240BB4830(v29, v6, v32, 1);
    if (v30 >= 2)
    {
      v34 = v85;
      v35 = v29 + 20;
      v33 = 1;
      v36 = 1;
      do
      {
        v37 = &v29[20 * v33];
        if (*(v37 - 20) == *v35 && *(v37 - 1) == *(v35 + 4) && *(v37 - 2) == *(v35 + 2))
        {
          *(v37 - 2) = *(v35 + 3);
        }

        else
        {
          ++v33;
          v38 = *v35;
          *(v37 + 4) = *(v35 + 4);
          *v37 = v38;
          v6 = v34;
        }

        ++v36;
        v35 += 20;
      }

      while (v36 < 0xCCCCCCCCCCCCCCCDLL * ((v6 - v29) >> 2));
      v30 = 0xCCCCCCCCCCCCCCCDLL * ((v34 - v29) >> 2);
      v6 = v34;
    }

    v39 = v33 - v30;
    if (v33 <= v30)
    {
      if (v33 >= v30)
      {
        goto LABEL_63;
      }

      v42 = &v29[20 * v33];
    }

    else
    {
      if (0xCCCCCCCCCCCCCCCDLL * ((v86 - v6) >> 2) < v39)
      {
        if (v33 <= 0xCCCCCCCCCCCCCCCLL)
        {
          v40 = 0x999999999999999ALL * ((v86 - v29) >> 2);
          if (v40 <= v33)
          {
            v40 = v33;
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v86 - v29) >> 2) >= 0x666666666666666)
          {
            v41 = 0xCCCCCCCCCCCCCCCLL;
          }

          else
          {
            v41 = v40;
          }

          sub_240BB54F0(v41);
        }

        sub_240B228BC();
      }

      bzero(v6, 20 * ((20 * v39 - 20) / 0x14) + 20);
      v42 = &v6[20 * ((20 * v39 - 20) / 0x14) + 20];
    }

    v85 = v42;
  }

LABEL_63:
  v43 = v3[122];
  v44 = v3[123];
  if (v43 != v44)
  {
    sub_240BA2D94(v3 + 15, v43, v44, 0xCCCCCCCCCCCCCCCDLL * ((v44 - v43) >> 3));
    goto LABEL_65;
  }

  v49 = *(v3 + 140);
  if (v49 >= 7 && (*(v3 + 580) & 1) != 0)
  {
    v50 = v3[6];
    v51 = v3[7];
    if (v50 == v51)
    {
      v52 = 0;
    }

    else
    {
      v52 = 0;
      do
      {
        for (i = *v50; i != v50[1]; i += 64)
        {
          v52 += *(i + 48) * *(i + 40);
        }

        v50 += 11;
      }

      while (v50 != v51);
    }

    if (v49 == 7)
    {
      sub_240BD5204(&v75, 5, v52);
    }

    else
    {
      if (v49 != 8)
      {
        v69 = v3[15];
        v70 = v3[17];
        if (v70 == v69)
        {
          if (v70)
          {
            v3[16] = v69;
            operator delete(v69);
            v3[15] = 0;
            v3[16] = 0;
            v3[17] = 0;
          }

          sub_240B87204((v3 + 15), 1uLL);
        }

        v71 = v3[16];
        if (v71 == v69)
        {
          *v71 = 0;
          *(v71 + 4) = -1;
          *(v71 + 6) = v75;
          *(v71 + 8) = 0;
          *(v71 + 16) = 5;
          *(v71 + 24) = 0;
          *(v71 + 32) = 1;
          v72 = v71 - v69 + v71 + 40;
        }

        else
        {
          *v69 = 0;
          *(v69 + 2) = -1;
          *(v69 + 3) = v75;
          *(v69 + 1) = 0;
          v69[4] = 5;
          *(v69 + 3) = 0;
          v69[8] = 1;
          v72 = (v69 + 10);
        }

        v3[16] = v72;
        goto LABEL_65;
      }

      sub_240BD5204(&v75, 6, v52);
    }

    v68 = v3[15];
    if (v68)
    {
      v3[16] = v68;
      operator delete(v68);
      v3[15] = 0;
      v3[16] = 0;
      v3[17] = 0;
    }

    *(v3 + 15) = v75;
    v3[17] = v76;
LABEL_65:
    sub_240B81C8C(v3 + 18, 1uLL);
    v45 = v3[18];
    v45[1] = *v45;
    v75 = 0uLL;
    v76 = 0;
    sub_240BDDAF8(v3 + 15, v45, &v75);
    v46 = v3[15];
    if (v46)
    {
      v3[16] = v46;
      operator delete(v46);
      v3[15] = 0;
      v3[16] = 0;
      v3[17] = 0;
    }

    v47 = 0;
    *(v3 + 15) = v75;
    v3[17] = v76;
    goto LABEL_68;
  }

  v81 = 0;
  v82 = 0;
  v83 = 0;
  sub_240B49544(&v81, (v3[145] - v3[144]) >> 3);
  v54 = v3[145];
  v55 = v3[144];
  if (v54 - v55 != 8)
  {
    v56 = 0;
    do
    {
      v57 = (v55 + 8 * v56);
      v58 = *v57;
      ++v56;
      v59 = *(v55 + 8 * v56);
      if (*v57 < v59)
      {
        v60 = 0;
LABEL_84:
        while (2)
        {
          v61 = (v3[6] + 88 * v58);
          v62 = *v61;
          v63 = v61[1];
          while (v62 != v63)
          {
            if (*(v62 + 40))
            {
              v64 = *(v62 + 48) == 0;
            }

            else
            {
              v64 = 1;
            }

            if (!v64)
            {
              ++v58;
              v60 = 1;
              if (v58 != v59)
              {
                goto LABEL_84;
              }

              goto LABEL_97;
            }

            v62 += 64;
          }

          if (++v58 != v59)
          {
            continue;
          }

          break;
        }

        if (v60)
        {
LABEL_97:
          sub_240B495E8(&v81, v57);
          v54 = v3[145];
          v55 = v3[144];
        }
      }
    }

    while (v56 < ((v54 - v55) >> 3) - 1);
  }

  if (v81 == v82)
  {
    if (v81)
    {
      operator delete(v81);
    }

    v47 = 0;
  }

  else
  {
    sub_240B495E8(&v81, (v54 - 8));
    v80 = 0;
    v65 = (v82 - v81) >> 3;
    memset(v79, 0, sizeof(v79));
    *&v75 = v79;
    BYTE8(v75) = 0;
    if (v65 != 1)
    {
      if ((v65 - 1) < 0xAAAAAAAAAAAAAABLL)
      {
        operator new();
      }

      sub_240B228BC();
    }

    v66 = ((v82 - v81) >> 3) - 1;
    *&v75 = &v81;
    *(&v75 + 1) = v3;
    v76 = v79;
    v77 = &v80;
    p_p = &__p;
    if (v2)
    {
      v67 = sub_240BB5544(v2, v66, &v75);
    }

    else
    {
      v87[0] = 0;
      v87[1] = v87;
      v67 = sub_240BB5544(v87, v66, &v75);
    }

    v47 = v67;
    if (!v67)
    {
      v47 = 1;
      if ((atomic_exchange(&v80, 1u) & 1) == 0)
      {
        v3[16] = v3[15];
        sub_240BB55F4(v79, &v81, 0, ((v82 - v81) >> 3) - 1, v3 + 15);
        *&v75 = v79;
        sub_240B23988(&v75);
        if (v81)
        {
          v82 = v81;
          operator delete(v81);
        }

        goto LABEL_65;
      }
    }

    *&v75 = v79;
    sub_240B23988(&v75);
    if (v81)
    {
      v82 = v81;
      operator delete(v81);
    }
  }

LABEL_68:
  if (__p)
  {
    v85 = __p;
    operator delete(__p);
  }

  return v47;
}