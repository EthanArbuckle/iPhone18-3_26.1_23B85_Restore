void sub_233742454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a12)
  {
    sub_2337432D8((v35 - 112), a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_233742540(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7)
{
  v150 = a5;
  if (!a5)
  {
    return;
  }

  do
  {
    v163 = a2;
    if (v150 <= a7 || a4 <= a7)
    {
      if (a4 <= v150)
      {
        if (a2 == a1)
        {
          v82 = 0;
          v83 = a6;
        }

        else
        {
          v82 = 0;
          v83 = a6;
          v114 = a6;
          v115 = a1;
          do
          {
            v116 = *v115;
            *(v114 + 2) = *(v115 + 16);
            *v114 = v116;
            v114 = (v114 + 24);
            *(v115 + 8) = 0;
            *(v115 + 16) = 0;
            *v115 = 0;
            v115 += 24;
            ++v82;
          }

          while (v115 != a2);
          v117 = a6;
          v118 = a3;
          while (a2 != v118)
          {
            if (*(a2 + 23) < 0)
            {
              sub_233731FB8(&v172, *a2, *(a2 + 8));
            }

            else
            {
              v119 = *a2;
              v173 = *(a2 + 16);
              v172 = v119;
            }

            v164 = a2;
            if (*(v117 + 23) < 0)
            {
              sub_233731FB8(&v170, *v117, *(v117 + 1));
            }

            else
            {
              v120 = *v117;
              v171 = *(v117 + 2);
              v170 = v120;
            }

            v121 = SHIBYTE(v173);
            if (v173 >= 0)
            {
              v122 = &v172;
            }

            else
            {
              v122 = v172;
            }

            v162 = atoi(v122);
            v123 = HIBYTE(v171);
            v124 = v170;
            if (v171 >= 0)
            {
              v125 = &v170;
            }

            else
            {
              v125 = v170;
            }

            v160 = atoi(v125);
            v126 = *(&v172 + 1);
            if (v121 >= 0)
            {
              v126 = v121;
            }

            v127 = &v122[v126];
            v159 = v124;
            if (v126 >= 4)
            {
              v128 = v122;
              do
              {
                v129 = memchr(v128, 46, v126 - 3);
                if (!v129)
                {
                  break;
                }

                if (*v129 == 1735287854)
                {
                  goto LABEL_276;
                }

                v128 = v129 + 1;
                v126 = v127 - v128;
              }

              while (v127 - v128 > 3);
            }

            v129 = v127;
LABEL_276:
            v131 = v129 == v127 || v129 - v122 == -1;
            if ((v123 & 0x80u) == 0)
            {
              v132 = v123;
            }

            else
            {
              v132 = *(&v170 + 1);
            }

            v133 = &v125[v132];
            if (v132 >= 4)
            {
              v134 = v125;
              do
              {
                v135 = memchr(v134, 46, v132 - 3);
                if (!v135)
                {
                  break;
                }

                if (*v135 == 1735287854)
                {
                  goto LABEL_291;
                }

                v134 = v135 + 1;
                v132 = v133 - v134;
              }

              while (v133 - v134 > 3);
            }

            v135 = v133;
LABEL_291:
            v136 = v135 != v133 && v131;
            v137 = v135 - v125 != -1 && v136;
            if (v162 == v160)
            {
              v138 = v137;
            }

            else
            {
              v138 = v162 > v160;
            }

            if ((v123 & 0x80) != 0)
            {
              operator delete(v159);
              LOBYTE(v121) = HIBYTE(v173);
            }

            if ((v121 & 0x80) != 0)
            {
              operator delete(v172);
            }

            v139 = *(a1 + 23);
            if (v138)
            {
              v83 = a6;
              if (v139 < 0)
              {
                operator delete(*a1);
              }

              v140 = *v164;
              *(a1 + 16) = *(v164 + 2);
              *a1 = v140;
              *(v164 + 23) = 0;
              *v164 = 0;
              a2 = v164 + 24;
            }

            else
            {
              v83 = a6;
              if (v139 < 0)
              {
                operator delete(*a1);
              }

              v141 = *v117;
              *(a1 + 16) = *(v117 + 2);
              *a1 = v141;
              *(v117 + 23) = 0;
              *v117 = 0;
              v117 = (v117 + 24);
              a2 = v164;
            }

            a1 += 24;
            v118 = a3;
            if (v114 == v117)
            {
              goto LABEL_320;
            }
          }

          sub_233740C80(&v169, v117, v114, a1);
        }
      }

      else
      {
        if (a2 == a3)
        {
          return;
        }

        v81 = 0;
        v82 = 0;
        v83 = a6;
        v84 = a3;
        do
        {
          v85 = a6 + v81;
          v86 = (a2 + v81);
          v87 = *(a2 + v81);
          *(v85 + 16) = *(a2 + v81 + 16);
          *v85 = v87;
          v86[1] = 0;
          v86[2] = 0;
          *v86 = 0;
          ++v82;
          v81 += 24;
        }

        while ((a2 + v81) != a3);
        v88 = a3 - 24;
        v89 = (a6 + v81);
        while (v163 != a1)
        {
          v146 = v84;
          if (*(v89 - 1) < 0)
          {
            sub_233731FB8(&v172, *(v89 - 3), *(v89 - 2));
          }

          else
          {
            v90 = *(v89 - 24);
            v173 = *(v89 - 1);
            v172 = v90;
          }

          if (*(v163 - 1) < 0)
          {
            sub_233731FB8(&v170, *(v163 - 24), *(v163 - 16));
          }

          else
          {
            v91 = *(v163 - 24);
            v171 = *(v163 - 8);
            v170 = v91;
          }

          v92 = SHIBYTE(v173);
          if (v173 >= 0)
          {
            v93 = &v172;
          }

          else
          {
            v93 = v172;
          }

          v154 = atoi(v93);
          v94 = HIBYTE(v171);
          v148 = v170;
          if (v171 >= 0)
          {
            v95 = &v170;
          }

          else
          {
            v95 = v170;
          }

          v151 = atoi(v95);
          v96 = *(&v172 + 1);
          if (v92 >= 0)
          {
            v96 = v92;
          }

          v97 = &v93[v96];
          if (v96 >= 4)
          {
            v98 = v93;
            do
            {
              v99 = memchr(v98, 46, v96 - 3);
              if (!v99)
              {
                break;
              }

              if (*v99 == 1735287854)
              {
                goto LABEL_207;
              }

              v98 = v99 + 1;
              v96 = v97 - v98;
            }

            while (v97 - v98 > 3);
          }

          v99 = v97;
LABEL_207:
          v101 = v99 == v97 || v99 - v93 == -1;
          if ((v94 & 0x80u) == 0)
          {
            v102 = v94;
          }

          else
          {
            v102 = *(&v170 + 1);
          }

          v103 = &v95[v102];
          if (v102 >= 4)
          {
            v104 = v95;
            do
            {
              v105 = memchr(v104, 46, v102 - 3);
              if (!v105)
              {
                break;
              }

              if (*v105 == 1735287854)
              {
                goto LABEL_222;
              }

              v104 = v105 + 1;
              v102 = v103 - v104;
            }

            while (v103 - v104 > 3);
          }

          v105 = v103;
LABEL_222:
          v106 = v105 != v103 && v101;
          v107 = v105 - v95 != -1 && v106;
          if (v154 == v151)
          {
            v108 = v107;
          }

          else
          {
            v108 = v154 > v151;
          }

          if ((v94 & 0x80) != 0)
          {
            operator delete(v148);
            LOBYTE(v92) = HIBYTE(v173);
          }

          v83 = a6;
          if ((v92 & 0x80) != 0)
          {
            operator delete(v172);
          }

          v84 = v146 - 3;
          v109 = !v108;
          if (v108)
          {
            v110 = (v163 - 24);
          }

          else
          {
            v110 = (v89 - 24);
          }

          if (v108)
          {
            v111 = (v163 - 1);
          }

          else
          {
            v111 = v89 - 1;
          }

          v112 = v163;
          if (!v109)
          {
            v112 = v163 - 24;
          }

          v163 = v112;
          if (v109)
          {
            v89 = (v89 - 24);
          }

          if (*(v146 - 1) < 0)
          {
            operator delete(*v84);
          }

          v113 = *v110;
          *(v146 - 1) = *(v110 + 2);
          *v84 = v113;
          *v111 = 0;
          *v110 = 0;
          v88 -= 24;
          if (v89 == a6)
          {
            goto LABEL_320;
          }
        }

        for (; v89 != v83; v89 = (v89 - 24))
        {
          if (v88[23] < 0)
          {
            operator delete(*v88);
          }

          v144 = *(v89 - 24);
          *(v88 + 2) = *(v89 - 1);
          *v88 = v144;
          v88 -= 24;
          *(v89 - 1) = 0;
          *(v89 - 24) = 0;
        }
      }

LABEL_320:
      if (v83 && v82)
      {
        do
        {
          if (*(a6 + 23) < 0)
          {
            operator delete(*a6);
          }

          a6 = (a6 + 24);
          --v82;
        }

        while (v82);
      }

      return;
    }

    if (!a4)
    {
      return;
    }

    while (1)
    {
      if (*(a2 + 23) < 0)
      {
        sub_233731FB8(__p, *a2, *(a2 + 8));
      }

      else
      {
        v10 = *a2;
        v168 = *(a2 + 16);
        *__p = v10;
      }

      if (*(a1 + 23) < 0)
      {
        sub_233731FB8(&__dst, *a1, *(a1 + 8));
      }

      else
      {
        v11 = *a1;
        v166 = *(a1 + 16);
        __dst = v11;
      }

      v12 = SHIBYTE(v168);
      if (v168 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      v14 = atoi(v13);
      v15 = HIBYTE(v166);
      v16 = __dst;
      if (v166 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      v18 = atoi(p_dst);
      v19 = __p[1];
      if (v12 >= 0)
      {
        v19 = v12;
      }

      v20 = v13 + v19;
      if (v19 >= 4)
      {
        v21 = v13;
        do
        {
          v22 = memchr(v21, 46, v19 - 3);
          if (!v22)
          {
            break;
          }

          if (*v22 == 1735287854)
          {
            goto LABEL_25;
          }

          v21 = (v22 + 1);
          v19 = v20 - v21;
        }

        while (v20 - v21 > 3);
      }

      v22 = v20;
LABEL_25:
      v24 = v22 == v20 || v22 - v13 == -1;
      if ((v15 & 0x80u) == 0)
      {
        v25 = v15;
      }

      else
      {
        v25 = *(&__dst + 1);
      }

      v26 = &p_dst[v25];
      if (v25 >= 4)
      {
        v27 = p_dst;
        do
        {
          v28 = memchr(v27, 46, v25 - 3);
          if (!v28)
          {
            break;
          }

          if (*v28 == 1735287854)
          {
            goto LABEL_40;
          }

          v27 = v28 + 1;
          v25 = v26 - v27;
        }

        while (v26 - v27 > 3);
      }

      v28 = v26;
LABEL_40:
      v29 = v28 != v26 && v24;
      v30 = v28 - p_dst != -1 && v29;
      v31 = v14 == v18 ? v30 : v14 > v18;
      if ((v15 & 0x80) != 0)
      {
        break;
      }

      if ((v12 & 0x80) != 0)
      {
        goto LABEL_54;
      }

LABEL_51:
      if (v31)
      {
        goto LABEL_57;
      }

LABEL_55:
      a1 += 24;
      --a4;
      a2 = v163;
      if (!a4)
      {
        return;
      }
    }

    operator delete(v16);
    if ((v168 & 0x8000000000000000) == 0)
    {
      goto LABEL_51;
    }

LABEL_54:
    operator delete(__p[0]);
    if (!v31)
    {
      goto LABEL_55;
    }

LABEL_57:
    if (a4 < v150)
    {
      a2 = v163 + 24 * (v150 / 2);
      v32 = v163;
      if (v163 == a1)
      {
LABEL_59:
        v33 = 0xAAAAAAAAAAAAAAABLL * ((v32 - a1) >> 3);
        v34 = v163;
        v35 = v150 / 2;
        goto LABEL_173;
      }

      v58 = 0xAAAAAAAAAAAAAAABLL * ((v163 - a1) >> 3);
      v32 = a1;
      while (2)
      {
        if (*(a2 + 23) < 0)
        {
          sub_233731FB8(&v172, *a2, *(a2 + 8));
        }

        else
        {
          v59 = *a2;
          v173 = *(a2 + 16);
          v172 = v59;
        }

        v60 = v32 + 24 * (v58 >> 1);
        if (*(v60 + 23) < 0)
        {
          sub_233731FB8(&v170, *v60, *(v60 + 8));
        }

        else
        {
          v61 = *v60;
          v171 = *(v60 + 16);
          v170 = v61;
        }

        v62 = SHIBYTE(v173);
        if (v173 >= 0)
        {
          v63 = &v172;
        }

        else
        {
          v63 = v172;
        }

        v158 = atoi(v63);
        v64 = HIBYTE(v171);
        v153 = v170;
        if (v171 >= 0)
        {
          v65 = &v170;
        }

        else
        {
          v65 = v170;
        }

        v156 = atoi(v65);
        v66 = *(&v172 + 1);
        if (v62 >= 0)
        {
          v66 = v62;
        }

        v67 = &v63[v66];
        if (v66 >= 4)
        {
          v68 = v63;
          do
          {
            v69 = memchr(v68, 46, v66 - 3);
            if (!v69)
            {
              break;
            }

            if (*v69 == 1735287854)
            {
              goto LABEL_139;
            }

            v68 = v69 + 1;
            v66 = v67 - v68;
          }

          while (v67 - v68 > 3);
        }

        v69 = v67;
LABEL_139:
        v71 = v69 == v67 || v69 - v63 == -1;
        if ((v64 & 0x80u) == 0)
        {
          v72 = v64;
        }

        else
        {
          v72 = *(&v170 + 1);
        }

        v73 = &v65[v72];
        if (v72 >= 4)
        {
          v74 = v65;
          do
          {
            v75 = memchr(v74, 46, v72 - 3);
            if (!v75)
            {
              break;
            }

            if (*v75 == 1735287854)
            {
              goto LABEL_154;
            }

            v74 = v75 + 1;
            v72 = v73 - v74;
          }

          while (v73 - v74 > 3);
        }

        v75 = v73;
LABEL_154:
        v76 = v75 != v73 && v71;
        v77 = v75 - v65 != -1 && v76;
        if (v158 == v156)
        {
          v78 = v77;
        }

        else
        {
          v78 = v158 > v156;
        }

        if ((v64 & 0x80) != 0)
        {
          operator delete(v153);
          if (v173 < 0)
          {
            goto LABEL_171;
          }
        }

        else
        {
          if ((v62 & 0x80) == 0)
          {
            goto LABEL_165;
          }

LABEL_171:
          operator delete(v172);
        }

LABEL_165:
        if (v78)
        {
          v58 >>= 1;
        }

        else
        {
          v32 = v60 + 24;
          v58 += ~(v58 >> 1);
        }

        a2 = v163 + 24 * (v150 / 2);
        if (!v58)
        {
          goto LABEL_59;
        }

        continue;
      }
    }

    v34 = v163;
    if (a4 == 1)
    {
      v142 = *a1;
      v173 = *(a1 + 16);
      v172 = v142;
      v143 = *v163;
      *(a1 + 16) = *(v163 + 16);
      *a1 = v143;
      *v163 = v172;
      *(v163 + 16) = v173;
      return;
    }

    v32 = a1 + 24 * (a4 / 2);
    a2 = v163;
    if (v163 == a3)
    {
      goto LABEL_172;
    }

    a2 = v163;
    v36 = 0xAAAAAAAAAAAAAAABLL * ((a3 - v163) >> 3);
    while (2)
    {
      v37 = (a2 + 24 * (v36 >> 1));
      if (*(v37 + 23) < 0)
      {
        sub_233731FB8(&v172, *v37, *(v37 + 1));
      }

      else
      {
        v38 = *v37;
        v173 = *(v37 + 2);
        v172 = v38;
      }

      v161 = a2;
      if (*(v32 + 23) < 0)
      {
        sub_233731FB8(&v170, *v32, *(v32 + 8));
      }

      else
      {
        v39 = *v32;
        v171 = *(v32 + 16);
        v170 = v39;
      }

      v40 = SHIBYTE(v173);
      if (v173 >= 0)
      {
        v41 = &v172;
      }

      else
      {
        v41 = v172;
      }

      v157 = atoi(v41);
      v42 = HIBYTE(v171);
      v152 = v170;
      if (v171 >= 0)
      {
        v43 = &v170;
      }

      else
      {
        v43 = v170;
      }

      v155 = atoi(v43);
      v44 = *(&v172 + 1);
      if (v40 >= 0)
      {
        v44 = v40;
      }

      v45 = &v41[v44];
      if (v44 >= 4)
      {
        v46 = v41;
        do
        {
          v47 = memchr(v46, 46, v44 - 3);
          if (!v47)
          {
            break;
          }

          if (*v47 == 1735287854)
          {
            goto LABEL_83;
          }

          v46 = v47 + 1;
          v44 = v45 - v46;
        }

        while (v45 - v46 > 3);
      }

      v47 = v45;
LABEL_83:
      v49 = v47 == v45 || v47 - v41 == -1;
      if ((v42 & 0x80u) == 0)
      {
        v50 = v42;
      }

      else
      {
        v50 = *(&v170 + 1);
      }

      v51 = &v43[v50];
      if (v50 >= 4)
      {
        v52 = v43;
        do
        {
          v53 = memchr(v52, 46, v50 - 3);
          if (!v53)
          {
            break;
          }

          if (*v53 == 1735287854)
          {
            goto LABEL_98;
          }

          v52 = v53 + 1;
          v50 = v51 - v52;
        }

        while (v51 - v52 > 3);
      }

      v53 = v51;
LABEL_98:
      v54 = v53 != v51 && v49;
      v55 = v53 - v43 != -1 && v54;
      if (v157 == v155)
      {
        v56 = v55;
      }

      else
      {
        v56 = v157 > v155;
      }

      if ((v42 & 0x80) != 0)
      {
        operator delete(v152);
        if (v173 < 0)
        {
          goto LABEL_117;
        }
      }

      else
      {
        if ((v40 & 0x80) == 0)
        {
          goto LABEL_109;
        }

LABEL_117:
        operator delete(v172);
      }

LABEL_109:
      v57 = !v56;
      if (v56)
      {
        v36 += ~(v36 >> 1);
      }

      else
      {
        v36 >>= 1;
      }

      a2 = v161;
      if (!v57)
      {
        a2 = v37 + 24;
      }

      if (v36)
      {
        continue;
      }

      break;
    }

    v34 = v163;
LABEL_172:
    v35 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v34) >> 3);
    v33 = a4 / 2;
LABEL_173:
    v79 = a2;
    if (v32 != v34)
    {
      v79 = v32;
      if (v34 != a2)
      {
        v79 = sub_233743338(v32, v34, a2);
      }
    }

    a4 -= v33;
    v80 = v150 - v35;
    if (v33 + v35 >= a4 + v150 - v35)
    {
      sub_233742540(v79, a2, a3, a4, v150 - v35, a6, a7);
      a2 = v32;
      v80 = v35;
      a4 = v33;
      a3 = v79;
    }

    else
    {
      sub_233742540(a1, v32, v79, v33, v35, a6, a7);
      a1 = v79;
    }

    v150 = v80;
  }

  while (v80);
}

void sub_23374324C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a13)
  {
    v32 = a13;
    do
    {
      if (*(v32 + 23) < 0)
      {
        operator delete(*v32);
      }

      v32 += 24;
      --v30;
    }

    while (v30);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337432D8(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    v5 = 0;
    do
    {
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
        v2 = *a1;
      }

      ++v5;
      a2 += 24;
    }

    while (v5 < v2);
  }
}

__int128 *sub_233743338(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v3 = *(a1 + 2);
  v4 = *a1;
  v5 = *(a2 + 2);
  *a1 = *a2;
  *(a1 + 2) = v5;
  *a2 = v4;
  *(a2 + 2) = v3;
  result = (a1 + 24);
  for (i = (a2 + 24); i != a3; i = (i + 24))
  {
    if (result == a2)
    {
      a2 = i;
    }

    v8 = *(result + 2);
    v9 = *result;
    v10 = *(i + 2);
    *result = *i;
    *(result + 2) = v10;
    *i = v9;
    *(i + 2) = v8;
    result = (result + 24);
  }

  if (result != a2)
  {
    v11 = result;
    v12 = a2;
    do
    {
      while (1)
      {
        v15 = *(v11 + 2);
        v14 = *v11;
        v13 = *v12;
        *(v11 + 2) = *(v12 + 2);
        *v11 = v13;
        v11 = (v11 + 24);
        *(v12 + 2) = v15;
        *v12 = v14;
        v12 = (v12 + 24);
        if (v12 == a3)
        {
          break;
        }

        if (v11 == a2)
        {
          a2 = v12;
        }
      }

      v12 = a2;
    }

    while (v11 != a2);
  }

  return result;
}

uint64_t *sub_23374340C(uint64_t *result, int *a2)
{
  v2 = *a2;
  *result = v2;
  if (v2 < 0)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

void *sub_23374346C(void *result, int *a2)
{
  v2 = *result - *a2;
  v3 = (*(&v2 + 1) << 63) >> 63;
  *result = v2;
  if (v3 != *(&v2 + 1) || v3 < 0)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

uint64_t *sub_2337434E4(uint64_t *result, _DWORD *a2)
{
  LODWORD(v2) = *a2;
  v3 = *result;
  if (*a2 >= 0)
  {
    v2 = v2;
  }

  else
  {
    v2 = -v2;
  }

  v4 = (v2 * v3) >> 64;
  v5 = v2 * v3;
  if (*a2 >= 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = -v5;
  }

  v7 = v4 != 0;
  if (v5)
  {
    v8 = *a2 < 0;
  }

  else
  {
    v8 = 0;
  }

  *result = v6;
  if (v7 || v8)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

void *sub_233743570(void *result, void *a2)
{
  v2 = __CFADD__(*result, *a2);
  *result += *a2;
  if (v2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

void sub_233743D18(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_233721B78(a1);
  }

  _Unwind_Resume(a1);
}

void sub_233743D34(uint64_t a1)
{
  v2 = sub_23378E104();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWVignetteTable", &unk_233945DBE, v5, 2u);
  }
}

double sub_233743DBC(uint64_t a1, int a2)
{
  if (a2)
  {
    return 0.0;
  }

  return result;
}

void sub_2337444F8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {

    v2[2](v2);
    __cxa_begin_catch(exception_object);
    v7 = sub_2338C0490();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_2338F86A4();
    }

    __cxa_end_catch();
    JUMPOUT(0x233744308);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337445CC(uint64_t a1)
{
  v2 = sub_23378E104();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWLensCorrectionVignetteFilter", &unk_233945DBE, v5, 2u);
  }
}

double sub_233744654(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    return 0.0;
  }

  return result;
}

void sub_233744E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  if (a2)
  {

    v15[2](v15);
    __cxa_begin_catch(exception_object);
    v22 = sub_2338C0490();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_2338F871C();
    }

    __cxa_end_catch();
    JUMPOUT(0x233744D4CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_233744F04(uint64_t a1)
{
  v2 = sub_23378E104();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWLensCorrectionLateralCAFilter", &unk_233945DBE, v5, 2u);
  }
}

double sub_233744F8C(double a1, double a2, double a3, double a4, double a5, double a6, float a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  v11 = a1;
  v12 = a2;
  v13 = a5;
  v14 = a6;
  v15 = v13 * 0.5;
  v16 = a3;
  v17 = a4;
  v18 = ((v11 - v16) / v13) * (a10 - 1);
  v19 = (1.0 - ((v12 - v17) / v14)) * (a11 - 1);
  v20 = floorf(v18);
  v21 = (a10 - 1);
  v22 = fmin(fmax(v20, 0.0), v21);
  v23 = floorf(v19);
  v24 = (a11 - 1);
  v25 = fmin(fmax(v23, 0.0), v24);
  v26 = fmin(fmax((v20 + 1.0), 0.0), v21);
  v27 = v14 * 0.5;
  v28 = v18 - v22;
  v29 = v19 - v25;
  v30 = v25 * a10;
  v31 = (a9 + 16 * (v30 + v22));
  v32 = fmin(fmax((v23 + 1.0), 0.0), v24) * a10;
  v33 = a9 + 16 * (v32 + v22);
  LODWORD(v21) = *v33;
  LODWORD(v25) = *(v33 + 4);
  LODWORD(v24) = *(v33 + 8);
  v34 = *(v33 + 12);
  v35 = (a9 + 16 * (v30 + v26));
  v36 = *v35;
  v37 = v35[1];
  v38 = v35[2];
  v39 = v35[3];
  v40 = (a9 + 16 * (v32 + v26));
  v41 = ((1.0 - v28) * *v31) + (v28 * v36);
  *&v21 = (1.0 - v28) * *&v21;
  v42 = v28 * *v40;
  v43 = (1.0 - v29) * (((1.0 - v28) * v31[1]) + (v28 * v37));
  v44 = (1.0 - v29) * (((1.0 - v28) * v31[2]) + (v28 * v38));
  v45 = (1.0 - v29) * (((1.0 - v28) * v31[3]) + (v28 * v39));
  *&v25 = v29 * (((1.0 - v28) * *&v25) + (v28 * v40[1]));
  *&v24 = v29 * (((1.0 - v28) * *&v24) + (v28 * v40[2]));
  v46 = v29 * (((1.0 - v28) * v34) + (v28 * v40[3]));
  v47 = (v15 * ((((1.0 - v29) * v41) + (v29 * (*&v21 + v42))) + 1.0)) + v16;
  v48 = (v27 * ((v43 + *&v25) + 1.0)) + v17;
  v49 = (v15 * ((v44 + *&v24) + 1.0)) + v16;
  v50 = (v27 * ((v45 + v46) + 1.0)) + v17;
  v51 = (1.0 - a7) * v11;
  v52 = (1.0 - a7) * v12;
  v53 = v52 + (v48 * a7);
  v54 = v51 + (v49 * a7);
  v55 = v52 + (v50 * a7);
  v62.origin.x = v11;
  v62.origin.y = v12;
  v64.origin.x = (v51 + (v47 * a7));
  v64.origin.y = v53;
  v62.size.width = 0.0;
  v62.size.height = 0.0;
  v64.size.width = 0.0;
  v64.size.height = 0.0;
  v63 = CGRectUnion(v62, v64);
  v58 = 0;
  v59 = 0;

  v56 = v54;
  v57 = v55;
  *&result = CGRectUnion(v63, *(&v58 - 2));
  return result;
}

double sub_2337451F0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  if (a2 > 0)
  {
    return a6;
  }

  objc_msgSend_bytes(*(*(a1 + 32) + 96), a2, a3, a4, a5);
  objc_msgSend_intValue(*(*(a1 + 32) + 104), v11, v12, v13, v14);
  objc_msgSend_intValue(*(*(a1 + 32) + 112), v15, v16, v17, v18);
  v9 = *MEMORY[0x277CBF398];
  v19 = *(MEMORY[0x277CBF398] + 8);
  v21 = *(MEMORY[0x277CBF398] + 16);
  v20 = *(MEMORY[0x277CBF398] + 24);
  v22 = 0.0;
  v23 = 0.0;
  do
  {
    v51 = v22;
    v62.origin.x = (*(*(a1 + 40) + 16))(a6 + a8 * v23, a7, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
    v62.origin.y = v24;
    v62.size.width = v25;
    v62.size.height = v26;
    v54.origin.x = v9;
    v54.origin.y = v19;
    v54.size.width = v21;
    v54.size.height = v20;
    v55 = CGRectUnion(v54, v62);
    x = v55.origin.x;
    y = v55.origin.y;
    width = v55.size.width;
    height = v55.size.height;
    v63.origin.x = (*(*(a1 + 40) + 16))(a6 + a8 * (1.0 - v23), a7 + a9, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
    v63.origin.y = v31;
    v63.size.width = v32;
    v63.size.height = v33;
    v56.origin.x = x;
    v56.origin.y = y;
    v56.size.width = width;
    v56.size.height = height;
    v57 = CGRectUnion(v56, v63);
    v34 = v57.origin.x;
    v35 = v57.origin.y;
    v36 = v57.size.width;
    v37 = v57.size.height;
    v64.origin.x = (*(*(a1 + 40) + 16))(a6, a7 + a9 * (1.0 - v23), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
    v64.origin.y = v38;
    v64.size.width = v39;
    v64.size.height = v40;
    v58.origin.x = v34;
    v58.origin.y = v35;
    v58.size.width = v36;
    v58.size.height = v37;
    v59 = CGRectUnion(v58, v64);
    v41 = v59.origin.x;
    v42 = v59.origin.y;
    v43 = v59.size.width;
    v44 = v59.size.height;
    v65.origin.x = (*(*(a1 + 40) + 16))(a6 + a8, a7 + a9 * v23, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
    v65.origin.y = v45;
    v65.size.width = v46;
    v65.size.height = v47;
    v60.origin.x = v41;
    v60.origin.y = v42;
    v60.size.width = v43;
    v60.size.height = v44;
    v61 = CGRectUnion(v60, v65);
    v9 = v61.origin.x;
    v19 = v61.origin.y;
    v21 = v61.size.width;
    v20 = v61.size.height;
    v22 = v51 + 0.125;
    v23 = (v51 + 0.125);
  }

  while (v23 < 0.99999);
  return v9;
}

void sub_233745E00(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_233721B78(a1);
  }

  _Unwind_Resume(a1);
}

void sub_233745E10(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x233745D60);
}

void sub_233745E28(uint64_t a1)
{
  v2 = sub_23378E104();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWLensCorrectionDistortionFilter", &unk_233945DBE, v5, 2u);
  }
}

double sub_233745EB0(double a1, double a2, double a3, double a4, double a5, double a6, float a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  v11 = a1;
  v12 = a2;
  v13 = a5;
  v14 = a6;
  v15 = a3;
  v16 = a4;
  v17 = ((v11 - v15) / v13) * (a10 - 1);
  v18 = floorf(v17);
  v19 = (a10 - 1);
  v20 = fmin(fmax(v18, 0.0), v19);
  v21 = (1.0 - ((v12 - v16) / v14)) * (a11 - 1);
  v22 = floorf(v21);
  v23 = (a11 - 1);
  v24 = fmin(fmax(v22, 0.0), v23);
  v25 = fmin(fmax((v18 + 1.0), 0.0), v19);
  v26 = v17 - v20;
  v27 = fmin(fmax((v22 + 1.0), 0.0), v23) * a10;
  return (((1.0 - a7) * v11) + ((((v13 * 0.5) * ((((1.0 - (v21 - v24)) * (((1.0 - v26) * *(a9 + 8 * (v24 * a10 + v20))) + (v26 * *(a9 + 8 * (v24 * a10 + v25))))) + ((v21 - v24) * (((1.0 - v26) * *(a9 + 8 * (v27 + v20))) + (v26 * *(a9 + 8 * (v27 + v25)))))) + 1.0)) + v15) * a7));
}

double sub_233746040(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  if (a2 > 0)
  {
    return a6;
  }

  objc_msgSend_bytes(*(*(a1 + 32) + 96), a2, a3, a4, a5);
  objc_msgSend_intValue(*(*(a1 + 32) + 104), v11, v12, v13, v14);
  objc_msgSend_intValue(*(*(a1 + 32) + 112), v15, v16, v17, v18);
  v9 = *MEMORY[0x277CBF398];
  v19 = *(MEMORY[0x277CBF398] + 8);
  v21 = *(MEMORY[0x277CBF398] + 16);
  v20 = *(MEMORY[0x277CBF398] + 24);
  v22 = 0.0;
  v23 = 0.0;
  do
  {
    v51 = v22;
    v62.origin.x = (*(*(a1 + 40) + 16))(a6 + a8 * v23, a7, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
    v62.origin.y = v24;
    v62.size.width = v25;
    v62.size.height = v26;
    v54.origin.x = v9;
    v54.origin.y = v19;
    v54.size.width = v21;
    v54.size.height = v20;
    v55 = CGRectUnion(v54, v62);
    x = v55.origin.x;
    y = v55.origin.y;
    width = v55.size.width;
    height = v55.size.height;
    v63.origin.x = (*(*(a1 + 40) + 16))(a6 + a8 * (1.0 - v23), a7 + a9, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
    v63.origin.y = v31;
    v63.size.width = v32;
    v63.size.height = v33;
    v56.origin.x = x;
    v56.origin.y = y;
    v56.size.width = width;
    v56.size.height = height;
    v57 = CGRectUnion(v56, v63);
    v34 = v57.origin.x;
    v35 = v57.origin.y;
    v36 = v57.size.width;
    v37 = v57.size.height;
    v64.origin.x = (*(*(a1 + 40) + 16))(a6, a7 + a9 * (1.0 - v23), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
    v64.origin.y = v38;
    v64.size.width = v39;
    v64.size.height = v40;
    v58.origin.x = v34;
    v58.origin.y = v35;
    v58.size.width = v36;
    v58.size.height = v37;
    v59 = CGRectUnion(v58, v64);
    v41 = v59.origin.x;
    v42 = v59.origin.y;
    v43 = v59.size.width;
    v44 = v59.size.height;
    v65.origin.x = (*(*(a1 + 40) + 16))(a6 + a8, a7 + a9 * v23, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
    v65.origin.y = v45;
    v65.size.width = v46;
    v65.size.height = v47;
    v60.origin.x = v41;
    v60.origin.y = v42;
    v60.size.width = v43;
    v60.size.height = v44;
    v61 = CGRectUnion(v60, v65);
    v9 = v61.origin.x;
    v19 = v61.origin.y;
    v21 = v61.size.width;
    v20 = v61.size.height;
    v22 = v51 + 0.125;
    v23 = (v51 + 0.125);
  }

  while (v23 < 0.99999);
  return v9;
}

void sub_2337463D4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_2337464DC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_233746F80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12)
{
  __cxa_guard_abort(&qword_27DE37DC0);

  _Unwind_Resume(a1);
}

void sub_2337471F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

_BYTE *sub_2337477D0(_BYTE *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2337304FC();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __b[23] = __len;
  if (__len)
  {
    memset(__b, __c, __len);
  }

  __b[__len] = 0;
  return __b;
}

void sub_233747880(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v6, a3, v7, v8);
    v14 = objc_msgSend_stringValue(v9, v10, v11, v12, v13);
    objc_msgSend_dumpMemoryInfoKey_indent_(v5, v15, v14, *(a1 + 40) + 1, v16);
    v28 = v5;
  }

  else
  {
    NSClassFromString(&cfstr_Nsblock.isa);
    isKindOfClass = objc_opt_isKindOfClass();
    v20 = v5;
    if (isKindOfClass)
    {
      v21 = (*(v5 + 2))(v5, v5);

      v20 = v21;
    }

    v28 = v20;
    v22 = *(a1 + 32);
    v9 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v20, a3, v18, v19);
    v14 = objc_msgSend_stringValue(v9, v23, v24, v25, v26);
    objc_msgSend_dumpObjCInfoKey_value_indent_(v22, v27, v14, v28, *(a1 + 40) + 1);
  }
}

void sub_233747A2C(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_dumpMemoryInfoKey_indent_(v5, v6, v10, *(a1 + 40) + 1, v7);
  }

  NSClassFromString(&cfstr_Nsblock.isa);
  if (objc_opt_isKindOfClass())
  {
    v9 = v5[2](v5);

    v5 = v9;
  }

  objc_msgSend_dumpObjCInfoKey_value_indent_(*(a1 + 32), v8, v10, v5, *(a1 + 40) + 1);
}

id sub_2337486CC(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  v140[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v11 = a4;
  v13 = *(a1 + 4);
  if (v13)
  {
    switch(*(a1 + 2))
    {
      case 1:
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v89 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v8, *(a1 + 8), v13, v10);
            v136[0] = v89;
            v93 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v90, *(a1 + 9), v91, v92);
            v136[1] = v93;
            v97 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v94, *(a1 + 10), v95, v96);
            v136[2] = v97;
            v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v98, v136, 3, v99);
          }

          else
          {
            if (v13 != 4)
            {
              goto LABEL_53;
            }

            v48 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v8, *(a1 + 8), v13, v10);
            v135[0] = v48;
            v52 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v49, *(a1 + 9), v50, v51);
            v135[1] = v52;
            v56 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v53, *(a1 + 10), v54, v55);
            v135[2] = v56;
            v60 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v57, *(a1 + 11), v58, v59);
            v135[3] = v60;
            v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v61, v135, 4, v62);
          }

          break;
        }

        if (v13 != 1)
        {
          if (v13 == 2)
          {
            v14 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v8, *(a1 + 8), v13, v10);
            v137[0] = v14;
            v18 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v15, *(a1 + 9), v16, v17);
            v137[1] = v18;
            v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v19, v137, 2, v20);

            break;
          }

LABEL_53:
          v87 = sub_233749410(a1);
          v22 = sub_2337494A4(a1, a2, v87, *(a1 + 4), v7, v11);
          goto LABEL_58;
        }

        v22 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v8, *(a1 + 8), v13, v10);
        goto LABEL_58;
      case 2:
        if (v13 <= 4)
        {
          v26 = objc_alloc(MEMORY[0x277CCACA8]);
          v22 = objc_msgSend_initWithBytes_length_encoding_(v26, v27, a1 + 8, (*(a1 + 4) - 1), 1);
          goto LABEL_58;
        }

        v126 = 0;
        v127 = &v126;
        v128 = 0x3812000000;
        v129 = sub_23374A8C4;
        v130 = nullsub_2;
        v131 = "";
        v132 = sub_233749410(a1);
        v122 = 0;
        v123 = &v122;
        v124 = 0x2020000000;
        v125 = *(a1 + 4);
        v114 = 0;
        v115 = &v114;
        v116 = 0x4012000000;
        v117 = sub_23374A8D4;
        v118 = sub_23374A8E4;
        v119 = "";
        v63 = a2[1];
        v120 = *a2;
        v121 = v63;
        if (v63)
        {
          atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v113[0] = MEMORY[0x277D85DD0];
        v113[1] = 3221225472;
        v113[2] = sub_23374A8F4;
        v113[3] = &unk_2789EEA70;
        v113[4] = &v114;
        v113[5] = &v126;
        v113[6] = &v122;
        v47 = MEMORY[0x2383AC810](v113);
        goto LABEL_45;
      case 3:
        if (v13 == 2)
        {
          v79 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v8, *(a1 + 8), v13, v10);
          v133[0] = v79;
          v83 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v80, *(a1 + 10), v81, v82);
          v133[1] = v83;
          v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v84, v133, 2, v85);

          break;
        }

        if (v13 == 1)
        {
LABEL_33:
          v22 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v8, *(a1 + 8), v13, v10);
        }

        else
        {
          v25 = sub_233749410(a1);
          v22 = sub_2337498FC(a1, a2, v25, *(a1 + 4), v7, v11);
        }

        goto LABEL_58;
      case 4:
        if (v13 == 1)
        {
          goto LABEL_15;
        }

        v23 = sub_233749410(a1);
        v22 = sub_233749D54(a1, a2, v23, *(a1 + 4), v7, v11);
        goto LABEL_58;
      case 5:
        v28 = sub_233749410(a1);
        v22 = sub_23374A260(a1, a2, v28, *(a1 + 4), v7, v11);
        goto LABEL_58;
      case 6:
        if (v13 > 2)
        {
          if (v13 != 3)
          {
            if (v13 == 4)
            {
              v64 = objc_msgSend_numberWithChar_(MEMORY[0x277CCABB0], v8, *(a1 + 8), v13, v10);
              v138[0] = v64;
              v68 = objc_msgSend_numberWithChar_(MEMORY[0x277CCABB0], v65, *(a1 + 9), v66, v67);
              v138[1] = v68;
              v72 = objc_msgSend_numberWithChar_(MEMORY[0x277CCABB0], v69, *(a1 + 10), v70, v71);
              v138[2] = v72;
              v76 = objc_msgSend_numberWithChar_(MEMORY[0x277CCABB0], v73, *(a1 + 11), v74, v75);
              v138[3] = v76;
              v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v77, v138, 4, v78);

              break;
            }

            goto LABEL_54;
          }

          v101 = objc_msgSend_numberWithChar_(MEMORY[0x277CCABB0], v8, *(a1 + 8), v13, v10);
          v139[0] = v101;
          v105 = objc_msgSend_numberWithChar_(MEMORY[0x277CCABB0], v102, *(a1 + 9), v103, v104);
          v139[1] = v105;
          v109 = objc_msgSend_numberWithChar_(MEMORY[0x277CCABB0], v106, *(a1 + 10), v107, v108);
          v139[2] = v109;
          v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v110, v139, 3, v111);
        }

        else
        {
          if (v13 != 1)
          {
            if (v13 == 2)
            {
              v29 = objc_msgSend_numberWithChar_(MEMORY[0x277CCABB0], v8, *(a1 + 8), v13, v10);
              v140[0] = v29;
              v33 = objc_msgSend_numberWithChar_(MEMORY[0x277CCABB0], v30, *(a1 + 9), v31, v32);
              v140[1] = v33;
              v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v34, v140, 2, v35);

              break;
            }

LABEL_54:
            v88 = sub_233749410(a1);
            v22 = sub_2337491E4(a1, a2, v88, *(a1 + 4), v7, v11);
            goto LABEL_58;
          }

          v22 = objc_msgSend_numberWithChar_(MEMORY[0x277CCABB0], v8, *(a1 + 8), v13, v10);
LABEL_58:
          v21 = v22;
        }

        break;
      case 7:
        if (v13 <= 4)
        {
          v22 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v8, a1 + 8, v13, v10);
          goto LABEL_58;
        }

        v126 = 0;
        v127 = &v126;
        v128 = 0x3812000000;
        v129 = sub_23374A8C4;
        v130 = nullsub_2;
        v131 = "";
        v132 = sub_233749410(a1);
        v122 = 0;
        v123 = &v122;
        v124 = 0x2020000000;
        v125 = *(a1 + 4);
        v114 = 0;
        v115 = &v114;
        v116 = 0x4012000000;
        v117 = sub_23374A8D4;
        v118 = sub_23374A8E4;
        v119 = "";
        v46 = a2[1];
        v120 = *a2;
        v121 = v46;
        if (v46)
        {
          atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v112[0] = MEMORY[0x277D85DD0];
        v112[1] = 3221225472;
        v112[2] = sub_23374AA68;
        v112[3] = &unk_2789EEA98;
        v112[4] = &v114;
        v112[5] = &v126;
        v112[6] = &v122;
        v47 = MEMORY[0x2383AC810](v112);
LABEL_45:
        v21 = v47;
        _Block_object_dispose(&v114, 8);
        if (v121)
        {
          sub_2337239E8(v121);
        }

        _Block_object_dispose(&v122, 8);
        _Block_object_dispose(&v126, 8);
        break;
      case 8:
        if (v13 == 1)
        {
          goto LABEL_33;
        }

        if (v13 == 2)
        {
          v37 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v8, *(a1 + 8), v13, v10);
          v134[0] = v37;
          v41 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v38, *(a1 + 10), v39, v40);
          v134[1] = v41;
          v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v42, v134, 2, v43);

          break;
        }

        v86 = sub_233749410(a1);
        v22 = sub_2337496D0(a1, a2, v86, *(a1 + 4), v7, v11);
        goto LABEL_58;
      case 9:
        if (v13 == 1)
        {
          goto LABEL_15;
        }

        v45 = sub_233749410(a1);
        v22 = sub_233749B28(a1, a2, v45, *(a1 + 4), v7, v11);
        goto LABEL_58;
      case 0xA:
        v36 = sub_233749410(a1);
        v22 = sub_233749F80(a1, a2, v36, *(a1 + 4), v7, v11);
        goto LABEL_58;
      case 0xB:
        if (v13 == 1)
        {
          LODWORD(v12) = *(a1 + 8);
          objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v8, v9, v13, v10, v12);
        }

        else
        {
          v44 = sub_233749410(a1);
          sub_23374A540(a1, a2, v44, *(a1 + 4), v7, v11);
        }
        v22 = ;
        goto LABEL_58;
      case 0xC:
        v24 = sub_233749410(a1);
        v22 = sub_23374A76C(a1, a2, v24, *(a1 + 4));
        goto LABEL_58;
      case 0xD:
LABEL_15:
        v22 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v8, *(a1 + 8), v13, v10);
        goto LABEL_58;
      default:
        v21 = &unk_284954F28;
        break;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

id sub_2337491E4(uint64_t a1, void *a2, int a3, int a4, void *a5, void *a6)
{
  v11 = a5;
  v12 = a6;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x4012000000;
  v24[3] = sub_23374A8D4;
  v24[4] = sub_23374A8E4;
  v24[5] = "";
  v13 = a2[1];
  v24[6] = *a2;
  v25 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3812000000;
  v22[3] = sub_23374A8C4;
  v22[4] = nullsub_2;
  v22[5] = "";
  v23 = a3;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = a4;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_233755B38;
  v19[3] = &unk_2789EEB08;
  v19[4] = v24;
  v19[5] = v22;
  v19[6] = v20;
  v19[7] = a1;
  v14 = MEMORY[0x2383AC810](v19);
  v15 = [RAWTIFFIFDTable alloc];
  v17 = objc_msgSend_initWithValueBlock_forwardNamespace_reverseNamespace_(v15, v16, v14, v11, v12);

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);
  if (v25)
  {
    sub_2337239E8(v25);
  }

  return v17;
}

void sub_2337493C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 128), 8);
  v15 = *(v13 - 72);
  if (v15)
  {
    sub_2337239E8(v15);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_233749410(uint64_t a1)
{
  v2 = *(a1 + 4);
  v3 = sub_23374ADC0(*(a1 + 2));
  if ((v3 * v2) <= 4 && (v2 != 1 || v3 != 4))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *(a1 + 8);
}

id sub_2337494A4(uint64_t a1, void *a2, int a3, int a4, void *a5, void *a6)
{
  v11 = a5;
  v12 = a6;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x4012000000;
  v24[3] = sub_23374A8D4;
  v24[4] = sub_23374A8E4;
  v24[5] = "";
  v13 = a2[1];
  v24[6] = *a2;
  v25 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3812000000;
  v22[3] = sub_23374A8C4;
  v22[4] = nullsub_2;
  v22[5] = "";
  v23 = a3;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = a4;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_233755D64;
  v19[3] = &unk_2789EEB08;
  v19[4] = v24;
  v19[5] = v22;
  v19[6] = v20;
  v19[7] = a1;
  v14 = MEMORY[0x2383AC810](v19);
  v15 = [RAWTIFFIFDTable alloc];
  v17 = objc_msgSend_initWithValueBlock_forwardNamespace_reverseNamespace_(v15, v16, v14, v11, v12);

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);
  if (v25)
  {
    sub_2337239E8(v25);
  }

  return v17;
}

void sub_233749688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 128), 8);
  v15 = *(v13 - 72);
  if (v15)
  {
    sub_2337239E8(v15);
  }

  _Unwind_Resume(a1);
}

id sub_2337496D0(uint64_t a1, void *a2, int a3, int a4, void *a5, void *a6)
{
  v11 = a5;
  v12 = a6;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x4012000000;
  v24[3] = sub_23374A8D4;
  v24[4] = sub_23374A8E4;
  v24[5] = "";
  v13 = a2[1];
  v24[6] = *a2;
  v25 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3812000000;
  v22[3] = sub_23374A8C4;
  v22[4] = nullsub_2;
  v22[5] = "";
  v23 = a3;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = a4;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_233755EE4;
  v19[3] = &unk_2789EEB08;
  v19[4] = v24;
  v19[5] = v22;
  v19[6] = v20;
  v19[7] = a1;
  v14 = MEMORY[0x2383AC810](v19);
  v15 = [RAWTIFFIFDTable alloc];
  v17 = objc_msgSend_initWithValueBlock_forwardNamespace_reverseNamespace_(v15, v16, v14, v11, v12);

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);
  if (v25)
  {
    sub_2337239E8(v25);
  }

  return v17;
}

void sub_2337498B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 128), 8);
  v15 = *(v13 - 72);
  if (v15)
  {
    sub_2337239E8(v15);
  }

  _Unwind_Resume(a1);
}

id sub_2337498FC(uint64_t a1, void *a2, int a3, int a4, void *a5, void *a6)
{
  v11 = a5;
  v12 = a6;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x4012000000;
  v24[3] = sub_23374A8D4;
  v24[4] = sub_23374A8E4;
  v24[5] = "";
  v13 = a2[1];
  v24[6] = *a2;
  v25 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3812000000;
  v22[3] = sub_23374A8C4;
  v22[4] = nullsub_2;
  v22[5] = "";
  v23 = a3;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = a4;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_233756174;
  v19[3] = &unk_2789EEB08;
  v19[4] = v24;
  v19[5] = v22;
  v19[6] = v20;
  v19[7] = a1;
  v14 = MEMORY[0x2383AC810](v19);
  v15 = [RAWTIFFIFDTable alloc];
  v17 = objc_msgSend_initWithValueBlock_forwardNamespace_reverseNamespace_(v15, v16, v14, v11, v12);

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);
  if (v25)
  {
    sub_2337239E8(v25);
  }

  return v17;
}

void sub_233749AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 128), 8);
  v15 = *(v13 - 72);
  if (v15)
  {
    sub_2337239E8(v15);
  }

  _Unwind_Resume(a1);
}

id sub_233749B28(uint64_t a1, void *a2, int a3, int a4, void *a5, void *a6)
{
  v11 = a5;
  v12 = a6;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x4012000000;
  v24[3] = sub_23374A8D4;
  v24[4] = sub_23374A8E4;
  v24[5] = "";
  v13 = a2[1];
  v24[6] = *a2;
  v25 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3812000000;
  v22[3] = sub_23374A8C4;
  v22[4] = nullsub_2;
  v22[5] = "";
  v23 = a3;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = a4;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_23375638C;
  v19[3] = &unk_2789EEB08;
  v19[4] = v24;
  v19[5] = v22;
  v19[6] = v20;
  v19[7] = a1;
  v14 = MEMORY[0x2383AC810](v19);
  v15 = [RAWTIFFIFDTable alloc];
  v17 = objc_msgSend_initWithValueBlock_forwardNamespace_reverseNamespace_(v15, v16, v14, v11, v12);

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);
  if (v25)
  {
    sub_2337239E8(v25);
  }

  return v17;
}

void sub_233749D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 128), 8);
  v15 = *(v13 - 72);
  if (v15)
  {
    sub_2337239E8(v15);
  }

  _Unwind_Resume(a1);
}

id sub_233749D54(uint64_t a1, void *a2, int a3, int a4, void *a5, void *a6)
{
  v11 = a5;
  v12 = a6;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x4012000000;
  v24[3] = sub_23374A8D4;
  v24[4] = sub_23374A8E4;
  v24[5] = "";
  v13 = a2[1];
  v24[6] = *a2;
  v25 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3812000000;
  v22[3] = sub_23374A8C4;
  v22[4] = nullsub_2;
  v22[5] = "";
  v23 = a3;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = a4;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_233756618;
  v19[3] = &unk_2789EEB08;
  v19[4] = v24;
  v19[5] = v22;
  v19[6] = v20;
  v19[7] = a1;
  v14 = MEMORY[0x2383AC810](v19);
  v15 = [RAWTIFFIFDTable alloc];
  v17 = objc_msgSend_initWithValueBlock_forwardNamespace_reverseNamespace_(v15, v16, v14, v11, v12);

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);
  if (v25)
  {
    sub_2337239E8(v25);
  }

  return v17;
}

void sub_233749F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 128), 8);
  v15 = *(v13 - 72);
  if (v15)
  {
    sub_2337239E8(v15);
  }

  _Unwind_Resume(a1);
}

id sub_233749F80(uint64_t a1, uint64_t *a2, int a3, int a4, void *a5, void *a6)
{
  v11 = a5;
  v12 = a6;
  if (a4 == 1)
  {
    v13 = sub_2337563B4(a1, a2, a3, 2u);
    v14 = MEMORY[0x277CCABB0];
    v18 = objc_msgSend_objectAtIndexedSubscript_(v13, v15, 0, v16, v17);
    objc_msgSend_doubleValue(v18, v19, v20, v21, v22);
    v24 = v23;
    v28 = objc_msgSend_objectAtIndexedSubscript_(v13, v25, 1, v26, v27);
    objc_msgSend_doubleValue(v28, v29, v30, v31, v32);
    v38 = objc_msgSend_numberWithDouble_(v14, v34, v35, v36, v37, v24 / v33);
  }

  else
  {
    v49[0] = 0;
    v49[1] = v49;
    v49[2] = 0x4012000000;
    v49[3] = sub_23374A8D4;
    v49[4] = sub_23374A8E4;
    v49[5] = "";
    v39 = a2[1];
    v49[6] = *a2;
    v50 = v39;
    if (v39)
    {
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x3812000000;
    v47[3] = sub_23374A8C4;
    v47[4] = nullsub_2;
    v47[5] = "";
    v48 = a3;
    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x2020000000;
    v46 = a4;
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = sub_23375682C;
    v44[3] = &unk_2789EEB30;
    v44[4] = v49;
    v44[5] = v47;
    v44[6] = v45;
    v44[7] = a1;
    v40 = MEMORY[0x2383AC810](v44);
    v41 = [RAWTIFFIFDTable alloc];
    v38 = objc_msgSend_initWithValueBlock_forwardNamespace_reverseNamespace_(v41, v42, v40, v11, v12);

    _Block_object_dispose(v45, 8);
    _Block_object_dispose(v47, 8);
    _Block_object_dispose(v49, 8);
    if (v50)
    {
      sub_2337239E8(v50);
    }
  }

  return v38;
}

void sub_23374A224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v10 - 144), 8);
  v11 = *(v10 - 88);
  if (v11)
  {
    sub_2337239E8(v11);
  }

  JUMPOUT(0x23374A214);
}

id sub_23374A260(uint64_t a1, uint64_t *a2, int a3, int a4, void *a5, void *a6)
{
  v11 = a5;
  v12 = a6;
  if (a4 == 1)
  {
    v13 = sub_233756640(a1, a2, a3, 2u);
    v14 = MEMORY[0x277CCABB0];
    v18 = objc_msgSend_objectAtIndexedSubscript_(v13, v15, 0, v16, v17);
    objc_msgSend_doubleValue(v18, v19, v20, v21, v22);
    v24 = v23;
    v28 = objc_msgSend_objectAtIndexedSubscript_(v13, v25, 1, v26, v27);
    objc_msgSend_doubleValue(v28, v29, v30, v31, v32);
    v38 = objc_msgSend_numberWithDouble_(v14, v34, v35, v36, v37, v24 / v33);
  }

  else
  {
    v49[0] = 0;
    v49[1] = v49;
    v49[2] = 0x4012000000;
    v49[3] = sub_23374A8D4;
    v49[4] = sub_23374A8E4;
    v49[5] = "";
    v39 = a2[1];
    v49[6] = *a2;
    v50 = v39;
    if (v39)
    {
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x3812000000;
    v47[3] = sub_23374A8C4;
    v47[4] = nullsub_2;
    v47[5] = "";
    v48 = a3;
    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x2020000000;
    v46 = a4;
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = sub_2337569B8;
    v44[3] = &unk_2789EEB30;
    v44[4] = v49;
    v44[5] = v47;
    v44[6] = v45;
    v44[7] = a1;
    v40 = MEMORY[0x2383AC810](v44);
    v41 = [RAWTIFFIFDTable alloc];
    v38 = objc_msgSend_initWithValueBlock_forwardNamespace_reverseNamespace_(v41, v42, v40, v11, v12);

    _Block_object_dispose(v45, 8);
    _Block_object_dispose(v47, 8);
    _Block_object_dispose(v49, 8);
    if (v50)
    {
      sub_2337239E8(v50);
    }
  }

  return v38;
}

void sub_23374A504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v10 - 144), 8);
  v11 = *(v10 - 88);
  if (v11)
  {
    sub_2337239E8(v11);
  }

  JUMPOUT(0x23374A4F4);
}

id sub_23374A540(uint64_t a1, void *a2, int a3, int a4, void *a5, void *a6)
{
  v11 = a5;
  v12 = a6;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x4012000000;
  v24[3] = sub_23374A8D4;
  v24[4] = sub_23374A8E4;
  v24[5] = "";
  v13 = a2[1];
  v24[6] = *a2;
  v25 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3812000000;
  v22[3] = sub_23374A8C4;
  v22[4] = nullsub_2;
  v22[5] = "";
  v23 = a3;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = a4;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_233756B44;
  v19[3] = &unk_2789EEB08;
  v19[4] = v24;
  v19[5] = v22;
  v19[6] = v20;
  v19[7] = a1;
  v14 = MEMORY[0x2383AC810](v19);
  v15 = [RAWTIFFIFDTable alloc];
  v17 = objc_msgSend_initWithValueBlock_forwardNamespace_reverseNamespace_(v15, v16, v14, v11, v12);

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);
  if (v25)
  {
    sub_2337239E8(v25);
  }

  return v17;
}

void sub_23374A724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 128), 8);
  v15 = *(v13 - 72);
  if (v15)
  {
    sub_2337239E8(v15);
  }

  _Unwind_Resume(a1);
}

id sub_23374A76C(uint64_t a1, uint64_t *a2, int a3, unsigned int a4)
{
  v24 = a3;
  sub_233726A8C(&__p, &v24);
  sub_233725F08(v23, a2, &__p, 0);
  v6 = sub_233755CB8(a4);
  v7 = *a2;
  v20 = a4;
  sub_233756DD0(v7, &v20, &__p);
  v12 = __p;
  v13 = v22;
  if (__p != v22)
  {
    do
    {
      v14 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v8, v9, v10, v11, *v12);
      objc_msgSend_addObject_(v6, v15, v14, v16, v17);

      ++v12;
    }

    while (v12 != v13);
  }

  v18 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v8, v6, v10, v11);
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  sub_233725FD4(v23);

  return v18;
}

void sub_23374A878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_233725FD4(&a13);
  _Unwind_Resume(a1);
}

__n128 sub_23374A8D4(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  return result;
}

void sub_23374A8E4(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    sub_2337239E8(v1);
  }
}

id sub_23374A8F4(void *a1)
{
  v2 = *(a1[4] + 8);
  sub_233726A8C(__p, (*(a1[5] + 8) + 48));
  sub_233725F08(v10, (v2 + 48), __p, 0);
  v3 = *(*(a1[4] + 8) + 48);
  v8 = *(*(a1[6] + 8) + 24);
  sub_23374A9F8(v3, &v8, __p);
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v6 = objc_msgSend_initWithBytes_length_encoding_(v4, v5, __p[0], (*(*(a1[6] + 8) + 24) - 1), 1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  sub_233725FD4(v10);

  return v6;
}

uint64_t sub_23374A9F8@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  sub_233756E64(a3, v5);
  sub_233725540(a1, *a3, v5);
  return sub_233725404(a1);
}

void sub_23374AA4C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

id sub_23374AA68(void *a1)
{
  v2 = *(a1[4] + 8);
  sub_233726A8C(&__p, (*(a1[5] + 8) + 48));
  sub_233725F08(v11, (v2 + 48), &__p, 0);
  v3 = *(*(a1[4] + 8) + 48);
  v8 = *(*(a1[6] + 8) + 24);
  sub_23374AB5C(v3, &v8, &__p);
  v6 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v4, __p, v10 - __p, v5);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  sub_233725FD4(v11);

  return v6;
}

void sub_23374AB2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_233725FD4(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_23374AB5C@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  sub_233726154(a3, v5);
  sub_233725540(a1, *a3, v5);
  return sub_233725404(a1);
}

void sub_23374ABB0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23374ABCC(uint64_t a1, double *a2, uint64_t *a3, double a4)
{
  result = 0;
  v8 = *(a1 + 2);
  if (v8 <= 5)
  {
    if (*(a1 + 2) > 3u)
    {
      if (v8 != 4)
      {
        if (v8 != 5)
        {
          return result;
        }

        v13 = sub_233749410(a1);
        sub_233726A8C(&v14, &v13);
        sub_233725F08(v15, a3, &v14, 0);
        *a2 = sub_233725614(*a3);
        v10 = sub_233725614(*a3);
        goto LABEL_25;
      }

      LODWORD(a4) = *(a1 + 8);
    }

    else if (v8 == 1)
    {
      LOBYTE(a4) = *(a1 + 8);
    }

    else
    {
      if (v8 != 3)
      {
        return result;
      }

      LOWORD(a4) = *(a1 + 8);
    }

    v12 = *&a4;
  }

  else
  {
    if (*(a1 + 2) <= 8u)
    {
      if (v8 == 6)
      {
        v11 = *(a1 + 8);
      }

      else
      {
        if (v8 != 8)
        {
          return result;
        }

        v11 = *(a1 + 8);
      }
    }

    else
    {
      if (v8 != 9)
      {
        if (v8 != 10)
        {
          if (v8 != 11)
          {
            return result;
          }

          v13 = sub_233749410(a1);
          sub_233726A8C(&v14, &v13);
          sub_233725F08(v15, a3, &v14, 0);
          v9 = sub_233725730(*a3);
          goto LABEL_26;
        }

        v13 = sub_233749410(a1);
        sub_233726A8C(&v14, &v13);
        sub_233725F08(v15, a3, &v14, 0);
        *a2 = sub_233725614(*a3);
        v10 = sub_233725614(*a3);
LABEL_25:
        v9 = *a2 / v10;
LABEL_26:
        *a2 = v9;
        sub_233725FD4(v15);
        return 1;
      }

      v11 = *(a1 + 8);
    }

    v12 = v11;
  }

  *a2 = v12;
  return 1;
}

void sub_23374AD88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_233725FD4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23374ADC0(int a1)
{
  result = 1;
  if (a1 <= 5)
  {
    if (a1 <= 3)
    {
      if ((a1 - 1) < 2)
      {
        return result;
      }

      if (a1 == 3)
      {
        return 2;
      }

      return 0;
    }

    if (a1 != 4)
    {
      return 8;
    }

    return 4;
  }

  if (a1 <= 0xD)
  {
    if (((1 << a1) & 0x2A00) != 0)
    {
      return 4;
    }

    if (((1 << a1) & 0x1400) != 0)
    {
      return 8;
    }

    if (a1 == 8)
    {
      return 2;
    }
  }

  if ((a1 - 6) >= 2)
  {
    if (a1 != 37500)
    {
      return 0;
    }

    return 4;
  }

  return result;
}

uint64_t sub_23374AE6C(uint64_t a1, _WORD *a2)
{
  v2 = 0;
  v3 = *(a1 + 2);
  if (v3 <= 5)
  {
    if (v3 == 1)
    {
      LOWORD(v4) = *(a1 + 8);
      goto LABEL_13;
    }

    if (v3 != 3)
    {
      if (v3 != 4)
      {
        return v2;
      }

      goto LABEL_9;
    }

LABEL_10:
    LOWORD(v4) = *(a1 + 8);
    goto LABEL_13;
  }

  switch(v3)
  {
    case 6u:
      LOWORD(v4) = *(a1 + 8);
      goto LABEL_13;
    case 8u:
      goto LABEL_10;
    case 9u:
LABEL_9:
      v4 = *(a1 + 8);
LABEL_13:
      *a2 = v4;
      return 1;
  }

  return v2;
}

uint64_t *sub_23374AEDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void **a3@<X8>)
{
  v6 = *(a1 + 4);
  if ((sub_23374ADC0(*(a1 + 2)) * v6) <= 4)
  {
    v36[0] = 0;
    result = sub_23374ABCC(a1, v36, a2, v7);
    if (result)
    {
      return sub_233731694(a3, 1uLL);
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return result;
  }

  v35 = sub_233749410(a1);
  sub_233726A8C(&__src, &v35);
  sub_233725F08(v36, a2, &__src, 0);
  __src = 0;
  v33 = 0;
  v34 = 0;
  v9 = *(a1 + 4);
  if (v9 >> 4 >= 0x271)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  sub_23374B25C(&__src, v9);
  if (*(a1 + 4))
  {
    v10 = 0;
    while (1)
    {
      v11 = *(a1 + 2);
      if (v11 <= 7)
      {
        if (*(a1 + 2) > 3u)
        {
          if (v11 != 4)
          {
            if (v11 != 5)
            {
              goto LABEL_49;
            }

            v14 = sub_233725614(*a2);
            v15 = sub_233725614(*a2);
            v16 = v14;
            v17 = v15;
            goto LABEL_28;
          }

          v13 = sub_233725614(*a2);
        }

        else if (v11 == 1)
        {
          v13 = sub_233725510(*a2);
        }

        else
        {
          if (v11 != 3)
          {
            goto LABEL_49;
          }

          v13 = sub_2337255C0(*a2);
        }

        v12 = v13;
      }

      else if (*(a1 + 2) <= 9u)
      {
        if (v11 == 8)
        {
          v18 = sub_2337256DC(*a2);
        }

        else
        {
          if (v11 != 9)
          {
LABEL_49:
            *a3 = 0;
            a3[1] = 0;
            a3[2] = 0;
            if (__src)
            {
              v33 = __src;
              operator delete(__src);
            }

            return sub_233725FD4(v36);
          }

          v18 = sub_233725614(*a2);
        }

        v12 = v18;
      }

      else
      {
        switch(v11)
        {
          case 0xAu:
            v19 = sub_233725614(*a2);
            v20 = sub_233725614(*a2);
            v16 = v19;
            v17 = v20;
LABEL_28:
            v12 = v16 / v17;
            break;
          case 0xBu:
            v12 = sub_233725730(*a2);
            break;
          case 0xCu:
            v12 = sub_23372574C(*a2);
            break;
          default:
            goto LABEL_49;
        }
      }

      v21 = v33;
      if (v33 >= v34)
      {
        v23 = __src;
        v24 = v33 - __src;
        v25 = (v33 - __src) >> 3;
        v26 = v25 + 1;
        if ((v25 + 1) >> 61)
        {
          sub_2337235BC();
        }

        v27 = v34 - __src;
        if ((v34 - __src) >> 2 > v26)
        {
          v26 = v27 >> 2;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFF8)
        {
          v28 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v26;
        }

        if (v28)
        {
          sub_233723798(&__src, v28);
        }

        *(8 * v25) = v12;
        v22 = 8 * v25 + 8;
        memcpy(0, v23, v24);
        v29 = __src;
        __src = 0;
        v33 = v22;
        v34 = 0;
        if (v29)
        {
          operator delete(v29);
        }
      }

      else
      {
        *v33 = v12;
        v22 = (v21 + 1);
      }

      v33 = v22;
      if (++v10 >= *(a1 + 4))
      {
        goto LABEL_47;
      }
    }
  }

  v22 = v33;
LABEL_47:
  v30 = v34;
  *a3 = __src;
  a3[1] = v22;
  a3[2] = v30;
  return sub_233725FD4(v36);
}

void sub_23374B21C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_233725FD4(&a14);
  _Unwind_Resume(a1);
}

void *sub_23374B25C(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_233723798(result, a2);
    }

    sub_2337235BC();
  }

  return result;
}

void sub_23374B2FC(uint64_t a1@<X0>, uint64_t *a2@<X1>, const void **a3@<X8>)
{
  v6 = *(a1 + 4);
  if (sub_23374ADC0(*(a1 + 2)) * v6 <= 4)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (v6)
    {
      sub_23374B668(a3, v6);
      if (*(a1 + 4))
      {
        v7 = 0;
        do
        {
          LODWORD(v28[0]) = v7;
          v8 = sub_23374B704(a1, v28);
          v10 = a3[1];
          v9 = a3[2];
          if (v10 >= v9)
          {
            v12 = *a3;
            v13 = v10 - *a3;
            v14 = v13 >> 1;
            if (v13 >> 1 <= -2)
            {
              sub_2337235BC();
            }

            v15 = v9 - v12;
            if (v15 <= v14 + 1)
            {
              v16 = v14 + 1;
            }

            else
            {
              v16 = v15;
            }

            if (v15 >= 0x7FFFFFFFFFFFFFFELL)
            {
              v17 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v17 = v16;
            }

            if (v17)
            {
              sub_2337262C8(a3, v17);
            }

            *(2 * v14) = v8;
            v11 = 2 * v14 + 2;
            memcpy(0, v12, v13);
            v18 = *a3;
            *a3 = 0;
            a3[1] = v11;
            a3[2] = 0;
            if (v18)
            {
              operator delete(v18);
            }
          }

          else
          {
            *v10 = v8;
            v11 = (v10 + 2);
          }

          a3[1] = v11;
          ++v7;
        }

        while (v7 < *(a1 + 4));
      }
    }

    return;
  }

  v27 = sub_233749410(a1);
  sub_233726A8C(__p, &v27);
  sub_233725F08(v28, a2, __p, 0);
  __p[0] = 0;
  __p[1] = 0;
  v26 = 0;
  v19 = *(a1 + 4);
  if (v19 >> 4 >= 0x271)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  sub_23374B668(__p, v19);
  if (!*(a1 + 4))
  {
LABEL_40:
    *a3 = *__p;
    a3[2] = v26;
    goto LABEL_41;
  }

  v20 = 0;
  while (1)
  {
    LOWORD(v27) = 0;
    v21 = *(a1 + 2);
    if (v21 <= 4)
    {
      switch(v21)
      {
        case 1u:
          v22 = sub_233725510(*a2);
          break;
        case 3u:
          v22 = sub_2337255C0(*a2);
          break;
        case 4u:
LABEL_31:
          v22 = sub_233725614(*a2);
          break;
        default:
          goto LABEL_43;
      }

LABEL_38:
      LOWORD(v27) = v22;
      goto LABEL_39;
    }

    if (*(a1 + 2) > 8u)
    {
      break;
    }

    if (v21 != 5)
    {
      if (v21 != 8)
      {
        goto LABEL_43;
      }

      v22 = sub_2337256DC(*a2);
      goto LABEL_38;
    }

LABEL_34:
    LOWORD(v27) = sub_233725614(*a2);
    v23 = sub_233725614(*a2);
    LOWORD(v27) = v27 / v23;
LABEL_39:
    sub_23374B768(__p, &v27);
    if (++v20 >= *(a1 + 4))
    {
      goto LABEL_40;
    }
  }

  if (v21 == 9)
  {
    goto LABEL_31;
  }

  if (v21 == 10)
  {
    goto LABEL_34;
  }

LABEL_43:
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

LABEL_41:
  sub_233725FD4(v28);
}

void sub_23374B60C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23374B668(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      sub_2337262C8(result, a2);
    }

    sub_2337235BC();
  }

  return result;
}

uint64_t sub_23374B704(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  if (v2 >= 2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return *(a1 + 2 * v2 + 8);
}

void sub_23374B768(const void **a1, _WORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      sub_2337235BC();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_2337262C8(a1, v13);
    }

    v14 = (2 * v9);
    v15 = *a2;
    v16 = &v14[-(v8 >> 1)];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

double sub_23374B844(uint64_t a1, void *a2, char a3, void *a4, void *a5)
{
  v5 = sub_23373245C(a1, a2, a3, a4, a5);
  *v5 = &unk_284904C60;
  result = 0.0;
  *(v5 + 520) = 0u;
  *(v5 + 504) = 0;
  *(v5 + 512) = v5 + 520;
  *(v5 + 544) = 0u;
  *(v5 + 536) = v5 + 544;
  *(v5 + 568) = 0u;
  *(v5 + 560) = v5 + 568;
  *(v5 + 592) = 0u;
  *(v5 + 584) = v5 + 592;
  *(v5 + 616) = 0u;
  *(v5 + 608) = v5 + 616;
  *(v5 + 640) = 0u;
  *(v5 + 632) = v5 + 640;
  *(v5 + 664) = 0u;
  *(v5 + 656) = v5 + 664;
  *(v5 + 688) = 0u;
  *(v5 + 680) = v5 + 688;
  *(v5 + 712) = 0u;
  *(v5 + 704) = v5 + 712;
  *(v5 + 736) = 0u;
  *(v5 + 728) = v5 + 736;
  *(v5 + 760) = 0u;
  *(v5 + 752) = v5 + 760;
  *(v5 + 784) = 0u;
  *(v5 + 776) = v5 + 784;
  *(v5 + 808) = 0u;
  *(v5 + 800) = v5 + 808;
  *(v5 + 832) = 0u;
  *(v5 + 824) = v5 + 832;
  *(v5 + 856) = 0u;
  *(v5 + 848) = v5 + 856;
  *(v5 + 880) = 0u;
  *(v5 + 872) = v5 + 880;
  *(v5 + 904) = 0u;
  *(v5 + 896) = v5 + 904;
  *(v5 + 928) = 0u;
  *(v5 + 920) = v5 + 928;
  *(v5 + 952) = 0u;
  *(v5 + 944) = v5 + 952;
  *(v5 + 976) = 0u;
  *(v5 + 968) = v5 + 976;
  *(v5 + 1000) = 0u;
  *(v5 + 992) = v5 + 1000;
  *(v5 + 1016) = 0;
  *(v5 + 1020) = 0;
  *(v5 + 1024) = 0;
  *(v5 + 1040) = 0u;
  *(v5 + 1032) = v5 + 1040;
  *(v5 + 1064) = 0u;
  *(v5 + 1056) = v5 + 1064;
  *(v5 + 1088) = 0u;
  *(v5 + 1080) = v5 + 1088;
  *(v5 + 1112) = 0u;
  *(v5 + 1104) = v5 + 1112;
  *(v5 + 1136) = 0u;
  *(v5 + 1128) = v5 + 1136;
  *(v5 + 1160) = 0u;
  *(v5 + 1152) = v5 + 1160;
  *(v5 + 1176) = 10;
  return result;
}

void sub_23374B9D8(void **a1)
{
  v2 = sub_23378DFF4();
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CTIFFImageParser", &unk_233945DBE, buf, 2u);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_23374BF38;
  v22[3] = &unk_2789EE800;
  v22[4] = a1;
  v4 = MEMORY[0x2383AC810](v22);
  if (((*(*a1 + 7))(a1) & 1) == 0)
  {
    v5 = (*(*a1 + 50))(a1);
    if (v5)
    {
      sub_2337338AC(a1, buf);
      v6 = *(*buf + 40);
      if (v20)
      {
        sub_2337239E8(v20);
      }

      if (v6)
      {
        sub_2337338AC(a1, &v15);
        sub_233754E04(buf, &v15);
        if (v16)
        {
          sub_2337239E8(v16);
        }

        sub_2337338AC(a1, &v15);
        sub_2338B12F0(v15[5], v5, a1[14]);
      }

      sub_2337338AC(a1, &v15);
      (*(*v15 + 8))(buf);
      if (v16)
      {
        sub_2337239E8(v16);
      }

      if (v21 < 0)
      {
        if (v20)
        {
          v7 = *buf;
LABEL_19:
          sub_2338B18F4(v7, v5, a1[14]);
        }
      }

      else if (v21)
      {
        v7 = buf;
        goto LABEL_19;
      }

      sub_2337338AC(a1, &v17);
      LODWORD(v13) = 0;
      sub_233754E8C(&v15, &v17, &v13);
      sub_2338A7B70(&v17, v5, a1[14], 0, &v13);
      if (!v13)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      (**v13)(v13);
      if (v14)
      {
        sub_2337239E8(v14);
      }

      sub_233754F18(&v15);
      if (v18)
      {
        sub_2337239E8(v18);
      }

      if (v21 < 0)
      {
        operator delete(*buf);
      }
    }
  }

  sub_23372A488(buf, "");
  (*(*a1 + 84))(a1, buf, 42);
  if (v21 < 0)
  {
    operator delete(*buf);
  }

  sub_2337338AC(a1, buf);
  v8 = (*(*a1 + 80))(a1, buf, &v15);
  if (v20)
  {
    sub_2337239E8(v20);
  }

  v9 = sub_23374BFC0(v8);
  v10 = (*(*a1 + 85))(a1, v8, v9);
  v11 = a1[63];
  a1[63] = v10;

  v4[2](v4);
}

void sub_23374BE0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_233754F18(&a12);
  if (a16)
  {
    sub_2337239E8(a16);
  }

  if (a22 < 0)
  {
    operator delete(__p);
  }

  v22[2](v22);
  _Unwind_Resume(a1);
}

void sub_23374BF38(uint64_t a1)
{
  v2 = sub_23378DFF4();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CTIFFImageParser", &unk_233945DBE, v5, 2u);
  }
}

id sub_23374BFC0(void *a1)
{
  v1 = a1;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_23374C4FC;
  v16 = sub_23374C50C;
  v17 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v2, v3, v4, v5);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_23374C514;
  v11[3] = &unk_2789EEAC0;
  v11[4] = &v12;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v1, v6, v11, v7, v8);
  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

void sub_23374C0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_23374C0F8(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  sub_23372A488(__p, "IFD0");
  v4 = sub_233735E3C(a1 + 1032, __p);
  if (a1 + 1040 != v4)
  {
    std::string::operator=(a2, (v4 + 56));
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_23374C170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_23374C1A4(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  sub_23372A488(__p, "IFD0");
  v4 = sub_233735E3C(a1 + 1056, __p);
  if (a1 + 1064 != v4)
  {
    std::string::operator=(a2, (v4 + 56));
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_23374C21C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_23374C250(uint64_t a1)
{
  (*(*a1 + 384))(&v6);
  v2 = (*(*v6 + 16))(v6);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  v3 = (*(*a1 + 424))(a1);
  v4 = v2 >= v3;
  result = v2 - v3;
  if (result == 0 || !v4)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

void sub_23374C338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_23374C360(uint64_t a1, void **a2, _DWORD *a3)
{
  v5 = sub_233735E3C(a1 + 584, a2);
  if (a1 + 592 != v5)
  {
    *a3 = *(v5 + 56);
  }

  return a1 + 592 != v5;
}

BOOL sub_23374C3A8(uint64_t a1, void **a2, _DWORD *a3)
{
  v5 = sub_233735E3C(a1 + 608, a2);
  if (a1 + 616 != v5)
  {
    *a3 = *(v5 + 56);
  }

  return a1 + 616 != v5;
}

BOOL sub_23374C3F0(uint64_t a1, void **a2, _DWORD *a3)
{
  v5 = sub_233735E3C(a1 + 632, a2);
  if (a1 + 640 != v5)
  {
    *a3 = *(v5 + 56);
  }

  return a1 + 640 != v5;
}

uint64_t sub_23374C438(uint64_t a1, void **a2, unsigned int a3, _DWORD *a4)
{
  v7 = sub_233735E3C(a1 + 656, a2);
  if (a1 + 664 == v7)
  {
    return 0;
  }

  v8 = *(v7 + 56);
  if (a3 >= ((*(v7 + 64) - v8) >> 2))
  {
    return 0;
  }

  *a4 = *(v8 + 4 * a3);
  return 1;
}

id sub_23374C4A4@<X0>(void *a1@<X4>, __int16 a2@<W5>, int a3@<W6>, void *a4@<X7>, uint64_t a5@<X8>)
{
  v9 = a1;
  result = a4;
  *a5 = v9;
  *(a5 + 8) = a2;
  *(a5 + 12) = a3;
  *(a5 + 16) = result;
  return result;
}

uint64_t sub_23374C4FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23374C514(uint64_t a1, void *a2, void *a3)
{
  v26 = a2;
  v5 = a3;
  v9 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"Name", v7, v8);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = objc_msgSend_mutableCopy(v5, v10, v11, v12, v13);
    objc_msgSend_removeObjectForKey_(v14, v15, @"Name", v16, v17);
    objc_msgSend_setObject_forKeyedSubscript_(v14, v18, v26, @"TagID", v19);
    v23 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEAC0], v20, v14, v21, v22);
    objc_msgSend_setObject_forKeyedSubscript_(*(*(*(a1 + 32) + 8) + 40), v24, v23, v9, v25);
  }
}

id sub_23374C650(uint64_t a1)
{
  v18[24] = *MEMORY[0x277D85DE8];
  v17[0] = &unk_284954F40;
  v17[1] = &unk_284954F58;
  v18[0] = &unk_284958D98;
  v18[1] = &unk_284958DC0;
  v17[2] = &unk_284954F70;
  v17[3] = &unk_284954F88;
  v18[2] = &unk_284958DE8;
  v18[3] = &unk_284958E10;
  v17[4] = &unk_284954FA0;
  v17[5] = &unk_284954FB8;
  v18[4] = &unk_284958E38;
  v18[5] = &unk_284958E60;
  v17[6] = &unk_284954FD0;
  v17[7] = &unk_284954FE8;
  v18[6] = &unk_284958E88;
  v18[7] = &unk_284958EB0;
  v17[8] = &unk_284955000;
  v17[9] = &unk_284955018;
  v18[8] = &unk_284958ED8;
  v18[9] = &unk_284958F00;
  v17[10] = &unk_284955030;
  v17[11] = &unk_284955048;
  v18[10] = &unk_284958F28;
  v18[11] = &unk_284958F50;
  v17[12] = &unk_284955060;
  v17[13] = &unk_284955078;
  v18[12] = &unk_284958F78;
  v18[13] = &unk_284958FA0;
  v17[14] = &unk_284955090;
  v17[15] = &unk_2849550A8;
  v18[14] = &unk_284958FC8;
  v18[15] = &unk_284958FF0;
  v17[16] = &unk_2849550C0;
  v17[17] = &unk_2849550D8;
  v18[16] = &unk_284959018;
  v18[17] = &unk_284959040;
  v17[18] = &unk_2849550F0;
  v15[0] = @"Name";
  v15[1] = @"Type";
  v16[0] = @"SubIFD";
  v16[1] = &unk_284955108;
  v15[2] = @"Namespace";
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_23374CA4C;
  v12[3] = &unk_2789EEAE0;
  v12[4] = a1;
  v2 = MEMORY[0x2383AC810](v12);
  v16[2] = v2;
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v3, v16, v15, 3);
  v18[18] = v4;
  v18[19] = &unk_284959068;
  v17[19] = &unk_284955120;
  v17[20] = &unk_284955138;
  v18[20] = &unk_284959090;
  v18[21] = &unk_2849590B8;
  v17[21] = &unk_284955150;
  v17[22] = &unk_284955180;
  v13[0] = @"Name";
  v13[1] = @"Type";
  v14[0] = @"Exif";
  v14[1] = &unk_284955108;
  v13[2] = @"Namespace";
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_23374CA7C;
  v11[3] = &unk_2789EEAE0;
  v11[4] = a1;
  v5 = MEMORY[0x2383AC810](v11);
  v14[2] = v5;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v6, v14, v13, 3);
  v17[23] = &unk_284955198;
  v18[22] = v7;
  v18[23] = &unk_2849590E0;
  v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v8, v18, v17, 24);

  return v9;
}

id sub_23374CAAC(uint64_t a1)
{
  v11[33] = *MEMORY[0x277D85DE8];
  v10[0] = &unk_2849551B0;
  v10[1] = &unk_2849551C8;
  v11[0] = &unk_284959108;
  v11[1] = &unk_284959130;
  v10[2] = &unk_2849551E0;
  v10[3] = &unk_2849551F8;
  v11[2] = &unk_284959158;
  v11[3] = &unk_284959180;
  v10[4] = &unk_284955210;
  v10[5] = &unk_284955228;
  v11[4] = &unk_2849591A8;
  v11[5] = &unk_2849591D0;
  v10[6] = &unk_284955240;
  v10[7] = &unk_284955258;
  v11[6] = &unk_2849591F8;
  v11[7] = &unk_284959220;
  v10[8] = &unk_284955270;
  v10[9] = &unk_284955288;
  v11[8] = &unk_284959248;
  v11[9] = &unk_284959270;
  v10[10] = &unk_2849552A0;
  v10[11] = &unk_2849552B8;
  v11[10] = &unk_284959298;
  v11[11] = &unk_2849592C0;
  v10[12] = &unk_2849552D0;
  v10[13] = &unk_2849552E8;
  v11[12] = &unk_2849592E8;
  v11[13] = &unk_284959310;
  v10[14] = &unk_284955300;
  v10[15] = &unk_284955318;
  v11[14] = &unk_284959338;
  v11[15] = &unk_284959360;
  v10[16] = &unk_284955330;
  v10[17] = &unk_284955348;
  v11[16] = &unk_284959388;
  v11[17] = &unk_2849593B0;
  v10[18] = &unk_284955360;
  v10[19] = &unk_284955378;
  v11[18] = &unk_2849593D8;
  v11[19] = &unk_284959400;
  v10[20] = &unk_284955390;
  v10[21] = &unk_2849553A8;
  v11[20] = &unk_284959428;
  v11[21] = &unk_284959450;
  v10[22] = &unk_2849553C0;
  v10[23] = &unk_2849553D8;
  v11[22] = &unk_284959478;
  v11[23] = &unk_2849594A0;
  v10[24] = &unk_2849553F0;
  v10[25] = &unk_284955408;
  v11[24] = &unk_2849594C8;
  v11[25] = &unk_2849594F0;
  v10[26] = &unk_284955420;
  v10[27] = &unk_284955438;
  v11[26] = &unk_284959518;
  v11[27] = &unk_284959540;
  v11[28] = &unk_284959568;
  v10[28] = &unk_284955450;
  v10[29] = &unk_284955468;
  v8[0] = @"Name";
  v8[1] = @"Type";
  v9[0] = @"MakerNote";
  v9[1] = &unk_284955480;
  v9[2] = &unk_284955498;
  v8[2] = @"Count";
  v8[3] = @"Namespace";
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_23374CED0;
  v7[3] = &unk_2789EEAE0;
  v7[4] = a1;
  v1 = MEMORY[0x2383AC810](v7);
  v9[3] = v1;
  v3 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v2, v9, v8, 4);
  v11[29] = v3;
  v11[30] = &unk_284959590;
  v10[30] = &unk_2849554B0;
  v10[31] = &unk_2849554C8;
  v10[32] = &unk_2849554E0;
  v11[31] = &unk_2849595B8;
  v11[32] = &unk_2849595E0;
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v4, v11, v10, 33);

  return v5;
}

uint64_t *sub_23374CF14(uint64_t a1, uint64_t a2, int a3)
{
  sub_2337338AC(a1, &v33);
  LODWORD(v41[0]) = 0;
  sub_233725F08(v42, &v33, v41, 0);
  if (v34)
  {
    sub_2337239E8(v34);
  }

  sub_2337338AC(a1, &v33);
  v6 = sub_2337255C0(v33);
  if (v34)
  {
    sub_2337239E8(v34);
  }

  if (v6 == 18761 || v6 == 19789)
  {
    if (v6 == 19789)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    (*(*a1 + 96))(a1, v7);
    sub_2337338AC(a1, &v33);
    sub_233735A18(v41, &v33, v7);
    if (v34)
    {
      sub_2337239E8(v34);
    }

    sub_2337338AC(a1, &v33);
    v8 = sub_2337255C0(v33);
    if (v34)
    {
      sub_2337239E8(v34);
    }

    if (v8 == a3 || v8 == (*(*a1 + 664))(a1))
    {
      v40 = 0;
      sub_2337338AC(a1, &v33);
      v29 = (*(*v33 + 16))(v33);
      if (v34)
      {
        sub_2337239E8(v34);
      }

      v9 = 0;
      v39[0] = 0;
      v39[1] = 0;
      v38 = v39;
      v10 = *MEMORY[0x277D82828];
      v11 = *(MEMORY[0x277D82828] + 24);
      while (1)
      {
        sub_2337338AC(a1, &v33);
        v40 = sub_233725614(v33);
        if (v40)
        {
          v12 = v9 >= 0x14;
        }

        else
        {
          v12 = 1;
        }

        v13 = !v12;
        if (v34)
        {
          sub_2337239E8(v34);
        }

        if (!v13)
        {
          break;
        }

        v14 = v39[0];
        if (v39[0])
        {
          v15 = v39;
          do
          {
            v16 = *(v14 + 7);
            v12 = v16 >= v40;
            v17 = v16 < v40;
            if (v12)
            {
              v15 = v14;
            }

            v14 = v14[v17];
          }

          while (v14);
          if (v15 != v39 && v40 >= *(v15 + 7))
          {
            exception = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0](exception, "RawCameraException");
            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }
        }

        sub_233756F2C(&v38, &v40);
        if ((*(*a1 + 56))(a1))
        {
          if (v29 <= v40 + 390)
          {
            goto LABEL_60;
          }
        }

        else
        {
          sub_2337338AC(a1, &v33);
          v18 = (**v33)(v33);
          if (v29 > v40 + 390)
          {
            v19 = 1;
          }

          else
          {
            v19 = v18;
          }

          if (v34)
          {
            sub_2337239E8(v34);
          }

          if ((v19 & 1) == 0)
          {
LABEL_60:
            (*(*a1 + 184))(a1, 1);
            break;
          }
        }

        sub_2337338AC(a1, &v33);
        v20 = v33;
        sub_233723AE0(__p, &v40);
        (*(*v20 + 40))(v20, __p, 0);
        if (v34)
        {
          sub_2337239E8(v34);
        }

        sub_23374D5DC(&v33);
        v21 = sub_2337571BC(&v33, "IFD", 3);
        MEMORY[0x2383ABDE0](v21, v9);
        sub_23374D748(&v33, &v30);
        v22 = *(a2 + 23);
        if (v22 >= 0)
        {
          v23 = a2;
        }

        else
        {
          v23 = *a2;
        }

        if (v22 >= 0)
        {
          v24 = *(a2 + 23);
        }

        else
        {
          v24 = *(a2 + 8);
        }

        v25 = std::string::insert(&v30, 0, v23, v24);
        v26 = *&v25->__r_.__value_.__l.__data_;
        v32 = v25->__r_.__value_.__r.__words[2];
        *__p = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        (*(*a1 + 704))(a1, 0, __p);
        if (SHIBYTE(v32) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v30.__r_.__value_.__l.__data_);
        }

        v33 = v10;
        *(&v33 + *(v10 - 24)) = v11;
        v34 = (MEMORY[0x277D82878] + 16);
        if (v36 < 0)
        {
          operator delete(v35[7].__locale_);
        }

        v9 = (v9 + 1);
        v34 = (MEMORY[0x277D82868] + 16);
        std::locale::~locale(v35);
        std::ostream::~ostream();
        MEMORY[0x2383ABE90](&v37);
      }

      sub_233756ED8(&v38, v39[0]);
    }

    sub_233735A90(v41);
  }

  return sub_233725FD4(v42);
}

void sub_23374D4C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24)
{
  sub_233735A90((v24 - 136));
  sub_233725FD4((v24 - 112));
  _Unwind_Resume(a1);
}

uint64_t *sub_23374D5DC(uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  sub_233756FF8((a1 + 1), 16);
  return a1;
}

void sub_23374D720(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x2383ABE90](v1);
  _Unwind_Resume(a1);
}

const void *sub_23374D748@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2337574EC(a1 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2337304FC();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

uint64_t sub_23374D7F0(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x2383ABE90](a1 + 112);
  return a1;
}

id sub_23374D910(uint64_t a1, void *a2, void *a3)
{
  v45 = a2;
  v5 = a3;
  sub_2337338AC(a1, &v52);
  LODWORD(v49) = 0;
  sub_233725F08(v54, &v52, &v49, 0);
  if (v53)
  {
    sub_2337239E8(v53);
  }

  sub_2337338AC(a1, &v52);
  v6 = sub_2337255C0(v52);
  if (v53)
  {
    sub_2337239E8(v53);
  }

  if (v6 == 18761 || v6 == 19789)
  {
    if (v6 == 19789)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    (*(*a1 + 96))(a1, v7);
    v44 = objc_msgSend_array(MEMORY[0x277CBEB18], v8, v9, v10, v11);
    v12 = [RAWTIFFIFD alloc];
    v43 = objc_msgSend_initWithNamespace_reverseNamespace_(v12, v13, v45, v5, v14);
    objc_msgSend_setObject_atIndexedSubscript_(v43, v15, v44, 0, v16);
    objc_msgSend_setObject_forKeyedSubscript_(v43, v17, v44, @"IFD", v18);
    sub_2337338AC(a1, &v49);
    sub_233735A18(&v52, &v49, v7);
    if (v50[0])
    {
      sub_2337239E8(v50[0]);
    }

    sub_2337338AC(a1, &v49);
    v19 = sub_2337255C0(v49);
    if (v50[0])
    {
      sub_2337239E8(v50[0]);
    }

    if (v19 == 42 || v19 == (*(*a1 + 664))(a1))
    {
      v51 = 0;
      sub_2337338AC(a1, &v49);
      v20 = ((*v49)[2])(v49);
      if (v50[0])
      {
        sub_2337239E8(v50[0]);
      }

      v21 = 0;
      v50[0] = 0;
      v50[1] = 0;
      v49 = v50;
      while (1)
      {
        sub_2337338AC(a1, &v47);
        v51 = sub_233725614(v47);
        if (v51)
        {
          v22 = v21 >= 0x14;
        }

        else
        {
          v22 = 1;
        }

        v23 = !v22;
        if (v48)
        {
          sub_2337239E8(v48);
        }

        if (!v23)
        {
          break;
        }

        v24 = v50[0];
        if (v50[0])
        {
          v25 = v50;
          do
          {
            v26 = *(v24 + 7);
            v22 = v26 >= v51;
            v27 = v26 < v51;
            if (v22)
            {
              v25 = v24;
            }

            v24 = v24[v27];
          }

          while (v24);
          if (v25 != v50 && v51 >= *(v25 + 7))
          {
            exception = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0](exception, "RawCameraException");
            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }
        }

        sub_233756F2C(&v49, &v51);
        if ((*(*a1 + 56))(a1))
        {
          if (v20 <= v51 + 390)
          {
            goto LABEL_51;
          }
        }

        else
        {
          sub_2337338AC(a1, &v47);
          v28 = (**v47)(v47);
          if (v20 > v51 + 390)
          {
            v29 = 1;
          }

          else
          {
            v29 = v28;
          }

          if (v48)
          {
            sub_2337239E8(v48);
          }

          if ((v29 & 1) == 0)
          {
LABEL_51:
            (*(*a1 + 184))(a1, 1);
            break;
          }
        }

        sub_2337338AC(a1, &v47);
        v30 = v47;
        sub_233723AE0(&v46, &v51);
        ((*v30)[5])(v30, &v46, 0);
        if (v48)
        {
          sub_2337239E8(v48);
        }

        v34 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v31, @"%@[%d]", v32, v33, @"IFD", v21);
        v35 = (*(*a1 + 712))(a1, 0, v34, v45, v5);

        if (v35)
        {
          objc_msgSend_addObject_(v44, v36, v35, v37, v38);
        }

        v21 = (v21 + 1);
      }

      sub_233756ED8(&v49, v50[0]);
      sub_233735A90(&v52);
      v40 = v43;
      v39 = v43;
    }

    else
    {
      sub_233735A90(&v52);
      v39 = 0;
      v40 = v43;
    }
  }

  else
  {
    v39 = 0;
  }

  sub_233725FD4(v54);

  return v39;
}

void sub_23374DE28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_233735A90(va);

  sub_233725FD4((v14 - 104));
  _Unwind_Resume(a1);
}

uint64_t sub_23374DF5C(uint64_t a1, uint64_t a2, _WORD *a3)
{
  sub_2337338AC(a1, &v17);
  v5 = sub_2337255C0(v17);
  if (v18)
  {
    sub_2337239E8(v18);
  }

  if (v5 > 0x200)
  {
    return 0;
  }

  sub_2337338AC(a1, &v17);
  (*(*v17 + 32))(v17, a3 + 2, 4 * ((3 * v5) & 0x3FFF));
  if (v18)
  {
    sub_2337239E8(v18);
  }

  *a3 = v5;
  sub_2337338AC(a1, &v17);
  v6 = (*(*v17 + 16))(v17);
  if (v18)
  {
    sub_2337239E8(v18);
  }

  sub_2337338AC(a1, &v17);
  v7 = sub_233725404(v17);
  if (v18)
  {
    sub_2337239E8(v18);
  }

  if (v5)
  {
    v8 = v5;
    v9 = a3 + 4;
    do
    {
      if (v7 == 1)
      {
        v10 = *(v9 - 1);
        v11 = *v9;
      }

      else
      {
        *(v9 - 2) = bswap32(*(v9 - 2)) >> 16;
        v12 = bswap32(*(v9 - 1));
        v10 = HIWORD(v12);
        *(v9 - 1) = HIWORD(v12);
        v11 = bswap32(*v9);
        *v9 = v11;
      }

      v13 = sub_23374ADC0(v10);
      v14 = v13 * v11;
      if ((v14 & 0xFFFFFFFF00000000) != 0)
      {
        __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0]();
        sub_2338F83F4();
      }

      if (v14 >= v6)
      {
        __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0]();
        sub_2338F83F4();
      }

      if (v7 != 1)
      {
        if (v13 == 4 || v14 >= 5)
        {
          *(v9 + 1) = bswap32(*(v9 + 1));
        }

        else if (v13 == 2)
        {
          v9[2] = bswap32(v9[2]) >> 16;
          v9[3] = bswap32(v9[3]) >> 16;
        }
      }

      v9 += 6;
      --v8;
    }

    while (v8);
  }

  return v5;
}

void sub_23374E184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23374E1C0()
{
  v0 = MEMORY[0x28223BE20]();
  if (*(v0 + 1176) <= v1)
  {
    return 1;
  }

  v3 = v2;
  v4 = v0;
  v5 = sub_23374DF5C(v0, v1, &v14);
  v6 = v5 != 0;
  if (v5)
  {
    LODWORD(v7) = v5;
    sub_2337338AC(v4, &v12);
    v8 = (*(*v12 + 16))(v12);
    if (v13)
    {
      sub_2337239E8(v13);
    }

    (*(*v4 + 688))(v4, v3);
    v9 = &v15;
    v7 = v7;
    do
    {
      v12 = *v9;
      LODWORD(v13) = *(v9 + 2);
      v16 = sub_23374ADC0(WORD1(v12)) * HIDWORD(v12);
      sub_233723C18(&v17, &v16);
      if (v17)
      {
        v10 = v17 >= v8;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        (*(*v4 + 728))(v4, v3, &v12);
      }

      v9 = (v9 + 12);
      --v7;
    }

    while (v7);
    (*(*v4 + 696))(v4, v3);
  }

  return v6;
}

void sub_23374E38C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23374E3A4(uint64_t a1)
{
  v2 = sub_23374ADC0(*(a1 + 2)) * *(a1 + 4);
  sub_233723C18(&v3, &v2);
  return v3;
}

id sub_23374E3F0()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v137 = v8;
  v136 = v4;
  v132 = v2;
  v135 = v6 + 1;
  if (v6 + 1 >= v7[294])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = [RAWTIFFIFD alloc];
  v133 = objc_msgSend_initWithNamespace_reverseNamespace_(v9, v10, v136, v132, v11);
  sub_23372A488(&__p, "");
  v13 = sub_23374DF5C(v7, v12, v154);
  if (SHIBYTE(v153) < 0)
  {
    operator delete(__p);
  }

  sub_2337338AC(v7, &__p);
  v131 = (*(*__p + 16))(__p);
  if (v152)
  {
    sub_2337239E8(v152);
  }

  if (!v13)
  {
LABEL_82:
    v125 = v133;
    v126 = v133;
    goto LABEL_83;
  }

  v14 = 0;
  v130 = v13;
  while (1)
  {
    v15 = &v154[6 * v14 + 2];
    v149 = *v15;
    v150 = *(v15 + 2);
    __p = (sub_23374ADC0(WORD1(v149)) * HIDWORD(v149));
    sub_233723C18(v148, &__p);
    if (!LODWORD(v148[0]) || LODWORD(v148[0]) >= v131)
    {
      goto LABEL_78;
    }

    v19 = v149;
    v20 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v16, v149, v17, v18);
    v24 = objc_msgSend_objectForKeyedSubscript_(v136, v21, v20, v22, v23);
    v28 = objc_msgSend_objectForKeyedSubscript_(v24, v25, @"Name", v26, v27);

    v32 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v29, v19, v30, v31);
    v36 = objc_msgSend_objectForKeyedSubscript_(v136, v33, v32, v34, v35);
    v40 = objc_msgSend_objectForKeyedSubscript_(v36, v37, @"Type", v38, v39);

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      WORD1(v149) = objc_msgSend_unsignedShortValue(v40, v41, v42, v43, v44);
    }

    v48 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v45, v19, v46, v47);
    v52 = objc_msgSend_objectForKeyedSubscript_(v136, v49, v48, v50, v51);
    v56 = objc_msgSend_objectForKeyedSubscript_(v52, v53, @"Count", v54, v55);

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      HIDWORD(v149) = objc_msgSend_unsignedShortValue(v56, v57, v58, v59, v60);
    }

    v61 = v136;
    v138 = v132;
    v65 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v62, v19, v63, v64);
    v69 = objc_msgSend_objectForKeyedSubscript_(v61, v66, v65, v67, v68);
    v73 = objc_msgSend_objectForKeyedSubscript_(v69, v70, @"Namespace", v71, v72);

    if (v73)
    {
      sub_2337338AC(v7, &__p);
      v74 = (v73)[2](v73, &__p, &v149);

      if (v152)
      {
        sub_2337239E8(v152);
      }

      v61 = v74;
    }

    sub_2337338AC(v7, &__p);
    v75 = sub_23374BFC0(v61);
    v76 = sub_2337486CC(&v149, &__p, v61, v75);

    if (v152)
    {
      sub_2337239E8(v152);
    }

    (*(*v7 + 632))(&__p, v7, v133, v137, v19, v28, WORD1(v149), HIDWORD(v149), v76);
    v77 = __p;

    WORD1(v149) = v152;
    HIDWORD(v149) = HIDWORD(v152);
    v134 = v153;

    if (WORD1(v149) == 37500)
    {
      sub_2337338AC(v7, &v145);
      LODWORD(v141) = sub_233749410(&v149);
      sub_233726A8C(&v143, &v141);
      sub_233725F08(v148, &v145, &v143, 0);
      if (v146)
      {
        sub_2337239E8(v146);
      }

      if ((*(*v7 + 752))(v7, &v149))
      {
        sub_2337338AC(v7, &v143);
        v92 = (*(*v7 + 120))(v7);
        sub_233735A18(&v145, &v143, v92);
        if (v144)
        {
          sub_2337239E8(v144);
        }

        sub_2337338AC(v7, &v141);
        LODWORD(v139) = (*(*v7 + 136))(v7);
        sub_233754E8C(&v143, &v141, &v139);
        if (v142)
        {
          sub_2337239E8(v142);
        }

        sub_2337338AC(v7, &v139);
        v147 = (*(*v7 + 152))(v7);
        sub_233725F08(&v141, &v139, &v147, 0);
        if (v140)
        {
          sub_2337239E8(v140);
        }

        if (v77)
        {
          objc_msgSend_stringByAppendingFormat_(v137, v93, @".%@", v94, v95, v77);
        }

        else
        {
          objc_msgSend_stringByAppendingFormat_(v137, v93, @".%lu", v94, v95, v19);
        }
        v117 = ;
        v120 = (*(*v7 + 712))(v7, v135, v117, v61, v138);
        if (v120)
        {
          objc_msgSend_setObject_atIndexedSubscript_(v133, v118, v120, v19, v119);
        }

        (*(*v7 + 760))(v7);
        sub_233725FD4(&v141);
        sub_233754F18(&v143);
        sub_233735A90(&v145);
      }

      sub_233725FD4(v148);
      v96 = v134;
      goto LABEL_77;
    }

    if (WORD1(v149) == 13)
    {
      break;
    }

    v96 = v134;
    objc_msgSend_setObject_atIndexedSubscript_(v133, v78, v134, v19, v79);
LABEL_77:

LABEL_78:
    if (++v14 == v130)
    {
      goto LABEL_82;
    }
  }

  sub_2337338AC(v7, &v145);
  sub_233754E04(v148, &v145);
  if (v146)
  {
    sub_2337239E8(v146);
  }

  v84 = HIDWORD(v149);
  LODWORD(v141) = v150;
  if (HIDWORD(v149) == 1)
  {
    LODWORD(v139) = v150;
    sub_2337338AC(v7, &v145);
    v85 = (*(*v145 + 16))(v145);
    v147 = 390;
    LODWORD(v143) = v85;
    v86 = *sub_233757538(&v143, &v147);
    v87 = v139;
    if (v146)
    {
      sub_2337239E8(v146);
    }

    if (v86 >= v87)
    {
      sub_2337338AC(v7, &v145);
      v88 = v145;
      sub_233723AE0(&v143, &v139);
      (*(*v88 + 40))(v88, &v143, 0);
      if (v146)
      {
        sub_2337239E8(v146);
      }

      if (v77)
      {
        objc_msgSend_stringByAppendingFormat_(v137, v89, @".%@", v90, v91, v77);
      }

      else
      {
        objc_msgSend_stringByAppendingFormat_(v137, v89, @".%lu", v90, v91, v19);
      }
      v99 = ;
      v123 = (*(*v7 + 712))(v7, v135, v99, v61, v138);
      if (v123)
      {
        objc_msgSend_setObject_atIndexedSubscript_(v133, v121, v123, v19, v122);
      }

      goto LABEL_75;
    }
  }

  else
  {
    v99 = objc_msgSend_array(MEMORY[0x277CBEB18], v80, v81, v82, v83);
    if (!v84)
    {
LABEL_65:
      objc_msgSend_setObject_atIndexedSubscript_(v133, v97, v99, v19, v98);
LABEL_75:

      v124 = 1;
      goto LABEL_76;
    }

    v100 = 0;
    while (1)
    {
      LODWORD(v139) = v141;
      sub_2337338AC(v7, &v145);
      v101 = (*(*v145 + 16))(v145);
      v147 = 390;
      LODWORD(v143) = v101;
      v102 = *sub_233757538(&v143, &v147);
      v103 = v139;
      if (v146)
      {
        sub_2337239E8(v146);
      }

      if (v102 < v103)
      {
        break;
      }

      sub_2337338AC(v7, &v145);
      v104 = v145;
      sub_233723AE0(&v143, &v141);
      (*(*v104 + 40))(v104, &v143, 0);
      if (v146)
      {
        sub_2337239E8(v146);
      }

      sub_2337338AC(v7, &v145);
      v105 = sub_233725614(v145);
      LODWORD(v139) = v105;
      if (v146)
      {
        sub_2337239E8(v146);
        v105 = v139;
      }

      if (!v105)
      {
        goto LABEL_87;
      }

      sub_2337338AC(v7, &v145);
      v106 = (*(*v145 + 16))(v145);
      v107 = v139;
      if (v146)
      {
        sub_2337239E8(v146);
      }

      if (v107 >= v106)
      {
LABEL_87:
        v128 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v128, "RawCameraException");
        __cxa_throw(v128, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      sub_2337338AC(v7, &v145);
      v108 = v145;
      sub_233723AE0(&v143, &v139);
      (*(*v108 + 40))(v108, &v143, 0);
      if (v146)
      {
        sub_2337239E8(v146);
      }

      if (v77)
      {
        objc_msgSend_stringByAppendingFormat_(v137, v109, @".%@[%lu]", v110, v111, v77, v100);
      }

      else
      {
        objc_msgSend_stringByAppendingFormat_(v137, v109, @".%lu[%lu]", v110, v111, v19, v100);
      }
      v112 = ;
      v116 = (*(*v7 + 712))(v7, v135, v112, v61, v138);
      if (v116)
      {
        objc_msgSend_addObject_(v99, v113, v116, v114, v115);
      }

      ++v100;

      LODWORD(v141) = v141 + 4;
      if (v84 == v100)
      {
        goto LABEL_65;
      }
    }
  }

  v124 = 0;
LABEL_76:
  sub_233725FD4(v148);
  v96 = v134;
  if (v124)
  {
    goto LABEL_77;
  }

  v126 = 0;
  v125 = v133;
LABEL_83:

  return v126;
}

void sub_23374F01C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, void *a18, void *a19, void *a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, void *a40)
{
  sub_233725FD4(&a33);

  _Unwind_Resume(a1);
}

uint64_t sub_23374F33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2337338AC(a1, &v26);
  sub_233754E04(v33, &v26);
  if (v27)
  {
    sub_2337239E8(v27);
  }

  v6 = *(a3 + 4);
  v32 = *(a3 + 8);
  if (v6)
  {
    v7 = 0;
    if (v6 >= 0xA)
    {
      v8 = 10;
    }

    else
    {
      v8 = v6;
    }

    v9 = *MEMORY[0x277D82828];
    v10 = *(MEMORY[0x277D82828] + 24);
    do
    {
      v31 = v32;
      if ((*(*a1 + 56))(a1))
      {
        sub_2337338AC(a1, &v26);
        v11 = (*(*v26 + 16))(v26);
        LODWORD(v23.__r_.__value_.__l.__data_) = 390;
        LODWORD(__p[0]) = v11;
        v12 = *sub_233757538(__p, &v23);
        v13 = v31;
        if (v27)
        {
          sub_2337239E8(v27);
        }

        if (v12 < v13)
        {
          break;
        }
      }

      if (v6 != 1)
      {
        sub_2337338AC(a1, &v26);
        v14 = v26;
        sub_233723AE0(__p, &v32);
        (*(*v14 + 40))(v14, __p, 0);
        if (v27)
        {
          sub_2337239E8(v27);
        }

        sub_2337338AC(a1, &v26);
        v31 = sub_233725614(v26);
        if (v27)
        {
          sub_2337239E8(v27);
        }
      }

      sub_2337338AC(a1, &v26);
      v15 = v26;
      sub_233723AE0(__p, &v31);
      (*(*v15 + 40))(v15, __p, 0);
      if (v27)
      {
        sub_2337239E8(v27);
      }

      sub_23374D5DC(&v26);
      v16 = sub_2337571BC(&v26, ":SUBIFD", 7);
      MEMORY[0x2383ABDE0](v16, v7);
      sub_23374D748(&v26, &v23);
      v17 = *(a2 + 23);
      if (v17 >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      if (v17 >= 0)
      {
        v19 = *(a2 + 23);
      }

      else
      {
        v19 = *(a2 + 8);
      }

      v20 = std::string::insert(&v23, 0, v18, v19);
      v21 = *&v20->__r_.__value_.__l.__data_;
      v25 = v20->__r_.__value_.__r.__words[2];
      *__p = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      (*(*a1 + 704))(a1, 0, __p);
      if (SHIBYTE(v25) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      v32 += 4;
      v26 = v9;
      *(&v26 + *(v9 - 24)) = v10;
      v27 = (MEMORY[0x277D82878] + 16);
      if (v29 < 0)
      {
        operator delete(v28[7].__locale_);
      }

      v7 = (v7 + 1);
      v27 = (MEMORY[0x277D82868] + 16);
      std::locale::~locale(v28);
      std::ostream::~ostream();
      MEMORY[0x2383ABE90](&v30);
    }

    while (v8 != v7);
  }

  sub_233725FD4(v33);
  return 1;
}

void sub_23374F740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, std::__shared_weak_count *a26)
{
  if (a26)
  {
    sub_2337239E8(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23374F7E8()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v4 = sub_23374DF5C(v0, v1, &v8);
  if (v4)
  {
    v5 = &v9;
    v6 = v4;
    do
    {
      (*(*v3 + 744))(v3, v2, v5);
      v5 = (v5 + 12);
      --v6;
    }

    while (v6);
  }

  return 1;
}

uint64_t sub_23374F8A0(uint64_t a1)
{
  sub_2337338AC(a1, &v3);
  v5 = (*(*v3 + 48))(v3);
  (*(*a1 + 160))(a1, &v5);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return 1;
}

void sub_23374F938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23374F950()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v4 = sub_23374DF5C(v0, v1, &v8);
  if (v4)
  {
    v5 = &v9;
    v6 = v4;
    do
    {
      (*(*v3 + 776))(v3, v2, v5);
      v5 = (v5 + 12);
      --v6;
    }

    while (v6);
  }

  return 1;
}

void sub_23374FA0C(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v86 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) == 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = *v7++;
      if (v9 == 58)
      {
        ++v8;
      }

      --v6;
    }

    while (v6);
    if (v8 >= 9)
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }
  }

  v10 = *a3;
  if (v10 <= 0x143)
  {
    if (*a3 <= 0x13Cu)
    {
      switch(*a3)
      {
        case 0xFEu:
          v11 = a3[1];
          if ((v11 == 4 || v11 == 9) && *(a3 + 1) == 1)
          {
            v12 = *(a3 + 2);
            __str.__r_.__value_.__r.__words[0] = a2;
            v13 = sub_2337575A8(a1 + 512, a2);
            goto LABEL_256;
          }

          break;
        case 0x100u:
          v28 = a3[1];
          if (v28 == 3)
          {
            if (*(a3 + 1) == 1)
            {
              v12 = sub_233751308(a3);
              __str.__r_.__value_.__r.__words[0] = a2;
              v13 = sub_2337575A8(a1 + 536, a2);
              goto LABEL_256;
            }
          }

          else if (v28 == 4 && *(a3 + 1) == 1)
          {
            v12 = *(a3 + 2);
            __str.__r_.__value_.__r.__words[0] = a2;
            v13 = sub_2337575A8(a1 + 536, a2);
            goto LABEL_256;
          }

          break;
        case 0x101u:
          v27 = a3[1];
          if (v27 == 3)
          {
            if (*(a3 + 1) == 1)
            {
              v12 = sub_233751308(a3);
              __str.__r_.__value_.__r.__words[0] = a2;
              v13 = sub_2337575A8(a1 + 560, a2);
              goto LABEL_256;
            }
          }

          else if (v27 == 4 && *(a3 + 1) == 1)
          {
            v12 = *(a3 + 2);
            __str.__r_.__value_.__r.__words[0] = a2;
            v13 = sub_2337575A8(a1 + 560, a2);
            goto LABEL_256;
          }

          break;
        case 0x102u:
          if (a3[1] == 3)
          {
            memset(&__str, 0, sizeof(__str));
            if (sub_23375134C(a1, a3, &__str.__r_.__value_.__l.__data_))
            {
              v80 = a2;
              v37 = (sub_2337577E4(a1 + 656, a2) + 56);
              if (v37 != &__str)
              {
                sub_233723454(v37, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_, (__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) >> 2);
              }
            }

            goto LABEL_200;
          }

          break;
        case 0x103u:
          if (a3[1] - 5 >= 0xFFFFFFFE && *(a3 + 1) == 1)
          {
            LODWORD(v80) = 0;
            sub_233726998(&__str, &v80);
            v12 = sub_23374B704(a3, &__str);
            __str.__r_.__value_.__r.__words[0] = a2;
            v13 = sub_2337575A8(a1 + 584, a2);
            goto LABEL_256;
          }

          break;
        case 0x106u:
          if (a3[1] == 3 && *(a3 + 1) == 1)
          {
            LODWORD(v80) = 0;
            sub_233726998(&__str, &v80);
            v12 = sub_23374B704(a3, &__str);
            __str.__r_.__value_.__r.__words[0] = a2;
            v13 = sub_2337575A8(a1 + 632, a2);
            goto LABEL_256;
          }

          break;
        case 0x10Fu:
          if (a3[1] == 2)
          {
            memset(&__str, 0, sizeof(__str));
            if (sub_23375168C(a1, a3, &__str, 1))
            {
              v80 = a2;
              v36 = sub_23375797C(a1 + 1032, a2);
              std::string::operator=((v36 + 56), &__str);
            }

            goto LABEL_126;
          }

          break;
        case 0x110u:
          if (a3[1] == 2)
          {
            memset(&__str, 0, sizeof(__str));
            if (sub_23375168C(a1, a3, &__str, 1))
            {
              v80 = a2;
              v38 = sub_23375797C(a1 + 1056, a2);
              std::string::operator=((v38 + 56), &__str);
            }

LABEL_126:
            sub_2338F8878(&__str);
          }

          break;
        case 0x111u:
          if (a3[1] - 3 <= 1)
          {
            sub_2337338AC(a1, &__str);
            v29 = sub_233725414(__str.__r_.__value_.__l.__data_);
            if (__str.__r_.__value_.__l.__size_)
            {
              sub_2337239E8(__str.__r_.__value_.__l.__size_);
            }

            memset(&__str, 0, sizeof(__str));
            if (sub_23375134C(a1, a3, &__str.__r_.__value_.__l.__data_))
            {
              if (v29)
              {
                v30 = __str.__r_.__value_.__r.__words[0];
                if (((__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) & 0x3FFFFFFFCLL) != 0)
                {
                  v31 = 0;
                  v32 = ((__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) >> 2);
                  do
                  {
                    LODWORD(v80) = v29;
                    LODWORD(__src) = *sub_233723874(&v80, (v30 + v31));
                    v33 = sub_233751844(&__src);
                    v30 = __str.__r_.__value_.__r.__words[0];
                    *(__str.__r_.__value_.__r.__words[0] + v31) = v33;
                    v31 += 4;
                    --v32;
                  }

                  while (v32);
                }
              }

              v80 = a2;
              v34 = (sub_2337577E4(a1 + 776, a2) + 56);
              if (v34 != &__str)
              {
                sub_233723454(v34, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_, (__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) >> 2);
              }
            }

            goto LABEL_200;
          }

          break;
        case 0x112u:
          if (a3[1] == 3 && *(a3 + 1) == 1)
          {
            LODWORD(v80) = 0;
            sub_233726998(&__str, &v80);
            v12 = sub_23374B704(a3, &__str);
            __str.__r_.__value_.__r.__words[0] = a2;
            v13 = sub_2337575A8(a1 + 704, a2);
            goto LABEL_256;
          }

          break;
        case 0x115u:
          if (a3[1] == 3 && *(a3 + 1) == 1)
          {
            LODWORD(v80) = 0;
            sub_233726998(&__str, &v80);
            v12 = sub_23374B704(a3, &__str);
            __str.__r_.__value_.__r.__words[0] = a2;
            v13 = sub_2337575A8(a1 + 680, a2);
            goto LABEL_256;
          }

          break;
        case 0x116u:
          v40 = a3[1];
          if (v40 == 3)
          {
            if (*(a3 + 1) == 1)
            {
              v12 = sub_233751308(a3);
              __str.__r_.__value_.__r.__words[0] = a2;
              v13 = sub_2337575A8(a1 + 728, a2);
              goto LABEL_256;
            }
          }

          else if (v40 == 4 && *(a3 + 1) == 1)
          {
            v12 = *(a3 + 2);
            __str.__r_.__value_.__r.__words[0] = a2;
            v13 = sub_2337575A8(a1 + 728, a2);
            goto LABEL_256;
          }

          break;
        case 0x117u:
          if (a3[1] - 3 <= 1)
          {
            memset(&__str, 0, sizeof(__str));
            if (sub_23375134C(a1, a3, &__str.__r_.__value_.__l.__data_))
            {
              v80 = a2;
              v39 = (sub_2337577E4(a1 + 800, a2) + 56);
              if (v39 != &__str)
              {
                sub_233723454(v39, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_, (__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) >> 2);
              }
            }

            goto LABEL_200;
          }

          break;
        case 0x11Cu:
          if (a3[1] == 3 && *(a3 + 1) == 1)
          {
            LODWORD(v80) = 0;
            sub_233726998(&__str, &v80);
            v12 = sub_23374B704(a3, &__str);
            __str.__r_.__value_.__r.__words[0] = a2;
            v13 = sub_2337575A8(a1 + 752, a2);
            goto LABEL_256;
          }

          break;
        default:
          return;
      }

      return;
    }

    if (v10 == 317)
    {
      if (a3[1] != 3 || *(a3 + 1) != 1)
      {
        return;
      }

      LODWORD(v80) = 0;
      sub_233726998(&__str, &v80);
      v12 = sub_23374B704(a3, &__str);
      __str.__r_.__value_.__r.__words[0] = a2;
      v13 = sub_2337575A8(a1 + 608, a2);
    }

    else if (v10 == 322)
    {
      if ((*(*a1 + 56))(a1))
      {
        return;
      }

      v57 = a3[1];
      if (v57 == 3)
      {
        if (*(a3 + 1) != 1)
        {
          return;
        }

        v12 = sub_233751308(a3);
        __str.__r_.__value_.__r.__words[0] = a2;
        v13 = sub_2337575A8(a1 + 872, a2);
      }

      else
      {
        if (v57 != 4 || *(a3 + 1) != 1)
        {
          return;
        }

        v12 = *(a3 + 2);
        __str.__r_.__value_.__r.__words[0] = a2;
        v13 = sub_2337575A8(a1 + 872, a2);
      }
    }

    else
    {
      if (v10 != 323 || ((*(*a1 + 56))(a1) & 1) != 0)
      {
        return;
      }

      v18 = a3[1];
      if (v18 == 3)
      {
        if (*(a3 + 1) != 1)
        {
          return;
        }

        v12 = sub_233751308(a3);
        __str.__r_.__value_.__r.__words[0] = a2;
        v13 = sub_2337575A8(a1 + 896, a2);
      }

      else
      {
        if (v18 != 4 || *(a3 + 1) != 1)
        {
          return;
        }

        v12 = *(a3 + 2);
        __str.__r_.__value_.__r.__words[0] = a2;
        v13 = sub_2337575A8(a1 + 896, a2);
      }
    }

LABEL_256:
    *(v13 + 56) = v12;
    return;
  }

  if (*a3 <= 0x213u)
  {
    if (*a3 > 0x201u)
    {
      if (*a3 > 0x211u)
      {
        if (v10 != 530)
        {
          if (((*(*a1 + 56))(a1) & 1) == 0 && a3[1] == 3 && *(a3 + 1) == 1)
          {
            v26 = sub_233751308(a3);
            __str.__r_.__value_.__r.__words[0] = a2;
            *(sub_233757C60(a1 + 1128, a2) + 56) = v26;
          }

          return;
        }

        if (((*(*a1 + 56))(a1) & 1) != 0 || a3[1] != 3 || *(a3 + 1) != 2)
        {
          return;
        }

        memset(&__str, 0, sizeof(__str));
        if (sub_233751BE4(a1, a3, &__str))
        {
          v80 = a2;
          v53 = (sub_2337577E4(a1 + 1104, a2) + 56);
          if (v53 != &__str)
          {
            sub_233754F80(v53, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_, (__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) >> 1);
          }
        }
      }

      else
      {
        if (v10 == 514)
        {
          if (a3[1] != 4 || *(a3 + 1) != 1)
          {
            return;
          }

          v12 = *(a3 + 2);
          __str.__r_.__value_.__r.__words[0] = a2;
          v13 = sub_2337575A8(a1 + 848, a2);
          goto LABEL_256;
        }

        if (v10 != 529 || ((*(*a1 + 56))(a1) & 1) != 0 || a3[1] != 5 || *(a3 + 1) != 3)
        {
          return;
        }

        memset(&__str, 0, sizeof(__str));
        if (sub_2337518A0(a1, a3, &__str.__r_.__value_.__l.__data_))
        {
          v80 = a2;
          v17 = (sub_233757B14(a1 + 1080, a2) + 56);
          if (v17 != &__str)
          {
            sub_233723454(v17, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_, (__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) >> 2);
          }
        }
      }
    }

    else
    {
      if (*a3 > 0x149u)
      {
        if (v10 == 330)
        {
          sub_2338F88A4(a3, a1, a2);
        }

        else if (v10 == 513 && a3[1] == 4 && *(a3 + 1) == 1)
        {
          v24 = sub_233749410(a3);
          sub_2337338AC(a1, &__str);
          LODWORD(__p[0]) = sub_233725414(__str.__r_.__value_.__l.__data_);
          LODWORD(__src) = sub_233751844(__p);
          LODWORD(v80) = v24;
          v25 = *sub_233753AB0(&v80, &__src);
          v80 = a2;
          *(sub_2337575A8(a1 + 824, a2) + 56) = v25;
          if (__str.__r_.__value_.__l.__size_)
          {
            sub_2337239E8(__str.__r_.__value_.__l.__size_);
          }
        }

        return;
      }

      if (v10 == 324)
      {
        if (((*(*a1 + 56))(a1) & 1) != 0 || a3[1] != 4)
        {
          return;
        }

        sub_2337338AC(a1, &__str);
        v47 = sub_233725414(__str.__r_.__value_.__l.__data_);
        if (__str.__r_.__value_.__l.__size_)
        {
          sub_2337239E8(__str.__r_.__value_.__l.__size_);
        }

        memset(&__str, 0, sizeof(__str));
        if (sub_23375134C(a1, a3, &__str.__r_.__value_.__l.__data_))
        {
          if (v47)
          {
            v80 = ((__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) >> 2);
            sub_233723C18(&__src, &v80);
            if (__src)
            {
              v48 = 0;
              v49 = __str.__r_.__value_.__r.__words[0];
              v50 = 4 * __src;
              do
              {
                LODWORD(v80) = v47;
                LODWORD(__src) = *sub_233723874(&v80, (v49 + v48));
                v51 = sub_233751844(&__src);
                v49 = __str.__r_.__value_.__r.__words[0];
                *(__str.__r_.__value_.__r.__words[0] + v48) = v51;
                v48 += 4;
              }

              while (v50 != v48);
            }
          }

          v80 = a2;
          v52 = (sub_2337577E4(a1 + 920, a2) + 56);
          if (v52 != &__str)
          {
            sub_233723454(v52, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_, (__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) >> 2);
          }
        }
      }

      else
      {
        if (v10 != 325 || ((*(*a1 + 56))(a1) & 1) != 0 || a3[1] - 3 > 1)
        {
          return;
        }

        memset(&__str, 0, sizeof(__str));
        if (sub_23375134C(a1, a3, &__str.__r_.__value_.__l.__data_))
        {
          v80 = a2;
          v16 = (sub_2337577E4(a1 + 944, a2) + 56);
          if (v16 != &__str)
          {
            sub_233723454(v16, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_, (__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) >> 2);
          }
        }
      }
    }

LABEL_200:
    sub_2338F884C(&__str);
    return;
  }

  if (*a3 <= 0x8299u)
  {
    if (*a3 > 0x828Cu)
    {
      if (v10 != 33421)
      {
        if (v10 == 33422 && ((*(*a1 + 56))(a1) & 1) == 0)
        {
          memset(&__str, 0, sizeof(__str));
          v80 = 0;
          v81 = 0;
          v82 = 0;
          v19 = a3[1];
          if (v19 == 1 || v19 == 7)
          {
            if (sub_233751E10(a1 + 968, a2, &__str) && __str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0] == 4)
            {
              v20 = *__str.__r_.__value_.__l.__data_;
              LODWORD(__p[0]) = *(__str.__r_.__value_.__r.__words[0] + 2);
              LODWORD(__src) = v20;
              if (*sub_233757DB0(&__src, __p) == *(a3 + 1))
              {
                if (sub_233751E78(a1, a3, &v80))
                {
                  __src = a2;
                  v21 = (sub_2337577E4(a1 + 992, a2) + 56);
                  if (v21 != &v80)
                  {
                    sub_2337550A4(v21, v80, v81, v81 - v80);
                  }
                }
              }
            }

            v22 = v80;
          }

          else
          {
            v22 = 0;
          }

          sub_2338F880C(&__str, &v80, v22);
        }

        return;
      }

      if (((*(*a1 + 56))(a1) & 1) != 0 || a3[1] != 3 || *(a3 + 1) != 2)
      {
        return;
      }

      sub_2337338AC(a1, &v80);
      sub_23374B2FC(a3, &v80, &__str.__r_.__value_.__l.__data_);
      if (v81)
      {
        sub_2337239E8(v81);
      }

      v80 = a2;
      v42 = (sub_2337577E4(a1 + 968, a2) + 56);
      if (v42 != &__str)
      {
        sub_233754F80(v42, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_, (__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) >> 1);
      }
    }

    else
    {
      if (v10 != 532)
      {
        if (v10 == 700)
        {
          sub_2338F8988(a1, a3, a2);
        }

        return;
      }

      if (((*(*a1 + 56))(a1) & 1) != 0 || a3[1] != 5 || *(a3 + 1) != 6)
      {
        return;
      }

      memset(&__str, 0, sizeof(__str));
      if (sub_2337518A0(a1, a3, &__str.__r_.__value_.__l.__data_))
      {
        v80 = a2;
        v41 = (sub_233757B14(a1 + 1152, a2) + 56);
        if (v41 != &__str)
        {
          sub_233723454(v41, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_, (__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) >> 2);
        }
      }
    }

    goto LABEL_200;
  }

  if (*a3 <= 0xC61Cu)
  {
    if (v10 == 33434)
    {
      if ((sub_2338F892C(a1, a3) & 1) == 0)
      {
        LODWORD(v80) = 0;
        if (sub_233752180(a1, a3, &v80))
        {
          v43 = *&v80;
          __str.__r_.__value_.__r.__words[0] = a2;
          *(sub_233757E18(a1 + 288, a2) + 56) = v43;
        }
      }

      return;
    }

    if (v10 != 34665 || a3[1] != 4 || *(a3 + 1) != 1)
    {
      return;
    }

    sub_23372A488(&__str, ":EXIF");
    sub_2337338AC(a1, &__src);
    LODWORD(v73.__r_.__value_.__l.__data_) = sub_233749410(a3);
    sub_233726A8C(__p, &v73);
    sub_233725F08(&v80, &__src, __p, 0);
    if (v84)
    {
      sub_2337239E8(v84);
    }

    sub_2337520B4(a2, &__str.__r_.__value_.__l.__data_, &__src);
    (*(*a1 + 736))(a1, &__src);
    if (v85 < 0)
    {
      operator delete(__src);
    }

    sub_233725FD4(&v80);
    if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    v23 = __str.__r_.__value_.__r.__words[0];
LABEL_248:
    operator delete(v23);
    return;
  }

  switch(v10)
  {
    case 0xC61Du:
      if (((*(*a1 + 56))(a1) & 1) == 0)
      {
        v80 = 0;
        sub_2337338AC(a1, &__str);
        v55 = sub_23374ABCC(a3, &v80, &__str, v54);
        if (__str.__r_.__value_.__l.__size_)
        {
          sub_2337239E8(__str.__r_.__value_.__l.__size_);
        }

        if (v55)
        {
          __src = v80;
          __str.__r_.__value_.__r.__words[0] = a2;
          v56 = sub_233757B14(a1 + 240, a2);
          sub_233755258((v56 + 56), &__src, &v84, 1uLL);
        }
      }

      return;
    case 0xC628u:
      if ((*(*a1 + 56))(a1))
      {
        return;
      }

      sub_2337338AC(a1, &v80);
      sub_23374AEDC(a3, &v80, &__str.__r_.__value_.__l.__data_);
      if (v81)
      {
        sub_2337239E8(v81);
      }

      size = __str.__r_.__value_.__l.__size_;
      v44 = __str.__r_.__value_.__r.__words[0];
      if (__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0] == 24)
      {
        if (__str.__r_.__value_.__r.__words[0] < __str.__r_.__value_.__l.__size_)
        {
          do
          {
            *v44 = 1.0 / *v44;
            ++v44;
          }

          while (v44 < size);
        }

        v80 = a2;
        v46 = (sub_233757B14(a1 + 144, a2) + 56);
        v44 = __str.__r_.__value_.__r.__words[0];
        if (v46 != &__str)
        {
          sub_23373176C(v46, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_, (__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) >> 3);
          v44 = __str.__r_.__value_.__r.__words[0];
        }
      }

      if (!v44)
      {
        return;
      }

      __str.__r_.__value_.__l.__size_ = v44;
      v23 = v44;
      goto LABEL_248;
    case 0xC6F5u:
      v14 = a3[1];
      if (v14 == 7 || v14 == 4)
      {
        sub_2337338AC(a1, &__str);
        if ((**__str.__r_.__value_.__l.__data_)(__str.__r_.__value_.__r.__words[0]))
        {
          v15 = 1;
        }

        else
        {
          v58 = sub_233749410(a3);
          LODWORD(__src) = sub_23374E3A4(a3);
          LODWORD(v80) = v58;
          v59 = *sub_233753AB0(&v80, &__src);
          sub_2337338AC(a1, &v80);
          v15 = v59 < (*(*v80 + 16))(v80);
          if (v81)
          {
            sub_2337239E8(v81);
          }
        }

        if (__str.__r_.__value_.__l.__size_)
        {
          sub_2337239E8(__str.__r_.__value_.__l.__size_);
        }

        if (!v15)
        {
          sub_2338F88F4();
          return;
        }

        v80 = 0;
        v81 = 0;
        v82 = 0;
        v60 = sub_23375134C(a1, a3, &v80);
        v61 = v80;
        if (v60)
        {
          v62 = v81;
          if (v80 != v81)
          {
            v63 = 0;
            v64 = *MEMORY[0x277D82828];
            v65 = *(MEMORY[0x277D82828] + 24);
            do
            {
              sub_2337338AC(a1, &__str);
              sub_233723AE0(__p, v61);
              sub_233754E8C(&__src, &__str, __p);
              if (__str.__r_.__value_.__l.__size_)
              {
                sub_2337239E8(__str.__r_.__value_.__l.__size_);
              }

              sub_23374D5DC(&__str);
              v66 = sub_2337571BC(&__str, ":CAMERAPROFILES", 15);
              v67 = MEMORY[0x2383ABDD0](v66, v63);
              sub_2337571BC(v67, ":", 1);
              sub_23374D748(&__str, &v73);
              v68 = *(a2 + 23);
              if (v68 >= 0)
              {
                v69 = a2;
              }

              else
              {
                v69 = *a2;
              }

              if (v68 >= 0)
              {
                v70 = *(a2 + 23);
              }

              else
              {
                v70 = *(a2 + 8);
              }

              v71 = std::string::insert(&v73, 0, v69, v70);
              v72 = *&v71->__r_.__value_.__l.__data_;
              v75 = v71->__r_.__value_.__r.__words[2];
              *__p = v72;
              v71->__r_.__value_.__l.__size_ = 0;
              v71->__r_.__value_.__r.__words[2] = 0;
              v71->__r_.__value_.__r.__words[0] = 0;
              (*(*a1 + 672))(a1, __p, 17234);
              if (SHIBYTE(v75) < 0)
              {
                operator delete(__p[0]);
              }

              if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v73.__r_.__value_.__l.__data_);
              }

              __str.__r_.__value_.__r.__words[0] = v64;
              *(__str.__r_.__value_.__r.__words + *(v64 - 24)) = v65;
              __str.__r_.__value_.__l.__size_ = MEMORY[0x277D82878] + 16;
              if (v78 < 0)
              {
                operator delete(v77);
              }

              __str.__r_.__value_.__l.__size_ = MEMORY[0x277D82868] + 16;
              std::locale::~locale(&__str.__r_.__value_.__r.__words[2]);
              std::ostream::~ostream();
              MEMORY[0x2383ABE90](&v79);
              sub_233754F18(&__src);
              ++v61;
              v63 = (v63 + 1);
            }

            while (v61 != v62);
            v61 = v80;
          }
        }

        if (v61)
        {
          v81 = v61;
          v23 = v61;
          goto LABEL_248;
        }
      }

      break;
  }
}

void sub_233751144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233751308(uint64_t a1)
{
  v3 = 0;
  sub_233726998(&v4, &v3);
  return sub_23374B704(a1, &v4);
}

uint64_t sub_23375134C(uint64_t a1, uint64_t a2, const void **a3)
{
  sub_2337338AC(a1, &v19);
  v6 = (*(*v19 + 16))(v19);
  v7 = sub_23374E3A4(a2);
  if (v20)
  {
    sub_2337239E8(v20);
  }

  if (v6 < v7)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v8 = *(a2 + 2);
  if (v8 == 3)
  {
    sub_233754C14(a3, *(a2 + 4));
    a3[1] = *a3;
    v11 = *(a2 + 4);
    if (v11 < 3)
    {
      v19 = 0;
      if (v11)
      {
        do
        {
          sub_233723C18(&v17, &v19);
          LODWORD(v17) = sub_23374B704(a2, &v17);
          sub_2337539D0(a3, &v17);
          ++v19;
        }

        while (v19 < *(a2 + 4));
      }

      return 1;
    }

    sub_2337338AC(a1, &v17);
    v15 = sub_233749410(a2);
    sub_233726A8C(&v16, &v15);
    sub_233725F08(&v19, &v17, &v16, 0);
    if (v18)
    {
      sub_2337239E8(v18);
    }

    if (*(a2 + 4))
    {
      v12 = 0;
      do
      {
        sub_2337338AC(a1, &v17);
        v13 = sub_2337255C0(v17);
        if (v18)
        {
          sub_2337239E8(v18);
        }

        LODWORD(v17) = v13;
        sub_2337539D0(a3, &v17);
        ++v12;
      }

      while (v12 < *(a2 + 4));
    }
  }

  else
  {
    if (v8 != 4)
    {
      return 0;
    }

    sub_233754C14(a3, *(a2 + 4));
    a3[1] = *a3;
    if (*(a2 + 4) < 2u)
    {
      LODWORD(v19) = *(a2 + 8);
      sub_2337539D0(a3, &v19);
      return 1;
    }

    sub_2337338AC(a1, &v17);
    v15 = sub_233749410(a2);
    sub_233726A8C(&v16, &v15);
    sub_233725F08(&v19, &v17, &v16, 0);
    if (v18)
    {
      sub_2337239E8(v18);
    }

    if (*(a2 + 4))
    {
      v9 = 0;
      do
      {
        sub_2337338AC(a1, &v17);
        v10 = sub_233725614(v17);
        if (v18)
        {
          sub_2337239E8(v18);
        }

        v16 = v10;
        sub_2337539D0(a3, &v16);
        ++v9;
      }

      while (v9 < *(a2 + 4));
    }
  }

  sub_233725FD4(&v19);
  return 1;
}

void sub_2337515F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, uint64_t a13)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23375168C(uint64_t a1, uint64_t a2, std::string *a3, int a4)
{
  memset(&__str, 0, sizeof(__str));
  v7 = *(a2 + 4);
  if (v7 <= 4)
  {
    if (v7)
    {
      v11 = 0;
      do
      {
        LODWORD(v18[0]) = v11;
        if (!sub_233754BB0(a2, v18))
        {
          break;
        }

        LODWORD(v18[0]) = v11;
        v12 = sub_233754BB0(a2, v18);
        std::string::push_back(&__str, v12);
        ++v11;
      }

      while (v11 < *(a2 + 4));
    }
  }

  else
  {
    sub_2337338AC(a1, &v16);
    v14 = sub_233749410(a2);
    sub_233726A8C(&v15, &v14);
    sub_233725F08(v18, &v16, &v15, 0);
    if (v17)
    {
      sub_2337239E8(v17);
    }

    sub_2337338AC(a1, &v16);
    v15 = *(a2 + 4);
    v9 = sub_2337257E8(v16, &v15, &__str);
    if (v17)
    {
      sub_2337239E8(v17);
    }

    sub_233725FD4(v18);
    if (!v9)
    {
      v10 = 0;
      goto LABEL_15;
    }
  }

  if (a4)
  {
    sub_233785C48(&__str);
  }

  std::string::operator=(a3, &__str);
  v10 = 1;
LABEL_15:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v10;
}

void sub_2337517DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233751844(unsigned int *a1)
{
  result = *a1;
  if (result != result)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

uint64_t sub_2337518A0(uint64_t a1, uint64_t a2, const void **a3)
{
  sub_2337338AC(a1, &v22);
  v6 = (*(*v22 + 16))(v22);
  v7 = sub_23374E3A4(a2);
  if (v23)
  {
    sub_2337239E8(v23);
  }

  if (v6 < v7)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v8 = *(a2 + 2);
  if (v8 == 10)
  {
    sub_2337338AC(a1, &v20);
    v18 = sub_233749410(a2);
    sub_233726A8C(&v19, &v18);
    sub_233725F08(&v22, &v20, &v19, 0);
    if (v21)
    {
      sub_2337239E8(v21);
    }

    sub_233754C14(a3, *(a2 + 4));
    a3[1] = *a3;
    if (*(a2 + 4))
    {
      v13 = 0;
      do
      {
        sub_2337338AC(a1, &v20);
        v14 = sub_233725614(v20);
        if (v21)
        {
          sub_2337239E8(v21);
        }

        sub_2337338AC(a1, &v20);
        v15 = sub_233725614(v20);
        if (v21)
        {
          sub_2337239E8(v21);
        }

        v16 = v14 / v15;
        *&v20 = v16;
        sub_233754CB4(a3, &v20);
        ++v13;
      }

      while (v13 < *(a2 + 4));
    }

    goto LABEL_25;
  }

  if (v8 == 5)
  {
    sub_2337338AC(a1, &v20);
    v18 = sub_233749410(a2);
    sub_233726A8C(&v19, &v18);
    sub_233725F08(&v22, &v20, &v19, 0);
    if (v21)
    {
      sub_2337239E8(v21);
    }

    sub_233754C14(a3, *(a2 + 4));
    a3[1] = *a3;
    if (*(a2 + 4))
    {
      v9 = 0;
      do
      {
        sub_2337338AC(a1, &v20);
        v10 = sub_233725614(v20);
        if (v21)
        {
          sub_2337239E8(v21);
        }

        sub_2337338AC(a1, &v20);
        v11 = sub_233725614(v20);
        if (v21)
        {
          sub_2337239E8(v21);
        }

        v12 = v10 / v11;
        *&v20 = v12;
        sub_233754CB4(a3, &v20);
        ++v9;
      }

      while (v9 < *(a2 + 4));
    }

LABEL_25:
    sub_233725FD4(&v22);
    return 1;
  }

  return 0;
}

void sub_233751B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_233725FD4(va);
  _Unwind_Resume(a1);
}

BOOL sub_233751BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2337338AC(a1, &v17);
  v6 = (*(*v17 + 16))(v17);
  v7 = sub_23374E3A4(a2);
  if (v18)
  {
    sub_2337239E8(v18);
  }

  if (v6 < v7)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v8 = *(a2 + 2);
  if (v8 == 3)
  {
    *(a3 + 8) = *a3;
    v9 = *(a2 + 4);
    if (v9 < 3)
    {
      v17 = 0;
      if (v9)
      {
        do
        {
          sub_233723C18(&v15, &v17);
          LOWORD(v15) = sub_23374B704(a2, &v15);
          sub_23374B768(a3, &v15);
          ++v17;
        }

        while (v17 < *(a2 + 4));
      }
    }

    else
    {
      sub_2337338AC(a1, &v15);
      v13 = sub_233749410(a2);
      sub_233726A8C(&v14, &v13);
      sub_233725F08(&v17, &v15, &v14, 0);
      if (v16)
      {
        sub_2337239E8(v16);
      }

      if (*(a2 + 4))
      {
        v10 = 0;
        do
        {
          sub_2337338AC(a1, &v15);
          v11 = sub_2337255C0(v15);
          if (v16)
          {
            sub_2337239E8(v16);
          }

          LOWORD(v14) = v11;
          sub_23374B768(a3, &v14);
          ++v10;
        }

        while (v10 < *(a2 + 4));
      }

      sub_233725FD4(&v17);
    }
  }

  return v8 == 3;
}

void sub_233751DA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, uint64_t a13)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_233751E10(uint64_t a1, void **a2, void *a3)
{
  v5 = sub_233735E3C(a1, a2);
  v6 = v5;
  v7 = a1 + 8;
  if (v7 != v5 && (v5 + 56) != a3)
  {
    sub_233754F80(a3, *(v5 + 56), *(v5 + 64), (*(v5 + 64) - *(v5 + 56)) >> 1);
  }

  return v7 != v6;
}

uint64_t sub_233751E78(uint64_t a1, uint64_t a2, void *a3)
{
  sub_2337338AC(a1, &v16);
  v6 = (*(*v16 + 16))(v16);
  v7 = sub_23374E3A4(a2);
  if (v17)
  {
    sub_2337239E8(v17);
  }

  if (v6 < v7)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v8 = *(a2 + 2);
  if (v8 != 7 && v8 != 1)
  {
    return 0;
  }

  sub_233753198(a3, *(a2 + 4));
  a3[1] = *a3;
  v9 = *(a2 + 4);
  if (v9 < 5)
  {
    v16 = 0;
    if (v9)
    {
      do
      {
        sub_233723C18(&v14, &v16);
        LOBYTE(v13) = sub_233754BB0(a2, &v14);
        sub_233753260(a3, &v13);
        ++v16;
      }

      while (v16 < *(a2 + 4));
    }
  }

  else
  {
    sub_2337338AC(a1, &v14);
    v12 = sub_233749410(a2);
    sub_233726A8C(&v13, &v12);
    sub_233725F08(&v16, &v14, &v13, 0);
    if (v15)
    {
      sub_2337239E8(v15);
    }

    if (*(a2 + 4))
    {
      v10 = 0;
      do
      {
        sub_2337338AC(a1, &v14);
        LOBYTE(v13) = sub_233725510(v14);
        sub_233753260(a3, &v13);
        if (v15)
        {
          sub_2337239E8(v15);
        }

        ++v10;
      }

      while (v10 < *(a2 + 4));
    }

    sub_233725FD4(&v16);
  }

  return 1;
}

void sub_233752050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, uint64_t a13)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337520B4@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = sub_2337551CC(a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

uint64_t sub_233752180(uint64_t a1, uint64_t a2, float *a3)
{
  v6 = *(a2 + 2);
  if (v6 == 10)
  {
    sub_2337338AC(a1, &v15);
    v13 = sub_233749410(a2);
    sub_233726A8C(&v14, &v13);
    sub_233725F08(v17, &v15, &v14, 0);
    if (v16)
    {
      sub_2337239E8(v16);
    }

    sub_2337338AC(a1, &v15);
    v10 = sub_233725614(v15);
    if (v16)
    {
      sub_2337239E8(v16);
    }

    sub_2337338AC(a1, &v15);
    v8 = v10;
    v9 = sub_233725614(v15);
  }

  else
  {
    if (v6 != 5)
    {
      return 0;
    }

    sub_2337338AC(a1, &v15);
    v13 = sub_233749410(a2);
    sub_233726A8C(&v14, &v13);
    sub_233725F08(v17, &v15, &v14, 0);
    if (v16)
    {
      sub_2337239E8(v16);
    }

    sub_2337338AC(a1, &v15);
    v7 = sub_233725614(v15);
    if (v16)
    {
      sub_2337239E8(v16);
    }

    sub_2337338AC(a1, &v15);
    v8 = v7;
    v9 = sub_233725614(v15);
  }

  if (v16)
  {
    sub_2337239E8(v16);
  }

  v11 = v8 / v9;
  *a3 = v11;
  sub_233725FD4(v17);
  return 1;
}

void sub_23375230C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    sub_2337239E8(a4);
  }

  sub_233725FD4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_233752384(uint64_t result, void **a2, unsigned __int16 *a3)
{
  v5 = result;
  v6 = *a3;
  if (v6 > 0x9200)
  {
    if (*a3 > 0x9209u)
    {
      if (*a3 > 0xA001u)
      {
        if (v6 != 41730)
        {
          if (v6 == 40962)
          {
            result = sub_2338F8A14();
            if (result)
            {
              return result;
            }

            if (v46 == 4)
            {
              v33 = *(a3 + 2);
            }

            else
            {
              v33 = sub_233751308(a3);
            }

            v46 = a2;
            v34 = v5 + 456;
          }

          else
          {
            if (v6 != 40963)
            {
              return result;
            }

            result = sub_2338F8A14();
            if (result)
            {
              return result;
            }

            if (v46 == 4)
            {
              v33 = *(a3 + 2);
            }

            else
            {
              v33 = sub_233751308(a3);
            }

            v46 = a2;
            v34 = v5 + 480;
          }

          result = sub_2337575A8(v34, a2);
          *(result + 56) = v33;
          return result;
        }

        result = (*(*result + 56))(result);
        if ((result & 1) != 0 || a3[1] != 7 || *(a3 + 1) < 5u)
        {
          return result;
        }

        sub_2337338AC(v5, &__src);
        LODWORD(v39) = sub_233749410(a3);
        sub_233726A8C(&v41, &v39);
        sub_233725F08(&v46, &__src, &v41, 0);
        if (v44)
        {
          sub_2337239E8(v44);
        }

        sub_2337338AC(v5, &__src);
        v14 = sub_2337255C0(__src);
        if (v44)
        {
          sub_2337239E8(v44);
        }

        sub_2337338AC(v5, &__src);
        v15 = sub_2337255C0(__src);
        if (v44)
        {
          sub_2337239E8(v44);
        }

        v16 = *(a3 + 1);
        v17 = v15 * v14 + 4;
        v18 = __rev16(v14);
        v19 = __rev16(v15);
        v20 = v17 == v16;
        if (v17 == v16)
        {
          v21 = v15;
        }

        else
        {
          v21 = v19;
        }

        if (v20)
        {
          v18 = v14;
        }

        if (v18 <= 6 && v21 <= 6)
        {
          v22 = (v18 * v21);
          if (v22 + 4 == v16 && v18 == 2 && v21 == 2)
          {
            __src = 0;
            v44 = 0;
            v45 = 0;
            sub_233753198(&__src, v22);
            v23 = 0;
            do
            {
              sub_2337338AC(v5, &v41);
              LOBYTE(v39) = sub_233725510(v41);
              sub_233753260(&__src, &v39);
              if (v42)
              {
                sub_2337239E8(v42);
              }

              ++v23;
            }

            while (v22 > v23);
            LODWORD(v39) = 131074;
            v41 = a2;
            v24 = sub_2337577E4(v5 + 968, a2);
            sub_2337554C0((v24 + 56), &v39, &v39 + 4, 2uLL);
            v41 = a2;
            v25 = (sub_2337577E4(v5 + 992, a2) + 56);
            if (v25 != &__src)
            {
              sub_2337550A4(v25, __src, v44, v44 - __src);
            }

            sub_2338F884C(&__src);
          }
        }
      }

      else
      {
        if (v6 == 37386)
        {
          result = (*(*result + 56))(result);
          if (result)
          {
            return result;
          }

          LODWORD(__src) = 0;
          if (a3[1] != 5)
          {
            return result;
          }

          if (*(a3 + 1) != 1)
          {
            return result;
          }

          result = sub_233752180(v5, a3, &__src);
          if (!result)
          {
            return result;
          }

          v26 = *&__src;
          v46 = a2;
          v27 = v5 + 384;
          goto LABEL_99;
        }

        if (v6 != 37500 || a3[1] != 7)
        {
          return result;
        }

        sub_2337338AC(result, &v46);
        if ((**v46)(v46))
        {
          v9 = 1;
        }

        else
        {
          v29 = sub_233749410(a3);
          LODWORD(v41) = sub_23374E3A4(a3);
          LODWORD(__src) = v29;
          v30 = *sub_233753AB0(&__src, &v41);
          sub_2337338AC(v5, &__src);
          v9 = v30 < (*(*__src + 16))(__src);
          if (v44)
          {
            sub_2337239E8(v44);
          }
        }

        if (v47)
        {
          sub_2337239E8(v47);
        }

        if (!v9)
        {
          return sub_2338F88F4();
        }

        sub_2337338AC(v5, &__src);
        LODWORD(v39) = sub_233749410(a3);
        sub_233726A8C(&v41, &v39);
        sub_233725F08(&v46, &__src, &v41, 0);
        if (v44)
        {
          sub_2337239E8(v44);
        }

        if ((*(*v5 + 752))(v5, a3))
        {
          sub_2337338AC(v5, &v41);
          v31 = (*(*v5 + 120))(v5);
          sub_233735A18(&__src, &v41, v31);
          if (v42)
          {
            sub_2337239E8(v42);
          }

          sub_2337338AC(v5, &v39);
          LODWORD(__p) = (*(*v5 + 136))(v5);
          sub_233754E8C(&v41, &v39, &__p);
          if (v40)
          {
            sub_2337239E8(v40);
          }

          sub_2337338AC(v5, &__p);
          v38 = (*(*v5 + 152))(v5);
          sub_233725F08(&v39, &__p, &v38, 0);
          if (v36)
          {
            sub_2337239E8(v36);
          }

          sub_2337530DC(":MAKERNOTE", a2, &__p);
          (*(*v5 + 768))(v5, &__p);
          if (v37 < 0)
          {
            operator delete(__p);
          }

          (*(*v5 + 760))(v5);
          sub_233725FD4(&v39);
          sub_233754F18(&v41);
          sub_233735A90(&__src);
        }
      }

      return sub_233725FD4(&v46);
    }

    if (v6 == 37377)
    {
      result = (*(*result + 56))(result);
      if (result)
      {
        return result;
      }

      LODWORD(__src) = 0;
      if (a3[1] != 10)
      {
        return result;
      }

      if (*(a3 + 1) != 1)
      {
        return result;
      }

      result = sub_233752180(v5, a3, &__src);
      if (!result)
      {
        return result;
      }

      v26 = *&__src;
      v46 = a2;
      v27 = v5 + 312;
    }

    else
    {
      if (v6 != 37378)
      {
        if (v6 == 37384)
        {
          result = (*(*result + 56))(result);
          if ((result & 1) == 0 && a3[1] == 3)
          {
            LODWORD(__src) = 0;
            sub_233726998(&v46, &__src);
            LOWORD(__src) = sub_23374B704(a3, &v46);
            v46 = a2;
            v10 = sub_2337577E4(v5 + 216, a2);
            return sub_2337554C0((v10 + 56), &__src, &__src + 2, 1uLL);
          }
        }

        return result;
      }

      result = (*(*result + 56))(result);
      if (result)
      {
        return result;
      }

      LODWORD(__src) = 0;
      if (a3[1] != 5)
      {
        return result;
      }

      if (*(a3 + 1) != 1)
      {
        return result;
      }

      result = sub_233752180(v5, a3, &__src);
      if (!result)
      {
        return result;
      }

      v26 = *&__src;
      v46 = a2;
      v27 = v5 + 360;
    }

LABEL_99:
    result = sub_233757E18(v27, a2);
    *(result + 56) = v26;
    return result;
  }

  if (*a3 <= 0x882Fu)
  {
    if (v6 == 33434)
    {
      result = (*(*result + 56))(result);
      if (result)
      {
        return result;
      }

      LODWORD(__src) = 0;
      if (a3[1] != 5)
      {
        return result;
      }

      if (*(a3 + 1) != 1)
      {
        return result;
      }

      result = sub_233752180(v5, a3, &__src);
      if (!result)
      {
        return result;
      }

      v26 = *&__src;
      v46 = a2;
      v27 = v5 + 288;
    }

    else
    {
      if (v6 != 33437)
      {
        if (v6 == 34855)
        {
          result = (*(*result + 56))(result);
          if ((result & 1) == 0)
          {
            v11 = a3[1];
            if (v11 == 3)
            {
              v12 = sub_233751308(a3);
            }

            else
            {
              if (v11 != 4)
              {
                return result;
              }

              v12 = *(a3 + 2);
            }

            LODWORD(__src) = v12;
            goto LABEL_121;
          }
        }

        return result;
      }

      result = (*(*result + 56))(result);
      if (result)
      {
        return result;
      }

      LODWORD(__src) = 0;
      if (a3[1] != 5)
      {
        return result;
      }

      if (*(a3 + 1) != 1)
      {
        return result;
      }

      result = sub_233752180(v5, a3, &__src);
      if (!result)
      {
        return result;
      }

      v26 = *&__src;
      v46 = a2;
      v27 = v5 + 336;
    }

    goto LABEL_99;
  }

  if (*a3 > 0x8831u)
  {
    if (v6 == 34866)
    {
      result = (*(*result + 56))(result);
      if ((result & 1) == 0 && a3[1] == 4)
      {
        v28 = *(v5 + 1016);
        if (v28 <= 7 && ((1 << v28) & 0xD4) != 0)
        {
          v8 = *(a3 + 2);
          *(v5 + 1024) = v8;
          if (!*(v5 + 1020))
          {
            goto LABEL_78;
          }
        }
      }
    }

    else if (v6 == 34867)
    {
      result = (*(*result + 56))(result);
      if ((result & 1) == 0 && a3[1] == 4)
      {
        v13 = *(v5 + 1016);
        if (v13 <= 7 && ((1 << v13) & 0xE8) != 0)
        {
          v8 = *(a3 + 2);
          *(v5 + 1028) = v8;
          if (!*(v5 + 1020) && !*(v5 + 1024))
          {
            goto LABEL_78;
          }
        }
      }
    }
  }

  else if (v6 == 34864)
  {
    result = (*(*result + 56))(result);
    if ((result & 1) == 0 && a3[1] == 3)
    {
      return sub_2338F8A78(v5, v5 & 0xFFFFFFFFFFFFLL | 0x65F9000000000000, a2, a3);
    }
  }

  else
  {
    result = (*(*result + 56))(result);
    if ((result & 1) == 0 && a3[1] == 4)
    {
      v7 = *(v5 + 1016);
      if (v7 <= 7 && ((1 << v7) & 0xB2) != 0)
      {
        v8 = *(a3 + 2);
        *(v5 + 1020) = v8;
LABEL_78:
        LODWORD(__src) = v8;
LABEL_121:
        v46 = a2;
        v32 = sub_2337577E4(v5 + 192, a2);
        return sub_23375538C((v32 + 56), &__src, &__src + 4, 1uLL);
      }
    }
  }

  return result;
}

void sub_233752F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  sub_233754F18(&a19);
  sub_233735A90(&a22);
  sub_233725FD4((v23 - 88));
  _Unwind_Resume(a1);
}

uint64_t sub_2337530DC@<X0>(char *__s@<X1>, const void **a2@<X0>, void **a3@<X8>)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = strlen(__s);
  result = sub_2337551CC(a3, v6 + v7);
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(a3, v9, v6);
  }

  v10 = a3 + v6;
  if (v7)
  {
    result = memmove(v10, __s, v7);
  }

  v10[v7] = 0;
  return result;
}

void *sub_233753198(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2337235BC();
  }

  return result;
}

void sub_233753260(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      sub_2337235BC();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void sub_233753354(uint64_t a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  v6 = sub_233735E3C(a1 + 656, a2);
  if (a1 + 664 != v6)
  {
    v7 = *(v6 + 56);
    if (*(v6 + 64) != v7 && *v7 != 8)
    {
      *a3 = 0;
      a3[1] = 0;
      return;
    }
  }

  *a3 = 0;
  a3[1] = 0;
  v69 = 0;
  v8 = sub_233735E3C(a1 + 704, a2);
  v9 = v8;
  if (a1 + 712 == v8)
  {
    sub_23372A488(__p, "IFD0");
    v12 = sub_233735E3C(a1 + 704, __p);
    v30 = v9 == v12;
    v11 = v9 != v12;
    if (v30)
    {
      v10 = 1;
    }

    else
    {
      v10 = *(v12 + 56);
    }

    if (SHIBYTE(v68) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v10 = *(v8 + 56);
    v11 = 1;
  }

  if (v11 && (v10 - 1) <= 7)
  {
    v69 = v10;
  }

  v66 = 0;
  v13 = sub_233735E3C(a1 + 536, a2);
  v14 = v13;
  if (a1 + 544 == v13)
  {
    v54 = 0;
  }

  else
  {
    v54 = *(v13 + 56);
  }

  v15 = sub_233735E3C(a1 + 560, a2);
  v16 = v15;
  if (a1 + 568 == v15)
  {
    v53 = 0;
  }

  else
  {
    v53 = *(v15 + 56);
  }

  v56 = a3;
  v17 = sub_233735E3C(a1 + 584, a2);
  v18 = v17;
  if (a1 + 592 == v17)
  {
    v19 = 0;
  }

  else
  {
    v19 = *(v17 + 56);
  }

  v20 = sub_233735E3C(a1 + 776, a2);
  v58 = a1 + 784;
  v55 = v19;
  if (a1 + 784 == v20 || (v21 = *(v20 + 56), *(v20 + 64) == v21))
  {
    v22 = 0;
  }

  else
  {
    HIDWORD(v66) = *v21;
    v22 = 1;
  }

  v23 = sub_233735E3C(a1 + 800, a2);
  v57 = a1 + 808;
  if (a1 + 808 == v23 || (v24 = *(v23 + 56), *(v23 + 64) == v24))
  {
    v25 = 0;
  }

  else
  {
    LODWORD(v66) = *v24;
    v25 = 1;
  }

  v26 = sub_233735E3C(a1 + 776, a2);
  if (v58 == v26)
  {
    v27 = 0;
  }

  else
  {
    v27 = (*(v26 + 64) - *(v26 + 56)) >> 2;
  }

  v28 = sub_233735E3C(a1 + 800, a2);
  v29 = v57 != v28 && *(v28 + 64) != *(v28 + 56);
  v30 = a1 + 544 == v14 || a1 + 568 == v16;
  if (v30 || a1 + 592 == v18)
  {
    v32 = 0;
  }

  else
  {
    v32 = v22;
  }

  if (!v27)
  {
    v32 = 0;
  }

  if ((v25 & v32) == 1 && v29)
  {
    v33 = sub_233735E3C(a1 + 752, a2);
    v34 = v56;
    v35 = a1 + 760 != v33 && *(v33 + 56) != 1;
    v40 = sub_233735E3C(a1 + 632, a2);
    v41 = a1 + 640 != v40 && *(v40 + 56) != 2;
    if ((v55 & 0xFFFFFFFE) == 6)
    {
      sub_233723AE0(&v63, &v66 + 1);
      LODWORD(v60) = v66;
      sub_23373401C(a1, &v63, &v60, v69, __p);
      goto LABEL_67;
    }

    if (v55 == 1)
    {
      if (!v35 && !v41)
      {
        __p[0] = 0;
        __p[1] = 0;
        v68 = 0;
        v63 = 0;
        v64 = 0;
        v65 = 0;
        LODWORD(v60) = 0;
        sub_233726998(&v62, &v60);
        v42 = 0;
        v43 = 1;
        do
        {
          v44 = sub_233735E3C(a1 + 776, a2);
          if (v58 != v44)
          {
            v45 = *(v44 + 56);
            if (v42 < (*(v44 + 64) - v45) >> 2)
            {
              HIDWORD(v66) = *(v45 + 4 * v42);
            }
          }

          v46 = sub_233735E3C(a1 + 800, a2);
          if (v57 != v46)
          {
            v47 = *(v46 + 56);
            if (v42 < (*(v46 + 64) - v47) >> 2)
            {
              LODWORD(v66) = *(v47 + 4 * v42);
            }
          }

          sub_2337539D0(__p, &v66 + 1);
          LODWORD(v60) = v66;
          sub_2337539D0(&v63, &v60);
          sub_233753AB0(&v62, &v66);
          v42 = v43;
        }

        while (v27 > v43++);
        v49 = v54 * v53;
        if ((v49 & 0xFFFFFFFF00000000) == 0)
        {
          v50 = 3 * v49;
          if ((v50 & 0xFFFFFFFF00000000) == 0 && v62 == v50)
          {
            if (__p[1] == __p[0])
            {
              sub_2337306B0();
            }

            v51 = *__p[0];
            sub_2337338AC(a1, &v60);
            v59 = (*(*v60 + 16))(v60);
            v52 = *sub_2337580F8(&v59, &v62);
            if (v61)
            {
              sub_2337239E8(v61);
            }

            if (v51 <= v52)
            {
              sub_2337238F0(&v59, v54, v53);
              sub_23375815C();
            }
          }
        }

        if (v63)
        {
          v64 = v63;
          operator delete(v63);
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }
    }

    else if (v55 == 52546)
    {
      sub_2337238F0(&v63, v54, v53);
      sub_233757F68();
    }
  }

  else
  {
    LODWORD(v63) = 0;
    v36 = sub_233735E3C(a1 + 824, a2);
    v34 = v56;
    v37 = v36;
    if (a1 + 832 != v36)
    {
      LODWORD(v63) = *(v36 + 56);
    }

    v38 = sub_233735E3C(a1 + 848, a2);
    if (a1 + 856 != v38 && a1 + 832 != v37)
    {
      v39 = *(v38 + 56);
      sub_233723AE0(&v60, &v63);
      v59 = v39;
      sub_23373401C(a1, &v60, &v59, v69, __p);
LABEL_67:
      *v34 = *__p;
    }
  }
}

void sub_233753918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337539D0(const void **a1, _DWORD *a2)
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
      sub_2337235BC();
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
      sub_2337235D4(a1, v12);
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

_DWORD *sub_233753AB0(_DWORD *result, _DWORD *a2)
{
  v2 = __CFADD__(*result, *a2);
  *result += *a2;
  if (v2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

void sub_233753B14(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_23372A488(__p, "IFD0");
  sub_233753354(a1, __p, &v8);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, "IFD1");
  sub_233753354(a1, __p, &v5);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8)
  {
    v4 = *(v8 + 16);
    if (v4 && v5 && !*(v5 + 16))
    {
      *(v5 + 16) = v4;
    }

    sub_233753C74(a2, &v8);
  }

  if (v5)
  {
    sub_233753C74(a2, &v5);
  }

  if (*(&v5 + 1))
  {
    sub_2337239E8(*(&v5 + 1));
  }

  if (*(&v8 + 1))
  {
    sub_2337239E8(*(&v8 + 1));
  }
}

void sub_233753C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  v19 = *(v17 - 24);
  if (v19)
  {
    sub_2337239E8(v19);
  }

  sub_233723948(&__p);
  _Unwind_Resume(a1);
}

void **sub_233753C74(void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_2337235BC();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      sub_233724F4C(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_2337555EC(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

uint64_t sub_233753D88(uint64_t a1, void **a2)
{
  v4 = sub_233735E3C(a1 + 776, a2);
  if ((a1 + 784 == v4 || (v5 = *(v4 + 56), *(v4 + 64) == v5)) && ((v6 = sub_233735E3C(a1 + 920, a2), a1 + 928 == v6) || (v5 = *(v6 + 56), *(v6 + 64) == v5)))
  {
    return 0;
  }

  else
  {
    return *v5;
  }
}

uint64_t sub_233753DFC(uint64_t a1, void **a2)
{
  v4 = sub_233735E3C(a1 + 800, a2);
  if (a1 + 808 == v4 || (v5 = *(v4 + 64) - *(v4 + 56)) == 0)
  {
    v13 = sub_233735E3C(a1 + 944, a2);
    if (a1 + 952 == v13)
    {
      return 0;
    }

    v14 = *(v13 + 64) - *(v13 + 56);
    if (!v14)
    {
      return 0;
    }

    else
    {
      v15 = 0;
      v7 = 0;
      v16 = v14 >> 2;
      v17 = 1;
      do
      {
        v18 = sub_233735E3C(a1 + 944, a2);
        if (a1 + 952 != v18)
        {
          v19 = *(v18 + 56);
          if (v15 < (*(v18 + 64) - v19) >> 2)
          {
            v7 += *(v19 + 4 * v15);
          }
        }

        v15 = v17;
        v12 = v16 > v17++;
      }

      while (v12);
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = v5 >> 2;
    v9 = 1;
    do
    {
      v10 = sub_233735E3C(a1 + 800, a2);
      if (a1 + 808 != v10)
      {
        v11 = *(v10 + 56);
        if (v6 < (*(v10 + 64) - v11) >> 2)
        {
          v7 += *(v11 + 4 * v6);
        }
      }

      v6 = v9;
      v12 = v8 > v9++;
    }

    while (v12);
  }

  return v7;
}

unint64_t sub_233753F24(uint64_t a1, void **a2)
{
  v4 = sub_233735E3C(a1 + 536, a2);
  if (a1 + 544 == v4 || (v5 = *(v4 + 56), v6 = sub_233735E3C(a1 + 560, a2), a1 + 568 == v6))
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    sub_2337238F0(&v10, v5, *(v6 + 56));
    v7 = v10 & 0xFFFFFFFF00000000;
    v8 = v10;
  }

  return v8 | v7;
}

void sub_233753FB4(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  sub_23372A488(v10, "IFD0:SUBIFD0");
  sub_23372A488(v11, "IFD0:SUBIFD1");
  sub_23372A488(v12, "IFD0:SUBIFD2");
  sub_23372A488(v13, "IFD0:SUBIFD3");
  sub_23372A488(v14, "IFD0:SUBIFD4");
  sub_23372A488(v15, "IFD0:SUBIFD5");
  sub_23372A488(v16, "IFD0:SUBIFD6");
  sub_23372A488(v17, "IFD0:SUBIFD7");
  sub_23372A488(v18, "IFD0");
  v6 = 0;
  while (1)
  {
    v7 = sub_233735E3C(a1 + 512, &v10[v6]);
    if (a1 + 520 != v7 && *(v7 + 56) == a2)
    {
      break;
    }

    v6 += 24;
    if (v6 == 216)
    {
      sub_23372A488(a3, "");
      goto LABEL_9;
    }
  }

  v8 = &v10[v6];
  if (v10[v6 + 23] < 0)
  {
    sub_233731FB8(a3, *v8, *(v8 + 1));
  }

  else
  {
    *a3 = *v8;
    *(a3 + 16) = *(v8 + 2);
  }

LABEL_9:
  for (i = 0; i != -216; i -= 24)
  {
    if (v18[i + 23] < 0)
    {
      operator delete(*&v18[i]);
    }
  }
}

void sub_23375418C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  v39 = &a38;
  v40 = -216;
  v41 = &a38;
  while (1)
  {
    v42 = *v41;
    v41 -= 24;
    if (v42 < 0)
    {
      operator delete(*(v39 - 23));
    }

    v39 = v41;
    v40 += 24;
    if (!v40)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void sub_2337541FC(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_23372A488(v9, "IFD0:SUBIFD0");
  sub_23372A488(v10, "IFD0:SUBIFD1");
  sub_23372A488(v11, "IFD0:SUBIFD2");
  sub_23372A488(v12, "IFD0:SUBIFD3");
  sub_23372A488(v13, "IFD0:SUBIFD4");
  sub_23372A488(v14, "IFD0:SUBIFD5");
  sub_23372A488(v15, "IFD0:SUBIFD6");
  sub_23372A488(v16, "IFD0:SUBIFD7");
  sub_23372A488(v17, "IFD0");
  for (i = 0; i != 216; i += 24)
  {
    v7 = sub_233735E3C(a1 + 512, &v9[i]);
    if (a1 + 520 != v7 && *(v7 + 56) == a2)
    {
      sub_233754418(a3, &v9[i]);
    }
  }

  for (j = 0; j != -216; j -= 24)
  {
    if (v17[j + 23] < 0)
    {
      operator delete(*&v17[j]);
    }
  }
}

uint64_t sub_233754418(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_233755674(a1, a2);
  }

  else
  {
    sub_233740CF4(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_233754458(uint64_t a1)
{
  v26 = 0;
  v27 = 0;
  v28 = 0;
  sub_233753FB4(a1, 0, &v25);
  if (sub_233754A3C(a1 + 992, &v25.__r_.__value_.__l.__data_, &v26))
  {
    v2 = 1;
  }

  else
  {
    sub_23372A488(v23, "IFD0:SUBIFD0");
    if (sub_233754A3C(a1 + 992, v23, &v26))
    {
      v2 = 1;
    }

    else
    {
      sub_23372A488(__p, "IFD0:EXIF");
      v2 = sub_233754A3C(a1 + 992, __p, &v26);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v24 < 0)
    {
      operator delete(v23[0]);
    }
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
    if (!v2)
    {
      goto LABEL_97;
    }
  }

  else if (!v2)
  {
    goto LABEL_97;
  }

  v3 = v26;
  if (v27 - v26 == 4)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v12 = *(v26 + v11++) | (v12 << 8);
    }

    while (v11 != 4);
    if (v12 > 16908288)
    {
      if (v12 == 16908289)
      {
        v10 = 1229539657;
        goto LABEL_98;
      }

      if (v12 == 33620224)
      {
        v10 = 370546198;
        goto LABEL_98;
      }
    }

    else
    {
      if (v12 == 65794)
      {
        v10 = 2492765332;
        goto LABEL_98;
      }

      if (v12 == 16777729)
      {
        v10 = 1633771873;
        goto LABEL_98;
      }
    }

    goto LABEL_97;
  }

  if (v27 - v26 == 16)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    do
    {
      *(&v7 + 1) = v6;
      *&v7 = v5;
      v6 = v7 >> 56;
      v5 = *(v26 + v4++) | (v5 << 8);
    }

    while (v4 != 16);
    if (__PAIR128__(0x101020201010202, 0x1000100010000) < __PAIR128__(v6, v5))
    {
      if (v6 == 0x101020201010202 && v5 == 0x1000100010001)
      {
        v10 = 1364283729;
        goto LABEL_98;
      }

      if (v6 == 0x202010102020101 && v5 == 0x101000001010000)
      {
        v10 = 1094795585;
        goto LABEL_98;
      }
    }

    else
    {
      if (v6 == 0x10100000101 && v5 == 0x101020201010202)
      {
        v10 = 353703189;
        goto LABEL_98;
      }

      if (v6 == 0x101000001010000 && v5 == 0x202010102020101)
      {
        v10 = 336860180;
        goto LABEL_98;
      }
    }

    goto LABEL_97;
  }

  v10 = 2172748160;
  memset(&v25, 0, sizeof(v25));
  if (v27 == v26)
  {
    goto LABEL_44;
  }

  v13 = 0;
  do
  {
    v14 = v3[v13];
    v15 = "X";
    if (v14 < 3)
    {
      v15 = off_2789EEB50[v14];
    }

    std::string::append(&v25, v15, 1uLL);
    ++v13;
    v3 = v26;
  }

  while (v13 < v27 - v26);
  if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0 || v25.__r_.__value_.__l.__size_ != 36)
  {
    goto LABEL_44;
  }

  v16 = v25.__r_.__value_.__r.__words[0];
  if (!memcmp(v25.__r_.__value_.__l.__data_, "GBGGRGRGRBGBGBGGRGGRGGBGBGBRGRGRGGBG", 0x24uLL))
  {
    v17 = 0;
    goto LABEL_93;
  }

  if (!memcmp(v16, "BGGRGGGRBGBRBGGRGGRGGBGGGBRGRBRGGBGG", 0x24uLL))
  {
    v17 = 0;
    v10 = 2172748161;
    goto LABEL_93;
  }

  if (!memcmp(v16, "GGRGGBRBGBRGGGRGGBGGBGGRBRGRBGGGBGGR", 0x24uLL))
  {
    v17 = 0;
    v10 = 2172748162;
  }

  else
  {
LABEL_44:
    if (sub_233754AA0(&v25, "GRGGBGBGBRGRGRGGBGGBGGRGRGRBGBGBGGRG"))
    {
      v17 = 0;
      v10 = 2172748163;
    }

    else if (sub_233754AA0(&v25, "RGGBGGGBRGRBRGGBGGBGGRGGGRBGBRBGGRGG"))
    {
      v17 = 0;
      v10 = 2172748164;
    }

    else if (sub_233754AA0(&v25, "GGBGGRBRGRBGGGBGGRGGRGGBRBGBRGGGRGGB"))
    {
      v17 = 0;
      v10 = 2172748165;
    }

    else if (sub_233754AA0(&v25, "RGRBGBGBGGRGGRGGBGBGBRGRGRGGBGGBGGRG"))
    {
      v17 = 0;
      v10 = 2172748166;
    }

    else if (sub_233754AA0(&v25, "GRBGBRBGGRGGRGGBGGGBRGRBRGGBGGBGGRGG"))
    {
      v17 = 0;
      v10 = 2172748167;
    }

    else if (sub_233754AA0(&v25, "RBGBRGGGRGGBGGBGGRBRGRBGGGBGGRGGRGGB"))
    {
      v17 = 0;
      v10 = 2172748168;
    }

    else if (sub_233754AA0(&v25, "BGBRGRGRGGBGGBGGRGRGRBGBGBGGRGGRGGBG"))
    {
      v17 = 0;
      v10 = 2172748169;
    }

    else if (sub_233754AA0(&v25, "GBRGRBRGGBGGBGGRGGGRBGBRBGGRGGRGGBGG"))
    {
      v17 = 0;
      v10 = 2172748170;
    }

    else if (sub_233754AA0(&v25, "BRGRBGGGBGGRGGRGGBRBGBRGGGRGGBGGBGGR"))
    {
      v17 = 0;
      v10 = 2172748171;
    }

    else if (sub_233754AA0(&v25, "GBGGRGGRGGBGBGBRGRGRGGBGGBGGRGRGRBGB"))
    {
      v17 = 0;
      v10 = 2172748172;
    }

    else if (sub_233754AA0(&v25, "BGGRGGRGGBGGGBRGRBRGGBGGBGGRGGGRBGBR"))
    {
      v17 = 0;
      v10 = 2172748173;
    }

    else if (sub_233754AA0(&v25, "GGRGGBGGBGGRBRGRBGGGBGGRGGRGGBRBGBRG"))
    {
      v17 = 0;
      v10 = 2172748174;
    }

    else if (sub_233754AA0(&v25, "GRGGBGGBGGRGRGRBGBGBGGRGGRGGBGBGBRGR"))
    {
      v17 = 0;
      v10 = 2172748175;
    }

    else if (sub_233754AA0(&v25, "RGGBGGBGGRGGGRBGBRBGGRGGRGGBGGGBRGRB"))
    {
      v17 = 0;
      v10 = 2172748176;
    }

    else
    {
      v17 = !sub_233754AA0(&v25, "GGBGGRGGRGGBRBGBRGGGRGGBGGBGGRBRGRBG");
      v10 = 2172748177;
    }
  }

LABEL_93:
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
    if (!v17)
    {
      goto LABEL_98;
    }

    goto LABEL_97;
  }

  if (v17)
  {
LABEL_97:
    v10 = sub_233733AEC();
  }

LABEL_98:
  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  return v10;
}

void sub_2337549C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a27)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_233754A3C(uint64_t a1, void **a2, void *a3)
{
  v5 = sub_233735E3C(a1, a2);
  v6 = v5;
  v7 = a1 + 8;
  if (v7 != v5 && (v5 + 56) != a3)
  {
    sub_2337550A4(a3, *(v5 + 56), *(v5 + 64), *(v5 + 64) - *(v5 + 56));
  }

  return v7 != v6;
}

BOOL sub_233754AA0(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_233754F68();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

uint64_t sub_233754B24(uint64_t a1)
{
  sub_23372A488(__p, "IFD0");
  v2 = sub_233735E3C(a1 + 680, __p);
  if (a1 + 688 == v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(v2 + 56);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_233754B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233754BB0(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  if (v2 >= 4)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return *(a1 + v2 + 8);
}

void *sub_233754C14(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      sub_2337235D4(result, a2);
    }

    sub_2337235BC();
  }

  return result;
}

void sub_233754CB4(const void **a1, _DWORD *a2)
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
      sub_2337235BC();
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
      sub_2337235D4(a1, v12);
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

void sub_233754D98(uint64_t a1)
{
  sub_2337557B4(a1);

  JUMPOUT(0x2383ABF10);
}

id sub_233754DD0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 504), a2, a2, a4, a5);

  return v5;
}

uint64_t *sub_233754E04(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  *(a1 + 4) = 0;
  if (v3)
  {
    *(a1 + 4) = (*(*v3 + 48))(v3);
  }

  return a1;
}

void sub_233754E74(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233754E8C(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v5 = *a2;
  v6 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = *a1;
  }

  *(a1 + 16) = -1;
  if (v5)
  {
    v7 = *a3 == -1;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    *(a1 + 16) = sub_233725414(v5);
    sub_23372541C(*a1, a3);
  }

  return a1;
}

void sub_233754EFC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233754F18(uint64_t a1)
{
  v2 = *a1;
  if (v2 && *(a1 + 16) != -1)
  {
    sub_23372541C(v2, (a1 + 16));
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  return a1;
}

void *sub_233754F80(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 1)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v7 <= a4)
      {
        v9 = a4;
      }

      else
      {
        v9 = v7;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_233726290(v6, v10);
    }

    sub_2337235BC();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 1)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
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

void *sub_2337550A4(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_2337261C8(v6, v10);
    }

    sub_2337235BC();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
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

uint64_t sub_2337551CC(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2337304FC();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void *sub_233755258(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
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

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_23372375C(v6, v10);
    }

    sub_2337235BC();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
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
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 8;
        *v15 = v16;
        v15 += 8;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void *sub_23375538C(void *result, char *__src, char *a3, unint64_t a4)
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

    if (!(a4 >> 62))
    {
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

      sub_233723580(v6, v10);
    }

    sub_2337235BC();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
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
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 4;
        *v15 = v16;
        v15 += 4;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void *sub_2337554C0(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 1)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v7 <= a4)
      {
        v9 = a4;
      }

      else
      {
        v9 = v7;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_233726290(v6, v10);
    }

    sub_2337235BC();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 1)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
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
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 2;
        *v15 = v16;
        v15 += 2;
        v14 += 2;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void **sub_2337555EC(void **a1)
{
  sub_233755620(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_233755620(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      sub_2337239E8(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

uint64_t sub_233755674(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_2337235BC();
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

  v21 = a1;
  if (v6)
  {
    sub_233735B78(a1, v6);
  }

  v7 = 24 * v2;
  v17 = 0;
  v18 = 24 * v2;
  v8 = 0;
  v19 = 24 * v2;
  v20 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_233731FB8(v7, *a2, *(a2 + 1));
    v7 = v18;
    v10 = v19;
    v8 = v20;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v7 = v9;
    v10 = 24 * v2;
  }

  v11 = v10 + 24;
  v12 = *(a1 + 8) - *a1;
  v13 = v7 - v12;
  memcpy((v7 - v12), *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v8;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_233735BD0(&v17);
  return v11;
}

void sub_2337557A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_233735BD0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2337557B4(uint64_t a1)
{
  *a1 = &unk_284904C60;
  sub_233735D24(a1 + 1152, *(a1 + 1160));
  sub_233735DD8(a1 + 1128, *(a1 + 1136));
  sub_233735D24(a1 + 1104, *(a1 + 1112));
  sub_233735D24(a1 + 1080, *(a1 + 1088));
  sub_233755A84(a1 + 1056, *(a1 + 1064));
  sub_233755A84(a1 + 1032, *(a1 + 1040));
  sub_233735D24(a1 + 992, *(a1 + 1000));
  sub_233735D24(a1 + 968, *(a1 + 976));
  sub_233735D24(a1 + 944, *(a1 + 952));
  sub_233735D24(a1 + 920, *(a1 + 928));
  sub_233735DD8(a1 + 896, *(a1 + 904));
  sub_233735DD8(a1 + 872, *(a1 + 880));
  sub_233735DD8(a1 + 848, *(a1 + 856));
  sub_233735DD8(a1 + 824, *(a1 + 832));
  sub_233735D24(a1 + 800, *(a1 + 808));
  sub_233735D24(a1 + 776, *(a1 + 784));
  sub_233735DD8(a1 + 752, *(a1 + 760));
  sub_233735DD8(a1 + 728, *(a1 + 736));
  sub_233735DD8(a1 + 704, *(a1 + 712));
  sub_233735DD8(a1 + 680, *(a1 + 688));
  sub_233735D24(a1 + 656, *(a1 + 664));
  sub_233735DD8(a1 + 632, *(a1 + 640));
  sub_233735DD8(a1 + 608, *(a1 + 616));
  sub_233735DD8(a1 + 584, *(a1 + 592));
  sub_233735DD8(a1 + 560, *(a1 + 568));
  sub_233735DD8(a1 + 536, *(a1 + 544));
  sub_233735DD8(a1 + 512, *(a1 + 520));

  return sub_233755950(a1);
}