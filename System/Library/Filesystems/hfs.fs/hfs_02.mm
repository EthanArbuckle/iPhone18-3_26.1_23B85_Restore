uint64_t sub_10001A2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 632);
  if (!v8)
  {
    return 0;
  }

  v10 = 0;
  v52 = 0;
  v53 = 0;
  memset(v59, 0, 512);
  v11 = (a1 + 872);
  v12 = "lost+found";
  v13 = 1;
  while (1)
  {
    while (1)
    {
      v14 = *(v8 + 2);
      if (!v14)
      {
        goto LABEL_7;
      }

      if (!*(v8 + 534))
      {
        break;
      }

      v15 = 2 * *(v8 + 269) + 10;
      v52 = v8 + 530;
      v16 = v15 & 0xFFFE;
      v53 = v16 | 0x100000000;
      DWORD1(v59[0]) = 0;
      sub_10001F16C(v14, 0, 1, &v59[1] + 4);
      if (sub_100005AB8(*(a1 + 792), v59, &v52, v16))
      {
        return sub_10001ECC0(a1, 2);
      }

      *(v8 + 2) = 0;
LABEL_7:
      v8 = *v8;
      if (!v8)
      {
        if (v13)
        {
          return 0;
        }

LABEL_32:
        v41 = v11[1];
        v60 = *v11;
        v61 = v41;
        v42 = v11[3];
        v62 = v11[2];
        v63 = v42;
        sub_10002D0A4(&v60, 116, a3, a4, a5, a6, a7, a8, v12);
        return 0;
      }
    }

    if (BYTE1(xmmword_100043510) == 1 && byte_10004350E == 0)
    {
      return 8;
    }

    if (!v10)
    {
      break;
    }

LABEL_16:
    v19 = v11[1];
    v60 = *v11;
    v61 = v19;
    v20 = v11[3];
    v62 = v11[2];
    v63 = v20;
    sub_10002D0A4(&v60, 534, a3, a4, a5, a6, a7, a8, v14);
    v21 = *(v8 + 2);
    v58 = 0;
    v57 = 0;
    memset(__src, 0, sizeof(__src));
    v91 = 0u;
    v90 = 0u;
    v89 = 0u;
    v88 = 0u;
    v87 = 0u;
    v86 = 0u;
    v85 = 0u;
    v84 = 0u;
    v83 = 0u;
    v82 = 0u;
    v81 = 0u;
    v80 = 0u;
    v79 = 0u;
    v78 = 0u;
    v77 = 0u;
    v76 = 0u;
    v75 = 0u;
    v74 = 0u;
    v73 = 0u;
    v72 = 0u;
    v71 = 0u;
    v70 = 0u;
    v69 = 0u;
    v68 = 0u;
    v67 = 0u;
    v66 = 0u;
    v65 = 0u;
    v64 = 0u;
    v63 = 0u;
    v62 = 0u;
    v61 = 0u;
    v60 = 0u;
    memset(v55, 0, 512);
    memset(v54, 0, 512);
    sub_100020B5C();
    v23 = v22;
    __sprintf_chk(__s, 0, 0x20uLL, "%ld", v21);
    v24 = strlen(__s);
    if (v23)
    {
      LOWORD(__src[0]) = v24;
      v25 = v24;
      if (v24)
      {
        v26 = __s;
        v27 = __src + 1;
        do
        {
          v28 = *v26++;
          *v27++ = v28;
          --v25;
        }

        while (v25);
      }
    }

    else
    {
      LOBYTE(__src[0]) = v24;
      __memcpy_chk();
    }

    sub_10001F16C(v10, __src, v23, v55);
    if (!sub_1000127A0(*(a1 + 792), v55, 0, 0, &v60, &v58, &v57))
    {
      v32 = 2;
LABEL_38:
      if (sub_10002D444() < 3)
      {
        return 8;
      }

      v60 = xmmword_100043460;
      v61 = *&qword_100043470;
      v62 = xmmword_100043480;
      v63 = *&off_100043490;
      v51 = v32;
      v50 = "\tCould not recreate a missing directory (error %d)\n";
LABEL_40:
      sub_10002D0E8(&v60, 2, v50, v45, v46, v47, v48, v49, v51);
      return 8;
    }

    v29 = v12;
    v58 = sub_10001D288(v55, &v60, v23, 1);
    sub_10001F16C(v21, 0, v23, v54);
    v30 = sub_100012C04(*(a1 + 792), v54, &v60, v58, &v57);
    if (v30 || (v58 = sub_10001E3F0(a1, 1023, v21, v23, &v60), (v30 = sub_100012C04(*(a1 + 792), v55, &v60, v58, &v57)) != 0))
    {
      v32 = v30;
      goto LABEL_38;
    }

    if (v23)
    {
      v31 = 1;
    }

    else
    {
      v31 = 256;
    }

    v32 = sub_100013274(*(a1 + 776), v10, 0, v31, 0, 1);
    v33 = *(a1 + 792);
    *(*(v33 + 16) + 132) |= 1u;
    sub_1000060FC(v33, v34, v35, v36, v37, v38, v39, v40);
    if (v32)
    {
      goto LABEL_38;
    }

    v13 = 0;
    v8 = *v8;
    v12 = v29;
    if (!v8)
    {
      goto LABEL_32;
    }
  }

  v18 = sub_10001DFE4(a1, v12);
  if (v18)
  {
    v10 = v18;
    v14 = *(v8 + 2);
    goto LABEL_16;
  }

  if (sub_10002D444() >= 3)
  {
    v60 = xmmword_100043460;
    v61 = *&qword_100043470;
    v62 = xmmword_100043480;
    v63 = *&off_100043490;
    v50 = "\tCould not create lost+found directory \n";
    goto LABEL_40;
  }

  return 8;
}

uint64_t sub_10001A8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v16, 0, 512);
  memset(v15, 0, 512);
  v14 = 0;
  v13 = 0;
  result = sub_100012A1C(*(a1 + 792), -32767, v15, v16, &v13, &v14, a7, a8);
  if (!result)
  {
    LOWORD(v12) = 0;
    do
    {
      v12 = (v12 + 1);
      if (v12 >= 11)
      {
        sub_100004B1C(a1);
        LOWORD(v12) = 0;
      }

      if (v13 == 520 && v16[0] - 3 <= 1)
      {
        v13 = 2 * v16[4] + 10;
        result = sub_100012E70(*(a1 + 792), v15, v14, v16, v13 & 0xFFFE, &v14);
        if (result)
        {
          break;
        }
      }

      result = sub_100012A1C(*(a1 + 792), 1, v15, v16, &v13, &v14, v10, v11);
    }

    while (!result);
  }

  return result;
}

uint64_t sub_10001AA48(uint64_t a1)
{
  v2 = *(a1 + 656);
  sub_100020B5C();
  if (!v3)
  {
    v9 = 8;
    goto LABEL_163;
  }

  if (!v2 || (v4 = **v2, qsort(*v2 + 2, v4, 0x20uLL, sub_10001E7B0), !v4))
  {
    v9 = 0;
LABEL_163:
    sub_10002B37C(a1);
    v5 = 0;
    goto LABEL_164;
  }

  v5 = 0;
  v6 = 4;
  v7 = v4;
  do
  {
    v8 = sub_10002B498(*(a1 + 776), (*v2)[v6], &(*v2)[v6 + 1]);
    if (v8)
    {
      v5 = 1;
    }

    v6 += 8;
    --v7;
  }

  while (v7);
  v9 = v8;
  for (i = 0; i != v4; ++i)
  {
    v11 = &(*v2)[8 * i];
    if (!*(v11 + 20))
    {
      continue;
    }

    memset(v124, 0, 512);
    memset(v119, 0, 512);
    v118 = 0;
    v117 = 0;
    memset(v123, 0, sizeof(v123));
    memset(__dst, 0, 268);
    v115 = 0;
    memset(v114, 0, sizeof(v114));
    v113 = 0;
    sub_100020B5C();
    if (*(v11 + 32) == 1)
    {
      if (v12 != 1)
      {
        sub_10003089C();
      }

      if (!*(v11 + 24))
      {
        sub_1000308F4();
      }

      v13 = malloc_type_malloc(0x80uLL, 0x9AEE4C31uLL);
      if (v13)
      {
        v14 = v13;
        bzero(&v125, 0x220uLL);
        v15 = *(v11 + 24);
        v121 = strlen(v15);
        sub_10001D334(*(v11 + 8), v15, v121, v126 + 4);
        v122[0] = v114;
        v122[1] = 0x100000058;
        if (sub_1000052E0(*(a1 + 808), &v125, 0xFFFFFFFF, v122, &v113, &v125))
        {
          v21 = *(v11 + 24);
          v22 = *(v11 + 8);
          v120[0] = xmmword_100043460;
          v120[1] = *&qword_100043470;
          v120[2] = xmmword_100043480;
          v120[3] = *&off_100043490;
          sub_10002D128(v120, 34, "%s: Error finding attribute record (err=%d) for fileID = %d, attrname = %d\n", v16, v17, v18, v19, v20, "SearchExtentInAttributeBT");
        }

        else
        {
LABEL_37:
          if (LODWORD(v114[0]) == 48)
          {
            v34 = 0;
            v42 = v114 + 3;
            while (*v42)
            {
              if (*v42 == *(v11 + 16) && *(v42 - 1) == *(v11 + 12))
              {
LABEL_68:
                memcpy(__dst, v126 + 4, 0x10CuLL);
                free(v14);
                v32 = *(v11 + 12);
                v33 = *(v11 + 16);
                v46 = 3;
                goto LABEL_95;
              }

              ++v34;
              v42 += 2;
              if (v34 == 8)
              {
LABEL_54:
                if (!sub_100005678(*(a1 + 808), 1u, &v125, v122, &v113, v18, v19, v20))
                {
                  sub_10001EAF0(&v126[1] + 2, 2 * LOWORD(v126[1]), v14, &v121, 0x80uLL);
                  v14[v121] = 0;
                  if (DWORD2(v126[0]) == *(v11 + 8) && !strcmp(v14, *(v11 + 24)))
                  {
                    goto LABEL_37;
                  }
                }

                break;
              }
            }
          }

          else if (LODWORD(v114[0]) == 32)
          {
            v34 = 0;
            v40 = &v114[1] + 3;
            while (*v40)
            {
              if (*v40 == *(v11 + 16) && *(v40 - 1) == *(v11 + 12))
              {
                goto LABEL_68;
              }

              ++v34;
              v40 += 2;
              if (v34 == 8)
              {
                goto LABEL_54;
              }
            }
          }
        }

        free(v14);
      }

      goto LABEL_33;
    }

    v23 = *(v11 + 8);
    if (v23 > 0xF)
    {
      sub_100020B5C();
      v38 = v37;
      if (sub_10001D3B8(a1, *(v11 + 8), v37, v119, v124, &v113))
      {
LABEL_32:
        v39 = *(v11 + 8);
        v125 = xmmword_100043460;
        v126[0] = *&qword_100043470;
        v126[1] = xmmword_100043480;
        v126[2] = *&off_100043490;
        sub_10002D128(&v125, 34, "%s: No matching extent record found for fileID = %d\n", v25, v26, v27, v28, v29, "MoveExtent");
        goto LABEL_33;
      }

      v32 = *(v11 + 12);
      v33 = *(v11 + 16);
      v34 = 0;
      if (v38)
      {
        if (*(v11 + 32))
        {
          v44 = &v124[11] + 3;
          while (*v44)
          {
            if (*v44 == v33 && *(v44 - 1) == v32)
            {
              goto LABEL_94;
            }

            ++v34;
            v44 += 2;
            if (v34 == 8)
            {
              goto LABEL_122;
            }
          }
        }

        else
        {
          v49 = &v124[6] + 3;
          while (*v49)
          {
            if (*v49 == v33 && *(v49 - 1) == v32)
            {
              goto LABEL_94;
            }

            ++v34;
            v49 += 2;
            if (v34 == 8)
            {
              goto LABEL_122;
            }
          }
        }

        goto LABEL_32;
      }

      if (*(v11 + 32))
      {
        v47 = (&v124[5] + 10);
        while (*v47)
        {
          if (*v47 == v33 && *(v47 - 1) == v32)
          {
            goto LABEL_94;
          }

          ++v34;
          v47 += 2;
          if (v34 == 3)
          {
            goto LABEL_122;
          }
        }

        goto LABEL_32;
      }

      v51 = (&v124[4] + 14);
      while (1)
      {
        if (!*v51)
        {
          goto LABEL_32;
        }

        if (*v51 == v33 && *(v51 - 1) == v32)
        {
          break;
        }

        ++v34;
        v51 += 2;
        if (v34 == 3)
        {
LABEL_122:
          LODWORD(v125) = 0;
          sub_100020B5C();
          v78 = v77;
          sub_100026CB8(v77, *(v11 + 32), *(v11 + 8), 0, &v117);
          v79 = sub_1000127A0(*(a1 + 784), &v117, 0, &v117, v123, &v113, &v125);
          if ((v79 & 0xFFFFFFDF) == 0)
          {
            if (v79 == 32)
            {
              v79 = sub_100012A1C(*(a1 + 784), 1, &v117, v123, &v113, &v125, v83, v84);
            }

            if (!v79)
            {
LABEL_126:
              v85 = *(v11 + 8);
              if (v78)
              {
                if (HIDWORD(v117) == v85 && BYTE2(v117) == *(v11 + 32))
                {
                  v86 = 8;
LABEL_133:
                  v34 = 0;
                  v32 = *(v11 + 12);
                  v33 = *(v11 + 16);
                  v87 = &v123[1];
                  while (*v87)
                  {
                    if (*v87 == v33 && *(v87 - 1) == v32)
                    {
                      v46 = 2;
                      goto LABEL_95;
                    }

                    ++v34;
                    v87 += 2;
                    if (v86 == v34)
                    {
                      if (!sub_100012A1C(*(a1 + 784), 1, &v117, v123, &v113, &v125, v83, v84))
                      {
                        goto LABEL_126;
                      }

                      break;
                    }
                  }
                }
              }

              else if (*(&v117 + 2) == v85 && BYTE1(v117) == *(v11 + 32))
              {
                v86 = 3;
                goto LABEL_133;
              }
            }
          }

          v94 = *(v11 + 8);
          v125 = xmmword_100043460;
          v126[0] = *&qword_100043470;
          v126[1] = xmmword_100043480;
          v126[2] = *&off_100043490;
          sub_10002D128(&v125, 34, "%s: No matching extent record found in extents btree for fileID = %d (err=%d)\n", v80, v81, v82, v83, v84, "MoveExtent");
          goto LABEL_33;
        }
      }

LABEL_94:
      v46 = 1;
LABEL_95:
      v53 = *(a1 + 776);
      if (sub_100002C9C(*(v53 + 208), (*(v53 + 118) + (*(v53 + 40) >> 9) * v32) << 9, (*(v53 + 118) + (*(v53 + 40) >> 9) * *(v11 + 20)) << 9, *(v53 + 40) * v33))
      {
        v59 = *(v11 + 8);
        v125 = xmmword_100043460;
        v126[0] = *&qword_100043470;
        v126[1] = xmmword_100043480;
        v126[2] = *&off_100043490;
        sub_10002D128(&v125, 34, "%s: Error in copying disk blocks for fileID = %d (err=%d)\n", v54, v55, v56, v57, v58, "MoveExtent");
        goto LABEL_33;
      }

      if (v46 <= 1)
      {
        if (!v46)
        {
          sub_100020B5C();
          v66 = *(v11 + 8) - 3;
          if (v66 <= 5 && ((0x3Bu >> v66) & 1) != 0)
          {
            v67 = qword_1000321B0[v66];
            v68 = *(a1 + 776);
            v69 = *(v68 + v67);
            if (v69)
            {
              v70 = *(v11 + 20);
              if (v60)
              {
                *(v69 + 8 * v34 + 36) = v70;
              }

              else
              {
                *(v69 + 4 * v34 + 24) = v70;
              }

              *(v68 + 196) |= 0xFF00u;
LABEL_160:
              *(v11 + 33) = 1;
              v5 |= 2u;
              goto LABEL_34;
            }
          }

          goto LABEL_157;
        }

        sub_100020B5C();
        v71 = *(v11 + 20);
        if (v72)
        {
          if (*(v11 + 32))
          {
            v73 = &v124[11] + 8;
          }

          else
          {
            v73 = &v124[6] + 8;
          }

          *&v73[8 * v34] = v71;
        }

        else
        {
          if (*(v11 + 32))
          {
            v89 = &v124[5] + 6;
          }

          else
          {
            v89 = &v124[4] + 10;
          }

          *&v89[4 * v34] = v71;
        }

        LODWORD(v125) = 0;
        v90 = *(a1 + 792);
        v91 = v113;
        v92 = v119;
        v93 = v124;
        goto LABEL_155;
      }

      if (v46 == 2)
      {
        v123[2 * v34] = *(v11 + 20);
        if (!sub_10001481C(*(a1 + 776), 0, &v117, v123, 0))
        {
          goto LABEL_160;
        }

LABEL_156:
        v95 = *(v11 + 8);
LABEL_157:
        v125 = xmmword_100043460;
        v126[0] = *&qword_100043470;
        v126[1] = xmmword_100043480;
        v126[2] = *&off_100043490;
        sub_10002D128(&v125, 34, "%s: Error in updating extent record for fileID = %d (err=%d)\n", v61, v62, v63, v64, v65, "MoveExtent");
        goto LABEL_33;
      }

      if ((v114[0] & 0xFFFFFFEF) != 0x20)
      {
        sub_1000308C8();
      }

      if (LODWORD(v114[0]) == 32)
      {
        v74 = 24;
      }

      else
      {
        if (LODWORD(v114[0]) != 48)
        {
LABEL_147:
          LODWORD(v125) = 0;
          v90 = *(a1 + 808);
          v91 = v113;
          v92 = __dst;
          v93 = v114;
LABEL_155:
          if (!sub_100012E70(v90, v92, 0, v93, v91, &v125))
          {
            goto LABEL_160;
          }

          goto LABEL_156;
        }

        v74 = 8;
      }

      *(v114 + 8 * v34 + v74) = *(v11 + 20);
      goto LABEL_147;
    }

    if (((1 << v23) & 0xC020) == 0)
    {
      sub_100020B5C();
      v30 = *(v11 + 8) - 3;
      if (v30 <= 5 && ((0x3Bu >> v30) & 1) != 0)
      {
        v31 = *(*(a1 + 776) + qword_1000321B0[v30]);
        if (v31)
        {
          v32 = *(v11 + 12);
          v33 = *(v11 + 16);
          v34 = 0;
          if (v24)
          {
            v35 = (v31 + 40);
            while (*v35)
            {
              if (*v35 == v33 && *(v35 - 1) == v32)
              {
                goto LABEL_142;
              }

              ++v34;
              v35 += 2;
              if (v34 == 8)
              {
                goto LABEL_122;
              }
            }
          }

          else
          {
            v75 = (v31 + 28);
            while (*v75)
            {
              if (*v75 == v33 && *(v75 - 1) == v32)
              {
LABEL_142:
                v46 = 0;
                goto LABEL_95;
              }

              ++v34;
              v75 += 2;
              if (v34 == 3)
              {
                goto LABEL_122;
              }
            }
          }
        }
      }

      goto LABEL_32;
    }

LABEL_33:
    *(v11 + 33) = 0;
LABEL_34:
    v9 = sub_10001D6BC(a1, *(v11 + 8));
  }

  v98 = 0;
  v99 = 32 * v4;
  do
  {
    v100 = &(*v2)[v98 / 4];
    if (*(v100 + 33) == 1)
    {
      sub_10002AECC(v100[3], v100[4]);
    }

    v98 += 32;
  }

  while (v99 != v98);
  v101 = 0;
  do
  {
    v102 = &(*v2)[v101 / 4];
    if (!*(v102 + 33))
    {
      sub_10002A950(v102[3], v102[4]);
      v103 = v102[5];
      if (v103)
      {
        sub_10002AECC(v103, v102[4]);
      }
    }

    v101 += 32;
  }

  while (v99 != v101);
  sub_10002B37C(a1);
  if (v5)
  {
    v110 = *(a1 + 888);
    v125 = *(a1 + 872);
    v126[0] = v110;
    v111 = *(a1 + 920);
    v126[1] = *(a1 + 904);
    v126[2] = v111;
    sub_10002D0A4(&v125, 4294966734, v104, v105, v106, v107, v108, v109, v112);
  }

LABEL_164:
  if ((v5 & 2) != 0)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_10001B564(uint64_t a1)
{
  memset(v190, 0, 512);
  v189 = 0u;
  v188 = 0u;
  v187 = 0u;
  v186 = 0u;
  v185 = 0u;
  v184 = 0u;
  v183 = 0u;
  v181 = 0u;
  v182 = 0u;
  v179 = 0u;
  v180 = 0u;
  v177 = 0u;
  v178 = 0u;
  v175 = 0u;
  v176 = 0u;
  v173 = 0u;
  v174 = 0u;
  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  *v158 = 0u;
  memset(v157, 0, 512);
  v256 = 0u;
  v255 = 0u;
  v254 = 0u;
  v253 = 0u;
  v252 = 0u;
  v251 = 0u;
  v250 = 0u;
  v249 = 0u;
  v248 = 0u;
  v247 = 0u;
  v246 = 0u;
  v245 = 0u;
  v244 = 0u;
  v243 = 0u;
  v242 = 0u;
  v241 = 0u;
  v240 = 0u;
  v239 = 0u;
  v238 = 0u;
  v237 = 0u;
  v236 = 0u;
  v235 = 0u;
  v234 = 0u;
  v233 = 0u;
  v232 = 0u;
  v231 = 0u;
  v230 = 0u;
  v229 = 0u;
  v228 = 0u;
  v227 = 0u;
  *v226 = 0u;
  *v225 = 0u;
  memset(v224, 0, 512);
  v223 = 0u;
  v222 = 0u;
  v221 = 0u;
  v220 = 0u;
  v219 = 0u;
  v218 = 0u;
  v217 = 0u;
  v216 = 0u;
  v215 = 0u;
  v214 = 0u;
  v213 = 0u;
  v212 = 0u;
  v211 = 0u;
  v210 = 0u;
  v209 = 0u;
  v208 = 0u;
  v207 = 0u;
  v206 = 0u;
  v205 = 0u;
  v204 = 0u;
  v203 = 0u;
  v202 = 0u;
  v201 = 0u;
  v200 = 0u;
  v199 = 0u;
  v198 = 0u;
  v197 = 0u;
  v196 = 0u;
  v195 = 0u;
  v194 = 0u;
  v193 = 0u;
  v192 = 0u;
  v156 = 0;
  v154 = 0;
  v155 = 0;
  v2 = *(sub_10001EDA4(136) + 16);
  sub_100020B5C();
  v4 = v3;
  memmove(__dst, (v2 + 184), 0x220uLL);
  v5 = 0;
  v6 = -32767;
  do
  {
    memmove((v2 + 184), __dst, 0x220uLL);
    v9 = sub_100012A1C(*(a1 + 792), v6, v158, v225, &v154 + 1, &v156 + 1, v7, v8);
    if (v9)
    {
      break;
    }

    memmove(__dst, (v2 + 184), 0x220uLL);
    v10 = LOWORD(v225[0]);
    if (LOWORD(v225[0]) > 0xFFu)
    {
      if (LOWORD(v225[0]) > 0x2FFu)
      {
        if (LOWORD(v225[0]) != 768)
        {
          if (LOWORD(v225[0]) == 1024)
          {
LABEL_19:
            if (v4)
            {
              goto LABEL_20;
            }

LABEL_26:
            sub_10001F16C(*(&v225[2] + 2), (v225 | 0xE), 0, v190);
            if (sub_1000127A0(*(a1 + 792), v190, 0, v157, &v192, &v154 + 1, &v156))
            {
              goto LABEL_105;
            }

            if (v9)
            {
              if (v192 != 256)
              {
                if (sub_10002D444() >= 3)
                {
                  v150 = xmmword_100043460;
                  v151 = *&qword_100043470;
                  v152 = xmmword_100043480;
                  v153 = *&off_100043490;
                  sub_10002D0E8(&v150, 2, "\t%s: Folder recordType mismatch for id=%u (found=%u)\n", v18, v19, v20, v21, v22, "FixOrphanedFiles");
                }

                goto LABEL_98;
              }

LABEL_55:
              v39 = 0;
            }

            else
            {
              if (v192 == 512)
              {
                goto LABEL_55;
              }

              if (sub_10002D444() >= 3)
              {
                v150 = xmmword_100043460;
                v151 = *&qword_100043470;
                v152 = xmmword_100043480;
                v153 = *&off_100043490;
                sub_10002D0E8(&v150, 2, "\t%s: File recordType mismatch for id=%u (found=%u)\n", v133, v134, v135, v136, v137, "FixOrphanedFiles");
              }

LABEL_98:
              v39 = 32;
            }

            if (*(v158 + 2) != DWORD1(v193))
            {
              if (sub_10002D444() >= 3)
              {
                v150 = xmmword_100043460;
                v151 = *&qword_100043470;
                v152 = xmmword_100043480;
                v153 = *&off_100043490;
LABEL_104:
                sub_10002D0E8(&v150, 2, "\t%s: fileID do not match (threadKey=%u fileRecord=%u), parentID=%u\n", v111, v112, v113, v114, v115, "FixOrphanedFiles");
              }

LABEL_105:
              v9 = sub_100012D4C(*(a1 + 792), v158);
              if (sub_10002D444() >= 3)
              {
                v150 = xmmword_100043460;
                v151 = *&qword_100043470;
                v152 = xmmword_100043480;
                v153 = *&off_100043490;
                sub_10002D0E8(&v150, 2, "\t%s: Deleted thread record for id=%d (err=%d)\n", v138, v139, v140, v141, v142, "FixOrphanedFiles");
              }

              goto LABEL_107;
            }

LABEL_100:
            if (v39)
            {
              goto LABEL_105;
            }

LABEL_101:
            v9 = 0;
            goto LABEL_107;
          }

LABEL_31:
          if (sub_10002D444() >= 3)
          {
            v150 = xmmword_100043460;
            v151 = *&qword_100043470;
            v152 = xmmword_100043480;
            v153 = *&off_100043490;
            sub_10002D0E8(&v150, 2, "\t%s: Unknown record type.\n", v23, v24, v25, v26, v27, "FixOrphanedFiles");
          }

          goto LABEL_101;
        }

LABEL_25:
        v9 = 1;
        if (!v4)
        {
          goto LABEL_26;
        }

LABEL_20:
        sub_10001F16C(v225[1], &v225[2], v4, v190);
        if (sub_1000127A0(*(a1 + 792), v190, 0, v157, &v192, &v154 + 1, &v156))
        {
          goto LABEL_105;
        }

        if (v9)
        {
          if (v192 != 1)
          {
            if (sub_10002D444() >= 3)
            {
              v150 = xmmword_100043460;
              v151 = *&qword_100043470;
              v152 = xmmword_100043480;
              v153 = *&off_100043490;
              sub_10002D0E8(&v150, 2, "\t%s: Folder recordType mismatch for id=%u (found=%u)\n", v13, v14, v15, v16, v17, "FixOrphanedFiles");
            }

            goto LABEL_70;
          }

LABEL_51:
          v39 = 0;
        }

        else
        {
          if (v192 == 2)
          {
            goto LABEL_51;
          }

          if (sub_10002D444() >= 3)
          {
            v150 = xmmword_100043460;
            v151 = *&qword_100043470;
            v152 = xmmword_100043480;
            v153 = *&off_100043490;
            sub_10002D0E8(&v150, 2, "\t%s: File recordType mismatch for id=%u (found=%u)\n", v106, v107, v108, v109, v110, "FixOrphanedFiles");
          }

LABEL_70:
          v39 = 32;
        }

        if (*(v158 + 2) != DWORD2(v192))
        {
          if (sub_10002D444() >= 3)
          {
            v150 = xmmword_100043460;
            v151 = *&qword_100043470;
            v152 = xmmword_100043480;
            v153 = *&off_100043490;
            goto LABEL_104;
          }

          goto LABEL_105;
        }

        goto LABEL_100;
      }

      if (LOWORD(v225[0]) != 256)
      {
        if (LOWORD(v225[0]) != 512)
        {
          goto LABEL_31;
        }

        if ((v225[0] & 0x20000) == 0)
        {
          goto LABEL_101;
        }

        sub_100004B1C(a1);
        v11 = 0;
        v12 = *(v158 + 2);
        v155 = HIDWORD(v156);
        v5 = v226[1];
        goto LABEL_37;
      }
    }

    else if (LOWORD(v225[0]) - 1 >= 2)
    {
      if (LOWORD(v225[0]) != 3)
      {
        if (LOWORD(v225[0]) == 4)
        {
          goto LABEL_19;
        }

        goto LABEL_31;
      }

      goto LABEL_25;
    }

    sub_100004B1C(a1);
    v12 = *(v158 + 2);
    v155 = HIDWORD(v156);
    switch(v10)
    {
      case 1:
        v11 = 1;
        goto LABEL_35;
      case 2:
        v11 = 0;
LABEL_35:
        v5 = v225[2];
        break;
      case 256:
        v11 = 1;
        v5 = *(&v225[1] + 2);
        break;
      default:
        v11 = 0;
        break;
    }

LABEL_37:
    sub_10001F16C(v5, 0, v4, v190);
    v28 = sub_1000127A0(*(a1 + 792), v190, 0, v157, v224, &v154, &v156);
    if (v28 == 32)
    {
      goto LABEL_88;
    }

    v9 = v28;
    if (v28)
    {
      break;
    }

    if (!v4)
    {
      if (v11)
      {
        if (SLOWORD(v224[0]) != 768)
        {
          if (sub_10002D444() >= 3)
          {
            v150 = xmmword_100043460;
            v151 = *&qword_100043470;
            v152 = xmmword_100043480;
            v153 = *&off_100043490;
            sub_10002D0E8(&v150, 2, "\t%s: Folder thread recordType mismatch for id=%u (found=%u)\n", v34, v35, v36, v37, v38, "FixOrphanedFiles");
          }

          goto LABEL_76;
        }

LABEL_53:
        v9 = 0;
      }

      else
      {
        if (SLOWORD(v224[0]) == 1024)
        {
          goto LABEL_53;
        }

        if (sub_10002D444() >= 3)
        {
          v150 = xmmword_100043460;
          v151 = *&qword_100043470;
          v152 = xmmword_100043480;
          v153 = *&off_100043490;
          sub_10002D0E8(&v150, 2, "\t%s: File thread recordType mismatch for id=%u (found=%u)\n", v116, v117, v118, v119, v120, "FixOrphanedFiles");
        }

LABEL_76:
        v9 = 32;
      }

      if (v12 != *(v224 + 10))
      {
        if (sub_10002D444() >= 3)
        {
          v150 = xmmword_100043460;
          v151 = *&qword_100043470;
          v152 = xmmword_100043480;
          v153 = *&off_100043490;
          sub_10002D0E8(&v150, 2, "\t%s: parentID for id=%u do not match (fileKey=%u threadRecord=%u)\n", v121, v122, v123, v124, v125, "FixOrphanedFiles");
        }

        v9 = 32;
      }

      if (BYTE6(v158[0]) != BYTE14(v224[0]) || bcmp(v158 + 7, (v224 | 0xF), BYTE6(v158[0])))
      {
        if (sub_10002D444() >= 3)
        {
          v150 = xmmword_100043460;
          v151 = *&qword_100043470;
          v152 = xmmword_100043480;
          v153 = *&off_100043490;
          v149 = "FixOrphanedFiles";
          v105 = "\t%s: nodeName for id=%u do not match\n";
LABEL_85:
          sub_10002D0E8(&v150, 2, v105, v100, v101, v102, v103, v104, v149);
        }

LABEL_87:
        sub_100012D4C(*(a1 + 792), v157);
LABEL_88:
        v127 = v10 == 256 || v10 == 1;
        HIWORD(v154) = sub_10001D288(v158, v224, v4, v127);
        v9 = sub_100012C04(*(a1 + 792), v190, v224, HIWORD(v154), &v155);
        if (sub_10002D444() >= 3)
        {
          v150 = xmmword_100043460;
          v151 = *&qword_100043470;
          v152 = xmmword_100043480;
          v153 = *&off_100043490;
          sub_10002D0E8(&v150, 2, "\t%s: Created thread record for id=%u (err=%u)\n", v128, v129, v130, v131, v132, "FixOrphanedFiles");
        }

        goto LABEL_107;
      }

      goto LABEL_86;
    }

    if (v11)
    {
      if (SLOWORD(v224[0]) == 3)
      {
        goto LABEL_49;
      }

      if (sub_10002D444() >= 3)
      {
        v150 = xmmword_100043460;
        v151 = *&qword_100043470;
        v152 = xmmword_100043480;
        v153 = *&off_100043490;
        sub_10002D0E8(&v150, 2, "\t%s: Folder thread recordType mismatch for id=%u (found=%u)\n", v29, v30, v31, v32, v33, "FixOrphanedFiles");
      }
    }

    else
    {
      if (SLOWORD(v224[0]) == 4)
      {
LABEL_49:
        v9 = 0;
        goto LABEL_59;
      }

      if (sub_10002D444() >= 3)
      {
        v150 = xmmword_100043460;
        v151 = *&qword_100043470;
        v152 = xmmword_100043480;
        v153 = *&off_100043490;
        sub_10002D0E8(&v150, 2, "\t%s: File thread recordType mismatch for id=%u (found=%u)\n", v40, v41, v42, v43, v44, "FixOrphanedFiles");
      }
    }

    v9 = 32;
LABEL_59:
    if (v12 != DWORD1(v224[0]))
    {
      if (sub_10002D444() >= 3)
      {
        v150 = xmmword_100043460;
        v151 = *&qword_100043470;
        v152 = xmmword_100043480;
        v153 = *&off_100043490;
        sub_10002D0E8(&v150, 2, "\t%s: parentID for id=%u do not match (fileKey=%u threadRecord=%u)\n", v45, v46, v47, v48, v49, "FixOrphanedFiles");
      }

      v9 = 32;
    }

    if (HIWORD(v158[0]) != WORD4(v224[0]) || bcmp(&v158[1], (v224 | 0xA), 2 * HIWORD(v158[0])))
    {
      if (sub_10002D444() >= 3)
      {
        v150 = xmmword_100043460;
        v151 = *&qword_100043470;
        v152 = xmmword_100043480;
        v153 = *&off_100043490;
        sub_10002D0E8(&v150, 2, "\t%s: nodeName for id=%u do not match\n", v50, v51, v52, v53, v54, "FixOrphanedFiles");
        if ((dword_100043528 & 0x400) != 0)
        {
          v150 = xmmword_100043460;
          v151 = *&qword_100043470;
          v152 = xmmword_100043480;
          v153 = *&off_100043490;
          sub_10002D0E8(&v150, 2, "\tFile/Folder record:\n", v55, v56, v57, v58, v59, v144);
          sub_10002E7B8(v158, LOWORD(v158[0]) + 2, 0, v60, v61, v62, v63, v64);
          v150 = xmmword_100043460;
          v151 = *&qword_100043470;
          v152 = xmmword_100043480;
          v153 = *&off_100043490;
          sub_10002D0E8(&v150, 2, "--\n", v65, v66, v67, v68, v69, v145);
          sub_10002E7B8(v225, HIWORD(v154), 0, v70, v71, v72, v73, v74);
          v150 = xmmword_100043460;
          v151 = *&qword_100043470;
          v152 = xmmword_100043480;
          v153 = *&off_100043490;
          sub_10002D0E8(&v150, 2, "\n", v75, v76, v77, v78, v79, v146);
          v150 = xmmword_100043460;
          v151 = *&qword_100043470;
          v152 = xmmword_100043480;
          v153 = *&off_100043490;
          sub_10002D0E8(&v150, 2, "\tThread record:\n", v80, v81, v82, v83, v84, v147);
          sub_10002E7B8(v157, LOWORD(v157[0]) + 2, 0, v85, v86, v87, v88, v89);
          v150 = xmmword_100043460;
          v151 = *&qword_100043470;
          v152 = xmmword_100043480;
          v153 = *&off_100043490;
          sub_10002D0E8(&v150, 2, "--\n", v90, v91, v92, v93, v94, v148);
          sub_10002E7B8(v224, v154, 0, v95, v96, v97, v98, v99);
          v150 = xmmword_100043460;
          v151 = *&qword_100043470;
          v152 = xmmword_100043480;
          v153 = *&off_100043490;
          v105 = "\n";
          goto LABEL_85;
        }
      }

      goto LABEL_87;
    }

LABEL_86:
    if (v9 == 32)
    {
      goto LABEL_87;
    }

LABEL_107:
    v6 = 1;
  }

  while (!v9);
  if (v9 == 32)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_10001C220(uint64_t a1, int a2)
{
  memset(v5, 0, 106);
  v3 = sub_10001EDA4(a2);
  return sub_10001EDB4(a1, v3, v5);
}

uint64_t sub_10001C274(uint64_t a1, int a2)
{
  memset(v38, 0, sizeof(v38));
  v8 = *(sub_10001EDA4(a2) + 16);
  v9 = *(v8 + 760);
  v10 = *(v9 + 2);
  if (v10 < 1)
  {
    return 0;
  }

  else
  {
    v11 = 0;
    v12 = *v9;
    v13 = 2;
    while (1)
    {
      *(a1 + 56) = v11;
      v14 = sub_100006D88(v8, v11, v38, v3, v4, v5, v6, v7);
      if (v14)
      {
        break;
      }

      v15 = sub_100007510(v8, *&v38[0], v13);
      v16 = v15;
      v17 = *&v38[0];
      v18 = *(*&v38[0] + *(v8 + 52) - 2 * (v13 & 0x7FFF) - 2);
      v19 = *&v38[0] + v18;
      v11 = **&v38[0];
      if (v10 >= v15)
      {
        v20 = v15;
      }

      else
      {
        v20 = v10;
      }

      memmove((*&v38[0] + v18), v12, v20);
      sub_100006FE4(v8, v38, v21, v22, v23, v24, v25, v26);
      v28 = v20;
      v10 -= v20;
      if (v10)
      {
        if (!v11)
        {
          sub_10001ECB0(a1, 4294966783, v27, v3, v4, v5, v6, v7);
          sub_100006F74(v8, v38, v32, v33, v34, v35, v36, v37);
          return -513;
        }

        v13 = 0;
        v12 += v28;
        if (v10 > 0)
        {
          continue;
        }
      }

      if (v28 < v16)
      {
        v29 = v17 + v18 + v28;
        v30 = v17 + v18 + v16;
        if (v29 + 1 > v30)
        {
          v30 = v29 + 1;
        }

        bzero((v19 + v28), v30 - v29);
      }

      sub_100006FE4(v8, v38, v27, v3, v4, v5, v6, v7);
      return 0;
    }
  }

  return v14;
}

uint64_t sub_10001C3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  memset(v18, 0, 512);
  v17 = 0;
  v16 = 0;
  v9 = sub_100012A1C(*(a1 + 792), -32767, v18, &v19, &v17, &v16, a7, a8);
  if (v9)
  {
    return v9;
  }

  do
  {
    if (v19 > 0x1FFu)
    {
      if (v19 == 512)
      {
        if ((BYTE2(v19) & 0x7C) == 0 && WORD4(v20) == 0 && WORD1(v21) == 0 && *(&v25 + 2) == 0)
        {
          goto LABEL_28;
        }

        BYTE2(v19) &= 0x83u;
        WORD4(v20) = 0;
        WORD1(v21) = 0;
        *(&v25 + 2) = 0;
      }

      else
      {
        if (v19 != 768 && v19 != 1024 || !*(&v19 + 2) && !*(&v19 + 6))
        {
          goto LABEL_28;
        }

        *(&v19 + 2) = 0;
      }
    }

    else
    {
      if (v19 != 1)
      {
        if (v19 == 2)
        {
          if ((WORD1(v19) & 0xFF7C) == 0)
          {
            goto LABEL_28;
          }

          BYTE2(v19) &= 0x83u;
          WORD1(v19) = BYTE2(v19);
          goto LABEL_27;
        }

        if (v19 != 256)
        {
          goto LABEL_28;
        }
      }

      if (!WORD1(v19))
      {
        goto LABEL_28;
      }

      WORD1(v19) = 0;
    }

LABEL_27:
    v9 = sub_100012E70(*(a1 + 792), v18, v16, &v19, v17, &v16);
    if (v9)
    {
      return v9;
    }

LABEL_28:
    v9 = sub_100012A1C(*(a1 + 792), 1, v18, &v19, &v17, &v16, v10, v11);
  }

  while (!v9);
  if (v9 == 32)
  {
    LOWORD(v9) = 0;
  }

  return v9;
}

uint64_t sub_10001C610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = 0;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  memset(v14, 0, 268);
  v13 = 0;
  *(a1 + 5312) = 0u;
  *(a1 + 5328) = 0u;
  *(a1 + 5344) = 0u;
  *(a1 + 5360) = 0u;
  *(a1 + 5376) = 0u;
  *(a1 + 5392) = 0u;
  *(a1 + 5408) = 0u;
  *(a1 + 5424) = 0u;
  *(a1 + 5440) = 0u;
  *(a1 + 5456) = 0;
  v9 = sub_100012A1C(*(a1 + 808), -32767, v14, v15, &v13, &v17, a7, a8);
  if (!v9)
  {
    do
    {
      LOWORD(v9) = sub_100024F9C(a1, v14, v15);
      if (v9)
      {
        break;
      }

      v9 = sub_100012A1C(*(a1 + 808), 1, v14, v15, &v13, &v17, v10, v11);
    }

    while (!v9);
    if (v9 == 32)
    {
      LOWORD(v9) = 0;
    }
  }

  return v9;
}

uint64_t sub_10001C714(uint64_t a1)
{
  sub_100020B5C();
  if (!v2)
  {
LABEL_55:
    LOWORD(v9) = 0;
    return v9;
  }

  v5 = v2;
  v49 = 0;
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  v64 = 0u;
  memset(v65, 0, 28);
  v62 = 0u;
  v63 = 0u;
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
  *v50 = 0u;
  v51 = 0u;
  v46 = 0;
  v97 = 0u;
  v96 = 0u;
  v95 = 0u;
  v94 = 0u;
  v93 = 0u;
  v92 = 0u;
  v91 = 0u;
  v90 = 0u;
  v89 = 0u;
  v88 = 0u;
  v87 = 0u;
  v86 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v129 = 0u;
  v128 = 0u;
  v127 = 0u;
  v126 = 0u;
  v125 = 0u;
  v124 = 0u;
  v123 = 0u;
  v122 = 0u;
  v121 = 0u;
  v120 = 0u;
  v119 = 0u;
  v118 = 0u;
  v117 = 0u;
  v116 = 0u;
  v115 = 0u;
  v114 = 0u;
  v113 = 0u;
  v112 = 0u;
  v111 = 0u;
  v110 = 0u;
  v109 = 0u;
  v108 = 0u;
  v107 = 0u;
  v106 = 0u;
  v105 = 0u;
  v104 = 0u;
  v103 = 0u;
  v102 = 0u;
  v101 = 0u;
  v100 = 0u;
  v99 = 0u;
  v98 = 0u;
  v45 = 0;
  v6 = sub_100012A1C(*(a1 + 808), -32767, v50, v47, &v46, &v49, v3, v4);
  if (v6 == 32)
  {
    goto LABEL_32;
  }

  LOWORD(v9) = v6;
  if (v6)
  {
    return v9;
  }

  v10 = 0;
  v11 = 0;
  v9 = 0;
  while (1)
  {
    v12 = v50[1];
    if (v50[1] != v11)
    {
      break;
    }

    if (!v10)
    {
      goto LABEL_23;
    }

LABEL_28:
    if (sub_100012A1C(*(a1 + 808), 1, v50, v47, &v46, &v49, v7, v8))
    {
      if (v9 == 1)
      {
        LOWORD(v9) = sub_100012E70(*(a1 + 792), &v98, 0, &v66, v45, &v49);
        goto LABEL_31;
      }

      goto LABEL_32;
    }
  }

  if (v9 == 1)
  {
    v13 = sub_100012E70(*(a1 + 792), &v98, 0, &v66, v45, &v49);
    if (v13)
    {
      LOWORD(v9) = v13;
      if (sub_10002D444() >= 3)
      {
        v41 = xmmword_100043460;
        v42 = *&qword_100043470;
        v43 = xmmword_100043480;
        v44 = *&off_100043490;
        sub_10002D0E8(&v41, 2, "\t%s: Error in replacing catalog record for id=%u\n", v32, v33, v34, v35, v36, "RepairAttributesCheckABT");
      }

      return v9;
    }

    v12 = v50[1];
  }

  if (!sub_10001D3B8(a1, v12, v5, &v98, &v66, &v45))
  {
    if ((BYTE2(v66) & 4) != 0)
    {
      v9 = 0;
    }

    else
    {
      WORD1(v66) |= 4u;
      v9 = 1;
    }

    v11 = v50[1];
LABEL_23:
    if (bcmp((v50 | 0xE), (a1 + 5464), *(a1 + 5720)))
    {
      v10 = 0;
    }

    else if ((BYTE2(v66) & 8) != 0)
    {
      v10 = 1;
    }

    else
    {
      WORD1(v66) |= 8u;
      v10 = 1;
      v9 = 1;
    }

    goto LABEL_28;
  }

  if (sub_10002D444() >= 3)
  {
    v41 = xmmword_100043460;
    v42 = *&qword_100043470;
    v43 = xmmword_100043480;
    v44 = *&off_100043490;
    sub_10002D0E8(&v41, 2, "\t%s: No matching catalog record found for id=%u\n", v14, v15, v16, v7, v8, "RepairAttributesCheckABT");
  }

  if (v50[1] <= 0xFu && v50[1] != 2)
  {
    v9 = 0;
    goto LABEL_28;
  }

  v9 = sub_10001D204(a1, v50, v47);
  if (!v9)
  {
    goto LABEL_28;
  }

  v37 = sub_10002D444();
  if (v37 >= 3)
  {
    v41 = xmmword_100043460;
    v42 = *&qword_100043470;
    v43 = xmmword_100043480;
    v44 = *&off_100043490;
    sub_10002D0E8(&v41, 2, "\t%s: Error in deleting attribute record for id=%u\n", v38, v39, v40, v7, v8, "RepairAttributesCheckABT");
  }

LABEL_31:
  if (!v9)
  {
LABEL_32:
    LOWORD(v41) = 0;
    LODWORD(v47[0]) = 0;
    v129 = 0u;
    v128 = 0u;
    v127 = 0u;
    v126 = 0u;
    v125 = 0u;
    v124 = 0u;
    v123 = 0u;
    v122 = 0u;
    v121 = 0u;
    v120 = 0u;
    v119 = 0u;
    v118 = 0u;
    v117 = 0u;
    v116 = 0u;
    v115 = 0u;
    v114 = 0u;
    v113 = 0u;
    v112 = 0u;
    v111 = 0u;
    v110 = 0u;
    v109 = 0u;
    v108 = 0u;
    v107 = 0u;
    v106 = 0u;
    v105 = 0u;
    v104 = 0u;
    v103 = 0u;
    v102 = 0u;
    v101 = 0u;
    v100 = 0u;
    v99 = 0u;
    v98 = 0u;
    v64 = 0u;
    memset(v65, 0, sizeof(v65));
    v62 = 0u;
    v63 = 0u;
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
    *v50 = 0u;
    v51 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    v93 = 0u;
    v92 = 0u;
    v91 = 0u;
    v90 = 0u;
    v89 = 0u;
    v88 = 0u;
    v87 = 0u;
    v86 = 0u;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v17 = sub_100012A1C(*(a1 + 792), -32767, v50, &v98, &v41, v47, v7, v8);
    if (v17)
    {
LABEL_33:
      LOWORD(v9) = v17;
      return v9;
    }

    while (2)
    {
      if (v98 - 3 < 0xFFFFFFFE || (BYTE2(v98) & 0xC) == 0)
      {
        goto LABEL_54;
      }

      v20 = DWORD2(v98);
      bzero(&v66, 0x220uLL);
      WORD2(v67) = 12;
      DWORD2(v67) = v20;
      LOWORD(v17) = sub_1000052E0(*(a1 + 808), &v66, 0xFFFFFFFF, 0, 0, &v66);
      if ((v17 & 0xFFDF) != 0)
      {
        goto LABEL_33;
      }

      if (!sub_100005678(*(a1 + 808), 1u, &v66, 0, 0, v21, v22, v23) && DWORD2(v67) == v20)
      {
        v24 = 0;
        do
        {
          if (!bcmp(&v68 + 2, (a1 + 5464), *(a1 + 5720)))
          {
            v24 = 1;
          }

          if (sub_100005678(*(a1 + 808), 1u, &v66, 0, 0, v25, v26, v27))
          {
            v28 = 0;
          }

          else
          {
            v28 = DWORD2(v67) == v20;
          }
        }

        while (v28);
        if (!v24)
        {
          v29 = WORD1(v98);
          goto LABEL_49;
        }

LABEL_54:
        if (sub_100012A1C(*(a1 + 792), 1, v50, &v98, &v41, v47, v18, v19))
        {
          goto LABEL_55;
        }

        continue;
      }

      break;
    }

    v29 = WORD1(v98);
    if ((BYTE2(v98) & 4) != 0)
    {
      v30 = WORD1(v98) & 0xFFFB;
      if ((BYTE2(v98) & 8) != 0)
      {
        goto LABEL_52;
      }
    }

    else
    {
LABEL_49:
      v30 = v29;
      if ((v29 & 8) == 0)
      {
        goto LABEL_54;
      }

LABEL_52:
      v30 &= ~8u;
    }

    WORD1(v98) = v30;
    v17 = sub_100012E70(*(a1 + 792), v50, 0, &v98, v41, v47);
    if (v17)
    {
      goto LABEL_33;
    }

    goto LABEL_54;
  }

  return v9;
}

uint64_t sub_10001CDA4(_BYTE *a1)
{
  sub_10001F308();
  v3 = v2;
  memset(__dst, 0, sizeof(__dst));
  memset(__src, 0, sizeof(__src));
  sub_100020BAC();
  if (v4)
  {
    v5 = 24;
  }

  else
  {
    v5 = 6;
  }

  if ((v5 & ~*v3) == 0)
  {
    v6 = 0;
    goto LABEL_30;
  }

  v7 = sub_10001F5B8(__dst);
  v6 = v7;
  if (!v7 || v7 == 65479 || v7 == 65476)
  {
    sub_100020BAC();
    if (v8)
    {
      v9 = 8;
    }

    else
    {
      v9 = 2;
    }

    if ((*v3 & v9) == 0)
    {
      v6 = -60;
    }

    v10 = sub_10001F43C(__src);
    v11 = v10;
    if (!v10 || v10 == 65479 || v10 == 65476)
    {
      sub_100020BAC();
      if (!v6)
      {
        memmove(__src[0], __dst[0], 0x200uLL);
        sub_100004D50(*(v3 + 8), __src, 1u);
        __src[0] = 0;
        *a1 = 1;
        sub_100020BAC();
        v16 = *v3 | 0x10;
        if (!v17)
        {
          v16 = *v3 | 4;
        }

        goto LABEL_29;
      }

      if (v12)
      {
        v13 = 16;
      }

      else
      {
        v13 = 4;
      }

      v6 = -57;
      if ((*v3 & v13) != 0 && !v11)
      {
        memmove(__dst[0], __src[0], 0x200uLL);
        sub_100004D50(*(v3 + 8), __dst, 1u);
        __dst[0] = 0;
        *a1 = 1;
        sub_100020BAC();
        if (v14)
        {
          v15 = 8;
        }

        else
        {
          v15 = 2;
        }

        v16 = *v3 | v15;
LABEL_29:
        v6 = 0;
        *v3 = v16;
      }
    }
  }

LABEL_30:
  if (__dst[0])
  {
    sub_100004D50(*(v3 + 8), __dst, 0);
  }

  if (__src[0])
  {
    sub_100004D50(*(v3 + 8), __src, 0);
  }

  return v6;
}

uint64_t sub_10001CF94()
{
  sub_10001F308();
  v1 = v0;
  memset(__src, 0, sizeof(__src));
  memset(__dst, 0, sizeof(__dst));
  v2 = sub_10001F888(__src);
  v3 = v2;
  if (!v2 || (v2 != 65479 ? (v4 = v2 == 65476) : (v4 = 1), v4))
  {
    v5 = sub_10001F7EC(__dst);
    if (!v5 || v5 == 65479 || v5 == 65476)
    {
      if (!v3 && (*v1 & 8) != 0)
      {
        memmove(__dst[0], __src[0], 0x200uLL);
        sub_100004D50(*(v1 + 8), __dst, 1u);
        LOWORD(v3) = 0;
        __dst[0] = 0;
        *v1 |= 0x10u;
      }

      else
      {
        if (!v5 && (*v1 & 0x10) != 0)
        {
          memmove(__src[0], __dst[0], 0x200uLL);
          sub_100004D50(*(v1 + 8), __src, 1u);
          LOWORD(v3) = 0;
          __src[0] = 0;
          *v1 |= 8u;
          goto LABEL_18;
        }

        LOWORD(v3) = -57;
      }
    }
  }

  if (__src[0])
  {
    sub_100004D50(*(v1 + 8), __src, 0);
  }

LABEL_18:
  if (__dst[0])
  {
    sub_100004D50(*(v1 + 8), __dst, 0);
  }

  return v3;
}

uint64_t sub_10001D0E8(uint64_t a1, int a2)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = 0;
  bzero(v12, 0x220uLL);
  v13 = 12;
  v14 = a2;
  v11[0] = v9;
  v11[1] = 0x100000058;
  result = sub_1000052E0(*(a1 + 808), v12, 0xFFFFFFFF, v11, &v8, v12);
  if ((result & 0xFFFFFFDF) == 0)
  {
    do
    {
      LODWORD(result) = sub_100005678(*(a1 + 808), 1u, v12, v11, &v8, v5, v6, v7);
      if (result)
      {
        break;
      }

      if (v14 != a2)
      {
        return 0;
      }

      LODWORD(result) = sub_10001D204(a1, &v13, v9);
    }

    while (!result);
    if (result == 32)
    {
      return 0;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_10001D204(uint64_t a1, unsigned __int16 *a2, _DWORD *a3)
{
  result = sub_100012D4C(*(a1 + 808), a2);
  if (!result)
  {
    v8 = 0;
    v7 = 0;
    *(a1 + 20) |= 0xC000u;
    if (*a3 == 32)
    {
      v6 = 6;
    }

    else
    {
      result = 0;
      if (*a3 != 48)
      {
        return result;
      }

      v6 = 2;
    }

    return sub_100013FD4(*(a1 + 776), &a3[v6], &v8, &v7);
  }

  return result;
}

uint64_t sub_10001D288(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a3)
  {
    if (a4)
    {
      v5 = 3;
    }

    else
    {
      v5 = 4;
    }

    *a2 = v5;
    *(a2 + 2) = 0;
    *(a2 + 4) = *(a1 + 2);
    memmove((a2 + 8), (a1 + 6), 2 * *(a1 + 6) + 2);
    return 2 * *(a2 + 8) + 10;
  }

  else
  {
    *(a2 + 30) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    if (a4)
    {
      v7 = 768;
    }

    else
    {
      v7 = 1024;
    }

    *a2 = v7;
    *(a2 + 10) = *(a1 + 2);
    memmove((a2 + 14), (a1 + 6), *(a1 + 6) + 1);
    return 46;
  }
}

uint64_t sub_10001D334(int a1, _BYTE *a2, unsigned int a3, uint64_t a4)
{
  sub_100020B5C();
  if (v8 != 1)
  {
    sub_100030920();
  }

  v11 = 0;
  *(a4 + 2) = 0;
  *(a4 + 4) = a1;
  *(a4 + 8) = 0;
  result = sub_10001EBC8(a2, a3, (a4 + 14), &v11, 254);
  v10 = v11;
  *(a4 + 12) = v11 >> 1;
  *a4 = v10 + 12;
  return result;
}

uint64_t sub_10001D3B8(uint64_t a1, void *a2, int a3, unsigned __int16 *a4, unsigned __int16 *a5, unsigned __int16 *a6)
{
  memset(v46, 0, 512);
  memset(__dst, 0, sizeof(__dst));
  v44 = 0;
  sub_10001F16C(a2, 0, a3, v46);
  v11 = sub_1000127A0(*(a1 + 792), v46, 0, a4, a5, a6, &v44);
  if (v11)
  {
    v17 = v11;
    if (byte_10004350E)
    {
      v40 = xmmword_100043460;
      v41 = *&qword_100043470;
      v42 = xmmword_100043480;
      v43 = *&off_100043490;
      sub_10002D0E8(&v40, 2, "%s: No matching catalog thread record found\n", v12, v13, v14, v15, v16, "GetCatalogRecord");
    }
  }

  else if (*a5 - 1 >= 2)
  {
    v18 = *(a4 + 1);
    sub_10001F0E8(a5 + 8, __dst, a3);
    sub_10001F16C(*(a5 + 1), __dst, a3, a4);
    v19 = sub_1000127A0(*(a1 + 792), a4, 0, a4, a5, a6, &v44);
    if (v19)
    {
      v17 = v19;
      if (byte_10004350E)
      {
        v40 = xmmword_100043460;
        v41 = *&qword_100043470;
        v42 = xmmword_100043480;
        v43 = *&off_100043490;
        sub_10002D0E8(&v40, 2, "%s: No matching catalog record found\n", v21, v22, v23, v24, v25, "GetCatalogRecord");
      }

      if ((dword_100043528 & 0x400) != 0)
      {
        v40 = xmmword_100043460;
        v41 = *&qword_100043470;
        v42 = xmmword_100043480;
        v43 = *&off_100043490;
        sub_10002D0E8(&v40, 2, "Searching for key:\n", v21, v22, v23, v24, v25, v39);
        if ((*(*(a1 + 840) + 136) & 2) != 0)
        {
          v31 = *a4 + 2;
        }

        else
        {
          v31 = *a4 + 1;
        }

        sub_10002E7B8(a4, v31, 0, v26, v27, v28, v29, v30);
      }
    }

    else if (v18 == *(a5 + 2))
    {
      return 0;
    }

    else
    {
      sub_10001ECB0(a1, 572, v20, v21, v22, v23, v24, v25);
      if (sub_10002D444() >= 3)
      {
        v37 = *(a5 + 2);
        v40 = xmmword_100043460;
        v41 = *&qword_100043470;
        v42 = xmmword_100043480;
        v43 = *&off_100043490;
        sub_10002D0E8(&v40, 2, "\t%s: fileID=%u, thread.key.parentID=%u, record.fileID=%u\n", v32, v33, v34, v35, v36, "GetCatalogRecord");
      }

      v17 = 0;
      *(a1 + 24) |= 0x800u;
    }
  }

  else
  {
    return 32;
  }

  return v17;
}

uint64_t sub_10001D6BC(uint64_t a1, void *a2)
{
  v66 = 0;
  v65 = 0;
  sub_100020B5C();
  v5 = v4;
  v6 = sub_10001DFE4(a1, "DamagedFiles");
  if (!v6)
  {
    v16 = 0;
    v14 = 0;
    goto LABEL_8;
  }

  v13 = v6;
  HIDWORD(v66) = 1020;
  v14 = malloc_type_malloc(0x3FCuLL, 0xA1F737FFuLL);
  if (!v14)
  {
    v16 = 0;
    goto LABEL_11;
  }

  LODWORD(v66) = 4096;
  v15 = malloc_type_malloc(0x1000uLL, 0x74BDA447uLL);
  v16 = v15;
  if (!v15)
  {
LABEL_11:
    LOWORD(v20) = -108;
    goto LABEL_12;
  }

  if (a2 < 0x10)
  {
    v28 = __sprintf_chk(v14, 0, 0x3FCuLL, "%08x ", a2);
    HIDWORD(v66) = 1020 - v28;
    sub_100016C5C(a2, &v14[v28], &v66 + 1);
    v29 = HIDWORD(v66) + v28;
    HIDWORD(v66) += v28;
    v30 = __sprintf_chk(v16, 0, 0x1000uLL, "System File: ");
    LODWORD(v66) = 4096 - v30;
    sub_100016C5C(a2, &v16[v30], &v66);
    v31 = v66 + v30;
    LODWORD(v66) = v66 + v30;
LABEL_23:
    v32 = 0x8000;
    goto LABEL_24;
  }

  v17 = __sprintf_chk(v15, 0, 0x1000uLL, "..");
  LODWORD(v66) = 4096 - v17;
  v18 = __sprintf_chk(v14, 0, 0x3FCuLL, "%08x ", a2);
  HIDWORD(v66) = 1020 - v18;
  v19 = sub_100016CD8(a1, a2, &v16[v17], &v66, &v14[v18], &v66 + 1, &v65);
  if (v19)
  {
    LOWORD(v20) = v19;
LABEL_12:
    v21 = (a1 + 36);
    if ((*(a1 + 36) & 0x4000) != 0)
    {
      goto LABEL_15;
    }

    v25 = *(a1 + 888);
    v74[0] = *(a1 + 872);
    v74[1] = v25;
    v26 = *(a1 + 920);
    v74[2] = *(a1 + 904);
    v75 = v26;
    sub_10002D0A4(v74, 573, v7, v8, v9, v10, v11, v12, v62);
    v24 = 0x4000;
LABEL_14:
    *v21 |= v24;
LABEL_15:
    if (!v16)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v29 = HIDWORD(v66) + v18;
  v31 = v66 + v17;
  LODWORD(v66) = v66 + v17;
  HIDWORD(v66) = v29;
  if (!v5)
  {
    goto LABEL_23;
  }

  v43 = (v65 >> 5) & 1;
  if (v31 > 0x400)
  {
    v43 = 1;
  }

  if (v43)
  {
    v32 = 0x8000;
  }

  else
  {
    v32 = -24576;
  }

LABEL_24:
  memset(__src, 0, sizeof(__src));
  v103 = 0u;
  v102 = 0u;
  v101 = 0u;
  v100 = 0u;
  v99 = 0u;
  v98 = 0u;
  v97 = 0u;
  v96 = 0u;
  v95 = 0u;
  v94 = 0u;
  v93 = 0u;
  v92 = 0u;
  v91 = 0u;
  v90 = 0u;
  v89 = 0u;
  v88 = 0u;
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v77 = 0u;
  v76 = 0u;
  v75 = 0u;
  memset(v74, 0, sizeof(v74));
  memset(v72, 0, 512);
  memset(v71, 0, 512);
  v70 = 0;
  v69 = 0;
  v68 = 0;
  sub_100020B5C();
  v34 = v33;
  if (v33)
  {
    v67 = 0;
    if (v29 > 0xFE)
    {
      v64 = v31;
      v37 = v32;
      v38 = malloc_type_malloc(4 * v29, 0x25ED91F5uLL);
      if (!v38)
      {
        LOWORD(v20) = -108;
        goto LABEL_65;
      }

      sub_10001EBC8(v14, v29, v38, &v67, 4 * v29);
      v39 = v67 >> 1;
      if (v67 >> 1 >= 0xFF)
      {
        v39 = 255;
      }

      v67 = v39;
      __memcpy_chk();
      free(v38);
      LOWORD(v35) = v67;
      v32 = v37;
      v31 = v64;
    }

    else
    {
      sub_10001EBC8(v14, v29, &__src[1], &v67, 510);
      v35 = v67 >> 1;
    }

    __src[0] = v35;
  }

  else
  {
    if (v29 >= 0x1F)
    {
      v36 = 31;
    }

    else
    {
      v36 = v29;
    }

    LOBYTE(__src[0]) = v36;
    __memcpy_chk();
  }

  sub_10001F16C(v13, __src, v34, v72);
  if (sub_1000127A0(*(a1 + 792), v72, 0, 0, v74, &v69, &v70) != 32)
  {
    LODWORD(v38) = 0;
    LOWORD(v20) = 17;
    goto LABEL_65;
  }

  v63 = v32;
  v40 = *(a1 + 776);
  v41 = *(v40 + 40);
  if (v31 % v41)
  {
    LODWORD(v38) = v31 / v41 + 1;
  }

  else
  {
    LODWORD(v38) = v31 / v41;
  }

  if (v38)
  {
    v42 = sub_10002B498(v40, v38, &v68);
    if (v42 || (v42 = sub_100002FA4(*(*(a1 + 776) + 208), (*(*(a1 + 776) + 118) + (*(*(a1 + 776) + 40) >> 9) * v68) << 9, *(*(a1 + 776) + 40) * v38, v16, v31)) != 0)
    {
      LOWORD(v20) = v42;
      goto LABEL_65;
    }

    LOWORD(v20) = 0;
    v40 = *(a1 + 776);
  }

  else
  {
    LOWORD(v20) = 32;
  }

  v44 = *(v40 + 64);
  if (!v34 && v44 == -1)
  {
    goto LABEL_65;
  }

  v69 = sub_10001D288(v72, v74, v34, 0);
  sub_10001F16C(v44, 0, v34, v71);
  v45 = sub_100012C04(*(a1 + 792), v71, v74, v69, &v70);
  v20 = v45;
  if (v34 && v45 == 33)
  {
    do
    {
      v44 = (v44 + 1);
      if (v44 <= 0xF)
      {
        v46 = *(a1 + 776);
        *(v46 + 4) |= 0x1000u;
        *(v46 + 196) |= 0xFF00u;
        v44 = 16;
      }

      sub_10001F16C(v44, 0, v34, v71);
      v47 = sub_100012C04(*(a1 + 792), v71, v74, v69, &v70);
    }

    while (v47 == 33);
    v20 = v47;
  }

  if (v20)
  {
    goto LABEL_65;
  }

  v48 = *(*(a1 + 776) + 4);
  if (v63 == 40960 && !v34)
  {
    v69 = 0;
    sub_100012D4C(*(a1 + 792), v71);
    LOWORD(v20) = -50;
    goto LABEL_65;
  }

  bzero(v74, 0x208uLL);
  if (v34)
  {
    v50 = sub_10001E7C0((v48 >> 29) & 1);
    LOWORD(v74[0]) = 2;
    *(&v74[0] + 1) = __PAIR64__(v50, v44);
    LODWORD(v74[1]) = v50;
    DWORD1(v74[1]) = v50;
    LODWORD(v74[2]) = getuid();
    DWORD1(v74[2]) = getgid();
    WORD5(v74[2]) = v63 | 0x1B6;
    *&v75 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v63 == 40960), 0x1FuLL)), 0x72686170736C6E6BLL, 0x7474787454455854);
    *(&v77 + 1) = v31;
    *(&v78 + 4) = __PAIR64__(v68, v38);
    HIDWORD(v78) = v38;
    v51 = 248;
  }

  else
  {
    v52 = sub_10001E814(1);
    LOWORD(v74[0]) = 512;
    DWORD1(v74[1]) = v44;
    HIDWORD(v74[2]) = v52;
    LODWORD(v75) = v52;
    *(v74 + 4) = 0x7474787454455854;
    *(&v74[1] + 10) = v31;
    *(&v74[1] + 14) = *(*(a1 + 776) + 40) * v38;
    WORD5(v76) = v68;
    WORD6(v76) = v38;
    v51 = 102;
  }

  v69 = v51;
  if (sub_100012C04(*(a1 + 792), v72, v74, v51, &v70))
  {
    sub_100012D4C(*(a1 + 792), v71);
    LOWORD(v20) = -50;
LABEL_65:
    if (v20)
    {
      v49 = v68 == 0;
    }

    else
    {
      v49 = 1;
    }

    if (!v49)
    {
      sub_10002AECC(v68, v38);
    }

    goto LABEL_70;
  }

  v60 = *(a1 + 776);
  *(v60 + 64) = v44 + 1;
  if ((v44 + 1) < 0x10)
  {
    *(v60 + 4) |= 0x1000u;
    *(v60 + 64) = 16;
  }

  *(v60 + 196) = *(v60 + 196) | 0xFF00;
  v61 = *(a1 + 792);
  *(*(v61 + 16) + 132) |= 1u;
  sub_1000060FC(v61, v53, v54, v55, v56, v57, v58, v59);
  LOWORD(v20) = sub_100013274(*(a1 + 776), v13, 0, 2, 0, 1);
LABEL_70:
  if (v20 && v20 != 17)
  {
    goto LABEL_12;
  }

LABEL_8:
  v21 = (a1 + 36);
  if ((*(a1 + 36) & 0x80000000) == 0)
  {
    v22 = *(a1 + 888);
    v74[0] = *(a1 + 872);
    v74[1] = v22;
    v23 = *(a1 + 920);
    v74[2] = *(a1 + 904);
    v75 = v23;
    sub_10002D0A4(v74, 117, v7, v8, v9, v10, v11, v12, "DamagedFiles");
    LOWORD(v20) = 0;
    v24 = 0x8000;
    goto LABEL_14;
  }

  LOWORD(v20) = 0;
  if (v16)
  {
LABEL_16:
    free(v16);
  }

LABEL_17:
  if (v14)
  {
    free(v14);
  }

  return v20;
}

uint64_t sub_10001DFE4(uint64_t a1, const char *a2)
{
  memset(__src, 0, sizeof(__src));
  sub_100020B5C();
  v5 = v4;
  v6 = *(a1 + 792);
  v7 = strlen(a2);
  if (v5)
  {
    LOWORD(__src[0]) = v7;
    v8 = v7;
    if (v7)
    {
      v9 = __src + 1;
      do
      {
        v10 = *a2++;
        *v9++ = v10;
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    LOBYTE(__src[0]) = v7;
    __memcpy_chk();
  }

  v29 = 0;
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  memset(v30, 0, sizeof(v30));
  sub_10001F16C(2, __src, v5, v27);
  if (!sub_1000127A0(v6, v27, 0, 0, v30, &v29, &v28))
  {
    if (v5)
    {
      if (LOWORD(v30[0]) == 1)
      {
        return DWORD2(v30[0]);
      }
    }

    else if (LOWORD(v30[0]) == 256)
    {
      return *(v30 + 6);
    }

    return 0;
  }

  v11 = *(*(a1 + 776) + 64);
  if (!v5 && v11 == -1)
  {
    return 0;
  }

  v29 = sub_10001D288(v27, v30, v5, 1);
  while (1)
  {
    memset(v25, 0, 512);
    sub_10001F16C(v11, 0, v5, v25);
    v12 = sub_100012C04(v6, v25, v30, v29, &v28);
    if (!v5 || v12 != 33)
    {
      break;
    }

    v11 = (v11 + 1);
    if (v11 <= 0xF)
    {
      v13 = *(a1 + 776);
      *(v13 + 4) |= 0x1000u;
      *(v13 + 196) |= 0xFF00u;
      v11 = 16;
    }
  }

  if (v12)
  {
    return 0;
  }

  v14 = *(a1 + 968);
  if (!v14)
  {
    LOWORD(v14) = 1023;
  }

  v29 = sub_10001E3F0(a1, v14, v11, v5, v30);
  if (sub_100012C04(v6, v27, v30, v29, &v28))
  {
    return 0;
  }

  v15 = *(a1 + 776);
  *(v15 + 64) = v11 + 1;
  if ((v11 + 1) <= 0xF)
  {
    *(v15 + 4) |= 0x1000u;
    *(v15 + 64) = 16;
  }

  *(v15 + 196) |= 0xFF00u;
  sub_100013274(v15, 2, 0, 1, 0, 1);
  v16 = *(a1 + 792);
  *(*(v16 + 16) + 132) |= 1u;
  sub_1000060FC(v16, v17, v18, v19, v20, v21, v22, v23);
  return v11;
}

uint64_t sub_10001E3F0(uint64_t a1, __int16 a2, void *a3, int a4, char *a5)
{
  bzero(a5, 0x208uLL);
  v10 = *(a1 + 792);
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  memset(v23, 0, sizeof(v23));
  v21 = 0;
  bzero(v37, 0x220uLL);
  sub_10001F16C(a3, 0, a4, v38);
  v22[0] = v23;
  v22[1] = 0x1000000F8;
  v14 = 0;
  v15 = 0;
  if (!sub_1000052E0(v10, v37, 0, v22, &v21, v37))
  {
    v15 = 0;
    v14 = 0;
    do
    {
      if (LOWORD(v23[0]) - 3 >= 2 && LOWORD(v23[0]) != 768 && LOWORD(v23[0]) != 1024)
      {
        if (*&v38[2] != a3)
        {
          break;
        }

        if (a4 && LOWORD(v23[0]) == 2 && (BYTE2(v23[0]) & 0x20) != 0 && v24 == 0x4D41435366647270 && *(a1 + 5728) != a3)
        {
          ++v14;
        }

        if (LOWORD(v23[0]) == 1)
        {
          ++v14;
        }

        ++v15;
      }
    }

    while (!sub_100005678(v10, 1u, v37, v22, &v21, v11, v12, v13));
  }

  if (a4)
  {
    v16 = *(a1 + 776);
    if (v16)
    {
      v17 = (*(v16 + 7) >> 5) & 1;
    }

    else
    {
      v17 = 0;
    }

    v20 = sub_10001E7C0(v17);
    *a5 = 1;
    *(a5 + 2) = a3;
    *(a5 + 3) = v20;
    *(a5 + 4) = v20;
    *(a5 + 5) = v20;
    *(a5 + 8) = getuid();
    *(a5 + 9) = getgid();
    *(a5 + 21) = a2 | 0x4000;
    *(a5 + 1) = v15;
    if (sub_100020BF8(a1))
    {
      *(a5 + 1) |= 0x10u;
      *(a5 + 21) = v14;
    }

    return 88;
  }

  else
  {
    v18 = sub_10001E814(1);
    *a5 = 256;
    *(a5 + 6) = a3;
    *(a5 + 10) = v18;
    *(a5 + 14) = v18;
    result = 70;
    *(a5 + 2) = v15;
  }

  return result;
}

uint64_t sub_10001E650(uint64_t a1, void *a2, int a3)
{
  memset(v11, 0, 512);
  memset(v10, 0, 512);
  v9 = 0;
  sub_100020B5C();
  v7 = v6;
  result = sub_10000B770(a1, a2, v6, v10, v11, &v9);
  if (!result)
  {
    result = sub_1000134A0(*(a1 + 776), *(v10 + 2), v10 + 6, 0, a3);
    if (v7 == 1 && !a3 && !result)
    {
      return sub_10001D0E8(a1, a2);
    }
  }

  return result;
}

uint64_t sub_10001E7C0(int a1)
{
  v4.tv_sec = 0;
  *&v4.tv_usec = 0;
  v3 = 0;
  gettimeofday(&v4, &v3);
  if (a1)
  {
    return LODWORD(v4.tv_sec);
  }

  else
  {
    return (LODWORD(v4.tv_sec) + 2082844800);
  }
}

uint64_t sub_10001E814(int a1)
{
  v6.tv_sec = 0;
  *&v6.tv_usec = 0;
  v5 = 0;
  gettimeofday(&v6, &v5);
  if (HIDWORD(v5))
  {
    v2 = a1 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    v3 = 2082844800;
  }

  else
  {
    v3 = 2082848400;
  }

  return (LODWORD(v6.tv_sec) - 60 * v5 + v3);
}

void *sub_10001E89C(size_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x10040436913F5uLL);
  if (v2)
  {
    if (a1)
    {
      v3 = malloc_type_calloc(1uLL, a1, 0x3C297F01uLL);
      if (!v3)
      {
        free(v2);
        return 0;
      }
    }

    else
    {
      v3 = 0;
    }

    *v2 = v3;
    v2[1] = a1;
  }

  return v2;
}

void sub_10001E914(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }
}

uint64_t sub_10001E95C(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

void **sub_10001E968(void **result, size_t a2)
{
  if (result)
  {
    v3 = result;
    result = malloc_type_realloc(*result, a2, 0x2E94BB16uLL);
    if (result)
    {
      *v3 = result;
      v3[1] = a2;
    }
  }

  return result;
}

uint64_t sub_10001E9AC(const void *a1, uint64_t a2, int64_t a3)
{
  if (a2)
  {
    v4 = 0;
    if (a1 && a3 >= 1)
    {
      v7 = *(a2 + 8);
      v8 = malloc_type_realloc(*a2, v7 + a3, 0x70D70881uLL);
      if (v8)
      {
        *a2 = v8;
        *(a2 + 8) = v7 + a3;
        memcpy(&v8[v7], a1, a3);
        return 0;
      }

      else
      {
        return -108;
      }
    }
  }

  else
  {
    return -109;
  }

  return v4;
}

uint64_t sub_10001EA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  v11 = *(a1 + 888);
  v21 = *(a1 + 872);
  v22 = v11;
  v12 = *(a1 + 920);
  v23 = *(a1 + 904);
  v24 = v12;
  sub_10002D0A4(&v21, a2, a3, a4, a5, a6, a7, a8, v20);
  result = sub_10002D444();
  if (result >= 1)
  {
    result = sub_10002EC84(*(a1 + 936));
    if (result == 1 && (v9 | a4) != 0)
    {
      v21 = xmmword_100043460;
      v22 = *&qword_100043470;
      v23 = xmmword_100043480;
      v24 = *&off_100043490;
      return sub_10002D0E8(&v21, 2, "(%ld, %qd)\n", v14, v15, v16, v17, v18, v9);
    }
  }

  return result;
}

uint64_t sub_10001EAF0(uint64_t a1, unint64_t a2, _BYTE *a3, void *a4, unint64_t a5)
{
  v5 = a3;
  if (a5)
  {
    if (a2 >> 1 >= 0xFF)
    {
      v6 = 255;
    }

    else
    {
      v6 = a2 >> 1;
    }

    v5 = a3;
    while (2)
    {
      v7 = a1 + 2;
      v8 = 1 - v6;
      while (1)
      {
        if (v8 == 1)
        {
          goto LABEL_18;
        }

        a1 = v7;
        v9 = v8;
        v10 = *(v7 - 2);
        if (v10 > 0x7F)
        {
          break;
        }

        v7 += 2;
        ++v8;
        if (v10)
        {
          *v5++ = v10;
          --a5;
          goto LABEL_17;
        }
      }

      if (v10 > 0x7FF)
      {
        v11 = a5 >= 3;
        a5 -= 3;
        if (!v11)
        {
          break;
        }

        *v5 = (v10 >> 12) | 0xE0;
        v5[1] = (v10 >> 6) & 0x3F | 0x80;
        v5[2] = v10 & 0x3F | 0x80;
        v5 += 3;
      }

      else
      {
        if (a5 == 1)
        {
          break;
        }

        a5 -= 2;
        *v5 = (v10 >> 6) | 0xC0;
        v5[1] = v10 & 0x3F | 0x80;
        v5 += 2;
      }

LABEL_17:
      v6 = -v9;
      if (a5)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:
  *a4 = v5 - a3;
  return 0;
}

uint64_t sub_10001EBC8(_BYTE *a1, uint64_t a2, char *a3, void *a4, uint64_t a5)
{
  v5 = a3;
  if (a2)
  {
    v5 = a3;
    v6 = a1;
    while (1)
    {
      v8 = *v6++;
      v7 = v8;
      v10 = a5-- != 0;
      if (v7)
      {
        v11 = !v10;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        goto LABEL_22;
      }

      v12 = a2 - 1;
      if ((v7 & 0x80) != 0)
      {
        break;
      }

LABEL_21:
      *v5 = v7;
      v5 += 2;
      a2 = v12;
      a1 = v6;
      if (!v12)
      {
        goto LABEL_22;
      }
    }

    v13 = v7 & 0xF0;
    if (v13 != 192)
    {
      if (v13 == 224)
      {
        v16 = *v6;
        if ((v16 & 0xC0) != 0x80)
        {
          return 0xFFFFFFFFLL;
        }

        v15 = (v7 << 12) | ((v16 & 0x3F) << 6);
        if ((v15 & 0xF800) == 0)
        {
          return 0xFFFFFFFFLL;
        }

        v6 = a1 + 2;
        v12 = a2 - 2;
        goto LABEL_19;
      }

      if (v13 != 208)
      {
        return 0xFFFFFFFFLL;
      }
    }

    v14 = v7 & 0x1F;
    if (v14 < 2)
    {
      return 0xFFFFFFFFLL;
    }

    v15 = v14 << 6;
LABEL_19:
    v17 = *v6;
    if ((*v6 & 0xC0) != 0x80)
    {
      return 0xFFFFFFFFLL;
    }

    ++v6;
    --v12;
    LOWORD(v7) = (v17 & 0x3F) + v15;
    goto LABEL_21;
  }

LABEL_22:
  result = 0;
  *a4 = v5 - a3;
  return result;
}

uint64_t sub_10001ECC0(_WORD *a1, int a2)
{
  v2 = a2;
  a1[5] = 7;
  if (a2 == -36)
  {
    v3 = 4;
  }

  else
  {
    v3 = a2;
  }

  if ((v3 & 0xFFFE) == 4)
  {
    v2 = 0;
    v4 = a1[346];
  }

  else
  {
    v4 = 2;
    v3 = 2;
  }

  a1[7] = v4;
  a1[8] = v2;
  return v3;
}

uint64_t sub_10001ED08(uint64_t a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(qword_100043578 + a2 + 16);
  v9 = *(v8 + 760);
  if (!v9)
  {
    return 0;
  }

  v10 = *v9;
  v11 = a3 >> 3;
  v12 = 0x80u >> (a3 & 7);
  v13 = *(v10 + v11);
  if ((v12 & v13) != 0)
  {
    *(a1 + 14) = -521;
    v14 = 4294966775;
    sub_10001EA44(a1, 4294966775, *(a1 + 48), *(a1 + 56), a5, a6, a7, a8);
  }

  else
  {
    v14 = 0;
    *(v10 + v11) = v13 | v12;
    --*(v8 + 60);
  }

  return v14;
}

uint64_t sub_10001EDB4(uint64_t a1, unsigned int *a2, unsigned __int16 *a3)
{
  *(a1 + 56) = 0;
  if (!a2[32])
  {
    sub_1000052D4(a2, 512);
  }

  memset(v31, 0, sizeof(v31));
  v6 = sub_100004E04(a2, 0, 0, v31);
  if (v6)
  {
    return v6;
  }

  v13 = sub_10000FAF8(v31, a2, 3, v7, v8, v9, v10, v11);
  if (v13 || (memmove(a3, (*&v31[0] + 14), 0x6AuLL), (v13 = sub_10000FAF8(v31, a2, 3, v19, v20, v21, v22, v23)) != 0))
  {
    v12 = v13;
    sub_10000508C(a2, v31, 4u, v14, v15, v16, v17, v18);
    return v12;
  }

  sub_10000508C(a2, v31, 0, v14, v15, v16, v17, v18);
  v12 = v29;
  if (v29)
  {
    return v12;
  }

  v30 = a3[9];
  if (v30 <= 0xFFF)
  {
    if (v30 != 512 && v30 != 1024 && v30 != 2048)
    {
      goto LABEL_21;
    }
  }

  else if (a3[9] >= 0x4000u)
  {
    if (v30 != 0x4000 && v30 != 0x8000)
    {
      goto LABEL_21;
    }
  }

  else if (v30 != 4096 && v30 != 0x2000)
  {
LABEL_21:
    v12 = -557;
    *(a1 + 14) = -557;
    sub_10001EA44(a1, 4294966739, *(a1 + 48), *(a1 + 56), v25, v26, v27, v28);
  }

  return v12;
}

uint64_t sub_10001EF18(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 624);
  if (!v2)
  {
    return 0;
  }

  while (v2 == a2 || *(a2 + 8) != *(v2 + 4) || *(a2 + 16) != v2[2] || *(a2 + 24) != v2[3] || *(a2 + 40) != *(v2 + 10) || *(a2 + 10) != *(v2 + 5) || *(a2 + 32) != *(v2 + 8) || *(a2 + 36) != *(v2 + 9))
  {
    v2 = *v2;
    if (!v2)
    {
      return 0;
    }
  }

  return 1;
}

void *sub_10001EFB0(uint64_t a1, void *a2)
{
  result = *(a1 + 624);
  if (result)
  {
    v5 = 0;
    do
    {
      if (result == a2)
      {
        v6 = *result;
        if (v5)
        {
          *v5 = v6;
        }

        if (*(a1 + 624) == a2)
        {
          *(a1 + 624) = v6;
        }

        free(result);
      }

      else
      {
        v6 = *result;
        v5 = result;
      }

      result = v6;
    }

    while (v6);
  }

  return result;
}

void *sub_10001F024(uint64_t a1, uint64_t a2)
{
  v3 = malloc_type_calloc(1uLL, a2 + 48, 0x1020040CDB7ADB9uLL);
  v4 = v3;
  if (v3)
  {
    *v3 = *(a1 + 624);
    *(a1 + 624) = v3;
  }

  else if (sub_10002D444() >= 3)
  {
    v11[0] = xmmword_100043460;
    v11[1] = *&qword_100043470;
    v11[2] = xmmword_100043480;
    v11[3] = *&off_100043490;
    sub_10002D0E8(v11, 2, "\t%s - AllocateClearMemory failed to allocate %d bytes \n", v5, v6, v7, v8, v9, "AllocMinorRepairOrder");
  }

  if (!*(a1 + 10))
  {
    *(a1 + 10) = 3;
  }

  return v4;
}

_BYTE *sub_10001F0E8(_BYTE *__src, _WORD *__dst, int a3)
{
  if (__src)
  {
    if (a3)
    {
      v3 = *__src;
      if (v3 >= 0xFF)
      {
        v4 = 512;
      }

      else
      {
        v4 = 2 * v3 + 2;
      }

      return memmove(__dst, __src, v4);
    }

    if (*__src)
    {
      v4 = *__src + 1;
      return memmove(__dst, __src, v4);
    }

    goto LABEL_11;
  }

  if (__dst)
  {
LABEL_11:
    *__dst = 0;
  }

  return __src;
}

uint64_t sub_10001F138(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    return *a1;
  }

  else
  {
    return *a1;
  }
}

uint64_t sub_10001F14C(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    v2 = *a1;
  }

  else
  {
    v2 = *a1;
  }

  return (v2 << (a2 != 0));
}

void *sub_10001F16C(void *result, _BYTE *__src, int a3, uint64_t a4)
{
  if (a3)
  {
    *a4 = 6;
    *(a4 + 2) = result;
    *(a4 + 6) = 0;
    if (__src)
    {
      result = sub_10001F0E8(__src, (a4 + 6), a3);
      *a4 += 2 * *__src;
    }
  }

  else
  {
    *a4 = 6;
    *(a4 + 2) = result;
    *(a4 + 6) = 0;
    if (__src)
    {
      if (*__src >= 0x1Fu)
      {
        v6 = 31;
      }

      else
      {
        v6 = *__src;
      }

      *(a4 + 6) = v6;
      result = memmove((a4 + 7), __src + 1, v6);
      *a4 += v6;
    }
  }

  return result;
}

uint64_t sub_10001F220(unsigned __int16 **a1)
{
  if ((byte_100048628 & 1) == 0)
  {
    byte_100048628 = 1;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
  }

  v5 = 0;
  sub_10001F344(&v5);
  v2 = sub_100004C84(*(&xmmword_1000485D8 + 1), v5, 0, a1);
  if (v2)
  {
    return v2;
  }

  if ((dword_1000485E8 - 2) >= 2)
  {
    if (dword_1000485E8 == 1)
    {
      if (**a1 == 16964)
      {
        return 0;
      }

      else
      {
        return -57;
      }
    }

    else
    {
      return -57;
    }
  }

  v4 = *a1;

  return sub_10001F3E4(v4);
}

double sub_10001F308()
{
  if ((byte_100048628 & 1) == 0)
  {
    byte_100048628 = 1;
    result = 0.0;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
  }

  return result;
}

uint64_t *sub_10001F344(uint64_t *result)
{
  if ((byte_100048628 & 1) == 0)
  {
    v2 = 0;
    byte_100048628 = 1;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
LABEL_6:
    *result = v2;
    return result;
  }

  v1 = dword_1000485E8;
  *result = 0;
  if ((v1 - 2) < 2)
  {
    if ((xmmword_1000485D8 & 4) != 0)
    {
      v2 = qword_100048610;
    }

    else
    {
      v2 = qword_100048608;
    }

    goto LABEL_6;
  }

  if (v1 == 1)
  {
    if ((xmmword_1000485D8 & 0x10) != 0)
    {
      v2 = *(&xmmword_100048618 + 1);
    }

    else
    {
      v2 = xmmword_100048618;
    }

    goto LABEL_6;
  }

  return result;
}

uint64_t sub_10001F3E4(unsigned __int16 *a1)
{
  v1 = *a1;
  if (v1 == 18520)
  {
    if (a1[1] == 5)
    {
      goto LABEL_4;
    }

    return -57;
  }

  if (v1 != 18475 || a1[1] != 4)
  {
    return -57;
  }

LABEL_4:
  v2 = *(a1 + 10);
  if ((v2 & 0x1FF) != 0 || v2 == 0)
  {
    return -60;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001F43C(unsigned __int16 **a1)
{
  if (byte_100048628)
  {
    if ((dword_1000485E8 - 2) >= 2)
    {
      if (dword_1000485E8 == 1)
      {
        v2 = *(&xmmword_100048618 + 1);
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = qword_100048610;
    }
  }

  else
  {
    v2 = 0;
    byte_100048628 = 1;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
  }

  v3 = sub_100004C84(*(&xmmword_1000485D8 + 1), v2, 0, a1);
  if (v3)
  {
    return v3;
  }

  if ((dword_1000485E8 - 2) >= 2)
  {
    if (dword_1000485E8 == 1)
    {
      if (**a1 == 16964)
      {
        return 0;
      }

      else
      {
        return -57;
      }
    }

    else
    {
      return -57;
    }
  }

  v5 = *a1;

  return sub_10001F3E4(v5);
}

uint64_t *sub_10001F548(uint64_t *result)
{
  if ((byte_100048628 & 1) == 0)
  {
    v2 = 0;
    byte_100048628 = 1;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
    goto LABEL_5;
  }

  v1 = dword_1000485E8;
  *result = 0;
  if ((v1 - 2) < 2)
  {
    v2 = qword_100048610;
LABEL_5:
    *result = v2;
    return result;
  }

  if (v1 == 1)
  {
    v2 = *(&xmmword_100048618 + 1);
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_10001F5B8(unsigned __int16 **a1)
{
  if (byte_100048628)
  {
    if ((dword_1000485E8 - 2) >= 2)
    {
      if (dword_1000485E8 == 1)
      {
        v2 = xmmword_100048618;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = qword_100048608;
    }
  }

  else
  {
    v2 = 0;
    byte_100048628 = 1;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
  }

  v3 = sub_100004C84(*(&xmmword_1000485D8 + 1), v2, 0, a1);
  if (v3)
  {
    return v3;
  }

  if ((dword_1000485E8 - 2) >= 2)
  {
    if (dword_1000485E8 == 1)
    {
      if (**a1 == 16964)
      {
        return 0;
      }

      else
      {
        return -57;
      }
    }

    else
    {
      return -57;
    }
  }

  v5 = *a1;

  return sub_10001F3E4(v5);
}

uint64_t *sub_10001F6C4(uint64_t *result)
{
  if ((byte_100048628 & 1) == 0)
  {
    v2 = 0;
    byte_100048628 = 1;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
    goto LABEL_5;
  }

  v1 = dword_1000485E8;
  *result = 0;
  if ((v1 - 2) < 2)
  {
    v2 = qword_100048608;
LABEL_5:
    *result = v2;
    return result;
  }

  if (v1 == 1)
  {
    v2 = xmmword_100048618;
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_10001F734(unsigned __int16 **a1)
{
  if (byte_100048628 == 1)
  {
    v2 = *(&xmmword_1000485D8 + 1);
    if ((xmmword_1000485D8 & 4) != 0)
    {
      v3 = &qword_100048610;
    }

    else
    {
      v3 = &qword_100048608;
    }

    v4 = *v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
    byte_100048628 = 1;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
  }

  v5 = sub_100004C84(v2, v4, 0, a1);
  if (v5)
  {
    return v5;
  }

  v7 = *a1;

  return sub_10001F3E4(v7);
}

uint64_t sub_10001F7EC(_WORD **a1)
{
  if (byte_100048628 == 1)
  {
    v2 = *(&xmmword_100048618 + 1);
    v3 = *(&xmmword_1000485D8 + 1);
  }

  else
  {
    v3 = 0;
    v2 = 0;
    byte_100048628 = 1;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
  }

  v4 = sub_100004C84(v3, v2, 0, a1);
  if (!v4)
  {
    if (**a1 == 16964)
    {
      return 0;
    }

    else
    {
      return -57;
    }
  }

  return v4;
}

uint64_t sub_10001F888(_WORD **a1)
{
  if (byte_100048628 == 1)
  {
    v2 = xmmword_100048618;
    v3 = *(&xmmword_1000485D8 + 1);
  }

  else
  {
    v3 = 0;
    v2 = 0;
    byte_100048628 = 1;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
  }

  v4 = sub_100004C84(v3, v2, 0, a1);
  if (!v4)
  {
    if (**a1 == 16964)
    {
      return 0;
    }

    else
    {
      return -57;
    }
  }

  return v4;
}

void sub_10001F924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v65, 0, sizeof(v65));
  if (byte_100048628 == 1)
  {
    v9 = xmmword_1000485D8 | 1;
  }

  else
  {
    v9 = 1;
    byte_100048628 = 1;
    xmmword_1000485D8 = 0uLL;
    *&dword_1000485E8 = 0uLL;
    xmmword_1000485F8 = 0uLL;
    *&qword_100048608 = 0uLL;
    xmmword_100048618 = 0uLL;
  }

  LODWORD(xmmword_1000485D8) = v9;
  *(&xmmword_1000485D8 + 1) = *(a1 + 776);
  v10 = sub_1000136F8(*(*(&xmmword_1000485D8 + 1) + 198), &xmmword_1000485F8, &dword_1000485F0, a4, a5, a6, a7, a8);
  if (xmmword_1000485F8 < 3 || v10)
  {
    if (sub_10002D444() >= 3)
    {
      __dst[0] = xmmword_100043460;
      __dst[1] = *&qword_100043470;
      __dst[2] = xmmword_100043480;
      __dst[3] = *&off_100043490;
      sub_10002D0E8(__dst, 2, "\tinvalid device information for volume - total sectors = %qd sector size = %d \n", v16, v17, v18, v19, v20, xmmword_1000485F8);
    }
  }

  else
  {
    memset(__dst, 0, sizeof(__dst));
    if (sub_100004C84(*(&xmmword_1000485D8 + 1), 2, 0, v65))
    {
      if (sub_10002D444() >= 3)
      {
        v61 = xmmword_100043460;
        v62 = *&qword_100043470;
        v63 = xmmword_100043480;
        v64 = *&off_100043490;
        sub_10002D0E8(&v61, 2, "\tcould not get volume block %d, err %d \n", v11, v12, v13, v14, v15, 2);
      }
    }

    else
    {
      v21 = *&v65[0];
      v22 = **&v65[0];
      if (v22 == 16964)
      {
        *&xmmword_100048618 = 2;
        *(&xmmword_100048618 + 1) = xmmword_1000485F8 - 2;
        LODWORD(xmmword_1000485D8) = xmmword_1000485D8 | 8;
      }

      else if (v22 == 18520 || v22 == 18475)
      {
        qword_100048608 = 2;
        qword_100048610 = xmmword_1000485F8 - 2;
        v23 = sub_10001F3E4(*&v65[0]);
        if (v23)
        {
          v24 = v23;
          if (sub_10002D444() >= 3)
          {
            v61 = xmmword_100043460;
            v62 = *&qword_100043470;
            v63 = xmmword_100043480;
            v64 = *&off_100043490;
            sub_10002D0E8(&v61, 2, "\tInvalid primary volume header - error %d \n", v25, v26, v27, v28, v29, v24);
          }
        }

        else
        {
          LODWORD(xmmword_1000485D8) = xmmword_1000485D8 | 2;
          memcpy(__dst, v21, sizeof(__dst));
        }
      }

      else if (sub_10002D444() >= 3)
      {
        v61 = xmmword_100043460;
        v62 = *&qword_100043470;
        v63 = xmmword_100043480;
        v64 = *&off_100043490;
        sub_10002D0E8(&v61, 2, "\tBlock %d is not an MDB or Volume Header \n", v30, v31, v32, v33, v34, 2);
      }

      sub_100004D50(*(a1 + 776), v65, 0);
    }

    if (sub_100004C84(*(&xmmword_1000485D8 + 1), xmmword_1000485F8 - 2, 0, v65))
    {
      if (sub_10002D444() >= 3)
      {
        v61 = xmmword_100043460;
        v62 = *&qword_100043470;
        v63 = xmmword_100043480;
        v64 = *&off_100043490;
        sub_10002D0E8(&v61, 2, "\tcould not get alternate volume header at %qd, err %d \n", v35, v36, v37, v38, v39, xmmword_1000485F8 - 2);
      }
    }

    else
    {
      v40 = *&v65[0];
      v41 = **&v65[0];
      if (v41 == 16964)
      {
        *&xmmword_100048618 = 2;
        *(&xmmword_100048618 + 1) = xmmword_1000485F8 - 2;
        LODWORD(xmmword_1000485D8) = xmmword_1000485D8 | 0x10;
      }

      else if (v41 == 18520 || v41 == 18475)
      {
        qword_100048608 = 2;
        qword_100048610 = xmmword_1000485F8 - 2;
        v42 = sub_10001F3E4(*&v65[0]);
        if (v42)
        {
          v43 = v42;
          if (sub_10002D444() >= 3)
          {
            v61 = xmmword_100043460;
            v62 = *&qword_100043470;
            v63 = xmmword_100043480;
            v64 = *&off_100043490;
            sub_10002D0E8(&v61, 2, "\tInvalid alternate volume header - error %d \n", v44, v45, v46, v47, v48, v43);
          }
        }

        else
        {
          LODWORD(xmmword_1000485D8) = xmmword_1000485D8 | 4;
          sub_10001FEA8(__dst, v40);
        }
      }

      else if (sub_10002D444() >= 3)
      {
        v61 = xmmword_100043460;
        v62 = *&qword_100043470;
        v63 = xmmword_100043480;
        v64 = *&off_100043490;
        sub_10002D0E8(&v61, 2, "\tBlock %qd is not an MDB or Volume Header \n", v49, v50, v51, v52, v53, xmmword_1000485F8 - 2);
      }

      sub_100004D50(*(a1 + 776), v65, 0);
    }

    if ((xmmword_1000485D8 & 0x10) != 0 && !sub_100004C84(*(&xmmword_1000485D8 + 1), *(&xmmword_100048618 + 1), 0, v65))
    {
      sub_100020058(a1, *&v65[0]);
      sub_100004D50(*(a1 + 776), v65, 0);
    }

    if ((xmmword_1000485D8 & 8) != 0 && (xmmword_1000485D8 & 6) != 6)
    {
      if (sub_100004C84(*(&xmmword_1000485D8 + 1), xmmword_100048618, 0, v65))
      {
        if (sub_10002D444() >= 3)
        {
          v61 = xmmword_100043460;
          v62 = *&qword_100043470;
          v63 = xmmword_100043480;
          v64 = *&off_100043490;
          sub_10002D0E8(&v61, 2, "\tcould not get primary MDB at block %qd, err %d \n", v54, v55, v56, v57, v58, xmmword_100048618);
        }
      }

      else
      {
        sub_100020058(a1, *&v65[0]);
        sub_100004D50(*(a1 + 776), v65, 0);
      }
    }
  }

  if ((xmmword_1000485D8 & 0x18) != 0)
  {
    v59 = 2;
  }

  else
  {
    v59 = 3;
  }

  if ((xmmword_1000485D8 & 6) != 0)
  {
    v60 = v59;
  }

  else
  {
    v60 = (xmmword_1000485D8 & 0x18) != 0;
  }

  dword_1000485E8 = v60;
}

uint64_t sub_10001FEA8(uint64_t result, _DWORD *a2)
{
  if ((~xmmword_1000485D8 & 6) == 0)
  {
    v3 = result;
    v4 = *(result + 284);
    v5 = a2[71];
    if (v4 == v5 || *(result + 288) != a2[72])
    {
      v6 = 0;
      v7 = 0;
      v15 = 1;
    }

    else
    {
      v6 = v4 > v5;
      v7 = v4 <= v5;
      result = sub_10002D444();
      if (result >= 3)
      {
        v13 = v3[71];
        v14 = a2[71];
        v32 = xmmword_100043460;
        v33 = *&qword_100043470;
        v34 = xmmword_100043480;
        v35 = *&off_100043490;
        result = sub_10002D0E8(&v32, 2, "\tvolume headers disagree on catalog file total blocks - primary %d alternate %d \n", v8, v9, v10, v11, v12, v13);
      }

      v15 = 0;
    }

    v16 = v3[51];
    v17 = a2[51];
    if (v16 == v17 || v3[52] != a2[52])
    {
      if (v15)
      {
        return result;
      }
    }

    else
    {
      if (v16 <= v17)
      {
        v7 = 1;
      }

      else
      {
        v6 = 1;
      }

      result = sub_10002D444();
      if (result >= 3)
      {
        v23 = v3[51];
        v24 = a2[51];
        v32 = xmmword_100043460;
        v33 = *&qword_100043470;
        v34 = xmmword_100043480;
        v35 = *&off_100043490;
        result = sub_10002D0E8(&v32, 2, "\tvolume headers disagree on extents file total blocks - primary %d alternate %d \n", v18, v19, v20, v21, v22, v23);
      }
    }

    if (v7 && v6)
    {
      result = sub_10002D444();
      if (result >= 3)
      {
        v32 = xmmword_100043460;
        v33 = *&qword_100043470;
        v34 = xmmword_100043480;
        v35 = *&off_100043490;
        return sub_10002D0E8(&v32, 2, "\tvolume headers disagree but there is confusion on which to use \n", v25, v26, v27, v28, v29, v31);
      }
    }

    else
    {
      if (v6)
      {
        v30 = xmmword_1000485D8 & 0xFFFFFFFB;
      }

      else
      {
        if (!v7)
        {
          return result;
        }

        v30 = xmmword_1000485D8 & 0xFFFFFFFD;
      }

      LODWORD(xmmword_1000485D8) = v30;
    }
  }

  return result;
}

double sub_100020058(uint64_t a1, uint64_t a2)
{
  v3 = 0uLL;
  memset(v50, 0, sizeof(v50));
  if ((byte_100048628 & 1) == 0)
  {
    byte_100048628 = 1;
    xmmword_1000485D8 = 0uLL;
    *&dword_1000485E8 = 0uLL;
    xmmword_1000485F8 = 0uLL;
    *&qword_100048608 = 0uLL;
    xmmword_100048618 = 0uLL;
  }

  if (*(a2 + 124) | *(a2 + 128))
  {
    v4 = *(a2 + 128);
  }

  else
  {
    if (!*(a2 + 126))
    {
      return *&v3;
    }

    v4 = 0;
  }

  v5 = *(a2 + 20);
  v6 = v5 >> 9;
  v7 = (v5 >> 9) * v4;
  v8 = *(a2 + 126);
  v9 = v5 * v8;
  v10 = *(a2 + 28);
  v11 = v7 + v10 + v6 * v8 - 2;
  memset(__dst, 0, sizeof(__dst));
  dword_1000485EC = v9 + (v10 << 9);
  v12 = v10 + (v9 >> 9) + 2;
  if (sub_100004C84(*(&xmmword_1000485D8 + 1), v11, 0, v50))
  {
    if (sub_10002D444() >= 3)
    {
      v46 = xmmword_100043460;
      v47 = *&qword_100043470;
      v48 = xmmword_100043480;
      v49 = *&off_100043490;
      sub_10002D0E8(&v46, 2, "\tcould not get embedded alternate volume header at %qd, err %d \n", v13, v14, v15, v16, v17, v11);
    }
  }

  else
  {
    v18 = *&v50[0];
    if (**&v50[0] == 18475)
    {
      qword_100048608 = v12;
      qword_100048610 = v11;
      if (sub_10001F3E4(*&v50[0]))
      {
        if (sub_10002D444() >= 3)
        {
          v46 = xmmword_100043460;
          v47 = *&qword_100043470;
          v48 = xmmword_100043480;
          v49 = *&off_100043490;
          sub_10002D0E8(&v46, 2, "\tInvalid embedded alternate volume header at block %qd - error %d \n", v19, v20, v21, v22, v23, v11);
        }
      }

      else
      {
        LODWORD(xmmword_1000485D8) = xmmword_1000485D8 | 4;
        *(&xmmword_1000485F8 + 1) = v7;
        memcpy(__dst, v18, sizeof(__dst));
      }
    }

    else if (sub_10002D444() >= 3)
    {
      v46 = xmmword_100043460;
      v47 = *&qword_100043470;
      v48 = xmmword_100043480;
      v49 = *&off_100043490;
      sub_10002D0E8(&v46, 2, "\tBlock number %qd is not embedded alternate volume header \n", v24, v25, v26, v27, v28, v11);
    }

    sub_100004D50(*(a1 + 776), v50, 0);
  }

  if (sub_100004C84(*(&xmmword_1000485D8 + 1), v12, 0, v50))
  {
    if (sub_10002D444() >= 3)
    {
      v46 = xmmword_100043460;
      v47 = *&qword_100043470;
      v48 = xmmword_100043480;
      v49 = *&off_100043490;
      sub_10002D0E8(&v46, 2, "\tcould not get embedded primary volume header at %qd, err %d \n", v29, v30, v31, v32, v33, v12);
    }
  }

  else
  {
    v34 = *&v50[0];
    if (**&v50[0] == 18475)
    {
      qword_100048608 = v12;
      qword_100048610 = v11;
      if (sub_10001F3E4(*&v50[0]))
      {
        if (sub_10002D444() >= 3)
        {
          v46 = xmmword_100043460;
          v47 = *&qword_100043470;
          v48 = xmmword_100043480;
          v49 = *&off_100043490;
          sub_10002D0E8(&v46, 2, "\tInvalid embedded primary volume header at block %qd - error %d \n", v35, v36, v37, v38, v39, v12);
        }
      }

      else
      {
        LODWORD(xmmword_1000485D8) = xmmword_1000485D8 | 2;
        *(&xmmword_1000485F8 + 1) = v7;
        sub_10001FEA8(v34, __dst);
      }
    }

    else if (sub_10002D444() >= 3)
    {
      v46 = xmmword_100043460;
      v47 = *&qword_100043470;
      v48 = xmmword_100043480;
      v49 = *&off_100043490;
      sub_10002D0E8(&v46, 2, "\tBlock number %qd is not embedded primary volume header \n", v40, v41, v42, v43, v44, v12);
    }

    *&v3 = sub_100004D50(*(a1 + 776), v50, 0);
  }

  return *&v3;
}

uint64_t sub_100020418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((byte_100048628 & 1) == 0)
  {
    byte_100048628 = 1;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
LABEL_7:
    v51 = xmmword_100043460;
    v52 = *&qword_100043470;
    v53 = xmmword_100043480;
    v54 = *&off_100043490;
    v8 = "\tunknown volume type \n";
    goto LABEL_8;
  }

  if (dword_1000485E8 == 3)
  {
    v51 = xmmword_100043460;
    v52 = *&qword_100043470;
    v53 = xmmword_100043480;
    v54 = *&off_100043490;
    v8 = "\tvolume type is pure HFS+ \n";
    goto LABEL_8;
  }

  if (dword_1000485E8 == 2)
  {
    v51 = xmmword_100043460;
    v52 = *&qword_100043470;
    v53 = xmmword_100043480;
    v54 = *&off_100043490;
    v8 = "\tvolume type is embedded HFS+ \n";
    goto LABEL_8;
  }

  if (dword_1000485E8 != 1)
  {
    goto LABEL_7;
  }

  v51 = xmmword_100043460;
  v52 = *&qword_100043470;
  v53 = xmmword_100043480;
  v54 = *&off_100043490;
  v8 = "\tvolume type is HFS \n";
LABEL_8:
  sub_10002D0E8(&v51, 2, v8, a4, a5, a6, a7, a8, v50);
  v51 = xmmword_100043460;
  v52 = *&qword_100043470;
  v53 = xmmword_100043480;
  v54 = *&off_100043490;
  sub_10002D0E8(&v51, 2, "\tprimary MDB is at block %qd 0x%02qx \n", v9, v10, v11, v12, v13, xmmword_100048618);
  v51 = xmmword_100043460;
  v52 = *&qword_100043470;
  v53 = xmmword_100043480;
  v54 = *&off_100043490;
  sub_10002D0E8(&v51, 2, "\talternate MDB is at block %qd 0x%02qx \n", v14, v15, v16, v17, v18, *(&xmmword_100048618 + 1));
  v51 = xmmword_100043460;
  v52 = *&qword_100043470;
  v53 = xmmword_100043480;
  v54 = *&off_100043490;
  sub_10002D0E8(&v51, 2, "\tprimary VHB is at block %qd 0x%02qx \n", v19, v20, v21, v22, v23, qword_100048608);
  v51 = xmmword_100043460;
  v52 = *&qword_100043470;
  v53 = xmmword_100043480;
  v54 = *&off_100043490;
  sub_10002D0E8(&v51, 2, "\talternate VHB is at block %qd 0x%02qx \n", v24, v25, v26, v27, v28, qword_100048610);
  v51 = xmmword_100043460;
  v52 = *&qword_100043470;
  v53 = xmmword_100043480;
  v54 = *&off_100043490;
  sub_10002D0E8(&v51, 2, "\tsector size = %d 0x%02x \n", v29, v30, v31, v32, v33, dword_1000485F0);
  v51 = xmmword_100043460;
  v52 = *&qword_100043470;
  v53 = xmmword_100043480;
  v54 = *&off_100043490;
  sub_10002D0E8(&v51, 2, "\tVolumeObject flags = 0x%02X \n", v34, v35, v36, v37, v38, xmmword_1000485D8);
  v51 = xmmword_100043460;
  v52 = *&qword_100043470;
  v53 = xmmword_100043480;
  v54 = *&off_100043490;
  sub_10002D0E8(&v51, 2, "\ttotal sectors for volume = %qd 0x%02qx \n", v39, v40, v41, v42, v43, xmmword_1000485F8);
  v51 = xmmword_100043460;
  v52 = *&qword_100043470;
  v53 = xmmword_100043480;
  v54 = *&off_100043490;
  return sub_10002D0E8(&v51, 2, "\ttotal sectors for embedded volume = %qd 0x%02qx \n", v44, v45, v46, v47, v48, *(&xmmword_1000485F8 + 1));
}

uint64_t sub_100020668(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = result;
  if (a2 >= 1)
  {
    v8 = a3;
    v9 = 0;
    v10 = result;
    i = result + a2;
    v43 = result + 17;
    v12 = result + 16;
    v41 = a2 + result;
    v38 = result + a2;
    while (1)
    {
      if (v12 >= v41)
      {
        v13 = v41;
      }

      else
      {
        v13 = v12;
      }

      if (v12 - v13 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = v12 - v13;
      }

      v15 = v10 + 16;
      if (i >= (v10 + 16))
      {
        v16 = v10 + 16;
      }

      else
      {
        v16 = i;
      }

      if (i < v15 || v16 == i || !v9)
      {
        goto LABEL_20;
      }

      v17 = v10;
      if (v10 < v16)
      {
        break;
      }

LABEL_18:
      if (v9 == 1)
      {
        v44 = xmmword_100043460;
        v45 = *&qword_100043470;
        v46 = xmmword_100043480;
        v47 = *&off_100043490;
        result = sub_10002D0E8(&v44, 6, ". . .\n", a4, a5, a6, a7, a8, v35);
        v9 = 2;
      }

LABEL_48:
      v43 += 16;
      v12 += 16;
      v10 = v15;
      if (v15 >= i)
      {
        return result;
      }
    }

    while (!*v17)
    {
      if (++v17 >= v16)
      {
        goto LABEL_18;
      }
    }

LABEL_20:
    v42 = v13;
    v44 = xmmword_100043460;
    v45 = *&qword_100043470;
    v46 = xmmword_100043480;
    v47 = *&off_100043490;
    if (v8)
    {
      sub_10002D0E8(&v44, 6, "%s %04x:  ", a4, a5, a6, a7, a8, v8);
    }

    else
    {
      sub_10002D0E8(&v44, 6, "%04x:  ", a4, a5, a6, a7, a8, (v10 - v40));
    }

    if (v10 >= v16)
    {
      v9 = 1;
    }

    else
    {
      v23 = 0;
      v9 = 1;
      do
      {
        v24 = v10[v23];
        v44 = xmmword_100043460;
        v45 = *&qword_100043470;
        v46 = xmmword_100043480;
        v47 = *&off_100043490;
        sub_10002D0E8(&v44, 6, "%02x", v18, v19, v20, v21, v22, v24);
        if (v23)
        {
          v44 = xmmword_100043460;
          v45 = *&qword_100043470;
          v46 = xmmword_100043480;
          v47 = *&off_100043490;
          sub_10002D0E8(&v44, 6, " ", v18, v19, v20, v21, v22, v36);
        }

        if (v10[v23])
        {
          v9 = 0;
        }

        ++v23;
      }

      while (&v10[v23] < v16);
    }

    v25 = v15 - v16;
    if (((v15 - v16) & 0x80000000) == 0)
    {
      v26 = v43 - v42;
      do
      {
        v44 = xmmword_100043460;
        v45 = *&qword_100043470;
        v46 = xmmword_100043480;
        v47 = *&off_100043490;
        sub_10002D0E8(&v44, 6, "  ", v18, v19, v20, v21, v22, v36);
        if (v25)
        {
          v44 = xmmword_100043460;
          v45 = *&qword_100043470;
          v46 = xmmword_100043480;
          v47 = *&off_100043490;
          sub_10002D0E8(&v44, 6, " ", v18, v19, v20, v21, v22, v36);
        }

        --v25;
        --v26;
      }

      while (v26 > 0);
    }

    v44 = xmmword_100043460;
    v45 = *&qword_100043470;
    v46 = xmmword_100043480;
    v47 = *&off_100043490;
    sub_10002D0E8(&v44, 6, "    |", v18, v19, v20, v21, v22, v36);
    for (i = v38; v10 < v16; ++v10)
    {
      v32 = *v10;
      if (*v10 < 0)
      {
        v33 = __maskrune(*v10, 0x500uLL);
      }

      else
      {
        v33 = _DefaultRuneLocale.__runetype[*v10] & 0x500;
      }

      if (v33)
      {
        v34 = v32;
      }

      else
      {
        v34 = 46;
      }

      v44 = xmmword_100043460;
      v45 = *&qword_100043470;
      v46 = xmmword_100043480;
      v47 = *&off_100043490;
      sub_10002D0E8(&v44, 6, "%c", v27, v28, v29, v30, v31, v34);
    }

    if (v38 < v15)
    {
      do
      {
        v44 = xmmword_100043460;
        v45 = *&qword_100043470;
        v46 = xmmword_100043480;
        v47 = *&off_100043490;
        sub_10002D0E8(&v44, 6, " ", v27, v28, v29, v30, v31, v37);
        --v14;
      }

      while (v14);
    }

    v44 = xmmword_100043460;
    v45 = *&qword_100043470;
    v46 = xmmword_100043480;
    v47 = *&off_100043490;
    result = sub_10002D0E8(&v44, 6, "|\n", v27, v28, v29, v30, v31, v37);
    v8 = a3;
    goto LABEL_48;
  }

  return result;
}

uint64_t sub_1000209EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((byte_100048628 & 1) == 0)
  {
    byte_100048628 = 1;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
LABEL_5:
    v18 = xmmword_100043460;
    v19 = *&qword_100043470;
    v20 = xmmword_100043480;
    v21 = *&off_100043490;
    sub_10002D0E8(&v18, 1, "volumeType is %d\n", a4, a5, a6, a7, a8, 0);
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    if ((byte_100048628 & 1) == 0)
    {
      byte_100048628 = 1;
      xmmword_1000485D8 = 0uLL;
      *&dword_1000485E8 = 0uLL;
      xmmword_1000485F8 = 0uLL;
      *&qword_100048608 = 0uLL;
      xmmword_100048618 = 0uLL;
    }

    goto LABEL_9;
  }

  if ((dword_1000485E8 - 1) < 3)
  {
    return 1;
  }

  if (!dword_1000485E8)
  {
    goto LABEL_5;
  }

  v17 = 0;
  v15 = 0u;
  v16 = 0u;
LABEL_9:
  sub_10001F344(&v17);
  if (sub_100004C84(*(&xmmword_1000485D8 + 1), v17, 0, &v15) << 16)
  {
    v18 = xmmword_100043460;
    v19 = *&qword_100043470;
    v20 = xmmword_100043480;
    v21 = *&off_100043490;
    sub_10002D0E8(&v18, 6, "%s: Cannot GetVolumeBlock: %d\n", v10, v11, v12, v13, v14, "VolumeObjectIsValid");
  }

  else
  {
    sub_100020668(v15, DWORD2(v16), a1 + 1292, v10, v11, v12, v13, v14);
    sub_100004D50(*(&xmmword_1000485D8 + 1), &v15, 0);
  }

  return 0;
}

double sub_100020B5C()
{
  if (byte_100048628 != 1)
  {
    byte_100048628 = 1;
    result = 0.0;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
  }

  return result;
}

double sub_100020BAC()
{
  if (byte_100048628 != 1)
  {
    byte_100048628 = 1;
    result = 0.0;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
  }

  return result;
}

BOOL sub_100020BF8(uint64_t a1)
{
  v1 = *(a1 + 776);
  memset(v5, 0, sizeof(v5));
  v2 = 0;
  if (!sub_100004C84(v1, 2, 0, v5))
  {
    v3 = **&v5[0];
    if (v3 == 18520)
    {
      v2 = 1;
    }

    else
    {
      v2 = v3 == 16964 && *(*&v5[0] + 124) == 18520;
    }

    sub_100004D50(v1, v5, 0);
  }

  return v2;
}

double sub_100020C9C()
{
  if (byte_100048628 != 1)
  {
    byte_100048628 = 1;
    result = 0.0;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
  }

  return result;
}

double sub_100020CE8(uint64_t a1)
{
  if ((byte_100048628 & 1) == 0)
  {
    byte_100048628 = 1;
    result = 0.0;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
    return result;
  }

  v27[0] = 0;
  v26[0] = 0;
  if (dword_1000485E8 == 2 && (~xmmword_1000485D8 & 0x18) == 0)
  {
    memset(&v27[1], 0, 24);
    memset(&v26[1], 0, 24);
    if (sub_10001F888(v27))
    {
      if (sub_10002D444() >= 3)
      {
        v22 = xmmword_100043460;
        v23 = *&qword_100043470;
        v24 = xmmword_100043480;
        v25 = *&off_100043490;
        v8 = "\tcould not get primary MDB \n";
LABEL_11:
        sub_10002D0E8(&v22, 2, v8, v2, v3, v4, v5, v6, v22);
        goto LABEL_12;
      }

      goto LABEL_12;
    }

    v9 = v27[0];
    if (sub_10001F7EC(v26))
    {
      if (sub_10002D444() >= 3)
      {
        v22 = xmmword_100043460;
        v23 = *&qword_100043470;
        v24 = xmmword_100043480;
        v25 = *&off_100043490;
        v8 = "\tcould not get alternate MDB \n";
        goto LABEL_11;
      }

LABEL_12:
      if (v27[0])
      {
        result = sub_100004D50(*(&xmmword_1000485D8 + 1), v27, 0);
      }

      if (v26[0])
      {
        return sub_100004D50(*(&xmmword_1000485D8 + 1), v26, 0);
      }

      return result;
    }

    v14 = v9[62];
    if (v14 == 18475 && v26[0][62] == 18475 && v9[64] == v26[0][64] && v9[63] == v26[0][63])
    {
      goto LABEL_12;
    }

    v15 = *(v9 + 5);
    v16 = v15 * v9[63] + (v9[14] << 9) != dword_1000485EC || *(&xmmword_1000485F8 + 1) != (v15 >> 9) * v9[64];
    v17 = *(v26[0] + 5);
    if (v17 * v26[0][63] + (v26[0][14] << 9) == dword_1000485EC)
    {
      v18 = (v17 >> 9) * v26[0][64];
      v19 = *(&xmmword_1000485F8 + 1) != v18;
      v20 = *(&xmmword_1000485F8 + 1) != v18 || v16;
      if (v20)
      {
        v21 = v16;
      }

      else
      {
        v21 = 1;
      }

      if (v14 != 18475 || (v20 & 1) != 0)
      {
        goto LABEL_37;
      }

      v19 = v26[0][62] != 18475;
    }

    else
    {
      v19 = 1;
    }

    v21 = v16;
LABEL_37:
    if (!(v21 | v19))
    {
      goto LABEL_12;
    }

    *(a1 + 18) |= 0x1000u;
    sub_10001EA44(a1, 554, 7, 0, v10, v11, v12, v13);
    if (v21)
    {
      LODWORD(xmmword_1000485D8) = xmmword_1000485D8 & 0xFFFFFFF7;
      if (sub_10002D444() < 3)
      {
        goto LABEL_12;
      }

      v22 = xmmword_100043460;
      v23 = *&qword_100043470;
      v24 = xmmword_100043480;
      v25 = *&off_100043490;
      v8 = "\tinvalid primary wrapper MDB \n";
    }

    else
    {
      LODWORD(xmmword_1000485D8) = xmmword_1000485D8 & 0xFFFFFFEF;
      if (sub_10002D444() < 3)
      {
        goto LABEL_12;
      }

      v22 = xmmword_100043460;
      v23 = *&qword_100043470;
      v24 = xmmword_100043480;
      v25 = *&off_100043490;
      v8 = "\tinvalid alternate wrapper MDB \n";
    }

    goto LABEL_11;
  }

  return result;
}

uint64_t sub_100020FDC(uint64_t result, void *a2, void *a3)
{
  v3 = *(result + 776);
  if ((byte_100048628 & 1) == 0)
  {
    byte_100048628 = 1;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
  }

  v4 = (*(*(*(v3 + 168) + 16) + 56) - *(*(*(*(v3 + 168) + 16) + 760) + 24) + 2 * *(*(*(v3 + 168) + 16) + 40)) + (*(v3 + 44) >> 10) + (*(*(*(v3 + 160) + 16) + 40) - *(*(*(*(v3 + 160) + 16) + 760) + 24) + *(*(*(v3 + 160) + 16) + 56));
  v5 = *(v3 + 176);
  if (v5)
  {
    v4 += (*(*(v5 + 16) + 40) - *(*(*(v5 + 16) + 760) + 24) + *(*(v5 + 16) + 56));
  }

  v6 = (v4 * 0x28F5C28F5C28F5DuLL) >> 64;
  *a3 = v6;
  *a2 = 5 * v6 + v4;
  return result;
}

uint64_t sub_1000210C4(uint64_t a1)
{
  if (*(a1 + 196) < 0x100u)
  {
    return 0;
  }

  memset(v34, 0, sizeof(v34));
  if (!sub_10001F5B8(v34))
  {
LABEL_26:
    v6 = *&v34[0];
    if (*a1 != 18475)
    {
      v3 = 0;
      *(*&v34[0] + 2) = *(a1 + 16);
      *(v6 + 10) = *(a1 + 4);
      *(v6 + 24) = *(a1 + 60);
      *(v6 + 30) = *(a1 + 64);
      *(v6 + 34) = *(a1 + 48);
      v8 = *(a1 + 160);
      *(v6 + 74) = *(v8 + 104);
      *(v6 + 78) = *(*(a1 + 168) + 104);
      *(v6 + 12) = *(a1 + 112);
      *(v6 + 82) = *(a1 + 114);
      *(v6 + 84) = *(a1 + 32);
      v9 = *(v8 + 24);
      *(v6 + 142) = *(v8 + 32);
      *(v6 + 134) = v9;
      v10 = *(a1 + 168);
      v11 = *(v10 + 24);
      *(v6 + 158) = *(v10 + 32);
      *(v6 + 150) = v11;
LABEL_39:
      if (*&v34[0])
      {
        sub_100004D50(a1, v34, 1u);
        v3 = v31;
      }

      *(a1 + 196) = *(a1 + 196);
      return v3;
    }

    if (!*(a1 + 192))
    {
      v3 = 0;
      goto LABEL_37;
    }

    *__dst = 0u;
    v37 = 0u;
    v7 = sub_10001F888(__dst);
    v3 = v7;
    if (v7)
    {
      if (!__dst[0])
      {
LABEL_37:
        *(v6 + 4) = *(a1 + 4);
        *(v6 + 8) = 1718838123;
        *(v6 + 16) = *(a1 + 16);
        *(v6 + 32) = *(a1 + 32);
        *(v6 + 48) = *(a1 + 48);
        *(v6 + 64) = *(a1 + 64);
        *(v6 + 72) = *(a1 + 72);
        *(v6 + 120) = *(*(a1 + 152) + 104);
        *(v6 + 200) = *(*(a1 + 160) + 104);
        *(v6 + 280) = *(*(a1 + 168) + 104);
        v14 = *(a1 + 96);
        *(v6 + 80) = *(a1 + 80);
        *(v6 + 96) = v14;
        v15 = *(a1 + 160);
        v16 = *(v15 + 36);
        v17 = *(v15 + 52);
        v18 = *(v15 + 84);
        *(v6 + 240) = *(v15 + 68);
        *(v6 + 256) = v18;
        *(v6 + 208) = v16;
        *(v6 + 224) = v17;
        *(v6 + 192) = *(v15 + 112);
        *(v6 + 204) = *(v15 + 120) / *(a1 + 40);
        v19 = *(a1 + 168);
        v20 = *(v19 + 36);
        v21 = *(v19 + 52);
        v22 = *(v19 + 84);
        *(v6 + 320) = *(v19 + 68);
        *(v6 + 336) = v22;
        *(v6 + 288) = v20;
        *(v6 + 304) = v21;
        *(v6 + 272) = *(v19 + 112);
        *(v6 + 284) = *(v19 + 120) / *(a1 + 40);
        v23 = *(a1 + 152);
        v24 = *(v23 + 36);
        v25 = *(v23 + 52);
        v26 = *(v23 + 84);
        *(v6 + 160) = *(v23 + 68);
        *(v6 + 176) = v26;
        *(v6 + 128) = v24;
        *(v6 + 144) = v25;
        *(v6 + 112) = *(v23 + 112);
        *(v6 + 124) = *(v23 + 120) / *(a1 + 40);
        v27 = *(a1 + 176);
        if (v27)
        {
          v28 = *(v27 + 36);
          v29 = *(v27 + 52);
          v30 = *(v27 + 84);
          *(v6 + 400) = *(v27 + 68);
          *(v6 + 416) = v30;
          *(v6 + 368) = v28;
          *(v6 + 384) = v29;
          *(v6 + 352) = *(v27 + 112);
          *(v6 + 360) = *(v27 + 104);
          *(v6 + 364) = *(v27 + 120) / *(a1 + 40);
        }

        goto LABEL_39;
      }
    }

    else
    {
      v12 = *(a1 + 16);
      if (*(__dst[0] + 2) != v12)
      {
        *(__dst[0] + 2) = v12;
        v13 = 1;
        goto LABEL_36;
      }
    }

    v13 = 0;
LABEL_36:
    sub_100004D50(a1, __dst, v13);
    goto LABEL_37;
  }

  if (*&v34[0])
  {
    sub_100004D50(a1, v34, 0);
    *&v34[0] = 0;
  }

  if ((byte_100048628 & 1) == 0)
  {
    byte_100048628 = 1;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
    return -57;
  }

  __dst[0] = 0;
  __src[0] = 0;
  if ((dword_1000485E8 - 1) > 2 || !**(&off_10003C518 + (dword_1000485E8 - 1)))
  {
    return -57;
  }

  __dst[1] = 0;
  v37 = 0uLL;
  memset(&__src[1], 0, 24);
  v2 = sub_10001F5B8(__dst);
  if (v2)
  {
    v3 = v2;
    if (v2 != 65479 && v2 != 65476)
    {
      goto LABEL_20;
    }
  }

  v4 = sub_10001F43C(__src);
  if ((byte_100048628 & 1) == 0)
  {
    byte_100048628 = 1;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
    goto LABEL_19;
  }

  v3 = v4;
  if (dword_1000485E8 != 1)
  {
    if ((xmmword_1000485D8 & 4) != 0)
    {
      goto LABEL_44;
    }

LABEL_19:
    v3 = -60;
    goto LABEL_20;
  }

  if ((xmmword_1000485D8 & 0x10) == 0)
  {
    goto LABEL_19;
  }

LABEL_44:
  if (!v4)
  {
    memmove(__dst[0], __src[0], 0x200uLL);
    sub_100004D50(*(&xmmword_1000485D8 + 1), __dst, 1u);
    __dst[0] = 0;
    v3 = 0;
    if (dword_1000485E8 == 1)
    {
      v33 = xmmword_1000485D8 | 8;
    }

    else
    {
      v33 = xmmword_1000485D8 | 2;
    }

    LODWORD(xmmword_1000485D8) = v33;
  }

LABEL_20:
  if (__dst[0])
  {
    sub_100004D50(*(&xmmword_1000485D8 + 1), __dst, 0);
  }

  if (__src[0])
  {
    sub_100004D50(*(&xmmword_1000485D8 + 1), __src, 0);
  }

  if (!v3)
  {
    v5 = sub_10001F5B8(v34);
    v3 = v5;
    if (!v5)
    {
      goto LABEL_26;
    }
  }

  return v3;
}

uint64_t sub_100021540(uint64_t a1)
{
  __src[0] = 0;
  __dst[0] = 0;
  if ((byte_100048628 & 1) == 0)
  {
    byte_100048628 = 1;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
  }

  memset(&__src[1], 0, 24);
  memset(&__dst[1], 0, 24);
  sub_1000210C4(a1);
  v2 = sub_10001F5B8(__src);
  if ((byte_100048628 & 1) == 0)
  {
    byte_100048628 = 1;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
    goto LABEL_8;
  }

  v3 = v2;
  v4 = dword_1000485E8;
  if (dword_1000485E8 == 1)
  {
    if ((xmmword_1000485D8 & 8) != 0)
    {
      v4 = 1;
      goto LABEL_15;
    }

LABEL_8:
    v3 = -60;
    goto LABEL_9;
  }

  if ((xmmword_1000485D8 & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_15:
  if (!v2)
  {
    v6 = v4 - 1;
    if (v6 <= 2 && **(&off_10003C530 + v6))
    {
      v7 = sub_10001F43C(__dst);
      v3 = v7;
      if (!v7 || v7 == 65479 || v7 == 65476)
      {
        memmove(__dst[0], __src[0], 0x200uLL);
        sub_100004D50(a1, __dst, 1u);
        __dst[0] = 0;
      }
    }

    else
    {
      v3 = 0;
    }
  }

LABEL_9:
  if (__src[0])
  {
    sub_100004D50(a1, __src, 0);
  }

  if (__dst[0])
  {
    sub_100004D50(a1, __dst, 0);
  }

  return v3;
}

uint64_t sub_1000216C8(uint64_t a1, __int16 a2, uint64_t a3, unint64_t a4, unsigned int a5, _DWORD *a6)
{
  v12 = 0;
  v11 = 0;
  *a6 = 0;
  v8 = *(a3 + 64);
  v9 = *(a3 + 80);
  result = sub_100013BC0(a1, qword_100043578 + a2, a5, a4 >> 9, &v12, &v11);
  if (!result)
  {
    return sub_1000137E0(*(a1 + 202), *(a1 + 198), (v8 + v9), v12 << 9, v11, a6);
  }

  return result;
}

uint64_t sub_100021758(int a1, unsigned __int8 *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 >= 1)
  {
    v9 = a1 << (a3 != 0);
    if (v9 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    do
    {
      v11 = *a2++;
      v14 = xmmword_100043460;
      v15 = *&qword_100043470;
      v16 = xmmword_100043480;
      v17 = *&off_100043490;
      sub_10002D0E8(&v14, 2, "%02X ", a4, a5, a6, a7, a8, v11);
      --v10;
    }

    while (v10);
  }

  v14 = xmmword_100043460;
  v15 = *&qword_100043470;
  v16 = xmmword_100043480;
  v17 = *&off_100043490;
  return sub_10002D0E8(&v14, 2, "\n", a4, a5, a6, a7, a8, v13);
}

uint64_t sub_100021808(uint64_t result, unsigned int a2)
{
  if (result)
  {
    ++*(result + 4 * (a2 % 0x1B) + 128);
    ++*(result + 4 * (a2 % 0x19) + 236);
    ++*(result + 4 * (a2 % 7) + 336);
    ++*(result + 4 * (a2 % 0xB) + 364);
    ++*(result + 4 * (a2 % 0xD) + 408);
    ++*(result + 4 * (a2 % 0x11) + 460);
    ++*(result + 4 * (a2 % 0x13) + 528);
    ++*(result + 4 * (a2 % 0x17) + 604);
    ++*(result + 4 * (a2 % 0x1D) + 696);
    ++*(result + 4 * (a2 % 0x1F) + 812);
    ++*(result + 4 * (a2 & 0x1F));
  }

  return result;
}

uint64_t sub_1000219E0(uint64_t result, unint64_t a2)
{
  if (result)
  {
    ++*(result + 4 * (a2 % 0x1B) + 128);
    ++*(result + 4 * (a2 % 0x19) + 236);
    ++*(result + 4 * (a2 % 7) + 336);
    ++*(result + 4 * (a2 % 0xB) + 364);
    ++*(result + 4 * (a2 % 0xD) + 408);
    ++*(result + 4 * (a2 % 0x11) + 460);
    ++*(result + 4 * (a2 % 0x13) + 528);
    ++*(result + 4 * (a2 % 0x17) + 604);
    ++*(result + 4 * (a2 % 0x1D) + 696);
    ++*(result + 4 * (a2 % 0x1F) + 812);
    ++*(result + 4 * (a2 & 0x1F));
  }

  return result;
}

uint64_t sub_100021BFC(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  while (*(a1 + v2) == *(a2 + v2))
  {
    v2 += 4;
    if (v2 == 128)
    {
      v3 = 0;
      while (*(a1 + 128 + v3) == *(a2 + 128 + v3))
      {
        v3 += 4;
        if (v3 == 108)
        {
          v4 = 0;
          while (*(a1 + 236 + v4) == *(a2 + 236 + v4))
          {
            v4 += 4;
            if (v4 == 100)
            {
              v5 = 0;
              while (*(a1 + 336 + v5) == *(a2 + 336 + v5))
              {
                v5 += 4;
                if (v5 == 28)
                {
                  v6 = 0;
                  while (*(a1 + 364 + v6) == *(a2 + 364 + v6))
                  {
                    v6 += 4;
                    if (v6 == 44)
                    {
                      v7 = 0;
                      while (*(a1 + 408 + v7) == *(a2 + 408 + v7))
                      {
                        v7 += 4;
                        if (v7 == 52)
                        {
                          v8 = 0;
                          while (*(a1 + 460 + v8) == *(a2 + 460 + v8))
                          {
                            v8 += 4;
                            if (v8 == 68)
                            {
                              v9 = 0;
                              while (*(a1 + 528 + v9) == *(a2 + 528 + v9))
                              {
                                v9 += 4;
                                if (v9 == 76)
                                {
                                  v10 = 0;
                                  while (*(a1 + 604 + v10) == *(a2 + 604 + v10))
                                  {
                                    v10 += 4;
                                    if (v10 == 92)
                                    {
                                      v11 = 0;
                                      while (*(a1 + 696 + v11) == *(a2 + 696 + v11))
                                      {
                                        v11 += 4;
                                        if (v11 == 116)
                                        {
                                          v12 = 0;
                                          v13 = a1 + 812;
                                          while (*(v13 + v12) == *(a2 + 812 + v12))
                                          {
                                            result = 0;
                                            v12 += 4;
                                            if (v12 == 124)
                                            {
                                              return result;
                                            }
                                          }

                                          return 1;
                                        }
                                      }

                                      return 1;
                                    }
                                  }

                                  return 1;
                                }
                              }

                              return 1;
                            }
                          }

                          return 1;
                        }
                      }

                      return 1;
                    }
                  }

                  return 1;
                }
              }

              return 1;
            }
          }

          return 1;
        }
      }

      return 1;
    }
  }

  return 1;
}

uint64_t sub_100021DBC(uint64_t a1, int a2)
{
  v3 = *(a1 + 776);
  memset(v13, 0, sizeof(v13));
  if (sub_100004C84(v3, 2, 0, v13))
  {
    return 0;
  }

  v5 = *&v13[0];
  v6 = **&v13[0];
  if (v6 == 18520 || v6 == 18475)
  {
    goto LABEL_8;
  }

  if (v6 != 16964 || *(*&v13[0] + 124) != 18475)
  {
    goto LABEL_24;
  }

  v11 = *(*&v13[0] + 28) + (*(*&v13[0] + 20) >> 9) * *(*&v13[0] + 126) + 2;
  sub_100004D50(v3, v13, 0);
  if (!sub_100004C84(v3, v11, 0, v13))
  {
    v5 = *&v13[0];
    if (!*&v13[0])
    {
LABEL_24:
      v4 = 0;
LABEL_25:
      sub_100004D50(v3, v13, 0);
      return v4;
    }

LABEL_8:
    if (!sub_10001F3E4(v5))
    {
      v4 = (*(v5 + 4) >> 13) & 1;
      if (a2 == 1)
      {
        goto LABEL_25;
      }

      v8 = *(v5 + 8);
      if (v8 != 1179863841 && (*(v5 + 4) & 0x4000) == 0 && (v8 == 1212568394 || (*(v5 + 4) & 0x100) != 0))
      {
        goto LABEL_25;
      }
    }

    goto LABEL_24;
  }

  return 0;
}

uint64_t sub_100021F0C(uint64_t a1, uint64_t a2)
{
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  v4 = sub_10002D408();
  v5 = sub_10002230C(a1, v47);
  if (v5 || (v47[0].i8[3] & 4) != 0)
  {
    return 1;
  }

  v7 = *(v47[2].u64 + 4);
  __chkstk_darwin(v5, v6);
  v13 = &v43 - ((v4 + 15) & 0x1FFFFFFF0);
  if (v47[0].i8[3])
  {
    v20 = dup(*(a1 + 8));
    *(a2 + 24) = strdup((a1 + 1292));
  }

  else
  {
    if (a2)
    {
      v14 = (a2 + 24);
    }

    else
    {
      v14 = 0;
    }

    if (byte_10004350E)
    {
      *(&v43 + 1) = *(&xmmword_100043460 + 1);
      v44 = *&qword_100043470;
      v45 = xmmword_100043480;
      v46 = *&off_100043490;
      sub_10002D0E8(&v43, 2, "External Journal device\n", v8, v9, v10, v11, v12, xmmword_100043460);
    }

    v20 = sub_10002A5B8(v47[3].i64 + 4, v14);
  }

  if (v20 == -1)
  {
    if (byte_10004350E)
    {
      v43 = xmmword_100043460;
      v44 = *&qword_100043470;
      v45 = xmmword_100043480;
      v46 = *&off_100043490;
      sub_10002D0E8(&v43, 2, "Unable to get journal file descriptor, journal flags = %#x\n", v15, v16, v17, v18, v19, bswap32(v47[0].u32[0]));
    }

    return 1;
  }

  v22 = bswap64(v7);
  if (a2)
  {
    *a2 = v20;
    *(a2 + 8) = vrev64q_s8(*(&v47[2] + 4));
  }

  v23 = pread(v20, &v43 - ((v4 + 15) & 0x1FFFFFFF0), v4, v22);
  if (v23 == -1)
  {
    if (byte_10004350E)
    {
      v30 = __error();
      strerror(*v30);
      v43 = xmmword_100043460;
      v44 = *&qword_100043470;
      v45 = xmmword_100043480;
      v46 = *&off_100043490;
      sub_10002D0E8(&v43, 2, "Could not read journal from descriptor %d: %s", v31, v32, v33, v34, v35, v20);
    }

    v29 = *__error() == 0;
    if (!a2)
    {
      goto LABEL_24;
    }
  }

  else if (v23 == v4)
  {
    v29 = 1;
    if (!a2)
    {
LABEL_24:
      close(v20);
    }
  }

  else
  {
    if (byte_10004350E)
    {
      v43 = xmmword_100043460;
      v44 = *&qword_100043470;
      v45 = xmmword_100043480;
      v46 = *&off_100043490;
      sub_10002D0E8(&v43, 2, "Only read %zd bytes from journal (expected %zd)", v24, v25, v26, v27, v28, v23);
    }

    v29 = 0;
    if (!a2)
    {
      goto LABEL_24;
    }
  }

  if (!v29 || *v13 != 2018266698 && *v13 != 1246645368)
  {
    return 1;
  }

  v36 = *(v13 + 1);
  if (v36 != 305419896)
  {
    if (v36 == 2018915346)
    {
      v37 = bswap32(*(v13 + 9));
      goto LABEL_36;
    }

    return 1;
  }

  v37 = *(v13 + 9);
LABEL_36:
  v38 = 0;
  v39 = 0;
  *(v13 + 9) = 0;
  do
  {
    v39 = (v39 + v13[v38++]) ^ (v39 << 8);
  }

  while (v38 != 44);
  if (v37 != ~v39 && byte_10004350E != 0)
  {
    v43 = xmmword_100043460;
    v44 = *&qword_100043470;
    v45 = xmmword_100043480;
    v46 = *&off_100043490;
    sub_10002D0E8(&v43, 2, "Journal checksum doesn't match:  orig %x != calc %x\n", v24, v25, v26, v27, v28, v37);
  }

  v41 = *(v13 + 1);
  if (v41 == *(v13 + 2))
  {
    return 1;
  }

  if (byte_10004350E)
  {
    v42 = bswap64(v41);
    if (v36 != 305419896)
    {
      v41 = v42;
    }

    v43 = xmmword_100043460;
    v44 = *&qword_100043470;
    v45 = xmmword_100043480;
    v46 = *&off_100043490;
    sub_10002D0E8(&v43, 2, "Non-empty journal:  start = %lld, end = %lld\n", v24, v25, v26, v27, v28, v41);
  }

  return 0;
}

uint64_t sub_10002230C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    goto LABEL_19;
  }

  v4 = *(a1 + 776);
  memset(v42, 0, sizeof(v42));
  LOWORD(v5) = sub_100004C84(v4, 2, 0, v42);
  if (!v5)
  {
    v11 = *&v42[0];
    v12 = **&v42[0];
    if (v12 == 18520 || v12 == 18475)
    {
      v14 = 0;
LABEL_9:
      v5 = sub_10001F3E4(v11);
      if (!v5)
      {
        v15 = *(v11 + 12);
        v16 = *(v11 + 40);
        v17 = sub_10002D408();
        v18 = sub_100004D50(v4, v42, 0);
        if (v15)
        {
          v19 = __chkstk_darwin(*(a1 + 8), v18);
          v21 = &v38 - ((v20 + 15) & 0x1FFFFFFF0);
          if (pread(v19, v21, v20, v14 + v16 * v22) == v17)
          {
            LOWORD(v5) = 0;
            *(a2 + 176) = *(v21 + 44);
            v28 = *(v21 + 9);
            *(a2 + 128) = *(v21 + 8);
            *(a2 + 144) = v28;
            *(a2 + 160) = *(v21 + 10);
            v29 = *(v21 + 5);
            *(a2 + 64) = *(v21 + 4);
            *(a2 + 80) = v29;
            v30 = *(v21 + 7);
            *(a2 + 96) = *(v21 + 6);
            *(a2 + 112) = v30;
            v31 = *(v21 + 1);
            *a2 = *v21;
            *(a2 + 16) = v31;
            v32 = *(v21 + 3);
            *(a2 + 32) = *(v21 + 2);
            *(a2 + 48) = v32;
          }

          else
          {
            if (byte_10004350E)
            {
              v38 = xmmword_100043460;
              v39 = *&qword_100043470;
              v40 = xmmword_100043480;
              v41 = *&off_100043490;
              sub_10002D0E8(&v38, 2, "%s: Tried to read JIB, got %zd\n", v23, v24, v25, v26, v27, "GetJournalInfoBlock");
            }

            LOWORD(v5) = 22;
          }
        }

        else
        {
          LOWORD(v5) = 0;
        }
      }

      return v5;
    }

    if (v12 != 16964 || *(*&v42[0] + 124) != 18475)
    {
      goto LABEL_19;
    }

    v33 = *(*&v42[0] + 20);
    v34 = *(*&v42[0] + 28);
    v35 = *(*&v42[0] + 126);
    v36 = v34 + (v33 >> 9) * v35 + 2;
    v14 = v33 * v35 + (v34 << 9);
    if (byte_10004350E)
    {
      v38 = xmmword_100043460;
      v39 = *&qword_100043470;
      v40 = xmmword_100043480;
      v41 = *&off_100043490;
      sub_10002D0E8(&v38, 2, "Embedded offset is %lld\n", v6, v7, v8, v9, v10, v14);
    }

    sub_100004D50(v4, v42, 0);
    LOWORD(v5) = sub_100004C84(v4, v36, 0, v42);
    if (!v5)
    {
      v11 = *&v42[0];
      if (!*&v42[0])
      {
LABEL_19:
        LOWORD(v5) = -50;
        return v5;
      }

      goto LABEL_9;
    }
  }

  return v5;
}

uint64_t sub_100022598(uint64_t a1, int a2, _BYTE *a3)
{
  memset(v41, 0, sizeof(v41));
  v40 = 0;
  *a3 = 0;
  v6 = *(a1 + 776);
  sub_10001F344(&v40);
  if (!v40)
  {
    if (sub_10002D444() >= 3)
    {
      v36 = xmmword_100043460;
      v37 = *&qword_100043470;
      v38 = xmmword_100043480;
      v39 = *&off_100043490;
      sub_10002D0E8(&v36, 2, "\t%s - unknown volume type \n", v12, v13, v14, v15, v16, "CheckForClean");
    }

    goto LABEL_7;
  }

  if (sub_10001F5B8(v41))
  {
    if (sub_10002D444() >= 3)
    {
      v36 = xmmword_100043460;
      v37 = *&qword_100043470;
      v38 = xmmword_100043480;
      v39 = *&off_100043490;
      sub_10002D0E8(&v36, 2, "\t%s - could not get VHB/MDB at block %qd \n", v7, v8, v9, v10, v11, "CheckForClean");
    }

LABEL_7:
    v17 = 0;
    v18 = 0xFFFFFFFFLL;
    goto LABEL_8;
  }

  sub_100020B5C();
  if (v26)
  {
    v27 = *&v41[0];
    v18 = (*(*&v41[0] + 4) & 0x4100) == 256;
    if (*(*&v41[0] + 8) == 1179863841)
    {
      *(a1 + 34) |= 0x8000u;
      sub_10001ECB0(a1, 574, v20, v21, v22, v23, v24, v25);
      v18 = 0;
    }

    if (a2 == 2)
    {
      v34 = *(v27 + 4);
      if ((v34 & 0x100) != 0)
      {
        v29 = 0;
        if ((v34 & 0x4000) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v34 |= 0x100u;
        *(v27 + 4) = v34;
        v29 = 1;
        if ((v34 & 0x4000) == 0)
        {
          goto LABEL_31;
        }
      }

      v35 = v34 & 0xFFFFBFFF;
      goto LABEL_34;
    }

    if (a2 == 1)
    {
      v28 = *(v27 + 4);
      if ((v28 & 0x100) != 0)
      {
        v28 &= ~0x100u;
        *(v27 + 4) = v28;
        v29 = 1;
        if ((v28 & 0x4000) != 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v29 = 0;
        if ((v28 & 0x4000) != 0)
        {
LABEL_31:
          if (v29 != 1)
          {
            goto LABEL_46;
          }

          goto LABEL_35;
        }
      }

      v35 = v28 | 0x4000;
LABEL_34:
      *(v27 + 4) = v35;
LABEL_35:
      *(v27 + 8) = 1718838123;
      goto LABEL_36;
    }

LABEL_46:
    v17 = 0;
    goto LABEL_8;
  }

  sub_100020BAC();
  if (!v30)
  {
    v17 = 0;
    v18 = 1;
    goto LABEL_8;
  }

  v31 = *&v41[0];
  v32 = *(*&v41[0] + 10);
  v18 = (v32 & 0x4100) == 256;
  if (a2 != 2)
  {
    if (a2 != 1)
    {
      goto LABEL_46;
    }

    if ((*(*&v41[0] + 10) & 0x100) != 0)
    {
      v32 &= ~0x100u;
      *(*&v41[0] + 10) = v32;
      v33 = 1;
    }

    else
    {
      v33 = 0;
    }

    if ((v32 & 0x4000) == 0)
    {
      v18 = 0;
      *(v31 + 10) = v32 | 0x4000;
      v17 = 1;
      *a3 = 1;
      goto LABEL_8;
    }

    goto LABEL_45;
  }

  if ((*(*&v41[0] + 10) & 0x100) != 0)
  {
    v33 = 0;
  }

  else
  {
    v32 |= 0x100u;
    *(*&v41[0] + 10) = v32;
    v33 = 1;
  }

  if ((v32 & 0x4000) == 0)
  {
LABEL_45:
    if (v33)
    {
LABEL_36:
      v17 = 1;
      *a3 = 1;
      if (a2 == 1)
      {
        v18 = 0;
        goto LABEL_8;
      }

      goto LABEL_48;
    }

    goto LABEL_46;
  }

  *(v31 + 10) = v32 & 0xBFFF;
  *a3 = 1;
LABEL_48:
  v18 = 1;
  v17 = 1;
LABEL_8:
  if (*&v41[0])
  {
    sub_100004D50(v6, v41, v17);
  }

  return v18;
}

uint64_t sub_100022844(uint64_t a1)
{
  v2 = *(a1 + 776);
  v132 = 0;
  *(a1 + 48) = -1;
  *(a1 + 56) = 0;
  memset(v131, 0, sizeof(v131));
  sub_10001F308();
  v4 = v3;
  if (*(v3 + 32) <= 2uLL)
  {
    if (sub_10002D444() >= 3)
    {
      v10 = *(v4 + 32);
      v11 = *(v4 + 24);
      v127 = xmmword_100043460;
      v128 = *&qword_100043470;
      v129 = xmmword_100043480;
      v130 = *&off_100043490;
      sub_10002D0E8(&v127, 2, "\tinvalid device information for volume - total sectors = %qd sector size = %d \n", v5, v6, v7, v8, v9, v10);
    }

    return 123;
  }

  sub_10001F344(&v132);
  if (!v132 || !*(v4 + 16))
  {
    if (sub_10002D444() >= 3)
    {
      v127 = xmmword_100043460;
      v128 = *&qword_100043470;
      v129 = xmmword_100043480;
      v130 = *&off_100043490;
      sub_10002D0E8(&v127, 2, "\t%s - unknown volume type \n", v19, v20, v21, v22, v23, "IVChk");
    }

    v12 = 6;
    goto LABEL_13;
  }

  v13 = sub_10001F220(v131);
  if (v13)
  {
    v12 = v13;
    if (sub_10002D444() >= 3)
    {
      v127 = xmmword_100043460;
      v128 = *&qword_100043470;
      v129 = xmmword_100043480;
      v130 = *&off_100043490;
      sub_10002D0E8(&v127, 2, "\t%s - bad volume header - err %d \n", v14, v15, v16, v17, v18, "IVChk");
    }

    goto LABEL_13;
  }

  v25 = *&v131[0];
  sub_100020BAC();
  if (v26)
  {
    v27 = *(v25 + 124);
    if (*(v25 + 124))
    {
      v133 = 0;
      v134 = 0;
      v28 = *(a1 + 776);
      v127 = 0u;
      v128 = 0u;
      sub_10001F308();
      v30 = v29;
      *(v4 + 16) = 2;
      if (v27 == 18475)
      {
        v31 = *(v25 + 28) + (*(v25 + 20) >> 9) * *(v25 + 126) + 2;
        v134 = v31;
        if (!sub_100004C84(v28, v31, 0, &v127))
        {
          v32 = v127;
          *(v30 + 48) = v31;
          v33 = sub_10001F3E4(v32);
          sub_100004D50(v28, &v127, 0);
          if (!v33)
          {
            *v30 |= 2u;
LABEL_35:
            sub_100020C9C();
            if (!v53 || (sub_100004D50(v2, v131, 0), *&v131[0] = 0, sub_10001F734(v131)))
            {
              if (sub_10002D444() >= 3)
              {
                v127 = xmmword_100043460;
                v128 = *&qword_100043470;
                v129 = xmmword_100043480;
                v130 = *&off_100043490;
                sub_10002D0E8(&v127, 2, "\t%s - bad volume header - err %d \n", v54, v55, v56, v57, v58, "IVChk");
              }

              sub_10001EA44(a1, 4294966732, 1, 0, v55, v56, v57, v58);
              v12 = -564;
              goto LABEL_13;
            }

            sub_10001F344(&v132);
            v25 = 0;
            goto LABEL_41;
          }

          if (*(v25 + 124) == 18475)
          {
            LOWORD(v34) = *(v25 + 126);
            LOWORD(v35) = *(v25 + 128);
            v36 = *(v25 + 28);
            v37 = *(v25 + 20);
            goto LABEL_29;
          }
        }

        goto LABEL_34;
      }
    }

    else
    {
      if (*(v25 + 128))
      {
        v133 = 0;
        v134 = 0;
        v127 = 0u;
        v128 = 0u;
      }

      else
      {
        if (!*(v25 + 126))
        {
          goto LABEL_41;
        }

        v133 = 0;
        v134 = 0;
        v127 = 0u;
        v128 = 0u;
        if (!*(v25 + 126))
        {
          goto LABEL_34;
        }
      }

      sub_10001F308();
      v30 = v38;
      *(v4 + 16) = 2;
    }

    v39 = *(v25 + 20) >> 9;
    if (!sub_100027638(a1, *(v30 + 32) - v39 - 4, *(v25 + 20) >> 9, &v133))
    {
      v40 = v133;
      *(v30 + 56) = v133;
      *v30 |= 4u;
      if (!sub_100027638(a1, *(v25 + 28) + 4 * v39, 10 * v39, &v134))
      {
        v41 = v134;
        *(v30 + 48) = v134;
        *v30 |= 2u;
        v35 = (v40 - v41 + 4) / v39;
        v36 = *(v25 + 28);
        v34 = (v41 - v36 - 2) / v39;
        v37 = *(v25 + 20);
        *(v30 + 20) = v34 * v37 + (v36 << 9);
LABEL_29:
        v42 = v36 + v34 * (v37 >> 9) + 2;
        if (!sub_100027638(a1, v36 + v34 * (v37 >> 9) + 2, v37 >> 9, &v134))
        {
          *(v25 + 128) = v35;
          *(v25 + 126) = v34;
          *(v25 + 124) = 18475;
          v49 = v134;
          v50 = *(v25 + 28) + v134 - v42;
          *(v25 + 28) = v50;
          v51 = *(v25 + 20);
          *(v30 + 20) = v51 * v34 + (v50 << 9);
          *(v30 + 40) = (v51 >> 9) * v35;
          *(v30 + 48) = v49;
          *v30 |= 2u;
          *(a1 + 18) |= 0x8000u;
          sub_10001ECB0(a1, 565, v43, v44, v45, v46, v47, v48);
          v52 = sub_10001F024(a1, 8);
          if (v52)
          {
            *(v52 + 4) = 565;
            *(v52 + 22) = *(v25 + 28);
            *(v52 + 23) = *(v25 + 124);
            *(v52 + 12) = *(v25 + 126);
            *(a1 + 18) |= 0x200u;
          }

          goto LABEL_35;
        }
      }
    }

LABEL_34:
    *(v4 + 16) = 1;
    goto LABEL_35;
  }

LABEL_41:
  sub_100020C9C();
  v59 = 40;
  if (!v60)
  {
    v59 = 32;
  }

  v61 = *(v4 + v59);
  sub_100020B5C();
  if (v68)
  {
    v69 = *&v131[0];
    v70 = (a1 + 872);
    v71 = *(a1 + 888);
    if ((*(*&v131[0] + 5) & 0x20) != 0)
    {
      v127 = *v70;
      v128 = v71;
      v86 = *(a1 + 920);
      v129 = *(a1 + 904);
      v130 = v86;
      v73 = 213;
    }

    else
    {
      v127 = *v70;
      v128 = v71;
      v72 = *(a1 + 920);
      v129 = *(a1 + 904);
      v130 = v72;
      v73 = 217;
    }

    sub_10002D0A4(&v127, v73, v62, v63, v64, v65, v66, v67, v126);
    *(a1 + 690) = 8;
    *v2 = 18475;
    v93 = *(v4 + 20);
    *(v2 + 118) = v93 >> 9;
    *(v2 + 192) = v93;
    v83 = v69[10];
    v84 = v69[11];
    *(v2 + 64) = v69[16];
    *(v2 + 16) = v69[4];
    *(v2 + 4) = v69[1] & 0x1000;
    if (!v69[91])
    {
      *(v2 + 176) = 0;
    }

    *(*(*(v2 + 160) + 16) + 136) |= 2u;
    if (v84 > (*(v4 + 32) / (v83 >> 9)))
    {
      sub_10001ECB0(a1, 4294966789, v87, v88, v89, v90, v91, v92);
      if (sub_10002D444() >= 3)
      {
        v127 = xmmword_100043460;
        v128 = *&qword_100043470;
        v129 = xmmword_100043480;
        v130 = *&off_100043490;
        sub_10002D0E8(&v127, 2, "\t%s - volume header total allocation blocks is greater than device size \n", v94, v95, v96, v97, v98, "IVChk");
        v99 = v69[11];
        v127 = xmmword_100043460;
        v128 = *&qword_100043470;
        v129 = xmmword_100043480;
        v130 = *&off_100043490;
        sub_10002D0E8(&v127, 2, "\tvolume allocation block count %d device allocation block count %d \n", v100, v101, v102, v103, v104, v99);
      }

      goto LABEL_70;
    }
  }

  else
  {
    sub_100020BAC();
    if (v80)
    {
      v81 = *(a1 + 888);
      v127 = *(a1 + 872);
      v128 = v81;
      v82 = *(a1 + 920);
      v129 = *(a1 + 904);
      v130 = v82;
      sub_10002D0A4(&v127, 216, v74, v75, v76, v77, v78, v79, v126);
      *(a1 + 690) = 3;
      *v2 = *v25;
      *(v2 + 64) = *(v25 + 30);
      *(v2 + 16) = *(v25 + 2);
      LODWORD(v83) = *(v25 + 20);
      v84 = *(v25 + 18);
      v85 = 0xFFFFLL;
      goto LABEL_56;
    }

    LODWORD(v83) = 0;
    v84 = 0;
  }

  v85 = 0xFFFFFFFFLL;
LABEL_56:
  *(a1 + 56) = v132;
  if (v61 <= v85)
  {
    v106 = 512;
  }

  else
  {
    v105 = 2;
    v106 = 512;
    do
    {
      v107 = v61 / v105++;
      v106 += 512;
    }

    while (v107 > v85);
  }

  *(v2 + 40) = v83;
  sub_100020B5C();
  if (v114)
  {
    if ((v83 ^ (v83 - 1)) <= v83 - 1)
    {
      goto LABEL_71;
    }
  }

  else if ((v83 - 2147483137) < 0x80000200 || (v83 & 0x1FF) != 0)
  {
    goto LABEL_71;
  }

  if (v83 < v106)
  {
LABEL_71:
    sub_10001ECB0(a1, 4294966790, v108, v109, v110, v111, v112, v113);
    v12 = -506;
    goto LABEL_13;
  }

  *(v2 + 44) = v84;
  *(v2 + 48) = 0;
  sub_100020BAC();
  if (v121)
  {
    v122 = v83 >> 9;
    v123 = ((v61 / v122) + 4095) >> 12;
    if (v84 > ((v61 - v123 - 3) / v122))
    {
      sub_10001ECB0(a1, 4294966789, v115, v116, v117, v118, v119, v120);
LABEL_70:
      v12 = -507;
      goto LABEL_13;
    }

    v124 = *(v25 + 14);
    if (v124 > 2)
    {
      *(v2 + 116) = v124;
      v125 = *(v25 + 28);
      if (v123 + v124 <= v125)
      {
        v12 = 0;
        *(v2 + 118) = v125;
      }

      else
      {
        sub_10001ECB0(a1, 4294966787, v115, v116, v117, v118, v119, v120);
        v12 = -509;
      }
    }

    else
    {
      sub_10001ECB0(a1, 4294966788, v115, v116, v117, v118, v119, v120);
      v12 = -508;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_13:
  if (*&v131[0])
  {
    sub_100004D50(v2, v131, 0);
  }

  return v12;
}

uint64_t sub_100023000(uint64_t a1)
{
  v67 = 0u;
  memset(v68, 0, sizeof(v68));
  v65 = 0u;
  v66 = 0u;
  memset(v64, 0, sizeof(v64));
  memset(&v63[1], 0, 24);
  sub_100020B5C();
  v3 = v2;
  *(a1 + 48) = 3;
  *(a1 + 56) = 0;
  v4 = *(a1 + 776);
  v5 = *(a1 + 832);
  v63[0] = 0;
  v6 = sub_10001F220(v63);
  if (v6)
  {
    goto LABEL_2;
  }

  v69 = 0;
  v9 = v63[0];
  v10 = *(a1 + 784);
  if (!v3)
  {
    v28 = *(v63[0] + 67);
    *(v10 + 32) = *(v63[0] + 71);
    *(v10 + 24) = v28;
    v6 = sub_1000233C8(a1, 3, 0, 0, (*(a1 + 784) + 24), &v69);
    if (v6)
    {
      goto LABEL_2;
    }

    v35 = *(v9 + 65);
    v36 = v69;
    if (*(*(a1 + 776) + 40) * v69 != v35)
    {
      sub_10001ECB0(a1, 4294966752, v29, v30, v31, v32, v33, v34);
      if (byte_10004350E)
      {
        v57 = *(v9 + 65);
        v58 = *(*(a1 + 776) + 40) * v36;
        v59 = xmmword_100043460;
        v60 = *&qword_100043470;
        v61 = xmmword_100043480;
        v62 = *&off_100043490;
        sub_10002D0E8(&v59, 2, "Alternate MDB drXTFlSize = %llu, should be %llu\n", v52, v53, v54, v55, v56, v57);
      }

      goto LABEL_27;
    }

    v37 = *(a1 + 784);
    *(v37 + 112) = v35;
    *(v37 + 120) = v35;
    v6 = sub_10001EDB4(a1, v37, v64);
    if (!v6)
    {
      *(v5 + 54) = 7;
      *(v5 + 8) = sub_100014CCC;
      v38 = *(v64 + 6);
      *(v5 + 32) = v64[0];
      *(v5 + 36) = *(v64 + 2);
      *(v5 + 40) = v38;
      *(v5 + 44) = *(v64 + 10);
      v39 = WORD1(v64[1]);
      *(v5 + 52) = WORD1(v64[1]);
      v40 = *(*(a1 + 784) + 120) / v39;
      *(v5 + 56) = v40;
      *(v5 + 60) = v40;
      v41 = sub_100023790(a1, v5);
      v7 = v41;
      if (v41)
      {
        goto LABEL_3;
      }

      goto LABEL_18;
    }

LABEL_2:
    v7 = v6;
    goto LABEL_3;
  }

  v11 = *(v63[0] + 13);
  v12 = *(v63[0] + 14);
  v13 = *(v63[0] + 15);
  *(v10 + 84) = *(v63[0] + 16);
  *(v10 + 68) = v13;
  *(v10 + 52) = v12;
  *(v10 + 36) = v11;
  v6 = sub_1000233C8(a1, 3, 0, 0, (*(a1 + 784) + 36), &v69);
  if (v6)
  {
    goto LABEL_2;
  }

  v20 = *(v9 + 51);
  if (v20 != v69)
  {
    sub_10001ECB0(a1, 4294966752, v14, v15, v16, v17, v18, v19);
    if (byte_10004350E)
    {
      v51 = *(v9 + 51);
      v59 = xmmword_100043460;
      v60 = *&qword_100043470;
      v61 = xmmword_100043480;
      v62 = *&off_100043490;
      sub_10002D0E8(&v59, 2, "Extents File totalBlocks = %u, numABlks = %u\n", v46, v47, v48, v49, v50, v51);
    }

LABEL_27:
    v7 = -544;
    goto LABEL_3;
  }

  v21 = *(a1 + 784);
  *(v21 + 112) = *(v9 + 24);
  *(v21 + 120) = *(v9 + 10) * v20;
  v6 = sub_10001EDB4(a1, v21, v64);
  if (v6)
  {
    goto LABEL_2;
  }

  *(v5 + 54) = 10;
  *(v5 + 8) = sub_100014D14;
  *(v5 + 136) |= 2u;
  v22 = *(v64 + 6);
  *(v5 + 32) = v64[0];
  *(v5 + 36) = *(v64 + 2);
  *(v5 + 40) = v22;
  *(v5 + 44) = *(v64 + 10);
  v23 = WORD1(v64[1]);
  *(v5 + 52) = WORD1(v64[1]);
  v24 = *(*(a1 + 784) + 120) / v23;
  *(v5 + 56) = v24;
  *(v5 + 60) = v24;
  v25 = sub_100023790(a1, v5);
  v7 = v25;
  if (v25 && *(v5 + 52) != 1024)
  {
    *(v5 + 52) = 1024;
    v26 = *(*(a1 + 784) + 120) >> 10;
    *(v5 + 56) = v26;
    *(v5 + 60) = v26;
    v27 = sub_100023790(a1, v5);
    v7 = v27;
    if (v27)
    {
      goto LABEL_3;
    }

    *(a1 + 22) |= 0x8000u;
  }

LABEL_18:
  if (BYTE4(v65))
  {
    *(a1 + 22) |= 0x80u;
  }

  v42 = malloc_type_calloc(1uLL, 0x20uLL, 0x1030040338E37ACuLL);
  *(v5 + 760) = v42;
  if (v42 && (v43 = (*(v5 + 56) + 7) >> 3, v44 = malloc_type_calloc(1uLL, v43, 0xD88953D7uLL), v45 = *(v5 + 760), (*v45 = v44) != 0))
  {
    *(v45 + 8) = v43;
    *(v45 + 24) = *(&v64[1] + 10);
  }

  else
  {
    v7 = 1;
  }

LABEL_3:
  if (v63[0])
  {
    sub_100004D50(v4, v63, 0);
  }

  return v7;
}

uint64_t sub_1000233C8(uint64_t a1, uint64_t a2, int a3, char *a4, _OWORD *a5, _DWORD *a6)
{
  if (a3 == 1 && !a4)
  {
    sub_10003094C();
  }

  sub_100020B5C();
  v59 = *(a1 + 690);
  if (a5)
  {
    v12 = v11;
    v53 = 0;
    __s = a4;
    v13 = 0;
    v65 = 0;
    v63 = 0;
    v64 = 0;
    v61 = 0;
    v62 = 0;
    v15 = a2 < 0x10 || a3 == 1;
    v52 = v15;
    memset(v66, 0, sizeof(v66));
    v60 = 0;
    while (1)
    {
      v16 = sub_100027734(a1, a2, a5, &v59);
      if (v16)
      {
        v22 = v16;
        v55 = xmmword_100043460;
        v56 = *&qword_100043470;
        v57 = xmmword_100043480;
        v58 = *&off_100043490;
        sub_10002D128(&v55, 1, "%s: Bad extent for fileID %u in extent %u for startblock %u\n", v17, v18, v19, v20, v21, "CheckFileExtents");
        if ((byte_100043529 & 4) != 0)
        {
          v55 = xmmword_100043460;
          v56 = *&qword_100043470;
          v57 = xmmword_100043480;
          v58 = *&off_100043490;
          sub_10002D0E8(&v55, 2, "Extents:\n", v23, v24, v25, v26, v27, v49);
          sub_10002E7B8(a5, 0x40u, 0, v28, v29, v30, v31, v32);
          v55 = xmmword_100043460;
          v56 = *&qword_100043470;
          v57 = xmmword_100043480;
          v58 = *&off_100043490;
          sub_10002D0E8(&v55, 2, "\n", v33, v34, v35, v36, v37, v50);
        }

        if (v52)
        {
          break;
        }

        v38 = v59;
        sub_100020B5C();
        v39 = sub_10001F024(a1, 0);
        if (v39)
        {
          *(v39 + 4) = -510;
          *(v39 + 5) = a3;
          v39[2] = v38;
          *(v39 + 9) = v13;
          *(v39 + 10) = a2;
          *(a1 + 28) |= 0x10u;
        }

        HIDWORD(v53) = 1;
      }

      if (v59)
      {
        v40 = 0;
        v22 = 0;
        do
        {
          v41 = v40;
          if (v12 == 1)
          {
            v42 = a5 + 2 * v40;
            v43 = *v42;
            v44 = v42[1];
            if (!v44)
            {
              break;
            }
          }

          else
          {
            v45 = a5 + 2 * v40;
            v44 = v45[1];
            v43 = *v45;
            if (!v45[1])
            {
              break;
            }
          }

          if (dword_100043440)
          {
            sub_1000265FC(*(a1 + 776), v43, v44, a2);
          }

          v22 = sub_10002A950(v43, v44);
          if (v22 == 511)
          {
            v22 = sub_100026B18(a1, a2, __s, v43, v44, a3);
          }

          v13 += v44;
          v40 = v41 + 1;
        }

        while (v59 > (v41 + 1));
      }

      else
      {
        v22 = 0;
      }

      if (a3 == 1 || a2 == 3 || HIDWORD(v53) == 1)
      {
        break;
      }

      if (v53)
      {
        v46 = sub_100012A1C(*(a1 + 784), 1, &v61, v66, &v60, &v65, v20, v21);
        if (v46)
        {
          goto LABEL_47;
        }

        v22 = 0;
        if (v12)
        {
          if (HIDWORD(v61) != a2)
          {
            break;
          }

          v47 = BYTE2(v61);
        }

        else
        {
          if (*(&v61 + 2) != a2)
          {
            break;
          }

          v47 = BYTE1(v61);
        }

        a5 = v66;
        if (v47 != a3)
        {
          break;
        }
      }

      else
      {
        if (v12)
        {
          LOWORD(v63) = 10;
          WORD1(v63) = a3;
          HIDWORD(v63) = a2;
          v64 = v13;
        }

        else
        {
          LOBYTE(v63) = 7;
          BYTE1(v63) = a3;
          *(&v63 + 2) = a2;
          HIWORD(v63) = v13;
        }

        a5 = v66;
        v46 = sub_1000127A0(*(a1 + 784), &v63, 0, &v61, v66, &v60, &v65);
        LOBYTE(v53) = 1;
        if (v46)
        {
LABEL_47:
          if (v46 == 32)
          {
            goto LABEL_50;
          }

          return sub_10001ECC0(a1, v46);
        }
      }
    }
  }

  else
  {
    v13 = 0;
LABEL_50:
    v22 = 0;
  }

  *a6 = v13;
  return v22;
}

uint64_t sub_100023790(uint64_t a1, uint64_t a2)
{
  memset(v23, 0, sizeof(v23));
  sub_1000052D4(*(a2 + 768), *(a2 + 52));
  v9 = sub_100006D88(a2, 0, v23, v4, v5, v6, v7, v8);
  v16 = v9;
  if (v9 || ((v17 = *(a2 + 52), v18 = *(*&v23[0] + v17 - 2), v18 < v17) ? (v19 = v18 >= 0xE) : (v19 = 0), v19 ? (v20 = (v18 & 1) == 0) : (v20 = 0), v20))
  {
    if (!v9)
    {
      v16 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    if (byte_10004350E)
    {
      v22[0] = xmmword_100043460;
      v22[1] = *&qword_100043470;
      v22[2] = xmmword_100043480;
      v22[3] = *&off_100043490;
      sub_10002D0E8(v22, 6, "%s(%d):  offset is wrong\n", v11, v12, v13, v14, v15, "CheckNodesFirstOffset");
    }

    v16 = 36;
  }

  sub_10001ECB0(a1, 4294966739, v10, v11, v12, v13, v14, v15);
LABEL_15:
  sub_100006F74(a2, v23, v10, v11, v12, v13, v14, v15);
  return v16;
}

uint64_t sub_100023894(uint64_t a1)
{
  *(a1 + 48) = 3;
  sub_10001F344((a1 + 56));
  LOWORD(v2) = sub_100027990(a1, 0, 0);
  if (!v2)
  {
    LOWORD(v2) = sub_100028890(a1, 0);
    if (!v2)
    {
      LOWORD(v2) = sub_100028AB8(a1, 0, (a1 + 22));
      if (!v2)
      {
        v2 = sub_100028C70(a1, 0);
        if (!v2)
        {
          LOWORD(v2) = sub_1000290D8(a1, 0);
        }
      }
    }
  }

  return v2;
}

uint64_t sub_100023928(uint64_t a1)
{
  sub_100020B5C();
  v3 = v2;
  memset(v9, 0, sizeof(v9));
  v4 = *(a1 + 776);
  v5 = sub_10001F220(v9);
  if (v5)
  {
    v6 = v5;
    if (!v9[0])
    {
      return v6;
    }

    goto LABEL_10;
  }

  if (v3 == 1)
  {
    if ((*(v9[0] + 1) & 0x200) != 0)
    {
      goto LABEL_6;
    }
  }

  else if ((v9[0][5] & 0x200) != 0)
  {
LABEL_6:
    memset(v10, 0, sizeof(v10));
    v6 = sub_1000233C8(a1, 5, 0, 0, v10, &v8);
    if (!v9[0])
    {
      return v6;
    }

    goto LABEL_10;
  }

  v6 = 0;
LABEL_10:
  sub_100004D50(v4, v9, 0);
  return v6;
}

uint64_t sub_100023A20(uint64_t a1)
{
  v63 = 0u;
  memset(v64, 0, sizeof(v64));
  v61 = 0u;
  v62 = 0u;
  memset(v60, 0, sizeof(v60));
  memset(&v59[1], 0, 24);
  sub_100020B5C();
  v3 = v2;
  *(a1 + 48) = 4;
  *(a1 + 56) = 0;
  v4 = *(a1 + 776);
  v5 = *(a1 + 840);
  v59[0] = 0;
  v6 = sub_10001F220(v59);
  if (v6)
  {
    goto LABEL_2;
  }

  v65 = 0;
  v9 = v59[0];
  v10 = *(a1 + 792);
  if (!v3)
  {
    v31 = *(v59[0] + 75);
    *(v10 + 32) = *(v59[0] + 79);
    *(v10 + 24) = v31;
    v6 = sub_1000233C8(a1, 4, 0, 0, (*(a1 + 792) + 24), &v65);
    if (v6)
    {
      goto LABEL_2;
    }

    v32 = *(v9 + 73);
    if (*(v4 + 40) * v65 != v32)
    {
LABEL_17:
      sub_10001ECB0(a1, 4294966753, v14, v15, v16, v17, v18, v19);
      v7 = -543;
      goto LABEL_3;
    }

    v33 = *(a1 + 792);
    *(v33 + 112) = v32;
    *(v33 + 120) = v32;
    v6 = sub_10001EDB4(a1, v33, v60);
    if (!v6)
    {
      *(v5 + 54) = 37;
      *(v5 + 8) = sub_100014BE4;
      *(v5 + 40) = *(v60 + 6);
      v34 = WORD1(v60[1]);
      *(v5 + 52) = WORD1(v60[1]);
      v35 = *(*(a1 + 792) + 120) / v34;
      *(v5 + 56) = v35;
      *(v5 + 60) = v35;
      *(v5 + 32) = v60[0];
      *(v5 + 36) = *(v60 + 2);
      *(v5 + 44) = *(v60 + 10);
      v36 = sub_100023790(a1, v5);
      v7 = v36;
      if (v36)
      {
        goto LABEL_3;
      }

      goto LABEL_23;
    }

LABEL_2:
    v7 = v6;
    goto LABEL_3;
  }

  v11 = *(v59[0] + 18);
  v12 = *(v59[0] + 19);
  v13 = *(v59[0] + 20);
  *(v10 + 84) = *(v59[0] + 21);
  *(v10 + 68) = v13;
  *(v10 + 52) = v12;
  *(v10 + 36) = v11;
  v6 = sub_1000233C8(a1, 4, 0, 0, (*(a1 + 792) + 36), &v65);
  if (v6)
  {
    goto LABEL_2;
  }

  v20 = *(v9 + 71);
  if (v20 != v65)
  {
    goto LABEL_17;
  }

  v21 = *(a1 + 792);
  *(v21 + 112) = *(v9 + 34);
  *(v21 + 120) = *(v9 + 10) * v20;
  v6 = sub_10001EDB4(a1, v21, v60);
  if (v6)
  {
    goto LABEL_2;
  }

  *(v5 + 54) = 516;
  v28 = BYTE5(v61);
  if (BYTE5(v61) == 188)
  {
    *(v5 + 8) = sub_100014C60;
    v29 = *(a1 + 888);
    *__len = *(a1 + 872);
    v67 = v29;
    v30 = *(a1 + 920);
    v68 = *(a1 + 904);
    v69 = v30;
    sub_10002D0A4(__len, 211, v22, v23, v24, v25, v26, v27, v55);
    v28 = BYTE5(v61);
  }

  else
  {
    *(v5 + 8) = sub_100014C14;
  }

  *v5 = v28;
  *(v5 + 40) = *(v60 + 6);
  v37 = WORD1(v60[1]);
  *(v5 + 52) = WORD1(v60[1]);
  v38 = *(*(a1 + 792) + 120) / v37;
  *(v5 + 56) = v38;
  *(v5 + 60) = v38;
  *(v5 + 136) |= 6u;
  *(v5 + 32) = v60[0];
  *(v5 + 36) = *(v60 + 2);
  *(v5 + 44) = *(v60 + 10);
  v39 = sub_100023790(a1, v5);
  v7 = v39;
  if (v39 && *(v5 + 52) != 4096)
  {
    *(v5 + 52) = 4096;
    v40 = *(*(a1 + 792) + 120) >> 12;
    *(v5 + 56) = v40;
    *(v5 + 60) = v40;
    v41 = sub_100023790(a1, v5);
    v7 = v41;
    if (v41)
    {
      goto LABEL_3;
    }

    *(a1 + 24) |= 0x8000u;
  }

LABEL_23:
  if (BYTE4(v61))
  {
    *(a1 + 24) |= 0x80u;
  }

  v42 = malloc_type_calloc(1uLL, 0x20uLL, 0x1030040338E37ACuLL);
  *(v5 + 760) = v42;
  if (v42 && (v43 = (*(v5 + 56) + 7) >> 3, v44 = malloc_type_calloc(1uLL, v43, 0x780C29FAuLL), v45 = *(v5 + 760), (*v45 = v44) != 0))
  {
    *(v45 + 8) = v43;
    *(v45 + 24) = *(&v60[1] + 10);
    v58 = 0;
    memset(v57, 0, sizeof(v57));
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    v93 = 0u;
    v92 = 0u;
    v91 = 0u;
    v90 = 0u;
    v89 = 0u;
    v88 = 0u;
    v87 = 0u;
    v86 = 0u;
    v85 = 0u;
    v84 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    *__len = 0u;
    v67 = 0u;
    sub_10001F16C(2, 0, v3, v57);
    if (!sub_1000127A0(*(a1 + 792), v57, 0, 0, __len, &v58, 0))
    {
      if (v3)
      {
        *&v56[0] = 0;
        sub_10001EAF0(__len | 0xA, 2 * LOWORD(__len[1]), (a1 + 1036), v56, 0x100uLL);
        *(a1 + 1036 + *&v56[0]) = 0;
      }

      else
      {
        v52 = BYTE6(__len[1]);
        memmove((a1 + 1036), (__len | 0xF), BYTE6(__len[1]));
        *(a1 + 1036 + v52) = 0;
      }

      v53 = *(a1 + 888);
      v56[0] = *(a1 + 872);
      v56[1] = v53;
      v54 = *(a1 + 920);
      v56[2] = *(a1 + 904);
      v56[3] = v54;
      sub_10002D0A4(v56, 121, v46, v47, v48, v49, v50, v51, a1 + 1036);
    }
  }

  else
  {
    v7 = 1;
  }

LABEL_3:
  if (v59[0])
  {
    sub_100004D50(v4, v59, 0);
  }

  return v7;
}

uint64_t sub_100023F38(uint64_t a1)
{
  sub_100020B5C();
  v3 = v2;
  *(a1 + 48) = 6;
  sub_10001F344((a1 + 56));
  v4 = *(a1 + 776);
  v27[0] = 0;
  if (v3)
  {
    memset(&v27[1], 0, 24);
    v5 = sub_10001F734(v27);
    if (v5)
    {
      goto LABEL_4;
    }

    v28 = 0;
    v6 = v27[0];
    v7 = *(a1 + 800);
    v9 = *(v27[0] + 10);
    v8 = *(v27[0] + 11);
    v10 = *(v27[0] + 8);
    *(v7 + 52) = *(v27[0] + 9);
    *(v7 + 68) = v9;
    *(v7 + 84) = v8;
    *(v7 + 36) = v10;
    v5 = sub_1000233C8(a1, 6, 0, 0, (v7 + 36), &v28);
    if (v5)
    {
LABEL_4:
      LOWORD(v3) = v5;
    }

    else
    {
      if (*(v4 + 40) >= dword_10004848C)
      {
        v12 = dword_10004848C;
      }

      else
      {
        v12 = *(v4 + 40);
      }

      sub_1000052D4(v7, v12);
      v19 = *(v6 + 31);
      if (v19 == v28)
      {
        v20 = *(v6 + 10) * v19;
        *(v7 + 112) = *(v6 + 14);
        *(v7 + 120) = v20;
        v21 = *(a1 + 816);
        v22 = *(v6 + 28);
        v23 = *(v6 + 29);
        v24 = *(v6 + 30);
        *(v21 + 84) = *(v6 + 31);
        *(v21 + 68) = v24;
        *(v21 + 52) = v23;
        *(v21 + 36) = v22;
        v25 = sub_1000233C8(a1, 7, 0, 0, (v21 + 36), &v28);
        LOWORD(v3) = v25;
        if (!v25)
        {
          v26 = *(v6 + 10) * *(v6 + 111);
          *(v21 + 112) = *(v6 + 54);
          *(v21 + 120) = v26;
        }
      }

      else
      {
        sub_10001ECB0(a1, 4294966753, v13, v14, v15, v16, v17, v18);
        LOWORD(v3) = -543;
      }
    }

    if (v27[0])
    {
      sub_100004D50(v4, v27, 0);
    }
  }

  return v3;
}

uint64_t sub_1000240B8(uint64_t a1)
{
  v97 = 0;
  v96 = 0;
  memset(v95, 0, sizeof(v95));
  memset(v94, 0, 512);
  v130 = 0u;
  memset(v131, 0, sizeof(v131));
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v117 = 0u;
  v116 = 0u;
  v115 = 0u;
  v114 = 0u;
  v113 = 0u;
  v112 = 0u;
  v111 = 0u;
  v110 = 0u;
  v109 = 0u;
  v108 = 0u;
  v107 = 0u;
  v106 = 0u;
  v105 = 0u;
  v104 = 0u;
  v103 = 0u;
  v102 = 0u;
  v101 = 0u;
  memset(v99, 0, 512);
  memset(__dst, 0, sizeof(__dst));
  memset(v98, 0, 512);
  sub_100020B5C();
  v3 = v2;
  v4 = *(a1 + 776);
  *(a1 + 48) = 4;
  *(a1 + 56) = 0;
  sub_10001F16C(1, 0, v2, v94);
  v5 = sub_1000127A0(*(a1 + 792), v94, 0, v95, v98, &v97, &v96);
  *(a1 + 56) = v96;
  if (v5 != 32)
  {
    sub_10001ECB0(a1, 4294966768, v6, v7, v8, v9, v10, v11);
    LOWORD(v20) = -528;
    return v20;
  }

  v86 = v4;
  v12 = 0;
  v88 = 0;
  v87 = 0;
  *(a1 + 80) = 1;
  v85 = (a1 + 872);
  **(a1 + 88) = 1;
  v13 = a1 + 632;
  v14 = -32767;
  v15 = 1;
  while (1)
  {
    v16 = (*(a1 + 88) + 544 * (v15 - 1));
    v100 = 0;
    v17 = sub_100012A1C(*(a1 + 792), v14, v95, &v100, &v97, &v96, v10, v11);
    *(a1 + 56) = v96;
    if (v17)
    {
      break;
    }

    ++*(a1 + 736);
    v19 = *(v95 + 2);
    if (*(v95 + 2) != *v16)
    {
      goto LABEL_11;
    }

    ++*(v16 + 1);
    LOWORD(v20) = 123;
    if (v100 <= 0xFFu)
    {
      if (v100 == 1)
      {
        v20 = sub_100004B1C(a1);
        if (v20)
        {
          return v20;
        }

        v23 = v88;
        *(a1 + 48) = *(&v101 + 6);
        *(a1 + 100) = v100;
        sub_10001F0E8(v95 + 6, (a1 + 108), v3);
        v24 = *v16;
        v25 = *(a1 + 80);
        if (*v16 >= 2u)
        {
          *(a1 + 80) = ++v25;
          ++v87;
        }

        if (v24 == 2)
        {
          v23 = v88 + 1;
        }

        v26 = *(a1 + 96);
        v27 = *(a1 + 88);
        v84 = v12;
        if (v26 < v25)
        {
          v28 = malloc_type_realloc(v27, 544 * (v26 + 100), 0x10000404DC0687DuLL);
          v35 = *(a1 + 96);
          if (!v28)
          {
            goto LABEL_83;
          }

          v27 = v28;
          bzero(&v28[544 * v35], 0xD480uLL);
          *(a1 + 96) += 100;
          *(a1 + 88) = v27;
          v25 = *(a1 + 80);
        }

        v40 = &v27[544 * v25];
        v16 = v40 - 544;
        *(v40 - 136) = *(&v101 + 6);
        *(v40 - 135) = 1;
        *(v40 - 134) = v96;
        *(v40 - 130) = *(v95 + 2);
        sub_10001F0E8(v95 + 6, v40 - 258, v3);
        v47 = *(a1 + 80);
        v48 = *(v40 - 136);
        if (v47 >= 2)
        {
          v49 = *(a1 + 88);
          v50 = v47 - 1;
          while (v48 != *v49)
          {
            v49 += 136;
            if (!--v50)
            {
              goto LABEL_35;
            }
          }

LABEL_75:
          sub_10001ECB0(a1, 4294966758, v41, v42, v43, v44, v45, v46);
          LOWORD(v20) = -538;
          return v20;
        }

LABEL_35:
        sub_10001F16C(v48, 0, v3, v94);
        LODWORD(v88) = v23;
        if (sub_1000127A0(*(a1 + 792), v94, 0, v95, v98, &v97, &v96))
        {
          v55 = *v16;
          v56 = *(a1 + 888);
          v89 = *v85;
          v90 = v56;
          v57 = *(a1 + 920);
          v91 = *(a1 + 904);
          v92 = v57;
          sub_10002D0A4(&v89, 4294966763, v51, v52, v53, v54, v10, v11, v55);
          if (v3)
          {
            v58 = v13;
            do
            {
              v58 = *v58;
              if (!v58)
              {
                v22 = v100;
                v12 = v84;
                goto LABEL_58;
              }
            }

            while (*(v58 + 8) != *v16);
            *(v58 + 530) = 3;
            *(v58 + 534) = *(v40 - 130);
            sub_10001F0E8(v40 - 516, (v58 + 538), v3);
            v59 = sub_1000127A0(*(a1 + 792), (v58 + 12), 0, v95, v98, &v97, &v96);
            v14 = 0;
            if (!v59)
            {
              goto LABEL_56;
            }
          }

          LOWORD(v20) = -533;
          return v20;
        }

        v14 = 1;
LABEL_56:
        v72 = v96;
        *(v40 - 66) = v96;
        *(a1 + 56) = v72;
        v12 = v84;
        goto LABEL_67;
      }

      if (v100 != 2)
      {
        return v20;
      }

      *(a1 + 48) = *(&v101 + 6);
      v21 = 2;
      goto LABEL_17;
    }

    if (v100 != 256)
    {
      if (v100 != 512)
      {
        return v20;
      }

      *(a1 + 48) = *(&v102 + 2);
      v21 = 512;
LABEL_17:
      *(a1 + 100) = v21;
      sub_10001F0E8(v95 + 6, (a1 + 108), v3);
      ++HIDWORD(v88);
      if (*v16 == 2)
      {
        ++v12;
      }

LABEL_66:
      v14 = 1;
      goto LABEL_67;
    }

    v20 = sub_100004B1C(a1);
    if (v20)
    {
      return v20;
    }

    *(a1 + 48) = DWORD1(v101);
    *(a1 + 100) = v100;
    sub_10001F0E8(v94 + 6, (a1 + 108), v3);
    v36 = *v16;
    v37 = *(a1 + 80);
    if (*v16 < 2u)
    {
      v39 = v87;
      v38 = v88;
    }

    else
    {
      *(a1 + 80) = ++v37;
      v38 = v88;
      v39 = v87 + 1;
    }

    if (v36 == 2)
    {
      ++v38;
    }

    v60 = *(a1 + 96);
    v61 = *(a1 + 88);
    v87 = v39;
    LODWORD(v88) = v38;
    if (v60 >= v37)
    {
      v63 = v13;
      v64 = HIDWORD(v88);
    }

    else
    {
      v62 = malloc_type_realloc(v61, 544 * (v60 + 100), 0x10000404DC0687DuLL);
      v35 = *(a1 + 96);
      if (!v62)
      {
LABEL_83:
        v81 = *(a1 + 888);
        v89 = *v85;
        v90 = v81;
        v82 = *(a1 + 920);
        v91 = *(a1 + 904);
        v92 = v82;
        sub_10002D0A4(&v89, 545, v29, v30, v31, v32, v33, v34, v35);
LABEL_84:
        LOWORD(v20) = 0;
        return v20;
      }

      v61 = v62;
      v63 = v13;
      v64 = HIDWORD(v88);
      bzero(&v62[544 * v35], 0xD480uLL);
      *(a1 + 96) += 100;
      *(a1 + 88) = v61;
      v37 = *(a1 + 80);
    }

    HIDWORD(v88) = v64;
    v65 = &v61[544 * v37];
    *(v65 - 136) = DWORD1(v101);
    *(v65 - 135) = 1;
    *(v65 - 134) = v96;
    *(v65 - 130) = *(v95 + 2);
    sub_10001F0E8(v95 + 6, v65 - 258, v3);
    v66 = *(a1 + 80);
    v67 = *(v65 - 136);
    v13 = v63;
    if (v66 >= 2)
    {
      v68 = *(a1 + 88);
      v69 = v66 - 1;
      while (v67 != *v68)
      {
        v68 += 136;
        if (!--v69)
        {
          goto LABEL_53;
        }
      }

      goto LABEL_75;
    }

LABEL_53:
    sub_10001F16C(v67, 0, v3, v94);
    v70 = sub_1000127A0(*(a1 + 792), v94, 0, v95, v98, &v97, &v96);
    if (v70)
    {
      goto LABEL_81;
    }

    v71 = v96;
    *(v65 - 66) = v96;
    *(a1 + 56) = v71;
    v14 = 1;
LABEL_67:
    v15 = *(a1 + 80);
    if (*(a1 + 80) <= 0)
    {
LABEL_68:
      if (!v3 && ((v79 = *(v86 + 114), v79 != v88) && sub_100024BAC(a1, 539, v88, v79, 0) || (v80 = *(v86 + 112), v80 != v12) && sub_100024BAC(a1, 540, v12, v80, 0)) || (v77 = *(v86 + 36), v87 != v77) && sub_100024BAC(a1, 541, v87, v77, 0) || (v78 = *(v86 + 32), HIDWORD(v88) != v78) && sub_100024BAC(a1, 542, HIDWORD(v88), v78, 0))
      {
LABEL_80:
        LOWORD(v20) = 1;
        return v20;
      }

      goto LABEL_84;
    }
  }

  v18 = v17;
  if (v17 != 32)
  {
    goto LABEL_82;
  }

  ++*(a1 + 736);
  v19 = *(v95 + 2);
LABEL_11:
  v22 = v100;
  if (v100 == 1024 || v100 == 4)
  {
    *(a1 + 48) = v19;
    *(a1 + 100) = v22;
    v14 = 1;
    *(a1 + 108) = 0;
    goto LABEL_67;
  }

LABEL_58:
  *(a1 + 48) = *v16;
  *(a1 + 100) = v22;
  sub_10001F0E8(v16 + 28, (a1 + 108), v3);
  sub_10001F0E8(v16 + 28, __dst, v3);
  sub_10001F16C(*(v16 + 6), __dst, v3, v94);
  v70 = sub_1000127A0(*(a1 + 792), v94, *(v16 + 2), v95, v99, &v97, &v96);
  if (!v70)
  {
    *(a1 + 56) = v96;
    if (v3 == 1)
    {
      v73 = DWORD1(v99[0]);
    }

    else
    {
      v73 = WORD2(v99[0]);
    }

    v74 = *(v16 + 1) - 1;
    if (v73 != v74 && sub_100024BAC(a1, 502, v74, v73, *(v16 + 6)))
    {
      goto LABEL_80;
    }

    v75 = --*(a1 + 80);
    if (v75 < 1)
    {
      goto LABEL_68;
    }

    v76 = *(a1 + 88) + 544 * (v75 - 1);
    *(a1 + 48) = *v76;
    *(a1 + 100) = v100;
    sub_10001F0E8((v76 + 28), (a1 + 108), v3);
    goto LABEL_66;
  }

LABEL_81:
  v18 = v70;
LABEL_82:
  LOWORD(v20) = sub_10001ECC0(a1, v18);
  return v20;
}

uint64_t sub_100024BAC(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  sub_100020B5C();
  v11 = v10;
  v12 = *(a1 + 888);
  v32 = *(a1 + 872);
  v33 = v12;
  v13 = *(a1 + 920);
  v34 = *(a1 + 904);
  v35 = v13;
  sub_10002D0A4(&v32, a2, v14, v15, v16, v17, v18, v19, v31);
  __sprintf_chk(v37, 0, 0x20uLL, "%u", a3);
  __sprintf_chk(v36, 0, 0x20uLL, "%u", a4);
  v20 = *(a1 + 888);
  v32 = *(a1 + 872);
  v33 = v20;
  v21 = *(a1 + 920);
  v34 = *(a1 + 904);
  v35 = v21;
  sub_10002D0A4(&v32, 559, v22, v23, v24, v25, v26, v27, v37);
  v28 = 0;
  if (a2 == 502)
  {
    v28 = sub_10001F14C((a1 + 108), v11);
  }

  v29 = sub_10001F024(a1, v28);
  if (!v29)
  {
    return 1;
  }

  *(v29 + 4) = a2;
  v29[2] = a3;
  v29[3] = a4;
  *(v29 + 10) = a5;
  if (v28)
  {
    sub_10001F0E8((a1 + 108), v29 + 22, v11);
  }

  result = 0;
  *(a1 + 28) |= 0x4000u;
  return result;
}

uint64_t sub_100024D2C(uint64_t a1)
{
  memset(v32, 0, sizeof(v32));
  memset(&v31[1], 0, 24);
  sub_100020B5C();
  *(a1 + 48) = 8;
  *(a1 + 56) = 0;
  v31[0] = 0;
  v2 = *(a1 + 856);
  v3 = *(a1 + 776);
  if (v4)
  {
    v5 = sub_10001F734(v31);
    if (v5)
    {
      goto LABEL_4;
    }

    v33 = 0;
    v6 = v31[0];
    v7 = *(a1 + 808);
    v9 = *(v31[0] + 25);
    v8 = *(v31[0] + 26);
    v10 = *(v31[0] + 23);
    *(v7 + 52) = *(v31[0] + 24);
    *(v7 + 68) = v9;
    *(v7 + 84) = v8;
    *(v7 + 36) = v10;
    v5 = sub_1000233C8(a1, 8, 0, 0, (*(a1 + 808) + 36), &v33);
    if (v5)
    {
      goto LABEL_4;
    }

    v24 = *(v6 + 91);
    if (v24 != v33)
    {
      sub_10001ECB0(a1, 4294966753, v11, v12, v13, v14, v15, v16);
      v17 = -543;
      goto LABEL_19;
    }

    v25 = *(a1 + 808);
    v26 = *(v6 + 10) * v24;
    *(v25 + 112) = *(v6 + 44);
    *(v25 + 120) = v26;
    if (v24)
    {
      v5 = sub_10001EDB4(a1, v25, v32);
      if (v5)
      {
        goto LABEL_4;
      }

      *(v2 + 54) = 266;
      *(v2 + 8) = sub_100014D5C;
      v27 = *&v32[18];
      *(v2 + 52) = *&v32[18];
      v28 = *(*(a1 + 808) + 120) / v27;
      v29 = *&v32[6];
      *(v2 + 56) = v28;
      *(v2 + 60) = v28;
      *(v2 + 136) |= 6u;
      *(v2 + 32) = *v32;
      *(v2 + 36) = *&v32[2];
      *(v2 + 40) = v29;
      *(v2 + 44) = *&v32[10];
      v5 = sub_100023790(a1, v2);
      if (v5)
      {
LABEL_4:
        v17 = v5;
        goto LABEL_19;
      }

      goto LABEL_7;
    }

    *(v2 + 8) = 0;
    *(v2 + 136) = 0;
    *(v2 + 32) = 0;
    *(v2 + 36) = 0;
    *(v2 + 52) = 0;
    *(v2 + 44) = 0;
    *(v2 + 60) = 0;
    v18 = *(a1 + 776);
  }

  else
  {
    *(v2 + 8) = 0;
    *(v2 + 136) = 0;
    *(v2 + 32) = 0;
    *(v2 + 36) = 0;
    *(v2 + 52) = 0;
    *(v2 + 44) = 0;
    v18 = v3;
    *(v2 + 60) = 0;
  }

  *(v18 + 176) = 0;
LABEL_7:
  v17 = 1;
  v19 = malloc_type_calloc(1uLL, 0x20uLL, 0x1030040338E37ACuLL);
  *(v2 + 760) = v19;
  if (v19)
  {
    v20 = *(v2 + 56);
    if (v20)
    {
      v21 = (v20 + 7) >> 3;
      v17 = 1;
      v22 = malloc_type_calloc(1uLL, v21, 0x85379F53uLL);
      v23 = *(v2 + 760);
      *v23 = v22;
      if (v22)
      {
        v17 = 0;
        *(v23 + 8) = v21;
        *(v23 + 24) = *&v32[26];
      }
    }

    else
    {
      v17 = 0;
      *v19 = 0;
      v19[2] = 0;
      v19[6] = 0;
    }
  }

LABEL_19:
  if (v31[0])
  {
    sub_100004D50(v3, v31, 0);
  }

  return v17;
}

uint64_t sub_100024F9C(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v6 = sub_10001EC98();
  sub_100020B5C();
  if (v7 != 1)
  {
    sub_100030978();
  }

  v51 = 0;
  v8 = *(a2 + 4);
  sub_10001EAF0(a2 + 14, 2 * *(a2 + 12), __s1, &v51, 0x80uLL);
  __s1[v51] = 0;
  if (v8 == *(a1 + 5316) && !strcmp(__s1, (a1 + 5320)))
  {
    v19 = 0;
    v15 = v6;
    v18 = v6 == 2;
  }

  else
  {
    v15 = v6;
    if (v6 == 2)
    {
      v16 = sub_100025370(a1);
      if (v16)
      {
LABEL_6:
        v17 = v16;
LABEL_28:
        if (*__s1 == 0x6C7070612E6D6F63 && v53 == 0x6D65747379732E65 && v54 == 0x746972756365532ELL && v55 == 121)
        {
          *(a1 + 5313) = 1;
        }

        *(a1 + 5314) = *a3;
        *(a1 + 5316) = v8;
        __strlcpy_chk();
        return v17;
      }

      if (v8 != *(a1 + 5316))
      {
        sub_100025408(a1);
      }

      v15 = 2;
      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

    v19 = 1;
  }

  v50 = 0;
  v20 = *a3;
  if (*a3 == 16)
  {
    if (!v18 || !*(a2 + 8))
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v20 != 48)
    {
      if (v20 == 32)
      {
        if (v18)
        {
          if (!*(a2 + 8))
          {
            v21 = *(a3 + 6);
            v22 = *(a3 + 14);
            v47 = *(a3 + 10);
            v48 = v22;
            v49 = *(a3 + 18);
            v45 = *(a3 + 2);
            v46 = v21;
            v17 = sub_1000233C8(a1, v8, 1, __s1, &v46, &v50);
            if (!v17)
            {
              v23 = *(a3 + 1);
              v24 = v50;
              *(a1 + 5448) = a3[5];
              *(a1 + 5456) = v23;
              *(a1 + 5452) = v24;
              *(a1 + 5312) = 1;
            }

            goto LABEL_28;
          }

          goto LABEL_53;
        }

LABEL_27:
        v17 = 0;
        goto LABEL_28;
      }

      if (v15 == 1)
      {
        goto LABEL_42;
      }

LABEL_51:
      sub_10001ECB0(a1, 579, v9, v10, v11, v12, v13, v14);
      v17 = 0;
      v43 = *(a1 + 20) | 0x10;
LABEL_52:
      *(a1 + 20) = v43;
      goto LABEL_54;
    }

    if ((v19 & 1) != 0 || (*(a1 + 5314) | 0x10) != 0x30)
    {
      if (v15 != 1)
      {
        goto LABEL_51;
      }

      v25 = 1;
      if (!v18)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v25 = 0;
      if (!v18)
      {
LABEL_23:
        if (!v25)
        {
          goto LABEL_27;
        }

LABEL_42:
        v17 = sub_100012D4C(*(a1 + 808), a2);
        v29 = *(a2 + 4);
        v30 = *a3;
        v45 = xmmword_100043460;
        v46 = *&qword_100043470;
        v47 = xmmword_100043480;
        v48 = *&off_100043490;
        sub_10002D128(&v45, 17, "%s: Deleting attribute %s for fileID %d, type = %d\n", v31, v32, v33, v34, v35, "CheckAttributeRecord");
        if (v17)
        {
          v41 = *(a2 + 4);
          v42 = *a3;
          v45 = xmmword_100043460;
          v46 = *&qword_100043470;
          v47 = xmmword_100043480;
          v48 = *&off_100043490;
          sub_10002D128(&v45, 18, "%s: Error in deleting record for %s for fileID %d, type = %d\n", v36, v37, v38, v39, v40, "CheckAttributeRecord");
        }

        v43 = *(a1 + 20) | 0xC000;
        goto LABEL_52;
      }
    }

    if (*(a2 + 8) == *(a1 + 5452))
    {
      v16 = sub_1000233C8(a1, v8, 1, __s1, a3 + 2, &v50);
      if (v16)
      {
        goto LABEL_6;
      }

      *(a1 + 5452) += v50;
      if (!v25)
      {
        goto LABEL_27;
      }

      goto LABEL_42;
    }
  }

LABEL_53:
  v17 = 4294966787;
  sub_10001ECB0(a1, 4294966787, v9, v10, v11, v12, v13, v14);
LABEL_54:
  if (*(a1 + 5316) != v8)
  {
    *(a1 + 5316) = 0;
  }

  return v17;
}

uint64_t sub_100025370(uint64_t a1)
{
  if (*(a1 + 5312) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 5448);
  v3 = *(a1 + 5452);
  if (v2 == v3)
  {
    v4 = *(*(a1 + 776) + 40) * v2;
    v5 = *(a1 + 5456);
    if (v5 <= v4)
    {
      result = 0;
    }

    else
    {
      result = sub_10000A834(*(a1 + 5316), (a1 + 5320), 1, v5, v4);
    }
  }

  else
  {
    result = sub_10000A5F4(*(a1 + 5316), (a1 + 5320), 1, v2, v3);
  }

  *(a1 + 5312) = 0;
  return result;
}

uint64_t sub_100025408(uint64_t result)
{
  v1 = *(result + 5316);
  if (v1)
  {
    if (v1 > 0xF || v1 == 2)
    {
      v3 = result;
      if (*(result + 5313) == 1)
      {
        result = sub_100025490(result, 12, v1, 408);
        *(v3 + 5313) = 0;
      }

      else
      {
        ++*(result + 1556);
        v4 = result + 3436;

        return sub_100021808(v4, v1);
      }
    }
  }

  return result;
}

uint64_t sub_100025490(uint64_t result, char a2, unsigned int a3, int a4)
{
  if ((a2 & 0xC) == 0)
  {
    return result;
  }

  if (a4 == 408)
  {
    if ((a2 & 4) != 0)
    {
      v5 = result + 3436;
      ++*(result + 1556);
      if ((a2 & 8) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v5 = 0;
      if ((a2 & 8) == 0)
      {
        goto LABEL_13;
      }
    }

    v6 = 1560;
    v7 = 4372;
LABEL_16:
    v8 = result + v7;
    ++*(result + v6);
    if (!v5)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (a4 != 136)
  {
    return result;
  }

  if ((a2 & 4) != 0)
  {
    v5 = result + 1564;
    ++*(result + 1548);
    if ((a2 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v5 = 0;
  if ((a2 & 8) != 0)
  {
LABEL_11:
    v6 = 1552;
    v7 = 2500;
    goto LABEL_16;
  }

LABEL_13:
  v8 = 0;
  if (v5)
  {
LABEL_17:
    result = sub_100021808(v5, a3);
  }

LABEL_18:
  if (v8)
  {

    return sub_100021808(v8, a3);
  }

  return result;
}

uint64_t sub_100025578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(*(a1 + 776) + 176))
  {
    v9 = *(a1 + 888);
    v25[0] = *(a1 + 872);
    v25[1] = v9;
    v10 = *(a1 + 920);
    v25[2] = *(a1 + 904);
    v25[3] = v10;
    sub_10002D0A4(v25, 204, a3, a4, a5, a6, a7, a8, *&v25[0]);
    *(a1 + 48) = 8;
    sub_10001F344((a1 + 56));
    LOWORD(v11) = sub_100027990(a1, 408, sub_100024F9C);
    if (!v11)
    {
      LOWORD(v11) = sub_100025370(a1);
      if (!v11)
      {
        sub_100025408(a1);
        if (sub_100025694(a1, 4, v12, v13, v14, v15, v16, v17) || sub_100025694(a1, 8, v18, v19, v20, v21, v22, v23))
        {
          LOWORD(v11) = 1;
        }

        else
        {
          LOWORD(v11) = sub_100028890(a1, 408);
          if (!v11)
          {
            LOWORD(v11) = sub_100028AB8(a1, 408, (a1 + 20));
            if (!v11)
            {
              v11 = sub_100028C70(a1, 408);
              if (!v11)
              {
                LOWORD(v11) = sub_1000290D8(a1, 408);
              }
            }
          }
        }
      }
    }
  }

  else
  {
    LOWORD(v11) = 0;
  }

  return v11;
}

uint64_t sub_100025694(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a2 & 4) != 0)
  {
    result = sub_100021BFC(a1 + 1564, a1 + 3436);
    if (!result)
    {
      return result;
    }

    v16 = *(a1 + 888);
    v44 = *(a1 + 872);
    v45 = v16;
    v17 = *(a1 + 920);
    v46 = *(a1 + 904);
    v47 = v17;
    sub_10002D0A4(&v44, 575, v10, v11, v12, v13, v14, v15, v43);
    __sprintf_chk(v49, 0, 0x20uLL, "%u", *(a1 + 1548));
    __sprintf_chk(v48, 0, 0x20uLL, "%u", *(a1 + 1556));
    v18 = *(a1 + 888);
    v44 = *(a1 + 872);
    v45 = v18;
    v19 = *(a1 + 920);
    v46 = *(a1 + 904);
    v47 = v19;
    sub_10002D0A4(&v44, 559, v20, v21, v22, v23, v24, v25, v48);
    v26 = 64;
    goto LABEL_8;
  }

  if ((a2 & 8) == 0)
  {
    v44 = xmmword_100043460;
    v45 = *&qword_100043470;
    v46 = xmmword_100043480;
    v47 = *&off_100043490;
    sub_10002D0E8(&v44, 2, "%s: Incorrect BitMask found.\n", a4, a5, a6, a7, a8, "CompareXattrPrimeBuckets");
    return 1;
  }

  result = sub_100021BFC(a1 + 2500, a1 + 4372);
  if (result)
  {
    v33 = *(a1 + 888);
    v44 = *(a1 + 872);
    v45 = v33;
    v34 = *(a1 + 920);
    v46 = *(a1 + 904);
    v47 = v34;
    sub_10002D0A4(&v44, 576, v27, v28, v29, v30, v31, v32, v43);
    v26 = 32;
    __sprintf_chk(v49, 0, 0x20uLL, "%u", *(a1 + 1552));
    __sprintf_chk(v48, 0, 0x20uLL, "%u", *(a1 + 1560));
    v35 = *(a1 + 888);
    v44 = *(a1 + 872);
    v45 = v35;
    v36 = *(a1 + 920);
    v46 = *(a1 + 904);
    v47 = v36;
    sub_10002D0A4(&v44, 559, v37, v38, v39, v40, v41, v42, v48);
LABEL_8:
    result = 0;
    *(a1 + 20) |= v26;
  }

  return result;
}

uint64_t sub_100025890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v13 = (a1 + 872);
  v14 = *(a1 + 888);
  v27 = *(a1 + 872);
  v28 = v14;
  v15 = *(a1 + 920);
  v29 = *(a1 + 904);
  v30 = v15;
  sub_10002D0A4(&v27, a2, a3, a4, a5, a6, a7, a8, a5);
  __sprintf_chk(v32, 0, 0x20uLL, "%#x", v10);
  __sprintf_chk(v31, 0, 0x20uLL, "%#x", v9);
  v16 = v13[1];
  v27 = *v13;
  v28 = v16;
  v17 = v13[3];
  v29 = v13[2];
  v30 = v17;
  sub_10002D0A4(&v27, 559, v18, v19, v20, v21, v22, v23, v32);
  v24 = sub_10001F024(a1, 0);
  if (!v24)
  {
    return 1;
  }

  v25 = v24;
  result = 0;
  *(v25 + 4) = v11;
  v25[2] = v10;
  v25[3] = v9;
  *(v25 + 10) = v8;
  return result;
}

uint64_t sub_1000259C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v13 = (a1 + 872);
  v14 = *(a1 + 888);
  v27 = *(a1 + 872);
  v28 = v14;
  v15 = *(a1 + 920);
  v29 = *(a1 + 904);
  v30 = v15;
  sub_10002D0A4(&v27, a2, a3, a4, a5, a6, a7, a8, a5);
  __sprintf_chk(v32, 0, 0x20uLL, "%u", v10);
  __sprintf_chk(v31, 0, 0x20uLL, "%u", v9);
  v16 = v13[1];
  v27 = *v13;
  v28 = v16;
  v17 = v13[3];
  v29 = v13[2];
  v30 = v17;
  sub_10002D0A4(&v27, 559, v18, v19, v20, v21, v22, v23, v32);
  v24 = sub_10001F024(a1, 0);
  if (!v24)
  {
    return 1;
  }

  v25 = v24;
  result = 0;
  *(v25 + 4) = v11;
  v25[2] = v10;
  v25[3] = v9;
  *(v25 + 10) = v8;
  return result;
}

uint64_t sub_100025B00(uint64_t a1)
{
  v116 = 0;
  v115 = 0;
  memset(v117, 0, sizeof(v117));
  memset(v114, 0, sizeof(v114));
  memset(v113, 0, sizeof(v113));
  v2 = *(a1 + 776);
  memset(v112, 0, sizeof(v112));
  sub_100020B5C();
  v4 = v3;
  sub_10001F308();
  v6 = v5;
  v9 = sub_100012A1C(*(a1 + 792), -32767, v114, v117, &v116, &v115, v7, v8);
  *(a1 + 56) = v115;
  v10 = (a1 + 56);
  *(a1 + 48) = 4;
  if (v9)
  {
    return sub_10001ECC0(a1, v9);
  }

  *(a1 + 48) = -1;
  sub_10001F548((a1 + 56));
  v12 = sub_10001F43C(v113);
  v13 = *v6;
  if (v4)
  {
    if ((v13 & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    if (v12)
    {
      goto LABEL_8;
    }

    *(a1 + 48) = 1;
    sub_10001F6C4((a1 + 56));
    v31 = sub_10001F5B8(v112);
    v32 = *v6;
    if (v4)
    {
      if ((v32 & 2) == 0)
      {
        goto LABEL_18;
      }
    }

    else if ((v32 & 8) == 0)
    {
LABEL_18:
      *(a1 + 18) |= 0x8000u;
      sub_100020BAC();
      if (v37)
      {
        sub_10001EA44(a1, 554, 1, 0, v33, v34, v35, v36);
        if (sub_10002D444() >= 3)
        {
          v43 = *v10;
          v108 = xmmword_100043460;
          v109 = *&qword_100043470;
          v110 = xmmword_100043480;
          v111 = *&off_100043490;
          sub_10002D0E8(&v108, 2, "\tinvalid primary MDB at %qd result %d \n", v38, v39, v40, v41, v42, v43);
        }
      }

      else
      {
        sub_10001EA44(a1, 555, 1, 0, v33, v34, v35, v36);
        if (sub_10002D444() >= 3)
        {
          v49 = *v10;
          v108 = xmmword_100043460;
          v109 = *&qword_100043470;
          v110 = xmmword_100043480;
          v111 = *&off_100043490;
          sub_10002D0E8(&v108, 2, "\tinvalid primary VHB at %qd result %d \n", v44, v45, v46, v47, v48, v49);
        }
      }

      goto LABEL_23;
    }

    if (v31)
    {
      goto LABEL_18;
    }

    sub_100020C9C();
    if (v55)
    {
      if ((~*v6 & 0x18) != 0)
      {
        *(a1 + 18) |= 0x1000u;
        sub_10001EA44(a1, 554, 0, 0, v51, v52, v53, v54);
        if (sub_10002D444() >= 3)
        {
          v108 = xmmword_100043460;
          v109 = *&qword_100043470;
          v110 = xmmword_100043480;
          v111 = *&off_100043490;
          sub_10002D0E8(&v108, 2, "\tinvalid wrapper MDB \n", v56, v57, v58, v59, v60, v107);
        }
      }
    }

    v61 = *&v113[0];
    v62 = *&v112[0];
    v63 = *(v2 + 40);
    v64 = *(v2 + 44);
    v65 = (v64 >> 2) * v63;
    if (!v4)
    {
      *(v2 + 16) = *(*&v113[0] + 2);
      *(v2 + 20) = *(v62 + 6);
      v68 = *(v62 + 10);
      if ((v68 & 0x7F) != 0)
      {
        v68 = 256;
      }

      *(v2 + 4) = v68;
      v69 = *(v62 + 16);
      if (v64 <= v69)
      {
        v69 = 0;
      }

      *(v2 + 52) = v69;
      v70 = *(v62 + 24);
      if (!v70 || v65 < v70 || v70 % v63)
      {
        v70 = *(v61 + 24);
        if (!v70 || v65 < v70 || v70 % v63)
        {
          LODWORD(v70) = 4 * v63;
        }
      }

      if (v70 <= 0x100000)
      {
        v63 = v70;
      }

      *(v2 + 60) = v63;
      v71 = *(v62 + 30);
      v72 = *(v2 + 64);
      if (v71 > v72 && v71 <= v72 + 4096)
      {
        *(v2 + 64) = v71;
      }

      if (!sub_1000292B0(a1, (v2 + 124), 0) && !sub_1000290AC((v62 + 36), (v2 + 124), *(v2 + 124) + 1))
      {
        v79 = *(v62 + 36);
        v80 = *(v62 + 52);
        *(v2 + 148) = *(v62 + 60);
        *(v2 + 140) = v80;
        *(v2 + 124) = v79;
      }

      *(v2 + 24) = *(v62 + 64);
      *(v2 + 120) = *(v62 + 68);
      *(v2 + 68) = *(v62 + 70);
      v81 = *(v62 + 74);
      v82 = *(v2 + 40);
      if (v81 % v82 || v65 < v81)
      {
        v83 = *(v61 + 74);
        if (v83 % v82 || (LODWORD(v81) = *(v61 + 74), v65 < v83))
        {
          LODWORD(v81) = v82 * *(v61 + 136);
        }
      }

      *(*(v2 + 160) + 104) = v81;
      v84 = *(v62 + 78);
      if (v84 % v82 || v65 < v84)
      {
        v85 = *(v61 + 78);
        if (v85 % v82 || (LODWORD(v84) = *(v61 + 78), v65 < v85))
        {
          LODWORD(v84) = v82 * *(v61 + 152);
        }
      }

      *(*(v2 + 168) + 104) = v84;
      v86 = *(v62 + 108);
      *(v2 + 80) = *(v62 + 92);
      *(v2 + 96) = v86;
      v11 = sub_100029308(a1, v62, v73, v74, v75, v76, v77, v78);
      goto LABEL_24;
    }

    *(v2 + 16) = *(*&v113[0] + 16);
    *(v2 + 20) = *(v62 + 20);
    *(v2 + 28) = *(v62 + 28);
    *(v2 + 4) = *(v62 + 4);
    if (*(v62 + 52) >= v64)
    {
      v66 = 0;
    }

    else
    {
      v66 = *(v62 + 52);
    }

    *(v2 + 52) = v66;
    v67 = *(v62 + 56);
    if ((v67 - 1) >> 20 || v67 % v63)
    {
      v67 = *(v61 + 56);
      if ((v67 - 1) >> 20 || v67 % v63)
      {
        if (v63 >= 0x40001)
        {
          *(v2 + 56) = v63;
          v67 = v63;
          if (v63 <= 0x100000)
          {
            goto LABEL_75;
          }
        }

        else
        {
          v67 = 4 * v63;
        }
      }
    }

    *(v2 + 56) = v67;
LABEL_75:
    v87 = *(v62 + 60);
    if (((v87 - 1) >> 20 || v87 % v63) && ((v87 = *(v61 + 60), (v87 - 1) >> 20) || v87 % v63))
    {
      if (v63 >= 0x40001)
      {
        *(v2 + 60) = v63;
        if (v63 <= 0x100000)
        {
LABEL_84:
          v88 = *(v62 + 64);
          if (v88 > *(v2 + 64))
          {
            *(v2 + 64) = v88;
          }

          sub_1000292B0(a1, v114 + 3, v4);
          *(v2 + 24) = *(v62 + 24);
          *(v2 + 68) = *(v62 + 68);
          v95 = *(v62 + 200);
          v96 = *(v2 + 40);
          if (v95 % v96 || v65 < v95)
          {
            v97 = *(v61 + 200);
            if (v97 % v96 || (LODWORD(v95) = *(v61 + 200), v65 < v97))
            {
              LODWORD(v95) = *(v61 + 212) * v96;
            }
          }

          *(*(v2 + 160) + 104) = v95;
          v98 = *(v62 + 280);
          if (v98 % v96 || v65 < v98)
          {
            v99 = *(v61 + 280);
            if (v99 % v96 || (LODWORD(v98) = *(v61 + 280), v65 < v99))
            {
              LODWORD(v98) = *(v61 + 292) * v96;
            }
          }

          v100 = *(v2 + 168);
          *(v100 + 104) = v98;
          v101 = *(v62 + 120);
          if (v101 % v96 || v65 < v101)
          {
            v102 = *(v61 + 120);
            if (v102 % v96 || (LODWORD(v101) = *(v61 + 120), v65 < v102))
            {
              LODWORD(v101) = *(v61 + 132) * v96;
            }
          }

          *(*(v2 + 152) + 104) = v101;
          v103 = *(v2 + 176);
          if (v103)
          {
            v104 = *(v62 + 360);
            if (!v104 || v104 % v96 || v65 < v104)
            {
              v105 = *(v61 + 360);
              if (!v105 || v105 % v96 || (LODWORD(v104) = *(v61 + 360), v65 < v105))
              {
                LODWORD(v104) = *(v100 + 104);
                if (!v104)
                {
                  LODWORD(v104) = *(v61 + 372) * v96;
                }
              }
            }

            *(v103 + 104) = v104;
          }

          v106 = *(v62 + 96);
          *(v2 + 80) = *(v62 + 80);
          *(v2 + 96) = v106;
          v11 = sub_100029AA0(a1, v62, v89, v90, v91, v92, v93, v94);
          sub_100020CE8(a1);
          goto LABEL_24;
        }
      }

      else
      {
        v63 *= 4;
      }
    }

    else
    {
      v63 = v87;
    }

    *(v2 + 60) = v63;
    goto LABEL_84;
  }

  if ((v13 & 0x10) != 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  *(a1 + 18) |= 0x8000u;
  sub_100020BAC();
  if (v18)
  {
    sub_10001EA44(a1, 554, 0, 0, v14, v15, v16, v17);
    if (sub_10002D444() >= 3)
    {
      v24 = *v10;
      v108 = xmmword_100043460;
      v109 = *&qword_100043470;
      v110 = xmmword_100043480;
      v111 = *&off_100043490;
      sub_10002D0E8(&v108, 2, "\tinvalid alternate MDB at %qd result %d \n", v19, v20, v21, v22, v23, v24);
    }
  }

  else
  {
    sub_10001EA44(a1, 555, 0, 0, v14, v15, v16, v17);
    if (sub_10002D444() >= 3)
    {
      v30 = *v10;
      v108 = xmmword_100043460;
      v109 = *&qword_100043470;
      v110 = xmmword_100043480;
      v111 = *&off_100043490;
      sub_10002D0E8(&v108, 2, "\tinvalid alternate VHB at %qd result %d \n", v25, v26, v27, v28, v29, v30);
    }
  }

LABEL_23:
  v11 = 0;
LABEL_24:
  if (*&v112[0])
  {
    sub_100004D50(v2, v112, 0);
  }

  if (*&v113[0])
  {
    sub_100004D50(v2, v113, 0);
  }

  return v11;
}

uint64_t sub_100026320(uint64_t a1)
{
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  memset(v39, 0, sizeof(v39));
  v36 = 0;
  v2 = *(a1 + 776);
  sub_10001F308();
  v4 = v3;
  sub_100020B5C();
  v6 = v5;
  *(a1 + 48) = 4;
  *(a1 + 56) = 0;
  if (sub_100012A1C(*(a1 + 792), -32767, v37, v39, &v36, &v38, v7, v8))
  {
    sub_10001ECB0(a1, 4294966744, v9, v10, v11, v12, v13, v14);
    LOWORD(v15) = -552;
    return v15;
  }

  if (!v6)
  {
    *(v2 + 124) = *(v37 + 6);
    *(v2 + 140) = *(&v37[1] + 6);
    *(v2 + 148) = *(&v37[1] + 14);
    *(a1 + 56) = v38;
    v16 = (a1 + 108);
    v17 = 0;
    goto LABEL_16;
  }

  if (*(v4 + 16) == 3)
  {
    strcpy((v2 + 124), "\r Pure HFS Plus");
LABEL_15:
    *(a1 + 56) = v38;
    v16 = (a1 + 108);
    v17 = v6;
LABEL_16:
    sub_10001F0E8(v37 + 6, v16, v17);
    if ((LOWORD(v39[0]) == 256 || LOWORD(v39[0]) == 1) && (LOWORD(v39[0]) != 1 ? (v21 = &v39[1] + 14) : (v21 = &v39[3] + 8), (v22 = *v21, (v22 & 0x1000) != 0) && (sub_100020B5C(), v24 = v23, sub_10001ECB0(a1, 551, v25, v26, v27, v28, v29, v30), v31 = sub_10001F14C((a1 + 108), v24), (v32 = sub_10001F024(a1, v31)) != 0)))
    {
      v33 = v32;
      sub_10001F0E8((a1 + 108), v32 + 22, v24);
      LOWORD(v15) = 0;
      *(v33 + 4) = 551;
      v33[2] = v22 & 0xFFFFEFFF;
      v33[3] = v22;
      *(v33 + 8) = 4096;
      *(v33 + 10) = 1;
      *(a1 + 28) |= 0x400u;
    }

    else
    {
      LOWORD(v15) = 0;
    }

    return v15;
  }

  memset(v35, 0, sizeof(v35));
  if ((*v4 & 8) != 0)
  {
    v18 = sub_10001F888(v35);
  }

  else
  {
    v18 = sub_10001F7EC(v35);
  }

  v15 = v18;
  if (!v18)
  {
    v19 = *(*&v35[0] + 60);
    v20 = *(*&v35[0] + 52);
    *(v2 + 124) = *(*&v35[0] + 36);
    *(v2 + 140) = v20;
    *(v2 + 148) = v19;
  }

  if (*&v35[0])
  {
    sub_100004D50(v2, v35, 0);
  }

  if (!v15)
  {
    goto LABEL_15;
  }

  return v15;
}

uint64_t sub_1000265FC(uint64_t a1, unsigned int a2, int a3, int a4)
{
  if (*a1 == 18475)
  {
    v8 = *(a1 + 192);
  }

  else
  {
    v8 = *(a1 + 118) << 9;
  }

  v9 = *(a1 + 40);
  v10 = sub_10002D2D0();
  v11 = *(a1 + 40);
  result = sub_10002D2D0();
  v13 = dword_100043440;
  if (dword_100043440 >= 1)
  {
    v14 = 0;
    v15 = (v8 + v9 * a2) / v10;
    v16 = (v11 * a3) / result + v15;
    v17 = qword_100043448;
    do
    {
      v18 = *(v17 + 8 * v14);
      if (v18 >= v15 && v18 < v16)
      {
        v20 = dword_100043450;
        result = qword_100043458;
        HIDWORD(v21) = -286331153 * dword_100043450 + 143165576;
        LODWORD(v21) = HIDWORD(v21);
        if ((v21 >> 1) <= 0x8888888)
        {
          result = malloc_type_realloc(qword_100043458, 16 * dword_100043450 + 480, 0x1000040451B5BE8uLL);
          if (!result)
          {
            *(&v28[0] + 1) = *(&xmmword_100043460 + 1);
            v28[1] = *&qword_100043470;
            v28[2] = xmmword_100043480;
            v28[3] = *&off_100043490;
            return sub_10002D0E8(v28, 6, "CheckPhysicalMatch: Out of memory!\n", v22, v23, v24, v25, v26, xmmword_100043460);
          }

          v17 = qword_100043448;
          qword_100043458 = result;
          v20 = dword_100043450;
        }

        v27 = result + 16 * v20;
        *v27 = v18;
        *(v27 + 8) = a4;
        ++dword_100043450;
        v13 = dword_100043440;
      }

      ++v14;
    }

    while (v14 < v13);
  }

  return result;
}

void sub_100026794(uint64_t a1, double a2)
{
  v25 = __chkstk_darwin(a1, a2);
  qsort(qword_100043458, dword_100043450, 0x10uLL, sub_100026AD8);
  if (dword_100043450 >= 1)
  {
    v7 = 0;
    while (1)
    {
      v8 = *(qword_100043458 + 16 * v7);
      v31 = xmmword_100043460;
      v32 = *&qword_100043470;
      v33 = xmmword_100043480;
      v34 = *&off_100043490;
      sub_10002D0E8(&v31, 2, "block %llu:\t", v2, v3, v4, v5, v6, v8);
      v14 = *(qword_100043458 + 16 * v7 + 8);
      v30 = 4096;
      if (v14 > 0xF)
      {
        v17 = sub_100016CD8(v25, v14, &v31, &v30, 0, 0, 0);
        if (v17)
        {
          v26 = xmmword_100043460;
          v27 = *&qword_100043470;
          v28 = xmmword_100043480;
          v29 = *&off_100043490;
          sub_10002D0E8(&v26, 2, "error %d getting path for id=%u\n", v9, v10, v11, v12, v13, v17);
        }

        v26 = xmmword_100043460;
        v27 = *&qword_100043470;
        v28 = xmmword_100043480;
        v29 = *&off_100043490;
        v24 = &v31;
        v15 = &v26;
        v16 = "ROOT_OF_VOLUME%s (file id=%u)\n";
      }

      else if (v14 > 5)
      {
        if (v14 == 6)
        {
          v31 = xmmword_100043460;
          v32 = *&qword_100043470;
          v33 = xmmword_100043480;
          v34 = *&off_100043490;
          v15 = &v31;
          v16 = "$Allocation_Bitmap_File\n";
        }

        else
        {
          if (v14 != 8)
          {
LABEL_23:
            v31 = xmmword_100043460;
            v32 = *&qword_100043470;
            v33 = xmmword_100043480;
            v34 = *&off_100043490;
            sub_10002D0E8(&v31, 2, "$File_ID_%d\n", v9, v10, v11, v12, v13, v14);
            goto LABEL_12;
          }

          v31 = xmmword_100043460;
          v32 = *&qword_100043470;
          v33 = xmmword_100043480;
          v34 = *&off_100043490;
          v15 = &v31;
          v16 = "$Attributes_File\n";
        }
      }

      else if (v14 == 3)
      {
        v31 = xmmword_100043460;
        v32 = *&qword_100043470;
        v33 = xmmword_100043480;
        v34 = *&off_100043490;
        v15 = &v31;
        v16 = "$Extents_Overflow_File\n";
      }

      else
      {
        if (v14 != 4)
        {
          goto LABEL_23;
        }

        v31 = xmmword_100043460;
        v32 = *&qword_100043470;
        v33 = xmmword_100043480;
        v34 = *&off_100043490;
        v15 = &v31;
        v16 = "$Catalog_File\n";
      }

      sub_10002D0E8(v15, 2, v16, v9, v10, v11, v12, v13, v24);
LABEL_12:
      v18 = dword_100043440;
      v19 = dword_100043440 - 1;
      if (dword_100043440 >= 1)
      {
        v20 = dword_100043440;
        v21 = qword_100043448;
        while (*v21 != v8)
        {
          ++v21;
          if (!--v20)
          {
            goto LABEL_18;
          }
        }

        --dword_100043440;
        *v21 = *(qword_100043448 + 8 * v19);
        --v18;
      }

LABEL_18:
      if (++v7 >= dword_100043450)
      {
        goto LABEL_27;
      }
    }
  }

  v18 = dword_100043440;
LABEL_27:
  if (v18 >= 1)
  {
    v22 = 0;
    do
    {
      v23 = *(qword_100043448 + 8 * v22);
      v31 = xmmword_100043460;
      v32 = *&qword_100043470;
      v33 = xmmword_100043480;
      v34 = *&off_100043490;
      sub_10002D0E8(&v31, 2, "block %llu:\t*** NO MATCH ***\n", v2, v3, v4, v5, v6, v23);
      ++v22;
    }

    while (v22 < dword_100043440);
  }
}

uint64_t sub_100026AD8(uint64_t a1, uint64_t a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  v5 = v3 >= v4;
  v6 = v3 > v4;
  if (v5)
  {
    return v6;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100026B18(uint64_t a1, int a2, char *__s, int a4, int a5, int a6)
{
  if (a6 == 1)
  {
    if (!__s)
    {
      sub_1000309A4();
    }

    v12 = strlen(__s);
    v13 = malloc_type_malloc(v12 + 1, 0xC595DF52uLL);
    if (!v13)
    {
      return -108;
    }

    v14 = v13;
    strlcpy(v13, __s, v12 + 1);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1 + 656);
  if (v15)
  {
    v16 = **v15;
    if (v16)
    {
      v17 = *v15 + 16;
      while (*(v17 - 8) != a2 || *(v17 - 4) != a4 || *v17 != a5 || *(v17 + 16) != a6)
      {
        v17 += 32;
        if (!--v16)
        {
          goto LABEL_14;
        }
      }

      v22 = *(v17 + 8);
      if (v14)
      {
        if (v22 && !strcmp(v14, v22))
        {
          return 0;
        }
      }

      else if (!v22)
      {
        return 0;
      }
    }

LABEL_14:
    v18 = sub_10001E95C(v15);
    sub_10001E968(v15, v18 + 32);
  }

  else
  {
    v15 = sub_10001E898(40);
    *(a1 + 656) = v15;
  }

  v19 = 0;
  v20 = *v15 + 32 * **v15;
  *(v20 + 8) = a2;
  *(v20 + 12) = a4;
  *(v20 + 16) = a5;
  *(v20 + 20) = 0;
  *(v20 + 24) = v14;
  *(v20 + 32) = a6;
  *(v20 + 33) = 0;
  *(v20 + 36) = 0;
  *(a1 + 18) |= 0x800u;
  ++**v15;
  return v19;
}

uint64_t sub_100026CB8(uint64_t result, char a2, int a3, int a4, uint64_t a5)
{
  if (result)
  {
    *a5 = 10;
    *(a5 + 2) = a2;
    *(a5 + 3) = 0;
    *(a5 + 4) = a3;
    *(a5 + 8) = a4;
  }

  else
  {
    *a5 = 7;
    *(a5 + 1) = a2;
    *(a5 + 2) = a3;
    *(a5 + 6) = a4;
  }

  return result;
}

uint64_t sub_100026CEC(void *a1)
{
  v115 = 0;
  v114 = 0;
  v120 = 0u;
  memset(v121, 0, sizeof(v121));
  v118 = 0u;
  v119 = 0u;
  v117 = 0u;
  memset(v113, 0, 512);
  memset(v112, 0, sizeof(v112));
  v111 = 0;
  v110 = 0;
  v109 = 0;
  memset(v108, 0, sizeof(v108));
  memset(v107, 0, 268);
  v106 = 0;
  v2 = a1[97];
  sub_100020B5C();
  v6 = v5;
  if (v5)
  {
    v7 = v2[19];
    if (v7)
    {
      v10 = *v7;
      v9 = v7 + 10;
      v8 = v10;
      v11 = 8;
      do
      {
        v12 = *(v9 - 1);
        if (!v12)
        {
          break;
        }

        v13 = *v9;
        v9 += 2;
        sub_1000276E0(a1, v8, 0, v12, v13, 0);
        --v11;
      }

      while (v11);
    }

    v14 = v2[20];
    if (v14)
    {
      v17 = *v14;
      v16 = v14 + 10;
      v15 = v17;
      v18 = 8;
      do
      {
        v19 = *(v16 - 1);
        if (!v19)
        {
          break;
        }

        v20 = *v16;
        v16 += 2;
        sub_1000276E0(a1, v15, 0, v19, v20, 0);
        --v18;
      }

      while (v18);
    }

    v21 = v2[21];
    if (v21)
    {
      v24 = *v21;
      v23 = v21 + 10;
      v22 = v24;
      v25 = 8;
      do
      {
        v26 = *(v23 - 1);
        if (!v26)
        {
          break;
        }

        v27 = *v23;
        v23 += 2;
        sub_1000276E0(a1, v22, 0, v26, v27, 0);
        --v25;
      }

      while (v25);
    }

    v28 = v2[22];
    if (v28)
    {
      v31 = *v28;
      v30 = v28 + 10;
      v29 = v31;
      v32 = 8;
      do
      {
        v33 = *(v30 - 1);
        if (!v33)
        {
          break;
        }

        v34 = *v30;
        v30 += 2;
        sub_1000276E0(a1, v29, 0, v33, v34, 0);
        --v32;
      }

      while (v32);
    }

    v35 = v2[23];
    if (v35)
    {
      v38 = *v35;
      v37 = v35 + 10;
      v36 = v38;
      v39 = 8;
      do
      {
        v40 = *(v37 - 1);
        if (!v40)
        {
          break;
        }

        v41 = *v37;
        v37 += 2;
        sub_1000276E0(a1, v36, 0, v40, v41, 0);
        --v39;
      }

      while (v39);
    }
  }

  else
  {
    v42 = v2[20];
    if (v42)
    {
      v45 = *v42;
      v44 = v42 + 13;
      v43 = v45;
      v46 = 3;
      do
      {
        v47 = *(v44 - 1);
        if (!*(v44 - 1))
        {
          break;
        }

        v48 = *v44;
        v44 += 2;
        sub_1000276E0(a1, v43, 0, v47, v48, 0);
        --v46;
      }

      while (v46);
    }

    v49 = v2[21];
    if (v49)
    {
      v52 = *v49;
      v51 = v49 + 13;
      v50 = v52;
      v53 = 3;
      do
      {
        v54 = *(v51 - 1);
        if (!*(v51 - 1))
        {
          break;
        }

        v55 = *v51;
        v51 += 2;
        sub_1000276E0(a1, v50, 0, v54, v55, 0);
        --v53;
      }

      while (v53);
    }
  }

  if (!sub_100012A1C(a1[99], -32767, v113, &v117, &v115, &v114, v3, v4))
  {
    do
    {
      if (v117 == 512 || v117 == 2)
      {
        if (v6)
        {
          v59 = DWORD2(v117);
          v60 = &v121[2] + 3;
          v61 = 8;
          do
          {
            v62 = *(v60 - 1);
            if (!v62)
            {
              break;
            }

            v63 = *v60;
            v60 += 2;
            sub_1000276E0(a1, v59, 0, v62, v63, 0);
            --v61;
          }

          while (v61);
          v64 = DWORD2(v117);
          v65 = &v121[7] + 3;
          v66 = 8;
          do
          {
            v67 = *(v65 - 1);
            if (!v67)
            {
              break;
            }

            v68 = *v65;
            v65 += 2;
            sub_1000276E0(a1, v64, 0, v67, v68, 255);
            --v66;
          }

          while (v66);
        }

        else
        {
          v69 = DWORD1(v118);
          v70 = v121 + 6;
          v71 = 3;
          do
          {
            v72 = *(v70 - 1);
            if (!*(v70 - 1))
            {
              break;
            }

            v73 = *v70;
            v70 += 2;
            sub_1000276E0(a1, v69, 0, v72, v73, 0);
            --v71;
          }

          while (v71);
          v74 = DWORD1(v118);
          v75 = &v121[1] + 4;
          v76 = 3;
          do
          {
            v77 = *(v75 - 1);
            if (!*(v75 - 1))
            {
              break;
            }

            v78 = *v75;
            v75 += 2;
            sub_1000276E0(a1, v74, 0, v77, v78, 255);
            --v76;
          }

          while (v76);
        }
      }
    }

    while (!sub_100012A1C(a1[99], 1, v113, &v117, &v115, &v114, v56, v57));
  }

  for (LODWORD(result) = sub_100012A1C(a1[98], -32767, &v110, v112, &v115, &v114, v56, v57); !result; LODWORD(result) = sub_100012A1C(a1[98], 1, &v110, v112, &v115, &v114, v80, v81))
  {
    if (v6)
    {
      v82 = HIDWORD(v110);
      v83 = BYTE2(v110);
      v84 = &v112[4];
      v85 = 8;
      do
      {
        v86 = *(v84 - 1);
        if (!v86)
        {
          break;
        }

        v87 = *v84;
        v84 += 2;
        sub_1000276E0(a1, v82, 0, v86, v87, v83);
        --v85;
      }

      while (v85);
    }

    else
    {
      v88 = *(&v110 + 2);
      v89 = BYTE1(v110);
      v90 = &v112[2];
      v91 = 3;
      do
      {
        v92 = *(v90 - 1);
        if (!*(v90 - 1))
        {
          break;
        }

        v93 = *v90;
        v90 += 2;
        sub_1000276E0(a1, v88, 0, v92, v93, v89);
        --v91;
      }

      while (v91);
    }
  }

  if (v6)
  {
    for (LODWORD(result) = sub_100012A1C(a1[101], -32767, v107, v108, &v115, &v114, v80, v81); !result; LODWORD(result) = sub_100012A1C(a1[101], 1, v107, v108, &v115, &v114, v94, v95))
    {
      if (v108[0] == 48)
      {
        sub_10001EAF0(v107 | 0xE, 2 * WORD6(v107[0]), v116, &v106, 0x7FuLL);
        v116[v106] = 0;
        v101 = DWORD1(v107[0]);
        v102 = (v108 | 0xC);
        v103 = 8;
        do
        {
          v104 = *(v102 - 1);
          if (!v104)
          {
            break;
          }

          v105 = *v102;
          v102 += 2;
          sub_1000276E0(a1, v101, v116, v104, v105, 1);
          --v103;
        }

        while (v103);
      }

      else if (v108[0] == 32)
      {
        sub_10001EAF0(v107 | 0xE, 2 * WORD6(v107[0]), v116, &v106, 0x7FuLL);
        v116[v106] = 0;
        v96 = DWORD1(v107[0]);
        v97 = &v108[7];
        v98 = 8;
        do
        {
          v99 = *(v97 - 1);
          if (!v99)
          {
            break;
          }

          v100 = *v97;
          v97 += 2;
          sub_1000276E0(a1, v96, v116, v99, v100, 1);
          --v98;
        }

        while (v98);
      }
    }
  }

  if (result == 32)
  {
    return 0;
  }

  else
  {
    return result;
  }
}