void sub_240BB47AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_240BB4830(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v157 = *MEMORY[0x277D85DE8];
LABEL_2:
  v7 = a2;
  v8 = (a2 - 20);
  v9 = a1;
  while (1)
  {
    a1 = v9;
    v10 = v7 - v9;
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v9) >> 2);
    v12 = v11 - 2;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      goto LABEL_123;
    }

    v7 = a2;
    if (v11 == 2)
    {
      v153 = *v8;
      v64 = *(a2 - 4);
      v156 = *a1;
      v65 = *(a1 + 16);
      v151 = v153;
      v152 = v64;
      v149 = v156;
      v150 = v65;
      if (sub_240BB5FE8(&v151, &v149))
      {
        v67 = *a1;
        v152 = *(a1 + 16);
        v151 = v67;
        v68 = *v8;
        *(a1 + 16) = *(a2 - 4);
        *a1 = v68;
        v69 = v151;
        *(a2 - 4) = v152;
        *v8 = v69;
      }

LABEL_123:
      v146 = *MEMORY[0x277D85DE8];
      return;
    }

LABEL_10:
    if (v10 <= 479)
    {
      if (a4)
      {
        if (a1 != v7)
        {
          v83 = (a1 + 20);
          if (a1 + 20 != v7)
          {
            v84 = 0;
            v85 = a1;
            do
            {
              v86 = *(v85 + 9);
              v87 = *v85;
              v88 = *(v85 + 4);
              v85 = v83;
              v153 = v87;
              v151 = *v83;
              v152 = v86;
              v149 = v87;
              v150 = v88;
              if (sub_240BB5FE8(&v151, &v149))
              {
                v156 = *v85;
                v89 = v84;
                while (1)
                {
                  v90 = a1 + v89;
                  *(v90 + 20) = *(a1 + v89);
                  *(v90 + 36) = *(a1 + v89 + 16);
                  if (!v89)
                  {
                    break;
                  }

                  v153 = *(v90 - 20);
                  v91 = *(v90 - 4);
                  v151 = v156;
                  v152 = v86;
                  v149 = v153;
                  v150 = v91;
                  v89 -= 20;
                  if ((sub_240BB5FE8(&v151, &v149) & 1) == 0)
                  {
                    v92 = a1 + v89 + 20;
                    goto LABEL_82;
                  }
                }

                v92 = a1;
LABEL_82:
                *v92 = v156;
                *(v92 + 16) = v86;
              }

              v83 = (v85 + 20);
              v84 += 20;
            }

            while ((v85 + 20) != v7);
          }
        }
      }

      else if (a1 != v7)
      {
        while (1)
        {
          v138 = (a1 + 20);
          if (a1 + 20 == v7)
          {
            break;
          }

          v139 = *(a1 + 36);
          v140 = *a1;
          v141 = *(a1 + 16);
          a1 += 20;
          v153 = v140;
          v151 = *v138;
          v152 = v139;
          v149 = v140;
          v150 = v141;
          if (sub_240BB5FE8(&v151, &v149))
          {
            v156 = *a1;
            v142 = a1;
            do
            {
              v143 = v142 - 20;
              *v142 = *(v142 - 20);
              *(v142 + 16) = *(v142 - 4);
              v153 = *(v142 - 40);
              v144 = *(v142 - 24);
              v151 = v156;
              v152 = v139;
              v149 = v153;
              v150 = v144;
              v145 = sub_240BB5FE8(&v151, &v149);
              v142 = v143;
            }

            while ((v145 & 1) != 0);
            *v143 = v156;
            *(v143 + 16) = v139;
          }
        }
      }

      goto LABEL_123;
    }

    if (!a3)
    {
      if (a1 != v7)
      {
        v147 = v10;
        v93 = v12 >> 1;
        v94 = v12 >> 1;
        do
        {
          v95 = v94;
          if (v93 >= v94)
          {
            v96 = (2 * v94) | 1;
            v97 = a1 + 20 * v96;
            if (2 * v94 + 2 < v11)
            {
              v151 = *v97;
              v98 = *(v97 + 16);
              v149 = *(v97 + 20);
              v99 = *(v97 + 36);
              v152 = v98;
              v150 = v99;
              if (sub_240BB5FE8(&v151, &v149))
              {
                v97 += 20;
                v96 = 2 * v95 + 2;
              }
            }

            v100 = a1 + 20 * v95;
            v151 = *v97;
            v101 = *(v97 + 16);
            v149 = *v100;
            v102 = *(v100 + 16);
            v152 = v101;
            v150 = v102;
            if ((sub_240BB5FE8(&v151, &v149) & 1) == 0)
            {
              v153 = *v100;
              v103 = *(v100 + 16);
              do
              {
                v104 = v100;
                v100 = v97;
                v105 = *v97;
                *(v104 + 16) = *(v97 + 16);
                *v104 = v105;
                if (v93 < v96)
                {
                  break;
                }

                v106 = (2 * v96) | 1;
                v97 = a1 + 20 * v106;
                v107 = 2 * v96 + 2;
                if (v107 < v11)
                {
                  v151 = *v97;
                  v108 = *(v97 + 16);
                  v149 = *(v97 + 20);
                  v109 = *(v97 + 36);
                  v152 = v108;
                  v150 = v109;
                  if (sub_240BB5FE8(&v151, &v149))
                  {
                    v97 += 20;
                    v106 = v107;
                  }
                }

                v151 = *v97;
                v110 = *(v97 + 16);
                v149 = v153;
                v152 = v110;
                v150 = v103;
                v96 = v106;
              }

              while (!sub_240BB5FE8(&v151, &v149));
              *v100 = v153;
              *(v100 + 16) = v103;
            }
          }

          v94 = v95 - 1;
        }

        while (v95);
        v111 = 0xCCCCCCCCCCCCCCCDLL * (v147 >> 2);
        do
        {
          v112 = 0;
          v113 = *a1;
          v154 = *(a1 + 16);
          v153 = v113;
          v114 = a1;
          do
          {
            v115 = v114 + 20 * v112;
            v116 = v115 + 20;
            v117 = (2 * v112) | 1;
            v118 = 2 * v112 + 2;
            if (v118 < v111)
            {
              v156 = *v116;
              v119 = *(v115 + 36);
              v120 = v115 + 40;
              v155 = *(v115 + 40);
              v121 = *(v115 + 56);
              v151 = v156;
              v152 = v119;
              v149 = v155;
              v150 = v121;
              if (sub_240BB5FE8(&v151, &v149))
              {
                v116 = v120;
                v117 = v118;
              }
            }

            v122 = *v116;
            *(v114 + 16) = *(v116 + 16);
            *v114 = v122;
            v114 = v116;
            v112 = v117;
          }

          while (v117 <= ((v111 - 2) >> 1));
          v123 = a2 - 20;
          v124 = v116 == a2 - 20;
          a2 -= 20;
          if (v124)
          {
            v136 = v153;
            *(v116 + 16) = v154;
            *v116 = v136;
          }

          else
          {
            v125 = *v123;
            *(v116 + 16) = *(v123 + 16);
            *v116 = v125;
            v126 = v153;
            *(v123 + 16) = v154;
            *v123 = v126;
            v127 = v116 - a1 + 20;
            if (v127 >= 21)
            {
              v128 = (-2 - 0x3333333333333333 * (v127 >> 2)) >> 1;
              v129 = a1 + 20 * v128;
              v151 = *v129;
              v130 = *(v129 + 16);
              v149 = *v116;
              v131 = *(v116 + 16);
              v152 = v130;
              v150 = v131;
              if (sub_240BB5FE8(&v151, &v149))
              {
                v156 = *v116;
                v132 = *(v116 + 16);
                do
                {
                  v133 = v116;
                  v116 = v129;
                  v134 = *v129;
                  *(v133 + 16) = *(v129 + 16);
                  *v133 = v134;
                  if (!v128)
                  {
                    break;
                  }

                  v128 = (v128 - 1) >> 1;
                  v129 = a1 + 20 * v128;
                  v151 = *v129;
                  v135 = *(v129 + 16);
                  v149 = v156;
                  v152 = v135;
                  v150 = v132;
                }

                while ((sub_240BB5FE8(&v151, &v149) & 1) != 0);
                *v116 = v156;
                *(v116 + 16) = v132;
              }
            }
          }
        }

        while (v111-- > 2);
      }

      goto LABEL_123;
    }

    v13 = v11 >> 1;
    v14 = a1 + 20 * (v11 >> 1);
    if (v10 < 0xA01)
    {
      sub_240BB60DC(v14, a1, v8);
    }

    else
    {
      sub_240BB60DC(a1, v14, v8);
      v15 = 5 * v13;
      sub_240BB60DC((a1 + 20), (a1 + 4 * v15 - 20), (a2 - 40));
      sub_240BB60DC((a1 + 40), (a1 + 20 + 4 * v15), (a2 - 60));
      sub_240BB60DC((a1 + 4 * v15 - 20), v14, (a1 + 20 + 4 * v15));
      v16 = *a1;
      v152 = *(a1 + 16);
      v151 = v16;
      v17 = *(v14 + 16);
      *a1 = *v14;
      *(a1 + 16) = v17;
      v18 = v151;
      *(v14 + 16) = v152;
      *v14 = v18;
    }

    --a3;
    if (a4)
    {
      goto LABEL_17;
    }

    v153 = *(a1 - 20);
    v19 = *(a1 - 4);
    v156 = *a1;
    v20 = *(a1 + 16);
    v151 = v153;
    v152 = v19;
    v149 = v156;
    v150 = v20;
    if (sub_240BB5FE8(&v151, &v149))
    {
LABEL_17:
      v153 = *a1;
      v21 = *(a1 + 16);
      v22 = a1;
      do
      {
        v23 = v22;
        v22 += 20;
        v151 = *(v23 + 20);
        v24 = *(v23 + 36);
        v149 = v153;
        v152 = v24;
        v150 = v21;
      }

      while ((sub_240BB5FE8(&v151, &v149) & 1) != 0);
      v25 = v7;
      if (v23 == a1)
      {
        v29 = a2;
        while (v22 < v29)
        {
          v26 = v29 - 20;
          v151 = *(v29 - 20);
          v30 = *(v29 - 4);
          v149 = v153;
          v152 = v30;
          v150 = v21;
          v31 = sub_240BB5FE8(&v151, &v149);
          v29 = v26;
          if (v31)
          {
            goto LABEL_27;
          }
        }

        v26 = v29;
      }

      else
      {
        do
        {
          v26 = v25 - 20;
          v151 = *(v25 - 20);
          v27 = *(v25 - 4);
          v149 = v153;
          v152 = v27;
          v150 = v21;
          v28 = sub_240BB5FE8(&v151, &v149);
          v25 = v26;
        }

        while (!v28);
      }

LABEL_27:
      v9 = v22;
      if (v22 < v26)
      {
        v32 = v26;
        do
        {
          v151 = *v9;
          v33 = v151;
          v152 = *(v9 + 16);
          v34 = v152;
          v35 = *(v32 + 16);
          *v9 = *v32;
          *(v9 + 16) = v35;
          *(v32 + 16) = v34;
          *v32 = v33;
          do
          {
            v36 = *(v9 + 20);
            v37 = *(v9 + 36);
            v9 += 20;
            v151 = v36;
            v149 = v153;
            v152 = v37;
            v150 = v21;
          }

          while ((sub_240BB5FE8(&v151, &v149) & 1) != 0);
          do
          {
            v156 = *(v32 - 20);
            v38 = *(v32 - 4);
            v32 -= 20;
            v149 = v153;
            v151 = v156;
            v152 = v38;
            v150 = v21;
          }

          while (!sub_240BB5FE8(&v151, &v149));
        }

        while (v9 < v32);
      }

      v39 = (v9 - 20);
      if (v9 - 20 != a1)
      {
        v40 = *v39;
        *(a1 + 16) = *(v9 - 4);
        *a1 = v40;
      }

      *v39 = v153;
      *(v9 - 4) = v21;
      v41 = v22 >= v26;
      v7 = a2;
      if (!v41)
      {
        goto LABEL_39;
      }

      v42 = sub_240BB6520(a1, v9 - 20);
      if (sub_240BB6520(v9, a2))
      {
        a2 = v9 - 20;
        if (!v42)
        {
          goto LABEL_2;
        }

        goto LABEL_123;
      }

      if (!v42)
      {
LABEL_39:
        sub_240BB4830(a1, v9 - 20, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v153 = *a1;
      v43 = *(a1 + 16);
      v151 = *a1;
      v149 = *v8;
      v44 = *(v7 - 4);
      v152 = v43;
      v150 = v44;
      if (sub_240BB5FE8(&v151, &v149))
      {
        v45 = a1;
        do
        {
          v9 = v45 + 20;
          v151 = v153;
          v149 = *(v45 + 20);
          v46 = *(v45 + 36);
          v152 = v43;
          v150 = v46;
          v47 = sub_240BB5FE8(&v151, &v149);
          v45 = v9;
        }

        while ((v47 & 1) == 0);
      }

      else
      {
        v48 = a1 + 20;
        do
        {
          v9 = v48;
          if (v48 >= v7)
          {
            break;
          }

          v151 = v153;
          v149 = *v48;
          v49 = *(v48 + 16);
          v152 = v43;
          v150 = v49;
          v50 = sub_240BB5FE8(&v151, &v149);
          v48 = v9 + 20;
        }

        while (!v50);
      }

      v51 = v7;
      if (v9 < v7)
      {
        v52 = v7;
        do
        {
          v51 = v52 - 20;
          v151 = v153;
          v149 = *(v52 - 20);
          v53 = *(v52 - 4);
          v152 = v43;
          v150 = v53;
          v54 = sub_240BB5FE8(&v151, &v149);
          v52 = v51;
        }

        while ((v54 & 1) != 0);
      }

      while (v9 < v51)
      {
        v55 = *v9;
        v152 = *(v9 + 16);
        v151 = v55;
        v56 = *v51;
        *(v9 + 16) = *(v51 + 16);
        *v9 = v56;
        v57 = v151;
        *(v51 + 16) = v152;
        *v51 = v57;
        do
        {
          v58 = *(v9 + 20);
          v59 = *(v9 + 36);
          v9 += 20;
          v151 = v153;
          v149 = v58;
          v152 = v43;
          v150 = v59;
        }

        while (!sub_240BB5FE8(&v151, &v149));
        do
        {
          v156 = *(v51 - 20);
          v60 = *(v51 - 4);
          v51 -= 20;
          v151 = v153;
          v152 = v43;
          v149 = v156;
          v150 = v60;
        }

        while ((sub_240BB5FE8(&v151, &v149) & 1) != 0);
      }

      v61 = (v9 - 20);
      if (v9 - 20 != a1)
      {
        v62 = *v61;
        *(a1 + 16) = *(v9 - 4);
        *a1 = v62;
      }

      a4 = 0;
      *v61 = v153;
      *(v9 - 4) = v43;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      sub_240BB60DC(a1, (a1 + 20), (a1 + 40));
      v151 = *v8;
      v71 = *(v7 - 4);
      v149 = *(a1 + 40);
      v72 = *(a1 + 56);
      v152 = v71;
      v150 = v72;
      if (sub_240BB5FE8(&v151, &v149))
      {
        v151 = *(a1 + 40);
        v73 = v151;
        v152 = *(a1 + 56);
        v74 = v152;
        v75 = *(a2 - 4);
        *(a1 + 40) = *v8;
        *(a1 + 56) = v75;
        *(a2 - 4) = v74;
        *v8 = v73;
        v151 = *(a1 + 40);
        v76 = *(a1 + 56);
        v149 = *(a1 + 20);
        v77 = *(a1 + 36);
        v152 = v76;
        v150 = v77;
        if (sub_240BB5FE8(&v151, &v149))
        {
          v78 = *(a1 + 36);
          v79 = *(a1 + 20);
          *(a1 + 20) = *(a1 + 40);
          *(a1 + 36) = *(a1 + 56);
          *(a1 + 40) = v79;
          *(a1 + 56) = v78;
          v151 = *(a1 + 20);
          v80 = *(a1 + 36);
          v149 = *a1;
          v81 = *(a1 + 16);
          v152 = v80;
          v150 = v81;
          if (sub_240BB5FE8(&v151, &v149))
          {
            v82 = *a1;
            v152 = *(a1 + 16);
            v151 = v82;
            *a1 = *(a1 + 20);
            *(a1 + 16) = *(a1 + 36);
            *(a1 + 20) = v151;
            *(a1 + 36) = v152;
          }
        }
      }

      goto LABEL_123;
    }

    if (v11 == 5)
    {
      v63 = *MEMORY[0x277D85DE8];

      sub_240BB62A4(a1, a1 + 20, a1 + 40, a1 + 60, v8);
      return;
    }

    goto LABEL_10;
  }

  v70 = *MEMORY[0x277D85DE8];

  sub_240BB60DC(a1, (a1 + 20), v8);
}

void sub_240BB54F0(unint64_t a1)
{
  if (a1 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  sub_240B2291C();
}

BOOL sub_240BB5544(uint64_t a1, uint64_t a2, uint64_t a3)
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
    return (*a1)(*(a1 + 8), v6, sub_240BB5ED8, sub_240BB5A64, 0, a2) != 0;
  }

  for (i = 0; i != v3; ++i)
  {
    sub_240BB5A64(v6, i);
  }

  return 0;
}

void sub_240BB55F4(void *a1, void *a2, uint64_t a3, unint64_t a4, char **a5)
{
  v6 = a3 + 1;
  if (a3 + 1 == a4)
  {
    v7 = *a5;
    v8 = a5[1];
    v9 = v8 - *a5;
    v10 = 0xCCCCCCCCCCCCCCCDLL * (v9 >> 3);
  }

  else
  {
    v11 = a4;
    v7 = *a5;
    v8 = a5[1];
    do
    {
      v13 = (v11 + a3) >> 1;
      v14 = *(*a2 + 8 * v13) - 1;
      v15 = v8 - v7;
      v16 = a5[2];
      if (v8 >= v16)
      {
        v18 = 0xCCCCCCCCCCCCCCCDLL * (v15 >> 3) + 1;
        if (v18 > 0x666666666666666)
        {
          goto LABEL_48;
        }

        v19 = 0xCCCCCCCCCCCCCCCDLL * ((v16 - v7) >> 3);
        if (2 * v19 > v18)
        {
          v18 = 2 * v19;
        }

        if (v19 >= 0x333333333333333)
        {
          v20 = 0x666666666666666;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          sub_240B5C5D8(v20);
        }

        v21 = 8 * (v15 >> 3);
        *v21 = v14;
        *(v21 + 4) = 1;
        *(v21 + 8) = 0;
        *(v21 + 16) = 0;
        *(v21 + 24) = 0;
        *(v21 + 32) = 1;
        v17 = v21 + 40;
        memcpy((v21 - v15), v7, v15);
        v22 = *a5;
        *a5 = (8 * (v15 >> 3) - v15);
        a5[1] = v17;
        a5[2] = 0;
        if (v22)
        {
          operator delete(v22);
          v7 = *a5;
        }

        else
        {
          v7 = (8 * (v15 >> 3) - v15);
        }
      }

      else
      {
        *v8 = v14;
        *(v8 + 2) = 1;
        *(v8 + 1) = 0;
        *(v8 + 4) = 0;
        *(v8 + 3) = 0;
        v17 = (v8 + 40);
        *(v8 + 8) = 1;
      }

      a5[1] = v17;
      *&v7[v15 + 8] = -858993459 * ((v17 - v7) >> 3);
      sub_240BB55F4(a1, a2, v13, v11, a5);
      v7 = *a5;
      v8 = a5[1];
      v9 = v8 - *a5;
      v10 = 0xCCCCCCCCCCCCCCCDLL * (v9 >> 3);
      *&(*a5)[v15 + 12] = v10;
      v11 = (v11 + a3) >> 1;
    }

    while (v6 != v13);
  }

  v23 = *a1 + 24 * a3;
  v25 = *v23;
  v24 = *(v23 + 8);
  v26 = v24 - v25;
  if (v24 - v25 >= 1)
  {
    v27 = &v7[v9];
    v28 = a5[2];
    if (v28 - v8 >= v26)
    {
      if (v26 <= 0)
      {
        v36 = &v27[v26];
        v37 = &v8[-v26];
        v38 = v8;
        if (v8 >= v26)
        {
          v38 = v8;
          do
          {
            v39 = *v37;
            v40 = *(v37 + 1);
            *(v38 + 4) = *(v37 + 4);
            *v38 = v39;
            *(v38 + 1) = v40;
            v37 += 40;
            v38 += 40;
          }

          while (v37 < v8);
        }

        a5[1] = v38;
        if (v8 != v36)
        {
          memmove(v36, v27, v8 - v36 - 4);
        }

        memmove(v27, v25, v26 - 4);
      }

      else
      {
        v32 = v25;
        v33 = v8;
        if (v25 != v24)
        {
          v33 = v8;
          do
          {
            v34 = *v32;
            v35 = *(v32 + 1);
            *(v33 + 4) = *(v32 + 4);
            *v33 = v34;
            *(v33 + 1) = v35;
            v32 += 40;
            v33 += 40;
          }

          while (v32 != v24);
        }

        a5[1] = v33;
      }
    }

    else
    {
      v29 = 0xCCCCCCCCCCCCCCCDLL * (v26 >> 3) - 0x3333333333333333 * ((v8 - v7) >> 3);
      if (v29 > 0x666666666666666)
      {
LABEL_48:
        sub_240B228BC();
      }

      v30 = 0xCCCCCCCCCCCCCCCDLL * ((v28 - v7) >> 3);
      if (2 * v30 > v29)
      {
        v29 = 2 * v30;
      }

      if (v30 >= 0x333333333333333)
      {
        v31 = 0x666666666666666;
      }

      else
      {
        v31 = v29;
      }

      if (v31)
      {
        sub_240B5C5D8(v31);
      }

      v41 = 8 * (v9 >> 3);
      v42 = (v41 + v26);
      v43 = v41;
      do
      {
        v44 = *v25;
        v45 = *(v25 + 1);
        *(v43 + 32) = *(v25 + 4);
        *v43 = v44;
        *(v43 + 16) = v45;
        v43 += 40;
        v25 += 40;
        v26 -= 40;
      }

      while (v26);
      memcpy(v42, v27, a5[1] - v8);
      v46 = *a5;
      v47 = &v42[a5[1] - v8];
      a5[1] = v27;
      v48 = (v41 - (v8 - v46));
      memcpy(v48, v46, v8 - v46);
      v49 = *a5;
      *a5 = v48;
      a5[1] = v47;
      a5[2] = 0;
      if (v49)
      {
        operator delete(v49);
      }
    }
  }

  v50 = 0xCCCCCCCCCCCCCCCDLL * ((a5[1] - *a5) >> 3);
  v51 = v50 > v10;
  v52 = v50 - v10;
  if (v51)
  {
    v53 = vdup_n_s32(v10);
    v54 = &(*a5)[40 * v10 + 8];
    do
    {
      *v54 = vadd_s32(*v54, v53);
      v54 += 5;
      --v52;
    }

    while (v52);
  }
}

double sub_240BB5A64(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  v63 = 0;
  v3 = v2[1];
  v4 = **v2;
  v5 = *(v4 + 8 * a2);
  v7 = *(v4 + 8 * (a2 + 1));
  v8 = v7;
  if (v5 >= v7)
  {
LABEL_13:
    if (v5 < v7)
    {
      do
      {
        v7 = v8 - 1;
        v13 = (v3[6] + 88 * (v8 - 1));
        v14 = *v13;
        v15 = v13[1];
        while (v14 != v15)
        {
          if (*(v14 + 40))
          {
            v16 = *(v14 + 48) == 0;
          }

          else
          {
            v16 = 1;
          }

          if (!v16)
          {
            LODWORD(v7) = v8;
            goto LABEL_23;
          }

          v14 += 64;
        }

        --v8;
      }

      while (v7 > v5);
    }
  }

  else
  {
    v5 = v5;
    do
    {
      v9 = (v3[6] + 88 * v5);
      v10 = *v9;
      v11 = v9[1];
      while (v10 != v11)
      {
        if (*(v10 + 40))
        {
          v12 = *(v10 + 48) == 0;
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          goto LABEL_13;
        }

        v10 += 64;
      }

      ++v5;
    }

    while (v5 != v7);
    LODWORD(v5) = v7;
  }

LABEL_23:
  v17 = v5;
  v18 = v3[9];
  v19 = *(v18 + 152 * v5 + 84);
  if (v19 == 1)
  {
    v62 = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    if (!sub_240BDBAA0(&v50, *(v18 + 152 * v5 + 64), *(v18 + 152 * v5 + 76)))
    {
      v20 = v3[9] + 152 * v5;
      if (!sub_240BDBFCC(&v50, (v20 + 24), *(v20 + 76)))
      {
        v42 = v7;
        v43 = v2;
        memset(v49, 0, sizeof(v49));
        memset(v48, 0, sizeof(v48));
        memset(v47, 0, sizeof(v47));
        memset(__p, 0, sizeof(__p));
        v28 = v7;
        if (v5 >= v7)
        {
          v29 = 0;
        }

        else
        {
          v29 = 0;
          v30 = 152 * v5;
          v31 = 88 * v5;
          v32 = v5;
          do
          {
            v33 = v28;
            v34 = (v3[6] + v31);
            v36 = *v34;
            v35 = v34[1];
            sub_240BDD550(v34, v3[9] + v30, v32, v47, __p, v49, v48);
            if (v29 <= ((v35 - v36) >> 6))
            {
              v29 = (v35 - v36) >> 6;
            }

            ++v32;
            v30 += 152;
            v31 += 88;
            v28 = v33;
          }

          while (v33 != v32);
        }

        v45[0] = 0;
        v45[1] = v29;
        v45[2] = v5;
        v45[3] = v42;
        sub_240BDC748(&v50, v45, *v43[4], v43[4][1], v47, __p, v49, v48, *(v3[9] + 152 * v5 + 56));
        if (v5 >= v42)
        {
          v40 = 0;
        }

        else
        {
          v37 = 152 * v5;
          v38 = 88 * v5;
          v39 = v17;
          do
          {
            sub_240BDB4B8(v3[6] + v38, (v3[9] + v37), 0, 0, 0, v39++, &v50, &v63, 0, 0);
            v37 += 152;
            v38 += 88;
          }

          while (v28 != v39);
          v40 = v63;
        }

        v41 = v43[4];
        sub_240BD64F0(&v44, &v50, v40, v3[9] + 152 * v17);
      }
    }

    atomic_exchange(v2[3], 1u);
    sub_240BB5F00(&v50);
  }

  else
  {
    if (v5 >= v7)
    {
      v22 = 0;
    }

    else
    {
      v22 = 0;
      do
      {
        v23 = (v3[6] + 88 * v17);
        v24 = *v23;
        v25 = v23[1];
        while (v24 != v25)
        {
          v22 += *(v24 + 48) * *(v24 + 40);
          v24 += 64;
        }

        ++v17;
      }

      while (v17 != v7);
    }

    sub_240BD5204(&v50, v19, v22);
    v26 = *v2[2] + 24 * a2;
    v27 = *v26;
    if (*v26)
    {
      *(v26 + 8) = v27;
      operator delete(v27);
      *v26 = 0;
      *(v26 + 8) = 0;
      *(v26 + 16) = 0;
    }

    result = *&v50;
    *v26 = v50;
    *(v26 + 16) = v51;
  }

  return result;
}

void sub_240BB5E7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, char *a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a29)
  {
    operator delete(a29);
  }

  if (a32)
  {
    operator delete(a32);
  }

  sub_240BB5F00(&a35);
  _Unwind_Resume(a1);
}

uint64_t sub_240BB5ED8(unsigned int (**a1)(uint64_t), uint64_t a2)
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

char **sub_240BB5F00(char **a1)
{
  v2 = a1[22];
  if (v2)
  {
    a1[23] = v2;
    operator delete(v2);
  }

  v13 = (a1 + 18);
  sub_240B31E8C(&v13);
  v3 = a1[15];
  if (v3)
  {
    a1[16] = v3;
    operator delete(v3);
  }

  v4 = a1[12];
  if (v4)
  {
    a1[13] = v4;
    operator delete(v4);
  }

  v13 = (a1 + 9);
  sub_240B31E8C(&v13);
  v13 = (a1 + 6);
  sub_240B31E8C(&v13);
  v5 = a1[3];
  if (v5)
  {
    a1[4] = v5;
    operator delete(v5);
  }

  v6 = *a1;
  if (*a1)
  {
    v7 = a1[1];
    v8 = *a1;
    if (v7 != v6)
    {
      v9 = a1[1];
      do
      {
        v11 = *(v9 - 3);
        v9 -= 24;
        v10 = v11;
        if (v11)
        {
          *(v7 - 2) = v10;
          operator delete(v10);
        }

        v7 = v9;
      }

      while (v9 != v6);
      v8 = *a1;
    }

    a1[1] = v6;
    operator delete(v8);
  }

  return a1;
}

uint64_t sub_240BB5FE8(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = a2;
  v4 = a1;
LABEL_2:
  v5 = 0;
  do
  {
    v6 = *(v4 + v5);
    v7 = *(v3 + v5);
    if (v6 < v7)
    {
      return 1;
    }

    v8 = v7 < v6 || v5 == 4;
    v5 += 4;
  }

  while (!v8);
  v9 = 0;
  while (1)
  {
    v10 = *(v3 + v9);
    v11 = *(v4 + v9);
    if (v10 < v11)
    {
      break;
    }

    v12 = v11 < v10 || v9 == 4;
    v9 += 4;
    if (v12)
    {
      v2 += 8;
      v4 += 8;
      v3 += 8;
      if (v2 != 16)
      {
        goto LABEL_2;
      }

      break;
    }
  }

  v13 = 0;
  v14 = a1;
  v15 = a2;
LABEL_18:
  v16 = 0;
  do
  {
    v17 = *(v15 + v16);
    v18 = *(v14 + v16);
    if (v17 < v18)
    {
      return 0;
    }

    v19 = v18 < v17 || v16 == 4;
    v16 += 4;
  }

  while (!v19);
  v20 = 0;
  while (1)
  {
    v21 = *(v14 + v20);
    v22 = *(v15 + v20);
    if (v21 < v22)
    {
      return *(a1 + 16) < *(a2 + 16);
    }

    v23 = v22 < v21 || v20 == 4;
    v20 += 4;
    if (v23)
    {
      v13 += 8;
      v15 += 8;
      v14 += 8;
      if (v13 != 16)
      {
        goto LABEL_18;
      }

      return *(a1 + 16) < *(a2 + 16);
    }
  }
}

uint64_t sub_240BB60DC(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v30 = *a2;
  v6 = *(a2 + 4);
  v28 = *a1;
  v7 = *(a1 + 4);
  v31 = v6;
  v29 = v7;
  if (sub_240BB5FE8(&v30, &v28))
  {
    v30 = *a3;
    v8 = *(a3 + 4);
    v28 = *a2;
    v31 = v8;
    v29 = v6;
    result = sub_240BB5FE8(&v30, &v28);
    if (result)
    {
      v10 = *(a1 + 4);
      v11 = *a1;
      v12 = *(a3 + 4);
      *a1 = *a3;
      *(a1 + 4) = v12;
    }

    else
    {
      v22 = *(a1 + 4);
      v23 = *a1;
      v24 = *(a2 + 4);
      *a1 = *a2;
      *(a1 + 4) = v24;
      *a2 = v23;
      *(a2 + 4) = v22;
      v30 = *a3;
      v25 = *(a3 + 4);
      v28 = *a2;
      v26 = *(a2 + 4);
      v31 = v25;
      v29 = v26;
      result = sub_240BB5FE8(&v30, &v28);
      if (!result)
      {
        return result;
      }

      v10 = *(a2 + 4);
      v11 = *a2;
      v27 = *(a3 + 4);
      *a2 = *a3;
      *(a2 + 4) = v27;
    }

    *a3 = v11;
    *(a3 + 4) = v10;
  }

  else
  {
    v30 = *a3;
    v13 = *(a3 + 4);
    v28 = *a2;
    v31 = v13;
    v29 = v6;
    result = sub_240BB5FE8(&v30, &v28);
    if (result)
    {
      v14 = *(a2 + 4);
      v15 = *a2;
      v16 = *(a3 + 4);
      *a2 = *a3;
      *(a2 + 4) = v16;
      *a3 = v15;
      *(a3 + 4) = v14;
      v30 = *a2;
      v17 = *(a2 + 4);
      v28 = *a1;
      v18 = *(a1 + 4);
      v31 = v17;
      v29 = v18;
      result = sub_240BB5FE8(&v30, &v28);
      if (result)
      {
        v19 = *(a1 + 4);
        v20 = *a1;
        v21 = *(a2 + 4);
        *a1 = *a2;
        *(a1 + 4) = v21;
        *a2 = v20;
        *(a2 + 4) = v19;
      }
    }
  }

  return result;
}

__n128 sub_240BB62A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_240BB60DC(a1, a2, a3);
  v47 = *a4;
  v10 = *(a4 + 16);
  v45 = *a3;
  v11 = *(a3 + 16);
  v48 = v10;
  v46 = v11;
  if (sub_240BB5FE8(&v47, &v45))
  {
    v12 = *(a3 + 16);
    v13 = *a3;
    v14 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v14;
    *a4 = v13;
    *(a4 + 16) = v12;
    v47 = *a3;
    v15 = *(a3 + 16);
    v45 = *a2;
    v16 = *(a2 + 16);
    v48 = v15;
    v46 = v16;
    if (sub_240BB5FE8(&v47, &v45))
    {
      v17 = *(a2 + 16);
      v18 = *a2;
      v19 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v19;
      *a3 = v18;
      *(a3 + 16) = v17;
      v47 = *a2;
      v20 = *(a2 + 16);
      v45 = *a1;
      v21 = *(a1 + 16);
      v48 = v20;
      v46 = v21;
      if (sub_240BB5FE8(&v47, &v45))
      {
        v22 = *(a1 + 16);
        v23 = *a1;
        v24 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v24;
        *a2 = v23;
        *(a2 + 16) = v22;
      }
    }
  }

  v47 = *a5;
  v25 = *(a5 + 16);
  v45 = *a4;
  v26 = *(a4 + 16);
  v48 = v25;
  v46 = v26;
  if (sub_240BB5FE8(&v47, &v45))
  {
    v28 = *(a4 + 16);
    v29 = *a4;
    v30 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v30;
    *a5 = v29;
    *(a5 + 16) = v28;
    v47 = *a4;
    v31 = *(a4 + 16);
    v45 = *a3;
    v32 = *(a3 + 16);
    v48 = v31;
    v46 = v32;
    if (sub_240BB5FE8(&v47, &v45))
    {
      v33 = *(a3 + 16);
      v34 = *a3;
      v35 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v35;
      *a4 = v34;
      *(a4 + 16) = v33;
      v47 = *a3;
      v36 = *(a3 + 16);
      v45 = *a2;
      v37 = *(a2 + 16);
      v48 = v36;
      v46 = v37;
      if (sub_240BB5FE8(&v47, &v45))
      {
        v38 = *(a2 + 16);
        v39 = *a2;
        v40 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v40;
        *a3 = v39;
        *(a3 + 16) = v38;
        v47 = *a2;
        v41 = *(a2 + 16);
        v45 = *a1;
        v42 = *(a1 + 16);
        v48 = v41;
        v46 = v42;
        if (sub_240BB5FE8(&v47, &v45))
        {
          v43 = *(a1 + 16);
          result = *a1;
          v44 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v44;
          *a2 = result;
          *(a2 + 16) = v43;
        }
      }
    }
  }

  return result;
}

BOOL sub_240BB6520(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 2);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_240BB60DC(a1, (a1 + 20), (a2 - 20));
        break;
      case 4:
        sub_240BB60DC(a1, (a1 + 20), (a1 + 40));
        v38 = *(a2 - 20);
        v21 = *(a2 - 4);
        v36 = *(a1 + 40);
        v22 = *(a1 + 56);
        v39 = v21;
        v37 = v22;
        if (sub_240BB5FE8(&v38, &v36))
        {
          v23 = a2 - 20;
          v24 = *(a1 + 56);
          v25 = *(a1 + 40);
          v26 = *(a2 - 4);
          *(a1 + 40) = *(a2 - 20);
          *(a1 + 56) = v26;
          *v23 = v25;
          *(v23 + 16) = v24;
          v38 = *(a1 + 40);
          LODWORD(v23) = *(a1 + 56);
          v36 = *(a1 + 20);
          v27 = *(a1 + 36);
          v39 = v23;
          v37 = v27;
          if (sub_240BB5FE8(&v38, &v36))
          {
            v28 = *(a1 + 36);
            v29 = *(a1 + 20);
            *(a1 + 20) = *(a1 + 40);
            *(a1 + 36) = *(a1 + 56);
            *(a1 + 40) = v29;
            *(a1 + 56) = v28;
            v38 = *(a1 + 20);
            v30 = *(a1 + 36);
            v36 = *a1;
            v31 = *(a1 + 16);
            v39 = v30;
            v37 = v31;
            if (sub_240BB5FE8(&v38, &v36))
            {
              v32 = *(a1 + 16);
              v33 = *a1;
              *a1 = *(a1 + 20);
              *(a1 + 16) = *(a1 + 36);
              *(a1 + 20) = v33;
              *(a1 + 36) = v32;
            }
          }
        }

        break;
      case 5:
        sub_240BB62A4(a1, a1 + 20, a1 + 40, a1 + 60, a2 - 20);
        break;
      default:
        goto LABEL_11;
    }

LABEL_26:
    result = 1;
    goto LABEL_27;
  }

  if (v4 < 2)
  {
    goto LABEL_26;
  }

  if (v4 == 2)
  {
    v38 = *(a2 - 20);
    v5 = *(a2 - 4);
    v36 = *a1;
    v6 = *(a1 + 16);
    v39 = v5;
    v37 = v6;
    if (sub_240BB5FE8(&v38, &v36))
    {
      v7 = a2 - 20;
      v8 = *(a1 + 16);
      v9 = *a1;
      v10 = *(a2 - 4);
      *a1 = *(a2 - 20);
      *(a1 + 16) = v10;
      *v7 = v9;
      *(v7 + 16) = v8;
    }

    goto LABEL_26;
  }

LABEL_11:
  v11 = a1 + 40;
  sub_240BB60DC(a1, (a1 + 20), (a1 + 40));
  v12 = a1 + 60;
  if (a1 + 60 == a2)
  {
    goto LABEL_26;
  }

  v13 = 0;
  v14 = 0;
  while (1)
  {
    v15 = *(v12 + 16);
    v41 = *v11;
    v16 = *(v11 + 16);
    v38 = *v12;
    v39 = v15;
    v36 = v41;
    v37 = v16;
    if (sub_240BB5FE8(&v38, &v36))
    {
      v40 = *v12;
      v17 = v13;
      while (1)
      {
        v18 = a1 + v17;
        *(v18 + 60) = *(a1 + v17 + 40);
        *(v18 + 76) = *(a1 + v17 + 56);
        if (v17 == -40)
        {
          break;
        }

        v41 = *(v18 + 20);
        v19 = *(v18 + 36);
        v38 = v40;
        v39 = v15;
        v36 = v41;
        v37 = v19;
        v17 -= 20;
        if ((sub_240BB5FE8(&v38, &v36) & 1) == 0)
        {
          v20 = a1 + v17 + 60;
          goto LABEL_19;
        }
      }

      v20 = a1;
LABEL_19:
      *v20 = v40;
      *(v20 + 16) = v15;
      if (++v14 == 8)
      {
        break;
      }
    }

    v11 = v12;
    v13 += 20;
    v12 += 20;
    if (v12 == a2)
    {
      goto LABEL_26;
    }
  }

  result = v12 + 20 == a2;
LABEL_27:
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_240BB686C(void *a1, void *a2)
{
  v4 = a1[21];
  v5 = 0x2E8BA2E8BA2E8BA3 * ((a1[7] - a1[6]) >> 3);
  v6 = a1[22];
  v7 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v4) >> 5);
  v8 = v5 - v7;
  if (v5 <= v7)
  {
    if (v5 >= v7)
    {
      goto LABEL_20;
    }

    v13 = v4 + 0x745D1745D1745D20 * ((a1[7] - a1[6]) >> 3);
    if (v6 != v13)
    {
      v14 = (v6 - 96);
      v15 = v14;
      v16 = v14;
      do
      {
        v17 = *v16;
        v16 -= 12;
        (*v17)(v15);
        v14 -= 12;
        v18 = v15 == v13;
        v15 = v16;
      }

      while (!v18);
    }
  }

  else
  {
    v9 = a1[23];
    if (0xAAAAAAAAAAAAAAABLL * ((v9 - v6) >> 5) < v8)
    {
      if (v5 <= 0x2AAAAAAAAAAAAAALL)
      {
        v10 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v4) >> 5);
        v11 = 0x5555555555555556 * ((v9 - v4) >> 5);
        if (v11 <= v5)
        {
          v11 = 0x2E8BA2E8BA2E8BA3 * ((a1[7] - a1[6]) >> 3);
        }

        if (v10 >= 0x155555555555555)
        {
          v12 = 0x2AAAAAAAAAAAAAALL;
        }

        else
        {
          v12 = v11;
        }

        v23[4] = a1 + 21;
        if (v12 <= 0x2AAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_240B2291C();
      }

      sub_240B228BC();
    }

    v13 = v6 + 96 * v8;
    v19 = 0x745D1745D1745D20 * ((a1[7] - a1[6]) >> 3) - 32 * ((v6 - v4) >> 5);
    do
    {
      sub_240B63BBC(v6);
      v6 += 96;
      v19 -= 96;
    }

    while (v19);
  }

  a1[22] = v13;
LABEL_20:
  sub_240B81C8C(a1 + 24, v5);
  sub_240B38D70(a1 + 150, v5);
  v22 = a1;
  if (a2)
  {
    v20 = a2;
  }

  else
  {
    v23[0] = 0;
    v23[1] = v23;
    v20 = v23;
  }

  return sub_240BB6BD0(v20, v5, &v22);
}

void sub_240BB6BAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_240B5AEE8(va);
  _Unwind_Resume(a1);
}

BOOL sub_240BB6BD0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    return (*a1)(*(a1 + 8), v6, sub_240BB6D2C, sub_240BB6C80, 0, a2) != 0;
  }

  for (i = 0; i != v3; ++i)
  {
    sub_240BB6C80(v6, i);
  }

  return 0;
}

uint64_t sub_240BB6C80(uint64_t a1, unsigned int a2)
{
  v3 = **(a1 + 8);
  bzero(v7, 0x2BCuLL);
  v4 = (v3[24] + 24 * a2);
  v4[1] = *v4;
  v6 = v3[150] + 8 * a2;
  return sub_240BDB4B8(v3[6] + 88 * a2, (v3[9] + 152 * a2), 0, v7, 0, a2, 0, 0, (v3 + 15), (v3[21] + 96 * a2));
}

uint64_t sub_240BB6D2C(unsigned int (**a1)(uint64_t), uint64_t a2)
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

uint64_t sub_240BB6D54(void *a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_240B438A0(a5, a1[60], a1[61]);
  v10 = (a1[6] + 88 * v9);
  if (*v10 != v10[1])
  {
    if (a1[24] == a1[25])
    {
      result = sub_240BDB4B8(v10, (a1[9] + 152 * v9), a2, a3, a4, v9, 0, 0, 0, 0);
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = sub_240C0EB88(a1[21] + 96 * v9, a2, a4, a3);
      if (result)
      {
        return result;
      }

      sub_240B84584(a1[24] + 24 * v9, (a1 + 27), a1 + 43, 0, a2, a4, a3);
    }
  }

  return 0;
}

void sub_240BB6E50(void *a1, uint64_t a2)
{
  v3 = sub_240B438A0(a2, a1[60], a1[61]);
  memset(v7, 0, sizeof(v7));
  v8 = 8;
  v9 = 0;
  v10 = 1;
  v4 = a1[6] + 88 * v3;
  v11 = *v4;
  v12 = *(v4 + 16);
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  v13 = *(v4 + 24);
  v14 = *(v4 + 40);
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  v5 = *(v4 + 48);
  v6 = *(v4 + 64);
  v17 = *(v4 + 80);
  v15 = v5;
  v16 = v6;
  sub_240B649A8(v4, v7);
  sub_240B649A8(v7, &v11);
  v18 = &v13;
  sub_240B37900(&v18);
  v18 = &v11;
  sub_240B379C0(&v18);
  *&v11 = &v7[1] + 8;
  sub_240B37900(&v11);
  *&v11 = v7;
  sub_240B379C0(&v11);
}

void sub_240BB6F50(void *a1)
{
  v2 = a1[154];
  v3 = a1[155];
  if (v2 != v3)
  {
    do
    {
      sub_240BB6E50(a1, v2 + 40);
      v2 += 72;
    }

    while (v2 != v3);
    v2 = a1[154];
  }

  a1[155] = v2;
}

uint64_t sub_240BB6FA8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unint64_t a5, uint64_t a6, float a7, float a8)
{
  v8 = a7 * a8;
  sub_240BB7044(v13, a5, a1 + 4 * a3, a2, a3, a4, 6, a6);
  v9 = 0.0;
  if (vabds_f32(v8, v14) >= 0.62)
  {
    v9 = v8 - v14;
  }

  v10 = llroundf(v9);
  v11 = roundf(v9 * 0.5);
  if ((v10 - 3) < 0xFFFFFFFB)
  {
    v10 = (v11 + v11);
  }

  return (v10 + v14);
}

uint64_t sub_240BB7044(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, signed int a5, unsigned int a6, int a7, uint64_t a8)
{
  v8 = a5;
  if (!a5)
  {
    if (!a6)
    {
      v16 = 0;
      v14 = 0;
      v12 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v15 = 0;
      v18 = 0;
      goto LABEL_20;
    }

    v9 = *(a3 - 4 * a4);
    v12 = v9;
    v10 = v9;
    v11 = v9;
    goto LABEL_6;
  }

  v9 = *(a3 - 4);
  v10 = v9;
  if (a6)
  {
    v11 = *(a3 + 4 * ~a4);
    v12 = *(a3 - 4 * a4);
LABEL_6:
    v13 = 1;
    if (a5 + 1 >= a2)
    {
      v14 = v12;
    }

    else
    {
      v14 = *(a3 + 4 * (1 - a4));
    }

    goto LABEL_10;
  }

  v13 = 0;
  v11 = v9;
  v12 = v9;
  v14 = v9;
LABEL_10:
  v15 = v10;
  if (a5 >= 2)
  {
    v15 = *(a3 - 8);
  }

  v16 = v12;
  if (a6 >= 2)
  {
    v16 = *(a3 - 8 * a4);
  }

  v17 = v13 ^ 1;
  if (a5 + 2 >= a2)
  {
    v17 = 1;
  }

  if (v17)
  {
    v18 = v14;
  }

  else
  {
    v18 = *(a3 + 4 * (2 - a4));
  }

LABEL_20:
  v19 = 0;
  v20 = a2 + 2;
  if (a6)
  {
    v21 = a2 + 2;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21 + a5;
  if (a2 - 1 <= a5)
  {
    v23 = v21 + a5;
  }

  else
  {
    v23 = v22 + 1;
  }

  if (a5)
  {
    v24 = v22 - 1;
  }

  else
  {
    v24 = v21;
  }

  v25 = a8 + 216;
  for (i = 40; i != 136; i += 24)
  {
    v27 = (*(*(a8 + i) + 4 * v23) + *(*(a8 + i) + 4 * v22) + *(*(a8 + i) + 4 * v24));
    v28 = __clz(v27 + 1) ^ 0x3F;
    if (v28 <= 5)
    {
      LOBYTE(v28) = 5;
    }

    v57.i32[v19] = ((*(v25 + 4 * (v27 >> (v28 - 5))) * *(a8 + v19 * 4 + 200)) >> (v28 - 5)) + 4;
    ++v19;
  }

  v29 = 8 * v12;
  v30 = 8 * v10;
  v31 = 8 * v14;
  if (a5)
  {
    if (a6)
    {
      v32 = 0;
    }

    else
    {
      v32 = v20;
    }

    v33 = *(a8 + 136);
    v34 = *(v33 + 4 * v32 + 4 * v8 - 4);
  }

  else
  {
    v34 = 0;
    v33 = *(a8 + 136);
  }

  v35 = 0;
  v36 = *(v33 + 4 * v22);
  v37 = *(v33 + 4 * v24);
  v38 = *(v33 + 4 * v23);
  v39 = *(a8 + 176);
  v40 = v29 - (((v34 + v36 + v38) * *(a8 + 172)) >> 5);
  *a8 = v31 - v29 + v30;
  *(a8 + 8) = v40;
  v41 = v29 - ((*(a8 + 180) * v37 + *(a8 + 184) * v36 + *(a8 + 188) * v38 + 8 * ((v16 - v12) * *(a8 + 192) + (v11 - v10) * *(a8 + 196))) >> 5);
  *(a8 + 16) = v30 - (((v34 + v36 + v37) * v39) >> 5);
  *(a8 + 24) = v41;
  v58 = vshlq_u32(v57, vnegq_s32(vdupq_n_s32((__clz(vaddvq_s32(v57)) ^ 0x1F) - 4)));
  v42 = vaddvq_s32(v58);
  v43 = (v42 >> 1) - 1;
  do
  {
    v43 += *(a8 + 8 * v35) * v58.u32[v35];
    ++v35;
  }

  while (v35 != 4);
  v44 = (v43 * *(v25 + 4 * (v42 - 1))) >> 24;
  v45 = v37 ^ v36 | v34 ^ v36;
  if (v31 <= v29)
  {
    v46 = 8 * v12;
  }

  else
  {
    v46 = 8 * v14;
  }

  if (v30 > v46)
  {
    v46 = 8 * v10;
  }

  if (v29 >= v31)
  {
    v29 = 8 * v14;
  }

  if (v29 < v30)
  {
    v30 = v29;
  }

  if (v44 >= v46)
  {
    v47 = v46;
  }

  else
  {
    v47 = v44;
  }

  if (v30 <= v47)
  {
    v30 = v47;
  }

  if (v45 > 0)
  {
    v30 = v44;
  }

  *(a8 + 32) = v30;
  *result = 0;
  switch(a7)
  {
    case 1:
      break;
    case 2:
      v10 = v12;
      break;
    case 3:
      v48 = v10 + v12;
      goto LABEL_88;
    case 4:
      v54 = v10 + v12 - v11;
      v55 = v12 - v11;
      if (v55 < 0)
      {
        v55 = -v55;
      }

      v56 = v54 - v12;
      if (v56 < 0)
      {
        v56 = -v56;
      }

      if (v55 >= v56)
      {
        v10 = v12;
      }

      break;
    case 5:
      if (v9 >= v12)
      {
        LODWORD(v10) = v12;
      }

      else
      {
        LODWORD(v10) = v9;
      }

      if (v9 <= v12)
      {
        v49 = v12;
      }

      else
      {
        v49 = v9;
      }

      v50 = v9 + v12 - v11;
      if (v10 > v11)
      {
        v50 = v49;
      }

      if (v49 >= v11)
      {
        LODWORD(v10) = v50;
      }

      v10 = v10;
      break;
    case 6:
      v10 = (v30 + 3) >> 3;
      break;
    case 7:
      v10 = v14;
      break;
    case 8:
      v10 = v11;
      break;
    case 9:
      v10 = v15;
      break;
    case 10:
      v48 = v11 + v10;
      goto LABEL_88;
    case 11:
      v48 = v11 + v12;
      goto LABEL_88;
    case 12:
      v48 = v12 + v14;
LABEL_88:
      v10 = v48 / 2;
      break;
    case 13:
      v51 = 3 * v14 - 2 * v16 + 6 * v12 - v10 + 8 * v10 + v15 + v18;
      v52 = v51 + 8;
      v53 = v51 + 23;
      if (v52 >= 0)
      {
        v53 = v52;
      }

      v10 = v53 >> 4;
      break;
    default:
      v10 = 0;
      break;
  }

  *(result + 8) = v10;
  *(result + 16) = a7;
  return result;
}

uint64_t sub_240BB7458(uint64_t a1, uint64_t a2, uint64_t a3, int a4, float a5, float a6)
{
  v6 = a1 + 4 * a3;
  if (a3)
  {
    v7 = *(v6 - 4);
    if (a4)
    {
      v8 = *(v6 + 4 * ~a2);
      v9 = *(v6 - 4 * a2);
    }

    else
    {
      v9 = *(v6 - 4);
      v8 = v7;
    }
  }

  else if (a4)
  {
    v9 = *(v6 - 4 * a2);
    v7 = v9;
    v8 = v9;
  }

  else
  {
    v9 = 0;
    v7 = 0;
    v8 = 0;
  }

  v10 = a5 * a6;
  if (v7 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  if (v7 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = v7;
  }

  v13 = v7 + v9 - v8;
  if (v11 > v8)
  {
    v13 = v12;
  }

  if (v12 < v8)
  {
    v13 = v11;
  }

  v14 = v10 - v13;
  v15 = vabds_f32(v10, v13) < 0.62;
  v16 = 0.0;
  if (!v15)
  {
    v16 = v14;
  }

  v17 = llroundf(v16);
  v18 = roundf(v16 * 0.5);
  if ((v17 - 3) < 0xFFFFFFFB)
  {
    v17 = (v18 + v18);
  }

  return (v17 + v13);
}

uint64_t sub_240BB7520(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6, uint64_t a7)
{
  v180 = *MEMORY[0x277D85DE8];
  *(a1[3] + a5) = a6;
  v10 = *(a1[3] + a5);
  *v169 = 1;
  *&v169[8] = 0;
  *&v169[16] = a5;
  *&v170 = 0;
  v11 = sub_240B438A0(v169, a1[60], a1[61]);
  v12 = a1;
  v13 = a1[9];
  v14 = v13 + 152 * v11;
  *v14 = 0xFFFFFFLL;
  *(v14 + 64) = 6;
  *(v14 + 76) = 1;
  v15 = *(v12 + 140);
  if (v15 <= 2)
  {
    if (a6)
    {
      goto LABEL_9;
    }

    if (v15 == 2)
    {
      v17 = 14;
    }

    else
    {
      v17 = 15;
    }

    *(v14 + 64) = v17;
    *(v14 + 76) = 3;
    v16 = 1;
  }

  else
  {
    v16 = 5;
  }

  *(v14 + 84) = v16;
LABEL_9:
  v134 = v12;
  if (v12[71])
  {
    *(v14 + 84) = 6;
  }

  *(v14 + 88) = *(v13 + 88);
  v132 = v11;
  if (v11)
  {
    sub_240BA2C68((v14 + 104), *(v13 + 104), *(v13 + 112), (*(v13 + 112) - *(v13 + 104)) >> 3);
  }

  v18 = *(v13 + 128);
  *(v14 + 133) = *(v13 + 133);
  *(v14 + 128) = v18;
  sub_240B64760(&v161, a4[2], a4[3], 8, 3);
  v19 = v168;
  if (!v168)
  {
    v20 = (1 << v10);
    *v169 = v161;
    v161 = 0uLL;
    v170 = v163;
    *&v169[16] = v162;
    v171 = v164;
    v162 = 0;
    v163 = 0uLL;
    v164 = 0;
    v172 = v165;
    v173 = v166;
    v21 = v134[6] + 88 * v132;
    v174 = v167;
    sub_240B649A8(v21, v169);
    v159 = &v170;
    sub_240B37900(&v159);
    v159 = v169;
    sub_240B379C0(&v159);
    v137 = a4;
    if (a6)
    {
      if (*(v134[9] + 152 * v132 + 84) == 6)
      {
        v146 = 0;
        *v169 = 1;
        *&v169[8] = 2;
        v22 = *(a7 + 1016);
        v23 = *(a7 + 996);
        v24 = (*(a7 + 1000) * *(v22 + 52)) / v20;
        v144 = v22 + 60;
        v154 = a4[3];
        v150 = *(a3 + 16);
        v141 = a4[1] * v150 + 4 * *a4;
        do
        {
          if (v154)
          {
            v25 = 0;
            v26 = *&v169[v146];
            v27 = (*(v144 + 4 * v26) * (v23 * *(a7 + 988))) * v20;
            v148 = *(v134[6] + 88 * v132);
            v28 = v148 + (((v26 < 2) ^ v26) << 6);
            v29 = *(v28 + 16);
            v30 = *(v28 + 24);
            v152 = *&v169[v146];
            v31 = v137[2];
            v32 = *(a7 + 1184 + 4 * v26) * v24;
            v33 = *(a3 + 40 * v26 + 24) + v141;
            v34 = v30;
            do
            {
              if (v152 == 1)
              {
                if (v31)
                {
                  for (i = 0; i != v31; ++i)
                  {
                    *(v30 + 4 * i) = sub_240BB7458(v34 + v29 * v25, v29 >> 2, i, v25, *(v33 + 4 * i), v27);
                  }
                }
              }

              else if (v31)
              {
                v36 = 0;
                v37 = *(v148 + 24) + *(v148 + 16) * v25;
                do
                {
                  *(v30 + 4 * v36) = sub_240BB7458(v34 + v29 * v25, v29 >> 2, v36, v25, *(v33 + 4 * v36) - (*(v37 + 4 * v36) * v32), v27);
                  ++v36;
                }

                while (v31 != v36);
              }

              ++v25;
              v30 += v29;
              v33 += v150;
            }

            while (v25 != v154);
          }

          v146 += 4;
        }

        while (v146 != 12);
        a4 = v137;
      }

      else
      {
        v65 = 0;
        v178 = 1;
        v179 = 2;
        do
        {
          v66 = *(&v178 + v65);
          v67 = *(a7 + 1016);
          v68 = *(v67 + 4 * v66 + 60);
          v69 = *(a7 + 996);
          v70 = *(a7 + 988);
          v71 = *(a7 + 1000);
          v72 = *(v67 + 52);
          v149 = v66;
          v73 = *(a7 + 1184 + 4 * v66);
          v159 = &unk_2852A1238;
          *(v160 + 4) = 0u;
          *(&v160[1] + 4) = 0u;
          v160[2] = 0u;
          *&v169[8] = xmmword_240C112C0;
          *v169 = &unk_2852A2120;
          *&v170 = 0;
          sub_240B63734(&v159, v169);
          v133 = v65;
          v155 = &unk_2852A1238;
          v156 = v160[0];
          v157 = v160[1];
          v158 = v160[2];
          sub_240B62C98(v169, &v155, a4[2]);
          v147 = a4[3];
          if (v147)
          {
            v74 = 0;
            v75 = (v68 * (v69 * v70)) * v20;
            v145 = (v149 < 2) ^ v149;
            v76 = v73 * ((v71 * v72) / v20);
            v143 = v134[6] + 88 * v132;
            v140 = *(a3 + 40 * v149 + 24);
            v142 = *(a3 + 16);
            v138 = *v137;
            v139 = v137[1];
            v151 = v137[2];
            do
            {
              v77 = *(*v143 + (v145 << 6) + 16);
              v78 = *(*v143 + (v145 << 6) + 24) + v77 * v74;
              v79 = v77 >> 2;
              v80 = v140 + v142 * (v139 + v74) + 4 * v138;
              if (v149 == 1)
              {
                if (v151)
                {
                  v81 = 0;
                  v82 = v137[2];
                  if (v74)
                  {
                    v83 = 0;
                  }

                  else
                  {
                    v83 = v82 + 2;
                  }

                  if (v82 <= 1)
                  {
                    v84 = 1;
                  }

                  else
                  {
                    v84 = v137[2];
                  }

                  v85 = v151;
                  do
                  {
                    v86 = sub_240BB6FA8(v78, v79, v81, v74, v85, v169, *(v80 + 4 * v81), v75);
                    v87 = 0;
                    *(v78 + 4 * v81) = v86;
                    v88 = 8 * v86;
                    *(__p + v83 + v81) = DWORD2(v170) - v88;
                    v89 = &v171;
                    do
                    {
                      v90 = *&v169[v87] - v88;
                      if (v90 < 0)
                      {
                        v90 = v88 - *&v169[v87];
                      }

                      v91 = (v90 + 3) >> 3;
                      v92 = *v89;
                      v89 += 3;
                      *(v92 + 4 * (v83 + v81)) = v91;
                      *(v92 + 4 * ((v74 << 63 >> 63) & (v82 + 2)) + 4 * v81 + 4) += v91;
                      v87 += 8;
                    }

                    while (v87 != 32);
                    ++v81;
                    v85 = v82;
                  }

                  while (v81 != v84);
                }
              }

              else if (v151)
              {
                v93 = 0;
                v153 = *(*v143 + 24) + *(*v143 + 16) * v74;
                v94 = v137[2];
                if (v74)
                {
                  v95 = 0;
                }

                else
                {
                  v95 = v94 + 2;
                }

                if (v94 <= 1)
                {
                  v96 = 1;
                }

                else
                {
                  v96 = v137[2];
                }

                v97 = v151;
                do
                {
                  v98 = sub_240BB6FA8(v78, v79, v93, v74, v97, v169, *(v80 + 4 * v93) - (*(v153 + 4 * v93) * v76), v75);
                  v99 = 0;
                  *(v78 + 4 * v93) = v98;
                  v100 = 8 * v98;
                  *(__p + v95 + v93) = DWORD2(v170) - v100;
                  v101 = &v171;
                  do
                  {
                    v102 = *&v169[v99] - v100;
                    if (v102 < 0)
                    {
                      v102 = v100 - *&v169[v99];
                    }

                    v103 = (v102 + 3) >> 3;
                    v104 = *v101;
                    v101 += 3;
                    *(v104 + 4 * (v95 + v93)) = v103;
                    *(v104 + 4 * ((v74 << 63 >> 63) & (v94 + 2)) + 4 * v93 + 4) += v103;
                    v99 += 8;
                  }

                  while (v99 != 32);
                  ++v93;
                  v97 = v94;
                }

                while (v93 != v96);
              }

              ++v74;
            }

            while (v74 != v147);
          }

          if (__p)
          {
            v177 = __p;
            operator delete(__p);
          }

          v105 = 0;
          a4 = v137;
          do
          {
            v106 = *&v175[v105];
            if (v106)
            {
              *&v175[v105 + 8] = v106;
              operator delete(v106);
            }

            v105 -= 24;
          }

          while (v105 != -96);
          v65 = v133 + 4;
        }

        while (v133 != 8);
      }

      v64 = a2;
      v45 = v134;
LABEL_85:
      sub_240B2AF10(a4, (a7 + 1632), a7 + 1592, v45[6] + 88 * v132, (a7 + 952), (a7 + 1184), v64 + 40, (a7 + 1760), 1.0 / v20);
      v19 = 0;
      goto LABEL_86;
    }

    if (sub_240B2AC6C(a2 + 40))
    {
      v38 = 0;
      *v169 = 1;
      *&v169[8] = 2;
      v39 = *(a7 + 1016);
      v40 = *(a7 + 996);
      v41 = (*(a7 + 1000) * *(v39 + 52)) / v20;
      v42 = a4[3];
      v43 = *(a3 + 16);
      v44 = a4[1] * v43 + 4 * *a4;
      v45 = v134;
      do
      {
        if (v42)
        {
          v46 = 0;
          v47 = *&v169[v38];
          v48 = (*(v39 + 60 + 4 * v47) * (v40 * *(a7 + 988))) * v20;
          v49 = v47 < 2;
          v50 = *(v134[6] + 88 * v132);
          v52 = *(v50 + ((v49 ^ v47) << 6) + 16);
          v51 = *(v50 + ((v49 ^ v47) << 6) + 24);
          v53 = a4[2];
          v54 = *(a7 + 1184 + 4 * v47) * v41;
          v55 = (*(a3 + 40 * v47 + 24) + v44);
          do
          {
            if (v47 == 1)
            {
              if (v53)
              {
                for (j = 0; j != v53; ++j)
                {
                  v51[j] = llroundf(v48 * v55[j]);
                }
              }
            }

            else if (v53)
            {
              v57 = (*(v50 + 24) + *(v50 + 16) * v46);
              v58 = v55;
              v59 = v51;
              v60 = v53;
              do
              {
                v61 = *v58++;
                v62 = v61;
                v63 = *v57++;
                *v59++ = llroundf(v48 * (v62 - (v63 * v54)));
                --v60;
              }

              while (v60);
            }

            ++v46;
            v51 = (v51 + v52);
            v55 = (v55 + v43);
          }

          while (v46 != v42);
        }

        v38 += 4;
      }

      while (v38 != 12);
      v64 = a2;
      goto LABEL_85;
    }

    v109 = 0;
    *v169 = 1;
    *&v169[8] = 2;
    v64 = a2;
    v45 = v134;
    while (1)
    {
      v110 = *&v169[v109];
      v111 = *(a2 + 48 + 4 * v110);
      v112 = *(v64 + 60) - byte_240C85334[v111];
      v114 = *a4;
      v113 = a4[1];
      v115 = *(v64 + 61) - byte_240C85338[v111];
      v116 = a4[2] >> v112;
      v117 = a4[3] >> v115;
      v118 = *(*(a7 + 1016) + 4 * v110 + 60);
      v119 = *(a7 + 996);
      v120 = *(a7 + 988);
      v121 = (*(v45[6] + 88 * v132) + (((v110 < 2) ^ v110) << 6));
      v121[5] = v116;
      v121[6] = v117;
      v19 = sub_240B43734(v121);
      if (v19)
      {
        break;
      }

      v45 = v134;
      if (v117)
      {
        v122 = 0;
        v123 = *(a3 + 16);
        v125 = v121[2];
        v124 = v121[3];
        v126 = *(a3 + 40 * v110 + 24) + v123 * (v113 >> v115) + 4 * (v114 >> v112);
        do
        {
          v127 = v126;
          v128 = v124;
          for (k = v116; k; --k)
          {
            v130 = *v127++;
            *v128++ = llroundf(((v118 * (v119 * v120)) * v20) * v130);
          }

          ++v122;
          v124 = (v124 + v125);
          v126 += v123;
        }

        while (v122 != v117);
      }

      v109 += 4;
      a4 = v137;
      v64 = a2;
      if (v109 == 12)
      {
        goto LABEL_85;
      }
    }
  }

LABEL_86:
  sub_240B43B14(&v161);
  v107 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t sub_240BB8058(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LODWORD(v79) = 3;
  *(&v79 + 1) = 0;
  v80 = a3;
  *&v81 = 0;
  v10 = sub_240B438A0(&v79, *(a1 + 480), *(a1 + 488));
  v11 = v10;
  v12 = *(a1 + 72);
  v13 = v12 + 152 * v10;
  *v13 = 0xFFFFFFLL;
  if (*(v13 + 64) != 6)
  {
    *(v13 + 76) = 2;
  }

  if ((a4 & 1) == 0)
  {
    v14 = *(a1 + 560);
    if (v14 <= 6)
    {
      if (v14 <= 2)
      {
LABEL_10:
        v15 = *(a1 + 697);
        if (v15 != 1)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      v15 = 4;
    }

    else
    {
      v15 = 3;
    }

LABEL_11:
    *(v13 + 84) = v15;
    goto LABEL_12;
  }

  *(v13 + 84) = 2;
  if (*(a1 + 560) <= 2)
  {
    goto LABEL_10;
  }

LABEL_12:
  *(v13 + 88) = *(v12 + 88);
  if (v10)
  {
    sub_240BA2C68((v13 + 104), *(v12 + 104), *(v12 + 112), (*(v12 + 112) - *(v12 + 104)) >> 3);
  }

  v16 = *(v12 + 128);
  *(v13 + 133) = *(v12 + 133);
  *(v13 + 128) = v16;
  v17 = *(a1 + 48);
  sub_240B64760(&v79, *(a2 + 16), *(a2 + 24), 8, 4);
  v18 = v86;
  if (!v86)
  {
    v73 = v79;
    v19 = (v17 + 88 * v11);
    *v74 = v80;
    v79 = 0uLL;
    *&v74[8] = v81;
    v75 = v82;
    v80 = 0;
    v81 = 0uLL;
    v82 = 0;
    v76 = v83;
    v77 = v84;
    v78 = v85;
    sub_240B649A8(v19, &v73);
    *&v71 = &v74[8];
    sub_240B37900(&v71);
    *&v71 = &v73;
    sub_240B379C0(&v71);
    v70 = *a2;
    v20 = vshrq_n_u64(vaddq_s64(*(a2 + 16), vdupq_n_s64(7uLL)), 3uLL);
    v21 = v20.i64[1];
    v22 = v20.i64[0];
    sub_240B3AC2C(&v73, v20.u32[0], v20.u32[2]);
    v18 = v75;
    if (!v75)
    {
      v23 = v73;
      v71 = v73;
      v24 = *v74;
      v72 = *v74;
      v25 = *&v74[16];
      v26 = *v19;
      v26[5] = v22;
      v26[6] = v21;
      v26[7] = 0x300000003;
      *v26 = v23;
      v27 = v26[3];
      *(v26 + 1) = v24;
      if (v27)
      {
        atomic_fetch_add(&qword_27E519020, -*(v27 - 24));
        free(*(v27 - 32));
      }

      v26[4] = v25;
      sub_240B3AC2C(&v73, v22, v21);
      v18 = v75;
      if (!v75)
      {
        v28 = v73;
        v29 = *v74;
        v30 = *&v74[16];
        v31 = *v19;
        v31[13] = v22;
        v31[14] = v21;
        v31[15] = 0x300000003;
        *(v31 + 4) = v28;
        v32 = v31[11];
        *(v31 + 5) = v29;
        if (v32)
        {
          atomic_fetch_add(&qword_27E519020, -*(v32 - 24));
          free(*(v32 - 32));
        }

        v31[12] = v30;
        v33 = *(a2 + 24) * *(a2 + 16);
        sub_240B3AC2C(&v73, *(a2 + 24) * *(a2 + 16), 2u);
        v18 = v75;
        if (!v75)
        {
          v34 = v73;
          v35 = *v74;
          v36 = *&v74[16];
          v37 = *v19;
          v37[21] = v33;
          v37[22] = 2;
          v37[23] = 0;
          *(v37 + 8) = v34;
          v37[18] = v35;
          sub_240B2453C(v37 + 19, *(&v35 + 1));
          v37[20] = v36;
          v38 = *v19;
          v39 = **v19;
          *&v40 = v39;
          *(&v40 + 1) = HIDWORD(v39);
          v73 = 0uLL;
          *v74 = v40;
          v41 = vshrq_n_u64(v70, 3uLL);
          sub_240BB84C0(v41.i64[0], v41.i64[1], a5[140], a5[141], &v73, v38);
          v42 = *v19;
          v73 = 0uLL;
          v43 = v42[8];
          *&v40 = v43;
          *(&v40 + 1) = HIDWORD(v43);
          *v74 = v40;
          sub_240BB84C0(v41.i64[0], v41.i64[1], a5[145], a5[146], &v73, (v42 + 8));
          v44 = *(a2 + 24);
          v45 = *v19;
          v46 = 0;
          if (v44)
          {
            v47 = 0;
            v48 = *(a2 + 8);
            v49 = a5[21];
            v50 = a5[130];
            v51 = a5[135];
            v52 = v45[19];
            v53 = v52 + v45[18];
            v54 = a5[131] + v48 * v50 + 4 * *a2;
            v55 = (a5[22] + *a2 + v48 * v49);
            v56 = *a2 + v48 * v51;
            v58 = v45[26];
            v57 = v45[27];
            v59 = *(a2 + 16);
            v60 = (a5[136] + v56);
            do
            {
              v61 = v60;
              v62 = v57;
              v63 = v55;
              v64 = v54;
              for (i = v59; i; --i)
              {
                v66 = *v61++;
                *v62 = v66;
                v68 = *v63++;
                v67 = v68;
                if (v68)
                {
                  *(v52 + 4 * v46) = v67 >> 1;
                  *(v53 + 4 * v46++) = *v64 - 1;
                }

                ++v64;
                ++v62;
              }

              ++v47;
              v54 += v50;
              v55 += v49;
              v57 = (v57 + v58);
              v60 += v51;
            }

            while (v47 != v44);
          }

          v18 = 0;
          v45[21] = v46;
          *(*a1 + 8 * a3) = v46;
        }
      }
    }
  }

  sub_240B43B14(&v79);
  return v18;
}

uint64_t sub_240BB84C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = a5[3];
  if (v6)
  {
    v7 = 0;
    v8 = *(a6 + 16);
    v9 = a5[2];
    v10 = *(a6 + 24) + a5[1] * v8 + 4 * *a5;
    v11 = (a4 + result + a3 * a2);
    do
    {
      v12 = v11;
      v13 = v10;
      for (i = v9; i; --i)
      {
        v15 = *v12++;
        *v13++ = v15;
      }

      ++v7;
      v10 += v8;
      v11 += a3;
    }

    while (v7 != v6);
  }

  return result;
}

double sub_240BB8524(float *a1, float *a2, uint64_t a3, double *a4, char a5)
{
  *(a4 + 2) = 0u;
  *(a4 + 3) = 0u;
  *a4 = 0u;
  *(a4 + 1) = 0u;
  v10 = 0.0;
  if (a1 != a2)
  {
    v11 = a1;
    do
    {
      v12 = *v11;
      v13 = fmaxf(v11[1] * 6.0, 0.0);
      v32 = 0.0;
      v14 = modff(v13, &v32);
      if (v13 >= 7.0)
      {
        v15 = 0x3F80000000000006;
      }

      else
      {
        v15 = v32 | (LODWORD(v14) << 32);
      }

      v16 = (v15 << 32) + 0x100000000;
      v17 = v16 >> 32;
      v18 = (1.0 - *(&v15 + 1));
      v19 = *(&v15 + 1);
      v20 = *(a3 + (v16 >> 29)) * *(&v15 + 1) + *(a3 + 8 * v15) * v18 - v12;
      if (v20 <= 0.0)
      {
        a4[v15] = a4[v15] - v18 * v20;
        v10 = v10 + v20 * v20;
        v21 = a4[v17] - v19 * v20;
      }

      else
      {
        v10 = v10 + v20 * 1.1 * v20;
        a4[v15] = a4[v15] + v18 * -1.1 * v20;
        v21 = a4[v17] + v19 * -1.1 * v20;
      }

      a4[v17] = v21;
      v11 += 2;
    }

    while (v11 != a2);
  }

  if ((a5 & 1) == 0)
  {
    v22 = ((a2 - a1) >> 3);
    v24 = *a4;
    v23 = a4 + 1;
    v25 = v24;
    v26 = (a3 + 8);
    v27 = 7;
    do
    {
      v28 = *(v26 - 1) - *v26;
      v10 = v10 + v22 * 0.005 * v28 * v28;
      v29 = v28 * 0.005;
      v30 = v25 - v29 * v22;
      v25 = *v23 + v29 * v22;
      *(v23 - 1) = v30;
      *v23++ = v25;
      ++v26;
      --v27;
    }

    while (v27);
  }

  return v10;
}

void sub_240BB8708(void *a1, uint64_t a2)
{
  v31[3] = *MEMORY[0x277D85DE8];
  if (*(a2 + 4))
  {
    v4 = 0;
    v5 = *(**a1 + 320) + 1;
    do
    {
      v6 = *(a2 + 16) * v4;
      v7 = *(a2 + 64) + v6;
      v31[0] = *(a2 + 24) + v6;
      v31[1] = v7;
      v31[2] = *(a2 + 104) + v6;
      sub_240B493D8(&v28, a1, v4);
      v8 = v28;
      v9 = v29;
      if (v28 != v29)
      {
        v10 = a1[4];
        v11 = a1[7];
        v12 = a1[1];
        v13 = *a1 + 2376;
        v14 = v28;
        do
        {
          v15 = (v12 + 24 * *v14);
          v16 = *(v11 + 12 * *v14 * v5);
          v17 = (v10 + 40 * v15[2]);
          v18 = *v15;
          v19 = v4 - v15[1];
          v20 = v17[1];
          v21 = (v13 + 456 * *v17);
          v22 = v17[3];
          v23 = v21[14] * (v19 + v17[2]);
          v24 = v21[20] + v23 + 4 * v20;
          v30[0] = v21[15] + v23 + 4 * v20;
          v30[1] = v24;
          v30[2] = v21[25] + v23 + 4 * v20;
          if (v22)
          {
            for (i = 0; i != v22; ++i)
            {
              for (j = 0; j != 3; ++j)
              {
                if (v16 == 1)
                {
                  *(v31[j] + 4 * v18 + 4 * i) = 0;
                }

                else if (v16 == 2)
                {
                  *(v31[j] + 4 * v18 + 4 * i) = *(v31[j] + 4 * v18 + 4 * i) - *(v30[j] + 4 * i);
                }
              }
            }
          }

          ++v14;
        }

        while (v14 != v9);
      }

      if (v8)
      {
        operator delete(v8);
      }

      ++v4;
    }

    while (v4 < *(a2 + 4));
  }

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t sub_240BB88F4()
{
  v1 = MEMORY[0x28223BE20]();
  v445 = v4;
  v5 = v2;
  v607 = *MEMORY[0x277D85DE8];
  v6 = v2 + 4096;
  v444 = (v2 + 4544);
  v536 = 0uLL;
  v537 = 0;
  v499 = v2;
  v448 = v1;
  if (!*(v2 + 4623))
  {
    memset(v539, 0, sizeof(v539));
    v540 = 0;
    goto LABEL_29;
  }

  v7 = v3;
  if (v3)
  {
    v8 = -1;
  }

  else
  {
    v8 = 0;
  }

  v9 = vdupq_n_s32(v8);
  v580 = vbslq_s8(v9, xmmword_240C118B0, xmmword_240C118A0);
  v581 = vbsl_s8(*v9.i8, 0x3F80000040400000, 0x408AB85240A33333);
  v549 = 0;
  v10 = v1[2] >> 2;
  v11 = v1[8];
  v578 = v1[3];
  *&v579 = v11;
  *(&v579 + 1) = v1[13];
  v12 = *(v2 + 8);
  v547 = &v578;
  v462 = v10;
  v548 = v10;
  v500 = (v2 + 8);
  sub_240B22220(&v511, (v12 + 3) >> 2, (*(v2 + 16) + 3) >> 2);
  if (v515)
  {
    v540 = v515;
    goto LABEL_29;
  }

  v443 = v6;
  *v558 = v511;
  v0 = v513;
  v513 = 0;
  v559 = v512;
  v560 = v0;
  v561 = v514;
  v13 = v511;
  if (v511)
  {
    v14 = HIDWORD(v558[0]);
    if (HIDWORD(v558[0]))
    {
      v15 = v559;
      v16 = v0;
      do
      {
        bzero(v16, v13);
        v16 += v15;
        --v14;
      }

      while (v14);
    }
  }

  v546 = v0;
  v545 = v559;
  *v531 = v500;
  *&v531[8] = &v547;
  *&v531[16] = &v546;
  *&v531[24] = &v545;
  v532 = &v549;
  v17 = v5[2] >> 2;
  if (v445)
  {
    sub_240BBCD18(v445, v17, v531);
  }

  else
  {
    v582[0] = 0;
    v582[1] = v582;
    sub_240BBCD18(v582, v17, v531);
  }

  v6 = v443;
  if (!v5[646] || (v18 = sub_240C0E954(v444, "screenshot_like", v558)) == 0)
  {
    v19 = *(v443 + 527);
    v20 = atomic_load(&v549);
    if (!v19 || v19 != 1 && (v20 & 1) == 0)
    {
      v540 = 0;
      *v539 = v536;
      *&v539[16] = v537;
      v536 = 0uLL;
      v537 = 0;
      goto LABEL_24;
    }

    sub_240B22220(&v592, v5[1], v5[2]);
    if (v596)
    {
      v540 = v596;
      goto LABEL_24;
    }

    *v526 = v592;
    v102 = v594;
    v594 = 0;
    *&v527 = v593;
    v474 = v102;
    *(&v527 + 1) = v102;
    v528 = v595;
    v103 = LODWORD(v592.f64[0]);
    if (LODWORD(v592.f64[0]))
    {
      v104 = HIDWORD(v526[0]);
      if (HIDWORD(v526[0]))
      {
        v0 = v527;
        v105 = v102;
        do
        {
          bzero(v105, v103);
          v105 = v0 + v105;
          --v104;
        }

        while (v104);
      }
    }

    sub_240B2A11C(v582, v5[1], v5[2]);
    if (DWORD2(v586[1]))
    {
      v540 = DWORD2(v586[1]);
LABEL_636:
      v434 = *(&v527 + 1);
      *(&v527 + 1) = 0;
      if (v434)
      {
        atomic_fetch_add(&qword_27E519020, -*(v434 - 24));
        free(*(v434 - 32));
      }

      v6 = v443;
      if (!v596)
      {
        v435 = v594;
        v594 = 0;
        if (v435)
        {
          atomic_fetch_add(&qword_27E519020, -*(v435 - 3));
          free(*(v435 - 4));
        }
      }

      goto LABEL_24;
    }

    v449 = v7;
    sub_240B2A358(&v550, v582);
    sub_240B731F0(&v550);
    v451 = __dst[1];
    v453 = v556;
    *v577 = __dst[1];
    v455 = v555;
    *&v577[8] = v555;
    *&v577[16] = v556;
    v472 = __dst[0] >> 2;
    v494 = v527;
    v107 = v5[2];
    if (!v107)
    {
      v108 = 0;
      goto LABEL_289;
    }

    v108 = 0;
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v112 = *v500;
    v113 = *v500;
    do
    {
      if (v113)
      {
        v114 = 0;
        do
        {
          if (*(v546 + v545 * (v111 >> 2) + (v114 >> 2)))
          {
            v115 = (v110->i64 - v108) >> 4;
            v116 = v115 + 1;
            if ((v115 + 1) >> 60)
            {
              sub_240B228BC();
            }

            if (-v108 >> 3 > v116)
            {
              v116 = -v108 >> 3;
            }

            if (-v108 >= 0x7FFFFFFFFFFFFFF0)
            {
              v117 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v117 = v116;
            }

            if (v117)
            {
              sub_240B2D470(v117);
            }

            v118 = (16 * v115);
            v119 = &v118->i8[-(v109 - v108)];
            *v118 = vdupq_n_s64(v114 | (v111 << 32));
            v110 = v118 + 1;
            memcpy(v119, v108, v109 - v108);
            if (v108)
            {
              operator delete(v108);
            }

            v108 = v119;
            v112 = *v500;
            v109 = v110;
          }

          ++v114;
        }

        while (v114 < v112);
        v107 = v499[2];
        v113 = v112;
      }

      ++v111;
    }

    while (v111 < v107);
    if (v110 != v108)
    {
      v120 = 0;
      do
      {
        v121 = (v108 + 16 * v120);
        v122 = *v121;
        v123 = v121[1];
        v124 = &v474[v494 * v123];
        __src = v108;
        v458 = v120;
        if (v124[v122])
        {
          goto LABEL_221;
        }

        v125 = 0;
        v126 = *(v121 + 1);
        v127 = HIDWORD(v126);
        v124[v122] = 1;
        v128 = HIDWORD(v126) * v462;
        v129 = v126;
        do
        {
          *(*&v577[v125 * 8] + 4 * v472 * v123 + 4 * v122) = *&(&v578)[v125][4 * v128 + 4 * v126];
          ++v125;
        }

        while (v125 != 3);
        v130 = -1;
        v481 = v123;
        v487 = v122;
        v490 = v126;
        v477 = HIDWORD(v126);
        do
        {
          v131 = (v130 + v122);
          if (v131 - v126 >= 0)
          {
            v132 = v131 - v126;
          }

          else
          {
            v132 = v126 - v131;
          }

          v133 = v131 >> 2;
          v134 = &v474[v131];
          v135 = -1;
          v136 = v499;
          do
          {
            if (v135 | v130)
            {
              v137 = (v135 + v123);
              if (((v137 | v131) & 0x80000000) == 0 && *v500 > v131 && v136[2] > v137)
              {
                v138 = v137 - v127;
                if (v137 - v127 < 0)
                {
                  v138 = v127 - v137;
                }

                if ((v138 + v132) <= 0x32)
                {
                  for (i = 0; i != 3; ++i)
                  {
                    v140 = (&v578)[i];
                    *(v587 + i) = *&v140[4 * v128 + 4 * v129];
                    *(__p + i) = *&v140[4 * v462 * v137 + 4 * v131];
                  }

                  v141 = 0;
                  v142 = 0.0;
                  do
                  {
                    v142 = v142 + (vabds_f32(*(v587 + v141), *(__p + v141)) * *((&v580 | 0xC) + v141));
                    v141 += 4;
                  }

                  while (v141 != 12);
                  if (v142 <= 0.8)
                  {
                    if (*(v546 + v545 * (v137 >> 2) + v133))
                    {
                      if (vabds_f32(*&(*v547)[4 * v548 * v127 + 4 * v129], *&(*v547)[4 * v548 * v137 + 4 * v131]) > 0.0001)
                      {
                        goto LABEL_219;
                      }

                      v143 = 0;
                      while (v143 != 2)
                      {
                        v144 = v143 + 1;
                        v145 = vabds_f32(*&v547[v143 + 1][4 * v548 * v127 + 4 * v129], *&v547[v143 + 1][4 * v548 * v137 + 4 * v131]);
                        ++v143;
                        if (v145 > 0.0001)
                        {
                          if ((v144 - 1) < 2)
                          {
                            goto LABEL_219;
                          }

                          break;
                        }
                      }
                    }

                    if (!v134[v494 * v137])
                    {
                      v146 = v131 | (v137 << 32);
                      v466 = v134;
                      v468 = v133;
                      v470 = v132;
                      v147 = (v109 - __src) >> 4;
                      v148 = v147 + 1;
                      if ((v147 + 1) >> 60)
                      {
                        sub_240B228BC();
                      }

                      if (-__src >> 3 > v148)
                      {
                        v148 = -__src >> 3;
                      }

                      if (-__src >= 0x7FFFFFFFFFFFFFF0)
                      {
                        v149 = 0xFFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v149 = v148;
                      }

                      if (v149)
                      {
                        sub_240B2D470(v149);
                      }

                      v150 = (16 * v147);
                      *v150 = v146;
                      v150[1] = v490;
                      memcpy(0, __src, v109 - __src);
                      if (__src)
                      {
                        operator delete(__src);
                      }

                      __src = 0;
                      v136 = v499;
                      v109 = 16 * v147 + 16;
                      LODWORD(v123) = v481;
                      LODWORD(v122) = v487;
                      LODWORD(v126) = v490;
                      v127 = v477;
                      v132 = v470;
                      v134 = v466;
                      v133 = v468;
                    }
                  }
                }
              }
            }

LABEL_219:
            ++v135;
          }

          while (v135 != 2);
          ++v130;
          v110 = v109;
        }

        while (v130 != 2);
LABEL_221:
        v120 = v458 + 1;
        v108 = __src;
      }

      while (v458 + 1 != (v110->i64 - __src) >> 4);
    }

LABEL_289:
    v576 = 0;
    v575 = 0u;
    *__p = 0u;
    v5 = v499;
    v460 = v499[646];
    if (v460)
    {
      v177 = sub_240C0E954(v444, "is_background", v526);
      if (v177 || (!v449 ? (v185 = sub_240B29F18(0), v177 = sub_240C0DDBC(v444, v185, &v550)) : (v177 = sub_240C0E3B4(v444, &v550)), v177))
      {
        v540 = v177;
LABEL_302:
        *(&v575 + 1) = 0;
LABEL_629:
        if (v108)
        {
          operator delete(v108);
        }

        v431 = 13;
        v0 = &v550;
        do
        {
          sub_240B22320(&(&v550)[v431]);
          v431 -= 5;
        }

        while (v431 != -2);
        if (!DWORD2(v586[1]))
        {
          v432 = v586 + 1;
          v433 = -120;
          do
          {
            sub_240B22320(v432);
            v432 -= 5;
            v433 += 40;
          }

          while (v433);
        }

        goto LABEL_636;
      }

      sub_240B23590(v587, v499[1], v499[2]);
      if (v590)
      {
        v540 = v590;
        goto LABEL_302;
      }

      *__p = *v587;
      v281 = v588;
      v588 = 0;
      *&v575 = v587[2];
      *(&v575 + 1) = v281;
      v576 = v589;
      if (LODWORD(v587[0]))
      {
        v282 = HIDWORD(__p[0]);
        if (HIDWORD(__p[0]))
        {
          v283 = v575;
          v284 = 4 * LODWORD(v587[0]);
          do
          {
            bzero(v281, v284);
            v281 += v283;
            --v282;
          }

          while (v282);
        }
      }
    }

    *&v572 = v451;
    *(&v572 + 1) = v455;
    v573 = v453;
    sub_240B22220(v587, v499[1], v499[2]);
    if (v590)
    {
      v540 = v590;
    }

    else
    {
      v285 = LODWORD(v587[0]);
      v286 = HIDWORD(v587[0]);
      v287 = v587[2];
      v288 = v588;
      v588 = 0;
      if (LODWORD(v587[0]) && HIDWORD(v587[0]))
      {
        v289 = v288;
        do
        {
          bzero(v289, v285);
          v289 += v287;
          --v286;
        }

        while (v286);
      }

      v543[1] = 0;
      v543[0] = 0;
      v544 = 0;
      v541 = 0uLL;
      v542 = 0;
      v290 = v499[2];
      v459 = v288;
      if (v290)
      {
        v291 = *v500;
        for (j = 0; j < v290; ++j)
        {
          if (v291)
          {
            v293 = 0;
            do
            {
              v456 = v293;
              if (!v474[j * v494 + v293])
              {
                v543[1] = v543[0];
                v294 = v542 >> 2;
                if ((v542 >> 2) <= 1)
                {
                  v294 = 1;
                }

                sub_240B299F4(v294);
              }

              v291 = *v500;
              ++v293;
            }

            while (v456 + 1 < *v500);
            v290 = v499[2];
          }
        }
      }

      v295 = 0;
      v5 = v499;
      if (v460 && (v296 = sub_240C0E500(v444, __p)) != 0)
      {
        v540 = v296;
      }

      else if (v536.i64[0] == v536.i64[1])
      {
        v540 = 0;
        *v539 = v536;
        *&v539[16] = v537;
        v537 = 0;
        v536 = 0uLL;
      }

      else
      {
        sub_240BBCDB4(v536.i64[0], v536.i64[1]);
        v297 = v536.i64[0];
        if (0xD37A6F4DE9BD37A7 * ((v536.i64[1] - v536.i64[0]) >> 3) < 2)
        {
          v298 = 0;
        }

        else
        {
          v298 = 0;
          v299 = 1;
          v300 = 352;
          do
          {
            v301 = (v297 + 184 * v298);
            v302 = sub_240BBCFC4((v297 + v300 - 168), v301);
            v303 = v301[21];
            if (v302)
            {
              sub_240BBD05C(v301 + 20, v303, *(v297 + v300 - 8), *(v297 + v300), (*(v297 + v300) - *(v297 + v300 - 8)) >> 3);
            }

            else
            {
              if (v303 - v301[20] > 8)
              {
                ++v298;
              }

              sub_240BBD2A4(v297 + 184 * v298, v297 + v300 - 168);
            }

            ++v299;
            v297 = v536.i64[0];
            v300 += 184;
          }

          while (v299 < 0xD37A6F4DE9BD37A7 * ((v536.i64[1] - v536.i64[0]) >> 3));
        }

        if (*(v297 + 184 * v298 + 168) - *(v297 + 184 * v298 + 160) <= 8uLL)
        {
          v422 = v298;
        }

        else
        {
          v422 = v298 + 1;
        }

        sub_240BBCDEC(v536.i64, v422);
        v423 = v536;
        v425 = v536.i64[1];
        v424 = v536.i64[0];
        v5 = v499;
        if (v536.i64[1] == v536.i64[0])
        {
          goto LABEL_615;
        }

        v426 = 0;
        v427 = 0xD37A6F4DE9BD37A7 * ((v536.i64[1] - v536.i64[0]) >> 3);
        if (v427 <= 1)
        {
          v427 = 1;
        }

        v428 = (v536.i64[0] + 8);
        do
        {
          if (*v428 * *(v428 - 1) > v426)
          {
            v426 = *v428 * *(v428 - 1);
          }

          v428 += 23;
          --v427;
        }

        while (v427);
        if (v426 < 0x14)
        {
LABEL_615:
          while (v425 != v424)
          {
            v425 -= 23;
            sub_240B8F6A4(v425);
          }

          v536.i64[1] = v424;
          v423 = v536;
        }

        v540 = 0;
        *v539 = v423;
        *&v539[16] = v537;
        v537 = 0;
        v536 = 0uLL;
        v295 = v541;
        v288 = v459;
      }

      if (v295)
      {
        *(&v541 + 1) = v295;
        operator delete(v295);
      }

      if (v543[0])
      {
        operator delete(v543[0]);
      }

      if (v288)
      {
        atomic_fetch_add(&qword_27E519020, -*(v288 - 3));
        free(*(v288 - 4));
      }

      if (!v590)
      {
        v429 = v588;
        v588 = 0;
        if (v429)
        {
          atomic_fetch_add(&qword_27E519020, -*(v429 - 3));
          free(*(v429 - 4));
        }
      }
    }

    v430 = *(&v575 + 1);
    *(&v575 + 1) = 0;
    if (v430)
    {
      atomic_fetch_add(&qword_27E519020, -*(v430 - 24));
      free(*(v430 - 32));
    }

    goto LABEL_629;
  }

  v540 = v18;
LABEL_24:
  v21 = v560;
  v560 = 0;
  if (v21)
  {
    atomic_fetch_add(&qword_27E519020, -*(v21 - 24));
    free(*(v21 - 32));
  }

  if (!v515)
  {
    v22 = v513;
    v513 = 0;
    if (v22)
    {
      atomic_fetch_add(&qword_27E519020, -*(v22 - 3));
      free(*(v22 - 4));
    }
  }

LABEL_29:
  v582[0] = &v536;
  sub_240B8F628(v582);
  v23 = v540;
  if (v540)
  {
    goto LABEL_328;
  }

  v25 = *&v539[8];
  v24 = *v539;
  *v577 = *v539;
  *&v577[8] = *&v539[8];
  memset(v539, 0, sizeof(v539));
  v26 = v25;
  if (v24 != v25)
  {
    goto LABEL_31;
  }

  if (*(v5 + 1148) > 3)
  {
    v38 = 0;
    if (!*(v6 + 526))
    {
      goto LABEL_31;
    }
  }

  else
  {
    v38 = *v444 >= 3.0;
    if (!*(v6 + 526))
    {
      goto LABEL_31;
    }
  }

  if (*(v6 + 526) == 1)
  {
    v101 = *(v5 + 1);
    goto LABEL_144;
  }

  if (v38)
  {
    v101 = *(v5 + 1);
    if (*v444 < 3.0)
    {
      v537 = 0;
      v536 = 0uLL;
      v538 = 0;
      v583[0] = 0;
      v582[0] = 0;
      v582[1] = 0;
      v550 = v582;
      sub_240B8F628(&v550);
LABEL_325:
      v23 = v538;
      if (v538)
      {
        goto LABEL_326;
      }

      v196 = v536;
      *v582 = v536;
      v197 = v537;
      v583[0] = v537;
      v536 = 0uLL;
      v537 = 0;
      v198 = *v577;
      if (*v577)
      {
        for (k = *&v577[8]; k != v198; sub_240B8F6A4(k))
        {
          k -= 23;
        }

        *&v577[8] = v198;
        operator delete(*v577);
        v196 = *v582;
        v197 = v583[0];
      }

      *v577 = v196;
      *&v577[16] = v197;
      v583[0] = 0;
      v582[0] = 0;
      v582[1] = 0;
      v550 = v582;
      sub_240B8F628(&v550);
      if (!v538)
      {
        v582[0] = &v536;
        sub_240B8F628(v582);
      }

      v24 = *v577;
      v26 = *&v577[8];
      goto LABEL_31;
    }

LABEL_144:
    v486 = v101;
    v580 = 0uLL;
    v581 = 0;
    sub_240B2A11C(&v511, *v448, *(v448 + 1));
    if (v522)
    {
      v538 = v522;
LABEL_324:
      v582[0] = &v580;
      sub_240B8F628(v582);
      goto LABEL_325;
    }

    sub_240B2A358(v558, &v511);
    sub_240B2A11C(v582, *v448, *(v448 + 1));
    v106 = DWORD2(v586[1]);
    if (DWORD2(v586[1]))
    {
      goto LABEL_318;
    }

    sub_240B2A358(&v592, v582);
    sub_240B2A11C(&v550, *v448, *(v448 + 1));
    v106 = v557;
    if (!v557)
    {
      sub_240B2A358(v587, &v550);
      sub_240B30D80(v558, v587);
      for (m = 13; m != -2; m -= 5)
      {
        sub_240B22320(&v587[m]);
      }

      v6 = 0;
      __p[1] = 0;
      __p[0] = 0;
      *&v179 = *v448;
      *(&v179 + 1) = HIDWORD(*v448);
      v575 = v179;
      v0 = &v592;
      do
      {
        sub_240BE8D58(v448 + v6, __p, xmmword_240C838A4, v445, (v592.f64 + v6));
        sub_240BE8D58(&v592 + v6, __p, xmmword_240C838A4, v445, (v558 + v6));
        sub_240BE8D58(v448 + v6, __p, xmmword_240C83844, v445, (v592.f64 + v6));
        v6 += 40;
      }

      while (v6 != 120);
      v572 = 0u;
      __asm { FMOV            V1.4S, #10.0 }

      *v543 = _Q1;
      v541 = 0u;
      sub_240B23590(v531, LODWORD(v592.f64[0]), HIDWORD(v592.f64[0]));
      v106 = v533;
      if (!v533)
      {
        *v526 = *v531;
        v527 = *&v531[16];
        *&v531[24] = 0;
        v528 = v532;
        v587[0] = &v592;
        v587[1] = v558;
        v587[2] = v526;
        v588 = &v547;
        v589 = &v572;
        v590 = v543;
        v591 = &v541;
        if (v445)
        {
          sub_240B8E080(v445, HIDWORD(v592.f64[0]), v587);
        }

        else
        {
          v578 = 0;
          *&v579 = &v578;
          sub_240B8E080(&v578, HIDWORD(v592.f64[0]), v587);
        }

        v106 = 0;
        LODWORD(v6) = v526[0];
        LODWORD(v0) = HIDWORD(v526[0]);
        v441 = *(&v527 + 1);
        v184 = v527;
        *&v531[24] = 0;
      }

      v490 = v184;
      if (!v557)
      {
        v186 = &v556;
        v187 = -120;
        do
        {
          sub_240B22320(v186);
          v186 -= 5;
          v187 += 40;
        }

        while (v187);
      }
    }

    for (n = 104; n != -16; n -= 40)
    {
      sub_240B22320((&v592 + n));
    }

    if (!DWORD2(v586[1]))
    {
      v189 = v586 + 1;
      v190 = -120;
      do
      {
        sub_240B22320(v189);
        v189 -= 5;
        v190 += 40;
      }

      while (v190);
    }

    v5 = v499;
    if (v106)
    {
LABEL_318:
      v538 = v106;
LABEL_319:
      for (ii = 13; ii != -2; ii -= 5)
      {
        sub_240B22320(&v558[ii]);
      }

      if (!v522)
      {
        v192 = v521;
        v193 = -120;
        do
        {
          sub_240B22320(v192);
          v192 -= 5;
          v193 += 40;
        }

        while (v193);
      }

      goto LABEL_324;
    }

    v200 = v0;
    sub_240B23590(&v550, v6, v0);
    if (v554)
    {
      LODWORD(v588) = v554;
    }

    else
    {
      v201 = __dst[0];
      v202 = __dst[1];
      __dst[1] = 0;
      if (v0 && v6)
      {
        v203 = v441;
        v204 = v202;
        do
        {
          memcpy(v204, v203, 4 * v6);
          v204 = v201 + v204;
          v203 += v490;
          --v200;
        }

        while (v200);
      }

      v205 = 0uLL;
      memset(v531, 0, 24);
      if (*(&v486 + 1))
      {
        v206 = 0;
        v207 = v486;
        while (1)
        {
          if (!v207)
          {
            goto LABEL_445;
          }

          v208 = 0;
          v209 = &v202[v201 * v206];
          v482 = v206;
          v495 = v206 << 32;
          v503 = v209;
          do
          {
            if (*&v209[4 * v208] <= 0.04)
            {
              goto LABEL_379;
            }

            v526[1] = 0;
            v526[0] = 0;
            *&v527 = 0;
            *&v209[4 * v208] = 0;
            if ((atomic_load_explicit(&qword_27E519000, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E519000))
            {
              *v582 = xmmword_240C83904;
              *v583 = unk_240C83914;
              *v584 = xmmword_240C83924;
              v585[0] = unk_240C83934;
              sub_240B8E20C(&qword_27E518FE8, v582, 8uLL);
              __cxa_atexit(sub_240B9052C, &qword_27E518FE8, &dword_240ABC000);
              __cxa_guard_release(&qword_27E519000);
            }

            *&v592.f64[0] = v208 | v495;
            sub_240B8E20C(v582, &v592, 1uLL);
            while (1)
            {
              v210 = v582[0];
              if (v582[0] == v582[1])
              {
                v217 = 1;
                if (!v582[0])
                {
                  goto LABEL_363;
                }

LABEL_362:
                v582[1] = v210;
                operator delete(v210);
                goto LABEL_363;
              }

              v211 = *(v582[1] - 8);
              v592.f64[0] = v211;
              v582[1] -= 8;
              sub_240B6D7E4(v526, &v592);
              if ((v526[1] - v526[0]) >> 3 >= 0x3E9)
              {
                break;
              }

              v213 = qword_27E518FE8;
              for (jj = *algn_27E518FF0; v213 != jj; v213 += 2)
              {
                v214 = (v213[1] + HIDWORD(v211));
                v215 = (*v213 + LODWORD(v211));
                _NF = *v213 + LODWORD(v211) < 0;
                __p[0] = (v215 | (v214 << 32));
                if (!_NF && v486 > v215 && (v214 & 0x80000000) == 0 && *(&v486 + 1) > v214)
                {
                  v216 = &v202[v201 * v214];
                  if (*&v216[4 * v215] > 0.02)
                  {
                    *&v216[4 * v215] = 0;
                    sub_240B6D7E4(v582, __p);
                  }
                }
              }
            }

            v217 = 0;
            v210 = v582[0];
            if (v582[0])
            {
              goto LABEL_362;
            }

LABEL_363:
            v218 = v526[0];
            if ((v217 & 1) == 0)
            {
              goto LABEL_376;
            }

            v219 = *v526[0];
            if (v526[0] == v526[1])
            {
              v221 = *v526[0];
            }

            else
            {
              v220 = v526[0];
              v221 = *v526[0];
              do
              {
                v222 = *v220++;
                v219 = vmin_s32(v222, v219);
                v221 = vmax_s32(v221, v222);
              }

              while (v220 != v526[1]);
            }

            v223 = (v221.i32[0] - v219.i32[0] + 1);
            v224 = vsub_s32(v221, v219);
            v225 = v223 > 4 || (v224.i32[1] + 1) > 4;
            if (v225)
            {
LABEL_376:
              v209 = v503;
            }

            else
            {
              *&v226 = v219.i32[0];
              *(&v226 + 1) = v219.i32[1];
              *v582 = v226;
              v583[0] = v223;
              v583[1] = (v224.i32[1] + 1);
              sub_240B8E290(v584, v526);
              *&v585[2] = 0;
              memset(v585 + 8, 0, 20);
              v227 = 0.0;
              v228 = 0.0;
              v229 = 0.0;
              v230 = 0.0;
              v231 = 0.0;
              v232 = 0.0;
              v209 = v503;
              if (SLODWORD(v583[1]) >= -7)
              {
                v233 = 0;
                v234 = 0;
                v235 = LODWORD(v583[1]) + 3;
                v236 = -4;
                if (LODWORD(v583[1]) + 3 <= -4)
                {
                  v235 = -4;
                }

                v237 = LODWORD(v583[0]) + 3;
                if (LODWORD(v583[0]) + 3 <= -4)
                {
                  v237 = -4;
                }

                v238 = v237 + 5;
                do
                {
                  v239 = (v236 + LODWORD(v582[1]));
                  if (v236 + LODWORD(v582[1]) < 0 || *(&v486 + 1) <= v239 || SLODWORD(v583[0]) < -7)
                  {
                    v245 = v232;
                  }

                  else
                  {
                    v240 = &v441[v490 * v239];
                    v242 = v582[1] > v239 || v583[1] + v582[1] <= v239;
                    v243 = LODWORD(v582[0]) - 4;
                    v244 = v238;
                    do
                    {
                      if ((v243 & 0x80000000) != 0 || v486 <= v243)
                      {
                        v245 = v232;
                      }

                      else
                      {
                        v245 = *&v240[4 * v243];
                        if (v245 <= v232)
                        {
                          v246 = *&v240[4 * v243];
                          v245 = v232;
                        }

                        else
                        {
                          DWORD2(v585[0]) = *&v240[4 * v243];
                          *&v585[2] = __PAIR64__(v239, v243);
                          v246 = *&v240[4 * v243];
                        }

                        v248 = v582[0] > v243 || v583[0] + v582[0] <= v243 || v242;
                        if (v248)
                        {
                          v229 = v229 + v246;
                          *(&v585[1] + 1) = v229;
                          v227 = v227 + (*&v240[4 * v243] * *&v240[4 * v243]);
                          *(&v585[1] + 2) = v227;
                          ++v234;
                        }

                        else
                        {
                          v230 = v230 + v246;
                          *(v585 + 3) = v230;
                          v228 = v228 + (*&v240[4 * v243] * *&v240[4 * v243]);
                          *&v585[1] = v228;
                          ++v233;
                        }
                      }

                      ++v243;
                      v232 = v245;
                      --v244;
                    }

                    while (v244);
                  }

                  v232 = v245;
                  _ZF = v236++ == v235;
                }

                while (!_ZF);
                v232 = v233;
                v231 = v234;
              }

              *(v585 + 3) = v230 / v232;
              *&v585[1] = (v228 / v232) - (*(v585 + 3) * *(v585 + 3));
              *(&v585[1] + 1) = v229 / v231;
              *(&v585[1] + 2) = (v227 / v231) - (*(&v585[1] + 1) * *(&v585[1] + 1));
              *(&v585[1] + 3) = ((v230 / v232) - (v229 / v231)) / sqrtf(*(&v585[1] + 2));
              if (*(&v585[1] + 3) < 12.0)
              {
                if (v584[0])
                {
                  v584[1] = v584[0];
                  operator delete(v584[0]);
                }
              }

              else
              {
                v249 = *&v531[8];
                if (*&v531[8] >= *&v531[16])
                {
                  v253 = 0x2E8BA2E8BA2E8BA3 * ((*&v531[8] - *v531) >> 3) + 1;
                  if (v253 > 0x2E8BA2E8BA2E8BALL)
                  {
                    sub_240B228BC();
                  }

                  if (0x5D1745D1745D1746 * ((*&v531[16] - *v531) >> 3) > v253)
                  {
                    v253 = 0x5D1745D1745D1746 * ((*&v531[16] - *v531) >> 3);
                  }

                  if ((0x2E8BA2E8BA2E8BA3 * ((*&v531[16] - *v531) >> 3)) >= 0x1745D1745D1745DLL)
                  {
                    v254 = 0x2E8BA2E8BA2E8BALL;
                  }

                  else
                  {
                    v254 = v253;
                  }

                  v595 = v531;
                  if (v254)
                  {
                    if (v254 <= 0x2E8BA2E8BA2E8BALL)
                    {
                      operator new();
                    }

                    sub_240B2291C();
                  }

                  v255 = 8 * ((*&v531[8] - *v531) >> 3);
                  v592.f64[0] = 0.0;
                  *&v592.f64[1] = v255;
                  v593 = v255;
                  v594 = 0;
                  v256 = *v583;
                  *v255 = *v582;
                  *(v255 + 16) = v256;
                  sub_240B8E290((v255 + 32), v584);
                  *(v255 + 56) = *(v585 + 8);
                  *(v255 + 72) = *(&v585[1] + 8);
                  v257 = v593;
                  v258 = *&v531[8];
                  v259 = *v531;
                  v260 = *&v592.f64[1] + *v531 - *&v531[8];
                  if (*v531 != *&v531[8])
                  {
                    v261 = *v531;
                    v262 = *&v592.f64[1] + *v531 - *&v531[8];
                    do
                    {
                      v263 = *(v261 + 16);
                      *v262 = *v261;
                      *(v262 + 16) = v263;
                      *(v262 + 40) = 0;
                      *(v262 + 48) = 0;
                      *(v262 + 32) = 0;
                      *(v262 + 32) = *(v261 + 32);
                      *(v262 + 48) = *(v261 + 48);
                      *(v261 + 32) = 0;
                      *(v261 + 40) = 0;
                      *(v261 + 48) = 0;
                      v264 = *(v261 + 56);
                      *(v262 + 72) = *(v261 + 72);
                      *(v262 + 56) = v264;
                      v261 += 88;
                      v262 += 88;
                    }

                    while (v261 != v258);
                    do
                    {
                      v265 = *(v259 + 32);
                      if (v265)
                      {
                        *(v259 + 40) = v265;
                        operator delete(v265);
                      }

                      v259 += 88;
                    }

                    while (v259 != v258);
                    v259 = *v531;
                  }

                  v252 = v257 + 88;
                  *v531 = v260;
                  *&v531[8] = v257 + 88;
                  v266 = *&v531[16];
                  *&v531[16] = v594;
                  v593 = v259;
                  v594 = v266;
                  *&v592.f64[1] = v259;
                  *&v592.f64[0] = v259;
                  sub_240B8E314(&v592);
                }

                else
                {
                  v250 = *v583;
                  **&v531[8] = *v582;
                  *(v249 + 16) = v250;
                  sub_240B8E290((v249 + 32), v584);
                  v251 = *(v585 + 8);
                  *(v249 + 72) = *(&v585[1] + 8);
                  *(v249 + 56) = v251;
                  v252 = v249 + 88;
                }

                *&v531[8] = v252;
                v209 = v503;
                if (v584[0])
                {
                  v584[1] = v584[0];
                  operator delete(v584[0]);
                }

                v218 = v526[0];
              }
            }

            if (v218)
            {
              operator delete(v218);
            }

LABEL_379:
            ++v208;
          }

          while (v208 < v486);
          v207 = v486;
          v206 = v482;
LABEL_445:
          if (++v206 >= *(&v486 + 1))
          {
            v205 = *v531;
            v267 = *&v531[16];
            goto LABEL_448;
          }
        }
      }

      v267 = 0;
LABEL_448:
      LODWORD(v588) = 0;
      *v587 = v205;
      v587[2] = v267;
      memset(v531, 0, 24);
      sub_240B8E378(v531);
      v5 = v499;
      if (v202)
      {
        atomic_fetch_add(&qword_27E519020, -*(v202 - 3));
        free(*(v202 - 4));
      }

      if (!v554)
      {
        v268 = __dst[1];
        __dst[1] = 0;
        if (v268)
        {
          atomic_fetch_add(&qword_27E519020, -*(v268 - 3));
          free(*(v268 - 4));
        }
      }
    }

    if (v588)
    {
      v538 = v588;
LABEL_599:
      if (v441)
      {
        atomic_fetch_add(&qword_27E519020, -*(v441 - 3));
        free(*(v441 - 4));
      }

      goto LABEL_319;
    }

    v269 = v587[0];
    v578 = v587[0];
    v270 = v587[1];
    v579 = *&v587[1];
    memset(v587, 0, sizeof(v587));
    v271 = v270;
    v272 = (v270 - v269) >> 3;
    v273 = 0x2E8BA2E8BA2E8BA3 * v272;
    v274 = 0x2E8BA2E8BA2E8BACLL * v272 / 0x64uLL;
    if (v274 >= 0x64)
    {
      v275 = 100;
    }

    else
    {
      v275 = v274;
    }

    if (v273 > v275)
    {
      v276 = 126 - 2 * __clz(v273);
      if (v270 == v269)
      {
        v277 = 0;
      }

      else
      {
        v277 = v276;
      }

      sub_240B8E3E4(v269, v270, v277, 1);
      v278 = 88 * v275;
      v269 = v578;
      v279 = v579;
      if (&v578[v278] != v579)
      {
        v271 = &v578[v278];
        v280 = v486;
        while (v279 != v271)
        {
          v304 = *(v279 - 7);
          if (v304)
          {
            *(v279 - 6) = v304;
            operator delete(v304);
            v280 = v486;
          }

          v279 -= 88;
        }

        *&v579 = v271;
        v269 = v578;
        goto LABEL_506;
      }

      v271 = v579;
    }

    v280 = v486;
LABEL_506:
    if (v269 != v271)
    {
      v305 = v280;
      v436 = *(&v280 + 1);
      v437 = v280;
      v306.f64[0] = NAN;
      v306.f64[1] = NAN;
      v446 = vnegq_f64(v306);
      v438 = v271;
      do
      {
        v307 = 0;
        memset(v586, 0, 56);
        memset(v585, 0, sizeof(v585));
        *v584 = 0u;
        *v583 = 0u;
        *v582 = 0u;
        v593 = 0;
        v526[1] = 0;
        v526[0] = 0;
        *&v527 = 0;
        v309 = *(v269 + 20);
        v308 = *(v269 + 21);
        v461 = v448[2];
        v310 = v461 * v308;
        __p[1] = 0;
        __p[0] = 0;
        v450 = v308;
        v488 = v559;
        v311 = v559 * v308;
        v312 = v448 + 3;
        v313 = &v560;
        *&v575 = 0;
        do
        {
          v314 = *v312;
          v312 += 5;
          v315 = *(v314 + v310 + 4 * v309);
          v316 = *v313;
          v313 += 5;
          *&v526[v307++] = (v315 - *(v316 + v311 + 4 * v309));
        }

        while (v307 != 3);
        v317 = 0;
        v318 = *&v526[1];
        v319 = v448[8];
        v320 = -2;
        v321 = 0.0;
        v322 = 0.0;
        v323 = 0.0;
        v324 = v567;
        v325 = 0.0;
        v326 = 0.0;
        v327 = 0.0;
        do
        {
          v328 = (v320 + v450);
          if (v320 + v450 >= 0 && *(&v305 + 1) > v328)
          {
            v329 = v319 + v461 * v328;
            v330 = v488 * v328;
            v331 = v324 + v488 * v328;
            v332 = v328;
            for (kk = -2; kk != 3; ++kk)
            {
              v334 = (kk + v309);
              if (kk + v309 >= 0 && v305 > v334)
              {
                v335 = 0;
                v336 = -(*(v329 + 4 * v334) - *(v331 + 4 * v334));
                if (v318 > 0.0)
                {
                  v336 = (*(v329 + 4 * v334) - *(v331 + 4 * v334));
                }

                v337 = v334;
                v338 = &v560;
                do
                {
                  v339 = *v338;
                  v338 += 5;
                  *&__p[v335] = *&__p[v335] + *(v339 + v330 + 4 * v334);
                  ++v335;
                }

                while (v335 != 3);
                v340 = fmax(v336, 0.000001);
                v327 = v327 + v340 * v337 * v337;
                v326 = v326 + v340 * v337;
                v325 = v325 + v340;
                v323 = v323 + v340 * v332;
                v322 = v322 + v340 * v337 * v332;
                v321 = v321 + v340 * v332 * v332;
                ++v317;
              }
            }
          }

          ++v320;
        }

        while (v320 != 3);
        v341 = 0;
        *&v531[16] = v321;
        v592.f64[1] = v323;
        v592.f64[0] = v326;
        *&v531[8] = v322;
        *v531 = v327;
        do
        {
          v592.f64[v341] = v592.f64[v341] / v325;
          *&v531[v341 * 8] = *&v531[v341 * 8] / v325;
          *&__p[v341] = *&__p[v341] / v317;
          ++v341;
        }

        while (v341 != 3);
        v342 = 0;
        v504 = v592;
        *v582 = v592;
        do
        {
          *&v584[v342 + 1] = *&v526[v342] * 1.1;
          ++v342;
        }

        while (v342 != 3);
        _Q1 = v504;
        __asm { FMLS            D0, D1, V1.D[0] }

        v345 = vmlsq_laneq_f64(*&v531[8], _Q1, _Q1, 1);
        v346 = v345.f64[1];
        if (fabs(v345.f64[0]) >= 1.0e-15)
        {
          v496 = v345.f64[0];
          v350 = sqrt((_D0 * v345.f64[1] - v345.f64[0] * v345.f64[0]) * -4.0 + (_D0 + v345.f64[1]) * (_D0 + v345.f64[1]));
          v351 = (_D0 + v345.f64[1] - v350) * 0.5;
          v346 = (_D0 + v345.f64[1] + v350) * 0.5;
          v352 = _D0 - v351;
          v353 = 1.0 / hypot(_D0 - v351, v345.f64[0]);
          v347 = v353 * v352;
          v348 = v496 * v353;
          v349 = -(v353 * v352);
          _D0 = v351;
        }

        else
        {
          v347 = 0.0;
          v348 = 1.0;
          v349 = 0.0;
        }

        v440 = v269;
        *&v572 = _D0;
        *(&v572 + 1) = v346;
        __dst[1] = *&v348;
        __dst[0] = *&v347;
        v550 = *&v348;
        v551 = v349;
        v354 = *(&v572 + (_D0 >= v346));
        v497 = *(&v572 + (_D0 < v346));
        v583[0] = *&v497;
        v583[1] = v354;
        v584[0] = COERCE_VOID_(atan2(*&__dst[_D0 < v346], *&__dst[_D0 >= v346]));
        v586[0] = *__p;
        *&v586[1] = v575;
        v356 = __sincos_stret(*v584);
        v357 = v354;
        v358 = 0;
        v359 = v309 + 2;
        v360 = -v356.__sinval;
        v439 = v309;
        v483 = v309 - 3;
        v361 = v354;
        do
        {
          v478 = v358;
          v362 = &v448[5 * v358];
          v363 = &v558[5 * v358];
          v364 = 0.0;
          v365 = v450 - 2;
          v366 = 0.0;
          do
          {
            if ((v365 & 0x80000000) == 0 && *(&v305 + 1) > v365)
            {
              v367 = v362[3] + v461 * v365;
              v368 = v363[3] + v488 * v365;
              v369 = v365 - v504.f64[1];
              v370 = v356.__sinval * v369;
              v371 = v356.__cosval * v369;
              v372 = v483;
              do
              {
                v373 = (v372 + 1);
                if (v372 + 1 >= 0 && v305 > v373)
                {
                  v374 = (*(v367 + 4 * v373) - *(v368 + 4 * v373));
                  v375 = exp(((v371 + v360 * (v373 - v504.f64[0])) * (v371 + v360 * (v373 - v504.f64[0])) / *&v357 + (v370 + v356.__cosval * (v373 - v504.f64[0])) * (v370 + v356.__cosval * (v373 - v504.f64[0])) / v497) * -0.5);
                  v357 = v361;
                  v366 = v366 + v375 * v375;
                  v364 = v364 + v375 * v374;
                }

                ++v372;
              }

              while (v372 < v359);
            }

            v225 = v365++ < v450 + 2;
          }

          while (v225);
          *&v584[v478 + 1] = v364 / (v366 + 0.000001);
          v358 = v478 + 1;
        }

        while (v478 != 2);
        v457 = 0;
        v376 = 0;
        v377 = 0;
        v378 = 0;
        v585[1] = 0uLL;
        v379.i64[1] = 0;
        memset(&v586[1] + 8, 0, 32);
        *(&v585[2] + 1) = 0;
        v442 = *(v440 + 6);
        v380 = *v440;
        v463 = *v440;
        __n = *(v440 + 1);
        v467 = *&v357 + 1.0;
        v452 = *(v440 + 4);
        v447 = *v440 - 2;
        v381 = 0.0;
        v382 = 0.0;
        v383 = 0.0;
        do
        {
          if (v442 >= -3)
          {
            v384 = -2;
            do
            {
              v385 = (v384 + __n);
              if (v384 + __n >= 0 && *(&v305 + 1) > v385 && v452 >= -3)
              {
                v386 = v448[5 * v377 + 3] + v461 * v385;
                *v379.i64 = v385 - v504.f64[1];
                v484 = v356.__cosval * *v379.i64;
                v489 = v356.__sinval * *v379.i64;
                *v355.i64 = (v385 - v450);
                v379.i64[0] = 0;
                v379 = vbslq_s8(v446, v379, v355);
                v475 = *v379.i64;
                v479 = *v355.i64;
                v387 = v447 - v439;
                v388 = v447;
                v389 = v452 + 4;
                do
                {
                  if ((v388 & 0x80000000) == 0 && v305 > v388)
                  {
                    v390 = *(v386 + 4 * v388);
                    v391 = v584[v377 + 1];
                    v392 = exp(((v489 + v356.__cosval * (v388 - v504.f64[0])) * (v489 + v356.__cosval * (v388 - v504.f64[0])) / v497 + (v484 + v360 * (v388 - v504.f64[0])) * (v484 + v360 * (v388 - v504.f64[0])) / *&v357) * -0.5) * *&v391;
                    if (v392 > v390 + 0.1)
                    {
                      ++v376;
                      *(&v586[2] + v377) = v392 - v390 + *(&v586[2] + v377);
                      v457 = v376;
                    }

                    v393 = v392 + *(v586 + v377);
                    v394 = (v390 - v393) * (v390 - v393);
                    v383 = v383 + v394;
                    v382 = v382 + vabdd_f64(v390, v393);
                    *&v585[1] = v383;
                    *(&v585[1] + 1) = v382;
                    v381 = v381 + exp(((v475 + v387) * (v475 + v387) / (v497 + 1.0) + (v479 + v387 * -0.0) * (v479 + v387 * -0.0) / v467) * -0.5) * v394;
                    *(&v585[2] + 1) = v381;
                    ++v378;
                    v357 = v361;
                  }

                  ++v387;
                  ++v388;
                  --v389;
                }

                while (v389);
              }

              _ZF = v384++ == v442 + 1;
              v380 = v463;
            }

            while (!_ZF);
          }

          ++v377;
        }

        while (v377 != 3);
        *(&v586[1] + 1) = v457;
        *(&v585[2] + 1) = v381 / v378 + *(&v586[2] + 1) + ((v450 - v504.f64[1]) * (v450 - v504.f64[1]) + (v439 - v504.f64[0]) * (v439 - v504.f64[0])) * 20.0;
        *&v585[1] = v383 / v378;
        *(&v585[1] + 1) = v382 / v378;
        v5 = v499;
        if (v497 < *&v357)
        {
          v583[0] = v357;
        }

        if (v504.f64[0] >= 0.0 && ceil(v504.f64[0]) < v437 && v504.f64[1] >= 0.0 && ceil(v504.f64[1]) < v436 && !v457 && v383 / v378 < 0.005 && v381 / v378 + *(&v586[2] + 1) + ((v450 - v504.f64[1]) * (v450 - v504.f64[1]) + (v439 - v504.f64[0]) * (v439 - v504.f64[0])) * 20.0 < 300.0)
        {
          v395 = *v585 * 0.72 + *&v584[1] * 0.21 + *(v585 + 1) * 0.07;
          _NF = v395 * v395 > 0.0144 && (v504.f64[1] - v450) * (v504.f64[1] - v450) + (v504.f64[0] - v439) * (v504.f64[0] - v439) < 1.0;
          if (_NF)
          {
            v397 = v580.i64[1];
            if (v580.i64[1] >= *&v581)
            {
              v398 = sub_240B8F4E8(&v580);
            }

            else
            {
              sub_240B8F33C(v580.i64[1]);
              v397[20] = 0;
              v397[21] = 0;
              v398 = (v397 + 23);
              v397[22] = 0;
            }

            v580.i64[1] = v398;
            v400 = *(v398 - 16);
            v399 = *(v398 - 8);
            if (v400 >= v399)
            {
              v402 = *(v398 - 24);
              v403 = v400 - v402;
              v404 = (v400 - v402) >> 3;
              v405 = v404 + 1;
              if ((v404 + 1) >> 61)
              {
                sub_240B228BC();
              }

              v406 = v399 - v402;
              if (v406 >> 2 > v405)
              {
                v405 = v406 >> 2;
              }

              if (v406 >= 0x7FFFFFFFFFFFFFF8)
              {
                v407 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v407 = v405;
              }

              if (v407)
              {
                sub_240B299F4(v407);
              }

              v408 = v404;
              v409 = (8 * v404);
              *v409 = v380;
              v409[1] = __n;
              v401 = 8 * v404 + 8;
              v498 = &v409[-2 * v408];
              memcpy(v498, v402, v403);
              v410 = *(v398 - 24);
              *(v398 - 24) = v498;
              *(v398 - 16) = v401;
              *(v398 - 8) = 0;
              if (v410)
              {
                operator delete(v410);
              }
            }

            else
            {
              *v400 = v380;
              *(v400 + 1) = __n;
              v401 = (v400 + 8);
            }

            *(v398 - 16) = v401;
            v411 = v580.i64[1];
            v412 = *(v440 + 2);
            *(v580.i64[1] - 184) = v412;
            v413 = *(v440 + 3);
            *(v411 - 176) = v413;
            if (v413)
            {
              v414 = 0;
              v415 = v448[2];
              v416 = v559;
              v417 = (v411 - 96);
              do
              {
                if (v412)
                {
                  for (mm = 0; mm != v412; ++mm)
                  {
                    v419 = 0;
                    v420 = v417;
                    do
                    {
                      v421 = *v420;
                      v420 += 3;
                      *(v421 + 4 * v414 * v412 + 4 * mm) = *(v448[v419 + 3] + v415 * (v414 + __n) + 4 * v380 + 4 * mm) - *(*(&v560 + v419 * 8) + v416 * (v414 + __n) + 4 * v380 + 4 * mm);
                      v419 += 5;
                    }

                    while (v419 != 15);
                  }
                }

                ++v414;
              }

              while (v414 != v413);
            }
          }
        }

        v269 = v440 + 88;
      }

      while (v440 + 88 != v438);
    }

    v538 = 0;
    v536 = v580;
    v537 = v581;
    v580 = 0uLL;
    v581 = 0;
    sub_240B8E378(&v578);
    if (!v588)
    {
      sub_240B8E378(v587);
    }

    goto LABEL_599;
  }

LABEL_31:
  if (v24 == v26)
  {
    v23 = 0;
    goto LABEL_326;
  }

  sub_240BBD58C(v24, v26, 126 - 2 * __clz(0xD37A6F4DE9BD37A7 * (&v26[-v24] >> 3)), 1);
  v27 = 0xD37A6F4DE9BD37A7 * ((*&v577[8] - *v577) >> 3);
  if (*&v577[8] == *v577)
  {
    v35 = 0.0;
    v36 = 0.0;
    v37 = 0.0;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    if (v27 <= 1)
    {
      v31 = 1;
    }

    else
    {
      v31 = 0xD37A6F4DE9BD37A7 * ((*&v577[8] - *v577) >> 3);
    }

    v32 = (*v577 + 8);
    do
    {
      v33 = *(v32 - 1);
      v34 = *v32;
      if (v28 <= v33)
      {
        v28 = *(v32 - 1);
      }

      if (v29 <= v34)
      {
        v29 = *v32;
      }

      v30 += v34 * v33;
      v32 += 23;
      --v31;
    }

    while (v31);
    v35 = v29;
    v36 = v30;
    v37 = v28;
  }

  sub_240BBE0C0(__p, v27);
  v39 = sqrt(v36);
  if (v35 >= v39)
  {
    v40 = v35;
  }

  else
  {
    v40 = v39;
  }

  if (v37 >= v39)
  {
    v39 = v37;
  }

  v41 = v39;
  v42 = v40;
  do
  {
    v41 = ((v41 * 1.05) + 1.0);
    v493 = ((v42 * 1.05) + 1.0);
    sub_240B22220(v582, v41, v493);
    v23 = LODWORD(v584[1]);
    if (LODWORD(v584[1]))
    {
      goto LABEL_146;
    }

    v43 = LODWORD(v582[0]);
    v44 = HIDWORD(v582[0]);
    v45 = v583[0];
    v46 = v583[1];
    v583[1] = 0;
    if (LODWORD(v582[0]) && HIDWORD(v582[0]))
    {
      v47 = v46;
      do
      {
        bzero(v47, v43);
        v47 = v45 + v47;
        --v44;
      }

      while (v44);
    }

    v48 = *&v577[8];
    v49 = *v577;
    if (*&v577[8] == *v577)
    {
      LODWORD(v51) = 0;
      v69 = 9;
      v42 = v493;
      if (v46)
      {
        goto LABEL_98;
      }
    }

    else
    {
      v50 = 0;
      v51 = 0;
      v42 = v493;
LABEL_61:
      v52 = (v49 + 184 * v50);
      v53 = v52[1];
      if (v53 > v42)
      {
        v69 = 0;
LABEL_97:
        v5 = v499;
        if (v46)
        {
LABEL_98:
          atomic_fetch_add(&qword_27E519020, -*(v46 - 3));
          free(*(v46 - 4));
          if (LODWORD(v584[1]))
          {
            continue;
          }
        }
      }

      else
      {
        v501 = v51;
        v54 = 0;
        v55 = *v52;
        v56 = v46;
        v57 = v53;
        do
        {
          if (v55 <= v41)
          {
            v58 = 0;
            v59 = v54 + v53;
            v60 = v55;
            while (2)
            {
              if (v54 >= v59)
              {
                v66 = __p[0] + 16 * v50;
                *v66 = 0;
                v66[1] = v54;
LABEL_88:
                v51 = v501;
                if (v501 <= v59)
                {
                  v51 = v59;
                }

                if (++v50 >= 0xD37A6F4DE9BD37A7 * ((v48 - v49) >> 3))
                {
                  v69 = 9;
                  goto LABEL_97;
                }

                goto LABEL_61;
              }

              v61 = 0;
              if (v60 <= v58)
              {
                v62 = v58;
              }

              else
              {
                v62 = v60;
              }

              v63 = v54;
              while (2)
              {
                v64 = &v46[v45 * v63];
                while (1)
                {
                  v65 = v58;
                  if (v58 < v60)
                  {
                    break;
                  }

LABEL_74:
                  ++v63;
                  v64 = v45 + v64;
                  if (v63 == v57)
                  {
                    v65 = v62;
                    if ((v61 & 1) == 0)
                    {
                      v67 = (__p[0] + 16 * v50);
                      *v67 = v58;
                      v67[1] = v54;
                      v68 = &v56[v58];
                      do
                      {
                        if (v58 < v58 + v55)
                        {
                          memset(v68, 1, v55);
                        }

                        v68 = v45 + v68;
                        --v53;
                      }

                      while (v53);
                      v48 = *&v577[8];
                      v49 = *v577;
                      v42 = v493;
                      goto LABEL_88;
                    }

                    goto LABEL_79;
                  }
                }

                while (!v64[v65])
                {
                  if (v60 == ++v65)
                  {
                    goto LABEL_74;
                  }
                }

                ++v63;
                v61 = 1;
                if (v63 != v57)
                {
                  continue;
                }

                break;
              }

LABEL_79:
              v58 = v65 + 1;
              v60 = v65 + 1 + v55;
              if (v60 <= v41)
              {
                continue;
              }

              break;
            }
          }

          ++v54;
          ++v57;
          v56 = v45 + v56;
        }

        while (v54 + v53 <= v42);
        v69 = 0;
        v5 = v499;
        LODWORD(v51) = v501;
        if (v46)
        {
          goto LABEL_98;
        }
      }
    }

    v70 = v583[1];
    v583[1] = 0;
    if (v70)
    {
      atomic_fetch_add(&qword_27E519020, -*(v70 - 3));
      free(*(v70 - 4));
    }
  }

  while (!v69);
  sub_240B2A11C(v531, v41, v51);
  v23 = v535;
  if (v535)
  {
    goto LABEL_146;
  }

  sub_240B2A358(v526, v531);
  sub_240B731F0(v526);
  v537 = 0;
  v536 = 0u;
  v580.i64[0] = *(&v527 + 1);
  v580.i64[1] = v529;
  v581 = v530;
  v71 = *v577;
  if (*&v577[8] == *v577)
  {
    v502 = 0uLL;
    v485 = 0uLL;
  }

  else
  {
    v72 = 0;
    v73 = 0;
    v74 = v527 >> 2;
    v491 = *(*v5 + 320);
    v75 = 88;
    v502 = 0uLL;
    v485 = 0uLL;
    v465 = v527 >> 2;
    do
    {
      v76 = (v71 + 184 * v73);
      v78 = *v76;
      v77 = v76[1];
      v471 = v73;
      v476 = *(__p[0] + v73);
      if (v77)
      {
        v79 = 0;
        v80 = (v71 + v75);
        do
        {
          if (v78)
          {
            for (nn = 0; nn != v78; ++nn)
            {
              v82 = 0;
              v83 = v80;
              do
              {
                v84 = *v83;
                v83 += 3;
                *(v580.i64[v82++] + 4 * (v79 + *(&v476 + 1)) * v74 + 4 * nn + 4 * v476) = *(v84 + 4 * v79 * v78 + 4 * nn);
              }

              while (v82 != 3);
            }
          }

          ++v79;
        }

        while (v79 != v77);
      }

      v473 = v77;
      v480 = v72;
      v469 = v75;
      v86 = v76[20];
      v85 = v76[21];
      if (v86 != v85)
      {
        v480 = *(&v485 + 1);
        do
        {
          v87 = v86[1];
          v88 = *(&v502 + 1) - v502;
          v89 = 0xAAAAAAAAAAAAAAABLL * ((*(&v502 + 1) - v502) >> 3) + 1;
          if (v89 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_240B228BC();
          }

          if (0x5555555555555556 * (-v502 >> 3) > v89)
          {
            v89 = 0x5555555555555556 * (-v502 >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * (-v502 >> 3) >= 0x555555555555555)
          {
            v90 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v90 = v89;
          }

          if (v90)
          {
            sub_240B45E44(v90);
          }

          v91 = (8 * ((*(&v502 + 1) - v502) >> 3));
          *v91 = *v86;
          v91[1] = v87;
          v91[2] = 0xCCCCCCCCCCCCCCCDLL * ((*(&v485 + 1) - v485) >> 3);
          v92 = &v91[3 * (v88 / -24)];
          memcpy(v92, v502, v88);
          if (v502)
          {
            operator delete(v502);
          }

          *&v93 = v92;
          *(&v93 + 1) = 8 * ((*(&v502 + 1) - v502) >> 3) + 24;
          v502 = v93;
          LOBYTE(v582[0]) = 2;
          HIDWORD(v582[0]) = 0;
          LOBYTE(v582[1]) = 0;
          sub_240BBE150(&v536, v582);
          v94 = v491;
          if (v491)
          {
            do
            {
              LOBYTE(v582[0]) = 0;
              HIDWORD(v582[0]) = 0;
              LOBYTE(v582[1]) = 0;
              sub_240BBE150(&v536, v582);
              --v94;
            }

            while (v94);
          }

          v86 += 2;
        }

        while (v86 != v85);
        v5 = v499;
      }

      v95 = v480 - v485;
      v96 = 0xCCCCCCCCCCCCCCCDLL * ((v480 - v485) >> 3) + 1;
      if (v96 > 0x666666666666666)
      {
        sub_240B228BC();
      }

      if (0x999999999999999ALL * (-v485 >> 3) > v96)
      {
        v96 = 0x999999999999999ALL * (-v485 >> 3);
      }

      if (0xCCCCCCCCCCCCCCCDLL * (-v485 >> 3) >= 0x333333333333333)
      {
        v97 = 0x666666666666666;
      }

      else
      {
        v97 = v96;
      }

      if (v97)
      {
        sub_240B49380(v97);
      }

      v98 = 8 * ((v480 - v485) >> 3);
      *v98 = 3;
      *(v98 + 8) = v476;
      *(v98 + 24) = v78;
      *(v98 + 32) = v473;
      v72 = v98 + 40;
      v99 = (v98 + 40 * (v95 / -40));
      memcpy(v99, v485, v95);
      if (v485)
      {
        operator delete(v485);
      }

      v74 = v465;
      *&v100 = v99;
      *(&v100 + 1) = 8 * ((v480 - v485) >> 3) + 40;
      v485 = v100;
      v73 = v471 + 1;
      v71 = *v577;
      v75 = v469 + 184;
    }

    while (v471 + 1 < 0xD37A6F4DE9BD37A7 * ((*&v577[8] - *v577) >> 3));
  }

  sub_240B86714(&v511, v444);
  v519 = 0;
  v558[1] = 0;
  LOWORD(v559) = 1;
  v562 = 1;
  v563 = -1;
  v564 = 0;
  v565 = 0;
  v566 = 2;
  v568 = 0;
  v567 = 0;
  v569 = 0;
  v570 = 0u;
  memset(v571, 0, 32);
  v525 = 0x100000001;
  v518 = 0;
  v517 = 0;
  v516 = 1;
  v524 = 0;
  v520 = 0;
  v521[2] = 0;
  v523 = 5;
  v561 = 1;
  v560 = 3;
  HIDWORD(v558[0]) = 2;
  LOWORD(v558[0]) = 257;
  v151 = *v5;
  sub_240B309B8(&v592, *v5);
  BYTE1(v558[0]) = 0;
  sub_240B598DC(&v592, v526, v151 + 48);
  v152 = *(v599 + 328);
  v153 = *(v599 + 336);
  if (v152 == v153)
  {
LABEL_256:
    operator new();
  }

  memset(v587, 0, sizeof(v587));
  sub_240B86B24(v587, 0xAAAAAAAAAAAAAAABLL * ((v153 - v152) >> 5));
  if (*(v599 + 336) == *(v599 + 328))
  {
LABEL_255:
    sub_240B30E18(&v605);
    v605 = *v587;
    v606 = v587[2];
    memset(v587, 0, sizeof(v587));
    v582[0] = v587;
    sub_240B30C38(v582);
    goto LABEL_256;
  }

  v154 = 0;
  while (1)
  {
    v155 = v600;
    if (!v600)
    {
      if (v605 == *(&v605 + 1))
      {
        v155 = 0;
      }

      else
      {
        v155 = *v605;
      }
    }

    v156 = v601;
    if (!v601)
    {
      if (v605 == *(&v605 + 1))
      {
        v156 = 0;
      }

      else
      {
        v156 = *(v605 + 4);
      }
    }

    sub_240B23590(v582, v155, v156);
    v23 = LODWORD(v584[1]);
    if (LODWORD(v584[1]))
    {
      break;
    }

    v157 = v583[1];
    v158 = v584[0];
    v583[1] = 0;
    v159 = v587[1];
    if (v587[1] >= v587[2])
    {
      v161 = 0xCCCCCCCCCCCCCCCDLL * ((v587[1] - v587[0]) >> 3);
      v162 = v161 + 1;
      if (v161 + 1 > 0x666666666666666)
      {
        sub_240B228BC();
      }

      if (0x999999999999999ALL * ((v587[2] - v587[0]) >> 3) > v162)
      {
        v162 = 0x999999999999999ALL * ((v587[2] - v587[0]) >> 3);
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((v587[2] - v587[0]) >> 3) >= 0x333333333333333)
      {
        v163 = 0x666666666666666;
      }

      else
      {
        v163 = v162;
      }

      v553 = v587;
      if (v163)
      {
        sub_240B59980(v163);
      }

      v164 = 8 * ((v587[1] - v587[0]) >> 3);
      v550 = 0;
      v551 = *&v164;
      __dst[1] = 0;
      *v164 = *v582;
      *(v164 + 16) = v583[0];
      *(v164 + 24) = v157;
      *(v164 + 32) = v158;
      __dst[0] = (40 * v161 + 40);
      v165 = 40 * v161 + v587[0] - v587[1];
      sub_240B59A2C(v587[0], v587[1], v165);
      v166 = v587[0];
      v167 = v587[2];
      v587[0] = v165;
      v492 = __dst[0];
      *&v587[1] = *__dst;
      __dst[0] = v166;
      __dst[1] = v167;
      v551 = *&v166;
      v550 = v166;
      sub_240B599D8(&v550);
      v160 = v492;
    }

    else
    {
      *v587[1] = *v582;
      *(v159 + 16) = v583[0];
      *(v159 + 24) = v157;
      *(v159 + 32) = v158;
      v160 = v159 + 40;
    }

    v587[1] = v160;
    if (*(v160 - 40) && *(v160 - 36))
    {
      v168 = 0;
      do
      {
        bzero((*(v160 - 16) + *(v160 - 24) * v168++), 4 * *(v160 - 40));
      }

      while (v168 < *(v160 - 36));
    }

    if (!LODWORD(v584[1]))
    {
      v169 = v583[1];
      v583[1] = 0;
      if (v169)
      {
        atomic_fetch_add(&qword_27E519020, -*(v169 - 3));
        free(*(v169 - 4));
      }
    }

    if (++v154 >= 0xAAAAAAAAAAAAAAABLL * ((*(v599 + 336) - *(v599 + 328)) >> 5))
    {
      goto LABEL_255;
    }
  }

  v582[0] = v587;
  sub_240B30C38(v582);
  v582[0] = &v605;
  sub_240B30C38(v582);
  v602 = &unk_2852A1CB8;
  if (v603)
  {
    v604 = v603;
    operator delete(v603);
  }

  for (i1 = 200; i1 != 80; i1 -= 40)
  {
    sub_240B22320((&v592 + i1));
  }

  if (v598 < 0)
  {
    operator delete(v597);
  }

  v171 = v592.f64[0];
  v592.f64[0] = 0.0;
  if (v171 != 0.0)
  {
    (*(**&v171 + 8))(COERCE_FLOAT64_T(*&v171));
  }

  v582[0] = &v571[8];
  sub_240B37840(v582);
  if ((v571[7] & 0x80000000) != 0)
  {
    operator delete(v570);
  }

  if (v23)
  {
    v172 = v536.i64[0];
    sub_240B7BB60(&v511);
    if (v172)
    {
      operator delete(v172);
    }

    v173 = v485;
  }

  else
  {
    *v509 = v502;
    v510 = 0;
    *v507 = v485;
    v508 = 0;
    *v505 = v536;
    v506 = v537;
    v536 = 0uLL;
    v537 = 0;
    sub_240BBE254(v499 + 157, v509, v507, v505);
    if (v505[0])
    {
      v505[1] = v505[0];
      operator delete(v505[0]);
    }

    if (v507[0])
    {
      v507[1] = v507[0];
      operator delete(v507[0]);
    }

    if (v509[0])
    {
      v509[1] = v509[0];
      operator delete(v509[0]);
    }

    sub_240B7BB60(&v511);
    v173 = 0;
    *&v502 = 0;
  }

  if (v173)
  {
    operator delete(v173);
  }

  if (v502)
  {
    operator delete(v502);
  }

  for (i2 = 13; i2 != -2; i2 -= 5)
  {
    sub_240B22320(&v526[i2]);
  }

  if (!v535)
  {
    v175 = &v534;
    v176 = -120;
    do
    {
      sub_240B22320(v175);
      v175 -= 5;
      v176 += 40;
    }

    while (v176);
  }

LABEL_146:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

LABEL_326:
  v582[0] = v577;
  sub_240B8F628(v582);
  if (!v540)
  {
    v582[0] = v539;
    sub_240B8F628(v582);
  }

LABEL_328:
  v194 = *MEMORY[0x277D85DE8];
  return v23;
}

void sub_240BBC638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  __cxa_guard_abort(&qword_27E519000);
  if (STACK[0x490])
  {
    operator delete(STACK[0x490]);
  }

  sub_240B8E378(&STACK[0x510]);
  if (v18)
  {
    atomic_fetch_add(&qword_27E519020, -*(v18 - 24));
    free(*(v18 - 32));
  }

  if (!LODWORD(STACK[0x668]))
  {
    v20 = STACK[0x658];
    STACK[0x658] = 0;
    if (v20)
    {
      atomic_fetch_add(&qword_27E519020, -*(v20 - 24));
      free(*(v20 - 32));
    }
  }

  if (a18)
  {
    atomic_fetch_add(&qword_27E519020, -*(a18 - 24));
    free(*(a18 - 32));
  }

  for (i = 104; i != -16; i -= 40)
  {
    sub_240B22320((&STACK[0x900] + i));
  }

  if (!LODWORD(STACK[0x288]))
  {
    v22 = &STACK[0x278];
    v23 = -120;
    do
    {
      sub_240B22320(v22);
      v22 -= 5;
      v23 += 40;
    }

    while (v23);
  }

  STACK[0x210] = &STACK[0xA30];
  sub_240B8F628(&STACK[0x210]);
  STACK[0x210] = &STACK[0x9E0];
  sub_240B8F628(&STACK[0x210]);
  if (!LODWORD(STACK[0x5C8]))
  {
    STACK[0x210] = &STACK[0x5B0];
    sub_240B8F628(&STACK[0x210]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240BBCD18(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a2;
    v5[0] = sub_240B2AC64;
    v5[1] = a3;
    if (*result)
    {
      return (*result)(*(result + 8), v5, sub_240BC0308, sub_240BC00EC, 0, a2);
    }

    else
    {
      for (i = 0; i != v3; ++i)
      {
        result = sub_240BC00EC(v5, i);
      }
    }
  }

  return result;
}

void sub_240BBCDB4(void *a1, void *a2)
{
  v2 = 126 - 2 * __clz(0xD37A6F4DE9BD37A7 * (a2 - a1));
  if (a2 == a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  sub_240BBEDFC(a1, a2, v3, 1);
}

void sub_240BBCDEC(uint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = 0xD37A6F4DE9BD37A7 * ((v3 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v10 = (v4 + 184 * a2);
      while (v3 != v10)
      {
        v3 -= 23;
        sub_240B8F6A4(v3);
      }

      a1[1] = v10;
    }
  }

  else
  {
    v7 = a1[2];
    if (0xD37A6F4DE9BD37A7 * ((v7 - v3) >> 3) < v6)
    {
      if (a2 <= 0x1642C8590B21642)
      {
        v8 = 0xA6F4DE9BD37A6F4ELL * ((v7 - v4) >> 3);
        if (v8 <= a2)
        {
          v8 = a2;
        }

        if (0xD37A6F4DE9BD37A7 * ((v7 - v4) >> 3) >= 0xB21642C8590B21)
        {
          v9 = 0x1642C8590B21642;
        }

        else
        {
          v9 = v8;
        }

        sub_240B8F724(v9);
      }

      sub_240B228BC();
    }

    v11 = &v3[23 * v6];
    v12 = 184 * a2 - 8 * ((v3 - *a1) >> 3);
    do
    {
      sub_240B8F33C(v3);
      v3[20] = 0;
      v3[21] = 0;
      v3[22] = 0;
      v3 += 23;
      v12 -= 184;
    }

    while (v12);
    a1[1] = v11;
  }
}

void sub_240BBCFA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_240B8F870(va);
  _Unwind_Resume(a1);
}

BOOL sub_240BBCFC4(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = a1[1];
  if (v4 != a2[1])
  {
    return 0;
  }

  v5 = v4 * *a1;
  v6 = 2;
  do
  {
    v7 = memcmp(a1[v6], a2[v6], v5);
    result = v7 == 0;
    if (v7)
    {
      break;
    }

    v9 = v6 == 8;
    v6 += 3;
  }

  while (!v9);
  return result;
}

double sub_240BBD05C(void *a1, double *a2, double *a3, double *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v6 = a3;
    v7 = a2;
    v9 = a1[1];
    v10 = a1[2];
    if (a5 <= (v10 - v9) >> 3)
    {
      v16 = v9 - a2;
      if (v16 >= a5)
      {
        v19 = &a2[a5];
        v20 = &v9[-a5];
        v21 = a1[1];
        while (v20 < v9)
        {
          v22 = *v20++;
          *v21++ = v22;
        }

        a1[1] = v21;
        if (v9 != v19)
        {
          v23 = v19 - v9;
          v24 = v9 - 1;
          v25 = &v24[-2 * a5];
          do
          {
            *(v24 - 1) = *(v25 - 1);
            v26 = *v25;
            v25 -= 2;
            *v24 = v26;
            v24 -= 2;
            v23 += 8;
          }

          while (v23);
        }

        do
        {
          v27 = *v6++;
          result = v27;
          *v7++ = v27;
        }

        while (v6 != &a3[a5]);
      }

      else
      {
        v17 = (a3 + v9 - a2);
        if (v17 == a4)
        {
          v18 = a1[1];
        }

        else
        {
          v38 = (a3 + v9 - a2);
          v18 = a1[1];
          do
          {
            v39 = *v38++;
            *v18 = v39;
            v18 += 8;
          }

          while (v38 != a4);
        }

        a1[1] = v18;
        if (v16 >= 1)
        {
          v40 = &a2[a5];
          v41 = &v18[-8 * a5];
          v42 = v18;
          while (v41 < v9)
          {
            v43 = *v41++;
            *v42 = v43;
            v42 += 8;
          }

          a1[1] = v42;
          if (v18 != v40)
          {
            v44 = v40 - v18;
            v45 = v18 - 4;
            v46 = &v45[-8 * a5];
            do
            {
              *(v45 - 1) = *(v46 - 1);
              v47 = *v46;
              v46 -= 2;
              *v45 = v47;
              v45 -= 8;
              v44 += 8;
            }

            while (v44);
          }

          if (v9 != a2)
          {
            do
            {
              v48 = *v6++;
              result = v48;
              *v7++ = v48;
            }

            while (v6 != v17);
          }
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + ((v9 - *a1) >> 3);
      if (v12 >> 61)
      {
        sub_240B228BC();
      }

      v13 = v10 - v11;
      if (v13 >> 2 > v12)
      {
        v12 = v13 >> 2;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      v15 = (a2 - v11) >> 3;
      if (v14)
      {
        sub_240B299F4(v14);
      }

      v29 = 8 * v15;
      v30 = 8 * a5;
      v31 = (8 * v15);
      do
      {
        v32 = *v6++;
        *v31++ = v32;
        v30 -= 8;
      }

      while (v30);
      memcpy((v29 + 8 * a5), a2, a1[1] - a2);
      v33 = *a1;
      v34 = v29 + 8 * a5 + a1[1] - v7;
      a1[1] = v7;
      v35 = v7 - v33;
      v36 = (v29 - (v7 - v33));
      memcpy(v36, v33, v35);
      v37 = *a1;
      *a1 = v36;
      a1[1] = v34;
      a1[2] = 0;
      if (v37)
      {

        operator delete(v37);
      }
    }
  }

  return result;
}

uint64_t sub_240BBD2A4(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  *a1 = *a2;
  v31 = a2 + 24;
  do
  {
    if (a1 != a2)
    {
      v5 = a1 + v4;
      v6 = *(a1 + v4 + 16);
      v7 = *(v31 + v4 - 8);
      v8 = *(v31 + v4);
      v9 = v8 - v7;
      if (*(a1 + v4 + 32) - v6 < (v8 - v7))
      {
        if (v6)
        {
          *(a1 + v4 + 24) = v6;
          operator delete(v6);
          *(a1 + v4 + 16) = 0;
          *(a1 + v4 + 24) = 0;
          *(a1 + v4 + 32) = 0;
        }

        if ((v9 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_240B228BC();
      }

      v10 = *(v5 + 24);
      v11 = v10 - v6;
      if (v10 - v6 >= v9)
      {
        if (v8 != v7)
        {
          memmove(*(a1 + v4 + 16), *(v31 + v4 - 8), v8 - v7);
        }

        v14 = &v6[v9];
      }

      else
      {
        if (v10 != v6)
        {
          memmove(*(a1 + v4 + 16), *(v31 + v4 - 8), v10 - v6);
          v10 = *(v5 + 24);
        }

        v12 = (v7 + v11);
        v13 = v8 - (v7 + v11);
        if (v13)
        {
          memmove(v10, v12, v13);
        }

        v14 = &v10[v13];
      }

      *(v5 + 24) = v14;
    }

    v4 += 24;
  }

  while (v4 != 72);
  for (i = 0; i != 3; ++i)
  {
    while (a1 == a2)
    {
      if (++i == 3)
      {
        return a1;
      }
    }

    sub_240B343B0((a1 + 88 + 24 * i), *(a2 + 88 + 24 * i), *(a2 + 88 + 24 * i + 8), (*(a2 + 88 + 24 * i + 8) - *(a2 + 88 + 24 * i)) >> 2);
  }

  v16 = *(a1 + 160);
  v18 = *(a2 + 160);
  v17 = *(a2 + 168);
  v19 = v17 - v18;
  v20 = *(a1 + 176);
  if (v20 - v16 < (v17 - v18))
  {
    v21 = v19 >> 3;
    if (v16)
    {
      *(a1 + 168) = v16;
      operator delete(v16);
      v20 = 0;
      *(a1 + 160) = 0;
      *(a1 + 168) = 0;
      *(a1 + 176) = 0;
    }

    if (!(v21 >> 61))
    {
      v22 = v20 >> 2;
      if (v20 >> 2 <= v21)
      {
        v22 = v21;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFF8)
      {
        v23 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v22;
      }

      if (!(v23 >> 61))
      {
        sub_240B299F4(v23);
      }
    }

    sub_240B228BC();
  }

  v24 = *(a1 + 168);
  v25 = v24 - v16;
  if (v24 - v16 >= v19)
  {
    while (v18 != v17)
    {
      v28 = *v18;
      v18 += 8;
      *v16 = v28;
      v16 += 8;
    }

    *(a1 + 168) = v16;
  }

  else
  {
    v26 = &v18[v25];
    if (v24 != v16)
    {
      do
      {
        v27 = *v18;
        v18 += 8;
        *v16 = v27;
        v16 += 8;
        v25 -= 8;
      }

      while (v25);
    }

    while (v26 != v17)
    {
      v29 = *v26;
      v26 += 8;
      *v24 = v29;
      v24 += 8;
    }

    *(a1 + 168) = v24;
  }

  return a1;
}

void sub_240BBD58C(uint64_t a1, char *a2, uint64_t a3, char a4)
{
  while (2)
  {
    v7 = a2;
    v8 = a2 - 184;
    v9 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v9;
          v10 = v7 - v9;
          v11 = 0xD37A6F4DE9BD37A7 * ((v7 - v9) >> 3);
          v12 = v11 - 2;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:
                sub_240BBE56C(a1, a1 + 184, v8);
                return;
              case 4:
                sub_240BBE728(a1, a1 + 184, a1 + 368, v8);
                return;
              case 5:
                sub_240BBE85C(a1, a1 + 184, a1 + 368, a1 + 552, v8);
                return;
            }
          }

          else
          {
            if (v11 < 2)
            {
              return;
            }

            v7 = a2;
            if (v11 == 2)
            {
              if (*(a2 - 22) * *(a2 - 23) > *(a1 + 8) * *a1)
              {
                sub_240BBE340(a1, v8);
                v61 = *(a1 + 160);
                *(a1 + 160) = *(a2 - 3);
                *(a2 - 3) = v61;
                v62 = *(a1 + 168);
                *(a1 + 168) = *(a2 - 2);
                *(a2 - 2) = v62;
                v63 = *(a1 + 176);
                *(a1 + 176) = *(a2 - 1);
                *(a2 - 1) = v63;
              }

              return;
            }
          }

          if (v10 <= 4415)
          {
            if (a4)
            {
              if (a1 != v7)
              {
                v64 = a1 + 184;
                if ((a1 + 184) != a2)
                {
                  v65 = 0;
                  v66 = a1;
                  do
                  {
                    v67 = v66[23];
                    v68 = v66[24];
                    v69 = *v66;
                    v70 = v66[1];
                    v66 = v64;
                    if (v68 * v67 > (v70 * v69))
                    {
                      sub_240BBE9F0(&v123, v64);
                      v71 = v65;
                      while (1)
                      {
                        sub_240BBEA8C(a1 + v71 + 184, a1 + v71);
                        if (!v71)
                        {
                          break;
                        }

                        v72 = *(a1 + v71 - 176) * *(a1 + v71 - 184);
                        v71 -= 184;
                        if (v124 * v123 <= v72)
                        {
                          v73 = a1 + v71 + 184;
                          goto LABEL_92;
                        }
                      }

                      v73 = a1;
LABEL_92:
                      sub_240BBEA8C(v73, &v123);
                      if (__p)
                      {
                        v127 = __p;
                        operator delete(__p);
                      }

                      for (i = 0; i != -72; i -= 24)
                      {
                        v75 = *&v125[i + 72];
                        if (v75)
                        {
                          *&v125[i + 80] = v75;
                          operator delete(v75);
                        }
                      }

                      for (j = 0; j != -72; j -= 24)
                      {
                        v77 = *&v125[j];
                        if (v77)
                        {
                          *&v125[j + 8] = v77;
                          operator delete(v77);
                        }
                      }
                    }

                    v64 = (v66 + 23);
                    v65 += 184;
                  }

                  while (v66 + 23 != a2);
                }
              }
            }

            else if (a1 != v7)
            {
              v111 = a1 + 184;
              if ((a1 + 184) != a2)
              {
                do
                {
                  v112 = v111;
                  if (*(a1 + 192) * *(a1 + 184) > *(a1 + 8) * *a1)
                  {
                    sub_240BBE9F0(&v123, v111);
                    do
                    {
                      v113 = a1;
                      sub_240BBEA8C(a1 + 184, a1);
                      v114 = *(a1 - 184);
                      a1 -= 184;
                    }

                    while (v124 * v123 > (*(v113 - 176) * v114));
                    sub_240BBEA8C(v113, &v123);
                    if (__p)
                    {
                      v127 = __p;
                      operator delete(__p);
                    }

                    for (k = 0; k != -72; k -= 24)
                    {
                      v116 = *&v125[k + 72];
                      if (v116)
                      {
                        *&v125[k + 80] = v116;
                        operator delete(v116);
                      }
                    }

                    for (m = 0; m != -72; m -= 24)
                    {
                      v118 = *&v125[m];
                      if (v118)
                      {
                        *&v125[m + 8] = v118;
                        operator delete(v118);
                      }
                    }
                  }

                  v111 = v112 + 184;
                  a1 = v112;
                }

                while ((v112 + 184) != a2);
              }
            }

            return;
          }

          if (!a3)
          {
            if (a1 != v7)
            {
              v78 = v12 >> 1;
              v79 = v12 >> 1;
              do
              {
                v80 = v79;
                if (v78 >= v79)
                {
                  v81 = (2 * v79) | 1;
                  v82 = (a1 + 184 * v81);
                  if (2 * v79 + 2 >= v11)
                  {
                    v83 = *v82;
                  }

                  else
                  {
                    v83 = *v82;
                    if (v82[1] * *v82 > (v82[24] * v82[23]))
                    {
                      v83 = v82[23];
                      v82 += 23;
                      v81 = 2 * v80 + 2;
                    }
                  }

                  v84 = (a1 + 184 * v80);
                  if ((v82[1] * v83) <= v84[1] * *v84)
                  {
                    sub_240BBE9F0(&v123, a1 + 184 * v80);
                    do
                    {
                      v85 = v82;
                      sub_240BBEA8C(v84, v82);
                      if (v78 < v81)
                      {
                        break;
                      }

                      v82 = (a1 + 184 * ((2 * v81) | 1));
                      if (2 * v81 + 2 >= v11)
                      {
                        v86 = *v82;
                        v81 = (2 * v81) | 1;
                      }

                      else
                      {
                        v86 = *v82;
                        if (v82[1] * *v82 <= (v82[24] * v82[23]))
                        {
                          v81 = (2 * v81) | 1;
                        }

                        else
                        {
                          v86 = v82[23];
                          v82 += 23;
                          v81 = 2 * v81 + 2;
                        }
                      }

                      v84 = v85;
                    }

                    while (v82[1] * v86 <= (v124 * v123));
                    sub_240BBEA8C(v85, &v123);
                    if (__p)
                    {
                      v127 = __p;
                      operator delete(__p);
                    }

                    for (n = 0; n != -72; n -= 24)
                    {
                      v88 = *&v125[n + 72];
                      if (v88)
                      {
                        *&v125[n + 80] = v88;
                        operator delete(v88);
                      }
                    }

                    for (ii = 0; ii != -72; ii -= 24)
                    {
                      v90 = *&v125[ii];
                      if (v90)
                      {
                        *&v125[ii + 8] = v90;
                        operator delete(v90);
                      }
                    }
                  }
                }

                v79 = v80 - 1;
              }

              while (v80);
              v91 = 0xD37A6F4DE9BD37A7 * (v10 >> 3);
              do
              {
                sub_240BBE9F0(v120, a1);
                v92 = 0;
                v93 = a1;
                do
                {
                  v94 = (v93 + 184 * v92);
                  v95 = (v94 + 23);
                  if (2 * v92 + 2 >= v91)
                  {
                    v92 = (2 * v92) | 1;
                  }

                  else if (v94[24] * v94[23] <= v94[47] * v94[46])
                  {
                    v92 = (2 * v92) | 1;
                  }

                  else
                  {
                    v95 = (v94 + 46);
                    v92 = 2 * v92 + 2;
                  }

                  sub_240BBEA8C(v93, v95);
                  v93 = v95;
                }

                while (v92 <= ((v91 - 2) >> 1));
                v96 = (a2 - 184);
                v97 = v95 == a2 - 184;
                a2 -= 184;
                if (v97)
                {
                  sub_240BBEA8C(v95, v120);
                }

                else
                {
                  sub_240BBEA8C(v95, v96);
                  sub_240BBEA8C(v96, v120);
                  v98 = &v95[-a1 + 184];
                  if (v98 >= 185)
                  {
                    v99 = (-2 - 0x2C8590B21642C859 * (v98 >> 3)) >> 1;
                    v100 = (a1 + 184 * v99);
                    if (v100[1] * *v100 > *(v95 + 1) * *v95)
                    {
                      sub_240BBE9F0(&v123, v95);
                      do
                      {
                        v101 = v100;
                        sub_240BBEA8C(v95, v100);
                        if (!v99)
                        {
                          break;
                        }

                        v99 = (v99 - 1) >> 1;
                        v100 = (a1 + 184 * v99);
                        v95 = v101;
                      }

                      while (v100[1] * *v100 > (v124 * v123));
                      sub_240BBEA8C(v101, &v123);
                      if (__p)
                      {
                        v127 = __p;
                        operator delete(__p);
                      }

                      for (jj = 0; jj != -72; jj -= 24)
                      {
                        v103 = *&v125[jj + 72];
                        if (v103)
                        {
                          *&v125[jj + 80] = v103;
                          operator delete(v103);
                        }
                      }

                      for (kk = 0; kk != -72; kk -= 24)
                      {
                        v105 = *&v125[kk];
                        if (v105)
                        {
                          *&v125[kk + 8] = v105;
                          operator delete(v105);
                        }
                      }
                    }
                  }
                }

                if (v121)
                {
                  v122 = v121;
                  operator delete(v121);
                }

                for (mm = 0; mm != -72; mm -= 24)
                {
                  v107 = *&v120[mm + 136];
                  if (v107)
                  {
                    *&v120[mm + 144] = v107;
                    operator delete(v107);
                  }
                }

                for (nn = 0; nn != -72; nn -= 24)
                {
                  v109 = *&v120[nn + 64];
                  if (v109)
                  {
                    *&v120[nn + 72] = v109;
                    operator delete(v109);
                  }
                }
              }

              while (v91-- > 2);
            }

            return;
          }

          v13 = v11 >> 1;
          v14 = a1 + 184 * (v11 >> 1);
          if (v10 < 0x5C01)
          {
            sub_240BBE56C(v14, a1, v8);
          }

          else
          {
            sub_240BBE56C(a1, v14, v8);
            v15 = 184 * v13;
            sub_240BBE56C(a1 + 184, v15 + a1 - 184, (a2 - 368));
            sub_240BBE56C(a1 + 368, a1 + 184 + v15, (a2 - 552));
            sub_240BBE56C(v15 + a1 - 184, v14, a1 + 184 + v15);
            sub_240BBE340(a1, v14);
            v16 = *(a1 + 160);
            *(a1 + 160) = *(v14 + 160);
            *(v14 + 160) = v16;
            v17 = *(a1 + 176);
            *(a1 + 176) = *(v14 + 176);
            *(v14 + 176) = v17;
          }

          --a3;
          if ((a4 & 1) != 0 || *(a1 - 176) * *(a1 - 184) > *(a1 + 8) * *a1)
          {
            break;
          }

          sub_240BBE9F0(&v123, a1);
          v41 = v124 * v123;
          if ((v124 * v123) <= *(v7 - 22) * *(v7 - 23))
          {
            v44 = (a1 + 184);
            do
            {
              v9 = v44;
              if (v44 >= v7)
              {
                break;
              }

              v45 = *(v44 + 1) * *v44;
              v44 += 184;
            }

            while (v41 <= v45);
          }

          else
          {
            v9 = a1;
            do
            {
              v42 = *(v9 + 23);
              v43 = *(v9 + 24);
              v9 += 184;
            }

            while (v41 <= v43 * v42);
          }

          v46 = v7;
          if (v9 < v7)
          {
            v46 = v7;
            do
            {
              v47 = *(v46 - 23);
              v48 = *(v46 - 22);
              v46 -= 184;
            }

            while (v41 > v48 * v47);
          }

          while (v9 < v46)
          {
            sub_240BBE340(v9, v46);
            v49 = *(v9 + 20);
            *(v9 + 20) = *(v46 + 20);
            *(v46 + 20) = v49;
            v50 = *(v9 + 21);
            *(v9 + 21) = *(v46 + 21);
            *(v46 + 21) = v50;
            v51 = *(v9 + 22);
            *(v9 + 22) = *(v46 + 22);
            *(v46 + 22) = v51;
            v52 = v124 * v123;
            do
            {
              v53 = *(v9 + 23);
              v54 = *(v9 + 24);
              v9 += 184;
            }

            while (v52 <= v54 * v53);
            do
            {
              v55 = *(v46 - 23);
              v56 = *(v46 - 22);
              v46 -= 184;
            }

            while (v52 > v56 * v55);
          }

          if (v9 - 184 != a1)
          {
            sub_240BBEA8C(a1, (v9 - 184));
          }

          sub_240BBEA8C((v9 - 184), &v123);
          if (__p)
          {
            v127 = __p;
            operator delete(__p);
          }

          for (i1 = 0; i1 != -72; i1 -= 24)
          {
            v58 = *&v125[i1 + 72];
            if (v58)
            {
              *&v125[i1 + 80] = v58;
              operator delete(v58);
            }
          }

          for (i2 = 0; i2 != -72; i2 -= 24)
          {
            v60 = *&v125[i2];
            if (v60)
            {
              *&v125[i2 + 8] = v60;
              operator delete(v60);
            }
          }

          a4 = 0;
        }

        sub_240BBE9F0(&v123, a1);
        v18 = v124 * v123;
        v19 = a1;
        do
        {
          v20 = v19;
          v21 = *(v19 + 23);
          v19 += 184;
        }

        while (*(v20 + 24) * v21 > v18);
        if (v20 == a1)
        {
          v7 = a2;
          do
          {
            if (v19 >= v7)
            {
              break;
            }

            v24 = *(v7 - 23);
            v25 = *(v7 - 22);
            v7 -= 184;
          }

          while (v25 * v24 <= v18);
        }

        else
        {
          do
          {
            v22 = *(v7 - 23);
            v23 = *(v7 - 22);
            v7 -= 184;
          }

          while (v23 * v22 <= v18);
        }

        if (v19 < v7)
        {
          v26 = v19;
          v27 = v7;
          do
          {
            sub_240BBE340(v26, v27);
            v28 = *(v26 + 20);
            *(v26 + 20) = *(v27 + 20);
            *(v27 + 20) = v28;
            v29 = *(v26 + 21);
            *(v26 + 21) = *(v27 + 21);
            *(v27 + 21) = v29;
            v30 = *(v26 + 22);
            *(v26 + 22) = *(v27 + 22);
            *(v27 + 22) = v30;
            v31 = v124 * v123;
            do
            {
              v20 = v26;
              v32 = *(v26 + 23);
              v26 += 184;
            }

            while (*(v20 + 24) * v32 > v31);
            do
            {
              v33 = *(v27 - 23);
              v34 = *(v27 - 22);
              v27 -= 184;
            }

            while (v34 * v33 <= v31);
          }

          while (v26 < v27);
        }

        if (v20 != a1)
        {
          sub_240BBEA8C(a1, v20);
        }

        sub_240BBEA8C(v20, &v123);
        if (__p)
        {
          v127 = __p;
          operator delete(__p);
        }

        for (i3 = 0; i3 != -72; i3 -= 24)
        {
          v36 = *&v125[i3 + 72];
          if (v36)
          {
            *&v125[i3 + 80] = v36;
            operator delete(v36);
          }
        }

        for (i4 = 0; i4 != -72; i4 -= 24)
        {
          v38 = *&v125[i4];
          if (v38)
          {
            *&v125[i4 + 8] = v38;
            operator delete(v38);
          }
        }

        v39 = v19 >= v7;
        v7 = a2;
        if (v39)
        {
          break;
        }

LABEL_46:
        sub_240BBD58C(a1, v20, a3, a4 & 1);
        a4 = 0;
        v9 = v20 + 184;
      }

      v40 = sub_240BBEB98(a1, v20);
      v9 = v20 + 184;
      if (sub_240BBEB98((v20 + 184), a2))
      {
        break;
      }

      if (!v40)
      {
        goto LABEL_46;
      }
    }

    a2 = v20;
    if (!v40)
    {
      continue;
    }

    break;
  }
}

void *sub_240BBE0C0(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (!(a2 >> 60))
    {
      sub_240B2D470(a2);
    }

    sub_240B228BC();
  }

  return result;
}

void sub_240BBE134(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_240BBE150(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    v8 = v7 + 1;
    if (v7 + 1 > 0x1555555555555555)
    {
      sub_240B228BC();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 2);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0x1555555555555555;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_240B45DEC(v10);
    }

    v11 = 12 * v7;
    v12 = *a2;
    *(v11 + 8) = *(a2 + 2);
    *v11 = v12;
    v6 = 12 * v7 + 12;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 8) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 12;
  }

  *(a1 + 8) = v6;
}

void *sub_240BBE254(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a1 + 1;
  v8 = a1[1];
  if (v8)
  {
    a1[2] = v8;
    operator delete(v8);
    *v9 = 0;
    v9[1] = 0;
    v9[2] = 0;
  }

  *(a1 + 1) = *a2;
  a1[3] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v10 = a1[4];
  if (v10)
  {
    a1[5] = v10;
    operator delete(v10);
    a1[4] = 0;
    a1[5] = 0;
    a1[6] = 0;
  }

  *(a1 + 2) = *a3;
  a1[6] = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v11 = a1[7];
  if (v11)
  {
    a1[8] = v11;
    operator delete(v11);
    a1[7] = 0;
    a1[8] = 0;
    a1[9] = 0;
  }

  *(a1 + 7) = *a4;
  a1[9] = *(a4 + 16);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;

  return sub_240B45F80(a1);
}

void sub_240BBE340(_OWORD *a1, _OWORD *a2)
{
  v4 = 0;
  v32[0] = *a1;
  do
  {
    v5 = v32 + v4;
    v6 = (a1 + v4);
    *(v5 + 1) = *(a1 + v4 + 16);
    *(v5 + 4) = *(a1 + v4 + 32);
    v6[3] = 0;
    v6[4] = 0;
    v6[2] = 0;
    v4 += 24;
  }

  while (v4 != 72);
  for (i = 0; i != 72; i += 24)
  {
    v8 = v32 + i;
    v9 = (a1 + i);
    *(v8 + 88) = *(a1 + i + 88);
    *(v8 + 13) = *(a1 + i + 104);
    v9[12] = 0;
    v9[13] = 0;
    v9[11] = 0;
  }

  v10 = 0;
  *a1 = *a2;
  do
  {
    v11 = a1 + v10;
    v13 = (a1 + v10 + 16);
    v12 = *v13;
    if (*v13)
    {
      *(v11 + 3) = v12;
      operator delete(v12);
      *v13 = 0;
      *(a1 + v10 + 24) = 0;
      *(a1 + v10 + 32) = 0;
    }

    v14 = (a2 + v10);
    *v13 = *(a2 + v10 + 16);
    *(v11 + 4) = *(a2 + v10 + 32);
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = 0;
    v10 += 24;
  }

  while (v10 != 72);
  for (j = 0; j != 72; j += 24)
  {
    v16 = a1 + j;
    v18 = (a1 + j + 88);
    v17 = *v18;
    if (*v18)
    {
      *(v16 + 12) = v17;
      operator delete(v17);
      *v18 = 0;
      *(a1 + j + 96) = 0;
      *(a1 + j + 104) = 0;
    }

    v19 = (a2 + j);
    *v18 = *(a2 + j + 88);
    *(v16 + 13) = *(a2 + j + 104);
    v19[11] = 0;
    v19[12] = 0;
    v19[13] = 0;
  }

  v20 = 0;
  *a2 = v32[0];
  do
  {
    v21 = a2 + v20;
    v22 = *(a2 + v20 + 16);
    if (v22)
    {
      *(v21 + 3) = v22;
      operator delete(v22);
    }

    v23 = (v32 + v20);
    *(v21 + 1) = *(&v32[1] + v20);
    *(v21 + 4) = *(&v32[2] + v20);
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = 0;
    v20 += 24;
  }

  while (v20 != 72);
  for (k = 0; k != 72; k += 24)
  {
    v25 = a2 + k;
    v26 = *(a2 + k + 88);
    if (v26)
    {
      *(v25 + 12) = v26;
      operator delete(v26);
    }

    v27 = (v32 + k);
    *(v25 + 88) = *(&v32[5] + k + 8);
    *(v25 + 13) = *(&v32[6] + k + 8);
    v27[11] = 0;
    v27[12] = 0;
    v27[13] = 0;
  }

  for (m = 0; m != -72; m -= 24)
  {
    v29 = *(&v32[8] + m + 8);
    if (v29)
    {
      *(&v32[9] + m) = v29;
      operator delete(v29);
    }
  }

  for (n = 0; n != -72; n -= 24)
  {
    v31 = *(&v32[4] + n);
    if (v31)
    {
      *(&v32[4] + n + 8) = v31;
      operator delete(v31);
    }
  }
}

void sub_240BBE56C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8) * *a2;
  v7 = *(a3 + 8) * *a3;
  if (v6 > *(a1 + 8) * *a1)
  {
    if (v7 <= v6)
    {
      sub_240BBE340(a1, a2);
      v17 = *(a1 + 160);
      *(a1 + 160) = *(a2 + 160);
      *(a2 + 160) = v17;
      v18 = *(a1 + 168);
      *(a1 + 168) = *(a2 + 168);
      *(a2 + 168) = v18;
      v8 = (a2 + 176);
      v19 = *(a1 + 176);
      *(a1 + 176) = *(a2 + 176);
      *(a2 + 176) = v19;
      if (*(a3 + 8) * *a3 <= *(a2 + 8) * *a2)
      {
        return;
      }

      sub_240BBE340(a2, a3);
      v20 = *(a2 + 160);
      *(a2 + 160) = *(a3 + 160);
      *(a3 + 160) = v20;
      v10 = *(a2 + 168);
      *(a2 + 168) = *(a3 + 168);
    }

    else
    {
      v8 = (a1 + 176);
      sub_240BBE340(a1, a3);
      v9 = *(a1 + 160);
      *(a1 + 160) = *(a3 + 160);
      *(a3 + 160) = v9;
      v10 = *(a1 + 168);
      *(a1 + 168) = *(a3 + 168);
    }

    *(a3 + 168) = v10;
    v14 = (a3 + 176);
    goto LABEL_10;
  }

  if (v7 > v6)
  {
    sub_240BBE340(a2, a3);
    v11 = *(a2 + 160);
    *(a2 + 160) = *(a3 + 160);
    *(a3 + 160) = v11;
    v12 = *(a2 + 168);
    *(a2 + 168) = *(a3 + 168);
    *(a3 + 168) = v12;
    v14 = (a2 + 176);
    v13 = *(a2 + 176);
    *(a2 + 176) = *(a3 + 176);
    *(a3 + 176) = v13;
    if (*(a2 + 8) * *a2 > *(a1 + 8) * *a1)
    {
      sub_240BBE340(a1, a2);
      v15 = *(a1 + 160);
      *(a1 + 160) = *(a2 + 160);
      *(a2 + 160) = v15;
      v16 = *(a1 + 168);
      *(a1 + 168) = *(a2 + 168);
      *(a2 + 168) = v16;
      v8 = (a1 + 176);
LABEL_10:
      v21 = *v8;
      *v8 = *v14;
      *v14 = v21;
    }
  }
}

void sub_240BBE728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_240BBE56C(a1, a2, a3);
  if (*(a4 + 8) * *a4 > *(a3 + 8) * *a3)
  {
    sub_240BBE340(a3, a4);
    v8 = *(a3 + 160);
    *(a3 + 160) = *(a4 + 160);
    *(a4 + 160) = v8;
    v9 = *(a3 + 168);
    *(a3 + 168) = *(a4 + 168);
    *(a4 + 168) = v9;
    v10 = *(a3 + 176);
    *(a3 + 176) = *(a4 + 176);
    *(a4 + 176) = v10;
    if (*(a3 + 8) * *a3 > *(a2 + 8) * *a2)
    {
      sub_240BBE340(a2, a3);
      v11 = *(a2 + 160);
      *(a2 + 160) = *(a3 + 160);
      *(a3 + 160) = v11;
      v12 = *(a2 + 168);
      *(a2 + 168) = *(a3 + 168);
      *(a3 + 168) = v12;
      v13 = *(a2 + 176);
      *(a2 + 176) = *(a3 + 176);
      *(a3 + 176) = v13;
      if (*(a2 + 8) * *a2 > *(a1 + 8) * *a1)
      {
        sub_240BBE340(a1, a2);
        v14 = *(a1 + 160);
        *(a1 + 160) = *(a2 + 160);
        *(a2 + 160) = v14;
        v15 = *(a1 + 168);
        *(a1 + 168) = *(a2 + 168);
        *(a2 + 168) = v15;
        v16 = *(a1 + 176);
        *(a1 + 176) = *(a2 + 176);
        *(a2 + 176) = v16;
      }
    }
  }
}

void sub_240BBE85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_240BBE728(a1, a2, a3, a4);
  if (*(a5 + 8) * *a5 > *(a4 + 8) * *a4)
  {
    sub_240BBE340(a4, a5);
    v10 = *(a4 + 160);
    *(a4 + 160) = *(a5 + 160);
    *(a5 + 160) = v10;
    v11 = *(a4 + 168);
    *(a4 + 168) = *(a5 + 168);
    *(a5 + 168) = v11;
    v12 = *(a4 + 176);
    *(a4 + 176) = *(a5 + 176);
    *(a5 + 176) = v12;
    if (*(a4 + 8) * *a4 > *(a3 + 8) * *a3)
    {
      sub_240BBE340(a3, a4);
      v13 = *(a3 + 160);
      *(a3 + 160) = *(a4 + 160);
      *(a4 + 160) = v13;
      v14 = *(a3 + 168);
      *(a3 + 168) = *(a4 + 168);
      *(a4 + 168) = v14;
      v15 = *(a3 + 176);
      *(a3 + 176) = *(a4 + 176);
      *(a4 + 176) = v15;
      if (*(a3 + 8) * *a3 > *(a2 + 8) * *a2)
      {
        sub_240BBE340(a2, a3);
        v16 = *(a2 + 160);
        *(a2 + 160) = *(a3 + 160);
        *(a3 + 160) = v16;
        v17 = *(a2 + 168);
        *(a2 + 168) = *(a3 + 168);
        *(a3 + 168) = v17;
        v18 = *(a2 + 176);
        *(a2 + 176) = *(a3 + 176);
        *(a3 + 176) = v18;
        if (*(a2 + 8) * *a2 > *(a1 + 8) * *a1)
        {
          sub_240BBE340(a1, a2);
          v19 = *(a1 + 160);
          *(a1 + 160) = *(a2 + 160);
          *(a2 + 160) = v19;
          v20 = *(a1 + 168);
          *(a1 + 168) = *(a2 + 168);
          *(a2 + 168) = v20;
          v21 = *(a1 + 176);
          *(a1 + 176) = *(a2 + 176);
          *(a2 + 176) = v21;
        }
      }
    }
  }
}

__n128 sub_240BBE9F0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  *a1 = *a2;
  do
  {
    v3 = (a1 + v2);
    v4 = (a2 + v2);
    v3[2] = 0;
    v3[3] = 0;
    v3[4] = 0;
    *(v3 + 1) = *(a2 + v2 + 16);
    v3[4] = *(a2 + v2 + 32);
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v2 += 24;
  }

  while (v2 != 72);
  for (i = 0; i != 72; i += 24)
  {
    v6 = (a1 + i);
    v7 = (a2 + i);
    v6[11] = 0;
    v6[12] = 0;
    v6[13] = 0;
    *(v6 + 11) = *(a2 + i + 88);
    v6[13] = *(a2 + i + 104);
    v7[11] = 0;
    v7[12] = 0;
    v7[13] = 0;
  }

  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  result = *(a2 + 160);
  *(a1 + 160) = result;
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  return result;
}

uint64_t sub_240BBEA8C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  *a1 = *a2;
  do
  {
    v5 = a1 + v4;
    v7 = (a1 + v4 + 16);
    v6 = *v7;
    if (*v7)
    {
      *(v5 + 24) = v6;
      operator delete(v6);
      *v7 = 0;
      *(a1 + v4 + 24) = 0;
      *(a1 + v4 + 32) = 0;
    }

    v8 = (a2 + v4);
    *v7 = *(a2 + v4 + 16);
    *(v5 + 32) = *(a2 + v4 + 32);
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = 0;
    v4 += 24;
  }

  while (v4 != 72);
  for (i = 0; i != 72; i += 24)
  {
    v10 = a1 + i;
    v12 = (a1 + i + 88);
    v11 = *v12;
    if (*v12)
    {
      *(v10 + 96) = v11;
      operator delete(v11);
      *v12 = 0;
      *(a1 + i + 96) = 0;
      *(a1 + i + 104) = 0;
    }

    v13 = (a2 + i);
    *v12 = *(a2 + i + 88);
    *(v10 + 104) = *(a2 + i + 104);
    v13[11] = 0;
    v13[12] = 0;
    v13[13] = 0;
  }

  v14 = *(a1 + 160);
  if (v14)
  {
    *(a1 + 168) = v14;
    operator delete(v14);
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
  }

  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  return a1;
}

BOOL sub_240BBEB98(uint64_t a1, void *a2)
{
  v4 = 0xD37A6F4DE9BD37A7 * ((a2 - a1) >> 3);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = a2 - 23;
        if (*(a2 - 22) * *(a2 - 23) > *(a1 + 8) * *a1)
        {
          sub_240BBE340(a1, v5);
          v6 = *(a1 + 160);
          *(a1 + 160) = *(a2 - 3);
          *(a2 - 3) = v6;
          v7 = *(a1 + 168);
          *(a1 + 168) = *(a2 - 2);
          *(a2 - 2) = v7;
          v8 = *(a1 + 176);
          *(a1 + 176) = *(a2 - 1);
          *(a2 - 1) = v8;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      sub_240BBE56C(a1, a1 + 184, (a2 - 23));
      return 1;
    case 4:
      sub_240BBE728(a1, a1 + 184, a1 + 368, (a2 - 23));
      return 1;
    case 5:
      sub_240BBE85C(a1, a1 + 184, a1 + 368, a1 + 552, (a2 - 23));
      return 1;
  }

LABEL_11:
  v9 = (a1 + 368);
  sub_240BBE56C(a1, a1 + 184, a1 + 368);
  v10 = (a1 + 552);
  if ((a1 + 552) == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    if (v10[1] * *v10 > v9[1] * *v9)
    {
      sub_240BBE9F0(v21, v10);
      v13 = v11;
      while (1)
      {
        sub_240BBEA8C(a1 + v13 + 552, a1 + v13 + 368);
        if (v13 == -368)
        {
          break;
        }

        v14 = *(a1 + v13 + 192) * *(a1 + v13 + 184);
        v13 -= 184;
        if (v21[1] * v21[0] <= v14)
        {
          v15 = a1 + v13 + 552;
          goto LABEL_19;
        }
      }

      v15 = a1;
LABEL_19:
      sub_240BBEA8C(v15, v21);
      if (__p)
      {
        v23 = __p;
        operator delete(__p);
      }

      v16 = 0;
      ++v12;
      do
      {
        v17 = v21[v16 + 17];
        if (v17)
        {
          v21[v16 + 18] = v17;
          operator delete(v17);
        }

        v16 -= 3;
      }

      while (v16 != -9);
      for (i = 0; i != -9; i -= 3)
      {
        v19 = v21[i + 8];
        if (v19)
        {
          v21[i + 9] = v19;
          operator delete(v19);
        }
      }

      if (v12 == 8)
      {
        return v10 + 23 == a2;
      }
    }

    v9 = v10;
    v11 += 184;
    v10 += 23;
    if (v10 == a2)
    {
      return 1;
    }
  }
}

void sub_240BBEDFC(void *a1, void *a2, uint64_t a3, char a4)
{
  while (2)
  {
    v96 = a2;
    v98 = a2 - 23;
    v94 = a2 - 69;
    v95 = a2 - 46;
    v8 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v8;
          v9 = a2 - v8;
          v10 = 0xD37A6F4DE9BD37A7 * (a2 - v8);
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:

                sub_240BBF9CC(v8, v8 + 23, v98);
                return;
              case 4:

                sub_240BBFB70(v8, v8 + 23, v8 + 46, v98);
                return;
              case 5:

                sub_240BBFC8C(v8, v8 + 23, v8 + 46, (v8 + 69), v98);
                return;
            }
          }

          else
          {
            if (v10 < 2)
            {
              return;
            }

            if (v10 == 2)
            {
              if (sub_240BBF924(v98, v8))
              {
                sub_240BBE340(v8, v98);
                v40 = v8[20];
                v8[20] = *(a2 - 3);
                *(a2 - 3) = v40;
                v41 = v8[21];
                v8[21] = *(a2 - 2);
                *(a2 - 2) = v41;
                v42 = v8[22];
                v8[22] = *(a2 - 1);
                *(a2 - 1) = v42;
              }

              return;
            }
          }

          if (v9 <= 4415)
          {
            if (a4)
            {
              if (v8 != a2)
              {
                v43 = v8 + 23;
                if (v8 + 23 != a2)
                {
                  v44 = 0;
                  v45 = v8;
                  do
                  {
                    v46 = v45;
                    v45 = v43;
                    if (sub_240BBF924(v43, v46))
                    {
                      sub_240BBE9F0(v103, v45);
                      v47 = v44;
                      while (1)
                      {
                        sub_240BBEA8C(v8 + v47 + 184, v8 + v47);
                        if (!v47)
                        {
                          break;
                        }

                        v47 -= 184;
                        if ((sub_240BBF924(v103, (v8 + v47)) & 1) == 0)
                        {
                          v48 = v8 + v47 + 184;
                          goto LABEL_96;
                        }
                      }

                      v48 = v8;
LABEL_96:
                      sub_240BBEA8C(v48, v103);
                      if (__p)
                      {
                        v105 = __p;
                        operator delete(__p);
                      }

                      for (i = 0; i != -9; i -= 3)
                      {
                        v50 = v103[i + 17];
                        if (v50)
                        {
                          v103[i + 18] = v50;
                          operator delete(v50);
                        }
                      }

                      for (j = 0; j != -9; j -= 3)
                      {
                        v52 = v103[j + 8];
                        if (v52)
                        {
                          v103[j + 9] = v52;
                          operator delete(v52);
                        }
                      }
                    }

                    v43 = (v45 + 184);
                    v44 += 184;
                  }

                  while ((v45 + 184) != a2);
                }
              }
            }

            else if (v8 != a2)
            {
              v87 = v8 + 23;
              if (v8 + 23 != a2)
              {
                do
                {
                  v88 = v87;
                  if (sub_240BBF924(v87, a1))
                  {
                    sub_240BBE9F0(v103, v88);
                    do
                    {
                      v89 = a1;
                      sub_240BBEA8C((a1 + 23), a1);
                      a1 -= 23;
                    }

                    while ((sub_240BBF924(v103, a1) & 1) != 0);
                    sub_240BBEA8C(v89, v103);
                    if (__p)
                    {
                      v105 = __p;
                      operator delete(__p);
                    }

                    for (k = 0; k != -9; k -= 3)
                    {
                      v91 = v103[k + 17];
                      if (v91)
                      {
                        v103[k + 18] = v91;
                        operator delete(v91);
                      }
                    }

                    for (m = 0; m != -9; m -= 3)
                    {
                      v93 = v103[m + 8];
                      if (v93)
                      {
                        v103[m + 9] = v93;
                        operator delete(v93);
                      }
                    }
                  }

                  v87 = (v88 + 184);
                  a1 = v88;
                }

                while ((v88 + 184) != a2);
              }
            }

            return;
          }

          if (!a3)
          {
            if (v8 != a2)
            {
              v53 = (v10 - 2) >> 1;
              v99 = v53;
              do
              {
                v54 = v53;
                if (v99 >= v53)
                {
                  v55 = (2 * v53) | 1;
                  v56 = &a1[23 * v55];
                  if (2 * v53 + 2 < v10 && sub_240BBF924(&a1[23 * v55], v56 + 23))
                  {
                    v56 += 23;
                    v55 = 2 * v54 + 2;
                  }

                  v57 = &a1[23 * v54];
                  if ((sub_240BBF924(v56, v57) & 1) == 0)
                  {
                    sub_240BBE9F0(v103, &a1[23 * v54]);
                    do
                    {
                      v58 = v56;
                      sub_240BBEA8C(v57, v56);
                      if (v99 < v55)
                      {
                        break;
                      }

                      v59 = (2 * v55) | 1;
                      v56 = &a1[23 * v59];
                      v60 = 2 * v55 + 2;
                      if (v60 < v10 && sub_240BBF924(&a1[23 * v59], v56 + 23))
                      {
                        v56 += 23;
                        v59 = v60;
                      }

                      v57 = v58;
                      v55 = v59;
                    }

                    while (!sub_240BBF924(v56, v103));
                    sub_240BBEA8C(v58, v103);
                    if (__p)
                    {
                      v105 = __p;
                      operator delete(__p);
                    }

                    for (n = 0; n != -9; n -= 3)
                    {
                      v62 = v103[n + 17];
                      if (v62)
                      {
                        v103[n + 18] = v62;
                        operator delete(v62);
                      }
                    }

                    for (ii = 0; ii != -9; ii -= 3)
                    {
                      v64 = v103[ii + 8];
                      if (v64)
                      {
                        v103[ii + 9] = v64;
                        operator delete(v64);
                      }
                    }
                  }
                }

                v53 = v54 - 1;
              }

              while (v54);
              v65 = 0xD37A6F4DE9BD37A7 * (v9 >> 3);
              v66 = v96;
              do
              {
                if (v65 >= 2)
                {
                  v97 = v66;
                  sub_240BBE9F0(v100, a1);
                  v67 = 0;
                  v68 = a1;
                  do
                  {
                    v69 = v68 + 184 * v67;
                    v70 = (v69 + 184);
                    v71 = (2 * v67) | 1;
                    v72 = 2 * v67 + 2;
                    if (v72 < v65)
                    {
                      v73 = (v69 + 368);
                      if (sub_240BBF924((v69 + 184), (v69 + 368)))
                      {
                        v70 = v73;
                        v71 = v72;
                      }
                    }

                    sub_240BBEA8C(v68, v70);
                    v68 = v70;
                    v67 = v71;
                  }

                  while (v71 <= ((v65 - 2) >> 1));
                  v66 = v97;
                  if (v70 == (v97 - 23))
                  {
                    sub_240BBEA8C(v70, v100);
                  }

                  else
                  {
                    sub_240BBEA8C(v70, (v97 - 23));
                    sub_240BBEA8C((v97 - 23), v100);
                    v74 = v70 - a1 + 184;
                    if (v74 >= 185)
                    {
                      v75 = (-2 - 0x2C8590B21642C859 * (v74 >> 3)) >> 1;
                      v76 = &a1[23 * v75];
                      if (sub_240BBF924(v76, v70))
                      {
                        sub_240BBE9F0(v103, v70);
                        do
                        {
                          v77 = v76;
                          sub_240BBEA8C(v70, v76);
                          if (!v75)
                          {
                            break;
                          }

                          v75 = (v75 - 1) >> 1;
                          v76 = &a1[23 * v75];
                          v70 = v77;
                        }

                        while ((sub_240BBF924(v76, v103) & 1) != 0);
                        sub_240BBEA8C(v77, v103);
                        if (__p)
                        {
                          v105 = __p;
                          operator delete(__p);
                        }

                        for (jj = 0; jj != -9; jj -= 3)
                        {
                          v79 = v103[jj + 17];
                          if (v79)
                          {
                            v103[jj + 18] = v79;
                            operator delete(v79);
                          }
                        }

                        for (kk = 0; kk != -9; kk -= 3)
                        {
                          v81 = v103[kk + 8];
                          if (v81)
                          {
                            v103[kk + 9] = v81;
                            operator delete(v81);
                          }
                        }
                      }
                    }
                  }

                  if (v101)
                  {
                    v102 = v101;
                    operator delete(v101);
                  }

                  for (mm = 0; mm != -72; mm -= 24)
                  {
                    v83 = *&v100[mm + 136];
                    if (v83)
                    {
                      *&v100[mm + 144] = v83;
                      operator delete(v83);
                    }
                  }

                  for (nn = 0; nn != -72; nn -= 24)
                  {
                    v85 = *&v100[nn + 64];
                    if (v85)
                    {
                      *&v100[nn + 72] = v85;
                      operator delete(v85);
                    }
                  }
                }

                v66 -= 23;
              }

              while (v65-- > 2);
            }

            return;
          }

          v11 = v10 >> 1;
          v12 = &v8[23 * (v10 >> 1)];
          if (v9 < 0x5C01)
          {
            sub_240BBF9CC(&v8[23 * v11], v8, v98);
          }

          else
          {
            sub_240BBF9CC(v8, &v8[23 * v11], v98);
            v13 = 23 * v11;
            sub_240BBF9CC(v8 + 23, &v8[v13 - 23], v95);
            sub_240BBF9CC(v8 + 46, &v8[v13 + 23], v94);
            sub_240BBF9CC(&v8[v13 - 23], v12, &v8[v13 + 23]);
            sub_240BBE340(v8, v12);
            v14 = *(v8 + 10);
            *(v8 + 10) = *(v12 + 10);
            *(v12 + 10) = v14;
            v15 = v8[22];
            v8[22] = v12[22];
            v12[22] = v15;
          }

          --a3;
          if (a4 & 1) != 0 || (sub_240BBF924(v8 - 23, v8))
          {
            break;
          }

          sub_240BBE9F0(v103, v8);
          if (sub_240BBF924(v103, v98))
          {
            do
            {
              v8 += 23;
            }

            while ((sub_240BBF924(v103, v8) & 1) == 0);
          }

          else
          {
            v29 = v8 + 23;
            do
            {
              v8 = v29;
              if (v29 >= a2)
              {
                break;
              }

              v30 = sub_240BBF924(v103, v29);
              v29 = v8 + 23;
            }

            while (!v30);
          }

          v31 = a2;
          if (v8 < a2)
          {
            v31 = a2;
            do
            {
              v31 -= 23;
            }

            while ((sub_240BBF924(v103, v31) & 1) != 0);
          }

          while (v8 < v31)
          {
            sub_240BBE340(v8, v31);
            v32 = v8[20];
            v8[20] = v31[20];
            v31[20] = v32;
            v33 = v8[21];
            v8[21] = v31[21];
            v31[21] = v33;
            v34 = v8[22];
            v8[22] = v31[22];
            v31[22] = v34;
            do
            {
              v8 += 23;
            }

            while (!sub_240BBF924(v103, v8));
            do
            {
              v31 -= 23;
            }

            while ((sub_240BBF924(v103, v31) & 1) != 0);
          }

          if (v8 - 23 != a1)
          {
            sub_240BBEA8C(a1, (v8 - 23));
          }

          sub_240BBEA8C((v8 - 23), v103);
          if (__p)
          {
            v105 = __p;
            operator delete(__p);
          }

          for (i1 = 0; i1 != -9; i1 -= 3)
          {
            v36 = v103[i1 + 17];
            if (v36)
            {
              v103[i1 + 18] = v36;
              operator delete(v36);
            }
          }

          for (i2 = 0; i2 != -9; i2 -= 3)
          {
            v38 = v103[i2 + 8];
            if (v38)
            {
              v103[i2 + 9] = v38;
              operator delete(v38);
            }
          }

          a4 = 0;
        }

        sub_240BBE9F0(v103, v8);
        v16 = v8;
        do
        {
          v17 = v16;
          v16 += 23;
        }

        while ((sub_240BBF924(v16, v103) & 1) != 0);
        v18 = a2;
        if (v17 == v8)
        {
          v18 = a2;
          do
          {
            if (v16 >= v18)
            {
              break;
            }

            v18 -= 23;
          }

          while ((sub_240BBF924(v18, v103) & 1) == 0);
        }

        else
        {
          do
          {
            v18 -= 23;
          }

          while (!sub_240BBF924(v18, v103));
        }

        if (v16 < v18)
        {
          v19 = v16;
          v20 = v18;
          do
          {
            sub_240BBE340(v19, v20);
            v21 = v19[20];
            v19[20] = v20[20];
            v20[20] = v21;
            v22 = v19[21];
            v19[21] = v20[21];
            v20[21] = v22;
            v23 = v19[22];
            v19[22] = v20[22];
            v20[22] = v23;
            do
            {
              v17 = v19;
              v19 += 23;
            }

            while ((sub_240BBF924(v19, v103) & 1) != 0);
            do
            {
              v20 -= 23;
            }

            while (!sub_240BBF924(v20, v103));
          }

          while (v19 < v20);
        }

        if (v17 != a1)
        {
          sub_240BBEA8C(a1, v17);
        }

        sub_240BBEA8C(v17, v103);
        if (__p)
        {
          v105 = __p;
          operator delete(__p);
        }

        v24 = 0;
        a2 = v96;
        do
        {
          v25 = v103[v24 + 17];
          if (v25)
          {
            v103[v24 + 18] = v25;
            operator delete(v25);
          }

          v24 -= 3;
        }

        while (v24 != -9);
        for (i3 = 0; i3 != -9; i3 -= 3)
        {
          v27 = v103[i3 + 8];
          if (v27)
          {
            v103[i3 + 9] = v27;
            operator delete(v27);
          }
        }

        if (v16 >= v18)
        {
          break;
        }

LABEL_45:
        sub_240BBEDFC(a1, v17, a3, a4 & 1);
        a4 = 0;
        v8 = v17 + 23;
      }

      v28 = sub_240BBFE00(a1, v17);
      v8 = v17 + 23;
      if (sub_240BBFE00((v17 + 23), v96))
      {
        break;
      }

      if (!v28)
      {
        goto LABEL_45;
      }
    }

    a2 = v17;
    if (!v28)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_240BBF924(void *a1, void *a2)
{
  if (sub_240BC0050(a1, a2))
  {
    return 1;
  }

  if ((sub_240BC0050(a2, a1) & 1) == 0)
  {
    v5 = a2[20];
    v6 = a2[21];
    if (v5 != v6)
    {
      v7 = a1[20];
      while (v7 != a1[21] && *v7 >= *v5)
      {
        if (*v5 < *v7)
        {
          return 0;
        }

        v8 = v7[1];
        v9 = v5[1];
        if (v8 < v9)
        {
          break;
        }

        result = 0;
        if (v9 >= v8)
        {
          v7 += 2;
          v5 += 2;
          if (v5 != v6)
          {
            continue;
          }
        }

        return result;
      }

      return 1;
    }
  }

  return 0;
}

void sub_240BBF9CC(void *a1, void *a2, void *a3)
{
  v6 = sub_240BBF924(a2, a1);
  v7 = sub_240BBF924(a3, a2);
  if (v6)
  {
    if (v7)
    {
      v8 = a1 + 22;
      sub_240BBE340(a1, a3);
      v9 = a1[20];
      a1[20] = a3[20];
      a3[20] = v9;
      v10 = a1[21];
      a1[21] = a3[21];
    }

    else
    {
      sub_240BBE340(a1, a2);
      v17 = a1[20];
      a1[20] = a2[20];
      a2[20] = v17;
      v18 = a1[21];
      a1[21] = a2[21];
      a2[21] = v18;
      v8 = a2 + 22;
      v19 = a1[22];
      a1[22] = a2[22];
      a2[22] = v19;
      if (!sub_240BBF924(a3, a2))
      {
        return;
      }

      sub_240BBE340(a2, a3);
      v20 = a2[20];
      a2[20] = a3[20];
      a3[20] = v20;
      v10 = a2[21];
      a2[21] = a3[21];
    }

    a3[21] = v10;
    v14 = a3 + 22;
    goto LABEL_10;
  }

  if (v7)
  {
    sub_240BBE340(a2, a3);
    v11 = a2[20];
    a2[20] = a3[20];
    a3[20] = v11;
    v12 = a2[21];
    a2[21] = a3[21];
    a3[21] = v12;
    v14 = a2 + 22;
    v13 = a2[22];
    a2[22] = a3[22];
    a3[22] = v13;
    if (sub_240BBF924(a2, a1))
    {
      sub_240BBE340(a1, a2);
      v15 = a1[20];
      a1[20] = a2[20];
      a2[20] = v15;
      v16 = a1[21];
      a1[21] = a2[21];
      a2[21] = v16;
      v8 = a1 + 22;
LABEL_10:
      v21 = *v8;
      *v8 = *v14;
      *v14 = v21;
    }
  }
}

void sub_240BBFB70(void *a1, void *a2, void *a3, uint64_t a4)
{
  sub_240BBF9CC(a1, a2, a3);
  if (sub_240BBF924(a4, a3))
  {
    sub_240BBE340(a3, a4);
    v8 = a3[20];
    a3[20] = *(a4 + 160);
    *(a4 + 160) = v8;
    v9 = a3[21];
    a3[21] = *(a4 + 168);
    *(a4 + 168) = v9;
    v10 = a3[22];
    a3[22] = *(a4 + 176);
    *(a4 + 176) = v10;
    if (sub_240BBF924(a3, a2))
    {
      sub_240BBE340(a2, a3);
      v11 = a2[20];
      a2[20] = a3[20];
      a3[20] = v11;
      v12 = a2[21];
      a2[21] = a3[21];
      a3[21] = v12;
      v13 = a2[22];
      a2[22] = a3[22];
      a3[22] = v13;
      if (sub_240BBF924(a2, a1))
      {
        sub_240BBE340(a1, a2);
        v14 = a1[20];
        a1[20] = a2[20];
        a2[20] = v14;
        v15 = a1[21];
        a1[21] = a2[21];
        a2[21] = v15;
        v16 = a1[22];
        a1[22] = a2[22];
        a2[22] = v16;
      }
    }
  }
}

void sub_240BBFC8C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_240BBFB70(a1, a2, a3, a4);
  if (sub_240BBF924(a5, a4))
  {
    sub_240BBE340(a4, a5);
    v10 = *(a4 + 160);
    *(a4 + 160) = *(a5 + 160);
    *(a5 + 160) = v10;
    v11 = *(a4 + 168);
    *(a4 + 168) = *(a5 + 168);
    *(a5 + 168) = v11;
    v12 = *(a4 + 176);
    *(a4 + 176) = *(a5 + 176);
    *(a5 + 176) = v12;
    if (sub_240BBF924(a4, a3))
    {
      sub_240BBE340(a3, a4);
      v13 = a3[20];
      a3[20] = *(a4 + 160);
      *(a4 + 160) = v13;
      v14 = a3[21];
      a3[21] = *(a4 + 168);
      *(a4 + 168) = v14;
      v15 = a3[22];
      a3[22] = *(a4 + 176);
      *(a4 + 176) = v15;
      if (sub_240BBF924(a3, a2))
      {
        sub_240BBE340(a2, a3);
        v16 = a2[20];
        a2[20] = a3[20];
        a3[20] = v16;
        v17 = a2[21];
        a2[21] = a3[21];
        a3[21] = v17;
        v18 = a2[22];
        a2[22] = a3[22];
        a3[22] = v18;
        if (sub_240BBF924(a2, a1))
        {
          sub_240BBE340(a1, a2);
          v19 = a1[20];
          a1[20] = a2[20];
          a2[20] = v19;
          v20 = a1[21];
          a1[21] = a2[21];
          a2[21] = v20;
          v21 = a1[22];
          a1[22] = a2[22];
          a2[22] = v21;
        }
      }
    }
  }
}

BOOL sub_240BBFE00(uint64_t a1, void *a2)
{
  v4 = 0xD37A6F4DE9BD37A7 * ((a2 - a1) >> 3);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        if (sub_240BBF924(a2 - 23, a1))
        {
          sub_240BBE340(a1, a2 - 23);
          v5 = *(a1 + 160);
          *(a1 + 160) = *(a2 - 3);
          *(a2 - 3) = v5;
          v6 = *(a1 + 168);
          *(a1 + 168) = *(a2 - 2);
          *(a2 - 2) = v6;
          v7 = *(a1 + 176);
          *(a1 + 176) = *(a2 - 1);
          *(a2 - 1) = v7;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      sub_240BBF9CC(a1, (a1 + 184), a2 - 23);
      return 1;
    case 4:
      sub_240BBFB70(a1, (a1 + 184), (a1 + 368), (a2 - 23));
      return 1;
    case 5:
      sub_240BBFC8C(a1, (a1 + 184), (a1 + 368), a1 + 552, (a2 - 23));
      return 1;
  }

LABEL_11:
  v8 = (a1 + 368);
  sub_240BBF9CC(a1, (a1 + 184), (a1 + 368));
  v9 = (a1 + 552);
  if ((a1 + 552) == a2)
  {
    return 1;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    if (sub_240BBF924(v9, v8))
    {
      sub_240BBE9F0(v20, v9);
      v12 = v10;
      while (1)
      {
        sub_240BBEA8C(a1 + v12 + 552, a1 + v12 + 368);
        if (v12 == -368)
        {
          break;
        }

        v13 = sub_240BBF924(v20, (a1 + v12 + 184));
        v12 -= 184;
        if ((v13 & 1) == 0)
        {
          v14 = a1 + v12 + 552;
          goto LABEL_19;
        }
      }

      v14 = a1;
LABEL_19:
      sub_240BBEA8C(v14, v20);
      if (__p)
      {
        v22 = __p;
        operator delete(__p);
      }

      v15 = 0;
      ++v11;
      do
      {
        v16 = v20[v15 + 17];
        if (v16)
        {
          v20[v15 + 18] = v16;
          operator delete(v16);
        }

        v15 -= 3;
      }

      while (v15 != -9);
      for (i = 0; i != -9; i -= 3)
      {
        v18 = v20[i + 8];
        if (v18)
        {
          v20[i + 9] = v18;
          operator delete(v18);
        }
      }

      if (v11 == 8)
      {
        return v9 + 23 == a2;
      }
    }

    v8 = v9;
    v10 += 184;
    v9 += 23;
    if (v9 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_240BC0050(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return *a1 < *a2;
  }

  v4 = a1[1];
  v5 = a2[1];
  if (v4 != v5)
  {
    return v4 < v5;
  }

  v6 = v4 * *a1;
  v7 = 2;
  while (1)
  {
    v8 = memcmp(a1[v7], a2[v7], v6);
    if (v8 > 0)
    {
      return 0;
    }

    if (v8)
    {
      break;
    }

    v7 += 3;
    if (v7 == 11)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_240BC00EC(uint64_t result, unsigned int a2)
{
  v2 = *(result + 8);
  v3 = *v2;
  v4 = **v2;
  if (v4 >= 4)
  {
    v5 = 0;
    v6 = a2;
    v7 = 4 * a2;
    v8 = 4 * a2;
    do
    {
      v9 = 0;
      v10 = 4 * v5;
      v11 = *(v2 + 8);
      v12 = *v11;
      v13 = *(v11 + 8);
      result = (4 * v5);
      v14 = v13 * v8;
      v15 = *v12;
      v16 = *(*v12 + 4 * v13 * v8 + 4 * result);
      v17 = 1;
LABEL_4:
      while (2)
      {
        v18 = 0;
        v19 = (v9 + v8) * v13;
        while (vabds_f32(*(v15 + 4 * v19 + 4 * (v18 | result)), v16) <= 0.0001)
        {
          v20 = 0;
          while (v20 != 2)
          {
            v21 = v20 + 1;
            v22 = vabds_f32(*(v12[v20 + 1] + 4 * v19 + 4 * (v18 | result)), *(v12[v20 + 1] + 4 * v14 + 4 * result));
            ++v20;
            if (v22 > 0.0001)
            {
              if ((v21 - 1) <= 1)
              {
                goto LABEL_13;
              }

              break;
            }
          }

          if (++v18 == 4)
          {
            if (++v9 != 4)
            {
              goto LABEL_4;
            }

            if (v17)
            {
              v23 = 0;
              v24 = 0;
              v25 = v12 + 1;
              for (i = -4; i != 8; ++i)
              {
                v27 = i + v7;
                v28 = (i + v7) * v13;
                for (j = -4; j != 8; ++j)
                {
                  v30 = j + v10;
                  if (j + v10 >= 0 && v30 < v4 && (v27 & 0x8000000000000000) == 0 && v27 < v3[1])
                  {
                    v31 = 0;
                    if (vabds_f32(*(v15 + 4 * v28 + 4 * v30), v16) <= 0.0001)
                    {
                      while (v31 != 2)
                      {
                        v32 = vabds_f32(*(v25[v31] + 4 * v28 + 4 * v30), *(v25[v31] + 4 * v14 + 4 * result));
                        ++v31;
                        if (v32 > 0.0001)
                        {
                          --v31;
                          break;
                        }
                      }

                      v31 = v31 > 1;
                    }

                    ++v24;
                    v23 += v31;
                  }
                }
              }

              if (7 * v24 <= (8 * v23))
              {
                *(**(v2 + 16) + **(v2 + 24) * v6 + v5) = 1;
                atomic_store(1u, *(v2 + 32));
                v3 = *v2;
                v4 = **v2;
              }
            }

            goto LABEL_32;
          }
        }

LABEL_13:
        v17 = 0;
        if (++v9 != 4)
        {
          continue;
        }

        break;
      }

LABEL_32:
      ++v5;
    }

    while (v5 < v4 >> 2);
  }

  return result;
}

uint64_t sub_240BC0308(unsigned int (**a1)(uint64_t), uint64_t a2)
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

uint64_t sub_240BC0330(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v80 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 720);
  v10 = *(a1 + 728) - v9;
  if (v10)
  {
    v11 = 0xAF8AF8AF8AF8AF8BLL * (v10 >> 4);
    if (v11 <= 1)
    {
      v11 = 1;
    }

    v12 = 1;
    do
    {
      if (*v9 || *(v9 + 552))
      {
        v12 = 0;
      }

      v9 += 560;
      --v11;
    }

    while (v11);
  }

  else
  {
    v12 = 1;
  }

  sub_240B53650(v57, a2, 0x80000);
  *(a2[3] + (*a2 >> 3)) = ((v12 & 1) << (*a2 & 7)) | *(a2[3] + (*a2 >> 3));
  ++*a2;
  if ((v12 & 1) != 0 || (v13 = *(a1 + 720), *(a1 + 728) == v13))
  {
LABEL_73:
    sub_240B536C8(v57, a2, a3, a4);
    v52 = 0;
    goto LABEL_75;
  }

  v14 = 0;
  v15 = 224;
  v53 = a3;
  v54 = a4;
  while (1)
  {
    v16 = dword_240C85038[v14];
    v17 = dword_240C8507C[v14];
    v18 = (v13 + 560 * v14);
    *(a2[3] + (*a2 >> 3)) = (*v18 << (*a2 & 7)) | *(a2[3] + (*a2 >> 3));
    v19 = *a2 + 3;
    *a2 = v19;
    v20 = *v18;
    v55 = v15;
    if (*v18 > 3)
    {
      break;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v35 = 0;
        v36 = v13 + v15;
LABEL_56:
        v37 = 0;
        while (!sub_240C0EF60(a2, *(v36 + v37) * 0.015625))
        {
          v37 += 4;
          if (v37 == 24)
          {
            ++v35;
            v36 += 24;
            if (v35 != 3)
            {
              goto LABEL_56;
            }

            goto LABEL_72;
          }
        }

        goto LABEL_74;
      }

      if (v20 == 3)
      {
        v29 = 0;
LABEL_39:
        v30 = 0;
        v31 = 1;
        while (1)
        {
          v32 = v31;
          if (sub_240C0EF60(a2, *&v18[2 * v29 + 56 + v30]))
          {
            goto LABEL_74;
          }

          v31 = 0;
          v30 = 1;
          if ((v32 & 1) == 0)
          {
            if (++v29 != 3)
            {
              goto LABEL_39;
            }

            goto LABEL_52;
          }
        }
      }
    }

    else if (v20)
    {
      if (v20 == 1)
      {
        v21 = 0;
        v22 = v13 + v15;
LABEL_19:
        v23 = 0;
        while (!sub_240C0EF60(a2, *(v22 + v23) * 0.015625))
        {
          v23 += 4;
          if (v23 == 12)
          {
            ++v21;
            v22 += 12;
            if (v21 != 3)
            {
              goto LABEL_19;
            }

            goto LABEL_72;
          }
        }

LABEL_74:
        v52 = 1;
        goto LABEL_75;
      }
    }

    else
    {
      *(a2[3] + (v19 >> 3)) = (*(v18 + 552) << (v19 & 7)) | *(a2[3] + (v19 >> 3));
    }

LABEL_72:
    ++v14;
    v13 = *(a1 + 720);
    a4 = v54;
    v15 = v55 + 560;
    a3 = v53;
    if (v14 >= 0xAF8AF8AF8AF8AF8BLL * ((*(a1 + 728) - v13) >> 4))
    {
      goto LABEL_73;
    }
  }

  if (v20 <= 5)
  {
    if (v20 == 4)
    {
      v33 = 0;
      v34 = v13 + v15;
      while (!sub_240C0EF60(a2, *(v34 + v33)))
      {
        v33 += 4;
        if (v33 == 12)
        {
LABEL_52:
          v28 = (v18 + 2);
LABEL_53:
          if (!sub_240BC09E8(v28, a2))
          {
            goto LABEL_72;
          }

          goto LABEL_74;
        }
      }

      goto LABEL_74;
    }

    if (v20 == 5)
    {
      v24 = 0;
      v25 = v13 + v15;
LABEL_28:
      v26 = 0;
      while (1)
      {
        v27 = 0.015625;
        if (v26 >= 6)
        {
          v27 = 1.0;
        }

        if (sub_240C0EF60(a2, *(v25 + 4 * v26) * v27))
        {
          goto LABEL_74;
        }

        if (++v26 == 9)
        {
          ++v24;
          v25 += 36;
          if (v24 != 3)
          {
            goto LABEL_28;
          }

          if (!sub_240BC09E8(v18 + 1, a2))
          {
            v28 = (v18 + 84);
            goto LABEL_53;
          }

          goto LABEL_74;
        }
      }
    }

    goto LABEL_72;
  }

  if (v20 == 6)
  {
    v38 = sub_240BC09E8(v18 + 1, a2);
    if (v38)
    {
      v52 = v38;
      goto LABEL_75;
    }

    goto LABEL_72;
  }

  if (v20 != 7)
  {
    goto LABEL_72;
  }

  sub_240C0EF60(a2, *(v18 + 58));
  if (a5)
  {
    LODWORD(v58) = 4;
    *(&v58 + 1) = v14;
    v59 = 0;
    __p = 0;
    sub_240BB6D54(a5, a2, 0, 0, &v58);
    goto LABEL_72;
  }

  sub_240B64760(&v70, 8 * v16, 8 * v17, 8, 3);
  v52 = v77;
  if (!v77)
  {
    v39 = 0;
    v40 = 0;
    v63 = v70;
    v41 = v70;
    v70 = 0uLL;
    v42 = v71;
    v71 = 0;
    v65 = v72;
    v64 = v42;
    v66 = v73;
    v73 = 0;
    v72 = 0uLL;
    v69 = v76;
    v67 = v74;
    v68 = v75;
    while (1)
    {
      if (v17)
      {
        v43 = 0;
        v45 = *(v41 + (v40 << 6) + 16);
        v44 = *(v41 + (v40 << 6) + 24);
        v46 = v39;
        do
        {
          v47 = v46;
          v48 = v44;
          v49 = 8 * v16;
          if (v16)
          {
            do
            {
              *v48++ = *(**(v18 + 28) + v47);
              v47 += 4;
              --v49;
            }

            while (v49);
          }

          ++v43;
          v44 = (v44 + v45);
          v46 += 32 * v16;
        }

        while (v43 != 8 * v17);
      }

      ++v40;
      v39 += (v17 * v16) << 8;
      if (v40 == 3)
      {
        v58 = xmmword_240C11540;
        v59 = 1056964608;
        v78 = xmmword_240C84F6C;
        v79 = unk_240C84F7C;
        v61 = 0;
        v62 = 0;
        __p = 0;
        sub_240B43818();
      }
    }
  }

  sub_240B43B14(&v70);
LABEL_75:
  v50 = *MEMORY[0x277D85DE8];
  return v52;
}