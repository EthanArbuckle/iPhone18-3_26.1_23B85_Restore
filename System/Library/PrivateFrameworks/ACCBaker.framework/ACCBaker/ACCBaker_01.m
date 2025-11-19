void sub_23C381A34(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_23C36BF7C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_23C381A84(void *a1, _BYTE *a2, _BYTE *a3)
{
  v5 = a1;
  v7 = *a1;
  v6 = a1[1];
  v8 = *a1;
  if (*a1 != v6)
  {
    while (!*v8)
    {
      if (++v8 == v6)
      {
        v8 = a1[1];
        break;
      }
    }
  }

  v51 = &a3[a2];
  if (!a3)
  {
    goto LABEL_16;
  }

  v9 = a3;
  v10 = a2;
  while (*v10 != 8)
  {
    ++v10;
    if (!--v9)
    {
      v10 = &a3[a2];
      break;
    }
  }

  if ((v10 - a2) == a3)
  {
    goto LABEL_16;
  }

  v11 = a3;
  v12 = a2;
  while (*v12 != 110)
  {
    ++v12;
    if (!--v11)
    {
      v12 = &a3[a2];
      break;
    }
  }

  v13 = (v12 - a2);
  v14 = *a1;
  if (v13 == a3)
  {
LABEL_16:
    if (sub_23C3A46B0("/Library/Caches/com.apple.xbs/Sources/ACCBaker/library/AppCode/Codec/src/Version.cpp", 0x2Bu, "Contains(excluded, Version::kVersion2) && Contains(excluded, Version::kVersion4)", 80, &unk_23C3DB41A, 0, sub_23C3A4EB4))
    {
      abort();
    }

    v14 = *v5;
    v6 = *(v5 + 8);
  }

  v15 = &v14[v8 - v7];
  if (v6 != v15)
  {
    if (((v6 - v15) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23C36C1E0();
  }

  v16 = 0;
  v52 = 0;
  v50 = v5;
  do
  {
    v18 = byte_23C3C3F10[v16];
    v19 = a2;
    if (a3)
    {
      v20 = a3;
      v19 = a2;
      while (*v19 != v18)
      {
        ++v19;
        if (!--v20)
        {
          v19 = v51;
          break;
        }
      }
    }

    if ((v19 - a2) != a3)
    {
      goto LABEL_24;
    }

    v21 = v18 > 0x10 || ((1 << v18) & 0x10101) == 0;
    if (!v21 || v18 == 110 || v18 == 64)
    {
      v22 = 1;
      v23 = byte_23C3C3F10[v16];
    }

    else
    {
      v23 = 0;
      v22 = 0;
    }

    v65 = v23 | (v22 << 8);
    sub_23C37F940(v5, &v65, &v53);
    sub_23C37FDA4(&v53, &v65, __p);
    if (v53)
    {
      operator delete(v53);
    }

    if (v64)
    {
      if ((v65 & 0x100) == 0)
      {
        sub_23C36FC14();
      }

      v24 = sub_23C36F7F4(__p);
      v53 = &v65;
      sub_23C377EE8(&v54, v24);
      v25 = *v53;
      v26 = v25 - 8;
      if (v25 == 8 || v25 == 16)
      {
        v27 = 19;
      }

      else if (v25 == 64)
      {
        v27 = 11;
      }

      else
      {
        v27 = 9;
      }

      sub_23C379870(&v53, v67);
      if (v67[1])
      {
        sub_23C379870(&v53, v66);
        v28 = v66[1];
        if (v66[0])
        {
          operator delete(v66[0]);
        }

        v29 = 1 - v28;
        v30 = v67[0];
        if (!v67[0])
        {
          goto LABEL_55;
        }
      }

      else
      {
        v29 = 0;
        v30 = v67[0];
        if (!v67[0])
        {
          goto LABEL_55;
        }
      }

      operator delete(v30);
LABEL_55:
      if ((v26 & 0xF7) != 0)
      {
        v31 = 8;
      }

      else
      {
        v31 = 5;
      }

      v32 = *v53;
      if (v32 == 8)
      {
        goto LABEL_61;
      }

      if (v32 == 110)
      {
        v33 = 0;
        v34 = 0;
        goto LABEL_70;
      }

      v33 = 8;
      if (v32 == 16)
      {
LABEL_61:
        v33 = 6;
      }

      if (v32 == 8)
      {
        operator new();
      }

      if (v32 == 16)
      {
        v34 = 9;
      }

      else
      {
        v34 = 5;
      }

LABEL_70:
      v35 = (v27 * v31 + v29 + v33 * v34 + 7) >> 3;
      v36 = v52;
      v37 = v52 >> 4;
      if (((v52 >> 4) + 1) >> 60)
      {
        sub_23C36C1E0();
      }

      if (v52 >> 4 != -1)
      {
        if (!(((v52 >> 4) + 1) >> 60))
        {
          operator new();
        }

        sub_23C36C8AC();
      }

      v38 = 16 * v37;
      *v38 = v18;
      *(v38 + 8) = v35;
      v52 = 16 * v37 + 16;
      memcpy(0, 0, v36);
      v5 = v50;
      if (v54)
      {
        operator delete(v54);
      }

      if (v64)
      {
        v17 = __p[0];
        if (!__p[0])
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

    if (v63 != 1)
    {
      goto LABEL_24;
    }

    if (v62 == 1)
    {
      if (v61 < 0)
      {
        operator delete(v60);
        if (v59 < 0)
        {
LABEL_85:
          operator delete(v58);
          if (v57 != 1)
          {
            goto LABEL_24;
          }

          goto LABEL_82;
        }
      }

      else if (v59 < 0)
      {
        goto LABEL_85;
      }
    }

    if (v57 != 1)
    {
      goto LABEL_24;
    }

LABEL_82:
    if (v56 < 0)
    {
      v17 = __p[2];
LABEL_23:
      operator delete(v17);
    }

LABEL_24:
    ++v16;
  }

  while (v16 != 5);
  v39 = v52 >> 4;
  v40 = 126 - 2 * __clz(v52 >> 4);
  if (v52)
  {
    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  sub_23C382368(0, v52, v41, 1);
  if (v52)
  {
    do
    {
      v42 = *(16 * (v39 >> 1) + 8);
      v39 >>= 1;
    }

    while (v39);
    v43 = *(v5 + 8);
    v44 = v43 - *v5;
    v45 = MEMORY[8] - v44;
    if (MEMORY[8] <= v44)
    {
      if (MEMORY[8] < v44)
      {
        *(v5 + 8) = *v5 + MEMORY[8];
      }
    }

    else
    {
      v46 = *(v5 + 16);
      if (v46 - v43 < v45)
      {
        if ((MEMORY[8] & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_23C36C1E0();
      }

      bzero(*(v5 + 8), MEMORY[8] - v44);
      *(v5 + 8) = v43 + v45;
    }

    v47 = MEMORY[0];
    v48 = 1;
  }

  else
  {
    v47 = 0;
    v48 = 0;
  }

  return v47 | (v48 << 8);
}

void sub_23C3822A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, void *a17, void *a18, uint64_t a19, uint64_t a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
    if (a11)
    {
LABEL_5:
      operator delete(a11);
      _Unwind_Resume(exception_object);
    }
  }

  else if (a11)
  {
    goto LABEL_5;
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_23C382368(unint64_t result, char *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = &a2[-v8] >> 4;
    if (v9 > 2)
    {
      break;
    }

    if (v9 < 2)
    {
      return result;
    }

    if (v9 == 2)
    {
      v82 = *(a2 - 1);
      v83 = *(v8 + 8);
      if (v82 < v83)
      {
        v84 = *v8;
        *v8 = *(a2 - 16);
        *(a2 - 16) = v84;
        *(v8 + 8) = v82;
        *(a2 - 1) = v83;
      }

      return result;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v95 = (v8 + 16);
      v97 = v8 == a2 || v95 == a2;
      if (a4)
      {
        if (!v97)
        {
          v98 = 0;
          v99 = v8;
          do
          {
            v101 = *(v99 + 3);
            v102 = *(v99 + 1);
            v99 = v95;
            if (v101 < v102)
            {
              v103 = *v95;
              v104 = v98;
              do
              {
                v105 = v8 + v104;
                *(v105 + 16) = *(v8 + v104);
                *(v105 + 24) = *(v8 + v104 + 8);
                if (!v104)
                {
                  v100 = v8;
                  goto LABEL_126;
                }

                v104 -= 16;
              }

              while (v101 < *(v105 - 8));
              v100 = v8 + v104 + 16;
LABEL_126:
              *v100 = v103;
              *(v100 + 8) = v101;
            }

            v95 = v99 + 16;
            v98 += 16;
          }

          while (v99 + 16 != a2);
        }
      }

      else if (!v97)
      {
        v145 = (v8 + 24);
        do
        {
          v146 = *(v7 + 24);
          v147 = *(v7 + 8);
          v7 = v95;
          if (v146 < v147)
          {
            v148 = *v95;
            v149 = v145;
            do
            {
              v150 = v149;
              *(v149 - 8) = *(v149 - 24);
              v151 = *(v149 - 2);
              v149 -= 2;
              *v150 = v151;
            }

            while (v146 < *(v150 - 4));
            *(v149 - 8) = v148;
            *v149 = v146;
          }

          v95 = (v7 + 16);
          v145 += 2;
        }

        while ((v7 + 16) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v106 = (v9 - 2) >> 1;
        v107 = v106;
        do
        {
          if (v106 >= v107)
          {
            v109 = (2 * (v107 & 0xFFFFFFFFFFFFFFFLL)) | 1;
            v110 = v8 + 16 * v109;
            if (2 * (v107 & 0xFFFFFFFFFFFFFFFLL) + 2 < v9)
            {
              v111 = *(v110 + 8);
              v112 = *(v110 + 24);
              v110 += 16 * (v111 < v112);
              if (v111 < v112)
              {
                v109 = 2 * (v107 & 0xFFFFFFFFFFFFFFFLL) + 2;
              }
            }

            v113 = v8 + 16 * v107;
            v114 = *(v110 + 8);
            v115 = *(v113 + 8);
            if (v114 >= v115)
            {
              v116 = *v113;
              do
              {
                v117 = v113;
                v113 = v110;
                *v117 = *v110;
                *(v117 + 8) = v114;
                if (v106 < v109)
                {
                  break;
                }

                v118 = (2 * (v109 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
                v110 = v8 + 16 * v118;
                v119 = 2 * v109 + 2;
                if (v119 < v9)
                {
                  v120 = *(v110 + 8);
                  result = *(v110 + 24);
                  v110 += 16 * (v120 < result);
                  if (v120 < result)
                  {
                    v118 = v119;
                  }
                }

                v114 = *(v110 + 8);
                v109 = v118;
              }

              while (v114 >= v115);
              *v113 = v116;
              *(v113 + 8) = v115;
            }
          }

          v108 = v107-- <= 0;
        }

        while (!v108);
        do
        {
          v121 = 0;
          v122 = *v8;
          v123 = *(v8 + 8);
          v124 = v8;
          do
          {
            v128 = v124 + 16 * v121;
            v127 = v128 + 16;
            v129 = (2 * v121) | 1;
            v121 = 2 * v121 + 2;
            if (v121 < v9)
            {
              v125 = *(v128 + 24);
              result = *(v128 + 40);
              v126 = v128 + 32;
              if (v125 >= result)
              {
                v121 = v129;
              }

              else
              {
                v127 = v126;
              }
            }

            else
            {
              v121 = v129;
            }

            *v124 = *v127;
            *(v124 + 8) = *(v127 + 8);
            v124 = v127;
          }

          while (v121 <= ((v9 - 2) >> 1));
          if (v127 == a2 - 16)
          {
            *v127 = v122;
            *(v127 + 8) = v123;
          }

          else
          {
            *v127 = *(a2 - 16);
            *(v127 + 8) = *(a2 - 1);
            *(a2 - 16) = v122;
            *(a2 - 1) = v123;
            v130 = (v127 - v8 + 16) >> 4;
            v108 = v130 < 2;
            v131 = v130 - 2;
            if (!v108)
            {
              v132 = v131 >> 1;
              v133 = v8 + 16 * (v131 >> 1);
              v134 = *(v133 + 8);
              v135 = *(v127 + 8);
              if (v134 < v135)
              {
                v136 = *v127;
                do
                {
                  v137 = v127;
                  v127 = v133;
                  *v137 = *v133;
                  *(v137 + 8) = v134;
                  if (!v132)
                  {
                    break;
                  }

                  v132 = (v132 - 1) >> 1;
                  v133 = v8 + 16 * v132;
                  v134 = *(v133 + 8);
                }

                while (v134 < v135);
                *v127 = v136;
                *(v127 + 8) = v135;
              }
            }
          }

          a2 -= 16;
          v108 = v9-- <= 2;
        }

        while (!v108);
      }

      return result;
    }

    v10 = v8 + 16 * (v9 >> 1);
    v11 = *(a2 - 1);
    if (v9 < 0x81)
    {
      v15 = *(v8 + 8);
      v16 = *(v10 + 8);
      if (v15 < v16)
      {
        v17 = *v10;
        if (v11 < v15)
        {
          *v10 = *(a2 - 16);
          *(a2 - 16) = v17;
          *(v10 + 8) = v11;
          goto LABEL_37;
        }

        *v10 = *v8;
        *v8 = v17;
        *(v10 + 8) = v15;
        *(v8 + 8) = v16;
        v36 = *(a2 - 1);
        if (v36 < v16)
        {
          *v8 = *(a2 - 16);
          *(a2 - 16) = v17;
          *(v8 + 8) = v36;
LABEL_37:
          *(a2 - 1) = v16;
        }

LABEL_38:
        --a3;
        if ((a4 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_39;
      }

      if (v11 >= v15)
      {
        goto LABEL_38;
      }

      v22 = *v8;
      *v8 = *(a2 - 16);
      *(a2 - 16) = v22;
      *(v8 + 8) = v11;
      *(a2 - 1) = v15;
      v23 = *(v8 + 8);
      v24 = *(v10 + 8);
      if (v23 >= v24)
      {
        goto LABEL_38;
      }

      v25 = *v10;
      *v10 = *v8;
      *v8 = v25;
      *(v10 + 8) = v23;
      *(v8 + 8) = v24;
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_63;
      }

LABEL_39:
      v37 = *v8;
      v38 = *(v8 + 8);
LABEL_64:
      v57 = 0;
      do
      {
        v58 = *(v8 + v57 + 24);
        v57 += 16;
      }

      while (v58 < v38);
      v59 = v8 + v57;
      v60 = a2;
      if (v57 == 16)
      {
        v63 = a2;
        while (v59 < v63)
        {
          v61 = v63 - 16;
          v64 = *(v63 - 1);
          v63 -= 16;
          if (v64 < v38)
          {
            goto LABEL_72;
          }
        }

        v61 = v63;
        v8 = v59;
      }

      else
      {
        do
        {
          v61 = v60 - 16;
          v62 = *(v60 - 1);
          v60 -= 16;
        }

        while (v62 >= v38);
LABEL_72:
        v8 = v59;
        if (v59 < v61)
        {
          v65 = v61;
          do
          {
            v66 = *v8;
            *v8 = *v65;
            *v65 = v66;
            v67 = *(v8 + 8);
            *(v8 + 8) = *(v65 + 8);
            *(v65 + 8) = v67;
            do
            {
              v68 = *(v8 + 24);
              v8 += 16;
            }

            while (v68 < v38);
            do
            {
              v69 = *(v65 - 8);
              v65 -= 16;
            }

            while (v69 >= v38);
          }

          while (v8 < v65);
        }
      }

      if (v8 - 16 != v7)
      {
        *v7 = *(v8 - 16);
        *(v7 + 8) = *(v8 - 8);
      }

      *(v8 - 16) = v37;
      *(v8 - 8) = v38;
      if (v59 < v61)
      {
        goto LABEL_83;
      }

      v70 = sub_23C383190(v7, (v8 - 16));
      result = sub_23C383190(v8, a2);
      if (result)
      {
        a2 = (v8 - 16);
        if (!v70)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v70)
      {
LABEL_83:
        result = sub_23C382368(v7, v8 - 16, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v12 = *(v10 + 8);
      v13 = *(v8 + 8);
      if (v12 >= v13)
      {
        if (v11 < v12)
        {
          v18 = *v10;
          *v10 = *(a2 - 16);
          *(a2 - 16) = v18;
          *(v10 + 8) = v11;
          *(a2 - 1) = v12;
          v19 = *(v10 + 8);
          v20 = *(v8 + 8);
          if (v19 < v20)
          {
            v21 = *v8;
            *v8 = *v10;
            *v10 = v21;
            *(v8 + 8) = v19;
            *(v10 + 8) = v20;
          }
        }
      }

      else
      {
        v14 = *v8;
        if (v11 >= v12)
        {
          *v8 = *v10;
          *v10 = v14;
          *(v8 + 8) = v12;
          *(v10 + 8) = v13;
          v26 = *(a2 - 1);
          if (v26 >= v13)
          {
            goto LABEL_29;
          }

          *v10 = *(a2 - 16);
          *(a2 - 16) = v14;
          *(v10 + 8) = v26;
        }

        else
        {
          *v8 = *(a2 - 16);
          *(a2 - 16) = v14;
          *(v8 + 8) = v11;
        }

        *(a2 - 1) = v13;
      }

LABEL_29:
      v27 = (v10 - 16);
      v28 = *(v10 - 8);
      v29 = *(v8 + 24);
      v30 = *(a2 - 3);
      if (v28 >= v29)
      {
        if (v30 < v28)
        {
          v32 = *v27;
          *v27 = *(a2 - 32);
          *(a2 - 32) = v32;
          *(v10 - 8) = v30;
          *(a2 - 3) = v28;
          v33 = *(v10 - 8);
          v34 = *(v8 + 24);
          if (v33 < v34)
          {
            v35 = *(v8 + 16);
            *(v8 + 16) = *v27;
            *v27 = v35;
            *(v8 + 24) = v33;
            *(v10 - 8) = v34;
          }
        }
      }

      else
      {
        v31 = *(v8 + 16);
        if (v30 >= v28)
        {
          *(v8 + 16) = *v27;
          *v27 = v31;
          *(v8 + 24) = v28;
          *(v10 - 8) = v29;
          v39 = *(a2 - 3);
          if (v39 >= v29)
          {
            goto LABEL_43;
          }

          *v27 = *(a2 - 32);
          *(a2 - 32) = v31;
          *(v10 - 8) = v39;
        }

        else
        {
          *(v8 + 16) = *(a2 - 32);
          *(a2 - 32) = v31;
          *(v8 + 24) = v30;
        }

        *(a2 - 3) = v29;
      }

LABEL_43:
      v40 = *(v10 + 24);
      v41 = *(v8 + 40);
      v42 = *(a2 - 5);
      if (v40 >= v41)
      {
        if (v42 < v40)
        {
          v44 = *(v10 + 16);
          *(v10 + 16) = *(a2 - 48);
          *(a2 - 48) = v44;
          *(v10 + 24) = v42;
          *(a2 - 5) = v40;
          v45 = *(v10 + 24);
          v46 = *(v8 + 40);
          if (v45 < v46)
          {
            v47 = *(v8 + 32);
            *(v8 + 32) = *(v10 + 16);
            *(v10 + 16) = v47;
            *(v8 + 40) = v45;
            *(v10 + 24) = v46;
          }
        }
      }

      else
      {
        v43 = *(v8 + 32);
        if (v42 >= v40)
        {
          *(v8 + 32) = *(v10 + 16);
          *(v10 + 16) = v43;
          *(v8 + 40) = v40;
          *(v10 + 24) = v41;
          v48 = *(a2 - 5);
          if (v48 >= v41)
          {
            goto LABEL_52;
          }

          *(v10 + 16) = *(a2 - 48);
          *(a2 - 48) = v43;
          *(v10 + 24) = v48;
        }

        else
        {
          *(v8 + 32) = *(a2 - 48);
          *(a2 - 48) = v43;
          *(v8 + 40) = v42;
        }

        *(a2 - 5) = v41;
      }

LABEL_52:
      v49 = *(v10 + 8);
      v50 = *(v10 - 8);
      v51 = *(v10 + 24);
      if (v49 >= v50)
      {
        v52 = *v10;
        if (v51 >= v49)
        {
          v50 = *(v10 + 8);
        }

        else
        {
          v53 = *(v10 + 16);
          *v10 = v53;
          *(v10 + 16) = v52;
          *(v10 + 8) = v51;
          *(v10 + 24) = v49;
          if (v51 >= v50)
          {
            v50 = v51;
            v52 = v53;
          }

          else
          {
            v52 = *v27;
            *v27 = v53;
            *v10 = v52;
            *(v10 - 8) = v51;
            *(v10 + 8) = v50;
          }
        }
      }

      else
      {
        v52 = *v27;
        if (v51 >= v49)
        {
          *v27 = *v10;
          *v10 = v52;
          *(v10 - 8) = v49;
          *(v10 + 8) = v50;
          if (v51 < v50)
          {
            v54 = *(v10 + 16);
            *v10 = v54;
            *(v10 + 16) = v52;
            *(v10 + 8) = v51;
            *(v10 + 24) = v50;
            v50 = v51;
            v52 = v54;
          }
        }

        else
        {
          *v27 = *(v10 + 16);
          *(v10 + 16) = v52;
          *(v10 - 8) = v51;
          *(v10 + 24) = v50;
          v52 = *v10;
          v50 = v49;
        }
      }

      v55 = *v8;
      *v8 = v52;
      *v10 = v55;
      v56 = *(v8 + 8);
      *(v8 + 8) = v50;
      *(v10 + 8) = v56;
      --a3;
      if (a4)
      {
        goto LABEL_39;
      }

LABEL_63:
      v38 = *(v8 + 8);
      v37 = *v8;
      if (*(v8 - 8) < v38)
      {
        goto LABEL_64;
      }

      if (v38 >= *(a2 - 1))
      {
        v73 = v8 + 16;
        do
        {
          v8 = v73;
          if (v73 >= a2)
          {
            break;
          }

          v74 = *(v73 + 8);
          v73 += 16;
        }

        while (v38 >= v74);
      }

      else
      {
        v71 = v8;
        do
        {
          v8 = v71 + 16;
          v72 = *(v71 + 24);
          v71 += 16;
        }

        while (v38 >= v72);
      }

      v75 = a2;
      if (v8 < a2)
      {
        v76 = a2;
        do
        {
          v75 = v76 - 16;
          v77 = *(v76 - 1);
          v76 -= 16;
        }

        while (v38 < v77);
      }

      while (v8 < v75)
      {
        v78 = *v8;
        *v8 = *v75;
        *v75 = v78;
        v79 = *(v8 + 8);
        *(v8 + 8) = *(v75 + 1);
        *(v75 + 1) = v79;
        do
        {
          v80 = *(v8 + 24);
          v8 += 16;
        }

        while (v38 >= v80);
        do
        {
          v81 = *(v75 - 1);
          v75 -= 16;
        }

        while (v38 < v81);
      }

      if (v8 - 16 != v7)
      {
        *v7 = *(v8 - 16);
        *(v7 + 8) = *(v8 - 8);
      }

      a4 = 0;
      *(v8 - 16) = v37;
      *(v8 - 8) = v38;
    }
  }

  if (v9 != 3)
  {
    if (v9 == 4)
    {
      v89 = (v8 + 24);
      v90 = *(v8 + 24);
      v92 = (v8 + 8);
      v91 = *(v8 + 8);
      v93 = *(v8 + 40);
      if (v90 >= v91)
      {
        if (v93 < v90)
        {
          v142 = *(v8 + 16);
          v143 = *(v8 + 32);
          *(v8 + 16) = v143;
          *(v8 + 32) = v142;
          *(v8 + 24) = v93;
          *(v8 + 40) = v90;
          if (v93 < v91)
          {
            v144 = *v8;
            *v8 = v143;
            *(v8 + 16) = v144;
            goto LABEL_184;
          }

LABEL_185:
          v93 = v90;
        }
      }

      else
      {
        v94 = *v8;
        if (v93 < v90)
        {
          *v8 = *(v8 + 32);
          *(v8 + 32) = v94;
          goto LABEL_183;
        }

        *v8 = *(v8 + 16);
        *(v8 + 16) = v94;
        *(v8 + 8) = v90;
        *(v8 + 24) = v91;
        if (v93 < v91)
        {
          *(v8 + 16) = *(v8 + 32);
          *(v8 + 32) = v94;
          v92 = (v8 + 24);
LABEL_183:
          v89 = (v8 + 40);
          v90 = v91;
LABEL_184:
          *v92 = v93;
          *v89 = v91;
          goto LABEL_185;
        }
      }

      v153 = *(a2 - 1);
      if (v153 < v93)
      {
        v154 = *(v8 + 32);
        *(v8 + 32) = *(a2 - 16);
        *(a2 - 16) = v154;
        *(v8 + 40) = v153;
        *(a2 - 1) = v93;
        v155 = *(v8 + 40);
        v156 = *(v8 + 24);
        if (v155 < v156)
        {
          v157 = *(v8 + 16);
          v158 = *(v8 + 32);
          *(v8 + 16) = v158;
          *(v8 + 32) = v157;
          *(v8 + 24) = v155;
          *(v8 + 40) = v156;
          v159 = *(v8 + 8);
          if (v155 < v159)
          {
            v160 = *v8;
            *v8 = v158;
            *(v8 + 16) = v160;
            *(v8 + 8) = v155;
            *(v8 + 24) = v159;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return sub_23C382F9C(v8, (v8 + 16), (v8 + 32), (v8 + 48), a2 - 16);
    }

    goto LABEL_10;
  }

  v85 = *(v8 + 24);
  v86 = *(v8 + 8);
  v87 = *(a2 - 1);
  if (v85 >= v86)
  {
    if (v87 < v85)
    {
      v138 = *(v8 + 16);
      *(v8 + 16) = *(a2 - 16);
      *(a2 - 16) = v138;
      *(v8 + 24) = v87;
      *(a2 - 1) = v85;
      v139 = *(v8 + 24);
      v140 = *(v8 + 8);
      if (v139 < v140)
      {
        v141 = *v8;
        *v8 = *(v8 + 16);
        *(v8 + 16) = v141;
        *(v8 + 8) = v139;
        *(v8 + 24) = v140;
      }
    }
  }

  else
  {
    v88 = *v8;
    if (v87 >= v85)
    {
      *v8 = *(v8 + 16);
      *(v8 + 16) = v88;
      *(v8 + 8) = v85;
      *(v8 + 24) = v86;
      v152 = *(a2 - 1);
      if (v152 >= v86)
      {
        return result;
      }

      *(v8 + 16) = *(a2 - 16);
      *(a2 - 16) = v88;
      *(v8 + 24) = v152;
    }

    else
    {
      *v8 = *(a2 - 16);
      *(a2 - 16) = v88;
      *(v8 + 8) = v87;
    }

    *(a2 - 1) = v86;
  }

  return result;
}

char *sub_23C382F9C(char *result, char *a2, char *a3, char *a4, char *a5)
{
  v5 = *(a2 + 1);
  v6 = *(result + 1);
  v7 = *(a3 + 1);
  if (v5 < v6)
  {
    v8 = *result;
    if (v7 >= v5)
    {
      *result = *a2;
      *a2 = v8;
      *(result + 1) = v5;
      *(a2 + 1) = v6;
      v5 = *(a3 + 1);
      if (v5 >= v6)
      {
        goto LABEL_11;
      }

      *a2 = *a3;
      *a3 = v8;
      *(a2 + 1) = v5;
    }

    else
    {
      *result = *a3;
      *a3 = v8;
      *(result + 1) = v7;
    }

    *(a3 + 1) = v6;
    v5 = v6;
LABEL_11:
    v13 = *(a4 + 1);
    if (v13 >= v5)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (v7 >= v5)
  {
    v5 = *(a3 + 1);
    v13 = *(a4 + 1);
    if (v13 >= v7)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v9 = *a2;
    *a2 = *a3;
    *a3 = v9;
    *(a2 + 1) = v7;
    *(a3 + 1) = v5;
    v10 = *(a2 + 1);
    v11 = *(result + 1);
    if (v10 >= v11)
    {
      goto LABEL_11;
    }

    v12 = *result;
    *result = *a2;
    *a2 = v12;
    *(result + 1) = v10;
    *(a2 + 1) = v11;
    v5 = *(a3 + 1);
    v13 = *(a4 + 1);
    if (v13 >= v5)
    {
      goto LABEL_16;
    }
  }

LABEL_12:
  v14 = *a3;
  *a3 = *a4;
  *a4 = v14;
  *(a3 + 1) = v13;
  *(a4 + 1) = v5;
  v15 = *(a3 + 1);
  v16 = *(a2 + 1);
  if (v15 < v16)
  {
    v17 = *a2;
    *a2 = *a3;
    *a3 = v17;
    *(a2 + 1) = v15;
    *(a3 + 1) = v16;
    v18 = *(a2 + 1);
    v19 = *(result + 1);
    if (v18 < v19)
    {
      v20 = *result;
      *result = *a2;
      *a2 = v20;
      *(result + 1) = v18;
      *(a2 + 1) = v19;
    }
  }

LABEL_16:
  v21 = *(a5 + 1);
  v22 = *(a4 + 1);
  if (v21 < v22)
  {
    v23 = *a4;
    *a4 = *a5;
    *a5 = v23;
    *(a4 + 1) = v21;
    *(a5 + 1) = v22;
    v24 = *(a4 + 1);
    v25 = *(a3 + 1);
    if (v24 < v25)
    {
      v26 = *a3;
      *a3 = *a4;
      *a4 = v26;
      *(a3 + 1) = v24;
      *(a4 + 1) = v25;
      v27 = *(a3 + 1);
      v28 = *(a2 + 1);
      if (v27 < v28)
      {
        v29 = *a2;
        *a2 = *a3;
        *a3 = v29;
        *(a2 + 1) = v27;
        *(a3 + 1) = v28;
        v30 = *(a2 + 1);
        v31 = *(result + 1);
        if (v30 < v31)
        {
          v32 = *result;
          *result = *a2;
          *a2 = v32;
          *(result + 1) = v30;
          *(a2 + 1) = v31;
        }
      }
    }
  }

  return result;
}

BOOL sub_23C383190(uint64_t a1, char *a2)
{
  v2 = &a2[-a1] >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v7 = *(a1 + 24);
      v8 = *(a1 + 8);
      v9 = *(a2 - 1);
      if (v7 >= v8)
      {
        if (v9 >= v7)
        {
          return 1;
        }

        v23 = *(a1 + 16);
        *(a1 + 16) = *(a2 - 16);
        *(a2 - 16) = v23;
        *(a1 + 24) = v9;
        *(a2 - 1) = v7;
        v24 = *(a1 + 24);
        v25 = *(a1 + 8);
        if (v24 >= v25)
        {
          return 1;
        }

        v26 = *a1;
        *a1 = *(a1 + 16);
        *(a1 + 16) = v26;
        *(a1 + 8) = v24;
        *(a1 + 24) = v25;
        return 1;
      }

      else
      {
        v10 = *a1;
        if (v9 >= v7)
        {
          *a1 = *(a1 + 16);
          *(a1 + 16) = v10;
          *(a1 + 8) = v7;
          *(a1 + 24) = v8;
          v33 = *(a2 - 1);
          if (v33 >= v8)
          {
            return 1;
          }

          *(a1 + 16) = *(a2 - 16);
          *(a2 - 16) = v10;
          *(a1 + 24) = v33;
          *(a2 - 1) = v8;
          return 1;
        }

        else
        {
          *a1 = *(a2 - 16);
          *(a2 - 16) = v10;
          *(a1 + 8) = v9;
          *(a2 - 1) = v8;
          return 1;
        }
      }
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        sub_23C382F9C(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2 - 16);
        return 1;
      }

LABEL_14:
      v11 = *(a1 + 24);
      v13 = (a1 + 8);
      v12 = *(a1 + 8);
      v15 = (a1 + 40);
      v14 = *(a1 + 40);
      if (v11 >= v12)
      {
        if (v14 >= v11)
        {
          goto LABEL_34;
        }

        v27 = *(a1 + 16);
        v28 = *(a1 + 32);
        *(a1 + 16) = v28;
        *(a1 + 32) = v27;
        *(a1 + 24) = v14;
        *(a1 + 40) = v11;
        if (v14 >= v12)
        {
          goto LABEL_34;
        }

        v29 = *a1;
        *a1 = v28;
        *(a1 + 16) = v29;
        v15 = (a1 + 24);
      }

      else
      {
        v16 = *a1;
        if (v14 >= v11)
        {
          *a1 = *(a1 + 16);
          *(a1 + 16) = v16;
          *(a1 + 8) = v11;
          *(a1 + 24) = v12;
          if (v14 >= v12)
          {
LABEL_34:
            v34 = (a1 + 48);
            if ((a1 + 48) == a2)
            {
              return 1;
            }

            v35 = 0;
            v36 = 0;
            v37 = (a1 + 32);
            while (1)
            {
              v38 = *(v34 + 1);
              if (v38 < *(v37 + 1))
              {
                break;
              }

LABEL_43:
              v37 = v34;
              v35 += 16;
              v34 += 16;
              if (v34 == a2)
              {
                return 1;
              }
            }

            v39 = *v34;
            v40 = v35;
            do
            {
              v41 = a1 + v40;
              *(v41 + 48) = *(a1 + v40 + 32);
              *(v41 + 56) = *(a1 + v40 + 40);
              if (v40 == -32)
              {
                *a1 = v39;
                *(a1 + 8) = v38;
                if (++v36 != 8)
                {
                  goto LABEL_43;
                }

                return v34 + 16 == a2;
              }

              v40 -= 16;
            }

            while (v38 < *(v41 + 24));
            v42 = a1 + v40;
            *(v42 + 48) = v39;
            *(v42 + 56) = v38;
            if (++v36 != 8)
            {
              goto LABEL_43;
            }

            return v34 + 16 == a2;
          }

          *(a1 + 16) = *(a1 + 32);
          *(a1 + 32) = v16;
          v13 = (a1 + 24);
        }

        else
        {
          *a1 = *(a1 + 32);
          *(a1 + 32) = v16;
        }
      }

      *v13 = v14;
      *v15 = v12;
      goto LABEL_34;
    }

    v17 = (a1 + 24);
    v18 = *(a1 + 24);
    v20 = (a1 + 8);
    v19 = *(a1 + 8);
    v21 = *(a1 + 40);
    if (v18 >= v19)
    {
      if (v21 >= v18)
      {
        goto LABEL_50;
      }

      v30 = *(a1 + 16);
      v31 = *(a1 + 32);
      *(a1 + 16) = v31;
      *(a1 + 32) = v30;
      *(a1 + 24) = v21;
      *(a1 + 40) = v18;
      if (v21 >= v19)
      {
        goto LABEL_49;
      }

      v32 = *a1;
      *a1 = v31;
      *(a1 + 16) = v32;
    }

    else
    {
      v22 = *a1;
      if (v21 >= v18)
      {
        *a1 = *(a1 + 16);
        *(a1 + 16) = v22;
        *(a1 + 8) = v18;
        *(a1 + 24) = v19;
        if (v21 >= v19)
        {
          goto LABEL_50;
        }

        *(a1 + 16) = *(a1 + 32);
        *(a1 + 32) = v22;
        v20 = (a1 + 24);
      }

      else
      {
        *a1 = *(a1 + 32);
        *(a1 + 32) = v22;
      }

      v17 = (a1 + 40);
      v18 = v19;
    }

    *v20 = v21;
    *v17 = v19;
LABEL_49:
    v21 = v18;
LABEL_50:
    v43 = *(a2 - 1);
    if (v43 >= v21)
    {
      return 1;
    }

    v44 = *(a1 + 32);
    *(a1 + 32) = *(a2 - 16);
    *(a2 - 16) = v44;
    *(a1 + 40) = v43;
    *(a2 - 1) = v21;
    v45 = *(a1 + 40);
    v46 = *(a1 + 24);
    if (v45 >= v46)
    {
      return 1;
    }

    v47 = *(a1 + 16);
    v48 = *(a1 + 32);
    *(a1 + 16) = v48;
    *(a1 + 32) = v47;
    *(a1 + 24) = v45;
    *(a1 + 40) = v46;
    v49 = *(a1 + 8);
    if (v45 >= v49)
    {
      return 1;
    }

    v50 = *a1;
    *a1 = v48;
    *(a1 + 16) = v50;
    *(a1 + 8) = v45;
    *(a1 + 24) = v49;
    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
    goto LABEL_14;
  }

  v4 = *(a2 - 1);
  v5 = *(a1 + 8);
  if (v4 >= v5)
  {
    return 1;
  }

  v6 = *a1;
  *a1 = *(a2 - 16);
  *(a2 - 16) = v6;
  *(a1 + 8) = v4;
  *(a2 - 1) = v5;
  return 1;
}

void sub_23C38359C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_23C38382C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_23C38E7E0(a12);
  v15 = *v13;
  if (*v13)
  {
    *(v12 + 40) = v15;
    operator delete(v15);
  }

  sub_23C3838A4(v12);
  _Unwind_Resume(a1);
}

uint64_t sub_23C3838A4(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(v2 + 8);
  v4 = v3[11];
  if (v4)
  {
    v5 = (v4 - 80);
  }

  else
  {
    v5 = 0;
  }

  if (v5 != v3)
  {
    do
    {
      v6 = v5[11];
      if (v6)
      {
        v7 = (v6 - 80);
      }

      else
      {
        v7 = 0;
      }

      sub_23C38EA34(v5);
      operator delete(v5);
      v3 = *(v2 + 8);
      v5 = v7;
    }

    while (v7 != v3);
  }

  operator delete(v3);
  MEMORY[0x23EECF470](v2, 0x1020C402FC1992ELL);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_23C383960(_BYTE *a1, unsigned __int8 *a2)
{
  sub_23C372208(v23);
  v4 = sub_23C372684(&v24, "#", 1);
  v5 = *v4;
  v6 = *v4;
  *(v4 + *(*v4 - 24) + 8) &= ~0x4000u;
  *(v4 + *(v6 - 24) + 24) = 2;
  v7 = (v4 + *(v6 - 24));
  if (v7[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v7);
    v8 = std::locale::use_facet(&v36, MEMORY[0x277D82680]);
    v9 = (v8->__vftable[2].~facet_0)(v8, 32);
    std::locale::~locale(&v36);
    v7[1].__fmtflags_ = v9;
    v5 = *v4;
  }

  v7[1].__fmtflags_ = 48;
  *(v4 + *(v5 - 24) + 8) = *(v4 + *(v5 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x23EECF230](v4, *a2);
  v10 = v24;
  v11 = v24;
  *(&v24 + *(v24 - 24) + 8) &= ~0x4000u;
  *(v27 + *(v11 - 24)) = 2;
  v12 = (&v24 + *(v11 - 24));
  if (v12[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v12);
    v13 = std::locale::use_facet(&v36, MEMORY[0x277D82680]);
    (v13->__vftable[2].~facet_0)(v13, 32);
    std::locale::~locale(&v36);
    v10 = v24;
  }

  v12[1].__fmtflags_ = 48;
  *(&v24 + *(v10 - 24) + 8) = *(&v24 + *(v10 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x23EECF230](&v24, a2[1]);
  v14 = v24;
  v15 = v24;
  *(&v24 + *(v24 - 24) + 8) &= ~0x4000u;
  *(v27 + *(v15 - 24)) = 2;
  v16 = (&v24 + *(v15 - 24));
  if (v16[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v16);
    v17 = std::locale::use_facet(&v36, MEMORY[0x277D82680]);
    (v17->__vftable[2].~facet_0)(v17, 32);
    std::locale::~locale(&v36);
    v14 = v24;
  }

  v16[1].__fmtflags_ = 48;
  *(&v24 + *(v14 - 24) + 8) = *(&v24 + *(v14 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x23EECF230](&v24, a2[2]);
  if ((v34 & 0x10) != 0)
  {
    v19 = v33;
    if (v33 < v30)
    {
      v33 = v30;
      v19 = v30;
    }

    v20 = __src;
    v18 = v19 - __src;
    if (v19 - __src >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v34 & 8) == 0)
    {
      v18 = 0;
      a1[23] = 0;
      goto LABEL_18;
    }

    v20 = v27[0];
    v18 = v28 - v27[0];
    if ((v28 - v27[0]) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_23C36FA14();
    }
  }

  if (v18 >= 0x17)
  {
    operator new();
  }

  a1[23] = v18;
  if (v18)
  {
    memmove(a1, v20, v18);
  }

LABEL_18:
  a1[v18] = 0;
  v23[0] = *MEMORY[0x277D82818];
  v21 = *(MEMORY[0x277D82818] + 72);
  *(v23 + *(v23[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v24 = v21;
  v25 = MEMORY[0x277D82878] + 16;
  if (v32 < 0)
  {
    operator delete(__p);
  }

  v25 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v26);
  std::iostream::~basic_iostream();
  return MEMORY[0x23EECF3E0](&v35);
}

void sub_23C383ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 72));
  sub_23C383F4C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_23C383F4C(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x23EECF3E0](a1 + 128);
  return a1;
}

__n128 sub_23C3840A0(std::string *a1, std::string *a2, char *__s)
{
  v6 = strlen(__s);
  v7 = std::string::append(a2, __s, v6);
  result = *v7;
  *a1 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_23C384100(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    v4 = a1;
    sub_23C36FB58(&v11, *a2, *(a2 + 8));
    a1 = v4;
    v3 = *(a2 + 23) < 0;
  }

  else
  {
    v3 = 0;
    v11 = *a2;
    v12 = *(a2 + 16);
  }

  v13 = *(a2 + 24);
  v5 = &v11;
  if (v12 < 0)
  {
    v5 = v11;
  }

  if (v3)
  {
    v6 = *a2;
  }

  else
  {
    v6 = a2;
  }

  v14 = v5 + *(a2 + 32) - v6;
  result = sub_23C38F2C4(a1, &v11);
  if (!result)
  {
    sub_23C36F128(v9, "No such node");
    sub_23C390474(&v10, v9, a2);
  }

  if (SHIBYTE(v12) < 0)
  {
    v8 = result;
    operator delete(v11);
    return v8;
  }

  return result;
}

void sub_23C38422C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, std::runtime_error a19)
{
  sub_23C38F628(&a19);
  if (a18 < 0)
  {
    operator delete(__p);
    if ((*(v19 - 41) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v19 - 41) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v19 - 64));
  _Unwind_Resume(a1);
}

void sub_23C38428C(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_23C36FB58(a1, *a2, *(a2 + 1));
  }

  else
  {
    v2 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v2;
  }

  operator new();
}

void sub_23C384334(_Unwind_Exception *a1)
{
  operator delete(*(v2 + 8));
  MEMORY[0x23EECF470](v2, 0x1020C402FC1992ELL);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_23C384380(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_23C38721C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::locale a23, uint64_t a24, uint64_t a25, uint64_t a26, std::locale a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::locale::~locale(&a70);
  std::locale::~locale(&a27);
  std::locale::~locale(&a23);
  if (a36 < 0)
  {
    operator delete(__p);
    sub_23C3838A4(a11);
    _Unwind_Resume(a1);
  }

  sub_23C3838A4(a11);
  _Unwind_Resume(a1);
}

void sub_23C387A50(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    v6 = a1;
    sub_23C36FB58(v14, *a2, *(a2 + 8));
    a1 = v6;
    v5 = *(a2 + 23) < 0;
  }

  else
  {
    v5 = 0;
    *v14 = *a2;
    v15 = *(a2 + 16);
  }

  v16 = *(a2 + 24);
  v7 = v14;
  if (v15 < 0)
  {
    v7 = v14[0];
  }

  if (v5)
  {
    v8 = *a2;
  }

  else
  {
    v8 = a2;
  }

  v17 = v7 + *(a2 + 32) - v8;
  sub_23C391880(a1, v14);
  sub_23C38F39C(v12, v14);
  if (SHIBYTE(v13) < 0)
  {
    sub_23C36FB58(v9, v12[0], v12[1]);
  }

  else
  {
    *v9 = *v12;
    v10 = v13;
  }

  sub_23C38428C(&__p, a3);
}

void sub_23C387CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((a30 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a30 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a25);
  _Unwind_Resume(exception_object);
}

void sub_23C387D40(unsigned __int8 *a1, uint64_t a2)
{
  v52 = *MEMORY[0x277D85DE8];
  sub_23C383960(v47, a1);
  v45 = 11790;
  strcpy(v44, "<xmlattr>.fill");
  v46 = v44;
  sub_23C394868(&v43, a2, v44);
  v3 = v43.__r_.__value_.__r.__words[0];
  if (!v43.__r_.__value_.__r.__words[0])
  {
    goto LABEL_6;
  }

  v50 = 0;
  if (*(v43.__r_.__value_.__r.__words[0] + 23) < 0)
  {
    sub_23C36FB58(&__p, *v43.__r_.__value_.__l.__data_, *(v43.__r_.__value_.__r.__words[0] + 8));
  }

  else
  {
    v4 = *v43.__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = *(v43.__r_.__value_.__r.__words[0] + 16);
    *&__p.__r_.__value_.__l.__data_ = v4;
  }

  v50 = 1;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_6:
    v50 = 0;
    if ((v45 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    operator delete(v44[0]);
    if (v3)
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  v50 = 0;
  if (v45 < 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (v3)
  {
LABEL_8:
    v45 = 11790;
    strcpy(v44, "<xmlattr>.fill");
    v46 = v44;
    sub_23C38EBE0(a2, v44, v47);
    if ((v45 & 0x80000000) == 0)
    {
      goto LABEL_127;
    }

    v5 = v44[0];
    goto LABEL_126;
  }

LABEL_12:
  if ((v48 & 0x80u) == 0)
  {
    v6 = v48;
  }

  else
  {
    v6 = v47[1];
  }

  if (v6 + 5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C36FA14();
  }

  if (v6 + 5 >= 0x17)
  {
    operator new();
  }

  HIDWORD(v43.__r_.__value_.__r.__words[1]) = 0;
  v43.__r_.__value_.__r.__words[2] = 0;
  *(&v43.__r_.__value_.__s + 23) = v6 + 5;
  *(v43.__r_.__value_.__r.__words + 4) = 58;
  LODWORD(v43.__r_.__value_.__l.__data_) = 1819044198;
  if (v6)
  {
    if ((v48 & 0x80u) == 0)
    {
      v7 = v47;
    }

    else
    {
      v7 = v47[0];
    }

    memmove(v43.__r_.__value_.__r.__words + 5, v7, v6);
  }

  *(v43.__r_.__value_.__r.__words + v6 + 5) = 0;
  v45 = 11791;
  strcpy(v44, "<xmlattr>.style");
  v46 = v44;
  sub_23C394868(&v49, a2, v44);
  v8 = v49;
  if (v49)
  {
    v50 = 0;
    if (*(v49 + 23) < 0)
    {
      sub_23C36FB58(&__p, *v49, *(v49 + 1));
    }

    else
    {
      v9 = *v49;
      __p.__r_.__value_.__r.__words[2] = *(v49 + 2);
      *&__p.__r_.__value_.__l.__data_ = v9;
    }

    v8 = 1;
  }

  v50 = v8;
  if (v45 < 0)
  {
    operator delete(v44[0]);
    if ((v50 & 1) == 0)
    {
      goto LABEL_119;
    }
  }

  else if (!v8)
  {
    goto LABEL_119;
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    sub_23C37034C(&v43.__r_.__value_.__l.__data_, p_p, size);
  }

  else if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    sub_23C37027C(&v43, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v43 = __p;
  }

  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v43;
  }

  else
  {
    v12 = v43.__r_.__value_.__r.__words[0];
  }

  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = SHIBYTE(v43.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = v43.__r_.__value_.__l.__size_;
  }

  if (v13 >= 5)
  {
    v14 = v12;
    v15 = v12 + v13;
    v16 = v13;
    v17 = v12;
    while (1)
    {
      v18 = memchr(v17, 102, v16 - 4);
      if (!v18)
      {
        goto LABEL_71;
      }

      if (*v18 == 1819044198 && v18[4] == 58)
      {
        break;
      }

      v17 = (v18 + 1);
      v16 = v15 - v17;
      if (v15 - v17 < 5)
      {
        goto LABEL_71;
      }
    }

    if (v18 == v15 || v18 - v12 == -1)
    {
      goto LABEL_71;
    }

    if (v13 < 9)
    {
      goto LABEL_80;
    }

    v20 = v13;
    v21 = v12;
    while (1)
    {
      v22 = memchr(v21, 102, v20 - 8);
      if (!v22)
      {
        goto LABEL_80;
      }

      if (*v22 == 0x6E6F6E3A6C6C6966 && v22[8] == 101)
      {
        break;
      }

      v21 = (v22 + 1);
      v20 = v15 - v21;
      if (v15 - v21 < 9)
      {
        goto LABEL_80;
      }
    }

    if (v22 != v15 && v22 - v12 != -1)
    {
LABEL_71:
      if (v13 >= 7)
      {
        v24 = v13;
        v25 = v12;
        while (1)
        {
          v26 = memchr(v25, 115, v24 - 6);
          if (!v26)
          {
            break;
          }

          if (*v26 == 1869771891 && *(v26 + 3) == 979725167)
          {
            if (v26 == v15 || v26 - v12 == -1)
            {
              goto LABEL_119;
            }

            if (v13 < 11)
            {
              goto LABEL_101;
            }

            v33 = v13;
            v34 = v12;
            while (1)
            {
              v35 = memchr(v34, 115, v33 - 10);
              if (!v35)
              {
                goto LABEL_101;
              }

              if (*v35 == 0x6E3A656B6F727473 && *(v35 + 3) == 0x656E6F6E3A656B6FLL)
              {
                break;
              }

              v34 = (v35 + 1);
              v33 = v15 - v34;
              if (v15 - v34 < 11)
              {
                goto LABEL_101;
              }
            }

            if (v35 != v15 && v35 - v12 != -1)
            {
              goto LABEL_119;
            }

            do
            {
LABEL_101:
              v37 = memchr(v14, 115, v13 - 6);
              if (!v37)
              {
                break;
              }

              if (*v37 == 1869771891 && *(v37 + 3) == 979725167)
              {
                goto LABEL_108;
              }

              v14 = (v37 + 1);
              v13 = v15 - (v37 + 1);
            }

            while (v13 > 6);
            v37 = v15;
LABEL_108:
            v30 = v37 - v12 + 7;
            v31 = v37 == v15;
            v32 = 6;
            goto LABEL_109;
          }

          v25 = (v26 + 1);
          v24 = v15 - v25;
          if (v15 - v25 < 7)
          {
            goto LABEL_119;
          }
        }
      }

      goto LABEL_119;
    }

    do
    {
LABEL_80:
      v28 = memchr(v14, 102, v13 - 4);
      if (!v28)
      {
        break;
      }

      if (*v28 == 1819044198 && v28[4] == 58)
      {
        goto LABEL_87;
      }

      v14 = (v28 + 1);
      v13 = v15 - (v28 + 1);
    }

    while (v13 > 4);
    v28 = v15;
LABEL_87:
    v30 = v28 - v12 + 5;
    v31 = v28 == v15;
    v32 = 4;
LABEL_109:
    if (v31)
    {
      v39 = v32;
    }

    else
    {
      v39 = v30;
    }

    if ((v48 & 0x80u) == 0)
    {
      v40 = v48;
    }

    else
    {
      v40 = v47[1];
    }

    if ((v48 & 0x80u) == 0)
    {
      v41 = v47;
    }

    else
    {
      v41 = v47[0];
    }

    std::string::replace(&v43, v39, v40, v41, v40);
  }

LABEL_119:
  v45 = 11791;
  strcpy(v44, "<xmlattr>.style");
  v46 = v44;
  sub_23C38EBE0(a2, v44, &v43);
  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  if (v50 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    v5 = v43.__r_.__value_.__r.__words[0];
LABEL_126:
    operator delete(v5);
  }

LABEL_127:
  if (v48 < 0)
  {
    operator delete(v47[0]);
  }

  v42 = *MEMORY[0x277D85DE8];
}

void sub_23C3883A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_objecta, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a31 == 1 && a37 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(exception_objecta);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C388440(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    sub_23C36C1E0();
  }

  v10 = v3 - v6;
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

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    sub_23C36C8AC();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

uint64_t sub_23C388560(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    operator delete(v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_23C38B1AC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, std::locale a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  __cxa_end_catch();
  if (SLOBYTE(STACK[0x27F]) < 0)
  {
    operator delete(STACK[0x268]);
    if ((SLOBYTE(STACK[0x3AF]) & 0x80000000) == 0)
    {
LABEL_5:
      if (!a15)
      {
LABEL_10:
        sub_23C3838A4(&STACK[0x3B0]);
        sub_23C383F4C(&STACK[0x3D0]);
        if (a2 == 1)
        {
          __cxa_begin_catch(a1);
          sub_23C38E970(a16);
        }

        sub_23C3838A4(&a29);
        sub_23C3838A4(&a33);
        sub_23C3838A4(&a37);
        _Unwind_Resume(a1);
      }

LABEL_9:
      operator delete(a15);
      goto LABEL_10;
    }
  }

  else if ((SLOBYTE(STACK[0x3AF]) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(STACK[0x398]);
  if (!a15)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

uint64_t *sub_23C38BAD8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, int a4@<W4>, uint64_t a5@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) > 0xB8uLL)
  {
    v5 = *result;
    v19 = 11795;
    strcpy(__p, "circle.<xmlattr>.cx");
    *&v20 = __p;
    std::to_string(&v16, 400.0);
    sub_23C38EBE0(v5, __p, &v16);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
      if ((v19 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }
    }

    else if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    operator delete(*__p);
LABEL_5:
    v19 = 11795;
    strcpy(__p, "circle.<xmlattr>.cy");
    *&v20 = __p;
    std::to_string(&v16, 400.0);
    sub_23C38EBE0(v5, __p, &v16);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
      if ((v19 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    operator delete(*__p);
LABEL_7:
    v19 = 11795;
    strcpy(__p, "circle.<xmlattr>.id");
    *&v20 = __p;
    MEMORY[0x23EECF2D0](v17);
    std::locale::locale(v15, v17);
    sub_23C38ED4C(&__dst, v5, __p);
    v6 = __dst.__r_.__value_.__r.__words[0];
    if (!__dst.__r_.__value_.__r.__words[0])
    {
      memset(&v16, 0, sizeof(v16));
      operator new();
    }

    std::locale::locale(&v16, v15);
    sub_23C3921B8(v6, &v16);
    std::locale::~locale(&v16);
    std::locale::~locale(v15);
    std::locale::~locale(v17);
    if (v19 < 0)
    {
      operator delete(*__p);
    }

    v19 = 11794;
    strcpy(__p, "circle.<xmlattr>.r");
    *&v20 = __p;
    std::to_string(&v16, 400.0);
    sub_23C38EBE0(v5, __p, &v16);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
      if ((v19 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }
    }

    else if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    operator delete(*__p);
LABEL_18:
    strcpy(__p, "circle.<xmlattr>.style");
    v19 = 11798;
    *&v20 = __p;
    sub_23C383960(&__dst, a3);
    v7 = std::string::insert(&__dst, 0, "fill:", 5uLL);
    v16 = *v7;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    sub_23C38EBE0(v5, __p, &v16);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_20:
        if ((v19 & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_27;
      }
    }

    else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((v19 & 0x80000000) == 0)
    {
LABEL_21:
      if (!a4)
      {
LABEL_29:
        operator new();
      }

LABEL_28:
      sub_23C372208(__p);
      v8 = sub_23C372684(&__p[16], "translate(", 10);
      v9 = MEMORY[0x23EECF220](v8, -0.99);
      v10 = sub_23C372684(v9, " ", 1);
      v11 = MEMORY[0x23EECF220](v10, -3.8);
      sub_23C372684(v11, ")", 1);
      operator new();
    }

LABEL_27:
    operator delete(*__p);
    if (!a4)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  *a5 = 0;
  *(a5 + 24) = 0;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C38DF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, std::locale a46, uint64_t a47, uint64_t a48, std::locale a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  std::locale::~locale(&STACK[0x3F0]);
  std::locale::~locale((v60 - 152));
  std::locale::~locale(&a46);
  if (a60 < 0)
  {
    operator delete(__p);
  }

  sub_23C3838A4(&STACK[0x290]);
  sub_23C3838A4(&STACK[0x2B0]);
  sub_23C383F4C(&STACK[0x2D0]);
  sub_23C3838A4(&a42);
  _Unwind_Resume(a1);
}

void sub_23C38E47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  sub_23C388560(&STACK[0x3F0]);
  sub_23C38E7E0(&a55);
  sub_23C388560(&STACK[0x2D0]);
  sub_23C3838A4(&a42);
  _Unwind_Resume(a1);
}

void sub_23C38E4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  sub_23C388560(&STACK[0x2D0]);
  sub_23C3838A4(&a42);
  _Unwind_Resume(a1);
}

uint64_t sub_23C38E4C8(uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  *(a1 + 112) = MEMORY[0x277D828A0] + 64;
  v3 = a1 + 8;
  v4 = *(MEMORY[0x277D82828] + 16);
  v5 = *(MEMORY[0x277D82828] + 8);
  *a1 = v5;
  *(a1 + *(v5 - 24)) = v4;
  v6 = (a1 + *(*a1 - 24));
  std::ios_base::init(v6, (a1 + 8));
  v7 = MEMORY[0x277D828A0] + 24;
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  *a1 = v7;
  *(a1 + 112) = v2;
  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  MEMORY[0x23EECF2D0](a1 + 16);
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 16;
  sub_23C37253C(v3);
  return a1;
}

void sub_23C38E670(_Unwind_Exception *a1)
{
  if (*(v2 + 95) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 8) = v3;
  std::locale::~locale((v2 + 16));
  std::ostream::~ostream();
  MEMORY[0x23EECF3E0](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_23C38E6C0(uint64_t a1)
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
  MEMORY[0x23EECF3E0](a1 + 112);
  return a1;
}

uint64_t sub_23C38E7E0(uint64_t a1)
{
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

  v4 = *(a1 + 48);
  if (v4)
  {
    *(a1 + 56) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    *(a1 + 32) = v5;
    operator delete(v5);
  }

  v6 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v6;
    operator delete(v6);
  }

  return a1;
}

uint64_t sub_23C38E854(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    *(a1 + 160) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 128);
  if (v3)
  {
    *(a1 + 136) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 104);
  if (v4)
  {
    *(a1 + 112) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 80);
  if (v5)
  {
    *(a1 + 88) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    *(a1 + 64) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    *(a1 + 40) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 24);
  v9 = *(v8 + 8);
  v10 = v9[11];
  if (v10)
  {
    v11 = (v10 - 80);
  }

  else
  {
    v11 = 0;
  }

  if (v11 != v9)
  {
    do
    {
      v12 = v11[11];
      if (v12)
      {
        v13 = (v12 - 80);
      }

      else
      {
        v13 = 0;
      }

      sub_23C38EA34(v11);
      operator delete(v11);
      v9 = *(v8 + 8);
      v11 = v13;
    }

    while (v13 != v9);
  }

  operator delete(v9);
  MEMORY[0x23EECF470](v8, 0x1020C402FC1992ELL);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_23C38E970(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_23C38E9F8(_Unwind_Exception *a1)
{
  MEMORY[0x23EECF470](v2, 0x1020C402FC1992ELL);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_23C38EA34(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(v2 + 8);
  v4 = v3[11];
  if (v4)
  {
    v5 = (v4 - 80);
  }

  else
  {
    v5 = 0;
  }

  if (v5 != v3)
  {
    do
    {
      v6 = v5[11];
      if (v6)
      {
        v7 = (v6 - 80);
      }

      else
      {
        v7 = 0;
      }

      sub_23C38EA34(v5);
      operator delete(v5);
      v3 = *(v2 + 8);
      v5 = v7;
    }

    while (v7 != v3);
  }

  operator delete(v3);
  MEMORY[0x23EECF470](v2, 0x1020C402FC1992ELL);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return;
    }
  }

  else if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return;
  }

  v8 = *a1;

  operator delete(v8);
}

uint64_t sub_23C38EB0C(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(v2 + 8);
  v4 = v3[11];
  if (v4)
  {
    v5 = (v4 - 80);
  }

  else
  {
    v5 = 0;
  }

  if (v5 != v3)
  {
    do
    {
      v6 = v5[11];
      if (v6)
      {
        v7 = (v6 - 80);
      }

      else
      {
        v7 = 0;
      }

      sub_23C38EA34(v5);
      operator delete(v5);
      v3 = *(v2 + 8);
      v5 = v7;
    }

    while (v7 != v3);
  }

  operator delete(v3);
  MEMORY[0x23EECF470](v2, 0x1020C402FC1992ELL);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*a1);
  return a1;
}

void sub_23C38EBE0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  sub_23C38ED4C(&v5, a1, a2);
  v4 = v5;
  if (!v5)
  {
    operator new();
  }

  sub_23C38EE48(v4, a3);
}

void sub_23C38ED20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23C3838A4(va);
  _Unwind_Resume(a1);
}

void sub_23C38ED4C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    sub_23C36FB58(__p, *a3, *(a3 + 8));
    v6 = *(a3 + 23) < 0;
  }

  else
  {
    v6 = 0;
    *__p = *a3;
    v10 = *(a3 + 16);
  }

  v11 = *(a3 + 24);
  v7 = __p;
  if (v10 < 0)
  {
    v7 = __p[0];
  }

  if (v6)
  {
    v8 = *a3;
  }

  else
  {
    v8 = a3;
  }

  v12 = v7 + *(a3 + 32) - v8;
  *a1 = sub_23C38F2C4(a2, __p);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_23C38EE2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C38EE48(__int128 *a1, __int128 *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = a1;
    sub_23C36FB58(&__p, *a2, *(a2 + 1));
    a1 = v2;
    if (&__p == v2)
    {
      goto LABEL_16;
    }

LABEL_5:
    if (*(a1 + 23) < 0)
    {
      if (v7 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v7 >= 0)
      {
        v4 = HIBYTE(v7);
      }

      else
      {
        v4 = *(&__p + 1);
      }

      sub_23C37034C(a1, p_p, v4);
    }

    else if (v7 < 0)
    {
      sub_23C37027C(a1, __p, *(&__p + 1));
    }

    else
    {
      *a1 = __p;
      *(a1 + 2) = v7;
    }

    goto LABEL_16;
  }

  __p = *a2;
  v7 = *(a2 + 2);
  if (&__p != a1)
  {
    goto LABEL_5;
  }

LABEL_16:
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_23C38EF60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a10 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C38EF88(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    v6 = a1;
    sub_23C36FB58(v17, *a2, *(a2 + 8));
    a1 = v6;
    v5 = *(a2 + 23) < 0;
  }

  else
  {
    v5 = 0;
    *v17 = *a2;
    v18 = *(a2 + 16);
  }

  v19 = *(a2 + 24);
  v7 = v17;
  if (v18 < 0)
  {
    v7 = v17[0];
  }

  if (v5)
  {
    v8 = *a2;
  }

  else
  {
    v8 = a2;
  }

  v20 = v7 + *(a2 + 32) - v8;
  v9 = sub_23C391880(a1, v17);
  sub_23C38F39C(v15, v17);
  v10 = *(*(v9 + 24) + 8);
  v11 = sub_23C390AA4(v10, v15);
  if (v10 != v11)
  {
    sub_23C38B9EC((v11 + 3), a3);
  }

  if (SHIBYTE(v16) < 0)
  {
    sub_23C36FB58(v12, v15[0], v15[1]);
  }

  else
  {
    *v12 = *v15;
    v13 = v16;
  }

  sub_23C38428C(&__p, a3);
}

void sub_23C38F224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if (a30 < 0)
    {
LABEL_6:
      operator delete(a25);
      _Unwind_Resume(exception_object);
    }
  }

  else if (a30 < 0)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23C38F2C4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) == 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (*(a2 + 32) != v3 + v2)
  {
    v4 = result;
    sub_23C38F39C(__p, a2);
    v6 = *(*(v4 + 24) + 8);
    v7 = sub_23C390AA4(v6, __p);
    if (v6 != v7)
    {
      result = sub_23C38F2C4(v7 + 3, a2);
      if ((v10 & 0x80000000) == 0)
      {
        return result;
      }

LABEL_11:
      v8 = result;
      operator delete(__p[0]);
      return v8;
    }

    result = 0;
    if (v10 < 0)
    {
      goto LABEL_11;
    }
  }

  return result;
}

void sub_23C38F380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C38F39C(uint64_t a1, uint64_t *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a2[4];
  v5 = *(a2 + 23);
  if (v5 < 0)
  {
    v6 = *a2;
    v5 = a2[1];
  }

  else
  {
    v6 = a2;
  }

  v7 = v6 + v5;
  v8 = memchr(v4, *(a2 + 24), v6 + v5 - v4);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v10 = v9 - v4;
  if ((v9 - v4) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C36FA14();
  }

  if (v10 > 0x16)
  {
    operator new();
  }

  HIBYTE(v15) = v9 - v4;
  if (v9 != v4)
  {
    memmove(v14, v4, v9 - v4);
  }

  *(v14 + v10) = 0;
  a2[4] = v9;
  v11 = *(a2 + 23);
  if ((v11 & 0x8000000000000000) == 0)
  {
    if (v9 == a2 + v11)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v9 != (*a2 + a2[1]))
  {
LABEL_15:
    a2[4] = (v9 + 1);
  }

LABEL_16:
  v16 = 0;
  v12 = SHIBYTE(v15);
  if (SHIBYTE(v15) < 0)
  {
    sub_23C36FB58(&__p, v14[0], v14[1]);
  }

  else
  {
    __p = *v14;
    v18 = v15;
  }

  v16 = 1;
  if (SHIBYTE(v18) < 0)
  {
    sub_23C36FB58(a1, __p, *(&__p + 1));
    if ((v16 & 1) != 0 && SHIBYTE(v18) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    *a1 = __p;
    *(a1 + 16) = v18;
  }

  if (v12 < 0)
  {
    operator delete(v14[0]);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_23C38F580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a12 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  if (v18 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C38F5C0(const std::runtime_error *a1, int8x16_t *a2)
{
  exception = __cxa_allocate_exception(0x48uLL);
  sub_23C38F6A8(exception, a1, a2);
  __cxa_throw(exception, &unk_284F01870, sub_23C38F7D4);
}

void sub_23C38F628(std::runtime_error *a1)
{
  a1->__vftable = &unk_284F01970;
  v2 = a1[1].__vftable;
  if (v2)
  {
    v3 = a1;
    (*(v2->~runtime_error + 1))(a1[1].__vftable);
    a1 = v3;
    v1 = vars8;
  }

  std::runtime_error::~runtime_error(a1);
}

uint64_t sub_23C38F6A8(uint64_t a1, const std::runtime_error *a2, int8x16_t *a3)
{
  *a1 = &unk_284F01940;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 8) = &unk_284F01970;
  v6 = a2[1].__vftable;
  if (v6)
  {
    v6 = (*(*v6 + 24))(v6);
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *a1 = &unk_284F018C8;
  *(a1 + 8) = &unk_284F018F8;
  *(a1 + 24) = v6;
  *(a1 + 32) = &unk_284F01920;
  *(a1 + 64) = a3[1].i32[0];
  *(a1 + 48) = vextq_s8(*a3, *a3, 8uLL);
  return a1;
}

uint64_t sub_23C38F7D4(uint64_t a1)
{
  *(a1 + 32) = &unk_284F019C0;
  v2 = *(a1 + 40);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 40) = 0;
  }

  *(a1 + 8) = &unk_284F01970;
  v3 = *(a1 + 24);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

void sub_23C38F8A4(std::runtime_error *a1)
{
  a1->__vftable = &unk_284F01970;
  v2 = a1[1].__vftable;
  if (v2)
  {
    v3 = a1;
    (*(v2->~runtime_error + 1))(a1[1].__vftable);
    a1 = v3;
    v1 = vars8;
  }

  std::runtime_error::~runtime_error(a1);
}

void sub_23C38FAAC(_Unwind_Exception *a1)
{
  sub_23C38F8A4(v3);
  MEMORY[0x23EECF470](v1, v2);
  _Unwind_Resume(a1);
}

void sub_23C38FACC(_Unwind_Exception *a1)
{
  std::runtime_error::~runtime_error(v3);
  MEMORY[0x23EECF470](v1, v2);
  _Unwind_Resume(a1);
}

void sub_23C38FB20(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  sub_23C39012C(exception, a1);
  __cxa_throw(exception, &unk_284F01870, sub_23C38F7D4);
}

void sub_23C38FB7C(uint64_t a1)
{
  *(a1 + 32) = &unk_284F019C0;
  v2 = *(a1 + 40);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 40) = 0;
  }

  *(a1 + 8) = &unk_284F01970;
  v3 = *(a1 + 24);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::runtime_error::~runtime_error((a1 + 8));

  JUMPOUT(0x23EECF470);
}

void sub_23C38FC6C(std::runtime_error *this)
{
  this[1].__imp_.__imp_ = &unk_284F019C0;
  v2 = this[2].__vftable;
  if (v2 && (*(v2->~runtime_error + 4))(v2))
  {
    this[2].__vftable = 0;
  }

  this->__vftable = &unk_284F01970;
  v3 = this[1].__vftable;
  if (v3)
  {
    (*(v3->~runtime_error + 1))(v3);
  }

  std::runtime_error::~runtime_error(this);
}

void sub_23C38FD40(std::runtime_error *this)
{
  this[1].__imp_.__imp_ = &unk_284F019C0;
  v2 = this[2].__vftable;
  if (v2 && (*(v2->~runtime_error + 4))(v2))
  {
    this[2].__vftable = 0;
  }

  this->__vftable = &unk_284F01970;
  v3 = this[1].__vftable;
  if (v3)
  {
    (*(v3->~runtime_error + 1))(v3);
  }

  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x23EECF470);
}

void sub_23C38FE30(void *a1)
{
  *a1 = &unk_284F019C0;
  v2 = a1[1];
  if (v2 && (*(*v2 + 32))(v2))
  {
    a1[1] = 0;
  }

  *(a1 - 3) = &unk_284F01970;
  v3 = *(a1 - 1);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::runtime_error::~runtime_error((a1 - 3));
}

void sub_23C38FF04(void *a1)
{
  *a1 = &unk_284F019C0;
  v2 = a1[1];
  if (v2 && (*(*v2 + 32))(v2))
  {
    a1[1] = 0;
  }

  *(a1 - 3) = &unk_284F01970;
  v3 = *(a1 - 1);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::runtime_error::~runtime_error((a1 - 3));

  JUMPOUT(0x23EECF470);
}

void sub_23C38FFFC(std::runtime_error *this)
{
  this->__vftable = &unk_284F01970;
  v2 = this[1].__vftable;
  if (v2)
  {
    (*(v2->~runtime_error + 1))(v2);
  }

  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x23EECF470);
}

void sub_23C390090(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x23EECF470);
}

void *sub_23C3900C8(void *a1)
{
  v1 = a1;
  v2 = *a1;
  if (v2)
  {
    v3 = v1;
    v4 = (*(*v2 + 32))(v2);
    v1 = v3;
    if (v4)
    {
      *v3 = 0;
    }
  }

  return v1;
}

uint64_t sub_23C39012C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_284F01940;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &unk_284F01970;
  v4 = *(a2 + 24);
  if (v4)
  {
    v4 = (*(*v4 + 24))(v4);
  }

  *(a1 + 24) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = &unk_284F019C0;
  *(a1 + 40) = v5;
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v6;
  *a1 = &unk_284F018C8;
  *(a1 + 8) = &unk_284F018F8;
  *(a1 + 32) = &unk_284F01920;
  return a1;
}

uint64_t sub_23C3902AC(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v4 = *(a2 + 8);
  if (!v4)
  {
    v5 = 0;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    result = *(a1 + 8);
    if (!result)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  (*(*v4 + 40))(&v7);
  v5 = v7;
  v8 = v7;
  if (v7)
  {
    (*(*v7 + 24))(v7);
    if (v7)
    {
      (*(*v7 + 32))(v7);
    }
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  result = *(a1 + 8);
  if (result)
  {
LABEL_8:
    result = (*(*result + 32))(result);
  }

LABEL_9:
  *(a1 + 8) = v5;
  if (v5)
  {
    (*(*v5 + 24))(v5);
    return (*(*v5 + 32))(v5);
  }

  return result;
}

void sub_23C39042C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_23C3900C8(&a9);
  sub_23C3900C8(&a10);
  _Unwind_Resume(a1);
}

void sub_23C39044C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23C3900C8(va);
  _Unwind_Resume(a1);
}

void sub_23C390460(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23C3900C8(va);
  _Unwind_Resume(a1);
}

void sub_23C390474(std::runtime_error *a1, void *a2, uint64_t a3)
{
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v4 + 2 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_23C36FA14();
  }

  if (v4 + 2 >= 0x17)
  {
    operator new();
  }

  memset(&v18, 0, sizeof(v18));
  *(&v18.__r_.__value_.__s + 23) = v4 + 2;
  if (v4)
  {
    if ((v3 & 0x80u) != 0)
    {
      a2 = *a2;
    }

    memmove(&v18, a2, v4);
  }

  strcpy(&v18 + v4, " (");
  if (*(a3 + 23) < 0)
  {
    sub_23C36FB58(v16, *a3, *(a3 + 8));
  }

  else
  {
    *v16 = *a3;
    v17 = *(a3 + 16);
  }

  if (v17 >= 0)
  {
    v7 = v16;
  }

  else
  {
    v7 = v16[0];
  }

  if (v17 >= 0)
  {
    v8 = HIBYTE(v17);
  }

  else
  {
    v8 = v16[1];
  }

  v9 = std::string::append(&v18, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  size = SHIBYTE(v19.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = v19.__r_.__value_.__l.__size_;
    v13 = (v19.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v13 == v19.__r_.__value_.__l.__size_)
    {
      if ((v19.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
      {
        sub_23C36FA14();
      }

LABEL_25:
      operator new();
    }

    v12 = v19.__r_.__value_.__r.__words[0];
  }

  else
  {
    v12 = &v19;
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) == 22)
    {
      goto LABEL_25;
    }
  }

  v12->__r_.__value_.__s.__data_[size] = 41;
  v14 = size + 1;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    v19.__r_.__value_.__l.__size_ = v14;
  }

  else
  {
    *(&v19.__r_.__value_.__s + 23) = v14 & 0x7F;
  }

  v12->__r_.__value_.__s.__data_[v14] = 0;
  __p = v19;
  memset(&v19, 0, sizeof(v19));
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
    if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }
  }

  else if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_32;
  }

  operator delete(v18.__r_.__value_.__l.__data_);
LABEL_32:
  std::runtime_error::runtime_error(a1, &__p);
  a1->__vftable = &unk_284F01998;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  a1->__vftable = &unk_284F01970;
  operator new();
}

void sub_23C390834(_Unwind_Exception *a1)
{
  MEMORY[0x23EECF470](v2, 0x1093C40E70F46F0);
  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

void sub_23C390860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23C3908F4(uint64_t result)
{
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

void sub_23C390934(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x23EECF470);
}

const void **sub_23C390AA4(uint64_t a1, const void **a2)
{
  v2 = a1;
  v3 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = a1;
  do
  {
    while (1)
    {
      v9 = (v3 - 56);
      v8 = *(v3 - 56);
      v10 = *(v3 - 33);
      v11 = v10 >= 0 ? (v3 - 56) : *(v3 - 56);
      v12 = v10 >= 0 ? *(v3 - 33) : *(v3 - 48);
      v13 = v6 >= v12 ? v12 : v6;
      v14 = memcmp(v11, v5, v13);
      if (v14)
      {
        break;
      }

      if (v12 < v6)
      {
        goto LABEL_10;
      }

LABEL_22:
      v3 = *(v3 + 8);
      v7 = v9;
      if (!v3)
      {
        goto LABEL_25;
      }
    }

    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_10:
    v3 = *(v3 + 16);
  }

  while (v3);
  v9 = v7;
LABEL_25:
  if (v9 != v2)
  {
    v15 = *(v9 + 23);
    if (v15 >= 0)
    {
      v16 = v9;
    }

    else
    {
      v16 = *v9;
    }

    if (v15 >= 0)
    {
      v17 = *(v9 + 23);
    }

    else
    {
      v17 = v9[1];
    }

    if (v17 >= v6)
    {
      v18 = v6;
    }

    else
    {
      v18 = v17;
    }

    v19 = memcmp(v5, v16, v18);
    if (v19)
    {
      if ((v19 & 0x80000000) == 0)
      {
        return v9;
      }
    }

    else if (v6 >= v17)
    {
      return v9;
    }
  }

  return v2;
}

void sub_23C390BB0(const std::runtime_error *a1, int8x16_t *a2)
{
  exception = __cxa_allocate_exception(0x48uLL);
  sub_23C390D24(exception, a1, a2);
  __cxa_throw(exception, &unk_284F01A50, sub_23C390E50);
}

std::runtime_error *sub_23C390C18(std::runtime_error *a1, const std::string *a2, uint64_t *a3)
{
  std::runtime_error::runtime_error(a1, a2)->__vftable = &unk_284F01B20;
  v5 = *a3;
  if (*a3)
  {
    v5 = (*(*v5 + 24))(v5);
  }

  a1[1].__vftable = v5;
  return a1;
}

void sub_23C390CA4(std::runtime_error *a1)
{
  a1->__vftable = &unk_284F01B20;
  v2 = a1[1].__vftable;
  if (v2)
  {
    v3 = a1;
    (*(v2->~runtime_error + 1))(a1[1].__vftable);
    a1 = v3;
    v1 = vars8;
  }

  std::runtime_error::~runtime_error(a1);
}

uint64_t sub_23C390D24(uint64_t a1, const std::runtime_error *a2, int8x16_t *a3)
{
  *a1 = &unk_284F01940;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 8) = &unk_284F01B20;
  v6 = a2[1].__vftable;
  if (v6)
  {
    v6 = (*(*v6 + 24))(v6);
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *a1 = &unk_284F01AA8;
  *(a1 + 8) = &unk_284F01AD8;
  *(a1 + 24) = v6;
  *(a1 + 32) = &unk_284F01B00;
  *(a1 + 64) = a3[1].i32[0];
  *(a1 + 48) = vextq_s8(*a3, *a3, 8uLL);
  return a1;
}

uint64_t sub_23C390E50(uint64_t a1)
{
  *(a1 + 32) = &unk_284F019C0;
  v2 = *(a1 + 40);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 40) = 0;
  }

  *(a1 + 8) = &unk_284F01B20;
  v3 = *(a1 + 24);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

void sub_23C390F20(std::runtime_error *a1)
{
  a1->__vftable = &unk_284F01B20;
  v2 = a1[1].__vftable;
  if (v2)
  {
    v3 = a1;
    (*(v2->~runtime_error + 1))(a1[1].__vftable);
    a1 = v3;
    v1 = vars8;
  }

  std::runtime_error::~runtime_error(a1);
}

void sub_23C391128(_Unwind_Exception *a1)
{
  sub_23C390F20(v3);
  MEMORY[0x23EECF470](v1, v2);
  _Unwind_Resume(a1);
}

void sub_23C391148(_Unwind_Exception *a1)
{
  std::runtime_error::~runtime_error(v3);
  MEMORY[0x23EECF470](v1, v2);
  _Unwind_Resume(a1);
}

void sub_23C39119C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  sub_23C391700(exception, a1);
  __cxa_throw(exception, &unk_284F01A50, sub_23C390E50);
}

void sub_23C3911F8(uint64_t a1)
{
  *(a1 + 32) = &unk_284F019C0;
  v2 = *(a1 + 40);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 40) = 0;
  }

  *(a1 + 8) = &unk_284F01B20;
  v3 = *(a1 + 24);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::runtime_error::~runtime_error((a1 + 8));

  JUMPOUT(0x23EECF470);
}

void sub_23C3912E8(std::runtime_error *this)
{
  this[1].__imp_.__imp_ = &unk_284F019C0;
  v2 = this[2].__vftable;
  if (v2 && (*(v2->~runtime_error + 4))(v2))
  {
    this[2].__vftable = 0;
  }

  this->__vftable = &unk_284F01B20;
  v3 = this[1].__vftable;
  if (v3)
  {
    (*(v3->~runtime_error + 1))(v3);
  }

  std::runtime_error::~runtime_error(this);
}

void sub_23C3913BC(std::runtime_error *this)
{
  this[1].__imp_.__imp_ = &unk_284F019C0;
  v2 = this[2].__vftable;
  if (v2 && (*(v2->~runtime_error + 4))(v2))
  {
    this[2].__vftable = 0;
  }

  this->__vftable = &unk_284F01B20;
  v3 = this[1].__vftable;
  if (v3)
  {
    (*(v3->~runtime_error + 1))(v3);
  }

  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x23EECF470);
}

void sub_23C3914AC(void *a1)
{
  *a1 = &unk_284F019C0;
  v2 = a1[1];
  if (v2 && (*(*v2 + 32))(v2))
  {
    a1[1] = 0;
  }

  *(a1 - 3) = &unk_284F01B20;
  v3 = *(a1 - 1);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::runtime_error::~runtime_error((a1 - 3));
}

void sub_23C391580(void *a1)
{
  *a1 = &unk_284F019C0;
  v2 = a1[1];
  if (v2 && (*(*v2 + 32))(v2))
  {
    a1[1] = 0;
  }

  *(a1 - 3) = &unk_284F01B20;
  v3 = *(a1 - 1);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::runtime_error::~runtime_error((a1 - 3));

  JUMPOUT(0x23EECF470);
}

void sub_23C391670(std::runtime_error *this)
{
  this->__vftable = &unk_284F01B20;
  v2 = this[1].__vftable;
  if (v2)
  {
    (*(v2->~runtime_error + 1))(v2);
  }

  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x23EECF470);
}

uint64_t sub_23C391700(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_284F01940;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &unk_284F01B20;
  v4 = *(a2 + 24);
  if (v4)
  {
    v4 = (*(*v4 + 24))(v4);
  }

  *(a1 + 24) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = &unk_284F019C0;
  *(a1 + 40) = v5;
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v6;
  *a1 = &unk_284F01AA8;
  *(a1 + 8) = &unk_284F01AD8;
  *(a1 + 32) = &unk_284F01B00;
  return a1;
}

uint64_t sub_23C391880(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a2 + v4;
  }

  else
  {
    v5 = (*a2 + a2[1]);
  }

  if ((v4 & 0x80u) == 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if ((v4 & 0x80u) == 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  v8 = memchr(a2[4], *(a2 + 24), &v5[-a2[4]]);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v9 != v6 + v7)
  {
    sub_23C38F39C(&v13, a2);
    v10 = *(*(a1 + 24) + 8);
    v11 = sub_23C390AA4(v10, &v13);
    if (v10 == v11)
    {
      operator new();
    }

    a1 = sub_23C391880(v11 + 3, a2);
    if (v14 < 0)
    {
      operator delete(v13);
    }
  }

  return a1;
}

void sub_23C391BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_23C3838A4(&a9);
  if (*(v24 - 57) < 0)
  {
    operator delete(*(v24 - 80));
  }

  _Unwind_Resume(a1);
}

void sub_23C391C68(uint64_t a1, const void **a2)
{
  v2 = *(*(a1 - 8) + 56) & 0xFFFFFFFFFFFFFFFELL;
  if (!v2)
  {
LABEL_23:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  while (1)
  {
    v7 = v2 - 56;
    v6 = *(v2 - 56);
    v8 = *(v7 + 23);
    if (v8 >= 0)
    {
      v9 = v7;
    }

    else
    {
      v9 = v6;
    }

    if (v8 >= 0)
    {
      v10 = *(v7 + 23);
    }

    else
    {
      v10 = *(v7 + 8);
    }

    if (v10 >= v5)
    {
      v11 = v5;
    }

    else
    {
      v11 = v10;
    }

    v12 = memcmp(v4, v9, v11);
    if (v12)
    {
      if (v12 < 0)
      {
        goto LABEL_8;
      }

LABEL_22:
      v2 = *(v7 + 72);
      if (!v2)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v5 >= v10)
      {
        goto LABEL_22;
      }

LABEL_8:
      v2 = *(v7 + 64);
      if (!v2)
      {
        goto LABEL_23;
      }
    }
  }
}

void sub_23C392170(void *a1)
{
  __cxa_begin_catch(a1);
  operator delete(*v1);
  __cxa_rethrow();
}

void sub_23C3921B8(uint64_t a1, const std::locale *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  sub_23C38E4C8(&v19);
  v4 = (&v19 + v19.__vftable[-1].~runtime_error);
  std::ios_base::getloc(v4);
  std::ios_base::imbue(v4, a2);
  std::locale::~locale(&__dst);
  rdbuf = v4->__rdbuf_;
  if (rdbuf)
  {
    (*(rdbuf->__locale_ + 2))(rdbuf, a2);
    std::locale::locale(&v17, rdbuf + 1);
    std::locale::operator=(rdbuf + 1, a2);
    std::locale::~locale(&v17);
  }

  std::locale::~locale(&v16);
  sub_23C372684(&v19, "Background", 10);
  v6 = *&v22[v19.__vftable[-1].~runtime_error] & 5;
  if (v6)
  {
    v31 = 0;
    goto LABEL_17;
  }

  if ((v29 & 0x10) != 0)
  {
    v8 = v28;
    if (v28 < v25)
    {
      v28 = v25;
      v8 = v25;
    }

    v9 = v24;
    v7 = v8 - v24;
    if (v8 - v24 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_37:
      sub_23C36FA14();
    }

LABEL_11:
    if (v7 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v7;
    if (v7)
    {
      memmove(&__dst, v9, v7);
    }

    goto LABEL_16;
  }

  if ((v29 & 8) != 0)
  {
    v9 = v21;
    v7 = v23 - v21;
    if ((v23 - v21) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_37;
    }

    goto LABEL_11;
  }

  v7 = 0;
  *(&__dst.__r_.__value_.__s + 23) = 0;
LABEL_16:
  __dst.__r_.__value_.__s.__data_[v7] = 0;
  v32 = __dst;
  v31 = 1;
LABEL_17:
  v19.__vftable = *MEMORY[0x277D82828];
  *(&v19.__vftable + v19.__vftable[-1].~runtime_error) = *(MEMORY[0x277D82828] + 24);
  v19.__imp_.__imp_ = (MEMORY[0x277D82878] + 16);
  if (v27 < 0)
  {
    operator delete(__p);
  }

  v19.__imp_.__imp_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(&v20);
  std::ostream::~ostream();
  MEMORY[0x23EECF3E0](&v30);
  if (v6)
  {
    sub_23C36F128(&v16, "conversion of type ");
    sub_23C3840A0(&v17, &v16, (0x800000023C3D4325 & 0x7FFFFFFFFFFFFFFFLL));
    sub_23C3840A0(&__dst, &v17, " to data failed");
    v15 = 0;
    sub_23C390C18(&v19, &__dst, &v15);
    v13.i64[0] = "/AppleInternal/Library/BuildRoots/4~CAoFugDmBq1DumL31pZVCQtVJ2QpJ-I1yuxrViI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/property_tree/detail/ptree_implementation.hpp";
    v13.i64[1] = "void boost::property_tree::basic_ptree<std::string, std::string>::put_value(const Type &, Translator) [Key = std::string, Data = std::string, KeyCompare = std::less<std::string>, Type = char[11], Translator = boost::property_tree::stream_translator<char, std::char_traits<char>, std::allocator<char>, char[11]>]";
    v14 = 828;
    sub_23C390BB0(&v19, &v13);
  }

  if (&v32 != a1)
  {
    if (*(a1 + 23) < 0)
    {
      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v32;
      }

      else
      {
        v10 = v32.__r_.__value_.__r.__words[0];
      }

      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v32.__r_.__value_.__l.__size_;
      }

      sub_23C37034C(a1, v10, size);
    }

    else if ((*(&v32.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      sub_23C37027C(a1, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
    }

    else
    {
      *a1 = v32;
    }
  }

  if (v31 == 1 && SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_23C392604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, std::runtime_error a32)
{
  sub_23C390CA4(&a32);
  if (a31 < 0)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a19 & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a14);
      _Unwind_Resume(a1);
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a20);
  if ((a19 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_23C3926CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::locale a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  std::locale::~locale(&a14);
  sub_23C38E6C0(&a23);
  _Unwind_Resume(a1);
}

void sub_23C3926E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_23C38E6C0(va);
  _Unwind_Resume(a1);
}

void sub_23C3926FC(uint64_t a1, const char *a2, const std::locale *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  sub_23C38E4C8(&v22);
  v6 = (&v22 + v22.__vftable[-1].~runtime_error);
  std::ios_base::getloc(v6);
  std::ios_base::imbue(v6, a3);
  std::locale::~locale(&__dst);
  rdbuf = v6->__rdbuf_;
  if (rdbuf)
  {
    (*(rdbuf->__locale_ + 2))(rdbuf, a3);
    std::locale::locale(&v20, rdbuf + 1);
    std::locale::operator=(rdbuf + 1, a3);
    std::locale::~locale(&v20);
  }

  std::locale::~locale(&v19);
  v8 = strlen(a2);
  sub_23C372684(&v22, a2, v8);
  v9 = *&v25[v22.__vftable[-1].~runtime_error] & 5;
  if (v9)
  {
    v34 = 0;
    goto LABEL_17;
  }

  if ((v32 & 0x10) != 0)
  {
    v11 = v31;
    if (v31 < v28)
    {
      v31 = v28;
      v11 = v28;
    }

    v12 = v27;
    v10 = v11 - v27;
    if (v11 - v27 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_37:
      sub_23C36FA14();
    }

LABEL_11:
    if (v10 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v10;
    if (v10)
    {
      memmove(&__dst, v12, v10);
    }

    goto LABEL_16;
  }

  if ((v32 & 8) != 0)
  {
    v12 = v24;
    v10 = v26 - v24;
    if ((v26 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_37;
    }

    goto LABEL_11;
  }

  v10 = 0;
  *(&__dst.__r_.__value_.__s + 23) = 0;
LABEL_16:
  __dst.__r_.__value_.__s.__data_[v10] = 0;
  v35 = __dst;
  v34 = 1;
LABEL_17:
  v22.__vftable = *MEMORY[0x277D82828];
  *(&v22.__vftable + v22.__vftable[-1].~runtime_error) = *(MEMORY[0x277D82828] + 24);
  v22.__imp_.__imp_ = (MEMORY[0x277D82878] + 16);
  if (v30 < 0)
  {
    operator delete(__p);
  }

  v22.__imp_.__imp_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(&v23);
  std::ostream::~ostream();
  MEMORY[0x23EECF3E0](&v33);
  if (v9)
  {
    sub_23C36F128(&v19, "conversion of type ");
    sub_23C3840A0(&v20, &v19, (0x800000023C3D432BLL & 0x7FFFFFFFFFFFFFFFLL));
    sub_23C3840A0(&__dst, &v20, " to data failed");
    v18 = 0;
    sub_23C390C18(&v22, &__dst, &v18);
    v16.i64[0] = "/AppleInternal/Library/BuildRoots/4~CAoFugDmBq1DumL31pZVCQtVJ2QpJ-I1yuxrViI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/property_tree/detail/ptree_implementation.hpp";
    v16.i64[1] = "void boost::property_tree::basic_ptree<std::string, std::string>::put_value(const Type &, Translator) [Key = std::string, Data = std::string, KeyCompare = std::less<std::string>, Type = char[2], Translator = boost::property_tree::stream_translator<char, std::char_traits<char>, std::allocator<char>, char[2]>]";
    v17 = 828;
    sub_23C390BB0(&v22, &v16);
  }

  if (&v35 != a1)
  {
    if (*(a1 + 23) < 0)
    {
      if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v35;
      }

      else
      {
        v13 = v35.__r_.__value_.__r.__words[0];
      }

      if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v35.__r_.__value_.__l.__size_;
      }

      sub_23C37034C(a1, v13, size);
    }

    else if ((*(&v35.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      sub_23C37027C(a1, v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
    }

    else
    {
      *a1 = v35;
    }
  }

  if (v34 == 1 && SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_23C392B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, std::runtime_error a32)
{
  sub_23C390CA4(&a32);
  if (a31 < 0)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a19 & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a14);
      _Unwind_Resume(a1);
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a20);
  if ((a19 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_23C392C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::locale a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  std::locale::~locale(&a14);
  sub_23C38E6C0(&a23);
  _Unwind_Resume(a1);
}

void sub_23C392C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_23C38E6C0(va);
  _Unwind_Resume(a1);
}

void sub_23C392C48(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 24);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!(v2 >> 60))
    {
      operator new();
    }

    sub_23C36C8AC();
  }

  v25 = *(a1 + 8);
  v26 = 0;
  v4 = v3[11];
  if (v4)
  {
    v5 = (v4 - 80);
  }

  else
  {
    v5 = 0;
  }

  if (v5 != v3)
  {
    MEMORY[0] = v5;
    operator new();
  }

  v6 = *(a1 + 8);
  v7 = v3;
  do
  {
    v8 = v7[11];
    if (v8)
    {
      v7 = (v8 - 80);
    }

    else
    {
      v7 = 0;
    }

    if (v3 == v7)
    {
      v9 = &v25;
    }

    else
    {
      v9 = 8;
    }

    v10 = *v9;
    *(v6 + 88) = v10 + 80;
    *(v10 + 80) = v6 + 80;
    v6 = v10;
  }

  while (v7 != v3);
  v11 = *(a1 + 8);
  v12 = v3[7];
  v13 = v11 + 7;
  if (v12 > 1)
  {
    *v13 = *v13 & 0xFFFFFFFFFFFFFFFELL | v3[7] & 1;
    v14 = v3[7];
    v15 = v12 & 1;
    if ((v14 & 0xFFFFFFFFFFFFFFFELL) != 0)
    {
      v16 = (v14 & 0xFFFFFFFFFFFFFFFELL) - 56;
    }

    else
    {
      v16 = 0;
    }

    v17 = &v25;
    if (v3 != v16)
    {
      v17 = 8;
    }

    *v13 = v15 | (*v17 + 56);
    v18 = v3[8];
    if (v18)
    {
      v19 = (v18 - 56);
    }

    else
    {
      v19 = 0;
    }

    v20 = &v25;
    if (v3 != v19)
    {
      v20 = 8;
    }

    v11[8] = *v20 + 56;
    v21 = v3[9];
    if (v21)
    {
      v22 = (v21 - 56);
    }

    else
    {
      v22 = 0;
    }

    v23 = &v25;
    if (v3 != v22)
    {
      v23 = 8;
    }

    v11[9] = *v23 + 56;
  }

  else
  {
    v11[7] = 0;
    v11[8] = v13;
    v11[9] = v13;
  }

  *(a1 + 24) = *(a2 + 24);
  v24 = *MEMORY[0x277D85DE8];
}

void sub_23C3931B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    operator delete(*v15);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_23C393210(void *a1, int a2)
{
  if (a2)
  {
    sub_23C36BF7C(a1);
  }

  JUMPOUT(0x23C393208);
}

__n128 sub_23C393220(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = (a2 - v12) >> 4;
    if (v13 > 2)
    {
      if (v13 == 3)
      {
        v60 = (v12 + 16);
        v61 = *(v12 + 16);
        v63 = a2[-1].n128_u64[0];
        v58 = a2 - 1;
        v62 = v63;
        if (v61 < *v12)
        {
          if (v62 >= v61)
          {
            v134 = *v12;
            *v12 = *v60;
            result = v134;
            *v60 = v134;
            if (v58->n128_u64[0] < *(v12 + 16))
            {
              result = *v60;
              *v60 = *v58;
              *v58 = result;
            }

            return result;
          }

LABEL_109:
          v130 = *v12;
          *v12 = *v58;
          result = v130;
          *v58 = v130;
          return result;
        }

        if (v62 >= v61)
        {
          return result;
        }

        result = *v60;
        *v60 = *v58;
        *v58 = result;
LABEL_189:
        if (*(v12 + 16) < *v12)
        {
          v136 = *v12;
          *v12 = *v60;
          result = v136;
          *v60 = v136;
        }

        return result;
      }

      if (v13 != 4)
      {
        if (v13 == 5)
        {

          result.n128_u64[0] = sub_23C393D9C(v12, (v12 + 16), (v12 + 32), (v12 + 48), a2[-1].n128_u64, result).n128_u64[0];
          return result;
        }

        goto LABEL_9;
      }

      v60 = (v12 + 16);
      v64 = *(v12 + 16);
      v65 = (v12 + 32);
      v66 = *(v12 + 32);
      if (v64 >= *v12)
      {
        if (v66 < v64)
        {
          result = *v60;
          *v60 = *v65;
          *v65 = result;
          if (*(v12 + 16) < *v12)
          {
            v133 = *v12;
            *v12 = *v60;
            result = v133;
            *v60 = v133;
          }
        }

        goto LABEL_186;
      }

      if (v66 >= v64)
      {
        v135 = *v12;
        *v12 = *v60;
        result = v135;
        *v60 = v135;
        if (v66 >= *(v12 + 16))
        {
          goto LABEL_186;
        }

        result = *v60;
        *v60 = *v65;
      }

      else
      {
        v131 = *v12;
        *v12 = *v65;
        result = v131;
      }

      *v65 = result;
LABEL_186:
      if (v9->n128_u64[0] >= v65->n128_u64[0])
      {
        return result;
      }

      result = *v65;
      *v65 = *v9;
      *v9 = result;
      if (v65->n128_u64[0] >= v60->n128_u64[0])
      {
        return result;
      }

      result = *v60;
      *v60 = *v65;
      *v65 = result;
      goto LABEL_189;
    }

    if (v13 < 2)
    {
      return result;
    }

    if (v13 == 2)
    {
      v59 = a2[-1].n128_u64[0];
      v58 = a2 - 1;
      if (v59 >= *v12)
      {
        return result;
      }

      goto LABEL_109;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v67 = (v12 + 16);
      v69 = v12 == a2 || v67 == a2;
      if ((a4 & 1) == 0)
      {
        if (!v69)
        {
          do
          {
            v106 = v67;
            v107 = a1[1].n128_u64[0];
            if (v107 < a1->n128_u64[0])
            {
              v108 = a1[1].n128_u64[1];
              v109 = v106;
              do
              {
                result = v109[-1];
                *v109 = result;
                v110 = v109[-2].n128_u64[0];
                --v109;
              }

              while (v107 < v110);
              v109->n128_u64[0] = v107;
              v109->n128_u64[1] = v108;
            }

            v67 = v106 + 1;
            a1 = v106;
          }

          while (&v106[1] != a2);
        }

        return result;
      }

      if (v69)
      {
        return result;
      }

      v70 = 0;
      v71 = v12;
      while (1)
      {
        v73 = v67;
        v74 = v71[2];
        if (v74 < *v71)
        {
          v75 = v71[3];
          v76 = v70;
          do
          {
            result = *(v12 + v76);
            *(v12 + v76 + 16) = result;
            if (!v76)
            {
              v72 = v12;
              goto LABEL_123;
            }

            v77 = *(v12 + v76 - 16);
            v76 -= 16;
          }

          while (v74 < v77);
          v72 = (v12 + v76 + 16);
LABEL_123:
          *v72 = v74;
          v72[1] = v75;
        }

        v67 = v73 + 1;
        v70 += 16;
        v71 = v73;
        if (&v73[1] == a2)
        {
          return result;
        }
      }
    }

    if (!a3)
    {
      break;
    }

    v14 = v12 + 16 * (v13 >> 1);
    v15 = v14;
    v16 = v9->n128_u64[0];
    if (v13 < 0x81)
    {
      v18 = *v12;
      if (*v12 < *v14)
      {
        if (v16 >= v18)
        {
          v119 = *v14;
          *v14 = *v12;
          result = v119;
          *v12 = v119;
          if (v9->n128_u64[0] >= *v12)
          {
            goto LABEL_37;
          }

          v112 = *v12;
          *v12 = *v9;
        }

        else
        {
          v112 = *v14;
          *v14 = *v9;
        }

        result = v112;
        *v9 = v112;
LABEL_37:
        --a3;
        v19 = *v12;
        if (a4)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v16 >= v18)
      {
        goto LABEL_37;
      }

      v115 = *v12;
      *v12 = *v9;
      result = v115;
      *v9 = v115;
      if (*v12 >= *v14)
      {
        goto LABEL_37;
      }

      v116 = *v14;
      *v14 = *v12;
      result = v116;
      *v12 = v116;
      --a3;
      v19 = *v12;
      if (a4)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v12 - 16) < v19)
      {
        goto LABEL_62;
      }

      if (v19 >= v9->n128_u64[0])
      {
        v51 = v12 + 16;
        do
        {
          v12 = v51;
          if (v51 >= a2)
          {
            break;
          }

          v51 += 16;
        }

        while (v19 >= *v12);
      }

      else
      {
        do
        {
          v50 = *(v12 + 16);
          v12 += 16;
        }

        while (v19 >= v50);
      }

      v52 = a2;
      if (v12 < a2)
      {
        v52 = a2;
        do
        {
          v53 = v52[-1].n128_u64[0];
          --v52;
        }

        while (v19 < v53);
      }

      v54 = a1->n128_u64[1];
      while (v12 < v52)
      {
        v129 = *v12;
        *v12 = *v52;
        result = v129;
        *v52 = v129;
        do
        {
          v55 = *(v12 + 16);
          v12 += 16;
        }

        while (v19 >= v55);
        do
        {
          v56 = v52[-1].n128_u64[0];
          --v52;
        }

        while (v19 < v56);
      }

      v57 = (v12 - 16);
      if ((v12 - 16) != a1)
      {
        result = *v57;
        *a1 = *v57;
      }

      a4 = 0;
      *(v12 - 16) = v19;
      *(v12 - 8) = v54;
    }

    else
    {
      v17 = *v14;
      if (*v14 >= *v12)
      {
        if (v16 < v17)
        {
          v113 = *v14;
          *v14 = *v9;
          *v9 = v113;
          if (*v14 < *v12)
          {
            v114 = *v12;
            *v12 = *v14;
            *v14 = v114;
          }
        }
      }

      else
      {
        if (v16 >= v17)
        {
          v117 = *v12;
          *v12 = *v14;
          *v14 = v117;
          if (v9->n128_u64[0] >= *v14)
          {
            goto LABEL_28;
          }

          v111 = *v14;
          *v14 = *v9;
        }

        else
        {
          v111 = *v12;
          *v12 = *v9;
        }

        *v9 = v111;
      }

LABEL_28:
      v20 = (v12 + 16);
      v21 = (v14 - 16);
      v22 = *(v14 - 16);
      v23 = v10->n128_u64[0];
      if (v22 >= *(v12 + 16))
      {
        if (v23 < v22)
        {
          v118 = *v21;
          *v21 = *v10;
          *v10 = v118;
          if (v21->n128_u64[0] < v20->n128_u64[0])
          {
            v25 = *v20;
            *v20 = *v21;
            *v21 = v25;
          }
        }
      }

      else
      {
        if (v23 >= v22)
        {
          v26 = *v20;
          *v20 = *v21;
          *v21 = v26;
          if (v10->n128_u64[0] >= v21->n128_u64[0])
          {
            goto LABEL_42;
          }

          v120 = *v21;
          *v21 = *v10;
          v24 = v120;
        }

        else
        {
          v24 = *v20;
          *v20 = *v10;
        }

        *v10 = v24;
      }

LABEL_42:
      v27 = (v12 + 32);
      v30 = *(v14 + 16);
      v28 = (v14 + 16);
      v29 = v30;
      v31 = v11->n128_u64[0];
      if (v30 >= *(v12 + 32))
      {
        if (v31 < v29)
        {
          v121 = *v28;
          *v28 = *v11;
          *v11 = v121;
          if (v28->n128_u64[0] < v27->n128_u64[0])
          {
            v33 = *v27;
            *v27 = *v28;
            *v28 = v33;
          }
        }
      }

      else
      {
        if (v31 >= v29)
        {
          v34 = *v27;
          *v27 = *v28;
          *v28 = v34;
          if (v11->n128_u64[0] >= v28->n128_u64[0])
          {
            goto LABEL_51;
          }

          v122 = *v28;
          *v28 = *v11;
          v32 = v122;
        }

        else
        {
          v32 = *v27;
          *v27 = *v11;
        }

        *v11 = v32;
      }

LABEL_51:
      v35 = *v15;
      v36 = v28->n128_u64[0];
      if (*v15 >= v21->n128_u64[0])
      {
        if (v36 < v35)
        {
          v124 = *v15;
          *v15 = *v28;
          *v28 = v124;
          if (*v15 < v21->n128_u64[0])
          {
            v125 = *v21;
            *v21 = *v15;
            *v15 = v125;
          }
        }
      }

      else
      {
        if (v36 >= v35)
        {
          v126 = *v21;
          *v21 = *v15;
          *v15 = v126;
          if (v28->n128_u64[0] >= *v15)
          {
            goto LABEL_60;
          }

          v123 = *v15;
          *v15 = *v28;
        }

        else
        {
          v123 = *v21;
          *v21 = *v28;
        }

        *v28 = v123;
      }

LABEL_60:
      v127 = *v12;
      *v12 = *v15;
      result = v127;
      *v15 = v127;
      --a3;
      v19 = *v12;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v37 = 0;
      v38 = *(v12 + 8);
      do
      {
        v39 = *(v12 + v37 + 16);
        v37 += 16;
      }

      while (v39 < v19);
      v40 = v12 + v37;
      v41 = a2;
      if (v37 == 16)
      {
        v41 = a2;
        do
        {
          if (v40 >= v41)
          {
            break;
          }

          v43 = v41[-1].n128_u64[0];
          --v41;
        }

        while (v43 >= v19);
      }

      else
      {
        do
        {
          v42 = v41[-1].n128_u64[0];
          --v41;
        }

        while (v42 >= v19);
      }

      v12 += v37;
      if (v40 < v41)
      {
        v44 = v41;
        do
        {
          v128 = *v12;
          *v12 = *v44;
          result = v128;
          *v44 = v128;
          do
          {
            v45 = *(v12 + 16);
            v12 += 16;
          }

          while (v45 < v19);
          do
          {
            v46 = v44[-1].n128_u64[0];
            --v44;
          }

          while (v46 >= v19);
        }

        while (v12 < v44);
      }

      v47 = (v12 - 16);
      if ((v12 - 16) != a1)
      {
        result = *v47;
        *a1 = *v47;
      }

      *(v12 - 16) = v19;
      *(v12 - 8) = v38;
      if (v40 < v41)
      {
LABEL_81:
        sub_23C393220(a1, v12 - 16, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v48 = sub_23C393F20(a1, (v12 - 16), result);
        if (sub_23C393F20(v12, a2, v49))
        {
          a2 = (v12 - 16);
          if (v48)
          {
            return result;
          }

          goto LABEL_1;
        }

        if (!v48)
        {
          goto LABEL_81;
        }
      }
    }
  }

  if (v12 == a2)
  {
    return result;
  }

  v78 = (v13 - 2) >> 1;
  v79 = v78;
  while (2)
  {
    if (v78 >= v79)
    {
      v81 = (2 * (v79 & 0xFFFFFFFFFFFFFFFLL)) | 1;
      v82 = (v12 + 16 * v81);
      if (2 * (v79 & 0xFFFFFFFFFFFFFFFLL) + 2 >= v13)
      {
        v85 = (v12 + 16 * v79);
        v86 = *v85;
        if (*v82 >= *v85)
        {
LABEL_144:
          v87 = v85[1];
          while (1)
          {
            v89 = v85;
            v85 = v82;
            *v89 = *v82;
            if (v78 < v81)
            {
              break;
            }

            v90 = (2 * (v81 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
            v82 = (v12 + 16 * v90);
            v81 = 2 * v81 + 2;
            if (v81 < v13)
            {
              v88 = *v82;
              if (*v82 >= v82[2])
              {
                v81 = v90;
              }

              else
              {
                v88 = v82[2];
                v82 += 2;
              }

              if (v88 < v86)
              {
                break;
              }
            }

            else
            {
              v81 = v90;
              if (*v82 < v86)
              {
                break;
              }
            }
          }

          *v85 = v86;
          v85[1] = v87;
        }
      }

      else
      {
        v83 = v82[2];
        v84 = *v82 >= v83;
        if (*v82 < v83)
        {
          v82 += 2;
        }

        else
        {
          v83 = *v82;
        }

        if (!v84)
        {
          v81 = 2 * (v79 & 0xFFFFFFFFFFFFFFFLL) + 2;
        }

        v85 = (v12 + 16 * v79);
        v86 = *v85;
        if (v83 >= *v85)
        {
          goto LABEL_144;
        }
      }
    }

    v80 = v79-- <= 0;
    if (!v80)
    {
      continue;
    }

    break;
  }

  do
  {
    v91 = 0;
    v132 = *v12;
    v92 = (v13 - 2) >> 1;
    n128_u64 = v12;
    do
    {
      while (1)
      {
        v97 = &n128_u64[v91];
        v96 = v97 + 1;
        v98 = (2 * v91) | 1;
        v91 = 2 * v91 + 2;
        if (v91 < v13)
        {
          break;
        }

        v91 = v98;
        *n128_u64 = *v96;
        n128_u64 = v97[1].n128_u64;
        if (v98 > v92)
        {
          goto LABEL_162;
        }
      }

      v95 = v97[2].n128_u64[0];
      v94 = v97 + 2;
      if (v94[-1].n128_u64[0] >= v95)
      {
        v91 = v98;
      }

      else
      {
        v96 = v94;
      }

      *n128_u64 = *v96;
      n128_u64 = v96;
    }

    while (v91 <= v92);
LABEL_162:
    if (v96 == --a2)
    {
      result = v132;
      *v96 = v132;
    }

    else
    {
      *v96 = *a2;
      result = v132;
      *a2 = v132;
      v99 = (&v96[1] - v12) >> 4;
      v80 = v99 < 2;
      v100 = v99 - 2;
      if (!v80)
      {
        v101 = v100 >> 1;
        v102 = (v12 + 16 * v101);
        v103 = v96->n128_u64[0];
        if (v102->n128_u64[0] < v96->n128_u64[0])
        {
          v104 = v96->n128_u64[1];
          do
          {
            v105 = v96;
            v96 = v102;
            result = *v102;
            *v105 = *v102;
            if (!v101)
            {
              break;
            }

            v101 = (v101 - 1) >> 1;
            v102 = (v12 + 16 * v101);
          }

          while (v102->n128_u64[0] < v103);
          v96->n128_u64[0] = v103;
          v96->n128_u64[1] = v104;
        }
      }
    }

    v80 = v13-- <= 2;
  }

  while (!v80);
  return result;
}

__n128 sub_23C393D9C(__n128 *a1, __n128 *a2, unint64_t *a3, _OWORD *a4, _OWORD *a5, __n128 result)
{
  v6 = a2->n128_u64[0];
  v7 = *a3;
  if (a2->n128_u64[0] >= a1->n128_u64[0])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u64[0] < a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (*a3 < a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (*a3 < a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u64[0] < a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (*a5 < *a4)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (*a4 < *a3)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (*a3 < a2->n128_u64[0])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (a2->n128_u64[0] < a1->n128_u64[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL sub_23C393F20(uint64_t a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = (a1 + 16);
      v8 = *(a1 + 16);
      v10 = a2[-1].n128_u64[0];
      v4 = a2 - 1;
      v9 = v10;
      if (v8 < *a1)
      {
        if (v9 >= v8)
        {
          v29 = *a1;
          *a1 = *v7;
          *v7 = v29;
          if (v4->n128_u64[0] < *(a1 + 16))
          {
            v30 = *v7;
            *v7 = *v4;
            *v4 = v30;
            return 1;
          }

          return 1;
        }

        goto LABEL_12;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v24 = *v7;
      *v7 = *v4;
      *v4 = v24;
LABEL_49:
      if (*(a1 + 16) < *a1)
      {
        v43 = *a1;
        *a1 = *v7;
        *v7 = v43;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        sub_23C393D9C(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
        return 1;
      }

      goto LABEL_13;
    }

    v7 = (a1 + 16);
    v18 = *(a1 + 16);
    v19 = (a1 + 32);
    v20 = *(a1 + 32);
    v21 = a2 - 1;
    v22 = *a1;
    if (v18 >= *a1)
    {
      if (v20 < v18)
      {
        v27 = *v7;
        *v7 = *v19;
        *v19 = v27;
        if (v7->n128_u64[0] < v22)
        {
          v28 = *a1;
          *a1 = *v7;
          *v7 = v28;
        }
      }

      goto LABEL_46;
    }

    if (v20 >= v18)
    {
      v40 = *a1;
      *a1 = *v7;
      *v7 = v40;
      if (v20 >= *(a1 + 16))
      {
        goto LABEL_46;
      }

      v23 = *v7;
      *v7 = *v19;
    }

    else
    {
      v23 = *a1;
      *a1 = *v19;
    }

    *v19 = v23;
LABEL_46:
    if (v21->n128_u64[0] >= v19->n128_u64[0])
    {
      return 1;
    }

    v41 = *v19;
    *v19 = *v21;
    *v21 = v41;
    if (v19->n128_u64[0] >= v7->n128_u64[0])
    {
      return 1;
    }

    v42 = *v7;
    *v7 = *v19;
    *v19 = v42;
    goto LABEL_49;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u64[0];
    v4 = a2 - 1;
    if (v5 >= *a1)
    {
      return 1;
    }

LABEL_12:
    v11 = *a1;
    *a1 = *v4;
    *v4 = v11;
    return 1;
  }

LABEL_13:
  v12 = (a1 + 32);
  v13 = *(a1 + 32);
  v14 = (a1 + 16);
  v15 = *(a1 + 16);
  v16 = *a1;
  if (v15 >= *a1)
  {
    if (v13 < v15)
    {
      v25 = *v14;
      *v14 = *v12;
      *v12 = v25;
      if (v14->n128_u64[0] < v16)
      {
        v26 = *a1;
        *a1 = *v14;
        *v14 = v26;
      }
    }
  }

  else
  {
    if (v13 >= v15)
    {
      v31 = *a1;
      *a1 = *v14;
      *v14 = v31;
      if (v13 >= *(a1 + 16))
      {
        goto LABEL_32;
      }

      v17 = *v14;
      *v14 = *v12;
    }

    else
    {
      v17 = *a1;
      *a1 = *v12;
    }

    *v12 = v17;
  }

LABEL_32:
  v32 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v33 = 0;
  v34 = 0;
  while (1)
  {
    v35 = v32->n128_u64[0];
    if (v32->n128_u64[0] < v12->n128_u64[0])
    {
      break;
    }

LABEL_41:
    v12 = v32;
    v33 += 16;
    if (++v32 == a2)
    {
      return 1;
    }
  }

  v36 = v32->n128_i64[1];
  v37 = v33;
  do
  {
    *(a1 + v37 + 48) = *(a1 + v37 + 32);
    if (v37 == -32)
    {
      *a1 = v35;
      *(a1 + 8) = v36;
      if (++v34 != 8)
      {
        goto LABEL_41;
      }

      return &v32[1] == a2;
    }

    v38 = *(a1 + v37 + 16);
    v37 -= 16;
  }

  while (v35 < v38);
  v39 = a1 + v37;
  *(v39 + 48) = v35;
  *(v39 + 56) = v36;
  if (++v34 != 8)
  {
    goto LABEL_41;
  }

  return &v32[1] == a2;
}

uint64_t sub_23C3942A4(uint64_t a1)
{
  if ((*(a1 + 64) & 1) == 0 && *(a1 + 40))
  {
    v2 = 0;
    v3 = 8;
    do
    {
      sub_23C38EA34(*(*(a1 + 32) + v3));
      operator delete(*(*(a1 + 32) + v3));
      ++v2;
      v3 += 16;
    }

    while (v2 < *(a1 + 40));
  }

  if (*(a1 + 24))
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void sub_23C394324(uint64_t a1, const std::locale *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  sub_23C38E4C8(&v19);
  v4 = (&v19 + v19.__vftable[-1].~runtime_error);
  std::ios_base::getloc(v4);
  std::ios_base::imbue(v4, a2);
  std::locale::~locale(&__dst);
  rdbuf = v4->__rdbuf_;
  if (rdbuf)
  {
    (*(rdbuf->__locale_ + 2))(rdbuf, a2);
    std::locale::locale(&v17, rdbuf + 1);
    std::locale::operator=(rdbuf + 1, a2);
    std::locale::~locale(&v17);
  }

  std::locale::~locale(&v16);
  sub_23C372684(&v19, "Markers", 7);
  v6 = *&v22[v19.__vftable[-1].~runtime_error] & 5;
  if (v6)
  {
    v31 = 0;
    goto LABEL_17;
  }

  if ((v29 & 0x10) != 0)
  {
    v8 = v28;
    if (v28 < v25)
    {
      v28 = v25;
      v8 = v25;
    }

    v9 = v24;
    v7 = v8 - v24;
    if (v8 - v24 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_37:
      sub_23C36FA14();
    }

LABEL_11:
    if (v7 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v7;
    if (v7)
    {
      memmove(&__dst, v9, v7);
    }

    goto LABEL_16;
  }

  if ((v29 & 8) != 0)
  {
    v9 = v21;
    v7 = v23 - v21;
    if ((v23 - v21) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_37;
    }

    goto LABEL_11;
  }

  v7 = 0;
  *(&__dst.__r_.__value_.__s + 23) = 0;
LABEL_16:
  __dst.__r_.__value_.__s.__data_[v7] = 0;
  v32 = __dst;
  v31 = 1;
LABEL_17:
  v19.__vftable = *MEMORY[0x277D82828];
  *(&v19.__vftable + v19.__vftable[-1].~runtime_error) = *(MEMORY[0x277D82828] + 24);
  v19.__imp_.__imp_ = (MEMORY[0x277D82878] + 16);
  if (v27 < 0)
  {
    operator delete(__p);
  }

  v19.__imp_.__imp_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(&v20);
  std::ostream::~ostream();
  MEMORY[0x23EECF3E0](&v30);
  if (v6)
  {
    sub_23C36F128(&v16, "conversion of type ");
    sub_23C3840A0(&v17, &v16, (0x800000023C3D4330 & 0x7FFFFFFFFFFFFFFFLL));
    sub_23C3840A0(&__dst, &v17, " to data failed");
    v15 = 0;
    sub_23C390C18(&v19, &__dst, &v15);
    v13.i64[0] = "/AppleInternal/Library/BuildRoots/4~CAoFugDmBq1DumL31pZVCQtVJ2QpJ-I1yuxrViI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/property_tree/detail/ptree_implementation.hpp";
    v13.i64[1] = "void boost::property_tree::basic_ptree<std::string, std::string>::put_value(const Type &, Translator) [Key = std::string, Data = std::string, KeyCompare = std::less<std::string>, Type = char[8], Translator = boost::property_tree::stream_translator<char, std::char_traits<char>, std::allocator<char>, char[8]>]";
    v14 = 828;
    sub_23C390BB0(&v19, &v13);
  }

  if (&v32 != a1)
  {
    if (*(a1 + 23) < 0)
    {
      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v32;
      }

      else
      {
        v10 = v32.__r_.__value_.__r.__words[0];
      }

      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v32.__r_.__value_.__l.__size_;
      }

      sub_23C37034C(a1, v10, size);
    }

    else if ((*(&v32.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      sub_23C37027C(a1, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
    }

    else
    {
      *a1 = v32;
    }
  }

  if (v31 == 1 && SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_23C394770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, std::runtime_error a32)
{
  sub_23C390CA4(&a32);
  if (a31 < 0)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a19 & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a14);
      _Unwind_Resume(a1);
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a20);
  if ((a19 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_23C394838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::locale a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  std::locale::~locale(&a14);
  sub_23C38E6C0(&a23);
  _Unwind_Resume(a1);
}

void sub_23C394854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_23C38E6C0(va);
  _Unwind_Resume(a1);
}

void sub_23C394868(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    sub_23C36FB58(__p, *a3, *(a3 + 8));
    v6 = *(a3 + 23) < 0;
  }

  else
  {
    v6 = 0;
    *__p = *a3;
    v10 = *(a3 + 16);
  }

  v11 = *(a3 + 24);
  v7 = __p;
  if (v10 < 0)
  {
    v7 = __p[0];
  }

  if (v6)
  {
    v8 = *a3;
  }

  else
  {
    v8 = a3;
  }

  v12 = v7 + *(a3 + 32) - v8;
  *a1 = sub_23C38F2C4(a2, __p);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_23C394948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C394964()
{
  v0 = MEMORY[0x28223BE20]();
  v7 = v1;
  v13 = *MEMORY[0x277D85DE8];
  v2 = *v0;
  *(v0 + *(*v0 - 24) + 8) &= ~0x1000u;
  v3 = v0 + *(v2 - 24);
  v4 = *(v3 + 5);
  if (v4)
  {
    v8 = v0;
    v5 = v4[3];
    if (v5 != v4[4])
    {
      goto LABEL_3;
    }

    if ((*(*v4 + 72))(v4) != -1)
    {
      v5 = v4[3];
      if (v5 == v4[4])
      {
        (*(*v4 + 72))(v4);
LABEL_7:
        operator new();
      }

LABEL_3:
      v6 = *v5;
      goto LABEL_7;
    }

    if (!*(v8 + *(*v8 - 24) + 32))
    {
LABEL_11:
      operator new();
    }
  }

  else if (!*(v3 + 8))
  {
    goto LABEL_11;
  }

  sub_23C36F128(__p, "read error");
  sub_23C397FA4(v12, __p, v7, 0);
  v12[0] = &unk_284F01C50;
  v10.i64[0] = "/AppleInternal/Library/BuildRoots/4~CAoFugDmBq1DumL31pZVCQtVJ2QpJ-I1yuxrViI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/property_tree/detail/xml_parser_read_rapidxml.hpp";
  v10.i64[1] = "void boost::property_tree::xml_parser::read_xml_internal(std::basic_istream<typename Ptree::key_type::value_type> &, Ptree &, int, const std::string &) [Ptree = boost::property_tree::basic_ptree<std::string, std::string>]";
  v11 = 101;
  sub_23C3956EC(v12, &v10);
}

void sub_23C395270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::runtime_error a29)
{
  sub_23C395754(&a29);
  if (a18 < 0)
  {
    operator delete(__p);
    if (v29)
    {
LABEL_6:
      operator delete(v29);
      _Unwind_Resume(a1);
    }
  }

  else if (v29)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

void sub_23C39529C(_Unwind_Exception *a1)
{
  if (!v1)
  {
    _Unwind_Resume(a1);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_23C3952A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int8x16_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28)
{
  MEMORY[0x23EECF470](v29, 0x1020C402FC1992ELL);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_23C39D4B4(&a28);
  if (a2 != 1)
  {
    if (!v28)
    {
      _Unwind_Resume(a1);
    }

    operator delete(v28);
    _Unwind_Resume(a1);
  }

  v32 = __cxa_begin_catch(a1);
  v33 = v32[2];
  if (v28 == v33)
  {
    v34 = 1;
    goto LABEL_22;
  }

  v35 = v33 - v28;
  if ((v33 - v28) < 8)
  {
    v36 = 0;
    v37 = v28;
    goto LABEL_18;
  }

  if (v35 >= 0x20)
  {
    v39 = 0uLL;
    v40.i64[0] = 0xA0A0A0A0A0A0A0ALL;
    v40.i64[1] = 0xA0A0A0A0A0A0A0ALL;
    v41 = vdupq_n_s64(1uLL);
    v38 = v35 & 0xFFFFFFFFFFFFFFE0;
    v42 = 0uLL;
    v43 = v28 + 1;
    v44 = 0uLL;
    v45 = v35 & 0xFFFFFFFFFFFFFFE0;
    v46 = 0uLL;
    v47 = 0uLL;
    v48 = 0uLL;
    v49 = 0uLL;
    v50 = 0uLL;
    v51 = 0uLL;
    v52 = 0uLL;
    v53 = 0uLL;
    v54 = 0uLL;
    v55 = 0uLL;
    v56 = 0uLL;
    v57 = 0uLL;
    v58 = 0uLL;
    do
    {
      v59 = vceqq_s8(v43[-1], v40);
      v60 = vmovl_u8(*v59.i8);
      v61 = vmovl_high_u8(v59);
      v62 = vmovl_high_u16(v61);
      v63.i64[0] = v62.u32[2];
      v63.i64[1] = v62.u32[3];
      v50 = vaddq_s64(v50, vandq_s8(v63, v41));
      v64 = vmovl_high_u16(v60);
      v65 = vmovl_u16(*v61.i8);
      v63.i64[0] = v62.u32[0];
      v63.i64[1] = v62.u32[1];
      v49 = vaddq_s64(v49, vandq_s8(v63, v41));
      v63.i64[0] = v65.u32[2];
      v63.i64[1] = v65.u32[3];
      v48 = vaddq_s64(v48, vandq_s8(v63, v41));
      v63.i64[0] = v64.u32[2];
      v63.i64[1] = v64.u32[3];
      v46 = vaddq_s64(v46, vandq_s8(v63, v41));
      v66 = vmovl_u16(*v60.i8);
      v63.i64[0] = v65.u32[0];
      v63.i64[1] = v65.u32[1];
      v47 = vaddq_s64(v47, vandq_s8(v63, v41));
      v63.i64[0] = v66.u32[0];
      v63.i64[1] = v66.u32[1];
      v67 = vandq_s8(v63, v41);
      v63.i64[0] = v66.u32[2];
      v63.i64[1] = v66.u32[3];
      v68 = vandq_s8(v63, v41);
      v63.i64[0] = v64.u32[0];
      v63.i64[1] = v64.u32[1];
      v69 = vceqq_s8(*v43, v40);
      v44 = vaddq_s64(v44, vandq_s8(v63, v41));
      v70 = vmovl_u8(*v69.i8);
      v71 = vmovl_high_u8(v69);
      v42 = vaddq_s64(v42, v68);
      v72 = vmovl_high_u16(v71);
      v39 = vaddq_s64(v39, v67);
      v63.i64[0] = v72.u32[2];
      v63.i64[1] = v72.u32[3];
      v58 = vaddq_s64(v58, vandq_s8(v63, v41));
      v73 = vmovl_high_u16(v70);
      v74 = vmovl_u16(*v71.i8);
      v63.i64[0] = v72.u32[0];
      v63.i64[1] = v72.u32[1];
      v57 = vaddq_s64(v57, vandq_s8(v63, v41));
      v63.i64[0] = v74.u32[2];
      v63.i64[1] = v74.u32[3];
      v56 = vaddq_s64(v56, vandq_s8(v63, v41));
      v63.i64[0] = v73.u32[2];
      v63.i64[1] = v73.u32[3];
      v54 = vaddq_s64(v54, vandq_s8(v63, v41));
      v63.i64[0] = v74.u32[0];
      v63.i64[1] = v74.u32[1];
      v55 = vaddq_s64(v55, vandq_s8(v63, v41));
      v75 = vmovl_u16(*v70.i8);
      v63.i64[0] = v73.u32[0];
      v63.i64[1] = v73.u32[1];
      v53 = vaddq_s64(v53, vandq_s8(v63, v41));
      v63.i64[0] = v75.u32[2];
      v63.i64[1] = v75.u32[3];
      v52 = vaddq_s64(v52, vandq_s8(v63, v41));
      v63.i64[0] = v75.u32[0];
      v63.i64[1] = v75.u32[1];
      v51 = vaddq_s64(v51, vandq_s8(v63, v41));
      v43 += 2;
      v45 -= 32;
    }

    while (v45);
    v36 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v51, v39), vaddq_s64(v55, v47)), vaddq_s64(vaddq_s64(v53, v44), vaddq_s64(v57, v49))), vaddq_s64(vaddq_s64(vaddq_s64(v52, v42), vaddq_s64(v56, v48)), vaddq_s64(vaddq_s64(v54, v46), vaddq_s64(v58, v50)))));
    if (v35 == v38)
    {
      goto LABEL_21;
    }

    if ((v35 & 0x18) == 0)
    {
      v37 = &v28->u8[v38];
      do
      {
LABEL_18:
        v91 = *v37++;
        if (v91 == 10)
        {
          ++v36;
        }
      }

      while (v37 != v33);
      goto LABEL_21;
    }
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  v37 = &v28->u8[v35 & 0xFFFFFFFFFFFFFFF8];
  v76 = 0uLL;
  v77 = v36;
  v78 = &v28->i8[v38];
  v79 = v38 - (v35 & 0xFFFFFFFFFFFFFFF8);
  v80 = vdupq_n_s64(1uLL);
  v81 = 0uLL;
  v82 = 0uLL;
  do
  {
    v83 = *v78++;
    v84 = vmovl_u8(vceq_s8(v83, 0xA0A0A0A0A0A0A0ALL));
    v85 = vmovl_u16(*v84.i8);
    v86.i64[0] = v85.u32[0];
    v86.i64[1] = v85.u32[1];
    v87 = vandq_s8(v86, v80);
    v86.i64[0] = v85.u32[2];
    v86.i64[1] = v85.u32[3];
    v88 = vandq_s8(v86, v80);
    v89 = vmovl_high_u16(v84);
    v86.i64[0] = v89.u32[0];
    v86.i64[1] = v89.u32[1];
    v90 = vandq_s8(v86, v80);
    v86.i64[0] = v89.u32[2];
    v86.i64[1] = v89.u32[3];
    v82 = vaddq_s64(v82, vandq_s8(v86, v80));
    v81 = vaddq_s64(v81, v90);
    v76 = vaddq_s64(v76, v88);
    v77 = vaddq_s64(v77, v87);
    v79 += 8;
  }

  while (v79);
  v36 = vaddvq_s64(vaddq_s64(vaddq_s64(v77, v81), vaddq_s64(v76, v82)));
  if (v35 != (v35 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_18;
  }

LABEL_21:
  v34 = v36 + 1;
LABEL_22:
  v92 = (*(*v32 + 16))(v32);
  sub_23C36F128(&__p, v92);
  sub_23C397FA4(&a28, &__p, a9, v34);
  a28 = &unk_284F01C50;
  a21.i64[0] = "/AppleInternal/Library/BuildRoots/4~CAoFugDmBq1DumL31pZVCQtVJ2QpJ-I1yuxrViI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/property_tree/detail/xml_parser_read_rapidxml.hpp";
  a21.i64[1] = "void boost::property_tree::xml_parser::read_xml_internal(std::basic_istream<typename Ptree::key_type::value_type> &, Ptree &, int, const std::string &) [Ptree = boost::property_tree::basic_ptree<std::string, std::string>]";
  a22 = 138;
  sub_23C3956EC(&a28, &a21);
}

void sub_23C395680(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::runtime_error a29)
{
  sub_23C395754(&a29);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x23C3956B0);
}

void sub_23C3956C8()
{
  if (!v0)
  {
    JUMPOUT(0x23C3956D4);
  }

  JUMPOUT(0x23C3956DCLL);
}

void sub_23C3956EC(uint64_t a1, int8x16_t *a2)
{
  exception = __cxa_allocate_exception(0x78uLL);
  sub_23C3971AC(exception, a1, a2);
  __cxa_throw(exception, &unk_284F01B80, sub_23C397324);
}

void sub_23C395754(std::runtime_error *this)
{
  this->__vftable = &unk_284F01C78;
  if (SHIBYTE(this[3].__imp_.__imp_) < 0)
  {
    operator delete(this[2].__imp_.__imp_);
    if ((SHIBYTE(this[2].__vftable) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = this;

      goto LABEL_5;
    }
  }

  else if ((SHIBYTE(this[2].__vftable) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[1].__vftable);
  v2 = this;

LABEL_5:
  std::runtime_error::~runtime_error(v2);
}

void sub_23C3957EC(uint64_t *a1, std::string *a2, char a3)
{
  v5 = *(a1 + 10);
  if ((v5 - 2) >= 2)
  {
    if (v5 != 4)
    {
      if (v5 == 1)
      {
        v6 = *a1;
        v18[0] = 0;
        v18[1] = 0;
        v19 = 0;
        operator new();
      }

      return;
    }

    if ((a3 & 2) != 0)
    {
      return;
    }

    if ((atomic_load_explicit(&qword_27E1F3E70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F3E70))
    {
      sub_23C39D450(&xmmword_27E1F3EA8, "<xmlcomment>");
      __cxa_atexit(MEMORY[0x277D82640], &xmmword_27E1F3EA8, &dword_23C368000);
      __cxa_guard_release(&qword_27E1F3E70);
    }

    v9 = a1[1];
    if (!v9)
    {
      HIBYTE(v17) = 0;
      goto LABEL_43;
    }

    v10 = a1[3];
    if (v10 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v10 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v17) = a1[3];
      if (v10)
      {
        memmove(&__dst, v9, v10);
        *(&__dst + v10) = 0;
        if ((SHIBYTE(v17) & 0x80000000) == 0)
        {
          goto LABEL_44;
        }

        goto LABEL_47;
      }

LABEL_43:
      LOBYTE(__dst) = 0;
      if ((SHIBYTE(v17) & 0x80000000) == 0)
      {
LABEL_44:
        *v18 = __dst;
        v19 = v17;
        goto LABEL_48;
      }

LABEL_47:
      sub_23C36FB58(v18, __dst, *(&__dst + 1));
LABEL_48:
      operator new();
    }

LABEL_50:
    sub_23C36FA14();
  }

  if (a3)
  {
    if ((atomic_load_explicit(&qword_27E1F3E68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F3E68))
    {
      sub_23C39D450(&xmmword_27E1F3E90, "<xmltext>");
      __cxa_atexit(MEMORY[0x277D82640], &xmmword_27E1F3E90, &dword_23C368000);
      __cxa_guard_release(&qword_27E1F3E68);
    }

    if (a1[1])
    {
      v11 = a1[1];
    }

    else
    {
      v11 = &byte_27E1F3E58;
    }

    v12 = strlen(v11);
    if (v12 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_50;
    }

    v13 = v12;
    if (v12 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v17) = v12;
    if (v12)
    {
      memmove(&__dst, v11, v12);
      *(&__dst + v13) = 0;
      if ((SHIBYTE(v17) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      LOBYTE(__dst) = 0;
      if ((SHIBYTE(v17) & 0x80000000) == 0)
      {
LABEL_26:
        *v18 = __dst;
        v19 = v17;
        goto LABEL_30;
      }
    }

    sub_23C36FB58(v18, __dst, *(&__dst + 1));
LABEL_30:
    operator new();
  }

  v7 = a1[1];
  if (v7)
  {
    v8 = a1[3];
    if (v8 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_50;
    }

    if (v8 >= 0x17)
    {
      operator new();
    }

    v21 = a1[3];
    if (v8)
    {
      memmove(v20, v7, v8);
    }
  }

  else
  {
    v8 = 0;
    v21 = 0;
  }

  *(v20 + v8) = 0;
  if ((v21 & 0x80u) == 0)
  {
    v14 = v20;
  }

  else
  {
    v14 = v20[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v15 = v21;
  }

  else
  {
    v15 = v20[1];
  }

  std::string::append(a2, v14, v15);
  if (v21 < 0)
  {
    operator delete(v20[0]);
  }
}

void sub_23C396DB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, void *a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  sub_23C38EB0C(&a15);
  sub_23C3838A4(&a29);
  if (v47 < 0)
  {
    operator delete(a12);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_23C3971AC(uint64_t a1, uint64_t a2, int8x16_t *a3)
{
  *a1 = &unk_284F01940;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 8) = &unk_284F01C78;
  if (*(a2 + 39) < 0)
  {
    sub_23C36FB58((a1 + 24), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v6 = *(a2 + 16);
    *(a1 + 40) = *(a2 + 32);
    *(a1 + 24) = v6;
  }

  if (*(a2 + 63) < 0)
  {
    sub_23C36FB58((a1 + 48), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v7 = *(a2 + 40);
    *(a1 + 64) = *(a2 + 56);
    *(a1 + 48) = v7;
  }

  v8 = *(a2 + 64);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *a1 = &unk_284F01BD8;
  *(a1 + 8) = &unk_284F01C08;
  *(a1 + 72) = v8;
  *(a1 + 80) = &unk_284F01C30;
  *(a1 + 112) = a3[1].i32[0];
  *(a1 + 96) = vextq_s8(*a3, *a3, 8uLL);
  return a1;
}

void sub_23C3972EC(_Unwind_Exception *a1)
{
  if (*(v2 + 47) < 0)
  {
    operator delete(*(v2 + 24));
    std::runtime_error::~runtime_error(v1);
    _Unwind_Resume(a1);
  }

  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_23C397324(uint64_t a1)
{
  *(a1 + 80) = &unk_284F019C0;
  v2 = *(a1 + 88);
  if (v2)
  {
    if ((*(*v2 + 32))(v2))
    {
      *(a1 + 88) = 0;
    }
  }

  *(a1 + 8) = &unk_284F01C78;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((*(a1 + 47) & 0x80000000) == 0)
  {
LABEL_6:
    std::runtime_error::~runtime_error((a1 + 8));
    return a1;
  }

  operator delete(*(a1 + 24));
  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

void sub_23C397408(std::runtime_error *this)
{
  this->__vftable = &unk_284F01C78;
  if (SHIBYTE(this[3].__imp_.__imp_) < 0)
  {
    operator delete(this[2].__imp_.__imp_);
    if ((SHIBYTE(this[2].__vftable) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = this;

      goto LABEL_5;
    }
  }

  else if ((SHIBYTE(this[2].__vftable) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[1].__vftable);
  v2 = this;

LABEL_5:
  std::runtime_error::~runtime_error(v2);
}

void sub_23C39766C(_Unwind_Exception *a1)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  std::runtime_error::~runtime_error(v3);
  MEMORY[0x23EECF470](v1, v2);
  _Unwind_Resume(a1);
}

void sub_23C3976A4(_Unwind_Exception *a1)
{
  sub_23C397408(v3);
  MEMORY[0x23EECF470](v1, v2);
  _Unwind_Resume(a1);
}

void sub_23C3976F8(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x78uLL);
  sub_23C397DBC(exception, a1);
  __cxa_throw(exception, &unk_284F01B80, sub_23C397324);
}

void sub_23C397754(uint64_t a1)
{
  *(a1 + 80) = &unk_284F019C0;
  v2 = *(a1 + 88);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 88) = 0;
  }

  *(a1 + 8) = &unk_284F01C78;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((*(a1 + 47) & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(*(a1 + 24));
LABEL_6:
  std::runtime_error::~runtime_error((a1 + 8));

  JUMPOUT(0x23EECF470);
}

void sub_23C397844(std::runtime_error *this)
{
  this[4].__imp_.__imp_ = &unk_284F019C0;
  v2 = this[5].__vftable;
  if (v2 && (*(v2->~runtime_error + 4))(v2))
  {
    this[5].__vftable = 0;
  }

  this->__vftable = &unk_284F01C78;
  if (SHIBYTE(this[3].__imp_.__imp_) < 0)
  {
    operator delete(this[2].__imp_.__imp_);
    if ((SHIBYTE(this[2].__vftable) & 0x80000000) == 0)
    {
LABEL_6:
      v3 = this;

      goto LABEL_8;
    }
  }

  else if ((SHIBYTE(this[2].__vftable) & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(this[1].__vftable);
  v3 = this;

LABEL_8:
  std::runtime_error::~runtime_error(v3);
}

void sub_23C397934(std::runtime_error *this)
{
  this[4].__imp_.__imp_ = &unk_284F019C0;
  v2 = this[5].__vftable;
  if (v2 && (*(v2->~runtime_error + 4))(v2))
  {
    this[5].__vftable = 0;
  }

  this->__vftable = &unk_284F01C78;
  if (SHIBYTE(this[3].__imp_.__imp_) < 0)
  {
    operator delete(this[2].__imp_.__imp_);
    if ((SHIBYTE(this[2].__vftable) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((SHIBYTE(this[2].__vftable) & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(this[1].__vftable);
LABEL_6:
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x23EECF470);
}

void sub_23C397A24(void *a1)
{
  *a1 = &unk_284F019C0;
  v2 = a1[1];
  if (v2 && (*(*v2 + 32))(v2))
  {
    a1[1] = 0;
  }

  *(a1 - 9) = &unk_284F01C78;
  if (*(a1 - 9) < 0)
  {
    operator delete(*(a1 - 4));
    if ((*(a1 - 33) & 0x80000000) == 0)
    {
LABEL_6:
      v3 = (a1 - 9);

      goto LABEL_8;
    }
  }

  else if ((*(a1 - 33) & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(*(a1 - 7));
  v3 = (a1 - 9);

LABEL_8:
  std::runtime_error::~runtime_error(v3);
}

void sub_23C397B14(void *a1)
{
  *a1 = &unk_284F019C0;
  v2 = a1[1];
  if (v2 && (*(*v2 + 32))(v2))
  {
    a1[1] = 0;
  }

  *(a1 - 9) = &unk_284F01C78;
  if (*(a1 - 9) < 0)
  {
    operator delete(*(a1 - 4));
    if ((*(a1 - 33) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((*(a1 - 33) & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(*(a1 - 7));
LABEL_6:
  std::runtime_error::~runtime_error((a1 - 9));

  JUMPOUT(0x23EECF470);
}

void sub_23C397C04(std::runtime_error *this)
{
  this->__vftable = &unk_284F01C78;
  if (SHIBYTE(this[3].__imp_.__imp_) < 0)
  {
    operator delete(this[2].__imp_.__imp_);
    if ((SHIBYTE(this[2].__vftable) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SHIBYTE(this[2].__vftable) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[1].__vftable);
LABEL_3:
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x23EECF470);
}

void sub_23C397C94(std::runtime_error *this)
{
  this->__vftable = &unk_284F01C78;
  if (SHIBYTE(this[3].__imp_.__imp_) < 0)
  {
    operator delete(this[2].__imp_.__imp_);
    if ((SHIBYTE(this[2].__vftable) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = this;

      goto LABEL_5;
    }
  }

  else if ((SHIBYTE(this[2].__vftable) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[1].__vftable);
  v2 = this;

LABEL_5:
  std::runtime_error::~runtime_error(v2);
}

void sub_23C397D2C(std::runtime_error *this)
{
  this->__vftable = &unk_284F01C78;
  if (SHIBYTE(this[3].__imp_.__imp_) < 0)
  {
    operator delete(this[2].__imp_.__imp_);
    if ((SHIBYTE(this[2].__vftable) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SHIBYTE(this[2].__vftable) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[1].__vftable);
LABEL_3:
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x23EECF470);
}

uint64_t sub_23C397DBC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_284F01940;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &unk_284F01C78;
  if (*(a2 + 47) < 0)
  {
    sub_23C36FB58((a1 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v4 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v4;
  }

  if (*(a2 + 71) < 0)
  {
    sub_23C36FB58((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v5 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v5;
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 8) = &unk_284F01C50;
  v6 = *(a2 + 88);
  *(a1 + 80) = &unk_284F019C0;
  *(a1 + 88) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v7;
  *a1 = &unk_284F01BD8;
  *(a1 + 8) = &unk_284F01C08;
  *(a1 + 80) = &unk_284F01C30;
  return a1;
}

void sub_23C397F58(_Unwind_Exception *a1)
{
  if (*(v2 + 47) < 0)
  {
    operator delete(*(v2 + 24));
    std::runtime_error::~runtime_error(v1);
    _Unwind_Resume(a1);
  }

  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_23C397FA4(uint64_t a1, const void **a2, __int128 *a3, uint64_t a4)
{
  sub_23C372208(v25);
  if (*(a3 + 23) < 0)
  {
    if (*(a3 + 1))
    {
      v8 = *a3;
    }

    else
    {
      v8 = "<unspecified file>";
    }
  }

  else if (*(a3 + 23))
  {
    v8 = a3;
  }

  else
  {
    v8 = "<unspecified file>";
  }

  v9 = strlen(v8);
  sub_23C372684(&v26, v8, v9);
  if (a4)
  {
    v38 = 40;
    v10 = sub_23C372684(&v26, &v38, 1);
    v11 = MEMORY[0x23EECF240](v10, a4);
    v38 = 41;
    sub_23C372684(v11, &v38, 1);
  }

  v12 = sub_23C372684(&v26, ": ", 2);
  v13 = *(a2 + 23);
  if (v13 >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 23);
  }

  else
  {
    v15 = a2[1];
  }

  sub_23C372684(v12, v14, v15);
  if ((v36 & 0x10) != 0)
  {
    v17 = v35;
    if (v35 < v32)
    {
      v35 = v32;
      v17 = v32;
    }

    v18 = v31;
    v16 = v17 - v31;
    if (v17 - v31 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_39;
    }
  }

  else
  {
    if ((v36 & 8) == 0)
    {
      v16 = 0;
      *(&__dst.__r_.__value_.__s + 23) = 0;
      goto LABEL_27;
    }

    v18 = v29;
    v16 = v30 - v29;
    if ((v30 - v29) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_39:
      sub_23C36FA14();
    }
  }

  if (v16 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v16;
  if (v16)
  {
    memmove(&__dst, v18, v16);
  }

LABEL_27:
  __dst.__r_.__value_.__s.__data_[v16] = 0;
  v25[0] = *MEMORY[0x277D82818];
  v19 = *(MEMORY[0x277D82818] + 72);
  *(v25 + *(v25[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v26 = v19;
  v27 = MEMORY[0x277D82878] + 16;
  if (v34 < 0)
  {
    operator delete(__p);
  }

  v27 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v28);
  std::iostream::~basic_iostream();
  MEMORY[0x23EECF3E0](&v37);
  std::runtime_error::runtime_error(a1, &__dst);
  *a1 = &unk_284F01998;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    *a1 = &unk_284F01C78;
    v20 = a1 + 16;
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    *a1 = &unk_284F01C78;
    v20 = a1 + 16;
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
LABEL_31:
      v21 = *a2;
      *(v20 + 16) = a2[2];
      *v20 = v21;
      goto LABEL_34;
    }
  }

  sub_23C36FB58(v20, *a2, a2[1]);
LABEL_34:
  if (*(a3 + 23) < 0)
  {
    sub_23C36FB58((a1 + 40), *a3, *(a3 + 1));
  }

  else
  {
    v22 = *a3;
    *(a1 + 56) = *(a3 + 2);
    *(a1 + 40) = v22;
  }

  *(a1 + 64) = a4;
  return a1;
}

void sub_23C398388(_Unwind_Exception *a1)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
    std::runtime_error::~runtime_error(v1);
    _Unwind_Resume(a1);
  }

  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

void sub_23C3983C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23C3983F0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = **a2;
  if (v4 != 33)
  {
    if (v4 == 63)
    {
      *a2 = (v3 + 1);
      v5 = v3[1];
      if ((v5 | 0x20) == 0x78 && (v3[2] | 0x20) == 0x6D && (v3[3] | 0x20) == 0x6C)
      {
        v6 = v3[4];
        if (v6 < 0)
        {
          LOBYTE(v6) = 122;
        }

        if (byte_23C3D4413[v6])
        {
          for (i = v3 + 5; ; ++i)
          {
            *a2 = i;
            if (*i == 63)
            {
              if (i[1] == 62)
              {
                v8 = 0;
                v9 = i + 2;
                goto LABEL_60;
              }
            }

            else if (!*i)
            {
              goto LABEL_57;
            }
          }
        }
      }

      for (j = v3 + 2; ; ++j)
      {
        if (v5 == 63)
        {
          if (*j == 62)
          {
            v8 = 0;
            v9 = j + 1;
            goto LABEL_60;
          }
        }

        else if (!v5)
        {
          goto LABEL_57;
        }

        *a2 = j;
        v15 = *j;
        LOBYTE(v5) = v15;
      }
    }

    v8 = a1[13] + (-*(a1 + 104) & 7);
    v146 = a2;
    if ((v8 + 96) > a1[14])
    {
      v12 = a1[8207];
      if (!v12)
      {
        operator new[]();
      }

      v13 = v12(65558);
      v24 = (v13 + (-v13 & 7));
      *v24 = a1[12];
      a1[12] = v13;
      a1[14] = v13 + 65558;
      v8 = v24 + (-(v24 + 8) & 7) + 8;
      a2 = v146;
    }

    a1[13] = v8 + 96;
    *(v8 + 32) = 0;
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 40) = 1;
    v25 = -1;
    *(v8 + 48) = 0;
    v26 = (v8 + 48);
    *(v8 + 64) = 0;
    v27 = (v8 + 64);
    v28 = *a2;
    do
    {
      v29 = *(v28 + v25 + 1);
      if (v29 < 0)
      {
        LOBYTE(v29) = 122;
      }

      ++v25;
    }

    while (byte_23C3D4513[v29]);
    *a2 = v28 + v25;
    if (!v25)
    {
      v143 = a2;
      exception = __cxa_allocate_exception(0x18uLL);
      v22 = *v143;
      v23 = "expected element name";
LABEL_58:
      *exception = &unk_284F01CA0;
      exception[1] = v23;
      exception[2] = v22;
      __cxa_throw(exception, &unk_284F01B38, std::exception::~exception);
    }

    *v8 = v28;
    *(v8 + 16) = v25;
    v30 = (*a2 - 1);
    do
    {
      v32 = *++v30;
      v31 = v32;
      if (v32 < 0)
      {
        v31 = 122;
      }
    }

    while (byte_23C3D4413[v31]);
    *a2 = v30;
    v33 = *v30;
    if (v33 >= 0)
    {
      v34 = *v30;
    }

    else
    {
      v34 = 122;
    }

    v144 = (v8 + 48);
    v145 = v8;
    if (byte_23C3D4613[v34])
    {
      v35 = &unk_23C3D4813;
      do
      {
        *a2 = (v30 + 1);
        v36 = v30;
        do
        {
          v38 = *++v36;
          v37 = v38;
          if (v38 < 0)
          {
            v37 = 122;
          }
        }

        while (byte_23C3D4613[v37]);
        *a2 = v36;
        v39 = (a1[13] + (-*(a1 + 104) & 7));
        if ((v39 + 7) > a1[14])
        {
          v40 = v35;
          v41 = a1[8207];
          if (!v41)
          {
            operator new[]();
          }

          v42 = v41(65558);
          v43 = (v42 + (-v42 & 7));
          *v43 = a1[12];
          a1[12] = v42;
          a1[14] = v42 + 65558;
          v39 = (v43 + (-(v43 + 8) & 7) + 8);
          v8 = v145;
          a2 = v146;
          v26 = v144;
          v35 = v40;
        }

        a1[13] = v39 + 7;
        *v39 = 0;
        v39[1] = 0;
        v44 = *a2 - v30;
        *v39 = v30;
        v39[2] = v44;
        v45 = *v27;
        if (*v27)
        {
          v45 = *(v8 + 72);
          v46 = (v45 + 6);
        }

        else
        {
          v46 = v27;
        }

        *v46 = v39;
        *(v8 + 72) = v39;
        v39[4] = v8;
        v39[5] = v45;
        v39[6] = 0;
        v47 = *a2;
        do
        {
          v49 = *v47++;
          v48 = v49;
          if (v49 < 0)
          {
            v48 = 122;
          }
        }

        while (byte_23C3D4413[v48]);
        *a2 = (v47 - 1);
        if (*(v47 - 1) != 61)
        {
          v140 = a2;
          exception = __cxa_allocate_exception(0x18uLL);
          v22 = *v140;
          v23 = "expected =";
          goto LABEL_58;
        }

        *a2 = v47;
        v50 = *v39;
        if (!*v39)
        {
          v50 = &byte_27E1F3E58;
          v44 = 0;
        }

        v50[v44] = 0;
        v51 = *a2;
        v52 = *a2;
        do
        {
          v53 = v52;
          v55 = *v52++;
          v54 = v55;
          if (v55 < 0)
          {
            v54 = 122;
          }

          ++v51;
        }

        while (byte_23C3D4413[v54]);
        *a2 = (v52 - 1);
        v56 = *(v52 - 1);
        if (v56 != 34 && v56 != 39)
        {
LABEL_334:
          v139 = a2;
          exception = __cxa_allocate_exception(0x18uLL);
          v22 = *v139;
          v23 = "expected ' or ";
          goto LABEL_58;
        }

        *a2 = v52;
        if (v56 == 39)
        {
          do
          {
            v58 = *++v53;
            v57 = v58;
            if (v58 < 0)
            {
              v57 = 122;
            }
          }

          while (v35[v57]);
          *a2 = v53;
          for (k = v53; ; k = v67 + 1)
          {
            while (1)
            {
              v62 = *k;
              if (v62 != 38)
              {
                if (!*k || v62 == 39)
                {
                  goto LABEL_209;
                }

LABEL_109:
                ++k;
                *v53++ = v62;
                continue;
              }

              v63 = k[1];
              if (v63 > 0x66)
              {
                if (v63 == 103)
                {
                  if (k[2] != 116 || k[3] != 59)
                  {
                    goto LABEL_109;
                  }

                  v66 = 62;
                  goto LABEL_136;
                }

                if (v63 == 108)
                {
                  if (k[2] != 116 || k[3] != 59)
                  {
                    goto LABEL_109;
                  }

                  v66 = 60;
LABEL_136:
                  *v53++ = v66;
                  k += 4;
                  continue;
                }

                if (v63 != 113 || k[2] != 117 || k[3] != 111 || k[4] != 116 || k[5] != 59)
                {
                  goto LABEL_109;
                }

                v64 = 34;
                goto LABEL_152;
              }

              if (v63 == 35)
              {
                break;
              }

              if (v63 != 97)
              {
                goto LABEL_109;
              }

              v65 = k[2];
              if (v65 == 112)
              {
                if (k[3] != 111 || k[4] != 115 || k[5] != 59)
                {
                  goto LABEL_109;
                }

                v64 = 39;
LABEL_152:
                *v53++ = v64;
                k += 6;
                continue;
              }

              if (v65 != 109 || k[3] != 112 || k[4] != 59)
              {
                goto LABEL_109;
              }

              *v53++ = 38;
              k += 5;
            }

            v67 = k + 2;
            if (k[2] == 120)
            {
              v68 = 0;
              do
              {
                v69 = v68;
                v70 = *++v67;
                v71 = byte_23C3D4713[v70];
                v68 = v71 + 16 * v68;
              }

              while (v71 != 255);
              if (v69 <= 0x7F)
              {
                goto LABEL_145;
              }
            }

            else
            {
              v72 = 0;
              v67 = k + 1;
              do
              {
                v69 = v72;
                v73 = *++v67;
                v74 = byte_23C3D4713[v73];
                v72 = v74 + 10 * v72;
              }

              while (v74 != 255);
              if (v69 <= 0x7F)
              {
LABEL_145:
                v75 = 1;
                goto LABEL_157;
              }
            }

            if (v69 > 0x7FF)
            {
              if (v69 >> 16)
              {
                if (v69 >> 16 > 0x10)
                {
                  goto LABEL_337;
                }

                v53[3] = v69 & 0x3F | 0x80;
                v53[2] = (v69 >> 6) & 0x3F | 0x80;
                v53[1] = (v69 >> 12) & 0x3F | 0x80;
                LODWORD(v69) = (v69 >> 18) | 0xFFFFFFF0;
                v75 = 4;
              }

              else
              {
                v53[2] = v69 & 0x3F | 0x80;
                v53[1] = (v69 >> 6) & 0x3F | 0x80;
                LODWORD(v69) = (v69 >> 12) | 0xFFFFFFE0;
                v75 = 3;
              }
            }

            else
            {
              v53[1] = v69 & 0x3F | 0x80;
              LODWORD(v69) = (v69 >> 6) | 0xFFFFFFC0;
              v75 = 2;
            }

LABEL_157:
            *v53 = v69;
            if (*v67 != 59)
            {
              goto LABEL_332;
            }

            v53 += v75;
          }
        }

        do
        {
          v61 = *++v53;
          v60 = v61;
          if (v61 < 0)
          {
            v60 = 122;
          }
        }

        while (byte_23C3D4913[v60]);
        *a2 = v53;
        k = v53;
        while (1)
        {
          v76 = *k;
          if (v76 != 38)
          {
            break;
          }

          v77 = k[1];
          if (v77 <= 0x66)
          {
            if (v77 == 35)
            {
              v67 = k + 2;
              if (k[2] == 120)
              {
                v81 = 0;
                do
                {
                  v82 = v81;
                  v83 = *++v67;
                  v84 = byte_23C3D4713[v83];
                  v81 = v84 + 16 * v81;
                }

                while (v84 != 255);
                if (v82 <= 0x7F)
                {
                  goto LABEL_195;
                }
              }

              else
              {
                v85 = 0;
                v67 = k + 1;
                do
                {
                  v82 = v85;
                  v86 = *++v67;
                  v87 = byte_23C3D4713[v86];
                  v85 = v87 + 10 * v85;
                }

                while (v87 != 255);
                if (v82 <= 0x7F)
                {
LABEL_195:
                  v88 = 1;
                  goto LABEL_207;
                }
              }

              if (v82 > 0x7FF)
              {
                if (v82 >> 16)
                {
                  if (v82 >> 16 > 0x10)
                  {
LABEL_337:
                    v142 = __cxa_allocate_exception(0x18uLL);
                    *v142 = &unk_284F01CA0;
                    v142[1] = "invalid numeric character entity";
                    v142[2] = v53;
                    __cxa_throw(v142, &unk_284F01B38, std::exception::~exception);
                  }

                  v53[3] = v82 & 0x3F | 0x80;
                  v53[2] = (v82 >> 6) & 0x3F | 0x80;
                  v53[1] = (v82 >> 12) & 0x3F | 0x80;
                  LODWORD(v82) = (v82 >> 18) | 0xFFFFFFF0;
                  v88 = 4;
                }

                else
                {
                  v53[2] = v82 & 0x3F | 0x80;
                  v53[1] = (v82 >> 6) & 0x3F | 0x80;
                  LODWORD(v82) = (v82 >> 12) | 0xFFFFFFE0;
                  v88 = 3;
                }
              }

              else
              {
                v53[1] = v82 & 0x3F | 0x80;
                LODWORD(v82) = (v82 >> 6) | 0xFFFFFFC0;
                v88 = 2;
              }

LABEL_207:
              *v53 = v82;
              if (*v67 != 59)
              {
LABEL_332:
                v137 = __cxa_allocate_exception(0x18uLL);
                v138 = "expected ;";
LABEL_333:
                *v137 = &unk_284F01CA0;
                v137[1] = v138;
                v137[2] = v67;
                __cxa_throw(v137, &unk_284F01B38, std::exception::~exception);
              }

              v53 += v88;
              k = v67 + 1;
            }

            else
            {
              if (v77 != 97)
              {
                goto LABEL_159;
              }

              v79 = k[2];
              if (v79 == 112)
              {
                if (k[3] != 111 || k[4] != 115 || k[5] != 59)
                {
                  goto LABEL_159;
                }

                v78 = 39;
LABEL_202:
                *v53++ = v78;
                k += 6;
              }

              else
              {
                if (v79 != 109 || k[3] != 112 || k[4] != 59)
                {
                  goto LABEL_159;
                }

                *v53++ = 38;
                k += 5;
              }
            }
          }

          else if (v77 == 103)
          {
            if (k[2] != 116 || k[3] != 59)
            {
              goto LABEL_159;
            }

            v80 = 62;
LABEL_186:
            *v53++ = v80;
            k += 4;
          }

          else
          {
            if (v77 == 108)
            {
              if (k[2] != 116 || k[3] != 59)
              {
                goto LABEL_159;
              }

              v80 = 60;
              goto LABEL_186;
            }

            if (v77 == 113 && k[2] == 117 && k[3] == 111 && k[4] == 116 && k[5] == 59)
            {
              v78 = 34;
              goto LABEL_202;
            }

LABEL_159:
            ++k;
            *v53++ = v76;
          }
        }

        if (*k && v76 != 34)
        {
          goto LABEL_159;
        }

LABEL_209:
        *a2 = k;
        v89 = &v53[-v51];
        v39[1] = v52;
        v39[3] = v89;
        if (**a2 != v56)
        {
          goto LABEL_334;
        }

        ++*a2;
        v90 = v39[1];
        if (!v90)
        {
          v90 = &byte_27E1F3E58;
          v89 = 0;
        }

        v89[v90] = 0;
        v30 = (*a2 - 1);
        do
        {
          v92 = *++v30;
          v91 = v92;
          if (v92 < 0)
          {
            v91 = 122;
          }
        }

        while (byte_23C3D4413[v91]);
        *a2 = v30;
        v33 = *v30;
        if (v33 >= 0)
        {
          v93 = *v30;
        }

        else
        {
          v93 = 122;
        }
      }

      while (byte_23C3D4613[v93]);
    }

    if (v33 != 47)
    {
      if (v33 == 62)
      {
        *a2 = (v30 + 1);
        while (1)
        {
          v95 = (*a2 - 1);
          do
          {
            v97 = *++v95;
            v96 = v97;
            if (v97 < 0)
            {
              v96 = 122;
            }
          }

          while (byte_23C3D4413[v96]);
          *a2 = v95;
          v98 = *v95;
LABEL_232:
          if (v98 != 60)
          {
            break;
          }

          v127 = *a2;
          v128 = *(*a2 + 1);
          if (v128 == 47)
          {
            *a2 = v127 + 2;
            v129 = (v127 + 1);
            do
            {
              v131 = *++v129;
              v130 = v131;
              if (v131 < 0)
              {
                v130 = 122;
              }
            }

            while (byte_23C3D4513[v130]);
            *a2 = v129;
            do
            {
              v133 = *v129++;
              v132 = v133;
              if (v133 < 0)
              {
                v132 = 122;
              }
            }

            while (byte_23C3D4413[v132]);
            *a2 = (v129 - 1);
            if (*(v129 - 1) != 62)
            {
              goto LABEL_336;
            }

            *a2 = v129;
          }

          else
          {
            ++*a2;
            v134 = sub_23C3983F0(a1, v146);
            v26 = v144;
            v8 = v145;
            a2 = v146;
            if (v134)
            {
              v135 = *v144;
              if (*v144)
              {
                v135 = *(v145 + 56);
                v94 = (v135 + 88);
              }

              else
              {
                v94 = v144;
              }

              *v94 = v134;
              *(v145 + 56) = v134;
              v134[4] = v145;
              v134[10] = v135;
              v134[11] = 0;
            }
          }

          if (v128 == 47)
          {
            goto LABEL_326;
          }
        }

        if (!v98)
        {
LABEL_57:
          v20 = a2;
          exception = __cxa_allocate_exception(0x18uLL);
          v22 = *v20;
          v23 = "unexpected end of data";
          goto LABEL_58;
        }

        v99 = *a2;
        v67 = (*a2 - 1);
        do
        {
          v101 = *++v67;
          v100 = v101;
          if (v101 < 0)
          {
            v100 = 122;
          }
        }

        while (byte_23C3D4A13[v100]);
        *a2 = v67;
        for (m = v67; ; m = v111 + 1)
        {
          while (1)
          {
            while (1)
            {
              while (1)
              {
                v103 = *m;
                v104 = v103 >= 0 ? *m : 122;
                if (v103 == 38)
                {
                  break;
                }

                if (!*m || *m == 60)
                {
                  *a2 = m;
                  if (*(v67 - 1) == 32)
                  {
                    --v67;
                  }

                  v120 = a1[13] + (-*(a1 + 104) & 7);
                  if ((v120 + 96) > a1[14])
                  {
                    v121 = a1[8207];
                    if (!v121)
                    {
                      operator new[]();
                    }

                    v122 = v121(65558);
                    v123 = (v122 + (-v122 & 7));
                    *v123 = a1[12];
                    a1[12] = v122;
                    a1[14] = v122 + 65558;
                    v120 = v123 + (-(v123 + 8) & 7) + 8;
                    v8 = v145;
                    a2 = v146;
                    v26 = v144;
                  }

                  a1[13] = v120 + 96;
                  *(v120 + 40) = 2;
                  *(v120 + 48) = 0;
                  *(v120 + 64) = 0;
                  *v120 = 0;
                  *(v120 + 8) = v99;
                  *(v120 + 24) = &v67[-v99];
                  v124 = *v26;
                  if (*v26)
                  {
                    v124 = *(v8 + 56);
                    v125 = (v124 + 88);
                  }

                  else
                  {
                    v125 = v26;
                  }

                  *v125 = v120;
                  *(v8 + 56) = v120;
                  *(v120 + 32) = v8;
                  *(v120 + 80) = v124;
                  *(v120 + 88) = 0;
                  v126 = *(v8 + 8);
                  if (!v126)
                  {
                    v126 = &byte_27E1F3E58;
                  }

                  if (!*v126)
                  {
                    *(v8 + 8) = v99;
                    *(v8 + 24) = &v67[-v99];
                  }

                  v98 = **a2;
                  *v67 = 0;
                  goto LABEL_232;
                }

LABEL_246:
                if (byte_23C3D4413[v104])
                {
                  *v67 = 32;
                  do
                  {
                    v106 = *++m;
                    v105 = v106;
                    if (v106 < 0)
                    {
                      v105 = 122;
                    }
                  }

                  while (byte_23C3D4413[v105]);
                  ++v67;
                }

                else
                {
                  ++m;
                  *v67++ = v103;
                }
              }

              v107 = m[1];
              if (v107 <= 0x66)
              {
                break;
              }

              if (v107 == 103)
              {
                if (m[2] != 116 || m[3] != 59)
                {
                  goto LABEL_246;
                }

                v110 = 62;
                goto LABEL_274;
              }

              if (v107 == 108)
              {
                if (m[2] != 116 || m[3] != 59)
                {
                  goto LABEL_246;
                }

                v110 = 60;
LABEL_274:
                *v67++ = v110;
                m += 4;
              }

              else
              {
                if (v107 != 113 || m[2] != 117 || m[3] != 111 || m[4] != 116 || m[5] != 59)
                {
                  goto LABEL_246;
                }

                v108 = 34;
LABEL_290:
                *v67++ = v108;
                m += 6;
              }
            }

            if (v107 == 35)
            {
              break;
            }

            if (v107 != 97)
            {
              goto LABEL_246;
            }

            v109 = m[2];
            if (v109 == 112)
            {
              if (m[3] != 111 || m[4] != 115 || m[5] != 59)
              {
                goto LABEL_246;
              }

              v108 = 39;
              goto LABEL_290;
            }

            if (v109 != 109 || m[3] != 112 || m[4] != 59)
            {
              goto LABEL_246;
            }

            *v67++ = 38;
            m += 5;
          }

          v111 = m + 2;
          if (m[2] == 120)
          {
            v112 = 0;
            do
            {
              v113 = v112;
              v114 = *++v111;
              v115 = byte_23C3D4713[v114];
              v112 = v115 + 16 * v112;
            }

            while (v115 != 255);
            if (v113 <= 0x7F)
            {
              goto LABEL_283;
            }
          }

          else
          {
            v116 = 0;
            v111 = m + 1;
            do
            {
              v113 = v116;
              v117 = *++v111;
              v118 = byte_23C3D4713[v117];
              v116 = v118 + 10 * v116;
            }

            while (v118 != 255);
            if (v113 <= 0x7F)
            {
LABEL_283:
              v119 = 1;
              goto LABEL_295;
            }
          }

          if (v113 > 0x7FF)
          {
            if (v113 >> 16)
            {
              if (v113 >> 16 > 0x10)
              {
                v137 = __cxa_allocate_exception(0x18uLL);
                v138 = "invalid numeric character entity";
                goto LABEL_333;
              }

              v67[3] = v113 & 0x3F | 0x80;
              v67[2] = (v113 >> 6) & 0x3F | 0x80;
              v67[1] = (v113 >> 12) & 0x3F | 0x80;
              LODWORD(v113) = (v113 >> 18) | 0xFFFFFFF0;
              v119 = 4;
            }

            else
            {
              v67[2] = v113 & 0x3F | 0x80;
              v67[1] = (v113 >> 6) & 0x3F | 0x80;
              LODWORD(v113) = (v113 >> 12) | 0xFFFFFFE0;
              v119 = 3;
            }
          }

          else
          {
            v67[1] = v113 & 0x3F | 0x80;
            LODWORD(v113) = (v113 >> 6) | 0xFFFFFFC0;
            v119 = 2;
          }

LABEL_295:
          *v67 = v113;
          if (*v111 != 59)
          {
            v136 = __cxa_allocate_exception(0x18uLL);
            *v136 = &unk_284F01CA0;
            v136[1] = "expected ;";
            v136[2] = v111;
            __cxa_throw(v136, &unk_284F01B38, std::exception::~exception);
          }

          v67 += v119;
        }
      }

      goto LABEL_336;
    }

    *a2 = (v30 + 1);
    if (v30[1] != 62)
    {
LABEL_336:
      v141 = a2;
      exception = __cxa_allocate_exception(0x18uLL);
      v22 = *v141;
      v23 = "expected >";
      goto LABEL_58;
    }

    *a2 = (v30 + 2);
LABEL_326:
    if (*v8)
    {
      *(*v8 + *(v8 + 16)) = 0;
    }

    else
    {
      byte_27E1F3E58 = 0;
    }

    return v8;
  }

  v10 = v3[1];
  if (v10 == 45)
  {
    if (v3[2] == 45)
    {
      for (n = v3 + 3; ; ++n)
      {
        *a2 = n;
        if (*n == 45)
        {
          if (n[1] == 45 && n[2] == 62)
          {
            v8 = 0;
            v9 = n + 3;
            goto LABEL_60;
          }
        }

        else if (!*n)
        {
          goto LABEL_57;
        }
      }
    }

    goto LABEL_54;
  }

  if (v10 == 68)
  {
    if (v3[2] == 79 && v3[3] == 67 && v3[4] == 84 && v3[5] == 89 && v3[6] == 80 && v3[7] == 69)
    {
      v16 = v3[8];
      if (v16 < 0)
      {
        LOBYTE(v16) = 122;
      }

      if (byte_23C3D4413[v16])
      {
        *a2 = (v3 + 9);
        sub_23C399860(a2);
        return 0;
      }
    }

LABEL_54:
    v9 = v3 + 1;
    while (1)
    {
      *a2 = v9;
      v19 = *v9++;
      v18 = v19;
      if (v19 == 62)
      {
        break;
      }

      if (!v18)
      {
        goto LABEL_57;
      }
    }

    v8 = 0;
LABEL_60:
    *a2 = v9;
    return v8;
  }

  if (v10 != 91 || v3[2] != 67 || v3[3] != 68 || v3[4] != 65 || v3[5] != 84 || v3[6] != 65 || v3[7] != 91)
  {
    goto LABEL_54;
  }

  *a2 = (v3 + 8);

  return sub_23C3996E0(a1, a2);
}

uint64_t sub_23C3996E0(void *a1, void *a2)
{
  v4 = *a2;
  for (i = (*a2 + 1); *(i - 1) != 93; ++i)
  {
    if (!*(i - 1))
    {
      exception = __cxa_allocate_exception(0x18uLL);
      v13 = *a2;
      *exception = &unk_284F01CA0;
      exception[1] = "unexpected end of data";
      exception[2] = v13;
      __cxa_throw(exception, &unk_284F01B38, std::exception::~exception);
    }

LABEL_3:
    *a2 = i;
  }

  if (*i != 93 || i[1] != 62)
  {
    goto LABEL_3;
  }

  v6 = a1[14];
  result = a1[13] + (-*(a1 + 104) & 7);
  if (result + 96 > v6)
  {
    v8 = a1[8207];
    if (!v8)
    {
      operator new[]();
    }

    v9 = v8(65558);
    v10 = (v9 + (-v9 & 7));
    *v10 = a1[12];
    a1[12] = v9;
    a1[14] = v9 + 65558;
    result = v10 + (-(v10 + 8) & 7) + 8;
  }

  a1[13] = result + 96;
  *result = 0;
  *(result + 8) = 0;
  *(result + 40) = 3;
  *(result + 48) = 0;
  *(result + 64) = 0;
  v11 = *a2 - v4;
  *(result + 8) = v4;
  *(result + 24) = v11;
  *(result + 32) = 0;
  **a2 = 0;
  *a2 += 3;
  return result;
}

uint64_t *sub_23C399860(uint64_t *result)
{
  for (i = *result; ; *result = i)
  {
LABEL_2:
    v2 = *i;
    if (v2 == 91)
    {
      *result = ++i;
      v3 = 1;
      while (1)
      {
        v4 = *i;
        if (v4 == 91)
        {
          ++v3;
        }

        else if (v4 == 93)
        {
          --v3;
        }

        else if (!*i)
        {
          goto LABEL_15;
        }

        *result = ++i;
        if (v3 <= 0)
        {
          goto LABEL_2;
        }
      }
    }

    if (v2 == 62)
    {
      break;
    }

    if (!*i)
    {
LABEL_15:
      v5 = result;
      exception = __cxa_allocate_exception(0x18uLL);
      v7 = *v5;
      *exception = &unk_284F01CA0;
      exception[1] = "unexpected end of data";
      exception[2] = v7;
      __cxa_throw(exception, &unk_284F01B38, std::exception::~exception);
    }

    ++i;
  }

  *result = (i + 1);
  return result;
}

void sub_23C399948(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x23EECF470);
}

uint64_t sub_23C399988(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = **a2;
  if (v5 != 33)
  {
    if (v5 == 63)
    {
      *a2 = (v4 + 1);
      v6 = v4[1];
      if ((v6 | 0x20) == 0x78 && (v4[2] | 0x20) == 0x6D && (v4[3] | 0x20) == 0x6C)
      {
        v7 = v4[4];
        if (v7 < 0)
        {
          LOBYTE(v7) = 122;
        }

        if (byte_23C3D4413[v7])
        {
          for (i = v4 + 5; ; ++i)
          {
            *a2 = i;
            if (*i == 63)
            {
              if (i[1] == 62)
              {
                v9 = 0;
                v10 = i + 2;
                goto LABEL_60;
              }
            }

            else if (!*i)
            {
              goto LABEL_57;
            }
          }
        }
      }

      for (j = v4 + 2; ; ++j)
      {
        if (v6 == 63)
        {
          if (*j == 62)
          {
            v9 = 0;
            v10 = j + 1;
            goto LABEL_60;
          }
        }

        else if (!v6)
        {
          goto LABEL_57;
        }

        *a2 = j;
        v16 = *j;
        LOBYTE(v6) = v16;
      }
    }

    v9 = a1[13] + (-*(a1 + 104) & 7);
    if ((v9 + 96) > a1[14])
    {
      v13 = a1[8207];
      if (!v13)
      {
        operator new[]();
      }

      v14 = v13(65558);
      v24 = (v14 + (-v14 & 7));
      *v24 = a1[12];
      a1[12] = v14;
      a1[14] = v14 + 65558;
      v9 = v24 + (-(v24 + 8) & 7) + 8;
    }

    a1[13] = v9 + 96;
    *(v9 + 32) = 0;
    *v9 = 0;
    *(v9 + 8) = 0;
    *(v9 + 40) = 1;
    v25 = -1;
    *(v9 + 48) = 0;
    v26 = (v9 + 48);
    *(v9 + 64) = 0;
    v27 = (v9 + 64);
    v28 = *a2;
    do
    {
      v29 = *(v28 + v25 + 1);
      if (v29 < 0)
      {
        LOBYTE(v29) = 122;
      }

      ++v25;
    }

    while (byte_23C3D4513[v29]);
    *a2 = v28 + v25;
    if (!v25)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      v22 = *a2;
      v23 = "expected element name";
      goto LABEL_58;
    }

    *v9 = v28;
    *(v9 + 16) = v25;
    v30 = (*a2 - 1);
    do
    {
      v32 = *++v30;
      v31 = v32;
      if (v32 < 0)
      {
        v31 = 122;
      }
    }

    while (byte_23C3D4413[v31]);
    *a2 = v30;
    v33 = *v30;
    if (v33 >= 0)
    {
      v34 = *v30;
    }

    else
    {
      v34 = 122;
    }

    v135 = (v9 + 48);
    if (byte_23C3D4613[v34])
    {
      v35 = &unk_23C3D4813;
      do
      {
        *a2 = (v30 + 1);
        v36 = v30;
        do
        {
          v38 = *++v36;
          v37 = v38;
          if (v38 < 0)
          {
            v37 = 122;
          }
        }

        while (byte_23C3D4613[v37]);
        *a2 = v36;
        v39 = (a1[13] + (-*(a1 + 104) & 7));
        if ((v39 + 7) > a1[14])
        {
          v40 = v35;
          v41 = a1[8207];
          if (!v41)
          {
            operator new[]();
          }

          v42 = v41(65558);
          v43 = (v42 + (-v42 & 7));
          *v43 = a1[12];
          a1[12] = v42;
          a1[14] = v42 + 65558;
          v39 = (v43 + (-(v43 + 8) & 7) + 8);
          v27 = (v9 + 64);
          v26 = (v9 + 48);
          v35 = v40;
        }

        a1[13] = v39 + 7;
        *v39 = 0;
        v39[1] = 0;
        v44 = *a2 - v30;
        *v39 = v30;
        v39[2] = v44;
        v45 = *v27;
        if (*v27)
        {
          v45 = *(v9 + 72);
          v46 = (v45 + 6);
        }

        else
        {
          v46 = v27;
        }

        *v46 = v39;
        *(v9 + 72) = v39;
        v39[4] = v9;
        v39[5] = v45;
        v39[6] = 0;
        v47 = *a2;
        do
        {
          v49 = *v47++;
          v48 = v49;
          if (v49 < 0)
          {
            v48 = 122;
          }
        }

        while (byte_23C3D4413[v48]);
        *a2 = (v47 - 1);
        if (*(v47 - 1) != 61)
        {
          exception = __cxa_allocate_exception(0x18uLL);
          v22 = *a2;
          v23 = "expected =";
          goto LABEL_58;
        }

        *a2 = v47;
        v50 = *v39;
        if (!*v39)
        {
          v50 = &byte_27E1F3E58;
          v44 = 0;
        }

        v50[v44] = 0;
        v51 = *a2;
        v52 = *a2;
        do
        {
          v53 = v52;
          v55 = *v52++;
          v54 = v55;
          if (v55 < 0)
          {
            v54 = 122;
          }

          ++v51;
        }

        while (byte_23C3D4413[v54]);
        *a2 = (v52 - 1);
        v56 = *(v52 - 1);
        if (v56 != 34 && v56 != 39)
        {
LABEL_319:
          exception = __cxa_allocate_exception(0x18uLL);
          v22 = *a2;
          v23 = "expected ' or ";
          goto LABEL_58;
        }

        *a2 = v52;
        if (v56 == 39)
        {
          do
          {
            v58 = *++v53;
            v57 = v58;
            if (v58 < 0)
            {
              v57 = 122;
            }
          }

          while (v35[v57]);
          *a2 = v53;
          for (k = v53; ; k = v67 + 1)
          {
            while (1)
            {
              v62 = *k;
              if (v62 != 38)
              {
                if (!*k || v62 == 39)
                {
                  goto LABEL_209;
                }

LABEL_109:
                ++k;
                *v53++ = v62;
                continue;
              }

              v63 = k[1];
              if (v63 > 0x66)
              {
                if (v63 == 103)
                {
                  if (k[2] != 116 || k[3] != 59)
                  {
                    goto LABEL_109;
                  }

                  v66 = 62;
                  goto LABEL_136;
                }

                if (v63 == 108)
                {
                  if (k[2] != 116 || k[3] != 59)
                  {
                    goto LABEL_109;
                  }

                  v66 = 60;
LABEL_136:
                  *v53++ = v66;
                  k += 4;
                  continue;
                }

                if (v63 != 113 || k[2] != 117 || k[3] != 111 || k[4] != 116 || k[5] != 59)
                {
                  goto LABEL_109;
                }

                v64 = 34;
                goto LABEL_152;
              }

              if (v63 == 35)
              {
                break;
              }

              if (v63 != 97)
              {
                goto LABEL_109;
              }

              v65 = k[2];
              if (v65 == 112)
              {
                if (k[3] != 111 || k[4] != 115 || k[5] != 59)
                {
                  goto LABEL_109;
                }

                v64 = 39;
LABEL_152:
                *v53++ = v64;
                k += 6;
                continue;
              }

              if (v65 != 109 || k[3] != 112 || k[4] != 59)
              {
                goto LABEL_109;
              }

              *v53++ = 38;
              k += 5;
            }

            v67 = k + 2;
            if (k[2] == 120)
            {
              v68 = 0;
              do
              {
                v69 = v68;
                v70 = *++v67;
                v71 = byte_23C3D4713[v70];
                v68 = v71 + 16 * v68;
              }

              while (v71 != 255);
              if (v69 <= 0x7F)
              {
                goto LABEL_145;
              }
            }

            else
            {
              v72 = 0;
              v67 = k + 1;
              do
              {
                v69 = v72;
                v73 = *++v67;
                v74 = byte_23C3D4713[v73];
                v72 = v74 + 10 * v72;
              }

              while (v74 != 255);
              if (v69 <= 0x7F)
              {
LABEL_145:
                v75 = 1;
                goto LABEL_157;
              }
            }

            if (v69 > 0x7FF)
            {
              if (v69 >> 16)
              {
                if (v69 >> 16 > 0x10)
                {
                  goto LABEL_317;
                }

                v53[3] = v69 & 0x3F | 0x80;
                v53[2] = (v69 >> 6) & 0x3F | 0x80;
                v53[1] = (v69 >> 12) & 0x3F | 0x80;
                LODWORD(v69) = (v69 >> 18) | 0xFFFFFFF0;
                v75 = 4;
              }

              else
              {
                v53[2] = v69 & 0x3F | 0x80;
                v53[1] = (v69 >> 6) & 0x3F | 0x80;
                LODWORD(v69) = (v69 >> 12) | 0xFFFFFFE0;
                v75 = 3;
              }
            }

            else
            {
              v53[1] = v69 & 0x3F | 0x80;
              LODWORD(v69) = (v69 >> 6) | 0xFFFFFFC0;
              v75 = 2;
            }

LABEL_157:
            *v53 = v69;
            if (*v67 != 59)
            {
              goto LABEL_318;
            }

            v53 += v75;
          }
        }

        do
        {
          v61 = *++v53;
          v60 = v61;
          if (v61 < 0)
          {
            v60 = 122;
          }
        }

        while (byte_23C3D4913[v60]);
        *a2 = v53;
        k = v53;
        while (1)
        {
          v76 = *k;
          if (v76 != 38)
          {
            break;
          }

          v77 = k[1];
          if (v77 <= 0x66)
          {
            if (v77 == 35)
            {
              v67 = k + 2;
              if (k[2] == 120)
              {
                v81 = 0;
                do
                {
                  v82 = v81;
                  v83 = *++v67;
                  v84 = byte_23C3D4713[v83];
                  v81 = v84 + 16 * v81;
                }

                while (v84 != 255);
                if (v82 <= 0x7F)
                {
                  goto LABEL_195;
                }
              }

              else
              {
                v85 = 0;
                v67 = k + 1;
                do
                {
                  v82 = v85;
                  v86 = *++v67;
                  v87 = byte_23C3D4713[v86];
                  v85 = v87 + 10 * v85;
                }

                while (v87 != 255);
                if (v82 <= 0x7F)
                {
LABEL_195:
                  v88 = 1;
                  goto LABEL_207;
                }
              }

              if (v82 > 0x7FF)
              {
                if (v82 >> 16)
                {
                  if (v82 >> 16 > 0x10)
                  {
LABEL_317:
                    v133 = __cxa_allocate_exception(0x18uLL);
                    *v133 = &unk_284F01CA0;
                    v133[1] = "invalid numeric character entity";
                    v133[2] = v53;
                    __cxa_throw(v133, &unk_284F01B38, std::exception::~exception);
                  }

                  v53[3] = v82 & 0x3F | 0x80;
                  v53[2] = (v82 >> 6) & 0x3F | 0x80;
                  v53[1] = (v82 >> 12) & 0x3F | 0x80;
                  LODWORD(v82) = (v82 >> 18) | 0xFFFFFFF0;
                  v88 = 4;
                }

                else
                {
                  v53[2] = v82 & 0x3F | 0x80;
                  v53[1] = (v82 >> 6) & 0x3F | 0x80;
                  LODWORD(v82) = (v82 >> 12) | 0xFFFFFFE0;
                  v88 = 3;
                }
              }

              else
              {
                v53[1] = v82 & 0x3F | 0x80;
                LODWORD(v82) = (v82 >> 6) | 0xFFFFFFC0;
                v88 = 2;
              }

LABEL_207:
              *v53 = v82;
              if (*v67 != 59)
              {
LABEL_318:
                v134 = __cxa_allocate_exception(0x18uLL);
                *v134 = &unk_284F01CA0;
                v134[1] = "expected ;";
                v134[2] = v67;
                __cxa_throw(v134, &unk_284F01B38, std::exception::~exception);
              }

              v53 += v88;
              k = v67 + 1;
            }

            else
            {
              if (v77 != 97)
              {
                goto LABEL_159;
              }

              v79 = k[2];
              if (v79 == 112)
              {
                if (k[3] != 111 || k[4] != 115 || k[5] != 59)
                {
                  goto LABEL_159;
                }

                v78 = 39;
LABEL_202:
                *v53++ = v78;
                k += 6;
              }

              else
              {
                if (v79 != 109 || k[3] != 112 || k[4] != 59)
                {
                  goto LABEL_159;
                }

                *v53++ = 38;
                k += 5;
              }
            }
          }

          else if (v77 == 103)
          {
            if (k[2] != 116 || k[3] != 59)
            {
              goto LABEL_159;
            }

            v80 = 62;
LABEL_186:
            *v53++ = v80;
            k += 4;
          }

          else
          {
            if (v77 == 108)
            {
              if (k[2] != 116 || k[3] != 59)
              {
                goto LABEL_159;
              }

              v80 = 60;
              goto LABEL_186;
            }

            if (v77 == 113 && k[2] == 117 && k[3] == 111 && k[4] == 116 && k[5] == 59)
            {
              v78 = 34;
              goto LABEL_202;
            }

LABEL_159:
            ++k;
            *v53++ = v76;
          }
        }

        if (*k && v76 != 34)
        {
          goto LABEL_159;
        }

LABEL_209:
        *a2 = k;
        v89 = &v53[-v51];
        v39[1] = v52;
        v39[3] = v89;
        if (**a2 != v56)
        {
          goto LABEL_319;
        }

        ++*a2;
        v90 = v39[1];
        if (!v90)
        {
          v90 = &byte_27E1F3E58;
          v89 = 0;
        }

        v89[v90] = 0;
        v30 = (*a2 - 1);
        do
        {
          v92 = *++v30;
          v91 = v92;
          if (v92 < 0)
          {
            v91 = 122;
          }
        }

        while (byte_23C3D4413[v91]);
        *a2 = v30;
        v33 = *v30;
        if (v33 >= 0)
        {
          v93 = *v30;
        }

        else
        {
          v93 = 122;
        }
      }

      while (byte_23C3D4613[v93]);
    }

    if (v33 != 47)
    {
      if (v33 != 62)
      {
        goto LABEL_321;
      }

      *a2 = (v30 + 1);
      while (1)
      {
        v96 = *a2;
        v98 = *a2 - 1;
        v97 = **a2;
        while (v97 != 60)
        {
          if (!v97)
          {
            goto LABEL_57;
          }

          *a2 = v96;
          v53 = v98;
          do
          {
            v100 = *++v53;
            v99 = v100;
            if (v100 < 0)
            {
              v99 = 122;
            }
          }

          while (byte_23C3D4B13[v99]);
          *a2 = v53;
          v101 = v53;
          while (1)
          {
            v102 = *v101;
            if (v102 != 38)
            {
              break;
            }

            v103 = v101[1];
            if (v103 <= 0x66)
            {
              if (v103 == 35)
              {
                v107 = v101 + 2;
                if (v101[2] == 120)
                {
                  v108 = 0;
                  do
                  {
                    v109 = v108;
                    v110 = *++v107;
                    v111 = byte_23C3D4713[v110];
                    v108 = v111 + 16 * v108;
                  }

                  while (v111 != 255);
                  if (v109 <= 0x7F)
                  {
                    goto LABEL_271;
                  }
                }

                else
                {
                  v112 = 0;
                  v107 = v101 + 1;
                  do
                  {
                    v109 = v112;
                    v113 = *++v107;
                    v114 = byte_23C3D4713[v113];
                    v112 = v114 + 10 * v112;
                  }

                  while (v114 != 255);
                  if (v109 <= 0x7F)
                  {
LABEL_271:
                    v115 = 1;
                    goto LABEL_283;
                  }
                }

                if (v109 > 0x7FF)
                {
                  if (v109 >> 16)
                  {
                    if (v109 >> 16 > 0x10)
                    {
                      goto LABEL_317;
                    }

                    v53[3] = v109 & 0x3F | 0x80;
                    v53[2] = (v109 >> 6) & 0x3F | 0x80;
                    v53[1] = (v109 >> 12) & 0x3F | 0x80;
                    LODWORD(v109) = (v109 >> 18) | 0xFFFFFFF0;
                    v115 = 4;
                  }

                  else
                  {
                    v53[2] = v109 & 0x3F | 0x80;
                    v53[1] = (v109 >> 6) & 0x3F | 0x80;
                    LODWORD(v109) = (v109 >> 12) | 0xFFFFFFE0;
                    v115 = 3;
                  }
                }

                else
                {
                  v53[1] = v109 & 0x3F | 0x80;
                  LODWORD(v109) = (v109 >> 6) | 0xFFFFFFC0;
                  v115 = 2;
                }

LABEL_283:
                *v53 = v109;
                if (*v107 != 59)
                {
                  v132 = __cxa_allocate_exception(0x18uLL);
                  *v132 = &unk_284F01CA0;
                  v132[1] = "expected ;";
                  v132[2] = v107;
                  __cxa_throw(v132, &unk_284F01B38, std::exception::~exception);
                }

                v53 += v115;
                v101 = v107 + 1;
              }

              else
              {
                if (v103 != 97)
                {
                  goto LABEL_235;
                }

                v105 = v101[2];
                if (v105 == 112)
                {
                  if (v101[3] != 111 || v101[4] != 115 || v101[5] != 59)
                  {
                    goto LABEL_235;
                  }

                  v104 = 39;
LABEL_278:
                  *v53++ = v104;
                  v101 += 6;
                }

                else
                {
                  if (v105 != 109 || v101[3] != 112 || v101[4] != 59)
                  {
                    goto LABEL_235;
                  }

                  *v53++ = 38;
                  v101 += 5;
                }
              }
            }

            else if (v103 == 103)
            {
              if (v101[2] != 116 || v101[3] != 59)
              {
                goto LABEL_235;
              }

              v106 = 62;
LABEL_262:
              *v53++ = v106;
              v101 += 4;
            }

            else
            {
              if (v103 == 108)
              {
                if (v101[2] != 116 || v101[3] != 59)
                {
                  goto LABEL_235;
                }

                v106 = 60;
                goto LABEL_262;
              }

              if (v103 == 113 && v101[2] == 117 && v101[3] == 111 && v101[4] == 116 && v101[5] == 59)
              {
                v104 = 34;
                goto LABEL_278;
              }

LABEL_235:
              ++v101;
              *v53++ = v102;
            }
          }

          if (*v101 && v102 != 60)
          {
            goto LABEL_235;
          }

          *a2 = v101;
          v116 = a1[13] + (-*(a1 + 104) & 7);
          if ((v116 + 96) > a1[14])
          {
            v117 = v98;
            v118 = a1[8207];
            if (!v118)
            {
              operator new[]();
            }

            v119 = v118(65558);
            v120 = (v119 + (-v119 & 7));
            *v120 = a1[12];
            a1[12] = v119;
            a1[14] = v119 + 65558;
            v116 = v120 + (-(v120 + 8) & 7) + 8;
            v26 = (v9 + 48);
            v98 = v117;
          }

          a1[13] = v116 + 96;
          *(v116 + 40) = 2;
          *(v116 + 48) = 0;
          *(v116 + 64) = 0;
          *v116 = 0;
          *(v116 + 8) = v96;
          *(v116 + 24) = &v53[-v96];
          v121 = *v26;
          if (*v26)
          {
            v121 = *(v9 + 56);
            v122 = (v121 + 88);
          }

          else
          {
            v122 = v26;
          }

          *v122 = v116;
          *(v9 + 56) = v116;
          *(v116 + 32) = v9;
          *(v116 + 80) = v121;
          *(v116 + 88) = 0;
          v123 = *(v9 + 8);
          if (!v123)
          {
            v123 = &byte_27E1F3E58;
          }

          if (!*v123)
          {
            *(v9 + 8) = v96;
            *(v9 + 24) = &v53[-v96];
          }

          v97 = **a2;
          *v53 = 0;
        }

        v124 = *a2;
        v125 = *(*a2 + 1);
        if (v125 == 47)
        {
          *a2 = (v124 + 2);
          v126 = v124 + 1;
          do
          {
            v128 = *++v126;
            v127 = v128;
            if (v128 < 0)
            {
              v127 = 122;
            }
          }

          while (byte_23C3D4513[v127]);
          *a2 = v126;
          do
          {
            v130 = *v126++;
            v129 = v130;
            if (v130 < 0)
            {
              v129 = 122;
            }
          }

          while (byte_23C3D4413[v129]);
          *a2 = (v126 - 1);
          if (*(v126 - 1) == 62)
          {
            *a2 = v126;
            goto LABEL_225;
          }

LABEL_321:
          exception = __cxa_allocate_exception(0x18uLL);
          v22 = *a2;
          v23 = "expected >";
LABEL_58:
          *exception = &unk_284F01CA0;
          exception[1] = v23;
          exception[2] = v22;
          __cxa_throw(exception, &unk_284F01B38, std::exception::~exception);
        }

        ++*a2;
        v131 = sub_23C399988(a1, a2, v27);
        v26 = (v9 + 48);
        if (v131)
        {
          v94 = *v135;
          if (*v135)
          {
            v94 = *(v9 + 56);
            v95 = (v94 + 88);
          }

          else
          {
            v95 = (v9 + 48);
          }

          *v95 = v131;
          *(v9 + 56) = v131;
          v131[4] = v9;
          v131[10] = v94;
          v131[11] = 0;
        }

LABEL_225:
        if (v125 == 47)
        {
          goto LABEL_312;
        }
      }
    }

    *a2 = (v30 + 1);
    if (v30[1] != 62)
    {
      goto LABEL_321;
    }

    *a2 = (v30 + 2);
LABEL_312:
    if (*v9)
    {
      *(*v9 + *(v9 + 16)) = 0;
    }

    else
    {
      byte_27E1F3E58 = 0;
    }

    return v9;
  }

  v11 = v4[1];
  if (v11 == 45)
  {
    if (v4[2] == 45)
    {
      for (m = v4 + 3; ; ++m)
      {
        *a2 = m;
        if (*m == 45)
        {
          if (m[1] == 45 && m[2] == 62)
          {
            v9 = 0;
            v10 = m + 3;
            goto LABEL_60;
          }
        }

        else if (!*m)
        {
LABEL_57:
          exception = __cxa_allocate_exception(0x18uLL);
          v22 = *a2;
          v23 = "unexpected end of data";
          goto LABEL_58;
        }
      }
    }

    goto LABEL_54;
  }

  if (v11 == 68)
  {
    if (v4[2] == 79 && v4[3] == 67 && v4[4] == 84 && v4[5] == 89 && v4[6] == 80 && v4[7] == 69)
    {
      v17 = v4[8];
      if (v17 < 0)
      {
        LOBYTE(v17) = 122;
      }

      if (byte_23C3D4413[v17])
      {
        *a2 = (v4 + 9);
        sub_23C399860(a2);
        return 0;
      }
    }

LABEL_54:
    v10 = v4 + 1;
    while (1)
    {
      *a2 = v10;
      v20 = *v10++;
      v19 = v20;
      if (v20 == 62)
      {
        break;
      }

      if (!v19)
      {
        goto LABEL_57;
      }
    }

    v9 = 0;
LABEL_60:
    *a2 = v10;
    return v9;
  }

  if (v11 != 91 || v4[2] != 67 || v4[3] != 68 || v4[4] != 65 || v4[5] != 84 || v4[6] != 65 || v4[7] != 91)
  {
    goto LABEL_54;
  }

  *a2 = (v4 + 8);

  return sub_23C3996E0(a1, a2);
}