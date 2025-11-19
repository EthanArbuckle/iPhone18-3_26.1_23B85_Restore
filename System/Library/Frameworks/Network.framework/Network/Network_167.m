void nw_link_set_local_congestion_info(_DWORD *a1, int a2, int a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    return;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_link_set_local_congestion_info";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v5, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_link_set_local_congestion_info";
        v8 = "%{public}s called with null link_congestion_info";
LABEL_17:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else
    {
      if (v11 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v6 = __nwlog_obj();
        v7 = type;
        v10 = os_log_type_enabled(v6, type);
        if (backtrace_string)
        {
          if (v10)
          {
            *buf = 136446466;
            v14 = "nw_link_set_local_congestion_info";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null link_congestion_info, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_link_set_local_congestion_info";
        v8 = "%{public}s called with null link_congestion_info, no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_link_set_local_congestion_info";
        v8 = "%{public}s called with null link_congestion_info, backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }
}

uint64_t ZSTD_compressRleLiteralsBlock(_DWORD *a1, _BYTE *a2, unint64_t a3)
{
  if (a3 <= 0x1F)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 > 0xFFF)
  {
    ++v3;
  }

  if (v3 == 3)
  {
    *a1 = (16 * a3) | 0xD;
  }

  else if (v3 == 2)
  {
    *a1 = (16 * a3) | 5;
  }

  else
  {
    *a1 = (8 * a3) | 1;
  }

  *(a1 + v3) = *a2;
  return (v3 + 1);
}

unint64_t ZSTD_getFrameHeader_advanced(uint64_t a1, unsigned int *a2, size_t a3, int a4)
{
  if (a4)
  {
    result = 1;
  }

  else
  {
    result = 5;
  }

  if (!a2 && a3)
  {
    return -1;
  }

  if (result > a3)
  {
    if (a3 && a4 != 1)
    {
      v6 = result;
      __dst = -47205080;
      memcpy(&__dst, a2, a3);
      if (__dst == -47205080)
      {
        return v6;
      }

      __dst = 407710288;
      memcpy(&__dst, a2, a3);
      if (__dst >> 4 == 25481893)
      {
        return v6;
      }

      return -10;
    }

    return result;
  }

  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  if (a4 == 1)
  {
    v9 = 1;
    v10 = a2;
LABEL_18:
    v11 = *v10;
    v12 = ZSTD_did_fieldSize[v11 & 3] + v9 + *(&ZSTD_fcs_fieldSize + ((v11 >> 3) & 0x18));
    if ((v11 & 0x20) == 0)
    {
      ++v12;
    }

    v13 = v12 + ((v11 < 0x40) & ((v11 & 0x20) >> 5));
    if (v13 > a3)
    {
      return v13;
    }

    *(a1 + 24) = v13;
    v14 = *(a2 + result - 1);
    if ((v14 & 8) != 0)
    {
      return -14;
    }

    if ((v14 & 0x20) != 0)
    {
      v16 = 0;
    }

    else
    {
      v15 = *(a2 + result);
      if (v15 > 0xAF)
      {
        return -16;
      }

      ++result;
      v16 = (1 << ((v15 >> 3) + 10)) + ((1 << ((v15 >> 3) + 10)) >> 3) * (v15 & 7);
    }

    v17 = v14 & 3;
    v18 = v14 >> 6;
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v17 = *(a2 + result);
        result += 2;
      }

      else
      {
        v17 = *(a2 + result);
        result += 4;
      }
    }

    else if ((v14 & 3) != 0)
    {
      v17 = *(a2 + result++);
    }

    v19 = (v14 >> 2) & 1;
    if (v14 >> 6 > 1)
    {
      if (v18 == 2)
      {
        v20 = *(a2 + result);
      }

      else
      {
        v20 = *(a2 + result);
      }
    }

    else if (v18)
    {
      v20 = *(a2 + result) + 256;
    }

    else if ((v14 & 0x20) != 0)
    {
      v20 = *(a2 + result);
    }

    else
    {
      v20 = -1;
    }

    result = 0;
    if ((v14 & 0x20) != 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = v16;
    }

    *a1 = v20;
    *(a1 + 8) = v21;
    if (v21 >= 0x20000)
    {
      LODWORD(v21) = 0x20000;
    }

    *(a1 + 16) = v21;
    *(a1 + 20) = 0;
    *(a1 + 28) = v17;
    *(a1 + 32) = v19;
    return result;
  }

  if (*a2 == -47205080)
  {
    v10 = (a2 + result - 1);
    v9 = result;
    goto LABEL_18;
  }

  if (*a2 >> 4 != 25481893)
  {
    return -10;
  }

  if (a3 < 8)
  {
    return 8;
  }

  result = 0;
  *a1 = a2[1];
  *(a1 + 20) = 1;
  return result;
}

uint64_t ZSTD_decompressMultiFrame(uint64_t a1, _BYTE *a2, uint64_t a3, unsigned int *a4, unint64_t a5, uint64_t a6)
{
  v6 = a5;
  *(&v137[13] + 4) = *MEMORY[0x1E69E9840];
  v9 = (a1 + 26684);
  if (a6)
  {
    v10 = *(a6 + 8);
    v11 = *(a6 + 16);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v12 = *(a1 + 30104);
  v13 = v12 == 0;
  v14 = 5;
  if (v12)
  {
    v14 = 1;
  }

  if (v14 > a5)
  {
    v15 = a2;
LABEL_8:
    if (v6)
    {
      return -72;
    }

    else
    {
      return v15 - a2;
    }
  }

  v17 = 0;
  v18 = (a6 + 24576);
  v133 = (a1 + 29976);
  v19 = (a1 + 29888);
  v20 = a1 + 32;
  v21 = (a1 + 10296);
  v22 = (v9 + 827);
  v23 = (a1 + 6192);
  v24 = (a1 + 4136);
  if (v11)
  {
    v25 = v10 == 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = !v25;
  v27 = v10 + v11;
  v132 = (a1 + 30008);
  v28 = a6 + 24;
  v29 = a6 + 6184;
  v130 = a6 + 4128;
  v129 = a6 + 10288;
  v122 = (v10 + 2);
  v121 = v11 - 8;
  v30 = 0uLL;
  v31 = xmmword_182AED520;
  v15 = a2;
  while (1)
  {
    if (v13)
    {
      while (v6 >= 4 && *a4 >> 4 == 25481893)
      {
        if (v6 < 8)
        {
          return -72;
        }

        v32 = a4[1];
        if (v32 > 0xFFFFFFF7)
        {
          return -14;
        }

        v33 = v32 + 8;
        if (v33 <= v6)
        {
          v16 = v33;
        }

        else
        {
          v16 = -72;
        }

        if (v16 > 0xFFFFFFFFFFFFFF88)
        {
          return v16;
        }

        a4 = (a4 + v16);
        v6 -= v16;
        if (v6 < v14)
        {
          goto LABEL_8;
        }
      }
    }

    __dst = v15;
    if (a6)
    {
      v9[880] = *(a1 + 29912) != *(a6 + 8) + *(a6 + 16);
      if (v12)
      {
        v34 = 1;
      }

      else
      {
        v34 = 5;
      }

      *(a1 + 29920) = v34;
      *v19 = v30;
      v19[1] = v30;
      *v133 = 0;
      v133[1] = 0;
      *(a1 + 10296) = 201326604;
      *v22 = v31;
      v9[873] = 1;
      *v9 = 0x400000001;
      v9[2] = 8;
      *a1 = v20;
      *(a1 + 8) = v23;
      *(a1 + 16) = v24;
      *(a1 + 24) = v21;
      v9[879] = v18[685];
      v35 = *(a6 + 8);
      *(a1 + 29896) = v35;
      *(a1 + 29904) = v35;
      v36 = v35 + *(a6 + 16);
      *(a1 + 29912) = v36;
      *(a1 + 29888) = v36;
      if (v18[686])
      {
        *(a1 + 30000) = 0x100000001;
        *a1 = v28;
        *(a1 + 8) = v29;
        *(a1 + 16) = v130;
        *(a1 + 24) = v129;
        *v9 = v18[525];
        v9[1] = v18[526];
        v9[2] = v18[527];
        if (!a3)
        {
          goto LABEL_63;
        }
      }

      else
      {
        *(a1 + 30000) = 0;
LABEL_60:
        if (!a3)
        {
          goto LABEL_63;
        }
      }

LABEL_61:
      if (v36 != v15)
      {
        *(a1 + 29912) = v36;
        *(a1 + 29904) = &v15[v35 - v36];
        *(a1 + 29896) = v15;
        *(a1 + 29888) = v15;
      }

      goto LABEL_63;
    }

    v35 = 0;
    v36 = 0;
    *(a1 + 29920) = v14;
    *v19 = v30;
    v19[1] = v30;
    *v133 = 0;
    v133[1] = 0;
    *(a1 + 10296) = 201326604;
    v9[879] = 0;
    *v22 = v31;
    v9[873] = 1;
    *v9 = 0x400000001;
    v9[2] = 8;
    *a1 = v20;
    *(a1 + 8) = v23;
    *(a1 + 16) = v24;
    *(a1 + 24) = v21;
    if (!v26)
    {
      goto LABEL_60;
    }

    if (v11 >= 8 && *v10 == -332356553)
    {
      v9[879] = v10[1];
      if (v11 == 8)
      {
        return -30;
      }

      v106 = v31;
      v108 = v28;
      v37 = v27;
      v110 = v26;
      v125 = v23;
      v127 = v24;
      v112 = v22;
      v114 = v21;
      v116 = v17;
      v118 = v19;
      v100 = v11;
      v102 = v18;
      v38 = a3;
      v39 = a2;
      v123 = v20;
      DTableX2_wksp = HUF_readDTableX2_wksp(v21, v122, v121, v20);
      if (DTableX2_wksp > 0xFFFFFFFFFFFFFF88)
      {
        return -30;
      }

      v41 = &v122[DTableX2_wksp];
      v135 = 0;
      v136 = 31;
      v42 = FSE_readNCount_bmi2(v137, &v136, &v135, v41, v37 - v41);
      if (v42 > 0xFFFFFFFFFFFFFF88)
      {
        return -30;
      }

      if (v136 > 0x1F)
      {
        return -30;
      }

      if (v135 >= 9)
      {
        return -30;
      }

      v43 = v42;
      ZSTD_buildFSETable(v127, v137, v136, &OF_base, &OF_bits, v135, a1 + 26696);
      v44 = &v41[v43];
      v135 = 0;
      v136 = 52;
      v45 = FSE_readNCount_bmi2(v137, &v136, &v135, v44, v37 - v44);
      if (v45 > 0xFFFFFFFFFFFFFF88)
      {
        return -30;
      }

      if (v136 > 0x34)
      {
        return -30;
      }

      if (v135 >= 0xA)
      {
        return -30;
      }

      v46 = v45;
      ZSTD_buildFSETable(v125, v137, v136, &ML_base, ML_bits_36218, v135, a1 + 26696);
      v47 = &v44[v46];
      v135 = 0;
      v136 = 35;
      v48 = FSE_readNCount_bmi2(v137, &v136, &v135, v47, v37 - v47);
      if (v48 > 0xFFFFFFFFFFFFFF88)
      {
        return -30;
      }

      if (v136 > 0x23)
      {
        return -30;
      }

      if (v135 >= 0xA)
      {
        return -30;
      }

      v49 = v48;
      ZSTD_buildFSETable(v123, v137, v136, &LL_base, LL_bits_36216, v135, a1 + 26696);
      v50 = &v47[v49];
      v35 = &v47[v49 + 12];
      if (v35 > v37)
      {
        return -30;
      }

      v27 = v37;
      v51 = *v50;
      v16 = -30;
      if (!v51)
      {
        return v16;
      }

      v52 = &v27[-v35];
      a2 = v39;
      v19 = v118;
      a6 = 0;
      a3 = v38;
      v11 = v100;
      v18 = v102;
      v20 = v123;
      v23 = v125;
      v17 = v116;
      v22 = v112;
      v21 = v114;
      v24 = v127;
      v26 = v110;
      v28 = v108;
      v30 = 0uLL;
      v31 = v106;
      v15 = __dst;
      if (&v27[-v35] < v51)
      {
        return v16;
      }

      *v9 = v51;
      v53 = *(v50 + 1);
      if (!v53)
      {
        return v16;
      }

      if (v52 < v53)
      {
        return v16;
      }

      v9[1] = v53;
      v54 = *(v50 + 2);
      if (!v54)
      {
        return v16;
      }

      if (v52 < v54)
      {
        return v16;
      }

      v9[2] = v54;
      if (v35 - v10 > 0xFFFFFFFFFFFFFF88)
      {
        return v16;
      }

      *(a1 + 30000) = 0x100000001;
      v55 = *(a1 + 29888);
      v56 = *(a1 + 29896);
    }

    else
    {
      v56 = 0;
      v55 = 0;
      v35 = v10;
    }

    *(a1 + 29912) = v55;
    *(a1 + 29904) = v35 + v56 - v55;
    *(a1 + 29896) = v35;
    *(a1 + 29888) = v27;
    v36 = v27;
    if (a3)
    {
      goto LABEL_61;
    }

LABEL_63:
    v57 = v9[855];
    v58 = 9;
    if (v57)
    {
      v58 = 5;
    }

    if (v6 < v58)
    {
      return -72;
    }

    if (v57)
    {
      v59 = 1;
    }

    else
    {
      v59 = 5;
    }

    v60 = *(a4 + v59 - 1);
    v61 = (v60 < 0x40) & ((v60 & 0x20) >> 5);
    v62 = ZSTD_did_fieldSize[v60 & 3] + v59 + *(&ZSTD_fcs_fieldSize + ((v60 >> 3) & 0x18));
    if ((v60 & 0x20) == 0)
    {
      ++v62;
    }

    v16 = v62 + v61;
    if ((v62 + v61) > 0xFFFFFFFFFFFFFF88)
    {
      goto LABEL_89;
    }

    if (v6 < v16 + 3)
    {
      return -72;
    }

    v107 = v31;
    v109 = v28;
    v104 = v27;
    v105 = a2;
    v111 = v26;
    v126 = v23;
    v128 = v24;
    v113 = v22;
    v115 = v21;
    v117 = v17;
    v124 = v20;
    v119 = v19;
    v120 = a6;
    v63 = a3;
    FrameHeader_advanced = ZSTD_getFrameHeader_advanced(a1 + 29928, a4, v16, v57);
    if (FrameHeader_advanced <= 0xFFFFFFFFFFFFFF88)
    {
      break;
    }

    v16 = FrameHeader_advanced;
    a2 = v105;
    a6 = v120;
    a3 = v63;
LABEL_88:
    v19 = v119;
    v20 = v124;
    v23 = v126;
    v17 = v117;
    v22 = v113;
    v21 = v115;
    v24 = v128;
    v26 = v111;
    v27 = v104;
    v28 = v109;
    v30 = 0uLL;
    v31 = v107;
LABEL_89:
    v78 = __dst;
LABEL_90:
    v80 = v16 > 0xFFFFFFFFFFFFFF88 && v16 == -10;
    if (v80 & v17)
    {
      return -72;
    }

    if (v16 > 0xFFFFFFFFFFFFFF88)
    {
      return v16;
    }

    v15 = &v78[v16];
    a3 -= v16;
    v12 = v9[855];
    v13 = v12 == 0;
    if (v12)
    {
      v14 = 1;
    }

    else
    {
      v14 = 5;
    }

    v17 = 1;
    if (v6 < v14)
    {
      goto LABEL_8;
    }
  }

  v65 = 0uLL;
  v66 = __dst;
  if (!FrameHeader_advanced)
  {
    v67 = v63;
    v103 = v18;
    v99 = v10;
    if (v9[885] == 1)
    {
      v68 = *(a1 + 30216);
      if (v68)
      {
        if (*(a1 + 30192))
        {
          v69 = v9[818];
          v70 = v68[1];
          LODWORD(v137[0]) = v69;
          v71 = ZSTD_XXH64(v137, 4uLL);
          v66 = __dst;
          v65 = 0uLL;
          v67 = v63;
          v72 = v71 & (v70 - 1);
          v73 = *v68;
          while (1)
          {
            v74 = *(v73 + 8 * v72);
            if (!v74)
            {
              break;
            }

            v75 = *(v74 + 27316);
            v72 = (v72 & (v70 - 1)) + 1;
            if (v75 == v69 || v75 == 0)
            {
              ZSTD_freeDDict(*(a1 + 30184));
              v66 = __dst;
              v65 = 0uLL;
              v67 = v63;
              *(a1 + 30184) = 0;
              v77 = v9[818];
              v9[879] = v77;
              *(a1 + 30192) = v74;
              v9[881] = -1;
              goto LABEL_104;
            }
          }
        }
      }
    }

    v77 = v9[818];
LABEL_104:
    if (v77 && v9[879] != v77)
    {
      return -32;
    }

    if (v9[819])
    {
      v81 = v9[856];
      v9[857] = v81 == 0;
      if (!v81)
      {
        *(a1 + 30088) = 0;
        *(a1 + 30056) = v65;
        *(a1 + 30072) = v65;
        *(a1 + 30024) = v65;
        *(a1 + 30040) = v65;
        *v132 = v65;
        *(a1 + 30016) = xmmword_182B08D10;
        *(a1 + 30040) = 0x61C8864E7A143579;
      }
    }

    else
    {
      v9[857] = 0;
    }

    v101 = v11;
    *v133 += v16;
    v82 = v9[887];
    if (v82)
    {
      if (v9[815] < v82)
      {
        v82 = v9[815];
      }

      v9[815] = v82;
    }

    v131 = v9;
    v98 = v67;
    v83 = &v66[v67];
    v84 = a4 + v16;
    v85 = v6 - v16;
    v86 = v66;
    while (2)
    {
      v87 = v85 - 3;
      if (v85 < 3)
      {
        return -72;
      }

      v88 = *v84;
      v89 = v88 | (v84[2] << 16);
      v16 = v89 >> 3;
      v90 = (*v84 >> 1) & 3;
      v91 = v90;
      if (v90 != 1)
      {
        if (v90 == 3)
        {
          return -20;
        }

        v91 = v89 >> 3;
      }

      v85 = v87 - v91;
      if (v87 < v91)
      {
        return -72;
      }

      v92 = v84 + 3;
      if (v92 < v83 && v92 >= v86)
      {
        v94 = v92;
      }

      else
      {
        v94 = v83;
      }

      if (v90 > 1)
      {
        v16 = ZSTD_decompressBlock_internal(a1, v86, v94 - v86, v92, v91, 0);
        if (v16 > 0xFFFFFFFFFFFFFF88)
        {
          a2 = v105;
          a6 = v120;
          a3 = v98;
          v10 = v99;
          v9 = v131;
          v11 = v101;
          v18 = v103;
          goto LABEL_88;
        }
      }

      else if (v90)
      {
        if (v94 - v86 < v16)
        {
          return -70;
        }

        if (!v86)
        {
          if (v89 >= 8)
          {
            return -74;
          }

          goto LABEL_143;
        }

        memset(v86, *v92, v89 >> 3);
      }

      else
      {
        if (v91 > v83 - v86)
        {
          return -70;
        }

        if (v86)
        {
          memmove(v86, v92, v91);
          v16 = v91;
          goto LABEL_144;
        }

        if (v91)
        {
          return -74;
        }

LABEL_143:
        v16 = 0;
      }

LABEL_144:
      if (v131[857])
      {
        ZSTD_XXH64_update(v132, v86, v16);
      }

      v86 += v16;
      v84 = &v92[v91];
      v30 = 0uLL;
      v78 = __dst;
      if (v88)
      {
        v95 = *(a1 + 29928);
        v16 = v86 - __dst;
        if (v95 != -1 && v16 != v95)
        {
          return -20;
        }

        if (!v131[819])
        {
          a4 = v84;
          v6 = v85;
          v27 = v104;
          a2 = v105;
          v19 = v119;
          a6 = v120;
          a3 = v98;
          v10 = v99;
          v9 = v131;
          v11 = v101;
          v18 = v103;
          v20 = v124;
          v23 = v126;
          v17 = v117;
          v22 = v113;
          v21 = v115;
          v24 = v128;
          v26 = v111;
          v28 = v109;
          v31 = v107;
          goto LABEL_90;
        }

        v6 = v85 - 4;
        v27 = v104;
        a2 = v105;
        v19 = v119;
        a6 = v120;
        v10 = v99;
        v18 = v103;
        v20 = v124;
        v23 = v126;
        v17 = v117;
        v22 = v113;
        v21 = v115;
        v24 = v128;
        v26 = v111;
        v28 = v109;
        v31 = v107;
        if (v85 >= 4)
        {
          v9 = v131;
          if (v131[856] || (v96 = ZSTD_XXH64_digest(v132), v78 = __dst, v31 = v107, v30 = 0uLL, v28 = v109, v27 = v104, a2 = v105, v26 = v111, v23 = v126, v24 = v128, v17 = v117, v20 = v124, v19 = v119, a6 = v120, v25 = *v84 == v96, v22 = v113, v21 = v115, v25))
          {
            a4 = (v84 + 4);
            a3 = v98;
            v11 = v101;
            goto LABEL_90;
          }
        }

        return -22;
      }

      continue;
    }
  }

  return -72;
}

size_t ZSTD_decompressContinue(uint64_t a1, char *__b, unint64_t a3, unsigned __int8 *__src, size_t __len)
{
  v5 = (a1 + 29944);
  v6 = *(a1 + 29996);
  if ((v6 - 3) >= 2)
  {
    v7 = *(a1 + 29920);
    if (v7 != __len)
    {
      return -72;
    }
  }

  else
  {
    v7 = *(a1 + 29920);
    if (v7 >= __len)
    {
      v8 = __len;
    }

    else
    {
      v8 = *(a1 + 29920);
    }

    if (v8 <= 1)
    {
      v8 = 1;
    }

    if (*(a1 + 29992))
    {
      v9 = *(a1 + 29920);
    }

    else
    {
      v9 = v8;
    }

    if (v9 != __len)
    {
      return -72;
    }
  }

  if (a3)
  {
    v10 = *(a1 + 29888);
    if (v10 != __b)
    {
      *(a1 + 29912) = v10;
      *(a1 + 29904) = &__b[*(a1 + 29896) - v10];
      *(a1 + 29896) = __b;
      *(a1 + 29888) = __b;
    }
  }

  *(a1 + 29976) += __len;
  v11 = -1;
  if (v6 <= 2)
  {
    if (v6)
    {
      if (v6 != 1)
      {
        if (v6 != 2)
        {
          return v11;
        }

        v15 = *__src;
        v16 = (v15 | (__src[2] << 16)) >> 3;
        v17 = (*__src >> 1) & 3;
        if (v17 == 1)
        {
          v18 = (*__src >> 1) & 3;
        }

        else
        {
          if (v17 == 3)
          {
            return -20;
          }

          v18 = (v15 | (__src[2] << 16)) >> 3;
        }

        if (v18 <= *v5)
        {
          *(a1 + 29920) = v18;
          *(a1 + 29992) = v17;
          *(a1 + 30160) = v16;
          if (v18)
          {
            if (v15)
            {
              v23 = 4;
            }

            else
            {
              v23 = 3;
            }

            v11 = 0;
          }

          else if (v15)
          {
            v23 = *(a1 + 29960);
            if (v23)
            {
              *(a1 + 29920) = 4;
              v23 = 5;
            }

            else
            {
              *(a1 + 29920) = 0;
            }

            v11 = 0;
          }

          else
          {
            *(a1 + 29920) = 3;
            v23 = 2;
            v11 = 0;
          }

          goto LABEL_38;
        }

        return -20;
      }

      v25 = (a1 + 95940);
      v26 = a1;
      memcpy((a1 + 95940 + *(a1 + 30096) - __len), __src, __len);
      v27 = *(v26 + 30096);
      FrameHeader_advanced = ZSTD_getFrameHeader_advanced(v26 + 29928, v25, v27, v5[40]);
      v11 = FrameHeader_advanced;
      if (FrameHeader_advanced > 0xFFFFFFFFFFFFFF88)
      {
        return v11;
      }

      if (!FrameHeader_advanced)
      {
        v41 = v26;
        if (v5[70] == 1 && *(v26 + 30216))
        {
          ZSTD_DCtx_selectFrameDDict(v26);
          v41 = v26;
        }

        v42 = v5[3];
        if (v42 && v5[64] != v42)
        {
          return -32;
        }

        if (v5[4])
        {
          v43 = v5[41];
          v5[42] = v43 == 0;
          if (!v43)
          {
            *(v41 + 30008) = 0u;
            *(v41 + 30024) = 0u;
            *(v41 + 30088) = 0;
            *(v41 + 30056) = 0u;
            *(v41 + 30072) = 0u;
            *(v41 + 30040) = 0u;
            *(v41 + 30016) = xmmword_182B08D10;
            *(v41 + 30040) = 0x61C8864E7A143579;
          }
        }

        else
        {
          v5[42] = 0;
        }

        v11 = 0;
        *(v41 + 29976) += v27;
        *(v41 + 29920) = 3;
        v23 = 2;
        goto LABEL_38;
      }

      return -72;
    }

    if (*(a1 + 30104))
    {
      v24 = 1;
      if (!__len)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (*__src >> 4 == 25481893)
      {
        v31 = a1;
        v32 = __len;
        memcpy((a1 + 95940), __src, __len);
        v11 = 0;
        *(v31 + 29920) = 8 - v32;
        v23 = 6;
        goto LABEL_38;
      }

      v24 = 5;
      if (__len < 5)
      {
LABEL_41:
        v11 = -72;
        *(a1 + 30096) = -72;
        return v11;
      }
    }

    v36 = __src[v24 - 1];
    v37 = (v36 < 0x40) & ((v36 & 0x20) >> 5);
    v38 = ZSTD_did_fieldSize[v36 & 3] + v24 + *(&ZSTD_fcs_fieldSize + ((v36 >> 3) & 0x18));
    if ((v36 & 0x20) == 0)
    {
      ++v38;
    }

    v11 = v38 + v37;
    *(a1 + 30096) = v38 + v37;
    if ((v38 + v37) <= 0xFFFFFFFFFFFFFF88)
    {
      v39 = a1;
      v40 = __len;
      memcpy((a1 + 95940), __src, __len);
      *(v39 + 29920) = v11 - v40;
      v5[13] = 1;
      return 0;
    }

    return v11;
  }

  if (v6 > 5)
  {
    if (v6 != 6)
    {
      if (v6 != 7)
      {
        return v11;
      }

      goto LABEL_35;
    }

    v22 = a1;
    memcpy((a1 - __len + 95948), __src, __len);
    v11 = 0;
    *(v22 + 29920) = *(v22 + 95944);
    v23 = 7;
LABEL_38:
    v5[13] = v23;
    return v11;
  }

  if ((v6 - 3) >= 2)
  {
    if (v6 != 5)
    {
      return v11;
    }

    if (*(a1 + 30112))
    {
      v19 = a1;
      v21 = ZSTD_XXH64_digest((a1 + 30008));
      a1 = v19;
      if (*__src != v21)
      {
        return -22;
      }
    }

LABEL_35:
    v11 = 0;
LABEL_36:
    *(a1 + 29920) = 0;
    v5[13] = 0;
    return v11;
  }

  v12 = *(a1 + 29992);
  if (v12)
  {
    if (v12 == 1)
    {
      v30 = *(a1 + 30160);
      if (v30 > a3)
      {
        v11 = -70;
        *(a1 + 29920) = 0;
        return v11;
      }

      if (!__b)
      {
        if (v30)
        {
          v11 = -74;
          *(a1 + 29920) = 0;
          return v11;
        }

        v14 = 0;
        v11 = 0;
        *(a1 + 29920) = 0;
        goto LABEL_97;
      }

      v13 = a1;
      v14 = __b;
      v33 = *(a1 + 30160);
      memset(__b, *__src, v30);
      __len = v33;
      goto LABEL_62;
    }

    if (v12 == 2)
    {
      v13 = a1;
      v14 = __b;
      __len = ZSTD_decompressBlock_internal(a1, __b, a3, __src, __len, 1);
LABEL_62:
      v30 = 0;
      a1 = v13;
      *(v13 + 29920) = 0;
      v11 = __len;
      if (__len > 0xFFFFFFFFFFFFFF88)
      {
        return v11;
      }

      goto LABEL_87;
    }

    return -20;
  }

  if (__len > a3)
  {
    return -70;
  }

  if (__b)
  {
    v34 = a1;
    v14 = __b;
    v35 = __len;
    memmove(__b, __src, __len);
    __len = v35;
    if (v35 > 0xFFFFFFFFFFFFFF88)
    {
      return v35;
    }

    a1 = v34;
    v7 = *(v34 + 29920);
  }

  else
  {
    v14 = 0;
    if (__len)
    {
      return -74;
    }
  }

  v30 = v7 - __len;
  *(a1 + 29920) = v7 - __len;
LABEL_87:
  v11 = __len;
  if (__len > *v5)
  {
    return -20;
  }

LABEL_97:
  *(a1 + 29984) += v11;
  if (v5[42])
  {
    v44 = a1;
    ZSTD_XXH64_update((a1 + 30008), v14, v11);
    a1 = v44;
    v30 = *(v44 + 29920);
  }

  *(a1 + 29888) = v14 + v11;
  if (!v30)
  {
    if (v5[13] != 4)
    {
      v5[13] = 2;
      *(a1 + 29920) = 3;
      return v11;
    }

    v45 = *(a1 + 29928);
    if (v45 != -1 && *(a1 + 29984) != v45)
    {
      return -20;
    }

    if (v5[4])
    {
      *(a1 + 29920) = 4;
      v23 = 5;
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  return v11;
}

uint64_t ZSTD_DCtx_selectFrameDDict(uint64_t result)
{
  if (*(result + 30192))
  {
    v1 = (result + 28672);
    v2 = *(result + 29956);
    v3 = __ROR8__((0x9E3779B185EBCA87 * v2) ^ 0x27D4EB2F165667C9, 41);
    v4 = 0xC2B2AE3D27D4EB4FLL * ((0xC2B2AE3D27D4EB4FLL * v3 + 0x165667B19E3779F9) ^ ((0xC2B2AE3D27D4EB4FLL * v3 + 0x165667B19E3779F9) >> 33));
    v5 = (0x165667B19E3779F9 * (v4 ^ (v4 >> 29))) ^ ((0x165667B19E3779F9 * (v4 ^ (v4 >> 29))) >> 32);
    v6 = *(*(result + 30216) + 8) - 1;
    v7 = v5 & v6;
    do
    {
      v8 = *(**(result + 30216) + 8 * v7);
      if (!v8)
      {
        return result;
      }

      v9 = *(v8 + 27316);
      v7 = (v7 & v6) + 1;
    }

    while (v9 != v2 && v9 != 0);
    v11 = *(result + 30184);
    if (!v11)
    {
LABEL_18:
      *(result + 30184) = 0;
      v1[382] = v1[321];
      *(result + 30192) = v8;
      v1[384] = -1;
      return result;
    }

    v12 = *(v11 + 27336);
    v13 = *(v11 + 27344);
    if (*v11)
    {
      v14 = result;
      if (v12)
      {
        (v12)(*(v11 + 27344));
LABEL_14:
        v12(v13, v11);
LABEL_17:
        result = v14;
        goto LABEL_18;
      }

      free(*v11);
    }

    else
    {
      v14 = result;
      if (v12)
      {
        goto LABEL_14;
      }
    }

    free(v11);
    goto LABEL_17;
  }

  return result;
}

uint64_t ZSTD_getDDict(uint64_t a1)
{
  v1 = *(a1 + 30208);
  if (v1 == -1)
  {
    return *(a1 + 30192);
  }

  if (v1 == 1)
  {
    *(a1 + 30208) = 0;
    return *(a1 + 30192);
  }

  v3 = (a1 + 30184);
  v4 = *(a1 + 30184);
  if (v4)
  {
    v5 = *(v4 + 27336);
    v6 = *(v4 + 27344);
    if (*v4)
    {
      v7 = a1;
      if (v5)
      {
        (v5)(*(v4 + 27344));
LABEL_10:
        v5(v6, v4);
LABEL_13:
        a1 = v7;
        goto LABEL_14;
      }

      free(*v4);
    }

    else
    {
      v7 = a1;
      if (v5)
      {
        goto LABEL_10;
      }
    }

    free(v4);
    goto LABEL_13;
  }

LABEL_14:
  *(a1 + 30208) = 0;
  result = 0;
  *v3 = 0;
  v3[1] = 0;
  return result;
}

unint64_t HUF_writeCTable_wksp(_BYTE *a1, unint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, unint64_t a7)
{
  v7 = -a6 & 3;
  v8 = a7 - v7;
  if (a7 < v7)
  {
    v8 = 0;
  }

  if (v8 < 0x2EC)
  {
    return -1;
  }

  if (a4 > 0xFF)
  {
    return -46;
  }

  v10 = a6 + v7;
  *(a6 + v7 + 480) = 0;
  v11 = (a5 + 1);
  if (v11 >= 2)
  {
    if (v11 <= 4)
    {
      v12 = 1;
      goto LABEL_21;
    }

    v13 = v11 - 1;
    v14 = vdupq_n_s32(v11);
    if (v11 >= 0x21)
    {
      v15 = v13 & 0xFFFFFFFFFFFFFFE0;
      v16 = (v7 + a6 + 481);
      v17 = xmmword_182B08D50;
      v18 = xmmword_182B08D60;
      v19 = xmmword_182B08D70;
      v20 = xmmword_182B08D80;
      v21.i64[0] = 0x1000000010;
      v21.i64[1] = 0x1000000010;
      v22.i64[0] = 0x2000000020;
      v22.i64[1] = 0x2000000020;
      v23 = v13 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v81.val[0] = vsubq_s32(v14, v20);
        v82.val[0] = vsubq_s32(v81.val[0], v21);
        v81.val[1] = vsubq_s32(v14, v19);
        v82.val[1] = vsubq_s32(v81.val[1], v21);
        v81.val[2] = vsubq_s32(v14, v18);
        v82.val[2] = vsubq_s32(v81.val[2], v21);
        v81.val[3] = vsubq_s32(v14, v17);
        v82.val[3] = vsubq_s32(v81.val[3], v21);
        *v16 = vqtbl4q_s8(v81, xmmword_182B08D90);
        v16[1] = vqtbl4q_s8(v82, xmmword_182B08D90);
        v16 += 2;
        v20 = vaddq_s32(v20, v22);
        v19 = vaddq_s32(v19, v22);
        v18 = vaddq_s32(v18, v22);
        v17 = vaddq_s32(v17, v22);
        v23 -= 32;
      }

      while (v23);
      if (v13 == v15)
      {
        goto LABEL_23;
      }

      v12 = v15 | 1;
      if ((v13 & 0x1C) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v15 = 0;
      LODWORD(v12) = 1;
    }

    v24 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v25 = vaddq_s32(vdupq_n_s32(v12), xmmword_182B08DA0);
    v26 = v15 - (v13 & 0xFFFFFFFFFFFFFFFCLL);
    v27 = (v15 + a6 + v7 + 481);
    v28.i64[0] = 0x400000004;
    v28.i64[1] = 0x400000004;
    do
    {
      *v27++ = vuzp1_s8(vmovn_s32(vsubq_s32(v14, v25)), *v14.i8).u32[0];
      v25 = vaddq_s32(v25, v28);
      v26 += 4;
    }

    while (v26);
    if (v13 != v24)
    {
      v12 = v24 | 1;
LABEL_21:
      v29 = v11 - v12;
      v30 = (v12 + v7 + a6 + 480);
      do
      {
        *v30++ = v29--;
      }

      while (v29);
    }
  }

LABEL_23:
  if (!a4)
  {
    if ((-v10 & 3) == 0)
    {
      v33 = 0;
      v37 = a1 + 1;
      v32 = (v10 + 493);
      goto LABEL_36;
    }

    return -1;
  }

  v31 = (a3 + 8);
  v32 = (v10 + 493);
  v33 = a4;
  v34 = (v10 + 493);
  v35 = a4;
  do
  {
    v36 = *v31;
    v31 += 8;
    *v34++ = *(v10 + 480 + v36);
    --v35;
  }

  while (v35);
  if ((-v10 & 3) != 0)
  {
    return -1;
  }

  v37 = a1 + 1;
  if (a4 == 1)
  {
    goto LABEL_36;
  }

  v38 = a2 - 1;
  *(v10 + 448) = 0;
  *(v10 + 416) = 0u;
  *(v10 + 432) = 0u;
  v39 = (v10 + 400);
  *(v10 + 400) = 0u;
  v40 = (v10 + 493);
  do
  {
    v41 = *v40++;
    ++v39[v41];
  }

  while (v40 < &v32[a4]);
  LODWORD(v42) = 13;
  do
  {
    v42 = (v42 - 1);
  }

  while (!v39[v42]);
  if (v42 >= 7)
  {
    v43 = (v42 + 1) & 0x1FFFFFFF8;
    v49 = v43;
    v50 = (v7 + a6 + 416);
    v51 = 0uLL;
    v52 = 0uLL;
    do
    {
      v51 = vmaxq_u32(v50[-1], v51);
      v52 = vmaxq_u32(*v50, v52);
      v50 += 2;
      v49 -= 8;
    }

    while (v49);
    v44 = vmaxvq_u32(vmaxq_u32(v51, v52));
    if (v42 + 1 == v43)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v43 = 0;
    v44 = 0;
  }

  v53 = v42 - v43;
  if (v42 < v43)
  {
    v53 = 0;
  }

  v54 = v53 + 1;
  v55 = ((v7 | (4 * v43)) + a6 + 400);
  do
  {
    v57 = *v55++;
    v56 = v57;
    if (v57 > v44)
    {
      v44 = v56;
    }

    --v54;
  }

  while (v54);
LABEL_55:
  if (v44 == a4 || v44 == 1)
  {
    goto LABEL_60;
  }

  v74 = a6;
  v75 = a2;
  v73 = a1;
  v59 = 29 - __clz(a4 - 1);
  v60 = a4;
  v61 = 32 - __clz(a4);
  v62 = 33 - __clz(v42);
  if (v61 >= v62)
  {
    v61 = v62;
  }

  if (v59 >= 6)
  {
    v59 = 6;
  }

  if (v61 > v59)
  {
    v59 = v61;
  }

  if (v59 <= 5)
  {
    v59 = 5;
  }

  if (v59 >= 0xC)
  {
    v63 = 12;
  }

  else
  {
    v63 = v59;
  }

  result = FSE_normalizeCount((v10 + 452), v63, v39, a4, v42, 0);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    result = FSE_writeNCount(v37, v38, v10 + 452, v42, v63);
    if (result <= 0xFFFFFFFFFFFFFF88)
    {
      v72 = result;
      result = FSE_buildCTable_wksp(v10, (v10 + 452), v42, v63, (v10 + 236), 0xA4uLL);
      if (result <= 0xFFFFFFFFFFFFFF88)
      {
        result = FSE_compress_usingCTable((v37 + v72), v38 - v72, v10 + 493, v33, v10);
        if (result <= 0xFFFFFFFFFFFFFF88)
        {
          v64 = result;
          a1 = v73;
          a6 = v74;
          a4 = v60;
          a2 = v75;
          if (v64)
          {
            v45 = v72 + v64;
            if (v72 + v64 > 0xFFFFFFFFFFFFFF88)
            {
              return v45;
            }

            if (v45 >= 2 && v45 < v60 >> 1)
            {
              *v73 = v45;
              return v45 + 1;
            }
          }

LABEL_60:
          if (a4 <= 0x80)
          {
LABEL_36:
            if (((a4 + 1) >> 1) + 1 > a2)
            {
              return -70;
            }

            v45 = ((a4 + 1) >> 1) + 1;
            *a1 = a4 + 127;
            *(v10 + v33 + 493) = 0;
            if (!a4)
            {
              return v45;
            }

            if (a4 < 0xF || (v46 = (v33 - 1) >> 1, v37 < v10 + ((v33 - 1) & 0xFFFFFFFFFFFFFFFELL) + 495) && v32 < &a1[v46 + 2])
            {
              v47 = 0;
              goto LABEL_43;
            }

            v65 = v46 + 1;
            if (a4 >= 0x3F)
            {
              v66 = v65 & 0xFFFFFFFFFFFFFFE0;
              v77 = vld2q_s8(v32);
              v67 = (v10 + 525);
              v79 = vld2q_s8(v67);
              *(a1 + 1) = vaddq_s8(vshlq_n_s8(v77.val[0], 4uLL), v77.val[1]);
              *(a1 + 17) = vaddq_s8(vshlq_n_s8(v79.val[0], 4uLL), v79.val[1]);
              if ((v65 & 0xFFFFFFFFFFFFFFE0) != 0x20)
              {
                v68 = (v10 + 557);
                v78 = vld2q_s8(v68);
                v69 = (v10 + 589);
                v80 = vld2q_s8(v69);
                *(a1 + 33) = vaddq_s8(vshlq_n_s8(v78.val[0], 4uLL), v78.val[1]);
                *(a1 + 49) = vaddq_s8(vshlq_n_s8(v80.val[0], 4uLL), v80.val[1]);
              }

              if (v65 == v66)
              {
                return v45;
              }

              if ((v65 & 0x18) == 0)
              {
                v47 = 2 * v66;
LABEL_43:
                v48 = &a1[(v47 >> 1) + 1];
                do
                {
                  *v48++ = *(v10 + v47 + 494) + 16 * *(v10 + v47 + 493);
                  v47 += 2;
                }

                while (v47 < v33);
                return v45;
              }
            }

            else
            {
              v66 = 0;
            }

            v70 = v65 & 0xFFFFFFFFFFFFFFF8;
            v71 = (v7 + 2 * v66 + a6 + 493);
            do
            {
              v76 = vld2_s8(v71);
              v71 += 16;
              *&a1[(v66 & 0x7FFFFFFFFFFFFFF8) + 1] = vadd_s8(vshl_n_s8(v76.val[0], 4uLL), v76.val[1]);
              v66 += 8;
            }

            while (v70 != v66);
            if (v65 == v70)
            {
              return v45;
            }

            v47 = 2 * v70;
            goto LABEL_43;
          }

          return -1;
        }
      }
    }
  }

  return result;
}

uint64_t HUF_buildCTable_wksp(uint64_t a1, unsigned int *a2, unsigned int a3, unsigned int a4, uint64_t a5, unint64_t a6)
{
  v156 = *MEMORY[0x1E69E9840];
  v7 = -a5 & 3;
  v8 = a6 - v7;
  if (a6 < v7)
  {
    v8 = 0;
  }

  if (v8 >> 8 < 0x13)
  {
    return -66;
  }

  if (a3 > 0xFF)
  {
    return -46;
  }

  v12 = a5 + v7;
  v13 = a5 + v7 + 8;
  v14 = a3;
  v15 = a5 + v7 + 4096;
  v149 = a3;
  v16 = a3 + 1;
  bzero((a5 + v7), 0x1300uLL);
  v18 = a2;
  v19 = v16;
  do
  {
    v21 = *v18++;
    v20 = v21;
    v22 = 189 - __clz(v21);
    if (v21 >= 0xA5)
    {
      v20 = v22;
    }

    ++*(v15 + 4 * v20);
    --v19;
  }

  while (v19);
  v23 = *(v12 + 4860);
  v24 = (v7 + a5 + 4856);
  v25 = -191;
  do
  {
    v23 += *v24;
    *v24 = v23;
    v24[1] = v23;
    v24 -= 2;
    v68 = __CFADD__(v25++, 1);
  }

  while (!v68);
  v26 = 0;
  v27 = v12 + 4102;
  do
  {
    v28 = a2[v26];
    v29 = 189 - __clz(v28);
    if (v28 < 0xA5)
    {
      v29 = a2[v26];
    }

    v30 = 4 * v29;
    v31 = *(v27 + v30);
    *(v27 + v30) = v31 + 1;
    v32 = v13 + 8 * v31;
    *v32 = v28;
    *(v32 + 6) = v26++;
  }

  while (v16 != v26);
  v33 = (v7 + a5 + 4758);
  v34 = 26;
  do
  {
    v35 = *(v33 - 1);
    v36 = *v33 - v35;
    if (v36 >= 2)
    {
      HUF_simpleQuickSort(v13 + 8 * v35, 0, (v36 - 1));
    }

    v33 += 2;
    --v34;
  }

  while (v34);
  v37 = 0;
  v38 = ((v7 | (8 * v14)) + a5 + 8);
  do
  {
    v40 = *v38;
    v38 -= 2;
    v39 = v40;
    --v37;
  }

  while (!v40);
  v41 = v14 + v37;
  v42 = v14 + v37 + 1;
  v43 = v13 + 8 * v42;
  if (a4)
  {
    v44 = a4;
  }

  else
  {
    v44 = 11;
  }

  v45 = v42;
  v46 = v42 + 255;
  *(v12 + 2056) = *(v43 - 8) + v39;
  *(v43 - 4) = 256;
  *(v43 + 4) = 256;
  v47 = v41 + 2;
  if (v42 < 2)
  {
    *v12 = 0x80000000;
    *(v13 + 8 * v46 + 7) = 0;
    goto LABEL_67;
  }

  LODWORD(v48) = v41 + 256;
  v49 = v14 + v37 - 1;
  v50 = v41 + 256;
  v51 = v41 + 255;
  if (v48 <= 257)
  {
    v48 = 257;
  }

  else
  {
    v48 = v48;
  }

  v52 = v48 - 256;
  if (v52 < 2)
  {
    v53 = 257;
LABEL_41:
    if (v50 <= 257)
    {
      v58 = 257;
    }

    else
    {
      v58 = v50;
    }

    v59 = v58 - v53 + 1;
    v60 = ((v7 | (8 * v53)) + a5 + 8);
    do
    {
      *v60 = 0x40000000;
      v60 += 2;
      --v59;
    }

    while (v59);
    goto LABEL_46;
  }

  v54 = v52 & 0xFFFFFFFFFFFFFFFELL;
  if (v50 <= 257)
  {
    v55 = 257;
  }

  else
  {
    v55 = v50;
  }

  v56 = (v55 - 256) & 0xFFFFFFFFFFFFFFFELL;
  v57 = (v7 + a5 + 2072);
  do
  {
    *(v57 - 2) = 0x40000000;
    *v57 = 0x40000000;
    v57 += 4;
    v56 -= 2;
  }

  while (v56);
  if (v52 != v54)
  {
    v53 = v54 + 257;
    goto LABEL_41;
  }

LABEL_46:
  *(a5 + v7) = 0x80000000;
  v61 = 257;
  if (v50 <= 257)
  {
    v62 = 257;
  }

  else
  {
    v62 = v50;
  }

  v63 = v62 - 256;
  v64 = (a5 + v7 + 2064);
  v65 = 256;
  do
  {
    v66 = *(v13 + 8 * v49);
    v67 = *(v13 + 8 * v65);
    v68 = v66 >= v67;
    v69 = v66 < v67;
    if (v68)
    {
      v70 = v65 + 1;
    }

    else
    {
      v70 = v65;
    }

    if (!v68)
    {
      v65 = v49;
    }

    v71 = v49 - v69;
    v72 = *(v13 + 8 * v71);
    v73 = *(v13 + 8 * v70);
    v74 = v72 >= v73;
    if (v72 < v73)
    {
      v75 = v71;
    }

    else
    {
      v75 = v70;
    }

    v76 = v13 + 8 * v65;
    v77 = v13 + 8 * v75;
    v78 = !v74;
    *v64 = *v77 + *v76;
    v64 += 2;
    if (v74)
    {
      v65 = v70 + 1;
    }

    else
    {
      v65 = v70;
    }

    v49 = v71 - v78;
    *(v77 + 4) = v61;
    *(v76 + 4) = v61++;
    --v63;
  }

  while (v63);
  *(v13 + 8 * v46 + 7) = 0;
  v79 = (v7 + a5 + 8 * v51 + 15);
  do
  {
    *v79 = *(v13 + 8 * *(v79 - 3) + 7) + 1;
    v79 -= 8;
    --v50;
  }

  while (v50 > 256);
LABEL_67:
  if ((v42 & 0x8000000000000000) == 0)
  {
    v80 = v47;
    v81 = (v7 + a5 + 15);
    do
    {
      *v81 = *(v13 + 8 * *(v81 - 3) + 7) + 1;
      v81 += 8;
      --v80;
    }

    while (v80);
  }

  v82 = *(v13 + 8 * v42 + 7);
  v83 = v82;
  v84 = v82 - v44;
  if (v82 > v44)
  {
    v83 = v44;
    v85 = *(v13 + 8 * v42 + 7);
    if (v44 >= v85)
    {
      v86 = 0;
      v89 = v14 + v37 + 1;
    }

    else
    {
      v86 = 0;
      v87 = (v7 + a5 + 8 * (v14 + v37 + 1) + 15);
      do
      {
        v86 += (1 << v84) + (-1 << (v82 - v85));
        *v87 = v44;
        LODWORD(v45) = v45 - 1;
        v88 = *(v87 - 8);
        v87 -= 8;
        LOBYTE(v85) = v88;
      }

      while (v44 < v88);
      v89 = v45;
      v45 = v45;
    }

    v90 = v89 + 1;
    v91 = v45 + 1;
    v92 = ((v7 | (8 * v45)) + a5 + 15);
    do
    {
      v93 = *v92;
      v92 -= 8;
      --v90;
      --v91;
    }

    while (v44 == v93);
    v94 = v86 >> v84;
    v153 = 0xF0F0F0F0F0F0F0F0;
    *&v95 = 0xF0F0F0F0F0F0F0F0;
    *(&v95 + 1) = 0xF0F0F0F0F0F0F0F0;
    v151 = v95;
    v152 = v95;
    v150 = v95;
    if ((v91 & 0x8000000000000000) == 0)
    {
      v96 = (v7 + a5 + 8 * v90 + 15);
      v97 = v44;
      do
      {
        v100 = *v96;
        v96 -= 8;
        v99 = v100;
        if (v97 > v100)
        {
          *(&v150 + v44 - v99) = v90;
          v98 = v90;
          v97 = v99;
        }

        else
        {
          v98 = v90;
        }

        --v90;
      }

      while (v98 > 0);
    }

    if (v94 >= 1)
    {
      do
      {
        v103 = __clz(v94);
        if (v103 == 31)
        {
          for (i = 1; i != 13; ++i)
          {
LABEL_97:
            if (*(&v150 + i) != -252645136)
            {
              break;
            }
          }
        }

        else
        {
          i = 32 - v103;
          while (1)
          {
            v105 = *(&v150 + i);
            v106 = i - 1;
            if (v105 != -252645136)
            {
              v107 = *(&v150 + v106);
              if (v107 == -252645136 || *(v13 + 8 * v105) <= (2 * *(v13 + 8 * v107)))
              {
                break;
              }
            }

            --i;
            if ((v106 & 0xFFFFFFFE) == 0)
            {
              i = 1;
              goto LABEL_97;
            }
          }

          if (i <= 0xC)
          {
            goto LABEL_97;
          }
        }

        v108 = i - 1;
        v109 = *(&v150 + i);
        v110 = *(&v150 + (i - 1));
        ++*(v13 + 8 * v109 + 7);
        if (v110 == -252645136)
        {
          v111 = v109;
        }

        else
        {
          v111 = v110;
        }

        *(&v150 + v108) = v111;
        v112 = -252645136;
        if (v109)
        {
          v113 = v109 - 1;
          if (v44 - i == *(v13 + 8 * v113 + 7))
          {
            v112 = v113;
          }

          else
          {
            v112 = -252645136;
          }
        }

        v101 = -1 << v108;
        *(&v150 + i) = v112;
        v102 = __OFADD__(v101, v94);
        v94 += v101;
      }

      while (!((v94 < 0) ^ v102 | (v94 == 0)));
    }

    if (v94 < 0)
    {
      LODWORD(v135) = DWORD1(v150);
      do
      {
        v136 = v135 + 252645135;
        if (v94 > (v135 + 252645135))
        {
          v136 = v94;
        }

        if (-v136 >= 3 && (v135 - v136 >= (v135 + 1) ? (v137 = v12 + 15 + 8 * (v135 + 1), v138 = v137 + 8 * ~v136 >= v137) : (v138 = 0), v138))
        {
          v140 = (-v136 | 0xFFFFFFFE) - v136;
          v139 = v135 + v140;
          v141 = v135 + 2;
          v142 = v140;
          do
          {
            v143 = v13 + 8 * v141;
            v144 = *(v143 + 7) - 1;
            --*(v13 + 8 * (v141 - 1) + 7);
            *(v143 + 7) = v144;
            v141 += 2;
            v142 -= 2;
          }

          while (v142);
          v94 += v140;
        }

        else
        {
          v139 = v135;
        }

        v145 = v139 + 1;
        v146 = v139 + 252645136;
        while (v146)
        {
          --*(v13 + 8 * v145++ + 7);
          ++v146;
          v68 = __CFADD__(v94++, 1);
          if (v68)
          {
            goto LABEL_107;
          }
        }

        v147 = (v7 + a5 + 15 + 8 * v91);
        LODWORD(v91) = v91 + 1;
        do
        {
          v148 = *v147;
          v147 -= 8;
          LODWORD(v91) = v91 - 1;
        }

        while (v44 == v148);
        v135 = v91 + 1;
        --*(v13 + 8 * v135 + 7);
        v119 = v94++ <= -2;
      }

      while (v119);
    }
  }

LABEL_107:
  v150 = 0uLL;
  WORD4(v151) = 0;
  *&v151 = 0;
  memset(v154, 0, sizeof(v154));
  v155 = 0;
  if ((v42 & 0x8000000000000000) == 0)
  {
    v114 = v47;
    v115 = (v7 + a5 + 15);
    do
    {
      v116 = *v115;
      v115 += 8;
      ++*(&v150 + v116);
      --v114;
    }

    while (v114);
  }

  if (v83)
  {
    v117 = 0;
    v118 = v83;
    do
    {
      *(v154 + v118) = v117;
      v117 = (*(&v150 + v118) + v117) >> 1;
      v119 = v118-- > 1;
    }

    while (v119);
  }

  v120 = a1 + 8;
  if (!v14)
  {
    v121 = 0;
LABEL_119:
    v128 = v16 - v121;
    v129 = ((v7 | (8 * v121)) + a5 + 15);
    do
    {
      v130 = *(v129 - 1);
      v131 = *v129;
      v129 += 8;
      *(v120 + 8 * v130) = v131;
      --v128;
    }

    while (v128);
    goto LABEL_121;
  }

  v121 = v16 & 0x1FE;
  v122 = (v7 + a5 + 23);
  v123 = v121;
  do
  {
    v124 = *(v122 - 9);
    v125 = *(v122 - 1);
    v126 = *(v122 - 8);
    v127 = *v122;
    v122 += 16;
    *(v120 + 8 * v124) = v126;
    *(v120 + 8 * v125) = v127;
    v123 -= 2;
  }

  while (v123);
  if (v121 != v16)
  {
    goto LABEL_119;
  }

LABEL_121:
  v132 = 8;
  do
  {
    v133 = *(a1 + v132);
    v134 = *(v154 + v133);
    *(v154 + v133) = v134 + 1;
    if (v133)
    {
      *(a1 + v132) = (v134 << -v133) | v133;
    }

    v132 += 8;
    --v16;
  }

  while (v16);
  *a1 = v83;
  *(a1 + 1) = v149;
  *(a1 + 2) = 0;
  result = v83;
  *(a1 + 6) = 0;
  return result;
}

uint64_t HUF_simpleQuickSort(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = result;
  v5 = a3 - a2;
  if (a3 - a2 >= 8)
  {
    v13 = a3;
    if (a3 > a2)
    {
      do
      {
        while (1)
        {
          v14 = (v4 + 8 * v13);
          v15 = *v14;
          v16 = (v3 - 1);
          v17 = v13 - v3;
          v18 = 8 * v3;
          do
          {
            if (*(v4 + v18) > v15)
            {
              v16 = (v16 + 1);
              v19 = *(v4 + 8 * v16);
              *(v4 + 8 * v16) = *(v4 + v18);
              *(v4 + v18) = v19;
            }

            v18 += 8;
            --v17;
          }

          while (v17);
          v20 = *(v4 + 8 * (v16 + 1));
          *(v4 + 8 * (v16 + 1)) = *v14;
          *v14 = v20;
          if (v16 + 1 - v3 < v13 - (v16 + 1))
          {
            break;
          }

          result = HUF_simpleQuickSort(v4, (v16 + 2), v13);
          v13 = v16;
          if (v3 >= v16)
          {
            return result;
          }
        }

        result = HUF_simpleQuickSort(v4, v3, v16);
        v3 = (v16 + 2);
      }

      while (v3 < v13);
    }
  }

  else if (v5 >= 1)
  {
    v6 = result + 8 * a2;
    v7 = (v5 + 1);
    v8 = 1;
    do
    {
      v9 = *(v6 + 8 * v8);
      v10 = v8;
      while (1)
      {
        v11 = v10 - 1;
        v12 = (v6 + 8 * (v10 - 1));
        if (*v12 >= v9)
        {
          break;
        }

        *(v6 + 8 * v10--) = *v12;
        if (v11 + 1 <= 1)
        {
          LODWORD(v10) = 0;
          break;
        }
      }

      *(v6 + 8 * v10) = v9;
      ++v8;
    }

    while (v8 != v7);
  }

  return result;
}

unint64_t HUF_estimateCompressedSize(uint64_t a1, uint32x4_t *a2, unsigned int a3)
{
  if ((a3 & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = a3 + 1;
  if (a3 >= 7)
  {
    v4 = v3 & 0xFFFFFFF8;
    v7 = a2 + 1;
    v8 = (a1 + 40);
    v9 = 0uLL;
    v10.i64[0] = 255;
    v10.i64[1] = 255;
    v11 = v4;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    do
    {
      v15 = v8[-2];
      v16 = v8[-1];
      v17 = *v8;
      v18 = v8[1];
      v8 += 4;
      v19 = v7[-1];
      v20 = vuzp1q_s32(vandq_s8(v15, v10), vandq_s8(v16, v10));
      v21 = vuzp1q_s32(vandq_s8(v17, v10), vandq_s8(v18, v10));
      v12 = vmlal_high_u32(v12, v20, v19);
      v9 = vmlal_u32(v9, *v20.i8, *v19.i8);
      v14 = vmlal_high_u32(v14, v21, *v7);
      v13 = vmlal_u32(v13, *v21.i8, *v7->i8);
      v7 += 2;
      v11 -= 8;
    }

    while (v11);
    v5 = vaddvq_s64(vaddq_s64(vaddq_s64(v13, v9), vaddq_s64(v14, v12)));
    if (v4 == v3)
    {
      return v5 >> 3;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v22 = v3 - v4;
  v23 = &a2->i32[v4];
  v24 = (a1 + 8 * v4 + 8);
  do
  {
    v26 = *v24;
    v24 += 8;
    v25 = v26;
    v27 = *v23++;
    v5 += v25 * v27;
    --v22;
  }

  while (v22);
  return v5 >> 3;
}

BOOL HUF_validateCTable(uint64_t a1, int32x4_t *a2, unsigned int a3)
{
  if (*(a1 + 1) < a3)
  {
    return 0;
  }

  v4 = a3 + 1;
  if (a3 < 7)
  {
    v5 = 0;
    v6 = 0;
    goto LABEL_8;
  }

  v5 = v4 & 0x7FFFFFF8;
  v7 = (a1 + 40);
  v8 = a2 + 1;
  v9 = 0uLL;
  v10.i64[0] = 255;
  v10.i64[1] = 255;
  v11.i64[0] = 0x100000001;
  v11.i64[1] = 0x100000001;
  v12 = v5;
  v13 = 0uLL;
  do
  {
    v15 = v7[-2];
    v14 = v7[-1];
    v17 = *v7;
    v16 = v7[1];
    v7 += 4;
    v9 = vorrq_s8(v9, vandq_s8(vbicq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v15, v10)), vceqzq_s64(vandq_s8(v14, v10))), vceqzq_s32(v8[-1])), v11));
    v13 = vorrq_s8(v13, vandq_s8(vbicq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v17, v10)), vceqzq_s64(vandq_s8(v16, v10))), vceqzq_s32(*v8)), v11));
    v8 += 2;
    v12 -= 8;
  }

  while (v12);
  v18 = vorrq_s8(v13, v9);
  *v18.i8 = vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL));
  v6 = v18.i32[0] | v18.i32[1];
  if (v5 != v4)
  {
LABEL_8:
    v19 = v4 - v5;
    v20 = (a1 + 8 * v5 + 8);
    v21 = &a2->i32[v5];
    do
    {
      v22 = *v21++;
      v25 = v22 == 0;
      v24 = *v20;
      v20 += 8;
      v23 = v24;
      v25 = !v25 && v23 == 0;
      v26 = v25;
      v6 |= v26;
      --v19;
    }

    while (v19);
  }

  return v6 == 0;
}

uint64_t HUF_compress1X_usingCTable_internal(unint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a2 <= 8)
  {
    return 0;
  }

  v6 = *a5;
  v5 = a5 + 1;
  v7 = v6;
  v8 = a1 + a2 - 8;
  if (((v6 * a4) >> 3) + 8 > a2 || v7 >= 0xC)
  {
    if (a4 <= 0)
    {
      v10 = -(-a4 & 3);
    }

    else
    {
      v10 = a4 & 3;
    }

    if (v10 < 1)
    {
      v12 = 0;
      v17 = 0;
      v18 = a1;
      if ((a4 & 7) == 0)
      {
LABEL_18:
        if (a4 >= 1)
        {
          v29 = a4;
          v30 = a3 - 4;
          do
          {
            v31 = v5[*(v30 + v29 + 3)];
            v32 = (v12 >> v31) | v31;
            v33 = v31 + v17;
            v34 = v5[*(v30 + v29 + 2)];
            v35 = v5[*(v30 + v29 + 1)];
            v36 = (((v32 >> v34) | v34) >> v35) | v35;
            v37 = v35 + v34 + v33;
            v38 = v5[*(v30 + v29)];
            v39 = (v36 >> v38) | v38 & 0xFFFFFFFFFFFFFF00;
            v40 = v38 + v37;
            *v18 = v39 >> -v40;
            v41 = (v18 + (v40 >> 3));
            v42 = v5[*(v30 + v29 - 1)];
            v43 = v5[*(v30 + v29 - 2)];
            v44 = (v42 >> v43) | v43;
            v45 = v43 + v42;
            v46 = v5[*(v30 + v29 - 3)];
            v47 = (v44 >> v46) | v46;
            v48 = v40 & 7;
            v49 = v5[*(v30 + v29 - 4)];
            if (v41 > v8)
            {
              v41 = (a1 + a2 - 8);
            }

            v50 = (v47 >> v49) | v49 & 0xFFFFFFFFFFFFFF00;
            v51 = v49 + v46 + v45;
            v12 = v50 | (v39 >> v51);
            v52 = v51 + v48;
            v53 = v52;
            v54 = v12 >> -v52;
            v17 = v52 & 7;
            *v41 = v54;
            v18 = (v41 + (v53 >> 3));
            if (v18 > v8)
            {
              v18 = (a1 + a2 - 8);
            }

            v55 = v29 > 8;
            v29 -= 8;
          }

          while (v55);
        }

        goto LABEL_25;
      }
    }

    else
    {
      v11 = 0;
      v12 = 0;
      v13 = (a3 + a4 - 1);
      v14 = v10 + 1;
      do
      {
        v15 = *v13--;
        v16 = v5[v15];
        v12 = (v12 >> v16) | v16 & 0xFFFFFFFFFFFFFF00;
        v11 += v16;
        --v14;
      }

      while (v14 > 1);
      LODWORD(a4) = a4 - v10;
      v17 = v11 & 7;
      *a1 = v12 >> -v11;
      v18 = (a1 + (v11 >> 3));
      if (v18 > v8)
      {
        v18 = (a1 + a2 - 8);
      }

      if ((a4 & 7) == 0)
      {
        goto LABEL_18;
      }
    }

    v19 = a3 + a4;
    v20 = v5[*(v19 - 1)];
    v21 = (v12 >> v20) | v20;
    v22 = v20 + v17;
    v23 = v5[*(v19 - 2)];
    v24 = v5[*(v19 - 3)];
    a4 = a4 - 4;
    v25 = v5[*(a3 + a4)];
    v12 = (((((v21 >> v23) | v23) >> v24) | v24) >> v25) | v25 & 0xFFFFFFFFFFFFFF00;
    v26 = v25 + v24 + v23 + v22;
    v27 = v26;
    v28 = v12 >> -v26;
    v17 = v26 & 7;
    *v18 = v28;
    v18 = (v18 + (v27 >> 3));
    if (v18 > v8)
    {
      v18 = (a1 + a2 - 8);
    }

    goto LABEL_18;
  }

  if (v7 <= 8)
  {
    if (v7 == 7)
    {
      if (a4 <= 0)
      {
        v85 = -(-a4 & 7);
      }

      else
      {
        v85 = a4 & 7;
      }

      if (v85 < 1)
      {
        v12 = 0;
        v17 = 0;
        v18 = a1;
      }

      else
      {
        v86 = 0;
        v12 = 0;
        v87 = (a3 + a4 - 1);
        v88 = v85 + 1;
        do
        {
          v89 = *v87--;
          v90 = v5[v89];
          v12 = (v12 >> v90) | v90 & 0xFFFFFFFFFFFFFF00;
          v86 += v90;
          --v88;
        }

        while (v88 > 1);
        LODWORD(a4) = a4 - v85;
        v17 = v86 & 7;
        *a1 = v12 >> -v86;
        v18 = (a1 + (v86 >> 3));
      }

      if ((a4 & 0xF) != 0)
      {
        v175 = a3 + a4;
        v176 = v5[*(v175 - 1)];
        v177 = (v12 >> v176) | v176;
        v178 = v176 + v17;
        v179 = v5[*(v175 - 2)];
        v180 = v5[*(v175 - 3)];
        v181 = (((v177 >> v179) | v179) >> v180) | v180;
        v182 = v180 + v179 + v178;
        v183 = v5[*(v175 - 4)];
        v184 = v5[*(v175 - 5)];
        v185 = (((v181 >> v183) | v183) >> v184) | v184;
        LOBYTE(v183) = v184 + v183;
        v186 = v5[*(v175 - 6)];
        v187 = v5[*(v175 - 7)];
        a4 = a4 - 8;
        v188 = v5[*(a3 + a4)];
        v12 = (((((v185 >> v186) | v186) >> v187) | v187) >> v188) | v188 & 0xFFFFFFFFFFFFFF00;
        v189 = v188 + v187 + v186 + v183 + v182;
        v190 = v189;
        v191 = v12 >> -v189;
        v17 = v189 & 7;
        *v18 = v191;
        v18 = (v18 + (v190 >> 3));
      }

      if (a4 >= 1)
      {
        v192 = a4;
        v193 = a3 - 8;
        do
        {
          v194 = v5[*(v193 + v192 + 7)];
          v195 = (v12 >> v194) | v194;
          v196 = v194 + v17;
          v197 = v5[*(v193 + v192 + 6)];
          v198 = v5[*(v193 + v192 + 5)];
          v199 = (((v195 >> v197) | v197) >> v198) | v198;
          v200 = v198 + v197 + v196;
          v201 = v5[*(v193 + v192 + 4)];
          v202 = v5[*(v193 + v192 + 3)];
          v203 = (((v199 >> v201) | v201) >> v202) | v202;
          LOBYTE(v201) = v202 + v201;
          v204 = v5[*(v193 + v192 + 2)];
          v205 = v204 + v201 + v200;
          v206 = v5[*(v193 + v192 + 1)];
          v207 = (((v203 >> v204) | v204) >> v206) | v206;
          v208 = v5[*(v193 + v192)];
          v209 = (v207 >> v208) | v208 & 0xFFFFFFFFFFFFFF00;
          v210 = v208 + v206 + v205;
          *v18 = v209 >> -v210;
          v211 = v5[*(v193 + v192 - 1)];
          v212 = v5[*(v193 + v192 - 2)];
          v213 = (v211 >> v212) | v212;
          LOBYTE(v211) = v212 + v211;
          v214 = v5[*(v193 + v192 - 3)];
          v215 = v5[*(v193 + v192 - 4)];
          v216 = (((v213 >> v214) | v214) >> v215) | v215;
          LOBYTE(v211) = v215 + v214 + v211;
          v217 = v5[*(v193 + v192 - 5)];
          v218 = v5[*(v193 + v192 - 6)];
          v219 = v5[*(v193 + v192 - 7)];
          v220 = (v18 + (v210 >> 3));
          v221 = v5[*(v193 + v192 - 8)];
          v222 = (((((((v216 >> v217) | v217) >> v218) | v218) >> v219) | v219) >> v221) | v221 & 0xFFFFFFFFFFFFFF00;
          LOBYTE(v221) = v221 + v219 + v218 + v217 + v211;
          v12 = v222 | (v209 >> v221);
          v223 = v221 + (v210 & 7);
          v224 = v223;
          v225 = v12 >> -v223;
          v17 = v223 & 7;
          *v220 = v225;
          v18 = (v220 + (v224 >> 3));
          v55 = v192 > 0x10;
          v192 -= 16;
        }

        while (v55);
      }
    }

    else
    {
      if (v7 != 8)
      {
LABEL_63:
        v91 = a4 % 9;
        if (a4 % 9 < 1)
        {
          v12 = 0;
          v17 = 0;
          v18 = a1;
        }

        else
        {
          v92 = 0;
          v12 = 0;
          v93 = (a3 + a4 - 1);
          v94 = v91 + 1;
          do
          {
            v95 = *v93--;
            v96 = v5[v95];
            v12 = (v12 >> v96) | v96 & 0xFFFFFFFFFFFFFF00;
            v92 += v96;
            --v94;
          }

          while (v94 > 1);
          LODWORD(a4) = a4 - v91;
          v17 = v92 & 7;
          *a1 = v12 >> -v92;
          v18 = (a1 + (v92 >> 3));
        }

        HIDWORD(v309) = 954437177 * a4 + 238609294;
        LODWORD(v309) = HIDWORD(v309);
        if ((v309 >> 1) >= 0xE38E38F)
        {
          v310 = a3 + a4;
          v311 = v5[*(v310 - 1)];
          v312 = (v12 >> v311) | v311;
          v313 = v311 + v17;
          v314 = v5[*(v310 - 2)];
          v315 = v5[*(v310 - 3)];
          v316 = (((v312 >> v314) | v314) >> v315) | v315;
          v317 = v315 + v314 + v313;
          v318 = v5[*(v310 - 4)];
          v319 = v5[*(v310 - 5)];
          v320 = (((v316 >> v318) | v318) >> v319) | v319;
          LOBYTE(v318) = v319 + v318;
          v321 = v5[*(v310 - 6)];
          v322 = v321 + v318 + v317;
          v323 = v5[*(v310 - 7)];
          v324 = v5[*(v310 - 8)];
          a4 = a4 - 9;
          v325 = v5[*(a3 + a4)];
          v12 = (((((((v320 >> v321) | v321) >> v323) | v323) >> v324) | v324) >> v325) | v325;
          v326 = v325 + v324 + v323 + v322;
          v327 = v326;
          v328 = v12 >> -v326;
          v17 = v326 & 7;
          *v18 = v328;
          v18 = (v18 + (v327 >> 3));
        }

        if (a4 >= 1)
        {
          v329 = a4;
          v330 = a3 - 9;
          do
          {
            v331 = v5[*(v330 + v329 + 8)];
            v332 = (v12 >> v331) | v331;
            v333 = v331 + v17;
            v334 = v5[*(v330 + v329 + 7)];
            v335 = v5[*(v330 + v329 + 6)];
            v336 = (((v332 >> v334) | v334) >> v335) | v335;
            v337 = v335 + v334 + v333;
            v338 = v5[*(v330 + v329 + 5)];
            v339 = v5[*(v330 + v329 + 4)];
            v340 = (((v336 >> v338) | v338) >> v339) | v339;
            v341 = v5[*(v330 + v329 + 3)];
            v342 = v341 + v339 + v338 + v337;
            v343 = v5[*(v330 + v329 + 2)];
            v344 = v5[*(v330 + v329 + 1)];
            v345 = (((((v340 >> v341) | v341) >> v343) | v343) >> v344) | v344;
            v346 = v5[*(v330 + v329)];
            v347 = (v345 >> v346) | v346;
            v348 = v346 + v344 + v343 + v342;
            *v18 = v347 >> -v348;
            v349 = v5[*(v330 + v329 - 1)];
            v350 = v5[*(v330 + v329 - 2)];
            v351 = (v349 >> v350) | v350;
            LOBYTE(v349) = v350 + v349;
            v352 = v5[*(v330 + v329 - 3)];
            v353 = v5[*(v330 + v329 - 4)];
            v354 = (((v351 >> v352) | v352) >> v353) | v353;
            LOBYTE(v349) = v353 + v352 + v349;
            v355 = v5[*(v330 + v329 - 5)];
            v356 = v5[*(v330 + v329 - 6)];
            v357 = (((v354 >> v355) | v355) >> v356) | v356;
            LOBYTE(v355) = v356 + v355;
            v358 = v5[*(v330 + v329 - 7)];
            LOBYTE(v349) = v358 + v355 + v349;
            v359 = v5[*(v330 + v329 - 8)];
            v360 = (v18 + (v348 >> 3));
            v361 = v5[*(v330 + v329 - 9)];
            LOBYTE(v349) = v361 + v359 + v349;
            v12 = (((((v357 >> v358) | v358) >> v359) | v359) >> v361) | v361 | (v347 >> v349);
            v362 = v349 + (v348 & 7);
            v363 = v362;
            v364 = v12 >> -v362;
            v17 = v362 & 7;
            *v360 = v364;
            v18 = (v360 + (v363 >> 3));
            v55 = v329 > 0x12;
            v329 -= 18;
          }

          while (v55);
        }

        goto LABEL_25;
      }

      v67 = a4 % 7;
      if (a4 % 7 < 1)
      {
        v12 = 0;
        v17 = 0;
        v18 = a1;
      }

      else
      {
        v68 = 0;
        v12 = 0;
        v69 = (a3 + a4 - 1);
        v70 = v67 + 1;
        do
        {
          v71 = *v69--;
          v72 = v5[v71];
          v12 = (v12 >> v72) | v72 & 0xFFFFFFFFFFFFFF00;
          v68 += v72;
          --v70;
        }

        while (v70 > 1);
        LODWORD(a4) = a4 - v67;
        v17 = v68 & 7;
        *a1 = v12 >> -v68;
        v18 = (a1 + (v68 >> 3));
      }

      HIDWORD(v262) = -1227133513 * a4 + 306783378;
      LODWORD(v262) = HIDWORD(v262);
      if ((v262 >> 1) >= 0x12492493)
      {
        v263 = a3 + a4;
        v264 = v5[*(v263 - 1)];
        v265 = (v12 >> v264) | v264;
        v266 = v264 + v17;
        v267 = v5[*(v263 - 2)];
        v268 = v5[*(v263 - 3)];
        v269 = (((v265 >> v267) | v267) >> v268) | v268;
        v270 = v268 + v267 + v266;
        v271 = v5[*(v263 - 4)];
        v272 = v5[*(v263 - 5)];
        v273 = v5[*(v263 - 6)];
        a4 = a4 - 7;
        v274 = v5[*(a3 + a4)];
        v12 = (((((((v269 >> v271) | v271) >> v272) | v272) >> v273) | v273) >> v274) | v274 & 0xFFFFFFFFFFFFFF00;
        v275 = v274 + v273 + v272 + v271 + v270;
        v276 = v275;
        v277 = v12 >> -v275;
        v17 = v275 & 7;
        *v18 = v277;
        v18 = (v18 + (v276 >> 3));
      }

      if (a4 >= 1)
      {
        v278 = a4;
        v279 = a3 - 7;
        do
        {
          v280 = v5[*(v279 + v278 + 6)];
          v281 = (v12 >> v280) | v280;
          v282 = v280 + v17;
          v283 = v5[*(v279 + v278 + 5)];
          v284 = v5[*(v279 + v278 + 4)];
          v285 = (((v281 >> v283) | v283) >> v284) | v284;
          v286 = v284 + v283 + v282;
          v287 = v5[*(v279 + v278 + 3)];
          v288 = v5[*(v279 + v278 + 2)];
          v289 = (((v285 >> v287) | v287) >> v288) | v288;
          LOBYTE(v287) = v288 + v287;
          v290 = v5[*(v279 + v278 + 1)];
          v291 = v290 + v287 + v286;
          v292 = v5[*(v279 + v278)];
          v293 = (((v289 >> v290) | v290) >> v292) | v292 & 0xFFFFFFFFFFFFFF00;
          v294 = v292 + v291;
          *v18 = v293 >> -v294;
          v295 = v5[*(v279 + v278 - 1)];
          v296 = v5[*(v279 + v278 - 2)];
          v297 = (v295 >> v296) | v296;
          LOBYTE(v295) = v296 + v295;
          v298 = v5[*(v279 + v278 - 3)];
          v299 = v5[*(v279 + v278 - 4)];
          v300 = (((v297 >> v298) | v298) >> v299) | v299;
          LOBYTE(v295) = v299 + v298 + v295;
          v301 = v5[*(v279 + v278 - 5)];
          v302 = v5[*(v279 + v278 - 6)];
          v303 = (v18 + (v294 >> 3));
          v304 = v5[*(v279 + v278 - 7)];
          v305 = (((((v300 >> v301) | v301) >> v302) | v302) >> v304) | v304 & 0xFFFFFFFFFFFFFF00;
          LOBYTE(v304) = v304 + v302 + v301 + v295;
          v12 = v305 | (v293 >> v304);
          v306 = v304 + (v294 & 7);
          v307 = v306;
          v308 = v12 >> -v306;
          v17 = v306 & 7;
          *v303 = v308;
          v18 = (v303 + (v307 >> 3));
          v55 = v278 > 0xE;
          v278 -= 14;
        }

        while (v55);
      }
    }
  }

  else
  {
    switch(v7)
    {
      case 9:
        v73 = a4 % 6;
        if (a4 % 6 < 1)
        {
          v12 = 0;
          v17 = 0;
          v18 = a1;
        }

        else
        {
          v74 = 0;
          v12 = 0;
          v75 = (a3 + a4 - 1);
          v76 = v73 + 1;
          do
          {
            v77 = *v75--;
            v78 = v5[v77];
            v12 = (v12 >> v78) | v78 & 0xFFFFFFFFFFFFFF00;
            v74 += v78;
            --v76;
          }

          while (v76 > 1);
          LODWORD(a4) = a4 - v73;
          v17 = v74 & 7;
          *a1 = v12 >> -v74;
          v18 = (a1 + (v74 >> 3));
        }

        HIDWORD(v97) = -1431655765 * a4 + 715827880;
        LODWORD(v97) = HIDWORD(v97);
        if ((v97 >> 2) >= 0x15555555)
        {
          v98 = a3 + a4;
          v99 = v5[*(v98 - 1)];
          v100 = (v12 >> v99) | v99;
          v101 = v99 + v17;
          v102 = v5[*(v98 - 2)];
          v103 = v5[*(v98 - 3)];
          v104 = (((v100 >> v102) | v102) >> v103) | v103;
          v105 = v103 + v102 + v101;
          v106 = v5[*(v98 - 4)];
          v107 = v5[*(v98 - 5)];
          a4 = a4 - 6;
          v108 = v5[*(a3 + a4)];
          v12 = (((((v104 >> v106) | v106) >> v107) | v107) >> v108) | v108 & 0xFFFFFFFFFFFFFF00;
          v109 = v108 + v107 + v106 + v105;
          v110 = v109;
          v111 = v12 >> -v109;
          v17 = v109 & 7;
          *v18 = v111;
          v18 = (v18 + (v110 >> 3));
        }

        if (a4 >= 1)
        {
          v112 = a4;
          v113 = a3 - 6;
          do
          {
            v114 = v5[*(v113 + v112 + 5)];
            v115 = (v12 >> v114) | v114;
            v116 = v114 + v17;
            v117 = v5[*(v113 + v112 + 4)];
            v118 = v5[*(v113 + v112 + 3)];
            v119 = (((v115 >> v117) | v117) >> v118) | v118;
            v120 = v118 + v117 + v116;
            v121 = v5[*(v113 + v112 + 2)];
            v122 = v5[*(v113 + v112 + 1)];
            v123 = (((v119 >> v121) | v121) >> v122) | v122;
            LOBYTE(v121) = v122 + v121;
            v124 = v5[*(v113 + v112)];
            v125 = (v123 >> v124) | v124 & 0xFFFFFFFFFFFFFF00;
            v126 = v124 + v121 + v120;
            *v18 = v125 >> -v126;
            v127 = v5[*(v113 + v112 - 1)];
            v128 = v5[*(v113 + v112 - 2)];
            v129 = (v127 >> v128) | v128;
            LOBYTE(v127) = v128 + v127;
            v130 = v5[*(v113 + v112 - 3)];
            v131 = v5[*(v113 + v112 - 4)];
            v132 = (((v129 >> v130) | v130) >> v131) | v131;
            LOBYTE(v127) = v131 + v130 + v127;
            v133 = v5[*(v113 + v112 - 5)];
            v134 = (v18 + (v126 >> 3));
            v135 = v5[*(v113 + v112 - 6)];
            v136 = (((v132 >> v133) | v133) >> v135) | v135 & 0xFFFFFFFFFFFFFF00;
            LOBYTE(v135) = v135 + v133 + v127;
            v12 = v136 | (v125 >> v135);
            v137 = v135 + (v126 & 7);
            v138 = v137;
            v139 = v12 >> -v137;
            v17 = v137 & 7;
            *v134 = v139;
            v18 = (v134 + (v138 >> 3));
            v55 = v112 > 0xC;
            v112 -= 12;
          }

          while (v55);
        }

        break;
      case 10:
        v79 = a4 % 5;
        if (a4 % 5 < 1)
        {
          v12 = 0;
          v17 = 0;
          v18 = a1;
        }

        else
        {
          v80 = 0;
          v12 = 0;
          v81 = (a3 + a4 - 1);
          v82 = v79 + 1;
          do
          {
            v83 = *v81--;
            v84 = v5[v83];
            v12 = (v12 >> v84) | v84 & 0xFFFFFFFFFFFFFF00;
            v80 += v84;
            --v82;
          }

          while (v82 > 1);
          LODWORD(a4) = a4 - v79;
          v17 = v80 & 7;
          *a1 = v12 >> -v80;
          v18 = (a1 + (v80 >> 3));
        }

        HIDWORD(v140) = -858993459 * a4 + 429496728;
        LODWORD(v140) = HIDWORD(v140);
        if ((v140 >> 1) >= 0x19999999)
        {
          v141 = a3 + a4;
          v142 = v5[*(v141 - 1)];
          v143 = (v12 >> v142) | v142;
          v144 = v142 + v17;
          v145 = v5[*(v141 - 2)];
          v146 = v5[*(v141 - 3)];
          v147 = v5[*(v141 - 4)];
          a4 = a4 - 5;
          v148 = v5[*(a3 + a4)];
          v12 = (((((((v143 >> v145) | v145) >> v146) | v146) >> v147) | v147) >> v148) | v148;
          v149 = v148 + v147 + v146 + v145 + v144;
          v150 = v149;
          v151 = v12 >> -v149;
          v17 = v149 & 7;
          *v18 = v151;
          v18 = (v18 + (v150 >> 3));
        }

        if (a4 >= 1)
        {
          v152 = a4;
          v153 = a3 - 5;
          do
          {
            v154 = v5[*(v153 + v152 + 4)];
            v155 = (v12 >> v154) | v154;
            v156 = v154 + v17;
            v157 = v5[*(v153 + v152 + 3)];
            v158 = v5[*(v153 + v152 + 2)];
            v159 = (((v155 >> v157) | v157) >> v158) | v158;
            v160 = v158 + v157 + v156;
            v161 = v5[*(v153 + v152 + 1)];
            v162 = v5[*(v153 + v152)];
            v163 = (((v159 >> v161) | v161) >> v162) | v162;
            v164 = v162 + v161 + v160;
            *v18 = v163 >> -v164;
            v165 = v5[*(v153 + v152 - 1)];
            v166 = v5[*(v153 + v152 - 2)];
            v167 = (v165 >> v166) | v166;
            LOBYTE(v165) = v166 + v165;
            v168 = v5[*(v153 + v152 - 3)];
            v169 = v5[*(v153 + v152 - 4)];
            v170 = (v18 + (v164 >> 3));
            v171 = v5[*(v153 + v152 - 5)];
            LOBYTE(v165) = v171 + v169 + v168 + v165;
            v12 = (((((v167 >> v168) | v168) >> v169) | v169) >> v171) | v171 | (v163 >> v165);
            v172 = v165 + (v164 & 7);
            v173 = v172;
            v174 = v12 >> -v172;
            v17 = v172 & 7;
            *v170 = v174;
            v18 = (v170 + (v173 >> 3));
            v55 = v152 > 0xA;
            v152 -= 10;
          }

          while (v55);
        }

        break;
      case 11:
        v61 = a4 % 5;
        if (a4 % 5 < 1)
        {
          v12 = 0;
          v17 = 0;
          v18 = a1;
        }

        else
        {
          v62 = 0;
          v12 = 0;
          v63 = (a3 + a4 - 1);
          v64 = v61 + 1;
          do
          {
            v65 = *v63--;
            v66 = v5[v65];
            v12 = (v12 >> v66) | v66 & 0xFFFFFFFFFFFFFF00;
            v62 += v66;
            --v64;
          }

          while (v64 > 1);
          LODWORD(a4) = a4 - v61;
          v17 = v62 & 7;
          *a1 = v12 >> -v62;
          v18 = (a1 + (v62 >> 3));
        }

        HIDWORD(v226) = -858993459 * a4 + 429496728;
        LODWORD(v226) = HIDWORD(v226);
        if ((v226 >> 1) >= 0x19999999)
        {
          v227 = a3 + a4;
          v228 = v5[*(v227 - 1)];
          v229 = (v12 >> v228) | v228;
          v230 = v228 + v17;
          v231 = v5[*(v227 - 2)];
          v232 = v5[*(v227 - 3)];
          v233 = v5[*(v227 - 4)];
          a4 = a4 - 5;
          v234 = v5[*(a3 + a4)];
          v12 = (((((((v229 >> v231) | v231) >> v232) | v232) >> v233) | v233) >> v234) | v234 & 0xFFFFFFFFFFFFFF00;
          v235 = v234 + v233 + v232 + v231 + v230;
          v236 = v235;
          v237 = v12 >> -v235;
          v17 = v235 & 7;
          *v18 = v237;
          v18 = (v18 + (v236 >> 3));
        }

        if (a4 >= 1)
        {
          v238 = a4;
          v239 = a3 - 5;
          do
          {
            v240 = v5[*(v239 + v238 + 4)];
            v241 = (v12 >> v240) | v240;
            v242 = v240 + v17;
            v243 = v5[*(v239 + v238 + 3)];
            v244 = v5[*(v239 + v238 + 2)];
            v245 = (((v241 >> v243) | v243) >> v244) | v244;
            v246 = v244 + v243 + v242;
            v247 = v5[*(v239 + v238 + 1)];
            v248 = v5[*(v239 + v238)];
            v249 = (((v245 >> v247) | v247) >> v248) | v248 & 0xFFFFFFFFFFFFFF00;
            v250 = v248 + v247 + v246;
            *v18 = v249 >> -v250;
            v251 = v5[*(v239 + v238 - 1)];
            v252 = v5[*(v239 + v238 - 2)];
            v253 = (v251 >> v252) | v252;
            LOBYTE(v251) = v252 + v251;
            v254 = v5[*(v239 + v238 - 3)];
            v255 = v5[*(v239 + v238 - 4)];
            v256 = (v18 + (v250 >> 3));
            v257 = v5[*(v239 + v238 - 5)];
            v258 = (((((v253 >> v254) | v254) >> v255) | v255) >> v257) | v257 & 0xFFFFFFFFFFFFFF00;
            LOBYTE(v257) = v257 + v255 + v254 + v251;
            v12 = v258 | (v249 >> v257);
            v259 = v257 + (v250 & 7);
            v260 = v259;
            v261 = v12 >> -v259;
            v17 = v259 & 7;
            *v256 = v261;
            v18 = (v256 + (v260 >> 3));
            v55 = v238 > 0xA;
            v238 -= 10;
          }

          while (v55);
        }

        break;
      default:
        goto LABEL_63;
    }
  }

LABEL_25:
  v56 = (v12 >> 1) | 0x8000000000000000;
  v57 = v17 + 1;
  v58 = (v17 + 1);
  *v18 = v56 >> -v58;
  v59 = v18 + (v58 >> 3);
  if (v59 > v8)
  {
    v59 = v8;
  }

  if (v59 >= v8)
  {
    return 0;
  }

  if ((v57 & 7) != 0)
  {
    return v59 - a1 + 1;
  }

  else
  {
    return v59 - a1;
  }
}

unint64_t HUF_compress4X_usingCTable_internal(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  result = 0;
  if (a2 >= 0x11 && a4 >= 0xC)
  {
    v10 = (a4 + 3) >> 2;
    result = HUF_compress1X_usingCTable_internal((a1 + 6), a2 - 6, a3, v10, a5);
    if (result <= 0xFFFFFFFFFFFFFF88)
    {
      if (result - 0x10000 < 0xFFFFFFFFFFFF0001)
      {
        return 0;
      }

      v12 = a1 + a2;
      *a1 = result;
      v13 = (a1 + 6 + result);
      result = HUF_compress1X_usingCTable_internal(v13, a2 - (result + 6), a3 + v10, v10, a5);
      if (result <= 0xFFFFFFFFFFFFFF88)
      {
        if (result - 0x10000 < 0xFFFFFFFFFFFF0001)
        {
          return 0;
        }

        *(a1 + 2) = result;
        v14 = (v13 + result);
        v15 = a3 + v10 + v10;
        result = HUF_compress1X_usingCTable_internal(v14, v12 - v14, v15, v10, a5);
        if (result <= 0xFFFFFFFFFFFFFF88)
        {
          if (result - 0x10000 < 0xFFFFFFFFFFFF0001)
          {
            return 0;
          }

          v16 = a3 + a4;
          *(a1 + 4) = result;
          v17 = v14 + result;
          result = HUF_compress1X_usingCTable_internal((v14 + result), v12 - (v14 + result), v15 + v10, v16 - (v15 + v10), a5);
          if (result <= 0xFFFFFFFFFFFFFF88)
          {
            if (result - 0x10000 < 0xFFFFFFFFFFFF0001)
            {
              return 0;
            }

            return &v17[result - a1];
          }
        }
      }
    }
  }

  return result;
}

uint64_t HUF_optimalTableLog(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, unint64_t a5, uint64_t a6, unsigned int *a7, char a8)
{
  v9 = a1;
  if ((a8 & 2) != 0)
  {
    v74 = a5 - 748;
    v19 = a3 + 1;
    if (a3 == -1)
    {
      LODWORD(v20) = 0;
      goto LABEL_18;
    }

    if (v19 >= 8)
    {
      v27 = v19 & 0xFFFFFFF8;
      v33 = (a7 + 4);
      v34 = 0uLL;
      v35 = v27;
      v36 = 0uLL;
      do
      {
        v34 = vsubq_s32(v34, vtstq_s32(v33[-1], v33[-1]));
        v36 = vsubq_s32(v36, vtstq_s32(*v33, *v33));
        v33 += 2;
        v35 -= 8;
      }

      while (v35);
      v28 = vaddvq_s32(vaddq_s32(v36, v34));
      if (v27 == v19)
      {
LABEL_46:
        v20 = 32 - __clz(v28);
        if (v20 > a1)
        {
          return v9;
        }

        if ((a3 & 0x80000000) != 0)
        {
LABEL_18:
          v21 = v20;
          v22 = HUF_buildCTable_wksp(a6, a7, a3, v20, a4, a5);
          v23 = -2;
          v24 = v9;
          if (v22 <= 0xFFFFFFFFFFFFFF88)
          {
            v25 = HUF_writeCTable_wksp((a4 + 748), v74, a6, a3, v22, a4, a5);
            if (v25 >= 0xFFFFFFFFFFFFFFFELL)
            {
              v26 = -2;
            }

            else
            {
              v26 = v25;
            }

            if (v25 >= 0xFFFFFFFFFFFFFF89)
            {
              v24 = v9;
            }

            else
            {
              v23 = v26;
              v24 = v20;
            }
          }

          if (v20 != v9)
          {
            v29 = (v9 + 1);
            v30 = (v20 + 1);
            v9 = v24;
            while (1)
            {
              v31 = HUF_buildCTable_wksp(a6, a7, a3, v30, a4, a5);
              if (v31 <= 0xFFFFFFFFFFFFFF88)
              {
                if (v31 < v30 && v30 > v21)
                {
                  return v9;
                }

                v32 = HUF_writeCTable_wksp((a4 + 748), v74, a6, a3, v31, a4, a5);
                if (v32 <= 0xFFFFFFFFFFFFFF88)
                {
                  if (v32 > v23 + 1)
                  {
                    return v9;
                  }

                  if (v32 >= v23)
                  {
                    v9 = v9;
                  }

                  else
                  {
                    v23 = v32;
                    v9 = v30;
                  }
                }
              }

              if (v29 == ++v30)
              {
                return v9;
              }
            }
          }

          return v24;
        }

        v72 = v19 & 0xFFFFFFF8;
        v73 = a3 + 1;
        v40 = a1 + 1;
        v69 = (a6 + 40);
        v70 = (a7 + 4);
        v71 = a6 + 8;
        v41 = -2;
        v42 = v20;
        while (1)
        {
          v44 = HUF_buildCTable_wksp(a6, a7, a3, v42, a4, a5);
          if (v44 <= 0xFFFFFFFFFFFFFF88)
          {
            if (v44 < v42 && v42 > v20)
            {
              return v9;
            }

            v45 = HUF_writeCTable_wksp((a4 + 748), v74, a6, a3, v44, a4, a5);
            if (v45 <= 0xFFFFFFFFFFFFFF88)
            {
              break;
            }
          }

LABEL_54:
          if (v40 == ++v42)
          {
            return v9;
          }
        }

        v46.i64[0] = 255;
        v46.i64[1] = 255;
        if (v73 >= 8)
        {
          v49 = 0uLL;
          v50 = v69;
          v51 = v70;
          v52 = v72;
          v53 = 0uLL;
          v54 = 0uLL;
          v55 = 0uLL;
          do
          {
            v56 = v50[-2];
            v57 = v50[-1];
            v58 = *v50;
            v59 = v50[1];
            v50 += 4;
            v60 = v51[-1];
            v61 = vuzp1q_s32(vandq_s8(v56, v46), vandq_s8(v57, v46));
            v62 = vuzp1q_s32(vandq_s8(v58, v46), vandq_s8(v59, v46));
            v53 = vmlal_high_u32(v53, v61, v60);
            v49 = vmlal_u32(v49, *v61.i8, *v60.i8);
            v55 = vmlal_high_u32(v55, v62, *v51);
            v54 = vmlal_u32(v54, *v62.i8, *v51->i8);
            v51 += 2;
            v52 -= 8;
          }

          while (v52);
          v48 = vaddvq_s64(vaddq_s64(vaddq_s64(v54, v49), vaddq_s64(v55, v53)));
          v47 = v72;
          if (v72 == v73)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v47 = 0;
          v48 = 0;
        }

        v63 = v73 - v47;
        v64 = &a7[v47];
        v65 = (v71 + 8 * v47);
        do
        {
          v67 = *v65;
          v65 += 8;
          v66 = v67;
          v68 = *v64++;
          v48 += v66 * v68;
          --v63;
        }

        while (v63);
LABEL_50:
        v43 = v45 + (v48 >> 3);
        if (v43 > v41 + 1)
        {
          return v9;
        }

        if (v43 >= v41)
        {
          v9 = v9;
        }

        else
        {
          v41 = v43;
          v9 = v42;
        }

        goto LABEL_54;
      }
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }

    v37 = v19 - v27;
    v38 = &a7[v27];
    do
    {
      if (*v38++)
      {
        ++v28;
      }

      --v37;
    }

    while (v37);
    goto LABEL_46;
  }

  v10 = 30 - __clz(a2 - 1);
  v11 = 32 - __clz(a2);
  v12 = 33 - __clz(a3);
  if (v11 >= v12)
  {
    v11 = v12;
  }

  if (a1)
  {
    v13 = a1;
  }

  else
  {
    v13 = 11;
  }

  if (v10 >= v13)
  {
    v10 = v13;
  }

  if (v11 > v10)
  {
    v10 = v11;
  }

  if (v10 <= 5)
  {
    v10 = 5;
  }

  if (v10 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v10;
  }
}

unint64_t HUF_compress_internal(unint64_t *a1, unint64_t a2, unsigned __int8 *a3, unint64_t a4, unsigned int a5, unsigned int a6, int a7, uint64_t a8, unint64_t a9, char *a10, _DWORD *a11, char a12)
{
  v86 = a5;
  v12 = -a8 & 7;
  v13 = a9 - v12;
  if (a9 >= v12)
  {
    v14 = (a8 + v12);
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  if (v13 >> 3 < 0x3E1)
  {
    return -66;
  }

  result = 0;
  if (a2 && a4)
  {
    if (a4 > 0x20000)
    {
      return -72;
    }

    if (a6 > 0xC)
    {
      return -44;
    }

    if (a5 > 0xFF)
    {
      return -46;
    }

    if (!a5)
    {
      a5 = 255;
      v86 = 255;
    }

    if (a6)
    {
      v17 = a6;
    }

    else
    {
      v17 = 11;
    }

    v18 = (a12 & 4) == 0 || a11 == 0;
    v19 = v18;
    if (!v18 && *a11 == 2)
    {
      v20 = a1 + a2;
      v21 = a1;
      v22 = a1;
      v23 = a4;
      v24 = a3;
      v25 = a7;
LABEL_29:
      i64 = a10;
LABEL_30:

      return HUF_compressCTable_internal(v21, v22, v20, v24, v23, v25, i64);
    }

    v82 = a1;
    if (a4 >= 0xA000 && (a12 & 8) != 0)
    {
      v85 = a5;
      v27 = a4;
      v28 = a5;
      v29 = HIST_count_simple(v14, &v85, a3, 4096);
      v84 = v28;
      v30 = HIST_count_simple(v14, &v84, &a3[v27 - 4096], 4096);
      a4 = v27;
      if (v30 + v29 < 0x45)
      {
        return 0;
      }
    }

    v31 = a4;
    result = HIST_count_wksp(v14, &v86, a3, a4, &v14[192].i8[8]);
    if (result > 0xFFFFFFFFFFFFFF88)
    {
      return result;
    }

    if (result == v31)
    {
      *v82 = *a3;
      return 1;
    }

    v32 = result > (v31 >> 7) + 4;
    v21 = v82;
    if (!v32)
    {
      return 0;
    }

    if (a11)
    {
      if (*a11 == 1)
      {
        v33 = v86;
        if (HUF_validateCTable(a10, v14, v86))
        {
          v21 = v82;
          if ((v19 & 1) == 0)
          {
LABEL_58:
            v20 = v21 + a2;
            v22 = v21;
            v24 = a3;
            v23 = v31;
LABEL_59:
            v25 = a7;
            goto LABEL_29;
          }
        }

        else
        {
          *a11 = 0;
        }

LABEL_51:
        v35 = HUF_optimalTableLog(v17, v31, v33, &v14[192].i64[1], 0x1300uLL, v14[64].i64, v14, a12);
        result = HUF_buildCTable_wksp(v14[64].i64, v14, v33, v35, &v14[192].i64[1], 0x1300uLL);
        if (result > 0xFFFFFFFFFFFFFF88)
        {
          return result;
        }

        result = HUF_writeCTable_wksp(v82, a2, v14[64].i64, v33, result, &v14[192].i64[1], 0x2ECuLL);
        if (result > 0xFFFFFFFFFFFFFF88)
        {
          return result;
        }

        if (!a11)
        {
          if (result + 12 >= v31)
          {
            return 0;
          }

LABEL_80:
          if (a10)
          {
            v79 = result;
            memcpy(a10, &v14[64], 0x808uLL);
            result = v79;
          }

          v22 = &v82[result];
          v20 = &v82[a2];
          i64 = v14[64].i64;
          v21 = v82;
          v24 = a3;
          v23 = v31;
          v25 = a7;
          goto LABEL_30;
        }

        v23 = v31;
        if (!*a11)
        {
          if (result + 12 >= v31)
          {
            return 0;
          }

          goto LABEL_79;
        }

        if ((v33 & 0x80000000) != 0)
        {
LABEL_83:
          v21 = v82;
          v20 = &v82[a2];
          v22 = v82;
          v24 = a3;
          goto LABEL_59;
        }

        v36 = v33 + 1;
        if (v33 >= 7)
        {
          v37 = v36 & 0xFFFFFFF8;
          v39 = v14 + 1;
          v40 = (a10 + 40);
          v41 = 0uLL;
          v42.i64[0] = 255;
          v42.i64[1] = 255;
          v43 = v37;
          v44 = 0uLL;
          v45 = 0uLL;
          v46 = 0uLL;
          do
          {
            v47 = v40[-2];
            v48 = v40[-1];
            v49 = *v40;
            v50 = v40[1];
            v40 += 4;
            v51 = v39[-1];
            v52 = vuzp1q_s32(vandq_s8(v47, v42), vandq_s8(v48, v42));
            v53 = vuzp1q_s32(vandq_s8(v49, v42), vandq_s8(v50, v42));
            v44 = vmlal_high_u32(v44, v52, v51);
            v41 = vmlal_u32(v41, *v52.i8, *v51.i8);
            v46 = vmlal_high_u32(v46, v53, *v39);
            v45 = vmlal_u32(v45, *v53.i8, *v39->i8);
            v39 += 2;
            v43 -= 8;
          }

          while (v43);
          v38 = vaddvq_s64(vaddq_s64(vaddq_s64(v45, v41), vaddq_s64(v46, v44)));
          if (v37 == v36)
          {
LABEL_70:
            if (v33 >= 7)
            {
              v62 = &v14[64].u64[1];
              v60 = v36 & 0xFFFFFFF8;
              v63 = v14 + 1;
              v64 = 0uLL;
              v65.i64[0] = 255;
              v65.i64[1] = 255;
              v66 = v60;
              v67 = 0uLL;
              v68 = 0uLL;
              v69 = 0uLL;
              do
              {
                v70 = v63[-1];
                v71 = vuzp1q_s32(vandq_s8(*v62, v65), vandq_s8(v62[1], v65));
                v72 = vuzp1q_s32(vandq_s8(v62[2], v65), vandq_s8(v62[3], v65));
                v67 = vmlal_high_u32(v67, v71, v70);
                v64 = vmlal_u32(v64, *v71.i8, *v70.i8);
                v69 = vmlal_high_u32(v69, v72, *v63);
                v68 = vmlal_u32(v68, *v72.i8, *v63->i8);
                v63 += 2;
                v62 += 4;
                v66 -= 8;
              }

              while (v66);
              v61 = vaddvq_s64(vaddq_s64(vaddq_s64(v68, v64), vaddq_s64(v69, v67)));
              if (v60 == v36)
              {
LABEL_77:
                v23 = v31;
                if (result + 12 < v31 && v38 >> 3 > result + (v61 >> 3))
                {
LABEL_79:
                  *a11 = 0;
                  goto LABEL_80;
                }

                goto LABEL_83;
              }
            }

            else
            {
              v60 = 0;
              v61 = 0;
            }

            v73 = v36 - v60;
            v74 = &v14->i32[v60];
            v75 = &v14[64].u8[8 * v60 + 8];
            do
            {
              v77 = *v75;
              v75 += 8;
              v76 = v77;
              v78 = *v74++;
              v61 += v76 * v78;
              --v73;
            }

            while (v73);
            goto LABEL_77;
          }
        }

        else
        {
          v37 = 0;
          v38 = 0;
        }

        v54 = v36 - v37;
        v55 = &v14->i32[v37];
        v56 = &a10[8 * v37 + 8];
        do
        {
          v58 = *v56;
          v56 += 8;
          v57 = v58;
          v59 = *v55++;
          v38 += v57 * v59;
          --v54;
        }

        while (v54);
        goto LABEL_70;
      }

      if (*a11)
      {
        v34 = v19;
      }

      else
      {
        v34 = 1;
      }

      if ((v34 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    v33 = v86;
    goto LABEL_51;
  }

  return result;
}

unint64_t HUF_compressCTable_internal(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6, uint64_t *a7)
{
  v10 = a3 - a2;
  if (a6)
  {
    result = HUF_compress4X_usingCTable_internal(a2, v10, a4, a5, a7);
  }

  else
  {
    result = HUF_compress1X_usingCTable_internal(a2, v10, a4, a5, a7);
  }

  v12 = a2 + result - a1;
  if (v12 >= a5 - 1)
  {
    v12 = 0;
  }

  if (!result)
  {
    v12 = 0;
  }

  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    return v12;
  }

  return result;
}

unint64_t ZSTD_fillDoubleHashTable(unint64_t result, uint64_t a2, int a3, int a4)
{
  v4 = *(result + 112);
  v5 = *(result + 272);
  v6 = *(result + 128);
  v7 = *(result + 8);
  v8 = *(result + 44);
  v9 = v7 + v8;
  v10 = a2 - 8;
  if (a4 != 1)
  {
    v22 = v9 + 2;
    if (v9 + 2 > v10)
    {
      return result;
    }

    v23 = *(result + 260);
    v24 = *(result + 264);
    result = 64;
    v25 = 64 - v23;
    v26 = 32 - v23;
    v27 = 64 - v24;
    if (!a3)
    {
      if (v5 > 6)
      {
        if (v5 == 8)
        {
          do
          {
            v41 = 0xCF1BBCDCB7A56463 * *(v22 - 2);
            *(v6 + 4 * (v41 >> v25)) = v8;
            *(v4 + 4 * (v41 >> v27)) = v8;
            v22 += 3;
            LODWORD(v8) = v8 + 3;
          }

          while (v22 <= v10);
          return result;
        }

        if (v5 == 7)
        {
          do
          {
            v39 = *(v22 - 2);
            result = (0xCF1BBCDCBFA56300 * v39) >> v25;
            *(v6 + 4 * result) = v8;
            *(v4 + 4 * ((0xCF1BBCDCB7A56463 * v39) >> v27)) = v8;
            v22 += 3;
            LODWORD(v8) = v8 + 3;
          }

          while (v22 <= v10);
          return result;
        }
      }

      else
      {
        if (v5 == 5)
        {
          do
          {
            v40 = *(v22 - 2);
            result = (0xCF1BBCDCBB000000 * v40) >> v25;
            *(v6 + 4 * result) = v8;
            *(v4 + 4 * ((0xCF1BBCDCB7A56463 * v40) >> v27)) = v8;
            v22 += 3;
            LODWORD(v8) = v8 + 3;
          }

          while (v22 <= v10);
          return result;
        }

        if (v5 == 6)
        {
          do
          {
            v38 = *(v22 - 2);
            result = (0xCF1BBCDCBF9B0000 * v38) >> v25;
            *(v6 + 4 * result) = v8;
            *(v4 + 4 * ((0xCF1BBCDCB7A56463 * v38) >> v27)) = v8;
            v22 += 3;
            LODWORD(v8) = v8 + 3;
          }

          while (v22 <= v10);
          return result;
        }
      }

      do
      {
        result = 0xCF1BBCDCB7A56463 * *(v22 - 2);
        *(v6 + 4 * ((-1640531535 * *(v22 - 2)) >> v26)) = v8;
        *(v4 + 4 * (result >> v27)) = v8;
        v22 += 3;
        LODWORD(v8) = v8 + 3;
      }

      while (v22 <= v10);
      return result;
    }

    v28 = 0;
    result = 0xCF1BBCDCBF9B0000;
    while (1)
    {
      if (v5 > 6)
      {
        if (v5 == 7)
        {
          v29 = *(v7 + v8);
          v30 = 0xCF1BBCDCBFA56300 * v29;
          goto LABEL_36;
        }

        if (v5 == 8)
        {
          v29 = *(v7 + v8);
          v30 = 0xCF1BBCDCB7A56463 * v29;
          goto LABEL_36;
        }
      }

      else
      {
        if (v5 == 5)
        {
          v29 = *(v7 + v8);
          v30 = 0xCF1BBCDCBB000000 * v29;
          goto LABEL_36;
        }

        if (v5 == 6)
        {
          v29 = *(v7 + v8);
          v30 = 0xCF1BBCDCBF9B0000 * v29;
LABEL_36:
          v31 = v30 >> v25;
          goto LABEL_37;
        }
      }

      v31 = (-1640531535 * *(v7 + v8)) >> v26;
      v29 = *(v7 + v8);
LABEL_37:
      *(v6 + 4 * v31) = v8 + v28;
      *(v4 + 4 * ((0xCF1BBCDCB7A56463 * v29) >> v27)) = v8 + v28;
      v32 = (0xCF1BBCDCB7A56463 * *(v7 + v8 + 1)) >> v27;
      if (!*(v4 + 4 * v32))
      {
        *(v4 + 4 * v32) = v8 + v28 + 1;
      }

      v33 = (0xCF1BBCDCB7A56463 * *(v7 + v8 + 2)) >> v27;
      if (!*(v4 + 4 * v33))
      {
        *(v4 + 4 * v33) = v8 + v28 + 2;
      }

      v7 += 3;
      v28 += 3;
      if (v7 + v8 + 2 > v10)
      {
        return result;
      }
    }
  }

  if (v9 + 2 <= v10)
  {
    v11 = *(result + 260);
    v12 = *(result + 264);
    result = (56 - v11);
    v13 = 24 - v11;
    v14 = 56 - v12;
    if (a3)
    {
      v15 = (v8 + v7 + 2);
      for (i = (v8 << 8) + 512; ; i += 768)
      {
        if (v5 > 6)
        {
          if (v5 == 7)
          {
            v17 = *(v15 - 2);
            v18 = 0xCF1BBCDCBFA56300 * v17;
            goto LABEL_16;
          }

          if (v5 == 8)
          {
            v17 = *(v15 - 2);
            v18 = 0xCF1BBCDCB7A56463 * v17;
            goto LABEL_16;
          }
        }

        else
        {
          if (v5 == 5)
          {
            v17 = *(v15 - 2);
            v18 = 0xCF1BBCDCBB000000 * v17;
            goto LABEL_16;
          }

          if (v5 == 6)
          {
            v17 = *(v15 - 2);
            v18 = 0xCF1BBCDCBF9B0000 * v17;
LABEL_16:
            v19 = v18 >> result;
            goto LABEL_17;
          }
        }

        v19 = (-1640531535 * *(v15 - 2)) >> v13;
        v17 = *(v15 - 2);
LABEL_17:
        *(v6 + ((v19 >> 6) & 0x3FFFFFFFFFFFFFCLL)) = i + v19 - 512;
        *(v4 + (((0xCF1BBCDCB7A56463 * v17) >> v14 >> 6) & 0x3FFFFFFFFFFFFFCLL)) = i + ((0xCF1BBCDCB7A56463 * v17) >> v14) - 512;
        v20 = (0xCF1BBCDCB7A56463 * *(v15 - 1)) >> v14;
        if (!*(v4 + 4 * (v20 >> 8)))
        {
          *(v4 + 4 * (v20 >> 8)) = i + v20 - 256;
        }

        v21 = (0xCF1BBCDCB7A56463 * *v15) >> v14;
        if (!*(v4 + 4 * (v21 >> 8)))
        {
          *(v4 + 4 * (v21 >> 8)) = i + v21;
        }

        v15 = (v15 + 3);
        if (v15 > v10)
        {
          return result;
        }
      }
    }

    v34 = v8 + v7 + 2;
    v35 = v8 << 8;
    do
    {
      if (v5 > 6)
      {
        if (v5 == 8)
        {
          v37 = *(v34 - 2);
          v36 = (0xCF1BBCDCB7A56463 * v37) >> result;
          goto LABEL_43;
        }

        if (v5 == 7)
        {
          v37 = *(v34 - 2);
          v36 = (0xCF1BBCDCBFA56300 * v37) >> result;
          goto LABEL_43;
        }
      }

      else
      {
        if (v5 == 5)
        {
          v37 = *(v34 - 2);
          v36 = (0xCF1BBCDCBB000000 * v37) >> result;
          goto LABEL_43;
        }

        if (v5 == 6)
        {
          v37 = *(v34 - 2);
          v36 = (0xCF1BBCDCBF9B0000 * v37) >> result;
          goto LABEL_43;
        }
      }

      v36 = (-1640531535 * *(v34 - 2)) >> v13;
      v37 = *(v34 - 2);
LABEL_43:
      *(v6 + ((v36 >> 6) & 0x3FFFFFFFFFFFFFCLL)) = v35 + v36;
      *(v4 + (((0xCF1BBCDCB7A56463 * v37) >> v14 >> 6) & 0x3FFFFFFFFFFFFFCLL)) = v35 + ((0xCF1BBCDCB7A56463 * v37) >> v14);
      v34 += 3;
      v35 += 768;
    }

    while (v34 <= v10);
  }

  return result;
}

uint64_t ZSTD_compressBlock_doubleFast(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = *(a1 + 272);
  v6 = *(a1 + 112);
  v7 = *(a1 + 128);
  v8 = *(a1 + 8);
  v9 = &a4[a5];
  v10 = a4 + a5 - v8;
  v11 = *(a1 + 24);
  v12 = 1 << *(a1 + 256);
  v13 = v10 - v11 > v12;
  v14 = v10 - v12;
  v15 = *(a1 + 40) == 0;
  if (v15 && v13)
  {
    v16 = v14;
  }

  else
  {
    v16 = v11;
  }

  v17 = (v9 - 8);
  v18 = *a3;
  v19 = a3[1];
  if ((v8 + v16) == a4)
  {
    v20 = a4 + 1;
  }

  else
  {
    v20 = a4;
  }

  v21 = v20 - v8 - v11 > v12;
  v22 = v20 - v8 - v12;
  if (!v15 || !v21)
  {
    v22 = *(a1 + 24);
  }

  v23 = v20 - v8 - v22;
  if (v19 <= v23)
  {
    v24 = v19;
  }

  else
  {
    v24 = 0;
  }

  if (v18 <= v23)
  {
    v25 = v18;
  }

  else
  {
    v25 = 0;
  }

  _X5 = v20 + 1;
  v553 = *a3;
  v552 = v20 - v8 - v22;
  if (v5 == 5)
  {
    if (_X5 > v17)
    {
      goto LABEL_712;
    }

    v287 = *(a1 + 260);
    v288 = 64 - *(a1 + 264);
    v289 = 64 - v287;
    v290 = (v9 - 7);
    v550 = (v9 - 1);
    v291 = (v9 - 32);
    v546 = (v9 - 3);
LABEL_482:
    v292 = (v20 + 256);
    v293 = *v20;
    v294 = (0xCF1BBCDCB7A56463 * *v20) >> v288;
    v295 = *(v6 + 4 * v294);
    v296 = (v8 + v295);
    if (!v25)
    {
      v297 = 1;
      while (1)
      {
        v308 = (0xCF1BBCDCBB000000 * v293) >> v289;
        v309 = *(v7 + 4 * v308);
        v301 = v20 - v8;
        *(v7 + 4 * v308) = v20 - v8;
        *(v6 + 4 * v294) = v20 - v8;
        v303 = *_X5;
        v294 = (0xCF1BBCDCB7A56463 * *_X5) >> v288;
        if (v295 > v16 && *v296 == v293)
        {
          break;
        }

        v295 = *(v6 + 4 * v294);
        v296 = (v8 + v295);
        if (v309 > v16)
        {
          v304 = v8 + v309;
          if (*(v8 + v309) == *v20)
          {
LABEL_537:
            v329 = v8 + v16;
            if (v295 > v16 && *v296 == v303)
            {
              v330 = (_X5 + 8);
              v331 = (v296 + 1);
              if (v290 > (_X5 + 8))
              {
                if (*v331 == *v330)
                {
                  v331 = (v296 + 2);
                  v332 = _X5 + 16;
                  do
                  {
                    v333 = v332;
                    if (v332 >= v290)
                    {
                      goto LABEL_582;
                    }

                    v335 = *v331;
                    v331 += 4;
                    v334 = v335;
                    v332 += 8;
                  }

                  while (v335 == *v333);
                  v336 = &v333[__clz(__rbit64(*v333 ^ v334)) >> 3] - v330;
                  v329 = v8 + v16;
                }

                else
                {
                  v336 = __clz(__rbit64(*v330 ^ *v331)) >> 3;
                }

                v316 = (v9 - 1);
LABEL_655:
                v358 = v336 + 8;
                v359 = _X5 - v296;
                if (v296 > v329 && _X5 > a4)
                {
                  v360 = _X5 - 1;
                  v397 = v296 - 1;
                  while (*v360 == *v397)
                  {
                    ++v358;
                    v362 = v360 - 1;
                    if (v360 > a4)
                    {
                      --v360;
                      v542 = v397-- > v329;
                      if (v542)
                      {
                        continue;
                      }
                    }

                    goto LABEL_578;
                  }

                  goto LABEL_612;
                }

                v302 = _X5;
                if (v297 <= 3)
                {
LABEL_615:
                  *(v6 + 4 * v294) = _X5 - v8;
                }

LABEL_616:
                v364 = v302 - a4;
                v365 = *(a2 + 24);
                v314 = (v9 - 3);
                if (v302 > v291)
                {
                  if (a4 <= v291)
                  {
                    v366 = (v365 + v291 - a4);
                    *v365 = *a4;
                    if ((v291 - a4) >= 17)
                    {
                      v367 = v365 + 1;
                      v368 = (a4 + 32);
                      do
                      {
                        *v367 = *(v368 - 1);
                        v369 = *v368;
                        v368 += 2;
                        v367[1] = v369;
                        v367 += 2;
                      }

                      while (v367 < v366);
                    }

                    a4 = v9 - 32;
                    v365 = v366;
                  }

                  if (a4 >= v302)
                  {
                    goto LABEL_666;
                  }

                  v370 = v302 - a4;
                  if ((v302 - a4) < 8)
                  {
                    v377 = v365;
                  }

                  else if ((v365 - a4) < 0x20)
                  {
                    v377 = v365;
                  }

                  else
                  {
                    if (v370 < 0x20)
                    {
                      v371 = 0;
LABEL_639:
                      v382 = v370 & 0xFFFFFFFFFFFFFFF8;
                      v377 = v365 + (v370 & 0xFFFFFFFFFFFFFFF8);
                      v383 = v371 - (v370 & 0xFFFFFFFFFFFFFFF8);
                      v384 = &a4[v371];
                      v385 = (v365 + v371);
                      do
                      {
                        v386 = *v384;
                        v384 += 8;
                        *v385++ = v386;
                        v383 += 8;
                      }

                      while (v383);
                      v316 = (v9 - 1);
                      if (v370 != v382)
                      {
                        a4 += v382;
                        goto LABEL_665;
                      }

LABEL_666:
                      *(a2 + 24) += v364;
                      v357 = *(a2 + 8);
                      if (v364 >= 0x10000)
                      {
                        v399 = (v357 - *a2) >> 3;
                        *(a2 + 72) = 1;
                        *(a2 + 76) = v399;
                      }

                      goto LABEL_668;
                    }

                    v371 = v370 & 0xFFFFFFFFFFFFFFE0;
                    v378 = (a4 + 16);
                    v379 = v365 + 1;
                    v380 = v370 & 0xFFFFFFFFFFFFFFE0;
                    do
                    {
                      v381 = *v378;
                      *(v379 - 1) = *(v378 - 1);
                      *v379 = v381;
                      v378 += 2;
                      v379 += 2;
                      v380 -= 32;
                    }

                    while (v380);
                    if (v370 == v371)
                    {
                      goto LABEL_666;
                    }

                    if ((v370 & 0x18) != 0)
                    {
                      goto LABEL_639;
                    }

                    a4 += v371;
                    v377 = v365 + v371;
                  }

                  do
                  {
LABEL_665:
                    v398 = *a4++;
                    *v377++ = v398;
                  }

                  while (a4 != v302);
                  goto LABEL_666;
                }

                *v365 = *a4;
                v372 = *(a2 + 24);
                if (v364 > 0x10)
                {
                  *(v372 + 16) = *(a4 + 1);
                  if (v364 >= 33)
                  {
                    v373 = v372 + v364;
                    v374 = (v372 + 32);
                    v375 = (a4 + 48);
                    do
                    {
                      *v374 = *(v375 - 1);
                      v376 = *v375;
                      v375 += 2;
                      v374[1] = v376;
                      v374 += 2;
                    }

                    while (v374 < v373);
                  }

                  goto LABEL_666;
                }

                *(a2 + 24) = v372 + v364;
                v357 = *(a2 + 8);
LABEL_668:
                *(v357 + 4) = v364;
                *v357 = v359 + 3;
                LOWORD(v364) = v358 - 3;
                v24 = v25;
                v25 = v359;
                if (v358 - 3 >= 0x10000)
                {
LABEL_669:
                  v400 = (v357 - *a2) >> 3;
                  *(a2 + 72) = 2;
                  *(a2 + 76) = v400;
                  v25 = v359;
                }

LABEL_670:
                *(v357 + 6) = v364;
                v401 = v357 + 8;
                *(a2 + 8) = v357 + 8;
                a4 = &v302[v358];
                if (&v302[v358] > v17)
                {
                  v146 = v24;
                  v147 = v25;
LABEL_702:
                  _X5 = a4 + 1;
                  v25 = v147;
                  v24 = v146;
                  v20 = a4;
                  if ((a4 + 1) > v17)
                  {
                    goto LABEL_950;
                  }

                  goto LABEL_482;
                }

                v402 = *(v8 + (v301 + 2));
                *(v6 + 4 * ((0xCF1BBCDCB7A56463 * v402) >> v288)) = v301 + 2;
                *(v6 + 4 * ((0xCF1BBCDCB7A56463 * *(a4 - 2)) >> v288)) = a4 - 2 - v8;
                *(v7 + 4 * ((0xCF1BBCDCBB000000 * v402) >> v289)) = v301 + 2;
                *(v7 + 4 * ((0xCF1BBCDCBB000000 * *(a4 - 1)) >> v289)) = a4 - 1 - v8;
                while (2)
                {
                  v147 = v24;
                  v24 = v25;
                  if (!v147 || *a4 != *&a4[-v147])
                  {
                    v146 = v147;
                    v147 = v25;
                    goto LABEL_702;
                  }

                  v403 = (a4 + 4);
                  v404 = &a4[-v147 + 4];
                  if (v290 > (a4 + 4))
                  {
                    if (*v404 == *v403)
                    {
                      v405 = a4 + 12;
                      v404 = &a4[-v147 + 12];
                      do
                      {
                        v406 = v405;
                        if (v405 >= v290)
                        {
                          goto LABEL_683;
                        }

                        v408 = *v404;
                        v404 += 8;
                        v407 = v408;
                        v405 += 8;
                      }

                      while (v408 == *v406);
                      v409 = &v406[__clz(__rbit64(*v406 ^ v407)) >> 3] - v403;
                    }

                    else
                    {
                      v409 = __clz(__rbit64(*v403 ^ *v404)) >> 3;
                    }

LABEL_697:
                    v410 = *a4;
                    *(v7 + 4 * ((0xCF1BBCDCBB000000 * *a4) >> v289)) = a4 - v8;
                    *(v6 + 4 * ((0xCF1BBCDCB7A56463 * v410) >> v288)) = a4 - v8;
                    if (a4 <= v291)
                    {
                      **(a2 + 24) = *a4;
                      v401 = *(a2 + 8);
                    }

                    *(v401 + 4) = 0;
                    *v401 = 1;
                    if (v409 + 1 >= 0x10000)
                    {
                      v411 = (v401 - *a2) >> 3;
                      *(a2 + 72) = 2;
                      *(a2 + 76) = v411;
                    }

                    *(v401 + 6) = v409 + 1;
                    v401 += 8;
                    *(a2 + 8) = v401;
                    a4 += v409 + 4;
                    v25 = v147;
                    v146 = v24;
                    if (a4 > v17)
                    {
                      goto LABEL_702;
                    }

                    continue;
                  }

                  break;
                }

                v406 = a4 + 4;
LABEL_683:
                if (v406 >= v314)
                {
                  if (v406 >= v316)
                  {
                    goto LABEL_687;
                  }
                }

                else
                {
                  if (*v404 == *v406)
                  {
                    v404 += 4;
                    v406 += 4;
                  }

                  if (v406 >= v316)
                  {
LABEL_687:
                    if (v406 < v9)
                    {
                      goto LABEL_688;
                    }

                    goto LABEL_690;
                  }
                }

                if (*v404 == *v406)
                {
                  v404 += 2;
                  v406 += 2;
                }

                if (v406 < v9)
                {
LABEL_688:
                  if (*v404 == *v406)
                  {
                    ++v406;
                  }
                }

LABEL_690:
                v409 = v406 - v403;
                goto LABEL_697;
              }

              v333 = _X5 + 8;
LABEL_582:
              v316 = (v9 - 1);
              if (v333 >= v546)
              {
                if (v333 >= v550)
                {
                  goto LABEL_586;
                }
              }

              else
              {
                if (*v331 == *v333)
                {
                  v331 += 2;
                  v333 += 4;
                }

                if (v333 >= v550)
                {
LABEL_586:
                  if (v333 < v9)
                  {
                    goto LABEL_587;
                  }

                  goto LABEL_589;
                }
              }

              if (*v331 == *v333)
              {
                ++v331;
                v333 += 2;
              }

              if (v333 < v9)
              {
LABEL_587:
                if (*v331 == *v333)
                {
                  ++v333;
                }
              }

LABEL_589:
              v329 = v8 + v16;
              v336 = v333 - v330;
              goto LABEL_655;
            }

            v337 = (v20 + 4);
            v338 = (v304 + 4);
            if (v290 <= (v20 + 4))
            {
              v340 = v20 + 4;
            }

            else
            {
              if (*v338 != *v337)
              {
                v343 = __clz(__rbit64(*v337 ^ *v338)) >> 3;
                goto LABEL_606;
              }

              v338 = (v304 + 12);
              v339 = v20 + 12;
              while (1)
              {
                v340 = v339;
                if (v339 >= v290)
                {
                  break;
                }

                v342 = *v338++;
                v341 = v342;
                v339 += 8;
                if (v342 != *v340)
                {
                  v343 = &v340[__clz(__rbit64(*v340 ^ v341)) >> 3] - v337;
                  v329 = v8 + v16;
                  goto LABEL_606;
                }
              }

              v329 = v8 + v16;
            }

            if (v340 < v546 && *v338 == *v340)
            {
              v338 = (v338 + 4);
              v340 += 4;
            }

            if (v340 < v550 && *v338 == *v340)
            {
              v338 = (v338 + 2);
              v340 += 2;
            }

            if (v340 < v9 && *v338 == *v340)
            {
              ++v340;
            }

            v343 = v340 - v337;
LABEL_606:
            v358 = v343 + 4;
            v359 = &v20[-v304];
            if (v20 > a4 && v304 > v329)
            {
              v362 = v20 - 1;
              v363 = (v304 - 1);
              v316 = (v9 - 1);
              while (*v362 == *v363)
              {
                ++v358;
                v360 = v362 - 1;
                if (v362 > a4)
                {
                  --v362;
                  v542 = v363-- > v329;
                  if (v542)
                  {
                    continue;
                  }
                }

                goto LABEL_612;
              }

LABEL_578:
              v302 = v362 + 1;
              if (v297 <= 3)
              {
                goto LABEL_615;
              }

              goto LABEL_616;
            }

LABEL_614:
            v302 = v20;
            v316 = (v9 - 1);
            if (v297 <= 3)
            {
              goto LABEL_615;
            }

            goto LABEL_616;
          }
        }

        if (_X5 >= v292)
        {
          __asm
          {
            PRFM            #0, [X5,#0x40]
            PRFM            #0, [X5,#0x80]
          }

          ++v297;
          v292 += 256;
        }

        __asm { PRFM            #0, [X5,#0x100] }

        v20 = _X5;
        v293 = *_X5;
        _X5 += v297;
        if (_X5 > v17)
        {
LABEL_948:
          LODWORD(v147) = 0;
          goto LABEL_949;
        }
      }

LABEL_506:
      v321 = (v20 + 8);
      v322 = v296 + 1;
      if (v290 <= (v20 + 8))
      {
        v324 = v20 + 8;
LABEL_527:
        if (v324 < v546 && *v322 == *v324)
        {
          ++v322;
          v324 += 4;
        }

        if (v324 < v550 && *v322 == *v324)
        {
          v322 = (v322 + 2);
          v324 += 2;
        }

        if (v324 < v9 && *v322 == *v324)
        {
          ++v324;
        }

        v328 = v8 + v16;
        v327 = v324 - v321;
      }

      else
      {
        if (*v322 == *v321)
        {
          v322 = v296 + 2;
          v323 = v20 + 16;
          do
          {
            v324 = v323;
            if (v323 >= v290)
            {
              goto LABEL_527;
            }

            v326 = *v322;
            v322 += 2;
            v325 = v326;
            v323 += 8;
          }

          while (v326 == *v324);
          v327 = &v324[__clz(__rbit64(*v324 ^ v325)) >> 3] - v321;
        }

        else
        {
          v327 = __clz(__rbit64(*v321 ^ *v322)) >> 3;
        }

        v328 = v8 + v16;
      }

      v358 = v327 + 8;
      v359 = v20 - v296;
      if (v296 > v328 && v20 > a4)
      {
        v360 = v20 - 1;
        v361 = v296 - 1;
        v316 = (v9 - 1);
        while (*v360 == *v361)
        {
          ++v358;
          v362 = v360 - 1;
          if (v360 > a4)
          {
            --v360;
            v542 = v361-- > v328;
            if (v542)
            {
              continue;
            }
          }

          goto LABEL_578;
        }

LABEL_612:
        v302 = v360 + 1;
        if (v297 <= 3)
        {
          goto LABEL_615;
        }

        goto LABEL_616;
      }

      goto LABEL_614;
    }

    v297 = 1;
    while (1)
    {
      v299 = (0xCF1BBCDCBB000000 * v293) >> v289;
      v300 = *(v7 + 4 * v299);
      v301 = v20 - v8;
      *(v7 + 4 * v299) = v20 - v8;
      *(v6 + 4 * v294) = v20 - v8;
      v302 = v20 + 1;
      if (*&v20[-v25 + 1] == *(v20 + 1))
      {
        break;
      }

      v303 = *_X5;
      v294 = (0xCF1BBCDCB7A56463 * *_X5) >> v288;
      if (v295 > v16 && *v296 == v293)
      {
        goto LABEL_506;
      }

      v295 = *(v6 + 4 * v294);
      v296 = (v8 + v295);
      if (v300 > v16)
      {
        v304 = v8 + v300;
        if (*(v8 + v300) == *v20)
        {
          goto LABEL_537;
        }
      }

      if (_X5 >= v292)
      {
        __asm
        {
          PRFM            #0, [X5,#0x40]
          PRFM            #0, [X5,#0x80]
        }

        ++v297;
        v292 += 256;
      }

      __asm { PRFM            #0, [X5,#0x100] }

      v20 = _X5;
      v293 = *_X5;
      _X5 += v297;
      if (_X5 > v17)
      {
        goto LABEL_712;
      }
    }

    v312 = (v20 + 5);
    v313 = &v20[-v25 + 5];
    if (v290 > (v20 + 5))
    {
      v314 = (v9 - 3);
      if (*v313 == *v312)
      {
        v315 = v20 + 13;
        v313 = &v20[-v25 + 13];
        v316 = (v9 - 1);
        do
        {
          v317 = v315;
          if (v315 >= v290)
          {
            goto LABEL_513;
          }

          v319 = *v313;
          v313 += 8;
          v318 = v319;
          v315 += 8;
        }

        while (v319 == *v317);
        v320 = &v317[__clz(__rbit64(*v317 ^ v318)) >> 3] - v312;
      }

      else
      {
        v320 = __clz(__rbit64(*v312 ^ *v313)) >> 3;
        v316 = (v9 - 1);
      }

LABEL_553:
      v344 = v302 - a4;
      v345 = *(a2 + 24);
      if (v302 <= v291)
      {
        *v345 = *a4;
        v352 = *(a2 + 24);
        if (v344 <= 0x10)
        {
          *(a2 + 24) = v352 + v344;
          v357 = *(a2 + 8);
          goto LABEL_709;
        }

        *(v352 + 16) = *(a4 + 1);
        if (v344 >= 33)
        {
          v353 = v352 + v344;
          v354 = (v352 + 32);
          v355 = (a4 + 48);
          do
          {
            *v354 = *(v355 - 1);
            v356 = *v355;
            v355 += 2;
            v354[1] = v356;
            v354 += 2;
          }

          while (v354 < v353);
        }

LABEL_706:
        *(a2 + 24) += v344;
        v357 = *(a2 + 8);
        if (v344 >= 0x10000)
        {
          v413 = (v357 - *a2) >> 3;
          *(a2 + 72) = 1;
          *(a2 + 76) = v413;
        }

        v316 = (v9 - 1);
LABEL_709:
        v358 = v320 + 4;
        *(v357 + 4) = v344;
        *v357 = 1;
        v364 = v320 + 1;
        v359 = v25;
        if (v364 >> 16)
        {
          goto LABEL_669;
        }

        goto LABEL_670;
      }

      if (a4 <= v291)
      {
        v346 = (v345 + v291 - a4);
        *v345 = *a4;
        if ((v291 - a4) >= 17)
        {
          v347 = v345 + 1;
          v348 = (a4 + 32);
          do
          {
            *v347 = *(v348 - 1);
            v349 = *v348;
            v348 += 2;
            v347[1] = v349;
            v347 += 2;
          }

          while (v347 < v346);
        }

        a4 = v9 - 32;
        v345 = v346;
      }

      if (a4 >= v302)
      {
        goto LABEL_706;
      }

      v350 = v302 - a4;
      if ((v302 - a4) < 8)
      {
        v387 = v345;
      }

      else if ((v345 - a4) < 0x20)
      {
        v387 = v345;
      }

      else
      {
        if (v350 < 0x20)
        {
          v351 = 0;
LABEL_649:
          v392 = v350 & 0xFFFFFFFFFFFFFFF8;
          v387 = v345 + (v350 & 0xFFFFFFFFFFFFFFF8);
          v393 = v351 - (v350 & 0xFFFFFFFFFFFFFFF8);
          v394 = &a4[v351];
          v395 = (v345 + v351);
          do
          {
            v396 = *v394;
            v394 += 8;
            *v395++ = v396;
            v393 += 8;
          }

          while (v393);
          if (v350 == v392)
          {
            goto LABEL_706;
          }

          a4 += v392;
          goto LABEL_705;
        }

        v351 = v350 & 0xFFFFFFFFFFFFFFE0;
        v388 = (a4 + 16);
        v389 = v345 + 1;
        v390 = v350 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v391 = *v388;
          *(v389 - 1) = *(v388 - 1);
          *v389 = v391;
          v388 += 2;
          v389 += 2;
          v390 -= 32;
        }

        while (v390);
        if (v350 == v351)
        {
          goto LABEL_706;
        }

        if ((v350 & 0x18) != 0)
        {
          goto LABEL_649;
        }

        a4 += v351;
        v387 = v345 + v351;
      }

      do
      {
LABEL_705:
        v412 = *a4++;
        *v387++ = v412;
      }

      while (a4 != v302);
      goto LABEL_706;
    }

    v317 = v20 + 5;
    v314 = (v9 - 3);
    v316 = (v9 - 1);
LABEL_513:
    if (v317 >= v314)
    {
      if (v317 >= v316)
      {
        goto LABEL_517;
      }
    }

    else
    {
      if (*v313 == *v317)
      {
        v313 += 4;
        v317 += 4;
      }

      if (v317 >= v316)
      {
LABEL_517:
        if (v317 >= v9)
        {
LABEL_520:
          v320 = v317 - v312;
          goto LABEL_553;
        }

LABEL_518:
        if (*v313 == *v317)
        {
          ++v317;
        }

        goto LABEL_520;
      }
    }

    if (*v313 == *v317)
    {
      v313 += 2;
      v317 += 2;
    }

    if (v317 >= v9)
    {
      goto LABEL_520;
    }

    goto LABEL_518;
  }

  if (v5 == 6)
  {
    if (_X5 > v17)
    {
      goto LABEL_712;
    }

    v160 = *(a1 + 260);
    v161 = 64 - *(a1 + 264);
    v162 = 64 - v160;
    v163 = (v9 - 7);
    v549 = (v9 - 1);
    v164 = (v9 - 32);
    v545 = (v9 - 3);
LABEL_251:
    v165 = (v20 + 256);
    v166 = *v20;
    v167 = (0xCF1BBCDCB7A56463 * *v20) >> v161;
    v168 = *(v6 + 4 * v167);
    v169 = (v8 + v168);
    if (!v25)
    {
      v170 = 1;
      while (1)
      {
        v181 = (0xCF1BBCDCBF9B0000 * v166) >> v162;
        v182 = *(v7 + 4 * v181);
        v174 = v20 - v8;
        *(v7 + 4 * v181) = v20 - v8;
        *(v6 + 4 * v167) = v20 - v8;
        v176 = *_X5;
        v167 = (0xCF1BBCDCB7A56463 * *_X5) >> v161;
        if (v168 > v16 && *v169 == v166)
        {
          break;
        }

        v168 = *(v6 + 4 * v167);
        v169 = (v8 + v168);
        if (v182 > v16)
        {
          v177 = v8 + v182;
          if (*(v8 + v182) == *v20)
          {
LABEL_306:
            v202 = v8 + v16;
            if (v168 > v16 && *v169 == v176)
            {
              v203 = (_X5 + 8);
              v204 = (v169 + 1);
              if (v163 > (_X5 + 8))
              {
                if (*v204 == *v203)
                {
                  v204 = (v169 + 2);
                  v205 = _X5 + 16;
                  do
                  {
                    v206 = v205;
                    if (v205 >= v163)
                    {
                      goto LABEL_351;
                    }

                    v208 = *v204;
                    v204 += 4;
                    v207 = v208;
                    v205 += 8;
                  }

                  while (v208 == *v206);
                  v209 = &v206[__clz(__rbit64(*v206 ^ v207)) >> 3] - v203;
                  v202 = v8 + v16;
                }

                else
                {
                  v209 = __clz(__rbit64(*v203 ^ *v204)) >> 3;
                }

                v189 = (v9 - 1);
LABEL_424:
                v231 = v209 + 8;
                v232 = _X5 - v169;
                if (v169 > v202 && _X5 > a4)
                {
                  v233 = _X5 - 1;
                  v270 = v169 - 1;
                  while (*v233 == *v270)
                  {
                    ++v231;
                    v235 = v233 - 1;
                    if (v233 > a4)
                    {
                      --v233;
                      v542 = v270-- > v202;
                      if (v542)
                      {
                        continue;
                      }
                    }

                    goto LABEL_347;
                  }

                  goto LABEL_381;
                }

                v175 = _X5;
                if (v170 <= 3)
                {
LABEL_384:
                  *(v6 + 4 * v167) = _X5 - v8;
                }

LABEL_385:
                v237 = v175 - a4;
                v238 = *(a2 + 24);
                v187 = (v9 - 3);
                if (v175 > v164)
                {
                  if (a4 <= v164)
                  {
                    v239 = (v238 + v164 - a4);
                    *v238 = *a4;
                    if ((v164 - a4) >= 17)
                    {
                      v240 = v238 + 1;
                      v241 = (a4 + 32);
                      do
                      {
                        *v240 = *(v241 - 1);
                        v242 = *v241;
                        v241 += 2;
                        v240[1] = v242;
                        v240 += 2;
                      }

                      while (v240 < v239);
                    }

                    a4 = v9 - 32;
                    v238 = v239;
                  }

                  if (a4 >= v175)
                  {
                    goto LABEL_435;
                  }

                  v243 = v175 - a4;
                  if ((v175 - a4) < 8)
                  {
                    v250 = v238;
                  }

                  else if ((v238 - a4) < 0x20)
                  {
                    v250 = v238;
                  }

                  else
                  {
                    if (v243 < 0x20)
                    {
                      v244 = 0;
LABEL_408:
                      v255 = v243 & 0xFFFFFFFFFFFFFFF8;
                      v250 = v238 + (v243 & 0xFFFFFFFFFFFFFFF8);
                      v256 = v244 - (v243 & 0xFFFFFFFFFFFFFFF8);
                      v257 = &a4[v244];
                      v258 = (v238 + v244);
                      do
                      {
                        v259 = *v257;
                        v257 += 8;
                        *v258++ = v259;
                        v256 += 8;
                      }

                      while (v256);
                      v189 = (v9 - 1);
                      if (v243 != v255)
                      {
                        a4 += v255;
                        goto LABEL_434;
                      }

LABEL_435:
                      *(a2 + 24) += v237;
                      v230 = *(a2 + 8);
                      if (v237 >= 0x10000)
                      {
                        v272 = (v230 - *a2) >> 3;
                        *(a2 + 72) = 1;
                        *(a2 + 76) = v272;
                      }

                      goto LABEL_437;
                    }

                    v244 = v243 & 0xFFFFFFFFFFFFFFE0;
                    v251 = (a4 + 16);
                    v252 = v238 + 1;
                    v253 = v243 & 0xFFFFFFFFFFFFFFE0;
                    do
                    {
                      v254 = *v251;
                      *(v252 - 1) = *(v251 - 1);
                      *v252 = v254;
                      v251 += 2;
                      v252 += 2;
                      v253 -= 32;
                    }

                    while (v253);
                    if (v243 == v244)
                    {
                      goto LABEL_435;
                    }

                    if ((v243 & 0x18) != 0)
                    {
                      goto LABEL_408;
                    }

                    a4 += v244;
                    v250 = v238 + v244;
                  }

                  do
                  {
LABEL_434:
                    v271 = *a4++;
                    *v250++ = v271;
                  }

                  while (a4 != v175);
                  goto LABEL_435;
                }

                *v238 = *a4;
                v245 = *(a2 + 24);
                if (v237 > 0x10)
                {
                  *(v245 + 16) = *(a4 + 1);
                  if (v237 >= 33)
                  {
                    v246 = v245 + v237;
                    v247 = (v245 + 32);
                    v248 = (a4 + 48);
                    do
                    {
                      *v247 = *(v248 - 1);
                      v249 = *v248;
                      v248 += 2;
                      v247[1] = v249;
                      v247 += 2;
                    }

                    while (v247 < v246);
                  }

                  goto LABEL_435;
                }

                *(a2 + 24) = v245 + v237;
                v230 = *(a2 + 8);
LABEL_437:
                *(v230 + 4) = v237;
                *v230 = v232 + 3;
                LOWORD(v237) = v231 - 3;
                v24 = v25;
                v25 = v232;
                if (v231 - 3 >= 0x10000)
                {
LABEL_438:
                  v273 = (v230 - *a2) >> 3;
                  *(a2 + 72) = 2;
                  *(a2 + 76) = v273;
                  v25 = v232;
                }

LABEL_439:
                *(v230 + 6) = v237;
                v274 = v230 + 8;
                *(a2 + 8) = v230 + 8;
                a4 = &v175[v231];
                if (&v175[v231] > v17)
                {
                  v146 = v24;
                  v147 = v25;
LABEL_471:
                  _X5 = a4 + 1;
                  v25 = v147;
                  v24 = v146;
                  v20 = a4;
                  if ((a4 + 1) > v17)
                  {
                    goto LABEL_950;
                  }

                  goto LABEL_251;
                }

                v275 = *(v8 + (v174 + 2));
                *(v6 + 4 * ((0xCF1BBCDCB7A56463 * v275) >> v161)) = v174 + 2;
                *(v6 + 4 * ((0xCF1BBCDCB7A56463 * *(a4 - 2)) >> v161)) = a4 - 2 - v8;
                *(v7 + 4 * ((0xCF1BBCDCBF9B0000 * v275) >> v162)) = v174 + 2;
                *(v7 + 4 * ((0xCF1BBCDCBF9B0000 * *(a4 - 1)) >> v162)) = a4 - 1 - v8;
                while (2)
                {
                  v147 = v24;
                  v24 = v25;
                  if (!v147 || *a4 != *&a4[-v147])
                  {
                    v146 = v147;
                    v147 = v25;
                    goto LABEL_471;
                  }

                  v276 = (a4 + 4);
                  v277 = &a4[-v147 + 4];
                  if (v163 > (a4 + 4))
                  {
                    if (*v277 == *v276)
                    {
                      v278 = a4 + 12;
                      v277 = &a4[-v147 + 12];
                      do
                      {
                        v279 = v278;
                        if (v278 >= v163)
                        {
                          goto LABEL_452;
                        }

                        v281 = *v277;
                        v277 += 8;
                        v280 = v281;
                        v278 += 8;
                      }

                      while (v281 == *v279);
                      v282 = &v279[__clz(__rbit64(*v279 ^ v280)) >> 3] - v276;
                    }

                    else
                    {
                      v282 = __clz(__rbit64(*v276 ^ *v277)) >> 3;
                    }

LABEL_466:
                    v283 = *a4;
                    *(v7 + 4 * ((0xCF1BBCDCBF9B0000 * *a4) >> v162)) = a4 - v8;
                    *(v6 + 4 * ((0xCF1BBCDCB7A56463 * v283) >> v161)) = a4 - v8;
                    if (a4 <= v164)
                    {
                      **(a2 + 24) = *a4;
                      v274 = *(a2 + 8);
                    }

                    *(v274 + 4) = 0;
                    *v274 = 1;
                    if (v282 + 1 >= 0x10000)
                    {
                      v284 = (v274 - *a2) >> 3;
                      *(a2 + 72) = 2;
                      *(a2 + 76) = v284;
                    }

                    *(v274 + 6) = v282 + 1;
                    v274 += 8;
                    *(a2 + 8) = v274;
                    a4 += v282 + 4;
                    v25 = v147;
                    v146 = v24;
                    if (a4 > v17)
                    {
                      goto LABEL_471;
                    }

                    continue;
                  }

                  break;
                }

                v279 = a4 + 4;
LABEL_452:
                if (v279 >= v187)
                {
                  if (v279 >= v189)
                  {
                    goto LABEL_456;
                  }
                }

                else
                {
                  if (*v277 == *v279)
                  {
                    v277 += 4;
                    v279 += 4;
                  }

                  if (v279 >= v189)
                  {
LABEL_456:
                    if (v279 < v9)
                    {
                      goto LABEL_457;
                    }

                    goto LABEL_459;
                  }
                }

                if (*v277 == *v279)
                {
                  v277 += 2;
                  v279 += 2;
                }

                if (v279 < v9)
                {
LABEL_457:
                  if (*v277 == *v279)
                  {
                    ++v279;
                  }
                }

LABEL_459:
                v282 = v279 - v276;
                goto LABEL_466;
              }

              v206 = _X5 + 8;
LABEL_351:
              v189 = (v9 - 1);
              if (v206 >= v545)
              {
                if (v206 >= v549)
                {
                  goto LABEL_355;
                }
              }

              else
              {
                if (*v204 == *v206)
                {
                  v204 += 2;
                  v206 += 4;
                }

                if (v206 >= v549)
                {
LABEL_355:
                  if (v206 < v9)
                  {
                    goto LABEL_356;
                  }

                  goto LABEL_358;
                }
              }

              if (*v204 == *v206)
              {
                ++v204;
                v206 += 2;
              }

              if (v206 < v9)
              {
LABEL_356:
                if (*v204 == *v206)
                {
                  ++v206;
                }
              }

LABEL_358:
              v202 = v8 + v16;
              v209 = v206 - v203;
              goto LABEL_424;
            }

            v210 = (v20 + 4);
            v211 = (v177 + 4);
            if (v163 <= (v20 + 4))
            {
              v213 = v20 + 4;
            }

            else
            {
              if (*v211 != *v210)
              {
                v216 = __clz(__rbit64(*v210 ^ *v211)) >> 3;
                goto LABEL_375;
              }

              v211 = (v177 + 12);
              v212 = v20 + 12;
              while (1)
              {
                v213 = v212;
                if (v212 >= v163)
                {
                  break;
                }

                v215 = *v211++;
                v214 = v215;
                v212 += 8;
                if (v215 != *v213)
                {
                  v216 = &v213[__clz(__rbit64(*v213 ^ v214)) >> 3] - v210;
                  v202 = v8 + v16;
                  goto LABEL_375;
                }
              }

              v202 = v8 + v16;
            }

            if (v213 < v545 && *v211 == *v213)
            {
              v211 = (v211 + 4);
              v213 += 4;
            }

            if (v213 < v549 && *v211 == *v213)
            {
              v211 = (v211 + 2);
              v213 += 2;
            }

            if (v213 < v9 && *v211 == *v213)
            {
              ++v213;
            }

            v216 = v213 - v210;
LABEL_375:
            v231 = v216 + 4;
            v232 = &v20[-v177];
            if (v20 > a4 && v177 > v202)
            {
              v235 = v20 - 1;
              v236 = (v177 - 1);
              v189 = (v9 - 1);
              while (*v235 == *v236)
              {
                ++v231;
                v233 = v235 - 1;
                if (v235 > a4)
                {
                  --v235;
                  v542 = v236-- > v202;
                  if (v542)
                  {
                    continue;
                  }
                }

                goto LABEL_381;
              }

LABEL_347:
              v175 = v235 + 1;
              if (v170 <= 3)
              {
                goto LABEL_384;
              }

              goto LABEL_385;
            }

LABEL_383:
            v175 = v20;
            v189 = (v9 - 1);
            if (v170 <= 3)
            {
              goto LABEL_384;
            }

            goto LABEL_385;
          }
        }

        if (_X5 >= v165)
        {
          __asm
          {
            PRFM            #0, [X5,#0x40]
            PRFM            #0, [X5,#0x80]
          }

          ++v170;
          v165 += 256;
        }

        __asm { PRFM            #0, [X5,#0x100] }

        v20 = _X5;
        v166 = *_X5;
        _X5 += v170;
        if (_X5 > v17)
        {
          goto LABEL_948;
        }
      }

LABEL_275:
      v194 = (v20 + 8);
      v195 = v169 + 1;
      if (v163 <= (v20 + 8))
      {
        v197 = v20 + 8;
LABEL_296:
        if (v197 < v545 && *v195 == *v197)
        {
          ++v195;
          v197 += 4;
        }

        if (v197 < v549 && *v195 == *v197)
        {
          v195 = (v195 + 2);
          v197 += 2;
        }

        if (v197 < v9 && *v195 == *v197)
        {
          ++v197;
        }

        v201 = v8 + v16;
        v200 = v197 - v194;
      }

      else
      {
        if (*v195 == *v194)
        {
          v195 = v169 + 2;
          v196 = v20 + 16;
          do
          {
            v197 = v196;
            if (v196 >= v163)
            {
              goto LABEL_296;
            }

            v199 = *v195;
            v195 += 2;
            v198 = v199;
            v196 += 8;
          }

          while (v199 == *v197);
          v200 = &v197[__clz(__rbit64(*v197 ^ v198)) >> 3] - v194;
        }

        else
        {
          v200 = __clz(__rbit64(*v194 ^ *v195)) >> 3;
        }

        v201 = v8 + v16;
      }

      v231 = v200 + 8;
      v232 = v20 - v169;
      if (v169 > v201 && v20 > a4)
      {
        v233 = v20 - 1;
        v234 = v169 - 1;
        v189 = (v9 - 1);
        while (*v233 == *v234)
        {
          ++v231;
          v235 = v233 - 1;
          if (v233 > a4)
          {
            --v233;
            v542 = v234-- > v201;
            if (v542)
            {
              continue;
            }
          }

          goto LABEL_347;
        }

LABEL_381:
        v175 = v233 + 1;
        if (v170 <= 3)
        {
          goto LABEL_384;
        }

        goto LABEL_385;
      }

      goto LABEL_383;
    }

    v170 = 1;
    while (1)
    {
      v172 = (0xCF1BBCDCBF9B0000 * v166) >> v162;
      v173 = *(v7 + 4 * v172);
      v174 = v20 - v8;
      *(v7 + 4 * v172) = v20 - v8;
      *(v6 + 4 * v167) = v20 - v8;
      v175 = v20 + 1;
      if (*&v20[-v25 + 1] == *(v20 + 1))
      {
        break;
      }

      v176 = *_X5;
      v167 = (0xCF1BBCDCB7A56463 * *_X5) >> v161;
      if (v168 > v16 && *v169 == v166)
      {
        goto LABEL_275;
      }

      v168 = *(v6 + 4 * v167);
      v169 = (v8 + v168);
      if (v173 > v16)
      {
        v177 = v8 + v173;
        if (*(v8 + v173) == *v20)
        {
          goto LABEL_306;
        }
      }

      if (_X5 >= v165)
      {
        __asm
        {
          PRFM            #0, [X5,#0x40]
          PRFM            #0, [X5,#0x80]
        }

        ++v170;
        v165 += 256;
      }

      __asm { PRFM            #0, [X5,#0x100] }

      v20 = _X5;
      v166 = *_X5;
      _X5 += v170;
      if (_X5 > v17)
      {
        goto LABEL_712;
      }
    }

    v185 = (v20 + 5);
    v186 = &v20[-v25 + 5];
    if (v163 > (v20 + 5))
    {
      v187 = (v9 - 3);
      if (*v186 == *v185)
      {
        v188 = v20 + 13;
        v186 = &v20[-v25 + 13];
        v189 = (v9 - 1);
        do
        {
          v190 = v188;
          if (v188 >= v163)
          {
            goto LABEL_282;
          }

          v192 = *v186;
          v186 += 8;
          v191 = v192;
          v188 += 8;
        }

        while (v192 == *v190);
        v193 = &v190[__clz(__rbit64(*v190 ^ v191)) >> 3] - v185;
      }

      else
      {
        v193 = __clz(__rbit64(*v185 ^ *v186)) >> 3;
        v189 = (v9 - 1);
      }

LABEL_322:
      v217 = v175 - a4;
      v218 = *(a2 + 24);
      if (v175 <= v164)
      {
        *v218 = *a4;
        v225 = *(a2 + 24);
        if (v217 <= 0x10)
        {
          *(a2 + 24) = v225 + v217;
          v230 = *(a2 + 8);
          goto LABEL_478;
        }

        *(v225 + 16) = *(a4 + 1);
        if (v217 >= 33)
        {
          v226 = v225 + v217;
          v227 = (v225 + 32);
          v228 = (a4 + 48);
          do
          {
            *v227 = *(v228 - 1);
            v229 = *v228;
            v228 += 2;
            v227[1] = v229;
            v227 += 2;
          }

          while (v227 < v226);
        }

LABEL_475:
        *(a2 + 24) += v217;
        v230 = *(a2 + 8);
        if (v217 >= 0x10000)
        {
          v286 = (v230 - *a2) >> 3;
          *(a2 + 72) = 1;
          *(a2 + 76) = v286;
        }

        v189 = (v9 - 1);
LABEL_478:
        v231 = v193 + 4;
        *(v230 + 4) = v217;
        *v230 = 1;
        v237 = v193 + 1;
        v232 = v25;
        if (v237 >> 16)
        {
          goto LABEL_438;
        }

        goto LABEL_439;
      }

      if (a4 <= v164)
      {
        v219 = (v218 + v164 - a4);
        *v218 = *a4;
        if ((v164 - a4) >= 17)
        {
          v220 = v218 + 1;
          v221 = (a4 + 32);
          do
          {
            *v220 = *(v221 - 1);
            v222 = *v221;
            v221 += 2;
            v220[1] = v222;
            v220 += 2;
          }

          while (v220 < v219);
        }

        a4 = v9 - 32;
        v218 = v219;
      }

      if (a4 >= v175)
      {
        goto LABEL_475;
      }

      v223 = v175 - a4;
      if ((v175 - a4) < 8)
      {
        v260 = v218;
      }

      else if ((v218 - a4) < 0x20)
      {
        v260 = v218;
      }

      else
      {
        if (v223 < 0x20)
        {
          v224 = 0;
LABEL_418:
          v265 = v223 & 0xFFFFFFFFFFFFFFF8;
          v260 = v218 + (v223 & 0xFFFFFFFFFFFFFFF8);
          v266 = v224 - (v223 & 0xFFFFFFFFFFFFFFF8);
          v267 = &a4[v224];
          v268 = (v218 + v224);
          do
          {
            v269 = *v267;
            v267 += 8;
            *v268++ = v269;
            v266 += 8;
          }

          while (v266);
          if (v223 == v265)
          {
            goto LABEL_475;
          }

          a4 += v265;
          goto LABEL_474;
        }

        v224 = v223 & 0xFFFFFFFFFFFFFFE0;
        v261 = (a4 + 16);
        v262 = v218 + 1;
        v263 = v223 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v264 = *v261;
          *(v262 - 1) = *(v261 - 1);
          *v262 = v264;
          v261 += 2;
          v262 += 2;
          v263 -= 32;
        }

        while (v263);
        if (v223 == v224)
        {
          goto LABEL_475;
        }

        if ((v223 & 0x18) != 0)
        {
          goto LABEL_418;
        }

        a4 += v224;
        v260 = v218 + v224;
      }

      do
      {
LABEL_474:
        v285 = *a4++;
        *v260++ = v285;
      }

      while (a4 != v175);
      goto LABEL_475;
    }

    v190 = v20 + 5;
    v187 = (v9 - 3);
    v189 = (v9 - 1);
LABEL_282:
    if (v190 >= v187)
    {
      if (v190 >= v189)
      {
        goto LABEL_286;
      }
    }

    else
    {
      if (*v186 == *v190)
      {
        v186 += 4;
        v190 += 4;
      }

      if (v190 >= v189)
      {
LABEL_286:
        if (v190 >= v9)
        {
LABEL_289:
          v193 = v190 - v185;
          goto LABEL_322;
        }

LABEL_287:
        if (*v186 == *v190)
        {
          ++v190;
        }

        goto LABEL_289;
      }
    }

    if (*v186 == *v190)
    {
      v186 += 2;
      v190 += 2;
    }

    if (v190 >= v9)
    {
      goto LABEL_289;
    }

    goto LABEL_287;
  }

  if (v5 != 7)
  {
    if (_X5 > v17)
    {
      goto LABEL_712;
    }

    v414 = *(a1 + 260);
    v415 = 64 - *(a1 + 264);
    v416 = 32 - v414;
    v417 = (v9 - 7);
    v418 = (v9 - 32);
    v547 = (v9 - 3);
    v551 = (v9 - 1);
LABEL_714:
    v419 = (v20 + 256);
    v420 = *v20;
    v421 = 0xCF1BBCDCB7A56463 * *v20;
    v422 = v421 >> v415;
    v423 = *(v6 + 4 * (v421 >> v415));
    v424 = (v8 + v423);
    if (v25)
    {
      v425 = 1;
      while (1)
      {
        v427 = (-1640531535 * v420) >> v416;
        v428 = *(v7 + 4 * v427);
        v429 = v20 - v8;
        *(v7 + 4 * v427) = v20 - v8;
        *(v6 + 4 * v422) = v20 - v8;
        v430 = v20 + 1;
        if (*&v20[-v25 + 1] == *(v20 + 1))
        {
          break;
        }

        v420 = *_X5;
        v422 = (0xCF1BBCDCB7A56463 * *_X5) >> v415;
        if (v423 > v16 && *v424 == *v20)
        {
          goto LABEL_738;
        }

        v423 = *(v6 + 4 * v422);
        v424 = (v8 + v423);
        if (v428 > v16)
        {
          v431 = v8 + v428;
          if (*(v8 + v428) == *v20)
          {
            LODWORD(v434) = *(v6 + 4 * v422);
            goto LABEL_759;
          }
        }

        if (_X5 >= v419)
        {
          __asm
          {
            PRFM            #0, [X5,#0x40]
            PRFM            #0, [X5,#0x80]
          }

          ++v425;
          v419 += 256;
        }

        __asm { PRFM            #0, [X5,#0x100] }

        v20 = _X5;
        _X5 += v425;
        if (_X5 > v17)
        {
          goto LABEL_712;
        }
      }

      v440 = (v20 + 5);
      v441 = &v20[-v25 + 5];
      if (v417 > (v20 + 5))
      {
        v443 = (v9 - 3);
        v442 = (v9 - 1);
        if (*v441 == *v440)
        {
          v444 = v20 + 13;
          v441 = &v20[-v25 + 13];
          do
          {
            v445 = v444;
            if (v444 >= v417)
            {
              goto LABEL_745;
            }

            v447 = *v441;
            v441 += 8;
            v446 = v447;
            v444 += 8;
          }

          while (v447 == *v445);
          v448 = &v445[__clz(__rbit64(*v445 ^ v446)) >> 3] - v440;
        }

        else
        {
          v448 = __clz(__rbit64(*v440 ^ *v441)) >> 3;
        }

LABEL_789:
        v472 = v430 - a4;
        v473 = *(a2 + 24);
        if (v430 <= v418)
        {
          *v473 = *a4;
          v480 = *(a2 + 24);
          if (v472 <= 0x10)
          {
            *(a2 + 24) = v480 + v472;
            v485 = *(a2 + 8);
            goto LABEL_946;
          }

          *(v480 + 16) = *(a4 + 1);
          if (v472 >= 33)
          {
            v481 = v480 + v472;
            v482 = (v480 + 32);
            v483 = (a4 + 48);
            do
            {
              *v482 = *(v483 - 1);
              v484 = *v483;
              v483 += 2;
              v482[1] = v484;
              v482 += 2;
            }

            while (v482 < v481);
          }
        }

        else
        {
          if (a4 <= v418)
          {
            v474 = (v473 + v418 - a4);
            *v473 = *a4;
            if ((v418 - a4) >= 17)
            {
              v475 = v473 + 1;
              v476 = (a4 + 32);
              do
              {
                *v475 = *(v476 - 1);
                v477 = *v476;
                v476 += 2;
                v475[1] = v477;
                v475 += 2;
              }

              while (v475 < v474);
            }

            a4 = v9 - 32;
            v473 = v474;
          }

          if (a4 >= v430)
          {
            goto LABEL_944;
          }

          v478 = v430 - a4;
          if ((v430 - a4) < 8)
          {
            v515 = v473;
            goto LABEL_943;
          }

          if ((v473 - a4) < 0x20)
          {
            v515 = v473;
            goto LABEL_943;
          }

          if (v478 >= 0x20)
          {
            v479 = v478 & 0xFFFFFFFFFFFFFFE0;
            v516 = (a4 + 16);
            v517 = v473 + 1;
            v518 = v478 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v519 = *v516;
              *(v517 - 1) = *(v516 - 1);
              *v517 = v519;
              v516 += 2;
              v517 += 2;
              v518 -= 32;
            }

            while (v518);
            if (v478 == v479)
            {
              goto LABEL_944;
            }

            if ((v478 & 0x18) == 0)
            {
              a4 += v479;
              v515 = v473 + v479;
              do
              {
LABEL_943:
                v538 = *a4++;
                *v515++ = v538;
              }

              while (a4 != v430);
              goto LABEL_944;
            }
          }

          else
          {
            v479 = 0;
          }

          v520 = v478 & 0xFFFFFFFFFFFFFFF8;
          v515 = v473 + (v478 & 0xFFFFFFFFFFFFFFF8);
          v521 = v479 - (v478 & 0xFFFFFFFFFFFFFFF8);
          v522 = &a4[v479];
          v523 = (v473 + v479);
          do
          {
            v524 = *v522;
            v522 += 8;
            *v523++ = v524;
            v521 += 8;
          }

          while (v521);
          if (v478 != v520)
          {
            a4 += v520;
            goto LABEL_943;
          }
        }

LABEL_944:
        *(a2 + 24) += v472;
        v485 = *(a2 + 8);
        if (v472 >= 0x10000)
        {
          v539 = (v485 - *a2) >> 3;
          *(a2 + 72) = 1;
          *(a2 + 76) = v539;
        }

LABEL_946:
        v486 = v448 + 4;
        *(v485 + 4) = v472;
        *v485 = 1;
        v492 = v448 + 1;
        v487 = v25;
        if (v492 >> 16)
        {
          goto LABEL_907;
        }

        goto LABEL_908;
      }

      v445 = v20 + 5;
      v443 = (v9 - 3);
      v442 = (v9 - 1);
LABEL_745:
      if (v445 >= v443)
      {
        if (v445 >= v442)
        {
          goto LABEL_749;
        }
      }

      else
      {
        if (*v441 == *v445)
        {
          v441 += 4;
          v445 += 4;
        }

        if (v445 >= v442)
        {
LABEL_749:
          if (v445 >= v9)
          {
LABEL_752:
            v448 = v445 - v440;
            goto LABEL_789;
          }

LABEL_750:
          if (*v441 == *v445)
          {
            ++v445;
          }

          goto LABEL_752;
        }
      }

      if (*v441 == *v445)
      {
        v441 += 2;
        v445 += 2;
      }

      if (v445 >= v9)
      {
        goto LABEL_752;
      }

      goto LABEL_750;
    }

    v425 = 1;
    LODWORD(v434) = *(v6 + 4 * (v421 >> v415));
    while (1)
    {
      v436 = (-1640531535 * v420) >> v416;
      v437 = *(v7 + 4 * v436);
      v429 = v20 - v8;
      *(v7 + 4 * v436) = v20 - v8;
      *(v6 + 4 * v422) = v20 - v8;
      v420 = *_X5;
      v422 = (0xCF1BBCDCB7A56463 * *_X5) >> v415;
      if (v434 > v16 && *v424 == *v20)
      {
        break;
      }

      v434 = *(v6 + 4 * v422);
      v424 = (v8 + v434);
      if (v437 > v16)
      {
        v431 = v8 + v437;
        if (*(v8 + v437) == *v20)
        {
LABEL_759:
          v456 = v8 + v16;
          if (v434 > v16 && *v424 == v420)
          {
            v457 = (_X5 + 8);
            v458 = (v424 + 1);
            if (v417 > (_X5 + 8))
            {
              if (*v458 == *v457)
              {
                v458 = (v424 + 2);
                v459 = _X5 + 16;
                do
                {
                  v460 = v459;
                  if (v459 >= v417)
                  {
                    goto LABEL_818;
                  }

                  v462 = *v458;
                  v458 += 4;
                  v461 = v462;
                  v459 += 8;
                }

                while (v462 == *v460);
                v463 = &v460[__clz(__rbit64(*v460 ^ v461)) >> 3] - v457;
                v456 = v8 + v16;
              }

              else
              {
                v463 = __clz(__rbit64(*v457 ^ *v458)) >> 3;
              }

LABEL_893:
              v486 = v463 + 8;
              v487 = _X5 - v424;
              if (v424 <= v456 || _X5 <= a4)
              {
                v430 = _X5;
                if (v425 <= 3)
                {
                  goto LABEL_849;
                }

                goto LABEL_850;
              }

              v488 = _X5 - 1;
              v525 = v424 - 1;
              while (*v488 == *v525)
              {
                ++v486;
                v490 = v488 - 1;
                if (v488 > a4)
                {
                  --v488;
                  v542 = v525-- > v456;
                  if (v542)
                  {
                    continue;
                  }
                }

                goto LABEL_814;
              }

LABEL_846:
              v430 = v488 + 1;
              if (v425 <= 3)
              {
                goto LABEL_849;
              }

              goto LABEL_850;
            }

            v460 = _X5 + 8;
LABEL_818:
            if (v460 >= v547)
            {
              if (v460 >= v551)
              {
                goto LABEL_822;
              }
            }

            else
            {
              if (*v458 == *v460)
              {
                v458 += 2;
                v460 += 4;
              }

              if (v460 >= v551)
              {
LABEL_822:
                if (v460 < v9)
                {
                  goto LABEL_823;
                }

                goto LABEL_825;
              }
            }

            if (*v458 == *v460)
            {
              ++v458;
              v460 += 2;
            }

            if (v460 < v9)
            {
LABEL_823:
              if (*v458 == *v460)
              {
                ++v460;
              }
            }

LABEL_825:
            v456 = v8 + v16;
            v463 = v460 - v457;
            goto LABEL_893;
          }

          v464 = (v20 + 4);
          v465 = (v431 + 4);
          if (v417 <= (v20 + 4))
          {
            v467 = v20 + 4;
          }

          else
          {
            if (*v465 != *v464)
            {
              v470 = __clz(__rbit64(*v464 ^ *v465)) >> 3;
              goto LABEL_840;
            }

            v465 = (v431 + 12);
            v466 = v20 + 12;
            while (2)
            {
              v467 = v466;
              if (v466 < v417)
              {
                v469 = *v465++;
                v468 = v469;
                v466 += 8;
                if (v469 == *v467)
                {
                  continue;
                }

                v470 = &v467[__clz(__rbit64(*v467 ^ v468)) >> 3] - v464;
                v456 = v8 + v16;
LABEL_840:
                v486 = v470 + 4;
                v487 = &v20[-v431];
                if (v20 <= a4 || v431 <= v456)
                {
                  goto LABEL_848;
                }

                v490 = v20 - 1;
                v491 = (v431 - 1);
                while (*v490 == *v491)
                {
                  ++v486;
                  v488 = v490 - 1;
                  if (v490 > a4)
                  {
                    --v490;
                    v542 = v491-- > v456;
                    if (v542)
                    {
                      continue;
                    }
                  }

                  goto LABEL_846;
                }

LABEL_814:
                v430 = v490 + 1;
                if (v425 <= 3)
                {
LABEL_849:
                  *(v6 + 4 * v422) = _X5 - v8;
                }

LABEL_850:
                v492 = v430 - a4;
                v493 = *(a2 + 24);
                v443 = (v9 - 3);
                if (v430 > v418)
                {
                  if (a4 <= v418)
                  {
                    v494 = (v493 + v418 - a4);
                    *v493 = *a4;
                    if ((v418 - a4) >= 17)
                    {
                      v495 = v493 + 1;
                      v496 = (a4 + 32);
                      do
                      {
                        *v495 = *(v496 - 1);
                        v497 = *v496;
                        v496 += 2;
                        v495[1] = v497;
                        v495 += 2;
                      }

                      while (v495 < v494);
                    }

                    a4 = v9 - 32;
                    v493 = v494;
                  }

                  if (a4 >= v430)
                  {
                    goto LABEL_904;
                  }

                  v498 = v430 - a4;
                  if ((v430 - a4) < 8)
                  {
                    v505 = v493;
                  }

                  else if ((v493 - a4) < 0x20)
                  {
                    v505 = v493;
                  }

                  else
                  {
                    if (v498 < 0x20)
                    {
                      v499 = 0;
LABEL_878:
                      v510 = v498 & 0xFFFFFFFFFFFFFFF8;
                      v505 = v493 + (v498 & 0xFFFFFFFFFFFFFFF8);
                      v511 = v499 - (v498 & 0xFFFFFFFFFFFFFFF8);
                      v512 = &a4[v499];
                      v513 = (v493 + v499);
                      do
                      {
                        v514 = *v512;
                        v512 += 8;
                        *v513++ = v514;
                        v511 += 8;
                      }

                      while (v511);
                      if (v498 != v510)
                      {
                        a4 += v510;
                        goto LABEL_903;
                      }

LABEL_904:
                      *(a2 + 24) += v492;
                      v485 = *(a2 + 8);
                      if (v492 >= 0x10000)
                      {
                        v527 = (v485 - *a2) >> 3;
                        *(a2 + 72) = 1;
                        *(a2 + 76) = v527;
                      }

                      goto LABEL_906;
                    }

                    v499 = v498 & 0xFFFFFFFFFFFFFFE0;
                    v506 = (a4 + 16);
                    v507 = v493 + 1;
                    v508 = v498 & 0xFFFFFFFFFFFFFFE0;
                    do
                    {
                      v509 = *v506;
                      *(v507 - 1) = *(v506 - 1);
                      *v507 = v509;
                      v506 += 2;
                      v507 += 2;
                      v508 -= 32;
                    }

                    while (v508);
                    if (v498 == v499)
                    {
                      goto LABEL_904;
                    }

                    if ((v498 & 0x18) != 0)
                    {
                      goto LABEL_878;
                    }

                    a4 += v499;
                    v505 = v493 + v499;
                  }

                  do
                  {
LABEL_903:
                    v526 = *a4++;
                    *v505++ = v526;
                  }

                  while (a4 != v430);
                  goto LABEL_904;
                }

                *v493 = *a4;
                v500 = *(a2 + 24);
                if (v492 > 0x10)
                {
                  *(v500 + 16) = *(a4 + 1);
                  if (v492 >= 33)
                  {
                    v501 = v500 + v492;
                    v502 = (v500 + 32);
                    v503 = (a4 + 48);
                    do
                    {
                      *v502 = *(v503 - 1);
                      v504 = *v503;
                      v503 += 2;
                      v502[1] = v504;
                      v502 += 2;
                    }

                    while (v502 < v501);
                  }

                  goto LABEL_904;
                }

                *(a2 + 24) = v500 + v492;
                v485 = *(a2 + 8);
LABEL_906:
                *(v485 + 4) = v492;
                *v485 = v487 + 3;
                LOWORD(v492) = v486 - 3;
                v24 = v25;
                v25 = v487;
                if (v486 - 3 >= 0x10000)
                {
LABEL_907:
                  v528 = (v485 - *a2) >> 3;
                  *(a2 + 72) = 2;
                  *(a2 + 76) = v528;
                  v25 = v487;
                }

LABEL_908:
                *(v485 + 6) = v492;
                v529 = v485 + 8;
                *(a2 + 8) = v485 + 8;
                a4 = &v430[v486];
                if (&v430[v486] > v17)
                {
                  v146 = v24;
                  v147 = v25;
LABEL_940:
                  _X5 = a4 + 1;
                  v25 = v147;
                  v24 = v146;
                  v20 = a4;
                  if ((a4 + 1) > v17)
                  {
                    goto LABEL_950;
                  }

                  goto LABEL_714;
                }

                *(v6 + 4 * ((0xCF1BBCDCB7A56463 * *(v8 + (v429 + 2))) >> v415)) = v429 + 2;
                *(v6 + 4 * ((0xCF1BBCDCB7A56463 * *(a4 - 2)) >> v415)) = a4 - 2 - v8;
                *(v7 + 4 * ((-1640531535 * *(v8 + (v429 + 2))) >> v416)) = v429 + 2;
                *(v7 + 4 * ((-1640531535 * *(a4 - 1)) >> v416)) = a4 - 1 - v8;
                while (2)
                {
                  v147 = v24;
                  v24 = v25;
                  if (!v147 || *a4 != *&a4[-v147])
                  {
                    v146 = v147;
                    v147 = v25;
                    goto LABEL_940;
                  }

                  v530 = (a4 + 4);
                  v531 = &a4[-v147 + 4];
                  if (v417 > (a4 + 4))
                  {
                    if (*v531 == *v530)
                    {
                      v532 = a4 + 12;
                      v531 = &a4[-v147 + 12];
                      do
                      {
                        v533 = v532;
                        if (v532 >= v417)
                        {
                          goto LABEL_921;
                        }

                        v535 = *v531;
                        v531 += 8;
                        v534 = v535;
                        v532 += 8;
                      }

                      while (v535 == *v533);
                      v536 = &v533[__clz(__rbit64(*v533 ^ v534)) >> 3] - v530;
                    }

                    else
                    {
                      v536 = __clz(__rbit64(*v530 ^ *v531)) >> 3;
                    }

LABEL_935:
                    *(v7 + 4 * ((-1640531535 * *a4) >> v416)) = a4 - v8;
                    *(v6 + 4 * ((0xCF1BBCDCB7A56463 * *a4) >> v415)) = a4 - v8;
                    if (a4 <= v418)
                    {
                      **(a2 + 24) = *a4;
                      v529 = *(a2 + 8);
                    }

                    *(v529 + 4) = 0;
                    *v529 = 1;
                    if (v536 + 1 >= 0x10000)
                    {
                      v537 = (v529 - *a2) >> 3;
                      *(a2 + 72) = 2;
                      *(a2 + 76) = v537;
                    }

                    *(v529 + 6) = v536 + 1;
                    v529 += 8;
                    *(a2 + 8) = v529;
                    a4 += v536 + 4;
                    v25 = v147;
                    v146 = v24;
                    if (a4 > v17)
                    {
                      goto LABEL_940;
                    }

                    continue;
                  }

                  break;
                }

                v533 = a4 + 4;
LABEL_921:
                if (v533 >= v443)
                {
                  if (v533 >= v551)
                  {
                    goto LABEL_925;
                  }
                }

                else
                {
                  if (*v531 == *v533)
                  {
                    v531 += 4;
                    v533 += 4;
                  }

                  if (v533 >= v551)
                  {
LABEL_925:
                    if (v533 < v9)
                    {
                      goto LABEL_926;
                    }

                    goto LABEL_928;
                  }
                }

                if (*v531 == *v533)
                {
                  v531 += 2;
                  v533 += 2;
                }

                if (v533 < v9)
                {
LABEL_926:
                  if (*v531 == *v533)
                  {
                    ++v533;
                  }
                }

LABEL_928:
                v536 = v533 - v530;
                goto LABEL_935;
              }

              break;
            }

            v456 = v8 + v16;
          }

          if (v467 >= v547)
          {
            if (v467 >= v551)
            {
              goto LABEL_836;
            }
          }

          else
          {
            if (*v465 == *v467)
            {
              v465 = (v465 + 4);
              v467 += 4;
            }

            if (v467 >= v551)
            {
LABEL_836:
              if (v467 < v9)
              {
                goto LABEL_837;
              }

              goto LABEL_839;
            }
          }

          if (*v465 == *v467)
          {
            v465 = (v465 + 2);
            v467 += 2;
          }

          if (v467 < v9)
          {
LABEL_837:
            if (*v465 == *v467)
            {
              ++v467;
            }
          }

LABEL_839:
          v470 = v467 - v464;
          goto LABEL_840;
        }
      }

      if (_X5 >= v419)
      {
        __asm
        {
          PRFM            #0, [X5,#0x40]
          PRFM            #0, [X5,#0x80]
        }

        ++v425;
        v419 += 256;
      }

      __asm { PRFM            #0, [X5,#0x100] }

      v20 = _X5;
      _X5 += v425;
      if (_X5 > v17)
      {
        goto LABEL_948;
      }
    }

LABEL_738:
    v449 = (v20 + 8);
    v450 = (v424 + 1);
    if (v417 > (v20 + 8))
    {
      if (*v450 == *v449)
      {
        v450 = (v424 + 2);
        v451 = v20 + 16;
        do
        {
          v452 = v451;
          if (v451 >= v417)
          {
            goto LABEL_774;
          }

          v454 = *v450;
          v450 += 8;
          v453 = v454;
          v451 += 8;
        }

        while (v454 == *v452);
        v455 = &v452[__clz(__rbit64(*v452 ^ v453)) >> 3] - v449;
      }

      else
      {
        v455 = __clz(__rbit64(*v449 ^ *v450)) >> 3;
      }

      v471 = v8 + v16;
LABEL_808:
      v486 = v455 + 8;
      v487 = v20 - v424;
      if (v424 > v471 && v20 > a4)
      {
        v488 = v20 - 1;
        v489 = v424 - 1;
        while (*v488 == *v489)
        {
          ++v486;
          v490 = v488 - 1;
          if (v488 > a4)
          {
            --v488;
            v542 = v489-- > v471;
            if (v542)
            {
              continue;
            }
          }

          goto LABEL_814;
        }

        goto LABEL_846;
      }

LABEL_848:
      v430 = v20;
      if (v425 <= 3)
      {
        goto LABEL_849;
      }

      goto LABEL_850;
    }

    v452 = v20 + 8;
LABEL_774:
    if (v452 >= v547)
    {
      if (v452 >= v551)
      {
        goto LABEL_778;
      }
    }

    else
    {
      if (*v450 == *v452)
      {
        v450 += 4;
        v452 += 4;
      }

      if (v452 >= v551)
      {
LABEL_778:
        if (v452 >= v9)
        {
LABEL_781:
          v471 = v8 + v16;
          v455 = v452 - v449;
          goto LABEL_808;
        }

LABEL_779:
        if (*v450 == *v452)
        {
          ++v452;
        }

        goto LABEL_781;
      }
    }

    if (*v450 == *v452)
    {
      v450 += 2;
      v452 += 2;
    }

    if (v452 >= v9)
    {
      goto LABEL_781;
    }

    goto LABEL_779;
  }

  if (_X5 > v17)
  {
LABEL_712:
    LODWORD(v147) = v25;
LABEL_949:
    LODWORD(v146) = v24;
    goto LABEL_950;
  }

  v27 = *(a1 + 260);
  v28 = 64 - *(a1 + 264);
  v29 = 64 - v27;
  v30 = (v9 - 7);
  v548 = (v9 - 1);
  v31 = (v9 - 32);
  v544 = (v9 - 3);
  do
  {
    v32 = (v20 + 256);
    v33 = *v20;
    v34 = (0xCF1BBCDCB7A56463 * *v20) >> v28;
    v35 = *(v6 + 4 * v34);
    v36 = (v8 + v35);
    if (v25)
    {
      v37 = 1;
      while (1)
      {
        v43 = (0xCF1BBCDCBFA56300 * v33) >> v29;
        v44 = *(v7 + 4 * v43);
        v45 = v20 - v8;
        *(v7 + 4 * v43) = v20 - v8;
        *(v6 + 4 * v34) = v20 - v8;
        v46 = v20 + 1;
        if (*&v20[-v25 + 1] == *(v20 + 1))
        {
          break;
        }

        v47 = *_X5;
        v34 = (0xCF1BBCDCB7A56463 * *_X5) >> v28;
        if (v35 > v16 && *v36 == v33)
        {
          goto LABEL_44;
        }

        v35 = *(v6 + 4 * v34);
        v36 = (v8 + v35);
        if (v44 > v16)
        {
          v48 = v8 + v44;
          if (*(v8 + v44) == *v20)
          {
            goto LABEL_75;
          }
        }

        if (_X5 >= v32)
        {
          __asm
          {
            PRFM            #0, [X5,#0x40]
            PRFM            #0, [X5,#0x80]
          }

          ++v37;
          v32 += 256;
        }

        __asm { PRFM            #0, [X5,#0x100] }

        v20 = _X5;
        v33 = *_X5;
        _X5 += v37;
        if (_X5 > v17)
        {
          goto LABEL_712;
        }
      }

      v56 = (v20 + 5);
      v57 = &v20[-v25 + 5];
      if (v30 <= (v20 + 5))
      {
        v61 = v20 + 5;
        v58 = (v9 - 3);
        v60 = (v9 - 1);
      }

      else
      {
        v58 = (v9 - 3);
        if (*v57 != *v56)
        {
          v64 = __clz(__rbit64(*v56 ^ *v57)) >> 3;
          v60 = (v9 - 1);
LABEL_91:
          v88 = v46 - a4;
          v89 = *(a2 + 24);
          if (v46 <= v31)
          {
            *v89 = *a4;
            v96 = *(a2 + 24);
            if (v88 <= 0x10)
            {
              *(a2 + 24) = v96 + v88;
              v101 = *(a2 + 8);
              goto LABEL_247;
            }

            *(v96 + 16) = *(a4 + 1);
            if (v88 >= 33)
            {
              v97 = v96 + v88;
              v98 = (v96 + 32);
              v99 = (a4 + 48);
              do
              {
                *v98 = *(v99 - 1);
                v100 = *v99;
                v99 += 2;
                v98[1] = v100;
                v98 += 2;
              }

              while (v98 < v97);
            }

LABEL_244:
            *(a2 + 24) += v88;
            v101 = *(a2 + 8);
            if (v88 >= 0x10000)
            {
              v159 = (v101 - *a2) >> 3;
              *(a2 + 72) = 1;
              *(a2 + 76) = v159;
            }

            v60 = (v9 - 1);
LABEL_247:
            v102 = v64 + 4;
            *(v101 + 4) = v88;
            *v101 = 1;
            v108 = v64 + 1;
            v103 = v25;
            if (v108 >> 16)
            {
              goto LABEL_207;
            }

            goto LABEL_208;
          }

          if (a4 <= v31)
          {
            v90 = (v89 + v31 - a4);
            *v89 = *a4;
            if ((v31 - a4) >= 17)
            {
              v91 = v89 + 1;
              v92 = (a4 + 32);
              do
              {
                *v91 = *(v92 - 1);
                v93 = *v92;
                v92 += 2;
                v91[1] = v93;
                v91 += 2;
              }

              while (v91 < v90);
            }

            a4 = v9 - 32;
            v89 = v90;
          }

          if (a4 >= v46)
          {
            goto LABEL_244;
          }

          v94 = v46 - a4;
          if ((v46 - a4) < 8)
          {
            v131 = v89;
          }

          else if ((v89 - a4) < 0x20)
          {
            v131 = v89;
          }

          else
          {
            if (v94 < 0x20)
            {
              v95 = 0;
LABEL_187:
              v136 = v94 & 0xFFFFFFFFFFFFFFF8;
              v131 = v89 + (v94 & 0xFFFFFFFFFFFFFFF8);
              v137 = v95 - (v94 & 0xFFFFFFFFFFFFFFF8);
              v138 = &a4[v95];
              v139 = (v89 + v95);
              do
              {
                v140 = *v138;
                v138 += 8;
                *v139++ = v140;
                v137 += 8;
              }

              while (v137);
              if (v94 == v136)
              {
                goto LABEL_244;
              }

              a4 += v136;
              goto LABEL_243;
            }

            v95 = v94 & 0xFFFFFFFFFFFFFFE0;
            v132 = (a4 + 16);
            v133 = v89 + 1;
            v134 = v94 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v135 = *v132;
              *(v133 - 1) = *(v132 - 1);
              *v133 = v135;
              v132 += 2;
              v133 += 2;
              v134 -= 32;
            }

            while (v134);
            if (v94 == v95)
            {
              goto LABEL_244;
            }

            if ((v94 & 0x18) != 0)
            {
              goto LABEL_187;
            }

            a4 += v95;
            v131 = v89 + v95;
          }

          do
          {
LABEL_243:
            v158 = *a4++;
            *v131++ = v158;
          }

          while (a4 != v46);
          goto LABEL_244;
        }

        v59 = v20 + 13;
        v57 = &v20[-v25 + 13];
        v60 = (v9 - 1);
        while (1)
        {
          v61 = v59;
          if (v59 >= v30)
          {
            break;
          }

          v63 = *v57;
          v57 += 8;
          v62 = v63;
          v59 += 8;
          if (v63 != *v61)
          {
            v64 = &v61[__clz(__rbit64(*v61 ^ v62)) >> 3] - v56;
            goto LABEL_91;
          }
        }
      }

      if (v61 >= v58)
      {
        if (v61 >= v60)
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (*v57 == *v61)
        {
          v57 += 4;
          v61 += 4;
        }

        if (v61 >= v60)
        {
LABEL_55:
          if (v61 >= v9)
          {
LABEL_58:
            v64 = v61 - v56;
            goto LABEL_91;
          }

LABEL_56:
          if (*v57 == *v61)
          {
            ++v61;
          }

          goto LABEL_58;
        }
      }

      if (*v57 == *v61)
      {
        v57 += 2;
        v61 += 2;
      }

      if (v61 >= v9)
      {
        goto LABEL_58;
      }

      goto LABEL_56;
    }

    v37 = 1;
    while (1)
    {
      v52 = (0xCF1BBCDCBFA56300 * v33) >> v29;
      v53 = *(v7 + 4 * v52);
      v45 = v20 - v8;
      *(v7 + 4 * v52) = v20 - v8;
      *(v6 + 4 * v34) = v20 - v8;
      v47 = *_X5;
      v34 = (0xCF1BBCDCB7A56463 * *_X5) >> v28;
      if (v35 > v16 && *v36 == v33)
      {
LABEL_44:
        v65 = (v20 + 8);
        v66 = v36 + 1;
        if (v30 <= (v20 + 8))
        {
          v68 = v20 + 8;
        }

        else
        {
          if (*v66 != *v65)
          {
            v71 = __clz(__rbit64(*v65 ^ *v66)) >> 3;
LABEL_109:
            v72 = v8 + v16;
LABEL_110:
            v102 = v71 + 8;
            v103 = v20 - v36;
            if (v36 > v72 && v20 > a4)
            {
              v104 = v20 - 1;
              v105 = v36 - 1;
              v60 = (v9 - 1);
              while (*v104 == *v105)
              {
                ++v102;
                v106 = v104 - 1;
                if (v104 > a4)
                {
                  --v104;
                  v542 = v105-- > v72;
                  if (v542)
                  {
                    continue;
                  }
                }

                goto LABEL_116;
              }

              goto LABEL_150;
            }

            goto LABEL_152;
          }

          v66 = v36 + 2;
          v67 = v20 + 16;
          while (1)
          {
            v68 = v67;
            if (v67 >= v30)
            {
              break;
            }

            v70 = *v66++;
            v69 = v70;
            v67 += 8;
            if (v70 != *v68)
            {
              v71 = &v68[__clz(__rbit64(*v68 ^ v69)) >> 3] - v65;
              goto LABEL_109;
            }
          }
        }

        if (v68 < v544 && *v66 == *v68)
        {
          v66 = (v66 + 4);
          v68 += 4;
        }

        if (v68 < v548 && *v66 == *v68)
        {
          v66 = (v66 + 2);
          v68 += 2;
        }

        if (v68 < v9 && *v66 == *v68)
        {
          ++v68;
        }

        v72 = v8 + v16;
        v71 = v68 - v65;
        goto LABEL_110;
      }

      v35 = *(v6 + 4 * v34);
      v36 = (v8 + v35);
      if (v53 > v16)
      {
        v48 = v8 + v53;
        if (*(v8 + v53) == *v20)
        {
          break;
        }
      }

      if (_X5 >= v32)
      {
        __asm
        {
          PRFM            #0, [X5,#0x40]
          PRFM            #0, [X5,#0x80]
        }

        ++v37;
        v32 += 256;
      }

      __asm { PRFM            #0, [X5,#0x100] }

      v20 = _X5;
      v33 = *_X5;
      _X5 += v37;
      if (_X5 > v17)
      {
        goto LABEL_948;
      }
    }

LABEL_75:
    v73 = v8 + v16;
    if (v35 <= v16 || *v36 != v47)
    {
      v81 = (v20 + 4);
      v82 = (v48 + 4);
      if (v30 <= (v20 + 4))
      {
        v84 = v20 + 4;
      }

      else
      {
        if (*v82 != *v81)
        {
          v87 = __clz(__rbit64(*v81 ^ *v82)) >> 3;
          goto LABEL_144;
        }

        v82 = (v48 + 12);
        v83 = v20 + 12;
        while (1)
        {
          v84 = v83;
          if (v83 >= v30)
          {
            break;
          }

          v86 = *v82++;
          v85 = v86;
          v83 += 8;
          if (v86 != *v84)
          {
            v87 = &v84[__clz(__rbit64(*v84 ^ v85)) >> 3] - v81;
            v73 = v8 + v16;
            goto LABEL_144;
          }
        }

        v73 = v8 + v16;
      }

      if (v84 < v544 && *v82 == *v84)
      {
        v82 = (v82 + 4);
        v84 += 4;
      }

      if (v84 < v548 && *v82 == *v84)
      {
        v82 = (v82 + 2);
        v84 += 2;
      }

      if (v84 < v9 && *v82 == *v84)
      {
        ++v84;
      }

      v87 = v84 - v81;
LABEL_144:
      v102 = v87 + 4;
      v103 = &v20[-v48];
      if (v20 > a4 && v48 > v73)
      {
        v106 = v20 - 1;
        v107 = (v48 - 1);
        v60 = (v9 - 1);
        while (*v106 == *v107)
        {
          ++v102;
          v104 = v106 - 1;
          if (v106 > a4)
          {
            --v106;
            v542 = v107-- > v73;
            if (v542)
            {
              continue;
            }
          }

          goto LABEL_150;
        }

LABEL_116:
        v46 = v106 + 1;
        if (v37 <= 3)
        {
          goto LABEL_153;
        }

        goto LABEL_154;
      }

LABEL_152:
      v46 = v20;
      v60 = (v9 - 1);
      if (v37 > 3)
      {
        goto LABEL_154;
      }

      goto LABEL_153;
    }

    v74 = (_X5 + 8);
    v75 = (v36 + 1);
    if (v30 <= (_X5 + 8))
    {
      v77 = _X5 + 8;
      goto LABEL_120;
    }

    if (*v75 == *v74)
    {
      v75 = (v36 + 2);
      v76 = _X5 + 16;
      while (1)
      {
        v77 = v76;
        if (v76 >= v30)
        {
          break;
        }

        v79 = *v75;
        v75 += 4;
        v78 = v79;
        v76 += 8;
        if (v79 != *v77)
        {
          v80 = &v77[__clz(__rbit64(*v77 ^ v78)) >> 3] - v74;
          v73 = v8 + v16;
          goto LABEL_192;
        }
      }

LABEL_120:
      v60 = (v9 - 1);
      if (v77 >= v544)
      {
        if (v77 >= v548)
        {
          goto LABEL_124;
        }
      }

      else
      {
        if (*v75 == *v77)
        {
          v75 += 2;
          v77 += 4;
        }

        if (v77 >= v548)
        {
LABEL_124:
          if (v77 < v9)
          {
            goto LABEL_125;
          }

          goto LABEL_127;
        }
      }

      if (*v75 == *v77)
      {
        ++v75;
        v77 += 2;
      }

      if (v77 < v9)
      {
LABEL_125:
        if (*v75 == *v77)
        {
          ++v77;
        }
      }

LABEL_127:
      v73 = v8 + v16;
      v80 = v77 - v74;
    }

    else
    {
      v80 = __clz(__rbit64(*v74 ^ *v75)) >> 3;
LABEL_192:
      v60 = (v9 - 1);
    }

    v102 = v80 + 8;
    v103 = _X5 - v36;
    if (v36 > v73 && _X5 > a4)
    {
      v104 = _X5 - 1;
      v141 = v36 - 1;
      while (*v104 == *v141)
      {
        ++v102;
        v106 = v104 - 1;
        if (v104 > a4)
        {
          --v104;
          v542 = v141-- > v73;
          if (v542)
          {
            continue;
          }
        }

        goto LABEL_116;
      }

LABEL_150:
      v46 = v104 + 1;
      if (v37 > 3)
      {
        goto LABEL_154;
      }

LABEL_153:
      *(v6 + 4 * v34) = _X5 - v8;
      goto LABEL_154;
    }

    v46 = _X5;
    if (v37 <= 3)
    {
      goto LABEL_153;
    }

LABEL_154:
    v108 = v46 - a4;
    v109 = *(a2 + 24);
    v58 = (v9 - 3);
    if (v46 > v31)
    {
      if (a4 <= v31)
      {
        v110 = (v109 + v31 - a4);
        *v109 = *a4;
        if ((v31 - a4) >= 17)
        {
          v111 = v109 + 1;
          v112 = (a4 + 32);
          do
          {
            *v111 = *(v112 - 1);
            v113 = *v112;
            v112 += 2;
            v111[1] = v113;
            v111 += 2;
          }

          while (v111 < v110);
        }

        a4 = v9 - 32;
        v109 = v110;
      }

      if (a4 >= v46)
      {
        goto LABEL_204;
      }

      v114 = v46 - a4;
      if ((v46 - a4) < 8)
      {
        v121 = v109;
      }

      else if ((v109 - a4) < 0x20)
      {
        v121 = v109;
      }

      else
      {
        if (v114 < 0x20)
        {
          v115 = 0;
LABEL_177:
          v126 = v114 & 0xFFFFFFFFFFFFFFF8;
          v121 = v109 + (v114 & 0xFFFFFFFFFFFFFFF8);
          v127 = v115 - (v114 & 0xFFFFFFFFFFFFFFF8);
          v128 = &a4[v115];
          v129 = (v109 + v115);
          do
          {
            v130 = *v128;
            v128 += 8;
            *v129++ = v130;
            v127 += 8;
          }

          while (v127);
          v60 = (v9 - 1);
          if (v114 != v126)
          {
            a4 += v126;
            goto LABEL_203;
          }

LABEL_204:
          *(a2 + 24) += v108;
          v101 = *(a2 + 8);
          if (v108 >= 0x10000)
          {
            v143 = (v101 - *a2) >> 3;
            *(a2 + 72) = 1;
            *(a2 + 76) = v143;
          }

          goto LABEL_206;
        }

        v115 = v114 & 0xFFFFFFFFFFFFFFE0;
        v122 = (a4 + 16);
        v123 = v109 + 1;
        v124 = v114 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v125 = *v122;
          *(v123 - 1) = *(v122 - 1);
          *v123 = v125;
          v122 += 2;
          v123 += 2;
          v124 -= 32;
        }

        while (v124);
        if (v114 == v115)
        {
          goto LABEL_204;
        }

        if ((v114 & 0x18) != 0)
        {
          goto LABEL_177;
        }

        a4 += v115;
        v121 = v109 + v115;
      }

      do
      {
LABEL_203:
        v142 = *a4++;
        *v121++ = v142;
      }

      while (a4 != v46);
      goto LABEL_204;
    }

    *v109 = *a4;
    v116 = *(a2 + 24);
    if (v108 > 0x10)
    {
      *(v116 + 16) = *(a4 + 1);
      if (v108 >= 33)
      {
        v117 = v116 + v108;
        v118 = (v116 + 32);
        v119 = (a4 + 48);
        do
        {
          *v118 = *(v119 - 1);
          v120 = *v119;
          v119 += 2;
          v118[1] = v120;
          v118 += 2;
        }

        while (v118 < v117);
      }

      goto LABEL_204;
    }

    *(a2 + 24) = v116 + v108;
    v101 = *(a2 + 8);
LABEL_206:
    *(v101 + 4) = v108;
    *v101 = v103 + 3;
    LOWORD(v108) = v102 - 3;
    v24 = v25;
    v25 = v103;
    if (v102 - 3 >= 0x10000)
    {
LABEL_207:
      v144 = (v101 - *a2) >> 3;
      *(a2 + 72) = 2;
      *(a2 + 76) = v144;
      v25 = v103;
    }

LABEL_208:
    *(v101 + 6) = v108;
    v145 = v101 + 8;
    *(a2 + 8) = v101 + 8;
    a4 = &v46[v102];
    if (&v46[v102] > v17)
    {
      v146 = v24;
      v147 = v25;
      goto LABEL_240;
    }

    v148 = *(v8 + (v45 + 2));
    *(v6 + 4 * ((0xCF1BBCDCB7A56463 * v148) >> v28)) = v45 + 2;
    *(v6 + 4 * ((0xCF1BBCDCB7A56463 * *(a4 - 2)) >> v28)) = a4 - 2 - v8;
    *(v7 + 4 * ((0xCF1BBCDCBFA56300 * v148) >> v29)) = v45 + 2;
    *(v7 + 4 * ((0xCF1BBCDCBFA56300 * *(a4 - 1)) >> v29)) = a4 - 1 - v8;
    while (2)
    {
      v147 = v24;
      v24 = v25;
      if (v147 && *a4 == *&a4[-v147])
      {
        v149 = (a4 + 4);
        v150 = &a4[-v147 + 4];
        if (v30 <= (a4 + 4))
        {
          v152 = a4 + 4;
          goto LABEL_221;
        }

        if (*v150 == *v149)
        {
          v151 = a4 + 12;
          v150 = &a4[-v147 + 12];
          while (1)
          {
            v152 = v151;
            if (v151 >= v30)
            {
              break;
            }

            v154 = *v150;
            v150 += 8;
            v153 = v154;
            v151 += 8;
            if (v154 != *v152)
            {
              v155 = &v152[__clz(__rbit64(*v152 ^ v153)) >> 3] - v149;
              goto LABEL_235;
            }
          }

LABEL_221:
          if (v152 >= v58)
          {
            if (v152 >= v60)
            {
              goto LABEL_225;
            }
          }

          else
          {
            if (*v150 == *v152)
            {
              v150 += 4;
              v152 += 4;
            }

            if (v152 >= v60)
            {
LABEL_225:
              if (v152 < v9)
              {
                goto LABEL_226;
              }

              goto LABEL_228;
            }
          }

          if (*v150 == *v152)
          {
            v150 += 2;
            v152 += 2;
          }

          if (v152 < v9)
          {
LABEL_226:
            if (*v150 == *v152)
            {
              ++v152;
            }
          }

LABEL_228:
          v155 = v152 - v149;
        }

        else
        {
          v155 = __clz(__rbit64(*v149 ^ *v150)) >> 3;
        }

LABEL_235:
        v156 = *a4;
        *(v7 + 4 * ((0xCF1BBCDCBFA56300 * *a4) >> v29)) = a4 - v8;
        *(v6 + 4 * ((0xCF1BBCDCB7A56463 * v156) >> v28)) = a4 - v8;
        if (a4 <= v31)
        {
          **(a2 + 24) = *a4;
          v145 = *(a2 + 8);
        }

        *(v145 + 4) = 0;
        *v145 = 1;
        if (v155 + 1 >= 0x10000)
        {
          v157 = (v145 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v157;
        }

        *(v145 + 6) = v155 + 1;
        v145 += 8;
        *(a2 + 8) = v145;
        a4 += v155 + 4;
        v25 = v147;
        v146 = v24;
        if (a4 > v17)
        {
          goto LABEL_240;
        }

        continue;
      }

      break;
    }

    v146 = v147;
    v147 = v25;
LABEL_240:
    _X5 = a4 + 1;
    v25 = v147;
    v24 = v146;
    v20 = a4;
  }

  while ((a4 + 1) <= v17);
LABEL_950:
  v540 = v19;
  if (v553 <= v552)
  {
    v541 = 0;
  }

  else
  {
    v541 = v553;
  }

  if (v19 <= v552)
  {
    v540 = 0;
  }

  if (v147)
  {
    v541 = v147;
    v542 = v553 > v552;
  }

  else
  {
    v542 = 0;
  }

  if (v542)
  {
    v540 = v553;
  }

  if (v146)
  {
    v540 = v146;
  }

  *a3 = v541;
  a3[1] = v540;
  return v9 - a4;
}

unint64_t ZSTD_compressBlock_doubleFast_dictMatchState(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = *(a1 + 272);
  v6 = *(a1 + 112);
  v7 = *(a1 + 264);
  v8 = *(a1 + 128);
  v9 = *(a1 + 260);
  v10 = *(a1 + 8);
  v11 = &a4[a5];
  v12 = a4 + a5 - v10;
  v13 = *(a1 + 24);
  v14 = 1 << *(a1 + 256);
  v15 = v12 - v13;
  LODWORD(v16) = v12 - v14;
  _ZF = v15 > v14 && *(a1 + 40) == 0;
  if (_ZF)
  {
    v16 = v16;
  }

  else
  {
    v16 = v13;
  }

  v1022 = (v10 + v16);
  v18 = v11 - 8;
  v19 = *a3;
  v20 = a3[1];
  v21 = *(a1 + 248);
  v22 = *(v21 + 112);
  v23 = *(v21 + 128);
  v24 = *(v21 + 8);
  v1017 = *(v21 + 24);
  v25 = v24 + v1017;
  v1029 = v24;
  v1030 = *v21;
  v1028 = v16 + v24 - *v21;
  v26 = *(v21 + 264);
  v27 = *(v21 + 260);
  v1000 = v25;
  v28 = &a4[-v25 - v10 - v16 + *v21];
  v29 = *(a1 + 296);
  v1023 = v22;
  if (v5 == 5)
  {
    if (v29)
    {
      if (v26 <= 0x3D)
      {
        v508 = 0;
        do
        {
          _X6 = v22 + v508;
          __asm { PRFM            #2, [X6] }

          v508 += 64;
        }

        while (v508 < 4 << v26);
      }

      if (v27 <= 0x3D)
      {
        v511 = 0;
        do
        {
          _X5 = v23 + v511;
          __asm { PRFM            #2, [X5] }

          v511 += 64;
        }

        while (v511 < 4 << v27);
      }
    }

    if (v28)
    {
      v514 = a4;
    }

    else
    {
      v514 = a4 + 1;
    }

    if (v514 >= v18)
    {
      goto LABEL_1756;
    }

    v1020 = v23;
    v999 = a3;
    v515 = 64 - v7;
    v516 = 64 - v9;
    v1003 = 56 - v27;
    v1026 = v16 - 1;
    v517 = v11 - 7;
    v1011 = v11 - 3;
    v1015 = 56 - v26;
    v1007 = v11 - 1;
    v985 = v1029 + 16;
    v518 = v16 + v10 + 8;
    v989 = v1029 - 1;
    v993 = v10 + 16;
    v997 = v10 - 1;
LABEL_895:
    v519 = *v514;
    v520 = 0xCF1BBCDCB7A56463 * *v514;
    v521 = v520 >> v515;
    v522 = 0xCF1BBCDCBB000000 * *v514;
    v523 = v522 >> v516;
    v524 = v520 >> v1015;
    v525 = v522 >> v1003;
    v526 = *(v22 + ((v520 >> v1015 >> 6) & 0x3FFFFFFFFFFFFFCLL));
    v527 = *(v1020 + ((v522 >> v1003 >> 6) & 0x3FFFFFFFFFFFFFCLL));
    v528 = v514 - v10;
    v529 = *(v6 + 4 * (v520 >> v515));
    v530 = *(v8 + 4 * (v522 >> v516));
    v531 = v514 - v10 + 1;
    v532 = (v531 - v19);
    v533 = (v1029 + v532 - v1028);
    if (v532 >= v16)
    {
      v533 = (v10 + v532);
    }

    *(v8 + 4 * v523) = v528;
    *(v6 + 4 * v521) = v528;
    if ((v1026 - v532) >= 3)
    {
      v534 = v514 + 1;
      if (*v533 == *(v514 + 1))
      {
        if (v532 >= v16)
        {
          v535 = v11;
        }

        else
        {
          v535 = v1030;
        }

        v536 = (v514 + 5);
        v537 = v533 + 1;
        if (&v514[v535 - (v533 + 1) + 5] >= v11)
        {
          v538 = v11;
        }

        else
        {
          v538 = &v514[v535 - (v533 + 1) + 5];
        }

        if (v538 - 7 <= v536)
        {
          v540 = (v533 + 1);
          v542 = v514 + 5;
          v539 = (v10 + v16);
          v22 = v1023;
        }

        else
        {
          v539 = (v10 + v16);
          v22 = v1023;
          if (*v537 != *v536)
          {
            v545 = __clz(__rbit64(*v536 ^ *v537)) >> 3;
            goto LABEL_985;
          }

          v540 = (v533 + 3);
          v541 = (v514 + 13);
          while (1)
          {
            v542 = v541;
            if (v541 >= v538 - 7)
            {
              break;
            }

            v544 = *v540;
            v540 += 4;
            v543 = v544;
            v541 += 8;
            if (v544 != *v542)
            {
              v545 = v542 + (__clz(__rbit64(*v542 ^ v543)) >> 3) - v536;
              goto LABEL_985;
            }
          }
        }

        if (v542 < v538 - 3 && *v540 == *v542)
        {
          v540 += 2;
          v542 = (v542 + 4);
        }

        if (v542 < v538 - 1 && *v540 == *v542)
        {
          ++v540;
          v542 = (v542 + 2);
        }

        if (v542 < v538 && *v540 == *v542)
        {
          v542 = (v542 + 1);
        }

        v545 = v542 - v536;
LABEL_985:
        if (v537 + v545 != v535)
        {
          v596 = v11 - 32;
          goto LABEL_1093;
        }

        v597 = &v536[v545];
        if (v517 <= &v536[v545])
        {
          v614 = v539;
          v615 = &v536[v545];
        }

        else
        {
          if (*v539 != *v597)
          {
            v603 = __clz(__rbit64(*v597 ^ *v539)) >> 3;
LABEL_1092:
            v545 += v603;
            v596 = v11 - 32;
LABEL_1093:
            v637 = v534 - a4;
            v638 = *(a2 + 24);
            if (v534 <= v596)
            {
              *v638 = *a4;
              v642 = *(a2 + 24);
              if (v637 <= 0x10)
              {
                *(a2 + 24) = v642 + v637;
                v647 = *(a2 + 8);
                goto LABEL_1147;
              }

              *(v642 + 16) = *(a4 + 1);
              if (v637 >= 33)
              {
                v643 = v642 + v637;
                v644 = (v642 + 32);
                v645 = (a4 + 48);
                do
                {
                  *v644 = *(v645 - 1);
                  v646 = *v645;
                  v645 += 2;
                  v644[1] = v646;
                  v644 += 2;
                }

                while (v644 < v643);
              }
            }

            else
            {
              if (a4 <= v596)
              {
                v639 = v596 - a4;
                v640 = v596;
                v641 = (v638 + v596 - a4);
                *v638 = *a4;
                if (v639 >= 17)
                {
                  v648 = v638 + 1;
                  v649 = (a4 + 32);
                  do
                  {
                    *v648 = *(v649 - 1);
                    v650 = *v649;
                    v649 += 2;
                    v648[1] = v650;
                    v648 += 2;
                  }

                  while (v648 < v641);
                  a4 = (v11 - 32);
                }

                else
                {
                  a4 = v640;
                }

                v638 = v641;
              }

              if (a4 >= v534)
              {
                goto LABEL_1145;
              }

              v651 = v534 - a4;
              if ((v534 - a4) < 8)
              {
                v653 = v638;
                goto LABEL_1144;
              }

              if ((v638 - a4) < 0x20)
              {
                v653 = v638;
                goto LABEL_1144;
              }

              if (v651 >= 0x20)
              {
                v652 = v651 & 0xFFFFFFFFFFFFFFE0;
                v654 = (a4 + 16);
                v655 = v638 + 1;
                v656 = v651 & 0xFFFFFFFFFFFFFFE0;
                do
                {
                  v657 = *v654;
                  *(v655 - 1) = *(v654 - 1);
                  *v655 = v657;
                  v654 += 2;
                  v655 += 2;
                  v656 -= 32;
                }

                while (v656);
                if (v651 == v652)
                {
                  goto LABEL_1145;
                }

                if ((v651 & 0x18) == 0)
                {
                  a4 += v652;
                  v653 = v638 + v652;
                  do
                  {
LABEL_1144:
                    v674 = *a4++;
                    *v653++ = v674;
                  }

                  while (a4 != v534);
                  goto LABEL_1145;
                }
              }

              else
              {
                v652 = 0;
              }

              v658 = v651 & 0xFFFFFFFFFFFFFFF8;
              v653 = v638 + (v651 & 0xFFFFFFFFFFFFFFF8);
              v659 = v652 - (v651 & 0xFFFFFFFFFFFFFFF8);
              v660 = &a4[v652];
              v661 = (v638 + v652);
              do
              {
                v662 = *v660;
                v660 += 8;
                *v661++ = v662;
                v659 += 8;
              }

              while (v659);
              if (v651 != v658)
              {
                a4 += v658;
                goto LABEL_1144;
              }
            }

LABEL_1145:
            *(a2 + 24) += v637;
            v647 = *(a2 + 8);
            if (v637 >= 0x10000)
            {
              v675 = (v647 - *a2) >> 3;
              *(a2 + 72) = 1;
              *(a2 + 76) = v675;
            }

LABEL_1147:
            v609 = v545 + 4;
            *(v647 + 4) = v637;
            *v647 = 1;
            v676 = v545 + 1;
            v610 = v19;
            if (!((v545 + 1) >> 16))
            {
              goto LABEL_1225;
            }

            goto LABEL_1224;
          }

          v598 = 0;
          v599 = &v514[v545];
          while (1)
          {
            v600 = &v599[v598 + 13];
            if (v600 >= v517)
            {
              break;
            }

            v601 = *(v518 + v598);
            v602 = *v600;
            v598 += 8;
            if (v601 != v602)
            {
              v603 = &v599[v598 + 5 + (__clz(__rbit64(v602 ^ v601)) >> 3)] - v597;
              goto LABEL_1092;
            }
          }

          v614 = (v518 + v598);
          v615 = &v514[v545 + 13 + v598];
        }

        if (v615 < v1011 && *v614 == *v615)
        {
          ++v614;
          v615 += 4;
        }

        if (v615 < v1007 && *v614 == *v615)
        {
          v614 = (v614 + 2);
          v615 += 2;
        }

        if (v615 < v11 && *v614 == *v615)
        {
          ++v615;
        }

        v603 = v615 - v597;
        goto LABEL_1092;
      }
    }

    if (v529 > v16)
    {
      v546 = v10 + v529;
      v539 = (v10 + v16);
      v22 = v1023;
      if (*(v10 + v529) == v519)
      {
        v547 = (v514 + 8);
        v548 = (v546 + 8);
        if (v517 <= (v514 + 8))
        {
          v550 = v514 + 8;
        }

        else
        {
          if (*v548 != *v547)
          {
            v553 = __clz(__rbit64(*v547 ^ *v548)) >> 3;
            goto LABEL_1002;
          }

          v548 = (v993 + v529);
          v549 = v514 + 16;
          while (1)
          {
            v550 = v549;
            if (v549 >= v517)
            {
              break;
            }

            v552 = *v548++;
            v551 = v552;
            v549 += 8;
            if (v552 != *v550)
            {
              v553 = &v550[__clz(__rbit64(*v550 ^ v551)) >> 3] - v547;
              goto LABEL_1002;
            }
          }
        }

        if (v550 < v1011 && *v548 == *v550)
        {
          v548 = (v548 + 4);
          v550 += 4;
        }

        if (v550 < v1007 && *v548 == *v550)
        {
          v548 = (v548 + 2);
          v550 += 2;
        }

        if (v550 < v11 && *v548 == *v550)
        {
          ++v550;
        }

        v553 = v550 - v547;
LABEL_1002:
        v609 = v553 + 8;
        v610 = (v514 - v546);
        if (v514 > a4)
        {
          v611 = v514 - 1;
          v612 = (v997 + v529);
          while (*v611 == *v612)
          {
            ++v609;
            v613 = v611 - 1;
            if (v611 > a4)
            {
              --v611;
              v80 = v612-- > v1022;
              if (v80)
              {
                continue;
              }
            }

            goto LABEL_1187;
          }

LABEL_1129:
          v534 = v611 + 1;
          goto LABEL_1189;
        }

        goto LABEL_1188;
      }

LABEL_923:
      if (v530 <= v16)
      {
        v570 = v527 >> 8;
        v571 = v525 == v527 && v570 > v1017;
        if (!v571 || (v556 = v1029 + v570, *(v1029 + v570) != *v514))
        {
LABEL_937:
          _X13 = &v514[(v514 - a4) >> 8];
          v514 = _X13 + 1;
          _X13 += 257;
          __asm { PRFM            #0, [X13] }

          goto LABEL_894;
        }

        LODWORD(v530) = v570 + v1028;
      }

      else
      {
        v556 = v10 + v530;
        if (*(v10 + v530) != *v514)
        {
          goto LABEL_937;
        }
      }

      v534 = v514 + 1;
      v557 = *(v514 + 1);
      v558 = (0xCF1BBCDCB7A56463 * v557) >> v515;
      v559 = (0xCF1BBCDCB7A56463 * v557) >> v1015;
      v560 = *(v6 + 4 * v558);
      v561 = *(v1023 + ((v559 >> 6) & 0x3FFFFFFFFFFFFFCLL));
      *(v6 + 4 * v558) = v531;
      if (v560 > v16)
      {
        v562 = v10 + v560;
        if (*(v10 + v560) == v557)
        {
          v563 = (v514 + 9);
          v564 = (v562 + 8);
          if (v517 <= (v514 + 9))
          {
            v566 = v514 + 9;
          }

          else
          {
            if (*v564 != *v563)
            {
              v569 = __clz(__rbit64(*v563 ^ *v564)) >> 3;
LABEL_1124:
              v609 = v569 + 8;
              v610 = (v534 - v562);
              if (v534 <= a4)
              {
LABEL_1189:
                v677 = v11 - 32;
LABEL_1190:
                v680 = v534 - a4;
                v681 = *(a2 + 24);
                if (v534 <= v677)
                {
                  *v681 = *a4;
                  v685 = *(a2 + 24);
                  if (v680 <= 0x10)
                  {
                    *(a2 + 24) = v685 + v680;
                    v647 = *(a2 + 8);
                    goto LABEL_1223;
                  }

                  *(v685 + 16) = *(a4 + 1);
                  if (v680 >= 33)
                  {
                    v686 = v685 + v680;
                    v687 = (v685 + 32);
                    v688 = (a4 + 48);
                    do
                    {
                      *v687 = *(v688 - 1);
                      v689 = *v688;
                      v688 += 2;
                      v687[1] = v689;
                      v687 += 2;
                    }

                    while (v687 < v686);
                  }
                }

                else
                {
                  if (a4 <= v677)
                  {
                    v682 = v677 - a4;
                    v683 = v677;
                    v684 = (v681 + v677 - a4);
                    *v681 = *a4;
                    if (v682 >= 17)
                    {
                      v690 = v681 + 1;
                      v691 = (a4 + 32);
                      do
                      {
                        *v690 = *(v691 - 1);
                        v692 = *v691;
                        v691 += 2;
                        v690[1] = v692;
                        v690 += 2;
                      }

                      while (v690 < v684);
                      a4 = (v11 - 32);
                    }

                    else
                    {
                      a4 = v683;
                    }

                    v681 = v684;
                  }

                  if (a4 >= v534)
                  {
                    goto LABEL_1221;
                  }

                  v693 = v534 - a4;
                  if ((v534 - a4) < 8)
                  {
                    v695 = v681;
                    goto LABEL_1220;
                  }

                  if ((v681 - a4) < 0x20)
                  {
                    v695 = v681;
                    goto LABEL_1220;
                  }

                  if (v693 >= 0x20)
                  {
                    v694 = v693 & 0xFFFFFFFFFFFFFFE0;
                    v696 = (a4 + 16);
                    v697 = v681 + 1;
                    v698 = v693 & 0xFFFFFFFFFFFFFFE0;
                    do
                    {
                      v699 = *v696;
                      *(v697 - 1) = *(v696 - 1);
                      *v697 = v699;
                      v696 += 2;
                      v697 += 2;
                      v698 -= 32;
                    }

                    while (v698);
                    if (v693 == v694)
                    {
                      goto LABEL_1221;
                    }

                    if ((v693 & 0x18) == 0)
                    {
                      a4 += v694;
                      v695 = v681 + v694;
                      do
                      {
LABEL_1220:
                        v705 = *a4++;
                        *v695++ = v705;
                      }

                      while (a4 != v534);
                      goto LABEL_1221;
                    }
                  }

                  else
                  {
                    v694 = 0;
                  }

                  v700 = v693 & 0xFFFFFFFFFFFFFFF8;
                  v695 = v681 + (v693 & 0xFFFFFFFFFFFFFFF8);
                  v701 = v694 - (v693 & 0xFFFFFFFFFFFFFFF8);
                  v702 = &a4[v694];
                  v703 = (v681 + v694);
                  do
                  {
                    v704 = *v702;
                    v702 += 8;
                    *v703++ = v704;
                    v701 += 8;
                  }

                  while (v701);
                  if (v693 != v700)
                  {
                    a4 += v700;
                    goto LABEL_1220;
                  }
                }

LABEL_1221:
                *(a2 + 24) += v680;
                v647 = *(a2 + 8);
                if (v680 >= 0x10000)
                {
                  v706 = (v647 - *a2) >> 3;
                  *(a2 + 72) = 1;
                  *(a2 + 76) = v706;
                }

LABEL_1223:
                *(v647 + 4) = v680;
                *v647 = v610 + 3;
                v676 = v609 - 3;
                v20 = v19;
                v19 = v610;
                if (v609 - 3 < 0x10000)
                {
LABEL_1225:
                  *(v647 + 6) = v676;
                  v708 = v647 + 8;
                  *(a2 + 8) = v647 + 8;
                  a4 = &v534[v609];
                  if (&v534[v609] > v18)
                  {
                    v514 = &v534[v609];
                    goto LABEL_894;
                  }

                  v709 = *(v10 + (v528 + 2));
                  *(v6 + 4 * ((0xCF1BBCDCB7A56463 * v709) >> v515)) = v528 + 2;
                  *(v6 + 4 * ((0xCF1BBCDCB7A56463 * *(a4 - 2)) >> v515)) = a4 - 2 - v10;
                  *(v8 + 4 * ((0xCF1BBCDCBB000000 * v709) >> v516)) = v528 + 2;
                  *(v8 + 4 * ((0xCF1BBCDCBB000000 * *(a4 - 1)) >> v516)) = a4 - 1 - v10;
                  v710 = v19;
                  v711 = v20;
                  while (1)
                  {
                    v19 = v711;
                    v711 = v710;
                    v713 = a4 - v10;
                    v714 = (a4 - v10 - v19);
                    v715 = v1029 - v1028;
                    if (v714 >= v16)
                    {
                      v715 = v10;
                    }

                    if ((v1026 - v714) < 3 || (v716 = v715 + v714, *(v715 + v714) != *a4))
                    {
                      v20 = v19;
                      v19 = v711;
                      v514 = a4;
LABEL_894:
                      if (v514 >= v18)
                      {
LABEL_1755:
                        a3 = v999;
                        goto LABEL_1756;
                      }

                      goto LABEL_895;
                    }

                    if (v714 >= v16)
                    {
                      v717 = v11;
                    }

                    else
                    {
                      v717 = v1030;
                    }

                    v718 = (a4 + 4);
                    v719 = (v716 + 4);
                    v720 = v717 + a4 - v716;
                    if (v720 >= v11)
                    {
                      v720 = v11;
                    }

                    if (v720 - 7 <= v718)
                    {
                      v721 = v719;
                      v723 = a4 + 4;
                    }

                    else
                    {
                      if (*v719 != *v718)
                      {
                        v726 = __clz(__rbit64(*v718 ^ *v719)) >> 3;
                        goto LABEL_1255;
                      }

                      v721 = (v715 + v714 + 12);
                      v722 = (a4 + 12);
                      while (1)
                      {
                        v723 = v722;
                        if (v722 >= (v720 - 7))
                        {
                          break;
                        }

                        v725 = *v721;
                        v721 += 4;
                        v724 = v725;
                        v722 += 8;
                        if (v725 != *v723)
                        {
                          v726 = v723 + (__clz(__rbit64(*v723 ^ v724)) >> 3) - v718;
                          goto LABEL_1255;
                        }
                      }
                    }

                    if (v723 < (v720 - 3) && *v721 == *v723)
                    {
                      v721 += 2;
                      v723 = (v723 + 4);
                    }

                    if (v723 < (v720 - 1) && *v721 == *v723)
                    {
                      ++v721;
                      v723 = (v723 + 2);
                    }

                    if (v723 < v720 && *v721 == *v723)
                    {
                      v723 = (v723 + 1);
                    }

                    v726 = v723 - v718;
LABEL_1255:
                    if ((v719 + v726) == v717)
                    {
                      v727 = &v718[v726];
                      if (v517 > v727)
                      {
                        if (*v539 == *v727)
                        {
                          v728 = 0;
                          v729 = &a4[v726];
                          while (1)
                          {
                            v730 = &v729[v728 + 12];
                            if (v730 >= v517)
                            {
                              break;
                            }

                            v731 = *(v518 + v728);
                            v732 = *v730;
                            v728 += 8;
                            if (v731 != v732)
                            {
                              v733 = &v729[v728 + 4 + (__clz(__rbit64(v732 ^ v731)) >> 3)] - v727;
                              goto LABEL_1275;
                            }
                          }

                          v734 = (v518 + v728);
                          v735 = &a4[v726 + 12 + v728];
LABEL_1265:
                          if (v735 < v1011 && *v734 == *v735)
                          {
                            ++v734;
                            v735 += 4;
                          }

                          if (v735 < v1007 && *v734 == *v735)
                          {
                            v734 = (v734 + 2);
                            v735 += 2;
                          }

                          if (v735 < v11 && *v734 == *v735)
                          {
                            ++v735;
                          }

                          v733 = v735 - v727;
                        }

                        else
                        {
                          v733 = __clz(__rbit64(*v727 ^ *v539)) >> 3;
                        }

LABEL_1275:
                        v726 += v733;
                        goto LABEL_1276;
                      }

                      v734 = v539;
                      v735 = v727;
                      goto LABEL_1265;
                    }

LABEL_1276:
                    if (a4 <= v11 - 32)
                    {
                      **(a2 + 24) = *a4;
                      v708 = *(a2 + 8);
                    }

                    *(v708 + 4) = 0;
                    *v708 = 1;
                    if (v726 + 1 >= 0x10000)
                    {
                      v736 = (v708 - *a2) >> 3;
                      *(a2 + 72) = 2;
                      *(a2 + 76) = v736;
                    }

                    *(v708 + 6) = v726 + 1;
                    v708 += 8;
                    v712 = *a4;
                    *(v8 + 4 * ((0xCF1BBCDCBB000000 * *a4) >> v516)) = v713;
                    *(v6 + 4 * ((0xCF1BBCDCB7A56463 * v712) >> v515)) = v713;
                    a4 += v726 + 4;
                    *(a2 + 8) = v708;
                    v710 = v19;
                    v20 = v711;
                    v514 = a4;
                    if (a4 > v18)
                    {
                      goto LABEL_894;
                    }
                  }
                }

LABEL_1224:
                v707 = (v647 - *a2) >> 3;
                *(a2 + 72) = 2;
                *(a2 + 76) = v707;
                v19 = v610;
                goto LABEL_1225;
              }

              v665 = (v997 + v560);
              while (*v514 == *v665)
              {
                ++v609;
                v611 = v514 - 1;
                if (v514 > a4)
                {
                  --v514;
                  v80 = v665-- > v539;
                  if (v80)
                  {
                    continue;
                  }
                }

                goto LABEL_1129;
              }

LABEL_1318:
              v534 = v514 + 1;
              goto LABEL_1189;
            }

            v564 = (v993 + v560);
            v565 = v514 + 17;
            while (1)
            {
              v566 = v565;
              if (v565 >= v517)
              {
                break;
              }

              v568 = *v564++;
              v567 = v568;
              v565 += 8;
              if (v568 != *v566)
              {
                v569 = &v566[__clz(__rbit64(*v566 ^ v567)) >> 3] - v563;
                goto LABEL_1124;
              }
            }
          }

          if (v566 < v1011 && *v564 == *v566)
          {
            v564 = (v564 + 4);
            v566 += 4;
          }

          if (v566 < v1007 && *v564 == *v566)
          {
            v564 = (v564 + 2);
            v566 += 2;
          }

          if (v566 < v11 && *v564 == *v566)
          {
            ++v566;
          }

          v569 = v566 - v563;
          goto LABEL_1124;
        }

LABEL_964:
        v576 = (v514 + 4);
        v577 = (v556 + 4);
        if (v530 < v16)
        {
          if (&v576[v1030 - v577] >= v11)
          {
            v578 = v11;
          }

          else
          {
            v578 = &v576[v1030 - v577];
          }

          if (v578 - 7 <= v576)
          {
            v579 = (v556 + 4);
            v581 = (v514 + 4);
          }

          else
          {
            if (*v577 != *v576)
            {
              v584 = __clz(__rbit64(*v576 ^ *v577)) >> 3;
              goto LABEL_1065;
            }

            v579 = (v556 + 12);
            v580 = (v514 + 12);
            while (1)
            {
              v581 = v580;
              if (v580 >= (v578 - 7))
              {
                break;
              }

              v583 = *v579;
              v579 += 4;
              v582 = v583;
              v580 += 8;
              if (v583 != *v581)
              {
                v584 = &v581[__clz(__rbit64(*v581 ^ v582)) >> 3] - v576;
                goto LABEL_1065;
              }
            }
          }

          if (v581 < v578 - 3 && *v579 == *v581)
          {
            v579 += 2;
            v581 += 4;
          }

          if (v581 < v578 - 1 && *v579 == *v581)
          {
            ++v579;
            v581 += 2;
          }

          if (v581 < v578 && *v579 == *v581)
          {
            ++v581;
          }

          v584 = v581 - v576;
LABEL_1065:
          if (v577 + v584 != v1030)
          {
            v628 = v1000;
            goto LABEL_1161;
          }

          v629 = &v576[v584];
          v628 = v1000;
          if (v517 <= v629)
          {
            v663 = v539;
            v664 = v629;
          }

          else
          {
            if (*v539 != *v629)
            {
              v635 = __clz(__rbit64(*v629 ^ *v539)) >> 3;
LABEL_1160:
              v584 += v635;
LABEL_1161:
              v677 = v11 - 32;
              v609 = v584 + 4;
              v610 = (v528 - v530);
              if (v514 <= a4 || v556 <= v628)
              {
                v534 = v514;
                goto LABEL_1190;
              }

              v611 = v514 - 1;
              v678 = (v556 - 1);
              while (*v611 == *v678)
              {
                ++v609;
                v613 = v611 - 1;
                if (v611 > a4)
                {
                  --v611;
                  v80 = v678-- > v628;
                  if (v80)
                  {
                    continue;
                  }
                }

                goto LABEL_1187;
              }

              goto LABEL_1129;
            }

            v630 = 0;
            v631 = &v514[v584];
            while (1)
            {
              v632 = &v631[v630 + 12];
              if (v632 >= v517)
              {
                break;
              }

              v633 = *(v518 + v630);
              v634 = *v632;
              v630 += 8;
              if (v633 != v634)
              {
                v635 = &v631[v630 + 4 + (__clz(__rbit64(v634 ^ v633)) >> 3)] - v629;
                goto LABEL_1160;
              }
            }

            v663 = (v518 + v630);
            v664 = &v514[v584 + 12 + v630];
          }

          if (v664 < v1011 && *v663 == *v664)
          {
            ++v663;
            v664 += 4;
          }

          if (v664 < v1007 && *v663 == *v664)
          {
            v663 = (v663 + 2);
            v664 += 2;
          }

          if (v664 < v11 && *v663 == *v664)
          {
            ++v664;
          }

          v635 = v664 - v629;
          goto LABEL_1160;
        }

        if (v517 <= v576)
        {
          v605 = v514 + 4;
        }

        else
        {
          if (*v577 != *v576)
          {
            v608 = __clz(__rbit64(*v576 ^ *v577)) >> 3;
            goto LABEL_1074;
          }

          v577 = (v556 + 12);
          v604 = v514 + 12;
          while (1)
          {
            v605 = v604;
            if (v604 >= v517)
            {
              break;
            }

            v607 = *v577++;
            v606 = v607;
            v604 += 8;
            if (v607 != *v605)
            {
              v608 = &v605[__clz(__rbit64(*v605 ^ v606)) >> 3] - v576;
              goto LABEL_1074;
            }
          }
        }

        if (v605 < v1011 && *v577 == *v605)
        {
          v577 = (v577 + 4);
          v605 += 4;
        }

        if (v605 < v1007 && *v577 == *v605)
        {
          v577 = (v577 + 2);
          v605 += 2;
        }

        if (v605 < v11 && *v577 == *v605)
        {
          ++v605;
        }

        v608 = v605 - v576;
LABEL_1074:
        v609 = v608 + 4;
        v610 = (v514 - v556);
        if (v514 > a4 && v556 > v539)
        {
          v611 = v514 - 1;
          v636 = (v556 - 1);
          while (*v611 == *v636)
          {
            ++v609;
            v613 = v611 - 1;
            if (v611 > a4)
            {
              --v611;
              v80 = v636-- > v539;
              if (v80)
              {
                continue;
              }
            }

            goto LABEL_1187;
          }

          goto LABEL_1129;
        }

LABEL_1188:
        v534 = v514;
        goto LABEL_1189;
      }

      _ZF = (v559 ^ v561) == 0;
      v574 = v561 >> 8;
      if (!_ZF || v574 <= v1017)
      {
        goto LABEL_964;
      }

      v616 = v574;
      v617 = (v1029 + v574);
      if (*v617 != v557)
      {
        goto LABEL_964;
      }

      v618 = (v514 + 9);
      v619 = (v617 + 1);
      v620 = &v514[v1030 - (v617 + 1) + 9];
      if (v620 >= v11)
      {
        v621 = v11;
      }

      else
      {
        v621 = v620;
      }

      if (v621 - 7 <= v618)
      {
        v622 = v619;
        v624 = v514 + 9;
      }

      else
      {
        if (*v619 != *v618)
        {
          v627 = __clz(__rbit64(*v618 ^ *v619)) >> 3;
          goto LABEL_1291;
        }

        v622 = (v985 + v616);
        v623 = (v514 + 17);
        while (1)
        {
          v624 = v623;
          if (v623 >= v621 - 7)
          {
            break;
          }

          v626 = *v622;
          v622 += 4;
          v625 = v626;
          v623 += 8;
          if (v626 != *v624)
          {
            v627 = v624 + (__clz(__rbit64(*v624 ^ v625)) >> 3) - v618;
            goto LABEL_1291;
          }
        }
      }

      if (v624 < v621 - 3 && *v622 == *v624)
      {
        v622 += 2;
        v624 = (v624 + 4);
      }

      if (v624 < v621 - 1 && *v622 == *v624)
      {
        ++v622;
        v624 = (v624 + 2);
      }

      if (v624 < v621 && *v622 == *v624)
      {
        v624 = (v624 + 1);
      }

      v627 = v624 - v618;
LABEL_1291:
      if (v619 + v627 != v1030)
      {
LABEL_1312:
        v609 = v627 + 8;
        v610 = v531 - (v1028 + v616);
        if (v534 <= a4)
        {
          goto LABEL_1189;
        }

        v746 = (v989 + v616);
        while (*v514 == *v746)
        {
          ++v609;
          v611 = v514 - 1;
          if (v514 > a4)
          {
            --v514;
            v80 = v746-- > v1000;
            if (v80)
            {
              continue;
            }
          }

          goto LABEL_1129;
        }

        goto LABEL_1318;
      }

      v737 = &v618[v627];
      if (v517 <= v737)
      {
        v744 = v539;
        v745 = v737;
      }

      else
      {
        if (*v539 != *v737)
        {
          v743 = __clz(__rbit64(*v737 ^ *v539)) >> 3;
LABEL_1311:
          v627 += v743;
          goto LABEL_1312;
        }

        v738 = 0;
        v739 = &v514[v627];
        while (1)
        {
          v740 = &v739[v738 + 17];
          if (v740 >= v517)
          {
            break;
          }

          v741 = *(v518 + v738);
          v742 = *v740;
          v738 += 8;
          if (v741 != v742)
          {
            v743 = &v739[v738 + 9 + (__clz(__rbit64(v742 ^ v741)) >> 3)] - v737;
            goto LABEL_1311;
          }
        }

        v744 = (v518 + v738);
        v745 = &v514[v627 + 17 + v738];
      }

      if (v745 < v1011 && *v744 == *v745)
      {
        ++v744;
        v745 += 4;
      }

      if (v745 < v1007 && *v744 == *v745)
      {
        v744 = (v744 + 2);
        v745 += 2;
      }

      if (v745 < v11 && *v744 == *v745)
      {
        ++v745;
      }

      v743 = v745 - v737;
      goto LABEL_1311;
    }

    v554 = v526 >> 8;
    v555 = v524 == v526 && v554 > v1017;
    v539 = (v10 + v16);
    v22 = v1023;
    if (!v555)
    {
      goto LABEL_923;
    }

    v585 = v1029 + v554;
    if (*(v1029 + v554) != v519)
    {
      goto LABEL_923;
    }

    v586 = (v514 + 8);
    v587 = (v585 + 8);
    v588 = &v1030[v514 - v585];
    if (v588 >= v11)
    {
      v589 = v11;
    }

    else
    {
      v589 = v588;
    }

    if (v589 - 7 <= v586)
    {
      v590 = v587;
      v592 = v514 + 8;
    }

    else
    {
      if (*v587 != *v586)
      {
        v595 = __clz(__rbit64(*v586 ^ *v587)) >> 3;
        goto LABEL_1131;
      }

      v590 = (v985 + v554);
      v591 = (v514 + 16);
      while (1)
      {
        v592 = v591;
        if (v591 >= v589 - 7)
        {
          break;
        }

        v594 = *v590;
        v590 += 4;
        v593 = v594;
        v591 += 8;
        if (v594 != *v592)
        {
          v595 = v592 + (__clz(__rbit64(*v592 ^ v593)) >> 3) - v586;
          goto LABEL_1131;
        }
      }
    }

    if (v592 < v589 - 3 && *v590 == *v592)
    {
      v590 += 2;
      v592 = (v592 + 4);
    }

    if (v592 < v589 - 1 && *v590 == *v592)
    {
      ++v590;
      v592 = (v592 + 2);
    }

    if (v592 < v589 && *v590 == *v592)
    {
      v592 = (v592 + 1);
    }

    v595 = v592 - v586;
LABEL_1131:
    if (v587 + v595 != v1030)
    {
      v666 = v1000;
      goto LABEL_1182;
    }

    v667 = &v586[v595];
    v666 = v1000;
    if (v517 <= v667)
    {
      v669 = (v10 + v16);
      v670 = v667;
    }

    else
    {
      if (*v1022 != *v667)
      {
        v673 = __clz(__rbit64(*v667 ^ *v1022)) >> 3;
LABEL_1181:
        v595 += v673;
LABEL_1182:
        v609 = v595 + 8;
        v610 = v528 - (v1028 + v554);
        if (v514 > a4)
        {
          v611 = v514 - 1;
          v679 = (v989 + v554);
          while (*v611 == *v679)
          {
            ++v609;
            v613 = v611 - 1;
            if (v611 > a4)
            {
              --v611;
              v80 = v679-- > v666;
              if (v80)
              {
                continue;
              }
            }

LABEL_1187:
            v534 = v613 + 1;
            goto LABEL_1189;
          }

          goto LABEL_1129;
        }

        goto LABEL_1188;
      }

      v668 = &v514[v595 + 16];
      v669 = (v16 + v10 + 8);
      while (1)
      {
        v670 = v668;
        if (v668 >= v517)
        {
          break;
        }

        v672 = *v669;
        v669 += 4;
        v671 = v672;
        v668 += 8;
        if (v672 != *v670)
        {
          v673 = v670 + (__clz(__rbit64(*v670 ^ v671)) >> 3) - v667;
          v666 = v1000;
          goto LABEL_1181;
        }
      }

      v666 = v1000;
    }

    if (v670 < v1011 && *v669 == *v670)
    {
      v669 += 2;
      v670 = (v670 + 4);
    }

    if (v670 < v1007 && *v669 == *v670)
    {
      ++v669;
      v670 = (v670 + 2);
    }

    if (v670 < v11 && *v669 == *v670)
    {
      v670 = (v670 + 1);
    }

    v673 = v670 - v667;
    goto LABEL_1181;
  }

  if (v5 == 6)
  {
    if (v29)
    {
      if (v26 <= 0x3D)
      {
        v270 = 0;
        do
        {
          _X6 = v22 + v270;
          __asm { PRFM            #2, [X6] }

          v270 += 64;
        }

        while (v270 < 4 << v26);
      }

      if (v27 <= 0x3D)
      {
        v273 = 0;
        do
        {
          _X5 = v23 + v273;
          __asm { PRFM            #2, [X5] }

          v273 += 64;
        }

        while (v273 < 4 << v27);
      }
    }

    if (v28)
    {
      v276 = a4;
    }

    else
    {
      v276 = a4 + 1;
    }

    if (v276 >= v18)
    {
      goto LABEL_1756;
    }

    v1019 = v23;
    v999 = a3;
    v277 = 64 - v7;
    v278 = 64 - v9;
    v1002 = 56 - v27;
    v1025 = v16 - 1;
    v279 = v11 - 7;
    v1010 = v11 - 3;
    v1014 = 56 - v26;
    v1006 = v11 - 1;
    v984 = v1029 + 16;
    v280 = v16 + v10 + 8;
    v988 = v1029 - 1;
    v992 = v10 + 16;
    v996 = v10 - 1;
LABEL_459:
    v281 = *v276;
    v282 = 0xCF1BBCDCB7A56463 * *v276;
    v283 = v282 >> v277;
    v284 = 0xCF1BBCDCBF9B0000 * *v276;
    v285 = v284 >> v278;
    v286 = v282 >> v1014;
    v287 = v284 >> v1002;
    v288 = *(v22 + ((v282 >> v1014 >> 6) & 0x3FFFFFFFFFFFFFCLL));
    v289 = *(v1019 + ((v284 >> v1002 >> 6) & 0x3FFFFFFFFFFFFFCLL));
    v290 = v276 - v10;
    v291 = *(v6 + 4 * (v282 >> v277));
    v292 = *(v8 + 4 * (v284 >> v278));
    v293 = v276 - v10 + 1;
    v294 = (v293 - v19);
    v295 = (v1029 + v294 - v1028);
    if (v294 >= v16)
    {
      v295 = (v10 + v294);
    }

    *(v8 + 4 * v285) = v290;
    *(v6 + 4 * v283) = v290;
    if ((v1025 - v294) >= 3)
    {
      v296 = v276 + 1;
      if (*v295 == *(v276 + 1))
      {
        if (v294 >= v16)
        {
          v297 = v11;
        }

        else
        {
          v297 = v1030;
        }

        v298 = (v276 + 5);
        v299 = v295 + 1;
        if (&v276[v297 - (v295 + 1) + 5] >= v11)
        {
          v300 = v11;
        }

        else
        {
          v300 = &v276[v297 - (v295 + 1) + 5];
        }

        v301 = (v10 + v16);
        if (v300 - 7 <= v298)
        {
          v302 = (v295 + 1);
          v304 = v276 + 5;
          v22 = v1023;
        }

        else
        {
          v22 = v1023;
          if (*v299 != *v298)
          {
            v307 = __clz(__rbit64(*v298 ^ *v299)) >> 3;
            goto LABEL_549;
          }

          v302 = (v295 + 3);
          v303 = (v276 + 13);
          while (1)
          {
            v304 = v303;
            if (v303 >= v300 - 7)
            {
              break;
            }

            v306 = *v302;
            v302 += 4;
            v305 = v306;
            v303 += 8;
            if (v306 != *v304)
            {
              v307 = v304 + (__clz(__rbit64(*v304 ^ v305)) >> 3) - v298;
              goto LABEL_549;
            }
          }
        }

        if (v304 < v300 - 3 && *v302 == *v304)
        {
          v302 += 2;
          v304 = (v304 + 4);
        }

        if (v304 < v300 - 1 && *v302 == *v304)
        {
          ++v302;
          v304 = (v304 + 2);
        }

        if (v304 < v300 && *v302 == *v304)
        {
          v304 = (v304 + 1);
        }

        v307 = v304 - v298;
LABEL_549:
        if (v299 + v307 != v297)
        {
          v358 = v11 - 32;
          goto LABEL_657;
        }

        v359 = &v298[v307];
        if (v279 <= &v298[v307])
        {
          v376 = (v10 + v16);
          v377 = &v298[v307];
        }

        else
        {
          if (*v1022 != *v359)
          {
            v365 = __clz(__rbit64(*v359 ^ *v1022)) >> 3;
LABEL_656:
            v307 += v365;
            v358 = v11 - 32;
LABEL_657:
            v399 = v296 - a4;
            v400 = *(a2 + 24);
            if (v296 <= v358)
            {
              *v400 = *a4;
              v404 = *(a2 + 24);
              if (v399 <= 0x10)
              {
                *(a2 + 24) = v404 + v399;
                v409 = *(a2 + 8);
                goto LABEL_728;
              }

              *(v404 + 16) = *(a4 + 1);
              if (v399 >= 33)
              {
                v405 = v404 + v399;
                v406 = (v404 + 32);
                v407 = (a4 + 48);
                do
                {
                  *v406 = *(v407 - 1);
                  v408 = *v407;
                  v407 += 2;
                  v406[1] = v408;
                  v406 += 2;
                }

                while (v406 < v405);
              }
            }

            else
            {
              if (a4 <= v358)
              {
                v401 = v358 - a4;
                v402 = v358;
                v403 = (v400 + v358 - a4);
                *v400 = *a4;
                if (v401 >= 17)
                {
                  v410 = v400 + 1;
                  v411 = (a4 + 32);
                  do
                  {
                    *v410 = *(v411 - 1);
                    v412 = *v411;
                    v411 += 2;
                    v410[1] = v412;
                    v410 += 2;
                  }

                  while (v410 < v403);
                  a4 = (v11 - 32);
                }

                else
                {
                  a4 = v402;
                }

                v400 = v403;
              }

              if (a4 >= v296)
              {
                goto LABEL_726;
              }

              v413 = v296 - a4;
              if ((v296 - a4) < 8)
              {
                v415 = v400;
                goto LABEL_725;
              }

              if ((v400 - a4) < 0x20)
              {
                v415 = v400;
                goto LABEL_725;
              }

              if (v413 >= 0x20)
              {
                v414 = v413 & 0xFFFFFFFFFFFFFFE0;
                v416 = (a4 + 16);
                v417 = v400 + 1;
                v418 = v413 & 0xFFFFFFFFFFFFFFE0;
                do
                {
                  v419 = *v416;
                  *(v417 - 1) = *(v416 - 1);
                  *v417 = v419;
                  v416 += 2;
                  v417 += 2;
                  v418 -= 32;
                }

                while (v418);
                if (v413 == v414)
                {
                  goto LABEL_726;
                }

                if ((v413 & 0x18) == 0)
                {
                  a4 += v414;
                  v415 = v400 + v414;
                  do
                  {
LABEL_725:
                    v436 = *a4++;
                    *v415++ = v436;
                  }

                  while (a4 != v296);
                  goto LABEL_726;
                }
              }

              else
              {
                v414 = 0;
              }

              v420 = v413 & 0xFFFFFFFFFFFFFFF8;
              v415 = v400 + (v413 & 0xFFFFFFFFFFFFFFF8);
              v421 = v414 - (v413 & 0xFFFFFFFFFFFFFFF8);
              v422 = &a4[v414];
              v423 = (v400 + v414);
              do
              {
                v424 = *v422;
                v422 += 8;
                *v423++ = v424;
                v421 += 8;
              }

              while (v421);
              if (v413 != v420)
              {
                a4 += v420;
                goto LABEL_725;
              }
            }

LABEL_726:
            *(a2 + 24) += v399;
            v409 = *(a2 + 8);
            if (v399 >= 0x10000)
            {
              v437 = (v409 - *a2) >> 3;
              *(a2 + 72) = 1;
              *(a2 + 76) = v437;
            }

LABEL_728:
            v371 = v307 + 4;
            *(v409 + 4) = v399;
            *v409 = 1;
            v438 = v307 + 1;
            v372 = v19;
            if (!((v307 + 1) >> 16))
            {
              goto LABEL_786;
            }

            goto LABEL_785;
          }

          v360 = 0;
          v361 = &v276[v307];
          while (1)
          {
            v362 = &v361[v360 + 13];
            if (v362 >= v279)
            {
              break;
            }

            v363 = *(v280 + v360);
            v364 = *v362;
            v360 += 8;
            if (v363 != v364)
            {
              v365 = &v361[v360 + 5 + (__clz(__rbit64(v364 ^ v363)) >> 3)] - v359;
              goto LABEL_656;
            }
          }

          v376 = (v280 + v360);
          v377 = &v276[v307 + 13 + v360];
        }

        if (v377 < v1010 && *v376 == *v377)
        {
          ++v376;
          v377 += 4;
        }

        if (v377 < v1006 && *v376 == *v377)
        {
          v376 = (v376 + 2);
          v377 += 2;
        }

        if (v377 < v11 && *v376 == *v377)
        {
          ++v377;
        }

        v365 = v377 - v359;
        goto LABEL_656;
      }
    }

    if (v291 > v16)
    {
      v308 = v10 + v291;
      v301 = (v10 + v16);
      v22 = v1023;
      if (*(v10 + v291) == v281)
      {
        v309 = (v276 + 8);
        v310 = (v308 + 8);
        if (v279 <= (v276 + 8))
        {
          v312 = v276 + 8;
        }

        else
        {
          if (*v310 != *v309)
          {
            v315 = __clz(__rbit64(*v309 ^ *v310)) >> 3;
            goto LABEL_566;
          }

          v310 = (v992 + v291);
          v311 = v276 + 16;
          while (1)
          {
            v312 = v311;
            if (v311 >= v279)
            {
              break;
            }

            v314 = *v310++;
            v313 = v314;
            v311 += 8;
            if (v314 != *v312)
            {
              v315 = &v312[__clz(__rbit64(*v312 ^ v313)) >> 3] - v309;
              goto LABEL_566;
            }
          }
        }

        if (v312 < v1010 && *v310 == *v312)
        {
          v310 = (v310 + 4);
          v312 += 4;
        }

        if (v312 < v1006 && *v310 == *v312)
        {
          v310 = (v310 + 2);
          v312 += 2;
        }

        if (v312 < v11 && *v310 == *v312)
        {
          ++v312;
        }

        v315 = v312 - v309;
LABEL_566:
        v371 = v315 + 8;
        v372 = (v276 - v308);
        if (v276 > a4)
        {
          v373 = v276 - 1;
          v374 = (v996 + v291);
          while (*v373 == *v374)
          {
            ++v371;
            v375 = v373 - 1;
            if (v373 > a4)
            {
              --v373;
              v80 = v374-- > v1022;
              if (v80)
              {
                continue;
              }
            }

            goto LABEL_748;
          }

LABEL_693:
          v296 = v373 + 1;
          goto LABEL_749;
        }

        goto LABEL_723;
      }

LABEL_487:
      if (v292 <= v16)
      {
        v332 = v289 >> 8;
        v333 = v287 == v289 && v332 > v1017;
        if (!v333 || (v318 = v1029 + v332, *(v1029 + v332) != *v276))
        {
LABEL_501:
          _X13 = &v276[(v276 - a4) >> 8];
          v276 = _X13 + 1;
          _X13 += 257;
          __asm { PRFM            #0, [X13] }

          goto LABEL_458;
        }

        LODWORD(v292) = v332 + v1028;
      }

      else
      {
        v318 = v10 + v292;
        if (*(v10 + v292) != *v276)
        {
          goto LABEL_501;
        }
      }

      v296 = v276 + 1;
      v319 = *(v276 + 1);
      v320 = (0xCF1BBCDCB7A56463 * v319) >> v277;
      v321 = (0xCF1BBCDCB7A56463 * v319) >> v1014;
      v322 = *(v6 + 4 * v320);
      v323 = *(v1023 + ((v321 >> 6) & 0x3FFFFFFFFFFFFFCLL));
      *(v6 + 4 * v320) = v293;
      if (v322 > v16)
      {
        v324 = v10 + v322;
        if (*(v10 + v322) == v319)
        {
          v325 = (v276 + 9);
          v326 = (v324 + 8);
          if (v279 <= (v276 + 9))
          {
            v328 = v276 + 9;
          }

          else
          {
            if (*v326 != *v325)
            {
              v331 = __clz(__rbit64(*v325 ^ *v326)) >> 3;
LABEL_688:
              v371 = v331 + 8;
              v372 = (v296 - v324);
              if (v296 <= a4)
              {
LABEL_749:
                v439 = v11 - 32;
                goto LABEL_750;
              }

              v427 = (v996 + v322);
              while (*v276 == *v427)
              {
                ++v371;
                v373 = v276 - 1;
                if (v276 > a4)
                {
                  --v276;
                  v80 = v427-- > v301;
                  if (v80)
                  {
                    continue;
                  }
                }

                goto LABEL_693;
              }

LABEL_880:
              v296 = v276 + 1;
              goto LABEL_749;
            }

            v326 = (v992 + v322);
            v327 = v276 + 17;
            while (1)
            {
              v328 = v327;
              if (v327 >= v279)
              {
                break;
              }

              v330 = *v326++;
              v329 = v330;
              v327 += 8;
              if (v330 != *v328)
              {
                v331 = &v328[__clz(__rbit64(*v328 ^ v329)) >> 3] - v325;
                goto LABEL_688;
              }
            }
          }

          if (v328 < v1010 && *v326 == *v328)
          {
            v326 = (v326 + 4);
            v328 += 4;
          }

          if (v328 < v1006 && *v326 == *v328)
          {
            v326 = (v326 + 2);
            v328 += 2;
          }

          if (v328 < v11 && *v326 == *v328)
          {
            ++v328;
          }

          v331 = v328 - v325;
          goto LABEL_688;
        }

LABEL_528:
        v338 = (v276 + 4);
        v339 = (v318 + 4);
        if (v292 < v16)
        {
          if (&v338[v1030 - v339] >= v11)
          {
            v340 = v11;
          }

          else
          {
            v340 = &v338[v1030 - v339];
          }

          if (v340 - 7 <= v338)
          {
            v341 = (v318 + 4);
            v343 = (v276 + 4);
          }

          else
          {
            if (*v339 != *v338)
            {
              v346 = __clz(__rbit64(*v338 ^ *v339)) >> 3;
              goto LABEL_629;
            }

            v341 = (v318 + 12);
            v342 = (v276 + 12);
            while (1)
            {
              v343 = v342;
              if (v342 >= (v340 - 7))
              {
                break;
              }

              v345 = *v341;
              v341 += 4;
              v344 = v345;
              v342 += 8;
              if (v345 != *v343)
              {
                v346 = &v343[__clz(__rbit64(*v343 ^ v344)) >> 3] - v338;
                goto LABEL_629;
              }
            }
          }

          if (v343 < v340 - 3 && *v341 == *v343)
          {
            v341 += 2;
            v343 += 4;
          }

          if (v343 < v340 - 1 && *v341 == *v343)
          {
            ++v341;
            v343 += 2;
          }

          if (v343 < v340 && *v341 == *v343)
          {
            ++v343;
          }

          v346 = v343 - v338;
LABEL_629:
          if (v339 + v346 != v1030)
          {
            v390 = v1000;
            goto LABEL_742;
          }

          v391 = &v338[v346];
          v390 = v1000;
          if (v279 <= v391)
          {
            v425 = v301;
            v426 = v391;
          }

          else
          {
            if (*v301 != *v391)
            {
              v397 = __clz(__rbit64(*v391 ^ *v301)) >> 3;
LABEL_741:
              v346 += v397;
LABEL_742:
              v439 = v11 - 32;
              v371 = v346 + 4;
              v372 = (v290 - v292);
              if (v276 <= a4 || v318 <= v390)
              {
                v296 = v276;
LABEL_750:
                v441 = v296 - a4;
                v442 = *(a2 + 24);
                if (v296 <= v439)
                {
                  *v442 = *a4;
                  v446 = *(a2 + 24);
                  if (v441 <= 0x10)
                  {
                    *(a2 + 24) = v446 + v441;
                    v409 = *(a2 + 8);
                    goto LABEL_784;
                  }

                  *(v446 + 16) = *(a4 + 1);
                  if (v441 >= 33)
                  {
                    v447 = v446 + v441;
                    v448 = (v446 + 32);
                    v449 = (a4 + 48);
                    do
                    {
                      *v448 = *(v449 - 1);
                      v450 = *v449;
                      v449 += 2;
                      v448[1] = v450;
                      v448 += 2;
                    }

                    while (v448 < v447);
                  }
                }

                else
                {
                  if (a4 <= v439)
                  {
                    v443 = v439 - a4;
                    v444 = v439;
                    v445 = (v442 + v439 - a4);
                    *v442 = *a4;
                    if (v443 >= 17)
                    {
                      v451 = v442 + 1;
                      v452 = (a4 + 32);
                      do
                      {
                        *v451 = *(v452 - 1);
                        v453 = *v452;
                        v452 += 2;
                        v451[1] = v453;
                        v451 += 2;
                      }

                      while (v451 < v445);
                      a4 = (v11 - 32);
                    }

                    else
                    {
                      a4 = v444;
                    }

                    v442 = v445;
                  }

                  if (a4 >= v296)
                  {
                    goto LABEL_782;
                  }

                  v454 = v296 - a4;
                  if ((v296 - a4) < 8)
                  {
                    v456 = v442;
                    goto LABEL_781;
                  }

                  if ((v442 - a4) < 0x20)
                  {
                    v456 = v442;
                    goto LABEL_781;
                  }

                  if (v454 >= 0x20)
                  {
                    v455 = v454 & 0xFFFFFFFFFFFFFFE0;
                    v457 = (a4 + 16);
                    v458 = v442 + 1;
                    v459 = v454 & 0xFFFFFFFFFFFFFFE0;
                    do
                    {
                      v460 = *v457;
                      *(v458 - 1) = *(v457 - 1);
                      *v458 = v460;
                      v457 += 2;
                      v458 += 2;
                      v459 -= 32;
                    }

                    while (v459);
                    if (v454 == v455)
                    {
                      goto LABEL_782;
                    }

                    if ((v454 & 0x18) == 0)
                    {
                      a4 += v455;
                      v456 = v442 + v455;
                      do
                      {
LABEL_781:
                        v466 = *a4++;
                        *v456++ = v466;
                      }

                      while (a4 != v296);
                      goto LABEL_782;
                    }
                  }

                  else
                  {
                    v455 = 0;
                  }

                  v461 = v454 & 0xFFFFFFFFFFFFFFF8;
                  v456 = v442 + (v454 & 0xFFFFFFFFFFFFFFF8);
                  v462 = v455 - (v454 & 0xFFFFFFFFFFFFFFF8);
                  v463 = &a4[v455];
                  v464 = (v442 + v455);
                  do
                  {
                    v465 = *v463;
                    v463 += 8;
                    *v464++ = v465;
                    v462 += 8;
                  }

                  while (v462);
                  if (v454 != v461)
                  {
                    a4 += v461;
                    goto LABEL_781;
                  }
                }

LABEL_782:
                *(a2 + 24) += v441;
                v409 = *(a2 + 8);
                if (v441 >= 0x10000)
                {
                  v467 = (v409 - *a2) >> 3;
                  *(a2 + 72) = 1;
                  *(a2 + 76) = v467;
                }

LABEL_784:
                *(v409 + 4) = v441;
                *v409 = v372 + 3;
                v438 = v371 - 3;
                v20 = v19;
                v19 = v372;
                if (v371 - 3 < 0x10000)
                {
LABEL_786:
                  *(v409 + 6) = v438;
                  v469 = v409 + 8;
                  *(a2 + 8) = v409 + 8;
                  a4 = &v296[v371];
                  if (&v296[v371] > v18)
                  {
                    v276 = &v296[v371];
                    goto LABEL_458;
                  }

                  v470 = *(v10 + (v290 + 2));
                  *(v6 + 4 * ((0xCF1BBCDCB7A56463 * v470) >> v277)) = v290 + 2;
                  *(v6 + 4 * ((0xCF1BBCDCB7A56463 * *(a4 - 2)) >> v277)) = a4 - 2 - v10;
                  *(v8 + 4 * ((0xCF1BBCDCBF9B0000 * v470) >> v278)) = v290 + 2;
                  *(v8 + 4 * ((0xCF1BBCDCBF9B0000 * *(a4 - 1)) >> v278)) = a4 - 1 - v10;
                  v471 = v19;
                  v472 = v20;
                  while (1)
                  {
                    v19 = v472;
                    v472 = v471;
                    v474 = a4 - v10;
                    v475 = (a4 - v10 - v19);
                    v476 = v1029 - v1028;
                    if (v475 >= v16)
                    {
                      v476 = v10;
                    }

                    if ((v1025 - v475) < 3 || (v477 = v476 + v475, *(v476 + v475) != *a4))
                    {
                      v20 = v19;
                      v19 = v472;
                      v276 = a4;
LABEL_458:
                      if (v276 >= v18)
                      {
                        goto LABEL_1755;
                      }

                      goto LABEL_459;
                    }

                    if (v475 >= v16)
                    {
                      v478 = v11;
                    }

                    else
                    {
                      v478 = v1030;
                    }

                    v479 = (a4 + 4);
                    v480 = (v477 + 4);
                    v481 = v478 + a4 - v477;
                    if (v481 >= v11)
                    {
                      v481 = v11;
                    }

                    if (v481 - 7 <= v479)
                    {
                      v482 = v480;
                      v484 = a4 + 4;
                    }

                    else
                    {
                      if (*v480 != *v479)
                      {
                        v487 = __clz(__rbit64(*v479 ^ *v480)) >> 3;
                        goto LABEL_816;
                      }

                      v482 = (v476 + v475 + 12);
                      v483 = (a4 + 12);
                      while (1)
                      {
                        v484 = v483;
                        if (v483 >= (v481 - 7))
                        {
                          break;
                        }

                        v486 = *v482;
                        v482 += 4;
                        v485 = v486;
                        v483 += 8;
                        if (v486 != *v484)
                        {
                          v487 = v484 + (__clz(__rbit64(*v484 ^ v485)) >> 3) - v479;
                          goto LABEL_816;
                        }
                      }
                    }

                    if (v484 < (v481 - 3) && *v482 == *v484)
                    {
                      v482 += 2;
                      v484 = (v484 + 4);
                    }

                    if (v484 < (v481 - 1) && *v482 == *v484)
                    {
                      ++v482;
                      v484 = (v484 + 2);
                    }

                    if (v484 < v481 && *v482 == *v484)
                    {
                      v484 = (v484 + 1);
                    }

                    v487 = v484 - v479;
LABEL_816:
                    if ((v480 + v487) == v478)
                    {
                      v488 = &v479[v487];
                      if (v279 > v488)
                      {
                        if (*v301 == *v488)
                        {
                          v489 = 0;
                          v490 = &a4[v487];
                          while (1)
                          {
                            v491 = &v490[v489 + 12];
                            if (v491 >= v279)
                            {
                              break;
                            }

                            v492 = *(v280 + v489);
                            v493 = *v491;
                            v489 += 8;
                            if (v492 != v493)
                            {
                              v494 = &v490[v489 + 4 + (__clz(__rbit64(v493 ^ v492)) >> 3)] - v488;
                              goto LABEL_836;
                            }
                          }

                          v495 = (v280 + v489);
                          v496 = &a4[v487 + 12 + v489];
LABEL_826:
                          if (v496 < v1010 && *v495 == *v496)
                          {
                            v495 += 4;
                            v496 += 4;
                          }

                          if (v496 < v1006 && *v495 == *v496)
                          {
                            v495 += 2;
                            v496 += 2;
                          }

                          if (v496 < v11 && *v495 == *v496)
                          {
                            ++v496;
                          }

                          v494 = v496 - v488;
                        }

                        else
                        {
                          v494 = __clz(__rbit64(*v488 ^ *v301)) >> 3;
                        }

LABEL_836:
                        v487 += v494;
                        goto LABEL_837;
                      }

                      v495 = v301;
                      v496 = v488;
                      goto LABEL_826;
                    }

LABEL_837:
                    if (a4 <= v11 - 32)
                    {
                      **(a2 + 24) = *a4;
                      v469 = *(a2 + 8);
                    }

                    *(v469 + 4) = 0;
                    *v469 = 1;
                    if (v487 + 1 >= 0x10000)
                    {
                      v497 = (v469 - *a2) >> 3;
                      *(a2 + 72) = 2;
                      *(a2 + 76) = v497;
                    }

                    *(v469 + 6) = v487 + 1;
                    v469 += 8;
                    v473 = *a4;
                    *(v8 + 4 * ((0xCF1BBCDCBF9B0000 * *a4) >> v278)) = v474;
                    *(v6 + 4 * ((0xCF1BBCDCB7A56463 * v473) >> v277)) = v474;
                    a4 += v487 + 4;
                    *(a2 + 8) = v469;
                    v471 = v19;
                    v20 = v472;
                    v276 = a4;
                    if (a4 > v18)
                    {
                      goto LABEL_458;
                    }
                  }
                }

LABEL_785:
                v468 = (v409 - *a2) >> 3;
                *(a2 + 72) = 2;
                *(a2 + 76) = v468;
                v19 = v372;
                goto LABEL_786;
              }

              v373 = v276 - 1;
              v440 = (v318 - 1);
              while (*v373 == *v440)
              {
                ++v371;
                v375 = v373 - 1;
                if (v373 > a4)
                {
                  --v373;
                  v80 = v440-- > v390;
                  if (v80)
                  {
                    continue;
                  }
                }

                goto LABEL_748;
              }

              goto LABEL_693;
            }

            v392 = 0;
            v393 = &v276[v346];
            while (1)
            {
              v394 = &v393[v392 + 12];
              if (v394 >= v279)
              {
                break;
              }

              v395 = *(v280 + v392);
              v396 = *v394;
              v392 += 8;
              if (v395 != v396)
              {
                v397 = &v393[v392 + 4 + (__clz(__rbit64(v396 ^ v395)) >> 3)] - v391;
                goto LABEL_741;
              }
            }

            v425 = (v280 + v392);
            v426 = &v276[v346 + 12 + v392];
          }

          if (v426 < v1010 && *v425 == *v426)
          {
            v425 += 4;
            v426 += 4;
          }

          if (v426 < v1006 && *v425 == *v426)
          {
            v425 += 2;
            v426 += 2;
          }

          if (v426 < v11 && *v425 == *v426)
          {
            ++v426;
          }

          v397 = v426 - v391;
          goto LABEL_741;
        }

        if (v279 <= v338)
        {
          v367 = v276 + 4;
        }

        else
        {
          if (*v339 != *v338)
          {
            v370 = __clz(__rbit64(*v338 ^ *v339)) >> 3;
            goto LABEL_638;
          }

          v339 = (v318 + 12);
          v366 = v276 + 12;
          while (1)
          {
            v367 = v366;
            if (v366 >= v279)
            {
              break;
            }

            v369 = *v339++;
            v368 = v369;
            v366 += 8;
            if (v369 != *v367)
            {
              v370 = &v367[__clz(__rbit64(*v367 ^ v368)) >> 3] - v338;
              goto LABEL_638;
            }
          }
        }

        if (v367 < v1010 && *v339 == *v367)
        {
          v339 = (v339 + 4);
          v367 += 4;
        }

        if (v367 < v1006 && *v339 == *v367)
        {
          v339 = (v339 + 2);
          v367 += 2;
        }

        if (v367 < v11 && *v339 == *v367)
        {
          ++v367;
        }

        v370 = v367 - v338;
LABEL_638:
        v371 = v370 + 4;
        v372 = (v276 - v318);
        if (v276 > a4 && v318 > v301)
        {
          v373 = v276 - 1;
          v398 = (v318 - 1);
          while (*v373 == *v398)
          {
            ++v371;
            v375 = v373 - 1;
            if (v373 > a4)
            {
              --v373;
              v80 = v398-- > v301;
              if (v80)
              {
                continue;
              }
            }

            goto LABEL_748;
          }

          goto LABEL_693;
        }

LABEL_723:
        v296 = v276;
        goto LABEL_749;
      }

      _ZF = (v321 ^ v323) == 0;
      v336 = v323 >> 8;
      if (!_ZF || v336 <= v1017)
      {
        goto LABEL_528;
      }

      v378 = v336;
      v379 = (v1029 + v336);
      if (*v379 != v319)
      {
        goto LABEL_528;
      }

      v380 = (v276 + 9);
      v381 = (v379 + 1);
      v382 = &v276[v1030 - (v379 + 1) + 9];
      if (v382 >= v11)
      {
        v383 = v11;
      }

      else
      {
        v383 = v382;
      }

      if (v383 - 7 <= v380)
      {
        v384 = v381;
        v386 = v276 + 9;
      }

      else
      {
        if (*v381 != *v380)
        {
          v389 = __clz(__rbit64(*v380 ^ *v381)) >> 3;
          goto LABEL_853;
        }

        v384 = (v984 + v378);
        v385 = (v276 + 17);
        while (1)
        {
          v386 = v385;
          if (v385 >= v383 - 7)
          {
            break;
          }

          v388 = *v384;
          v384 += 4;
          v387 = v388;
          v385 += 8;
          if (v388 != *v386)
          {
            v389 = v386 + (__clz(__rbit64(*v386 ^ v387)) >> 3) - v380;
            goto LABEL_853;
          }
        }
      }

      if (v386 < v383 - 3 && *v384 == *v386)
      {
        v384 += 2;
        v386 = (v386 + 4);
      }

      if (v386 < v383 - 1 && *v384 == *v386)
      {
        ++v384;
        v386 = (v386 + 2);
      }

      if (v386 < v383 && *v384 == *v386)
      {
        v386 = (v386 + 1);
      }

      v389 = v386 - v380;
LABEL_853:
      if (v381 + v389 != v1030)
      {
LABEL_874:
        v371 = v389 + 8;
        v372 = v293 - (v1028 + v378);
        if (v296 <= a4)
        {
          goto LABEL_749;
        }

        v507 = (v988 + v378);
        while (*v276 == *v507)
        {
          ++v371;
          v373 = v276 - 1;
          if (v276 > a4)
          {
            --v276;
            v80 = v507-- > v1000;
            if (v80)
            {
              continue;
            }
          }

          goto LABEL_693;
        }

        goto LABEL_880;
      }

      v498 = &v380[v389];
      if (v279 <= v498)
      {
        v505 = v301;
        v506 = v498;
      }

      else
      {
        if (*v301 != *v498)
        {
          v504 = __clz(__rbit64(*v498 ^ *v301)) >> 3;
LABEL_873:
          v389 += v504;
          goto LABEL_874;
        }

        v499 = 0;
        v500 = &v276[v389];
        while (1)
        {
          v501 = &v500[v499 + 17];
          if (v501 >= v279)
          {
            break;
          }

          v502 = *(v280 + v499);
          v503 = *v501;
          v499 += 8;
          if (v502 != v503)
          {
            v504 = &v500[v499 + 9 + (__clz(__rbit64(v503 ^ v502)) >> 3)] - v498;
            goto LABEL_873;
          }
        }

        v505 = (v280 + v499);
        v506 = &v276[v389 + 17 + v499];
      }

      if (v506 < v1010 && *v505 == *v506)
      {
        v505 += 4;
        v506 += 4;
      }

      if (v506 < v1006 && *v505 == *v506)
      {
        v505 += 2;
        v506 += 2;
      }

      if (v506 < v11 && *v505 == *v506)
      {
        ++v506;
      }

      v504 = v506 - v498;
      goto LABEL_873;
    }

    v316 = v288 >> 8;
    v317 = v286 == v288 && v316 > v1017;
    v301 = (v10 + v16);
    v22 = v1023;
    if (!v317)
    {
      goto LABEL_487;
    }

    v347 = v1029 + v316;
    if (*(v1029 + v316) != v281)
    {
      goto LABEL_487;
    }

    v348 = (v276 + 8);
    v349 = (v347 + 8);
    v350 = &v1030[v276 - v347];
    if (v350 >= v11)
    {
      v351 = v11;
    }

    else
    {
      v351 = v350;
    }

    if (v351 - 7 <= v348)
    {
      v352 = v349;
      v354 = v276 + 8;
    }

    else
    {
      if (*v349 != *v348)
      {
        v357 = __clz(__rbit64(*v348 ^ *v349)) >> 3;
        goto LABEL_695;
      }

      v352 = (v984 + v316);
      v353 = (v276 + 16);
      while (1)
      {
        v354 = v353;
        if (v353 >= v351 - 7)
        {
          break;
        }

        v356 = *v352;
        v352 += 4;
        v355 = v356;
        v353 += 8;
        if (v356 != *v354)
        {
          v357 = v354 + (__clz(__rbit64(*v354 ^ v355)) >> 3) - v348;
          goto LABEL_695;
        }
      }
    }

    if (v354 < v351 - 3 && *v352 == *v354)
    {
      v352 += 2;
      v354 = (v354 + 4);
    }

    if (v354 < v351 - 1 && *v352 == *v354)
    {
      ++v352;
      v354 = (v354 + 2);
    }

    if (v354 < v351 && *v352 == *v354)
    {
      v354 = (v354 + 1);
    }

    v357 = v354 - v348;
LABEL_695:
    if (v349 + v357 != v1030)
    {
      goto LABEL_717;
    }

    v428 = &v348[v357];
    if (v279 <= v428)
    {
      v430 = (v10 + v16);
      v431 = v428;
    }

    else
    {
      if (*v1022 != *v428)
      {
        v434 = __clz(__rbit64(*v428 ^ *v1022)) >> 3;
LABEL_716:
        v357 += v434;
LABEL_717:
        v371 = v357 + 8;
        v372 = v290 - (v1028 + v316);
        if (v276 > a4)
        {
          v373 = v276 - 1;
          v435 = (v988 + v316);
          while (*v373 == *v435)
          {
            ++v371;
            v375 = v373 - 1;
            if (v373 > a4)
            {
              --v373;
              v80 = v435-- > v1000;
              if (v80)
              {
                continue;
              }
            }

LABEL_748:
            v296 = v375 + 1;
            goto LABEL_749;
          }

          goto LABEL_693;
        }

        goto LABEL_723;
      }

      v429 = &v276[v357 + 16];
      v430 = (v16 + v10 + 8);
      while (1)
      {
        v431 = v429;
        if (v429 >= v279)
        {
          break;
        }

        v433 = *v430;
        v430 += 4;
        v432 = v433;
        v429 += 8;
        if (v433 != *v431)
        {
          v434 = v431 + (__clz(__rbit64(*v431 ^ v432)) >> 3) - v428;
          goto LABEL_716;
        }
      }
    }

    if (v431 < v1010 && *v430 == *v431)
    {
      v430 += 2;
      v431 = (v431 + 4);
    }

    if (v431 < v1006 && *v430 == *v431)
    {
      ++v430;
      v431 = (v431 + 2);
    }

    if (v431 < v11 && *v430 == *v431)
    {
      v431 = (v431 + 1);
    }

    v434 = v431 - v428;
    goto LABEL_716;
  }

  if (v5 != 7)
  {
    if (v29)
    {
      if (v26 <= 0x3D)
      {
        v747 = 0;
        do
        {
          _X6 = v22 + v747;
          __asm { PRFM            #2, [X6] }

          v747 += 64;
        }

        while (v747 < 4 << v26);
      }

      if (v27 <= 0x3D)
      {
        v750 = 0;
        do
        {
          _X5 = v23 + v750;
          __asm { PRFM            #2, [X5] }

          v750 += 64;
        }

        while (v750 < 4 << v27);
      }
    }

    if (v28)
    {
      v753 = a4;
    }

    else
    {
      v753 = a4 + 1;
    }

    if (v753 >= v18)
    {
      goto LABEL_1756;
    }

    v999 = a3;
    v754 = 64 - v7;
    v755 = 32 - v9;
    v1016 = 56 - v26;
    v1004 = 24 - v27;
    v1027 = v16 - 1;
    v756 = v11 - 7;
    v1008 = v11 - 1;
    v1012 = v11 - 3;
    v1021 = v23;
    v986 = v1029 + 16;
    v757 = v16 + v10 + 8;
    v990 = v1029 - 1;
    v994 = v10 + 16;
    v998 = v10 - 1;
    while (1)
    {
      v758 = *v753;
      v759 = 0xCF1BBCDCB7A56463 * *v753;
      v760 = v759 >> v754;
      v761 = -1640531535 * *v753;
      v762 = v761 >> v755;
      v763 = v759 >> v1016;
      v764 = v761 >> v1004;
      v765 = *(v1023 + ((v759 >> v1016 >> 6) & 0x3FFFFFFFFFFFFFCLL));
      v766 = *(v1021 + 4 * (v761 >> v1004 >> 8));
      v767 = v753 - v10;
      v768 = *(v6 + 4 * (v759 >> v754));
      v769 = *(v8 + 4 * (v761 >> v755));
      v770 = v753 - v10 + 1;
      v771 = (v770 - v19);
      v772 = (v1029 + v771 - v1028);
      if (v771 >= v16)
      {
        v772 = (v10 + v771);
      }

      *(v8 + 4 * v762) = v767;
      *(v6 + 4 * v760) = v767;
      if ((v1027 - v771) >= 3)
      {
        v773 = v753 + 1;
        if (*v772 == *(v753 + 1))
        {
          if (v771 >= v16)
          {
            v774 = v11;
          }

          else
          {
            v774 = v1030;
          }

          v775 = (v753 + 5);
          v776 = v772 + 1;
          if (&v753[v774 - (v772 + 1) + 5] >= v11)
          {
            v777 = v11;
          }

          else
          {
            v777 = &v753[v774 - (v772 + 1) + 5];
          }

          if (v777 - 7 <= v775)
          {
            v779 = (v772 + 1);
            v781 = v753 + 5;
            v778 = (v10 + v16);
            goto LABEL_1378;
          }

          v778 = (v10 + v16);
          if (*v776 == *v775)
          {
            v779 = (v772 + 3);
            v780 = (v753 + 13);
            while (1)
            {
              v781 = v780;
              if (v780 >= v777 - 7)
              {
                break;
              }

              v783 = *v779;
              v779 += 4;
              v782 = v783;
              v780 += 8;
              if (v783 != *v781)
              {
                v784 = v781 + (__clz(__rbit64(*v781 ^ v782)) >> 3) - v775;
                goto LABEL_1424;
              }
            }

LABEL_1378:
            if (v781 < v777 - 3 && *v779 == *v781)
            {
              v779 += 2;
              v781 = (v781 + 4);
            }

            if (v781 < v777 - 1 && *v779 == *v781)
            {
              ++v779;
              v781 = (v781 + 2);
            }

            if (v781 < v777 && *v779 == *v781)
            {
              v781 = (v781 + 1);
            }

            v784 = v781 - v775;
          }

          else
          {
            v784 = __clz(__rbit64(*v775 ^ *v776)) >> 3;
          }

LABEL_1424:
          if (v776 + v784 != v774)
          {
            v835 = (v11 - 32);
            goto LABEL_1532;
          }

          v836 = &v775[v784];
          if (v756 <= &v775[v784])
          {
            v854 = v778;
            v855 = v836;
            goto LABEL_1521;
          }

          if (*v778 == *v836)
          {
            v837 = 0;
            v838 = &v753[v784];
            while (1)
            {
              v839 = &v838[v837 + 13];
              if (v839 >= v756)
              {
                break;
              }

              v840 = *(v757 + v837);
              v841 = *v839;
              v837 += 8;
              if (v840 != v841)
              {
                v842 = &v838[v837 + 5 + (__clz(__rbit64(v841 ^ v840)) >> 3)] - v836;
                v835 = (v11 - 32);
                goto LABEL_1531;
              }
            }

            v854 = (v757 + v837);
            v855 = &v753[v784 + 13 + v837];
LABEL_1521:
            v835 = (v11 - 32);
            if (v855 < v1012 && *v854 == *v855)
            {
              ++v854;
              v855 += 4;
            }

            if (v855 < v1008 && *v854 == *v855)
            {
              v854 = (v854 + 2);
              v855 += 2;
            }

            if (v855 < v11 && *v854 == *v855)
            {
              ++v855;
            }

            v842 = v855 - v836;
          }

          else
          {
            v842 = __clz(__rbit64(*v836 ^ *v778)) >> 3;
            v835 = (v11 - 32);
          }

LABEL_1531:
          v784 += v842;
LABEL_1532:
          v877 = v773 - a4;
          v878 = *(a2 + 24);
          if (v773 > v835)
          {
            if (a4 <= v835)
            {
              v879 = (v878 + v835 - a4);
              *v878 = *a4;
              if (v835 - a4 >= 17)
              {
                v880 = v878 + 1;
                v881 = (a4 + 32);
                do
                {
                  *v880 = *(v881 - 1);
                  v882 = *v881;
                  v881 += 2;
                  v880[1] = v882;
                  v880 += 2;
                }

                while (v880 < v879);
              }

              a4 = v835;
              v878 = v879;
            }

            if (a4 >= v773)
            {
              goto LABEL_1610;
            }

            v883 = v773 - a4;
            if ((v773 - a4) < 8)
            {
              v891 = v878;
            }

            else if ((v878 - a4) < 0x20)
            {
              v891 = v878;
            }

            else
            {
              if (v883 < 0x20)
              {
                v884 = 0;
LABEL_1555:
                v896 = v883 & 0xFFFFFFFFFFFFFFF8;
                v891 = v878 + (v883 & 0xFFFFFFFFFFFFFFF8);
                v897 = v884 - (v883 & 0xFFFFFFFFFFFFFFF8);
                v898 = &a4[v884];
                v899 = (v878 + v884);
                do
                {
                  v900 = *v898;
                  v898 += 8;
                  *v899++ = v900;
                  v897 += 8;
                }

                while (v897);
                if (v883 != v896)
                {
                  a4 += v896;
                  goto LABEL_1609;
                }

LABEL_1610:
                *(a2 + 24) += v877;
                v890 = *(a2 + 8);
                if (v877 >= 0x10000)
                {
                  v915 = (v890 - *a2) >> 3;
                  *(a2 + 72) = 1;
                  *(a2 + 76) = v915;
                }

                goto LABEL_1612;
              }

              v884 = v883 & 0xFFFFFFFFFFFFFFE0;
              v892 = (a4 + 16);
              v893 = v878 + 1;
              v894 = v883 & 0xFFFFFFFFFFFFFFE0;
              do
              {
                v895 = *v892;
                *(v893 - 1) = *(v892 - 1);
                *v893 = v895;
                v892 += 2;
                v893 += 2;
                v894 -= 32;
              }

              while (v894);
              if (v883 == v884)
              {
                goto LABEL_1610;
              }

              if ((v883 & 0x18) != 0)
              {
                goto LABEL_1555;
              }

              a4 += v884;
              v891 = v878 + v884;
            }

            do
            {
LABEL_1609:
              v914 = *a4++;
              *v891++ = v914;
            }

            while (a4 != v773);
            goto LABEL_1610;
          }

          *v878 = *a4;
          v885 = *(a2 + 24);
          if (v877 > 0x10)
          {
            *(v885 + 16) = *(a4 + 1);
            if (v877 >= 33)
            {
              v886 = v885 + v877;
              v887 = (v885 + 32);
              v888 = (a4 + 48);
              do
              {
                *v887 = *(v888 - 1);
                v889 = *v888;
                v888 += 2;
                v887[1] = v889;
                v887 += 2;
              }

              while (v887 < v886);
            }

            goto LABEL_1610;
          }

          *(a2 + 24) = v885 + v877;
          v890 = *(a2 + 8);
LABEL_1612:
          v848 = v784 + 4;
          *(v890 + 4) = v877;
          *v890 = 1;
          v916 = v784 + 1;
          v849 = v19;
          if (!((v784 + 1) >> 16))
          {
            goto LABEL_1698;
          }

LABEL_1697:
          v953 = (v890 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v953;
          v19 = v849;
          goto LABEL_1698;
        }
      }

      if (v768 <= v16)
      {
        v793 = v765 >> 8;
        v794 = v763 == v765 && v793 > v1017;
        v778 = (v10 + v16);
        if (v794)
        {
          v824 = v1029 + v793;
          if (*(v1029 + v793) == v758)
          {
            v825 = (v753 + 8);
            v826 = (v824 + 8);
            v827 = &v1030[v753 - v824];
            if (v827 >= v11)
            {
              v828 = v11;
            }

            else
            {
              v828 = v827;
            }

            if (v828 - 7 <= v825)
            {
              v829 = v826;
              v831 = v753 + 8;
              goto LABEL_1483;
            }

            if (*v826 == *v825)
            {
              v829 = (v986 + v793);
              v830 = (v753 + 16);
              while (1)
              {
                v831 = v830;
                if (v830 >= v828 - 7)
                {
                  break;
                }

                v833 = *v829;
                v829 += 4;
                v832 = v833;
                v830 += 8;
                if (v833 != *v831)
                {
                  v834 = v831 + (__clz(__rbit64(*v831 ^ v832)) >> 3) - v825;
                  goto LABEL_1568;
                }
              }

LABEL_1483:
              if (v831 < v828 - 3 && *v829 == *v831)
              {
                v829 += 2;
                v831 = (v831 + 4);
              }

              if (v831 < v828 - 1 && *v829 == *v831)
              {
                ++v829;
                v831 = (v831 + 2);
              }

              if (v831 < v828 && *v829 == *v831)
              {
                v831 = (v831 + 1);
              }

              v834 = v831 - v825;
            }

            else
            {
              v834 = __clz(__rbit64(*v825 ^ *v826)) >> 3;
            }

LABEL_1568:
            if (v826 + v834 != v1030)
            {
              v905 = v1000;
              goto LABEL_1602;
            }

            v906 = &v825[v834];
            if (v756 <= v906)
            {
              v908 = (v10 + v16);
              v909 = v906;
              goto LABEL_1577;
            }

            if (*v1022 == *v906)
            {
              v907 = &v753[v834 + 16];
              v908 = (v16 + v10 + 8);
              while (1)
              {
                v909 = v907;
                if (v907 >= v756)
                {
                  break;
                }

                v911 = *v908;
                v908 += 4;
                v910 = v911;
                v907 += 8;
                if (v911 != *v909)
                {
                  v912 = v909 + (__clz(__rbit64(*v909 ^ v910)) >> 3) - v906;
                  goto LABEL_1600;
                }
              }

LABEL_1577:
              if (v909 < v1012 && *v908 == *v909)
              {
                v908 += 2;
                v909 = (v909 + 4);
              }

              if (v909 < v1008 && *v908 == *v909)
              {
                ++v908;
                v909 = (v909 + 2);
              }

              if (v909 < v11 && *v908 == *v909)
              {
                v909 = (v909 + 1);
              }

              v905 = v1000;
              v912 = v909 - v906;
            }

            else
            {
              v912 = __clz(__rbit64(*v906 ^ *v1022)) >> 3;
LABEL_1600:
              v905 = v1000;
            }

            v834 += v912;
LABEL_1602:
            v848 = v834 + 8;
            v849 = v767 - (v1028 + v793);
            if (v753 <= a4)
            {
              goto LABEL_1633;
            }

            v850 = v753 - 1;
            v913 = (v990 + v793);
            v852 = (v11 - 32);
            while (*v850 == *v913)
            {
              ++v848;
              v853 = v850 - 1;
              if (v850 > a4)
              {
                --v850;
                v80 = v913-- > v905;
                if (v80)
                {
                  continue;
                }
              }

LABEL_1632:
              v773 = v853 + 1;
              goto LABEL_1665;
            }

LABEL_1634:
            v773 = v850 + 1;
            goto LABEL_1665;
          }
        }
      }

      else
      {
        v785 = v10 + v768;
        v778 = (v10 + v16);
        if (*(v10 + v768) == v758)
        {
          v786 = (v753 + 8);
          v787 = (v785 + 8);
          if (v756 > (v753 + 8))
          {
            if (*v787 == *v786)
            {
              v787 = (v994 + v768);
              v788 = v753 + 16;
              while (1)
              {
                v789 = v788;
                if (v788 >= v756)
                {
                  break;
                }

                v791 = *v787;
                v787 += 4;
                v790 = v791;
                v788 += 8;
                if (v791 != *v789)
                {
                  v792 = &v789[__clz(__rbit64(*v789 ^ v790)) >> 3] - v786;
                  goto LABEL_1441;
                }
              }

LABEL_1389:
              if (v789 < v1012 && *v787 == *v789)
              {
                v787 += 2;
                v789 += 4;
              }

              if (v789 < v1008 && *v787 == *v789)
              {
                ++v787;
                v789 += 2;
              }

              if (v789 < v11 && *v787 == *v789)
              {
                ++v789;
              }

              v792 = v789 - v786;
            }

            else
            {
              v792 = __clz(__rbit64(*v786 ^ *v787)) >> 3;
            }

LABEL_1441:
            v848 = v792 + 8;
            v849 = (v753 - v785);
            if (v753 <= a4)
            {
              goto LABEL_1633;
            }

            v850 = v753 - 1;
            v851 = (v998 + v768);
            v852 = (v11 - 32);
            while (*v850 == *v851)
            {
              ++v848;
              v853 = v850 - 1;
              if (v850 > a4)
              {
                --v850;
                v80 = v851-- > v1022;
                if (v80)
                {
                  continue;
                }
              }

              goto LABEL_1632;
            }

            goto LABEL_1634;
          }

          v789 = v753 + 8;
          goto LABEL_1389;
        }
      }

      if (v769 <= v16)
      {
        v809 = v766 >> 8;
        v810 = v764 == v766 && v809 > v1017;
        if (!v810 || (v795 = v1029 + v809, *(v1029 + v809) != *v753))
        {
LABEL_1376:
          _X13 = &v753[(v753 - a4) >> 8];
          v753 = _X13 + 1;
          _X13 += 257;
          __asm { PRFM            #0, [X13] }

          goto LABEL_1333;
        }

        LODWORD(v769) = v809 + v1028;
      }

      else
      {
        v795 = v10 + v769;
        if (*(v10 + v769) != *v753)
        {
          goto LABEL_1376;
        }
      }

      v773 = v753 + 1;
      v796 = *(v753 + 1);
      v797 = (0xCF1BBCDCB7A56463 * v796) >> v754;
      v798 = (0xCF1BBCDCB7A56463 * v796) >> v1016;
      v799 = *(v6 + 4 * v797);
      v800 = *(v1023 + ((v798 >> 6) & 0x3FFFFFFFFFFFFFCLL));
      *(v6 + 4 * v797) = v770;
      if (v799 > v16)
      {
        v801 = v10 + v799;
        if (*(v10 + v799) != v796)
        {
          goto LABEL_1403;
        }

        v802 = (v753 + 9);
        v803 = (v801 + 8);
        if (v756 > (v753 + 9))
        {
          if (*v803 == *v802)
          {
            v803 = (v994 + v799);
            v804 = v753 + 17;
            while (1)
            {
              v805 = v804;
              if (v804 >= v756)
              {
                break;
              }

              v807 = *v803;
              v803 += 4;
              v806 = v807;
              v804 += 8;
              if (v807 != *v805)
              {
                v808 = &v805[__clz(__rbit64(*v805 ^ v806)) >> 3] - v802;
                goto LABEL_1561;
              }
            }

LABEL_1472:
            if (v805 < v1012 && *v803 == *v805)
            {
              v803 += 2;
              v805 += 4;
            }

            if (v805 < v1008 && *v803 == *v805)
            {
              ++v803;
              v805 += 2;
            }

            if (v805 < v11 && *v803 == *v805)
            {
              ++v805;
            }

            v808 = v805 - v802;
          }

          else
          {
            v808 = __clz(__rbit64(*v802 ^ *v803)) >> 3;
          }

LABEL_1561:
          v848 = v808 + 8;
          v849 = (v773 - v801);
          if (v773 > a4)
          {
            v903 = (v998 + v799);
            while (*v753 == *v903)
            {
              ++v848;
              v904 = v753 - 1;
              if (v753 > a4)
              {
                --v753;
                v80 = v903-- > v778;
                if (v80)
                {
                  continue;
                }
              }

              goto LABEL_1566;
            }

LABEL_1663:
            v773 = v753 + 1;
            goto LABEL_1664;
          }

          goto LABEL_1664;
        }

        v805 = v753 + 9;
        goto LABEL_1472;
      }

      _ZF = (v798 ^ v800) == 0;
      v813 = v800 >> 8;
      v814 = _ZF && v813 > v1017;
      if (!v814 || (v856 = v813, v857 = (v1029 + v813), *v857 != v796))
      {
LABEL_1403:
        v815 = (v753 + 4);
        v816 = (v795 + 4);
        if (v769 < v16)
        {
          if (&v815[v1030 - v816] >= v11)
          {
            v817 = v11;
          }

          else
          {
            v817 = &v815[v1030 - v816];
          }

          if (v817 - 7 <= v815)
          {
            v818 = (v795 + 4);
            v820 = (v753 + 4);
            goto LABEL_1449;
          }

          if (*v816 == *v815)
          {
            v818 = (v795 + 12);
            v819 = (v753 + 12);
            while (1)
            {
              v820 = v819;
              if (v819 >= (v817 - 7))
              {
                break;
              }

              v822 = *v818;
              v818 += 4;
              v821 = v822;
              v819 += 8;
              if (v822 != *v820)
              {
                v823 = &v820[__clz(__rbit64(*v820 ^ v821)) >> 3] - v815;
                goto LABEL_1504;
              }
            }

LABEL_1449:
            if (v820 < v817 - 3 && *v818 == *v820)
            {
              v818 += 2;
              v820 += 4;
            }

            if (v820 < v817 - 1 && *v818 == *v820)
            {
              ++v818;
              v820 += 2;
            }

            if (v820 < v817 && *v818 == *v820)
            {
              ++v820;
            }

            v823 = v820 - v815;
          }

          else
          {
            v823 = __clz(__rbit64(*v815 ^ *v816)) >> 3;
          }

LABEL_1504:
          if (v816 + v823 != v1030)
          {
            v868 = v1000;
            goto LABEL_1626;
          }

          v869 = &v815[v823];
          if (v756 > v869)
          {
            v868 = v1000;
            if (*v778 == *v869)
            {
              v870 = 0;
              v871 = &v753[v823];
              while (1)
              {
                v872 = &v871[v870 + 12];
                if (v872 >= v756)
                {
                  break;
                }

                v873 = *(v757 + v870);
                v874 = *v872;
                v870 += 8;
                if (v873 != v874)
                {
                  v875 = &v871[v870 + 4 + (__clz(__rbit64(v874 ^ v873)) >> 3)] - v869;
                  goto LABEL_1625;
                }
              }

              v901 = (v757 + v870);
              v902 = &v753[v823 + 12 + v870];
LABEL_1615:
              if (v902 < v1012 && *v901 == *v902)
              {
                ++v901;
                v902 += 4;
              }

              if (v902 < v1008 && *v901 == *v902)
              {
                v901 = (v901 + 2);
                v902 += 2;
              }

              if (v902 < v11 && *v901 == *v902)
              {
                ++v902;
              }

              v868 = v1000;
              v875 = v902 - v869;
            }

            else
            {
              v875 = __clz(__rbit64(*v869 ^ *v778)) >> 3;
            }

LABEL_1625:
            v823 += v875;
LABEL_1626:
            v848 = v823 + 4;
            v849 = (v767 - v769);
            if (v753 <= a4 || v795 <= v868)
            {
              goto LABEL_1633;
            }

            v850 = v753 - 1;
            v917 = (v795 - 1);
            v852 = (v11 - 32);
            while (*v850 == *v917)
            {
              ++v848;
              v853 = v850 - 1;
              if (v850 > a4)
              {
                --v850;
                v80 = v917-- > v868;
                if (v80)
                {
                  continue;
                }
              }

              goto LABEL_1632;
            }

            goto LABEL_1634;
          }

          v901 = v778;
          v902 = v869;
          goto LABEL_1615;
        }

        if (v756 > v815)
        {
          if (*v816 == *v815)
          {
            v816 = (v795 + 12);
            v843 = v753 + 12;
            while (1)
            {
              v844 = v843;
              if (v843 >= v756)
              {
                break;
              }

              v846 = *v816++;
              v845 = v846;
              v843 += 8;
              if (v846 != *v844)
              {
                v847 = &v844[__clz(__rbit64(*v844 ^ v845)) >> 3] - v815;
                goto LABEL_1513;
              }
            }

LABEL_1460:
            if (v844 < v1012 && *v816 == *v844)
            {
              v816 = (v816 + 4);
              v844 += 4;
            }

            if (v844 < v1008 && *v816 == *v844)
            {
              v816 = (v816 + 2);
              v844 += 2;
            }

            if (v844 < v11 && *v816 == *v844)
            {
              ++v844;
            }

            v847 = v844 - v815;
          }

          else
          {
            v847 = __clz(__rbit64(*v815 ^ *v816)) >> 3;
          }

LABEL_1513:
          v848 = v847 + 4;
          v849 = (v753 - v795);
          if (v753 <= a4 || v795 <= v778)
          {
LABEL_1633:
            v773 = v753;
            v852 = (v11 - 32);
            goto LABEL_1665;
          }

          v850 = v753 - 1;
          v876 = (v795 - 1);
          v852 = (v11 - 32);
          while (*v850 == *v876)
          {
            ++v848;
            v853 = v850 - 1;
            if (v850 > a4)
            {
              --v850;
              v80 = v876-- > v778;
              if (v80)
              {
                continue;
              }
            }

            goto LABEL_1632;
          }

          goto LABEL_1634;
        }

        v844 = v753 + 4;
        goto LABEL_1460;
      }

      v858 = (v753 + 9);
      v859 = (v857 + 1);
      v860 = &v753[v1030 - (v857 + 1) + 9];
      if (v860 >= v11)
      {
        v861 = v11;
      }

      else
      {
        v861 = v860;
      }

      if (v861 - 7 <= v858)
      {
        v862 = v859;
        v864 = v753 + 9;
      }

      else
      {
        if (*v859 != *v858)
        {
          v867 = __clz(__rbit64(*v858 ^ *v859)) >> 3;
          goto LABEL_1636;
        }

        v862 = (v986 + v856);
        v863 = (v753 + 17);
        while (1)
        {
          v864 = v863;
          if (v863 >= v861 - 7)
          {
            break;
          }

          v866 = *v862;
          v862 += 4;
          v865 = v866;
          v863 += 8;
          if (v866 != *v864)
          {
            v867 = v864 + (__clz(__rbit64(*v864 ^ v865)) >> 3) - v858;
            goto LABEL_1636;
          }
        }
      }

      if (v864 < v861 - 3 && *v862 == *v864)
      {
        v862 += 2;
        v864 = (v864 + 4);
      }

      if (v864 < v861 - 1 && *v862 == *v864)
      {
        ++v862;
        v864 = (v864 + 2);
      }

      if (v864 < v861 && *v862 == *v864)
      {
        v864 = (v864 + 1);
      }

      v867 = v864 - v858;
LABEL_1636:
      if (v859 + v867 != v1030)
      {
        goto LABEL_1657;
      }

      v918 = &v858[v867];
      if (v756 <= v918)
      {
        v925 = v778;
        v926 = v918;
LABEL_1646:
        if (v926 < v1012 && *v925 == *v926)
        {
          ++v925;
          v926 += 4;
        }

        if (v926 < v1008 && *v925 == *v926)
        {
          v925 = (v925 + 2);
          v926 += 2;
        }

        if (v926 < v11 && *v925 == *v926)
        {
          ++v926;
        }

        v924 = v926 - v918;
        goto LABEL_1656;
      }

      if (*v778 == *v918)
      {
        v919 = 0;
        v920 = &v753[v867];
        while (1)
        {
          v921 = &v920[v919 + 17];
          if (v921 >= v756)
          {
            break;
          }

          v922 = *(v757 + v919);
          v923 = *v921;
          v919 += 8;
          if (v922 != v923)
          {
            v924 = &v920[v919 + 9 + (__clz(__rbit64(v923 ^ v922)) >> 3)] - v918;
            goto LABEL_1656;
          }
        }

        v925 = (v757 + v919);
        v926 = &v753[v867 + 17 + v919];
        goto LABEL_1646;
      }

      v924 = __clz(__rbit64(*v918 ^ *v778)) >> 3;
LABEL_1656:
      v867 += v924;
LABEL_1657:
      v848 = v867 + 8;
      v849 = v770 - (v1028 + v856);
      if (v773 > a4)
      {
        v927 = (v990 + v856);
        while (*v753 == *v927)
        {
          ++v848;
          v904 = v753 - 1;
          if (v753 > a4)
          {
            --v753;
            v80 = v927-- > v1000;
            if (v80)
            {
              continue;
            }
          }

LABEL_1566:
          v773 = v904 + 1;
          goto LABEL_1664;
        }

        goto LABEL_1663;
      }

LABEL_1664:
      v852 = (v11 - 32);
LABEL_1665:
      v928 = v773 - a4;
      v929 = *(a2 + 24);
      if (v773 <= v852)
      {
        *v929 = *a4;
        v936 = *(a2 + 24);
        if (v928 <= 0x10)
        {
          *(a2 + 24) = v936 + v928;
          v890 = *(a2 + 8);
          goto LABEL_1696;
        }

        *(v936 + 16) = *(a4 + 1);
        if (v928 >= 33)
        {
          v937 = v936 + v928;
          v938 = (v936 + 32);
          v939 = (a4 + 48);
          do
          {
            *v938 = *(v939 - 1);
            v940 = *v939;
            v939 += 2;
            v938[1] = v940;
            v938 += 2;
          }

          while (v938 < v937);
        }
      }

      else
      {
        if (a4 <= v852)
        {
          v930 = (v929 + v852 - a4);
          *v929 = *a4;
          if (v852 - a4 >= 17)
          {
            v931 = v929 + 1;
            v932 = (a4 + 32);
            do
            {
              *v931 = *(v932 - 1);
              v933 = *v932;
              v932 += 2;
              v931[1] = v933;
              v931 += 2;
            }

            while (v931 < v930);
          }

          a4 = v852;
          v929 = v930;
        }

        if (a4 >= v773)
        {
          goto LABEL_1694;
        }

        v934 = v773 - a4;
        if ((v773 - a4) < 8)
        {
          v941 = v929;
          goto LABEL_1693;
        }

        if ((v929 - a4) < 0x20)
        {
          v941 = v929;
          goto LABEL_1693;
        }

        if (v934 >= 0x20)
        {
          v935 = v934 & 0xFFFFFFFFFFFFFFE0;
          v942 = (a4 + 16);
          v943 = v929 + 1;
          v944 = v934 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v945 = *v942;
            *(v943 - 1) = *(v942 - 1);
            *v943 = v945;
            v942 += 2;
            v943 += 2;
            v944 -= 32;
          }

          while (v944);
          if (v934 == v935)
          {
            goto LABEL_1694;
          }

          if ((v934 & 0x18) == 0)
          {
            a4 += v935;
            v941 = v929 + v935;
            do
            {
LABEL_1693:
              v951 = *a4++;
              *v941++ = v951;
            }

            while (a4 != v773);
            goto LABEL_1694;
          }
        }

        else
        {
          v935 = 0;
        }

        v946 = v934 & 0xFFFFFFFFFFFFFFF8;
        v941 = v929 + (v934 & 0xFFFFFFFFFFFFFFF8);
        v947 = v935 - (v934 & 0xFFFFFFFFFFFFFFF8);
        v948 = &a4[v935];
        v949 = (v929 + v935);
        do
        {
          v950 = *v948;
          v948 += 8;
          *v949++ = v950;
          v947 += 8;
        }

        while (v947);
        if (v934 != v946)
        {
          a4 += v946;
          goto LABEL_1693;
        }
      }

LABEL_1694:
      *(a2 + 24) += v928;
      v890 = *(a2 + 8);
      if (v928 >= 0x10000)
      {
        v952 = (v890 - *a2) >> 3;
        *(a2 + 72) = 1;
        *(a2 + 76) = v952;
      }

LABEL_1696:
      *(v890 + 4) = v928;
      *v890 = v849 + 3;
      v916 = v848 - 3;
      v20 = v19;
      v19 = v849;
      if (v848 - 3 >= 0x10000)
      {
        goto LABEL_1697;
      }

LABEL_1698:
      *(v890 + 6) = v916;
      v954 = v890 + 8;
      *(a2 + 8) = v890 + 8;
      a4 = &v773[v848];
      if (&v773[v848] <= v18)
      {
        *(v6 + 4 * ((0xCF1BBCDCB7A56463 * *(v10 + (v767 + 2))) >> v754)) = v767 + 2;
        *(v6 + 4 * ((0xCF1BBCDCB7A56463 * *(a4 - 2)) >> v754)) = a4 - 2 - v10;
        *(v8 + 4 * ((-1640531535 * *(v10 + (v767 + 2))) >> v755)) = v767 + 2;
        *(v8 + 4 * ((-1640531535 * *(a4 - 1)) >> v755)) = a4 - 1 - v10;
        v955 = v19;
        v956 = v20;
        while (1)
        {
          v19 = v956;
          v956 = v955;
          v957 = a4 - v10;
          v958 = (a4 - v10 - v19);
          v959 = v1029 - v1028;
          if (v958 >= v16)
          {
            v959 = v10;
          }

          if ((v1027 - v958) < 3 || (v960 = v959 + v958, *(v959 + v958) != *a4))
          {
            v20 = v19;
            v19 = v956;
            break;
          }

          if (v958 >= v16)
          {
            v961 = v11;
          }

          else
          {
            v961 = v1030;
          }

          v962 = (a4 + 4);
          v963 = (v960 + 4);
          if ((v961 + a4 - v960) >= v11)
          {
            v964 = v11;
          }

          else
          {
            v964 = v961 + a4 - v960;
          }

          if (v964 - 7 <= v962)
          {
            v966 = (v960 + 4);
            v968 = a4 + 4;
            v965 = v11 - 32;
          }

          else
          {
            v965 = v11 - 32;
            if (*v963 != *v962)
            {
              v971 = __clz(__rbit64(*v962 ^ *v963)) >> 3;
              goto LABEL_1729;
            }

            v966 = (v959 + v958 + 12);
            v967 = (a4 + 12);
            while (1)
            {
              v968 = v967;
              if (v967 >= (v964 - 7))
              {
                break;
              }

              v970 = *v966;
              v966 += 4;
              v969 = v970;
              v967 += 8;
              if (v970 != *v968)
              {
                v971 = v968 + (__clz(__rbit64(*v968 ^ v969)) >> 3) - v962;
                goto LABEL_1729;
              }
            }
          }

          if (v968 < (v964 - 3) && *v966 == *v968)
          {
            v966 += 2;
            v968 = (v968 + 4);
          }

          if (v968 < (v964 - 1) && *v966 == *v968)
          {
            ++v966;
            v968 = (v968 + 2);
          }

          if (v968 < v964 && *v966 == *v968)
          {
            v968 = (v968 + 1);
          }

          v971 = v968 - v962;
LABEL_1729:
          if ((v963 + v971) == v961)
          {
            v973 = &v962[v971];
            if (v756 > v973)
            {
              if (*v778 == *v973)
              {
                v974 = 0;
                v975 = &a4[v971];
                while (1)
                {
                  v976 = &v975[v974 + 12];
                  if (v976 >= v756)
                  {
                    break;
                  }

                  v977 = *(v757 + v974);
                  v978 = *v976;
                  v974 += 8;
                  if (v977 != v978)
                  {
                    v979 = &v975[v974 + 4 + (__clz(__rbit64(v978 ^ v977)) >> 3)] - v973;
                    goto LABEL_1753;
                  }
                }

                v980 = (v757 + v974);
                v981 = &a4[v971 + 12 + v974];
LABEL_1743:
                if (v981 < v1012 && *v980 == *v981)
                {
                  ++v980;
                  v981 += 4;
                }

                if (v981 < v1008 && *v980 == *v981)
                {
                  v980 = (v980 + 2);
                  v981 += 2;
                }

                if (v981 < v11 && *v980 == *v981)
                {
                  ++v981;
                }

                v979 = v981 - v973;
              }

              else
              {
                v979 = __clz(__rbit64(*v973 ^ *v778)) >> 3;
              }

LABEL_1753:
              v971 += v979;
              if (a4 > v965)
              {
                goto LABEL_1732;
              }

LABEL_1731:
              **(a2 + 24) = *a4;
              v954 = *(a2 + 8);
              goto LABEL_1732;
            }

            v980 = v778;
            v981 = v973;
            goto LABEL_1743;
          }

          if (a4 <= v965)
          {
            goto LABEL_1731;
          }

LABEL_1732:
          *(v954 + 4) = 0;
          *v954 = 1;
          if (v971 + 1 >= 0x10000)
          {
            v972 = (v954 - *a2) >> 3;
            *(a2 + 72) = 2;
            *(a2 + 76) = v972;
          }

          *(v954 + 6) = v971 + 1;
          *(v8 + 4 * ((-1640531535 * *a4) >> v755)) = v957;
          v954 += 8;
          *(v6 + 4 * ((0xCF1BBCDCB7A56463 * *a4) >> v754)) = v957;
          a4 += v971 + 4;
          *(a2 + 8) = v954;
          v955 = v19;
          v20 = v956;
          v753 = a4;
          if (a4 > v18)
          {
            goto LABEL_1333;
          }
        }
      }

      v753 = a4;
LABEL_1333:
      if (v753 >= v18)
      {
        goto LABEL_1755;
      }
    }
  }

  if (v29)
  {
    if (v26 <= 0x3D)
    {
      v30 = 0;
      do
      {
        _X6 = v22 + v30;
        __asm { PRFM            #2, [X6] }

        v30 += 64;
      }

      while (v30 < 4 << v26);
    }

    if (v27 <= 0x3D)
    {
      v36 = 0;
      do
      {
        _X5 = v23 + v36;
        __asm { PRFM            #2, [X5] }

        v36 += 64;
      }

      while (v36 < 4 << v27);
    }
  }

  if (v28)
  {
    v39 = a4;
  }

  else
  {
    v39 = a4 + 1;
  }

  if (v39 < v18)
  {
    v1018 = v23;
    v999 = a3;
    v40 = 64 - v7;
    v41 = 64 - v9;
    v1001 = 56 - v27;
    v1024 = v16 - 1;
    v42 = v11 - 7;
    v1009 = v11 - 3;
    v1013 = 56 - v26;
    v1005 = v11 - 1;
    v983 = v1029 + 16;
    v43 = v16 + v10 + 8;
    v987 = v1029 - 1;
    v991 = v10 + 16;
    v995 = v10 - 1;
    while (1)
    {
      v44 = *v39;
      v45 = 0xCF1BBCDCB7A56463 * *v39;
      v46 = v45 >> v40;
      v47 = 0xCF1BBCDCBFA56300 * *v39;
      v48 = v47 >> v41;
      v49 = v45 >> v1013;
      v50 = v47 >> v1001;
      v51 = *(v22 + ((v45 >> v1013 >> 6) & 0x3FFFFFFFFFFFFFCLL));
      v52 = *(v1018 + ((v47 >> v1001 >> 6) & 0x3FFFFFFFFFFFFFCLL));
      v53 = v39 - v10;
      v54 = *(v6 + 4 * (v45 >> v40));
      v55 = *(v8 + 4 * (v47 >> v41));
      v56 = v39 - v10 + 1;
      v57 = (v56 - v19);
      v58 = (v1029 + v57 - v1028);
      if (v57 >= v16)
      {
        v58 = (v10 + v57);
      }

      *(v8 + 4 * v48) = v53;
      *(v6 + 4 * v46) = v53;
      if ((v1024 - v57) >= 3)
      {
        v59 = v39 + 1;
        if (*v58 == *(v39 + 1))
        {
          if (v57 >= v16)
          {
            v60 = v11;
          }

          else
          {
            v60 = v1030;
          }

          v61 = (v39 + 5);
          v62 = v58 + 1;
          if (&v39[v60 - (v58 + 1) + 5] >= v11)
          {
            v63 = v11;
          }

          else
          {
            v63 = &v39[v60 - (v58 + 1) + 5];
          }

          if (v63 - 7 <= v61)
          {
            v65 = (v58 + 1);
            v67 = v39 + 5;
            v64 = (v10 + v16);
            v22 = v1023;
            goto LABEL_69;
          }

          v64 = (v10 + v16);
          v22 = v1023;
          if (*v62 == *v61)
          {
            v65 = (v58 + 3);
            v66 = (v39 + 13);
            while (1)
            {
              v67 = v66;
              if (v66 >= v63 - 7)
              {
                break;
              }

              v69 = *v65;
              v65 += 4;
              v68 = v69;
              v66 += 8;
              if (v69 != *v67)
              {
                v70 = v67 + (__clz(__rbit64(*v67 ^ v68)) >> 3) - v61;
                goto LABEL_115;
              }
            }

LABEL_69:
            if (v67 < v63 - 3 && *v65 == *v67)
            {
              v65 += 2;
              v67 = (v67 + 4);
            }

            if (v67 < v63 - 1 && *v65 == *v67)
            {
              ++v65;
              v67 = (v67 + 2);
            }

            if (v67 < v63 && *v65 == *v67)
            {
              v67 = (v67 + 1);
            }

            v70 = v67 - v61;
          }

          else
          {
            v70 = __clz(__rbit64(*v61 ^ *v62)) >> 3;
          }

LABEL_115:
          if (v62 + v70 != v60)
          {
            v121 = (v11 - 32);
            goto LABEL_223;
          }

          v122 = &v61[v70];
          if (v42 <= &v61[v70])
          {
            v140 = v64;
            v141 = &v61[v70];
            goto LABEL_212;
          }

          if (*v64 == *v122)
          {
            v123 = 0;
            v124 = &v39[v70];
            while (1)
            {
              v125 = &v124[v123 + 13];
              if (v125 >= v42)
              {
                break;
              }

              v126 = *(v43 + v123);
              v127 = *v125;
              v123 += 8;
              if (v126 != v127)
              {
                v128 = &v124[v123 + 5 + (__clz(__rbit64(v127 ^ v126)) >> 3)] - v122;
                v121 = (v11 - 32);
                goto LABEL_222;
              }
            }

            v140 = (v43 + v123);
            v141 = &v39[v70 + 13 + v123];
LABEL_212:
            v121 = (v11 - 32);
            if (v141 < v1009 && *v140 == *v141)
            {
              ++v140;
              v141 += 4;
            }

            if (v141 < v1005 && *v140 == *v141)
            {
              v140 = (v140 + 2);
              v141 += 2;
            }

            if (v141 < v11 && *v140 == *v141)
            {
              ++v141;
            }

            v128 = v141 - v122;
          }

          else
          {
            v128 = __clz(__rbit64(*v122 ^ *v64)) >> 3;
            v121 = (v11 - 32);
          }

LABEL_222:
          v70 += v128;
LABEL_223:
          v163 = v59 - a4;
          v164 = *(a2 + 24);
          if (v59 > v121)
          {
            if (a4 <= v121)
            {
              v165 = (v164 + v121 - a4);
              *v164 = *a4;
              if (v121 - a4 >= 17)
              {
                v166 = v164 + 1;
                v167 = (a4 + 32);
                do
                {
                  *v166 = *(v167 - 1);
                  v168 = *v167;
                  v167 += 2;
                  v166[1] = v168;
                  v166 += 2;
                }

                while (v166 < v165);
              }

              a4 = v121;
              v164 = v165;
            }

            if (a4 >= v59)
            {
              goto LABEL_273;
            }

            v169 = v59 - a4;
            if ((v59 - a4) < 8)
            {
              v177 = v164;
            }

            else if ((v164 - a4) < 0x20)
            {
              v177 = v164;
            }

            else
            {
              if (v169 < 0x20)
              {
                v170 = 0;
LABEL_246:
                v182 = v169 & 0xFFFFFFFFFFFFFFF8;
                v177 = v164 + (v169 & 0xFFFFFFFFFFFFFFF8);
                v183 = v170 - (v169 & 0xFFFFFFFFFFFFFFF8);
                v184 = &a4[v170];
                v185 = (v164 + v170);
                do
                {
                  v186 = *v184;
                  v184 += 8;
                  *v185++ = v186;
                  v183 += 8;
                }

                while (v183);
                if (v169 != v182)
                {
                  a4 += v182;
                  goto LABEL_272;
                }

LABEL_273:
                *(a2 + 24) += v163;
                v176 = *(a2 + 8);
                if (v163 >= 0x10000)
                {
                  v200 = (v176 - *a2) >> 3;
                  *(a2 + 72) = 1;
                  *(a2 + 76) = v200;
                }

                goto LABEL_275;
              }

              v170 = v169 & 0xFFFFFFFFFFFFFFE0;
              v178 = (a4 + 16);
              v179 = v164 + 1;
              v180 = v169 & 0xFFFFFFFFFFFFFFE0;
              do
              {
                v181 = *v178;
                *(v179 - 1) = *(v178 - 1);
                *v179 = v181;
                v178 += 2;
                v179 += 2;
                v180 -= 32;
              }

              while (v180);
              if (v169 == v170)
              {
                goto LABEL_273;
              }

              if ((v169 & 0x18) != 0)
              {
                goto LABEL_246;
              }

              a4 += v170;
              v177 = v164 + v170;
            }

            do
            {
LABEL_272:
              v199 = *a4++;
              *v177++ = v199;
            }

            while (a4 != v59);
            goto LABEL_273;
          }

          *v164 = *a4;
          v171 = *(a2 + 24);
          if (v163 > 0x10)
          {
            *(v171 + 16) = *(a4 + 1);
            if (v163 >= 33)
            {
              v172 = v171 + v163;
              v173 = (v171 + 32);
              v174 = (a4 + 48);
              do
              {
                *v173 = *(v174 - 1);
                v175 = *v174;
                v174 += 2;
                v173[1] = v175;
                v173 += 2;
              }

              while (v173 < v172);
            }

            goto LABEL_273;
          }

          *(a2 + 24) = v171 + v163;
          v176 = *(a2 + 8);
LABEL_275:
          v134 = v70 + 4;
          *(v176 + 4) = v163;
          *v176 = 1;
          v201 = v70 + 1;
          v135 = v19;
          if (!((v70 + 1) >> 16))
          {
            goto LABEL_389;
          }

LABEL_388:
          v239 = (v176 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v239;
          v19 = v135;
          goto LABEL_389;
        }
      }

      if (v54 <= v16)
      {
        v79 = v51 >> 8;
        v80 = v49 == v51 && v79 > v1017;
        v64 = (v10 + v16);
        v22 = v1023;
        if (v80)
        {
          v110 = v1029 + v79;
          if (*(v1029 + v79) == v44)
          {
            v111 = (v39 + 8);
            v112 = (v110 + 8);
            v113 = &v1030[v39 - v110];
            if (v113 >= v11)
            {
              v114 = v11;
            }

            else
            {
              v114 = v113;
            }

            if (v114 - 7 <= v111)
            {
              v115 = v112;
              v117 = v39 + 8;
              goto LABEL_174;
            }

            if (*v112 == *v111)
            {
              v115 = (v983 + v79);
              v116 = (v39 + 16);
              while (1)
              {
                v117 = v116;
                if (v116 >= v114 - 7)
                {
                  break;
                }

                v119 = *v115;
                v115 += 4;
                v118 = v119;
                v116 += 8;
                if (v119 != *v117)
                {
                  v120 = v117 + (__clz(__rbit64(*v117 ^ v118)) >> 3) - v111;
                  goto LABEL_259;
                }
              }

LABEL_174:
              if (v117 < v114 - 3 && *v115 == *v117)
              {
                v115 += 2;
                v117 = (v117 + 4);
              }

              if (v117 < v114 - 1 && *v115 == *v117)
              {
                ++v115;
                v117 = (v117 + 2);
              }

              if (v117 < v114 && *v115 == *v117)
              {
                v117 = (v117 + 1);
              }

              v120 = v117 - v111;
            }

            else
            {
              v120 = __clz(__rbit64(*v111 ^ *v112)) >> 3;
            }

LABEL_259:
            if (v112 + v120 != v1030)
            {
              v191 = v1000;
              goto LABEL_309;
            }

            v192 = &v111[v120];
            v191 = v1000;
            if (v42 <= v192)
            {
              v194 = (v10 + v16);
              v195 = v192;
              goto LABEL_298;
            }

            if (*v1022 == *v192)
            {
              v193 = &v39[v120 + 16];
              v194 = (v16 + v10 + 8);
              while (1)
              {
                v195 = v193;
                if (v193 >= v42)
                {
                  break;
                }

                v197 = *v194;
                v194 += 4;
                v196 = v197;
                v193 += 8;
                if (v197 != *v195)
                {
                  v198 = v195 + (__clz(__rbit64(*v195 ^ v196)) >> 3) - v192;
                  v191 = v1000;
                  goto LABEL_308;
                }
              }

              v191 = v1000;
LABEL_298:
              if (v195 < v1009 && *v194 == *v195)
              {
                v194 += 2;
                v195 = (v195 + 4);
              }

              if (v195 < v1005 && *v194 == *v195)
              {
                ++v194;
                v195 = (v195 + 2);
              }

              if (v195 < v11 && *v194 == *v195)
              {
                v195 = (v195 + 1);
              }

              v198 = v195 - v192;
            }

            else
            {
              v198 = __clz(__rbit64(*v192 ^ *v1022)) >> 3;
            }

LABEL_308:
            v120 += v198;
LABEL_309:
            v134 = v120 + 8;
            v135 = v53 - (v1028 + v79);
            if (v39 <= a4)
            {
              goto LABEL_315;
            }

            v136 = v39 - 1;
            v203 = (v987 + v79);
            v138 = (v11 - 32);
            while (*v136 == *v203)
            {
              ++v134;
              v139 = v136 - 1;
              if (v136 > a4)
              {
                --v136;
                v80 = v203-- > v191;
                if (v80)
                {
                  continue;
                }
              }

LABEL_314:
              v59 = v139 + 1;
              goto LABEL_356;
            }

LABEL_316:
            v59 = v136 + 1;
            goto LABEL_356;
          }
        }
      }

      else
      {
        v71 = v10 + v54;
        v64 = (v10 + v16);
        v22 = v1023;
        if (*(v10 + v54) == v44)
        {
          v72 = (v39 + 8);
          v73 = (v71 + 8);
          if (v42 > (v39 + 8))
          {
            if (*v73 == *v72)
            {
              v73 = (v991 + v54);
              v74 = v39 + 16;
              while (1)
              {
                v75 = v74;
                if (v74 >= v42)
                {
                  break;
                }

                v77 = *v73;
                v73 += 4;
                v76 = v77;
                v74 += 8;
                if (v77 != *v75)
                {
                  v78 = &v75[__clz(__rbit64(*v75 ^ v76)) >> 3] - v72;
                  goto LABEL_132;
                }
              }

LABEL_80:
              if (v75 < v1009 && *v73 == *v75)
              {
                v73 += 2;
                v75 += 4;
              }

              if (v75 < v1005 && *v73 == *v75)
              {
                ++v73;
                v75 += 2;
              }

              if (v75 < v11 && *v73 == *v75)
              {
                ++v75;
              }

              v78 = v75 - v72;
            }

            else
            {
              v78 = __clz(__rbit64(*v72 ^ *v73)) >> 3;
            }

LABEL_132:
            v134 = v78 + 8;
            v135 = (v39 - v71);
            if (v39 <= a4)
            {
              goto LABEL_315;
            }

            v136 = v39 - 1;
            v137 = (v995 + v54);
            v138 = (v11 - 32);
            while (*v136 == *v137)
            {
              ++v134;
              v139 = v136 - 1;
              if (v136 > a4)
              {
                --v136;
                v80 = v137-- > v1022;
                if (v80)
                {
                  continue;
                }
              }

              goto LABEL_314;
            }

            goto LABEL_316;
          }

          v75 = v39 + 8;
          goto LABEL_80;
        }
      }

      if (v55 <= v16)
      {
        v95 = v52 >> 8;
        v96 = v50 == v52 && v95 > v1017;
        if (!v96 || (v81 = v1029 + v95, *(v1029 + v95) != *v39))
        {
LABEL_67:
          _X13 = &v39[(v39 - a4) >> 8];
          v39 = _X13 + 1;
          _X13 += 257;
          __asm { PRFM            #0, [X13] }

          goto LABEL_24;
        }

        LODWORD(v55) = v95 + v1028;
      }

      else
      {
        v81 = v10 + v55;
        if (*(v10 + v55) != *v39)
        {
          goto LABEL_67;
        }
      }

      v59 = v39 + 1;
      v82 = *(v39 + 1);
      v83 = (0xCF1BBCDCB7A56463 * v82) >> v40;
      v84 = (0xCF1BBCDCB7A56463 * v82) >> v1013;
      v85 = *(v6 + 4 * v83);
      v86 = *(v1023 + ((v84 >> 6) & 0x3FFFFFFFFFFFFFCLL));
      *(v6 + 4 * v83) = v56;
      if (v85 > v16)
      {
        v87 = v10 + v85;
        if (*(v10 + v85) != v82)
        {
          goto LABEL_94;
        }

        v88 = (v39 + 9);
        v89 = (v87 + 8);
        if (v42 > (v39 + 9))
        {
          if (*v89 == *v88)
          {
            v89 = (v991 + v85);
            v90 = v39 + 17;
            while (1)
            {
              v91 = v90;
              if (v90 >= v42)
              {
                break;
              }

              v93 = *v89;
              v89 += 4;
              v92 = v93;
              v90 += 8;
              if (v93 != *v91)
              {
                v94 = &v91[__clz(__rbit64(*v91 ^ v92)) >> 3] - v88;
                goto LABEL_252;
              }
            }

LABEL_163:
            if (v91 < v1009 && *v89 == *v91)
            {
              v89 += 2;
              v91 += 4;
            }

            if (v91 < v1005 && *v89 == *v91)
            {
              ++v89;
              v91 += 2;
            }

            if (v91 < v11 && *v89 == *v91)
            {
              ++v91;
            }

            v94 = v91 - v88;
          }

          else
          {
            v94 = __clz(__rbit64(*v88 ^ *v89)) >> 3;
          }

LABEL_252:
          v134 = v94 + 8;
          v135 = (v59 - v87);
          if (v59 > a4)
          {
            v189 = (v995 + v85);
            while (*v39 == *v189)
            {
              ++v134;
              v190 = v39 - 1;
              if (v39 > a4)
              {
                --v39;
                v80 = v189-- > v64;
                if (v80)
                {
                  continue;
                }
              }

              goto LABEL_257;
            }

LABEL_354:
            v59 = v39 + 1;
            goto LABEL_355;
          }

          goto LABEL_355;
        }

        v91 = v39 + 9;
        goto LABEL_163;
      }

      _ZF = (v84 ^ v86) == 0;
      v99 = v86 >> 8;
      v100 = _ZF && v99 > v1017;
      if (!v100 || (v142 = v99, v143 = (v1029 + v99), *v143 != v82))
      {
LABEL_94:
        v101 = (v39 + 4);
        v102 = (v81 + 4);
        if (v55 < v16)
        {
          if (&v101[v1030 - v102] >= v11)
          {
            v103 = v11;
          }

          else
          {
            v103 = &v101[v1030 - v102];
          }

          if (v103 - 7 <= v101)
          {
            v104 = (v81 + 4);
            v106 = (v39 + 4);
            goto LABEL_140;
          }

          if (*v102 == *v101)
          {
            v104 = (v81 + 12);
            v105 = (v39 + 12);
            while (1)
            {
              v106 = v105;
              if (v105 >= (v103 - 7))
              {
                break;
              }

              v108 = *v104;
              v104 += 4;
              v107 = v108;
              v105 += 8;
              if (v108 != *v106)
              {
                v109 = &v106[__clz(__rbit64(*v106 ^ v107)) >> 3] - v101;
                goto LABEL_195;
              }
            }

LABEL_140:
            if (v106 < v103 - 3 && *v104 == *v106)
            {
              v104 += 2;
              v106 += 4;
            }

            if (v106 < v103 - 1 && *v104 == *v106)
            {
              ++v104;
              v106 += 2;
            }

            if (v106 < v103 && *v104 == *v106)
            {
              ++v106;
            }

            v109 = v106 - v101;
          }

          else
          {
            v109 = __clz(__rbit64(*v101 ^ *v102)) >> 3;
          }

LABEL_195:
          if (v102 + v109 != v1030)
          {
            v154 = v1000;
            goto LABEL_289;
          }

          v155 = &v101[v109];
          v154 = v1000;
          if (v42 > v155)
          {
            if (*v64 == *v155)
            {
              v156 = 0;
              v157 = &v39[v109];
              while (1)
              {
                v158 = &v157[v156 + 12];
                if (v158 >= v42)
                {
                  break;
                }

                v159 = *(v43 + v156);
                v160 = *v158;
                v156 += 8;
                if (v159 != v160)
                {
                  v161 = &v157[v156 + 4 + (__clz(__rbit64(v160 ^ v159)) >> 3)] - v155;
                  goto LABEL_288;
                }
              }

              v187 = (v43 + v156);
              v188 = &v39[v109 + 12 + v156];
LABEL_278:
              if (v188 < v1009 && *v187 == *v188)
              {
                ++v187;
                v188 += 4;
              }

              if (v188 < v1005 && *v187 == *v188)
              {
                v187 = (v187 + 2);
                v188 += 2;
              }

              if (v188 < v11 && *v187 == *v188)
              {
                ++v188;
              }

              v161 = v188 - v155;
            }

            else
            {
              v161 = __clz(__rbit64(*v155 ^ *v64)) >> 3;
            }

LABEL_288:
            v109 += v161;
LABEL_289:
            v134 = v109 + 4;
            v135 = (v53 - v55);
            if (v39 <= a4 || v81 <= v154)
            {
              goto LABEL_315;
            }

            v136 = v39 - 1;
            v202 = (v81 - 1);
            v138 = (v11 - 32);
            while (*v136 == *v202)
            {
              ++v134;
              v139 = v136 - 1;
              if (v136 > a4)
              {
                --v136;
                v80 = v202-- > v154;
                if (v80)
                {
                  continue;
                }
              }

              goto LABEL_314;
            }

            goto LABEL_316;
          }

          v187 = v64;
          v188 = v155;
          goto LABEL_278;
        }

        if (v42 > v101)
        {
          if (*v102 == *v101)
          {
            v102 = (v81 + 12);
            v129 = v39 + 12;
            while (1)
            {
              v130 = v129;
              if (v129 >= v42)
              {
                break;
              }

              v132 = *v102++;
              v131 = v132;
              v129 += 8;
              if (v132 != *v130)
              {
                v133 = &v130[__clz(__rbit64(*v130 ^ v131)) >> 3] - v101;
                goto LABEL_204;
              }
            }

LABEL_151:
            if (v130 < v1009 && *v102 == *v130)
            {
              v102 = (v102 + 4);
              v130 += 4;
            }

            if (v130 < v1005 && *v102 == *v130)
            {
              v102 = (v102 + 2);
              v130 += 2;
            }

            if (v130 < v11 && *v102 == *v130)
            {
              ++v130;
            }

            v133 = v130 - v101;
          }

          else
          {
            v133 = __clz(__rbit64(*v101 ^ *v102)) >> 3;
          }

LABEL_204:
          v134 = v133 + 4;
          v135 = (v39 - v81);
          if (v39 <= a4 || v81 <= v64)
          {
LABEL_315:
            v59 = v39;
            v138 = (v11 - 32);
            goto LABEL_356;
          }

          v136 = v39 - 1;
          v162 = (v81 - 1);
          v138 = (v11 - 32);
          while (*v136 == *v162)
          {
            ++v134;
            v139 = v136 - 1;
            if (v136 > a4)
            {
              --v136;
              v80 = v162-- > v64;
              if (v80)
              {
                continue;
              }
            }

            goto LABEL_314;
          }

          goto LABEL_316;
        }

        v130 = v39 + 4;
        goto LABEL_151;
      }

      v144 = (v39 + 9);
      v145 = (v143 + 1);
      v146 = &v39[v1030 - (v143 + 1) + 9];
      if (v146 >= v11)
      {
        v147 = v11;
      }

      else
      {
        v147 = v146;
      }

      if (v147 - 7 <= v144)
      {
        v148 = v145;
        v150 = v39 + 9;
      }

      else
      {
        if (*v145 != *v144)
        {
          v153 = __clz(__rbit64(*v144 ^ *v145)) >> 3;
          goto LABEL_327;
        }

        v148 = (v983 + v142);
        v149 = (v39 + 17);
        while (1)
        {
          v150 = v149;
          if (v149 >= v147 - 7)
          {
            break;
          }

          v152 = *v148;
          v148 += 4;
          v151 = v152;
          v149 += 8;
          if (v152 != *v150)
          {
            v153 = v150 + (__clz(__rbit64(*v150 ^ v151)) >> 3) - v144;
            goto LABEL_327;
          }
        }
      }

      if (v150 < v147 - 3 && *v148 == *v150)
      {
        v148 += 2;
        v150 = (v150 + 4);
      }

      if (v150 < v147 - 1 && *v148 == *v150)
      {
        ++v148;
        v150 = (v150 + 2);
      }

      if (v150 < v147 && *v148 == *v150)
      {
        v150 = (v150 + 1);
      }

      v153 = v150 - v144;
LABEL_327:
      if (v145 + v153 != v1030)
      {
        goto LABEL_348;
      }

      v204 = &v144[v153];
      if (v42 <= v204)
      {
        v211 = v64;
        v212 = v204;
LABEL_337:
        if (v212 < v1009 && *v211 == *v212)
        {
          ++v211;
          v212 += 4;
        }

        if (v212 < v1005 && *v211 == *v212)
        {
          v211 = (v211 + 2);
          v212 += 2;
        }

        if (v212 < v11 && *v211 == *v212)
        {
          ++v212;
        }

        v210 = v212 - v204;
        goto LABEL_347;
      }

      if (*v64 == *v204)
      {
        v205 = 0;
        v206 = &v39[v153];
        while (1)
        {
          v207 = &v206[v205 + 17];
          if (v207 >= v42)
          {
            break;
          }

          v208 = *(v43 + v205);
          v209 = *v207;
          v205 += 8;
          if (v208 != v209)
          {
            v210 = &v206[v205 + 9 + (__clz(__rbit64(v209 ^ v208)) >> 3)] - v204;
            goto LABEL_347;
          }
        }

        v211 = (v43 + v205);
        v212 = &v39[v153 + 17 + v205];
        goto LABEL_337;
      }

      v210 = __clz(__rbit64(*v204 ^ *v64)) >> 3;
LABEL_347:
      v153 += v210;
LABEL_348:
      v134 = v153 + 8;
      v135 = v56 - (v1028 + v142);
      if (v59 > a4)
      {
        v213 = (v987 + v142);
        while (*v39 == *v213)
        {
          ++v134;
          v190 = v39 - 1;
          if (v39 > a4)
          {
            --v39;
            v80 = v213-- > v1000;
            if (v80)
            {
              continue;
            }
          }

LABEL_257:
          v59 = v190 + 1;
          goto LABEL_355;
        }

        goto LABEL_354;
      }

LABEL_355:
      v138 = (v11 - 32);
LABEL_356:
      v214 = v59 - a4;
      v215 = *(a2 + 24);
      if (v59 <= v138)
      {
        *v215 = *a4;
        v222 = *(a2 + 24);
        if (v214 <= 0x10)
        {
          *(a2 + 24) = v222 + v214;
          v176 = *(a2 + 8);
          goto LABEL_387;
        }

        *(v222 + 16) = *(a4 + 1);
        if (v214 >= 33)
        {
          v223 = v222 + v214;
          v224 = (v222 + 32);
          v225 = (a4 + 48);
          do
          {
            *v224 = *(v225 - 1);
            v226 = *v225;
            v225 += 2;
            v224[1] = v226;
            v224 += 2;
          }

          while (v224 < v223);
        }
      }

      else
      {
        if (a4 <= v138)
        {
          v216 = (v215 + v138 - a4);
          *v215 = *a4;
          if (v138 - a4 >= 17)
          {
            v217 = v215 + 1;
            v218 = (a4 + 32);
            do
            {
              *v217 = *(v218 - 1);
              v219 = *v218;
              v218 += 2;
              v217[1] = v219;
              v217 += 2;
            }

            while (v217 < v216);
          }

          a4 = v138;
          v215 = v216;
        }

        if (a4 >= v59)
        {
          goto LABEL_385;
        }

        v220 = v59 - a4;
        if ((v59 - a4) < 8)
        {
          v227 = v215;
          goto LABEL_384;
        }

        if ((v215 - a4) < 0x20)
        {
          v227 = v215;
          goto LABEL_384;
        }

        if (v220 >= 0x20)
        {
          v221 = v220 & 0xFFFFFFFFFFFFFFE0;
          v228 = (a4 + 16);
          v229 = v215 + 1;
          v230 = v220 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v231 = *v228;
            *(v229 - 1) = *(v228 - 1);
            *v229 = v231;
            v228 += 2;
            v229 += 2;
            v230 -= 32;
          }

          while (v230);
          if (v220 == v221)
          {
            goto LABEL_385;
          }

          if ((v220 & 0x18) == 0)
          {
            a4 += v221;
            v227 = v215 + v221;
            do
            {
LABEL_384:
              v237 = *a4++;
              *v227++ = v237;
            }

            while (a4 != v59);
            goto LABEL_385;
          }
        }

        else
        {
          v221 = 0;
        }

        v232 = v220 & 0xFFFFFFFFFFFFFFF8;
        v227 = v215 + (v220 & 0xFFFFFFFFFFFFFFF8);
        v233 = v221 - (v220 & 0xFFFFFFFFFFFFFFF8);
        v234 = &a4[v221];
        v235 = (v215 + v221);
        do
        {
          v236 = *v234;
          v234 += 8;
          *v235++ = v236;
          v233 += 8;
        }

        while (v233);
        if (v220 != v232)
        {
          a4 += v232;
          goto LABEL_384;
        }
      }

LABEL_385:
      *(a2 + 24) += v214;
      v176 = *(a2 + 8);
      if (v214 >= 0x10000)
      {
        v238 = (v176 - *a2) >> 3;
        *(a2 + 72) = 1;
        *(a2 + 76) = v238;
      }

LABEL_387:
      *(v176 + 4) = v214;
      *v176 = v135 + 3;
      v201 = v134 - 3;
      v20 = v19;
      v19 = v135;
      if (v134 - 3 >= 0x10000)
      {
        goto LABEL_388;
      }

LABEL_389:
      *(v176 + 6) = v201;
      v240 = v176 + 8;
      *(a2 + 8) = v176 + 8;
      a4 = &v59[v134];
      if (&v59[v134] <= v18)
      {
        v241 = *(v10 + (v53 + 2));
        *(v6 + 4 * ((0xCF1BBCDCB7A56463 * v241) >> v40)) = v53 + 2;
        *(v6 + 4 * ((0xCF1BBCDCB7A56463 * *(a4 - 2)) >> v40)) = a4 - 2 - v10;
        *(v8 + 4 * ((0xCF1BBCDCBFA56300 * v241) >> v41)) = v53 + 2;
        *(v8 + 4 * ((0xCF1BBCDCBFA56300 * *(a4 - 1)) >> v41)) = a4 - 1 - v10;
        v242 = v19;
        v243 = v20;
        while (1)
        {
          v19 = v243;
          v243 = v242;
          v245 = a4 - v10;
          v246 = (a4 - v10 - v19);
          v247 = v1029 - v1028;
          if (v246 >= v16)
          {
            v247 = v10;
          }

          if ((v1024 - v246) < 3 || (v248 = v247 + v246, *(v247 + v246) != *a4))
          {
            v20 = v19;
            v19 = v243;
            break;
          }

          if (v246 >= v16)
          {
            v249 = v11;
          }

          else
          {
            v249 = v1030;
          }

          v250 = (a4 + 4);
          v251 = (v248 + 4);
          v252 = v249 + a4 - v248;
          if (v252 >= v11)
          {
            v252 = v11;
          }

          if (v252 - 7 <= v250)
          {
            v254 = v251;
            v256 = a4 + 4;
            v253 = v11 - 32;
          }

          else
          {
            v253 = v11 - 32;
            if (*v251 != *v250)
            {
              v259 = __clz(__rbit64(*v250 ^ *v251)) >> 3;
              goto LABEL_419;
            }

            v254 = (v247 + v246 + 12);
            v255 = (a4 + 12);
            while (1)
            {
              v256 = v255;
              if (v255 >= (v252 - 7))
              {
                break;
              }

              v258 = *v254;
              v254 += 4;
              v257 = v258;
              v255 += 8;
              if (v258 != *v256)
              {
                v259 = v256 + (__clz(__rbit64(*v256 ^ v257)) >> 3) - v250;
                goto LABEL_419;
              }
            }
          }

          if (v256 < (v252 - 3) && *v254 == *v256)
          {
            v254 += 2;
            v256 = (v256 + 4);
          }

          if (v256 < (v252 - 1) && *v254 == *v256)
          {
            ++v254;
            v256 = (v256 + 2);
          }

          if (v256 < v252 && *v254 == *v256)
          {
            v256 = (v256 + 1);
          }

          v259 = v256 - v250;
LABEL_419:
          if ((v251 + v259) == v249)
          {
            v261 = &v250[v259];
            if (v42 > v261)
            {
              if (*v64 == *v261)
              {
                v262 = 0;
                v263 = &a4[v259];
                while (1)
                {
                  v264 = &v263[v262 + 12];
                  if (v264 >= v42)
                  {
                    break;
                  }

                  v265 = *(v43 + v262);
                  v266 = *v264;
                  v262 += 8;
                  if (v265 != v266)
                  {
                    v267 = &v263[v262 + 4 + (__clz(__rbit64(v266 ^ v265)) >> 3)] - v261;
                    goto LABEL_443;
                  }
                }

                v268 = (v43 + v262);
                v269 = &a4[v259 + 12 + v262];
LABEL_433:
                if (v269 < v1009 && *v268 == *v269)
                {
                  ++v268;
                  v269 += 4;
                }

                if (v269 < v1005 && *v268 == *v269)
                {
                  v268 = (v268 + 2);
                  v269 += 2;
                }

                if (v269 < v11 && *v268 == *v269)
                {
                  ++v269;
                }

                v267 = v269 - v261;
              }

              else
              {
                v267 = __clz(__rbit64(*v261 ^ *v64)) >> 3;
              }

LABEL_443:
              v259 += v267;
              if (a4 > v253)
              {
                goto LABEL_422;
              }

LABEL_421:
              **(a2 + 24) = *a4;
              v240 = *(a2 + 8);
              goto LABEL_422;
            }

            v268 = v64;
            v269 = v261;
            goto LABEL_433;
          }

          if (a4 <= v253)
          {
            goto LABEL_421;
          }

LABEL_422:
          *(v240 + 4) = 0;
          *v240 = 1;
          if (v259 + 1 >= 0x10000)
          {
            v260 = (v240 - *a2) >> 3;
            *(a2 + 72) = 2;
            *(a2 + 76) = v260;
          }

          *(v240 + 6) = v259 + 1;
          v240 += 8;
          v244 = *a4;
          *(v8 + 4 * ((0xCF1BBCDCBFA56300 * *a4) >> v41)) = v245;
          *(v6 + 4 * ((0xCF1BBCDCB7A56463 * v244) >> v40)) = v245;
          a4 += v259 + 4;
          *(a2 + 8) = v240;
          v242 = v19;
          v20 = v243;
          v39 = a4;
          if (a4 > v18)
          {
            goto LABEL_24;
          }
        }
      }

      v39 = a4;
LABEL_24:
      if (v39 >= v18)
      {
        goto LABEL_1755;
      }
    }
  }

LABEL_1756:
  *a3 = v19;
  a3[1] = v20;
  return v11 - a4;
}