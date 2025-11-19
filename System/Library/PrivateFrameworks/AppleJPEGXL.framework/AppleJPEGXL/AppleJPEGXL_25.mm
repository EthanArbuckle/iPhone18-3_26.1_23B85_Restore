uint64_t sub_240BFD6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, char *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int128 a29, __int128 a30, __int128 a31, __int128 a32, __int128 a33, __int128 a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  a42 = *MEMORY[0x277D85DE8];
  if ((**a1 - (a3 << 8)) >= 0x100)
  {
    v45 = 256;
  }

  else
  {
    v45 = **a1 - (a3 << 8);
  }

  v44 = *(a1 + 8);
  if ((*v44 - (a2 << 8)) >= 0x100)
  {
    v46 = 256;
  }

  else
  {
    v46 = *v44 - (a2 << 8);
  }

  a9 = 0;
  vars0 = (*(*(a1 + 16) + 16))(**(a1 + 16), a2 << 8, a3 << 8, v46, v45, &a9);
  v47 = (v45 - a4) & ~((v45 - a4) >> 63);
  v48 = (v47 >> 1);
  v49 = v45 - (v47 >> 1);
  if (v49 >= a4)
  {
    v49 = a4;
  }

  v50 = v46 & 0x1F0;
  v129 = a9;
  v130 = v48;
  v131 = v49;
  v52 = *(a1 + 24);
  v51 = *(a1 + 32);
  v53 = **(a1 + 64);
  if ((**(a1 + 48) & 1) == 0)
  {
    v57 = **(a1 + 40);
    v58 = **(a1 + 80);
    a14 = 0;
    a16 = 0;
    a18 = 0;
    a20 = 0;
    if (v53)
    {
      v59 = v52 + 152 * v57;
      v60 = v51 + 264 * v57;
      v61 = &a13;
      v62 = &a21;
      v63 = v53;
      do
      {
        *v61 = v62;
        v61 += 16;
        *v62 = v59;
        *(v62 + 1) = v60;
        v62 += 16;
        --v63;
      }

      while (v63);
    }

    sub_240BFEA38();
  }

  v128 = **(a1 + 72);
  a14 = 0;
  a16 = 0;
  a18 = 0;
  a20 = 0;
  v127 = a1;
  if (v53)
  {
    v54 = &a13;
    v55 = &a21;
    v56 = v53;
    do
    {
      *v55 = v52;
      *(v55 + 1) = v51;
      v51 += 264;
      v52 += 152;
      *v54 = v55;
      v54 += 16;
      v55 += 16;
      --v56;
    }

    while (v56);
    sub_240BFF50C(&__p, v53);
  }

  else
  {
    __p = 0;
    a11 = 0;
    a12 = 0;
  }

  if (v131 != -1)
  {
    v64 = 0;
    v65 = 1;
    v66 = 0uLL;
    do
    {
      a31 = v66;
      a32 = v66;
      v67 = (vars0 + (v64 + v130) * v129);
      a29 = v66;
      a30 = v66;
      vars8 = v65;
      if (v53)
      {
        v68 = 0;
        v69 = 0;
        v70 = &__p[704 * (v65 & 1) + 64];
        v71 = &__p[704 * (v64 & 1) + 64];
        v72 = v71;
        v73 = v70;
        do
        {
          *(&a31 + v69) = &v71[v68 + (v72 & 0x3E)];
          *(&a29 + v69++) = &v70[v68 + (v73 & 0x3E)];
          v73 += 1408;
          v68 += 1408;
          v72 += 1408;
        }

        while (v53 != v69);
        v74 = a31;
        switch(v53)
        {
          case 1uLL:
            if (v128)
            {
              sub_240BFF5EC(v67, v50, a31);
            }

            else
            {
              sub_240BFF65C(v67->i8, v50, a31);
            }

            goto LABEL_43;
          case 2uLL:
            if (v128)
            {
              sub_240BFF6C0(v67->i16, v50, a31, *(&a31 + 1));
            }

            else
            {
              sub_240BFF750(v67->i16, v50, a31, *(&a31 + 1));
            }

            goto LABEL_43;
          case 3uLL:
            if (v128)
            {
              sub_240BFF7C8(v67->i16, v50, a31, *(&a31 + 1), a32);
            }

            else
            {
              sub_240BFF8A0(v67->i16, v50, a31, *(&a31 + 1), a32);
            }

LABEL_43:
            v66 = 0uLL;
            v78 = xmmword_240C11A20;
            v79.i64[0] = 0x8000800080008;
            v79.i64[1] = 0x8000800080008;
LABEL_44:
            for (i = 0; i != v53; ++i)
            {
              while (!v64)
              {
                *(*(&a31 + i) - 2) = 0;
                *(*(&a29 + i++) - 2) = 0;
                if (i == v53)
                {
                  goto LABEL_87;
                }
              }

              v81 = *(&a29 + i);
              v82 = *v81;
              *(*(&a31 + i) - 2) = *v81;
              *(v81 - 1) = v82;
            }

            v83 = 0;
            while (!v50)
            {
LABEL_86:
              if (++v83 == v53)
              {
                goto LABEL_87;
              }
            }

            v84 = 0;
            v85 = *(&a31 + v83);
            v86 = *(&a29 + v83);
            v87 = &a13 + 16 * v83;
            v88 = *(v87 + 1);
            v89 = v50;
            while (2)
            {
              v90 = 0;
              v91 = 0;
              v92 = v89 - 16;
              if (v89 >= 0x10)
              {
                v93 = 16;
              }

              else
              {
                v93 = v89;
              }

              a33 = v66;
              a34 = v66;
              v94 = &a33;
              v95 = 1;
              do
              {
                v96 = *(v85 - 2 + 2 * v84 + 2 * v90);
                v97 = *(v86 + 2 * v84 + 2 * v90);
                v98 = *(v86 - 2 + 2 * v84 + 2 * v90);
                v99 = vsubq_s16(v96, v98);
                v100 = vsubq_s16(v97, v98);
                v101 = vsubq_s16(*(v85 + 2 * v84 + 2 * v90), vbslq_s8(vcltzq_s16(veorq_s8(v99, v100)), vaddq_s16(v99, v97), vbslq_s8(vcltzq_s16(veorq_s8(v100, vsubq_s16(v96, v97))), v97, v96)));
                v102 = vaddq_s16(v101, v101);
                v103 = vcltzq_s16(v101);
                v104 = v95;
                v105 = vbslq_s8(vceqq_s16(v102, v103), v79, v78);
                v105.i16[0] = vminvq_u16(v105);
                if (v91 == v90)
                {
                  v106 = v105.u32[0];
                }

                else
                {
                  v106 = 0;
                }

                *v94 = veorq_s8(v102, v103);
                v91 += v106;
                v94 = (&a33 | 0x10);
                v90 = 8;
                v95 = 0;
              }

              while ((v104 & 1) != 0);
              v107 = v50 - v84;
              if (v50 - v84 >= 0x10)
              {
                v107 = 16;
              }

              v108 = v88;
              if (v91 >= v107)
              {
                v109 = v107;
              }

              else
              {
                v109 = v91;
              }

              if (v91 < v107)
              {
LABEL_69:
                v110 = v108 + v109;
                v111 = *v87;
                if (v110 >= 8)
                {
                  v113 = *v111;
                  v112 = v111[1];
                  ++**v111;
                  v114 = v110 - 8;
                  v115 = 43 - __clz(v114);
                  if (v114 >= 0x10)
                  {
                    v114 = v115;
                  }

                  ++*(v112 + 8 * v114);
                  if (v91 < v107)
                  {
                    if (v89 >= v91)
                    {
                      v89 = v91;
                    }

                    if (v89 >= 0x10)
                    {
                      v89 = 16;
                    }

                    v116 = v93 - v89;
                    v117 = (&a33 | (2 * v89));
                    do
                    {
                      v118 = *v117++;
                      v119 = 32 - __clz(v118);
                      ++v113[v119];
                      --v116;
                    }

                    while (v116);
                  }

                  v88 = 0;
                  goto LABEL_84;
                }

                v120 = *v111;
                v121 = &a33;
                do
                {
                  v122 = *v121;
                  v121 = (v121 + 2);
                  v123 = 32 - __clz(v122);
                  ++v120[v123];
                  --v93;
                }

                while (v93);
              }

              else
              {
                if (!v88 && v109 < 8)
                {
                  v108 = 0;
                  goto LABEL_69;
                }

                v88 += v109;
LABEL_84:
                *(v87 + 1) = v88;
              }

              v84 += 16;
              v89 = v92;
              if (v84 >= v50)
              {
                goto LABEL_86;
              }

              continue;
            }
        }

        v77 = *(&a31 + 1);
        v75 = *(&a32 + 1);
        v76 = a32;
      }

      else
      {
        v75 = 0;
        v76 = 0;
        v77 = 0;
        v74 = 0;
      }

      if (v128)
      {
        sub_240BFF958(v67->i16, v50, v74, v77, v76, v75);
      }

      else
      {
        sub_240BFFA4C(v67->i16, v50, v74, v77, v76, v75);
      }

      v66 = 0uLL;
      v78 = xmmword_240C11A20;
      v79.i64[0] = 0x8000800080008;
      v79.i64[1] = 0x8000800080008;
      if (v53)
      {
        goto LABEL_44;
      }

LABEL_87:
      v65 = (vars8 + 1);
    }

    while (v64++ != v131);
  }

  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  result = (*(*(v127 + 16) + 40))(**(v127 + 16), vars0);
  v126 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_240BFDD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, char *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int128 a29, __int128 a30, __int128 a31, __int128 a32, __int128 a33, __int128 a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  a42 = *MEMORY[0x277D85DE8];
  if ((**a1 - (a3 << 8)) >= 0x100)
  {
    v45 = 256;
  }

  else
  {
    v45 = **a1 - (a3 << 8);
  }

  v44 = *(a1 + 8);
  if ((*v44 - (a2 << 8)) >= 0x100)
  {
    v46 = 256;
  }

  else
  {
    v46 = *v44 - (a2 << 8);
  }

  a9 = 0;
  vars0 = (*(*(a1 + 16) + 16))(**(a1 + 16), a2 << 8, a3 << 8, v46, v45, &a9);
  v47 = (v45 - a4) & ~((v45 - a4) >> 63);
  v48 = (v47 >> 1);
  v49 = v45 - (v47 >> 1);
  if (v49 >= a4)
  {
    v49 = a4;
  }

  v50 = v46 & 0x1F0;
  v129 = a9;
  v130 = v48;
  v131 = v49;
  v52 = *(a1 + 24);
  v51 = *(a1 + 32);
  v53 = **(a1 + 64);
  if ((**(a1 + 48) & 1) == 0)
  {
    v57 = **(a1 + 40);
    v58 = **(a1 + 80);
    a14 = 0;
    a16 = 0;
    a18 = 0;
    a20 = 0;
    if (v53)
    {
      v59 = v52 + 152 * v57;
      v60 = v51 + 264 * v57;
      v61 = &a13;
      v62 = &a21;
      v63 = v53;
      do
      {
        *v61 = v62;
        v61 += 16;
        *v62 = v59;
        *(v62 + 1) = v60;
        v62 += 16;
        --v63;
      }

      while (v63);
    }

    sub_240BFEA38();
  }

  v128 = **(a1 + 72);
  a14 = 0;
  a16 = 0;
  a18 = 0;
  a20 = 0;
  v127 = a1;
  if (v53)
  {
    v54 = &a13;
    v55 = &a21;
    v56 = v53;
    do
    {
      *v55 = v52;
      *(v55 + 1) = v51;
      v51 += 264;
      v52 += 152;
      *v54 = v55;
      v54 += 16;
      v55 += 16;
      --v56;
    }

    while (v56);
    sub_240BFF50C(&__p, v53);
  }

  else
  {
    __p = 0;
    a11 = 0;
    a12 = 0;
  }

  if (v131 != -1)
  {
    v64 = 0;
    v65 = 1;
    v66 = 0uLL;
    do
    {
      a31 = v66;
      a32 = v66;
      v67 = (vars0 + (v64 + v130) * v129);
      a29 = v66;
      a30 = v66;
      vars8 = v65;
      if (v53)
      {
        v68 = 0;
        v69 = 0;
        v70 = &__p[704 * (v65 & 1) + 64];
        v71 = &__p[704 * (v64 & 1) + 64];
        v72 = v71;
        v73 = v70;
        do
        {
          *(&a31 + v69) = &v71[v68 + (v72 & 0x3E)];
          *(&a29 + v69++) = &v70[v68 + (v73 & 0x3E)];
          v73 += 1408;
          v68 += 1408;
          v72 += 1408;
        }

        while (v53 != v69);
        v74 = a31;
        switch(v53)
        {
          case 1uLL:
            if (v128)
            {
              sub_240BFF5EC(v67, v50, a31);
            }

            else
            {
              sub_240BFF65C(v67->i8, v50, a31);
            }

            goto LABEL_43;
          case 2uLL:
            if (v128)
            {
              sub_240BFF6C0(v67->i16, v50, a31, *(&a31 + 1));
            }

            else
            {
              sub_240BFF750(v67->i16, v50, a31, *(&a31 + 1));
            }

            goto LABEL_43;
          case 3uLL:
            if (v128)
            {
              sub_240BFF7C8(v67->i16, v50, a31, *(&a31 + 1), a32);
            }

            else
            {
              sub_240BFF8A0(v67->i16, v50, a31, *(&a31 + 1), a32);
            }

LABEL_43:
            v66 = 0uLL;
            v78 = xmmword_240C11A20;
            v79.i64[0] = 0x8000800080008;
            v79.i64[1] = 0x8000800080008;
LABEL_44:
            for (i = 0; i != v53; ++i)
            {
              while (!v64)
              {
                *(*(&a31 + i) - 2) = 0;
                *(*(&a29 + i++) - 2) = 0;
                if (i == v53)
                {
                  goto LABEL_87;
                }
              }

              v81 = *(&a29 + i);
              v82 = *v81;
              *(*(&a31 + i) - 2) = *v81;
              *(v81 - 1) = v82;
            }

            v83 = 0;
            while (!v50)
            {
LABEL_86:
              if (++v83 == v53)
              {
                goto LABEL_87;
              }
            }

            v84 = 0;
            v85 = *(&a31 + v83);
            v86 = *(&a29 + v83);
            v87 = &a13 + 16 * v83;
            v88 = *(v87 + 1);
            v89 = v50;
            while (2)
            {
              v90 = 0;
              v91 = 0;
              v92 = v89 - 16;
              if (v89 >= 0x10)
              {
                v93 = 16;
              }

              else
              {
                v93 = v89;
              }

              a33 = v66;
              a34 = v66;
              v94 = &a33;
              v95 = 1;
              do
              {
                v96 = *(v85 - 2 + 2 * v84 + 2 * v90);
                v97 = *(v86 + 2 * v84 + 2 * v90);
                v98 = *(v86 - 2 + 2 * v84 + 2 * v90);
                v99 = vsubq_s16(v96, v98);
                v100 = vsubq_s16(v97, v98);
                v101 = vsubq_s16(*(v85 + 2 * v84 + 2 * v90), vbslq_s8(vcltzq_s16(veorq_s8(v99, v100)), vaddq_s16(v99, v97), vbslq_s8(vcltzq_s16(veorq_s8(v100, vsubq_s16(v96, v97))), v97, v96)));
                v102 = vaddq_s16(v101, v101);
                v103 = vcltzq_s16(v101);
                v104 = v95;
                v105 = vbslq_s8(vceqq_s16(v102, v103), v79, v78);
                v105.i16[0] = vminvq_u16(v105);
                if (v91 == v90)
                {
                  v106 = v105.u32[0];
                }

                else
                {
                  v106 = 0;
                }

                *v94 = veorq_s8(v102, v103);
                v91 += v106;
                v94 = (&a33 | 0x10);
                v90 = 8;
                v95 = 0;
              }

              while ((v104 & 1) != 0);
              v107 = v50 - v84;
              if (v50 - v84 >= 0x10)
              {
                v107 = 16;
              }

              v108 = v88;
              if (v91 >= v107)
              {
                v109 = v107;
              }

              else
              {
                v109 = v91;
              }

              if (v91 < v107)
              {
LABEL_69:
                v110 = v108 + v109;
                v111 = *v87;
                if (v110 >= 8)
                {
                  v113 = *v111;
                  v112 = v111[1];
                  ++**v111;
                  v114 = v110 - 8;
                  v115 = 43 - __clz(v114);
                  if (v114 >= 0x10)
                  {
                    v114 = v115;
                  }

                  ++*(v112 + 8 * v114);
                  if (v91 < v107)
                  {
                    if (v89 >= v91)
                    {
                      v89 = v91;
                    }

                    if (v89 >= 0x10)
                    {
                      v89 = 16;
                    }

                    v116 = v93 - v89;
                    v117 = (&a33 | (2 * v89));
                    do
                    {
                      v118 = *v117++;
                      v119 = 32 - __clz(v118);
                      ++v113[v119];
                      --v116;
                    }

                    while (v116);
                  }

                  v88 = 0;
                  goto LABEL_84;
                }

                v120 = *v111;
                v121 = &a33;
                do
                {
                  v122 = *v121;
                  v121 = (v121 + 2);
                  v123 = 32 - __clz(v122);
                  ++v120[v123];
                  --v93;
                }

                while (v93);
              }

              else
              {
                if (!v88 && v109 < 8)
                {
                  v108 = 0;
                  goto LABEL_69;
                }

                v88 += v109;
LABEL_84:
                *(v87 + 1) = v88;
              }

              v84 += 16;
              v89 = v92;
              if (v84 >= v50)
              {
                goto LABEL_86;
              }

              continue;
            }
        }

        v77 = *(&a31 + 1);
        v75 = *(&a32 + 1);
        v76 = a32;
      }

      else
      {
        v75 = 0;
        v76 = 0;
        v77 = 0;
        v74 = 0;
      }

      if (v128)
      {
        sub_240BFF958(v67->i16, v50, v74, v77, v76, v75);
      }

      else
      {
        sub_240BFFA4C(v67->i16, v50, v74, v77, v76, v75);
      }

      v66 = 0uLL;
      v78 = xmmword_240C11A20;
      v79.i64[0] = 0x8000800080008;
      v79.i64[1] = 0x8000800080008;
      if (v53)
      {
        goto LABEL_44;
      }

LABEL_87:
      v65 = (vars8 + 1);
    }

    while (v64++ != v131);
  }

  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  result = (*(*(v127 + 16) + 40))(**(v127 + 16), vars0);
  v126 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_240BFE314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, char *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int128 a29, __int128 a30, __int128 a31, __int128 a32, __int128 a33, __int128 a34, __int128 a35, __int128 a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  a40 = *MEMORY[0x277D85DE8];
  if ((**a1 - (a3 << 8)) >= 0x100)
  {
    v43 = 256;
  }

  else
  {
    v43 = **a1 - (a3 << 8);
  }

  v42 = *(a1 + 8);
  if ((*v42 - (a2 << 8)) >= 0x100)
  {
    v44 = 256;
  }

  else
  {
    v44 = *v42 - (a2 << 8);
  }

  a9 = 0;
  vars8 = (*(*(a1 + 16) + 16))(**(a1 + 16), a2 << 8, a3 << 8, v44, v43, &a9);
  v45 = (v43 - a4) & ~((v43 - a4) >> 63);
  v46 = (v45 >> 1);
  v47 = v43 - (v45 >> 1);
  if (v47 >= a4)
  {
    v47 = a4;
  }

  v48 = v44 & 0x1F0;
  v49 = a9;
  v150 = v46;
  vars0 = v47;
  v51 = *(a1 + 24);
  v50 = *(a1 + 32);
  v52 = **(a1 + 64);
  if ((**(a1 + 48) & 1) == 0)
  {
    v56 = **(a1 + 40);
    v57 = **(a1 + 80);
    a22 = 0;
    a24 = 0;
    a26 = 0;
    a28 = 0;
    if (v52)
    {
      v58 = v51 + 152 * v56;
      v59 = v50 + 264 * v56;
      v60 = &a21;
      v61 = &a33;
      v62 = v52;
      do
      {
        *v60 = v61;
        v60 += 16;
        *v61 = v58;
        *(v61++ + 1) = v59;
        --v62;
      }

      while (v62);
    }

    sub_240BFEA38();
  }

  v147 = **(a1 + 72);
  a14 = 0;
  a16 = 0;
  a18 = 0;
  a20 = 0;
  v146 = a1;
  if (v52)
  {
    v53 = &a13;
    v54 = &a21;
    v55 = v52;
    do
    {
      *v54 = v51;
      *(v54 + 1) = v50;
      v50 += 264;
      v51 += 152;
      *v53 = v54;
      v53 += 16;
      v54 += 16;
      --v55;
    }

    while (v55);
    sub_240BFEC3C(&__p, v52);
  }

  else
  {
    __p = 0;
    a11 = 0;
    a12 = 0;
  }

  if (vars0 != -1)
  {
    v63 = v49;
    v64 = 0;
    v65 = (vars8 + v49 * v150);
    v66 = 1;
    v67 = 0uLL;
    v68 = xmmword_240C115E0;
    v69.i64[0] = 0x400000004;
    v69.i64[1] = 0x400000004;
    do
    {
      a31 = v67;
      a32 = v67;
      v70 = (vars8 + (v64 + v150) * v63);
      a29 = v67;
      a30 = v67;
      if (v52)
      {
        v71 = 0;
        v72 = 0;
        v73 = &__p[1344 * (v66 & 1) + 128];
        v74 = &__p[1344 * (v64 & 1) + 128];
        v75 = v74;
        v76 = v73;
        do
        {
          *(&a31 + v72) = &v74[v71 + (v75 & 0x3C)];
          *(&a29 + v72++) = &v73[v71 + (v76 & 0x3C)];
          v76 += 2688;
          v71 += 2688;
          v75 += 2688;
        }

        while (v52 != v72);
        v77 = a31;
        switch(v52)
        {
          case 1uLL:
            if (v147)
            {
              if ((v44 & 0x1F0) != 0)
              {
                v82 = 0;
                v83 = 0;
                v84 = (a31 + 16);
                do
                {
                  v85 = vrev16q_s8(v65[v82]);
                  v86 = v83 + 8;
                  v87 = v83 + 16;
                  v84[-1] = vmovl_u16(*v85.i8);
                  *v84 = vmovl_high_u16(v85);
                  v84 += 2;
                  ++v82;
                  v83 += 8;
                }

                while (v87 <= v48);
              }

              else
              {
                v86 = 0;
              }

              if (v86 < v48)
              {
                v137 = v86 - (v44 & 0xFFFFFFFFFFFFFFF0);
                v138 = v86;
                v139 = v77 + v86;
                do
                {
                  *v139++ = bswap32(v65->u16[v138++]) >> 16;
                  v140 = __CFADD__(v137++, 1);
                }

                while (!v140);
              }
            }

            else
            {
              if ((v44 & 0x1F0) != 0)
              {
                v88 = 0;
                v89 = (a31 + 16);
                v90 = v65;
                do
                {
                  v91 = *v90++;
                  v89[-1] = vmovl_u16(*v91.i8);
                  *v89 = vmovl_high_u16(v91);
                  v92 = v88 + 8;
                  v93 = v88 + 16;
                  v89 += 2;
                  v88 += 8;
                }

                while (v93 <= v48);
              }

              else
              {
                v92 = 0;
              }

              if (v92 < v48)
              {
                v141 = v92 - (v44 & 0xFFFFFFFFFFFFFFF0);
                v142 = v92;
                v143 = &v77->i32[v92];
                do
                {
                  *v143++ = v65->u16[v142++];
                  v140 = __CFADD__(v141++, 1);
                }

                while (!v140);
              }
            }

            goto LABEL_42;
          case 2uLL:
            v148 = v65;
            v78 = v66;
            if (v147)
            {
              sub_240BFED1C(v70, v48, a31, *(&a31 + 1));
            }

            else
            {
              sub_240BFEDC4(v70, v48, a31, *(&a31 + 1));
            }

            goto LABEL_50;
          case 3uLL:
            v148 = v65;
            v78 = v66;
            if (v147)
            {
              sub_240BFEE54(v70, v48, a31, *(&a31 + 1), a32);
            }

            else
            {
              sub_240BFEF54(v70, v48, a31, *(&a31 + 1), a32);
            }

LABEL_50:
            v66 = v78;
            v65 = v148;
            v67 = 0uLL;
            v68 = xmmword_240C115E0;
            v69.i64[0] = 0x400000004;
            v69.i64[1] = 0x400000004;
LABEL_51:
            for (i = 0; i != v52; ++i)
            {
              while (!v64)
              {
                *(*(&a31 + i) - 4) = 0;
                *(*(&a29 + i++) - 4) = 0;
                if (i == v52)
                {
                  goto LABEL_93;
                }
              }

              v95 = *(&a29 + i);
              v96 = *v95;
              *(*(&a31 + i) - 4) = *v95;
              *(v95 - 1) = v96;
            }

            v97 = 0;
            while ((v44 & 0x1F0) == 0)
            {
LABEL_92:
              if (++v97 == v52)
              {
                goto LABEL_93;
              }
            }

            v98 = 0;
            v99 = *(&a31 + v97);
            v100 = *(&a29 + v97);
            v101 = &a13 + 16 * v97;
            v102 = *(v101 + 1);
            v103 = v44 & 0x1F0;
            while (2)
            {
              v104 = 0;
              v105 = v103 - 16;
              if (v103 >= 0x10)
              {
                v106 = 16;
              }

              else
              {
                v106 = v103;
              }

              a35 = v67;
              a36 = v67;
              a33 = v67;
              a34 = v67;
              v107 = -4;
              v108 = &a33;
              v109 = v99;
              v110 = v100;
              do
              {
                v107 += 4;
                v111 = *(v109 - 4);
                v112 = *(v110 - 4);
                v113 = vsubq_s32(v111, v112);
                v114 = vsubq_s32(*v110, v112);
                v115 = vsubq_s32(*v109, vbslq_s8(vcltzq_s32(veorq_s8(v113, v114)), vaddq_s32(v113, *v110), vbslq_s8(vcltzq_s32(veorq_s8(v114, vsubq_s32(v111, *v110))), *v110, v111)));
                v116 = vaddq_s32(v115, v115);
                v117 = vcltzq_s32(v115);
                v118 = vminvq_u32(vbslq_s8(vceqq_s32(v116, v117), v69, v68));
                *v108++ = veorq_s8(v116, v117);
                if (v107 != v104)
                {
                  v118 = 0;
                }

                v104 += v118;
                ++v110;
                ++v109;
              }

              while (v107 < 0xC);
              v119 = v48 - v98;
              if (v48 - v98 >= 0x10)
              {
                v119 = 16;
              }

              v120 = v102;
              if (v104 >= v119)
              {
                v121 = v119;
              }

              else
              {
                v121 = v104;
              }

              if (v104 < v119)
              {
LABEL_75:
                v122 = v120 + v121;
                v123 = *v101;
                if (v122 >= 8)
                {
                  v125 = *v123;
                  v124 = v123[1];
                  ++**v123;
                  v126 = v122 - 8;
                  v127 = 43 - __clz(v126);
                  if (v126 >= 0x10)
                  {
                    v126 = v127;
                  }

                  ++*(v124 + 8 * v126);
                  if (v104 < v119)
                  {
                    if (v103 >= v104)
                    {
                      v103 = v104;
                    }

                    if (v103 >= 0x10)
                    {
                      v103 = 16;
                    }

                    v128 = v106 - v103;
                    v129 = &a33 + v103;
                    do
                    {
                      v130 = *v129++;
                      v131 = __clz(v130);
                      ++v125[32 - v131];
                      --v128;
                    }

                    while (v128);
                  }

                  v102 = 0;
                  goto LABEL_90;
                }

                v132 = *v123;
                v133 = &a33;
                do
                {
                  v134 = *v133++;
                  v135 = 32 - __clz(v134);
                  ++v132[v135];
                  --v106;
                }

                while (v106);
              }

              else
              {
                if (!v102 && v121 < 8)
                {
                  v120 = 0;
                  goto LABEL_75;
                }

                v102 += v121;
LABEL_90:
                *(v101 + 1) = v102;
              }

              v98 += 16;
              v100 += 4;
              v99 += 4;
              v103 = v105;
              if (v98 >= v48)
              {
                goto LABEL_92;
              }

              continue;
            }
        }

        v149 = v66;
        v81 = *(&a31 + 1);
        v79 = *(&a32 + 1);
        v80 = a32;
      }

      else
      {
        v149 = v66;
        v79 = 0;
        v80 = 0;
        v81 = 0;
        v77 = 0;
      }

      if (v147)
      {
        sub_240BFF030(v70, v48, v77, v81, v80, v79);
      }

      else
      {
        sub_240BFF158(v70, v48, v77, v81, v80, v79);
      }

      v66 = v149;
      v67 = 0uLL;
      v68 = xmmword_240C115E0;
      v69.i64[0] = 0x400000004;
      v69.i64[1] = 0x400000004;
LABEL_42:
      if (v52)
      {
        goto LABEL_51;
      }

LABEL_93:
      ++v66;
      v63 = v49;
      v65 = (v65 + v49);
    }

    while (v64++ != vars0);
  }

  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  result = (*(*(v146 + 16) + 40))(**(v146 + 16), vars8);
  v145 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_240BFEC3C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0x18618618618619)
    {
      operator new();
    }

    sub_240B228BC();
  }

  return result;
}

void sub_240BFED00(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

const __int16 *sub_240BFED1C(const __int16 *result, unint64_t a2, uint32x4_t *a3, uint32x4_t *a4)
{
  if (a2 >= 8)
  {
    v5 = 0;
    v6 = a4 + 1;
    v7 = a3 + 1;
    v8 = result;
    do
    {
      v16 = vld2q_s16(v8);
      v8 += 16;
      v9 = vrev16q_s8(v16.val[0]);
      v16.val[0] = vrev16q_s8(v16.val[1]);
      v7[-1] = vmovl_u16(*v9.i8);
      *v7 = vmovl_high_u16(v9);
      v4 = v5 + 8;
      v10 = v5 + 16;
      v6[-1] = vmovl_u16(*v16.val[0].i8);
      *v6 = vmovl_high_u16(v16.val[0]);
      v6 += 2;
      v7 += 2;
      v5 += 8;
    }

    while (v10 <= a2);
  }

  else
  {
    v4 = 0;
  }

  v11 = a2 - v4;
  if (a2 > v4)
  {
    v12 = a4 + v4;
    v13 = a3 + v4;
    v14 = &result[2 * v4] + 1;
    do
    {
      v15 = bswap32(*(v14 + 1));
      *v13++ = bswap32(*(v14 - 1)) >> 16;
      *v12++ = HIWORD(v15);
      v14 += 4;
      --v11;
    }

    while (v11);
  }

  return result;
}

const __int16 *sub_240BFEDC4(const __int16 *result, unint64_t a2, uint32x4_t *a3, uint32x4_t *a4)
{
  if (a2 >= 8)
  {
    v5 = 0;
    v6 = a4 + 1;
    v7 = a3 + 1;
    v8 = result;
    do
    {
      v15 = vld2q_s16(v8);
      v8 += 16;
      v7[-1] = vmovl_u16(*v15.val[0].i8);
      *v7 = vmovl_high_u16(v15.val[0]);
      v4 = v5 + 8;
      v9 = v5 + 16;
      v6[-1] = vmovl_u16(*v15.val[1].i8);
      *v6 = vmovl_high_u16(v15.val[1]);
      v6 += 2;
      v7 += 2;
      v5 += 8;
    }

    while (v9 <= a2);
  }

  else
  {
    v4 = 0;
  }

  v10 = a2 - v4;
  if (a2 > v4)
  {
    v11 = &a4->i32[v4];
    v12 = &a3->i32[v4];
    v13 = &result[2 * v4] + 1;
    do
    {
      v14 = *(v13 + 1);
      *v12++ = *(v13 - 1);
      *v11++ = v14;
      v13 += 4;
      --v10;
    }

    while (v10);
  }

  return result;
}

const __int16 *sub_240BFEE54(const __int16 *result, unint64_t a2, int32x4_t *a3, int32x4_t *a4, int16x8_t *a5)
{
  if (a2 >= 8)
  {
    v6 = 0;
    v7 = a5 + 1;
    v8 = a4 + 1;
    v9 = a3 + 1;
    v10 = result;
    do
    {
      v27 = vld3q_s16(v10);
      v10 += 24;
      v11 = vrev16q_s8(v27.val[0]);
      v12 = vrev16q_s8(v27.val[1]);
      v27.val[0] = vrev16q_s8(v27.val[2]);
      v27.val[1] = vmovl_u16(*v12.i8);
      v27.val[2] = vmovl_high_u16(v12);
      v13 = vsubl_u16(*v11.i8, *v27.val[0].i8);
      v14 = vsraq_n_s32(vmovl_u16(*v27.val[0].i8), v13, 1uLL);
      v27.val[1] = vsubq_s32(v27.val[1], v14);
      v15 = vsubl_high_u16(v11, v27.val[0]);
      v27.val[0] = vaddw_high_u16(vshrq_n_s32(v15, 1uLL), v27.val[0]);
      v27.val[2] = vsubq_s32(v27.val[2], v27.val[0]);
      v9[-1] = vsraq_n_s32(v14, v27.val[1], 1uLL);
      v8[-1] = v13;
      v7[-1] = v27.val[1];
      *v9 = vsraq_n_s32(v27.val[0], v27.val[2], 1uLL);
      v9 += 2;
      *v8 = v15;
      v8 += 2;
      v5 = v6 + 8;
      v16 = v6 + 16;
      *v7 = v27.val[2];
      v7 += 2;
      v6 += 8;
    }

    while (v16 <= a2);
  }

  else
  {
    v5 = 0;
  }

  v17 = a2 - v5;
  if (a2 > v5)
  {
    v18 = &a5->i32[v5];
    v19 = &a4->i32[v5];
    v20 = &a3->i32[v5];
    v21 = &result[3 * v5 + 1];
    do
    {
      v22 = bswap32(*v21);
      v23 = bswap32(*(v21 + 1));
      v24 = (bswap32(*(v21 - 1)) >> 16) - HIWORD(v23);
      *v19++ = v24;
      v25 = (v24 >> 1) + HIWORD(v23);
      v26 = HIWORD(v22) - v25;
      *v18++ = v26;
      *v20++ = v25 + (v26 >> 1);
      v21 += 3;
      --v17;
    }

    while (v17);
  }

  return result;
}

const __int16 *sub_240BFEF54(const __int16 *result, unint64_t a2, int32x4_t *a3, int32x4_t *a4, int16x8_t *a5)
{
  if (a2 >= 8)
  {
    v6 = 0;
    v7 = a5 + 1;
    v8 = a4 + 1;
    v9 = a3 + 1;
    v10 = result;
    do
    {
      v26 = vld3q_s16(v10);
      v10 += 24;
      v11 = vsubl_u16(*v26.val[0].i8, *v26.val[2].i8);
      v12 = vsraq_n_s32(vmovl_u16(*v26.val[2].i8), v11, 1uLL);
      v13 = vsubq_s32(vmovl_u16(*v26.val[1].i8), v12);
      v14 = vsubl_high_u16(v26.val[0], v26.val[2]);
      v26.val[0] = vaddw_high_u16(vshrq_n_s32(v14, 1uLL), v26.val[2]);
      v26.val[1] = vsubq_s32(vmovl_high_u16(v26.val[1]), v26.val[0]);
      v9[-1] = vsraq_n_s32(v12, v13, 1uLL);
      v8[-1] = v11;
      v7[-1] = v13;
      *v9 = vsraq_n_s32(v26.val[0], v26.val[1], 1uLL);
      v9 += 2;
      *v8 = v14;
      v8 += 2;
      v5 = v6 + 8;
      v15 = v6 + 16;
      *v7 = v26.val[1];
      v7 += 2;
      v6 += 8;
    }

    while (v15 <= a2);
  }

  else
  {
    v5 = 0;
  }

  v16 = a2 - v5;
  if (a2 > v5)
  {
    v17 = &a5->i32[v5];
    v18 = &a4->i32[v5];
    v19 = &a3->i32[v5];
    v20 = &result[3 * v5 + 1];
    do
    {
      v21 = *v20;
      v22 = *(v20 + 1);
      v23 = *(v20 - 1) - v22;
      *v18++ = v23;
      v24 = v22 + (v23 >> 1);
      v25 = v21 - v24;
      *v17++ = v25;
      *v19++ = v24 + (v25 >> 1);
      v20 += 3;
      --v16;
    }

    while (v16);
  }

  return result;
}

const __int16 *sub_240BFF030(const __int16 *result, unint64_t a2, int32x4_t *a3, int32x4_t *a4, int16x8_t *a5, uint32x4_t *a6)
{
  if (a2 >= 8)
  {
    v7 = 0;
    v8 = a6 + 1;
    v9 = a3 + 1;
    v10 = a5 + 1;
    v11 = a4 + 1;
    v12 = result;
    do
    {
      v32 = vld4q_s16(v12);
      v12 += 32;
      v13 = vrev16q_s8(v32.val[0]);
      v14 = vrev16q_s8(v32.val[1]);
      v15 = vrev16q_s8(v32.val[2]);
      v32.val[0] = vrev16q_s8(v32.val[3]);
      v32.val[1] = vmovl_u16(*v14.i8);
      v32.val[2] = vmovl_high_u16(v14);
      v16 = vsubl_u16(*v13.i8, *v15.i8);
      v32.val[3] = vsraq_n_s32(vmovl_u16(*v15.i8), v16, 1uLL);
      v32.val[1] = vsubq_s32(v32.val[1], v32.val[3]);
      v17 = vsubl_high_u16(v13, v15);
      v18 = vaddw_high_u16(vshrq_n_s32(v17, 1uLL), v15);
      v32.val[2] = vsubq_s32(v32.val[2], v18);
      v9[-1] = vsraq_n_s32(v32.val[3], v32.val[1], 1uLL);
      v11[-1] = v16;
      v10[-1] = v32.val[1];
      *v9 = vsraq_n_s32(v18, v32.val[2], 1uLL);
      v9 += 2;
      *v11 = v17;
      v11 += 2;
      *v10 = v32.val[2];
      v10 += 2;
      v8[-1] = vmovl_u16(*v32.val[0].i8);
      *v8 = vmovl_high_u16(v32.val[0]);
      v6 = v7 + 8;
      v19 = v7 + 16;
      v8 += 2;
      v7 += 8;
    }

    while (v19 <= a2);
  }

  else
  {
    v6 = 0;
  }

  v20 = a2 - v6;
  if (a2 > v6)
  {
    v21 = a6 + v6;
    v22 = &a5->i32[v6];
    v23 = &a4->i32[v6];
    v24 = &result[4 * v6 + 1] + 1;
    v25 = &a3->i32[v6];
    do
    {
      v26 = bswap32(*(v24 - 1));
      v27 = bswap32(*(v24 + 1));
      v28 = bswap32(*(v24 + 3));
      v29 = (bswap32(*(v24 - 3)) >> 16) - HIWORD(v27);
      *v23++ = v29;
      v30 = (v29 >> 1) + HIWORD(v27);
      v31 = HIWORD(v26) - v30;
      *v22++ = v31;
      *v25++ = v30 + (v31 >> 1);
      *v21++ = HIWORD(v28);
      v24 += 8;
      --v20;
    }

    while (v20);
  }

  return result;
}

const __int16 *sub_240BFF158(const __int16 *result, unint64_t a2, int32x4_t *a3, int32x4_t *a4, int32x4_t *a5, uint32x4_t *a6)
{
  if (a2 >= 8)
  {
    v7 = 0;
    v8 = a6 + 1;
    v9 = a3 + 1;
    v10 = a5 + 1;
    v11 = a4 + 1;
    v12 = result;
    do
    {
      v32 = vld4q_s16(v12);
      v12 += 32;
      v13 = vsubl_u16(*v32.val[0].i8, *v32.val[2].i8);
      v14 = vsraq_n_s32(vmovl_u16(*v32.val[2].i8), v13, 1uLL);
      v15 = vsubq_s32(vmovl_u16(*v32.val[1].i8), v14);
      v16 = vsubl_high_u16(v32.val[0], v32.val[2]);
      v17 = vaddw_high_u16(vshrq_n_s32(v16, 1uLL), v32.val[2]);
      v18 = vsubq_s32(vmovl_high_u16(v32.val[1]), v17);
      v9[-1] = vsraq_n_s32(v14, v15, 1uLL);
      v11[-1] = v13;
      v10[-1] = v15;
      *v9 = vsraq_n_s32(v17, v18, 1uLL);
      v9 += 2;
      *v11 = v16;
      v11 += 2;
      *v10 = v18;
      v10 += 2;
      v8[-1] = vmovl_u16(*v32.val[3].i8);
      *v8 = vmovl_high_u16(v32.val[3]);
      v6 = v7 + 8;
      v19 = v7 + 16;
      v8 += 2;
      v7 += 8;
    }

    while (v19 <= a2);
  }

  else
  {
    v6 = 0;
  }

  v20 = a2 - v6;
  if (a2 > v6)
  {
    v21 = &a6->i32[v6];
    v22 = &a5->i32[v6];
    v23 = &a4->i32[v6];
    v24 = &result[4 * v6 + 1] + 1;
    v25 = &a3->i32[v6];
    do
    {
      v26 = *(v24 - 1);
      v27 = *(v24 + 1);
      v28 = *(v24 + 3);
      v29 = *(v24 - 3) - v27;
      *v23++ = v29;
      v30 = v27 + (v29 >> 1);
      v31 = v26 - v30;
      *v22++ = v31;
      *v25++ = v30 + (v31 >> 1);
      *v21++ = v28;
      v24 += 8;
      --v20;
    }

    while (v20);
  }

  return result;
}

void sub_240BFF250(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_240BFF2AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240BFF2C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v47 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    v6 = 0;
    v7 = *(result + 8);
    v8.i64[0] = 0x8000800080008;
    v8.i64[1] = 0x8000800080008;
    v9 = a6;
    do
    {
      v10 = 0;
      v11 = 0;
      v12 = v9 - 16;
      if (v9 >= 0x10)
      {
        v13 = 16;
      }

      else
      {
        v13 = v9;
      }

      memset(v46, 0, sizeof(v46));
      v14 = v46;
      v15 = 1;
      do
      {
        v16 = *(a3 + 2 * v6 + 2 * v10);
        v17 = *(a4 + 2 * v6 + 2 * v10);
        v18 = *(a5 + 2 * v6 + 2 * v10);
        v19 = vsubq_s16(v16, v18);
        v20 = vsubq_s16(v17, v18);
        v21 = vsubq_s16(*(a2 + 2 * v6 + 2 * v10), vbslq_s8(vcltzq_s16(veorq_s8(v19, v20)), vaddq_s16(v19, v17), vbslq_s8(vcltzq_s16(veorq_s8(v20, vsubq_s16(v16, v17))), v17, v16)));
        v22 = vaddq_s16(v21, v21);
        v23 = vcltzq_s16(v21);
        v24 = v15;
        v25 = vbslq_s8(vceqq_s16(v22, v23), v8, xmmword_240C11A20);
        v25.i16[0] = vminvq_u16(v25);
        if (v11 == v10)
        {
          v26 = v25.u32[0];
        }

        else
        {
          v26 = 0;
        }

        *v14 = veorq_s8(v22, v23);
        v11 += v26;
        v14 = (v46 | 0x10);
        v10 = 8;
        v15 = 0;
      }

      while ((v24 & 1) != 0);
      v27 = a6 - v6;
      if (a6 - v6 >= 0x10)
      {
        v27 = 16;
      }

      v28 = v7;
      if (v11 >= v27)
      {
        v29 = v27;
      }

      else
      {
        v29 = v11;
      }

      if (v11 >= v27)
      {
        if (v29 > 7 || v7 != 0)
        {
          v7 += v29;
          goto LABEL_34;
        }

        v28 = 0;
      }

      v31 = v28 + v29;
      v32 = *result;
      if (v31 < 8)
      {
        v41 = *v32;
        v42 = v46;
        do
        {
          v43 = *v42++;
          v44 = __clz(v43);
          ++v41[32 - v44];
          --v13;
        }

        while (v13);
        goto LABEL_37;
      }

      v33 = *v32;
      v34 = v32[1];
      ++**v32;
      v35 = v31 - 8;
      v36 = 43 - __clz(v35);
      if (v35 >= 0x10)
      {
        v35 = v36;
      }

      ++*(v34 + 8 * v35);
      if (v11 < v27)
      {
        if (v9 >= v11)
        {
          v9 = v11;
        }

        if (v9 >= 0x10)
        {
          v9 = 16;
        }

        v37 = v13 - v9;
        v38 = (v46 | (2 * v9));
        do
        {
          v39 = *v38++;
          v40 = __clz(v39);
          ++v33[32 - v40];
          --v37;
        }

        while (v37);
      }

      v7 = 0;
LABEL_34:
      *(result + 8) = v7;
LABEL_37:
      v6 += 16;
      v9 = v12;
    }

    while (v6 < a6);
  }

  v45 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_240BFF50C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0x2E8BA2E8BA2E8CLL)
    {
      operator new();
    }

    sub_240B228BC();
  }

  return result;
}

void sub_240BFF5D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

int8x16_t *sub_240BFF5EC(int8x16_t *result, unint64_t a2, int8x16_t *a3)
{
  if (a2 >= 8)
  {
    v4 = 0;
    v5 = result;
    v6 = a3;
    do
    {
      v7 = *v5++;
      *v6++ = vrev16q_s8(v7);
      v3 = v4 + 8;
      v8 = v4 + 16;
      v4 += 8;
    }

    while (v8 <= a2);
  }

  else
  {
    v3 = 0;
  }

  v9 = a2 - v3;
  if (a2 > v3)
  {
    v10 = &a3->i16[v3];
    v11 = result->i64 + 2 * v3 + 1;
    do
    {
      *v10++ = bswap32(*(v11 - 1)) >> 16;
      v11 += 2;
      --v9;
    }

    while (v9);
  }

  return result;
}

__int128 *sub_240BFF65C(__int128 *result, unint64_t a2, _OWORD *a3)
{
  if (a2 >= 8)
  {
    v4 = 0;
    v5 = result;
    v6 = a3;
    do
    {
      v7 = *v5++;
      *v6++ = v7;
      v3 = v4 + 8;
      v8 = v4 + 16;
      v4 += 8;
    }

    while (v8 <= a2);
  }

  else
  {
    v3 = 0;
  }

  v9 = a2 - v3;
  if (a2 > v3)
  {
    v10 = a3 + v3;
    v11 = result + 2 * v3 + 1;
    do
    {
      *v10++ = *(v11 - 1);
      v11 += 2;
      --v9;
    }

    while (v9);
  }

  return result;
}

const __int16 *sub_240BFF6C0(const __int16 *result, unint64_t a2, int8x16_t *a3, int8x16_t *a4)
{
  if (a2 >= 8)
  {
    v5 = 0;
    v6 = result;
    v7 = a3;
    v8 = a4;
    do
    {
      v15 = vld2q_s16(v6);
      v6 += 16;
      *v7++ = vrev16q_s8(v15.val[0]);
      *v8++ = vrev16q_s8(v15.val[1]);
      v4 = v5 + 8;
      v9 = v5 + 16;
      v5 += 8;
    }

    while (v9 <= a2);
  }

  else
  {
    v4 = 0;
  }

  v10 = a2 - v4;
  if (a2 > v4)
  {
    v11 = &a4->i16[v4];
    v12 = &a3->i16[v4];
    v13 = &result[2 * v4] + 1;
    do
    {
      v14 = bswap32(*(v13 + 1));
      *v12++ = bswap32(*(v13 - 1)) >> 16;
      *v11++ = HIWORD(v14);
      v13 += 4;
      --v10;
    }

    while (v10);
  }

  return result;
}

const __int16 *sub_240BFF750(const __int16 *result, unint64_t a2, int16x8_t *a3, int16x8_t *a4)
{
  if (a2 >= 8)
  {
    v5 = 0;
    v6 = result;
    v7 = a3;
    v8 = a4;
    do
    {
      v15 = vld2q_s16(v6);
      v6 += 16;
      *v7++ = v15.val[0];
      *v8++ = v15.val[1];
      v4 = v5 + 8;
      v9 = v5 + 16;
      v5 += 8;
    }

    while (v9 <= a2);
  }

  else
  {
    v4 = 0;
  }

  v10 = a2 - v4;
  if (a2 > v4)
  {
    v11 = &a4->i16[v4];
    v12 = &a3->i16[v4];
    v13 = &result[2 * v4] + 1;
    do
    {
      v14 = *(v13 + 1);
      *v12++ = *(v13 - 1);
      *v11++ = v14;
      v13 += 4;
      --v10;
    }

    while (v10);
  }

  return result;
}

const __int16 *sub_240BFF7C8(const __int16 *result, unint64_t a2, int16x8_t *a3, int16x8_t *a4, int16x8_t *a5)
{
  if (a2 >= 8)
  {
    v6 = 0;
    v7 = result;
    v8 = a3;
    v9 = a4;
    v10 = a5;
    do
    {
      v23 = vld3q_s16(v7);
      v7 += 24;
      v11 = vrev16q_s8(v23.val[0]);
      v12 = vrev16q_s8(v23.val[1]);
      v23.val[0] = vrev16q_s8(v23.val[2]);
      v23.val[1] = vsubq_s16(v11, v23.val[0]);
      v23.val[0] = vsraq_n_s16(v23.val[0], v23.val[1], 1uLL);
      v23.val[2] = vsubq_s16(v12, v23.val[0]);
      *v8++ = vsraq_n_s16(v23.val[0], v23.val[2], 1uLL);
      *v9++ = v23.val[1];
      *v10++ = v23.val[2];
      v5 = v6 + 8;
      v13 = v6 + 16;
      v6 += 8;
    }

    while (v13 <= a2);
  }

  else
  {
    v5 = 0;
  }

  v14 = a2 - v5;
  if (a2 > v5)
  {
    v15 = &a5->i16[v5];
    v16 = &a4->i16[v5];
    v17 = &a3->i16[v5];
    v18 = &result[3 * v5 + 1];
    do
    {
      v19 = bswap32(*v18);
      v20 = bswap32(*(v18 + 1));
      v21 = (bswap32(*(v18 - 1)) >> 16) - HIWORD(v20);
      *v16++ = v21;
      v22 = (v21 >> 1) + HIWORD(v20);
      *v15++ = HIWORD(v19) - v22;
      *v17++ = v22 + ((HIWORD(v19) - v22) >> 1);
      v18 += 3;
      --v14;
    }

    while (v14);
  }

  return result;
}

const __int16 *sub_240BFF8A0(const __int16 *result, unint64_t a2, int16x8_t *a3, int16x8_t *a4, int16x8_t *a5)
{
  if (a2 >= 8)
  {
    v6 = 0;
    v7 = result;
    v8 = a3;
    v9 = a4;
    v10 = a5;
    do
    {
      v24 = vld3q_s16(v7);
      v7 += 24;
      v11 = vsubq_s16(v24.val[0], v24.val[2]);
      v24.val[2] = vsraq_n_s16(v24.val[2], v11, 1uLL);
      v12 = vsubq_s16(v24.val[1], v24.val[2]);
      *v8++ = vsraq_n_s16(v24.val[2], v12, 1uLL);
      *v9++ = v11;
      *v10++ = v12;
      v5 = v6 + 8;
      v13 = v6 + 16;
      v6 += 8;
    }

    while (v13 <= a2);
  }

  else
  {
    v5 = 0;
  }

  v14 = a2 - v5;
  if (a2 > v5)
  {
    v15 = &a5->i16[v5];
    v16 = &a4->i16[v5];
    v17 = &a3->i16[v5];
    v18 = &result[3 * v5 + 1];
    do
    {
      v19 = *v18;
      v20 = *(v18 + 1);
      v21 = *(v18 - 1) - v20;
      *v16++ = v21;
      v22 = v20 + (v21 >> 1);
      v23 = v19 - v22;
      *v15++ = v23;
      *v17++ = v22 + (v23 >> 1);
      v18 += 3;
      --v14;
    }

    while (v14);
  }

  return result;
}

const __int16 *sub_240BFF958(const __int16 *result, unint64_t a2, int16x8_t *a3, int16x8_t *a4, int16x8_t *a5, int8x16_t *a6)
{
  if (a2 >= 8)
  {
    v7 = 0;
    v8 = result;
    v9 = a3;
    v10 = a4;
    v11 = a5;
    v12 = a6;
    do
    {
      v29 = vld4q_s16(v8);
      v8 += 32;
      v13 = vrev16q_s8(v29.val[1]);
      v14 = vrev16q_s8(v29.val[2]);
      v29.val[1] = vsubq_s16(vrev16q_s8(v29.val[0]), v14);
      v15 = vsraq_n_s16(v14, v29.val[1], 1uLL);
      v29.val[2] = vsubq_s16(v13, v15);
      *v9++ = vsraq_n_s16(v15, v29.val[2], 1uLL);
      *v10++ = v29.val[1];
      *v11++ = v29.val[2];
      *v12++ = vrev16q_s8(v29.val[3]);
      v6 = v7 + 8;
      v16 = v7 + 16;
      v7 += 8;
    }

    while (v16 <= a2);
  }

  else
  {
    v6 = 0;
  }

  v17 = a2 - v6;
  if (a2 > v6)
  {
    v18 = &a6->i16[v6];
    v19 = &a5->i16[v6];
    v20 = &a4->i16[v6];
    v21 = &result[4 * v6 + 1] + 1;
    v22 = &a3->i16[v6];
    do
    {
      v23 = bswap32(*(v21 - 1));
      v24 = bswap32(*(v21 + 1));
      v25 = bswap32(*(v21 + 3));
      v26 = (bswap32(*(v21 - 3)) >> 16) - HIWORD(v24);
      *v20++ = v26;
      v27 = (v26 >> 1) + HIWORD(v24);
      v28 = HIWORD(v23) - v27;
      *v19++ = v28;
      *v22++ = v27 + (v28 >> 1);
      *v18++ = HIWORD(v25);
      v21 += 8;
      --v17;
    }

    while (v17);
  }

  return result;
}

const __int16 *sub_240BFFA4C(const __int16 *result, unint64_t a2, int16x8_t *a3, int16x8_t *a4, int16x8_t *a5, int16x8_t *a6)
{
  if (a2 >= 8)
  {
    v7 = 0;
    v8 = result;
    v9 = a3;
    v10 = a4;
    v11 = a5;
    v12 = a6;
    do
    {
      v28 = vld4q_s16(v8);
      v8 += 32;
      v13 = vsubq_s16(v28.val[0], v28.val[2]);
      v28.val[2] = vsraq_n_s16(v28.val[2], v13, 1uLL);
      v14 = vsubq_s16(v28.val[1], v28.val[2]);
      *v9++ = vsraq_n_s16(v28.val[2], v14, 1uLL);
      *v10++ = v13;
      *v11++ = v14;
      *v12++ = v28.val[3];
      v6 = v7 + 8;
      v15 = v7 + 16;
      v7 += 8;
    }

    while (v15 <= a2);
  }

  else
  {
    v6 = 0;
  }

  v16 = a2 - v6;
  if (a2 > v6)
  {
    v17 = &a6->i16[v6];
    v18 = &a5->i16[v6];
    v19 = &a4->i16[v6];
    v20 = &result[4 * v6 + 1] + 1;
    v21 = &a3->i16[v6];
    do
    {
      v22 = *(v20 - 1);
      v23 = *(v20 + 1);
      v24 = *(v20 + 3);
      v25 = *(v20 - 3) - v23;
      result = v25;
      *v19++ = v25;
      v26 = v23 + (result >> 1);
      v27 = v22 - v26;
      *v18++ = v27;
      *v21++ = v26 + (v27 >> 1);
      *v17++ = v24;
      v20 += 8;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t sub_240BFFB14(int a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5)
{
  v330 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v7 = ((16 * a2 * a3 + 100000) >> 3) + 64;
  }

  else
  {
    v7 = 12564;
  }

  v8 = malloc_type_malloc(v7, 0x100004077774924uLL);
  v9 = *a5;
  *a5 = v8;
  if (v9)
  {
    (a5[1])(v9);
    v8 = *a5;
  }

  v10 = 0;
  v11 = a5[2];
  v12 = a5[3];
  v13 = a5[4] | (1 << v12);
  a5[3] = v12 + 1;
  a5[4] = v13;
  *&v11[v8] = v13;
  v14 = a5[3];
  v15 = v14 & 7;
  v16 = a5[4] >> (v14 & 0xF8);
  v17 = &a5[2][v14 >> 3];
  v18 = *a5;
  v19 = v16 | (1 << v15);
  a5[2] = v17;
  a5[3] = (v15 + 1);
  a5[4] = v19;
  *&v18[v17] = v19;
  v20 = a5[3];
  v21 = v20 & 7;
  v22 = a5[4] >> (v20 & 0xF8);
  v23 = &a5[2][v20 >> 3];
  v24 = *a5;
  a5[2] = v23;
  a5[3] = (v21 + 1);
  a5[4] = v22;
  *&v24[v23] = v22;
  v25 = a5[3];
  v26 = v25 & 7;
  v27 = a5[4] >> (v25 & 0xF8);
  v28 = &a5[2][v25 >> 3];
  v29 = *a5;
  v30 = v27 | (1 << v26);
  a5[2] = v28;
  a5[3] = (v26 + 1);
  a5[4] = v30;
  *&v29[v28] = v30;
  v31 = a5[3];
  v32 = v31 & 7;
  v33 = a5[4] >> (v31 & 0xF8);
  v34 = &a5[2][v31 >> 3];
  v35 = *a5;
  a5[2] = v34;
  a5[3] = (v32 + 2);
  a5[4] = v33;
  *&v35[v34] = v33;
  v36 = a5[3];
  v37 = v36 & 7;
  v38 = a5[4] >> (v36 & 0xF8);
  v39 = &a5[2][v36 >> 3];
  v40 = *a5;
  v41 = v38 | (1 << v37);
  a5[2] = v39;
  a5[3] = (v37 + 1);
  a5[4] = v41;
  *&v40[v39] = v41;
  v42 = a5[3];
  v43 = v42 & 7;
  v44 = a5[4] >> (v42 & 0xF8);
  v45 = &a5[2][v42 >> 3];
  v46 = *a5;
  a5[2] = v45;
  a5[3] = (v43 + 4);
  a5[4] = v44;
  *&v46[v45] = v44;
  v47 = a5[3];
  v48 = v47 & 7;
  v49 = a5[4] >> (v47 & 0xF8);
  v50 = &a5[2][v47 >> 3];
  v51 = *a5;
  v52 = v49 | (35 << v48);
  a5[2] = v50;
  a5[3] = (v48 + 6);
  a5[4] = v52;
  *&v51[v50] = v52;
  v53 = a5[3];
  v54 = v53 & 7;
  v55 = a5[4] >> (v53 & 0xF8);
  v56 = &a5[2][v53 >> 3];
  v57 = *a5;
  v58 = v55 | (1 << v54);
  a5[2] = v56;
  a5[3] = (v54 + 2);
  a5[4] = v58;
  *&v57[v56] = v58;
  v59 = a5[3];
  v60 = &a5[2][v59 >> 3];
  v61 = (a5[4] >> (v59 & 0xF8)) | (3 << (v59 & 7));
  v62 = *a5;
  a5[2] = v60;
  a5[3] = ((v59 & 7) + 2);
  a5[4] = v61;
  *&v62[v60] = v61;
  v63 = a5[3];
  v64 = a5[4] >> (v63 & 0xF8);
  v65 = v63 & 7;
  v66 = &a5[2][v63 >> 3];
  v67 = *a5;
  a5[2] = v66;
  a5[3] = (v65 + 2);
  a5[4] = v64;
  *&v67[v66] = v64;
  v68 = a5[3];
  v69 = a5[4] >> (v68 & 0xF8);
  v70 = v68 & 7;
  v71 = &a5[2][v68 >> 3];
  v72 = *a5;
  v73 = v69 | (1 << v70);
  a5[2] = v71;
  a5[3] = (v70 + 2);
  a5[4] = v73;
  *&v72[v71] = v73;
  v74 = a5[3];
  v75 = v74 & 7;
  v76 = a5[4] >> (v74 & 0xF8);
  v77 = &a5[2][v74 >> 3];
  v78 = *a5;
  v79 = v76 | (2 << v75);
  a5[2] = v77;
  a5[3] = (v75 + 2);
  a5[4] = v79;
  *&v78[v77] = v79;
  v80 = a5[3];
  v81 = v80 & 7;
  v82 = a5[4] >> (v80 & 0xF8);
  v83 = &a5[2][v80 >> 3];
  v84 = *a5;
  v85 = v82 | (3 << v81);
  a5[2] = v83;
  a5[3] = (v81 + 2);
  a5[4] = v85;
  *&v84[v83] = v85;
  v86 = a5[3];
  v87 = v86 & 7;
  v88 = a5[4] >> (v86 & 0xF8);
  v89 = &a5[2][v86 >> 3];
  v90 = *a5;
  a5[2] = v89;
  a5[3] = (v87 + 1);
  a5[4] = v88;
  *&v90[v89] = v88;
  v91 = a5[3];
  v92 = v91 & 7;
  v93 = a5[4] >> (v91 & 0xF8);
  v94 = &a5[2][v91 >> 3];
  a5[2] = v94;
  do
  {
    v95 = dword_240C86154[v10];
    v96 = *a5;
    v97 = v93 | (byte_240C86148[v95] << v92);
    a5[3] = (v92 + byte_240C8614E[v95]);
    a5[4] = v97;
    *&v96[v94] = v97;
    v99 = a5[2];
    v98 = a5[3];
    v92 = v98 & 7;
    v93 = a5[4] >> (v98 & 0xF8);
    a5[3] = v92;
    a5[4] = v93;
    v94 = &v99[v98 >> 3];
    a5[2] = v94;
    ++v10;
  }

  while (v10 != 26);
  v100 = *a5;
  v101 = v93 | (1 << v92);
  a5[3] = (v92 + 1);
  a5[4] = v101;
  *&v100[v94] = v101;
  v102 = a5[3];
  v103 = v102 & 7;
  v104 = a5[4] >> (v102 & 0xF8);
  v105 = &a5[2][v102 >> 3];
  v106 = *a5;
  a5[2] = v105;
  a5[3] = (v103 + 2);
  a5[4] = v104;
  *&v106[v105] = v104;
  v107 = a5[3];
  v108 = v107 & 7;
  v109 = a5[4] >> (v107 & 0xF8);
  v110 = &a5[2][v107 >> 3];
  v111 = *a5;
  v112 = v109 | (10 << v108);
  a5[2] = v110;
  a5[3] = (v108 + 4);
  a5[4] = v112;
  *&v111[v110] = v112;
  v113 = a5[3];
  v114 = v113 & 7;
  v115 = a5[4] >> (v113 & 0xF8);
  v116 = &a5[2][v113 >> 3];
  v117 = *a5;
  v118 = 4;
  v119 = v115 | (4 << v114);
  a5[2] = v116;
  a5[3] = (v114 + 4);
  a5[4] = v119;
  *&v117[v116] = v119;
  v120 = a5[3];
  v121 = v120 & 7;
  v122 = a5[4] >> (v120 & 0xF8);
  v123 = &a5[2][v120 >> 3];
  v124 = *a5;
  a5[2] = v123;
  a5[3] = (v121 + 3);
  a5[4] = v122;
  *&v124[v123] = v122;
  v125 = a5[3];
  v126 = v125 & 7;
  v127 = a5[4] >> (v125 & 0xF8);
  v128 = &a5[2][v125 >> 3];
  v129 = *a5;
  a5[2] = v128;
  a5[3] = (v126 + 3);
  a5[4] = v127;
  *&v129[v128] = v127;
  v130 = a5[3];
  v131 = v130 & 7;
  v132 = a5[4] >> (v130 & 0xF8);
  v133 = &a5[2][v130 >> 3];
  v134 = *a5;
  v135 = v132 | (1 << v131);
  a5[2] = v133;
  a5[3] = (v131 + 1);
  a5[4] = v135;
  *&v134[v133] = v135;
  v136 = a5[3];
  v137 = v136 & 7;
  v138 = a5[4] >> (v136 & 0xF8);
  v139 = &a5[2][v136 >> 3];
  v140 = *a5;
  v141 = v138 | (3 << v137);
  a5[2] = v139;
  a5[3] = (v137 + 2);
  a5[4] = v141;
  *&v140[v139] = v141;
  v142 = a5[3];
  v143 = v142 & 7;
  v144 = a5[4] >> (v142 & 0xF8);
  v145 = &a5[2][v142 >> 3];
  v146 = *a5;
  v147 = v144 | (4 << v143);
  a5[2] = v145;
  a5[3] = (v143 + 3);
  a5[4] = v147;
  *&v146[v145] = v147;
  v148 = a5[3];
  v149 = v148 & 7;
  v150 = a5[4] >> (v148 & 0xF8);
  v151 = &a5[2][v148 >> 3];
  v152 = *a5;
  v153 = v150 | (3 << v149);
  a5[2] = v151;
  a5[3] = (v149 + 3);
  a5[4] = v153;
  *&v152[v151] = v153;
  v154 = a5[3];
  v155 = v154 & 7;
  v156 = a5[4] >> (v154 & 0xF8);
  v157 = &a5[2][v154 >> 3];
  v158 = *a5;
  v159 = v156 | (2 << v155);
  a5[2] = v157;
  a5[3] = (v155 + 3);
  a5[4] = v159;
  *&v158[v157] = v159;
  v160 = a5[3];
  v161 = v160 & 7;
  v162 = a5[4] >> (v160 & 0xF8);
  v163 = &a5[2][v160 >> 3];
  v164 = *a5;
  v165 = v162 | (1 << v161);
  a5[2] = v163;
  a5[3] = (v161 + 3);
  a5[4] = v165;
  *&v164[v163] = v165;
  v166 = a5[3];
  v167 = v166 & 7;
  v168 = a5[4] >> (v166 & 0xF8);
  v169 = &a5[2][v166 >> 3];
  v170 = *a5;
  a5[2] = v169;
  a5[3] = (v167 + 3);
  a5[4] = v168;
  *&v170[v169] = v168;
  v171 = a5[3];
  v172 = v171 & 7;
  v173 = a5[4] >> (v171 & 0xF8);
  v174 = &a5[2][v171 >> 3];
  v175 = *a5;
  v176 = v173 | (1 << v172);
  a5[2] = v174;
  a5[3] = (v172 + 1);
  a5[4] = v176;
  *&v175[v174] = v176;
  v177 = a5[3];
  v178 = v177 & 7;
  v179 = a5[4] >> (v177 & 0xF8);
  v180 = &a5[2][v177 >> 3];
  v181 = *a5;
  a5[2] = v180;
  a5[3] = (v178 + 4);
  a5[4] = v179;
  *&v181[v180] = v179;
  v183 = a5[2];
  v182 = a5[3];
  v184 = v182 & 7;
  v185 = a5[4] >> (v182 & 0xF8);
  a5[4] = v185;
  v186 = &v183[v182 >> 3];
  a5[2] = v186;
  do
  {
    v187 = *a5;
    a5[3] = (v184 + 4);
    *&v186[v187] = v185;
    v189 = a5[2];
    v188 = a5[3];
    v185 = a5[4] >> (v188 & 0xF8);
    v184 = v188 & 7;
    a5[3] = v184;
    a5[4] = v185;
    v186 = &v189[v188 >> 3];
    a5[2] = v186;
    --v118;
  }

  while (v118);
  v190 = *a5;
  v191 = v185 | (1 << v184);
  a5[3] = (v184 + 5);
  a5[4] = v191;
  *&v186[v190] = v191;
  v192 = a5[3];
  v193 = v192 & 7;
  v194 = a5[4] >> (v192 & 0xF8);
  v195 = &a5[2][v192 >> 3];
  a5[2] = v195;
  v196 = 4;
  do
  {
    v197 = *a5;
    v198 = v194 | (1 << v193);
    a5[3] = (v193 + 1);
    a5[4] = v198;
    *&v197[v195] = v198;
    v199 = a5[3];
    v200 = v199 & 7;
    v201 = a5[4] >> (v199 & 0xF8);
    v202 = &a5[2][v199 >> 3];
    v203 = *a5;
    v204 = v201 | (8 << v200);
    a5[2] = v202;
    a5[3] = (v200 + 4);
    a5[4] = v204;
    *&v203[v202] = v204;
    v205 = a5[3];
    v206 = &a5[2][v205 >> 3];
    v207 = *a5;
    v208 = (a5[4] >> (v205 & 0xF8)) | (256 << (v205 & 7));
    a5[2] = v206;
    a5[3] = (v205 & 7 | 8);
    a5[4] = v208;
    *&v207[v206] = v208;
    v210 = a5[2];
    v209 = a5[3];
    v193 = v209 & 7;
    v194 = a5[4] >> (v209 & 0xF8);
    a5[3] = v193;
    a5[4] = v194;
    v195 = &v210[v209 >> 3];
    a5[2] = v195;
    --v196;
  }

  while (v196);
  v211 = 0;
  v212 = *a5;
  v213 = v194 | (1 << v193);
  a5[3] = (v193 + 2);
  a5[4] = v213;
  *&v212[v195] = v213;
  v214 = a5[3];
  v215 = v214 & 7;
  v216 = a5[4] >> (v214 & 0xF8);
  v217 = &a5[2][v214 >> 3];
  v218 = *a5;
  a5[2] = v217;
  a5[3] = (v215 + 2);
  a5[4] = v216;
  *&v218[v217] = v216;
  v219 = a5[3];
  v220 = v219 & 7;
  v221 = a5[4] >> (v219 & 0xF8);
  v222 = &a5[2][v219 >> 3];
  v223 = *a5;
  v224 = v221 | (1 << v220);
  a5[2] = v222;
  a5[3] = (v220 + 1);
  a5[4] = v224;
  *&v223[v222] = v224;
  v225 = a5[3];
  LOBYTE(v223) = v225 & 0xF8;
  v226 = &a5[2][v225 >> 3];
  v227 = a5[4] >> v223;
  a5[3] = (a5[3] & 7);
  a5[4] = v227;
  a5[2] = v226;
  do
  {
    v228 = 0;
    memset(v327, 0, sizeof(v327));
    v328 = 0;
    v329 = 67;
    do
    {
      ++*(v327 + *(a4 + v228++));
    }

    while (v228 != 19);
    v320 = v211;
    for (i = 38; i != 71; ++i)
    {
      ++*(v327 + *(a4 + i));
    }

    v325[0] = 0;
    v325[1] = 0;
    v326 = 0;
    v323[0] = 0;
    v323[1] = 0;
    v324 = 0;
    sub_240BFC858(v327, 18, v323, byte_240C861BC, v325);
    v230 = *a5;
    v231 = a5[2];
    v232 = a5[4];
    a5[3] += 2;
    *&v231[v230] = v232;
    v234 = a5[2];
    v233 = a5[3];
    v235 = v233 & 7;
    v236 = a5[4] >> (v233 & 0xF8);
    a5[3] = v235;
    a5[4] = v236;
    v237 = &v234[v233 >> 3];
    a5[2] = v237;
    v238 = 18;
    v239 = 0x11u;
    do
    {
      v240 = v239;
      v241 = v238;
      v242 = *(v325 + byte_240C861CE[v239--]);
      --v238;
    }

    while (!v242);
    if (v240 != -1)
    {
      v243 = byte_240C861CE;
      do
      {
        v244 = *v243++;
        v245 = *(v325 + v244);
        v246 = byte_240C861E0[v245];
        v247 = *a5;
        v248 = (byte_240C861E6[v245] << v235) | v236;
        a5[3] = (v235 + v246);
        a5[4] = v248;
        *&v237[v247] = v248;
        v250 = a5[2];
        v249 = a5[3];
        v235 = v249 & 7;
        v236 = a5[4] >> (v249 & 0xF8);
        a5[3] = v235;
        a5[4] = v236;
        v237 = &v250[v249 >> 3];
        a5[2] = v237;
        --v241;
      }

      while (v241);
    }

    v322 = 0;
    memset(v321, 0, sizeof(v321));
    result = sub_240BFCD20(0, 0, 0, v325, v321, 18);
    for (j = 0; j != 19; ++j)
    {
      v253 = *(a4 + j);
      v254 = *(v325 + v253);
      v255 = *a5;
      v256 = (*(v321 + v253) << v235) | v236;
      a5[3] = (v235 + v254);
      a5[4] = v256;
      *&v237[v255] = v256;
      v258 = a5[2];
      v257 = a5[3];
      v235 = v257 & 7;
      v236 = a5[4] >> (v257 & 0xF8);
      a5[3] = v235;
      a5[4] = v236;
      v237 = &v258[v257 >> 3];
      a5[2] = v237;
    }

    v259 = 33;
    v260 = 70;
    do
    {
      v261 = v260;
      v262 = v259;
      v263 = *(a4 + v260--);
      --v259;
    }

    while (!v263);
    v264 = HIBYTE(v326);
    v265 = HIWORD(v322);
    v266 = *a5;
    v267 = (HIWORD(v322) << v235) | v236;
    a5[3] = (v235 + HIBYTE(v326));
    a5[4] = v267;
    *&v237[v266] = v267;
    v268 = a5[3];
    v269 = v268 & 7;
    v270 = a5[4] >> (v268 & 0xF8);
    v271 = &a5[2][v268 >> 3];
    v272 = *a5;
    v273 = v270 | (2 << v269);
    a5[2] = v271;
    a5[3] = (v269 + 3);
    a5[4] = v273;
    *&v272[v271] = v273;
    v274 = a5[3];
    v275 = v274 & 7;
    v276 = a5[4] >> (v274 & 0xF8);
    v277 = &a5[2][v274 >> 3];
    v278 = *a5;
    v279 = v276 | (v265 << v275);
    a5[2] = v277;
    a5[3] = (v275 + v264);
    a5[4] = v279;
    *&v278[v277] = v279;
    v280 = a5[3];
    v281 = v280 & 7;
    v282 = a5[4] >> (v280 & 0xF8);
    v283 = &a5[2][v280 >> 3];
    v284 = *a5;
    a5[2] = v283;
    a5[3] = (v281 + 3);
    a5[4] = v282;
    *&v284[v283] = v282;
    v285 = a5[3];
    v286 = v285 & 7;
    v287 = a5[4] >> (v285 & 0xF8);
    v288 = &a5[2][v285 >> 3];
    v289 = *a5;
    v290 = v287 | (v265 << v286);
    a5[2] = v288;
    a5[3] = (v286 + v264);
    a5[4] = v290;
    *&v289[v288] = v290;
    v291 = a5[3];
    v292 = v291 & 7;
    v293 = a5[4] >> (v291 & 0xF8);
    v294 = &a5[2][v291 >> 3];
    v295 = *a5;
    v296 = v293 | (2 << v292);
    a5[2] = v294;
    a5[3] = (v292 + 3);
    a5[4] = v296;
    *&v295[v294] = v296;
    v298 = a5[2];
    v297 = a5[3];
    v299 = v297 & 7;
    v300 = a5[4] >> (v297 & 0xF8);
    a5[3] = v299;
    a5[4] = v300;
    v301 = &v298[v297 >> 3];
    a5[2] = v301;
    if (v261 != 37)
    {
      v302 = 38;
      do
      {
        v303 = *(a4 + v302);
        v304 = *a5;
        v305 = (*(v321 + v303) << v299) | v300;
        a5[3] = (v299 + *(v325 + v303));
        a5[4] = v305;
        *&v301[v304] = v305;
        v307 = a5[2];
        v306 = a5[3];
        v299 = v306 & 7;
        v300 = a5[4] >> (v306 & 0xF8);
        a5[3] = v299;
        a5[4] = v300;
        v301 = &v307[v306 >> 3];
        a5[2] = v301;
        ++v302;
        --v262;
      }

      while (v262);
    }

    v211 = v320 + 1;
    a4 += 440;
  }

  while (v320 != 3);
  v308 = *a5;
  v309 = v300 | (1 << v299);
  a5[3] = (v299 + 1);
  a5[4] = v309;
  *&v301[v308] = v309;
  v310 = a5[3];
  v311 = v310 & 7;
  v312 = a5[4] >> (v310 & 0xF8);
  v313 = &a5[2][v310 >> 3];
  v314 = *a5;
  v315 = v312 | (1 << v311);
  a5[2] = v313;
  a5[3] = (v311 + 1);
  a5[4] = v315;
  *&v314[v313] = v315;
  v317 = a5[2];
  v316 = a5[3];
  v318 = a5[4] >> (v316 & 0xF8);
  a5[3] = (v316 & 7);
  a5[4] = v318;
  a5[2] = &v317[v316 >> 3];
  v319 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240C0082C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_240B2234C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240C00838(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v78 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    v13 = result;
    v14 = 0;
    v15 = xmmword_240C11A20;
    v16.i64[0] = 0x8000800080008;
    v16.i64[1] = 0x8000800080008;
    v76 = xmmword_240C11A20;
    while (1)
    {
      v17 = 0;
      v18 = 0;
      memset(var10, 0, sizeof(var10));
      v19 = var10;
      v20 = 1;
      do
      {
        v21 = *(a3 + 2 * v14 + 2 * v17);
        v22 = *(a4 + 2 * v14 + 2 * v17);
        v23 = *(a5 + 2 * v14 + 2 * v17);
        v24 = vsubq_s16(v21, v23);
        v25 = vsubq_s16(v22, v23);
        v26 = vaddq_s16(v24, v22);
        v27 = vcltzq_s16(veorq_s8(v25, vsubq_s16(v21, v22)));
        v28 = veorq_s8(v24, v25);
        v29 = vsubq_s16(*(a2 + 2 * v14 + 2 * v17), vbslq_s8(vcltzq_s16(v28), v26, vbslq_s8(v27, v22, v21)));
        v30 = vaddq_s16(v29, v29);
        v31 = vcltzq_s16(v29);
        v32 = v20;
        v33 = vbslq_s8(vceqq_s16(v30, v31), v16, v15);
        v33.i16[0] = vminvq_u16(v33);
        if (v18 == v17)
        {
          v34 = v33.u32[0];
        }

        else
        {
          v34 = 0;
        }

        *v19 = veorq_s8(v30, v31);
        v18 += v34;
        v19 = (var10 | 0x10);
        v17 = 8;
        v20 = 0;
      }

      while ((v32 & 1) != 0);
      if (a6 - v14 >= 0x10)
      {
        v35 = 16;
      }

      else
      {
        v35 = a6 - v14;
      }

      v36 = v13[1];
      if (v18 >= v35)
      {
        v37 = v35;
      }

      else
      {
        v37 = v18;
      }

      if (v18 < v35)
      {
        goto LABEL_21;
      }

      if (v37 <= 7 && v36 == 0)
      {
        break;
      }

      v13[1] = (v36 + v37);
LABEL_35:
      v14 += 16;
      if (v14 >= a6)
      {
        goto LABEL_36;
      }
    }

    v36 = 0;
LABEL_21:
    v39 = v36->u64 + v37;
    v40 = *v13;
    v41 = v39 - 8;
    if (v39 < 8)
    {
      result = sub_240C00C40(var10, v35, 0, v40->i64[1], v40[4], v40[8], a5, a6, a7, a8, v33, v28, v24, v27, v26, v71, v72, v73, v74, v15, v75, v76, *(&v76 + 1));
      v16.i64[0] = 0x8000800080008;
      v16.i64[1] = 0x8000800080008;
      v15 = v76;
    }

    else
    {
      v43 = v40->i64[0];
      v42 = v40->i64[1];
      if (v41 > 0x1F)
      {
        v54 = __clz(v41);
        v55 = 31 - v54;
        LODWORD(v56) = 43 - v54;
        v57 = v41 >= 0x10;
        if (v41 >= 0x10)
        {
          v56 = v56;
        }

        else
        {
          v56 = v41;
        }

        if (v41 < 0x10)
        {
          v55 = 0;
        }

        LODWORD(v41) = (-1 << v55) + v41;
        if (v57)
        {
          v41 = v41;
        }

        else
        {
          v41 = 0;
        }

        v58 = v43[v56 + 38];
        v59 = (v41 << v58) | *&v43[2 * v56 + 72];
        v60 = *v43;
        v61 = (v59 << v60) | v43[19];
        v62 = v55 + v60 + v58;
        v63 = *v42;
        v47 = v42 + 16;
        v64 = *(v42 + 2);
        v49 = (v42 + 24);
        v65 = *(v42 + 3);
        v66 = *(v42 + 4);
        v51 = v42 + 32;
        v67 = v66 | (v61 << v65);
        *v51 = v67;
        *v49 = v65 + v62;
        *(v63 + v64) = v67;
      }

      else
      {
        v44 = v43[v41 + 400];
        v45 = *&v43[8 * v41 + 144];
        v46 = *v42;
        v47 = v42 + 16;
        v48 = *(v42 + 2);
        v49 = (v42 + 24);
        v50 = *(v42 + 3);
        v52 = *(v42 + 4);
        v51 = v42 + 32;
        v53 = v52 | (v45 << v50);
        *v51 = v53;
        *v49 = v50 + v44;
        *(v46 + v48) = v53;
      }

      v68 = *v49;
      v69 = *v49 & 0xFFFFFFFFFFFFFFF8;
      *v49 &= 7uLL;
      *v51 >>= v69;
      *v47 += v68 >> 3;
      result = sub_240C00C40(var10, v35, v37, v40->i64[1], v40[4], v40[8], a5, a6, a7, a8, v33, v28, v24, v27, v26, v71, v72, v73, v74, v15, v75, v76, *(&v76 + 1));
      v13[1] = 0;
      v15 = v76;
      v16.i64[0] = 0x8000800080008;
      v16.i64[1] = 0x8000800080008;
    }

    goto LABEL_35;
  }

LABEL_36:
  v70 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned __int8 *sub_240C00B30(unsigned __int8 *result, uint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3 - 8;
    if ((a3 - 8) > 0x1F)
    {
      v14 = __clz(v3);
      v15 = 31 - v14;
      LODWORD(v16) = 43 - v14;
      v17 = v3 >= 0x10;
      if (v3 >= 0x10)
      {
        v16 = v16;
      }

      else
      {
        v16 = v3;
      }

      if (v3 < 0x10)
      {
        v15 = 0;
      }

      LODWORD(v3) = (-1 << v15) + v3;
      if (v17)
      {
        v3 = v3;
      }

      else
      {
        v3 = 0;
      }

      v18 = result[v16 + 38];
      v19 = (v3 << v18) | *&result[2 * v16 + 72];
      v20 = *result;
      v21 = (v19 << v20) | result[19];
      v22 = v15 + v20 + v18;
      v23 = *a2;
      v7 = a2 + 2;
      v24 = a2[2];
      v9 = (a2 + 3);
      v25 = a2[3];
      v26 = a2[4];
      v11 = a2 + 4;
      v27 = v26 | (v21 << v25);
      *v11 = v27;
      *v9 = v25 + v22;
      *(v23 + v24) = v27;
    }

    else
    {
      v4 = result[v3 + 400];
      v5 = *&result[8 * v3 + 144];
      v6 = *a2;
      v7 = a2 + 2;
      v8 = a2[2];
      v9 = (a2 + 3);
      v10 = a2[3];
      v12 = a2[4];
      v11 = a2 + 4;
      v13 = v12 | (v5 << v10);
      *v11 = v13;
      *v9 = v10 + v4;
      *(v6 + v8) = v13;
    }

    v28 = *v9;
    v29 = *v9 & 0xFFFFFFFFFFFFFFF8;
    *v9 &= 7uLL;
    *v11 = *v11 >> v29;
    *v7 += v28 >> 3;
  }

  return result;
}

uint64_t sub_240C00C40(uint64_t result, unint64_t a2, unint64_t a3, void *a4, int8x16_t a5, int8x16_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int8x16_t a11, int8x16_t a12, int8x16_t a13, int8x16_t a14, int8x16_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64x2_t a20, uint64x2_t a21, uint64_t a22, uint64_t a23)
{
  v23 = 0;
  a23 = *MEMORY[0x277D85DE8];
  v24 = 1;
  v25.i64[0] = 0x10001000100010;
  v25.i64[1] = 0x10001000100010;
  v26.i64[0] = 0x1000100010001;
  v26.i64[1] = 0x1000100010001;
  v27.i64[0] = 0xFFFF0000FFFFLL;
  v27.i64[1] = 0xFFFF0000FFFFLL;
  do
  {
    v28 = v24;
    v29 = *(result + 2 * v23);
    v30 = vsubq_s16(v25, vclzq_s16(v29));
    v31 = vqsubq_u16(v30, v26);
    v32 = vqsubq_u16(v29, vshlq_u16(v26, v31));
    v33 = *&v30 | __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00);
    v34 = vqtbl1q_s8(a5, v33);
    v35 = vqtbl1q_s8(a6, v33);
    v36 = a2 - v23;
    if (a2 < v23)
    {
      v36 = 0;
    }

    v37 = a3 - v23;
    if (a3 < v23)
    {
      v37 = 0;
    }

    v38 = (&vars0 + 4 * v23);
    v39 = vorrq_s8(vshlq_u16(v32, v34), v35);
    v40 = vaddq_s16(v31, v34);
    if (v36 >= 8)
    {
      v36 = 8;
    }

    v41 = *(&unk_240C861EC - 2 * v36 + 16);
    if (v37 >= 8)
    {
      v42 = 8;
    }

    else
    {
      v42 = v37;
    }

    v43 = vandq_s8(v41, *(&unk_240C8620C - 2 * v42 + 16));
    v44 = vandq_s8(v43, v40);
    v45 = vandq_s8(v43, v39);
    v46 = vandq_s8(v44, v27);
    *v38 = vsraq_n_u32(v46, v44, 0x10uLL);
    v38[1] = vorrq_s8(vandq_s8(v45, v27), vshlq_u32(vshrq_n_u32(v45, 0x10uLL), v46));
    v23 = 8;
    v24 = 0;
  }

  while ((v28 & 1) != 0);
  v47 = 0;
  v48.i64[0] = 0xFFFFFFFFLL;
  v48.i64[1] = 0xFFFFFFFFLL;
  v49 = vandq_s8(vars0, v48);
  v50 = vandq_s8(a12, v48);
  a20 = vsraq_n_u64(v49, vars0, 0x20uLL);
  a21 = vsraq_n_u64(v50, a12, 0x20uLL);
  a14 = vorrq_s8(vshlq_u64(vshrq_n_u64(a11, 0x20uLL), v49), vandq_s8(a11, v48));
  a15 = vorrq_s8(vshlq_u64(vshrq_n_u64(a13, 0x20uLL), v50), vandq_s8(a13, v48));
  v51 = a4[3];
  do
  {
    v52 = a14.u64[v47];
    v53 = a4[4] | (v52 << v51);
    a4[4] = v53;
    *(*a4 + a4[2]) = v53;
    v54 = a4[3];
    v51 = a20.i64[v47] + v54;
    a4[3] = v51;
    if (v51 >= 0x40)
    {
      a4[3] = v51 - 64;
      a4[4] = v52 >> -v54;
      a4[2] += 8;
      LOBYTE(v51) = v51 - 64;
    }

    ++v47;
  }

  while (v47 != 4);
  *(*a4 + a4[2]) = a4[4];
  v56 = a4[2];
  v55 = a4[3];
  a4[4] >>= v55 & 0xF8;
  a4[2] = v56 + (v55 >> 3);
  a4[3] = v55 & 7;
  v57 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned int *sub_240C0100C(unsigned int *result, unsigned int *a2, unsigned int *a3, void *a4)
{
  v4 = *a2;
  v5 = HIBYTE(*a2);
  v6 = BYTE2(*a2);
  v7 = BYTE1(*a2);
  v8 = *a2;
  v9 = *a2 & 0xFF000000 | (v6 << 16) | (v7 << 8) | v8;
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = *result;
  v11 = HIBYTE(*result);
  v12 = BYTE2(*result);
  v13 = BYTE1(*result);
  v14 = *result;
  v15 = *result & 0xFF000000 | (v12 << 16) | (v13 << 8) | v14;
  if (!v15)
  {
    goto LABEL_7;
  }

  v16 = (((v7 * 0.587) + (v8 * 0.299)) + (v6 * 0.114)) + 0.01;
  if (*a4 == 4)
  {
    v16 = v16 * v5;
    v17 = ((((v13 * 0.587) + (v14 * 0.299)) + (v12 * 0.114)) + 0.01) * v11;
  }

  else
  {
    v17 = (((v13 * 0.587) + (v14 * 0.299)) + (v12 * 0.114)) + 0.01;
  }

  if (v16 >= v17)
  {
LABEL_10:
    v21 = *a3;
    if (*a3 & 0xFF000000 | (BYTE2(*a3) << 16) | (BYTE1(*a3) << 8) | *a3)
    {
      if (!v9 || ((v22 = (((BYTE1(*a3) * 0.587) + (*a3 * 0.299)) + (BYTE2(*a3) * 0.114)) + 0.01, *a4 != 4) ? (v23 = (((v7 * 0.587) + (v8 * 0.299)) + (v6 * 0.114)) + 0.01) : (v22 = v22 * HIBYTE(v21), v23 = ((((v7 * 0.587) + (v8 * 0.299)) + (v6 * 0.114)) + 0.01) * v5), v22 < v23))
      {
        *a2 = v21;
        *a3 = v4;
        v27 = *a2;
        if (*a2 & 0xFF000000 | (BYTE2(*a2) << 16) | (BYTE1(*a2) << 8) | *a2)
        {
          v28 = *result;
          if (!(*result & 0xFF000000 | (BYTE2(*result) << 16) | (BYTE1(*result) << 8) | *result) || ((v29 = *result, v30 = (((BYTE1(*a2) * 0.587) + (*a2 * 0.299)) + (BYTE2(*a2) * 0.114)) + 0.01, *a4 != 4) ? (v31 = (((BYTE1(v28) * 0.587) + (v29 * 0.299)) + (BYTE2(v28) * 0.114)) + 0.01) : (v30 = v30 * HIBYTE(v27), v31 = ((((BYTE1(v28) * 0.587) + (v29 * 0.299)) + (BYTE2(v28) * 0.114)) + 0.01) * HIBYTE(v28)), v30 < v31))
          {
            *result = v27;
            *a2 = v28;
          }
        }
      }
    }
  }

  else
  {
LABEL_7:
    v18 = *a3;
    if (*a3 & 0xFF000000 | (BYTE2(*a3) << 16) | (BYTE1(*a3) << 8) | *a3)
    {
      v19 = (((BYTE1(*a3) * 0.587) + (*a3 * 0.299)) + (BYTE2(*a3) * 0.114)) + 0.01;
      if (*a4 == 4)
      {
        v19 = v19 * HIBYTE(v18);
        v20 = ((((v7 * 0.587) + (v8 * 0.299)) + (v6 * 0.114)) + 0.01) * v5;
      }

      else
      {
        v20 = (((v7 * 0.587) + (v8 * 0.299)) + (v6 * 0.114)) + 0.01;
      }

      if (v19 < v20)
      {
        *result = v18;
LABEL_30:
        *a3 = v10;
        return result;
      }
    }

    *result = v4;
    *a2 = v10;
    v24 = *a3;
    if (*a3 & 0xFF000000 | (BYTE2(*a3) << 16) | (BYTE1(*a3) << 8) | *a3)
    {
      if (!v15 || ((v25 = (((BYTE1(*a3) * 0.587) + (*a3 * 0.299)) + (BYTE2(*a3) * 0.114)) + 0.01, *a4 != 4) ? (v26 = (((v13 * 0.587) + (v14 * 0.299)) + (v12 * 0.114)) + 0.01) : (v25 = v25 * HIBYTE(v24), v26 = ((((v13 * 0.587) + (v14 * 0.299)) + (v12 * 0.114)) + 0.01) * v11), v25 < v26))
      {
        *a2 = v24;
        goto LABEL_30;
      }
    }
  }

  return result;
}

unsigned int *sub_240C01498(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, void **a5)
{
  result = sub_240C0100C(a1, a2, a3, *a5);
  v11 = *a4;
  if (*a4 & 0xFF000000 | (BYTE2(*a4) << 16) | (BYTE1(*a4) << 8) | *a4)
  {
    v12 = *a3;
    if (!(*a3 & 0xFF000000 | (BYTE2(*a3) << 16) | (BYTE1(*a3) << 8) | *a3) || ((v13 = *a3, v14 = (((BYTE1(*a4) * 0.587) + (*a4 * 0.299)) + (BYTE2(*a4) * 0.114)) + 0.01, **a5 != 4) ? (v15 = (((BYTE1(v12) * 0.587) + (v13 * 0.299)) + (BYTE2(v12) * 0.114)) + 0.01) : (v14 = v14 * HIBYTE(v11), v15 = ((((BYTE1(v12) * 0.587) + (v13 * 0.299)) + (BYTE2(v12) * 0.114)) + 0.01) * HIBYTE(v12)), v14 < v15))
    {
      *a3 = v11;
      *a4 = v12;
      v16 = *a3;
      if (*a3 & 0xFF000000 | (BYTE2(*a3) << 16) | (BYTE1(*a3) << 8) | *a3)
      {
        v17 = *a2;
        if (!(*a2 & 0xFF000000 | (BYTE2(*a2) << 16) | (BYTE1(*a2) << 8) | *a2) || ((v18 = *a2, v19 = (((BYTE1(*a3) * 0.587) + (*a3 * 0.299)) + (BYTE2(*a3) * 0.114)) + 0.01, **a5 != 4) ? (v20 = (((BYTE1(v17) * 0.587) + (v18 * 0.299)) + (BYTE2(v17) * 0.114)) + 0.01) : (v19 = v19 * HIBYTE(v16), v20 = ((((BYTE1(v17) * 0.587) + (v18 * 0.299)) + (BYTE2(v17) * 0.114)) + 0.01) * HIBYTE(v17)), v19 < v20))
        {
          *a2 = v16;
          *a3 = v17;
          v21 = *a2;
          if (*a2 & 0xFF000000 | (BYTE2(*a2) << 16) | (BYTE1(*a2) << 8) | *a2)
          {
            v22 = *a1;
            if (!(*a1 & 0xFF000000 | (BYTE2(*a1) << 16) | (BYTE1(*a1) << 8) | *a1) || ((v23 = *a1, v24 = (((BYTE1(*a2) * 0.587) + (*a2 * 0.299)) + (BYTE2(*a2) * 0.114)) + 0.01, **a5 != 4) ? (v25 = (((BYTE1(v22) * 0.587) + (v23 * 0.299)) + (BYTE2(v22) * 0.114)) + 0.01) : (v24 = v24 * HIBYTE(v21), v25 = ((((BYTE1(v22) * 0.587) + (v23 * 0.299)) + (BYTE2(v22) * 0.114)) + 0.01) * HIBYTE(v22)), v24 < v25))
            {
              *a1 = v21;
              *a2 = v22;
            }
          }
        }
      }
    }
  }

  return result;
}

unsigned int *sub_240C017F8(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, void **a6)
{
  result = sub_240C01498(a1, a2, a3, a4, a6);
  v13 = *a5;
  if (*a5 & 0xFF000000 | (BYTE2(*a5) << 16) | (BYTE1(*a5) << 8) | *a5)
  {
    v14 = *a4;
    if (!(*a4 & 0xFF000000 | (BYTE2(*a4) << 16) | (BYTE1(*a4) << 8) | *a4) || ((v15 = *a4, v16 = (((BYTE1(*a5) * 0.587) + (*a5 * 0.299)) + (BYTE2(*a5) * 0.114)) + 0.01, **a6 != 4) ? (v17 = (((BYTE1(v14) * 0.587) + (v15 * 0.299)) + (BYTE2(v14) * 0.114)) + 0.01) : (v16 = v16 * HIBYTE(v13), v17 = ((((BYTE1(v14) * 0.587) + (v15 * 0.299)) + (BYTE2(v14) * 0.114)) + 0.01) * HIBYTE(v14)), v16 < v17))
    {
      *a4 = v13;
      *a5 = v14;
      v18 = *a4;
      if (*a4 & 0xFF000000 | (BYTE2(*a4) << 16) | (BYTE1(*a4) << 8) | *a4)
      {
        v19 = *a3;
        if (!(*a3 & 0xFF000000 | (BYTE2(*a3) << 16) | (BYTE1(*a3) << 8) | *a3) || ((v20 = *a3, v21 = (((BYTE1(*a4) * 0.587) + (*a4 * 0.299)) + (BYTE2(*a4) * 0.114)) + 0.01, **a6 != 4) ? (v22 = (((BYTE1(v19) * 0.587) + (v20 * 0.299)) + (BYTE2(v19) * 0.114)) + 0.01) : (v21 = v21 * HIBYTE(v18), v22 = ((((BYTE1(v19) * 0.587) + (v20 * 0.299)) + (BYTE2(v19) * 0.114)) + 0.01) * HIBYTE(v19)), v21 < v22))
        {
          *a3 = v18;
          *a4 = v19;
          v23 = *a3;
          if (*a3 & 0xFF000000 | (BYTE2(*a3) << 16) | (BYTE1(*a3) << 8) | *a3)
          {
            v24 = *a2;
            if (!(*a2 & 0xFF000000 | (BYTE2(*a2) << 16) | (BYTE1(*a2) << 8) | *a2) || ((v25 = *a2, v26 = (((BYTE1(*a3) * 0.587) + (*a3 * 0.299)) + (BYTE2(*a3) * 0.114)) + 0.01, **a6 != 4) ? (v27 = (((BYTE1(v24) * 0.587) + (v25 * 0.299)) + (BYTE2(v24) * 0.114)) + 0.01) : (v26 = v26 * HIBYTE(v23), v27 = ((((BYTE1(v24) * 0.587) + (v25 * 0.299)) + (BYTE2(v24) * 0.114)) + 0.01) * HIBYTE(v24)), v26 < v27))
            {
              *a2 = v23;
              *a3 = v24;
              v28 = *a2;
              if (*a2 & 0xFF000000 | (BYTE2(*a2) << 16) | (BYTE1(*a2) << 8) | *a2)
              {
                v29 = *a1;
                if (!(*a1 & 0xFF000000 | (BYTE2(*a1) << 16) | (BYTE1(*a1) << 8) | *a1) || ((v30 = *a1, v31 = (((BYTE1(*a2) * 0.587) + (*a2 * 0.299)) + (BYTE2(*a2) * 0.114)) + 0.01, **a6 != 4) ? (v32 = (((BYTE1(v29) * 0.587) + (v30 * 0.299)) + (BYTE2(v29) * 0.114)) + 0.01) : (v31 = v31 * HIBYTE(v28), v32 = ((((BYTE1(v29) * 0.587) + (v30 * 0.299)) + (BYTE2(v29) * 0.114)) + 0.01) * HIBYTE(v29)), v31 < v32))
                {
                  *a1 = v28;
                  *a2 = v29;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_240C01C64(unsigned int *a1, unsigned int *a2, void **a3)
{
  v6 = a2 - a1;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = *(a2 - 1);
        if (v7 & 0xFF000000 | (BYTE2(v7) << 16) | (BYTE1(v7) << 8) | v7)
        {
          v8 = *a1;
          if (!(*a1 & 0xFF000000 | (BYTE2(*a1) << 16) | (BYTE1(*a1) << 8) | *a1) || ((v9 = *a1, v10 = (((BYTE1(v7) * 0.587) + (v7 * 0.299)) + (BYTE2(v7) * 0.114)) + 0.01, **a3 != 4) ? (v11 = (((BYTE1(v8) * 0.587) + (v9 * 0.299)) + (BYTE2(v8) * 0.114)) + 0.01) : (v10 = v10 * HIBYTE(v7), v11 = ((((BYTE1(v8) * 0.587) + (v9 * 0.299)) + (BYTE2(v8) * 0.114)) + 0.01) * HIBYTE(v8)), v10 < v11))
          {
            *a1 = v7;
            *(a2 - 1) = v8;
          }
        }

        return 1;
      }

      goto LABEL_13;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      sub_240C0100C(a1, a1 + 1, a2 - 1, *a3);
      return 1;
    case 4:
      sub_240C01498(a1, a1 + 1, a1 + 2, a2 - 1, a3);
      return 1;
    case 5:
      sub_240C017F8(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
  }

LABEL_13:
  v12 = a1 + 2;
  sub_240C0100C(a1, a1 + 1, a1 + 2, *a3);
  v13 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v14 = 0;
  v15 = 0;
  v16 = *a3;
  while (1)
  {
    v17 = *v13;
    if (!(*v13 & 0xFF000000 | (BYTE2(*v13) << 16) | (BYTE1(*v13) << 8) | *v13))
    {
      goto LABEL_34;
    }

    v18 = HIBYTE(v17);
    v19 = *v12;
    v20 = *v13;
    v21 = BYTE1(v17);
    if (!(*v12 & 0xFF000000 | (BYTE2(*v12) << 16) | (BYTE1(*v12) << 8) | *v12))
    {
      break;
    }

    v22 = *v12;
    v23 = (((v21 * 0.587) + (v20 * 0.299)) + (BYTE2(v17) * 0.114)) + 0.01;
    if (*v16 == 4)
    {
      v24 = v23 * v18;
      v25 = ((((BYTE1(v19) * 0.587) + (v22 * 0.299)) + (BYTE2(v19) * 0.114)) + 0.01) * HIBYTE(v19);
    }

    else
    {
      v25 = (((BYTE1(v19) * 0.587) + (v22 * 0.299)) + (BYTE2(v19) * 0.114)) + 0.01;
      v24 = v23;
    }

    if (v24 < v25)
    {
      goto LABEL_22;
    }

LABEL_34:
    v12 = v13;
    v14 += 4;
    if (++v13 == a2)
    {
      return 1;
    }
  }

  v23 = (((v21 * 0.587) + (v20 * 0.299)) + (BYTE2(v17) * 0.114)) + 0.01;
LABEL_22:
  *v13 = v19;
  v26 = *a3;
  v27 = v23 * v18;
  v28 = v14;
  while (1)
  {
    v29 = *(a1 + v28 + 4);
    if (v29 & 0xFF000000 | (BYTE2(v29) << 16) | (BYTE1(v29) << 8) | v29)
    {
      v30 = (((BYTE1(v29) * 0.587) + (v29 * 0.299)) + (BYTE2(v29) * 0.114)) + 0.01;
      if (*v26 == 4)
      {
        v31 = v27;
      }

      else
      {
        v31 = v23;
      }

      if (*v26 == 4)
      {
        v30 = v30 * HIBYTE(v29);
      }

      if (v31 >= v30)
      {
        break;
      }
    }

    *(a1 + v28 + 8) = v29;
    v28 -= 4;
    if (v28 == -8)
    {
      v32 = a1;
      goto LABEL_33;
    }
  }

  v32 = (a1 + v28 + 8);
LABEL_33:
  *v32 = v17;
  if (++v15 != 8)
  {
    goto LABEL_34;
  }

  return v13 + 1 == a2;
}

void sub_240C02050(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4), void *a5)
{
  if (a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = sub_240C065DC;
  }

  v139 = v8;
  v9 = *(a1 + 104);
  if (v9 > 8)
  {
    if (v9 <= 0xD)
    {
      v162 = a1;
      v163 = v9;
      if (*(a1 + 2048) == 1)
      {
        goto LABEL_80;
      }

      v21 = *(a1 + 1984) - *(a1 + 1976);
      v51 = v21 == 8;
      v22 = v21 != 8;
      v23 = v51;
      v161 = v23;
      v24 = a5 != 0 && v22;
      v160 = v24;
      v25 = *(a1 + 72);
      v26 = v25 * *(a1 + 64);
      if (v24)
      {
        v27 = 16;
      }

      else
      {
        v27 = v25 * *(a1 + 64);
      }

      if (v24)
      {
        v28 = a5[5];
        v18 = *(a1 + 2000) + v28;
        v29 = a5[9];
        if (v29)
        {
          v30 = v29[3];
          if (v30)
          {
            v30(*v29, v18);
            a5[7] = v18;
          }
        }

        a5[5] = v18;
        v159 = 0;
        if (!v26)
        {
          goto LABEL_102;
        }
      }

      else
      {
        v28 = 0;
        v159 = 0;
        if (!v26)
        {
          goto LABEL_199;
        }
      }

      for (i = 0; i < v26; v159 = i)
      {
        for (j = 0; j != 220; j += 55)
        {
          v64 = &v147[j];
          *(v64 + 132) = 0;
          *(v64 + 31) = 0uLL;
          *(v64 + 29) = 0uLL;
          *(v64 + 27) = 0uLL;
          *(v64 + 25) = 0uLL;
          *(v64 + 8) = 0uLL;
          *(v64 + 9) = 0uLL;
          *(v64 + 10) = 0uLL;
          *(v64 + 11) = 0uLL;
          *(v64 + 191) = 0;
          *(v64 + 17) = 0uLL;
          *(v64 + 18) = 0uLL;
          *(v64 + 19) = 0uLL;
          *(v64 + 20) = 0uLL;
          *(v64 + 21) = 0uLL;
          *(v64 + 22) = 0uLL;
          *(v64 + 23) = 0uLL;
          *(v64 + 24) = 0uLL;
          *(v64 + 25) = 0uLL;
          *(v64 + 26) = 0uLL;
          *(v64 + 27) = 0uLL;
          *(v64 + 28) = 0uLL;
          *(v64 + 29) = 0uLL;
          *(v64 + 30) = 0uLL;
          *(v64 + 31) = 0uLL;
          *(v64 + 32) = 0uLL;
          *(v64 + 33) = 0uLL;
          *(v64 + 34) = 0uLL;
        }

        v65 = v26 - i;
        if (v65 >= v27)
        {
          v66 = v27;
        }

        else
        {
          v66 = v65;
        }

        v149 = 0uLL;
        v150 = 0uLL;
        v151 = MEMORY[0x277D86138];
        v152 = 0uLL;
        v153 = 0uLL;
        v154 = 0uLL;
        __p = 0uLL;
        v156 = 0uLL;
        v157 = 0uLL;
        memset(v158, 0, sizeof(v158));
        if (v160 == 1)
        {
          sub_240BFCE78(&v141, v66);
          sub_240BFCF6C(&v153 + 1, &v141);
          v164[0] = &v141;
          sub_240BFA56C(v164);
        }

        v141 = &v159;
        v142 = &v162;
        v143 = &v161;
        v144 = &v160;
        v145 = v147;
        v146 = &v163;
        v139(a3, &v141, &sub_240C05324, v66);
        if (v160 == 1)
        {
          v148 = v162[12];
          *(&v157 + 1) = 1;
          sub_240C02E60(v147, a5);
        }

        if (__p)
        {
          *(&__p + 1) = __p;
          operator delete(__p);
        }

        v141 = &v153 + 1;
        sub_240BFA56C(&v141);
        v67 = *(&v150 + 1);
        *(&v150 + 1) = 0;
        if (v67)
        {
          v151();
        }

        if (v149)
        {
          *(&v149 + 1) = v149;
          operator delete(v149);
        }

        i = v159 + v27;
      }

      if ((v160 & 1) == 0)
      {
        goto LABEL_199;
      }

      v18 = a5[5];
LABEL_102:
      v68 = a5[9];
      if (v68)
      {
        v69 = v68[3];
        if (v69)
        {
          v69(*v68, v28);
          a5[7] = v28;
        }
      }

      a5[5] = v28;
      sub_240C032A0(v162 + 244);
      v70 = v162[12];
      v72 = v70 == 2 || v70 == 4;
      v53 = sub_240C034D0(v162 + 247, v162[250], v162[251], v72, a2);
      if (v53)
      {
        v73 = v53;
        do
        {
          v74 = v162[244];
          v75 = *v74;
          v76 = v74[2];
          v77 = v74[4];
          v74[3] += 8;
          *(v75 + v76) = v77;
          v79 = v74[2];
          v78 = v74[3];
          v80 = v74[4] >> (v78 & 0xF8);
          v74[3] = v78 & 7;
          v74[4] = v80;
          v74[2] = v79 + (v78 >> 3);
          --v73;
        }

        while (v73);
      }

      goto LABEL_195;
    }

    if (v9 == 14)
    {
      v163 = a1;
      if (*(a1 + 2048) == 1)
      {
        goto LABEL_80;
      }

      v31 = *(a1 + 1984) - *(a1 + 1976);
      v51 = v31 == 8;
      v32 = v31 != 8;
      v33 = v51;
      v161 = v33;
      v34 = a5 != 0 && v32;
      v160 = v34;
      v35 = *(a1 + 72);
      v36 = v35 * *(a1 + 64);
      if (v34)
      {
        v37 = 16;
      }

      else
      {
        v37 = v35 * *(a1 + 64);
      }

      if (v34)
      {
        v38 = a5[5];
        v39 = *(a1 + 2000) + v38;
        v40 = a5[9];
        if (v40)
        {
          v41 = v40[3];
          if (v41)
          {
            v41(*v40, v39);
            a5[7] = v39;
          }
        }

        a5[5] = v39;
        v162 = 0;
        if (!v36)
        {
          goto LABEL_147;
        }
      }

      else
      {
        v38 = 0;
        v162 = 0;
        if (!v36)
        {
          goto LABEL_204;
        }
      }

      for (k = 0; k < v36; v162 = k)
      {
        for (m = 0; m != 220; m += 55)
        {
          v93 = &v147[m];
          *(v93 + 132) = 0;
          *(v93 + 31) = 0uLL;
          *(v93 + 29) = 0uLL;
          *(v93 + 27) = 0uLL;
          *(v93 + 25) = 0uLL;
          *(v93 + 8) = 0uLL;
          *(v93 + 9) = 0uLL;
          *(v93 + 10) = 0uLL;
          *(v93 + 11) = 0uLL;
          *(v93 + 191) = 0;
          *(v93 + 17) = 0uLL;
          *(v93 + 18) = 0uLL;
          *(v93 + 19) = 0uLL;
          *(v93 + 20) = 0uLL;
          *(v93 + 21) = 0uLL;
          *(v93 + 22) = 0uLL;
          *(v93 + 23) = 0uLL;
          *(v93 + 24) = 0uLL;
          *(v93 + 25) = 0uLL;
          *(v93 + 26) = 0uLL;
          *(v93 + 27) = 0uLL;
          *(v93 + 28) = 0uLL;
          *(v93 + 29) = 0uLL;
          *(v93 + 30) = 0uLL;
          *(v93 + 31) = 0uLL;
          *(v93 + 32) = 0uLL;
          *(v93 + 33) = 0uLL;
          *(v93 + 34) = 0uLL;
        }

        v94 = v36 - k;
        if (v94 >= v37)
        {
          v95 = v37;
        }

        else
        {
          v95 = v94;
        }

        v149 = 0uLL;
        v150 = 0uLL;
        v151 = MEMORY[0x277D86138];
        v152 = 0uLL;
        v153 = 0uLL;
        v154 = 0uLL;
        __p = 0uLL;
        v156 = 0uLL;
        v157 = 0uLL;
        memset(v158, 0, sizeof(v158));
        if (v160 == 1)
        {
          sub_240BFCE78(&v141, v95);
          sub_240BFCF6C(&v153 + 1, &v141);
          v164[0] = &v141;
          sub_240BFA56C(v164);
        }

        v141 = &v162;
        v142 = &v163;
        v143 = &v161;
        v144 = &v160;
        v145 = v147;
        v146 = &v159;
        v139(a3, &v141, &sub_240C046B8, v95);
        if (v160 == 1)
        {
          v148 = v163[12];
          *(&v157 + 1) = 1;
          sub_240C02E60(v147, a5);
        }

        if (__p)
        {
          *(&__p + 1) = __p;
          operator delete(__p);
        }

        v141 = &v153 + 1;
        sub_240BFA56C(&v141);
        v96 = *(&v150 + 1);
        *(&v150 + 1) = 0;
        if (v96)
        {
          v151();
        }

        if (v149)
        {
          *(&v149 + 1) = v149;
          operator delete(v149);
        }

        k = (v162 + v37);
      }

      if (v160)
      {
        v39 = a5[5];
LABEL_147:
        v97 = a5[9];
        if (v97)
        {
          v98 = v97[3];
          if (v98)
          {
            v98(*v97, v38);
            a5[7] = v38;
          }
        }

        a5[5] = v38;
        sub_240C032A0(v163 + 244);
        v99 = v163[12];
        v101 = v99 == 2 || v99 == 4;
        v102 = sub_240C034D0(v163 + 247, v163[250], v163[251], v101, a2);
        if (v102)
        {
          v103 = v102;
          do
          {
            v104 = v163[244];
            v105 = *v104;
            v106 = v104[2];
            v107 = v104[4];
            v104[3] += 8;
            *(v105 + v106) = v107;
            v109 = v104[2];
            v108 = v104[3];
            v110 = v104[4] >> (v108 & 0xF8);
            v104[3] = v108 & 7;
            v104[4] = v110;
            v104[2] = v109 + (v108 >> 3);
            --v103;
          }

          while (v103);
        }

        v111 = v163;
        *v163[247] += v102;
        sub_240BF9D60(v111, a2);
        v112 = v163;
        sub_240BFA3EC(v163[239], v163[241], a5);
        sub_240BFA3EC(*v112[244], *(v112[244] + 16), a5);
        v113 = a5[9];
        if (v113)
        {
          v114 = v113[3];
          if (v114)
          {
            v114(*v113, v39);
            a5[7] = v39;
          }
        }

        a5[5] = v39;
LABEL_206:
        v138 = v163;
        goto LABEL_202;
      }

LABEL_204:
      if (a5)
      {
        sub_240BF9D60(v163, a2);
        sub_240C02E60(v163, a5);
      }

      goto LABEL_206;
    }

    v162 = a1;
    v163 = v9;
    if (*(a1 + 2048) == 1)
    {
      goto LABEL_80;
    }

    v81 = *(a1 + 1984) - *(a1 + 1976);
    v51 = v81 == 8;
    v82 = v81 != 8;
    v83 = v51;
    v161 = v83;
    v84 = a5 != 0 && v82;
    v160 = v84;
    v85 = *(a1 + 72);
    v86 = v85 * *(a1 + 64);
    if (v84)
    {
      v87 = 16;
    }

    else
    {
      v87 = v85 * *(a1 + 64);
    }

    if (v84)
    {
      v88 = a5[5];
      v18 = *(a1 + 2000) + v88;
      v89 = a5[9];
      if (v89)
      {
        v90 = v89[3];
        if (v90)
        {
          v90(*v89, v18);
          a5[7] = v18;
        }
      }

      a5[5] = v18;
      v159 = 0;
      if (!v86)
      {
        goto LABEL_183;
      }
    }

    else
    {
      v88 = 0;
      v159 = 0;
      if (!v86)
      {
        goto LABEL_199;
      }
    }

    for (n = 0; n < v86; v159 = n)
    {
      for (ii = 0; ii != 220; ii += 55)
      {
        v117 = &v147[ii];
        *(v117 + 132) = 0;
        *(v117 + 31) = 0uLL;
        *(v117 + 29) = 0uLL;
        *(v117 + 27) = 0uLL;
        *(v117 + 25) = 0uLL;
        *(v117 + 8) = 0uLL;
        *(v117 + 9) = 0uLL;
        *(v117 + 10) = 0uLL;
        *(v117 + 11) = 0uLL;
        *(v117 + 191) = 0;
        *(v117 + 17) = 0uLL;
        *(v117 + 18) = 0uLL;
        *(v117 + 19) = 0uLL;
        *(v117 + 20) = 0uLL;
        *(v117 + 21) = 0uLL;
        *(v117 + 22) = 0uLL;
        *(v117 + 23) = 0uLL;
        *(v117 + 24) = 0uLL;
        *(v117 + 25) = 0uLL;
        *(v117 + 26) = 0uLL;
        *(v117 + 27) = 0uLL;
        *(v117 + 28) = 0uLL;
        *(v117 + 29) = 0uLL;
        *(v117 + 30) = 0uLL;
        *(v117 + 31) = 0uLL;
        *(v117 + 32) = 0uLL;
        *(v117 + 33) = 0uLL;
        *(v117 + 34) = 0uLL;
      }

      v118 = v86 - n;
      if (v118 >= v87)
      {
        v119 = v87;
      }

      else
      {
        v119 = v118;
      }

      v149 = 0uLL;
      v150 = 0uLL;
      v151 = MEMORY[0x277D86138];
      v152 = 0uLL;
      v153 = 0uLL;
      v154 = 0uLL;
      __p = 0uLL;
      v156 = 0uLL;
      v157 = 0uLL;
      memset(v158, 0, sizeof(v158));
      if (v160 == 1)
      {
        sub_240BFCE78(&v141, v119);
        sub_240BFCF6C(&v153 + 1, &v141);
        v164[0] = &v141;
        sub_240BFA56C(v164);
      }

      v141 = &v159;
      v142 = &v162;
      v143 = &v161;
      v144 = &v160;
      v145 = v147;
      v146 = &v163;
      v139(a3, &v141, &sub_240C035F0, v119);
      if (v160 == 1)
      {
        v148 = v162[12];
        *(&v157 + 1) = 1;
        sub_240C02E60(v147, a5);
      }

      if (__p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }

      v141 = &v153 + 1;
      sub_240BFA56C(&v141);
      v120 = *(&v150 + 1);
      *(&v150 + 1) = 0;
      if (v120)
      {
        v151();
      }

      if (v149)
      {
        *(&v149 + 1) = v149;
        operator delete(v149);
      }

      n = v159 + v87;
    }

    if ((v160 & 1) == 0)
    {
      goto LABEL_199;
    }

    v18 = a5[5];
LABEL_183:
    v121 = a5[9];
    if (v121)
    {
      v122 = v121[3];
      if (v122)
      {
        v122(*v121, v88);
        a5[7] = v88;
      }
    }

    a5[5] = v88;
    sub_240C032A0(v162 + 244);
    v123 = v162[12];
    v125 = v123 == 2 || v123 == 4;
    v53 = sub_240C034D0(v162 + 247, v162[250], v162[251], v125, a2);
    if (v53)
    {
      v126 = v53;
      do
      {
        v127 = v162[244];
        v128 = *v127;
        v129 = v127[2];
        v130 = v127[4];
        v127[3] += 8;
        *(v128 + v129) = v130;
        v132 = v127[2];
        v131 = v127[3];
        v133 = v127[4] >> (v131 & 0xF8);
        v127[3] = v131 & 7;
        v127[4] = v133;
        v127[2] = v132 + (v131 >> 3);
        --v126;
      }

      while (v126);
    }

    goto LABEL_195;
  }

  v162 = a1;
  v163 = v9;
  if (*(a1 + 2048) != 1)
  {
    v10 = *(a1 + 1984) - *(a1 + 1976);
    v51 = v10 == 8;
    v11 = v10 != 8;
    v12 = v51;
    v161 = v12;
    v13 = a5 != 0 && v11;
    v160 = v13;
    v14 = *(a1 + 72);
    v15 = v14 * *(a1 + 64);
    if (v13)
    {
      v16 = 16;
    }

    else
    {
      v16 = v14 * *(a1 + 64);
    }

    if (v13)
    {
      v17 = a5[5];
      v18 = *(a1 + 2000) + v17;
      v19 = a5[9];
      if (v19)
      {
        v20 = v19[3];
        if (v20)
        {
          v20(*v19, v18);
          a5[7] = v18;
        }
      }

      a5[5] = v18;
      v159 = 0;
      if (!v15)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v17 = 0;
      v159 = 0;
      if (!v15)
      {
        goto LABEL_199;
      }
    }

    for (jj = 0; jj < v15; v159 = jj)
    {
      for (kk = 0; kk != 220; kk += 55)
      {
        v44 = &v147[kk];
        *(v44 + 132) = 0;
        *(v44 + 31) = 0uLL;
        *(v44 + 29) = 0uLL;
        *(v44 + 27) = 0uLL;
        *(v44 + 25) = 0uLL;
        *(v44 + 8) = 0uLL;
        *(v44 + 9) = 0uLL;
        *(v44 + 10) = 0uLL;
        *(v44 + 11) = 0uLL;
        *(v44 + 191) = 0;
        *(v44 + 17) = 0uLL;
        *(v44 + 18) = 0uLL;
        *(v44 + 19) = 0uLL;
        *(v44 + 20) = 0uLL;
        *(v44 + 21) = 0uLL;
        *(v44 + 22) = 0uLL;
        *(v44 + 23) = 0uLL;
        *(v44 + 24) = 0uLL;
        *(v44 + 25) = 0uLL;
        *(v44 + 26) = 0uLL;
        *(v44 + 27) = 0uLL;
        *(v44 + 28) = 0uLL;
        *(v44 + 29) = 0uLL;
        *(v44 + 30) = 0uLL;
        *(v44 + 31) = 0uLL;
        *(v44 + 32) = 0uLL;
        *(v44 + 33) = 0uLL;
        *(v44 + 34) = 0uLL;
      }

      v45 = v15 - jj;
      if (v45 >= v16)
      {
        v46 = v16;
      }

      else
      {
        v46 = v45;
      }

      v149 = 0uLL;
      v150 = 0uLL;
      v151 = MEMORY[0x277D86138];
      v152 = 0uLL;
      v153 = 0uLL;
      v154 = 0uLL;
      __p = 0uLL;
      v156 = 0uLL;
      v157 = 0uLL;
      memset(v158, 0, sizeof(v158));
      if (v160 == 1)
      {
        sub_240BFCE78(&v141, v46);
        sub_240BFCF6C(&v153 + 1, &v141);
        v164[0] = &v141;
        sub_240BFA56C(v164);
      }

      v141 = &v159;
      v142 = &v162;
      v143 = &v161;
      v144 = &v160;
      v145 = v147;
      v146 = &v163;
      v139(a3, &v141, sub_240C05F78, v46);
      if (v160 == 1)
      {
        v148 = v162[12];
        *(&v157 + 1) = 1;
        sub_240C02E60(v147, a5);
      }

      if (__p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }

      v141 = &v153 + 1;
      sub_240BFA56C(&v141);
      v47 = *(&v150 + 1);
      *(&v150 + 1) = 0;
      if (v47)
      {
        v151();
      }

      if (v149)
      {
        *(&v149 + 1) = v149;
        operator delete(v149);
      }

      jj = v159 + v16;
    }

    if (v160)
    {
      v18 = a5[5];
LABEL_66:
      v48 = a5[9];
      if (v48)
      {
        v49 = v48[3];
        if (v49)
        {
          v49(*v48, v17);
          a5[7] = v17;
        }
      }

      a5[5] = v17;
      sub_240C032A0(v162 + 244);
      v50 = v162[12];
      v51 = v50 == 2 || v50 == 4;
      v52 = v51;
      v53 = sub_240C034D0(v162 + 247, v162[250], v162[251], v52, a2);
      if (v53)
      {
        v54 = v53;
        do
        {
          v55 = v162[244];
          v56 = *v55;
          v57 = v55[2];
          v58 = v55[4];
          v55[3] += 8;
          *(v56 + v57) = v58;
          v60 = v55[2];
          v59 = v55[3];
          v61 = v55[4] >> (v59 & 0xF8);
          v55[3] = v59 & 7;
          v55[4] = v61;
          v55[2] = v60 + (v59 >> 3);
          --v54;
        }

        while (v54);
      }

LABEL_195:
      v134 = v162;
      *v162[247] += v53;
      sub_240BF9D60(v134, a2);
      v135 = v162;
      sub_240BFA3EC(v162[239], v162[241], a5);
      sub_240BFA3EC(*v135[244], *(v135[244] + 16), a5);
      v136 = a5[9];
      if (v136)
      {
        v137 = v136[3];
        if (v137)
        {
          v137(*v136, v18);
          a5[7] = v18;
        }
      }

      a5[5] = v18;
LABEL_201:
      v138 = v162;
LABEL_202:
      *(v138 + 2048) = 1;
      return;
    }

LABEL_199:
    if (a5)
    {
      sub_240BF9D60(v162, a2);
      sub_240C02E60(v162, a5);
    }

    goto LABEL_201;
  }

LABEL_80:
  sub_240BF9D60(a1, a2);
  if (a5)
  {
    sub_240C02E60(a1, a5);
  }
}

void sub_240C02E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_240C0322C(va);
  _Unwind_Resume(a1);
}

void *sub_240C02E60(void *result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = result[245];
  v5 = result[244];
  v6 = v4 - v5;
  if (v4 == v5)
  {
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0xCCCCCCCCCCCCCCCDLL * (v6 >> 5);
    if (v9 <= 1)
    {
      v9 = 1;
    }

    v10 = (v5 + 24);
    do
    {
      v11 = 0;
      v12 = v10;
      v13 = 4;
      do
      {
        v11 += *v12 + 8 * *(v12 - 1);
        v12 += 5;
        --v13;
      }

      while (v13);
      v8 += (v11 + 7) >> 3;
      ++v7;
      v10 += 20;
    }

    while (v7 != v9);
  }

  v14 = 0;
  v48 = result[241] + v8;
  while (v48 > v14)
  {
    sub_240BC219C(&__dst, v2, 0x20uLL, v48 - v14);
    v15 = __dst;
    v49 = __dst;
    v16 = v53;
    v50 = v53;
    v51 = v54;
    __dst = 0;
    *&v53 = 0;
    v17 = v3[252];
    v18 = v3[244];
    v19 = v3[12];
    if (v17 >= 1 - 0x3333333333333333 * ((v3[245] - v18) >> 5) * v19)
    {
      v45 = 1;
    }

    else
    {
      v47 = v14;
      v20 = v16;
      v21 = v15;
      do
      {
        if (v20 < 0xA)
        {
          break;
        }

        v22 = v3 + 239;
        if (v17)
        {
          v22 = (v18 + 160 * ((v17 - 1) / v19) + 40 * ((v17 - 1) % v19));
        }

        v23 = v3[253];
        v24 = v22[2] - v23 >= v20 - 9 ? v20 - 9 : v22[2] - v23;
        v25 = v3[254];
        if (v25)
        {
          if (v24 < 9)
          {
            v29 = 0;
          }

          else
          {
            v26 = 0;
            v27 = v3[255];
            do
            {
              v28 = *(*v22 + v3[253] + v26);
              v21[v26 / 8] = (v28 << v25) | v27;
              v25 = v3[254];
              v27 = v28 >> -v25;
              v3[255] = v27;
              v29 = v26 + 8;
              v30 = v26 + 16;
              v26 += 8;
            }

            while (v30 < v24);
          }

          if (v29 < v24)
          {
            v31 = v3[255];
            do
            {
              v32 = v31 | (*(*v22 + v3[253] + v29) << v25);
              v3[255] = v32;
              v3[254] = v25 + 8;
              *(v21 + v29) = v32;
              LOBYTE(v32) = v3[254] & 0xF8;
              v25 = v3[254] & 7;
              v3[254] = v25;
              v31 = v3[255] >> v32;
              v3[255] = v31;
              ++v29;
            }

            while (v24 != v29);
          }
        }

        else
        {
          memcpy(v21, (*v22 + v23), v24);
        }

        v21 = (v21 + v24);
        v20 -= v24;
        v33 = v3[253] + v24;
        v3[253] = v33;
        if (v33 == v22[2])
        {
          v34 = v22[3];
          if (v34)
          {
            v35 = v3[254];
            v36 = v3[255] | (v22[4] << v35);
            v3[255] = v36;
            v3[254] = v35 + v34;
            *v21 = v36;
            v37 = v3[254];
            v38 = v3[255] >> (v37 & 0xF8);
            v3[254] = v37 & 7;
            v3[255] = v38;
            v21 = (v21 + (v37 >> 3));
            v20 -= v37 >> 3;
          }

          v3[253] = 0;
          v39 = v3[252];
          v3[252] = v39 + 1;
          if (!(v39 % v19))
          {
            v40 = v3[254];
            if (v40)
            {
              v41 = v3[255];
              v3[254] = (8 - v40) + v40;
              *v21 = v41;
              v42 = v3[254];
              v43 = v3[255] >> (v42 & 0xF8);
              v3[254] = v42 & 7;
              v3[255] = v43;
              v21 = (v21 + (v42 >> 3));
              v20 -= v42 >> 3;
            }
          }
        }

        v17 = v3[252];
        v18 = v3[244];
        v19 = v3[12];
      }

      while (v17 < 1 - 0x3333333333333333 * ((v3[245] - v18) >> 5) * v19);
      v44 = v21 - v15;
      if (v21 == v15)
      {
        v45 = 1;
        v2 = a2;
        v14 = v47;
      }

      else
      {
        v45 = 0;
        v49 += v44;
        *&v50 = v50 - v44;
        *(&v50 + 1) += v44;
        v2 = a2;
        v14 = v44 + v47;
      }
    }

    result = sub_240B96F0C(&v49);
    if (v55)
    {
      if (v45)
      {
        return result;
      }
    }

    else
    {
      result = sub_240B96F0C(&__dst);
      if (v45)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_240C0322C(uint64_t a1)
{
  v2 = *(a1 + 1976);
  if (v2)
  {
    *(a1 + 1984) = v2;
    operator delete(v2);
  }

  v6 = (a1 + 1952);
  sub_240BFA56C(&v6);
  v3 = *(a1 + 1912);
  *(a1 + 1912) = 0;
  if (v3)
  {
    (*(a1 + 1920))();
  }

  v4 = *(a1 + 1888);
  if (v4)
  {
    *(a1 + 1896) = v4;
    operator delete(v4);
  }

  return a1;
}

void *sub_240C032A0(void *result)
{
  v1 = result[1];
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((v1 - *result) >> 5);
  if (v2 != 1)
  {
    if (v2)
    {
      v6 = *result + 160;

      return sub_240BFA5C0(result, v6);
    }

    else
    {
      if (result[2] == v1)
      {
        operator new();
      }

      v1[8] = 0u;
      v1[9] = 0u;
      v1[6] = 0u;
      v1[7] = 0u;
      v1[4] = 0u;
      v1[5] = 0u;
      v1[2] = 0u;
      v1[3] = 0u;
      *v1 = 0u;
      v3 = 160;
      v1[1] = 0u;
      v4 = v1 + 1;
      do
      {
        v5 = MEMORY[0x277D86138];
        *(v4 - 2) = 0;
        *(v4 - 1) = v5;
        *v4 = 0;
        v4[1] = 0;
        v4[2] = 0;
        v4 += 5;
        v3 -= 40;
      }

      while (v3);
      result[1] = v1 + 10;
    }
  }

  return result;
}

uint64_t sub_240C034D0(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  sub_240B3C84C(&v25, *a1, a1[1], (a1[1] - *a1) >> 3);
  v10 = v25;
  v11 = v26;
  *v25 = a3;
  v12 = v11 - v10;
  if (v11 == v10)
  {
    v19 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = v12 >> 3;
    if (v15 <= 1)
    {
      v15 = 1;
    }

    do
    {
      v16 = -1;
      v17 = &qword_240C860F8;
      while (v16 != 2)
      {
        v18 = *v17++;
        ++v16;
        if (v18 > v10[v13])
        {
          goto LABEL_9;
        }
      }

      v16 = 3;
LABEL_9:
      v14 += qword_240C860D0[v16];
      ++v13;
    }

    while (v13 != v15);
    v19 = (v14 + 7) >> 3;
  }

  v20 = 2;
  if (a5)
  {
    v20 = 0;
  }

  v21 = 34;
  if (a4)
  {
    v21 = 38;
  }

  v22 = **a1;
  v23 = a2 - (v19 + ((v20 + v21) >> 3));
  operator delete(v10);
  return v23 - v22;
}

void sub_240C04088(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_240B2234C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240C04094(uint64_t result, unint64_t a2, unint64_t a3, void *a4, int8x16_t a5, int8x16_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int8x16_t a11, int8x16_t a12, int8x16_t a13, int8x16_t a14, int8x16_t a15, int8x16_t a16, int8x16_t a17, int8x16_t a18, int8x16_t a19, int8x16_t a20, uint64x2_t a21, uint64x2_t a22, uint64x2_t a23, uint64x2_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v28 = 0;
  a28 = *MEMORY[0x277D85DE8];
  v29 = 1;
  v30.i64[0] = 0x2000000020;
  v30.i64[1] = 0x2000000020;
  v31.i64[0] = 0x100000001;
  v31.i64[1] = 0x100000001;
  v32.i64[0] = 0xD000D000D000DLL;
  v32.i64[1] = 0xD000D000D000DLL;
  do
  {
    v33 = v29;
    v34 = (result + 4 * v28);
    v35 = v34[1];
    v36 = vsubq_s32(v30, vclzq_s32(*v34));
    v37 = vsubq_s32(v30, vclzq_s32(v35));
    v38 = vqsubq_u32(v36, v31);
    v39 = vqsubq_u32(v37, v31);
    v40 = vqsubq_u32(*v34, vshlq_u32(v31, v38));
    v41 = vqsubq_u32(v35, vshlq_u32(v31, v39));
    v42 = vuzp1q_s16(v36, v37);
    v43 = vcgtq_u16(v32, v42);
    v44 = vmovn_s16(v43);
    v45 = *&vbslq_s8(v43, v42, vhaddq_u16(v42, v32)) | __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00);
    *v42.i8 = vorr_s8(v44, vmovn_s16(v42));
    v46 = vqtbl1q_s8(a6, v45);
    v47 = vqtbl1q_s8(a5, v45);
    v48 = vcltzq_s16(vshlq_n_s16(vmovl_u8(*v42.i8), 0xFuLL));
    v49 = a2 - v28;
    if (a2 < v28)
    {
      v49 = 0;
    }

    v50 = a3 - v28;
    if (a3 < v28)
    {
      v50 = 0;
    }

    v51 = (&v83 + 8 * v28);
    v52 = vbslq_s8(v48, v46, (*&v46 | __PAIR128__(0x80008000800080, 0x80008000800080)));
    v53 = vshlq_u32(v40, vmovl_u16(*v47.i8));
    if (v50 >= 4)
    {
      v54 = 4;
    }

    else
    {
      v54 = v50;
    }

    if (v50 <= 4)
    {
      v50 = 4;
    }

    v55 = vmovl_u16(*v52.i8);
    if (v49 >= 4)
    {
      v56 = 4;
    }

    else
    {
      v56 = v49;
    }

    v57 = vmovl_high_u16(v52);
    v58 = vandq_s8(*(&unk_240C86450 - 4 * v56), *(&unk_240C86470 - 4 * v54));
    v59 = vmovl_high_u16(v47);
    v60 = vaddw_u16(v38, *v47.i8);
    if (v49 <= 4)
    {
      v49 = 4;
    }

    v61 = vorrq_s8(v53, v55);
    v62 = vandq_s8(v58, v60);
    v63 = vaddw_high_u16(v39, v47);
    v64 = v49 - 4;
    v65 = vorrq_s8(vshlq_u32(v41, v59), v57);
    if (v64 >= 4)
    {
      v64 = 4;
    }

    v66 = *(&unk_240C86450 - 4 * v64);
    v67 = v50 - 4;
    v68 = vandq_s8(v58, v61);
    if (v50 - 4 >= 4)
    {
      v67 = 4;
    }

    v69 = vandq_s8(v66, *(&unk_240C86470 - 4 * v67));
    *v51 = v62;
    v51[1] = v68;
    v51[2] = vandq_s8(v69, v63);
    v51[3] = vandq_s8(v69, v65);
    v28 = 8;
    v29 = 0;
  }

  while ((v33 & 1) != 0);
  v70 = 0;
  v71.i64[0] = 0xFFFFFFFFLL;
  v71.i64[1] = 0xFFFFFFFFLL;
  v72 = vandq_s8(v83, v71);
  v73 = vandq_s8(a11, v71);
  a21 = vsraq_n_u64(v72, v83, 0x20uLL);
  a22 = vsraq_n_u64(v73, a11, 0x20uLL);
  a17 = vorrq_s8(vshlq_u64(vshrq_n_u64(vars0, 0x20uLL), v72), vandq_s8(vars0, v71));
  a18 = vorrq_s8(vshlq_u64(vshrq_n_u64(a12, 0x20uLL), v73), vandq_s8(a12, v71));
  v74 = vandq_s8(a13, v71);
  v75 = vandq_s8(a15, v71);
  a23 = vsraq_n_u64(v74, a13, 0x20uLL);
  a24 = vsraq_n_u64(v75, a15, 0x20uLL);
  a19 = vorrq_s8(vshlq_u64(vshrq_n_u64(a14, 0x20uLL), v74), vandq_s8(a14, v71));
  a20 = vorrq_s8(vshlq_u64(vshrq_n_u64(a16, 0x20uLL), v75), vandq_s8(a16, v71));
  v76 = a4[3];
  do
  {
    v77 = a17.u64[v70];
    v78 = a4[4] | (v77 << v76);
    a4[4] = v78;
    *(*a4 + a4[2]) = v78;
    v79 = a4[3];
    v76 = a21.i64[v70] + v79;
    a4[3] = v76;
    if (v76 >= 0x40)
    {
      a4[3] = v76 - 64;
      a4[4] = v77 >> -v79;
      a4[2] += 8;
      LOBYTE(v76) = v76 - 64;
    }

    ++v70;
  }

  while (v70 != 8);
  *(*a4 + a4[2]) = a4[4];
  v81 = a4[2];
  v80 = a4[3];
  a4[4] >>= v80 & 0xF8;
  a4[2] = v81 + (v80 >> 3);
  a4[3] = v80 & 7;
  v82 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240C04364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, char **a9)
{
  v35 = *MEMORY[0x277D85DE8];
  if ((a5 & 1) == 0)
  {
    v11 = malloc_type_malloc(2 * ((a2 * a3) & 0xFFFFFFFFFFFFFFFLL) + 64, 0x100004077774924uLL);
    v12 = *a9;
    *a9 = v11;
    if (v12)
    {
      (a9[1])(v12);
      v11 = *a9;
    }

    v13 = a9[2];
    v14 = a9[3];
    v15 = a9[4] | (1 << v14);
    a9[3] = v14 + 1;
    a9[4] = v15;
    *&v13[v11] = v15;
    v16 = a9[3];
    v17 = v16 & 7;
    v18 = a9[4] >> (v16 & 0xF8);
    v19 = &a9[2][v16 >> 3];
    v20 = *a9;
    v21 = v18 | (1 << v17);
    a9[2] = v19;
    a9[3] = (v17 + 1);
    a9[4] = v21;
    *&v19[v20] = v21;
    v22 = a9[3];
    v23 = v22 & 7;
    v24 = a9[4] >> (v22 & 0xF8);
    v25 = &a9[2][v22 >> 3];
    v26 = *a9;
    a9[2] = v25;
    a9[3] = (v23 + 2);
    a9[4] = v24;
    *&v25[v26] = v24;
    v28 = a9[2];
    v27 = a9[3];
    v29 = a9[4] >> (v27 & 0xF8);
    a9[3] = (v27 & 7);
    a9[4] = v29;
    a9[2] = &v28[v27 >> 3];
  }

  v31 = (a6 + 440 * a5);
  v32 = a9;
  v33 = *v31;
  v34 = *(v31 + 19);
  sub_240BFF250(&__p);
}

void sub_240C046AC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_240B2234C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_240C05058(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_240B2234C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240C05064(uint64_t result, unint64_t a2, unint64_t a3, void *a4, int8x16_t a5, int8x16_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int8x16_t a11, int8x16_t a12, int8x16_t a13, int8x16_t a14, int8x16_t a15, int8x16_t a16, int8x16_t a17, int8x16_t a18, int8x16_t a19, int8x16_t a20, uint64x2_t a21, uint64x2_t a22, uint64x2_t a23, uint64x2_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v28 = 0;
  a28 = *MEMORY[0x277D85DE8];
  v29 = 1;
  v30.i64[0] = 0x10001000100010;
  v30.i64[1] = 0x10001000100010;
  v31.i64[0] = 0x1000100010001;
  v31.i64[1] = 0x1000100010001;
  v32.i64[0] = 0xF000F000F000FLL;
  v32.i64[1] = 0xF000F000F000FLL;
  v33.i64[0] = 0xFFFF0000FFFFLL;
  v33.i64[1] = 0xFFFF0000FFFFLL;
  do
  {
    v34 = v29;
    v35 = *(result + 2 * v28);
    v36 = vclzq_s16(v35);
    v37 = vsubq_s16(v30, v36);
    v38 = vqsubq_u16(v37, v31);
    v39 = vqsubq_u16(v35, vshlq_u16(v31, v38));
    v40 = *&vminq_u16(v37, v32) | __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00);
    v41 = vqtbl1q_s8(a6, v40);
    v42 = vbslq_s8(vceqzq_s16(v36), (*&v41 | __PAIR128__(0x80008000800080, 0x80008000800080)), v41);
    v43 = vqtbl1q_s8(a5, v40);
    v44 = a2 - v28;
    if (a2 < v28)
    {
      v44 = 0;
    }

    v45 = a3 - v28;
    if (a3 < v28)
    {
      v45 = 0;
    }

    v46 = (&v79 + 8 * v28);
    v47 = vzip1q_s16(v42, v39);
    v48 = vzip2q_s16(v42, v39);
    v49 = vzip1q_s16(v43, v38);
    v50 = vzip2q_s16(v43, v38);
    v51 = 2 * v44;
    v52 = 2 * v45;
    if (v52 >= 8)
    {
      v53 = 8;
    }

    else
    {
      v53 = v52;
    }

    if (v52 <= 8)
    {
      v52 = 8;
    }

    if (v51 >= 8)
    {
      v54 = 8;
    }

    else
    {
      v54 = v51;
    }

    if (v51 <= 8)
    {
      v51 = 8;
    }

    v55 = vandq_s8(*(&unk_240C861FC - 2 * v54), *(&unk_240C8621C - 2 * v53));
    v56 = vandq_s8(v55, v49);
    v57 = vandq_s8(v55, v47);
    v58 = v51 - 8;
    if (v58 >= 8)
    {
      v58 = 8;
    }

    v59 = *(&unk_240C861FC - 2 * v58);
    v60 = v52 - 8;
    if (v52 - 8 >= 8)
    {
      v60 = 8;
    }

    v61 = vandq_s8(v59, *(&unk_240C8621C - 2 * v60));
    v62 = vandq_s8(v61, v50);
    v63 = vandq_s8(v61, v48);
    v64 = vandq_s8(v56, v33);
    *v46 = vsraq_n_u32(v64, v56, 0x10uLL);
    v46[1] = vorrq_s8(vandq_s8(v57, v33), vshlq_u32(vshrq_n_u32(v57, 0x10uLL), v64));
    v65 = vandq_s8(v62, v33);
    v46[2] = vsraq_n_u32(v65, v62, 0x10uLL);
    v46[3] = vorrq_s8(vshlq_u32(vshrq_n_u32(v63, 0x10uLL), v65), vandq_s8(v63, v33));
    v28 = 8;
    v29 = 0;
  }

  while ((v34 & 1) != 0);
  v66 = 0;
  v67.i64[0] = 0xFFFFFFFFLL;
  v67.i64[1] = 0xFFFFFFFFLL;
  v68 = vandq_s8(v79, v67);
  v69 = vandq_s8(a11, v67);
  a21 = vsraq_n_u64(v68, v79, 0x20uLL);
  a22 = vsraq_n_u64(v69, a11, 0x20uLL);
  a17 = vorrq_s8(vshlq_u64(vshrq_n_u64(vars0, 0x20uLL), v68), vandq_s8(vars0, v67));
  a18 = vorrq_s8(vshlq_u64(vshrq_n_u64(a12, 0x20uLL), v69), vandq_s8(a12, v67));
  v70 = vandq_s8(a13, v67);
  v71 = vandq_s8(a15, v67);
  a23 = vsraq_n_u64(v70, a13, 0x20uLL);
  a24 = vsraq_n_u64(v71, a15, 0x20uLL);
  a19 = vorrq_s8(vshlq_u64(vshrq_n_u64(a14, 0x20uLL), v70), vandq_s8(a14, v67));
  a20 = vorrq_s8(vshlq_u64(vshrq_n_u64(a16, 0x20uLL), v71), vandq_s8(a16, v67));
  v72 = a4[3];
  do
  {
    v73 = a17.u64[v66];
    v74 = a4[4] | (v73 << v72);
    a4[4] = v74;
    *(*a4 + a4[2]) = v74;
    v75 = a4[3];
    v72 = a21.i64[v66] + v75;
    a4[3] = v72;
    if (v72 >= 0x40)
    {
      a4[3] = v72 - 64;
      a4[4] = v73 >> -v75;
      a4[2] += 8;
      LOBYTE(v72) = v72 - 64;
    }

    ++v66;
  }

  while (v66 != 8);
  *(*a4 + a4[2]) = a4[4];
  v77 = a4[2];
  v76 = a4[3];
  a4[4] >>= v76 & 0xF8;
  a4[2] = v77 + (v76 >> 3);
  a4[3] = v76 & 7;
  v78 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240C05CC4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_240B2234C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240C05CD0(uint64_t result, unint64_t a2, unint64_t a3, void *a4, int8x16_t a5, int8x16_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int8x16_t a11, int8x16_t a12, int8x16_t a13, int8x16_t a14, int8x16_t a15, int8x16_t a16, int8x16_t a17, int8x16_t a18, int8x16_t a19, int8x16_t a20, uint64x2_t a21, uint64x2_t a22, uint64x2_t a23, uint64x2_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v28 = 0;
  a28 = *MEMORY[0x277D85DE8];
  v29 = 1;
  v30.i64[0] = 0x10001000100010;
  v30.i64[1] = 0x10001000100010;
  v31.i64[0] = 0x1000100010001;
  v31.i64[1] = 0x1000100010001;
  v32.i64[0] = 0xFFFF0000FFFFLL;
  v32.i64[1] = 0xFFFF0000FFFFLL;
  do
  {
    v33 = v29;
    v34 = *(result + 2 * v28);
    v35 = vsubq_s16(v30, vclzq_s16(v34));
    v36 = vqsubq_u16(v35, v31);
    v37 = vqsubq_u16(v34, vshlq_u16(v31, v36));
    v38 = *&v35 | __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00);
    v39 = vqtbl1q_s8(a5, v38);
    v40 = vqtbl1q_s8(a6, v38);
    v41 = a2 - v28;
    if (a2 < v28)
    {
      v41 = 0;
    }

    v42 = a3 - v28;
    if (a3 < v28)
    {
      v42 = 0;
    }

    v43 = (&v76 + 8 * v28);
    v44 = vzip1q_s16(v40, v37);
    v45 = vzip2q_s16(v40, v37);
    v46 = vzip1q_s16(v39, v36);
    v47 = vzip2q_s16(v39, v36);
    v48 = 2 * v41;
    v49 = 2 * v42;
    if (v49 >= 8)
    {
      v50 = 8;
    }

    else
    {
      v50 = v49;
    }

    if (v49 <= 8)
    {
      v49 = 8;
    }

    if (v48 >= 8)
    {
      v51 = 8;
    }

    else
    {
      v51 = v48;
    }

    if (v48 <= 8)
    {
      v48 = 8;
    }

    v52 = vandq_s8(*(&unk_240C861FC - 2 * v51), *(&unk_240C8621C - 2 * v50));
    v53 = vandq_s8(v52, v46);
    v54 = vandq_s8(v52, v44);
    v55 = v48 - 8;
    if (v55 >= 8)
    {
      v55 = 8;
    }

    v56 = *(&unk_240C861FC - 2 * v55);
    v57 = v49 - 8;
    if (v49 - 8 >= 8)
    {
      v57 = 8;
    }

    v58 = vandq_s8(v56, *(&unk_240C8621C - 2 * v57));
    v59 = vandq_s8(v58, v47);
    v60 = vandq_s8(v58, v45);
    v61 = vandq_s8(v53, v32);
    *v43 = vsraq_n_u32(v61, v53, 0x10uLL);
    v43[1] = vorrq_s8(vandq_s8(v54, v32), vshlq_u32(vshrq_n_u32(v54, 0x10uLL), v61));
    v62 = vandq_s8(v59, v32);
    v43[2] = vsraq_n_u32(v62, v59, 0x10uLL);
    v43[3] = vorrq_s8(vshlq_u32(vshrq_n_u32(v60, 0x10uLL), v62), vandq_s8(v60, v32));
    v28 = 8;
    v29 = 0;
  }

  while ((v33 & 1) != 0);
  v63 = 0;
  v64.i64[0] = 0xFFFFFFFFLL;
  v64.i64[1] = 0xFFFFFFFFLL;
  v65 = vandq_s8(v76, v64);
  v66 = vandq_s8(a11, v64);
  a21 = vsraq_n_u64(v65, v76, 0x20uLL);
  a22 = vsraq_n_u64(v66, a11, 0x20uLL);
  a17 = vorrq_s8(vshlq_u64(vshrq_n_u64(vars0, 0x20uLL), v65), vandq_s8(vars0, v64));
  a18 = vorrq_s8(vshlq_u64(vshrq_n_u64(a12, 0x20uLL), v66), vandq_s8(a12, v64));
  v67 = vandq_s8(a13, v64);
  v68 = vandq_s8(a15, v64);
  a23 = vsraq_n_u64(v67, a13, 0x20uLL);
  a24 = vsraq_n_u64(v68, a15, 0x20uLL);
  a19 = vorrq_s8(vshlq_u64(vshrq_n_u64(a14, 0x20uLL), v67), vandq_s8(a14, v64));
  a20 = vorrq_s8(vshlq_u64(vshrq_n_u64(a16, 0x20uLL), v68), vandq_s8(a16, v64));
  v69 = a4[3];
  do
  {
    v70 = a17.u64[v63];
    v71 = a4[4] | (v70 << v69);
    a4[4] = v71;
    *(*a4 + a4[2]) = v71;
    v72 = a4[3];
    v69 = a21.i64[v63] + v72;
    a4[3] = v69;
    if (v69 >= 0x40)
    {
      a4[3] = v69 - 64;
      a4[4] = v70 >> -v72;
      a4[2] += 8;
      LOBYTE(v69) = v69 - 64;
    }

    ++v63;
  }

  while (v63 != 8);
  *(*a4 + a4[2]) = a4[4];
  v74 = a4[2];
  v73 = a4[3];
  a4[4] >>= v73 & 0xF8;
  a4[2] = v74 + (v73 >> 3);
  a4[3] = v73 & 7;
  v75 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_240C05F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  STACK[0x838] = *MEMORY[0x277D85DE8];
  v22 = **a1 + a2;
  v23 = **(a1 + 8);
  v25 = v23[7];
  v24 = v23[8];
  v26 = v22 / v24;
  v27 = v22 % v24;
  v28 = v22 + v23[11] * v23[10] + 2;
  if (**(a1 + 16))
  {
    v28 = 0;
  }

  v113 = v28;
  v29 = v23[6] - (v27 << 8);
  v115 = v29;
  if (v29 >= 0x100)
  {
    v30 = 256;
  }

  else
  {
    v30 = v29;
  }

  v31 = v26 << 8;
  if (v25 - (v26 << 8) >= 0x100)
  {
    v32 = 256;
  }

  else
  {
    v32 = v25 - (v26 << 8);
  }

  v111 = *v23;
  v112 = v23[5];
  v117 = v32;
  vars0 = (v23[2])();
  if (**(a1 + 24) == 1)
  {
    v114 = *(*(a1 + 32) + 1952) + 160 * a2;
    v35 = a1;
    v36 = **(a1 + 8);
  }

  else
  {
    v36 = **(a1 + 8);
    v114 = *(v36 + 1952) + 160 * v113;
    v35 = a1;
  }

  v37 = **(v35 + 16);
  if (*(v36 + 120) != 1)
  {
    sub_240C04364(vars0, v30, v117, 0, v37, v36 + 128, *(v36 + 1888), *(v36 + 96), v114);
  }

  v38 = *(v36 + 96);
  if (v38)
  {
    v39 = 0;
    v40 = v114;
    do
    {
      if (v39 || (v37 & 1) == 0)
      {
        v41 = malloc_type_malloc(2 * v30 * v117 + 64, 0x100004077774924uLL);
        v42 = *v40;
        *v40 = v41;
        if (v42)
        {
          (*(v40 + 8))();
        }
      }

      ++v39;
      v40 += 40;
    }

    while (v38 != v39);
  }

  v43 = (v36 + 128);
  if ((v37 & 1) == 0)
  {
    v44 = *v114;
    v45 = *(v114 + 16);
    v46 = *(v114 + 24);
    v47 = *(v114 + 32) | (1 << v46);
    *(v114 + 24) = v46 + 1;
    *(v114 + 32) = v47;
    *&v44[v45] = v47;
    v48 = *(v114 + 24);
    v49 = v48 & 7;
    v50 = *(v114 + 32) >> (v48 & 0xF8);
    v51 = *(v114 + 16) + (v48 >> 3);
    v52 = *v114;
    v53 = v50 | (1 << v49);
    *(v114 + 16) = v51;
    *(v114 + 24) = v49 + 1;
    *(v114 + 32) = v53;
    *&v52[v51] = v53;
    v54 = *(v114 + 24);
    v55 = v54 & 7;
    v56 = *(v114 + 32) >> (v54 & 0xF8);
    v57 = *(v114 + 16) + (v54 >> 3);
    v58 = *v114;
    *(v114 + 16) = v57;
    *(v114 + 24) = v55 + 2;
    *(v114 + 32) = v56;
    *&v58[v57] = v56;
    v60 = *(v114 + 16);
    v59 = *(v114 + 24);
    v61 = *(v114 + 32) >> (v59 & 0xF8);
    *(v114 + 24) = v59 & 7;
    *(v114 + 32) = v61;
    *(v114 + 16) = v60 + (v59 >> 3);
  }

  for (i = 0; i != 768; i += 192)
  {
    v63 = &a21 + i;
    *(v63 + 8) = 0;
    *(v63 + 9) = 0;
    *(v63 + 16) = 0;
    *(v63 + 17) = 0;
  }

  a14 = 0;
  a16 = 0;
  a18 = 0;
  a20 = 0;
  if (v38)
  {
    v64 = &a13;
    v65 = &a21;
    v66 = v114;
    v67 = v38;
    do
    {
      *v64 = v65;
      v64 += 16;
      *v65 = v43;
      *(v65 + 1) = v66;
      *(v65 + 4) = *v43;
      *(v65 + 8) = *(v43 + 19);
      v43 = (v43 + 440);
      v66 += 40;
      v65 += 192;
      --v67;
    }

    while (v67);
    sub_240BFF50C(&__p, v38);
  }

  else
  {
    __p = 0;
    a11 = 0;
    a12 = 0;
  }

  if (v25 != v31)
  {
    v75 = 0;
    v76 = 1;
    while (1)
    {
      *&STACK[0x810] = 0u;
      *&STACK[0x820] = 0u;
      *&STACK[0x7F0] = 0u;
      *&STACK[0x800] = 0u;
      vars8 = v76;
      if (!v38)
      {
        break;
      }

      v77 = 0;
      v78 = 0;
      v79 = __p + 704 * (v76 & 1) + 64;
      v80 = __p + 704 * (v75 & 1) + 64;
      v81 = v80;
      v82 = v79;
      do
      {
        *(&STACK[0x810] + v78) = &v80[v77 + (v81 & 0x3E)];
        *(&STACK[0x7F0] + v78++) = &v79[v77 + (v82 & 0x3E)];
        v82 += 1408;
        v77 += 1408;
        v81 += 1408;
      }

      while (v38 != v78);
      v83 = STACK[0x810];
      switch(v38)
      {
        case 1uLL:
          if (v115 >= 8)
          {
            v108 = 0;
            v109 = STACK[0x810];
            do
            {
              *v109++ = vmovl_u8(*(vars0 + v108));
              v89 = v108 + 8;
              v110 = v108 + 16;
              v108 += 8;
            }

            while (v110 <= v30);
          }

          else
          {
            v89 = 0;
          }

          if (v89 < v30)
          {
            do
            {
              *(v83 + 2 * v89) = *(vars0 + v89);
              ++v89;
            }

            while (v30 != v89);
          }

          break;
        case 2uLL:
          v87 = STACK[0x818];
          if (v115 >= 8)
          {
            v99 = 0;
            v100 = vars0;
            v101 = STACK[0x810];
            v102 = STACK[0x818];
            do
            {
              v120 = vld2_s8(v100);
              v100 += 16;
              *v101++ = vmovl_u8(v120.val[0]);
              *v102++ = vmovl_u8(v120.val[1]);
              v88 = v99 + 8;
              v103 = v99 + 16;
              v99 += 8;
            }

            while (v103 <= v30);
          }

          else
          {
            v88 = 0;
          }

          v104 = v30 - v88;
          if (v30 > v88)
          {
            v105 = (v87 + 2 * v88);
            v106 = (v83 + 2 * v88);
            v107 = (vars0 + 2 * v88);
            do
            {
              *v106++ = *v107;
              *v105++ = v107[1];
              v107 += 2;
              --v104;
            }

            while (v104);
          }

          break;
        case 3uLL:
          sub_240C00E88(vars0, v30, v83, STACK[0x818], STACK[0x820]);
LABEL_55:
          for (j = 0; j != v38; ++j)
          {
            if (v75)
            {
              v91 = *(&STACK[0x7F0] + j);
              v92 = *v91;
              *(*(&STACK[0x810] + j) - 2) = *v91;
            }

            else
            {
              v92 = 0;
              *(*(&STACK[0x810] + j) - 2) = 0;
              v91 = *(&STACK[0x7F0] + j);
            }

            *(v91 - 1) = v92;
          }

          v93 = &a13;
          v94 = &STACK[0x7F0];
          v95 = &STACK[0x810];
          v96 = v38;
          do
          {
            v97 = *v95 - 2;
            v98 = v97;
            if (v75)
            {
              v97 = *v94;
              v98 = *v94 - 2;
            }

            sub_240C00838(v93, *v95, *v95 - 2, v97, v98, v30, v33, v34);
            v93 += 16;
            ++v94;
            ++v95;
            --v96;
          }

          while (v96);
          goto LABEL_64;
        default:
          v86 = STACK[0x818];
          v85 = STACK[0x820];
          v84 = STACK[0x828];
          goto LABEL_53;
      }

LABEL_54:
      if (v38)
      {
        goto LABEL_55;
      }

LABEL_64:
      ++v75;
      v76 = (vars8 + 1);
      if (v75 == v117)
      {
        goto LABEL_31;
      }
    }

    v84 = 0;
    v85 = 0;
    v86 = 0;
    v83 = 0;
LABEL_53:
    sub_240C00F40(vars0, v30, v83, v86, v85, v84);
    goto LABEL_54;
  }

LABEL_31:
  if (v38)
  {
    v68 = &a14;
    do
    {
      sub_240C00B30(**(v68 - 1), *(*(v68 - 1) + 8), *v68);
      v68 += 2;
      --v38;
    }

    while (v38);
  }

  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  v69 = 0;
  v70 = (v114 + 24);
  v71 = 4;
  do
  {
    v69 += *v70 + 8 * *(v70 - 1);
    v70 += 5;
    --v71;
  }

  while (v71);
  *(*(**(a1 + 8) + 1976) + 8 * v113) = (v69 + 7) >> 3;
  result = v112(v111, vars0);
  v73 = STACK[0x838];
  v74 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240C065D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_240B2234C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240C065DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (a4)
  {
    for (i = 0; i != a4; ++i)
    {
      result = a3(a2, i);
    }
  }

  return result;
}

uint64_t sub_240C06644(uint64_t a1, float *a2, unint64_t a3, int a4)
{
  v8 = *(a1 + 152);
  if (v8 >= 295.0 && v8 <= 305.0)
  {
    return 0;
  }

  v10 = log2f(v8 * 0.001);
  v11 = powf(1.111, v10) * 1.2;
  if (a4)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1.0 / v11;
  }

  v13 = *(a1 + 16);
  if (v13 == 1)
  {
    for (; a3; --a3)
    {
      *a2 = powf(*a2, v12);
      ++a2;
    }

    return 0;
  }

  if (v13 == 3)
  {
    if (a3)
    {
      v14 = 0;
      v15 = *(a1 + 24);
      v16 = *(a1 + 28);
      v17 = *(a1 + 32);
      v18 = v12 + -1.0;
      if (v12 >= 1.0)
      {
        a4 = 0;
      }

      v19 = a2 + 1;
      do
      {
        v20 = *(v19 - 1);
        v21 = *v19;
        v22 = v19[1];
        v23 = powf(((*v19 * v16) + (v20 * v15)) + (v22 * v17), v18);
        if ((LODWORD(v23) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          v24 = v20 * v23;
          v25 = v21 * v23;
          *(v19 - 1) = v20 * v23;
          *v19 = v21 * v23;
          v26 = v22 * v23;
          v19[1] = v26;
          if (a4)
          {
            if (v25 >= v26)
            {
              v27 = v19;
            }

            else
            {
              v27 = v19 + 1;
            }

            if (v24 >= *v27)
            {
              v27 = v19 - 1;
            }

            if (*v27 > 1.0)
            {
              v28 = 1.0 / *v27;
              *(v19 - 1) = v24 * v28;
              *v19 = v25 * v28;
              v19[1] = v26 * v28;
            }
          }
        }

        v14 += 3;
        v19 += 3;
      }

      while (v14 < a3);
    }

    return 0;
  }

  return 1;
}

uint64_t *sub_240C0681C(uint64_t *result)
{
  if (result)
  {
    v1 = result;
    sub_240AE2944(*result);
    v2 = v1[16];
    if (v2)
    {
      v1[17] = v2;
      operator delete(v2);
    }

    v3 = v1[13];
    if (v3)
    {
      v1[14] = v3;
      operator delete(v3);
    }

    v4 = v1[10];
    if (v4)
    {
      v1[11] = v4;
      operator delete(v4);
    }

    v5 = v1[7];
    if (v5)
    {
      v1[8] = v5;
      operator delete(v5);
    }

    JUMPOUT(0x245CCE590);
  }

  return result;
}

uint64_t sub_240C068B0(uint64_t a1, uint64_t a2, unsigned __int32 *a3, int8x16_t *__dst, uint64_t a5, int32x4_t a6, double a7, int32x4_t a8, int8x16_t a9)
{
  v11 = a3;
  v14 = *(a1 + 160);
  if (v14)
  {
    v15 = *(*(a1 + 80) + 8 * a2);
    v16 = *(a1 + 40) * a5;
    if (v14 == 1)
    {
      if (v16)
      {
        v36 = 0;
        v37 = 0;
        a6 = vdupq_n_s32(0x3F0CCF16u);
        v38 = vdupq_n_s32(0x40295064u);
        a8 = vdupq_n_s32(0x402B570Bu);
        v39 = vdupq_n_s32(0xC207A1AD);
        v40 = vdupq_n_s32(0x3F3D150Au);
        v41 = vdupq_n_s32(0x432E5D5Bu);
        v42 = vdupq_n_s32(0xBBCC536D);
        v43 = vdupq_n_s32(0xC3D65E50);
        v44 = vdupq_n_s32(0x3989DFFFu);
        v45 = vdupq_n_s32(0x43D2ACD0u);
        v46 = 10000.0 / *(a1 + 152);
        v47.i64[0] = 0x8000000080000000;
        v47.i64[1] = 0x8000000080000000;
        do
        {
          v48 = *&a3[v36];
          v49 = vandq_s8(v48, v47);
          v50 = vmlaq_f32((*&v48 & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL)), (*&v48 & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL)), (*&v48 & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL)));
          *&v15[v36] = vorrq_s8(v49, vabsq_f32(vmulq_n_f32(vdivq_f32(vmlaq_f32(v44, v50, vmlaq_f32(v42, v50, vmlaq_f32(v40, v50, vmlaq_f32(v38, a6, v50)))), vmlaq_f32(v45, v50, vmlaq_f32(v43, v50, vmlaq_f32(v41, v50, vmlaq_f32(v39, a8, v50))))), v46)));
          v37 += 4;
          v36 += 4;
        }

        while (v37 < v16);
      }
    }

    else if (v14 == 2)
    {
      if (v16)
      {
        a8.i64[0] = 0x8000000080000000;
        a8.i32[2] = 0x80000000;
        a8.i32[3] = 0x80000000;
        v33 = *(*(a1 + 80) + 8 * a2);
        v34 = *(a1 + 40) * a5;
        do
        {
          a9.i32[0] = *v11;
          a6.i32[0] = 0;
          if (*v11 != 0.0)
          {
            v35 = fabs(*a9.i32);
            if (v35 <= 0.5)
            {
              *a6.i64 = *a9.i32 * *a9.i32 * 0.333333333;
            }

            else
            {
              v105 = a9;
              *a6.i64 = exp((v35 + -0.559910729) * 5.59181631);
              a9 = v105;
              a8.i64[0] = 0x8000000080000000;
              a8.i32[2] = 0x80000000;
              a8.i32[3] = 0x80000000;
              *a6.i64 = (*a6.i64 + 0.28466892) * 0.0833333333;
            }

            *a6.i32 = *a6.i64;
            a6 = vbslq_s8(a8, a6, a9);
          }

          *v33++ = a6.i32[0];
          ++v11;
          --v34;
        }

        while (v34);
      }

      if ((*(a1 + 8) & 1) != 0 && sub_240C06644(a1, v15, v16, 1))
      {
        return 0;
      }
    }

    else if (v14 == 3 && v16)
    {
      v17 = 0;
      v18 = 0;
      a6 = vdupq_n_s32(0x3D9E8391u);
      v19 = vdupq_n_s32(0x3F522E0Fu);
      a8 = vdupq_n_s32(0x3F4BD0EAu);
      v20 = vdupq_n_s32(0x3BD5AFDEu);
      v21 = vdupq_n_s32(0xBD61CABC);
      v22 = vdupq_n_s32(0x3E2661B1u);
      v23 = vdupq_n_s32(0x3EFF5C88u);
      v24 = vdupq_n_s32(0x3C2AFD55u);
      v25 = vdupq_n_s32(0x3F89DA5Eu);
      v26 = vdupq_n_s32(0x3966B677u);
      v27 = vdupq_n_s32(0x3E86C025u);
      v28 = vdupq_n_s32(0x3D25AEE6u);
      v29.i64[0] = 0x8000000080000000;
      v29.i64[1] = 0x8000000080000000;
      do
      {
        v30 = *&a3[v17];
        v31 = vandq_s8(v30, v29);
        v32 = *&v30 & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL);
        *&v15[v17] = vorrq_s8(v31, vabsq_f32(vbslq_s8(vcgtq_f32(v32, v28), vdivq_f32(vmlaq_f32(v26, v32, vmlaq_f32(v24, v32, vmlaq_f32(v22, v32, vmlaq_f32(a8, v19, v32)))), vmlaq_f32(v27, v32, vmlaq_f32(v25, v32, vmlaq_f32(v23, v32, vmlaq_f32(v21, v20, v32))))), vmulq_f32(v32, a6))));
        v18 += 4;
        v17 += 4;
      }

      while (v18 < v16);
    }
  }

  else
  {
    v15 = a3;
  }

  v51 = *(a1 + 40);
  v52 = *(a1 + 156);
  if (v51 == 4)
  {
    if ((*(a1 + 156) & 1) == 0)
    {
      v53 = *(*(a1 + 80) + 8 * a2);
      v54 = 4 * a5;
      if (4 * a5)
      {
        v55 = vdupq_n_s32(0xC2C80000);
        v56 = vdupq_n_s32(0x42C80000u);
        v57 = *(*(a1 + 80) + 8 * a2);
        do
        {
          *v57 = vmlaq_f32(v56, v55, *v57);
          ++v57;
          v54 -= 4;
        }

        while (v54);
      }

      goto LABEL_33;
    }
  }

  else if ((*(a1 + 156) & 1) == 0)
  {
LABEL_33:
    (*(*a1 + 8))();
    goto LABEL_34;
  }

  if (v15 != __dst)
  {
    memcpy(__dst, v15, 4 * a5 * v51);
  }

LABEL_34:
  v58 = *(a1 + 164);
  if (v58)
  {
    v59 = *(a1 + 48) * a5;
    if (v58 == 1)
    {
      if (v59)
      {
        v77 = 0;
        v78 = vdupq_n_s32(0x38D1B717u);
        v79 = vdupq_n_s32(0xC88BE24D);
        v80 = vdupq_n_s32(0x4786914Fu);
        v81 = vdupq_n_s32(0xC84A65A6);
        v82 = vdupq_n_s32(0xC72B7AD7);
        v83 = vdupq_n_s32(0x43074838u);
        v84 = vdupq_n_s32(0x467B5314u);
        v85 = vdupq_n_s32(0x3EC6B81Cu);
        v86 = vdupq_n_s32(0x44B8B702u);
        v87 = vdupq_n_s32(0x37257B02u);
        v88 = vdupq_n_s32(0x4206DFEEu);
        v89 = vdupq_n_s32(0x42418990u);
        v90 = vdupq_n_s32(0x43154069u);
        v91 = vdupq_n_s32(0x41CF3BC3u);
        v92 = vdupq_n_s32(0x42E01F14u);
        v93 = vdupq_n_s32(0x425CE93Au);
        v94 = vdupq_n_s32(0x42B94632u);
        v95 = vdupq_n_s32(0xBF8C4274);
        v96 = vdupq_n_s32(0x41A1562Eu);
        v97 = vdupq_n_s32(0x3C5D697Du);
        v98 = vdupq_n_s32(0x3F8196D9u);
        v99 = *(a1 + 152) * 0.0001;
        v100.i64[0] = 0x8000000080000000;
        v100.i64[1] = 0x8000000080000000;
        do
        {
          v101.i64[0] = __PAIR64__(HIDWORD(__dst->i64[0]), *__dst) & 0x7FFFFFFF7FFFFFFFLL;
          v101.i32[2] = __dst->i64[1] & 0x7FFFFFFF;
          v101.i32[3] = HIDWORD(__dst->i64[0]) & 0x7FFFFFFF;
          v102 = vsqrtq_f32(vsqrtq_f32(vmulq_n_f32(v101, v99)));
          *__dst = vorrq_s8(vandq_s8(*__dst, v100), vabsq_f32(vbslq_s8(vcgtq_f32(v78, v101), vdivq_f32(vmlaq_f32(v87, v102, vmlaq_f32(v85, v102, vmlaq_f32(v83, v102, vmlaq_f32(v80, v79, v102)))), vmlaq_f32(v88, v102, vmlaq_f32(v86, v102, vmlaq_f32(v84, v102, vmlaq_f32(v82, v81, v102))))), vdivq_f32(vmlaq_f32(v97, v102, vmlaq_f32(v95, v102, vmlaq_f32(v93, v102, vmlaq_f32(v90, v89, v102)))), vmlaq_f32(v98, v102, vmlaq_f32(v96, v102, vmlaq_f32(v94, v102, vmlaq_f32(v92, v91, v102))))))));
          ++__dst;
          v77 += 4;
        }

        while (v77 < v59);
      }

      return 1;
    }

    if (v58 != 2)
    {
      if (v58 == 3 && v59)
      {
        v60 = 0;
        v61 = vdupq_n_s32(0x414EB852u);
        v62 = vdupq_n_s32(0x3F3C3A32u);
        v63 = vdupq_n_s32(0x3FBCB2C2u);
        v64 = vdupq_n_s32(0x3CC6A52Au);
        v65 = vdupq_n_s32(0x3F6D0463u);
        v66 = vdupq_n_s32(0x3EC7E073u);
        v67 = vdupq_n_s32(0x3FAB9FE4u);
        v68 = vdupq_n_s32(0x3BAD40B5u);
        v69 = vdupq_n_s32(0x3E9B7A50u);
        v70 = vdupq_n_s32(0xBA069D6D);
        v71 = vdupq_n_s32(0x3C24949Bu);
        v72 = vdupq_n_s32(0x3B4D2E1Cu);
        v73.i64[0] = 0x8000000080000000;
        v73.i64[1] = 0x8000000080000000;
        do
        {
          v74.i64[0] = __PAIR64__(HIDWORD(__dst->i64[0]), *__dst) & 0x7FFFFFFF7FFFFFFFLL;
          v74.i32[2] = __dst->i64[1] & 0x7FFFFFFF;
          v74.i32[3] = HIDWORD(__dst->i64[0]) & 0x7FFFFFFF;
          v75 = vsqrtq_f32(v74);
          *__dst = vorrq_s8(vandq_s8(*__dst, v73), vabsq_f32(vbslq_s8(vcgtq_f32(v74, v72), vdivq_f32(vmlaq_f32(v70, v75, vmlaq_f32(v68, v75, vmlaq_f32(v66, v75, vmlaq_f32(v63, v62, v75)))), vmlaq_f32(v71, v75, vmlaq_f32(v69, v75, vmlaq_f32(v67, v75, vmlaq_f32(v65, v64, v75))))), vmulq_f32(v74, v61))));
          ++__dst;
          v60 += 4;
        }

        while (v60 < v59);
      }

      return 1;
    }

    if (*(a1 + 8) != 1 || !sub_240C06644(a1, __dst->i32, v59, 0))
    {
      if (v59)
      {
        v103.i64[0] = 0x8000000080000000;
        v103.i64[1] = 0x8000000080000000;
        do
        {
          a8.i32[0] = __dst->i32[0];
          a6.i32[0] = 0;
          if (*__dst->i32 != 0.0)
          {
            v104 = fabsf(*a8.i32);
            if (v104 <= 0.0833333333)
            {
              *a6.i64 = sqrt(v104 * 3.0);
            }

            else
            {
              v106 = a8;
              *a6.i64 = log(v104 * 12.0 + -0.28466892);
              a8 = v106;
              v103.i64[0] = 0x8000000080000000;
              v103.i64[1] = 0x8000000080000000;
              *a6.i64 = *a6.i64 * 0.17883277 + 0.559910729;
            }

            *a6.i32 = *a6.i64;
            a6 = vbslq_s8(v103, a6, a8);
          }

          __dst->i32[0] = a6.i32[0];
          __dst = (__dst + 4);
          --v59;
        }

        while (v59);
      }

      return 1;
    }

    return 0;
  }

  return 1;
}

void sub_240C078D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45)
{
  sub_240AC6C8C(a16);
  if (__p)
  {
    operator delete(__p);
  }

  sub_240AC6C8C(a14);
  if (v45)
  {
    sub_240AC6C8C(v45);
  }

  if (a45)
  {
    operator delete(a45);
  }

  v48 = *(v46 - 240);
  if (v48)
  {
    operator delete(v48);
  }

  v49 = *(v46 - 160);
  if (v49)
  {
    operator delete(v49);
  }

  v50 = *(v46 - 136);
  if (v50)
  {
    operator delete(v50);
  }

  sub_240C09BDC((v46 - 112));
  _Unwind_Resume(a1);
}

uint64_t sub_240C079C4()
{
  v0 = off_281A8B570();
  result = *v0;
  if (*v0)
  {
    return result;
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v75 = 0u;
  v77 = 0;
  v73 = 0u;
  v74 = 0u;
  v83 = xmmword_281500C10;
  v82 = 0;
  v84 = *&off_281500C20;
  v2 = &qword_27E516570;
  v85 = xmmword_281500C30;
  v3 = &qword_27E516570;
  v76 = &v83;
  while (1)
  {
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    if (v3 == &v73)
    {
      goto LABEL_7;
    }
  }

  v3 = &unk_278CB2F00;
LABEL_7:
  v4 = v3[6];
  if (!v4)
  {
    v4 = &xmmword_281500C10;
  }

  v5 = (*v4)(&v73, 184, 0xA00407B4F7C3DLL);
  if (v5)
  {
    v6 = v5;
    *(v5 + 176) = 0;
    *(v5 + 144) = 0u;
    *(v5 + 160) = 0u;
    *(v5 + 112) = 0u;
    *(v5 + 128) = 0u;
    *(v5 + 80) = 0u;
    *(v5 + 96) = 0u;
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *v5 = 0u;
    v7 = (v5 + 136);
    v8 = v83;
    v9 = v84;
    *(v5 + 168) = v85;
    *(v5 + 152) = v9;
    *(v5 + 136) = v8;
    pthread_mutex_lock(&stru_27E5164C8);
    *v6 = qword_27E516570;
    qword_27E516570 = v6;
    pthread_mutex_unlock(&stru_27E5164C8);
    v6[2] = 0;
    v6[6] = v7;
    while (1)
    {
      v2 = *v2;
      if (!v2)
      {
        break;
      }

      if (v2 == v6)
      {
        goto LABEL_15;
      }
    }

    v2 = &unk_278CB2F00;
LABEL_15:
    v10 = v2[6];
    if (!v10)
    {
      v10 = &xmmword_281500C10;
    }

    v11 = (*(v10 + 1))(v6, 16, 0x20040A4A59CD2);
    if (v11)
    {
      v18 = v11;
      *v11 = v6;
      v19 = sub_240AC1428(v6, 0xB0u);
      *(v18 + 8) = v19;
      if (v19)
      {
        v6[1] = v18;
        v20 = sub_240AC13A8(v18, 8);
        if (v20)
        {
          *v20 = nullsub_1;
        }

        v6[3] = v20;
        v21 = sub_240AC13A8(v6[1], 32);
        if (v21)
        {
          *v21 = xmmword_240C156D0;
          v21[1] = unk_240C156E0;
        }

        v6[4] = v21;
        v22 = sub_240AC13A8(v6[1], 8);
        if (v22)
        {
          *v22 = 0x3FF0000000000000;
        }

        v6[5] = v22;
        v6[6] = v7;
        v23 = sub_240AC13A8(v6[1], 8);
        if (v23)
        {
          *v23 = 0;
        }

        v6[7] = v23;
        v24 = sub_240AC13A8(v6[1], 8);
        if (v24)
        {
          *v24 = 0;
        }

        v6[8] = v24;
        v25 = sub_240AC13A8(v6[1], 8);
        if (v25)
        {
          *v25 = 0;
        }

        v6[9] = v25;
        v26 = sub_240AC13A8(v6[1], 8);
        if (v26)
        {
          *v26 = 0;
        }

        v6[10] = v26;
        v27 = sub_240AC13A8(v6[1], 8);
        if (v27)
        {
          *v27 = 0;
        }

        v6[13] = v27;
        v28 = sub_240AC13A8(v6[1], 8);
        if (v28)
        {
          *v28 = 0;
        }

        v6[11] = v28;
        v29 = sub_240AC13A8(v6[1], 8);
        if (v29)
        {
          *v29 = 0;
        }

        v6[12] = v29;
        v30 = sub_240AC13A8(v6[1], 8);
        if (v30)
        {
          *v30 = 0;
        }

        v6[14] = v30;
        v31 = sub_240AC13A8(v6[1], 8);
        if (v31)
        {
          *v31 = 0;
        }

        v6[15] = v31;
        v32 = sub_240AC13A8(v6[1], 32);
        if (v32)
        {
          v33 = *off_2852A3750;
          *v32 = xmmword_2852A3740;
          v32[1] = v33;
        }

        v6[16] = v32;
        *v0 = v6;
        v34 = &qword_27E516570;
        while (1)
        {
          v34 = *v34;
          if (!v34)
          {
            break;
          }

          if (v34 == v6)
          {
            goto LABEL_173;
          }
        }

        v34 = &unk_278CB2F00;
        goto LABEL_173;
      }

      v35 = &qword_27E516570;
      while (1)
      {
        v35 = *v35;
        if (!v35)
        {
          break;
        }

        if (v35 == v6)
        {
          goto LABEL_55;
        }
      }

      v35 = &unk_278CB2F00;
LABEL_55:
      v36 = v35[6];
      if (!v36)
      {
        v36 = &xmmword_281500C10;
      }

      (*(v36 + 2))(v6, v18);
    }

    v6[1] = 0;
    v94 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v38 = v7[1];
    v37 = v7[2];
    v95[0] = *v7;
    v95[1] = v38;
    v95[2] = v37;
    *&v87 = v6[2];
    *&v89 = v95;
    v6[6] = v7;
    v39 = &qword_27E516570;
    while (1)
    {
      v39 = *v39;
      if (!v39)
      {
        break;
      }

      if (v39 == v6)
      {
        goto LABEL_63;
      }
    }

    v39 = &unk_278CB2F00;
LABEL_63:
    v40 = v39[7];
    if (!v40)
    {
      v40 = &unk_27E516578;
    }

    *v40 = 0;
    v41 = &qword_27E516570;
    while (1)
    {
      v41 = *v41;
      if (!v41)
      {
        break;
      }

      if (v41 == v6)
      {
        goto LABEL_70;
      }
    }

    v41 = &unk_278CB2F00;
LABEL_70:
    v42 = v41[10];
    if (!v42)
    {
      v42 = &unk_27E5165A8;
    }

    *v42 = 0;
    v43 = &qword_27E516570;
    while (1)
    {
      v43 = *v43;
      if (!v43)
      {
        break;
      }

      if (v43 == v6)
      {
        goto LABEL_77;
      }
    }

    v43 = &unk_278CB2F00;
LABEL_77:
    v44 = v43[11];
    if (!v44)
    {
      v44 = &unk_27E5165B0;
    }

    *v44 = 0;
    v45 = &qword_27E516570;
    while (1)
    {
      v45 = *v45;
      if (!v45)
      {
        break;
      }

      if (v45 == v6)
      {
        goto LABEL_84;
      }
    }

    v45 = &unk_278CB2F00;
LABEL_84:
    v46 = v45[9];
    if (!v46)
    {
      v46 = &unk_27E516588;
    }

    *v46 = 0;
    v47 = &qword_27E516570;
    while (1)
    {
      v47 = *v47;
      if (!v47)
      {
        break;
      }

      if (v47 == v6)
      {
        goto LABEL_91;
      }
    }

    v47 = &unk_278CB2F00;
LABEL_91:
    v48 = v47[12];
    if (!v48)
    {
      v48 = &unk_27E516590;
    }

    *v48 = 0;
    v49 = &qword_27E516570;
    while (1)
    {
      v49 = *v49;
      if (!v49)
      {
        break;
      }

      if (v49 == v6)
      {
        goto LABEL_98;
      }
    }

    v49 = &unk_278CB2F00;
LABEL_98:
    v50 = v49[8];
    if (!v50)
    {
      v50 = &unk_27E516580;
    }

    *v50 = 0;
    v51 = &qword_27E516570;
    while (1)
    {
      v51 = *v51;
      if (!v51)
      {
        break;
      }

      if (v51 == v6)
      {
        goto LABEL_105;
      }
    }

    v51 = &unk_278CB2F00;
LABEL_105:
    v52 = v51[13];
    if (!v52)
    {
      v52 = &unk_27E5165A0;
    }

    *v52 = 0;
    v53 = &qword_27E516570;
    while (1)
    {
      v53 = *v53;
      if (!v53)
      {
        break;
      }

      if (v53 == v6)
      {
        goto LABEL_112;
      }
    }

    v53 = &unk_278CB2F00;
LABEL_112:
    v54 = v53[14];
    if (!v54)
    {
      v54 = &unk_27E516598;
    }

    *v54 = 0;
    v55 = &qword_27E516570;
    while (1)
    {
      v55 = *v55;
      if (!v55)
      {
        break;
      }

      if (v55 == v6)
      {
        goto LABEL_119;
      }
    }

    v55 = &unk_278CB2F00;
LABEL_119:
    v56 = v55[15];
    if (!v56)
    {
      v56 = &qword_27E5165D8;
    }

    *v56 = 0;
    v57 = &qword_27E516570;
    v58 = &qword_27E516570;
    while (1)
    {
      v58 = *v58;
      if (!v58)
      {
        break;
      }

      if (v58 == v6)
      {
        goto LABEL_126;
      }
    }

    v58 = &unk_278CB2F00;
LABEL_126:
    v59 = v58[16];
    if (!v59)
    {
      v59 = &off_281500BF0;
    }

    *v59 = 0u;
    *(v59 + 1) = 0u;
    v60 = v6[1];
    if (v60)
    {
      v61 = v60[1];
      while (v61)
      {
        v62 = v61;
        v61 = v61[2];
        if (*v62)
        {
          v63 = *v60;
          if (*v60)
          {
            v64 = &qword_27E516570;
            while (1)
            {
              v64 = *v64;
              if (!v64)
              {
                break;
              }

              if (v64 == v63)
              {
                goto LABEL_137;
              }
            }
          }

          v64 = &unk_278CB2F00;
LABEL_137:
          v65 = v64[6];
          if (!v65)
          {
            v65 = &xmmword_281500C10;
          }

          (*(v65 + 2))(v63, *v62, v12, v13, v14, v15, v16, v17, v73, *(&v73 + 1), v74, *(&v74 + 1), v75, *(&v75 + 1), v76, v77, v78);
        }

        if (*v60)
        {
          v66 = &qword_27E516570;
          while (1)
          {
            v66 = *v66;
            if (!v66)
            {
              break;
            }

            if (v66 == *v60)
            {
              goto LABEL_146;
            }
          }
        }

        v66 = &unk_278CB2F00;
LABEL_146:
        v67 = v66[6];
        if (!v67)
        {
          v67 = &xmmword_281500C10;
        }

        (*(v67 + 2))();
      }

      if (*v60)
      {
        v68 = &qword_27E516570;
        while (1)
        {
          v68 = *v68;
          if (!v68)
          {
            break;
          }

          if (v68 == *v60)
          {
            goto LABEL_156;
          }
        }

        v68 = &unk_278CB2F00;
      }

      else
      {
        v68 = &unk_278CB2F00;
      }

LABEL_156:
      v69 = v68[6];
      if (!v69)
      {
        v69 = &xmmword_281500C10;
      }

      (*(v69 + 2))();
    }

    v6[1] = 0;
    pthread_mutex_lock(&stru_27E5164C8);
    while (*v57 != v6)
    {
      if (!*v57)
      {
        goto LABEL_164;
      }

      v57 = *v57;
    }

    *v57 = *v6;
LABEL_164:
    pthread_mutex_unlock(&stru_27E5164C8);
    v70 = &qword_27E516570;
    while (1)
    {
      v70 = *v70;
      if (!v70)
      {
        break;
      }

      if (v70 == &v86)
      {
        goto LABEL_169;
      }
    }

    v70 = &unk_278CB2F00;
LABEL_169:
    v71 = v70[6];
    if (!v71)
    {
      v71 = &xmmword_281500C10;
    }

    (*(v71 + 2))(&v86, v6);
  }

  *v0 = 0;
  v34 = &unk_278CB2F00;
LABEL_173:
  v72 = v34[3];
  if (!v72)
  {
    v72 = &off_281500C48;
  }

  *v72 = nullsub_67;
  return *v0;
}

uint64_t sub_240C081F4(uint64_t a1, uint64_t a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (*a1 > 9)
  {
    if (v2 == 10)
    {
      v3 = vdupq_n_s64(0x3FD5555555555555uLL);
    }

    else
    {
      v3 = xmmword_240C11440;
    }
  }

  else if (v2 == 1)
  {
    v3 = xmmword_240C11430;
  }

  else
  {
    v4 = *(a1 + 60);
    v5.i64[0] = v4;
    v5.i64[1] = SHIDWORD(v4);
    v3 = vmulq_f64(vcvtq_f64_s64(v5), vdupq_n_s64(0x3EB0C6F7A0B5ED8DuLL));
  }

  if (fabs(v3.f64[1]) < 1.0e-12)
  {
    goto LABEL_22;
  }

  v6 = *(a1 + 4);
  if (v6 > 8)
  {
    if (v6 == 9)
    {
      _Q3 = xmmword_240C114B0;
      _Q2 = xmmword_240C114C0;
      _Q7 = xmmword_240C114D0;
    }

    else
    {
      _Q3 = xmmword_240C11480;
      _Q2 = xmmword_240C11490;
      _Q7 = xmmword_240C114A0;
    }
  }

  else if (v6 == 1)
  {
    _Q3 = xmmword_240C11450;
    _Q2 = xmmword_240C11460;
    _Q7 = xmmword_240C11470;
  }

  else
  {
    v10 = *(a1 + 68);
    v11.i64[0] = v10;
    v11.i64[1] = SHIDWORD(v10);
    v12 = vdupq_n_s64(0x3EB0C6F7A0B5ED8DuLL);
    _Q2 = vmulq_f64(vcvtq_f64_s64(v11), v12);
    v13 = *(a1 + 76);
    v11.i64[0] = v13;
    v11.i64[1] = SHIDWORD(v13);
    _Q7 = vmulq_f64(vcvtq_f64_s64(v11), v12);
    v14 = *(a1 + 84);
    v11.i64[0] = v14;
    v11.i64[1] = SHIDWORD(v14);
    _Q3 = vmulq_f64(vcvtq_f64_s64(v11), v12);
  }

  *&v15 = _Q3.f64[0];
  *(&v15 + 1) = *&_Q2.f64[1];
  v46 = vzip1q_s64(_Q2, _Q7);
  v47[0] = v15;
  v47[1] = vzip2q_s64(_Q7, _Q3);
  _D19 = 1.0 - _Q2.f64[0] - _Q2.f64[1];
  v50 = 1.0 - _Q3.f64[0] - _Q3.f64[1];
  __asm { FMLA            D17, D20, V7.D[1] }

  v22 = vnegq_f64(vzip1q_s64(_Q7, _Q3));
  _Q22.f64[1] = _Q7.f64[1];
  _Q22.f64[0] = v50;
  v24 = vdupq_lane_s64(*&_Q7.f64[0], 0);
  v24.f64[0] = 1.0 - _Q7.f64[0] - _Q7.f64[1];
  v52 = vmlaq_f64(vmulq_f64(_Q22, v22), v24, _Q3);
  __asm { FMLA            D22, D19, V3.D[1] }

  v25 = vdupq_lane_s64(*&_Q2.f64[0], 0);
  v25.f64[0] = _D19;
  v26.f64[0] = _D19;
  v26.f64[1] = -_Q2.f64[0];
  v27 = vdupq_lane_s64(*&_Q3.f64[0], 0);
  v27.f64[0] = v50;
  v48 = _D19;
  v49 = v24.f64[0];
  v51 = _D17;
  v53 = _Q22.f64[0];
  v54 = vmlaq_f64(vmulq_f64(v26, vzip2q_s64(v22, _Q3)), v27, _Q2);
  __asm { FMLA            D24, D18, V2.D[1] }

  v55 = _D24;
  v29.f64[1] = _Q2.f64[1];
  v29.f64[0] = v24.f64[0];
  v30 = vdupq_lane_s64(*&v22.f64[0], 0);
  v30.f64[0] = -_Q2.f64[0];
  v56 = vmlaq_f64(vmulq_f64(v29, v30), v25, _Q7);
  v31 = _Q22.f64[0] * _Q7.f64[0] + _Q2.f64[0] * _D17 + _Q3.f64[0] * _D24;
  if (fabs(v31) < 1.0e-10)
  {
LABEL_22:
    result = 1;
  }

  else
  {
    v32 = 0;
    v33 = 1.0 / v31;
    do
    {
      *&v46.i64[v32] = v33 * *(&v51 + v32 * 8);
      ++v32;
    }

    while (v32 != 9);
    v34 = 0;
    v35 = 1.0 / v3.f64[1];
    v36 = v35;
    *_Q2.f64 = (1.0 - v3.f64[0] - v3.f64[1]) * v36;
    v37 = v3.f64[0] * v36;
    v51 = _Q2.f64[1];
    v52.f64[0] = _Q7.f64[1];
    v52.f64[1] = _Q3.f64[1];
    v38 = v37;
    v39 = *_Q2.f64;
    v40 = v47;
    do
    {
      v41 = *(v40 - 1) + *(v40 - 2) * v38;
      v42 = *v40;
      v40 += 3;
      v43 = *(&v51 + v34) * (v41 + v42 * v39);
      *(a2 + 4 * v34++) = v43;
    }

    while (v34 != 3);
    result = 0;
  }

  v45 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_240C08514(double *a1, uint64_t a2)
{
  v137 = *MEMORY[0x277D85DE8];
  v122[0] = 0;
  v122[1] = 0;
  v123 = 0;
  v120[0] = 0;
  v120[1] = 0;
  v121 = 0;
  v118[0] = 0;
  v118[1] = 0;
  v119 = 0;
  v2 = 1;
  if (*a1 > 2u)
  {
    goto LABEL_227;
  }

  v4 = *(a1 + 20);
  if (v4 == 2 || *a1 == 2 && *(a1 + 24))
  {
    goto LABEL_227;
  }

  LOBYTE(__str) = 0;
  sub_240B26750(v122, 0x80uLL, &__str);
  sub_240B26894(0, 0, v122);
  v6 = v122[0];
  if ((v122[1] - v122[0]) <= 7)
  {
    sub_240B26918(v122, 8 - (v122[1] - v122[0]));
    v6 = v122[0];
  }

  v6[1] = 543979626;
  sub_240B26894(71303168, 8, v122);
  v7 = *a1;
  v8 = v122[0];
  v9 = v122[1] - v122[0];
  if ((v122[1] - v122[0]) <= 0xF)
  {
    sub_240B26918(v122, 16 - v9);
    v8 = v122[0];
    v9 = v122[1] - v122[0];
  }

  if (v7 == 2)
  {
    v10 = 1919837043;
  }

  else
  {
    v10 = 1920233069;
  }

  v8[3] = v10;
  v11 = *a1;
  if (v9 <= 0x13)
  {
    sub_240B26918(v122, 20 - v9);
    v8 = v122[0];
    v9 = v122[1] - v122[0];
  }

  if (v11 == 1)
  {
    v12 = 1497453127;
  }

  else
  {
    v12 = 541214546;
  }

  v8[4] = v12;
  if (sub_240B26A50(a1))
  {
    v13 = 543318348;
  }

  else
  {
    v13 = 542792024;
  }

  if (v9 <= 0x17)
  {
    sub_240B26918(v122, 24 - v9);
    v8 = v122[0];
    v9 = v122[1] - v122[0];
  }

  v8[5] = v13;
  if (v9 <= 0x19)
  {
    sub_240B26918(v122, 26 - v9);
    v8 = v122[0];
  }

  *(v8 + 12) = -7417;
  v14 = v122[0];
  v15 = v122[1] - v122[0];
  if ((v122[1] - v122[0]) <= 0x1B)
  {
    sub_240B26918(v122, 28 - v15);
    v14 = v122[0];
    v15 = v122[1] - v122[0];
  }

  v14[13] = 3072;
  if (v15 <= 0x1D)
  {
    sub_240B26918(v122, 30 - v15);
    v14 = v122[0];
  }

  v14[14] = 256;
  v16 = v122[0];
  v17 = v122[1] - v122[0];
  if ((v122[1] - v122[0]) <= 0x1F)
  {
    sub_240B26918(v122, 32 - v17);
    v16 = v122[0];
    v17 = v122[1] - v122[0];
  }

  v16[15] = 0;
  if (v17 <= 0x21)
  {
    sub_240B26918(v122, 34 - v17);
    v16 = v122[0];
  }

  v16[16] = 0;
  v18 = v122[0];
  v19 = v122[1] - v122[0];
  if ((v122[1] - v122[0]) <= 0x23)
  {
    sub_240B26918(v122, 36 - v19);
    v18 = v122[0];
    v19 = v122[1] - v122[0];
  }

  v18[17] = 0;
  if (v19 <= 0x27)
  {
    sub_240B26918(v122, 40 - v19);
    v18 = v122[0];
    v19 = v122[1] - v122[0];
  }

  *(v18 + 9) = 1886610273;
  if (v19 <= 0x2B)
  {
    sub_240B26918(v122, 44 - v19);
    v18 = v122[0];
  }

  *(v18 + 10) = 1280331841;
  sub_240B26894(0, 44, v122);
  sub_240B26894(0, 48, v122);
  sub_240B26894(0, 52, v122);
  sub_240B26894(0, 56, v122);
  sub_240B26894(0, 60, v122);
  sub_240B26894(*(a1 + 24), 64, v122);
  sub_240B26894(63190, 68, v122);
  sub_240B26894(0x10000, 72, v122);
  sub_240B26894(54061, 76, v122);
  v20 = v122[0];
  if ((v122[1] - v122[0]) <= 0x53)
  {
    sub_240B26918(v122, 84 - (v122[1] - v122[0]));
    v20 = v122[0];
  }

  v20[20] = 543979626;
  __p = 0;
  v116 = 0;
  v117 = 0;
  sub_240B26894(0, v120[1] - v120[0], v120);
  v113 = 0;
  v114 = 0;
  v21 = sub_240B26AA4(&v136, off_278CB3240[*a1]);
  v22 = *a1;
  if (*a1 != 2)
  {
    std::string::push_back(v21, 95);
    v23 = *(a1 + 1);
    if (v23 == 2)
    {
      v24 = a1[1];
      __str = 0u;
      v126 = 0u;
      snprintf(&__str, 0x20uLL, "%g", v24);
      sub_240B26AA4(&v124, &__str);
      std::string::push_back(&v124, 59);
      v25 = v124.__r_.__value_.__r.__words[2];
      *&v134 = *(&v124.__r_.__value_.__l + 2);
      v133 = *&v124.__r_.__value_.__l.__data_;
      memset(&v124, 0, sizeof(v124));
      v26 = HIBYTE(v25);
      if ((v26 & 0x80u) == 0)
      {
        v27 = &v133;
      }

      else
      {
        v27 = v133;
      }

      if ((v26 & 0x80u) == 0)
      {
        v28 = v26;
      }

      else
      {
        v28 = *(&v133 + 1);
      }

      std::string::append(&v136, v27, v28);
      if (SBYTE7(v134) < 0)
      {
        operator delete(v133);
      }

      if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v124.__r_.__value_.__l.__data_);
      }

      v29 = a1[2];
      __str = 0u;
      v126 = 0u;
      snprintf(&__str, 0x20uLL, "%g", v29);
      sub_240B26AA4(&v133, &__str);
      if ((SBYTE7(v134) & 0x80u) == 0)
      {
        v30 = &v133;
      }

      else
      {
        v30 = v133;
      }

      if ((SBYTE7(v134) & 0x80u) == 0)
      {
        v31 = BYTE7(v134);
      }

      else
      {
        v31 = *(&v133 + 1);
      }

      std::string::append(&v136, v30, v31);
      if (SBYTE7(v134) < 0)
      {
        v32 = v133;
LABEL_73:
        operator delete(v32);
      }
    }

    else
    {
      if (v23 == 1)
      {
        v33 = "D65";
      }

      else if (v23 == 11)
      {
        v33 = "DCI";
      }

      else
      {
        v33 = "EER";
      }

      sub_240B26AA4(&__str, v33);
      if ((SBYTE7(v126) & 0x80u) == 0)
      {
        p_str = &__str;
      }

      else
      {
        p_str = __str;
      }

      if ((SBYTE7(v126) & 0x80u) == 0)
      {
        v35 = BYTE7(v126);
      }

      else
      {
        v35 = *(&__str + 1);
      }

      std::string::append(&v136, p_str, v35);
      if (SBYTE7(v126) < 0)
      {
        v32 = __str;
        goto LABEL_73;
      }
    }
  }

  if ((*a1 - 1) < 2)
  {
    goto LABEL_148;
  }

  std::string::push_back(&v136, 95);
  v36 = *(a1 + 6);
  if (v36 == 2)
  {
    v37 = a1[4];
    __str = 0u;
    v126 = 0u;
    snprintf(&__str, 0x20uLL, "%g", v37);
    sub_240B26AA4(&v124, &__str);
    std::string::push_back(&v124, 59);
    v38 = v124.__r_.__value_.__r.__words[2];
    *&v134 = *(&v124.__r_.__value_.__l + 2);
    v133 = *&v124.__r_.__value_.__l.__data_;
    memset(&v124, 0, sizeof(v124));
    v39 = HIBYTE(v38);
    if ((v39 & 0x80u) == 0)
    {
      v40 = &v133;
    }

    else
    {
      v40 = v133;
    }

    if ((v39 & 0x80u) == 0)
    {
      v41 = v39;
    }

    else
    {
      v41 = *(&v133 + 1);
    }

    std::string::append(&v136, v40, v41);
    if (SBYTE7(v134) < 0)
    {
      operator delete(v133);
    }

    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v124.__r_.__value_.__l.__data_);
    }

    v42 = a1[5];
    __str = 0u;
    v126 = 0u;
    snprintf(&__str, 0x20uLL, "%g", v42);
    sub_240B26AA4(&v124, &__str);
    std::string::push_back(&v124, 59);
    v43 = v124.__r_.__value_.__r.__words[2];
    *&v134 = *(&v124.__r_.__value_.__l + 2);
    v133 = *&v124.__r_.__value_.__l.__data_;
    memset(&v124, 0, sizeof(v124));
    v44 = HIBYTE(v43);
    if ((v44 & 0x80u) == 0)
    {
      v45 = &v133;
    }

    else
    {
      v45 = v133;
    }

    if ((v44 & 0x80u) == 0)
    {
      v46 = v44;
    }

    else
    {
      v46 = *(&v133 + 1);
    }

    std::string::append(&v136, v45, v46);
    if (SBYTE7(v134) < 0)
    {
      operator delete(v133);
    }

    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v124.__r_.__value_.__l.__data_);
    }

    v47 = a1[6];
    __str = 0u;
    v126 = 0u;
    snprintf(&__str, 0x20uLL, "%g", v47);
    sub_240B26AA4(&v124, &__str);
    std::string::push_back(&v124, 59);
    v48 = v124.__r_.__value_.__r.__words[2];
    *&v134 = *(&v124.__r_.__value_.__l + 2);
    v133 = *&v124.__r_.__value_.__l.__data_;
    memset(&v124, 0, sizeof(v124));
    v49 = HIBYTE(v48);
    if ((v49 & 0x80u) == 0)
    {
      v50 = &v133;
    }

    else
    {
      v50 = v133;
    }

    if ((v49 & 0x80u) == 0)
    {
      v51 = v49;
    }

    else
    {
      v51 = *(&v133 + 1);
    }

    std::string::append(&v136, v50, v51);
    if (SBYTE7(v134) < 0)
    {
      operator delete(v133);
    }

    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v124.__r_.__value_.__l.__data_);
    }

    v52 = a1[7];
    __str = 0u;
    v126 = 0u;
    snprintf(&__str, 0x20uLL, "%g", v52);
    sub_240B26AA4(&v124, &__str);
    std::string::push_back(&v124, 59);
    v53 = v124.__r_.__value_.__r.__words[2];
    *&v134 = *(&v124.__r_.__value_.__l + 2);
    v133 = *&v124.__r_.__value_.__l.__data_;
    memset(&v124, 0, sizeof(v124));
    v54 = HIBYTE(v53);
    if ((v54 & 0x80u) == 0)
    {
      v55 = &v133;
    }

    else
    {
      v55 = v133;
    }

    if ((v54 & 0x80u) == 0)
    {
      v56 = v54;
    }

    else
    {
      v56 = *(&v133 + 1);
    }

    std::string::append(&v136, v55, v56);
    if (SBYTE7(v134) < 0)
    {
      operator delete(v133);
    }

    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v124.__r_.__value_.__l.__data_);
    }

    v57 = a1[8];
    __str = 0u;
    v126 = 0u;
    snprintf(&__str, 0x20uLL, "%g", v57);
    sub_240B26AA4(&v124, &__str);
    std::string::push_back(&v124, 59);
    v58 = v124.__r_.__value_.__r.__words[2];
    *&v134 = *(&v124.__r_.__value_.__l + 2);
    v133 = *&v124.__r_.__value_.__l.__data_;
    memset(&v124, 0, sizeof(v124));
    v59 = HIBYTE(v58);
    if ((v59 & 0x80u) == 0)
    {
      v60 = &v133;
    }

    else
    {
      v60 = v133;
    }

    if ((v59 & 0x80u) == 0)
    {
      v61 = v59;
    }

    else
    {
      v61 = *(&v133 + 1);
    }

    std::string::append(&v136, v60, v61);
    if (SBYTE7(v134) < 0)
    {
      operator delete(v133);
    }

    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v124.__r_.__value_.__l.__data_);
    }

    v62 = a1[9];
    __str = 0u;
    v126 = 0u;
    snprintf(&__str, 0x20uLL, "%g", v62);
    sub_240B26AA4(&v133, &__str);
    if ((SBYTE7(v134) & 0x80u) == 0)
    {
      v63 = &v133;
    }

    else
    {
      v63 = v133;
    }

    if ((SBYTE7(v134) & 0x80u) == 0)
    {
      v64 = BYTE7(v134);
    }

    else
    {
      v64 = *(&v133 + 1);
    }

    std::string::append(&v136, v63, v64);
    if (SBYTE7(v134) < 0)
    {
      v65 = v133;
LABEL_147:
      operator delete(v65);
    }
  }

  else
  {
    if (v36 == 1)
    {
      v66 = "SRG";
    }

    else if (v36 == 11)
    {
      v66 = "DCI";
    }

    else
    {
      v66 = "202";
    }

    sub_240B26AA4(&__str, v66);
    if ((SBYTE7(v126) & 0x80u) == 0)
    {
      v67 = &__str;
    }

    else
    {
      v67 = __str;
    }

    if ((SBYTE7(v126) & 0x80u) == 0)
    {
      v68 = BYTE7(v126);
    }

    else
    {
      v68 = *(&__str + 1);
    }

    std::string::append(&v136, v67, v68);
    if (SBYTE7(v126) < 0)
    {
      v65 = __str;
      goto LABEL_147;
    }
  }

LABEL_148:
  std::string::push_back(&v136, 95);
  sub_240B26AA4(&__str, off_278CB3260[*(a1 + 24)]);
  if ((SBYTE7(v126) & 0x80u) == 0)
  {
    v69 = &__str;
  }

  else
  {
    v69 = __str;
  }

  if ((SBYTE7(v126) & 0x80u) == 0)
  {
    v70 = BYTE7(v126);
  }

  else
  {
    v70 = *(&__str + 1);
  }

  std::string::append(&v136, v69, v70);
  if (SBYTE7(v126) < 0)
  {
    operator delete(__str);
  }

  if (v22 != 2)
  {
    v71 = *(a1 + 20);
    std::string::push_back(&v136, 95);
    if (v71 == 0xFFFF)
    {
      std::string::push_back(&v136, 103);
      v72 = a1[11];
      __str = 0u;
      v126 = 0u;
      snprintf(&__str, 0x20uLL, "%g", v72);
      sub_240B26AA4(&v133, &__str);
      if ((SBYTE7(v134) & 0x80u) == 0)
      {
        v73 = &v133;
      }

      else
      {
        v73 = v133;
      }

      if ((SBYTE7(v134) & 0x80u) == 0)
      {
        v74 = BYTE7(v134);
      }

      else
      {
        v74 = *(&v133 + 1);
      }

      std::string::append(&v136, v73, v74);
      if (SBYTE7(v134) < 0)
      {
        v75 = v133;
LABEL_187:
        operator delete(v75);
      }
    }

    else
    {
      if (v71 <= 12)
      {
        if (v71 == 1)
        {
          v76 = "709";
        }

        else if (v71 == 2)
        {
          v76 = "TF?";
        }

        else
        {
          v76 = "Lin";
        }
      }

      else if (v71 > 16)
      {
        if (v71 == 17)
        {
          v76 = "DCI";
        }

        else
        {
          v76 = "HLG";
        }
      }

      else if (v71 == 13)
      {
        v76 = "SRG";
      }

      else
      {
        v76 = "PeQ";
      }

      sub_240B26AA4(&__str, v76);
      if ((SBYTE7(v126) & 0x80u) == 0)
      {
        v77 = &__str;
      }

      else
      {
        v77 = __str;
      }

      if ((SBYTE7(v126) & 0x80u) == 0)
      {
        v78 = BYTE7(v126);
      }

      else
      {
        v78 = *(&__str + 1);
      }

      std::string::append(&v136, v77, v78);
      if (SBYTE7(v126) < 0)
      {
        v75 = __str;
        goto LABEL_187;
      }
    }
  }

  sub_240B26B5C(&v136, v118);
  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v136.__r_.__value_.__l.__data_);
  }

  sub_240B26CA8(v118, &v114, &v113);
  sub_240B26D28("desc", v114, v113, v120, &__p);
  sub_240B26AA4(&v124, "CC0");
  sub_240B26B5C(&v124, v118);
  sub_240B26CA8(v118, &v114, &v113);
  sub_240B26D28("cprt", v114, v113, v120, &__p);
  if (*a1 == 1)
  {
    v79 = a1[2];
    if (fabs(v79) < 1.0e-12)
    {
LABEL_220:
      v2 = 1;
      goto LABEL_221;
    }

    v80 = a1[1];
    v81 = 1.0 / v79;
    v82 = v81;
    *&v83 = v80 * v82;
    *&__str = v83 | 0x3F80000000000000;
    v84 = (1.0 - v80 - v79) * v82;
    *(&__str + 2) = v84;
    v85 = sub_240B26E70(&__str, v118);
  }

  else
  {
    v85 = sub_240B26E70(&unk_240C87698, v118);
  }

  v2 = v85;
  if (!v85)
  {
    sub_240B26CA8(v118, &v114, &v113);
    sub_240B26D28("wtpt", v114, v113, v120, &__p);
    if (*a1 == 1)
    {
LABEL_196:
      if (sub_240B26A50(a1))
      {
        v86 = *(a1 + 5);
        v129 = *(a1 + 4);
        v130 = v86;
        v131 = *(a1 + 12);
        v87 = *(a1 + 1);
        __str = *a1;
        v126 = v87;
        v88 = *(a1 + 3);
        v127 = *(a1 + 2);
        v128 = v88;
        v2 = sub_240C0A7A0(&__str, v118);
        if (!v2)
        {
          sub_240B26CA8(v118, &v114, &v113);
          sub_240B26D28("A2B0", v114, v113, v120, &__p);
          sub_240C0A548(v118);
        }
      }

      else
      {
        if (v4 <= 15)
        {
          if (v4 != 1)
          {
            if (v4 == 8)
            {
              LODWORD(v133) = 1065353216;
              *&v126 = 0;
              __str = 0uLL;
              sub_240B2860C(&__str, &v133, &v133 + 4, 1uLL);
            }

            LODWORD(v134) = 1025879782;
            v133 = xmmword_240C876A4;
            *&v126 = 0;
            __str = 0uLL;
            sub_240B2860C(&__str, &v133, &v134 + 4, 5uLL);
          }

          LODWORD(v134) = 1034281812;
          v133 = xmmword_240C876B8;
          *&v126 = 0;
          __str = 0uLL;
          sub_240B2860C(&__str, &v133, &v134 + 4, 5uLL);
        }

        if (v4 > 17)
        {
          if (v4 != 18)
          {
            v93 = 1.0 / a1[11];
            *&v133 = v93;
            *&v126 = 0;
            __str = 0uLL;
            sub_240B2860C(&__str, &v133, &v133 + 4, 1uLL);
          }

          sub_240B2877C(&__str, 2);
          sub_240B2890C(&__str, v118);
        }

        else
        {
          if (v4 != 16)
          {
            LODWORD(v134) = 0;
            v133 = *"ff&@";
            *&v126 = 0;
            __str = 0uLL;
            sub_240B2860C(&__str, &v133, &v134 + 4, 5uLL);
          }

          sub_240B2877C(&__str, 1);
          sub_240B2890C(&__str, v118);
        }

        if (__str)
        {
          *(&__str + 1) = __str;
          operator delete(__str);
        }

        sub_240B26CA8(v118, &v114, &v113);
        v96 = *a1;
        v98 = v113;
        v97 = v114;
        if (v96 == 1)
        {
          v99 = "kTRC";
        }

        else
        {
          sub_240B26D28("rTRC", v114, v113, v120, &__p);
          sub_240B26D28("gTRC", v97, v98, v120, &__p);
          v99 = "bTRC";
        }

        sub_240B26D28(v99, v97, v98, v120, &__p);
        v100 = __p;
        v101 = v116;
        v102 = v116 - __p;
        sub_240B26894((v116 - __p) >> 3, 0, v120);
        if (v101 != v100)
        {
          v104 = v122[0];
          v103 = v122[1];
          if ((v102 >> 3) <= 1)
          {
            v105 = 1;
          }

          else
          {
            v105 = v102 >> 3;
          }

          v106 = 8;
          do
          {
            v107 = *v100;
            v100 += 2;
            sub_240B26894(v107 + v103 + LODWORD(v120[1]) - (v104 + LODWORD(v120[0])), v106, v120);
            v106 += 12;
            --v105;
          }

          while (v105);
        }

        v111 = *v118;
        v112 = *v120;
        v108 = vaddq_s64(vaddq_s64(*v122, *v120), *v118);
        sub_240B26894(vsubq_s64(vdupq_laneq_s64(v108, 1), v108).i32[0], 0, v122);
        sub_240B28A14(a2, v122[0], v122[1], v122[1] - v122[0]);
        sub_240B28B3C(a2, *(a2 + 8), v112, *(&v112 + 1), *(&v112 + 1) - v112);
        sub_240B28B3C(a2, *(a2 + 8), v111, *(&v111 + 1), *(&v111 + 1) - v111);
        v133 = 0uLL;
        *&v134 = 0;
        sub_240B28D90(&v133, *a2, *(a2 + 8), *(a2 + 8) - *a2);
        v109 = v133;
        if (*(&v133 + 1) - v133 >= 0x44uLL)
        {
          *(v133 + 44) = 0;
          v109[16] = 0;
        }

        sub_240C0B098(&v133, &v136);
        *(*a2 + 84) = *&v136.__r_.__value_.__l.__data_;
        if (v109)
        {
          operator delete(v109);
        }

        v2 = 0;
      }

      goto LABEL_221;
    }

    v89 = a1[2];
    if (v89 != 0.0)
    {
      v90 = a1[1];
      v91 = v89;
      v2 = sub_240C09C64(&__str, v90, v91);
      if (v2)
      {
        goto LABEL_221;
      }

      v133 = __str;
      v134 = v126;
      v135 = v127;
      v2 = sub_240B27174(&v133, v118);
      if (v2)
      {
        goto LABEL_221;
      }

      sub_240B26CA8(v118, &v114, &v113);
      sub_240B26D28("chad", v114, v113, v120, &__p);
      v92 = *a1;
      if (*a1)
      {
        goto LABEL_203;
      }

      sub_240B27240(a1, v118, &v114, &v113, v120, &__p);
      v110 = sub_240C09E9C(&__str, a1[4], a1[5], a1[6], a1[7], a1[8], a1[9], a1[1], a1[2]);
      if (v110)
      {
        v2 = v110;
        goto LABEL_221;
      }

      *&v133 = __PAIR64__(HIDWORD(__str), __str);
      DWORD2(v133) = DWORD2(v126);
      v136.__r_.__value_.__r.__words[0] = __PAIR64__(v126, DWORD1(__str));
      LODWORD(v136.__r_.__value_.__r.__words[1]) = HIDWORD(v126);
      v132[0] = DWORD2(__str);
      v132[1] = DWORD1(v126);
      v132[2] = v127;
      if (!sub_240B26E70(&v133, v118))
      {
        sub_240B26CA8(v118, &v114, &v113);
        sub_240B26D28("rXYZ", v114, v113, v120, &__p);
        if (!sub_240B26E70(&v136, v118))
        {
          sub_240B26CA8(v118, &v114, &v113);
          sub_240B26D28("gXYZ", v114, v113, v120, &__p);
          if (!sub_240B26E70(v132, v118))
          {
            sub_240B26CA8(v118, &v114, &v113);
            sub_240B26D28("bXYZ", v114, v113, v120, &__p);
            v92 = *a1;
LABEL_203:
            if (v92 == 2)
            {
              sub_240C09F70(v118);
            }

            goto LABEL_196;
          }
        }
      }
    }

    goto LABEL_220;
  }

LABEL_221:
  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v124.__r_.__value_.__l.__data_);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v118[0])
  {
    operator delete(v118[0]);
  }

LABEL_227:
  if (v120[0])
  {
    operator delete(v120[0]);
  }

  if (v122[0])
  {
    operator delete(v122[0]);
  }

  v94 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_240C09830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a37 < 0)
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

  if (a25)
  {
    operator delete(a25);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_240C09A04(uint64_t *a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  v5 = sub_240AC75A8(a1, a2, a3);
  v6 = *a4;
  *a4 = v5;
  if (v6)
  {
    sub_240AC6C8C(v6);
    v5 = *a4;
  }

  return v5 == 0;
}

void sub_240C09A48(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a2;
  v7 = a1 + 31;
  sub_240B245C8(a3, ((a1 + 31) & 0xFFFFFFFFFFFFFFE0) * a2 + 32);
  v8 = *a3;
  v9 = *a4;
  *(a4 + 8) = *a4;
  if (v6 > (*(a4 + 16) - v9) >> 3)
  {
    if (!(v6 >> 61))
    {
      sub_240B4341C(v6);
    }

LABEL_20:
    sub_240B228BC();
  }

  if (v6)
  {
    v10 = 4 * ((((v8 + 127) & 0xFFFFFFFFFFFFFF80) - v8) >> 2);
    v11 = (4 * v7) & 0xFFFFFFFFFFFFFF80;
    do
    {
      v12 = *a3 + v10;
      v13 = *(a4 + 16);
      if (v9 >= v13)
      {
        v14 = (v9 - *a4) >> 3;
        if ((v14 + 1) >> 61)
        {
          goto LABEL_20;
        }

        v15 = v13 - *a4;
        v16 = v15 >> 2;
        if (v15 >> 2 <= (v14 + 1))
        {
          v16 = v14 + 1;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          v17 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v16;
        }

        if (v17)
        {
          sub_240B4341C(v17);
        }

        v18 = (8 * v14);
        *v18 = v12;
        v9 = (8 * v14 + 8);
        v19 = *(a4 + 8) - *a4;
        v20 = v18 - v19;
        memcpy(v18 - v19, *a4, v19);
        v21 = *a4;
        *a4 = v20;
        *(a4 + 8) = v9;
        *(a4 + 16) = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v9++ = v12;
      }

      *(a4 + 8) = v9;
      v10 += v11;
      --v6;
    }

    while (v6);
  }
}

void *sub_240C09BDC(void *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[16];
    if (v3)
    {
      v2[17] = v3;
      operator delete(v3);
    }

    v4 = v2[13];
    if (v4)
    {
      v2[14] = v4;
      operator delete(v4);
    }

    v5 = v2[10];
    if (v5)
    {
      v2[11] = v5;
      operator delete(v5);
    }

    v6 = v2[7];
    if (v6)
    {
      v2[8] = v6;
      operator delete(v6);
    }

    MEMORY[0x245CCE590](v2, 0x1080C40B453349ALL);
  }

  return a1;
}

uint64_t sub_240C09C64(uint64_t a1, float a2, float a3)
{
  v36 = *MEMORY[0x277D85DE8];
  result = 1;
  if (a3 <= 1.0 && a2 >= 0.0 && a2 <= 1.0 && a3 > 0.0)
  {
    v34[0] = a2 / a3;
    v34[1] = 1.0;
    v35 = ((1.0 - a2) - a3) / a3;
    v6 = COERCE_UNSIGNED_INT(fabs(v35)) > 0x7F7FFFFF;
    if (COERCE_INT(fabs(a2 / a3)) <= 2139095039 && !v6)
    {
      v7 = 0;
      v8 = &unk_240C876EC;
      do
      {
        v9 = 0;
        v10 = 0.0;
        do
        {
          v10 = v10 + (*&v8[v9 * 4] * v34[v9]);
          ++v9;
        }

        while (v9 != 3);
        v11 = v10;
        *(&v31 + v7++) = v11;
        v8 += 12;
      }

      while (v7 != 3);
      v12 = 0;
      v13 = &unk_240C876EC;
      do
      {
        v14 = 0;
        v15 = 0.0;
        do
        {
          v15 = v15 + (*&v13[v14 * 4] * *&dword_240C876E0[v14]);
          ++v14;
        }

        while (v14 != 3);
        v16 = v15;
        *(&v28 + v12++) = v16;
        v13 += 12;
      }

      while (v12 != 3);
      result = 1;
      if (v31 != 0.0 && v32 != 0.0 && v33 != 0.0)
      {
        v21 = v28 / v31;
        v22 = 0;
        v23 = 0;
        v24 = v29 / v32;
        v25 = 0;
        v26 = 0;
        v27 = v30 / v33;
        v17 = COERCE_UNSIGNED_INT(fabs(v29 / v32)) < 0x7F800000;
        v18 = COERCE_UNSIGNED_INT(fabs(v30 / v33)) < 0x7F800000;
        if (COERCE_INT(fabs(v28 / v31)) <= 2139095039 && v17 && v18)
        {
          sub_240B2977C(&v21, &unk_240C876EC, v20);
          sub_240B2977C(&unk_240C87710, v20, a1);
          result = 0;
        }
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_240C09E9C(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v25 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  if (sub_240B295BC(v24, v10, v11, v12, v13, v14, v15, v16, v17) || sub_240C09C64(v23, v16, v17))
  {
    result = 1;
  }

  else
  {
    sub_240B2977C(v23, v24, v21);
    result = 0;
    v20 = v21[1];
    *a1 = v21[0];
    *(a1 + 16) = v20;
    *(a1 + 32) = v22;
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240C09F70(uint64_t a1)
{
  __p[6] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  if (v3 <= 0xFFFFFFFFFFFFFFFBLL)
  {
    sub_240B26918(a1, 4uLL);
    v2 = *a1;
  }

  *&v2[v3] = 541213037;
  sub_240B26894(0, *(a1 + 8) - *a1, a1);
  v4 = *a1;
  v5 = *(a1 + 8) - *a1;
  if (v5 != -1)
  {
    sub_240B26918(a1, 1uLL);
    v4 = *a1;
  }

  v4[v5] = 3;
  v6 = *a1;
  v7 = *(a1 + 8) - *a1;
  if (v7 != -1)
  {
    sub_240B26918(a1, 1uLL);
    v6 = *a1;
  }

  v6[v7] = 3;
  sub_240B29200(0, *(a1 + 8) - *a1, a1);
  sub_240B26894(32, *(a1 + 8) - *a1, a1);
  sub_240B26894(244, *(a1 + 8) - *a1, a1);
  sub_240B26894(148, *(a1 + 8) - *a1, a1);
  sub_240B26894(80, *(a1 + 8) - *a1, a1);
  sub_240B26894(32, *(a1 + 8) - *a1, a1);
  v8 = 1065353216;
  memset(__p, 0, 24);
  sub_240B2860C(__p, &v8, &v9, 1uLL);
}

void sub_240C0A4E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_240C0A548(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  if (v3 <= 0xFFFFFFFFFFFFFFFBLL)
  {
    sub_240B26918(a1, 4uLL);
    v2 = *a1;
  }

  *&v2[v3] = 541147757;
  sub_240B26894(0, *(a1 + 8) - *a1, a1);
  v4 = *a1;
  v5 = *(a1 + 8) - *a1;
  if (v5 != -1)
  {
    sub_240B26918(a1, 1uLL);
    v4 = *a1;
  }

  v4[v5] = 3;
  v6 = *a1;
  v7 = *(a1 + 8) - *a1;
  if (v7 != -1)
  {
    sub_240B26918(a1, 1uLL);
    v6 = *a1;
  }

  v6[v7] = 3;
  sub_240B29200(0, *(a1 + 8) - *a1, a1);
  sub_240B26894(32, *(a1 + 8) - *a1, a1);
  sub_240B26894(0, *(a1 + 8) - *a1, a1);
  sub_240B26894(0, *(a1 + 8) - *a1, a1);
  sub_240B26894(0, *(a1 + 8) - *a1, a1);
  sub_240B26894(0, *(a1 + 8) - *a1, a1);
  v8 = 1065353216;
  memset(__p, 0, sizeof(__p));
  sub_240B2860C(__p, &v8, __p, 1uLL);
}

void sub_240C0A768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240C0A7A0(uint64_t a1, uint64_t a2)
{
  v146 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a2 + 8) - *a2;
  if (v5 <= 0xFFFFFFFFFFFFFFFBLL)
  {
    sub_240B26918(a2, 4uLL);
    v4 = *a2;
  }

  *&v4[v5] = 829711981;
  sub_240B26894(0, *(a2 + 8) - *a2, a2);
  v6 = *a2;
  v7 = *(a2 + 8) - *a2;
  if (v7 != -1)
  {
    sub_240B26918(a2, 1uLL);
    v6 = *a2;
  }

  v6[v7] = 3;
  v8 = *a2;
  v9 = *(a2 + 8) - *a2;
  if (v9 != -1)
  {
    sub_240B26918(a2, 1uLL);
    v8 = *a2;
  }

  v8[v9] = 3;
  v10 = *a2;
  v11 = *(a2 + 8) - *a2;
  if (v11 != -1)
  {
    sub_240B26918(a2, 1uLL);
    v10 = *a2;
  }

  v10[v11] = 9;
  v12 = *a2;
  v13 = *(a2 + 8) - *a2;
  if (v13 != -1)
  {
    sub_240B26918(a2, 1uLL);
    v12 = *a2;
  }

  v14 = 0;
  v12[v13] = 0;
  do
  {
    v15 = 3;
    do
    {
      if (v14 + v15 == 3)
      {
        v16 = 1.0;
      }

      else
      {
        v16 = 0.0;
      }

      sub_240B26894(((v16 * 65536.0) + 0.5), *(a2 + 8) - *a2, a2);
      --v15;
    }

    while (v15);
    ++v14;
  }

  while (v14 != 3);
  for (i = 0; i != 3; ++i)
  {
    for (j = 0; j != 256; ++j)
    {
      v19 = *a2;
      v20 = *(a2 + 8) - *a2;
      if (v20 != -1)
      {
        sub_240B26918(a2, 1uLL);
        v19 = *a2;
      }

      v19[v20] = j;
    }
  }

  v21 = 0;
  v22 = &v140 + 1;
  v23 = -0.8359375;
LABEL_25:
  v122 = v21;
  v24 = vcvts_n_f32_u64(v21, 3uLL);
  v25 = pow(v24, 0.0126833135);
  v26 = v25 + v23;
  if (v25 + v23 < 0.0)
  {
    v26 = 0.0;
  }

  v27 = pow(v26 / (v25 * -18.6875 + 18.8515625), 6.27739464);
  v28 = 0;
  *&v27 = v27;
  v29 = fabsf(*&v27);
  v125 = v24;
  if (v24 == 0.0)
  {
    v29 = 0.0;
  }

  *&v124 = v29;
LABEL_30:
  v123 = v28;
  v30 = v23;
  v31 = vcvts_n_f32_u64(v28, 3uLL);
  v32 = pow(v31, 0.0126833135);
  v33 = v30;
  v34 = v32 + v30;
  if (v32 + v30 < 0.0)
  {
    v34 = 0.0;
  }

  v35 = pow(v34 / (v32 * -18.6875 + 18.8515625), 6.27739464);
  v36 = 0;
  *&v35 = v35;
  v37 = fabsf(*&v35);
  v126 = v31;
  if (v31 == 0.0)
  {
    v37 = 0.0;
  }

  *(&v124 + 1) = v37;
  while (1)
  {
    v127 = v36;
    v38 = vcvts_n_f32_u64(v36, 3uLL);
    *v130 = v125;
    *&v130[1] = v126;
    *&v130[2] = v38;
    v39 = *(a1 + 32);
    v40 = *(a1 + 40);
    v41 = *(a1 + 48);
    v42 = *(a1 + 56);
    v43 = *(a1 + 64);
    v44 = *(a1 + 72);
    v45 = *(a1 + 8);
    v46 = *(a1 + 16);
    result = sub_240B295BC(v142, v39, v40, v41, v42, v43, v44, v45, v46);
    if (result)
    {
      break;
    }

    v51 = v143;
    v50 = v144;
    v52 = v145;
    if (*(a1 + 80) == 16)
    {
      v140 = v124;
      v53 = 0.0;
      if (v38 != 0.0)
      {
        v54 = pow(v38, 0.0126833135);
        v55 = v54 + v33;
        if (v54 + v33 < 0.0)
        {
          v55 = 0.0;
        }

        v56 = pow(v55 / (v54 * -18.6875 + 18.8515625), 6.27739464);
        v53 = fabsf(v56);
      }

      v141 = v53;
      v134 = xmmword_240C114E0;
      v135 = __PAIR64__(LODWORD(v50), LODWORD(v51));
      v136 = v52;
      v137 = xmmword_240C114F0;
      v57.i64[1] = 0x3FD6B4FF3ECEC3F3;
      v138 = xmmword_240C11500;
      v57.i64[0] = 0x3B83126F42200000;
      v139 = 0x3B83126F42200000;
      sub_240B292F0(&v134, &v140, v22, &v141, v57);
      v59 = *(&v140 + 1);
      v58 = *&v140;
      v60 = v141;
    }

    else
    {
      for (k = 0; k != 3; ++k)
      {
        v49.i32[0] = v130[k];
        v48.i32[0] = 0;
        if (*v49.i32 != 0.0)
        {
          v62 = fabs(*v49.i32);
          if (v62 <= 0.5)
          {
            *v48.i64 = *v49.i32 * *v49.i32;
            v63 = 0.333333333;
          }

          else
          {
            v128 = v49;
            *v48.i64 = exp((v62 + -0.559910729) * 5.59181631);
            v49 = v128;
            *v48.i64 = *v48.i64 + 0.28466892;
            v63 = 0.0833333333;
          }

          *v48.i64 = *v48.i64 * v63;
          *v48.i32 = *v48.i64;
          v64.i64[0] = 0x8000000080000000;
          v64.i64[1] = 0x8000000080000000;
          v48 = vbslq_s8(v64, v48, v49);
        }

        *(&v140 + k * 4) = v48.i32[0];
      }

      v65 = v140;
      v66 = v141;
      v67 = powf(((v50 * *(&v140 + 1)) + (v51 * *&v140)) + (v52 * v141), -0.18186);
      if (v67 <= 1000000000.0)
      {
        v68 = v67;
      }

      else
      {
        v68 = 1000000000.0;
      }

      v58 = *&v65 * v68;
      v59 = *(&v65 + 1) * v68;
      *&v140 = *&v65 * v68;
      *(&v140 + 1) = *(&v65 + 1) * v68;
      v60 = v66 * v68;
      v141 = v60;
      v33 = -0.8359375;
    }

    v69 = 0;
    v70 = ((v50 * v59) + (v51 * v58)) + (v52 * v60);
    *&v134 = &v140;
    *(&v134 + 1) = v22;
    v135 = &v141;
    v71 = 0.0;
    v72 = 0.0;
    do
    {
      v73 = *(&v134 + v69);
      v74 = *v73 - v70;
      v75 = 1.0 / v74;
      if (v74 == 0.0)
      {
        v75 = 1.0;
      }

      v76 = *v73 * v75;
      if (v72 < v76 && v74 < 0.0)
      {
        v72 = *v73 * v75;
      }

      v78 = v76 - v75;
      if (v74 <= 0.0)
      {
        v78 = v72;
      }

      if (v71 < v78)
      {
        v71 = v78;
      }

      v69 += 8;
    }

    while (v69 != 24);
    v79 = 0;
    v80 = v71 + ((v72 - v71) * 0.3);
    if (v80 <= 1.0)
    {
      v81 = v80;
    }

    else
    {
      v81 = 1.0;
    }

    if (v80 >= 0.0)
    {
      v82 = v81;
    }

    else
    {
      v82 = 0.0;
    }

    *&v134 = &v140;
    *(&v134 + 1) = v22;
    v135 = &v141;
    do
    {
      **(&v134 + v79) = **(&v134 + v79) + (v82 * (v70 - **(&v134 + v79)));
      v79 += 8;
    }

    while (v79 != 24);
    LODWORD(v134) = 1065353216;
    *(&v134 + 4) = v140;
    *(&v134 + 3) = v141;
    v83 = &v134;
    v84 = 1.0;
    for (m = 4; m != 16; m += 4)
    {
      if (v84 < *(&v134 + m))
      {
        v84 = *(&v134 + m);
        v83 = (&v134 + m);
      }
    }

    v86 = 0;
    v87 = *v83;
    *&v134 = &v140;
    *(&v134 + 1) = v22;
    v135 = &v141;
    v88 = 1.0 / v87;
    do
    {
      **(&v134 + v86) = v88 * **(&v134 + v86);
      v86 += 8;
    }

    while (v86 != 24);
    v89 = *(a1 + 8);
    v90 = *(a1 + 16);
    if (sub_240C09C64(&v134, v89, v90))
    {
      result = 1;
      break;
    }

    v91 = v133;
    sub_240B2977C(&v134, v142, v133);
    v92 = 0;
    v132 = 0.0;
    v131 = 0;
    do
    {
      v93 = 0;
      v94 = *(&v131 + v92);
      do
      {
        v94 = v94 + (*(&v140 + v93) * *&v91[v93]);
        v93 += 4;
      }

      while (v93 != 12);
      *(&v131 + v92++) = v94;
      v91 += 12;
    }

    while (v92 != 3);
    v95 = *&v131 / 0.96421;
    if ((*&v131 / 0.96421) <= 0.0088565)
    {
      v96 = (v95 * 7.787) + 0.13793;
    }

    else
    {
      v96 = cbrtf(v95);
    }

    if (*(&v131 + 1) <= 0.0088565)
    {
      v97 = (*(&v131 + 1) * 7.787) + 0.13793;
    }

    else
    {
      v97 = cbrtf(*(&v131 + 1));
    }

    v98 = v22;
    v99 = a1;
    v100 = v132 / 0.82519;
    if ((v132 / 0.82519) <= 0.0088565)
    {
      v101 = (v100 * 7.787) + 0.13793;
    }

    else
    {
      v101 = cbrtf(v100);
    }

    v102 = 0;
    v103 = (v97 * 1.16) + -0.16;
    if (v103 <= 1.0)
    {
      v104 = (v97 * 1.16) + -0.16;
    }

    else
    {
      v104 = 1.0;
    }

    if (v103 >= 0.0)
    {
      v105 = v104;
    }

    else
    {
      v105 = 0.0;
    }

    v129[0] = ((v105 * 255.0) + 0.5);
    v106 = (v96 - v97) * 500.0;
    if (v106 <= 127.0)
    {
      v107 = (v96 - v97) * 500.0;
    }

    else
    {
      v107 = 127.0;
    }

    v108 = v107 + 128.5;
    if (v106 >= -128.0)
    {
      v109 = v108;
    }

    else
    {
      v109 = 0.5;
    }

    v129[1] = v109;
    v110 = (v97 - v101) * 200.0;
    if (v110 <= 127.0)
    {
      v111 = v110;
    }

    else
    {
      v111 = 127.0;
    }

    v112 = v111 + 128.5;
    if (v110 >= -128.0)
    {
      v113 = v112;
    }

    else
    {
      v113 = 0.5;
    }

    v129[2] = v113;
    do
    {
      v114 = v129[v102];
      v115 = *a2;
      v116 = *(a2 + 8) - *a2;
      if (v116 != -1)
      {
        sub_240B26918(a2, 1uLL);
        v115 = *a2;
      }

      v115[v116] = v114;
      ++v102;
    }

    while (v102 != 3);
    v36 = v127 + 1;
    a1 = v99;
    v22 = v98;
    if (v127 == 8)
    {
      v28 = v123 + 1;
      v23 = v33;
      if (v123 != 8)
      {
        goto LABEL_30;
      }

      v21 = v122 + 1;
      if (v122 == 8)
      {
        for (n = 0; n != 3; ++n)
        {
          for (ii = 0; ii != 256; ++ii)
          {
            v119 = *a2;
            v120 = *(a2 + 8) - *a2;
            if (v120 != -1)
            {
              sub_240B26918(a2, 1uLL);
              v119 = *a2;
            }

            v119[v120] = ii;
          }

          result = 0;
        }

        break;
      }

      goto LABEL_25;
    }
  }

  v121 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240C0B098(uint64_t *a1, int *a2)
{
  v29 = 0;
  v30 = 0;
  v31 = 0;
  sub_240B28D90(&v29, *a1, a1[1], a1[1] - *a1);
  v28 = 0x80;
  sub_240B290C0(&v29, &v28);
  v4 = (56 - (v30 - v29)) & 0x3F;
  v5 = v4 + v30 - v29;
  v28 = 0;
  if (v30 - v29 >= v5)
  {
    if (v30 - v29 > v5)
    {
      v30 += v4;
    }
  }

  else
  {
    sub_240B26750(&v29, v4, &v28);
  }

  v6 = -8;
  do
  {
    v6 += 8;
    v28 = (8 * (a1[1] - *a1)) >> v6;
    sub_240B290C0(&v29, &v28);
  }

  while (v6 < 0x38);
  v7 = -271733879;
  v8 = -1732584194;
  v9 = 1732584193;
  v10 = 271733878;
  v11 = v29;
  if (v30 != v29)
  {
    v12 = 0;
    do
    {
      v13 = 0;
      v14 = 0;
      v15 = 1;
      v16 = 5;
      v17 = v10;
      v18 = v8;
      v19 = v7;
      v20 = v9;
      do
      {
        v21 = v20;
        v22 = v19;
        v23 = v18;
        v20 = v17;
        v24 = (v19 | ~v17) ^ v18;
        v25 = v13 & 0xF;
        v26 = v18 ^ v22 ^ v20;
        if (v14 <= 0x2F)
        {
          v24 = v26;
          v25 = v16 & 0xF;
        }

        if (v14 <= 0x1F)
        {
          v24 = v20 & v22 | v23 & ~v20;
          v25 = v15 & 0xF;
        }

        if (v14 <= 0xF)
        {
          v25 = v14;
        }

        v27 = *&v29[v12 | (4 * v25)];
        if (v14 <= 0xF)
        {
          v24 = v20 & ~v22 | v23 & v22;
        }

        v19 = __ROR4__(v24 + v21 + dword_240C87808[v14] + v27, -byte_240C87908[4 * v14]) + v22;
        ++v14;
        v13 += 7;
        v16 += 3;
        v15 += 5;
        v17 = v23;
        v18 = v22;
      }

      while (v14 != 64);
      v9 += v20;
      v7 += v19;
      v8 += v22;
      v10 += v23;
      v12 += 64;
    }

    while (v12 < v30 - v29);
  }

  *a2 = v9;
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v10;
  if (v11)
  {

    operator delete(v11);
  }
}

void sub_240C0B32C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240C0B350(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = 0;
  v112[2] = *MEMORY[0x277D85DE8];
  if (!a4 || !a5)
  {
    goto LABEL_8;
  }

  *a5 = 0;
  *a4 = 3;
  *(a4 + 80) = 2;
  if (!a3)
  {
    goto LABEL_7;
  }

  v92 = 0x100000001;
  v93 = 1;
  v94 = 1;
  v97 = 0;
  v95 = 0;
  memset(v96, 0, 21);
  v98 = 0xD00000000;
  v99 = 0u;
  v100 = 0u;
  v10 = sub_240C079C4();
  v11 = sub_240AC75A8(v10, a2, a3);
  v91 = v11;
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = v11;
  if (*(v11 + 88) >= 4u)
  {
    sub_240AC6C8C(v11);
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v93 = *(v11 + 88);
  v15 = *(v11 + 8);
  if (v15)
  {
    v16 = &qword_27E516570;
    while (1)
    {
      v16 = *v16;
      if (!v16)
      {
        break;
      }

      if (v16 == v15)
      {
        goto LABEL_16;
      }
    }

    v16 = &unk_278CB2F00;
  }

  else
  {
    v16 = &unk_278CB2F00;
  }

LABEL_16:
  v17 = v16[16];
  if (!v17)
  {
    v17 = &off_281500BF0;
  }

  v18 = v17[2];
  if (v18)
  {
    v19 = v12[468];
    if (!v18())
    {
      goto LABEL_115;
    }
  }

  *&v87 = 0;
  v85 = 0u;
  v86 = 0u;
  v84 = 0u;
  v20 = *(v12 + 33);
  if (v20 < 1)
  {
    goto LABEL_101;
  }

  v21 = 1667851120;
  do
  {
    v22 = 0;
    while (*(v12 + v22 + 34) != v21)
    {
      if (v20 == ++v22)
      {
        goto LABEL_101;
      }
    }

    v21 = *(v12 + v22 + 134);
  }

  while (v21);
  v23 = &v12[v22];
  v24 = v23[267];
  v25 = v12 + v22;
  if (!v24)
  {
    v30 = v25[334];
    v31 = v25[234];
    if (v31 >= 0xC)
    {
      LODWORD(v27) = 12;
    }

    else
    {
      LODWORD(v27) = v31;
    }

    if ((*(*v12 + 288))() && (*(*v12 + 280))())
    {
      v32 = v12[1];
      if (v32)
      {
        v29 = &qword_27E516570;
        while (1)
        {
          v29 = *v29;
          if (!v29)
          {
            goto LABEL_53;
          }

          if (v29 == v32)
          {
            goto LABEL_54;
          }
        }
      }

LABEL_52:
      v29 = &unk_278CB2F00;
      goto LABEL_54;
    }

LABEL_101:
    v58 = v12[1];
    if (v58)
    {
      goto LABEL_102;
    }

    goto LABEL_110;
  }

  if (v25[434])
  {
    v26 = v25[234];
    if (v26 >= 0xC)
    {
      v27 = 12;
    }

    else
    {
      v27 = v26;
    }

    memmove(__dst, v24, v27);
    v28 = v12[1];
    if (v28)
    {
      v29 = &qword_27E516570;
      while (1)
      {
        v29 = *v29;
        if (!v29)
        {
          break;
        }

        if (v29 == v28)
        {
          goto LABEL_54;
        }
      }

LABEL_53:
      v29 = &unk_278CB2F00;
LABEL_54:
      v35 = v29[16];
      if (!v35)
      {
        v35 = &off_281500BF0;
      }

      goto LABEL_56;
    }

    goto LABEL_52;
  }

  v33 = v12[1];
  if (v33)
  {
    v34 = &qword_27E516570;
    while (1)
    {
      v34 = *v34;
      if (!v34)
      {
        break;
      }

      if (v34 == v33)
      {
        goto LABEL_69;
      }
    }

    v34 = &unk_278CB2F00;
  }

  else
  {
    v34 = &unk_278CB2F00;
  }

LABEL_69:
  v39 = v34[16];
  if (!v39)
  {
    v39 = &off_281500BF0;
  }

  v40 = v39[3];
  if (v40)
  {
    v41 = v12[468];
    v40();
  }

  v42 = sub_240AC7924(v12, 0x63696370u);
  v43 = v12[1];
  if (v43)
  {
    v44 = &qword_27E516570;
    while (1)
    {
      v44 = *v44;
      if (!v44)
      {
        break;
      }

      if (v44 == v43)
      {
        goto LABEL_80;
      }
    }

    v44 = &unk_278CB2F00;
  }

  else
  {
    v44 = &unk_278CB2F00;
  }

LABEL_80:
  v45 = v44[16];
  if (!v45)
  {
    v45 = &off_281500BF0;
  }

  v46 = v45[2];
  if (v46)
  {
    v47 = v12[468];
    if (!v46())
    {
      goto LABEL_115;
    }
  }

  if (!v42)
  {
    goto LABEL_101;
  }

  v48 = sub_240AC5E8C(v12[1], __dst, 12, "w");
  if (!v48)
  {
    goto LABEL_101;
  }

  v49 = v48;
  v50 = v23[367];
  v81 = v12[1];
  v51 = sub_240AE2040(v81, 1667851120);
  if (!v51)
  {
    goto LABEL_100;
  }

  if (!v50)
  {
    v58 = v81;
    if (v81)
    {
LABEL_102:
      v59 = &qword_27E516570;
      while (1)
      {
        v59 = *v59;
        if (!v59)
        {
          break;
        }

        if (v59 == v58)
        {
          goto LABEL_111;
        }
      }

      v59 = &unk_278CB2F00;
      goto LABEL_111;
    }

LABEL_110:
    v59 = &unk_278CB2F00;
LABEL_111:
    v60 = v59[16];
    if (!v60)
    {
      v60 = &off_281500BF0;
    }

    v61 = v60[3];
    if (v61)
    {
      v62 = v12[468];
      v61();
    }

    goto LABEL_115;
  }

  v52 = v51;
  v53 = *v50;
  v54 = *(v50 + 16);
  v55 = *(v50 + 32);
  *&v87 = *(v50 + 48);
  v85 = v54;
  v86 = v55;
  v84 = v53;
  *(&v86 + 1) = v12[1];
  LODWORD(v87) = *(v12 + 18);
  *&v107 = bswap32(*v50);
  if (!(*(v49 + 312))(v49, 8, &v107) || !(v85)(&v84, v49, v42, *v52))
  {
LABEL_100:
    (*(v49 + 296))(v49);
    goto LABEL_101;
  }

  LODWORD(v27) = (*(v49 + 304))(v49);
  (*(v49 + 296))(v49);
  v56 = v12[1];
  if (v56)
  {
    v57 = &qword_27E516570;
    while (1)
    {
      v57 = *v57;
      if (!v57)
      {
        break;
      }

      if (v57 == v56)
      {
        goto LABEL_138;
      }
    }

    v57 = &unk_278CB2F00;
  }

  else
  {
    v57 = &unk_278CB2F00;
  }

LABEL_138:
  v80 = v57[16];
  v35 = &off_281500BF0;
  if (v80)
  {
    v35 = v80;
  }

LABEL_56:
  v36 = v35[3];
  if (v36)
  {
    v37 = v12[468];
    v36();
  }

  if (v27 == 12 && !v105 && v106 == 1 && v104 <= 0x12u && ((1 << v104) & 0x72102) != 0)
  {
    v38 = v103;
    if (v103 > 0xAu)
    {
      if (v103 != 11)
      {
        if (v103 != 12)
        {
          goto LABEL_115;
        }

        v97 = 0;
        HIDWORD(v98) = v104;
        LODWORD(v96[2]) = 0;
        LODWORD(v92) = 1;
        v38 = 11;
LABEL_108:
        HIDWORD(v92) = v38;
LABEL_122:
        sub_240B250A4(&v84, &v92);
        v66 = v89;
        *(a4 + 64) = v88;
        *(a4 + 80) = v66;
        *(a4 + 96) = v90;
        v67 = v85;
        *a4 = v84;
        *(a4 + 16) = v67;
        v68 = v87;
        *(a4 + 32) = v86;
        *(a4 + 48) = v68;
        sub_240AC6C8C(v12);
        v5 = 1;
        goto LABEL_8;
      }
    }

    else if (v103 != 1 && v103 != 9)
    {
      goto LABEL_115;
    }

    LODWORD(v96[2]) = 0;
    v97 = 0;
    HIDWORD(v98) = v104;
    if (v103 == 11)
    {
      LODWORD(v92) = 11;
    }

    else
    {
      LODWORD(v92) = 1;
    }

    goto LABEL_108;
  }

LABEL_115:
  v63 = 0;
  v64 = *(v12 + 20);
  if (v64 != 1129142603 && v64 != 1380401696)
  {
    if (v64 == 1196573017)
    {
      LODWORD(v96[2]) = 1;
      v65 = 4390920;
      goto LABEL_123;
    }

    v63 = 3;
  }

  LODWORD(v96[2]) = v63;
  v65 = 4456472;
  if (v64 == 1129142603)
  {
    *a5 = 1;
    goto LABEL_122;
  }

LABEL_123:
  v69 = sub_240AC7924(v12, 0x77747074u);
  if (v69 && (v70 = v69, !sub_240AC7924(v12, 0x63686164u)))
  {
    v75 = *v70;
    *&v85 = *(v70 + 16);
    v84 = v75;
  }

  else
  {
    *&v85 = 0x3FF0000000000000;
    v84 = xmmword_240C87668;
    v71 = sub_240AE24E4(v10);
    if (v71)
    {
      v72 = v71;
      v112[0] = v12;
      v112[1] = v71;
      v110 = 0;
      v111 = 0x300000003;
      v109[0] = 0;
      v109[1] = 0;
      v73 = sub_240AE2A1C(v10, 2, v112, &v110, &v111, v109, v65, 4784152, 1280);
      if (v73)
      {
        v74 = v73;
        v108 = 0x3FF0000000000000;
        v107 = xmmword_240C87680;
        v101[0] = 0;
        v101[1] = 0x100000001;
        (*(v73 + 8))(v73, &v107, &v84, 1, 1, v101);
        sub_240AE2944(v74);
      }

      sub_240AC6C8C(v72);
    }
  }

  v82 = v84;
  v83 = v85;
  v84 = vmulq_n_f64(v84, 1.0 / (vaddvq_f64(v84) + *&v85));
  if (sub_240B53038(&v92, v84.f64) || sub_240C0BBD4(v10, &v91, v82.f64, &v92))
  {
    v5 = 0;
  }

  else
  {
    sub_240C0BE88(v10, &v91, &v92);
    sub_240B250A4(&v84, &v92);
    v77 = v89;
    *(a4 + 64) = v88;
    *(a4 + 80) = v77;
    *(a4 + 96) = v90;
    v78 = v85;
    *a4 = v84;
    *(a4 + 16) = v78;
    v79 = v87;
    v5 = 1;
    *(a4 + 32) = v86;
    *(a4 + 48) = v79;
  }

  v76 = v95;
  sub_240AC6C8C(v12);
  if (v76)
  {
    v96[0] = v76;
    operator delete(v76);
  }

LABEL_8:
  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_240C0BBB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p)
{
  sub_240AC6C8C(v31);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_240C0BBD4(uint64_t *a1, uint64_t **a2, double *a3, unsigned int *a4)
{
  v37[3] = *MEMORY[0x277D85DE8];
  if (a4[10] - 3 > 0xFFFFFFFD || ((v6 = *(*a2 + 20), v6 != 1129142603) ? (v7 = v6 == 1380401696) : (v7 = 1), !v7 ? (v8 = v6 == 1196573017) : (v8 = 1), !v8))
  {
    result = 0;
    goto LABEL_21;
  }

  v11 = sub_240AC7924(*a2, 0x7258595Au);
  v12 = sub_240AC7924(*a2, 0x6758595Au);
  v13 = sub_240AC7924(*a2, 0x6258595Au);
  if (!v11 || !v12 || (v14 = v13) == 0)
  {
    v15 = sub_240AE24E4(a1);
    if (v15)
    {
      v16 = v15;
      *&v28.f64[0] = *a2;
      *&v28.f64[1] = v15;
      *&v24.f64[0] = 0x100000001;
      v34 = 0;
      v26 = 0uLL;
      if (a4[10] == 1)
      {
        v17 = 4390920;
      }

      else
      {
        v17 = 4456472;
      }

      v18 = sub_240AE2A1C(a1, 2, &v28, &v34, &v24, &v26, v17, 4784152, 1280);
      if (v18)
      {
        v19 = v18;
        *&v31[8] = 0u;
        memset(&v30[8], 0, 24);
        *v30 = 0x3FF0000000000000;
        *v31 = 0x3FF0000000000000;
        v32 = 0;
        v33 = 0x3FF0000000000000;
        *&v22 = 0;
        *(&v22 + 1) = 0x300000003;
        v11 = v35;
        (*(v18 + 8))(v18, v30, v35, 3, 1, &v22);
        v12 = &v36;
        v14 = v37;
        sub_240AE2944(v19);
        sub_240AC6C8C(v16);
        goto LABEL_19;
      }

      sub_240AC6C8C(v16);
    }

    result = 1;
    goto LABEL_21;
  }

LABEL_19:
  v22 = xmmword_240C11A30;
  v23 = 0x3FEA65A0026966CCLL;
  sub_240AE28B0(&v28, &v22, a3, v11);
  sub_240AE28B0(&v26, &v22, a3, v12);
  sub_240AE28B0(&v24, &v22, a3, v14);
  *v30 = vmulq_n_f64(v28, 1.0 / (vaddvq_f64(v28) + v29));
  *&v30[16] = vmulq_n_f64(v26, 1.0 / (vaddvq_f64(v26) + v27));
  *v31 = vmulq_n_f64(v24, 1.0 / (vaddvq_f64(v24) + v25));
  result = sub_240B53124(a4, v30);
LABEL_21:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240C0BE88(uint64_t *a1, uint64_t **a2, uint64_t a3)
{
  __p[3] = *MEMORY[0x277D85DE8];
  v6 = sub_240AC7924(*a2, 0x6B545243u);
  if (v6)
  {
    sub_240AC2EFC(v6);
    if (v7 <= 0.0)
    {
      goto LABEL_20;
    }

    v8 = 1.0 / v7;
  }

  else
  {
    v9 = 0;
    v19 = 0.0;
    v18 = 0.0;
    qmemcpy(__p, "CRTrCRTgCRTb", 12);
    do
    {
      v10 = sub_240AC7924(*a2, *(__p + v9));
      if (v10)
      {
        sub_240AC2EFC(v10);
        if (v11 > 0.0)
        {
          v12 = 1.0 / v11;
          *(&v18 + v9) = v12;
        }
      }

      v9 += 4;
    }

    while (v9 != 12);
    v8 = 0.0;
    if (*&v18 != 0.0 && vabds_f32(*&v18, *(&v18 + 1)) < 0.0001 && vabds_f32(*(&v18 + 1), v19) < 0.0001)
    {
      v8 = *&v18;
    }
  }

  if (v8 == 0.0 || v8 < 0.00012207 || v8 > 1.0)
  {
LABEL_20:
    operator new();
  }

  *(a3 + 48) = 0;
  if (fabs(v8 + -1.0) <= 0.001)
  {
    v16 = 8;
  }

  else if (fabs(v8 + -0.384615385) <= 0.001)
  {
    v16 = 17;
  }

  else
  {
    *(a3 + 48) = 1;
    *(a3 + 52) = vcvtas_u32_f32(v8 * 10000000.0);
    v16 = 2;
  }

  *(a3 + 56) = v16;
  memset(__p, 0, 24);
  sub_240B250A4(&v18, a3);
  if (sub_240C08514(&v18, __p))
  {
    v17 = __p[0];
    goto LABEL_30;
  }

  v17 = __p[0];
  if (sub_240C0C2D0(a1, a2, __p[0], __p[1], a3))
  {
LABEL_30:
    if (v17)
    {
      operator delete(v17);
    }

    goto LABEL_20;
  }

  if (v17)
  {
    operator delete(v17);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_240C0C278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p)
{
  if (v24)
  {
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240C0C2D0(uint64_t *a1, uint64_t *a2, const void *a3, int a4, uint64_t a5)
{
  v28 = *MEMORY[0x277D85DE8];
  *(a5 + 40);
  v8 = sub_240AC75A8(a1, a3, (a4 - a3));
  if (v8)
  {
    v9 = v8;
    v10 = sub_240AE24E4(a1);
    if (v10)
    {
      v11 = v10;
      v12 = *a2;
      v13 = 1;
      v14 = sub_240AE3E94();
      v15 = sub_240AE3E94();
      v16 = v15;
      if (v14)
      {
        v17 = v15 == 0;
      }

      else
      {
        v17 = 1;
      }

      if (!v17)
      {
        if (*(a5 + 40) == 1)
        {
          v25 = 0.001;
          while (1)
          {
            v21 = 0;
            v22 = 0x100000001;
            v13 = 1;
            (*(v14 + 8))(v14, &v25, v24, 1, 1, &v21);
            v21 = 0;
            v22 = 0x100000001;
            (*(v16 + 8))(v16, &v25, v23, 1, 1, &v21);
            if (vabdd_f64(v24[0], v23[0]) > 0.0002)
            {
              break;
            }

            v25 = v25 + 0.025;
            if (v25 >= 1.0)
            {
              v13 = 0;
              break;
            }
          }
        }

        else
        {
          v25 = 0.001;
          while (2)
          {
            v26 = 0.001;
            do
            {
              v27 = 0.001;
              while (2)
              {
                v21 = 0;
                v22 = 0x100000001;
                (*(v14 + 8))(v14, &v25, v24, 1, 1, &v21);
                v21 = 0;
                v22 = 0x100000001;
                (*(v16 + 8))(v16, &v25, v23, 1, 1, &v21);
                for (i = 0; i != 3; ++i)
                {
                  if (vabdd_f64(v24[i], v23[i]) > 0.0002)
                  {
                    v13 = 1;
                    goto LABEL_25;
                  }
                }

                v27 = v27 + 0.2;
                if (v27 < 1.0)
                {
                  continue;
                }

                break;
              }

              v26 = v26 + 0.2;
            }

            while (v26 < 1.0);
            v13 = 0;
            v25 = v25 + 0.2;
            if (v25 < 1.0)
            {
              continue;
            }

            break;
          }
        }
      }

LABEL_25:
      if (v16)
      {
        sub_240AE2944(v16);
      }

      if (v14)
      {
        sub_240AE2944(v14);
      }

      sub_240AC6C8C(v11);
    }

    else
    {
      v13 = 1;
    }

    sub_240AC6C8C(v9);
  }

  else
  {
    v13 = 1;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v13;
}

unint64_t sub_240C0C5EC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2 + 2048;
  }

  else
  {
    v2 = 2176;
  }

  v3 = v2 + a1;
  v4 = malloc_type_malloc(v2 + a1, 0x3ED55D8BuLL);
  if (!v4)
  {
    return 0;
  }

  atomic_fetch_add_explicit(&qword_27E519010, 1uLL, memory_order_relaxed);
  add = atomic_fetch_add(&qword_27E519020, v3);
  explicit = atomic_load_explicit(&qword_27E519018, memory_order_acquire);
  v7 = add + v3;
  if (explicit <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = explicit;
  }

  v9 = explicit;
  atomic_compare_exchange_strong(&qword_27E519018, &v9, v8);
  if (v9 != explicit)
  {
    v10 = v9;
    do
    {
      if (v9 <= v7)
      {
        v11 = v7;
      }

      else
      {
        v11 = v9;
      }

      atomic_compare_exchange_strong(&qword_27E519018, &v10, v11);
      v12 = v10 == v9;
      v9 = v10;
    }

    while (!v12);
  }

  v13 = v2 + (v4 & 0xFFFFFFFFFFFFF800);
  *(v13 - 32) = v4;
  *(v13 - 24) = v3;
  return v13;
}

BOOL sub_240C0C6A8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    return (*a1)(*(a1 + 8), v6, sub_240C0D194, sub_240C0D0E4, 0, a2) != 0;
  }

  for (i = 0; i != v3; ++i)
  {
    sub_240C0D0E4(v6, i);
  }

  return 0;
}

BOOL sub_240C0C758(uint64_t a1, uint64_t a2, uint64_t a3)
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
    return (*a1)(*(a1 + 8), v6, sub_240C0D0BC, sub_240C0CF60, 0, a2) != 0;
  }

  for (i = 0; i != v3; ++i)
  {
    sub_240C0CF60(v6, i);
  }

  return 0;
}

BOOL sub_240C0C808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {

    return sub_240C0CC1C(a1, a2, a3);
  }

  else
  {
    v6[2] = v3;
    v6[3] = v4;
    v6[0] = 0;
    v6[1] = v6;
    return sub_240C0CC1C(v6, a2, a3);
  }
}

BOOL sub_240C0C848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {

    return sub_240C0C888(a1, a2, a3);
  }

  else
  {
    v6[2] = v3;
    v6[3] = v4;
    v6[0] = 0;
    v6[1] = v6;
    return sub_240C0C888(v6, a2, a3);
  }
}

BOOL sub_240C0C888(uint64_t a1, uint64_t a2, uint64_t a3)
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
    return (*a1)(*(a1 + 8), v6, sub_240C0CA90, sub_240C0C938, 0, a2) != 0;
  }

  for (i = 0; i != v3; ++i)
  {
    sub_240C0C938(v6, i);
  }

  return 0;
}

unint64_t sub_240C0C938(unint64_t result, unsigned int a2)
{
  v19 = *(result + 8);
  v2 = (**v19 + ((**(v19 + 8) + a2) << 6));
  v18 = v2[6];
  if (v18)
  {
    v20 = 0;
    v21 = a2;
    v3 = v2[5];
    v16 = v2[2];
    v17 = v2[3];
    v14 = *(*(v19 + 16) + 16);
    v15 = *(*(v19 + 16) + 24);
    v4 = v3;
    do
    {
      if (v4)
      {
        v5 = 0;
        v6 = v17 + v16 * v20;
        v7 = **(v19 + 24);
        v8 = *(*(v19 + 32) + 40);
        v9 = *(v19 + 48);
        v10 = **(v19 + 40);
        v11 = *(v19 + 56);
        do
        {
          v12 = *(v15 + v14 * v20 + 4 * v5);
          result = sub_240C0CAB8(v7, v12, v21, v8, v10, *v9);
          v13 = result;
          if (v12 < *v11)
          {
            result = sub_240BD7BE8(v22, v3, v6 + 4 * v5, **(v19 + 64), v5, v20, **(v19 + 72));
            v13 += v23;
          }

          *(v6 + 4 * v5++) = v13;
        }

        while (v5 < v3);
        v4 = v3;
      }

      ++v20;
    }

    while (v20 < v18);
  }

  return result;
}

uint64_t sub_240C0CA90(unsigned int (**a1)(uint64_t), uint64_t a2)
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

unint64_t sub_240C0CAB8(uint64_t a1, signed int a2, unint64_t a3, int a4, int a5, int a6)
{
  if (a2 < 0)
  {
    if (a3 > 2)
    {
      return 0;
    }

    v11 = a6 - 8;
    if (a6 <= 8)
    {
      v11 = 0;
    }

    return ((dword_240C87D68[(~a2 % 0x8Fu) & 1] * dword_240C87A08[3 * (((~a2 % 0x8Fu) + 1) >> 1) + a3]) << v11);
  }

  else
  {
    v6 = a4 + 64;
    if (a2 >= a4 && a2 < v6)
    {
      if (a3 <= 2)
      {
        if ((a2 - a4) >> (2 * a3) <= 0)
        {
          v7 = -(-((a2 - a4) >> (2 * a3)) & 3);
        }

        else
        {
          v7 = ((a2 - a4) >> (2 * a3)) & 3;
        }

        v8 = ((v7 << a6) - v7) >> 2;
        if (a6 <= 3)
        {
          v9 = 3;
        }

        else
        {
          v9 = a6;
        }

        return ((1 << (v9 - 3)) + v8);
      }

      return 0;
    }

    v12 = a2 - v6;
    if (a2 < v6)
    {
      return *(a1 + 4 * a5 * a3 + 4 * a2);
    }

    if (a3 > 2)
    {
      return 0;
    }

    v13 = v12 / 25;
    if (a3 == 1)
    {
      v12 /= 5;
    }

    if (a3 == 2)
    {
      v12 = v13;
    }

    return (((v12 % 5) << a6) - v12 % 5) >> 2;
  }
}

BOOL sub_240C0CC1C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    return (*a1)(*(a1 + 8), v6, sub_240C0CF38, sub_240C0CCCC, 0, a2) != 0;
  }

  for (i = 0; i != v3; ++i)
  {
    sub_240C0CCCC(v6, i);
  }

  return 0;
}

void sub_240C0CCCC(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 8);
  v4 = (**v3 + ((**(v3 + 8) + a2) << 6));
  v29 = v3;
  v5 = *(v3 + 16);
  v38 = &unk_2852A1238;
  v6 = *(v5 + 40);
  v7 = *(v5 + 24);
  v39 = *(v5 + 8);
  v40 = v7;
  v41 = v6;
  sub_240B62C98(v42, &v38, v4[5]);
  v28 = v4[6];
  if (v28)
  {
    v31 = a2;
    v30 = 0;
    v8 = v4[5];
    v26 = v4[2];
    v27 = v4[3];
    v25 = *(v29 + 24);
    v9 = v8;
    do
    {
      if (v9)
      {
        v10 = 0;
        v11 = v27 + v26 * v30;
        v35 = *(v25 + 24) + *(v25 + 16) * v30;
        v34 = *(v29 + 32);
        v33 = *(v29 + 40);
        v12 = *(v29 + 56);
        v32 = *(v29 + 48);
        v13 = *(v29 + 64);
        if (v30)
        {
          v14 = 0;
        }

        else
        {
          v14 = v8 + 2;
        }

        do
        {
          v15 = *(v35 + 4 * v10);
          v16 = sub_240C0CAB8(*v34, v15, v31, *(v33 + 40), *v32, *v12);
          if (v15 < *v13)
          {
            sub_240BB7044(v36, v8, v11 + 4 * v10, **(v29 + 72), v10, v30, **(v29 + 80), v42);
            v16 += v37;
          }

          v17 = 0;
          *(v11 + 4 * v10) = v16;
          v18 = 8 * v16;
          *(__p + v14 + v10) = v43 - v18;
          v19 = v44;
          do
          {
            v20 = *&v42[v17] - v18;
            if (v20 < 0)
            {
              v20 = v18 - *&v42[v17];
            }

            v21 = (v20 + 3) >> 3;
            v22 = *v19;
            v19 += 3;
            *(v22 + 4 * (v14 + v10)) = v21;
            *(v22 + 4 * (((v30 << 63) >> 63) & (v8 + 2)) + 4 * v10 + 4) += v21;
            v17 += 8;
          }

          while (v17 != 32);
          ++v10;
        }

        while (v10 < v8);
        v9 = v8;
      }

      ++v30;
    }

    while (v30 < v28);
  }

  if (__p)
  {
    v46 = __p;
    operator delete(__p);
  }

  for (i = 0; i != -96; i -= 24)
  {
    v24 = *&v44[i + 72];
    if (v24)
    {
      *&v44[i + 80] = v24;
      operator delete(v24);
    }
  }
}

uint64_t sub_240C0CF38(unsigned int (**a1)(uint64_t), uint64_t a2)
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

void sub_240C0CF60(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  v3 = a2;
  sub_240BE3360(__p, **v2);
  v4 = *v2;
  v6 = *(*v2[1] + (*v2[2] << 6) + 16);
  v5 = *(*v2[1] + (*v2[2] << 6) + 24);
  LODWORD(v7) = **v2;
  if (v7 >= 1)
  {
    v8 = 0;
    do
    {
      *(__p[0] + v8) = *(*v2[1] + ((v8 + *v2[2]) << 6) + 24) + *(*v2[1] + ((v8 + *v2[2]) << 6) + 16) * v3;
      ++v8;
      v4 = *v2;
    }

    while (v8 < **v2);
    LODWORD(v7) = **v2;
  }

  v9 = __p[0];
  v18 = *v2[3];
  if (v18)
  {
    v10 = 0;
    v17 = v5 + v6 * v3;
    do
    {
      if (v7 >= 1)
      {
        v11 = 0;
        v12 = *(v17 + 4 * v10);
        v13 = *v2[4];
        v14 = v2[5][10];
        v15 = v2[7];
        v16 = *v2[6];
        do
        {
          *(v9[v11] + 4 * v10) = sub_240C0CAB8(v13, v12, v11, v14, v16, *v15);
          ++v11;
          v7 = *v4;
        }

        while (v11 < v7);
      }

      ++v10;
    }

    while (v10 != v18);
  }

  if (v9)
  {
    __p[1] = v9;
    operator delete(v9);
  }
}

uint64_t sub_240C0D0BC(unsigned int (**a1)(uint64_t), uint64_t a2)
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

unint64_t sub_240C0D0E4(unint64_t result, unsigned int a2)
{
  v2 = *(result + 8);
  v3 = **(v2 + 16);
  if (v3)
  {
    v4 = (*(**v2 + (**(v2 + 8) << 6) + 24) + *(**v2 + (**(v2 + 8) << 6) + 16) * a2);
    v5 = *(*(v2 + 24) + 40);
    v6 = **(v2 + 32);
    v7 = *(v2 + 48);
    v8 = **(v2 + 40);
    do
    {
      if (*v4 >= v5 - 1)
      {
        v9 = v5 - 1;
      }

      else
      {
        v9 = *v4;
      }

      if (*v4 >= 0)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      result = sub_240C0CAB8(v6, v10, 0, v5, v8, *v7);
      *v4++ = result;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_240C0D194(unsigned int (**a1)(uint64_t), uint64_t a2)
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

uint64_t sub_240C0D1BC(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_240BAD864(result);

    JUMPOUT(0x245CCE590);
  }

  return result;
}

BOOL sub_240C0D2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 16);
  v12 = (*(**a2 + 8 * v11) + 64);
  v13 = (*(*(*a2 + 24) + 8 * v11) + 64);
  v14 = (*(*(*a2 + 48) + 8 * v11) + 64);
  v15 = (*(*(a1 + 984) + 32))(*(*(a1 + 984) + 64), a8);
  v16 = v15;
  if (a5)
  {
    v17 = (v15 + 4);
    v18 = v12;
    v19 = v13;
    v20 = v14;
    v21 = a5;
    do
    {
      v22 = *v18++;
      *(v17 - 1) = v22;
      v23 = *v19++;
      *v17 = v23;
      v24 = *v20++;
      v17[1] = v24;
      v17 += 3;
      --v21;
    }

    while (v21);
  }

  v25 = (*(*(a1 + 984) + 40))(*(*(a1 + 984) + 64), a8);
  v27 = (*(*(a1 + 984) + 48))(*(*(a1 + 984) + 64), a8, v16, v25, a5) == 0;
  result = v27;
  v27 = v27 || a5 == 0;
  if (!v27)
  {
    v28 = (v25 + 4);
    do
    {
      *v12++ = *(v28 - 1);
      *v13++ = *v28;
      *v14++ = v28[1];
      v28 += 3;
      --a5;
    }

    while (a5);
    return 0;
  }

  return result;
}

void sub_240C0D3F8(void *a1)
{
  *a1 = &unk_2852A39F8;
  a1[124] = &unk_2852A1CB8;
  v2 = a1[128];
  if (v2)
  {
    a1[129] = v2;
    operator delete(v2);
  }

  sub_240C0D1BC(a1 + 123, 0);
  a1[61] = &unk_2852A1CB8;
  v3 = a1[65];
  if (v3)
  {
    a1[66] = v3;
    operator delete(v3);
  }

  a1[36] = &unk_2852A1CB8;
  v4 = a1[40];
  if (v4)
  {
    a1[41] = v4;
    operator delete(v4);
  }

  a1[5] = &unk_2852A1CB8;
  v5 = a1[9];
  if (v5)
  {
    a1[10] = v5;
    operator delete(v5);
  }

  JUMPOUT(0x245CCE590);
}

void *sub_240C0D524(void *a1)
{
  *a1 = &unk_2852A39F8;
  a1[124] = &unk_2852A1CB8;
  v2 = a1[128];
  if (v2)
  {
    a1[129] = v2;
    operator delete(v2);
  }

  sub_240C0D1BC(a1 + 123, 0);
  a1[61] = &unk_2852A1CB8;
  v3 = a1[65];
  if (v3)
  {
    a1[66] = v3;
    operator delete(v3);
  }

  a1[36] = &unk_2852A1CB8;
  v4 = a1[40];
  if (v4)
  {
    a1[41] = v4;
    operator delete(v4);
  }

  a1[5] = &unk_2852A1CB8;
  v5 = a1[9];
  if (v5)
  {
    a1[10] = v5;
    operator delete(v5);
  }

  return a1;
}

void sub_240C0DC88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v5 = &unk_2852A1CB8;
  v8 = *v6;
  if (*v6)
  {
    *(v2 + 1032) = v8;
    operator delete(v8);
  }

  sub_240C0D1BC((v2 + 984), 0);
  sub_240BF6CDC(v4);
  sub_240BF6CDC(va);
  MEMORY[0x245CCE590](v2, v3);
  _Unwind_Resume(a1);
}

int64x2_t sub_240C0DCF8(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 600; i += 40)
  {
    v3 = a1 + i;
    v4 = *(a1 + i + 24);
    *(v3 + 16) = *(a1 + i + 16) + *(a2 + i + 16);
    *v3 = vaddq_s64(*(a1 + i), *(a2 + i));
    *(v3 + 24) = v4 + *(a2 + i + 24);
    *(v3 + 32) = *(a2 + i + 32) + *(a1 + i + 32);
  }

  v5 = *(a1 + 616);
  *(a1 + 600) = vaddq_s64(*(a1 + 600), *(a2 + 600));
  *(a1 + 616) = vaddq_s64(v5, *(a2 + 616));
  v6 = *(a1 + 648);
  *(a1 + 632) = vaddq_s64(*(a1 + 632), *(a2 + 632));
  *(a1 + 648) = vaddq_s64(v6, *(a2 + 648));
  v7 = *(a1 + 680);
  *(a1 + 664) = vaddq_s64(*(a1 + 664), *(a2 + 664));
  result = vaddq_s64(v7, *(a2 + 680));
  *(a1 + 680) = result;
  *(a1 + 696) += *(a2 + 696);
  return result;
}

uint64_t sub_240C0DDBC(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v40[3] = *MEMORY[0x277D85DE8];
  if (!*(a1 + 624))
  {
LABEL_24:
    result = 0;
    goto LABEL_25;
  }

  sub_240B2A11C(v35, *a3, a3[1]);
  if (v39)
  {
    v32 = v39;
  }

  else
  {
    sub_240B2A358(v33, v35);
    v6 = 0;
    v7 = *(a3 + 2);
    v8 = *&v33[1];
    v10 = *a3;
    v9 = a3[1];
    do
    {
      if (v9)
      {
        v11 = 0;
        v12 = *&a3[10 * v6 + 6];
        v13 = *(&v33[1] + 5 * v6 + 1);
        do
        {
          v14 = v12;
          v15 = v13;
          v16 = v10;
          if (v10)
          {
            do
            {
              v17 = *v14++;
              *v15++ = v17;
              --v16;
            }

            while (v16);
          }

          ++v11;
          v13 = (v13 + v8);
          v12 = (v12 + v7);
        }

        while (v11 != v9);
      }

      ++v6;
    }

    while (v6 != 3);
    v32 = 0;
    sub_240B2A358(v30, v33);
    for (i = 104; i != -16; i -= 40)
    {
      sub_240B22320((v33 + i));
    }

    if (!v39)
    {
      v19 = &v38;
      v20 = -120;
      do
      {
        sub_240B22320(v19);
        v19 -= 5;
        v20 += 40;
      }

      while (v20);
    }
  }

  result = v32;
  if (!v32)
  {
    sub_240B2A358(v35, v30);
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    sub_240B250A4(v33, a2 + 16);
    v22 = 3 * *a3 * a3[1];
    sub_240B29264(__p, v22);
    v40[0] = v35;
    v40[1] = &v36;
    v40[2] = &v37;
    v23 = 6 * *a3;
    memset(v28, 0, sizeof(v28));
    sub_240B31610(v40, 3uLL, 16, 0, 2, v23, 0, __p[0], 2 * v22, v28);
    (*(a1 + 624))(*(a1 + 632), "background", *a3, a3[1], v33, __p[0]);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    for (j = 104; j != -16; j -= 40)
    {
      sub_240B22320(&v35[j]);
    }

    if (!v32)
    {
      v25 = &v31;
      v26 = -120;
      do
      {
        sub_240B22320(v25);
        v25 -= 5;
        v26 += 40;
      }

      while (v26);
    }

    goto LABEL_24;
  }

LABEL_25:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240C0E038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  for (i = 104; i != -16; i -= 40)
  {
    sub_240B22320((v34 - 208 + i));
  }

  if (!a34)
  {
    v37 = &a32;
    v38 = -120;
    do
    {
      sub_240B22320(v37);
      v37 -= 5;
      v38 += 40;
    }

    while (v38);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240C0E0AC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v42[3] = *MEMORY[0x277D85DE8];
  if (!*(a1 + 624))
  {
LABEL_24:
    result = 0;
    goto LABEL_25;
  }

  sub_240B2A11C(v37, *a4, a4[1]);
  if (v41)
  {
    v34 = v41;
  }

  else
  {
    sub_240B2A358(v35, v37);
    v8 = 0;
    v9 = *(a4 + 2);
    v10 = *&v35[1];
    v12 = *a4;
    v11 = a4[1];
    do
    {
      if (v11)
      {
        v13 = 0;
        v14 = *&a4[10 * v8 + 6];
        v15 = *(&v35[1] + 5 * v8 + 1);
        do
        {
          v16 = v14;
          v17 = v15;
          v18 = v12;
          if (v12)
          {
            do
            {
              v19 = *v16++;
              *v17++ = v19 * 0.0039216;
              --v18;
            }

            while (v18);
          }

          ++v13;
          v15 = (v15 + v10);
          v14 += v9;
        }

        while (v13 != v11);
      }

      ++v8;
    }

    while (v8 != 3);
    v34 = 0;
    sub_240B2A358(v32, v35);
    for (i = 104; i != -16; i -= 40)
    {
      sub_240B22320((v35 + i));
    }

    if (!v41)
    {
      v21 = &v40;
      v22 = -120;
      do
      {
        sub_240B22320(v21);
        v21 -= 5;
        v22 += 40;
      }

      while (v22);
    }
  }

  result = v34;
  if (!v34)
  {
    sub_240B2A358(v37, v32);
    v36 = 0;
    memset(v35, 0, sizeof(v35));
    sub_240B250A4(v35, a3 + 16);
    v24 = 3 * *a4 * a4[1];
    sub_240B29264(__p, v24);
    v42[0] = v37;
    v42[1] = &v38;
    v42[2] = &v39;
    v25 = 6 * *a4;
    memset(v30, 0, sizeof(v30));
    sub_240B31610(v42, 3uLL, 16, 0, 2, v25, 0, __p[0], 2 * v24, v30);
    (*(a1 + 624))(*(a1 + 632), a2, *a4, a4[1], v35, __p[0]);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    for (j = 104; j != -16; j -= 40)
    {
      sub_240B22320(&v37[j]);
    }

    if (!v34)
    {
      v27 = &v33;
      v28 = -120;
      do
      {
        sub_240B22320(v27);
        v27 -= 5;
        v28 += 40;
      }

      while (v28);
    }

    goto LABEL_24;
  }

LABEL_25:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240C0E340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  for (i = 104; i != -16; i -= 40)
  {
    sub_240B22320((v34 - 224 + i));
  }

  if (!a34)
  {
    v37 = &a32;
    v38 = -120;
    do
    {
      sub_240B22320(v37);
      v37 -= 5;
      v38 += 40;
    }

    while (v38);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240C0E3B4(uint64_t a1, unsigned int *a2)
{
  if (!*(a1 + 624))
  {
    return 0;
  }

  sub_240B2A11C(v15, *a2, a2[1]);
  v4 = v17;
  if (!v17)
  {
    sub_240B2A358(v14, v15);
    sub_240B49900(v13);
    v11[0] = 0;
    v11[1] = 0;
    *&v5 = v14[0];
    *(&v5 + 1) = v14[1];
    v12 = v5;
    sub_240B4988C(a2, v11, v14, v13);
    v6 = sub_240B29FC8(0);
    v4 = sub_240C0DDBC(a1, v6, v14);
    for (i = 26; i != -4; i -= 10)
    {
      sub_240B22320(&v14[i]);
    }

    if (!v17)
    {
      v8 = &v16;
      v9 = -120;
      do
      {
        sub_240B22320(v8);
        v8 -= 5;
        v9 += 40;
      }

      while (v9);
    }
  }

  return v4;
}

void sub_240C0E4AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  for (i = 104; i != -16; i -= 40)
  {
    sub_240B22320((&a38 + i));
  }

  if (!*(v38 - 40))
  {
    v41 = (v38 - 56);
    v42 = -120;
    do
    {
      sub_240B22320(v41);
      v41 -= 5;
      v42 += 40;
    }

    while (v42);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240C0E500(uint64_t a1, unsigned int *a2)
{
  v4 = *a2;
  v5 = a2[1];
  if (v5)
  {
    v7 = 0;
    v8 = *(a2 + 3);
    v9 = -3.4028e38;
    v10 = 3.4028e38;
    do
    {
      v11 = v8;
      v12 = v4;
      if (v4)
      {
        do
        {
          v13 = *v11++;
          v14 = v13;
          if (v13 < v10)
          {
            v10 = v14;
          }

          if (v9 < v14)
          {
            v9 = v14;
          }

          --v12;
        }

        while (v12);
      }

      ++v7;
      v8 = (v8 + *(a2 + 2));
    }

    while (v7 != v5);
  }

  else
  {
    v9 = -3.4028e38;
    v10 = 3.4028e38;
  }

  sub_240C0E718(v32, v4, v5);
  v15 = v34;
  if (!v34)
  {
    sub_240B2A358(v29, v32);
    v16 = 0;
    v17 = 255.0 / (v9 - v10);
    if (v10 == v9)
    {
      v17 = 0.0;
    }

    do
    {
      v18 = a2[1];
      if (v18)
      {
        v19 = 0;
        LODWORD(v20) = *a2;
        do
        {
          if (v20)
          {
            v21 = 0;
            v22 = v31[5 * v16] + v30 * v19;
            v23 = *(a2 + 3) + *(a2 + 2) * v19;
            do
            {
              *(v22 + v21) = (v17 * (*(v23 + 4 * v21) - v10));
              ++v21;
              v20 = *a2;
            }

            while (v21 < v20);
            v18 = a2[1];
          }

          ++v19;
        }

        while (v19 < v18);
      }

      ++v16;
    }

    while (v16 != 3);
    v24 = sub_240B29F18(0);
    v15 = sub_240C0E0AC(a1, "ccs", v24, v29);
    for (i = 26; i != -4; i -= 10)
    {
      sub_240B22320(&v29[i]);
    }

    if (!v34)
    {
      v26 = &v33;
      v27 = -120;
      do
      {
        sub_240B22320(v26);
        v26 -= 5;
        v27 += 40;
      }

      while (v27);
    }
  }

  return v15;
}

void sub_240C0E6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40)
{
  for (i = 104; i != -16; i -= 40)
  {
    sub_240B22320((&a10 + i));
  }

  if (!a40)
  {
    v42 = &a38;
    v43 = -120;
    do
    {
      sub_240B22320(v42);
      v42 -= 5;
      v43 += 40;
    }

    while (v43);
  }

  _Unwind_Resume(a1);
}

void sub_240C0E718(uint64_t a1, unsigned int a2, unsigned int a3)
{
  sub_240B22220(&v35, a2, a3);
  if (v39)
  {
    *(a1 + 120) = v39;
  }

  else
  {
    sub_240B22220(&v30, a2, a3);
    if (v34)
    {
      *(a1 + 120) = v34;
    }

    else
    {
      sub_240B22220(&v25, a2, a3);
      if (v29)
      {
        *(a1 + 120) = v29;
      }

      else
      {
        v13 = v35;
        v6 = v37;
        v37 = 0;
        v7 = v32;
        v32 = 0;
        v8 = v27;
        v27 = 0;
        v14 = v36;
        v15 = v6;
        v16 = v38;
        v18 = v31;
        v19 = v7;
        v17 = v30;
        v20 = v33;
        v21 = v25;
        v22 = v26;
        v23 = v8;
        v24 = v28;
        *(a1 + 120) = 0;
        sub_240B2A358(a1, &v13);
        for (i = 104; i != -16; i -= 40)
        {
          sub_240B22320((&v13 + i));
        }

        if (!v29)
        {
          v10 = v27;
          v27 = 0;
          if (v10)
          {
            atomic_fetch_add(&qword_27E519020, -*(v10 - 24));
            free(*(v10 - 32));
          }
        }
      }

      if (!v34)
      {
        v11 = v32;
        v32 = 0;
        if (v11)
        {
          atomic_fetch_add(&qword_27E519020, -*(v11 - 24));
          free(*(v11 - 32));
        }
      }
    }

    if (!v39)
    {
      v12 = v37;
      v37 = 0;
      if (v12)
      {
        atomic_fetch_add(&qword_27E519020, -*(v12 - 24));
        free(*(v12 - 32));
      }
    }
  }
}

void sub_240C0E8E8(_Unwind_Exception *a1)
{
  v3 = *(v1 - 104);
  *(v1 - 104) = 0;
  if (!v3 || (atomic_fetch_add(&qword_27E519020, -*(v3 - 24)), free(*(v3 - 32)), !*(v1 - 40)))
  {
    v4 = *(v1 - 56);
    *(v1 - 56) = 0;
    if (v4)
    {
      atomic_fetch_add(&qword_27E519020, -*(v4 - 24));
      free(*(v4 - 32));
    }
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240C0E954(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v6 = a3[1];
  v7 = *a3;
  v8 = 0;
  if (v6)
  {
    v9 = 0;
    v10 = 0;
    v11 = *(a3 + 3);
    v12 = -1;
    do
    {
      v13 = v11;
      v14 = *a3;
      if (v7)
      {
        do
        {
          v16 = *v13++;
          v15 = v16;
          if (v16 < v12)
          {
            v12 = v15;
          }

          if (v9 <= v15)
          {
            v8 = v15;
          }

          else
          {
            v8 = v9;
          }

          v9 = v8;
          --v14;
        }

        while (v14);
      }

      ++v10;
      v11 += *(a3 + 2);
    }

    while (v10 != v6);
  }

  else
  {
    v12 = -1;
  }

  sub_240C0E718(v35, v7, v6);
  v17 = v37;
  if (!v37)
  {
    sub_240B2A358(v32, v35);
    v18 = 0;
    v19 = 255.0 / (v8 - v12);
    v20 = a3[1];
    if (v8 == v12)
    {
      v19 = 0.0;
    }

    v21 = a3[1];
    do
    {
      if (v21)
      {
        v22 = 0;
        LODWORD(v23) = *a3;
        do
        {
          if (v23)
          {
            v24 = 0;
            v25 = v34[5 * v18] + v33 * v22;
            v26 = *(a3 + 3) + *(a3 + 2) * v22;
            do
            {
              *(v25 + v24) = (v19 * (*(v26 + v24) - v12));
              ++v24;
              v23 = *a3;
            }

            while (v24 < v23);
            v20 = a3[1];
          }

          ++v22;
          v21 = v20;
        }

        while (v22 < v20);
      }

      ++v18;
    }

    while (v18 != 3);
    v27 = sub_240B29F18(0);
    v17 = sub_240C0E0AC(a1, a2, v27, v32);
    for (i = 26; i != -4; i -= 10)
    {
      sub_240B22320(&v32[i]);
    }

    if (!v37)
    {
      v29 = &v36;
      v30 = -120;
      do
      {
        sub_240B22320(v29);
        v29 -= 5;
        v30 += 40;
      }

      while (v30);
    }
  }

  return v17;
}

void sub_240C0EB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40)
{
  for (i = 104; i != -16; i -= 40)
  {
    sub_240B22320((&a10 + i));
  }

  if (!a40)
  {
    v42 = &a38;
    v43 = -120;
    do
    {
      sub_240B22320(v42);
      v42 -= 5;
      v43 += 40;
    }

    while (v43);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240C0EB88(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v17 = 0;
  v18 = 0;
  result = sub_240B541D8(a1, &v18, &v17);
  if (!result)
  {
    sub_240B53650(v16, a2, v17);
    v10 = &unk_2852A2010;
    v13 = v18;
    v14 = a2;
    v15 = 1;
    v11 = xmmword_240C112C0;
    v12 = 0;
    result = (*(*a1 + 16))(a1, &v10);
    v12 >>= 1;
    v9.i64[0] = -1;
    v9.i64[1] = -1;
    v9.i64[0] = vaddq_s64(v11, v9).u64[0];
    v9.i64[1] = vshrq_n_u64(*&v11, 1uLL).i64[1];
    v11 = v9;
    if (!result)
    {
      if (v15)
      {
        sub_240B536C8(v16, a2, a3, a4);
        return 0;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_240C0ECA8(uint64_t a1, uint64_t *a2)
{
  result = (*(*a1 + 48))(a1, 0, a2);
  if (!result)
  {
    ++*(a1 + 16);
    if (*a2)
    {
      sub_240C0ED54(*(a1 + 32), *(a1 + 40));
      v5 = *a2;
      while (1)
      {
        v5 &= v5 - 1;
        if (!v5)
        {
          break;
        }

        v6 = *(a1 + 40);
        *(v6[3] + (*v6 >> 3)) = *(v6[3] + (*v6 >> 3));
        *v6 += 2;
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_240C0ED54(unint64_t result, uint64_t *a2)
{
  if (result)
  {
    if (result > 0x10)
    {
      v6 = *a2;
      v7 = *a2 >> 3;
      v8 = a2[3];
      v9 = *a2 & 7;
      v10 = *(v8 + v7);
      v11 = *a2 + 2;
      v12 = v11 >> 3;
      v13 = v11 & 7;
      if (result > 0x110)
      {
        *(v8 + v7) = (3 << v9) | v10;
        *(v8 + v12) = ((result & 0xFFF) << v13) | *(v8 + v12);
        if (result < 0x1000)
        {
          v18 = v6 + 14;
        }

        else
        {
          v14 = result >> 12;
          v4 = v6 + 19;
          v15 = 12;
          do
          {
            v16 = v14;
            *(v8 + ((v4 - 5) >> 3)) = (1 << ((v4 - 5) & 7)) | *(v8 + ((v4 - 5) >> 3));
            *(v8 + ((v4 - 4) >> 3)) = (v14 << ((v4 - 4) & 7)) | *(v8 + ((v4 - 4) >> 3));
            v4 += 9;
            if (v14 < 0x100)
            {
              break;
            }

            v14 >>= 8;
            v17 = v15 >= 0x34;
            v15 += 8;
          }

          while (!v17);
          v18 = v4 - 5;
          if (v16 >= 0x100)
          {
            *(v8 + (v18 >> 3)) = (1 << (v18 & 7)) | *(v8 + (v18 >> 3));
            *(v8 + ((v4 - 4) >> 3)) = (((v16 >> 8) & 0xF) << ((v4 - 4) & 7)) | *(v8 + ((v4 - 4) >> 3));
            goto LABEL_16;
          }
        }

        *(v8 + (v18 >> 3)) = *(v8 + (v18 >> 3));
        v4 = v18 + 1;
        goto LABEL_16;
      }

      *(v8 + v7) = (2 << v9) | v10;
      *(v8 + v12) = ((result - 17) << v13) | *(v8 + v12);
      v4 = v6 + 10;
    }

    else
    {
      v2 = *a2;
      v3 = a2[3];
      *(v3 + (*a2 >> 3)) = (1 << (*a2 & 7)) | *(v3 + (*a2 >> 3));
      *(v3 + ((v2 + 2) >> 3)) = ((result - 1) << ((v2 + 2) & 7)) | *(v3 + ((v2 + 2) >> 3));
      v4 = v2 + 6;
    }
  }

  else
  {
    v5 = *a2;
    *(a2[3] + (*a2 >> 3)) = *(a2[3] + (*a2 >> 3));
    v4 = v5 + 2;
  }

LABEL_16:
  *a2 = v4;
  return result;
}

uint64_t sub_240C0EF20(uint64_t a1, float *a2)
{
  v3 = sub_240C0EF60(*(a1 + 40), *a2);
  v4 = *(a1 + 48);
  if (v3)
  {
    v4 = 0;
  }

  *(a1 + 48) = v4;
  return 0;
}

uint64_t sub_240C0EF60(uint64_t *a1, float a2)
{
  v2 = (LODWORD(a2) >> 23);
  v3 = 1;
  if (v2 <= 0x8E)
  {
    v4 = (1 << (v2 - 103)) + ((LODWORD(a2) & 0x7FFFFFu) >> (126 - v2));
    if (v2 <= 0x70)
    {
      v5 = 0;
    }

    else
    {
      v4 = (LODWORD(a2) & 0x7FFFFFu) >> 13;
      v5 = (v2 << 10) - 114688;
    }

    v6 = v4 | (LODWORD(a2) >> 31 << 15) | v5;
    if (v2 < 0x67)
    {
      v6 = 0;
    }

    v7 = *a1;
    *(a1[3] + (*a1 >> 3)) = (v6 << (*a1 & 7)) | *(a1[3] + (*a1 >> 3));
    *a1 = v7 + 16;
    return 0;
  }

  return v3;
}

uint64_t sub_240C0F018(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v4 = *a4;
  if (!(v4 >> a2))
  {
    v5 = *(a1 + 40);
    *(v5[3] + (*v5 >> 3)) = (v4 << (*v5 & 7)) | *(v5[3] + (*v5 >> 3));
    *v5 += a2;
  }

  v6 = *(a1 + 48);
  if (v4 >> a2)
  {
    v6 = 0;
  }

  *(a1 + 48) = v6;
  return 0;
}

uint64_t sub_240C0F06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v6 = sub_240C0F0B8(a2, a3, *a5, *(a1 + 40));
  v7 = *(a1 + 48);
  if (v6)
  {
    v7 = 0;
  }

  *(a1 + 48) = v7;
  return 0;
}

BOOL sub_240C0F0B8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t *a4)
{
  v14[0] = a1;
  v14[1] = a2;
  v13 = 0;
  v12 = 0;
  result = sub_240B545F8(a1, a2, a3, &v13, &v12);
  if (!result)
  {
    v7 = v13;
    v8 = *a4;
    v9 = a4[3];
    *(v9 + (*a4 >> 3)) = (v13 << (*a4 & 7)) | *(v9 + (*a4 >> 3));
    *a4 = v8 + 2;
    v10 = *(v14 + v7);
    if ((v10 & 0x80000000) == 0)
    {
      v11 = v12;
      *(v9 + ((v8 + 2) >> 3)) = ((a3 - (v10 >> 5)) << ((v8 + 2) & 7)) | *(v9 + ((v8 + 2) >> 3));
      *a4 = v8 + v11;
    }
  }

  return result;
}

uint64_t sub_240C0F1B0(uint64_t a1, uint64_t a2, float *a3, void *a4)
{
  v12 = 0;
  v40[12] = *MEMORY[0x277D85DE8];
  do
  {
    v13 = *a3++;
    *v4.i32 = v13;
    v14 = ((v13 * 4.0) * -0.11033) + 1.0;
    if (v14 < 0.00001)
    {
      v14 = 0.00001;
    }

    v15 = 1.0 / v14;
    *&v15 = v15;
    *v4.i32 = *v4.i32 * *&v15;
    *v5.i32 = *v4.i32 * -0.090882;
    *v6.i32 = *v4.i32 * 0.013925;
    *v7.i32 = *v4.i32 * -0.043664;
    *v8.i32 = *v4.i32 * 0.0030558;
    *v4.i32 = *v4.i32 * 0.003619;
    v16 = &v38[v12];
    v6 = vdupq_lane_s32(*v6.i8, 0);
    *v16 = vdupq_lane_s32(*&v15, 0);
    v16[1] = vdupq_lane_s32(*v5.i8, 0);
    v5 = vdupq_lane_s32(v8, 0);
    v16[2] = v6;
    v16[3] = vdupq_lane_s32(v7, 0);
    v4 = vdupq_lane_s32(*v4.i8, 0);
    v16[4] = v5;
    v16[5] = v4;
    v12 += 96;
  }

  while (v12 != 288);
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  sub_240B23590(&v31, *(a1 + 80), *(a1 + 84));
  v17 = v34;
  if (!v34)
  {
    v35 = v31;
    v18 = *(&v32 + 1);
    v36 = v32;
    v19 = *(a1 + 80);
    v20 = *(a1 + 84);
    v37 = v33;
    if (v20 && v19)
    {
      v21 = 0;
      v22 = v36;
      do
      {
        memcpy(v18, (*(a1 + 104) + *(a1 + 96) * v21++), 4 * *(a1 + 80));
        v18 += v22;
      }

      while (v21 < *(a1 + 84));
    }

    v23.i64[0] = *a1;
    v23.i64[1] = HIDWORD(*a1);
    v24 = vdupq_n_s64(3uLL);
    v25 = vqsubq_u64(*a2, v24);
    v26 = vaddq_s64(vaddq_s64(*a2, *(a2 + 16)), v24);
    v30[0] = v25;
    v30[1] = vsubq_s64(vbslq_s8(vcgtq_u64(v23, v26), v26, v23), v25);
    sub_240BEB2A8(a1, v30, v38, a4, a1 + 80, v30);
    sub_240BEB2A8(a1 + 40, v30, &v39, a4, a1, v30);
    sub_240BEB2A8(&v35, v30, v40, a4, a1 + 40, v30);
    sub_240B59888(a1, (a1 + 40));
    sub_240B59888(a1, (a1 + 80));
    v17 = 0;
    *(&v32 + 1) = 0;
  }

  v27 = *(&v36 + 1);
  *(&v36 + 1) = 0;
  if (v27)
  {
    atomic_fetch_add(&qword_27E519020, -*(v27 - 24));
    free(*(v27 - 32));
  }

  v28 = *MEMORY[0x277D85DE8];
  return v17;
}

void sub_240C0F430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a22)
  {
    atomic_fetch_add(&qword_27E519020, -*(a22 - 24));
    free(*(a22 - 32));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240C0F470(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  v6 = result;
  if ((*(result + 4) & 0x80000000) == 0)
  {
    v8 = *(result + 4);
    do
    {
      result = sub_240C0F470(a2 + 8 * v8, a2, a3, ++a4);
      v6 = a2 + 8 * *(v6 + 6);
      v8 = *(v6 + 4);
    }

    while ((*(v6 + 4) & 0x80000000) == 0);
  }

  *(a3 + *(v6 + 6)) = a4;
  return result;
}

void sub_240C0F824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p)
{
  if (v15)
  {
    operator delete(v15);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240C0F878(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *), unint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    v8 = result;
    if (a4 == 2)
    {
      v9 = a2 - 1;
      result = (*a3)(a2 - 1, result);
      if (result)
      {
        v10 = *v8;
        *v8 = *v9;
        *v9 = v10;
      }
    }

    else if (a4 > 128)
    {
      v19 = a5;
      v20 = a4 >> 1;
      v21 = (result + 8 * (a4 >> 1));
      v22 = a4 >> 1;
      if (a4 <= a6)
      {
        sub_240C0FAD8(result, v21, a3, v22, a5);
        v23 = &v19[8 * v20];
        result = sub_240C0FAD8(&v8[a4 >> 1], a2, a3, a4 - (a4 >> 1), v23);
        v24 = &v19[8 * a4];
        v25 = v23;
        while (v25 != v24)
        {
          result = (*a3)(v25, v19);
          if (result)
          {
            v26 = v25;
          }

          else
          {
            v26 = v19;
          }

          if (result)
          {
            v27 = 0;
          }

          else
          {
            v27 = 8;
          }

          v19 += v27;
          if (result)
          {
            v28 = 8;
          }

          else
          {
            v28 = 0;
          }

          v25 = (v25 + v28);
          *v8++ = *v26;
          if (v19 == v23)
          {
            while (v25 != v24)
            {
              v30 = *v25++;
              *v8++ = v30;
            }

            return result;
          }
        }

        while (v19 != v23)
        {
          v29 = *v19;
          v19 += 8;
          *v8++ = v29;
        }
      }

      else
      {
        sub_240C0F878(result, v21, a3, v22, a5, a6);
        sub_240C0F878(&v8[a4 >> 1], a2, a3, a4 - (a4 >> 1), v19, a6);

        return sub_240C0FCCC(v8, &v8[a4 >> 1], a2, a3, a4 >> 1, a4 - (a4 >> 1), v19, a6);
      }
    }

    else if (result != a2)
    {
      v12 = (result + 8);
      if ((result + 8) != a2)
      {
        v13 = 0;
        v14 = result;
        do
        {
          v15 = v14;
          v14 = v12;
          result = (*a3)(v12, v15);
          if (result)
          {
            v31 = *v14;
            v16 = v13;
            while (1)
            {
              *(v8 + v16 + 8) = *(v8 + v16);
              if (!v16)
              {
                break;
              }

              v16 -= 8;
              result = (*a3)(&v31, (v8 + v16));
              if ((result & 1) == 0)
              {
                v17 = (v8 + v16 + 8);
                goto LABEL_16;
              }
            }

            v17 = v8;
LABEL_16:
            *v17 = v31;
          }

          v12 = v14 + 1;
          v13 += 8;
        }

        while (v14 + 1 != a2);
      }
    }
  }

  return result;
}

uint64_t *sub_240C0FAD8(uint64_t *result, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *), unint64_t a4, uint64_t *a5)
{
  if (a4)
  {
    v5 = a5;
    v7 = result;
    if (a4 == 1)
    {
LABEL_9:
      *v5 = *v7;
      return result;
    }

    if (a4 == 2)
    {
      v10 = a2 - 1;
      result = (*a3)(a2 - 1, result);
      if (result)
      {
        v11 = v10;
      }

      else
      {
        v11 = v7;
      }

      *v5++ = *v11;
      if (!result)
      {
        v7 = v10;
      }

      goto LABEL_9;
    }

    if (a4 > 8)
    {
      v19 = &result[a4 >> 1];
      sub_240C0F878(result, v19, a3, a4 >> 1, a5, a4 >> 1);
      result = sub_240C0F878(&v7[a4 >> 1], a2, a3, a4 - (a4 >> 1), &v5[a4 >> 1], a4 - (a4 >> 1));
      v20 = &v7[a4 >> 1];
      while (v20 != a2)
      {
        result = (*a3)(v20, v7);
        if (result)
        {
          v21 = v20;
        }

        else
        {
          v21 = v7;
        }

        if (result)
        {
          v22 = 8;
        }

        else
        {
          v22 = 0;
        }

        v20 = (v20 + v22);
        if (result)
        {
          v23 = 0;
        }

        else
        {
          v23 = 8;
        }

        v7 = (v7 + v23);
        *v5++ = *v21;
        if (v7 == v19)
        {
          while (v20 != a2)
          {
            v25 = *v20++;
            *v5++ = v25;
          }

          return result;
        }
      }

      while (v7 != v19)
      {
        v24 = *v7++;
        *v5++ = v24;
      }
    }

    else if (result != a2)
    {
      v12 = result + 1;
      *a5 = *result;
      if (result + 1 != a2)
      {
        v13 = 0;
        v14 = a5;
        do
        {
          v15 = v14++;
          result = (*a3)(v12, v15);
          v16 = v14;
          if (result)
          {
            v15[1] = *v15;
            v16 = v5;
            if (v15 != v5)
            {
              v17 = v13;
              while (1)
              {
                v16 = (v5 + v17);
                result = (*a3)(v12, (v5 + v17 - 8));
                if (!result)
                {
                  break;
                }

                *(v5 + v17) = *(v5 + v17 - 8);
                v17 -= 8;
                if (!v17)
                {
                  v16 = v5;
                  break;
                }
              }
            }
          }

          v18 = *v12++;
          *v16 = v18;
          v13 += 8;
        }

        while (v12 != a2);
      }
    }
  }

  return result;
}

uint64_t sub_240C0FCCC(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (**a4)(uint64_t *, uint64_t *), uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (a6)
  {
    v10 = a6;
    v15 = result;
    while (v10 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      while (1)
      {
        result = (*a4)(a2, v15);
        if (result)
        {
          break;
        }

        ++v15;
        if (!--a5)
        {
          return result;
        }
      }

      v78 = a3;
      if (a5 >= v10)
      {
        if (a5 == 1)
        {
          v69 = *v15;
          *v15 = *a2;
          *a2 = v69;
          return result;
        }

        v20 = a5 / 2;
        v21 = a3;
        v18 = &v15[a5 / 2];
        v17 = a2;
        if (a2 != v21)
        {
          v73 = a8;
          v76 = v10;
          v22 = *a4;
          v23 = v78 - a2;
          v17 = a2;
          do
          {
            v24 = &v17[v23 >> 1];
            v25 = v22(v24, &v15[a5 / 2]);
            if (v25)
            {
              v23 += ~(v23 >> 1);
            }

            else
            {
              v23 >>= 1;
            }

            if (v25)
            {
              v17 = v24 + 1;
            }
          }

          while (v23);
          a8 = v73;
          v10 = v76;
          v20 = a5 / 2;
        }

        v16 = v17 - a2;
      }

      else
      {
        v16 = v10 / 2;
        v17 = &a2[v10 / 2];
        v18 = a2;
        if (a2 != v15)
        {
          v71 = v10 / 2;
          v75 = v10;
          v19 = a2 - v15;
          v18 = v15;
          do
          {
            if ((*a4)(v17, &v18[v19 >> 1]))
            {
              v19 >>= 1;
            }

            else
            {
              v18 += (v19 >> 1) + 1;
              v19 += ~(v19 >> 1);
            }
          }

          while (v19);
          v10 = v75;
          v16 = v71;
        }

        v20 = v18 - v15;
      }

      v26 = v17;
      v27 = a2 - v18;
      if (a2 != v18)
      {
        v26 = v18;
        v28 = v17 - a2;
        if (v17 != a2)
        {
          if (v18 + 1 == a2)
          {
            v74 = *v18;
            v77 = v10;
            v29 = a2;
            v30 = v17 - a2;
            v31 = v17 - a2;
            v32 = v20;
            v33 = v16;
            memmove(v18, v29, v31);
            v16 = v33;
            v20 = v32;
            v26 = (v18 + v30);
            v10 = v77;
            *v26 = v74;
          }

          else if (a2 + 1 == v17)
          {
            v34 = v10;
            v35 = *(v17 - 1);
            v26 = v18 + 1;
            if (v17 - 1 != v18)
            {
              v70 = v20;
              v72 = v16;
              memmove(v18 + 1, v18, (v17 - 1) - v18);
              v20 = v70;
              v16 = v72;
            }

            *v18 = v35;
            v10 = v34;
          }

          else
          {
            v36 = v27 >> 3;
            if (v27 >> 3 == v28 >> 3)
            {
              v37 = v18 + 1;
              v38 = a2 + 1;
              do
              {
                v39 = *(v37 - 1);
                *(v37 - 1) = *(v38 - 1);
                *(v38 - 1) = v39;
                if (v37 == a2)
                {
                  break;
                }

                ++v37;
              }

              while (v38++ != v17);
              v26 = a2;
            }

            else
            {
              v41 = v28 >> 3;
              v42 = v27 >> 3;
              do
              {
                v43 = v42;
                v42 = v41;
                v41 = v43 % v41;
              }

              while (v41);
              v44 = &v18[v42];
              do
              {
                v46 = *--v44;
                v45 = v46;
                v47 = (v44 + v27);
                v48 = v44;
                do
                {
                  v49 = v47;
                  *v48 = *v47;
                  v50 = &v47[v36];
                  v51 = __OFSUB__(v36, v17 - v47);
                  v53 = v36 - (v17 - v47);
                  v52 = (v53 < 0) ^ v51;
                  v47 = &v18[v53];
                  if (v52)
                  {
                    v47 = v50;
                  }

                  v48 = v49;
                }

                while (v47 != v44);
                *v49 = v45;
              }

              while (v44 != v18);
              v26 = (v18 + v28);
            }
          }
        }
      }

      a5 -= v20;
      v10 -= v16;
      if (v20 + v16 >= a5 + v10)
      {
        v54 = v20;
        v55 = a5;
        v56 = v16;
        result = sub_240C0FCCC(v26, v17, v78, a4, v55, v10, a7, a8);
        v17 = v18;
        v10 = v56;
        a5 = v54;
        a3 = v26;
      }

      else
      {
        result = sub_240C0FCCC(v15, v18, v26, a4, v20, v16, a7, a8);
        v15 = v26;
        a3 = v78;
      }

      a2 = v17;
      if (!v10)
      {
        return result;
      }
    }

    if (a5 <= v10)
    {
      if (a2 != v15)
      {
        v63 = a7;
        v64 = v15;
        do
        {
          v65 = *v64++;
          *v63 = v65;
          v63 += 8;
        }

        while (v64 != a2);
        while (a2 != a3)
        {
          result = (*a4)(a2, a7);
          if (result)
          {
            v66 = a2;
          }

          else
          {
            v66 = a7;
          }

          if (result)
          {
            v67 = 8;
          }

          else
          {
            v67 = 0;
          }

          a2 = (a2 + v67);
          if (result)
          {
            v68 = 0;
          }

          else
          {
            v68 = 8;
          }

          a7 += v68;
          *v15++ = *v66;
          if (a7 == v63)
          {
            return result;
          }
        }

        return memmove(v15, a7, v63 - a7);
      }
    }

    else if (a2 != a3)
    {
      v57 = a7;
      v58 = a2;
      do
      {
        v59 = *v58++;
        *v57 = v59;
        v57 += 8;
      }

      while (v58 != a3);
      while (a2 != v15)
      {
        result = (*a4)(v57 - 1, a2 - 1);
        if (result)
        {
          v60 = a2;
        }

        else
        {
          v60 = v57;
        }

        if (result)
        {
          --a2;
        }

        else
        {
          v57 -= 8;
        }

        *--a3 = *(v60 - 1);
        if (v57 == a7)
        {
          return result;
        }
      }

      if (v57 != a7)
      {
        v61 = 0x1FFFFFFFFFFFFFFFLL;
        do
        {
          v62 = *(v57 - 1);
          v57 -= 8;
          a3[v61--] = v62;
        }

        while (v57 != a7);
      }
    }
  }

  return result;
}

uint64_t sub_240C101AC(uint64_t result, int a2, unint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  if (result != a2)
  {
    *(a5 + *a4) = a2;
    *(a6 + (*a4)++) = 0;
    --a3;
  }

  if (a3 == 7)
  {
    *(a5 + *a4) = a2;
    *(a6 + *a4) = 0;
    v6 = *a4 + 1;
    *a4 = v6;
    v7 = 3;
LABEL_11:
    *(a5 + v6) = 16;
    *(a6 + *a4) = v7 & 3;
    v9 = *a4;
    v10 = *a4 + 1;
    *a4 = v10;
    if (v7 >= 4)
    {
      do
      {
        v7 = (v7 >> 2) - 1;
        *(a5 + v10) = 16;
        *(a6 + *a4) = v7 & 3;
        v9 = *a4;
        v10 = *a4 + 1;
        *a4 = v10;
      }

      while (v7 > 3);
    }

    if (v9 > v6)
    {
      v11 = v6;
      do
      {
        v12 = *(a5 + v11);
        *(a5 + v11) = *(a5 + v9);
        *(a5 + v9) = v12;
        ++v11;
        --v9;
      }

      while (v11 < v9);
      v10 = *a4;
    }

    for (i = v10 - 1; v6 < i; --i)
    {
      v14 = *(a6 + v6);
      *(a6 + v6) = *(a6 + i);
      *(a6 + i) = v14;
      ++v6;
    }

    return result;
  }

  v7 = a3 - 3;
  if (a3 >= 3)
  {
    v6 = *a4;
    goto LABEL_11;
  }

  if (a3)
  {
    v8 = *a4;
    do
    {
      *(a5 + v8) = a2;
      *(a6 + *a4) = 0;
      v8 = *a4 + 1;
      *a4 = v8;
      --a3;
    }

    while (a3);
  }

  return result;
}

uint64_t sub_240C102EC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v14 = *MEMORY[0x277D85DE8];
  memset(v13, 0, sizeof(v13));
  do
  {
    ++*(v13 + *(result + v3++));
  }

  while (a2 != v3);
  v4 = 0;
  v5 = 0;
  LOWORD(v13[0]) = 0;
  do
  {
    v5 = 2 * (v5 + *(v13 + v4));
    *&v12[v4 + 2] = v5;
    v4 += 2;
  }

  while (v4 != 30);
  v6 = 0;
  do
  {
    v7 = *(result + v6);
    if (*(result + v6))
    {
      v8 = *&v12[2 * *(result + v6)];
      *&v12[2 * *(result + v6)] = v8 + 1;
      v9 = qword_240C87E20[v8 & 0xF];
      if (v7 >= 5)
      {
        for (i = 4; i < v7; i += 4)
        {
          v8 >>= 4;
          v9 = qword_240C87E20[v8] | (16 * v9);
        }
      }

      *(a3 + 2 * v6) = v9 >> (-v7 & 3);
    }

    ++v6;
  }

  while (v6 != a2);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240C10404(unint64_t *a1, char *__src, unsigned int *a3, void **a4)
{
  if (*a1)
  {
    v7 = byte_240C87EBB[*a3] * byte_240C87EA0[*a3];
    if (*a1 == 1)
    {
      v8 = *a4;

      memcpy(v8, __src, v7 << 8);
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v12 = v7 << 8;
      v13 = a1 + 1;
      v14 = 1;
      do
      {
        bzero(a4[v11], v12);
        v16 = v13[3 * v11];
        v15 = v13[3 * v11 + 1];
        v17 = *a3;
        v18 = byte_240C87EA0[v17];
        v19 = byte_240C87EBB[v17];
        if (v19 >= v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = v19;
        }

        if (v19 <= v18)
        {
          v21 = v18;
        }

        else
        {
          v21 = v19;
        }

        v22 = v20 * v16;
        if (v20 * v16)
        {
          v23 = 0;
          v24 = 0;
          v25 = v21 * v16;
          v26 = v21 * v14;
          v27 = 32 * v21;
          v28 = v20 * v14;
          do
          {
            if (v25)
            {
              for (i = 0; i != v25; ++i)
              {
                if (v24 >= v28 || i >= v26)
                {
                  v30 = *&__src[4 * i + v23];
                  if (v10)
                  {
                    v30 -= (v30 + (v30 >> 31) + (v30 >> 31 << v10)) & (-1 << v10);
                  }

                  *(a4[v11] + 4 * i + v23) = (v30 + (v30 >> 31) + (v30 >> 31 << v15)) >> v15;
                }
              }
            }

            ++v24;
            v23 += v27;
          }

          while (v24 != v22);
        }

        if (!v15)
        {
          v14 = v16;
        }

        ++v11;
        v10 = v15;
      }

      while (v11 < *a1);
    }
  }
}

unsigned int *sub_240C105C8(unsigned int *result, int16x4_t a2)
{
  v2 = result + 1;
  v3 = result[1];
  v25 = result;
  v4 = *result;
  v5 = (v4 + 7) & 0x1FFFFFFF8;
  v6 = (v3 + 7) & 0x1FFFFFFF8;
  v7 = 120;
  do
  {
    *(v2 - 1) = v5;
    *v2 = v6;
    v2 += 10;
    v7 -= 40;
  }

  while (v7);
  v8 = 0;
  v9 = *(result + 2);
  v10 = vdupq_n_s64(v5 - v4 - 1);
  v23 = v3 - v6;
  v11 = xmmword_240C111C0;
  v12 = xmmword_240C111D0;
  v24 = v10;
  do
  {
    v26 = v8;
    v13 = *&v25[10 * v8 + 6];
    if (v3)
    {
      v14 = 0;
      v15 = (v13 + 4 * v4 + 8);
      do
      {
        if (v5 > v4)
        {
          v16 = 0;
          a2.i32[0] = *(v13 + v9 * v14 + 4 * v4 - 4);
          v17 = v15;
          do
          {
            v18 = vdupq_n_s64(v16);
            v19 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v18, v12)));
            if (vuzp1_s16(v19, a2).u8[0])
            {
              *(v17 - 2) = a2.i32[0];
            }

            if (vuzp1_s16(v19, a2).i8[2])
            {
              *(v17 - 1) = a2.i32[0];
            }

            if (vuzp1_s16(a2, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v18, v11)))).i32[1])
            {
              *v17 = a2.i32[0];
              v17[1] = a2.i32[0];
            }

            v16 += 4;
            v17 += 4;
          }

          while (((v5 - v4 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v16);
        }

        ++v14;
        v15 = (v15 + v9);
      }

      while (v14 != v3);
    }

    if (v3 < v6)
    {
      v20 = v23;
      v21 = (v13 + v9 * v3);
      do
      {
        result = memcpy(v21, (v13 + v9 * (v3 - 1)), 4 * v5);
        v21 += v9;
      }

      while (!__CFADD__(v20++, 1));
    }

    v8 = v26 + 1;
    v6 = (v3 + 7) & 0x1FFFFFFF8;
    v11 = xmmword_240C111C0;
    v10 = v24;
    v12 = xmmword_240C111D0;
  }

  while (v26 != 2);
  return result;
}

double sub_240C107A4(uint64_t a1, unsigned int *a2, unint64_t a3)
{
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  result = sub_240B23590(v8, ((a3 - 1 + *a2) / a3) + 8, ((a3 - 1 + a2[1]) / a3) + 8);
  if (v10)
  {
    *(a1 + 40) = v10;
  }

  else
  {
    v11 = v8[0];
    v12 = v8[1];
    v13 = v9;
    sub_240C10860(a2, a3, &v11);
    *(a1 + 40) = 0;
    result = *&v11;
    v7 = v12;
    *a1 = v11;
    *(a1 + 16) = v7;
    *(a1 + 32) = v13;
  }

  return result;
}

unsigned int *sub_240C10860(unsigned int *result, unint64_t a2, uint64_t a3)
{
  v3 = (a2 - 1 + *result) / a2;
  v4 = (a2 - 1 + result[1]) / a2;
  *a3 = v3;
  *(a3 + 4) = v4;
  if (v4)
  {
    v5 = 0;
    v7 = *(result + 2);
    v6 = *(result + 3);
    v8 = v7 >> 2;
    v10 = *(a3 + 16);
    v9 = *(a3 + 24);
    v11 = result[1];
    if (a2 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = a2;
    }

    v13 = v7 * a2;
    v14 = 4 * v8;
    do
    {
      if (v3)
      {
        v15 = 0;
        v16 = 0;
        v17 = v6;
        do
        {
          v18 = 0;
          v19 = 0;
          v20 = 0.0;
          v21 = v17;
          do
          {
            v22 = v15;
            v23 = v21;
            v24 = v12;
            if (v18 + v5 * a2 >= v11)
            {
              break;
            }

            do
            {
              if (v22 >= *result)
              {
                break;
              }

              v25 = *v23++;
              v20 = v20 + v25;
              ++v19;
              ++v22;
              --v24;
            }

            while (v24);
            ++v18;
            v21 = (v21 + v14);
          }

          while (v18 != v12);
          *(v9 + v10 * v5 + 4 * v16++) = v20 / v19;
          v17 += a2;
          v15 += a2;
        }

        while (v16 < v3);
      }

      ++v5;
      v6 = (v6 + v13);
    }

    while (v5 < v4);
  }

  return result;
}

void operator delete[]()
{
    ;
  }
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

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}