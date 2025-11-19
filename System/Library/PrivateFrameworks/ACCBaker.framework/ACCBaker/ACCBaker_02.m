uint64_t sub_23C39ABE4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = **a2;
  v151 = a2;
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
                goto LABEL_62;
              }
            }

            else if (!*i)
            {
              goto LABEL_59;
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
            goto LABEL_62;
          }
        }

        else if (!v5)
        {
          goto LABEL_59;
        }

        *a2 = j;
        v15 = *j;
        LOBYTE(v5) = v15;
      }
    }

    v8 = a1[13] + (-*(a1 + 104) & 7);
    if ((v8 + 96) > a1[14])
    {
      v12 = a1[8207];
      if (!v12)
      {
        operator new[]();
      }

      v13 = v12(65558);
      v27 = (v13 + (-v13 & 7));
      *v27 = a1[12];
      a1[12] = v13;
      a1[14] = v13 + 65558;
      v8 = v27 + (-(v27 + 8) & 7) + 8;
      a2 = v151;
    }

    a1[13] = v8 + 96;
    *(v8 + 32) = 0;
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 40) = 1;
    v28 = -1;
    *(v8 + 48) = 0;
    v29 = (v8 + 48);
    *(v8 + 64) = 0;
    v30 = (v8 + 64);
    v31 = *a2;
    do
    {
      v32 = *(v31 + v28 + 1);
      if (v32 < 0)
      {
        LOBYTE(v32) = 122;
      }

      ++v28;
    }

    while (byte_23C3D4513[v32]);
    *a2 = v31 + v28;
    if (!v28)
    {
      v148 = a2;
      exception = __cxa_allocate_exception(0x18uLL);
      v25 = *v148;
      v26 = "expected element name";
LABEL_60:
      *exception = &unk_284F01CA0;
      exception[1] = v26;
      exception[2] = v25;
      __cxa_throw(exception, &unk_284F01B38, std::exception::~exception);
    }

    *v8 = v31;
    *(v8 + 16) = v28;
    v33 = (*a2 - 1);
    do
    {
      v35 = *++v33;
      v34 = v35;
      if (v35 < 0)
      {
        v34 = 122;
      }
    }

    while (byte_23C3D4413[v34]);
    *a2 = v33;
    v36 = *v33;
    if (v36 >= 0)
    {
      v37 = *v33;
    }

    else
    {
      v37 = 122;
    }

    v149 = (v8 + 48);
    v150 = v8;
    if (byte_23C3D4613[v37])
    {
      v38 = &unk_23C3D4813;
      do
      {
        *a2 = (v33 + 1);
        v39 = v33;
        do
        {
          v41 = *++v39;
          v40 = v41;
          if (v41 < 0)
          {
            v40 = 122;
          }
        }

        while (byte_23C3D4613[v40]);
        *a2 = v39;
        v42 = (a1[13] + (-*(a1 + 104) & 7));
        if ((v42 + 7) > a1[14])
        {
          v43 = v38;
          v44 = a1[8207];
          if (!v44)
          {
            operator new[]();
          }

          v45 = v44(65558);
          v46 = (v45 + (-v45 & 7));
          *v46 = a1[12];
          a1[12] = v45;
          a1[14] = v45 + 65558;
          v42 = (v46 + (-(v46 + 8) & 7) + 8);
          v8 = v150;
          a2 = v151;
          v29 = v149;
          v38 = v43;
        }

        a1[13] = v42 + 7;
        *v42 = 0;
        v42[1] = 0;
        v47 = *a2 - v33;
        *v42 = v33;
        v42[2] = v47;
        v48 = *v30;
        if (*v30)
        {
          v48 = *(v8 + 72);
          v49 = (v48 + 6);
        }

        else
        {
          v49 = v30;
        }

        *v49 = v42;
        *(v8 + 72) = v42;
        v42[4] = v8;
        v42[5] = v48;
        v42[6] = 0;
        v50 = *a2;
        do
        {
          v52 = *v50++;
          v51 = v52;
          if (v52 < 0)
          {
            v51 = 122;
          }
        }

        while (byte_23C3D4413[v51]);
        *a2 = (v50 - 1);
        if (*(v50 - 1) != 61)
        {
          v145 = a2;
          exception = __cxa_allocate_exception(0x18uLL);
          v25 = *v145;
          v26 = "expected =";
          goto LABEL_60;
        }

        *a2 = v50;
        v53 = *v42;
        if (!*v42)
        {
          v53 = &byte_27E1F3E58;
          v47 = 0;
        }

        v53[v47] = 0;
        v54 = *a2;
        v55 = *a2;
        do
        {
          v56 = v55;
          v58 = *v55++;
          v57 = v58;
          if (v58 < 0)
          {
            v57 = 122;
          }

          ++v54;
        }

        while (byte_23C3D4413[v57]);
        *a2 = (v55 - 1);
        v59 = *(v55 - 1);
        if (v59 != 34 && v59 != 39)
        {
LABEL_338:
          v144 = a2;
          exception = __cxa_allocate_exception(0x18uLL);
          v25 = *v144;
          v26 = "expected ' or ";
          goto LABEL_60;
        }

        *a2 = v55;
        if (v59 == 39)
        {
          do
          {
            v61 = *++v56;
            v60 = v61;
            if (v61 < 0)
            {
              v60 = 122;
            }
          }

          while (v38[v60]);
          *a2 = v56;
          for (k = v56; ; k = v70 + 1)
          {
            while (1)
            {
              v65 = *k;
              if (v65 != 38)
              {
                if (!*k || v65 == 39)
                {
                  goto LABEL_211;
                }

LABEL_111:
                ++k;
                *v56++ = v65;
                continue;
              }

              v66 = k[1];
              if (v66 > 0x66)
              {
                if (v66 == 103)
                {
                  if (k[2] != 116 || k[3] != 59)
                  {
                    goto LABEL_111;
                  }

                  v69 = 62;
                  goto LABEL_138;
                }

                if (v66 == 108)
                {
                  if (k[2] != 116 || k[3] != 59)
                  {
                    goto LABEL_111;
                  }

                  v69 = 60;
LABEL_138:
                  *v56++ = v69;
                  k += 4;
                  continue;
                }

                if (v66 != 113 || k[2] != 117 || k[3] != 111 || k[4] != 116 || k[5] != 59)
                {
                  goto LABEL_111;
                }

                v67 = 34;
                goto LABEL_154;
              }

              if (v66 == 35)
              {
                break;
              }

              if (v66 != 97)
              {
                goto LABEL_111;
              }

              v68 = k[2];
              if (v68 == 112)
              {
                if (k[3] != 111 || k[4] != 115 || k[5] != 59)
                {
                  goto LABEL_111;
                }

                v67 = 39;
LABEL_154:
                *v56++ = v67;
                k += 6;
                continue;
              }

              if (v68 != 109 || k[3] != 112 || k[4] != 59)
              {
                goto LABEL_111;
              }

              *v56++ = 38;
              k += 5;
            }

            v70 = k + 2;
            if (k[2] == 120)
            {
              v71 = 0;
              do
              {
                v72 = v71;
                v73 = *++v70;
                v74 = byte_23C3D4713[v73];
                v71 = v74 + 16 * v71;
              }

              while (v74 != 255);
              if (v72 <= 0x7F)
              {
                goto LABEL_147;
              }
            }

            else
            {
              v75 = 0;
              v70 = k + 1;
              do
              {
                v72 = v75;
                v76 = *++v70;
                v77 = byte_23C3D4713[v76];
                v75 = v77 + 10 * v75;
              }

              while (v77 != 255);
              if (v72 <= 0x7F)
              {
LABEL_147:
                v78 = 1;
                goto LABEL_159;
              }
            }

            if (v72 > 0x7FF)
            {
              if (v72 >> 16)
              {
                if (v72 >> 16 > 0x10)
                {
                  goto LABEL_341;
                }

                v56[3] = v72 & 0x3F | 0x80;
                v56[2] = (v72 >> 6) & 0x3F | 0x80;
                v56[1] = (v72 >> 12) & 0x3F | 0x80;
                LODWORD(v72) = (v72 >> 18) | 0xFFFFFFF0;
                v78 = 4;
              }

              else
              {
                v56[2] = v72 & 0x3F | 0x80;
                v56[1] = (v72 >> 6) & 0x3F | 0x80;
                LODWORD(v72) = (v72 >> 12) | 0xFFFFFFE0;
                v78 = 3;
              }
            }

            else
            {
              v56[1] = v72 & 0x3F | 0x80;
              LODWORD(v72) = (v72 >> 6) | 0xFFFFFFC0;
              v78 = 2;
            }

LABEL_159:
            *v56 = v72;
            if (*v70 != 59)
            {
              goto LABEL_336;
            }

            v56 += v78;
          }
        }

        do
        {
          v64 = *++v56;
          v63 = v64;
          if (v64 < 0)
          {
            v63 = 122;
          }
        }

        while (byte_23C3D4913[v63]);
        *a2 = v56;
        k = v56;
        while (1)
        {
          v79 = *k;
          if (v79 != 38)
          {
            break;
          }

          v80 = k[1];
          if (v80 <= 0x66)
          {
            if (v80 == 35)
            {
              v70 = k + 2;
              if (k[2] == 120)
              {
                v84 = 0;
                do
                {
                  v85 = v84;
                  v86 = *++v70;
                  v87 = byte_23C3D4713[v86];
                  v84 = v87 + 16 * v84;
                }

                while (v87 != 255);
                if (v85 <= 0x7F)
                {
                  goto LABEL_197;
                }
              }

              else
              {
                v88 = 0;
                v70 = k + 1;
                do
                {
                  v85 = v88;
                  v89 = *++v70;
                  v90 = byte_23C3D4713[v89];
                  v88 = v90 + 10 * v88;
                }

                while (v90 != 255);
                if (v85 <= 0x7F)
                {
LABEL_197:
                  v91 = 1;
                  goto LABEL_209;
                }
              }

              if (v85 > 0x7FF)
              {
                if (v85 >> 16)
                {
                  if (v85 >> 16 > 0x10)
                  {
LABEL_341:
                    v147 = __cxa_allocate_exception(0x18uLL);
                    *v147 = &unk_284F01CA0;
                    v147[1] = "invalid numeric character entity";
                    v147[2] = v56;
                    __cxa_throw(v147, &unk_284F01B38, std::exception::~exception);
                  }

                  v56[3] = v85 & 0x3F | 0x80;
                  v56[2] = (v85 >> 6) & 0x3F | 0x80;
                  v56[1] = (v85 >> 12) & 0x3F | 0x80;
                  LODWORD(v85) = (v85 >> 18) | 0xFFFFFFF0;
                  v91 = 4;
                }

                else
                {
                  v56[2] = v85 & 0x3F | 0x80;
                  v56[1] = (v85 >> 6) & 0x3F | 0x80;
                  LODWORD(v85) = (v85 >> 12) | 0xFFFFFFE0;
                  v91 = 3;
                }
              }

              else
              {
                v56[1] = v85 & 0x3F | 0x80;
                LODWORD(v85) = (v85 >> 6) | 0xFFFFFFC0;
                v91 = 2;
              }

LABEL_209:
              *v56 = v85;
              if (*v70 != 59)
              {
LABEL_336:
                v142 = __cxa_allocate_exception(0x18uLL);
                v143 = "expected ;";
LABEL_337:
                *v142 = &unk_284F01CA0;
                v142[1] = v143;
                v142[2] = v70;
                __cxa_throw(v142, &unk_284F01B38, std::exception::~exception);
              }

              v56 += v91;
              k = v70 + 1;
            }

            else
            {
              if (v80 != 97)
              {
                goto LABEL_161;
              }

              v82 = k[2];
              if (v82 == 112)
              {
                if (k[3] != 111 || k[4] != 115 || k[5] != 59)
                {
                  goto LABEL_161;
                }

                v81 = 39;
LABEL_204:
                *v56++ = v81;
                k += 6;
              }

              else
              {
                if (v82 != 109 || k[3] != 112 || k[4] != 59)
                {
                  goto LABEL_161;
                }

                *v56++ = 38;
                k += 5;
              }
            }
          }

          else if (v80 == 103)
          {
            if (k[2] != 116 || k[3] != 59)
            {
              goto LABEL_161;
            }

            v83 = 62;
LABEL_188:
            *v56++ = v83;
            k += 4;
          }

          else
          {
            if (v80 == 108)
            {
              if (k[2] != 116 || k[3] != 59)
              {
                goto LABEL_161;
              }

              v83 = 60;
              goto LABEL_188;
            }

            if (v80 == 113 && k[2] == 117 && k[3] == 111 && k[4] == 116 && k[5] == 59)
            {
              v81 = 34;
              goto LABEL_204;
            }

LABEL_161:
            ++k;
            *v56++ = v79;
          }
        }

        if (*k && v79 != 34)
        {
          goto LABEL_161;
        }

LABEL_211:
        *a2 = k;
        v92 = &v56[-v54];
        v42[1] = v55;
        v42[3] = v92;
        if (**a2 != v59)
        {
          goto LABEL_338;
        }

        ++*a2;
        v93 = v42[1];
        if (!v93)
        {
          v93 = &byte_27E1F3E58;
          v92 = 0;
        }

        v92[v93] = 0;
        v33 = (*a2 - 1);
        do
        {
          v95 = *++v33;
          v94 = v95;
          if (v95 < 0)
          {
            v94 = 122;
          }
        }

        while (byte_23C3D4413[v94]);
        *a2 = v33;
        v36 = *v33;
        if (v36 >= 0)
        {
          v96 = *v33;
        }

        else
        {
          v96 = 122;
        }
      }

      while (byte_23C3D4613[v96]);
    }

    if (v36 != 47)
    {
      if (v36 == 62)
      {
        *a2 = (v33 + 1);
        while (1)
        {
          v98 = (*a2 - 1);
          do
          {
            v100 = *++v98;
            v99 = v100;
            if (v100 < 0)
            {
              v99 = 122;
            }
          }

          while (byte_23C3D4413[v99]);
          *a2 = v98;
          v101 = *v98;
LABEL_234:
          if (v101 != 60)
          {
            break;
          }

          v130 = *a2;
          v131 = *(*a2 + 1);
          if (v131 == 47)
          {
            *a2 = v130 + 2;
            v132 = (v130 + 1);
            do
            {
              v134 = *++v132;
              v133 = v134;
              if (v134 < 0)
              {
                v133 = 122;
              }
            }

            while (byte_23C3D4513[v133]);
            *a2 = v132;
            do
            {
              v136 = *v132++;
              v135 = v136;
              if (v136 < 0)
              {
                v135 = 122;
              }
            }

            while (byte_23C3D4413[v135]);
            *a2 = (v132 - 1);
            if (*(v132 - 1) != 62)
            {
              goto LABEL_340;
            }

            *a2 = v132;
          }

          else
          {
            ++*a2;
            v137 = sub_23C39ABE4(a1, v151);
            v29 = v149;
            v8 = v150;
            a2 = v151;
            if (v137)
            {
              v138 = *v149;
              if (*v149)
              {
                v138 = *(v150 + 56);
                v97 = (v138 + 88);
              }

              else
              {
                v97 = v149;
              }

              *v97 = v137;
              *(v150 + 56) = v137;
              v137[4] = v150;
              v137[10] = v138;
              v137[11] = 0;
            }
          }

          if (v131 == 47)
          {
            goto LABEL_328;
          }
        }

        if (!v101)
        {
LABEL_59:
          v23 = a2;
          exception = __cxa_allocate_exception(0x18uLL);
          v25 = *v23;
          v26 = "unexpected end of data";
          goto LABEL_60;
        }

        v102 = *a2;
        v70 = (*a2 - 1);
        do
        {
          v104 = *++v70;
          v103 = v104;
          if (v104 < 0)
          {
            v103 = 122;
          }
        }

        while (byte_23C3D4A13[v103]);
        *a2 = v70;
        for (m = v70; ; m = v114 + 1)
        {
          while (1)
          {
            while (1)
            {
              while (1)
              {
                v106 = *m;
                v107 = v106 >= 0 ? *m : 122;
                if (v106 == 38)
                {
                  break;
                }

                if (!*m || *m == 60)
                {
                  *a2 = m;
                  if (*(v70 - 1) == 32)
                  {
                    --v70;
                  }

                  v123 = a1[13] + (-*(a1 + 104) & 7);
                  if ((v123 + 96) > a1[14])
                  {
                    v124 = a1[8207];
                    if (!v124)
                    {
                      operator new[]();
                    }

                    v125 = v124(65558);
                    v126 = (v125 + (-v125 & 7));
                    *v126 = a1[12];
                    a1[12] = v125;
                    a1[14] = v125 + 65558;
                    v123 = v126 + (-(v126 + 8) & 7) + 8;
                    v8 = v150;
                    a2 = v151;
                    v29 = v149;
                  }

                  a1[13] = v123 + 96;
                  *(v123 + 40) = 2;
                  *(v123 + 48) = 0;
                  *(v123 + 64) = 0;
                  *v123 = 0;
                  *(v123 + 8) = v102;
                  *(v123 + 24) = &v70[-v102];
                  v127 = *v29;
                  if (*v29)
                  {
                    v127 = *(v8 + 56);
                    v128 = (v127 + 88);
                  }

                  else
                  {
                    v128 = v29;
                  }

                  *v128 = v123;
                  *(v8 + 56) = v123;
                  *(v123 + 32) = v8;
                  *(v123 + 80) = v127;
                  *(v123 + 88) = 0;
                  v129 = *(v8 + 8);
                  if (!v129)
                  {
                    v129 = &byte_27E1F3E58;
                  }

                  if (!*v129)
                  {
                    *(v8 + 8) = v102;
                    *(v8 + 24) = &v70[-v102];
                  }

                  v101 = **a2;
                  *v70 = 0;
                  goto LABEL_234;
                }

LABEL_248:
                if (byte_23C3D4413[v107])
                {
                  *v70 = 32;
                  do
                  {
                    v109 = *++m;
                    v108 = v109;
                    if (v109 < 0)
                    {
                      v108 = 122;
                    }
                  }

                  while (byte_23C3D4413[v108]);
                  ++v70;
                }

                else
                {
                  ++m;
                  *v70++ = v106;
                }
              }

              v110 = m[1];
              if (v110 <= 0x66)
              {
                break;
              }

              if (v110 == 103)
              {
                if (m[2] != 116 || m[3] != 59)
                {
                  goto LABEL_248;
                }

                v113 = 62;
                goto LABEL_276;
              }

              if (v110 == 108)
              {
                if (m[2] != 116 || m[3] != 59)
                {
                  goto LABEL_248;
                }

                v113 = 60;
LABEL_276:
                *v70++ = v113;
                m += 4;
              }

              else
              {
                if (v110 != 113 || m[2] != 117 || m[3] != 111 || m[4] != 116 || m[5] != 59)
                {
                  goto LABEL_248;
                }

                v111 = 34;
LABEL_292:
                *v70++ = v111;
                m += 6;
              }
            }

            if (v110 == 35)
            {
              break;
            }

            if (v110 != 97)
            {
              goto LABEL_248;
            }

            v112 = m[2];
            if (v112 == 112)
            {
              if (m[3] != 111 || m[4] != 115 || m[5] != 59)
              {
                goto LABEL_248;
              }

              v111 = 39;
              goto LABEL_292;
            }

            if (v112 != 109 || m[3] != 112 || m[4] != 59)
            {
              goto LABEL_248;
            }

            *v70++ = 38;
            m += 5;
          }

          v114 = m + 2;
          if (m[2] == 120)
          {
            v115 = 0;
            do
            {
              v116 = v115;
              v117 = *++v114;
              v118 = byte_23C3D4713[v117];
              v115 = v118 + 16 * v115;
            }

            while (v118 != 255);
            if (v116 <= 0x7F)
            {
              goto LABEL_285;
            }
          }

          else
          {
            v119 = 0;
            v114 = m + 1;
            do
            {
              v116 = v119;
              v120 = *++v114;
              v121 = byte_23C3D4713[v120];
              v119 = v121 + 10 * v119;
            }

            while (v121 != 255);
            if (v116 <= 0x7F)
            {
LABEL_285:
              v122 = 1;
              goto LABEL_297;
            }
          }

          if (v116 > 0x7FF)
          {
            if (v116 >> 16)
            {
              if (v116 >> 16 > 0x10)
              {
                v142 = __cxa_allocate_exception(0x18uLL);
                v143 = "invalid numeric character entity";
                goto LABEL_337;
              }

              v70[3] = v116 & 0x3F | 0x80;
              v70[2] = (v116 >> 6) & 0x3F | 0x80;
              v70[1] = (v116 >> 12) & 0x3F | 0x80;
              LODWORD(v116) = (v116 >> 18) | 0xFFFFFFF0;
              v122 = 4;
            }

            else
            {
              v70[2] = v116 & 0x3F | 0x80;
              v70[1] = (v116 >> 6) & 0x3F | 0x80;
              LODWORD(v116) = (v116 >> 12) | 0xFFFFFFE0;
              v122 = 3;
            }
          }

          else
          {
            v70[1] = v116 & 0x3F | 0x80;
            LODWORD(v116) = (v116 >> 6) | 0xFFFFFFC0;
            v122 = 2;
          }

LABEL_297:
          *v70 = v116;
          if (*v114 != 59)
          {
            v141 = __cxa_allocate_exception(0x18uLL);
            *v141 = &unk_284F01CA0;
            v141[1] = "expected ;";
            v141[2] = v114;
            __cxa_throw(v141, &unk_284F01B38, std::exception::~exception);
          }

          v70 += v122;
        }
      }

      goto LABEL_340;
    }

    *a2 = (v33 + 1);
    if (v33[1] != 62)
    {
LABEL_340:
      v146 = a2;
      exception = __cxa_allocate_exception(0x18uLL);
      v25 = *v146;
      v26 = "expected >";
      goto LABEL_60;
    }

    *a2 = (v33 + 2);
LABEL_328:
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
      v17 = v3 + 3;
      for (n = v3 + 3; ; ++n)
      {
        *a2 = n;
        if (*n == 45)
        {
          if (n[1] == 45 && n[2] == 62)
          {
            v8 = a1[13] + (-*(a1 + 104) & 7);
            if ((v8 + 96) > a1[14])
            {
              v19 = a1[8207];
              if (!v19)
              {
                operator new[]();
              }

              v20 = v19(65558);
              v139 = (v20 + (-v20 & 7));
              *v139 = a1[12];
              a1[12] = v20;
              a1[14] = v20 + 65558;
              v8 = v139 + (-(v139 + 8) & 7) + 8;
              a2 = v151;
            }

            a1[13] = v8 + 96;
            *v8 = 0;
            *(v8 + 8) = 0;
            *(v8 + 40) = 4;
            *(v8 + 48) = 0;
            *(v8 + 64) = 0;
            v140 = *a2 - v17;
            *(v8 + 8) = v17;
            *(v8 + 24) = v140;
            *(v8 + 32) = 0;
            **a2 = 0;
            v9 = (*a2 + 3);
            goto LABEL_62;
          }
        }

        else if (!*n)
        {
          goto LABEL_59;
        }
      }
    }

    goto LABEL_56;
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

LABEL_56:
    v9 = v3 + 1;
    while (1)
    {
      *a2 = v9;
      v22 = *v9++;
      v21 = v22;
      if (v22 == 62)
      {
        break;
      }

      if (!v21)
      {
        goto LABEL_59;
      }
    }

    v8 = 0;
LABEL_62:
    *a2 = v9;
    return v8;
  }

  if (v10 != 91 || v3[2] != 67 || v3[3] != 68 || v3[4] != 65 || v3[5] != 84 || v3[6] != 65 || v3[7] != 91)
  {
    goto LABEL_56;
  }

  *a2 = (v3 + 8);

  return sub_23C3996E0(a1, a2);
}

uint64_t sub_23C39BF94(void *a1, uint64_t *a2)
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
                goto LABEL_62;
              }
            }

            else if (!*i)
            {
              goto LABEL_59;
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
            goto LABEL_62;
          }
        }

        else if (!v6)
        {
          goto LABEL_59;
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
      v27 = (v14 + (-v14 & 7));
      *v27 = a1[12];
      a1[12] = v14;
      a1[14] = v14 + 65558;
      v9 = v27 + (-(v27 + 8) & 7) + 8;
    }

    a1[13] = v9 + 96;
    *(v9 + 32) = 0;
    *v9 = 0;
    *(v9 + 8) = 0;
    *(v9 + 40) = 1;
    v28 = -1;
    *(v9 + 48) = 0;
    v29 = (v9 + 48);
    *(v9 + 64) = 0;
    v30 = (v9 + 64);
    v31 = *a2;
    do
    {
      v32 = *(v31 + v28 + 1);
      if (v32 < 0)
      {
        LOBYTE(v32) = 122;
      }

      ++v28;
    }

    while (byte_23C3D4513[v32]);
    *a2 = v31 + v28;
    if (!v28)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      v25 = *a2;
      v26 = "expected element name";
      goto LABEL_60;
    }

    *v9 = v31;
    *(v9 + 16) = v28;
    v33 = (*a2 - 1);
    do
    {
      v35 = *++v33;
      v34 = v35;
      if (v35 < 0)
      {
        v34 = 122;
      }
    }

    while (byte_23C3D4413[v34]);
    *a2 = v33;
    v36 = *v33;
    if (v36 >= 0)
    {
      v37 = *v33;
    }

    else
    {
      v37 = 122;
    }

    v140 = (v9 + 48);
    if (byte_23C3D4613[v37])
    {
      v38 = &unk_23C3D4813;
      do
      {
        *a2 = (v33 + 1);
        v39 = v33;
        do
        {
          v41 = *++v39;
          v40 = v41;
          if (v41 < 0)
          {
            v40 = 122;
          }
        }

        while (byte_23C3D4613[v40]);
        *a2 = v39;
        v42 = (a1[13] + (-*(a1 + 104) & 7));
        if ((v42 + 7) > a1[14])
        {
          v43 = v38;
          v44 = a1[8207];
          if (!v44)
          {
            operator new[]();
          }

          v45 = v44(65558);
          v46 = (v45 + (-v45 & 7));
          *v46 = a1[12];
          a1[12] = v45;
          a1[14] = v45 + 65558;
          v42 = (v46 + (-(v46 + 8) & 7) + 8);
          v30 = (v9 + 64);
          v29 = (v9 + 48);
          v38 = v43;
        }

        a1[13] = v42 + 7;
        *v42 = 0;
        v42[1] = 0;
        v47 = *a2 - v33;
        *v42 = v33;
        v42[2] = v47;
        v48 = *v30;
        if (*v30)
        {
          v48 = *(v9 + 72);
          v49 = (v48 + 6);
        }

        else
        {
          v49 = v30;
        }

        *v49 = v42;
        *(v9 + 72) = v42;
        v42[4] = v9;
        v42[5] = v48;
        v42[6] = 0;
        v50 = *a2;
        do
        {
          v52 = *v50++;
          v51 = v52;
          if (v52 < 0)
          {
            v51 = 122;
          }
        }

        while (byte_23C3D4413[v51]);
        *a2 = (v50 - 1);
        if (*(v50 - 1) != 61)
        {
          exception = __cxa_allocate_exception(0x18uLL);
          v25 = *a2;
          v26 = "expected =";
          goto LABEL_60;
        }

        *a2 = v50;
        v53 = *v42;
        if (!*v42)
        {
          v53 = &byte_27E1F3E58;
          v47 = 0;
        }

        v53[v47] = 0;
        v54 = *a2;
        v55 = *a2;
        do
        {
          v56 = v55;
          v58 = *v55++;
          v57 = v58;
          if (v58 < 0)
          {
            v57 = 122;
          }

          ++v54;
        }

        while (byte_23C3D4413[v57]);
        *a2 = (v55 - 1);
        v59 = *(v55 - 1);
        if (v59 != 34 && v59 != 39)
        {
LABEL_323:
          exception = __cxa_allocate_exception(0x18uLL);
          v25 = *a2;
          v26 = "expected ' or ";
          goto LABEL_60;
        }

        *a2 = v55;
        if (v59 == 39)
        {
          do
          {
            v61 = *++v56;
            v60 = v61;
            if (v61 < 0)
            {
              v60 = 122;
            }
          }

          while (v38[v60]);
          *a2 = v56;
          for (k = v56; ; k = v70 + 1)
          {
            while (1)
            {
              v65 = *k;
              if (v65 != 38)
              {
                if (!*k || v65 == 39)
                {
                  goto LABEL_211;
                }

LABEL_111:
                ++k;
                *v56++ = v65;
                continue;
              }

              v66 = k[1];
              if (v66 > 0x66)
              {
                if (v66 == 103)
                {
                  if (k[2] != 116 || k[3] != 59)
                  {
                    goto LABEL_111;
                  }

                  v69 = 62;
                  goto LABEL_138;
                }

                if (v66 == 108)
                {
                  if (k[2] != 116 || k[3] != 59)
                  {
                    goto LABEL_111;
                  }

                  v69 = 60;
LABEL_138:
                  *v56++ = v69;
                  k += 4;
                  continue;
                }

                if (v66 != 113 || k[2] != 117 || k[3] != 111 || k[4] != 116 || k[5] != 59)
                {
                  goto LABEL_111;
                }

                v67 = 34;
                goto LABEL_154;
              }

              if (v66 == 35)
              {
                break;
              }

              if (v66 != 97)
              {
                goto LABEL_111;
              }

              v68 = k[2];
              if (v68 == 112)
              {
                if (k[3] != 111 || k[4] != 115 || k[5] != 59)
                {
                  goto LABEL_111;
                }

                v67 = 39;
LABEL_154:
                *v56++ = v67;
                k += 6;
                continue;
              }

              if (v68 != 109 || k[3] != 112 || k[4] != 59)
              {
                goto LABEL_111;
              }

              *v56++ = 38;
              k += 5;
            }

            v70 = k + 2;
            if (k[2] == 120)
            {
              v71 = 0;
              do
              {
                v72 = v71;
                v73 = *++v70;
                v74 = byte_23C3D4713[v73];
                v71 = v74 + 16 * v71;
              }

              while (v74 != 255);
              if (v72 <= 0x7F)
              {
                goto LABEL_147;
              }
            }

            else
            {
              v75 = 0;
              v70 = k + 1;
              do
              {
                v72 = v75;
                v76 = *++v70;
                v77 = byte_23C3D4713[v76];
                v75 = v77 + 10 * v75;
              }

              while (v77 != 255);
              if (v72 <= 0x7F)
              {
LABEL_147:
                v78 = 1;
                goto LABEL_159;
              }
            }

            if (v72 > 0x7FF)
            {
              if (v72 >> 16)
              {
                if (v72 >> 16 > 0x10)
                {
                  goto LABEL_321;
                }

                v56[3] = v72 & 0x3F | 0x80;
                v56[2] = (v72 >> 6) & 0x3F | 0x80;
                v56[1] = (v72 >> 12) & 0x3F | 0x80;
                LODWORD(v72) = (v72 >> 18) | 0xFFFFFFF0;
                v78 = 4;
              }

              else
              {
                v56[2] = v72 & 0x3F | 0x80;
                v56[1] = (v72 >> 6) & 0x3F | 0x80;
                LODWORD(v72) = (v72 >> 12) | 0xFFFFFFE0;
                v78 = 3;
              }
            }

            else
            {
              v56[1] = v72 & 0x3F | 0x80;
              LODWORD(v72) = (v72 >> 6) | 0xFFFFFFC0;
              v78 = 2;
            }

LABEL_159:
            *v56 = v72;
            if (*v70 != 59)
            {
              goto LABEL_322;
            }

            v56 += v78;
          }
        }

        do
        {
          v64 = *++v56;
          v63 = v64;
          if (v64 < 0)
          {
            v63 = 122;
          }
        }

        while (byte_23C3D4913[v63]);
        *a2 = v56;
        k = v56;
        while (1)
        {
          v79 = *k;
          if (v79 != 38)
          {
            break;
          }

          v80 = k[1];
          if (v80 <= 0x66)
          {
            if (v80 == 35)
            {
              v70 = k + 2;
              if (k[2] == 120)
              {
                v84 = 0;
                do
                {
                  v85 = v84;
                  v86 = *++v70;
                  v87 = byte_23C3D4713[v86];
                  v84 = v87 + 16 * v84;
                }

                while (v87 != 255);
                if (v85 <= 0x7F)
                {
                  goto LABEL_197;
                }
              }

              else
              {
                v88 = 0;
                v70 = k + 1;
                do
                {
                  v85 = v88;
                  v89 = *++v70;
                  v90 = byte_23C3D4713[v89];
                  v88 = v90 + 10 * v88;
                }

                while (v90 != 255);
                if (v85 <= 0x7F)
                {
LABEL_197:
                  v91 = 1;
                  goto LABEL_209;
                }
              }

              if (v85 > 0x7FF)
              {
                if (v85 >> 16)
                {
                  if (v85 >> 16 > 0x10)
                  {
LABEL_321:
                    v138 = __cxa_allocate_exception(0x18uLL);
                    *v138 = &unk_284F01CA0;
                    v138[1] = "invalid numeric character entity";
                    v138[2] = v56;
                    __cxa_throw(v138, &unk_284F01B38, std::exception::~exception);
                  }

                  v56[3] = v85 & 0x3F | 0x80;
                  v56[2] = (v85 >> 6) & 0x3F | 0x80;
                  v56[1] = (v85 >> 12) & 0x3F | 0x80;
                  LODWORD(v85) = (v85 >> 18) | 0xFFFFFFF0;
                  v91 = 4;
                }

                else
                {
                  v56[2] = v85 & 0x3F | 0x80;
                  v56[1] = (v85 >> 6) & 0x3F | 0x80;
                  LODWORD(v85) = (v85 >> 12) | 0xFFFFFFE0;
                  v91 = 3;
                }
              }

              else
              {
                v56[1] = v85 & 0x3F | 0x80;
                LODWORD(v85) = (v85 >> 6) | 0xFFFFFFC0;
                v91 = 2;
              }

LABEL_209:
              *v56 = v85;
              if (*v70 != 59)
              {
LABEL_322:
                v139 = __cxa_allocate_exception(0x18uLL);
                *v139 = &unk_284F01CA0;
                v139[1] = "expected ;";
                v139[2] = v70;
                __cxa_throw(v139, &unk_284F01B38, std::exception::~exception);
              }

              v56 += v91;
              k = v70 + 1;
            }

            else
            {
              if (v80 != 97)
              {
                goto LABEL_161;
              }

              v82 = k[2];
              if (v82 == 112)
              {
                if (k[3] != 111 || k[4] != 115 || k[5] != 59)
                {
                  goto LABEL_161;
                }

                v81 = 39;
LABEL_204:
                *v56++ = v81;
                k += 6;
              }

              else
              {
                if (v82 != 109 || k[3] != 112 || k[4] != 59)
                {
                  goto LABEL_161;
                }

                *v56++ = 38;
                k += 5;
              }
            }
          }

          else if (v80 == 103)
          {
            if (k[2] != 116 || k[3] != 59)
            {
              goto LABEL_161;
            }

            v83 = 62;
LABEL_188:
            *v56++ = v83;
            k += 4;
          }

          else
          {
            if (v80 == 108)
            {
              if (k[2] != 116 || k[3] != 59)
              {
                goto LABEL_161;
              }

              v83 = 60;
              goto LABEL_188;
            }

            if (v80 == 113 && k[2] == 117 && k[3] == 111 && k[4] == 116 && k[5] == 59)
            {
              v81 = 34;
              goto LABEL_204;
            }

LABEL_161:
            ++k;
            *v56++ = v79;
          }
        }

        if (*k && v79 != 34)
        {
          goto LABEL_161;
        }

LABEL_211:
        *a2 = k;
        v92 = &v56[-v54];
        v42[1] = v55;
        v42[3] = v92;
        if (**a2 != v59)
        {
          goto LABEL_323;
        }

        ++*a2;
        v93 = v42[1];
        if (!v93)
        {
          v93 = &byte_27E1F3E58;
          v92 = 0;
        }

        v92[v93] = 0;
        v33 = (*a2 - 1);
        do
        {
          v95 = *++v33;
          v94 = v95;
          if (v95 < 0)
          {
            v94 = 122;
          }
        }

        while (byte_23C3D4413[v94]);
        *a2 = v33;
        v36 = *v33;
        if (v36 >= 0)
        {
          v96 = *v33;
        }

        else
        {
          v96 = 122;
        }
      }

      while (byte_23C3D4613[v96]);
    }

    if (v36 != 47)
    {
      if (v36 != 62)
      {
        goto LABEL_325;
      }

      *a2 = (v33 + 1);
      while (1)
      {
        v99 = *a2;
        v101 = *a2 - 1;
        v100 = **a2;
        while (v100 != 60)
        {
          if (!v100)
          {
            goto LABEL_59;
          }

          *a2 = v99;
          v56 = v101;
          do
          {
            v103 = *++v56;
            v102 = v103;
            if (v103 < 0)
            {
              v102 = 122;
            }
          }

          while (byte_23C3D4B13[v102]);
          *a2 = v56;
          v104 = v56;
          while (1)
          {
            v105 = *v104;
            if (v105 != 38)
            {
              break;
            }

            v106 = v104[1];
            if (v106 <= 0x66)
            {
              if (v106 == 35)
              {
                v110 = v104 + 2;
                if (v104[2] == 120)
                {
                  v111 = 0;
                  do
                  {
                    v112 = v111;
                    v113 = *++v110;
                    v114 = byte_23C3D4713[v113];
                    v111 = v114 + 16 * v111;
                  }

                  while (v114 != 255);
                  if (v112 <= 0x7F)
                  {
                    goto LABEL_273;
                  }
                }

                else
                {
                  v115 = 0;
                  v110 = v104 + 1;
                  do
                  {
                    v112 = v115;
                    v116 = *++v110;
                    v117 = byte_23C3D4713[v116];
                    v115 = v117 + 10 * v115;
                  }

                  while (v117 != 255);
                  if (v112 <= 0x7F)
                  {
LABEL_273:
                    v118 = 1;
                    goto LABEL_285;
                  }
                }

                if (v112 > 0x7FF)
                {
                  if (v112 >> 16)
                  {
                    if (v112 >> 16 > 0x10)
                    {
                      goto LABEL_321;
                    }

                    v56[3] = v112 & 0x3F | 0x80;
                    v56[2] = (v112 >> 6) & 0x3F | 0x80;
                    v56[1] = (v112 >> 12) & 0x3F | 0x80;
                    LODWORD(v112) = (v112 >> 18) | 0xFFFFFFF0;
                    v118 = 4;
                  }

                  else
                  {
                    v56[2] = v112 & 0x3F | 0x80;
                    v56[1] = (v112 >> 6) & 0x3F | 0x80;
                    LODWORD(v112) = (v112 >> 12) | 0xFFFFFFE0;
                    v118 = 3;
                  }
                }

                else
                {
                  v56[1] = v112 & 0x3F | 0x80;
                  LODWORD(v112) = (v112 >> 6) | 0xFFFFFFC0;
                  v118 = 2;
                }

LABEL_285:
                *v56 = v112;
                if (*v110 != 59)
                {
                  v137 = __cxa_allocate_exception(0x18uLL);
                  *v137 = &unk_284F01CA0;
                  v137[1] = "expected ;";
                  v137[2] = v110;
                  __cxa_throw(v137, &unk_284F01B38, std::exception::~exception);
                }

                v56 += v118;
                v104 = v110 + 1;
              }

              else
              {
                if (v106 != 97)
                {
                  goto LABEL_237;
                }

                v108 = v104[2];
                if (v108 == 112)
                {
                  if (v104[3] != 111 || v104[4] != 115 || v104[5] != 59)
                  {
                    goto LABEL_237;
                  }

                  v107 = 39;
LABEL_280:
                  *v56++ = v107;
                  v104 += 6;
                }

                else
                {
                  if (v108 != 109 || v104[3] != 112 || v104[4] != 59)
                  {
                    goto LABEL_237;
                  }

                  *v56++ = 38;
                  v104 += 5;
                }
              }
            }

            else if (v106 == 103)
            {
              if (v104[2] != 116 || v104[3] != 59)
              {
                goto LABEL_237;
              }

              v109 = 62;
LABEL_264:
              *v56++ = v109;
              v104 += 4;
            }

            else
            {
              if (v106 == 108)
              {
                if (v104[2] != 116 || v104[3] != 59)
                {
                  goto LABEL_237;
                }

                v109 = 60;
                goto LABEL_264;
              }

              if (v106 == 113 && v104[2] == 117 && v104[3] == 111 && v104[4] == 116 && v104[5] == 59)
              {
                v107 = 34;
                goto LABEL_280;
              }

LABEL_237:
              ++v104;
              *v56++ = v105;
            }
          }

          if (*v104 && v105 != 60)
          {
            goto LABEL_237;
          }

          *a2 = v104;
          v119 = a1[13] + (-*(a1 + 104) & 7);
          if ((v119 + 96) > a1[14])
          {
            v120 = v101;
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
            v119 = v123 + (-(v123 + 8) & 7) + 8;
            v29 = (v9 + 48);
            v101 = v120;
          }

          a1[13] = v119 + 96;
          *(v119 + 40) = 2;
          *(v119 + 48) = 0;
          *(v119 + 64) = 0;
          *v119 = 0;
          *(v119 + 8) = v99;
          *(v119 + 24) = &v56[-v99];
          v124 = *v29;
          if (*v29)
          {
            v124 = *(v9 + 56);
            v125 = (v124 + 88);
          }

          else
          {
            v125 = v29;
          }

          *v125 = v119;
          *(v9 + 56) = v119;
          *(v119 + 32) = v9;
          *(v119 + 80) = v124;
          *(v119 + 88) = 0;
          v126 = *(v9 + 8);
          if (!v126)
          {
            v126 = &byte_27E1F3E58;
          }

          if (!*v126)
          {
            *(v9 + 8) = v99;
            *(v9 + 24) = &v56[-v99];
          }

          v100 = **a2;
          *v56 = 0;
        }

        v127 = *a2;
        v128 = *(*a2 + 1);
        if (v128 == 47)
        {
          *a2 = (v127 + 2);
          v129 = v127 + 1;
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
          if (*(v129 - 1) == 62)
          {
            *a2 = v129;
            goto LABEL_227;
          }

LABEL_325:
          exception = __cxa_allocate_exception(0x18uLL);
          v25 = *a2;
          v26 = "expected >";
LABEL_60:
          *exception = &unk_284F01CA0;
          exception[1] = v26;
          exception[2] = v25;
          __cxa_throw(exception, &unk_284F01B38, std::exception::~exception);
        }

        ++*a2;
        v134 = sub_23C39BF94(a1, a2, v30);
        v29 = (v9 + 48);
        if (v134)
        {
          v97 = *v140;
          if (*v140)
          {
            v97 = *(v9 + 56);
            v98 = (v97 + 88);
          }

          else
          {
            v98 = (v9 + 48);
          }

          *v98 = v134;
          *(v9 + 56) = v134;
          v134[4] = v9;
          v134[10] = v97;
          v134[11] = 0;
        }

LABEL_227:
        if (v128 == 47)
        {
          goto LABEL_314;
        }
      }
    }

    *a2 = (v33 + 1);
    if (v33[1] != 62)
    {
      goto LABEL_325;
    }

    *a2 = (v33 + 2);
LABEL_314:
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
      v18 = v4 + 3;
      for (m = v4 + 3; ; ++m)
      {
        *a2 = m;
        if (*m == 45)
        {
          if (m[1] == 45 && m[2] == 62)
          {
            v9 = a1[13] + (-*(a1 + 104) & 7);
            if ((v9 + 96) > a1[14])
            {
              v20 = a1[8207];
              if (!v20)
              {
                operator new[]();
              }

              v21 = v20(65558);
              v135 = (v21 + (-v21 & 7));
              *v135 = a1[12];
              a1[12] = v21;
              a1[14] = v21 + 65558;
              v9 = v135 + (-(v135 + 8) & 7) + 8;
            }

            a1[13] = v9 + 96;
            *v9 = 0;
            *(v9 + 8) = 0;
            *(v9 + 40) = 4;
            *(v9 + 48) = 0;
            *(v9 + 64) = 0;
            v136 = *a2 - v18;
            *(v9 + 8) = v18;
            *(v9 + 24) = v136;
            *(v9 + 32) = 0;
            **a2 = 0;
            v10 = (*a2 + 3);
            goto LABEL_62;
          }
        }

        else if (!*m)
        {
LABEL_59:
          exception = __cxa_allocate_exception(0x18uLL);
          v25 = *a2;
          v26 = "unexpected end of data";
          goto LABEL_60;
        }
      }
    }

    goto LABEL_56;
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

LABEL_56:
    v10 = v4 + 1;
    while (1)
    {
      *a2 = v10;
      v23 = *v10++;
      v22 = v23;
      if (v23 == 62)
      {
        break;
      }

      if (!v22)
      {
        goto LABEL_59;
      }
    }

    v9 = 0;
LABEL_62:
    *a2 = v10;
    return v9;
  }

  if (v11 != 91 || v4[2] != 67 || v4[3] != 68 || v4[4] != 65 || v4[5] != 84 || v4[6] != 65 || v4[7] != 91)
  {
    goto LABEL_56;
  }

  *a2 = (v4 + 8);

  return sub_23C3996E0(a1, a2);
}

uint64_t sub_23C39D2B0(uint64_t a1)
{
  v2 = *(a1 + 32);
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
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_23C39D36C(_BYTE *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = strlen(*a2);
  if (v5 < 0x7FFFFFFFFFFFFFF8)
  {
    v6 = v5;
    if (v5 < 0x17)
    {
      a1[23] = v5;
      if (v5)
      {
        memmove(a1, v4, v5);
      }

      a1[v6] = 0;
      sub_23C38428C((a1 + 24), (a2 + 8));
    }

    operator new();
  }

  sub_23C36FA14();
}

void sub_23C39D434(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C39D450(std::string *this, std::string::value_type *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v2 = *a2;
  if (*a2)
  {
    v4 = (a2 + 1);
    do
    {
      std::string::push_back(this, v2);
      v5 = *v4++;
      v2 = v5;
    }

    while (v5);
  }
}

void sub_23C39D498(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23C39D4B4(void *a1)
{
  v2 = a1 + 15;
  v3 = a1[12];
  if (v3 != v2)
  {
    do
    {
      v4 = *(v3 + (-v3 & 7));
      v5 = a1[8208];
      if (v5)
      {
        v5();
      }

      else
      {
        MEMORY[0x23EECF450]();
      }

      a1[12] = v4;
      v3 = v4;
    }

    while (v4 != v2);
  }

  a1[12] = v2;
  a1[13] = v2 + (-v2 & 7);
  a1[14] = a1 + 8207;
  return a1;
}

void sub_23C39D568(uint64_t a1, __int128 *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = a1;
    sub_23C36FB58(&__p, *a2, *(a2 + 1));
    a1 = v2;
    if ((SHIBYTE(v5) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __p = *a2;
    v5 = *(a2 + 2);
    if ((SHIBYTE(v5) & 0x80000000) == 0)
    {
LABEL_3:
      *a1 = __p;
      *(a1 + 16) = v5;
      goto LABEL_8;
    }
  }

  sub_23C36FB58(a1, __p, *(&__p + 1));
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p);
  }

LABEL_8:
  v3 = *MEMORY[0x277D85DE8];
}

void sub_23C39D644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a10 == 1 && a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C39D678(uint64_t a1, const std::locale *a2)
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
  sub_23C372684(&v19, "Lockup", 6);
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
    sub_23C3840A0(&v17, &v16, (0x800000023C3D4C13 & 0x7FFFFFFFFFFFFFFFLL));
    sub_23C3840A0(&__dst, &v17, " to data failed");
    v15 = 0;
    sub_23C390C18(&v19, &__dst, &v15);
    v13.i64[0] = "/AppleInternal/Library/BuildRoots/4~CAoFugDmBq1DumL31pZVCQtVJ2QpJ-I1yuxrViI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/property_tree/detail/ptree_implementation.hpp";
    v13.i64[1] = "void boost::property_tree::basic_ptree<std::string, std::string>::put_value(const Type &, Translator) [Key = std::string, Data = std::string, KeyCompare = std::less<std::string>, Type = char[7], Translator = boost::property_tree::stream_translator<char, std::char_traits<char>, std::allocator<char>, char[7]>]";
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

void sub_23C39DAC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, std::runtime_error a32)
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

void sub_23C39DB8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::locale a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  std::locale::~locale(&a14);
  sub_23C38E6C0(&a23);
  _Unwind_Resume(a1);
}

void sub_23C39DBA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_23C38E6C0(va);
  _Unwind_Resume(a1);
}

void sub_23C39DBBC(uint64_t a1, const std::locale *a2)
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
  sub_23C372684(&v19, "Fingerprint", 11);
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
    sub_23C3840A0(&v17, &v16, (0x800000023C3D4C18 & 0x7FFFFFFFFFFFFFFFLL));
    sub_23C3840A0(&__dst, &v17, " to data failed");
    v15 = 0;
    sub_23C390C18(&v19, &__dst, &v15);
    v13.i64[0] = "/AppleInternal/Library/BuildRoots/4~CAoFugDmBq1DumL31pZVCQtVJ2QpJ-I1yuxrViI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/property_tree/detail/ptree_implementation.hpp";
    v13.i64[1] = "void boost::property_tree::basic_ptree<std::string, std::string>::put_value(const Type &, Translator) [Key = std::string, Data = std::string, KeyCompare = std::less<std::string>, Type = char[12], Translator = boost::property_tree::stream_translator<char, std::char_traits<char>, std::allocator<char>, char[12]>]";
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

void sub_23C39E008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, std::runtime_error a32)
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

void sub_23C39E0D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::locale a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  std::locale::~locale(&a14);
  sub_23C38E6C0(&a23);
  _Unwind_Resume(a1);
}

void sub_23C39E0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_23C38E6C0(va);
  _Unwind_Resume(a1);
}

void sub_23C39E100(uint64_t a1, const std::locale *a2)
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
  sub_23C372684(&v19, "http://www.w3.org/2000/svg", 26);
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
    sub_23C3840A0(&v17, &v16, (0x800000023C3D4C1ELL & 0x7FFFFFFFFFFFFFFFLL));
    sub_23C3840A0(&__dst, &v17, " to data failed");
    v15 = 0;
    sub_23C390C18(&v19, &__dst, &v15);
    v13.i64[0] = "/AppleInternal/Library/BuildRoots/4~CAoFugDmBq1DumL31pZVCQtVJ2QpJ-I1yuxrViI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/property_tree/detail/ptree_implementation.hpp";
    v13.i64[1] = "void boost::property_tree::basic_ptree<std::string, std::string>::put_value(const Type &, Translator) [Key = std::string, Data = std::string, KeyCompare = std::less<std::string>, Type = char[27], Translator = boost::property_tree::stream_translator<char, std::char_traits<char>, std::allocator<char>, char[27]>]";
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

void sub_23C39E54C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, std::runtime_error a32)
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

void sub_23C39E614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::locale a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  std::locale::~locale(&a14);
  sub_23C38E6C0(&a23);
  _Unwind_Resume(a1);
}

void sub_23C39E630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_23C38E6C0(va);
  _Unwind_Resume(a1);
}

void sub_23C39E644(void *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  __p = 0;
  v24 = 0;
  v4 = 60;
  v25 = 0;
  v5 = 1u;
  do
  {
    if (SHIBYTE(v25) < 0)
    {
      v9 = (v25 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v24 == v9)
      {
        if ((v25 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          sub_23C36FA14();
        }

LABEL_9:
        operator new();
      }

      p_p = __p;
      v6 = v24++;
    }

    else
    {
      if (HIBYTE(v25) == 22)
      {
        goto LABEL_9;
      }

      v6 = HIBYTE(v25);
      HIBYTE(v25) = (HIBYTE(v25) + 1) & 0x7F;
      p_p = &__p;
    }

    v8 = &p_p[v6];
    *v8 = v4;
    v8[1] = 0;
    v4 = aXmlVersion10En_1[v5++];
  }

  while (v5 != 31);
  if (v25 >= 0)
  {
    v10 = &__p;
  }

  else
  {
    v10 = __p;
  }

  if (v25 >= 0)
  {
    v11 = HIBYTE(v25);
  }

  else
  {
    v11 = v24;
  }

  v12 = sub_23C372684(a1, v10, v11);
  v13 = *(a4 + 39);
  if (v13 >= 0)
  {
    v14 = a4 + 16;
  }

  else
  {
    v14 = *(a4 + 16);
  }

  if (v13 >= 0)
  {
    v15 = *(a4 + 39);
  }

  else
  {
    v15 = *(a4 + 24);
  }

  v16 = sub_23C372684(v12, v14, v15);
  v26[1] = 0;
  v27 = 0x400000000000000;
  v26[0] = 171851554;
  sub_23C372684(v16, v26, 4);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
    if ((SHIBYTE(v25) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }
  }

  else if ((SHIBYTE(v25) & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

  operator delete(__p);
LABEL_25:
  __p = 0;
  v24 = 0;
  v25 = 0;
  sub_23C39E9B8(a1, &__p, a2, -1, a4);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    sub_23C36F128(v26, "write error");
    sub_23C397FA4(&__p, v26, a3, 0);
    __p = &unk_284F01C50;
    v21.i64[0] = "/AppleInternal/Library/BuildRoots/4~CAoFugDmBq1DumL31pZVCQtVJ2QpJ-I1yuxrViI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/property_tree/detail/xml_parser_write.hpp";
    v21.i64[1] = "void boost::property_tree::xml_parser::write_xml_internal(std::basic_ostream<typename Ptree::key_type::value_type> &, const Ptree &, const std::string &, const xml_writer_settings<typename Ptree::key_type> &) [Ptree = boost::property_tree::basic_ptree<std::string, std::string>]";
    v22 = 190;
    sub_23C3956EC(&__p, &v21);
  }
}

void sub_23C39E954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::runtime_error a16, int a17, __int16 a18, char a19, char a20)
{
  sub_23C395754(&a16);
  if (*(v20 - 89) < 0)
  {
    operator delete(*(v20 - 112));
  }

  _Unwind_Resume(a1);
}

void sub_23C39E9B8(void *a1, uint64_t a2, uint64_t a3, int a4, unsigned __int8 *a5)
{
  v10 = *(a3 + 23);
  if ((v10 & 0x80u) == 0)
  {
    v11 = *(a3 + 23);
  }

  else
  {
    v11 = *(a3 + 8);
  }

  v98 = v11 == 0;
  v12 = *(*(a3 + 24) + 8);
  v13 = v12[11];
  v14 = *(a5 + 1);
  if (v13)
  {
    v15 = (v13 - 80);
  }

  else
  {
    v15 = 0;
  }

  if (v15 == v12)
  {
    v97 = 0;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a3 + 8);
    }

    if (!v10)
    {
      goto LABEL_56;
    }

    goto LABEL_57;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_27E1F3E60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F3E60))
    {
      sub_23C39D450(byte_27E1F3E78, "<xmlattr>");
      __cxa_atexit(MEMORY[0x277D82640], byte_27E1F3E78, &dword_23C368000);
      __cxa_guard_release(&qword_27E1F3E60);
    }

    v17 = *(v15 + 23);
    if (v17 >= 0)
    {
      v18 = *(v15 + 23);
    }

    else
    {
      v18 = v15[1];
    }

    v19 = byte_27E1F3E78[23];
    if (byte_27E1F3E78[23] < 0)
    {
      v19 = *&byte_27E1F3E78[8];
    }

    if (v18 == v19)
    {
      v20 = v17 >= 0 ? v15 : *v15;
      v21 = byte_27E1F3E78[23] >= 0 ? byte_27E1F3E78 : *byte_27E1F3E78;
      if (!memcmp(v20, v21, v18))
      {
        goto LABEL_9;
      }
    }

    if ((atomic_load_explicit(&qword_27E1F3E68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F3E68))
    {
      sub_23C39D450(&xmmword_27E1F3E90, "<xmltext>");
      __cxa_atexit(MEMORY[0x277D82640], &xmmword_27E1F3E90, &dword_23C368000);
      __cxa_guard_release(&qword_27E1F3E68);
    }

    v22 = *(v15 + 23);
    if (v22 >= 0)
    {
      v23 = *(v15 + 23);
    }

    else
    {
      v23 = v15[1];
    }

    v24 = byte_27E1F3EA7;
    if (byte_27E1F3EA7 < 0)
    {
      v24 = *(&xmmword_27E1F3E90 + 1);
    }

    if (v23 != v24)
    {
      break;
    }

    if (v22 >= 0)
    {
      v25 = v15;
    }

    else
    {
      v25 = *v15;
    }

    if (byte_27E1F3EA7 >= 0)
    {
      v26 = &xmmword_27E1F3E90;
    }

    else
    {
      v26 = xmmword_27E1F3E90;
    }

    v98 = 0;
    if (memcmp(v25, v26, v23))
    {
      goto LABEL_52;
    }

LABEL_9:
    v16 = v15[11];
    if (v16)
    {
      v15 = (v16 - 80);
    }

    else
    {
      v15 = 0;
    }

    if (v15 == v12)
    {
      v97 = 0;
      goto LABEL_53;
    }
  }

  v98 = 0;
LABEL_52:
  v97 = 1;
LABEL_53:
  v27 = *(a3 + 23);
  if (*(a3 + 23) < 0)
  {
    v27 = *(a3 + 8);
  }

  if (!v27)
  {
LABEL_56:
    if (*(*(a3 + 24) + 24))
    {
      goto LABEL_57;
    }

    if ((a4 & 0x80000000) == 0)
    {
      sub_23C39F66C(a1, a4, *a5, *(a5 + 1));
      __p.__r_.__value_.__s.__data_[0] = 60;
      v92 = sub_23C372684(a1, &__p, 1);
      v93 = *(a2 + 23);
      if (v93 >= 0)
      {
        v94 = a2;
      }

      else
      {
        v94 = *a2;
      }

      if (v93 >= 0)
      {
        v95 = *(a2 + 23);
      }

      else
      {
        v95 = *(a2 + 8);
      }

      v86 = sub_23C372684(v92, v94, v95);
      __p.__r_.__value_.__s.__data_[0] = 47;
      p_p = &__p;
      v89 = 1;
      goto LABEL_198;
    }

    return;
  }

LABEL_57:
  if ((a4 & 0x80000000) == 0)
  {
    sub_23C39F66C(a1, a4, *a5, *(a5 + 1));
    __p.__r_.__value_.__s.__data_[0] = 60;
    v28 = sub_23C372684(a1, &__p, 1);
    v29 = *(a2 + 23);
    if (v29 >= 0)
    {
      v30 = a2;
    }

    else
    {
      v30 = *a2;
    }

    if (v29 >= 0)
    {
      v31 = *(a2 + 23);
    }

    else
    {
      v31 = *(a2 + 8);
    }

    sub_23C372684(v28, v30, v31);
    if ((atomic_load_explicit(&qword_27E1F3E60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F3E60))
    {
      sub_23C39D450(byte_27E1F3E78, "<xmlattr>");
      __cxa_atexit(MEMORY[0x277D82640], byte_27E1F3E78, &dword_23C368000);
      __cxa_guard_release(&qword_27E1F3E60);
    }

    if (byte_27E1F3E78[23] < 0)
    {
      sub_23C36FB58(&__p, *byte_27E1F3E78, *&byte_27E1F3E78[8]);
    }

    else
    {
      __p = *byte_27E1F3E78;
    }

    v102 = 46;
    v32 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v32 = __p.__r_.__value_.__r.__words[0];
    }

    v103 = v32;
    sub_23C394868(&v104, a3, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      v33 = v104;
      if (!v104)
      {
        goto LABEL_100;
      }
    }

    else
    {
      v33 = v104;
      if (!v104)
      {
        goto LABEL_100;
      }
    }

    v34 = *(*(v33 + 24) + 8);
    v35 = *(v34 + 88);
    if (v35)
    {
      v36 = v35 - 80;
    }

    else
    {
      v36 = 0;
    }

    if (v36 != v34)
    {
      while (2)
      {
        __p.__r_.__value_.__s.__data_[0] = 32;
        v38 = sub_23C372684(a1, &__p, 1);
        v39 = *(v36 + 23);
        if (v39 >= 0)
        {
          v40 = v36;
        }

        else
        {
          v40 = *v36;
        }

        if (v39 >= 0)
        {
          v41 = *(v36 + 23);
        }

        else
        {
          v41 = *(v36 + 8);
        }

        v42 = sub_23C372684(v38, v40, v41);
        __p.__r_.__value_.__s.__data_[0] = 61;
        v43 = sub_23C372684(v42, &__p, 1);
        __p.__r_.__value_.__s.__data_[0] = 34;
        v44 = sub_23C372684(v43, &__p, 1);
        sub_23C39D568(v99, (v36 + 24));
        sub_23C39F78C(&__p, v99);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v45 = &__p;
        }

        else
        {
          v45 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        v47 = sub_23C372684(v44, v45, size);
        v105 = 34;
        sub_23C372684(v47, &v105, 1);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if (v100 < 0)
          {
            goto LABEL_99;
          }
        }

        else if (v100 < 0)
        {
LABEL_99:
          operator delete(v99[0]);
        }

        v37 = *(v36 + 88);
        if (v37)
        {
          v36 = v37 - 80;
        }

        else
        {
          v36 = 0;
        }

        if (v36 == *(*(v33 + 24) + 8))
        {
          break;
        }

        continue;
      }
    }

LABEL_100:
    if (v98)
    {
      __p.__r_.__value_.__s.__data_[0] = 47;
      v48 = sub_23C372684(a1, &__p, 1);
      __p.__r_.__value_.__s.__data_[0] = 62;
      sub_23C372684(v48, &__p, 1);
      if (v14)
      {
        goto LABEL_102;
      }
    }

    else
    {
      __p.__r_.__value_.__s.__data_[0] = 62;
      sub_23C372684(a1, &__p, 1);
      v91 = v97;
      if (!v14)
      {
        v91 = 0;
      }

      if (v91 == 1)
      {
LABEL_102:
        __p.__r_.__value_.__s.__data_[0] = 10;
        sub_23C372684(a1, &__p, 1);
      }
    }
  }

  v49 = *(a3 + 23);
  if ((v49 & 0x80u) != 0)
  {
    v49 = *(a3 + 8);
  }

  if (v49)
  {
    sub_23C39D568(&__p, a3);
    v50 = v14 ? v97 : 0;
    sub_23C39FE1C(a1, &__p, a4 + 1, v50, *a5, *(a5 + 1));
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v51 = *(*(a3 + 24) + 8);
  v52 = *(v51 + 88);
  if (v52)
  {
    v53 = v52 - 80;
  }

  else
  {
    v53 = 0;
  }

  if (v53 != v51)
  {
    v54 = v97;
    if (!v14)
    {
      v54 = 0;
    }

    v96 = v54;
    while (1)
    {
      if ((atomic_load_explicit(&qword_27E1F3E60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F3E60))
      {
        sub_23C39D450(byte_27E1F3E78, "<xmlattr>");
        __cxa_atexit(MEMORY[0x277D82640], byte_27E1F3E78, &dword_23C368000);
        __cxa_guard_release(&qword_27E1F3E60);
      }

      v56 = *(v53 + 23);
      if (v56 >= 0)
      {
        v57 = *(v53 + 23);
      }

      else
      {
        v57 = *(v53 + 8);
      }

      v58 = byte_27E1F3E78[23];
      if (byte_27E1F3E78[23] < 0)
      {
        v58 = *&byte_27E1F3E78[8];
      }

      if (v57 == v58)
      {
        v59 = v56 >= 0 ? v53 : *v53;
        v60 = byte_27E1F3E78[23] >= 0 ? byte_27E1F3E78 : *byte_27E1F3E78;
        if (!memcmp(v59, v60, v57))
        {
          goto LABEL_119;
        }
      }

      if ((atomic_load_explicit(&qword_27E1F3E70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F3E70))
      {
        sub_23C39D450(&xmmword_27E1F3EA8, "<xmlcomment>");
        __cxa_atexit(MEMORY[0x277D82640], &xmmword_27E1F3EA8, &dword_23C368000);
        __cxa_guard_release(&qword_27E1F3E70);
      }

      v61 = *(v53 + 23);
      if (v61 >= 0)
      {
        v62 = *(v53 + 23);
      }

      else
      {
        v62 = *(v53 + 8);
      }

      v63 = byte_27E1F3EBF;
      if (byte_27E1F3EBF < 0)
      {
        v63 = *(&xmmword_27E1F3EA8 + 1);
      }

      if (v62 == v63)
      {
        v64 = v61 >= 0 ? v53 : *v53;
        v65 = byte_27E1F3EBF >= 0 ? &xmmword_27E1F3EA8 : xmmword_27E1F3EA8;
        if (!memcmp(v64, v65, v62))
        {
          break;
        }
      }

      if ((atomic_load_explicit(&qword_27E1F3E68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F3E68))
      {
        sub_23C39D450(&xmmword_27E1F3E90, "<xmltext>");
        __cxa_atexit(MEMORY[0x277D82640], &xmmword_27E1F3E90, &dword_23C368000);
        __cxa_guard_release(&qword_27E1F3E68);
      }

      v66 = *(v53 + 23);
      if (v66 >= 0)
      {
        v67 = *(v53 + 23);
      }

      else
      {
        v67 = *(v53 + 8);
      }

      v68 = byte_27E1F3EA7;
      if (byte_27E1F3EA7 < 0)
      {
        v68 = *(&xmmword_27E1F3E90 + 1);
      }

      if (v67 == v68)
      {
        v69 = v66 >= 0 ? v53 : *v53;
        v70 = byte_27E1F3EA7 >= 0 ? &xmmword_27E1F3E90 : xmmword_27E1F3E90;
        if (!memcmp(v69, v70, v67))
        {
          sub_23C39D568(&__p, (v53 + 24));
          sub_23C39FE1C(a1, &__p, a4 + 1, v96, *a5, *(a5 + 1));
          goto LABEL_181;
        }
      }

      sub_23C39E9B8(a1, v53, v53 + 24, (a4 + 1), a5);
LABEL_119:
      v55 = *(v53 + 88);
      if (v55)
      {
        v53 = v55 - 80;
      }

      else
      {
        v53 = 0;
      }

      if (v53 == *(*(a3 + 24) + 8))
      {
        goto LABEL_189;
      }
    }

    sub_23C39D568(&__p, (v53 + 24));
    if (v14)
    {
      sub_23C39F66C(a1, a4 + 1, *a5, *(a5 + 1));
      LOBYTE(v99[0]) = 60;
      v71 = sub_23C372684(a1, v99, 1);
      LOBYTE(v99[0]) = 33;
      v72 = sub_23C372684(v71, v99, 1);
      LOBYTE(v99[0]) = 45;
      v73 = sub_23C372684(v72, v99, 1);
      LOBYTE(v99[0]) = 45;
      sub_23C372684(v73, v99, 1);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v74 = &__p;
      }

      else
      {
        v74 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v75 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v75 = __p.__r_.__value_.__l.__size_;
      }

      sub_23C372684(a1, v74, v75);
      LOBYTE(v99[0]) = 45;
      v76 = sub_23C372684(a1, v99, 1);
      LOBYTE(v99[0]) = 45;
      v77 = sub_23C372684(v76, v99, 1);
      LOBYTE(v99[0]) = 62;
      sub_23C372684(v77, v99, 1);
      LOBYTE(v99[0]) = 10;
      sub_23C372684(a1, v99, 1);
    }

    else
    {
      LOBYTE(v99[0]) = 60;
      v78 = sub_23C372684(a1, v99, 1);
      LOBYTE(v99[0]) = 33;
      v79 = sub_23C372684(v78, v99, 1);
      LOBYTE(v99[0]) = 45;
      v80 = sub_23C372684(v79, v99, 1);
      LOBYTE(v99[0]) = 45;
      sub_23C372684(v80, v99, 1);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v81 = &__p;
      }

      else
      {
        v81 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v82 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v82 = __p.__r_.__value_.__l.__size_;
      }

      sub_23C372684(a1, v81, v82);
      LOBYTE(v99[0]) = 45;
      v83 = sub_23C372684(a1, v99, 1);
      LOBYTE(v99[0]) = 45;
      v84 = sub_23C372684(v83, v99, 1);
      LOBYTE(v99[0]) = 62;
      sub_23C372684(v84, v99, 1);
    }

LABEL_181:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_119;
  }

LABEL_189:
  if (a4 >= 0 && !v98)
  {
    if (v97)
    {
      sub_23C39F66C(a1, a4, *a5, *(a5 + 1));
    }

    __p.__r_.__value_.__s.__data_[0] = 60;
    v85 = sub_23C372684(a1, &__p, 1);
    __p.__r_.__value_.__s.__data_[0] = 47;
    v86 = sub_23C372684(v85, &__p, 1);
    v87 = *(a2 + 23);
    if (v87 >= 0)
    {
      p_p = a2;
    }

    else
    {
      p_p = *a2;
    }

    if (v87 >= 0)
    {
      v89 = *(a2 + 23);
    }

    else
    {
      v89 = *(a2 + 8);
    }

LABEL_198:
    v90 = sub_23C372684(v86, p_p, v89);
    __p.__r_.__value_.__s.__data_[0] = 62;
    sub_23C372684(v90, &__p, 1);
    if (v14)
    {
      __p.__r_.__value_.__s.__data_[0] = 10;
      sub_23C372684(a1, &__p, 1);
    }
  }
}

void sub_23C39F618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C39F66C(void *a1, int a2, int __c, uint64_t a4)
{
  v4 = a2 * a4;
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C36FA14();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  v9 = a2 * a4;
  if (v4)
  {
    memset(__b, __c, v4);
  }

  *(__b + v4) = 0;
  if ((v9 & 0x80u) == 0)
  {
    v6 = __b;
  }

  else
  {
    v6 = __b[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v7 = v9;
  }

  else
  {
    v7 = __b[1];
  }

  sub_23C372684(a1, v6, v7);
  if (v9 < 0)
  {
    operator delete(__b[0]);
  }
}

void sub_23C39F770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C39F78C(std::string *this, unsigned __int8 *a2)
{
  v2 = this;
  v3 = a2[23];
  if (v3 < 0)
  {
    v5 = *(a2 + 1);
    if (!v5)
    {
      v28 = *a2;

      sub_23C36FB58(this, v28, 0);
      return;
    }

    *&this->__r_.__value_.__l.__data_ = 0uLL;
    this->__r_.__value_.__r.__words[2] = 0;
    v4 = *a2;
  }

  else
  {
    if (!a2[23])
    {
      *this = *a2;
      return;
    }

    *&this->__r_.__value_.__l.__data_ = 0uLL;
    v4 = a2;
    v5 = v3;
    this->__r_.__value_.__r.__words[2] = 0;
  }

  v6 = 0;
  v30 = this;
  while (v4[v6] == 32)
  {
    if (v5 == ++v6)
    {
      goto LABEL_65;
    }
  }

  if (v6 == -1)
  {
LABEL_65:
    v24 = *(a2 + 1);
    LODWORD(this->__r_.__value_.__l.__data_) = 842212134;
    this->__r_.__value_.__s.__data_[4] = 59;
    *(this->__r_.__value_.__r.__words + 5) = 0uLL;
    *(&this->__r_.__value_.__r.__words[2] + 5) = 0;
    *(&this->__r_.__value_.__s + 23) = 5;
    if (v3 < 0)
    {
      v3 = v24;
    }

    v25 = v3 - 1;
    if ((v3 - 1) > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23C36FA14();
    }

    if (v25 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v33) = v3 - 1;
    if (v3 != 1)
    {
      memset(__s, 32, v25);
    }

    __s[v25] = 0;
    if (v33 >= 0)
    {
      v26 = __s;
    }

    else
    {
      v26 = *__s;
    }

    if (v33 >= 0)
    {
      v27 = HIBYTE(v33);
    }

    else
    {
      v27 = v32;
    }

    std::string::append(v2, v26, v27);
    if (SHIBYTE(v33) < 0)
    {
      operator delete(*__s);
    }
  }

  else
  {
    if (v3 >= 0)
    {
      v7 = &a2[v3];
    }

    else
    {
      v7 = (*a2 + *(a2 + 1));
    }

    if (v3 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v8 != v7)
    {
      v29 = v7;
      do
      {
        v9 = *v8;
        if (v9 <= 0x26)
        {
          if (v9 == 34)
          {
            *__s = 0;
            v32 = 0;
            v16 = 38;
            v17 = 1u;
            v33 = 0;
            do
            {
              if (SHIBYTE(v33) < 0)
              {
                v21 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - 1;
                if (v32 == v21)
                {
                  if ((v33 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
                  {
                    sub_23C36FA14();
                  }

LABEL_48:
                  operator new();
                }

                v19 = *__s;
                v18 = v32++;
              }

              else
              {
                if (HIBYTE(v33) == 22)
                {
                  goto LABEL_48;
                }

                v18 = HIBYTE(v33);
                HIBYTE(v33) = (HIBYTE(v33) + 1) & 0x7F;
                v19 = __s;
              }

              v20 = &v19[v18];
              *v20 = v16;
              v20[1] = 0;
              v16 = aQuot[v17++];
            }

            while (v17 != 7);
            if (v33 >= 0)
            {
              v22 = __s;
            }

            else
            {
              v22 = *__s;
            }

            if (v33 >= 0)
            {
              v23 = HIBYTE(v33);
            }

            else
            {
              v23 = v32;
            }

LABEL_62:
            v2 = v30;
            std::string::append(v30, v22, v23);
            v7 = v29;
LABEL_63:
            if (SHIBYTE(v33) < 0)
            {
              operator delete(*__s);
            }

            goto LABEL_20;
          }

          if (v9 == 38)
          {
            v33 = 0x500000000000000;
            strcpy(__s, "&amp;");
            *&__s[6] = 0;
            v32 = 0;
            std::string::append(v2, __s, 5uLL);
            goto LABEL_63;
          }
        }

        else
        {
          switch(v9)
          {
            case '\'':
              *__s = 0;
              v32 = 0;
              v10 = 38;
              v11 = 1u;
              v33 = 0;
              do
              {
                if (SHIBYTE(v33) < 0)
                {
                  v15 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - 1;
                  if (v32 == v15)
                  {
                    if ((v33 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
                    {
                      sub_23C36FA14();
                    }

LABEL_37:
                    operator new();
                  }

                  v13 = *__s;
                  v12 = v32++;
                }

                else
                {
                  if (HIBYTE(v33) == 22)
                  {
                    goto LABEL_37;
                  }

                  v12 = HIBYTE(v33);
                  HIBYTE(v33) = (HIBYTE(v33) + 1) & 0x7F;
                  v13 = __s;
                }

                v14 = &v13[v12];
                *v14 = v10;
                v14[1] = 0;
                v10 = aApos[v11++];
              }

              while (v11 != 7);
              if (v33 >= 0)
              {
                v22 = __s;
              }

              else
              {
                v22 = *__s;
              }

              if (v33 >= 0)
              {
                v23 = HIBYTE(v33);
              }

              else
              {
                v23 = v32;
              }

              goto LABEL_62;
            case '>':
              v32 = 0;
              v33 = 0x400000000000000;
              __s[5] = 0;
              *&__s[6] = 0;
              strcpy(__s, "&gt;");
              std::string::append(v2, __s, 4uLL);
              goto LABEL_63;
            case '<':
              v32 = 0;
              v33 = 0x400000000000000;
              __s[5] = 0;
              *&__s[6] = 0;
              strcpy(__s, "&lt;");
              std::string::append(v2, __s, 4uLL);
              goto LABEL_63;
          }
        }

        std::string::push_back(v2, v9);
LABEL_20:
        ++v8;
      }

      while (v8 != v7);
    }
  }
}

void sub_23C39FD98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((*(a17 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(a17 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*a17);
  _Unwind_Resume(exception_object);
}

void sub_23C39FE1C(void *a1, unsigned __int8 *a2, int a3, int a4, int __c, uint64_t a6)
{
  if (a4)
  {
    v8 = a2;
    sub_23C39F66C(a1, a3, __c, a6);
    a2 = v8;
  }

  sub_23C39F78C(&__p, a2);
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

  sub_23C372684(a1, p_p, size);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!a4)
    {
      return;
    }

LABEL_13:
    __p.__r_.__value_.__s.__data_[0] = 10;
    sub_23C372684(a1, &__p, 1);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (a4)
  {
    goto LABEL_13;
  }
}

void sub_23C39FEE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

sqlite3 **sub_23C39FEFC(sqlite3 **a1, char *filename)
{
  v2 = filename;
  *a1 = 0;
  ppDb = 0;
  if (filename[23] < 0)
  {
    if (!*(filename + 1))
    {
      return a1;
    }

    v2 = *filename;
  }

  else if (!filename[23])
  {
    return a1;
  }

  if (sqlite3_open_v2(v2, &ppDb, 65, 0))
  {
    if (ppDb)
    {
      sqlite3_close_v2(ppDb);
    }
  }

  else
  {
    v4 = *a1;
    *a1 = ppDb;
    if (v4)
    {
      sqlite3_close_v2(v4);
    }
  }

  return a1;
}

sqlite3 **sub_23C39FFA8(sqlite3 **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sqlite3_close_v2(v2);
  }

  return a1;
}

sqlite3 ***sub_23C39FFE0(sqlite3 ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
      sqlite3_close_v2(v3);
    }

    MEMORY[0x23EECF470](v1, 0x20C4093837F09);
    return v2;
  }

  return result;
}

CFIndex sub_23C3A003C@<X0>(CFIndex result@<X0>, std::string *a2@<X8>)
{
  if (!result)
  {
    goto LABEL_9;
  }

  v3 = result;
  TypeID = CFStringGetTypeID();
  result = CFGetTypeID(v3);
  if (result != TypeID)
  {
    goto LABEL_9;
  }

  result = CFStringGetLength(v3);
  if (result)
  {
    v5 = result;
    usedBufLen = 0;
    v10.location = 0;
    v10.length = result;
    result = CFStringGetBytes(v3, v10, 0x8000100u, 0, 0, 0, 0, &usedBufLen);
    if (result > 0)
    {
      memset(&v8, 0, sizeof(v8));
      if (usedBufLen)
      {
        std::string::append(&v8, usedBufLen, 0);
        v6 = usedBufLen;
        if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v7 = &v8;
        }

        else
        {
          v7 = v8.__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        v6 = 0;
        v7 = &v8;
      }

      v11.location = 0;
      v11.length = v5;
      result = CFStringGetBytes(v3, v11, 0x8000100u, 0, 0, v7, v6, 0);
      *a2 = v8;
      goto LABEL_13;
    }

LABEL_9:
    a2->__r_.__value_.__s.__data_[0] = 0;
    a2[1].__r_.__value_.__s.__data_[0] = 0;
    return result;
  }

  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
LABEL_13:
  a2[1].__r_.__value_.__s.__data_[0] = 1;
  return result;
}

void sub_23C3A017C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C3A02B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_23C36EB4C(v15);
    _Unwind_Resume(a1);
  }

  sub_23C36EB4C(v15);
  _Unwind_Resume(a1);
}

void sub_23C3A0328(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EECF470);
}

void sub_23C3A0360(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_23C3A0384(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIPK10__CFNumberEC1ES5_EUlS5_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIPK10__CFNumberEC1ES5_EUlS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIPK10__CFNumberEC1ES5_EUlS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIPK10__CFNumberEC1ES5_EUlS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_23C3A0504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_23C36EB4C(v15);
    _Unwind_Resume(a1);
  }

  sub_23C36EB4C(v15);
  _Unwind_Resume(a1);
}

void sub_23C3A0574(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EECF470);
}

void sub_23C3A05AC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_23C3A05D0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP14__CFDictionaryEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP14__CFDictionaryEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP14__CFDictionaryEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP14__CFDictionaryEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

const void *sub_23C3A0638(const void **a1)
{
  result = *a1;
  if (result)
  {
    return CFGetTypeID(result);
  }

  return result;
}

BOOL sub_23C3A0648(const void **a1, const void *a2)
{
  v3 = *a1;
  if (v3)
  {
    v3 = CFGetTypeID(v3);
  }

  return v3 == a2;
}

void sub_23C3A067C()
{
  Default = CFAllocatorGetDefault();
  Mutable = CFDataCreateMutable(Default, 0);
  sub_23C3A0828(&v2, Mutable);
}

void sub_23C3A0948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_23C36EB4C(v15);
    _Unwind_Resume(a1);
  }

  sub_23C36EB4C(v15);
  _Unwind_Resume(a1);
}

void sub_23C3A09B8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EECF470);
}

void sub_23C3A09F0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_23C3A0A14(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP8__CFDataEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP8__CFDataEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP8__CFDataEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP8__CFDataEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_23C3A0A74(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_23C3A0A74(a1, *a2);
    sub_23C3A0A74(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v4 = a2;
    }

    else
    {
      v4 = a2;
    }

    operator delete(v4);
  }
}

void sub_23C3A0C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_23C36EB4C(v15);
    _Unwind_Resume(a1);
  }

  sub_23C36EB4C(v15);
  _Unwind_Resume(a1);
}

void sub_23C3A0C88(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EECF470);
}

void sub_23C3A0CC0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_23C3A0CE4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIPK14__CFDictionaryEC1ES5_EUlS5_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIPK14__CFDictionaryEC1ES5_EUlS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIPK14__CFDictionaryEC1ES5_EUlS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIPK14__CFDictionaryEC1ES5_EUlS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_23C3A1438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_free_exception(v9);
  sub_23C36EB4C(&a9);
  _Unwind_Resume(a1);
}

void sub_23C3A1468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  sub_23C36EB4C(va);
  sub_23C36EB4C(va1);
  sub_23C36EB4C(va2);
  _Unwind_Resume(a1);
}

void sub_23C3A148C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23C36EB4C(va);
  _Unwind_Resume(a1);
}

void sub_23C3A14A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_23C36EB4C(va);
  sub_23C36EB4C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_23C3A14BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v3 = a1[1];
  if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v9 = a3;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    a3 = v9;
    if (v4)
    {
LABEL_4:
      v5 = *(a3 + 23);
      if (v5 >= 0)
      {
        v6 = a3;
      }

      else
      {
        v6 = *a3;
      }

      if (v5 >= 0)
      {
        v7 = *(a3 + 23);
      }

      else
      {
        v7 = *(a3 + 8);
      }

      v8 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v6, v7, 0x8000100u, 0);
      sub_23C36C324(&v11, v8);
    }
  }

  else if (v4)
  {
    goto LABEL_4;
  }

  return 0;
}

void sub_23C3A16DC()
{
  *&__dst.__r_.__value_.__r.__words[1] = 0uLL;
  __dst.__r_.__value_.__r.__words[0] = &__dst.__r_.__value_.__l.__size_;
  sub_23C3A0D44();
}

void sub_23C3A1CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_23C36EB4C(va);
  sub_23C36EB4C(va1);
  _Unwind_Resume(a1);
}

void sub_23C3A1D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23C36EB4C(va);
  _Unwind_Resume(a1);
}

void sub_23C3A1D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_23C36EB4C(&a18);
  _Unwind_Resume(a1);
}

void sub_23C3A1DC4(const void **a1, CFTypeRef *a2)
{
  if (a2)
  {
    if (*a2)
    {
      CFRelease(*a2);
    }

    *a2 = 0;
    v4 = *a1;
    if (v4)
    {
      CFRetain(v4);
    }

    *a2 = v4;
  }
}

void sub_23C3A1E14()
{
  v1[0] = 0;
  v1[1] = 0;
  v0 = v1;
  sub_23C3A0D44();
}

void sub_23C3A1F34(int a1, CFTypeRef cf, uint64_t a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  if (cf)
  {
    v3 = cf;
    CFRetain(cf);
    cf = v3;
  }

  sub_23C3A0AF8(&v4, cf);
}

void sub_23C3A2180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_23C36EB4C(v15);
    _Unwind_Resume(a1);
  }

  sub_23C36EB4C(v15);
  _Unwind_Resume(a1);
}

void sub_23C3A21F0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EECF470);
}

void sub_23C3A2228(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_23C3A224C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP9__CFErrorEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP9__CFErrorEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP9__CFErrorEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP9__CFErrorEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_23C3A22B4(CFTypeID a1, CFTypeID a2)
{
  if (a1 == a2 && sub_23C3A46B0("/Library/Caches/com.apple.xbs/Sources/ACCBaker/library/Kit/Foundation/src/Ptr.cpp", 0x26u, "expected != found", 17, &unk_23C3DB41A, 0, sub_23C3A4EB4))
  {
    abort();
  }

  sub_23C3A284C(&v11, a1);
  sub_23C3A284C(&__p, a2);
  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v11.__r_.__value_.__l.__size_;
  }

  v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = __p.__r_.__value_.__l.__size_;
  }

  v6 = "Are you wrapping a CFTypeRef from an other type ?";
  if (size == v5)
  {
    v7 = (v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v11 : v11.__r_.__value_.__r.__words[0];
    v8 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    if (!memcmp(v7, v8, size))
    {
      v6 = "Are you wrapping the same type from different static context ?";
    }
  }

  v9 = strlen(v6);
  v12[23] = 16;
  strcpy(v12, "Runtime type ID ");
  v13 = 1;
  v15 = v12;
  p_p = &__p;
  v17 = v12;
  p_dst = &__p;
  v19 = &__p;
  sub_23C371820(&v17, v12);
  v15 = v12;
  p_p = " (";
  v17 = v12;
  p_dst = " (";
  v19 = " (";
  if (v13 == -1)
  {
    sub_23C370930();
  }

  __dst.__r_.__value_.__r.__words[0] = &v15;
  (off_284F01E78[v13])(&__dst, v12);
  std::to_string(&__dst, a2);
  v15 = v12;
  p_p = &__dst;
  v17 = v12;
  p_dst = &__dst;
  v19 = &__dst;
  if (v13 == -1)
  {
    sub_23C370930();
  }

  v20 = &v15;
  (off_284F01E90[v13])(&v20, v12);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v15 = v12;
  p_p = ") does not match the expected compile time type ID ";
  v17 = v12;
  p_dst = ") does not match the expected compile time type ID ";
  v19 = ") does not match the expected compile time type ID ";
  if (v13 == -1)
  {
    sub_23C370930();
  }

  __dst.__r_.__value_.__r.__words[0] = &v15;
  (off_284F01EA8[v13])(&__dst, v12);
  v15 = v12;
  p_p = &v11;
  v17 = v12;
  p_dst = &v11;
  v19 = &v11;
  if (v13 == -1)
  {
    sub_23C370930();
  }

  __dst.__r_.__value_.__r.__words[0] = &v15;
  (off_284F01E60[v13])(&__dst, v12);
  v15 = v12;
  p_p = " (";
  v17 = v12;
  p_dst = " (";
  v19 = " (";
  if (v13 == -1)
  {
    sub_23C370930();
  }

  __dst.__r_.__value_.__r.__words[0] = &v15;
  (off_284F01E78[v13])(&__dst, v12);
  std::to_string(&__dst, a1);
  v15 = v12;
  p_p = &__dst;
  v17 = v12;
  p_dst = &__dst;
  v19 = &__dst;
  if (v13 == -1)
  {
    sub_23C370930();
  }

  v20 = &v15;
  (off_284F01E90[v13])(&v20, v12);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v15 = v12;
  p_p = ") : ";
  v17 = v12;
  p_dst = ") : ";
  v19 = ") : ";
  if (v13 == -1)
  {
    sub_23C370930();
  }

  __dst.__r_.__value_.__r.__words[0] = &v15;
  (off_284F01EC0[v13])(&__dst, v12);
  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C36FA14();
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v9;
  if (v9)
  {
    memcpy(&__dst, v6, v9);
  }

  __dst.__r_.__value_.__s.__data_[v9] = 0;
  v15 = v12;
  p_p = &__dst;
  v17 = v12;
  p_dst = &__dst;
  v19 = &__dst;
  if (v13 == -1)
  {
    sub_23C370930();
  }

  v20 = &v15;
  (off_284F01E90[v13])(&v20, v12);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v13 == -1)
  {
    sub_23C370930();
  }

  v15 = &__dst;
  (off_284F01ED8[v13])(&v15, v12);
  if (v13 != -1)
  {
    (off_284F01E48[v13])(&v15, v12);
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_44:
    operator delete(v11.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_44;
  }
}

void sub_23C3A2794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_23C372FE8(&a21);
  if (a14 < 0)
  {
    operator delete(__p);
    if (a20 < 0)
    {
LABEL_6:
      operator delete(a15);
      _Unwind_Resume(a1);
    }
  }

  else if (a20 < 0)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

void sub_23C3A284C(std::string *a1, CFTypeID type_id)
{
  v3 = CFCopyTypeIDDescription(type_id);
  sub_23C36C324(&v8, v3);
  v5 = v8;
  v6 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = v9;
    if (v9)
    {
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }
    }
  }

  sub_23C3A003C(v5, &v7);
  *a1 = v7;
  memset(&v7, 0, sizeof(v7));
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

size_t sub_23C3A2978(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_284F01E48[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C36FA14();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_23C3A2A6C(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C36FA14();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_284F01E48[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_23C370B40(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_23C3A2C30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23C36BF7C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C3A2C88(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_23C36C1E0();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_23C36C8AC();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23C36FA14();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23C36FA14();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_23C3A2EC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23C370D5C(va);
  _Unwind_Resume(a1);
}

void sub_23C3A2EE4(int a1)
{
  v1 = &unk_23C3DB41A;
  if (a1 == 12)
  {
    v1 = " (ENOMEM)";
  }

  v2 = v1;
  v3 = -1;
  operator new();
}

void sub_23C3A3228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C3A3244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_23C372FE8(va);
  _Unwind_Resume(a1);
}

void sub_23C3A3258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_23C372FE8(va);
  _Unwind_Resume(a1);
}

void sub_23C3A326C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_23C372FE8(&a14);
  _Unwind_Resume(a1);
}

void sub_23C3A32E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_23C372FE8(va);
  _Unwind_Resume(a1);
}

void sub_23C3A32FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_23C372FE8(va);
  _Unwind_Resume(a1);
}

size_t sub_23C3A3310(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_284F01EF0[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C36FA14();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_23C3A3404(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C36FA14();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_284F01EF0[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_23C370B40(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_23C3A35C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23C36BF7C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C3A3620(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_23C36C1E0();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_23C36C8AC();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23C36FA14();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23C36FA14();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_23C3A3860(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23C370D5C(va);
  _Unwind_Resume(a1);
}

size_t sub_23C3A387C(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_284F01EF0[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C36FA14();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_23C3A3970(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C36FA14();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_284F01EF0[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_23C370B40(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_23C3A3B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23C36BF7C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C3A3B8C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_23C36C1E0();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_23C36C8AC();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23C36FA14();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23C36FA14();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_23C3A3DCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23C370D5C(va);
  _Unwind_Resume(a1);
}

void sub_23C3A3DF4(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = **(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C36FA14();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_284F01EF0[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_23C370B40(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_23C3A3FBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23C36BF7C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C3A4014(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_23C36C1E0();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v11 = 2 * v10;
    if (2 * v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      if (v12 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_23C36C8AC();
    }

    v14 = (8 * (&v5[-*a2] >> 3));
    v21 = v14;
    v22 = v14;
    v15 = *v3;
    v16 = strlen(*v3);
    if (v16 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23C36FA14();
    }

    v17 = v16;
    if (v16 >= 0x17)
    {
      operator new();
    }

    v14[23] = v16;
    if (v16)
    {
      memmove(v14, v15, v16);
    }

    v14[v17] = 0;
    v13 = v14 + 24;
    v18 = *(a2 + 8) - *a2;
    v19 = &v14[-v18];
    memcpy(&v21[-v18], *a2, v18);
    v20 = *a2;
    *a2 = v19;
    *(a2 + 8) = v22 + 24;
    *(a2 + 16) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v6 = *v3;
    v7 = strlen(v6);
    if (v7 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23C36FA14();
    }

    v8 = v7;
    if (v7 >= 0x17)
    {
      operator new();
    }

    v5[23] = v7;
    if (v7)
    {
      memmove(v5, v6, v7);
    }

    v5[v8] = 0;
    v13 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v13;
}

void sub_23C3A425C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23C370D5C(va);
  _Unwind_Resume(a1);
}

void sub_23C3A4278(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = a2[1];
  __p = 0;
  v29 = 0;
  v30 = 0;
  v7 = v6 - 1;
  if (v6 != 1)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23C36C1E0();
  }

  sub_23C37E91C(a1, &__p, &v31);
  if (__p)
  {
    operator delete(__p);
  }

  v8 = *(a1 + 8);
  v9 = v31;
  if (v8)
  {
    v10 = 0;
    v11 = *a2;
    do
    {
      if ((*&v9[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] >> v10))
      {
        v12 = a2[1];
        if (v12)
        {
          for (i = 0; i != v12; ++i)
          {
            v14 = ((v10 + i) >> 3) & 0x1FFFFFFFFFFFFFF8;
            v15 = 1 << (v10 + i);
            v16 = *&v9[v14];
            v17 = (v15 & v16) != 0;
            v18 = v16 & ~v15;
            v19 = v15 | v16;
            if ((((*(v11 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) >> i) ^ v17) & 1) == 0)
            {
              v19 = v18;
            }

            *&v9[v14] = v19;
          }
        }
      }

      ++v10;
    }

    while (v10 != v8);
  }

  v20 = v32;
  if (v32 >= v7)
  {
    v21 = v7;
  }

  else
  {
    v21 = v32;
  }

  v22 = v32 - v21;
  if (v22 < 0)
  {
    v24 = v22 - 63;
    if (v22 - 63 < 0)
    {
      v24 = v22;
    }

    v23 = v24 >> 6;
  }

  else
  {
    v23 = v22 >> 6;
  }

  v25 = 8 * v23;
  v26 = (v32 >> 3) & 0x1FFFFFFFFFFFFFF8;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v27 = v22 & 0x3F;
  __p = &v9[v25];
  LODWORD(v29) = v27;
  v33 = &v9[v26];
  v34 = v20 & 0x3F;
  sub_23C377DC4(a3, &__p, &v33, (v20 & 0x3F) - v27 + 8 * (v26 - v25));
  if (v31)
  {
    operator delete(v31);
  }
}

void sub_23C3A4498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23C3A44C0(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[6];
    if (v3)
    {
      v1[7] = v3;
      operator delete(v3);
    }

    v4 = v1[3];
    if (v4)
    {
      v1[4] = v4;
      operator delete(v4);
    }

    MEMORY[0x23EECF470](v1, 0x1010C40DA3B4497);
    return v2;
  }

  return result;
}

void sub_23C3A45F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  if (!a12)
  {
    JUMPOUT(0x23C3A459CLL);
  }

  JUMPOUT(0x23C3A4578);
}

void *sub_23C3A461C(void *a1)
{
  if (a1[3])
  {
    v2 = a1 + 1;
    v3 = a1[2];
    v4 = *(a1[1] + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    a1[3] = 0;
    if (v3 != a1 + 1)
    {
      do
      {
        v7 = v3[1];
        v8 = v3[6];
        if (v8)
        {
          v3[7] = v8;
          operator delete(v8);
        }

        v9 = v3[3];
        if (v9)
        {
          v3[4] = v9;
          operator delete(v9);
        }

        operator delete(v3);
        v3 = v7;
      }

      while (v7 != v2);
    }
  }

  return a1;
}

uint64_t sub_23C3A46B0(const char *a1, unsigned int a2, const char *a3, uint64_t a4, const char *a5, uint64_t a6, void (*a7)(void *))
{
  v68 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27E1F3EC0, memory_order_acquire) & 1) == 0)
  {
    v37 = a2;
    v38 = __cxa_guard_acquire(&qword_27E1F3EC0);
    a2 = v37;
    if (v38)
    {
      __cxa_atexit(sub_23C3A4FF8, &qword_27E1F3ED8, &dword_23C368000);
      __cxa_guard_release(&qword_27E1F3EC0);
      a2 = v37;
    }
  }

  if ((byte_27E1F3F00 & 1) == 0)
  {
    v39 = a2;
    v12 = &unk_23C3D4000;
    if (!a4)
    {
      v47 = 0;
      LOBYTE(v46[0]) = 0;
      if (a6)
      {
LABEL_10:
        v54 = a6;
        v55 = 13;
        v52 = 13;
        v53 = a5;
        v62 = v66;
        v63 = xmmword_23C3D4F60;
        v64 = sub_23C3A5034;
        v65 = 0;
        __p = v66;
        v50 = 1;
        v51 = &v53;
        sub_23C3A50D8(&v62, " : {}", 5, &v50);
        v15 = *(&v63 + 1);
        if (*(&v63 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
        {
          sub_23C36FA14();
        }

        if (*(&v63 + 1) >= 0x17uLL)
        {
          operator new();
        }

        v45 = BYTE8(v63);
        if (*(&v63 + 1))
        {
          memmove(v44, __p, *(&v63 + 1));
          *(v44 + v15) = 0;
          v16 = __p;
          if (__p == v66)
          {
            goto LABEL_15;
          }
        }

        else
        {
          LOBYTE(v44[0]) = 0;
          v16 = __p;
          if (__p == v66)
          {
LABEL_15:
            LODWORD(v17) = v45;
            v12 = &unk_23C3D4000;
            goto LABEL_18;
          }
        }

        operator delete(v16);
        goto LABEL_15;
      }

LABEL_17:
      LODWORD(v17) = 0;
      v45 = 0;
      LOBYTE(v44[0]) = 0;
LABEL_18:
      v53 = a1;
      v55 = v39;
      v56 = 0;
      v18 = v47;
      if ((v47 & 0x80u) != 0)
      {
        v18 = v46[1];
      }

      v19 = v46;
      if ((v47 & 0x80u) != 0)
      {
        v19 = v46[0];
      }

      v57 = v19;
      v58 = v18;
      v20 = v44[0];
      v21 = (v17 & 0x80u) != 0;
      v17 = v17;
      if ((v17 & 0x80u) != 0)
      {
        v17 = v44[1];
      }

      if (!v21)
      {
        v20 = v44;
      }

      v60 = v17;
      v61 = 439404;
      v59 = v20;
      v62 = v66;
      v40 = v12[246];
      v63 = v40;
      v64 = sub_23C3A5034;
      v65 = 0;
      __p = v66;
      v50 = 4;
      v51 = &v53;
      v52 = 439404;
      sub_23C3A50D8(&v62, "{}:{}{}{}\n", 10, &v50);
      v22 = *(&v63 + 1);
      if (*(&v63 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
      {
        sub_23C36FA14();
      }

      if (*(&v63 + 1) >= 0x17uLL)
      {
        operator new();
      }

      v49 = BYTE8(v63);
      if (*(&v63 + 1))
      {
        memmove(__dst, __p, *(&v63 + 1));
        *(__dst + v22) = 0;
        v23 = __p;
        if (__p == v66)
        {
LABEL_31:
          v24 = "Assert";
          v25 = v49;
          if (!a4)
          {
            v24 = "Abort";
          }

          if ((v49 & 0x80u) != 0)
          {
            v25 = __dst[1];
          }

          v56 = v25;
          v57 = 428;
          v26 = __dst;
          if ((v49 & 0x80u) != 0)
          {
            v26 = __dst[0];
          }

          v52 = 428;
          v53 = v24;
          v55 = v26;
          v62 = v66;
          v63 = v40;
          v64 = sub_23C3A5034;
          v65 = 0;
          __p = v66;
          v50 = 2;
          v51 = &v53;
          sub_23C3A50D8(&v62, "{}: {}", 6, &v50);
          v27 = *(&v63 + 1);
          if (*(&v63 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
          {
            sub_23C36FA14();
          }

          if (*(&v63 + 1) >= 0x17uLL)
          {
            operator new();
          }

          v43 = BYTE8(v63);
          if (*(&v63 + 1))
          {
            memmove(&v42, __p, *(&v63 + 1));
            *(&v42 + v27) = 0;
            v28 = __p;
            if (__p == v66)
            {
LABEL_42:
              if (v49 < 0)
              {
                operator delete(__dst[0]);
                if ((v45 & 0x80000000) == 0)
                {
LABEL_44:
                  if ((v47 & 0x80000000) == 0)
                  {
                    goto LABEL_45;
                  }

LABEL_67:
                  operator delete(v46[0]);
LABEL_45:
                  if (v43 >= 0)
                  {
                    v29 = &v42;
                  }

                  else
                  {
                    v29 = v42;
                  }

                  a7(v29);
                  if (v43 < 0)
                  {
                    operator delete(v42);
                  }

                  goto LABEL_50;
                }
              }

              else if ((v45 & 0x80000000) == 0)
              {
                goto LABEL_44;
              }

              operator delete(v44[0]);
              if ((v47 & 0x80000000) == 0)
              {
                goto LABEL_45;
              }

              goto LABEL_67;
            }
          }

          else
          {
            LOBYTE(v42) = 0;
            v28 = __p;
            if (__p == v66)
            {
              goto LABEL_42;
            }
          }

          operator delete(v28);
          goto LABEL_42;
        }
      }

      else
      {
        LOBYTE(__dst[0]) = 0;
        v23 = __p;
        if (__p == v66)
        {
          goto LABEL_31;
        }
      }

      operator delete(v23);
      goto LABEL_31;
    }

    v54 = a4;
    v55 = 13;
    v52 = 13;
    v53 = a3;
    v62 = v66;
    v63 = xmmword_23C3D4F60;
    v64 = sub_23C3A5034;
    v65 = 0;
    __p = v66;
    v50 = 1;
    v51 = &v53;
    sub_23C3A50D8(&v62, " : {}", 5, &v50);
    v13 = *(&v63 + 1);
    if (*(&v63 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
      sub_23C36FA14();
    }

    if (*(&v63 + 1) >= 0x17uLL)
    {
      operator new();
    }

    v47 = BYTE8(v63);
    if (*(&v63 + 1))
    {
      memmove(v46, __p, *(&v63 + 1));
      *(v46 + v13) = 0;
      v14 = __p;
      if (__p == v66)
      {
LABEL_9:
        v12 = &unk_23C3D4000;
        if (a6)
        {
          goto LABEL_10;
        }

        goto LABEL_17;
      }
    }

    else
    {
      LOBYTE(v46[0]) = 0;
      v14 = __p;
      if (__p == v66)
      {
        goto LABEL_9;
      }
    }

    operator delete(v14);
    goto LABEL_9;
  }

LABEL_50:
  if ((atomic_load_explicit(&qword_27E1F3EC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F3EC0))
  {
    __cxa_atexit(sub_23C3A4FF8, &qword_27E1F3ED8, &dword_23C368000);
    __cxa_guard_release(&qword_27E1F3EC0);
  }

  if (byte_27E1F3F00 != 1 || byte_27E1F3F08 == 1)
  {
    v30 = qword_27E1F3ED8;
    v31 = unk_27E1F3EE0;
    while (v30 != v31)
    {
      v33 = *v30;
      v32 = *(v30 + 8);
      v30 += 16;
      v33(v32, a3, a4, a5, a6);
    }
  }

  if ((atomic_load_explicit(&qword_27E1F3EC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F3EC0))
  {
    __cxa_atexit(sub_23C3A4FF8, &qword_27E1F3ED8, &dword_23C368000);
    __cxa_guard_release(&qword_27E1F3EC0);
  }

  v34 = byte_27E1F3F00;
  if (byte_27E1F3F00 == 1)
  {
    qword_27E1F3EF0(*algn_27E1F3EF8, a3, a4, a5, a6);
  }

  v35 = *MEMORY[0x277D85DE8];
  return v34 ^ 1u;
}

void sub_23C3A4E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (STACK[0x220] != v25)
  {
    operator delete(STACK[0x220]);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_23C3A4EB4(const char *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = sub_23C3B1CE0();
  v3 = strlen(a1);
  sub_23C3B1D5C(v2 + 1, a1, v3);
  if (*(v2 + 31) >= 0)
  {
    v4 = (v2 + 1);
  }

  else
  {
    v4 = v2[1];
  }

  qword_27E1F3D10 = v4;
  if ((atomic_load_explicit(&qword_27E1F3ED0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F3ED0))
  {
    qword_27E1F3EC8 = os_log_create("cv3d", &unk_23C3DB41A);
    __cxa_guard_release(&qword_27E1F3ED0);
  }

  v5 = qword_27E1F3EC8;
  if (os_log_type_enabled(qword_27E1F3EC8, OS_LOG_TYPE_FAULT))
  {
    v8 = 136315138;
    v9 = a1;
    _os_log_impl(&dword_23C368000, v5, OS_LOG_TYPE_FAULT, "%s", &v8, 0xCu);
  }

  result = fputs(a1, *MEMORY[0x277D85DF8]);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C3A4FF8(uint64_t result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 8) = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t sub_23C3A5034(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  v3 = v2 * 1.6;
  if (v2 + a2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2 + a2;
  }

  if (v4 >= 0x100)
  {
    operator new();
  }

  return result;
}

void sub_23C3A50D8(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t *a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = *a4;
  v5 = &a2[a3];
  v31[0] = a2;
  v31[1] = &a2[a3];
  v32 = 0;
  v33 = 0;
  v34 = v4;
  v27 = *a4;
  v28 = a4[2];
  LOBYTE(v24.__locale_) = 0;
  v25 = 0;
  v26 = a1;
  LOBYTE(v29.__locale_) = 0;
  v30 = 0;
  if (a3)
  {
    v6 = a2;
    v7 = a1;
    v8 = "The format string terminates at a '{'";
    do
    {
      while (1)
      {
        v9 = *v6;
        if (v9 != 125)
        {
          break;
        }

        if (++v6 == v5 || *v6 != 125)
        {
          v8 = "The format string contains an invalid escape sequence";
          goto LABEL_33;
        }

LABEL_17:
        v16 = v7[4];
        if (!v16 || (v18 = *v16, v17 = v16[1], v16[1] = v17 + 1, v17 < v18))
        {
          v19 = *v7;
          v20 = v7[2];
          v7[2] = v20 + 1;
          *(v19 + v20) = v9;
          if (v7[2] == v7[1])
          {
            (v7[3])(v7, 2);
          }
        }

        if (++v6 == v5)
        {
          goto LABEL_26;
        }
      }

      if (v9 != 123)
      {
        goto LABEL_17;
      }

      if (++v6 == v5)
      {
        goto LABEL_33;
      }

      if (*v6 == 123)
      {
        goto LABEL_17;
      }

      v26 = v7;
      v10 = sub_23C3A5478(v6, v5, v31);
      if (v5 == v10)
      {
        goto LABEL_32;
      }

      v12 = *v10;
      v36 = v12 == 58;
      if (v12 != 125)
      {
        if (v12 != 58)
        {
LABEL_32:
          v8 = "The argument index should end with a ':' or a '}'";
LABEL_33:
          sub_23C3A53AC(v8);
        }

        ++v10;
      }

      v31[0] = v10;
      v35[0] = v31;
      v35[1] = &v26;
      v35[2] = &v36;
      if (v27 <= v11)
      {
        LOBYTE(v38) = 0;
      }

      else if (v27 > 0xC)
      {
        v21 = (*(&v27 + 1) + 32 * v11);
        v22 = v21[1];
        v37 = *v21;
        v38 = v22;
      }

      else
      {
        v13 = (*(&v27 + 1) + 16 * v11);
        v15 = *v13;
        v14 = v13[1];
        *&v37 = v15;
        *(&v37 + 1) = v14;
        LOBYTE(v38) = (v28 >> (5 * v11)) & 0x1F;
      }

      sub_23C3A5644(v35, &v37);
      if (v31[0] == v5 || *v31[0] != 125)
      {
        v8 = "The replacement field misses a terminating '}'";
        goto LABEL_33;
      }

      v6 = (v31[0] + 1);
      v7 = v26;
    }

    while ((v31[0] + 1) != v5);
  }

LABEL_26:
  if (v30 == 1)
  {
    std::locale::~locale(&v29);
    if (v25)
    {
      std::locale::~locale(&v24);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_23C3A5374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a17 == 1)
  {
    std::locale::~locale(v17 + 4);
    if (a11)
    {
      std::locale::~locale(&a10);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_23C3A53AC(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_23C3A5408(exception, a1);
  __cxa_throw(exception, &unk_284F01F80, std::runtime_error::~runtime_error);
}

std::runtime_error *sub_23C3A5408(std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_284F01FA8;
  return result;
}

void sub_23C3A5440(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x23EECF470);
}

unsigned __int8 *sub_23C3A5478(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *result;
  if (v3 == 125 || (v4 = v3 - 58, v3 == 58))
  {
    v7 = *(a3 + 16);
    if (v7)
    {
      if (v7 == 1)
      {
        sub_23C3A53AC("Using automatic argument numbering in manual argument numbering mode");
      }

      ++*(a3 + 24);
    }

    else
    {
      *(a3 + 16) = 2;
      ++*(a3 + 24);
    }
  }

  else
  {
    v5 = v3 - 48;
    if (!v5)
    {
      v6 = *(a3 + 16);
      if (!v6)
      {
        *(a3 + 16) = 1;
        return ++result;
      }

      if (v6 != 2)
      {
        return ++result;
      }

      goto LABEL_37;
    }

    if (v4 <= 0xFFFFFFF5)
    {
      sub_23C3A53AC("The argument index starts with an invalid character");
    }

    if (a2 - result <= 9)
    {
      v8 = a2;
    }

    else
    {
      v8 = result + 9;
    }

    v9 = result + 1;
    if (result + 1 == v8)
    {
      v8 = result + 1;
      if (v9 == a2)
      {
        goto LABEL_27;
      }

LABEL_19:
      v11 = *v8;
      if ((v11 - 48) > 9)
      {
        result = v8;
        v12 = *(a3 + 16);
        if (!v12)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if ((v11 + 10 * v5 - 48) >> 31 || (result += 2, result != a2) && *result - 48 <= 9)
        {
          sub_23C3A53AC("The numeric value of the format specifier is too large");
        }

LABEL_30:
        v12 = *(a3 + 16);
        if (!v12)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      result = v8 - 1;
      do
      {
        v10 = *v9;
        if ((v10 - 58) < 0xFFFFFFF6)
        {
          result = v9;
          goto LABEL_30;
        }

        v5 = v10 + 10 * v5 - 48;
        ++v9;
      }

      while (v9 != v8);
      if (v8 != a2)
      {
        goto LABEL_19;
      }

LABEL_27:
      result = a2;
      v12 = *(a3 + 16);
      if (!v12)
      {
LABEL_34:
        *(a3 + 16) = 1;
        return result;
      }
    }

    if (v12 == 2)
    {
LABEL_37:
      sub_23C3A53AC("Using manual argument numbering in automatic argument numbering mode");
    }
  }

  return result;
}

void sub_23C3A5644(uint64_t a1, unsigned __int8 *a2)
{
  *&v585[1023] = *MEMORY[0x277D85DE8];
  switch(a2[16])
  {
    case 1u:
      v3 = *a2;
      v580[0].__locale_ = 0;
      LODWORD(v580[1].__locale_) = -1;
      BYTE4(v580[1].__locale_) = 32;
      *(&v580[1].__locale_ + 5) = 0;
      HIBYTE(v580[1].__locale_) = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_319;
      }

      v4 = *a1;
      v5 = sub_23C3A9618(v580, *a1, 55);
      if (BYTE1(v580[0].__locale_) - 2 < 6)
      {
        *v4 = v5;
        v6 = *(a1 + 8);
        v7 = sub_23C3AA640(v580, v6);
        v9 = v8;
        v10 = v3;
        goto LABEL_58;
      }

      if (BYTE1(v580[0].__locale_) > 1u)
      {
        sub_23C3A9EF8();
      }

      if ((v580[0].__locale_ & 0x18) != 0)
      {
        sub_23C3AA19C();
      }

      if ((v580[0].__locale_ & 0x20) != 0)
      {
        sub_23C3AA19C();
      }

      if ((v580[0].__locale_ & 7) == 4)
      {
        sub_23C3AA19C();
      }

      if (LODWORD(v580[1].__locale_) != -1)
      {
        sub_23C3AA19C();
      }

      if ((v580[0].__locale_ & 7) == 0)
      {
        LOBYTE(v580[0].__locale_) |= 1u;
      }

      *v4 = v5;
LABEL_319:
      v6 = *(a1 + 8);
      v176 = sub_23C3AA640(v580, v6);
      v178 = v177;
      if ((v176 & 0x40) == 0)
      {
        v179 = v3 == 0;
        if (v3)
        {
          v180 = 4;
        }

        else
        {
          v180 = 5;
        }

        v30 = *v6;
        if (v179)
        {
          v181 = "false";
        }

        else
        {
          v181 = "true";
        }

        sub_23C3AAB0C(v181, v180, *v6, v176, v178, v180);
        goto LABEL_573;
      }

      if ((*(v6 + 40) & 1) == 0)
      {
        MEMORY[0x23EECF2D0](&v583);
        v182 = (v6 + 32);
        if (*(v6 + 40) == 1)
        {
          std::locale::operator=(v182, &v583);
        }

        else
        {
          std::locale::locale(v182, &v583);
          *(v6 + 40) = 1;
        }

        std::locale::~locale(&v583);
      }

      std::locale::locale(v577, (v6 + 32));
      v224 = std::locale::use_facet(v577, MEMORY[0x277D826C0]);
      std::locale::~locale(v577);
      v225 = v224->__vftable;
      if (v3)
      {
        (v225[2].~facet)(&v583, v224);
      }

      else
      {
        (v225[2].~facet_0)(&v583, v224);
      }

      if ((v583.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v226 = &v583;
      }

      else
      {
        v226 = v583.__r_.__value_.__r.__words[0];
      }

      if ((v583.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v583.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v583.__r_.__value_.__l.__size_;
      }

      v30 = *v6;
      sub_23C3AA940(v226, size, *v6, v176, v178);
      goto LABEL_571;
    case 2u:
      v43 = *a2;
      v580[0].__locale_ = 0;
      LODWORD(v580[1].__locale_) = -1;
      BYTE4(v580[1].__locale_) = 32;
      *(&v580[1].__locale_ + 5) = 0;
      HIBYTE(v580[1].__locale_) = 0;
      if (**(a1 + 16))
      {
        v44 = *a1;
        v45 = sub_23C3A9618(v580, *a1, 55);
        v46 = BYTE1(v580[0].__locale_);
        if (BYTE1(v580[0].__locale_) - 2 >= 6)
        {
          if (BYTE1(v580[0].__locale_) > 0x13u || ((1 << SBYTE1(v580[0].__locale_)) & 0x80401) == 0)
          {
            sub_23C3A9EF8();
          }

          if ((v580[0].__locale_ & 0x18) != 0)
          {
            sub_23C3AA19C();
          }

          if ((v580[0].__locale_ & 0x20) != 0)
          {
            sub_23C3AA19C();
          }

          if ((v580[0].__locale_ & 7) == 4)
          {
            sub_23C3AA19C();
          }

          if (LODWORD(v580[1].__locale_) != -1)
          {
            sub_23C3AA19C();
          }

          if ((v580[0].__locale_ & 7) == 0)
          {
            LOBYTE(v580[0].__locale_) |= 1u;
          }
        }

        *v44 = v45;
        v6 = *(a1 + 8);
        if (v46)
        {
          if (v46 != 19)
          {
            if (v46 != 10)
            {
              v7 = sub_23C3AA640(v580, v6);
              v9 = v47;
              v10 = v43;
LABEL_58:
              v48 = v6;
              goto LABEL_135;
            }

            goto LABEL_122;
          }

          v30 = *v6;
          v183 = sub_23C3AA640(v580, v6);
          v185 = v184;
          LOBYTE(v577[0].__locale_) = v43;
          v583.__r_.__value_.__r.__words[2] = 0x100000000000000;
          *&v583.__r_.__value_.__l.__data_ = 0x27uLL;
          sub_23C3AD708(&v583, v577, 1, 0);
          if (SHIBYTE(v583.__r_.__value_.__r.__words[2]) < 0)
          {
            v243 = (v583.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if (v583.__r_.__value_.__l.__size_ == v243)
            {
              if ((v583.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
              {
                sub_23C36FA14();
              }

LABEL_505:
              operator new();
            }

            v270 = v583.__r_.__value_.__l.__size_;
            v271 = v583.__r_.__value_.__r.__words[0];
            ++v583.__r_.__value_.__l.__size_;
          }

          else
          {
            if (HIBYTE(v583.__r_.__value_.__r.__words[2]) == 22)
            {
              goto LABEL_505;
            }

            v270 = HIBYTE(v583.__r_.__value_.__r.__words[2]);
            *(&v583.__r_.__value_.__s + 23) = (*(&v583.__r_.__value_.__s + 23) + 1) & 0x7F;
            v271 = &v583;
          }

          *(&v271->__r_.__value_.__l.__data_ + v270) = 39;
          if ((v583.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v272 = &v583 + HIBYTE(v583.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v272 = (v583.__r_.__value_.__r.__words[0] + v583.__r_.__value_.__l.__size_);
          }

          if ((v583.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v273 = &v583;
          }

          else
          {
            v273 = v583.__r_.__value_.__r.__words[0];
          }

          if ((v583.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v274 = HIBYTE(v583.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v274 = v583.__r_.__value_.__l.__size_;
          }

          sub_23C3AAB0C(v273, v272 - v273, v30, v183, v185, v274);
LABEL_571:
          if (SHIBYTE(v583.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v583.__r_.__value_.__l.__data_);
          }

          goto LABEL_573;
        }
      }

      else
      {
        v6 = *(a1 + 8);
      }

LABEL_122:
      v30 = *v6;
      v86 = sub_23C3AA640(v580, v6);
      v583.__r_.__value_.__s.__data_[0] = v43;
      sub_23C3AAB0C(&v583, 1uLL, v30, v86, v87, 1);
      goto LABEL_573;
    case 3u:
      LODWORD(v23) = *a2;
      v583.__r_.__value_.__r.__words[0] = 0;
      v583.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_66;
      }

      v49 = *a1;
      v50 = sub_23C3A9618(&v583, *a1, 55);
      if (v583.__r_.__value_.__s.__data_[1] - 2 < 6 || v583.__r_.__value_.__s.__data_[1] == 0)
      {
        goto LABEL_65;
      }

      if (v583.__r_.__value_.__s.__data_[1] != 10)
      {
        goto LABEL_1208;
      }

      if ((v583.__r_.__value_.__s.__data_[0] & 0x18) != 0)
      {
        goto LABEL_1209;
      }

      if ((v583.__r_.__value_.__s.__data_[0] & 0x20) != 0)
      {
        goto LABEL_1210;
      }

      if ((v583.__r_.__value_.__s.__data_[0] & 7) == 4)
      {
        goto LABEL_1211;
      }

      if (LODWORD(v583.__r_.__value_.__r.__words[1]) != -1)
      {
        goto LABEL_1212;
      }

      if ((v583.__r_.__value_.__s.__data_[0] & 7) == 0)
      {
        v583.__r_.__value_.__s.__data_[0] |= 1u;
      }

LABEL_65:
      *v49 = v50;
LABEL_66:
      v6 = *(a1 + 8);
      v27 = sub_23C3AA640(&v583, v6);
      v29 = v52;
      if ((v27 & 0xFF00) != 0xA00)
      {
        if (v23 >= 0)
        {
          v10 = v23;
        }

        else
        {
          v10 = -v23;
        }

        v96 = v23 >> 31;
        v48 = v6;
        v7 = v27;
        v9 = v29;
        goto LABEL_136;
      }

      if (v23 == v23)
      {
        goto LABEL_28;
      }

      goto LABEL_1205;
    case 4u:
      v23 = *a2;
      v583.__r_.__value_.__r.__words[0] = 0;
      v583.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_26;
      }

      v24 = *a1;
      v25 = sub_23C3A9618(&v583, *a1, 55);
      if (v583.__r_.__value_.__s.__data_[1] - 2 < 6 || v583.__r_.__value_.__s.__data_[1] == 0)
      {
        goto LABEL_25;
      }

      if (v583.__r_.__value_.__s.__data_[1] != 10)
      {
        goto LABEL_1208;
      }

      if ((v583.__r_.__value_.__s.__data_[0] & 0x18) != 0)
      {
        goto LABEL_1209;
      }

      if ((v583.__r_.__value_.__s.__data_[0] & 0x20) != 0)
      {
        goto LABEL_1210;
      }

      if ((v583.__r_.__value_.__s.__data_[0] & 7) == 4)
      {
        goto LABEL_1211;
      }

      if (LODWORD(v583.__r_.__value_.__r.__words[1]) != -1)
      {
        goto LABEL_1212;
      }

      if ((v583.__r_.__value_.__s.__data_[0] & 7) == 0)
      {
        v583.__r_.__value_.__s.__data_[0] |= 1u;
      }

LABEL_25:
      *v24 = v25;
LABEL_26:
      v6 = *(a1 + 8);
      v27 = sub_23C3AA640(&v583, v6);
      v29 = v28;
      if ((v27 & 0xFF00) == 0xA00)
      {
        if (v23 == v23)
        {
LABEL_28:
          v30 = *v6;
          LOBYTE(v580[0].__locale_) = v23;
          sub_23C3AAB0C(v580, 1uLL, v30, v27, v29, 1);
LABEL_573:
          *v6 = v30;
          goto LABEL_1111;
        }

        goto LABEL_1205;
      }

      if (v23 >= 0)
      {
        v88 = v23;
      }

      else
      {
        v88 = -v23;
      }

      v42 = v23 >> 63;
      v89 = v6;
      v90 = v27;
      v91 = v29;
      goto LABEL_140;
    case 5u:
      v57 = *a2;
      v58 = *(a2 + 1);
      v583.__r_.__value_.__r.__words[0] = 0;
      v583.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_82;
      }

      v59 = *a1;
      v60 = sub_23C3A9618(&v583, *a1, 55);
      if (v583.__r_.__value_.__s.__data_[1] - 2 < 6 || !v583.__r_.__value_.__s.__data_[1])
      {
        goto LABEL_81;
      }

      if (v583.__r_.__value_.__s.__data_[1] != 10)
      {
        goto LABEL_1208;
      }

      if ((v583.__r_.__value_.__s.__data_[0] & 0x18) != 0)
      {
        goto LABEL_1209;
      }

      if ((v583.__r_.__value_.__s.__data_[0] & 0x20) != 0)
      {
        goto LABEL_1210;
      }

      if ((v583.__r_.__value_.__s.__data_[0] & 7) == 4)
      {
        goto LABEL_1211;
      }

      if (LODWORD(v583.__r_.__value_.__r.__words[1]) != -1)
      {
        goto LABEL_1212;
      }

      if ((v583.__r_.__value_.__s.__data_[0] & 7) == 0)
      {
        v583.__r_.__value_.__s.__data_[0] |= 1u;
      }

LABEL_81:
      *v59 = v60;
LABEL_82:
      v6 = *(a1 + 8);
      v40 = sub_23C3AA640(&v583, v6);
      v42 = v61;
      if ((v40 & 0xFF00) == 0xA00)
      {
        if (__PAIR128__(-1, -257) < __PAIR128__((v57 >= 0x80) + v58 - 1, v57 - 128))
        {
          v30 = *v6;
          LOBYTE(v580[0].__locale_) = v57;
          sub_23C3AAB0C(v580, 1uLL, v30, v40, v61, 1);
          goto LABEL_573;
        }

LABEL_1205:
        sub_23C3A53AC("Integral value outside the range of the char type");
      }

      v93 = (__PAIR128__(v58 ^ (v58 >> 63), v57 ^ (v58 >> 63)) - __PAIR128__(v58 >> 63, v58 >> 63)) >> 64;
      v92 = (v57 ^ (v58 >> 63)) - (v58 >> 63);
      v95 = v58 >> 63;
      v94 = v6;
      goto LABEL_138;
    case 6u:
      LODWORD(v36) = *a2;
      v583.__r_.__value_.__r.__words[0] = 0;
      v583.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_76;
      }

      v53 = *a1;
      v54 = sub_23C3A9618(&v583, *a1, 55);
      if (v583.__r_.__value_.__s.__data_[1] - 2 < 6 || v583.__r_.__value_.__s.__data_[1] == 0)
      {
        goto LABEL_75;
      }

      if (v583.__r_.__value_.__s.__data_[1] != 10)
      {
        goto LABEL_1208;
      }

      if ((v583.__r_.__value_.__s.__data_[0] & 0x18) != 0)
      {
        goto LABEL_1209;
      }

      if ((v583.__r_.__value_.__s.__data_[0] & 0x20) != 0)
      {
        goto LABEL_1210;
      }

      if ((v583.__r_.__value_.__s.__data_[0] & 7) == 4)
      {
        goto LABEL_1211;
      }

      if (LODWORD(v583.__r_.__value_.__r.__words[1]) != -1)
      {
        goto LABEL_1212;
      }

      if ((v583.__r_.__value_.__s.__data_[0] & 7) == 0)
      {
        v583.__r_.__value_.__s.__data_[0] |= 1u;
      }

LABEL_75:
      *v53 = v54;
LABEL_76:
      v6 = *(a1 + 8);
      v40 = sub_23C3AA640(&v583, v6);
      v42 = v56;
      if ((v40 & 0xFF00) != 0xA00)
      {
        v10 = v36;
        v48 = v6;
        v7 = v40;
        v9 = v42;
LABEL_135:
        LOBYTE(v96) = 0;
LABEL_136:
        *v6 = sub_23C3AA7EC(v10, v48, v7, v9, v96);
        goto LABEL_1111;
      }

      if (v36 < 0x80)
      {
        goto LABEL_103;
      }

      goto LABEL_1205;
    case 7u:
      v36 = *a2;
      v583.__r_.__value_.__r.__words[0] = 0;
      v583.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_101;
      }

      v67 = *a1;
      v68 = sub_23C3A9618(&v583, *a1, 55);
      if (v583.__r_.__value_.__s.__data_[1] - 2 < 6 || v583.__r_.__value_.__s.__data_[1] == 0)
      {
        goto LABEL_100;
      }

      if (v583.__r_.__value_.__s.__data_[1] != 10)
      {
        goto LABEL_1208;
      }

      if ((v583.__r_.__value_.__s.__data_[0] & 0x18) != 0)
      {
        goto LABEL_1209;
      }

      if ((v583.__r_.__value_.__s.__data_[0] & 0x20) != 0)
      {
        goto LABEL_1210;
      }

      if ((v583.__r_.__value_.__s.__data_[0] & 7) == 4)
      {
        goto LABEL_1211;
      }

      if (LODWORD(v583.__r_.__value_.__r.__words[1]) != -1)
      {
        goto LABEL_1212;
      }

      if ((v583.__r_.__value_.__s.__data_[0] & 7) == 0)
      {
        v583.__r_.__value_.__s.__data_[0] |= 1u;
      }

LABEL_100:
      *v67 = v68;
LABEL_101:
      v6 = *(a1 + 8);
      v40 = sub_23C3AA640(&v583, v6);
      v42 = v70;
      if ((v40 & 0xFF00) != 0xA00)
      {
        v88 = v36;
        v89 = v6;
        v90 = v40;
        v91 = v42;
        LOBYTE(v42) = 0;
LABEL_140:
        *v6 = sub_23C3AE27C(v88, v89, v90, v91, v42);
        goto LABEL_1111;
      }

      if (v36 >= 0x80)
      {
        goto LABEL_1205;
      }

      goto LABEL_103;
    case 8u:
      v36 = *a2;
      v37 = *(a2 + 1);
      v583.__r_.__value_.__r.__words[0] = 0;
      v583.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_41;
      }

      v38 = *a1;
      v39 = sub_23C3A9618(&v583, *a1, 55);
      if (v583.__r_.__value_.__s.__data_[1] - 2 < 6 || !v583.__r_.__value_.__s.__data_[1])
      {
        goto LABEL_40;
      }

      if (v583.__r_.__value_.__s.__data_[1] != 10)
      {
LABEL_1208:
        sub_23C3A9EF8();
      }

      if ((v583.__r_.__value_.__s.__data_[0] & 0x18) != 0)
      {
LABEL_1209:
        sub_23C3AA19C();
      }

      if ((v583.__r_.__value_.__s.__data_[0] & 0x20) != 0)
      {
LABEL_1210:
        sub_23C3AA19C();
      }

      if ((v583.__r_.__value_.__s.__data_[0] & 7) == 4)
      {
LABEL_1211:
        sub_23C3AA19C();
      }

      if (LODWORD(v583.__r_.__value_.__r.__words[1]) != -1)
      {
LABEL_1212:
        sub_23C3AA19C();
      }

      if ((v583.__r_.__value_.__s.__data_[0] & 7) == 0)
      {
        v583.__r_.__value_.__s.__data_[0] |= 1u;
      }

LABEL_40:
      *v38 = v39;
LABEL_41:
      v6 = *(a1 + 8);
      v40 = sub_23C3AA640(&v583, v6);
      v42 = v41;
      if ((v40 & 0xFF00) != 0xA00)
      {
        v92 = v36;
        v93 = v37;
        v94 = v6;
        LOBYTE(v95) = 0;
LABEL_138:
        *v6 = sub_23C3AEF28(v92, v93, v94, v40, v42, v95);
        goto LABEL_1111;
      }

      if (__PAIR128__(v37, v36) >= 0x80)
      {
        goto LABEL_1205;
      }

LABEL_103:
      v71 = *v6;
      LOBYTE(v580[0].__locale_) = v36;
      sub_23C3AAB0C(v580, 1uLL, v71, v40, v42, 1);
      *v6 = v71;
      goto LABEL_1111;
    case 9u:
      v31 = *a2;
      v570.__locale_ = 0;
      v571 = -1;
      v572 = 32;
      v573 = 0;
      v574 = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_144;
      }

      v32 = *a1;
      v33 = sub_23C3A9618(&v570, *a1, 63);
      if (BYTE1(v570.__locale_) - 13 < 6)
      {
        v34 = v571 != -1 || SWORD1(v570.__locale_) <= -1;
        if (v34)
        {
          v35 = v571;
        }

        else
        {
          v35 = 6;
        }

        v571 = v35;
        goto LABEL_143;
      }

      if (BYTE1(v570.__locale_) > 0xCu || ((1 << SBYTE1(v570.__locale_)) & 0x1801) == 0)
      {
        goto LABEL_1218;
      }

LABEL_143:
      *v32 = v33;
LABEL_144:
      v97 = *(a1 + 8);
      v100 = sub_23C3AA640(&v570, v97);
      v101 = v98;
      if ((LODWORD(v31) & 0x7FFFFFFFu) >= 0x7F800000)
      {
        *v97 = sub_23C3B01E0(*v97, v100, v98, v31 < 0.0, 0);
        goto LABEL_1111;
      }

      if (v98 == -1)
      {
        v102 = 149;
      }

      else
      {
        v102 = v98;
      }

      v583.__r_.__value_.__r.__words[0] = v102;
      if (v102 < 150)
      {
        v103 = v102 + 45;
        v583.__r_.__value_.__l.__size_ = v103;
        if ((v102 + 45) >= 0x101)
        {
          operator new();
        }
      }

      else
      {
        LODWORD(v583.__r_.__value_.__l.__data_) = 149;
        HIDWORD(v583.__r_.__value_.__r.__words[0]) = v102 - 149;
        v103 = 194;
        v583.__r_.__value_.__l.__size_ = 194;
        v102 = 149;
      }

      v104 = v100;
      v566 = v100;
      v105 = BYTE1(v100);
      v583.__r_.__value_.__r.__words[2] = &v584;
      if ((LODWORD(v31) & 0x80000000) != 0)
      {
        v107 = 45;
      }

      else
      {
        v106 = (v104 >> 3) & 3;
        if (v106 == 2)
        {
          v107 = 43;
        }

        else
        {
          v568 = &v584;
          if (v106 != 3)
          {
            goto LABEL_159;
          }

          v107 = 32;
        }
      }

      v584 = v107;
      v568 = v585;
LABEL_159:
      v108 = fabsf(v31);
      if (v105 > 14)
      {
        if ((v105 - 15) >= 2)
        {
          if (v105 != 17)
          {
            HIDWORD(v583.__r_.__value_.__r.__words[0]) = 0;
            v110 = MEMORY[0x23EECF3D0](v568, &v585[v103 - 1], 3, v102, v108);
            v187 = (v568 + 1);
            if ((v568 + 1) == v110)
            {
              v579.__locale_ = v110;
              p_src = &__src;
              v192 = v110;
            }

            else
            {
              v188 = v110 - v187;
              if (v110 - v187 < 4)
              {
LABEL_358:
                __src = v110;
                v191 = memchr(v187, 46, v188);
                if (v191)
                {
                  v192 = v191;
                }

                else
                {
                  v192 = v110;
                }
              }

              else
              {
                v189 = 6;
                if (v188 < 6)
                {
                  v189 = v110 - v187;
                }

                v190 = -v189;
                while (*(v110 + v190) != 101)
                {
                  if (++v190 == -3)
                  {
                    goto LABEL_358;
                  }
                }

                __src = v110 + v190;
                if (*v187 == 46)
                {
                  v192 = (v568 + 1);
                }

                else
                {
                  v192 = v110;
                }
              }

              p_src = &v579;
            }

            p_src->__locale_ = v192;
            v194 = __src;
            if (__src == v110)
            {
              goto LABEL_580;
            }

LABEL_579:
            *v194 = 69;
            goto LABEL_580;
          }

          HIDWORD(v583.__r_.__value_.__r.__words[0]) = 0;
          v110 = MEMORY[0x23EECF3D0](v568, &v585[v103 - 1], 3, v102, v108);
          v117 = (v568 + 1);
          if ((v568 + 1) != v110)
          {
            v118 = v110 - v117;
            if (v110 - v117 >= 4)
            {
              v119 = 6;
              if (v118 < 6)
              {
                v119 = v110 - v117;
              }

              v120 = -v119;
              while (*(v110 + v120) != 101)
              {
                if (++v120 == -3)
                {
                  goto LABEL_194;
                }
              }

              goto LABEL_550;
            }

LABEL_194:
            __src = v110;
            v122 = memchr(v117, 46, v118);
            if (v122)
            {
              v123 = v122;
            }

            else
            {
              v123 = v110;
            }

LABEL_553:
            v579.__locale_ = v123;
            goto LABEL_580;
          }

LABEL_429:
          v579.__locale_ = v110;
          __src = v110;
          goto LABEL_580;
        }

        v113 = &v585[v103 - 1];
        v114 = v102;
        v115 = MEMORY[0x23EECF3D0](v568, v113, 2, v108);
        v110 = v115;
        if (v114)
        {
          v116 = v114 + 1;
        }

        else
        {
          v116 = 0;
        }

        v579.__locale_ = (v115 - v116);
        __src = v115;
      }

      else
      {
        if (v105 > 11)
        {
          if (v105 != 12)
          {
            if (v105 == 13)
            {
              v109 = MEMORY[0x23EECF3D0](v568, &v585[v103 - 1], 1, v102, v108);
              v110 = v109;
              if (*(v568 + 1) == 46)
              {
                v579.__locale_ = (v568 + 1);
                v111 = v109 - v568 - 2;
                if (v111 < 4)
                {
LABEL_170:
                  __src = v109;
                }

                else
                {
                  if (v111 >= 6)
                  {
                    v111 = 6;
                  }

                  v112 = -v111;
                  while (*(v109 + v112) != 101)
                  {
                    if (++v112 == -3)
                    {
                      goto LABEL_170;
                    }
                  }

                  __src = v109 + v112;
                }
              }

              else
              {
                v579.__locale_ = v109;
                __src = v568 + 1;
              }

              goto LABEL_580;
            }

            v193 = MEMORY[0x23EECF3D0](v568, &v585[v103 - 1], 1, v102, v108);
            v110 = v193;
            v194 = v568 + 1;
            if (*(v568 + 1) == 46)
            {
              v579.__locale_ = (v568 + 1);
              v195 = v193 - v568 - 2;
              if (v195 < 4)
              {
LABEL_368:
                v194 = v193;
                __src = v193;
              }

              else
              {
                if (v195 >= 6)
                {
                  v195 = 6;
                }

                v196 = -v195;
                while (*(v193 + v196) != 101)
                {
                  if (++v196 == -3)
                  {
                    goto LABEL_368;
                  }
                }

                v194 = v193 + v196;
                __src = v194;
              }
            }

            else
            {
              v579.__locale_ = v193;
              __src = v568 + 1;
            }

            goto LABEL_579;
          }

          if ((v98 & 0x80000000) != 0)
          {
            v186 = std::to_chars();
          }

          else
          {
            v186 = MEMORY[0x23EECF3D0](v568, &v585[v103 - 1], 4, v108);
          }

          v110 = v186;
          v228 = (v568 + 1);
          if (*(v568 + 1) == 46)
          {
            v229 = memchr(v186 - 5, 112, 3uLL);
            v579.__locale_ = (v568 + 1);
            if (v229)
            {
              v230 = v229;
            }

            else
            {
              v230 = (v110 - 2);
            }

            __src = v230;
            v228 = v230;
            if (v230 == v568)
            {
LABEL_486:
              *v228 = 80;
              goto LABEL_580;
            }
          }

          else
          {
            v579.__locale_ = v186;
            __src = v568 + 1;
          }

          v239 = v568;
          do
          {
            v240 = *v239;
            if ((v240 - 97) < 6)
            {
              LOBYTE(v240) = v240 - 32;
            }

            *v239 = v240;
            v239 = (v239 + 1);
          }

          while (v239 != v228);
          goto LABEL_486;
        }

        if (!v105)
        {
          if ((v98 & 0x80000000) != 0)
          {
            v244 = std::to_chars(v568, &v585[v103 - 1], v99, v108);
            v110 = v244;
            v245 = v244 - v568;
            if (v244 - v568 < 4)
            {
LABEL_512:
              v247 = v244;
            }

            else
            {
              if (v245 >= 6)
              {
                v245 = 6;
              }

              v246 = -v245;
              while (*(v244 + v246) != 101)
              {
                if (++v246 == -3)
                {
                  goto LABEL_512;
                }
              }

              v247 = (v244 + v246);
            }

            __src = v247;
            v554 = memchr(v568 + 1, 46, v247 - (v568 + 1));
            if (v554)
            {
              v555 = v554;
            }

            else
            {
              v555 = v247;
            }

            if (v555 == v247)
            {
              v555 = v110;
            }

            v579.__locale_ = v555;
            goto LABEL_580;
          }

          HIDWORD(v583.__r_.__value_.__r.__words[0]) = 0;
          v110 = MEMORY[0x23EECF3D0](v568, &v585[v103 - 1], 3, v102, v108);
          v117 = (v568 + 1);
          if ((v568 + 1) != v110)
          {
            v118 = v110 - v117;
            if (v110 - v117 >= 4)
            {
              v121 = 6;
              if (v118 < 6)
              {
                v121 = v110 - v117;
              }

              v120 = -v121;
              while (*(v110 + v120) != 101)
              {
                if (++v120 == -3)
                {
                  goto LABEL_194;
                }
              }

LABEL_550:
              __src = v110 + v120;
              if (*v117 == 46)
              {
                v123 = v117;
              }

              else
              {
                v123 = v110;
              }

              goto LABEL_553;
            }

            goto LABEL_194;
          }

          goto LABEL_429;
        }

        if ((v98 & 0x80000000) != 0)
        {
          v197 = std::to_chars();
        }

        else
        {
          v197 = MEMORY[0x23EECF3D0](v568, &v585[v103 - 1], 4, v102, v108);
        }

        v110 = v197;
        v248 = v568 + 1;
        if (*(v568 + 1) == 46)
        {
          v249 = memchr((v197 - 5), 112, 3uLL);
          v250 = (v568 + 1);
          if (v249)
          {
            v248 = v249;
          }

          else
          {
            v248 = v110 - 2;
          }
        }

        else
        {
          v250 = v197;
        }

        v579.__locale_ = v250;
        __src = v248;
      }

      if ((v104 & 0x20) == 0)
      {
        goto LABEL_597;
      }

LABEL_580:
      locale = v579.__locale_;
      if (v579.__locale_ == v110)
      {
        *v110 = 46;
        locale = __src;
        if (__src != v110)
        {
          if (__src + 1 == v110)
          {
            v276 = *__src;
            *__src = *(__src + 1);
            *(locale + 1) = v276;
          }

          else
          {
            memmove(__src + 1, __src, v110 - __src);
            *locale = 46;
          }
        }

        v579.__locale_ = locale;
        __src = (locale + 1);
        v110 = (v110 + 1);
      }

      if ((v105 - 17) <= 1)
      {
        if (v101 <= 1)
        {
          v277 = 1;
        }

        else
        {
          v277 = v101;
        }

        if ((v101 & 0x80000000) != 0)
        {
          v277 = 6;
        }

        v278 = v566;
        v279 = v568 - locale;
        if (__src != v110)
        {
          v279 = -1;
        }

        v280 = v279 + v277;
        v281 = __src + ~locale;
        if (v281 < v280)
        {
          HIDWORD(v583.__r_.__value_.__r.__words[0]) += v280 - v281;
        }
      }

      else
      {
LABEL_597:
        v278 = v566;
      }

      if ((v104 & 0x40) == 0)
      {
        v282 = v104;
        v283 = v101;
        v284 = v97;
        v285 = v583.__r_.__value_.__r.__words[2];
        v286 = v110;
        v287 = v110 - v583.__r_.__value_.__r.__words[2];
        v288 = SHIDWORD(v583.__r_.__value_.__r.__words[0]);
        if ((v110 + SHIDWORD(v583.__r_.__value_.__r.__words[0]) - v583.__r_.__value_.__r.__words[2]) < v278 >> 32)
        {
          v289 = *v97;
          if ((v282 & 7) == 4)
          {
            if (v583.__r_.__value_.__r.__words[2] != v568)
            {
              v290 = *v583.__r_.__value_.__r.__words[2];
              v291 = *(v289 + 32);
              if (!v291 || (v293 = *v291, v292 = v291[1], v291[1] = v292 + 1, v292 < v293))
              {
                v294 = *v289;
                v295 = *(v289 + 16);
                *(v289 + 16) = v295 + 1;
                *(v294 + v295) = v290;
                if (*(v289 + 16) == *(v289 + 8))
                {
                  v296 = v278;
                  (*(v289 + 24))(v289, 2);
                  v278 = v296;
                }
              }

              ++v285;
            }

            v297 = v278 & 0xB8 | 3;
            v298 = 48;
            v299 = v283;
          }

          else
          {
            v297 = v278;
            v299 = v283;
            v298 = BYTE4(v283);
          }

          v317 = v278 & 0xFFFFFFFFFFFFFF00 | v297;
          v318 = v299 & 0xFFFFFF00FFFFFFFFLL | (v298 << 32);
          if (v288)
          {
            sub_23C3B0328(v285, v110, v289, v317, v318, v287, __src, v288);
          }

          else
          {
            sub_23C3AAB0C(v285, v110 - v285, v289, v317, v318, v287);
          }

          goto LABEL_866;
        }

        if (HIDWORD(v583.__r_.__value_.__r.__words[0]))
        {
          v301 = __src;
          if (__src != v110)
          {
            v289 = *v284;
            v302 = __src - v583.__r_.__value_.__r.__words[2];
            v303 = *(*v284 + 32);
            if (v303)
            {
              v304 = *v303;
              v305 = v303[1];
              if (*v303 - v305 >= v302)
              {
                v306 = __src - v583.__r_.__value_.__r.__words[2];
              }

              else
              {
                v306 = (*v303 - v305);
              }

              v34 = v304 > v305;
              v307 = &v302[v305];
              v303[1] = v307;
              if (!v34 || v306 == 0)
              {
                goto LABEL_716;
              }
            }

            else
            {
              v306 = __src - v583.__r_.__value_.__r.__words[2];
            }

            v348 = *(v289 + 16);
            do
            {
              v349 = *(v289 + 8) - v348;
              if (v349 < (v306 + 1))
              {
                (*(v289 + 24))(v289, v306 + 2);
                v348 = *(v289 + 16);
                v349 = *(v289 + 8) - v348;
              }

              if (v349 >= v306)
              {
                v350 = v306;
              }

              else
              {
                v350 = v349;
              }

              if (v350)
              {
                memmove((*v289 + v348), v285, v350);
                v348 = *(v289 + 16);
              }

              v348 += v350;
              *(v289 + 16) = v348;
              v285 += v350;
              v34 = v306 > v349;
              v306 -= v350;
            }

            while (v34);
            v303 = *(v289 + 32);
            if (!v303)
            {
              goto LABEL_723;
            }

            v304 = *v303;
            v307 = v303[1];
LABEL_716:
            v351 = &v307[v288];
            v303[1] = &v307[v288];
            v352 = v304 >= v307;
            v353 = v304 - v307;
            if (v353 == 0 || !v352)
            {
              v357 = v286 - v301;
              goto LABEL_735;
            }

            if (v353 < v288)
            {
              v288 = v353;
            }

            v348 = *(v289 + 16);
            do
            {
LABEL_723:
              v354 = *(v289 + 8) - v348;
              if (v354 < v288 + 1)
              {
                (*(v289 + 24))(v289, v288 + 2);
                v348 = *(v289 + 16);
                v354 = *(v289 + 8) - v348;
              }

              if (v354 >= v288)
              {
                v355 = v288;
              }

              else
              {
                v355 = v354;
              }

              if (v355)
              {
                memset((*v289 + v348), 48, v355);
                v348 = *(v289 + 16);
              }

              v348 += v355;
              *(v289 + 16) = v348;
              v34 = v288 > v354;
              v288 -= v355;
            }

            while (v34);
            v303 = *(v289 + 32);
            v357 = v286 - v301;
            if (!v303)
            {
              goto LABEL_744;
            }

            v304 = *v303;
            v351 = v303[1];
LABEL_735:
            v358 = v304 - v351;
            if (v304 - v351 >= v357)
            {
              v358 = v357;
            }

            v303[1] = &v351[v357];
            if (v304 <= v351 || v358 == 0)
            {
              goto LABEL_866;
            }

            v348 = *(v289 + 16);
            v357 = v358;
            do
            {
LABEL_744:
              v360 = *(v289 + 8) - v348;
              if (v360 < v357 + 1)
              {
                (*(v289 + 24))(v289, v357 + 2);
                v348 = *(v289 + 16);
                v360 = *(v289 + 8) - v348;
              }

              if (v360 >= v357)
              {
                v361 = v357;
              }

              else
              {
                v361 = v360;
              }

              if (v361)
              {
                memmove((*v289 + v348), v301, v361);
                v348 = *(v289 + 16);
              }

              v348 += v361;
              *(v289 + 16) = v348;
              v301 = (v301 + v361);
              v34 = v357 > v360;
              v357 -= v361;
            }

            while (v34);
            goto LABEL_866;
          }
        }

        v289 = *v284;
        v309 = *(*v284 + 32);
        if (!v309)
        {
          goto LABEL_630;
        }

        v310 = *v309;
        v311 = v309[1];
        v312 = v311 + v287;
        if (*v309 - v311 < v287)
        {
          v287 = *v309 - v311;
        }

        v309[1] = v312;
        if (v310 > v311 && v287 != 0)
        {
LABEL_630:
          v314 = *(v289 + 16);
          do
          {
            v315 = *(v289 + 8) - v314;
            if (v315 < v287 + 1)
            {
              (*(v289 + 24))(v289, v287 + 2);
              v314 = *(v289 + 16);
              v315 = *(v289 + 8) - v314;
            }

            if (v315 >= v287)
            {
              v316 = v287;
            }

            else
            {
              v316 = v315;
            }

            if (v316)
            {
              memmove((*v289 + v314), v285, v316);
              v314 = *(v289 + 16);
            }

            v314 += v316;
            *(v289 + 16) = v314;
            v285 += v316;
            v34 = v287 > v315;
            v287 -= v316;
          }

          while (v34);
          v309 = *(v289 + 32);
          if (!v309)
          {
            goto LABEL_688;
          }

          v310 = *v309;
          v312 = v309[1];
        }

        v340 = v310 - v312;
        if (v310 - v312 >= v288)
        {
          v340 = v288;
        }

        v309[1] = v312 + v288;
        if (v310 <= v312 || v340 == 0)
        {
          goto LABEL_866;
        }

        v314 = *(v289 + 16);
        v288 = v340;
        do
        {
LABEL_688:
          v342 = *(v289 + 8) - v314;
          if (v342 < v288 + 1)
          {
            (*(v289 + 24))(v289, v288 + 2);
            v314 = *(v289 + 16);
            v342 = *(v289 + 8) - v314;
          }

          if (v342 >= v288)
          {
            v343 = v288;
          }

          else
          {
            v343 = v342;
          }

          if (v343)
          {
            memset((*v289 + v314), 48, v343);
            v314 = *(v289 + 16);
          }

          v314 += v343;
          *(v289 + 16) = v314;
          v34 = v288 > v342;
          v288 -= v343;
        }

        while (v34);
        goto LABEL_866;
      }

      v289 = *v97;
      if ((*(v97 + 40) & 1) == 0)
      {
        MEMORY[0x23EECF2D0](v580);
        v300 = (v97 + 32);
        if (*(v97 + 40) == 1)
        {
          std::locale::operator=(v300, v580);
        }

        else
        {
          std::locale::locale(v300, v580);
          *(v97 + 40) = 1;
        }

        std::locale::~locale(v580);
      }

      std::locale::locale(&v575, (v97 + 32));
      v319 = std::locale::use_facet(&v575, MEMORY[0x277D826C0]);
      (v319->__vftable[1].__on_zero_shared)(v580);
      v320 = __src;
      if (__src >= v579.__locale_)
      {
        v320 = v579.__locale_;
      }

      v321 = v320 - v568;
      v563 = v97;
      v564 = v319;
      v565 = v110;
      if ((SHIBYTE(v581) & 0x8000000000000000) != 0)
      {
        v322 = v580[1].__locale_;
        if (!v580[1].__locale_)
        {
          goto LABEL_755;
        }

        v325 = v580[0].__locale_;
        locale_low = *v580[0].__locale_;
        if (v321 <= locale_low)
        {
          *v580[0].__locale_ = 0;
          v580[1].__locale_ = 0;
          goto LABEL_755;
        }

        v561 = v101;
        v562 = v320 - v568;
        v560 = v104;
        v326 = *v580[0].__locale_;
        v323 = v580[0].__locale_;
      }

      else
      {
        if (!HIBYTE(v581))
        {
          goto LABEL_755;
        }

        if (v321 <= SLOBYTE(v580[0].__locale_))
        {
          LOBYTE(v580[0].__locale_) = 0;
          HIBYTE(v581) = 0;
          goto LABEL_755;
        }

        v561 = v101;
        v562 = v320 - v568;
        v560 = v104;
        v323 = v580[0].__locale_;
        v322 = v580[1].__locale_;
        locale_low = SLOBYTE(v580[0].__locale_);
        v325 = v580;
        v326 = v580[0].__locale_;
      }

      v577[0].__locale_ = 0;
      v577[1].__locale_ = 0;
      v578 = 0;
      v327 = v322 + v323;
      if (SHIBYTE(v581) >= 0)
      {
        v328 = v580 + SHIBYTE(v581);
      }

      else
      {
        v328 = v327;
      }

      v329 = v562 - locale_low;
      if (v562 <= locale_low)
      {
        v345 = 0;
        v344 = v326 + v329;
        goto LABEL_702;
      }

      v330 = v328 - 1;
      do
      {
        while (1)
        {
          v331 = HIBYTE(v578);
          if ((SHIBYTE(v578) & 0x80000000) == 0)
          {
            break;
          }

          v332 = ((v578 & 0x7FFFFFFFFFFFFFFFLL) - 1);
          if (v577[1].__locale_ == v332)
          {
            if ((v578 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
            {
              sub_23C36FA14();
            }

LABEL_665:
            operator new();
          }

          v334 = v577[1].__locale_++;
          v335 = v577[0].__locale_ + v334;
          *v335 = v326;
          v335[1] = 0;
          if (v325 != v330)
          {
            goto LABEL_669;
          }

LABEL_659:
          v326 = *v325;
          v329 -= *v325;
          if (v329 <= 0)
          {
            goto LABEL_696;
          }
        }

        if (HIBYTE(v578) == 22)
        {
          goto LABEL_665;
        }

        HIBYTE(v578) = (HIBYTE(v578) + 1) & 0x7F;
        v333 = v577 + v331;
        *v333 = v326;
        v333[1] = 0;
        if (v325 == v330)
        {
          goto LABEL_659;
        }

LABEL_669:
        v336 = (v325 + 1);
        v337 = (v325 + 1);
        do
        {
          v338 = *v337++;
          v326 = v338;
          if (v338)
          {
            v339 = 1;
          }

          else
          {
            v339 = v336 == v330;
          }

          v336 = v337;
        }

        while (!v339);
        v325 = (v337 - 1);
        v329 -= v326;
      }

      while (v329 > 0);
LABEL_696:
      v344 = v326 + v329;
      if (SHIBYTE(v578) < 0)
      {
        v356 = ((v578 & 0x7FFFFFFFFFFFFFFFLL) - 1);
        if (v577[1].__locale_ == v356)
        {
          if ((v578 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_23C36FA14();
          }

LABEL_734:
          operator new();
        }

        v347 = v577[0].__locale_;
        v346 = v577[1].__locale_++;
      }

      else
      {
        v345 = HIBYTE(v578);
        if (HIBYTE(v578) == 22)
        {
          goto LABEL_734;
        }

LABEL_702:
        v346 = v345;
        HIBYTE(v578) = (v345 + 1) & 0x7F;
        v347 = v577;
      }

      v362 = &v347[v346];
      *v362 = v344;
      v362[1] = 0;
      if (SHIBYTE(v581) < 0)
      {
        operator delete(v580[0].__locale_);
      }

      *&v580[0].__locale_ = *&v577[0].__locale_;
      v581 = v578;
      v101 = v561;
      v321 = v562;
      LOBYTE(v104) = v560;
LABEL_755:
      v363 = HIDWORD(v101);
      v364 = HIBYTE(v581);
      if (SHIBYTE(v581) < 0)
      {
        v364 = v580[1].__locale_;
      }

      v365 = v364 + v110 + SHIDWORD(v583.__r_.__value_.__r.__words[0]) - v583.__r_.__value_.__r.__words[2] - (v364 != 0);
      v366 = v104 & 7;
      v367 = (v566 >> 32) - v365;
      if (v566 >> 32 <= v365)
      {
        v371 = 0;
        v367 = 0;
        v368 = HIDWORD(v101);
        v370 = v568;
      }

      else
      {
        if (v366 == 4)
        {
          LOBYTE(v368) = 48;
        }

        else
        {
          v368 = HIDWORD(v101);
        }

        if (v366 == 4)
        {
          v369 = 3;
        }

        else
        {
          v369 = v104 & 7;
        }

        v370 = v568;
        if (v369 > 1)
        {
          if (v369 == 3)
          {
            goto LABEL_769;
          }

          v371 = v367 - (v367 >> 1);
          v367 >>= 1;
        }

        else
        {
          if (v369)
          {
            v371 = v367;
            v367 = 0;
            goto LABEL_771;
          }

LABEL_769:
          v371 = 0;
        }
      }

LABEL_771:
      if (v366 == 4 && v370 != v583.__r_.__value_.__r.__words[2])
      {
        v372 = *v583.__r_.__value_.__r.__words[2];
        v373 = *(v289 + 32);
        if (!v373 || (v375 = *v373, v374 = v373[1], v373[1] = v374 + 1, v374 < v375))
        {
          v376 = *v289;
          v377 = *(v289 + 16);
          *(v289 + 16) = v377 + 1;
          *(v376 + v377) = v372;
          if (*(v289 + 16) == *(v289 + 8))
          {
            v378 = v367;
            (*(v289 + 24))(v289, 2);
            v367 = v378;
            v370 = v568;
          }
        }
      }

      v569 = v363 & 0xFFFFFF00 | v368;
      sub_23C3ABED4(v289, v367, v569);
      if (v366 != 4 && v370 != v583.__r_.__value_.__r.__words[2])
      {
        v379 = *v583.__r_.__value_.__r.__words[2];
        v380 = *(v289 + 32);
        if (!v380 || (v382 = *v380, v381 = v380[1], v380[1] = v381 + 1, v381 < v382))
        {
          v383 = *v289;
          v384 = *(v289 + 16);
          *(v289 + 16) = v384 + 1;
          *(v383 + v384) = v379;
          if (*(v289 + 16) == *(v289 + 8))
          {
            (*(v289 + 24))(v289, 2);
          }
        }
      }

      v385 = SHIBYTE(v581);
      v567 = v371;
      if ((SHIBYTE(v581) & 0x8000000000000000) != 0)
      {
        v385 = v580[1].__locale_;
        if (!v580[1].__locale_)
        {
          goto LABEL_814;
        }

        v386 = v580[0].__locale_;
LABEL_788:
        v387 = v385 + v386;
        v388 = (v564->__vftable[1].~facet_0)();
        v389 = v386 + 1;
        while (1)
        {
          v391 = v387 - 1;
          v390 = *(v387 - 1);
          v392 = *(v289 + 32);
          if (v392)
          {
            v394 = *v392;
            v393 = v392[1];
            if (*v392 - v393 >= v390)
            {
              v395 = *(v387 - 1);
            }

            else
            {
              v395 = *v392 - v393;
            }

            v392[1] = v393 + v390;
            if (v394 <= v393 || v395 == 0)
            {
              goto LABEL_798;
            }
          }

          else
          {
            v395 = *(v387 - 1);
          }

          v402 = *(v289 + 16);
          v403 = v370;
          do
          {
            v404 = *(v289 + 8) - v402;
            if (v404 < v395 + 1)
            {
              (*(v289 + 24))(v289, v395 + 2);
              v402 = *(v289 + 16);
              v404 = *(v289 + 8) - v402;
            }

            if (v404 >= v395)
            {
              v405 = v395;
            }

            else
            {
              v405 = v404;
            }

            if (v405)
            {
              memmove((*v289 + v402), v403, v405);
              v402 = *(v289 + 16);
            }

            v402 += v405;
            *(v289 + 16) = v402;
            v403 = (v403 + v405);
            v34 = v395 > v404;
            v395 -= v405;
          }

          while (v34);
LABEL_798:
          if (v387 == v389)
          {
            goto LABEL_820;
          }

          v370 = (v370 + *(v387 - 1));
          v397 = *(v289 + 32);
          if (v397)
          {
            v399 = *v397;
            v398 = v397[1];
            v397[1] = v398 + 1;
            --v387;
            if (v398 >= v399)
            {
              continue;
            }
          }

          v400 = *v289;
          v401 = *(v289 + 16);
          *(v289 + 16) = v401 + 1;
          *(v400 + v401) = v388;
          v387 = v391;
          if (*(v289 + 16) == *(v289 + 8))
          {
            (*(v289 + 24))(v289, 2);
            v387 = v391;
          }
        }
      }

      if (HIBYTE(v581))
      {
        v386 = v580;
        goto LABEL_788;
      }

LABEL_814:
      v406 = *(v289 + 32);
      if (v406)
      {
        v408 = *v406;
        v407 = v406[1];
        if (*v406 - v407 >= v321)
        {
          v409 = v321;
        }

        else
        {
          v409 = *v406 - v407;
        }

        v406[1] = v407 + v321;
        if (v408 <= v407 || !v409)
        {
          goto LABEL_820;
        }
      }

      else
      {
        v409 = v321;
      }

      v443 = *(v289 + 16);
      do
      {
        v444 = *(v289 + 8) - v443;
        if (v444 < v409 + 1)
        {
          (*(v289 + 24))(v289, v409 + 2);
          v443 = *(v289 + 16);
          v444 = *(v289 + 8) - v443;
        }

        if (v444 >= v409)
        {
          v445 = v409;
        }

        else
        {
          v445 = v444;
        }

        if (v445)
        {
          memmove((*v289 + v443), v370, v445);
          v443 = *(v289 + 16);
        }

        v443 += v445;
        *(v289 + 16) = v443;
        v370 = (v370 + v445);
        v34 = v409 > v444;
        v409 -= v445;
      }

      while (v34);
LABEL_820:
      v410 = v579.__locale_;
      v411 = v565;
      if (v579.__locale_ == v565)
      {
        v419 = __src;
        v284 = v563;
      }

      else
      {
        v412 = (v564->__vftable[1].~facet)(v564);
        v413 = *(v289 + 32);
        if (!v413 || (v415 = *v413, v414 = v413[1], v413[1] = v414 + 1, v414 < v415))
        {
          v416 = *v289;
          v417 = *(v289 + 16);
          *(v289 + 16) = v417 + 1;
          *(v416 + v417) = v412;
          if (*(v289 + 16) == *(v289 + 8))
          {
            (*(v289 + 24))(v289, 2);
          }
        }

        v418 = v410 + 1;
        v419 = __src;
        v420 = (__src - (v410 + 1));
        v421 = *(v289 + 32);
        if (v421)
        {
          v422 = *v421;
          v423 = v421[1];
          if (*v421 - v423 >= v420)
          {
            v424 = (__src - (v410 + 1));
          }

          else
          {
            v424 = (*v421 - v423);
          }

          v425 = &v420[v423];
          v421[1] = v425;
          if (v422 <= v423 || !v424)
          {
            v426 = SHIDWORD(v583.__r_.__value_.__r.__words[0]);
            v284 = v563;
            v411 = v565;
            goto LABEL_846;
          }
        }

        else
        {
          v424 = (__src - (v410 + 1));
        }

        v427 = *(v289 + 16);
        do
        {
          v428 = *(v289 + 8) - v427;
          if (v428 < (v424 + 1))
          {
            (*(v289 + 24))(v289, v424 + 2);
            v427 = *(v289 + 16);
            v428 = *(v289 + 8) - v427;
          }

          if (v428 >= v424)
          {
            v429 = v424;
          }

          else
          {
            v429 = v428;
          }

          if (v429)
          {
            memmove((*v289 + v427), v418, v429);
            v427 = *(v289 + 16);
          }

          v427 += v429;
          *(v289 + 16) = v427;
          v418 += v429;
          v34 = v424 > v428;
          v424 -= v429;
        }

        while (v34);
        v421 = *(v289 + 32);
        v426 = SHIDWORD(v583.__r_.__value_.__r.__words[0]);
        v284 = v563;
        v411 = v565;
        if (v421)
        {
          v422 = *v421;
          v425 = v421[1];
LABEL_846:
          v430 = v422 - v425;
          if (v422 - v425 >= v426)
          {
            v430 = v426;
          }

          v421[1] = &v425[v426];
          if (v422 > v425 && v430 != 0)
          {
            v427 = *(v289 + 16);
            v426 = v430;
            goto LABEL_882;
          }
        }

        else
        {
          do
          {
LABEL_882:
            v441 = *(v289 + 8) - v427;
            if (v441 < v426 + 1)
            {
              (*(v289 + 24))(v289, v426 + 2);
              v427 = *(v289 + 16);
              v441 = *(v289 + 8) - v427;
            }

            if (v441 >= v426)
            {
              v442 = v426;
            }

            else
            {
              v442 = v441;
            }

            if (v442)
            {
              memset((*v289 + v427), 48, v442);
              v427 = *(v289 + 16);
            }

            v427 += v442;
            *(v289 + 16) = v427;
            v34 = v426 > v441;
            v426 -= v442;
          }

          while (v34);
        }
      }

      if (v419 != v411)
      {
        v432 = v411 - v419;
        v433 = *(v289 + 32);
        if (v433)
        {
          v435 = *v433;
          v434 = v433[1];
          if (*v433 - v434 >= v432)
          {
            v436 = v411 - v419;
          }

          else
          {
            v436 = *v433 - v434;
          }

          v433[1] = v434 + v432;
          if (v435 > v434 && v436 != 0)
          {
            goto LABEL_870;
          }
        }

        else
        {
          v436 = v411 - v419;
LABEL_870:
          v438 = *(v289 + 16);
          do
          {
            v439 = *(v289 + 8) - v438;
            if (v439 < v436 + 1)
            {
              (*(v289 + 24))(v289, v436 + 2);
              v438 = *(v289 + 16);
              v439 = *(v289 + 8) - v438;
            }

            if (v439 >= v436)
            {
              v440 = v436;
            }

            else
            {
              v440 = v439;
            }

            if (v440)
            {
              memmove((*v289 + v438), v419, v440);
              v438 = *(v289 + 16);
            }

            v438 += v440;
            *(v289 + 16) = v438;
            v419 = (v419 + v440);
            v34 = v436 > v439;
            v436 -= v440;
          }

          while (v34);
        }
      }

      sub_23C3ABED4(v289, v567, v569);
      if (SHIBYTE(v581) < 0)
      {
        operator delete(v580[0].__locale_);
      }

      std::locale::~locale(&v575);
LABEL_866:
      if (v583.__r_.__value_.__l.__size_ >= 0x101)
      {
        operator delete(v583.__r_.__value_.__r.__words[2]);
      }

      *v284 = v289;
LABEL_1111:
      v537 = *MEMORY[0x277D85DE8];
      return;
    case 0xAu:
      v72 = *a2;
      v577[0].__locale_ = 0;
      LODWORD(v577[1].__locale_) = -1;
      BYTE4(v577[1].__locale_) = 32;
      *(&v577[1].__locale_ + 5) = 0;
      HIBYTE(v577[1].__locale_) = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_257;
      }

      v73 = *a1;
      v74 = sub_23C3A9618(v577, *a1, 63);
      if (BYTE1(v577[0].__locale_) - 13 < 6)
      {
        if (LODWORD(v577[1].__locale_) != -1 || SWORD1(v577[0].__locale_) <= -1)
        {
          v76 = v577[1].__locale_;
        }

        else
        {
          v76 = 6;
        }

        LODWORD(v577[1].__locale_) = v76;
        goto LABEL_256;
      }

      if (BYTE1(v577[0].__locale_) <= 0xCu && ((1 << SBYTE1(v577[0].__locale_)) & 0x1801) != 0)
      {
LABEL_256:
        *v73 = v74;
LABEL_257:
        v124 = *(a1 + 8);
        v127 = sub_23C3AA640(v577, v124);
        v128 = v152;
        v129 = *&v72;
        if ((*&v72 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
        {
          if (v152 == -1)
          {
            v154 = 1074;
          }

          else
          {
            v154 = v152;
          }

          v583.__r_.__value_.__r.__words[0] = v154;
          if (v154 >= 1075)
          {
            LODWORD(v583.__r_.__value_.__l.__data_) = 1074;
            HIDWORD(v583.__r_.__value_.__r.__words[0]) = v154 - 1074;
            v583.__r_.__value_.__l.__size_ = 1390;
            goto LABEL_264;
          }

          v155 = v154 + 316;
          v583.__r_.__value_.__l.__size_ = v155;
          if ((v154 + 316) >= 0x401)
          {
LABEL_264:
            operator new();
          }

          v159 = v152;
          v583.__r_.__value_.__r.__words[2] = &v584;
          if ((*&v72 & 0x8000000000000000) != 0)
          {
            v158 = 45;
          }

          else
          {
            v156 = (v127 >> 3) & 3;
            if (v156 == 2)
            {
              v158 = 43;
            }

            else
            {
              v157 = &v584;
              if (v156 != 3)
              {
                goto LABEL_272;
              }

              v158 = 32;
            }
          }

          v584 = v158;
          v157 = v585;
LABEL_272:
          v160 = fabs(v72);
          v161 = &v580[1];
          if (BYTE1(v127) > 0xEu)
          {
            if (BYTE1(v127) - 15 < 2)
            {
              v580[0].__locale_ = v157;
              v165 = MEMORY[0x23EECF370](v157, &v585[v155 - 1], 2, v152, v160);
              v581 = v165;
              *v582 = v165;
              if (v159)
              {
                v166 = v159 + 1;
              }

              else
              {
                v166 = 0;
              }

              v580[1].__locale_ = &v165[-v166];
              goto LABEL_1041;
            }

            if (BYTE1(v127) != 17)
            {
              HIDWORD(v583.__r_.__value_.__r.__words[0]) = 0;
              v580[0].__locale_ = v157;
              v207 = MEMORY[0x23EECF370](v157, &v585[v155 - 1], 3, v152, v160);
              *v582 = v207;
              v208 = (v157 + 1);
              if (v157 + 1 == v207)
              {
                v580[1].__locale_ = v207;
                v161 = &v581;
                v213 = v207;
              }

              else
              {
                v209 = v207 - v208;
                if (v207 - v208 < 4)
                {
LABEL_394:
                  v581 = v207;
                  v212 = memchr(v208, 46, v209);
                  if (v212)
                  {
                    v213 = v212;
                  }

                  else
                  {
                    v213 = v207;
                  }
                }

                else
                {
                  v210 = 6;
                  if (v209 < 6)
                  {
                    v210 = v207 - v208;
                  }

                  v211 = -v210;
                  while (*(v207 + v211) != 101)
                  {
                    if (++v211 == -3)
                    {
                      goto LABEL_394;
                    }
                  }

                  v581 = v207 + v211;
                  if (*v208 == 46)
                  {
                    v213 = (v157 + 1);
                  }

                  else
                  {
                    v213 = v207;
                  }
                }
              }

              v161->__locale_ = v213;
              v219 = v581;
              if (v581 == v207)
              {
                goto LABEL_1041;
              }

LABEL_1040:
              *v219 = 69;
              goto LABEL_1041;
            }

            HIDWORD(v583.__r_.__value_.__r.__words[0]) = 0;
            v580[0].__locale_ = v157;
            v167 = MEMORY[0x23EECF370](v157, &v585[v155 - 1], 3, v152, v160);
            *v582 = v167;
            v168 = (v157 + 1);
            if (v157 + 1 != v167)
            {
              v169 = v167 - v168;
              if (v167 - v168 >= 4)
              {
                v170 = 6;
                if (v169 < 6)
                {
                  v170 = v167 - v168;
                }

                v171 = -v170;
                while (v167[v171] != 101)
                {
                  if (++v171 == -3)
                  {
                    goto LABEL_307;
                  }
                }

                goto LABEL_557;
              }

LABEL_307:
              v581 = v167;
              v173 = v167;
              v174 = memchr(v168, 46, v169);
              if (v174)
              {
                v175 = v174;
              }

              else
              {
                v175 = v173;
              }

              v580[1].__locale_ = v175;
              goto LABEL_1041;
            }
          }

          else
          {
            if (BYTE1(v127) > 0xBu)
            {
              if (BYTE1(v127) != 12)
              {
                if (BYTE1(v127) == 13)
                {
                  v580[0].__locale_ = v157;
                  v162 = MEMORY[0x23EECF370](v157, &v585[v155 - 1], 1, v152, v160);
                  *v582 = v162;
                  if (v157[1] == 46)
                  {
                    v580[1].__locale_ = (v157 + 1);
                    v163 = v162 - v157 - 2;
                    if (v163 < 4)
                    {
LABEL_283:
                      v581 = v162;
                    }

                    else
                    {
                      if (v163 >= 6)
                      {
                        v163 = 6;
                      }

                      v164 = -v163;
                      while (v162[v164] != 101)
                      {
                        if (++v164 == -3)
                        {
                          goto LABEL_283;
                        }
                      }

                      v581 = &v162[v164];
                    }
                  }

                  else
                  {
                    v580[1].__locale_ = v162;
                    v581 = v157 + 1;
                  }

                  goto LABEL_1041;
                }

                v580[0].__locale_ = v157;
                v218 = MEMORY[0x23EECF370](v157, &v585[v155 - 1], 1, v152, v160);
                *v582 = v218;
                v219 = v157 + 1;
                if (v157[1] == 46)
                {
                  v580[1].__locale_ = (v157 + 1);
                  v220 = v218 - v157 - 2;
                  if (v220 < 4)
                  {
LABEL_412:
                    v219 = v218;
                    v581 = v218;
                  }

                  else
                  {
                    if (v220 >= 6)
                    {
                      v220 = 6;
                    }

                    v221 = -v220;
                    while (v218[v221] != 101)
                    {
                      if (++v221 == -3)
                      {
                        goto LABEL_412;
                      }
                    }

                    v219 = &v218[v221];
                    v581 = v219;
                  }
                }

                else
                {
                  v580[1].__locale_ = v218;
                  v581 = v157 + 1;
                }

                goto LABEL_1040;
              }

              v580[0].__locale_ = v157;
              if ((v152 & 0x80000000) != 0 || v152 == -1)
              {
                v199 = std::to_chars();
              }

              else
              {
                v199 = MEMORY[0x23EECF370](v157, &v585[v155 - 1], 4, v152, v160);
              }

              *v582 = v199;
              v235 = v157 + 1;
              if (v157[1] == 46)
              {
                v236 = v199 - 2;
                v237 = memchr(v199 - 6, 112, 4uLL);
                if (v237)
                {
                  v238 = v237;
                }

                else
                {
                  v238 = v236;
                }

                v580[1].__locale_ = (v157 + 1);
                v581 = v238;
                v235 = v238;
                if (v238 == v157)
                {
LABEL_498:
                  *v235 = 80;
                  goto LABEL_1041;
                }
              }

              else
              {
                v580[1].__locale_ = v199;
                v581 = v157 + 1;
              }

              do
              {
                v242 = *v157;
                if ((v242 - 97) < 6)
                {
                  LOBYTE(v242) = v242 - 32;
                }

                *v157++ = v242;
              }

              while (v157 != v235);
              goto LABEL_498;
            }

            if (BYTE1(v127))
            {
              v580[0].__locale_ = v157;
              if ((v152 & 0x80000000) != 0)
              {
                v223 = std::to_chars();
              }

              else
              {
                v223 = MEMORY[0x23EECF370](v157, &v585[v155 - 1], 4, v152, v160);
              }

              *v582 = v223;
              v266 = v157[1];
              v265 = (v157 + 1);
              if (v266 == 46)
              {
                v267 = (v223 - 2);
                v268 = memchr(v223 - 6, 112, 4uLL);
                v223 = v265;
                if (v268)
                {
                  v265 = v268;
                }

                else
                {
                  v265 = v267;
                }
              }

              v580[1].__locale_ = v223;
              v581 = v265;
              goto LABEL_1041;
            }

            if ((v152 & 0x80000000) != 0)
            {
              v580[0].__locale_ = v157;
              v260 = std::to_chars(v157, &v585[v155 - 1], v153, v160);
              v261 = v260;
              *v582 = v260;
              v262 = v260 - v157;
              if (v260 - v157 < 4)
              {
LABEL_539:
                v264 = v260;
              }

              else
              {
                if (v262 >= 6)
                {
                  v262 = 6;
                }

                v263 = -v262;
                while (*(v260 + v263) != 101)
                {
                  if (++v263 == -3)
                  {
                    goto LABEL_539;
                  }
                }

                v264 = (v260 + v263);
              }

              v581 = v264;
              v558 = memchr(v157 + 1, 46, v264 - (v157 + 1));
              if (v558)
              {
                v559 = v558;
              }

              else
              {
                v559 = v264;
              }

              if (v559 == v264)
              {
                v559 = v261;
              }

              v580[1].__locale_ = v559;
              goto LABEL_1041;
            }

            HIDWORD(v583.__r_.__value_.__r.__words[0]) = 0;
            v580[0].__locale_ = v157;
            v167 = MEMORY[0x23EECF370](v157, &v585[v155 - 1], 3, v152, v160);
            *v582 = v167;
            v168 = (v157 + 1);
            if (v157 + 1 != v167)
            {
              v169 = v167 - v168;
              if (v167 - v168 >= 4)
              {
                v172 = 6;
                if (v169 < 6)
                {
                  v172 = v167 - v168;
                }

                v171 = -v172;
                while (v167[v171] != 101)
                {
                  if (++v171 == -3)
                  {
                    goto LABEL_307;
                  }
                }

LABEL_557:
                v581 = &v167[v171];
                if (*v168 != 46)
                {
                  v168 = v167;
                }

                v580[1].__locale_ = v168;
                goto LABEL_1041;
              }

              goto LABEL_307;
            }
          }

          v580[1].__locale_ = v167;
          v581 = v167;
LABEL_1041:
          if ((v127 & 0x20) != 0)
          {
            v503 = v580[1].__locale_;
            v504 = *v582;
            if (v580[1].__locale_ == *v582)
            {
              v506 = ++*v582;
              *v504 = 46;
              v505 = v581;
              if (v581 != v503)
              {
                if (v581 + 1 == v503)
                {
                  v507 = *v581;
                  *v581 = *(v581 + 1);
                  *(v505 + 1) = v507;
                }

                else
                {
                  memmove(&v506[-(v503 - v581)], v581, v503 - v581);
                  *v505 = 46;
                }
              }

              v580[1].__locale_ = v505;
              v581 = (v505 + 1);
              v504 = v506;
            }

            else
            {
              v505 = v580[1].__locale_;
            }

            if (BYTE1(v127) - 17 <= 1)
            {
              if (v128 <= 1)
              {
                v508 = 1;
              }

              else
              {
                v508 = v128;
              }

              if ((v128 & 0x80000000) != 0)
              {
                v508 = 6;
              }

              if (v581 == v504)
              {
                v509 = LODWORD(v580[0].__locale_) - v505;
              }

              else
              {
                v509 = -1;
              }

              v510 = v509 + v508;
              v511 = v581 + ~v505;
              if (v511 < v510)
              {
                HIDWORD(v583.__r_.__value_.__r.__words[0]) += v510 - v511;
              }
            }
          }

          if ((v127 & 0x40) == 0)
          {
            v455 = *v582;
            v456 = v583.__r_.__value_.__r.__words[2];
            v457 = *v582 - v583.__r_.__value_.__r.__words[2];
            v458 = SHIDWORD(v583.__r_.__value_.__r.__words[0]);
            if ((*v582 - v583.__r_.__value_.__r.__words[2] + SHIDWORD(v583.__r_.__value_.__r.__words[0])) < v127 >> 32)
            {
              v459 = *v124;
              if ((v127 & 7) == 4)
              {
                if (v583.__r_.__value_.__r.__words[2] != v580[0].__locale_)
                {
                  v512 = *v583.__r_.__value_.__r.__words[2];
                  v513 = *(v459 + 32);
                  if (!v513 || (v515 = *v513, v514 = v513[1], v513[1] = v514 + 1, v514 < v515))
                  {
                    v516 = *v459;
                    v517 = *(v459 + 16);
                    *(v459 + 16) = v517 + 1;
                    *(v516 + v517) = v512;
                    if (*(v459 + 16) == *(v459 + 8))
                    {
                      (*(v459 + 24))(v459, 2);
                    }
                  }

                  ++v456;
                }

                v518 = v127 & 0xB8 | 3;
                v519 = 48;
              }

              else
              {
                v518 = v127;
                v519 = BYTE4(v128);
              }

              v485 = v127 & 0xFFFFFFFFFFFFFF00 | v518;
              v486 = v128 & 0xFFFFFF00FFFFFFFFLL | (v519 << 32);
              if (v458)
              {
LABEL_968:
                sub_23C3B0328(v456, v455, v459, v485, v486, v457, v581, v458);
LABEL_1108:
                if (v583.__r_.__value_.__l.__size_ >= 0x401)
                {
                  operator delete(v583.__r_.__value_.__r.__words[2]);
                }

                *v124 = v459;
                goto LABEL_1111;
              }

LABEL_990:
              sub_23C3AAB0C(v456, v455 - v456, v459, v485, v486, v457);
              goto LABEL_1108;
            }

            if (HIDWORD(v583.__r_.__value_.__r.__words[0]))
            {
              v521 = v581;
              if (v581 != *v582)
              {
                v459 = *v124;
                v522 = v581 - v583.__r_.__value_.__r.__words[2];
                v523 = *(*v124 + 32);
                if (v523)
                {
                  v524 = *v523;
                  v525 = v523[1];
                  if (*v523 - v525 >= v522)
                  {
                    v526 = v581 - v583.__r_.__value_.__r.__words[2];
                  }

                  else
                  {
                    v526 = (*v523 - v525);
                  }

                  v34 = v524 > v525;
                  v527 = &v522[v525];
                  v523[1] = v527;
                  if (!v34 || v526 == 0)
                  {
                    goto LABEL_1144;
                  }
                }

                else
                {
                  v526 = v581 - v583.__r_.__value_.__r.__words[2];
                }

                v542 = *(v459 + 16);
                do
                {
                  v543 = *(v459 + 8) - v542;
                  if (v543 < (v526 + 1))
                  {
                    (*(v459 + 24))(v459, v526 + 2);
                    v542 = *(v459 + 16);
                    v543 = *(v459 + 8) - v542;
                  }

                  if (v543 >= v526)
                  {
                    v544 = v526;
                  }

                  else
                  {
                    v544 = v543;
                  }

                  if (v544)
                  {
                    memmove((*v459 + v542), v456, v544);
                    v542 = *(v459 + 16);
                  }

                  v542 += v544;
                  *(v459 + 16) = v542;
                  v456 += v544;
                  v34 = v526 > v543;
                  v526 -= v544;
                }

                while (v34);
                v523 = *(v459 + 32);
                if (!v523)
                {
                  goto LABEL_1151;
                }

                v524 = *v523;
                v527 = v523[1];
LABEL_1144:
                v545 = &v527[v458];
                v523[1] = &v527[v458];
                v352 = v524 >= v527;
                v546 = v524 - v527;
                if (v546 == 0 || !v352)
                {
                  v549 = v455 - v521;
                  goto LABEL_1160;
                }

                if (v546 < v458)
                {
                  v458 = v546;
                }

                v542 = *(v459 + 16);
                do
                {
LABEL_1151:
                  v547 = *(v459 + 8) - v542;
                  if (v547 < v458 + 1)
                  {
                    (*(v459 + 24))(v459, v458 + 2);
                    v542 = *(v459 + 16);
                    v547 = *(v459 + 8) - v542;
                  }

                  if (v547 >= v458)
                  {
                    v548 = v458;
                  }

                  else
                  {
                    v548 = v547;
                  }

                  if (v548)
                  {
                    memset((*v459 + v542), 48, v548);
                    v542 = *(v459 + 16);
                  }

                  v542 += v548;
                  *(v459 + 16) = v542;
                  v34 = v458 > v547;
                  v458 -= v548;
                }

                while (v34);
                v523 = *(v459 + 32);
                v549 = v455 - v521;
                if (!v523)
                {
                  do
                  {
LABEL_1169:
                    v552 = *(v459 + 8) - v542;
                    if (v552 < v549 + 1)
                    {
                      (*(v459 + 24))(v459, v549 + 2);
                      v542 = *(v459 + 16);
                      v552 = *(v459 + 8) - v542;
                    }

                    if (v552 >= v549)
                    {
                      v553 = v549;
                    }

                    else
                    {
                      v553 = v552;
                    }

                    if (v553)
                    {
                      memmove((*v459 + v542), v521, v553);
                      v542 = *(v459 + 16);
                    }

                    v542 += v553;
                    *(v459 + 16) = v542;
                    v521 += v553;
                    v34 = v549 > v552;
                    v549 -= v553;
                  }

                  while (v34);
                  goto LABEL_1108;
                }

                v524 = *v523;
                v545 = v523[1];
LABEL_1160:
                v550 = v524 - v545;
                if (v524 - v545 >= v549)
                {
                  v550 = v549;
                }

                v523[1] = &v545[v549];
                if (v524 <= v545 || v550 == 0)
                {
                  goto LABEL_1108;
                }

                v542 = *(v459 + 16);
                v549 = v550;
                goto LABEL_1169;
              }
            }

            v459 = *v124;
            v529 = *(*v124 + 32);
            if (!v529)
            {
              goto LABEL_1092;
            }

            v530 = *v529;
            v531 = v529[1];
            v532 = v531 + v457;
            if (*v529 - v531 < v457)
            {
              v457 = *v529 - v531;
            }

            v529[1] = v532;
            if (v530 > v531 && v457 != 0)
            {
LABEL_1092:
              v534 = *(v459 + 16);
              do
              {
                v535 = *(v459 + 8) - v534;
                if (v535 < v457 + 1)
                {
                  (*(v459 + 24))(v459, v457 + 2);
                  v534 = *(v459 + 16);
                  v535 = *(v459 + 8) - v534;
                }

                if (v535 >= v457)
                {
                  v536 = v457;
                }

                else
                {
                  v536 = v535;
                }

                if (v536)
                {
                  memmove((*v459 + v534), v456, v536);
                  v534 = *(v459 + 16);
                }

                v534 += v536;
                *(v459 + 16) = v534;
                v456 += v536;
                v34 = v457 > v535;
                v457 -= v536;
              }

              while (v34);
              v529 = *(v459 + 32);
              if (!v529)
              {
                do
                {
LABEL_1123:
                  v540 = *(v459 + 8) - v534;
                  if (v540 < v458 + 1)
                  {
                    (*(v459 + 24))(v459, v458 + 2);
                    v534 = *(v459 + 16);
                    v540 = *(v459 + 8) - v534;
                  }

                  if (v540 >= v458)
                  {
                    v541 = v458;
                  }

                  else
                  {
                    v541 = v540;
                  }

                  if (v541)
                  {
                    memset((*v459 + v534), 48, v541);
                    v534 = *(v459 + 16);
                  }

                  v534 += v541;
                  *(v459 + 16) = v534;
                  v34 = v458 > v540;
                  v458 -= v541;
                }

                while (v34);
                goto LABEL_1108;
              }

              v530 = *v529;
              v532 = v529[1];
            }

            v538 = v530 - v532;
            if (v530 - v532 >= v458)
            {
              v538 = v458;
            }

            v529[1] = v532 + v458;
            if (v530 <= v532 || v538 == 0)
            {
              goto LABEL_1108;
            }

            v534 = *(v459 + 16);
            v458 = v538;
            goto LABEL_1123;
          }

          v459 = *v124;
          if ((*(v124 + 40) & 1) == 0)
          {
            MEMORY[0x23EECF2D0](&v570);
            v520 = (v124 + 32);
            if (*(v124 + 40) == 1)
            {
              std::locale::operator=(v520, &v570);
            }

            else
            {
              std::locale::locale(v520, &v570);
              *(v124 + 40) = 1;
            }

            std::locale::~locale(&v570);
          }

LABEL_1107:
          std::locale::locale(&v579, (v124 + 32));
          sub_23C3B0618(v459, &v583, v580, &v579, v127, v128);
          std::locale::~locale(&v579);
          goto LABEL_1108;
        }

LABEL_1203:
        *v124 = sub_23C3B01E0(*v124, v127, v128, v129 < 0, 0);
        goto LABEL_1111;
      }

      goto LABEL_1218;
    case 0xBu:
      v62 = *a2;
      v577[0].__locale_ = 0;
      LODWORD(v577[1].__locale_) = -1;
      BYTE4(v577[1].__locale_) = 32;
      *(&v577[1].__locale_ + 5) = 0;
      HIBYTE(v577[1].__locale_) = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_200;
      }

      v63 = *a1;
      v64 = sub_23C3A9618(v577, *a1, 63);
      if (BYTE1(v577[0].__locale_) - 13 >= 6)
      {
        if (BYTE1(v577[0].__locale_) > 0xCu || ((1 << SBYTE1(v577[0].__locale_)) & 0x1801) == 0)
        {
LABEL_1218:
          sub_23C3A9EF8();
        }
      }

      else
      {
        if (LODWORD(v577[1].__locale_) != -1 || SWORD1(v577[0].__locale_) <= -1)
        {
          v66 = v577[1].__locale_;
        }

        else
        {
          v66 = 6;
        }

        LODWORD(v577[1].__locale_) = v66;
      }

      *v63 = v64;
LABEL_200:
      v124 = *(a1 + 8);
      v127 = sub_23C3AA640(v577, v124);
      v128 = v125;
      v129 = *&v62;
      if ((*&v62 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        goto LABEL_1203;
      }

      if (v125 == -1)
      {
        v130 = 1074;
      }

      else
      {
        v130 = v125;
      }

      v583.__r_.__value_.__r.__words[0] = v130;
      if (v130 >= 1075)
      {
        LODWORD(v583.__r_.__value_.__l.__data_) = 1074;
        HIDWORD(v583.__r_.__value_.__r.__words[0]) = v130 - 1074;
        v583.__r_.__value_.__l.__size_ = 1390;
        goto LABEL_207;
      }

      v131 = v130 + 316;
      v583.__r_.__value_.__l.__size_ = v131;
      if ((v130 + 316) >= 0x401)
      {
LABEL_207:
        operator new();
      }

      v135 = v125;
      v583.__r_.__value_.__r.__words[2] = &v584;
      if ((*&v62 & 0x8000000000000000) != 0)
      {
        v134 = 45;
      }

      else
      {
        v132 = (v127 >> 3) & 3;
        if (v132 == 2)
        {
          v134 = 43;
        }

        else
        {
          v133 = &v584;
          if (v132 != 3)
          {
            goto LABEL_215;
          }

          v134 = 32;
        }
      }

      v584 = v134;
      v133 = v585;
LABEL_215:
      v136 = fabs(v62);
      v137 = &v580[1];
      if (BYTE1(v127) > 0xEu)
      {
        if (BYTE1(v127) - 15 < 2)
        {
          v580[0].__locale_ = v133;
          v141 = MEMORY[0x23EECF3A0](v133, &v585[v131 - 1], 2, v125, v136);
          v581 = v141;
          *v582 = v141;
          if (v135)
          {
            v142 = v135 + 1;
          }

          else
          {
            v142 = 0;
          }

          v580[1].__locale_ = &v141[-v142];
          goto LABEL_905;
        }

        if (BYTE1(v127) == 17)
        {
          HIDWORD(v583.__r_.__value_.__r.__words[0]) = 0;
          v580[0].__locale_ = v133;
          v143 = MEMORY[0x23EECF3A0](v133, &v585[v131 - 1], 3, v125, v136);
          *v582 = v143;
          v144 = (v133 + 1);
          if (v133 + 1 != v143)
          {
            v145 = v143 - v144;
            if (v143 - v144 >= 4)
            {
              v146 = 6;
              if (v145 < 6)
              {
                v146 = v143 - v144;
              }

              v147 = -v146;
              while (v143[v147] != 101)
              {
                if (++v147 == -3)
                {
                  goto LABEL_250;
                }
              }

              goto LABEL_554;
            }

LABEL_250:
            v581 = v143;
            v149 = v143;
            v150 = memchr(v144, 46, v145);
            if (v150)
            {
              v151 = v150;
            }

            else
            {
              v151 = v149;
            }

            v580[1].__locale_ = v151;
            goto LABEL_905;
          }

LABEL_430:
          v580[1].__locale_ = v143;
          v581 = v143;
          goto LABEL_905;
        }

        HIDWORD(v583.__r_.__value_.__r.__words[0]) = 0;
        v580[0].__locale_ = v133;
        v200 = MEMORY[0x23EECF3A0](v133, &v585[v131 - 1], 3, v125, v136);
        *v582 = v200;
        v201 = (v133 + 1);
        if (v133 + 1 == v200)
        {
          v580[1].__locale_ = v200;
          v137 = &v581;
          v206 = v200;
        }

        else
        {
          v202 = v200 - v201;
          if (v200 - v201 < 4)
          {
LABEL_384:
            v581 = v200;
            v205 = memchr(v201, 46, v202);
            if (v205)
            {
              v206 = v205;
            }

            else
            {
              v206 = v200;
            }
          }

          else
          {
            v203 = 6;
            if (v202 < 6)
            {
              v203 = v200 - v201;
            }

            v204 = -v203;
            while (*(v200 + v204) != 101)
            {
              if (++v204 == -3)
              {
                goto LABEL_384;
              }
            }

            v581 = v200 + v204;
            if (*v201 == 46)
            {
              v206 = (v133 + 1);
            }

            else
            {
              v206 = v200;
            }
          }
        }

        v137->__locale_ = v206;
        v215 = v581;
        if (v581 != v200)
        {
          goto LABEL_904;
        }
      }

      else
      {
        if (BYTE1(v127) > 0xBu)
        {
          if (BYTE1(v127) != 12)
          {
            if (BYTE1(v127) == 13)
            {
              v580[0].__locale_ = v133;
              v138 = MEMORY[0x23EECF3A0](v133, &v585[v131 - 1], 1, v125, v136);
              *v582 = v138;
              if (v133[1] == 46)
              {
                v580[1].__locale_ = (v133 + 1);
                v139 = v138 - v133 - 2;
                if (v139 < 4)
                {
LABEL_226:
                  v581 = v138;
                }

                else
                {
                  if (v139 >= 6)
                  {
                    v139 = 6;
                  }

                  v140 = -v139;
                  while (v138[v140] != 101)
                  {
                    if (++v140 == -3)
                    {
                      goto LABEL_226;
                    }
                  }

                  v581 = &v138[v140];
                }
              }

              else
              {
                v580[1].__locale_ = v138;
                v581 = v133 + 1;
              }

              goto LABEL_905;
            }

            v580[0].__locale_ = v133;
            v214 = MEMORY[0x23EECF3A0](v133, &v585[v131 - 1], 1, v125, v136);
            *v582 = v214;
            v215 = v133 + 1;
            if (v133[1] == 46)
            {
              v580[1].__locale_ = (v133 + 1);
              v216 = v214 - v133 - 2;
              if (v216 < 4)
              {
LABEL_404:
                v215 = v214;
                v581 = v214;
              }

              else
              {
                if (v216 >= 6)
                {
                  v216 = 6;
                }

                v217 = -v216;
                while (v214[v217] != 101)
                {
                  if (++v217 == -3)
                  {
                    goto LABEL_404;
                  }
                }

                v215 = &v214[v217];
                v581 = v215;
              }
            }

            else
            {
              v580[1].__locale_ = v214;
              v581 = v133 + 1;
            }

LABEL_904:
            *v215 = 69;
            goto LABEL_905;
          }

          v580[0].__locale_ = v133;
          if ((v125 & 0x80000000) != 0 || v125 == -1)
          {
            v198 = std::to_chars();
          }

          else
          {
            v198 = MEMORY[0x23EECF3A0](v133, &v585[v131 - 1], 4, v125, v136);
          }

          *v582 = v198;
          v231 = v133 + 1;
          if (v133[1] == 46)
          {
            v232 = v198 - 2;
            v233 = memchr(v198 - 6, 112, 4uLL);
            if (v233)
            {
              v234 = v233;
            }

            else
            {
              v234 = v232;
            }

            v580[1].__locale_ = (v133 + 1);
            v581 = v234;
            v231 = v234;
            if (v234 == v133)
            {
LABEL_493:
              *v231 = 80;
              goto LABEL_905;
            }
          }

          else
          {
            v580[1].__locale_ = v198;
            v581 = v133 + 1;
          }

          do
          {
            v241 = *v133;
            if ((v241 - 97) < 6)
            {
              LOBYTE(v241) = v241 - 32;
            }

            *v133++ = v241;
          }

          while (v133 != v231);
          goto LABEL_493;
        }

        if (BYTE1(v127))
        {
          v580[0].__locale_ = v133;
          if ((v125 & 0x80000000) != 0)
          {
            v222 = std::to_chars();
          }

          else
          {
            v222 = MEMORY[0x23EECF3A0](v133, &v585[v131 - 1], 4, v125, v136);
          }

          *v582 = v222;
          v257 = v133[1];
          v256 = (v133 + 1);
          if (v257 == 46)
          {
            v258 = (v222 - 2);
            v259 = memchr(v222 - 6, 112, 4uLL);
            v222 = v256;
            if (v259)
            {
              v256 = v259;
            }

            else
            {
              v256 = v258;
            }
          }

          v580[1].__locale_ = v222;
          v581 = v256;
          goto LABEL_905;
        }

        if ((v125 & 0x80000000) == 0)
        {
          HIDWORD(v583.__r_.__value_.__r.__words[0]) = 0;
          v580[0].__locale_ = v133;
          v143 = MEMORY[0x23EECF3A0](v133, &v585[v131 - 1], 3, v125, v136);
          *v582 = v143;
          v144 = (v133 + 1);
          if (v133 + 1 != v143)
          {
            v145 = v143 - v144;
            if (v143 - v144 >= 4)
            {
              v148 = 6;
              if (v145 < 6)
              {
                v148 = v143 - v144;
              }

              v147 = -v148;
              while (v143[v147] != 101)
              {
                if (++v147 == -3)
                {
                  goto LABEL_250;
                }
              }

LABEL_554:
              v581 = &v143[v147];
              if (*v144 != 46)
              {
                v144 = v143;
              }

              v580[1].__locale_ = v144;
              goto LABEL_905;
            }

            goto LABEL_250;
          }

          goto LABEL_430;
        }

        v580[0].__locale_ = v133;
        v251 = std::to_chars(v133, &v585[v131 - 1], v126, v136);
        v252 = v251;
        *v582 = v251;
        v253 = v251 - v133;
        if (v251 - v133 < 4)
        {
LABEL_526:
          v255 = v251;
        }

        else
        {
          if (v253 >= 6)
          {
            v253 = 6;
          }

          v254 = -v253;
          while (*(v251 + v254) != 101)
          {
            if (++v254 == -3)
            {
              goto LABEL_526;
            }
          }

          v255 = (v251 + v254);
        }

        v581 = v255;
        v556 = memchr(v133 + 1, 46, v255 - (v133 + 1));
        if (v556)
        {
          v557 = v556;
        }

        else
        {
          v557 = v255;
        }

        if (v557 == v255)
        {
          v557 = v252;
        }

        v580[1].__locale_ = v557;
      }

LABEL_905:
      if ((v127 & 0x20) != 0)
      {
        v446 = v580[1].__locale_;
        v447 = *v582;
        if (v580[1].__locale_ == *v582)
        {
          v449 = ++*v582;
          *v447 = 46;
          v448 = v581;
          if (v581 != v446)
          {
            if (v581 + 1 == v446)
            {
              v450 = *v581;
              *v581 = *(v581 + 1);
              *(v448 + 1) = v450;
            }

            else
            {
              memmove(&v449[-(v446 - v581)], v581, v446 - v581);
              *v448 = 46;
            }
          }

          v580[1].__locale_ = v448;
          v581 = (v448 + 1);
          v447 = v449;
        }

        else
        {
          v448 = v580[1].__locale_;
        }

        if (BYTE1(v127) - 17 <= 1)
        {
          if (v128 <= 1)
          {
            v451 = 1;
          }

          else
          {
            v451 = v128;
          }

          if ((v128 & 0x80000000) != 0)
          {
            v451 = 6;
          }

          if (v581 == v447)
          {
            v452 = LODWORD(v580[0].__locale_) - v448;
          }

          else
          {
            v452 = -1;
          }

          v453 = v452 + v451;
          v454 = v581 + ~v448;
          if (v454 < v453)
          {
            HIDWORD(v583.__r_.__value_.__r.__words[0]) += v453 - v454;
          }
        }
      }

      if ((v127 & 0x40) != 0)
      {
        v459 = *v124;
        if ((*(v124 + 40) & 1) == 0)
        {
          MEMORY[0x23EECF2D0](&v570);
          v468 = (v124 + 32);
          if (*(v124 + 40) == 1)
          {
            std::locale::operator=(v468, &v570);
          }

          else
          {
            std::locale::locale(v468, &v570);
            *(v124 + 40) = 1;
          }

          std::locale::~locale(&v570);
        }

        goto LABEL_1107;
      }

      v455 = *v582;
      v456 = v583.__r_.__value_.__r.__words[2];
      v457 = *v582 - v583.__r_.__value_.__r.__words[2];
      v458 = SHIDWORD(v583.__r_.__value_.__r.__words[0]);
      if ((*v582 - v583.__r_.__value_.__r.__words[2] + SHIDWORD(v583.__r_.__value_.__r.__words[0])) < v127 >> 32)
      {
        v459 = *v124;
        if ((v127 & 7) == 4)
        {
          if (v583.__r_.__value_.__r.__words[2] != v580[0].__locale_)
          {
            v460 = *v583.__r_.__value_.__r.__words[2];
            v461 = *(v459 + 32);
            if (!v461 || (v463 = *v461, v462 = v461[1], v461[1] = v462 + 1, v462 < v463))
            {
              v464 = *v459;
              v465 = *(v459 + 16);
              *(v459 + 16) = v465 + 1;
              *(v464 + v465) = v460;
              if (*(v459 + 16) == *(v459 + 8))
              {
                (*(v459 + 24))(v459, 2);
              }
            }

            ++v456;
          }

          v466 = v127 & 0xB8 | 3;
          v467 = 48;
        }

        else
        {
          v466 = v127;
          v467 = BYTE4(v128);
        }

        v485 = v127 & 0xFFFFFFFFFFFFFF00 | v466;
        v486 = v128 & 0xFFFFFF00FFFFFFFFLL | (v467 << 32);
        if (v458)
        {
          goto LABEL_968;
        }

        goto LABEL_990;
      }

      if (HIDWORD(v583.__r_.__value_.__r.__words[0]))
      {
        v469 = v581;
        if (v581 != *v582)
        {
          v459 = *v124;
          v470 = v581 - v583.__r_.__value_.__r.__words[2];
          v471 = *(*v124 + 32);
          if (v471)
          {
            v472 = *v471;
            v473 = v471[1];
            if (*v471 - v473 >= v470)
            {
              v474 = v581 - v583.__r_.__value_.__r.__words[2];
            }

            else
            {
              v474 = (*v471 - v473);
            }

            v34 = v472 > v473;
            v475 = &v470[v473];
            v471[1] = v475;
            if (!v34 || v474 == 0)
            {
              goto LABEL_1004;
            }
          }

          else
          {
            v474 = v581 - v583.__r_.__value_.__r.__words[2];
          }

          v491 = *(v459 + 16);
          do
          {
            v492 = *(v459 + 8) - v491;
            if (v492 < (v474 + 1))
            {
              (*(v459 + 24))(v459, v474 + 2);
              v491 = *(v459 + 16);
              v492 = *(v459 + 8) - v491;
            }

            if (v492 >= v474)
            {
              v493 = v474;
            }

            else
            {
              v493 = v492;
            }

            if (v493)
            {
              memmove((*v459 + v491), v456, v493);
              v491 = *(v459 + 16);
            }

            v491 += v493;
            *(v459 + 16) = v491;
            v456 += v493;
            v34 = v474 > v492;
            v474 -= v493;
          }

          while (v34);
          v471 = *(v459 + 32);
          if (!v471)
          {
            goto LABEL_1011;
          }

          v472 = *v471;
          v475 = v471[1];
LABEL_1004:
          v494 = &v475[v458];
          v471[1] = &v475[v458];
          v352 = v472 >= v475;
          v495 = v472 - v475;
          if (v495 == 0 || !v352)
          {
            v498 = v455 - v469;
            goto LABEL_1020;
          }

          if (v495 < v458)
          {
            v458 = v495;
          }

          v491 = *(v459 + 16);
          do
          {
LABEL_1011:
            v496 = *(v459 + 8) - v491;
            if (v496 < v458 + 1)
            {
              (*(v459 + 24))(v459, v458 + 2);
              v491 = *(v459 + 16);
              v496 = *(v459 + 8) - v491;
            }

            if (v496 >= v458)
            {
              v497 = v458;
            }

            else
            {
              v497 = v496;
            }

            if (v497)
            {
              memset((*v459 + v491), 48, v497);
              v491 = *(v459 + 16);
            }

            v491 += v497;
            *(v459 + 16) = v491;
            v34 = v458 > v496;
            v458 -= v497;
          }

          while (v34);
          v471 = *(v459 + 32);
          v498 = v455 - v469;
          if (!v471)
          {
            do
            {
LABEL_1029:
              v501 = *(v459 + 8) - v491;
              if (v501 < v498 + 1)
              {
                (*(v459 + 24))(v459, v498 + 2);
                v491 = *(v459 + 16);
                v501 = *(v459 + 8) - v491;
              }

              if (v501 >= v498)
              {
                v502 = v498;
              }

              else
              {
                v502 = v501;
              }

              if (v502)
              {
                memmove((*v459 + v491), v469, v502);
                v491 = *(v459 + 16);
              }

              v491 += v502;
              *(v459 + 16) = v491;
              v469 += v502;
              v34 = v498 > v501;
              v498 -= v502;
            }

            while (v34);
            goto LABEL_1108;
          }

          v472 = *v471;
          v494 = v471[1];
LABEL_1020:
          v499 = v472 - v494;
          if (v472 - v494 >= v498)
          {
            v499 = v498;
          }

          v471[1] = &v494[v498];
          if (v472 <= v494 || v499 == 0)
          {
            goto LABEL_1108;
          }

          v491 = *(v459 + 16);
          v498 = v499;
          goto LABEL_1029;
        }
      }

      v459 = *v124;
      v477 = *(*v124 + 32);
      if (!v477)
      {
        goto LABEL_956;
      }

      v478 = *v477;
      v479 = v477[1];
      v480 = v479 + v457;
      if (*v477 - v479 < v457)
      {
        v457 = *v477 - v479;
      }

      v477[1] = v480;
      if (v478 > v479 && v457 != 0)
      {
LABEL_956:
        v482 = *(v459 + 16);
        do
        {
          v483 = *(v459 + 8) - v482;
          if (v483 < v457 + 1)
          {
            (*(v459 + 24))(v459, v457 + 2);
            v482 = *(v459 + 16);
            v483 = *(v459 + 8) - v482;
          }

          if (v483 >= v457)
          {
            v484 = v457;
          }

          else
          {
            v484 = v483;
          }

          if (v484)
          {
            memmove((*v459 + v482), v456, v484);
            v482 = *(v459 + 16);
          }

          v482 += v484;
          *(v459 + 16) = v482;
          v456 += v484;
          v34 = v457 > v483;
          v457 -= v484;
        }

        while (v34);
        v477 = *(v459 + 32);
        if (!v477)
        {
          do
          {
LABEL_983:
            v489 = *(v459 + 8) - v482;
            if (v489 < v458 + 1)
            {
              (*(v459 + 24))(v459, v458 + 2);
              v482 = *(v459 + 16);
              v489 = *(v459 + 8) - v482;
            }

            if (v489 >= v458)
            {
              v490 = v458;
            }

            else
            {
              v490 = v489;
            }

            if (v490)
            {
              memset((*v459 + v482), 48, v490);
              v482 = *(v459 + 16);
            }

            v482 += v490;
            *(v459 + 16) = v482;
            v34 = v458 > v489;
            v458 -= v490;
          }

          while (v34);
          goto LABEL_1108;
        }

        v478 = *v477;
        v480 = v477[1];
      }

      v487 = v478 - v480;
      if (v478 - v480 >= v458)
      {
        v487 = v458;
      }

      v477[1] = v480 + v458;
      if (v478 <= v480 || v487 == 0)
      {
        goto LABEL_1108;
      }

      v482 = *(v459 + 16);
      v458 = v487;
      goto LABEL_983;
    case 0xCu:
      v77 = *a2;
      LODWORD(v583.__r_.__value_.__l.__data_) = 1;
      *(v583.__r_.__value_.__r.__words + 4) = 0xFFFFFFFF00000000;
      v583.__r_.__value_.__s.__data_[12] = 32;
      *(&v583.__r_.__value_.__r.__words[1] + 5) = 0;
      v583.__r_.__value_.__s.__data_[15] = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_117;
      }

      v78 = *a1;
      v79 = sub_23C3A9618(&v583, *a1, 40);
      if (v583.__r_.__value_.__s.__data_[1] >= 2u && v583.__r_.__value_.__s.__data_[1] != 19)
      {
        goto LABEL_1213;
      }

      *v78 = v79;
LABEL_117:
      v15 = *(a1 + 8);
      v80 = strlen(v77);
      v18 = sub_23C3B116C(&v583, v77, v80, v15);
      goto LABEL_124;
    case 0xDu:
      v19 = *a2;
      v20 = *(a2 + 1);
      LODWORD(v583.__r_.__value_.__l.__data_) = 1;
      *(v583.__r_.__value_.__r.__words + 4) = 0xFFFFFFFF00000000;
      v583.__r_.__value_.__s.__data_[12] = 32;
      *(&v583.__r_.__value_.__r.__words[1] + 5) = 0;
      v583.__r_.__value_.__s.__data_[15] = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_18;
      }

      v21 = *a1;
      v22 = sub_23C3A9618(&v583, *a1, 40);
      if (v583.__r_.__value_.__s.__data_[1] >= 2u && v583.__r_.__value_.__s.__data_[1] != 19)
      {
LABEL_1213:
        sub_23C3A53AC("The type option contains an invalid value for a string formatting argument");
      }

      *v21 = v22;
LABEL_18:
      v15 = *(a1 + 8);
      v18 = sub_23C3B116C(&v583, v19, v20, v15);
LABEL_124:
      *v15 = v18;
      goto LABEL_1111;
    case 0xEu:
      v11 = *a2;
      v580[0].__locale_ = 0;
      LODWORD(v580[1].__locale_) = -1;
      BYTE4(v580[1].__locale_) = 32;
      *(&v580[1].__locale_ + 5) = 0;
      HIBYTE(v580[1].__locale_) = 0;
      if (**(a1 + 16) == 1)
      {
        v12 = *a1;
        v13 = sub_23C3A9618(v580, *a1, 36);
        if (BYTE1(v580[0].__locale_) - 8 >= 2 && BYTE1(v580[0].__locale_) != 0)
        {
          sub_23C3A9EF8();
        }

        *v12 = v13;
      }

      v15 = *(a1 + 8);
      v16 = sub_23C3AA640(v580, v15);
      if ((v16 & 0xFF00) == 0x900)
      {
        v18 = sub_23C3B1530(v11, v15, v16 & 0xFFFFFFFFFFFF00DFLL | 0x720, v17, &v583, &v583.__r_.__value_.__r.__words[2] + 3, "0X", 0x10u);
      }

      else
      {
        v18 = sub_23C3B1530(v11, v15, v16 & 0xFFFFFFFFFFFF00DFLL | 0x620, v17, &v583, &v583.__r_.__value_.__r.__words[2] + 3, "0x", 0x10u);
      }

      goto LABEL_124;
    case 0xFu:
      v81 = *a1;
      v82 = *a2;
      v83 = *(a2 + 1);
      v84 = *MEMORY[0x277D85DE8];
      v85 = *(a1 + 8);

      v83(v81, v85, v82);
      return;
    default:
      sub_23C3A53AC("The argument index value is too large for the number of arguments supplied");
  }
}