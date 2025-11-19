uint64_t w16_sample_cmyk64(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *(result + 40);
  v7 = *(result + 176);
  v104 = *(result + 80);
  v107 = *(result + 88);
  v117 = *(result + 120);
  v118 = *(result + 112);
  v8 = (*(result + 152) - 4);
  v108 = *(result + 144) - 1;
  v9 = *(result + 260) - 1;
  v115 = *(result + 24);
  v113 = *(result + 32);
  v10 = *(result + 256);
  v103 = *(result + 188);
  v110 = *(result + 28);
  v111 = v6 + (v9 * v110) + 2 * (v10 - 1);
  v116 = v113 + (v9 * v115) + 8 * v10 - 16;
  v105 = *(result + 72);
  v106 = *(result + 64);
  v112 = v6;
  v114 = result;
  while (1)
  {
    if (a3 >= v105)
    {
      if (a3 <= v107)
      {
        v21 = (a3 >> 22) & 0x3C0;
        v22 = 0x3FFFFFFF;
        v23 = a3;
        v14 = a4;
        v15 = v106;
      }

      else
      {
        v17 = *(result + 216);
        v18 = *(result + 224) + v107;
        v19 = v18 - a3 + (v17 >> 1);
        v14 = a4;
        v15 = v106;
        if (v19 < 1)
        {
          goto LABEL_37;
        }

        if (v19 >= v17)
        {
          LODWORD(v20) = 0x3FFFFFFF;
        }

        else
        {
          v20 = (*(result + 232) * v19) >> 32;
        }

        v22 = v103 | v20;
        v23 = v18 - 0x1000000;
        v21 = 448;
      }
    }

    else
    {
      v11 = *(result + 216);
      v12 = v105 - *(result + 224);
      v13 = a3 - v12 + (v11 >> 1);
      v14 = a4;
      v15 = v106;
      if (v13 < 1)
      {
        goto LABEL_37;
      }

      if (v13 >= v11)
      {
        LODWORD(v16) = 0x3FFFFFFF;
      }

      else
      {
        v16 = (*(result + 232) * v13) >> 32;
      }

      v22 = v103 | v16;
      v23 = v12 + 0x1000000;
      v21 = 512;
    }

    if (a2 >= v15)
    {
      if (a2 <= v104)
      {
        v28 = (a2 >> 26) & 0x3C;
        v27 = a2;
      }

      else
      {
        v29 = *(result + 192);
        v30 = *(result + 200) + v104;
        v31 = v30 - a2 + (v29 >> 1);
        if (v31 < 1)
        {
          goto LABEL_37;
        }

        if (v31 < v29)
        {
          v22 = ((v22 >> 15) * (((*(result + 208) * v31) >> 32) >> 15)) | v103;
        }

        v27 = v30 - 0x1000000;
        v28 = 28;
      }
    }

    else
    {
      v24 = *(result + 192);
      v25 = v15 - *(result + 200);
      v26 = a2 - v25 + (v24 >> 1);
      if (v26 < 1)
      {
        goto LABEL_37;
      }

      if (v26 < v24)
      {
        v22 = ((v22 >> 15) * (((*(result + 208) * v26) >> 32) >> 15)) | v103;
      }

      v27 = v25 + 0x1000000;
      v28 = 32;
    }

    if (v22 >= 0x400000)
    {
      break;
    }

LABEL_37:
    v41 = v14 - 1;
    a2 += v118;
    a3 += v117;
    ++v8;
    *++v108 = 0;
LABEL_38:
    a4 = v41;
    if (!v41)
    {
      return result;
    }
  }

  v32 = v23 >> 32;
  v33 = v27 >> 32;
  v34 = v113 + SHIDWORD(v23) * v115 + 8 * (v27 >> 32);
  v35 = *(result + 32);
  v36 = v116;
  if (v116 >= v34)
  {
    v36 = v34;
  }

  if (v36 < v35)
  {
    v36 = *(result + 32);
  }

  if (v6)
  {
    v37 = v6 + v32 * v110 + 2 * v33;
    v38 = *(result + 40);
    v39 = v111;
    v109 = v37;
    if (v111 >= v37)
    {
      v39 = v37;
    }

    if (v39 >= v38)
    {
      v38 = v39;
    }

    v40 = *v38;
  }

  else
  {
    v109 = 0;
    v40 = 0xFFFF;
  }

  v42 = *v36;
  if (!v7)
  {
    goto LABEL_43;
  }

  v43 = *(v7 + (v28 | v21));
LABEL_62:
  v52 = v43 & 0xF;
  v53 = v43 >> 8;
  v54 = HIBYTE(v43) & 3;
  switch(v52)
  {
    case 1:
      v96 = (v34 + SBYTE1(v43) * v115);
      if (v116 < v96)
      {
        v96 = v116;
      }

      if (v96 < v35)
      {
        v96 = v35;
      }

      v97 = *v96;
      v98 = -1;
      if (v6)
      {
        v99 = (v109 + v53 * v110);
        if (v111 < v99)
        {
          v99 = v111;
        }

        if (v99 < *(result + 40))
        {
          v99 = *(result + 40);
        }

        v98 = *v99;
      }

      v100 = &interpolate_cmyk64 + 16 * v54;
      v101 = v54 + 1;
      v42 = v42 - ((*v100 & v42) >> v101) + ((*v100 & v97) >> v101);
      v85 = v40 - ((*(v100 + 4) & v40) >> v101) + ((v98 & *(v100 + 4)) >> v101);
LABEL_117:
      v40 = v85;
      break;
    case 2:
      v86 = HIWORD(v43) << 56;
      v87 = (v34 + (v86 >> 53));
      if (v116 < v87)
      {
        v87 = v116;
      }

      if (v87 >= v35)
      {
        v35 = v87;
      }

      v88 = *v35;
      v89 = 0xFFFF;
      if (v6)
      {
        v90 = (v109 + (v86 >> 55));
        if (v111 < v90)
        {
          v90 = v111;
        }

        if (v90 < *(result + 40))
        {
          v90 = *(result + 40);
        }

        v89 = *v90;
      }

      v91 = (v43 >> 28) & 3;
      v92 = &interpolate_cmyk64 + 16 * v91;
      v93 = *v92;
      LOBYTE(v91) = v91 + 1;
      v94 = v42 - ((*v92 & v42) >> v91);
      LODWORD(v92) = *(v92 + 4);
      v83 = v40 - ((v92 & v40) >> v91);
      v95 = (v93 & v88) >> v91;
      v85 = (v89 & v92) >> v91;
      v42 = v94 + v95;
LABEL_105:
      LOWORD(v85) = v83 + v85;
      goto LABEL_117;
    case 3:
      v55 = HIWORD(v43) << 56;
      v56 = (v34 + (v55 >> 53));
      if (v116 < v56)
      {
        v56 = v116;
      }

      if (v56 < v35)
      {
        v56 = v35;
      }

      v57 = *v56;
      v58 = v34 + SBYTE1(v43) * v115;
      if (v116 >= v58)
      {
        v59 = (v34 + SBYTE1(v43) * v115);
      }

      else
      {
        v59 = v116;
      }

      if (v59 < v35)
      {
        v59 = v35;
      }

      v60 = *v59;
      v61 = (v58 + (v55 >> 53));
      if (v116 < v61)
      {
        v61 = v116;
      }

      if (v61 >= v35)
      {
        v35 = v61;
      }

      v62 = *v35;
      v63 = 0xFFFF;
      v64 = 0xFFFF;
      v65 = 0xFFFF;
      if (v6)
      {
        v66 = (v109 + (v55 >> 55));
        v67 = *(result + 40);
        if (v111 < v66)
        {
          v66 = v111;
        }

        if (v66 < v67)
        {
          v66 = v67;
        }

        v63 = *v66;
        v68 = v109 + SBYTE1(v43) * v110;
        if (v111 >= v68)
        {
          v69 = (v109 + SBYTE1(v43) * v110);
        }

        else
        {
          v69 = v111;
        }

        if (v69 < v67)
        {
          v69 = v67;
        }

        v64 = *v69;
        v70 = (v68 + (v55 >> 55));
        if (v111 < v70)
        {
          v70 = v111;
        }

        if (v70 < v67)
        {
          v70 = v67;
        }

        v65 = *v70;
      }

      v71 = &interpolate_cmyk64 + 16 * v54;
      v72 = *v71;
      v73 = v54 + 1;
      v74 = v42 - ((*v71 & v42) >> v73);
      LODWORD(v71) = *(v71 + 4);
      v75 = v74 + ((v72 & v60) >> v73);
      v76 = v40 - ((v71 & v40) >> v73) + ((v64 & v71) >> v73);
      v77 = v57 - ((v72 & v57) >> v73) + ((v72 & v62) >> v73);
      v78 = v63 - ((v63 & v71) >> v73) + ((v65 & v71) >> v73);
      v79 = (v43 >> 28) & 3;
      v80 = &interpolate_cmyk64 + 16 * v79;
      v81 = *v80;
      LOBYTE(v79) = v79 + 1;
      v82 = v75 - ((v75 & *v80) >> v79);
      LODWORD(v80) = *(v80 + 4);
      v83 = v76 - ((v76 & v80) >> v79);
      v84 = (v77 & v81) >> v79;
      v85 = (v78 & v80) >> v79;
      v42 = v82 + v84;
      goto LABEL_105;
  }

LABEL_43:
  v44 = 0;
  v45 = v22 >> 22;
  ++v8;
  v102 = v14;
  v46 = v14 - 1;
  a3 += v117;
  v47 = v107 - a3;
  a2 += v118;
  v48 = v104 - a2;
  while (1)
  {
    CMYK64(v8, v42, v40);
    *(v108 + 1 + v44) = v45;
    result = v114;
    v6 = v112;
    if (v46 == v44)
    {
      return result;
    }

    if ((v47 | v48 | (a3 - v105) | (a2 - v106)) < 0)
    {
      v108 += v44 + 1;
      v41 = ~v44 + v102;
      goto LABEL_38;
    }

    v34 = v113 + SHIDWORD(a3) * v115 + 8 * (a2 >> 32);
    v35 = *(v114 + 32);
    v49 = v116;
    if (v116 >= v34)
    {
      v49 = (v113 + SHIDWORD(a3) * v115 + 8 * (a2 >> 32));
    }

    if (v49 < v35)
    {
      v49 = *(v114 + 32);
    }

    if (v112)
    {
      v50 = *(v114 + 40);
      v51 = v111;
      v109 = v112 + SHIDWORD(a3) * v110 + 2 * (a2 >> 32);
      if (v111 >= v109)
      {
        v51 = v112 + SHIDWORD(a3) * v110 + 2 * (a2 >> 32);
      }

      if (v51 >= v50)
      {
        v50 = v51;
      }

      v40 = *v50;
    }

    else
    {
      v40 = 0xFFFF;
    }

    v42 = *v49;
    if (v7)
    {
      v43 = *(v7 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v43 & 0xF) != 0)
      {
        v108 += v44 + 1;
        v14 = ~v44 + v102;
        v22 = -1;
        goto LABEL_62;
      }
    }

    ++v44;
    ++v8;
    a3 += v117;
    v47 -= v117;
    a2 += v118;
    v48 -= v118;
    LOBYTE(v45) = -1;
  }
}

unsigned int *CMYK64(unsigned int *result, unint64_t a2, int a3)
{
  v3 = a3 - (HIWORD(a2) + a2);
  v4 = a3 - (HIWORD(a2) + WORD1(a2));
  v5 = a3 - (HIWORD(a2) + WORD2(a2));
  *result = (((v5 & ~(v5 >> 31)) + (v4 & ~(v4 >> 31)) + 2 * (v3 & ~(v3 >> 31)) + 4 * (v4 & ~(v4 >> 31))) >> 3) | (a3 << 16);
  return result;
}

unsigned int *w16_sample_CMYK64(unsigned int *result, uint64_t a2, uint64_t a3, int a4)
{
  v6 = result;
  v7 = *(result + 5);
  v8 = *(result + 22);
  v105 = *(result + 10);
  v106 = *(result + 11);
  v118 = *(result + 15);
  v119 = *(result + 14);
  v9 = (*(result + 19) - 4);
  v109 = *(result + 18) - 1;
  v10 = result[65] - 1;
  v115 = *(result + 4);
  v116 = result[6];
  v11 = result[64];
  v104 = result[47];
  v111 = result[7];
  v112 = v7 + (v10 * v111) + 2 * (v11 - 1);
  v117 = v115 + (v10 * v116) + 8 * v11 - 16;
  v107 = *(result + 9);
  v108 = *(result + 8);
  v113 = result;
  v114 = v7;
  while (1)
  {
    if (a3 >= v107)
    {
      if (a3 <= v106)
      {
        v22 = (a3 >> 22) & 0x3C0;
        v23 = 0x3FFFFFFF;
        v24 = a3;
        v15 = a4;
        v16 = v108;
      }

      else
      {
        v18 = *(v6 + 27);
        v19 = *(v6 + 28) + v106;
        v20 = v19 - a3 + (v18 >> 1);
        v15 = a4;
        v16 = v108;
        if (v20 < 1)
        {
          goto LABEL_37;
        }

        if (v20 >= v18)
        {
          LODWORD(v21) = 0x3FFFFFFF;
        }

        else
        {
          v21 = (*(v6 + 29) * v20) >> 32;
        }

        v23 = v104 | v21;
        v24 = v19 - 0x1000000;
        v22 = 448;
      }
    }

    else
    {
      v12 = *(v6 + 27);
      v13 = v107 - *(v6 + 28);
      v14 = a3 - v13 + (v12 >> 1);
      v15 = a4;
      v16 = v108;
      if (v14 < 1)
      {
        goto LABEL_37;
      }

      if (v14 >= v12)
      {
        LODWORD(v17) = 0x3FFFFFFF;
      }

      else
      {
        v17 = (*(v6 + 29) * v14) >> 32;
      }

      v23 = v104 | v17;
      v24 = v13 + 0x1000000;
      v22 = 512;
    }

    if (a2 >= v16)
    {
      if (a2 <= v105)
      {
        v29 = (a2 >> 26) & 0x3C;
        v28 = a2;
      }

      else
      {
        v30 = *(v6 + 24);
        v31 = *(v6 + 25) + v105;
        v32 = v31 - a2 + (v30 >> 1);
        if (v32 < 1)
        {
          goto LABEL_37;
        }

        if (v32 < v30)
        {
          v23 = ((v23 >> 15) * (((*(v6 + 26) * v32) >> 32) >> 15)) | v104;
        }

        v28 = v31 - 0x1000000;
        v29 = 28;
      }
    }

    else
    {
      v25 = *(v6 + 24);
      v26 = v16 - *(v6 + 25);
      v27 = a2 - v26 + (v25 >> 1);
      if (v27 < 1)
      {
        goto LABEL_37;
      }

      if (v27 < v25)
      {
        v23 = ((v23 >> 15) * (((*(v6 + 26) * v27) >> 32) >> 15)) | v104;
      }

      v28 = v26 + 0x1000000;
      v29 = 32;
    }

    if (v23 >= 0x400000)
    {
      break;
    }

LABEL_37:
    v42 = v15 - 1;
    a2 += v119;
    a3 += v118;
    ++v9;
    *++v109 = 0;
LABEL_38:
    a4 = v42;
    if (!v42)
    {
      return result;
    }
  }

  v33 = v24 >> 32;
  v34 = v28 >> 32;
  v35 = v115 + SHIDWORD(v24) * v116 + 8 * (v28 >> 32);
  v36 = *(v6 + 4);
  v37 = v117;
  if (v117 >= v35)
  {
    v37 = v35;
  }

  if (v37 < v36)
  {
    v37 = *(v6 + 4);
  }

  if (v7)
  {
    v38 = v7 + v33 * v111 + 2 * v34;
    v39 = *(v6 + 5);
    v40 = v112;
    v110 = v38;
    if (v112 >= v38)
    {
      v40 = v38;
    }

    if (v40 >= v39)
    {
      v39 = v40;
    }

    v41 = bswap32(*v39) >> 16;
  }

  else
  {
    v110 = 0;
    v41 = 0xFFFF;
  }

  v43 = ((bswap32(v37[2]) >> 16) << 32) | ((bswap32(v37[3]) >> 16) << 48) | bswap32(v37[1]) & 0xFFFF0000 | (bswap32(*v37) >> 16);
  if (!v8)
  {
    goto LABEL_43;
  }

  v44 = *(v8 + (v29 | v22));
LABEL_62:
  v53 = v44 & 0xF;
  v54 = HIBYTE(v44) & 3;
  switch(v53)
  {
    case 1:
      v96 = (v35 + SBYTE1(v44) * v116);
      if (v117 < v96)
      {
        v96 = v117;
      }

      if (v96 >= v36)
      {
        v36 = v96;
      }

      v97 = ((bswap32(v36[2]) >> 16) << 32) | ((bswap32(v36[3]) >> 16) << 48) | bswap32(v36[1]) & 0xFFFF0000 | (bswap32(*v36) >> 16);
      v98 = 0xFFFF;
      if (v7)
      {
        v99 = (v110 + SBYTE1(v44) * v111);
        if (v112 < v99)
        {
          v99 = v112;
        }

        if (v99 < *(v6 + 5))
        {
          v99 = *(v6 + 5);
        }

        v98 = bswap32(*v99) >> 16;
      }

      v100 = &interpolate_cmyk64 + 16 * v54;
      v101 = *v100;
      v102 = v54 + 1;
      v94 = v43 - ((*v100 & v43) >> v102);
      LODWORD(v100) = *(v100 + 4);
      v83 = v41 - ((v100 & v41) >> v102);
      v95 = (v101 & v97) >> v102;
      v85 = (v98 & v100) >> v102;
      goto LABEL_116;
    case 2:
      v86 = HIWORD(v44) << 56;
      v87 = (v35 + (v86 >> 53));
      if (v117 < v87)
      {
        v87 = v117;
      }

      if (v87 >= v36)
      {
        v36 = v87;
      }

      v88 = ((bswap32(v36[2]) >> 16) << 32) | ((bswap32(v36[3]) >> 16) << 48) | bswap32(v36[1]) & 0xFFFF0000 | (bswap32(*v36) >> 16);
      v89 = 0xFFFF;
      if (v7)
      {
        v90 = (v110 + (v86 >> 55));
        if (v112 < v90)
        {
          v90 = v112;
        }

        if (v90 < *(v6 + 5))
        {
          v90 = *(v6 + 5);
        }

        v89 = bswap32(*v90) >> 16;
      }

      v91 = (v44 >> 28) & 3;
      v92 = &interpolate_cmyk64 + 16 * v91;
      v93 = *v92;
      LOBYTE(v91) = v91 + 1;
      v94 = v43 - ((*v92 & v43) >> v91);
      LODWORD(v92) = *(v92 + 4);
      v83 = v41 - ((v92 & v41) >> v91);
      v95 = (v93 & v88) >> v91;
      v85 = (v89 & v92) >> v91;
LABEL_116:
      v43 = v94 + v95;
      goto LABEL_117;
    case 3:
      v55 = HIWORD(v44) << 56;
      v56 = (v35 + (v55 >> 53));
      if (v117 < v56)
      {
        v56 = v117;
      }

      if (v56 < v36)
      {
        v56 = v36;
      }

      v57 = ((bswap32(v56[2]) >> 16) << 32) | ((bswap32(v56[3]) >> 16) << 48) | bswap32(v56[1]) & 0xFFFF0000 | (bswap32(*v56) >> 16);
      v58 = v35 + SBYTE1(v44) * v116;
      if (v117 >= v58)
      {
        v59 = (v35 + SBYTE1(v44) * v116);
      }

      else
      {
        v59 = v117;
      }

      if (v59 < v36)
      {
        v59 = v36;
      }

      v60 = ((bswap32(v59[2]) >> 16) << 32) | ((bswap32(v59[3]) >> 16) << 48) | bswap32(v59[1]) & 0xFFFF0000 | (bswap32(*v59) >> 16);
      v61 = (v58 + (v55 >> 53));
      if (v117 < v61)
      {
        v61 = v117;
      }

      if (v61 >= v36)
      {
        v36 = v61;
      }

      v62 = ((bswap32(v36[2]) >> 16) << 32) | ((bswap32(v36[3]) >> 16) << 48) | bswap32(v36[1]) & 0xFFFF0000 | (bswap32(*v36) >> 16);
      v63 = 0xFFFF;
      v64 = 0xFFFF;
      v65 = 0xFFFF;
      if (v7)
      {
        v66 = (v110 + (v55 >> 55));
        v67 = *(v6 + 5);
        if (v112 < v66)
        {
          v66 = v112;
        }

        if (v66 < v67)
        {
          v66 = *(v6 + 5);
        }

        v65 = bswap32(*v66) >> 16;
        v68 = v110 + SBYTE1(v44) * v111;
        if (v112 >= v68)
        {
          v69 = (v110 + SBYTE1(v44) * v111);
        }

        else
        {
          v69 = v112;
        }

        if (v69 < v67)
        {
          v69 = *(v6 + 5);
        }

        v64 = bswap32(*v69) >> 16;
        v70 = (v68 + (v55 >> 55));
        if (v112 < v70)
        {
          v70 = v112;
        }

        if (v70 < v67)
        {
          v70 = *(v6 + 5);
        }

        v63 = bswap32(*v70) >> 16;
      }

      v71 = &interpolate_cmyk64 + 16 * v54;
      v72 = *v71;
      v73 = v54 + 1;
      v74 = v43 - ((*v71 & v43) >> v73);
      LODWORD(v71) = *(v71 + 4);
      v75 = v74 + ((v72 & v60) >> v73);
      v76 = v41 - ((v71 & v41) >> v73) + ((v64 & v71) >> v73);
      v77 = v57 - ((v72 & v57) >> v73) + ((v72 & v62) >> v73);
      v78 = v65 - ((v65 & v71) >> v73) + ((v63 & v71) >> v73);
      v79 = (v44 >> 28) & 3;
      v80 = &interpolate_cmyk64 + 16 * v79;
      v81 = *v80;
      LOBYTE(v79) = v79 + 1;
      v82 = v75 - ((v75 & *v80) >> v79);
      LODWORD(v80) = *(v80 + 4);
      v83 = v76 - ((v76 & v80) >> v79);
      v84 = (v77 & v81) >> v79;
      v85 = (v78 & v80) >> v79;
      v43 = v82 + v84;
LABEL_117:
      v41 = (v83 + v85);
      break;
  }

LABEL_43:
  v45 = 0;
  v46 = v23 >> 22;
  ++v9;
  v103 = v15;
  v47 = v15 - 1;
  a3 += v118;
  v48 = v106 - a3;
  a2 += v119;
  v49 = v105 - a2;
  while (1)
  {
    result = CMYK64(v9, v43, v41);
    *(v109 + 1 + v45) = v46;
    v6 = v113;
    v7 = v114;
    if (v47 == v45)
    {
      return result;
    }

    if ((v48 | v49 | (a3 - v107) | (a2 - v108)) < 0)
    {
      v109 += v45 + 1;
      v42 = ~v45 + v103;
      goto LABEL_38;
    }

    v35 = v115 + SHIDWORD(a3) * v116 + 8 * (a2 >> 32);
    v36 = *(v113 + 4);
    v50 = v117;
    if (v117 >= v35)
    {
      v50 = (v115 + SHIDWORD(a3) * v116 + 8 * (a2 >> 32));
    }

    if (v50 < v36)
    {
      v50 = *(v113 + 4);
    }

    if (v114)
    {
      v51 = *(v113 + 5);
      v52 = v112;
      v110 = v114 + SHIDWORD(a3) * v111 + 2 * (a2 >> 32);
      if (v112 >= v110)
      {
        v52 = v114 + SHIDWORD(a3) * v111 + 2 * (a2 >> 32);
      }

      if (v52 >= v51)
      {
        v51 = v52;
      }

      v41 = bswap32(*v51) >> 16;
    }

    else
    {
      v41 = 0xFFFF;
    }

    v43 = ((bswap32(v50[2]) >> 16) << 32) | ((bswap32(v50[3]) >> 16) << 48) | bswap32(v50[1]) & 0xFFFF0000 | (bswap32(*v50) >> 16);
    if (v8)
    {
      v44 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v44 & 0xF) != 0)
      {
        v109 += v45 + 1;
        v15 = ~v45 + v103;
        v23 = -1;
        goto LABEL_62;
      }
    }

    ++v45;
    ++v9;
    a3 += v118;
    v48 -= v118;
    a2 += v119;
    v49 -= v119;
    LOBYTE(v46) = -1;
  }
}

uint64_t w16_sample_rgba64(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v6 = *(result + 72);
  v7 = *(result + 88);
  v75 = *(result + 80);
  v8 = *(result + 112);
  v9 = *(result + 120);
  v73 = *(result + 188);
  v10 = *(result + 152) - 4;
  v11 = *(result + 144) - 1;
  v12 = *(result + 32);
  if (*(result + 40))
  {
    v13 = 0;
  }

  else
  {
    v13 = 0xFFFF000000000000;
  }

  v14 = v12 + ((*(result + 260) - 1) * v4) + 8 * *(result + 256) - 8;
  v74 = *(result + 64);
  while (1)
  {
LABEL_5:
    if (a3 >= v6)
    {
      if (a3 <= v7)
      {
        v23 = (a3 >> 22) & 0x3C0;
        v24 = 0x3FFFFFFF;
        HIDWORD(v25) = HIDWORD(a3);
      }

      else
      {
        v19 = *(result + 216);
        v20 = *(result + 224) + v7;
        v21 = v20 - a3 + (v19 >> 1);
        if (v21 < 1)
        {
          goto LABEL_37;
        }

        if (v21 >= v19)
        {
          LODWORD(v22) = 0x3FFFFFFF;
        }

        else
        {
          v22 = (*(result + 232) * v21) >> 32;
        }

        v24 = v73 | v22;
        v25 = v20 - 0x1000000;
        v23 = 448;
      }
    }

    else
    {
      v15 = *(result + 216);
      v16 = v6 - *(result + 224);
      v17 = a3 - v16 + (v15 >> 1);
      if (v17 < 1)
      {
        goto LABEL_37;
      }

      if (v17 >= v15)
      {
        LODWORD(v18) = 0x3FFFFFFF;
      }

      else
      {
        v18 = (*(result + 232) * v17) >> 32;
      }

      v24 = v73 | v18;
      v25 = v16 + 0x1000000;
      v23 = 512;
    }

    if (a2 >= v74)
    {
      break;
    }

    v26 = *(result + 192);
    v27 = v74 - *(result + 200);
    v28 = a2 - v27 + (v26 >> 1);
    if (v28 >= 1)
    {
      if (v28 < v26)
      {
        v24 = ((v24 >> 15) * (((*(result + 208) * v28) >> 32) >> 15)) | v73;
      }

      v29 = v27 + 0x1000000;
      v30 = 32;
      goto LABEL_29;
    }

LABEL_37:
    --a4;
    a2 += v8;
    a3 += v9;
    v10 += 4;
    *++v11 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v75)
  {
    v30 = (a2 >> 26) & 0x3C;
    v29 = a2;
    goto LABEL_29;
  }

  v31 = *(result + 192);
  v32 = *(result + 200) + v75;
  v33 = v32 - a2 + (v31 >> 1);
  if (v33 < 1)
  {
    goto LABEL_37;
  }

  if (v33 < v31)
  {
    v24 = ((v24 >> 15) * (((*(result + 208) * v33) >> 32) >> 15)) | v73;
  }

  v29 = v32 - 0x1000000;
  v30 = 28;
LABEL_29:
  if (v24 < 0x400000)
  {
    goto LABEL_37;
  }

  v34 = v12 + SHIDWORD(v25) * v4;
  v35 = v29 >> 32;
  v36 = v34 + 8 * v35;
  v37 = *(result + 32);
  if (v14 >= v36)
  {
    v38 = (v34 + 8 * v35);
  }

  else
  {
    v38 = v14;
  }

  if (v38 < v37)
  {
    v38 = *(result + 32);
  }

  v39 = *v38;
  if (!v5)
  {
    goto LABEL_39;
  }

  v40 = *(v5 + (v30 | v23));
LABEL_53:
  v48 = v40 & 0xF;
  v49 = HIBYTE(v40) & 3;
  switch(v48)
  {
    case 1:
      v70 = (v36 + SBYTE1(v40) * v4);
      if (v14 < v70)
      {
        v70 = v14;
      }

      if (v70 < v37)
      {
        v70 = v37;
      }

      v71 = interpolate_16161616_21862[v49];
      v72 = v49 + 1;
      v64 = v39 - ((v71 & v39) >> v72);
      v69 = (v71 & *v70) >> v72;
LABEL_81:
      v39 = v64 + v69;
      break;
    case 2:
      v66 = (v36 + ((HIWORD(v40) << 56) >> 53));
      if (v14 < v66)
      {
        v66 = v14;
      }

      if (v66 < v37)
      {
        v66 = v37;
      }

      v67 = (v40 >> 28) & 3;
      v68 = interpolate_16161616_21862[v67];
      v63 = v67 + 1;
      v64 = v39 - ((v68 & v39) >> v63);
      v65 = v68 & *v66;
LABEL_75:
      v69 = v65 >> v63;
      goto LABEL_81;
    case 3:
      v50 = HIWORD(v40) << 56;
      v51 = (v36 + (v50 >> 53));
      if (v14 < v51)
      {
        v51 = v14;
      }

      if (v51 < v37)
      {
        v51 = v37;
      }

      v52 = *v51;
      v53 = v36 + SBYTE1(v40) * v4;
      if (v14 >= v53)
      {
        v54 = (v36 + SBYTE1(v40) * v4);
      }

      else
      {
        v54 = v14;
      }

      if (v54 < v37)
      {
        v54 = v37;
      }

      v55 = *v54;
      v56 = (v53 + (v50 >> 53));
      if (v14 < v56)
      {
        v56 = v14;
      }

      if (v56 < v37)
      {
        v56 = v37;
      }

      v57 = interpolate_16161616_21862[v49];
      v58 = v49 + 1;
      v59 = v39 - ((v57 & v39) >> v58) + ((v57 & v55) >> v58);
      v60 = v52 - ((v57 & v52) >> v58) + ((v57 & *v56) >> v58);
      v61 = (v40 >> 28) & 3;
      v62 = interpolate_16161616_21862[v61];
      v63 = v61 + 1;
      v64 = v59 - ((v59 & v62) >> v63);
      v65 = v60 & v62;
      goto LABEL_75;
  }

LABEL_39:
  v41 = 0;
  v42 = 0;
  v43 = v24 >> 22;
  a3 += v9;
  v44 = v7 - a3;
  a2 += v8;
  v45 = v75 - a2;
  while (1)
  {
    *(v10 + 4 + 4 * v42) = ((v39 | v13) >> 32) & 0xFFFF0000 | ((2 * v39 + WORD1(v39) + 4 * WORD1(v39) + ((v39 | v13) >> 32)) >> 3);
    *(v11 + 1 + v42) = v43;
    if (a4 - 1 == v42)
    {
      return result;
    }

    if (((v44 | v45 | (a3 - v6) | (a2 - v74)) & 0x8000000000000000) != 0)
    {
      v11 += v42 + 1;
      v10 = v10 - v41 + 4;
      a4 += ~v42;
      if (a4)
      {
        goto LABEL_5;
      }

      return result;
    }

    v46 = v12 + SHIDWORD(a3) * v4;
    v36 = v46 + 8 * (a2 >> 32);
    v37 = *(result + 32);
    if (v14 >= v36)
    {
      v47 = (v46 + 8 * (a2 >> 32));
    }

    else
    {
      v47 = v14;
    }

    if (v47 < v37)
    {
      v47 = *(result + 32);
    }

    v39 = *v47;
    if (v5)
    {
      v40 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v40 & 0xF) != 0)
      {
        v11 += v42 + 1;
        v10 = v10 - v41 + 4;
        a4 += ~v42;
        v24 = -1;
        goto LABEL_53;
      }
    }

    ++v42;
    v41 -= 4;
    a3 += v9;
    v44 -= v9;
    a2 += v8;
    v45 -= v8;
    LOBYTE(v43) = -1;
  }
}

uint64_t w16_sample_RGBA64(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v6 = *(result + 72);
  v71 = *(result + 80);
  v72 = *(result + 88);
  v7 = *(result + 112);
  v8 = *(result + 120);
  v69 = *(result + 188);
  v9 = *(result + 152) - 4;
  v10 = *(result + 144) - 1;
  v11 = *(result + 32);
  if (*(result + 40))
  {
    v12 = 0;
  }

  else
  {
    v12 = 0xFFFF000000000000;
  }

  v13 = v11 + ((*(result + 260) - 1) * v4) + 8 * *(result + 256) - 8;
  v70 = *(result + 64);
  while (1)
  {
LABEL_5:
    if (a3 >= v6)
    {
      if (a3 <= v72)
      {
        v22 = (a3 >> 22) & 0x3C0;
        v23 = 0x3FFFFFFF;
        HIDWORD(v24) = HIDWORD(a3);
        v25 = v70;
      }

      else
      {
        v18 = *(result + 216);
        v19 = *(result + 224) + v72;
        v20 = v19 - a3 + (v18 >> 1);
        if (v20 < 1)
        {
          goto LABEL_37;
        }

        if (v20 >= v18)
        {
          LODWORD(v21) = 0x3FFFFFFF;
        }

        else
        {
          v21 = (*(result + 232) * v20) >> 32;
        }

        v25 = v70;
        v23 = v69 | v21;
        v24 = v19 - 0x1000000;
        v22 = 448;
      }
    }

    else
    {
      v14 = *(result + 216);
      v15 = v6 - *(result + 224);
      v16 = a3 - v15 + (v14 >> 1);
      if (v16 < 1)
      {
        goto LABEL_37;
      }

      if (v16 >= v14)
      {
        LODWORD(v17) = 0x3FFFFFFF;
      }

      else
      {
        v17 = (*(result + 232) * v16) >> 32;
      }

      v25 = v70;
      v23 = v69 | v17;
      v24 = v15 + 0x1000000;
      v22 = 512;
    }

    if (a2 >= v25)
    {
      break;
    }

    v26 = *(result + 192);
    v27 = v25 - *(result + 200);
    v28 = a2 - v27 + (v26 >> 1);
    if (v28 >= 1)
    {
      if (v28 < v26)
      {
        v23 = ((v23 >> 15) * (((*(result + 208) * v28) >> 32) >> 15)) | v69;
      }

      v29 = v27 + 0x1000000;
      v30 = 32;
      goto LABEL_29;
    }

LABEL_37:
    --a4;
    a2 += v7;
    a3 += v8;
    v9 += 4;
    *++v10 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v71)
  {
    v30 = (a2 >> 26) & 0x3C;
    v29 = a2;
    goto LABEL_29;
  }

  v31 = *(result + 192);
  v32 = *(result + 200) + v71;
  v33 = v32 - a2 + (v31 >> 1);
  if (v33 < 1)
  {
    goto LABEL_37;
  }

  if (v33 < v31)
  {
    v23 = ((v23 >> 15) * (((*(result + 208) * v33) >> 32) >> 15)) | v69;
  }

  v29 = v32 - 0x1000000;
  v30 = 28;
LABEL_29:
  if (v23 < 0x400000)
  {
    goto LABEL_37;
  }

  v34 = v11 + SHIDWORD(v24) * v4;
  v35 = v29 >> 32;
  v36 = v34 + 8 * v35;
  v37 = *(result + 32);
  if (v13 >= v36)
  {
    v38 = (v34 + 8 * v35);
  }

  else
  {
    v38 = v13;
  }

  if (v38 < v37)
  {
    v38 = *(result + 32);
  }

  v39 = ((bswap32(v38[2]) >> 16) << 32) | ((bswap32(v38[3]) >> 16) << 48) | bswap32(v38[1]) & 0xFFFF0000 | (bswap32(*v38) >> 16);
  if (v5)
  {
    v40 = *(v5 + (v30 | v22));
LABEL_53:
    v48 = v40 & 0xF;
    v49 = HIBYTE(v40) & 3;
    switch(v48)
    {
      case 1:
        v67 = (v36 + SBYTE1(v40) * v4);
        if (v13 < v67)
        {
          v67 = v13;
        }

        if (v67 < v37)
        {
          v67 = v37;
        }

        v68 = interpolate_16161616_21862[v49];
        v63 = v39 - ((v68 & v39) >> (v49 + 1));
        v64 = ((((bswap32(v67[2]) >> 16) << 32) | ((bswap32(v67[3]) >> 16) << 48) | bswap32(v67[1]) & 0xFFFF0000 | (bswap32(*v67) >> 16)) & v68) >> (v49 + 1);
LABEL_80:
        v39 = v63 + v64;
        break;
      case 2:
        v65 = (v36 + ((HIWORD(v40) << 56) >> 53));
        if (v13 < v65)
        {
          v65 = v13;
        }

        if (v65 < v37)
        {
          v65 = v37;
        }

        v66 = (v40 >> 28) & 3;
        v39 = v39 - ((interpolate_16161616_21862[v66] & v39) >> (v66 + 1)) + (((((bswap32(v65[2]) >> 16) << 32) | ((bswap32(v65[3]) >> 16) << 48) | bswap32(v65[1]) & 0xFFFF0000 | (bswap32(*v65) >> 16)) & interpolate_16161616_21862[v66]) >> (v66 + 1));
        break;
      case 3:
        v50 = HIWORD(v40) << 56;
        v51 = (v36 + (v50 >> 53));
        if (v13 < v51)
        {
          v51 = v13;
        }

        if (v51 < v37)
        {
          v51 = v37;
        }

        v52 = ((bswap32(v51[2]) >> 16) << 32) | ((bswap32(v51[3]) >> 16) << 48) | bswap32(v51[1]) & 0xFFFF0000 | (bswap32(*v51) >> 16);
        v53 = v36 + SBYTE1(v40) * v4;
        if (v13 >= v53)
        {
          v54 = (v36 + SBYTE1(v40) * v4);
        }

        else
        {
          v54 = v13;
        }

        if (v54 < v37)
        {
          v54 = v37;
        }

        v55 = ((bswap32(v54[2]) >> 16) << 32) | ((bswap32(v54[3]) >> 16) << 48) | bswap32(v54[1]) & 0xFFFF0000 | (bswap32(*v54) >> 16);
        v56 = (v53 + (v50 >> 53));
        if (v13 < v56)
        {
          v56 = v13;
        }

        if (v56 < v37)
        {
          v56 = v37;
        }

        v57 = interpolate_16161616_21862[v49];
        v58 = v49 + 1;
        v59 = v39 - ((v57 & v39) >> v58) + ((v55 & v57) >> v58);
        v60 = v52 - ((v57 & v52) >> v58) + (((((bswap32(v56[2]) >> 16) << 32) | ((bswap32(v56[3]) >> 16) << 48) | bswap32(v56[1]) & 0xFFFF0000 | (bswap32(*v56) >> 16)) & v57) >> v58);
        v61 = (v40 >> 28) & 3;
        v62 = interpolate_16161616_21862[v61];
        LOBYTE(v61) = v61 + 1;
        v63 = v59 - ((v59 & v62) >> v61);
        v64 = (v60 & v62) >> v61;
        goto LABEL_80;
    }
  }

  v41 = 0;
  v42 = 0;
  v43 = v23 >> 22;
  a3 += v8;
  v44 = v72 - a3;
  a2 += v7;
  v45 = v71 - a2;
  while (1)
  {
    *(v9 + 4 + 4 * v42) = ((v39 | v12) >> 32) & 0xFFFF0000 | ((2 * v39 + WORD1(v39) + 4 * WORD1(v39) + ((v39 | v12) >> 32)) >> 3);
    *(v10 + 1 + v42) = v43;
    if (a4 - 1 == v42)
    {
      return result;
    }

    if (((v44 | v45 | (a3 - v6) | (a2 - v70)) & 0x8000000000000000) != 0)
    {
      v10 += v42 + 1;
      v9 = v9 - v41 + 4;
      a4 += ~v42;
      if (a4)
      {
        goto LABEL_5;
      }

      return result;
    }

    v46 = v11 + SHIDWORD(a3) * v4;
    v36 = v46 + 8 * (a2 >> 32);
    v37 = *(result + 32);
    if (v13 >= v36)
    {
      v47 = (v46 + 8 * (a2 >> 32));
    }

    else
    {
      v47 = v13;
    }

    if (v47 < v37)
    {
      v47 = *(result + 32);
    }

    v39 = ((bswap32(v47[2]) >> 16) << 32) | ((bswap32(v47[3]) >> 16) << 48) | bswap32(v47[1]) & 0xFFFF0000 | (bswap32(*v47) >> 16);
    if (v5)
    {
      v40 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v40 & 0xF) != 0)
      {
        v10 += v42 + 1;
        v9 = v9 - v41 + 4;
        a4 += ~v42;
        v23 = -1;
        goto LABEL_53;
      }
    }

    ++v42;
    v41 -= 4;
    a3 += v8;
    v44 -= v8;
    a2 += v7;
    v45 -= v7;
    LOBYTE(v43) = -1;
  }
}

uint64_t w16_sample_rgb48(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 24);
  v6 = *(result + 176);
  v7 = *(result + 72);
  v8 = *(result + 88);
  v70 = *(result + 64);
  v71 = *(result + 80);
  v9 = *(result + 112);
  v10 = *(result + 120);
  v11 = *(result + 152) - 4;
  v12 = *(result + 144) - 1;
  v69 = *(result + 188);
  v13 = v4 + ((*(result + 260) - 1) * v5) + 2 * (3 * *(result + 256)) - 6;
  while (1)
  {
LABEL_2:
    if (a3 >= v7)
    {
      if (a3 <= v8)
      {
        v22 = (a3 >> 22) & 0x3C0;
        v23 = 0x3FFFFFFF;
        HIDWORD(v24) = HIDWORD(a3);
      }

      else
      {
        v18 = *(result + 216);
        v19 = *(result + 224) + v8;
        v20 = v19 - a3 + (v18 >> 1);
        if (v20 < 1)
        {
          goto LABEL_34;
        }

        if (v20 >= v18)
        {
          LODWORD(v21) = 0x3FFFFFFF;
        }

        else
        {
          v21 = (*(result + 232) * v20) >> 32;
        }

        v23 = v69 | v21;
        v24 = v19 - 0x1000000;
        v22 = 448;
      }
    }

    else
    {
      v14 = *(result + 216);
      v15 = v7 - *(result + 224);
      v16 = a3 - v15 + (v14 >> 1);
      if (v16 < 1)
      {
        goto LABEL_34;
      }

      if (v16 >= v14)
      {
        LODWORD(v17) = 0x3FFFFFFF;
      }

      else
      {
        v17 = (*(result + 232) * v16) >> 32;
      }

      v23 = v69 | v17;
      v24 = v15 + 0x1000000;
      v22 = 512;
    }

    if (a2 >= v70)
    {
      break;
    }

    v25 = *(result + 192);
    v26 = v70 - *(result + 200);
    v27 = a2 - v26 + (v25 >> 1);
    if (v27 >= 1)
    {
      if (v27 < v25)
      {
        v23 = ((v23 >> 15) * (((*(result + 208) * v27) >> 32) >> 15)) | v69;
      }

      v28 = v26 + 0x1000000;
      v29 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v9;
    a3 += v10;
    v11 += 4;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v71)
  {
    v29 = (a2 >> 26) & 0x3C;
    v28 = a2;
    goto LABEL_26;
  }

  v30 = *(result + 192);
  v31 = *(result + 200) + v71;
  v32 = v31 - a2 + (v30 >> 1);
  if (v32 < 1)
  {
    goto LABEL_34;
  }

  if (v32 < v30)
  {
    v23 = ((v23 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v69;
  }

  v28 = v31 - 0x1000000;
  v29 = 28;
LABEL_26:
  if (v23 < 0x400000)
  {
    goto LABEL_34;
  }

  v33 = v28 >> 32;
  v34 = v4 + SHIDWORD(v24) * v5;
  v35 = v34 + 6 * v33;
  v36 = *(result + 32);
  if (v13 >= v35)
  {
    v37 = (v34 + 6 * v33);
  }

  else
  {
    v37 = v13;
  }

  if (v37 < v36)
  {
    v37 = *(result + 32);
  }

  v38 = *v37 | (*(v37 + 2) << 32) | 0xFFFF000000000000;
  if (!v6)
  {
    goto LABEL_36;
  }

  v39 = *(v6 + (v29 | v22));
LABEL_50:
  v47 = v39 & 0xF;
  v48 = HIBYTE(v39) & 3;
  switch(v47)
  {
    case 1:
      v66 = (v35 + SBYTE1(v39) * v5);
      if (v13 < v66)
      {
        v66 = v13;
      }

      if (v66 < v36)
      {
        v66 = v36;
      }

      v67 = interpolate_16161616_21862[v48];
      v68 = v48 + 1;
      v62 = v38 - ((v67 & v38) >> v68);
      v65 = ((*v66 | (*(v66 + 2) << 32) | 0xFFFF000000000000) & v67) >> v68;
LABEL_78:
      v38 = v62 + v65;
      break;
    case 2:
      v63 = (v35 + 6 * SBYTE2(v39));
      if (v13 < v63)
      {
        v63 = v13;
      }

      if (v63 < v36)
      {
        v63 = v36;
      }

      v58 = *v63 | (*(v63 + 2) << 32) | 0xFFFF000000000000;
      v64 = (v39 >> 28) & 3;
      v60 = interpolate_16161616_21862[v64];
      v61 = v64 + 1;
      v62 = v38 - ((v60 & v38) >> v61);
LABEL_72:
      v65 = (v58 & v60) >> v61;
      goto LABEL_78;
    case 3:
      v49 = (v35 + 6 * SBYTE2(v39));
      if (v13 < v49)
      {
        v49 = v13;
      }

      if (v49 < v36)
      {
        v49 = v36;
      }

      v50 = *v49 | (*(v49 + 2) << 32) | 0xFFFF000000000000;
      v51 = v35 + SBYTE1(v39) * v5;
      if (v13 >= v51)
      {
        v52 = (v35 + SBYTE1(v39) * v5);
      }

      else
      {
        v52 = v13;
      }

      if (v52 < v36)
      {
        v52 = v36;
      }

      v53 = *v52 | (*(v52 + 2) << 32) | 0xFFFF000000000000;
      v54 = (v51 + 6 * SBYTE2(v39));
      if (v13 < v54)
      {
        v54 = v13;
      }

      if (v54 < v36)
      {
        v54 = v36;
      }

      v55 = interpolate_16161616_21862[v48];
      v56 = v48 + 1;
      v57 = v38 - ((v55 & v38) >> v56) + ((v53 & v55) >> v56);
      v58 = v50 - ((v55 & v50) >> v56) + (((*v54 | (*(v54 + 2) << 32) | 0xFFFF000000000000) & v55) >> v56);
      v59 = (v39 >> 28) & 3;
      v60 = interpolate_16161616_21862[v59];
      v61 = v59 + 1;
      v62 = v57 - ((v57 & v60) >> v61);
      goto LABEL_72;
  }

LABEL_36:
  v40 = 0;
  v41 = 0;
  v42 = v23 >> 22;
  a3 += v10;
  v43 = v8 - a3;
  a2 += v9;
  v44 = v71 - a2;
  while (1)
  {
    *(v11 + 4 + 4 * v41) = HIDWORD(v38) & 0xFFFF0000 | ((2 * v38 + WORD1(v38) + 4 * WORD1(v38) + WORD2(v38)) >> 3);
    *(v12 + 1 + v41) = v42;
    if (a4 - 1 == v41)
    {
      return result;
    }

    if (((v43 | v44 | (a3 - v7) | (a2 - v70)) & 0x8000000000000000) != 0)
    {
      v12 += v41 + 1;
      v11 = v11 - v40 + 4;
      a4 += ~v41;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v45 = v4 + SHIDWORD(a3) * v5;
    v35 = v45 + 6 * SHIDWORD(a2);
    v36 = *(result + 32);
    if (v13 >= v35)
    {
      v46 = (v45 + 6 * SHIDWORD(a2));
    }

    else
    {
      v46 = v13;
    }

    if (v46 < v36)
    {
      v46 = *(result + 32);
    }

    v38 = *v46 | (*(v46 + 2) << 32) | 0xFFFF000000000000;
    if (v6)
    {
      v39 = *(v6 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v39 & 0xF) != 0)
      {
        v12 += v41 + 1;
        v11 = v11 - v40 + 4;
        a4 += ~v41;
        v23 = -1;
        goto LABEL_50;
      }
    }

    ++v41;
    v40 -= 4;
    a3 += v10;
    v43 -= v10;
    a2 += v9;
    v44 -= v9;
    LOBYTE(v42) = -1;
  }
}

uint64_t w16_sample_RGB48(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 24);
  v6 = *(result + 176);
  v7 = *(result + 72);
  v8 = *(result + 88);
  v72 = *(result + 64);
  v73 = *(result + 80);
  v9 = *(result + 112);
  v10 = *(result + 120);
  v11 = *(result + 152) - 4;
  v12 = *(result + 144) - 1;
  v71 = *(result + 188);
  v13 = v4 + ((*(result + 260) - 1) * v5) + 2 * (3 * *(result + 256)) - 6;
  while (1)
  {
LABEL_2:
    if (a3 >= v7)
    {
      if (a3 <= v8)
      {
        v22 = (a3 >> 22) & 0x3C0;
        v23 = 0x3FFFFFFF;
        HIDWORD(v24) = HIDWORD(a3);
        v25 = v72;
        v26 = v73;
      }

      else
      {
        v18 = *(result + 216);
        v19 = *(result + 224) + v8;
        v20 = v19 - a3 + (v18 >> 1);
        if (v20 < 1)
        {
          goto LABEL_34;
        }

        if (v20 >= v18)
        {
          LODWORD(v21) = 0x3FFFFFFF;
        }

        else
        {
          v21 = (*(result + 232) * v20) >> 32;
        }

        v25 = v72;
        v26 = v73;
        v23 = v71 | v21;
        v24 = v19 - 0x1000000;
        v22 = 448;
      }
    }

    else
    {
      v14 = *(result + 216);
      v15 = v7 - *(result + 224);
      v16 = a3 - v15 + (v14 >> 1);
      if (v16 < 1)
      {
        goto LABEL_34;
      }

      if (v16 >= v14)
      {
        LODWORD(v17) = 0x3FFFFFFF;
      }

      else
      {
        v17 = (*(result + 232) * v16) >> 32;
      }

      v25 = v72;
      v26 = v73;
      v23 = v71 | v17;
      v24 = v15 + 0x1000000;
      v22 = 512;
    }

    if (a2 >= v25)
    {
      break;
    }

    v27 = *(result + 192);
    v28 = v25 - *(result + 200);
    v29 = a2 - v28 + (v27 >> 1);
    if (v29 >= 1)
    {
      if (v29 < v27)
      {
        v23 = ((v23 >> 15) * (((*(result + 208) * v29) >> 32) >> 15)) | v71;
      }

      v30 = v28 + 0x1000000;
      v31 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v9;
    a3 += v10;
    v11 += 4;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v26)
  {
    v31 = (a2 >> 26) & 0x3C;
    v30 = a2;
    goto LABEL_26;
  }

  v32 = *(result + 192);
  v33 = *(result + 200) + v26;
  v34 = v33 - a2 + (v32 >> 1);
  if (v34 < 1)
  {
    goto LABEL_34;
  }

  if (v34 < v32)
  {
    v23 = ((v23 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v71;
  }

  v30 = v33 - 0x1000000;
  v31 = 28;
LABEL_26:
  if (v23 < 0x400000)
  {
    goto LABEL_34;
  }

  v35 = v30 >> 32;
  v36 = v4 + SHIDWORD(v24) * v5;
  v37 = v36 + 6 * v35;
  v38 = *(result + 32);
  if (v13 >= v37)
  {
    v39 = (v36 + 6 * v35);
  }

  else
  {
    v39 = v13;
  }

  if (v39 < v38)
  {
    v39 = *(result + 32);
  }

  v40 = (bswap32(*v39) >> 16) | ((bswap32(v39[1]) >> 16) << 16) | ((bswap32(v39[2]) >> 16) << 32) | 0xFFFF000000000000;
  if (!v6)
  {
    goto LABEL_36;
  }

  v41 = *(v6 + (v31 | v22));
LABEL_50:
  v49 = v41 & 0xF;
  v50 = HIBYTE(v41) & 3;
  switch(v49)
  {
    case 1:
      v68 = (v37 + SBYTE1(v41) * v5);
      if (v13 < v68)
      {
        v68 = v13;
      }

      if (v68 < v38)
      {
        v68 = v38;
      }

      v69 = interpolate_16161616_21862[v50];
      v70 = v50 + 1;
      v64 = v40 - ((v69 & v40) >> v70);
      v67 = (((bswap32(*v68) >> 16) | ((bswap32(v68[1]) >> 16) << 16) | ((bswap32(v68[2]) >> 16) << 32) | 0xFFFF000000000000) & v69) >> v70;
LABEL_78:
      v40 = v64 + v67;
      break;
    case 2:
      v65 = (v37 + 6 * SBYTE2(v41));
      if (v13 < v65)
      {
        v65 = v13;
      }

      if (v65 < v38)
      {
        v65 = v38;
      }

      v60 = (bswap32(*v65) >> 16) | ((bswap32(v65[1]) >> 16) << 16) | ((bswap32(v65[2]) >> 16) << 32) | 0xFFFF000000000000;
      v66 = (v41 >> 28) & 3;
      v62 = interpolate_16161616_21862[v66];
      v63 = v66 + 1;
      v64 = v40 - ((v62 & v40) >> v63);
LABEL_72:
      v67 = (v60 & v62) >> v63;
      goto LABEL_78;
    case 3:
      v51 = (v37 + 6 * SBYTE2(v41));
      if (v13 < v51)
      {
        v51 = v13;
      }

      if (v51 < v38)
      {
        v51 = v38;
      }

      v52 = (bswap32(*v51) >> 16) | ((bswap32(v51[1]) >> 16) << 16) | ((bswap32(v51[2]) >> 16) << 32) | 0xFFFF000000000000;
      v53 = v37 + SBYTE1(v41) * v5;
      if (v13 >= v53)
      {
        v54 = (v37 + SBYTE1(v41) * v5);
      }

      else
      {
        v54 = v13;
      }

      if (v54 < v38)
      {
        v54 = v38;
      }

      v55 = (bswap32(*v54) >> 16) | ((bswap32(v54[1]) >> 16) << 16) | ((bswap32(v54[2]) >> 16) << 32) | 0xFFFF000000000000;
      v56 = (v53 + 6 * SBYTE2(v41));
      if (v13 < v56)
      {
        v56 = v13;
      }

      if (v56 < v38)
      {
        v56 = v38;
      }

      v57 = interpolate_16161616_21862[v50];
      v58 = v50 + 1;
      v59 = v40 - ((v57 & v40) >> v58) + ((v55 & v57) >> v58);
      v60 = v52 - ((v57 & v52) >> v58) + ((((bswap32(*v56) >> 16) | ((bswap32(v56[1]) >> 16) << 16) | ((bswap32(v56[2]) >> 16) << 32) | 0xFFFF000000000000) & v57) >> v58);
      v61 = (v41 >> 28) & 3;
      v62 = interpolate_16161616_21862[v61];
      v63 = v61 + 1;
      v64 = v59 - ((v59 & v62) >> v63);
      goto LABEL_72;
  }

LABEL_36:
  v42 = 0;
  v43 = 0;
  v44 = v23 >> 22;
  a3 += v10;
  v45 = v8 - a3;
  a2 += v9;
  v46 = v73 - a2;
  while (1)
  {
    *(v11 + 4 + 4 * v43) = HIDWORD(v40) & 0xFFFF0000 | ((2 * v40 + WORD1(v40) + 4 * WORD1(v40) + WORD2(v40)) >> 3);
    *(v12 + 1 + v43) = v44;
    if (a4 - 1 == v43)
    {
      return result;
    }

    if (((v45 | v46 | (a3 - v7) | (a2 - v72)) & 0x8000000000000000) != 0)
    {
      v12 += v43 + 1;
      v11 = v11 - v42 + 4;
      a4 += ~v43;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v47 = v4 + SHIDWORD(a3) * v5;
    v37 = v47 + 6 * SHIDWORD(a2);
    v38 = *(result + 32);
    if (v13 >= v37)
    {
      v48 = (v47 + 6 * SHIDWORD(a2));
    }

    else
    {
      v48 = v13;
    }

    if (v48 < v38)
    {
      v48 = *(result + 32);
    }

    v40 = (bswap32(*v48) >> 16) | ((bswap32(v48[1]) >> 16) << 16) | ((bswap32(v48[2]) >> 16) << 32) | 0xFFFF000000000000;
    if (v6)
    {
      v41 = *(v6 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v41 & 0xF) != 0)
      {
        v12 += v43 + 1;
        v11 = v11 - v42 + 4;
        a4 += ~v43;
        v23 = -1;
        goto LABEL_50;
      }
    }

    ++v43;
    v42 -= 4;
    a3 += v10;
    v45 -= v10;
    a2 += v9;
    v46 -= v9;
    LOBYTE(v44) = -1;
  }
}

uint64_t w16_sample_w16(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 24);
  v133 = *(result + 28);
  v5 = *(result + 112);
  v6 = *(result + 48);
  v7 = *(result + 56);
  if (v6)
  {
    v132 = *(result + 112);
    if (v5 > v6)
    {
      v132 = v5 % v6;
    }
  }

  else
  {
    v132 = 0;
  }

  v8 = *(result + 176);
  v9 = *(result + 40);
  v134 = *(result + 32);
  v10 = *(result + 120);
  if (v7)
  {
    v11 = v10 % v7;
    if (v10 <= v7)
    {
      v11 = *(result + 120);
    }

    v131 = v11;
  }

  else
  {
    v131 = 0;
  }

  v127 = *(result + 80);
  v129 = *(result + 88);
  v12 = *(result + 152) - 4;
  v13 = *(result + 144) - 1;
  if (v9)
  {
    v14 = 0;
  }

  else
  {
    v14 = -65536;
  }

  v15 = *(result + 260) - 1;
  v16 = *(result + 256);
  v126 = *(result + 188);
  v17 = v9 + (v15 * v133) + 2 * (v16 - 1);
  v18 = v134 + (v15 * v4) + 2 * v16 - 2;
  v128 = *(result + 64);
  v130 = *(result + 72);
  do
  {
    if (a3 >= v130)
    {
      v22 = a4;
      if (a3 <= v129)
      {
        v28 = 0;
        v29 = (a3 >> 22) & 0x3C0;
        v30 = 0x3FFFFFFF;
        v31 = a3;
      }

      else
      {
        v24 = *(result + 216);
        v25 = *(result + 224) + v129;
        v26 = v25 - a3 + (v24 >> 1);
        if (v26 < 1)
        {
          goto LABEL_60;
        }

        if (v26 >= v24)
        {
          LODWORD(v27) = 0x3FFFFFFF;
        }

        else
        {
          v27 = (*(result + 232) * v26) >> 32;
        }

        v30 = v126 | v27;
        v31 = v25 - 0x1000000;
        v28 = a3 - (v25 - 0x1000000);
        v29 = 448;
      }
    }

    else
    {
      v19 = *(result + 216);
      v20 = v130 - *(result + 224);
      v21 = a3 - v20 + (v19 >> 1);
      v22 = a4;
      if (v21 < 1)
      {
        goto LABEL_60;
      }

      if (v21 >= v19)
      {
        LODWORD(v23) = 0x3FFFFFFF;
      }

      else
      {
        v23 = (*(result + 232) * v21) >> 32;
      }

      v30 = v126 | v23;
      v31 = v20 + 0x1000000;
      v28 = a3 - (v20 + 0x1000000);
      v29 = 512;
    }

    if (a2 >= v128)
    {
      if (a2 <= v127)
      {
        v36 = 0;
        v37 = (a2 >> 26) & 0x3C;
        v35 = a2;
      }

      else
      {
        v38 = *(result + 192);
        v39 = *(result + 200) + v127;
        v40 = v39 - a2 + (v38 >> 1);
        if (v40 < 1)
        {
          goto LABEL_60;
        }

        if (v40 < v38)
        {
          v30 = ((v30 >> 15) * (((*(result + 208) * v40) >> 32) >> 15)) | v126;
        }

        v35 = v39 - 0x1000000;
        v36 = a2 - (v39 - 0x1000000);
        v37 = 28;
      }
    }

    else
    {
      v32 = *(result + 192);
      v33 = v128 - *(result + 200);
      v34 = a2 - v33 + (v32 >> 1);
      if (v34 < 1)
      {
        goto LABEL_60;
      }

      if (v34 < v32)
      {
        v30 = ((v30 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v126;
      }

      v35 = v33 + 0x1000000;
      v36 = a2 - (v33 + 0x1000000);
      v37 = 32;
    }

    if (v30 >= 0x400000)
    {
      if (v6)
      {
        v41 = (v7 & ((v31 % v7) >> 63)) + v31 % v7;
        v42 = (v6 & ((v35 % v6) >> 63)) + v35 % v6;
        if (v41 >= v7)
        {
          v43 = v7;
        }

        else
        {
          v43 = 0;
        }

        v31 = v41 - v43;
        if (v42 >= v6)
        {
          v44 = v6;
        }

        else
        {
          v44 = 0;
        }

        v35 = v42 - v44;
        v28 += v31;
        v36 += v35;
      }

      v45 = v31 >> 32;
      v46 = v134 + SHIDWORD(v31) * v4;
      v47 = (v35 >> 31) & 0xFFFFFFFFFFFFFFFELL;
      v48 = (v46 + v47);
      v49 = *(result + 32);
      if (v18 >= v46 + v47)
      {
        v50 = (v46 + v47);
      }

      else
      {
        v50 = v18;
      }

      if (v50 < v49)
      {
        v50 = *(result + 32);
      }

      v51 = *v50;
      if (v9)
      {
        v52 = v9 + v45 * v133 + v47;
        v53 = *(result + 40);
        if (v17 >= v52)
        {
          v54 = v52;
        }

        else
        {
          v54 = v17;
        }

        if (v54 >= v53)
        {
          v53 = v54;
        }

        v51 |= *v53 << 16;
        if (!v8)
        {
          while (1)
          {
            while (1)
            {
LABEL_65:
              *(v12 + 4) = v51 | v14;
              *(v13 + 1) = v30 >> 22;
              if (v22 == 1)
              {
                return result;
              }

              v57 = v22;
              v58 = 0;
              a2 += v5;
              v59 = v127 - a2;
              a3 += v10;
              v60 = v129 - a3;
              v61 = -4;
              while (1)
              {
                if ((v60 | v59 | (a3 - v130) | (a2 - v128)) < 0)
                {
                  v13 += v58 + 1;
                  v12 -= v61;
                  v55 = ~v58 + v57;
                  goto LABEL_61;
                }

                if (v6)
                {
                  v62 = (v7 & ((v28 + v131) >> 63)) + v28 + v131;
                  v63 = (v6 & ((v36 + v132) >> 63)) + v36 + v132;
                  if (v62 >= v7)
                  {
                    v64 = v7;
                  }

                  else
                  {
                    v64 = 0;
                  }

                  v28 = v62 - v64;
                  if (v63 >= v6)
                  {
                    v65 = v6;
                  }

                  else
                  {
                    v65 = 0;
                  }

                  v36 = v63 - v65;
                  v66 = v28;
                  v67 = v36;
                }

                else
                {
                  v66 = a3;
                  v67 = a2;
                }

                v68 = v66 >> 32;
                v69 = (v67 >> 31) & 0xFFFFFFFFFFFFFFFELL;
                v48 = (v134 + SHIDWORD(v66) * v4 + v69);
                v49 = *(result + 32);
                if (v18 >= v48)
                {
                  v70 = v48;
                }

                else
                {
                  v70 = v18;
                }

                if (v70 < v49)
                {
                  v70 = *(result + 32);
                }

                v51 = *v70;
                if (v9)
                {
                  v52 = v9 + v68 * v133 + v69;
                  v71 = *(result + 40);
                  if (v17 >= v52)
                  {
                    v72 = v52;
                  }

                  else
                  {
                    v72 = v17;
                  }

                  if (v72 >= v71)
                  {
                    v71 = v72;
                  }

                  v51 |= *v71 << 16;
                }

                if (v8)
                {
                  v56 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
                  if ((v56 & 0xF) != 0)
                  {
                    break;
                  }
                }

                *(v12 + 4 * v58 + 8) = v51 | v14;
                *(v13 + v58++ + 2) = -1;
                v61 -= 4;
                a2 += v5;
                v59 -= v5;
                a3 += v10;
                v60 -= v10;
                if (v57 - 1 == v58)
                {
                  return result;
                }
              }

              v13 += v58 + 1;
              v12 -= v61;
              v22 = ~v58 + v57;
              v30 = -1;
LABEL_95:
              v73 = v56 & 0xF;
              v74 = v56 >> 8;
              v75 = HIBYTE(v56) & 3;
              if (v73 != 1)
              {
                break;
              }

              LODWORD(v115) = SBYTE1(v56);
              if (v6)
              {
                v116 = v74 << 56;
                v117 = v28 + (v116 >> 24);
                v118 = v7 & (v117 >> 63);
                if (v118 + v117 >= v7)
                {
                  v119 = v7;
                }

                else
                {
                  v119 = 0;
                }

                v115 = (v118 + (v116 >> 24) - v119) >> 32;
              }

              v120 = (v48 + v115 * v4);
              if (v18 < v120)
              {
                v120 = v18;
              }

              if (v120 < v49)
              {
                v120 = v49;
              }

              v121 = *v120;
              if (v9)
              {
                v122 = (v52 + v115 * v133);
                if (v17 < v122)
                {
                  v122 = v17;
                }

                if (v122 < *(result + 40))
                {
                  v122 = *(result + 40);
                }

                v121 |= *v122 << 16;
              }

              v123 = interpolate_1616[v75];
              v113 = v51 - ((v123 & v51) >> (v75 + 1));
              v114 = (v123 & v121) >> (v75 + 1);
LABEL_167:
              v51 = v113 + v114;
            }

            if (v73 == 2)
            {
              v103 = SBYTE2(v56);
              if (v6)
              {
                v104 = HIWORD(v56) << 56;
                v105 = v36 + (v104 >> 24);
                v106 = v6 & (v105 >> 63);
                if (v106 + v105 >= v6)
                {
                  v107 = v6;
                }

                else
                {
                  v107 = 0;
                }

                v103 = (v106 + (v104 >> 24) - v107) >> 32;
              }

              v108 = &v48[v103];
              if (v18 < v108)
              {
                v108 = v18;
              }

              if (v108 < v49)
              {
                v108 = v49;
              }

              v109 = *v108;
              if (v9)
              {
                v110 = (v52 + 2 * v103);
                if (v17 < v110)
                {
                  v110 = v17;
                }

                if (v110 < *(result + 40))
                {
                  v110 = *(result + 40);
                }

                v109 |= *v110 << 16;
              }

              v111 = (v56 >> 28) & 3;
              v112 = interpolate_1616[v111];
              LOBYTE(v111) = v111 + 1;
              v113 = v51 - ((v112 & v51) >> v111);
              v114 = (v112 & v109) >> v111;
              goto LABEL_167;
            }

            if (v73 == 3)
            {
              v76 = HIBYTE(v56) & 3;
              v125 = v30;
              v124 = v22;
              LODWORD(v77) = SBYTE1(v56);
              v78 = SBYTE2(v56);
              if (v6)
              {
                v79 = v74 << 56;
                v80 = HIWORD(v56) << 56;
                v81 = v28 + (v79 >> 24);
                v82 = v36 + (v80 >> 24);
                v83 = v7 & (v81 >> 63);
                v84 = v6 & (v82 >> 63);
                v85 = v84 + v82;
                if (v83 + v81 >= v7)
                {
                  v86 = v7;
                }

                else
                {
                  v86 = 0;
                }

                if (v85 >= v6)
                {
                  v87 = v6;
                }

                else
                {
                  v87 = 0;
                }

                v77 = (v83 + (v79 >> 24) - v86) >> 32;
                v78 = (v84 + (v80 >> 24) - v87) >> 32;
              }

              v88 = &v48[v78];
              if (v18 < v88)
              {
                v88 = v18;
              }

              if (v88 < v49)
              {
                v88 = v49;
              }

              v89 = *v88;
              v90 = v48 + v77 * v4;
              if (v18 >= v90)
              {
                v91 = (v48 + v77 * v4);
              }

              else
              {
                v91 = v18;
              }

              if (v91 < v49)
              {
                v91 = v49;
              }

              v92 = *v91;
              v93 = (v90 + 2 * v78);
              if (v18 < v93)
              {
                v93 = v18;
              }

              if (v93 >= v49)
              {
                v49 = v93;
              }

              v94 = *v49;
              if (v9)
              {
                v95 = v78;
                v96 = (v52 + 2 * v78);
                v97 = *(result + 40);
                if (v17 < v96)
                {
                  v96 = v17;
                }

                if (v96 < v97)
                {
                  v96 = *(result + 40);
                }

                v89 |= *v96 << 16;
                v98 = (v52 + v77 * v133);
                if (v17 >= v98)
                {
                  v99 = v98;
                }

                else
                {
                  v99 = v17;
                }

                if (v99 < v97)
                {
                  v99 = *(result + 40);
                }

                v92 |= *v99 << 16;
                v100 = &v98[v95];
                if (v17 < v100)
                {
                  v100 = v17;
                }

                if (v100 < v97)
                {
                  v100 = *(result + 40);
                }

                v94 |= *v100 << 16;
              }

              v101 = interpolate_1616[v76];
              v102 = v51 - ((v101 & v51) >> (v76 + 1)) + ((v101 & v92) >> (v76 + 1));
              v51 = v102 - ((v102 & interpolate_1616[(v56 >> 28) & 3]) >> (((v56 >> 28) & 3) + 1)) + (((v89 - ((v101 & v89) >> (v76 + 1)) + ((v101 & v94) >> (v76 + 1))) & interpolate_1616[(v56 >> 28) & 3]) >> (((v56 >> 28) & 3) + 1));
              v22 = v124;
              v30 = v125;
            }
          }
        }
      }

      else
      {
        v52 = 0;
        if (!v8)
        {
          goto LABEL_65;
        }
      }

      v56 = *(v8 + (v37 | v29));
      goto LABEL_95;
    }

LABEL_60:
    v55 = v22 - 1;
    a2 += v5;
    a3 += v10;
    v12 += 4;
    *++v13 = 0;
LABEL_61:
    a4 = v55;
  }

  while (v55);
  return result;
}

uint64_t w16_sample_W16(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 24);
  v135 = *(result + 28);
  v5 = *(result + 112);
  v6 = *(result + 48);
  v7 = *(result + 56);
  if (v6)
  {
    v134 = *(result + 112);
    if (v5 > v6)
    {
      v134 = v5 % v6;
    }
  }

  else
  {
    v134 = 0;
  }

  v8 = *(result + 176);
  v9 = *(result + 40);
  v136 = *(result + 32);
  v10 = *(result + 120);
  if (v7)
  {
    v11 = v10 % v7;
    if (v10 <= v7)
    {
      v11 = *(result + 120);
    }

    v133 = v11;
  }

  else
  {
    v133 = 0;
  }

  v132 = *(result + 80);
  v130 = *(result + 88);
  v12 = *(result + 152) - 4;
  v13 = *(result + 144) - 1;
  if (v9)
  {
    v14 = 0;
  }

  else
  {
    v14 = -65536;
  }

  v15 = *(result + 260) - 1;
  v16 = *(result + 256);
  v128 = *(result + 188);
  v17 = v9 + (v15 * v135) + 2 * (v16 - 1);
  v18 = v136 + (v15 * v4) + 2 * v16 - 2;
  v129 = *(result + 64);
  v131 = *(result + 72);
  do
  {
    if (a3 < v131)
    {
      v19 = *(result + 216);
      v20 = v131 - *(result + 224);
      v21 = a3 - v20 + (v19 >> 1);
      v22 = a4;
      if (v21 < 1)
      {
        goto LABEL_61;
      }

      if (v21 >= v19)
      {
        LODWORD(v23) = 0x3FFFFFFF;
      }

      else
      {
        v23 = (*(result + 232) * v21) >> 32;
      }

      v33 = v132;
      v30 = v128 | v23;
      v31 = v20 + 0x1000000;
      v28 = a3 - v31;
      v29 = 512;
      goto LABEL_27;
    }

    v22 = a4;
    if (a3 > v130)
    {
      v24 = *(result + 216);
      v25 = *(result + 224) + v130;
      v26 = v25 - a3 + (v24 >> 1);
      if (v26 < 1)
      {
        goto LABEL_61;
      }

      if (v26 >= v24)
      {
        LODWORD(v27) = 0x3FFFFFFF;
      }

      else
      {
        v27 = (*(result + 232) * v26) >> 32;
      }

      v33 = v132;
      v30 = v128 | v27;
      v31 = v25 - 0x1000000;
      v28 = a3 - v31;
      v29 = 448;
LABEL_27:
      v32 = v129;
      goto LABEL_28;
    }

    v28 = 0;
    v29 = (a3 >> 22) & 0x3C0;
    v30 = 0x3FFFFFFF;
    v31 = a3;
    v32 = v129;
    v33 = v132;
LABEL_28:
    if (a2 >= v32)
    {
      if (a2 <= v33)
      {
        v38 = 0;
        v39 = (a2 >> 26) & 0x3C;
        v37 = a2;
      }

      else
      {
        v40 = *(result + 192);
        v41 = *(result + 200) + v33;
        v42 = v41 - a2 + (v40 >> 1);
        if (v42 < 1)
        {
          goto LABEL_61;
        }

        if (v42 < v40)
        {
          v30 = ((v30 >> 15) * (((*(result + 208) * v42) >> 32) >> 15)) | v128;
        }

        v37 = v41 - 0x1000000;
        v38 = a2 - (v41 - 0x1000000);
        v39 = 28;
      }
    }

    else
    {
      v34 = *(result + 192);
      v35 = v32 - *(result + 200);
      v36 = a2 - v35 + (v34 >> 1);
      if (v36 < 1)
      {
        goto LABEL_61;
      }

      if (v36 < v34)
      {
        v30 = ((v30 >> 15) * (((*(result + 208) * v36) >> 32) >> 15)) | v128;
      }

      v37 = v35 + 0x1000000;
      v38 = a2 - (v35 + 0x1000000);
      v39 = 32;
    }

    if (v30 >= 0x400000)
    {
      if (v6)
      {
        v43 = (v7 & ((v31 % v7) >> 63)) + v31 % v7;
        v44 = (v6 & ((v37 % v6) >> 63)) + v37 % v6;
        if (v43 >= v7)
        {
          v45 = v7;
        }

        else
        {
          v45 = 0;
        }

        v31 = v43 - v45;
        if (v44 >= v6)
        {
          v46 = v6;
        }

        else
        {
          v46 = 0;
        }

        v37 = v44 - v46;
        v28 += v31;
        v38 += v37;
      }

      v47 = v31 >> 32;
      v48 = v37 >> 31;
      v49 = v48 & 0xFFFFFFFFFFFFFFFELL;
      v50 = v136 + v47 * v4 + (v48 & 0xFFFFFFFFFFFFFFFELL);
      v51 = *(result + 32);
      if (v18 >= v50)
      {
        v52 = (v136 + v47 * v4 + (v48 & 0xFFFFFFFFFFFFFFFELL));
      }

      else
      {
        v52 = v18;
      }

      if (v52 < v51)
      {
        v52 = *(result + 32);
      }

      v53 = bswap32(*v52) >> 16;
      if (v9)
      {
        v54 = v9 + v47 * v135 + v49;
        v55 = *(result + 40);
        if (v17 >= v54)
        {
          v56 = v54;
        }

        else
        {
          v56 = v17;
        }

        if (v56 >= v55)
        {
          v55 = v56;
        }

        v53 |= bswap32(*v55) & 0xFFFF0000;
        if (!v8)
        {
          while (1)
          {
            while (1)
            {
LABEL_66:
              *(v12 + 4) = v53 | v14;
              *(v13 + 1) = v30 >> 22;
              if (v22 == 1)
              {
                return result;
              }

              v59 = v22;
              v60 = 0;
              a2 += v5;
              v61 = v132 - a2;
              a3 += v10;
              v62 = v130 - a3;
              v63 = -4;
              while (1)
              {
                if ((v62 | v61 | (a3 - v131) | (a2 - v129)) < 0)
                {
                  v13 += v60 + 1;
                  v12 -= v63;
                  v57 = ~v60 + v59;
                  goto LABEL_62;
                }

                if (v6)
                {
                  v64 = (v7 & ((v28 + v133) >> 63)) + v28 + v133;
                  v65 = (v6 & ((v38 + v134) >> 63)) + v38 + v134;
                  if (v64 >= v7)
                  {
                    v66 = v7;
                  }

                  else
                  {
                    v66 = 0;
                  }

                  v28 = v64 - v66;
                  if (v65 >= v6)
                  {
                    v67 = v6;
                  }

                  else
                  {
                    v67 = 0;
                  }

                  v38 = v65 - v67;
                  v68 = v28;
                  v69 = v38;
                }

                else
                {
                  v68 = a3;
                  v69 = a2;
                }

                v70 = v68 >> 32;
                v71 = (v69 >> 31) & 0xFFFFFFFFFFFFFFFELL;
                v50 = v136 + SHIDWORD(v68) * v4 + v71;
                v51 = *(result + 32);
                if (v18 >= v50)
                {
                  v72 = v50;
                }

                else
                {
                  v72 = v18;
                }

                if (v72 < v51)
                {
                  v72 = *(result + 32);
                }

                v53 = bswap32(*v72) >> 16;
                if (v9)
                {
                  v54 = v9 + v70 * v135 + v71;
                  v73 = *(result + 40);
                  if (v17 >= v54)
                  {
                    v74 = v54;
                  }

                  else
                  {
                    v74 = v17;
                  }

                  if (v74 >= v73)
                  {
                    v73 = v74;
                  }

                  v53 |= bswap32(*v73) & 0xFFFF0000;
                }

                if (v8)
                {
                  v58 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
                  if ((v58 & 0xF) != 0)
                  {
                    break;
                  }
                }

                *(v12 + 4 * v60 + 8) = v53 | v14;
                *(v13 + v60++ + 2) = -1;
                v63 -= 4;
                a2 += v5;
                v61 -= v5;
                a3 += v10;
                v62 -= v10;
                if (v59 - 1 == v60)
                {
                  return result;
                }
              }

              v13 += v60 + 1;
              v12 -= v63;
              v22 = ~v60 + v59;
              v30 = -1;
LABEL_96:
              v75 = v58 & 0xF;
              v76 = v58 >> 8;
              v77 = HIBYTE(v58) & 3;
              if (v75 != 1)
              {
                break;
              }

              LODWORD(v117) = SBYTE1(v58);
              if (v6)
              {
                v118 = v76 << 56;
                v119 = v28 + (v118 >> 24);
                v120 = v7 & (v119 >> 63);
                if (v120 + v119 >= v7)
                {
                  v121 = v7;
                }

                else
                {
                  v121 = 0;
                }

                v117 = (v120 + (v118 >> 24) - v121) >> 32;
              }

              v122 = (v50 + v117 * v4);
              if (v18 < v122)
              {
                v122 = v18;
              }

              if (v122 < v51)
              {
                v122 = v51;
              }

              v123 = bswap32(*v122) >> 16;
              if (v9)
              {
                v124 = (v54 + v117 * v135);
                if (v17 < v124)
                {
                  v124 = v17;
                }

                if (v124 < *(result + 40))
                {
                  v124 = *(result + 40);
                }

                v123 |= bswap32(*v124) & 0xFFFF0000;
              }

              v125 = interpolate_1616[v77];
              v115 = v53 - ((v125 & v53) >> (v77 + 1));
              v116 = (v125 & v123) >> (v77 + 1);
LABEL_168:
              v53 = v115 + v116;
            }

            if (v75 == 2)
            {
              v105 = SBYTE2(v58);
              if (v6)
              {
                v106 = HIWORD(v58) << 56;
                v107 = v38 + (v106 >> 24);
                v108 = v6 & (v107 >> 63);
                if (v108 + v107 >= v6)
                {
                  v109 = v6;
                }

                else
                {
                  v109 = 0;
                }

                v105 = (v108 + (v106 >> 24) - v109) >> 32;
              }

              v110 = (v50 + 2 * v105);
              if (v18 < v110)
              {
                v110 = v18;
              }

              if (v110 < v51)
              {
                v110 = v51;
              }

              v111 = bswap32(*v110) >> 16;
              if (v9)
              {
                v112 = (v54 + 2 * v105);
                if (v17 < v112)
                {
                  v112 = v17;
                }

                if (v112 < *(result + 40))
                {
                  v112 = *(result + 40);
                }

                v111 |= bswap32(*v112) & 0xFFFF0000;
              }

              v113 = (v58 >> 28) & 3;
              v114 = interpolate_1616[v113];
              LOBYTE(v113) = v113 + 1;
              v115 = v53 - ((v114 & v53) >> v113);
              v116 = (v114 & v111) >> v113;
              goto LABEL_168;
            }

            if (v75 == 3)
            {
              v78 = HIBYTE(v58) & 3;
              v127 = v30;
              v126 = v22;
              LODWORD(v79) = SBYTE1(v58);
              v80 = SBYTE2(v58);
              if (v6)
              {
                v81 = v76 << 56;
                v82 = HIWORD(v58) << 56;
                v83 = v28 + (v81 >> 24);
                v84 = v38 + (v82 >> 24);
                v85 = v7 & (v83 >> 63);
                v86 = v6 & (v84 >> 63);
                v87 = v86 + v84;
                if (v85 + v83 >= v7)
                {
                  v88 = v7;
                }

                else
                {
                  v88 = 0;
                }

                if (v87 >= v6)
                {
                  v89 = v6;
                }

                else
                {
                  v89 = 0;
                }

                v79 = (v85 + (v81 >> 24) - v88) >> 32;
                v80 = (v86 + (v82 >> 24) - v89) >> 32;
              }

              v90 = (v50 + 2 * v80);
              if (v18 < v90)
              {
                v90 = v18;
              }

              if (v90 < v51)
              {
                v90 = v51;
              }

              v91 = bswap32(*v90) >> 16;
              v92 = v50 + v79 * v4;
              if (v18 >= v92)
              {
                v93 = (v50 + v79 * v4);
              }

              else
              {
                v93 = v18;
              }

              if (v93 < v51)
              {
                v93 = v51;
              }

              v94 = bswap32(*v93) >> 16;
              v95 = (v92 + 2 * v80);
              if (v18 < v95)
              {
                v95 = v18;
              }

              if (v95 >= v51)
              {
                v51 = v95;
              }

              v96 = bswap32(*v51) >> 16;
              if (v9)
              {
                v97 = v80;
                v98 = (v54 + 2 * v80);
                v99 = *(result + 40);
                if (v17 < v98)
                {
                  v98 = v17;
                }

                if (v98 < v99)
                {
                  v98 = *(result + 40);
                }

                v91 |= bswap32(*v98) & 0xFFFF0000;
                v100 = (v54 + v79 * v135);
                if (v17 >= v100)
                {
                  v101 = v100;
                }

                else
                {
                  v101 = v17;
                }

                if (v101 < v99)
                {
                  v101 = *(result + 40);
                }

                v94 |= bswap32(*v101) & 0xFFFF0000;
                v102 = &v100[v97];
                if (v17 < v102)
                {
                  v102 = v17;
                }

                if (v102 < v99)
                {
                  v102 = *(result + 40);
                }

                v96 |= bswap32(*v102) & 0xFFFF0000;
              }

              v103 = interpolate_1616[v78];
              v104 = v53 - ((v103 & v53) >> (v78 + 1)) + ((v103 & v94) >> (v78 + 1));
              v53 = v104 - ((v104 & interpolate_1616[(v58 >> 28) & 3]) >> (((v58 >> 28) & 3) + 1)) + (((v91 - ((v103 & v91) >> (v78 + 1)) + ((v103 & v96) >> (v78 + 1))) & interpolate_1616[(v58 >> 28) & 3]) >> (((v58 >> 28) & 3) + 1));
              v22 = v126;
              v30 = v127;
            }
          }
        }
      }

      else
      {
        v54 = 0;
        if (!v8)
        {
          goto LABEL_66;
        }
      }

      v58 = *(v8 + (v39 | v29));
      goto LABEL_96;
    }

LABEL_61:
    v57 = v22 - 1;
    a2 += v5;
    a3 += v10;
    v12 += 4;
    *++v13 = 0;
LABEL_62:
    a4 = v57;
  }

  while (v57);
  return result;
}

uint64_t w16_sample_W8(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v87 = *(result + 80);
  v89 = *(result + 88);
  v10 = *(result + 112);
  v9 = *(result + 120);
  v11 = *(result + 152) - 4;
  v12 = *(result + 144) - 1;
  if (v5)
  {
    v13 = 0;
  }

  else
  {
    v13 = -16777216;
  }

  v14 = *(result + 260) - 1;
  v15 = *(result + 256);
  v16 = (v5 + (v15 - 1) + (v14 * v7));
  v86 = *(result + 188);
  v17 = v4 + v15 + (v14 * v6) - 1;
  v88 = *(result + 64);
  v90 = *(result + 72);
  while (1)
  {
LABEL_5:
    if (a3 >= v90)
    {
      if (a3 <= v89)
      {
        v26 = (a3 >> 22) & 0x3C0;
        v27 = 0x3FFFFFFF;
        v28 = a3;
        v29 = v88;
      }

      else
      {
        v22 = *(result + 216);
        v23 = *(result + 224) + v89;
        v24 = v23 - a3 + (v22 >> 1);
        if (v24 < 1)
        {
          goto LABEL_43;
        }

        if (v24 >= v22)
        {
          LODWORD(v25) = 0x3FFFFFFF;
        }

        else
        {
          v25 = (*(result + 232) * v24) >> 32;
        }

        v29 = v88;
        v27 = v86 | v25;
        v28 = v23 - 0x1000000;
        v26 = 448;
      }
    }

    else
    {
      v18 = *(result + 216);
      v19 = v90 - *(result + 224);
      v20 = a3 - v19 + (v18 >> 1);
      if (v20 < 1)
      {
        goto LABEL_43;
      }

      if (v20 >= v18)
      {
        LODWORD(v21) = 0x3FFFFFFF;
      }

      else
      {
        v21 = (*(result + 232) * v20) >> 32;
      }

      v29 = v88;
      v27 = v86 | v21;
      v28 = v19 + 0x1000000;
      v26 = 512;
    }

    if (a2 >= v29)
    {
      break;
    }

    v30 = *(result + 192);
    v31 = v29 - *(result + 200);
    v32 = a2 - v31 + (v30 >> 1);
    if (v32 >= 1)
    {
      if (v32 < v30)
      {
        v27 = ((v27 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v86;
      }

      v33 = v31 + 0x1000000;
      v34 = 32;
      goto LABEL_29;
    }

LABEL_43:
    --a4;
    a2 += v10;
    a3 += v9;
    v11 += 4;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v87)
  {
    v34 = (a2 >> 26) & 0x3C;
    v33 = a2;
    goto LABEL_29;
  }

  v35 = *(result + 192);
  v36 = *(result + 200) + v87;
  v37 = v36 - a2 + (v35 >> 1);
  if (v37 < 1)
  {
    goto LABEL_43;
  }

  if (v37 < v35)
  {
    v27 = ((v27 >> 15) * (((*(result + 208) * v37) >> 32) >> 15)) | v86;
  }

  v33 = v36 - 0x1000000;
  v34 = 28;
LABEL_29:
  if (v27 < 0x400000)
  {
    goto LABEL_43;
  }

  v38 = v28 >> 32;
  v39 = v4 + v38 * v6;
  v40 = v39 + (v33 >> 32);
  v41 = *(result + 32);
  if (v17 >= v40)
  {
    v42 = (v39 + (v33 >> 32));
  }

  else
  {
    v42 = v17;
  }

  if (v42 < v41)
  {
    v42 = *(result + 32);
  }

  v43 = *v42;
  if (!v5)
  {
    v44 = 0;
    if (!v8)
    {
      goto LABEL_47;
    }

LABEL_46:
    v47 = *(v8 + (v34 | v26));
LABEL_69:
    v56 = v47 & 0xF;
    v57 = HIBYTE(v47) & 3;
    switch(v56)
    {
      case 1:
        v80 = (v40 + SBYTE1(v47) * v6);
        if (v17 < v80)
        {
          v80 = v17;
        }

        if (v80 < v41)
        {
          v80 = v41;
        }

        v81 = *v80;
        if (v5)
        {
          v82 = (v44 + SBYTE1(v47) * v7);
          if (v16 < v82)
          {
            v82 = v16;
          }

          if (v82 < *(result + 40))
          {
            v82 = *(result + 40);
          }

          v81 |= *v82 << 24;
        }

        v83 = interpolate_8888_21865[v57];
        v84 = v57 + 1;
        v75 = v43 - ((v83 & v43) >> v84);
        v76 = (v83 & v81) >> v84;
        break;
      case 2:
        v77 = (v40 + SBYTE2(v47));
        if (v17 < v77)
        {
          v77 = v17;
        }

        if (v77 < v41)
        {
          v77 = v41;
        }

        v78 = *v77;
        if (v5)
        {
          v79 = (v44 + SBYTE2(v47));
          if (v16 < v79)
          {
            v79 = v16;
          }

          if (v79 < *(result + 40))
          {
            v79 = *(result + 40);
          }

          v78 |= *v79 << 24;
        }

        v43 = v43 - ((interpolate_8888_21865[(v47 >> 28) & 3] & v43) >> (((v47 >> 28) & 3) + 1)) + ((interpolate_8888_21865[(v47 >> 28) & 3] & v78) >> (((v47 >> 28) & 3) + 1));
        goto LABEL_47;
      case 3:
        v85 = HIBYTE(v47) & 3;
        v58 = (v40 + SBYTE2(v47));
        if (v17 < v58)
        {
          v58 = v17;
        }

        if (v58 < v41)
        {
          v58 = v41;
        }

        v59 = *v58;
        v60 = v40 + SBYTE1(v47) * v6;
        if (v17 >= v60)
        {
          v61 = (v40 + SBYTE1(v47) * v6);
        }

        else
        {
          v61 = v17;
        }

        if (v61 < v41)
        {
          v61 = v41;
        }

        v62 = *v61;
        v63 = (v60 + SBYTE2(v47));
        if (v17 < v63)
        {
          v63 = v17;
        }

        if (v63 < v41)
        {
          v63 = v41;
        }

        v64 = *v63;
        if (v5)
        {
          v65 = (v44 + SBYTE2(v47));
          v66 = *(result + 40);
          if (v16 < v65)
          {
            v65 = v16;
          }

          if (v65 < v66)
          {
            v65 = *(result + 40);
          }

          v59 |= *v65 << 24;
          v67 = v44 + SBYTE1(v47) * v7;
          if (v16 >= v67)
          {
            v68 = (v44 + SBYTE1(v47) * v7);
          }

          else
          {
            v68 = v16;
          }

          if (v68 < v66)
          {
            v68 = *(result + 40);
          }

          v62 |= *v68 << 24;
          v69 = (v67 + SBYTE2(v47));
          if (v16 < v69)
          {
            v69 = v16;
          }

          if (v69 < v66)
          {
            v69 = *(result + 40);
          }

          v64 |= *v69 << 24;
        }

        v70 = interpolate_8888_21865[v85];
        v71 = v43 - ((v70 & v43) >> (v85 + 1)) + ((v70 & v62) >> (v85 + 1));
        v72 = v59 - ((v70 & v59) >> (v85 + 1)) + ((v70 & v64) >> (v85 + 1));
        v73 = (v47 >> 28) & 3;
        v74 = interpolate_8888_21865[v73];
        LOBYTE(v73) = v73 + 1;
        v75 = v71 - ((v71 & v74) >> v73);
        v76 = (v72 & v74) >> v73;
        break;
      default:
        goto LABEL_47;
    }

    v43 = v75 + v76;
    goto LABEL_47;
  }

  v44 = v5 + v38 * v7 + (v33 >> 32);
  v45 = *(result + 40);
  if (v16 >= v44)
  {
    v46 = v44;
  }

  else
  {
    v46 = v16;
  }

  if (v46 >= v45)
  {
    v45 = v46;
  }

  v43 |= *v45 << 24;
  if (v8)
  {
    goto LABEL_46;
  }

LABEL_47:
  *(v11 + 4) = (v43 | v13) & 0xFF000000 | ((v43 | v13) >> 8) & 0xFFFF0000 | (v43 << 8) | v43;
  *(v12 + 1) = v27 >> 22;
  if (a4 != 1)
  {
    v48 = 0;
    a2 += v10;
    v49 = v87 - a2;
    a3 += v9;
    v50 = v89 - a3;
    v51 = -4;
    while (((v50 | v49 | (a3 - v90) | (a2 - v88)) & 0x8000000000000000) == 0)
    {
      v40 = v4 + SHIDWORD(a3) * v6 + (a2 >> 32);
      v41 = *(result + 32);
      if (v17 >= v40)
      {
        v52 = (v4 + SHIDWORD(a3) * v6 + (a2 >> 32));
      }

      else
      {
        v52 = v17;
      }

      if (v52 < v41)
      {
        v52 = *(result + 32);
      }

      v43 = *v52;
      if (v5)
      {
        v44 = v5 + SHIDWORD(a3) * v7 + (a2 >> 32);
        v53 = *(result + 40);
        if (v16 >= v44)
        {
          v54 = v5 + SHIDWORD(a3) * v7 + (a2 >> 32);
        }

        else
        {
          v54 = v16;
        }

        if (v54 >= v53)
        {
          v53 = v54;
        }

        v43 |= *v53 << 24;
      }

      if (v8)
      {
        v47 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v47 & 0xF) != 0)
        {
          v12 += v48 + 1;
          v11 -= v51;
          a4 += ~v48;
          v27 = -1;
          goto LABEL_69;
        }
      }

      *(v11 + 4 * v48 + 8) = (v43 | v13) & 0xFF000000 | ((v43 | v13) >> 8) & 0xFFFF0000 | (v43 << 8) | v43;
      v55 = v12 + v48++;
      v51 -= 4;
      *(v55 + 2) = -1;
      a2 += v10;
      v49 -= v10;
      a3 += v9;
      v50 -= v9;
      if (a4 - 1 == v48)
      {
        return result;
      }
    }

    v12 += v48 + 1;
    v11 -= v51;
    a4 += ~v48;
    if (a4)
    {
      goto LABEL_5;
    }
  }

  return result;
}

uint64_t w16_shade(uint64_t a1, __n128 a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v5 = v4;
  v6 = v3;
  v47 = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  *v38 = 0u;
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
  v18 = 0u;
  memset(v17, 0, sizeof(v17));
  v8 = *(v7 + 56);
  v9 = *v3;
  v10 = !*(v3 + 12) && !*(v4 + 72) && *(v4 + 4) >= 1.0;
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  v11 = *(v8 + 16 * v9 + 8 * v10 + 4 * (*(v3 + 6) == 0));
  if (v11 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(v3 + 1) < 1 || *(v3 + 2) < 1)
  {
    return 0;
  }

  if (_blt_shade_initialize(v3, v4, v17, v42) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*v5 & 0xF000000) == 0x1000000)
  {
    if (*(v5 + 16))
    {
      v14 = w16_shade_radial_W;
    }

    else if (*(v5 + 24))
    {
      v14 = w16_shade_conic_W;
    }

    else if (*(&v19 + 1) < 2)
    {
      v14 = w16_shade_axial_W;
    }

    else
    {
      v14 = w16_shade_custom_W;
    }

    *&v17[0] = v14;
    if (v40)
    {
      *(&v39 + 1) = v46;
      _blt_shade_samples_16(v46, 3, 1, v40, *(&v40 + 1), 1uLL);
    }

    v15 = *(&v19 + 1) * v19;
    if ((*(&v19 + 1) * v19) <= 960)
    {
      v16 = v44;
      v38[1] = v44;
LABEL_27:
      _blt_shade_samples_16(v16, 3, 1, v18, *(&v18 + 1), v15);
      if (*(v5 + 1))
      {
        *&v39 = &_blt_shade_samples_noise;
      }

      goto LABEL_29;
    }

    v16 = malloc_type_malloc(4 * v15 + 32, 0x8C254358uLL);
    if (v16)
    {
      v38[1] = v16;
      v15 = *(&v19 + 1) * v19;
      goto LABEL_27;
    }

    return 0xFFFFFFFFLL;
  }

  if (!*&v17[0])
  {
    return 0xFFFFFFFFLL;
  }

LABEL_29:
  DWORD2(v17[0]) = *v7;
  HIDWORD(v17[0]) = DWORD2(v17[0]);
  w16_image_mark(v6, v17, v11, v13);
  if (v38[1] && (v38[1] < v44 || &v45 < v38[1]))
  {
    free(v38[1]);
  }

  return 1;
}

void w16_image_mark(uint64_t a1, uint64_t a2, int a3, __n128 a4)
{
  v474 = *MEMORY[0x1E69E9840];
  v461 = *(a1 + 4);
  v460 = v461;
  v4 = (v461 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v4 <= 0x1FFFFFF)
  {
    v8 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = *(a2 + 184);
    v472 = *(a1 + 136);
    v473 = v7;
    v10 = *(a2 + 104);
    v469 = *(a2 + 96);
    v470 = v10;
    v11 = *(a1 + 24);
    v12 = *(a1 + 28);
    v13 = *(a1 + 16);
    v471 = *(a1 + 20);
    v14 = *(a1 + 12);
    v468 = *(a1 + 8);
    v462 = a2;
    v15 = *(a2 + 16);
    v16 = (v15 + 6) * v4;
    if (v16 > 65439)
    {
      v20 = malloc_type_calloc(1uLL, v16 + 96, 0xF5B4F9ABuLL);
      v18 = v20;
      v21 = v462;
      if (!v20)
      {
        return;
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](a1, a4);
      v18 = &v451 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v18, v17);
      v20 = 0;
      v21 = v462;
    }

    v459 = a1;
    v465 = a3;
    v22 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
    v23 = v22 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21[20] = v23;
    if (v15)
    {
      v24 = 4 * v4;
    }

    else
    {
      v24 = 0;
    }

    v25 = v23 + v24;
    v26 = v8 + (v11 - 1) * v12;
    v27 = v12 >> 1;
    v21[18] = v22;
    v21[19] = v25;
    if (v473)
    {
      v28 = v459;
      v29 = *(v459 + 32) >> 1;
      v30 = (v473 + 2 * v29 * v13 + 2 * v14);
      v466 = v29 - v460;
      v31 = v460;
      v32 = 1;
    }

    else
    {
      v30 = 0;
      v466 = 0;
      v32 = 0;
      v28 = v459;
      v31 = v460;
    }

    v467 = (v9 * 65535.9);
    v33 = v26 + 2 * v471;
    v34 = (v8 + 2 * v27 * v13 + 2 * v14);
    v464 = v27 - v31;
    v35 = *(v28 + 104);
    v36 = *(v28 + 108);
    v37 = *(v28 + 2);
    if (v37 == 6 || v37 == 1)
    {
      v39 = v461;
      v38 = v462;
      v40 = v469;
      v41 = v470;
      if (v472)
      {
        v452 = v27;
        v455 = v20;
        v42 = 0;
        v43 = 0;
        v44 = *(v459 + 124);
        v45 = v472 + v44 * v36 + v35;
        v31 = v460;
        v463 = v44 - v460;
        goto LABEL_32;
      }

LABEL_596:
      if (v20)
      {
        free(v20);
      }

      return;
    }

    v455 = v20;
    v39 = v461;
    v38 = v462;
    v41 = v470;
    if (v472)
    {
      v453 = v33;
      v454 = v32;
      shape_enum_clip_alloc(v20, v19, v472, 1, 1, 1, v35, v36, v461, v468);
      if (v46)
      {
        v472 = v46;
        v452 = v27;
        v47 = 0;
        v48 = ((v15 * v4 + 15) & 0xFFFFFFF0);
        if (!v15)
        {
          v48 = 4 * v4;
        }

        v49 = v460;
        v463 = -v460;
        v45 = (v25 + v48 + 16);
        v50 = v473;
        v40 = v469;
        goto LABEL_21;
      }

LABEL_595:
      v20 = v455;
      goto LABEL_596;
    }

    v452 = v27;
    v45 = 0;
    v42 = 0;
    v463 = 0;
    v43 = 0;
    v40 = v469;
LABEL_32:
    v57 = v467 ^ 0xFFFF;
    v456 = -v31;
    v457 = (v39 - 1);
    v451 = v457 + 1;
    v453 = v33;
    v458 = (v33 - 2);
    v454 = v32;
    v58 = 2 * v32;
    v59 = v42;
LABEL_33:
    LODWORD(v471) = v43;
    v472 = v59;
    v60 = *v38;
    v469 = v40;
    v470 = v41;
    v60(v38, v40, v41, v39);
    v61 = v38[20];
    v62 = v38[18];
    v63 = *(v38 + 2);
    if (v63 == *(v38 + 3))
    {
      if (v467 == 0xFFFF)
      {
        v50 = v473;
        v66 = v471;
      }

      else
      {
        v64 = v39;
        v65 = v38[18];
        v50 = v473;
        v66 = v471;
        do
        {
          if (*v65)
          {
            *v61 = (*v61 - ((*v61 * v57 + ((*v61 * v57) >> 16) + 1) >> 16)) | ((HIWORD(*v61) - ((HIWORD(*v61) * v57 + ((HIWORD(*v61) * v57) >> 16) + 1) >> 16)) << 16);
          }

          ++v65;
          v61 += 2;
          --v64;
        }

        while (v64);
        v61 += 2 * v456;
        v62 += v457 + v456 + 1;
      }
    }

    else
    {
      v67 = v38[19];
      v68 = HIWORD(v63) & 0x3F;
      if (v68 == 16)
      {
        v50 = v473;
        v66 = v471;
        v76 = 0;
        if (v467 == 0xFFFF)
        {
          do
          {
            if (v62[v76])
            {
              *&v61[2 * v76] = *(v67 + 4 * v76);
            }

            ++v76;
          }

          while (v39 != v76);
        }

        else
        {
          do
          {
            if (v62[v76])
            {
              v77 = *(v67 + 4 * v76);
              *&v61[2 * v76] = (v77 - ((v77 * v57 + ((v77 * v57) >> 16) + 1) >> 16)) | ((HIWORD(*(v67 + 4 * v76)) - ((HIWORD(*(v67 + 4 * v76)) * v57 + ((HIWORD(*(v67 + 4 * v76)) * v57) >> 16) + 1) >> 16)) << 16);
            }

            ++v76;
          }

          while (v39 != v76);
        }
      }

      else
      {
        v50 = v473;
        v66 = v471;
        if (v68 == 32)
        {
          if (v467 == 0xFFFF)
          {
            v81 = 0;
            v82 = (v67 + 4);
            do
            {
              if (v62[v81])
              {
                v83 = *v82;
                if (*v82 <= 0.0)
                {
                  v87 = 0;
                }

                else
                {
                  v84 = ((v83 * 65535.0) + 0.5);
                  v85 = *(v82 - 1);
                  if (v83 > 1.0)
                  {
                    v84 = 0xFFFF;
                    v83 = 1.0;
                  }

                  v86 = v84;
                  if (v85 <= v83)
                  {
                    if (v85 >= 0.0)
                    {
                      v86 = ((v85 * 65535.0) + 0.5);
                    }

                    else
                    {
                      v86 = 0;
                    }
                  }

                  v87 = v86 | (v84 << 16);
                }

                *&v61[2 * v81] = v87;
              }

              v82 += 2;
              ++v81;
            }

            while (v39 != v81);
          }

          else
          {
            v69 = 0;
            v70 = (v67 + 4);
            do
            {
              if (v62[v69])
              {
                v71 = *v70;
                if (*v70 <= 0.0)
                {
                  v75 = 0;
                }

                else
                {
                  v72 = ((v71 * 65535.0) + 0.5);
                  v73 = *(v70 - 1);
                  if (v71 > 1.0)
                  {
                    v72 = 0xFFFF;
                    v71 = 1.0;
                  }

                  v74 = v72;
                  if (v73 <= v71)
                  {
                    if (v73 >= 0.0)
                    {
                      v74 = ((v73 * 65535.0) + 0.5);
                    }

                    else
                    {
                      v74 = 0;
                    }
                  }

                  v75 = (v74 - ((v74 * v57 + ((v74 * v57) >> 16) + 1) >> 16)) | ((v72 - ((v72 * v57 + ((v72 * v57) >> 16) + 1) >> 16)) << 16);
                }

                *&v61[2 * v69] = v75;
              }

              v70 += 2;
              ++v69;
            }

            while (v39 != v69);
          }
        }

        else if (v467 == 0xFFFF)
        {
          v88 = 0;
          do
          {
            if (v62[v88])
            {
              *&v61[2 * v88] = *(v67 + 4 * v88) & 0xFF000000 | (*(v67 + 4 * v88) >> 8) & 0xFFFF0000 | (*(v67 + 4 * v88) << 8) | *(v67 + 4 * v88);
            }

            ++v88;
          }

          while (v39 != v88);
        }

        else
        {
          v78 = 0;
          do
          {
            if (v62[v78])
            {
              v79 = *(v67 + 4 * v78);
              v80 = HIBYTE(*(v67 + 4 * v78)) | (HIBYTE(*(v67 + 4 * v78)) << 8);
              *&v61[2 * v78] = ((v79 | (v79 << 8)) - (((v79 | (v79 << 8)) * v57 + (((v79 | (v79 << 8)) * v57) >> 16) + 1) >> 16)) | ((v80 - ((v80 * v57 + ((v80 * v57) >> 16) + 1) >> 16)) << 16);
            }

            ++v78;
          }

          while (v39 != v78);
        }
      }
    }

    switch(v465)
    {
      case 0:
        v89 = v45 != 0;
        v90 = v39;
        v91 = v45;
        if (v50)
        {
          v92 = v469;
          do
          {
            v93 = *v62;
            if (*v62)
            {
              if (v45)
              {
                v93 = ((*v91 * v93 + ((*v91 * v93) >> 8) + 1) >> 8);
              }

              if (v93)
              {
                if (v93 == 255)
                {
                  LOWORD(v94) = 0;
                  *v34 = 0;
                }

                else
                {
                  v95 = *v30;
                  v96 = v93 | (v93 << 8);
                  *v34 -= (v96 * *v34 + ((v96 * *v34) >> 16) + 1) >> 16;
                  v94 = v95 - ((v96 * v95 + ((v96 * v95) >> 16) + 1) >> 16);
                }

                *v30 = v94;
              }
            }

            ++v62;
            v91 += v89;
            ++v34;
            ++v30;
            --v90;
          }

          while (v90);
        }

        else
        {
          v92 = v469;
          do
          {
            v407 = *v62;
            if (*v62)
            {
              if (v45)
              {
                v407 = ((*v91 * v407 + ((*v91 * v407) >> 8) + 1) >> 8);
              }

              if (v407)
              {
                if (v407 == 255)
                {
                  LOWORD(v408) = 0;
                }

                else
                {
                  v408 = *v34 - ((257 * v407 * *v34 + ((257 * v407 * *v34) >> 16) + 1) >> 16);
                }

                *v34 = v408;
              }
            }

            ++v62;
            v91 += v89;
            ++v34;
            --v90;
          }

          while (v90);
        }

        v393 = v463;
        goto LABEL_528;
      case 1:
        v244 = *v62;
        if (v50)
        {
          v245 = v62 + 1;
          v246 = v30 - 1;
          v247 = v34 - 1;
          v248 = v39;
          if (v45)
          {
            v197 = v470;
            do
            {
              if (v244)
              {
                v249 = *v45 * v244 + ((*v45 * v244) >> 8) + 1;
                if (BYTE1(v249))
                {
                  if (BYTE1(v249) == 255)
                  {
                    v250 = *v61;
                    v251 = *v61;
                  }

                  else
                  {
                    v252 = 257 * (v249 >> 8);
                    v253 = v252;
                    v254 = ~v252;
                    v255 = *v61 * v253 + v247[1] * v254;
                    v256 = v255 + HIWORD(v255) + 1;
                    v251 = HIWORD(*v61) * (v254 | v253) + ((HIWORD(*v61) * (v254 | v253)) >> 16) + 1;
                    v250 = HIWORD(v256);
                  }

                  v247[1] = v250;
                  v246[1] = HIWORD(v251);
                }
              }

              v257 = *v245++;
              v244 = v257;
              v61 += 2;
              ++v45;
              ++v246;
              ++v247;
              --v248;
            }

            while (v248);
            v45 += v463;
          }

          else
          {
            v197 = v470;
            do
            {
              if (v244)
              {
                if (v244 == 255)
                {
                  v432 = *v61;
                  v433 = *v61;
                }

                else
                {
                  v434 = v244 | (v244 << 8);
                  v433 = 0xFFFF * HIWORD(*v61) + ((0xFFFF * HIWORD(*v61)) >> 16) + 1;
                  v432 = (*v61 * v434 + v247[1] * (v434 ^ 0xFFFF) + ((*v61 * v434 + v247[1] * (v434 ^ 0xFFFFu)) >> 16) + 1) >> 16;
                }

                v247[1] = v432;
                v246[1] = HIWORD(v433);
              }

              v435 = *v245++;
              v244 = v435;
              v61 += 2;
              ++v246;
              ++v247;
              --v248;
            }

            while (v248);
            v45 = 0;
          }

          v430 = &v246[v466];
          v431 = &v247[v464];
          goto LABEL_566;
        }

        if (v45)
        {
          v409 = v62 + 1;
          v410 = v39;
          v197 = v470;
          do
          {
            if (v244)
            {
              v411 = *v45 * v244 + ((*v45 * v244) >> 8) + 1;
              v412 = v458;
              v395 = *(v459 + 40);
              if (v458 >= v34)
              {
                v412 = v34;
              }

              if (v412 >= v395)
              {
                v395 = v412;
              }

              if (BYTE1(v411))
              {
                if (BYTE1(v411) == 255)
                {
                  v413 = *v61;
                }

                else
                {
                  v414 = 257 * (v411 >> 8);
                  v413 = (*v61 * v414 + *v395 * ~v414 + ((*v61 * v414 + *v395 * ~v414) >> 16) + 1) >> 16;
                }

                *v395 = v413;
              }
            }

            else
            {
              v395 = v34;
            }

            v415 = *v409++;
            v244 = v415;
            v61 += 2;
            ++v45;
            v34 = v395 + 1;
            --v410;
          }

          while (v410);
          goto LABEL_543;
        }

        v445 = *(v459 + 40);
        v446 = v62 + 1;
        v447 = v39;
        v197 = v470;
        do
        {
          v395 = v458;
          if (v458 >= v34)
          {
            v395 = v34;
          }

          if (v395 < v445)
          {
            v395 = v445;
          }

          if (v244)
          {
            if (v244 == 255)
            {
              v448 = *v61;
            }

            else
            {
              v449 = v244 | (v244 << 8);
              v448 = (*v61 * v449 + *v395 * (v449 ^ 0xFFFF) + ((*v61 * v449 + *v395 * (v449 ^ 0xFFFFu)) >> 16) + 1) >> 16;
            }

            *v395 = v448;
          }

          v450 = *v446++;
          v244 = v450;
          v61 += 2;
          v34 = v395 + 1;
          --v447;
        }

        while (v447);
        goto LABEL_590;
      case 2:
        v192 = *v62;
        if (v50)
        {
          v193 = v62 + 1;
          v194 = v30 - 1;
          v195 = v34 - 1;
          v196 = v39;
          if (v45)
          {
            v197 = v470;
            while (1)
            {
              if (!v192)
              {
                goto LABEL_247;
              }

              v198 = *v45 * v192 + ((*v45 * v192) >> 8) + 1;
              if (!BYTE1(v198))
              {
                goto LABEL_247;
              }

              if (BYTE1(v198) == 255)
              {
                v199 = *v61;
                v200 = HIWORD(*v61);
                if (v200)
                {
                  if (v200 == 0xFFFF)
                  {
                    v195[1] = v199;
                    LOWORD(v199) = -1;
                  }

                  else
                  {
                    v209 = v200 ^ 0xFFFF;
                    v210 = v209 * v195[1];
                    v211 = (v209 * v194[1] + ((v209 * v194[1]) >> 16) + 1) >> 16;
                    v195[1] = v199 + ((v210 + HIWORD(v210) + 1) >> 16);
                    v199 = v211 + HIWORD(v199);
                  }

                  goto LABEL_246;
                }
              }

              else
              {
                v201 = HIWORD(*v61);
                v202 = (257 * (v198 >> 8)) ^ 0xFFFF;
                v203 = v201 * v202 + ((v201 * v202) >> 16) + 1;
                v204 = *v61 - ((*v61 * v202 + ((*v61 * v202) >> 16) + 1) >> 16);
                v205 = v204 | ((v201 - HIWORD(v203)) << 16);
                if (v205 >= 0x10000)
                {
                  v206 = HIWORD(v205) ^ 0xFFFF;
                  v207 = v206 * v195[1] + ((v206 * v195[1]) >> 16) + 1;
                  v208 = (v206 * v194[1] + ((v206 * v194[1]) >> 16) + 1) >> 16;
                  v195[1] = v204 + HIWORD(v207);
                  v199 = v208 + HIWORD(v205);
LABEL_246:
                  v194[1] = v199;
                }
              }

LABEL_247:
              v212 = *v193++;
              v192 = v212;
              v61 += 2;
              ++v45;
              ++v194;
              ++v195;
              if (!--v196)
              {
                v45 += v463;
                goto LABEL_556;
              }
            }
          }

          v197 = v470;
          while (1)
          {
            if (v192)
            {
              if (v192 == 255)
              {
                v416 = *v61;
                v417 = HIWORD(*v61);
                if (v417)
                {
                  if (v417 == 0xFFFF)
                  {
                    v195[1] = v416;
                    LOWORD(v416) = -1;
                  }

                  else
                  {
                    v426 = v417 ^ 0xFFFF;
                    v427 = v426 * v195[1];
                    v428 = (v426 * v194[1] + ((v426 * v194[1]) >> 16) + 1) >> 16;
                    v195[1] = v416 + ((v427 + HIWORD(v427) + 1) >> 16);
                    v416 = v428 + HIWORD(v416);
                  }

                  goto LABEL_553;
                }
              }

              else
              {
                v418 = HIWORD(*v61);
                v419 = (257 * v192) ^ 0xFFFF;
                v420 = v418 * v419 + ((v418 * v419) >> 16) + 1;
                v421 = *v61 - ((*v61 * v419 + ((*v61 * v419) >> 16) + 1) >> 16);
                v422 = v421 | ((v418 - HIWORD(v420)) << 16);
                if (v422 >= 0x10000)
                {
                  v423 = HIWORD(v422) ^ 0xFFFF;
                  v424 = v423 * v195[1] + ((v423 * v195[1]) >> 16) + 1;
                  v425 = (v423 * v194[1] + ((v423 * v194[1]) >> 16) + 1) >> 16;
                  v195[1] = v421 + HIWORD(v424);
                  v416 = v425 + HIWORD(v422);
LABEL_553:
                  v194[1] = v416;
                }
              }
            }

            v429 = *v193++;
            v192 = v429;
            v61 += 2;
            ++v194;
            ++v195;
            if (!--v196)
            {
              v45 = 0;
LABEL_556:
              v430 = &v194[v466];
              v431 = &v195[v464];
LABEL_566:
              v34 = v431 + 1;
              v30 = v430 + 1;
LABEL_592:
              v92 = v469;
LABEL_491:
              if (!--v468)
              {
                v56 = v472;
                if (v472)
                {
LABEL_594:
                  free(v56);
                }

                goto LABEL_595;
              }

              v59 = 0;
              v43 = v66 + 1;
              v40 = v38[16] + v92;
              v41 = v38[17] + v197;
              if (v472)
              {
                v47 = v43;
                v49 = v460;
LABEL_21:
                v51 = v466 + v49;
                while (1)
                {
                  while (1)
                  {
                    v52 = *(v45 - 4);
                    v53 = v52 - v47;
                    if (v52 <= v47)
                    {
                      break;
                    }

                    v468 -= v53;
                    if (v468 < 1)
                    {
LABEL_30:
                      v56 = v472;
                      goto LABEL_594;
                    }

                    v40 += v38[16] * v53;
                    v41 += v38[17] * v53;
                    v34 += v452 * v53;
                    v55 = v51 * v53;
                    if (!v50)
                    {
                      v55 = 0;
                    }

                    v30 += v55;
                    v47 = v52;
                  }

                  v43 = v47;
                  if (v47 < *(v45 - 3) + v52)
                  {
                    break;
                  }

                  v54 = shape_enum_clip_scan(v472, v45 - 4);
                  v50 = v473;
                  if (!v54)
                  {
                    goto LABEL_30;
                  }
                }

                v31 = v460;
                v32 = v454;
                v33 = v453;
                v42 = v472;
                goto LABEL_32;
              }

              goto LABEL_33;
            }
          }
        }

        v394 = v62 + 1;
        v395 = v34 - 1;
        v396 = v39;
        if (v45)
        {
          v197 = v470;
          while (1)
          {
            if (!v192)
            {
              goto LABEL_515;
            }

            v397 = *v45 * v192 + ((*v45 * v192) >> 8) + 1;
            if (!BYTE1(v397))
            {
              goto LABEL_515;
            }

            if (BYTE1(v397) == 255)
            {
              v398 = *v61;
              v399 = HIWORD(*v61);
              if (v399)
              {
                if (v399 != 0xFFFF)
                {
                  v400 = v395[1];
                  v401 = v399 ^ 0xFFFF;
                  goto LABEL_513;
                }

                goto LABEL_514;
              }
            }

            else
            {
              v402 = HIWORD(*v61);
              v403 = (257 * (v397 >> 8)) ^ 0xFFFF;
              v404 = v402 * v403 + ((v402 * v403) >> 16) + 1;
              v398 = *v61 - ((*v61 * v403 + ((*v61 * v403) >> 16) + 1) >> 16);
              v405 = v398 | ((v402 - HIWORD(v404)) << 16);
              if (v405 >= 0x10000)
              {
                v400 = v395[1];
                v401 = ~v405 >> 16;
LABEL_513:
                v398 += (v401 * v400 + ((v401 * v400) >> 16) + 1) >> 16;
LABEL_514:
                v395[1] = v398;
              }
            }

LABEL_515:
            v406 = *v394++;
            v192 = v406;
            v61 += 2;
            ++v45;
            ++v395;
            if (!--v396)
            {
LABEL_543:
              v45 += v463;
LABEL_591:
              v34 = &v395[v464 + 1];
              v30 += v466;
              goto LABEL_592;
            }
          }
        }

        v197 = v470;
        while (1)
        {
          if (v192)
          {
            if (v192 == 255)
            {
              v436 = *v61;
              v437 = HIWORD(*v61);
              if (v437)
              {
                if (v437 != 0xFFFF)
                {
                  v438 = v395[1];
                  v439 = v437 ^ 0xFFFF;
                  goto LABEL_575;
                }

                goto LABEL_576;
              }
            }

            else
            {
              v440 = HIWORD(*v61);
              v441 = (257 * v192) ^ 0xFFFF;
              v442 = v440 * v441 + ((v440 * v441) >> 16) + 1;
              v436 = *v61 - ((*v61 * v441 + ((*v61 * v441) >> 16) + 1) >> 16);
              v443 = v436 | ((v440 - HIWORD(v442)) << 16);
              if (v443 >= 0x10000)
              {
                v438 = v395[1];
                v439 = ~v443 >> 16;
LABEL_575:
                v436 += (v439 * v438 + ((v439 * v438) >> 16) + 1) >> 16;
LABEL_576:
                v395[1] = v436;
              }
            }
          }

          v444 = *v394++;
          v192 = v444;
          v61 += 2;
          ++v395;
          if (!--v396)
          {
LABEL_590:
            v45 = 0;
            goto LABEL_591;
          }
        }

      case 3:
        v223 = v39;
        v120 = v45;
        do
        {
          v224 = *v62;
          if (*v62)
          {
            if (v45)
            {
              v224 = ((*v120 * v224 + ((*v120 * v224) >> 8) + 1) >> 8);
            }

            if (v224)
            {
              if (v224 == 255)
              {
                v225 = HIWORD(*v61);
                v226 = *v30 ^ 0xFFFF;
                *v34 = *v61 - ((*v61 * v226 + ((*v61 * v226) >> 16) + 1) >> 16);
                v227 = v225 - ((v225 * v226 + ((v225 * v226) >> 16) + 1) >> 16);
              }

              else
              {
                v228 = v224 | (v224 << 8);
                v229 = *v30 * v228 + ((*v30 * v228) >> 16) + 1;
                v228 ^= 0xFFFFu;
                v230 = *v34 * v228 + HIWORD(v229) * *v61;
                v231 = (v228 + HIWORD(v229)) * HIWORD(*v61);
                v227 = (v231 + HIWORD(v231) + 1) >> 16;
                *v34 = (v230 + HIWORD(v230) + 1) >> 16;
              }

              *v30 = v227;
            }
          }

          ++v62;
          v61 += 2;
          v120 += v45 != 0;
          ++v34;
          v30 = (v30 + v58);
          --v223;
        }

        while (v223);
        goto LABEL_475;
      case 4:
        v147 = v39;
        v120 = v45;
        do
        {
          v148 = *v62;
          if (*v62)
          {
            if (v45)
            {
              v148 = ((*v120 * v148 + ((*v120 * v148) >> 8) + 1) >> 8);
            }

            if (v148)
            {
              if (v148 == 255)
              {
                v149 = HIWORD(*v61);
                v150 = *v30;
                *v34 = *v61 - ((*v61 * v150 + ((*v61 * v150) >> 16) + 1) >> 16);
                v151 = v149 - ((v149 * v150 + ((v149 * v150) >> 16) + 1) >> 16);
              }

              else
              {
                v152 = v148 | (v148 << 8);
                v153 = (*v30 ^ 0xFFFF) * v152 + (((*v30 ^ 0xFFFFu) * v152) >> 16) + 1;
                v152 ^= 0xFFFFu;
                v154 = *v34 * v152 + HIWORD(v153) * *v61;
                v155 = (v152 + HIWORD(v153)) * HIWORD(*v61);
                v151 = (v155 + HIWORD(v155) + 1) >> 16;
                *v34 = (v154 + HIWORD(v154) + 1) >> 16;
              }

              *v30 = v151;
            }
          }

          ++v62;
          v61 += 2;
          v120 += v45 != 0;
          ++v34;
          v30 = (v30 + v58);
          --v147;
        }

        while (v147);
        goto LABEL_475;
      case 5:
        v278 = v39;
        v120 = v45;
        while (1)
        {
          v279 = *v62;
          if (*v62)
          {
            if (!v45)
            {
              goto LABEL_336;
            }

            v280 = *v120 * v279 + ((*v120 * v279) >> 8) + 1;
            if (v280 >= 0x100)
            {
              break;
            }
          }

LABEL_337:
          ++v62;
          v61 += 2;
          v120 += v45 != 0;
          ++v34;
          v30 = (v30 + v58);
          if (!--v278)
          {
            goto LABEL_475;
          }
        }

        v279 = v280 >> 8;
LABEL_336:
        v281 = *v30;
        v282 = (v279 | (v279 << 8)) ^ 0xFFFF;
        v283 = *v61 - ((*v61 * v282 + ((*v61 * v282) >> 16) + 1) >> 16);
        v284 = (v283 | ((HIWORD(*v61) - ((HIWORD(*v61) * v282 + ((HIWORD(*v61) * v282) >> 16) + 1) >> 16)) << 16)) >> 16;
        v285 = v283 * v281 + (v284 ^ 0xFFFF) * *v34;
        *v34 = (v285 + HIWORD(v285) + 1) >> 16;
        *v30 = (((v284 ^ 0xFFFF) + v281) * v284 + ((((v284 ^ 0xFFFF) + v281) * v284) >> 16) + 1) >> 16;
        goto LABEL_337;
      case 6:
        v307 = v39;
        v120 = v45;
        while (1)
        {
          v308 = *v62;
          if (*v62)
          {
            if (!v45)
            {
              goto LABEL_373;
            }

            v309 = *v120 * v308 + ((*v120 * v308) >> 8) + 1;
            if (v309 >= 0x100)
            {
              break;
            }
          }

LABEL_378:
          ++v62;
          v61 += 2;
          v120 += v45 != 0;
          ++v34;
          v30 = (v30 + v58);
          if (!--v307)
          {
            goto LABEL_475;
          }
        }

        v308 = v309 >> 8;
LABEL_373:
        v310 = *v30;
        if (v310 != 0xFFFF)
        {
          if (~v310 == 0xFFFF)
          {
            v311 = HIWORD(*v61);
            v312 = (v308 | (v308 << 8)) ^ 0xFFFF;
            *v34 = *v61 - ((*v61 * v312 + ((*v61 * v312) >> 16) + 1) >> 16);
            v313 = v311 - ((v311 * v312 + ((v311 * v312) >> 16) + 1) >> 16);
          }

          else
          {
            v314 = HIWORD(*v61);
            v315 = 257 * v308 * ~v310;
            v316 = (v315 + HIWORD(v315) + 1) >> 16;
            *v34 += (*v61 * v316 + ((*v61 * v316) >> 16) + 1) >> 16;
            v313 = v310 + ((v314 * v316 + ((v314 * v316) >> 16) + 1) >> 16);
          }

          *v30 = v313;
        }

        goto LABEL_378;
      case 7:
        v232 = v45 != 0;
        v233 = v39;
        v120 = v45;
        if (v50)
        {
          do
          {
            v234 = *v62;
            if (*v62)
            {
              if (v45)
              {
                v234 = ((*v120 * v234 + ((*v120 * v234) >> 8) + 1) >> 8);
              }

              if (v234)
              {
                if (v234 == 255)
                {
                  v235 = *v30;
                  v236 = ~*v61 >> 16;
                  *v34 -= (v236 * *v34 + ((v236 * *v34) >> 16) + 1) >> 16;
                  v237 = v235 - ((v236 * v235 + ((v236 * v235) >> 16) + 1) >> 16);
                }

                else
                {
                  v238 = ((v234 | (v234 << 8)) ^ 0xFFFF) + ((v61[1] * (v234 | (v234 << 8)) + ((v61[1] * (v234 | (v234 << 8))) >> 16) + 1) >> 16);
                  v239 = v238 * *v34;
                  v237 = (v238 * *v30 + ((v238 * *v30) >> 16) + 1) >> 16;
                  *v34 = (v239 + HIWORD(v239) + 1) >> 16;
                }

                *v30 = v237;
              }
            }

            ++v62;
            v61 += 2;
            v120 += v232;
            ++v34;
            ++v30;
            --v233;
          }

          while (v233);
        }

        else
        {
          do
          {
            v240 = *v62;
            if (*v62)
            {
              if (v45)
              {
                v240 = ((*v120 * v240 + ((*v120 * v240) >> 8) + 1) >> 8);
              }

              if (v240)
              {
                if (v240 == 255)
                {
                  v241 = *v34 - (((~*v61 >> 16) * *v34 + (((~*v61 >> 16) * *v34) >> 16) + 1) >> 16);
                }

                else
                {
                  v242 = v240 | (v240 << 8);
                  v243 = v61[1] * v242 + ((v61[1] * v242) >> 16) + 1;
                  v241 = (((v242 ^ 0xFFFF) + HIWORD(v243)) * *v34 + ((((v242 ^ 0xFFFF) + HIWORD(v243)) * *v34) >> 16) + 1) >> 16;
                }

                *v34 = v241;
              }
            }

            ++v62;
            v61 += 2;
            v120 += v232;
            ++v34;
            --v233;
          }

          while (v233);
        }

        goto LABEL_475;
      case 8:
        v335 = v45 != 0;
        v336 = v39;
        v120 = v45;
        if (v50)
        {
          do
          {
            v337 = *v62;
            if (*v62)
            {
              if (v45)
              {
                v337 = ((*v120 * v337 + ((*v120 * v337) >> 8) + 1) >> 8);
              }

              if (v337)
              {
                if (v337 == 255)
                {
                  v338 = *v30;
                  v339 = HIWORD(*v61);
                  *v34 -= (v339 * *v34 + ((v339 * *v34) >> 16) + 1) >> 16;
                  v340 = v338 - ((v339 * v338 + ((v339 * v338) >> 16) + 1) >> 16);
                }

                else
                {
                  v341 = ((v337 | (v337 << 8)) ^ 0xFFFF) + (((~*v61 >> 16) * (v337 | (v337 << 8)) + (((~*v61 >> 16) * (v337 | (v337 << 8))) >> 16) + 1) >> 16);
                  v342 = v341 * *v34;
                  v340 = (v341 * *v30 + ((v341 * *v30) >> 16) + 1) >> 16;
                  *v34 = (v342 + HIWORD(v342) + 1) >> 16;
                }

                *v30 = v340;
              }
            }

            ++v62;
            v61 += 2;
            v120 += v335;
            ++v34;
            ++v30;
            --v336;
          }

          while (v336);
        }

        else
        {
          do
          {
            v343 = *v62;
            if (*v62)
            {
              if (v45)
              {
                v343 = ((*v120 * v343 + ((*v120 * v343) >> 8) + 1) >> 8);
              }

              if (v343)
              {
                if (v343 == 255)
                {
                  v344 = *v34 - ((v61[1] * *v34 + ((v61[1] * *v34) >> 16) + 1) >> 16);
                }

                else
                {
                  v345 = v343 | (v343 << 8);
                  v346 = (~*v61 >> 16) * v345 + (((~*v61 >> 16) * v345) >> 16) + 1;
                  v344 = (((v345 ^ 0xFFFF) + HIWORD(v346)) * *v34 + ((((v345 ^ 0xFFFF) + HIWORD(v346)) * *v34) >> 16) + 1) >> 16;
                }

                *v34 = v344;
              }
            }

            ++v62;
            v61 += 2;
            v120 += v335;
            ++v34;
            --v336;
          }

          while (v336);
        }

        goto LABEL_475;
      case 9:
        v164 = v39;
        v120 = v45;
        while (1)
        {
          v165 = *v62;
          if (*v62)
          {
            if (!v45)
            {
              goto LABEL_205;
            }

            v166 = *v120 * v165 + ((*v120 * v165) >> 8) + 1;
            if (v166 >= 0x100)
            {
              break;
            }
          }

LABEL_206:
          ++v62;
          v61 += 2;
          v120 += v45 != 0;
          ++v34;
          v30 = (v30 + v58);
          if (!--v164)
          {
            goto LABEL_475;
          }
        }

        v165 = v166 >> 8;
LABEL_205:
        v167 = ~(v165 | (v165 << 8));
        v168 = (*v61 - ((*v61 * v167 + ((*v61 * v167) >> 16) + 1) >> 16)) | ((HIWORD(*v61) - ((HIWORD(*v61) * v167 + ((HIWORD(*v61) * v167) >> 16) + 1) >> 16)) << 16);
        v169 = *v30 ^ 0xFFFF;
        v170 = (*v61 - ((*v61 * v167 + ((*v61 * v167) >> 16) + 1) >> 16)) * v169 + (v167 + HIWORD(v168)) * *v34;
        v171 = (v169 + (v167 + HIWORD(v168))) * HIWORD(v168);
        *v34 = (v170 + HIWORD(v170) + 1) >> 16;
        *v30 = (v171 + HIWORD(v171) + 1) >> 16;
        goto LABEL_206;
      case 10:
        v327 = v39;
        v120 = v45;
        while (1)
        {
          v328 = *v62;
          if (*v62)
          {
            if (!v45)
            {
              goto LABEL_398;
            }

            v329 = *v120 * v328 + ((*v120 * v328) >> 8) + 1;
            if (v329 >= 0x100)
            {
              break;
            }
          }

LABEL_399:
          ++v62;
          v61 += 2;
          v120 += v45 != 0;
          ++v34;
          v30 = (v30 + v58);
          if (!--v327)
          {
            goto LABEL_475;
          }
        }

        v328 = v329 >> 8;
LABEL_398:
        v330 = (v328 | (v328 << 8)) ^ 0xFFFF;
        v331 = *v61 - ((*v61 * v330 + ((*v61 * v330) >> 16) + 1) >> 16);
        v332 = (v331 | ((HIWORD(*v61) - ((HIWORD(*v61) * v330 + ((HIWORD(*v61) * v330) >> 16) + 1) >> 16)) << 16)) >> 16;
        v333 = *v30 ^ 0xFFFF;
        v334 = v331 * v333 + (v332 ^ 0xFFFF) * *v34;
        *v34 = (v334 + HIWORD(v334) + 1) >> 16;
        *v30 = (((v332 ^ 0xFFFF) + v333) * v332 + ((((v332 ^ 0xFFFF) + v333) * v332) >> 16) + 1) >> 16;
        goto LABEL_399;
      case 11:
        v132 = v45 != 0;
        v133 = v39;
        v120 = v45;
        if (v50)
        {
          while (1)
          {
            v134 = *v62;
            if (*v62)
            {
              if (!v45)
              {
                goto LABEL_161;
              }

              v135 = *v120 * v134 + ((*v120 * v134) >> 8) + 1;
              if (v135 >= 0x100)
              {
                break;
              }
            }

LABEL_166:
            ++v62;
            v61 += 2;
            v120 += v132;
            ++v34;
            ++v30;
            if (!--v133)
            {
              goto LABEL_475;
            }
          }

          v134 = v135 >> 8;
LABEL_161:
          v136 = (v134 | (v134 << 8)) ^ 0xFFFF;
          v137 = *v61 - ((v136 * *v61 + ((v136 * *v61) >> 16) + 1) >> 16);
          v138 = v137 | ((HIWORD(*v61) - ((v136 * HIWORD(*v61) + ((v136 * HIWORD(*v61)) >> 16) + 1) >> 16)) << 16);
          v139 = *v30;
          v140 = v139 - (*v34 + v137) + HIWORD(v138);
          v141 = v139 + HIWORD(v138);
          if (v140 >= 0xFFFF)
          {
            LOWORD(v140) = -1;
          }

          if (v141 >= 0xFFFF)
          {
            LOWORD(v141) = -1;
          }

          *v34 = v141 - v140;
          *v30 = v141;
          goto LABEL_166;
        }

        while (1)
        {
          v142 = *v62;
          if (*v62)
          {
            if (!v45)
            {
              goto LABEL_172;
            }

            v143 = *v120 * v142 + ((*v120 * v142) >> 8) + 1;
            if (v143 >= 0x100)
            {
              break;
            }
          }

LABEL_175:
          ++v62;
          v61 += 2;
          v120 += v132;
          ++v34;
          if (!--v133)
          {
            goto LABEL_475;
          }
        }

        v142 = v143 >> 8;
LABEL_172:
        v144 = (v142 | (v142 << 8)) ^ 0xFFFF;
        v145 = *v61 - ((v144 * *v61 + ((v144 * *v61) >> 16) + 1) >> 16);
        v146 = (*v34 ^ 0xFFFF) - v145 + ((v145 | ((HIWORD(*v61) - ((v144 * HIWORD(*v61) + ((v144 * HIWORD(*v61)) >> 16) + 1) >> 16)) << 16)) >> 16);
        if (v146 >= 0xFFFF)
        {
          LOWORD(v146) = -1;
        }

        *v34 = ~v146;
        goto LABEL_175;
      case 12:
        v156 = v45 != 0;
        v157 = v39;
        v120 = v45;
        if (!v50)
        {
          v92 = v469;
          do
          {
            if (*v62 && (!v45 || *v120 * *v62 + ((*v120 * *v62) >> 8) + 1 >= 0x100))
            {
              *v34 = (2 * *v34) | (*v34 >> 15);
            }

            ++v62;
            v120 += v156;
            ++v34;
            --v157;
          }

          while (v157);
          v393 = v451;
          if (!v45)
          {
            v393 = 0;
          }

          v91 = &v45[v463];
LABEL_528:
          v45 = &v91[v393];
          v34 += v464;
          v30 += v466;
          v197 = v470;
          goto LABEL_491;
        }

        while (1)
        {
          v158 = *v62;
          if (*v62)
          {
            if (!v45)
            {
              goto LABEL_193;
            }

            v159 = *v120 * v158 + ((*v120 * v158) >> 8) + 1;
            if (v159 >= 0x100)
            {
              break;
            }
          }

LABEL_198:
          ++v62;
          v61 += 2;
          v120 += v156;
          ++v34;
          ++v30;
          if (!--v157)
          {
            goto LABEL_475;
          }
        }

        v158 = v159 >> 8;
LABEL_193:
        v160 = (v158 | (v158 << 8)) ^ 0xFFFF;
        v161 = *v61 - ((v160 * *v61 + ((v160 * *v61) >> 16) + 1) >> 16);
        v162 = *v34 + v161;
        v163 = *v30 + ((v161 | ((HIWORD(*v61) - ((v160 * HIWORD(*v61) + ((v160 * HIWORD(*v61)) >> 16) + 1) >> 16)) << 16)) >> 16);
        if (v162 >= 0xFFFF)
        {
          LOWORD(v162) = -1;
        }

        if (v163 >= 0xFFFF)
        {
          LOWORD(v163) = -1;
        }

        *v34 = v162;
        *v30 = v163;
        goto LABEL_198;
      case 13:
        v296 = v45;
        while (1)
        {
          v297 = *v62;
          if (*v62)
          {
            if (!v45)
            {
              goto LABEL_357;
            }

            v298 = *v296 * v297 + ((*v296 * v297) >> 8) + 1;
            if (v298 >= 0x100)
            {
              break;
            }
          }

LABEL_366:
          ++v62;
          v61 += 2;
          v296 += v45 != 0;
          ++v34;
          v30 = (v30 + v58);
          LODWORD(v39) = v39 - 1;
          if (!v39)
          {
            v45 = &v296[v463];
LABEL_490:
            v34 += v464;
            v30 += v466;
            v39 = v461;
            v38 = v462;
            v92 = v469;
            v197 = v470;
            v66 = v471;
            goto LABEL_491;
          }
        }

        v297 = v298 >> 8;
LABEL_357:
        v299 = HIWORD(*v61);
        v300 = (v297 | (v297 << 8)) ^ 0xFFFF;
        v301 = v300 * v299 + ((v300 * v299) >> 16) + 1;
        v302 = *v61 - ((v300 * *v61 + ((v300 * *v61) >> 16) + 1) >> 16);
        v303 = v302 | ((v299 - HIWORD(v301)) << 16);
        if (v303 >= 0x10000)
        {
          v304 = HIWORD(v303);
          if (v50)
          {
            if (*v30)
            {
              v303 = PDAmultiplyPDA_8993(*v34, *v30, v302, v304);
              v50 = v473;
              v304 = HIWORD(v303);
            }

            *v34 = v303;
            *v30 = v304;
          }

          else
          {
            v305 = *v34 * ((v304 ^ 0xFFFF) + v302);
            if (v305 <= 0xFFFE8000)
            {
              v306 = v305 + 0x8000;
            }

            else
            {
              v306 = 4294868992;
            }

            *v34 = ((v306 >> 16) + v306) >> 16;
          }
        }

        goto LABEL_366;
      case 14:
        v119 = v39;
        v120 = v45;
        while (1)
        {
          v121 = *v62;
          if (*v62)
          {
            if (v45)
            {
              v122 = *v120 * v121 + ((*v120 * v121) >> 8) + 1;
              if (v122 < 0x100)
              {
                goto LABEL_154;
              }

              v121 = v122 >> 8;
            }

            v123 = (v121 | (v121 << 8)) ^ 0xFFFF;
            v124 = *v61 - ((v123 * *v61 + ((v123 * *v61) >> 16) + 1) >> 16);
            v125 = v124 | ((HIWORD(*v61) - ((v123 * HIWORD(*v61) + ((v123 * HIWORD(*v61)) >> 16) + 1) >> 16)) << 16);
            if (v125 >= 0x10000)
            {
              v126 = HIWORD(v125);
              if (v50)
              {
                v127 = *v30;
                if (!*v30)
                {
LABEL_152:
                  *v34 = v125;
                  *v30 = v126;
                  goto LABEL_154;
                }
              }

              else
              {
                v127 = 0xFFFF;
              }

              v128 = (*v34 ^ 0xFFFFu) * v124 - *v34 + (*v34 << 16);
              if (v128 <= 0xFFFE8000)
              {
                v129 = v128 + 0x8000;
              }

              else
              {
                v129 = 4294868992;
              }

              v130 = (v129 + (v129 >> 16)) >> 16;
              if (!v50)
              {
                *v34 = v130;
                goto LABEL_154;
              }

              v131 = 0xFFFF * (v126 + v127) - v126 * v127;
              if (v131 <= 4294868992)
              {
                v126 = v131 + 0x8000;
              }

              else
              {
                v126 = 4294868992;
              }

              v125 = ((v126 >> 16) + v126) & 0xFFFF0000 | v130;
              LODWORD(v126) = HIWORD(v125);
              goto LABEL_152;
            }
          }

LABEL_154:
          ++v62;
          v61 += 2;
          v120 += v45 != 0;
          ++v34;
          v30 = (v30 + v58);
          if (!--v119)
          {
            goto LABEL_475;
          }
        }

      case 15:
        v213 = v39;
        v98 = v45;
        while (1)
        {
          v214 = *v62;
          if (*v62)
          {
            if (!v45)
            {
              goto LABEL_254;
            }

            v215 = *v98 * v214 + ((*v98 * v214) >> 8) + 1;
            if (v215 >= 0x100)
            {
              break;
            }
          }

LABEL_260:
          ++v62;
          v61 += 2;
          v98 += v45 != 0;
          ++v34;
          v30 = (v30 + v58);
          if (!--v213)
          {
            goto LABEL_489;
          }
        }

        v214 = v215 >> 8;
LABEL_254:
        v216 = HIWORD(*v61);
        v217 = (v214 | (v214 << 8)) ^ 0xFFFF;
        v218 = v217 * v216 + ((v217 * v216) >> 16) + 1;
        v219 = *v61 - ((v217 * *v61 + ((v217 * *v61) >> 16) + 1) >> 16);
        v220 = v219 | ((v216 - HIWORD(v218)) << 16);
        if (v220 >= 0x10000)
        {
          v221 = HIWORD(v220);
          if (v50)
          {
            if (*v30)
            {
              v220 = PDAoverlayPDA_8994(*v34, *v30, v219, v221);
              v50 = v473;
              v221 = HIWORD(v220);
            }

            *v34 = v220;
            *v30 = v221;
          }

          else
          {
            v222 = PDAoverlayPDA_8994(*v34, 0xFFFFu, v219, v221);
            v50 = v473;
            *v34 = v222;
          }
        }

        goto LABEL_260;
      case 16:
        v109 = v39;
        v98 = v45;
        while (1)
        {
          v110 = *v62;
          if (*v62)
          {
            if (!v45)
            {
              goto LABEL_126;
            }

            v111 = *v98 * v110 + ((*v98 * v110) >> 8) + 1;
            if (v111 >= 0x100)
            {
              break;
            }
          }

LABEL_132:
          ++v62;
          v61 += 2;
          v98 += v45 != 0;
          ++v34;
          v30 = (v30 + v58);
          if (!--v109)
          {
            goto LABEL_489;
          }
        }

        v110 = v111 >> 8;
LABEL_126:
        v112 = HIWORD(*v61);
        v113 = (v110 | (v110 << 8)) ^ 0xFFFF;
        v114 = v113 * v112 + ((v113 * v112) >> 16) + 1;
        v115 = *v61 - ((v113 * *v61 + ((v113 * *v61) >> 16) + 1) >> 16);
        v116 = v115 | ((v112 - HIWORD(v114)) << 16);
        if (v116 >= 0x10000)
        {
          v117 = HIWORD(v116);
          if (v50)
          {
            if (*v30)
            {
              v116 = PDAdarkenPDA_8996(*v34, *v30, v115, v117);
              v50 = v473;
              v117 = HIWORD(v116);
            }

            *v34 = v116;
            *v30 = v117;
          }

          else
          {
            v118 = PDAdarkenPDA_8996(*v34, 0xFFFFu, v115, v117);
            v50 = v473;
            *v34 = v118;
          }
        }

        goto LABEL_132;
      case 17:
        v258 = v39;
        v98 = v45;
        while (1)
        {
          v259 = *v62;
          if (*v62)
          {
            if (!v45)
            {
              goto LABEL_310;
            }

            v260 = *v98 * v259 + ((*v98 * v259) >> 8) + 1;
            if (v260 >= 0x100)
            {
              break;
            }
          }

LABEL_316:
          ++v62;
          v61 += 2;
          v98 += v45 != 0;
          ++v34;
          v30 = (v30 + v58);
          if (!--v258)
          {
            goto LABEL_489;
          }
        }

        v259 = v260 >> 8;
LABEL_310:
        v261 = HIWORD(*v61);
        v262 = (v259 | (v259 << 8)) ^ 0xFFFF;
        v263 = v262 * v261 + ((v262 * v261) >> 16) + 1;
        v264 = *v61 - ((v262 * *v61 + ((v262 * *v61) >> 16) + 1) >> 16);
        v265 = v264 | ((v261 - HIWORD(v263)) << 16);
        if (v265 >= 0x10000)
        {
          v266 = HIWORD(v265);
          if (v50)
          {
            if (*v30)
            {
              v265 = PDAlightenPDA_8995(*v34, *v30, v264, v266);
              v50 = v473;
              v266 = HIWORD(v265);
            }

            *v34 = v265;
            *v30 = v266;
          }

          else
          {
            v267 = PDAlightenPDA_8995(*v34, 0xFFFFu, v264, v266);
            v50 = v473;
            *v34 = v267;
          }
        }

        goto LABEL_316;
      case 18:
        v317 = v39;
        v98 = v45;
        while (1)
        {
          v318 = *v62;
          if (*v62)
          {
            if (!v45)
            {
              goto LABEL_385;
            }

            v319 = *v98 * v318 + ((*v98 * v318) >> 8) + 1;
            if (v319 >= 0x100)
            {
              break;
            }
          }

LABEL_391:
          ++v62;
          v61 += 2;
          v98 += v45 != 0;
          ++v34;
          v30 = (v30 + v58);
          if (!--v317)
          {
            goto LABEL_489;
          }
        }

        v318 = v319 >> 8;
LABEL_385:
        v320 = HIWORD(*v61);
        v321 = (v318 | (v318 << 8)) ^ 0xFFFF;
        v322 = v321 * v320 + ((v321 * v320) >> 16) + 1;
        v323 = *v61 - ((v321 * *v61 + ((v321 * *v61) >> 16) + 1) >> 16);
        v324 = v323 | ((v320 - HIWORD(v322)) << 16);
        if (v324 >= 0x10000)
        {
          if (v50)
          {
            v325 = HIWORD(v324);
            if (*v30)
            {
              v324 = PDAcolordodgePDA_8997(*v34, *v30, v323, v325);
              v50 = v473;
              v325 = HIWORD(v324);
            }

            *v34 = v324;
            *v30 = v325;
          }

          else
          {
            v326 = PDAcolordodgePDA_8997(*v34, 0xFFFFu, v323, HIWORD(v324));
            v50 = v473;
            *v34 = v326;
          }
        }

        goto LABEL_391;
      case 19:
        v357 = v39;
        v98 = v45;
        while (1)
        {
          v358 = *v62;
          if (*v62)
          {
            if (!v45)
            {
              goto LABEL_440;
            }

            v359 = *v98 * v358 + ((*v98 * v358) >> 8) + 1;
            if (v359 >= 0x100)
            {
              break;
            }
          }

LABEL_446:
          ++v62;
          v61 += 2;
          v98 += v45 != 0;
          ++v34;
          v30 = (v30 + v58);
          if (!--v357)
          {
            goto LABEL_489;
          }
        }

        v358 = v359 >> 8;
LABEL_440:
        v360 = HIWORD(*v61);
        v361 = (v358 | (v358 << 8)) ^ 0xFFFF;
        v362 = v361 * v360 + ((v361 * v360) >> 16) + 1;
        v363 = *v61 - ((v361 * *v61 + ((v361 * *v61) >> 16) + 1) >> 16);
        v364 = v363 | ((v360 - HIWORD(v362)) << 16);
        if (v364 >= 0x10000)
        {
          if (v50)
          {
            v365 = HIWORD(v364);
            if (*v30)
            {
              v364 = PDAcolorburnPDA_8998(*v34, *v30, v363, v365);
              v50 = v473;
              v365 = HIWORD(v364);
            }

            *v34 = v364;
            *v30 = v365;
          }

          else
          {
            v366 = PDAcolorburnPDA_8998(*v34, 0xFFFFu, v363, HIWORD(v364));
            v50 = v473;
            *v34 = v366;
          }
        }

        goto LABEL_446;
      case 20:
        v268 = v39;
        v98 = v45;
        while (1)
        {
          v269 = *v62;
          if (*v62)
          {
            if (!v45)
            {
              goto LABEL_323;
            }

            v270 = *v98 * v269 + ((*v98 * v269) >> 8) + 1;
            if (v270 >= 0x100)
            {
              break;
            }
          }

LABEL_329:
          ++v62;
          v61 += 2;
          v98 += v45 != 0;
          ++v34;
          v30 = (v30 + v58);
          if (!--v268)
          {
            goto LABEL_489;
          }
        }

        v269 = v270 >> 8;
LABEL_323:
        v271 = HIWORD(*v61);
        v272 = (v269 | (v269 << 8)) ^ 0xFFFF;
        v273 = v272 * v271 + ((v272 * v271) >> 16) + 1;
        v274 = *v61 - ((v272 * *v61 + ((v272 * *v61) >> 16) + 1) >> 16);
        v275 = v274 | ((v271 - HIWORD(v273)) << 16);
        if (v275 >= 0x10000)
        {
          v276 = HIWORD(v275);
          if (v50)
          {
            if (*v30)
            {
              v275 = PDAsoftlightPDA_9000(*v34, *v30, v274, v276);
              v50 = v473;
              v276 = HIWORD(v275);
            }

            *v34 = v275;
            *v30 = v276;
          }

          else
          {
            v277 = PDAsoftlightPDA_9000(*v34, 0xFFFFu, v274, v276);
            v50 = v473;
            *v34 = v277;
          }
        }

        goto LABEL_329;
      case 21:
        v286 = v39;
        v98 = v45;
        while (1)
        {
          v287 = *v62;
          if (*v62)
          {
            if (!v45)
            {
              goto LABEL_344;
            }

            v288 = *v98 * v287 + ((*v98 * v287) >> 8) + 1;
            if (v288 >= 0x100)
            {
              break;
            }
          }

LABEL_350:
          ++v62;
          v61 += 2;
          v98 += v45 != 0;
          ++v34;
          v30 = (v30 + v58);
          if (!--v286)
          {
            goto LABEL_489;
          }
        }

        v287 = v288 >> 8;
LABEL_344:
        v289 = HIWORD(*v61);
        v290 = (v287 | (v287 << 8)) ^ 0xFFFF;
        v291 = v290 * v289 + ((v290 * v289) >> 16) + 1;
        v292 = *v61 - ((v290 * *v61 + ((v290 * *v61) >> 16) + 1) >> 16);
        v293 = v292 | ((v289 - HIWORD(v291)) << 16);
        if (v293 >= 0x10000)
        {
          if (v50)
          {
            v294 = HIWORD(v293);
            if (*v30)
            {
              v293 = PDAhardlightPDA_8999(*v34, *v30, v292, v294);
              v50 = v473;
              v294 = HIWORD(v293);
            }

            *v34 = v293;
            *v30 = v294;
          }

          else
          {
            v295 = PDAhardlightPDA_8999(*v34, 0xFFFFu, v292, HIWORD(v293));
            v50 = v473;
            *v34 = v295;
          }
        }

        goto LABEL_350;
      case 22:
        v347 = v39;
        v98 = v45;
        while (1)
        {
          v348 = *v62;
          if (*v62)
          {
            if (!v45)
            {
              goto LABEL_427;
            }

            v349 = *v98 * v348 + ((*v98 * v348) >> 8) + 1;
            if (v349 >= 0x100)
            {
              break;
            }
          }

LABEL_433:
          ++v62;
          v61 += 2;
          v98 += v45 != 0;
          ++v34;
          v30 = (v30 + v58);
          if (!--v347)
          {
            goto LABEL_489;
          }
        }

        v348 = v349 >> 8;
LABEL_427:
        v350 = HIWORD(*v61);
        v351 = (v348 | (v348 << 8)) ^ 0xFFFF;
        v352 = v351 * v350 + ((v351 * v350) >> 16) + 1;
        v353 = *v61 - ((v351 * *v61 + ((v351 * *v61) >> 16) + 1) >> 16);
        v354 = v353 | ((v350 - HIWORD(v352)) << 16);
        if (v354 >= 0x10000)
        {
          v355 = HIWORD(v354);
          if (v50)
          {
            if (*v30)
            {
              v354 = PDAdifferencePDA_9001(*v34, *v30, v353, v355);
              v50 = v473;
              v355 = HIWORD(v354);
            }

            *v34 = v354;
            *v30 = v355;
          }

          else
          {
            v356 = PDAdifferencePDA_9001(*v34, 0xFFFFu, v353, v355);
            v50 = v473;
            *v34 = v356;
          }
        }

        goto LABEL_433;
      case 23:
        v367 = v39;
        v120 = v45;
        while (1)
        {
          v368 = *v62;
          if (*v62)
          {
            if (v45)
            {
              v369 = *v120 * v368 + ((*v120 * v368) >> 8) + 1;
              if (v369 < 0x100)
              {
                goto LABEL_474;
              }

              v368 = v369 >> 8;
            }

            v370 = (v368 | (v368 << 8)) ^ 0xFFFF;
            v371 = *v61 - ((v370 * *v61 + ((v370 * *v61) >> 16) + 1) >> 16);
            v372 = v371 | ((HIWORD(*v61) - ((v370 * HIWORD(*v61) + ((v370 * HIWORD(*v61)) >> 16) + 1) >> 16)) << 16);
            if (v372 >= 0x10000)
            {
              v373 = HIWORD(v372);
              if (v50)
              {
                v374 = *v30;
                if (!*v30)
                {
LABEL_472:
                  *v34 = v372;
                  *v30 = v373;
                  goto LABEL_474;
                }
              }

              else
              {
                v374 = 0xFFFF;
              }

              if (v371 >= HIWORD(v372))
              {
                v375 = v373;
              }

              else
              {
                v375 = v371;
              }

              if (*v34 >= v374)
              {
                v376 = v374;
              }

              else
              {
                v376 = *v34;
              }

              v377 = 0xFFFF * (v376 + v375) - 2 * v375 * v376;
              if (v377 <= 4294868992)
              {
                v378 = v377 + 0x8000;
              }

              else
              {
                v378 = 4294868992;
              }

              v379 = v378 + (v378 >> 16);
              if (!v50)
              {
                *v34 = WORD1(v379);
                goto LABEL_474;
              }

              v380 = v379 >> 16;
              v381 = 0xFFFF * (v374 + v373) - v374 * v373;
              if (v381 <= 4294868992)
              {
                v382 = v381 + 0x8000;
              }

              else
              {
                v382 = 4294868992;
              }

              v372 = ((v382 >> 16) + v382) & 0xFFFF0000 | v380;
              v373 = HIWORD(v372);
              goto LABEL_472;
            }
          }

LABEL_474:
          ++v62;
          v61 += 2;
          v120 += v45 != 0;
          ++v34;
          v30 = (v30 + v58);
          if (!--v367)
          {
LABEL_475:
            v45 = &v120[v463];
            v34 += v464;
            v30 += v466;
LABEL_476:
            v92 = v469;
            v197 = v470;
            goto LABEL_491;
          }
        }

      case 24:
        v182 = v39;
        v98 = v45;
        while (1)
        {
          v183 = *v62;
          if (*v62)
          {
            if (!v45)
            {
              goto LABEL_226;
            }

            v184 = *v98 * v183 + ((*v98 * v183) >> 8) + 1;
            if (v184 >= 0x100)
            {
              break;
            }
          }

LABEL_232:
          ++v62;
          v61 += 2;
          v98 += v45 != 0;
          ++v34;
          v30 = (v30 + v58);
          if (!--v182)
          {
            goto LABEL_489;
          }
        }

        v183 = v184 >> 8;
LABEL_226:
        v185 = HIWORD(*v61);
        v186 = (v183 | (v183 << 8)) ^ 0xFFFF;
        v187 = v186 * v185 + ((v186 * v185) >> 16) + 1;
        v188 = *v61 - ((v186 * *v61 + ((v186 * *v61) >> 16) + 1) >> 16);
        v189 = v188 | ((v185 - HIWORD(v187)) << 16);
        if (v189 >= 0x10000)
        {
          v190 = HIWORD(v189);
          if (v50)
          {
            if (*v30)
            {
              v189 = PDAhuePDA_9002(*v34, *v30, v188, v190);
              v50 = v473;
              v190 = HIWORD(v189);
            }

            *v34 = v189;
            *v30 = v190;
          }

          else
          {
            v191 = PDAhuePDA_9002(*v34, 0xFFFFu, v188, v190);
            v50 = v473;
            *v34 = v191;
          }
        }

        goto LABEL_232;
      case 25:
        v172 = v39;
        v98 = v45;
        while (1)
        {
          v173 = *v62;
          if (*v62)
          {
            if (!v45)
            {
              goto LABEL_213;
            }

            v174 = *v98 * v173 + ((*v98 * v173) >> 8) + 1;
            if (v174 >= 0x100)
            {
              break;
            }
          }

LABEL_219:
          ++v62;
          v61 += 2;
          v98 += v45 != 0;
          ++v34;
          v30 = (v30 + v58);
          if (!--v172)
          {
            goto LABEL_489;
          }
        }

        v173 = v174 >> 8;
LABEL_213:
        v175 = HIWORD(*v61);
        v176 = (v173 | (v173 << 8)) ^ 0xFFFF;
        v177 = v176 * v175 + ((v176 * v175) >> 16) + 1;
        v178 = *v61 - ((v176 * *v61 + ((v176 * *v61) >> 16) + 1) >> 16);
        v179 = v178 | ((v175 - HIWORD(v177)) << 16);
        if (v179 >= 0x10000)
        {
          v180 = HIWORD(v179);
          if (v50)
          {
            if (*v30)
            {
              v179 = PDAhuePDA_9002(*v34, *v30, v178, v180);
              v50 = v473;
              v180 = HIWORD(v179);
            }

            *v34 = v179;
            *v30 = v180;
          }

          else
          {
            v181 = PDAhuePDA_9002(*v34, 0xFFFFu, v178, v180);
            v50 = v473;
            *v34 = v181;
          }
        }

        goto LABEL_219;
      case 26:
        v383 = v39;
        v98 = v45;
        while (1)
        {
          v384 = *v62;
          if (*v62)
          {
            if (!v45)
            {
              goto LABEL_482;
            }

            v385 = *v98 * v384 + ((*v98 * v384) >> 8) + 1;
            if (v385 >= 0x100)
            {
              break;
            }
          }

LABEL_488:
          ++v62;
          v61 += 2;
          v98 += v45 != 0;
          ++v34;
          v30 = (v30 + v58);
          if (!--v383)
          {
            goto LABEL_489;
          }
        }

        v384 = v385 >> 8;
LABEL_482:
        v386 = HIWORD(*v61);
        v387 = (v384 | (v384 << 8)) ^ 0xFFFF;
        v388 = v387 * v386 + ((v387 * v386) >> 16) + 1;
        v389 = *v61 - ((v387 * *v61 + ((v387 * *v61) >> 16) + 1) >> 16);
        v390 = v389 | ((v386 - HIWORD(v388)) << 16);
        if (v390 >= 0x10000)
        {
          if (v50)
          {
            v391 = HIWORD(v390);
            if (*v30)
            {
              v390 = PDAluminosityPDA_9004(v389, v391, *v34, *v30);
              v50 = v473;
              v391 = HIWORD(v390);
            }

            *v34 = v390;
            *v30 = v391;
          }

          else
          {
            v392 = PDAluminosityPDA_9004(v389, HIWORD(v390), *v34, 0xFFFFu);
            v50 = v473;
            *v34 = v392;
          }
        }

        goto LABEL_488;
      case 27:
        v97 = v39;
        v98 = v45;
        v99 = v97;
        break;
      default:
        goto LABEL_476;
    }

    while (1)
    {
      v100 = *v62;
      if (*v62)
      {
        if (!v45)
        {
          goto LABEL_109;
        }

        v101 = *v98 * v100 + ((*v98 * v100) >> 8) + 1;
        if (v101 >= 0x100)
        {
          break;
        }
      }

LABEL_119:
      ++v62;
      v61 += 2;
      v98 += v45 != 0;
      ++v34;
      v30 = (v30 + v58);
      if (!--v99)
      {
LABEL_489:
        v45 = &v98[v463];
        goto LABEL_490;
      }
    }

    v100 = v101 >> 8;
LABEL_109:
    v102 = HIWORD(*v61);
    v103 = (v100 | (v100 << 8)) ^ 0xFFFF;
    v104 = v103 * v102 + ((v103 * v102) >> 16) + 1;
    v105 = *v61 - ((v103 * *v61 + ((v103 * *v61) >> 16) + 1) >> 16);
    v106 = v105 | ((v102 - HIWORD(v104)) << 16);
    if (v106 >= 0x10000)
    {
      v107 = HIWORD(v106);
      if (v50)
      {
        if (*v30)
        {
          v106 = PDAluminosityPDA_9004(*v34, *v30, v105, v107);
          v50 = v473;
          v107 = HIWORD(v106);
        }

        *v34 = v106;
        *v30 = v107;
      }

      else
      {
        if (v105 >= HIWORD(v106))
        {
          LOWORD(v105) = (v105 | ((v102 - HIWORD(v104)) << 16)) >> 16;
        }

        v108 = *v34 * (v107 ^ 0xFFFF) + 0x8000;
        if (v107 == 0xFFFF)
        {
          v108 = 0x8000;
        }

        *v34 = v105 + (((v108 >> 16) + v108) >> 16);
      }
    }

    goto LABEL_119;
  }
}

uint64_t PDAmultiplyPDA_8993(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = (a2 ^ 0xFFFF) * a3;
  if (a2 == 0xFFFF)
  {
    v4 = 0;
  }

  v5 = v4 + ((a4 ^ 0xFFFF) + a3) * a1;
  v6 = 0xFFFF * (a4 + a2) - a4 * a2;
  if (v5 <= 0xFFFE8000)
  {
    v7 = v5 + 0x8000;
  }

  else
  {
    v7 = 4294868992;
  }

  v8 = (v7 + (v7 >> 16)) >> 16;
  if (v6 <= 4294868992)
  {
    v9 = v6 + 0x8000;
  }

  else
  {
    v9 = 4294868992;
  }

  return ((v9 >> 16) + v9) & 0xFFFF0000 | v8;
}

uint64_t PDAoverlayPDA_8994(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (a3 >= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a3;
  }

  if (a1 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
  }

  v6 = 2 * v5 * v4;
  v7 = a4 * a2;
  v8 = (a4 + 0xFFFF) * v5 + (a2 + 0xFFFF) * v4 - (v7 + v6);
  v9 = (a2 ^ 0xFFFF) * v4 + (a4 ^ 0xFFFF) * v5 + v6;
  if (v5 >= (a2 + 1) >> 1)
  {
    v9 = v8;
  }

  v10 = 0xFFFF * (a4 + a2) - v7;
  v11 = v9 + 0x8000;
  if (v9 > 4294868992)
  {
    v11 = 4294868992;
  }

  v12 = (v11 + (v11 >> 16)) >> 16;
  if (v10 <= 4294868992)
  {
    v13 = v10 + 0x8000;
  }

  else
  {
    v13 = 4294868992;
  }

  return ((v13 >> 16) + v13) & 0xFFFF0000 | v12;
}

uint64_t PDAlightenPDA_8995(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (a3 >= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a3;
  }

  if (a1 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
  }

  v6 = a4 * v5;
  if (v4 * a2 > v6)
  {
    v6 = v4 * a2;
  }

  v7 = (a4 ^ 0xFFFF) * v5;
  if (a4 == 0xFFFF)
  {
    v7 = 0;
  }

  v8 = v6 + v7;
  v9 = (a2 ^ 0xFFFF) * v4;
  if (a2 == 0xFFFF)
  {
    v9 = 0;
  }

  v10 = v8 + v9;
  v11 = 0xFFFF * (a4 + a2) - a4 * a2;
  if (v10 <= 0xFFFE8000)
  {
    v12 = v10 + 0x8000;
  }

  else
  {
    v12 = 4294868992;
  }

  v13 = (v12 + (v12 >> 16)) >> 16;
  if (v11 <= 4294868992)
  {
    v14 = v11 + 0x8000;
  }

  else
  {
    v14 = 4294868992;
  }

  return ((v14 >> 16) + v14) & 0xFFFF0000 | v13;
}

uint64_t PDAdarkenPDA_8996(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (a3 >= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a3;
  }

  if (a1 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
  }

  v6 = a4 * v5;
  if (v4 * a2 < v6)
  {
    v6 = v4 * a2;
  }

  v7 = (a4 ^ 0xFFFF) * v5;
  if (a4 == 0xFFFF)
  {
    v7 = 0;
  }

  v8 = v6 + v7;
  v9 = (a2 ^ 0xFFFF) * v4;
  if (a2 == 0xFFFF)
  {
    v9 = 0;
  }

  v10 = v8 + v9;
  v11 = 0xFFFF * (a4 + a2) - a4 * a2;
  if (v10 <= 0xFFFE8000)
  {
    v12 = v10 + 0x8000;
  }

  else
  {
    v12 = 4294868992;
  }

  v13 = (v12 + (v12 >> 16)) >> 16;
  if (v11 <= 4294868992)
  {
    v14 = v11 + 0x8000;
  }

  else
  {
    v14 = 4294868992;
  }

  return ((v14 >> 16) + v14) & 0xFFFF0000 | v13;
}

uint64_t PDAcolordodgePDA_8997(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (a1 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = a1;
  }

  if (a3 >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a3;
  }

  if (v4)
  {
    if (a3 >= a4)
    {
      v6 = 4294836225;
    }

    else
    {
      v6 = (a4 * v4 * a4) / (a4 - v5);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = (a4 ^ 0xFFFF) * v4;
  if (a4 == 0xFFFF)
  {
    v7 = 0;
  }

  v8 = (a2 ^ 0xFFFF) * v5;
  if (a2 == 0xFFFF)
  {
    v8 = 0;
  }

  v9 = v8 + v7 + v6;
  v10 = 0xFFFF * (a4 + a2) - a4 * a2;
  if (v9 >= v10)
  {
    v9 = 0xFFFF * (a4 + a2) - a4 * a2;
  }

  if (v9 <= 4294868992)
  {
    v11 = v9 + 0x8000;
  }

  else
  {
    v11 = 4294868992;
  }

  v12 = (v11 + (v11 >> 16)) >> 16;
  if (v10 <= 4294868992)
  {
    v13 = v10 + 0x8000;
  }

  else
  {
    v13 = 4294868992;
  }

  return ((v13 >> 16) + v13) & 0xFFFF0000 | v12;
}

uint64_t PDAcolorburnPDA_8998(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = 4294868992;
  if (a3 >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a3;
  }

  if (a1 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = (a4 ^ 0xFFFF) * v6;
  if (a4 == 0xFFFF)
  {
    v7 = 0;
  }

  v8 = v7 + a4 * a2;
  if (a2 == 0xFFFF)
  {
    v9 = 0;
  }

  else
  {
    v9 = (a2 ^ 0xFFFF) * v5;
  }

  v10 = v8 + v9;
  if (a2 > a1)
  {
    if (!v5)
    {
      v12 = 0x8000;
      goto LABEL_17;
    }

    v11 = v10 - (a4 * a4 * (a2 - v6)) / v5;
    v10 = v11 & ~(v11 >> 63);
  }

  v12 = v10 + 0x8000;
  if (v10 > 0xFFFE8000)
  {
    v12 = 4294868992;
  }

LABEL_17:
  v13 = 0xFFFF * (a4 + a2) - a4 * a2;
  if (v13 <= 4294868992)
  {
    v4 = v13 + 0x8000;
  }

  return ((v4 >> 16) + v4) & 0xFFFF0000 | ((v12 + (v12 >> 16)) >> 16);
}

uint64_t PDAhardlightPDA_8999(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (a3 >= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a3;
  }

  if (a1 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
  }

  v6 = 2 * v5 * v4;
  v7 = a4 * a2;
  v8 = (a2 ^ 0xFFFF) * v4 + (a4 ^ 0xFFFF) * v5 + v6;
  v9 = (a4 + 0xFFFF) * v5 + (a2 + 0xFFFF) * v4 - (v7 + v6);
  if (v4 > (a4 + 1) >> 1)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v11 = 0xFFFF * (a4 + a2) - v7;
  v12 = v10 + 0x8000;
  if (v10 > 4294868992)
  {
    v12 = 4294868992;
  }

  v13 = (v12 + (v12 >> 16)) >> 16;
  if (v11 <= 4294868992)
  {
    v14 = v11 + 0x8000;
  }

  else
  {
    v14 = 4294868992;
  }

  return ((v14 >> 16) + v14) & 0xFFFF0000 | v13;
}

uint64_t PDAsoftlightPDA_9000(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (a3 >= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a3;
  }

  if (a1 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
  }

  if (a2)
  {
    v6 = 2 * v5 * v4 - (v5 * v5 * (2 * v4 - a4)) / a2;
    v7 = v6 & ~(v6 >> 63);
  }

  else
  {
    v7 = 0;
  }

  v8 = (a4 ^ 0xFFFF) * v5;
  if (a4 == 0xFFFF)
  {
    v8 = 0;
  }

  v9 = (a2 ^ 0xFFFF) * v4;
  if (a2 == 0xFFFF)
  {
    v9 = 0;
  }

  v10 = v9 + v8 + v7;
  v11 = 0xFFFF * (a4 + a2) - a4 * a2;
  v12 = v10 + 0x8000;
  if (v10 > 0xFFFE8000)
  {
    v12 = 4294868992;
  }

  v13 = (v12 + (v12 >> 16)) >> 16;
  if (v11 <= 4294868992)
  {
    v14 = v11 + 0x8000;
  }

  else
  {
    v14 = 4294868992;
  }

  return ((v14 >> 16) + v14) & 0xFFFF0000 | v13;
}

uint64_t PDAdifferencePDA_9001(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (a3 >= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a3;
  }

  if (a1 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
  }

  v6 = a4 * v5 - v4 * a2;
  v7 = 0xFFFF * (v4 + v5) - v4 * a2 - a4 * v5;
  if (v6 >= 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = -v6;
  }

  v9 = v7 + v8;
  v10 = 0xFFFF * (a4 + a2) - a4 * a2;
  if (v9 <= 4294868992)
  {
    v11 = v9 + 0x8000;
  }

  else
  {
    v11 = 4294868992;
  }

  v12 = (v11 + (v11 >> 16)) >> 16;
  if (v10 <= 4294868992)
  {
    v13 = v10 + 0x8000;
  }

  else
  {
    v13 = 4294868992;
  }

  return ((v13 >> 16) + v13) & 0xFFFF0000 | v12;
}

uint64_t PDAhuePDA_9002(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (a1 >= a2)
  {
    LODWORD(v4) = a2;
  }

  else
  {
    LODWORD(v4) = a1;
  }

  v5 = (a4 ^ 0xFFFF) * v4;
  if (a4 == 0xFFFF)
  {
    v5 = 0;
  }

  else
  {
    v4 = (a4 * v4 + 0x8000 + ((a4 * v4 + 0x8000) >> 16)) >> 16;
  }

  if (a3 >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a3;
  }

  v7 = (a2 ^ 0xFFFF) * v6;
  if (a2 == 0xFFFF)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v9 = v5 + v8;
  if (v9 <= 0xFFFE8000)
  {
    v10 = v9 + 0x8000;
  }

  else
  {
    v10 = 4294868992;
  }

  return (((v10 + (v10 >> 16)) >> 16) + v4) | ((a4 + a2 - ((((a4 * a2 + 0x8000) >> 16) + a4 * a2 + 0x8000) >> 16)) << 16);
}

uint64_t PDAluminosityPDA_9004(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (a3 >= a4)
  {
    LODWORD(v4) = a4;
  }

  else
  {
    LODWORD(v4) = a3;
  }

  if (a1 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
  }

  v6 = (a4 ^ 0xFFFF) * v5;
  if (a4 == 0xFFFF)
  {
    v6 = 0;
  }

  if (a2 != 0xFFFF)
  {
    v6 += (a2 ^ 0xFFFF) * v4;
    v4 = (v4 * a2 + 0x8000 + ((v4 * a2 + 0x8000) >> 16)) >> 16;
  }

  v7 = v6 + 0x8000;
  if (v6 > 0xFFFE8000)
  {
    v7 = 4294868992;
  }

  return (((v7 + (v7 >> 16)) >> 16) + v4) | ((a4 + a2 - ((((a4 * a2 + 0x8000) >> 16) + a4 * a2 + 0x8000) >> 16)) << 16);
}

void w16_shade_axial_W(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 280);
  v5 = *(a1 + 296) + ((*(a1 + 288) * (*(*(a1 + 272) + 4) * a3)) + (v4 * (*(*(a1 + 272) + 4) * a2)));
  v7 = *(a1 + 336);
  v8 = *(a1 + 344);
  v9 = *(a1 + 304);
  v10 = *(a1 + 308);
  v11 = *(a1 + 320);
  v12 = *(a1 + 324);
  v15 = a1 + 144;
  v13 = *(a1 + 144);
  v14 = *(v15 + 8);
  v16 = *(a1 + 376);
  v17 = *(a1 + 360);
  if (v4 != 0.0)
  {
    while (1)
    {
      v19 = v11;
      if (v5 >= v9)
      {
        v19 = v12;
        if (v5 <= v10)
        {
          v19 = (v8 * (v5 - v7));
        }
      }

      if ((v19 & 0x80000000) == 0)
      {
        break;
      }

      v20 = v16;
      if (v16)
      {
        goto LABEL_17;
      }

LABEL_18:
      v5 = v4 + v5;
      ++v14;
      *v13 = v20;
      v13 = (v13 + 1);
      if (!--a4)
      {
        return;
      }
    }

    v20 = (v17 + 2 * (2 * v19));
LABEL_17:
    *v14 = *v20;
    LOBYTE(v20) = -1;
    goto LABEL_18;
  }

  if (v5 >= v9)
  {
    v11 = v12;
    if (v5 <= v10)
    {
      v11 = (v8 * (v5 - v7));
    }
  }

  if ((v11 & 0x80000000) == 0 || v16)
  {
    v21 = (v17 + 2 * (2 * v11));
    if (v11 < 0)
    {
      v21 = v16;
    }

    v22 = *v21;
    v23 = a4 + 4;
    do
    {
      *v14 = v22;
      v14[1] = v22;
      v14[2] = v22;
      v14[3] = v22;
      v14 += 4;
      v23 -= 4;
      *v13++ = -1;
    }

    while (v23 > 4);
  }

  else
  {
    if (a4 >= 4)
    {
      v18 = 4;
    }

    else
    {
      v18 = a4;
    }

    bzero(v13, ((a4 - v18 + 3) & 0xFFFFFFFC) + 4);
  }
}

uint64_t w16_shade_custom_W(uint64_t result, uint64_t a2, uint64_t a3, int a4, double a5, int32x4_t a6)
{
  v6 = *(*(result + 272) + 4);
  _S2 = v6 * a2;
  _D0 = *(result + 280);
  *a6.i32 = *(result + 296) + ((*(result + 288) * (v6 * a3)) + (_D0.f32[0] * _S2));
  __asm { FMLA            S3, S2, V0.S[1] }

  *&v14 = *(result + 300) + _S3;
  v15 = *(result + 304);
  v16 = *(result + 336);
  v17 = *(result + 348);
  v18 = *(result + 344);
  v19 = *(result + 356);
  v20 = *(result + 376);
  v21 = *(result + 360);
  v22 = 2 * *(result + 48);
  v24 = *(result + 144);
  v23 = *(result + 152);
  a6.i32[1] = v14;
  do
  {
    v25 = vzip1q_s32(a6, a6);
    if ((vmaxv_u16(vtrn2_s16(vrev32_s16(vmovn_s32(vcgtq_f32(v15, v25))), vmovn_s32(vcgtq_f32(v25, v15)))) & 1) == 0)
    {
      v26 = (v21 + 2 * v22 * (v19 * (*&a6.i32[1] - v17)) + 4 * (v18 * (*a6.i32 - v16)));
LABEL_6:
      *v23 = *v26;
      LOBYTE(v26) = -1;
      goto LABEL_7;
    }

    v26 = v20;
    if (v20)
    {
      goto LABEL_6;
    }

LABEL_7:
    *a6.i8 = vadd_f32(_D0, *a6.i8);
    ++v23;
    *v24++ = v26;
    --a4;
  }

  while (a4);
  return result;
}

void w16_shade_conic_W(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 280);
  v5 = *(*(a1 + 272) + 4);
  v6 = v5 * a2;
  v7 = v5 * a3;
  v8 = *(a1 + 296) + ((*(a1 + 288) * v7) + (v4 * v6));
  v9 = *(a1 + 284);
  v10 = *(a1 + 300) + ((v7 * *(a1 + 292)) + (v9 * v6));
  v27 = *(a1 + 336);
  v28 = *(a1 + 304);
  v12 = *(a1 + 344);
  v13 = *(a1 + 360);
  v15 = *(a1 + 144);
  v14 = *(a1 + 152);
  v26 = *(a1 + 308) - v28;
  do
  {
    v16 = v12 * ((v28 + (((atan2f(v10, v8) * 0.15915) + 0.5) * v26)) - v27);
    v17 = vcvtms_s32_f32(v16);
    v18 = vcvtms_s32_f32(v12 + v16);
    v19 = ceilf(v16);
    v20 = v16 - floorf(v16);
    if (v16 < 0.0)
    {
      v17 = v18;
    }

    v21 = v16 <= v12;
    v22 = (v20 * 255.0) + 0.5;
    v23 = ceilf(v16 - v12);
    if (v21)
    {
      v23 = v19;
    }

    v24 = v22;
    v25 = (v13 + 4 * v23);
    *v14++ = ((v24 * v25[1] + (255 - v24) * *(v13 + 2 * (2 * v17) + 2)) << 8) & 0xFFFF0000 | ((v24 * *v25 + (255 - v24) * *(v13 + 2 * (2 * v17))) >> 8);
    v8 = v4 + v8;
    v10 = v9 + v10;
    *v15++ = -1;
    --a4;
  }

  while (a4);
}

void w16_shade_radial_W(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 280);
  v5 = *(a1 + 284);
  v6 = *(*(a1 + 272) + 4);
  v7 = v6 * a2;
  v8 = v6 * a3;
  v9 = *(a1 + 296) + ((*(a1 + 288) * v8) + (v4 * v7));
  v10 = *(a1 + 300) + ((v8 * *(a1 + 292)) + (v5 * v7));
  v12 = *(a1 + 400);
  v13 = *(a1 + 336);
  v14 = *(a1 + 344);
  v15 = *(a1 + 304);
  v16 = *(a1 + 308);
  v17 = *(a1 + 324);
  v18 = v12[2];
  v19 = v12[4];
  v20 = v12[5];
  v21 = v12[7];
  v24 = a1 + 144;
  v22 = *(a1 + 144);
  v23 = *(v24 + 8);
  v25 = *(a1 + 376);
  v26 = *(a1 + 360);
  if (v18 != 0.0 || v21 != 0.0 || v5 != 0.0)
  {
    v30 = *(a1 + 320);
    v31 = v12[3];
    v32 = v12[8];
    v33 = -v12[6];
    v34 = v16 - v15;
    while (1)
    {
      v35 = v33 + ((v9 + v9) * v18);
      v36 = ((v10 * v10) + (v9 * v9)) - v21;
      if (v20 == 0.0)
      {
        v43 = v36 / v35;
      }

      else
      {
        v37 = ((v20 * -4.0) * v36) + (v35 * v35);
        if (v37 < 0.0)
        {
          goto LABEL_39;
        }

        v38 = sqrtf(v37);
        v39 = v32 * (v35 - v38);
        v40 = v35 + v38;
        v41 = v32 * v40;
        v42 = (v32 * v40) <= v39;
        if ((v32 * v40) <= v39)
        {
          v43 = v32 * v40;
        }

        else
        {
          v43 = v39;
        }

        if (v42)
        {
          v41 = v39;
        }

        if (v41 < 0.0)
        {
          v44 = v41 < v31;
LABEL_25:
          v45 = v30;
          if (v44)
          {
            goto LABEL_39;
          }

LABEL_26:
          if ((v45 & 0x80000000) == 0)
          {
            goto LABEL_38;
          }

          goto LABEL_39;
        }

        if (v41 <= 1.0)
        {
          v46 = v15 + (v41 * v34);
          goto LABEL_37;
        }

        if ((v17 & 0x80000000) == 0)
        {
          v45 = v17;
          if (v41 <= v19)
          {
LABEL_38:
            v47 = (v26 + 2 * (2 * v45));
LABEL_40:
            *v23 = *v47;
            LOBYTE(v47) = -1;
            goto LABEL_41;
          }
        }
      }

      if (v43 < 0.0)
      {
        v44 = v43 < v31;
        goto LABEL_25;
      }

      if (v43 > 1.0)
      {
        v45 = v17;
        if (v43 > v19)
        {
          goto LABEL_39;
        }

        goto LABEL_26;
      }

      v46 = v15 + (v43 * v34);
LABEL_37:
      v45 = (v14 * (v46 - v13));
      if ((v45 & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

LABEL_39:
      v47 = v25;
      if (v25)
      {
        goto LABEL_40;
      }

LABEL_41:
      v9 = v4 + v9;
      v10 = v5 + v10;
      ++v23;
      *v22++ = v47;
      if (!--a4)
      {
        return;
      }
    }
  }

  v27 = v10 * v10;
  v28 = -v20;
  if (v27 <= -v20)
  {
    v48 = fabsf(v12[8]);
    v49 = v20 * -4.0;
    v50 = v16 - v15;
    v51 = a4 + 2;
    while (1)
    {
      v52 = v27 + (v9 * v9);
      v53 = v4 + v9;
      v54 = v27 + (v53 * v53);
      if (v52 > v28 && v54 > v28)
      {
        if ((v17 & 0x80000000) != 0)
        {
          if (!v25)
          {
            v65 = 0;
            LOBYTE(v64) = 0;
            goto LABEL_65;
          }

          v63 = *v25;
        }

        else
        {
          v63 = *(v26 + 4 * v17);
        }

        *v23 = v63;
        goto LABEL_63;
      }

      v56 = sqrtf(v49 * v54);
      v57 = v48 * sqrtf(v49 * v52);
      v58 = v48 * v56;
      v59 = (v14 * ((v15 + (v57 * v50)) - v13));
      v60 = (v14 * ((v15 + ((v48 * v56) * v50)) - v13));
      if (v57 <= 1.0 && v58 <= 1.0)
      {
        v63 = *(v26 + 4 * v60);
        *v23 = *(v26 + 4 * v59);
LABEL_63:
        LOBYTE(v64) = -1;
        goto LABEL_64;
      }

      if (v57 <= 1.0)
      {
        if ((v59 & 0x80000000) == 0)
        {
          v62 = (2 * v59);
LABEL_69:
          v64 = (v26 + 2 * v62);
LABEL_71:
          *v23 = *v64;
          LOBYTE(v64) = -1;
          goto LABEL_72;
        }
      }

      else if (v57 <= v19)
      {
        v62 = 2 * v17;
        if ((v17 & 0x80000000) == 0)
        {
          goto LABEL_69;
        }
      }

      v64 = v25;
      if (v25)
      {
        goto LABEL_71;
      }

LABEL_72:
      if (v58 <= 1.0)
      {
        if (v60 < 0)
        {
          goto LABEL_79;
        }

        v66 = (2 * v60);
      }

      else if (v58 > v19 || (v66 = 2 * v17, (v17 & 0x80000000) != 0))
      {
LABEL_79:
        if (!v25)
        {
          v65 = 0;
          goto LABEL_65;
        }

        v63 = *v25;
        goto LABEL_64;
      }

      v63 = *(v26 + 2 * v66);
LABEL_64:
      v23[1] = v63;
      v65 = -1;
LABEL_65:
      v9 = v4 + v53;
      v23 += 2;
      *v22 = v64;
      v22[1] = v65;
      v22 += 2;
      v51 -= 2;
      if (v51 <= 2)
      {
        return;
      }
    }
  }

  if (v25 || (v17 & 0x80000000) == 0)
  {
    v67 = (v26 + 4 * v17);
    if (v17 < 0)
    {
      v67 = v25;
    }

    v68 = *v67;
    v69 = a4 + 4;
    do
    {
      *v23 = v68;
      v23[1] = v68;
      v23[2] = v68;
      v23[3] = v68;
      v23 += 4;
      v69 -= 4;
      *v22 = -1;
      v22 += 4;
    }

    while (v69 > 4);
  }

  else
  {
    if (a4 >= 4)
    {
      v29 = 4;
    }

    else
    {
      v29 = a4;
    }

    bzero(v22, ((a4 - v29 + 3) & 0xFFFFFFFC) + 4);
  }
}

uint64_t w16_image(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  memset(v48, 0, 512);
  if (*(a2 + 12))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a3 + 8) >= 1.0;
  }

  v8 = *(*(v6 + 56) + 16 * *a2 + 8 * v7 + 4 * (*(a2 + 6) == 0));
  if (v8 > 28)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 1) < 1 || *(a2 + 2) < 1)
  {
    return 0;
  }

  if (_blt_image_initialize(a2, a3, &v31, v48) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = 68161828;
  v19 = *a3;
  *(&v31 + 1) = __PAIR64__(*v6, *a3);
  if (v19 == 68161828)
  {
    if (!v42 && (~DWORD1(v32) & 0xC3) == 0)
    {
      v17.n128_u32[0] = *(a3 + 8);
      if (v17.n128_f32[0] >= 1.0 && !*(a3 + 24))
      {
        if ((BYTE4(v32) & 4) != 0)
        {
          v17.n128_u64[0] = *(a3 + 32);
          *(a2 + 8) = v17.n128_u64[0];
        }

        w16_mark(a1, v17);
        return 1;
      }
    }

    *&v31 = w16_sample_w16;
    goto LABEL_36;
  }

  v20 = SAMPLEINDEX(v19, v10, v11, v12, v13, v14, v15, v16);
  if (!v20)
  {
    return 0xFFFFFFFFLL;
  }

  if (v20 > 0xB)
  {
    goto LABEL_28;
  }

  if (v20 > 6)
  {
    switch(v20)
    {
      case 7:
        v21 = 0;
        v22 = 32;
        break;
      case 9:
        v21 = 0;
        v22 = 40;
        break;
      case 8:
        v21 = 0;
        v22 = 8;
        goto LABEL_29;
      default:
        goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (v20 == 2)
  {
    if (!*(a2 + 12))
    {
      v21 = 0;
      v22 = 16;
      goto LABEL_29;
    }

LABEL_28:
    v22 = 255;
    v21 = 1;
    goto LABEL_29;
  }

  if (v20 != 5)
  {
    if (v20 == 6)
    {
      v21 = 0;
      v22 = 0;
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v21 = 0;
  v22 = 24;
LABEL_29:
  *&v31 = *&W16_image_sample[2 * v20 + 2];
  if (v31)
  {
    goto LABEL_35;
  }

  if ((HIWORD(*a3) & 0x3Fu) <= 8)
  {
    *&v31 = *&W8_image_sample[2 * v20 + 2];
    if (v31)
    {
      v18 = 34083076;
      goto LABEL_35;
    }
  }

  *&v31 = *&WF_image_sample[2 * v20 + 2];
  if (!v31)
  {
    return 0xFFFFFFFFLL;
  }

  LODWORD(v32) = 8;
  v18 = 136319269;
LABEL_35:
  DWORD2(v31) = v18;
  if ((v21 & 1) != 0 || (v8 - 1) > 1 || (BYTE4(v32) & 7) != 3 || a2[2] != 5 && a2[2] || v20 > 0xB)
  {
    goto LABEL_36;
  }

  HIDWORD(v24) = v22;
  LODWORD(v24) = v22;
  v23 = v24 >> 3;
  if (v23 > 2)
  {
    if (v23 == 3)
    {
      DWORD2(v31) = *a3;
      v25 = w16_image_mark_RGB24;
      goto LABEL_65;
    }

    if (v23 == 4)
    {
      DWORD2(v31) = *a3;
      v25 = w16_image_mark_rgb32;
      goto LABEL_65;
    }

    if (v23 != 5)
    {
      goto LABEL_36;
    }

    DWORD2(v31) = *a3;
    v26 = w16_image_mark_rgb32;
LABEL_63:
    v27 = v26;
    v28 = a2;
    v29 = v8;
    v30 = 8;
LABEL_66:
    w16_image_mark_image(v28, &v31, v29, v30, v27);
    return 1;
  }

  switch(v23)
  {
    case 0:
      DWORD2(v31) = *a3;
      v25 = w16_image_mark_RGB32;
      goto LABEL_65;
    case 1:
      DWORD2(v31) = *a3;
      v26 = w16_image_mark_RGB32;
      goto LABEL_63;
    case 2:
      DWORD2(v31) = *a3;
      v25 = w16_image_mark_W8;
LABEL_65:
      v27 = v25;
      v28 = a2;
      v29 = v8;
      v30 = 0;
      goto LABEL_66;
  }

LABEL_36:
  w16_image_mark(a2, &v31, v8, v17);
  return 1;
}

uint64_t w16_mark(uint64_t a1, __n128 a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v736 = *MEMORY[0x1E69E9840];
  v5 = *(v3 + 96);
  v6 = *(v3 + 48);
  v7 = *(*(*v2 + 56) + 16 * *v3 + 8 * (v5 == 0) + 4 * (v6 == 0));
  if (v7 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v3;
  v10 = *(v3 + 4);
  v11 = v10 - 1;
  if (v10 < 1)
  {
    return 0;
  }

  v12 = *(v3 + 8);
  v13 = (v12 - 1);
  if (v12 < 1)
  {
    return 0;
  }

  v14 = *(v3 + 136);
  v689 = *(*(*v2 + 56) + 16 * *v3 + 8 * (v5 == 0) + 4 * (v6 == 0));
  if ((*v3 & 0xFF0000) == 0x50000 || !v14)
  {
    v16 = *v3 & 0xFF00;
    if (v16 == 1024)
    {
      v735[0] = *(v3 + 4);
      v725[0] = v12;
      v17 = **(v3 + 88);
      if (v5)
      {
        v18 = *v5;
      }

      else
      {
        v18 = 0xFFFF;
      }

      v31 = *(v3 + 28) >> 1;
      v32 = *(v3 + 12);
      v33 = *(v3 + 16);
      if (v6)
      {
        v34 = *(v3 + 32) >> 1;
        v712 = v6 + 2 * v34 * v33 + 2 * v32;
        v708 = 1;
      }

      else
      {
        v712 = 0;
        v34 = 0;
        v708 = 0;
      }

      v704 = ~v18;
      v707 = v34;
      v38 = (*(v3 + 40) + 2 * v33 * v31 + 2 * v32);
      v710 = v38;
      v700 = *(v3 + 28) >> 1;
      if (v14)
      {
        shape_enum_clip_alloc(v2, v3, v14, 1, 1, 1, *(v3 + 104), *(v3 + 108), v10, v12);
        v40 = v39;
        v41 = v712;
        v722 = v34;
        if (v39)
        {
          goto LABEL_388;
        }

        return 1;
      }

      v718 = 0;
      if (v6)
      {
        v42 = v10;
      }

      else
      {
        v42 = 0;
      }

      v722 = v34 - v42;
      v41 = v712;
      v43 = v10;
LABEL_66:
      v721 = v31 - v43;
      v701 = v10;
      switch(v7)
      {
        case 0:
          v66 = v721 + v10;
          v67 = v10;
          v68 = v725[0];
          v69 = v725[0] - 1;
          v70 = v38 + 2 * ((v66 * v69) & (v66 >> 63));
          if (v66 < 0)
          {
            v66 = -v66;
          }

          CGBlt_fillBytes(2 * v67, v725[0], 0, v70, 2 * v66);
          if (v6)
          {
            v71 = v722 + v67;
            v41 += 2 * ((v71 * v69) & (v71 >> 63));
            if (v71 < 0)
            {
              v71 = -v71;
            }

            v722 = v71;
            CGBlt_fillBytes(2 * v67, v68, 0, v41, 2 * v71);
          }

          goto LABEL_272;
        case 1:
          v715 = v10;
          v130 = v721 + v10;
          if (v130 < 0)
          {
            v38 = (v38 + 2 * v130 * (v725[0] - 1));
            v130 = -v130;
          }

          v131 = v31;
          v132 = 0;
          v133 = *(v9 + 88);
          if (v133)
          {
            v132 = *v133;
          }

          v134 = 2 * v10;
          v135 = v725[0];
          CGBlt_fillBytes(v134, v725[0], v132, v38, 2 * v130);
          if (v6)
          {
            v136 = *(v9 + 96);
            if (!v136)
            {
              v136 = &PIXELALPHAPLANARCONSTANT_18034;
            }

            v137 = v722 + v715;
            v41 += 2 * (((v722 + v715) * (v135 - 1)) & ((v722 + v715) >> 63));
            if ((v722 + v715) < 0)
            {
              v137 = -v137;
            }

            v722 = v137;
            CGBlt_fillBytes(v134, v135, *v136, v41, 2 * v137);
          }

          v31 = v131;
          goto LABEL_362;
        case 2:
          v106 = v725[0];
          v107 = v10 >> 2;
          v108 = 8 * v708;
          v109 = 2 * v708;
          if (v6)
          {
            v110 = v107 + 1;
            do
            {
              if (v10 < 4)
              {
                v116 = v10;
              }

              else
              {
                v111 = v110;
                do
                {
                  v112 = *v41 * v704 + ((*v41 * v704) >> 16) + 1;
                  v38->i16[0] = v17 + ((v38->u16[0] * v704 + ((v38->u16[0] * v704) >> 16) + 1) >> 16);
                  *v41 = v18 + HIWORD(v112);
                  v113 = *(v41 + 1) * v704 + ((*(v41 + 1) * v704) >> 16) + 1;
                  v38->i16[1] = v17 + ((v38->u16[1] * v704 + ((v38->u16[1] * v704) >> 16) + 1) >> 16);
                  *(v41 + 1) = v18 + HIWORD(v113);
                  v114 = *(v41 + 2) * v704 + ((*(v41 + 2) * v704) >> 16) + 1;
                  v38->i16[2] = v17 + ((v38->u16[2] * v704 + ((v38->u16[2] * v704) >> 16) + 1) >> 16);
                  *(v41 + 2) = v18 + HIWORD(v114);
                  v115 = *(v41 + 3) * v704 + ((*(v41 + 3) * v704) >> 16) + 1;
                  v38->i16[3] = v17 + ((v38->u16[3] * v704 + ((v38->u16[3] * v704) >> 16) + 1) >> 16);
                  *(v41 + 3) = v18 + HIWORD(v115);
                  ++v38;
                  --v111;
                  v41 += v108;
                }

                while (v111 > 1);
                v116 = v10 & 3;
              }

              if (v116 >= 1)
              {
                v117 = v116 + 1;
                do
                {
                  v118 = *v41 * v704 + ((*v41 * v704) >> 16);
                  v38->i16[0] = v17 + ((v38->u16[0] * v704 + ((v38->u16[0] * v704) >> 16) + 1) >> 16);
                  v38 = (v38 + 2);
                  *v41 = v18 + ((v118 + 1) >> 16);
                  v41 += v109;
                  --v117;
                }

                while (v117 > 1);
              }

              v38 = (v38 + 2 * v721);
              v41 += 2 * v722;
              --v106;
            }

            while (v106);
          }

          else
          {
            v187 = vdup_n_s16(v17);
            v188 = v107 + 1;
            v189 = vdup_n_s16(v704);
            v190.i64[0] = 0x100000001;
            v190.i64[1] = 0x100000001;
            do
            {
              if (v10 < 4)
              {
                v193 = v10;
              }

              else
              {
                v191 = v188;
                do
                {
                  v192 = vmull_u16(v189, *v38);
                  *v38++ = vadd_s16(v187, vaddhn_s32(vsraq_n_u32(v192, v192, 0x10uLL), v190));
                  --v191;
                  v41 += v108;
                }

                while (v191 > 1);
                v193 = v10 & 3;
              }

              if (v193 >= 1)
              {
                v194 = v193 + 1;
                do
                {
                  v38->i16[0] = v17 + ((v38->u16[0] * v704 + ((v38->u16[0] * v704) >> 16) + 1) >> 16);
                  v38 = (v38 + 2);
                  v41 += v109;
                  --v194;
                }

                while (v194 > 1);
              }

              v38 = (v38 + 2 * v721);
              v41 += 2 * v722;
              --v106;
            }

            while (v106);
          }

          goto LABEL_385;
        case 3:
          v121 = v725[0];
          do
          {
            v122 = v10;
            do
            {
              v123 = *v41;
              if (v123 == 0xFFFF)
              {
                v38->i16[0] = v17;
                LOWORD(v123) = v18;
              }

              else if (*v41)
              {
                v124 = v123 ^ 0xFFFF;
                v38->i16[0] = v17 - ((v124 * v17 + ((v124 * v17) >> 16) + 1) >> 16);
                v123 = v18 - ((v124 * v18 + ((v124 * v18) >> 16) + 1) >> 16);
              }

              else
              {
                v38->i16[0] = 0;
              }

              *v41 = v123;
              v38 = (v38 + 2);
              v41 += 2 * v708;
              --v122;
            }

            while (v122);
            v38 = (v38 + 2 * v721);
            v41 += 2 * v722;
            --v121;
          }

          while (v121);
          goto LABEL_385;
        case 4:
          v91 = v725[0];
          do
          {
            v92 = v10;
            do
            {
              v93 = *v41;
              if (*v41)
              {
                if (v93 != 0xFFFF)
                {
                  v38->i16[0] = v17 - ((v93 * v17 + ((v93 * v17) >> 16) + 1) >> 16);
                  v94 = v18 - ((v93 * v18 + ((v93 * v18) >> 16) + 1) >> 16);
                }

                else
                {
                  LOWORD(v94) = 0;
                  v38->i16[0] = 0;
                }
              }

              else
              {
                v38->i16[0] = v17;
                LOWORD(v94) = v18;
              }

              *v41 = v94;
              v38 = (v38 + 2);
              v41 += 2 * v708;
              --v92;
            }

            while (v92);
            v38 = (v38 + 2 * v721);
            v41 += 2 * v722;
            --v91;
          }

          while (v91);
          goto LABEL_385;
        case 5:
          v142 = v725[0];
          do
          {
            v143 = v10;
            do
            {
              v144 = *v41;
              v38->i16[0] = (v144 * v17 + v38->u16[0] * v704 + ((v144 * v17 + v38->u16[0] * v704) >> 16) + 1) >> 16;
              v38 = (v38 + 2);
              *v41 = ((v144 + v704) * v18 + (((v144 + v704) * v18) >> 16) + 1) >> 16;
              v41 += 2 * v708;
              --v143;
            }

            while (v143);
            v38 = (v38 + 2 * v721);
            v41 += 2 * v722;
            --v142;
          }

          while (v142);
          goto LABEL_385;
        case 6:
          v151 = v725[0];
          do
          {
            v152 = v10;
            do
            {
              v153 = *v41;
              if (v153 != 0xFFFF)
              {
                if (~v153 == 0xFFFF)
                {
                  v38->i16[0] = v17;
                  LOWORD(v154) = v18;
                }

                else
                {
                  v155 = ~v153;
                  v38->i16[0] += (v155 * v17 + ((v155 * v17) >> 16) + 1) >> 16;
                  v154 = v153 + ((v155 * v18 + ((v155 * v18) >> 16) + 1) >> 16);
                }

                *v41 = v154;
              }

              v38 = (v38 + 2);
              v41 += 2 * v708;
              --v152;
            }

            while (v152);
            v38 = (v38 + 2 * v721);
            v41 += 2 * v722;
            --v151;
          }

          while (v151);
          goto LABEL_385;
        case 7:
          v125 = v725[0];
          v126 = 2 * v708;
          if (v6)
          {
            do
            {
              v127 = v10;
              do
              {
                v128 = *v41;
                v38->i16[0] -= (v38->u16[0] * v704 + ((v38->u16[0] * v704) >> 16) + 1) >> 16;
                v38 = (v38 + 2);
                *v41 = v128 - ((v128 * v704 + ((v128 * v704) >> 16) + 1) >> 16);
                v41 += v126;
                --v127;
              }

              while (v127);
              v38 = (v38 + 2 * v721);
              v41 += 2 * v722;
              --v125;
            }

            while (v125);
          }

          else
          {
            do
            {
              v129 = v10;
              do
              {
                v38->i16[0] -= (v38->u16[0] * v704 + ((v38->u16[0] * v704) >> 16) + 1) >> 16;
                v38 = (v38 + 2);
                v41 += v126;
                --v129;
              }

              while (v129);
              v38 = (v38 + 2 * v721);
              v41 += 2 * v722;
              --v125;
            }

            while (v125);
          }

          goto LABEL_385;
        case 8:
          v161 = v725[0];
          v162 = 2 * v708;
          if (v6)
          {
            do
            {
              v163 = v10;
              do
              {
                v164 = *v41;
                v38->i16[0] -= (v38->u16[0] * v18 + ((v38->u16[0] * v18) >> 16) + 1) >> 16;
                v38 = (v38 + 2);
                *v41 = v164 - ((v164 * v18 + ((v164 * v18) >> 16) + 1) >> 16);
                v41 += v162;
                --v163;
              }

              while (v163);
              v38 = (v38 + 2 * v721);
              v41 += 2 * v722;
              --v161;
            }

            while (v161);
          }

          else
          {
            do
            {
              v165 = v10;
              do
              {
                v38->i16[0] -= (v38->u16[0] * v18 + ((v38->u16[0] * v18) >> 16) + 1) >> 16;
                v38 = (v38 + 2);
                v41 += v162;
                --v165;
              }

              while (v165);
              v38 = (v38 + 2 * v721);
              v41 += 2 * v722;
              --v161;
            }

            while (v161);
          }

          goto LABEL_385;
        case 9:
          v99 = v725[0];
          do
          {
            v100 = v10;
            do
            {
              v101 = *v41 ^ 0xFFFF;
              v38->i16[0] = (v101 * v17 + v38->u16[0] * v18 + ((v101 * v17 + v38->u16[0] * v18) >> 16) + 1) >> 16;
              v38 = (v38 + 2);
              *v41 = ((v101 + v18) * v18 + (((v101 + v18) * v18) >> 16) + 1) >> 16;
              v41 += 2 * v708;
              --v100;
            }

            while (v100);
            v38 = (v38 + 2 * v721);
            v41 += 2 * v722;
            --v99;
          }

          while (v99);
          goto LABEL_385;
        case 10:
          v158 = v725[0];
          do
          {
            v159 = v10;
            do
            {
              v160 = *v41 ^ 0xFFFF;
              v38->i16[0] = (v160 * v17 + v38->u16[0] * v704 + ((v160 * v17 + v38->u16[0] * v704) >> 16) + 1) >> 16;
              v38 = (v38 + 2);
              *v41 = ((v160 + v704) * v18 + (((v160 + v704) * v18) >> 16) + 1) >> 16;
              v41 += 2 * v708;
              --v159;
            }

            while (v159);
            v38 = (v38 + 2 * v721);
            v41 += 2 * v722;
            --v158;
          }

          while (v158);
          goto LABEL_385;
        case 11:
          if (v6)
          {
            v86 = v725[0];
            do
            {
              v87 = v10;
              do
              {
                v88 = *v41;
                v89 = v18 - v17 - v38->u16[0] + v88;
                v90 = v88 + v18;
                if (v89 >= 0xFFFF)
                {
                  LOWORD(v89) = -1;
                }

                if (v90 >= 0xFFFF)
                {
                  LOWORD(v90) = -1;
                }

                v38->i16[0] = v90 - v89;
                v38 = (v38 + 2);
                *v41 = v90;
                v41 += 2 * v708;
                --v87;
              }

              while (v87);
              v38 = (v38 + 2 * v721);
              v41 += 2 * v722;
              --v86;
            }

            while (v86);
          }

          else
          {
            v182 = v725[0];
            do
            {
              v183 = v10;
              do
              {
                v184 = v18 - v17 + (v38->u16[0] ^ 0xFFFF);
                if (v184 >= 0xFFFF)
                {
                  LOWORD(v184) = -1;
                }

                v38->i16[0] = ~v184;
                v38 = (v38 + 2);
                v41 += 2 * v708;
                --v183;
              }

              while (v183);
              v38 = (v38 + 2 * v721);
              v41 += 2 * v722;
              --v182;
            }

            while (v182);
          }

          goto LABEL_385;
        case 12:
          if (v6)
          {
            v95 = v725[0];
            do
            {
              v96 = v10;
              do
              {
                v97 = v38->u16[0] + v17;
                v98 = *v41 + v18;
                if (v97 >= 0xFFFF)
                {
                  LOWORD(v97) = -1;
                }

                if (v98 >= 0xFFFF)
                {
                  LOWORD(v98) = -1;
                }

                v38->i16[0] = v97;
                v38 = (v38 + 2);
                *v41 = v98;
                v41 += 2 * v708;
                --v96;
              }

              while (v96);
              v38 = (v38 + 2 * v721);
              v41 += 2 * v722;
              --v95;
            }

            while (v95);
          }

          else
          {
            v185 = v725[0];
            do
            {
              v186 = v10;
              do
              {
                v38->i16[0] = (2 * v38->i16[0]) | (v38->i16[0] >> 15);
                v38 = (v38 + 2);
                v41 += 2 * v708;
                --v186;
              }

              while (v186);
              v38 = (v38 + 2 * v721);
              v41 += 2 * v722;
              --v185;
            }

            while (v185);
          }

          goto LABEL_385;
        case 13:
          if (!v18)
          {
            goto LABEL_386;
          }

          v685 = v9;
          v147 = v725[0];
          while (1)
          {
            if (v6)
            {
              if (*v41)
              {
                v148 = PDAmultiplyPDA_8993(v38->u16[0], *v41, v17, v18);
                v38->i16[0] = v148;
                *v41 = HIWORD(v148);
              }

              else
              {
                v38->i16[0] = v17;
                *v41 = v18;
              }
            }

            else
            {
              v149 = (v17 + v704) * v38->u16[0];
              if (v149 <= 0xFFFE8000)
              {
                v150 = v149 + 0x8000;
              }

              else
              {
                v150 = 4294868992;
              }

              v38->i16[0] = ((v150 >> 16) + v150) >> 16;
            }

            v38 = (v38 + 2);
            v41 += 2 * v708;
            LODWORD(v10) = v10 - 1;
            if (!v10)
            {
              v38 = (v38 + 2 * v721);
              v41 += 2 * v722;
              --v147;
              LODWORD(v10) = v701;
              if (!v147)
              {
                break;
              }
            }
          }

          goto LABEL_271;
        case 14:
          if (!v18)
          {
            goto LABEL_386;
          }

          v78 = v725[0];
          while (1)
          {
            v79 = v10;
            do
            {
              if (v6)
              {
                v80 = *v41;
                if (!*v41)
                {
                  v38->i16[0] = v17;
                  *v41 = v18;
                  goto LABEL_114;
                }
              }

              else
              {
                v80 = 0xFFFF;
              }

              v81 = (v38->u16[0] ^ 0xFFFFu) * v17 - v38->u16[0] + (v38->u16[0] << 16);
              if (v81 <= 0xFFFE8000)
              {
                v82 = v81 + 0x8000;
              }

              else
              {
                v82 = 4294868992;
              }

              v83 = (v82 + (v82 >> 16)) >> 16;
              if (v6)
              {
                v84 = 0xFFFF * (v18 + v80) - v18 * v80;
                if (v84 <= 4294868992)
                {
                  v85 = v84 + 0x8000;
                }

                else
                {
                  v85 = 4294868992;
                }

                v38->i16[0] = v83;
                *v41 = (v83 | ((v85 >> 16) + v85)) >> 16;
              }

              else
              {
                v38->i16[0] = v83;
              }

LABEL_114:
              v38 = (v38 + 2);
              v41 += 2 * v708;
              --v79;
            }

            while (v79);
            v38 = (v38 + 2 * v721);
            v41 += 2 * v722;
            if (!--v78)
            {
LABEL_385:
              v725[0] = 0;
LABEL_386:
              v38 = v710;
              v40 = v718;
              if (!v718)
              {
                return 1;
              }

              v724 = 0;
LABEL_388:
              if (!shape_enum_clip_next(v40, &v724 + 1, &v724, v735, v725))
              {
                goto LABEL_1250;
              }

              v718 = v40;
              v38 = (v38 + 2 * v31 * v724 + 2 * SHIDWORD(v724));
              v43 = v735[0];
              if (v6)
              {
                v41 = (v712 + 2 * v34 * v724 + 2 * SHIDWORD(v724));
              }

              v195 = v722;
              if (v6)
              {
                v195 = v34 - v735[0];
              }

              v722 = v195;
              LODWORD(v10) = v735[0];
              goto LABEL_66;
            }
          }

        case 15:
          if (!v18)
          {
            goto LABEL_386;
          }

          v119 = v725[0];
          while (1)
          {
            if (v6)
            {
              if (*v41)
              {
                v120 = PDAoverlayPDA_8994(v38->u16[0], *v41, v17, v18);
                v38->i16[0] = v120;
                *v41 = HIWORD(v120);
              }

              else
              {
                v38->i16[0] = v17;
                *v41 = v18;
              }
            }

            else
            {
              v38->i16[0] = PDAoverlayPDA_8994(v38->u16[0], 0xFFFFu, v17, v18);
            }

            v38 = (v38 + 2);
            v41 += 2 * v708;
            LODWORD(v10) = v10 - 1;
            if (!v10)
            {
              v38 = (v38 + 2 * v721);
              v41 += 2 * v722;
              --v119;
              LODWORD(v10) = v701;
              if (!v119)
              {
                break;
              }
            }
          }

          goto LABEL_361;
        case 16:
          if (!v18)
          {
            goto LABEL_386;
          }

          v76 = v725[0];
          while (1)
          {
            if (v6)
            {
              if (*v41)
              {
                v77 = PDAdarkenPDA_8996(v38->u16[0], *v41, v17, v18);
                v38->i16[0] = v77;
                *v41 = HIWORD(v77);
              }

              else
              {
                v38->i16[0] = v17;
                *v41 = v18;
              }
            }

            else
            {
              v38->i16[0] = PDAdarkenPDA_8996(v38->u16[0], 0xFFFFu, v17, v18);
            }

            v38 = (v38 + 2);
            v41 += 2 * v708;
            LODWORD(v10) = v10 - 1;
            if (!v10)
            {
              v38 = (v38 + 2 * v721);
              v41 += 2 * v722;
              --v76;
              LODWORD(v10) = v701;
              if (!v76)
              {
                break;
              }
            }
          }

          goto LABEL_361;
        case 17:
          if (!v18)
          {
            goto LABEL_386;
          }

          v138 = v725[0];
          while (1)
          {
            if (v6)
            {
              if (*v41)
              {
                v139 = PDAlightenPDA_8995(v38->u16[0], *v41, v17, v18);
                v38->i16[0] = v139;
                *v41 = HIWORD(v139);
              }

              else
              {
                v38->i16[0] = v17;
                *v41 = v18;
              }
            }

            else
            {
              v38->i16[0] = PDAlightenPDA_8995(v38->u16[0], 0xFFFFu, v17, v18);
            }

            v38 = (v38 + 2);
            v41 += 2 * v708;
            LODWORD(v10) = v10 - 1;
            if (!v10)
            {
              v38 = (v38 + 2 * v721);
              v41 += 2 * v722;
              --v138;
              LODWORD(v10) = v701;
              if (!v138)
              {
                break;
              }
            }
          }

          goto LABEL_361;
        case 18:
          if (!v18)
          {
            goto LABEL_386;
          }

          v156 = v725[0];
          while (1)
          {
            if (v6)
            {
              if (*v41)
              {
                v157 = PDAcolordodgePDA_8997(v38->u16[0], *v41, v17, v18);
                v38->i16[0] = v157;
                *v41 = HIWORD(v157);
              }

              else
              {
                v38->i16[0] = v17;
                *v41 = v18;
              }
            }

            else
            {
              v38->i16[0] = PDAcolordodgePDA_8997(v38->u16[0], 0xFFFFu, v17, v18);
            }

            v38 = (v38 + 2);
            v41 += 2 * v708;
            LODWORD(v10) = v10 - 1;
            if (!v10)
            {
              v38 = (v38 + 2 * v721);
              v41 += 2 * v722;
              --v156;
              LODWORD(v10) = v701;
              if (!v156)
              {
                break;
              }
            }
          }

          goto LABEL_361;
        case 19:
          if (!v18)
          {
            goto LABEL_386;
          }

          v168 = v725[0];
          while (1)
          {
            if (v6)
            {
              if (*v41)
              {
                v169 = PDAcolorburnPDA_8998(v38->u16[0], *v41, v17, v18);
                v38->i16[0] = v169;
                *v41 = HIWORD(v169);
              }

              else
              {
                v38->i16[0] = v17;
                *v41 = v18;
              }
            }

            else
            {
              v38->i16[0] = PDAcolorburnPDA_8998(v38->u16[0], 0xFFFFu, v17, v18);
            }

            v38 = (v38 + 2);
            v41 += 2 * v708;
            LODWORD(v10) = v10 - 1;
            if (!v10)
            {
              v38 = (v38 + 2 * v721);
              v41 += 2 * v722;
              --v168;
              LODWORD(v10) = v701;
              if (!v168)
              {
                break;
              }
            }
          }

          goto LABEL_361;
        case 20:
          if (!v18)
          {
            goto LABEL_386;
          }

          v140 = v725[0];
          while (1)
          {
            if (v6)
            {
              if (*v41)
              {
                v141 = PDAsoftlightPDA_9000(v38->u16[0], *v41, v17, v18);
                v38->i16[0] = v141;
                *v41 = HIWORD(v141);
              }

              else
              {
                v38->i16[0] = v17;
                *v41 = v18;
              }
            }

            else
            {
              v38->i16[0] = PDAsoftlightPDA_9000(v38->u16[0], 0xFFFFu, v17, v18);
            }

            v38 = (v38 + 2);
            v41 += 2 * v708;
            LODWORD(v10) = v10 - 1;
            if (!v10)
            {
              v38 = (v38 + 2 * v721);
              v41 += 2 * v722;
              --v140;
              LODWORD(v10) = v701;
              if (!v140)
              {
                break;
              }
            }
          }

          goto LABEL_361;
        case 21:
          if (!v18)
          {
            goto LABEL_386;
          }

          v145 = v725[0];
          while (1)
          {
            if (v6)
            {
              if (*v41)
              {
                v146 = PDAhardlightPDA_8999(v38->u16[0], *v41, v17, v18);
                v38->i16[0] = v146;
                *v41 = HIWORD(v146);
              }

              else
              {
                v38->i16[0] = v17;
                *v41 = v18;
              }
            }

            else
            {
              v38->i16[0] = PDAhardlightPDA_8999(v38->u16[0], 0xFFFFu, v17, v18);
            }

            v38 = (v38 + 2);
            v41 += 2 * v708;
            LODWORD(v10) = v10 - 1;
            if (!v10)
            {
              v38 = (v38 + 2 * v721);
              v41 += 2 * v722;
              --v145;
              LODWORD(v10) = v701;
              if (!v145)
              {
                break;
              }
            }
          }

          goto LABEL_361;
        case 22:
          if (!v18)
          {
            goto LABEL_386;
          }

          v166 = v725[0];
          while (1)
          {
            if (v6)
            {
              if (*v41)
              {
                v167 = PDAdifferencePDA_9001(v38->u16[0], *v41, v17, v18);
                v38->i16[0] = v167;
                *v41 = HIWORD(v167);
              }

              else
              {
                v38->i16[0] = v17;
                *v41 = v18;
              }
            }

            else
            {
              v38->i16[0] = PDAdifferencePDA_9001(v38->u16[0], 0xFFFFu, v17, v18);
            }

            v38 = (v38 + 2);
            v41 += 2 * v708;
            LODWORD(v10) = v10 - 1;
            if (!v10)
            {
              v38 = (v38 + 2 * v721);
              v41 += 2 * v722;
              --v166;
              LODWORD(v10) = v701;
              if (!v166)
              {
                break;
              }
            }
          }

          goto LABEL_361;
        case 23:
          if (!v18)
          {
            goto LABEL_386;
          }

          if (v17 >= v18)
          {
            v170 = v18;
          }

          else
          {
            v170 = v17;
          }

          v171 = v725[0];
          break;
        case 24:
          if (!v18)
          {
            goto LABEL_386;
          }

          v104 = v725[0];
          while (1)
          {
            if (v6)
            {
              if (*v41)
              {
                v105 = PDAhuePDA_9002(v38->u16[0], *v41, v17, v18);
                v38->i16[0] = v105;
                *v41 = HIWORD(v105);
              }

              else
              {
                v38->i16[0] = v17;
                *v41 = v18;
              }
            }

            else
            {
              v38->i16[0] = PDAhuePDA_9002(v38->u16[0], 0xFFFFu, v17, v18);
            }

            v38 = (v38 + 2);
            v41 += 2 * v708;
            LODWORD(v10) = v10 - 1;
            if (!v10)
            {
              v38 = (v38 + 2 * v721);
              v41 += 2 * v722;
              --v104;
              LODWORD(v10) = v701;
              if (!v104)
              {
                break;
              }
            }
          }

          goto LABEL_361;
        case 25:
          if (!v18)
          {
            goto LABEL_386;
          }

          v102 = v725[0];
          while (1)
          {
            if (v6)
            {
              if (*v41)
              {
                v103 = PDAhuePDA_9002(v38->u16[0], *v41, v17, v18);
                v38->i16[0] = v103;
                *v41 = HIWORD(v103);
              }

              else
              {
                v38->i16[0] = v17;
                *v41 = v18;
              }
            }

            else
            {
              v38->i16[0] = PDAhuePDA_9002(v38->u16[0], 0xFFFFu, v17, v18);
            }

            v38 = (v38 + 2);
            v41 += 2 * v708;
            LODWORD(v10) = v10 - 1;
            if (!v10)
            {
              v38 = (v38 + 2 * v721);
              v41 += 2 * v722;
              --v102;
              LODWORD(v10) = v701;
              if (!v102)
              {
                break;
              }
            }
          }

          goto LABEL_361;
        case 26:
          if (!v18)
          {
            goto LABEL_386;
          }

          v180 = v725[0];
          while (1)
          {
            if (v6)
            {
              if (*v41)
              {
                v181 = PDAluminosityPDA_9004(v17, v18, v38->u16[0], *v41);
                v38->i16[0] = v181;
                *v41 = HIWORD(v181);
              }

              else
              {
                v38->i16[0] = v17;
                *v41 = v18;
              }
            }

            else
            {
              v38->i16[0] = PDAluminosityPDA_9004(v17, v18, v38->u16[0], 0xFFFFu);
            }

            v38 = (v38 + 2);
            v41 += 2 * v708;
            LODWORD(v10) = v10 - 1;
            if (!v10)
            {
              v38 = (v38 + 2 * v721);
              v41 += 2 * v722;
              --v180;
              LODWORD(v10) = v701;
              if (!v180)
              {
                break;
              }
            }
          }

LABEL_361:
          v725[0] = 0;
          v7 = v689;
          goto LABEL_362;
        case 27:
          if (!v18)
          {
            goto LABEL_386;
          }

          v685 = v9;
          v714 = v725[0];
          if (v17 >= v18)
          {
            v72 = v18;
          }

          else
          {
            v72 = v17;
          }

          while (1)
          {
            if (v6)
            {
              if (*v41)
              {
                v73 = PDAluminosityPDA_9004(v38->u16[0], *v41, v17, v18);
                v38->i16[0] = v73;
                *v41 = HIWORD(v73);
              }

              else
              {
                v38->i16[0] = v17;
                *v41 = v18;
              }
            }

            else
            {
              v74 = v38->u16[0] * v704 + 0x8000;
              if (v18 == 0xFFFF)
              {
                v74 = 0x8000;
              }

              v38->i16[0] = v72 + (((v74 >> 16) + v74) >> 16);
            }

            v38 = (v38 + 2);
            v41 += 2 * v708;
            LODWORD(v10) = v10 - 1;
            if (!v10)
            {
              v38 = (v38 + 2 * v721);
              v41 += 2 * v722;
              v75 = v714-- == 1;
              LODWORD(v10) = v701;
              if (v75)
              {
                break;
              }
            }
          }

LABEL_271:
          v725[0] = 0;
          v7 = v689;
          v9 = v685;
LABEL_272:
          v31 = v700;
LABEL_362:
          v34 = v707;
          goto LABEL_386;
        default:
          goto LABEL_386;
      }

LABEL_332:
      v172 = v10;
      while (v6)
      {
        v173 = *v41;
        if (*v41)
        {
          goto LABEL_337;
        }

        v38->i16[0] = v17;
        *v41 = v18;
LABEL_349:
        v38 = (v38 + 2);
        v41 += 2 * v708;
        if (!--v172)
        {
          v38 = (v38 + 2 * v721);
          v41 += 2 * v722;
          if (!--v171)
          {
            goto LABEL_385;
          }

          goto LABEL_332;
        }
      }

      v173 = 0xFFFF;
LABEL_337:
      if (v38->u16[0] >= v173)
      {
        v174 = v173;
      }

      else
      {
        v174 = v38->u16[0];
      }

      v175 = 0xFFFF * (v174 + v170) - (2 * v170) * v174;
      if (v175 <= 4294868992)
      {
        v176 = v175 + 0x8000;
      }

      else
      {
        v176 = 4294868992;
      }

      v177 = (v176 + (v176 >> 16)) >> 16;
      if (v6)
      {
        v178 = 0xFFFF * (v18 + v173) - v18 * v173;
        if (v178 <= 4294868992)
        {
          v179 = v178 + 0x8000;
        }

        else
        {
          v179 = 4294868992;
        }

        v38->i16[0] = v177;
        *v41 = (v177 | ((v179 >> 16) + v179)) >> 16;
      }

      else
      {
        v38->i16[0] = v177;
      }

      goto LABEL_349;
    }

    v735[0] = *(v3 + 4);
    v725[0] = v12;
    v19 = *(v3 + 88);
    v20 = *(v3 + 12);
    v21 = *(v3 + 16);
    v22 = *(v3 + 28) >> 1;
    if (v6)
    {
      v23 = *(v3 + 32) >> 1;
      v691 = v6 + 2 * v23 * v21 + 2 * v20;
      v24 = 0xFFFFFFFFLL;
    }

    else
    {
      v691 = 0;
      v23 = 0;
      v24 = 0;
    }

    v690 = *(v3 + 40) + 2 * v21 * v22 + 2 * v20;
    v35 = *(v3 + 56);
    v36 = *(v3 + 60);
    v699 = *(v3 + 76) >> 1;
    v684 = v3;
    if (v16 == 256)
    {
      if (v5)
      {
        v706 = *(v3 + 80) >> 1;
        v5 += 2 * v706 * v36 + 2 * v35;
        v37 = 0xFFFFFFFFLL;
      }

      else
      {
        v706 = 0;
        v37 = 0;
      }

      v19 += v36 * v699 + v35;
      if (v699 == v22)
      {
        v50 = (v690 - v19) >> 1;
        if (v50 >= 1)
        {
          if (v50 <= v10)
          {
            v690 += 2 * v11;
            v19 += v11;
            v691 += 2 * (v24 & v11);
            v53 = -1;
            v699 = *(v3 + 28) >> 1;
            v5 += 2 * (v37 & v11);
            goto LABEL_49;
          }

          v51 = v22 * v13;
          v52 = &v19[v22 * v13];
          if (v690 <= &v52[v10 - 1])
          {
            v22 = -v22;
            v690 += 2 * v51;
            v691 += 2 * v23 * v13;
            v23 = -v23;
            v5 += 2 * v706 * v13;
            v24 &= 1u;
            v706 = -v706;
            v37 &= 1u;
            v53 = 1;
            v19 = v52;
            v699 = v22;
            goto LABEL_49;
          }
        }
      }

      v24 &= 1u;
      v37 &= 1u;
      v53 = 1;
LABEL_49:
      v682 = *(v3 + 56);
      v683 = *(v3 + 60);
      if (v14)
      {
        v719 = v37;
        v720 = v24;
        v713 = 0;
        v698 = 0;
        v54 = -1;
        v694 = v699;
        v693 = v706;
        goto LABEL_54;
      }

      v58 = v53 * v10;
      v711 = v23 - v24 * v10;
      v59 = -1;
      v60 = v706;
      v692 = v53;
      v693 = v706;
      v61 = v699;
      v694 = v699;
LABEL_62:
      v695 = 0;
      v696 = v19;
      v713 = 0;
      v698 = 0;
      v699 = v61 - v58;
      v705 = v5;
      v706 = v60 - v37 * v10;
      v723 = v5;
      v65 = v690;
      v57 = v691;
      goto LABEL_394;
    }

    v694 = *(v3 + 64);
    v693 = *(v3 + 68);
    if (v5)
    {
      v706 = *(v3 + 80) >> 1;
      v37 = 1;
    }

    else
    {
      v706 = 0;
      v37 = 0;
    }

    v698 = &v19[v699 * v693];
    v24 &= 1u;
    if (v14)
    {
      v682 = *(v3 + 56);
      v683 = *(v3 + 60);
      v719 = v37;
      v720 = v24;
      v53 = 1;
      v713 = *(v3 + 88);
      v54 = v713;
LABEL_54:
      v692 = v53;
      v697 = v22;
      shape_enum_clip_alloc(v2, v3, v14, v53, v22, 1, *(v3 + 104), *(v3 + 108), v10, v12);
      v40 = v55;
      v56 = v5;
      v723 = v5;
      v57 = v691;
      v711 = v23;
      if (!v55)
      {
        return 1;
      }

      goto LABEL_1227;
    }

    v711 = v23 - (v24 * v10);
    if (!v19)
    {
      v682 = *(v3 + 56);
      v683 = *(v3 + 60);
      v59 = 0;
      v692 = 1;
      v58 = v10;
      v60 = v706;
      v61 = *(v3 + 76) >> 1;
      goto LABEL_62;
    }

    v62 = v36 % v693;
    v683 = v36 % v693;
    v696 = *(v3 + 88);
    v63 = &v19[v699 * v62];
    v64 = v35 % v694;
    v19 = &v63[v64];
    v59 = &v63[v694];
    v682 = v64;
    v713 = v19;
    v695 = 0;
    if (v5)
    {
      v692 = 1;
      v37 = 1;
      v705 = &v5[2 * v706 * v62 + 2 * v64];
      v723 = v705;
    }

    else
    {
      v705 = 0;
      v723 = 0;
      v692 = 1;
    }

    v65 = v690;
    v57 = v691;
    v58 = v10;
LABEL_394:
    v719 = v37;
    v720 = v24;
    v697 = v22;
    v709 = v22 - v58;
    switch(v7)
    {
      case 0:
        v681 = v59;
        v196 = v709 - v10;
        v197 = &v65[-v10 + 1];
        if (v692 >= 0)
        {
          v197 = v65;
          v196 = v709 + v10;
        }

        v198 = v725[0];
        v199 = v725[0] - 1;
        v200 = (v197 + 2 * ((v196 * v199) & (v196 >> 63)));
        if (v196 < 0)
        {
          v196 = -v196;
        }

        v201 = 2 * v10;
        CGBlt_fillBytes(2 * v10, v725[0], 0, v200, 2 * v196);
        if (!v720)
        {
          goto LABEL_1272;
        }

        if (v692 < 0)
        {
          v202 = v711 - v10;
          v57 = &v57[-2 * v10 + 2];
        }

        else
        {
          v202 = v711 + v10;
        }

        v40 = v695;
        v57 += 2 * ((v202 * v199) & (v202 >> 63));
        if (v202 < 0)
        {
          v202 = -v202;
        }

        v711 = v202;
        CGBlt_fillBytes(v201, v198, 0, v57, 2 * v202);
        v19 = v696;
        goto LABEL_1280;
      case 1:
        v382 = *(v684 + 1);
        if (v382 == 2)
        {
          if (v10 >= 16 && (2 * v694) <= 0x40)
          {
            v4.i32[0] = 2 * v694;
            v624 = vcnt_s8(v4);
            v624.i16[0] = vaddlv_u8(v624);
            if (v624.i32[0] <= 1u)
            {
              v681 = v59;
              v625 = v65;
              v626 = v725[0];
              CGSFillDRAM64(v625, 2 * (v10 + v709), 2 * v10, v725[0], v696, 2 * v699, 2 * v694, v693, 2 * v682, v683);
              if (v720)
              {
                if (v37)
                {
                  CGSFillDRAM64(v57, 2 * (v10 + v711), 2 * v10, v626, v5, 2 * v706, 2 * v694, v693, 2 * v682, v683);
                }

                else
                {
                  CGBlt_fillBytes(2 * v10, v626, -1, v57, 2 * (v10 + v711));
                }
              }

              v19 = v696;
              goto LABEL_1279;
            }
          }
        }

        else if (v382 == 1)
        {
          v681 = v59;
          v383 = v23;
          if (v692 < 0)
          {
            v384 = v699 - v10;
            v664 = 2 * v10 - 2;
            v19 = (v19 - v664);
            v385 = v709 - v10;
            v65 = (v65 - v664);
          }

          else
          {
            v384 = v699 + v10;
            v385 = v709 + v10;
          }

          v665 = v725[0];
          v666 = v725[0] - 1;
          v667 = &v19[(v384 * v666) & (v384 >> 63)];
          if (v384 >= 0)
          {
            v668 = v384;
          }

          else
          {
            v668 = -v384;
          }

          if (v385 >= 0)
          {
            LODWORD(v669) = v385;
          }

          else
          {
            v669 = -v385;
          }

          v699 = v668;
          CGBlt_copyBytes(2 * v10, v725[0], v667, &v65[(v385 * v666) & (v385 >> 63)], 2 * v668, 2 * v669);
          if (v720)
          {
            v19 = v696;
            if (v37)
            {
              v670 = v706 - v10;
              v671 = 2 * v10 - 2;
              v672 = &v723[-v671];
              v673 = v711 - v10;
              v674 = &v57[-v671];
              if (v692 >= 0)
              {
                v672 = v723;
                v674 = v57;
                v670 = v706 + v10;
                v673 = v711 + v10;
              }

              v675 = &v672[2 * ((v670 * v666) & (v670 >> 63))];
              if (v670 >= 0)
              {
                v676 = v670;
              }

              else
              {
                v676 = -v670;
              }

              v57 = &v674[2 * ((v673 * v666) & (v673 >> 63))];
              if (v673 >= 0)
              {
                v677 = v673;
              }

              else
              {
                v677 = -v673;
              }

              v706 = v676;
              v711 = v677;
              v723 = v675;
              CGBlt_copyBytes(2 * v10, v665, v675, v57, 2 * v676, 2 * v677);
            }

            else
            {
              v678 = v711 - v10;
              v679 = &v57[-2 * v10 + 2];
              if (v692 >= 0)
              {
                v679 = v57;
                v678 = v711 + v10;
              }

              v680 = (v678 * v666) & (v678 >> 63);
              v57 = (v679 + 2 * v680);
              if (v678 < 0)
              {
                v678 = -v678;
              }

              v711 = v678;
              CGBlt_fillBytes(2 * v10, v665, -1, (v679 + 2 * v680), 2 * v678);
            }

            v23 = v383;
          }

          else
          {
            v23 = v383;
LABEL_1272:
            v19 = v696;
          }

LABEL_1279:
          v40 = v695;
LABEL_1280:
          v59 = v681;
          goto LABEL_1056;
        }

        if (v24)
        {
          v627 = v24;
          if (v37)
          {
            v628 = v37;
            v629 = v725[0];
            v56 = v705;
            do
            {
              v630 = v10;
              do
              {
                *v65 = *v19;
                *v57 = *v723;
                v631 = &v19[v692];
                if (v631 >= v59)
                {
                  v632 = -v694;
                }

                else
                {
                  v632 = 0;
                }

                v723 += 2 * v628 + 2 * v632;
                v19 = &v631[v632];
                v57 += 2 * v24;
                v65 += v692;
                --v630;
              }

              while (v630);
              if (v698)
              {
                v633 = &v713[v699];
                if (v633 >= v698)
                {
                  v634 = -(v706 * v693);
                }

                else
                {
                  v634 = 0;
                }

                v56 += 2 * v706 + 2 * v634;
                if (v633 >= v698)
                {
                  v635 = -(v699 * v693);
                }

                else
                {
                  v635 = 0;
                }

                v19 = &v633[v635];
                v59 += 2 * v635 + 2 * v699;
                v723 = v56;
                v713 = v19;
              }

              else
              {
                v19 += v699;
                v723 += 2 * v706;
              }

              v65 += v709;
              v57 += 2 * v711;
              --v629;
            }

            while (v629);
            goto LABEL_1225;
          }

          v644 = v725[0];
          v56 = v705;
          v583 = v713;
          do
          {
            v645 = v10;
            do
            {
              *v65 = *v19;
              *v57 = -1;
              v646 = &v19[v692];
              if (v646 >= v59)
              {
                v647 = -v694;
              }

              else
              {
                v647 = 0;
              }

              v723 += 2 * v647;
              v19 = &v646[v647];
              v57 += 2 * v627;
              v65 += v692;
              --v645;
            }

            while (v645);
            if (v698)
            {
              v648 = &v583[v699];
              if (v648 >= v698)
              {
                v649 = -(v706 * v693);
              }

              else
              {
                v649 = 0;
              }

              v56 += 2 * v706 + 2 * v649;
              if (v648 >= v698)
              {
                v650 = -(v699 * v693);
              }

              else
              {
                v650 = 0;
              }

              v583 = &v648[v650];
              v59 += 2 * v650 + 2 * v699;
              v723 = v56;
              v19 = v583;
            }

            else
            {
              v19 += v699;
              v723 += 2 * v706;
            }

            v65 += v709;
            v57 += 2 * v711;
            --v644;
          }

          while (v644);
        }

        else
        {
          v636 = v37;
          v637 = v725[0];
          v56 = v705;
          v583 = v713;
          do
          {
            v638 = v10;
            do
            {
              *v65 = *v19;
              v639 = &v19[v692];
              if (v639 >= v59)
              {
                v640 = -v694;
              }

              else
              {
                v640 = 0;
              }

              v723 += 2 * v636 + 2 * v640;
              v19 = &v639[v640];
              v65 += v692;
              --v638;
            }

            while (v638);
            if (v698)
            {
              v641 = &v583[v699];
              if (v641 >= v698)
              {
                v642 = -(v706 * v693);
              }

              else
              {
                v642 = 0;
              }

              v56 += 2 * v706 + 2 * v642;
              if (v641 >= v698)
              {
                v643 = -(v699 * v693);
              }

              else
              {
                v643 = 0;
              }

              v583 = &v641[v643];
              v59 += 2 * v643 + 2 * v699;
              v723 = v56;
              v19 = v583;
            }

            else
            {
              v19 += v699;
              v723 += 2 * v706;
            }

            v65 += v709;
            v57 += 2 * v711;
            --v637;
          }

          while (v637);
        }

LABEL_1224:
        v713 = v583;
        goto LABEL_1225;
      case 2:
        v328 = 2 * v692;
        v329 = v37;
        if (v24)
        {
          v330 = v725[0];
          v56 = v705;
          v331 = v24;
          v332 = v706;
          v333 = 2 * v331;
          do
          {
            v334 = v10;
            do
            {
              v335 = *v723;
              if (*v723)
              {
                if (v335 == 0xFFFF)
                {
                  *v65 = *v19;
                  LOWORD(v336) = *v723;
                }

                else
                {
                  v332 = v706;
                  v337 = *v57 * (v335 ^ 0xFFFF) + ((*v57 * (v335 ^ 0xFFFFu)) >> 16) + 1;
                  *v65 = *v19 + ((*v65 * (v335 ^ 0xFFFF) + ((*v65 * (v335 ^ 0xFFFFu)) >> 16) + 1) >> 16);
                  v336 = v335 + HIWORD(v337);
                }

                *v57 = v336;
              }

              v338 = &v19[v692];
              if (v338 >= v59)
              {
                v339 = -v694;
              }

              else
              {
                v339 = 0;
              }

              v723 += 2 * v329 + 2 * v339;
              v19 = &v338[v339];
              v57 += v333;
              v65 = (v65 + v328);
              --v334;
            }

            while (v334);
            if (v698)
            {
              v340 = &v713[v699];
              if (v340 >= v698)
              {
                v341 = -(v706 * v693);
              }

              else
              {
                v341 = 0;
              }

              v56 += 2 * v332 + 2 * v341;
              if (v340 >= v698)
              {
                v342 = -(v699 * v693);
              }

              else
              {
                v342 = 0;
              }

              v19 = &v340[v342];
              v59 += 2 * v342 + 2 * v699;
              v723 = v56;
              v713 = v19;
            }

            else
            {
              v19 += v699;
              v723 += 2 * v332;
            }

            v65 += v709;
            v57 += 2 * v711;
            --v330;
          }

          while (v330);
        }

        else
        {
          v590 = v725[0];
          v56 = v705;
          do
          {
            v591 = v10;
            do
            {
              v592 = *v723;
              if (*v723)
              {
                if (v592 == 0xFFFF)
                {
                  LOWORD(v593) = *v19;
                }

                else
                {
                  v593 = *v19 + ((*v65 * (v592 ^ 0xFFFF) + ((*v65 * (v592 ^ 0xFFFFu)) >> 16) + 1) >> 16);
                }

                *v65 = v593;
              }

              v594 = &v19[v692];
              if (v594 >= v59)
              {
                v595 = -v694;
              }

              else
              {
                v595 = 0;
              }

              v723 += 2 * v329 + 2 * v595;
              v19 = &v594[v595];
              v65 = (v65 + v328);
              --v591;
            }

            while (v591);
            if (v698)
            {
              v596 = &v713[v699];
              if (v596 >= v698)
              {
                v597 = -(v706 * v693);
              }

              else
              {
                v597 = 0;
              }

              v56 += 2 * v706 + 2 * v597;
              if (v596 >= v698)
              {
                v598 = -(v699 * v693);
              }

              else
              {
                v598 = 0;
              }

              v19 = &v596[v598];
              v59 += 2 * v598 + 2 * v699;
              v723 = v56;
              v713 = v19;
            }

            else
            {
              v19 += v699;
              v723 += 2 * v706;
            }

            v65 += v709;
            v57 += 2 * v711;
            --v590;
          }

          while (v590);
        }

        goto LABEL_1225;
      case 3:
        v358 = 2 * v24;
        v359 = 2 * v692;
        if (v37)
        {
          v360 = v37;
          v361 = v725[0];
          v56 = v705;
          do
          {
            v362 = v10;
            do
            {
              v363 = *v57;
              if (v363 == 0xFFFF)
              {
                *v65 = *v19;
                LOWORD(v363) = *v723;
              }

              else if (*v57)
              {
                v364 = *v723;
                v365 = v363 ^ 0xFFFF;
                *v65 = *v19 - ((*v19 * v365 + ((*v19 * v365) >> 16) + 1) >> 16);
                v363 = v364 - ((v364 * v365 + ((v364 * v365) >> 16) + 1) >> 16);
              }

              else
              {
                *v65 = 0;
              }

              *v57 = v363;
              v366 = &v19[v692];
              if (v366 >= v59)
              {
                v367 = -v694;
              }

              else
              {
                v367 = 0;
              }

              v723 += 2 * v360 + 2 * v367;
              v19 = &v366[v367];
              v57 += v358;
              v65 = (v65 + v359);
              --v362;
            }

            while (v362);
            if (v698)
            {
              v368 = &v713[v699];
              if (v368 >= v698)
              {
                v369 = -(v706 * v693);
              }

              else
              {
                v369 = 0;
              }

              v56 += 2 * v706 + 2 * v369;
              if (v368 >= v698)
              {
                v370 = -(v699 * v693);
              }

              else
              {
                v370 = 0;
              }

              v19 = &v368[v370];
              v59 += 2 * v370 + 2 * v699;
              v723 = v56;
              v713 = v19;
            }

            else
            {
              v19 += v699;
              v723 += 2 * v706;
            }

            v65 += v709;
            v57 += 2 * v711;
            --v361;
          }

          while (v361);
          goto LABEL_1225;
        }

        v599 = v725[0];
        v56 = v705;
        v583 = v713;
        do
        {
          v600 = v10;
          do
          {
            v601 = *v57;
            if (*v57)
            {
              if (v601 == 0xFFFF)
              {
                LOWORD(v601) = *v19;
              }

              else
              {
                v601 = *v19 - ((*v19 * (v601 ^ 0xFFFF) + ((*v19 * (v601 ^ 0xFFFF)) >> 16) + 1) >> 16);
              }
            }

            *v65 = v601;
            v602 = &v19[v692];
            if (v602 >= v59)
            {
              v603 = -v694;
            }

            else
            {
              v603 = 0;
            }

            v723 += 2 * v603;
            v19 = &v602[v603];
            v57 += v358;
            v65 = (v65 + v359);
            --v600;
          }

          while (v600);
          if (v698)
          {
            v604 = &v583[v699];
            if (v604 >= v698)
            {
              v605 = -(v706 * v693);
            }

            else
            {
              v605 = 0;
            }

            v56 += 2 * v706 + 2 * v605;
            if (v604 >= v698)
            {
              v606 = -(v699 * v693);
            }

            else
            {
              v606 = 0;
            }

            v583 = &v604[v606];
            v59 += 2 * v606 + 2 * v699;
            v723 = v56;
            v19 = v583;
          }

          else
          {
            v19 += v699;
            v723 += 2 * v706;
          }

          v65 += v709;
          v57 += 2 * v711;
          --v599;
        }

        while (v599);
        goto LABEL_1224;
      case 4:
        v263 = v725[0];
        v264 = 2 * v24;
        v265 = v713;
        do
        {
          v266 = v10;
          do
          {
            v267 = *v57;
            if (*v57)
            {
              if (v267 != 0xFFFF)
              {
                if (v37)
                {
                  v269 = *v723;
                }

                else
                {
                  v269 = 0xFFFF;
                }

                *v65 = *v19 - ((*v19 * v267 + ((*v19 * v267) >> 16) + 1) >> 16);
                v268 = v269 - ((v269 * v267 + ((v269 * v267) >> 16) + 1) >> 16);
              }

              else
              {
                LOWORD(v268) = 0;
                *v65 = 0;
              }
            }

            else if (v37)
            {
              LOWORD(v268) = *v723;
            }

            else
            {
              LOWORD(v268) = -1;
            }

            *v57 = v268;
            v270 = &v19[v692];
            if (v270 >= v59)
            {
              v271 = -v694;
            }

            else
            {
              v271 = 0;
            }

            v723 += 2 * v37 + 2 * v271;
            v19 = &v270[v271];
            v57 += v264;
            v65 += v692;
            --v266;
          }

          while (v266);
          if (v698)
          {
            v272 = &v265[v699];
            if (v272 >= v698)
            {
              v273 = -(v706 * v693);
            }

            else
            {
              v273 = 0;
            }

            v274 = v705 + 2 * v706 + 2 * v273;
            if (v272 >= v698)
            {
              v275 = -(v699 * v693);
            }

            else
            {
              v275 = 0;
            }

            v265 = &v272[v275];
            v59 += 2 * v275 + 2 * v699;
            v705 += 2 * v706 + 2 * v273;
            v723 = v274;
            v19 = v265;
          }

          else
          {
            v19 += v699;
            v723 += 2 * v706;
          }

          v65 += v709;
          v57 += 2 * v711;
          --v263;
        }

        while (v263);
        goto LABEL_1052;
      case 5:
        v416 = v37;
        v417 = v725[0];
        v56 = v705;
        do
        {
          v418 = v10;
          do
          {
            v419 = *v57;
            v420 = *v723;
            v421 = *v19 * v419 + *v65 * (v420 ^ 0xFFFF);
            *v65 = (v421 + HIWORD(v421) + 1) >> 16;
            *v57 = (((v420 ^ 0xFFFF) + v419) * v420 + ((((v420 ^ 0xFFFFu) + v419) * v420) >> 16) + 1) >> 16;
            v422 = &v19[v692];
            if (v422 >= v59)
            {
              v423 = -v694;
            }

            else
            {
              v423 = 0;
            }

            v723 += 2 * v416 + 2 * v423;
            v19 = &v422[v423];
            v57 += 2 * v24;
            v65 += v692;
            --v418;
          }

          while (v418);
          if (v698)
          {
            v424 = &v713[v699];
            if (v424 >= v698)
            {
              v425 = -(v706 * v693);
            }

            else
            {
              v425 = 0;
            }

            v56 += 2 * v706 + 2 * v425;
            if (v424 >= v698)
            {
              v426 = -(v699 * v693);
            }

            else
            {
              v426 = 0;
            }

            v19 = &v424[v426];
            v59 += 2 * v426 + 2 * v699;
            v723 = v56;
            v713 = v19;
          }

          else
          {
            v19 += v699;
            v723 += 2 * v706;
          }

          v65 += v709;
          v57 += 2 * v711;
          --v417;
        }

        while (v417);
        goto LABEL_1225;
      case 6:
        v459 = v725[0];
        do
        {
          v460 = v10;
          do
          {
            v461 = *v57;
            if (v461 != 0xFFFF)
            {
              if (~v461 == 0xFFFF)
              {
                *v65 = *v19;
                if (v37)
                {
                  LOWORD(v462) = *v723;
                }

                else
                {
                  LOWORD(v462) = -1;
                }
              }

              else
              {
                if (v37)
                {
                  v463 = *v723;
                }

                else
                {
                  v463 = 0xFFFF;
                }

                v464 = ~v461;
                *v65 += (*v19 * v464 + ((*v19 * v464) >> 16) + 1) >> 16;
                v462 = v461 + ((v463 * v464 + ((v463 * v464) >> 16) + 1) >> 16);
              }

              *v57 = v462;
            }

            v465 = &v19[v692];
            if (v465 >= v59)
            {
              v466 = -v694;
            }

            else
            {
              v466 = 0;
            }

            v723 += 2 * v37 + 2 * v466;
            v19 = &v465[v466];
            v57 += 2 * v24;
            v65 += v692;
            --v460;
          }

          while (v460);
          if (v698)
          {
            v467 = &v713[v699];
            if (v467 >= v698)
            {
              v468 = -(v706 * v693);
            }

            else
            {
              v468 = 0;
            }

            v469 = v705 + 2 * v706 + 2 * v468;
            if (v467 >= v698)
            {
              v470 = -(v699 * v693);
            }

            else
            {
              v470 = 0;
            }

            v19 = &v467[v470];
            v59 += 2 * v470 + 2 * v699;
            v705 += 2 * v706 + 2 * v468;
            v723 = v469;
            v713 = v19;
          }

          else
          {
            v19 += v699;
            v723 += 2 * v706;
          }

          v65 += v709;
          v57 += 2 * v711;
          --v459;
        }

        while (v459);
        goto LABEL_1053;
      case 7:
        v371 = v37;
        if (v24)
        {
          v372 = v725[0];
          v56 = v705;
          do
          {
            v373 = v10;
            do
            {
              v374 = *v723;
              if (v374 != 0xFFFF)
              {
                if (*v723)
                {
                  v375 = *v57;
                  v376 = v374 ^ 0xFFFF;
                  *v65 -= (*v65 * v376 + ((*v65 * v376) >> 16) + 1) >> 16;
                  v374 = v375 - ((v375 * v376 + ((v375 * v376) >> 16) + 1) >> 16);
                }

                else
                {
                  *v65 = 0;
                }

                *v57 = v374;
              }

              v377 = &v19[v692];
              if (v377 >= v59)
              {
                v378 = -v694;
              }

              else
              {
                v378 = 0;
              }

              v723 += 2 * v371 + 2 * v378;
              v19 = &v377[v378];
              v57 += 2 * v24;
              v65 += v692;
              --v373;
            }

            while (v373);
            if (v698)
            {
              v379 = &v713[v699];
              if (v379 >= v698)
              {
                v380 = -(v706 * v693);
              }

              else
              {
                v380 = 0;
              }

              v56 += 2 * v706 + 2 * v380;
              if (v379 >= v698)
              {
                v381 = -(v699 * v693);
              }

              else
              {
                v381 = 0;
              }

              v19 = &v379[v381];
              v59 += 2 * v381 + 2 * v699;
              v723 = v56;
              v713 = v19;
            }

            else
            {
              v19 += v699;
              v723 += 2 * v706;
            }

            v65 += v709;
            v57 += 2 * v711;
            --v372;
          }

          while (v372);
          goto LABEL_1225;
        }

        v607 = v725[0];
        v56 = v705;
LABEL_1119:
        v608 = v10;
        while (1)
        {
          v609 = *v723;
          if (!*v723)
          {
            goto LABEL_1123;
          }

          if (v609 != 0xFFFF)
          {
            break;
          }

LABEL_1124:
          v610 = &v19[v692];
          if (v610 >= v59)
          {
            v611 = -v694;
          }

          else
          {
            v611 = 0;
          }

          v723 += 2 * v371 + 2 * v611;
          v19 = &v610[v611];
          v65 += v692;
          if (!--v608)
          {
            if (v698)
            {
              v612 = &v713[v699];
              if (v612 >= v698)
              {
                v613 = -(v706 * v693);
              }

              else
              {
                v613 = 0;
              }

              v56 += 2 * v706 + 2 * v613;
              if (v612 >= v698)
              {
                v614 = -(v699 * v693);
              }

              else
              {
                v614 = 0;
              }

              v19 = &v612[v614];
              v59 += 2 * v614 + 2 * v699;
              v723 = v56;
              v713 = v19;
            }

            else
            {
              v19 += v699;
              v723 += 2 * v706;
            }

            v65 += v709;
            v57 += 2 * v711;
            if (!--v607)
            {
              goto LABEL_1225;
            }

            goto LABEL_1119;
          }
        }

        v609 = *v65 - ((*v65 * (v609 ^ 0xFFFF) + ((*v65 * (v609 ^ 0xFFFF)) >> 16) + 1) >> 16);
LABEL_1123:
        *v65 = v609;
        goto LABEL_1124;
      case 8:
        v497 = v37;
        if (v24)
        {
          v498 = v725[0];
          v56 = v705;
          do
          {
            v499 = v10;
            do
            {
              v500 = *v723;
              if (*v723)
              {
                if (v500 != 0xFFFF)
                {
                  v502 = *v57;
                  *v65 -= (*v65 * v500 + ((*v65 * v500) >> 16) + 1) >> 16;
                  v501 = v502 - ((v502 * v500 + ((v502 * v500) >> 16) + 1) >> 16);
                }

                else
                {
                  LOWORD(v501) = 0;
                  *v65 = 0;
                }

                *v57 = v501;
              }

              v503 = &v19[v692];
              if (v503 >= v59)
              {
                v504 = -v694;
              }

              else
              {
                v504 = 0;
              }

              v723 += 2 * v497 + 2 * v504;
              v19 = &v503[v504];
              v57 += 2 * v24;
              v65 += v692;
              --v499;
            }

            while (v499);
            if (v698)
            {
              v505 = &v713[v699];
              if (v505 >= v698)
              {
                v506 = -(v706 * v693);
              }

              else
              {
                v506 = 0;
              }

              v56 += 2 * v706 + 2 * v506;
              if (v505 >= v698)
              {
                v507 = -(v699 * v693);
              }

              else
              {
                v507 = 0;
              }

              v19 = &v505[v507];
              v59 += 2 * v507 + 2 * v699;
              v723 = v56;
              v713 = v19;
            }

            else
            {
              v19 += v699;
              v723 += 2 * v706;
            }

            v65 += v709;
            v57 += 2 * v711;
            --v498;
          }

          while (v498);
LABEL_1225:
          v725[0] = 0;
          v40 = v695;
          v19 = v696;
          if (!v695)
          {
            return 1;
          }

          goto LABEL_1226;
        }

        v615 = v725[0];
        v56 = v705;
LABEL_1141:
        v616 = v10;
        while (1)
        {
          v617 = *v723;
          if (v617 == 0xFFFF)
          {
            break;
          }

          if (~v617 != 0xFFFF)
          {
            v618 = *v65 - ((*v65 * v617 + ((*v65 * v617) >> 16) + 1) >> 16);
LABEL_1146:
            *v65 = v618;
          }

          v619 = &v19[v692];
          if (v619 >= v59)
          {
            v620 = -v694;
          }

          else
          {
            v620 = 0;
          }

          v723 += 2 * v497 + 2 * v620;
          v19 = &v619[v620];
          v65 += v692;
          if (!--v616)
          {
            if (v698)
            {
              v621 = &v713[v699];
              if (v621 >= v698)
              {
                v622 = -(v706 * v693);
              }

              else
              {
                v622 = 0;
              }

              v56 += 2 * v706 + 2 * v622;
              if (v621 >= v698)
              {
                v623 = -(v699 * v693);
              }

              else
              {
                v623 = 0;
              }

              v19 = &v621[v623];
              v59 += 2 * v623 + 2 * v699;
              v723 = v56;
              v713 = v19;
            }

            else
            {
              v19 += v699;
              v723 += 2 * v706;
            }

            v65 += v709;
            v57 += 2 * v711;
            if (!--v615)
            {
              goto LABEL_1225;
            }

            goto LABEL_1141;
          }
        }

        LOWORD(v618) = 0;
        goto LABEL_1146;
      case 9:
        v287 = v37;
        v288 = v725[0];
        v56 = v705;
        do
        {
          v289 = v10;
          do
          {
            v290 = *v723;
            v291 = *v57 ^ 0xFFFF;
            v292 = *v19 * v291 + *v65 * v290;
            *v65 = (v292 + HIWORD(v292) + 1) >> 16;
            *v57 = ((v290 + v291) * v290 + (((v290 + v291) * v290) >> 16) + 1) >> 16;
            v293 = &v19[v692];
            if (v293 >= v59)
            {
              v294 = -v694;
            }

            else
            {
              v294 = 0;
            }

            v723 += 2 * v287 + 2 * v294;
            v19 = &v293[v294];
            v57 += 2 * v24;
            v65 += v692;
            --v289;
          }

          while (v289);
          if (v698)
          {
            v295 = &v713[v699];
            if (v295 >= v698)
            {
              v296 = -(v706 * v693);
            }

            else
            {
              v296 = 0;
            }

            v56 += 2 * v706 + 2 * v296;
            if (v295 >= v698)
            {
              v297 = -(v699 * v693);
            }

            else
            {
              v297 = 0;
            }

            v19 = &v295[v297];
            v59 += 2 * v297 + 2 * v699;
            v723 = v56;
            v713 = v19;
          }

          else
          {
            v19 += v699;
            v723 += 2 * v706;
          }

          v65 += v709;
          v57 += 2 * v711;
          --v288;
        }

        while (v288);
        goto LABEL_1225;
      case 10:
        v486 = v37;
        v487 = v725[0];
        v56 = v705;
        do
        {
          v488 = v10;
          do
          {
            v489 = *v723;
            v490 = *v57 ^ 0xFFFF;
            v491 = *v19 * v490 + *v65 * (v489 ^ 0xFFFF);
            *v65 = (v491 + HIWORD(v491) + 1) >> 16;
            *v57 = (((v489 ^ 0xFFFF) + v490) * v489 + ((((v489 ^ 0xFFFFu) + v490) * v489) >> 16) + 1) >> 16;
            v492 = &v19[v692];
            if (v492 >= v59)
            {
              v493 = -v694;
            }

            else
            {
              v493 = 0;
            }

            v723 += 2 * v486 + 2 * v493;
            v19 = &v492[v493];
            v57 += 2 * v24;
            v65 += v692;
            --v488;
          }

          while (v488);
          if (v698)
          {
            v494 = &v713[v699];
            if (v494 >= v698)
            {
              v495 = -(v706 * v693);
            }

            else
            {
              v495 = 0;
            }

            v56 += 2 * v706 + 2 * v495;
            if (v494 >= v698)
            {
              v496 = -(v699 * v693);
            }

            else
            {
              v496 = 0;
            }

            v19 = &v494[v496];
            v59 += 2 * v496 + 2 * v699;
            v723 = v56;
            v713 = v19;
          }

          else
          {
            v19 += v699;
            v723 += 2 * v706;
          }

          v65 += v709;
          v57 += 2 * v711;
          --v487;
        }

        while (v487);
        goto LABEL_1225;
      case 11:
        v250 = 2 * v692;
        if (v24)
        {
          v251 = v725[0];
          do
          {
            v252 = v10;
            do
            {
              if (v37)
              {
                v253 = *v723;
              }

              else
              {
                v253 = 0xFFFF;
              }

              v254 = *v57;
              v255 = v254 - (*v65 + *v19) + v253;
              v256 = v253 + v254;
              if (v255 >= 0xFFFF)
              {
                LOWORD(v255) = -1;
              }

              if (v256 >= 0xFFFF)
              {
                LOWORD(v256) = -1;
              }

              *v65 = v256 - v255;
              *v57 = v256;
              v257 = &v19[v692];
              if (v257 >= v59)
              {
                v258 = -v694;
              }

              else
              {
                v258 = 0;
              }

              v723 += 2 * v37 + 2 * v258;
              v19 = &v257[v258];
              v57 += 2 * v24;
              v65 = (v65 + v250);
              --v252;
            }

            while (v252);
            if (v698)
            {
              v259 = &v713[v699];
              if (v259 >= v698)
              {
                v260 = -(v706 * v693);
              }

              else
              {
                v260 = 0;
              }

              v261 = v705 + 2 * v706 + 2 * v260;
              if (v259 >= v698)
              {
                v262 = -(v699 * v693);
              }

              else
              {
                v262 = 0;
              }

              v19 = &v259[v262];
              v59 += 2 * v262 + 2 * v699;
              v705 += 2 * v706 + 2 * v260;
              v723 = v261;
              v713 = v19;
            }

            else
            {
              v19 += v699;
              v723 += 2 * v706;
            }

            v65 += v709;
            v57 += 2 * v711;
            --v251;
          }

          while (v251);
        }

        else
        {
          v571 = v725[0];
          v265 = v713;
          do
          {
            v572 = v10;
            do
            {
              if (v37)
              {
                v573 = *v723;
              }

              else
              {
                v573 = 0xFFFF;
              }

              v574 = v573 - *v19 + (*v65 ^ 0xFFFF);
              if (v574 >= 0xFFFF)
              {
                LOWORD(v574) = -1;
              }

              *v65 = ~v574;
              v575 = &v19[v692];
              if (v575 >= v59)
              {
                v576 = -v694;
              }

              else
              {
                v576 = 0;
              }

              v723 += 2 * v37 + 2 * v576;
              v19 = &v575[v576];
              v65 = (v65 + v250);
              --v572;
            }

            while (v572);
            if (v698)
            {
              v577 = &v265[v699];
              if (v577 >= v698)
              {
                v578 = -(v706 * v693);
              }

              else
              {
                v578 = 0;
              }

              v579 = v705 + 2 * v706 + 2 * v578;
              if (v577 >= v698)
              {
                v580 = -(v699 * v693);
              }

              else
              {
                v580 = 0;
              }

              v265 = &v577[v580];
              v59 += 2 * v580 + 2 * v699;
              v705 += 2 * v706 + 2 * v578;
              v723 = v579;
              v19 = v265;
            }

            else
            {
              v19 += v699;
              v723 += 2 * v706;
            }

            v65 += v709;
            v57 += 2 * v711;
            --v571;
          }

          while (v571);
LABEL_1052:
          v713 = v265;
        }

        goto LABEL_1053;
      case 12:
        if (v24)
        {
          v276 = v725[0];
          do
          {
            v277 = v10;
            do
            {
              if (v37)
              {
                v278 = *v723;
              }

              else
              {
                v278 = 0xFFFF;
              }

              v279 = *v19 + *v65;
              v280 = v278 + *v57;
              if (v279 >= 0xFFFF)
              {
                LOWORD(v279) = -1;
              }

              if (v280 >= 0xFFFF)
              {
                LOWORD(v280) = -1;
              }

              *v65 = v279;
              *v57 = v280;
              v281 = &v19[v692];
              if (v281 >= v59)
              {
                v282 = -v694;
              }

              else
              {
                v282 = 0;
              }

              v723 += 2 * v37 + 2 * v282;
              v19 = &v281[v282];
              v57 += 2 * v24;
              v65 += v692;
              --v277;
            }

            while (v277);
            if (v698)
            {
              v283 = &v713[v699];
              if (v283 >= v698)
              {
                v284 = -(v706 * v693);
              }

              else
              {
                v284 = 0;
              }

              v285 = v705 + 2 * v706 + 2 * v284;
              if (v283 >= v698)
              {
                v286 = -(v699 * v693);
              }

              else
              {
                v286 = 0;
              }

              v19 = &v283[v286];
              v59 += 2 * v286 + 2 * v699;
              v705 += 2 * v706 + 2 * v284;
              v723 = v285;
              v713 = v19;
            }

            else
            {
              v19 += v699;
              v723 += 2 * v706;
            }

            v65 += v709;
            v57 += 2 * v711;
            --v276;
          }

          while (v276);
          goto LABEL_1053;
        }

        v581 = v37;
        v582 = v725[0];
        v56 = v705;
        v583 = v713;
        do
        {
          v584 = v10;
          do
          {
            *v65 = (2 * *v65) | (*v65 >> 15);
            v585 = &v19[v692];
            if (v585 >= v59)
            {
              v586 = -v694;
            }

            else
            {
              v586 = 0;
            }

            v723 += 2 * v581 + 2 * v586;
            v19 = &v585[v586];
            v65 += v692;
            --v584;
          }

          while (v584);
          if (v698)
          {
            v587 = &v583[v699];
            if (v587 >= v698)
            {
              v588 = -(v706 * v693);
            }

            else
            {
              v588 = 0;
            }

            v56 += 2 * v706 + 2 * v588;
            if (v587 >= v698)
            {
              v589 = -(v699 * v693);
            }

            else
            {
              v589 = 0;
            }

            v583 = &v587[v589];
            v59 += 2 * v589 + 2 * v699;
            v723 = v56;
            v19 = v583;
          }

          else
          {
            v19 += v699;
            v723 += 2 * v706;
          }

          v65 += v709;
          v57 += 2 * v711;
          --v582;
        }

        while (v582);
        goto LABEL_1224;
      case 13:
        v686 = v23;
        v688 = v5;
        v703 = v10;
        v442 = v37;
        v443 = v725[0];
        v444 = 2 * v24;
        v445 = -v694;
        while (1)
        {
          v717 = v443;
          v446 = v703;
          do
          {
            if (v37)
            {
              v447 = *v723;
              if (!*v723)
              {
                goto LABEL_820;
              }

              if (v24)
              {
                goto LABEL_812;
              }
            }

            else
            {
              v447 = 0xFFFF;
              if (v24)
              {
LABEL_812:
                if (*v57)
                {
                  v448 = v59;
                  v449 = v445;
                  v450 = PDAmultiplyPDA_8993(*v65, *v57, *v19, v447);
                  v445 = v449;
                  v59 = v448;
                  LODWORD(v37) = v719;
                  LODWORD(v24) = v720;
                  *v65 = v450;
                  *v57 = HIWORD(v450);
                }

                else
                {
                  *v65 = *v19;
                  *v57 = v447;
                }

                goto LABEL_820;
              }
            }

            v451 = (*v19 + ~v447) * *v65;
            if (v451 <= 0xFFFE8000)
            {
              v452 = v451 + 0x8000;
            }

            else
            {
              v452 = 4294868992;
            }

            *v65 = ((v452 >> 16) + v452) >> 16;
LABEL_820:
            v453 = &v19[v692];
            if (v453 >= v59)
            {
              v454 = v445;
            }

            else
            {
              v454 = 0;
            }

            v723 += 2 * v442 + 2 * v454;
            v19 = &v453[v454];
            v57 += v444;
            v65 += v692;
            --v446;
          }

          while (v446);
          if (v698)
          {
            v455 = &v713[v699];
            v456 = -(v706 * v693);
            if (v455 < v698)
            {
              v456 = 0;
            }

            v457 = v705 + 2 * v706 + 2 * v456;
            v458 = -(v699 * v693);
            if (v455 < v698)
            {
              v458 = 0;
            }

            v19 = &v455[v458];
            v59 += 2 * v458 + 2 * v699;
            v705 += 2 * v706 + 2 * v456;
            v723 = v457;
            v713 = v19;
          }

          else
          {
            v19 += v699;
            v723 += 2 * v706;
          }

          v65 += v709;
          v57 += 2 * v711;
          v443 = v717 - 1;
          if (v717 == 1)
          {
            goto LABEL_1030;
          }
        }

      case 14:
        v235 = v725[0];
        while (1)
        {
          v236 = v10;
          do
          {
            if (v37)
            {
              v237 = *v723;
              if (!*v723)
              {
                goto LABEL_470;
              }

              if (!v24)
              {
LABEL_460:
                v238 = 0xFFFF;
                goto LABEL_461;
              }
            }

            else
            {
              v237 = 0xFFFF;
              if (!v24)
              {
                goto LABEL_460;
              }
            }

            v238 = *v57;
            if (!*v57)
            {
              *v65 = *v19;
              *v57 = v237;
              goto LABEL_470;
            }

LABEL_461:
            v239 = (*v65 ^ 0xFFFFu) * *v19 - *v65 + (*v65 << 16);
            if (v239 <= 0xFFFE8000)
            {
              v240 = v239 + 0x8000;
            }

            else
            {
              v240 = 4294868992;
            }

            v241 = (v240 + (v240 >> 16)) >> 16;
            if (v24)
            {
              v242 = 0xFFFF * (v238 + v237) - v238 * v237;
              if (v242 <= 4294868992)
              {
                v243 = v242 + 0x8000;
              }

              else
              {
                v243 = 4294868992;
              }

              *v65 = v241;
              *v57 = (v241 | ((v243 >> 16) + v243)) >> 16;
            }

            else
            {
              *v65 = v241;
            }

LABEL_470:
            v244 = &v19[v692];
            if (v244 >= v59)
            {
              v245 = -v694;
            }

            else
            {
              v245 = 0;
            }

            v723 += 2 * v37 + 2 * v245;
            v19 = &v244[v245];
            v57 += 2 * v24;
            v65 += v692;
            --v236;
          }

          while (v236);
          if (v698)
          {
            v246 = &v713[v699];
            if (v246 >= v698)
            {
              v247 = -(v706 * v693);
            }

            else
            {
              v247 = 0;
            }

            v248 = v705 + 2 * v706 + 2 * v247;
            if (v246 >= v698)
            {
              v249 = -(v699 * v693);
            }

            else
            {
              v249 = 0;
            }

            v19 = &v246[v249];
            v59 += 2 * v249 + 2 * v699;
            v705 += 2 * v706 + 2 * v247;
            v723 = v248;
            v713 = v19;
          }

          else
          {
            v19 += v699;
            v723 += 2 * v706;
          }

          v65 += v709;
          v57 += 2 * v711;
          if (!--v235)
          {
            goto LABEL_1053;
          }
        }

      case 15:
        v686 = v23;
        v688 = v5;
        v343 = v37;
        v344 = v725[0];
        v345 = 2 * v24;
        while (1)
        {
          v346 = v10;
          v347 = v59;
          do
          {
            if (v37)
            {
              v348 = *v723;
              if (!*v723)
              {
                goto LABEL_658;
              }

              if (v24)
              {
                goto LABEL_653;
              }
            }

            else
            {
              v348 = 0xFFFF;
              if (v24)
              {
LABEL_653:
                if (*v57)
                {
                  v349 = PDAoverlayPDA_8994(*v65, *v57, *v19, v348);
                  v59 = v347;
                  LODWORD(v37) = v719;
                  LODWORD(v24) = v720;
                  *v65 = v349;
                  *v57 = HIWORD(v349);
                }

                else
                {
                  *v65 = *v19;
                  *v57 = v348;
                }

                goto LABEL_658;
              }
            }

            v350 = PDAoverlayPDA_8994(*v65, 0xFFFFu, *v19, v348);
            v59 = v347;
            LODWORD(v37) = v719;
            LODWORD(v24) = v720;
            *v65 = v350;
LABEL_658:
            v351 = &v19[v692];
            if (v351 >= v59)
            {
              v352 = -v694;
            }

            else
            {
              v352 = 0;
            }

            v723 += 2 * v343 + 2 * v352;
            v19 = &v351[v352];
            v57 += v345;
            v65 += v692;
            --v346;
          }

          while (v346);
          if (v698)
          {
            v353 = &v713[v699];
            v354 = -(v706 * v693);
            if (v353 < v698)
            {
              v354 = 0;
            }

            v355 = v344;
            v356 = v705 + 2 * v706 + 2 * v354;
            v357 = -(v699 * v693);
            if (v353 < v698)
            {
              v357 = 0;
            }

            v19 = &v353[v357];
            v59 += 2 * v357 + 2 * v699;
            v705 += 2 * v706 + 2 * v354;
            v723 = v356;
            v344 = v355;
            v713 = v19;
          }

          else
          {
            v19 += v699;
            v723 += 2 * v706;
          }

          v65 += v709;
          v57 += 2 * v711;
          if (!--v344)
          {
            goto LABEL_1030;
          }
        }

      case 16:
        v686 = v23;
        v688 = v5;
        v220 = v37;
        v221 = v725[0];
        v222 = 2 * v24;
        while (1)
        {
          v223 = v10;
          v224 = v59;
          do
          {
            if (v37)
            {
              v225 = *v723;
              if (!*v723)
              {
                goto LABEL_439;
              }

              if (v24)
              {
                goto LABEL_434;
              }
            }

            else
            {
              v225 = 0xFFFF;
              if (v24)
              {
LABEL_434:
                if (*v57)
                {
                  v226 = PDAdarkenPDA_8996(*v65, *v57, *v19, v225);
                  v59 = v224;
                  LODWORD(v37) = v719;
                  LODWORD(v24) = v720;
                  *v65 = v226;
                  *v57 = HIWORD(v226);
                }

                else
                {
                  *v65 = *v19;
                  *v57 = v225;
                }

                goto LABEL_439;
              }
            }

            v227 = PDAdarkenPDA_8996(*v65, 0xFFFFu, *v19, v225);
            v59 = v224;
            LODWORD(v37) = v719;
            LODWORD(v24) = v720;
            *v65 = v227;
LABEL_439:
            v228 = &v19[v692];
            if (v228 >= v59)
            {
              v229 = -v694;
            }

            else
            {
              v229 = 0;
            }

            v723 += 2 * v220 + 2 * v229;
            v19 = &v228[v229];
            v57 += v222;
            v65 += v692;
            --v223;
          }

          while (v223);
          if (v698)
          {
            v230 = &v713[v699];
            v231 = -(v706 * v693);
            if (v230 < v698)
            {
              v231 = 0;
            }

            v232 = v221;
            v233 = v705 + 2 * v706 + 2 * v231;
            v234 = -(v699 * v693);
            if (v230 < v698)
            {
              v234 = 0;
            }

            v19 = &v230[v234];
            v59 += 2 * v234 + 2 * v699;
            v705 += 2 * v706 + 2 * v231;
            v723 = v233;
            v221 = v232;
            v713 = v19;
          }

          else
          {
            v19 += v699;
            v723 += 2 * v706;
          }

          v65 += v709;
          v57 += 2 * v711;
          if (!--v221)
          {
            goto LABEL_1030;
          }
        }

      case 17:
        v686 = v23;
        v688 = v5;
        v386 = v37;
        v387 = v725[0];
        v388 = 2 * v24;
        while (1)
        {
          v389 = v10;
          v390 = v59;
          do
          {
            if (v37)
            {
              v391 = *v723;
              if (!*v723)
              {
                goto LABEL_731;
              }

              if (v24)
              {
                goto LABEL_726;
              }
            }

            else
            {
              v391 = 0xFFFF;
              if (v24)
              {
LABEL_726:
                if (*v57)
                {
                  v392 = PDAlightenPDA_8995(*v65, *v57, *v19, v391);
                  v59 = v390;
                  LODWORD(v37) = v719;
                  LODWORD(v24) = v720;
                  *v65 = v392;
                  *v57 = HIWORD(v392);
                }

                else
                {
                  *v65 = *v19;
                  *v57 = v391;
                }

                goto LABEL_731;
              }
            }

            v393 = PDAlightenPDA_8995(*v65, 0xFFFFu, *v19, v391);
            v59 = v390;
            LODWORD(v37) = v719;
            LODWORD(v24) = v720;
            *v65 = v393;
LABEL_731:
            v394 = &v19[v692];
            if (v394 >= v59)
            {
              v395 = -v694;
            }

            else
            {
              v395 = 0;
            }

            v723 += 2 * v386 + 2 * v395;
            v19 = &v394[v395];
            v57 += v388;
            v65 += v692;
            --v389;
          }

          while (v389);
          if (v698)
          {
            v396 = &v713[v699];
            v397 = -(v706 * v693);
            if (v396 < v698)
            {
              v397 = 0;
            }

            v398 = v387;
            v399 = v705 + 2 * v706 + 2 * v397;
            v400 = -(v699 * v693);
            if (v396 < v698)
            {
              v400 = 0;
            }

            v19 = &v396[v400];
            v59 += 2 * v400 + 2 * v699;
            v705 += 2 * v706 + 2 * v397;
            v723 = v399;
            v387 = v398;
            v713 = v19;
          }

          else
          {
            v19 += v699;
            v723 += 2 * v706;
          }

          v65 += v709;
          v57 += 2 * v711;
          if (!--v387)
          {
            goto LABEL_1030;
          }
        }

      case 18:
        v686 = v23;
        v688 = v5;
        v471 = v37;
        v472 = v725[0];
        v473 = 2 * v24;
        while (1)
        {
          v474 = v10;
          v475 = v59;
          do
          {
            if (v37)
            {
              v476 = *v723;
              if (!*v723)
              {
                goto LABEL_870;
              }

              if (v24)
              {
                goto LABEL_865;
              }
            }

            else
            {
              v476 = 0xFFFF;
              if (v24)
              {
LABEL_865:
                if (*v57)
                {
                  v477 = PDAcolordodgePDA_8997(*v65, *v57, *v19, v476);
                  v59 = v475;
                  LODWORD(v37) = v719;
                  LODWORD(v24) = v720;
                  *v65 = v477;
                  *v57 = HIWORD(v477);
                }

                else
                {
                  *v65 = *v19;
                  *v57 = v476;
                }

                goto LABEL_870;
              }
            }

            v478 = PDAcolordodgePDA_8997(*v65, 0xFFFFu, *v19, v476);
            v59 = v475;
            LODWORD(v37) = v719;
            LODWORD(v24) = v720;
            *v65 = v478;
LABEL_870:
            v479 = &v19[v692];
            if (v479 >= v59)
            {
              v480 = -v694;
            }

            else
            {
              v480 = 0;
            }

            v723 += 2 * v471 + 2 * v480;
            v19 = &v479[v480];
            v57 += v473;
            v65 += v692;
            --v474;
          }

          while (v474);
          if (v698)
          {
            v481 = &v713[v699];
            v482 = -(v706 * v693);
            if (v481 < v698)
            {
              v482 = 0;
            }

            v483 = v472;
            v484 = v705 + 2 * v706 + 2 * v482;
            v485 = -(v699 * v693);
            if (v481 < v698)
            {
              v485 = 0;
            }

            v19 = &v481[v485];
            v59 += 2 * v485 + 2 * v699;
            v705 += 2 * v706 + 2 * v482;
            v723 = v484;
            v472 = v483;
            v713 = v19;
          }

          else
          {
            v19 += v699;
            v723 += 2 * v706;
          }

          v65 += v709;
          v57 += 2 * v711;
          if (!--v472)
          {
            goto LABEL_1030;
          }
        }

      case 19:
        v687 = v23;
        v523 = v37;
        v524 = v725[0];
        v525 = 2 * v24;
        while (1)
        {
          v526 = v10;
          v527 = v59;
          do
          {
            if (v37)
            {
              v528 = *v723;
              if (!*v723)
              {
                goto LABEL_956;
              }

              if (v24)
              {
                goto LABEL_951;
              }
            }

            else
            {
              v528 = 0xFFFF;
              if (v24)
              {
LABEL_951:
                if (*v57)
                {
                  v529 = PDAcolorburnPDA_8998(*v65, *v57, *v19, v528);
                  v59 = v527;
                  LODWORD(v37) = v719;
                  LODWORD(v24) = v720;
                  *v65 = v529;
                  *v57 = HIWORD(v529);
                }

                else
                {
                  *v65 = *v19;
                  *v57 = v528;
                }

                goto LABEL_956;
              }
            }

            v530 = PDAcolorburnPDA_8998(*v65, 0xFFFFu, *v19, v528);
            v59 = v527;
            LODWORD(v37) = v719;
            LODWORD(v24) = v720;
            *v65 = v530;
LABEL_956:
            v531 = &v19[v692];
            if (v531 >= v59)
            {
              v532 = -v694;
            }

            else
            {
              v532 = 0;
            }

            v723 += 2 * v523 + 2 * v532;
            v19 = &v531[v532];
            v57 += v525;
            v65 += v692;
            --v526;
          }

          while (v526);
          if (v698)
          {
            v533 = &v713[v699];
            v534 = -(v706 * v693);
            if (v533 < v698)
            {
              v534 = 0;
            }

            v535 = v524;
            v536 = v705 + 2 * v706 + 2 * v534;
            v537 = -(v699 * v693);
            if (v533 < v698)
            {
              v537 = 0;
            }

            v19 = &v533[v537];
            v59 += 2 * v537 + 2 * v699;
            v705 += 2 * v706 + 2 * v534;
            v723 = v536;
            v524 = v535;
            v713 = v19;
          }

          else
          {
            v19 += v699;
            v723 += 2 * v706;
          }

          v65 += v709;
          v57 += 2 * v711;
          if (!--v524)
          {
            v725[0] = 0;
            v7 = v689;
            v23 = v687;
            goto LABEL_1054;
          }
        }

      case 20:
        v686 = v23;
        v688 = v5;
        v401 = v37;
        v402 = v725[0];
        v403 = 2 * v24;
        while (1)
        {
          v404 = v10;
          v405 = v59;
          do
          {
            if (v37)
            {
              v406 = *v723;
              if (!*v723)
              {
                goto LABEL_754;
              }

              if (v24)
              {
                goto LABEL_749;
              }
            }

            else
            {
              v406 = 0xFFFF;
              if (v24)
              {
LABEL_749:
                if (*v57)
                {
                  v407 = PDAsoftlightPDA_9000(*v65, *v57, *v19, v406);
                  v59 = v405;
                  LODWORD(v37) = v719;
                  LODWORD(v24) = v720;
                  *v65 = v407;
                  *v57 = HIWORD(v407);
                }

                else
                {
                  *v65 = *v19;
                  *v57 = v406;
                }

                goto LABEL_754;
              }
            }

            v408 = PDAsoftlightPDA_9000(*v65, 0xFFFFu, *v19, v406);
            v59 = v405;
            LODWORD(v37) = v719;
            LODWORD(v24) = v720;
            *v65 = v408;
LABEL_754:
            v409 = &v19[v692];
            if (v409 >= v59)
            {
              v410 = -v694;
            }

            else
            {
              v410 = 0;
            }

            v723 += 2 * v401 + 2 * v410;
            v19 = &v409[v410];
            v57 += v403;
            v65 += v692;
            --v404;
          }

          while (v404);
          if (v698)
          {
            v411 = &v713[v699];
            v412 = -(v706 * v693);
            if (v411 < v698)
            {
              v412 = 0;
            }

            v413 = v402;
            v414 = v705 + 2 * v706 + 2 * v412;
            v415 = -(v699 * v693);
            if (v411 < v698)
            {
              v415 = 0;
            }

            v19 = &v411[v415];
            v59 += 2 * v415 + 2 * v699;
            v705 += 2 * v706 + 2 * v412;
            v723 = v414;
            v402 = v413;
            v713 = v19;
          }

          else
          {
            v19 += v699;
            v723 += 2 * v706;
          }

          v65 += v709;
          v57 += 2 * v711;
          if (!--v402)
          {
            goto LABEL_1030;
          }
        }

      case 21:
        v686 = v23;
        v688 = v5;
        v427 = v37;
        v428 = v725[0];
        v429 = 2 * v24;
        while (1)
        {
          v430 = v10;
          v431 = v59;
          do
          {
            if (v37)
            {
              v432 = *v723;
              if (!*v723)
              {
                goto LABEL_794;
              }

              if (v24)
              {
                goto LABEL_789;
              }
            }

            else
            {
              v432 = 0xFFFF;
              if (v24)
              {
LABEL_789:
                if (*v57)
                {
                  v433 = PDAhardlightPDA_8999(*v65, *v57, *v19, v432);
                  v59 = v431;
                  LODWORD(v37) = v719;
                  LODWORD(v24) = v720;
                  *v65 = v433;
                  *v57 = HIWORD(v433);
                }

                else
                {
                  *v65 = *v19;
                  *v57 = v432;
                }

                goto LABEL_794;
              }
            }

            v434 = PDAhardlightPDA_8999(*v65, 0xFFFFu, *v19, v432);
            v59 = v431;
            LODWORD(v37) = v719;
            LODWORD(v24) = v720;
            *v65 = v434;
LABEL_794:
            v435 = &v19[v692];
            if (v435 >= v59)
            {
              v436 = -v694;
            }

            else
            {
              v436 = 0;
            }

            v723 += 2 * v427 + 2 * v436;
            v19 = &v435[v436];
            v57 += v429;
            v65 += v692;
            --v430;
          }

          while (v430);
          if (v698)
          {
            v437 = &v713[v699];
            v438 = -(v706 * v693);
            if (v437 < v698)
            {
              v438 = 0;
            }

            v439 = v428;
            v440 = v705 + 2 * v706 + 2 * v438;
            v441 = -(v699 * v693);
            if (v437 < v698)
            {
              v441 = 0;
            }

            v19 = &v437[v441];
            v59 += 2 * v441 + 2 * v699;
            v705 += 2 * v706 + 2 * v438;
            v723 = v440;
            v428 = v439;
            v713 = v19;
          }

          else
          {
            v19 += v699;
            v723 += 2 * v706;
          }

          v65 += v709;
          v57 += 2 * v711;
          if (!--v428)
          {
            goto LABEL_1030;
          }
        }

      case 22:
        v686 = v23;
        v688 = v5;
        v508 = v37;
        v509 = v725[0];
        v510 = 2 * v24;
        while (1)
        {
          v511 = v10;
          v512 = v59;
          do
          {
            if (v37)
            {
              v513 = *v723;
              if (!*v723)
              {
                goto LABEL_933;
              }

              if (v24)
              {
                goto LABEL_928;
              }
            }

            else
            {
              v513 = 0xFFFF;
              if (v24)
              {
LABEL_928:
                if (*v57)
                {
                  v514 = PDAdifferencePDA_9001(*v65, *v57, *v19, v513);
                  v59 = v512;
                  LODWORD(v37) = v719;
                  LODWORD(v24) = v720;
                  *v65 = v514;
                  *v57 = HIWORD(v514);
                }

                else
                {
                  *v65 = *v19;
                  *v57 = v513;
                }

                goto LABEL_933;
              }
            }

            v515 = PDAdifferencePDA_9001(*v65, 0xFFFFu, *v19, v513);
            v59 = v512;
            LODWORD(v37) = v719;
            LODWORD(v24) = v720;
            *v65 = v515;
LABEL_933:
            v516 = &v19[v692];
            if (v516 >= v59)
            {
              v517 = -v694;
            }

            else
            {
              v517 = 0;
            }

            v723 += 2 * v508 + 2 * v517;
            v19 = &v516[v517];
            v57 += v510;
            v65 += v692;
            --v511;
          }

          while (v511);
          if (v698)
          {
            v518 = &v713[v699];
            v519 = -(v706 * v693);
            if (v518 < v698)
            {
              v519 = 0;
            }

            v520 = v509;
            v521 = v705 + 2 * v706 + 2 * v519;
            v522 = -(v699 * v693);
            if (v518 < v698)
            {
              v522 = 0;
            }

            v19 = &v518[v522];
            v59 += 2 * v522 + 2 * v699;
            v705 += 2 * v706 + 2 * v519;
            v723 = v521;
            v509 = v520;
            v713 = v19;
          }

          else
          {
            v19 += v699;
            v723 += 2 * v706;
          }

          v65 += v709;
          v57 += 2 * v711;
          if (!--v509)
          {
            goto LABEL_1030;
          }
        }

      case 23:
        v538 = v725[0];
        while (1)
        {
          v539 = v10;
          do
          {
            if (v37)
            {
              v540 = *v723;
              if (!*v723)
              {
                goto LABEL_993;
              }

              if (!v24)
              {
LABEL_977:
                v541 = 0xFFFF;
                goto LABEL_978;
              }
            }

            else
            {
              v540 = 0xFFFF;
              if (!v24)
              {
                goto LABEL_977;
              }
            }

            v541 = *v57;
            if (!*v57)
            {
              *v65 = *v19;
              *v57 = v540;
              goto LABEL_993;
            }

LABEL_978:
            if (*v19 >= v540)
            {
              v542 = v540;
            }

            else
            {
              v542 = *v19;
            }

            if (*v65 >= v541)
            {
              v543 = v541;
            }

            else
            {
              v543 = *v65;
            }

            v544 = 0xFFFF * (v542 + v543) - 2 * v543 * v542;
            if (v544 <= 4294868992)
            {
              v545 = v544 + 0x8000;
            }

            else
            {
              v545 = 4294868992;
            }

            v546 = (v545 + (v545 >> 16)) >> 16;
            if (v24)
            {
              v547 = 0xFFFF * (v541 + v540) - v541 * v540;
              if (v547 <= 4294868992)
              {
                v548 = v547 + 0x8000;
              }

              else
              {
                v548 = 4294868992;
              }

              *v65 = v546;
              *v57 = (v546 | ((v548 >> 16) + v548)) >> 16;
            }

            else
            {
              *v65 = v546;
            }

LABEL_993:
            v549 = &v19[v692];
            if (v549 >= v59)
            {
              v550 = -v694;
            }

            else
            {
              v550 = 0;
            }

            v723 += 2 * v37 + 2 * v550;
            v19 = &v549[v550];
            v57 += 2 * v24;
            v65 += v692;
            --v539;
          }

          while (v539);
          if (v698)
          {
            v551 = &v713[v699];
            if (v551 >= v698)
            {
              v552 = -(v706 * v693);
            }

            else
            {
              v552 = 0;
            }

            v553 = v705 + 2 * v706 + 2 * v552;
            if (v551 >= v698)
            {
              v554 = -(v699 * v693);
            }

            else
            {
              v554 = 0;
            }

            v19 = &v551[v554];
            v59 += 2 * v554 + 2 * v699;
            v705 += 2 * v706 + 2 * v552;
            v723 = v553;
            v713 = v19;
          }

          else
          {
            v19 += v699;
            v723 += 2 * v706;
          }

          v65 += v709;
          v57 += 2 * v711;
          if (!--v538)
          {
LABEL_1053:
            v725[0] = 0;
LABEL_1054:
            v19 = v696;
LABEL_1055:
            v40 = v695;
LABEL_1056:
            v56 = v705;
            if (!v40)
            {
              return 1;
            }

LABEL_1226:
            v54 = v59;
            v724 = 0;
LABEL_1227:
            v705 = v56;
            if (!shape_enum_clip_next(v40, &v724 + 1, &v724, v735, v725))
            {
LABEL_1250:
              v49 = v40;
              goto LABEL_1251;
            }

            v695 = v40;
            v696 = v19;
            if (v698)
            {
              v22 = v697;
              v65 = (v690 + 2 * v697 * v724 + 2 * SHIDWORD(v724));
              v651 = (v724 + *(v684 + 60)) % v693;
              v58 = v735[0];
              v652 = (HIDWORD(v724) + *(v684 + 56)) % v694;
              v653 = &v19[v699 * v651];
              v19 = &v653[v652];
              v59 = &v653[v694];
              v24 = v720;
              if (v720)
              {
                v57 = (v691 + 2 * v23 * v724 + 2 * SHIDWORD(v724));
              }

              v654 = v711;
              if (v720)
              {
                v654 = v23 - v735[0];
              }

              v711 = v654;
              v713 = &v653[v652];
              if (v719)
              {
                v37 = v719;
              }

              else
              {
                v37 = 0;
              }

              v655 = v705;
              if (v719)
              {
                v655 = &v5[2 * v706 * v651 + 2 * v652];
              }

              v705 = v655;
              v656 = v723;
              if (v719)
              {
                v656 = &v5[2 * v706 * v651 + 2 * v652];
              }

              v723 = v656;
              LODWORD(v10) = v735[0];
              v682 = (HIDWORD(v724) + *(v684 + 56)) % v694;
              v683 = (v724 + *(v684 + 60)) % v693;
            }

            else
            {
              v657 = HIDWORD(v724) * v692;
              LODWORD(v10) = v735[0];
              v658 = v735[0] * v692;
              v22 = v697;
              v65 = (v690 + 2 * v697 * v724 + 2 * HIDWORD(v724) * v692);
              v58 = v735[0] * v692;
              v19 += v724 * v694 + HIDWORD(v724) * v692;
              v698 = 0;
              v699 = v694 - v735[0] * v692;
              v37 = v719;
              v24 = v720;
              if (v720)
              {
                v57 = (v691 + 2 * v23 * v724 + 2 * v657);
              }

              v659 = v711;
              if (v720)
              {
                v659 = v23 - v658;
              }

              v711 = v659;
              v660 = &v5[2 * v724 * v693 + 2 * v657];
              v661 = v693 - v658;
              v662 = v723;
              if (v719)
              {
                v662 = v660;
              }

              v723 = v662;
              v663 = v706;
              if (v719)
              {
                v663 = v661;
              }

              v706 = v663;
              v59 = v54;
            }

            goto LABEL_394;
          }
        }

      case 24:
        v686 = v23;
        v688 = v5;
        v313 = v37;
        v314 = v725[0];
        v315 = 2 * v24;
        while (1)
        {
          v316 = v10;
          v317 = v59;
          do
          {
            if (v37)
            {
              v318 = *v723;
              if (!*v723)
              {
                goto LABEL_612;
              }

              if (v24)
              {
                goto LABEL_607;
              }
            }

            else
            {
              v318 = 0xFFFF;
              if (v24)
              {
LABEL_607:
                if (*v57)
                {
                  v319 = PDAhuePDA_9002(*v65, *v57, *v19, v318);
                  v59 = v317;
                  LODWORD(v37) = v719;
                  LODWORD(v24) = v720;
                  *v65 = v319;
                  *v57 = HIWORD(v319);
                }

                else
                {
                  *v65 = *v19;
                  *v57 = v318;
                }

                goto LABEL_612;
              }
            }

            v320 = PDAhuePDA_9002(*v65, 0xFFFFu, *v19, v318);
            v59 = v317;
            LODWORD(v37) = v719;
            LODWORD(v24) = v720;
            *v65 = v320;
LABEL_612:
            v321 = &v19[v692];
            if (v321 >= v59)
            {
              v322 = -v694;
            }

            else
            {
              v322 = 0;
            }

            v723 += 2 * v313 + 2 * v322;
            v19 = &v321[v322];
            v57 += v315;
            v65 += v692;
            --v316;
          }

          while (v316);
          if (v698)
          {
            v323 = &v713[v699];
            v324 = -(v706 * v693);
            if (v323 < v698)
            {
              v324 = 0;
            }

            v325 = v314;
            v326 = v705 + 2 * v706 + 2 * v324;
            v327 = -(v699 * v693);
            if (v323 < v698)
            {
              v327 = 0;
            }

            v19 = &v323[v327];
            v59 += 2 * v327 + 2 * v699;
            v705 += 2 * v706 + 2 * v324;
            v723 = v326;
            v314 = v325;
            v713 = v19;
          }

          else
          {
            v19 += v699;
            v723 += 2 * v706;
          }

          v65 += v709;
          v57 += 2 * v711;
          if (!--v314)
          {
LABEL_1030:
            v725[0] = 0;
            v5 = v688;
            v7 = v689;
            v23 = v686;
            v19 = v696;
            goto LABEL_1055;
          }
        }

      case 25:
        v686 = v23;
        v688 = v5;
        v298 = v37;
        v299 = v725[0];
        v300 = 2 * v24;
        while (1)
        {
          v301 = v10;
          v302 = v59;
          do
          {
            if (v37)
            {
              v303 = *v723;
              if (!*v723)
              {
                goto LABEL_589;
              }

              if (v24)
              {
                goto LABEL_584;
              }
            }

            else
            {
              v303 = 0xFFFF;
              if (v24)
              {
LABEL_584:
                if (*v57)
                {
                  v304 = PDAhuePDA_9002(*v65, *v57, *v19, v303);
                  v59 = v302;
                  LODWORD(v37) = v719;
                  LODWORD(v24) = v720;
                  *v65 = v304;
                  *v57 = HIWORD(v304);
                }

                else
                {
                  *v65 = *v19;
                  *v57 = v303;
                }

                goto LABEL_589;
              }
            }

            v305 = PDAhuePDA_9002(*v65, 0xFFFFu, *v19, v303);
            v59 = v302;
            LODWORD(v37) = v719;
            LODWORD(v24) = v720;
            *v65 = v305;
LABEL_589:
            v306 = &v19[v692];
            if (v306 >= v59)
            {
              v307 = -v694;
            }

            else
            {
              v307 = 0;
            }

            v723 += 2 * v298 + 2 * v307;
            v19 = &v306[v307];
            v57 += v300;
            v65 += v692;
            --v301;
          }

          while (v301);
          if (v698)
          {
            v308 = &v713[v699];
            v309 = -(v706 * v693);
            if (v308 < v698)
            {
              v309 = 0;
            }

            v310 = v299;
            v311 = v705 + 2 * v706 + 2 * v309;
            v312 = -(v699 * v693);
            if (v308 < v698)
            {
              v312 = 0;
            }

            v19 = &v308[v312];
            v59 += 2 * v312 + 2 * v699;
            v705 += 2 * v706 + 2 * v309;
            v723 = v311;
            v299 = v310;
            v713 = v19;
          }

          else
          {
            v19 += v699;
            v723 += 2 * v706;
          }

          v65 += v709;
          v57 += 2 * v711;
          if (!--v299)
          {
            goto LABEL_1030;
          }
        }

      case 26:
        v686 = v23;
        v688 = v5;
        v555 = v37;
        v556 = v725[0];
        v557 = 2 * v24;
        while (1)
        {
          v558 = v10;
          v559 = v59;
          do
          {
            if (v37)
            {
              v560 = *v723;
              if (!*v723)
              {
                goto LABEL_1018;
              }

              if (v24)
              {
                goto LABEL_1013;
              }
            }

            else
            {
              v560 = 0xFFFF;
              if (v24)
              {
LABEL_1013:
                v561 = *v19;
                if (*v57)
                {
                  v562 = PDAluminosityPDA_9004(v561, v560, *v65, *v57);
                  v59 = v559;
                  LODWORD(v37) = v719;
                  LODWORD(v24) = v720;
                  *v65 = v562;
                  *v57 = HIWORD(v562);
                }

                else
                {
                  *v65 = v561;
                  *v57 = v560;
                }

                goto LABEL_1018;
              }
            }

            v563 = PDAluminosityPDA_9004(*v19, v560, *v65, 0xFFFFu);
            v59 = v559;
            LODWORD(v37) = v719;
            LODWORD(v24) = v720;
            *v65 = v563;
LABEL_1018:
            v564 = &v19[v692];
            if (v564 >= v59)
            {
              v565 = -v694;
            }

            else
            {
              v565 = 0;
            }

            v723 += 2 * v555 + 2 * v565;
            v19 = &v564[v565];
            v57 += v557;
            v65 += v692;
            --v558;
          }

          while (v558);
          if (v698)
          {
            v566 = &v713[v699];
            v567 = -(v706 * v693);
            if (v566 < v698)
            {
              v567 = 0;
            }

            v568 = v556;
            v569 = v705 + 2 * v706 + 2 * v567;
            v570 = -(v699 * v693);
            if (v566 < v698)
            {
              v570 = 0;
            }

            v19 = &v566[v570];
            v59 += 2 * v570 + 2 * v699;
            v705 += 2 * v706 + 2 * v567;
            v723 = v569;
            v556 = v568;
            v713 = v19;
          }

          else
          {
            v19 += v699;
            v723 += 2 * v706;
          }

          v65 += v709;
          v57 += 2 * v711;
          if (!--v556)
          {
            goto LABEL_1030;
          }
        }

      case 27:
        v686 = v23;
        v688 = v5;
        v702 = v10;
        v203 = v37;
        v204 = v725[0];
        v205 = 2 * v24;
        v206 = -v694;
        break;
      default:
        goto LABEL_1054;
    }

LABEL_403:
    v716 = v204;
    v207 = v702;
    while (1)
    {
      if (v37)
      {
        v208 = *v723;
        if (!*v723)
        {
          goto LABEL_416;
        }

        if (!v24)
        {
          goto LABEL_410;
        }
      }

      else
      {
        v208 = 0xFFFF;
        if (!v24)
        {
LABEL_410:
          v212 = *v19;
          if (v212 >= v208)
          {
            LOWORD(v212) = v208;
          }

          v213 = *v65 * ~v208 + 0x8000;
          if (v208 == 0xFFFF)
          {
            v213 = 0x8000;
          }

          *v65 = v212 + (((v213 >> 16) + v213) >> 16);
          goto LABEL_416;
        }
      }

      if (*v57)
      {
        v209 = v59;
        v210 = v206;
        v211 = PDAluminosityPDA_9004(*v65, *v57, *v19, v208);
        v206 = v210;
        v59 = v209;
        LODWORD(v37) = v719;
        LODWORD(v24) = v720;
        *v65 = v211;
        *v57 = HIWORD(v211);
      }

      else
      {
        *v65 = *v19;
        *v57 = v208;
      }

LABEL_416:
      v214 = &v19[v692];
      if (v214 >= v59)
      {
        v215 = v206;
      }

      else
      {
        v215 = 0;
      }

      v723 += 2 * v203 + 2 * v215;
      v19 = &v214[v215];
      v57 += v205;
      v65 += v692;
      if (!--v207)
      {
        if (v698)
        {
          v216 = &v713[v699];
          v217 = -(v706 * v693);
          if (v216 < v698)
          {
            v217 = 0;
          }

          v218 = v705 + 2 * v706 + 2 * v217;
          v219 = -(v699 * v693);
          if (v216 < v698)
          {
            v219 = 0;
          }

          v19 = &v216[v219];
          v59 += 2 * v219 + 2 * v699;
          v705 += 2 * v706 + 2 * v217;
          v723 = v218;
          v713 = v19;
        }

        else
        {
          v19 += v699;
          v723 += 2 * v706;
        }

        v65 += v709;
        v57 += 2 * v711;
        v204 = v716 - 1;
        if (v716 == 1)
        {
          goto LABEL_1030;
        }

        goto LABEL_403;
      }
    }
  }

  v15 = *(v3 + 128);
  if ((v15 | 8) == 8)
  {
    if ((*v3 & 0xFF00) == 0x400)
    {
      w16_mark_constmask(v3, v7);
    }

    else
    {
      w16_mark_pixelmask(v3, v7);
    }

    return 1;
  }

  v25 = *(v3 + 112);
  v26 = *(v3 + 116);
  v27 = (v25 + 15) & 0xFFFFFFF0;
  v28 = v27 * v26;
  if (v28 <= 4096)
  {
    v30 = v735;
  }

  else
  {
    v29 = malloc_type_malloc(v28, 0x97CEE3C3uLL);
    if (!v29)
    {
      return 1;
    }

    v30 = v29;
    v14 = *(v9 + 136);
    v15 = *(v9 + 128);
  }

  CGSConvertBitsToMask(v14, *(v9 + 124), v30, v27, v25, v26, v15);
  v44 = *(v9 + 112);
  v731 = *(v9 + 96);
  v732 = v44;
  v45 = *(v9 + 144);
  v733 = *(v9 + 128);
  v734 = v45;
  v46 = *(v9 + 48);
  v727 = *(v9 + 32);
  v728 = v46;
  v47 = *(v9 + 80);
  v729 = *(v9 + 64);
  v730 = v47;
  v48 = *(v9 + 16);
  *v725 = *v9;
  v726 = v48;
  HIDWORD(v732) = (v25 + 15) & 0xFFFFFFF0;
  *(&v733 + 1) = v30;
  if (BYTE1(v725[0]) << 8 == 1024)
  {
    w16_mark_constmask(v725, v689);
  }

  else
  {
    w16_mark_pixelmask(v725, v689);
  }

  if (v30 != v735)
  {
    v49 = v30;
LABEL_1251:
    free(v49);
  }

  return 1;
}