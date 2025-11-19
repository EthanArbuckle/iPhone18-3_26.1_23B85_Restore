uint64_t sub_100000768(uint64_t a1, int *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a3 && *a3 && a3[1] && a3[2] != 0;
  v12 = *(a2 + 1);
  v13 = *(a2 + 6);
  v221 = 0;
  v14 = *a2;
  v15 = *(a2 + 34);
  v16 = *(a2 + 20);
  v220.tv_sec = 0;
  *&v220.tv_usec = 0;
  v219 = 0;
  v217 = 0u;
  v218 = 0u;
  *size = 0u;
  v216 = 0u;
  v214 = 0;
  tv_sec = 0;
  if (v11)
  {
    (a3[1])("Format device: Checking parameters", 10, 10, &v221, *a3);
  }

  v17 = v15 & 0xF000;
  if (v17 != 0x2000)
  {
    *__str = xmmword_10000C490;
    *&v223 = qword_10000C4A0;
    sub_100002D00(__str, 6, "warning: %s is not a character device\n", a4, a5, a6, a7, a8, v12);
  }

  v219 = 0;
  v217 = 0u;
  v218 = 0u;
  *size = 0u;
  v216 = 0u;
  v18 = *(a1 + 24);
  if (v18)
  {
    v19 = sub_1000022A8(v18, size);
    if (v20)
    {
LABEL_39:
      v33 = 0;
      goto LABEL_40;
    }

    HIDWORD(v217) = DWORD1(v216);
    LODWORD(v218) = HIDWORD(v216);
    DWORD1(v216) = 0;
    HIDWORD(v216) = 0;
  }

  v21 = *(a1 + 60);
  if (v21)
  {
    DWORD1(v217) = *(a1 + 60);
  }

  v22 = *(a1 + 92);
  if (v22)
  {
    LODWORD(v217) = *(a1 + 92);
  }

  if (v11)
  {
    ++v221;
  }

  v23 = *(a1 + 40);
  if (v23)
  {
    LODWORD(size[0]) = *(a1 + 40);
  }

  v24 = *(a1 + 88);
  if (v24)
  {
    HIDWORD(v217) = *(a1 + 88);
  }

  v25 = *(a1 + 112);
  if (v25)
  {
    DWORD2(v217) = *(a1 + 80);
  }

  if (!*(a1 + 24) && (!v21 || !v22 || !v23 || !v24 || !v25))
  {
    v26 = *(a2 + 11);
    v232 = *(a2 + 10);
    v233 = v26;
    v234 = *(a2 + 12);
    v27 = *(a2 + 7);
    v228 = *(a2 + 6);
    v229 = v27;
    v28 = *(a2 + 9);
    v230 = *(a2 + 8);
    v231 = v28;
    v29 = *(a2 + 3);
    v224 = *(a2 + 2);
    v225 = v29;
    v30 = *(a2 + 5);
    v226 = *(a2 + 4);
    v227 = v30;
    v31 = *(a2 + 1);
    *__str = *a2;
    v223 = v31;
    if (sub_10000235C(__str, v25, size))
    {
      goto LABEL_39;
    }
  }

  if (v11)
  {
    ++v221;
  }

  if ((size[0] & (LODWORD(size[0]) - 1)) != 0)
  {
    *__str = xmmword_10000C490;
    *&v223 = qword_10000C4A0;
    v194 = LODWORD(size[0]);
    v32 = "bytes/sector (%u) is not a power of 2";
LABEL_38:
    sub_100002D00(__str, 3, v32, a4, a5, a6, a7, a8, v194);
    goto LABEL_39;
  }

  if (LODWORD(size[0]) <= 0x7F)
  {
    *__str = xmmword_10000C490;
    *&v223 = qword_10000C4A0;
    sub_100002D00(__str, 3, "bytes/sector (%u) is too small; minimum is %u", a4, a5, a6, a7, a8, LODWORD(size[0]));
    goto LABEL_39;
  }

  if (LODWORD(size[0]) > 0x1000)
  {
    *__str = xmmword_10000C490;
    *&v223 = qword_10000C4A0;
    sub_100002D00(__str, 3, "bytes/sector (%u) is too large; maximum is %u", a4, a5, a6, a7, a8, LODWORD(size[0]));
    goto LABEL_39;
  }

  v37 = *(a1 + 96);
  if ((v37 & (v37 - 1)) != 0)
  {
    *__str = xmmword_10000C490;
    *&v223 = qword_10000C4A0;
    sub_100002D00(__str, 3, "physical bytes/sector (%u) is not a power of 2", a4, a5, a6, a7, a8, v37);
    goto LABEL_39;
  }

  if (v11)
  {
    ++v221;
  }

  if (v37)
  {
    if (v37 < LODWORD(size[0]))
    {
      *__str = xmmword_10000C490;
      *&v223 = qword_10000C4A0;
      sub_100002D00(__str, 3, "physical bytes/sector (%u) is less than logical bytes/sector (%u)", a4, a5, a6, a7, a8, v37);
      goto LABEL_39;
    }
  }

  else
  {
    v38 = a2[4];
    *__str = xmmword_10000C490;
    *&v223 = qword_10000C4A0;
    if (v38 == -1)
    {
      sub_100002D00(__str, 6, "Physical block size wasn't initialized, because of ioctl(DKIOCGETPHYSICALBLOCKSIZE) not being supported\n", a4, a5, a6, a7, a8, v194);
      LODWORD(v38) = size[0];
    }

    else
    {
      sub_100002D00(__str, 6, "%u bytes per physical sector\n", a4, a5, a6, a7, a8, v38);
    }

    *(a1 + 96) = v38;
  }

  if (v11)
  {
    ++v221;
  }

  v39 = *(a1 + 32);
  v214 = v39;
  if (v39 == 32)
  {
    if (*(a1 + 56))
    {
      v40 = 101;
LABEL_70:
      *__str = xmmword_10000C490;
      *&v223 = qword_10000C4A0;
      sub_100002D00(__str, 3, "-%c is not a legal FAT%s option", a4, a5, a6, a7, a8, v40);
      goto LABEL_39;
    }

    goto LABEL_74;
  }

  if (!v39)
  {
    if (*(a1 + 24))
    {
      v214 = 12;
      goto LABEL_66;
    }

    if (*(a1 + 56) || !*(a1 + 64) && !*(a1 + 68))
    {
      goto LABEL_66;
    }

    v214 = 32;
LABEL_74:
    if (*(a1 + 24))
    {
      LODWORD(v216) = 0;
    }

    goto LABEL_76;
  }

LABEL_66:
  if (*(a1 + 64))
  {
    v40 = 105;
    goto LABEL_70;
  }

  if (*(a1 + 68))
  {
    v40 = 107;
    goto LABEL_70;
  }

LABEL_76:
  v41 = *(a1 + 48);
  if (v41)
  {
    if ((v41 & (v41 - 1)) != 0)
    {
      *__str = xmmword_10000C490;
      *&v223 = qword_10000C4A0;
      sub_100002D00(__str, 3, "block size (%u) is not a power of 2", a4, a5, a6, a7, a8, v41);
      goto LABEL_39;
    }

    if (v41 < LODWORD(size[0]))
    {
      *__str = xmmword_10000C490;
      *&v223 = qword_10000C4A0;
      sub_100002D00(__str, 3, "block size (%u) is too small; minimum is %u", a4, a5, a6, a7, a8, v41);
      goto LABEL_39;
    }

    if (v41 > LODWORD(size[0]) << 7)
    {
      *__str = xmmword_10000C490;
      *&v223 = qword_10000C4A0;
      sub_100002D00(__str, 3, "block size (%u) is too large; maximum is %u", a4, a5, a6, a7, a8, v41);
      goto LABEL_39;
    }

    HIDWORD(size[0]) = v41 / LODWORD(size[0]);
  }

  v42 = *(a1 + 52);
  if (v42)
  {
    if ((v42 & (v42 - 1)) != 0)
    {
      *__str = xmmword_10000C490;
      *&v223 = qword_10000C4A0;
      sub_100002D00(__str, 3, "sectors/cluster (%u) is not a power of 2", a4, a5, a6, a7, a8, v42);
      goto LABEL_39;
    }

    HIDWORD(size[0]) = *(a1 + 52);
  }

  if (*(a1 + 84))
  {
    LODWORD(size[1]) = *(a1 + 84);
  }

  if (v11)
  {
    ++v221;
  }

  v43 = *(a1 + 76);
  if (v43)
  {
    if (v43 >= 0x11)
    {
      *__str = xmmword_10000C490;
      *&v223 = qword_10000C4A0;
      sub_100002D00(__str, 3, "number of FATs (%u) is too large; maximum is %u", a4, a5, a6, a7, a8, v43);
      LODWORD(v43) = *(a1 + 76);
    }

    HIDWORD(size[1]) = v43;
  }

  if (*(a1 + 56))
  {
    LODWORD(v216) = *(a1 + 56);
  }

  if (*(a1 + 108))
  {
    v44 = *(a1 + 72);
    if (v44 <= 0xEF)
    {
      *__str = xmmword_10000C490;
      *&v223 = qword_10000C4A0;
      sub_100002D00(__str, 3, "illegal media descriptor (%#x)", a4, a5, a6, a7, a8, v44);
      goto LABEL_39;
    }

    DWORD2(v216) = *(a1 + 72);
  }

  if (*(a1 + 44))
  {
    LODWORD(v218) = *(a1 + 44);
  }

  if (*(a1 + 64))
  {
    DWORD2(v218) = *(a1 + 64);
  }

  if (*(a1 + 68))
  {
    HIDWORD(v218) = *(a1 + 68);
  }

  v45 = *a1;
  if (*a1)
  {
    if (v17 != 0x8000 || v16 % LODWORD(size[0]) || v16 < LODWORD(size[0]) || v16 > (0xFFFF * LODWORD(size[0])))
    {
      *__str = xmmword_10000C490;
      *&v223 = qword_10000C4A0;
      sub_100002D00(__str, 3, "%s: inappropriate file type or format", a4, a5, a6, a7, a8, v45);
      goto LABEL_39;
    }

    v46 = v16 / LODWORD(size[0]);
  }

  else
  {
    v46 = 1;
    v45 = v13;
  }

  if (!HIDWORD(size[1]))
  {
    HIDWORD(size[1]) = 2;
  }

  if (v11)
  {
    ++v221;
    sub_100002600(v12, &v214, size);
    ++v221;
  }

  else
  {
    sub_100002600(v12, &v214, size);
  }

  v47 = HIDWORD(size[0]);
  if (!HIDWORD(size[0]))
  {
    v52 = HIDWORD(v217) * LODWORD(size[0]);
    v53 = v52 >> 10;
    v54 = __PAIR64__(v214, v214) >> 2;
    if (v54 > 3)
    {
      if (v54 == 4)
      {
        goto LABEL_174;
      }

      if (v54 != 8)
      {
        goto LABEL_149;
      }
    }

    else
    {
      if (v54)
      {
        if (v54 == 3)
        {
          goto LABEL_136;
        }

LABEL_149:
        *__str = xmmword_10000C490;
        *&v223 = qword_10000C4A0;
        sub_100002D00(__str, 3, "Invalid FAT type: %d", a4, a5, a6, a7, a8, v214);
        goto LABEL_39;
      }

      if (LODWORD(size[0]) == 512 && HIDWORD(v217) <= 0x20D0)
      {
        v214 = 12;
LABEL_153:
        if (LODWORD(size[1]))
        {
          v59 = size[1];
        }

        else
        {
          v59 = v46;
        }

        v60 = v216;
        if (!v216)
        {
          v60 = 512;
        }

        if (v60 % (LODWORD(size[0]) >> 5))
        {
          v61 = v60 / (LODWORD(size[0]) >> 5) + 1;
        }

        else
        {
          v61 = v60 / (LODWORD(size[0]) >> 5);
        }

        v62 = HIDWORD(size[1]) + HIDWORD(size[1]) * (0x2FE5u / (2 * LODWORD(size[0]))) + v61;
        v63 = size[0];
        do
        {
          v47 = v63 / LODWORD(size[0]);
          v48 = 12;
          if (v59 + 4085 * (v63 / LODWORD(size[0])) + v62 >= HIDWORD(v217))
          {
            break;
          }

          v64 = v63 > 0x4000;
          v63 *= 2;
        }

        while (!v64);
LABEL_182:
        HIDWORD(size[0]) = v47;
        if (v47)
        {
          goto LABEL_183;
        }

LABEL_201:
        *__str = xmmword_10000C490;
        *&v223 = qword_10000C4A0;
        sub_100002D00(__str, 3, "FAT%d is impossible with %u sectors", a4, a5, a6, a7, a8, v48);
        goto LABEL_39;
      }

      if (LODWORD(size[0]) != 512 && HIDWORD(v217) <= 0x1068)
      {
        v214 = 12;
LABEL_136:
        if (LODWORD(size[0]) > 0x8000)
        {
          v48 = 12;
          goto LABEL_201;
        }

        goto LABEL_153;
      }

      if (v52 <= 0x200003FF)
      {
        v214 = 16;
LABEL_174:
        v66 = 0;
        do
        {
          v67 = &unk_10000C000 + 16 * v66++;
        }

        while (v53 > *v67);
        v57 = *(v67 + 2);
        if (v57)
        {
          v48 = 16;
          goto LABEL_178;
        }

        *__str = xmmword_10000C490;
        *&v223 = qword_10000C4A0;
        v65 = 16;
        goto LABEL_279;
      }

      v214 = 32;
    }

    v55 = 0;
    do
    {
      v56 = &unk_10000C080 + 16 * v55++;
    }

    while (v53 > *v56);
    v57 = *(v56 + 2);
    if (v57)
    {
      v48 = 32;
LABEL_178:
      if (v57 <= LODWORD(size[0]))
      {
        v68 = size[0];
      }

      else
      {
        v68 = v57;
      }

      v47 = v68 / LODWORD(size[0]);
      goto LABEL_182;
    }

    *__str = xmmword_10000C490;
    *&v223 = qword_10000C4A0;
    v65 = 32;
LABEL_279:
    sub_100002D00(__str, 3, "FAT%d is impossible for disk size of %lluKiB", a4, a5, a6, a7, a8, v65);
    goto LABEL_39;
  }

  LODWORD(v48) = v214;
  if (!v214)
  {
    v49 = size[1];
    if (!LODWORD(size[1]))
    {
      v49 = v46;
    }

    if (v216)
    {
      v50 = v216;
    }

    else
    {
      v50 = 512;
    }

    if (v50 % (LODWORD(size[0]) >> 5))
    {
      v51 = v50 / (LODWORD(size[0]) >> 5) + 1;
    }

    else
    {
      v51 = v50 / (LODWORD(size[0]) >> 5);
    }

    if (HIDWORD(size[1]) + HIDWORD(size[1]) * (0x2FE5u / (4 * LODWORD(size[0]))) + v49 + (4085 * HIDWORD(size[0])) + v51 <= HIDWORD(v217))
    {
      if (0x1FFECu / LODWORD(size[0]) * LODWORD(size[0]) == 131052)
      {
        v58 = 0x1FFECu / LODWORD(size[0]);
      }

      else
      {
        v58 = 0x1FFECu / LODWORD(size[0]) + 1;
      }

      if (v49 + v58 * HIDWORD(size[1]) + (65525 * HIDWORD(size[0])) + v51 <= HIDWORD(v217))
      {
        LODWORD(v48) = 32;
      }

      else
      {
        LODWORD(v48) = 16;
      }
    }

    else
    {
      LODWORD(v48) = 12;
    }

    v214 = v48;
  }

LABEL_183:
  if (v11)
  {
    v221 += 3;
  }

  v69 = v46;
  if (v48 == 32)
  {
    v70 = DWORD2(v218);
    if (DWORD2(v218))
    {
      v71 = HIDWORD(v218);
    }

    else
    {
      if (v46 == 0xFFFF || (v71 = HIDWORD(v218), v46 == HIDWORD(v218)))
      {
        *__str = xmmword_10000C490;
        *&v223 = qword_10000C4A0;
        v32 = "no room for info sector";
        goto LABEL_38;
      }

      DWORD2(v218) = v46;
      v70 = v46;
    }

    if (v46 > v70 || v70 == 0xFFFF)
    {
      v73 = v46;
    }

    else
    {
      v73 = v70 + 1;
    }

    if (v71 != 0xFFFF)
    {
      if (v71)
      {
        if (v71 == v70)
        {
          *__str = xmmword_10000C490;
          *&v223 = qword_10000C4A0;
          v32 = "backup sector would overwrite info sector";
          goto LABEL_38;
        }
      }

      else
      {
        if (v73 == 0xFFFF)
        {
          *__str = xmmword_10000C490;
          *&v223 = qword_10000C4A0;
          v32 = "no room for backup sector";
          goto LABEL_38;
        }

        if (v73 <= 6)
        {
          v71 = 6;
        }

        else
        {
          v71 = v73;
        }

        HIDWORD(v218) = v71;
      }
    }

    if (v73 > v71 || v71 == 0xFFFF)
    {
      v69 = v73;
    }

    else
    {
      v69 = v71 + 1;
    }
  }

  v75 = size[1];
  if (LODWORD(size[1]))
  {
    if (LODWORD(size[1]) < v69)
    {
      *__str = xmmword_10000C490;
      *&v223 = qword_10000C4A0;
      v32 = "too few reserved sectors";
      goto LABEL_38;
    }
  }

  else
  {
    if (v69 <= 0x20)
    {
      v75 = 32;
    }

    else
    {
      v75 = v69;
    }

    if (v48 != 32)
    {
      v75 = v69;
    }

    LODWORD(size[1]) = v75;
  }

  v76 = v216;
  if (v48 != 32 && !v216)
  {
    v76 = 512;
    LODWORD(v216) = 512;
  }

  v77 = v218;
  if (v76 % (LODWORD(size[0]) >> 5))
  {
    v78 = v76 / (LODWORD(size[0]) >> 5) + 1;
  }

  else
  {
    v78 = v76 / (LODWORD(size[0]) >> 5);
  }

  if (v48 != 32 && v218 >= 0x10000)
  {
    *__str = xmmword_10000C490;
    *&v223 = qword_10000C4A0;
    v32 = "too many sectors/FAT for FAT12/16";
    goto LABEL_38;
  }

  v79 = (v75 + v78);
  if (v218 <= 1)
  {
    v80 = 1;
  }

  else
  {
    v80 = v218;
  }

  if (v79 + HIDWORD(size[1]) * v80 > HIDWORD(v217))
  {
    *__str = xmmword_10000C490;
    *&v223 = qword_10000C4A0;
    v32 = "meta data exceeds file system size";
    goto LABEL_38;
  }

  v204 = v78;
  v206 = v46;
  v207 = v79 + HIDWORD(size[1]) * v80;
  v81 = (HIDWORD(v217) - v207);
  v82 = 2 * LODWORD(size[0]);
  v83 = v48 >> 2;
  v84 = 2 * LODWORD(size[0]) * v81 / (HIDWORD(size[1]) * v83 + 2 * LODWORD(size[0]) * v47);
  if (v48 == 16)
  {
    v85 = 65524;
  }

  else
  {
    v85 = 268435445;
  }

  if (v48 == 12)
  {
    v86 = 4084;
  }

  else
  {
    v86 = v85;
  }

  v209 = v86;
  if (v86 <= v84)
  {
    v89 = v85 | 2;
    if (v48 == 12)
    {
      v89 = 4086;
    }

    v90 = v89 * v83 % v82;
    v87 = (v86 | 2) * v83;
    if (v90)
    {
      goto LABEL_246;
    }
  }

  else
  {
    v87 = (v84 + 2) * v83;
    if (v87 % v82)
    {
LABEL_246:
      v88 = v87 / v82 + 1;
      goto LABEL_251;
    }
  }

  v88 = v87 / v82;
LABEL_251:
  if (!v218)
  {
    LODWORD(v218) = v88;
    v91 = *(a1 + 96);
    v77 = v88;
    if (v91 > LODWORD(size[0]))
    {
      v77 = v88;
      if (v88 % (v91 / LODWORD(size[0])))
      {
        v77 = v91 / LODWORD(size[0]) + v88 - v88 % (v91 / LODWORD(size[0]));
        LODWORD(v218) = v77;
      }
    }

    v207 += (v77 - 1) * HIDWORD(size[1]);
    LODWORD(v81) = HIDWORD(v217) - v207;
  }

  v92 = (2 * LODWORD(size[0]) * v77 / v83) - 2;
  v93 = v81 / v47;
  if (v93 > v92)
  {
    v94 = v79 + v77 * HIDWORD(size[1]) + v92 * v47;
    HIDWORD(v217) = v94;
    *__str = xmmword_10000C490;
    *&v223 = qword_10000C4A0;
    sub_100002D00(__str, 6, "warning: sectors/FAT limits sectors to %u, clusters to %u\n", a4, a5, a6, a7, a8, v94);
    v77 = v218;
    v93 = v92;
  }

  if (v77 < v88)
  {
    *__str = xmmword_10000C490;
    *&v223 = qword_10000C4A0;
    sub_100002D00(__str, 6, "warning: sectors/FAT limits file system to %u clusters\n", a4, a5, a6, a7, a8, v93);
  }

  if (v48 == 16)
  {
    v95 = 4085;
  }

  else
  {
    v95 = 65525;
  }

  if (v48 == 12)
  {
    v95 = 1;
  }

  if (v93 < v95)
  {
    *__str = xmmword_10000C490;
    *&v223 = qword_10000C4A0;
    sub_100002D00(__str, 3, "%u clusters too few clusters for FAT%u, need %u", a4, a5, a6, a7, a8, v93);
    goto LABEL_39;
  }

  if (v93 > v209)
  {
    LODWORD(v93) = v209;
    HIDWORD(v217) = v207 + HIDWORD(size[0]) + HIDWORD(size[0]) * v209 - 1;
    *__str = xmmword_10000C490;
    *&v223 = qword_10000C4A0;
    sub_100002D00(__str, 6, "warning: FAT type limits file system to %u sectors\n", a4, a5, a6, a7, a8, HIDWORD(v217));
  }

  v201 = v93 - 1;
  *__str = xmmword_10000C490;
  *&v223 = qword_10000C4A0;
  sub_100002D00(__str, 6, "%s: %u sector%s in %u FAT%u cluster%s (%u bytes/cluster)\n", a4, a5, a6, a7, a8, v12);
  if (!DWORD2(v216))
  {
    if (DWORD2(v217))
    {
      v103 = 248;
    }

    else
    {
      v103 = 240;
    }

    DWORD2(v216) = v103;
  }

  if (v48 == 32)
  {
    DWORD1(v218) = 2;
    if (HIDWORD(v217) < 0x10000)
    {
      DWORD1(v216) = HIDWORD(v217);
    }

    HIDWORD(v216) = 0;
    v104 = (&v216 + 4);
  }

  else
  {
    v104 = &v218;
    if (!HIWORD(HIDWORD(v217)))
    {
      DWORD1(v216) = HIDWORD(v217);
      HIDWORD(v217) = 0;
    }

    HIDWORD(v216) = v218;
  }

  *v104 = 0;
  if (v11)
  {
    v221 = 10;
    (a3[2])("Format device: Checking parameters", *a3);
    sub_100002700(size, v105, v106, v107, v108, v109, v110, v111);
    if (*(a1 + 100))
    {
      v34 = 0;
      v35 = &off_1000081C0;
      v33 = 1;
      goto LABEL_42;
    }

    v221 = 0;
    v33 = 1;
    (a3[1])("Format device: Wiping file system", 10, 1, &v221, *a3);
  }

  else
  {
    sub_100002700(size, v96, v97, v98, v99, v100, v101, v102);
    v33 = 0;
    v34 = 0;
    if (*(a1 + 100))
    {
      return v34;
    }
  }

  gettimeofday(&v220, 0);
  tv_sec = v220.tv_sec;
  v199 = localtime(&tv_sec);
  __src = malloc_type_malloc(0x20000uLL, 0x6E36B54BuLL);
  if (__src && (__dst = malloc_type_malloc(LODWORD(size[0]), 0xDDC8FA22uLL)) != 0)
  {
    v112 = v218;
    if (HIDWORD(v216))
    {
      v112 = HIDWORD(v216);
    }

    v113 = LODWORD(size[1]) + v112 * HIDWORD(size[1]);
    v114 = v204;
    if (v48 == 32)
    {
      v114 = HIDWORD(size[0]);
    }

    v197 = v113;
    v200 = v113 + v114;
    if (*(&xmmword_10000C490 + 1))
    {
      *__str = v14;
      *&__str[4] = 0;
      *&__str[8] = LODWORD(size[0]);
      LODWORD(v223) = 0;
      DWORD1(v223) = v113 + v114;
      v115 = (*(&xmmword_10000C490 + 1))(qword_10000C4A0, __str);
      if (v115)
      {
        v34 = v115;
        *__str = xmmword_10000C490;
        *&v223 = qword_10000C4A0;
        sub_100002D00(__str, 3, "Encountered errors trying to wipe resource", v116, v117, v118, v119, v120, v195);
        if (!v11)
        {
          return v34;
        }

        goto LABEL_41;
      }
    }

    if (v11)
    {
      v221 = 1;
      (a3[2])((&off_1000081C0)[v33], *a3);
      v221 = 0;
      (a3[1])((&off_1000081C0)[++v33], 80, (v200 + 2), &v221, *a3);
    }

    if (v200)
    {
      v208 = 0;
      v210 = 0;
      v205 = 0;
      v128 = __src;
      while (1)
      {
        v129 = v214;
        v130 = HIDWORD(v218);
        if (*a1)
        {
          v131 = HIDWORD(v218) == 0xFFFF;
        }

        else
        {
          v131 = 1;
        }

        v133 = v131 || v214 != 32;
        if (v206 > HIDWORD(v218) || v210 < HIDWORD(v218))
        {
          v133 = 1;
        }

        v135 = v133 == 0;
        if (v133)
        {
          v130 = 0;
        }

        v136 = v208;
        if (v135)
        {
          v136 = 0;
        }

        v208 = v136;
        if (*a1 && v210 - v130 < v206)
        {
          v137 = (a3[4])(a3[3], v128, LODWORD(size[0]), v136);
          if (v137 == -1)
          {
            goto LABEL_430;
          }

          v143 = size[0];
          if (v137 != LODWORD(size[0]))
          {
            v211 = xmmword_10000C490;
            v212 = qword_10000C4A0;
            v196 = v45;
            v193 = "%s: can't read sector %u";
            goto LABEL_431;
          }
        }

        else
        {
          v144 = size[0];
          bzero(v128, LODWORD(size[0]));
          v143 = v144;
        }

        if (v210 && (v129 != 32 || HIDWORD(v218) == 0xFFFF || v210 != HIDWORD(v218)))
        {
          if (v129 == 32 && DWORD2(v218) != 0xFFFF && (v210 == DWORD2(v218) || HIDWORD(v218) != 0xFFFF && v210 == DWORD2(v218) + HIDWORD(v218)))
          {
            *&__src[v205] = 1096897106;
            *(v128 + 484) = 1631679090;
            *(v128 + 488) = v201;
            v151 = DWORD1(v218) + 1;
            *(v128 + 492) = WORD2(v218) + 1;
            *(v128 + 494) = BYTE2(v151);
            *(v128 + 495) = HIBYTE(v151);
            *(v128 + 510) = 85;
            LOBYTE(v151) = -86;
            v152 = 511;
            goto LABEL_377;
          }

          if (v210 < LODWORD(size[1]) || v210 >= v197)
          {
            goto LABEL_434;
          }

          v168 = HIDWORD(v216);
          if (!HIDWORD(v216))
          {
            v168 = v218;
          }

          if ((v210 - LODWORD(size[1])) % v168)
          {
LABEL_434:
            if (v210 == v197)
            {
              v169 = *(a1 + 8);
              if (v169)
              {
                if (*v169)
                {
                  sub_1000029A4(v128, v169);
                  *(v128 + 11) = 40;
                  *(v128 + 22) = (32 * v199->i16[2]) | (v199[1].i16[0] << 11) | (v199->i32[0] >> 1);
                  v170 = vadd_s32(vshl_u32(v199[2], 0x900000005), 0xFFFF600000000020);
                  v171 = v199[1].i32[1] | v170.i32[0] | v170.i32[1];
                  *(v128 + 24) = v171;
                  v151 = v171 >> 8;
                  v152 = 25;
LABEL_377:
                  *(v128 + v152) = v151;
                }
              }
            }

LABEL_378:
            v167 = LODWORD(size[0]);
            goto LABEL_379;
          }

          __src[v205] = BYTE8(v216);
          if (v129 == 32)
          {
            v173 = 3;
          }

          else
          {
            v173 = 2;
          }

          v174 = v173 * v129;
          if (v174 <= 0xF)
          {
            goto LABEL_378;
          }

          v175 = v174 >> 3;
          v176 = v175 + 14;
          v177 = vdupq_n_s64(v175 - 2);
          if (v129 == 32)
          {
            v178 = 15;
          }

          else
          {
            v178 = -1;
          }

          v179 = -(v176 & 0x3FFFFFF0);
          v180 = (v128 + 8);
          v181 = 16;
          do
          {
            v182 = vdupq_n_s64(v181 - 16);
            v183 = vmovn_s64(vcgeq_u64(v177, vorrq_s8(v182, xmmword_100004310)));
            if (vuzp1_s8(vuzp1_s16(v183, *v177.i8), *v177.i8).u8[0])
            {
              *(v180 - 7) = -1;
            }

            if (vuzp1_s8(vuzp1_s16(v183, *&v177), *&v177).i8[1])
            {
              *(v180 - 6) = -1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v177, vmovn_s64(vcgeq_u64(v177, vorrq_s8(v182, xmmword_100004300)))), *&v177).i8[2])
            {
              *(v180 - 5) = v178;
              *(v180 - 4) = -1;
            }

            v184 = vmovn_s64(vcgeq_u64(v177, vorrq_s8(v182, xmmword_1000042F0)));
            if (vuzp1_s8(*&v177, vuzp1_s16(v184, *&v177)).i32[1])
            {
              *(v180 - 3) = -1;
            }

            if (vuzp1_s8(*&v177, vuzp1_s16(v184, *&v177)).i8[5])
            {
              *(v180 - 2) = -1;
            }

            if (vuzp1_s8(*&v177, vuzp1_s16(*&v177, vmovn_s64(vcgeq_u64(v177, vorrq_s8(v182, xmmword_1000042E0))))).i8[6])
            {
              *(v180 - 1) = v178;
              *v180 = -1;
            }

            v185 = vmovn_s64(vcgeq_u64(v177, vorrq_s8(v182, xmmword_1000042D0)));
            if (vuzp1_s8(vuzp1_s16(v185, *v177.i8), *v177.i8).u8[0])
            {
              v180[1] = -1;
            }

            if (vuzp1_s8(vuzp1_s16(v185, *&v177), *&v177).i8[1])
            {
              v180[2] = -1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v177, vmovn_s64(vcgeq_u64(v177, vorrq_s8(v182, xmmword_1000042C0)))), *&v177).i8[2])
            {
              v180[3] = v178;
              v180[4] = -1;
            }

            v186 = vmovn_s64(vcgeq_u64(v177, vorrq_s8(v182, xmmword_1000042B0)));
            if (vuzp1_s8(*&v177, vuzp1_s16(v186, *&v177)).i32[1])
            {
              v180[5] = -1;
            }

            if (vuzp1_s8(*&v177, vuzp1_s16(v186, *&v177)).i8[5])
            {
              v180[6] = -1;
            }

            if (vuzp1_s8(*&v177, vuzp1_s16(*&v177, vmovn_s64(vcgeq_u64(v177, vorrq_s8(v182, xmmword_1000042A0))))).i8[6])
            {
              v180[7] = v178;
              v180[8] = -1;
            }

            v181 += 16;
            v180 += 16;
          }

          while (v179 + v181 != 16);
        }

        else
        {
          *(v128 + 11) = v143;
          v145 = size[1];
          *(v128 + 13) = BYTE4(size[0]);
          *(v128 + 14) = v145;
          v146 = v216;
          *(v128 + 16) = BYTE4(size[1]);
          *(v128 + 17) = v146;
          *(v128 + 19) = WORD2(v216);
          *(v128 + 21) = BYTE8(v216);
          *(v128 + 22) = WORD6(v216);
          *(v128 + 24) = v217;
          *(v128 + 26) = WORD2(v217);
          *(v128 + 28) = *(&v217 + 1);
          if (v129 == 32)
          {
            v147 = WORD1(v218);
            *(v128 + 36) = v218;
            *(v128 + 38) = v147;
            *(v128 + 40) = 0;
            *(v128 + 44) = DWORD1(v218);
            *(v128 + 48) = WORD4(v218);
            *(v128 + 50) = WORD6(v218);
            v148 = 64;
          }

          else
          {
            v148 = 36;
          }

          v202 = v148;
          v149 = v128 + v148;
          *v149 = v219;
          *(v149 + 2) = 41;
          if (*(a1 + 104))
          {
            v150 = *(a1 + 36);
          }

          else
          {
            v150 = (v199[2].i32[1] + (v199->i32[1] | (v199[1].i32[0] << 8)) + 1900) | ((((v220.tv_usec / 10) | (v199->i32[0] << 8)) + (((v199[2].i32[0] << 8) + 256) | v199[1].i32[1])) << 16);
          }

          *(v149 + 3) = v150;
          if (*(a1 + 8))
          {
            v153 = *(a1 + 8);
          }

          else
          {
            v153 = "NO NAME";
          }

          sub_1000029A4(v149 + 7, v153);
          v154 = __str;
          snprintf(__str, 0x400uLL, "FAT%u", v129);
          for (i = 0; i != 8; ++i)
          {
            v156 = *v154;
            if (*v154)
            {
              ++v154;
            }

            if (v156)
            {
              v157 = v156;
            }

            else
            {
              v157 = 32;
            }

            *(v149 + 18 + i) = v157;
          }

          v158 = *a1;
          if (!*a1)
          {
            __src[v205] = -21;
            *(v128 + 1) = v202 | 0x18;
            *(v128 + 2) = -112;
            v159 = *(a1 + 16);
            if (!v159)
            {
              v159 = "BSD  4.4";
            }

            do
            {
              v160 = *v159;
              if (*v159)
              {
                ++v159;
              }

              if (v160)
              {
                v161 = v160;
              }

              else
              {
                v161 = 32;
              }

              *(v128 + 3 + v158++) = v161;
            }

            while (v158 != 8);
            v162 = v128 + v202;
            v163 = xmmword_10000C410;
            *(v162 + 42) = unk_10000C420;
            *(v162 + 26) = v163;
            v164 = xmmword_10000C430;
            v165 = unk_10000C440;
            v166 = xmmword_10000C450;
            *(v162 + 106) = dword_10000C460;
            *(v162 + 90) = v166;
            *(v162 + 74) = v165;
            *(v162 + 58) = v164;
            *(v128 + 510) = -21931;
          }
        }

        v167 = LODWORD(size[0]);
        if (!v210)
        {
          memcpy(__dst, __src, LODWORD(size[0]));
          __memset_chk();
        }

LABEL_379:
        v205 += v167;
        if (v205 >= 0x20000)
        {
          v172 = (a3[5])(a3[3], __src, 0x20000, v208);
          if (v172 != 0x20000)
          {
            if (v172 != -1)
            {
              v211 = xmmword_10000C490;
              v212 = qword_10000C4A0;
              v196 = v12;
              v193 = "%s: can't write sector %u";
              goto LABEL_431;
            }

            goto LABEL_430;
          }

          v205 = 0;
          v208 += 0x20000;
        }

        ++v221;
        v128 = &__src[v205];
        if (++v210 == v200)
        {
          if (!v205)
          {
            break;
          }

          v187 = (a3[5])(a3[3], __src, v205, v208);
          if (v187 != -1 && v187 == v205)
          {
            break;
          }

LABEL_430:
          v191 = __error();
          v192 = strerror(*v191);
          v211 = xmmword_10000C490;
          v212 = qword_10000C4A0;
          v196 = v192;
          v193 = "%s: %s";
          goto LABEL_431;
        }
      }
    }

    ++v221;
    v188 = (a3[5])(a3[3], __dst, LODWORD(size[0]), 0);
    if (v188 == -1)
    {
      v189 = __error();
      v190 = strerror(*v189);
      v211 = xmmword_10000C490;
      v212 = qword_10000C4A0;
      v196 = v190;
      v193 = "%s: write: %s";
    }

    else
    {
      if (v188 == LODWORD(size[0]))
      {
        v34 = 0;
        ++v221;
        if (!v11)
        {
          return v34;
        }

        v35 = &off_1000081C0;
        goto LABEL_42;
      }

      v211 = xmmword_10000C490;
      v212 = qword_10000C4A0;
      v196 = v12;
      v193 = "%s: can't write boot sector";
    }

LABEL_431:
    sub_100002D00(&v211, 3, v193, v138, v139, v140, v141, v142, v196);
  }

  else
  {
    v121 = __error();
    v122 = strerror(*v121);
    *__str = xmmword_10000C490;
    *&v223 = qword_10000C4A0;
    sub_100002D00(__str, 3, v122, v123, v124, v125, v126, v127, 0);
  }

LABEL_40:
  v34 = 1;
  if (v11)
  {
LABEL_41:
    v35 = &off_1000081A8;
LABEL_42:
    (a3[2])(v35[v33], *a3, v19);
  }

  return v34;
}

__n128 sub_1000022A8(char *__s1, uint64_t a2)
{
  v4 = 10;
  for (i = &xmmword_10000C0F8; strcmp(__s1, *(i - 1)); i += 5)
  {
    if (!--v4)
    {
      v14 = xmmword_10000C490;
      v15 = qword_10000C4A0;
      sub_100002D00(&v14, 3, "%s: unknown standard format", v6, v7, v8, v9, v10, __s1);
      return result;
    }
  }

  *a2 = *i;
  result = i[1];
  v12 = i[2];
  v13 = i[3];
  *(a2 + 64) = *(i + 16);
  *(a2 + 32) = v12;
  *(a2 + 48) = v13;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_10000235C(uint64_t a1, int a2, unsigned int *a3)
{
  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v7 == -1)
  {
    v9 = __error();
    v10 = strerror(*v9);
    v11 = *(a1 + 8);
    v46 = xmmword_10000C490;
    v47 = qword_10000C4A0;
    sub_100002D00(&v46, 6, "%s: %s: Partition offset wasn't initialized, setting to default value (%llu)", v12, v13, v14, v15, v16, v10);
    v7 = 0;
  }

  if (!a3[11])
  {
    if (v6 != -1)
    {
      goto LABEL_10;
    }

LABEL_9:
    v18 = __error();
    v19 = strerror(*v18);
    v20 = *(a1 + 8);
    v46 = xmmword_10000C490;
    v47 = qword_10000C4A0;
    v6 = 0x2000;
    sub_100002D00(&v46, 6, "%s: %s: Block count wasn't initialized, setting to default value (%llu)", v21, v22, v23, v24, v25, v19);
    goto LABEL_10;
  }

  if (a3[9])
  {
    v17 = 0;
  }

  else
  {
    v17 = v6 == -1;
  }

  if (v17)
  {
    goto LABEL_9;
  }

LABEL_10:
  v26 = *a3;
  if (!*a3)
  {
    if (v8 != -1)
    {
      v26 = 0;
      LODWORD(v27) = a3[11];
      goto LABEL_22;
    }

LABEL_18:
    v28 = __error();
    v29 = strerror(*v28);
    v30 = *(a1 + 8);
    v46 = xmmword_10000C490;
    v47 = qword_10000C4A0;
    v8 = 512;
    sub_100002D00(&v46, 6, "%s: %s: Block size wasn't initialized, setting to default value (%u)", v31, v32, v33, v34, v35, v29);
    v26 = *a3;
    LODWORD(v27) = a3[11];
    if (!*a3)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  LODWORD(v27) = a3[11];
  if (!v27 && v8 == -1)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (v27)
  {
    goto LABEL_24;
  }

  v27 = v6 * v8 / v26;
  if (HIDWORD(v27))
  {
    goto LABEL_33;
  }

  a3[11] = v27;
LABEL_22:
  if (v27)
  {
    if (v26)
    {
      goto LABEL_24;
    }

LABEL_37:
    *a3 = v8;
    v26 = v8;
    if (a2)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (HIDWORD(v6))
  {
LABEL_33:
    v38 = __error();
    v39 = strerror(*v38);
    v40 = *(a1 + 8);
    v46 = xmmword_10000C490;
    v47 = qword_10000C4A0;
    sub_100002D00(&v46, 3, "%s: %s: Drive is too large, the number of blocks is larger than any FAT FS can support", v41, v42, v43, v44, v45, v39);
    return 1;
  }

  a3[11] = v6;
  if (!v26)
  {
    goto LABEL_37;
  }

LABEL_24:
  if (!a2)
  {
LABEL_25:
    a3[10] = v7 / v26;
  }

LABEL_26:
  a3[16] = (v7 != 0) << 7;
  if (!a3[8])
  {
    a3[8] = 32;
  }

  if (a3[9])
  {
    return 0;
  }

  result = 0;
  if (v6 >> 18)
  {
    if (v6 >> 19)
    {
      if (v6 >> 20)
      {
        if (v6 >> 21)
        {
          v37 = 255;
        }

        else
        {
          v37 = 128;
        }
      }

      else
      {
        v37 = 54;
      }
    }

    else
    {
      v37 = 32;
    }
  }

  else
  {
    v37 = 16;
  }

  a3[9] = v37;
  return result;
}

uint64_t sub_100002600(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  if (!*a2)
  {
    v17 = v3;
    v18 = v4;
    if (!a3[1] && *a3 == 512)
    {
      v7 = result;
      result = sub_100002A38(result);
      if (result > 1)
      {
        if (result != 2)
        {
          v15 = xmmword_10000C490;
          v16 = qword_10000C4A0;
          return sub_100002D00(&v15, 6, "%s: newfs_exfat should be used for SDXC media", v8, v9, v10, v11, v12, v7);
        }

        *a2 = 32;
      }

      else
      {
        if (!result)
        {
          return result;
        }

        v13 = a3[11];
        if (!(v13 >> 14))
        {
          *a2 = 12;
          v14 = 16;
LABEL_16:
          a3[1] = v14;
          return result;
        }

        if (!(v13 >> 17))
        {
          *a2 = 12;
LABEL_15:
          v14 = 32;
          goto LABEL_16;
        }

        *a2 = 16;
        if (!(v13 >> 21))
        {
          goto LABEL_15;
        }
      }

      v14 = 64;
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_100002700(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v67 = xmmword_10000C490;
  v68 = qword_10000C4A0;
  sub_100002D00(&v67, 6, "bps=%u spc=%u res=%u nft=%u", a4, a5, a6, a7, a8, v9);
  v18 = a1[4];
  if (v18)
  {
    v67 = xmmword_10000C490;
    v68 = qword_10000C4A0;
    sub_100002D00(&v67, 6, " rde=%u", v13, v14, v15, v16, v17, v18);
  }

  v19 = a1[5];
  if (v19)
  {
    v67 = xmmword_10000C490;
    v68 = qword_10000C4A0;
    sub_100002D00(&v67, 6, " sec=%u", v13, v14, v15, v16, v17, v19);
  }

  v20 = a1[6];
  v67 = xmmword_10000C490;
  v68 = qword_10000C4A0;
  sub_100002D00(&v67, 6, " mid=%#x", v13, v14, v15, v16, v17, v20);
  v26 = a1[7];
  if (v26)
  {
    v67 = xmmword_10000C490;
    v68 = qword_10000C4A0;
    sub_100002D00(&v67, 6, " spf=%u", v21, v22, v23, v24, v25, v26);
  }

  v27 = a1[8];
  v28 = a1[9];
  v29 = a1[10];
  v30 = a1[16];
  v67 = xmmword_10000C490;
  v68 = qword_10000C4A0;
  sub_100002D00(&v67, 6, " spt=%u hds=%u hid=%u drv=0x%02X", v21, v22, v23, v24, v25, v27);
  v36 = a1[11];
  if (v36)
  {
    v67 = xmmword_10000C490;
    v68 = qword_10000C4A0;
    sub_100002D00(&v67, 6, " bsec=%u", v31, v32, v33, v34, v35, v36);
  }

  if (!a1[7])
  {
    v37 = a1[12];
    v38 = a1[13];
    v67 = xmmword_10000C490;
    v68 = qword_10000C4A0;
    sub_100002D00(&v67, 6, " bspf=%u rdcl=%u", v31, v32, v33, v34, v35, v37);
    v67 = xmmword_10000C490;
    v68 = qword_10000C4A0;
    sub_100002D00(&v67, 6, " infs=", v39, v40, v41, v42, v43, v65);
    v49 = a1[14];
    if (v49 == 0xFFFF)
    {
      v50 = "%#x";
    }

    else
    {
      v50 = "%u";
    }

    v67 = xmmword_10000C490;
    v68 = qword_10000C4A0;
    sub_100002D00(&v67, 6, v50, v44, v45, v46, v47, v48, v49);
    v67 = xmmword_10000C490;
    v68 = qword_10000C4A0;
    sub_100002D00(&v67, 6, " bkbs=", v51, v52, v53, v54, v55, v66);
    v61 = a1[15];
    if (v61 == 0xFFFF)
    {
      v62 = "%#x";
    }

    else
    {
      v62 = "%u";
    }

    v67 = xmmword_10000C490;
    v68 = qword_10000C4A0;
    sub_100002D00(&v67, 6, v62, v56, v57, v58, v59, v60, v61);
  }

  v67 = xmmword_10000C490;
  v68 = qword_10000C4A0;
  return sub_100002D00(&v67, 6, "\n", v31, v32, v33, v34, v35, v64);
}

uint64_t sub_1000029A4(uint64_t a1, _BYTE *a2)
{
  v4 = 0;
  do
  {
    v5 = *a2;
    if (*a2)
    {
      ++a2;
      result = __toupper(v5);
    }

    else
    {
      result = 32;
    }

    if (result == -27 && v4 == 0)
    {
      v8 = 5;
    }

    else
    {
      v8 = result;
    }

    *(a1 + v4++) = v8;
  }

  while (v4 != 11);
  return result;
}

char *sub_100002A0C(char *result, _BYTE *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2;
    if (*a2)
    {
      ++a2;
    }

    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = 32;
    }

    *result++ = v4;
  }

  return result;
}

uint64_t sub_100002A38(uint64_t a1)
{
  if (!strncmp(a1, "/dev/", 5uLL))
  {
    v4 = *(a1 + 5);
    v3 = a1 + 5;
    v5 = (v4 == 114 ? v3 + 1 : v3);
    v6 = IOBSDNameMatching(kIOMainPortDefault, 0, v5);
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v6);
    if (MatchingService)
    {
      v8 = MatchingService;
      v9 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"Card Characteristics", kCFAllocatorDefault, 3u);
      if (!v9)
      {
        v2 = 0;
        goto LABEL_16;
      }

      v10 = v9;
      v11 = CFGetTypeID(v9);
      if (v11 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(v10, @"Card Type");
        v2 = Value;
        if (!Value)
        {
LABEL_14:
          CFRelease(v10);
LABEL_16:
          IOObjectRelease(v8);
          return v2;
        }

        v13 = CFGetTypeID(Value);
        if (v13 == CFStringGetTypeID())
        {
          if (CFEqual(v2, @"SDSC"))
          {
            v2 = 1;
          }

          else if (CFEqual(v2, @"SDHC"))
          {
            v2 = 2;
          }

          else if (CFEqual(v2, @"SDXC"))
          {
            v2 = 3;
          }

          else
          {
            v2 = 0;
          }

          goto LABEL_14;
        }
      }

      v2 = 0;
      goto LABEL_14;
    }
  }

  return 0;
}

uint64_t sub_100002B9C(const char *a1, unsigned int a2, unsigned int a3)
{
  __endptr = 0;
  *__error() = 0;
  v6 = strtoul(a1, &__endptr, 0);
  if (*__error() || !*a1 || (!*__endptr ? (v13 = v6 >= a2) : (v13 = 0), v13 ? (v14 = v6 > a3) : (v14 = 1), v14))
  {
    v15 = xmmword_10000C490;
    v16 = qword_10000C4A0;
    sub_100002D00(&v15, 3, "%s: bad %s", v7, v8, v9, v10, v11, a1);
    return 0xFFFFFFFFLL;
  }

  return v6;
}

BOOL sub_100002C70(uint64_t a1)
{
  v2 = 0;
  do
  {
    v3 = *(a1 + v2);
    if (v2)
    {
      v4 = 32;
    }

    else
    {
      v4 = 33;
    }

    if (v4 > v3)
    {
      break;
    }

    v5 = memchr("*+,./:;<=>?[\\]|", *(a1 + v2), 0x11uLL) || v2 == 11;
    ++v2;
  }

  while (!v5);
  return v3 == 0;
}

uint64_t sub_100002CEC(uint64_t result, uint64_t a2, uint64_t a3)
{
  *&xmmword_10000C490 = result;
  *(&xmmword_10000C490 + 1) = a2;
  qword_10000C4A0 = a3;
  return result;
}

uint64_t sub_100002D00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*result)
  {
    return (*result)(*(result + 16), a2, a3, &a9);
  }

  return result;
}

uint64_t start(int a1, char *const *a2)
{
  sub_100002CEC(sub_100003B7C, sub_100003BC4, 0);
  v164 = 0;
  v165 = 0;
  v4 = 0;
  v162 = 0;
  v163 = 0;
  v155 = 0;
  v156 = 0;
  v157 = 0;
  v158 = 0;
  v5 = 0;
  v6 = 0;
  v160 = 0;
  v161 = 0;
  v7 = 0;
  v159 = 0;
  v8 = 0;
  v9 = 0;
  memset(&v213, 0, sizeof(v213));
  while (1)
  {
    v10 = v9;
    v11 = getopt(a1, a2, aNbFIOSPABCEFHI);
    v9 = 1;
    switch(v11)
    {
      case 'B':
        v165 = optarg;
        v9 = v10;
        continue;
      case 'C':
      case 'D':
      case 'E':
      case 'G':
      case 'H':
      case 'J':
      case 'K':
      case 'L':
      case 'M':
      case 'Q':
      case 'R':
      case 'T':
      case 'U':
      case 'V':
      case 'W':
      case 'X':
      case 'Y':
      case 'Z':
      case '[':
      case '\\':
      case ']':
      case '^':
      case '_':
      case 'd':
      case 'g':
      case 'j':
      case 'l':
      case 'p':
      case 'q':
      case 't':
        goto LABEL_97;
      case 'F':
        v77 = *optarg;
        if (v77 == 51)
        {
          if (optarg[1] != 50)
          {
            goto LABEL_96;
          }
        }

        else
        {
          if (v77 != 49)
          {
            goto LABEL_96;
          }

          if (optarg[1] == 50 && !optarg[2])
          {
            goto LABEL_48;
          }

          if (optarg[1] != 54)
          {
            goto LABEL_96;
          }
        }

        if (optarg[2])
        {
LABEL_96:
          errx(1, "%s: bad FAT type");
        }

LABEL_48:
        LODWORD(v155) = atoi(optarg);
        v9 = v10;
        break;
      case 'I':
        HIDWORD(v156) = 1;
        LODWORD(v157) = sub_100002B9C(optarg, 0, 0xFFFFFFFF);
        v9 = v10;
        if (v157 != -1)
        {
          continue;
        }

        *__str = xmmword_10000C490;
        v216 = qword_10000C4A0;
        sub_100002D00(__str, 3, "%s: Invalid volumeID", v84, v85, v86, v87, v88, optarg);
        return 1;
      case 'N':
        continue;
      case 'O':
        v4 = optarg;
        v60 = strlen(optarg);
        v9 = v10;
        if (v60 >= 9)
        {
          errx(1, "%s: bad OEM string");
        }

        continue;
      case 'P':
        v78 = sub_100002B9C(optarg, 1u, 0xFFFFu);
        v9 = v10;
        HIDWORD(v157) = v78;
        if (v78 != -1)
        {
          continue;
        }

        *__str = xmmword_10000C490;
        v216 = qword_10000C4A0;
        sub_100002D00(__str, 3, "%s: Invalid physical bytes", v79, v80, v81, v82, v83, optarg);
        return 1;
      case 'S':
        v89 = sub_100002B9C(optarg, 1u, 0xFFFFu);
        v9 = v10;
        HIDWORD(v162) = v89;
        if (v89 != -1)
        {
          continue;
        }

        *__str = xmmword_10000C490;
        v216 = qword_10000C4A0;
        sub_100002D00(__str, 3, "%s: Invalid sector size", v90, v91, v92, v93, v94, optarg);
        return 1;
      case 'a':
        v37 = sub_100002B9C(optarg, 1u, 0xFFFFFFFF);
        v9 = v10;
        LODWORD(v162) = v37;
        if (v37 != -1)
        {
          continue;
        }

        *__str = xmmword_10000C490;
        v216 = qword_10000C4A0;
        sub_100002D00(__str, 3, "%s: Invalid sectors per FAT", v38, v39, v40, v41, v42, optarg);
        return 1;
      case 'b':
        v5 = sub_100002B9C(optarg, 1u, 0xFFFFFFFF);
        v6 = 0;
        v9 = v10;
        continue;
      case 'c':
        v6 = sub_100002B9C(optarg, 1u, 0xFFu);
        v5 = 0;
        v9 = v10;
        if (v6 != -1)
        {
          continue;
        }

        *__str = xmmword_10000C490;
        v216 = qword_10000C4A0;
        sub_100002D00(__str, 3, "%s: Invalid cluster size", v43, v44, v45, v46, v47, optarg);
        return 1;
      case 'e':
        v19 = sub_100002B9C(optarg, 1u, 0xFFFFu);
        v9 = v10;
        HIDWORD(v161) = v19;
        if (v19 != -1)
        {
          continue;
        }

        *__str = xmmword_10000C490;
        v216 = qword_10000C4A0;
        sub_100002D00(__str, 3, "%s: Invalid directory entries", v20, v21, v22, v23, v24, optarg);
        return 1;
      case 'f':
        v163 = optarg;
        v9 = v10;
        continue;
      case 'h':
        v12 = sub_100002B9C(optarg, 1u, 0xFFFFu);
        v9 = v10;
        LODWORD(v161) = v12;
        if (v12 != -1)
        {
          continue;
        }

        *__str = xmmword_10000C490;
        v216 = qword_10000C4A0;
        sub_100002D00(__str, 3, "%s: Invalid drive heads", v13, v14, v15, v16, v17, optarg);
        return 1;
      case 'i':
        v31 = sub_100002B9C(optarg, 1u, 0xFFFFu);
        v9 = v10;
        HIDWORD(v160) = v31;
        if (v31 != -1)
        {
          continue;
        }

        *__str = xmmword_10000C490;
        v216 = qword_10000C4A0;
        sub_100002D00(__str, 3, "%s: Invalid info sector", v32, v33, v34, v35, v36, optarg);
        return 1;
      case 'k':
        v48 = sub_100002B9C(optarg, 1u, 0xFFFFu);
        v9 = v10;
        LODWORD(v160) = v48;
        if (v48 != -1)
        {
          continue;
        }

        *__str = xmmword_10000C490;
        v216 = qword_10000C4A0;
        sub_100002D00(__str, 3, "%s: Invalid backup sector", v49, v50, v51, v52, v53, optarg);
        return 1;
      case 'm':
        v7 = sub_100002B9C(optarg, 0, 0xFFu);
        LODWORD(v156) = 1;
        v9 = v10;
        if (v7 != -1)
        {
          continue;
        }

        *__str = xmmword_10000C490;
        v216 = qword_10000C4A0;
        sub_100002D00(__str, 3, "%s: Invalid media descriptor", v61, v62, v63, v64, v65, optarg);
        return 1;
      case 'n':
        v71 = sub_100002B9C(optarg, 1u, 0xFFu);
        v9 = v10;
        HIDWORD(v159) = v71;
        if (v71 != -1)
        {
          continue;
        }

        *__str = xmmword_10000C490;
        v216 = qword_10000C4A0;
        sub_100002D00(__str, 3, "%s: Invalid number of FATs", v72, v73, v74, v75, v76, optarg);
        return 1;
      case 'o':
        v8 = sub_100002B9C(optarg, 0, 0xFFFFFFFF);
        HIDWORD(v155) = 1;
        v9 = v10;
        if (v8 != -1)
        {
          continue;
        }

        *__str = xmmword_10000C490;
        v216 = qword_10000C4A0;
        sub_100002D00(__str, 3, "%s: Invalid hidden sectors", v66, v67, v68, v69, v70, optarg);
        return 1;
      case 'r':
        v54 = sub_100002B9C(optarg, 1u, 0xFFFFu);
        v9 = v10;
        LODWORD(v159) = v54;
        if (v54 != -1)
        {
          continue;
        }

        *__str = xmmword_10000C490;
        v216 = qword_10000C4A0;
        sub_100002D00(__str, 3, "%s: Invalid reserved sectors", v55, v56, v57, v58, v59, optarg);
        return 1;
      case 's':
        v95 = sub_100002B9C(optarg, 1u, 0xFFFFFFFF);
        v9 = v10;
        HIDWORD(v158) = v95;
        if (v95 != -1)
        {
          continue;
        }

        *__str = xmmword_10000C490;
        v216 = qword_10000C4A0;
        sub_100002D00(__str, 3, "%s: Invalid file system size (in sectors)", v96, v97, v98, v99, v100, optarg);
        return 1;
      case 'u':
        v25 = sub_100002B9C(optarg, 1u, 0xFFFFu);
        v9 = v10;
        LODWORD(v158) = v25;
        if (v25 != -1)
        {
          continue;
        }

        *__str = xmmword_10000C490;
        v216 = qword_10000C4A0;
        sub_100002D00(__str, 3, "%s: Invalid sectors per track", v26, v27, v28, v29, v30, optarg);
        return 1;
      case 'v':
        v18 = sub_100002C70(optarg);
        v164 = optarg;
        v9 = v10;
        if (!v18)
        {
          errx(1, "%s: bad volume name");
        }

        continue;
      default:
        if (v11 != -1 || a1 == optind || (a1 - optind - 3) < 0xFFFFFFFD)
        {
LABEL_97:
          sub_100003CE0();
        }

        v101 = a2[optind];
        v154 = v4;
        v102 = v165;
        if (!strchr(v101, 47))
        {
          snprintf(__str, 0x400uLL, "%sr%s", "/dev/", v101);
          if (stat(__str, &v213))
          {
            snprintf(__str, 0x400uLL, "%s%s", "/dev/", v101);
          }

          v101 = strdup(__str);
          if (!v101)
          {
            sub_100003F50();
          }
        }

        v103 = open(v101, 2 * (v10 == 0));
        v212 = v103;
        if (v103 == -1 || fstat(v103, &v213))
        {
          err(1, "%s", v101);
        }

        if (v165)
        {
          v104 = v165;
          if (!strchr(v165, 47))
          {
            snprintf(__str, 0x400uLL, "/boot/%s", v165);
            v104 = strdup(__str);
            if (!v104)
            {
              sub_100003F50();
            }
          }

          v105 = open(v104, 0);
          if (v105 == -1 || (v106 = v105, fstat(v105, &v213)))
          {
            err(1, "%s", v104);
          }
        }

        else
        {
          v104 = 0;
          v106 = -1;
        }

        v153 = v106;
        if (!v10)
        {
          v151 = v104;
          st_mode = v213.st_mode;
          v166[0] = 0;
          v109 = getmntinfo(v166, 2);
          if (!v109)
          {
            sub_100003F68();
          }

          v110 = v109;
          v111 = strncmp(v101, "/dev/", 5uLL);
          if (v111)
          {
            v112 = 0;
          }

          else
          {
            v112 = 5;
          }

          v113 = &v101[v112];
          v114 = st_mode & 0xF000;
          v115 = 1;
          v152 = v101;
          if (v114 == 0x2000 && !v111)
          {
            v115 = *v113 != 114;
          }

          f_mntfromname = v166[0]->f_mntfromname;
          do
          {
            v117 = strncmp(f_mntfromname, "/dev/", 5uLL);
            if (v117)
            {
              v118 = f_mntfromname;
            }

            else
            {
              v118 = f_mntfromname + 5;
            }

            if (v117)
            {
              v119 = 1;
            }

            else
            {
              v119 = v115;
            }

            if ((v119 & 1) == 0 && !strcmp(v113 + 1, f_mntfromname + 5) || !strcmp(v113, v118))
            {
              errx(1, "%s is mounted on %s");
            }

            v166[0] = (f_mntfromname + 1056);
            f_mntfromname += 2168;
            --v110;
          }

          while (v110);
          v102 = v165;
          v104 = v151;
          v101 = v152;
        }

        memset(v214, 0, 148);
        v211 = -1;
        v210 = -1;
        v209 = -1;
        v208 = -1;
        v120 = v212;
        if (ioctl(v212, 0x40086449uLL, &v211) == -1)
        {
          v121 = __error();
          v122 = strerror(*v121);
          *v166 = xmmword_10000C490;
          v167 = qword_10000C4A0;
          v148 = v101;
          sub_100002D00(v166, 3, "%s: %s: Cannot get partition offset", v123, v124, v125, v126, v127, v122);
        }

        if (ioctl(v120, 0x40086419uLL, &v210, v148) == -1)
        {
          v128 = __error();
          v129 = strerror(*v128);
          *v166 = xmmword_10000C490;
          v167 = qword_10000C4A0;
          v149 = v101;
          sub_100002D00(v166, 3, "%s: %s: Cannot get block count", v130, v131, v132, v133, v134, v129);
        }

        if (ioctl(v120, 0x40046418uLL, &v209, v149) == -1)
        {
          v135 = __error();
          v136 = strerror(*v135);
          *v166 = xmmword_10000C490;
          v167 = qword_10000C4A0;
          v150 = v101;
          sub_100002D00(v166, 3, "%s: %s: Cannot get block size", v137, v138, v139, v140, v141, v136);
        }

        if (ioctl(v120, 0x4004644DuLL, &v208, v150) == -1)
        {
          *v166 = xmmword_10000C490;
          v167 = qword_10000C4A0;
          sub_100002D00(v166, 6, "ioctl(DKIOCGETPHYSICALBLOCKSIZE) not supported\n", v142, v143, v144, v145, v146, v147);
        }

        *(v214 + 4) = v213;
        v207[3] = &v212;
        memset(v207, 0, 24);
        v207[4] = sub_100003F40;
        v207[5] = sub_100003F48;
        v184[0] = v102;
        v184[1] = v164;
        v184[2] = v154;
        v184[3] = v163;
        v185 = v155;
        v186 = v157;
        v187 = HIDWORD(v162);
        v188 = v162;
        v189 = v5;
        v190 = v6;
        v191 = HIDWORD(v161);
        v192 = v161;
        v193 = HIDWORD(v160);
        v194 = v160;
        v195 = v7;
        v196 = HIDWORD(v159);
        v197 = v8;
        v198 = v159;
        v199 = HIDWORD(v158);
        v200 = v158;
        v201 = HIDWORD(v157);
        v202 = v10;
        v203 = HIDWORD(v156);
        v204 = v156;
        v205 = HIDWORD(v155);
        v166[0] = v120;
        v166[1] = v101;
        v167 = v208;
        v168 = v211;
        v169 = v210;
        v170 = v209;
        v172 = v104;
        v173 = v153;
        v183 = HIDWORD(v213.st_qspare[1]);
        v180 = v214[6];
        v181 = v214[7];
        v182 = v214[8];
        v179 = v214[5];
        v176 = *(&v213.st_rdev + 1);
        v177 = v214[3];
        v178 = v214[4];
        v174 = v214[0];
        v206 = 0;
        v171 = 0;
        v175 = *(&v213.st_ino + 4);
        return sub_100000768(v184, v166, v207, v142, v143, v144, v145, v146);
    }
  }
}

void sub_100003B7C(int a1, int a2, char *a3, va_list a4)
{
  if (a2 == 6)
  {

    vprintf(a3, a4);
  }

  else if (a2 == 3)
  {
    verrx(1, a3, a4);
  }
}

uint64_t sub_100003BC4(uint64_t a1, unsigned int *a2)
{
  v32 = 0;
  v3 = *a2;
  v4 = *(a2 + 1);
  v5 = wipefs_alloc();
  if (v5)
  {
    v6 = v5;
    v7 = *a2;
    strerror(v5);
    v30 = xmmword_10000C490;
    v31 = qword_10000C4A0;
    sub_100002D00(&v30, 3, "wipefs_alloc(): fd(%d) %s", v8, v9, v10, v11, v12, v7);
  }

  else
  {
    v13 = a2[4];
    v14 = a2[5];
    v15 = wipefs_except_blocks();
    if (v15)
    {
      v6 = v15;
      v16 = *a2;
      strerror(v15);
      v30 = xmmword_10000C490;
      v31 = qword_10000C4A0;
      sub_100002D00(&v30, 3, "wipefs_except_blocks(): fd(%d) %s", v17, v18, v19, v20, v21, v16);
    }

    else
    {
      v22 = wipefs_wipe();
      v6 = v22;
      if (v22)
      {
        v23 = *a2;
        strerror(v22);
        v30 = xmmword_10000C490;
        v31 = qword_10000C4A0;
        sub_100002D00(&v30, 3, "wipefs_wipe(): fd(%d) %s", v24, v25, v26, v27, v28, v23);
      }
    }

    wipefs_free();
  }

  return v6;
}

void sub_100003CE0()
{
  fwrite("usage: newfs_msdos [ -options ] special [disktype]\n", 0x33uLL, 1uLL, __stderrp);
  fwrite("where the options are:\n", 0x17uLL, 1uLL, __stderrp);
  fwrite("\t-N don't create file system: just print out parameters\n", 0x38uLL, 1uLL, __stderrp);
  fwrite("\t-B get bootstrap from file\n", 0x1CuLL, 1uLL, __stderrp);
  fwrite("\t-F FAT type (12, 16, or 32)\n", 0x1DuLL, 1uLL, __stderrp);
  fwrite("\t-I volume ID\n", 0xEuLL, 1uLL, __stderrp);
  fwrite("\t-O OEM string\n", 0xFuLL, 1uLL, __stderrp);
  fwrite("\t-S bytes/sector\n", 0x11uLL, 1uLL, __stderrp);
  fwrite("\t-P physical bytes/sector\n", 0x1AuLL, 1uLL, __stderrp);
  fwrite("\t-a sectors/FAT\n", 0x10uLL, 1uLL, __stderrp);
  fwrite("\t-b block size\n", 0xFuLL, 1uLL, __stderrp);
  fwrite("\t-c sectors/cluster\n", 0x14uLL, 1uLL, __stderrp);
  fwrite("\t-e root directory entries\n", 0x1BuLL, 1uLL, __stderrp);
  fwrite("\t-f standard format\n", 0x14uLL, 1uLL, __stderrp);
  fwrite("\t-h drive heads\n", 0x10uLL, 1uLL, __stderrp);
  fwrite("\t-i file system info sector\n", 0x1CuLL, 1uLL, __stderrp);
  fwrite("\t-k backup boot sector\n", 0x17uLL, 1uLL, __stderrp);
  fwrite("\t-m media descriptor\n", 0x15uLL, 1uLL, __stderrp);
  fwrite("\t-n number of FATs\n", 0x13uLL, 1uLL, __stderrp);
  fwrite("\t-o hidden sectors\n", 0x13uLL, 1uLL, __stderrp);
  fwrite("\t-r reserved sectors\n", 0x15uLL, 1uLL, __stderrp);
  fwrite("\t-s file system size (in sectors)\n", 0x22uLL, 1uLL, __stderrp);
  fwrite("\t-u sectors/track\n", 0x12uLL, 1uLL, __stderrp);
  fwrite("\t-v filesystem/volume name\n", 0x1BuLL, 1uLL, __stderrp);
  exit(1);
}