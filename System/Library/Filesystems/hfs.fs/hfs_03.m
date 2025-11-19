void sub_10002731C(uint64_t a1)
{
  v44 = 0;
  sub_100020B5C();
  v3 = v2;
  v39 = a1;
  v4 = *(a1 + 656);
  v5 = **v4;
  qsort(*v4 + 2, v5, 0x20uLL, sub_1000274F8);
  if (!v3)
  {
    v12 = 0;
    if (!v5)
    {
      goto LABEL_20;
    }

    goto LABEL_5;
  }

  v12 = malloc_type_malloc(0x1000uLL, 0x5A3B884DuLL);
  if (v5)
  {
LABEL_5:
    v13 = 0;
    v14 = 0;
    v15 = (a1 + 872);
    v16 = 32 * v5;
    while (1)
    {
      v17 = *v4;
      v18 = &(*v4)[v13 / 4];
      v19 = v18[2];
      if (v14 != v19)
      {
        break;
      }

LABEL_19:
      v13 += 32;
      if (v16 == v13)
      {
        goto LABEL_20;
      }
    }

    v20 = v18[2];
    if (v12)
    {
      v44 = 4096;
      v21 = v18[2];
      if (v21 < 0x10)
      {
        v22 = sub_100016C5C(v18[2], v12, &v44);
      }

      else
      {
        v22 = sub_100016CD8(v39, v21, v12, &v44, 0, 0, 0);
      }

      v29 = v22;
      if (!v22)
      {
        v30 = v18[2];
        v31 = v15[1];
        v40 = *v15;
        v41 = v31;
        v32 = v15[3];
        v42 = v15[2];
        v43 = v32;
        sub_10002D0A4(&v40, 511, v23, v24, v25, v26, v27, v28, v30);
      }

      if (sub_10002D444() >= 3)
      {
        v33 = *(v17 + v13 + 32);
        v34 = *(v17 + v13 + 24);
        v36 = *(v17 + v13 + 12);
        v35 = *(v17 + v13 + 16);
        v40 = xmmword_100043460;
        v41 = *&qword_100043470;
        v42 = xmmword_100043480;
        v43 = *&off_100043490;
        sub_10002D0E8(&v40, 2, "\textentType=0x%x, startBlock=0x%x, blockCount=0x%x, attrName=%s\n", v7, v8, v9, v10, v11, v33);
      }

      if (!v29)
      {
        goto LABEL_18;
      }

      v20 = v18[2];
    }

    v37 = v15[1];
    v40 = *v15;
    v41 = v37;
    v38 = v15[3];
    v42 = v15[2];
    v43 = v38;
    sub_10002D0A4(&v40, 607, v6, v7, v8, v9, v10, v11, v20);
LABEL_18:
    v14 = v19;
    goto LABEL_19;
  }

LABEL_20:
  if (v12)
  {
    free(v12);
  }
}

uint64_t sub_100027508(uint64_t a1)
{
  memset(&v15, 0, sizeof(v15));
  v1 = HIDWORD(qword_1000434A8);
  if (HIDWORD(qword_1000434A8) == -1)
  {
    v2 = *__error();
    if (byte_10004350E)
    {
      v4 = __error();
      strerror(*v4);
      *v11 = xmmword_100043460;
      v12 = *&qword_100043470;
      v13 = xmmword_100043480;
      v14 = *&off_100043490;
      sub_10002D0E8(v11, 6, "Unable to open block device %s: %s", v5, v6, v7, v8, v9, a1);
    }
  }

  else
  {
    v2 = getvfsbyname("hfs", &v15);
    if (!v2)
    {
      v11[0] = 3;
      v11[1] = v15.vfc_typenum;
      v11[2] = 1785621618;
      v11[3] = v1;
      if (sysctl(v11, 4u, 0, 0, 0, 0))
      {
        return *__error();
      }

      else
      {
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_100027638(uint64_t a1, unint64_t a2, unsigned int a3, unint64_t *a4)
{
  v4 = *(a1 + 776);
  v5 = a2 + a3;
  *a4 = a2;
  if (v5 <= a2)
  {
    return -43;
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    while (1)
    {
      v7 = sub_100004C84(v4, a2, 0, v10);
      if (v7)
      {
        break;
      }

      v8 = sub_10001F3E4(*&v10[0]);
      sub_100004D50(v4, v10, 0);
      if (!v8)
      {
        return 0;
      }

      a2 = *a4 + 1;
      *a4 = a2;
      if (a2 >= v5)
      {
        return -43;
      }
    }
  }

  return v7;
}

uint64_t sub_1000276E0(uint64_t a1, int a2, char *__s, int a4, int a5, int a6)
{
  v6 = **(a1 + 656);
  v7 = *v6;
  if (v7)
  {
    v8 = v6 + 4;
    do
    {
      v9 = *(v8 - 1);
      if (v9 >= a4)
      {
        if (v9 < a5 + a4)
        {
          return sub_100026B18(a1, a2, __s, a4, a5, a6);
        }
      }

      else if (*v8 + v9 > a4)
      {
        return sub_100026B18(a1, a2, __s, a4, a5, a6);
      }

      v8 += 8;
      --v7;
    }

    while (v7);
  }

  return a1;
}

uint64_t sub_100027734(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = *(*(a1 + 776) + 44);
  sub_100020B5C();
  v16 = *(a1 + 690);
  *a4 = v16;
  if (v16 < 1)
  {
    return 0;
  }

  else
  {
    v17 = 0;
    v18 = (a3 + 4);
    v19 = (a3 + 2);
    v20 = 1;
    while (1)
    {
      if (v9)
      {
        v22 = *(v18 - 1);
        v21 = *v18;
      }

      else
      {
        v21 = *v19;
        v22 = *(v19 - 1);
      }

      if (v8 <= v22)
      {
        break;
      }

      if (v21 >= v8 - v22)
      {
        *a4 = v17;
        sub_10001ECB0(a1, 4294966786, v10, v11, v12, v13, v14, v15);
        if (sub_10002D444() >= 3)
        {
          v50 = xmmword_100043460;
          v51 = *&qword_100043470;
          v52 = xmmword_100043480;
          v53 = *&off_100043490;
          sub_10002D0E8(&v50, 2, "\tCheckExtRecord: id=%u %d:(%u,%u), maxBlocks=%u (blockCount > (maxBlocks - startBlock))\n", v29, v30, v31, v32, v33, a2);
        }

        return -510;
      }

      if (v9 && !v22 && v21)
      {
        *a4 = v17;
        sub_10001ECB0(a1, 4294966786, v10, v11, v12, v13, v14, v15);
        if (sub_10002D444() >= 3)
        {
          v50 = xmmword_100043460;
          v51 = *&qword_100043470;
          v52 = xmmword_100043480;
          v53 = *&off_100043490;
          sub_10002D0E8(&v50, 2, "\tCheckExtRecord: id=%u %d:(%u,%u), (startBlock == 0)\n", v34, v35, v36, v37, v38, a2);
        }

        return -510;
      }

      if (v22 && !v21)
      {
        *a4 = v17;
        sub_10001ECB0(a1, 4294966786, v10, v11, v12, v13, v14, v15);
        if (sub_10002D444() >= 3)
        {
          v50 = xmmword_100043460;
          v51 = *&qword_100043470;
          v52 = xmmword_100043480;
          v53 = *&off_100043490;
          sub_10002D0E8(&v50, 2, "\tCheckExtRecord: id=%u %d:(%u,%u), (blockCount == 0)\n", v39, v40, v41, v42, v43, a2);
        }

        return -510;
      }

      if (!v20 && v21)
      {
        *a4 = v17;
        sub_10001ECB0(a1, 4294966786, v10, v11, v12, v13, v14, v15);
        if (sub_10002D444() >= 3)
        {
          v50 = xmmword_100043460;
          v51 = *&qword_100043470;
          v52 = xmmword_100043480;
          v53 = *&off_100043490;
          sub_10002D0E8(&v50, 2, "\tCheckExtRecord: id=%u %d:(%u,%u), (blockCount != 0)\n", v44, v45, v46, v47, v48, a2);
        }

        return -510;
      }

      ++v17;
      v18 += 2;
      v19 += 2;
      v20 = v21;
      if (v16 == v17)
      {
        return 0;
      }
    }

    *a4 = v17;
    sub_10001ECB0(a1, 4294966786, v10, v11, v12, v13, v14, v15);
    if (sub_10002D444() >= 3)
    {
      v50 = xmmword_100043460;
      v51 = *&qword_100043470;
      v52 = xmmword_100043480;
      v53 = *&off_100043490;
      sub_10002D0E8(&v50, 2, "\tCheckExtRecord: id=%u %d:(%u,%u), maxBlocks=%u (startBlock > maxBlocks)\n", v24, v25, v26, v27, v28, a2);
    }

    return -510;
  }
}

uint64_t sub_100027990(uint64_t a1, int a2, uint64_t (*a3)(uint64_t, unsigned __int16 *, unsigned int *, void))
{
  v129 = 0;
  v130 = 0;
  v131 = 0;
  v11 = *(sub_10001EDA4(a2) + 16);
  v128 = 0;
  if (a2 == 408)
  {
    v12 = 20;
  }

  else if (a2 == 136)
  {
    v12 = 24;
  }

  else
  {
    if (a2)
    {
      LOWORD(v20) = 559;
      return v20;
    }

    v12 = 22;
  }

  v134 = 0;
  v132 = 0;
  v133 = 0;
  *(a1 + 56) = 0;
  v13 = sub_100006D88(v11, 0, &v128, v6, v7, v8, v9, v10);
  if (v13 << 16)
  {
    if (v13 << 16 == 2359296)
    {
      sub_10001ECB0(a1, 4294966776, v14, v15, v16, v17, v18, v19);
      LOWORD(v20) = -520;
    }

    else
    {
      LOWORD(v20) = v13;
    }

    v128 = 0;
    goto LABEL_15;
  }

  v21 = v128;
  v22 = sub_10001ED08(a1, a2, 0, v15, v16, v17, v18, v19);
  if (v22)
  {
    goto LABEL_11;
  }

  if (*(v21 + 8) != 1 || *(v21 + 10) != 3)
  {
    sub_10001ECB0(a1, 4294966770, v14, v15, v16, v17, v18, v19);
    LOWORD(v20) = -526;
    goto LABEL_22;
  }

  if (*(v21 + 9))
  {
    LOWORD(v20) = 504;
    sub_10001ECB0(a1, 504, v14, v15, v16, v17, v18, v19);
    goto LABEL_22;
  }

  v24 = sub_100007510(v11, v21, 0);
  v134 = v24;
  if (v24 != 106)
  {
    sub_10001ECB0(a1, 4294966784, v14, v15, v16, v17, v18, v19);
    LOWORD(v20) = -512;
    goto LABEL_22;
  }

  v25 = *(v21 + 14);
  if (v25 > 8)
  {
    goto LABEL_27;
  }

  *(v11 + 32) = v25;
  v27 = *(v21 + 16);
  if (v27 >= *(v11 + 56) || v25 && !v27)
  {
    if (byte_10004350E)
    {
      v139 = xmmword_100043460;
      v140 = *&qword_100043470;
      v141 = xmmword_100043480;
      v142 = *&off_100043490;
      sub_10002D0E8(&v139, 2, "Header root node %u, calculated total nodes %u, tree depth %u, header node num %u\n", v15, v16, v17, v18, v19, v27);
    }

    v26 = -514;
LABEL_35:
    sub_10001ECB0(a1, v26, v14, v15, v16, v17, v18, v19);
LABEL_36:
    *(a1 + v12) |= 0x100u;
LABEL_37:
    LOWORD(v20) = -1001;
    goto LABEL_22;
  }

  *(v11 + 36) = v27;
  v28 = !v27 || v25 == 0;
  if (v28 && v27 != v25)
  {
LABEL_27:
    v26 = -527;
    goto LABEL_35;
  }

  if (sub_100021DBC(a1, 1) && (v29 = *(v21 + 32), v30 = *(v11 + 768), *(*(v30 + 8) + 40) < v29))
  {
    v31 = 0;
    LOWORD(v20) = 0;
    v32 = 0;
    v33 = (a1 + 872);
    v34 = (v30 + 40);
    v120 = v29 / *(*(v30 + 8) + 40);
    do
    {
      v35 = *v34;
      if (*v34 % v120)
      {
        *(a1 + v12) |= 0x100u;
        v36 = **(v11 + 768);
        v37 = *(a1 + 888);
        v139 = *v33;
        v140 = v37;
        v38 = *(a1 + 920);
        v141 = *(a1 + 904);
        v142 = v38;
        sub_10002D0A4(&v139, 615, v14, v15, v16, v17, v18, v19, v36);
        if (!byte_10004350E)
        {
          goto LABEL_37;
        }

        v39 = **(v11 + 768);
        v40 = *(v34 - 1);
        v41 = *v34;
        v139 = xmmword_100043460;
        v140 = *&qword_100043470;
        v141 = xmmword_100043480;
        v142 = *&off_100043490;
        sub_10002D0E8(&v139, 2, "Improperly split node in file id %u, offset %u (extent #%d), Extent <%u, %u>\n", v15, v16, v17, v18, v19, v39);
        v35 = *v34;
        LOWORD(v20) = -1001;
      }

      v32 += v35;
      ++v31;
      v34 += 2;
    }

    while (v31 != 8);
    bzero(&v139, 0x220uLL);
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v126 = 0;
    v42 = **(v11 + 768);
    v116 = v42;
    sub_100026CB8(1, 0, v42, 0, &v140 + 4);
    v127[0] = &v135;
    v127[1] = 0x100000040;
    if (!sub_100005678(*(a1 + 784), 1u, &v139, v127, &v126, v43, v44, v45) && DWORD2(v140) == v116 && !BYTE6(v140))
    {
      v46 = 0;
      while (1)
      {
        v47 = &v135 + 2 * v46;
        v48 = v47[1];
        if (v48 % v120)
        {
          *(a1 + v12) |= 0x100u;
          v49 = *(a1 + 888);
          v122 = *v33;
          v123 = v49;
          v50 = *(a1 + 920);
          v124 = *(a1 + 904);
          v125 = v50;
          sub_10002D0A4(&v122, 615, v14, v15, v16, v17, v18, v19, v116);
          if (!byte_10004350E)
          {
            goto LABEL_37;
          }

          v51 = *v47;
          v52 = v47[1];
          v122 = xmmword_100043460;
          v123 = *&qword_100043470;
          v124 = xmmword_100043480;
          v125 = *&off_100043490;
          sub_10002D0E8(&v122, 2, "Improperly split node in file id %u, startBlock %u, index %d (offset %u), extent <%u, %u>\n", v15, v16, v17, v18, v19, v116);
          v48 = v47[1];
          LOWORD(v20) = -1001;
        }

        v32 += v48;
        if (++v46 == 8)
        {
          v137 = 0u;
          v138 = 0u;
          v135 = 0u;
          v136 = 0u;
          if (sub_100005678(*(a1 + 784), 1u, &v139, v127, &v126, v17, v18, v19))
          {
            break;
          }

          if (DWORD2(v140) != v116)
          {
            break;
          }

          v46 = 0;
          if (BYTE6(v140))
          {
            break;
          }
        }
      }
    }
  }

  else
  {
    LOWORD(v20) = 0;
  }

  v53 = *(v11 + 36);
  if (!v53)
  {
LABEL_15:
    if (!v20)
    {
      v20 = (*(a1 + v12) << 23 >> 31) & 0xFFFFFC17;
    }

    goto LABEL_22;
  }

  LOWORD(v54) = 1;
  *(a1 + 64) = 1;
  v55 = *(a1 + 72);
  *v55 = v53;
  v56 = &unk_100043000;
  *(v55 + 4) = -1;
  *(v55 + 8) = 0;
  v115 = 0;
  v117 = 1;
  while (1)
  {
    while (1)
    {
      v57 = (*(a1 + 72) + 16 * (v54 - 1));
      v58 = *v57;
      v59 = *(v57 + 2);
      *(a1 + 56) = v58;
      sub_100006F74(v11, &v128, v14, v15, v16, v17, v18, v19);
      v65 = sub_100006D88(v11, v58, &v128, v60, v61, v62, v63, v64);
      if (v65)
      {
        LOWORD(v20) = v65;
        if (v65 == 36)
        {
          sub_10001ECB0(a1, 4294966776, v14, v15, v16, v17, v18, v19);
          LOWORD(v20) = -520;
        }

        v128 = 0;
        if (!v56[1294])
        {
          goto LABEL_15;
        }

        goto LABEL_115;
      }

      v66 = v59;
      v67 = v128;
      v121 = v66;
      if ((v66 & 0x8000) == 0)
      {
        LOWORD(v20) = 0;
        goto LABEL_112;
      }

      if (sub_10001ED08(a1, a2, v58, v15, v16, v17, v18, v19))
      {
        goto LABEL_36;
      }

      v68 = sub_100028554(a1, v67, v11, v15, v16, v17, v18, v19);
      v20 = v68;
      if (v68)
      {
        if (v68 != 65012 && *(v67 + 8))
        {
          goto LABEL_15;
        }

        *(a1 + v12) |= 0x100u;
        v20 = 64535;
      }

      if (v67[1] != v57[2])
      {
        sub_10001ECB0(a1, 4294966777, v14, v15, v16, v17, v18, v19);
        if (!v56[1294])
        {
          goto LABEL_36;
        }

        v69 = *(v129 + 24);
        v70 = v67[1];
        v71 = v57[2];
        v72 = *(v129 + 32);
        v135 = xmmword_100043460;
        v136 = *&qword_100043470;
        v137 = xmmword_100043480;
        v138 = *&off_100043490;
        sub_10002D0E8(&v135, 2, "Node %d's back link is 0x%x; expected 0x%x\n    disk offset = 0x%llx, size = 0x%x\n", v15, v16, v17, v18, v19, v58);
        if (!v56[1294])
        {
          goto LABEL_36;
        }

        v20 = 65017;
      }

      v73 = v57[3];
      if (v73 == -1)
      {
        v57[3] = v58;
      }

      else if (*v67 != v73)
      {
        sub_10001ECB0(a1, 4294966777, v14, v15, v16, v17, v18, v19);
        if (!v56[1294])
        {
          goto LABEL_36;
        }

        v74 = *(v129 + 24);
        v75 = *v67;
        v76 = v57[3];
        v77 = *(v129 + 32);
        v135 = xmmword_100043460;
        v136 = *&qword_100043470;
        v137 = xmmword_100043480;
        v138 = *&off_100043490;
        sub_10002D0E8(&v135, 2, "Node %d's forward link is 0x%x; expected 0x%x\n    disk offset = 0x%llx, size = 0x%x\n", v15, v16, v17, v18, v19, v58);
        if (!v56[1294])
        {
          goto LABEL_36;
        }

        v20 = 65017;
      }

      if (*(v67 + 8))
      {
        if (*(v67 + 8) != 255)
        {
          sub_10001ECB0(a1, 4294966781, v14, v15, v16, v17, v18, v19);
          v20 = 65021;
          if (!v56[1294])
          {
            goto LABEL_22;
          }
        }
      }

      if (*(v11 + 32) - *(a1 + 64) + 1 == *(v67 + 9))
      {
        break;
      }

      LOWORD(v20) = 504;
      sub_10001ECB0(a1, 504, v14, v15, v16, v17, v18, v19);
      if (!v56[1294])
      {
        goto LABEL_36;
      }

LABEL_95:
      if ((dword_100043528 & 0x800) == 0)
      {
        goto LABEL_96;
      }

      v135 = xmmword_100043460;
      v136 = *&qword_100043470;
      v137 = xmmword_100043480;
      v138 = *&off_100043490;
      sub_10002D0E8(&v135, 2, "Node %u:\n", v15, v16, v17, v18, v19, v130);
      sub_10002E7B8(v128, v131, 1, v85, v86, v87, v88, v89);
LABEL_115:
      v54 = --*(a1 + 64);
      if (v54 <= 0)
      {
        goto LABEL_150;
      }
    }

    if (v20)
    {
      goto LABEL_95;
    }

LABEL_96:
    if ((v117 & 1) == 0)
    {
      sub_100007494(v11, v67, 0, &v132, &v133, &v134);
      if (sub_10001F210(v11, &v139, v132))
      {
        if (v56[1294])
        {
          v135 = xmmword_100043460;
          v136 = *&qword_100043470;
          v137 = xmmword_100043480;
          v138 = *&off_100043490;
          sub_10002D0E8(&v135, 2, "Index key doesn't match first node key\n", v15, v16, v17, v18, v19, v112);
          if ((dword_100043528 & 0x400) != 0)
          {
            v78 = *v57;
            v135 = xmmword_100043460;
            v136 = *&qword_100043470;
            v137 = xmmword_100043480;
            v138 = *&off_100043490;
            sub_10002D0E8(&v135, 2, "Found (child; node %u):\n", v15, v16, v17, v18, v19, v78);
            if ((*(v11 + 136) & 2) != 0)
            {
              v84 = *v132 + 2;
            }

            else
            {
              v84 = *v132 + 1;
            }

            sub_10002E7B8(v132, v84, 0, v79, v80, v81, v82, v83);
            v90 = *(v57 - 4);
            v135 = xmmword_100043460;
            v136 = *&qword_100043470;
            v137 = xmmword_100043480;
            v138 = *&off_100043490;
            sub_10002D0E8(&v135, 2, "Expected (parent; node %u):\n", v91, v92, v93, v94, v95, v90);
            if ((*(v11 + 136) & 2) != 0)
            {
              v101 = v139 + 2;
            }

            else
            {
              v101 = v139 + 1;
            }

            sub_10002E7B8(&v139, v101, 0, v96, v97, v98, v99, v100);
          }
        }

        sub_10001ECB0(a1, 4294966779, v14, v15, v16, v17, v18, v19);
        *(a1 + v12) |= 0x100u;
        LOWORD(v20) = -1001;
      }
    }

    if (!*(v67 + 8))
    {
      v102 = sub_100004B1C(a1);
      LOWORD(v20) = v102;
      if (v102)
      {
        goto LABEL_22;
      }
    }

    ++*(a1 + 736);
LABEL_112:
    if (!*(v67 + 8))
    {
      v103 = *(v67 + 5);
      v104 = v121 + 1;
      if (v103 <= (v121 + 1))
      {
        v56 = &unk_100043000;
        goto LABEL_115;
      }

      *(v57 + 2) = v104;
      v107 = ++*(a1 + 64);
      v118 = v107;
      if (v107 > 8)
      {
        goto LABEL_27;
      }

      v113 = *(a1 + 72);
      sub_100007494(v11, v67, (v121 + 1), &v132, &v133, &v134);
      v114 = *v133;
      if (!*v133 || v114 >= *(v11 + 56))
      {
LABEL_151:
        v26 = -518;
        goto LABEL_35;
      }

      if ((*(v11 + 136) & 2) != 0)
      {
        v109 = *v132 + 2;
      }

      else
      {
        v108 = *v132 + 1;
      }

      v119 = v113 + 16 * v118 - 16;
      __memmove_chk();
      *v119 = v114;
      *(v119 + 4) = -1;
      *(v119 + 8) = 0;
      if (v121 > 0x7FFE)
      {
        if (!v57[2])
        {
          goto LABEL_141;
        }

        v110 = *(v119 + 12);
      }

      else
      {
        sub_100007494(v11, v67, v121, &v132, &v133, &v134);
        v110 = *v133;
        if (!*v133 || v110 >= *(v11 + 56))
        {
          goto LABEL_151;
        }
      }

      *(v119 + 8) = v110;
LABEL_141:
      *(v119 + 12) = 0;
      if (v103 - 1 <= v104)
      {
        if (!v57[3])
        {
LABEL_148:
          v117 = 0;
          v54 = *(a1 + 64);
          goto LABEL_149;
        }

        v111 = -1;
      }

      else
      {
        sub_100007494(v11, v67, (v121 + 2), &v132, &v133, &v134);
        v111 = *v133;
        if (!*v133 || v111 >= *(v11 + 56))
        {
          goto LABEL_151;
        }
      }

      *(v119 + 12) = v111;
      goto LABEL_148;
    }

    if (!v57[2])
    {
      *(v11 + 44) = v58;
    }

    if (!v57[3])
    {
      *(v11 + 48) = v58;
    }

    v105 = *(v67 + 5);
    if (a3)
    {
      if (*(v67 + 5))
      {
        break;
      }
    }

LABEL_127:
    v115 += v105;
    v54 = --*(a1 + 64);
LABEL_149:
    v56 = &unk_100043000;
    if (v54 <= 0)
    {
LABEL_150:
      *(v11 + 40) = v115;
      goto LABEL_15;
    }
  }

  v106 = 0;
  while (1)
  {
    sub_100007494(v11, v67, v106, &v132, &v133, &v134);
    v22 = a3(a1, v132, v133, v134);
    if (v22)
    {
      break;
    }

    if (*(v67 + 5) <= ++v106)
    {
      LOWORD(v20) = 0;
      goto LABEL_127;
    }
  }

LABEL_11:
  LOWORD(v20) = v22;
LABEL_22:
  if (v128)
  {
    sub_100006F74(v11, &v128, v14, v15, v16, v17, v18, v19);
  }

  return v20;
}

uint64_t sub_100028554(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  if ((a3[68] & 2) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  if (*(a2 + 10))
  {
    v11 = a3;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v68 = 0;
    v67 = 0;
    v66 = 0;
    while (1)
    {
      sub_100007494(v11, a2, v15, &v67, &v66, &v68);
      a3 = v67;
      if ((*(v11 + 136) & 2) != 0)
      {
        v16 = *v67;
      }

      else
      {
        v16 = *v67;
      }

      if (v16 > *(v11 + 54))
      {
        v13 = 4294966773;
        a1 = v9;
        v52 = 4294966773;
        goto LABEL_33;
      }

      if (v14 && (sub_10001F210(v11, v14, v67) & 0x80000000) == 0)
      {
        if (*(v11 + 54) == 516 && !sub_10001F210(v11, v14, &unk_10004004C))
        {
          if (sub_10002D444() >= 1)
          {
            v62 = xmmword_100043460;
            v63 = *&qword_100043470;
            v64 = xmmword_100043480;
            v65 = *&off_100043490;
            sub_10002D0E8(&v62, 2, "Problem: b-tree key for HFS+ Private Data directory is out of order.\n", v54, v55, v56, v57, v58, v59);
          }

          return 476;
        }

        v13 = 4294966772;
        sub_10001ECB0(v9, 4294966772, v17, a4, a5, a6, a7, a8);
        if (sub_10002D444() >= 1)
        {
          v62 = xmmword_100043460;
          v63 = *&qword_100043470;
          v64 = xmmword_100043480;
          v65 = *&off_100043490;
          sub_10002D0E8(&v62, 2, "Records %d and %d (0-based); offsets 0x%04X and 0x%04X\n", a4, a5, a6, a7, a8, (v12 - 1));
        }
      }

      v14 = v67;
      v12 = ++v15;
      if (v15 >= *(a2 + 10))
      {
        if (v13 == -524)
        {
          v18 = dword_100043528;
          if ((dword_100043528 & 0x400) != 0 && *(a2 + 10))
          {
            v19 = 0;
            v20 = 0;
            do
            {
              sub_100007494(v11, a2, v20, &v67, &v66, &v68);
              if ((*(v11 + 136) & 2) != 0)
              {
                v26 = *v67;
              }

              else
              {
                v26 = *v67;
              }

              v62 = xmmword_100043460;
              v63 = *&qword_100043470;
              v64 = xmmword_100043480;
              v65 = *&off_100043490;
              sub_10002D0E8(&v62, 2, "Record %d (offset 0x%04X):\n", v21, v22, v23, v24, v25, v19);
              sub_10002E7B8(v67, v10 + v26, 0, v27, v28, v29, v30, v31);
              v62 = xmmword_100043460;
              v63 = *&qword_100043470;
              v64 = xmmword_100043480;
              v65 = *&off_100043490;
              sub_10002D0E8(&v62, 2, "--\n", v32, v33, v34, v35, v36, v60);
              sub_10002E7B8(v66, v68, 0, v37, v38, v39, v40, v41);
              v62 = xmmword_100043460;
              v63 = *&qword_100043470;
              v64 = xmmword_100043480;
              v65 = *&off_100043490;
              sub_10002D0E8(&v62, 2, "\n", v42, v43, v44, v45, v46, v61);
              v19 = ++v20;
            }

            while (v19 < *(a2 + 10));
            v18 = dword_100043528;
          }

          if ((v18 & 0x800) != 0)
          {
            v62 = xmmword_100043460;
            v63 = *&qword_100043470;
            v64 = xmmword_100043480;
            v65 = *&off_100043490;
            sub_10002D0E8(&v62, 2, "Node:\n", a4, a5, a6, a7, a8, v59);
            sub_10002E7B8(a2, *(v11 + 52), 1, v47, v48, v49, v50, v51);
          }

          return 4294966772;
        }

        return v13;
      }
    }
  }

  if (*a2 || *(a2 + 4))
  {
    return 0;
  }

  v13 = 4294966776;
  v52 = 4294966776;
LABEL_33:
  sub_10001ECB0(a1, v52, a3, a4, a5, a6, a7, a8);
  return v13;
}

uint64_t sub_100028890(uint64_t a1, int a2)
{
  v10 = *(sub_10001EDA4(a2) + 16);
  memset(v35, 0, sizeof(v35));
  v11 = *(v10 + 56) + 7;
  if (v11 >= 8)
  {
    v13 = 0;
    v14 = v11 >> 3;
    v15 = 2;
    while (1)
    {
      *(a1 + 56) = v13;
      if (v35[0])
      {
        sub_100006F74(v10, v35, v4, v5, v6, v7, v8, v9);
      }

      v16 = sub_100006D88(v10, v13, v35, v5, v6, v7, v8, v9);
      v12 = v16;
      if (v16)
      {
        break;
      }

      v23 = v35[0];
      if (v13)
      {
        v24 = sub_10001ED08(a1, a2, v13, v18, v19, v20, v21, v22);
        if (v24)
        {
          v12 = v24;
LABEL_31:
          if (v35[0])
          {
            sub_100006F74(v10, v35, v4, v5, v6, v7, v8, v9);
          }

          return v12;
        }

        if (*(v23 + 8) != 2)
        {
          v12 = -525;
          sub_10001ECB0(a1, 4294966771, v4, v5, v6, v7, v8, v9);
          if (byte_10004350E)
          {
            v28 = *(v23 + 8);
            v31 = xmmword_100043460;
            v32 = *&qword_100043470;
            v33 = xmmword_100043480;
            v34 = *&off_100043490;
            sub_10002D0E8(&v31, 2, "Expected map node, got type %d\n", v5, v6, v7, v8, v9, v28);
          }

          goto LABEL_31;
        }

        if (*(v23 + 10) != 1)
        {
          v12 = -525;
          sub_10001ECB0(a1, 4294966771, v4, v5, v6, v7, v8, v9);
          if (byte_10004350E)
          {
            v29 = *(v23 + 10);
            v31 = xmmword_100043460;
            v32 = *&qword_100043470;
            v33 = xmmword_100043480;
            v34 = *&off_100043490;
            sub_10002D0E8(&v31, 2, "Expected %d records in node, found %d\n", v5, v6, v7, v8, v9, 1);
          }

          goto LABEL_31;
        }

        if (*(v23 + 9))
        {
          sub_10001ECB0(a1, 504, v4, v5, v6, v7, v8, v9);
        }

        v12 = 0;
      }

      v25 = sub_100007510(v10, v23, v15);
      v15 = 0;
      v14 -= v25;
      v13 = *v23;
      if (*v23)
      {
        v26 = v14 <= 0;
      }

      else
      {
        v26 = 1;
      }

      if (v26)
      {
        if (v13)
        {
          v27 = 0;
        }

        else
        {
          v27 = v14 < 1;
        }

        if (!v27)
        {
          v12 = -522;
          sub_10001ECB0(a1, 4294966774, v4, v5, v6, v7, v8, v9);
        }

        goto LABEL_31;
      }
    }

    if (v16 == 36)
    {
      v12 = -520;
      sub_10001ECB0(a1, 4294966776, v17, v18, v19, v20, v21, v22);
    }
  }

  else
  {
    return 0;
  }

  return v12;
}

uint64_t sub_100028AB8(uint64_t a1, int a2, _WORD *a3)
{
  v5 = *(sub_10001EDA4(a2) + 16);
  v6 = **(v5 + 760);
  v28 = 0u;
  v29 = 0u;
  v7 = *(v5 + 56);
  if (!v7)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0x80;
  while (1)
  {
    if ((v9 & *v6) != 0)
    {
      goto LABEL_12;
    }

    v10 = (*(v5 + 160))(*(v5 + 768), v8, 0, &v28);
    if (v10)
    {
      break;
    }

    if (DWORD2(v29) >= 4)
    {
      v17 = v28;
      v18 = DWORD2(v29) >> 2;
      while (!*v17++)
      {
        if (!--v18)
        {
          goto LABEL_11;
        }
      }

      *a3 |= 4u;
      *(a1 + 56) = v8;
      v20 = *(a1 + 888);
      v24 = *(a1 + 872);
      v25 = v20;
      v21 = *(a1 + 920);
      v26 = *(a1 + 904);
      v27 = v21;
      sub_10002D0A4(&v24, 608, v11, v12, v13, v14, v15, v16, v8);
      if (!byte_10004350E)
      {
        if (v28)
        {
          (*(v5 + 168))(*(v5 + 768), &v28, 0);
        }

        return 0;
      }
    }

LABEL_11:
    (*(v5 + 168))(*(v5 + 768), &v28, 0);
    *&v28 = 0;
    v7 = *(v5 + 56);
LABEL_12:
    if (v9 >> 1)
    {
      v9 >>= 1;
    }

    else
    {
      ++v6;
      v9 = 0x80;
    }

    if (++v8 >= v7)
    {
      return 0;
    }
  }

  v23 = v10;
  if (byte_10004350E)
  {
    v24 = xmmword_100043460;
    v25 = *&qword_100043470;
    v26 = xmmword_100043480;
    v27 = *&off_100043490;
    sub_10002D0E8(&v24, 2, "Couldn't read node #%u\n", v12, v13, v14, v15, v16, v8);
  }

  return v23;
}

uint64_t sub_100028C70(uint64_t a1, int a2)
{
  memset(v49, 0, 106);
  v4 = *(sub_10001EDA4(a2) + 16);
  if (a2 == 408)
  {
    v5 = 808;
    v6 = 20;
  }

  else if (a2 == 136)
  {
    v5 = 792;
    v6 = 24;
  }

  else
  {
    if (a2)
    {
      LOWORD(v8) = -1;
      return v8;
    }

    v5 = 784;
    v6 = 22;
  }

  v7 = *(a1 + v5);
  *(a1 + 56) = 0;
  v8 = sub_10001EDB4(a1, v7, v49);
  if (!v8)
  {
    v15 = *(v4 + 40);
    v16 = *(v49 + 6);
    if (v15 != *(v49 + 6))
    {
      v17 = *(a1 + 888);
      v45 = *(a1 + 872);
      v46 = v17;
      v18 = *(a1 + 920);
      v47 = *(a1 + 904);
      v48 = v18;
      sub_10002D0A4(&v45, 558, v9, v10, v11, v12, v13, v14, v44);
      __sprintf_chk(v51, 0, 0x20uLL, "%ld", *(v4 + 40));
      __sprintf_chk(v50, 0, 0x20uLL, "%ld", *(v49 + 6));
      v19 = *(a1 + 888);
      v45 = *(a1 + 872);
      v46 = v19;
      v20 = *(a1 + 920);
      v47 = *(a1 + 904);
      v48 = v20;
      sub_10002D0A4(&v45, 559, v21, v22, v23, v24, v25, v26, v51);
    }

    if (*(v4 + 32) == LOWORD(v49[0]))
    {
      if (*(v4 + 36) == *(v49 + 2))
      {
        if (*(v4 + 44) == *(v49 + 10))
        {
          if (*(v4 + 48) == *(v49 + 14))
          {
            if (*(v4 + 52) == WORD1(v49[1]))
            {
              if (*(v4 + 54) == WORD2(v49[1]))
              {
                if (*(v4 + 56) == *(&v49[1] + 6))
                {
                  if (*(v4 + 60) == *(&v49[1] + 10))
                  {
                    if (v15 != v16)
                    {
                      LOWORD(v8) = 0;
                      *(a1 + v6) |= 0x8000u;
                      return v8;
                    }

LABEL_38:
                    LOWORD(v8) = 0;
                    return v8;
                  }

                  if (sub_10002D444() >= 3)
                  {
                    v40 = *(v4 + 60);
                    v45 = xmmword_100043460;
                    v46 = *&qword_100043470;
                    v47 = xmmword_100043480;
                    v48 = *&off_100043490;
                    sub_10002D0E8(&v45, 2, "\tinvalid free nodes - calculated %d header %d \n", v28, v29, v30, v31, v32, v40);
                  }
                }

                else if (sub_10002D444() >= 3)
                {
                  v39 = *(v4 + 56);
                  v45 = xmmword_100043460;
                  v46 = *&qword_100043470;
                  v47 = xmmword_100043480;
                  v48 = *&off_100043490;
                  sub_10002D0E8(&v45, 2, "\tinvalid total nodes - calculated %d header %d \n", v28, v29, v30, v31, v32, v39);
                }
              }

              else if (sub_10002D444() >= 3)
              {
                v38 = *(v4 + 54);
                v45 = xmmword_100043460;
                v46 = *&qword_100043470;
                v47 = xmmword_100043480;
                v48 = *&off_100043490;
                sub_10002D0E8(&v45, 2, "\tinvalid max key length - calculated %d header %d \n", v28, v29, v30, v31, v32, v38);
              }
            }

            else if (sub_10002D444() >= 3)
            {
              v37 = *(v4 + 52);
              v45 = xmmword_100043460;
              v46 = *&qword_100043470;
              v47 = xmmword_100043480;
              v48 = *&off_100043490;
              sub_10002D0E8(&v45, 2, "\tinvalid node size - calculated %d header %d \n", v28, v29, v30, v31, v32, v37);
            }
          }

          else if (sub_10002D444() >= 3)
          {
            v36 = *(v4 + 48);
            v45 = xmmword_100043460;
            v46 = *&qword_100043470;
            v47 = xmmword_100043480;
            v48 = *&off_100043490;
            sub_10002D0E8(&v45, 2, "\tinvalid last leaf node - calculated %d header %d \n", v28, v29, v30, v31, v32, v36);
          }
        }

        else if (sub_10002D444() >= 3)
        {
          v35 = *(v4 + 44);
          v45 = xmmword_100043460;
          v46 = *&qword_100043470;
          v47 = xmmword_100043480;
          v48 = *&off_100043490;
          sub_10002D0E8(&v45, 2, "\tinvalid first leaf node - calculated %d header %d \n", v28, v29, v30, v31, v32, v35);
        }
      }

      else if (sub_10002D444() >= 3)
      {
        v34 = *(v4 + 36);
        v45 = xmmword_100043460;
        v46 = *&qword_100043470;
        v47 = xmmword_100043480;
        v48 = *&off_100043490;
        sub_10002D0E8(&v45, 2, "\tinvalid root node - calculated %d header %d \n", v28, v29, v30, v31, v32, v34);
      }
    }

    else if (sub_10002D444() >= 3)
    {
      v33 = *(v4 + 32);
      v45 = xmmword_100043460;
      v46 = *&qword_100043470;
      v47 = xmmword_100043480;
      v48 = *&off_100043490;
      sub_10002D0E8(&v45, 2, "\tinvalid tree depth - calculated %d header %d \n", v28, v29, v30, v31, v32, v33);
    }

    *(a1 + v6) |= 0x8000u;
    v41 = *(a1 + 888);
    v45 = *(a1 + 872);
    v46 = v41;
    v42 = *(a1 + 920);
    v47 = *(a1 + 904);
    v48 = v42;
    sub_10002D0A4(&v45, 550, v27, v28, v29, v30, v31, v32, v44);
    goto LABEL_38;
  }

  return v8;
}

uint64_t sub_1000290AC(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  while (a3)
  {
    --a3;
    v4 = *a1++;
    v3 = v4;
    v5 = *a2++;
    if (v3 != v5)
    {
      return -1;
    }
  }

  return 0;
}

uint64_t sub_1000290D8(uint64_t a1, int a2)
{
  memset(&v32[1], 0, 24);
  v10 = *(sub_10001EDA4(a2) + 16);
  if (a2 == 408)
  {
    v11 = 20;
  }

  else if (a2 == 136)
  {
    v11 = 24;
  }

  else
  {
    if (a2)
    {
      return 0xFFFFFFFFLL;
    }

    v11 = 22;
  }

  v32[0] = 0;
  v12 = *(v10 + 56) + 7;
  if (v12 < 8)
  {
    return 0;
  }

  v14 = 0;
  v15 = **(v10 + 760);
  v16 = v12 >> 3;
  v17 = 2;
  do
  {
    *(a1 + 56) = v14;
    if (v32[0])
    {
      sub_100006F74(v10, v32, v4, v5, v6, v7, v8, v9);
    }

    v18 = sub_100006D88(v10, v14, v32, v5, v6, v7, v8, v9);
    if (v18)
    {
      v13 = v18;
      goto LABEL_32;
    }

    v19 = v32[0];
    v20 = sub_100007510(v10, v32[0], v17);
    v21 = *(v19 + *(v10 + 52) + -2 * (v17 & 0x7FFF) - 2);
    v22 = v19 + v21;
    if (v16 >= v20)
    {
      v23 = v20;
    }

    else
    {
      v23 = v16;
    }

    v24 = v23;
    v25 = v15;
    while (v24)
    {
      --v24;
      v26 = *v25++;
      v27 = *(v19 + v21++);
      if (v26 != v27)
      {
        *(a1 + v11) |= 0x4000u;
        sub_10001ECB0(a1, 4294966771, v4, v5, v6, v7, v8, v9);
LABEL_31:
        v13 = 0;
        goto LABEL_32;
      }
    }

    v17 = 0;
    v16 -= v23;
    v15 += v23;
    v14 = *v19;
    if (v14)
    {
      v28 = v16 <= 0;
    }

    else
    {
      v28 = 1;
    }
  }

  while (!v28);
  if (v23 >= v20)
  {
    goto LABEL_31;
  }

  v29 = &v22[v20];
  v30 = &v22[v23];
  do
  {
    if (*v30)
    {
      *(a1 + v11) |= 0x4000u;
    }

    v13 = 0;
    ++v30;
  }

  while (v30 < v29);
LABEL_32:
  if (v32[0])
  {
    sub_100006F74(v10, v32, v4, v5, v6, v7, v8, v9);
  }

  return v13;
}

uint64_t sub_1000292B0(uint64_t a1, unsigned __int16 *a2, int a3)
{
  v4 = sub_10001F138(a2, a3);
  if (a3)
  {
    v5 = -256;
  }

  else
  {
    v5 = -32;
  }

  if (a3)
  {
    v6 = -255;
  }

  else
  {
    v6 = -31;
  }

  if (v4 + v5 >= v6)
  {
    return 0;
  }

  else
  {
    return 503;
  }
}

uint64_t sub_100029308(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 48) = 1;
  v10 = *(a1 + 776);
  if (*a2 == *v10)
  {
    v11 = 0;
  }

  else
  {
    if (sub_10002D444() >= 3)
    {
      *(&v51 + 1) = *(&xmmword_100043460 + 1);
      v52 = *&qword_100043470;
      v53 = xmmword_100043480;
      v54 = *&off_100043490;
      sub_10002D0E8(&v51, 2, "\tinvalid MDB drSigWord \n", v12, a5, a6, a7, a8, xmmword_100043460);
    }

    v11 = 1;
  }

  if (*(a2 + 1) != *(v10 + 4))
  {
    if (sub_10002D444() >= 3)
    {
      *(&v51 + 1) = *(&xmmword_100043460 + 1);
      v52 = *&qword_100043470;
      v53 = xmmword_100043480;
      v54 = *&off_100043490;
      sub_10002D0E8(&v51, 2, "\tinvalid MDB drCrDate \n", v13, a5, a6, a7, a8, xmmword_100043460);
    }

    v11 = 1;
  }

  if (*(a2 + 3) != *(v10 + 5))
  {
    if (sub_10002D444() >= 3)
    {
      *(&v51 + 1) = *(&xmmword_100043460 + 1);
      v52 = *&qword_100043470;
      v53 = xmmword_100043480;
      v54 = *&off_100043490;
      sub_10002D0E8(&v51, 2, "\tinvalid MDB drLsMod \n", v14, a5, a6, a7, a8, xmmword_100043460);
    }

    v11 = 1;
  }

  if (a2[5] != v10[2])
  {
    if (sub_10002D444() >= 3)
    {
      *(&v51 + 1) = *(&xmmword_100043460 + 1);
      v52 = *&qword_100043470;
      v53 = xmmword_100043480;
      v54 = *&off_100043490;
      sub_10002D0E8(&v51, 2, "\tinvalid MDB drAtrb \n", v15, a5, a6, a7, a8, xmmword_100043460);
    }

    v11 = 1;
  }

  if (a2[7] != v10[58])
  {
    if (sub_10002D444() >= 3)
    {
      *(&v51 + 1) = *(&xmmword_100043460 + 1);
      v52 = *&qword_100043470;
      v53 = xmmword_100043480;
      v54 = *&off_100043490;
      sub_10002D0E8(&v51, 2, "\tinvalid MDB drVBMSt \n", v16, a5, a6, a7, a8, xmmword_100043460);
    }

    v11 = 1;
  }

  if (*(v10 + 11) != a2[9])
  {
    if (sub_10002D444() >= 3)
    {
      *(&v51 + 1) = *(&xmmword_100043460 + 1);
      v52 = *&qword_100043470;
      v53 = xmmword_100043480;
      v54 = *&off_100043490;
      sub_10002D0E8(&v51, 2, "\tinvalid MDB drNmAlBlks \n", v17, a5, a6, a7, a8, xmmword_100043460);
    }

    v11 = 1;
  }

  if (*(a2 + 6) != *(v10 + 15))
  {
    if (sub_10002D444() >= 3)
    {
      *(&v51 + 1) = *(&xmmword_100043460 + 1);
      v52 = *&qword_100043470;
      v53 = xmmword_100043480;
      v54 = *&off_100043490;
      sub_10002D0E8(&v51, 2, "\tinvalid MDB drClpSiz \n", v18, a5, a6, a7, a8, xmmword_100043460);
    }

    v11 = 1;
  }

  if (a2[14] != v10[59])
  {
    if (sub_10002D444() >= 3)
    {
      *(&v51 + 1) = *(&xmmword_100043460 + 1);
      v52 = *&qword_100043470;
      v53 = xmmword_100043480;
      v54 = *&off_100043490;
      sub_10002D0E8(&v51, 2, "\tinvalid MDB drAlBlSt \n", v19, a5, a6, a7, a8, xmmword_100043460);
    }

    v11 = 1;
  }

  if (*(a2 + 15) != *(v10 + 16))
  {
    if (sub_10002D444() >= 3)
    {
      *(&v51 + 1) = *(&xmmword_100043460 + 1);
      v52 = *&qword_100043470;
      v53 = xmmword_100043480;
      v54 = *&off_100043490;
      sub_10002D0E8(&v51, 2, "\tinvalid MDB drNxtCNID \n", v20, a5, a6, a7, a8, xmmword_100043460);
    }

    v11 = 1;
  }

  v21 = (a2 + 18);
  v22 = (v10 + 62);
  v23 = *(a2 + 36) + 1;
  while (v23)
  {
    --v23;
    v25 = *v21++;
    v24 = v25;
    v26 = *v22++;
    if (v24 != v26)
    {
      if (sub_10002D444() >= 3)
      {
        *(&v51 + 1) = *(&xmmword_100043460 + 1);
        v52 = *&qword_100043470;
        v53 = xmmword_100043480;
        v54 = *&off_100043490;
        sub_10002D0E8(&v51, 2, "\tinvalid MDB drVN \n", v27, a5, a6, a7, a8, xmmword_100043460);
      }

      v11 = 1;
      break;
    }
  }

  if (*(a2 + 16) != *(v10 + 6))
  {
    if (sub_10002D444() >= 3)
    {
      *(&v51 + 1) = *(&xmmword_100043460 + 1);
      v52 = *&qword_100043470;
      v53 = xmmword_100043480;
      v54 = *&off_100043490;
      sub_10002D0E8(&v51, 2, "\tinvalid MDB drVolBkUp \n", v28, a5, a6, a7, a8, xmmword_100043460);
    }

    v11 = 1;
  }

  if (a2[34] != v10[60])
  {
    if (sub_10002D444() >= 3)
    {
      *(&v51 + 1) = *(&xmmword_100043460 + 1);
      v52 = *&qword_100043470;
      v53 = xmmword_100043480;
      v54 = *&off_100043490;
      sub_10002D0E8(&v51, 2, "\tinvalid MDB drVSeqNum \n", v29, a5, a6, a7, a8, xmmword_100043460);
    }

    v11 = 1;
  }

  if (*(a2 + 35) != *(v10 + 17))
  {
    if (sub_10002D444() >= 3)
    {
      *(&v51 + 1) = *(&xmmword_100043460 + 1);
      v52 = *&qword_100043470;
      v53 = xmmword_100043480;
      v54 = *&off_100043490;
      sub_10002D0E8(&v51, 2, "\tinvalid MDB drWrCnt \n", v30, a5, a6, a7, a8, xmmword_100043460);
    }

    v11 = 1;
  }

  if (*(a2 + 37) != *(*(v10 + 20) + 104))
  {
    if (sub_10002D444() >= 3)
    {
      *(&v51 + 1) = *(&xmmword_100043460 + 1);
      v52 = *&qword_100043470;
      v53 = xmmword_100043480;
      v54 = *&off_100043490;
      sub_10002D0E8(&v51, 2, "\tinvalid MDB drXTClpSiz \n", v31, a5, a6, a7, a8, xmmword_100043460);
    }

    v11 = 1;
  }

  if (*(a2 + 39) != *(*(v10 + 21) + 104))
  {
    if (sub_10002D444() >= 3)
    {
      *(&v51 + 1) = *(&xmmword_100043460 + 1);
      v52 = *&qword_100043470;
      v53 = xmmword_100043480;
      v54 = *&off_100043490;
      sub_10002D0E8(&v51, 2, "\tinvalid MDB drCTClpSiz \n", v32, a5, a6, a7, a8, xmmword_100043460);
    }

    v11 = 1;
  }

  if (a2[41] != v10[57])
  {
    if (sub_10002D444() >= 3)
    {
      *(&v51 + 1) = *(&xmmword_100043460 + 1);
      v52 = *&qword_100043470;
      v53 = xmmword_100043480;
      v54 = *&off_100043490;
      sub_10002D0E8(&v51, 2, "\tinvalid MDB drNmRtDirs \n", v33, a5, a6, a7, a8, xmmword_100043460);
    }

    v11 = 1;
  }

  if (*(a2 + 21) != *(v10 + 8))
  {
    if (sub_10002D444() >= 3)
    {
      *(&v51 + 1) = *(&xmmword_100043460 + 1);
      v52 = *&qword_100043470;
      v53 = xmmword_100043480;
      v54 = *&off_100043490;
      sub_10002D0E8(&v51, 2, "\tinvalid MDB drFilCnt \n", v34, a5, a6, a7, a8, xmmword_100043460);
    }

    v11 = 1;
  }

  if (*(a2 + 22) != *(v10 + 9))
  {
    if (sub_10002D444() >= 3)
    {
      *(&v51 + 1) = *(&xmmword_100043460 + 1);
      v52 = *&qword_100043470;
      v53 = xmmword_100043480;
      v54 = *&off_100043490;
      sub_10002D0E8(&v51, 2, "\tinvalid MDB drDirCnt \n", v35, a5, a6, a7, a8, xmmword_100043460);
    }

    v11 = 1;
  }

  v36 = 0;
  while (v36 != 32)
  {
    v37 = *(a2 + v36 + 92);
    v38 = *(v10 + v36++ + 80);
    if (v37 != v38)
    {
      if (sub_10002D444() >= 3)
      {
        *(&v51 + 1) = *(&xmmword_100043460 + 1);
        v52 = *&qword_100043470;
        v53 = xmmword_100043480;
        v54 = *&off_100043490;
        sub_10002D0E8(&v51, 2, "\tinvalid MDB drFndrInfo \n", v39, a5, a6, a7, a8, xmmword_100043460);
      }

      v11 = 1;
      break;
    }
  }

  v40 = *(v10 + 20);
  if (*(v40 + 120) == *(a2 + 65))
  {
    v41 = 0;
  }

  else
  {
    sub_10001EA44(a1, 554, 3, 0, a5, a6, a7, a8);
    v41 = 1;
  }

  v42 = *(a1 + 690);
  if (v42 >= 1)
  {
    v43 = 0;
    v44 = (v40 + 26);
    v45 = a2 + 68;
    do
    {
      if (*(v45 - 1) != *(v44 - 1) || *v45 != *v44)
      {
        sub_10001EA44(a1, 554, 4, 0, a5, a6, a7, a8);
        LOWORD(v42) = *(a1 + 690);
        v41 = 1;
      }

      ++v43;
      v44 += 2;
      v45 += 2;
    }

    while (v43 < v42);
  }

  v46 = *(v10 + 21);
  if (*(v46 + 120) != *(a2 + 73))
  {
    sub_10001EA44(a1, 554, 5, 0, a5, a6, a7, a8);
    LOWORD(v42) = *(a1 + 690);
    v41 = 1;
  }

  if (v42 >= 1)
  {
    v47 = 0;
    v48 = (v46 + 26);
    v49 = a2 + 76;
    do
    {
      if (*(v49 - 1) != *(v48 - 1) || *v49 != *v48)
      {
        sub_10001EA44(a1, 554, 6, 0, a5, a6, a7, a8);
        LOWORD(v42) = *(a1 + 690);
        v41 = 1;
      }

      ++v47;
      v48 += 2;
      v49 += 2;
    }

    while (v47 < v42);
  }

  if (v11 | v41)
  {
    *(a1 + 18) |= 0x8000u;
    if (v11)
    {
      sub_10001EA44(a1, 554, 1, 0, a5, a6, a7, a8);
    }
  }

  return 0;
}

uint64_t sub_100029AA0(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 776);
  *(a1 + 48) = 1;
  v11 = *(v10 + 192);
  if (*(a2 + 8) == *(v10 + 32) || (*(a1 + 29) & 0x40) != 0)
  {
    v22 = 0;
  }

  else
  {
    v12 = *(a1 + 888);
    v97 = *(a1 + 872);
    v98 = v12;
    v13 = *(a1 + 920);
    v99 = *(a1 + 904);
    v100 = v13;
    sub_10002D0A4(&v97, 542, a3, a4, a5, a6, a7, a8, v96);
    __sprintf_chk(v102, 0, 0x20uLL, "%u", *(v10 + 32));
    __sprintf_chk(v101, 0, 0x20uLL, "%u", *(a2 + 8));
    v14 = *(a1 + 888);
    v97 = *(a1 + 872);
    v98 = v14;
    v15 = *(a1 + 920);
    v99 = *(a1 + 904);
    v100 = v15;
    sub_10002D0A4(&v97, 559, v16, v17, v18, v19, v20, v21, v102);
    v22 = 1;
  }

  if (*(a2 + 9) != *(v10 + 36) && (*(a1 + 29) & 0x40) == 0)
  {
    v23 = *(a1 + 888);
    v97 = *(a1 + 872);
    v98 = v23;
    v24 = *(a1 + 920);
    v99 = *(a1 + 904);
    v100 = v24;
    sub_10002D0A4(&v97, 541, a3, a4, a5, a6, a7, a8, v96);
    __sprintf_chk(v102, 0, 0x20uLL, "%u", *(v10 + 36));
    __sprintf_chk(v101, 0, 0x20uLL, "%u", *(a2 + 9));
    v25 = *(a1 + 888);
    v97 = *(a1 + 872);
    v98 = v25;
    v26 = *(a1 + 920);
    v99 = *(a1 + 904);
    v100 = v26;
    sub_10002D0A4(&v97, 559, v27, v28, v29, v30, v31, v32, v102);
    v22 = 1;
  }

  if (*(a2 + 12) != *(v10 + 48))
  {
    v33 = *(a1 + 888);
    v97 = *(a1 + 872);
    v98 = v33;
    v34 = *(a1 + 920);
    v99 = *(a1 + 904);
    v100 = v34;
    sub_10002D0A4(&v97, 553, a3, a4, a5, a6, a7, a8, v96);
    __sprintf_chk(v102, 0, 0x20uLL, "%u", *(v10 + 48));
    __sprintf_chk(v101, 0, 0x20uLL, "%u", *(a2 + 12));
    v35 = *(a1 + 888);
    v97 = *(a1 + 872);
    v98 = v35;
    v36 = *(a1 + 920);
    v99 = *(a1 + 904);
    v100 = v36;
    sub_10002D0A4(&v97, 559, v37, v38, v39, v40, v41, v42, v102);
    v22 = 1;
  }

  if (*(a2 + 70) != *(*(v10 + 168) + 104))
  {
    v43 = *(a1 + 888);
    v97 = *(a1 + 872);
    v98 = v43;
    v44 = *(a1 + 920);
    v99 = *(a1 + 904);
    v100 = v44;
    sub_10002D0A4(&v97, 549, a3, a4, a5, a6, a7, a8, v96);
    __sprintf_chk(v102, 0, 0x20uLL, "%u", *(*(v10 + 168) + 104));
    __sprintf_chk(v101, 0, 0x20uLL, "%u", *(a2 + 70));
    v45 = *(a1 + 888);
    v97 = *(a1 + 872);
    v98 = v45;
    v46 = *(a1 + 920);
    v99 = *(a1 + 904);
    v100 = v46;
    sub_10002D0A4(&v97, 559, v47, v48, v49, v50, v51, v52, v102);
    v22 = 1;
  }

  v53 = 0;
  v54 = *a2;
  if (v54 != 18475 && v54 != 18520)
  {
    if (sub_10002D444() >= 3)
    {
      v97 = xmmword_100043460;
      v98 = *&qword_100043470;
      v99 = xmmword_100043480;
      v100 = *&off_100043490;
      sub_10002D0E8(&v97, 2, "\tinvalid VHB signature \n", v55, a5, a6, a7, a8, v96);
    }

    v53 = 1;
  }

  if ((*(v10 + 72) & ~*(a2 + 9)) != 0)
  {
    if (sub_10002D444() >= 3)
    {
      v57 = *(a2 + 9);
      v58 = *(v10 + 72);
      v97 = xmmword_100043460;
      v98 = *&qword_100043470;
      v99 = xmmword_100043480;
      v100 = *&off_100043490;
      sub_10002D0E8(&v97, 2, "\tinvalid VHB encodingsBitmap, disk=0x%qx calculated=0x%qx \n", v56, a5, a6, a7, a8, v57);
    }

    v53 = 1;
  }

  if (*(v10 + 118) != (v11 >> 9))
  {
    if (sub_10002D444() >= 3)
    {
      v97 = xmmword_100043460;
      v98 = *&qword_100043470;
      v99 = xmmword_100043480;
      v100 = *&off_100043490;
      sub_10002D0E8(&v97, 2, "\tinvalid VHB AlBlSt \n", v59, a5, a6, a7, a8, v96);
    }

    v53 = 1;
  }

  if (*(a2 + 4) != *(v10 + 16))
  {
    if (sub_10002D444() >= 3)
    {
      v97 = xmmword_100043460;
      v98 = *&qword_100043470;
      v99 = xmmword_100043480;
      v100 = *&off_100043490;
      sub_10002D0E8(&v97, 2, "\tinvalid VHB createDate \n", v60, a5, a6, a7, a8, v96);
    }

    v53 = 1;
  }

  if (*(a2 + 5) != *(v10 + 20))
  {
    if (sub_10002D444() >= 3)
    {
      v97 = xmmword_100043460;
      v98 = *&qword_100043470;
      v99 = xmmword_100043480;
      v100 = *&off_100043490;
      sub_10002D0E8(&v97, 2, "\tinvalid VHB modifyDate \n", v61, a5, a6, a7, a8, v96);
    }

    v53 = 1;
  }

  if (*(a2 + 6) != *(v10 + 24))
  {
    if (sub_10002D444() >= 3)
    {
      v97 = xmmword_100043460;
      v98 = *&qword_100043470;
      v99 = xmmword_100043480;
      v100 = *&off_100043490;
      sub_10002D0E8(&v97, 2, "\tinvalid VHB backupDate \n", v62, a5, a6, a7, a8, v96);
    }

    v53 = 1;
  }

  if (*(a2 + 7) != *(v10 + 28))
  {
    if (sub_10002D444() >= 3)
    {
      v97 = xmmword_100043460;
      v98 = *&qword_100043470;
      v99 = xmmword_100043480;
      v100 = *&off_100043490;
      sub_10002D0E8(&v97, 2, "\tinvalid VHB checkedDate \n", v63, a5, a6, a7, a8, v96);
    }

    v53 = 1;
  }

  if (*(a2 + 14) != *(v10 + 56))
  {
    if (sub_10002D444() >= 3)
    {
      v65 = *(a2 + 14);
      v66 = *(v10 + 56);
      v97 = xmmword_100043460;
      v98 = *&qword_100043470;
      v99 = xmmword_100043480;
      v100 = *&off_100043490;
      sub_10002D0E8(&v97, 2, "\tinvalid VHB rsrcClumpSize (VH=%u, vcb=%u)\n", v64, a5, a6, a7, a8, v65);
    }

    v53 = 1;
  }

  if (*(a2 + 15) != *(v10 + 60))
  {
    if (sub_10002D444() >= 3)
    {
      v97 = xmmword_100043460;
      v98 = *&qword_100043470;
      v99 = xmmword_100043480;
      v100 = *&off_100043490;
      sub_10002D0E8(&v97, 2, "\tinvalid VHB dataClumpSize \n", v67, a5, a6, a7, a8, v96);
    }

    v53 = 1;
  }

  if (*(a2 + 16) != *(v10 + 64) && (*(a2 + 5) & 0x10) == 0)
  {
    if (sub_10002D444() >= 3)
    {
      v97 = xmmword_100043460;
      v98 = *&qword_100043470;
      v99 = xmmword_100043480;
      v100 = *&off_100043490;
      sub_10002D0E8(&v97, 2, "\tinvalid VHB nextCatalogID \n", v68, a5, a6, a7, a8, v96);
    }

    v53 = 1;
  }

  if (*(a2 + 17) != *(v10 + 68))
  {
    if (sub_10002D444() >= 3)
    {
      v97 = xmmword_100043460;
      v98 = *&qword_100043470;
      v99 = xmmword_100043480;
      v100 = *&off_100043490;
      sub_10002D0E8(&v97, 2, "\tinvalid VHB writeCount \n", v69, a5, a6, a7, a8, v96);
    }

    v53 = 1;
  }

  if (*(a2 + 13) != *(v10 + 52))
  {
    if (sub_10002D444() >= 3)
    {
      v97 = xmmword_100043460;
      v98 = *&qword_100043470;
      v99 = xmmword_100043480;
      v100 = *&off_100043490;
      sub_10002D0E8(&v97, 2, "\tinvalid VHB nextAllocation \n", v70, a5, a6, a7, a8, v96);
    }

    v53 = 1;
  }

  if (*(a2 + 11) != *(v10 + 44))
  {
    if (sub_10002D444() >= 3)
    {
      v97 = xmmword_100043460;
      v98 = *&qword_100043470;
      v99 = xmmword_100043480;
      v100 = *&off_100043490;
      sub_10002D0E8(&v97, 2, "\tinvalid VHB totalBlocks \n", v71, a5, a6, a7, a8, v96);
    }

    v53 = 1;
  }

  if (*(a2 + 10) != *(v10 + 40))
  {
    if (sub_10002D444() >= 3)
    {
      v97 = xmmword_100043460;
      v98 = *&qword_100043470;
      v99 = xmmword_100043480;
      v100 = *&off_100043490;
      sub_10002D0E8(&v97, 2, "\tinvalid VHB blockSize \n", v72, a5, a6, a7, a8, v96);
    }

    v53 = 1;
  }

  if (*(a2 + 1) != *(v10 + 4))
  {
    if (sub_10002D444() >= 3)
    {
      v97 = xmmword_100043460;
      v98 = *&qword_100043470;
      v99 = xmmword_100043480;
      v100 = *&off_100043490;
      sub_10002D0E8(&v97, 2, "\tinvalid VHB attributes \n", v73, a5, a6, a7, a8, v96);
    }

    v53 = 1;
  }

  if (*(a2 + 50) != *(*(v10 + 160) + 104))
  {
    if (sub_10002D444() >= 3)
    {
      v97 = xmmword_100043460;
      v98 = *&qword_100043470;
      v99 = xmmword_100043480;
      v100 = *&off_100043490;
      sub_10002D0E8(&v97, 2, "\tinvalid VHB extentsFile.clumpSize \n", v74, a5, a6, a7, a8, v96);
    }

    v53 = 1;
  }

  if (*(a2 + 30) != *(*(v10 + 152) + 104))
  {
    if (sub_10002D444() >= 3)
    {
      v97 = xmmword_100043460;
      v98 = *&qword_100043470;
      v99 = xmmword_100043480;
      v100 = *&off_100043490;
      sub_10002D0E8(&v97, 2, "\tinvalid VHB allocationFile.clumpSize \n", v75, a5, a6, a7, a8, v96);
    }

    v53 = 1;
  }

  v76 = *(v10 + 176);
  if (v76 && *(a2 + 90) != *(v76 + 104))
  {
    if (sub_10002D444() >= 3)
    {
      v97 = xmmword_100043460;
      v98 = *&qword_100043470;
      v99 = xmmword_100043480;
      v100 = *&off_100043490;
      sub_10002D0E8(&v97, 2, "\tinvalid VHB attributesFile.clumpSize \n", v77, a5, a6, a7, a8, v96);
    }

    v53 = 1;
  }

  v78 = 0;
  while (v78 != 32)
  {
    v79 = *(a2 + v78 + 80);
    v80 = *(v10 + 80 + v78++);
    if (v79 != v80)
    {
      if (sub_10002D444() >= 3)
      {
        v97 = xmmword_100043460;
        v98 = *&qword_100043470;
        v99 = xmmword_100043480;
        v100 = *&off_100043490;
        sub_10002D0E8(&v97, 2, "\tinvalid VHB finderInfo \n", v81, a5, a6, a7, a8, v96);
      }

      v53 = 1;
      break;
    }
  }

  v82 = *(v10 + 160);
  if (*(v10 + 40) * *(a2 + 51) != *(v82 + 120))
  {
    sub_10001EA44(a1, 555, 3, 0, a5, a6, a7, a8);
    v22 = 1;
  }

  v83 = *(a1 + 690);
  if (v83 >= 1)
  {
    v84 = 0;
    v85 = (v82 + 40);
    v86 = a2 + 106;
    do
    {
      if (*(v86 - 1) != *(v85 - 1) || *v86 != *v85)
      {
        sub_10001EA44(a1, 555, 4, 0, a5, a6, a7, a8);
        LOWORD(v83) = *(a1 + 690);
        v22 = 1;
      }

      ++v84;
      v85 += 2;
      v86 += 2;
    }

    while (v84 < v83);
  }

  v87 = *(v10 + 168);
  if (*(v10 + 40) * *(a2 + 71) != *(v87 + 120))
  {
    sub_10001EA44(a1, 555, 5, 0, a5, a6, a7, a8);
    LOWORD(v83) = *(a1 + 690);
    v22 = 1;
  }

  if (v83 >= 1)
  {
    v88 = 0;
    v89 = (v87 + 40);
    v90 = a2 + 146;
    do
    {
      if (*(v90 - 1) != *(v89 - 1) || *v90 != *v89)
      {
        sub_10001EA44(a1, 555, 6, 0, a5, a6, a7, a8);
        LOWORD(v83) = *(a1 + 690);
        v22 = 1;
      }

      ++v88;
      v89 += 2;
      v90 += 2;
    }

    while (v88 < v83);
  }

  v91 = *(v10 + 152);
  if (*(v10 + 40) * *(a2 + 31) != *(v91 + 120))
  {
    sub_10001EA44(a1, 555, 7, 0, a5, a6, a7, a8);
    LOWORD(v83) = *(a1 + 690);
    v22 = 1;
  }

  if (v83 >= 1)
  {
    v92 = 0;
    v93 = (v91 + 40);
    v94 = a2 + 66;
    do
    {
      if (*(v94 - 1) != *(v93 - 1) || *v94 != *v93)
      {
        sub_10001EA44(a1, 555, 8, 0, a5, a6, a7, a8);
        LOWORD(v83) = *(a1 + 690);
        v22 = 1;
      }

      ++v92;
      v93 += 2;
      v94 += 2;
    }

    while (v92 < v83);
  }

  if (v53 | v22)
  {
    *(a1 + 18) |= 0x8000u;
    if (v53)
    {
      sub_10001EA44(a1, 555, 2, 0, a5, a6, a7, a8);
    }
  }

  return 0;
}

uint64_t sub_10002A5B8(uint64_t a1, char **a2)
{
  v24 = 0;
  v3 = *(a1 + 16);
  *cStr = *a1;
  v22 = v3;
  v23 = *(a1 + 32);
  v4 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  v6 = IOServiceMatching("IOMedia");
  if (v6 && (v7 = v6, CFDictionarySetValue(v6, @"UUID", v5), (MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v7)) != 0))
  {
    v9 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"BSD Name", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      v11 = CFProperty;
      if (CFStringGetCString(CFProperty, buffer, 1024, 0x8000100u))
      {
        if (byte_10004350E)
        {
          v20[0] = xmmword_100043460;
          v20[1] = *&qword_100043470;
          v20[2] = xmmword_100043480;
          v20[3] = *&off_100043490;
        }

        v17 = opendev(buffer, 0, 0, 0);
        v18 = v17;
        if (a2 && v17 != -1)
        {
          *a2 = strdup(buffer);
        }
      }

      else
      {
        v18 = 0xFFFFFFFFLL;
      }

      CFRelease(v11);
    }

    else
    {
      v18 = 0xFFFFFFFFLL;
    }

    IOObjectRelease(v9);
  }

  else
  {
    v18 = 0xFFFFFFFFLL;
  }

  CFRelease(v5);
  return v18;
}

uint64_t sub_10002A778(uint64_t a1)
{
  if (!dword_100043434)
  {
    sub_100020B5C();
    v3 = v2;
    v4 = malloc_type_malloc(0x80uLL, 0x100004052888210uLL);
    qword_100047428 = v4;
    *&v5 = -1;
    *(&v5 + 1) = -1;
    *v4 = v5;
    v4[1] = v5;
    v4[2] = v5;
    v4[3] = v5;
    v4[4] = v5;
    v4[5] = v5;
    v4[6] = v5;
    v4[7] = v5;
    v6 = malloc_type_malloc(0x80uLL, 0x100004052888210uLL);
    qword_100047420 = v6;
    *v6 = 0u;
    v6[1] = 0u;
    v6[2] = 0u;
    v6[3] = 0u;
    v6[4] = 0u;
    v6[5] = 0u;
    v6[6] = 0u;
    v6[7] = 0u;
    dword_100047438 = *(*(a1 + 776) + 44);
    if ((dword_100047438 & 0x3FF) != 0)
    {
      v7 = (dword_100047438 >> 10) + 1;
    }

    else
    {
      v7 = dword_100047438 >> 10;
    }

    dword_10004743C = v7;
    v8 = malloc_type_calloc((v7 + 7) >> 3, 1uLL, 0x100004077774924uLL);
    v9 = v8;
    qword_100047430 = v8;
    v10 = dword_10004743C - 1;
    if ((dword_10004743C - 1) > 7)
    {
      v12 = v10 >> 3;
      *v8 = 0;
      if (v10 >> 3 >= 2)
      {
        bzero(v8 + 1, (v12 - 1));
      }

      v11 = 510 << (v10 & 7);
      v9 += v12;
    }

    else
    {
      v11 = 255 << dword_10004743C;
    }

    *v9 &= v11;
    dword_100043588 = 0;
    sub_10002BB18();
    v13 = qword_100043580;
    qword_100047410 = qword_100043580;
    qword_100043580 = *(qword_100043580 + 8);
    *(v13 + 8) = 0;
    dword_100043434 = 1;
    dword_100047418 = 0;
    if (v3)
    {
      v14 = *(*(a1 + 776) + 40);
      if (v14 == 1024)
      {
        v15 = 2;
      }

      else
      {
        v15 = 1;
      }

      if (v14 == 512)
      {
        v16 = 3;
      }

      else
      {
        v16 = v15;
      }

      sub_10002A950(0, v16);
      if (*(*(a1 + 776) + 40) == 512)
      {
        v17 = 2;
      }

      else
      {
        v17 = 1;
      }

      sub_10002A950(dword_100047438 + ~(*(*(a1 + 776) + 40) == 512), v17);
    }
  }

  return 0;
}

uint64_t sub_10002A950(unsigned int a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a1;
  if (a2 + a1 > dword_100047438)
  {
    return 60;
  }

  v18 = 0;
  dword_100047418 += a2;
  v5 = sub_10002ADE4(a1, &v18, 1);
  if (v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  v7 = (v3 >> 5) & 0x1F;
  v8 = &v18[v7];
  v9 = v3 & 0x1F;
  if ((v3 & 0x1F) != 0)
  {
    v10 = 0xFFFFFFFF >> v9;
    v11 = 32 - v9;
    v12 = 0xFFFFFFFF >> (v9 + a2);
    if (v11 > a2)
    {
      v13 = ~v12;
    }

    else
    {
      v13 = 0x7FFFFFFF;
    }

    v14 = v13 & v10;
    v15 = (bswap32(*v8) & v14) != 0;
    *v8++ |= bswap32(v14);
    if (a2 >= v11)
    {
      v16 = a2 - v11;
    }

    else
    {
      v16 = 0;
    }

    v17 = v7 ^ 0x1F;
    if (v7 == 31 || v11 >= a2)
    {
      sub_10002AC10(v3);
    }
  }

  else
  {
    v15 = 0;
    v17 = 32 - v7;
    v16 = a2;
  }

  if (v16 >= 0x20)
  {
    do
    {
      if (!v17)
      {
        v3 += 1024;
        v6 = sub_10002ADE4(v3, &v18, 1);
        if (v6)
        {
          goto LABEL_34;
        }

        v17 = 32;
        v8 = v18;
      }

      if (*v8)
      {
        v15 = 1;
      }

      *v8++ = -1;
      --v17;
      v16 -= 32;
      if (!v16 || !v17)
      {
        sub_10002AC10(v3);
      }
    }

    while (v16 > 0x1F);
  }

  if (v16)
  {
    if (v17)
    {
LABEL_30:
      if (bswap32(*v8) > 0xFFFFFFFF >> v16)
      {
        v15 = 1;
      }

      *v8 |= bswap32(~(0xFFFFFFFF >> v16));
      sub_10002AC10(v3);
      goto LABEL_34;
    }

    v3 += 1024;
    v6 = sub_10002ADE4(v3, &v18, 1);
    if (!v6)
    {
      v8 = v18;
      goto LABEL_30;
    }
  }

LABEL_34:
  if (v15)
  {
    return 511;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_10002AB64()
{
  if (dword_100043434)
  {
    free(qword_100047428);
    qword_100047428 = 0;
    free(qword_100047420);
    qword_100047420 = 0;
    free(qword_100047430);
    qword_100047430 = 0;
    v0 = dword_100043588;
    if (dword_100043588 >= 1)
    {
      do
      {
        dword_100043588 = v0 - 1;
        free(qword_100043590[v0 - 1]);
        v0 = dword_100043588;
      }

      while (dword_100043588 > 0);
    }

    qword_100043580 = 0;
    qword_100047410 = 0;
    dword_100043434 = 0;
  }

  return 0;
}

void sub_10002AC10(unsigned int a1)
{
  v1 = a1 >> 13;
  v2 = 1 << ((a1 >> 10) & 7);
  v3 = qword_100047410;
  if ((v2 & *(qword_100047430 + v1)) == 0 && qword_100047410 != 0)
  {
    v5 = a1 >> 10;
    while (1)
    {
      v6 = *(v3 + 16);
      if (v6 == v5)
      {
        break;
      }

      v3 = *(v3 + 8 * (v6 < v5));
      if (!v3)
      {
        return;
      }
    }

    if (a1 >= 0x400)
    {
      if (!bcmp((v3 + 20), qword_100047428, 0x80uLL))
      {
        sub_10002AD24(v5);
        if (v7)
        {
          *(qword_100047430 + v1) |= v2;
          ++dword_100043438;
          --dword_10004343C;
        }
      }

      if (!bcmp((v3 + 20), qword_100047420, 0x80uLL))
      {
        sub_10002AD24(v5);
        if (v8)
        {
          --dword_10004343C;
        }
      }
    }
  }
}

double sub_10002AD24(unsigned int a1)
{
  v2 = qword_100047410;
  if (*(qword_100047410 + 16) != a1 && qword_100047410 != 0)
  {
    v4 = *(qword_100047410 + 16);
    if (v4 == a1)
    {
      v5 = 0;
LABEL_11:
      v6 = *(v2 + 8);
      if (v6)
      {
        v7 = *(v2 + 8);
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
        *v8 = *v2;
      }

      else
      {
        v6 = *v2;
      }

      v5[*v5 != v2] = v6;
      *(v2 + 144) = 0;
      result = 0.0;
      *(v2 + 112) = 0u;
      *(v2 + 128) = 0u;
      *(v2 + 80) = 0u;
      *(v2 + 96) = 0u;
      *(v2 + 48) = 0u;
      *(v2 + 64) = 0u;
      *(v2 + 16) = 0u;
      *(v2 + 32) = 0u;
      *v2 = 0u;
      *(v2 + 8) = qword_100043580;
      qword_100043580 = v2;
    }

    else
    {
      while (1)
      {
        v5 = v2;
        v2 = *(v2 + 8 * (v4 < a1));
        if (!v2)
        {
          break;
        }

        v4 = *(v2 + 16);
        if (v4 == a1)
        {
          goto LABEL_11;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002ADE4(unsigned int a1, uint64_t *a2, int a3)
{
  *a2 = 0;
  v5 = a1 >> 10;
  v6 = a1 >> 13;
  v7 = *(qword_100047430 + v6);
  v8 = 1 << ((a1 >> 10) & 7);
  if ((v8 & v7) != 0)
  {
    if (a3 != 2)
    {
      v13 = qword_100047428;
      goto LABEL_14;
    }

    *(qword_100047430 + v6) = v7 & ~v8;
    --dword_100043438;
    v9 = 1;
  }

  else
  {
    v10 = qword_100047410;
    if (qword_100047410)
    {
      while (1)
      {
        v11 = *(v10 + 16);
        if (v11 == v5)
        {
          break;
        }

        v10 = *(v10 + 8 * (v11 < v5));
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v13 = v10 + 20;
      goto LABEL_14;
    }

LABEL_7:
    if (a3 != 1)
    {
      v13 = qword_100047420;
      goto LABEL_14;
    }

    v9 = 0;
  }

  v12 = sub_10002BA38(v5, v9);
  if (!v12)
  {
    goto LABEL_15;
  }

  v13 = v12 + 20;
LABEL_14:
  *a2 = v13;
LABEL_15:
  if (*a2)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_10002AECC(unsigned int a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a1;
  if (a2 + a1 > dword_100047438)
  {
    return 60;
  }

  v18 = 0;
  dword_100047418 -= a2;
  v5 = sub_10002ADE4(a1, &v18, 2);
  if (v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  v7 = (v3 >> 5) & 0x1F;
  v8 = &v18[v7];
  v9 = v3 & 0x1F;
  if ((v3 & 0x1F) != 0)
  {
    v10 = 0xFFFFFFFF >> v9;
    v11 = 32 - v9;
    v12 = 0xFFFFFFFF >> (v9 + a2);
    if (v11 > a2)
    {
      v13 = ~v12;
    }

    else
    {
      v13 = 0x7FFFFFFF;
    }

    v14 = v13 & v10;
    v15 = (v14 & ~bswap32(*v8)) != 0;
    *v8++ &= bswap32(~v14);
    if (a2 >= v11)
    {
      v16 = a2 - v11;
    }

    else
    {
      v16 = 0;
    }

    v17 = v7 ^ 0x1F;
    if (v7 == 31 || v11 >= a2)
    {
      sub_10002AC10(v3);
    }
  }

  else
  {
    v15 = 0;
    v17 = 32 - v7;
    v16 = a2;
  }

  if (v16 >= 0x20)
  {
    do
    {
      if (!v17)
      {
        v3 += 1024;
        v6 = sub_10002ADE4(v3, &v18, 2);
        if (v6)
        {
          goto LABEL_34;
        }

        v17 = 32;
        v8 = v18;
      }

      if (*v8 != -1)
      {
        v15 = 1;
      }

      *v8++ = 0;
      --v17;
      v16 -= 32;
      if (!v16 || !v17)
      {
        sub_10002AC10(v3);
      }
    }

    while (v16 > 0x1F);
  }

  if (v16)
  {
    if (v17)
    {
LABEL_30:
      if ((bswap32(*v8) | (0xFFFFFFFF >> v16)) != 0xFFFFFFFF)
      {
        v15 = 1;
      }

      *v8 &= bswap32(0xFFFFFFFF >> v16);
      sub_10002AC10(v3);
      goto LABEL_34;
    }

    v3 += 1024;
    v6 = sub_10002ADE4(v3, &v18, 2);
    if (!v6)
    {
      v8 = v18;
      goto LABEL_30;
    }
  }

LABEL_34:
  if (v15)
  {
    return 511;
  }

  else
  {
    return v6;
  }
}

void sub_10002B0E0(uint64_t a1, int a2)
{
  v3 = *(a1 + 776);
  v4 = *(a1 + 800);
  sub_100020B5C();
  v11 = v5;
  v12 = *(v3 + 44) - dword_100047418;
  if (*(v3 + 48) != v12)
  {
    *(v3 + 48) = v12;
    *(v3 + 196) |= 0xFF00u;
  }

  v40[0] = 0;
  v34 = v4;
  if (v5)
  {
    v13 = 0;
    v14 = (8 * *(v4 + 128) - 1);
  }

  else
  {
    v13 = *(v3 + 116);
    v14 = 4095;
  }

  memset(&v40[1], 0, 24);
  if (dword_100047438)
  {
    v15 = 0;
    v33 = 0;
    v16 = 0;
    v17 = 0;
    v41 = 0;
    v32 = (a1 + 872);
    do
    {
      sub_10002ADE4(v17, &v41, 3);
      if ((v17 & v14) == 0)
      {
        if (v11)
        {
          if (v40[0])
          {
            sub_10000508C(v34, v40, v16, v18, v19, v20, v21, v22);
            if (v23)
            {
              return;
            }
          }

          if (sub_100004E04(v34, v13, 0, v40))
          {
            return;
          }
        }

        else
        {
          if (v40[0])
          {
            sub_100004D50(v3, v40, v16 | 0x10);
            if (v24)
            {
              return;
            }
          }

          if (sub_100004C84(v3, v13, 16, v40))
          {
            return;
          }
        }

        v16 = 0;
        v15 = v40[0];
        *(a1 + 56) = v13++;
      }

      v25 = v41;
      if (memcmp(v41, v15 + ((v17 & v14) >> 3), 0x80uLL))
      {
        if (a2)
        {
          memmove(v15 + ((v17 & v14) >> 3), v25, 0x80uLL);
          v16 = 1;
        }

        else
        {
          for (i = 0; i != 128; ++i)
          {
            if ((v25[i] & ~*(v15 + ((v17 & v14) >> 3) + i)) != 0)
            {
              *(a1 + 18) |= 0x2000u;
              v30 = v32[1];
              v36 = *v32;
              v37 = v30;
              v31 = v32[3];
              v38 = v32[2];
              v39 = v31;
              sub_10002D0A4(&v36, 556, v26, v6, v7, v8, v9, v10, v32);
              goto LABEL_32;
            }
          }

          *(a1 + 18) |= 0x2000u;
          if (!v33)
          {
            v28 = v32[1];
            v36 = *v32;
            v37 = v28;
            v29 = v32[3];
            v38 = v32[2];
            v39 = v29;
            sub_10002D0A4(&v36, 609, v26, v6, v7, v8, v9, v10, v32);
          }

          v33 = 1;
        }

        ++*(a1 + 736);
      }

      v17 += 1024;
    }

    while (v17 < dword_100047438);
  }

  else
  {
    v16 = 0;
  }

LABEL_32:
  if (v40[0])
  {
    if (v11)
    {
      sub_10000508C(v34, v40, v16, v6, v7, v8, v9, v10);
    }

    else
    {
      sub_100004D50(v3, v40, v16 | 0x10);
    }
  }
}

uint64_t sub_10002B37C(uint64_t result)
{
  v1 = *(result + 776);
  if (dword_100047438)
  {
    v2 = 0;
    v3 = 0;
    v9 = 0;
    do
    {
      result = sub_10002ADE4(v2, &v9, 3);
      if (v9 == qword_100047428)
      {
        v3 += 1024;
      }

      else if (v9 != qword_100047420)
      {
        for (i = 0; i != 32; ++i)
        {
          v5 = *(v9 + 4 * i);
          if (v5)
          {
            if (v5 == -1)
            {
              v3 += 32;
            }

            else
            {
              v6 = bswap32(v5);
              do
              {
                v3 += v6 & 1;
                v7 = v6 > 1;
                v6 >>= 1;
              }

              while (v7);
            }
          }
        }
      }

      v2 += 1024;
    }

    while (v2 < dword_100047438);
  }

  else
  {
    v3 = 0;
  }

  if (dword_100047418 != v3)
  {
    dword_100047418 = v3;
  }

  v8 = *(v1 + 44) - v3;
  if (*(v1 + 48) != v8)
  {
    *(v1 + 48) = v8;
    *(v1 + 196) |= 0xFF00u;
  }

  return result;
}

uint64_t sub_10002B498(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  if (dword_100047438)
  {
    v5 = 0;
    v6 = 0;
    v19 = 0;
    v7 = 1024;
    v8 = a2;
    while (1)
    {
      sub_10002ADE4(v6, &v19, 3);
      if (dword_100047438 - v6 < 0x400)
      {
        v7 = dword_100047438 - v6;
      }

      if (v19 == qword_100047428)
      {
        v5 = 0;
        v8 = a2;
      }

      else
      {
        if (v19 != qword_100047420)
        {
          v9 = 0;
          v10 = v6;
          while (1)
          {
            v11 = *(v19 + 4 * v9);
            if (v11 == -1)
            {
              v5 = 0;
              v8 = a2;
            }

            else
            {
              v12 = v7 - 32 * v9;
              if (v12 >= 0x20)
              {
                v12 = 32;
              }

              if (v7 == 1024)
              {
                v12 = 32;
              }

              if (!v12)
              {
                goto LABEL_36;
              }

              v13 = bswap32(v11);
              v14 = v12;
              v15 = v10;
              do
              {
                if ((v13 & 0x80000000) != 0)
                {
                  v5 = 0;
                  v8 = a2;
                }

                else
                {
                  if (v8 == a2)
                  {
                    v5 = v15;
                  }

                  if (!--v8)
                  {
                    goto LABEL_34;
                  }
                }

                v13 *= 2;
                ++v15;
                --v14;
              }

              while (v14);
              if (v12 != 32)
              {
                goto LABEL_36;
              }
            }

            ++v9;
            v10 += 32;
            if (v9 == 32)
            {
              goto LABEL_32;
            }
          }
        }

        if (v8 == a2)
        {
          v5 = v6;
        }

        v16 = v8 >= v7;
        v8 -= v7;
        if (v8 == 0 || !v16)
        {
LABEL_34:
          *a3 = v5;
          goto LABEL_41;
        }
      }

LABEL_32:
      v6 += 1024;
      if (v6 >= dword_100047438)
      {
        goto LABEL_36;
      }
    }
  }

  v5 = 0;
  v8 = a2;
LABEL_36:
  if (v8)
  {
    v17 = 0;
  }

  else
  {
    v17 = v5;
  }

  *a3 = v17;
  if (v8)
  {
    return 28;
  }

LABEL_41:

  return sub_10002A950(v5, a2);
}

uint64_t sub_10002B664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  qword_100047440 = &unk_100047450;
  *&dword_100047448 = 0;
  if (dword_100047438)
  {
    v8 = a1;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v26 = 0;
    do
    {
      if ((v12 & 0x3FF) != 0)
      {
        sub_1000309D0();
      }

      a1 = sub_10002ADE4(v12, &v26, 3);
      v13 = v26;
      if (v26 == qword_100047428)
      {
        if (v10)
        {
          sub_10002B860(v8, v11, v10, a4, a5, a6, a7, a8);
          v9 = v9 + v10;
        }

        v10 = 0;
        v12 += 1024;
        v14 = dword_100047438;
      }

      else if (v26 == qword_100047420)
      {
        if (v10)
        {
          v11 = v11;
        }

        else
        {
          v11 = v12;
        }

        v14 = dword_100047438;
        v18 = dword_100047438 - v12;
        if (dword_100047438 - v12 >= 0x400)
        {
          v18 = 1024;
        }

        v10 += v18;
        v12 += 1024;
      }

      else
      {
        v14 = dword_100047438;
        if (v12 < dword_100047438)
        {
          v15 = 0;
          do
          {
            if ((v12 & 0x1F) != 0)
            {
              sub_1000309FC();
            }

            if (v12 < v14)
            {
              v16 = bswap32(*(v13 + 4 * v15));
              v17 = 0x80000000;
              do
              {
                if ((v17 & v16) != 0)
                {
                  if (v10)
                  {
                    sub_10002B860(v8, v11, v10, a4, a5, a6, a7, a8);
                    v9 = v9 + v10;
                    v14 = dword_100047438;
                    v10 = 0;
                  }
                }

                else
                {
                  if (v10)
                  {
                    v11 = v11;
                  }

                  else
                  {
                    v11 = v12;
                  }

                  ++v10;
                }

                ++v12;
                if (v17 < 2)
                {
                  break;
                }

                v17 >>= 1;
              }

              while (v12 < v14);
            }

            if (v15 > 0x1E)
            {
              break;
            }

            ++v15;
          }

          while (v12 < v14);
        }
      }
    }

    while (v12 < v14);
    if (v10)
    {
      sub_10002B860(v8, v11, v10, a4, a5, a6, a7, a8);
      v9 = v9 + v10;
    }
  }

  else
  {
    v9 = 0;
  }

  sub_10002B928(a1, a2, a3, a4, a5, a6, a7, a8);
  v25[0] = xmmword_100043460;
  v25[1] = *&qword_100043470;
  v25[2] = xmmword_100043480;
  v25[3] = *&off_100043490;
  return sub_10002D128(v25, 65, "Trimmed %u allocation blocks.\n", v19, v20, v21, v22, v23, v9);
}

void sub_10002B860(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  v25[0] = xmmword_100043460;
  v25[1] = *&qword_100043470;
  v25[2] = xmmword_100043480;
  v25[3] = *&off_100043490;
  sub_10002D128(v25, 65, "Trimming: startBlock=%10u, blockCount=%10u\n", a4, a5, a6, a7, a8, a2);
  v11 = *(*(a1 + 776) + 40) * v9;
  sub_100020B5C();
  v20 = *(a1 + 776);
  if (v12)
  {
    v21 = *(v20 + 192);
  }

  else
  {
    v21 = *(v20 + 118) << 9;
  }

  v22 = *(v20 + 40) * a3;
  v23 = dword_100047448;
  v24 = (&unk_100047450 + 16 * dword_100047448);
  *v24 = v21 + v11;
  v24[1] = v22;
  dword_100047448 = v23 + 1;
  if (v23 == 255)
  {
    sub_10002B928(v12, v13, v14, v15, v16, v17, v18, v19);
  }
}

uint64_t sub_10002B928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_100047448)
  {
    result = ioctl(qword_1000434A8, 0x8010641FuLL, &qword_100047440);
    if (result == -1)
    {
      v9 = *__error();
      v16 = xmmword_100043460;
      v17 = *&qword_100043470;
      v18 = xmmword_100043480;
      v19 = *&off_100043490;
      result = sub_10002D128(&v16, 66, "TrimFlush: error %d\n", v10, v11, v12, v13, v14, v9);
    }

    dword_100047448 = 0;
  }

  else
  {
    v16 = xmmword_100043460;
    v17 = *&qword_100043470;
    v18 = xmmword_100043480;
    v19 = *&off_100043490;
    return sub_10002D128(&v16, 65, "TrimFlush: nothing to flush\n", a4, a5, a6, a7, a8, v15);
  }

  return result;
}

uint64_t sub_10002B9EC()
{
  v1 = 0;
  if (ioctl(qword_1000434A8, 0x4004644CuLL, &v1) >= 0)
  {
    return v1 & 0x10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002BA38(unsigned int a1, int a2)
{
  v4 = qword_100043580;
  if (qword_100043580 || (sub_10002BB18(), (v4 = qword_100043580) != 0))
  {
    qword_100043580 = *(v4 + 8);
    ++dword_10004343C;
    *(v4 + 8) = 0;
    *(v4 + 16) = a1;
    if (a2 == 1)
    {
      memmove((v4 + 20), qword_100047428, 0x80uLL);
      a1 = *(v4 + 16);
    }

    else
    {
      *(v4 + 132) = 0u;
      *(v4 + 116) = 0u;
      *(v4 + 100) = 0u;
      *(v4 + 84) = 0u;
      *(v4 + 68) = 0u;
      *(v4 + 52) = 0u;
      *(v4 + 36) = 0u;
      *(v4 + 20) = 0u;
    }

    v5 = &qword_100047410;
    while (1)
    {
      v6 = *v5;
      if (!*v5)
      {
        break;
      }

      while (1)
      {
        v5 = v6;
        if (a1 <= *(v6 + 16))
        {
          break;
        }

        v6 = *(v6 + 8);
        if (!v6)
        {
          ++v5;
          goto LABEL_11;
        }
      }
    }

LABEL_11:
    *v5 = v4;
  }

  return v4;
}

void sub_10002BB18()
{
  if (dword_100043588 <= 1999)
  {
    v0 = malloc_type_malloc(0x10B30uLL, 0x1020040952FC7B9uLL);
    if (v0)
    {
      v1 = v0;
      bzero(v0, 0x10B30uLL);
      v2 = 0;
      v3 = v1 + 152;
      v4 = vdupq_n_s64(0x1C1uLL);
      do
      {
        v5 = vorrq_s8(vdupq_n_s64(v2), xmmword_100031250);
        if (vmovn_s64(vcgtq_u64(v4, v5)).u8[0])
        {
          *(v3 - 144) = v3;
        }

        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1C1uLL), v5)).i32[1])
        {
          *(v3 + 8) = v3 + 152;
        }

        v2 += 2;
        v3 += 304;
      }

      while (v2 != 450);
      qword_100043580 = v1;
      v6 = dword_100043588++;
      qword_100043590[v6] = v1;
    }
  }
}

uint64_t sub_10002BBF4(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = qword_1000434E8;
  qword_1000434F8 = a1;
  byte_1000434B5 = byte_1000434B4;
  *&v134.f_bsize = xmmword_100043460;
  *&v134.f_bfree = *&qword_100043470;
  *&v134.f_files = xmmword_100043480;
  *v134.f_fsid.val = *&off_100043490;
  sub_10002D0E8(&v134, 2, "", a4, a5, a6, a7, a8, v117);
  if (byte_100043508)
  {
    if (!dword_1000434E0)
    {
      memset(&v134, 0, 144);
      if (stat(qword_1000434F8, &v134) != -1 && (v134.f_iosize & 0xB000 | 0x4000) == 0x6000)
      {
        memset(&v133, 0, sizeof(v133));
        v15 = fileno(__stdinp);
        if (fstat(v15, &v133) != -1 && LODWORD(v134.f_bavail) == v133.st_dev)
        {
          v128 = xmmword_100043460;
          v129 = *&qword_100043470;
          v130 = xmmword_100043480;
          v131 = *&off_100043490;
          v16 = "ERROR: input redirected from target volume for live verify.\n";
LABEL_14:
          v19 = &v128;
LABEL_99:
          v53 = 2;
          goto LABEL_100;
        }

        v17 = fileno(__stdoutp);
        if (fstat(v17, &v133) != -1 && LODWORD(v134.f_bavail) == v133.st_dev)
        {
          v128 = xmmword_100043460;
          v129 = *&qword_100043470;
          v130 = xmmword_100043480;
          v131 = *&off_100043490;
          v16 = "ERROR:  output redirected to target volume for live verify.\n";
          goto LABEL_14;
        }

        v18 = fileno(__stderrp);
        if (fstat(v18, &v133) != -1 && LODWORD(v134.f_bavail) == v133.st_dev)
        {
          v128 = xmmword_100043460;
          v129 = *&qword_100043470;
          v130 = xmmword_100043480;
          v131 = *&off_100043490;
          v16 = "ERROR:  error output redirected to target volume for live verify.\n";
          goto LABEL_14;
        }
      }
    }
  }

  if (byte_10004350E && byte_10004350B)
  {
    *&v134.f_bsize = xmmword_100043460;
    *&v134.f_bfree = *&qword_100043470;
    *&v134.f_files = xmmword_100043480;
    *v134.f_fsid.val = *&off_100043490;
    sub_10002D0E8(&v134, 1, "starting\n", v10, v11, v12, v13, v14, v118);
  }

  memset(&v133, 0, sizeof(v133));
  v132 = 0;
  if (dword_1000434E0)
  {
    *&v134.f_bsize = xmmword_100043460;
    *&v134.f_bfree = *&qword_100043470;
    *&v134.f_files = xmmword_100043480;
    *v134.f_fsid.val = *&off_100043490;
    sub_10002D0E8(&v134, 2, "fsck_hfs: detonator_run (%s).\n", v10, v11, v12, v13, v14, a1);
    memset(&v134, 0, 144);
    if (fstat(SHIDWORD(qword_1000434A8), &v134))
    {
      v128 = xmmword_100043460;
      v129 = *&qword_100043470;
      v130 = xmmword_100043480;
      v131 = *&off_100043490;
      sub_10002D0E8(&v128, 4, "fsck_hfs: fstat %s", v20, v21, v22, v23, v24, a1);
    }

    if (lseek(SHIDWORD(qword_1000434A8), 0, 0) == -1)
    {
      v25 = HIDWORD(qword_1000434A8);
      v26 = *__error();
      v128 = xmmword_100043460;
      v129 = *&qword_100043470;
      v130 = xmmword_100043480;
      v131 = *&off_100043490;
      sub_10002D0E8(&v128, 4, "fsck_hfs: Could not seek %d for dev: %s, errorno %d", v27, v28, v29, v30, v31, v25);
    }

    sub_10002D42C(1);
  }

  else
  {
    if (stat(a1, &v133) < 0)
    {
      v49 = __error();
      strerror(*v49);
      *&v134.f_bsize = xmmword_100043460;
      *&v134.f_bfree = *&qword_100043470;
      *&v134.f_files = xmmword_100043480;
      *v134.f_fsid.val = *&off_100043490;
      v118 = a1;
      v48 = "Can't stat %s: %s\n";
      goto LABEL_62;
    }

    if ((v133.st_mode & 0xF000) != 0x2000)
    {
      *&v134.f_bsize = xmmword_100043460;
      *&v134.f_bfree = *&qword_100043470;
      *&v134.f_files = xmmword_100043480;
      *v134.f_fsid.val = *&off_100043490;
      sub_10002D0E8(&v134, 3, "%s is not a character device", v10, v11, v12, v13, v14, a1);
      if (!sub_10002CBDC("CONTINUE", v32, v33, v34, v35, v36, v37, v38))
      {
LABEL_73:
        if (byte_10004350B)
        {
          *&v134.f_bsize = xmmword_100043460;
          *&v134.f_bfree = *&qword_100043470;
          *&v134.f_files = xmmword_100043480;
          *v134.f_fsid.val = *&off_100043490;
          v16 = "CAN'T CHECK FILE SYSTEM.";
LABEL_75:
          v19 = &v134;
          v53 = 3;
LABEL_100:
          sub_10002D0E8(v19, v53, v16, v10, v11, v12, v13, v14, v118);
        }

        return 8;
      }
    }

    if (!(byte_100043509 | byte_10004350D) && !strncmp(a1, "/dev/rdisk", 0xAuLL))
    {
      snprintf(&v134, 0x401uLL, "/dev/%s", a1 + 6);
      sub_100027508(&v134);
      if (byte_10004350E)
      {
        v128 = xmmword_100043460;
        v129 = *&qword_100043470;
        v130 = xmmword_100043480;
        v131 = *&off_100043490;
        sub_10002D0E8(&v128, 2, "journal_replay(%s) returned %d\n", v10, v11, v12, v13, v14, &v134);
      }
    }
  }

  if (!(byte_10004350B | byte_1000434B6))
  {
    if (byte_100043509 || byte_10004350D || HIDWORD(qword_1000434A8) == -1)
    {
      *&v134.f_bsize = xmmword_100043460;
      *&v134.f_bfree = *&qword_100043470;
      *&v134.f_files = xmmword_100043480;
      *v134.f_fsid.val = *&off_100043490;
      sub_10002D0E8(&v134, 2, "** %s (NO WRITE)\n", v10, v11, v12, v13, v14, a1);
    }

    else
    {
      *&v134.f_bsize = xmmword_100043460;
      *&v134.f_bfree = *&qword_100043470;
      *&v134.f_files = xmmword_100043480;
      *v134.f_fsid.val = *&off_100043490;
      sub_10002D0E8(&v134, 2, "** %s\n", v10, v11, v12, v13, v14, a1);
    }
  }

  v39 = sub_10002D408();
  if (v39 == -1)
  {
    *&v134.f_bsize = xmmword_100043460;
    *&v134.f_bfree = *&qword_100043470;
    *&v134.f_files = xmmword_100043480;
    *v134.f_fsid.val = *&off_100043490;
    v48 = "Device block size was not initialized\n";
LABEL_62:
    v50 = 2;
LABEL_72:
    sub_10002D0E8(&v134, v50, v48, v10, v11, v12, v13, v14, v118);
    goto LABEL_73;
  }

  v40 = v39;
  v41 = xmmword_1000434D0;
  if (!xmmword_1000434D0 && !byte_10004350D)
  {
    v127 = 8;
    *&v128 = 0;
    if (sysctlbyname("hw.memsize", &v128, &v127, 0, 0) == -1)
    {
      *&v134.f_bsize = xmmword_100043460;
      *&v134.f_bfree = *&qword_100043470;
      *&v134.f_files = xmmword_100043480;
      *v134.f_fsid.val = *&off_100043490;
      sub_10002D0E8(&v134, 6, "sysctlbyname failed, not auto-setting cache size\n", v42, v11, v12, v13, v14, v118);
      v41 = xmmword_1000434D0;
    }

    else
    {
      if (byte_100043508)
      {
        v43 = 1;
      }

      else
      {
        v43 = byte_1000434B4 == 0;
      }

      v44 = !v43;
      if (!dword_1000434E0)
      {
        v126 = 0;
        v127 = 4;
        if (sysctlbyname("kern.safeboot", &v126, &v127, 0, 0) != -1 && v126 && byte_1000434B4 && !byte_100043508)
        {
          if (byte_10004350E)
          {
            *&v134.f_bsize = xmmword_100043460;
            *&v134.f_bfree = *&qword_100043470;
            *&v134.f_files = xmmword_100043480;
            *v134.f_fsid.val = *&off_100043490;
            sub_10002D0E8(&v134, 6, "Safe mode and single-user, setting memsize to a maximum of 2gbytes\n", v45, v11, v12, v13, v14, v118);
          }

          v46 = v128;
          if (v128 >= 0x80000000)
          {
            v46 = 0x80000000;
          }

          *&v128 = v46;
        }
      }

      v47 = 3;
      if (v44)
      {
        v47 = 1;
      }

      v41 = v128 >> v47;
      *&xmmword_1000434D0 = v128 >> v47;
    }
  }

  sub_100001DA0(v41, &v132 + 1, &v132, byte_10004350E, v11, v12, v13, v14);
  if (byte_100043508)
  {
    v51 = byte_1000434B4 == 0;
  }

  else
  {
    v51 = 1;
  }

  v52 = !v51;
  if (sub_100001E98(&unk_100048450, qword_1000434A8, SHIDWORD(qword_1000434A8), v40, HIDWORD(v132), v132, 0x101u, v52))
  {
    *&v134.f_bsize = xmmword_100043460;
    *&v134.f_bfree = *&qword_100043470;
    *&v134.f_files = xmmword_100043480;
    *v134.f_fsid.val = *&off_100043490;
    v48 = "Can't initialize disk cache\n";
    v50 = 3;
    goto LABEL_72;
  }

  if (!byte_10004350B && byte_1000434B4 && !byte_1000434B6)
  {
    *&v134.f_bsize = xmmword_100043460;
    *&v134.f_bfree = *&qword_100043470;
    *&v134.f_files = xmmword_100043480;
    *v134.f_fsid.val = *&off_100043490;
    sub_10002D0E8(&v134, 2, "** Root file system\n", v10, v11, v12, v13, v14, v118);
  }

  if (byte_1000434C1 && byte_100043509)
  {
    BYTE3(xmmword_100043510) = 5;
  }

  if (dword_1000434BC && !sub_10002D438())
  {
    *&v134.f_bsize = xmmword_100043460;
    *&v134.f_bfree = *&qword_100043470;
    *&v134.f_files = xmmword_100043480;
    *v134.f_fsid.val = *&off_100043490;
    v16 = "BTree rebuild requested but writing disabled\n";
    goto LABEL_98;
  }

  if (qword_100043448 && xmmword_100043510)
  {
    *&v134.f_bsize = xmmword_100043460;
    *&v134.f_bfree = *&qword_100043470;
    *&v134.f_files = xmmword_100043480;
    *v134.f_fsid.val = *&off_100043490;
    v16 = "Cannot scan for bad blocks and ask for listed blocks to file mapping\n";
LABEL_98:
    v19 = &v134;
    goto LABEL_99;
  }

  v123 = a1;
  if (!xmmword_100043510)
  {
    goto LABEL_148;
  }

  *&v134.f_bsize = xmmword_100043460;
  *&v134.f_bfree = *&qword_100043470;
  *&v134.f_files = xmmword_100043480;
  *v134.f_fsid.val = *&off_100043490;
  sub_10002D0E8(&v134, 2, "Scanning entire disk for bad blocks\n", v10, v11, v12, v13, v14, v118);
  v54 = qword_1000434A8;
  v55 = signal(29, sub_10002D038);
  if (dword_100043520 == -1)
  {
    v61 = 512;
  }

  else
  {
    v61 = dword_100043520;
  }

  v62 = *(&xmmword_100043510 + 1) * v61;
  v122 = v55;
  v63 = 0x100000;
  if (v61 > 0x100000)
  {
    goto LABEL_102;
  }

  do
  {
    v64 = malloc_type_malloc(v63, 0xE9B6EC3CuLL);
    v65 = v64;
    v63 >>= v64 == 0;
  }

  while (!v64 && v63 >= v61);
  if (v64)
  {
    v121 = 0;
  }

  else
  {
LABEL_102:
    *&v134.f_bsize = xmmword_100043460;
    *&v134.f_bfree = *&qword_100043470;
    *&v134.f_files = xmmword_100043480;
    *v134.f_fsid.val = *&off_100043490;
    sub_10002D0E8(&v134, 3, "Cannot allocate buffer for disk scan.\n", v56, v57, v58, v59, v60, v119);
    v65 = 0;
    v121 = 1;
  }

  v67 = 0;
  LODWORD(v124) = 0;
  while (1)
  {
    while (1)
    {
      if (byte_10004862C == 1)
      {
        *&v134.f_bsize = xmmword_100043460;
        *&v134.f_bfree = *&qword_100043470;
        *&v134.f_files = xmmword_100043480;
        *v134.f_fsid.val = *&off_100043490;
        if (v62)
        {
          sub_10002D0E8(&v134, 0, "Scanning offset %lld of %lld (%d%%)\n", v56, v57, v58, v59, v60, v67);
        }

        else
        {
          sub_10002D0E8(&v134, 0, "Scanning offset %lld\n", v56, v57, v58, v59, v60, v67);
        }

        byte_10004862C = 0;
      }

      v68 = pread(v54, v65, v63, v67);
      if (v68 == v63)
      {
        v69 = 100 * (v63 + v67);
        do
        {
          v67 += v63;
          if (byte_10004862C == 1)
          {
            *&v134.f_bsize = xmmword_100043460;
            *&v134.f_bfree = *&qword_100043470;
            *&v134.f_files = xmmword_100043480;
            *v134.f_fsid.val = *&off_100043490;
            if (v62)
            {
              sub_10002D0E8(&v134, 0, "Scanning offset %lld of %lld (%d%%)\n", v56, v57, v58, v59, v60, v67);
            }

            else
            {
              sub_10002D0E8(&v134, 0, "Scanning offset %lld\n", v56, v57, v58, v59, v60, v67);
            }

            byte_10004862C = 0;
          }

          v68 = pread(v54, v65, v63, v67);
          v69 += 100 * v63;
        }

        while (v68 == v63);
      }

      if (v68 == -1)
      {
        break;
      }

      if (!v68)
      {
        goto LABEL_145;
      }

      if (v68 < v63)
      {
        if (v68 % v61)
        {
          v70 = v61 + v61 * (v68 % v61);
        }

        else
        {
          v70 = v68;
        }

LABEL_123:
        v67 += v70;
      }
    }

    if (*__error() == 5)
    {
      break;
    }

    if (*__error() != 4)
    {
      v88 = __error();
      strerror(*v88);
      *&v134.f_bsize = xmmword_100043460;
      *&v134.f_bfree = *&qword_100043470;
      *&v134.f_files = xmmword_100043480;
      *v134.f_fsid.val = *&off_100043490;
      v118 = v67;
      v16 = "Got a non I/O error reading disk at offset %llu:  %s\n";
      goto LABEL_75;
    }
  }

  v70 = 0;
  if (!v63)
  {
    goto LABEL_123;
  }

  v71 = v61;
  while (1)
  {
    v125 = v70;
    v72 = v71;
    v73 = v67 + v70;
    v74 = pread(v54, v65, v72, v67 + v70);
    if (v74 != -1)
    {
      if (!v74)
      {
        goto LABEL_145;
      }

      goto LABEL_138;
    }

    if (*__error() == 5)
    {
      break;
    }

    v82 = __error();
    strerror(*v82);
    *&v134.f_bsize = xmmword_100043460;
    *&v134.f_bfree = *&qword_100043470;
    *&v134.f_files = xmmword_100043480;
    *v134.f_fsid.val = *&off_100043490;
    sub_10002D0E8(&v134, 3, "Got a non I/O error reading disk at offset %llu: %s\n", v83, v84, v85, v86, v87, v73);
    v74 = -1;
LABEL_138:
    v71 = v61;
    if (v74 != v61)
    {
      *&v134.f_bsize = xmmword_100043460;
      *&v134.f_bfree = *&qword_100043470;
      *&v134.f_files = xmmword_100043480;
      *v134.f_fsid.val = *&off_100043490;
      sub_10002D0E8(&v134, 1, "During disk scan, did not get block size (%zd) read, got %zd instead.  Skipping rest of this block.\n", v56, v57, v58, v59, v60, v61);
    }

    v81 = v125;
LABEL_141:
    v70 = v81 + v71;
    if (v70 >= v63)
    {
      goto LABEL_123;
    }
  }

  if (byte_10004350E)
  {
    *&v134.f_bsize = xmmword_100043460;
    *&v134.f_bfree = *&qword_100043470;
    *&v134.f_files = xmmword_100043480;
    *v134.f_fsid.val = *&off_100043490;
    sub_10002D0E8(&v134, 6, "Bad block at offset %lld\n", v75, v76, v77, v78, v79, v73);
  }

  v80 = sub_10002D2D0();
  sub_10002CACC(v73 / v80);
  v124 = (v124 + 1);
  v81 = v125;
  v71 = v61;
  if (v124 < 0x29)
  {
    goto LABEL_141;
  }

  if (byte_10004350E)
  {
    *&v134.f_bsize = xmmword_100043460;
    *&v134.f_bfree = *&qword_100043470;
    *&v134.f_files = xmmword_100043480;
    *v134.f_fsid.val = *&off_100043490;
    sub_10002D0E8(&v134, 6, "Got %u errors, maxing out so stopping scan\n", v56, v57, v58, v59, v60, v124);
  }

LABEL_145:
  if ((v121 & 1) == 0)
  {
    free(v65);
  }

  signal(29, v122);
LABEL_148:
  v89 = qword_1000434A8;
  v90 = HIDWORD(qword_1000434A8);
  v91 = SBYTE3(xmmword_100043510);
  v92 = SBYTE2(xmmword_100043510);
  v93 = dword_1000434C8;
  v94 = sub_10002D438();
  *&v134.f_bsize = xmmword_100043460;
  *&v134.f_bfree = *&qword_100043470;
  *&v134.f_files = xmmword_100043480;
  *v134.f_fsid.val = *&off_100043490;
  v95 = sub_1000031E0(v123, *&xmmword_100043480, v89, v90, v91, v92, &v134, v93, v94, &dword_1000434A4, byte_100043508, dword_1000434BC);
  v101 = v95;
  if (byte_10004350E)
  {
    *&v134.f_bsize = xmmword_100043460;
    *&v134.f_bfree = *&qword_100043470;
    *&v134.f_files = xmmword_100043480;
    *v134.f_fsid.val = *&off_100043490;
    sub_10002D0E8(&v134, 2, "\tCheckHFS returned %d, fsmodified = %d\n", v96, v97, v98, v99, v100, v95);
  }

  if (!byte_1000434B5)
  {
    sub_10000219C(&unk_100048450);
    if (!byte_10004350D)
    {
      f_flags = 0;
      goto LABEL_155;
    }

    switch(v101)
    {
      case 0xDu:
        *&v134.f_bsize = xmmword_100043460;
        *&v134.f_bfree = *&qword_100043470;
        *&v134.f_files = xmmword_100043480;
        *v134.f_fsid.val = *&off_100043490;
        v116 = "QUICKCHECK ONLY; FILESYSTEM DIRTY\n";
        break;
      case 6u:
        *&v134.f_bsize = xmmword_100043460;
        *&v134.f_bfree = *&qword_100043470;
        *&v134.f_files = xmmword_100043480;
        *v134.f_fsid.val = *&off_100043490;
        v116 = "QUICKCHECK ONLY; NO HFS SIGNATURE FOUND\n";
        break;
      case 0u:
        *&v134.f_bsize = xmmword_100043460;
        *&v134.f_bfree = *&qword_100043470;
        *&v134.f_files = xmmword_100043480;
        *v134.f_fsid.val = *&off_100043490;
        sub_10002D0E8(&v134, 1, "QUICKCHECK ONLY; FILESYSTEM CLEAN\n", v104, v105, v106, v107, v108, v120);
        return 0;
      default:
        return 8;
    }

    sub_10002D0E8(&v134, 1, v116, v104, v105, v106, v107, v108, v120);
    return 3;
  }

  memset(&v134, 0, 512);
  if (statfs(v9, &v134))
  {
    f_flags = 0;
  }

  else
  {
    f_flags = v134.f_flags;
  }

  sub_10000219C(&unk_100048450);
LABEL_155:
  if (byte_1000434B5 && dword_1000434A4)
  {
    memset(&v133, 0, 48);
    if (!byte_10004350B)
    {
      *&v134.f_bsize = xmmword_100043460;
      *&v134.f_bfree = *&qword_100043470;
      *&v134.f_files = xmmword_100043480;
      *v134.f_fsid.val = *&off_100043490;
      sub_10002D0A4(&v134, 122, v103, v104, v105, v106, v107, v108, v120);
    }

    if (f_flags)
    {
      memset(&v133, 0, 48);
      if (byte_10004350E)
      {
        *&v134.f_bsize = xmmword_100043460;
        *&v134.f_bfree = *&qword_100043470;
        *&v134.f_files = xmmword_100043480;
        *v134.f_fsid.val = *&off_100043490;
        sub_10002D0E8(&v134, 6, "doing update / reload mount for %s now\n", v104, v105, v106, v107, v108, v9);
      }

      if (mount("hfs", v9, f_flags | 0x50000, &v133))
      {
        v109 = __error();
        strerror(*v109);
        *&v134.f_bsize = xmmword_100043460;
        *&v134.f_bfree = *&qword_100043470;
        *&v134.f_files = xmmword_100043480;
        *v134.f_fsid.val = *&off_100043490;
        sub_10002D0E8(&v134, 6, "update/reload mount for %s failed: %s\n", v110, v111, v112, v113, v114, v9);
        goto LABEL_164;
      }

      return 8 * (v101 != 0);
    }

    else
    {
LABEL_164:
      if (!byte_10004350B)
      {
        *&v134.f_bsize = xmmword_100043460;
        *&v134.f_bfree = *&qword_100043470;
        *&v134.f_files = xmmword_100043480;
        *v134.f_fsid.val = *&off_100043490;
        sub_10002D0E8(&v134, 2, "\n***** REBOOT NOW *****\n", v104, v105, v106, v107, v108, v120);
      }

      sync();
      return 4;
    }
  }

  else if (v101 == 47 || v101 == 0)
  {
    return v101;
  }

  else
  {
    return 8;
  }
}

uint64_t sub_10002CACC(uint64_t result)
{
  v1 = result;
  v2 = qword_100043448;
  if (!qword_100043448)
  {
    result = malloc_type_malloc(0x1000uLL, 0x100004000313F17uLL);
    v2 = result;
    qword_100043448 = result;
    if (!result)
    {
      v15 = xmmword_100043460;
      v16 = *&qword_100043470;
      v17 = xmmword_100043480;
      v18 = *&off_100043490;
      result = sub_10002D0E8(&v15, 3, "Can't allocate memory for block list.\n", v3, v4, v5, v6, v7, v14);
      v2 = qword_100043448;
    }
  }

  v8 = dword_100043440;
  if ((dword_100043440 & 0x1FF) == 0)
  {
    result = malloc_type_realloc(v2, 8 * dword_100043440 + 4096, 0x100004000313F17uLL);
    v2 = result;
    if (!result)
    {
      v15 = xmmword_100043460;
      v16 = *&qword_100043470;
      v17 = xmmword_100043480;
      v18 = *&off_100043490;
      result = sub_10002D0E8(&v15, 3, "Can't allocate memory for block list (%llu entries).\n", v9, v10, v11, v12, v13, dword_100043440);
    }

    qword_100043448 = v2;
    v8 = dword_100043440;
  }

  dword_100043440 = v8 + 1;
  *(v2 + v8) = v1;
  return result;
}

BOOL sub_10002CBDC(char *__s1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_10004350B)
  {
    v24 = xmmword_100043460;
    v25 = *&qword_100043470;
    v26 = xmmword_100043480;
    v27 = *&off_100043490;
    sub_10002D0E8(&v24, 3, "INTERNAL ERROR: GOT TO reply()", a4, a5, a6, a7, a8, v22);
  }

  v9 = strcmp(__s1, "CONTINUE");
  v24 = xmmword_100043460;
  v25 = *&qword_100043470;
  v26 = xmmword_100043480;
  v27 = *&off_100043490;
  sub_10002D0E8(&v24, 2, "\n", v10, v11, v12, v13, v14, v22);
  if (v9 && (byte_100043509 || qword_1000434A8 < 0))
  {
    v24 = xmmword_100043460;
    v25 = *&qword_100043470;
    v26 = xmmword_100043480;
    v27 = *&off_100043490;
    sub_10002D0E8(&v24, 2, "%s? no\n\n", v15, v16, v17, v18, v19, __s1);
    return 0;
  }

  else if (byte_10004350A || !v9 && byte_100043509)
  {
    v24 = xmmword_100043460;
    v25 = *&qword_100043470;
    v26 = xmmword_100043480;
    v27 = *&off_100043490;
    sub_10002D0E8(&v24, 2, "%s? yes\n\n", v15, v16, v17, v18, v19, __s1);
    return 1;
  }

  else
  {
    do
    {
      v24 = xmmword_100043460;
      v25 = *&qword_100043470;
      v26 = xmmword_100043480;
      v27 = *&off_100043490;
      sub_10002D0E8(&v24, 2, "%s? [yn] ", v15, v16, v17, v18, v19, __s1);
      fflush(__stdoutp);
      v21 = getc(__stdinp);
      if (v21 != 10)
      {
        while (getc(__stdinp) != 10)
        {
          if (feof(__stdinp))
          {
            return 0;
          }
        }
      }
    }

    while ((v21 & 0xDF) != 0x59 && (v21 & 0xDF) != 0x4E);
    v24 = xmmword_100043460;
    v25 = *&qword_100043470;
    v26 = xmmword_100043480;
    v27 = *&off_100043490;
    sub_10002D0E8(&v24, 2, "\n", v15, v16, v17, v18, v19, v23);
    return (v21 & 0x5F) == 89;
  }
}

uint64_t sub_10002CDD8(uint64_t result, uint64_t a2)
{
  v9 = 1;
  if (*(&xmmword_100043480 + 1))
  {
    result = (*(&xmmword_100043480 + 1))(qword_100043478, result, a2);
  }

  if (byte_1000434B4)
  {
    result = sysctlbyname("kern.progressmeterenable", 0, 0, &v9, 4uLL);
    if (byte_10004350E)
    {
      v2 = result == -1;
    }

    else
    {
      v2 = 0;
    }

    if (v2)
    {
      result = __error();
      if (*result != 2)
      {
        v8[0] = xmmword_100043460;
        v8[1] = *&qword_100043470;
        v8[2] = xmmword_100043480;
        v8[3] = *&off_100043490;
        return sub_10002D0E8(v8, 7, "sysctl(%s) failed", v3, v4, v5, v6, v7, "kern.progressmeterenable");
      }
    }
  }

  return result;
}

uint64_t sub_10002CEA4(uint64_t result)
{
  v8 = result;
  if (off_100043490)
  {
    result = off_100043490(qword_100043478, result);
  }

  if (byte_1000434B4)
  {
    result = sysctlbyname("kern.progressmeter", 0, 0, &v8, 4uLL);
    if (byte_10004350E)
    {
      v1 = result == -1;
    }

    else
    {
      v1 = 0;
    }

    if (v1)
    {
      result = __error();
      if (*result != 2)
      {
        v7[0] = xmmword_100043460;
        v7[1] = *&qword_100043470;
        v7[2] = xmmword_100043480;
        v7[3] = *&off_100043490;
        return sub_10002D0E8(v7, 7, "sysctl(%s) failed", v2, v3, v4, v5, v6, "kern.progressmeter");
      }
    }
  }

  return result;
}

uint64_t sub_10002CF68(uint64_t result)
{
  v8 = 0;
  if (off_100043498)
  {
    result = off_100043498(qword_100043478, result);
  }

  if (byte_1000434B4)
  {
    result = sysctlbyname("kern.progressmeterenable", 0, 0, &v8, 4uLL);
    if (byte_10004350E)
    {
      v1 = result == -1;
    }

    else
    {
      v1 = 0;
    }

    if (v1)
    {
      result = __error();
      if (*result != 2)
      {
        v7[0] = xmmword_100043460;
        v7[1] = *&qword_100043470;
        v7[2] = xmmword_100043480;
        v7[3] = *&off_100043490;
        return sub_10002D0E8(v7, 7, "sysctl(%s) failed", v2, v3, v4, v5, v6, "kern.progressmeterenable");
      }
    }
  }

  return result;
}

double sub_10002D048()
{
  xmmword_100043510 = 0u;
  *&dword_100043520 = 0u;
  *&dword_1000434F0 = 0u;
  *&qword_100043500 = 0u;
  xmmword_1000434D0 = 0u;
  *&dword_1000434E0 = 0u;
  *&dword_1000434B0 = 0u;
  *&byte_1000434C0 = 0u;
  *&dword_1000434A0 = 0u;
  BYTE3(xmmword_100043510) = 2;
  *(&xmmword_1000434D0 + 1) = 512;
  dword_1000434A0 = -1;
  result = NAN;
  qword_1000434A8 = -1;
  return result;
}

uint64_t sub_10002D08C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&xmmword_100043460 = a4;
  *(&xmmword_100043460 + 1) = result;
  qword_100043470 = a2;
  qword_100043478 = a5;
  *&xmmword_100043480 = a3;
  return result;
}

uint64_t sub_10002D0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a1 + 16))
  {
    return (*(a1 + 16))(*(a1 + 24), a2, &a9);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_10002D0E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(result + 8))
  {
    return (*(result + 8))(*(result + 24), a2, a3, &a9);
  }

  return result;
}

uint64_t sub_10002D128(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(result + 32))
  {
    return (*(result + 32))(*(result + 24), a2, a3, &a9);
  }

  return result;
}

uint64_t sub_10002D45C(uint64_t result, void *a2, void *a3)
{
  *(&xmmword_100043480 + 1) = result;
  off_100043490 = a2;
  off_100043498 = a3;
  return result;
}

uint64_t sub_10002D470(uint64_t a1, uint64_t a2, char *a3, va_list a4)
{
  result = sub_10002D18C();
  if ((result & a2) != 0)
  {
    sub_100001B5C("\t", v8, v9, v10, v11, v12, v13, v14, v15);

    return sub_100001B88(a3, a4);
  }

  return result;
}

void start(int a1, char **a2)
{
  __endptr = 0;
  v4 = sub_10002E978();
  sub_10002D048();
  v99 = v4;
  sub_10002D08C(sub_10002E34C, sub_10002EE28, sub_10002D470, 0, v4);
  v5 = strrchr(*a2, 47);
  sub_10002D1A4(v5);
  if (sub_10002D198())
  {
    v6 = (sub_10002D198() + 1);
  }

  else
  {
    v6 = *a2;
  }

  sub_10002D1A4(v6);
  v7 = 0;
  while (1)
  {
    while (1)
    {
      v8 = getopt(a1, a2, "b:B:c:dD:e:EfgJlm:npqrR:SuxXy");
      if (v8 > 68)
      {
        break;
      }

      switch(v8)
      {
        case 66:
          v15 = optarg;
          v16 = fopen(optarg, "r");
          if (!v16)
          {
            sub_10002E448(3, "Can't open %s\n", v15);
          }

          *&v104.f_bsize = 0;
          if (fscanf(v16, "%lli", &v104) >= 1)
          {
            do
            {
              sub_10002CACC(*&v104.f_bsize);
            }

            while (fscanf(v16, "%lli", &v104) > 0);
          }

          fclose(v16);
          break;
        case 68:
          v13 = strtoul(optarg, 0, 0);
          sub_10002D180(v13);
          if (!sub_10002D18C())
          {
            v14 = sub_10002D198();
            sub_10002E448(6, "%s: invalid debug development argument.  Assuming zero\n", v14);
          }

          break;
        case -1:
          v30 = optind;
          if (!sub_10002D3A8() && sub_10002D3C0())
          {
            sub_10002D3B4(0);
          }

          if (!sub_10002D2D0())
          {
            sub_10002D2C4(512);
          }

          if (sub_10002D234())
          {
            sub_10002D39C(0);
          }

          v31 = a1 - v30;
          if (signal(2, 1) != 1)
          {
            signal(2, sub_100000828);
          }

          if (v31 <= 0)
          {
            sub_10002D198();
            sub_10002E448(6, "%s: missing special-device\n");
LABEL_90:
            sub_10002E47C();
          }

          sub_10002D3F0(2);
          sub_10002D3E4(2);
          if (sub_10002D348())
          {
            sub_10002D3E4(2);
          }

          if (sub_10002D390())
          {
            sub_10002D3F0(0);
            sub_10002D3E4(0);
            LODWORD(v32) = 1;
          }

          else
          {
            if (sub_10002D378())
            {
              sub_10002D3F0(4);
            }

            LODWORD(v32) = 2;
          }

          if (sub_10002D360())
          {
            LODWORD(v32) = 1;
            sub_10002D3E4(1);
            if (sub_10002D378())
            {
              v33 = 2;
            }

            else
            {
              v33 = 1;
            }

            sub_10002D3F0(v33);
          }

          if (sub_10002D3A8())
          {
            v32 = 3;
          }

          else
          {
            v32 = v32;
          }

          if (sub_10002D330())
          {
            sub_10002D3E4(0);
          }

          if (sub_10002D24C())
          {
            sub_10002D3F0(3);
            sub_10002D3E4(3);
          }

          v34 = &a2[v30];
          sub_10002D450(v32);
          sub_10002EC4C(v99, 0);
          sub_10002EB40(v99, sub_100001AC4);
          sub_10002EC30(v99, sub_1000019E4);
          if (sub_10002D234())
          {
            if (sub_10002D21C())
            {
              v35 = 3;
            }

            else
            {
              v35 = 2;
            }
          }

          else
          {
            v35 = 1;
          }

          sub_10002EC68(v99, v35);
          v36 = 0;
          v37 = "/";
          while (1)
          {
            v39 = *v34++;
            v38 = v39;
            memset(&v104, 0, 144);
            memset(&v103, 0, sizeof(v103));
            memset(&v102, 0, sizeof(v102));
            sub_10002D1E0(0);
            if (stat(v37, &v104) < 0)
            {
              sub_10002E448(0, v37);
              sub_10002E448(2, "Can't stat root\n", v97);
              goto LABEL_127;
            }

            if (!strncmp(v38, "/dev/fd/", 8uLL))
            {
LABEL_117:
              sub_10002D2DC(1);
              goto LABEL_127;
            }

            v40 = 0;
            while (1)
            {
              sub_10002D2DC(0);
              if (stat(v38, &v103) < 0)
              {
                sub_10002E448(0, v38);
LABEL_126:
                sub_10002E448(2, "Can't stat %s\n");
                goto LABEL_127;
              }

              v41 = v103.st_mode & 0xF000;
              if (v41 == 24576)
              {
                break;
              }

              if (v40 & 1 | (v41 != 0x2000))
              {
                goto LABEL_127;
              }

              v42 = sub_10002E714(v38);
              v40 = 1;
              if (!strncmp(v42, "/dev/fd/", 8uLL))
              {
                goto LABEL_117;
              }
            }

            if (v104.f_bsize == v103.st_rdev)
            {
              sub_10002D1E0(1);
            }

            v43 = sub_10002E67C(v38);
            if (stat(v43, &v102) < 0)
            {
              sub_10002E448(0, v43);
              goto LABEL_126;
            }

            if ((v102.st_mode & 0xF000) == 0x2000)
            {
              v38 = v43;
            }

            else
            {
              sub_10002E448(2, "%s is not a character device\n");
            }

LABEL_127:
            sub_10002D2F4(v38);
            v44 = sub_10002D300();
            if (sub_10002D2E8() || (v46 = strdup(v44), !sub_10002E714(v46)))
            {
              v45 = 0;
            }

            else
            {
              *&v104.f_bsize = 0;
              v47 = getmntinfo(&v104, 2);
              if (v47 < 1)
              {
LABEL_134:
                v45 = 0;
              }

              else
              {
                v48 = v47;
                v49 = (*&v104.f_bsize + 1112);
                while (strcmp(v46, v49))
                {
                  v49 += 2168;
                  if (!--v48)
                  {
                    goto LABEL_134;
                  }
                }

                v45 = strdup(v49 - 1024);
              }

              free(v46);
            }

            if (sub_10002D1EC())
            {
              if (v45)
              {
                free(v45);
              }

              v45 = strdup(v37);
            }

            if (!v45)
            {
              goto LABEL_149;
            }

            memset(&v104, 0, 512);
            if (statfs(v45, &v104))
            {
              goto LABEL_149;
            }

            if (!sub_10002D318())
            {
              if (v104.f_flags)
              {
                sub_10002D1F8(1);
                goto LABEL_149;
              }

              sub_10002E448(2, "ERROR: volume %s is mounted with write access. Re-run with (-l) to freeze volume.\n");
              goto LABEL_211;
            }

            v50 = open(v45, 0);
            sub_10002D168(v50);
            if ((sub_10002D174() & 0x80000000) != 0)
            {
              sub_10002E448(2, "ERROR: could not open %s to freeze the volume.\n", v45);
              free(v45);
              goto LABEL_211;
            }

            v51 = sub_10002D174();
            if (fcntl(v51, 53, 0))
            {
              free(v45);
              v96 = __error();
              strerror(*v96);
              sub_10002E448(2, "ERROR: could not freeze volume (%s)\n");
              goto LABEL_211;
            }

LABEL_149:
            sub_10002D420(v45);
            if (sub_10002D2E8())
            {
              *&v104.f_bsize = 0;
              v52 = strtol(v38 + 8, &v104, 10);
              if (**&v104.f_bsize)
              {
                sub_10002E448(4, "fsck_hfs: Invalid file descriptor path: %s", v38);
              }

              v53 = v52;
            }

            else
            {
              if (sub_10002D204())
              {
                v54 = open(v38, 2);
              }

              else
              {
                v54 = open(v38, 34);
              }

              v55 = v54;
              if (sub_10002D330() || sub_10002D390() || (v55 & 0x80000000) != 0)
              {
                sub_10002D1C8(0xFFFFFFFFLL);
                if (sub_10002D360())
                {
                  sub_10002E448(3, "** %s (NO WRITE ACCESS)\n", v38);
                }
              }

              v53 = v55;
            }

            sub_10002D1C8(v53);
            if (sub_10002D1D4() < 1)
            {
              v58 = open(v38, 0);
              v59 = __error();
              v60 = strerror(*v59);
              sub_10002E448(2, "Can't open %s: %s\n", v38, v60);
              if ((v58 & 0x80000000) == 0)
              {
                sub_10002D1B0(v58);
                goto LABEL_167;
              }

LABEL_211:
              if (sub_10002D360())
              {
                sub_10002E448(3, "CAN'T CHECK FILE SYSTEM.");
              }

              else if (sub_10002D348())
              {
                sub_10002E5CC();
              }

              exit(8);
            }

            v56 = sub_10002D1D4();
            v57 = dup(v56);
            sub_10002D1B0(v57);
            if ((sub_10002D1BC() & 0x80000000) != 0)
            {
              v93 = __error();
              v94 = strerror(*v93);
              sub_10002E448(2, "Can't dup fd for reading on %s: %s\n", v38, v94);
              v95 = sub_10002D1D4();
              close(v95);
              goto LABEL_211;
            }

LABEL_167:
            v61 = sub_10002D1BC();
            *&v104.f_bsize = 0;
            v103.st_dev = 0;
            if (ioctl(v61, 0x40046418uLL, &v103) < 0)
            {
              v91 = __error();
              strerror(*v91);
              sub_10002E448(2, "Can't get device block size (%s)\n");
              goto LABEL_211;
            }

            if ((v103.st_dev & (v103.st_dev - 1)) != 0)
            {
              sub_10002E448(2, "Physical block size is not a power of 2\n", v98);
              goto LABEL_211;
            }

            if (v103.st_dev > 0x4000u)
            {
              sub_10002E448(2, "Physical block size cannot be greater than 16 KiB\n", v98);
              goto LABEL_211;
            }

            sub_10002D3FC(v103.st_dev);
            if (ioctl(v61, 0x40086419uLL, &v104) < 0)
            {
              v92 = __error();
              strerror(*v92);
              sub_10002E448(2, "Can't get device block count (%s)\n");
              goto LABEL_211;
            }

            v62 = v37;
            sub_10002D414(*&v104.f_bsize);
            if (!sub_10002D2E8() && !sub_10002D330() && !sub_10002D390())
            {
              v70 = strlen(v38);
              v71 = malloc_type_malloc(v70 + 2, 0x37280573uLL);
              if (v71)
              {
                v72 = v71;
                v73 = strcpy(v71, v38);
                v74 = strrchr(v73, 47);
                if (v74 && (v75 = v74, v76 = v74 + 1, v74[1] == 114))
                {
                  v77 = strlen(v74 + 2);
                  memmove(v76, v75 + 2, v77 + 1);
                  if (sub_10002D204())
                  {
                    v78 = open(v72, 1);
                  }

                  else
                  {
                    v78 = open(v72, 33);
                  }

                  v79 = v78;
                  sub_10002D42C(0);
                  if (v79 >= 1)
                  {
                    sub_10002D42C(1);
                    free(v72);
                    goto LABEL_197;
                  }

                  v100 = v79;
                }

                else
                {
                  sub_10002D42C(0);
                  v100 = -1;
                }

                v80 = getfsstat(0, 0, 2);
                if ((v80 & 0x80000000) == 0)
                {
                  v81 = 2168 * v80;
                  v82 = malloc_type_malloc(2168 * v80, 0x100004087E0324AuLL);
                  if (v82)
                  {
                    v83 = v82;
                    v84 = getfsstat(v82, v81, 2);
                    if ((v84 & 0x80000000) == 0)
                    {
                      v85 = v84;
                      if (!v84)
                      {
                        goto LABEL_194;
                      }

                      v86 = v83;
                      while (strcmp(v86->f_mntfromname, v72))
                      {
                        ++v86;
                        if (!--v85)
                        {
                          goto LABEL_194;
                        }
                      }

                      if (v86->f_flags)
                      {
LABEL_194:
                        sub_10002D42C(1);
                      }
                    }

                    free(v83);
                  }
                }

                free(v72);
                v79 = v100;
                if (v100 != -1)
                {
LABEL_197:
                  close(v79);
                }
              }
            }

            v87 = sub_10002BBF4(v38, v63, v64, v65, v66, v67, v68, v69);
            v88 = sub_10002D1BC();
            v89 = sub_10002D1D4();
            if (v88 >= 1)
            {
              close(v88);
            }

            if (v89)
            {
              close(v89);
            }

            v36 |= v87;
            v90 = v31-- <= 1;
            v37 = v62;
            if (v90)
            {
              if (v99)
              {
                sub_10002EAD0(v99);
              }

              exit(v36);
            }
          }

        default:
LABEL_83:
          sub_10002E47C();
      }
    }

    switch(v8)
    {
      case 'R':
        v9 = optarg;
        if (!optarg)
        {
          goto LABEL_28;
        }

        break;
      case 'S':
        sub_10002D3CC(1);
        continue;
      case 'T':
      case 'U':
      case 'V':
      case 'W':
      case 'Y':
      case 'Z':
      case '[':
      case '\\':
      case ']':
      case '^':
      case '_':
      case 'a':
      case 'h':
      case 'i':
      case 'j':
      case 'k':
      case 'o':
      case 's':
      case 't':
      case 'u':
      case 'v':
      case 'w':
        goto LABEL_83;
      case 'X':
        sub_10002D45C(sub_10002F704, sub_10002F768, sub_10002F784);
        continue;
      case 'b':
        v26 = atoi(optarg);
        sub_10002D2C4(v26);
        if (v26 >= 512 && ((v26 + 0x7FFFFFFFLL) & v26) == 0)
        {
          continue;
        }

        sub_10002D198();
        sub_10002E448(6, "%s invalid block size %d\n");
        goto LABEL_70;
      case 'c':
        v22 = strtoull(optarg, &__endptr, 0);
        sub_10002D2AC(v22);
        v23 = __endptr;
        if (*__endptr)
        {
          v24 = sub_10002D2B8();
          v25 = __tolower(*v23);
          switch(v25)
          {
            case 'm':
              v7 = v24 << 20;
              break;
            case 'k':
              v7 = v24 << 10;
              break;
            case 'g':
              v7 = v24 << 30;
              break;
            default:
              v7 = 0;
              break;
          }
        }

        sub_10002D2AC(v7);
        continue;
      case 'd':
        sub_10002D39C(1);
        continue;
      case 'e':
        v17 = optarg;
        if (!optarg)
        {
          continue;
        }

        if (!strcasecmp(optarg, "embedded"))
        {
          v18 = 1;
        }

        else
        {
          v18 = strcasecmp(v17, "desktop");
          if (v18)
          {
            continue;
          }
        }

        sub_10002D3D8(v18);
        continue;
      case 'f':
        goto LABEL_41;
      case 'g':
        goto LABEL_57;
      case 'l':
        sub_10002D30C(1);
        sub_10002D324(1);
        sub_10002D33C(0);
LABEL_41:
        sub_10002D36C(1);
        continue;
      case 'm':
        sub_10002D270(1);
        v19 = strtol(optarg, 0, 8);
        sub_10002D294(v19);
        v20 = sub_10002D2A0();
        if (v19 == v19 && v20 != 0)
        {
          continue;
        }

        sub_10002D198();
        sub_10002E448(6, "%s: %ld is invalid mode argument\n");
        goto LABEL_90;
      case 'n':
        sub_10002D324(1);
        sub_10002D33C(0);
        sub_10002D3E4(0);
        continue;
      case 'p':
        sub_10002D354(1);
        continue;
      case 'q':
        sub_10002D384(1);
        continue;
      case 'r':
        v28 = sub_10002D264();
        sub_10002D240(1);
        sub_10002D258(v28 | 1u);
        continue;
      case 'x':
        sub_10002D210(1);
LABEL_57:
        sub_10002D228(1);
        continue;
      case 'y':
LABEL_28:
        sub_10002D33C(1);
        sub_10002D324(0);
        sub_10002D3E4(2);
        continue;
      default:
        if (v8 == 69)
        {
          sub_10002D27C(1);
          continue;
        }

        if (v8 == 74)
        {
          sub_10002D3B4(1);
          continue;
        }

        goto LABEL_83;
    }

    while (1)
    {
      v10 = *v9;
      if (v10 <= 0x62)
      {
        break;
      }

      if (v10 == 101)
      {
        v11 = 2;
      }

      else
      {
        if (v10 != 99)
        {
          goto LABEL_69;
        }

        v11 = 1;
      }

LABEL_15:
      v12 = sub_10002D264();
      sub_10002D240(1);
      sub_10002D258(v12 | v11);
      ++v9;
    }

    if (v10 == 97)
    {
      break;
    }

    if (*v9)
    {
LABEL_69:
      sub_10002D198();
      v29 = *v9;
LABEL_70:
      exit(2);
    }
  }

  v11 = 4;
  goto LABEL_15;
}

void sub_10002E34C(int a1, int a2, char *a3, __darwin_va_list a4)
{
  if (a2 <= 2)
  {
    switch(a2)
    {
      case 1:

        sub_100001824(a3, a4);
        break;
      case 2:

        sub_100001B88(a3, a4);
        break;
      case 0:

        perror(a3);
        break;
    }
  }

  else if (a2 <= 5)
  {
    if (a2 == 3)
    {

      sub_1000014C0(a3, a4);
    }

    else if (a2 == 4)
    {
      verr(1, a3, a4);
    }
  }

  else if (a2 == 6)
  {
    v5 = __stderrp;

    sub_100001C9C(v5, a3, a4);
  }

  else if (a2 == 7)
  {

    vwarn(a3, a4);
  }
}

void sub_10002E47C()
{
  v0 = sub_10002D198();
  sub_10002E448(6, "usage: %s [-b [size] B [path] c [size] e [mode] ESdfglx m [mode] npqruy] special-device\n", v0);
  sub_10002E448(6, "  b size = size of physical blocks (in bytes) for -B option\n");
  sub_10002E448(6, "  B path = file containing physical block numbers to map to paths\n");
  sub_10002E448(6, "  c size = cache size (ex. 512m, 1g)\n");
  sub_10002E448(6, "  e mode = emulate 'embedded' or 'desktop'\n");
  sub_10002E448(6, "  E = exit on first major error\n");
  sub_10002E448(6, "  d = output debugging info\n");
  sub_10002E448(6, "  f = force fsck even if clean (preen only) \n");
  sub_10002E448(6, "  g = GUI output mode\n");
  sub_10002E448(6, "  x = XML output mode\n");
  sub_10002E448(6, "  l = live fsck (lock down and test-only)\n");
  sub_10002E448(6, "  m arg = octal mode used when creating lost+found directory \n");
  sub_10002E448(6, "  n = assume a no response \n");
  sub_10002E448(6, "  p = just fix normal inconsistencies \n");
  sub_10002E448(6, "  q = quick check returns clean, dirty, or failure \n");
  sub_10002E448(6, "  r = rebuild catalog btree \n");
  sub_10002E448(6, "  S = Scan disk for bad blocks\n");
  sub_10002E448(6, "  u = usage \n");
  sub_10002E448(6, "  y = assume a yes response \n");
  exit(1);
}

uint64_t sub_10002E5CC()
{
  result = sub_10002D174();
  if ((result & 0x80000000) == 0)
  {
    v1 = sub_10002D174();
    fcntl(v1, 54, 0);
    v2 = sub_10002D174();
    close(v2);

    return sub_10002D168(0xFFFFFFFFLL);
  }

  return result;
}

uint64_t sub_10002E628()
{
  sub_10002D02C();
  v0 = sub_10002D1D4();
  v1 = sub_10002D1BC();
  result = close(v1);
  if ((v0 & 0x80000000) == 0)
  {
    v3 = sub_10002D1D4();

    return close(v3);
  }

  return result;
}

void *sub_10002E67C(char *a1)
{
  v1 = strrchr(a1, 47);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  *v1 = 0;
  v3 = &unk_10004862D;
  __strlcpy_chk();
  *v2 = 47;
  __strlcat_chk();
  __strlcat_chk();
  return v3;
}

char *sub_10002E714(char *a1)
{
  v2 = strrchr(a1, 47);
  if (v2)
  {
    v3 = v2;
    memset(&v6, 0, sizeof(v6));
    if ((stat(a1, &v6) & 0x80000000) == 0 && (v6.st_mode & 0xF000) == 0x2000 && v3[1] == 114)
    {
      v4 = strlen(v3 + 2);
      memmove(v3 + 1, v3 + 2, v4 + 1);
    }
  }

  return a1;
}

uint64_t sub_10002E7B8(uint64_t result, unsigned int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[16] = 0;
  if (a2)
  {
    v9 = result;
    v10 = 0;
    v18 = a2;
    v11 = a2;
    do
    {
      if (a3 && (v10 & 0xF) == 0)
      {
        v19 = xmmword_100043460;
        v20 = *&qword_100043470;
        v21 = xmmword_100043480;
        v22 = *&off_100043490;
        sub_10002D0E8(&v19, 2, "%08X: ", a4, a5, a6, a7, a8, v10);
      }

      v12 = *(v9 + v10);
      v19 = xmmword_100043460;
      v20 = *&qword_100043470;
      v21 = xmmword_100043480;
      v22 = *&off_100043490;
      result = sub_10002D0E8(&v19, 2, "%02X ", a4, a5, a6, a7, a8, v12);
      if ((v12 - 127) >= 0xFFFFFFA1)
      {
        v13 = v12;
      }

      else
      {
        v13 = 46;
      }

      v23[v10 & 0xF] = v13;
      if ((v10 & 0xF) == 0xF)
      {
        v19 = xmmword_100043460;
        v20 = *&qword_100043470;
        v21 = xmmword_100043480;
        v22 = *&off_100043490;
        result = sub_10002D0E8(&v19, 2, "  %s\n", a4, a5, a6, a7, a8, v23);
      }

      ++v10;
    }

    while (v11 != v10);
    v14 = v18 & 0xF;
    if ((v18 & 0xF) != 0)
    {
      v15 = v14 | 0xFFFFFFF0;
      do
      {
        v19 = xmmword_100043460;
        v20 = *&qword_100043470;
        v21 = xmmword_100043480;
        v22 = *&off_100043490;
        sub_10002D0E8(&v19, 2, "   ", a4, a5, a6, a7, a8, v17);
      }

      while (!__CFADD__(v15++, 1));
      v23[v14] = 0;
      v19 = xmmword_100043460;
      v20 = *&qword_100043470;
      v21 = xmmword_100043480;
      v22 = *&off_100043490;
      return sub_10002D0E8(&v19, 2, "  %s\n", a4, a5, a6, a7, a8, v23);
    }
  }

  return result;
}

FILE **sub_10002E978()
{
  v0 = malloc_type_calloc(1uLL, 0x50uLL, 0x10A00407214414DuLL);
  v1 = v0;
  if (v0)
  {
    if (sub_10002E9F4(v0, &unk_100041A58) == -1)
    {
      sub_10002EAD0(v1);
      return 0;
    }

    else
    {
      v1[5] = sub_10002EB5C;
    }
  }

  return v1;
}

uint64_t sub_10002E9F4(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    v4 = a2;
    if (a2)
    {
      if (!*(a2 + 8))
      {
        return 0;
      }

      v5 = 0;
      v6 = (a2 + 48);
      do
      {
        v7 = *v6;
        v6 += 5;
        ++v5;
      }

      while (v7);
      v8 = malloc_type_realloc(*(a1 + 32), 8 * (*(a1 + 24) + v5), 0x2004093837F09uLL);
      if (v8)
      {
        *(a1 + 32) = v8;
        v9 = *(a1 + 24);
        v10 = 8 * v9;
        v11 = v5;
        do
        {
          *(*(a1 + 32) + v10) = v4;
          v10 += 8;
          v4 += 40;
          --v11;
        }

        while (v11);
        v12 = *(a1 + 32);
        v13 = v9 + v5;
        *(a1 + 24) = v13;
        qsort(v12, v13, 8uLL, sub_10002EE10);
        return 0;
      }

      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void sub_10002EAD0(FILE **a1)
{
  if (a1)
  {
    v2 = a1[4];
    if (v2)
    {
      free(v2);
    }

    if (a1[1])
    {
      fclose(*a1);
    }

    v3 = a1[8];
    if (v3)
    {
      _Block_release(v3);
    }

    v4 = a1[9];
    if (v4)
    {
      _Block_release(v4);
    }

    free(a1);
  }
}

uint64_t sub_10002EB40(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 40) = a2;
  return result;
}

FILE **sub_10002EB5C(FILE **result, char *a2)
{
  if (result)
  {
    v2 = result;
    v3 = *result;
    if (!*result)
    {
      v3 = __stdoutp;
    }

    fputs(a2, v3);
    if (*v2)
    {
      v4 = *v2;
    }

    else
    {
      v4 = __stdoutp;
    }

    return fflush(v4);
  }

  return result;
}

void sub_10002EBC8(uint64_t a1, int a2, void *aBlock)
{
  if (a1)
  {
    if (a2 == 2)
    {
      v5 = (a1 + 72);
      v4 = *(a1 + 72);
      if (!v4)
      {
LABEL_6:
        if (aBlock)
        {
          *v5 = _Block_copy(aBlock);
        }

        return;
      }
    }

    else
    {
      if (a2 != 1)
      {
        return;
      }

      v5 = (a1 + 64);
      v4 = *(a1 + 64);
      if (!v4)
      {
        goto LABEL_6;
      }
    }

    _Block_release(v4);
    *v5 = 0;
    goto LABEL_6;
  }
}

uint64_t sub_10002EC30(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 48) = a2;
  return result;
}

uint64_t sub_10002EC4C(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a1 = a2;
  return result;
}

uint64_t sub_10002EC68(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 16) = a2;
  return result;
}

uint64_t sub_10002EC84(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

void sub_10002EC90(uint64_t a1, char *__format, va_list a3)
{
  if (!a1)
  {
    return;
  }

  v5 = vsnprintf(__str, 0x400uLL, __format, a3);
  if (v5 < 0x401)
  {
LABEL_10:
    if (*(a1 + 58) == 1)
    {
      v11 = *(a1 + 48);
      if (!v11)
      {
        return;
      }
    }

    else
    {
      v11 = *(a1 + 40);
      if (!v11)
      {
        return;
      }
    }

    v11(a1, __str);
    return;
  }

  v6 = v5;
  v7 = v5 + 1;
  v8 = malloc_type_malloc(v7, 0x1225A67DuLL);
  if (!v8)
  {
    strcpy(__str, "* * * cannot allocate memory * * *\n");
    goto LABEL_10;
  }

  v9 = v8;
  if (v7 <= vsnprintf(v8, v6, __format, a3))
  {
    strcpy(__str, " * * * cannot allocate memory * * *\n");
    free(v9);
    goto LABEL_10;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v10(a1, v9);
  }

  free(v9);
}

uint64_t sub_10002EE28(uint64_t a1, int a2, va_list a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = sub_10002EF7C(a1, a2);
  if (!v4)
  {
    sub_100030A28();
  }

  v5 = v4;
  v6 = *(a1 + 16) - 1;
  if (v6 > 2)
  {
    v7 = sub_10002F6FC;
  }

  else
  {
    v7 = off_10003C548[v6];
  }

  if (*(a1 + 64))
  {
    v9 = (*(*(a1 + 64) + 16))();
    v8 = v9;
    if (v9 == -1)
    {
      return v8;
    }

    if (v9 == 1)
    {
      return 0;
    }
  }

  *(a1 + 58) = 1;
  sub_10002EFC8(a1, v5, a3);
  *(a1 + 58) = 0;
  if (*(a1 + 40))
  {
    v8 = (v7)(a1, v5, a3);
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 72))
  {
    v10 = (*(*(a1 + 72) + 16))();
    if (v10 == -1)
    {
      return v10;
    }

    if (v10 == 1)
    {
      return 0;
    }
  }

  return v8;
}

void *sub_10002EF7C(uint64_t a1, int a2)
{
  __key = a2;
  result = bsearch(&__key, *(a1 + 32), *(a1 + 24), 8uLL, sub_10002F7A0);
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t sub_10002EFC8(uint64_t a1, uint64_t a2, va_list a3)
{
  v5 = *(a2 + 16);
  if (v5 != 8)
  {
    v19[5] = v3;
    v19[6] = v4;
    v18 = 0;
    v19[0] = 0;
    v7 = v5 - 1;
    if (v7 > 8)
    {
      v8 = "";
      v9 = "";
    }

    else
    {
      v8 = off_10003C560[v7];
      v9 = *(&off_10003C5A8 + v7);
    }

    vasprintf(&v18, *(a2 + 8), a3);
    if (v18)
    {
      asprintf(v19, "%s%s%s\n", v8, v18, v9);
      free(v18);
      v16 = v19[0];
      if (v19[0])
      {
        sub_10002EDE4(a1, "%s", v10, v11, v12, v13, v14, v15, v19[0]);
        free(v16);
      }
    }
  }

  return 0;
}

uint64_t sub_10002F09C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = sub_10002F7B4(*(a2 + 8));
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = v5;
  v13 = *(a2 + 16) - 1;
  if (v13 > 8)
  {
    LOBYTE(v14) = 63;
  }

  else
  {
    v14 = dword_100032208[v13];
  }

  if (*a2 != 119)
  {
    v24 = *(a2 + 24);
    sub_10002EDE4(a1, "(%c,%s,%d)\n", v6, v7, v8, v9, v10, v11, v14);
  }

  if (*(a2 + 24) >= 1)
  {
    for (i = 0; i < *(a2 + 24); ++i)
    {
      v17 = *(*(a2 + 32) + 4 * i);
      if (v17 > 7)
      {
        if (v17 == 8)
        {
          v21 = a3;
          a3 += 2;
          sub_10002EDE4(a1, "(%d %%)\n", v6, v7, v8, v9, v10, v11, *v21);
          continue;
        }

        if (v17 == 9)
        {
LABEL_12:
          v18 = a3;
          a3 += 2;
          sub_10002EDE4(a1, "%s\n", v6, v7, v8, v9, v10, v11, *v18);
          continue;
        }

        if (v17 != 10)
        {
          goto LABEL_23;
        }

        v19 = a3;
        a3 += 2;
        sub_10002EDE4(a1, "%llu\n", v6, v7, v8, v9, v10, v11, *v19);
      }

      else
      {
        if ((v17 - 3) < 5)
        {
          goto LABEL_12;
        }

        if (v17 == 1)
        {
          v23 = a3;
          a3 += 2;
          sub_10002EDE4(a1, "%d\n", v6, v7, v8, v9, v10, v11, *v23);
          continue;
        }

        if (v17 != 2)
        {
LABEL_23:
          v22 = a3;
          a3 += 2;
          sub_10002EDE4(a1, "%p\n", v6, v7, v8, v9, v10, v11, *v22);
          continue;
        }

        v20 = a3;
        a3 += 2;
        sub_10002EDE4(a1, "%ld\n", v6, v7, v8, v9, v10, v11, *v20);
      }
    }
  }

  free(v12);
  return 0;
}

uint64_t sub_10002F2B4(uint64_t a1, char **a2, uint64_t *a3)
{
  v5 = sub_10002F7B4(a2[1]);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = v5;
  sub_10002EDE4(a1, "%s", v6, v7, v8, v9, v10, v11, "<plist version=1.0>\n");
  sub_10002EDE4(a1, "%s", v13, v14, v15, v16, v17, v18, "\t<dict>\n");
  v25 = *(a2 + 4) - 1;
  if (v25 <= 8)
  {
    v26 = (&off_10003C5F0)[v25];
  }

  sub_10002EDE4(a1, "\t\t<key>%s</key> <string>%s</string>\n", v19, v20, v21, v22, v23, v24, "fsck_msg_type");
  if (*a2 != 119)
  {
    *(a2 + 5);
    sub_10002EDE4(a1, "\t\t<key>%s</key> <integer>%s</integer>\n", v28, v29, v30, v31, v32, v33, "fsck_verbosity");
    v97 = *a2;
    sub_10002EDE4(a1, "\t\t<key>%s</key> <integer>%u</integer>\n", v34, v35, v36, v37, v38, v39, "fsck_msg_number");
    sub_10002EDE4(a1, "\t\t<key>%s</key> <string>%s</string>\n", v40, v41, v42, v43, v44, v45, "fsck_msg_string");
  }

  if (*(a2 + 6) >= 1)
  {
    sub_10002EDE4(a1, "\t\t<key>%s</key>\n", v28, v29, v30, v31, v32, v33, "parameters");
    sub_10002EDE4(a1, "%s", v46, v47, v48, v49, v50, v51, "\t\t<array>\n");
    if (*(a2 + 6) >= 1)
    {
      for (i = 0; i < *(a2 + 6); ++i)
      {
        v60 = *&a2[4][4 * i];
        if (v60 > 5)
        {
          if (v60 <= 7)
          {
            if (v60 == 6)
            {
              v74 = a3++;
              v68 = sub_10002F904(*v74, v58);
              v69 = "directory";
            }

            else
            {
              v72 = a3++;
              v68 = sub_10002F904(*v72, v58);
              v69 = "volumename";
            }

LABEL_29:
            sub_10002EDE4(a1, "\t\t\t<dict><key>%s</key> <string>%s</string></dict>\n", v62, v63, v64, v65, v66, v67, v69);
            goto LABEL_30;
          }

          if (v60 == 8)
          {
LABEL_25:
            v73 = a3++;
            sub_10002EDE4(a1, "\t\t\t<integer>%d</integer>\n", v52, v53, v54, v55, v56, v57, *v73);
            continue;
          }

          if (v60 == 9)
          {
            v83 = a3++;
            v68 = sub_10002F904(*v83, v58);
            sub_10002EDE4(a1, "\t\t\t<dict><key>%s</key> <string>%s</string></dict>\n", v84, v85, v86, v87, v88, v89, "fstype");
            goto LABEL_30;
          }

          if (v60 != 10)
          {
            goto LABEL_32;
          }

          v70 = a3++;
          sub_10002EDE4(a1, "\t\t\t<integer>%llu</integer>\n", v52, v53, v54, v55, v56, v57, *v70);
        }

        else
        {
          if (v60 > 2)
          {
            if (v60 != 3)
            {
              if (v60 == 4)
              {
                v82 = a3++;
                v68 = sub_10002F904(*v82, v58);
                v69 = "path";
              }

              else
              {
                v61 = a3++;
                v68 = sub_10002F904(*v61, v58);
                v69 = "file";
              }

              goto LABEL_29;
            }

            v75 = a3++;
            v68 = sub_10002F904(*v75, v58);
            sub_10002EDE4(a1, "\t\t\t<string>%s</string>\n", v76, v77, v78, v79, v80, v81, v68);
LABEL_30:
            free(v68);
            continue;
          }

          if (v60 == 1)
          {
            goto LABEL_25;
          }

          if (v60 != 2)
          {
LABEL_32:
            v90 = a3++;
            sub_10002EDE4(a1, "\t\t\t<integer>%p</integer>\n", v52, v53, v54, v55, v56, v57, *v90);
            continue;
          }

          v71 = a3++;
          sub_10002EDE4(a1, "\t\t\t<integer>%ld</integer>\n", v52, v53, v54, v55, v56, v57, *v71);
        }
      }
    }

    sub_10002EDE4(a1, "%s", v52, v53, v54, v55, v56, v57, "\t\t</array>\n");
  }

  sub_10002EDE4(a1, "%s", v28, v29, v30, v31, v32, v33, "\t</dict>\n");
  sub_10002EDE4(a1, "%s", v91, v92, v93, v94, v95, v96, "</plist>\n");
  free(v12);
  return 0;
}

uint64_t sub_10002F704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = os_variant_has_internal_content();
  if (result)
  {
    byte_10004864D = 1;

    return _FSKitCheckStart(a2, a3);
  }

  return result;
}

void sub_10002F768(uint64_t a1, uint64_t a2)
{
  if (byte_10004864D == 1)
  {
    _FSKitCheckUpdate(a2);
  }
}

void sub_10002F784(uint64_t a1, uint64_t a2)
{
  if (byte_10004864D == 1)
  {
    _FSKitCheckDone(a2);
  }
}

_BYTE *sub_10002F7B4(char *__s)
{
  v1 = __s;
  for (i = 1; __s; i = (i + 5))
  {
    __s = strchr(__s + 1, 37);
  }

  v3 = strlen(v1);
  v4 = malloc_type_calloc(1uLL, i + v3, 0x519AF52BuLL);
  v5 = v4;
  if (v4)
  {
    v6 = *v1;
    v7 = v4;
    if (*v1)
    {
      v8 = 0;
      v9 = 0;
      v10 = v4;
      do
      {
        if (v8)
        {
          v11 = v6 - 65;
          v12 = ((1 << (v6 - 65)) & 0x94E97D0094407DLL) == 0;
          v8 = v11 > 0x37 || v12;
          v7 = v10;
        }

        else
        {
          *v10 = v6;
          v7 = v10 + 1;
          if (*v1 == 37)
          {
            if (v1[1] == 37)
            {
              v8 = 0;
              v7 = v10 + 2;
              v10[1] = 37;
              ++v1;
            }

            else
            {
              v7 += sprintf(v10 + 1, "%d$@", ++v9);
              v8 = 1;
            }
          }

          else
          {
            v8 = 0;
          }
        }

        v13 = *++v1;
        v6 = v13;
        v10 = v7;
      }

      while (v13);
    }

    *v7 = 0;
  }

  return v5;
}

char *sub_10002F904(uint64_t a1, double a2)
{
  result = __chkstk_darwin(a1, a2);
  if (result)
  {
    v3 = result;
    v4 = __s1;
    bzero(__s1, 0x1801uLL);
    while (1)
    {
      v5 = *v3;
      if (v5 <= 0x26)
      {
        if (v5 == 34)
        {
          *v4 = 1869967654;
          *(v4 + 2) = 15220;
          goto LABEL_15;
        }

        if (v5 == 38)
        {
          *v4 = 1886216486;
          v4[4] = 59;
          v6 = 5;
          goto LABEL_18;
        }

        if (!*v3)
        {
          return strdup(__s1);
        }
      }

      else
      {
        switch(v5)
        {
          case '\'':
            *v4 = 1869635878;
            *(v4 + 2) = 15219;
LABEL_15:
            v6 = 6;
            goto LABEL_18;
          case '<':
            *v4 = 997485606;
            goto LABEL_13;
          case '>':
            *v4 = 997484326;
LABEL_13:
            v6 = 4;
            goto LABEL_18;
        }
      }

      *v4 = v5;
      v6 = 1;
LABEL_18:
      v4 += v6;
      ++v3;
    }
  }

  return result;
}

uint64_t sub_10002FA58(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v70 = 0u;
  v71 = 0u;
  v69 = 0u;
  v68 = 0;
  v56 = &v68;
  if (ioctl(a1, 0x40046418uLL) == -1)
  {
    v68 = a4;
    v18 = a4;
  }

  else
  {
    v18 = v68;
    if (v68 < a4)
    {
      v72 = xmmword_100043460;
      v73 = *&qword_100043470;
      v74 = xmmword_100043480;
      v75 = *&off_100043490;
      v56 = "journal_open";
      v19 = "%s:  journal block size %u < min block size %zu for %s\n";
LABEL_9:
      v21 = 6;
LABEL_10:
      sub_10002D0E8(&v72, v21, v19, v12, v13, v14, v15, v16, v56);
      return 0xFFFFFFFFLL;
    }

    if (v68 % a4)
    {
      v72 = xmmword_100043460;
      v73 = *&qword_100043470;
      v74 = xmmword_100043480;
      v75 = *&off_100043490;
      v56 = "journal_open";
      v19 = "%s:  journal block size %u is not a multiple of fs block size %zu for %s\n";
      goto LABEL_9;
    }
  }

  sub_100030270(a1, v17, a2, v18, &v69);
  if (v20)
  {
    v72 = xmmword_100043460;
    v73 = *&qword_100043470;
    v74 = xmmword_100043480;
    v75 = *&off_100043490;
    v56 = "journal_open";
    v19 = "%s:  unable to load journal header from %s\n";
    goto LABEL_9;
  }

  if (v69.n128_u32[1] == 305419896)
  {
    v23 = &off_1000433A8;
  }

  else
  {
    if (v69.n128_u32[1] != 2018915346)
    {
      v72 = xmmword_100043460;
      v73 = *&qword_100043470;
      v74 = xmmword_100043480;
      v75 = *&off_100043490;
      v56 = "journal_open";
      v19 = "%s:  Unknown journal endian magic number %#x from %s\n";
      goto LABEL_9;
    }

    v23 = &off_1000433C8;
  }

  v24 = v69.n128_u32[0];
  if ((*(v23[2] + 2))(v23[2], v69.n128_u32[0]) != 1246645368 && (*(v23[2] + 2))(v23[2], v24) != 1246250066)
  {
    v72 = xmmword_100043460;
    v73 = *&qword_100043470;
    v74 = xmmword_100043480;
    v75 = *&off_100043490;
    v56 = "journal_open";
    v19 = "%s:  Unknown journal header magic number %#x from %s\n";
    goto LABEL_9;
  }

  v25 = DWORD2(v71);
  if ((*(v23[2] + 2))(v23[2], DWORD2(v71)) < a4 || (v26 = (*(v23[2] + 2))(v23[2], v25), v26 > v68))
  {
    v72 = xmmword_100043460;
    v73 = *&qword_100043470;
    v74 = xmmword_100043480;
    v75 = *&off_100043490;
    v56 = "journal_open";
    v19 = "%s: jnl: %s: open: bad jhdr size (%d) \n";
    goto LABEL_9;
  }

  v60 = v25;
  v27 = (*(v23[2] + 2))(v23[2], DWORD1(v71));
  DWORD1(v71) = 0;
  if ((*(v23[2] + 2))(v23[2], v24) == 1246645368)
  {
    v28 = 0;
    v29 = 0;
    do
    {
      v29 = (v29 + v69.n128_u8[v28++]) ^ (v29 << 8);
    }

    while (v28 != 44);
    if ((v29 ^ v27) != 0xFFFFFFFF)
    {
      v72 = xmmword_100043460;
      v73 = *&qword_100043470;
      v74 = xmmword_100043480;
      v75 = *&off_100043490;
      v56 = "journal_open";
      v19 = "%s:  Invalid journal checksum from %s\n";
      goto LABEL_9;
    }
  }

  (*(v23[2] + 2))(v23[2], v27);
  v30 = (*(v23[3] + 2))(v23[3], v69.n128_u64[1]);
  v31 = (*(v23[3] + 2))(v23[3], v70);
  v32 = a2 + (*(v23[2] + 2))(v23[2], v25);
  v62 = a1;
  v33 = 0;
  v34 = 0;
  v63 = (*(v23[2] + 2))(v23[2], v60);
  v64 = v32;
  v36 = v31 + a2;
  v65 = a3 - v63;
  v66 = v31 + a2;
  v37 = v30 + a2;
  v67 = v30 + a2;
  v58 = v71;
  for (i = v30; ; v30 = i)
  {
    while (v37 == v36 && !v33)
    {
      v66 = v64 + v30 - v63;
      v33 = 1;
      v36 = v66;
    }

    v61 = sub_100030360(&v62, v23, v35);
    if (!v61)
    {
      if (v33)
      {
        return 0;
      }

      goto LABEL_66;
    }

    if (v33)
    {
      if (v34)
      {
        v38 = v61[7];
        if (v38)
        {
          if ((*(v23[2] + 2))(v23[2], v38) != v34 && (*(v23[2] + 2))(v23[2], v61[7]) != v34 + 1)
          {
            goto LABEL_63;
          }
        }
      }
    }

    v39 = (*(v23[2] + 2))(v23[2], v58);
    v40 = (*(v23[2] + 2))(v23[2], v60);
    v41 = (*(v23[2] + 2))(v23[2], v61[1]);
    if ((*(v23[2] + 2))(v23[2], *(v61 + 1)) >= 2)
    {
      break;
    }

LABEL_48:
    v34 = (*(v23[2] + 2))(v23[2], v61[7]);
    free(v61);
    v36 = v66;
    v37 = v67;
  }

  v59 = v40;
  v47 = v61 + v41;
  v48 = v61 + 10;
  v49 = 0xFFFFFFFFLL;
  v50 = 1;
  v51 = v61 + v39;
  while (1)
  {
    if (v51 > v47)
    {
      if (!byte_10004350E)
      {
        goto LABEL_60;
      }

      v72 = xmmword_100043460;
      v73 = *&qword_100043470;
      v74 = xmmword_100043480;
      v75 = *&off_100043490;
      v55 = "\tData out of range for block_list_header\n";
LABEL_57:
      sub_10002D0E8(&v72, 2, v55, v42, v43, v44, v45, v46, &v68);
      goto LABEL_58;
    }

    if (v47 - v51 < (*(v23[2] + 2))(v23[2], *v48))
    {
      break;
    }

    if (&v51[(*(v23[2] + 2))(v23[2], *v48)] > v47)
    {
      if (!byte_10004350E)
      {
        goto LABEL_60;
      }

      v72 = xmmword_100043460;
      v73 = *&qword_100043470;
      v74 = xmmword_100043480;
      v75 = *&off_100043490;
      v55 = "\tData end out of range for block_list_header\n";
      goto LABEL_57;
    }

    if ((*(v23[3] + 2))(v23[3], *(v48 - 1)) != -1)
    {
      if (!(*(v23[2] + 2))(v23[2], *v48))
      {
        if (!byte_10004350E)
        {
          goto LABEL_60;
        }

        v72 = xmmword_100043460;
        v73 = *&qword_100043470;
        v74 = xmmword_100043480;
        v75 = *&off_100043490;
        v55 = "\tInvalid block size block_list_header\n";
        goto LABEL_57;
      }

      if (a7)
      {
        v52 = (*(v23[3] + 2))(v23[3], *(v48 - 1)) * v59;
        v53 = (*(v23[2] + 2))(v23[2], *v48);
        if ((*(a7 + 16))(a7, v52, v51, v53) == -1)
        {
          goto LABEL_58;
        }
      }
    }

    v54 = *v48;
    v48 += 4;
    v51 += (*(v23[2] + 2))(v23[2], v54);
    ++v50;
    v49 = 4294967294;
    if (v50 >= (*(v23[2] + 2))(v23[2], *(v61 + 1)))
    {
      goto LABEL_48;
    }
  }

  if (!byte_10004350E)
  {
    goto LABEL_60;
  }

  v72 = xmmword_100043460;
  v73 = *&qword_100043470;
  v74 = xmmword_100043480;
  v75 = *&off_100043490;
  sub_10002D0E8(&v72, 2, "\tData size for block %d out of range for block_list_header\n", v42, v43, v44, v45, v46, v50);
LABEL_58:
  if (byte_10004350E)
  {
    v72 = xmmword_100043460;
    v73 = *&qword_100043470;
    v74 = xmmword_100043480;
    v75 = *&off_100043490;
    sub_10002D0E8(&v72, 2, "\tTransaction replay failed, returned %d\n", v42, v43, v44, v45, v46, v49);
  }

LABEL_60:
  if (v33)
  {
    if (byte_10004350E)
    {
      v72 = xmmword_100043460;
      v73 = *&qword_100043470;
      v74 = xmmword_100043480;
      v75 = *&off_100043490;
      sub_10002D0E8(&v72, 2, "\t\tAnd we don't care\n", v42, v43, v44, v45, v46, v56);
    }

LABEL_63:
    free(v61);
    return 0;
  }

  free(v61);
LABEL_66:
  if (byte_10004350E)
  {
    v72 = xmmword_100043460;
    v73 = *&qword_100043470;
    v74 = xmmword_100043480;
    v75 = *&off_100043490;
    v19 = "Journal was bad, stopped replaying\n";
    v21 = 2;
    goto LABEL_10;
  }

  return 0xFFFFFFFFLL;
}

__n128 sub_100030270(uint64_t a1, double a2, uint64_t a3, uint64_t a4, __n128 *a5)
{
  v7 = __chkstk_darwin(a1, a2);
  v9 = (v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = pread(v7, v9, v8, v10);
  if (v11 != -1 && v11 == a4)
  {
    v19 = v9[1];
    *a5 = *v9;
    a5[1] = v19;
    result = v9[2];
    a5[2] = result;
  }

  else
  {
    v20[0] = xmmword_100043460;
    v20[1] = *&qword_100043470;
    v20[2] = xmmword_100043480;
    v20[3] = *&off_100043490;
    sub_10002D0E8(v20, 7, "tried to read %zu for journal header buffer, got %zd", v12, v13, v14, v15, v16, a4);
  }

  return result;
}

void *sub_100030360(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a1 + 8);
  __chkstk_darwin(a1, a3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v6, v5);
  v12 = sub_100030624(a1, v6, v5, v7, v8, v9, v10, v11);
  if (v12 == -1 || v12 != v5)
  {
    if (byte_10004350E)
    {
      v43 = xmmword_100043460;
      v44 = *&qword_100043470;
      v45 = xmmword_100043480;
      v46 = *&off_100043490;
      sub_10002D0E8(&v43, 2, "%s:  wanted %zd, got %zd\n", v13, v14, v15, v16, v17, "getJournalTransaction");
    }

    return 0;
  }

  v19 = *(v6 + 1);
  if (!(*(*(a2 + 16) + 16))())
  {
    return 0;
  }

  v20 = *(v6 + 2);
  v21 = (*(*(a2 + 16) + 16))();
  v22 = 0;
  v23 = 0;
  *(v6 + 2) = 0;
  do
  {
    v23 = (v23 + v6[v22++]) ^ (v23 << 8);
  }

  while (v22 != 32);
  *(v6 + 2) = (*(*(a2 + 16) + 16))();
  if ((v23 ^ v21) != 0xFFFFFFFF)
  {
    if (byte_10004350E)
    {
      v43 = xmmword_100043460;
      v44 = *&qword_100043470;
      v45 = xmmword_100043480;
      v46 = *&off_100043490;
      sub_10002D0E8(&v43, 0, "%s(%d):  hdr has bad checksum, returning NULL\n", v24, v25, v26, v27, v28, "getJournalTransaction");
    }

    return 0;
  }

  v29 = *(v6 + 1);
  if (v5 > (*(*(a2 + 16) + 16))())
  {
    return 0;
  }

  v30 = *(v6 + 1);
  v31 = (*(*(a2 + 16) + 16))();
  v32 = malloc_type_malloc(v31, 0x923B342FuLL);
  if (v32)
  {
    v33 = *(v6 + 1);
    v34 = (*(*(a2 + 16) + 16))();
    bzero(v32, v34);
    memcpy(v32, &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    v35 = *(v6 + 1);
    v36 = (*(*(a2 + 16) + 16))() - v5;
    if (sub_100030624(a1, v32 + v5, v36, v37, v38, v39, v40, v41) != v36)
    {
      free(v32);
      return 0;
    }
  }

  return v32;
}

uint64_t sub_100030624(unsigned int *a1, char *__buf, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1[1] <= 1)
  {
    v11 = 0;
    if (a3)
    {
      v12 = *(a1 + 5);
      while (1)
      {
        v13 = *(a1 + 4);
        if (v13 < v12)
        {
          v13 = *(a1 + 3) + *(a1 + 2);
        }

        v14 = v13 - v12;
        v15 = a3 - v11 >= v14 ? v14 : a3 - v11;
        if (!v15)
        {
          break;
        }

        v16 = pread(*a1, __buf, v15, v12);
        if (v16 == -1)
        {
          v22 = *(a1 + 5);
          v23 = *a1;
          v26 = xmmword_100043460;
          v27 = *&qword_100043470;
          v28 = xmmword_100043480;
          v29 = *&off_100043490;
          v25 = v23;
          v20 = "pread(%d, %p, %zu, %llu)";
          v21 = 7;
          goto LABEL_24;
        }

        v17 = v16;
        if (v16 != v15 && byte_10004350E != 0)
        {
          v26 = xmmword_100043460;
          v27 = *&qword_100043470;
          v28 = xmmword_100043480;
          v29 = *&off_100043490;
          sub_10002D0E8(&v26, 6, "%s(%d):  Wanted to read %zu, but only read %zd\n", v12, a5, a6, a7, a8, "journalRead");
        }

        v12 = *(a1 + 5) + v17;
        *(a1 + 5) = v12;
        v19 = *(a1 + 2);
        if (v12 == *(a1 + 3) + v19)
        {
          *(a1 + 5) = v19;
          ++a1[1];
          v12 = v19;
        }

        v11 += v17;
        __buf += v17;
        if (v11 >= a3)
        {
          return v11;
        }
      }

      if (!byte_10004350E)
      {
        return v11;
      }

      v26 = xmmword_100043460;
      v27 = *&qword_100043470;
      v28 = xmmword_100043480;
      v29 = *&off_100043490;
      v20 = "Journal read amount is 0, is that right?\n";
      v21 = 6;
LABEL_24:
      sub_10002D0E8(&v26, v21, v20, v12, a5, a6, a7, a8, v25);
    }
  }

  else
  {
    v26 = xmmword_100043460;
    v27 = *&qword_100043470;
    v28 = xmmword_100043480;
    v29 = *&off_100043490;
    sub_10002D0E8(&v26, 6, "%s(%p, %p, %zu):  journal buffer wrap count = %d\n", a4, a5, a6, a7, a8, "journalRead");
    return -1;
  }

  return v11;
}