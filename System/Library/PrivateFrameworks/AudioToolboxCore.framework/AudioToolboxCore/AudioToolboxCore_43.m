BOOL ParseVBRIPacket(unsigned __int8 *a1, int a2, uint64_t a3)
{
  v19[0] = a1;
  v19[1] = a1;
  v19[2] = &a1[a2];
  v20 = 0;
  if ((a1 & 3) != 0)
  {
    v4 = 0;
    v5 = (a1 ^ 3) & 3;
    v6 = a1 + 1;
    v7 = a1;
    do
    {
      if (v7 >= &a1[a2])
      {
        v8 = 255;
      }

      else
      {
        v8 = *v7;
      }

      v4 = v8 | (v4 << 8);
      ++v7;
    }

    while ((v6++ & 3) != 0);
    v19[0] = &a1[v5 + 1];
    LODWORD(v20) = v4 << ((8 * v5) ^ 0x18);
    HIDWORD(v20) = 8 * ((a1 ^ 3) & 3) + 8;
  }

  v14[0] = 0;
  v17 = 0;
  v18 = 0;
  __p = 0;
  v15 = 0uLL;
  v10 = VBRIHeader::Deserialize(v14, v19, 0);
  if (!v10)
  {
    v11 = v15;
    v12 = *(&v15 + 6);
    *(a3 + 8) = *(&v15 + 2);
    *(a3 + 12) = v11;
    *a3 = v12;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10 == 0;
}

void sub_18F8B3398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MPEGAudioOFLInfo::Deserialize(uint64_t a1, unsigned int **a2)
{
  v4 = *(a2 + 6);
  v5 = *(a2 + 7);
  *(a2 + 7) = v5 - 32;
  if (v5 - 32 < 0)
  {
    v8 = a2[1];
    v7 = a2[2];
    v9 = *a2;
    if (((v7 - *a2) & ~((v7 - *a2) >> 63) & 0xFFFFFFFC) == 0 || v8 > v9)
    {
      v11 = 4;
      v12 = *a2;
      v15 = v4;
      do
      {
        v13 = v15 << 8;
        *(a2 + 6) = v13;
        v14 = 255;
        if (v12 < v7 && v12 >= v8)
        {
          v14 = *v12;
        }

        v15 = v14 | v13;
        *(a2 + 6) = v15;
        v12 = (v12 + 1);
        --v11;
      }

      while (v11);
    }

    else
    {
      v15 = bswap32(*v9);
    }

    *a2 = v9 + 1;
    v6 = (v15 >> v5) | v4;
    if (v5)
    {
      v4 = v15 << -v5;
    }

    else
    {
      v4 = 0;
    }

    *(a2 + 6) = v4;
    *(a2 + 7) = v5;
  }

  else
  {
    v5 -= 32;
    v6 = v4;
  }

  v16 = bswap32(v6);
  v205 = 0u;
  memset(v204, 0, sizeof(v204));
  result = ParseMPEGSyncWord((v16 << 8) & 0xFF0000 | (v16 << 24) | (v16 >> 8) & 0xFF00 | HIBYTE(v16), v204);
  if (!result)
  {
    return result;
  }

  v18 = DWORD1(v205);
  if ((v6 & 0x100) != 0)
  {
    v19 = 16;
    if (v5 <= 15)
    {
      v19 = 16 - v5;
      a2[3] = 0;
      if ((16 - v5) >= 0x20)
      {
        *a2 = (*a2 + ((v19 >> 3) & 0x1FFFFFFC));
        v19 &= 0x1Fu;
        if (!v19)
        {
          v5 = 0;
          v28 = BYTE4(v204[0]) == 1;
          if (BYTE4(v204[0]) == 1)
          {
            goto LABEL_37;
          }

          goto LABEL_41;
        }
      }

      v4 = 0;
      v5 = 0;
    }

    v20 = v5 - v19;
    *(a2 + 7) = v5 - v19;
    if ((v5 - v19) < 0)
    {
      v22 = a2[1];
      v21 = a2[2];
      v23 = *a2;
      if (((v21 - *a2) & ~((v21 - *a2) >> 63) & 0xFFFFFFFC) != 0 && v22 <= v23)
      {
        v4 = bswap32(*v23);
      }

      else
      {
        v24 = 4;
        v25 = *a2;
        do
        {
          v26 = v4 << 8;
          *(a2 + 6) = v4 << 8;
          v27 = 255;
          if (v25 < v21 && v25 >= v22)
          {
            v27 = *v25;
          }

          v4 = v27 | v26;
          *(a2 + 6) = v27 | v26;
          v25 = (v25 + 1);
          --v24;
        }

        while (v24);
      }

      v5 = v20 + 32;
      *(a2 + 7) = v20 + 32;
      *a2 = v23 + 1;
      v4 <<= -v20;
    }

    else
    {
      v4 <<= v19;
      v5 -= v19;
    }

    *(a2 + 6) = v4;
  }

  v28 = BYTE4(v204[0]) == 1;
  if (BYTE4(v204[0]) == 1)
  {
    if (v5 > 8)
    {
      v29 = 9;
      goto LABEL_45;
    }

LABEL_37:
    v29 = 9 - v5;
    *(a2 + 6) = 0;
    if ((9 - v5) >= 0x20)
    {
      *a2 = (*a2 + ((v29 >> 3) & 0x1FFFFFFC));
      v29 &= 0x1Fu;
      if (!v29)
      {
        v34 = 0;
        if (v18 == 1)
        {
          goto LABEL_64;
        }

        goto LABEL_66;
      }
    }

    v4 = 0;
    v5 = 0;
LABEL_45:
    v32 = v5 - v29;
    *(a2 + 7) = v5 - v29;
    if ((v5 - v29) < 0)
    {
      v39 = a2[1];
      v38 = a2[2];
      v40 = *a2;
      if (((v38 - *a2) & ~((v38 - *a2) >> 63) & 0xFFFFFFFC) != 0 && v39 <= v40)
      {
        v4 = bswap32(*v40);
      }

      else
      {
        v44 = 4;
        v45 = *a2;
        do
        {
          v46 = v4 << 8;
          *(a2 + 6) = v4 << 8;
          v47 = 255;
          if (v45 < v38 && v45 >= v39)
          {
            v47 = *v45;
          }

          v4 = v47 | v46;
          *(a2 + 6) = v47 | v46;
          v45 = (v45 + 1);
          --v44;
        }

        while (v44);
      }

      v34 = v32 + 32;
      *a2 = v40 + 1;
      v33 = v4 << -v32;
    }

    else
    {
      v33 = v4 << v29;
      v34 = v32;
    }

    *(a2 + 6) = v33;
    if (v18 == 1)
    {
      if (v34 > 4)
      {
        v48 = 5;
        goto LABEL_68;
      }

LABEL_64:
      v33 = 0;
      v48 = 5 - v34;
      *(a2 + 6) = 0;
      v34 = 0;
LABEL_68:
      v50 = v34 - v48;
      *(a2 + 7) = v34 - v48;
      if (v34 - v48 < 0)
      {
        v57 = a2[1];
        v56 = a2[2];
        v58 = *a2;
        if (((v56 - *a2) & ~((v56 - *a2) >> 63) & 0xFFFFFFFC) != 0 && v57 <= v58)
        {
          v33 = bswap32(*v58);
        }

        else
        {
          v83 = 4;
          v84 = *a2;
          do
          {
            v85 = v33 << 8;
            *(a2 + 6) = v85;
            v86 = 255;
            if (v84 < v56 && v84 >= v57)
            {
              v86 = *v84;
            }

            v33 = v86 | v85;
            *(a2 + 6) = v33;
            v84 = (v84 + 1);
            --v83;
          }

          while (v83);
        }

        v52 = v50 + 32;
        *a2 = v58 + 1;
        v51 = v33 << -v50;
      }

      else
      {
        v51 = v33 << v48;
        v52 = v34 - v48;
      }

      if (v52 >= 4)
      {
        v87 = v51;
      }

      else
      {
        v87 = 0;
      }

      if (v52 >= 4)
      {
        v88 = 4;
      }

      else
      {
        v88 = 4 - v52;
      }

      if (v52 >= 4)
      {
        v89 = v52;
      }

      else
      {
        v89 = 0;
      }

      v71 = v89 - v88;
      *(a2 + 6) = v87;
      *(a2 + 7) = v71;
      if (v71 >= 0)
      {
        v67 = v87 << v88;
        v68 = 47;
        goto LABEL_128;
      }

      v91 = a2[1];
      v90 = a2[2];
      v92 = *a2;
      if (((v90 - *a2) & ~((v90 - *a2) >> 63) & 0xFFFFFFFC) == 0 || v91 > v92)
      {
        v94 = 4;
        v95 = *a2;
        do
        {
          v96 = v87 << 8;
          *(a2 + 6) = v96;
          v97 = 255;
          if (v95 < v90 && v95 >= v91)
          {
            v97 = *v95;
          }

          v87 = v97 | v96;
          *(a2 + 6) = v87;
          v95 = (v95 + 1);
          --v94;
        }

        while (v94);
      }

      else
      {
        v87 = bswap32(*v92);
      }

      v66 = v71 + 32;
      *a2 = v92 + 1;
      v67 = v87 << -v71;
      v68 = 47;
      goto LABEL_178;
    }

    if (v34 > 2)
    {
      v49 = 3;
      goto LABEL_71;
    }

LABEL_66:
    v33 = 0;
    v49 = 3 - v34;
    *(a2 + 6) = 0;
    v34 = 0;
LABEL_71:
    v53 = v34 - v49;
    *(a2 + 7) = v34 - v49;
    if (v34 - v49 < 0)
    {
      v60 = a2[1];
      v59 = a2[2];
      v61 = *a2;
      if (((v59 - *a2) & ~((v59 - *a2) >> 63) & 0xFFFFFFFC) != 0 && v60 <= v61)
      {
        v33 = bswap32(*v61);
      }

      else
      {
        v98 = 4;
        v99 = *a2;
        do
        {
          v100 = v33 << 8;
          *(a2 + 6) = v100;
          v101 = 255;
          if (v99 < v59 && v99 >= v60)
          {
            v101 = *v99;
          }

          v33 = v101 | v100;
          *(a2 + 6) = v33;
          v99 = (v99 + 1);
          --v98;
        }

        while (v98);
      }

      v55 = v53 + 32;
      *a2 = v61 + 1;
      v54 = v33 << -v53;
    }

    else
    {
      v54 = v33 << v49;
      v55 = v34 - v49;
    }

    if (v55 >= 8)
    {
      v102 = v54;
    }

    else
    {
      v102 = 0;
    }

    if (v55 >= 8)
    {
      v103 = 8;
    }

    else
    {
      v103 = 8 - v55;
    }

    if (v55 >= 8)
    {
      v104 = v55;
    }

    else
    {
      v104 = 0;
    }

    v71 = v104 - v103;
    *(a2 + 6) = v102;
    *(a2 + 7) = v71;
    if (v71 < 0)
    {
      v106 = a2[1];
      v105 = a2[2];
      v107 = *a2;
      if (((v105 - *a2) & ~((v105 - *a2) >> 63) & 0xFFFFFFFC) == 0 || v106 > v107)
      {
        v109 = 4;
        v110 = *a2;
        do
        {
          v111 = v102 << 8;
          *(a2 + 6) = v111;
          v112 = 255;
          if (v110 < v105 && v110 >= v106)
          {
            v112 = *v110;
          }

          v102 = v112 | v111;
          *(a2 + 6) = v102;
          v110 = (v110 + 1);
          --v109;
        }

        while (v109);
      }

      else
      {
        v102 = bswap32(*v107);
      }

      v66 = v71 + 32;
      *a2 = v107 + 1;
      v67 = v102 << -v71;
      v68 = 47;
      v69 = 4;
      goto LABEL_180;
    }

    v67 = v102 << v103;
    v68 = 47;
    v69 = 4;
    goto LABEL_157;
  }

  if (v5 > 7)
  {
    v30 = 8;
    goto LABEL_48;
  }

LABEL_41:
  v30 = 8 - v5;
  *(a2 + 6) = 0;
  if ((8 - v5) >= 0x20)
  {
    v31 = (*a2 + ((v30 >> 3) & 0x1FFFFFFC));
    *a2 = v31;
    v30 &= 0x1Fu;
    if (!v30)
    {
      if (v18 == 1)
      {
        goto LABEL_100;
      }

      v37 = 0;
      goto LABEL_89;
    }
  }

  v4 = 0;
  v5 = 0;
LABEL_48:
  v35 = v5 - v30;
  *(a2 + 7) = v5 - v30;
  if ((v5 - v30) < 0)
  {
    v42 = a2[1];
    v41 = a2[2];
    v43 = *a2;
    if (((v41 - *a2) & ~((v41 - *a2) >> 63) & 0xFFFFFFFC) != 0 && v42 <= v43)
    {
      v4 = bswap32(*v43);
    }

    else
    {
      v62 = 4;
      v63 = *a2;
      do
      {
        v64 = v4 << 8;
        *(a2 + 6) = v4 << 8;
        v65 = 255;
        if (v63 < v41 && v63 >= v42)
        {
          v65 = *v63;
        }

        v4 = v65 | v64;
        *(a2 + 6) = v65 | v64;
        v63 = (v63 + 1);
        --v62;
      }

      while (v62);
    }

    v37 = v35 + 32;
    *a2 = v43 + 1;
    v36 = v4 << -v35;
  }

  else
  {
    v36 = v4 << v30;
    v37 = v5 - v30;
  }

  *(a2 + 6) = v36;
  if (v18 != 1)
  {
    if (v37 > 1)
    {
      v70 = 2;
      goto LABEL_91;
    }

LABEL_89:
    v36 = 0;
    v70 = 2 - v37;
    *(a2 + 6) = 0;
    v37 = 0;
LABEL_91:
    v71 = v37 - v70;
    *(a2 + 7) = v37 - v70;
    if (v37 - v70 >= 0)
    {
      v67 = v36 << v70;
      v68 = 51;
LABEL_128:
      v69 = 2;
LABEL_157:
      v66 = v71;
      goto LABEL_180;
    }

    v73 = a2[1];
    v72 = a2[2];
    v74 = *a2;
    if (((v72 - *a2) & ~((v72 - *a2) >> 63) & 0xFFFFFFFC) != 0 && v73 <= v74)
    {
      v36 = bswap32(*v74);
    }

    else
    {
      v113 = 4;
      v114 = *a2;
      do
      {
        v115 = v36 << 8;
        *(a2 + 6) = v115;
        v116 = 255;
        if (v114 < v72 && v114 >= v73)
        {
          v116 = *v114;
        }

        v36 = v116 | v115;
        *(a2 + 6) = v36;
        v114 = (v114 + 1);
        --v113;
      }

      while (v113);
    }

    v66 = v71 + 32;
    *a2 = v74 + 1;
    v67 = v36 << -v71;
    v68 = 51;
LABEL_178:
    v69 = 2;
    goto LABEL_180;
  }

  if (v37 <= 0)
  {
    v31 = *a2;
LABEL_100:
    a2[3] = 0xFFFFFFFF00000000;
    v76 = a2[1];
    v75 = a2[2];
    if (((v75 - v31) & ~((v75 - v31) >> 63) & 0xFFFFFFFC) == 0 || v76 > v31)
    {
      v82 = 0;
      v78 = 4;
      v79 = v31;
      do
      {
        v80 = v82 << 8;
        *(a2 + 6) = v80;
        v81 = 255;
        if (v79 < v75 && v79 >= v76)
        {
          v81 = *v79;
        }

        v82 = v81 | v80;
        *(a2 + 6) = v82;
        v79 = (v79 + 1);
        --v78;
      }

      while (v78);
    }

    else
    {
      v82 = bswap32(*v31);
    }

    *a2 = v31 + 1;
    v67 = 2 * v82;
    v68 = 51;
    v69 = 1;
    v66 = 31;
    goto LABEL_180;
  }

  v66 = v37 - 1;
  v67 = 2 * v36;
  v68 = 51;
  v69 = 1;
LABEL_180:
  v117 = 0;
  v118 = 0;
  *(a2 + 6) = v67;
  v120 = a2[1];
  v119 = a2[2];
  v121 = *a2;
  do
  {
    v122 = v67 >> 20;
    v123 = v66 - 12;
    *(a2 + 7) = v66 - 12;
    if (v66 - 12 >= 0)
    {
      v67 <<= 12;
      goto LABEL_195;
    }

    if (((v119 - v121) & ~((v119 - v121) >> 63) & 0xFFFFFFFC) == 0 || v120 > v121)
    {
      v125 = 4;
      v126 = v121;
      do
      {
        v127 = v67 << 8;
        *(a2 + 6) = v127;
        v128 = 255;
        if (v126 < v119 && v126 >= v120)
        {
          v128 = *v126;
        }

        v67 = v128 | v127;
        *(a2 + 6) = v67;
        v126 = (v126 + 1);
        --v125;
      }

      while (v125);
    }

    else
    {
      v67 = bswap32(*v121);
    }

    *a2 = ++v121;
    v123 = v66 + 20;
    *(a2 + 7) = v66 + 20;
    v122 |= v67 >> (v66 + 20);
    if (v66 != -20)
    {
      v67 <<= 12 - v66;
LABEL_195:
      v66 = v123;
      *(a2 + 6) = v67;
      v118 += v122;
      v129 = v68;
      if (v123 >= v68)
      {
        goto LABEL_201;
      }

      goto LABEL_198;
    }

    v66 = 0;
    v118 += v122;
LABEL_198:
    v129 = v68 - v66;
    a2[3] = 0;
    if ((v68 - v66) >= 0x20)
    {
      v66 = 0;
      v67 = 0;
      v121 = (v121 + ((v129 >> 3) & 0x1FFFFFFC));
      *a2 = v121;
      v129 &= 0x1Fu;
    }

    else
    {
      v66 = 0;
      v67 = 0;
    }

LABEL_201:
    if (v129 - 33 >= 0xFFFFFFE0)
    {
      v66 -= v129;
      *(a2 + 7) = v66;
      if (v66 < 0)
      {
        if (((v119 - v121) & ~((v119 - v121) >> 63) & 0xFFFFFFFC) != 0 && v120 <= v121)
        {
          v67 = bswap32(*v121);
        }

        else
        {
          v130 = 4;
          v131 = v121;
          do
          {
            v132 = v67 << 8;
            *(a2 + 6) = v132;
            v133 = 255;
            if (v131 < v119 && v131 >= v120)
            {
              v133 = *v131;
            }

            v67 = v133 | v132;
            *(a2 + 6) = v67;
            v131 = (v131 + 1);
            --v130;
          }

          while (v130);
        }

        v67 <<= -v66;
        v66 += 32;
        *(a2 + 7) = v66;
        *a2 = ++v121;
        if (!v66)
        {
          v66 = 0;
          v67 = 0;
        }
      }

      else
      {
        v67 <<= v129;
      }

      *(a2 + 6) = v67;
    }

    ++v117;
  }

  while (v117 != v69);
  if (v28)
  {
    v134 = 80;
  }

  else
  {
    v134 = 160;
  }

  if (v66 + 8 * (v119 - v121) < (v134 + v118))
  {
    return 0;
  }

  v135 = v118 - v66;
  if (v118 > v66)
  {
    a2[3] = 0;
    v67 = 0;
    v66 = 0;
    if (v135 >= 0x20)
    {
      v121 = (v121 + ((v135 >> 3) & 0x1FFFFFFC));
      *a2 = v121;
      v118 = v135 & 0x1F;
    }

    else
    {
      v118 = v135;
    }
  }

  if ((v118 - 33) >= 0xFFFFFFE0)
  {
    v66 -= v118;
    *(a2 + 7) = v66;
    if (v66 < 0)
    {
      if (((v119 - v121) & ~((v119 - v121) >> 63) & 0xFFFFFFFC) != 0 && v120 <= v121)
      {
        v67 = bswap32(*v121);
      }

      else
      {
        v136 = 4;
        v137 = v121;
        do
        {
          v138 = v67 << 8;
          *(a2 + 6) = v138;
          v139 = 255;
          if (v137 < v119 && v137 >= v120)
          {
            v139 = *v137;
          }

          v67 = v139 | v138;
          *(a2 + 6) = v67;
          v137 = (v137 + 1);
          --v136;
        }

        while (v136);
      }

      v67 <<= -v66;
      v66 += 32;
      *(a2 + 7) = v66;
      *a2 = ++v121;
      if (!v66)
      {
        v66 = 0;
        v67 = 0;
      }
    }

    else
    {
      v67 <<= v118;
    }

    *(a2 + 6) = v67;
  }

  if ((v66 & 7) != 0)
  {
    v140 = v66 & 0xFFFFFFF8;
    *(a2 + 7) = v66 & 0xFFFFFFF8;
    if (v66 < 0)
    {
      if (((v119 - v121) & ~((v119 - v121) >> 63) & 0xFFFFFFFC) != 0 && v120 <= v121)
      {
        v67 = bswap32(*v121);
      }

      else
      {
        v141 = 4;
        v142 = v121;
        do
        {
          v143 = v67 << 8;
          *(a2 + 6) = v143;
          v144 = 255;
          if (v142 < v119 && v142 >= v120)
          {
            v144 = *v142;
          }

          v67 = v144 | v143;
          *(a2 + 6) = v67;
          v142 = (v142 + 1);
          --v141;
        }

        while (v141);
      }

      v67 <<= -v140;
      v66 = v140 + 32;
      *(a2 + 7) = v140 + 32;
      *a2 = ++v121;
      if (v140 == -32)
      {
        v66 = 0;
        v67 = 0;
      }
    }

    else
    {
      v67 <<= v66 & 7;
      v66 &= 0xFFFFFFF8;
    }

    *(a2 + 6) = v67;
  }

  if (!v28)
  {
    return 0;
  }

  v145 = HIBYTE(v67);
  v146 = v66 - 8;
  *(a2 + 7) = v66 - 8;
  if (v66 - 8 < 0)
  {
    if (((v119 - v121) & ~((v119 - v121) >> 63) & 0xFFFFFFFC) != 0 && v120 <= v121)
    {
      v67 = bswap32(*v121);
    }

    else
    {
      v148 = 4;
      v149 = v121;
      do
      {
        v150 = v67 << 8;
        *(a2 + 6) = v150;
        v151 = 255;
        if (v149 < v119 && v149 >= v120)
        {
          v151 = *v149;
        }

        v67 = v151 | v150;
        *(a2 + 6) = v67;
        v149 = (v149 + 1);
        --v148;
      }

      while (v148);
    }

    v153 = v66 + 24;
    v152 = v66 == -24;
    *(a2 + 7) = v66 + 24;
    *a2 = ++v121;
    v145 |= v67 >> (v66 + 24);
    v147 = v66 == -24 ? 0 : v67 << (8 - v66);
    v146 = v152 ? 0 : v153;
  }

  else
  {
    v147 = v67 << 8;
  }

  *(a2 + 6) = v147;
  if (v145 != 180 || v146 + 8 * (v119 - v121) < 72)
  {
    return 0;
  }

  v154 = (v121 - (((v146 + 8) >> 3) & 0x1FFFFFFC));
  *a2 = v154;
  v155 = (v146 + 8) & 0x1F;
  *(a2 + 7) = v155;
  if (v155)
  {
    v156 = v154 - 1;
    if (((v119 - (v154 - 4)) & ~((v119 - (v154 - 1)) >> 63) & 0xFFFFFFFC) == 0 || v120 > v156)
    {
      v158 = 4;
      do
      {
        v159 = v147 << 8;
        *(a2 + 6) = v159;
        v160 = 255;
        if (v156 < v119 && v156 >= v120)
        {
          v160 = *v156;
        }

        v147 = v160 | v159;
        *(a2 + 6) = v147;
        v156 = (v156 + 1);
        --v158;
      }

      while (v158);
    }

    else
    {
      v147 = bswap32(*v156);
    }

    v161 = v147 << -v155;
  }

  else
  {
    v161 = 0;
  }

  v162 = 0;
  *(a2 + 6) = v161;
  LOBYTE(v163) = -1;
  do
  {
    v164 = HIBYTE(v161);
    *(a2 + 7) = v155 - 8;
    if (v155 - 8 < 0)
    {
      if (((v119 - v154) & ~((v119 - v154) >> 63) & 0xFFFFFFFC) == 0 || v120 > v154)
      {
        v166 = 4;
        v167 = v154;
        do
        {
          v168 = v161 << 8;
          *(a2 + 6) = v168;
          v169 = 255;
          if (v167 < v119 && v167 >= v120)
          {
            v169 = *v167;
          }

          v161 = v169 | v168;
          *(a2 + 6) = v161;
          v167 = (v167 + 1);
          --v166;
        }

        while (v166);
      }

      else
      {
        v161 = bswap32(*v154);
      }

      v170 = v161 << (8 - v155);
      v155 += 24;
      *(a2 + 7) = v155;
      *a2 = ++v154;
      v164 |= v161 >> v155;
      if (v155)
      {
        v161 = v170;
      }

      else
      {
        v161 = 0;
      }

      if (!v155)
      {
        v155 = 0;
      }
    }

    else
    {
      v161 <<= 8;
      v155 -= 8;
    }

    *(a2 + 6) = v161;
    v163 = CheckForOFL(unsigned int,AT::TBitstreamReader<unsigned int> &,MPEGAudioOFLInfo *)::ofl_crc8_table[(v163 ^ v164)];
    ++v162;
  }

  while (v162 != 9);
  v171 = HIBYTE(v161);
  v172 = v155 - 8;
  *(a2 + 7) = v155 - 8;
  if (v155 - 8 < 0)
  {
    if (((v119 - v154) & ~((v119 - v154) >> 63) & 0xFFFFFFFC) != 0 && v120 <= v154)
    {
      v161 = bswap32(*v154);
    }

    else
    {
      v174 = 4;
      v175 = v154;
      do
      {
        v176 = v161 << 8;
        *(a2 + 6) = v176;
        v177 = 255;
        if (v175 < v119 && v175 >= v120)
        {
          v177 = *v175;
        }

        v161 = v177 | v176;
        *(a2 + 6) = v161;
        v175 = (v175 + 1);
        --v174;
      }

      while (v174);
    }

    v179 = v155 + 24;
    v178 = v155 == -24;
    *(a2 + 7) = v155 + 24;
    *a2 = ++v154;
    v171 |= v161 >> (v155 + 24);
    v173 = v155 == -24 ? 0 : v161 << (8 - v155);
    v172 = v178 ? 0 : v179;
  }

  else
  {
    v173 = v161 << 8;
  }

  *(a2 + 6) = v173;
  if (v171 != v163)
  {
    return 0;
  }

  v180 = (v154 - (((v172 + 72) >> 3) & 0x1FFFFFFC));
  *a2 = v180;
  v181 = (v172 + 72) & 0x1F;
  *(a2 + 7) = v181;
  if (!v181)
  {
    v187 = 0;
    v188 = 0;
    a2[3] = 0xFFFFFFF000000000;
    v189 = -16;
    goto LABEL_340;
  }

  v182 = v180 - 1;
  if (((v119 - (v180 - 4)) & ~((v119 - (v180 - 1)) >> 63) & 0xFFFFFFFC) == 0 || v120 > v182)
  {
    v184 = 4;
    do
    {
      v185 = v173 << 8;
      *(a2 + 6) = v185;
      v186 = 255;
      if (v182 < v119 && v182 >= v120)
      {
        v186 = *v182;
      }

      v173 = v186 | v185;
      *(a2 + 6) = v173;
      v182 = (v182 + 1);
      --v184;
    }

    while (v184);
  }

  else
  {
    v173 = bswap32(*v182);
  }

  v188 = v173 << -v181;
  v187 = HIWORD(v188);
  v190 = v181 >= 0x10;
  v189 = v181 - 16;
  *(a2 + 6) = v188;
  *(a2 + 7) = v189;
  if (v190)
  {
    v191 = v188 << 16;
  }

  else
  {
LABEL_340:
    if (((v119 - v180) & ~((v119 - v180) >> 63) & 0xFFFFFFFC) != 0 && v120 <= v180)
    {
      v188 = bswap32(*v180);
    }

    else
    {
      v192 = 4;
      v193 = v180;
      do
      {
        v194 = v188 << 8;
        *(a2 + 6) = v194;
        v195 = 255;
        if (v193 < v119 && v193 >= v120)
        {
          v195 = *v193;
        }

        v188 = v195 | v194;
        *(a2 + 6) = v188;
        v193 = (v193 + 1);
        --v192;
      }

      while (v192);
    }

    v196 = v188 >> v189;
    v197 = -v189;
    v189 += 32;
    *a2 = ++v180;
    v187 |= v196;
    v191 = v188 << v197;
  }

  *a1 = v187;
  *(a2 + 6) = v191;
  *(a2 + 7) = v189 - 32;
  if (v189 <= 31)
  {
    if (((v119 - v180) & ~((v119 - v180) >> 63) & 0xFFFFFFFC) != 0 && v120 <= v180)
    {
      v198 = bswap32(*v180);
    }

    else
    {
      v199 = 4;
      v200 = v180;
      v198 = v191;
      do
      {
        v201 = v198 << 8;
        *(a2 + 6) = v201;
        v202 = 255;
        if (v200 < v119 && v200 >= v120)
        {
          v202 = *v200;
        }

        v198 = v202 | v201;
        *(a2 + 6) = v198;
        v200 = (v200 + 1);
        --v199;
      }

      while (v199);
    }

    *a2 = v180 + 1;
    v191 |= v198 >> v189;
    v203 = v198 << -v189;
    if (!v189)
    {
      v203 = 0;
    }

    *(a2 + 6) = v203;
    *(a2 + 7) = v189;
  }

  *(a1 + 4) = v191;
  if (v187 >= 0x210)
  {
    *a1 = v187 - 528;
  }

  result = 1;
  *(a1 + 8) = 1;
  return result;
}

uint64_t GetMetaHeader(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  if (a3 < 4)
  {
    return 0;
  }

  *(a1 + 8) = 0;
  *(a1 + 124) = 0;
  v3 = a2[3];
  v4 = v3 > 0xBF;
  v5 = v3 <= 0xBF ? 36 : 21;
  v6 = v4 ? 13 : 21;
  v7 = (a2[1] >> 3) & 1;
  v8 = a2[2];
  v9 = v7 ? v5 : v6;
  *(a1 + 144) = v9;
  if (v9 + 4 > a3)
  {
    return 0;
  }

  v10 = (v8 >> 2) & 3;
  v11 = &a2[v9];
  v12 = *v11;
    ;
  }

  if (v12 != 1483304551 && v12 != 1231971951)
  {
    return 0;
  }

  if (v12 == 1231971951)
  {
    v15 = 16;
    *(a1 + 8) = 16;
  }

  else
  {
    v15 = 0;
  }

  v16 = GetMetaHeader(XingHeader &,unsigned char *,unsigned int)::sr_table[v10] >> (v7 ^ 1);
  *a1 = v7;
  *(a1 + 4) = v16;
  v17 = v9 + 8;
  if (v9 + 8 > a3)
  {
    return 0;
  }

  v19 = a2[(v9 + 4) + 3];
  if (v19)
  {
    v20 = v9 + 12;
    if (v20 > a3)
    {
      return 0;
    }

    v22 = 0;
    v15 |= 1u;
    *(a1 + 8) = v15;
    v23 = a2[v17];
    v24 = v11 + 9;
    do
    {
      v23 = v24[v22++] | (v23 << 8);
    }

    while (v22 != 3);
    *(a1 + 12) = v23;
    if ((v19 & 2) == 0)
    {
LABEL_26:
      v21 = v20;
      if ((v19 & 4) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_36;
    }
  }

  else
  {
    v20 = v9 + 8;
    if ((v19 & 2) == 0)
    {
      goto LABEL_26;
    }
  }

  v21 = v20 + 4;
  if (v20 + 4 > a3)
  {
    return 0;
  }

  v15 |= 2u;
  *(a1 + 8) = v15;
  v25 = &a2[v20];
  v26 = *v25;
  for (j = 1; j != 4; ++j)
  {
    v26 = v25[j] | (v26 << 8);
  }

  *(a1 + 16) = v26;
  if ((v19 & 4) != 0)
  {
LABEL_36:
    v28 = v21 + 100;
    if (v21 + 100 > a3)
    {
      return 0;
    }

    v29 = 0;
    v15 |= 4u;
    *(a1 + 8) = v15;
    v30 = &a2[v21];
    do
    {
      *(a1 + 24 + v29) = v30[v29];
      ++v29;
    }

    while (v29 != 100);
    v21 = v28;
  }

LABEL_40:
  *(a1 + 20) = -1;
  if ((v19 & 8) != 0)
  {
    v31 = v21 + 4;
    if (v21 + 4 <= a3)
    {
      v15 |= 8u;
      *(a1 + 8) = v15;
      v32 = &a2[v21];
      v33 = *v32;
      for (k = 1; k != 4; ++k)
      {
        v33 = v32[k] | (v33 << 8);
      }

      *(a1 + 20) = v33;
      goto LABEL_46;
    }

    return 0;
  }

  v31 = v21;
LABEL_46:
  *(a1 + 148) = v31 - *(a1 + 144);
  if (v31 + 36 <= a3)
  {
    v35 = v31 + 34;
    v36 = *&a2[v35];
    v37 = 0;
    if (v31 != -34)
    {
      v38 = a2;
      do
      {
        v39 = *v38++;
        v37 = crc16_lookup[v39 ^ v37] ^ (v37 >> 8);
        --v35;
      }

      while (v35);
    }

    v40 = __rev16(v36);
    v41 = &a2[v31];
    v42 = *v41;
    for (m = 1; m != 4; ++m)
    {
      v42 = v41[m] | (v42 << 8);
    }

    *(a1 + 124) = v42;
    if (v37 == v40 || v42 == 1279348037)
    {
      v44 = 0;
      v45 = a2[v31 + 11];
      v46 = v41 + 12;
      do
      {
        v45 = v46[v44++] | (v45 << 8);
      }

      while (v44 != 3);
      v47 = vcvts_n_f32_u32(v45, 0x17uLL);
      *(a1 + 128) = v47;
      v48 = &a2[v31 + 15];
      v49 = *v48;
      v50 = *v48;
      LOWORD(v48) = _byteswap_ushort(*v48);
      *(a1 + 132) = v49 >> 2;
      v51 = v48 & 0x1FF;
      if ((v49 & 2) != 0)
      {
        v51 = -v51;
      }

      *(a1 + 134) = v51;
      v52 = &a2[v31 + 17];
      v53 = *v52;
      v54 = *v52;
      LOWORD(v52) = _byteswap_ushort(*v52);
      *(a1 + 136) = v53 >> 2;
      v55 = v52 & 0x1FF;
      if ((v53 & 2) != 0)
      {
        v55 = -v55;
      }

      *(a1 + 138) = v55;
      if (v47 != 0.0 || v54 >= 4 || v50 >= 4)
      {
        v15 |= 0x40u;
      }

      v15 |= 0x20u;
      *(a1 + 8) = v15;
      v58 = &a2[v31 + 21];
      v59 = (v58[1] << 8) | (*v58 << 16);
      LOWORD(v58) = _byteswap_ushort(*(v58 + 1));
      *(a1 + 140) = v59 >> 12;
      *(a1 + 142) = v58 & 0xFFF;
    }
  }

  if (v12 == 1231971951)
  {
    v60 = *(a1 + 124);
    if (v60 == 1279348037 || !v60)
    {
      *(a1 + 8) = v15 & 0x7E;
    }
  }

  return 1;
}

uint64_t ParseiTunesSMPBData(char *a1, int a2, AudioFilePacketTableInfo *a3)
{
  *&v14[23] = *MEMORY[0x1E69E9840];
  if (a2 >= 35)
  {
    v3 = 1667787583;
    *v14 = 0;
    *&v13[9] = 0;
    *&v14[7] = 0;
    *v13 = *a1;
    v13[8] = a1[8];
    v12 = 0;
    sscanf(v13, "%X", &v12);
    if ((v12 & 0x80000000) == 0)
    {
      *v14 = 0;
      *&v13[9] = 0;
      *&v14[7] = 0;
      *v13 = *(a1 + 9);
      v13[8] = a1[17];
      v11 = 0;
      sscanf(v13, "%X", &v11);
      if ((v11 & 0x80000000) == 0)
      {
        *&v14[7] = 0;
        *v14 = 0;
        *v13 = *(a1 + 18);
        v13[16] = a1[34];
        v10 = 0;
        sscanf(v13, "%qX", &v10);
        v6 = v10;
        if ((v10 & 0x8000000000000000) == 0)
        {
          v3 = 0;
          v7 = v11;
          a3->mPrimingFrames = v12;
          a3->mRemainderFrames = v7;
          a3->mNumberValidFrames = v6;
        }
      }
    }
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t ParseiTunesNORMData(const char *a1, CACFDictionary *a2, CACFDictionary *a3)
{
  v14[5] = *MEMORY[0x1E69E9840];
  if (a1 && (v3 = a1, v4 = strlen(a1), v4 >= 45) && (v5 = v4 / 0x2D, 5 * (v4 / 0x2D) == v4 / 9))
  {
    v6 = 0;
    v14[0] = @"sc ave perceived power coeff";
    v14[1] = @"sc max perceived power coeff";
    v14[2] = @"sc max perceived power msec";
    v14[3] = @"sc peak amplitude";
    v14[4] = @"sc peak amplitude msec";
    do
    {
      v12 = 0;
      v7 = v13;
      v8 = v5;
      do
      {
        sscanf(v3, "%X", &v12);
        v3 += 9;
        snprintf(v7, v14 - v7, "%u%s", v12, " ");
        v7 += strlen(v7);
        --v8;
      }

      while (v8);
      CACFDictionary::AddCString(a2, v14[v6++], v13);
    }

    while (v6 != 5);
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ParseiTunesLOUDData(const char *a1, unsigned int a2, CACFDictionary *a3)
{
  v22 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v24 = 257;
  v21 = 0;
  if (a2 < 0xB || sscanf(a1, "%X %X %X", &v21, &v22, &v22 + 4) < 3)
  {
LABEL_3:
    v6 = 0xFFFFFFFFLL;
    goto LABEL_4;
  }

  if (v21 != 0xFFFF)
  {
    v8 = vcvts_n_f32_u32(v21 & 0x7FFF, 8uLL);
    v9 = -((v21 & 0x7FFF) * 0.0039062);
    if ((v21 & 0x8000u) == 0)
    {
      v9 = v8;
    }

    CACFDictionary::AddFloat32(&Mutable, @"aa itu true peak", v9);
  }

  v10 = v22 != 0;
  if (v22)
  {
    v11 = CopyMediaKindStringFromStoreItemKind(v22);
    CACFDictionary::AddString(a3, @"media kind", v11);
  }

  if (HIDWORD(v22))
  {
    v12 = 0;
    v13 = 11;
    while (1)
    {
      v19 = 0;
      v20 = 0;
      v14 = v13 + 6;
      if (v13 + 6 > a2 || sscanf(&a1[v13], "%X %X", &v20, &v19) < 2)
      {
        goto LABEL_3;
      }

      v15 = (v19 - 204) + 70.0;
      if (v19 <= 0xCCu)
      {
        v15 = ((v19 - 128) * 0.5) + 32.0;
      }

      v16 = vcvts_n_f32_u32(v19, 2uLL);
      v17 = (v19 * -0.25) + 6.0;
      if (v19 <= 0x80u)
      {
        v15 = v16;
      }

      if (v20 == 6)
      {
        v17 = v15;
      }

      if (v20 > 3u)
      {
        break;
      }

      v18 = @"aa ebu top of loudness range";
      switch(v20)
      {
        case 1u:
          goto LABEL_32;
        case 2u:
          v18 = @"aa ebu max momentary loudness";
          goto LABEL_32;
        case 3u:
          v18 = @"aa ebu max short-term loudness";
          goto LABEL_32;
      }

LABEL_34:
      ++v12;
      v13 = v14;
      if (v12 >= HIDWORD(v22))
      {
        goto LABEL_37;
      }
    }

    if (v20 == 4)
    {
      v18 = @"aa itu loudness";
      goto LABEL_32;
    }

    if (v20 == 5)
    {
      CACFDictionary::AddFloat32(a3, @"anchor loudness", v17);
    }

    else
    {
      v18 = @"aa ebu top of loudness range";
      if (v20 != 6)
      {
        goto LABEL_34;
      }

LABEL_32:
      CACFDictionary::AddFloat32(&Mutable, v18, v17);
    }

    v10 = 1;
    goto LABEL_34;
  }

LABEL_37:
  if (v10)
  {
    CACFDictionary::AddDictionary(a3, @"main loudness parameters", Mutable);
  }

  v6 = 0;
LABEL_4:
  CACFDictionary::~CACFDictionary(&Mutable);
  return v6;
}

void sub_18F8B4DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  CACFDictionary::~CACFDictionary(va);
  _Unwind_Resume(a1);
}

CFStringRef CopyMediaKindStringFromStoreItemKind(int a1)
{
  if (a1 <= 8)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        v1 = kMediaKind_MusicVideoValue;
        return CFStringCreateCopy(*MEMORY[0x1E695E480], *v1);
      }

      if (a1 == 8)
      {
        v1 = kMediaKind_PodcastValue;
        return CFStringCreateCopy(*MEMORY[0x1E695E480], *v1);
      }
    }

    else
    {
      if (a1 == 1)
      {
        v1 = kMediaKind_MusicValue;
        return CFStringCreateCopy(*MEMORY[0x1E695E480], *v1);
      }

      if (a1 == 2)
      {
        v1 = kMediaKind_AudiobookValue;
        return CFStringCreateCopy(*MEMORY[0x1E695E480], *v1);
      }
    }
  }

  else if (a1 <= 28)
  {
    if (a1 == 9)
    {
      v1 = kMediaKind_MovieValue;
      return CFStringCreateCopy(*MEMORY[0x1E695E480], *v1);
    }

    if (a1 == 24)
    {
      v1 = kMediaKind_iTunesUValue;
      return CFStringCreateCopy(*MEMORY[0x1E695E480], *v1);
    }
  }

  else
  {
    switch(a1)
    {
      case 29:
        v1 = kMediaKind_TVShowValue;
        return CFStringCreateCopy(*MEMORY[0x1E695E480], *v1);
      case 32:
        v1 = kMediaKind_HomeVideoValue;
        return CFStringCreateCopy(*MEMORY[0x1E695E480], *v1);
      case 33:
        v1 = kMediaKind_VoiceMemoValue;
        return CFStringCreateCopy(*MEMORY[0x1E695E480], *v1);
    }
  }

  return 0;
}

uint64_t GetSoundCheckValuesFromString(const __CFString *a1, unsigned int a2, unsigned int *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = 2003334207;
  if (a1)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    *buffer = 0u;
    v15 = 0u;
    SystemEncoding = CFStringGetSystemEncoding();
    if (CFStringGetCString(a1, buffer, 256, SystemEncoding))
    {
      if (a2)
      {
        v8 = 0;
        v9 = buffer;
        do
        {
          v13 = 0;
          sscanf(v9, "%u", &v13);
          a3[v8++] = v13;
          if (v8 < a2)
          {
            do
            {
              v10 = *v9++;
            }

            while (v10 != 32);
          }
        }

        while (v8 != a2);
      }

      v3 = 0;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t GetSCFields(CACFDictionary *a1, unsigned int *a2, unsigned int a3)
{
  v6 = 2003334207;
  if (CACFDictionary::HasKey(a1, @"sc ave perceived power coeff"))
  {
    if (CACFDictionary::HasKey(a1, @"sc max perceived power coeff"))
    {
      if (CACFDictionary::HasKey(a1, @"sc max perceived power msec"))
      {
        if (CACFDictionary::HasKey(a1, @"sc peak amplitude"))
        {
          if (CACFDictionary::HasKey(a1, @"sc peak amplitude msec"))
          {
            v9 = 0;
            if (CACFDictionary::GetString(a1, @"sc ave perceived power coeff", &v9))
            {
              v7 = GetSoundCheckValuesFromString(v9, a3, a2);
              if (!v7)
              {
                v9 = 0;
                if (!CACFDictionary::GetString(a1, @"sc max perceived power coeff", &v9))
                {
                  return v6;
                }

                v7 = GetSoundCheckValuesFromString(v9, a3, &a2[a3]);
                if (!v7)
                {
                  v9 = 0;
                  if (!CACFDictionary::GetString(a1, @"sc max perceived power msec", &v9))
                  {
                    return v6;
                  }

                  v7 = GetSoundCheckValuesFromString(v9, a3, &a2[2 * a3]);
                  if (!v7)
                  {
                    v9 = 0;
                    if (!CACFDictionary::GetString(a1, @"sc peak amplitude", &v9))
                    {
                      return v6;
                    }

                    v7 = GetSoundCheckValuesFromString(v9, a3, &a2[3 * a3]);
                    if (!v7)
                    {
                      v9 = 0;
                      if (!CACFDictionary::GetString(a1, @"sc peak amplitude msec", &v9))
                      {
                        return v6;
                      }

                      return GetSoundCheckValuesFromString(v9, a3, &a2[4 * a3]);
                    }
                  }
                }
              }

              return v7;
            }
          }
        }
      }
    }
  }

  return v6;
}

int *FillSCString(int *result, int a2, char *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = result;
    if ((5 * a2) <= 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = (5 * a2);
    }

    v5 = a3 + 9;
    do
    {
      *(v5 - 9) = 32;
      v6 = *v3++;
      *(v5 - 1) = 0x3030303030303030;
      snprintf(__str, 0x20uLL, "%X", v6);
      v7 = strlen(__str);
      result = memcpy(&v5[-v7], __str, v7);
      v5 += 9;
      --v4;
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

CFComparisonResult AddTextToReplayGainDict(CFComparisonResult theString1, const __CFString *a2, CACFDictionary *a3)
{
  if (!a2)
  {
    return theString1;
  }

  v3 = theString1;
  if (theString1 == kCFCompareEqualTo || !a3)
  {
    return theString1;
  }

  if (CFStringCompare(theString1, @"REPLAYGAIN_TRACK_GAIN", 1uLL) == kCFCompareEqualTo)
  {
    theString1 = CACFDictionary::HasKey(a3, @"REPLAYGAIN_TRACK_GAIN");
    if (theString1)
    {
      return theString1;
    }

    v11 = 0.0;
    theString1 = ConvertReplayGainStringToGain(a2, &v11);
    if (!theString1)
    {
      return theString1;
    }

    v8 = v11;
    v9 = @"REPLAYGAIN_TRACK_GAIN";
    return CACFDictionary::AddFloat32(a3, v9, v8);
  }

  if (CFStringCompare(v3, @"REPLAYGAIN_TRACK_PEAK", 1uLL))
  {
    if (CFStringCompare(v3, @"REPLAYGAIN_ALBUM_GAIN", 1uLL))
    {
      theString1 = CFStringCompare(v3, @"REPLAYGAIN_ALBUM_PEAK", 1uLL);
      if (theString1)
      {
        return theString1;
      }

      theString1 = CACFDictionary::HasKey(a3, @"REPLAYGAIN_ALBUM_PEAK");
      if (theString1)
      {
        return theString1;
      }

      DoubleValue = CFStringGetDoubleValue(a2);
      v7 = @"REPLAYGAIN_ALBUM_PEAK";
      goto LABEL_15;
    }

    theString1 = CACFDictionary::HasKey(a3, @"REPLAYGAIN_ALBUM_GAIN");
    if (theString1)
    {
      return theString1;
    }

    v10 = 0.0;
    theString1 = ConvertReplayGainStringToGain(a2, &v10);
    if (!theString1)
    {
      return theString1;
    }

    v8 = v10;
    v9 = @"REPLAYGAIN_ALBUM_GAIN";
    return CACFDictionary::AddFloat32(a3, v9, v8);
  }

  theString1 = CACFDictionary::HasKey(a3, @"REPLAYGAIN_TRACK_PEAK");
  if (theString1)
  {
    return theString1;
  }

  DoubleValue = CFStringGetDoubleValue(a2);
  v7 = @"REPLAYGAIN_TRACK_PEAK";
LABEL_15:

  return CACFDictionary::AddFloat32(a3, v7, DoubleValue);
}

uint64_t ConvertReplayGainStringToGain(CFStringRef theString, float *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
  if (MutableCopy)
  {
    v4 = MutableCopy;
    v5 = CFStringFind(MutableCopy, @"dB", 1uLL);
    if (v5.location != -1)
    {
      if (v5.location + v5.length != CFStringGetLength(v4))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v10 = 136315394;
          v11 = "AudioFileCommon.cpp";
          v12 = 1024;
          v13 = 1610;
          _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  dB isn't a suffix", &v10, 0x12u);
        }

        v7 = 0;
        goto LABEL_12;
      }

      CFStringDelete(v4, v5);
    }

    CFStringTrimWhitespace(v4);
    DoubleValue = CFStringGetDoubleValue(v4);
    *a2 = DoubleValue;
    v7 = 1;
LABEL_12:
    CFRelease(v4);
    goto LABEL_13;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = 136315394;
    v11 = "AudioFileCommon.cpp";
    v12 = 1024;
    v13 = 1606;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  failed to copy input string", &v10, 0x12u);
  }

  v7 = 0;
LABEL_13:
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

const __CFString *BitDepthFromCFString(const __CFString *result)
{
  v10 = *MEMORY[0x1E69E9840];
  if (result)
  {
    p_buffer = &buffer;
    CFStringGetCString(result, &buffer, 256, 0x8000100u);
    v2 = MEMORY[0x1E69E9830];
    do
    {
      while (1)
      {
        v4 = *p_buffer++;
        v3 = v4;
        if ((v4 & 0x80000000) != 0)
        {
          break;
        }

        if ((*(v2 + 4 * v3 + 60) & 0x4000) == 0)
        {
          goto LABEL_7;
        }
      }
    }

    while (__maskrune(v3, 0x4000uLL));
LABEL_7:
    v5 = buffer & 0xDF;
    if (v5 == 73)
    {
      v7 = 0;
      sscanf(v9, "%d", &v7);
      result = v7;
    }

    else if (v5 == 70)
    {
      v7 = 0;
      sscanf(v9, "%d", &v7);
      result = -v7;
    }

    else
    {
      result = 0;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef CreateCFStringFromBitDepth(int a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a1 < 0)
  {
    snprintf(__str, 0x20uLL, "F%d");
  }

  else
  {
    snprintf(__str, 0x20uLL, "I%d");
  }

  result = CFStringCreateWithCString(0, __str, 0x8000100u);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t GetSourceBitDepthFromASBD(const AudioStreamBasicDescription *a1, char a2)
{
  if (a1 <= 1718378850)
  {
    if (a1 == 1634492771)
    {
      goto LABEL_9;
    }

    v2 = 1634497332;
  }

  else
  {
    if (a1 == 1718378851)
    {
      goto LABEL_9;
    }

    if (a1 == 1936487278)
    {
      goto LABEL_8;
    }

    v2 = 1936487267;
  }

  if (a1 != v2)
  {
    return 0;
  }

LABEL_8:
  if ((a2 & 0xF) == 0)
  {
    return 8;
  }

LABEL_9:
  v3 = a2 & 0xF;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      return 24;
    }

    if (v3 == 4)
    {
      if (a1 == 1936487278 || a1 == 1936487267)
      {
        return 0;
      }

      else
      {
        return 32;
      }
    }

    return 0;
  }

  if (v3 != 1)
  {
    if (v3 == 2)
    {
      return 20;
    }

    return 0;
  }

  return 16;
}

void sub_18F8B5D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, void *a18, uint64_t a19, void *a20)
{
  if (a16)
  {
    free(a16);
  }

  if (v21)
  {
    free(v21);
  }

  if (a18)
  {
    free(a18);
  }

  if (a20)
  {
    free(a20);
  }

  (*(*v20 + 8))(v20);
  _Unwind_Resume(a1);
}

uint64_t AudioFileGetSoundCheckDictionaryFromLoudnessInfo(AudioFileObject *a1, CACFDictionary *a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = 257;
  v4 = (*(*a1 + 480))(a1, &Mutable);
  if (!v4)
  {
    AudioFileGetSoundCheckDictionaryFromLoudnessInfo(&Mutable, a2);
  }

  CACFDictionary::~CACFDictionary(&Mutable);
  return v4;
}

void AudioFileGetSoundCheckDictionaryFromLoudnessInfo(const CACFDictionary *a1, CACFDictionary *a2)
{
  v12 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v11 = 257;
  if (CACFDictionary::GetDictionary(a1, @"sound check info", &v12))
  {
    CACFDictionary::operator=(&Mutable, v12);
    v4 = CACFDictionary::Size(&Mutable);
    v5 = v4;
    std::vector<__CFString const*>::vector[abi:ne200100](v9, v4);
    std::vector<void const*>::vector[abi:ne200100](__p, v4);
    CACFDictionary::GetKeysAndValues(&Mutable, v9[0], __p[0]);
    if (v4)
    {
      v6 = 0;
      v7 = 8 * v5;
      do
      {
        CACFDictionary::AddCFType(a2, v9[0][v6 / 8], *(__p[0] + v6));
        v6 += 8;
      }

      while (v7 != v6);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v9[0])
    {
      v9[1] = v9[0];
      operator delete(v9[0]);
    }
  }

  CACFDictionary::~CACFDictionary(&Mutable);
}

void sub_18F8B5F78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  CACFDictionary::~CACFDictionary(&a16);
  _Unwind_Resume(a1);
}

uint64_t CACFDictionary::operator=(uint64_t a1, const void *a2)
{
  if (*(a1 + 8))
  {
    v4 = *a1;
    if (*a1)
    {
      CFRelease(v4);
      v5 = *(a1 + 8);
    }

    else
    {
      v5 = 1;
    }

    *a1 = a2;
    *(a1 + 9) = 0;
    if (a2 && (v5 & 1) != 0)
    {
      CFRetain(a2);
    }
  }

  else
  {
    *a1 = a2;
    *(a1 + 9) = 0;
  }

  return a1;
}

void AudioFileGetLoudnessInfoFromSoundCheckDictionary(CFDictionaryRef *a1, CACFDictionary *a2)
{
  v21[7] = *MEMORY[0x1E69E9840];
  cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v18 = 257;
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, *a1);
  if (cf)
  {
    CFRelease(cf);
  }

  cf = MutableCopy;
  HIBYTE(v18) = 1;
  if (MutableCopy)
  {
    CFRetain(MutableCopy);
  }

  *v16 = 0;
  if (CACFDictionary::GetUInt32FromString(&cf, @"aa bit depth pcm master", &v16[1]))
  {
    CACFDictionary::AddUInt32(a2, @"bit depth pcm master");
  }

  v21[0] = @"aa itu loudness";
  v21[1] = @"aa ebu loudness range";
  v21[2] = @"aa ebu top of loudness range";
  v21[3] = @"aa itu true peak";
  v21[4] = @"aa ebu max momentary loudness";
  v21[5] = @"aa ebu max short-term loudness";
  v21[6] = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v15 = 257;
  v5 = @"aa itu loudness";
  v6 = 1;
  do
  {
    if (CACFDictionary::GetFloat32FromString(&cf, v5, v16))
    {
      CACFDictionary::AddFloat32(&Mutable, v5, *v16);
      if (HIBYTE(v18) == 1)
      {
        if (cf)
        {
          CFDictionaryRemoveValue(cf, v5);
        }
      }
    }

    v5 = v21[v6++];
  }

  while (v5);
  v20[0] = @"aa headroom master";
  v20[1] = @"aa noise floor master";
  v20[2] = 0;
  v12 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v13 = 257;
  v7 = @"aa headroom master";
  v8 = 1;
  do
  {
    if (CACFDictionary::GetFloat32FromString(&cf, v7, v16))
    {
      CACFDictionary::AddUInt32(&v12, v7);
      if (HIBYTE(v18) == 1)
      {
        if (cf)
        {
          CFDictionaryRemoveValue(cf, v7);
        }
      }
    }

    v7 = v20[v8++];
  }

  while (v7);
  v9 = @"aa source bandwidth master";
  v19[0] = @"aa source bandwidth master";
  v19[1] = 0;
  v10 = 1;
  do
  {
    if (CACFDictionary::GetUInt32FromString(&cf, v9, &v16[1]))
    {
      CACFDictionary::AddUInt32(&v12, v9);
      if (HIBYTE(v18) == 1)
      {
        if (cf)
        {
          CFDictionaryRemoveValue(cf, v9);
        }
      }
    }

    v9 = v19[v10++];
  }

  while (v9);
  if (CACFDictionary::Size(&cf))
  {
    CACFDictionary::AddDictionary(a2, @"sound check info", cf);
  }

  if (CACFDictionary::Size(&Mutable))
  {
    CACFDictionary::AddDictionary(a2, @"main loudness parameters", Mutable);
  }

  if (CACFDictionary::Size(&v12))
  {
    CACFDictionary::AddDictionary(a2, @"additional loudness parameters", v12);
  }

  CACFDictionary::~CACFDictionary(&v12);
  CACFDictionary::~CACFDictionary(&Mutable);
  CACFDictionary::~CACFDictionary(&cf);
  v11 = *MEMORY[0x1E69E9840];
}

void sub_18F8B6390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  CACFDictionary::~CACFDictionary(va);
  CACFDictionary::~CACFDictionary(va1);
  _Unwind_Resume(a1);
}

uint64_t GetStoreItemKindFromLID(CACFDictionary *a1)
{
  theString1 = 0;
  if (!CACFDictionary::GetString(a1, @"media kind", &theString1))
  {
    return 0;
  }

  v1 = 1;
  if (CFStringCompare(theString1, @"Music", 1uLL))
  {
    if (CFStringCompare(theString1, @"Podcast", 1uLL))
    {
      if (CFStringCompare(theString1, @"Audiobook", 1uLL))
      {
        if (CFStringCompare(theString1, @"Movie", 1uLL))
        {
          if (CFStringCompare(theString1, @"TV Show", 1uLL))
          {
            if (CFStringCompare(theString1, @"Music Video", 1uLL))
            {
              if (CFStringCompare(theString1, @"iTunes U", 1uLL))
              {
                if (CFStringCompare(theString1, @"Home Video", 1uLL))
                {
                  if (CFStringCompare(theString1, @"Voice Memo", 1uLL))
                  {
                    return 0;
                  }

                  else
                  {
                    return 33;
                  }
                }

                else
                {
                  return 32;
                }
              }

              else
              {
                return 24;
              }
            }

            else
            {
              return 6;
            }
          }

          else
          {
            return 29;
          }
        }

        else
        {
          return 9;
        }
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 8;
    }
  }

  return v1;
}

uint64_t LoudnessMethodsCountFromLID(const CACFDictionary *a1, unsigned int *a2)
{
  if (CACFDictionary::HasKey(a1, @"dialogue anchor parameters"))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v14 = 257;
    CACFDictionary::GetCACFDictionary(a1, @"dialogue anchor parameters", &Mutable);
    HasKey = CACFDictionary::HasKey(&Mutable, @"aa itu loudness");
    CACFDictionary::~CACFDictionary(&Mutable);
  }

  else
  {
    HasKey = 0;
  }

  if (CACFDictionary::HasKey(a1, @"main loudness parameters"))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v14 = 257;
    CACFDictionary::GetCACFDictionary(a1, @"main loudness parameters", &Mutable);
    v5 = CACFDictionary::HasKey(&Mutable, @"aa itu loudness");
    v6 = CACFDictionary::HasKey(&Mutable, @"aa ebu loudness range");
    v7 = CACFDictionary::HasKey(&Mutable, @"aa ebu top of loudness range");
    v8 = CACFDictionary::HasKey(&Mutable, @"aa ebu max momentary loudness");
    v9 = CACFDictionary::HasKey(&Mutable, @"aa ebu max short-term loudness");
    v10 = CACFDictionary::HasKey(&Mutable, @"aa production mixing level");
    v11 = CACFDictionary::HasKey(&Mutable, @"aa production room type");
    HasKey = HasKey + v5 + v6 + v7 + v8 + v9 + v10 + v11 + CACFDictionary::HasKey(&Mutable, @"aa short term loudness");
    CACFDictionary::~CACFDictionary(&Mutable);
  }

  if (CACFDictionary::HasKey(a1, @"album loudness parameters"))
  {
    *a2 = 0;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v14 = 257;
    CACFDictionary::GetCACFDictionary(a1, @"album loudness parameters", &Mutable);
    if (CACFDictionary::HasKey(&Mutable, @"aa itu loudness"))
    {
      ++*a2;
    }

    if (CACFDictionary::HasKey(&Mutable, @"aa ebu loudness range"))
    {
      ++*a2;
    }

    if (CACFDictionary::HasKey(&Mutable, @"aa ebu top of loudness range"))
    {
      ++*a2;
    }

    if (CACFDictionary::HasKey(&Mutable, @"aa ebu max momentary loudness"))
    {
      ++*a2;
    }

    if (CACFDictionary::HasKey(&Mutable, @"aa ebu max short-term loudness"))
    {
      ++*a2;
    }

    if (CACFDictionary::HasKey(&Mutable, @"aa production mixing level"))
    {
      ++*a2;
    }

    if (CACFDictionary::HasKey(&Mutable, @"aa production room type"))
    {
      ++*a2;
    }

    if (CACFDictionary::HasKey(&Mutable, @"aa short term loudness"))
    {
      ++*a2;
    }

    CACFDictionary::~CACFDictionary(&Mutable);
  }

  return HasKey;
}

uint64_t CompressLoudnessRange(float a1)
{
  if (a1 >= 0.0)
  {
    if (a1 <= 32.0)
    {
      return ((a1 * 4.0) + 0.5);
    }

    else if (a1 <= 70.0)
    {
      return ((((a1 + -32.0) * 2.0) + 0.5) ^ 0xFFFFFF80);
    }

    else if (a1 >= 121.0)
    {
      LOBYTE(v1) = -1;
    }

    else
    {
      return (((a1 + -70.0) + 0.5) - 52);
    }
  }

  else
  {
    LOBYTE(v1) = 0;
  }

  return v1;
}

void PacketDependencyParser::PacketDependencyParser(PacketDependencyParser *this, const AudioStreamBasicDescription *a2, unsigned __int8 *a3, int a4)
{
  v28 = *MEMORY[0x1E69E9840];
  *(this + 1) = 0;
  *(this + 2) = 0;
  mFormatID = a2->mFormatID;
  *this = mFormatID;
  if (mFormatID == 1970495843 && a3 != 0 && a4 != 0)
  {
    v10 = a3;
    v22[2] = 0;
    v23 = 0;
    v24 = 0;
    v25[2] = 0;
    MP4AudioProgramConfig::Clear(v25);
    v27 = 0u;
    v26 = 0u;
    DecoderConfigDescr::cleanup(v22);
    bzero(v21, 0x5F0uLL);
    v11 = &v10[a4];
    v19[0] = v10;
    v19[1] = v11;
    v20 = 0;
    if ((v10 & 3) != 0)
    {
      v12 = 0;
      v13 = v10 + 1;
      v14 = -8;
      do
      {
        v15 = v14;
        v16 = *v10++;
        v12 = v16 | (v12 << 8);
        v14 += 8;
        if ((v13 & 3) == 0)
        {
          break;
        }

        ++v13;
      }

      while (v10 < v11);
      v19[0] = v10;
      LODWORD(v20) = v12 << (24 - v14);
      HIDWORD(v20) = v15 + 16;
    }

    if (!MP4AudioESDS::Deserialize(v21, v19, 0, 0))
    {
      if (v23 == 42 && v26)
      {
        if (*(v26 + 12) >= 2u)
        {
          if (*(v26 + 74))
          {
            v17 = 3;
          }

          else
          {
            v17 = 2;
          }
        }

        else
        {
          v17 = 1;
        }

        v18 = v26;
        *(this + 1) = v17;
        if (*(v18 + 184) == 1)
        {
          *(this + 2) = 1;
        }
      }

      else
      {
        *(this + 1) = 0;
      }
    }

    if (*(&v27 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v27 + 1));
    }

    if (*(&v26 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v26 + 1));
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_18F8B6AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MP4AudioESDS::~MP4AudioESDS(va);
  _Unwind_Resume(a1);
}

_DWORD *PacketDependencyParser::PacketDependency(_DWORD *result, unsigned __int8 **a2, uint64_t a3)
{
  if (*result == 1634754915)
  {
    v8 = *(a2 + 6);
    v7 = *(a2 + 7);
    v9 = v8 >> 30;
    *(a2 + 7) = v7 - 2;
    if (v7 - 2 < 0)
    {
      v12 = a2[1];
      v11 = a2[2];
      v13 = *a2;
      if (((v11 - *a2) & ~((v11 - *a2) >> 63) & 0xFFFFFFFC) == 0 || v12 > v13)
      {
        v15 = 4;
        v16 = *a2;
        do
        {
          v17 = v8 << 8;
          *(a2 + 6) = v17;
          v18 = 255;
          if (v16 < v11 && v16 >= v12)
          {
            v18 = *v16;
          }

          v8 = v18 | v17;
          *(a2 + 6) = v8;
          ++v16;
          --v15;
        }

        while (v15);
      }

      else
      {
        v8 = bswap32(*v13);
      }

      v19 = v8 << (2 - v7);
      v20 = v7 + 30;
      *(a2 + 7) = v20;
      *a2 = v13 + 4;
      v9 |= v8 >> v20;
      if (v20)
      {
        v10 = v19;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 4 * v8;
    }

    *(a2 + 6) = v10;
    if (v9 == 2)
    {
      v21 = 1;
    }

    else
    {
      if (v9 != 1)
      {
        goto LABEL_30;
      }

      v21 = 0x100000001;
    }

    *a3 = v21;
    return result;
  }

  if (*result != 1970495843)
  {
LABEL_30:
    *a3 = 0;
    return result;
  }

  v5 = result[1];
  v6 = result[2];
  *a3 = 0;
  if (*(a2 + 7) + 8 * (*(a2 + 4) - *a2))
  {
    result = AT::TBitstreamReader<unsigned int>::GetBit(a2);
    if (result)
    {
      if (v6 == 1)
      {
        if (!(*(a2 + 7) + 8 * (*(a2 + 4) - *a2)))
        {
          return result;
        }

        result = AT::TBitstreamReader<unsigned int>::GetBit(a2);
        if (result)
        {
          if (!(*(a2 + 7) + 8 * (*(a2 + 4) - *a2)))
          {
            return result;
          }

          result = AT::TBitstreamReader<unsigned int>::GetBit(a2);
          if (!result)
          {
            LOWORD(v5) = 0;
          }
        }
      }

      *a3 = 1;
      *(a3 + 4) = v5;
    }
  }

  return result;
}

void PacketDurationParser::PacketDurationParser(PacketDurationParser *this, const AudioStreamBasicDescription *a2, const void *a3, int a4)
{
  *(this + 25) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  mFormatID = a2->mFormatID;
  mFramesPerPacket = a2->mFramesPerPacket;
  *this = mFormatID;
  *(this + 1) = mFramesPerPacket;
  if (mFormatID != 1987015266)
  {
LABEL_8:
    *(this + 40) = 1;
    return;
  }

  v23 = a3;
  v24 = 0;
  v7 = *&a2->mBytesPerPacket;
  inSpecifier[0] = *&a2->mSampleRate;
  inSpecifier[1] = v7;
  v22 = *&a2->mBitsPerChannel;
  LODWORD(v24) = a4;
  ioPropertyDataSize = 24;
  if (!AudioFormatGetProperty(0x766E666Fu, 0x38u, inSpecifier, &ioPropertyDataSize, this + 8))
  {
    v10 = *(this + 4);
    if (v10)
    {
      v11 = v10 - 1;
      if (v11)
      {
        v12 = __clz(v11);
        v13 = (35 - v12) & 0x3C;
        v8.i32[0] = *(this + 8);
        v14 = xmmword_18F901740;
        v15.i64[0] = 0x100000001;
        v15.i64[1] = 0x100000001;
        v16.i64[0] = 0x400000004;
        v16.i64[1] = 0x400000004;
        do
        {
          v17 = v14;
          v18 = v8;
          v8 = vorrq_s8(v8, vshlq_u32(v15, v14));
          v14 = vaddq_s32(v14, v16);
          v13 -= 4;
        }

        while (v13);
        v9.i32[0] = v12 ^ 0x1F;
        v19 = vbslq_s8(vcgtq_u32(v17, vdupq_lane_s32(v9, 0)), v18, v8);
        *v19.i8 = vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
        *(this + 8) = v19.i32[0] | v19.i32[1];
      }

      goto LABEL_8;
    }
  }
}

uint64_t PacketDurationParser::FramesInPacket(PacketDurationParser *this, _BYTE *a2, unsigned int a3)
{
  v3 = *(this + 1);
  if (!v3)
  {
    v4 = *this;
    v5 = *this == 1987015266;
    if (*this == 1869641075)
    {
      v5 = 2;
    }

    if (v5 > a3)
    {
      return 0;
    }

    if (v4 != 1987015266)
    {
      if (v4 == 1869641075)
      {
        v6 = *a2;
        if ((v6 & 3) - 1 < 2)
        {
          v7 = 2;
          return (OpusConfigToPCMFrameCount(unsigned char)::pcmFrameCountArray[v6 >> 3] * v7);
        }

        if ((v6 & 3) != 3)
        {
          v7 = 1;
          return (OpusConfigToPCMFrameCount(unsigned char)::pcmFrameCountArray[v6 >> 3] * v7);
        }

        if (a3 >= 2)
        {
          v7 = a2[1] & 0x3F;
          return (OpusConfigToPCMFrameCount(unsigned char)::pcmFrameCountArray[v6 >> 3] * v7);
        }
      }

      return 0;
    }

    v8 = *a2;
    if (v8)
    {
      return 0;
    }

    v9 = *(this + 8) & (v8 >> 1);
    if (v9 >= *(this + 4))
    {
      return 0;
    }

    v10 = (*(this + 3) & (1 << v9)) == 0;
    v11 = 12;
    if (v10)
    {
      v11 = 8;
    }

    v12 = *(this + v11);
    v13 = *(this + 9);
    if (v13)
    {
      v3 = (v13 + v12) >> 2;
    }

    else
    {
      v3 = 128;
    }

    *(this + 9) = v12;
  }

  return v3;
}

uint64_t MP4BoxParser_MovieHeader::Init(MP4BoxParser **this)
{
  result = MP4BoxParser_Full::Initialize(this);
  if (!result)
  {
    if (*(this + 5) != 1836476516)
    {
      return 4294967294;
    }

    if (*(this + 56) == 1)
    {
      v3 = (*(*this + 3))(this);
      result = MP4BoxParser::ReadDataSourceBytes(this[1], v3, 0x20uLL, &v9);
      if (result)
      {
        return result;
      }

      *(this + 4) = vrev64q_s8(v9);
      *(this + 20) = bswap32(v10);
      v4 = bswap64(v11);
    }

    else
    {
      v5 = (*(*this + 3))(this);
      result = MP4BoxParser::ReadDataSourceBytes(this[1], v5, 0x10uLL, &v9);
      if (result)
      {
        return result;
      }

      v6 = vrev32_s8(*v9.i8);
      *&v7 = v6.u32[0];
      *(&v7 + 1) = v6.u32[1];
      *(this + 4) = v7;
      v8 = v9.u32[3];
      *(this + 20) = bswap32(v9.u32[2]);
      v4 = bswap32(v8);
    }

    this[11] = v4;
  }

  return result;
}

void MP4BoxParser_MovieHeader::~MP4BoxParser_MovieHeader(MP4BoxParser_MovieHeader *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x193ADF220);
}

{
  v2 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

void MP4BoxParser_MovieHeader::MP4BoxParser_MovieHeader(MP4BoxParser_MovieHeader *this, DataSource *a2, uint64_t a3)
{
  *this = &unk_1F0330650;
  (*(*a2 + 88))(a2, a3);
  *(this + 16) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  *(this + 9) = 8;
  *this = &unk_1F033CC30;
  *(this + 11) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 20) = 0;
}

uint64_t pooledRenderer::AudioConverterOOP::convertComplexBuffer(pooledRenderer::AudioConverterOOP *this, UInt32 a2, const AudioBufferList *a3, AudioBufferList *a4)
{
  v49 = a2;
  v8 = *(*(this + 11) + 144);
  v9 = *(this + 4);
  v10 = *(this + 5);
  v48[0] = this;
  v48[1] = &v49;
  if ((*(this + 12) & 1) != 0 || (*(this + 13) & 1) == 0)
  {
    v41[0] = 0;
    v47 = 0;
  }

  else
  {
    v11 = *(this + 4);
    v12 = *(this + 5);
    v32 = 2756;
    v33 = v11;
    v34 = v12;
    v35 = a2;
    v36 = 0;
    kdebug_trace();
    v41[0] = 1;
    v42 = 2756;
    v43 = v11;
    v44 = v12;
    v45 = a2;
    v46 = 0;
    v31[0] = 0;
    v47 = 1;
    AT::ScopedTrace::~ScopedTrace(v31);
  }

  AudioConverterAPI::ScopedThreadChecker::ScopedThreadChecker(&v39, this + 32, this);
  v13 = v39;
  if (v39)
  {
    goto LABEL_31;
  }

  AudioConverterClientBufferManager::AudioConverterClientBufferManager(v31, (*(this + 11) + 216));
  if (a3->mNumberBuffers != *(v37 + 48))
  {
    v18 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v18 + 88, 16);
    if (message)
    {
      v20 = message;
      v21 = _os_log_pack_fill();
      mNumberBuffers = a3->mNumberBuffers;
      v23 = *(v37 + 48);
      *v21 = 67109376;
      *(v21 + 4) = mNumberBuffers;
      *(v21 + 8) = 1024;
      *(v21 + 10) = v23;
      caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v20);
    }

    v13 = 4294967246;
    goto LABEL_28;
  }

  v30[0] = a3;
  v30[1] = &v49;
  AudioConverterClientBufferManager::AudioConverterClientBufferManager(v27, (*(this + 11) + 312));
  v14 = atomic_load((*(this + 11) + 416));
  if (v14)
  {
    v15 = *(this + 11);
    v16 = *(v15 + 168);
    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = *(v15 + 8);
      v24 = ACResourcePoolManager<AudioConverterRenderClient,RendererConfiguration *>::popResourceFromStack(v17, 1);
      v16 = v24;
      if ((v25 & 1) == 0)
      {
        v13 = v24;
        v16 = 0;
        goto LABEL_19;
      }

      AudioConverterRenderClient::setConfiguration(v24, v15 + 24);
      if (!v16)
      {
        v13 = 0;
        goto LABEL_19;
      }
    }

    v13 = AudioConverterRenderClient::enterRenderLoop(v16, *(this + 2), pooledRenderer::AudioConverterOOP::convertComplexBuffer(unsigned int,AudioBufferList const*,AudioBufferList*)::$_1::__invoke, v30, a4, v31, v27, &v49, 0);
LABEL_19:
    if (v17)
    {
      ACResourcePoolManager<AudioConverterRenderClient,RendererConfiguration *>::pushResourceToStack(v17, v16);
    }

    if (*(this + 28) == 1 && a4->mNumberBuffers && a4->mBuffers[0].mDataByteSize)
    {
      AudioConverterAPI::stopTracingStartLatency(this);
    }

    goto LABEL_25;
  }

  v13 = 560164718;
LABEL_25:
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  ExtendedAudioBufferList_Destroy(v28);
LABEL_28:
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  ExtendedAudioBufferList_Destroy(v37);
LABEL_31:
  atomic_store(0, v40);
  if (v47 == 1)
  {
    AT::ScopedTrace::~ScopedTrace(v41);
  }

  applesauce::raii::v1::detail::ScopeGuard<pooledRenderer::AudioConverterOOP::convertComplexBuffer(unsigned int,AudioBufferList const*,AudioBufferList*)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(v48);
  return v13;
}

void sub_18F8B7490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  AudioConverterClientBufferManager::~AudioConverterClientBufferManager(&a12);
  AudioConverterClientBufferManager::~AudioConverterClientBufferManager(&a26);
  atomic_store(0, *(v26 - 144));
  if (*(v26 - 96) == 1)
  {
    AT::ScopedTrace::~ScopedTrace((v26 - 136));
  }

  applesauce::raii::v1::detail::ScopeGuard<pooledRenderer::AudioConverterOOP::convertComplexBuffer(unsigned int,AudioBufferList const*,AudioBufferList*)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard((v26 - 88));
  _Unwind_Resume(a1);
}

void AudioConverterClientBufferManager::AudioConverterClientBufferManager(AudioConverterClientBufferManager *this, AudioConverterClientBufferManager *a2)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  *(this + 4) = *(a2 + 4);
  *this = v4;
  *(this + 1) = v5;
  CA::AudioBuffersBase::AudioBuffersBase(this + 5, v6, 1);
  v7 = *(a2 + 7);
  v8 = *(a2 + 8);
  *(this + 7) = v7;
  *(this + 8) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    v7 = *(this + 7);
  }

  *(this + 72) = v7[1] != *v7;
  v9 = *(a2 + 20);
  *(this + 19) = 0;
  *(this + 20) = v9;
  *(this + 11) = 0;
}

uint64_t AudioConverterRenderClient::setConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 100);
  *(a1 + 368) = *(a2 + 44);
  *(a1 + 372) = v4;
  *(a1 + 376) = *(a2 + 20);
  v5 = *(a2 + 120);
  if (v5)
  {
    *(a1 + 384) = *(a2 + 112);
    *(a1 + 392) = v5;
  }

  result = ACRendererSharedMemory::calculateConfigAndPartitionMemory((a1 + 64), a2);
  *(*(a1 + 264) + 104) = *(a1 + 392);
  *a1 = a2;
  return result;
}

uint64_t AudioConverterAPI::stopTracingStartLatency(uint64_t this)
{
  if (*(this + 28) == 1)
  {
    v1 = *(this + 20);
    v2 = *(this + 24);
    *(this + 28) = 0;
    v3 = *(this + 16);
    return kdebug_trace();
  }

  return this;
}

void AudioConverterClientBufferManager::~AudioConverterClientBufferManager(AudioConverterClientBufferManager *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  ExtendedAudioBufferList_Destroy(*(this + 5));
}

unsigned int **applesauce::raii::v1::detail::ScopeGuard<pooledRenderer::AudioConverterOOP::convertComplexBuffer(unsigned int,AudioBufferList const*,AudioBufferList*)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(unsigned int **result)
{
  v1 = *(*(*result + 11) + 144);
  v2 = (*result)[4];
  v3 = (*result)[5];
  v4 = *result[1];
  return result;
}

uint64_t pooledRenderer::AudioConverterOOP::convertComplexBuffer(unsigned int,AudioBufferList const*,AudioBufferList*)::$_1::__invoke(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4, unsigned int **a5)
{
  v5 = *a5;
  *a2 = *a5[1];
  v6 = *v5;
  *a3 = v6;
  if (v6)
  {
    v7 = (v5 + 4);
    v8 = a3 + 4;
    do
    {
      *(v8 - 1) = *(v7 - 1);
      v9 = *v7;
      v7 += 2;
      *v8 = v9;
      v8 += 2;
      --v6;
    }

    while (v6);
  }

  return 0;
}

uint64_t pooledRenderer::AudioConverterOOP::fillComplexBuffer(uint64_t a1, uint64_t (*a2)(uint64_t, unsigned int *, uint64_t, uint64_t, uint64_t), uint64_t a3, UInt32 *a4, AudioBufferList *a5, const AudioStreamPacketDescription *a6, uint64_t a7)
{
  v41 = a4;
  v7 = atomic_load((*(a1 + 88) + 416));
  if ((v7 & 1) == 0)
  {
    return 560164718;
  }

  if (a7)
  {
    v8 = 1869627199;
    v9 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v9 + 88, 16);
    if (message)
    {
      v11 = message;
      *_os_log_pack_fill() = 0;
      caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v11);
    }

    return v8;
  }

  v17 = *(*(a1 + 88) + 144);
  v18 = *(a1 + 16);
  v19 = *(a1 + 20);
  v20 = *v41;
  v40[0] = a1;
  v40[1] = &v41;
  if ((*(a1 + 12) & 1) != 0 || (*(a1 + 13) & 1) == 0)
  {
    v33[0] = 0;
    v39 = 0;
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(a1 + 20);
    v23 = *v41;
    v42[1] = 2756;
    v43 = v21;
    v44 = v22;
    v45 = v23;
    v46 = 0;
    kdebug_trace();
    v33[0] = 1;
    v34 = 2756;
    v35 = v21;
    v36 = v22;
    v37 = v23;
    v38 = 0;
    LOBYTE(v42[0]) = 0;
    v39 = 1;
    AT::ScopedTrace::~ScopedTrace(v42);
  }

  AudioConverterAPI::ScopedThreadChecker::ScopedThreadChecker(v42, a1 + 32, a1);
  v8 = v42[0];
  if (!v42[0])
  {
    v24 = *(a1 + 88);
    v25 = *(v24 + 168);
    if (v25)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(v24 + 8);
      v31 = ACResourcePoolManager<AudioConverterRenderClient,RendererConfiguration *>::popResourceFromStack(v26, 1);
      v8 = v31;
      if ((v32 & 1) == 0 || (AudioConverterRenderClient::setConfiguration(v31, v24 + 24), !v8))
      {
        v25 = 0;
        if (!v26)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      v24 = *(a1 + 88);
      v25 = v8;
    }

    v8 = AudioConverterRenderClient::enterRenderLoop(v25, *(a1 + 8), a2, a3, a5, v24 + 216, v24 + 312, v41, a6);
    if (!v26)
    {
LABEL_15:
      if (*(a1 + 28) == 1 && *v41)
      {
        v27 = *(a1 + 20);
        v28 = *(a1 + 24);
        *(a1 + 28) = 0;
        v29 = *(a1 + 16);
        kdebug_trace();
      }

      goto LABEL_18;
    }

LABEL_14:
    ACResourcePoolManager<AudioConverterRenderClient,RendererConfiguration *>::pushResourceToStack(v26, v25);
    goto LABEL_15;
  }

LABEL_18:
  atomic_store(0, v43);
  if (v39 == 1)
  {
    AT::ScopedTrace::~ScopedTrace(v33);
  }

  applesauce::raii::v1::detail::ScopeGuard<pooledRenderer::AudioConverterOOP::fillComplexBuffer(int (*)(OpaqueAudioConverter *,unsigned int *,AudioBufferList *,AudioStreamPacketDescription **,void *),void *,unsigned int *,AudioBufferList *,AudioStreamPacketDescription *,AudioStreamPacketDependencyDescription *,ConverterContext)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(v40);
  return v8;
}

void sub_18F8B7994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, unsigned int **a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t *a21)
{
  atomic_store(0, a21);
  if (a16)
  {
    AT::ScopedTrace::~ScopedTrace(&a11);
  }

  applesauce::raii::v1::detail::ScopeGuard<pooledRenderer::AudioConverterOOP::fillComplexBuffer(int (*)(OpaqueAudioConverter *,unsigned int *,AudioBufferList *,AudioStreamPacketDescription **,void *),void *,unsigned int *,AudioBufferList *,AudioStreamPacketDescription *,AudioStreamPacketDependencyDescription *,ConverterContext)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(&a17);
  _Unwind_Resume(a1);
}

unsigned int ***applesauce::raii::v1::detail::ScopeGuard<pooledRenderer::AudioConverterOOP::fillComplexBuffer(int (*)(OpaqueAudioConverter *,unsigned int *,AudioBufferList *,AudioStreamPacketDescription **,void *),void *,unsigned int *,AudioBufferList *,AudioStreamPacketDescription *,AudioStreamPacketDependencyDescription *,ConverterContext)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(unsigned int ***result)
{
  v1 = *((*result)[11] + 18);
  v2 = *(*result + 4);
  v3 = *(*result + 5);
  v4 = **result[1];
  return result;
}

uint64_t pooledRenderer::AudioConverterOOP::convertBuffer(pooledRenderer::AudioConverterOOP *this, unsigned int a2, const void *a3, unsigned int *a4, void *a5)
{
  v60 = a4;
  v9 = *(*(this + 11) + 144);
  v10 = *(this + 4);
  v11 = *(this + 5);
  v12 = *a4;
  v59[0] = this;
  v59[1] = &v60;
  v13 = atomic_load((*(this + 11) + 416));
  if ((v13 & 1) == 0)
  {
    v16 = 560164718;
    goto LABEL_27;
  }

  if ((*(this + 12) & 1) != 0 || (*(this + 13) & 1) == 0)
  {
    v52[0] = 0;
    v58 = 0;
  }

  else
  {
    v14 = *(this + 4);
    v15 = *(this + 5);
    v35 = 2756;
    v36 = v14;
    v37 = v15;
    v38 = 0;
    v39 = 0;
    kdebug_trace();
    v52[0] = 1;
    v53 = 2756;
    v54 = v14;
    v55 = v15;
    v56 = 0;
    v57 = 0;
    v34[0] = 0;
    v58 = 1;
    AT::ScopedTrace::~ScopedTrace(v34);
  }

  AudioConverterAPI::ScopedThreadChecker::ScopedThreadChecker(&v50, this + 32, this);
  v16 = v50;
  if (!v50)
  {
    v17 = *(this + 11);
    v18 = *(*(v17 + 256) + 56);
    v19 = *(*(v17 + 352) + 56);
    v20 = *v60;
    v45.mBuffers[0].mData = a5;
    v46 = 1;
    v47 = v18;
    v48 = a2;
    v49 = a3;
    *&v45.mNumberBuffers = 1;
    v45.mBuffers[0].mNumberChannels = v19;
    v45.mBuffers[0].mDataByteSize = v20;
    v43 = a2 / *(v17 + 296);
    v44[0] = &v46;
    v44[1] = &v43;
    v42 = *v60 / *(v17 + 392);
    AudioConverterClientBufferManager::AudioConverterClientBufferManager(v34, (v17 + 216));
    AudioConverterClientBufferManager::AudioConverterClientBufferManager(v31, (*(this + 11) + 312));
    v21 = *(this + 11);
    v22 = *(v21 + 168);
    if (v22)
    {
      v23 = 0;
    }

    else
    {
      v23 = *(v21 + 8);
      v24 = ACResourcePoolManager<AudioConverterRenderClient,RendererConfiguration *>::popResourceFromStack(v23, 1);
      v22 = v24;
      if ((v25 & 1) == 0)
      {
        v16 = v24;
        v22 = 0;
        goto LABEL_15;
      }

      AudioConverterRenderClient::setConfiguration(v24, v21 + 24);
      if (!v22)
      {
        v16 = 0;
        goto LABEL_15;
      }
    }

    v16 = AudioConverterRenderClient::enterRenderLoop(v22, *(this + 2), pooledRenderer::AudioConverterOOP::convertBuffer(unsigned int,void const*,unsigned int *,void *)::$_1::__invoke, v44, &v45, v34, v31, &v42, 0);
LABEL_15:
    if (v23)
    {
      ACResourcePoolManager<AudioConverterRenderClient,RendererConfiguration *>::pushResourceToStack(v23, v22);
    }

    v26 = *(*(this + 11) + 392) * v42;
    *v60 = v26;
    if (*(this + 28) == 1 && v26)
    {
      v27 = *(this + 5);
      v28 = *(this + 6);
      *(this + 28) = 0;
      v29 = *(this + 4);
      kdebug_trace();
    }

    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

    ExtendedAudioBufferList_Destroy(v32);
    if (v41)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    }

    ExtendedAudioBufferList_Destroy(v40);
  }

  atomic_store(0, v51);
  if (v58 == 1)
  {
    AT::ScopedTrace::~ScopedTrace(v52);
  }

LABEL_27:
  applesauce::raii::v1::detail::ScopeGuard<pooledRenderer::AudioConverterOOP::convertBuffer(unsigned int,void const*,unsigned int *,void *)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(v59);
  return v16;
}

void sub_18F8B7CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  AudioConverterClientBufferManager::~AudioConverterClientBufferManager(va);
  AudioConverterClientBufferManager::~AudioConverterClientBufferManager(va1);
  atomic_store(0, *(v3 - 144));
  if (*(v3 - 96) == 1)
  {
    AT::ScopedTrace::~ScopedTrace((v3 - 136));
  }

  applesauce::raii::v1::detail::ScopeGuard<pooledRenderer::AudioConverterOOP::convertBuffer(unsigned int,void const*,unsigned int *,void *)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard((v3 - 88));
  _Unwind_Resume(a1);
}

unsigned int ***applesauce::raii::v1::detail::ScopeGuard<pooledRenderer::AudioConverterOOP::convertBuffer(unsigned int,void const*,unsigned int *,void *)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(unsigned int ***result)
{
  v1 = *((*result)[11] + 18);
  v2 = *(*result + 4);
  v3 = *(*result + 5);
  v4 = **result[1];
  return result;
}

uint64_t pooledRenderer::AudioConverterOOP::convertBuffer(unsigned int,void const*,unsigned int *,void *)::$_1::__invoke(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4, unsigned int **a5)
{
  v5 = *a5;
  *a2 = *a5[1];
  v6 = *v5;
  *a3 = v6;
  if (v6)
  {
    v7 = (v5 + 4);
    v8 = a3 + 4;
    do
    {
      *(v8 - 1) = *(v7 - 1);
      v9 = *v7;
      v7 += 2;
      *v8 = v9;
      v8 += 2;
      --v6;
    }

    while (v6);
  }

  return 0;
}

uint64_t ACResourcePoolManager<AudioConverterXPC_Client,swix::connection_config>::popResourceFromStack(uint64_t a1, int a2)
{
  v2 = atomic_load((a1 + 64));
  if (a2 && (v2 & 1) == 0)
  {
    return 560164718;
  }

  v3 = 1919251263;
  if (caulk::semaphore::timed_wait((a1 + 48), 1.0))
  {
    for (i = 500; ; --i)
    {
      if (!i)
      {
        return 1919251263;
      }

      _X2 = 0;
      _X3 = 0;
      __asm { CASPAL          X2, X3, X2, X3, [X9] }

      if (_X2)
      {
        break;
      }

LABEL_11:
      ;
    }

    v3 = _X2;
    v12 = _X2;
    while (1)
    {
      _X6 = atomic_load((v3 + 16));
      _X3 = 0;
      __asm { CASPAL          X2, X3, X6, X7, [X9] }

      if (_X2 == v12)
      {
        break;
      }

      v3 = _X2;
      v12 = _X2;
      if (!_X2)
      {
        goto LABEL_11;
      }
    }
  }

  return v3;
}

uint64_t ACResourcePoolManager<AudioConverterXPC_Client,swix::connection_config>::pushResourceToStack(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    _X2 = a2;
    _X6 = 0;
    _X7 = 0;
    __asm { CASPAL          X6, X7, X6, X7, [X8] }

    atomic_store(_X6, (a2 + 16));
    _X5 = 0;
    __asm { CASPAL          X4, X5, X2, X3, [X8] }

    if (_X4 != _X6)
    {
      do
      {
        atomic_store(_X4, (a2 + 16));
        _X7 = 0;
        __asm { CASPAL          X6, X7, X2, X3, [X8] }

        v14 = _X6 ^ _X4;
        _X4 = _X6;
      }

      while (v14);
    }

    return caulk::semaphore::signal((result + 48));
  }

  return result;
}

uint64_t AudioConverterPropertyClient::AudioConverterPropertyClient(uint64_t a1, uint64_t a2)
{
  v3 = audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,unilaterally_billed_shared_memory>::ipc_node_base(a1, a2);
  atomic_store(1u, *(v3 + 8));
  atomic_store(0, *(v3 + 16));
  *(v3 + 56) = 0;
  *(v3 + 120) = 0;
  *(v3 + 128) = 50;
  v4 = *(v3 + 24);
  AllocSize = IOSurfaceGetAllocSize(*v3);
  if (*(a1 + 120) == 1)
  {
    *(a1 + 120) = 0;
  }

  *(a1 + 80) = 0;
  *(a1 + 56) = v4;
  *(a1 + 64) = AllocSize - 16;
  *(a1 + 88) = 0;
  *(a1 + 96) = v4;
  *(v4 + 16) = AllocSize - 384;
  *(a1 + 72) = v4 + 16;
  *(v4 + 24) = 368;
  *(a1 + 104) = v4 + 32;
  *(a1 + 112) = v4 + 368;
  *(a1 + 120) = 1;
  *(a1 + 80) = *(v4 + 16);
  *(a1 + 72) = a1 + 80;
  audioipc::eventlink_primitive::activate((a1 + 40));
  return a1;
}

uint64_t AudioConverterPropertyClient::getSpeechCodecBundleData(uint64_t a1, const void **__src)
{
  v39 = *MEMORY[0x1E69E9840];
  if (**(a1 + 72) < *(__src + 2))
  {
    v4 = 1768846202;
    v5 = *(a1 + 128);
    v6 = __OFSUB__(v5, 1);
    v7 = v5 - 1;
    if (v7 < 0 == v6)
    {
      *(a1 + 128) = v7;
      if (gAudioConverterDeferredLogOnce != -1)
      {
        dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
      }

      v8 = *gAudioConverterLog;
      if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
      {
        v9 = *(__src + 2);
        v10 = **(a1 + 72);
        v31 = 136315906;
        v32 = "AudioConverterPropertyClient.h";
        v33 = 1024;
        v34 = 50;
        v35 = 1024;
        v36 = v9;
        v37 = 1024;
        v38 = v10;
        _os_log_impl(&dword_18F5DF000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d bundle data too large to send over messenger (%d bytes > %d); falling back to XPC", &v31, 0x1Eu);
      }
    }

    goto LABEL_22;
  }

  v12 = *(a1 + 104);
  v11 = *(a1 + 112);
  v13 = memcpy(v12, __src, 0x150uLL);
  *v12 = v11;
  v14 = *(__src + 2);
  if (v14)
  {
    v13 = memcpy(v11, *__src, v14);
  }

  v15 = *(a1 + 96);
  *(v15 + 8) = audioipc::current_render_context(v13);
  v16 = *(a1 + 96);
  can_send = audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,unilaterally_billed_shared_memory>::can_send(a1, v17);
  v19 = can_send;
  v20 = HIDWORD(can_send);
  if (can_send & 0x100000000) != 0 && (can_send)
  {
    *v16 = 25601;
    v21 = audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,unilaterally_billed_shared_memory>::signal_wait_with_timeout(a1);
    v19 = v21;
    v20 = HIDWORD(v21);
  }

  if (!v20)
  {
    v4 = 560164718;
    v23 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v23 + 88, 16);
    if (!message)
    {
      goto LABEL_22;
    }

    v25 = message;
    v26 = _os_log_pack_fill();
    *v26 = 67109120;
    v26[1] = v19;
LABEL_21:
    caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v25);
    goto LABEL_22;
  }

  v4 = 561277293;
  if ((v19 & 1) == 0)
  {
    v27 = _os_log_pack_size();
    v28 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v27 + 88, 16);
    if (!v28)
    {
      goto LABEL_22;
    }

    v25 = v28;
    *_os_log_pack_fill() = 0;
    goto LABEL_21;
  }

  v22 = *(v16 + 1);
  if (v22 != 100)
  {
    if (v22 == 101)
    {
      memcpy(__src, v12, 0x150uLL);
      v4 = *(v16 + 4);
    }

    else
    {
      v4 = 4294967246;
    }
  }

LABEL_22:
  v29 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t pooledRenderer::AudioConverterOOP::getPropertyInfo(pooledRenderer::AudioConverterOOP *this, uint64_t a2, unsigned int *a3, unsigned __int8 *a4)
{
  PropertyInfo = a2;
  v7 = this;
  if (*(this + 12))
  {
    v8 = 0;
  }

  else
  {
    v26 = 2755;
    v27 = a2;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    kdebug_trace();
    v19 = 2755;
    v20 = PropertyInfo;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v25[0] = 0;
    AT::ScopedTrace::~ScopedTrace(v25);
    v8 = 1;
  }

  v18[0] = v8;
  v24 = v8;
  if (PropertyInfo == 1970103906)
  {
    v9 = 0;
    *a3 = 4;
    *a4 = 1;
    goto LABEL_26;
  }

  if (PropertyInfo == 1885955104 && PlatformUtilities::IsInternalBuild(this))
  {
    v9 = 0;
    *a3 = 4;
    *a4 = 0;
    goto LABEL_26;
  }

  v10 = atomic_load((*(v7 + 11) + 416));
  if ((v10 & 1) == 0)
  {
    v9 = 560164718;
    goto LABEL_26;
  }

  v11 = *(*(v7 + 11) + 16);
  v12 = ACResourcePoolManager<AudioConverterXPC_Client,swix::connection_config>::popResourceFromStack(v11, 1);
  v9 = v12;
  if ((v13 & 1) == 0 || !v12)
  {
    v15 = 0;
    v16 = 0;
    if (!v11)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  PropertyInfo = AudioConverterXPC_Client::getPropertyInfo(v12, *(*(v7 + 11) + 184), PropertyInfo);
  LOBYTE(v7) = v14;
  v15 = 1;
  v16 = v9;
  v9 = 0;
  if (v11)
  {
LABEL_16:
    ACResourcePoolManager<AudioConverterXPC_Client,swix::connection_config>::pushResourceToStack(v11, v16);
  }

LABEL_17:
  if (v15)
  {
    if (!(v7 & 1 | (PropertyInfo == 0)))
    {
      goto LABEL_25;
    }

    if (a3)
    {
      *a3 = PropertyInfo;
    }

    if (a4)
    {
      *a4 = BYTE4(PropertyInfo);
    }

    if (v7)
    {
      v9 = 0;
    }

    else
    {
LABEL_25:
      v9 = PropertyInfo;
    }
  }

LABEL_26:
  if (v24 == 1)
  {
    AT::ScopedTrace::~ScopedTrace(v18);
  }

  return v9;
}

void sub_18F8B84D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a15 == 1)
  {
    AT::ScopedTrace::~ScopedTrace(&a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<pooledRenderer::AudioConverterOOP::Impl::~Impl()::{lambda(swix::ipc_endpoint const&,applesauce::xpc::object const&)#1},std::allocator<pooledRenderer::AudioConverterOOP::Impl::~Impl()::{lambda(swix::ipc_endpoint const&,applesauce::xpc::object const&)#1}>,void ()(swix::ipc_endpoint&,applesauce::xpc::object const&)>::operator()(uint64_t a1, uint64_t a2, swix **a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  atomic_store(0, (v4 + 416));
  if (gAudioConverterDeferredLogOnce != -1)
  {
    dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
  }

  v5 = *gAudioConverterLog;
  if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
  {
    swix::xpc_object_description(__p, *a3, v6);
    if (v10 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 136315906;
    v12 = "AudioConverterOOP.cpp";
    v13 = 1024;
    v14 = 302;
    v15 = 2048;
    v16 = v4;
    v17 = 2080;
    v18 = v7;
    _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioConverterOOP -> %p: Converter connection was closed, status: %s.", buf, 0x26u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t ACResourcePoolManager<AudioConverterRenderClient,RendererConfiguration *>::constructResource(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (gAudioConverterDeferredLogOnce != -1)
  {
    dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
  }

  v2 = *gAudioConverterLog;
  if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 22) + 1;
    v5 = *(a1 + 20);
    v16 = 136316674;
    v17 = "ACResourcePoolManager.h";
    v18 = 1024;
    v19 = 35;
    v20 = 2048;
    v21 = a1;
    v22 = 2080;
    v23 = v3;
    v24 = 1024;
    *v25 = v4;
    *&v25[4] = 2080;
    *&v25[6] = v3;
    v26 = 1024;
    v27 = v5;
    _os_log_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioConverter Resource Manager %p -> New %s requested. Current number of converters: %u, number of %ss: %u.", &v16, 0x3Cu);
  }

  os_unfair_lock_lock((a1 + 16));
  v6 = atomic_load((a1 + 64));
  if ((v6 & 1) == 0)
  {
    *(a1 + 22) = 0;
    if (*(a1 + 20) >= 1)
    {
      v7 = 500;
      do
      {
        v8 = ACResourcePoolManager<AudioConverterRenderClient,RendererConfiguration *>::popResourceFromStack(a1, 0);
        if (v9)
        {
          --*(a1 + 20);
          if (v8)
          {
            AudioConverterRenderClient::~AudioConverterRenderClient(v8);
            MEMORY[0x193ADF220]();
          }
        }

        else
        {
          --v7;
        }
      }

      while (*(a1 + 20) >= 1 && v7 != 0);
      if (!v7)
      {
        if (gAudioConverterDeferredLogOnce != -1)
        {
          dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
        }

        v11 = *gAudioConverterLog;
        if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_FAULT))
        {
          v12 = *(a1 + 8);
          v13 = *(a1 + 20);
          v16 = 136316418;
          v17 = "ACResourcePoolManager.h";
          v18 = 1024;
          v19 = 124;
          v20 = 2048;
          v21 = a1;
          v22 = 2080;
          v23 = v12;
          v24 = 2080;
          *v25 = v12;
          *&v25[8] = 1024;
          *&v25[10] = v13;
          _os_log_impl(&dword_18F5DF000, v11, OS_LOG_TYPE_FAULT, "%25s:%-5d AudioConverter Resource Manager %p -> Timed out repeatedly trying to flush all %ss. Remaining %s count: %u.", &v16, 0x36u);
        }
      }
    }

    atomic_store(1u, (a1 + 64));
  }

  if (*a1 > *(a1 + 20))
  {
    operator new();
  }

  ++*(a1 + 22);
  os_unfair_lock_unlock((a1 + 16));
  v14 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_18F8B8990(_Unwind_Exception *a1)
{
  MEMORY[0x193ADF220](v2, 0x10F2C4080A5EC24);
  os_unfair_lock_unlock(v1 + 4);
  _Unwind_Resume(a1);
}

uint64_t AudioConverterRenderClient::AudioConverterRenderClient(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  v4 = ACRendererSharedMemory::requiredSharedMemorySize(a2);
  audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,unilaterally_billed_shared_memory>::ipc_node_base(a1 + 8, v4);
  atomic_store(1u, *(a1 + 16));
  atomic_store(0, *(a1 + 24));
  *(a1 + 64) = 0;
  *(a1 + 360) = 0;
  *(a1 + 408) = 0;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  v5 = *(a1 + 32);
  AllocSize = IOSurfaceGetAllocSize(*(a1 + 8));
  *buf = v5;
  *&buf[8] = AllocSize - 16;
  std::optional<ACRendererSharedMemory>::emplace[abi:ne200100]<std::span<unsigned char,18446744073709551615ul>,void>(a1 + 64, buf);
  v7 = AudioConverterRenderClient::setConfiguration(a1, a2);
  if (v7)
  {
    v12 = v7;
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v10 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AudioConverterRenderClient.h";
      *&buf[12] = 1024;
      *&buf[14] = 57;
      _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Error constructing shared memory, throwing kAudioConverterErr_UnspecifiedError", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(4uLL);
    *exception = v12;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  audioipc::eventlink_primitive::activate((a1 + 48));
  if ((atomic_load_explicit(_ZGVZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm34EEEtlA34_cLc67ELc111ELc114ELc101ELc65ELc117ELc100ELc105ELc111ELc95ELc67ELc97ELc112ELc116ELc117ELc114ELc101ELc65ELc67ELc83ELc101ELc114ELc118ELc105ELc99ELc101ELc95ELc79ELc117ELc116ELc112ELc117ELc116EEEEEbvE5input, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(_ZGVZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm34EEEtlA34_cLc67ELc111ELc114ELc101ELc65ELc117ELc100ELc105ELc111ELc95ELc67ELc97ELc112ELc116ELc117ELc114ELc101ELc65ELc67ELc83ELc101ELc114ELc118ELc105ELc99ELc101ELc95ELc79ELc117ELc116ELc112ELc117ELc116EEEEEbvE5input))
  {
    _ZZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm34EEEtlA34_cLc67ELc111ELc114ELc101ELc65ELc117ELc100ELc105ELc111ELc95ELc67ELc97ELc112ELc116ELc117ELc114ELc101ELc65ELc67ELc83ELc101ELc114ELc118ELc105ELc99ELc101ELc95ELc79ELc117ELc116ELc112ELc117ELc116EEEEEbvE5input = checkEnvVar("CoreAudio_CaptureACService_Output");
    __cxa_guard_release(_ZGVZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm34EEEtlA34_cLc67ELc111ELc114ELc101ELc65ELc117ELc100ELc105ELc111ELc95ELc67ELc97ELc112ELc116ELc117ELc114ELc101ELc65ELc67ELc83ELc101ELc114ELc118ELc105ELc99ELc101ELc95ELc79ELc117ELc116ELc112ELc117ELc116EEEEEbvE5input);
  }

  if (_ZZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm34EEEtlA34_cLc67ELc111ELc114ELc101ELc65ELc117ELc100ELc105ELc111ELc95ELc67ELc97ELc112ELc116ELc117ELc114ELc101ELc65ELc67ELc83ELc101ELc114ELc118ELc105ELc99ELc101ELc95ELc79ELc117ELc116ELc112ELc117ELc116EEEEEbvE5input == 1)
  {
    acv2::AudioConverterBase::createCapturer(&__p, "-AudioConverterServiceOut", a2 + 136, a2 + 56, *(a2 + 112));
    if (v16 < 0)
    {
      operator delete(__p);
    }
  }

  if ((atomic_load_explicit(_ZGVZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm33EEEtlA33_cLc67ELc111ELc114ELc101ELc65ELc117ELc100ELc105ELc111ELc95ELc67ELc97ELc112ELc116ELc117ELc114ELc101ELc65ELc67ELc83ELc101ELc114ELc118ELc105ELc99ELc101ELc95ELc73ELc110ELc112ELc117ELc116EEEEEbvE5input, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(_ZGVZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm33EEEtlA33_cLc67ELc111ELc114ELc101ELc65ELc117ELc100ELc105ELc111ELc95ELc67ELc97ELc112ELc116ELc117ELc114ELc101ELc65ELc67ELc83ELc101ELc114ELc118ELc105ELc99ELc101ELc95ELc73ELc110ELc112ELc117ELc116EEEEEbvE5input))
  {
    _ZZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm33EEEtlA33_cLc67ELc111ELc114ELc101ELc65ELc117ELc100ELc105ELc111ELc95ELc67ELc97ELc112ELc116ELc117ELc114ELc101ELc65ELc67ELc83ELc101ELc114ELc118ELc105ELc99ELc101ELc95ELc73ELc110ELc112ELc117ELc116EEEEEbvE5input = checkEnvVar("CoreAudio_CaptureACService_Input");
    __cxa_guard_release(_ZGVZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm33EEEtlA33_cLc67ELc111ELc114ELc101ELc65ELc117ELc100ELc105ELc111ELc95ELc67ELc97ELc112ELc116ELc117ELc114ELc101ELc65ELc67ELc83ELc101ELc114ELc118ELc105ELc99ELc101ELc95ELc73ELc110ELc112ELc117ELc116EEEEEbvE5input);
  }

  if (_ZZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm33EEEtlA33_cLc67ELc111ELc114ELc101ELc65ELc117ELc100ELc105ELc111ELc95ELc67ELc97ELc112ELc116ELc117ELc114ELc101ELc65ELc67ELc83ELc101ELc114ELc118ELc105ELc99ELc101ELc95ELc73ELc110ELc112ELc117ELc116EEEEEbvE5input == 1)
  {
    acv2::AudioConverterBase::createCapturer(&v13, "-AudioConverterServiceIn", a2 + 128, a2, *(a2 + 112));
    if (v14 < 0)
    {
      operator delete(v13);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_18F8B8C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  __cxa_guard_abort(_ZGVZ16isEnvVariableSetIXtlN9envHelper13StringLiteralILm33EEEtlA33_cLc67ELc111ELc114ELc101ELc65ELc117ELc100ELc105ELc111ELc95ELc67ELc97ELc112ELc116ELc117ELc114ELc101ELc65ELc67ELc83ELc101ELc114ELc118ELc105ELc99ELc101ELc95ELc73ELc110ELc112ELc117ELc116EEEEEbvE5input);
  std::unique_ptr<AudioConverterCapturer>::reset[abi:ne200100]((v18 + 344));
  std::unique_ptr<AudioConverterCapturer>::reset[abi:ne200100]((v18 + 336));
  if (*(v17 + 360) == 1)
  {
    a17 = (v17 + 280);
    std::vector<ACRendererSharedMemory::Element>::__destroy_vector::operator()[abi:ne200100](&a17);
  }

  audioipc::rt_sender<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,unilaterally_billed_shared_memory>::~rt_sender(v17 + 8);
  _Unwind_Resume(a1);
}

void std::__function::__func<pooledRenderer::AudioConverterOOP::Impl::Impl(applesauce::xpc::connection,AudioStreamBasicDescription const*,AudioStreamBasicDescription const*,BOOL)::{lambda(applesauce::xpc::dict const&)#1},std::allocator<pooledRenderer::AudioConverterOOP::Impl::Impl(applesauce::xpc::connection,AudioStreamBasicDescription const*,AudioStreamBasicDescription const*,BOOL)::{lambda(applesauce::xpc::dict const&)#1}>,void ()(applesauce::xpc::dict const&)>::operator()(uint64_t a1, xpc_object_t *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  if (gAudioConverterDeferredLogOnce != -1)
  {
    dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
  }

  v4 = *gAudioConverterLog;
  if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = atomic_load((v3 + 416));
    *v13 = 136315650;
    *&v13[4] = "AudioConverterOOP.cpp";
    v14 = 1024;
    v15 = 246;
    v16 = 1024;
    v17 = v5 & 1;
    _os_log_impl(&dword_18F5DF000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioConverterOOP -> Received a workgroup update notification. Notifying the service to synchronize workgroups. ValidConverter? %u", v13, 0x18u);
  }

  v6 = atomic_load((v3 + 416));
  if (v6)
  {
    v7 = *(v3 + 16);
    v8 = ACResourcePoolManager<AudioConverterXPC_Client,swix::connection_config>::popResourceFromStack(v7, 1);
    if (v9)
    {
      v10 = v8;
      if (v8)
      {
        v11 = *a2;
        *v13 = v11;
        if (v11)
        {
          xpc_retain(v11);
        }

        else
        {
          v11 = xpc_null_create();
          *v13 = v11;
        }

        AudioConverterXPC_Client::synchronizeWorkgroups(v10, v13);
        xpc_release(v11);
      }
    }

    else
    {
      v10 = 0;
    }

    if (v7)
    {
      ACResourcePoolManager<AudioConverterXPC_Client,swix::connection_config>::pushResourceToStack(v7, v10);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_18F8B8E54(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<pooledRenderer::AudioConverterOOP::Impl::Impl(applesauce::xpc::connection,AudioStreamBasicDescription const*,AudioStreamBasicDescription const*,BOOL)::{lambda(applesauce::xpc::dict const&)#1},std::allocator<pooledRenderer::AudioConverterOOP::Impl::Impl(applesauce::xpc::connection,AudioStreamBasicDescription const*,AudioStreamBasicDescription const*,BOOL)::{lambda(applesauce::xpc::dict const&)#1}>,void ()(applesauce::xpc::dict const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F033CDB8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<pooledRenderer::AudioConverterOOP::Impl::Impl(applesauce::xpc::connection,AudioStreamBasicDescription const*,AudioStreamBasicDescription const*,BOOL)::{lambda(swix::ipc_endpoint const&,applesauce::xpc::object const&)#1},std::allocator<pooledRenderer::AudioConverterOOP::Impl::Impl(applesauce::xpc::connection,AudioStreamBasicDescription const*,AudioStreamBasicDescription const*,BOOL)::{lambda(swix::ipc_endpoint const&,applesauce::xpc::object const&)#1}>,void ()(swix::ipc_endpoint&,applesauce::xpc::object const&)>::operator()(int a1, swix::connection *this, swix **a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (pooledRenderer::AudioConverterOOPGlobals::globalState(void)::once != -1)
  {
    dispatch_once(&pooledRenderer::AudioConverterOOPGlobals::globalState(void)::once, &__block_literal_global_24_13962);
  }

  v5 = pooledRenderer::AudioConverterOOPGlobals::globalState(void)::gAudioConverterOOPGlobals;
  swix::connection::audit_token(buf, this);
  pooledRenderer::AudioConverterOOPGlobals::executeErrorHandler(v5, buf);
  if (pooledRenderer::AudioConverterOOPGlobals::globalStateHardened(void)::once != -1)
  {
    dispatch_once(&pooledRenderer::AudioConverterOOPGlobals::globalStateHardened(void)::once, &__block_literal_global_13961);
  }

  v6 = pooledRenderer::AudioConverterOOPGlobals::globalStateHardened(void)::gHardenedAudioConverterOOPGlobals;
  swix::connection::audit_token(buf, this);
  pooledRenderer::AudioConverterOOPGlobals::executeErrorHandler(v6, buf);
  if (gAudioConverterDeferredLogOnce != -1)
  {
    dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
  }

  v7 = *gAudioConverterLog;
  if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
  {
    swix::xpc_object_description(__p, *a3, v8);
    if (v12 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    *buf = 136315650;
    v14 = "AudioConverterOOP.cpp";
    v15 = 1024;
    v16 = 231;
    v17 = 2080;
    v18 = v9;
    _os_log_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioConverterOOP -> Connection was invalidated with error %s.", buf, 0x1Cu);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void pooledRenderer::AudioConverterOOPGlobals::executeErrorHandler(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80) == 1)
  {
    v16 = v2;
    v17 = v3;
    if (*(a2 + 32) == 1)
    {
      v6 = *(a2 + 16);
      *v15.val = *a2;
      *&v15.val[4] = v6;
      v7 = audit_token_to_pid(&v15);
      v8 = *(a1 + 64);
      *v15.val = *(a1 + 48);
      *&v15.val[4] = v8;
      if (v7 == audit_token_to_pid(&v15))
      {
        v9 = *(a2 + 16);
        *v15.val = *a2;
        *&v15.val[4] = v9;
        v10 = audit_token_to_pidversion(&v15);
        v11 = *(a1 + 64);
        *v15.val = *(a1 + 48);
        *&v15.val[4] = v11;
        if (v10 == audit_token_to_pidversion(&v15))
        {
          if (*(a1 + 80) == 1)
          {
            *(a1 + 80) = 0;
          }

          atomic_store(0, (*(a1 + 8) + 64));
          atomic_store(0, (*a1 + 64));
          os_unfair_lock_lock((a1 + 16));
          v12 = *(a1 + 24);
          v13 = *(a1 + 32);
          while (v12 != v13)
          {
            v14 = *v12++;
            atomic_store(0, (*(v14 + 88) + 416));
          }

          os_unfair_lock_unlock((a1 + 16));
        }
      }
    }
  }
}

void ACResourceUnit<AudioConverterXPC_Client,swix::connection_config>::~ACResourceUnit(swix::ipc_interface *a1)
{
  swix::ipc_interface::~ipc_interface(a1);

  JUMPOUT(0x193ADF220);
}

void ___ZL16isPlatformBinaryv_block_invoke()
{
  v0 = SecTaskCreateFromSelf(0);
  if (v0)
  {
    v1 = v0;
    CodeSignStatus = SecTaskGetCodeSignStatus(v0);
    isPlatformBinary(void)::platformBinary = (CodeSignStatus & 0xC000001) == 67108865;
    if ((CodeSignStatus & 0xC000001) != 0x4000001)
    {
      v3 = CodeSignStatus;
      v4 = os_variant_allows_internal_security_policies();
      if ((v3 & 0x1C000000) == 0x14000000)
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }

      isPlatformBinary(void)::platformBinary = v5;
    }

    CFRelease(v1);
  }
}

void pooledRenderer::AudioConverterOOPGlobals::AudioConverterOOPGlobals(pooledRenderer::AudioConverterOOPGlobals *this)
{
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 80) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 48) = 0;
  std::thread::hardware_concurrency();
  std::thread::hardware_concurrency();
  operator new();
}

void sub_18F8B9504(_Unwind_Exception *a1)
{
  MEMORY[0x193ADF220](v2, 0x1050C40BFAC19B6);
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 32) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<std::vector<AudioStreamPacketDescription>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F033D0C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void newAudioConverterInProcessXPC(const AudioStreamBasicDescription *a1, const AudioStreamBasicDescription *a2, unsigned int a3, const AudioClassDescription *a4)
{
  {
    switchToPooledRendererFlow(void)::usePooledRenderersCodepath = _os_feature_enabled_impl();
  }

  if (switchToPooledRendererFlow(void)::usePooledRenderersCodepath == 1)
  {
    operator new();
  }

  operator new();
}

uint64_t AudioFormatProperty_FirstPlayableFormatFromListAndMagicCookie(RegistryAccess *a1, _DWORD *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 2);
  if (v2)
  {
    v4 = *a1;
    v16[0] = &unk_1F033CE90;
    v16[1] = a1;
    v17 = v16;
    if (v4 - 48 <= 0x2F && *(v2 + 8) == 1819304813)
    {
      v5 = 0;
    }

    else
    {
      RegistryAccess::instance(a1);
      v6 = 1718449215;
      v7 = qword_1ED746318;
      os_unfair_recursive_lock_lock_with_options();
      if (v4 < 0x30)
      {
LABEL_10:
        v13 = 0xFFFFFFFF00000000;
      }

      else
      {
        v8 = 0;
        v9 = v4 / 0x30;
        v10 = (v2 + 8);
        while (1)
        {
          v11 = *v10;
          v10 += 12;
          v12 = (*(*v7 + 16))(v7, v11, 1819304813, 0, 0);
          if (v12)
          {
            if (std::function<BOOL ()(IConverterFactory const*)>::operator()(v17, v12))
            {
              break;
            }
          }

          if (v9 == ++v8)
          {
            goto LABEL_10;
          }
        }

        v6 = (v8 >> 31) & 0x666D743F;
        if ((v8 & 0x80000000) != 0)
        {
          v13 = 0xFFFFFFFF00000000;
        }

        else
        {
          v13 = v8 << 32;
        }
      }

      os_unfair_recursive_lock_unlock();
      v5 = v13 | v6;
    }

    *a2 = HIDWORD(v5);
    std::__function::__value_func<BOOL ()(IConverterFactory const*)>::~__value_func[abi:ne200100](v16);
  }

  else
  {
    v5 = 4294967246;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

void sub_18F8B99F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(IConverterFactory const*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AudioFormatProperty_FirstPlayableFormatFromListAndMagicCookie(AudioFormatListWithMagicCookie const&,unsigned int,unsigned int &)::$_0,std::allocator<AudioFormatProperty_FirstPlayableFormatFromListAndMagicCookie(AudioFormatListWithMagicCookie const&,unsigned int,unsigned int &)::$_0>,BOOL ()(IConverterFactory const*)>::operator()(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  v5 = 0;
  if (result)
  {
    v4 = (*(*result + 40))(result, *(a1 + 8) + 4, *(*(a1 + 8) + 8), &v5);
    return (v5 == 0) & v4;
  }

  return result;
}

uint64_t std::__function::__func<AudioFormatProperty_FirstPlayableFormatFromListAndMagicCookie(AudioFormatListWithMagicCookie const&,unsigned int,unsigned int &)::$_0,std::allocator<AudioFormatProperty_FirstPlayableFormatFromListAndMagicCookie(AudioFormatListWithMagicCookie const&,unsigned int,unsigned int &)::$_0>,BOOL ()(IConverterFactory const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F033CE90;
  a2[1] = v2;
  return result;
}

uint64_t AudioFormatProperty_FormatList(const AudioFormatInfo *a1, unsigned int a2, unsigned int *a3, AudioFormatListItem *a4)
{
  if (*a3 < 0x30)
  {
    return 561211770;
  }

  v6 = a4;
  if (a1->mASBD.mFormatID == 1836069985)
  {
    v17 = 0;
    v8 = FormatFromESDS(a1->mMagicCookie, a1->mMagicCookieSize, &v17);
    if (v17)
    {
      v9 = v8;
      memset(&v16, 0, 40);
      mMagicCookie = a1->mMagicCookie;
      v16.mMagicCookie = mMagicCookie;
      mMagicCookieSize = a1->mMagicCookieSize;
      v16.mMagicCookieSize = mMagicCookieSize;
      if (v9)
      {
        v13 = 40;
        memset(v14, 0, sizeof(v14));
        v15 = 0;
        result = AudioFormatProperty_AudioFormatInfoFromESDS(mMagicCookie, mMagicCookieSize, &v13, v14);
        if (result)
        {
          return result;
        }

        v16.mASBD.mFormatID = DWORD2(v14[0]);
      }

      else
      {
        v16.mASBD.mFormatID = v17;
      }

      return AudioFormatProperty_FormatList(&v16, 0x38u, a3, v6);
    }

    else
    {
      return 560360820;
    }
  }

  else
  {
    result = FetchFormatListFromCodecs(GetFormatListFromCodec, a1, a2, a3, a4);
    if (!result)
    {
      if (v6)
      {
        if (*a3 >= 0x30)
        {
          v12 = *a3 / 0x30uLL;
          result = 0;
          do
          {
            if (v6->mASBD.mSampleRate == 0.0)
            {
              v6->mASBD.mSampleRate = a1->mASBD.mSampleRate;
            }

            if (!v6->mASBD.mChannelsPerFrame)
            {
              v6->mASBD.mChannelsPerFrame = a1->mASBD.mChannelsPerFrame;
            }

            ++v6;
            --v12;
          }

          while (v12);
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 2003329396;
      }
    }
  }

  return result;
}

uint64_t GetFormatListFromCodec(AudioCodec inCodec, const AudioFormatInfo *a2, unsigned int *a3, AudioFormatListItem *a4)
{
  outSize = 0;
  result = 561211770;
  if (a3)
  {
    result = AudioCodecGetPropertyInfo(inCodec, 0x6163666Cu, &outSize, 0);
    if (!result)
    {
      if (a4)
      {
        bzero(a4, *a3);
        result = 561211770;
        if (outSize <= *a3)
        {
          mMagicCookie = a2->mMagicCookie;
          LODWORD(a4->mASBD.mSampleRate) = a2->mMagicCookieSize;
          *&a4->mASBD.mFormatID = mMagicCookie;
          return AudioCodecGetProperty(inCodec, 0x6163666Cu, a3, a4);
        }
      }

      else
      {
        result = 0;
        *a3 = outSize;
      }
    }
  }

  return result;
}

uint64_t AudioFormatProperty_FormatIsEncrypted(uint64_t result, unsigned int *a2)
{
  v2 = 1;
  if (result > 1902211170)
  {
    if (result <= 2053202274)
    {
      if (result > 1902537826)
      {
        if (result == 1902537827 || result == 1902928227)
        {
          goto LABEL_34;
        }

        v3 = 1903522657;
      }

      else
      {
        if (result == 1902211171 || result == 1902324531)
        {
          goto LABEL_34;
        }

        v3 = 1902469939;
      }
    }

    else if (result > 2053319474)
    {
      if (result == 2053319475 || result == 2053464883)
      {
        goto LABEL_34;
      }

      v3 = 2053923171;
    }

    else
    {
      if ((result - 2053202739) <= 0x3D && ((1 << (result - 51)) & 0x2020000000000001) != 0)
      {
        goto LABEL_34;
      }

      v3 = 2053202275;
    }
  }

  else if (result <= 1885547314)
  {
    if (result <= 1885430578)
    {
      if (result == 1633771875)
      {
        goto LABEL_34;
      }

      v4 = 24931;
    }

    else
    {
      if ((result - 1885430579) <= 0x3D && ((1 << (result - 51)) & 0x2020000000000001) != 0)
      {
        goto LABEL_34;
      }

      v4 = 28771;
    }

    v3 = v4 | 0x70610000;
  }

  else if (result <= 1902207330)
  {
    if (result == 1885547315 || result == 1885692723)
    {
      goto LABEL_34;
    }

    v3 = 1886745441;
  }

  else
  {
    if ((result - 1902207795) <= 0x3D && ((1 << (result - 51)) & 0x2020000000000001) != 0)
    {
      goto LABEL_34;
    }

    v3 = 1902207331;
  }

  if (result != v3)
  {
    v2 = 0;
  }

LABEL_34:
  *a2 = v2;
  return result;
}

uint64_t GetCodecPropertyFromFormatInfo(const AudioFormatInfo *a1, unsigned int *a2, void *a3, AudioCodecPropertyID a4)
{
  inCodec = 0;
  PropertyInfo = OpenCodecComponent(a1->mASBD.mFormatID, &inCodec, 0x61646563u);
  if (!PropertyInfo)
  {
    v9 = inCodec;
    v12 = inCodec;
    PropertyInfo = AudioCodecInitialize(inCodec, 0, 0, a1->mMagicCookie, a1->mMagicCookieSize);
    if (!PropertyInfo)
    {
      outSize = 0;
      PropertyInfo = AudioCodecGetPropertyInfo(v9, a4, &outSize, 0);
      if (!PropertyInfo)
      {
        if (a3)
        {
          if (*a2 >= outSize)
          {
            PropertyInfo = AudioCodecGetProperty(v12, a4, a2, a3);
          }

          else
          {
            PropertyInfo = 561211770;
          }
        }

        else
        {
          PropertyInfo = 0;
          *a2 = outSize;
        }
      }
    }

    AudioCodecAutoDisposer::~AudioCodecAutoDisposer(&v12);
  }

  return PropertyInfo;
}

void sub_18F8BA078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AudioCodecAutoDisposer::~AudioCodecAutoDisposer(va);
  _Unwind_Resume(a1);
}

uint64_t AudioFormatProperty_VorbisModeInfoFromFormatInfo(const AudioFormatInfo *a1, _DWORD *a2, uint64_t a3)
{
  if (a1->mASBD.mFormatID != 1987015266)
  {
    return 1718449215;
  }

  v12 = v3;
  v13 = v4;
  if (!a3)
  {
    result = 0;
LABEL_9:
    *a2 = 24;
    return result;
  }

  if (*a2 < 0x18u)
  {
    return 561213539;
  }

  v11 = 0;
  mMagicCookie = a1->mMagicCookie;
  v10 = 0uLL;
  LODWORD(v10) = a1->mMagicCookieSize;
  v8 = 32;
  result = GetCodecPropertyFromFormatInfo(a1, &v8, &mMagicCookie, 0x766E666Fu);
  if (!result)
  {
    *a3 = *(&v10 + 4);
    *(a3 + 8) = HIDWORD(v10);
    *(a3 + 16) = v11;
    goto LABEL_9;
  }

  return result;
}

uint64_t AudioFormatProperty_CodecsParameterValueFromAudioFormat(uint64_t a1, CFStringRef *a2)
{
  PropertyInfo = 1718449215;
  if (*(a1 + 56) == 1836069990 && AudioFormatEncryptedFormatTranslator::DecryptFormatID(*(a1 + 8), &v16) == 1634754915)
  {
    v15 = 0;
    PropertyInfo = OpenCodecComponent(0x61706163u, &v15, 0x61646563u);
    if (!PropertyInfo)
    {
      v5 = v15;
      v14 = v15;
      AudioCodecInitialize(v15, 0, 0, *(a1 + 40), *(a1 + 48));
      outSize = 0;
      PropertyInfo = AudioCodecGetPropertyInfo(v5, 0x63706D63u, &outSize, 0);
      if (!PropertyInfo)
      {
        if (outSize <= 0x10)
        {
          v6 = 16;
        }

        else
        {
          v6 = outSize;
        }

        outSize = v6;
        std::vector<unsigned char>::vector[abi:ne200100](outPropertyData, v6);
        v7 = outPropertyData[0];
        *(outPropertyData[0] + 1) = *(a1 + 40);
        *v7 = *(a1 + 48);
        PropertyInfo = AudioCodecGetProperty(v14, 0x63706D63u, &outSize, v7);
        if (!PropertyInfo)
        {
          v8 = *MEMORY[0x1E695E480];
          v11 = 4;
          strcpy(__p, "apac");
          *a2 = CFStringCreateWithFormat(v8, 0, @"%s.%02u.%02u", __p, *outPropertyData[0], *(outPropertyData[0] + 1));
          if (v11 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (outPropertyData[0])
        {
          outPropertyData[1] = outPropertyData[0];
          operator delete(outPropertyData[0]);
        }
      }

      AudioCodecAutoDisposer::~AudioCodecAutoDisposer(&v14);
    }
  }

  return PropertyInfo;
}

void sub_18F8BA2F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  AudioCodecAutoDisposer::~AudioCodecAutoDisposer((v20 - 56));
  _Unwind_Resume(a1);
}

uint64_t AudioFormatProperty_CanDecodeAudioFormatIndicatedByCodecsParameterValue(uint64_t a1, _DWORD *a2, void *a3)
{
  CodecPropertyFromFormatInfo = 1886547824;
  if (*(a1 + 8) == 1836069990)
  {
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], *a1, @".");
    if (CFArrayGetCount(ArrayBySeparatingStrings) == 3)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0);
      if (CFStringCompare(ValueAtIndex, @"apac", 0) == kCFCompareEqualTo)
      {
        v8 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 1);
        __src[0] = CFStringGetIntValue(v8);
        v9 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 2);
        __src[1] = CFStringGetIntValue(v9);
        memset(&__n_4, 0, sizeof(__n_4));
        __n_4.mASBD.mFormatID = 1634754915;
        __n = 8;
        CodecPropertyFromFormatInfo = GetCodecPropertyFromFormatInfo(&__n_4, &__n, __src, 0x63706F6Bu);
        if (!CodecPropertyFromFormatInfo)
        {
          v10 = __n;
          *a2 = __n;
          memcpy(a3, __src, v10);
        }
      }
    }

    CFRelease(ArrayBySeparatingStrings);
  }

  return CodecPropertyFromFormatInfo;
}

uint64_t AudioFormatProperty_AudioFormatFromCodecsParameterValue(uint64_t a1, void *a2)
{
  if (*(a1 + 8) != 1836069990)
  {
    return 1886547824;
  }

  v3 = 1718449215;
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], *a1, @".");
  if (CFArrayGetCount(ArrayBySeparatingStrings))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0);
    if (CFStringCompare(ValueAtIndex, @"apac", 0) == kCFCompareEqualTo)
    {
      v3 = 0;
      *a2 = 1634754915;
    }
  }

  CFRelease(ArrayBySeparatingStrings);
  return v3;
}

uint64_t AudioFormatProperty_IsValidCodecConfiguration(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v3 = 561211770;
  if (a2 && a3)
  {
    *a3 = 0;
    v6 = *(a1 + 56);
    if (v6 == 1819304813)
    {
      v6 = *(a1 + 16);
    }

    inCodec = 0;
    v3 = OpenCodecComponent(v6, &inCodec, *a1);
    if (!v3)
    {
      v7 = inCodec;
      v9 = inCodec;
      v3 = AudioCodecInitialize(inCodec, (a1 + 48), (a1 + 8), 0, 0);
      if (!v3)
      {
        v3 = AudioCodecUninitialize(v7);
        if (!v3)
        {
          v3 = AudioCodecSetProperty(v9, 0x63737263u, 4u, (a1 + 88));
          if (!v3)
          {
            v3 = AudioCodecSetProperty(v9, 0x69636C20u, 20 * *(a1 + 100) + 32, (a1 + 92));
            if (!v3)
            {
              v3 = AudioCodecInitialize(v9, (a1 + 48), (a1 + 8), 0, 0);
              if (!v3)
              {
                *a3 = 1;
              }
            }
          }
        }
      }

      AudioCodecAutoDisposer::~AudioCodecAutoDisposer(&v9);
    }
  }

  return v3;
}

uint64_t TBitstreamReader<unsigned int>::FillCacheFrom(uint64_t result, unsigned int *a2)
{
  v2 = (*(result + 8) - a2) & ~((*(result + 8) - a2) >> 63);
  if (v2 <= 3)
  {
    v4 = *(result + 16);
    if (v2)
    {
      v5 = v2 & 3;
      do
      {
        *(result + 16) = v4 << 8;
        v6 = *a2;
        a2 = (a2 + 1);
        v3 = v6 | (v4 << 8);
        *(result + 16) = v3;
        v4 = v3;
        --v5;
      }

      while (v5);
    }

    else
    {
      v3 = *(result + 16);
    }

    v7 = v2 - 4;
    do
    {
      v3 = (v3 << 8) | 0xFF;
    }

    while (!__CFADD__(v7++, 1));
  }

  else
  {
    v3 = bswap32(*a2);
  }

  *(result + 16) = v3;
  return result;
}

uint64_t TBitstreamReader<unsigned int>::GetBit(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = v2 >> 31;
  v4 = *(a1 + 20) - 1;
  *(a1 + 20) = v4;
  if (v4 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a1, *a1);
    *a1 += 4;
    v7 = *(a1 + 16);
    v6 = *(a1 + 20);
    v3 |= v7 >> v6;
    *(a1 + 20) = v6 + 32;
    if (v6 == -32)
    {
      v5 = 0;
    }

    else
    {
      v5 = v7 << -v6;
    }
  }

  else
  {
    v5 = 2 * v2;
  }

  *(a1 + 16) = v5;
  return v3;
}

uint64_t TBitstreamReader<unsigned int>::PutBack(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = *(result + 20) + a2;
    v4 = *result - ((v3 >> 3) & 0x1FFFFFFC);
    *result = v4;
    v5 = v3 & 0x1F;
    *(result + 20) = v5;
    if (v5)
    {
      result = TBitstreamReader<unsigned int>::FillCacheFrom(result, (v4 - 4));
      *(v2 + 16) <<= -*(v2 + 20);
    }

    else
    {
      *(result + 16) = 0;
    }
  }

  return result;
}

uint64_t TBitstreamReader<unsigned int>::SkipBits(uint64_t result, int a2)
{
  v2 = result;
  v3 = *(result + 20);
  v4 = a2 - v3;
  if (a2 > v3)
  {
    *(result + 16) = 0;
    v3 = 0;
    if (v4 >= 0x20)
    {
      *result += (v4 >> 3) & 0x1FFFFFFC;
      a2 = v4 & 0x1F;
    }

    else
    {
      a2 = v4;
    }
  }

  if ((a2 - 33) >= 0xFFFFFFE0)
  {
    v5 = *(result + 16);
    v6 = v3 - a2;
    *(result + 20) = v6;
    if (v6 < 0)
    {
      result = TBitstreamReader<unsigned int>::FillCacheFrom(result, *result);
      v8 = *(v2 + 20);
      *v2 += 4;
      *(v2 + 20) = v8 + 32;
      if (v8 == -32)
      {
        v7 = 0;
      }

      else
      {
        v7 = *(v2 + 16) << -v8;
      }
    }

    else
    {
      v7 = v5 << a2;
    }

    *(v2 + 16) = v7;
  }

  return result;
}

uint64_t Ogg::PagePacketInfo::Deserialize(Ogg::PagePacketInfo *this, unint64_t a2, int a3)
{
  *this = a3;
  *(this + 4) = 0;
  *(this + 129) = 0;
  if (~a3 < a2)
  {
    return 4294967293;
  }

  v4 = 0;
  if (a3)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *a2++;
      v5 += v7;
      if (v7 != 255)
      {
        *(this + v6++ + 3) = v5;
        v4 = *(this + 258) + v5;
        *(this + 258) = v4;
        v5 = 0;
      }

      --a3;
    }

    while (a3);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v3 = 0;
  *(this + 259) = v5;
  *(this + 1) = v4 + v5;
  *(this + 2) = v6;
  return v3;
}

uint64_t Ogg::PagePacketInfo::operator[](uint64_t a1, unsigned int a2)
{
  if (*(a1 + 8) <= a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -1;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  return *(a1 + 4 * a2 + 12);
}

void Ogg::File::SetVorbisComment(const void **this, VorbisComment *a2)
{
  VorbisComment::operator=((this + 14), a2);
  if (!this[19])
  {
    VorbisComment::GetAlbumArtwork(&v4, this[18]);
    v3 = this[19];
    this[19] = v4;
    if (v3)
    {
      CFRelease(v3);
    }
  }
}

void VorbisComment::~VorbisComment(VorbisComment *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = (this + 8);
  std::vector<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*this)
  {
    CFRelease(*this);
  }
}

uint64_t VorbisComment::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    CFRetain(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (a1 != a2)
  {
    v6 = *(a1 + 8);
    v8 = *(a2 + 8);
    v7 = *(a2 + 16);
    v9 = v7 - v8;
    if (*(a1 + 24) - v6 < v7 - v8)
    {
      v10 = v9 >> 4;
      std::vector<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>::__vdeallocate((a1 + 8));
      if (!(v10 >> 60))
      {
        v11 = *(a1 + 24) - *(a1 + 8);
        v12 = v11 >> 3;
        if (v11 >> 3 <= v10)
        {
          v12 = v10;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF0)
        {
          v13 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        if (!(v13 >> 60))
        {
          std::allocator<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>::allocate_at_least[abi:ne200100](v13);
        }
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v14 = *(a1 + 16) - v6;
    if (v14 >= v9)
    {
      std::__copy_impl::operator()[abi:ne200100]<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef> *,std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef> *,std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef> *>(*(a2 + 8), *(a2 + 16), v6);
      v17 = v16;
      for (i = *(a1 + 16); i != v17; std::allocator_traits<std::allocator<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>>::destroy[abi:ne200100]<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>,void,0>(i))
      {
        i -= 16;
      }

      *(a1 + 16) = v17;
    }

    else
    {
      v15 = std::__copy_impl::operator()[abi:ne200100]<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef> *,std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef> *,std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef> *>(*(a2 + 8), v8 + v14, v6);
      *(a1 + 16) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>,std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>*,std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>*,std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>*>(a1 + 8, v15, v7, *(a1 + 16));
    }
  }

  v19 = *(a1 + 32);
  v20 = *(a2 + 32);
  *(a1 + 32) = v20;
  if (v20)
  {
    CFRetain(v20);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return a1;
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef> *,std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef> *,std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef> *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v6 = *a3;
      v7 = *v4;
      *a3 = *v4;
      if (v7)
      {
        CFRetain(v7);
      }

      if (v6)
      {
        CFRelease(v6);
      }

      v8 = *(a3 + 8);
      v9 = *(v4 + 8);
      *(a3 + 8) = v9;
      if (v9)
      {
        CFRetain(v9);
      }

      if (v8)
      {
        CFRelease(v8);
      }

      v4 += 16;
      a3 += 16;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>,std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>*,std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>*,std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>*>(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3, void *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      if (*v6)
      {
        CFRetain(*v6);
      }

      *a4 = v7;
      v8 = v6[1];
      if (v8)
      {
        CFRetain(v6[1]);
      }

      a4[1] = v8;
      v6 += 2;
      a4 += 2;
    }

    while (v6 != a3);
  }

  return a4;
}

void Ogg::File::ParseFLACHeaderPacket(Ogg::File *this, const unsigned __int8 *a2, unsigned int a3, BOOL *a4)
{
  if (a3 >= 4)
  {
    v4 = bswap32(*a2);
    *a4 = v4 < 0;
    if ((v4 & 0x7D000000) == 0x4000000)
    {
      v5 = v4 & 0xFFFFFF;
      if ((v4 & 0xFFFFFFu) <= a3 - 4)
      {
        operator new();
      }
    }
  }
}

void sub_18F8BAE40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  VorbisComment::~VorbisComment(va);
  _Unwind_Resume(a1);
}

uint64_t Ogg::File::ParseHeaderPackets(Ogg::File *this, unsigned int a2, unint64_t a3, const unsigned __int8 *a4, uint64_t a5, const AudioStreamPacketDescription *a6, unsigned int *a7)
{
  v71 = *MEMORY[0x1E69E9840];
  v60 = 0;
  if (a2)
  {
    v8 = a4;
    v11 = 0;
    v58 = a2;
    v55 = a4 + 18;
    while (1)
    {
      v12 = (a5 + 16 * v11);
      v13 = *v12;
      v14 = &v8[*v12];
      v15 = *(v12 + 3);
      if (a3 != 2)
      {
        break;
      }

      if (*(this + 2) != 1987015266)
      {
        goto LABEL_42;
      }

      if (*(this + 40) != 2)
      {
        goto LABEL_109;
      }

      if (v15 < 7 || *v14 != 5 || strncmp(v14 + 1, "vorbis", 6uLL))
      {
        v18 = 0;
        LODWORD(v7) = 0;
        *(this + 40) = 3;
        goto LABEL_110;
      }

      std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this + 168, *(this + 22), v14, &v14[v15], v15);
      v33 = 0;
      v34 = *(this + 4);
      *(this + 4) = *(this + 168);
      *(this + 168) = v34;
      v35 = *(this + 10);
      v7 = *(this + 23);
      *(this + 10) = v7;
      *(this + 23) = v35;
      *(this + 40) = 0;
LABEL_73:
      if (*(this + 224))
      {
        goto LABEL_101;
      }

      if (!*(this + 2))
      {
        goto LABEL_101;
      }

      v41 = *(this + 8);
      v7 = *(this + 9);
      if (v7 == v41)
      {
        goto LABEL_101;
      }

      inSpecifier.mMagicCookie = *(this + 8);
      *&inSpecifier.mMagicCookieSize = 0;
      v42 = *(this + 1);
      *&inSpecifier.mASBD.mSampleRate = *this;
      *&inSpecifier.mASBD.mBytesPerPacket = v42;
      v43 = *(this + 4);
      *&inSpecifier.mMagicCookieSize = (v7 - v41);
      *&inSpecifier.mASBD.mBitsPerChannel = v43;
      outPropertyDataSize[0] = 0;
      if (!AudioFormatGetPropertyInfo(0x666C7374u, 0x38u, &inSpecifier, outPropertyDataSize) && outPropertyDataSize[0] >= 0x30)
      {
        v44 = outPropertyDataSize[0] / 0x30;
        std::vector<AudioFormatListItem>::resize(this + 5, outPropertyDataSize[0] / 0x30);
        if (!AudioFormatProperty_FormatList(&inSpecifier, 0x38u, outPropertyDataSize, *(this + 5)))
        {
          *(this + 224) = 1;
          v45 = v44 - 1;
          v46 = *(this + 5) + 48 * v45;
          v7 = *(v46 + 32);
          v47 = *(v46 + 16);
          *this = *v46;
          *(this + 1) = v47;
          *(this + 4) = v7;
          LODWORD(v7) = *(this + 2);
          if (v7 == 1987015266)
          {
            LODWORD(v7) = *(this + 48) + 128;
LABEL_93:
            *(this + 48) = v7;
          }

          else if (v7 == 1869641075)
          {
            v7 = *(this + 8);
            if ((*(this + 9) - v7) >= 0x13)
            {
              LODWORD(v7) = *(v7 + 10);
              goto LABEL_93;
            }
          }

          if (*(v46 + 40) != -65536)
          {
            v49 = *(this + 11);
            v50 = *(this + 12) - v49;
            if (v50 > 0x1F)
            {
              if (v50 != 32)
              {
                *(this + 12) = v49 + 32;
              }
            }

            else
            {
              std::vector<unsigned char>::__append((this + 88), 32 - v50);
              v49 = *(this + 11);
            }

            bzero(v49, 0x20uLL);
            v7 = *(this + 11);
            *v7 = *(*(this + 5) + 48 * v45 + 40);
          }
        }
      }

      v8 = a4;
LABEL_101:
      ++a3;
      ++v11;
      v51 = v33 ^ 1;
      if (v11 >= v58)
      {
        v51 = 0;
      }

      if ((v51 & 1) == 0)
      {
        goto LABEL_104;
      }
    }

    if (a3 == 1)
    {
      v32 = *(this + 2);
      if (v32 == 1718378851)
      {
        Ogg::File::ParseFLACHeaderPacket(this, v14, v15, &v60);
        if (v60)
        {
          v33 = 1;
          v36 = 2;
LABEL_61:
          v8 = a4;
LABEL_72:
          LODWORD(v7) = a6;
          LODWORD(a6->mStartOffset) = v36;
          goto LABEL_73;
        }

LABEL_62:
        v33 = 0;
LABEL_63:
        v8 = a4;
        goto LABEL_73;
      }

      if (v32 == 1987015266)
      {
        if (*(this + 40) != 1 || *(this + 22) - *(this + 21) < 2uLL)
        {
          goto LABEL_109;
        }

        LODWORD(__src) = 0;
        if (v15 >= 0x10 && *v14 == 3 && !strncmp(v14 + 1, "vorbis", 6uLL))
        {
          if ((v15 - 7) - 4 >= *(v14 + 7))
          {
            v48 = *(v14 + 7);
          }

          else
          {
            v48 = 0;
          }

          LODWORD(__src) = v48;
          operator new();
        }

        v38 = 16;
        v39 = 2;
        do
        {
          if (v38 >= 0xFF)
          {
            v40 = -1;
          }

          else
          {
            v40 = v38;
          }

          LOBYTE(inSpecifier.mASBD.mSampleRate) = v40;
          std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this + 168, (*(this + 21) + v39++), &inSpecifier, &inSpecifier.mASBD.mSampleRate + 1, 1);
          v38 -= LOBYTE(inSpecifier.mASBD.mSampleRate);
        }

        while (v38);
        v66 = 3;
        std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this + 168, *(this + 22), &v66, &__src, 1);
        qmemcpy(&inSpecifier, "vorbis", 6);
        std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this + 168, *(this + 22), &inSpecifier, &inSpecifier.mASBD.mSampleRate + 6, 6);
        std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this + 168, *(this + 22), &__src, &__src + 4, 4);
        outPropertyDataSize[0] = 0;
        std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this + 168, *(this + 22), outPropertyDataSize, &outPropertyDataSize[1], 4);
        v65 = 1;
        std::vector<unsigned char>::push_back[abi:ne200100](this + 168, &v65);
        v33 = 0;
        *(this + 40) = 2;
        goto LABEL_63;
      }

      LODWORD(v7) = 1869641075;
      if (v32 != 1869641075)
      {
        goto LABEL_109;
      }

      if (v15 >= 0x10 && !strncmp(v14, "OpusTags", 8uLL))
      {
        operator new();
      }
    }

    else
    {
      if (!a3)
      {
        if (v15 < 0x13)
        {
          goto LABEL_108;
        }

        if (!strncmp(&v8[*v12], "OpusHead", 8uLL))
        {
          *(this + 2) = 1869641075;
          std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this + 64, *(this + 9), v14, &v14[v15], v15);
          v37 = 1;
        }

        else
        {
          if (v15 < 0x33)
          {
            if (v15 < 0x1E)
            {
              goto LABEL_108;
            }

            v16 = *v14;
          }

          else
          {
            v16 = *v14;
            if (v16 == 127)
            {
              if (strncmp(v14 + 1, "FLAC", 4uLL))
              {
                goto LABEL_106;
              }

              *(this + 2) = 1718378851;
              if (v14[5] != 1)
              {
                goto LABEL_109;
              }

              if (v14[6])
              {
                goto LABEL_109;
              }

              if (v14[7])
              {
                goto LABEL_109;
              }

              if (*(v14 + 9) != 1130450022)
              {
                goto LABEL_109;
              }

              v17 = bswap32(*(v14 + 13));
              v60 = v17 < 0;
              if ((v17 & 0x7F000000) != 0)
              {
                goto LABEL_109;
              }

              v18 = 0;
              v19 = v17 & 0xFFFFFF;
              if ((v17 & 0xFFFFFFu) - 240 < 0xFFFFFF32)
              {
                goto LABEL_111;
              }

              v20 = v19 + 4;
              LODWORD(v7) = 0;
              if (v20 + 13 > v15)
              {
                goto LABEL_110;
              }

              v54 = v17;
              __src = 0x614C666400000000;
              v68 = 0;
              BYTE3(__src) = v17 + 16;
              std::vector<unsigned char>::reserve(this + 8, v20 + 12);
              std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this + 64, *(this + 9), &__src, v69, 12);
              std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this + 64, *(this + 9), v14 + 13, &v14[v20 + 13], v19 + 4);
              v21 = *(v14 + 7);
              v22 = v14 + 17;
              *outPropertyDataSize = v14 + 17;
              v62 = v14 + 17;
              v63 = &v14[v19 + 17];
              v64 = 0;
              if (((v14 + 17) & 3) != 0)
              {
                v23 = 0;
                v24 = (2 - v14) & 3;
                v25 = &v55[v13];
                do
                {
                  if (v22 >= &v14[v19 + 17])
                  {
                    v26 = 255;
                  }

                  else
                  {
                    v26 = *v22;
                  }

                  v23 = v26 | (v23 << 8);
                  ++v22;
                }

                while ((v25++ & 3) != 0);
                *outPropertyDataSize = &v14[v24 + 18];
                LODWORD(v64) = v23 << ((8 * v24) ^ 0x18);
                HIDWORD(v64) = 8 * (-(v55 + v13) & 3) + 8;
              }

              FLACUnpackStreamInfo(outPropertyDataSize, &inSpecifier);
              v28 = *&inSpecifier.mASBD.mBitsPerChannel;
              *(this + 25) = *&inSpecifier.mASBD.mBitsPerChannel;
              mSampleRate_low = LODWORD(inSpecifier.mASBD.mSampleRate);
              v8 = a4;
              if (LODWORD(inSpecifier.mASBD.mSampleRate) && LODWORD(inSpecifier.mASBD.mSampleRate) == HIDWORD(inSpecifier.mASBD.mSampleRate))
              {
                *(this + 27) = v28 / LODWORD(inSpecifier.mASBD.mSampleRate);
                v30 = v28 / mSampleRate_low * mSampleRate_low;
                if (v30 >= v28)
                {
                  v31 = 0;
                }

                else
                {
                  *(this + 27) = v28 / mSampleRate_low + 1;
                  v31 = mSampleRate_low + v30 - v28;
                }

                *(this + 52) = v31;
              }

              if (v54 < 0)
              {
                v36 = 1;
                v33 = 1;
                goto LABEL_72;
              }

              v37 = bswap32(v21) >> 16;
              goto LABEL_71;
            }
          }

          if (v16 != 1 || strncmp(v14 + 1, "vorbis", 6uLL))
          {
LABEL_106:
            if (v15 < 0x50 || strncmp(v14, "Speex   ", 8uLL))
            {
LABEL_108:
              v18 = 0;
              LODWORD(v7) = 1;
              goto LABEL_110;
            }

LABEL_109:
            v18 = 0;
            LODWORD(v7) = 0;
            goto LABEL_110;
          }

          v18 = 0;
          if (v15 > 0xFE)
          {
LABEL_111:
            LODWORD(v7) = 0;
            goto LABEL_110;
          }

          LODWORD(v7) = 0;
          if (*(this + 40))
          {
            goto LABEL_110;
          }

          *(this + 2) = 1987015266;
          LOBYTE(inSpecifier.mASBD.mSampleRate) = 2;
          std::vector<unsigned char>::push_back[abi:ne200100](this + 168, &inSpecifier);
          LOBYTE(inSpecifier.mASBD.mSampleRate) = v15;
          std::vector<unsigned char>::push_back[abi:ne200100](this + 168, &inSpecifier);
          std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this + 168, *(this + 22), v14, &v14[v15], v15);
          *(this + 40) = 1;
          v37 = 2;
          v8 = a4;
        }

LABEL_71:
        v33 = 0;
        v36 = v37 + 1;
        goto LABEL_72;
      }

LABEL_42:
      if (a3 >= LODWORD(a6->mStartOffset))
      {
        goto LABEL_108;
      }

      LODWORD(v7) = 1718378851;
      if (*(this + 2) == 1718378851)
      {
        Ogg::File::ParseFLACHeaderPacket(this, v14, v15, &v60);
        if (v60)
        {
          v36 = a3 + 1;
          v33 = 1;
          goto LABEL_61;
        }

        goto LABEL_62;
      }
    }

    v33 = 0;
    goto LABEL_73;
  }

LABEL_104:
  v18 = 1;
LABEL_110:
  v52 = *MEMORY[0x1E69E9840];
  return (v18 | v7) & 1;
}

void sub_18F8BB8C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioFormatProperty_DecodeFormatIDsForCodingName(int *a1, unsigned int *a2, unsigned int *a3)
{
  if (a3 && *a2 < 4)
  {
    return 561211770;
  }

  v5 = 1718449215;
  v6 = *a1;
  if (*a1 > 1380333107)
  {
    if (v6 <= 1832149349)
    {
      if (v6 != 1380333108 && v6 != 1463899717)
      {
        v5 = 1718449215;
        if (v6 != 1667327590)
        {
          return v5;
        }

        v5 = 561213539;
        if (a1[1] != 4)
        {
          return v5;
        }

        goto LABEL_12;
      }

LABEL_28:
      v5 = 561213539;
      if (a1[1] == 2)
      {
        AudioFormatIDFromFormatTag = AudioFormat_GetAudioFormatIDFromFormatTag(*(a1 + 4), &v19);
        if (AudioFormatIDFromFormatTag == 1061109567)
        {
          return 1718449215;
        }

        else
        {
          if (a3)
          {
            *a3 = AudioFormatIDFromFormatTag;
          }

          v5 = 0;
          *a2 = 4;
        }
      }

      return v5;
    }

    v11 = v6 == 1832149350 || v6 == 1832149606;
    v12 = 1836069990;
    goto LABEL_32;
  }

  if (v6 <= 1095321154)
  {
    v11 = v6 == 862416946;
    v12 = 862417008;
LABEL_32:
    v14 = v11 || v6 == v12;
    v5 = 1718449215;
    if (!v14)
    {
      return v5;
    }

    goto LABEL_37;
  }

  if (v6 == 1095321155)
  {
    v5 = 561213539;
    if (a1[1] != 4)
    {
      return v5;
    }

    v17 = a1[2];
    if (v17 > 1768829491)
    {
      if (v17 <= 1918990111)
      {
        if (v17 != 1768829492 && v17 != 1768829746)
        {
          v5 = 1718449215;
          if (v17 == 1819304813)
          {
            return v5;
          }

LABEL_12:
          *a2 = 4;
          if (a3)
          {
            v5 = 0;
            v8 = a1[2];
LABEL_64:
            *a3 = v8;
            return v5;
          }

          return 0;
        }

LABEL_62:
        *a2 = 4;
        if (a3)
        {
          v5 = 0;
          v8 = 1819304813;
          goto LABEL_64;
        }

        return 0;
      }

      if (v17 == 1918990112 || v17 == 1953984371)
      {
        goto LABEL_62;
      }

      v18 = 1936684916;
    }

    else if (v17 > 1313820228)
    {
      if (v17 == 1313820229 || v17 == 1718367026)
      {
        goto LABEL_62;
      }

      v18 = 1718367796;
    }

    else
    {
      if (v17 == 842231401 || v17 == 1179398962)
      {
        goto LABEL_62;
      }

      v18 = 1179399732;
    }

    if (v17 != v18)
    {
      goto LABEL_12;
    }

    goto LABEL_62;
  }

  if (v6 == 1113011764)
  {
    goto LABEL_28;
  }

  if (v6 != 1299148630 || a1[1] != 4)
  {
    return v5;
  }

  v9 = 0;
  do
  {
    v10 = v9;
    if (v9)
    {
      break;
    }

    v9 = 1;
  }

  while (a1[2] != 1634754915);
  v5 = 1718449215;
  if (v10)
  {
    return v5;
  }

LABEL_37:
  v5 = 561213539;
  if (a1[1] != 4)
  {
    return v5;
  }

  v15 = a1[2];

  return AudioFormat_GetAudioFormatIDsForISOCodingName(v15, a2, a3);
}

uint64_t AudioFormat_GetAudioFormatIDsForISOCodingName(int a1, unsigned int *a2, unsigned int *a3)
{
  if (a1 == 1700998451)
  {
    if (a3)
    {
      if (*a2 < 4)
      {
        goto LABEL_11;
      }

      *a3 = 1700998451;
      if (*a2 < 8)
      {
LABEL_21:
        v6 = 4;
        goto LABEL_24;
      }

      a3[1] = 1700997939;
    }

    v6 = 8;
    goto LABEL_24;
  }

  if (a1 == 1836069985)
  {
    if (!a3)
    {
      v6 = 76;
      goto LABEL_24;
    }

    if (*a2 >= 4)
    {
      v4 = 0;
      do
      {
        a3[v4] = sAudioFormatIDs_mp4a[v4];
        v5 = v4 + 1;
        if (v4 == 18)
        {
          break;
        }

        ++v4;
      }

      while (*a2 >> 2 > v5);
      v6 = 4 * v5;
      goto LABEL_24;
    }

LABEL_11:
    v6 = 0;
LABEL_24:
    result = 0;
    *a2 = v6;
    return result;
  }

  v7 = &sPairedCodingNameAndAudioFormatIDs;
  result = 1718449215;
  v9 = 12;
  while (*v7 != a1)
  {
    v7 += 2;
    if (!--v9)
    {
      return result;
    }
  }

  v10 = v7[1];
  if (v10)
  {
    if (a3)
    {
      *a3 = v10;
    }

    goto LABEL_21;
  }

  return result;
}

uint64_t AudioFormatProperty_EncapsulatedMagicCookieNameForCodingName(int *a1, _DWORD *a2, int *a3)
{
  result = 1718449215;
  v5 = *a1;
  if (*a1 <= 1667327589)
  {
    if (v5 != 862416946 && v5 != 862417008)
    {
      if (v5 != 1299148630 || a1[1] != 4)
      {
        return result;
      }

      v7 = 0;
      do
      {
        v8 = v7;
        if (v7)
        {
          break;
        }

        v7 = 1;
      }

      while (a1[2] != 1634754915);
      if (v8)
      {
        return result;
      }
    }

LABEL_22:
    if (a3 && *a2 < 0xCu)
    {
      return 561211770;
    }

    v10 = a1[2];
    v11 = &sPairedCodingNameAndConfigNames;
    v12 = 14;
    while (*v11 != v10)
    {
      v11 += 2;
      if (!--v12)
      {
        return result;
      }
    }

    if (!a3)
    {
      goto LABEL_32;
    }

    v13 = v11[1];
    goto LABEL_31;
  }

  if (v5 > 1832149605)
  {
    if (v5 != 1832149606 && v5 != 1836069990)
    {
      return result;
    }

    goto LABEL_22;
  }

  if (v5 != 1667327590)
  {
    if (v5 != 1832149350)
    {
      return result;
    }

    goto LABEL_22;
  }

  result = 561211770;
  if (a1[1] != 4)
  {
    return 561213539;
  }

  if (!a3)
  {
LABEL_32:
    result = 0;
    *a2 = 12;
    return result;
  }

  if (*a2 >= 0xCu)
  {
    v13 = 1802857321;
    v5 = 1667327590;
LABEL_31:
    *a3 = v5;
    a3[1] = 4;
    a3[2] = v13;
    goto LABEL_32;
  }

  return result;
}

uint64_t AudioFormatProperty_CanonicalMagicCookieFromEncapsulatedMagicCookie(unsigned int *a1, unsigned int *a2, void *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = 1718449215;
  v7 = AudioFormatEncryptedFormatTranslator::DecryptFormatID(*a1, &v41);
  v8 = a1[1];
  if (v8 <= 1667327589)
  {
    v9 = v8 == 862416946 || v8 == 862417008;
    if (!v9 && (v8 != 1299148630 || v7 != 1634754915))
    {
      goto LABEL_55;
    }
  }

  else if (v8 > 1832149605)
  {
    if (v8 != 1832149606 && v8 != 1836069990)
    {
      goto LABEL_55;
    }
  }

  else
  {
    if (v8 == 1667327590)
    {
      v27 = a1[4];
      if (v27 < 0xC)
      {
        v6 = 561213539;
        goto LABEL_55;
      }

      v36 = *(a1 + 1);
      if (*v36 != 1802857321)
      {
        goto LABEL_55;
      }

      if (a3)
      {
        v6 = 561211770;
        if (v27 - 12 > *a2)
        {
          goto LABEL_55;
        }

        memcpy(a3, v36 + 3, v27 - 12);
        LODWORD(v27) = a1[4];
      }

      v6 = 0;
      v28 = v27 - 12;
      goto LABEL_54;
    }

    if (v8 != 1832149350)
    {
      goto LABEL_55;
    }
  }

  for (i = 0; i != 7; ++i)
  {
    if (v7 == sAudioFormatsThatHaveISOBoxesAsMagicCookies[i])
    {
      if (a3)
      {
        v13 = a1[4];
        if (*a2 < v13)
        {
          goto LABEL_26;
        }

        memcpy(a3, *(a1 + 1), v13);
      }

      v6 = 0;
      v28 = a1[4];
LABEL_54:
      *a2 = v28;
      goto LABEL_55;
    }
  }

  if (v7 <= 1633772401)
  {
    if (v7 != 1633772320)
    {
      v12 = 25453;
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (v7 == 1869641075)
  {
    v31 = a1[4];
    if (v31 < 0x13)
    {
      goto LABEL_55;
    }

    v32 = *(a1 + 1);
    if (bswap32(*v32) < 0x13 || v32[1] != 1936740196)
    {
      goto LABEL_55;
    }

    if (!a3)
    {
LABEL_62:
      v6 = 0;
      *a2 = v31;
      goto LABEL_55;
    }

    if (*a2 >= v31)
    {
      memcpy(a3, v32, v31);
      v33 = *(a1 + 1);
      v34 = bswap32(*(v33 + 10)) >> 16;
      v35 = bswap32(*(v33 + 12));
      LODWORD(v33) = bswap32(*(v33 + 16)) >> 16;
      *a3 = 0x646165487375704FLL;
      *(a3 + 8) = 1;
      *(a3 + 5) = v34;
      *(a3 + 3) = v35;
      *(a3 + 8) = v33;
      LODWORD(v31) = a1[4];
      goto LABEL_62;
    }

LABEL_26:
    v6 = 561211770;
    goto LABEL_55;
  }

  v12 = 25458;
LABEL_29:
  if (v7 == (v12 | 0x61610000))
  {
LABEL_30:
    v14 = a1[4];
    if (v14 >= 0xD)
    {
      v15 = *(a1 + 1);
      if (*(v15 + 4) == 1935962981)
      {
        v17 = *(v15 + 8);
        v16 = (v15 + 8);
        v18 = v17 == 3;
        if (v17 == 3)
        {
          v19 = -8;
        }

        else
        {
          v19 = -12;
        }

        v20 = v19 + v14;
        if (v18)
        {
          v21 = v16;
        }

        else
        {
          v21 = v16 + 4;
        }

        v44 = 0;
        v45 = 0;
        v46 = 0;
        v47[2] = 0;
        MP4AudioProgramConfig::Clear(v47);
        v49 = 0u;
        v48 = 0u;
        DecoderConfigDescr::cleanup(&v43);
        bzero(v42, 0x5F0uLL);
        v39[0] = v21;
        v39[1] = &v21[v20];
        v40 = 0;
        if ((v21 & 3) != 0 && v20)
        {
          v22 = 0;
          v23 = v21 + 1;
          v24 = -8;
          v25 = v21 + 1;
          do
          {
            HIDWORD(v40) = v24 + 16;
            v39[0] = v25;
            v22 = *(v25 - 1) | (v22 << 8);
            LODWORD(v40) = v22;
            v24 += 8;
            if ((v23 & 3) == 0)
            {
              break;
            }

            ++v23;
          }

          while (v25++ < &v21[v20]);
          LODWORD(v40) = v22 << (24 - v24);
        }

        v6 = MP4AudioESDS::Deserialize(v42, v39, 0, 0);
        if (!v6)
        {
          if ((v44 - 105) >= 0xFFFFFFFD)
          {
            v44 = 64;
            LODWORD(v20) = DecoderConfigDescr::MPEG4AudioSpecificPayloadSerializeByteCount(&v43) + 37;
            if (a3)
            {
              if (*a2 < v20)
              {
                goto LABEL_70;
              }

              v37[0] = a3;
              v37[1] = a3;
              v37[2] = a3 + v20;
              v37[3] = 0x2000000000;
              v38 = a3 & 3;
              MP4AudioESDS::Serialize(v42, v37, 0, 0);
            }

LABEL_72:
            v6 = 0;
            *a2 = v20;
          }

          else
          {
            if (!a3)
            {
              goto LABEL_72;
            }

            if (*a2 >= v20)
            {
              memcpy(a3, v21, v20);
              goto LABEL_72;
            }

LABEL_70:
            v6 = 561211770;
          }
        }

        if (*(&v49 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v49 + 1));
        }

        if (*(&v48 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v48 + 1));
        }
      }
    }
  }

LABEL_55:
  v29 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_18F8BC3A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  MP4AudioESDS::~MP4AudioESDS(va);
  _Unwind_Resume(a1);
}

uint64_t AudioFormatProperty_DecodeFormatIDsForEncapsulatedMagicCookieName(int *a1, unsigned int *a2, unsigned int *a3)
{
  v3 = *a1;
  if (*a1 > 1832149349)
  {
    if (v3 == 1832149350 || v3 == 1832149606 || v3 == 1836069990)
    {
      goto LABEL_22;
    }

    return 1718449215;
  }

  if (v3 == 862416946 || v3 == 862417008)
  {
    goto LABEL_22;
  }

  if (v3 != 1299148630 || a1[1] != 4)
  {
    return 1718449215;
  }

  v5 = a1[2];
  if (v5 != 1680961633)
  {
    v6 = -1;
    v7 = &dword_18F918790;
    while (v6 != 8)
    {
      v8 = *v7++;
      ++v6;
      if (v5 == v8)
      {
        if (v6 <= 8)
        {
          goto LABEL_22;
        }

        return 1718449215;
      }
    }

    return 1718449215;
  }

LABEL_22:
  if (a1[1] != 4)
  {
    return 561213539;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = a1[2];
  v15 = 1;
  result = 1718449215;
  while (2)
  {
    for (i = &sPairedCodingNameAndConfigNames[2 * v11]; i[1] != v14; i += 2)
    {
      if (++v11 == 14)
      {
        if ((v13 & 1) == 0)
        {
          return result;
        }

        return AudioFormat_GetAudioFormatIDsForISOCodingName(v12, a2, a3);
      }
    }

    if ((v15 & 1) == 0)
    {
      return 1718449215;
    }

    v15 = 0;
    result = 0;
    v12 = *i;
    ++v11;
    v13 = 1;
    if (v11 != 14)
    {
      continue;
    }

    break;
  }

  return AudioFormat_GetAudioFormatIDsForISOCodingName(v12, a2, a3);
}

uint64_t AudioFormatProperty_CodingNameForDecodeFormatID(int *a1, int *a2, int *a3)
{
  v6 = 1718449215;
  v7 = a1[2];
  if (v7 <= 1463899716)
  {
    if (v7 > 1113011763)
    {
      if (v7 != 1113011764)
      {
        if (v7 != 1299148630)
        {
          if (v7 != 1380333108)
          {
            return v6;
          }

          goto LABEL_35;
        }

        if (*a1 != 1634754915)
        {
          return v6;
        }

LABEL_18:
        if (a3 && *a2 < 0xC)
        {
          return 561211770;
        }

        v11 = 0;
        v12 = *a1;
        do
        {
          if (sAudioFormatIDs_mp4a[v11] == v12)
          {
            v13 = 1836069985;
            goto LABEL_42;
          }

          ++v11;
        }

        while (v11 != 19);
        v13 = 1700998451;
        if (v12 != 1700997939 && v12 != 1700998451)
        {
          if (v12 == 1819304813)
          {
            if (a1[1])
            {
              v13 = 1718641517;
            }

            else
            {
              v13 = 1768973165;
            }
          }

          else
          {
            v17 = &sPairedCodingNameAndAudioFormatIDs;
            v18 = 12;
            do
            {
              if (v17[1] == v12)
              {
                v13 = *v17;
                goto LABEL_42;
              }

              v17 += 2;
              --v18;
            }

            while (v18);
            v19 = 1969977198;
            AudioFormatEncryptedFormatTranslator::DecryptFormatID(v12, &v19);
            if (v19 == 1667392371)
            {
LABEL_57:
              v13 = 1701733217;
              goto LABEL_42;
            }

            if (v19 != 1885695587)
            {
              if (v19 != 1667591779)
              {
                return v6;
              }

              goto LABEL_57;
            }

            v13 = 1685220723;
          }
        }

LABEL_42:
        if (a3)
        {
          *a3 = v7;
          a3[1] = 4;
          a3[2] = v13;
        }

        v14 = 12;
        goto LABEL_47;
      }

LABEL_35:
      if (a3 && *a2 < 0xA)
      {
        return 561211770;
      }

      FormatTagFromFormatID = AudioFormat_GetFormatTagFromFormatID(*a1, a1[1]);
      if (a3 && FormatTagFromFormatID)
      {
        *a3 = a1[2];
        a3[1] = 2;
        *(a3 + 4) = FormatTagFromFormatID;
      }

      else if (!FormatTagFromFormatID)
      {
        return v6;
      }

      v14 = 10;
      goto LABEL_47;
    }

    v8 = v7 == 862416946;
    v9 = 862417008;
    goto LABEL_13;
  }

  if (v7 > 1832149349)
  {
    v8 = v7 == 1832149350 || v7 == 1832149606;
    v9 = 1836069990;
LABEL_13:
    if (v8 || v7 == v9)
    {
      goto LABEL_18;
    }

    return v6;
  }

  if (v7 == 1463899717)
  {
    goto LABEL_35;
  }

  if (v7 == 1667327590)
  {
    if (a3)
    {
      if (*a2 < 0x10)
      {
        return 561211770;
      }

      *a3 = 0x463616666;
      a3[2] = *a1;
    }

    v14 = 16;
LABEL_47:
    v6 = 0;
    *a2 = v14;
  }

  return v6;
}

uint64_t AudioFormatProperty_EncapsulatedMagicCookieFromCanonicalMagicCookie(unsigned int *a1, _DWORD *a2, uint64_t a3)
{
  v6 = 1718449215;
  v7 = AudioFormatEncryptedFormatTranslator::DecryptFormatID(*a1, &v24);
  v8 = a1[1];
  if (v8 <= 1667327589)
  {
    v9 = v8 == 862416946 || v8 == 862417008;
    if (!v9 && (v8 != 1299148630 || v7 != 1634754915))
    {
      return v6;
    }
  }

  else if (v8 > 1832149605)
  {
    if (v8 != 1832149606 && v8 != 1836069990)
    {
      return v6;
    }
  }

  else
  {
    if (v8 == 1667327590)
    {
      if (a3)
      {
        v19 = a1[4];
        if (v19 + 12 > *a2)
        {
          return 561211770;
        }

        *a3 = 1768650091;
        *(a3 + 4) = bswap64(v19);
        memcpy((a3 + 12), (*(a1 + 1) + 12), a1[4] - 12);
      }

      LODWORD(v12) = a1[4] + 12;
      goto LABEL_36;
    }

    if (v8 != 1832149350)
    {
      return v6;
    }
  }

  for (i = 0; i != 7; ++i)
  {
    if (v7 == sAudioFormatsThatHaveISOBoxesAsMagicCookies[i])
    {
      if (a3)
      {
        v18 = a1[4];
        if (*a2 < v18)
        {
          return 561211770;
        }

        memcpy(a3, *(a1 + 1), v18);
      }

      goto LABEL_31;
    }
  }

  if (v7 == 1869641075)
  {
    v12 = a1[4];
    if (v12 >= 0x13)
    {
      v13 = *(a1 + 1);
      v14 = *v13;
      if (*v13 == 1937076303 && v13[1] == 1684104520)
      {
        if (!a3)
        {
          goto LABEL_36;
        }

        if (*a2 >= v12)
        {
          memcpy(a3, v13, v12);
          v15 = *(a1 + 1);
          v16 = bswap32(*(v15 + 10)) >> 16;
          v17 = bswap32(*(v15 + 12));
          LODWORD(v15) = bswap32(*(v15 + 16)) >> 16;
          *a3 = bswap32(a1[4]);
          strcpy((a3 + 4), "dOps");
          *(a3 + 10) = v16;
          *(a3 + 12) = v17;
          *(a3 + 16) = v15;
LABEL_31:
          LODWORD(v12) = a1[4];
          goto LABEL_36;
        }

        return 561211770;
      }

      if (v12 == 28)
      {
        if (a3)
        {
          if (*a2 < 0x13u)
          {
            return 561211770;
          }

          v21 = bswap32(v13[4]);
          if (v21 - 1 > 1)
          {
            return v6;
          }

          v22 = v13[1];
          *a3 = 0x73704F6413000000;
          if (v14 == 50855936)
          {
            v23 = 30720;
          }

          else
          {
            v23 = 14337;
          }

          *(a3 + 8) = 0;
          *(a3 + 9) = v21;
          *(a3 + 10) = v23;
          *(a3 + 12) = v22;
          *(a3 + 16) = 0;
          *(a3 + 18) = 0;
        }

        LODWORD(v12) = 19;
LABEL_36:
        v6 = 0;
        *a2 = v12;
      }
    }
  }

  return v6;
}

uint64_t MP4SLSSpecificConfig::Deserialize(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  v5 = v4 >> 26;
  v6 = *(a2 + 20) - 6;
  *(a2 + 20) = v6;
  if (v6 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    *a2 += 4;
    v9 = *(a2 + 16);
    v8 = *(a2 + 20);
    v5 |= v9 >> v8;
    v6 = v8 + 32;
    *(a2 + 20) = v8 + 32;
    if (v8 == -32)
    {
      v7 = 0;
    }

    else
    {
      v7 = v9 << -v8;
    }
  }

  else
  {
    v7 = v4 << 6;
  }

  *(a2 + 16) = v7;
  *(a1 + 1116) = (4 * v5) & 0xF8;
  if (((4 * v5) & 0x80) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = 136315394;
      v21 = "MP4SLSSpecificConfig.cpp";
      v22 = 1024;
      v23 = 28;
      v13 = MEMORY[0x1E69E9C10];
      v14 = "%25s:%-5d  MP4SLSSpecificConfig::Deserialize: invalid PCM word length";
LABEL_17:
      _os_log_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_ERROR, v14, &v20, 0x12u);
    }
  }

  else
  {
    v10 = v7 >> 29;
    v11 = v6 - 3;
    *(a2 + 20) = v11;
    if (v11 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      *a2 += 4;
      v16 = *(a2 + 16);
      v15 = *(a2 + 20);
      v10 |= v16 >> v15;
      *(a2 + 20) = v15 + 32;
      if (v15 == -32)
      {
        v12 = 0;
      }

      else
      {
        v12 = v16 << -v15;
      }
    }

    else
    {
      v12 = 8 * v7;
    }

    *(a2 + 16) = v12;
    v17 = *(a1 + 1116) | v10;
    *(a1 + 1116) = v17;
    if ((v17 & 7u) < 3)
    {
      if (*(a1 + 12) || (MP4AudioProgramConfig::Deserialize((a1 + 16), a2), *(a1 + 24) == *(a1 + 8)))
      {
        result = 0;
        goto LABEL_22;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v20 = 136315394;
        v21 = "MP4SLSSpecificConfig.cpp";
        v22 = 1024;
        v23 = 40;
        v13 = MEMORY[0x1E69E9C10];
        v14 = "%25s:%-5d  MP4SLSSpecificConfig::Deserialize: the Program sampleRate is incorrect";
        goto LABEL_17;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = 136315394;
      v21 = "MP4SLSSpecificConfig.cpp";
      v22 = 1024;
      v23 = 32;
      v13 = MEMORY[0x1E69E9C10];
      v14 = "%25s:%-5d  MP4SLSSpecificConfig::Deserialize: invalid frame length";
      goto LABEL_17;
    }
  }

  result = 4294967090;
LABEL_22:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MP4ALSSpecificConfig::Deserialize(_DWORD *a1, uint64_t a2)
{
  v86 = *MEMORY[0x1E69E9840];
  TBitstreamReader<unsigned int>::SkipBits(a2, 5);
  v4 = *(a2 + 16);
  v5 = *(a2 + 20) - 32;
  *(a2 + 20) = v5;
  if (v5 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    v8 = *(a2 + 16);
    v7 = *(a2 + 20);
    v5 = v7 + 32;
    v9 = v7 == -32;
    *a2 += 4;
    v6 = (v8 >> v7) | v4;
    v10 = v8 << -v7;
    if (v9)
    {
      v4 = 0;
    }

    else
    {
      v4 = v10;
    }

    *(a2 + 16) = v4;
    *(a2 + 20) = v5;
  }

  else
  {
    v6 = v4;
  }

  if (v6 != 1095521024)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "MP4SLSSpecificConfig.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 127;
      v20 = MEMORY[0x1E69E9C10];
      v21 = "%25s:%-5d  MP4ALSSpecificConfig::Deserialize: invalid ALS identifier";
LABEL_67:
      _os_log_impl(&dword_18F5DF000, v20, OS_LOG_TYPE_ERROR, v21, buf, 0x12u);
    }

LABEL_68:
    v44 = 4294967090;
    goto LABEL_69;
  }

  v11 = v5 - 32;
  *(a2 + 20) = v11;
  if (v11 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    v13 = *(a2 + 16);
    v12 = *(a2 + 20);
    v14 = v12 + 32;
    v9 = v12 == -32;
    *a2 += 4;
    v4 |= v13 >> v12;
    v15 = v13 << -v12;
    if (v9)
    {
      v15 = 0;
    }

    *(a2 + 16) = v15;
    *(a2 + 20) = v14;
  }

  a1[2] = v4;
  TBitstreamReader<unsigned int>::SkipBits(a2, 32);
  v16 = *(a2 + 16);
  v17 = HIWORD(v16);
  v18 = *(a2 + 20) - 16;
  *(a2 + 20) = v18;
  if (v18 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    *a2 += 4;
    v23 = *(a2 + 16);
    v22 = *(a2 + 20);
    v17 |= v23 >> v22;
    *(a2 + 20) = v22 + 32;
    if (v22 == -32)
    {
      v19 = 0;
    }

    else
    {
      v19 = v23 << -v22;
    }
  }

  else
  {
    v19 = v16 << 16;
  }

  *(a2 + 16) = v19;
  a1[4] = v17 + 1;
  if (v17 + 1 >= 0xD)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "MP4SLSSpecificConfig.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 134;
      v20 = MEMORY[0x1E69E9C10];
      v21 = "%25s:%-5d  MP4ALSSpecificConfig::Deserialize: invalid channel count";
      goto LABEL_67;
    }

    goto LABEL_68;
  }

  if (v17)
  {
    if (v17 == 1)
    {
      v24 = 6619138;
    }

    else
    {
      v24 = (v17 + 1) | 0xFFFF0000;
    }
  }

  else
  {
    v24 = 6553601;
  }

  a1[6] = v24;
  TBitstreamReader<unsigned int>::SkipBits(a2, 3);
  v25 = *(a2 + 16);
  v26 = v25 >> 29;
  v27 = *(a2 + 20) - 3;
  *(a2 + 20) = v27;
  if (v27 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    *a2 += 4;
    v30 = *(a2 + 16);
    v29 = *(a2 + 20);
    v26 |= v30 >> v29;
    *(a2 + 20) = v29 + 32;
    if (v29 == -32)
    {
      v28 = 0;
    }

    else
    {
      v28 = v30 << -v29;
    }
  }

  else
  {
    v28 = 8 * v25;
  }

  *(a2 + 16) = v28;
  if ((v26 - 1) >= 3u)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "MP4SLSSpecificConfig.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 160;
      v20 = MEMORY[0x1E69E9C10];
      v21 = "%25s:%-5d  MP4ALSSpecificConfig::Deserialize: invalid resolution";
      goto LABEL_67;
    }

    goto LABEL_68;
  }

  a1[5] = dword_18F918814[(v26 - 1)];
  TBitstreamReader<unsigned int>::SkipBits(a2, 2);
  v31 = *(a2 + 16);
  v32 = HIWORD(v31);
  v33 = *(a2 + 20) - 16;
  *(a2 + 20) = v33;
  if (v33 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    *a2 += 4;
    v36 = *(a2 + 16);
    v35 = *(a2 + 20);
    v32 |= v36 >> v35;
    *(a2 + 20) = v35 + 32;
    if (v35 == -32)
    {
      v34 = 0;
    }

    else
    {
      v34 = v36 << -v35;
    }
  }

  else
  {
    v34 = v31 << 16;
  }

  *(a2 + 16) = v34;
  a1[3] = v32 + 1;
  TBitstreamReader<unsigned int>::SkipBits(a2, 30);
  Bit = TBitstreamReader<unsigned int>::GetBit(a2);
  v38 = TBitstreamReader<unsigned int>::GetBit(a2);
  TBitstreamReader<unsigned int>::SkipBits(a2, 8);
  if (!Bit)
  {
    v44 = 0;
    goto LABEL_69;
  }

  v40 = *(a2 + 16);
  v41 = HIWORD(v40);
  v42 = *(a2 + 20) - 16;
  *(a2 + 20) = v42;
  if (v42 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    *a2 += 4;
    v46 = *(a2 + 16);
    v45 = *(a2 + 20);
    v41 |= v46 >> v45;
    *(a2 + 20) = v45 + 32;
    if (v45 == -32)
    {
      v43 = 0;
    }

    else
    {
      v43 = v46 << -v45;
    }
  }

  else
  {
    v43 = v40 << 16;
  }

  *(a2 + 16) = v43;
  if ((v41 & 0xF000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "MP4SLSSpecificConfig.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 208;
      v20 = MEMORY[0x1E69E9C10];
      v21 = "%25s:%-5d  MP4ALSSpecificConfig::Deserialize: invalid channel configuration";
      goto LABEL_67;
    }

    goto LABEL_68;
  }

  v39.i32[0] = v41 & 0xFFF;
  v47 = vcnt_s8(v39);
  v47.i16[0] = vaddlv_u8(v47);
  if (v47.i32[0] != a1[4])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "MP4SLSSpecificConfig.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 211;
      v20 = MEMORY[0x1E69E9C10];
      v21 = "%25s:%-5d  MP4ALSSpecificConfig::Deserialize: mismatch between channel count and channel configuration";
      goto LABEL_67;
    }

    goto LABEL_68;
  }

  std::vector<unsigned char>::vector[abi:ne200100](buf, v47.u32[0]);
  if (v38)
  {
    v48 = a1[4];
    if (v48)
    {
      v49 = 0;
      v50 = v48 - 1;
      v51 = __clz(v48 - 1);
      v52 = 32 - v51;
      while (1)
      {
        if (v50)
        {
          v53 = *(a2 + 16);
          v54 = v53 >> v51;
          v55 = *(a2 + 20) - v52;
          *(a2 + 20) = v55;
          if (v55 < 0)
          {
            TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
            *a2 += 4;
            v58 = *(a2 + 16);
            v57 = *(a2 + 20);
            v54 |= v58 >> v57;
            *(a2 + 20) = v57 + 32;
            v56 = v57 == -32 ? 0 : v58 << -v57;
          }

          else
          {
            v56 = v53 << v52;
          }

          *(a2 + 16) = v56;
        }

        else
        {
          LOBYTE(v54) = 0;
        }

        *(*buf + v49) = v54;
        v59 = a1[4];
        if (v59 <= *(*buf + v49))
        {
          break;
        }

        if (v59 <= ++v49)
        {
          goto LABEL_78;
        }
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v81 = 136315394;
        v82 = "MP4SLSSpecificConfig.cpp";
        v83 = 1024;
        v84 = 222;
        _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  MP4ALSSpecificConfig::Deserialize: channel position out of range", &v81, 0x12u);
      }

      v44 = 4294967090;
      goto LABEL_112;
    }

LABEL_77:
    v59 = 0;
  }

  else
  {
    v62 = &ALSChannelBitmapToTag;
    v63 = 96;
    do
    {
      if (*v62 == v41)
      {
        v44 = 0;
        a1[6] = *(v62 + 1);
        goto LABEL_112;
      }

      v62 += 4;
      v63 -= 8;
    }

    while (v63);
    if (!a1[4])
    {
      goto LABEL_77;
    }

    v64 = 0;
    do
    {
      *(*buf + v64) = v64;
      ++v64;
      v59 = a1[4];
    }

    while (v59 > v64);
  }

LABEL_78:
  v65 = CAAudioChannelLayout::Create(v59);
  CAAudioChannelLayout::SetAllToUnknown(v65, a1[4]);
  v67 = v65 + 12;
  if (v41)
  {
    v68 = 1;
    *&v67[20 * **buf] = 1;
  }

  else
  {
    v68 = 0;
  }

  if ((v41 & 2) != 0)
  {
    v71 = *(*buf + v68++);
    *&v67[20 * v71] = 2;
    if ((v41 & 4) == 0)
    {
LABEL_83:
      if ((v41 & 8) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_99;
    }
  }

  else if ((v41 & 4) == 0)
  {
    goto LABEL_83;
  }

  v72 = *(*buf + v68++);
  *&v67[20 * v72] = 33;
  if ((v41 & 8) == 0)
  {
LABEL_84:
    if ((v41 & 0x10) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_100;
  }

LABEL_99:
  v73 = *(*buf + v68++);
  *&v67[20 * v73] = 34;
  if ((v41 & 0x10) == 0)
  {
LABEL_85:
    if ((v41 & 0x20) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_101;
  }

LABEL_100:
  v74 = *(*buf + v68++);
  *&v67[20 * v74] = 5;
  if ((v41 & 0x20) == 0)
  {
LABEL_86:
    if ((v41 & 0x40) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_102;
  }

LABEL_101:
  v75 = *(*buf + v68++);
  *&v67[20 * v75] = 6;
  if ((v41 & 0x40) == 0)
  {
LABEL_87:
    if ((v41 & 0x80) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_103;
  }

LABEL_102:
  v76 = *(*buf + v68++);
  *&v67[20 * v76] = 3;
  if ((v41 & 0x80) == 0)
  {
LABEL_88:
    if ((v41 & 0x100) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_104;
  }

LABEL_103:
  v77 = *(*buf + v68++);
  *&v67[20 * v77] = 9;
  if ((v41 & 0x100) == 0)
  {
LABEL_89:
    if ((v41 & 0x200) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_105;
  }

LABEL_104:
  v78 = *(*buf + v68);
  LOBYTE(v68) = v68 + 1;
  *&v67[20 * v78] = 4;
  if ((v41 & 0x200) == 0)
  {
LABEL_90:
    if ((v41 & 0x400) == 0)
    {
      goto LABEL_91;
    }

LABEL_106:
    v80 = *(*buf + v68);
    LOBYTE(v68) = v68 + 1;
    *&v67[20 * v80] = 0;
    if ((v41 & 0x800) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_92;
  }

LABEL_105:
  v79 = *(*buf + v68);
  LOBYTE(v68) = v68 + 1;
  *&v67[20 * v79] = 0;
  if ((v41 & 0x400) != 0)
  {
    goto LABEL_106;
  }

LABEL_91:
  if ((v41 & 0x800) != 0)
  {
LABEL_92:
    *&v67[20 * *(*buf + v68)] = 0;
  }

LABEL_93:
  v69 = CAAudioChannelLayout::ToTag(v65, v66);
  if (v69 == 7143429)
  {
    v70 = 7733253;
  }

  else
  {
    v70 = v69;
  }

  a1[6] = v70;
  MEMORY[0x193ADE5A0](v65);
  v44 = 0;
LABEL_112:
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

LABEL_69:
  v60 = *MEMORY[0x1E69E9840];
  return v44;
}

uint64_t MP4DSTSSpecificConfig::Deserialize(_DWORD *a1, uint64_t a2)
{
  a1[3] = TBitstreamReader<unsigned int>::GetBit(a2);
  v4 = *(a2 + 16);
  v5 = v4 >> 18;
  v6 = *(a2 + 20) - 14;
  *(a2 + 20) = v6;
  if (v6 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    *a2 += 4;
    v9 = *(a2 + 16);
    v8 = *(a2 + 20);
    v5 |= v9 >> v8;
    *(a2 + 20) = v8 + 32;
    if (v8 == -32)
    {
      v7 = 0;
    }

    else
    {
      v7 = v9 << -v8;
    }
  }

  else
  {
    v7 = v4 << 14;
  }

  *(a2 + 16) = v7;
  v10 = a1[2] / 0x4Bu;
  a1[4] = v5;
  a1[5] = v10;
  return 0;
}

uint64_t MP4ELDSpecificConfig::Serialize(uint64_t a1, uint64_t a2)
{
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 16), 1u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 20) >> 1, 3u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 24), 1u);
  if (*(a1 + 24))
  {
    v4 = 1;
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 28), 1u);
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 32), 1u);
    v5 = *(a1 + 12);
    if (v5 >= 3)
    {
      if (v5 == 3)
      {
        v4 = 2;
      }

      else if (v5 >= 7)
      {
        if (v5 != 7)
        {
          goto LABEL_15;
        }

        v4 = 4;
      }

      else
      {
        v4 = 3;
      }
    }

    v6 = (a1 + 48);
    do
    {
      AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(v6 - 12), 1u);
      AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(v6 - 11), 4u);
      AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(v6 - 10), 4u);
      AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(v6 - 9), 3u);
      AT::TBitstreamWriter<unsigned int>::PutBits(a2, 0, 2u);
      AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(v6 - 8), 1u);
      AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(v6 - 4), 1u);
      if (*(v6 - 8))
      {
        AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(v6 - 7), 2u);
        AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(v6 - 6), 1u);
        AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(v6 - 5), 2u);
      }

      if (*(v6 - 4))
      {
        AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(v6 - 3), 2u);
        AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(v6 - 2), 2u);
        AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(v6 - 1), 1u);
        AT::TBitstreamWriter<unsigned int>::PutBits(a2, *v6, 1u);
      }

      v6 += 13;
      --v4;
    }

    while (v4);
  }

LABEL_15:
  if (*(a1 + 103) == 1 && *(a1 + 112))
  {
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, 2, 4u);
    MP4LDSpatialConfigWriter::MP4LDSpatialConfigWriter(&v12, *(a1 + 112));
  }

  v8 = *(a1 + 104);
  v7 = (a1 + 104);
  if (v8)
  {
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, 3, 4u);
    if (MP4SampleRate::Index(*v7) == 15)
    {
      v9 = 4;
    }

    else
    {
      v9 = 1;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a2, v9, 4u);
    MP4SampleRate::Serialize(v7, a2);
    v10 = *(a2 + 28) & 7;
    if (v10)
    {
      AT::TBitstreamWriter<unsigned int>::PutBits(a2, 0, v10);
    }
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 0, 4u);
  return 0;
}

uint64_t MP4ELDSpecificConfig::SerializeCount(MP4ELDSpecificConfig *this)
{
  if (*(this + 6))
  {
    v1 = *(this + 3);
    if (v1 >= 3)
    {
      if (v1 == 3)
      {
        v2 = 2;
      }

      else if (v1 >= 7)
      {
        if (v1 != 7)
        {
          v3 = 7;
          goto LABEL_18;
        }

        v2 = 4;
      }

      else
      {
        v2 = 3;
      }
    }

    else
    {
      v2 = 1;
    }

    v4 = this + 44;
    v3 = 7;
    do
    {
      if (*(v4 - 4))
      {
        v5 = 21;
      }

      else
      {
        v5 = 16;
      }

      v6 = *v4;
      v4 += 13;
      if (v6)
      {
        v5 += 6;
      }

      v3 += v5;
      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = 5;
  }

LABEL_18:
  if (*(this + 103) == 1)
  {
    v7 = *(this + 14);
    if (v7)
    {
      MP4LDSpatialConfigWriter::MP4LDSpatialConfigWriter(&v11, v7);
    }
  }

  v8 = *(this + 26);
  if (v8)
  {
    if (MP4SampleRate::Index(v8) == 15)
    {
      v9 = 28;
    }

    else
    {
      v9 = 4;
    }

    v3 += v9 + 8;
  }

  return (v3 + 4);
}

uint64_t MP4ELDSpecificConfig::Deserialize(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x1E69E9840];
  *(a1 + 16) = TBitstreamReader<unsigned int>::GetBit(a2);
  v4 = *(a2 + 16);
  v5 = v4 >> 29;
  v6 = *(a2 + 20) - 3;
  *(a2 + 20) = v6;
  if (v6 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    *a2 += 4;
    v9 = *(a2 + 16);
    v8 = *(a2 + 20);
    v5 |= v9 >> v8;
    *(a2 + 20) = v8 + 32;
    if (v8 == -32)
    {
      v7 = 0;
    }

    else
    {
      v7 = v9 << -v8;
    }
  }

  else
  {
    v7 = 8 * v4;
  }

  *(a2 + 16) = v7;
  *(a1 + 20) = 2 * v5;
  if (!(2 * v5))
  {
    Bit = TBitstreamReader<unsigned int>::GetBit(a2);
    *(a1 + 24) = Bit;
    if (Bit)
    {
      *(a1 + 28) = TBitstreamReader<unsigned int>::GetBit(a2);
      *(a1 + 32) = TBitstreamReader<unsigned int>::GetBit(a2);
      v14 = *(a1 + 12);
      if (v14 < 3)
      {
        v15 = 1;
LABEL_20:
        v17 = *(a2 + 16);
        v16 = *(a2 + 20);
        v18 = (a1 + 48);
        while (1)
        {
          v19 = HIWORD(v17);
          v16 -= 16;
          *(a2 + 20) = v16;
          if (v16 < 0)
          {
            TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
            *a2 += 4;
            v21 = *(a2 + 16);
            v20 = *(a2 + 20);
            v19 |= v21 >> v20;
            v16 = v20 + 32;
            *(a2 + 20) = v20 + 32;
            if (v20 == -32)
            {
              v17 = 0;
            }

            else
            {
              v17 = v21 << -v20;
            }
          }

          else
          {
            v17 <<= 16;
          }

          *(a2 + 16) = v17;
          *(v18 - 12) = (v19 & 0x8000) != 0;
          *(v18 - 11) = (v19 >> 11) & 0xF;
          *(v18 - 10) = (v19 >> 7) & 0xF;
          *(v18 - 9) = (v19 >> 4) & 7;
          *(v18 - 8) = (v19 & 2) != 0;
          *(v18 - 4) = v19 & 1;
          if ((v19 >> 1))
          {
            v23 = v17 >> 27;
            v16 -= 5;
            *(a2 + 20) = v16;
            if (v16 < 0)
            {
              TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
              *a2 += 4;
              v25 = *(a2 + 16);
              v24 = *(a2 + 20);
              v23 |= v25 >> v24;
              v16 = v24 + 32;
              *(a2 + 20) = v24 + 32;
              if (v24 == -32)
              {
                v17 = 0;
              }

              else
              {
                v17 = v25 << -v24;
              }
            }

            else
            {
              v17 *= 32;
            }

            *(a2 + 16) = v17;
            *(v18 - 7) = (v23 >> 3) & 3;
            *(v18 - 6) = (v23 & 4) != 0;
            *(v18 - 5) = v23 & 3;
            if (*(v18 - 4))
            {
LABEL_35:
              v26 = v17 >> 26;
              v16 -= 6;
              *(a2 + 20) = v16;
              if (v16 < 0)
              {
                TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
                *a2 += 4;
                v28 = *(a2 + 16);
                v27 = *(a2 + 20);
                v26 |= v28 >> v27;
                v16 = v27 + 32;
                *(a2 + 20) = v27 + 32;
                if (v27 == -32)
                {
                  v17 = 0;
                }

                else
                {
                  v17 = v28 << -v27;
                }
              }

              else
              {
                v17 <<= 6;
              }

              *(a2 + 16) = v17;
              *(v18 - 3) = (v26 >> 4) & 3;
              *(v18 - 2) = (v26 >> 2) & 3;
              *(v18 - 1) = (v26 & 2) != 0;
              v22 = v26 & 1;
              goto LABEL_41;
            }
          }

          else
          {
            *(v18 - 7) = 258;
            *(v18 - 5) = 2;
            if (v19)
            {
              goto LABEL_35;
            }
          }

          *(v18 - 3) = 514;
          v22 = 1;
          *(v18 - 1) = 1;
LABEL_41:
          *v18 = v22;
          v18 += 13;
          if (!--v15)
          {
            goto LABEL_42;
          }
        }
      }

      if (v14 == 3)
      {
        v15 = 2;
        goto LABEL_20;
      }

      if (v14 < 7)
      {
        v15 = 3;
        goto LABEL_20;
      }

      if (v14 == 7)
      {
        v15 = 4;
        goto LABEL_20;
      }
    }

LABEL_42:
    v29 = *a2;
    v30 = *(a2 + 20);
    if ((v30 + 8 * (*(a2 + 8) - *a2)) < 8)
    {
LABEL_83:
      v12 = 0;
      goto LABEL_84;
    }

    while (1)
    {
      v31 = *(a2 + 16);
      v12 = v31 >> 28;
      v32 = v30 - 4;
      *(a2 + 20) = v32;
      if (v32 < 0)
      {
        TBitstreamReader<unsigned int>::FillCacheFrom(a2, v29);
        v29 = (*a2 + 4);
        *a2 = v29;
        v35 = *(a2 + 16);
        v34 = *(a2 + 20);
        v12 = (v35 >> v34) | v12;
        v32 = v34 + 32;
        *(a2 + 20) = v34 + 32;
        if (v34 == -32)
        {
          v33 = 0;
        }

        else
        {
          v33 = v35 << -v34;
        }
      }

      else
      {
        v33 = 16 * v31;
      }

      *(a2 + 16) = v33;
      if (!v12)
      {
        goto LABEL_84;
      }

      v36 = v33 >> 28;
      v37 = v32 - 4;
      *(a2 + 20) = v32 - 4;
      if (v32 - 4 < 0)
      {
        TBitstreamReader<unsigned int>::FillCacheFrom(a2, v29);
        v29 = (*a2 + 4);
        *a2 = v29;
        v40 = *(a2 + 16);
        v39 = *(a2 + 20);
        v36 |= v40 >> v39;
        v37 = v39 + 32;
        *(a2 + 20) = v39 + 32;
        if (v39 == -32)
        {
          v38 = 0;
        }

        else
        {
          v38 = v40 << -v39;
        }
      }

      else
      {
        v38 = 16 * v33;
      }

      *(a2 + 16) = v38;
      if (v36 == 15)
      {
        v41 = HIBYTE(v38);
        v37 -= 8;
        *(a2 + 20) = v37;
        if (v37 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(a2, v29);
          v29 = (*a2 + 4);
          *a2 = v29;
          v43 = *(a2 + 16);
          v42 = *(a2 + 20);
          v41 |= v43 >> v42;
          v37 = v42 + 32;
          *(a2 + 20) = v42 + 32;
          if (v42 == -32)
          {
            v38 = 0;
          }

          else
          {
            v38 = v43 << -v42;
          }
        }

        else
        {
          v38 <<= 8;
        }

        *(a2 + 16) = v38;
        v36 = v41 + 15;
      }

      if (v36 == 270)
      {
        v44 = HIWORD(v38);
        v37 -= 16;
        *(a2 + 20) = v37;
        if (v37 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(a2, v29);
          v29 = (*a2 + 4);
          *a2 = v29;
          v47 = *(a2 + 16);
          v46 = *(a2 + 20);
          v44 |= v47 >> v46;
          v37 = v46 + 32;
          *(a2 + 20) = v46 + 32;
          if (v46 == -32)
          {
            v45 = 0;
          }

          else
          {
            v45 = v47 << -v46;
          }
        }

        else
        {
          v45 = v38 << 16;
        }

        *(a2 + 16) = v45;
        v36 = v44 + 270;
      }

      if (v12 == 3)
      {
        break;
      }

      if (v12 == 2)
      {
        *(a1 + 101) = 1;
        *(a1 + 103) = 1;
        operator new();
      }

      if (v12 != 1)
      {
        if (8 * v36 > v37 + 8 * (*(a2 + 8) - v29))
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_10;
          }

          v54 = 136315394;
          v55 = "MP4ELDSpecificConfig.cpp";
          v56 = 1024;
          v57 = 81;
          v10 = MEMORY[0x1E69E9C10];
          v11 = "%25s:%-5d  MP4ELDSpecificConfig::Deserialize: invalid eldExtLen value";
          goto LABEL_9;
        }

        v50 = a2;
        v51 = 8 * v36;
LABEL_81:
        TBitstreamReader<unsigned int>::SkipBits(v50, v51);
        goto LABEL_82;
      }

      *(a1 + 101) = 257;
LABEL_82:
      v29 = *a2;
      v30 = *(a2 + 20);
      if ((v30 + 8 * (*(a2 + 8) - *a2)) <= 7)
      {
        goto LABEL_83;
      }
    }

    MP4SampleRate::Deserialize((a1 + 104), a2, 1);
    v48 = *(a1 + 104);
    if (!v48)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      v54 = 136315394;
      v55 = "MP4ELDSpecificConfig.cpp";
      v56 = 1024;
      v57 = 64;
      v10 = MEMORY[0x1E69E9C10];
      v11 = "%25s:%-5d  MP4ELDSpecificConfig::Deserialize: invalid downscaling sample rate";
      goto LABEL_9;
    }

    if (*(a1 + 24))
    {
      if (*(a1 + 28) || (v49 = *(a1 + 8) / v48, v49 != floorf(v49)) || (v49 & 1) != 0)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_10;
        }

        v54 = 136315394;
        v55 = "MP4ELDSpecificConfig.cpp";
        v56 = 1024;
        v57 = 73;
        v10 = MEMORY[0x1E69E9C10];
        v11 = "%25s:%-5d  MP4ELDSpecificConfig::Deserialize: incompatible downscaling and SBR settings";
        goto LABEL_9;
      }
    }

    v50 = a2;
    v51 = 4;
    goto LABEL_81;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v54 = 136315394;
    v55 = "MP4ELDSpecificConfig.cpp";
    v56 = 1024;
    v57 = 21;
    v10 = MEMORY[0x1E69E9C10];
    v11 = "%25s:%-5d  MP4ELDSpecificConfig::Deserialize: Error resilience not supported";
LABEL_9:
    _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_ERROR, v11, &v54, 0x12u);
  }

LABEL_10:
  v12 = 4294967090;
LABEL_84:
  v52 = *MEMORY[0x1E69E9840];
  return v12;
}

void MP4ELDSpecificConfig::~MP4ELDSpecificConfig(MP4ELDSpecificConfig *this)
{
  *this = &unk_1F033CF80;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F033CF80;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

uint64_t original::AudioConverterOOP::convertComplexBuffer(original::AudioConverterOOP *this, UInt32 a2, const AudioBufferList *a3, AudioBufferList *a4)
{
  v44 = a2;
  if ((*(this + 104) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v8 = *(this + 12);
  v9 = *(this + 4);
  v10 = *(this + 5);
  v43[0] = this;
  v43[1] = &v44;
  if ((*(this + 12) & 1) != 0 || (*(this + 13) & 1) == 0)
  {
    v36[0] = 0;
    v42 = 0;
  }

  else
  {
    v11 = *(this + 4);
    v12 = *(this + 5);
    v27 = 2756;
    v28 = v11;
    v29 = v12;
    v30 = a2;
    v31 = 0;
    kdebug_trace();
    v36[0] = 1;
    v37 = 2756;
    v38 = v11;
    v39 = v12;
    v40 = a2;
    v41 = 0;
    v26[0] = 0;
    v42 = 1;
    AT::ScopedTrace::~ScopedTrace(v26);
  }

  v13 = atomic_load((*(this + 11) + 240));
  if (v13)
  {
    AudioConverterAPI::ScopedThreadChecker::ScopedThreadChecker(&v34, this + 32, this);
    v14 = v34;
    if (!v34)
    {
      AudioConverterClientBufferManager::AudioConverterClientBufferManager(v26, (*(this + 11) + 40));
      if (a3->mNumberBuffers == *(v32 + 48))
      {
        v25[0] = a3;
        v25[1] = &v44;
        AudioConverterClientBufferManager::AudioConverterClientBufferManager(v22, (*(this + 11) + 136));
        v14 = AudioConverterRenderClient::enterRenderLoop(*(*(this + 11) + 8), *(this + 2), original::AudioConverterOOP::convertComplexBuffer(unsigned int,AudioBufferList const*,AudioBufferList*)::$_1::__invoke, v25, a4, v26, v22, &v44, 0);
        if (*(this + 28) == 1 && a4->mNumberBuffers && a4->mBuffers[0].mDataByteSize)
        {
          AudioConverterAPI::stopTracingStartLatency(this);
        }

        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        ExtendedAudioBufferList_Destroy(v23);
      }

      else
      {
        v15 = _os_log_pack_size();
        message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v15 + 88, 16);
        if (message)
        {
          v17 = message;
          v18 = _os_log_pack_fill();
          mNumberBuffers = a3->mNumberBuffers;
          v20 = *(v32 + 48);
          *v18 = 67109376;
          *(v18 + 4) = mNumberBuffers;
          *(v18 + 8) = 1024;
          *(v18 + 10) = v20;
          caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v17);
        }

        v14 = 4294967246;
      }

      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      ExtendedAudioBufferList_Destroy(v32);
    }

    atomic_store(0, v35);
  }

  else
  {
    v14 = 560164718;
  }

  if (v42 == 1)
  {
    AT::ScopedTrace::~ScopedTrace(v36);
  }

  applesauce::raii::v1::detail::ScopeGuard<original::AudioConverterOOP::convertComplexBuffer(unsigned int,AudioBufferList const*,AudioBufferList*)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(v43);
  return v14;
}

void sub_18F8BE74C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  AudioConverterClientBufferManager::~AudioConverterClientBufferManager(&a26);
  atomic_store(0, *(v26 - 144));
  if (*(v26 - 96) == 1)
  {
    AT::ScopedTrace::~ScopedTrace((v26 - 136));
  }

  applesauce::raii::v1::detail::ScopeGuard<original::AudioConverterOOP::convertComplexBuffer(unsigned int,AudioBufferList const*,AudioBufferList*)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard((v26 - 88));
  _Unwind_Resume(a1);
}

unsigned int **applesauce::raii::v1::detail::ScopeGuard<original::AudioConverterOOP::convertComplexBuffer(unsigned int,AudioBufferList const*,AudioBufferList*)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(unsigned int **result)
{
  v1 = *result;
  if (((*result)[26] & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v2 = *(v1 + 12);
  v3 = v1[4];
  v4 = v1[5];
  v5 = *result[1];
  return result;
}

uint64_t original::AudioConverterOOP::convertComplexBuffer(unsigned int,AudioBufferList const*,AudioBufferList*)::$_1::__invoke(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4, unsigned int **a5)
{
  v5 = *a5;
  *a2 = *a5[1];
  v6 = *v5;
  *a3 = v6;
  if (v6)
  {
    v7 = (v5 + 4);
    v8 = a3 + 4;
    do
    {
      *(v8 - 1) = *(v7 - 1);
      v9 = *v7;
      v7 += 2;
      *v8 = v9;
      v8 += 2;
      --v6;
    }

    while (v6);
  }

  return 0;
}

uint64_t original::AudioConverterOOP::fillComplexBuffer(uint64_t a1, uint64_t (*a2)(uint64_t, unsigned int *, uint64_t, uint64_t, uint64_t), uint64_t a3, UInt32 *a4, AudioBufferList *a5, const AudioStreamPacketDescription *a6, uint64_t a7)
{
  v36 = a4;
  v7 = atomic_load((*(a1 + 88) + 240));
  if ((v7 & 1) == 0)
  {
    return 560164718;
  }

  if (a7)
  {
    v8 = 1869627199;
    v9 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v9 + 88, 16);
    if (message)
    {
      v11 = message;
      *_os_log_pack_fill() = 0;
      caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v11);
    }
  }

  else
  {
    if ((*(a1 + 104) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v17 = *(a1 + 96);
    v18 = *(a1 + 16);
    v19 = *(a1 + 20);
    v20 = *v36;
    v35[0] = a1;
    v35[1] = &v36;
    if ((*(a1 + 12) & 1) != 0 || (*(a1 + 13) & 1) == 0)
    {
      v28[0] = 0;
      v34 = 0;
    }

    else
    {
      v21 = *(a1 + 16);
      v22 = *(a1 + 20);
      v23 = *v36;
      v37[1] = 2756;
      v38 = v21;
      v39 = v22;
      v40 = v23;
      v41 = 0;
      kdebug_trace();
      v28[0] = 1;
      v29 = 2756;
      v30 = v21;
      v31 = v22;
      v32 = v23;
      v33 = 0;
      LOBYTE(v37[0]) = 0;
      v34 = 1;
      AT::ScopedTrace::~ScopedTrace(v37);
    }

    AudioConverterAPI::ScopedThreadChecker::ScopedThreadChecker(v37, a1 + 32, a1);
    v8 = v37[0];
    if (!v37[0])
    {
      v8 = AudioConverterRenderClient::enterRenderLoop(*(*(a1 + 88) + 8), *(a1 + 8), a2, a3, a5, *(a1 + 88) + 40, *(a1 + 88) + 136, v36, a6);
      if (*(a1 + 28) == 1)
      {
        if (*v36)
        {
          v24 = *(a1 + 20);
          v25 = *(a1 + 24);
          *(a1 + 28) = 0;
          v26 = *(a1 + 16);
          kdebug_trace();
        }
      }
    }

    atomic_store(0, v38);
    if (v34 == 1)
    {
      AT::ScopedTrace::~ScopedTrace(v28);
    }

    applesauce::raii::v1::detail::ScopeGuard<original::AudioConverterOOP::fillComplexBuffer(int (*)(OpaqueAudioConverter *,unsigned int *,AudioBufferList *,AudioStreamPacketDescription **,void *),void *,unsigned int *,AudioBufferList *,AudioStreamPacketDescription *,AudioStreamPacketDependencyDescription *,ConverterContext)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(v35);
  }

  return v8;
}

void sub_18F8BEA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  applesauce::raii::v1::detail::ScopeGuard<original::AudioConverterOOP::fillComplexBuffer(int (*)(OpaqueAudioConverter *,unsigned int *,AudioBufferList *,AudioStreamPacketDescription **,void *),void *,unsigned int *,AudioBufferList *,AudioStreamPacketDescription *,AudioStreamPacketDependencyDescription *,ConverterContext)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(va);
  _Unwind_Resume(a1);
}

unsigned int ***applesauce::raii::v1::detail::ScopeGuard<original::AudioConverterOOP::fillComplexBuffer(int (*)(OpaqueAudioConverter *,unsigned int *,AudioBufferList *,AudioStreamPacketDescription **,void *),void *,unsigned int *,AudioBufferList *,AudioStreamPacketDescription *,AudioStreamPacketDependencyDescription *,ConverterContext)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(unsigned int ***result)
{
  v1 = *result;
  if (((*result)[13] & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v2 = v1[12];
  v3 = *(v1 + 4);
  v4 = *(v1 + 5);
  v5 = **result[1];
  return result;
}

uint64_t original::AudioConverterOOP::convertBuffer(original::AudioConverterOOP *this, unsigned int a2, const void *a3, unsigned int *a4, void *a5)
{
  v55 = a4;
  if ((*(this + 104) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v9 = *(this + 12);
  v10 = *(this + 4);
  v11 = *(this + 5);
  v12 = *a4;
  v54[0] = this;
  v54[1] = &v55;
  if ((*(this + 12) & 1) != 0 || (*(this + 13) & 1) == 0)
  {
    v47[0] = 0;
    v53 = 0;
  }

  else
  {
    v13 = *(this + 4);
    v14 = *(this + 5);
    v30 = 2756;
    v31 = v13;
    v32 = v14;
    v33 = 0;
    v34 = 0;
    kdebug_trace();
    v47[0] = 1;
    v48 = 2756;
    v49 = v13;
    v50 = v14;
    v51 = 0;
    v52 = 0;
    v29[0] = 0;
    v53 = 1;
    AT::ScopedTrace::~ScopedTrace(v29);
  }

  v15 = atomic_load((*(this + 11) + 240));
  if (v15)
  {
    AudioConverterAPI::ScopedThreadChecker::ScopedThreadChecker(&v45, this + 32, this);
    v16 = v45;
    if (!v45)
    {
      v17 = *(this + 11);
      v18 = *(*(v17 + 80) + 56);
      v19 = *(*(v17 + 176) + 56);
      v20 = *v55;
      v40.mBuffers[0].mData = a5;
      v41 = 1;
      v42 = v18;
      v43 = a2;
      v44 = a3;
      *&v40.mNumberBuffers = 1;
      v40.mBuffers[0].mNumberChannels = v19;
      v40.mBuffers[0].mDataByteSize = v20;
      v38 = a2 / *(v17 + 120);
      v39[0] = &v41;
      v39[1] = &v38;
      v37 = v20 / *(v17 + 216);
      AudioConverterClientBufferManager::AudioConverterClientBufferManager(v29, (v17 + 40));
      AudioConverterClientBufferManager::AudioConverterClientBufferManager(v26, (*(this + 11) + 136));
      v16 = AudioConverterRenderClient::enterRenderLoop(*(*(this + 11) + 8), *(this + 2), original::AudioConverterOOP::convertBuffer(unsigned int,void const*,unsigned int *,void *)::$_1::__invoke, v39, &v40, v29, v26, &v37, 0);
      v21 = *(*(this + 11) + 216) * v37;
      *v55 = v21;
      if (*(this + 28) == 1 && v21)
      {
        v22 = *(this + 5);
        v23 = *(this + 6);
        *(this + 28) = 0;
        v24 = *(this + 4);
        kdebug_trace();
      }

      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      ExtendedAudioBufferList_Destroy(v27);
      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }

      ExtendedAudioBufferList_Destroy(v35);
    }

    atomic_store(0, v46);
  }

  else
  {
    v16 = 560164718;
  }

  if (v53 == 1)
  {
    AT::ScopedTrace::~ScopedTrace(v47);
  }

  applesauce::raii::v1::detail::ScopeGuard<original::AudioConverterOOP::convertBuffer(unsigned int,void const*,unsigned int *,void *)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(v54);
  return v16;
}

void sub_18F8BED88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  AudioConverterClientBufferManager::~AudioConverterClientBufferManager(va);
  atomic_store(0, *(v15 - 144));
  if (*(v15 - 96) == 1)
  {
    AT::ScopedTrace::~ScopedTrace((v15 - 136));
  }

  applesauce::raii::v1::detail::ScopeGuard<original::AudioConverterOOP::convertBuffer(unsigned int,void const*,unsigned int *,void *)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard((v15 - 88));
  _Unwind_Resume(a1);
}

unsigned int ***applesauce::raii::v1::detail::ScopeGuard<original::AudioConverterOOP::convertBuffer(unsigned int,void const*,unsigned int *,void *)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(unsigned int ***result)
{
  v1 = *result;
  if (((*result)[13] & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v2 = v1[12];
  v3 = *(v1 + 4);
  v4 = *(v1 + 5);
  v5 = **result[1];
  return result;
}

uint64_t original::AudioConverterOOP::convertBuffer(unsigned int,void const*,unsigned int *,void *)::$_1::__invoke(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4, unsigned int **a5)
{
  v5 = *a5;
  *a2 = *a5[1];
  v6 = *v5;
  *a3 = v6;
  if (v6)
  {
    v7 = (v5 + 4);
    v8 = a3 + 4;
    do
    {
      *(v8 - 1) = *(v7 - 1);
      v9 = *v7;
      v7 += 2;
      *v8 = v9;
      v8 += 2;
      --v6;
    }

    while (v6);
  }

  return 0;
}

uint64_t original::AudioConverterOOP::setProperty(original::AudioConverterOOP *this, unsigned int a2, const void *a3, int *a4)
{
  v5 = a3;
  v63 = *MEMORY[0x1E69E9840];
  if (*(this + 12))
  {
    v8 = 0;
  }

  else
  {
    *buf_4 = 2753;
    *&buf_4[4] = a2;
    memset(&buf_4[12], 0, 24);
    kdebug_trace();
    v53 = 2753;
    v54 = a2;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    LOBYTE(buf) = 0;
    AT::ScopedTrace::~ScopedTrace(&buf);
    v8 = 1;
  }

  v52[0] = v8;
  v58 = v8;
  if (!a4)
  {
    v48 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v48 + 88, 16);
    if (message)
    {
      v50 = message;
      v51 = _os_log_pack_fill();
      *v51 = 67109120;
      v51[1] = a2;
      caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v50);
    }

    v26 = 4294967246;
    goto LABEL_43;
  }

  if (a2 == 1684891491)
  {
    if (v5)
    {
      v9 = *(*(*(this + 11) + 8) + 400);
      if (v9)
      {
        AudioConverterCapturer::setDecompressionCookie(v9, a4, v5);
      }
    }

    v10 = v5 == 4;
    goto LABEL_31;
  }

  v10 = v5 == 4;
  if (a2 == 1919837298 && v5 == 4)
  {
    v11 = *(*(this + 11) + 8);
    v12 = *a4;
    v13 = *(v11 + 80);
    if (*a4)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(v11 + 368);
    }

    object = v14;
    if (v14 != *(v13 + 88))
    {
      *(v13 + 88) = v14;
      v15 = ACRendererSharedMemory::computeMemoryConfig((v11 + 64));
      if (v15)
      {
        goto LABEL_18;
      }

      v16 = *(v11 + 80);
      v17 = *v16;
      v18 = v16[1];
      *(v11 + 120) = v16[2];
      *(v11 + 104) = v18;
      *(v11 + 88) = v17;
      v19 = v16[3];
      v20 = v16[4];
      v21 = v16[5];
      *(v11 + 184) = v16[6];
      *(v11 + 168) = v21;
      *(v11 + 152) = v20;
      *(v11 + 136) = v19;
      v22 = v16[7];
      v23 = v16[8];
      v24 = v16[9];
      *(v11 + 248) = v16[10];
      *(v11 + 232) = v24;
      *(v11 + 216) = v23;
      *(v11 + 200) = v22;
      *(v11 + 80) = v11 + 88;
      v15 = ACRendererSharedMemory::partitionMemory((v11 + 64), 0);
      if (v15)
      {
LABEL_18:
        v26 = v15;
        goto LABEL_19;
      }

      v30 = *(v11 + 272);
      can_send = audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,unilaterally_billed_shared_memory>::can_send(v11 + 8, v25);
      v32 = HIDWORD(can_send);
      if (can_send & 0x100000000) != 0 && (can_send)
      {
        *v30 = 4;
        v32 = audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,unilaterally_billed_shared_memory>::signal_wait_with_timeout(v11 + 8) >> 32;
      }

      if (!v32)
      {
        v26 = 561277293;
        goto LABEL_19;
      }

      v26 = *(v30 + 4);
      if (v26)
      {
LABEL_19:
        if (gAudioConverterDeferredLogOnce != -1)
        {
          dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
        }

        v27 = *gAudioConverterLog;
        if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
        {
          v28 = *(v11 + 384);
          v29 = "deallocate";
          *buf_4 = "AudioConverterRenderClient.h";
          buf = 136316162;
          *&buf_4[8] = 1024;
          if (!v12)
          {
            v29 = "allocate";
          }

          *&buf_4[10] = 548;
          *&buf_4[14] = 2048;
          *&buf_4[16] = v28;
          *&buf_4[24] = 2080;
          *&buf_4[26] = v29;
          *&buf_4[34] = 1024;
          v62 = v26;
          _os_log_impl(&dword_18F5DF000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioConverter -> %p: Repartitioning the shared memory to %s metadata failed. Returning %i", &buf, 0x2Cu);
        }

        goto LABEL_43;
      }
    }

    v10 = 1;
  }

LABEL_31:
  v33 = CheckProperty(a2, a4, a3);
  if (v33)
  {
    v26 = v33;
    v34 = _os_log_pack_size();
    v35 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v34 + 88, 16);
    if (v35)
    {
      v36 = v35;
      v37 = _os_log_pack_fill();
      *v37 = 134218496;
      *(v37 + 4) = this;
      *(v37 + 12) = 1024;
      *(v37 + 14) = a2;
      *(v37 + 18) = 1024;
      *(v37 + 20) = v26;
      caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v36);
    }

    goto LABEL_43;
  }

  if (a2 != 1970103906)
  {
    PropertyMarshaller::PropertyMarshaller(&buf, 0);
  }

  if (!v10)
  {
    v26 = 561211770;
    goto LABEL_43;
  }

  v38 = atomic_load((*(this + 11) + 240));
  if ((v38 & 1) == 0)
  {
    v26 = 560164718;
    goto LABEL_43;
  }

  v39 = *(this + 11);
  v40 = *(v39 + 32);
  if (*a4)
  {
    if (!v40)
    {
      v41 = *MEMORY[0x1E69E9AC8];
      v42 = *(v39 + 24);
      operator new();
    }

    goto LABEL_59;
  }

  if (!v40)
  {
LABEL_59:
    v26 = 0;
    goto LABEL_43;
  }

  v45 = AudioConverterXPC_Client::stopMessengerForProperties(*v39, v40);
  if (HIDWORD(v45) || (v26 = v45) == 0)
  {
    std::unique_ptr<AudioConverterPropertyClient>::reset[abi:ne200100]((*(this + 11) + 32), 0);
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v47 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
    {
      buf = 136315650;
      *buf_4 = "AudioConverterOOPOriginal.cpp";
      *&buf_4[8] = 1024;
      *&buf_4[10] = 673;
      *&buf_4[14] = 2048;
      *&buf_4[16] = this;
      _os_log_impl(&dword_18F5DF000, v47, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioConverterOOP -> %p: Stopped using messenger for bundle data", &buf, 0x1Cu);
    }

    goto LABEL_59;
  }

  if (gAudioConverterDeferredLogOnce != -1)
  {
    dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
  }

  v46 = *gAudioConverterLog;
  if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
  {
    buf = 136315650;
    *buf_4 = "AudioConverterOOPOriginal.cpp";
    *&buf_4[8] = 1024;
    *&buf_4[10] = 676;
    *&buf_4[14] = 2048;
    *&buf_4[16] = this;
    _os_log_impl(&dword_18F5DF000, v46, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioConverterOOP -> %p: Unable to stop using messenger for bundle data", &buf, 0x1Cu);
  }

LABEL_43:
  if (v58 == 1)
  {
    AT::ScopedTrace::~ScopedTrace(v52);
  }

  v43 = *MEMORY[0x1E69E9840];
  return v26;
}

void sub_18F8BF7FC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t original::AudioConverterOOP::getProperty(original::AudioConverterOOP *this, unsigned int a2, unsigned int *a3, const void **a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v42 = a4;
  if ((*(this + 12) & 1) != 0 || (*(this + 13) & 1) == 0)
  {
    v35[0] = 0;
    v41 = 0;
  }

  else
  {
    v30 = 2754;
    v31 = a2;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    kdebug_trace();
    v35[0] = 1;
    v36 = 2754;
    v37 = a2;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v29[0] = 0;
    v41 = 1;
    AT::ScopedTrace::~ScopedTrace(v29);
  }

  if (!a4)
  {
    v20 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v20 + 88, 16);
    if (message)
    {
      v22 = message;
      v23 = _os_log_pack_fill();
      *v23 = 67109120;
      v23[1] = a2;
      v24 = *(gAudioConverterDeferredLog + 16);
      v25 = v22;
LABEL_34:
      caulk::concurrent::messenger::enqueue(v24, v25);
    }

LABEL_35:
    SpeechCodecBundleData = 4294967246;
    goto LABEL_26;
  }

  if (!a3)
  {
    v26 = _os_log_pack_size();
    v27 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v26 + 88, 16);
    if (v27)
    {
      v28 = v27;
      *_os_log_pack_fill() = 0;
      v24 = *(gAudioConverterDeferredLog + 16);
      v25 = v28;
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (a2 == 1885955104)
  {
    if (PlatformUtilities::IsInternalBuild(this))
    {
      if (*a3 >= 4)
      {
        *a3 = 4;
        Server = AudioConverterXPC_Client::queryServer(**(this + 11));
        SpeechCodecBundleData = 0;
        v10 = 0;
        if (Server > 0x100000000)
        {
          v10 = Server;
        }

        *a4 = v10;
        goto LABEL_26;
      }

LABEL_25:
      SpeechCodecBundleData = 561211770;
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v11 = CheckProperty(a2, a4, a3);
  if (!v11)
  {
    if (a2 == 1970103906)
    {
      if (*a3 == 4)
      {
        SpeechCodecBundleData = 0;
        *a4 = *(*(this + 11) + 32) != 0;
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    if (a2 == 1651401828)
    {
      v16 = *(this + 11);
      if (*(v16 + 32))
      {
        v17 = atomic_load((v16 + 240));
        if ((v17 & 1) == 0)
        {
          SpeechCodecBundleData = 560164718;
          goto LABEL_26;
        }

        if (*a3 != 336)
        {
          goto LABEL_25;
        }

        SpeechCodecBundleData = AudioConverterPropertyClient::getSpeechCodecBundleData(*(*(this + 11) + 32), v42);
        if (SpeechCodecBundleData != 1768846202)
        {
          goto LABEL_26;
        }
      }
    }

LABEL_22:
    PropertyMarshaller::PropertyMarshaller(v29, 0);
  }

  SpeechCodecBundleData = v11;
  v12 = _os_log_pack_size();
  v13 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v12 + 88, 16);
  if (v13)
  {
    v14 = v13;
    v15 = _os_log_pack_fill();
    *v15 = 134218496;
    *(v15 + 4) = this;
    *(v15 + 12) = 1024;
    *(v15 + 14) = a2;
    *(v15 + 18) = 1024;
    *(v15 + 20) = SpeechCodecBundleData;
    caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v14);
  }

LABEL_26:
  if (v41 == 1)
  {
    AT::ScopedTrace::~ScopedTrace(v35);
  }

  v18 = *MEMORY[0x1E69E9840];
  return SpeechCodecBundleData;
}

void sub_18F8BFFEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t object, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a27 == 1)
  {
    AT::ScopedTrace::~ScopedTrace(&a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t original::AudioConverterOOP::getPropertyInfo(original::AudioConverterOOP *this, unsigned int a2, unsigned int *a3, unsigned __int8 *a4)
{
  if (*(this + 12))
  {
    v8 = 0;
  }

  else
  {
    v22 = 2755;
    v23 = a2;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    kdebug_trace();
    v15 = 2755;
    v16 = a2;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v21[0] = 0;
    AT::ScopedTrace::~ScopedTrace(v21);
    v8 = 1;
  }

  v14[0] = v8;
  v20 = v8;
  v9 = atomic_load((*(this + 11) + 240));
  if (v9)
  {
    if (a2 == 1970103906)
    {
      v10 = 0;
      *a3 = 4;
      *a4 = 1;
    }

    else if (a2 == 1885955104 && PlatformUtilities::IsInternalBuild(this))
    {
      v10 = 0;
      *a3 = 4;
      *a4 = 0;
    }

    else
    {
      if ((*(this + 104) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      PropertyInfo = AudioConverterXPC_Client::getPropertyInfo(**(this + 11), *(this + 12), a2);
      v10 = PropertyInfo;
      if ((v12 & 1) != 0 || !PropertyInfo)
      {
        if (a3)
        {
          *a3 = PropertyInfo;
        }

        if (a4)
        {
          *a4 = BYTE4(PropertyInfo);
        }

        if (v12)
        {
          v10 = 0;
        }
      }
    }
  }

  else
  {
    v10 = 560164718;
  }

  if (v20 == 1)
  {
    AT::ScopedTrace::~ScopedTrace(v14);
  }

  return v10;
}