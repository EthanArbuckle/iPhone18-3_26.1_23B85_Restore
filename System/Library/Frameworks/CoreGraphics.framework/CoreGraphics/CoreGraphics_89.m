float CMYK64(float *a1, unint64_t a2, __int16 a3)
{
  *a1 = *&_blt_float[a2 + 256] + *&_blt_float[BYTE1(a2) + 512];
  a1[1] = *&_blt_float[BYTE2(a2) + 256] + *&_blt_float[BYTE3(a2) | 0x200];
  a1[2] = *&_blt_float[BYTE4(a2) + 256] + *&_blt_float[BYTE5(a2) + 512];
  a1[3] = *&_blt_float[BYTE6(a2) + 256] + *&_blt_float[HIBYTE(a2) + 512];
  result = *&_blt_float[a3 + 256] + *&_blt_float[HIBYTE(a3) + 512];
  a1[4] = result;
  return result;
}

uint64_t CMYKf_sample_cmyk64(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *(result + 40);
  v8 = *(result + 176);
  v106 = *(result + 80);
  v109 = *(result + 88);
  v119 = *(result + 120);
  v120 = *(result + 112);
  v9 = *(result + 152) - 20;
  v110 = *(result + 144) - 1;
  v10 = *(result + 260) - 1;
  v117 = *(result + 24);
  v115 = *(result + 32);
  v11 = *(result + 256) - 1;
  v105 = *(result + 188);
  v112 = *(result + 28);
  v113 = v7 + (v10 * v112) + 2 * v11;
  v118 = v115 + (v10 * v117) + 8 * v11 - 8;
  v107 = *(result + 72);
  v108 = *(result + 64);
  v114 = v7;
  v116 = result;
  while (1)
  {
    if (a3 >= v107)
    {
      v17 = v9;
      if (a3 <= v109)
      {
        v23 = (a3 >> 22) & 0x3C0;
        v24 = 0x3FFFFFFF;
        v25 = a3;
        v15 = a4;
        v16 = v108;
      }

      else
      {
        v19 = *(result + 216);
        v20 = *(result + 224) + v109;
        v21 = v20 - a3 + (v19 >> 1);
        v15 = a4;
        v16 = v108;
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

        v24 = v22 | v105;
        v25 = v20 - 0x1000000;
        v23 = 448;
      }
    }

    else
    {
      v12 = *(result + 216);
      v13 = v107 - *(result + 224);
      v14 = a3 - v13 + (v12 >> 1);
      v15 = a4;
      v16 = v108;
      v17 = v9;
      if (v14 < 1)
      {
        goto LABEL_37;
      }

      if (v14 >= v12)
      {
        LODWORD(v18) = 0x3FFFFFFF;
      }

      else
      {
        v18 = (*(result + 232) * v14) >> 32;
      }

      v24 = v18 | v105;
      v25 = v13 + 0x1000000;
      v23 = 512;
    }

    if (a2 >= v16)
    {
      if (a2 <= v106)
      {
        v30 = (a2 >> 26) & 0x3C;
        v29 = a2;
      }

      else
      {
        v31 = *(result + 192);
        v32 = *(result + 200) + v106;
        v33 = v32 - a2 + (v31 >> 1);
        if (v33 < 1)
        {
          goto LABEL_37;
        }

        if (v33 < v31)
        {
          v24 = ((v24 >> 15) * (((*(result + 208) * v33) >> 32) >> 15)) | v105;
        }

        v29 = v32 - 0x1000000;
        v30 = 28;
      }
    }

    else
    {
      v26 = *(result + 192);
      v27 = v16 - *(result + 200);
      v28 = a2 - v27 + (v26 >> 1);
      if (v28 < 1)
      {
        goto LABEL_37;
      }

      if (v28 < v26)
      {
        v24 = ((v24 >> 15) * (((*(result + 208) * v28) >> 32) >> 15)) | v105;
      }

      v29 = v27 + 0x1000000;
      v30 = 32;
    }

    if (v24 >= 0x400000)
    {
      break;
    }

LABEL_37:
    v43 = v15 - 1;
    a2 += v120;
    a3 += v119;
    v9 = v17 + 20;
    *++v110 = 0;
LABEL_38:
    a4 = v43;
    if (!v43)
    {
      return result;
    }
  }

  v34 = v25 >> 32;
  v35 = v29 >> 32;
  v36 = v115 + SHIDWORD(v25) * v117 + 8 * (v29 >> 32);
  v37 = *(result + 32);
  v38 = v118;
  if (v118 >= v36)
  {
    v38 = v36;
  }

  if (v38 < v37)
  {
    v38 = *(result + 32);
  }

  if (v7)
  {
    v39 = v7 + v34 * v112 + 2 * v35;
    v40 = *(result + 40);
    v41 = v113;
    v111 = v39;
    if (v113 >= v39)
    {
      v41 = v39;
    }

    if (v41 >= v40)
    {
      v40 = v41;
    }

    v42 = v4 & 0xFFFFFFFFFFFF0000 | *v40;
  }

  else
  {
    v111 = 0;
    v42 = v4 | 0xFFFF;
  }

  v44 = *v38;
  if (v8)
  {
    v45 = *(v8 + (v30 | v23));
LABEL_62:
    v57 = v45 & 0xF;
    v58 = v45 >> 8;
    v59 = HIBYTE(v45) & 3;
    if (v57 == 1)
    {
      v97 = (v36 + SBYTE1(v45) * v117);
      if (v118 < v97)
      {
        v97 = v118;
      }

      if (v97 >= v37)
      {
        v37 = v97;
      }

      v98 = *v37;
      v99 = 0xFFFF;
      if (v7)
      {
        v100 = (v111 + v58 * v112);
        if (v113 < v100)
        {
          v100 = v113;
        }

        if (v100 < *(result + 40))
        {
          v100 = *(result + 40);
        }

        v99 = *v100;
      }

      v101 = &interpolate_cmyk64 + 16 * v59;
      v102 = *v101;
      v103 = v59 + 1;
      v92 = v44 - ((*v101 & v44) >> v103);
      LODWORD(v101) = *(v101 + 4);
      v93 = v42 - ((v101 & v42) >> v103);
      v94 = v42 & 0xFFFFFFFFFFFF0000;
      v95 = (v102 & v98) >> v103;
      v96 = (v99 & v101) >> v103;
    }

    else
    {
      if (v57 != 2)
      {
        if (v57 == 3)
        {
          v60 = HIWORD(v45) << 56;
          v61 = (v36 + (v60 >> 53));
          if (v118 < v61)
          {
            v61 = v118;
          }

          if (v61 < v37)
          {
            v61 = v37;
          }

          v62 = *v61;
          v63 = v36 + SBYTE1(v45) * v117;
          if (v118 >= v63)
          {
            v64 = (v36 + SBYTE1(v45) * v117);
          }

          else
          {
            v64 = v118;
          }

          if (v64 < v37)
          {
            v64 = v37;
          }

          v65 = *v64;
          v66 = (v63 + (v60 >> 53));
          if (v118 < v66)
          {
            v66 = v118;
          }

          if (v66 >= v37)
          {
            v37 = v66;
          }

          v67 = *v37;
          v68 = 0xFFFF;
          v69 = 0xFFFF;
          v70 = 0xFFFF;
          if (v7)
          {
            v71 = (v111 + (v60 >> 55));
            v72 = *(result + 40);
            if (v113 < v71)
            {
              v71 = v113;
            }

            if (v71 < v72)
            {
              v71 = v72;
            }

            v69 = *v71;
            v73 = v111 + SBYTE1(v45) * v112;
            if (v113 >= v73)
            {
              v74 = (v111 + SBYTE1(v45) * v112);
            }

            else
            {
              v74 = v113;
            }

            if (v74 < v72)
            {
              v74 = v72;
            }

            v68 = *v74;
            v75 = (v73 + (v60 >> 55));
            if (v113 < v75)
            {
              v75 = v113;
            }

            if (v75 < v72)
            {
              v75 = v72;
            }

            v70 = *v75;
          }

          v76 = &interpolate_cmyk64 + 16 * v59;
          v77 = *v76;
          v78 = v59 + 1;
          v79 = v44 - ((*v76 & v44) >> v78);
          LODWORD(v76) = *(v76 + 4);
          v80 = v42 - ((v76 & v42) >> v78) + ((v68 & v76) >> v78);
          v81 = v62 - ((v77 & v62) >> v78) + ((v77 & v67) >> v78);
          v82 = (v45 >> 28) & 3;
          v83 = &interpolate_cmyk64 + 16 * v82;
          LOBYTE(v82) = v82 + 1;
          v44 = v79 + ((v77 & v65) >> v78) - (((v79 + ((v77 & v65) >> v78)) & *v83) >> v82) + ((v81 & *v83) >> v82);
          v42 = v42 & 0xFFFFFFFFFFFF0000 | (v80 - ((v80 & *(v83 + 4)) >> v82) + (((v69 - ((v69 & v76) >> v78) + ((v70 & v76) >> v78)) & *(v83 + 4)) >> v82));
        }

        goto LABEL_43;
      }

      v84 = HIWORD(v45) << 56;
      v85 = (v36 + (v84 >> 53));
      if (v118 < v85)
      {
        v85 = v118;
      }

      if (v85 >= v37)
      {
        v37 = v85;
      }

      v86 = *v37;
      v87 = 0xFFFF;
      if (v7)
      {
        v88 = (v111 + (v84 >> 55));
        if (v113 < v88)
        {
          v88 = v113;
        }

        if (v88 < *(result + 40))
        {
          v88 = *(result + 40);
        }

        v87 = *v88;
      }

      v89 = (v45 >> 28) & 3;
      v90 = &interpolate_cmyk64 + 16 * v89;
      v91 = *v90;
      LOBYTE(v89) = v89 + 1;
      v92 = v44 - ((*v90 & v44) >> v89);
      LODWORD(v90) = *(v90 + 4);
      v93 = v42 - ((v90 & v42) >> v89);
      v94 = v42 & 0xFFFFFFFFFFFF0000;
      v95 = (v91 & v86) >> v89;
      v96 = (v87 & v90) >> v89;
    }

    v44 = v92 + v95;
    v42 = v94 | (v93 + v96);
  }

LABEL_43:
  v46 = 0;
  v47 = v24 >> 22;
  v48 = (v17 + 20);
  v104 = v15;
  v49 = v15 - 1;
  a3 += v119;
  v50 = v109 - a3;
  a2 += v120;
  v51 = v106 - a2;
  while (1)
  {
    v9 = v48;
    v52 = v48;
    v4 = v42;
    v53 = v8;
    CMYK64(v52, v44, v42);
    *(v110 + 1 + v46) = v47;
    result = v116;
    v7 = v114;
    if (v49 == v46)
    {
      return result;
    }

    v8 = v53;
    if ((v50 | v51 | (a3 - v107) | (a2 - v108)) < 0)
    {
      v110 += v46 + 1;
      v43 = ~v46 + v104;
      goto LABEL_38;
    }

    v36 = v115 + SHIDWORD(a3) * v117 + 8 * (a2 >> 32);
    v37 = *(v116 + 32);
    v54 = v118;
    if (v118 >= v36)
    {
      v54 = (v115 + SHIDWORD(a3) * v117 + 8 * (a2 >> 32));
    }

    if (v54 < v37)
    {
      v54 = *(v116 + 32);
    }

    v17 = v9;
    if (v114)
    {
      v55 = *(v116 + 40);
      v56 = v113;
      v111 = v114 + SHIDWORD(a3) * v112 + 2 * (a2 >> 32);
      if (v113 >= v111)
      {
        v56 = v114 + SHIDWORD(a3) * v112 + 2 * (a2 >> 32);
      }

      if (v56 >= v55)
      {
        v55 = v56;
      }

      v42 = v4 & 0xFFFFFFFFFFFF0000 | *v55;
    }

    else
    {
      v42 = v4 | 0xFFFF;
    }

    v44 = *v54;
    if (v8)
    {
      v45 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v45 & 0xF) != 0)
      {
        v110 += v46 + 1;
        v15 = ~v46 + v104;
        v24 = -1;
        goto LABEL_62;
      }
    }

    ++v46;
    v48 = (v9 + 20);
    a3 += v119;
    v50 -= v119;
    a2 += v120;
    v51 -= v120;
    LOBYTE(v47) = -1;
  }
}

uint64_t CMYKf_sample_WF(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v9 = *(result + 72);
  v86 = *(result + 80);
  v87 = *(result + 64);
  v88 = *(result + 88);
  v11 = *(result + 112);
  v10 = *(result + 120);
  v12 = *(result + 152) - 20;
  v13 = *(result + 144) - 1;
  v14 = *(result + 260) - 1;
  v15 = *(result + 256) - 1;
  v16 = v5 + (v14 * v7) + 4 * v15;
  v85 = *(result + 188);
  v17 = v4 + (v14 * v6) + 4 * v15 - 4;
  while (1)
  {
LABEL_2:
    if (a3 >= v9)
    {
      if (a3 <= v88)
      {
        v26 = (a3 >> 22) & 0x3C0;
        v27 = 0x3FFFFFFF;
        v28 = a3;
        v29 = v87;
      }

      else
      {
        v22 = *(result + 216);
        v23 = *(result + 224) + v88;
        v24 = v23 - a3 + (v22 >> 1);
        if (v24 < 1)
        {
          goto LABEL_40;
        }

        if (v24 >= v22)
        {
          LODWORD(v25) = 0x3FFFFFFF;
        }

        else
        {
          v25 = (*(result + 232) * v24) >> 32;
        }

        v29 = v87;
        v27 = v25 | v85;
        v28 = v23 - 0x1000000;
        v26 = 448;
      }
    }

    else
    {
      v18 = *(result + 216);
      v19 = v9 - *(result + 224);
      v20 = a3 - v19 + (v18 >> 1);
      if (v20 < 1)
      {
        goto LABEL_40;
      }

      if (v20 >= v18)
      {
        LODWORD(v21) = 0x3FFFFFFF;
      }

      else
      {
        v21 = (*(result + 232) * v20) >> 32;
      }

      v29 = v87;
      v27 = v21 | v85;
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
        v27 = ((v27 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v85;
      }

      v33 = v31 + 0x1000000;
      v34 = 32;
      goto LABEL_26;
    }

LABEL_40:
    --a4;
    a2 += v11;
    a3 += v10;
    v12 += 20;
    *++v13 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v86)
  {
    v34 = (a2 >> 26) & 0x3C;
    v33 = a2;
    goto LABEL_26;
  }

  v35 = *(result + 192);
  v36 = *(result + 200) + v86;
  v37 = v36 - a2 + (v35 >> 1);
  if (v37 < 1)
  {
    goto LABEL_40;
  }

  if (v37 < v35)
  {
    v27 = ((v27 >> 15) * (((*(result + 208) * v37) >> 32) >> 15)) | v85;
  }

  v33 = v36 - 0x1000000;
  v34 = 28;
LABEL_26:
  if (v27 < 0x400000)
  {
    goto LABEL_40;
  }

  v38 = v28 >> 32;
  v39 = v4 + SHIDWORD(v28) * v6;
  v40 = (v33 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
  v41 = v39 + v40;
  v42 = *(result + 32);
  if (v17 >= v39 + v40)
  {
    v43 = (v39 + v40);
  }

  else
  {
    v43 = v17;
  }

  if (v43 >= v42)
  {
    v44 = v43;
  }

  else
  {
    v44 = *(result + 32);
  }

  if (v5)
  {
    v45 = v5 + v38 * v7 + v40;
    v46 = *(result + 40);
    if (v16 >= v45)
    {
      v47 = v45;
    }

    else
    {
      v47 = v16;
    }

    if (v47 >= v46)
    {
      v46 = v47;
    }

    v48 = COERCE_FLOAT(bswap32(*v46));
  }

  else
  {
    v45 = 0;
    v48 = 1.0;
  }

  v49 = COERCE_FLOAT(bswap32(*v44));
  if (v8)
  {
    v50 = *(v8 + (v34 | v26));
LABEL_68:
    v62 = v50 & 0xF;
    v63 = HIBYTE(v50) & 3;
    if (v62 == 1)
    {
      v82 = (v41 + SBYTE1(v50) * v6);
      if (v17 < v82)
      {
        v82 = v17;
      }

      if (v82 < v42)
      {
        v82 = v42;
      }

      v78 = COERCE_FLOAT(bswap32(*v82));
      v79 = 1.0;
      if (v5)
      {
        v83 = (v45 + SBYTE1(v50) * v7);
        if (v16 < v83)
        {
          v83 = v16;
        }

        if (v83 < *(result + 40))
        {
          v83 = *(result + 40);
        }

        v79 = COERCE_FLOAT(bswap32(*v83));
      }

      v81 = &interpolate_waf[2 * v63];
    }

    else
    {
      if (v62 != 2)
      {
        if (v62 == 3)
        {
          v64 = v41 + 4 * SBYTE2(v50);
          if (v17 >= v64)
          {
            v65 = (v41 + 4 * SBYTE2(v50));
          }

          else
          {
            v65 = v17;
          }

          if (v65 < v42)
          {
            v65 = v42;
          }

          v66 = COERCE_FLOAT(bswap32(*v65));
          v67 = (v64 + SBYTE1(v50) * v6);
          if (v17 < v67)
          {
            v67 = v17;
          }

          if (v67 < v42)
          {
            v67 = v42;
          }

          v68 = COERCE_FLOAT(bswap32(*v67));
          v69 = 1.0;
          v70 = 1.0;
          if (v5)
          {
            v71 = v45 + 4 * SBYTE2(v50);
            v72 = *(result + 40);
            if (v16 >= v71)
            {
              v73 = (v45 + 4 * SBYTE2(v50));
            }

            else
            {
              v73 = v16;
            }

            if (v73 < v72)
            {
              v73 = *(result + 40);
            }

            v70 = COERCE_FLOAT(bswap32(*v73));
            v74 = (v71 + SBYTE1(v50) * v7);
            if (v16 < v74)
            {
              v74 = v16;
            }

            if (v74 < v72)
            {
              v74 = *(result + 40);
            }

            v69 = COERCE_FLOAT(bswap32(*v74));
          }

          v75 = interpolate_waf[2 * v63 + 1];
          v76 = interpolate_waf[2 * ((v50 >> 28) & 3) + 1];
          v49 = (((v49 - (v49 * v75)) + (v66 * v75)) - (((v49 - (v49 * v75)) + (v66 * v75)) * v76)) + (((v66 - (v66 * v75)) + (v68 * v75)) * v76);
          v48 = (((v48 - (v48 * v75)) + (v70 * v75)) - (((v48 - (v48 * v75)) + (v70 * v75)) * v76)) + (((v70 - (v70 * v75)) + (v69 * v75)) * v76);
        }

        goto LABEL_45;
      }

      v77 = (v41 + 4 * SBYTE2(v50));
      if (v17 < v77)
      {
        v77 = v17;
      }

      if (v77 < v42)
      {
        v77 = v42;
      }

      v78 = COERCE_FLOAT(bswap32(*v77));
      v79 = 1.0;
      if (v5)
      {
        v80 = (v45 + 4 * SBYTE2(v50));
        if (v16 < v80)
        {
          v80 = v16;
        }

        if (v80 < *(result + 40))
        {
          v80 = *(result + 40);
        }

        v79 = COERCE_FLOAT(bswap32(*v80));
      }

      v81 = &interpolate_waf[2 * ((v50 >> 28) & 3)];
    }

    v84 = v81[1];
    v49 = (v49 - (v49 * v84)) + (v78 * v84);
    v48 = (v48 - (v48 * v84)) + (v79 * v84);
  }

LABEL_45:
  *(v12 + 24) = 0;
  *(v12 + 20) = 0;
  *(v12 + 32) = v48 - v49;
  *(v12 + 36) = v48;
  *(v13 + 1) = v27 >> 22;
  if (a4 != 1)
  {
    v51 = 0;
    v52 = (v12 + 56);
    a2 += v11;
    v53 = v86 - a2;
    a3 += v10;
    v54 = v88 - a3;
    while ((((a2 - v87) | v53 | (a3 - v9) | v54) & 0x8000000000000000) == 0)
    {
      v55 = v4 + SHIDWORD(a3) * v6;
      v56 = (a2 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
      v41 = v55 + v56;
      v42 = *(result + 32);
      if (v17 >= v55 + v56)
      {
        v57 = (v55 + v56);
      }

      else
      {
        v57 = v17;
      }

      if (v57 < v42)
      {
        v57 = *(result + 32);
      }

      if (v5)
      {
        v45 = v5 + SHIDWORD(a3) * v7 + v56;
        v58 = *(result + 40);
        if (v16 >= v45)
        {
          v59 = v45;
        }

        else
        {
          v59 = v16;
        }

        if (v59 >= v58)
        {
          v58 = v59;
        }

        v48 = COERCE_FLOAT(bswap32(*v58));
      }

      else
      {
        v48 = 1.0;
      }

      v60 = COERCE_FLOAT(bswap32(*v57));
      v49 = v60;
      if (v8)
      {
        v50 = *(v8 + ((a3 >> 22) & 0x3C0 | (a2 >> 26) & 0x3C));
        if ((v50 & 0xF) != 0)
        {
          v13 += v51 + 1;
          v12 = (v52 - 9);
          a4 += ~v51;
          v27 = -1;
          goto LABEL_68;
        }
      }

      *(v52 - 3) = 0;
      *(v52 - 4) = 0.0;
      *(v52 - 1) = v48 - v60;
      *v52 = v48;
      v61 = v13 + v51++;
      v52 += 5;
      a2 += v11;
      *(v61 + 2) = -1;
      v53 -= v11;
      a3 += v10;
      v54 -= v10;
      if (a4 - 1 == v51)
      {
        return result;
      }
    }

    v13 += v51 + 1;
    v12 = (v52 - 9);
    a4 += ~v51;
    if (a4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t CMYKf_sample_Wf(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v9 = *(result + 72);
  v85 = *(result + 80);
  v86 = *(result + 64);
  v87 = *(result + 88);
  v11 = *(result + 112);
  v10 = *(result + 120);
  v12 = *(result + 152) - 20;
  v13 = *(result + 144) - 1;
  v14 = *(result + 260) - 1;
  v15 = *(result + 256) - 1;
  v16 = v5 + (v14 * v7) + 4 * v15;
  v84 = *(result + 188);
  v17 = v4 + (v14 * v6) + 4 * v15 - 4;
  while (1)
  {
LABEL_2:
    if (a3 >= v9)
    {
      if (a3 <= v87)
      {
        v26 = (a3 >> 22) & 0x3C0;
        v27 = 0x3FFFFFFF;
        v28 = a3;
        v29 = v86;
      }

      else
      {
        v22 = *(result + 216);
        v23 = *(result + 224) + v87;
        v24 = v23 - a3 + (v22 >> 1);
        if (v24 < 1)
        {
          goto LABEL_40;
        }

        if (v24 >= v22)
        {
          LODWORD(v25) = 0x3FFFFFFF;
        }

        else
        {
          v25 = (*(result + 232) * v24) >> 32;
        }

        v29 = v86;
        v27 = v25 | v84;
        v28 = v23 - 0x1000000;
        v26 = 448;
      }
    }

    else
    {
      v18 = *(result + 216);
      v19 = v9 - *(result + 224);
      v20 = a3 - v19 + (v18 >> 1);
      if (v20 < 1)
      {
        goto LABEL_40;
      }

      if (v20 >= v18)
      {
        LODWORD(v21) = 0x3FFFFFFF;
      }

      else
      {
        v21 = (*(result + 232) * v20) >> 32;
      }

      v29 = v86;
      v27 = v21 | v84;
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
        v27 = ((v27 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v84;
      }

      v33 = v31 + 0x1000000;
      v34 = 32;
      goto LABEL_26;
    }

LABEL_40:
    --a4;
    a2 += v11;
    a3 += v10;
    v12 += 20;
    *++v13 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v85)
  {
    v34 = (a2 >> 26) & 0x3C;
    v33 = a2;
    goto LABEL_26;
  }

  v35 = *(result + 192);
  v36 = *(result + 200) + v85;
  v37 = v36 - a2 + (v35 >> 1);
  if (v37 < 1)
  {
    goto LABEL_40;
  }

  if (v37 < v35)
  {
    v27 = ((v27 >> 15) * (((*(result + 208) * v37) >> 32) >> 15)) | v84;
  }

  v33 = v36 - 0x1000000;
  v34 = 28;
LABEL_26:
  if (v27 < 0x400000)
  {
    goto LABEL_40;
  }

  v38 = v28 >> 32;
  v39 = v4 + SHIDWORD(v28) * v6;
  v40 = (v33 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
  v41 = v39 + v40;
  v42 = *(result + 32);
  if (v17 >= v39 + v40)
  {
    v43 = (v39 + v40);
  }

  else
  {
    v43 = v17;
  }

  if (v43 >= v42)
  {
    v44 = v43;
  }

  else
  {
    v44 = *(result + 32);
  }

  if (v5)
  {
    v45 = v5 + v38 * v7 + v40;
    v46 = *(result + 40);
    if (v16 >= v45)
    {
      v47 = v45;
    }

    else
    {
      v47 = v16;
    }

    if (v47 >= v46)
    {
      v46 = v47;
    }

    v48 = *v46;
  }

  else
  {
    v45 = 0;
    v48 = 1.0;
  }

  v49 = *v44;
  if (v8)
  {
    v50 = *(v8 + (v34 | v26));
LABEL_68:
    v61 = v50 & 0xF;
    v62 = HIBYTE(v50) & 3;
    if (v61 == 1)
    {
      v81 = (v41 + SBYTE1(v50) * v6);
      if (v17 < v81)
      {
        v81 = v17;
      }

      if (v81 < v42)
      {
        v81 = v42;
      }

      v77 = *v81;
      v78 = 1.0;
      if (v5)
      {
        v82 = (v45 + SBYTE1(v50) * v7);
        if (v16 < v82)
        {
          v82 = v16;
        }

        if (v82 < *(result + 40))
        {
          v82 = *(result + 40);
        }

        v78 = *v82;
      }

      v80 = &interpolate_waf[2 * v62];
    }

    else
    {
      if (v61 != 2)
      {
        if (v61 == 3)
        {
          v63 = v41 + 4 * SBYTE2(v50);
          if (v17 >= v63)
          {
            v64 = (v41 + 4 * SBYTE2(v50));
          }

          else
          {
            v64 = v17;
          }

          if (v64 < v42)
          {
            v64 = v42;
          }

          v65 = *v64;
          v66 = (v63 + SBYTE1(v50) * v6);
          if (v17 < v66)
          {
            v66 = v17;
          }

          if (v66 < v42)
          {
            v66 = v42;
          }

          v67 = *v66;
          v68 = 1.0;
          v69 = 1.0;
          if (v5)
          {
            v70 = v45 + 4 * SBYTE2(v50);
            v71 = *(result + 40);
            if (v16 >= v70)
            {
              v72 = (v45 + 4 * SBYTE2(v50));
            }

            else
            {
              v72 = v16;
            }

            if (v72 < v71)
            {
              v72 = *(result + 40);
            }

            v69 = *v72;
            v73 = (v70 + SBYTE1(v50) * v7);
            if (v16 < v73)
            {
              v73 = v16;
            }

            if (v73 < v71)
            {
              v73 = *(result + 40);
            }

            v68 = *v73;
          }

          v74 = interpolate_waf[2 * v62 + 1];
          v75 = interpolate_waf[2 * ((v50 >> 28) & 3) + 1];
          v49 = (((v49 - (v49 * v74)) + (v65 * v74)) - (((v49 - (v49 * v74)) + (v65 * v74)) * v75)) + (((v65 - (v65 * v74)) + (v67 * v74)) * v75);
          v48 = (((v48 - (v48 * v74)) + (v69 * v74)) - (((v48 - (v48 * v74)) + (v69 * v74)) * v75)) + (((v69 - (v69 * v74)) + (v68 * v74)) * v75);
        }

        goto LABEL_45;
      }

      v76 = (v41 + 4 * SBYTE2(v50));
      if (v17 < v76)
      {
        v76 = v17;
      }

      if (v76 < v42)
      {
        v76 = v42;
      }

      v77 = *v76;
      v78 = 1.0;
      if (v5)
      {
        v79 = (v45 + 4 * SBYTE2(v50));
        if (v16 < v79)
        {
          v79 = v16;
        }

        if (v79 < *(result + 40))
        {
          v79 = *(result + 40);
        }

        v78 = *v79;
      }

      v80 = &interpolate_waf[2 * ((v50 >> 28) & 3)];
    }

    v83 = v80[1];
    v49 = (v49 - (v49 * v83)) + (v77 * v83);
    v48 = (v48 - (v48 * v83)) + (v78 * v83);
  }

LABEL_45:
  *(v12 + 24) = 0;
  *(v12 + 20) = 0;
  *(v12 + 32) = v48 - v49;
  *(v12 + 36) = v48;
  *(v13 + 1) = v27 >> 22;
  if (a4 != 1)
  {
    v51 = 0;
    v52 = (v12 + 56);
    a2 += v11;
    v53 = v85 - a2;
    a3 += v10;
    v54 = v87 - a3;
    while ((((a2 - v86) | v53 | (a3 - v9) | v54) & 0x8000000000000000) == 0)
    {
      v55 = v4 + SHIDWORD(a3) * v6;
      v56 = (a2 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
      v41 = v55 + v56;
      v42 = *(result + 32);
      if (v17 >= v55 + v56)
      {
        v57 = (v55 + v56);
      }

      else
      {
        v57 = v17;
      }

      if (v57 < v42)
      {
        v57 = *(result + 32);
      }

      if (v5)
      {
        v45 = v5 + SHIDWORD(a3) * v7 + v56;
        v58 = *(result + 40);
        if (v16 >= v45)
        {
          v59 = v45;
        }

        else
        {
          v59 = v16;
        }

        if (v59 >= v58)
        {
          v58 = v59;
        }

        v48 = *v58;
      }

      else
      {
        v48 = 1.0;
      }

      v49 = *v57;
      if (v8)
      {
        v50 = *(v8 + ((a3 >> 22) & 0x3C0 | (a2 >> 26) & 0x3C));
        if ((v50 & 0xF) != 0)
        {
          v13 += v51 + 1;
          v12 = (v52 - 9);
          a4 += ~v51;
          v27 = -1;
          goto LABEL_68;
        }
      }

      *(v52 - 3) = 0;
      *(v52 - 4) = 0.0;
      *(v52 - 1) = v48 - v49;
      *v52 = v48;
      v60 = v13 + v51++;
      v52 += 5;
      a2 += v11;
      *(v60 + 2) = -1;
      v53 -= v11;
      a3 += v10;
      v54 -= v10;
      if (a4 - 1 == v51)
      {
        return result;
      }
    }

    v13 += v51 + 1;
    v12 = (v52 - 9);
    a4 += ~v51;
    if (a4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t CMYKf_sample_RGBF(uint64_t result, unint64_t a2, unint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v11 = *(result + 32);
  v12 = *(result + 24);
  v13 = *(result + 176);
  v14 = *(result + 64);
  v15 = *(result + 72);
  v16 = *(result + 80);
  v17 = *(result + 88);
  v18 = *(result + 112);
  v19 = *(result + 120);
  v20 = *(result + 152) - 20;
  v21 = *(result + 144) - 1;
  v22 = *(result + 188);
  v23 = v11 + ((*(result + 260) - 1) * v12) + 4 * (3 * *(result + 256) - 3) - 12;
  while (1)
  {
LABEL_2:
    if (a3 >= v15)
    {
      if (a3 <= v17)
      {
        v32 = (a3 >> 22) & 0x3C0;
        v33 = 0x3FFFFFFF;
        HIDWORD(v34) = HIDWORD(a3);
      }

      else
      {
        v28 = *(result + 216);
        v29 = *(result + 224) + v17;
        v30 = v29 - a3 + (v28 >> 1);
        if (v30 < 1)
        {
          goto LABEL_34;
        }

        if (v30 >= v28)
        {
          LODWORD(v31) = 0x3FFFFFFF;
        }

        else
        {
          v31 = (*(result + 232) * v30) >> 32;
        }

        v33 = v31 | v22;
        v34 = v29 - 0x1000000;
        v32 = 448;
      }
    }

    else
    {
      v24 = *(result + 216);
      v25 = v15 - *(result + 224);
      v26 = a3 - v25 + (v24 >> 1);
      if (v26 < 1)
      {
        goto LABEL_34;
      }

      if (v26 >= v24)
      {
        LODWORD(v27) = 0x3FFFFFFF;
      }

      else
      {
        v27 = (*(result + 232) * v26) >> 32;
      }

      v33 = v27 | v22;
      v34 = v25 + 0x1000000;
      v32 = 512;
    }

    if (a2 >= v14)
    {
      break;
    }

    v35 = *(result + 192);
    v36 = v14 - *(result + 200);
    v37 = a2 - v36 + (v35 >> 1);
    if (v37 >= 1)
    {
      if (v37 < v35)
      {
        v33 = ((v33 >> 15) * (((*(result + 208) * v37) >> 32) >> 15)) | v22;
      }

      v38 = v36 + 0x1000000;
      v39 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v18;
    a3 += v19;
    v20 += 20;
    *++v21 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v16)
  {
    v39 = (a2 >> 26) & 0x3C;
    HIDWORD(v38) = HIDWORD(a2);
    goto LABEL_26;
  }

  v40 = *(result + 192);
  v41 = *(result + 200) + v16;
  v42 = v41 - a2 + (v40 >> 1);
  if (v42 < 1)
  {
    goto LABEL_34;
  }

  if (v42 < v40)
  {
    v33 = ((v33 >> 15) * (((*(result + 208) * v42) >> 32) >> 15)) | v22;
  }

  v38 = v41 - 0x1000000;
  v39 = 28;
LABEL_26:
  if (v33 < 0x400000)
  {
    goto LABEL_34;
  }

  v43 = v11 + SHIDWORD(v34) * v12 + 12 * SHIDWORD(v38);
  v44 = *(result + 32);
  if (v23 >= v43)
  {
    v45 = v43;
  }

  else
  {
    v45 = v23;
  }

  if (v45 < v44)
  {
    v45 = *(result + 32);
  }

  v46 = vrev32_s8(*v45);
  v47 = COERCE_FLOAT(bswap32(v45[1].u32[0]));
  if (!v13)
  {
    goto LABEL_36;
  }

  v48 = *(v13 + (v39 | v32));
LABEL_55:
  v57 = v48 & 0xF;
  v58 = HIBYTE(v48) & 3;
  if (v57 == 1)
  {
    v68 = (v43 + SBYTE1(v48) * v12);
    if (v23 < v68)
    {
      v68 = v23;
    }

    if (v68 < v44)
    {
      v68 = v44;
    }

    v66 = COERCE_FLOAT(bswap32(v68[1].u32[0]));
    LODWORD(a9) = interpolate_rgbaf_21860[4 * v58 + 3];
    v67 = *v68;
    goto LABEL_78;
  }

  if (v57 == 2)
  {
    v65 = (v43 + 12 * SBYTE2(v48));
    if (v23 < v65)
    {
      v65 = v23;
    }

    if (v65 < v44)
    {
      v65 = v44;
    }

    v66 = COERCE_FLOAT(bswap32(v65[1].u32[0]));
    LODWORD(a9) = interpolate_rgbaf_21860[4 * ((v48 >> 28) & 3) + 3];
    v67 = *v65;
LABEL_78:
    v46 = vmla_n_f32(vmls_lane_f32(v46, v46, *&a9, 0), vrev32_s8(v67), *&a9);
    v47 = (v47 - (v47 * *&a9)) + (v66 * *&a9);
    v49 = *&a9 + (1.0 - *&a9);
    goto LABEL_37;
  }

  if (v57 != 3)
  {
LABEL_36:
    v49 = 1.0;
    goto LABEL_37;
  }

  v59 = (v43 + 12 * SBYTE2(v48));
  if (v23 >= v59)
  {
    v60 = v59;
  }

  else
  {
    v60 = v23;
  }

  if (v60 < v44)
  {
    v60 = v44;
  }

  v61 = COERCE_FLOAT(bswap32(v60[1].u32[0]));
  v62 = (v59 + SBYTE1(v48) * v12);
  if (v23 < v62)
  {
    v62 = v23;
  }

  if (v62 < v44)
  {
    v62 = v44;
  }

  LODWORD(a10) = interpolate_rgbaf_21860[4 * v58 + 3];
  LODWORD(a11) = interpolate_rgbaf_21860[4 * ((v48 >> 28) & 3) + 3];
  v47 = (((v47 - (v47 * *&a10)) + (v61 * *&a10)) - (((v47 - (v47 * *&a10)) + (v61 * *&a10)) * *&a11)) + (((v61 - (v61 * *&a10)) + (COERCE_FLOAT(bswap32(v62[1].u32[0])) * *&a10)) * *&a11);
  v63 = vrev32_s8(*v60);
  v64 = vmla_n_f32(vmls_lane_f32(v46, v46, *&a10, 0), v63, *&a10);
  a9 = COERCE_DOUBLE(vmla_n_f32(vmls_lane_f32(v63, v63, *&a10, 0), vrev32_s8(*v62), *&a10));
  v46 = vmla_n_f32(vmls_lane_f32(v64, v64, *&a11, 0), *&a9, *&a11);
  v49 = ((*&a10 + (1.0 - *&a10)) - ((*&a10 + (1.0 - *&a10)) * *&a11)) + ((*&a10 + (1.0 - *&a10)) * *&a11);
LABEL_37:
  v50 = 0;
  v51 = v33 >> 22;
  v52 = (v20 + 36);
  a2 += v18;
  v53 = v16 - a2;
  a3 += v19;
  v54 = v17 - a3;
  while (1)
  {
    LODWORD(a9) = v46.i32[1];
    if (v46.f32[0] > v46.f32[1])
    {
      *&a9 = v46.f32[0];
    }

    if (v47 > *&a9)
    {
      *&a9 = v47;
    }

    a10 = COERCE_DOUBLE(vdup_lane_s32(*&a9, 0));
    *(v52 - 2) = vsub_f32(*&a10, v46);
    *(v52 - 2) = *&a9 - v47;
    *(v52 - 1) = v49 - *&a9;
    *v52 = v49;
    *(v21 + 1 + v50) = v51;
    if (a4 - 1 == v50)
    {
      return result;
    }

    if (((v54 | v53 | (a3 - v15) | (a2 - v14)) & 0x8000000000000000) != 0)
    {
      v21 += v50 + 1;
      v20 = (v52 - 4);
      a4 += ~v50;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v55 = v11 + SHIDWORD(a3) * v12;
    v43 = v55 + 12 * SHIDWORD(a2);
    v44 = *(result + 32);
    if (v23 >= v43)
    {
      v56 = (v55 + 12 * SHIDWORD(a2));
    }

    else
    {
      v56 = v23;
    }

    if (v56 < v44)
    {
      v56 = *(result + 32);
    }

    v46 = vrev32_s8(*v56);
    v47 = COERCE_FLOAT(bswap32(v56[1].u32[0]));
    if (v13)
    {
      v48 = *(v13 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v48 & 0xF) != 0)
      {
        v21 += v50 + 1;
        v20 = (v52 - 4);
        a4 += ~v50;
        v33 = -1;
        goto LABEL_55;
      }
    }

    ++v50;
    v52 += 5;
    v53 -= v18;
    a2 += v18;
    a3 += v19;
    v54 -= v19;
    v49 = 1.0;
    LOBYTE(v51) = -1;
  }
}

uint64_t CMYKf_sample_RGBf(uint64_t result, unint64_t a2, unint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v11 = *(result + 32);
  v12 = *(result + 24);
  v13 = *(result + 176);
  v14 = *(result + 64);
  v15 = *(result + 72);
  v16 = *(result + 80);
  v17 = *(result + 88);
  v18 = *(result + 112);
  v19 = *(result + 120);
  v20 = *(result + 152) - 20;
  v21 = *(result + 144) - 1;
  v22 = *(result + 188);
  v23 = v11 + ((*(result + 260) - 1) * v12) + 4 * (3 * *(result + 256) - 3) - 12;
  while (1)
  {
LABEL_2:
    if (a3 >= v15)
    {
      if (a3 <= v17)
      {
        v32 = (a3 >> 22) & 0x3C0;
        v33 = 0x3FFFFFFF;
        HIDWORD(v34) = HIDWORD(a3);
      }

      else
      {
        v28 = *(result + 216);
        v29 = *(result + 224) + v17;
        v30 = v29 - a3 + (v28 >> 1);
        if (v30 < 1)
        {
          goto LABEL_34;
        }

        if (v30 >= v28)
        {
          LODWORD(v31) = 0x3FFFFFFF;
        }

        else
        {
          v31 = (*(result + 232) * v30) >> 32;
        }

        v33 = v31 | v22;
        v34 = v29 - 0x1000000;
        v32 = 448;
      }
    }

    else
    {
      v24 = *(result + 216);
      v25 = v15 - *(result + 224);
      v26 = a3 - v25 + (v24 >> 1);
      if (v26 < 1)
      {
        goto LABEL_34;
      }

      if (v26 >= v24)
      {
        LODWORD(v27) = 0x3FFFFFFF;
      }

      else
      {
        v27 = (*(result + 232) * v26) >> 32;
      }

      v33 = v27 | v22;
      v34 = v25 + 0x1000000;
      v32 = 512;
    }

    if (a2 >= v14)
    {
      break;
    }

    v35 = *(result + 192);
    v36 = v14 - *(result + 200);
    v37 = a2 - v36 + (v35 >> 1);
    if (v37 >= 1)
    {
      if (v37 < v35)
      {
        v33 = ((v33 >> 15) * (((*(result + 208) * v37) >> 32) >> 15)) | v22;
      }

      v38 = v36 + 0x1000000;
      v39 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v18;
    a3 += v19;
    v20 += 20;
    *++v21 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v16)
  {
    v39 = (a2 >> 26) & 0x3C;
    HIDWORD(v38) = HIDWORD(a2);
    goto LABEL_26;
  }

  v40 = *(result + 192);
  v41 = *(result + 200) + v16;
  v42 = v41 - a2 + (v40 >> 1);
  if (v42 < 1)
  {
    goto LABEL_34;
  }

  if (v42 < v40)
  {
    v33 = ((v33 >> 15) * (((*(result + 208) * v42) >> 32) >> 15)) | v22;
  }

  v38 = v41 - 0x1000000;
  v39 = 28;
LABEL_26:
  if (v33 < 0x400000)
  {
    goto LABEL_34;
  }

  v43 = v11 + SHIDWORD(v34) * v12 + 12 * SHIDWORD(v38);
  v44 = *(result + 32);
  if (v23 >= v43)
  {
    v45 = v43;
  }

  else
  {
    v45 = v23;
  }

  if (v45 < v44)
  {
    v45 = *(result + 32);
  }

  v46 = *v45;
  v47 = v45[1].f32[0];
  if (!v13)
  {
    goto LABEL_36;
  }

  v48 = *(v13 + (v39 | v32));
LABEL_55:
  v57 = v48 & 0xF;
  v58 = HIBYTE(v48) & 3;
  if (v57 == 1)
  {
    v66 = (v43 + SBYTE1(v48) * v12);
    if (v23 < v66)
    {
      v66 = v23;
    }

    if (v66 < v44)
    {
      v66 = v44;
    }

    v64 = v66[1].f32[0];
    LODWORD(a9) = interpolate_rgbaf_21860[4 * v58 + 3];
    v65 = *v66;
    goto LABEL_78;
  }

  if (v57 == 2)
  {
    v63 = (v43 + 12 * SBYTE2(v48));
    if (v23 < v63)
    {
      v63 = v23;
    }

    if (v63 < v44)
    {
      v63 = v44;
    }

    v64 = v63[1].f32[0];
    LODWORD(a9) = interpolate_rgbaf_21860[4 * ((v48 >> 28) & 3) + 3];
    v65 = *v63;
LABEL_78:
    v46 = vmla_n_f32(vmls_lane_f32(v46, v46, *&a9, 0), v65, *&a9);
    v47 = (v47 - (v47 * *&a9)) + (v64 * *&a9);
    v49 = *&a9 + (1.0 - *&a9);
    goto LABEL_37;
  }

  if (v57 != 3)
  {
LABEL_36:
    v49 = 1.0;
    goto LABEL_37;
  }

  v59 = v43 + 12 * SBYTE2(v48);
  if (v23 >= v59)
  {
    v60 = (v43 + 12 * SBYTE2(v48));
  }

  else
  {
    v60 = v23;
  }

  if (v60 < v44)
  {
    v60 = v44;
  }

  v61 = (v59 + SBYTE1(v48) * v12);
  if (v23 < v61)
  {
    v61 = v23;
  }

  if (v61 < v44)
  {
    v61 = v44;
  }

  LODWORD(a10) = interpolate_rgbaf_21860[4 * v58 + 3];
  LODWORD(a11) = interpolate_rgbaf_21860[4 * ((v48 >> 28) & 3) + 3];
  v47 = (((v47 - (v47 * *&a10)) + (v60[1].f32[0] * *&a10)) - (((v47 - (v47 * *&a10)) + (v60[1].f32[0] * *&a10)) * *&a11)) + (((v60[1].f32[0] - (v60[1].f32[0] * *&a10)) + (v61[1].f32[0] * *&a10)) * *&a11);
  v62 = vmla_n_f32(vmls_lane_f32(v46, v46, *&a10, 0), *v60, *&a10);
  a9 = COERCE_DOUBLE(vmla_n_f32(vmls_lane_f32(*v60, *v60, *&a10, 0), *v61, *&a10));
  v46 = vmla_n_f32(vmls_lane_f32(v62, v62, *&a11, 0), *&a9, *&a11);
  v49 = ((*&a10 + (1.0 - *&a10)) - ((*&a10 + (1.0 - *&a10)) * *&a11)) + ((*&a10 + (1.0 - *&a10)) * *&a11);
LABEL_37:
  v50 = 0;
  v51 = v33 >> 22;
  v52 = (v20 + 36);
  a2 += v18;
  v53 = v16 - a2;
  a3 += v19;
  v54 = v17 - a3;
  while (1)
  {
    LODWORD(a9) = v46.i32[1];
    if (v46.f32[0] > v46.f32[1])
    {
      *&a9 = v46.f32[0];
    }

    if (v47 > *&a9)
    {
      *&a9 = v47;
    }

    a10 = COERCE_DOUBLE(vdup_lane_s32(*&a9, 0));
    *(v52 - 2) = vsub_f32(*&a10, v46);
    *(v52 - 2) = *&a9 - v47;
    *(v52 - 1) = v49 - *&a9;
    *v52 = v49;
    *(v21 + 1 + v50) = v51;
    if (a4 - 1 == v50)
    {
      return result;
    }

    if (((v54 | v53 | (a3 - v15) | (a2 - v14)) & 0x8000000000000000) != 0)
    {
      v21 += v50 + 1;
      v20 = (v52 - 4);
      a4 += ~v50;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v55 = v11 + SHIDWORD(a3) * v12;
    v43 = v55 + 12 * SHIDWORD(a2);
    v44 = *(result + 32);
    if (v23 >= v43)
    {
      v56 = (v55 + 12 * SHIDWORD(a2));
    }

    else
    {
      v56 = v23;
    }

    if (v56 < v44)
    {
      v56 = *(result + 32);
    }

    v46 = *v56;
    v47 = v56[1].f32[0];
    if (v13)
    {
      v48 = *(v13 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v48 & 0xF) != 0)
      {
        v21 += v50 + 1;
        v20 = (v52 - 4);
        a4 += ~v50;
        v33 = -1;
        goto LABEL_55;
      }
    }

    ++v50;
    v52 += 5;
    v53 -= v18;
    a2 += v18;
    a3 += v19;
    v54 -= v19;
    v49 = 1.0;
    LOBYTE(v51) = -1;
  }
}

uint64_t CMYKf_sample_RGBAF(uint64_t result, uint64_t a2, unint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v13 = *(result + 24);
  v14 = *(result + 176);
  v15 = *(result + 64);
  v16 = *(result + 72);
  v17 = *(result + 80);
  v18 = *(result + 88);
  v19 = *(result + 112);
  v20 = *(result + 120);
  v21 = *(result + 188);
  v22 = *(result + 152) - 20;
  v23 = *(result + 144) - 1;
  v25 = *(result + 32);
  v24 = *(result + 40);
  v26 = v25 + ((*(result + 260) - 1) * v13) + 4 * (4 * *(result + 256) - 4) - 16;
  while (1)
  {
LABEL_2:
    if (a3 >= v16)
    {
      if (a3 <= v18)
      {
        v35 = (a3 >> 22) & 0x3C0;
        v36 = 0x3FFFFFFF;
        HIDWORD(v37) = HIDWORD(a3);
      }

      else
      {
        v31 = *(result + 216);
        v32 = *(result + 224) + v18;
        v33 = v32 - a3 + (v31 >> 1);
        if (v33 < 1)
        {
          goto LABEL_34;
        }

        if (v33 >= v31)
        {
          LODWORD(v34) = 0x3FFFFFFF;
        }

        else
        {
          v34 = (*(result + 232) * v33) >> 32;
        }

        v36 = v34 | v21;
        v37 = v32 - 0x1000000;
        v35 = 448;
      }
    }

    else
    {
      v27 = *(result + 216);
      v28 = v16 - *(result + 224);
      v29 = a3 - v28 + (v27 >> 1);
      if (v29 < 1)
      {
        goto LABEL_34;
      }

      if (v29 >= v27)
      {
        LODWORD(v30) = 0x3FFFFFFF;
      }

      else
      {
        v30 = (*(result + 232) * v29) >> 32;
      }

      v36 = v30 | v21;
      v37 = v28 + 0x1000000;
      v35 = 512;
    }

    if (a2 >= v15)
    {
      break;
    }

    v38 = *(result + 192);
    v39 = v15 - *(result + 200);
    v40 = a2 - v39 + (v38 >> 1);
    if (v40 >= 1)
    {
      if (v40 < v38)
      {
        v36 = ((v36 >> 15) * (((*(result + 208) * v40) >> 32) >> 15)) | v21;
      }

      v41 = v39 + 0x1000000;
      v42 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v19;
    a3 += v20;
    v22 += 20;
    *++v23 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v17)
  {
    v42 = (a2 >> 26) & 0x3C;
    v41 = a2;
    goto LABEL_26;
  }

  v43 = *(result + 192);
  v44 = *(result + 200) + v17;
  v45 = v44 - a2 + (v43 >> 1);
  if (v45 < 1)
  {
    goto LABEL_34;
  }

  if (v45 < v43)
  {
    v36 = ((v36 >> 15) * (((*(result + 208) * v45) >> 32) >> 15)) | v21;
  }

  v41 = v44 - 0x1000000;
  v42 = 28;
LABEL_26:
  if (v36 < 0x400000)
  {
    goto LABEL_34;
  }

  v46 = v25 + SHIDWORD(v37) * v13 + 16 * (v41 >> 32);
  v47 = *(result + 32);
  if (v26 >= v46)
  {
    v48 = v46;
  }

  else
  {
    v48 = v26;
  }

  if (v48 < v47)
  {
    v48 = *(result + 32);
  }

  if (v24)
  {
    v49 = COERCE_FLOAT(bswap32(v48[1].u32[1]));
  }

  else
  {
    v49 = 1.0;
  }

  v50 = vrev32_s8(*v48);
  v51 = COERCE_FLOAT(bswap32(v48[1].u32[0]));
  if (v14)
  {
    v52 = *(v14 + (v42 | v35));
LABEL_61:
    v61 = v52 & 0xF;
    v62 = HIBYTE(v52) & 3;
    if (v61 == 1)
    {
      v78 = (v46 + SBYTE1(v52) * v13);
      if (v26 < v78)
      {
        v78 = v26;
      }

      if (v78 >= v47)
      {
        v79 = v78;
      }

      else
      {
        v79 = v47;
      }

      a8 = COERCE_DOUBLE(vrev32_s8(*v79));
      v75 = COERCE_FLOAT(bswap32(v79[1].u32[0]));
      v76 = 1.0;
      if (v24)
      {
        v76 = COERCE_FLOAT(bswap32(v79[1].u32[1]));
      }

      v77 = &interpolate_rgbaf_21860[4 * v62];
    }

    else
    {
      if (v61 != 2)
      {
        if (v61 == 3)
        {
          v63 = (v46 + ((HIWORD(v52) << 56) >> 52));
          if (v26 < v63)
          {
            v63 = v26;
          }

          if (v63 < v47)
          {
            v63 = v47;
          }

          v64 = vrev32_s8(*v63);
          v65 = COERCE_FLOAT(bswap32(v63[1].u32[0]));
          v66 = 1.0;
          v67 = 1.0;
          if (v24)
          {
            v67 = COERCE_FLOAT(bswap32(v63[1].u32[1]));
          }

          v68 = v46 + SBYTE1(v52) * v13 + 16 * SBYTE2(v52);
          if (v26 < v68)
          {
            v68 = v26;
          }

          if (v68 >= v47)
          {
            v69 = v68;
          }

          else
          {
            v69 = v47;
          }

          v70 = vrev32_s8(*v69);
          v71 = COERCE_FLOAT(bswap32(v69[1].u32[0]));
          if (v24)
          {
            v66 = COERCE_FLOAT(bswap32(v69[1].u32[1]));
          }

          v11.i32[0] = interpolate_rgbaf_21860[4 * v62 + 3];
          v12.i32[0] = interpolate_rgbaf_21860[4 * ((v52 >> 28) & 3) + 3];
          v51 = (((v51 - (v51 * v11.f32[0])) + (v65 * v11.f32[0])) - (((v51 - (v51 * v11.f32[0])) + (v65 * v11.f32[0])) * v12.f32[0])) + (((v65 - (v65 * v11.f32[0])) + (v71 * v11.f32[0])) * v12.f32[0]);
          v72 = vmla_n_f32(vmls_lane_f32(v50, v50, v11, 0), v64, v11.f32[0]);
          a8 = COERCE_DOUBLE(vmla_n_f32(vmls_lane_f32(v64, v64, v11, 0), v70, v11.f32[0]));
          v50 = vmla_n_f32(vmls_lane_f32(v72, v72, v12, 0), *&a8, v12.f32[0]);
          v49 = (((v49 - (v49 * v11.f32[0])) + (v67 * v11.f32[0])) - (((v49 - (v49 * v11.f32[0])) + (v67 * v11.f32[0])) * v12.f32[0])) + (((v67 - (v67 * v11.f32[0])) + (v66 * v11.f32[0])) * v12.f32[0]);
        }

        goto LABEL_39;
      }

      v73 = (v46 + ((HIWORD(v52) << 56) >> 52));
      if (v26 < v73)
      {
        v73 = v26;
      }

      if (v73 >= v47)
      {
        v74 = v73;
      }

      else
      {
        v74 = v47;
      }

      a8 = COERCE_DOUBLE(vrev32_s8(*v74));
      v75 = COERCE_FLOAT(bswap32(v74[1].u32[0]));
      v76 = 1.0;
      if (v24)
      {
        v76 = COERCE_FLOAT(bswap32(v74[1].u32[1]));
      }

      v77 = &interpolate_rgbaf_21860[4 * ((v52 >> 28) & 3)];
    }

    LODWORD(a11) = v77[3];
    v50 = vmla_n_f32(vmls_lane_f32(v50, v50, *&a11, 0), *&a8, *&a11);
    v51 = (v51 - (v51 * *&a11)) + (v75 * *&a11);
    v49 = (v49 - (v49 * *&a11)) + (v76 * *&a11);
  }

LABEL_39:
  v53 = 0;
  v54 = v36 >> 22;
  v55 = (v22 + 36);
  a2 += v19;
  v56 = v17 - a2;
  a3 += v20;
  v57 = v18 - a3;
  while (1)
  {
    LODWORD(a8) = v50.i32[1];
    if (v50.f32[0] > v50.f32[1])
    {
      *&a8 = v50.f32[0];
    }

    if (v51 > *&a8)
    {
      *&a8 = v51;
    }

    *(v55 - 2) = vsub_f32(vdup_lane_s32(*&a8, 0), v50);
    *(v55 - 2) = *&a8 - v51;
    *(v55 - 1) = v49 - *&a8;
    *v55 = v49;
    *(v23 + 1 + v53) = v54;
    if (a4 - 1 == v53)
    {
      return result;
    }

    if (((v57 | v56 | (a3 - v16) | (a2 - v15)) & 0x8000000000000000) != 0)
    {
      v23 += v53 + 1;
      v22 = (v55 - 4);
      a4 += ~v53;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v58 = v25 + SHIDWORD(a3) * v13;
    v46 = v58 + 16 * (a2 >> 32);
    v47 = *(result + 32);
    if (v26 >= v46)
    {
      v59 = (v58 + 16 * (a2 >> 32));
    }

    else
    {
      v59 = v26;
    }

    if (v59 >= v47)
    {
      v60 = v59;
    }

    else
    {
      v60 = *(result + 32);
    }

    if (v24)
    {
      v49 = COERCE_FLOAT(bswap32(v60[1].u32[1]));
    }

    else
    {
      v49 = 1.0;
    }

    v50 = vrev32_s8(*v60);
    v51 = COERCE_FLOAT(bswap32(v60[1].u32[0]));
    if (v14)
    {
      v52 = *(v14 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v52 & 0xF) != 0)
      {
        v23 += v53 + 1;
        v22 = (v55 - 4);
        a4 += ~v53;
        v36 = -1;
        goto LABEL_61;
      }
    }

    ++v53;
    v55 += 5;
    v56 -= v19;
    a2 += v19;
    a3 += v20;
    v57 -= v20;
    LOBYTE(v54) = -1;
  }
}

uint64_t CMYKf_sample_RGBAf(uint64_t result, uint64_t a2, unint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v13 = *(result + 24);
  v14 = *(result + 176);
  v15 = *(result + 64);
  v16 = *(result + 72);
  v17 = *(result + 80);
  v18 = *(result + 88);
  v19 = *(result + 112);
  v20 = *(result + 120);
  v21 = *(result + 188);
  v22 = *(result + 152) - 20;
  v23 = *(result + 144) - 1;
  v25 = *(result + 32);
  v24 = *(result + 40);
  v26 = v25 + ((*(result + 260) - 1) * v13) + 4 * (4 * *(result + 256) - 4) - 16;
  while (1)
  {
LABEL_2:
    if (a3 >= v16)
    {
      if (a3 <= v18)
      {
        v35 = (a3 >> 22) & 0x3C0;
        v36 = 0x3FFFFFFF;
        HIDWORD(v37) = HIDWORD(a3);
      }

      else
      {
        v31 = *(result + 216);
        v32 = *(result + 224) + v18;
        v33 = v32 - a3 + (v31 >> 1);
        if (v33 < 1)
        {
          goto LABEL_34;
        }

        if (v33 >= v31)
        {
          LODWORD(v34) = 0x3FFFFFFF;
        }

        else
        {
          v34 = (*(result + 232) * v33) >> 32;
        }

        v36 = v34 | v21;
        v37 = v32 - 0x1000000;
        v35 = 448;
      }
    }

    else
    {
      v27 = *(result + 216);
      v28 = v16 - *(result + 224);
      v29 = a3 - v28 + (v27 >> 1);
      if (v29 < 1)
      {
        goto LABEL_34;
      }

      if (v29 >= v27)
      {
        LODWORD(v30) = 0x3FFFFFFF;
      }

      else
      {
        v30 = (*(result + 232) * v29) >> 32;
      }

      v36 = v30 | v21;
      v37 = v28 + 0x1000000;
      v35 = 512;
    }

    if (a2 >= v15)
    {
      break;
    }

    v38 = *(result + 192);
    v39 = v15 - *(result + 200);
    v40 = a2 - v39 + (v38 >> 1);
    if (v40 >= 1)
    {
      if (v40 < v38)
      {
        v36 = ((v36 >> 15) * (((*(result + 208) * v40) >> 32) >> 15)) | v21;
      }

      v41 = v39 + 0x1000000;
      v42 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v19;
    a3 += v20;
    v22 += 20;
    *++v23 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v17)
  {
    v42 = (a2 >> 26) & 0x3C;
    v41 = a2;
    goto LABEL_26;
  }

  v43 = *(result + 192);
  v44 = *(result + 200) + v17;
  v45 = v44 - a2 + (v43 >> 1);
  if (v45 < 1)
  {
    goto LABEL_34;
  }

  if (v45 < v43)
  {
    v36 = ((v36 >> 15) * (((*(result + 208) * v45) >> 32) >> 15)) | v21;
  }

  v41 = v44 - 0x1000000;
  v42 = 28;
LABEL_26:
  if (v36 < 0x400000)
  {
    goto LABEL_34;
  }

  v46 = v25 + SHIDWORD(v37) * v13 + 16 * (v41 >> 32);
  v47 = *(result + 32);
  if (v26 >= v46)
  {
    v48 = v46;
  }

  else
  {
    v48 = v26;
  }

  if (v48 < v47)
  {
    v48 = *(result + 32);
  }

  if (v24)
  {
    v49 = v48[1].f32[1];
  }

  else
  {
    v49 = 1.0;
  }

  v50 = *v48;
  v51 = v48[1].f32[0];
  if (v14)
  {
    v52 = *(v14 + (v42 | v35));
LABEL_61:
    v61 = v52 & 0xF;
    v62 = HIBYTE(v52) & 3;
    if (v61 == 1)
    {
      v78 = v46 + SBYTE1(v52) * v13;
      if (v26 < v78)
      {
        v78 = v26;
      }

      if (v78 >= v47)
      {
        v79 = v78;
      }

      else
      {
        v79 = v47;
      }

      v74 = *v79;
      v75 = v79[1].f32[0];
      v76 = 1.0;
      if (v24)
      {
        v76 = v79[1].f32[1];
      }

      v77 = &interpolate_rgbaf_21860[4 * v62];
    }

    else
    {
      if (v61 != 2)
      {
        if (v61 == 3)
        {
          v63 = SBYTE1(v52) * v13;
          v64 = 16 * SBYTE2(v52);
          v65 = v46 + v64;
          if (v26 < v46 + v64)
          {
            v65 = v26;
          }

          if (v65 >= v47)
          {
            v66 = v65;
          }

          else
          {
            v66 = v47;
          }

          v67 = *v66;
          if (v24)
          {
            v68 = v66[1].f32[1];
            v69 = (v46 + v63 + v64);
            if (v26 < v69)
            {
              v69 = v26;
            }

            if (v69 >= v47)
            {
              v70 = v69;
            }

            else
            {
              v70 = v47;
            }

            v71 = v70[1].f32[1];
          }

          else
          {
            v80 = (v46 + v63 + v64);
            if (v26 < v80)
            {
              v80 = v26;
            }

            if (v80 >= v47)
            {
              v70 = v80;
            }

            else
            {
              v70 = v47;
            }

            v68 = 1.0;
            v71 = 1.0;
          }

          v11.i32[0] = interpolate_rgbaf_21860[4 * v62 + 3];
          v12.i32[0] = interpolate_rgbaf_21860[4 * ((v52 >> 28) & 3) + 3];
          v51 = (((v51 - (v51 * v11.f32[0])) + (v66[1].f32[0] * v11.f32[0])) - (((v51 - (v51 * v11.f32[0])) + (v66[1].f32[0] * v11.f32[0])) * v12.f32[0])) + (((v66[1].f32[0] - (v66[1].f32[0] * v11.f32[0])) + (v70[1].f32[0] * v11.f32[0])) * v12.f32[0]);
          v81 = vmla_n_f32(vmls_lane_f32(v50, v50, v11, 0), v67, v11.f32[0]);
          a8 = COERCE_DOUBLE(vmla_n_f32(vmls_lane_f32(v67, v67, v11, 0), *v70, v11.f32[0]));
          v50 = vmla_n_f32(vmls_lane_f32(v81, v81, v12, 0), *&a8, v12.f32[0]);
          v49 = (((v49 - (v49 * v11.f32[0])) + (v68 * v11.f32[0])) - (((v49 - (v49 * v11.f32[0])) + (v68 * v11.f32[0])) * v12.f32[0])) + (((v68 - (v68 * v11.f32[0])) + (v71 * v11.f32[0])) * v12.f32[0]);
        }

        goto LABEL_39;
      }

      v72 = v46 + ((HIWORD(v52) << 56) >> 52);
      if (v26 < v72)
      {
        v72 = v26;
      }

      if (v72 >= v47)
      {
        v73 = v72;
      }

      else
      {
        v73 = v47;
      }

      v74 = *v73;
      v75 = v73[1].f32[0];
      v76 = 1.0;
      if (v24)
      {
        v76 = v73[1].f32[1];
      }

      v77 = &interpolate_rgbaf_21860[4 * ((v52 >> 28) & 3)];
    }

    LODWORD(a11) = v77[3];
    v50 = vmla_n_f32(vmls_lane_f32(v50, v50, *&a11, 0), v74, *&a11);
    v51 = (v51 - (v51 * *&a11)) + (v75 * *&a11);
    v49 = (v49 - (v49 * *&a11)) + (v76 * *&a11);
  }

LABEL_39:
  v53 = 0;
  v54 = v36 >> 22;
  v55 = (v22 + 36);
  a2 += v19;
  v56 = v17 - a2;
  a3 += v20;
  v57 = v18 - a3;
  while (1)
  {
    LODWORD(a8) = v50.i32[1];
    if (v50.f32[0] > v50.f32[1])
    {
      *&a8 = v50.f32[0];
    }

    if (v51 > *&a8)
    {
      *&a8 = v51;
    }

    *(v55 - 2) = vsub_f32(vdup_lane_s32(*&a8, 0), v50);
    *(v55 - 2) = *&a8 - v51;
    *(v55 - 1) = v49 - *&a8;
    *v55 = v49;
    *(v23 + 1 + v53) = v54;
    if (a4 - 1 == v53)
    {
      return result;
    }

    if (((v57 | v56 | (a3 - v16) | (a2 - v15)) & 0x8000000000000000) != 0)
    {
      v23 += v53 + 1;
      v22 = (v55 - 4);
      a4 += ~v53;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v58 = v25 + SHIDWORD(a3) * v13;
    v46 = v58 + 16 * (a2 >> 32);
    v47 = *(result + 32);
    if (v26 >= v46)
    {
      v59 = v58 + 16 * (a2 >> 32);
    }

    else
    {
      v59 = v26;
    }

    if (v59 >= v47)
    {
      v60 = v59;
    }

    else
    {
      v60 = *(result + 32);
    }

    if (v24)
    {
      v49 = v60[1].f32[1];
    }

    else
    {
      v49 = 1.0;
    }

    v50 = *v60;
    v51 = v60[1].f32[0];
    if (v14)
    {
      v52 = *(v14 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v52 & 0xF) != 0)
      {
        v23 += v53 + 1;
        v22 = (v55 - 4);
        a4 += ~v53;
        v36 = -1;
        goto LABEL_61;
      }
    }

    ++v53;
    v55 += 5;
    v56 -= v19;
    a2 += v19;
    a3 += v20;
    v57 -= v20;
    LOBYTE(v54) = -1;
  }
}

uint64_t CMYKf_sample_CMYKF_inner(uint64_t result, uint64_t a2, uint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v12 = *(result + 24);
  v128 = *(result + 28);
  v13 = *(result + 112);
  v14 = *(result + 48);
  v15 = *(result + 56);
  if (v14)
  {
    v127 = *(result + 112);
    if (v13 > v14)
    {
      v127 = v13 % v14;
    }
  }

  else
  {
    v127 = 0;
  }

  v16 = *(result + 176);
  v17 = *(result + 40);
  v129 = *(result + 32);
  v18 = *(result + 120);
  if (v15)
  {
    v19 = v18 % v15;
    if (v18 <= v15)
    {
      v19 = *(result + 120);
    }

    v126 = v19;
  }

  else
  {
    v126 = 0;
  }

  v122 = *(result + 80);
  v124 = *(result + 88);
  v20 = *(result + 152) - 20;
  v21 = *(result + 144) - 1;
  v22 = *(result + 260) - 1;
  v23 = *(result + 256) - 1;
  v24 = v17 + (v22 * v128) + 4 * v23;
  v121 = *(result + 188);
  v25 = v129 + (v22 * v12) + 16 * v23 - 16;
  v123 = *(result + 64);
  v125 = *(result + 72);
  while (1)
  {
LABEL_11:
    if (a3 >= v125)
    {
      if (a3 <= v124)
      {
        v34 = 0;
        v35 = (a3 >> 22) & 0x3C0;
        v36 = 0x3FFFFFFF;
        v37 = a3;
      }

      else
      {
        v30 = *(result + 216);
        v31 = *(result + 224) + v124;
        v32 = v31 - a3 + (v30 >> 1);
        if (v32 < 1)
        {
          goto LABEL_56;
        }

        if (v32 >= v30)
        {
          LODWORD(v33) = 0x3FFFFFFF;
        }

        else
        {
          v33 = (*(result + 232) * v32) >> 32;
        }

        v36 = v121 | v33;
        v37 = v31 - 0x1000000;
        v34 = a3 - (v31 - 0x1000000);
        v35 = 448;
      }
    }

    else
    {
      v26 = *(result + 216);
      v27 = v125 - *(result + 224);
      v28 = a3 - v27 + (v26 >> 1);
      if (v28 < 1)
      {
        goto LABEL_56;
      }

      if (v28 >= v26)
      {
        LODWORD(v29) = 0x3FFFFFFF;
      }

      else
      {
        v29 = (*(result + 232) * v28) >> 32;
      }

      v36 = v121 | v29;
      v37 = v27 + 0x1000000;
      v34 = a3 - (v27 + 0x1000000);
      v35 = 512;
    }

    if (a2 >= v123)
    {
      break;
    }

    v38 = *(result + 192);
    v39 = v123 - *(result + 200);
    v40 = a2 - v39 + (v38 >> 1);
    if (v40 >= 1)
    {
      if (v40 < v38)
      {
        v36 = ((v36 >> 15) * (((*(result + 208) * v40) >> 32) >> 15)) | v121;
      }

      v41 = v39 + 0x1000000;
      v42 = a2 - (v39 + 0x1000000);
      v43 = 32;
      goto LABEL_35;
    }

LABEL_56:
    --a4;
    a2 += v13;
    a3 += v18;
    v20 += 20;
    *++v21 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v122)
  {
    v42 = 0;
    v43 = (a2 >> 26) & 0x3C;
    v41 = a2;
    goto LABEL_35;
  }

  v44 = *(result + 192);
  v45 = *(result + 200) + v122;
  v46 = v45 - a2 + (v44 >> 1);
  if (v46 < 1)
  {
    goto LABEL_56;
  }

  if (v46 < v44)
  {
    v36 = ((v36 >> 15) * (((*(result + 208) * v46) >> 32) >> 15)) | v121;
  }

  v41 = v45 - 0x1000000;
  v42 = a2 - (v45 - 0x1000000);
  v43 = 28;
LABEL_35:
  if (v36 < 0x400000)
  {
    goto LABEL_56;
  }

  if (v14)
  {
    v47 = (v15 & ((v37 % v15) >> 63)) + v37 % v15;
    v48 = (v14 & ((v41 % v14) >> 63)) + v41 % v14;
    if (v47 >= v15)
    {
      v49 = v15;
    }

    else
    {
      v49 = 0;
    }

    v37 = v47 - v49;
    if (v48 >= v14)
    {
      v50 = v14;
    }

    else
    {
      v50 = 0;
    }

    v41 = v48 - v50;
    v34 += v37;
    v42 += v41;
  }

  v51 = v37 >> 32;
  v52 = v129 + SHIDWORD(v37) * v12;
  v53 = (v41 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
  v54 = v52 + 4 * v53;
  v55 = *(result + 32);
  if (v25 >= v54)
  {
    v56 = (v52 + 4 * v53);
  }

  else
  {
    v56 = v25;
  }

  if (v56 < v55)
  {
    v56 = *(result + 32);
  }

  if (v17)
  {
    v57 = v17 + v51 * v128 + v53;
    v58 = *(result + 40);
    if (v24 >= v57)
    {
      v59 = v57;
    }

    else
    {
      v59 = v24;
    }

    if (v59 >= v58)
    {
      v58 = v59;
    }

    v60 = COERCE_FLOAT(bswap32(*v58));
  }

  else
  {
    v57 = 0;
    v60 = 1.0;
  }

  v61 = vrev32q_s8(*v56);
  if (v16)
  {
    v62 = *(v16 + (v43 | v35));
LABEL_93:
    v81 = v62 & 0xF;
    v82 = v62 >> 8;
    v83 = HIBYTE(v62) & 3;
    if (v81 == 1)
    {
      LODWORD(v115) = SBYTE1(v62);
      if (v14)
      {
        v116 = v34 + (SBYTE1(v62) << 32);
        v117 = v15 & (v116 >> 63);
        if (v117 + v116 >= v15)
        {
          v118 = v15;
        }

        else
        {
          v118 = 0;
        }

        v115 = (v117 + (v82 << 32) - v118) >> 32;
      }

      v119 = (v54 + v115 * v12);
      if (v25 < v119)
      {
        v119 = v25;
      }

      if (v119 < v55)
      {
        v119 = v55;
      }

      v112 = vrev32q_s8(*v119);
      v113 = 1.0;
      if (v17)
      {
        v120 = (v57 + v115 * v128);
        if (v24 < v120)
        {
          v120 = v24;
        }

        if (v120 < *(result + 40))
        {
          v120 = *(result + 40);
        }

        v113 = COERCE_FLOAT(bswap32(*v120));
      }
    }

    else
    {
      if (v81 != 2)
      {
        if (v81 == 3)
        {
          LODWORD(v84) = SBYTE1(v62);
          v85 = SBYTE2(v62);
          if (v14)
          {
            v86 = v82 << 56;
            v87 = HIWORD(v62) << 56;
            v88 = v34 + (SBYTE1(v62) << 32);
            v89 = v42 + (v87 >> 24);
            v90 = v15 & (v88 >> 63);
            v91 = v14 & (v89 >> 63);
            v92 = v91 + v89;
            if (v90 + v88 >= v15)
            {
              v93 = v15;
            }

            else
            {
              v93 = 0;
            }

            if (v92 >= v14)
            {
              v94 = v14;
            }

            else
            {
              v94 = 0;
            }

            v84 = (v90 + (v86 >> 24) - v93) >> 32;
            v85 = (v91 + (v87 >> 24) - v94) >> 32;
          }

          v95 = v54 + 16 * v85;
          if (v25 >= v95)
          {
            v96 = (v54 + 16 * v85);
          }

          else
          {
            v96 = v25;
          }

          if (v96 < v55)
          {
            v96 = v55;
          }

          v97 = (v95 + v84 * v12);
          if (v25 < v97)
          {
            v97 = v25;
          }

          if (v97 < v55)
          {
            v97 = v55;
          }

          v98 = vrev32q_s8(*v96);
          v99 = vrev32q_s8(*v97);
          v100 = 1.0;
          v101 = 1.0;
          if (v17)
          {
            v102 = v57 + 4 * v85;
            v103 = *(result + 40);
            if (v24 >= v102)
            {
              v104 = (v57 + 4 * v85);
            }

            else
            {
              v104 = v24;
            }

            if (v104 < v103)
            {
              v104 = *(result + 40);
            }

            v101 = COERCE_FLOAT(bswap32(*v104));
            v105 = (v102 + v84 * v128);
            if (v24 < v105)
            {
              v105 = v24;
            }

            if (v105 < v103)
            {
              v105 = *(result + 40);
            }

            v100 = COERCE_FLOAT(bswap32(*v105));
          }

          LODWORD(a11) = interpolate_cmykaf[5 * v83 + 4];
          LODWORD(a12) = interpolate_cmykaf[5 * ((v62 >> 28) & 3) + 4];
          v106 = vmlaq_n_f32(vmlsq_lane_f32(v61, v61, *&a11, 0), v98, *&a11);
          v61 = vmlaq_n_f32(vmlsq_lane_f32(v106, v106, *&a12, 0), vmlaq_n_f32(vmlsq_lane_f32(v98, v98, *&a11, 0), v99, *&a11), *&a12);
          v60 = (((v60 - (v60 * *&a11)) + (v101 * *&a11)) - (((v60 - (v60 * *&a11)) + (v101 * *&a11)) * *&a12)) + (((v101 - (v101 * *&a11)) + (v100 * *&a11)) * *&a12);
        }

        goto LABEL_61;
      }

      v107 = SBYTE2(v62);
      if (v14)
      {
        v108 = v42 + (SBYTE2(v62) << 32);
        v109 = v14 & (v108 >> 63);
        if (v109 + v108 >= v14)
        {
          v110 = v14;
        }

        else
        {
          v110 = 0;
        }

        v107 = (v109 + ((HIWORD(v62) << 56) >> 24) - v110) >> 32;
      }

      v111 = (v54 + 16 * v107);
      if (v25 < v111)
      {
        v111 = v25;
      }

      if (v111 < v55)
      {
        v111 = v55;
      }

      v112 = vrev32q_s8(*v111);
      v113 = 1.0;
      if (v17)
      {
        v114 = (v57 + 4 * v107);
        if (v24 < v114)
        {
          v114 = v24;
        }

        if (v114 < *(result + 40))
        {
          v114 = *(result + 40);
        }

        v113 = COERCE_FLOAT(bswap32(*v114));
      }

      v83 = (v62 >> 28) & 3;
    }

    LODWORD(a9) = interpolate_cmykaf[5 * v83 + 4];
    v61 = vmlaq_n_f32(vmlsq_lane_f32(v61, v61, *&a9, 0), v112, *&a9);
    v60 = (v60 - (v60 * *&a9)) + (v113 * *&a9);
  }

LABEL_61:
  *(v20 + 20) = v61;
  *(v20 + 36) = v60;
  *(v21 + 1) = v36 >> 22;
  if (a4 != 1)
  {
    v63 = 0;
    v64 = (v20 + 56);
    a2 += v13;
    v65 = v122 - a2;
    a3 += v18;
    v66 = v124 - a3;
    v67 = --a4;
    while (1)
    {
      v68 = v21 + v63 + 1;
      v20 = (v64 - 9);
      if ((v66 | v65 | (a3 - v125) | (a2 - v123)) < 0)
      {
        break;
      }

      if (v14)
      {
        v69 = (v15 & ((v34 + v126) >> 63)) + v34 + v126;
        v70 = (v14 & ((v42 + v127) >> 63)) + v42 + v127;
        if (v69 >= v15)
        {
          v71 = v15;
        }

        else
        {
          v71 = 0;
        }

        v34 = v69 - v71;
        if (v70 >= v14)
        {
          v72 = v14;
        }

        else
        {
          v72 = 0;
        }

        v42 = v70 - v72;
        v73 = v34;
        v74 = v42;
      }

      else
      {
        v73 = a3;
        v74 = a2;
      }

      v75 = v73 >> 32;
      v76 = (v74 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
      v54 = v129 + SHIDWORD(v73) * v12 + 4 * v76;
      v55 = *(result + 32);
      if (v25 >= v54)
      {
        v77 = v54;
      }

      else
      {
        v77 = v25;
      }

      if (v77 < v55)
      {
        v77 = *(result + 32);
      }

      if (v17)
      {
        v57 = v17 + v75 * v128 + v76;
        v78 = *(result + 40);
        if (v24 >= v57)
        {
          v79 = v57;
        }

        else
        {
          v79 = v24;
        }

        if (v79 >= v78)
        {
          v78 = v79;
        }

        v60 = COERCE_FLOAT(bswap32(*v78));
      }

      else
      {
        v60 = 1.0;
      }

      v61 = vrev32q_s8(*v77);
      if (v16)
      {
        v62 = *(v16 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v62 & 0xF) != 0)
        {
          v36 = -1;
          v21 = v68;
          goto LABEL_93;
        }
      }

      --a4;
      *(v64 - 1) = v61;
      *v64 = v60;
      v64 += 5;
      v80 = v21 + v63++;
      a2 += v13;
      *(v80 + 2) = -1;
      v65 -= v13;
      a3 += v18;
      v66 -= v18;
      if (v67 == v63)
      {
        return result;
      }
    }

    v21 += v63 + 1;
    if (a4)
    {
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t CMYKf_sample_CMYKf_inner(uint64_t result, uint64_t a2, uint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v12 = *(result + 24);
  v137 = *(result + 28);
  v13 = *(result + 112);
  v14 = *(result + 48);
  v15 = *(result + 56);
  if (v14)
  {
    v136 = *(result + 112);
    if (v13 > v14)
    {
      v136 = v13 % v14;
    }
  }

  else
  {
    v136 = 0;
  }

  v16 = *(result + 176);
  v18 = *(result + 32);
  v17 = *(result + 40);
  v19 = *(result + 120);
  if (v15)
  {
    v21 = v19 % v15;
    if (v19 <= v15)
    {
      v21 = *(result + 120);
    }

    v135 = v21;
  }

  else
  {
    v135 = 0;
  }

  v131 = *(result + 80);
  v132 = *(result + 64);
  v133 = *(result + 88);
  v22 = *(result + 152) - 20;
  v23 = *(result + 144) - 1;
  v24 = *(result + 260) - 1;
  v25 = *(result + 256) - 1;
  v26 = v17 + (v24 * v137) + 4 * v25;
  v130 = *(result + 188);
  v27 = v18 + (v24 * v12) + 16 * v25 - 16;
  v134 = *(result + 72);
  do
  {
    if (a3 >= v134)
    {
      v31 = a4;
      if (a3 <= v133)
      {
        v37 = 0;
        v38 = (a3 >> 22) & 0x3C0;
        v39 = 0x3FFFFFFF;
        v40 = a3;
      }

      else
      {
        v33 = *(result + 216);
        v34 = *(result + 224) + v133;
        v35 = v34 - a3 + (v33 >> 1);
        if (v35 < 1)
        {
          goto LABEL_56;
        }

        if (v35 >= v33)
        {
          LODWORD(v36) = 0x3FFFFFFF;
        }

        else
        {
          v36 = (*(result + 232) * v35) >> 32;
        }

        v39 = v130 | v36;
        v40 = v34 - 0x1000000;
        v37 = a3 - (v34 - 0x1000000);
        v38 = 448;
      }
    }

    else
    {
      v28 = *(result + 216);
      v29 = v134 - *(result + 224);
      v30 = a3 - v29 + (v28 >> 1);
      v31 = a4;
      if (v30 < 1)
      {
        goto LABEL_56;
      }

      if (v30 >= v28)
      {
        LODWORD(v32) = 0x3FFFFFFF;
      }

      else
      {
        v32 = (*(result + 232) * v30) >> 32;
      }

      v39 = v130 | v32;
      v40 = v29 + 0x1000000;
      v37 = a3 - (v29 + 0x1000000);
      v38 = 512;
    }

    if (a2 >= v132)
    {
      if (a2 <= v131)
      {
        v45 = 0;
        v46 = (a2 >> 26) & 0x3C;
        v44 = a2;
      }

      else
      {
        v47 = *(result + 192);
        v48 = *(result + 200) + v131;
        v49 = v48 - a2 + (v47 >> 1);
        if (v49 < 1)
        {
          goto LABEL_56;
        }

        if (v49 < v47)
        {
          v39 = ((v39 >> 15) * (((*(result + 208) * v49) >> 32) >> 15)) | v130;
        }

        v44 = v48 - 0x1000000;
        v45 = a2 - (v48 - 0x1000000);
        v46 = 28;
      }
    }

    else
    {
      v41 = *(result + 192);
      v42 = v132 - *(result + 200);
      v43 = a2 - v42 + (v41 >> 1);
      if (v43 < 1)
      {
        goto LABEL_56;
      }

      if (v43 < v41)
      {
        v39 = ((v39 >> 15) * (((*(result + 208) * v43) >> 32) >> 15)) | v130;
      }

      v44 = v42 + 0x1000000;
      v45 = a2 - (v42 + 0x1000000);
      v46 = 32;
    }

    if (v39 >= 0x400000)
    {
      if (v14)
      {
        v50 = (v15 & ((v40 % v15) >> 63)) + v40 % v15;
        v51 = (v14 & ((v44 % v14) >> 63)) + v44 % v14;
        if (v50 >= v15)
        {
          v52 = v15;
        }

        else
        {
          v52 = 0;
        }

        v40 = v50 - v52;
        if (v51 >= v14)
        {
          v53 = v14;
        }

        else
        {
          v53 = 0;
        }

        v44 = v51 - v53;
        v37 += v40;
        v45 += v44;
      }

      v54 = v40 >> 32;
      v55 = (v44 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
      v56 = v18 + SHIDWORD(v40) * v12 + 4 * v55;
      v57 = *(result + 32);
      if (v27 >= v56)
      {
        v58 = v56;
      }

      else
      {
        v58 = v27;
      }

      if (v58 < v57)
      {
        v58 = *(result + 32);
      }

      if (v17)
      {
        v59 = v17 + v54 * v137 + v55;
        v60 = *(result + 40);
        if (v26 >= v59)
        {
          v61 = v59;
        }

        else
        {
          v61 = v26;
        }

        if (v61 >= v60)
        {
          v60 = v61;
        }

        v62 = *v60;
      }

      else
      {
        v59 = 0;
        v62 = 1.0;
      }

      v64 = *v58;
      if (!v16)
      {
        goto LABEL_62;
      }

      v65 = *(v16 + (v46 | v38));
      while (1)
      {
        v84 = v65 & 0xF;
        v85 = v65 >> 8;
        v86 = HIBYTE(v65) & 3;
        if (v84 == 1)
        {
          break;
        }

        if (v84 == 2)
        {
          v113 = SBYTE2(v65);
          if (v14)
          {
            v114 = HIWORD(v65) << 56;
            v115 = v45 + (v114 >> 24);
            v116 = v14 & (v115 >> 63);
            if (v116 + v115 >= v14)
            {
              v117 = v14;
            }

            else
            {
              v117 = 0;
            }

            v113 = (v116 + (v114 >> 24) - v117) >> 32;
          }

          v118 = (v56 + 16 * v113);
          if (v27 < v118)
          {
            v118 = v27;
          }

          if (v118 < v57)
          {
            v118 = v57;
          }

          v119 = *v118;
          v120 = 1.0;
          if (v17)
          {
            v121 = (v59 + 4 * v113);
            if (v26 < v121)
            {
              v121 = v26;
            }

            if (v121 < *(result + 40))
            {
              v121 = *(result + 40);
            }

            v120 = *v121;
          }

          v122 = &interpolate_cmykaf[5 * ((v65 >> 28) & 3)];
LABEL_157:
          LODWORD(a9) = v122[4];
          v64 = vmlaq_n_f32(vmlsq_lane_f32(v64, v64, *&a9, 0), v119, *&a9);
          v62 = (v62 - (v62 * *&a9)) + (v120 * *&a9);
          goto LABEL_62;
        }

        if (v84 == 3)
        {
          LODWORD(v87) = SBYTE1(v65);
          v88 = SBYTE2(v65);
          if (v14)
          {
            v89 = v85 << 56;
            v90 = HIWORD(v65) << 56;
            v91 = v37 + (SBYTE1(v65) << 32);
            v129 = v39;
            v92 = v45 + (v90 >> 24);
            v93 = v15 & (v91 >> 63);
            v94 = v31;
            v95 = v14 & (v92 >> 63);
            v96 = v95 + v92;
            if (v93 + v91 >= v15)
            {
              v97 = v15;
            }

            else
            {
              v97 = 0;
            }

            if (v96 >= v14)
            {
              v98 = v14;
            }

            else
            {
              v98 = 0;
            }

            v87 = (v93 + (v89 >> 24) - v97) >> 32;
            v99 = v95 + (v90 >> 24);
            v31 = v94;
            v100 = v99 - v98;
            v86 = HIBYTE(v65) & 3;
            v39 = v129;
            v88 = v100 >> 32;
          }

          v101 = v56 + 16 * v88;
          if (v27 >= v101)
          {
            v102 = (v56 + 16 * v88);
          }

          else
          {
            v102 = v27;
          }

          if (v102 < v57)
          {
            v102 = v57;
          }

          v103 = (v101 + v87 * v12);
          if (v27 < v103)
          {
            v103 = v27;
          }

          if (v103 < v57)
          {
            v103 = v57;
          }

          v104 = *v102;
          v105 = *v103;
          v106 = 1.0;
          v107 = 1.0;
          if (v17)
          {
            v108 = (v59 + 4 * v88);
            v109 = *(result + 40);
            if (v26 >= v108)
            {
              v110 = v108;
            }

            else
            {
              v110 = v26;
            }

            if (v110 < v109)
            {
              v110 = *(result + 40);
            }

            v107 = *v110;
            v111 = (v108 + v87 * v137);
            if (v26 < v111)
            {
              v111 = v26;
            }

            if (v111 < v109)
            {
              v111 = *(result + 40);
            }

            v106 = *v111;
          }

          LODWORD(a11) = interpolate_cmykaf[5 * v86 + 4];
          LODWORD(a12) = interpolate_cmykaf[5 * ((v65 >> 28) & 3) + 4];
          v112 = vmlaq_n_f32(vmlsq_lane_f32(v64, v64, *&a11, 0), v104, *&a11);
          v64 = vmlaq_n_f32(vmlsq_lane_f32(v112, v112, *&a12, 0), vmlaq_n_f32(vmlsq_lane_f32(v104, v104, *&a11, 0), v105, *&a11), *&a12);
          v62 = (((v62 - (v62 * *&a11)) + (v107 * *&a11)) - (((v62 - (v62 * *&a11)) + (v107 * *&a11)) * *&a12)) + (((v107 - (v107 * *&a11)) + (v106 * *&a11)) * *&a12);
        }

LABEL_62:
        *(v22 + 20) = v64;
        *(v22 + 36) = v62;
        *(v23 + 1) = v39 >> 22;
        if (v31 == 1)
        {
          return result;
        }

        v66 = v31;
        v67 = 0;
        v68 = (v22 + 56);
        a2 += v13;
        v69 = v131 - a2;
        a3 += v19;
        v70 = v133 - a3;
        while (1)
        {
          if ((v70 | v69 | (a3 - v134) | (a2 - v132)) < 0)
          {
            v23 += v67 + 1;
            v22 = (v68 - 9);
            v63 = ~v67 + v66;
            goto LABEL_57;
          }

          if (v14)
          {
            v71 = (v15 & ((v37 + v135) >> 63)) + v37 + v135;
            v72 = (v14 & ((v45 + v136) >> 63)) + v45 + v136;
            if (v71 >= v15)
            {
              v73 = v15;
            }

            else
            {
              v73 = 0;
            }

            v37 = v71 - v73;
            if (v72 >= v14)
            {
              v74 = v14;
            }

            else
            {
              v74 = 0;
            }

            v45 = v72 - v74;
            v75 = v37;
            v76 = v45;
          }

          else
          {
            v75 = a3;
            v76 = a2;
          }

          v77 = v75 >> 32;
          v78 = v18 + v77 * v12;
          v79 = (v76 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
          v56 = v78 + 4 * v79;
          v57 = *(result + 32);
          if (v27 >= v56)
          {
            v80 = (v78 + 4 * v79);
          }

          else
          {
            v80 = v27;
          }

          if (v80 < v57)
          {
            v80 = *(result + 32);
          }

          if (v17)
          {
            v59 = v17 + v77 * v137 + v79;
            v81 = *(result + 40);
            v82 = (v26 >= v59 ? v59 : v26);
            if (v82 >= v81)
            {
              v81 = v82;
            }

            v62 = *v81;
          }

          else
          {
            v62 = 1.0;
          }

          v64 = *v80;
          if (v16)
          {
            v65 = *(v16 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
            if ((v65 & 0xF) != 0)
            {
              break;
            }
          }

          *(v68 - 1) = v64;
          *v68 = v62;
          v68 += 5;
          v83 = v23 + v67++;
          a2 += v13;
          *(v83 + 2) = -1;
          v69 -= v13;
          a3 += v19;
          v70 -= v19;
          if (v66 - 1 == v67)
          {
            return result;
          }
        }

        v23 += v67 + 1;
        v22 = (v68 - 9);
        v31 = ~v67 + v66;
        v39 = -1;
      }

      LODWORD(v123) = SBYTE1(v65);
      if (v14)
      {
        v124 = v37 + (SBYTE1(v65) << 32);
        v125 = v15 & (v124 >> 63);
        if (v125 + v124 >= v15)
        {
          v126 = v15;
        }

        else
        {
          v126 = 0;
        }

        v123 = (v125 + (v85 << 32) - v126) >> 32;
      }

      v127 = (v56 + v123 * v12);
      if (v27 < v127)
      {
        v127 = v27;
      }

      if (v127 < v57)
      {
        v127 = v57;
      }

      v119 = *v127;
      v120 = 1.0;
      if (v17)
      {
        v128 = (v59 + v123 * v137);
        if (v26 < v128)
        {
          v128 = v26;
        }

        if (v128 < *(result + 40))
        {
          v128 = *(result + 40);
        }

        v120 = *v128;
      }

      v122 = &interpolate_cmykaf[5 * v86];
      goto LABEL_157;
    }

LABEL_56:
    v63 = v31 - 1;
    a2 += v13;
    a3 += v19;
    v22 += 20;
    *++v23 = 0;
LABEL_57:
    a4 = v63;
  }

  while (v63);
  return result;
}

float32x4_t *CMYKf_pattern(uint64_t a1, float32x4_t *a2, unsigned int a3, int a4, float32x4_t *a5, float a6, double a7, double a8, int32x4_t a9, double a10, double a11)
{
  v14 = *(*a1 + 64);
  a9.i32[0] = *v14;
  LODWORD(a11) = v14[1];
  if (a2 && a3 > 0x13 || (v25 = a9, v26 = a11, v15 = malloc_type_malloc(0x44uLL, 0x1080040E00A32E4uLL), a9 = v25, a11 = v26, (a2 = v15) != 0))
  {
    if (*a9.i32 <= a6)
    {
      v16 = a6;
    }

    else
    {
      v16 = *a9.i32;
    }

    if (*&a11 < a6)
    {
      v16 = *&a11;
    }

    if (a5)
    {
      v17 = a4;
    }

    else
    {
      v17 = 0;
    }

    switch(v17)
    {
      case 1:
        v22 = a9;
        *&v22.i32[1] = v16 * (*&a11 - a5->f32[0]);
        v21 = vzip1q_s32(v22, v22);
        v21.i32[2] = a9.i32[0];
        break;
      case 4:
        v21 = vmulq_n_f32(*a5, v16);
        break;
      case 3:
        v18 = v16 * (*&a11 - a5->f32[2]);
        v20 = vdup_lane_s32(*&a11, 0);
        v19 = vmul_n_f32(vsub_f32(v20, *a5->f32), v16);
        v20.i32[0] = v19.i32[1];
        if (v19.f32[0] < v19.f32[1])
        {
          v20.f32[0] = v19.f32[0];
        }

        if (v18 < v20.f32[0])
        {
          v20.f32[0] = v16 * (*&a11 - a5->f32[2]);
        }

        *v21.f32 = vsub_f32(v19, vdup_lane_s32(v20, 0));
        v21.f32[2] = v18 - v20.f32[0];
        v21.i32[3] = v20.i32[0];
        break;
      default:
        v21 = vdupq_lane_s32(*a9.i8, 0);
        break;
    }

    *a2 = xmmword_18439CB10;
    a2[1].i32[2] = 0;
    a2[1].i64[0] = 1;
    a2[3] = v21;
    a2[4].f32[0] = v16;
    v23 = a2 + 4;
    if (v16 >= *&a11)
    {
      v23 = 0;
    }

    a2[2].i64[0] = &a2[3];
    a2[2].i64[1] = v23;
  }

  return a2;
}

uint64_t CMYKf_mark_inner(uint64_t a1, __n128 a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v773 = *MEMORY[0x1E69E9840];
  v18 = *(v3 + 96);
  v19 = *(v3 + 48);
  v20 = *(v2 + 16 * *v3 + 8 * (v18 == 0) + 4 * (v19 == 0));
  if (v20 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v22 = v3;
  v23 = *(v3 + 4);
  v24 = v23 - 1;
  if (v23 < 1)
  {
    return 0;
  }

  v25 = *(v3 + 8);
  v26 = (v25 - 1);
  if (v25 < 1)
  {
    return 0;
  }

  v27 = *(v3 + 136);
  v707 = v3;
  if ((*v3 & 0xFF0000) == 0x50000 || !v27)
  {
    v29 = *v3 & 0xFF00;
    v701 = *(v2 + 16 * *v3 + 8 * (v18 == 0) + 4 * (v19 == 0));
    if (v29 == 1024)
    {
      LODWORD(v767[0]) = *(v3 + 4);
      v766 = v25;
      v17.i32[0] = 1.0;
      if (v18)
      {
        v17.i32[0] = *v18;
      }

      v30 = *(v3 + 88);
      v31 = *(v3 + 28) >> 4;
      v32 = *(v3 + 12);
      v33 = *(v3 + 16);
      if (v19)
      {
        v34 = *(v3 + 32) >> 2;
        v756 = v19 + 4 * v34 * v33 + 4 * v32;
        v749 = 1;
      }

      else
      {
        v756 = 0;
        v34 = 0;
        v749 = 0;
      }

      v45 = *v30;
      v13.f32[0] = 1.0 - v17.f32[0];
      v46 = *(v3 + 40) + 16 * v33 * v31 + 16 * v32;
      v760 = *v30;
      v762 = v17;
      v754 = v13;
      v745 = v34;
      v747 = *(v3 + 28) >> 4;
      v752 = v46;
      if (v27)
      {
        shape_enum_clip_alloc(v2, v3, v27, 1, 1, 1, *(v3 + 104), *(v3 + 108), v23, v25);
        v48 = v47;
        v49 = v756;
        v50 = v34;
        if (v47)
        {
          goto LABEL_1236;
        }

        return 1;
      }

      v758 = 0;
      if (v19)
      {
        v59 = v23;
      }

      else
      {
        v59 = 0;
      }

      v60 = v23;
      v50 = v34 - v59;
      v49 = v756;
      v61 = v46;
      v62 = v60;
      v63 = v60;
LABEL_926:
      v46 = v31 - v63;
      switch(v20)
      {
        case 0:
          v533 = v34;
          v534 = v46 + v62;
          v535 = v766;
          v536 = v766 - 1;
          v537 = &v61[(v534 * v536) & (v534 >> 63)];
          if (v534 < 0)
          {
            v534 = -v534;
          }

          CGBlt_fillBytes(16 * v62, v766, 0, v537, 16 * v534);
          if (v19)
          {
            v538 = v50 + v62;
            v49 += 4 * ((v538 * v536) & (v538 >> 63));
            if (v538 >= 0)
            {
              v50 += v62;
            }

            else
            {
              v50 = -v538;
            }

            CGBlt_fillBytes(4 * v62, v535, 0, v49, 4 * v50);
          }

          v34 = v533;
          goto LABEL_1233;
        case 1:
          v619 = v46 + v62;
          if (v619 < 0)
          {
            v61 += v619 * (v766 - 1);
            v619 = -v619;
          }

          v620 = *(v707 + 88);
          v621 = v766;
          if (v620)
          {
            CGSFillDRAM64(v61, 16 * v619, 16 * v62, v766, v620, 16, 16, 1, 0, 0);
          }

          else
          {
            CGBlt_fillBytes(16 * v62, v766, 0, v61, 16 * v619);
          }

          v48 = v758;
          if (v19)
          {
            v698 = *(v707 + 96);
            if (!v698)
            {
              v698 = &_CMYK_float_alpha;
            }

            v49 += 4 * (((v50 + v62) * (v621 - 1)) & ((v50 + v62) >> 63));
            if ((v50 + v62) >= 0)
            {
              v50 += v62;
            }

            else
            {
              v50 = -(v50 + v62);
            }

            CGBlt_fillBytes(4 * v62, v621, *v698, v49, 4 * v50);
          }

          v46 = v752;
          if (!v758)
          {
            return 1;
          }

          goto LABEL_1235;
        case 2:
          v594 = v766;
          v595 = 4 * v749;
          v596 = vdupq_lane_s32(*v13.f32, 0);
          v597 = 16 * v749;
          if (v19)
          {
            do
            {
              v598 = v62;
              if (v62 >= 4)
              {
                v599 = (v62 >> 2) + 1;
                do
                {
                  *v61 = vmlaq_f32(v45, v596, *v61);
                  *v49 = v17.f32[0] + (*v49 * v13.f32[0]);
                  v61[1] = vmlaq_f32(v45, v596, v61[1]);
                  *(v49 + 4) = v17.f32[0] + (*(v49 + 4) * v13.f32[0]);
                  v61[2] = vmlaq_f32(v45, v596, v61[2]);
                  *(v49 + 8) = v17.f32[0] + (*(v49 + 8) * v13.f32[0]);
                  v61[3] = vmlaq_f32(v45, v596, v61[3]);
                  *(v49 + 12) = v17.f32[0] + (*(v49 + 12) * v13.f32[0]);
                  v61 += 4;
                  --v599;
                  v49 += v597;
                }

                while (v599 > 1);
                v598 = v62 & 3;
              }

              if (v598 >= 1)
              {
                v600 = v598 + 1;
                do
                {
                  *v61 = vmlaq_f32(v45, v596, *v61);
                  ++v61;
                  *v49 = v17.f32[0] + (*v49 * v13.f32[0]);
                  v49 += v595;
                  --v600;
                }

                while (v600 > 1);
              }

              v61 += v46;
              v49 += 4 * v50;
              --v594;
            }

            while (v594);
          }

          else
          {
            do
            {
              v601 = v62;
              if (v62 >= 4)
              {
                v602 = (v62 >> 2) + 1;
                do
                {
                  v603 = vmlaq_f32(v45, v596, v61[1]);
                  *v61 = vmlaq_f32(v45, v596, *v61);
                  v61[1] = v603;
                  v604 = vmlaq_f32(v45, v596, v61[3]);
                  v61[2] = vmlaq_f32(v45, v596, v61[2]);
                  v61[3] = v604;
                  v61 += 4;
                  --v602;
                  v49 += v597;
                }

                while (v602 > 1);
                v601 = v62 & 3;
              }

              if (v601 >= 1)
              {
                v605 = v601 + 1;
                do
                {
                  *v61 = vmlaq_f32(v45, v596, *v61);
                  ++v61;
                  v49 += v595;
                  --v605;
                }

                while (v605 > 1);
              }

              v61 += v46;
              v49 += 4 * v50;
              --v594;
            }

            while (v594);
          }

          goto LABEL_1232;
        case 3:
          v611 = v766;
          do
          {
            v612 = v62;
            do
            {
              v613 = *v49;
              if (*v49 <= 0.0)
              {
                v61->i64[0] = 0;
                v61->i64[1] = 0;
                v614 = 0.0;
              }

              else if (v613 >= 1.0)
              {
                *v61 = v45;
                v614 = v17.f32[0];
              }

              else
              {
                *v61 = vmulq_n_f32(v45, v613);
                v614 = v17.f32[0] * v613;
              }

              *v49 = v614;
              ++v61;
              v49 += 4 * v749;
              --v612;
            }

            while (v612);
            v61 += v46;
            v49 += 4 * v50;
            --v611;
          }

          while (v611);
          goto LABEL_1232;
        case 4:
          v570 = v766;
          do
          {
            v571 = v62;
            do
            {
              v572 = 1.0 - *v49;
              if (v572 <= 0.0)
              {
                v61->i64[0] = 0;
                v61->i64[1] = 0;
                v573 = 0.0;
              }

              else if (v572 >= 1.0)
              {
                *v61 = v45;
                v573 = v17.f32[0];
              }

              else
              {
                *v61 = vmulq_n_f32(v45, v572);
                v573 = v17.f32[0] * v572;
              }

              *v49 = v573;
              ++v61;
              v49 += 4 * v749;
              --v571;
            }

            while (v571);
            v61 += v46;
            v49 += 4 * v50;
            --v570;
          }

          while (v570);
          goto LABEL_1232;
        case 5:
          v637 = v766;
          do
          {
            v638 = v62;
            do
            {
              v639 = *v49;
              *v61 = vmlaq_n_f32(vmulq_n_f32(*v61, v13.f32[0]), v45, *v49);
              ++v61;
              *v49 = (v13.f32[0] * v639) + (v17.f32[0] * v639);
              v49 += 4 * v749;
              --v638;
            }

            while (v638);
            v61 += v46;
            v49 += 4 * v50;
            --v637;
          }

          while (v637);
          goto LABEL_1232;
        case 6:
          v654 = v766;
          while (1)
          {
            v655 = v62;
            do
            {
              v656 = *v49;
              v657 = 1.0 - *v49;
              if (v657 >= 1.0)
              {
                *v61 = v45;
                v658 = v17.f32[0];
              }

              else
              {
                if (v657 <= 0.0)
                {
                  goto LABEL_1148;
                }

                *v61 = vmlaq_n_f32(*v61, v45, v657);
                v658 = v656 + (v17.f32[0] * v657);
              }

              *v49 = v658;
LABEL_1148:
              ++v61;
              v49 += 4 * v749;
              --v655;
            }

            while (v655);
            v61 += v46;
            v49 += 4 * v50;
            if (!--v654)
            {
              goto LABEL_1232;
            }
          }

        case 7:
          v615 = v766;
          v616 = 4 * v749;
          if (v19)
          {
            do
            {
              v617 = v62;
              do
              {
                *v61 = vmulq_n_f32(*v61, v17.f32[0]);
                ++v61;
                *v49 = v17.f32[0] * *v49;
                v49 += v616;
                --v617;
              }

              while (v617);
              v61 += v46;
              v49 += 4 * v50;
              --v615;
            }

            while (v615);
          }

          else
          {
            do
            {
              v618 = v62;
              do
              {
                *v61 = vmulq_n_f32(*v61, v17.f32[0]);
                ++v61;
                v49 += v616;
                --v618;
              }

              while (v618);
              v61 += v46;
              v49 += 4 * v50;
              --v615;
            }

            while (v615);
          }

          goto LABEL_1232;
        case 8:
          v668 = v766;
          v669 = 4 * v749;
          if (v19)
          {
            do
            {
              v670 = v62;
              do
              {
                *v61 = vmulq_n_f32(*v61, v13.f32[0]);
                ++v61;
                *v49 = v13.f32[0] * *v49;
                v49 += v669;
                --v670;
              }

              while (v670);
              v61 += v46;
              v49 += 4 * v50;
              --v668;
            }

            while (v668);
          }

          else
          {
            do
            {
              v671 = v62;
              do
              {
                *v61 = vmulq_n_f32(*v61, v13.f32[0]);
                ++v61;
                v49 += v669;
                --v671;
              }

              while (v671);
              v61 += v46;
              v49 += 4 * v50;
              --v668;
            }

            while (v668);
          }

          goto LABEL_1232;
        case 9:
          v580 = v766;
          do
          {
            v581 = v62;
            do
            {
              v582 = *v49;
              v583 = 1.0 - *v49;
              *v61 = vmlaq_n_f32(vmulq_n_f32(*v61, v17.f32[0]), v45, v583);
              ++v61;
              *v49 = (v17.f32[0] * v582) + (v17.f32[0] * v583);
              v49 += 4 * v749;
              --v581;
            }

            while (v581);
            v61 += v46;
            v49 += 4 * v50;
            --v580;
          }

          while (v580);
          goto LABEL_1232;
        case 10:
          v664 = v766;
          do
          {
            v665 = v62;
            do
            {
              v666 = *v49;
              v667 = 1.0 - *v49;
              *v61 = vmlaq_n_f32(vmulq_n_f32(*v61, v13.f32[0]), v45, v667);
              ++v61;
              *v49 = (v13.f32[0] * v666) + (v17.f32[0] * v667);
              v49 += 4 * v749;
              --v665;
            }

            while (v665);
            v61 += v46;
            v49 += 4 * v50;
            --v664;
          }

          while (v664);
          goto LABEL_1232;
        case 11:
          v560 = vsubq_f32(vdupq_lane_s32(*v17.f32, 0), v45);
          v561 = v766;
          v562 = 4 * v749;
          if (v19)
          {
            do
            {
              v563 = v62;
              do
              {
                v564 = *v49;
                v565 = v17.f32[0] + *v49;
                v566 = v61->f32[1];
                if (v565 > 1.0)
                {
                  v565 = 1.0;
                }

                v61->f32[0] = v565 - (v560.f32[0] + (*v49 - v61->f32[0]));
                v567 = v61->f32[3];
                v568 = v560.f32[2] + (*v49 - v61->f32[2]);
                v61->f32[1] = v565 - (v560.f32[1] + (v564 - v566));
                v569 = v560.f32[3] + (*v49 - v567);
                v61->f32[2] = v565 - v568;
                *v49 = v565;
                v61->f32[3] = v565 - v569;
                ++v61;
                v49 += v562;
                --v563;
              }

              while (v563);
              v61 += v46;
              v49 += 4 * v50;
              --v561;
            }

            while (v561);
          }

          else
          {
            __asm { FMOV            V1.4S, #1.0 }

            do
            {
              v697 = v62;
              do
              {
                *v61 = vsubq_f32(_Q1, vaddq_f32(v560, vsubq_f32(_Q1, *v61)));
                ++v61;
                v49 += v562;
                --v697;
              }

              while (v697);
              v61 += v46;
              v49 += 4 * v50;
              --v561;
            }

            while (v561);
          }

          goto LABEL_1232;
        case 12:
          v574 = v766;
          v575 = 4 * v749;
          if (v19)
          {
            do
            {
              v576 = v62;
              do
              {
                v577 = v17.f32[0] + *v49;
                if (v577 > 1.0)
                {
                  v577 = 1.0;
                }

                v578.i64[0] = v61->i64[0];
                *v49 = v577;
                v578.i64[1] = v61->i64[1];
                *v61++ = vaddq_f32(v45, v578);
                v49 += v575;
                --v576;
              }

              while (v576);
              v61 += v46;
              v49 += 4 * v50;
              --v574;
            }

            while (v574);
          }

          else
          {
            do
            {
              v579 = v62;
              do
              {
                *v61 = vaddq_f32(v45, *v61);
                ++v61;
                v49 += v575;
                --v579;
              }

              while (v579);
              v61 += v46;
              v49 += 4 * v50;
              --v574;
            }

            while (v574);
          }

          goto LABEL_1232;
        case 13:
          if (v17.f32[0] <= 0.0)
          {
            goto LABEL_1233;
          }

          v645 = v766;
          v646 = vsubq_f32(vdupq_lane_s32(*v17.f32, 0), v45);
          v647 = vdupq_lane_s32(*v13.f32, 0);
          v11.i32[0] = 1.0;
          v648 = vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v17, v11)), 0);
          while (1)
          {
            v649 = v62;
            do
            {
              if (!v19)
              {
                v13.i32[0] = 1.0;
LABEL_1136:
                v650 = vsubq_f32(vdupq_lane_s32(*v13.f32, 0), *v61);
                v651 = vmulq_f32(v650, v646);
                v652 = vbslq_s8(v648, vmlaq_f32(v651, v647, v650), v651);
                v653 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v13, v11)), 0), vmlaq_n_f32(v652, v646, 1.0 - v13.f32[0]), v652);
                v13.f32[0] = (v13.f32[0] + v17.f32[0]) - (v13.f32[0] * v17.f32[0]);
                *v61 = vsubq_f32(vdupq_lane_s32(*v13.f32, 0), v653);
                if (!v19)
                {
                  goto LABEL_1138;
                }

                goto LABEL_1137;
              }

              v13.i32[0] = *v49;
              if (*v49 > 0.0)
              {
                goto LABEL_1136;
              }

              *v61 = v45;
              v13.i32[0] = v17.i32[0];
LABEL_1137:
              *v49 = v13.i32[0];
LABEL_1138:
              ++v61;
              v49 += 4 * v749;
              --v649;
            }

            while (v649);
            v61 += v46;
            v49 += 4 * v50;
            if (!--v645)
            {
              goto LABEL_1232;
            }
          }

        case 14:
          if (v17.f32[0] <= 0.0)
          {
            goto LABEL_1233;
          }

          v555 = vsubq_f32(vdupq_lane_s32(*v17.f32, 0), v45);
          v556 = v766;
          __asm { FMOV            V1.4S, #1.0 }

          while (1)
          {
            v558 = v62;
            do
            {
              if (!v19)
              {
                v12.i32[0] = 1.0;
LABEL_967:
                v11.f32[0] = (v17.f32[0] + v12.f32[0]) - (v12.f32[0] * v17.f32[0]);
                v559 = vsubq_f32(vdupq_lane_s32(*v12.f32, 0), *v61);
                v12 = vsubq_f32(vdupq_lane_s32(*v11.f32, 0), vmlaq_f32(v559, vsubq_f32(_Q1, v559), v555));
                *v61 = v12;
                if (!v19)
                {
                  goto LABEL_969;
                }

                goto LABEL_968;
              }

              v12.i32[0] = *v49;
              if (*v49 > 0.0)
              {
                goto LABEL_967;
              }

              *v61 = v45;
              v11.i32[0] = v17.i32[0];
LABEL_968:
              *v49 = v11.i32[0];
LABEL_969:
              ++v61;
              v49 += 4 * v749;
              --v558;
            }

            while (v558);
            v61 += v46;
            v49 += 4 * v50;
            if (!--v556)
            {
              goto LABEL_1232;
            }
          }

        case 15:
          if (v17.f32[0] <= 0.0)
          {
            goto LABEL_1233;
          }

          v606 = v45.f32[1];
          v607 = v45.i64[1];
          v608 = v766;
          while (1)
          {
            v609 = v62;
            do
            {
              if (v19)
              {
                v610 = *v49;
                if (*v49 <= 0.0)
                {
                  *v61 = v45;
                  *v49 = v17.i32[0];
                  goto LABEL_1060;
                }
              }

              else
              {
                v610 = 1.0;
              }

              v771 = 0uLL;
              v772 = 0;
              PDAoverlayPDA(v771.f32, v61->f32[0], v61->f32[1], v61->f32[2], v61->f32[3], v610, *v14.i64, v15, v16, v45.f32[0], v606, *&v607, *(&v607 + 1), v17.f32[0]);
              *v61 = v771;
              if (v19)
              {
                *v49 = v772;
              }

              v45 = v760;
              v17.i32[0] = v762.i32[0];
LABEL_1060:
              ++v61;
              v49 += 4 * v749;
              --v609;
            }

            while (v609);
            v61 += v46;
            v49 += 4 * v50;
            if (!--v608)
            {
              goto LABEL_1227;
            }
          }

        case 16:
          if (v17.f32[0] <= 0.0)
          {
            goto LABEL_1233;
          }

          v544 = v766;
          v545 = vsubq_f32(vdupq_lane_s32(*v17.f32, 0), v45);
          v546 = vdupq_lane_s32(*v13.f32, 0);
          v11.i32[0] = 1.0;
          v547 = vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v17, v11)), 0);
          while (1)
          {
            v548 = v62;
            do
            {
              if (!v19)
              {
                v13.i32[0] = 1.0;
LABEL_955:
                v549 = vsubq_f32(vdupq_lane_s32(*v13.f32, 0), *v61);
                v550 = vmulq_n_f32(v549, v17.f32[0]);
                v551 = vmulq_n_f32(v545, v13.f32[0]);
                v552 = vbslq_s8(vcgtq_f32(v550, v551), v551, v550);
                v553 = vbslq_s8(v547, vmlaq_f32(v552, v546, v549), v552);
                v554 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v13, v11)), 0), vmlaq_n_f32(v553, v545, 1.0 - v13.f32[0]), v553);
                v13.f32[0] = (v13.f32[0] + v17.f32[0]) - (v13.f32[0] * v17.f32[0]);
                *v61 = vsubq_f32(vdupq_lane_s32(*v13.f32, 0), v554);
                if (!v19)
                {
                  goto LABEL_957;
                }

                goto LABEL_956;
              }

              v13.i32[0] = *v49;
              if (*v49 > 0.0)
              {
                goto LABEL_955;
              }

              *v61 = v45;
              v13.i32[0] = v17.i32[0];
LABEL_956:
              *v49 = v13.i32[0];
LABEL_957:
              ++v61;
              v49 += 4 * v749;
              --v548;
            }

            while (v548);
            v61 += v46;
            v49 += 4 * v50;
            if (!--v544)
            {
              goto LABEL_1232;
            }
          }

        case 17:
          if (v17.f32[0] <= 0.0)
          {
            goto LABEL_1233;
          }

          v622 = v766;
          v623 = vsubq_f32(vdupq_lane_s32(*v17.f32, 0), v45);
          v624 = vdupq_lane_s32(*v13.f32, 0);
          v11.i32[0] = 1.0;
          v625 = vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v17, v11)), 0);
          while (1)
          {
            v626 = v62;
            do
            {
              if (!v19)
              {
                v13.i32[0] = 1.0;
LABEL_1093:
                v627 = vsubq_f32(vdupq_lane_s32(*v13.f32, 0), *v61);
                v628 = vmulq_n_f32(v627, v17.f32[0]);
                v629 = vmulq_n_f32(v623, v13.f32[0]);
                v630 = vbslq_s8(vcgtq_f32(v629, v628), v629, v628);
                v631 = vbslq_s8(v625, vmlaq_f32(v630, v624, v627), v630);
                v632 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v13, v11)), 0), vmlaq_n_f32(v631, v623, 1.0 - v13.f32[0]), v631);
                v13.f32[0] = (v13.f32[0] + v17.f32[0]) - (v13.f32[0] * v17.f32[0]);
                *v61 = vsubq_f32(vdupq_lane_s32(*v13.f32, 0), v632);
                if (!v19)
                {
                  goto LABEL_1095;
                }

                goto LABEL_1094;
              }

              v13.i32[0] = *v49;
              if (*v49 > 0.0)
              {
                goto LABEL_1093;
              }

              *v61 = v45;
              v13.i32[0] = v17.i32[0];
LABEL_1094:
              *v49 = v13.i32[0];
LABEL_1095:
              ++v61;
              v49 += 4 * v749;
              --v626;
            }

            while (v626);
            v61 += v46;
            v49 += 4 * v50;
            if (!--v622)
            {
              goto LABEL_1232;
            }
          }

        case 18:
          if (v17.f32[0] <= 0.0)
          {
            goto LABEL_1233;
          }

          v659 = v45.f32[1];
          v660 = v45.i64[1];
          v661 = v766;
          while (1)
          {
            v662 = v62;
            do
            {
              if (v19)
              {
                v663 = *v49;
                if (*v49 <= 0.0)
                {
                  *v61 = v45;
                  *v49 = v17.i32[0];
                  goto LABEL_1161;
                }
              }

              else
              {
                v663 = 1.0;
              }

              v771 = 0uLL;
              v772 = 0;
              PDAcolordodgePDA(v771.f32, v61->f32[0], v61->f32[1], v61->f32[2], v61->f32[3], v663, *v14.i64, v15, v16, v45.f32[0], v659, *&v660, *(&v660 + 1), v17.f32[0]);
              *v61 = v771;
              if (v19)
              {
                *v49 = v772;
              }

              v45 = v760;
              v17.i32[0] = v762.i32[0];
LABEL_1161:
              ++v61;
              v49 += 4 * v749;
              --v662;
            }

            while (v662);
            v61 += v46;
            v49 += 4 * v50;
            if (!--v661)
            {
              goto LABEL_1227;
            }
          }

        case 19:
          if (v17.f32[0] <= 0.0)
          {
            goto LABEL_1233;
          }

          v681 = v45.f32[1];
          v682 = v45.i64[1];
          v683 = v766;
          while (1)
          {
            v684 = v62;
            do
            {
              if (v19)
              {
                v685 = *v49;
                if (*v49 <= 0.0)
                {
                  *v61 = v45;
                  *v49 = v17.i32[0];
                  goto LABEL_1200;
                }
              }

              else
              {
                v685 = 1.0;
              }

              v771 = 0uLL;
              v772 = 0;
              PDAcolorburnPDA(v771.f32, v61->f32[0], v61->f32[1], v61->f32[2], v61->f32[3], v685, *v14.i64, v15, v16, v45.f32[0], v681, *&v682, *(&v682 + 1), v17.f32[0]);
              *v61 = v771;
              if (v19)
              {
                *v49 = v772;
              }

              v45 = v760;
              v17.i32[0] = v762.i32[0];
LABEL_1200:
              ++v61;
              v49 += 4 * v749;
              --v684;
            }

            while (v684);
            v61 += v46;
            v49 += 4 * v50;
            if (!--v683)
            {
LABEL_1227:
              v766 = 0;
              LODWORD(v20) = v701;
              v34 = v745;
              v31 = v747;
LABEL_1233:
              v46 = v752;
LABEL_1234:
              v48 = v758;
              if (!v758)
              {
                return 1;
              }

LABEL_1235:
              v765 = 0;
              v764 = 0;
LABEL_1236:
              if (!shape_enum_clip_next(v48, &v765, &v764, v767, &v766))
              {
                goto LABEL_1240;
              }

              v758 = v48;
              v61 = (v46 + 16 * v31 * v764 + 16 * v765);
              v63 = SLODWORD(v767[0]);
              if (v19)
              {
                v49 = v756 + 4 * v34 * v764 + 4 * v765;
                v50 = v34 - SLODWORD(v767[0]);
              }

              v62 = v767[0];
              v45 = v760;
              v17 = v762;
              v13 = v754;
              goto LABEL_926;
            }
          }

        case 20:
          if (v17.f32[0] <= 0.0)
          {
            goto LABEL_1233;
          }

          v633 = v45.i32[1];
          v634 = v45.i64[1];
          v635 = v766;
          while (1)
          {
            v636 = v62;
            do
            {
              if (v19)
              {
                v13.i32[0] = *v49;
                if (*v49 <= 0.0)
                {
                  *v61 = v45;
                  *v49 = v17.i32[0];
                  goto LABEL_1108;
                }
              }

              else
              {
                v13.i32[0] = 1.0;
              }

              v771 = 0uLL;
              v772 = 0;
              v9.i32[0] = v61->i32[0];
              PDAsoftlightPDA(&v771, *v9.f32, v61->f32[1], v61->f32[2], v61->f32[3], *v13.i64, *v14.f32, v15, v16, v3, v27, v4, v5, v6, v7, v8, __PAIR64__(v633, v45.u32[0]), *&v634, *(&v634 + 1), v17.f32[0]);
              v9.i32[1] = v771.i32[1];
              *v61 = v771;
              if (v19)
              {
                *v49 = v772;
              }

              v45 = v760;
              v17.i32[0] = v762.i32[0];
LABEL_1108:
              ++v61;
              v49 += 4 * v749;
              --v636;
            }

            while (v636);
            v61 += v46;
            v49 += 4 * v50;
            if (!--v635)
            {
              goto LABEL_1227;
            }
          }

        case 21:
          if (v17.f32[0] <= 0.0)
          {
            goto LABEL_1233;
          }

          v640 = v45.f32[1];
          v641 = v45.i64[1];
          v642 = v766;
          while (1)
          {
            v643 = v62;
            do
            {
              if (v19)
              {
                v644 = *v49;
                if (*v49 <= 0.0)
                {
                  *v61 = v45;
                  *v49 = v17.i32[0];
                  goto LABEL_1126;
                }
              }

              else
              {
                v644 = 1.0;
              }

              v771 = 0uLL;
              v772 = 0;
              PDAhardlightPDA(v771.f32, v61->f32[0], v61->f32[1], v61->f32[2], v61->f32[3], v644, *v14.i64, v15, v16, v45.f32[0], v640, *&v641, *(&v641 + 1), v17.f32[0]);
              *v61 = v771;
              if (v19)
              {
                *v49 = v772;
              }

              v45 = v760;
              v17.i32[0] = v762.i32[0];
LABEL_1126:
              ++v61;
              v49 += 4 * v749;
              --v643;
            }

            while (v643);
            v61 += v46;
            v49 += 4 * v50;
            if (!--v642)
            {
              goto LABEL_1227;
            }
          }

        case 22:
          if (v17.f32[0] <= 0.0)
          {
            goto LABEL_1233;
          }

          v672 = v766;
          v673 = vsubq_f32(vdupq_lane_s32(*v17.f32, 0), v45);
          while (1)
          {
            v674 = v62;
            do
            {
              if (!v19)
              {
                v11.i32[0] = 1.0;
LABEL_1185:
                v10.f32[0] = (v11.f32[0] + v17.f32[0]) - (v11.f32[0] * v17.f32[0]);
                v675 = vsubq_f32(vdupq_lane_s32(*v11.f32, 0), *v61);
                v676 = vaddq_f32(v675, v673);
                v677 = vmulq_n_f32(v675, v17.f32[0]);
                v678 = vmulq_n_f32(v673, v11.f32[0]);
                v679 = vsubq_f32(v676, v677);
                v680 = vsubq_f32(v677, v678);
                v11 = vsubq_f32(vdupq_lane_s32(*v10.f32, 0), vaddq_f32(vsubq_f32(v679, v678), vbslq_s8(vcltzq_f32(v680), vnegq_f32(v680), v680)));
                *v61 = v11;
                if (!v19)
                {
                  goto LABEL_1187;
                }

                goto LABEL_1186;
              }

              v11.i32[0] = *v49;
              if (*v49 > 0.0)
              {
                goto LABEL_1185;
              }

              *v61 = v45;
              v10.i32[0] = v17.i32[0];
LABEL_1186:
              *v49 = v10.i32[0];
LABEL_1187:
              ++v61;
              v49 += 4 * v749;
              --v674;
            }

            while (v674);
            v61 += v46;
            v49 += 4 * v50;
            if (!--v672)
            {
LABEL_1232:
              v766 = 0;
              goto LABEL_1233;
            }
          }

        case 23:
          if (v17.f32[0] <= 0.0)
          {
            goto LABEL_1233;
          }

          v686 = v766;
          v687 = vsubq_f32(vdupq_lane_s32(*v17.f32, 0), v45);
          v688.i64[0] = 0xC0000000C0000000;
          v688.i64[1] = 0xC0000000C0000000;
          while (1)
          {
            v689 = v62;
            do
            {
              if (!v19)
              {
                v12.i32[0] = 1.0;
LABEL_1210:
                v11.f32[0] = (v12.f32[0] + v17.f32[0]) - (v12.f32[0] * v17.f32[0]);
                v690 = vsubq_f32(vdupq_lane_s32(*v12.f32, 0), *v61);
                v12 = vsubq_f32(vdupq_lane_s32(*v11.f32, 0), vmlaq_f32(vaddq_f32(v690, v687), v688, vmulq_f32(v687, v690)));
                *v61 = v12;
                if (!v19)
                {
                  goto LABEL_1212;
                }

                goto LABEL_1211;
              }

              v12.i32[0] = *v49;
              if (*v49 > 0.0)
              {
                goto LABEL_1210;
              }

              *v61 = v45;
              v11.i32[0] = v17.i32[0];
LABEL_1211:
              *v49 = v11.i32[0];
LABEL_1212:
              ++v61;
              v49 += 4 * v749;
              --v689;
            }

            while (v689);
            v61 += v46;
            v49 += 4 * v50;
            if (!--v686)
            {
              goto LABEL_1232;
            }
          }

        case 24:
          if (v17.f32[0] <= 0.0)
          {
            goto LABEL_1233;
          }

          v589 = v45.f32[1];
          v590 = v45.i64[1];
          v591 = v766;
          while (1)
          {
            v592 = v62;
            do
            {
              if (v19)
              {
                v593 = *v49;
                if (*v49 <= 0.0)
                {
                  *v61 = v45;
                  *v49 = v17.i32[0];
                  goto LABEL_1028;
                }
              }

              else
              {
                v593 = 1.0;
              }

              v771 = 0uLL;
              v772 = 0;
              PDAhuePDA(v771.f32, v61->f32[0], v61->f32[1], v61->f32[2], v61->f32[3], v593, *v14.i64, v15, v16, v45.f32[0], v589, *&v590, *(&v590 + 1), v17.f32[0]);
              *v61 = v771;
              if (v19)
              {
                *v49 = v772;
              }

              v45 = v760;
              v17.i32[0] = v762.i32[0];
LABEL_1028:
              ++v61;
              v49 += 4 * v749;
              --v592;
            }

            while (v592);
            v61 += v46;
            v49 += 4 * v50;
            if (!--v591)
            {
              goto LABEL_1227;
            }
          }

        case 25:
          if (v17.f32[0] <= 0.0)
          {
            goto LABEL_1233;
          }

          v584 = v45.f32[1];
          v585 = v45.i64[1];
          v586 = v766;
          while (1)
          {
            v587 = v62;
            do
            {
              if (v19)
              {
                v588 = *v49;
                if (*v49 <= 0.0)
                {
                  *v61 = v45;
                  *v49 = v17.i32[0];
                  goto LABEL_1015;
                }
              }

              else
              {
                v588 = 1.0;
              }

              v771 = 0uLL;
              v772 = 0;
              PDAsaturationPDA(v771.f32, v61->f32[0], v61->f32[1], v61->f32[2], v61->f32[3], v588, *v14.i64, v15, v16, v45.f32[0], v584, *&v585, *(&v585 + 1), v17.f32[0]);
              *v61 = v771;
              if (v19)
              {
                *v49 = v772;
              }

              v45 = v760;
              v17.i32[0] = v762.i32[0];
LABEL_1015:
              ++v61;
              v49 += 4 * v749;
              --v587;
            }

            while (v587);
            v61 += v46;
            v49 += 4 * v50;
            if (!--v586)
            {
              goto LABEL_1227;
            }
          }

        case 26:
          if (v17.f32[0] <= 0.0)
          {
            goto LABEL_1233;
          }

          v691 = v45.f32[1];
          v692 = v45.i64[1];
          v693 = v766;
          while (1)
          {
            v694 = v62;
            do
            {
              if (v19)
              {
                v695 = *v49;
                if (*v49 <= 0.0)
                {
                  *v61 = v45;
                  *v49 = v17.i32[0];
                  goto LABEL_1225;
                }
              }

              else
              {
                v695 = 1.0;
              }

              v771 = 0uLL;
              v772 = 0;
              PDAluminosityPDA(v771.f32, v45.f32[0], v691, *&v692, *(&v692 + 1), v17.f32[0], *v14.i64, v15, v16, v61->f32[0], COERCE_FLOAT(*(v61->i64 + 4)), COERCE_FLOAT(HIDWORD(*(v61->i64 + 4))), v61->f32[3], v695);
              *v61 = v771;
              if (v19)
              {
                *v49 = v772;
              }

              v45 = v760;
              v17.i32[0] = v762.i32[0];
LABEL_1225:
              ++v61;
              v49 += 4 * v749;
              --v694;
            }

            while (v694);
            v61 += v46;
            v49 += 4 * v50;
            if (!--v693)
            {
              goto LABEL_1227;
            }
          }

        case 27:
          if (v17.f32[0] <= 0.0)
          {
            goto LABEL_1233;
          }

          v539 = v45.f32[1];
          v540 = v45.i64[1];
          v541 = v766;
          break;
        default:
          goto LABEL_1234;
      }

LABEL_937:
      v542 = v62;
      while (v19)
      {
        v543 = *v49;
        if (*v49 > 0.0)
        {
          goto LABEL_942;
        }

        *v61 = v45;
        *v49 = v17.i32[0];
LABEL_945:
        ++v61;
        v49 += 4 * v749;
        if (!--v542)
        {
          v61 += v46;
          v49 += 4 * v50;
          if (!--v541)
          {
            goto LABEL_1227;
          }

          goto LABEL_937;
        }
      }

      v543 = 1.0;
LABEL_942:
      v771 = 0uLL;
      v772 = 0;
      PDAluminosityPDA(v771.f32, v61->f32[0], v61->f32[1], v61->f32[2], v61->f32[3], v543, *v14.i64, v15, v16, v45.f32[0], v539, *&v540, *(&v540 + 1), v17.f32[0]);
      *v61 = v771;
      if (v19)
      {
        *v49 = v772;
      }

      v45 = v760;
      v17.i32[0] = v762.i32[0];
      goto LABEL_945;
    }

    LODWORD(v767[0]) = *(v3 + 4);
    v766 = v25;
    v35 = *(v3 + 12);
    v36 = *(v3 + 16);
    v37 = *(v3 + 28) >> 4;
    if (v19)
    {
      v709 = *(v3 + 32) >> 2;
      v710 = v19 + 4 * v709 * v36 + 4 * v35;
      v19 = 0xFFFFFFFFLL;
    }

    else
    {
      v709 = 0;
      v710 = 0;
    }

    v51 = *(v3 + 88);
    v708 = *(v3 + 40) + 16 * v36 * v37 + 16 * v35;
    v52 = *(v3 + 104);
    v53 = *(v3 + 108);
    v54 = *(v3 + 56);
    v55 = *(v3 + 60);
    v748 = *(v3 + 76) >> 4;
    if (v29 == 256)
    {
      if (v18)
      {
        v56 = *(v3 + 80) >> 2;
        v18 += 4 * v56 * v55 + 4 * v54;
        v57 = 0xFFFFFFFFLL;
      }

      else
      {
        v56 = 0;
        v57 = 0;
      }

      v51 += 16 * v55 * v748 + 16 * v54;
      if (v748 == v37)
      {
        v83 = (v708 - v51) >> 4;
        if (v83 >= 1)
        {
          if (v83 <= v23)
          {
            v708 += 16 * v24;
            v51 += 16 * v24;
            v710 += 4 * (v19 & v24);
            v4 = 0xFFFFFFFFLL;
            v748 = *(v3 + 28) >> 4;
            v18 += 4 * (v57 & v24);
            goto LABEL_48;
          }

          if (v708 <= v51 + 16 * v37 * v26 + 16 * v23 - 16)
          {
            v708 += 16 * v37 * v26;
            v95 = v710 + 4 * v709 * v26;
            v709 = -v709;
            v710 = v95;
            v18 += 4 * v56 * v26;
            v19 &= 1u;
            v56 = -v56;
            v57 &= 1u;
            v4 = 1;
            v51 += 16 * v37 * v26;
            v748 = -v37;
            v37 = -v37;
            goto LABEL_48;
          }
        }
      }

      v19 &= 1u;
      v57 &= 1u;
      v4 = 1;
LABEL_48:
      v703 = *(v3 + 60);
      v704 = *(v3 + 56);
      if (v27)
      {
        v763 = v57;
        v759 = 0;
        v735 = -1;
        v746 = 0;
        v58 = v748;
        v755 = v56;
        v712 = v56;
        goto LABEL_53;
      }

      v88 = v4 * v23;
      v753 = v709 - v19 * v23;
      v89 = -1;
      v711 = v4;
      v712 = v56;
      v90 = v748;
      v58 = v748;
LABEL_61:
      v713 = 0;
      v714 = v51;
      v757 = v18;
      v759 = 0;
      v746 = 0;
      v748 = v90 - v88;
      v755 = v56 - v57 * v23;
      v86 = v18;
      v87 = v710;
      v94 = v708;
      goto LABEL_65;
    }

    v58 = *(v3 + 64);
    v712 = *(v3 + 68);
    if (v18)
    {
      v56 = *(v3 + 80) >> 2;
      v57 = 1;
    }

    else
    {
      v56 = 0;
      v57 = 0;
    }

    v746 = v51 + 16 * v748 * v712;
    v19 &= 1u;
    if (v27)
    {
      v703 = *(v3 + 60);
      v704 = *(v3 + 56);
      v763 = v57;
      v755 = v56;
      LODWORD(v4) = 1;
      v759 = *(v3 + 88);
      v735 = v759;
LABEL_53:
      v711 = v4;
      v715 = v37;
      shape_enum_clip_alloc(v2, v3, v27, v4, v37, 1, v52, v53, v23, v25);
      v48 = v84;
      v85 = v18;
      v86 = v18;
      v87 = v710;
      v753 = v709;
      if (v84)
      {
        goto LABEL_836;
      }

      return 1;
    }

    v753 = v709 - (v19 * v23);
    if (!v51)
    {
      v703 = *(v3 + 60);
      v704 = *(v3 + 56);
      v89 = 0;
      v711 = 1;
      v88 = v23;
      v90 = *(v3 + 76) >> 4;
      goto LABEL_61;
    }

    v91 = v55 % v712;
    v703 = v55 % v712;
    v714 = *(v3 + 88);
    v92 = v51 + 16 * v748 * v91;
    v93 = v54 % v58;
    v51 = v92 + 16 * v93;
    v89 = v92 + 16 * v58;
    v755 = v56;
    v704 = v93;
    v759 = v51;
    v713 = 0;
    if (v18)
    {
      v86 = &v18[4 * v56 * v91 + 4 * v93];
      v711 = 1;
      v57 = 1;
      v757 = v86;
    }

    else
    {
      v757 = 0;
      v86 = 0;
      v711 = 1;
    }

    v87 = v710;
    v94 = v708;
    v88 = v23;
LABEL_65:
    v763 = v57;
    v715 = v37;
    v750 = v37 - v88;
    v716 = v23;
    v761 = v19;
    switch(v20)
    {
      case 0:
        v705 = v18;
        v735 = v89;
        v96 = v750 - v23;
        v97 = &v94[-v23 + 1];
        if (v711 >= 0)
        {
          v97 = v94;
          v96 = v750 + v23;
        }

        v98 = v766;
        v99 = v766 - 1;
        v100 = (v97 + 16 * ((v96 * v99) & (v96 >> 63)));
        if (v96 < 0)
        {
          v96 = -v96;
        }

        CGBlt_fillBytes(16 * v23, v766, 0, v100, 16 * v96);
        if (v19)
        {
          if (v711 < 0)
          {
            v101 = v753 - v23;
            v87 = &v87[-4 * v23 + 4];
          }

          else
          {
            v101 = v753 + v23;
          }

          v87 += 4 * ((v101 * v99) & (v101 >> 63));
          if (v101 < 0)
          {
            v101 = -v101;
          }

          v753 = v101;
          CGBlt_fillBytes(4 * v23, v98, 0, v87, 4 * v101);
        }

        v51 = v714;
        goto LABEL_864;
      case 1:
        v269 = *(v22 + 1);
        if (v269 == 2)
        {
          if (v23 >= 2 && (16 * v58) <= 0x40)
          {
            v9.i32[0] = 16 * v58;
            v483 = vcnt_s8(*v9.f32);
            v483.i16[0] = vaddlv_u8(v483);
            if (v483.i32[0] <= 1u)
            {
              v705 = v18;
              v735 = v89;
              v484 = v766;
              v51 = v714;
              CGSFillDRAM64(v94, 16 * (v23 + v750), 16 * v23, v766, v714, 16 * v748, 16 * v58, v712, 16 * v704, v703);
              if (v19)
              {
                v48 = v713;
                if (v57)
                {
                  CGSFillDRAM64(v87, 4 * (v23 + v753), 4 * v23, v484, v705, 4 * v755, 4 * v58, v712, 4 * v704, v703);
                }

                else
                {
                  CGBlt_fillBytes(4 * v23, v484, 1065353216, v87, 4 * (v23 + v753));
                }

                v18 = v705;
                goto LABEL_833;
              }

              goto LABEL_864;
            }
          }
        }

        else if (v269 == 1)
        {
          v705 = v18;
          v735 = v89;
          if (v711 < 0)
          {
            v270 = v748 - v23;
            v517 = 16 * v23 - 16;
            v51 -= v517;
            v271 = v750 - v23;
            v94 = (v94 - v517);
          }

          else
          {
            v270 = v748 + v23;
            v271 = v750 + v23;
          }

          v518 = v766 - 1;
          v519 = (v51 + 16 * ((v270 * v518) & (v270 >> 63)));
          if (v270 >= 0)
          {
            v520 = v270;
          }

          else
          {
            v520 = -v270;
          }

          if (v271 >= 0)
          {
            LODWORD(v521) = v271;
          }

          else
          {
            v521 = -v271;
          }

          v748 = v520;
          v751 = v766;
          CGBlt_copyBytes(16 * v23, v766, v519, &v94[(v271 * v518) & (v271 >> 63)], 16 * v520, 16 * v521);
          if (v19)
          {
            v522 = 4 * v23;
            v48 = v713;
            v51 = v714;
            if (v57)
            {
              v523 = v755 - v23;
              v524 = 4 * v23 - 4;
              v525 = &v86[-v524];
              v526 = v753 - v23;
              v527 = &v87[-v524];
              if (v711 >= 0)
              {
                v525 = v86;
                v527 = v87;
                v523 = v755 + v23;
                v526 = v753 + v23;
              }

              v86 = &v525[4 * ((v523 * v518) & (v523 >> 63))];
              if (v523 >= 0)
              {
                v528 = v523;
              }

              else
              {
                v528 = -v523;
              }

              v87 = &v527[4 * ((v526 * v518) & (v526 >> 63))];
              if (v526 >= 0)
              {
                v529 = v526;
              }

              else
              {
                v529 = -v526;
              }

              v753 = v529;
              v755 = v528;
              CGBlt_copyBytes(v522, v751, v86, v87, 4 * v528, 4 * v529);
            }

            else
            {
              v530 = v753 - v23;
              v531 = &v87[-4 * v23 + 4];
              if (v711 >= 0)
              {
                v531 = v87;
                v530 = v753 + v23;
              }

              v532 = (v530 * v518) & (v530 >> 63);
              v87 = (v531 + 4 * v532);
              if (v530 < 0)
              {
                v530 = -v530;
              }

              v753 = v530;
              CGBlt_fillBytes(v522, v751, 1065353216, (v531 + 4 * v532), 4 * v530);
            }

            goto LABEL_865;
          }

          v51 = v714;
LABEL_864:
          v48 = v713;
LABEL_865:
          v85 = v757;
          v18 = v705;
          goto LABEL_834;
        }

        if (v19)
        {
          if (v57)
          {
            v485 = v766;
            do
            {
              v486 = v23;
              do
              {
                *v94 = *v51;
                *v87 = *v86;
                v487 = v51 + 16 * v711;
                if (v487 >= v89)
                {
                  v488 = -v58;
                }

                else
                {
                  v488 = 0;
                }

                v86 += 4 * v57 + 4 * v488;
                v51 = v487 + 16 * v488;
                v87 += 4 * v19;
                v94 += v711;
                --v486;
              }

              while (v486);
              if (v746)
              {
                v489 = v759 + 16 * v748;
                if (v489 >= v746)
                {
                  v490 = -(v755 * v712);
                }

                else
                {
                  v490 = 0;
                }

                v86 = &v757[4 * v755 + 4 * v490];
                if (v489 >= v746)
                {
                  v491 = -(v748 * v712);
                }

                else
                {
                  v491 = 0;
                }

                v51 = v489 + 16 * v491;
                v89 += 16 * v491 + 16 * v748;
                v757 += 4 * v755 + 4 * v490;
                v759 = v51;
              }

              else
              {
                v51 += 16 * v748;
                v86 += 4 * v755;
              }

              v94 += v750;
              v87 += 4 * v753;
              --v485;
            }

            while (v485);
            goto LABEL_831;
          }

          v510 = v766;
          v85 = v757;
          do
          {
            v511 = v23;
            do
            {
              *v94 = *v51;
              *v87 = 1065353216;
              v512 = v51 + 16 * v711;
              if (v512 >= v89)
              {
                v513 = -v58;
              }

              else
              {
                v513 = 0;
              }

              v86 += 4 * v513;
              v51 = v512 + 16 * v513;
              v87 += 4 * v19;
              v94 += v711;
              --v511;
            }

            while (v511);
            if (v746)
            {
              v514 = v759 + 16 * v748;
              if (v514 >= v746)
              {
                v515 = -(v755 * v712);
              }

              else
              {
                v515 = 0;
              }

              v85 += 4 * v755 + 4 * v515;
              if (v514 >= v746)
              {
                v516 = -(v748 * v712);
              }

              else
              {
                v516 = 0;
              }

              v51 = v514 + 16 * v516;
              v89 += 16 * v516 + 16 * v748;
              v86 = v85;
              v759 = v51;
            }

            else
            {
              v51 += 16 * v748;
              v86 += 4 * v755;
            }

            v94 += v750;
            v87 += 4 * v753;
            --v510;
          }

          while (v510);
        }

        else
        {
          v503 = v766;
          v85 = v757;
          do
          {
            v504 = v23;
            do
            {
              *v94 = *v51;
              v505 = v51 + 16 * v711;
              if (v505 >= v89)
              {
                v506 = -v58;
              }

              else
              {
                v506 = 0;
              }

              v86 += 4 * v57 + 4 * v506;
              v51 = v505 + 16 * v506;
              v94 += v711;
              --v504;
            }

            while (v504);
            if (v746)
            {
              v507 = v759 + 16 * v748;
              if (v507 >= v746)
              {
                v508 = -(v755 * v712);
              }

              else
              {
                v508 = 0;
              }

              v85 += 4 * v755 + 4 * v508;
              if (v507 >= v746)
              {
                v509 = -(v748 * v712);
              }

              else
              {
                v509 = 0;
              }

              v51 = v507 + 16 * v509;
              v89 += 16 * v509 + 16 * v748;
              v86 = v85;
              v759 = v51;
            }

            else
            {
              v51 += 16 * v748;
              v86 += 4 * v755;
            }

            v94 += v750;
            v87 += 4 * v753;
            --v503;
          }

          while (v503);
        }

        goto LABEL_899;
      case 2:
        v224 = 16 * v711;
        if (v19)
        {
          v225 = v766;
          while (1)
          {
            v226 = v23;
            do
            {
              v227 = *v86;
              if (*v86 >= 1.0)
              {
                *v94 = *v51;
                v228 = *v86;
              }

              else
              {
                if (v227 <= 0.0)
                {
                  goto LABEL_295;
                }

                *v94 = vmlaq_n_f32(*v51, *v94, 1.0 - v227);
                v228 = v227 + (*v87 * (1.0 - v227));
              }

              *v87 = v228;
LABEL_295:
              v229 = v51 + 16 * v711;
              if (v229 >= v89)
              {
                v230 = -v58;
              }

              else
              {
                v230 = 0;
              }

              v86 += 4 * v57 + 4 * v230;
              v51 = v229 + 16 * v230;
              v87 += 4 * v19;
              v94 = (v94 + v224);
              --v226;
            }

            while (v226);
            if (v746)
            {
              v231 = v759 + 16 * v748;
              if (v231 >= v746)
              {
                v232 = -(v755 * v712);
              }

              else
              {
                v232 = 0;
              }

              v86 = &v757[4 * v755 + 4 * v232];
              if (v231 >= v746)
              {
                v233 = -(v748 * v712);
              }

              else
              {
                v233 = 0;
              }

              v51 = v231 + 16 * v233;
              v89 += 16 * v233 + 16 * v748;
              v757 += 4 * v755 + 4 * v232;
              v759 = v51;
            }

            else
            {
              v51 += 16 * v748;
              v86 += 4 * v755;
            }

            v94 += v750;
            v87 += 4 * v753;
            if (!--v225)
            {
              goto LABEL_831;
            }
          }
        }

        v449 = v766;
        v85 = v757;
LABEL_722:
        v450 = v23;
        while (1)
        {
          v451 = *v86;
          if (*v86 >= 1.0)
          {
            break;
          }

          if (v451 > 0.0)
          {
            v452 = vmlaq_n_f32(*v51, *v94, 1.0 - v451);
LABEL_727:
            *v94 = v452;
          }

          v453 = v51 + 16 * v711;
          if (v453 >= v89)
          {
            v454 = -v58;
          }

          else
          {
            v454 = 0;
          }

          v86 += 4 * v57 + 4 * v454;
          v51 = v453 + 16 * v454;
          v94 = (v94 + v224);
          if (!--v450)
          {
            if (v746)
            {
              v455 = v759 + 16 * v748;
              if (v455 >= v746)
              {
                v456 = -(v755 * v712);
              }

              else
              {
                v456 = 0;
              }

              v85 += 4 * v755 + 4 * v456;
              if (v455 >= v746)
              {
                v457 = -(v748 * v712);
              }

              else
              {
                v457 = 0;
              }

              v51 = v455 + 16 * v457;
              v89 += 16 * v457 + 16 * v748;
              v86 = v85;
              v759 = v51;
            }

            else
            {
              v51 += 16 * v748;
              v86 += 4 * v755;
            }

            v94 += v750;
            v87 += 4 * v753;
            if (!--v449)
            {
              goto LABEL_899;
            }

            goto LABEL_722;
          }
        }

        v452 = *v51;
        goto LABEL_727;
      case 3:
        v248 = 4 * v19;
        v249 = 16 * v711;
        if (v57)
        {
          v250 = v766;
          do
          {
            v251 = v23;
            do
            {
              v252 = *v87;
              if (*v87 <= 0.0)
              {
                v94->i64[0] = 0;
                v94->i64[1] = 0;
                v254 = 0.0;
              }

              else
              {
                v253.i32[0] = *v51;
                if (v252 >= 1.0)
                {
                  v94->i32[0] = v253.i32[0];
                  *(v94->i64 + 4) = *(v51 + 4);
                  v94->i32[3] = *(v51 + 12);
                  v254 = *v86;
                }

                else
                {
                  v253.i32[1] = *(v51 + 4);
                  v253.i64[1] = *(v51 + 8);
                  *v94 = vmulq_n_f32(v253, v252);
                  v254 = v252 * *v86;
                }
              }

              *v87 = v254;
              v255 = v51 + 16 * v711;
              if (v255 >= v89)
              {
                v256 = -v58;
              }

              else
              {
                v256 = 0;
              }

              v86 += 4 * v57 + 4 * v256;
              v51 = v255 + 16 * v256;
              v87 += v248;
              v94 = (v94 + v249);
              --v251;
            }

            while (v251);
            if (v746)
            {
              v257 = v759 + 16 * v748;
              if (v257 >= v746)
              {
                v258 = -(v755 * v712);
              }

              else
              {
                v258 = 0;
              }

              v86 = &v757[4 * v755 + 4 * v258];
              if (v257 >= v746)
              {
                v259 = -(v748 * v712);
              }

              else
              {
                v259 = 0;
              }

              v51 = v257 + 16 * v259;
              v89 += 16 * v259 + 16 * v748;
              v757 += 4 * v755 + 4 * v258;
              v759 = v51;
            }

            else
            {
              v51 += 16 * v748;
              v86 += 4 * v755;
            }

            v94 += v750;
            v87 += 4 * v753;
            --v250;
          }

          while (v250);
          goto LABEL_831;
        }

        v458 = v766;
        v85 = v757;
        do
        {
          v459 = v23;
          do
          {
            v460 = *v87;
            if (*v87 <= 0.0)
            {
              v94->i64[0] = 0;
              v94->i64[1] = 0;
            }

            else
            {
              v461.i32[0] = *v51;
              if (v460 >= 1.0)
              {
                v94->i32[0] = v461.i32[0];
                *(v94->i64 + 4) = *(v51 + 4);
                v94->i32[3] = *(v51 + 12);
              }

              else
              {
                v461.i32[1] = *(v51 + 4);
                v461.i64[1] = *(v51 + 8);
                *v94 = vmulq_n_f32(v461, v460);
              }
            }

            v462 = v51 + 16 * v711;
            if (v462 >= v89)
            {
              v463 = -v58;
            }

            else
            {
              v463 = 0;
            }

            v86 += 4 * v463;
            v51 = v462 + 16 * v463;
            v87 += v248;
            v94 = (v94 + v249);
            --v459;
          }

          while (v459);
          if (v746)
          {
            v464 = v759 + 16 * v748;
            if (v464 >= v746)
            {
              v465 = -(v755 * v712);
            }

            else
            {
              v465 = 0;
            }

            v85 += 4 * v755 + 4 * v465;
            if (v464 >= v746)
            {
              v466 = -(v748 * v712);
            }

            else
            {
              v466 = 0;
            }

            v51 = v464 + 16 * v466;
            v89 += 16 * v466 + 16 * v748;
            v86 = v85;
            v759 = v51;
          }

          else
          {
            v51 += 16 * v748;
            v86 += 4 * v755;
          }

          v94 += v750;
          v87 += 4 * v753;
          --v458;
        }

        while (v458);
        goto LABEL_899;
      case 4:
        v165 = v766;
        do
        {
          v166 = v23;
          do
          {
            v167 = 1.0 - *v87;
            if (v167 <= 0.0)
            {
              v94->i64[0] = 0;
              v94->i64[1] = 0;
              v169 = 0.0;
            }

            else if (v167 >= 1.0)
            {
              if (v57)
              {
                v169 = *v86;
              }

              else
              {
                v169 = 1.0;
              }
            }

            else
            {
              *v94 = vmulq_n_f32(*v51, v167);
              if (v57)
              {
                v168 = *v86;
              }

              else
              {
                v168 = 1.0;
              }

              v169 = v167 * v168;
            }

            *v87 = v169;
            v170 = v51 + 16 * v711;
            if (v170 >= v89)
            {
              v171 = -v58;
            }

            else
            {
              v171 = 0;
            }

            v86 += 4 * v57 + 4 * v171;
            v51 = v170 + 16 * v171;
            v87 += 4 * v19;
            v94 += v711;
            --v166;
          }

          while (v166);
          if (v746)
          {
            v172 = v759 + 16 * v748;
            if (v172 >= v746)
            {
              v173 = -(v755 * v712);
            }

            else
            {
              v173 = 0;
            }

            v86 = &v757[4 * v755 + 4 * v173];
            if (v172 >= v746)
            {
              v174 = -(v748 * v712);
            }

            else
            {
              v174 = 0;
            }

            v51 = v172 + 16 * v174;
            v89 += 16 * v174 + 16 * v748;
            v757 += 4 * v755 + 4 * v173;
            v759 = v51;
          }

          else
          {
            v51 += 16 * v748;
            v86 += 4 * v755;
          }

          v94 += v750;
          v87 += 4 * v753;
          --v165;
        }

        while (v165);
        goto LABEL_831;
      case 5:
        v298 = v766;
        do
        {
          v299 = v23;
          do
          {
            v300 = *v87;
            v301 = *v86;
            v302 = 1.0 - *v86;
            *v94 = vmlaq_n_f32(vmulq_n_f32(*v94, v302), *v51, *v87);
            *v87 = (v300 * v302) + (v301 * v300);
            v303 = v51 + 16 * v711;
            if (v303 >= v89)
            {
              v304 = -v58;
            }

            else
            {
              v304 = 0;
            }

            v86 += 4 * v57 + 4 * v304;
            v51 = v303 + 16 * v304;
            v87 += 4 * v19;
            v94 += v711;
            --v299;
          }

          while (v299);
          if (v746)
          {
            v305 = v759 + 16 * v748;
            if (v305 >= v746)
            {
              v306 = -(v755 * v712);
            }

            else
            {
              v306 = 0;
            }

            v86 = &v757[4 * v755 + 4 * v306];
            if (v305 >= v746)
            {
              v307 = -(v748 * v712);
            }

            else
            {
              v307 = 0;
            }

            v51 = v305 + 16 * v307;
            v89 += 16 * v307 + 16 * v748;
            v757 += 4 * v755 + 4 * v306;
            v759 = v51;
          }

          else
          {
            v51 += 16 * v748;
            v86 += 4 * v755;
          }

          v94 += v750;
          v87 += 4 * v753;
          --v298;
        }

        while (v298);
        goto LABEL_831;
      case 6:
        v333 = v766;
        while (1)
        {
          v334 = v23;
          do
          {
            v335 = *v87;
            v336 = 1.0 - *v87;
            if (v336 >= 1.0)
            {
              *v94 = *v51;
              if (v57)
              {
                v338 = *v86;
              }

              else
              {
                v338 = 1.0;
              }
            }

            else
            {
              if (v336 <= 0.0)
              {
                goto LABEL_508;
              }

              *v94 = vmlaq_n_f32(*v94, *v51, v336);
              if (v57)
              {
                v337 = *v86;
              }

              else
              {
                v337 = 1.0;
              }

              v338 = v335 + (v337 * v336);
            }

            *v87 = v338;
LABEL_508:
            v339 = v51 + 16 * v711;
            if (v339 >= v89)
            {
              v340 = -v58;
            }

            else
            {
              v340 = 0;
            }

            v86 += 4 * v57 + 4 * v340;
            v51 = v339 + 16 * v340;
            v87 += 4 * v19;
            v94 += v711;
            --v334;
          }

          while (v334);
          if (v746)
          {
            v341 = v759 + 16 * v748;
            if (v341 >= v746)
            {
              v342 = -(v755 * v712);
            }

            else
            {
              v342 = 0;
            }

            v86 = &v757[4 * v755 + 4 * v342];
            if (v341 >= v746)
            {
              v343 = -(v748 * v712);
            }

            else
            {
              v343 = 0;
            }

            v51 = v341 + 16 * v343;
            v89 += 16 * v343 + 16 * v748;
            v757 += 4 * v755 + 4 * v342;
            v759 = v51;
          }

          else
          {
            v51 += 16 * v748;
            v86 += 4 * v755;
          }

          v94 += v750;
          v87 += 4 * v753;
          if (!--v333)
          {
LABEL_831:
            v735 = v89;
            v766 = 0;
LABEL_832:
            v51 = v714;
            v48 = v713;
LABEL_833:
            v85 = v757;
LABEL_834:
            if (!v48)
            {
              return 1;
            }

            v765 = 0;
            v764 = 0;
LABEL_836:
            v757 = v85;
            if (!shape_enum_clip_next(v48, &v765, &v764, v767, &v766))
            {
LABEL_1240:
              v82 = v48;
LABEL_1241:
              free(v82);
              return 1;
            }

            v713 = v48;
            v714 = v51;
            if (v746)
            {
              v37 = v715;
              v94 = (v708 + 16 * v715 * v764 + 16 * v765);
              v492 = (v764 + *(v22 + 60)) % v712;
              v88 = SLODWORD(v767[0]);
              v493 = (v765 + *(v22 + 56)) % v58;
              v494 = v51 + 16 * v748 * v492;
              v51 = v494 + 16 * v493;
              v89 = v494 + 16 * v58;
              if (v19)
              {
                v87 = (v710 + 4 * v709 * v764 + 4 * v765);
              }

              v495 = v753;
              if (v19)
              {
                v495 = v709 - SLODWORD(v767[0]);
              }

              v753 = v495;
              if (v763)
              {
                v57 = v763;
              }

              else
              {
                v57 = 0;
              }

              v496 = v757;
              if (v763)
              {
                v496 = &v18[4 * v755 * v492 + 4 * v493];
              }

              v757 = v496;
              v759 = v494 + 16 * v493;
              if (v763)
              {
                v86 = &v18[4 * v755 * v492 + 4 * v493];
              }

              LODWORD(v23) = v767[0];
              v703 = (v764 + *(v22 + 60)) % v712;
              v704 = (v765 + *(v22 + 56)) % v58;
            }

            else
            {
              v497 = v765 * v711;
              LODWORD(v23) = v767[0];
              v498 = LODWORD(v767[0]) * v711;
              v37 = v715;
              v94 = (v708 + 16 * v715 * v764 + 16 * v765 * v711);
              v88 = LODWORD(v767[0]) * v711;
              v51 += 16 * v764 * v58 + 16 * v765 * v711;
              v746 = 0;
              v748 = v58 - LODWORD(v767[0]) * v711;
              if (v19)
              {
                v87 = (v710 + 4 * v709 * v764 + 4 * v497);
              }

              v499 = v753;
              if (v19)
              {
                v499 = v709 - v498;
              }

              v500 = &v18[4 * v764 * v712 + 4 * v497];
              v501 = v712 - v498;
              v57 = v763;
              if (v763)
              {
                v86 = v500;
              }

              v502 = v755;
              if (v763)
              {
                v502 = v501;
              }

              v753 = v499;
              v755 = v502;
              v89 = v735;
            }

            goto LABEL_65;
          }
        }

      case 7:
        if (v19)
        {
          v260 = v766;
          while (1)
          {
            v261 = v23;
            do
            {
              v262 = *v86;
              if (*v86 <= 0.0)
              {
                v94->i64[0] = 0;
                v94->i64[1] = 0;
                v263 = 0.0;
              }

              else
              {
                if (v262 >= 1.0)
                {
                  goto LABEL_364;
                }

                *v94 = vmulq_n_f32(*v94, v262);
                v263 = v262 * *v87;
              }

              *v87 = v263;
LABEL_364:
              v264 = v51 + 16 * v711;
              if (v264 >= v89)
              {
                v265 = -v58;
              }

              else
              {
                v265 = 0;
              }

              v86 += 4 * v57 + 4 * v265;
              v51 = v264 + 16 * v265;
              v87 += 4 * v19;
              v94 += v711;
              --v261;
            }

            while (v261);
            if (v746)
            {
              v266 = v759 + 16 * v748;
              if (v266 >= v746)
              {
                v267 = -(v755 * v712);
              }

              else
              {
                v267 = 0;
              }

              v86 = &v757[4 * v755 + 4 * v267];
              if (v266 >= v746)
              {
                v268 = -(v748 * v712);
              }

              else
              {
                v268 = 0;
              }

              v51 = v266 + 16 * v268;
              v89 += 16 * v268 + 16 * v748;
              v757 += 4 * v755 + 4 * v267;
              v759 = v51;
            }

            else
            {
              v51 += 16 * v748;
              v86 += 4 * v755;
            }

            v94 += v750;
            v87 += 4 * v753;
            if (!--v260)
            {
              goto LABEL_831;
            }
          }
        }

        v467 = v766;
        v85 = v757;
        do
        {
          v468 = v23;
          do
          {
            v469 = *v86;
            if (*v86 <= 0.0)
            {
              v94->i64[0] = 0;
              v94->i64[1] = 0;
            }

            else if (v469 < 1.0)
            {
              *v94 = vmulq_n_f32(*v94, v469);
            }

            v470 = v51 + 16 * v711;
            if (v470 >= v89)
            {
              v471 = -v58;
            }

            else
            {
              v471 = 0;
            }

            v86 += 4 * v57 + 4 * v471;
            v51 = v470 + 16 * v471;
            v94 += v711;
            --v468;
          }

          while (v468);
          if (v746)
          {
            v472 = v759 + 16 * v748;
            if (v472 >= v746)
            {
              v473 = -(v755 * v712);
            }

            else
            {
              v473 = 0;
            }

            v85 += 4 * v755 + 4 * v473;
            if (v472 >= v746)
            {
              v474 = -(v748 * v712);
            }

            else
            {
              v474 = 0;
            }

            v51 = v472 + 16 * v474;
            v89 += 16 * v474 + 16 * v748;
            v86 = v85;
            v759 = v51;
          }

          else
          {
            v51 += 16 * v748;
            v86 += 4 * v755;
          }

          v94 += v750;
          v87 += 4 * v753;
          --v467;
        }

        while (v467);
        goto LABEL_899;
      case 8:
        if (!v19)
        {
          v475 = v766;
          v85 = v757;
          do
          {
            v476 = v23;
            do
            {
              v477 = 1.0 - *v86;
              if (v477 <= 0.0)
              {
                v94->i64[0] = 0;
                v94->i64[1] = 0;
              }

              else if (v477 < 1.0)
              {
                *v94 = vmulq_n_f32(*v94, v477);
              }

              v478 = v51 + 16 * v711;
              if (v478 >= v89)
              {
                v479 = -v58;
              }

              else
              {
                v479 = 0;
              }

              v86 += 4 * v57 + 4 * v479;
              v51 = v478 + 16 * v479;
              v94 += v711;
              --v476;
            }

            while (v476);
            if (v746)
            {
              v480 = v759 + 16 * v748;
              if (v480 >= v746)
              {
                v481 = -(v755 * v712);
              }

              else
              {
                v481 = 0;
              }

              v85 += 4 * v755 + 4 * v481;
              if (v480 >= v746)
              {
                v482 = -(v748 * v712);
              }

              else
              {
                v482 = 0;
              }

              v51 = v480 + 16 * v482;
              v89 += 16 * v482 + 16 * v748;
              v86 = v85;
              v759 = v51;
            }

            else
            {
              v51 += 16 * v748;
              v86 += 4 * v755;
            }

            v94 += v750;
            v87 += 4 * v753;
            --v475;
          }

          while (v475);
LABEL_899:
          v735 = v89;
          v766 = 0;
          v48 = v713;
          v51 = v714;
          goto LABEL_834;
        }

        v369 = v766;
LABEL_565:
        v370 = v23;
        while (1)
        {
          v371 = 1.0 - *v86;
          if (v371 <= 0.0)
          {
            break;
          }

          if (v371 < 1.0)
          {
            *v94 = vmulq_n_f32(*v94, v371);
            v372 = v371 * *v87;
LABEL_570:
            *v87 = v372;
          }

          v373 = v51 + 16 * v711;
          if (v373 >= v89)
          {
            v374 = -v58;
          }

          else
          {
            v374 = 0;
          }

          v86 += 4 * v57 + 4 * v374;
          v51 = v373 + 16 * v374;
          v87 += 4 * v19;
          v94 += v711;
          if (!--v370)
          {
            if (v746)
            {
              v375 = v759 + 16 * v748;
              if (v375 >= v746)
              {
                v376 = -(v755 * v712);
              }

              else
              {
                v376 = 0;
              }

              v86 = &v757[4 * v755 + 4 * v376];
              if (v375 >= v746)
              {
                v377 = -(v748 * v712);
              }

              else
              {
                v377 = 0;
              }

              v51 = v375 + 16 * v377;
              v89 += 16 * v377 + 16 * v748;
              v757 += 4 * v755 + 4 * v376;
              v759 = v51;
            }

            else
            {
              v51 += 16 * v748;
              v86 += 4 * v755;
            }

            v94 += v750;
            v87 += 4 * v753;
            if (!--v369)
            {
              goto LABEL_831;
            }

            goto LABEL_565;
          }
        }

        v94->i64[0] = 0;
        v94->i64[1] = 0;
        v372 = 0.0;
        goto LABEL_570;
      case 9:
        v186 = v766;
        do
        {
          v187 = v23;
          do
          {
            v188 = *v87;
            v189 = *v86;
            v190 = 1.0 - *v87;
            *v94 = vmlaq_n_f32(vmulq_n_f32(*v94, *v86), *v51, v190);
            *v87 = (v188 * v189) + (v189 * v190);
            v191 = v51 + 16 * v711;
            if (v191 >= v89)
            {
              v192 = -v58;
            }

            else
            {
              v192 = 0;
            }

            v86 += 4 * v57 + 4 * v192;
            v51 = v191 + 16 * v192;
            v87 += 4 * v19;
            v94 += v711;
            --v187;
          }

          while (v187);
          if (v746)
          {
            v193 = v759 + 16 * v748;
            if (v193 >= v746)
            {
              v194 = -(v755 * v712);
            }

            else
            {
              v194 = 0;
            }

            v86 = &v757[4 * v755 + 4 * v194];
            if (v193 >= v746)
            {
              v195 = -(v748 * v712);
            }

            else
            {
              v195 = 0;
            }

            v51 = v193 + 16 * v195;
            v89 += 16 * v195 + 16 * v748;
            v757 += 4 * v755 + 4 * v194;
            v759 = v51;
          }

          else
          {
            v51 += 16 * v748;
            v86 += 4 * v755;
          }

          v94 += v750;
          v87 += 4 * v753;
          --v186;
        }

        while (v186);
        goto LABEL_831;
      case 10:
        v358 = v766;
        do
        {
          v359 = v23;
          do
          {
            v360 = *v87;
            v361 = *v86;
            v362 = 1.0 - *v87;
            v363 = 1.0 - *v86;
            *v94 = vmlaq_n_f32(vmulq_n_f32(*v94, v363), *v51, v362);
            *v87 = (v360 * v363) + (v361 * v362);
            v364 = v51 + 16 * v711;
            if (v364 >= v89)
            {
              v365 = -v58;
            }

            else
            {
              v365 = 0;
            }

            v86 += 4 * v57 + 4 * v365;
            v51 = v364 + 16 * v365;
            v87 += 4 * v19;
            v94 += v711;
            --v359;
          }

          while (v359);
          if (v746)
          {
            v366 = v759 + 16 * v748;
            if (v366 >= v746)
            {
              v367 = -(v755 * v712);
            }

            else
            {
              v367 = 0;
            }

            v86 = &v757[4 * v755 + 4 * v367];
            if (v366 >= v746)
            {
              v368 = -(v748 * v712);
            }

            else
            {
              v368 = 0;
            }

            v51 = v366 + 16 * v368;
            v89 += 16 * v368 + 16 * v748;
            v757 += 4 * v755 + 4 * v367;
            v759 = v51;
          }

          else
          {
            v51 += 16 * v748;
            v86 += 4 * v755;
          }

          v94 += v750;
          v87 += 4 * v753;
          --v358;
        }

        while (v358);
        goto LABEL_831;
      case 11:
        v143 = 16 * v711;
        if (v19)
        {
          v144 = v766;
          do
          {
            v145 = v23;
            do
            {
              v146 = 1.0;
              v147 = 1.0;
              if (v57)
              {
                v147 = *v86;
              }

              v148 = *v87;
              v149 = *v87 + v147;
              if (v149 > 1.0)
              {
                v149 = 1.0;
              }

              if (v57)
              {
                v146 = *v86;
              }

              v150 = v94->f32[1];
              v151 = *(v51 + 4);
              v94->f32[0] = v149 - ((v148 - v94->f32[0]) + (v147 - *v51));
              v152 = 1.0;
              v153 = 1.0;
              if (v57)
              {
                v153 = *v86;
              }

              v154 = (v148 - v150) + (v146 - v151);
              v155 = *v87;
              v156 = v94->f32[2];
              v157 = *(v51 + 8);
              v94->f32[1] = v149 - v154;
              if (v57)
              {
                v152 = *v86;
              }

              v158 = (v155 - v156) + (v153 - v157);
              v159 = (*v87 - v94->f32[3]) + (v152 - *(v51 + 12));
              v94->f32[2] = v149 - v158;
              *v87 = v149;
              v94->f32[3] = v149 - v159;
              v160 = v51 + 16 * v711;
              if (v160 >= v89)
              {
                v161 = -v58;
              }

              else
              {
                v161 = 0;
              }

              v86 += 4 * v57 + 4 * v161;
              v51 = v160 + 16 * v161;
              v87 += 4 * v19;
              v94 = (v94 + v143);
              --v145;
            }

            while (v145);
            if (v746)
            {
              v162 = v759 + 16 * v748;
              if (v162 >= v746)
              {
                v163 = -(v755 * v712);
              }

              else
              {
                v163 = 0;
              }

              v86 = &v757[4 * v755 + 4 * v163];
              if (v162 >= v746)
              {
                v164 = -(v748 * v712);
              }

              else
              {
                v164 = 0;
              }

              v51 = v162 + 16 * v164;
              v89 += 16 * v164 + 16 * v748;
              v757 += 4 * v755 + 4 * v163;
              v759 = v51;
            }

            else
            {
              v51 += 16 * v748;
              v86 += 4 * v755;
            }

            v94 += v750;
            v87 += 4 * v753;
            --v144;
          }

          while (v144);
        }

        else
        {
          v431 = v766;
          __asm { FMOV            V0.2S, #1.0 }

          do
          {
            v433 = v23;
            do
            {
              v12.i32[0] = 1.0;
              if (v57)
              {
                v12.i32[0] = *v86;
              }

              v434.f32[0] = 1.0 - v94->f32[0];
              v434.f32[1] = 1.0 - v94->f32[1];
              v435 = vsub_f32(_D0, vadd_f32(v434, vsub_f32(vdup_lane_s32(*v12.f32, 0), *v51)));
              *v94->f32 = v435;
              v435.i32[0] = 1.0;
              if (v57)
              {
                v435.i32[0] = *v86;
              }

              v436.f32[0] = 1.0 - v94->f32[2];
              v436.f32[1] = 1.0 - v94->f32[3];
              *v12.f32 = vsub_f32(vdup_lane_s32(v435, 0), *(v51 + 8));
              *&v94->u32[2] = vsub_f32(_D0, vadd_f32(v436, *v12.f32));
              v437 = v51 + 16 * v711;
              if (v437 >= v89)
              {
                v438 = -v58;
              }

              else
              {
                v438 = 0;
              }

              v86 += 4 * v57 + 4 * v438;
              v51 = v437 + 16 * v438;
              v94 = (v94 + v143);
              --v433;
            }

            while (v433);
            if (v746)
            {
              v439 = v759 + 16 * v748;
              if (v439 >= v746)
              {
                v440 = -(v755 * v712);
              }

              else
              {
                v440 = 0;
              }

              v86 = &v757[4 * v755 + 4 * v440];
              if (v439 >= v746)
              {
                v441 = -(v748 * v712);
              }

              else
              {
                v441 = 0;
              }

              v51 = v439 + 16 * v441;
              v89 += 16 * v441 + 16 * v748;
              v757 += 4 * v755 + 4 * v440;
              v759 = v51;
            }

            else
            {
              v51 += 16 * v748;
              v86 += 4 * v755;
            }

            v94 += v750;
            v87 += 4 * v753;
            --v431;
          }

          while (v431);
        }

        goto LABEL_831;
      case 12:
        if (!v19)
        {
          v442 = v766;
          v85 = v757;
          do
          {
            v443 = v23;
            do
            {
              *v94 = vaddq_f32(*v94, *v51);
              v444 = v51 + 16 * v711;
              if (v444 >= v89)
              {
                v445 = -v58;
              }

              else
              {
                v445 = 0;
              }

              v86 += 4 * v57 + 4 * v445;
              v51 = v444 + 16 * v445;
              v94 += v711;
              --v443;
            }

            while (v443);
            if (v746)
            {
              v446 = v759 + 16 * v748;
              if (v446 >= v746)
              {
                v447 = -(v755 * v712);
              }

              else
              {
                v447 = 0;
              }

              v85 += 4 * v755 + 4 * v447;
              if (v446 >= v746)
              {
                v448 = -(v748 * v712);
              }

              else
              {
                v448 = 0;
              }

              v51 = v446 + 16 * v448;
              v89 += 16 * v448 + 16 * v748;
              v86 = v85;
              v759 = v51;
            }

            else
            {
              v51 += 16 * v748;
              v86 += 4 * v755;
            }

            v94 += v750;
            v87 += 4 * v753;
            --v442;
          }

          while (v442);
          goto LABEL_899;
        }

        v175 = v766;
        do
        {
          v176 = v23;
          do
          {
            if (v57)
            {
              v177 = *v86;
            }

            else
            {
              v177 = 1.0;
            }

            v178 = *v87 + v177;
            if (v178 > 1.0)
            {
              v178 = 1.0;
            }

            v179.i64[0] = v94->i64[0];
            v180.i64[0] = *v51;
            *v87 = v178;
            v180.i64[1] = *(v51 + 8);
            v179.i64[1] = v94->i64[1];
            *v94 = vaddq_f32(v179, v180);
            v181 = v51 + 16 * v711;
            if (v181 >= v89)
            {
              v182 = -v58;
            }

            else
            {
              v182 = 0;
            }

            v86 += 4 * v57 + 4 * v182;
            v51 = v181 + 16 * v182;
            v87 += 4 * v19;
            v94 += v711;
            --v176;
          }

          while (v176);
          if (v746)
          {
            v183 = v759 + 16 * v748;
            if (v183 >= v746)
            {
              v184 = -(v755 * v712);
            }

            else
            {
              v184 = 0;
            }

            v86 = &v757[4 * v755 + 4 * v184];
            if (v183 >= v746)
            {
              v185 = -(v748 * v712);
            }

            else
            {
              v185 = 0;
            }

            v51 = v183 + 16 * v185;
            v89 += 16 * v185 + 16 * v748;
            v757 += 4 * v755 + 4 * v184;
            v759 = v51;
          }

          else
          {
            v51 += 16 * v748;
            v86 += 4 * v755;
          }

          v94 += v750;
          v87 += 4 * v753;
          --v175;
        }

        while (v175);
        goto LABEL_831;
      case 13:
        v322 = v766;
        v9.i32[0] = 1.0;
        while (1)
        {
          v323 = v23;
          do
          {
            v11.i32[0] = 1.0;
            v10.i32[0] = 1.0;
            if (v57)
            {
              v10.i32[0] = *v86;
              if (*v86 <= 0.0)
              {
                goto LABEL_481;
              }
            }

            if (v19)
            {
              v11.i32[0] = *v87;
              if (*v87 <= 0.0)
              {
                v11 = *v51;
                *v94 = *v51;
LABEL_480:
                *v87 = v10.i32[0];
                goto LABEL_481;
              }
            }

            v324 = vsubq_f32(vdupq_lane_s32(*v11.f32, 0), *v94);
            v325 = vsubq_f32(vdupq_lane_s32(*v10.f32, 0), *v51);
            v326 = vmulq_f32(v324, v325);
            v327 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v10, v9)), 0), vmlaq_n_f32(v326, v324, 1.0 - v10.f32[0]), v326);
            v10.f32[0] = (v11.f32[0] + v10.f32[0]) - (v11.f32[0] * v10.f32[0]);
            v11 = vsubq_f32(vdupq_lane_s32(*v10.f32, 0), vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v11, v9)), 0), vmlaq_n_f32(v327, v325, 1.0 - v11.f32[0]), v327));
            *v94 = v11;
            if (v19)
            {
              goto LABEL_480;
            }

LABEL_481:
            v328 = v51 + 16 * v711;
            if (v328 >= v89)
            {
              v329 = -v58;
            }

            else
            {
              v329 = 0;
            }

            v86 += 4 * v57 + 4 * v329;
            v51 = v328 + 16 * v329;
            v87 += 4 * v19;
            v94 += v711;
            --v323;
          }

          while (v323);
          if (v746)
          {
            v330 = v759 + 16 * v748;
            if (v330 >= v746)
            {
              v331 = -(v755 * v712);
            }

            else
            {
              v331 = 0;
            }

            v86 = &v757[4 * v755 + 4 * v331];
            if (v330 >= v746)
            {
              v332 = -(v748 * v712);
            }

            else
            {
              v332 = 0;
            }

            v51 = v330 + 16 * v332;
            v89 += 16 * v332 + 16 * v748;
            v757 += 4 * v755 + 4 * v331;
            v759 = v51;
          }

          else
          {
            v51 += 16 * v748;
            v86 += 4 * v755;
          }

          v94 += v750;
          v87 += 4 * v753;
          if (!--v322)
          {
            goto LABEL_831;
          }
        }

      case 14:
        v129 = v766;
        __asm { FMOV            V0.4S, #1.0 }

        while (1)
        {
          v135 = v23;
          do
          {
            v11.i32[0] = 1.0;
            v10.i32[0] = 1.0;
            if (v57)
            {
              v10.i32[0] = *v86;
              if (*v86 <= 0.0)
              {
                goto LABEL_131;
              }
            }

            if (v19)
            {
              v11.i32[0] = *v87;
              if (*v87 <= 0.0)
              {
                v11 = *v51;
                *v94 = *v51;
LABEL_130:
                *v87 = v10.i32[0];
                goto LABEL_131;
              }
            }

            v136 = vdupq_lane_s32(*v10.f32, 0);
            v10.f32[0] = (v10.f32[0] + v11.f32[0]) - (v11.f32[0] * v10.f32[0]);
            v137 = vsubq_f32(vdupq_lane_s32(*v11.f32, 0), *v94);
            v11 = vsubq_f32(vdupq_lane_s32(*v10.f32, 0), vmlaq_f32(v137, vsubq_f32(_Q0, v137), vsubq_f32(v136, *v51)));
            *v94 = v11;
            if (v19)
            {
              goto LABEL_130;
            }

LABEL_131:
            v138 = v51 + 16 * v711;
            if (v138 >= v89)
            {
              v139 = -v58;
            }

            else
            {
              v139 = 0;
            }

            v86 += 4 * v57 + 4 * v139;
            v51 = v138 + 16 * v139;
            v87 += 4 * v19;
            v94 += v711;
            --v135;
          }

          while (v135);
          if (v746)
          {
            v140 = v759 + 16 * v748;
            if (v140 >= v746)
            {
              v141 = -(v755 * v712);
            }

            else
            {
              v141 = 0;
            }

            v86 = &v757[4 * v755 + 4 * v141];
            if (v140 >= v746)
            {
              v142 = -(v748 * v712);
            }

            else
            {
              v142 = 0;
            }

            v51 = v140 + 16 * v142;
            v89 += 16 * v142 + 16 * v748;
            v757 += 4 * v755 + 4 * v141;
            v759 = v51;
          }

          else
          {
            v51 += 16 * v748;
            v86 += 4 * v755;
          }

          v94 += v750;
          v87 += 4 * v753;
          if (!--v129)
          {
            goto LABEL_831;
          }
        }

      case 15:
        v706 = v18;
        v234 = 0;
        v235 = v57;
        v236 = v766;
        v237 = 4 * v19;
        v238 = 16 * v711;
        v702 = v58;
        v239 = -v58;
        v729 = v237;
        v720 = v239;
        do
        {
          v739 = v236;
          do
          {
            v240 = 1.0;
            v14.i32[0] = 1.0;
            if (!v57 || (v14.i32[0] = *v86, *v86 > 0.0))
            {
              if (v19 && (v240 = *v87, *v87 <= 0.0))
              {
                *v94 = *v51;
                *v87 = v14.i32[0];
              }

              else
              {
                v241 = v234;
                v242 = v89;
                v771 = 0uLL;
                v772 = 0;
                LODWORD(v15) = *v51;
                LODWORD(v16) = *(v51 + 12);
                PDAoverlayPDA(v771.f32, v94->f32[0], v94->f32[1], v94->f32[2], v94->f32[3], v240, *v14.i64, v15, v16, *v51, COERCE_FLOAT(*(v51 + 4)), COERCE_FLOAT(HIDWORD(*(v51 + 4))), *&v16, v14.f32[0]);
                v19 = v761;
                *v94 = v771;
                if (v761)
                {
                  *v87 = v772;
                }

                LODWORD(v57) = v763;
                v89 = v242;
                v234 = v241;
                v236 = v739;
                v238 = 16 * v711;
                v237 = v729;
                v239 = v720;
              }
            }

            v243 = v51 + 16 * v711;
            if (v243 >= v89)
            {
              v244 = v239;
            }

            else
            {
              v244 = v234;
            }

            v86 += 4 * v235 + 4 * v244;
            v51 = v243 + 16 * v244;
            v87 += v237;
            v94 = (v94 + v238);
            LODWORD(v23) = v23 - 1;
          }

          while (v23);
          if (v746)
          {
            v245 = v759 + 16 * v748;
            v246 = -(v755 * v712);
            if (v245 < v746)
            {
              v246 = 0;
            }

            v86 = &v757[4 * v755 + 4 * v246];
            v247 = -(v748 * v712);
            if (v245 < v746)
            {
              v247 = 0;
            }

            v51 = v245 + 16 * v247;
            v89 += 16 * v247 + 16 * v748;
            v757 += 4 * v755 + 4 * v246;
            v759 = v51;
          }

          else
          {
            v51 += 16 * v748;
            v86 += 4 * v755;
          }

          LODWORD(v23) = v716;
          v94 += v750;
          v87 += 4 * v753;
          --v236;
        }

        while (v236);
        goto LABEL_682;
      case 16:
        v116 = v766;
        v9.i32[0] = 1.0;
        while (1)
        {
          v117 = v23;
          do
          {
            v11.i32[0] = 1.0;
            v10.i32[0] = 1.0;
            if (v57)
            {
              v10.i32[0] = *v86;
              if (*v86 <= 0.0)
              {
                goto LABEL_106;
              }
            }

            if (v19)
            {
              v11.i32[0] = *v87;
              if (*v87 <= 0.0)
              {
                v11 = *v51;
                *v94 = *v51;
LABEL_105:
                *v87 = v10.i32[0];
                goto LABEL_106;
              }
            }

            v118 = vsubq_f32(vdupq_lane_s32(*v11.f32, 0), *v94);
            v119 = vsubq_f32(vdupq_lane_s32(*v10.f32, 0), *v51);
            v120 = vmulq_n_f32(v118, v10.f32[0]);
            v121 = vmulq_n_f32(v119, v11.f32[0]);
            v122 = vbslq_s8(vcgtq_f32(v120, v121), v121, v120);
            v123 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v10, v9)), 0), vmlaq_n_f32(v122, v118, 1.0 - v10.f32[0]), v122);
            v10.f32[0] = (v11.f32[0] + v10.f32[0]) - (v11.f32[0] * v10.f32[0]);
            v11 = vsubq_f32(vdupq_lane_s32(*v10.f32, 0), vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v11, v9)), 0), vmlaq_n_f32(v123, v119, 1.0 - v11.f32[0]), v123));
            *v94 = v11;
            if (v19)
            {
              goto LABEL_105;
            }

LABEL_106:
            v124 = v51 + 16 * v711;
            if (v124 >= v89)
            {
              v125 = -v58;
            }

            else
            {
              v125 = 0;
            }

            v86 += 4 * v57 + 4 * v125;
            v51 = v124 + 16 * v125;
            v87 += 4 * v19;
            v94 += v711;
            --v117;
          }

          while (v117);
          if (v746)
          {
            v126 = v759 + 16 * v748;
            if (v126 >= v746)
            {
              v127 = -(v755 * v712);
            }

            else
            {
              v127 = 0;
            }

            v86 = &v757[4 * v755 + 4 * v127];
            if (v126 >= v746)
            {
              v128 = -(v748 * v712);
            }

            else
            {
              v128 = 0;
            }

            v51 = v126 + 16 * v128;
            v89 += 16 * v128 + 16 * v748;
            v757 += 4 * v755 + 4 * v127;
            v759 = v51;
          }

          else
          {
            v51 += 16 * v748;
            v86 += 4 * v755;
          }

          v94 += v750;
          v87 += 4 * v753;
          if (!--v116)
          {
            goto LABEL_831;
          }
        }

      case 17:
        v272 = v766;
        v9.i32[0] = 1.0;
        while (1)
        {
          v273 = v23;
          do
          {
            v11.i32[0] = 1.0;
            v10.i32[0] = 1.0;
            if (v57)
            {
              v10.i32[0] = *v86;
              if (*v86 <= 0.0)
              {
                goto LABEL_393;
              }
            }

            if (v19)
            {
              v11.i32[0] = *v87;
              if (*v87 <= 0.0)
              {
                v11 = *v51;
                *v94 = *v51;
LABEL_392:
                *v87 = v10.i32[0];
                goto LABEL_393;
              }
            }

            v274 = vsubq_f32(vdupq_lane_s32(*v11.f32, 0), *v94);
            v275 = vsubq_f32(vdupq_lane_s32(*v10.f32, 0), *v51);
            v276 = vmulq_n_f32(v274, v10.f32[0]);
            v277 = vmulq_n_f32(v275, v11.f32[0]);
            v278 = vbslq_s8(vcgtq_f32(v277, v276), v277, v276);
            v279 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v10, v9)), 0), vmlaq_n_f32(v278, v274, 1.0 - v10.f32[0]), v278);
            v10.f32[0] = (v11.f32[0] + v10.f32[0]) - (v11.f32[0] * v10.f32[0]);
            v11 = vsubq_f32(vdupq_lane_s32(*v10.f32, 0), vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v11, v9)), 0), vmlaq_n_f32(v279, v275, 1.0 - v11.f32[0]), v279));
            *v94 = v11;
            if (v19)
            {
              goto LABEL_392;
            }

LABEL_393:
            v280 = v51 + 16 * v711;
            if (v280 >= v89)
            {
              v281 = -v58;
            }

            else
            {
              v281 = 0;
            }

            v86 += 4 * v57 + 4 * v281;
            v51 = v280 + 16 * v281;
            v87 += 4 * v19;
            v94 += v711;
            --v273;
          }

          while (v273);
          if (v746)
          {
            v282 = v759 + 16 * v748;
            if (v282 >= v746)
            {
              v283 = -(v755 * v712);
            }

            else
            {
              v283 = 0;
            }

            v86 = &v757[4 * v755 + 4 * v283];
            if (v282 >= v746)
            {
              v284 = -(v748 * v712);
            }

            else
            {
              v284 = 0;
            }

            v51 = v282 + 16 * v284;
            v89 += 16 * v284 + 16 * v748;
            v757 += 4 * v755 + 4 * v283;
            v759 = v51;
          }

          else
          {
            v51 += 16 * v748;
            v86 += 4 * v755;
          }

          v94 += v750;
          v87 += 4 * v753;
          if (!--v272)
          {
            goto LABEL_831;
          }
        }

      case 18:
        v706 = v18;
        v344 = 0;
        v345 = v57;
        v346 = v766;
        v347 = 4 * v19;
        v348 = 16 * v711;
        v702 = v58;
        v349 = -v58;
        v732 = v347;
        v723 = v349;
        do
        {
          v742 = v346;
          do
          {
            v350 = 1.0;
            v14.i32[0] = 1.0;
            if (!v57 || (v14.i32[0] = *v86, *v86 > 0.0))
            {
              if (v19 && (v350 = *v87, *v87 <= 0.0))
              {
                *v94 = *v51;
                *v87 = v14.i32[0];
              }

              else
              {
                v351 = v344;
                v352 = v89;
                v771 = 0uLL;
                v772 = 0;
                LODWORD(v15) = *v51;
                LODWORD(v16) = *(v51 + 12);
                PDAcolordodgePDA(v771.f32, v94->f32[0], v94->f32[1], v94->f32[2], v94->f32[3], v350, *v14.i64, v15, v16, *v51, COERCE_FLOAT(*(v51 + 4)), COERCE_FLOAT(HIDWORD(*(v51 + 4))), *&v16, v14.f32[0]);
                v19 = v761;
                *v94 = v771;
                if (v761)
                {
                  *v87 = v772;
                }

                LODWORD(v57) = v763;
                v89 = v352;
                v344 = v351;
                v346 = v742;
                v348 = 16 * v711;
                v347 = v732;
                v349 = v723;
              }
            }

            v353 = v51 + 16 * v711;
            if (v353 >= v89)
            {
              v354 = v349;
            }

            else
            {
              v354 = v344;
            }

            v86 += 4 * v345 + 4 * v354;
            v51 = v353 + 16 * v354;
            v87 += v347;
            v94 = (v94 + v348);
            LODWORD(v23) = v23 - 1;
          }

          while (v23);
          if (v746)
          {
            v355 = v759 + 16 * v748;
            v356 = -(v755 * v712);
            if (v355 < v746)
            {
              v356 = 0;
            }

            v86 = &v757[4 * v755 + 4 * v356];
            v357 = -(v748 * v712);
            if (v355 < v746)
            {
              v357 = 0;
            }

            v51 = v355 + 16 * v357;
            v89 += 16 * v357 + 16 * v748;
            v757 += 4 * v755 + 4 * v356;
            v759 = v51;
          }

          else
          {
            v51 += 16 * v748;
            v86 += 4 * v755;
          }

          LODWORD(v23) = v716;
          v94 += v750;
          v87 += 4 * v753;
          --v346;
        }

        while (v346);
        goto LABEL_682;
      case 19:
        v706 = v18;
        v392 = 0;
        v393 = v57;
        v394 = v766;
        v395 = 4 * v19;
        v396 = 16 * v711;
        v702 = v58;
        v397 = -v58;
        v733 = v395;
        v724 = v397;
        do
        {
          v743 = v394;
          do
          {
            v398 = 1.0;
            v14.i32[0] = 1.0;
            if (!v57 || (v14.i32[0] = *v86, *v86 > 0.0))
            {
              if (v19 && (v398 = *v87, *v87 <= 0.0))
              {
                *v94 = *v51;
                *v87 = v14.i32[0];
              }

              else
              {
                v399 = v392;
                v400 = v89;
                v771 = 0uLL;
                v772 = 0;
                LODWORD(v15) = *v51;
                LODWORD(v16) = *(v51 + 12);
                PDAcolorburnPDA(v771.f32, v94->f32[0], v94->f32[1], v94->f32[2], v94->f32[3], v398, *v14.i64, v15, v16, *v51, COERCE_FLOAT(*(v51 + 4)), COERCE_FLOAT(HIDWORD(*(v51 + 4))), *&v16, v14.f32[0]);
                v19 = v761;
                *v94 = v771;
                if (v761)
                {
                  *v87 = v772;
                }

                LODWORD(v57) = v763;
                v89 = v400;
                v392 = v399;
                v394 = v743;
                v396 = 16 * v711;
                v395 = v733;
                v397 = v724;
              }
            }

            v401 = v51 + 16 * v711;
            if (v401 >= v89)
            {
              v402 = v397;
            }

            else
            {
              v402 = v392;
            }

            v86 += 4 * v393 + 4 * v402;
            v51 = v401 + 16 * v402;
            v87 += v395;
            v94 = (v94 + v396);
            LODWORD(v23) = v23 - 1;
          }

          while (v23);
          if (v746)
          {
            v403 = v759 + 16 * v748;
            v404 = -(v755 * v712);
            if (v403 < v746)
            {
              v404 = 0;
            }

            v86 = &v757[4 * v755 + 4 * v404];
            v405 = -(v748 * v712);
            if (v403 < v746)
            {
              v405 = 0;
            }

            v51 = v403 + 16 * v405;
            v89 += 16 * v405 + 16 * v748;
            v757 += 4 * v755 + 4 * v404;
            v759 = v51;
          }

          else
          {
            v51 += 16 * v748;
            v86 += 4 * v755;
          }

          LODWORD(v23) = v716;
          v94 += v750;
          v87 += 4 * v753;
          --v394;
        }

        while (v394);
        goto LABEL_682;
      case 20:
        v706 = v18;
        v285 = 0;
        v286 = v57;
        v287 = v766;
        v288 = 4 * v19;
        v289 = 16 * v711;
        v702 = v58;
        v290 = -v58;
        v730 = v288;
        v721 = v290;
        do
        {
          v740 = v287;
          do
          {
            v13.i32[0] = 1.0;
            v14.i32[0] = 1.0;
            if (!v57 || (v14.i32[0] = *v86, *v86 > 0.0))
            {
              if (v19 && (v13.i32[0] = *v87, *v87 <= 0.0))
              {
                v9 = *v51;
                *v94 = *v51;
                *v87 = v14.i32[0];
              }

              else
              {
                v291 = v285;
                v292 = v89;
                v771 = 0uLL;
                v772 = 0;
                v9.i32[0] = v94->i32[0];
                LODWORD(v15) = *v51;
                LODWORD(v16) = *(v51 + 12);
                v700 = *(v51 + 4);
                v699 = *v51;
                PDAsoftlightPDA(&v771, *v9.f32, v94->f32[1], v94->f32[2], v94->f32[3], *v13.i64, *v14.f32, v15, v16, v290, v27, v4, v37, v89, v52, v53, *(&v700 - 4), *(&v700 + 1), *&v16, v14.f32[0]);
                v9.i32[1] = v771.i32[1];
                v19 = v761;
                *v94 = v771;
                if (v761)
                {
                  *v87 = v772;
                }

                LODWORD(v57) = v763;
                v89 = v292;
                v285 = v291;
                v287 = v740;
                v289 = 16 * v711;
                v288 = v730;
                v290 = v721;
              }
            }

            v293 = v51 + 16 * v711;
            if (v293 >= v89)
            {
              v294 = v290;
            }

            else
            {
              v294 = v285;
            }

            v86 += 4 * v286 + 4 * v294;
            v51 = v293 + 16 * v294;
            v87 += v288;
            v94 = (v94 + v289);
            LODWORD(v23) = v23 - 1;
          }

          while (v23);
          if (v746)
          {
            v295 = v759 + 16 * v748;
            v296 = -(v755 * v712);
            if (v295 < v746)
            {
              v296 = 0;
            }

            v86 = &v757[4 * v755 + 4 * v296];
            v297 = -(v748 * v712);
            if (v295 < v746)
            {
              v297 = 0;
            }

            v51 = v295 + 16 * v297;
            v89 += 16 * v297 + 16 * v748;
            v757 += 4 * v755 + 4 * v296;
            v759 = v51;
          }

          else
          {
            v51 += 16 * v748;
            v86 += 4 * v755;
          }

          LODWORD(v23) = v716;
          v94 += v750;
          v87 += 4 * v753;
          --v287;
        }

        while (v287);
        goto LABEL_682;
      case 21:
        v706 = v18;
        v308 = 0;
        v309 = v57;
        v310 = v766;
        v311 = 4 * v19;
        v312 = 16 * v711;
        v702 = v58;
        v313 = -v58;
        v731 = v311;
        v722 = v313;
        do
        {
          v741 = v310;
          do
          {
            v314 = 1.0;
            v14.i32[0] = 1.0;
            if (!v57 || (v14.i32[0] = *v86, *v86 > 0.0))
            {
              if (v19 && (v314 = *v87, *v87 <= 0.0))
              {
                *v94 = *v51;
                *v87 = v14.i32[0];
              }

              else
              {
                v315 = v308;
                v316 = v89;
                v771 = 0uLL;
                v772 = 0;
                LODWORD(v15) = *v51;
                LODWORD(v16) = *(v51 + 12);
                PDAhardlightPDA(v771.f32, v94->f32[0], v94->f32[1], v94->f32[2], v94->f32[3], v314, *v14.i64, v15, v16, *v51, COERCE_FLOAT(*(v51 + 4)), COERCE_FLOAT(HIDWORD(*(v51 + 4))), *&v16, v14.f32[0]);
                v19 = v761;
                *v94 = v771;
                if (v761)
                {
                  *v87 = v772;
                }

                LODWORD(v57) = v763;
                v89 = v316;
                v308 = v315;
                v310 = v741;
                v312 = 16 * v711;
                v311 = v731;
                v313 = v722;
              }
            }

            v317 = v51 + 16 * v711;
            if (v317 >= v89)
            {
              v318 = v313;
            }

            else
            {
              v318 = v308;
            }

            v86 += 4 * v309 + 4 * v318;
            v51 = v317 + 16 * v318;
            v87 += v311;
            v94 = (v94 + v312);
            LODWORD(v23) = v23 - 1;
          }

          while (v23);
          if (v746)
          {
            v319 = v759 + 16 * v748;
            v320 = -(v755 * v712);
            if (v319 < v746)
            {
              v320 = 0;
            }

            v86 = &v757[4 * v755 + 4 * v320];
            v321 = -(v748 * v712);
            if (v319 < v746)
            {
              v321 = 0;
            }

            v51 = v319 + 16 * v321;
            v89 += 16 * v321 + 16 * v748;
            v757 += 4 * v755 + 4 * v320;
            v759 = v51;
          }

          else
          {
            v51 += 16 * v748;
            v86 += 4 * v755;
          }

          LODWORD(v23) = v716;
          v94 += v750;
          v87 += 4 * v753;
          --v310;
        }

        while (v310);
        goto LABEL_682;
      case 22:
        v378 = v766;
        while (1)
        {
          v379 = v23;
          do
          {
            v10.i32[0] = 1.0;
            v9.i32[0] = 1.0;
            if (v57)
            {
              v9.i32[0] = *v86;
              if (*v86 <= 0.0)
              {
                goto LABEL_596;
              }
            }

            if (v19)
            {
              v10.i32[0] = *v87;
              if (*v87 <= 0.0)
              {
                v10 = *v51;
                *v94 = *v51;
LABEL_595:
                *v87 = v9.i32[0];
                goto LABEL_596;
              }
            }

            v380 = vsubq_f32(vdupq_lane_s32(*v10.f32, 0), *v94);
            v381 = vdupq_lane_s32(*v9.f32, 0);
            v382 = vmulq_n_f32(v380, v9.f32[0]);
            v9.f32[0] = (v10.f32[0] + v9.f32[0]) - (v10.f32[0] * v9.f32[0]);
            v383 = vsubq_f32(v381, *v51);
            v384 = vmulq_n_f32(v383, v10.f32[0]);
            v385 = vsubq_f32(vaddq_f32(v380, v383), v382);
            v386 = vsubq_f32(v382, v384);
            v10 = vsubq_f32(vdupq_lane_s32(*v9.f32, 0), vaddq_f32(vsubq_f32(v385, v384), vbslq_s8(vcltzq_f32(v386), vnegq_f32(v386), v386)));
            *v94 = v10;
            if (v19)
            {
              goto LABEL_595;
            }

LABEL_596:
            v387 = v51 + 16 * v711;
            if (v387 >= v89)
            {
              v388 = -v58;
            }

            else
            {
              v388 = 0;
            }

            v86 += 4 * v57 + 4 * v388;
            v51 = v387 + 16 * v388;
            v87 += 4 * v19;
            v94 += v711;
            --v379;
          }

          while (v379);
          if (v746)
          {
            v389 = v759 + 16 * v748;
            if (v389 >= v746)
            {
              v390 = -(v755 * v712);
            }

            else
            {
              v390 = 0;
            }

            v86 = &v757[4 * v755 + 4 * v390];
            if (v389 >= v746)
            {
              v391 = -(v748 * v712);
            }

            else
            {
              v391 = 0;
            }

            v51 = v389 + 16 * v391;
            v89 += 16 * v391 + 16 * v748;
            v757 += 4 * v755 + 4 * v390;
            v759 = v51;
          }

          else
          {
            v51 += 16 * v748;
            v86 += 4 * v755;
          }

          v94 += v750;
          v87 += 4 * v753;
          if (!--v378)
          {
            goto LABEL_831;
          }
        }

      case 23:
        v406 = v766;
        v407.i64[0] = 0xC0000000C0000000;
        v407.i64[1] = 0xC0000000C0000000;
        break;
      case 24:
        v706 = v18;
        v210 = 0;
        v211 = v57;
        v212 = v766;
        v213 = 4 * v19;
        v214 = 16 * v711;
        v702 = v58;
        v215 = -v58;
        v728 = v213;
        v719 = v215;
        do
        {
          v738 = v212;
          do
          {
            v216 = 1.0;
            v14.i32[0] = 1.0;
            if (!v57 || (v14.i32[0] = *v86, *v86 > 0.0))
            {
              if (v19 && (v216 = *v87, *v87 <= 0.0))
              {
                *v94 = *v51;
                *v87 = v14.i32[0];
              }

              else
              {
                v217 = v210;
                v218 = v89;
                v771 = 0uLL;
                v772 = 0;
                LODWORD(v15) = *v51;
                LODWORD(v16) = *(v51 + 12);
                PDAhuePDA(v771.f32, v94->f32[0], v94->f32[1], v94->f32[2], v94->f32[3], v216, *v14.i64, v15, v16, *v51, COERCE_FLOAT(*(v51 + 4)), COERCE_FLOAT(HIDWORD(*(v51 + 4))), *&v16, v14.f32[0]);
                v19 = v761;
                *v94 = v771;
                if (v761)
                {
                  *v87 = v772;
                }

                LODWORD(v57) = v763;
                v89 = v218;
                v210 = v217;
                v212 = v738;
                v214 = 16 * v711;
                v213 = v728;
                v215 = v719;
              }
            }

            v219 = v51 + 16 * v711;
            if (v219 >= v89)
            {
              v220 = v215;
            }

            else
            {
              v220 = v210;
            }

            v86 += 4 * v211 + 4 * v220;
            v51 = v219 + 16 * v220;
            v87 += v213;
            v94 = (v94 + v214);
            LODWORD(v23) = v23 - 1;
          }

          while (v23);
          if (v746)
          {
            v221 = v759 + 16 * v748;
            v222 = -(v755 * v712);
            if (v221 < v746)
            {
              v222 = 0;
            }

            v86 = &v757[4 * v755 + 4 * v222];
            v223 = -(v748 * v712);
            if (v221 < v746)
            {
              v223 = 0;
            }

            v51 = v221 + 16 * v223;
            v89 += 16 * v223 + 16 * v748;
            v757 += 4 * v755 + 4 * v222;
            v759 = v51;
          }

          else
          {
            v51 += 16 * v748;
            v86 += 4 * v755;
          }

          LODWORD(v23) = v716;
          v94 += v750;
          v87 += 4 * v753;
          --v212;
        }

        while (v212);
        goto LABEL_682;
      case 25:
        v706 = v18;
        v196 = 0;
        v197 = v57;
        v198 = v766;
        v199 = 4 * v19;
        v200 = 16 * v711;
        v702 = v58;
        v201 = -v58;
        v727 = v199;
        v718 = v201;
        do
        {
          v737 = v198;
          do
          {
            v202 = 1.0;
            v14.i32[0] = 1.0;
            if (!v57 || (v14.i32[0] = *v86, *v86 > 0.0))
            {
              if (v19 && (v202 = *v87, *v87 <= 0.0))
              {
                *v94 = *v51;
                *v87 = v14.i32[0];
              }

              else
              {
                v203 = v196;
                v204 = v89;
                v771 = 0uLL;
                v772 = 0;
                LODWORD(v15) = *v51;
                LODWORD(v16) = *(v51 + 12);
                PDAsaturationPDA(v771.f32, v94->f32[0], v94->f32[1], v94->f32[2], v94->f32[3], v202, *v14.i64, v15, v16, *v51, COERCE_FLOAT(*(v51 + 4)), COERCE_FLOAT(HIDWORD(*(v51 + 4))), *&v16, v14.f32[0]);
                v19 = v761;
                *v94 = v771;
                if (v761)
                {
                  *v87 = v772;
                }

                LODWORD(v57) = v763;
                v89 = v204;
                v196 = v203;
                v198 = v737;
                v200 = 16 * v711;
                v199 = v727;
                v201 = v718;
              }
            }

            v205 = v51 + 16 * v711;
            if (v205 >= v89)
            {
              v206 = v201;
            }

            else
            {
              v206 = v196;
            }

            v86 += 4 * v197 + 4 * v206;
            v51 = v205 + 16 * v206;
            v87 += v199;
            v94 = (v94 + v200);
            LODWORD(v23) = v23 - 1;
          }

          while (v23);
          if (v746)
          {
            v207 = v759 + 16 * v748;
            v208 = -(v755 * v712);
            if (v207 < v746)
            {
              v208 = 0;
            }

            v86 = &v757[4 * v755 + 4 * v208];
            v209 = -(v748 * v712);
            if (v207 < v746)
            {
              v209 = 0;
            }

            v51 = v207 + 16 * v209;
            v89 += 16 * v209 + 16 * v748;
            v757 += 4 * v755 + 4 * v208;
            v759 = v51;
          }

          else
          {
            v51 += 16 * v748;
            v86 += 4 * v755;
          }

          LODWORD(v23) = v716;
          v94 += v750;
          v87 += 4 * v753;
          --v198;
        }

        while (v198);
        goto LABEL_682;
      case 26:
        v706 = v18;
        v417 = 0;
        v418 = v57;
        v419 = v766;
        v420 = 4 * v19;
        v421 = 16 * v711;
        v702 = v58;
        v422 = -v58;
        v734 = v420;
        v725 = v422;
        do
        {
          v744 = v419;
          do
          {
            v14.i32[0] = 1.0;
            v423 = 1.0;
            if (!v57 || (v423 = *v86, *v86 > 0.0))
            {
              if (v19 && (v14.i32[0] = *v87, *v87 <= 0.0))
              {
                *v94 = *v51;
                *v87 = v423;
              }

              else
              {
                v424 = v417;
                v425 = v89;
                v771 = 0uLL;
                v772 = 0;
                LODWORD(v15) = v94->i32[0];
                LODWORD(v16) = v94->i32[3];
                PDAluminosityPDA(v771.f32, *v51, *(v51 + 4), *(v51 + 8), *(v51 + 12), v423, *v14.i64, v15, v16, v94->f32[0], COERCE_FLOAT(*(v94->i64 + 4)), COERCE_FLOAT(HIDWORD(*(v94->i64 + 4))), *&v16, v14.f32[0]);
                v19 = v761;
                *v94 = v771;
                if (v761)
                {
                  *v87 = v772;
                }

                LODWORD(v57) = v763;
                v89 = v425;
                v417 = v424;
                v419 = v744;
                v421 = 16 * v711;
                v420 = v734;
                v422 = v725;
              }
            }

            v426 = v51 + 16 * v711;
            if (v426 >= v89)
            {
              v427 = v422;
            }

            else
            {
              v427 = v417;
            }

            v86 += 4 * v418 + 4 * v427;
            v51 = v426 + 16 * v427;
            v87 += v420;
            v94 = (v94 + v421);
            LODWORD(v23) = v23 - 1;
          }

          while (v23);
          if (v746)
          {
            v428 = v759 + 16 * v748;
            v429 = -(v755 * v712);
            if (v428 < v746)
            {
              v429 = 0;
            }

            v86 = &v757[4 * v755 + 4 * v429];
            v430 = -(v748 * v712);
            if (v428 < v746)
            {
              v430 = 0;
            }

            v51 = v428 + 16 * v430;
            v89 += 16 * v430 + 16 * v748;
            v757 += 4 * v755 + 4 * v429;
            v759 = v51;
          }

          else
          {
            v51 += 16 * v748;
            v86 += 4 * v755;
          }

          LODWORD(v23) = v716;
          v94 += v750;
          v87 += 4 * v753;
          --v419;
        }

        while (v419);
        goto LABEL_682;
      case 27:
        v706 = v18;
        v102 = 0;
        v103 = v57;
        v104 = v766;
        v105 = 4 * v19;
        v106 = 16 * v711;
        v702 = v58;
        v107 = -v58;
        v726 = v105;
        v717 = v107;
        do
        {
          v736 = v104;
          do
          {
            v108 = 1.0;
            v14.i32[0] = 1.0;
            if (!v57 || (v14.i32[0] = *v86, *v86 > 0.0))
            {
              if (v19 && (v108 = *v87, *v87 <= 0.0))
              {
                *v94 = *v51;
                *v87 = v14.i32[0];
              }

              else
              {
                v109 = v102;
                v110 = v89;
                v771 = 0uLL;
                v772 = 0;
                LODWORD(v15) = *v51;
                LODWORD(v16) = *(v51 + 12);
                PDAluminosityPDA(v771.f32, v94->f32[0], v94->f32[1], v94->f32[2], v94->f32[3], v108, *v14.i64, v15, v16, *v51, COERCE_FLOAT(*(v51 + 4)), COERCE_FLOAT(HIDWORD(*(v51 + 4))), *&v16, v14.f32[0]);
                v19 = v761;
                *v94 = v771;
                if (v761)
                {
                  *v87 = v772;
                }

                LODWORD(v57) = v763;
                v89 = v110;
                v102 = v109;
                v104 = v736;
                v106 = 16 * v711;
                v105 = v726;
                v107 = v717;
              }
            }

            v111 = v51 + 16 * v711;
            if (v111 >= v89)
            {
              v112 = v107;
            }

            else
            {
              v112 = v102;
            }

            v86 += 4 * v103 + 4 * v112;
            v51 = v111 + 16 * v112;
            v87 += v105;
            v94 = (v94 + v106);
            LODWORD(v23) = v23 - 1;
          }

          while (v23);
          if (v746)
          {
            v113 = v759 + 16 * v748;
            v114 = -(v755 * v712);
            if (v113 < v746)
            {
              v114 = 0;
            }

            v86 = &v757[4 * v755 + 4 * v114];
            v115 = -(v748 * v712);
            if (v113 < v746)
            {
              v115 = 0;
            }

            v51 = v113 + 16 * v115;
            v89 += 16 * v115 + 16 * v748;
            v757 += 4 * v755 + 4 * v114;
            v759 = v51;
          }

          else
          {
            v51 += 16 * v748;
            v86 += 4 * v755;
          }

          LODWORD(v23) = v716;
          v94 += v750;
          v87 += 4 * v753;
          --v104;
        }

        while (v104);
LABEL_682:
        v735 = v89;
        v766 = 0;
        LODWORD(v20) = v701;
        v58 = v702;
        v22 = v707;
        v18 = v706;
        goto LABEL_832;
      default:
        v735 = v89;
        goto LABEL_832;
    }

LABEL_635:
    v408 = v23;
    while (1)
    {
      v11.i32[0] = 1.0;
      v10.i32[0] = 1.0;
      if (!v57 || (v10.i32[0] = *v86, *v86 > 0.0))
      {
        if (v19 && (v11.i32[0] = *v87, *v87 <= 0.0))
        {
          v11 = *v51;
          *v94 = *v51;
        }

        else
        {
          v409 = vdupq_lane_s32(*v10.f32, 0);
          v10.f32[0] = (v11.f32[0] + v10.f32[0]) - (v11.f32[0] * v10.f32[0]);
          v410 = vsubq_f32(vdupq_lane_s32(*v11.f32, 0), *v94);
          v411 = vsubq_f32(v409, *v51);
          v11 = vsubq_f32(vdupq_lane_s32(*v10.f32, 0), vmlaq_f32(vaddq_f32(v410, v411), v407, vmulq_f32(v411, v410)));
          *v94 = v11;
          if (!v19)
          {
            goto LABEL_644;
          }
        }

        *v87 = v10.i32[0];
      }

LABEL_644:
      v412 = v51 + 16 * v711;
      if (v412 >= v89)
      {
        v413 = -v58;
      }

      else
      {
        v413 = 0;
      }

      v86 += 4 * v57 + 4 * v413;
      v51 = v412 + 16 * v413;
      v87 += 4 * v19;
      v94 += v711;
      if (!--v408)
      {
        if (v746)
        {
          v414 = v759 + 16 * v748;
          if (v414 >= v746)
          {
            v415 = -(v755 * v712);
          }

          else
          {
            v415 = 0;
          }

          v86 = &v757[4 * v755 + 4 * v415];
          if (v414 >= v746)
          {
            v416 = -(v748 * v712);
          }

          else
          {
            v416 = 0;
          }

          v51 = v414 + 16 * v416;
          v89 += 16 * v416 + 16 * v748;
          v757 += 4 * v755 + 4 * v415;
          v759 = v51;
        }

        else
        {
          v51 += 16 * v748;
          v86 += 4 * v755;
        }

        v94 += v750;
        v87 += 4 * v753;
        if (!--v406)
        {
          goto LABEL_831;
        }

        goto LABEL_635;
      }
    }
  }

  v28 = *(v3 + 128);
  if ((v28 | 8) == 8)
  {
    if ((*v3 & 0xFF00) == 0x400)
    {
      CMYKf_mark_constmask(v3, v20, *v9.i64, v10, v11, v12, *v13.i64, v14, v15, v16, v27, v4, v5, v6, v28, v8);
    }

    else
    {
      CMYKf_mark_pixelmask(v3, v20, *v9.i64, v10, v11, v12, *v13.i64, v14, v15, v16, v27, v4, v5, v6, v28, v8);
    }
  }

  else
  {
    v38 = *(v3 + 112);
    v39 = *(v3 + 116);
    v40 = (v38 + 15) & 0xFFFFFFF0;
    v41 = v40 * v39;
    if (v41 <= 4096)
    {
      v43 = &v771;
      v44 = v3;
    }

    else
    {
      v42 = malloc_type_malloc(v41, 0x100004077774924uLL);
      if (!v42)
      {
        return 1;
      }

      v43 = v42;
      v44 = v707;
      v27 = *(v707 + 136);
      LODWORD(v28) = *(v707 + 128);
    }

    CGSConvertBitsToMask(v27, *(v44 + 124), v43, v40, v38, v39, v28);
    v76 = *(v44 + 112);
    v767[6] = *(v44 + 96);
    v768 = v76;
    v77 = *(v44 + 144);
    v769 = *(v44 + 128);
    v770 = v77;
    v78 = *(v44 + 48);
    v767[2] = *(v44 + 32);
    v767[3] = v78;
    v79 = *(v44 + 80);
    v767[4] = *(v44 + 64);
    v767[5] = v79;
    v80 = *v44;
    v81 = *(v44 + 16);
    v767[0] = *v44;
    v767[1] = v81;
    HIDWORD(v768) = (v38 + 15) & 0xFFFFFFF0;
    *(&v769 + 1) = v43;
    if (BYTE1(v767[0]) << 8 == 1024)
    {
      CMYKf_mark_constmask(v767, v20, *&v80, v81, v70, v71, v72, v73, v74, v75, v64, v65, v66, v67, v68, v69);
    }

    else
    {
      CMYKf_mark_pixelmask(v767, v20, *&v80, v81, v70, v71, v72, v73, v74, v75, v64, v65, v66, v67, v68, v69);
    }

    if (v43 != &v771)
    {
      v82 = v43;
      goto LABEL_1241;
    }
  }

  return 1;
}

float PDAoverlayPDA(float *a1, float a2, float a3, float a4, float a5, float a6, double a7, double a8, double a9, float a10, float a11, float a12, float a13, float a14)
{
  v18 = a6 - a2;
  v19 = a6 - a3;
  v20 = a6 - a4;
  v21 = a6 - a5;
  v22 = a14 - a11;
  v23 = a14 - a12;
  v24 = a14 - a13;
  v25 = (v18 * (a14 - a10)) + (v18 * (a14 - a10));
  v26 = (v19 * (a14 - a11)) + (v19 * (a14 - a11));
  v27 = (v20 * (a14 - a12)) + (v20 * (a14 - a12));
  v28 = (v21 * (a14 - a13)) + (v21 * (a14 - a13));
  v29 = a6 * a14;
  v30 = a6 * 0.5;
  v31 = v18 < (a6 * 0.5);
  v32 = a14 + 1.0;
  v33 = a6 + 1.0;
  v34 = ((((a6 + 1.0) * (a14 - a10)) + (v18 * (a14 + 1.0))) - v25) - (a6 * a14);
  v35 = 1.0 - a14;
  v36 = 1.0 - a6;
  v37 = (((1.0 - a6) * (a14 - a10)) + (v18 * (1.0 - a14))) + v25;
  if (!v31)
  {
    v37 = v34;
  }

  v31 = v19 < v30;
  v38 = (((v33 * v22) + (v19 * v32)) - v26) - v29;
  v39 = ((v36 * v22) + (v19 * v35)) + v26;
  if (!v31)
  {
    v39 = v38;
  }

  v31 = v20 < v30;
  v40 = (((v33 * v23) + (v20 * v32)) - v27) - v29;
  v41 = ((v36 * v23) + (v20 * v35)) + v27;
  if (!v31)
  {
    v41 = v40;
  }

  v31 = v21 < v30;
  v42 = (((v33 * v24) + (v21 * v32)) - v28) - v29;
  v43 = ((v36 * v24) + (v21 * v35)) + v28;
  if (!v31)
  {
    v43 = v42;
  }

  v44 = (a6 + a14) - v29;
  *a1 = v44 - v37;
  a1[1] = v44 - v39;
  result = v44 - v41;
  a1[2] = v44 - v41;
  a1[3] = v44 - v43;
  a1[4] = v44;
  return result;
}