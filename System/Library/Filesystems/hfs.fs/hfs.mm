unint64_t sub_1000006C8(const char *a1)
{
  __endptr = 0;
  v1 = strtoull(a1, &__endptr, 0);
  if (!*__endptr)
  {
    return v1;
  }

  v2 = __tolower(*__endptr);
  result = 0;
  if (v2 <= 108)
  {
    if (v2 == 98)
    {
      return v1 << 9;
    }

    if (v2 != 103)
    {
      if (v2 != 107)
      {
        return result;
      }

      return v1 << 10;
    }

    goto LABEL_15;
  }

  switch(v2)
  {
    case 'm':
LABEL_16:
      v1 <<= 10;
      return v1 << 10;
    case 'p':
      v1 <<= 10;
      goto LABEL_14;
    case 't':
LABEL_14:
      v1 <<= 10;
LABEL_15:
      v1 <<= 10;
      goto LABEL_16;
  }

  return result;
}

void start(int a1, char **a2)
{
  v4 = strrchr(*a2, 47);
  qword_10000CC08 = v4;
  if (v4)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = *a2;
  }

  v168 = 0;
  qword_10000CC08 = v5;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v6 = getopt(a1, a2, "BG:J:D:M:N:PU:hsb:c:i:I:n:v:");
          if (v6 <= 79)
          {
            break;
          }

          if (v6 > 104)
          {
            if (v6 > 114)
            {
              if (v6 == 115)
              {
                dword_10000C40C = 1;
              }

              else
              {
                if (v6 != 118)
                {
                  goto LABEL_248;
                }

                v41 = optarg;
                off_10000C000 = strdup(optarg);
                if (!off_10000C000)
                {
                  sub_100001CD4("Could not copy volume name %s", v42, v43, v44, v45, v46, v47, v48, v41);
                }
              }
            }

            else if (v6 == 105)
            {
              v55 = optarg;
              dword_10000C008 = atoi(optarg);
              if (dword_10000C008 <= 0xF)
              {
                sub_100001CD4("%s: starting catalog node id too small (must be > 15)", v56, v57, v58, v59, v60, v61, v62, v55);
              }
            }

            else
            {
              if (v6 != 110)
              {
                goto LABEL_248;
              }

              __stringp[0] = optarg;
              v14 = strsep(__stringp, ",");
              if (v14)
              {
                v15 = v14;
                do
                {
                  v16 = *v15;
                  if (!*v15)
                  {
                    break;
                  }

                  v17 = strchr(v15, 61);
                  if (!v17)
                  {
                    goto LABEL_248;
                  }

                  v18 = atoi(v17 + 1);
                  switch(v16)
                  {
                    case 'a':
                      v26.i32[0] = v18;
                      v29 = vcnt_s8(v26);
                      v29.i16[0] = vaddlv_u8(v29);
                      v30 = (v18 - 4096) > 0x7000 || v29.i32[0] >= 2u;
                      if (v30)
                      {
                        sub_100001CD4("%s: invalid atrribute b-tree node size", v19, v20, v21, v22, v23, v24, v25, v15);
                      }

                      dword_10000C020 = v18;
                      break;
                    case 'e':
                      if ((v18 - 1024) > 0x7C00 || (v26.i32[0] = v18, v28 = vcnt_s8(v26), v28.i16[0] = vaddlv_u8(v28), v28.i32[0] >= 2u))
                      {
                        sub_100001CD4("%s: invalid extents b-tree node size", v19, v20, v21, v22, v23, v24, v25, v15);
                      }

                      dword_10000C01C = v18;
                      break;
                    case 'c':
                      if ((v18 - 4096) > 0x7000 || (v26.i32[0] = v18, v27 = vcnt_s8(v26), v27.i16[0] = vaddlv_u8(v27), v27.i32[0] >= 2u))
                      {
                        sub_100001CD4("%s: invalid catalog b-tree node size", v19, v20, v21, v22, v23, v24, v25, v15);
                      }

                      dword_10000C018 = v18;
                      dword_10000C408 = 1;
                      break;
                    default:
                      goto LABEL_248;
                  }

                  v15 = strsep(__stringp, ",");
                }

                while (v15);
              }
            }
          }

          else if (v6 > 97)
          {
            if (v6 == 98)
            {
              v63 = sub_1000006C8(optarg);
              if (v63 <= 0x1FF)
              {
                sub_100001CD4("%s: bad allocation block size (too small)", v64, v65, v66, v67, v68, v69, v70, optarg);
              }

              if (v63 >= 0x80000001)
              {
                sub_100001CD4("%s: bad allocation block size (too large)", v64, v65, v66, v67, v68, v69, v70, optarg);
              }

              dword_10000C400 = v63;
            }

            else
            {
              if (v6 != 99)
              {
                goto LABEL_248;
              }

              __stringp[0] = optarg;
              while (1)
              {
                v37 = strsep(__stringp, ",");
                if (!v37)
                {
                  break;
                }

                v38 = *v37;
                if (!*v37)
                {
                  break;
                }

                v39 = strchr(v37, 61);
                if (!v39)
                {
                  goto LABEL_248;
                }

                v40 = atoi(v39 + 1);
                if (v38 > 99)
                {
                  switch(v38)
                  {
                    case 'd':
                      dword_10000C470 = v40;
                      break;
                    case 'e':
                      dword_10000C460 = v40;
                      if (!dword_10000C41C)
                      {
                        dword_10000C454 = v40;
                      }

                      break;
                    case 'r':
                      dword_10000C46C = v40;
                      break;
                    default:
                      goto LABEL_248;
                  }
                }

                else
                {
                  switch(v38)
                  {
                    case 'a':
                      dword_10000C464 = v40;
                      if (!dword_10000C414)
                      {
                        dword_10000C458 = v40;
                      }

                      dword_10000C410 = 1;
                      break;
                    case 'b':
                      dword_10000C468 = v40;
                      break;
                    case 'c':
                      dword_10000C45C = v40;
                      if (!dword_10000C418)
                      {
                        dword_10000C450 = v40;
                      }

                      break;
                    default:
                      goto LABEL_248;
                  }
                }
              }
            }
          }

          else if (v6 == 80)
          {
            dword_10000C420 = 1;
          }

          else
          {
            if (v6 != 85)
            {
              goto LABEL_248;
            }

            v7 = optarg;
            v8 = getpwnam(optarg);
            v9 = v7;
            if (v8)
            {
              pw_uid = v8->pw_uid;
            }

            else
            {
              do
              {
                v12 = *v9++;
                v11 = v12;
              }

              while ((v12 - 48) < 0xA);
              if (v11)
              {
                errx(1, "unknown user id: %s");
              }

              pw_uid = atoi(v7);
            }

            dword_10000C00C = pw_uid;
          }
        }

        if (v6 > 72)
        {
          break;
        }

        if (v6 <= 67)
        {
          if (v6 != 66)
          {
            if (v6 == -1)
            {
              if (qword_10000C448)
              {
                if (a1 == optind)
                {
                  byte_10000C800 = 0;
                  byte_10000D000 = 0;
                  goto LABEL_130;
                }
              }

              else if (a1 - optind == 1)
              {
                v71 = a2[optind];
                v72 = strrchr(v71, 47);
                if (v72)
                {
                  v73 = v72 + 1;
                }

                else
                {
                  v73 = v71;
                }

                if (*v73 == 114)
                {
                  v74 = v73 + 1;
                }

                else
                {
                  v74 = v73;
                }

                snprintf(&byte_10000D000, 0x400uLL, "%sr%s", "/dev/", v74);
                snprintf(&byte_10000C800, 0x400uLL, "%s%s", "/dev/", v74);
                if (!qword_10000C448)
                {
                  v75 = getmntinfo(&v168, 2);
                  if (!v75)
                  {
                    v160 = __error();
                    strerror(*v160);
                    sub_100001CD4("%s: getmntinfo: %s", v161, v162, v163, v164, v165, v166, v167, &byte_10000C800);
                  }

                  if (v75 >= 1)
                  {
                    v76 = v75 + 1;
                    v77 = v168 + 1;
                    do
                    {
                      if (!strcmp(&byte_10000C800, v77[-1].f_mntfromname))
                      {
                        sub_100001CD4("%s is mounted on %s", v78, v79, v80, v81, v82, v83, v84, &byte_10000C800);
                      }

                      v168 = v77;
                      --v76;
                      ++v77;
                    }

                    while (v76 > 1);
                  }
                }

LABEL_130:
                v182 = 0u;
                memset(&v183, 0, sizeof(v183));
                v180 = 0u;
                v181 = 0u;
                v178 = 0u;
                v179 = 0u;
                v176 = 0u;
                v177 = 0u;
                v174 = 0u;
                v175 = 0u;
                v172 = 0u;
                v173 = 0u;
                *__stringp = 0u;
                v171 = 0u;
                v169 = 0;
                if (qword_10000C448)
                {
                  LODWORD(v98) = 512;
                  DWORD2(v181) = 512;
                  LODWORD(v180) = 0;
                  *&v182 = 2048;
                  *(&v182 + 1) = qword_10000C448 >> 9;
                  v87 = -1;
                }

                else
                {
                  if (dword_10000C404)
                  {
                    v85 = 4;
                  }

                  else
                  {
                    v85 = 6;
                  }

                  v86 = open(&byte_10000D000, v85, 0);
                  if (v86 == -1)
                  {
                    err(1, "cannot create filesystem on %s", &byte_10000D000);
                  }

                  v87 = v86;
                  LODWORD(v180) = v86;
                  fcntl(v86, 48, 1);
                  if (v87 < 0 || fstat(v87, &v183) < 0 || ioctl(v87, 0x40046418uLL, &v181 + 8) < 0)
                  {
                    goto LABEL_319;
                  }

                  if ((WORD4(v181) & 0x1FF) != 0)
                  {
                    sub_100001CD4("%d is an unsupported sector size\n", v88, v89, v90, v91, v92, v93, v94, SBYTE8(v181));
                  }

                  if (ioctl(v87, 0x40086419uLL, &v182 + 8) < 0)
                  {
                    goto LABEL_319;
                  }

                  *&v182 = 0x100000u / DWORD2(v181);
                  if (ioctl(v87, 0x40086440uLL, &v169) < 0)
                  {
                    goto LABEL_319;
                  }

                  v95 = v169;
                  if (v169)
                  {
                    if (v182 < v169)
                    {
                      v95 = v182;
                    }

                    *&v182 = v95;
                  }

                  if (ioctl(v87, 0x40086441uLL, &v169) < 0)
                  {
                    goto LABEL_319;
                  }

                  v96 = v169;
                  if (v169)
                  {
                    if (v182 < v169)
                    {
                      v96 = v182;
                    }

                    *&v182 = v96;
                  }

                  if (ioctl(v87, 0x40086446uLL, &v169) < 0)
                  {
                    goto LABEL_319;
                  }

                  if (v169)
                  {
                    v97 = v169 / DWORD2(v181);
                    if (v182 < v97)
                    {
                      v97 = v182;
                    }

                    *&v182 = v97;
                  }

                  if (ioctl(v87, 0x40086447uLL, &v169) < 0)
                  {
LABEL_319:
                    v150 = __error();
                    strerror(*v150);
                    sub_100001CD4("%s: %s", v151, v152, v153, v154, v155, v156, v157, &byte_10000D000);
                  }

                  v98 = DWORD2(v181);
                  if (v169)
                  {
                    v99 = v169 / DWORD2(v181);
                    if (v182 < v99)
                    {
                      v99 = v182;
                    }

                    *&v182 = v99;
LABEL_162:
                    *&v181 = (*(&v182 + 1) * v98) >> 9;
                    *(&v180 + 4) = 512;
                    time(&dword_10000CC00);
                    v107 = 64 - __clz(v181);
                    if (!v181)
                    {
                      v107 = 0;
                    }

                    v108 = 32 - __clz(DWORD1(v180));
                    if (!DWORD1(v180))
                    {
                      v108 = 0;
                    }

                    v109 = v181 * DWORD1(v180);
                    if (v109 > 0x7FFFFFFF80000000 || v107 + v108 >= 0x40)
                    {
                      sub_100001CD4("%s: partition is too big (maximum is %llu KB)", v100, v101, v102, v103, v104, v105, v106, &byte_10000D000);
                    }

                    if (dword_10000C400)
                    {
                      if ((dword_10000C400 & (dword_10000C400 - 1)) != 0)
                      {
                        sub_100001CD4("%s: bad HFS Plus allocation block size (must be a power of two)", v100, v101, v102, v103, v104, v105, v106, optarg);
                      }

                      if ((v181 / (dword_10000C400 / DWORD1(v180))) >> 32)
                      {
                        sub_100001CD4("%s: block size is too small for %lld sectors", v100, v101, v102, v103, v104, v105, v106, optarg);
                      }

                      if (dword_10000C400 <= 0xFFF)
                      {
                        warnx("Warning: %u is a non-optimal block size (4096 would be a better choice)", dword_10000C400);
                      }
                    }

                    else
                    {
                      dword_10000C400 = 4096;
                      v158 = 64 - __clz(v109);
                      if (v109)
                      {
                        v159 = v158;
                      }

                      else
                      {
                        v159 = 0;
                      }

                      if (v159 - 41 > 0x14)
                      {
                        if (v159 >= 0x3E)
                        {
                          sub_100001CD4("Error: Disk Device is too big (%llu sectors, %d bytes per sector", v100, v101, v102, v103, v104, v105, v106, v181);
                        }
                      }

                      else
                      {
                        dword_10000C400 = qword_10000C028[v159 - 41];
                      }
                    }

                    v110 = dword_10000C440;
                    if (dword_10000C440 && dword_10000C440 >= (v109 / dword_10000C400))
                    {
                      warnx("Warning: %u is invalid file system start allocation block number, must be less than total allocation blocks (%u)", dword_10000C440, v109 / dword_10000C400);
                      warnx("Warning: Resetting file system start block to zero");
                      v110 = 0;
                      dword_10000C440 = 0;
                    }

                    v111 = v181;
                    v112 = DWORD1(v180);
                    v113 = v181 * DWORD1(v180);
                    if (!(v113 >> 19))
                    {
                      sub_100001CD4("%s: partition is too small (minimum is %d KB)", v100, v101, v102, v103, v104, v105, v106, &byte_10000D000);
                    }

                    LODWORD(__stringp[0]) = 0;
                    HIDWORD(__stringp[0]) = dword_10000C400;
                    DWORD1(v179) = v110;
                    v114 = dword_10000CC00 + 2082844800;
                    if (dword_10000C424)
                    {
                      v114 = dword_10000CC00;
                    }

                    LODWORD(v171) = dword_10000C008;
                    HIDWORD(v175) = v114;
                    LODWORD(v176) = 0;
                    LODWORD(v177) = dword_10000C428;
                    *&v178 = qword_10000C430;
                    v115 = dword_10000C00C;
                    if (dword_10000C00C == -1)
                    {
                      v115 = geteuid();
                    }

                    DWORD2(v178) = v115;
                    v116 = dword_10000C010;
                    if (dword_10000C010 == -1)
                    {
                      v116 = getegid();
                    }

                    if (word_10000C014 == 0xFFFF)
                    {
                      v117 = 493;
                    }

                    else
                    {
                      v117 = word_10000C014 & 0x1FF;
                    }

                    LOWORD(v179) = v117;
                    HIDWORD(v178) = v116;
                    LODWORD(__stringp[0]) |= 0x10u;
                    if (dword_10000C428)
                    {
                      v118 = (DWORD2(v181) >> 4) * DWORD2(v181);
                      v119 = qword_10000C438;
                      if (!qword_10000C438)
                      {
                        goto LABEL_192;
                      }

                      if (qword_10000C438 < v118)
                      {
                        printf("%s: journal size %lldk too small.  Reset to %dk.\n", qword_10000CC08, qword_10000C438 >> 10, 0x2000);
                        qword_10000C438 = 0;
                        goto LABEL_192;
                      }

                      DWORD1(v177) = qword_10000C438;
                      if (!qword_10000C438)
                      {
LABEL_192:
                        v120 = (HIDWORD(v113) * 0xA3D70A3D70A3D71uLL) >> 64;
                        if (v120 >= 0x40)
                        {
                          LODWORD(v120) = 64;
                        }

                        v119 = (v120 << 23) + 0x800000;
                        if (v119 <= v118)
                        {
                          v119 = v118;
                        }

                        DWORD1(v177) = v119;
                      }

                      if (v113 >> 27)
                      {
LABEL_200:
                        if (v119 >= 0x20000001)
                        {
                          v119 = 0x20000000;
                          goto LABEL_203;
                        }
                      }

                      else
                      {
                        if (v118 >= 0x80000)
                        {
                          DWORD1(v177) = v118;
                          v119 = v118;
                          goto LABEL_200;
                        }

                        v119 = 0x80000;
LABEL_203:
                        DWORD1(v177) = v119;
                      }

                      if (v119 < HIDWORD(__stringp[0]))
                      {
                        DWORD1(v177) = HIDWORD(__stringp[0]);
                      }
                    }

                    *(&v176 + 1) = off_10000C000;
                    v121 = dword_10000C46C;
                    v122 = dword_10000C400;
                    if (dword_10000C46C)
                    {
                      v123 = dword_10000C46C * dword_10000C400;
                      if ((v123 & 0xFFFFFFFF00000000) == 0)
                      {
                        goto LABEL_212;
                      }
                    }

                    else
                    {
                      if (dword_10000C400 <= 0x1000)
                      {
                        LODWORD(v123) = 16 * dword_10000C400;
                      }

                      else
                      {
                        LODWORD(v123) = (dword_10000C400 + 0xFFFF) / dword_10000C400 * dword_10000C400;
                      }

LABEL_212:
                      LODWORD(__stringp[1]) = v123;
                      v121 = dword_10000C470;
                      if (dword_10000C470)
                      {
                        v124 = dword_10000C470 * dword_10000C400;
                        if ((v124 & 0xFFFFFFFF00000000) == 0)
                        {
                          goto LABEL_218;
                        }
                      }

                      else
                      {
                        if (dword_10000C400 <= 0x1000)
                        {
                          LODWORD(v124) = 16 * dword_10000C400;
                        }

                        else
                        {
                          LODWORD(v124) = (dword_10000C400 + 0xFFFF) / dword_10000C400 * dword_10000C400;
                        }

LABEL_218:
                        HIDWORD(__stringp[1]) = v124;
                        if (!dword_10000C408 && (!(v113 >> 30) || dword_10000C400 <= 0xFFF))
                        {
                          dword_10000C018 = 4096;
                        }

                        v125 = dword_10000C45C;
                        if (!dword_10000C45C)
                        {
                          v126 = dword_10000C018;
                          LODWORD(v127) = sub_100002074(dword_10000C400, dword_10000C018, v111, 4);
                          goto LABEL_224;
                        }

                        v127 = dword_10000C45C * dword_10000C400;
                        if ((v127 & 0xFFFFFFFF00000000) != 0)
                        {
LABEL_229:
                          sub_100001CD4("=%ld: too many blocks for clump size!", v100, v101, v102, v103, v104, v105, v106, v125);
                        }

                        v126 = dword_10000C018;
                        if (v127 % dword_10000C018)
                        {
                          sub_100001CD4("c=%ld: clump size is not a multiple of node size\n", v100, v101, v102, v103, v104, v105, v106, v127 / dword_10000C400);
                        }

LABEL_224:
                        v128 = dword_10000C450;
                        if (!dword_10000C450)
                        {
                          LODWORD(v129) = sub_100002074(v122, v126, v111, 4);
                          goto LABEL_226;
                        }

                        v129 = dword_10000C450 * v122;
                        if ((v129 & 0xFFFFFFFF00000000) != 0)
                        {
LABEL_231:
                          sub_100001CD4("=%ld: too many blocks for initial size!", v100, v101, v102, v103, v104, v105, v106, v128);
                        }

                        if (v129 % v126)
                        {
                          sub_100001CD4("c=%ld: initial size is not a multiple of node size\n", v100, v101, v102, v103, v104, v105, v106, v129 / v122);
                        }

LABEL_226:
                        if (v129 < v127)
                        {
                          sub_100001CD4("c=%ld: initial size is less than clump size\n", v100, v101, v102, v103, v104, v105, v106, v129 / v122);
                        }

                        *(&v171 + 4) = __PAIR64__(v129, v127);
                        HIDWORD(v171) = v126;
                        *&v172 = 1;
                        if (v122 <= 0xFFF && v122 < v126)
                        {
                          warnx("Warning: block size %u is less than catalog b-tree node size %u", v122, v126);
                          v122 = dword_10000C400;
                        }

                        v125 = dword_10000C460;
                        if (dword_10000C460)
                        {
                          v131 = dword_10000C460 * v122;
                          if ((v131 & 0xFFFFFFFF00000000) != 0)
                          {
                            goto LABEL_229;
                          }

                          v130 = dword_10000C01C;
                          if (v131 % dword_10000C01C)
                          {
                            sub_100001CD4("e=%ld: clump size is not a multiple of node size\n", v100, v101, v102, v103, v104, v105, v106, v131 / v122);
                          }
                        }

                        else
                        {
                          v130 = dword_10000C01C;
                          LODWORD(v131) = sub_100002074(v122, dword_10000C01C, v111, 3);
                        }

                        v128 = dword_10000C454;
                        if (dword_10000C454)
                        {
                          v132 = dword_10000C454 * v122;
                          if ((v132 & 0xFFFFFFFF00000000) != 0)
                          {
                            goto LABEL_231;
                          }

                          if (v132 % v130)
                          {
                            sub_100001CD4("e=%ld: initial size is not a multiple of node size\n", v100, v101, v102, v103, v104, v105, v106, v132 / v122);
                          }
                        }

                        else
                        {
                          LODWORD(v132) = sub_100002074(v122, v130, v111, 3);
                        }

                        if (v132 < v131)
                        {
                          sub_100001CD4("e=%ld: initial size is less than clump size\n", v100, v101, v102, v103, v104, v105, v106, v132 / v122);
                        }

                        *(&v172 + 1) = __PAIR64__(v132, v131);
                        LODWORD(v173) = v130;
                        *(&v173 + 4) = 1;
                        if (v122 < v130)
                        {
                          warnx("Warning: block size %u is less than extents b-tree node size %u", v122, v130);
                          if (DWORD1(v173) >= 9)
                          {
                            warnx("Warning:  extents overflow extent requested count %u exceeds maximum 8, capping at 8\n", DWORD1(v173));
                            DWORD1(v173) = 8;
                          }
                        }

                        v125 = dword_10000C464;
                        v133 = dword_10000C400;
                        if (dword_10000C464)
                        {
                          v135 = dword_10000C464 * dword_10000C400;
                          if ((v135 & 0xFFFFFFFF00000000) != 0)
                          {
                            goto LABEL_229;
                          }

                          v134 = dword_10000C020;
                          if (v135 % dword_10000C020)
                          {
                            sub_100001CD4("a=%ld: clump size is not a multiple of node size\n", v100, v101, v102, v103, v104, v105, v106, v135 / dword_10000C400);
                          }
                        }

                        else
                        {
                          v134 = dword_10000C020;
                          LODWORD(v135) = sub_100002074(dword_10000C400, dword_10000C020, v111, 8);
                        }

                        v128 = dword_10000C458;
                        if (dword_10000C458)
                        {
                          v136 = dword_10000C458 * v133;
                          if ((v136 & 0xFFFFFFFF00000000) != 0)
                          {
                            goto LABEL_231;
                          }

                          if (v136 % v134)
                          {
                            sub_100001CD4("a=%ld: initial size is not a multiple of node size\n", v100, v101, v102, v103, v104, v105, v106, v136 / v133);
                          }

LABEL_265:
                          if (v136 && v136 < v135)
                          {
                            sub_100001CD4("a=%ld: initial size is less than clump size\n", v100, v101, v102, v103, v104, v105, v106, v136 / v133);
                          }
                        }

                        else
                        {
                          if (!dword_10000C410)
                          {
                            LODWORD(v136) = sub_100002074(v133, v134, v111, 8);
                            goto LABEL_265;
                          }

                          LODWORD(v136) = 0;
                        }

                        HIDWORD(v173) = v135;
                        *&v174 = __PAIR64__(v134, v136);
                        *(&v174 + 1) = 1;
                        v137 = v111 / (v133 / v112);
                        v138 = v137 >> 3;
                        if ((v137 & 7) != 0)
                        {
                          ++v138;
                        }

                        if (v138 % v133)
                        {
                          v139 = v133 - v138 % v133;
                        }

                        else
                        {
                          v139 = 0;
                        }

                        v140 = v138 + v139;
                        v121 = dword_10000C468;
                        if (!dword_10000C468)
                        {
LABEL_278:
                          LODWORD(v175) = v140;
                          *(&v175 + 4) = 1;
                          *(&v177 + 1) = 0;
                          DWORD2(v179) = 0;
                          if (dword_10000C40C)
                          {
                            LODWORD(__stringp[0]) |= 8u;
                          }

                          if (dword_10000C420)
                          {
                            LODWORD(__stringp[0]) |= 0x20u;
                          }

                          if (dword_10000C424)
                          {
                            LODWORD(__stringp[0]) |= 0x40u;
                          }

                          if (!dword_10000C404)
                          {
                            goto LABEL_336;
                          }

                          if (!qword_10000C448)
                          {
                            printf("%llu sectors (%u bytes per sector)\n", *(&v182 + 1), DWORD2(v181));
                          }

                          puts("HFS Plus format parameters:");
                          printf("\tvolume name: %s\n", off_10000C000);
                          printf("\tblock-size: %u\n", HIDWORD(__stringp[0]));
                          printf("\ttotal blocks: %u\n", v137);
                          if (dword_10000C428)
                          {
                            printf("\tjournal-size: %uk\n", DWORD1(v177) >> 10);
                          }

                          printf("\tfirst free catalog node id: %u\n", v171);
                          printf("\tcatalog b-tree node size: %u\n", HIDWORD(v171));
                          printf("\tcatalog clump size: %u\n", DWORD1(v171));
                          printf("\tinitial catalog file size: %u\n", DWORD2(v171));
                          printf("\textents b-tree node size: %u\n", v173);
                          printf("\textents clump size: %u\n", DWORD2(v172));
                          printf("\tinitial extents file size: %u\n", HIDWORD(v172));
                          printf("\tattributes b-tree node size: %u\n", DWORD1(v174));
                          printf("\tattributes clump size: %u\n", HIDWORD(v173));
                          printf("\tinitial attributes file size: %u\n", v174);
                          printf("\tinitial allocation file size: %u (%u blocks)\n", v175, v175 / dword_10000C400);
                          printf("\tdata fork clump size: %u\n", HIDWORD(__stringp[1]));
                          printf("\tresource fork clump size: %u\n", LODWORD(__stringp[1]));
                          if ((__stringp[0] & 0x10) != 0)
                          {
                            printf("\tuser ID: %d\n", DWORD2(v178));
                            printf("\tgroup ID: %d\n", HIDWORD(v178));
                            printf("\taccess mask: %o\n", v179);
                          }

                          printf("\tfile system start block: %u\n", DWORD1(v179));
                          if (!dword_10000C404)
                          {
LABEL_336:
                            if (sub_100002114(&v180, __stringp))
                            {
                              v142 = __error();
                              strerror(*v142);
                              sub_100001CD4("%s: %s", v143, v144, v145, v146, v147, v148, v149, &byte_10000D000);
                            }

                            printf("Initialized %s as a ", &byte_10000D000);
                            if (v181 <= 0x80000000)
                            {
                              if (v181 <= 0x200000)
                              {
                                if (v181 > 0x800)
                                {
                                  printf("%ld MB");
                                }

                                else
                                {
                                  printf("%ld KB");
                                }
                              }

                              else
                              {
                                printf("%ld GB");
                              }
                            }

                            else
                            {
                              printf("%ld TB");
                            }

                            if (dword_10000C40C)
                            {
                              printf(" case-sensitive");
                            }

                            else
                            {
                              printf(" case-insensitive");
                            }

                            if (dword_10000C428)
                            {
                              printf(" HFS Plus volume with a %uk journal\n", DWORD1(v177) >> 10);
                            }

                            else
                            {
                              puts(" HFS Plus volume");
                            }
                          }

                          if (v87 >= 1)
                          {
                            close(v87);
                          }

                          exit(0);
                        }

                        v141 = dword_10000C468 * v133;
                        if ((v141 & 0xFFFFFFFF00000000) == 0)
                        {
                          v30 = v141 >= v140;
                          v140 = dword_10000C468 * v133;
                          if (!v30)
                          {
                            sub_100001CD4("b=%ld: bitmap clump size is too small\n", v100, v101, v102, v103, v104, v105, v106, v141 / v133);
                          }

                          goto LABEL_278;
                        }
                      }
                    }

                    sub_100001CD4("=%ld: too many blocks for clump size!", v100, v101, v102, v103, v104, v105, v106, v121);
                  }
                }

                v98 = v98;
                goto LABEL_162;
              }
            }

LABEL_248:
            sub_100001D44();
          }

          dword_10000C424 = 1;
        }

        else if (v6 == 68)
        {
          qword_10000C430 = optarg;
        }

        else
        {
          if (v6 != 71)
          {
            goto LABEL_248;
          }

          v31 = optarg;
          v32 = getgrnam(optarg);
          v33 = v31;
          if (v32)
          {
            gr_gid = v32->gr_gid;
          }

          else
          {
            do
            {
              v36 = *v33++;
              v35 = v36;
            }

            while ((v36 - 48) < 0xA);
            if (v35)
            {
              errx(1, "unknown group id: %s");
            }

            gr_gid = atoi(v31);
          }

          dword_10000C010 = gr_gid;
        }
      }

      if (v6 <= 76)
      {
        break;
      }

      if (v6 == 77)
      {
        if ((*optarg & 0xF8) != 0x30 || (__stringp[0] = 0, v54 = strtol(optarg, __stringp, 8), v54 >> 31) || *__stringp[0])
        {
          errx(1, "invalid access mask: %s");
        }

        word_10000C014 = v54;
      }

      else
      {
        if (v6 != 78)
        {
          goto LABEL_248;
        }

        dword_10000C404 = 1;
        if ((*optarg - 48) > 9)
        {
LABEL_88:
          --optind;
        }

        else
        {
          qword_10000C448 = sub_1000006C8(optarg);
        }
      }
    }

    if (v6 == 73)
    {
      __stringp[0] = optarg;
      for (i = strsep(__stringp, ","); i; i = strsep(__stringp, ","))
      {
        v50 = *i;
        if (!*i)
        {
          break;
        }

        v51 = strchr(i, 61);
        if (!v51)
        {
          goto LABEL_248;
        }

        v52 = atoi(v51 + 1);
        switch(v50)
        {
          case 'e':
            dword_10000C454 = v52;
            v53 = &dword_10000C41C;
            break;
          case 'c':
            dword_10000C450 = v52;
            v53 = &dword_10000C418;
            break;
          case 'a':
            dword_10000C458 = v52;
            dword_10000C414 = 1;
            v53 = &dword_10000C410;
            break;
          default:
            goto LABEL_248;
        }

        *v53 = 1;
      }
    }

    else
    {
      if (v6 != 74)
      {
        goto LABEL_248;
      }

      dword_10000C428 = 1;
      if ((*optarg - 48) > 9)
      {
        goto LABEL_88;
      }

      v13 = sub_1000006C8(optarg);
      qword_10000C438 = v13;
      if (!(v13 >> 19))
      {
        printf("%s: journal size %lldk too small.  Reset to %dk.\n", qword_10000CC08, v13 >> 10, 0x2000);
        qword_10000C438 = 0x800000;
      }
    }
  }
}

void sub_100001CD4(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (fcntl(2, 3) < 0)
  {
    openlog(qword_10000CC08, 2, 24);
    vsyslog(3, a1, &a9);
    closelog();
  }

  else
  {
    vwarnx(a1, &a9);
  }

  exit(1);
}

void sub_100001D44()
{
  fprintf(__stderrp, "usage: %s [-N [partition-size]] [hfsplus-options] special-device\n", qword_10000CC08);
  fwrite("  options:\n", 0xBuLL, 1uLL, __stderrp);
  fwrite("\t-N do not create file system, just print out parameters\n", 0x39uLL, 1uLL, __stderrp);
  fwrite("\t-s use case-sensitive filenames (default is case-insensitive)\n", 0x3FuLL, 1uLL, __stderrp);
  fwrite("  where hfsplus-options are:\n", 0x1DuLL, 1uLL, __stderrp);
  fwrite("\t-J [journal-size] make this HFS+ volume journaled\n", 0x33uLL, 1uLL, __stderrp);
  fwrite("\t-D journal-dev use 'journal-dev' for an external journal\n", 0x3AuLL, 1uLL, __stderrp);
  fwrite("\t-G group-id (for root directory)\n", 0x22uLL, 1uLL, __stderrp);
  fwrite("\t-U user-id (for root directory)\n", 0x21uLL, 1uLL, __stderrp);
  fwrite("\t-M octal access-mask (for root directory)\n", 0x2BuLL, 1uLL, __stderrp);
  fwrite("\t-b allocation block size (4096 optimal)\n", 0x29uLL, 1uLL, __stderrp);
  fwrite("\t-c clump size list (comma separated)\n", 0x26uLL, 1uLL, __stderrp);
  fwrite("\t\ta=blocks (attributes file)\n", 0x1DuLL, 1uLL, __stderrp);
  fwrite("\t\tb=blocks (bitmap file)\n", 0x19uLL, 1uLL, __stderrp);
  fwrite("\t\tc=blocks (catalog file)\n", 0x1AuLL, 1uLL, __stderrp);
  fwrite("\t\td=blocks (user data fork)\n", 0x1CuLL, 1uLL, __stderrp);
  fwrite("\t\te=blocks (extents file)\n", 0x1AuLL, 1uLL, __stderrp);
  fwrite("\t\tr=blocks (user resource fork)\n", 0x20uLL, 1uLL, __stderrp);
  fwrite("\t-i starting catalog node id\n", 0x1DuLL, 1uLL, __stderrp);
  fwrite("\t-I initial size list (comma separated)\n", 0x28uLL, 1uLL, __stderrp);
  fwrite("\t\ta=size (attributes b-tree)\n", 0x1DuLL, 1uLL, __stderrp);
  fwrite("\t\tc=size (catalog b-tree)\n", 0x1AuLL, 1uLL, __stderrp);
  fwrite("\t\te=size (extents b-tree)\n", 0x1AuLL, 1uLL, __stderrp);
  fwrite("\t-n b-tree node size list (comma separated)\n", 0x2CuLL, 1uLL, __stderrp);
  fwrite("\t\ta=size (attributes b-tree)\n", 0x1DuLL, 1uLL, __stderrp);
  fwrite("\t\tc=size (catalog b-tree)\n", 0x1AuLL, 1uLL, __stderrp);
  fwrite("\t\te=size (extents b-tree)\n", 0x1AuLL, 1uLL, __stderrp);
  fwrite("\t-v volume name (in ascii or UTF-8)\n", 0x24uLL, 1uLL, __stderrp);
  fwrite("  examples:\n", 0xCuLL, 1uLL, __stderrp);
  fprintf(__stderrp, "\t%s -v Untitled /dev/rdisk0s7 \n", qword_10000CC08);
  fprintf(__stderrp, "\t%s -v Untitled -n c=4096,e=1024 /dev/rdisk0s7 \n", qword_10000CC08);
  fprintf(__stderrp, "\t%s -v Untitled -c b=64,c=1024 /dev/rdisk0s7 \n\n", qword_10000CC08);
  exit(1);
}

uint64_t sub_100002074(unsigned int a1, unsigned int a2, unint64_t a3, int a4)
{
  if (a4 == 4)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (a4 == 8)
  {
    v4 = 0;
  }

  if (a3 >> 21)
  {
    if (a3 >= 0x400000)
    {
      v6 = 0;
      v7 = 0;
      v8 = a3 >> 22;
      do
      {
        v6 += 3;
        if (v8 < 2)
        {
          break;
        }

        v8 >>= 1;
      }

      while (v7++ < 0xD);
    }

    else
    {
      v6 = 0;
    }

    v5 = word_10000C0D0[v6 + v4] << 20;
  }

  else
  {
    v5 = 4 * a3;
    if (4 * a3 <= 8 * a2)
    {
      v5 = 8 * a2;
    }
  }

  if (a2 <= a1)
  {
    v10 = a1;
  }

  else
  {
    v10 = a2;
  }

  if (v5 == v5 % v10)
  {
    return v10;
  }

  else
  {
    return v5 / v10 * v10;
  }
}

uint64_t sub_100002114(unsigned int *a1, int8x8_t *a2)
{
  v4 = *a1;
  v154.tv_sec = 0;
  if (!wipefs_alloc())
  {
    wipefs_wipe();
  }

  wipefs_free();
  v5 = malloc_type_malloc(0x200uLL, 0x10000407EBBDD04uLL);
  if (!v5)
  {
    sub_1000038A8();
  }

  v6 = v5;
  v7 = *(a1 + 2);
  *v5[60].i8 = 0u;
  *v5[62].i8 = 0u;
  *v5[56].i8 = 0u;
  *v5[58].i8 = 0u;
  *v5[52].i8 = 0u;
  *v5[54].i8 = 0u;
  *v5[48].i8 = 0u;
  *v5[50].i8 = 0u;
  *v5[44].i8 = 0u;
  *v5[46].i8 = 0u;
  *v5[40].i8 = 0u;
  *v5[42].i8 = 0u;
  *v5[36].i8 = 0u;
  *v5[38].i8 = 0u;
  *v5[32].i8 = 0u;
  *v5[34].i8 = 0u;
  *v5[28].i8 = 0u;
  *v5[30].i8 = 0u;
  *v5[24].i8 = 0u;
  *v5[26].i8 = 0u;
  *v5[20].i8 = 0u;
  *v5[22].i8 = 0u;
  *v5[16].i8 = 0u;
  *v5[18].i8 = 0u;
  *v5[12].i8 = 0u;
  *v5[14].i8 = 0u;
  *v5[8].i8 = 0u;
  *v5[10].i8 = 0u;
  *v5[4].i8 = 0u;
  *v5[6].i8 = 0u;
  *v5->i8 = 0u;
  *v5[2].i8 = 0u;
  v8 = a2->u32[1];
  if (v8 == 512)
  {
    v9 = 1;
    v10 = 2;
  }

  else if (v8 == 1024)
  {
    v9 = 0;
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v11 = v10 + a2[18].i32[1] + 1;
  v12 = v10 + v9;
  v13 = a2->i32[0];
  if ((a2->i32[0] & 8) != 0)
  {
    v14 = 18520;
  }

  else
  {
    v14 = 18475;
  }

  v15 = a2[10].i32[0] / v8;
  v5->i16[0] = v14;
  if ((v13 & 8) != 0)
  {
    v16 = 5;
  }

  else
  {
    v16 = 4;
  }

  v5->i16[1] = v16;
  if ((v13 & 0x20) != 0)
  {
    v17 = -1073741568;
  }

  else
  {
    v17 = -2147483392;
  }

  v5->i32[1] = v17;
  v18 = v7 / (v8 >> 9);
  if ((a2->i8[0] & 0x40) != 0)
  {
    v5->i32[1] = v17 | 0x20000000;
  }

  v19 = v12 + v15;
  __buf = 0;
  v5[1].i32[0] = 825241136;
  v20 = a2[11].i32[1];
  if (v20)
  {
    v153 = 0;
    v154.tv_sec = 0;
    *&v154.tv_usec = 0;
    gettimeofday(&v154, &v153);
    if (HIDWORD(v153))
    {
      v21 = v20 - 60 * v153 + 3600;
    }

    else
    {
      v21 = v20 - 60 * v153;
    }

    v22 = a2[11].i32[1];
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  v23 = v19 + 2;
  v6[5].i32[1] = v18;
  v6[2].i32[0] = v21;
  v6[2].i32[1] = v22;
  v6[3].i32[0] = 0;
  v6[3].i32[1] = v22;
  v6[5].i32[0] = v8;
  v6[6].i32[0] = v18;
  v6[7] = a2[1];
  v24 = a2[2].i32[0];
  v6[8].i32[0] = v24;
  v6[9] = 1;
  v25 = a2[10].u32[0];
  v6[14] = v25;
  v6[15].i32[0] = v25.i32[0];
  v6[15].i32[1] = v15;
  v26 = v15 + v11;
  v6[16].i32[0] = v11;
  v6[16].i32[1] = v15;
  if (a2[14].i32[0])
  {
    v6[4].i32[0] = 2;
    v6->i32[1] |= 0x2000u;
    v6[8].i32[0] = v24 + 2;
    v27 = (v8 + a2[14].i32[1] - 1) / v8;
    v28 = v15 + v11;
    v26 += v27 + 1;
    v23 += v27 + 1;
  }

  else
  {
    v28 = 0;
  }

  v29 = v18 * v8;
  v6[1].i32[1] = v28;
  v6[25].i32[0] = a2[5].i32[0];
  v30 = a2[5].u32[1];
  v6[24] = v30;
  v31 = v30.i32[0] / v8;
  v32 = v30.i32[0] / v8 + v26;
  v6[25].i32[1] = v31;
  v6[26].i32[0] = v26;
  v6[26].i32[1] = v31;
  v33 = v31 + v23;
  v34 = a2[8].u32[0];
  if (v34.i32[0])
  {
    v35 = a2[7].u32[1];
    v6[45].i32[0] = v35;
    v6[44] = v34;
    v36 = v34.i32[0] / v8;
    v6[45].i32[1] = v34.i32[0] / v8;
    v37 = v34.i32[0] / v8 + v32;
    v6[46].i32[0] = v32;
    v6[46].i32[1] = v36;
    v33 += v36;
    if (v29 < 0x200000 || a2[9].i32[1])
    {
      v32 = v37;
    }

    else
    {
      v32 = v37 + 10 * (v35 / v8);
    }
  }

  v38 = a2[2].u32[1];
  v6[35].i32[0] = v38;
  v39 = a2[3].u32[0];
  v6[34] = v39;
  v40 = v39.i32[0] / v8;
  v6[35].i32[1] = v40;
  v6[36].i32[0] = v32;
  v6[36].i32[1] = v40;
  v41 = v40 + v32 + 10 * (v38 / v8);
  if (v29 >> 31 >= 5)
  {
    v42 = 5 * (v29 >> 10);
    v43 = v29 > 0x1999999BFFLL;
    v44 = 0x20000000;
    if (!v43)
    {
      v44 = v42;
    }

    v41 += v44 / v8;
  }

  v6[6].i32[0] = v18 - (v33 + v40);
  v6[6].i32[1] = v41;
  arc4random_buf(&__buf, 8uLL);
  v6[13] = vrev32_s8(__buf);
  v45 = v6[5].i32[0] >> 9;
  sub_1000030A4(a1, 0, 0x100000uLL, 0);
  v46 = v6[16].u32[0];
  v47 = v6[46].i32[0] - v46 + v6[45].i32[1];
  sub_1000030A4(a1, v46 * v45, v6[5].u32[0] * (v47 + 1), 0);
  v150 = v45;
  sub_1000030A4(a1, v6[36].i32[0] * v45, v6[5].u32[0] * v6[35].u32[1], 0);
  v48 = 2 * a2[3].i32[1];
  v49 = v6[36].i32[0] + v6[35].i32[1] + 7;
  if (v48 <= 2 * a2[8].i32[1])
  {
    v48 = 2 * a2[8].i32[1];
  }

  if (v6[5].i32[0] <= v49 >> 3)
  {
    v50 = v49 >> 3;
  }

  else
  {
    v50 = v6[5].u32[0];
  }

  if (v48 <= v50)
  {
    v48 = v50;
  }

  v51 = (v48 + 511) & 0xFFFFFE00;
  v52 = malloc_type_valloc(v51, 0xBF8BE1E5uLL);
  if (!v52)
  {
    sub_1000038A8();
  }

  v53 = v52;
  bzero(v52, v51);
  v54 = v6[5].i32[0];
  if (v54 == 1024)
  {
    if (sub_1000032C0(a1, v6, 0, 2u) == -1)
    {
      sub_10000377C();
    }
  }

  else if (v54 == 512)
  {
    if (sub_1000032C0(a1, v6, 0, 4u) == -1)
    {
      sub_1000037A4();
    }
  }

  else if (sub_1000032C0(a1, v6, 0, 1u) == -1)
  {
    sub_100003880();
  }

  if (sub_1000032C0(a1, v6, v46, v47) == -1)
  {
    errx(1, "Overlapped extent at <%u, %u> (%d)\n");
  }

  if (sub_1000032C0(a1, v6, v6[36].u32[0], v6[35].u32[1]) == -1)
  {
    v141 = v6[36].u32[0];
    v142 = v6[35].u32[1];
    errx(1, "Overlapped catalog extent at <%u, %u>\n");
  }

  if (sub_1000032C0(a1, v6, v6[5].i32[1] - 1, 1u) == -1)
  {
    sub_100003850(&v6[5] + 1);
  }

  if (v6[5].i32[0] == 512 && sub_1000032C0(a1, v6, v6[5].i32[1] - 2, 1u) == -1)
  {
    sub_100003820(&v6[5] + 1);
  }

  v55 = v6[26].i32[0] * v45;
  v56 = a2[5].u32[1];
  v57 = a2[6].u32[0];
  bzero(v53, v57);
  *(v53 + 5) = 768;
  v58 = v53 + v57;
  *(v58 - 1) = 3584;
  *(v53 + 14) = 0;
  *(v53 + 8) = 1;
  *(v53 + 22) = 0;
  *(v53 + 15) = 0;
  *(v53 + 16) = bswap32(v57) >> 16;
  v59 = v56 / v57;
  v53[9] = bswap32(v59);
  v60 = bswap32(v59 - 1);
  v53[10] = v60;
  *(v53 + 46) = bswap32(a2[5].u32[0]);
  v53[13] |= 0x2000000u;
  *(v53 + 17) = 2560;
  *(v58 - 6) = 2013329408;
  v61 = 8 * v57 - 2048;
  v149 = a1;
  v144 = v55;
  if (v59 <= v61)
  {
    v62 = 0;
  }

  else
  {
    *v53 = 0x1000000;
    v62 = (v59 + 1887) / (8 * v57 - 160);
    v60 = bswap32(v59 - 1 - v62);
    v53[10] = v60;
  }

  v151 = a2;
  v63 = v53 + 62;
  v64 = bswap32(v60);
  v65 = v59 - v64;
  __b = v53 + 62;
  v66 = v59 - v64 - 8;
  if (v59 - v64 >= 8)
  {
    v67 = v66 >> 3;
    memset(__b, 255, v67 + 1);
    v58 = v53 + v57;
    v65 = v66 & 7;
    v63 = v53 + v67 + 249;
  }

  *v63 = -256 >> v65;
  *(v58 - 4) = bswap32((v61 >> 3) + 248) >> 16;
  v68 = (v59 - v62 - v64) * v57;
  sub_1000030A4(v149, v144, v68, v53);
  if (v62)
  {
    sub_1000034A4(v149, (v68 >> 9) + v144, v68 / v57, v62, v57, v53);
  }

  v69 = v151[8].u32[0];
  if (v69)
  {
    v70 = v151[8].u32[1];
    v71 = v6[46].i32[0] * v150;
    bzero(v53, v70);
    *(v53 + 8) = 1;
    *(v53 + 5) = 768;
    v72 = v53 + v70;
    *(v72 - 1) = 3584;
    *(v53 + 14) = 0;
    *(v53 + 22) = 0;
    *(v53 + 15) = 0;
    *(v53 + 16) = bswap32(v70) >> 16;
    v73 = v69 / v70;
    v74 = bswap32(v73 - 1);
    v53[9] = bswap32(v73);
    v53[10] = v74;
    *(v53 + 46) = bswap32(v151[7].u32[1]);
    v53[13] |= 0x6000000u;
    *(v53 + 17) = 2561;
    *(v72 - 6) = 2013329408;
    v75 = 8 * v70 - 2048;
    if (v73 <= v75)
    {
      v76 = 0;
    }

    else
    {
      *v53 = 0x1000000;
      v76 = (v73 + 1887) / (8 * v70 - 160);
      v74 = bswap32(v73 - 1 - v76);
      v53[10] = v74;
    }

    v77 = v53 + 62;
    v78 = bswap32(v74);
    v79 = v73 - v78;
    v80 = v73 - v78 - 8;
    if (v73 - v78 >= 8)
    {
      v145 = v71;
      v81 = v80 >> 3;
      memset(__b, 255, v81 + 1);
      v79 = v80 & 7;
      v82 = v53 + v81;
      v71 = v145;
      v77 = v82 + 249;
    }

    *v77 = -256 >> v79;
    *(v72 - 4) = bswap32((v75 >> 3) + 248) >> 16;
    v83 = (v73 - v76 - v78) * v70;
    sub_1000030A4(v149, v71, v83, v53);
    if (v76)
    {
      sub_1000034A4(v149, (v83 >> 9) + v71, v83 / v70, v76, v70, v53);
    }
  }

  v84 = v6[36].i32[0];
  v85 = v151[3].u32[0];
  v86 = v151[3].u32[1];
  bzero(v53, v86);
  *(v53 + 8) = 1;
  *(v53 + 5) = 768;
  v87 = v53 + v86;
  *(v53 + v86 - 2) = 3584;
  *(v53 + 7) = 256;
  v53[4] = 0x1000000;
  *(v53 + 3) = 0x100000001000000;
  if (v151[14].i32[0])
  {
    v88 = 100663296;
  }

  else
  {
    v88 = 0x2000000;
  }

  v53[5] = v88;
  *(v53 + 16) = bswap32(v86) >> 16;
  v89 = v85 / v86;
  v90 = v85 / v86 - 2;
  v91 = bswap32(v90);
  v53[9] = bswap32(v85 / v86);
  v53[10] = v91;
  *(v53 + 46) = bswap32(v151[2].u32[1]);
  v53[13] |= 0x6000000u;
  *(v53 + 17) = 1026;
  if ((v151->i32[0] & 8) != 0)
  {
    v92 = -68;
  }

  else
  {
    v92 = -49;
  }

  *(v53 + 51) = v92;
  *(v87 - 6) = 2013329408;
  v93 = 8 * v86 - 2048;
  v146 = v86;
  if (v89 <= v93)
  {
    v94 = 0;
  }

  else
  {
    *v53 = 0x2000000;
    v94 = (v89 + 1887) / (8 * v86 - 160);
    v91 = bswap32(v90 - v94);
    v53[10] = v91;
  }

  v95 = v53 + 62;
  v96 = v89 - bswap32(v91);
  v97 = v96 - 8;
  __ba = v94;
  if (v96 >= 8)
  {
    v98 = v97 >> 3;
    memset(v95, 255, v98 + 1);
    LOBYTE(v96) = v97 & 7;
    v95 = v53 + v98 + 249;
  }

  *v95 = -256 >> v96;
  *(v87 - 8) = bswap32((v93 >> 3) + 248) >> 16;
  v99 = v151[3].u16[2];
  bzero(v87, v99);
  *(v87 + 8) = 511;
  v100 = v151[13];
  if (v151[14].i32[0])
  {
    v101 = 1536;
  }

  else
  {
    v101 = 512;
  }

  *(v87 + 10) = v101;
  v102 = v87 + v99;
  *(v87 + v99 - 2) = 3584;
  v103 = CFStringCreateWithCString(kCFAllocatorDefault, v100, 0x8000100u);
  if (!_CFStringGetFileSystemRepresentation(v103, &v154, 766) || sub_100003580(&v154, v87 + 22, (v87 + 20)))
  {
    sub_1000037CC(v87, &v151[13]);
  }

  v104 = v84 * v150;
  CFRelease(v103);
  v105 = *(v87 + 20);
  *(v87 + 20) = __rev16(v105);
  v106 = 2 * v105;
  *(v87 + 14) = bswap32(2 * v105 + 6) >> 16;
  *(v87 + 16) = 0x1000000;
  v107 = (v87 + (((v105 << 49) + 0x16000000000000) >> 48));
  v107->i16[0] = 256;
  v108 = v151;
  v109 = v151->i32[0];
  if ((v151->i32[0] & 8) != 0)
  {
    v107->i16[1] = 4096;
  }

  v107->i32[1] = (v151[14].i32[0] != 0) << 25;
  v107[1].i32[0] = 0x2000000;
  v110 = bswap32(v151[11].u32[1]);
  v107[1].i32[1] = v110;
  v107[2].i32[0] = v110;
  v107[10].i32[0] = 2113929216;
  if ((v109 & 0x10) != 0)
  {
    v107[4] = vrev32_s8(v151[17]);
    v107[5].i16[1] = bswap32(v151[18].u16[0] | 0x4000) >> 16;
  }

  *(v102 - 4) = bswap32(v106 + 110) >> 16;
  v111 = v87 + (v106 + 110);
  *v111 = 1536;
  *(v111 + 2) = 0x2000000;
  v112 = v87 + (v106 + 118);
  *v112 = 768;
  *(v112 + 4) = 0x1000000;
  memmove((v112 + 8), (v87 + 20), v106 + 2);
  v113 = v106 + v106 + 118 + 10;
  *(v102 - 6) = bswap32(v113) >> 16;
  if (v151[14].i32[0])
  {
    v114 = v87 + v113;
    sub_100003580(".journal", v114 + 8, (v114 + 6));
    v115 = *(v114 + 6);
    *(v114 + 6) = __rev16(v115);
    v143 = v104;
    v116 = 2 * v115;
    LODWORD(v115) = 2 * v115 + 6;
    *v114 = bswap32(v115) >> 16;
    *(v114 + 2) = 0x2000000;
    LODWORD(v115) = v113 + v115;
    v117 = v115 + 2;
    v118 = v87 + (v115 + 2);
    *v118 = 33554944;
    *(v118 + 8) = bswap32(v151[2].u32[0]);
    v119 = bswap32(v151[11].i32[1] + 1);
    *(v118 + 12) = v119;
    *(v118 + 16) = v119;
    *(v118 + 80) = 0;
    *(v118 + 42) = 128;
    *(v118 + 41) = 0;
    *(v118 + 44) = 0x6C6E726A01000000;
    strcpy((v118 + 52), "hfs+P");
    v120 = v151[14].u32[1];
    *(v118 + 88) = bswap64(v120);
    LODWORD(v120) = bswap32((v120 + v151->i32[1] - 1) / v151->i32[1]);
    *(v118 + 100) = v120;
    *(v118 + 104) = bswap32(v6[1].i32[1] + 1);
    *(v118 + 108) = v120;
    LODWORD(v115) = v115 + 250;
    *(v102 - 8) = bswap32(v115) >> 16;
    v121 = v87 + v115;
    sub_100003580(".journal_info_block", v121 + 8, (v121 + 6));
    v122 = *(v121 + 6);
    *(v121 + 6) = __rev16(v122);
    v123 = 2 * v122;
    LODWORD(v122) = 2 * v122 + 6;
    *v121 = bswap32(v122) >> 16;
    *(v121 + 2) = 0x2000000;
    LODWORD(v122) = v117 + v122;
    v124 = v87 + (v122 + 250);
    *v124 = 33554944;
    *(v124 + 8) = bswap32(v151[2].i32[0] + 1);
    v125 = bswap32(v151[11].u32[1]);
    *(v124 + 12) = v125;
    *(v124 + 16) = v125;
    *(v124 + 80) = 0;
    *(v124 + 42) = 128;
    *(v124 + 41) = 0;
    *(v124 + 44) = 0x6C6E726A01000000;
    strcpy((v124 + 52), "hfs+P");
    *(v124 + 88) = bswap64(v151->u32[1]);
    *(v124 + 100) = 0x1000000;
    *(v124 + 104) = bswap32(v6[1].u32[1]);
    *(v124 + 108) = 0x1000000;
    *(v102 - 10) = bswap32(v122 + 498) >> 16;
    v126 = v87 + (v122 + 498);
    *v126 = 1536;
    *(v126 + 2) = bswap32(v151[2].u32[0]);
    *(v126 + 6) = 0x4000000;
    v127 = v122 + 506;
    v128 = v87 + (v122 + 506);
    *(v128 + 4) = 0x2000000;
    v129 = (v114 + 6);
    v108 = v151;
    memmove((v128 + 8), v129, v116 + 2);
    v130 = v116 + v127;
    v104 = v143;
    *(v102 - 12) = bswap32(v130 + 10) >> 16;
    v131 = v87 + (v130 + 10);
    *v131 = 1536;
    *(v131 + 2) = bswap32(v151[2].i32[0] + 1);
    *(v131 + 6) = 0;
    v132 = v130 + 18;
    v133 = v87 + (v130 + 18);
    *v133 = 1024;
    *(v133 + 4) = 0x2000000;
    memmove((v133 + 8), (v121 + 6), v123 + 2);
    *(v102 - 14) = bswap32(v123 + v132 + 10) >> 16;
  }

  v134 = (bswap32(v53[9]) - (__ba + bswap32(v53[10]))) * v146;
  sub_1000030A4(v149, v104, v134, v53);
  if (__ba)
  {
    sub_1000034A4(v149, (v134 >> 9) + v104, v134 / v146, __ba, v146, v53);
  }

  if (v108[14].i32[0])
  {
    v135 = v6[1].i32[1] * v150;
    memset(v53, 219, *(v149 + 24));
    *(v53 + 2) = 0u;
    *(v53 + 3) = 0u;
    *(v53 + 4) = 0u;
    *(v53 + 5) = 0u;
    *(v53 + 6) = 0u;
    *(v53 + 7) = 0u;
    *(v53 + 8) = 0u;
    *(v53 + 9) = 0u;
    *(v53 + 10) = 0u;
    v53[44] = 0;
    *v53 = 0u;
    *(v53 + 1) = 0u;
    v136 = v6[5].u32[0] * (v6[1].i32[1] + 1);
    v137 = v108[14].u32[1];
    *v53 = 83886080;
    *(v53 + 9) = bswap64(v136);
    *(v53 + 11) = bswap64(v137);
    sub_1000030A4(v149, v135, *(v149 + 24), v53);
    v138 = bswap32(*v53);
    *v53 = v138;
    v139 = vrev64q_s8(*(v53 + 9));
    *(v53 + 9) = v139;
    if (v138)
    {
      sub_1000030A4(v149, v139.i64[0] >> 9, v139.u64[1], 0);
    }
  }

  sub_10000367C(v6);
  sub_1000030A4(v149, 2, 0x200uLL, v6);
  sub_1000030A4(v149, *(v149 + 16) - 2, 0x200uLL, v6);
  free(v53);
  free(v6);
  return 0;
}

void sub_1000030A4(uint64_t a1, uint64_t a2, unint64_t a3, char *a4)
{
  if (a3)
  {
    v5 = a3;
    __fd = *a1;
    v8 = *(a1 + 24);
    v9 = (a3 + v8 - 1) / v8;
    if (v9 >= *(a1 + 32))
    {
      v9 = *(a1 + 32);
    }

    if (0x400000 / v8 >= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0x400000 / v8;
    }

    v11 = malloc_type_valloc(v10 * v8, 0x6C96CD7CuLL);
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v13 = malloc_type_valloc(v8, 0x33422AD1uLL);
      if (!v13)
      {
        sub_1000038A8();
      }

      v12 = v13;
      v10 = 1;
    }

    v14 = a2 + *(a1 + 8);
    v15 = v14 / (v8 >> 9);
    v16 = (v14 % (v8 >> 9)) << 9;
    v17 = v10;
    do
    {
      if ((v8 - 1 + v5) / v8 >= v17)
      {
        v18 = v17;
      }

      else
      {
        v18 = (v8 - 1 + v5) / v8;
      }

      v19 = v18 * v8 - v16;
      if (v5 >= v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = v5;
      }

      if ((v16 || v20 % v8) && pread(__fd, v12, v18 * v8, v15 * v8) < 0)
      {
        free(v12);
        err(1, "read (sector %llu)");
      }

      v21 = &v12[v16];
      if (a4)
      {
        memcpy(v21, a4, v20);
      }

      else
      {
        bzero(v21, v20);
      }

      if (pwrite(__fd, v12, v18 * v8, v15 * v8) < 0)
      {
        warn("%s:  pwrite(%d, %p, %zu, %lld)", "WriteBuffer", __fd, v12, v18 * v8, v15 * v8);
        free(v12);
        err(1, "write (sector %llu)");
      }

      v16 = 0;
      v15 += v18;
      if (a4)
      {
        a4 += v20;
      }

      else
      {
        a4 = 0;
      }

      v5 -= v20;
    }

    while (v5);

    free(v12);
  }
}

uint64_t sub_1000032C0(int *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v8 = a1[6];
  v9 = malloc_type_valloc(v8, 0x88395A0EuLL);
  if (!v9)
  {
    sub_1000038A8();
  }

  v10 = v9;
  if (a4)
  {
    v21 = v9;
    v22 = 8 * v8;
    while (1)
    {
      *v10 = 0;
      v11 = a3 % v22;
      v12 = v22 - v11 >= a4 ? a4 : v22 - v11;
      v13 = (*(a2 + 40) * *(a2 + 128)) + (a3 / v22) * v8;
      v14 = pread(*a1, v10, v8, v13);
      if (v14 < v8)
      {
        break;
      }

      v15 = v10 + (v11 >> 3);
      v16 = v11 & 7;
      if ((v11 & 7) != 0)
      {
        if (8 - v16 <= v12)
        {
          v17 = 0;
        }

        else
        {
          v17 = 8 - (v12 + v16);
        }

        *v15++ |= (255 << v17) & (0xFFu >> v16);
        v18 = v12 + v16 + v17 - 8;
      }

      else
      {
        v18 = v12;
      }

      if (v18 >= 8)
      {
        memset(v15, 255, v18 >> 3);
        v15 += v18 >> 3;
        v10 = v21;
        v18 &= 7u;
      }

      if (v18)
      {
        *v15 |= -1 << (8 - v18);
      }

      if (pwrite(*a1, v10, v8, v13) != v8)
      {
        goto LABEL_22;
      }

      a3 += v12;
      a4 -= v12;
      if (!a4)
      {
        goto LABEL_20;
      }
    }

    if (v14 == -1)
    {
      err(1, "%s::pread(%d, %p, %zu, %lld)", "MarkExtentUsed", *a1, v10, v8, v13);
    }

LABEL_22:
    v19 = 0xFFFFFFFFLL;
  }

  else
  {
LABEL_20:
    v19 = 0;
  }

  free(v10);
  return v19;
}

void sub_1000034A4(uint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5, char *a6)
{
  v12 = a5;
  bzero(a6, a5);
  a6[8] = 2;
  *(a6 + 5) = 256;
  v13 = &a6[a5];
  *(v13 - 1) = 3584;
  *(v13 - 2) = bswap32(a5 - 6) >> 16;
  if (a4)
  {
    v14 = 0;
    v15 = 0;
    v16 = a5 >> 9;
    do
    {
      v17 = v14 + 1;
      v18 = bswap32(a3 + 1);
      v19 = v17 >= a4;
      if (v17 >= a4)
      {
        v20 = 0;
      }

      else
      {
        v20 = v18;
      }

      if (!v19)
      {
        ++a3;
      }

      *a6 = v20;
      sub_1000030A4(a1, a2, v12, a6);
      a2 += v16;
      v14 = ++v15;
    }

    while (v15 < a4);
  }
}

uint64_t sub_100003580(unsigned __int8 *a1, uint64_t a2, _WORD *a3)
{
  *a3 = 0;
  v3 = *a1;
  if (*a1)
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v6 = a1 + 1;
      if ((v3 & 0x80) != 0)
      {
        if ((v3 >> 4) - 12 >= 2)
        {
          if (v3 >> 4 != 14)
          {
            return 22;
          }

          v9 = *v6;
          if ((v9 & 0xC0) != 0x80)
          {
            return 22;
          }

          v7 = a1[2];
          if ((v7 & 0xC0) != 0x80)
          {
            return 22;
          }

          v8 = (v3 << 12) | ((v9 & 0x3F) << 6);
          v6 = a1 + 3;
        }

        else
        {
          v7 = a1[1];
          if ((v7 & 0xC0) != 0x80)
          {
            return 22;
          }

          v8 = (v3 & 0x1F) << 6;
          v6 = a1 + 2;
        }

        if (v5 > 0x1FD)
        {
          return 55;
        }

        v3 = bswap32(v8 + (v7 & 0x3F)) >> 16;
      }

      else
      {
        if (v3 == 58)
        {
          LOWORD(v3) = 47;
        }

        LOWORD(v3) = v3 << 8;
      }

      *(a2 + v5) = v3;
      v5 += 2;
      v3 = *v6;
      ++v4;
      a1 = v6;
      if (!*v6)
      {
        goto LABEL_19;
      }
    }
  }

  v4 = 0;
LABEL_19:
  result = 0;
  *a3 = v4;
  return result;
}

void sub_100003664()
{

  err(1, 0);
}

double sub_10000367C(unsigned __int16 *a1)
{
  *a1 = bswap32(*a1) >> 16;
  a1[1] = bswap32(a1[1]) >> 16;
  *(a1 + 2) = vrev32q_s8(*(a1 + 2));
  *(a1 + 10) = vrev32q_s8(*(a1 + 10));
  *(a1 + 18) = vrev32q_s8(*(a1 + 18));
  *(a1 + 26) = vrev32q_s8(*(a1 + 26));
  *(a1 + 17) = bswap32(*(a1 + 17));
  *(a1 + 9) = bswap64(*(a1 + 9));
  sub_100003738((a1 + 56));
  sub_100003738((a1 + 96));
  sub_100003738((a1 + 136));
  sub_100003738((a1 + 176));

  *&result = sub_100003738((a1 + 216)).u64[0];
  return result;
}

int8x16_t sub_100003738(uint64_t a1)
{
  v1 = 0;
  *a1 = bswap64(*a1);
  *(a1 + 8) = vrev32_s8(*(a1 + 8));
  v2 = a1 + 16;
  do
  {
    v3 = (v2 + v1);
    result = vrev32q_s8(*(v2 + v1 + 16));
    *v3 = vrev32q_s8(*(v2 + v1));
    v3[1] = result;
    v1 += 32;
  }

  while (v1 != 64);
  return result;
}