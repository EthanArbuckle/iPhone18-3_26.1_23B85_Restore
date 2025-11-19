void sub_1003606DC(uint64_t a1, uint64_t a2, int *a3, char a4, double a5, double a6)
{
  sub_1002ACE7C(v66, &off_10047ABE8);
  v12 = sub_100271A88(a1, -1);
  sub_100271154(a1, 0xFFFFFFFF, &v65);
  *v59 = v65;
  sub_100275370(a2, v59, v12, -1, 0, 0);
  if ((a4 & 0x10) == 0)
  {
    goto LABEL_6;
  }

  if (HIDWORD(v65) == 1)
  {
    a3[1] = 1;
  }

  if (v65 == 1)
  {
    *a3 = 1;
  }

  else
  {
LABEL_6:
    v13 = *a3;
    if (*a3 != 1)
    {
      v14 = a3[1];
      goto LABEL_11;
    }
  }

  v14 = a3[1];
  if (v14 != 1)
  {
    v13 = 1;
LABEL_11:
    *v59 = 1124007936;
    *&v59[4] = 0u;
    v60 = 0u;
    memset(v61, 0, sizeof(v61));
    v62 = &v59[8];
    v63 = v64;
    v64[0] = 0;
    v64[1] = 0;
    v55[0] = 1124007936;
    memset(&v55[1], 0, 60);
    v56 = &v55[2];
    v57 = v58;
    v58[0] = 0;
    v58[1] = 0;
    *&v49[0] = __PAIR64__(v14, v13);
    sub_1003600F4(v59, v55, v12, v49, a5, a6);
    if (sub_100271148(a1) == 0x10000)
    {
      v15 = *(a1 + 8);
      v16 = *v15;
      v17 = *(v15 + 16);
      v49[0] = *v15;
      v49[1] = v17;
      v49[2] = *(v15 + 32);
      v18 = *(v15 + 56);
      v50 = *(v15 + 48);
      v51 = v18;
      v52 = v49 + 8;
      v53 = v54;
      v54[0] = 0;
      v54[1] = 0;
      if (v18)
      {
        atomic_fetch_add((v18 + 20), 1u);
        if (*(v15 + 4) <= 2)
        {
LABEL_14:
          v19 = *(v15 + 72);
          v20 = v53;
          *v53 = *v19;
          v20[1] = v19[1];
          goto LABEL_18;
        }
      }

      else if (SDWORD1(v16) <= 2)
      {
        goto LABEL_14;
      }

      DWORD1(v49[0]) = 0;
      sub_100269B58(v49, v15);
    }

    else
    {
      sub_1002703C0(a1, -1, v49);
    }

LABEL_18:
    if (sub_100271148(a2) == 0x10000)
    {
      v21 = *(a2 + 8);
      v22 = *v21;
      v23 = *(v21 + 16);
      v43[0] = *v21;
      v24 = *(v21 + 32);
      v43[1] = v23;
      v43[2] = v24;
      v25 = *(v21 + 56);
      v44 = *(v21 + 48);
      v45 = v25;
      v46 = v43 + 8;
      v47 = v48;
      v48[0] = 0;
      v48[1] = 0;
      if (v25)
      {
        atomic_fetch_add((v25 + 20), 1u);
        if (*(v21 + 4) <= 2)
        {
LABEL_21:
          v26 = *(v21 + 72);
          v27 = v47;
          *v47 = *v26;
          v27[1] = v26[1];
          goto LABEL_25;
        }
      }

      else if (SDWORD1(v22) <= 2)
      {
        goto LABEL_21;
      }

      DWORD1(v43[0]) = 0;
      sub_100269B58(v43, v21);
    }

    else
    {
      sub_1002703C0(a2, -1, v43);
    }

LABEL_25:
    v42 = 0;
    v41 = vrev64_s32(*(v49 + 8));
    if ((a4 & 0x10) == 0)
    {
      sub_10026BBAC(v49, &v41, &v42);
    }

    v40 = 0;
    v38 = 16842752;
    v39 = v49;
    v35 = 33619968;
    v36 = v43;
    v37 = 0;
    v34 = 0;
    v32 = 16842752;
    v33 = v59;
    v31 = 0;
    v29 = 16842752;
    v30 = v55;
    v28 = -1;
    sub_100309920(&v38, &v35, v12 & 7, &v32, &v29, &v28, a4);
  }

  sub_100274944(a1, a2);
  if (v67)
  {
    sub_1002ACC1C(v66);
  }
}

void sub_100360C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  sub_100006D14(&a25);
  sub_100006D14(&a37);
  sub_100006D14(&a50);
  sub_100006D14(v50 - 200);
  sub_1001D8BF4(v50 - 96);
  _Unwind_Resume(a1);
}

void sub_100360CA8(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

uint64_t sub_100360CE0(uint64_t result, unsigned __int8 *a2, unint64_t a3, int a4, int a5, __n128 a6, __n128 a7, __n128 a8)
{
  v8 = *(result + 8);
  if (v8 == 3)
  {
    v23 = (a5 * a4);
    if (v23 < 1)
    {
      return result;
    }

    v24 = 2 * a5;
    if (v23 < 4)
    {
      v25 = 0;
      goto LABEL_12;
    }

    v25 = 0;
    v47 = a3 + 4 * v23;
    v49 = &a2[a5 + v23] > a3 && &a2[a5] < v47;
    v51 = &a2[v23] > a3 && v47 > a2;
    v52 = &a2[v24] < v47 && &a2[v24 + v23] > a3;
    if (v52 || v49 || v51)
    {
      goto LABEL_12;
    }

    if (v23 >= 0x10)
    {
      v25 = v23 & 0x7FFFFFF0;
      v94 = v25;
      v95 = a3;
      v96 = a2;
      do
      {
        v97 = *(v96 + a5);
        v98 = vaddl_high_u8(v97, *v96);
        v99 = vaddl_u8(*v97.i8, *v96->i8);
        v100 = *(v96 + v24);
        v101 = vmovl_high_u8(v100);
        a7 = vmovl_u8(*v100.i8);
        v102 = vaddl_u16(*v98.i8, *v101.i8);
        v103 = vaddl_high_u16(v98, v101);
        v104 = vaddl_u16(*v99.i8, a7.n128_u64[0]);
        *(v95 + 32) = v102;
        *(v95 + 48) = v103;
        a6 = vaddl_high_u16(v99, a7);
        *v95 = v104;
        *(v95 + 16) = a6;
        v95 += 64;
        ++v96;
        v94 -= 16;
      }

      while (v94);
      if (v25 == v23)
      {
        return result;
      }

      if (((a5 * a4) & 0xC) == 0)
      {
LABEL_12:
        v26 = &a2[v25];
        v27 = (a3 + 4 * v25);
        v28 = v23 - v25;
        do
        {
          *v27++ = v26[a5] + *v26 + v26[v24];
          ++v26;
          --v28;
        }

        while (v28);
        return result;
      }
    }

    else
    {
      v25 = 0;
    }

    v105 = v25;
    v25 = v23 & 0x7FFFFFFC;
    v106 = &a2[v105];
    v107 = (a3 + 4 * v105);
    v108 = v105 - v25;
    do
    {
      a6.n128_u32[0] = *v106;
      a7.n128_u32[0] = *(v106 + a5);
      v109 = vmovl_u8(a7.n128_u64[0]).u64[0];
      v110 = vaddl_u16(v109, *&vmovl_u8(a6.n128_u64[0]));
      v109.i32[0] = *(v106 + v24);
      a7.n128_u64[0] = vmovl_u8(v109).u64[0];
      a6 = vaddw_u16(v110, a7.n128_u64[0]);
      *v107++ = a6;
      ++v106;
      v108 += 4;
    }

    while (v108);
    if (v25 == v23)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (v8 != 5)
  {
    v29 = (v8 * a5);
    v30 = ((a4 - 1) * a5);
    if (a5 != 1)
    {
      if (a5 != 3)
      {
        if (a5 == 4)
        {
          if (v29 < 1)
          {
            v32 = 0uLL;
            goto LABEL_149;
          }

          if (v29 < 0x1D)
          {
            v31 = 0;
            v32 = 0uLL;
            goto LABEL_148;
          }

          v113 = ((v29 - 1) >> 2) + 1;
          if (v29 >= 0x3D)
          {
            v203 = 0uLL;
            v118 = v113 & 0x7FFFFFFFFFFFFFF0;
            v204 = 0uLL;
            v205 = v113 & 0x7FFFFFFFFFFFFFF0;
            v206 = 0uLL;
            v207 = a2;
            v208 = 0uLL;
            v209 = 0uLL;
            v210 = 0uLL;
            v211 = 0uLL;
            v212 = 0uLL;
            v213 = 0uLL;
            v214 = 0uLL;
            v215 = 0uLL;
            v216 = 0uLL;
            v217 = 0uLL;
            a8 = 0uLL;
            v218 = 0uLL;
            v219 = 0uLL;
            do
            {
              v253 = vld4q_s8(v207);
              v207 += 64;
              v220 = vmovl_u8(*v253.val[0].i8);
              v221 = vmovl_high_u8(v253.val[0]);
              v219 = vaddw_high_u16(v219, v221);
              v218 = vaddw_u16(v218, *v221.i8);
              a8 = vaddw_high_u16(a8, v220);
              v217 = vaddw_u16(v217, *v220.i8);
              v222 = vmovl_u8(*v253.val[1].i8);
              v223 = vmovl_high_u8(v253.val[1]);
              v216 = vaddw_high_u16(v216, v223);
              v215 = vaddw_u16(v215, *v223.i8);
              v214 = vaddw_high_u16(v214, v222);
              v213 = vaddw_u16(v213, *v222.i8);
              v224 = vmovl_u8(*v253.val[2].i8);
              v225 = vmovl_high_u8(v253.val[2]);
              v212 = vaddw_high_u16(v212, v225);
              v211 = vaddw_u16(v211, *v225.i8);
              v210 = vaddw_high_u16(v210, v224);
              v209 = vaddw_u16(v209, *v224.i8);
              v226 = vmovl_u8(*v253.val[3].i8);
              v253.val[0] = vmovl_high_u8(v253.val[3]);
              v208 = vaddw_high_u16(v208, v253.val[0]);
              v206 = vaddw_u16(v206, *v253.val[0].i8);
              v204 = vaddw_high_u16(v204, v226);
              v203 = vaddw_u16(v203, *v226.i8);
              v205 -= 16;
            }

            while (v205);
            v227 = vaddvq_s32(vaddq_s32(vaddq_s32(v203, v206), vaddq_s32(v204, v208)));
            v228 = vaddvq_s32(vaddq_s32(vaddq_s32(v213, v215), vaddq_s32(v214, v216)));
            v229 = vaddq_s32(v217, v218);
            a7 = vaddq_s32(a8, v219);
            a7.n128_u32[0] = vaddvq_s32(vaddq_s32(v229, a7));
            v32.i64[0] = __PAIR64__(v228, a7.n128_u32[0]);
            v230 = vaddvq_s32(vaddq_s32(vaddq_s32(v209, v211), vaddq_s32(v210, v212)));
            v32.i64[1] = __PAIR64__(v227, v230);
            if (v113 == v118)
            {
              goto LABEL_149;
            }

            if ((v113 & 8) == 0)
            {
              v31 = 4 * v118;
              do
              {
LABEL_148:
                a7.n128_u32[0] = *&a2[v31];
                a7.n128_u64[0] = vmovl_u8(a7.n128_u64[0]).u64[0];
                v32 = vaddw_u16(v32, a7.n128_u64[0]);
                v31 += 4;
              }

              while (v31 < v29);
              goto LABEL_149;
            }

            v114 = v227;
            v115 = v230;
            v116 = v228;
            v117 = a7.n128_u32[0];
          }

          else
          {
            v114 = 0;
            v115 = 0;
            v116 = 0;
            v117 = 0;
            v118 = 0;
          }

          v31 = 4 * (v113 & 0x7FFFFFFFFFFFFFF8);
          v119 = v114;
          v120 = v115;
          v121 = v116;
          v122 = v117;
          v123 = 0uLL;
          v124 = &a2[4 * v118];
          v125 = v118 - (v113 & 0x7FFFFFFFFFFFFFF8);
          v126 = 0uLL;
          v127 = 0uLL;
          v128 = 0uLL;
          do
          {
            v252 = vld4_s8(v124);
            v124 += 32;
            v129 = vmovl_u8(v252.val[0]);
            v128 = vaddw_high_u16(v128, v129);
            v122 = vaddw_u16(v122, *v129.i8);
            v130 = vmovl_u8(v252.val[1]);
            v127 = vaddw_high_u16(v127, v130);
            v121 = vaddw_u16(v121, *v130.i8);
            v131 = vmovl_u8(v252.val[2]);
            v126 = vaddw_high_u16(v126, v131);
            v120 = vaddw_u16(v120, *v131.i8);
            *v252.val[0].i8 = vmovl_u8(v252.val[3]);
            v123 = vaddw_high_u16(v123, *v252.val[0].i8);
            v119 = vaddw_u16(v119, v252.val[0]);
            v125 += 8;
          }

          while (v125);
          a7 = vaddq_s32(v120, v126);
          a8 = vaddq_s32(v121, v127);
          v32.i64[0] = __PAIR64__(vaddvq_s32(a8), vaddvq_s32(vaddq_s32(v122, v128)));
          v32.i64[1] = __PAIR64__(vaddvq_s32(vaddq_s32(v119, v123)), vaddvq_s32(a7));
          if (v113 != (v113 & 0x7FFFFFFFFFFFFFF8))
          {
            goto LABEL_148;
          }

LABEL_149:
          *a3 = v32;
          if (v30 >= 1)
          {
            v231 = 0;
            v232 = &a2[v29];
            v233 = (a3 + 16);
            do
            {
              a7.n128_u32[0] = *&v232[v231];
              a8.n128_u32[0] = *&a2[v231];
              a8.n128_u64[0] = vmovl_u8(a8.n128_u64[0]).u64[0];
              a7 = vsubl_u16(*&vmovl_u8(a7.n128_u64[0]), a8.n128_u64[0]);
              v32 = vaddq_s32(a7, v32);
              *v233++ = v32;
              v231 += 4;
            }

            while (v231 < v30);
          }

          return result;
        }

        if (a5 < 1)
        {
          return result;
        }

        v59 = 0;
        v60 = a3 + 4 * a5;
        while (v29 < 1)
        {
          v62 = 0;
          *a3 = 0;
          if (v30 >= 1)
          {
            goto LABEL_90;
          }

LABEL_83:
          ++v59;
          ++a2;
          a3 += 4;
          v60 += 4;
          if (v59 == a5)
          {
            return result;
          }
        }

        v61 = 0;
        v62 = 0;
        do
        {
          v62 += a2[v61];
          v61 += a5;
        }

        while (v29 > v61);
        *a3 = v62;
        if (v30 < 1)
        {
          goto LABEL_83;
        }

LABEL_90:
        v63 = 0;
        do
        {
          v62 = v62 - a2[v63] + a2[v29 + v63];
          *(v60 + 4 * v63) = v62;
          result = v63 + a5;
          v63 = result;
        }

        while (result < v30);
        goto LABEL_83;
      }

      if (v29 < 1)
      {
        v56 = 0;
        v55 = 0;
        v54 = 0;
        goto LABEL_157;
      }

      if (v29 < 0x16)
      {
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v56 = 0;
        goto LABEL_155;
      }

      v111 = (v29 - 1) / 3u + 1;
      if (v29 >= 0x5E)
      {
        v132 = 0uLL;
        v112 = v111 & 0x7FFFFFE0;
        v133 = 0uLL;
        v134 = a2;
        v135 = 0uLL;
        v136 = v112;
        v137 = 0uLL;
        v138 = 0uLL;
        v139 = 0uLL;
        v140 = 0uLL;
        v141 = 0uLL;
        v142 = 0uLL;
        v143 = 0uLL;
        v144 = 0uLL;
        v145 = 0uLL;
        v146 = 0uLL;
        v147 = 0uLL;
        v148 = 0uLL;
        v149 = 0uLL;
        v150 = 0uLL;
        v151 = 0uLL;
        v152 = 0uLL;
        v248 = 0u;
        v153 = 0uLL;
        v154 = 0uLL;
        v155 = 0uLL;
        v156 = 0uLL;
        do
        {
          v242 = v133;
          v243 = v151;
          v244 = v144;
          v245 = v142;
          v246 = v152;
          v247 = v132;
          v157 = v134;
          v134 += 96;
          v250 = vld3q_s8(v157);
          v157 += 48;
          v158 = vmovl_u8(*v250.val[0].i8);
          v251 = vld3q_s8(v157);
          v159 = vmovl_high_u8(v250.val[0]);
          v160 = vmovl_u8(*v251.val[0].i8);
          v161 = vmovl_high_u8(v251.val[0]);
          v162 = vmovl_u8(*v250.val[1].i8);
          v163 = vmovl_high_u8(v250.val[1]);
          v164 = vmovl_u8(*v251.val[1].i8);
          v165 = vmovl_u8(*v250.val[2].i8);
          v250.val[0] = vmovl_high_u8(v250.val[2]);
          v250.val[1] = vmovl_high_u8(v251.val[1]);
          v250.val[2] = vmovl_u8(*v251.val[2].i8);
          v251.val[0] = vmovl_high_u8(v251.val[2]);
          v248 = vaddw_high_u16(v248, v159);
          v152 = vaddw_u16(v246, *v159.i8);
          v151 = vaddw_high_u16(v243, v158);
          v150 = vaddw_u16(v150, *v158.i8);
          v156 = vaddw_high_u16(v156, v161);
          v155 = vaddw_u16(v155, *v161.i8);
          v154 = vaddw_high_u16(v154, v160);
          v153 = vaddw_u16(v153, *v160.i8);
          v145 = vaddw_high_u16(v145, v163);
          v144 = vaddw_u16(v244, *v163.i8);
          v143 = vaddw_high_u16(v143, v162);
          v142 = vaddw_u16(v245, *v162.i8);
          v149 = vaddw_high_u16(v149, v250.val[1]);
          v148 = vaddw_u16(v148, *v250.val[1].i8);
          v147 = vaddw_high_u16(v147, v164);
          v146 = vaddw_u16(v146, *v164.i8);
          v137 = vaddw_high_u16(v137, v250.val[0]);
          v135 = vaddw_u16(v135, *v250.val[0].i8);
          v133 = vaddw_high_u16(v242, v165);
          v132 = vaddw_u16(v247, *v165.i8);
          v141 = vaddw_high_u16(v141, v251.val[0]);
          v140 = vaddw_u16(v140, *v251.val[0].i8);
          v139 = vaddw_high_u16(v139, v250.val[2]);
          v138 = vaddw_u16(v138, *v250.val[2].i8);
          v136 -= 32;
        }

        while (v136);
        v54 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v138, v132), vaddq_s32(v140, v135)), vaddq_s32(vaddq_s32(v139, v133), vaddq_s32(v141, v137))));
        v55 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v146, v142), vaddq_s32(v148, v144)), vaddq_s32(vaddq_s32(v147, v143), vaddq_s32(v149, v145))));
        v56 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v153, v150), vaddq_s32(v155, v152)), vaddq_s32(vaddq_s32(v154, v151), vaddq_s32(v156, v248))));
        if (v112 == v111)
        {
          goto LABEL_157;
        }

        if (((((v29 - 1) / 3u) + 1) & 0x18) == 0)
        {
          v53 = 3 * v112;
LABEL_155:
          v234 = &a2[v53 + 2];
          do
          {
            v56 += *(v234 - 2);
            v55 += *(v234 - 1);
            v235 = *v234;
            v234 += 3;
            v54 += v235;
            v53 += 3;
          }

          while (v53 < v29);
          goto LABEL_157;
        }
      }

      else
      {
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v112 = 0;
      }

      v53 = 3 * (v111 & 0x7FFFFFF8);
      v166 = v54;
      v167 = v55;
      v168 = v56;
      v169 = 0uLL;
      v170 = v112 - (v111 & 0x7FFFFFF8);
      v171 = &a2[3 * v112];
      v172 = 0uLL;
      v173 = 0uLL;
      do
      {
        v249 = vld3_s8(v171);
        v171 += 24;
        v174 = vmovl_u8(v249.val[0]);
        v173 = vaddw_high_u16(v173, v174);
        v168 = vaddw_u16(v168, *v174.i8);
        v175 = vmovl_u8(v249.val[1]);
        v172 = vaddw_high_u16(v172, v175);
        v167 = vaddw_u16(v167, *v175.i8);
        v176 = vmovl_u8(v249.val[2]);
        v169 = vaddw_high_u16(v169, v176);
        v166 = vaddw_u16(v166, *v176.i8);
        v170 += 8;
      }

      while (v170);
      v54 = vaddvq_s32(vaddq_s32(v166, v169));
      v55 = vaddvq_s32(vaddq_s32(v167, v172));
      v56 = vaddvq_s32(vaddq_s32(v168, v173));
      if ((v111 & 0x7FFFFFF8) != v111)
      {
        goto LABEL_155;
      }

LABEL_157:
      *a3 = v56;
      *(a3 + 4) = v55;
      *(a3 + 8) = v54;
      if (v30 >= 1)
      {
        v236 = (a3 + 20);
        v237 = &a2[v29 + 2];
        v238 = a2 + 1;
        v239 = 2;
        do
        {
          v56 = v56 - *(v238 - 1) + *(v237 - 2);
          v55 = v55 - *v238 + *(v237 - 1);
          v240 = *v237;
          v237 += 3;
          v54 = v54 - v238[1] + v240;
          *(v236 - 2) = v56;
          *(v236 - 1) = v55;
          v241 = v239 + 1;
          v239 += 3;
          *v236 = v54;
          v236 += 3;
          v238 += 3;
        }

        while (v241 < v30);
      }

      return result;
    }

    if (v29 < 1)
    {
      v58 = 0;
      goto LABEL_139;
    }

    if (v29 < 4)
    {
      v57 = 0;
      v58 = 0;
      goto LABEL_137;
    }

    if (v29 >= 0x20)
    {
      v177 = 0uLL;
      v57 = v29 & 0x7FFFFFE0;
      v178 = 0uLL;
      v179 = (a2 + 16);
      v180 = v57;
      v181 = 0uLL;
      v182 = 0uLL;
      v183 = 0uLL;
      v184 = 0uLL;
      v185 = 0uLL;
      v186 = 0uLL;
      do
      {
        v187 = *v179[-2].i8;
        v188 = vmovl_u8(*v187.i8);
        v189 = vmovl_high_u8(v187);
        v190 = vmovl_u8(*v179);
        v191 = vmovl_high_u8(*v179->i8);
        v182 = vaddw_high_u16(v182, v189);
        v181 = vaddw_u16(v181, *v189.i8);
        v178 = vaddw_high_u16(v178, v188);
        v177 = vaddw_u16(v177, *v188.i8);
        v186 = vaddw_high_u16(v186, v191);
        v185 = vaddw_u16(v185, *v191.i8);
        v184 = vaddw_high_u16(v184, v190);
        v183 = vaddw_u16(v183, *v190.i8);
        v179 += 4;
        v180 -= 32;
      }

      while (v180);
      a7 = vaddq_s32(vaddq_s32(v184, v178), vaddq_s32(v186, v182));
      v58 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v183, v177), vaddq_s32(v185, v181)), a7));
      if (v57 == v29)
      {
        goto LABEL_139;
      }

      if ((v29 & 0x1C) == 0)
      {
LABEL_137:
        v197 = &a2[v57];
        v198 = v29 - v57;
        do
        {
          v199 = *v197++;
          v58 += v199;
          --v198;
        }

        while (v198);
        goto LABEL_139;
      }
    }

    else
    {
      v58 = 0;
      v57 = 0;
    }

    v192 = v57;
    v57 = v29 & 0x7FFFFFFC;
    v193 = v58;
    v194 = &a2[v192];
    v195 = v192 - v57;
    do
    {
      v196 = *v194++;
      a7.n128_u32[0] = v196;
      a7.n128_u64[0] = vmovl_u8(a7.n128_u64[0]).u64[0];
      v193 = vaddw_u16(v193, a7.n128_u64[0]);
      v195 += 4;
    }

    while (v195);
    v58 = vaddvq_s32(v193);
    if (v57 != v29)
    {
      goto LABEL_137;
    }

LABEL_139:
    *a3 = v58;
    if (v30 >= 1)
    {
      v200 = (a3 + 4);
      do
      {
        v201 = a2[v29];
        v202 = *a2++;
        v58 = v58 - v202 + v201;
        *v200++ = v58;
        --v30;
      }

      while (v30);
    }

    return result;
  }

  v9 = (a5 * a4);
  if (v9 < 1)
  {
    return result;
  }

  v10 = a5;
  v11 = 2 * a5;
  v12 = 3 * a5;
  v13 = 4 * a5;
  if (v9 < 4)
  {
    v14 = 0;
    goto LABEL_6;
  }

  v14 = 0;
  v33 = &a2[a5];
  v34 = &a2[v11];
  v35 = &a2[v12];
  v36 = &a2[v13];
  v37 = a3 + 4 * v9;
  v39 = &a2[v12 + v9] > a3 && v35 < v37;
  v41 = &a2[v11 + v9] > a3 && v34 < v37;
  v43 = &v33[v9] > a3 && v33 < v37;
  v45 = &a2[v9] > a3 && v37 > a2;
  v46 = v36 < v37 && &v36[v9] > a3;
  if (v46 || v39 || v41 || v43 || v45)
  {
    goto LABEL_6;
  }

  if (v9 >= 0x10)
  {
    v14 = v9 & 0x7FFFFFF0;
    result = v14;
    v64 = a3;
    v65 = a2;
    do
    {
      v66 = *(v65 + v10);
      v67 = vaddl_high_u8(v66, *v65);
      v68 = *(v65 + v11);
      v69 = vaddl_u8(*v66.i8, *v65->i8);
      v70 = vmovl_high_u8(v68);
      v71 = vmovl_u8(*v68.i8);
      v72 = vaddl_u16(*v69.i8, *v71.i8);
      v73 = vaddl_high_u16(v69, v71);
      v74 = vaddl_u16(*v67.i8, *v70.i8);
      v75 = vaddl_high_u16(v67, v70);
      v76 = *(v65 + v12);
      v77 = vmovl_u8(*v76.i8);
      v78 = vmovl_high_u8(v76);
      v79 = vaddw_high_u16(v75, v78);
      v80 = vaddw_u16(v74, *v78.i8);
      v81 = vaddw_high_u16(v73, v77);
      v82 = vaddw_u16(v72, *v77.i8);
      v83 = *(v65 + v13);
      v84 = vmovl_high_u8(v83);
      v85 = vmovl_u8(*v83.i8);
      a8 = vaddw_u16(v80, *v84.i8);
      a7 = vaddw_high_u16(v79, v84);
      *(v64 + 32) = a8;
      *(v64 + 48) = a7;
      a6 = vaddw_high_u16(v81, v85);
      *v64 = vaddw_u16(v82, *v85.i8);
      *(v64 + 16) = a6;
      v64 += 64;
      ++v65;
      result -= 16;
    }

    while (result);
    if (v14 == v9)
    {
      return result;
    }

    if ((v9 & 0xC) == 0)
    {
LABEL_6:
      v15 = 0;
      v16 = &a2[v14];
      v17 = &a2[v14 + v13];
      v18 = &a2[v14 + v12];
      v19 = &a2[v14 + v11];
      v20 = &a2[v14 + v10];
      v21 = v9 - v14;
      v22 = a3 + 4 * v14;
      do
      {
        result = v17[v15];
        *(v22 + 4 * v15) = v20[v15] + v16[v15] + v19[v15] + v18[v15] + result;
        ++v15;
      }

      while (v21 != v15);
      return result;
    }
  }

  else
  {
    v14 = 0;
  }

  result = v9 & 0x7FFFFFFC;
  v86 = (a3 + 4 * v14);
  v87 = result;
  v88 = a2;
  do
  {
    a6.n128_u32[0] = *&v88[v14];
    a7.n128_u32[0] = *&v33[v14];
    v89 = vmovl_u8(a7.n128_u64[0]).u64[0];
    v90 = vaddl_u16(v89, *&vmovl_u8(a6.n128_u64[0]));
    v89.i32[0] = *&v34[v14];
    v91 = vmovl_u8(v89).u64[0];
    v92 = vaddw_u16(v90, v91);
    v91.i32[0] = *&v35[v14];
    a8.n128_u32[0] = *&v36[v14];
    v93 = vaddw_u16(v92, *&vmovl_u8(v91));
    a7.n128_u64[0] = vmovl_u8(a8.n128_u64[0]).u64[0];
    a6 = vaddw_u16(v93, a7.n128_u64[0]);
    *v86++ = a6;
    v88 += 4;
    v33 += 4;
    v34 += 4;
    v35 += 4;
    v36 += 4;
    v87 -= 4;
  }

  while (v14 != v87);
  v14 = v9 & 0x7FFFFFFC;
  if (result != v9)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1003618D4(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

void sub_10036195C(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

double sub_100361994(uint64_t a1, uint8x16_t *a2, unint64_t a3, int a4, int a5, __n128 a6, int16x8_t a7, uint16x8_t a8)
{
  v8 = *(a1 + 8);
  if (v8 == 3)
  {
    v23 = (a5 * a4);
    if (v23 < 1)
    {
      return a6.n128_f64[0];
    }

    v24 = 2 * a5;
    if (v23 < 8)
    {
      v25 = 0;
      goto LABEL_12;
    }

    v25 = 0;
    v46 = a3 + 2 * v23;
    v48 = a2->u64 + a5 + v23 > a3 && a2->u64 + a5 < v46;
    v50 = a2->u64 + v23 > a3 && v46 > a2;
    v51 = a2->u64 + v24 < v46 && a2->u64 + v24 + v23 > a3;
    if (v51 || v48 || v50)
    {
      goto LABEL_12;
    }

    if (v23 >= 0x20)
    {
      v25 = v23 & 0x7FFFFFE0;
      v90 = a2 + 1;
      v91 = (a3 + 32);
      v92 = v25;
      do
      {
        v93 = v90[-1];
        v94 = *(&v90[-1] + a5);
        v95 = *(v90 + a5);
        v96 = vaddl_high_u8(v94, v93);
        v97 = vaddl_u8(*v94.i8, *v93.i8);
        v98 = vaddl_high_u8(v95, *v90);
        v99 = vaddl_u8(*v95.i8, *v90->i8);
        v100 = *(&v90[-1] + v24);
        v101 = *(v90 + v24);
        a6 = vaddw_u8(v97, *v100.i8);
        v91[-2] = a6;
        v91[-1] = vaddw_high_u8(v96, v100);
        *v91 = vaddw_u8(v99, *v101.i8);
        v91[1] = vaddw_high_u8(v98, v101);
        v91 += 4;
        v90 += 2;
        v92 -= 32;
      }

      while (v92);
      if (v25 == v23)
      {
        return a6.n128_f64[0];
      }

      if (((a5 * a4) & 0x18) == 0)
      {
LABEL_12:
        v26 = &a2->u8[v25];
        v27 = (a3 + 2 * v25);
        v28 = v23 - v25;
        do
        {
          *v27++ = v26[a5] + *v26 + v26[v24];
          ++v26;
          --v28;
        }

        while (v28);
        return a6.n128_f64[0];
      }
    }

    else
    {
      v25 = 0;
    }

    v102 = v25;
    v25 = v23 & 0x7FFFFFF8;
    v103 = &a2->i8[v102];
    v104 = (a3 + 2 * v102);
    v105 = v102 - v25;
    do
    {
      a6 = vaddw_u8(vaddl_u8(*(v103 + a5), *v103), *(v103 + v24));
      *v104++ = a6;
      ++v103;
      v105 += 8;
    }

    while (v105);
    if (v25 == v23)
    {
      return a6.n128_f64[0];
    }

    goto LABEL_12;
  }

  if (v8 != 5)
  {
    v29 = (v8 * a5);
    v30 = ((a4 - 1) * a5);
    if (a5 != 1)
    {
      if (a5 != 3)
      {
        if (a5 == 4)
        {
          if (v29 < 1)
          {
            a6.n128_u64[0] = 0;
            goto LABEL_157;
          }

          if (v29 < 0x1D)
          {
            v31 = 0;
            a6 = 0uLL;
            goto LABEL_156;
          }

          v108 = ((v29 - 1) >> 2) + 1;
          if (v29 >= 0x7D)
          {
            v152 = 0uLL;
            v113 = v108 & 0x7FFFFFFFFFFFFFE0;
            v153 = 0uLL;
            i8 = a2[4].i8;
            v155 = 0uLL;
            v156 = v108 & 0x7FFFFFFFFFFFFFE0;
            v157 = 0uLL;
            v158 = 0uLL;
            v159 = 0uLL;
            v160 = 0uLL;
            v161 = 0uLL;
            v162 = 0uLL;
            v163 = 0uLL;
            v164 = 0uLL;
            v165 = 0uLL;
            v166 = 0uLL;
            a8 = 0uLL;
            v167 = 0uLL;
            v168 = 0uLL;
            do
            {
              v169 = i8 - 64;
              v193 = vld4q_s8(v169);
              v194 = vld4q_s8(i8);
              a8 = vaddw_high_u8(a8, v193.val[0]);
              v166 = vaddw_u8(v166, *v193.val[0].i8);
              v168 = vaddw_high_u8(v168, v194.val[0]);
              v167 = vaddw_u8(v167, *v194.val[0].i8);
              v163 = vaddw_high_u8(v163, v193.val[1]);
              v162 = vaddw_u8(v162, *v193.val[1].i8);
              v165 = vaddw_high_u8(v165, v194.val[1]);
              v164 = vaddw_u8(v164, *v194.val[1].i8);
              v159 = vaddw_high_u8(v159, v193.val[2]);
              v158 = vaddw_u8(v158, *v193.val[2].i8);
              v161 = vaddw_high_u8(v161, v194.val[2]);
              v160 = vaddw_u8(v160, *v194.val[2].i8);
              v153 = vaddw_high_u8(v153, v193.val[3]);
              v152 = vaddw_u8(v152, *v193.val[3].i8);
              v157 = vaddw_high_u8(v157, v194.val[3]);
              v155 = vaddw_u8(v155, *v194.val[3].i8);
              i8 += 128;
              v156 -= 32;
            }

            while (v156);
            v170 = vaddvq_s16(vaddq_s16(vaddq_s16(v155, v152), vaddq_s16(v157, v153)));
            v171 = vaddvq_s16(vaddq_s16(vaddq_s16(v164, v162), vaddq_s16(v165, v163)));
            v172 = vaddq_s16(v167, v166);
            a7 = vaddq_s16(v168, a8);
            a7.i16[0] = vaddvq_s16(vaddq_s16(v172, a7));
            a6 = a7;
            a6.n128_u16[1] = v171;
            v173 = vaddvq_s16(vaddq_s16(vaddq_s16(v160, v158), vaddq_s16(v161, v159)));
            a6.n128_u16[2] = v173;
            a6.n128_u16[3] = v170;
            if (v108 == v113)
            {
              goto LABEL_157;
            }

            if ((v108 & 0x18) == 0)
            {
              v31 = 4 * v113;
              do
              {
LABEL_156:
                a7.i32[0] = a2->i32[v31 / 4];
                a6 = vaddw_u8(a6, *a7.i8);
                v31 += 4;
              }

              while (v31 < v29);
              goto LABEL_157;
            }

            v109 = v170;
            v110 = v173;
            v111 = v171;
            v112 = a7.i16[0];
          }

          else
          {
            v109 = 0;
            v110 = 0;
            v111 = 0;
            v112 = 0;
            v113 = 0;
          }

          v31 = 4 * (v108 & 0x7FFFFFFFFFFFFFF8);
          a8 = v109;
          a7 = v110;
          v174 = v111;
          a6 = v112;
          v175 = &a2->i8[4 * v113];
          v176 = v113 - (v108 & 0x7FFFFFFFFFFFFFF8);
          do
          {
            v192 = vld4_s8(v175);
            v175 += 32;
            a6 = vaddw_u8(a6, v192.val[0]);
            v174 = vaddw_u8(v174, v192.val[1]);
            a7 = vaddw_u8(a7, v192.val[2]);
            a8 = vaddw_u8(a8, v192.val[3]);
            v176 += 8;
          }

          while (v176);
          a6.n128_u16[0] = vaddvq_s16(a6);
          a6.n128_u16[1] = vaddvq_s16(v174);
          a6.n128_u16[2] = vaddvq_s16(a7);
          a6.n128_u16[3] = vaddvq_s16(a8);
          if (v108 != (v108 & 0x7FFFFFFFFFFFFFF8))
          {
            goto LABEL_156;
          }

LABEL_157:
          *a3 = a6.n128_u64[0];
          if (v30 >= 1)
          {
            v185 = 0;
            v186 = &a2->u8[v29];
            v187 = (a3 + 8);
            do
            {
              a7.i32[0] = *&v186[v185];
              a8.i32[0] = a2->i32[v185 / 4];
              a7.i64[0] = vsubl_u8(*a7.i8, *a8.i8).u64[0];
              a6.n128_u64[0] = vadd_s16(*a7.i8, a6.n128_u64[0]);
              *v187++ = a6.n128_u64[0];
              v185 += 4;
            }

            while (v185 < v30);
          }

          return a6.n128_f64[0];
        }

        if (a5 < 1)
        {
          return a6.n128_f64[0];
        }

        v58 = 0;
        v59 = a3 + 2 * a5;
        while (v29 < 1)
        {
          v61 = 0;
          *a3 = 0;
          if (v30 >= 1)
          {
            goto LABEL_90;
          }

LABEL_83:
          ++v58;
          a2 = (a2 + 1);
          a3 += 2;
          v59 += 2;
          if (v58 == a5)
          {
            return a6.n128_f64[0];
          }
        }

        v60 = 0;
        v61 = 0;
        do
        {
          v61 += a2->u8[v60];
          v60 += a5;
        }

        while (v29 > v60);
        *a3 = v61;
        if (v30 < 1)
        {
          goto LABEL_83;
        }

LABEL_90:
        v62 = 0;
        do
        {
          v61 += a2->u8[v29 + v62] - a2->u8[v62];
          *(v59 + 2 * v62) = v61;
          v62 += a5;
        }

        while (v62 < v30);
        goto LABEL_83;
      }

      if (v29 < 1)
      {
        v55 = 0;
        v54 = 0;
        v53 = 0;
        goto LABEL_151;
      }

      if (v29 < 0x16)
      {
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v55 = 0;
        goto LABEL_149;
      }

      v106 = (v29 - 1) / 3u + 1;
      if (v29 >= 0x5E)
      {
        v114 = 0uLL;
        v107 = v106 & 0x7FFFFFE0;
        v115 = 0uLL;
        v116 = a2;
        v117 = 0uLL;
        v118 = v107;
        v119 = 0uLL;
        v120 = 0uLL;
        v121 = 0uLL;
        v122 = 0uLL;
        v123 = 0uLL;
        v124 = 0uLL;
        v125 = 0uLL;
        v126 = 0uLL;
        v127 = 0uLL;
        do
        {
          v128 = v116;
          v116 += 96;
          v190 = vld3q_s8(v128);
          v128 += 48;
          v125 = vaddw_high_u8(v125, v190.val[0]);
          v191 = vld3q_s8(v128);
          v124 = vaddw_u8(v124, *v190.val[0].i8);
          v127 = vaddw_high_u8(v127, v191.val[0]);
          v126 = vaddw_u8(v126, *v191.val[0].i8);
          v121 = vaddw_high_u8(v121, v190.val[1]);
          v120 = vaddw_u8(v120, *v190.val[1].i8);
          v123 = vaddw_high_u8(v123, v191.val[1]);
          v122 = vaddw_u8(v122, *v191.val[1].i8);
          v115 = vaddw_high_u8(v115, v190.val[2]);
          v114 = vaddw_u8(v114, *v190.val[2].i8);
          v119 = vaddw_high_u8(v119, v191.val[2]);
          v117 = vaddw_u8(v117, *v191.val[2].i8);
          v118 -= 32;
        }

        while (v118);
        v129 = vaddq_s16(vaddq_s16(v117, v114), vaddq_s16(v119, v115));
        v129.i16[0] = vaddvq_s16(v129);
        v53 = v129.i32[0];
        v130 = vaddq_s16(vaddq_s16(v122, v120), vaddq_s16(v123, v121));
        v130.i16[0] = vaddvq_s16(v130);
        v54 = v130.i32[0];
        a6 = vaddq_s16(vaddq_s16(v126, v124), vaddq_s16(v127, v125));
        a6.n128_u16[0] = vaddvq_s16(a6);
        v55 = a6.n128_u32[0];
        if (v107 == v106)
        {
          goto LABEL_151;
        }

        if (((((v29 - 1) / 3u) + 1) & 0x18) == 0)
        {
          v52 = 3 * v107;
LABEL_149:
          v177 = &a2->u8[v52 + 2];
          do
          {
            v55 += *(v177 - 2);
            v54 += *(v177 - 1);
            v178 = *v177;
            v177 += 3;
            v53 += v178;
            v52 += 3;
          }

          while (v52 < v29);
          goto LABEL_151;
        }
      }

      else
      {
        LOWORD(v53) = 0;
        LOWORD(v54) = 0;
        LOWORD(v55) = 0;
        v107 = 0;
      }

      v52 = 3 * (v106 & 0x7FFFFFF8);
      v131 = v53;
      v132 = v54;
      a6 = v55;
      v133 = v107 - (v106 & 0x7FFFFFF8);
      v134 = &a2->i8[3 * v107];
      do
      {
        v189 = vld3_s8(v134);
        v134 += 24;
        a6 = vaddw_u8(a6, v189.val[0]);
        v132 = vaddw_u8(v132, v189.val[1]);
        v131 = vaddw_u8(v131, v189.val[2]);
        v133 += 8;
      }

      while (v133);
      v131.i16[0] = vaddvq_s16(v131);
      v53 = v131.i32[0];
      v132.i16[0] = vaddvq_s16(v132);
      v54 = v132.i32[0];
      a6.n128_u16[0] = vaddvq_s16(a6);
      v55 = a6.n128_u32[0];
      if ((v106 & 0x7FFFFFF8) != v106)
      {
        goto LABEL_149;
      }

LABEL_151:
      *a3 = v55;
      *(a3 + 2) = v54;
      *(a3 + 4) = v53;
      if (v30 >= 1)
      {
        v179 = (a3 + 10);
        v180 = &a2->u8[v29 + 2];
        v181 = &a2->u8[1];
        v182 = 2;
        do
        {
          v55 += *(v180 - 2) - *(v181 - 1);
          v54 += *(v180 - 1) - *v181;
          v183 = *v180;
          v180 += 3;
          v53 += v183 - v181[1];
          *(v179 - 2) = v55;
          *(v179 - 1) = v54;
          v184 = v182 + 1;
          v182 += 3;
          *v179 = v53;
          v179 += 3;
          v181 += 3;
        }

        while (v184 < v30);
      }

      return a6.n128_f64[0];
    }

    if (v29 < 1)
    {
      v57 = 0;
      goto LABEL_135;
    }

    if (v29 < 8)
    {
      v56 = 0;
      v57 = 0;
      goto LABEL_133;
    }

    if (v29 >= 0x20)
    {
      v56 = v29 & 0x7FFFFFE0;
      v135 = a2 + 1;
      v136 = 0uLL;
      v137 = v56;
      v138 = 0uLL;
      v139 = 0uLL;
      v140 = 0uLL;
      do
      {
        v141 = v135[-1];
        v138 = vaddw_high_u8(v138, v141);
        v136 = vaddw_u8(v136, *v141.i8);
        v140 = vaddw_high_u8(v140, *v135);
        v139 = vaddw_u8(v139, *v135->i8);
        v135 += 2;
        v137 -= 32;
      }

      while (v137);
      a6 = vaddq_s16(vaddq_s16(v139, v136), vaddq_s16(v140, v138));
      a6.n128_u16[0] = vaddvq_s16(a6);
      v57 = a6.n128_u32[0];
      if (v56 == v29)
      {
        goto LABEL_135;
      }

      if ((v29 & 0x18) == 0)
      {
LABEL_133:
        v146 = &a2->u8[v56];
        v147 = v29 - v56;
        do
        {
          v148 = *v146++;
          v57 += v148;
          --v147;
        }

        while (v147);
        goto LABEL_135;
      }
    }

    else
    {
      LOWORD(v57) = 0;
      v56 = 0;
    }

    v142 = v56;
    v56 = v29 & 0x7FFFFFF8;
    a6 = v57;
    v143 = &a2->i8[v142];
    v144 = v142 - v56;
    do
    {
      v145 = *v143++;
      a6 = vaddw_u8(a6, v145);
      v144 += 8;
    }

    while (v144);
    a6.n128_u16[0] = vaddvq_s16(a6);
    v57 = a6.n128_u32[0];
    if (v56 != v29)
    {
      goto LABEL_133;
    }

LABEL_135:
    *a3 = v57;
    if (v30 >= 1)
    {
      v149 = (a3 + 2);
      do
      {
        v150 = a2->u8[v29];
        v151 = a2->u8[0];
        a2 = (a2 + 1);
        v57 += v150 - v151;
        *v149++ = v57;
        --v30;
      }

      while (v30);
    }

    return a6.n128_f64[0];
  }

  v9 = (a5 * a4);
  if (v9 < 1)
  {
    return a6.n128_f64[0];
  }

  v10 = a5;
  v11 = 2 * a5;
  v12 = 3 * a5;
  v13 = 4 * a5;
  if (v9 < 8)
  {
    v14 = 0;
    goto LABEL_6;
  }

  v14 = 0;
  v32 = &a2->u8[a5];
  v33 = &a2->u8[v11];
  v34 = &a2->u8[v12];
  v35 = &a2->u8[v13];
  v36 = a3 + 2 * v9;
  v38 = a2->u64 + v12 + v9 > a3 && v34 < v36;
  v40 = a2->u64 + v11 + v9 > a3 && v33 < v36;
  v42 = &v32[v9] > a3 && v32 < v36;
  v44 = a2->u64 + v9 > a3 && v36 > a2;
  v45 = v35 < v36 && &v35[v9] > a3;
  if (v45 || v38 || v40 || v42 || v44)
  {
    goto LABEL_6;
  }

  if (v9 >= 0x20)
  {
    v14 = v9 & 0x7FFFFFE0;
    v63 = a2 + 1;
    v64 = (a3 + 32);
    v65 = v14;
    do
    {
      v66 = v63[-1];
      v67 = *(&v63[-1] + v10);
      v68 = *(v63 + v10);
      v69 = vaddl_high_u8(v67, v66);
      v70 = vaddl_u8(*v67.i8, *v66.i8);
      v71 = vaddl_high_u8(v68, *v63);
      v72 = vaddl_u8(*v68.i8, *v63->i8);
      v73 = *(&v63[-1] + v11);
      v74 = *(v63 + v11);
      v75 = vaddw_u8(v70, *v73.i8);
      v76 = vaddw_high_u8(v69, v73);
      v77 = vaddw_u8(v72, *v74.i8);
      v78 = vaddw_high_u8(v71, v74);
      v79 = *(&v63[-1] + v12);
      v80 = *(v63 + v12);
      v81 = vaddw_high_u8(v76, v79);
      v82 = vaddw_u8(v75, *v79.i8);
      v83 = vaddw_high_u8(v78, v80);
      v84 = vaddw_u8(v77, *v80.i8);
      v85 = *(&v63[-1] + v13);
      v86 = *(v63 + v13);
      a6 = vaddw_u8(v82, *v85.i8);
      v64[-2] = a6;
      v64[-1] = vaddw_high_u8(v81, v85);
      *v64 = vaddw_u8(v84, *v86.i8);
      v64[1] = vaddw_high_u8(v83, v86);
      v64 += 4;
      v63 += 2;
      v65 -= 32;
    }

    while (v65);
    if (v14 == v9)
    {
      return a6.n128_f64[0];
    }

    if ((v9 & 0x18) == 0)
    {
LABEL_6:
      v15 = 0;
      v16 = &a2->u8[v14];
      v17 = &a2->u8[v14 + v13];
      v18 = &a2->u8[v14 + v12];
      v19 = &a2->u8[v14 + v11];
      v20 = &a2->u8[v14 + v10];
      v21 = v9 - v14;
      v22 = a3 + 2 * v14;
      do
      {
        *(v22 + 2 * v15) = v20[v15] + v16[v15] + v19[v15] + v18[v15] + v17[v15];
        ++v15;
      }

      while (v21 != v15);
      return a6.n128_f64[0];
    }
  }

  else
  {
    v14 = 0;
  }

  v87 = (a3 + 2 * v14);
  v88 = v9 & 0x7FFFFFF8;
  v89 = a2;
  do
  {
    a6 = vaddw_u8(vaddw_u8(vaddw_u8(vaddl_u8(*&v32[v14], *&v89->i8[v14]), *&v33[v14]), *&v34[v14]), *&v35[v14]);
    *v87++ = a6;
    v89 = (v89 + 8);
    v32 += 8;
    v33 += 8;
    v34 += 8;
    v35 += 8;
    v88 -= 8;
  }

  while (v14 != v88);
  v14 = v9 & 0x7FFFFFF8;
  if (v14 != v9)
  {
    goto LABEL_6;
  }

  return a6.n128_f64[0];
}

uint64_t sub_100362390(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

void sub_100362418(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

uint64_t sub_100362450(uint64_t result, unsigned __int8 *a2, unint64_t a3, int a4, int a5, __n128 a6, float64x2_t a7, float64x2_t a8, float64x2_t a9, float64x2_t a10, int8x16_t a11, double a12, double a13)
{
  v14 = *(result + 8);
  if (v14 == 3)
  {
    v35 = (a5 * a4);
    if (v35 < 1)
    {
      return result;
    }

    v36 = 2 * a5;
    if (v35 < 4)
    {
      v37 = 0;
      goto LABEL_12;
    }

    v37 = 0;
    v64 = a3 + 8 * v35;
    v66 = &a2[a5 + v35] > a3 && &a2[a5] < v64;
    v68 = &a2[v35] > a3 && v64 > a2;
    v69 = &a2[v36] < v64 && &a2[v36 + v35] > a3;
    if (v69 || v66 || v68)
    {
      goto LABEL_12;
    }

    if (v35 >= 0x10)
    {
      v37 = v35 & 0x7FFFFFF0;
      a6.n128_u64[0] = 0xFF000000FFLL;
      v227 = v37;
      v228 = a3;
      v229 = a2;
      do
      {
        v230.i32[0] = v229->u8[0];
        v231.i32[0] = BYTE2(v229->u32[0]);
        v230.i32[1] = HIBYTE(v229->u16[0]);
        v232.i32[0] = BYTE4(v229->i64[0]);
        v233.i32[0] = BYTE6(v229->i64[0]);
        v231.i32[1] = HIBYTE(v229->u32[0]);
        v234 = *(v229 + a5);
        result = v234.u8[0];
        v232.i32[1] = (WORD2(v229->i64[0]) >> 8);
        v233.i32[1] = HIBYTE(v229->i64[0]);
        v235.i32[0] = v234.u8[0];
        v236.i32[0] = v234.u8[2];
        v237.i32[0] = v234.u8[4];
        v235.i32[1] = v234.u8[1];
        v238 = *(v229 + v36);
        v236.i32[1] = v234.u8[3];
        v239.i32[0] = v234.u8[6];
        v240.i32[0] = v238.u8[6];
        v237.i32[1] = v234.u8[5];
        v239.i32[1] = v234.u8[7];
        v240.i32[1] = v238.u8[7];
        v241.i32[0] = v238.u8[4];
        v242.i32[0] = v238.u8[2];
        v241.i32[1] = v238.u8[5];
        v242.i32[1] = v238.u8[3];
        v243.i32[0] = v238.u8[0];
        v243.i32[1] = v238.u8[1];
        v244 = vextq_s8(*v229, *v229, 8uLL).u64[0];
        v245.i32[0] = v244.u8[0];
        v245.i32[1] = v244.u8[1];
        v246.i32[0] = v244.u8[2];
        v247.i32[0] = v244.u8[4];
        v246.i32[1] = v244.u8[3];
        v247.i32[1] = v244.u8[5];
        v248 = vextq_s8(v234, v234, 8uLL).u64[0];
        v249.i32[0] = v244.u8[6];
        v249.i32[1] = v244.u8[7];
        v250 = vextq_s8(v238, v238, 8uLL).u64[0];
        v251.i32[0] = v248.u8[0];
        v234.i32[0] = v248.u8[2];
        v238.i32[0] = v248.u8[4];
        v251.i32[1] = v248.u8[1];
        v252.i32[0] = v248.u8[6];
        v244.i32[0] = v250.u8[6];
        v234.i32[1] = v248.u8[3];
        v238.i32[1] = v248.u8[5];
        v252.i32[1] = v248.u8[7];
        v253.i32[0] = v250.u8[4];
        v248.i32[0] = v250.u8[2];
        v244.i32[1] = v250.u8[7];
        v253.i32[1] = v250.u8[5];
        v254 = v250.u8[1];
        v248.i32[1] = v250.u8[3];
        v250.i32[0] = v250.u8[0];
        v255 = vand_s8(v245, 0xFF000000FFLL);
        v256.i64[0] = v255.u32[0];
        v256.i64[1] = v255.u32[1];
        v257 = v256;
        v258 = vand_s8(v246, 0xFF000000FFLL);
        v256.i64[0] = v258.u32[0];
        v256.i64[1] = v258.u32[1];
        v259 = vcvtq_f64_u64(v256);
        v260 = vand_s8(v247, 0xFF000000FFLL);
        v256.i64[0] = v260.u32[0];
        v256.i64[1] = v260.u32[1];
        v261 = v256;
        v262 = vand_s8(v249, 0xFF000000FFLL);
        v256.i64[0] = v262.u32[0];
        v256.i64[1] = v262.u32[1];
        v263 = v256;
        v264 = vand_s8(v230, 0xFF000000FFLL);
        v256.i64[0] = v264.u32[0];
        v256.i64[1] = v264.u32[1];
        v265 = v256;
        v266 = vand_s8(v231, 0xFF000000FFLL);
        v267 = vand_s8(v232, 0xFF000000FFLL);
        v268 = vand_s8(v233, 0xFF000000FFLL);
        v256.i64[0] = v268.u32[0];
        v256.i64[1] = v268.u32[1];
        v269 = vcvtq_f64_u64(v256);
        v270 = vand_s8(v239, 0xFF000000FFLL);
        v256.i64[0] = v270.u32[0];
        v256.i64[1] = v270.u32[1];
        v271 = vaddq_f64(v269, vcvtq_f64_u64(v256));
        v256.i64[0] = v267.u32[0];
        v256.i64[1] = v267.u32[1];
        v272 = vcvtq_f64_u64(v256);
        v273 = vand_s8(v237, 0xFF000000FFLL);
        v256.i64[0] = v273.u32[0];
        v256.i64[1] = v273.u32[1];
        v274 = vaddq_f64(v272, vcvtq_f64_u64(v256));
        v256.i64[0] = v266.u32[0];
        v256.i64[1] = v266.u32[1];
        v275 = vcvtq_f64_u64(v256);
        v276 = vand_s8(v236, 0xFF000000FFLL);
        v256.i64[0] = v276.u32[0];
        v256.i64[1] = v276.u32[1];
        v277 = vaddq_f64(v275, vcvtq_f64_u64(v256));
        v278 = vand_s8(v235, 0xFF000000FFLL);
        v256.i64[0] = v278.u32[0];
        v256.i64[1] = v278.u32[1];
        v279 = vand_s8(v251, 0xFF000000FFLL);
        v280 = vaddq_f64(vcvtq_f64_u64(v265), vcvtq_f64_u64(v256));
        v256.i64[0] = v279.u32[0];
        v256.i64[1] = v279.u32[1];
        v281 = vcvtq_f64_u64(v256);
        v282 = vand_s8(*v234.i8, 0xFF000000FFLL);
        v256.i64[0] = v282.u32[0];
        v256.i64[1] = v282.u32[1];
        *v234.i8 = vand_s8(*v238.i8, 0xFF000000FFLL);
        v283 = vcvtq_f64_u64(v256);
        v256.i64[0] = v234.u32[0];
        v256.i64[1] = v234.u32[1];
        v284 = vcvtq_f64_u64(v256);
        v285 = vand_s8(v252, 0xFF000000FFLL);
        v256.i64[0] = v285.u32[0];
        v256.i64[1] = v285.u32[1];
        v286 = vand_s8(v240, 0xFF000000FFLL);
        v287 = vcvtq_f64_u64(v256);
        v256.i64[0] = v286.u32[0];
        v256.i64[1] = v286.u32[1];
        v288 = vcvtq_f64_u64(v256);
        v289 = vand_s8(v241, 0xFF000000FFLL);
        v256.i64[0] = v289.u32[0];
        v256.i64[1] = v289.u32[1];
        v290 = vcvtq_f64_u64(v256);
        v291 = vaddq_f64(vcvtq_f64_u64(v263), v287);
        v292 = vand_s8(v242, 0xFF000000FFLL);
        v256.i64[0] = v292.u32[0];
        v256.i64[1] = v292.u32[1];
        v293 = vcvtq_f64_u64(v256);
        v294 = vand_s8(v243, 0xFF000000FFLL);
        v256.i64[0] = v294.u32[0];
        v256.i64[1] = v294.u32[1];
        v295 = vcvtq_f64_u64(v256);
        v296 = vand_s8(v244, 0xFF000000FFLL);
        v256.i64[0] = v296.u32[0];
        v256.i64[1] = v296.u32[1];
        v297 = vcvtq_f64_u64(v256);
        *&v287.f64[0] = vand_s8(v253, 0xFF000000FFLL);
        v256.i64[0] = LODWORD(v287.f64[0]);
        v256.i64[1] = HIDWORD(v287.f64[0]);
        v298 = vcvtq_f64_u64(v256);
        *v238.i8 = vand_s8(v248, 0xFF000000FFLL);
        v256.i64[0] = v238.u32[0];
        v256.i64[1] = v238.u32[1];
        v299 = vcvtq_f64_u64(v256);
        v250.i32[1] = v254;
        v300 = vand_s8(v250, 0xFF000000FFLL);
        v256.i64[0] = v300.u32[0];
        v256.i64[1] = v300.u32[1];
        a9 = vaddq_f64(v274, v290);
        v228[2] = a9;
        v228[3] = vaddq_f64(v271, v288);
        *v228 = vaddq_f64(v280, v295);
        v228[1] = vaddq_f64(v277, v293);
        v228[6] = vaddq_f64(vaddq_f64(vcvtq_f64_u64(v261), v284), v298);
        v228[7] = vaddq_f64(v291, v297);
        a7 = vaddq_f64(vaddq_f64(v259, v283), v299);
        v228[4] = vaddq_f64(vaddq_f64(vcvtq_f64_u64(v257), v281), vcvtq_f64_u64(v256));
        v228[5] = a7;
        ++v229;
        v228 += 8;
        v227 -= 16;
      }

      while (v227);
      if (v37 == v35)
      {
        return result;
      }

      if (((a5 * a4) & 0xC) == 0)
      {
LABEL_12:
        v38 = &a2[v37];
        v39 = (a3 + 8 * v37);
        v40 = v35 - v37;
        do
        {
          a6.n128_u8[0] = *v38;
          LOBYTE(a7.f64[0]) = v38[a5];
          *&v41 = *&a7.f64[0];
          v42 = a6.n128_u64[0] + *&v41;
          LOBYTE(v41) = v38[v36];
          a7.f64[0] = v41;
          a6.n128_f64[0] = v42 + a7.f64[0];
          *v39++ = a6.n128_u64[0];
          ++v38;
          --v40;
        }

        while (v40);
        return result;
      }
    }

    else
    {
      v37 = 0;
    }

    v301 = v37;
    v37 = v35 & 0x7FFFFFFC;
    v302 = &a2[v301];
    v303 = (a3 + 8 * v301);
    v304 = v301 - v37;
    a6.n128_u64[0] = 0xFF000000FFLL;
    do
    {
      LODWORD(a7.f64[0]) = *v302;
      v305 = vmovl_u16(*&vmovl_u8(*&a7.f64[0]));
      v306 = vand_s8(*&vextq_s8(v305, v305, 8uLL), 0xFF000000FFLL);
      v307.i64[0] = v306.u32[0];
      v307.i64[1] = v306.u32[1];
      v308 = vcvtq_f64_u64(v307);
      *v305.i8 = vand_s8(*v305.i8, 0xFF000000FFLL);
      v307.i64[0] = v305.u32[0];
      v307.i64[1] = v305.u32[1];
      LODWORD(a9.f64[0]) = *(v302 + a5);
      v309 = vcvtq_f64_u64(v307);
      v310 = vmovl_u16(*&vmovl_u8(*&a9.f64[0]));
      v311 = vand_s8(*&vextq_s8(v310, v310, 8uLL), 0xFF000000FFLL);
      v307.i64[0] = v311.u32[0];
      v307.i64[1] = v311.u32[1];
      v312 = vcvtq_f64_u64(v307);
      *v310.i8 = vand_s8(*v310.i8, 0xFF000000FFLL);
      v307.i64[0] = v310.u32[0];
      v307.i64[1] = v310.u32[1];
      v313 = vcvtq_f64_u64(v307);
      v314 = vaddq_f64(v309, v313);
      v315 = vaddq_f64(v308, v312);
      LODWORD(v313.f64[0]) = *(v302 + v36);
      v316 = vmovl_u16(*&vmovl_u8(*&v313.f64[0]));
      *&v312.f64[0] = vand_s8(*v316.i8, 0xFF000000FFLL);
      v307.i64[0] = LODWORD(v312.f64[0]);
      v307.i64[1] = HIDWORD(v312.f64[0]);
      v317 = vcvtq_f64_u64(v307);
      *v316.i8 = vand_s8(*&vextq_s8(v316, v316, 8uLL), 0xFF000000FFLL);
      v307.i64[0] = v316.u32[0];
      v307.i64[1] = v316.u32[1];
      a9 = vcvtq_f64_u64(v307);
      a7 = vaddq_f64(v314, v317);
      *v303 = a7;
      v303[1] = vaddq_f64(v315, a9);
      v303 += 2;
      ++v302;
      v304 += 4;
    }

    while (v304);
    if (v37 == v35)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (v14 != 5)
  {
    v43 = (v14 * a5);
    v44 = ((a4 - 1) * a5);
    if (a5 != 1)
    {
      if (a5 != 3)
      {
        if (a5 == 4)
        {
          if (v43 < 1)
          {
            v46 = 0uLL;
            v47 = 0uLL;
            *a3 = 0u;
            *(a3 + 16) = 0u;
            if (v44 < 1)
            {
              return result;
            }
          }

          else
          {
            v45 = 0;
            v46 = 0uLL;
            v47 = 0uLL;
            do
            {
              LODWORD(a9.f64[0]) = *&a2[v45];
              v48 = vmovl_u16(*&vmovl_u8(*&a9.f64[0]));
              v49 = vand_s8(*&vextq_s8(v48, v48, 8uLL), 0xFF000000FFLL);
              v50.i64[0] = v49.u32[0];
              v50.i64[1] = v49.u32[1];
              a10 = vcvtq_f64_u64(v50);
              *v48.i8 = vand_s8(*v48.i8, 0xFF000000FFLL);
              v50.i64[0] = v48.u32[0];
              v50.i64[1] = v48.u32[1];
              a9 = vcvtq_f64_u64(v50);
              v46 = vaddq_f64(v46, a9);
              v47 = vaddq_f64(v47, a10);
              v45 += 4;
            }

            while (v45 < v43);
            *a3 = v46;
            *(a3 + 16) = v47;
            if (v44 < 1)
            {
              return result;
            }
          }

          v81 = 0;
          v82 = &a2[v43];
          v83 = (a3 + 32);
          do
          {
            LODWORD(a9.f64[0]) = *&v82[v81];
            LODWORD(a10.f64[0]) = *&a2[v81];
            v84 = vmovl_u16(*&vmovl_u8(*&a9.f64[0]));
            v85 = vand_s8(*&vextq_s8(v84, v84, 8uLL), 0xFF000000FFLL);
            v86.i64[0] = v85.u32[0];
            v86.i64[1] = v85.u32[1];
            v87 = vcvtq_f64_u64(v86);
            *v84.i8 = vand_s8(*v84.i8, 0xFF000000FFLL);
            v86.i64[0] = v84.u32[0];
            v86.i64[1] = v84.u32[1];
            v88 = vcvtq_f64_u64(v86);
            v89 = vmovl_u16(*&vmovl_u8(*&a10.f64[0]));
            v90 = vand_s8(*&vextq_s8(v89, v89, 8uLL), 0xFF000000FFLL);
            v86.i64[0] = v90.u32[0];
            v86.i64[1] = v90.u32[1];
            v91 = vcvtq_f64_u64(v86);
            *v89.i8 = vand_s8(*v89.i8, 0xFF000000FFLL);
            v86.i64[0] = v89.u32[0];
            v86.i64[1] = v89.u32[1];
            a9 = vsubq_f64(v88, vcvtq_f64_u64(v86));
            a10 = vsubq_f64(v87, v91);
            v47 = vaddq_f64(v47, a10);
            v46 = vaddq_f64(v46, a9);
            *v83 = v46;
            v83[1] = v47;
            v83 += 2;
            v81 += 4;
          }

          while (v81 < v44);
          return result;
        }

        if (a5 < 1)
        {
          return result;
        }

        v76 = 0;
        v77 = a3 + 8 * a5;
        while (v43 < 1)
        {
          v79 = 0.0;
          *a3 = 0;
          if (v44 >= 1)
          {
            goto LABEL_92;
          }

LABEL_85:
          ++v76;
          ++a2;
          a3 += 8;
          v77 += 8;
          if (v76 == a5)
          {
            return result;
          }
        }

        v78 = 0;
        v79 = 0.0;
        do
        {
          LOBYTE(a7.f64[0]) = a2[v78];
          a7.f64[0] = *&a7.f64[0];
          v79 = v79 + a7.f64[0];
          v78 += a5;
        }

        while (v43 > v78);
        *a3 = v79;
        if (v44 < 1)
        {
          goto LABEL_85;
        }

LABEL_92:
        v80 = 0;
        do
        {
          LOBYTE(a7.f64[0]) = a2[v43 + v80];
          LOBYTE(a8.f64[0]) = a2[v80];
          a8.f64[0] = *&a8.f64[0];
          a7.f64[0] = *&a7.f64[0] - a8.f64[0];
          v79 = v79 + a7.f64[0];
          *(v77 + 8 * v80) = v79;
          v80 += a5;
        }

        while (v80 < v44);
        goto LABEL_85;
      }

      if (v43 < 1)
      {
        v73 = 0.0;
        v72 = 0.0;
        v71 = 0.0;
        goto LABEL_122;
      }

      if (v43 > 3)
      {
        v318 = (v43 - 1) / 3u + 1;
        v70 = 3 * (v318 & 0x7FFFFFFE);
        v319 = a2 + 2;
        v71 = 0.0;
        v320 = v318 & 0x7FFFFFFE;
        v72 = 0.0;
        v73 = 0.0;
        do
        {
          LOBYTE(a9.f64[0]) = *(v319 - 2);
          a9.f64[0] = *&a9.f64[0];
          LOBYTE(a10.f64[0]) = v319[1];
          a10.f64[0] = *&a10.f64[0];
          a11.i8[0] = *(v319 - 1);
          *a11.i64 = a11.u64[0];
          LOBYTE(a12) = v319[2];
          a12 = *&a12;
          LOBYTE(a13) = *v319;
          a13 = *&a13;
          LOBYTE(v13) = v319[3];
          v13 = *&v13;
          v71 = v71 + a13 + v13;
          v72 = v72 + *a11.i64 + a12;
          v73 = v73 + a9.f64[0] + a10.f64[0];
          v319 += 6;
          v320 -= 2;
        }

        while (v320);
        if ((v318 & 0x7FFFFFFE) == v318)
        {
LABEL_122:
          *a3 = v73;
          *(a3 + 8) = v72;
          *(a3 + 16) = v71;
          if (v44 >= 1)
          {
            v324 = (a3 + 40);
            v325 = &a2[v43 + 2];
            v326 = a2 + 1;
            v327 = 2;
            do
            {
              LOBYTE(a9.f64[0]) = *(v325 - 2);
              LOBYTE(a10.f64[0]) = *(v326 - 1);
              *&v328 = *&a10.f64[0];
              *&v329 = *&a9.f64[0] - *&v328;
              v73 = v73 + *&v329;
              LOBYTE(v329) = *(v325 - 1);
              LOBYTE(v328) = *v326;
              *&v330 = v328;
              *&v331 = v329 - *&v330;
              v72 = v72 + *&v331;
              LOBYTE(v331) = *v325;
              LOBYTE(v330) = v326[1];
              a10.f64[0] = v330;
              a9.f64[0] = v331 - a10.f64[0];
              v71 = v71 + a9.f64[0];
              *(v324 - 2) = v73;
              *(v324 - 1) = v72;
              v332 = v327 + 1;
              v327 += 3;
              *v324 = v71;
              v324 += 3;
              v325 += 3;
              v326 += 3;
            }

            while (v332 < v44);
          }

          return result;
        }
      }

      else
      {
        v70 = 0;
        v71 = 0.0;
        v72 = 0.0;
        v73 = 0.0;
      }

      v321 = &a2[v70 + 2];
      do
      {
        LOBYTE(a9.f64[0]) = *(v321 - 2);
        *&v322 = *&a9.f64[0];
        v73 = v73 + *&v322;
        LOBYTE(v322) = *(v321 - 1);
        *&v323 = v322;
        v72 = v72 + *&v323;
        LOBYTE(v323) = *v321;
        a9.f64[0] = v323;
        v71 = v71 + a9.f64[0];
        v70 += 3;
        v321 += 3;
      }

      while (v70 < v43);
      goto LABEL_122;
    }

    if (v43 < 1)
    {
      v75 = 0.0;
      goto LABEL_137;
    }

    if (v43 < 8)
    {
      v74 = 0;
      v75 = 0.0;
      goto LABEL_135;
    }

    if (v43 >= 0x20)
    {
      v333 = v43 & 0x7FFFFFE0;
      v334 = (a2 + 16);
      v75 = 0.0;
      *&a7.f64[0] = 0xFF000000FFLL;
      do
      {
        v336 = v334[-1];
        v335 = *v334;
        v337 = vextq_s8(v336, v336, 8uLL).u64[0];
        v410 = BYTE6(v337);
        v412 = HIBYTE(v337);
        v338 = BYTE4(v337);
        v339 = BYTE5(v337);
        v340 = v336.u8[6];
        v341 = v336.u8[7];
        v342 = BYTE2(v337);
        v343 = v336.u8[4];
        v344 = v336.u8[5];
        v345 = BYTE3(v337);
        v346 = v336.u8[2];
        v347 = v336.u8[3];
        v348 = v337;
        v349 = v336.u8[1];
        v350 = BYTE1(v337);
        v336.i32[0] = v336.u8[0];
        v336.i32[1] = v349;
        v351 = vextq_s8(v335, v335, 8uLL).u64[0];
        v408 = BYTE6(v351);
        v406 = HIBYTE(v351);
        v352 = BYTE4(v351);
        result = BYTE5(v351);
        v353 = BYTE2(v351);
        v354 = BYTE3(v351);
        v355 = v351;
        v356 = BYTE1(v351);
        *v336.i8 = vand_s8(*v336.i8, 0xFF000000FFLL);
        v357.i64[0] = v336.u32[0];
        v357.i64[1] = v336.u32[1];
        v358 = vcvtq_f64_u64(v357);
        v359 = vand_s8(__PAIR64__(v347, v346), 0xFF000000FFLL);
        v357.i64[0] = v359.u32[0];
        v357.i64[1] = v359.u32[1];
        v360 = vcvtq_f64_u64(v357);
        v361 = v75 + v358.f64[0] + v358.f64[1] + v360.f64[0] + v360.f64[1];
        *&v360.f64[0] = vand_s8(__PAIR64__(v344, v343), 0xFF000000FFLL);
        v357.i64[0] = LODWORD(v360.f64[0]);
        v357.i64[1] = HIDWORD(v360.f64[0]);
        v362 = vcvtq_f64_u64(v357);
        v363 = v361 + v362.f64[0] + v362.f64[1];
        *&v362.f64[0] = vand_s8(__PAIR64__(v341, v340), 0xFF000000FFLL);
        v357.i64[0] = LODWORD(v362.f64[0]);
        v357.i64[1] = HIDWORD(v362.f64[0]);
        v364 = vcvtq_f64_u64(v357);
        v365 = v363 + v364.f64[0] + v364.f64[1];
        *&v364.f64[0] = __PAIR64__(v335.u8[7], v335.u8[6]);
        *v335.i8 = vand_s8(__PAIR64__(v345, v342), 0xFF000000FFLL);
        v357.i64[0] = v335.u32[0];
        v357.i64[1] = v335.u32[1];
        *&v358.f64[0] = vand_s8(__PAIR64__(v350, v348), 0xFF000000FFLL);
        v366 = vcvtq_f64_u64(v357);
        v357.i64[0] = LODWORD(v358.f64[0]);
        v357.i64[1] = HIDWORD(v358.f64[0]);
        v367 = vcvtq_f64_u64(v357);
        v368 = v365 + v367.f64[0] + v367.f64[1] + v366.f64[0] + v366.f64[1];
        v369 = vand_s8(__PAIR64__(v339, v338), 0xFF000000FFLL);
        v357.i64[0] = v369.u32[0];
        v357.i64[1] = v369.u32[1];
        v370 = vcvtq_f64_u64(v357);
        *&v367.f64[0] = vand_s8(__PAIR64__(v412, v410), 0xFF000000FFLL);
        v357.i64[0] = LODWORD(v367.f64[0]);
        v357.i64[1] = HIDWORD(v367.f64[0]);
        v371 = vcvtq_f64_u64(v357);
        v372 = v368 + v370.f64[0] + v370.f64[1] + v371.f64[0] + v371.f64[1];
        *&v371.f64[0] = vand_s8(__PAIR64__(HIBYTE(v334->u16[0]), v334->u8[0]), 0xFF000000FFLL);
        v357.i64[0] = LODWORD(v371.f64[0]);
        v357.i64[1] = HIDWORD(v371.f64[0]);
        v373 = vcvtq_f64_u64(v357);
        v374 = v372 + v373.f64[0] + v373.f64[1];
        *&v373.f64[0] = vand_s8(__PAIR64__(HIBYTE(v334->u32[0]), BYTE2(v334->u32[0])), 0xFF000000FFLL);
        *&v366.f64[0] = vand_s8(__PAIR64__((WORD2(v334->i64[0]) >> 8), BYTE4(v334->i64[0])), 0xFF000000FFLL);
        v357.i64[0] = LODWORD(v373.f64[0]);
        v357.i64[1] = HIDWORD(v373.f64[0]);
        v375 = vcvtq_f64_u64(v357);
        v357.i64[0] = LODWORD(v366.f64[0]);
        v357.i64[1] = HIDWORD(v366.f64[0]);
        v376 = vcvtq_f64_u64(v357);
        *&v370.f64[0] = vand_s8(*&v364.f64[0], 0xFF000000FFLL);
        v357.i64[0] = LODWORD(v370.f64[0]);
        v357.i64[1] = HIDWORD(v370.f64[0]);
        v377 = vcvtq_f64_u64(v357);
        v378 = v374 + v375.f64[0] + v375.f64[1] + v376.f64[0] + v376.f64[1] + v377.f64[0] + v377.f64[1];
        *&v377.f64[0] = vand_s8(__PAIR64__(v356, v355), 0xFF000000FFLL);
        v357.i64[0] = LODWORD(v377.f64[0]);
        v357.i64[1] = HIDWORD(v377.f64[0]);
        v379 = vcvtq_f64_u64(v357);
        *&v376.f64[0] = vand_s8(__PAIR64__(v354, v353), 0xFF000000FFLL);
        v357.i64[0] = LODWORD(v376.f64[0]);
        v357.i64[1] = HIDWORD(v376.f64[0]);
        v380 = vcvtq_f64_u64(v357);
        v381 = v378 + v379.f64[0] + v379.f64[1] + v380.f64[0] + v380.f64[1];
        *&v380.f64[0] = vand_s8(__PAIR64__(result, v352), 0xFF000000FFLL);
        v357.i64[0] = LODWORD(v380.f64[0]);
        v357.i64[1] = HIDWORD(v380.f64[0]);
        v382 = vcvtq_f64_u64(v357);
        v383 = v381 + v382.f64[0] + v382.f64[1];
        *&v382.f64[0] = vand_s8(__PAIR64__(v406, v408), 0xFF000000FFLL);
        v357.i64[0] = LODWORD(v382.f64[0]);
        v357.i64[1] = HIDWORD(v382.f64[0]);
        a8 = vcvtq_f64_u64(v357);
        v384 = v383 + a8.f64[0];
        a8.f64[0] = a8.f64[1];
        v75 = v384 + a8.f64[1];
        v334 += 2;
        v333 -= 32;
      }

      while (v333);
      v74 = v43 & 0x7FFFFFE0;
      if (v74 == v43)
      {
        goto LABEL_137;
      }

      if ((v43 & 0x18) == 0)
      {
LABEL_135:
        v401 = &a2[v74];
        v402 = v43 - v74;
        do
        {
          v403 = *v401++;
          a7.f64[0] = v403;
          v75 = v75 + v403;
          --v402;
        }

        while (v402);
        goto LABEL_137;
      }
    }

    else
    {
      v74 = 0;
      v75 = 0.0;
    }

    v385 = v74;
    v74 = v43 & 0x7FFFFFF8;
    v386 = &a2[v385];
    v387 = v385 - v74;
    *&a7.f64[0] = 0xFF000000FFLL;
    do
    {
      v388 = *v386;
      v386 += 8;
      v389.i32[0] = BYTE6(v388);
      v389.i32[1] = HIBYTE(v388);
      v390 = vand_s8(v389, 0xFF000000FFLL);
      v391.i64[0] = v390.u32[0];
      v391.i64[1] = v390.u32[1];
      v392 = vcvtq_f64_u64(v391);
      v393.i32[0] = BYTE4(v388);
      v393.i32[1] = BYTE5(v388);
      v394 = vand_s8(v393, 0xFF000000FFLL);
      v391.i64[0] = v394.u32[0];
      v391.i64[1] = v394.u32[1];
      v395 = vcvtq_f64_u64(v391);
      v396.i32[0] = BYTE2(v388);
      v396.i32[1] = BYTE3(v388);
      v397 = vand_s8(v396, 0xFF000000FFLL);
      v391.i64[0] = v397.u32[0];
      v391.i64[1] = v397.u32[1];
      v398 = vcvtq_f64_u64(v391);
      v399.i32[0] = v388;
      v399.i32[1] = BYTE1(v388);
      v400 = vand_s8(v399, 0xFF000000FFLL);
      v391.i64[0] = v400.u32[0];
      v391.i64[1] = v400.u32[1];
      a8 = vcvtq_f64_u64(v391);
      v75 = v75 + a8.f64[0] + a8.f64[1] + v398.f64[0] + v398.f64[1] + v395.f64[0] + v395.f64[1] + v392.f64[0] + v392.f64[1];
      v387 += 8;
    }

    while (v387);
    if (v74 != v43)
    {
      goto LABEL_135;
    }

LABEL_137:
    *a3 = v75;
    if (v44 >= 1)
    {
      v404 = (a3 + 8);
      do
      {
        LOBYTE(a7.f64[0]) = a2[v43];
        LOBYTE(a8.f64[0]) = *a2;
        a8.f64[0] = *&a8.f64[0];
        a7.f64[0] = *&a7.f64[0] - a8.f64[0];
        v75 = v75 + a7.f64[0];
        *v404++ = v75;
        ++a2;
        --v44;
      }

      while (v44);
    }

    return result;
  }

  v15 = (a5 * a4);
  if (v15 < 1)
  {
    return result;
  }

  v16 = a5;
  v17 = 2 * a5;
  v18 = 3 * a5;
  v19 = 4 * a5;
  if (v15 < 4)
  {
    v20 = 0;
    goto LABEL_6;
  }

  v20 = 0;
  v51 = &a2[a5];
  v52 = &a2[v17];
  v53 = &a2[v18];
  v54 = &a2[v19];
  v55 = a3 + 8 * v15;
  result = &a2[v18 + v15] > a3 && v53 < v55;
  v58 = &a2[v17 + v15] > a3 && v52 < v55;
  v60 = &v51[v15] > a3 && v51 < v55;
  v62 = &a2[v15] > a3 && v55 > a2;
  v63 = v54 < v55 && &v54[v15] > a3;
  if (v63 || (result & 1) != 0 || v58 || v60 || v62)
  {
    goto LABEL_6;
  }

  if (v15 >= 0x10)
  {
    v20 = v15 & 0x7FFFFFF0;
    result = v20;
    v92 = a3;
    v93 = a2;
    do
    {
      v94 = vextq_s8(*v93, *v93, 8uLL).u64[0];
      v95 = BYTE1(v94);
      v96 = BYTE3(v94);
      v97.i32[0] = v93->u8[0];
      v97.i32[1] = HIBYTE(v93->u16[0]);
      v98.i32[0] = BYTE2(v93->u32[0]);
      v99.i32[0] = BYTE4(v93->i64[0]);
      v98.i32[1] = HIBYTE(v93->u32[0]);
      v99.i32[1] = (WORD2(v93->i64[0]) >> 8);
      v100.i32[0] = BYTE6(v93->i64[0]);
      v100.i32[1] = HIBYTE(v93->i64[0]);
      v101.i32[0] = v94;
      v102 = *(v93 + v16);
      v103.i32[0] = BYTE2(v94);
      v104.i32[0] = v102.u8[0];
      v105.i32[0] = BYTE4(v94);
      v106.i32[0] = v102.u8[2];
      v107.i32[0] = BYTE6(v94);
      v108.i32[0] = v102.u8[4];
      v109.i32[0] = v102.u8[6];
      v110 = vextq_s8(v102, v102, 8uLL).u64[0];
      LODWORD(v94) = v110;
      v104.i32[1] = v102.u8[1];
      v101.i32[1] = v95;
      v409 = v101;
      v411 = v104;
      v106.i32[1] = v102.u8[3];
      v103.i32[1] = v96;
      v108.i32[1] = v102.u8[5];
      v105.i32[1] = BYTE5(v94);
      v109.i32[1] = v102.u8[7];
      v107.i32[1] = HIBYTE(v94);
      HIDWORD(v94) = BYTE1(v110);
      v407 = v94;
      v102.i32[0] = BYTE2(v110);
      v102.i32[1] = BYTE3(v110);
      v111 = vand_s8(v98, 0xFF000000FFLL);
      v112 = vand_s8(v99, 0xFF000000FFLL);
      v113.i32[0] = BYTE4(v110);
      v113.i32[1] = BYTE5(v110);
      v114 = vand_s8(v100, 0xFF000000FFLL);
      v115.i32[0] = BYTE6(v110);
      v115.i32[1] = HIBYTE(v110);
      v116 = vand_s8(v106, 0xFF000000FFLL);
      v117 = vand_s8(v108, 0xFF000000FFLL);
      v118 = *(v93 + v17);
      v119 = vand_s8(v103, 0xFF000000FFLL);
      v101.i32[0] = v118.u8[6];
      v101.i32[1] = v118.u8[7];
      v405 = v101;
      v120 = vand_s8(v105, 0xFF000000FFLL);
      v121 = vand_s8(v109, 0xFF000000FFLL);
      v122 = vand_s8(v107, 0xFF000000FFLL);
      v105.i32[0] = v118.u8[4];
      v105.i32[1] = v118.u8[5];
      v123.i64[0] = v111.u32[0];
      v123.i64[1] = v111.u32[1];
      v124 = v123;
      v99.i32[0] = v118.u8[2];
      v99.i32[1] = v118.u8[3];
      v123.i64[0] = v112.u32[0];
      v123.i64[1] = v112.u32[1];
      v125 = v123;
      v126 = vextq_s8(v118, v118, 8uLL).u64[0];
      v123.i64[0] = v114.u32[0];
      v123.i64[1] = v114.u32[1];
      v127 = v123;
      v107.i32[0] = v118.u8[0];
      v107.i32[1] = v118.u8[1];
      v123.i64[0] = v116.u32[0];
      v123.i64[1] = v116.u32[1];
      v128 = v123;
      v114.i32[0] = BYTE6(v126);
      v114.i32[1] = HIBYTE(v126);
      v123.i64[0] = v117.u32[0];
      v123.i64[1] = v117.u32[1];
      v129 = v123;
      v123.i64[0] = v121.u32[0];
      v123.i64[1] = v121.u32[1];
      v130 = v123;
      v123.i64[0] = v119.u32[0];
      v123.i64[1] = v119.u32[1];
      v131 = v123;
      v117.i32[0] = BYTE4(v126);
      v117.i32[1] = BYTE5(v126);
      v123.i64[0] = v120.u32[0];
      v123.i64[1] = v120.u32[1];
      v132 = v123;
      v121.i32[0] = BYTE2(v126);
      v121.i32[1] = BYTE3(v126);
      v123.i64[0] = v122.u32[0];
      v123.i64[1] = v122.u32[1];
      v133 = v123;
      v134 = vand_s8(*v102.i8, 0xFF000000FFLL);
      v135 = v126;
      v136 = BYTE1(v126);
      v137 = vcvtq_f64_u64(v124);
      v102.i64[0] = __PAIR64__(v136, v135);
      v138 = *(v93 + v18);
      v139 = vcvtq_f64_u64(v125);
      v124.i64[0] = vextq_s8(v138, v138, 8uLL).u64[0];
      v140 = vcvtq_f64_u64(v127);
      v120.i32[0] = v124.u8[0];
      v120.i32[1] = v124.u8[1];
      v141 = vcvtq_f64_u64(v128);
      v128.i32[0] = v138.u8[0];
      v128.i32[1] = v138.u8[1];
      v142 = vcvtq_f64_u64(v129);
      *v129.i8 = vand_s8(v113, 0xFF000000FFLL);
      v143 = vcvtq_f64_u64(v130);
      v103.i32[0] = v138.u8[2];
      v103.i32[1] = v138.u8[3];
      v123.i64[0] = v134.u32[0];
      v123.i64[1] = v134.u32[1];
      v144 = v123;
      v130.i32[0] = v138.u8[4];
      v130.i32[1] = v138.u8[5];
      v145 = vcvtq_f64_u64(v131);
      v123.i64[0] = v129.u32[0];
      v123.i64[1] = v129.u32[1];
      v146 = vcvtq_f64_u64(v132);
      v132.i32[0] = v138.u8[6];
      v132.i32[1] = v138.u8[7];
      v147 = *(v93 + v19);
      v148 = vcvtq_f64_u64(v133);
      *v138.i8 = vand_s8(v115, 0xFF000000FFLL);
      v149 = vcvtq_f64_u64(v144);
      v115.i32[0] = v147.u8[6];
      v115.i32[1] = v147.u8[7];
      v150 = vaddq_f64(v140, v143);
      v133.i32[0] = v147.u8[4];
      v133.i32[1] = v147.u8[5];
      v151 = vcvtq_f64_u64(v123);
      v123.i64[0] = v138.u32[0];
      v123.i64[1] = v138.u32[1];
      v152 = vaddq_f64(v139, v142);
      LODWORD(v139.f64[0]) = v147.u8[2];
      HIDWORD(v139.f64[0]) = v147.u8[3];
      v153 = vaddq_f64(v137, v141);
      LODWORD(v137.f64[0]) = v147.u8[0];
      HIDWORD(v137.f64[0]) = v147.u8[1];
      v147.i64[0] = vextq_s8(v147, v147, 8uLL).u64[0];
      v154 = v124.u8[3];
      v155 = vaddq_f64(v148, vcvtq_f64_u64(v123));
      LODWORD(v141.f64[0]) = v124.u8[2];
      v156 = vaddq_f64(v146, v151);
      LODWORD(v146.f64[0]) = v124.u8[4];
      v157 = vaddq_f64(v145, v149);
      LODWORD(v148.f64[0]) = v124.u8[6];
      v124.i32[0] = v147.u8[6];
      HIDWORD(v141.f64[0]) = v154;
      HIDWORD(v146.f64[0]) = v124.u8[5];
      v158 = v147.u8[2];
      HIDWORD(v148.f64[0]) = v124.u8[7];
      v159 = v147.u8[3];
      v160 = v147.u8[0];
      v124.i32[1] = v147.u8[7];
      v161 = v147.u8[1];
      LODWORD(v145.f64[0]) = v147.u8[4];
      HIDWORD(v145.f64[0]) = v147.u8[5];
      *v147.i8 = vand_s8(v409, 0xFF000000FFLL);
      v123.i64[0] = v147.u32[0];
      v123.i64[1] = v147.u32[1];
      v162 = v123;
      *&v142.f64[0] = vand_s8(v97, 0xFF000000FFLL);
      v123.i64[0] = LODWORD(v142.f64[0]);
      v123.i64[1] = HIDWORD(v142.f64[0]);
      v163 = vcvtq_f64_u64(v123);
      v164 = vand_s8(v411, 0xFF000000FFLL);
      v123.i64[0] = v164.u32[0];
      v123.i64[1] = v164.u32[1];
      v165 = vcvtq_f64_u64(v123);
      v166 = vand_s8(v407, 0xFF000000FFLL);
      v123.i64[0] = v166.u32[0];
      v123.i64[1] = v166.u32[1];
      v167 = vaddq_f64(vcvtq_f64_u64(v162), vcvtq_f64_u64(v123));
      v168 = vand_s8(v105, 0xFF000000FFLL);
      v169 = vand_s8(v107, 0xFF000000FFLL);
      v123.i64[0] = v169.u32[0];
      v123.i64[1] = v169.u32[1];
      v170 = vaddq_f64(vaddq_f64(v163, v165), vcvtq_f64_u64(v123));
      v123.i64[0] = v168.u32[0];
      v123.i64[1] = v168.u32[1];
      v171 = vcvtq_f64_u64(v123);
      v172 = vand_s8(v99, 0xFF000000FFLL);
      v123.i64[0] = v172.u32[0];
      v123.i64[1] = v172.u32[1];
      v173 = vaddq_f64(v153, vcvtq_f64_u64(v123));
      v174 = vand_s8(v405, 0xFF000000FFLL);
      v123.i64[0] = v174.u32[0];
      v123.i64[1] = v174.u32[1];
      v175 = vaddq_f64(v150, vcvtq_f64_u64(v123));
      *&v150.f64[0] = vand_s8(*v102.i8, 0xFF000000FFLL);
      v123.i64[0] = LODWORD(v150.f64[0]);
      v123.i64[1] = HIDWORD(v150.f64[0]);
      v176 = vaddq_f64(v167, vcvtq_f64_u64(v123));
      *&v167.f64[0] = vand_s8(v114, 0xFF000000FFLL);
      v177 = vand_s8(v121, 0xFF000000FFLL);
      v123.i64[0] = v177.u32[0];
      v123.i64[1] = v177.u32[1];
      v178 = vaddq_f64(v157, vcvtq_f64_u64(v123));
      v123.i64[0] = LODWORD(v167.f64[0]);
      v123.i64[1] = HIDWORD(v167.f64[0]);
      v179 = vcvtq_f64_u64(v123);
      v180 = vand_s8(v117, 0xFF000000FFLL);
      v123.i64[0] = v180.u32[0];
      v123.i64[1] = v180.u32[1];
      v181 = vaddq_f64(v156, vcvtq_f64_u64(v123));
      v182 = vand_s8(v120, 0xFF000000FFLL);
      v123.i64[0] = v182.u32[0];
      v123.i64[1] = v182.u32[1];
      v183 = vcvtq_f64_u64(v123);
      v184 = vand_s8(*&v141.f64[0], 0xFF000000FFLL);
      v123.i64[0] = v184.u32[0];
      v123.i64[1] = v184.u32[1];
      v185 = vcvtq_f64_u64(v123);
      *v102.i8 = vand_s8(*&v146.f64[0], 0xFF000000FFLL);
      v186 = vand_s8(*v132.i8, 0xFF000000FFLL);
      v123.i64[0] = v186.u32[0];
      v123.i64[1] = v186.u32[1];
      v187 = vaddq_f64(v175, vcvtq_f64_u64(v123));
      v123.i64[0] = v102.u32[0];
      v123.i64[1] = v102.u32[1];
      v188 = vcvtq_f64_u64(v123);
      *v130.i8 = vand_s8(*v130.i8, 0xFF000000FFLL);
      v123.i64[0] = v130.u32[0];
      v123.i64[1] = v130.u32[1];
      v189 = vaddq_f64(vaddq_f64(v152, v171), vcvtq_f64_u64(v123));
      *v130.i8 = vand_s8(*&v148.f64[0], 0xFF000000FFLL);
      v123.i64[0] = v130.u32[0];
      v123.i64[1] = v130.u32[1];
      v190 = v123;
      v191 = vand_s8(v103, 0xFF000000FFLL);
      v123.i64[0] = v191.u32[0];
      v123.i64[1] = v191.u32[1];
      v192 = vaddq_f64(v173, vcvtq_f64_u64(v123));
      *v128.i8 = vand_s8(*v128.i8, 0xFF000000FFLL);
      v123.i64[0] = v128.u32[0];
      v123.i64[1] = v128.u32[1];
      v193 = vand_s8(v115, 0xFF000000FFLL);
      v194 = vaddq_f64(v170, vcvtq_f64_u64(v123));
      v123.i64[0] = v193.u32[0];
      v123.i64[1] = v193.u32[1];
      v195 = vcvtq_f64_u64(v123);
      *v128.i8 = vand_s8(*v133.i8, 0xFF000000FFLL);
      v123.i64[0] = v128.u32[0];
      v123.i64[1] = v128.u32[1];
      v196 = vcvtq_f64_u64(v123);
      v197 = vaddq_f64(vaddq_f64(v155, v179), vcvtq_f64_u64(v190));
      *&v173.f64[0] = vand_s8(*&v139.f64[0], 0xFF000000FFLL);
      v123.i64[0] = LODWORD(v173.f64[0]);
      v123.i64[1] = HIDWORD(v173.f64[0]);
      v198 = vcvtq_f64_u64(v123);
      *v190.i8 = vand_s8(*&v137.f64[0], 0xFF000000FFLL);
      v123.i64[0] = v190.u32[0];
      v123.i64[1] = v190.u32[1];
      v199 = vaddq_f64(v181, v188);
      v200 = vcvtq_f64_u64(v123);
      *v190.i8 = vand_s8(*v124.i8, 0xFF000000FFLL);
      v123.i64[0] = v190.u32[0];
      v123.i64[1] = v190.u32[1];
      v201 = vcvtq_f64_u64(v123);
      *v132.i8 = vand_s8(*&v145.f64[0], 0xFF000000FFLL);
      a7 = vaddq_f64(v178, v185);
      v123.i64[0] = v132.u32[0];
      v123.i64[1] = v132.u32[1];
      v202 = vcvtq_f64_u64(v123);
      *&v171.f64[0] = vand_s8(__PAIR64__(v159, v158), 0xFF000000FFLL);
      v123.i64[0] = LODWORD(v171.f64[0]);
      v123.i64[1] = HIDWORD(v171.f64[0]);
      v203 = vcvtq_f64_u64(v123);
      *&v150.f64[0] = vand_s8(__PAIR64__(v161, v160), 0xFF000000FFLL);
      v123.i64[0] = LODWORD(v150.f64[0]);
      v123.i64[1] = HIDWORD(v150.f64[0]);
      a9 = vaddq_f64(vaddq_f64(v176, v183), vcvtq_f64_u64(v123));
      a11 = vaddq_f64(v192, v198);
      *(v92 + 32) = vaddq_f64(v189, v196);
      *(v92 + 48) = vaddq_f64(v187, v195);
      *v92 = vaddq_f64(v194, v200);
      *(v92 + 16) = a11;
      *(v92 + 96) = vaddq_f64(v199, v202);
      *(v92 + 112) = vaddq_f64(v197, v201);
      a6 = vaddq_f64(a7, v203);
      *(v92 + 64) = a9;
      *(v92 + 80) = a6;
      ++v93;
      v92 += 128;
      result -= 16;
    }

    while (result);
    if (v20 == v15)
    {
      return result;
    }

    if ((v15 & 0xC) == 0)
    {
LABEL_6:
      v21 = 0;
      v22 = &a2[v20];
      v23 = &a2[v20 + v19];
      v24 = &a2[v20 + v18];
      v25 = &a2[v20 + v17];
      v26 = &a2[v20 + v16];
      v27 = v15 - v20;
      v28 = a3 + 8 * v20;
      do
      {
        a6.n128_u8[0] = v22[v21];
        LOBYTE(a7.f64[0]) = v26[v21];
        *&v29 = *&a7.f64[0];
        v30 = a6.n128_u64[0] + *&v29;
        LOBYTE(v29) = v25[v21];
        *&v31 = v29;
        v32 = v30 + *&v31;
        LOBYTE(v31) = v24[v21];
        *&v33 = v31;
        v34 = v32 + *&v33;
        LOBYTE(v33) = v23[v21];
        a7.f64[0] = v33;
        a6.n128_f64[0] = v34 + a7.f64[0];
        *(v28 + 8 * v21++) = a6.n128_u64[0];
      }

      while (v27 != v21);
      return result;
    }
  }

  else
  {
    v20 = 0;
  }

  result = v15 & 0x7FFFFFFC;
  v204 = (a3 + 8 * v20);
  a6.n128_u64[0] = 0xFF000000FFLL;
  v205 = result;
  v206 = a2;
  do
  {
    LODWORD(a7.f64[0]) = *&v206[v20];
    v207 = vmovl_u16(*&vmovl_u8(*&a7.f64[0]));
    v208 = vand_s8(*&vextq_s8(v207, v207, 8uLL), 0xFF000000FFLL);
    v209.i64[0] = v208.u32[0];
    v209.i64[1] = v208.u32[1];
    v210 = v209;
    *v207.i8 = vand_s8(*v207.i8, 0xFF000000FFLL);
    v209.i64[0] = v207.u32[0];
    v209.i64[1] = v207.u32[1];
    LODWORD(a9.f64[0]) = *&v51[v20];
    v211 = vcvtq_f64_u64(v209);
    v212 = vmovl_u16(*&vmovl_u8(*&a9.f64[0]));
    v213 = vand_s8(*&vextq_s8(v212, v212, 8uLL), 0xFF000000FFLL);
    v209.i64[0] = v213.u32[0];
    v209.i64[1] = v213.u32[1];
    v214 = v209;
    *v212.i8 = vand_s8(*v212.i8, 0xFF000000FFLL);
    v209.i64[0] = v212.u32[0];
    v209.i64[1] = v212.u32[1];
    v215 = vcvtq_f64_u64(v209);
    a11.i32[0] = *&v52[v20];
    a11 = vmovl_u16(*&vmovl_u8(*a11.i8));
    v216 = vand_s8(*a11.i8, 0xFF000000FFLL);
    v209.i64[0] = v216.u32[0];
    v209.i64[1] = v216.u32[1];
    v217 = vcvtq_f64_u64(v209);
    a11.i64[0] = vextq_s8(a11, a11, 8uLL).u64[0];
    v218 = vaddq_f64(v211, v215);
    *&v215.f64[0] = vand_s8(*a11.i8, 0xFF000000FFLL);
    v209.i64[0] = LODWORD(v215.f64[0]);
    v209.i64[1] = HIDWORD(v215.f64[0]);
    a11.i32[0] = *&v53[v20];
    v219 = vaddq_f64(vcvtq_f64_u64(v210), vcvtq_f64_u64(v214));
    v220 = vmovl_u16(*&vmovl_u8(*a11.i8));
    *a11.i8 = vand_s8(*&vextq_s8(v220, v220, 8uLL), 0xFF000000FFLL);
    v221 = vaddq_f64(v219, vcvtq_f64_u64(v209));
    v209.i64[0] = a11.u32[0];
    v209.i64[1] = a11.u32[1];
    v222 = vcvtq_f64_u64(v209);
    *v220.i8 = vand_s8(*v220.i8, 0xFF000000FFLL);
    v209.i64[0] = v220.u32[0];
    v209.i64[1] = v220.u32[1];
    v223 = vcvtq_f64_u64(v209);
    v224 = vaddq_f64(vaddq_f64(v218, v217), v223);
    LODWORD(v223.f64[0]) = *&v54[v20];
    v225 = vmovl_u16(*&vmovl_u8(*&v223.f64[0]));
    *a11.i8 = vand_s8(*v225.i8, 0xFF000000FFLL);
    v226 = vaddq_f64(v221, v222);
    v209.i64[0] = a11.u32[0];
    v209.i64[1] = a11.u32[1];
    a9 = vcvtq_f64_u64(v209);
    *v225.i8 = vand_s8(*&vextq_s8(v225, v225, 8uLL), 0xFF000000FFLL);
    v209.i64[0] = v225.u32[0];
    v209.i64[1] = v225.u32[1];
    a7 = vaddq_f64(v224, a9);
    v206 += 4;
    v51 += 4;
    *v204 = a7;
    v204[1] = vaddq_f64(v226, vcvtq_f64_u64(v209));
    v204 += 2;
    v52 += 4;
    v53 += 4;
    v54 += 4;
    v205 -= 4;
  }

  while (v20 != v205);
  v20 = v15 & 0x7FFFFFFC;
  if (result != v15)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1003638E4(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

void sub_10036396C(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

uint32x4_t sub_1003639A4(uint64_t a1, uint16x8_t *a2, int32x4_t *a3, int a4, int a5, uint32x4_t result)
{
  v6 = *(a1 + 8);
  if (v6 == 3)
  {
    v13 = (a5 * a4);
    if (v13 < 1)
    {
      return result;
    }

    v14 = 2 * a5;
    if (v13 < 4)
    {
      v15 = 0;
      goto LABEL_54;
    }

    if (v13 >= 0x10)
    {
      v15 = v13 & 0x7FFFFFF0;
      v68 = a2 + 1;
      v69 = &a3[2];
      v70 = v15;
      do
      {
        v71 = v68[-1];
        v72 = *(v68 + 2 * a5 - 16);
        v73 = *(v68 + 2 * a5);
        v74 = vaddl_high_u16(v72, v71);
        v75 = vaddl_u16(*v72.i8, *v71.i8);
        v76 = vaddl_high_u16(v73, *v68);
        v77 = vaddl_u16(*v73.i8, *v68->i8);
        v78 = *(v68 + 2 * v14 - 16);
        v79 = *(v68 + 2 * v14);
        result = vaddw_u16(v75, *v78.i8);
        v69[-2] = result;
        v69[-1] = vaddw_high_u16(v74, v78);
        *v69 = vaddw_u16(v77, *v79.i8);
        v69[1] = vaddw_high_u16(v76, v79);
        v69 += 4;
        v68 += 2;
        v70 -= 16;
      }

      while (v70);
      if (v15 == v13)
      {
        return result;
      }

      if (((a5 * a4) & 0xC) == 0)
      {
LABEL_54:
        v84 = a2 + v15;
        v85 = v13 - v15;
        v86 = &a3->i32[v15];
        do
        {
          *v86++ = v84[a5] + *v84 + v84[v14];
          ++v84;
          --v85;
        }

        while (v85);
        return result;
      }
    }

    else
    {
      v15 = 0;
    }

    v80 = v15;
    v15 = v13 & 0x7FFFFFFC;
    v81 = (a2 + 2 * v80);
    v82 = (a3 + 4 * v80);
    v83 = v80 - v15;
    do
    {
      result = vaddw_u16(vaddl_u16(*(v81 + 2 * a5), *v81), *(v81 + 2 * v14));
      *v82++ = result;
      ++v81;
      v83 += 4;
    }

    while (v83);
    if (v15 == v13)
    {
      return result;
    }

    goto LABEL_54;
  }

  if (v6 != 5)
  {
    v16 = (v6 * a5);
    v17 = ((a4 - 1) * a5);
    if (a5 != 1)
    {
      if (a5 != 3)
      {
        if (a5 == 4)
        {
          if (v16 < 1)
          {
            result = 0uLL;
            goto LABEL_106;
          }

          if (v16 < 0xD)
          {
            v18 = 0;
            result = 0uLL;
            goto LABEL_104;
          }

          v89 = ((v16 - 1) >> 2) + 1;
          if (v16 >= 0x3D)
          {
            v131 = 0uLL;
            v94 = v89 & 0x7FFFFFFFFFFFFFF0;
            v132 = 0uLL;
            i16 = a2[4].i16;
            v134 = 0uLL;
            v135 = v89 & 0x7FFFFFFFFFFFFFF0;
            v136 = 0uLL;
            v137 = 0uLL;
            v138 = 0uLL;
            v139 = 0uLL;
            v140 = 0uLL;
            v141 = 0uLL;
            v142 = 0uLL;
            v143 = 0uLL;
            v144 = 0uLL;
            v145 = 0uLL;
            v146 = 0uLL;
            v147 = 0uLL;
            v148 = 0uLL;
            do
            {
              v149 = i16 - 32;
              v177 = vld4q_s16(v149);
              v178 = vld4q_s16(i16);
              v146 = vaddw_high_u16(v146, v177.val[0]);
              v145 = vaddw_u16(v145, *v177.val[0].i8);
              v148 = vaddw_high_u16(v148, v178.val[0]);
              v147 = vaddw_u16(v147, *v178.val[0].i8);
              v142 = vaddw_high_u16(v142, v177.val[1]);
              v141 = vaddw_u16(v141, *v177.val[1].i8);
              v144 = vaddw_high_u16(v144, v178.val[1]);
              v143 = vaddw_u16(v143, *v178.val[1].i8);
              v138 = vaddw_high_u16(v138, v177.val[2]);
              v137 = vaddw_u16(v137, *v177.val[2].i8);
              v140 = vaddw_high_u16(v140, v178.val[2]);
              v139 = vaddw_u16(v139, *v178.val[2].i8);
              v132 = vaddw_high_u16(v132, v177.val[3]);
              v131 = vaddw_u16(v131, *v177.val[3].i8);
              v136 = vaddw_high_u16(v136, v178.val[3]);
              v134 = vaddw_u16(v134, *v178.val[3].i8);
              i16 += 64;
              v135 -= 16;
            }

            while (v135);
            v150 = vaddvq_s32(vaddq_s32(vaddq_s32(v134, v131), vaddq_s32(v136, v132)));
            v151 = vaddvq_s32(vaddq_s32(vaddq_s32(v143, v141), vaddq_s32(v144, v142)));
            v152 = vaddvq_s32(vaddq_s32(vaddq_s32(v147, v145), vaddq_s32(v148, v146)));
            result.i64[0] = __PAIR64__(v151, v152);
            v153 = vaddvq_s32(vaddq_s32(vaddq_s32(v139, v137), vaddq_s32(v140, v138)));
            result.i32[2] = v153;
            result.i32[3] = v150;
            if (v89 == v94)
            {
              goto LABEL_106;
            }

            if ((v89 & 0xC) == 0)
            {
              v18 = 4 * v94;
LABEL_104:
              v166 = (a2 + 2 * v18);
              do
              {
                v167 = *v166++;
                result = vaddw_u16(result, v167);
                v18 += 4;
              }

              while (v18 < v16);
              goto LABEL_106;
            }

            v90 = v150;
            v91 = v153;
            v92 = v151;
            v93 = v152;
          }

          else
          {
            v90 = 0;
            v91 = 0;
            v92 = 0;
            v93 = 0;
            v94 = 0;
          }

          v18 = 4 * (v89 & 0x7FFFFFFFFFFFFFFCLL);
          v154 = v90;
          v155 = v91;
          v156 = v92;
          v157 = v93;
          v158 = &a2->i16[4 * v94];
          v159 = v94 - (v89 & 0x7FFFFFFFFFFFFFFCLL);
          do
          {
            v176 = vld4_s16(v158);
            v158 += 16;
            v157 = vaddw_u16(v157, v176.val[0]);
            v156 = vaddw_u16(v156, v176.val[1]);
            v155 = vaddw_u16(v155, v176.val[2]);
            v154 = vaddw_u16(v154, v176.val[3]);
            v159 += 4;
          }

          while (v159);
          result.i64[0] = __PAIR64__(vaddvq_s32(v156), vaddvq_s32(v157));
          result.i32[2] = vaddvq_s32(v155);
          result.i32[3] = vaddvq_s32(v154);
          if (v89 != (v89 & 0x7FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_104;
          }

LABEL_106:
          *a3 = result;
          if (v17 >= 1)
          {
            v168 = 0;
            v169 = 2 * v16;
            v170 = a3 + 1;
            do
            {
              v168 += 4;
              v171 = *&a2->i8[v169];
              v172 = *a2->i8;
              a2 = (a2 + 8);
              result = vaddq_s32(vsubl_u16(v171, v172), result);
              *v170++ = result;
            }

            while (v168 < v17);
          }

          return result;
        }

        if (a5 < 1)
        {
          return result;
        }

        v26 = 0;
        v27 = &a3->i8[4 * a5];
        while (v16 < 1)
        {
          v29 = 0;
          a3->i32[0] = 0;
          if (v17 >= 1)
          {
            goto LABEL_34;
          }

LABEL_27:
          ++v26;
          a2 = (a2 + 2);
          a3 = (a3 + 4);
          v27 += 4;
          if (v26 == a5)
          {
            return result;
          }
        }

        v28 = 0;
        v29 = 0;
        v30 = a2;
        do
        {
          v29 += v30->u16[0];
          v30 = (v30 + 2 * a5);
          v28 += a5;
        }

        while (v16 > v28);
        a3->i32[0] = v29;
        if (v17 < 1)
        {
          goto LABEL_27;
        }

LABEL_34:
        v31 = 0;
        do
        {
          v29 = v29 - a2->u16[v31] + a2->u16[v16 + v31];
          *&v27[4 * v31] = v29;
          v31 += a5;
        }

        while (v31 < v17);
        goto LABEL_27;
      }

      if (v16 < 1)
      {
        v23 = 0;
        v22 = 0;
        v21 = 0;
        goto LABEL_99;
      }

      if (v16 < 0xA)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        goto LABEL_97;
      }

      v87 = (v16 - 1) / 3u + 1;
      if (v16 >= 0x2E)
      {
        v95 = 0uLL;
        v88 = v87 & 0x7FFFFFF0;
        v96 = 0uLL;
        v97 = v88;
        v98 = 0uLL;
        v99 = a2;
        v100 = 0uLL;
        v101 = 0uLL;
        v102 = 0uLL;
        v103 = 0uLL;
        v104 = 0uLL;
        v105 = 0uLL;
        v106 = 0uLL;
        v107 = 0uLL;
        v108 = 0uLL;
        do
        {
          v109 = v99;
          v99 += 48;
          v174 = vld3q_s16(v109);
          v109 += 24;
          v106 = vaddw_high_u16(v106, v174.val[0]);
          v175 = vld3q_s16(v109);
          v105 = vaddw_u16(v105, *v174.val[0].i8);
          v108 = vaddw_high_u16(v108, v175.val[0]);
          v107 = vaddw_u16(v107, *v175.val[0].i8);
          v102 = vaddw_high_u16(v102, v174.val[1]);
          v101 = vaddw_u16(v101, *v174.val[1].i8);
          v104 = vaddw_high_u16(v104, v175.val[1]);
          v103 = vaddw_u16(v103, *v175.val[1].i8);
          v96 = vaddw_high_u16(v96, v174.val[2]);
          v95 = vaddw_u16(v95, *v174.val[2].i8);
          v100 = vaddw_high_u16(v100, v175.val[2]);
          v98 = vaddw_u16(v98, *v175.val[2].i8);
          v97 -= 16;
        }

        while (v97);
        v21 = vaddvq_s32(vaddq_s32(vaddq_s32(v98, v95), vaddq_s32(v100, v96)));
        v22 = vaddvq_s32(vaddq_s32(vaddq_s32(v103, v101), vaddq_s32(v104, v102)));
        result = vaddq_s32(vaddq_s32(v107, v105), vaddq_s32(v108, v106));
        result.i32[0] = vaddvq_s32(result);
        v23 = result.i32[0];
        if (v88 == v87)
        {
          goto LABEL_99;
        }

        if (((((v16 - 1) / 3u) + 1) & 0xC) == 0)
        {
          v20 = 3 * v88;
LABEL_97:
          v160 = &a2->u16[v20 + 2];
          do
          {
            v23 += *(v160 - 2);
            v22 += *(v160 - 1);
            v161 = *v160;
            v160 += 3;
            v21 += v161;
            v20 += 3;
          }

          while (v20 < v16);
          goto LABEL_99;
        }
      }

      else
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v88 = 0;
      }

      v20 = 3 * (v87 & 0x7FFFFFFC);
      v110 = v21;
      v111 = v22;
      result = v23;
      v112 = &a2->i16[3 * v88];
      v113 = v88 - (v87 & 0x7FFFFFFC);
      do
      {
        v173 = vld3_s16(v112);
        v112 += 12;
        result = vaddw_u16(result, v173.val[0]);
        v111 = vaddw_u16(v111, v173.val[1]);
        v110 = vaddw_u16(v110, v173.val[2]);
        v113 += 4;
      }

      while (v113);
      v21 = vaddvq_s32(v110);
      v22 = vaddvq_s32(v111);
      result.i32[0] = vaddvq_s32(result);
      v23 = result.i32[0];
      if ((v87 & 0x7FFFFFFC) != v87)
      {
        goto LABEL_97;
      }

LABEL_99:
      a3->i32[0] = v23;
      a3->i32[1] = v22;
      a3->i32[2] = v21;
      if (v17 >= 1)
      {
        v162 = 0;
        v163 = &a3[1].u32[1];
        v164 = &a2->u16[1];
        v165 = &a2->u16[v16 + 1];
        do
        {
          v23 = v23 - *(v164 - 1) + *(v165 - 1);
          v22 = v22 - *v164 + *v165;
          v21 = v21 - v164[1] + v165[1];
          v162 += 3;
          *(v163 - 2) = v23;
          *(v163 - 1) = v22;
          *v163 = v21;
          v163 += 3;
          v165 += 3;
          v164 += 3;
        }

        while (v162 < v17);
      }

      return result;
    }

    if (v16 < 1)
    {
      v25 = 0;
      goto LABEL_83;
    }

    if (v16 < 4)
    {
      v24 = 0;
      v25 = 0;
      goto LABEL_81;
    }

    if (v16 >= 0x10)
    {
      v24 = v16 & 0x7FFFFFF0;
      v114 = a2 + 1;
      v115 = 0uLL;
      v116 = v24;
      v117 = 0uLL;
      v118 = 0uLL;
      v119 = 0uLL;
      do
      {
        v120 = v114[-1];
        v117 = vaddw_high_u16(v117, v120);
        v115 = vaddw_u16(v115, *v120.i8);
        v119 = vaddw_high_u16(v119, *v114);
        v118 = vaddw_u16(v118, *v114->i8);
        v114 += 2;
        v116 -= 16;
      }

      while (v116);
      result = vaddq_s32(vaddq_s32(v118, v115), vaddq_s32(v119, v117));
      result.i32[0] = vaddvq_s32(result);
      v25 = result.i32[0];
      if (v24 == v16)
      {
        goto LABEL_83;
      }

      if ((v16 & 0xC) == 0)
      {
LABEL_81:
        v125 = a2 + v24;
        v126 = v16 - v24;
        do
        {
          v127 = *v125++;
          v25 += v127;
          --v126;
        }

        while (v126);
        goto LABEL_83;
      }
    }

    else
    {
      v25 = 0;
      v24 = 0;
    }

    v121 = v24;
    v24 = v16 & 0x7FFFFFFC;
    result = v25;
    v122 = (a2 + 2 * v121);
    v123 = v121 - v24;
    do
    {
      v124 = *v122++;
      result = vaddw_u16(result, v124);
      v123 += 4;
    }

    while (v123);
    result.i32[0] = vaddvq_s32(result);
    v25 = result.i32[0];
    if (v24 != v16)
    {
      goto LABEL_81;
    }

LABEL_83:
    a3->i32[0] = v25;
    if (v17 >= 1)
    {
      v128 = &a3->u32[1];
      do
      {
        v129 = a2->u16[v16];
        v130 = a2->u16[0];
        a2 = (a2 + 2);
        v25 = v25 - v130 + v129;
        *v128++ = v25;
        --v17;
      }

      while (v17);
    }

    return result;
  }

  v7 = (a5 * a4);
  if (v7 < 1)
  {
    return result;
  }

  v8 = a5;
  v9 = 2 * a5;
  v10 = 3 * a5;
  v11 = 4 * a5;
  if (v7 < 4)
  {
    v12 = 0;
    goto LABEL_44;
  }

  v19 = 2 * a5;
  if (v7 >= 0x10)
  {
    v12 = v7 & 0x7FFFFFF0;
    v32 = a2 + 1;
    v33 = &a3[2];
    v34 = v12;
    do
    {
      v35 = v32[-1];
      v36 = *(&v32[-1] + v19);
      v37 = *(v32 + 2 * v8);
      v38 = vaddl_high_u16(v36, v35);
      v39 = vaddl_u16(*v36.i8, *v35.i8);
      v40 = vaddl_high_u16(v37, *v32);
      v41 = vaddl_u16(*v37.i8, *v32->i8);
      v42 = *(v32 + 2 * v9 - 16);
      v43 = *(v32 + 2 * v9);
      v44 = vaddw_u16(v39, *v42.i8);
      v45 = vaddw_high_u16(v38, v42);
      v46 = vaddw_u16(v41, *v43.i8);
      v47 = vaddw_high_u16(v40, v43);
      v48 = *(v32 + 2 * v10 - 16);
      v49 = *(v32 + 2 * v10);
      v50 = vaddw_high_u16(v45, v48);
      v51 = vaddw_u16(v44, *v48.i8);
      v52 = vaddw_high_u16(v47, v49);
      v53 = vaddw_u16(v46, *v49.i8);
      v54 = *(v32 + 2 * v11 - 16);
      v55 = *(v32 + 2 * v11);
      result = vaddw_u16(v51, *v54.i8);
      v33[-2] = result;
      v33[-1] = vaddw_high_u16(v50, v54);
      *v33 = vaddw_u16(v53, *v55.i8);
      v33[1] = vaddw_high_u16(v52, v55);
      v33 += 4;
      v32 += 2;
      v34 -= 16;
    }

    while (v34);
    if (v12 == v7)
    {
      return result;
    }

    if ((v7 & 0xC) == 0)
    {
LABEL_44:
      v60 = 0;
      v61 = a2 + v12 + v11;
      v62 = a2 + v12 + v10;
      v63 = a2 + v12 + v9;
      v64 = a2 + v12 + v8;
      v65 = a2 + v12;
      v66 = v7 - v12;
      v67 = &a3->i8[4 * v12];
      do
      {
        *&v67[4 * v60] = v64[v60] + v65[v60] + v63[v60] + v62[v60] + v61[v60];
        ++v60;
      }

      while (v66 != v60);
      return result;
    }
  }

  else
  {
    v12 = 0;
  }

  v56 = v12;
  v12 = v7 & 0x7FFFFFFC;
  v57 = (a2 + 2 * v56);
  v58 = (a3 + 4 * v56);
  v59 = v56 - v12;
  do
  {
    result = vaddw_u16(vaddw_u16(vaddw_u16(vaddl_u16(*(v57 + 2 * v8), *v57), *(v57 + 2 * v9)), *(v57 + 2 * v10)), v57[v11 / 4]);
    *v58++ = result;
    ++v57;
    v59 += 4;
  }

  while (v59);
  if (v12 != v7)
  {
    goto LABEL_44;
  }

  return result;
}

uint64_t sub_1003642F8(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

void sub_100364380(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

float64_t sub_1003643B8(uint64_t a1, uint16x4_t *a2, uint64_t a3, int a4, int a5, float64x2_t a6, float64x2_t a7, float64x2_t a8, double a9, double a10, double a11, double a12, double a13)
{
  v14 = *(a1 + 8);
  if (v14 == 3)
  {
    v21 = (a5 * a4);
    if (v21 < 1)
    {
      return a6.f64[0];
    }

    v22 = 2 * a5;
    if (v21 >= 8)
    {
      v23 = v21 & 0x7FFFFFF8;
      v92 = v23;
      v93 = a3;
      v94 = a2;
      do
      {
        v95 = vmovl_u16(*v94);
        v96.i64[0] = v95.u32[0];
        v96.i64[1] = v95.u32[1];
        v97 = vcvtq_f64_u64(v96);
        v96.i64[0] = v95.u32[2];
        v96.i64[1] = v95.u32[3];
        v98 = vcvtq_f64_u64(v96);
        v99 = vmovl_high_u16(*v94->i8);
        v96.i64[0] = v99.u32[0];
        v96.i64[1] = v99.u32[1];
        v100 = vcvtq_f64_u64(v96);
        v96.i64[0] = v99.u32[2];
        v96.i64[1] = v99.u32[3];
        v101 = vcvtq_f64_u64(v96);
        v102 = *&v94->i8[2 * a5];
        v103 = vmovl_u16(*v102.i8);
        v96.i64[0] = v103.u32[0];
        v96.i64[1] = v103.u32[1];
        v104 = vcvtq_f64_u64(v96);
        v96.i64[0] = v103.u32[2];
        v96.i64[1] = v103.u32[3];
        v105 = vcvtq_f64_u64(v96);
        v106 = vmovl_high_u16(v102);
        v96.i64[0] = v106.u32[0];
        v96.i64[1] = v106.u32[1];
        v107 = vcvtq_f64_u64(v96);
        v96.i64[0] = v106.u32[2];
        v96.i64[1] = v106.u32[3];
        v108 = vaddq_f64(v101, vcvtq_f64_u64(v96));
        v109 = vaddq_f64(v100, v107);
        a7 = vaddq_f64(v98, v105);
        v110 = vaddq_f64(v97, v104);
        v111 = *&v94->i8[2 * v22];
        v112 = vmovl_high_u16(v111);
        v96.i64[0] = v112.u32[2];
        v96.i64[1] = v112.u32[3];
        v113 = vcvtq_f64_u64(v96);
        v96.i64[0] = v112.u32[0];
        v96.i64[1] = v112.u32[1];
        v114 = vcvtq_f64_u64(v96);
        v115 = vmovl_u16(*v111.i8);
        v96.i64[0] = v115.u32[2];
        v96.i64[1] = v115.u32[3];
        v116 = vcvtq_f64_u64(v96);
        v96.i64[0] = v115.u32[0];
        v96.i64[1] = v115.u32[1];
        v93[2] = vaddq_f64(v109, v114);
        v93[3] = vaddq_f64(v108, v113);
        a6 = vaddq_f64(a7, v116);
        *v93 = vaddq_f64(v110, vcvtq_f64_u64(v96));
        v93[1] = a6;
        v93 += 4;
        v94 += 2;
        v92 -= 8;
      }

      while (v92);
      if (v23 == v21)
      {
        return a6.f64[0];
      }
    }

    else
    {
      v23 = 0;
    }

    v117 = a2 + v23;
    v118 = v21 - v23;
    v119 = (a3 + 8 * v23);
    do
    {
      LOWORD(a6.f64[0]) = *v117;
      LOWORD(a7.f64[0]) = v117[a5];
      *&v120 = *&a7.f64[0];
      v121 = *&a6.f64[0] + *&v120;
      LOWORD(v120) = v117[v22];
      a7.f64[0] = v120;
      a6.f64[0] = v121 + a7.f64[0];
      *v119++ = *&a6.f64[0];
      ++v117;
      --v118;
    }

    while (v118);
    return a6.f64[0];
  }

  if (v14 != 5)
  {
    v24 = (v14 * a5);
    v25 = ((a4 - 1) * a5);
    if (a5 != 1)
    {
      if (a5 != 3)
      {
        if (a5 == 4)
        {
          if (v24 < 1)
          {
            a6 = 0uLL;
            v28 = 0uLL;
            *a3 = 0u;
            *(a3 + 16) = 0u;
            if (v25 < 1)
            {
              return a6.f64[0];
            }
          }

          else
          {
            v26 = 0;
            a6 = 0uLL;
            v27 = a2;
            v28 = 0uLL;
            do
            {
              v29 = *v27++;
              v30 = vmovl_u16(v29);
              v31.i64[0] = v30.u32[0];
              v31.i64[1] = v30.u32[1];
              v32 = vcvtq_f64_u64(v31);
              v31.i64[0] = v30.u32[2];
              v31.i64[1] = v30.u32[3];
              v28 = vaddq_f64(v28, vcvtq_f64_u64(v31));
              a6 = vaddq_f64(a6, v32);
              v26 += 4;
            }

            while (v26 < v24);
            *a3 = a6;
            *(a3 + 16) = v28;
            if (v25 < 1)
            {
              return a6.f64[0];
            }
          }

          v131 = 0;
          v132 = 2 * v24;
          v133 = (a3 + 32);
          do
          {
            v131 += 4;
            v134 = vmovl_u16(*(a2 + v132));
            v135.i64[0] = v134.u32[0];
            v135.i64[1] = v134.u32[1];
            v136 = vcvtq_f64_u64(v135);
            v135.i64[0] = v134.u32[2];
            v135.i64[1] = v134.u32[3];
            v137 = vcvtq_f64_u64(v135);
            v138 = *a2++;
            v139 = vmovl_u16(v138);
            v135.i64[0] = v139.u32[0];
            v135.i64[1] = v139.u32[1];
            v140 = vcvtq_f64_u64(v135);
            v135.i64[0] = v139.u32[2];
            v135.i64[1] = v139.u32[3];
            a6 = vaddq_f64(a6, vsubq_f64(v136, v140));
            v28 = vaddq_f64(v28, vsubq_f64(v137, vcvtq_f64_u64(v135)));
            *v133 = a6;
            v133[1] = v28;
            v133 += 2;
          }

          while (v131 < v25);
          return a6.f64[0];
        }

        if (a5 < 1)
        {
          return a6.f64[0];
        }

        v126 = 0;
        v127 = a3 + 8 * a5;
        while (v24 < 1)
        {
          a6.f64[0] = 0.0;
          *a3 = 0;
          if (v25 >= 1)
          {
            goto LABEL_44;
          }

LABEL_37:
          ++v126;
          a2 = (a2 + 2);
          a3 += 8;
          v127 += 8;
          if (v126 == a5)
          {
            return a6.f64[0];
          }
        }

        v128 = 0;
        a6.f64[0] = 0.0;
        v129 = a2;
        do
        {
          LOWORD(a7.f64[0]) = *v129;
          a7.f64[0] = *&a7.f64[0];
          a6.f64[0] = a6.f64[0] + a7.f64[0];
          v129 += a5;
          v128 += a5;
        }

        while (v24 > v128);
        *a3 = a6.f64[0];
        if (v25 < 1)
        {
          goto LABEL_37;
        }

LABEL_44:
        v130 = 0;
        do
        {
          LOWORD(a7.f64[0]) = a2->i16[v24 + v130];
          LOWORD(a8.f64[0]) = a2->i16[v130];
          a8.f64[0] = *&a8.f64[0];
          a7.f64[0] = *&a7.f64[0] - a8.f64[0];
          a6.f64[0] = a6.f64[0] + a7.f64[0];
          *(v127 + 8 * v130) = a6.f64[0];
          v130 += a5;
        }

        while (v130 < v25);
        goto LABEL_37;
      }

      if (v24 < 1)
      {
        v124 = 0.0;
        v123 = 0.0;
        a6.f64[0] = 0.0;
        goto LABEL_58;
      }

      if (v24 > 3)
      {
        v141 = (v24 - 1) / 3u + 1;
        v122 = 3 * (v141 & 0x7FFFFFFE);
        v142 = a2 + 3;
        a6.f64[0] = 0.0;
        v143 = v141 & 0x7FFFFFFE;
        v123 = 0.0;
        v124 = 0.0;
        do
        {
          LOWORD(a9) = *(v142 - 3);
          a9 = *&a9;
          LOWORD(a10) = *v142;
          a10 = *&a10;
          LOWORD(a11) = *(v142 - 2);
          a11 = *&a11;
          LOWORD(a12) = v142[1];
          a12 = *&a12;
          LOWORD(a13) = *(v142 - 1);
          a13 = *&a13;
          LOWORD(v13) = v142[2];
          v13 = *&v13;
          a6.f64[0] = a6.f64[0] + a13 + v13;
          v123 = v123 + a11 + a12;
          v124 = v124 + a9 + a10;
          v142 += 6;
          v143 -= 2;
        }

        while (v143);
        if ((v141 & 0x7FFFFFFE) == v141)
        {
LABEL_58:
          *a3 = v124;
          *(a3 + 8) = v123;
          *(a3 + 16) = a6.f64[0];
          if (v25 >= 1)
          {
            v147 = 0;
            v148 = (a3 + 40);
            v149 = a2 + 1;
            v150 = a2 + v24 + 1;
            do
            {
              LOWORD(a9) = *(v150 - 1);
              LOWORD(a10) = *(v149 - 1);
              *&v151 = *&a10;
              *&v152 = *&a9 - *&v151;
              v124 = v124 + *&v152;
              LOWORD(v152) = *v150;
              LOWORD(v151) = *v149;
              *&v153 = v151;
              *&v154 = v152 - *&v153;
              v123 = v123 + *&v154;
              LOWORD(v154) = v150[1];
              LOWORD(v153) = v149[1];
              a10 = v153;
              a9 = v154 - a10;
              a6.f64[0] = a6.f64[0] + a9;
              v147 += 3;
              *(v148 - 2) = v124;
              *(v148 - 1) = v123;
              *v148 = a6.f64[0];
              v148 += 3;
              v150 += 3;
              v149 += 3;
            }

            while (v147 < v25);
          }

          return a6.f64[0];
        }
      }

      else
      {
        v122 = 0;
        a6.f64[0] = 0.0;
        v123 = 0.0;
        v124 = 0.0;
      }

      v144 = a2 + v122 + 2;
      do
      {
        LOWORD(a9) = *(v144 - 2);
        *&v145 = *&a9;
        v124 = v124 + *&v145;
        LOWORD(v145) = *(v144 - 1);
        *&v146 = v145;
        v123 = v123 + *&v146;
        LOWORD(v146) = *v144;
        a9 = v146;
        a6.f64[0] = a6.f64[0] + a9;
        v122 += 3;
        v144 += 3;
      }

      while (v122 < v24);
      goto LABEL_58;
    }

    if (v24 < 1)
    {
      a6.f64[0] = 0.0;
      goto LABEL_74;
    }

    if (v24 < 8)
    {
      v125 = 0;
      a6.f64[0] = 0.0;
      goto LABEL_72;
    }

    if (v24 >= 0x10)
    {
      v125 = v24 & 0x7FFFFFF0;
      v164 = &a2[2];
      a6.f64[0] = 0.0;
      v165 = v125;
      do
      {
        v166 = v164[-1];
        v167 = vmovl_high_u16(v166);
        v168.i64[0] = v167.u32[2];
        v168.i64[1] = v167.u32[3];
        v169 = vcvtq_f64_u64(v168);
        v168.i64[0] = v167.u32[0];
        v168.i64[1] = v167.u32[1];
        v170 = vcvtq_f64_u64(v168);
        v171 = vmovl_u16(*v166.i8);
        v168.i64[0] = v171.u32[2];
        v168.i64[1] = v171.u32[3];
        v172 = vcvtq_f64_u64(v168);
        v168.i64[0] = v171.u32[0];
        v168.i64[1] = v171.u32[1];
        a7 = vcvtq_f64_u64(v168);
        v173 = vmovl_high_u16(*v164);
        v168.i64[0] = v173.u32[2];
        v168.i64[1] = v173.u32[3];
        v174 = vcvtq_f64_u64(v168);
        v168.i64[0] = v173.u32[0];
        v168.i64[1] = v173.u32[1];
        v175 = vcvtq_f64_u64(v168);
        v176 = vmovl_u16(*v164->i8);
        v168.i64[0] = v176.u32[2];
        v168.i64[1] = v176.u32[3];
        v177 = vcvtq_f64_u64(v168);
        v168.i64[0] = v176.u32[0];
        v168.i64[1] = v176.u32[1];
        a8 = vcvtq_f64_u64(v168);
        a6.f64[0] = a6.f64[0] + a7.f64[0] + a7.f64[1] + v172.f64[0] + v172.f64[1] + v170.f64[0] + v170.f64[1] + v169.f64[0] + v169.f64[1] + a8.f64[0] + a8.f64[1] + v177.f64[0] + v177.f64[1] + v175.f64[0] + v175.f64[1] + v174.f64[0] + v174.f64[1];
        v164 += 2;
        v165 -= 16;
      }

      while (v165);
      if (v125 == v24)
      {
        goto LABEL_74;
      }

      if ((v24 & 8) == 0)
      {
LABEL_72:
        v178 = a2 + v125;
        v179 = v24 - v125;
        do
        {
          v180 = *v178++;
          a7.f64[0] = v180;
          a6.f64[0] = a6.f64[0] + v180;
          --v179;
        }

        while (v179);
        goto LABEL_74;
      }
    }

    else
    {
      v125 = 0;
      a6.f64[0] = 0.0;
    }

    v155 = v125;
    v125 = v24 & 0x7FFFFFF8;
    v156 = (a2 + 2 * v155);
    v157 = v155 - v125;
    do
    {
      v158 = *v156++;
      v159 = vmovl_high_u16(v158);
      v160.i64[0] = v159.u32[2];
      v160.i64[1] = v159.u32[3];
      v161 = vcvtq_f64_u64(v160);
      v160.i64[0] = v159.u32[0];
      v160.i64[1] = v159.u32[1];
      a8 = vcvtq_f64_u64(v160);
      v162 = vmovl_u16(*v158.i8);
      v160.i64[0] = v162.u32[2];
      v160.i64[1] = v162.u32[3];
      v163 = vcvtq_f64_u64(v160);
      v160.i64[0] = v162.u32[0];
      v160.i64[1] = v162.u32[1];
      a7 = vcvtq_f64_u64(v160);
      a6.f64[0] = a6.f64[0] + a7.f64[0] + a7.f64[1] + v163.f64[0] + v163.f64[1] + a8.f64[0] + a8.f64[1] + v161.f64[0] + v161.f64[1];
      v157 += 8;
    }

    while (v157);
    if (v125 != v24)
    {
      goto LABEL_72;
    }

LABEL_74:
    *a3 = a6.f64[0];
    if (v25 >= 1)
    {
      v181 = (a3 + 8);
      do
      {
        LOWORD(a7.f64[0]) = a2->i16[v24];
        LOWORD(a8.f64[0]) = a2->i16[0];
        a8.f64[0] = *&a8.f64[0];
        a7.f64[0] = *&a7.f64[0] - a8.f64[0];
        a6.f64[0] = a6.f64[0] + a7.f64[0];
        *v181++ = *&a6.f64[0];
        a2 = (a2 + 2);
        --v25;
      }

      while (v25);
    }

    return a6.f64[0];
  }

  v15 = (a5 * a4);
  if (v15 < 1)
  {
    return a6.f64[0];
  }

  v16 = a5;
  v17 = 2 * a5;
  v18 = 3 * a5;
  v19 = 4 * a5;
  if (v15 <= 7)
  {
    v20 = 0;
LABEL_20:
    v78 = 0;
    v79 = a2 + 2 * v20 + 2 * v19;
    v80 = a2 + 2 * v20 + 2 * v18;
    v81 = a2 + 2 * v20 + 2 * v17;
    v82 = a2 + 2 * v20 + 2 * v16;
    v83 = a2 + 2 * v20;
    v84 = v15 - v20;
    v85 = a3 + 8 * v20;
    do
    {
      LOWORD(a6.f64[0]) = *&v83[2 * v78];
      LOWORD(a7.f64[0]) = *&v82[2 * v78];
      *&v86 = *&a7.f64[0];
      v87 = *&a6.f64[0] + *&v86;
      LOWORD(v86) = *&v81[2 * v78];
      *&v88 = v86;
      v89 = v87 + *&v88;
      LOWORD(v88) = *&v80[2 * v78];
      *&v90 = v88;
      v91 = v89 + *&v90;
      LOWORD(v90) = *&v79[2 * v78];
      a7.f64[0] = v90;
      a6.f64[0] = v91 + a7.f64[0];
      *(v85 + 8 * v78++) = a6.f64[0];
    }

    while (v84 != v78);
    return a6.f64[0];
  }

  v20 = v15 & 0x7FFFFFF8;
  v33 = v20;
  v34 = a3;
  v35 = a2;
  do
  {
    v36 = vmovl_u16(*v35);
    v37.i64[0] = v36.u32[0];
    v37.i64[1] = v36.u32[1];
    v38 = vcvtq_f64_u64(v37);
    v37.i64[0] = v36.u32[2];
    v37.i64[1] = v36.u32[3];
    v39 = vcvtq_f64_u64(v37);
    v40 = vmovl_high_u16(*v35->i8);
    v37.i64[0] = v40.u32[0];
    v37.i64[1] = v40.u32[1];
    v41 = vcvtq_f64_u64(v37);
    v37.i64[0] = v40.u32[2];
    v37.i64[1] = v40.u32[3];
    v42 = vcvtq_f64_u64(v37);
    v43 = *&v35->i8[2 * v16];
    v44 = vmovl_u16(*v43.i8);
    v37.i64[0] = v44.u32[0];
    v37.i64[1] = v44.u32[1];
    v45 = vcvtq_f64_u64(v37);
    v37.i64[0] = v44.u32[2];
    v37.i64[1] = v44.u32[3];
    v46 = vcvtq_f64_u64(v37);
    v47 = vmovl_high_u16(v43);
    v37.i64[0] = v47.u32[0];
    v37.i64[1] = v47.u32[1];
    v48 = vcvtq_f64_u64(v37);
    v37.i64[0] = v47.u32[2];
    v37.i64[1] = v47.u32[3];
    v49 = vaddq_f64(v42, vcvtq_f64_u64(v37));
    v50 = vaddq_f64(v41, v48);
    v51 = vaddq_f64(v39, v46);
    v52 = *&v35->i8[2 * v17];
    v53 = vaddq_f64(v38, v45);
    v54 = vmovl_high_u16(v52);
    v37.i64[0] = v54.u32[2];
    v37.i64[1] = v54.u32[3];
    v55 = vcvtq_f64_u64(v37);
    v37.i64[0] = v54.u32[0];
    v37.i64[1] = v54.u32[1];
    v56 = vcvtq_f64_u64(v37);
    v57 = vmovl_u16(*v52.i8);
    v37.i64[0] = v57.u32[2];
    v37.i64[1] = v57.u32[3];
    v58 = vcvtq_f64_u64(v37);
    v37.i64[0] = v57.u32[0];
    v37.i64[1] = v57.u32[1];
    v59 = vaddq_f64(v53, vcvtq_f64_u64(v37));
    v60 = vaddq_f64(v51, v58);
    v61 = vaddq_f64(v50, v56);
    v62 = vaddq_f64(v49, v55);
    v63 = *&v35->i8[2 * v18];
    v64 = vmovl_u16(*v63.i8);
    v37.i64[0] = v64.u32[0];
    v37.i64[1] = v64.u32[1];
    v65 = vcvtq_f64_u64(v37);
    v37.i64[0] = v64.u32[2];
    v37.i64[1] = v64.u32[3];
    v66 = vcvtq_f64_u64(v37);
    v67 = vmovl_high_u16(v63);
    v37.i64[0] = v67.u32[0];
    v37.i64[1] = v67.u32[1];
    v68 = vcvtq_f64_u64(v37);
    v37.i64[0] = v67.u32[2];
    v37.i64[1] = v67.u32[3];
    v69 = vaddq_f64(v62, vcvtq_f64_u64(v37));
    v70 = vaddq_f64(v61, v68);
    a7 = vaddq_f64(v60, v66);
    v71 = vaddq_f64(v59, v65);
    v72 = *v35[v19 / 4].i8;
    v73 = vmovl_high_u16(v72);
    v37.i64[0] = v73.u32[2];
    v37.i64[1] = v73.u32[3];
    v74 = vcvtq_f64_u64(v37);
    v37.i64[0] = v73.u32[0];
    v37.i64[1] = v73.u32[1];
    v75 = vcvtq_f64_u64(v37);
    v76 = vmovl_u16(*v72.i8);
    v37.i64[0] = v76.u32[2];
    v37.i64[1] = v76.u32[3];
    v77 = vcvtq_f64_u64(v37);
    v37.i64[0] = v76.u32[0];
    v37.i64[1] = v76.u32[1];
    v34[2] = vaddq_f64(v70, v75);
    v34[3] = vaddq_f64(v69, v74);
    a6 = vaddq_f64(a7, v77);
    *v34 = vaddq_f64(v71, vcvtq_f64_u64(v37));
    v34[1] = a6;
    v34 += 4;
    v35 += 2;
    v33 -= 8;
  }

  while (v33);
  if (v20 != v15)
  {
    goto LABEL_20;
  }

  return a6.f64[0];
}

uint64_t sub_100364C50(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

void sub_100364CD8(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

int32x4_t sub_100364D10(uint64_t a1, int16x8_t *a2, int32x4_t *a3, int a4, int a5, int32x4_t result)
{
  v6 = *(a1 + 8);
  if (v6 == 3)
  {
    v13 = (a5 * a4);
    if (v13 < 1)
    {
      return result;
    }

    v14 = 2 * a5;
    if (v13 < 4)
    {
      v15 = 0;
      goto LABEL_54;
    }

    if (v13 >= 0x10)
    {
      v15 = v13 & 0x7FFFFFF0;
      v68 = a2 + 1;
      v69 = a3 + 2;
      v70 = v15;
      do
      {
        v71 = v68[-1];
        v72 = *(v68 + 2 * a5 - 16);
        v73 = *(v68 + 2 * a5);
        v74 = vaddl_high_s16(v72, v71);
        v75 = vaddl_s16(*v72.i8, *v71.i8);
        v76 = vaddl_high_s16(v73, *v68);
        v77 = vaddl_s16(*v73.i8, *v68->i8);
        v78 = *(v68 + 2 * v14 - 16);
        v79 = *(v68 + 2 * v14);
        result = vaddw_s16(v75, *v78.i8);
        v69[-2] = result;
        v69[-1] = vaddw_high_s16(v74, v78);
        *v69 = vaddw_s16(v77, *v79.i8);
        v69[1] = vaddw_high_s16(v76, v79);
        v69 += 4;
        v68 += 2;
        v70 -= 16;
      }

      while (v70);
      if (v15 == v13)
      {
        return result;
      }

      if (((a5 * a4) & 0xC) == 0)
      {
LABEL_54:
        v84 = &a2->i16[v15];
        v85 = v13 - v15;
        v86 = &a3->i32[v15];
        do
        {
          *v86++ = v84[a5] + *v84 + v84[v14];
          ++v84;
          --v85;
        }

        while (v85);
        return result;
      }
    }

    else
    {
      v15 = 0;
    }

    v80 = v15;
    v15 = v13 & 0x7FFFFFFC;
    v81 = (a2 + 2 * v80);
    v82 = (a3 + 4 * v80);
    v83 = v80 - v15;
    do
    {
      result = vaddw_s16(vaddl_s16(*(v81 + 2 * a5), *v81), *(v81 + 2 * v14));
      *v82++ = result;
      ++v81;
      v83 += 4;
    }

    while (v83);
    if (v15 == v13)
    {
      return result;
    }

    goto LABEL_54;
  }

  if (v6 != 5)
  {
    v16 = (v6 * a5);
    v17 = ((a4 - 1) * a5);
    if (a5 != 1)
    {
      if (a5 != 3)
      {
        if (a5 == 4)
        {
          if (v16 < 1)
          {
            result = 0uLL;
            goto LABEL_106;
          }

          if (v16 < 0xD)
          {
            v18 = 0;
            result = 0uLL;
            goto LABEL_104;
          }

          v89 = ((v16 - 1) >> 2) + 1;
          if (v16 >= 0x3D)
          {
            v129 = 0uLL;
            v94 = v89 & 0x7FFFFFFFFFFFFFF0;
            v130 = 0uLL;
            i16 = a2[4].i16;
            v132 = 0uLL;
            v133 = v89 & 0x7FFFFFFFFFFFFFF0;
            v134 = 0uLL;
            v135 = 0uLL;
            v136 = 0uLL;
            v137 = 0uLL;
            v138 = 0uLL;
            v139 = 0uLL;
            v140 = 0uLL;
            v141 = 0uLL;
            v142 = 0uLL;
            v143 = 0uLL;
            v144 = 0uLL;
            v145 = 0uLL;
            v146 = 0uLL;
            do
            {
              v147 = i16 - 32;
              v174 = vld4q_s16(v147);
              v175 = vld4q_s16(i16);
              v144 = vaddw_high_s16(v144, v174.val[0]);
              v143 = vaddw_s16(v143, *v174.val[0].i8);
              v146 = vaddw_high_s16(v146, v175.val[0]);
              v145 = vaddw_s16(v145, *v175.val[0].i8);
              v140 = vaddw_high_s16(v140, v174.val[1]);
              v139 = vaddw_s16(v139, *v174.val[1].i8);
              v142 = vaddw_high_s16(v142, v175.val[1]);
              v141 = vaddw_s16(v141, *v175.val[1].i8);
              v136 = vaddw_high_s16(v136, v174.val[2]);
              v135 = vaddw_s16(v135, *v174.val[2].i8);
              v138 = vaddw_high_s16(v138, v175.val[2]);
              v137 = vaddw_s16(v137, *v175.val[2].i8);
              v130 = vaddw_high_s16(v130, v174.val[3]);
              v129 = vaddw_s16(v129, *v174.val[3].i8);
              v134 = vaddw_high_s16(v134, v175.val[3]);
              v132 = vaddw_s16(v132, *v175.val[3].i8);
              i16 += 64;
              v133 -= 16;
            }

            while (v133);
            v148 = vaddvq_s32(vaddq_s32(vaddq_s32(v132, v129), vaddq_s32(v134, v130)));
            v149 = vaddvq_s32(vaddq_s32(vaddq_s32(v141, v139), vaddq_s32(v142, v140)));
            v150 = vaddvq_s32(vaddq_s32(vaddq_s32(v145, v143), vaddq_s32(v146, v144)));
            result.i64[0] = __PAIR64__(v149, v150);
            v151 = vaddvq_s32(vaddq_s32(vaddq_s32(v137, v135), vaddq_s32(v138, v136)));
            result.i32[2] = v151;
            result.i32[3] = v148;
            if (v89 == v94)
            {
              goto LABEL_106;
            }

            if ((v89 & 0xC) == 0)
            {
              v18 = 4 * v94;
LABEL_104:
              v163 = (a2 + 2 * v18);
              do
              {
                v164 = *v163++;
                result = vaddw_s16(result, v164);
                v18 += 4;
              }

              while (v18 < v16);
              goto LABEL_106;
            }

            v90 = v148;
            v91 = v151;
            v92 = v149;
            v93 = v150;
          }

          else
          {
            v90 = 0;
            v91 = 0;
            v92 = 0;
            v93 = 0;
            v94 = 0;
          }

          v18 = 4 * (v89 & 0x7FFFFFFFFFFFFFFCLL);
          v152 = v90;
          v153 = v91;
          v154 = v92;
          v155 = v93;
          v156 = &a2->i16[4 * v94];
          v157 = v94 - (v89 & 0x7FFFFFFFFFFFFFFCLL);
          do
          {
            v173 = vld4_s16(v156);
            v156 += 16;
            v155 = vaddw_s16(v155, v173.val[0]);
            v154 = vaddw_s16(v154, v173.val[1]);
            v153 = vaddw_s16(v153, v173.val[2]);
            v152 = vaddw_s16(v152, v173.val[3]);
            v157 += 4;
          }

          while (v157);
          result.i64[0] = __PAIR64__(vaddvq_s32(v154), vaddvq_s32(v155));
          result.i32[2] = vaddvq_s32(v153);
          result.i32[3] = vaddvq_s32(v152);
          if (v89 != (v89 & 0x7FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_104;
          }

LABEL_106:
          *a3 = result;
          if (v17 >= 1)
          {
            v165 = 0;
            v166 = 2 * v16;
            v167 = a3 + 1;
            do
            {
              v165 += 4;
              v168 = *&a2->i8[v166];
              v169 = *a2->i8;
              a2 = (a2 + 8);
              result = vaddq_s32(vsubl_s16(v168, v169), result);
              *v167++ = result;
            }

            while (v165 < v17);
          }

          return result;
        }

        if (a5 < 1)
        {
          return result;
        }

        v26 = 0;
        v27 = &a3->i8[4 * a5];
        while (v16 < 1)
        {
          v29 = 0;
          a3->i32[0] = 0;
          if (v17 >= 1)
          {
            goto LABEL_34;
          }

LABEL_27:
          ++v26;
          a2 = (a2 + 2);
          a3 = (a3 + 4);
          v27 += 4;
          if (v26 == a5)
          {
            return result;
          }
        }

        v28 = 0;
        v29 = 0;
        v30 = a2;
        do
        {
          v29 += v30->i16[0];
          v30 = (v30 + 2 * a5);
          v28 += a5;
        }

        while (v16 > v28);
        a3->i32[0] = v29;
        if (v17 < 1)
        {
          goto LABEL_27;
        }

LABEL_34:
        v31 = 0;
        do
        {
          v29 = v29 - a2->i16[v31] + a2->i16[v16 + v31];
          *&v27[4 * v31] = v29;
          v31 += a5;
        }

        while (v31 < v17);
        goto LABEL_27;
      }

      if (v16 < 1)
      {
        v23 = 0;
        v22 = 0;
        v21 = 0;
        goto LABEL_99;
      }

      if (v16 < 0xA)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        goto LABEL_97;
      }

      v87 = (v16 - 1) / 3u + 1;
      if (v16 >= 0x2E)
      {
        v95 = 0uLL;
        v88 = v87 & 0x7FFFFFF0;
        v96 = 0uLL;
        v97 = v88;
        v98 = 0uLL;
        v99 = a2;
        v100 = 0uLL;
        v101 = 0uLL;
        v102 = 0uLL;
        v103 = 0uLL;
        v104 = 0uLL;
        v105 = 0uLL;
        v106 = 0uLL;
        v107 = 0uLL;
        v108 = 0uLL;
        do
        {
          v109 = v99;
          v99 += 48;
          v171 = vld3q_s16(v109);
          v109 += 24;
          v106 = vaddw_high_s16(v106, v171.val[0]);
          v172 = vld3q_s16(v109);
          v105 = vaddw_s16(v105, *v171.val[0].i8);
          v108 = vaddw_high_s16(v108, v172.val[0]);
          v107 = vaddw_s16(v107, *v172.val[0].i8);
          v102 = vaddw_high_s16(v102, v171.val[1]);
          v101 = vaddw_s16(v101, *v171.val[1].i8);
          v104 = vaddw_high_s16(v104, v172.val[1]);
          v103 = vaddw_s16(v103, *v172.val[1].i8);
          v96 = vaddw_high_s16(v96, v171.val[2]);
          v95 = vaddw_s16(v95, *v171.val[2].i8);
          v100 = vaddw_high_s16(v100, v172.val[2]);
          v98 = vaddw_s16(v98, *v172.val[2].i8);
          v97 -= 16;
        }

        while (v97);
        v21 = vaddvq_s32(vaddq_s32(vaddq_s32(v98, v95), vaddq_s32(v100, v96)));
        v22 = vaddvq_s32(vaddq_s32(vaddq_s32(v103, v101), vaddq_s32(v104, v102)));
        result = vaddq_s32(vaddq_s32(v107, v105), vaddq_s32(v108, v106));
        result.i32[0] = vaddvq_s32(result);
        v23 = result.i32[0];
        if (v88 == v87)
        {
          goto LABEL_99;
        }

        if (((((v16 - 1) / 3u) + 1) & 0xC) == 0)
        {
          v20 = 3 * v88;
LABEL_97:
          v158 = &a2->i16[v20 + 2];
          do
          {
            v23 += *(v158 - 2);
            v22 += *(v158 - 1);
            v21 += *v158;
            v20 += 3;
            v158 += 3;
          }

          while (v20 < v16);
          goto LABEL_99;
        }
      }

      else
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v88 = 0;
      }

      v20 = 3 * (v87 & 0x7FFFFFFC);
      v110 = v21;
      v111 = v22;
      result = v23;
      v112 = &a2->i16[3 * v88];
      v113 = v88 - (v87 & 0x7FFFFFFC);
      do
      {
        v170 = vld3_s16(v112);
        v112 += 12;
        result = vaddw_s16(result, v170.val[0]);
        v111 = vaddw_s16(v111, v170.val[1]);
        v110 = vaddw_s16(v110, v170.val[2]);
        v113 += 4;
      }

      while (v113);
      v21 = vaddvq_s32(v110);
      v22 = vaddvq_s32(v111);
      result.i32[0] = vaddvq_s32(result);
      v23 = result.i32[0];
      if ((v87 & 0x7FFFFFFC) != v87)
      {
        goto LABEL_97;
      }

LABEL_99:
      a3->i32[0] = v23;
      a3->i32[1] = v22;
      a3->i32[2] = v21;
      if (v17 >= 1)
      {
        v159 = 0;
        v160 = &a3[1].u32[1];
        v161 = &a2->i16[1];
        v162 = &a2->i16[v16 + 1];
        do
        {
          v23 = v23 - *(v161 - 1) + *(v162 - 1);
          v22 = v22 - *v161 + *v162;
          v21 = v21 - v161[1] + v162[1];
          v159 += 3;
          *(v160 - 2) = v23;
          *(v160 - 1) = v22;
          *v160 = v21;
          v160 += 3;
          v162 += 3;
          v161 += 3;
        }

        while (v159 < v17);
      }

      return result;
    }

    if (v16 < 1)
    {
      v25 = 0;
      goto LABEL_83;
    }

    if (v16 < 4)
    {
      v24 = 0;
      v25 = 0;
      goto LABEL_81;
    }

    if (v16 >= 0x10)
    {
      v24 = v16 & 0x7FFFFFF0;
      v114 = a2 + 1;
      v115 = 0uLL;
      v116 = v24;
      v117 = 0uLL;
      v118 = 0uLL;
      v119 = 0uLL;
      do
      {
        v120 = v114[-1];
        v117 = vaddw_high_s16(v117, v120);
        v115 = vaddw_s16(v115, *v120.i8);
        v119 = vaddw_high_s16(v119, *v114);
        v118 = vaddw_s16(v118, *v114->i8);
        v114 += 2;
        v116 -= 16;
      }

      while (v116);
      result = vaddq_s32(vaddq_s32(v118, v115), vaddq_s32(v119, v117));
      result.i32[0] = vaddvq_s32(result);
      v25 = result.i32[0];
      if (v24 == v16)
      {
        goto LABEL_83;
      }

      if ((v16 & 0xC) == 0)
      {
LABEL_81:
        v125 = &a2->i16[v24];
        v126 = v16 - v24;
        do
        {
          v127 = *v125++;
          v25 += v127;
          --v126;
        }

        while (v126);
        goto LABEL_83;
      }
    }

    else
    {
      v25 = 0;
      v24 = 0;
    }

    v121 = v24;
    v24 = v16 & 0x7FFFFFFC;
    result = v25;
    v122 = (a2 + 2 * v121);
    v123 = v121 - v24;
    do
    {
      v124 = *v122++;
      result = vaddw_s16(result, v124);
      v123 += 4;
    }

    while (v123);
    result.i32[0] = vaddvq_s32(result);
    v25 = result.i32[0];
    if (v24 != v16)
    {
      goto LABEL_81;
    }

LABEL_83:
    a3->i32[0] = v25;
    if (v17 >= 1)
    {
      v128 = &a3->u32[1];
      do
      {
        v25 = v25 - a2->i16[0] + a2->i16[v16];
        *v128++ = v25;
        a2 = (a2 + 2);
        --v17;
      }

      while (v17);
    }

    return result;
  }

  v7 = (a5 * a4);
  if (v7 < 1)
  {
    return result;
  }

  v8 = a5;
  v9 = 2 * a5;
  v10 = 3 * a5;
  v11 = 4 * a5;
  if (v7 < 4)
  {
    v12 = 0;
    goto LABEL_44;
  }

  v19 = 2 * a5;
  if (v7 >= 0x10)
  {
    v12 = v7 & 0x7FFFFFF0;
    v32 = a2 + 1;
    v33 = a3 + 2;
    v34 = v12;
    do
    {
      v35 = v32[-1];
      v36 = *(&v32[-1] + v19);
      v37 = *(v32 + 2 * v8);
      v38 = vaddl_high_s16(v36, v35);
      v39 = vaddl_s16(*v36.i8, *v35.i8);
      v40 = vaddl_high_s16(v37, *v32);
      v41 = vaddl_s16(*v37.i8, *v32->i8);
      v42 = *(v32 + 2 * v9 - 16);
      v43 = *(v32 + 2 * v9);
      v44 = vaddw_s16(v39, *v42.i8);
      v45 = vaddw_high_s16(v38, v42);
      v46 = vaddw_s16(v41, *v43.i8);
      v47 = vaddw_high_s16(v40, v43);
      v48 = *(v32 + 2 * v10 - 16);
      v49 = *(v32 + 2 * v10);
      v50 = vaddw_high_s16(v45, v48);
      v51 = vaddw_s16(v44, *v48.i8);
      v52 = vaddw_high_s16(v47, v49);
      v53 = vaddw_s16(v46, *v49.i8);
      v54 = *(v32 + 2 * v11 - 16);
      v55 = *(v32 + 2 * v11);
      result = vaddw_s16(v51, *v54.i8);
      v33[-2] = result;
      v33[-1] = vaddw_high_s16(v50, v54);
      *v33 = vaddw_s16(v53, *v55.i8);
      v33[1] = vaddw_high_s16(v52, v55);
      v33 += 4;
      v32 += 2;
      v34 -= 16;
    }

    while (v34);
    if (v12 == v7)
    {
      return result;
    }

    if ((v7 & 0xC) == 0)
    {
LABEL_44:
      v60 = 0;
      v61 = &a2->i16[v12 + v11];
      v62 = &a2->i16[v12 + v10];
      v63 = &a2->i16[v12 + v9];
      v64 = &a2->i16[v12 + v8];
      v65 = &a2->i16[v12];
      v66 = v7 - v12;
      v67 = &a3->i8[4 * v12];
      do
      {
        *&v67[4 * v60] = v64[v60] + v65[v60] + v63[v60] + v62[v60] + v61[v60];
        ++v60;
      }

      while (v66 != v60);
      return result;
    }
  }

  else
  {
    v12 = 0;
  }

  v56 = v12;
  v12 = v7 & 0x7FFFFFFC;
  v57 = (a2 + 2 * v56);
  v58 = (a3 + 4 * v56);
  v59 = v56 - v12;
  do
  {
    result = vaddw_s16(vaddw_s16(vaddw_s16(vaddl_s16(*(v57 + 2 * v8), *v57), *(v57 + 2 * v9)), *(v57 + 2 * v10)), v57[v11 / 4]);
    *v58++ = result;
    ++v57;
    v59 += 4;
  }

  while (v59);
  if (v12 != v7)
  {
    goto LABEL_44;
  }

  return result;
}

uint64_t sub_10036566C(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

void sub_1003656F4(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

int32x4_t sub_10036572C(uint64_t a1, int32x4_t *a2, int32x4_t *a3, int a4, int a5, int32x4_t result)
{
  v6 = *(a1 + 8);
  if (v6 == 3)
  {
    v17 = (a5 * a4);
    if (v17 < 1)
    {
      return result;
    }

    v18 = 2 * a5;
    if (v17 >= 0xC)
    {
      v19 = 0;
      v32 = a3 - a2;
      if ((a3 - a2 - 4 * v18) >= 0x20 && v32 - 4 * a5 >= 0x20 && v32 >= 0x20)
      {
        v19 = v17 & 0x7FFFFFF8;
        v33 = a2 + 1;
        v34 = a3 + 1;
        v35 = v19;
        do
        {
          result = vaddq_s32(vaddq_s32(*(v33 + 4 * a5 - 16), v33[-1]), *(v33 + 4 * v18 - 16));
          v36 = vaddq_s32(vaddq_s32(*(v33 + 4 * a5), *v33), *(v33 + 4 * v18));
          v34[-1] = result;
          *v34 = v36;
          v33 += 2;
          v34 += 2;
          v35 -= 8;
        }

        while (v35);
        if (v19 == v17)
        {
          return result;
        }
      }
    }

    else
    {
      v19 = 0;
    }

    v20 = &a2->i32[v19];
    v21 = &a3->i32[v19];
    v22 = v17 - v19;
    do
    {
      *v21++ = v20[a5] + *v20 + v20[v18];
      ++v20;
      --v22;
    }

    while (v22);
    return result;
  }

  if (v6 != 5)
  {
    v23 = (v6 * a5);
    v24 = ((a4 - 1) * a5);
    if (a5 != 1)
    {
      if (a5 != 3)
      {
        if (a5 == 4)
        {
          if (v23 < 1)
          {
            result = 0uLL;
            goto LABEL_81;
          }

          if (v23 > 0x1C)
          {
            v73 = 0uLL;
            v74 = 0uLL;
            v75 = ((v23 - 1) >> 2) + 1;
            v25 = 4 * (v75 & 0x7FFFFFFFFFFFFFF8);
            i32 = a2[4].i32;
            v77 = v75 & 0x7FFFFFFFFFFFFFF8;
            v78 = 0uLL;
            v79 = 0uLL;
            v80 = 0uLL;
            v81 = 0uLL;
            v82 = 0uLL;
            v83 = 0uLL;
            do
            {
              v84 = i32 - 16;
              v95 = vld4q_f32(v84);
              v96 = vld4q_f32(i32);
              v82 = vaddq_s32(v95.val[0], v82);
              v83 = vaddq_s32(v96.val[0], v83);
              v80 = vaddq_s32(v95.val[1], v80);
              v81 = vaddq_s32(v96.val[1], v81);
              v78 = vaddq_s32(v95.val[2], v78);
              v79 = vaddq_s32(v96.val[2], v79);
              v73 = vaddq_s32(v95.val[3], v73);
              v74 = vaddq_s32(v96.val[3], v74);
              i32 += 32;
              v77 -= 8;
            }

            while (v77);
            v85 = vaddvq_s32(vaddq_s32(v74, v73));
            result.i64[0] = __PAIR64__(vaddvq_s32(vaddq_s32(v81, v80)), vaddvq_s32(vaddq_s32(v83, v82)));
            result.i32[2] = vaddvq_s32(vaddq_s32(v79, v78));
            result.i32[3] = v85;
            if (v75 == (v75 & 0x7FFFFFFFFFFFFFF8))
            {
LABEL_81:
              *a3 = result;
              if (v24 >= 1)
              {
                v88 = 0;
                v89 = 4 * v23;
                v90 = a3 + 1;
                do
                {
                  v88 += 4;
                  v91 = *(a2 + v89);
                  v92 = *a2++;
                  result = vaddq_s32(vsubq_s32(v91, v92), result);
                  *v90++ = result;
                }

                while (v88 < v24);
              }

              return result;
            }
          }

          else
          {
            v25 = 0;
            result = 0uLL;
          }

          v86 = &a2[v25 / 4];
          do
          {
            v87 = *v86++;
            result = vaddq_s32(v87, result);
            v25 += 4;
          }

          while (v25 < v23);
          goto LABEL_81;
        }

        if (a5 < 1)
        {
          return result;
        }

        v41 = 0;
        v42 = 4 * a5;
        v43 = a3->i64 + v42;
        while (v23 < 1)
        {
          v45 = 0;
          a3->i32[0] = 0;
          if (v24 >= 1)
          {
            goto LABEL_52;
          }

LABEL_45:
          ++v41;
          a2 = (a2 + 4);
          a3 = (a3 + 4);
          v43 += 4;
          if (v41 == a5)
          {
            return result;
          }
        }

        v44 = 0;
        v45 = 0;
        v46 = a2;
        do
        {
          v45 += v46->i32[0];
          v46 = (v46 + v42);
          v44 += a5;
        }

        while (v23 > v44);
        a3->i32[0] = v45;
        if (v24 < 1)
        {
          goto LABEL_45;
        }

LABEL_52:
        v47 = 0;
        do
        {
          v45 += a2->i32[v23 + v47] - a2->i32[v47];
          *(v43 + 4 * v47) = v45;
          v47 += a5;
        }

        while (v47 < v24);
        goto LABEL_45;
      }

      if (v23 < 1)
      {
        v38 = 0;
        result.i64[0] = 0;
        goto LABEL_63;
      }

      result = 0uLL;
      if (v23 > 0x15)
      {
        v48 = (v23 - 1) / 3u + 1;
        v37 = 3 * (v48 & 0x7FFFFFF8);
        v49 = v48 & 0x7FFFFFF8;
        v50 = a2;
        v51 = 0uLL;
        v52 = 0uLL;
        v53 = 0uLL;
        v54 = 0uLL;
        v55 = 0uLL;
        do
        {
          v56 = v50;
          v50 += 24;
          v93 = vld3q_f32(v56);
          v56 += 12;
          v54 = vaddq_s32(v93.val[0], v54);
          v94 = vld3q_f32(v56);
          v55 = vaddq_s32(v94.val[0], v55);
          v52 = vaddq_s32(v93.val[1], v52);
          v53 = vaddq_s32(v94.val[1], v53);
          result = vaddq_s32(v93.val[2], result);
          v51 = vaddq_s32(v94.val[2], v51);
          v49 -= 8;
        }

        while (v49);
        result.i64[0] = __PAIR64__(vaddvq_s32(vaddq_s32(v51, result)), vaddvq_s32(vaddq_s32(v53, v52)));
        v38 = vaddvq_s32(vaddq_s32(v55, v54));
        if ((v48 & 0x7FFFFFF8) == v48)
        {
LABEL_63:
          a3->i32[0] = v38;
          *(a3->i64 + 4) = result.i64[0];
          if (v24 >= 1)
          {
            v59 = 0;
            v60 = 0;
            v61 = &a2->i8[4 * v23];
            do
            {
              v38 += *&v61[v59] - a2->i32[v59 / 4];
              v60 += 3;
              v62 = a3->i64 + v59;
              *result.i8 = vadd_s32(vsub_s32(*&v61[v59 + 4], *(a2->i64 + v59 + 4)), *result.i8);
              *(v62 + 12) = v38;
              *(v62 + 16) = result.i64[0];
              v59 += 12;
            }

            while (v60 < v24);
          }

          return result;
        }
      }

      else
      {
        v37 = 0;
        v38 = 0;
      }

      v57 = (a2->i64 + 4 * v37 + 4);
      do
      {
        v38 += *(v57 - 1);
        v58 = *v57;
        v57 = (v57 + 12);
        *result.i8 = vadd_s32(v58, *result.i8);
        v37 += 3;
      }

      while (v37 < v23);
      goto LABEL_63;
    }

    if (v23 < 1)
    {
      v40 = 0;
      goto LABEL_72;
    }

    if (v23 > 7)
    {
      v39 = v23 & 0x7FFFFFF8;
      v63 = a2 + 1;
      v64 = 0uLL;
      v65 = v39;
      v66 = 0uLL;
      do
      {
        v64 = vaddq_s32(v63[-1], v64);
        v66 = vaddq_s32(*v63, v66);
        v63 += 2;
        v65 -= 8;
      }

      while (v65);
      result = vaddq_s32(v66, v64);
      result.i32[0] = vaddvq_s32(result);
      v40 = result.i32[0];
      if (v39 == v23)
      {
LABEL_72:
        a3->i32[0] = v40;
        if (v24 >= 1)
        {
          v70 = &a3->i32[1];
          do
          {
            v71 = a2->i32[v23];
            v72 = a2->i32[0];
            a2 = (a2 + 4);
            v40 += v71 - v72;
            *v70++ = v40;
            --v24;
          }

          while (v24);
        }

        return result;
      }
    }

    else
    {
      v39 = 0;
      v40 = 0;
    }

    v67 = &a2->i32[v39];
    v68 = v23 - v39;
    do
    {
      v69 = *v67++;
      v40 += v69;
      --v68;
    }

    while (v68);
    goto LABEL_72;
  }

  v7 = (a5 * a4);
  if (v7 < 1)
  {
    return result;
  }

  v8 = a5;
  v9 = 2 * a5;
  v10 = 3 * a5;
  v11 = a5;
  if (v7 <= 0xB)
  {
    v12 = 0;
LABEL_6:
    v13 = 0;
    v14 = &a2->i8[4 * v12 + 1 * v11];
    v15 = &a2->i8[4 * v12 + 4 * v9];
    v16 = v7 - v12;
    do
    {
      a3->i32[v12 + v13] = a2->i32[v12 + v8 + v13] + a2->i32[v12 + v13] + *&v15[4 * v13] + a2->i32[v12 + v10 + v13] + *&v14[4 * v13];
      ++v13;
    }

    while (v16 != v13);
    return result;
  }

  v12 = 0;
  v26 = a3 - a2;
  if ((a3 - a2 - 1 * v11) < 0x20)
  {
    goto LABEL_6;
  }

  if (v26 - 4 * v10 < 0x20)
  {
    goto LABEL_6;
  }

  if (v26 - 4 * v9 < 0x20)
  {
    goto LABEL_6;
  }

  v27 = 4 * a5;
  if (v26 - v27 < 0x20)
  {
    goto LABEL_6;
  }

  if (v26 < 0x20)
  {
    goto LABEL_6;
  }

  v12 = v7 & 0x7FFFFFF8;
  v28 = a2 + 1;
  v29 = a3 + 1;
  v30 = v12;
  do
  {
    result = vaddq_s32(vaddq_s32(vaddq_s32(*(&v28[-1] + v27), v28[-1]), vaddq_s32(*(v28 + 4 * v9 - 16), *(v28 + 4 * v10 - 16))), v28[v11 - 1]);
    v31 = vaddq_s32(vaddq_s32(vaddq_s32(*(v28 + 4 * v8), *v28), vaddq_s32(*(v28 + 4 * v9), *(v28 + 4 * v10))), v28[v11]);
    v29[-1] = result;
    *v29 = v31;
    v28 += 2;
    v29 += 2;
    v30 -= 8;
  }

  while (v30);
  if (v12 != v7)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100365D88(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

void sub_100365E10(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

float64_t sub_100365E48(uint64_t a1, int16x4_t *a2, uint64_t a3, int a4, int a5, float64x2_t a6, float64x2_t a7, float64x2_t a8, double a9, double a10, int16x4_t a11, int16x4_t a12, int16x4_t a13)
{
  v14 = *(a1 + 8);
  if (v14 == 3)
  {
    v21 = (a5 * a4);
    if (v21 < 1)
    {
      return a6.f64[0];
    }

    v22 = 2 * a5;
    if (v21 >= 8)
    {
      v23 = v21 & 0x7FFFFFF8;
      v92 = v23;
      v93 = a3;
      v94 = a2;
      do
      {
        v95 = vmovl_s16(*v94);
        v96.i64[0] = v95.i32[0];
        v96.i64[1] = v95.i32[1];
        v97 = vcvtq_f64_s64(v96);
        v96.i64[0] = v95.i32[2];
        v96.i64[1] = v95.i32[3];
        v98 = vcvtq_f64_s64(v96);
        v99 = vmovl_high_s16(*v94->i8);
        v96.i64[0] = v99.i32[0];
        v96.i64[1] = v99.i32[1];
        v100 = vcvtq_f64_s64(v96);
        v96.i64[0] = v99.i32[2];
        v96.i64[1] = v99.i32[3];
        v101 = vcvtq_f64_s64(v96);
        v102 = *&v94->i8[2 * a5];
        v103 = vmovl_s16(*v102.i8);
        v96.i64[0] = v103.i32[0];
        v96.i64[1] = v103.i32[1];
        v104 = vcvtq_f64_s64(v96);
        v96.i64[0] = v103.i32[2];
        v96.i64[1] = v103.i32[3];
        v105 = vcvtq_f64_s64(v96);
        v106 = vmovl_high_s16(v102);
        v96.i64[0] = v106.i32[0];
        v96.i64[1] = v106.i32[1];
        v107 = vcvtq_f64_s64(v96);
        v96.i64[0] = v106.i32[2];
        v96.i64[1] = v106.i32[3];
        v108 = vaddq_f64(v101, vcvtq_f64_s64(v96));
        v109 = vaddq_f64(v100, v107);
        a7 = vaddq_f64(v98, v105);
        v110 = vaddq_f64(v97, v104);
        v111 = *&v94->i8[2 * v22];
        v112 = vmovl_high_s16(v111);
        v96.i64[0] = v112.i32[2];
        v96.i64[1] = v112.i32[3];
        v113 = vcvtq_f64_s64(v96);
        v96.i64[0] = v112.i32[0];
        v96.i64[1] = v112.i32[1];
        v114 = vcvtq_f64_s64(v96);
        v115 = vmovl_s16(*v111.i8);
        v96.i64[0] = v115.i32[2];
        v96.i64[1] = v115.i32[3];
        v116 = vcvtq_f64_s64(v96);
        v96.i64[0] = v115.i32[0];
        v96.i64[1] = v115.i32[1];
        v93[2] = vaddq_f64(v109, v114);
        v93[3] = vaddq_f64(v108, v113);
        a6 = vaddq_f64(a7, v116);
        *v93 = vaddq_f64(v110, vcvtq_f64_s64(v96));
        v93[1] = a6;
        v93 += 4;
        v94 += 2;
        v92 -= 8;
      }

      while (v92);
      if (v23 == v21)
      {
        return a6.f64[0];
      }
    }

    else
    {
      v23 = 0;
    }

    v117 = a2 + v23;
    v118 = v21 - v23;
    v119 = (a3 + 8 * v23);
    do
    {
      LOWORD(a6.f64[0]) = *v117;
      LOWORD(a7.f64[0]) = v117[a5];
      *&v120 = vmovl_s16(*&a7.f64[0]).i32[0];
      v121 = vmovl_s16(*&a6.f64[0]).i32[0] + *&v120;
      v120.i16[0] = v117[v22];
      a7.f64[0] = vmovl_s16(v120).i32[0];
      a6.f64[0] = v121 + a7.f64[0];
      *v119++ = *&a6.f64[0];
      ++v117;
      --v118;
    }

    while (v118);
    return a6.f64[0];
  }

  if (v14 != 5)
  {
    v24 = (v14 * a5);
    v25 = ((a4 - 1) * a5);
    if (a5 != 1)
    {
      if (a5 != 3)
      {
        if (a5 == 4)
        {
          if (v24 < 1)
          {
            a6 = 0uLL;
            v28 = 0uLL;
            *a3 = 0u;
            *(a3 + 16) = 0u;
            if (v25 < 1)
            {
              return a6.f64[0];
            }
          }

          else
          {
            v26 = 0;
            a6 = 0uLL;
            v27 = a2;
            v28 = 0uLL;
            do
            {
              v29 = *v27++;
              v30 = vmovl_s16(v29);
              v31.i64[0] = v30.i32[0];
              v31.i64[1] = v30.i32[1];
              v32 = vcvtq_f64_s64(v31);
              v31.i64[0] = v30.i32[2];
              v31.i64[1] = v30.i32[3];
              v28 = vaddq_f64(v28, vcvtq_f64_s64(v31));
              a6 = vaddq_f64(a6, v32);
              v26 += 4;
            }

            while (v26 < v24);
            *a3 = a6;
            *(a3 + 16) = v28;
            if (v25 < 1)
            {
              return a6.f64[0];
            }
          }

          v131 = 0;
          v132 = 2 * v24;
          v133 = (a3 + 32);
          do
          {
            v131 += 4;
            v134 = vmovl_s16(*(a2 + v132));
            v135.i64[0] = v134.i32[0];
            v135.i64[1] = v134.i32[1];
            v136 = vcvtq_f64_s64(v135);
            v135.i64[0] = v134.i32[2];
            v135.i64[1] = v134.i32[3];
            v137 = vcvtq_f64_s64(v135);
            v138 = *a2++;
            v139 = vmovl_s16(v138);
            v135.i64[0] = v139.i32[0];
            v135.i64[1] = v139.i32[1];
            v140 = vcvtq_f64_s64(v135);
            v135.i64[0] = v139.i32[2];
            v135.i64[1] = v139.i32[3];
            a6 = vaddq_f64(a6, vsubq_f64(v136, v140));
            v28 = vaddq_f64(v28, vsubq_f64(v137, vcvtq_f64_s64(v135)));
            *v133 = a6;
            v133[1] = v28;
            v133 += 2;
          }

          while (v131 < v25);
          return a6.f64[0];
        }

        if (a5 < 1)
        {
          return a6.f64[0];
        }

        v126 = 0;
        v127 = a3 + 8 * a5;
        while (v24 < 1)
        {
          a6.f64[0] = 0.0;
          *a3 = 0;
          if (v25 >= 1)
          {
            goto LABEL_44;
          }

LABEL_37:
          ++v126;
          a2 = (a2 + 2);
          a3 += 8;
          v127 += 8;
          if (v126 == a5)
          {
            return a6.f64[0];
          }
        }

        v128 = 0;
        a6.f64[0] = 0.0;
        v129 = a2;
        do
        {
          LOWORD(a7.f64[0]) = *v129;
          a7.f64[0] = vmovl_s16(*&a7.f64[0]).i32[0];
          a6.f64[0] = a6.f64[0] + a7.f64[0];
          v129 += a5;
          v128 += a5;
        }

        while (v24 > v128);
        *a3 = a6.f64[0];
        if (v25 < 1)
        {
          goto LABEL_37;
        }

LABEL_44:
        v130 = 0;
        do
        {
          LOWORD(a7.f64[0]) = a2->i16[v24 + v130];
          LOWORD(a8.f64[0]) = a2->i16[v130];
          a8.f64[0] = vmovl_s16(*&a8.f64[0]).i32[0];
          a7.f64[0] = vmovl_s16(*&a7.f64[0]).i32[0] - a8.f64[0];
          a6.f64[0] = a6.f64[0] + a7.f64[0];
          *(v127 + 8 * v130) = a6.f64[0];
          v130 += a5;
        }

        while (v130 < v25);
        goto LABEL_37;
      }

      if (v24 < 1)
      {
        v124 = 0.0;
        v123 = 0.0;
        a6.f64[0] = 0.0;
        goto LABEL_58;
      }

      if (v24 > 3)
      {
        v141 = (v24 - 1) / 3u + 1;
        v122 = 3 * (v141 & 0x7FFFFFFE);
        v142 = a2 + 3;
        a6.f64[0] = 0.0;
        v143 = v141 & 0x7FFFFFFE;
        v123 = 0.0;
        v124 = 0.0;
        do
        {
          LOWORD(a9) = *(v142 - 3);
          a9 = vmovl_s16(*&a9).i32[0];
          LOWORD(a10) = *v142;
          a10 = vmovl_s16(*&a10).i32[0];
          a11.i16[0] = *(v142 - 2);
          *&a11 = vmovl_s16(a11).i32[0];
          a12.i16[0] = v142[1];
          *&a12 = vmovl_s16(a12).i32[0];
          a13.i16[0] = *(v142 - 1);
          *&a13 = vmovl_s16(a13).i32[0];
          LOWORD(v13) = v142[2];
          v13 = vmovl_s16(*&v13).i32[0];
          a6.f64[0] = a6.f64[0] + *&a13 + v13;
          v123 = v123 + *&a11 + *&a12;
          v124 = v124 + a9 + a10;
          v142 += 6;
          v143 -= 2;
        }

        while (v143);
        if ((v141 & 0x7FFFFFFE) == v141)
        {
LABEL_58:
          *a3 = v124;
          *(a3 + 8) = v123;
          *(a3 + 16) = a6.f64[0];
          if (v25 >= 1)
          {
            v147 = 0;
            v148 = (a3 + 40);
            v149 = a2 + 1;
            v150 = a2 + v24 + 1;
            do
            {
              LOWORD(a9) = *(v150 - 1);
              LOWORD(a10) = *(v149 - 1);
              *&v151 = vmovl_s16(*&a10).i32[0];
              *&v152 = vmovl_s16(*&a9).i32[0] - *&v151;
              v124 = v124 + *&v152;
              v152.i16[0] = *v150;
              v151.i16[0] = *v149;
              *&v153 = vmovl_s16(v151).i32[0];
              *&v154 = vmovl_s16(v152).i32[0] - *&v153;
              v123 = v123 + *&v154;
              v154.i16[0] = v150[1];
              v153.i16[0] = v149[1];
              a10 = vmovl_s16(v153).i32[0];
              a9 = vmovl_s16(v154).i32[0] - a10;
              a6.f64[0] = a6.f64[0] + a9;
              v147 += 3;
              *(v148 - 2) = v124;
              *(v148 - 1) = v123;
              *v148 = a6.f64[0];
              v148 += 3;
              v150 += 3;
              v149 += 3;
            }

            while (v147 < v25);
          }

          return a6.f64[0];
        }
      }

      else
      {
        v122 = 0;
        a6.f64[0] = 0.0;
        v123 = 0.0;
        v124 = 0.0;
      }

      v144 = a2 + v122 + 2;
      do
      {
        LOWORD(a9) = *(v144 - 2);
        *&v145 = vmovl_s16(*&a9).i32[0];
        v124 = v124 + *&v145;
        v145.i16[0] = *(v144 - 1);
        *&v146 = vmovl_s16(v145).i32[0];
        v123 = v123 + *&v146;
        v146.i16[0] = *v144;
        a9 = vmovl_s16(v146).i32[0];
        a6.f64[0] = a6.f64[0] + a9;
        v122 += 3;
        v144 += 3;
      }

      while (v122 < v24);
      goto LABEL_58;
    }

    if (v24 < 1)
    {
      a6.f64[0] = 0.0;
      goto LABEL_74;
    }

    if (v24 < 8)
    {
      v125 = 0;
      a6.f64[0] = 0.0;
      goto LABEL_72;
    }

    if (v24 >= 0x10)
    {
      v125 = v24 & 0x7FFFFFF0;
      v164 = &a2[2];
      a6.f64[0] = 0.0;
      v165 = v125;
      do
      {
        v166 = v164[-1];
        v167 = vmovl_high_s16(v166);
        v168.i64[0] = v167.i32[2];
        v168.i64[1] = v167.i32[3];
        v169 = vcvtq_f64_s64(v168);
        v168.i64[0] = v167.i32[0];
        v168.i64[1] = v167.i32[1];
        v170 = vcvtq_f64_s64(v168);
        v171 = vmovl_s16(*v166.i8);
        v168.i64[0] = v171.i32[2];
        v168.i64[1] = v171.i32[3];
        v172 = vcvtq_f64_s64(v168);
        v168.i64[0] = v171.i32[0];
        v168.i64[1] = v171.i32[1];
        a7 = vcvtq_f64_s64(v168);
        v173 = vmovl_high_s16(*v164);
        v168.i64[0] = v173.i32[2];
        v168.i64[1] = v173.i32[3];
        v174 = vcvtq_f64_s64(v168);
        v168.i64[0] = v173.i32[0];
        v168.i64[1] = v173.i32[1];
        v175 = vcvtq_f64_s64(v168);
        v176 = vmovl_s16(*v164->i8);
        v168.i64[0] = v176.i32[2];
        v168.i64[1] = v176.i32[3];
        v177 = vcvtq_f64_s64(v168);
        v168.i64[0] = v176.i32[0];
        v168.i64[1] = v176.i32[1];
        a8 = vcvtq_f64_s64(v168);
        a6.f64[0] = a6.f64[0] + a7.f64[0] + a7.f64[1] + v172.f64[0] + v172.f64[1] + v170.f64[0] + v170.f64[1] + v169.f64[0] + v169.f64[1] + a8.f64[0] + a8.f64[1] + v177.f64[0] + v177.f64[1] + v175.f64[0] + v175.f64[1] + v174.f64[0] + v174.f64[1];
        v164 += 2;
        v165 -= 16;
      }

      while (v165);
      if (v125 == v24)
      {
        goto LABEL_74;
      }

      if ((v24 & 8) == 0)
      {
LABEL_72:
        v178 = a2 + v125;
        v179 = v24 - v125;
        do
        {
          v180 = *v178++;
          a7.f64[0] = v180;
          a6.f64[0] = a6.f64[0] + v180;
          --v179;
        }

        while (v179);
        goto LABEL_74;
      }
    }

    else
    {
      v125 = 0;
      a6.f64[0] = 0.0;
    }

    v155 = v125;
    v125 = v24 & 0x7FFFFFF8;
    v156 = (a2 + 2 * v155);
    v157 = v155 - v125;
    do
    {
      v158 = *v156++;
      v159 = vmovl_high_s16(v158);
      v160.i64[0] = v159.i32[2];
      v160.i64[1] = v159.i32[3];
      v161 = vcvtq_f64_s64(v160);
      v160.i64[0] = v159.i32[0];
      v160.i64[1] = v159.i32[1];
      a8 = vcvtq_f64_s64(v160);
      v162 = vmovl_s16(*v158.i8);
      v160.i64[0] = v162.i32[2];
      v160.i64[1] = v162.i32[3];
      v163 = vcvtq_f64_s64(v160);
      v160.i64[0] = v162.i32[0];
      v160.i64[1] = v162.i32[1];
      a7 = vcvtq_f64_s64(v160);
      a6.f64[0] = a6.f64[0] + a7.f64[0] + a7.f64[1] + v163.f64[0] + v163.f64[1] + a8.f64[0] + a8.f64[1] + v161.f64[0] + v161.f64[1];
      v157 += 8;
    }

    while (v157);
    if (v125 != v24)
    {
      goto LABEL_72;
    }

LABEL_74:
    *a3 = a6.f64[0];
    if (v25 >= 1)
    {
      v181 = (a3 + 8);
      do
      {
        LOWORD(a7.f64[0]) = a2->i16[v24];
        LOWORD(a8.f64[0]) = a2->i16[0];
        a8.f64[0] = vmovl_s16(*&a8.f64[0]).i32[0];
        a7.f64[0] = vmovl_s16(*&a7.f64[0]).i32[0] - a8.f64[0];
        a6.f64[0] = a6.f64[0] + a7.f64[0];
        *v181++ = *&a6.f64[0];
        a2 = (a2 + 2);
        --v25;
      }

      while (v25);
    }

    return a6.f64[0];
  }

  v15 = (a5 * a4);
  if (v15 < 1)
  {
    return a6.f64[0];
  }

  v16 = a5;
  v17 = 2 * a5;
  v18 = 3 * a5;
  v19 = 4 * a5;
  if (v15 <= 7)
  {
    v20 = 0;
LABEL_20:
    v78 = 0;
    v79 = a2 + 2 * v20 + 2 * v19;
    v80 = a2 + 2 * v20 + 2 * v18;
    v81 = a2 + 2 * v20 + 2 * v17;
    v82 = a2 + 2 * v20 + 2 * v16;
    v83 = a2 + 2 * v20;
    v84 = v15 - v20;
    v85 = a3 + 8 * v20;
    do
    {
      LOWORD(a6.f64[0]) = *&v83[2 * v78];
      LOWORD(a7.f64[0]) = *&v82[2 * v78];
      *&v86 = vmovl_s16(*&a7.f64[0]).i32[0];
      v87 = vmovl_s16(*&a6.f64[0]).i32[0] + *&v86;
      v86.i16[0] = *&v81[2 * v78];
      *&v88 = vmovl_s16(v86).i32[0];
      v89 = v87 + *&v88;
      v88.i16[0] = *&v80[2 * v78];
      *&v90 = vmovl_s16(v88).i32[0];
      v91 = v89 + *&v90;
      v90.i16[0] = *&v79[2 * v78];
      a7.f64[0] = vmovl_s16(v90).i32[0];
      a6.f64[0] = v91 + a7.f64[0];
      *(v85 + 8 * v78++) = a6.f64[0];
    }

    while (v84 != v78);
    return a6.f64[0];
  }

  v20 = v15 & 0x7FFFFFF8;
  v33 = v20;
  v34 = a3;
  v35 = a2;
  do
  {
    v36 = vmovl_s16(*v35);
    v37.i64[0] = v36.i32[0];
    v37.i64[1] = v36.i32[1];
    v38 = vcvtq_f64_s64(v37);
    v37.i64[0] = v36.i32[2];
    v37.i64[1] = v36.i32[3];
    v39 = vcvtq_f64_s64(v37);
    v40 = vmovl_high_s16(*v35->i8);
    v37.i64[0] = v40.i32[0];
    v37.i64[1] = v40.i32[1];
    v41 = vcvtq_f64_s64(v37);
    v37.i64[0] = v40.i32[2];
    v37.i64[1] = v40.i32[3];
    v42 = vcvtq_f64_s64(v37);
    v43 = *&v35->i8[2 * v16];
    v44 = vmovl_s16(*v43.i8);
    v37.i64[0] = v44.i32[0];
    v37.i64[1] = v44.i32[1];
    v45 = vcvtq_f64_s64(v37);
    v37.i64[0] = v44.i32[2];
    v37.i64[1] = v44.i32[3];
    v46 = vcvtq_f64_s64(v37);
    v47 = vmovl_high_s16(v43);
    v37.i64[0] = v47.i32[0];
    v37.i64[1] = v47.i32[1];
    v48 = vcvtq_f64_s64(v37);
    v37.i64[0] = v47.i32[2];
    v37.i64[1] = v47.i32[3];
    v49 = vaddq_f64(v42, vcvtq_f64_s64(v37));
    v50 = vaddq_f64(v41, v48);
    v51 = vaddq_f64(v39, v46);
    v52 = *&v35->i8[2 * v17];
    v53 = vaddq_f64(v38, v45);
    v54 = vmovl_high_s16(v52);
    v37.i64[0] = v54.i32[2];
    v37.i64[1] = v54.i32[3];
    v55 = vcvtq_f64_s64(v37);
    v37.i64[0] = v54.i32[0];
    v37.i64[1] = v54.i32[1];
    v56 = vcvtq_f64_s64(v37);
    v57 = vmovl_s16(*v52.i8);
    v37.i64[0] = v57.i32[2];
    v37.i64[1] = v57.i32[3];
    v58 = vcvtq_f64_s64(v37);
    v37.i64[0] = v57.i32[0];
    v37.i64[1] = v57.i32[1];
    v59 = vaddq_f64(v53, vcvtq_f64_s64(v37));
    v60 = vaddq_f64(v51, v58);
    v61 = vaddq_f64(v50, v56);
    v62 = vaddq_f64(v49, v55);
    v63 = *&v35->i8[2 * v18];
    v64 = vmovl_s16(*v63.i8);
    v37.i64[0] = v64.i32[0];
    v37.i64[1] = v64.i32[1];
    v65 = vcvtq_f64_s64(v37);
    v37.i64[0] = v64.i32[2];
    v37.i64[1] = v64.i32[3];
    v66 = vcvtq_f64_s64(v37);
    v67 = vmovl_high_s16(v63);
    v37.i64[0] = v67.i32[0];
    v37.i64[1] = v67.i32[1];
    v68 = vcvtq_f64_s64(v37);
    v37.i64[0] = v67.i32[2];
    v37.i64[1] = v67.i32[3];
    v69 = vaddq_f64(v62, vcvtq_f64_s64(v37));
    v70 = vaddq_f64(v61, v68);
    a7 = vaddq_f64(v60, v66);
    v71 = vaddq_f64(v59, v65);
    v72 = *v35[v19 / 4].i8;
    v73 = vmovl_high_s16(v72);
    v37.i64[0] = v73.i32[2];
    v37.i64[1] = v73.i32[3];
    v74 = vcvtq_f64_s64(v37);
    v37.i64[0] = v73.i32[0];
    v37.i64[1] = v73.i32[1];
    v75 = vcvtq_f64_s64(v37);
    v76 = vmovl_s16(*v72.i8);
    v37.i64[0] = v76.i32[2];
    v37.i64[1] = v76.i32[3];
    v77 = vcvtq_f64_s64(v37);
    v37.i64[0] = v76.i32[0];
    v37.i64[1] = v76.i32[1];
    v34[2] = vaddq_f64(v70, v75);
    v34[3] = vaddq_f64(v69, v74);
    a6 = vaddq_f64(a7, v77);
    *v34 = vaddq_f64(v71, vcvtq_f64_s64(v37));
    v34[1] = a6;
    v34 += 4;
    v35 += 2;
    v33 -= 8;
  }

  while (v33);
  if (v20 != v15)
  {
    goto LABEL_20;
  }

  return a6.f64[0];
}

uint64_t sub_1003667C0(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

void sub_100366848(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

uint64_t sub_100366880(uint64_t result, uint64_t a2, float64x2_t *a3, int a4, int a5)
{
  v5 = *(result + 8);
  if (v5 == 3)
  {
    v12 = (a5 * a4);
    if (v12 < 1)
    {
      return result;
    }

    v13 = 2 * a5;
    if (v12 >= 4)
    {
      v14 = v12 & 0x7FFFFFFC;
      v40 = v14;
      v41 = a3;
      v42 = a2;
      do
      {
        v43 = *(v42 + 4 * a5);
        v44 = vaddq_f64(vcvt_hight_f64_f32(*v42), vcvt_hight_f64_f32(v43));
        v45 = vaddq_f64(vcvtq_f64_f32(*v42->f32), vcvtq_f64_f32(*v43.f32));
        v46 = *(v42 + 4 * v13);
        *v41 = vaddq_f64(v45, vcvtq_f64_f32(*v46.f32));
        v41[1] = vaddq_f64(v44, vcvt_hight_f64_f32(v46));
        v41 += 2;
        ++v42;
        v40 -= 4;
      }

      while (v40);
      if (v14 == v12)
      {
        return result;
      }
    }

    else
    {
      v14 = 0;
    }

    v47 = (a2 + 4 * v14);
    v48 = v12 - v14;
    v49 = &a3->f64[v14];
    do
    {
      *v49++ = *v47 + v47[a5] + v47[v13];
      ++v47;
      --v48;
    }

    while (v48);
    return result;
  }

  if (v5 != 5)
  {
    v15 = (v5 * a5);
    v16 = ((a4 - 1) * a5);
    if (a5 != 1)
    {
      if (a5 != 3)
      {
        if (a5 == 4)
        {
          if (v15 < 1)
          {
            v18 = 0uLL;
            v19 = 0uLL;
            goto LABEL_71;
          }

          if (v15 > 0x1C)
          {
            v95 = ((v15 - 1) >> 2) + 1;
            v17 = 4 * (v95 & 0x7FFFFFFFFFFFFFF8);
            v96 = (a2 + 64);
            v97 = 0.0;
            v98 = v95 & 0x7FFFFFFFFFFFFFF8;
            v19.f64[0] = 0.0;
            v99 = 0.0;
            v18.f64[0] = 0.0;
            do
            {
              v100 = v96 - 16;
              v119 = vld4q_f32(v100);
              v120 = vld4q_f32(v96);
              v101 = vcvt_hight_f64_f32(v119.val[0]);
              v102 = vcvtq_f64_f32(*v119.val[0].f32);
              v103 = vcvt_hight_f64_f32(v120.val[0]);
              v104 = vcvtq_f64_f32(*v120.val[0].f32);
              v105 = vcvt_hight_f64_f32(v119.val[1]);
              v106 = vcvtq_f64_f32(*v119.val[1].f32);
              v107 = vcvt_hight_f64_f32(v120.val[1]);
              v108 = vcvtq_f64_f32(*v120.val[1].f32);
              v109 = vcvt_hight_f64_f32(v119.val[2]);
              v110 = vcvtq_f64_f32(*v119.val[2].f32);
              v111 = vcvt_hight_f64_f32(v119.val[3]);
              v119.val[0] = vcvtq_f64_f32(*v119.val[3].f32);
              v119.val[1] = vcvt_hight_f64_f32(v120.val[2]);
              v119.val[2] = vcvtq_f64_f32(*v120.val[2].f32);
              v119.val[3] = vcvt_hight_f64_f32(v120.val[3]);
              v120.val[0] = vcvtq_f64_f32(*v120.val[3].f32);
              v97 = v97 + *v119.val[0].i64 + *&v119.val[0].i64[1] + v111.f64[0] + v111.f64[1] + *v120.val[0].i64 + *&v120.val[0].i64[1] + *v119.val[3].i64 + *&v119.val[3].i64[1];
              v19.f64[0] = v19.f64[0] + v110.f64[0] + v110.f64[1] + v109.f64[0] + v109.f64[1] + *v119.val[2].i64 + *&v119.val[2].i64[1] + *v119.val[1].i64 + *&v119.val[1].i64[1];
              v99 = v99 + v106.f64[0] + v106.f64[1] + v105.f64[0] + v105.f64[1] + v108.f64[0] + v108.f64[1] + v107.f64[0] + v107.f64[1];
              v18.f64[0] = v18.f64[0] + v102.f64[0] + v102.f64[1] + v101.f64[0] + v101.f64[1] + v104.f64[0] + v104.f64[1] + v103.f64[0] + v103.f64[1];
              v96 += 32;
              v98 -= 8;
            }

            while (v98);
            v18.f64[1] = v99;
            v19.f64[1] = v97;
            if (v95 == (v95 & 0x7FFFFFFFFFFFFFF8))
            {
LABEL_71:
              *a3 = v18;
              a3[1] = v19;
              if (v16 >= 1)
              {
                v113 = 0;
                v114 = a3 + 3;
                v115 = (a2 + 8);
                v116 = (a2 + 8 + 4 * v15);
                do
                {
                  v18 = vaddq_f64(v18, vsubq_f64(vcvtq_f64_f32(v116[-1]), vcvtq_f64_f32(v115[-1])));
                  v113 += 4;
                  v19 = vaddq_f64(v19, vsubq_f64(vcvtq_f64_f32(*v116), vcvtq_f64_f32(*v115)));
                  v114[-1] = v18;
                  *v114 = v19;
                  v114 += 2;
                  v116 += 2;
                  v115 += 2;
                }

                while (v113 < v16);
              }

              return result;
            }
          }

          else
          {
            v17 = 0;
            v18 = 0uLL;
            v19 = 0uLL;
          }

          v112 = (a2 + 4 * v17 + 8);
          do
          {
            v18 = vaddq_f64(v18, vcvtq_f64_f32(v112[-1]));
            v19 = vaddq_f64(v19, vcvtq_f64_f32(*v112));
            v17 += 4;
            v112 += 2;
          }

          while (v17 < v15);
          goto LABEL_71;
        }

        if (a5 < 1)
        {
          return result;
        }

        v55 = 0;
        v56 = &a3->f64[a5];
        while (v15 < 1)
        {
          v58 = 0.0;
          a3->f64[0] = 0.0;
          if (v16 >= 1)
          {
            goto LABEL_42;
          }

LABEL_35:
          ++v55;
          a2 += 4;
          a3 = (a3 + 8);
          v56 += 8;
          if (v55 == a5)
          {
            return result;
          }
        }

        v57 = 0;
        v58 = 0.0;
        v59 = a2;
        do
        {
          v58 = v58 + *v59;
          v59 += a5;
          v57 += a5;
        }

        while (v15 > v57);
        a3->f64[0] = v58;
        if (v16 < 1)
        {
          goto LABEL_35;
        }

LABEL_42:
        v60 = 0;
        do
        {
          v58 = v58 + *(a2 + 4 * v15 + 4 * v60) - *(a2 + 4 * v60);
          *&v56[8 * v60] = v58;
          result = v60 + a5;
          v60 = result;
        }

        while (result < v16);
        goto LABEL_35;
      }

      if (v15 < 1)
      {
        v51 = 0uLL;
        v52 = 0.0;
        goto LABEL_53;
      }

      if (v15 > 0x15)
      {
        v61 = (v15 - 1) / 3u + 1;
        v50 = 3 * (v61 & 0x7FFFFFF8);
        v52 = 0.0;
        v62 = v61 & 0x7FFFFFF8;
        v63 = a2;
        v64 = 0.0;
        v51.f64[0] = 0.0;
        do
        {
          v65 = v63;
          v63 += 24;
          v117 = vld3q_f32(v65);
          v65 += 12;
          v66 = vcvt_hight_f64_f32(v117.val[0]);
          v118 = vld3q_f32(v65);
          v67 = vcvtq_f64_f32(*v117.val[0].f32);
          v68 = vcvt_hight_f64_f32(v118.val[0]);
          v69 = vcvtq_f64_f32(*v118.val[0].f32);
          v70 = vcvt_hight_f64_f32(v117.val[1]);
          v71 = vcvtq_f64_f32(*v117.val[1].f32);
          v72 = vcvt_hight_f64_f32(v118.val[1]);
          v73 = vcvtq_f64_f32(*v118.val[1].f32);
          v74 = vcvt_hight_f64_f32(v117.val[2]);
          v117.val[0] = vcvtq_f64_f32(*v117.val[2].f32);
          v117.val[2] = vcvt_hight_f64_f32(v118.val[2]);
          v118.val[0] = vcvtq_f64_f32(*v118.val[2].f32);
          v52 = v52 + *v117.val[0].i64 + *&v117.val[0].i64[1] + v74.f64[0] + v74.f64[1] + *v118.val[0].i64 + *&v118.val[0].i64[1] + *v117.val[2].i64 + *&v117.val[2].i64[1];
          v64 = v64 + v71.f64[0] + v71.f64[1] + v70.f64[0] + v70.f64[1] + v73.f64[0] + v73.f64[1] + v72.f64[0] + v72.f64[1];
          v51.f64[0] = v51.f64[0] + v67.f64[0] + v67.f64[1] + v66.f64[0] + v66.f64[1] + v69.f64[0] + v69.f64[1] + v68.f64[0] + v68.f64[1];
          v62 -= 8;
        }

        while (v62);
        v51.f64[1] = v64;
        if ((v61 & 0x7FFFFFF8) == v61)
        {
LABEL_53:
          *a3 = v51;
          a3[1].f64[0] = v52;
          if (v16 >= 1)
          {
            v77 = 0;
            v78 = &a3[2].f64[1];
            v79 = 4 * v15;
            do
            {
              v52 = v52 + *(a2 + v79 + 8) - *(a2 + 8);
              v77 += 3;
              v80 = vcvtq_f64_f32(*(a2 + v79));
              v81 = *a2;
              a2 += 12;
              v51 = vaddq_f64(v51, vsubq_f64(v80, vcvtq_f64_f32(v81)));
              *(v78 - 1) = v51;
              *v78 = v52;
              v78 += 3;
            }

            while (v77 < v16);
          }

          return result;
        }
      }

      else
      {
        v50 = 0;
        v51 = 0uLL;
        v52 = 0.0;
      }

      v75 = (a2 + 4 * v50 + 8);
      do
      {
        v51 = vaddq_f64(v51, vcvtq_f64_f32(*(v75 - 2)));
        v76 = *v75;
        v75 += 3;
        v52 = v52 + v76;
        v50 += 3;
      }

      while (v50 < v15);
      goto LABEL_53;
    }

    if (v15 < 1)
    {
      v54 = 0.0;
      goto LABEL_62;
    }

    if (v15 > 7)
    {
      v53 = v15 & 0x7FFFFFF8;
      v82 = (a2 + 16);
      v54 = 0.0;
      v83 = v53;
      do
      {
        v84 = v82[-1];
        v85 = vcvt_hight_f64_f32(v84);
        v86 = vcvtq_f64_f32(*v84.f32);
        v87 = vcvt_hight_f64_f32(*v82);
        v88 = vcvtq_f64_f32(*v82->f32);
        v54 = v54 + v86.f64[0] + v86.f64[1] + v85.f64[0] + v85.f64[1] + v88.f64[0] + v88.f64[1] + v87.f64[0] + v87.f64[1];
        v82 += 2;
        v83 -= 8;
      }

      while (v83);
      if (v53 == v15)
      {
LABEL_62:
        a3->f64[0] = v54;
        if (v16 >= 1)
        {
          v92 = &a3->f64[1];
          do
          {
            v93 = *(a2 + 4 * v15);
            v94 = *a2;
            a2 += 4;
            v54 = v54 + v93 - v94;
            *v92++ = v54;
            --v16;
          }

          while (v16);
        }

        return result;
      }
    }

    else
    {
      v53 = 0;
      v54 = 0.0;
    }

    v89 = (a2 + 4 * v53);
    v90 = v15 - v53;
    do
    {
      v91 = *v89++;
      v54 = v54 + v91;
      --v90;
    }

    while (v90);
    goto LABEL_62;
  }

  v6 = (a5 * a4);
  if (v6 < 1)
  {
    return result;
  }

  v7 = a5;
  v8 = 2 * a5;
  v9 = 3 * a5;
  v10 = a5;
  if (v6 <= 3)
  {
    v11 = 0;
LABEL_18:
    v32 = 0;
    v33 = a2 + 4 * v11 + 1 * v10;
    v34 = a2 + 4 * v11 + 4 * v9;
    v35 = a2 + 4 * v11 + 4 * v8;
    v36 = a2 + 4 * v11 + 4 * v7;
    v37 = a2 + 4 * v11;
    v38 = v6 - v11;
    v39 = &a3->f64[v11];
    do
    {
      *&v39[8 * v32] = *(v37 + 4 * v32) + *(v36 + 4 * v32) + *(v35 + 4 * v32) + *(v34 + 4 * v32) + *(v33 + 4 * v32);
      ++v32;
    }

    while (v38 != v32);
    return result;
  }

  v11 = v6 & 0x7FFFFFFC;
  result = v11;
  v20 = a3;
  v21 = a2;
  do
  {
    v22 = *(v21 + 4 * v7);
    v23 = vaddq_f64(vcvt_hight_f64_f32(*v21), vcvt_hight_f64_f32(v22));
    v24 = vaddq_f64(vcvtq_f64_f32(*v21->f32), vcvtq_f64_f32(*v22.f32));
    v25 = *(v21 + 4 * v8);
    v26 = vaddq_f64(v24, vcvtq_f64_f32(*v25.f32));
    v27 = vaddq_f64(v23, vcvt_hight_f64_f32(v25));
    v28 = *(v21 + 4 * v9);
    v29 = vaddq_f64(v27, vcvt_hight_f64_f32(v28));
    v30 = vaddq_f64(v26, vcvtq_f64_f32(*v28.f32));
    v31 = v21[v10];
    *v20 = vaddq_f64(v30, vcvtq_f64_f32(*v31.f32));
    v20[1] = vaddq_f64(v29, vcvt_hight_f64_f32(v31));
    v20 += 2;
    ++v21;
    result -= 4;
  }

  while (result);
  if (v11 != v6)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_100367084(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

void sub_10036710C(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

float64x2_t sub_100367144(uint64_t a1, double *a2, float64x2_t *a3, int a4, int a5, float64x2_t result)
{
  v6 = *(a1 + 8);
  if (v6 == 3)
  {
    v17 = (a5 * a4);
    if (v17 < 1)
    {
      return result;
    }

    v18 = a5;
    if (v17 >= 0xA)
    {
      v19 = 0;
      v33 = a3 - a2;
      if ((a3 - a2 - 4 * v18) >= 0x20 && v33 - 8 * a5 >= 0x20 && v33 >= 0x20)
      {
        v19 = v17 & 0x7FFFFFFC;
        v34 = (a2 + 2);
        v35 = a3 + 1;
        v36 = v19;
        do
        {
          result = vaddq_f64(vaddq_f64(v34[-1], *(v34 + 8 * a5 - 16)), v34[v18 - 1]);
          v37 = vaddq_f64(vaddq_f64(*v34, *(v34 + 8 * a5)), v34[v18]);
          v35[-1] = result;
          *v35 = v37;
          v34 += 2;
          v35 += 2;
          v36 -= 4;
        }

        while (v36);
        if (v19 == v17)
        {
          return result;
        }
      }
    }

    else
    {
      v19 = 0;
    }

    v20 = &a2[v19];
    v21 = &a3->f64[v19];
    v22 = v17 - v19;
    do
    {
      result.f64[0] = *v20 + v20[a5] + v20[v18 * 2];
      *v21++ = result.f64[0];
      ++v20;
      --v22;
    }

    while (v22);
    return result;
  }

  if (v6 != 5)
  {
    v23 = (v6 * a5);
    v24 = ((a4 - 1) * a5);
    if (a5 != 1)
    {
      if (a5 != 3)
      {
        if (a5 == 4)
        {
          if (v23 < 1)
          {
            result = 0uLL;
            v26 = 0uLL;
            goto LABEL_81;
          }

          if (v23 > 0xC)
          {
            v66 = ((v23 - 1) >> 2) + 1;
            v25 = 4 * (v66 & 0x7FFFFFFFFFFFFFFCLL);
            v67 = a2 + 8;
            v68 = 0.0;
            v69 = v66 & 0x7FFFFFFFFFFFFFFCLL;
            v26.f64[0] = 0.0;
            v70 = 0.0;
            result.f64[0] = 0.0;
            do
            {
              v71 = v67 - 8;
              v77 = vld4q_f64(v71);
              v78 = vld4q_f64(v67);
              v68 = v68 + v77.val[3].f64[0] + v77.val[3].f64[1] + v78.val[3].f64[0] + v78.val[3].f64[1];
              v26.f64[0] = v26.f64[0] + v77.val[2].f64[0] + v77.val[2].f64[1] + v78.val[2].f64[0] + v78.val[2].f64[1];
              v70 = v70 + v77.val[1].f64[0] + v77.val[1].f64[1] + v78.val[1].f64[0] + v78.val[1].f64[1];
              result.f64[0] = result.f64[0] + v77.val[0].f64[0] + v77.val[0].f64[1] + v78.val[0].f64[0] + v78.val[0].f64[1];
              v67 += 16;
              v69 -= 4;
            }

            while (v69);
            result.f64[1] = v70;
            v26.f64[1] = v68;
            if (v66 == (v66 & 0x7FFFFFFFFFFFFFFCLL))
            {
LABEL_81:
              *a3 = result;
              a3[1] = v26;
              if (v24 >= 1)
              {
                v73 = 0;
                v74 = a3 + 3;
                v75 = (a2 + 2);
                v76 = &a2[v23 + 2];
                do
                {
                  result = vaddq_f64(result, vsubq_f64(v76[-1], v75[-1]));
                  v73 += 4;
                  v26 = vaddq_f64(v26, vsubq_f64(*v76, *v75));
                  v74[-1] = result;
                  *v74 = v26;
                  v74 += 2;
                  v76 += 2;
                  v75 += 2;
                }

                while (v73 < v24);
              }

              return result;
            }
          }

          else
          {
            v25 = 0;
            result = 0uLL;
            v26 = 0uLL;
          }

          v72 = &a2[v25 + 2];
          do
          {
            result = vaddq_f64(result, v72[-1]);
            v26 = vaddq_f64(v26, *v72);
            v25 += 4;
            v72 += 2;
          }

          while (v25 < v23);
          goto LABEL_81;
        }

        if (a5 < 1)
        {
          return result;
        }

        v41 = 0;
        v42 = 8 * a5;
        v43 = a3 + v42;
        while (v23 < 1)
        {
          result.f64[0] = 0.0;
          a3->f64[0] = 0.0;
          if (v24 >= 1)
          {
            goto LABEL_52;
          }

LABEL_45:
          ++v41;
          ++a2;
          a3 = (a3 + 8);
          v43 += 8;
          if (v41 == a5)
          {
            return result;
          }
        }

        v44 = 0;
        result.f64[0] = 0.0;
        v45 = a2;
        do
        {
          result.f64[0] = result.f64[0] + *v45;
          v45 = (v45 + v42);
          v44 += a5;
        }

        while (v23 > v44);
        a3->f64[0] = result.f64[0];
        if (v24 < 1)
        {
          goto LABEL_45;
        }

LABEL_52:
        v46 = 0;
        do
        {
          result.f64[0] = result.f64[0] + a2[v23 + v46] - a2[v46];
          *(v43 + 8 * v46) = result.f64[0];
          v46 += a5;
        }

        while (v46 < v24);
        goto LABEL_45;
      }

      if (v23 < 1)
      {
        result = 0uLL;
        v39 = 0.0;
        goto LABEL_63;
      }

      if (v23 > 3)
      {
        v47 = (v23 - 1) / 3u + 1;
        v38 = 3 * (v47 & 0x7FFFFFFE);
        v48 = (a2 + 3);
        result = 0uLL;
        v39 = 0.0;
        v49 = v47 & 0x7FFFFFFE;
        do
        {
          v39 = v39 + v48[-1].f64[1] + v48[1].f64[0];
          v50 = *(v48 - 24);
          v51 = *v48;
          v48 += 3;
          result = vaddq_f64(vaddq_f64(result, v50), v51);
          v49 -= 2;
        }

        while (v49);
        if ((v47 & 0x7FFFFFFE) == v47)
        {
LABEL_63:
          *a3 = result;
          a3[1].f64[0] = v39;
          if (v24 >= 1)
          {
            v54 = 0;
            v55 = 0;
            v56 = &a2[v23];
            do
            {
              v39 = v39 + v56[v54 + 2] - a2[v54 + 2];
              v55 += 3;
              v57 = a3 + v54 * 8;
              result = vaddq_f64(result, vsubq_f64(*&v56[v54], *&a2[v54]));
              *(v57 + 24) = result;
              *(v57 + 40) = v39;
              v54 += 3;
            }

            while (v55 < v24);
          }

          return result;
        }
      }

      else
      {
        v38 = 0;
        result = 0uLL;
        v39 = 0.0;
      }

      v52 = &a2[v38 + 2];
      do
      {
        result = vaddq_f64(result, *(v52 - 2));
        v53 = *v52;
        v52 += 3;
        v39 = v39 + v53;
        v38 += 3;
      }

      while (v38 < v23);
      goto LABEL_63;
    }

    if (v23 < 1)
    {
      result.f64[0] = 0.0;
      goto LABEL_72;
    }

    if (v23 > 3)
    {
      v40 = v23 & 0x7FFFFFFC;
      v58 = a2 + 2;
      result.f64[0] = 0.0;
      v59 = v40;
      do
      {
        result.f64[0] = result.f64[0] + *(v58 - 2) + *(v58 - 1) + *v58 + v58[1];
        v58 += 4;
        v59 -= 4;
      }

      while (v59);
      if (v40 == v23)
      {
LABEL_72:
        a3->f64[0] = result.f64[0];
        if (v24 >= 1)
        {
          v63 = &a3->f64[1];
          do
          {
            v64 = a2[v23];
            v65 = *a2++;
            result.f64[0] = result.f64[0] + v64 - v65;
            *v63++ = result.f64[0];
            --v24;
          }

          while (v24);
        }

        return result;
      }
    }

    else
    {
      v40 = 0;
      result.f64[0] = 0.0;
    }

    v60 = &a2[v40];
    v61 = v23 - v40;
    do
    {
      v62 = *v60++;
      result.f64[0] = result.f64[0] + v62;
      --v61;
    }

    while (v61);
    goto LABEL_72;
  }

  v7 = (a5 * a4);
  if (v7 < 1)
  {
    return result;
  }

  v8 = a5;
  v9 = a5;
  v10 = 3 * a5;
  v11 = 2 * a5;
  if (v7 <= 0xB)
  {
    v12 = 0;
LABEL_6:
    v13 = 0;
    v14 = &a2[v12 + v11 * 2];
    v15 = &a2[v12 + v9 * 2];
    v16 = v7 - v12;
    do
    {
      result.f64[0] = a2[v12 + v13] + a2[v12 + v8 + v13] + v15[v13] + a2[v12 + v10 + v13] + v14[v13];
      a3->f64[v12 + v13++] = result.f64[0];
    }

    while (v16 != v13);
    return result;
  }

  v12 = 0;
  v27 = a3 - a2;
  if ((a3 - a2 - 4 * v11) < 0x20)
  {
    goto LABEL_6;
  }

  if (v27 - 8 * v10 < 0x20)
  {
    goto LABEL_6;
  }

  if (v27 - 4 * v9 < 0x20)
  {
    goto LABEL_6;
  }

  v28 = 8 * a5;
  if (v27 - v28 < 0x20)
  {
    goto LABEL_6;
  }

  if (v27 < 0x20)
  {
    goto LABEL_6;
  }

  v12 = v7 & 0x7FFFFFFC;
  v29 = (a2 + 2);
  v30 = a3 + 1;
  v31 = v12;
  do
  {
    result = vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(v29[-1], *(v29 + v28 - 16)), v29[v9 - 1]), *(v29 + 8 * v10 - 16)), v29[v11 - 1]);
    v32 = vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(*v29, *(v29 + 8 * v8)), v29[v9]), *(v29 + 8 * v10)), v29[v11]);
    v30[-1] = result;
    *v30 = v32;
    v29 += 2;
    v30 += 2;
    v31 -= 4;
  }

  while (v31);
  if (v12 != v7)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1003677A4(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_100367828(void *a1)
{
  *a1 = off_10047B118;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  return nullsub_1(a1);
}

void sub_10036788C(void *a1)
{
  *a1 = off_10047B118;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  nullsub_1(a1);

  operator delete();
}

void sub_100367900(uint64_t a1, int32x4_t **a2, uint64_t a3, int a4, int a5, int a6)
{
  v7 = a6;
  v11 = a2;
  v12 = a1;
  v14 = (a1 + 32);
  v13 = *(a1 + 32);
  v246 = *(a1 + 16);
  v15 = (*(a1 + 40) - v13) >> 2;
  if (v15 == a6)
  {
    v16 = *(a1 + 24);
    if (v16)
    {
      v17 = *(a1 + 8);
      if (v16 != v17 - 1)
      {
        v249[0] = 0;
        v249[1] = 0;
        v18 = sub_1002A80E0(v249, 19);
        *(v18 + 15) = 825058682;
        *v18 = *"sumCount == ksize-1";
        sub_1002A8980(-215, v249, "operator()", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/smooth.cpp", 337);
      }

      v11 = &a2[v17 - 1];
      goto LABEL_15;
    }
  }

  else
  {
    if (a6 <= v15)
    {
      if (a6 < v15)
      {
        *(a1 + 40) = v13 + 4 * a6;
      }
    }

    else
    {
      sub_1002374D8(a1 + 32, a6 - v15);
      v13 = *v14;
    }

    *(v12 + 24) = 0;
  }

  bzero(v13, 4 * v7);
  v19 = *(v12 + 24);
  v20 = *(v12 + 8);
  if (v19 < v20 - 1)
  {
    v21 = (v7 - 4);
    if (v7 >= 4)
    {
      if (((v21 & 0x7FFFFFFC) + 5) <= v7)
      {
        v172 = v7;
      }

      else
      {
        v172 = (v21 & 0x7FFFFFFC) + 5;
      }

      v173 = 4 * v172 - ((4 * (v7 - 4)) & 0x1FFFFFFF0);
      v174 = v172 - (v21 & 0x7FFFFFFC) - 4;
      v175 = v174 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v177 = 0;
        v178 = 0;
        v179 = *v11;
        i64 = (*v11)[2].i64;
        v181 = v13 + 2;
        v182 = 4;
        do
        {
          v183 = v182;
          v184 = v177;
          v185 = i64;
          v186 = v181;
          v13[v178 / 4] = vaddq_s32(v179[v178 / 4], v13[v178 / 4]);
          v178 += 4;
          v182 += 4;
          ++v177;
          i64 += 16;
          ++v181;
        }

        while (v178 <= v21);
        if (v178 < v7)
        {
          if (v174 <= 7)
          {
            goto LABEL_168;
          }

          v187 = 16 * v184;
          v188 = v187 + 16;
          v189 = &v13[v187 / 0x10 + 1];
          v190 = v173 + v187;
          if (v189 < &v179->i8[v190] && &v179->i8[v188] < &v13->i8[v190])
          {
            goto LABEL_168;
          }

          v183 += v175;
          v191 = v174 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v192 = vaddq_s32(*v186, *v185);
            v186[-1] = vaddq_s32(v186[-1], v185[-1]);
            *v186 = v192;
            v185 += 2;
            v186 += 2;
            v191 -= 8;
          }

          while (v191);
          if (v174 != v175)
          {
LABEL_168:
            do
            {
              v13->i32[v183] += v179->i32[v183];
              ++v183;
            }

            while (v183 < v7);
          }
        }

        v176 = *(v12 + 24) + 1;
        *(v12 + 24) = v176;
        ++v11;
      }

      while (v176 < *(v12 + 8) - 1);
    }

    else if (v7 >= 1)
    {
      do
      {
        v112 = *v11;
        v13->i32[0] += (*v11)->i32[0];
        if (v7 != 1)
        {
          v13->i32[1] += v112->i32[1];
          if (v7 != 2)
          {
            v13->i32[2] += v112->i32[2];
          }
        }

        v111 = *(v12 + 24) + 1;
        *(v12 + 24) = v111;
        ++v11;
      }

      while (v111 < *(v12 + 8) - 1);
    }

    else
    {
      v11 += (v20 - v19 - 2) + 1;
      *(v12 + 24) = v20 - 1;
    }
  }

LABEL_15:
  if (a5)
  {
    v22 = a5 - 1;
    v23 = (v7 - 8);
    *&v6 = v246;
    v24 = a4;
    v247 = v12;
    if (v246 != 1.0)
    {
      v25 = 0;
      v26 = &v13->i32[1];
      v27 = a3 + 1;
      v28 = v13 + 1;
      v29 = 0uLL;
      v30.i64[0] = 0xFF000000FFLL;
      v30.i64[1] = 0xFF000000FFLL;
      v31 = xmmword_1003E36F0;
      v32 = &off_1004B0000;
      v245 = v7;
      while (1)
      {
        v33 = v22;
        v34 = *v11;
        v248 = v11;
        v35 = v11[1 - *(v12 + 8)];
        if (v7 < 8)
        {
          LODWORD(v36) = 0;
          if (v7 <= 0)
          {
            goto LABEL_18;
          }

LABEL_34:
          v51 = v36;
          v52 = (~v36 + v7);
          if (v52 < 3)
          {
            v53 = v36;
            v54 = v246;
            goto LABEL_81;
          }

          v55 = v33;
          v56 = a3 + v51;
          v57 = v51 + v52 + v27 + v25 * v24;
          v58 = 4 * v51;
          v59 = &v13->i32[v51];
          v60 = 4 * (v51 + v52);
          v61 = &v26[v60 / 4];
          v62 = &v34->i32[v51];
          v63 = v34->u64 + v60 + 4;
          v64 = v35 + 4 * v51;
          v65 = v35->u64 + v60 + 4;
          v67 = a3 + v51 < v63 && v62 < v57;
          v69 = v56 < v65 && v64 < v57;
          v71 = v59 < v63 && v62 < v61;
          v73 = v59 < v65 && v64 < v61;
          if (v59 < v57 && v56 < v61)
          {
            v53 = v51;
            v54 = v246;
            v32 = &off_1004B0000;
LABEL_73:
            v33 = v55;
            do
            {
LABEL_81:
              v108 = v34->i32[v53] + v13->i32[v53];
              v109 = rint(v54 * v108);
              v110 = v109 & ~(v109 >> 31);
              if (v110 >= 255)
              {
                LOBYTE(v110) = -1;
              }

              *(a3 + v53) = v110;
              v13->i32[v53] = v108 - v35->i32[v53];
              ++v53;
            }

            while (v53 < v7);
            goto LABEL_18;
          }

          v32 = &off_1004B0000;
          if (v67 || v69 || v71 || v73)
          {
            v53 = v51;
          }

          else
          {
            v75 = v52 + 1;
            if (v52 < 0xF)
            {
              v76 = 0;
LABEL_78:
              v53 = (v75 & 0x1FFFFFFFCLL) + v51;
              v98 = v76 - (v75 & 0x1FFFFFFFCLL);
              v99 = v76 + v51;
              v100 = (v13 + 4 * v99);
              v101 = (v34 + 4 * v99);
              v102 = (v35 + 4 * v99);
              v54 = v246;
              do
              {
                v103 = *v101++;
                v104 = vaddq_s32(v103, *v100);
                v105.i64[0] = v104.i32[2];
                v105.i64[1] = v104.i32[3];
                v106 = vcvtq_f64_s64(v105);
                v105.i64[0] = v104.i32[0];
                v105.i64[1] = v104.i32[1];
                *(a3 + v99) = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(vcvtq_f64_s64(v105), v246))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v106, v246)))), v29), v30)), *v104.i8).u32[0];
                v107 = *v102++;
                *v100++ = vsubq_s32(v104, v107);
                v99 += 4;
                v98 += 4;
              }

              while (v98);
              v33 = v55;
              if (v75 == (v75 & 0x1FFFFFFFCLL))
              {
                goto LABEL_18;
              }

              goto LABEL_81;
            }

            v76 = v75 & 0x1FFFFFFF0;
            v77 = (v13 + v58);
            v78 = (v34 + v58);
            v79 = (v35 + v58);
            v80 = v51;
            v81 = v75 & 0x1FFFFFFF0;
            do
            {
              v82 = vaddq_s32(v78[2], v77[2]);
              v83 = vaddq_s32(v78[1], v77[1]);
              v84 = vaddq_s32(*v78, *v77);
              v85 = vaddq_s32(v78[3], v77[3]);
              v86.i64[0] = v85.i32[0];
              v86.i64[1] = v85.i32[1];
              v87 = vcvtq_f64_s64(v86);
              v86.i64[0] = v85.i32[2];
              v86.i64[1] = v85.i32[3];
              v88 = vcvtq_f64_s64(v86);
              v86.i64[0] = v84.i32[2];
              v86.i64[1] = v84.i32[3];
              v89 = vcvtq_f64_s64(v86);
              v86.i64[0] = v84.i32[0];
              v86.i64[1] = v84.i32[1];
              v90 = vcvtq_f64_s64(v86);
              v86.i64[0] = v83.i32[2];
              v86.i64[1] = v83.i32[3];
              v91 = vcvtq_f64_s64(v86);
              v86.i64[0] = v83.i32[0];
              v86.i64[1] = v83.i32[1];
              v92 = vcvtq_f64_s64(v86);
              v86.i64[0] = v82.i32[2];
              v86.i64[1] = v82.i32[3];
              v93 = vcvtq_f64_s64(v86);
              v86.i64[0] = v82.i32[0];
              v86.i64[1] = v82.i32[1];
              v250.val[2] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(vcvtq_f64_s64(v86), v246))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v93, v246)))), v29), v30);
              v250.val[1] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v92, v246))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v91, v246)))), v29), v30);
              v250.val[0] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v90, v246))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v89, v246)))), v29), v30);
              v250.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v87, v246))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v88, v246)))), v29), v30);
              *(a3 + v80) = vqtbl4q_s8(v250, v31);
              v94 = v79[2];
              v95 = v79[3];
              v96 = *v79;
              v97 = v79[1];
              v79 += 4;
              v77[2] = vsubq_s32(v82, v94);
              v77[3] = vsubq_s32(v85, v95);
              *v77 = vsubq_s32(v84, v96);
              v77[1] = vsubq_s32(v83, v97);
              v77 += 4;
              v78 += 4;
              v80 += 16;
              v81 -= 16;
            }

            while (v81);
            v33 = v55;
            if (v75 == v76)
            {
              goto LABEL_18;
            }

            if ((v75 & 0xC) != 0)
            {
              goto LABEL_78;
            }

            v53 = v76 + v51;
          }

          v54 = v246;
          goto LABEL_73;
        }

        v36 = 0;
        v37 = v34 + 1;
        v38 = v35 + 1;
        v39 = v28;
        do
        {
          v40 = v39[-1];
          v41 = *v39;
          v42 = v37[-1];
          v43 = *v37;
          if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
          {
            if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
            {
              goto LABEL_25;
            }
          }

          else
          {
            v241 = v23;
            v237 = v6;
            v229 = v26;
            v233 = v25;
            v221 = v28;
            v225 = v27;
            v217 = v31;
            v213 = v33;
            v205 = v41;
            v209 = v40;
            v197 = v43;
            v201 = v42;
            sub_1003C8EA4();
            v43 = v197;
            v42 = v201;
            v41 = v205;
            v40 = v209;
            v33 = v213;
            v32 = &off_1004B0000;
            v31 = v217;
            v30.i64[0] = 0xFF000000FFLL;
            v30.i64[1] = 0xFF000000FFLL;
            v29 = 0uLL;
            v28 = v221;
            v27 = v225;
            v26 = v229;
            v25 = v233;
            v6 = v237;
            v23 = v241;
            if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
            {
LABEL_25:
              v44 = v32[3];
              v45 = xmmword_1004B0010;
              if ((atomic_load_explicit(qword_1004B0020, memory_order_acquire) & 1) == 0)
              {
                goto LABEL_31;
              }

              goto LABEL_26;
            }
          }

          v242 = v23;
          v238 = v6;
          v230 = v26;
          v234 = v25;
          v222 = v28;
          v226 = v27;
          v218 = v31;
          v214 = v33;
          v206 = v41;
          v210 = v40;
          v198 = v43;
          v202 = v42;
          sub_1003C8ED8();
          v43 = v198;
          v42 = v202;
          v41 = v206;
          v40 = v210;
          v33 = v214;
          v32 = &off_1004B0000;
          v31 = v218;
          v30.i64[0] = 0xFF000000FFLL;
          v30.i64[1] = 0xFF000000FFLL;
          v29 = 0uLL;
          v28 = v222;
          v27 = v226;
          v26 = v230;
          v25 = v234;
          v6 = v238;
          v23 = v242;
          v44 = xmmword_1004B0030;
          v45 = xmmword_1004B0010;
          if ((atomic_load_explicit(qword_1004B0020, memory_order_acquire) & 1) == 0)
          {
LABEL_31:
            v243 = v23;
            v239 = v6;
            v231 = v26;
            v235 = v25;
            v223 = v28;
            v227 = v27;
            v219 = v31;
            v215 = v33;
            v207 = v41;
            v211 = v40;
            v199 = v43;
            v203 = v42;
            v193 = v45;
            v195 = v44;
            sub_1003C8EA4();
            v45 = v193;
            v44 = v195;
            v43 = v199;
            v42 = v203;
            v41 = v207;
            v40 = v211;
            v33 = v215;
            v32 = &off_1004B0000;
            v31 = v219;
            v30.i64[0] = 0xFF000000FFLL;
            v30.i64[1] = 0xFF000000FFLL;
            v29 = 0uLL;
            v28 = v223;
            v27 = v227;
            v26 = v231;
            v25 = v235;
            v6 = v239;
            v23 = v243;
            if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
            {
              goto LABEL_27;
            }

            goto LABEL_32;
          }

LABEL_26:
          if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
          {
            goto LABEL_27;
          }

LABEL_32:
          v244 = v23;
          v240 = v6;
          v232 = v26;
          v236 = v25;
          v224 = v28;
          v228 = v27;
          v220 = v31;
          v216 = v33;
          v208 = v41;
          v212 = v40;
          v200 = v43;
          v204 = v42;
          v194 = v45;
          v196 = v44;
          sub_1003C8ED8();
          v45 = v194;
          v44 = v196;
          v43 = v200;
          v42 = v204;
          v41 = v208;
          v40 = v212;
          v33 = v216;
          v32 = &off_1004B0000;
          v31 = v220;
          v30.i64[0] = 0xFF000000FFLL;
          v30.i64[1] = 0xFF000000FFLL;
          v29 = 0uLL;
          v28 = v224;
          v27 = v228;
          v26 = v232;
          v25 = v236;
          v6 = v240;
          v23 = v244;
LABEL_27:
          v46 = vaddq_s32(v42, v40);
          v47 = vaddq_s32(v43, v41);
          v48 = vmulq_n_f32(vcvtq_f32_s32(v46), *&v6);
          v49 = vmulq_n_f32(vcvtq_f32_s32(v47), *&v6);
          *(a3 + v36) = vqmovn_u16(vqmovn_high_u32(vqmovn_u32(vcvtq_s32_f32(vaddq_f32(v48, vorrq_s8(vandq_s8(v45, v48), v44)))), vcvtq_s32_f32(vaddq_f32(v49, vorrq_s8(vandq_s8(xmmword_1004B0010, v49), v32[3])))));
          v39[-1] = vsubq_s32(v46, v38[-1]);
          v50 = *v38;
          v38 += 2;
          v36 += 8;
          *v39 = vsubq_s32(v47, v50);
          v39 += 2;
          v37 += 2;
        }

        while (v23 >= v36);
        v7 = v245;
        if (v36 < v245)
        {
          goto LABEL_34;
        }

LABEL_18:
        a3 += v24;
        v12 = v247;
        v11 = v248 + 1;
        v22 = v33 - 1;
        ++v25;
        if (!v33)
        {
          return;
        }
      }
    }

    v113 = 0;
    v114 = v23;
    v115 = v7;
    v116 = &v13->i32[v115];
    v117 = a3 + v7;
    v118.i64[0] = 0xFF000000FFLL;
    v118.i64[1] = 0xFF000000FFLL;
    do
    {
      v119 = v22;
      v120 = *v11;
      v121 = v11[1 - *(v12 + 8)];
      if (v7 >= 8)
      {
        v123 = 0;
        v124 = v121 + 1;
        v125 = v120 + 1;
        v126 = v13 + 1;
        do
        {
          v127 = vaddq_s32(v125[-1], v126[-1]);
          v128 = vaddq_s32(*v125, *v126);
          *(a3 + v123) = vqmovn_u16(vqmovn_high_u32(vqmovn_u32(v127), v128));
          v126[-1] = vsubq_s32(v127, v124[-1]);
          v129 = *v124;
          v124 += 2;
          v123 += 8;
          *v126 = vsubq_s32(v128, v129);
          v126 += 2;
          v125 += 2;
        }

        while (v123 <= v114);
        v122 = v123;
        if (v123 >= v7)
        {
          goto LABEL_91;
        }
      }

      else
      {
        v122 = 0;
        if (v7 <= 0)
        {
          goto LABEL_91;
        }
      }

      v130 = v7 - v122;
      if (v130 < 4)
      {
        v131 = v122;
        goto LABEL_145;
      }

      v132 = v11;
      v133 = v117 + v113 * v24;
      v134 = a3 + v122;
      v135 = 4 * v122;
      v136 = &v13->i32[v122];
      v137 = &v120->i8[4 * v122];
      v138 = v121 + 4 * v122;
      v139 = v121->u64 + v115 * 4;
      v141 = a3 + v122 < v120->u64 + v115 * 4 && v137 < v133;
      v143 = v134 < v139 && v138 < v133;
      v145 = v136 < &v120->i32[v115] && v137 < v116;
      v147 = v136 < v139 && v138 < v116;
      if (v136 < v133 && v134 < v116)
      {
        v131 = v122;
        v12 = v247;
        v11 = v132;
        goto LABEL_145;
      }

      v12 = v247;
      if (v141 || v143 || v145 || v147)
      {
        v131 = v122;
        v11 = v132;
        goto LABEL_145;
      }

      if (v130 >= 0x10)
      {
        v149 = v130 & 0xFFFFFFFFFFFFFFF0;
        v150 = (v13 + v135);
        v151 = (v120 + v135);
        v152 = (v121 + v135);
        v153 = v122;
        v154 = v130 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v155 = vaddq_s32(v151[3], v150[3]);
          v156 = vaddq_s32(v151[2], v150[2]);
          v157 = vaddq_s32(v151[1], v150[1]);
          v158 = vaddq_s32(*v151, *v150);
          v251.val[3] = vminq_s32(vmaxq_s32(v155, 0), v118);
          v251.val[2] = vminq_s32(vmaxq_s32(v156, 0), v118);
          v251.val[1] = vminq_s32(vmaxq_s32(v157, 0), v118);
          v251.val[0] = vminq_s32(vmaxq_s32(v158, 0), v118);
          *(a3 + v153) = vqtbl4q_s8(v251, xmmword_1003E36F0);
          v159 = v152[2];
          v160 = v152[3];
          v161 = *v152;
          v251.val[0] = v152[1];
          v152 += 4;
          v150[2] = vsubq_s32(v156, v159);
          v150[3] = vsubq_s32(v155, v160);
          *v150 = vsubq_s32(v158, v161);
          v150[1] = vsubq_s32(v157, v251.val[0]);
          v150 += 4;
          v151 += 4;
          v153 += 16;
          v154 -= 16;
        }

        while (v154);
        v11 = v132;
        if (v130 == v149)
        {
          goto LABEL_91;
        }

        if ((v130 & 0xC) == 0)
        {
          v131 = v149 + v122;
          v11 = v132;
          do
          {
LABEL_145:
            v170 = v120->i32[v131] + v13->i32[v131];
            v171 = v170 & ~(v170 >> 31);
            if (v171 >= 255)
            {
              LOBYTE(v171) = -1;
            }

            *(a3 + v131) = v171;
            v13->i32[v131] = v170 - v121->i32[v131];
            ++v131;
          }

          while (v7 != v131);
          goto LABEL_91;
        }
      }

      else
      {
        v149 = 0;
      }

      v131 = (v130 & 0xFFFFFFFFFFFFFFFCLL) + v122;
      v162 = v149 - (v130 & 0xFFFFFFFFFFFFFFFCLL);
      v163 = v149 + v122;
      v164 = (v13 + 4 * v163);
      v165 = (v120 + 4 * v163);
      v166 = (v121 + 4 * v163);
      do
      {
        v167 = *v165++;
        v168 = vaddq_s32(v167, *v164);
        *(a3 + v163) = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(v168, 0), v118)), 0).u32[0];
        v169 = *v166++;
        *v164++ = vsubq_s32(v168, v169);
        v163 += 4;
        v162 += 4;
      }

      while (v162);
      v11 = v132;
      if (v130 != (v130 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_145;
      }

LABEL_91:
      a3 += v24;
      ++v11;
      v22 = v119 - 1;
      ++v113;
    }

    while (v119);
  }
}

uint64_t sub_10036859C(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_100368620(void *a1)
{
  *a1 = off_10047B1A0;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  return nullsub_1(a1);
}

void sub_100368684(void *a1)
{
  *a1 = off_10047B1A0;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  nullsub_1(a1);

  operator delete();
}

void sub_1003686F8(uint64_t a1, unsigned __int16 **a2, unint64_t a3, int a4, int a5, int a6)
{
  v7 = a5;
  v10 = a2;
  v13 = (a1 + 40);
  v12 = *(a1 + 40);
  v15 = *(a1 + 28);
  v14 = *(a1 + 32);
  v16 = *(a1 + 16);
  v17 = (*(a1 + 48) - v12) >> 1;
  if (v17 == a6)
  {
    v18 = *(a1 + 24);
    if (v18)
    {
      v19 = *(a1 + 8);
      if (v18 != v19 - 1)
      {
        v179[0] = 0;
        v179[1] = 0;
        v20 = sub_1002A80E0(v179, 19);
        *(v20 + 15) = 825058682;
        *v20 = *"sumCount == ksize-1";
        sub_1002A8980(-215, v179, "operator()", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/smooth.cpp", 485);
      }

      v10 = &a2[v19 - 1];
      if (!a5)
      {
        return;
      }

      goto LABEL_53;
    }
  }

  else
  {
    if (a6 <= v17)
    {
      if (a6 < v17)
      {
        *(a1 + 48) = v12 + 2 * a6;
      }
    }

    else
    {
      sub_1003690F0(a1 + 40, a6 - v17);
      v12 = *v13;
    }

    *(a1 + 24) = 0;
  }

  bzero(v12, 2 * a6);
  v21 = *(a1 + 24);
  v22 = *(a1 + 8) - 1;
  if (v21 >= v22)
  {
    goto LABEL_52;
  }

  v23 = (a6 - 8);
  if (a6 >= 8)
  {
    v27 = v23 & 0x7FFFFFF8;
    if (v27 + 9 <= a6)
    {
      v28 = a6;
    }

    else
    {
      v28 = (v23 & 0x7FFFFFF8) + 9;
    }

    v29 = 2 * v28 - ((2 * (a6 - 8)) & 0xFFFFFFF0);
    v30 = v28 - 8;
    v31 = v28 - 8 - v27;
    v32 = v31 & 0xFFFFFFFFFFFFFFF0;
    v33 = v28 & 3;
    v34 = v30 - v33 - v27;
    while (1)
    {
      v36 = 0;
      v37 = 0;
      v38 = *v10;
      v39 = (*v10 + 16);
      v40 = v12 + 2;
      v41 = 8;
      do
      {
        v42 = v41;
        v43 = v36;
        v44 = v39;
        v45 = v40;
        v12[v37 / 8] = vqaddq_u16(v12[v37 / 8], v38[v37 / 8]);
        v37 += 8;
        v41 += 8;
        ++v36;
        v39 += 16;
        ++v40;
      }

      while (v37 <= v23);
      if (v37 >= a6)
      {
        goto LABEL_28;
      }

      if (v31 >= 4)
      {
        v47 = 16 * v43;
        v48 = v47 + 16;
        v49 = &v12[v47 / 0x10 + 1];
        v50 = v29 + v47;
        if (v49 >= &v38->i8[v50] || &v38->i8[v48] >= &v12->i8[v50])
        {
          if (v31 < 0x10)
          {
            v51 = 0;
LABEL_43:
            v46 = v42 + v31 - v33;
            v54 = v34 - v51;
            v55 = 2 * (v51 + v42);
            v56 = &v38->i8[v55];
            v57 = &v12->i8[v55];
            do
            {
              v58 = *v56++;
              *v57 = vadd_s16(*v57, v58);
              ++v57;
              v54 -= 4;
            }

            while (v54);
            if (!v33)
            {
              goto LABEL_28;
            }

            goto LABEL_46;
          }

          v52 = v31 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v53 = vaddq_s16(*v45, *v44);
            v45[-1] = vaddq_s16(v45[-1], v44[-1]);
            *v45 = v53;
            v44 += 2;
            v45 += 2;
            v52 -= 16;
          }

          while (v52);
          if (v31 == v32)
          {
            goto LABEL_28;
          }

          v51 = v31 & 0xFFFFFFFFFFFFFFF0;
          if ((v31 & 0xC) != 0)
          {
            goto LABEL_43;
          }

          v46 = v42 + v32;
        }

        else
        {
          v46 = v42;
        }
      }

      else
      {
        v46 = v42;
      }

      do
      {
LABEL_46:
        v12->i16[v46] += v38->i16[v46];
        ++v46;
      }

      while (v46 < a6);
LABEL_28:
      v35 = *(a1 + 24) + 1;
      *(a1 + 24) = v35;
      ++v10;
      if (v35 >= *(a1 + 8) - 1)
      {
        goto LABEL_52;
      }
    }
  }

  v24 = v21 + 1;
  if (a6 > 0)
  {
    v25 = v12->u16[0];
    do
    {
      v26 = *v10;
      v25 += **v10;
      v12->i16[0] = v25;
      if (a6 != 1)
      {
        v12->i16[1] += v26->i16[1];
        if (a6 != 2)
        {
          v12->i16[2] += v26->i16[2];
          if (a6 != 3)
          {
            v12->i16[3] += v26->i16[3];
            if (a6 != 4)
            {
              v12->i16[4] += v26->i16[4];
              if (a6 != 5)
              {
                v12->i16[5] += v26->i16[5];
                if (a6 != 6)
                {
                  v12->i16[6] += v26->i16[6];
                }
              }
            }
          }
        }
      }

      ++v21;
      ++v10;
    }

    while (v21 < v22);
    if (v22 > v24)
    {
      v24 = v22;
    }

    *(a1 + 24) = v24;
LABEL_52:
    if (!v7)
    {
      return;
    }

    goto LABEL_53;
  }

  if (v22 > v24)
  {
    v24 = *(a1 + 8) - 1;
  }

  v10 += (v24 + ~v21) + 1;
  *(a1 + 24) = v24;
  if (v7)
  {
LABEL_53:
    v59 = (v7 - 1);
    v60 = a4;
    if (v16 != 1.0)
    {
      v61 = 0;
      v62 = vdupq_n_s32(v14);
      v63 = vdupq_n_s16(v15);
      v64 = a6;
      v65 = &v12->i16[v64];
      v178 = a3 + a6;
      v66 = vdupq_n_s32(v15);
      while (1)
      {
        v67 = v59;
        v68 = *v10;
        v69 = v10[1 - *(a1 + 8)];
        if (a6 >= 16)
        {
          break;
        }

        v70 = 0;
        if (a6 > 0)
        {
          goto LABEL_62;
        }

LABEL_55:
        a3 += v60;
        ++v10;
        LODWORD(v59) = v67 - 1;
        ++v61;
        if (!v67)
        {
          return;
        }
      }

      v71 = 0;
      v72 = v69 + 1;
      v73 = v68 + 1;
      v74 = v12 + 1;
      do
      {
        v75 = vaddq_s16(v73[-1], v74[-1]);
        v76 = vaddq_s16(*v73, *v74);
        v77 = vqaddq_u16(v75, v63);
        v78 = vqaddq_u16(v76, v63);
        v79 = vsubq_s16(v75, v72[-1]);
        v80 = vsubq_s16(v76, *v72);
        *(a3 + v71) = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vshrq_n_u32(vmulq_s32(v62, vmovl_u16(*v77.i8)), 0x17uLL)), vshrq_n_u32(vmulq_s32(v62, vmovl_high_u16(v77)), 0x17uLL))), vqmovn_high_s32(vqmovn_s32(vshrq_n_u32(vmulq_s32(v62, vmovl_u16(*v78.i8)), 0x17uLL)), vshrq_n_u32(vmulq_s32(v62, vmovl_high_u16(v78)), 0x17uLL)));
        v71 += 16;
        v74[-1] = v79;
        *v74 = v80;
        v72 += 2;
        v74 += 2;
        v73 += 2;
      }

      while (v71 <= a6 - 16);
      v70 = v71;
      if (v71 >= a6)
      {
        goto LABEL_55;
      }

LABEL_62:
      v81 = a6 - v70;
      if (v81 < 4)
      {
        v82 = v70;
        goto LABEL_64;
      }

      v84 = v178 + v61 * v60;
      v85 = a3 + v70;
      v86 = 2 * v70;
      v87 = &v12->i16[v70];
      v88 = &v68->i8[2 * v70];
      v89 = &v69->i8[2 * v70];
      v90 = &v69->i16[v64];
      v92 = a3 + v70 < v68->u64 + v64 * 2 && v88 < v84;
      v94 = v85 < v90 && v89 < v84;
      v96 = v87 < &v68->i16[v64] && v88 < v65;
      v98 = v87 < v90 && v89 < v65;
      if (v87 < v84 && v85 < v65)
      {
        v82 = v70;
        goto LABEL_64;
      }

      if (v92)
      {
        v82 = v70;
      }

      else if (v94)
      {
        v82 = v70;
      }

      else if (v96)
      {
        v82 = v70;
      }

      else if (v98)
      {
        v82 = v70;
      }

      else
      {
        if (v81 < 0x10)
        {
          v100 = 0;
          goto LABEL_106;
        }

        v100 = v81 & 0xFFFFFFFFFFFFFFF0;
        v101 = &v12->i8[v86];
        v102 = &v68->i8[v86];
        v103 = (v69 + v86);
        v104 = v70;
        v105 = v81 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v106 = v101[1];
          v107 = *v102;
          v108 = v102[1];
          v102 += 2;
          v109 = vaddl_u16(*v107.i8, *v101->i8);
          v110 = vaddl_u16(*v108.i8, *v106.i8);
          v111 = vaddl_high_u16(v108, v106);
          v112 = vaddl_high_u16(v107, *v101);
          v181.val[1] = vshrq_n_u32(vmulq_s32(vaddq_s32(v112, v66), v62), 0x17uLL);
          v181.val[3] = vshrq_n_u32(vmulq_s32(vaddq_s32(v111, v66), v62), 0x17uLL);
          v181.val[2] = vshrq_n_u32(vmulq_s32(vaddq_s32(v110, v66), v62), 0x17uLL);
          v181.val[0] = vshrq_n_u32(vmulq_s32(vaddq_s32(v109, v66), v62), 0x17uLL);
          *(a3 + v104) = vqtbl4q_s8(v181, xmmword_1003E36F0);
          v113 = *v103;
          v114 = v103[1];
          v103 += 2;
          *v101 = vsubq_s16(vuzp1q_s16(v109, v112), v113);
          v101[1] = vsubq_s16(vuzp1q_s16(v110, v111), v114);
          v101 += 2;
          v104 += 16;
          v105 -= 16;
        }

        while (v105);
        if (v81 == v100)
        {
          goto LABEL_55;
        }

        if ((v81 & 0xC) != 0)
        {
LABEL_106:
          v82 = (v81 & 0xFFFFFFFFFFFFFFFCLL) + v70;
          v115 = v100 - (v81 & 0xFFFFFFFFFFFFFFFCLL);
          v116 = v100 + v70;
          v117 = (v12 + 2 * v116);
          v118 = (v68 + 2 * v116);
          v119 = (v69 + 2 * v116);
          do
          {
            v120 = *v118++;
            v121 = vaddl_u16(v120, *v117);
            *(a3 + v116) = vuzp1_s8(vmovn_s32(vshrq_n_u32(vmulq_s32(vaddq_s32(v121, v66), v62), 0x17uLL)), *v62.i8).u32[0];
            v122 = *v119++;
            *v117++ = vsub_s16(vmovn_s32(v121), v122);
            v116 += 4;
            v115 += 4;
          }

          while (v115);
          if (v81 == (v81 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_55;
          }

          goto LABEL_64;
        }

        v82 = v100 + v70;
      }

      do
      {
LABEL_64:
        v83 = v68->u16[v82] + v12->u16[v82];
        *(a3 + v82) = ((v83 + v15) * v14) >> 23;
        v12->i16[v82] = v83 - v69->i16[v82];
        ++v82;
      }

      while (a6 != v82);
      goto LABEL_55;
    }

    if (a6 < 1)
    {
      return;
    }

    v123 = a3 + a4 * v59 + a6;
    v124 = a6;
    v125 = &v12->u16[v124];
    v127 = v12->u64 + v124 * 2 > a3 && v12 < v123;
    if (a6 < 4)
    {
      v128 = v10 + 1;
      v129 = (a3 + 2);
      do
      {
        v130 = *(v128 - 1);
        v131 = v128[-*(a1 + 8)];
        v132 = *v130 + v12->u16[0];
        if (v132 >= 0xFF)
        {
          v133 = -1;
        }

        else
        {
          v133 = *v130 + v12->i16[0];
        }

        *(v129 - 2) = v133;
        v12->i16[0] = v132 - *v131;
        if (a6 != 1)
        {
          v134 = v130[1] + v12->u16[1];
          v135 = v134 >= 0xFF ? -1 : v130[1] + v12->i16[1];
          *(v129 - 1) = v135;
          v12->i16[1] = v134 - v131[1];
          if (a6 != 2)
          {
            v136 = v130[2] + v12->u16[2];
            if (v136 >= 0xFF)
            {
              v137 = -1;
            }

            else
            {
              v137 = v136;
            }

            *v129 = v137;
            v12->i16[2] = v136 - v131[2];
          }
        }

        ++v128;
        v129 += a4;
        --v7;
      }

      while (v7);
      return;
    }

    v138 = a6 & 0x7FFFFFF0;
    v139 = a6 & 0x7FFFFFFC;
    v140.i64[0] = 0xFF000000FFLL;
    v140.i64[1] = 0xFF000000FFLL;
    v141 = a3;
    do
    {
      v142 = 0;
      v143 = *v10;
      v144 = v10[1 - *(a1 + 8)];
      v145 = &(*v10)[v124];
      v146 = &v144[v124];
      v149 = v145 > a3 && v143 < v123 || a4 < 0 || v127;
      v151 = v12 < v145 && v143 < v125;
      v153 = v12 < v146 && v144 < v125;
      v154 = v144 < v123 && v146 > a3;
      v155 = v59;
      if (v154 || (v149 & 1) != 0 || v151 || v153)
      {
        do
        {
LABEL_175:
          v176 = v143->u16[v142] + v12->u16[v142];
          if (v176 >= 0xFF)
          {
            v177 = -1;
          }

          else
          {
            v177 = v143->i16[v142] + v12->i16[v142];
          }

          *(v141 + v142) = v177;
          v12->i16[v142] = v176 - v144[v142];
          ++v142;
        }

        while (a6 != v142);
        goto LABEL_137;
      }

      if (a6 >= 0x10)
      {
        v157 = 0;
        v158 = v10[1 - *(a1 + 8)];
        v159 = *v10;
        v160 = v12;
        do
        {
          v161 = v160[1];
          v162 = *v159;
          v163 = v159[1];
          v159 += 2;
          v164 = vaddl_u16(*v162.i8, *v160->i8);
          v165 = vaddl_u16(*v163.i8, *v161.i8);
          v166 = vaddl_high_u16(v162, *v160);
          v167 = vaddl_high_u16(v163, v161);
          v180.val[3] = vminq_u32(v167, v140);
          v180.val[1] = vminq_u32(v166, v140);
          v180.val[2] = vminq_u32(v165, v140);
          v180.val[0] = vminq_u32(v164, v140);
          *(v141 + v157) = vqtbl4q_s8(v180, xmmword_1003E36F0);
          v168 = *v158;
          v169 = v158[1];
          v158 += 2;
          v157 += 16;
          *v160 = vsubq_s16(vuzp1q_s16(v164, v166), v168);
          v160[1] = vsubq_s16(vuzp1q_s16(v165, v167), v169);
          v160 += 2;
        }

        while (v138 != v157);
        if (v138 == a6)
        {
          goto LABEL_137;
        }

        v156 = a6 & 0x7FFFFFF0;
        v142 = v156;
        if ((a6 & 0xC) == 0)
        {
          goto LABEL_175;
        }
      }

      else
      {
        v156 = 0;
      }

      v170 = (v12 + 2 * v156);
      v171 = (v143 + 2 * v156);
      v172 = &v144[v156];
      do
      {
        v173 = *v171++;
        v174 = vaddl_u16(v173, *v170);
        *(v141 + v156) = vuzp1_s8(vmovn_s32(vminq_u32(v174, v140)), *v140.i8).u32[0];
        v175 = *v172++;
        *v170++ = vsub_s16(vmovn_s32(v174), v175);
        v156 += 4;
      }

      while (v139 != v156);
      v142 = a6 & 0x7FFFFFFC;
      if (v139 != a6)
      {
        goto LABEL_175;
      }

LABEL_137:
      v141 += a4;
      ++v10;
      LODWORD(v59) = v155 - 1;
    }

    while (v155);
  }
}

void sub_1003690D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

void sub_1003690F0(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 1)
  {
    if (a2)
    {
      v10 = 2 * a2;
      bzero(*(a1 + 8), 2 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 1) + a2;
    if (v7 < 0)
    {
      sub_10000918C();
    }

    v8 = v3 - v5;
    if (v8 > v7)
    {
      v7 = v8;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if ((v9 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10000927C();
    }

    v11 = (2 * (v6 >> 1));
    v12 = 2 * a2;
    bzero(v11, 2 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t sub_100369250(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_1003692D4(void *a1)
{
  *a1 = off_10047B228;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  return nullsub_1(a1);
}

void sub_100369338(void *a1)
{
  *a1 = off_10047B228;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  nullsub_1(a1);

  operator delete();
}

void sub_1003693AC(uint64_t a1, double **a2, unint64_t a3, int a4, int a5, int a6)
{
  v8 = a2;
  v11 = (a1 + 32);
  v10 = *(a1 + 32);
  v282 = *(a1 + 16);
  v12 = (*(a1 + 40) - v10) >> 3;
  if (v12 != a6)
  {
    if (a6 <= v12)
    {
      if (a6 < v12)
      {
        *(a1 + 40) = &v10[a6];
      }
    }

    else
    {
      sub_10027E448(a1 + 32, a6 - v12);
      v10 = *v11;
    }

    *(a1 + 24) = 0;
    goto LABEL_11;
  }

  v13 = *(a1 + 24);
  if (!v13)
  {
LABEL_11:
    bzero(v10, 8 * a6);
    v16 = *(a1 + 8);
    v17 = v16 - 1;
    v18 = *(a1 + 24);
    if (v18 >= v16 - 1)
    {
      goto LABEL_21;
    }

    if (a6 <= 0)
    {
      v8 += (v16 - v18 - 2) + 1;
LABEL_20:
      *(a1 + 24) = v17;
      goto LABEL_21;
    }

    if (a6 < 4)
    {
      v19 = *v10;
      v20 = ~v18 + v16;
      do
      {
        v21 = *v8;
        v19 = **v8 + v19;
        *v10 = v19;
        if (a6 != 1)
        {
          v10[1] = v21[1] + v10[1];
          if (a6 != 2)
          {
            v10[2] = v21[2] + v10[2];
          }
        }

        ++v8;
        --v20;
      }

      while (v20);
      goto LABEL_20;
    }

    v261 = a6;
    while (1)
    {
      v262 = *v8;
      if (v10 >= &(*v8)[v261] || v262 >= &v10[v261])
      {
        v264 = v262 + 1;
        v265 = a6 & 0x7FFFFFFC;
        v266 = (v10 + 2);
        do
        {
          v267 = vaddq_f64(*v264, *v266);
          v266[-1] = vaddq_f64(v264[-1], v266[-1]);
          *v266 = v267;
          v264 += 2;
          v266 += 2;
          v265 -= 4;
        }

        while (v265);
        v268 = a6 & 0x7FFFFFFC;
        if (v268 == a6)
        {
          goto LABEL_225;
        }
      }

      else
      {
        v268 = 0;
      }

      v269 = &v262->f64[v268];
      v270 = &v10[v268];
      v271 = a6 - v268;
      do
      {
        v272 = *v269++;
        *v270 = v272 + *v270;
        ++v270;
        --v271;
      }

      while (v271);
LABEL_225:
      ++v18;
      ++v8;
      if (v18 == v17)
      {
        goto LABEL_20;
      }
    }
  }

  v14 = *(a1 + 8);
  if (v13 != v14 - 1)
  {
    v283[0] = 0;
    v283[1] = 0;
    v15 = sub_1002A80E0(v283, 19);
    *(v15 + 15) = 825058682;
    *v15 = *"sumCount == ksize-1";
    sub_1002A8980(-215, v283, "operator()", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/smooth.cpp", 228);
  }

  v8 = &a2[v14 - 1];
LABEL_21:
  if (a5)
  {
    v22 = (a5 - 1);
    v23 = a3;
    v24 = a6 - 2;
    v279 = a6;
    v25 = &v10[v279];
    if (v24 <= 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = a6 - 2;
    }

    v27 = a3 + a4 * v22 + (v26 & 0x7FFFFFFE) + 2;
    v277 = ((8 * v26) & 0x3FFFFFFF0) + 16;
    v278 = v27;
    v28 = (v10 + v277);
    v29 = v26 >> 1;
    v276 = a3 + a6;
    v31 = v10 + v277 > a3 && v10 < v27;
    v275 = v31;
    v273 = v29 + 1;
    v274 = (v29 + 1) & 0x7FFFFFF0;
    v32 = 0;
    if (v282 != 1.0)
    {
      v33 = 0uLL;
      v34.i64[0] = 0xFF000000FFLL;
      v34.i64[1] = 0xFF000000FFLL;
      while (1)
      {
        v35 = v22;
        v36 = *v8;
        v37 = v8[1 - *(a1 + 8)];
        if (a6 < 2)
        {
          v38 = 0;
          if (a6 <= 0)
          {
            goto LABEL_33;
          }

          goto LABEL_71;
        }

        if (v24 < 0x1E)
        {
          goto LABEL_63;
        }

        v39 = v37 + v277;
        v41 = v36 + v277 > a3 && v36 < v278;
        if (v39 > a3 && v37 < v278)
        {
          v41 = 1;
        }

        v44 = v10 < (v36 + v277) && v36 < v28 || v41;
        if (v10 < v39 && v37 < v28)
        {
          v44 = 1;
        }

        if (a4 < 0)
        {
          v44 = 1;
        }

        if ((v44 | v275))
        {
LABEL_63:
          v46 = 0;
          v47 = v282;
        }

        else
        {
          v82 = v274;
          v83 = v8[1 - *(a1 + 8)];
          v84 = *v8;
          v85 = v10;
          v86 = v23;
          v47 = v282;
          v87.i64[0] = 0xFF000000FFLL;
          v87.i64[1] = 0xFF000000FFLL;
          do
          {
            v88 = vaddq_f64(v85[10], v84[10]);
            v89 = vaddq_f64(v85[11], v84[11]);
            v90 = vaddq_f64(v85[8], v84[8]);
            v91 = vaddq_f64(v85[9], v84[9]);
            v92 = vaddq_f64(v85[14], v84[14]);
            v93 = vaddq_f64(v85[15], v84[15]);
            v94 = vaddq_f64(v85[12], v84[12]);
            v95 = vaddq_f64(v85[13], v84[13]);
            v96 = vaddq_f64(v85[2], v84[2]);
            v97 = vaddq_f64(v85[3], v84[3]);
            v98 = vaddq_f64(v85[1], v84[1]);
            v99 = vaddq_f64(*v85, *v84);
            v100 = vaddq_f64(v85[6], v84[6]);
            v101 = vaddq_f64(v85[7], v84[7]);
            v102 = vaddq_f64(v85[4], v84[4]);
            v103 = vaddq_f64(v85[5], v84[5]);
            *v86 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v99, v282))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v98, v282)))), 0), v87), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v96, v282))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v97, v282)))), 0), v87)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v102, v282))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v103, v282)))), 0), v87), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v100, v282))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v101, v282)))), 0), v87)));
            v86[1] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v90, v282))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v91, v282)))), 0), v87), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v88, v282))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v89, v282)))), 0), v87)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v94, v282))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v95, v282)))), 0), v87), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v92, v282))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v93, v282)))), 0), v87)));
            v86 += 2;
            v104 = v83[12];
            v105 = v83[13];
            v106 = v83[10];
            v107 = v83[11];
            v108 = v83[8];
            v109 = v83[9];
            v110 = v83[6];
            v111 = v83[7];
            v112 = v83[4];
            v113 = v83[5];
            v114 = v83[2];
            v115 = v83[3];
            v116 = vsubq_f64(v93, v83[15]);
            v117 = vsubq_f64(v92, v83[14]);
            v118 = *v83;
            v119 = v83[1];
            v83 += 16;
            v85[14] = v117;
            v85[15] = v116;
            v85[12] = vsubq_f64(v94, v104);
            v85[13] = vsubq_f64(v95, v105);
            v85[10] = vsubq_f64(v88, v106);
            v85[11] = vsubq_f64(v89, v107);
            v85[8] = vsubq_f64(v90, v108);
            v85[9] = vsubq_f64(v91, v109);
            v85[6] = vsubq_f64(v100, v110);
            v85[7] = vsubq_f64(v101, v111);
            v85[4] = vsubq_f64(v102, v112);
            v85[5] = vsubq_f64(v103, v113);
            v85[2] = vsubq_f64(v96, v114);
            v85[3] = vsubq_f64(v97, v115);
            *v85 = vsubq_f64(v99, v118);
            v85[1] = vsubq_f64(v98, v119);
            v85 += 16;
            v84 += 16;
            v82 -= 16;
          }

          while (v82);
          v46 = 2 * v274;
          v33 = 0uLL;
          v34.i64[0] = 0xFF000000FFLL;
          v34.i64[1] = 0xFF000000FFLL;
          if (v273 == v274)
          {
            goto LABEL_70;
          }
        }

        v48 = &v10[v46];
        v49 = &v36[v46];
        v50 = &v37[v46];
        do
        {
          v51 = &v23->i8[v46];
          v52 = *v49++;
          v53 = vaddq_f64(*v48, v52);
          v54 = rint(v47 * v53.f64[0]);
          v55 = v54 & ~(v54 >> 31);
          if (v55 >= 255)
          {
            LOBYTE(v55) = -1;
          }

          *v51 = v55;
          v56 = rint(vmuld_lane_f64(v47, v53, 1));
          v57 = v56 & ~(v56 >> 31);
          if (v57 >= 255)
          {
            LOBYTE(v57) = -1;
          }

          v51[1] = v57;
          v58 = *v50++;
          *v48++ = vsubq_f64(v53, v58);
          v46 += 2;
        }

        while (v46 <= v24);
LABEL_70:
        v38 = v46;
        if (v46 >= a6)
        {
          goto LABEL_33;
        }

LABEL_71:
        v59 = a6 - v38;
        if (v59 < 4 || ((v65 = v276 + v32 * a4, v66 = &v23->i8[v38], v67 = v38, v68 = &v10[v38], v69 = &v36[v38], v70 = &v37[v38], v71 = &v37[v279], &v23->i8[v38] < &v36[v279]) ? (v72 = v69 >= v65) : (v72 = 1), v72 ? (v73 = 0) : (v73 = 1), v66 < v71 ? (v74 = v70 >= v65) : (v74 = 1), v74 ? (v75 = 0) : (v75 = 1), v68 < &v36[v279] ? (v76 = v69 >= v25) : (v76 = 1), v76 ? (v77 = 0) : (v77 = 1), v68 < v71 ? (v78 = v70 >= v25) : (v78 = 1), v78 ? (v79 = 0) : (v79 = 1), v68 < v65 ? (v80 = v66 >= v25) : (v80 = 1), !v80 || (v73 & 1) != 0 || (v75 & 1) != 0 || (v77 & 1) != 0 || (v79 & 1) != 0))
        {
          v60 = v38;
LABEL_73:
          v61 = v282;
          do
          {
LABEL_74:
            v62 = v10[v60] + v36[v60];
            v63 = rint(v61 * v62);
            v64 = v63 & ~(v63 >> 31);
            if (v64 >= 255)
            {
              LOBYTE(v64) = -1;
            }

            v23->i8[v60] = v64;
            v10[v60] = v62 - v37[v60];
            ++v60;
          }

          while (a6 != v60);
          goto LABEL_33;
        }

        if (v59 >= 0x10)
        {
          v81 = v59 & 0xFFFFFFFFFFFFFFF0;
          v120 = &v10[v67];
          v121 = &v36[v67];
          v122 = &v37[v67];
          v123 = v38;
          v124 = v59 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v125 = vaddq_f64(v120[6], v121[6]);
            v126 = vaddq_f64(v120[7], v121[7]);
            v127 = vaddq_f64(v120[4], v121[4]);
            v128 = vaddq_f64(v120[5], v121[5]);
            v129 = vaddq_f64(v120[2], v121[2]);
            v130 = vaddq_f64(v120[3], v121[3]);
            v131 = vaddq_f64(v120[1], v121[1]);
            v132 = vaddq_f64(*v120, *v121);
            v285.val[0] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v132, v282))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v131, v282)))), v33), v34);
            v285.val[1] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v129, v282))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v130, v282)))), v33), v34);
            v285.val[2] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v127, v282))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v128, v282)))), v33), v34);
            v285.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v125, v282))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v126, v282)))), v33), v34);
            *(v23 + v123) = vqtbl4q_s8(v285, xmmword_1003E36F0);
            v133 = *(v122 + 12);
            v134 = *(v122 + 14);
            v135 = *(v122 + 8);
            v136 = *(v122 + 10);
            v285.val[0] = *(v122 + 2);
            v285.val[1] = *(v122 + 3);
            v285.val[2] = *v122;
            v285.val[3] = *(v122 + 1);
            v122 += 16;
            v120[6] = vsubq_f64(v125, v133);
            v120[7] = vsubq_f64(v126, v134);
            v120[4] = vsubq_f64(v127, v135);
            v120[5] = vsubq_f64(v128, v136);
            v120[2] = vsubq_f64(v129, v285.val[0]);
            v120[3] = vsubq_f64(v130, v285.val[1]);
            *v120 = vsubq_f64(v132, v285.val[2]);
            v120[1] = vsubq_f64(v131, v285.val[3]);
            v120 += 8;
            v121 += 8;
            v123 += 16;
            v124 -= 16;
          }

          while (v124);
          if (v59 == v81)
          {
            goto LABEL_33;
          }

          if ((v59 & 0xC) == 0)
          {
            v60 = v81 + v38;
            goto LABEL_73;
          }
        }

        else
        {
          v81 = 0;
        }

        v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL) + v38;
        v137 = v81 - (v59 & 0xFFFFFFFFFFFFFFFCLL);
        v138 = v81 + v38;
        v139 = &v10[v138];
        v140 = &v36[v138];
        v141 = &v37[v138];
        v61 = v282;
        do
        {
          v142 = *v140;
          v143 = v140[1];
          v140 += 2;
          v144 = vaddq_f64(v139[1], v143);
          v145 = vaddq_f64(*v139, v142);
          *(v23->i32 + v138) = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v145, v282))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v144, v282)))), v33), v34)), *&v282).u32[0];
          v146 = *v141;
          v147 = v141[1];
          v141 += 2;
          *v139 = vsubq_f64(v145, v146);
          v139[1] = vsubq_f64(v144, v147);
          v139 += 2;
          v138 += 4;
          v137 += 4;
        }

        while (v137);
        if (v59 != (v59 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_74;
        }

LABEL_33:
        v23 = (v23 + a4);
        ++v8;
        LODWORD(v22) = v35 - 1;
        ++v32;
        if (!v35)
        {
          return;
        }
      }
    }

    v148.i64[0] = 0xFF000000FFLL;
    v148.i64[1] = 0xFF000000FFLL;
    v149 = xmmword_1003E36F0;
    v150 = a3;
    do
    {
      v151 = v22;
      v152 = *v8;
      v153 = v8[1 - *(a1 + 8)];
      if (a6 < 2)
      {
        v154 = 0;
        if (a6 <= 0)
        {
          goto LABEL_127;
        }

        goto LABEL_165;
      }

      if (v24 <= 0x1D)
      {
        goto LABEL_157;
      }

      v155 = v153 + v277;
      v157 = v152 + v277 > a3 && v152 < v278;
      if (v155 > a3 && v153 < v278)
      {
        v157 = 1;
      }

      v160 = v10 < (v152 + v277) && v152 < v28 || v157;
      if (v10 < v155 && v153 < v28)
      {
        v160 = 1;
      }

      if (a4 < 0)
      {
        v160 = 1;
      }

      if ((v160 | v275))
      {
LABEL_157:
        v162 = 0;
      }

      else
      {
        v196 = v274;
        v197 = v8[1 - *(a1 + 8)];
        v198 = *v8;
        v199 = v10;
        v200 = v150;
        do
        {
          v201 = vaddq_f64(v199[10], v198[10]);
          v202 = vaddq_f64(v199[11], v198[11]);
          v203 = vaddq_f64(v199[8], v198[8]);
          v204 = vaddq_f64(v199[9], v198[9]);
          v205 = vaddq_f64(v199[14], v198[14]);
          v206 = vaddq_f64(v199[15], v198[15]);
          v207 = vaddq_f64(v199[12], v198[12]);
          v208 = vaddq_f64(v199[13], v198[13]);
          v209 = vaddq_f64(v199[2], v198[2]);
          v210 = vaddq_f64(v199[3], v198[3]);
          v211 = vaddq_f64(*v199, *v198);
          v212 = vaddq_f64(v199[1], v198[1]);
          v213 = vaddq_f64(v199[6], v198[6]);
          v214 = vaddq_f64(v199[7], v198[7]);
          v215 = vaddq_f64(v199[4], v198[4]);
          v216 = vaddq_f64(v199[5], v198[5]);
          *v200 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v211)), vcvtq_s64_f64(vrndxq_f64(v212))), 0), v148), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v209)), vcvtq_s64_f64(vrndxq_f64(v210))), 0), v148)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v215)), vcvtq_s64_f64(vrndxq_f64(v216))), 0), v148), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v213)), vcvtq_s64_f64(vrndxq_f64(v214))), 0), v148)));
          v200[1] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v203)), vcvtq_s64_f64(vrndxq_f64(v204))), 0), v148), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v201)), vcvtq_s64_f64(vrndxq_f64(v202))), 0), v148)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v207)), vcvtq_s64_f64(vrndxq_f64(v208))), 0), v148), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v205)), vcvtq_s64_f64(vrndxq_f64(v206))), 0), v148)));
          v200 += 2;
          v217 = v197[12];
          v218 = v197[13];
          v219 = v197[10];
          v220 = v197[11];
          v221 = v197[8];
          v222 = v197[9];
          v223 = v197[6];
          v224 = v197[7];
          v225 = v197[4];
          v226 = v197[5];
          v227 = v197[2];
          v228 = v197[3];
          v229 = vsubq_f64(v206, v197[15]);
          v230 = vsubq_f64(v205, v197[14]);
          v231 = *v197;
          v232 = v197[1];
          v197 += 16;
          v199[14] = v230;
          v199[15] = v229;
          v199[12] = vsubq_f64(v207, v217);
          v199[13] = vsubq_f64(v208, v218);
          v199[10] = vsubq_f64(v201, v219);
          v199[11] = vsubq_f64(v202, v220);
          v199[8] = vsubq_f64(v203, v221);
          v199[9] = vsubq_f64(v204, v222);
          v199[6] = vsubq_f64(v213, v223);
          v199[7] = vsubq_f64(v214, v224);
          v199[4] = vsubq_f64(v215, v225);
          v199[5] = vsubq_f64(v216, v226);
          v199[2] = vsubq_f64(v209, v227);
          v199[3] = vsubq_f64(v210, v228);
          *v199 = vsubq_f64(v211, v231);
          v199[1] = vsubq_f64(v212, v232);
          v199 += 16;
          v198 += 16;
          v196 -= 16;
        }

        while (v196);
        v162 = 2 * v274;
        v149 = xmmword_1003E36F0;
        if (v273 == v274)
        {
          goto LABEL_164;
        }
      }

      v163 = &v153[v162];
      v164 = &v152[v162];
      v165 = &v10[v162];
      do
      {
        v166 = &v150->i8[v162];
        v167 = *v164++;
        v168 = vaddq_f64(*v165, v167);
        v169 = rint(v168.f64[0]);
        v170 = v169 & ~(v169 >> 31);
        if (v170 >= 255)
        {
          LOBYTE(v170) = -1;
        }

        *v166 = v170;
        v171 = rint(v168.f64[1]);
        v172 = v171 & ~(v171 >> 31);
        if (v172 >= 255)
        {
          LOBYTE(v172) = -1;
        }

        v166[1] = v172;
        v173 = *v163++;
        *v165++ = vsubq_f64(v168, v173);
        v162 += 2;
      }

      while (v162 <= v24);
LABEL_164:
      v154 = v162;
      if (v162 >= a6)
      {
        goto LABEL_127;
      }

LABEL_165:
      v174 = a6 - v154;
      if (v174 < 4)
      {
        v175 = v154;
        goto LABEL_167;
      }

      v179 = v276 + v32 * a4;
      v180 = &v150->i8[v154];
      v181 = v154;
      v182 = &v10[v154];
      v183 = &v152[v154];
      v184 = &v153[v154];
      v185 = &v153[v279];
      v187 = &v150->i8[v154] < &v152[v279] && v183 < v179;
      v189 = v180 < v185 && v184 < v179;
      v191 = v182 < &v152[v279] && v183 < v25;
      v193 = v182 < v185 && v184 < v25;
      if (v182 < v179 && v180 < v25)
      {
        v175 = v154;
        goto LABEL_167;
      }

      if (v187)
      {
        v175 = v154;
        do
        {
LABEL_167:
          v176 = v10[v175] + v152[v175];
          v177 = rint(v176);
          v178 = v177 & ~(v177 >> 31);
          if (v178 >= 255)
          {
            LOBYTE(v178) = -1;
          }

          v150->i8[v175] = v178;
          v10[v175] = v176 - v153[v175];
          ++v175;
        }

        while (a6 != v175);
        goto LABEL_127;
      }

      if (v189)
      {
        v175 = v154;
        goto LABEL_167;
      }

      if (v191)
      {
        v175 = v154;
        goto LABEL_167;
      }

      if (v193)
      {
        v175 = v154;
        goto LABEL_167;
      }

      if (v174 >= 0x10)
      {
        v195 = v174 & 0xFFFFFFFFFFFFFFF0;
        v233 = &v10[v181];
        v234 = &v152[v181];
        v235 = &v153[v181];
        v236 = v154;
        v237 = v174 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v238 = vaddq_f64(v233[6], v234[6]);
          v239 = vaddq_f64(v233[7], v234[7]);
          v240 = vaddq_f64(v233[4], v234[4]);
          v241 = vaddq_f64(v233[5], v234[5]);
          v242 = vaddq_f64(v233[2], v234[2]);
          v243 = vaddq_f64(v233[3], v234[3]);
          v244 = vaddq_f64(*v233, *v234);
          v245 = vaddq_f64(v233[1], v234[1]);
          v284.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v238)), vcvtq_s64_f64(vrndxq_f64(v239))), 0), v148);
          v284.val[2] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v240)), vcvtq_s64_f64(vrndxq_f64(v241))), 0), v148);
          v284.val[1] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v242)), vcvtq_s64_f64(vrndxq_f64(v243))), 0), v148);
          v284.val[0] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v244)), vcvtq_s64_f64(vrndxq_f64(v245))), 0), v148);
          *(v150 + v236) = vqtbl4q_s8(v284, v149);
          v246 = *(v235 + 12);
          v247 = *(v235 + 14);
          v248 = *(v235 + 8);
          v284.val[0] = *(v235 + 5);
          v284.val[1] = *(v235 + 2);
          v284.val[2] = *(v235 + 3);
          v284.val[3] = *v235;
          v249 = *(v235 + 2);
          v235 += 16;
          v233[6] = vsubq_f64(v238, v246);
          v233[7] = vsubq_f64(v239, v247);
          v233[4] = vsubq_f64(v240, v248);
          v233[5] = vsubq_f64(v241, v284.val[0]);
          v233[2] = vsubq_f64(v242, v284.val[1]);
          v233[3] = vsubq_f64(v243, v284.val[2]);
          *v233 = vsubq_f64(v244, v284.val[3]);
          v233[1] = vsubq_f64(v245, v249);
          v233 += 8;
          v234 += 8;
          v236 += 16;
          v237 -= 16;
        }

        while (v237);
        if (v174 == v195)
        {
          goto LABEL_127;
        }

        if ((v174 & 0xC) == 0)
        {
          v175 = v195 + v154;
          goto LABEL_167;
        }
      }

      else
      {
        v195 = 0;
      }

      v175 = (v174 & 0xFFFFFFFFFFFFFFFCLL) + v154;
      v250 = v195 - (v174 & 0xFFFFFFFFFFFFFFFCLL);
      v251 = v195 + v154;
      v252 = &v10[v251];
      v253 = &v152[v251];
      v254 = &v153[v251];
      do
      {
        v256 = *v253;
        v255 = v253[1];
        v253 += 2;
        v257 = vaddq_f64(*v252, v256);
        v258 = vaddq_f64(v252[1], v255);
        *(v150->i32 + v251) = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v257)), vcvtq_s64_f64(vrndxq_f64(v258))), 0), v148)), 0).u32[0];
        v259 = *v254;
        v260 = v254[1];
        v254 += 2;
        *v252 = vsubq_f64(v257, v259);
        v252[1] = vsubq_f64(v258, v260);
        v252 += 2;
        v251 += 4;
        v250 += 4;
      }

      while (v250);
      if (v174 != (v174 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_167;
      }

LABEL_127:
      v150 = (v150 + a4);
      ++v8;
      LODWORD(v22) = v151 - 1;
      ++v32;
    }

    while (v151);
  }
}

void sub_10036A384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10036A3BC(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_10036A440(void *a1)
{
  *a1 = off_10047B2B0;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  return nullsub_1(a1);
}

void sub_10036A4A4(void *a1)
{
  *a1 = off_10047B2B0;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  nullsub_1(a1);

  operator delete();
}

void sub_10036A518(uint64_t a1, int32x4_t **a2, uint16x8_t *a3, int a4, int a5, int a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, __n128 a14)
{
  v14 = a6;
  v18 = a2;
  v19 = a1;
  v21 = (a1 + 32);
  v20 = *(a1 + 32);
  v183 = *(a1 + 16);
  v22 = (*(a1 + 40) - v20) >> 2;
  if (v22 == a6)
  {
    v23 = *(a1 + 24);
    if (v23)
    {
      v24 = *(a1 + 8);
      if (v23 != v24 - 1)
      {
        v188[0] = 0;
        v188[1] = 0;
        v25 = sub_1002A80E0(v188, 19);
        *(v25 + 15) = 825058682;
        *v25 = *"sumCount == ksize-1";
        sub_1002A8980(-215, v188, "operator()", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/smooth.cpp", 741);
      }

      v18 = &a2[v24 - 1];
      goto LABEL_15;
    }
  }

  else
  {
    if (a6 <= v22)
    {
      if (a6 < v22)
      {
        *(a1 + 40) = v20 + 4 * a6;
      }
    }

    else
    {
      sub_1002374D8(a1 + 32, a6 - v22);
      v20 = *v21;
    }

    *(v19 + 24) = 0;
  }

  bzero(v20, 4 * v14);
  v26 = *(v19 + 24);
  v27 = *(v19 + 8);
  if (v26 < v27 - 1)
  {
    v28 = (v14 - 4);
    if (v14 >= 4)
    {
      if (((v28 & 0x7FFFFFFC) + 5) <= v14)
      {
        v122 = v14;
      }

      else
      {
        v122 = (v28 & 0x7FFFFFFC) + 5;
      }

      v123 = 4 * v122 - ((4 * (v14 - 4)) & 0x1FFFFFFF0);
      v124 = v122 - (v28 & 0x7FFFFFFC) - 4;
      v125 = v124 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v127 = 0;
        v128 = 0;
        v129 = *v18;
        i64 = (*v18)[2].i64;
        v131 = v20 + 2;
        v132 = 4;
        do
        {
          v133 = v132;
          v134 = v127;
          v135 = i64;
          v136 = v131;
          v20[v128 / 4] = vaddq_s32(v129[v128 / 4], v20[v128 / 4]);
          v128 += 4;
          v132 += 4;
          ++v127;
          i64 += 16;
          ++v131;
        }

        while (v128 <= v28);
        if (v128 < v14)
        {
          if (v124 <= 7)
          {
            goto LABEL_107;
          }

          v137 = 16 * v134;
          v138 = v137 + 16;
          v139 = &v20[v137 / 0x10 + 1];
          v140 = v123 + v137;
          if (v139 < &v129->i8[v140] && &v129->i8[v138] < &v20->i8[v140])
          {
            goto LABEL_107;
          }

          v133 += v125;
          v141 = v124 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v142 = vaddq_s32(*v136, *v135);
            v136[-1] = vaddq_s32(v136[-1], v135[-1]);
            *v136 = v142;
            v135 += 2;
            v136 += 2;
            v141 -= 8;
          }

          while (v141);
          if (v124 != v125)
          {
LABEL_107:
            do
            {
              v20->i32[v133] += v129->i32[v133];
              ++v133;
            }

            while (v133 < v14);
          }
        }

        v126 = *(v19 + 24) + 1;
        *(v19 + 24) = v126;
        ++v18;
      }

      while (v126 < *(v19 + 8) - 1);
    }

    else if (v14 >= 1)
    {
      do
      {
        v85 = *v18;
        v20->i32[0] += (*v18)->i32[0];
        if (v14 != 1)
        {
          v20->i32[1] += v85->i32[1];
          if (v14 != 2)
          {
            v20->i32[2] += v85->i32[2];
          }
        }

        v84 = *(v19 + 24) + 1;
        *(v19 + 24) = v84;
        ++v18;
      }

      while (v84 < *(v19 + 8) - 1);
    }

    else
    {
      v18 += (v27 - v26 - 2) + 1;
      *(v19 + 24) = v27 - 1;
    }
  }

LABEL_15:
  if (a5)
  {
    v29 = a5 - 1;
    v30 = (v14 - 8);
    a14.n128_f32[0] = v183;
    if (v183 != 1.0)
    {
      v31 = &v20->i32[1];
      v32 = v20 + 1;
      v33 = 0uLL;
      v34.i64[0] = 0xFFFF0000FFFFLL;
      v34.i64[1] = 0xFFFF0000FFFFLL;
      v35 = &off_1004B0000;
      v184 = v19;
      v185 = v14;
      while (1)
      {
        v36 = v29;
        v37 = *v18;
        v186 = v18;
        v187 = a3;
        v38 = v18[1 - *(v19 + 8)];
        v39 = 0;
        if (v14 >= 8)
        {
          break;
        }

LABEL_20:
        v14 = v185;
        if (v39 < v185)
        {
          v40 = ~v39 + v185;
          if (v40 <= 6 || ((v60 = 4 * v39, v61 = 4 * (v39 + v40), v62 = &v31[v61 / 4], v63 = v37->u64 + v61 + 4, &v20->i8[v60] < v38->i64 + v61 + 4) ? (v64 = &v38[v39 / 4] >= v62) : (v64 = 1), v64 ? (v65 = 0) : (v65 = 1), &v37[v39 / 4] < v62 ? (v66 = v20->u64 + v60 >= v63) : (v66 = 1), !v66 || (v65 & 1) != 0))
          {
            v41 = v39;
            v42 = v183;
            do
            {
LABEL_23:
              v43 = v37->i32[v41] + v20->i32[v41];
              v44 = rint(v42 * v43);
              v45 = v44 & ~(v44 >> 31);
              if (v45 >= 0xFFFF)
              {
                LOWORD(v45) = -1;
              }

              v187->i16[v41] = v45;
              v20->i32[v41] = v43 - v38->i32[v41];
              ++v41;
            }

            while (v41 < v185);
            goto LABEL_18;
          }

          v67 = v40 + 1;
          v68 = (v40 + 1) & 0x1FFFFFFF8;
          v41 = v68 + v39;
          v69 = (v20 + v60);
          v70 = (v37 + v60);
          v71 = 2 * v39;
          v72 = (v38 + v60);
          v73 = v68;
          v42 = v183;
          do
          {
            v74 = *v70;
            v75 = v70[1];
            v70 += 2;
            v76 = vaddq_s32(v75, v69[1]);
            v77 = vaddq_s32(v74, *v69);
            v78.i64[0] = v77.i32[2];
            v78.i64[1] = v77.i32[3];
            v79 = vcvtq_f64_s64(v78);
            v78.i64[0] = v77.i32[0];
            v78.i64[1] = v77.i32[1];
            v80 = vcvtq_f64_s64(v78);
            v78.i64[0] = v76.i32[2];
            v78.i64[1] = v76.i32[3];
            v81 = vcvtq_f64_s64(v78);
            v78.i64[0] = v76.i32[0];
            v78.i64[1] = v76.i32[1];
            *(v187 + v71) = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v80, v183))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v79, v183)))), v33), v34), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(vcvtq_f64_s64(v78), v183))), vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v81, v183)))), v33), v34));
            v82 = *v72;
            v83 = v72[1];
            v72 += 2;
            *v69 = vsubq_s32(v77, v82);
            v69[1] = vsubq_s32(v76, v83);
            v69 += 2;
            v71 += 16;
            v73 -= 8;
          }

          while (v73);
          if (v67 != v68)
          {
            goto LABEL_23;
          }
        }

LABEL_18:
        a3 = (v187 + a4);
        v18 = v186 + 1;
        v29 = v36 - 1;
        v19 = v184;
        if (!v36)
        {
          return;
        }
      }

      v46 = v37 + 1;
      v47 = v38 + 1;
      v48 = v32;
      while (1)
      {
        v49 = v48[-1];
        v50 = *v48;
        v51 = v46[-1];
        v52 = *v46;
        if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
        {
          if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
          {
            goto LABEL_30;
          }
        }

        else
        {
          v179 = v30;
          v175 = a14;
          v167 = v32;
          v171 = v31;
          v163 = v36;
          v155 = v50;
          v159 = v49;
          v147 = v52;
          v151 = v51;
          sub_1003C8EA4();
          v52 = v147;
          v51 = v151;
          v50 = v155;
          v49 = v159;
          v36 = v163;
          v35 = &off_1004B0000;
          v34.i64[0] = 0xFFFF0000FFFFLL;
          v34.i64[1] = 0xFFFF0000FFFFLL;
          v33 = 0uLL;
          v32 = v167;
          v31 = v171;
          a14 = v175;
          v30 = v179;
          if (atomic_load_explicit(qword_1004B0040, memory_order_acquire))
          {
LABEL_30:
            v53 = v35[3];
            v54 = xmmword_1004B0010;
            if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
            {
              goto LABEL_31;
            }

            goto LABEL_36;
          }
        }

        v180 = v30;
        v176 = a14;
        v168 = v32;
        v172 = v31;
        v164 = v36;
        v156 = v50;
        v160 = v49;
        v148 = v52;
        v152 = v51;
        sub_1003C8ED8();
        v52 = v148;
        v51 = v152;
        v50 = v156;
        v49 = v160;
        v36 = v164;
        v35 = &off_1004B0000;
        v34.i64[0] = 0xFFFF0000FFFFLL;
        v34.i64[1] = 0xFFFF0000FFFFLL;
        v33 = 0uLL;
        v32 = v168;
        v31 = v172;
        a14 = v176;
        v30 = v180;
        v53 = xmmword_1004B0030;
        v54 = xmmword_1004B0010;
        if (atomic_load_explicit(qword_1004B0020, memory_order_acquire))
        {
LABEL_31:
          if ((atomic_load_explicit(qword_1004B0040, memory_order_acquire) & 1) == 0)
          {
            goto LABEL_37;
          }

          goto LABEL_32;
        }

LABEL_36:
        v181 = v30;
        v177 = a14;
        v169 = v32;
        v173 = v31;
        v165 = v36;
        v157 = v50;
        v161 = v49;
        v149 = v52;
        v153 = v51;
        v143 = v54;
        v145 = v53;
        sub_1003C8EA4();
        v54 = v143;
        v53 = v145;
        v52 = v149;
        v51 = v153;
        v50 = v157;
        v49 = v161;
        v36 = v165;
        v35 = &off_1004B0000;
        v34.i64[0] = 0xFFFF0000FFFFLL;
        v34.i64[1] = 0xFFFF0000FFFFLL;
        v33 = 0uLL;
        v32 = v169;
        v31 = v173;
        a14 = v177;
        v30 = v181;
        if ((atomic_load_explicit(qword_1004B0040, memory_order_acquire) & 1) == 0)
        {
LABEL_37:
          v182 = v30;
          v178 = a14;
          v170 = v32;
          v174 = v31;
          v166 = v36;
          v158 = v50;
          v162 = v49;
          v150 = v52;
          v154 = v51;
          v144 = v54;
          v146 = v53;
          sub_1003C8ED8();
          v54 = v144;
          v53 = v146;
          v52 = v150;
          v51 = v154;
          v50 = v158;
          v49 = v162;
          v36 = v166;
          v35 = &off_1004B0000;
          v34.i64[0] = 0xFFFF0000FFFFLL;
          v34.i64[1] = 0xFFFF0000FFFFLL;
          v33 = 0uLL;
          v32 = v170;
          v31 = v174;
          a14 = v178;
          v30 = v182;
        }

LABEL_32:
        v55 = vaddq_s32(v51, v49);
        v56 = vaddq_s32(v52, v50);
        v57 = vmulq_n_f32(vcvtq_f32_s32(v55), a14.n128_f32[0]);
        v58 = vmulq_n_f32(vcvtq_f32_s32(v56), a14.n128_f32[0]);
        *a3++ = vqmovn_high_u32(vqmovn_u32(vcvtq_s32_f32(vaddq_f32(v57, vorrq_s8(vandq_s8(v54, v57), v53)))), vcvtq_s32_f32(vaddq_f32(v58, vorrq_s8(vandq_s8(xmmword_1004B0010, v58), v35[3]))));
        v48[-1] = vsubq_s32(v55, v47[-1]);
        v59 = *v47;
        v47 += 2;
        *v48 = vsubq_s32(v56, v59);
        v48 += 2;
        v46 += 2;
        v39 += 8;
        if (v30 < v39)
        {
          goto LABEL_20;
        }
      }
    }

    v86 = v30;
    v87 = v14;
    v88 = v20->u64 + v87 * 4;
    v89.i64[0] = 0xFFFF0000FFFFLL;
    v89.i64[1] = 0xFFFF0000FFFFLL;
    do
    {
      v90 = v29;
      v91 = *v18;
      v92 = v18[1 - *(v19 + 8)];
      if (v14 >= 8)
      {
        v94 = 0;
        v95 = v92 + 1;
        v96 = v91 + 1;
        v97 = v20 + 1;
        v98 = a3;
        do
        {
          v99 = vaddq_s32(v96[-1], v97[-1]);
          v100 = vaddq_s32(*v96, *v97);
          *v98++ = vqmovn_high_u32(vqmovn_u32(v99), v100);
          v97[-1] = vsubq_s32(v99, v95[-1]);
          v101 = *v95;
          v95 += 2;
          v94 += 8;
          *v97 = vsubq_s32(v100, v101);
          v97 += 2;
          v96 += 2;
        }

        while (v94 <= v86);
        v93 = v94;
        if (v94 >= v14)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v93 = 0;
        if (v14 <= 0)
        {
          goto LABEL_59;
        }
      }

      v102 = v14 - v93;
      if (v102 <= 7 || ((v106 = 4 * v93, v107 = &v20->i32[v93], v107 < &v92->i32[v87]) ? (v108 = v92 + 4 * v93 >= v88) : (v108 = 1), v108 ? (v109 = 0) : (v109 = 1), v91 + 4 * v93 < v88 ? (v110 = v107 >= &v91->i32[v87]) : (v110 = 1), !v110 || (v109 & 1) != 0))
      {
        v103 = v93;
        do
        {
LABEL_68:
          v104 = v91->i32[v103] + v20->i32[v103];
          v105 = v104 & ~(v104 >> 31);
          if (v105 >= 0xFFFF)
          {
            LOWORD(v105) = -1;
          }

          a3->i16[v103] = v105;
          v20->i32[v103] = v104 - v92->i32[v103];
          ++v103;
        }

        while (v14 != v103);
        goto LABEL_59;
      }

      v103 = (v102 & 0xFFFFFFFFFFFFFFF8) + v93;
      v111 = (v20 + v106);
      v112 = (v91 + v106);
      v113 = 2 * v93;
      v114 = (v92 + v106);
      v115 = v102 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v116 = *v112;
        v117 = v112[1];
        v112 += 2;
        v118 = vaddq_s32(v117, v111[1]);
        v119 = vaddq_s32(v116, *v111);
        *(a3 + v113) = vuzp1q_s16(vminq_s32(vmaxq_s32(v119, 0), v89), vminq_s32(vmaxq_s32(v118, 0), v89));
        v120 = *v114;
        v121 = v114[1];
        v114 += 2;
        *v111 = vsubq_s32(v119, v120);
        v111[1] = vsubq_s32(v118, v121);
        v111 += 2;
        v113 += 16;
        v115 -= 8;
      }

      while (v115);
      if (v102 != (v102 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_68;
      }

LABEL_59:
      a3 = (a3 + a4);
      ++v18;
      v29 = v90 - 1;
    }

    while (v90);
  }
}