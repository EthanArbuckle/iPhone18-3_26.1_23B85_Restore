uint64_t W8_sample_RGB555(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v88 = *(result + 80);
  v10 = *(result + 112);
  v9 = *(result + 120);
  v92 = *(result + 152) - 4;
  v90 = *(result + 88);
  v91 = *(result + 144) - 1;
  if (v5)
  {
    v11 = 0;
  }

  else
  {
    v11 = -16777216;
  }

  v12 = *(result + 260) - 1;
  v13 = *(result + 256);
  v86 = *(result + 188);
  v14 = (v5 + (v13 - 1) + (v12 * v7));
  v15 = v4 + (v12 * v6) + 2 * v13 - 4;
  v89 = *(result + 72);
  v87 = *(result + 64);
  while (1)
  {
LABEL_5:
    if (a3 >= v89)
    {
      if (a3 <= v90)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        v26 = a3;
        v27 = v87;
      }

      else
      {
        v20 = *(result + 216);
        v21 = *(result + 224) + v90;
        v22 = v21 - a3 + (v20 >> 1);
        if (v22 < 1)
        {
          goto LABEL_43;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (*(result + 232) * v22) >> 32;
        }

        v27 = v87;
        v25 = v86 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v16 = *(result + 216);
      v17 = v89 - *(result + 224);
      v18 = a3 - v17 + (v16 >> 1);
      if (v18 < 1)
      {
        goto LABEL_43;
      }

      if (v18 >= v16)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (*(result + 232) * v18) >> 32;
      }

      v27 = v87;
      v25 = v86 | v19;
      v26 = v17 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v27)
    {
      break;
    }

    v28 = *(result + 192);
    v29 = v27 - *(result + 200);
    v30 = a2 - v29 + (v28 >> 1);
    if (v30 >= 1)
    {
      if (v30 < v28)
      {
        v25 = ((v25 >> 15) * (((*(result + 208) * v30) >> 32) >> 15)) | v86;
      }

      v31 = v29 + 0x1000000;
      v32 = 32;
      goto LABEL_29;
    }

LABEL_43:
    --a4;
    a2 += v10;
    a3 += v9;
    *++v91 = 0;
    v92 += 4;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v88)
  {
    v32 = (a2 >> 26) & 0x3C;
    v31 = a2;
    goto LABEL_29;
  }

  v33 = *(result + 192);
  v34 = *(result + 200) + v88;
  v35 = v34 - a2 + (v33 >> 1);
  if (v35 < 1)
  {
    goto LABEL_43;
  }

  if (v35 < v33)
  {
    v25 = ((v25 >> 15) * (((*(result + 208) * v35) >> 32) >> 15)) | v86;
  }

  v31 = v34 - 0x1000000;
  v32 = 28;
LABEL_29:
  if (v25 < 0x400000)
  {
    goto LABEL_43;
  }

  v36 = v26 >> 32;
  v37 = v31 >> 32;
  v38 = v4 + v36 * v6;
  v39 = v38 + 2 * v37;
  v40 = *(result + 32);
  if (v15 >= v39)
  {
    v41 = (v38 + 2 * v37);
  }

  else
  {
    v41 = v15;
  }

  if (v41 < v40)
  {
    v41 = *(result + 32);
  }

  v42 = bswap32(*v41) >> 16;
  if (!v5)
  {
    v43 = 0;
    if (!v8)
    {
      goto LABEL_47;
    }

LABEL_46:
    v46 = *(v8 + (v32 | v24));
LABEL_68:
    v56 = v46 & 0xF;
    v57 = HIBYTE(v46) & 3;
    if (v56 == 1)
    {
      v81 = (v39 + SBYTE1(v46) * v6);
      if (v15 < v81)
      {
        v81 = v15;
      }

      if (v81 < v40)
      {
        v81 = v40;
      }

      v82 = bswap32(*v81) >> 16;
      if (v5)
      {
        v83 = (v43 + SBYTE1(v46) * v7);
        if (v14 < v83)
        {
          v83 = v14;
        }

        if (v83 < *(result + 40))
        {
          v83 = *(result + 40);
        }

        v82 |= *v83 << 24;
      }

      v84 = interpolate_8555_21866[v57];
      v85 = v57 + 1;
      v79 = v42 - ((v84 & v42) >> v85);
      v80 = (v84 & v82) >> v85;
    }

    else
    {
      if (v56 != 2)
      {
        if (v56 == 3)
        {
          v58 = HIWORD(v46) << 56;
          v59 = (v39 + (v58 >> 55));
          if (v15 < v59)
          {
            v59 = v15;
          }

          if (v59 < v40)
          {
            v59 = v40;
          }

          v60 = bswap32(*v59) >> 16;
          v61 = v39 + SBYTE1(v46) * v6;
          if (v15 >= v61)
          {
            v62 = (v39 + SBYTE1(v46) * v6);
          }

          else
          {
            v62 = v15;
          }

          if (v62 < v40)
          {
            v62 = v40;
          }

          v63 = bswap32(*v62) >> 16;
          v64 = (v61 + (v58 >> 55));
          if (v15 < v64)
          {
            v64 = v15;
          }

          if (v64 < v40)
          {
            v64 = v40;
          }

          v65 = bswap32(*v64) >> 16;
          if (v5)
          {
            v66 = (v43 + SBYTE2(v46));
            v67 = *(result + 40);
            if (v14 < v66)
            {
              v66 = v14;
            }

            if (v66 < v67)
            {
              v66 = *(result + 40);
            }

            v60 |= *v66 << 24;
            v68 = v43 + SBYTE1(v46) * v7;
            if (v14 >= v68)
            {
              v69 = (v43 + SBYTE1(v46) * v7);
            }

            else
            {
              v69 = v14;
            }

            if (v69 < v67)
            {
              v69 = *(result + 40);
            }

            v63 |= *v69 << 24;
            v70 = (v68 + SBYTE2(v46));
            if (v14 < v70)
            {
              v70 = v14;
            }

            if (v70 < v67)
            {
              v70 = *(result + 40);
            }

            v65 |= *v70 << 24;
          }

          v71 = interpolate_8555_21866[v57];
          v72 = v57 + 1;
          v73 = v42 - ((v71 & v42) >> v72) + ((v71 & v63) >> v72);
          v42 = v73 - ((v73 & interpolate_8555_21866[(v46 >> 28) & 3]) >> (((v46 >> 28) & 3) + 1)) + (((v60 - ((v71 & v60) >> v72) + ((v71 & v65) >> v72)) & interpolate_8555_21866[(v46 >> 28) & 3]) >> (((v46 >> 28) & 3) + 1));
        }

        goto LABEL_47;
      }

      v74 = (v39 + ((HIWORD(v46) << 56) >> 55));
      if (v15 < v74)
      {
        v74 = v15;
      }

      if (v74 < v40)
      {
        v74 = v40;
      }

      v75 = bswap32(*v74) >> 16;
      if (v5)
      {
        v76 = (v43 + SBYTE2(v46));
        if (v14 < v76)
        {
          v76 = v14;
        }

        if (v76 < *(result + 40))
        {
          v76 = *(result + 40);
        }

        v75 |= *v76 << 24;
      }

      v77 = (v46 >> 28) & 3;
      v78 = interpolate_8555_21866[v77];
      LOBYTE(v77) = v77 + 1;
      v79 = v42 - ((v78 & v42) >> v77);
      v80 = (v78 & v75) >> v77;
    }

    v42 = v79 + v80;
    goto LABEL_47;
  }

  v43 = v5 + v36 * v7 + v37;
  v44 = *(result + 40);
  if (v14 >= v43)
  {
    v45 = v43;
  }

  else
  {
    v45 = v14;
  }

  if (v45 >= v44)
  {
    v44 = v45;
  }

  v42 |= *v44 << 24;
  if (v8)
  {
    goto LABEL_46;
  }

LABEL_47:
  v47 = 0;
  v48 = 0;
  v49 = v25 >> 22;
  a3 += v9;
  v50 = v90 - a3;
  a2 += v10;
  v51 = v88 - a2;
  while (1)
  {
    v52 = (v42 & 0x1F) + ((v42 & 0x3E0) >> 3) + ((v42 >> 9) & 0x3E) + ((v42 & 0x3E0) >> 5);
    *(v92 + 4 + 4 * v48) = v52 & 0xF8 | (v11 | (v42 >> 5) | v42) & 0xFF000000 | (v52 >> 5);
    *(v91 + 1 + v48) = v49;
    if (a4 - 1 == v48)
    {
      return result;
    }

    if ((v50 | v51 | (a3 - v89) | (a2 - v87)) < 0)
    {
      v91 += v48 + 1;
      v92 = v92 - v47 + 4;
      a4 += ~v48;
      if (a4)
      {
        goto LABEL_5;
      }

      return result;
    }

    v39 = v4 + SHIDWORD(a3) * v6 + 2 * (a2 >> 32);
    v40 = *(result + 32);
    if (v15 >= v39)
    {
      v53 = (v4 + SHIDWORD(a3) * v6 + 2 * (a2 >> 32));
    }

    else
    {
      v53 = v15;
    }

    if (v53 < v40)
    {
      v53 = *(result + 32);
    }

    v42 = bswap32(*v53) >> 16;
    if (v5)
    {
      v43 = v5 + SHIDWORD(a3) * v7 + (a2 >> 32);
      v54 = *(result + 40);
      if (v14 >= v43)
      {
        v55 = v5 + SHIDWORD(a3) * v7 + (a2 >> 32);
      }

      else
      {
        v55 = v14;
      }

      if (v55 >= v54)
      {
        v54 = v55;
      }

      v42 |= *v54 << 24;
    }

    if (v8)
    {
      v46 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v46 & 0xF) != 0)
      {
        v91 += v48 + 1;
        v92 = v92 - v47 + 4;
        a4 += ~v48;
        v25 = -1;
        goto LABEL_68;
      }
    }

    ++v48;
    v47 -= 4;
    a3 += v9;
    v50 -= v9;
    a2 += v10;
    v51 -= v10;
    LOBYTE(v49) = -1;
  }
}

uint64_t W8_sample_W8(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 24);
  v125 = *(result + 28);
  v5 = *(result + 112);
  v6 = *(result + 48);
  v7 = *(result + 56);
  if (v6)
  {
    v124 = *(result + 112);
    if (v5 > v6)
    {
      v124 = v5 % v6;
    }
  }

  else
  {
    v124 = 0;
  }

  v8 = *(result + 176);
  v9 = *(result + 120);
  v10 = *(result + 40);
  v126 = *(result + 32);
  if (v7)
  {
    v123 = *(result + 120);
    if (v9 > v7)
    {
      v123 = v9 % v7;
    }
  }

  else
  {
    v123 = 0;
  }

  v119 = *(result + 80);
  v121 = *(result + 88);
  v12 = *(result + 152) - 4;
  v13 = *(result + 144) - 1;
  if (v10)
  {
    v14 = 0;
  }

  else
  {
    v14 = -16777216;
  }

  v15 = *(result + 260) - 1;
  v16 = *(result + 256);
  v17 = (v10 + (v16 - 1) + (v15 * v125));
  v118 = *(result + 188);
  v18 = v126 + v16 + (v15 * v4) - 1;
  v120 = *(result + 64);
  v122 = *(result + 72);
  while (1)
  {
    if (a3 >= v122)
    {
      v22 = a4;
      if (a3 <= v121)
      {
        v28 = 0;
        v29 = (a3 >> 22) & 0x3C0;
        v30 = 0x3FFFFFFF;
        v31 = a3;
      }

      else
      {
        v24 = *(result + 216);
        v25 = *(result + 224) + v121;
        v26 = v25 - a3 + (v24 >> 1);
        if (v26 < 1)
        {
          goto LABEL_59;
        }

        if (v26 >= v24)
        {
          LODWORD(v27) = 0x3FFFFFFF;
        }

        else
        {
          v27 = (*(result + 232) * v26) >> 32;
        }

        v30 = v118 | v27;
        v31 = v25 - 0x1000000;
        v28 = a3 - (v25 - 0x1000000);
        v29 = 448;
      }
    }

    else
    {
      v19 = *(result + 216);
      v20 = v122 - *(result + 224);
      v21 = a3 - v20 + (v19 >> 1);
      v22 = a4;
      if (v21 < 1)
      {
        goto LABEL_59;
      }

      if (v21 >= v19)
      {
        LODWORD(v23) = 0x3FFFFFFF;
      }

      else
      {
        v23 = (*(result + 232) * v21) >> 32;
      }

      v30 = v118 | v23;
      v31 = v20 + 0x1000000;
      v28 = a3 - (v20 + 0x1000000);
      v29 = 512;
    }

    if (a2 >= v120)
    {
      if (a2 <= v119)
      {
        v36 = 0;
        v37 = (a2 >> 26) & 0x3C;
        v35 = a2;
      }

      else
      {
        v38 = *(result + 192);
        v39 = *(result + 200) + v119;
        v40 = v39 - a2 + (v38 >> 1);
        if (v40 < 1)
        {
          goto LABEL_59;
        }

        if (v40 < v38)
        {
          v30 = ((v30 >> 15) * (((*(result + 208) * v40) >> 32) >> 15)) | v118;
        }

        v35 = v39 - 0x1000000;
        v36 = a2 - (v39 - 0x1000000);
        v37 = 28;
      }
    }

    else
    {
      v32 = *(result + 192);
      v33 = v120 - *(result + 200);
      v34 = a2 - v33 + (v32 >> 1);
      if (v34 < 1)
      {
        goto LABEL_59;
      }

      if (v34 < v32)
      {
        v30 = ((v30 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v118;
      }

      v35 = v33 + 0x1000000;
      v36 = a2 - (v33 + 0x1000000);
      v37 = 32;
    }

    if (v30 >= 0x400000)
    {
      break;
    }

LABEL_59:
    v54 = v22 - 1;
    a2 += v5;
    a3 += v9;
    v12 += 4;
    *++v13 = 0;
LABEL_60:
    a4 = v54;
    if (!v54)
    {
      return result;
    }
  }

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
  v46 = v126 + SHIDWORD(v31) * v4;
  v47 = v46 + (v35 >> 32);
  v48 = *(result + 32);
  if (v18 >= v47)
  {
    v49 = (v46 + (v35 >> 32));
  }

  else
  {
    v49 = v18;
  }

  if (v49 < v48)
  {
    v49 = *(result + 32);
  }

  v50 = *v49;
  if (!v10)
  {
    v51 = 0;
    if (!v8)
    {
      goto LABEL_64;
    }

LABEL_63:
    v55 = *(v8 + (v37 | v29));
    goto LABEL_94;
  }

  v51 = v10 + v45 * v125 + (v35 >> 32);
  v52 = *(result + 40);
  if (v17 >= v51)
  {
    v53 = v51;
  }

  else
  {
    v53 = v17;
  }

  if (v53 >= v52)
  {
    v52 = v53;
  }

  v50 |= *v52 << 24;
  if (v8)
  {
    goto LABEL_63;
  }

LABEL_64:
  while (1)
  {
    *(v12 + 4) = v50 | v14;
    *(v13 + 1) = v30 >> 22;
    if (v22 == 1)
    {
      return result;
    }

    v56 = v22;
    v57 = 0;
    a2 += v5;
    v58 = v119 - a2;
    a3 += v9;
    v59 = v121 - a3;
    v60 = -4;
    while (1)
    {
      if ((v59 | v58 | (a3 - v122) | (a2 - v120)) < 0)
      {
        v13 += v57 + 1;
        v12 -= v60;
        v54 = ~v57 + v56;
        goto LABEL_60;
      }

      if (v6)
      {
        v61 = (v7 & ((v28 + v123) >> 63)) + v28 + v123;
        v62 = (v6 & ((v36 + v124) >> 63)) + v36 + v124;
        if (v61 >= v7)
        {
          v63 = v7;
        }

        else
        {
          v63 = 0;
        }

        v28 = v61 - v63;
        if (v62 >= v6)
        {
          v64 = v6;
        }

        else
        {
          v64 = 0;
        }

        v36 = v62 - v64;
        v65 = v28;
        v66 = v36;
      }

      else
      {
        v65 = a3;
        v66 = a2;
      }

      v67 = v65 >> 32;
      v68 = v126 + SHIDWORD(v65) * v4;
      v47 = v68 + (v66 >> 32);
      v48 = *(result + 32);
      if (v18 >= v47)
      {
        v69 = (v68 + (v66 >> 32));
      }

      else
      {
        v69 = v18;
      }

      if (v69 < v48)
      {
        v69 = *(result + 32);
      }

      v50 = *v69;
      if (v10)
      {
        v51 = v10 + v67 * v125 + (v66 >> 32);
        v70 = *(result + 40);
        if (v17 >= v51)
        {
          v71 = v51;
        }

        else
        {
          v71 = v17;
        }

        if (v71 >= v70)
        {
          v70 = v71;
        }

        v50 |= *v70 << 24;
      }

      if (v8)
      {
        v55 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v55 & 0xF) != 0)
        {
          break;
        }
      }

      *(v12 + 4 * v57 + 8) = v50 | v14;
      *(v13 + v57++ + 2) = -1;
      v60 -= 4;
      a2 += v5;
      v58 -= v5;
      a3 += v9;
      v59 -= v9;
      if (v56 - 1 == v57)
      {
        return result;
      }
    }

    v13 += v57 + 1;
    v12 -= v60;
    v22 = ~v57 + v56;
    v30 = -1;
LABEL_94:
    v72 = v55 & 0xF;
    v73 = v55 >> 8;
    v74 = HIBYTE(v55) & 3;
    switch(v72)
    {
      case 1:
        LODWORD(v108) = SBYTE1(v55);
        if (v6)
        {
          v109 = v73 << 56;
          v110 = v28 + (v109 >> 24);
          v111 = v7 & (v110 >> 63);
          if (v111 + v110 >= v7)
          {
            v112 = v7;
          }

          else
          {
            v112 = 0;
          }

          v108 = (v111 + (v109 >> 24) - v112) >> 32;
        }

        v113 = (v47 + v108 * v4);
        if (v18 < v113)
        {
          v113 = v18;
        }

        if (v113 < v48)
        {
          v113 = v48;
        }

        v114 = *v113;
        if (v10)
        {
          v115 = (v51 + v108 * v125);
          if (v17 < v115)
          {
            v115 = v17;
          }

          if (v115 < *(result + 40))
          {
            v115 = *(result + 40);
          }

          v114 |= *v115 << 24;
        }

        v50 = v50 - ((interpolate_8888_21865[v74] & v50) >> (v74 + 1)) + ((interpolate_8888_21865[v74] & v114) >> (v74 + 1));
        break;
      case 2:
        v100 = SBYTE2(v55);
        if (v6)
        {
          v101 = HIWORD(v55) << 56;
          v102 = v36 + (v101 >> 24);
          v103 = v6 & (v102 >> 63);
          if (v103 + v102 >= v6)
          {
            v104 = v6;
          }

          else
          {
            v104 = 0;
          }

          v100 = (v103 + (v101 >> 24) - v104) >> 32;
        }

        v105 = (v47 + v100);
        if (v18 < v47 + v100)
        {
          v105 = v18;
        }

        if (v105 < v48)
        {
          v105 = v48;
        }

        v106 = *v105;
        if (v10)
        {
          v107 = (v51 + v100);
          if (v17 < v107)
          {
            v107 = v17;
          }

          if (v107 < *(result + 40))
          {
            v107 = *(result + 40);
          }

          v106 |= *v107 << 24;
        }

        v50 = v50 - ((interpolate_8888_21865[(v55 >> 28) & 3] & v50) >> (((v55 >> 28) & 3) + 1)) + ((interpolate_8888_21865[(v55 >> 28) & 3] & v106) >> (((v55 >> 28) & 3) + 1));
        break;
      case 3:
        v75 = HIBYTE(v55) & 3;
        v117 = v30;
        v116 = v22;
        LODWORD(v76) = SBYTE1(v55);
        v77 = SBYTE2(v55);
        if (v6)
        {
          v78 = v73 << 56;
          v79 = v28 + (v78 >> 24);
          v80 = v36 + (SBYTE2(v55) << 32);
          v81 = v7 & (v79 >> 63);
          v82 = v6 & (v80 >> 63);
          v83 = v82 + v80;
          if (v81 + v79 >= v7)
          {
            v84 = v7;
          }

          else
          {
            v84 = 0;
          }

          if (v83 >= v6)
          {
            v85 = v6;
          }

          else
          {
            v85 = 0;
          }

          v76 = (v81 + (v78 >> 24) - v84) >> 32;
          v77 = (v82 + ((HIWORD(v55) << 56) >> 24) - v85) >> 32;
        }

        v86 = (v47 + v77);
        if (v18 < v47 + v77)
        {
          v86 = v18;
        }

        if (v86 < v48)
        {
          v86 = v48;
        }

        v87 = *v86;
        v88 = v47 + v76 * v4;
        if (v18 >= v88)
        {
          v89 = (v47 + v76 * v4);
        }

        else
        {
          v89 = v18;
        }

        if (v89 < v48)
        {
          v89 = v48;
        }

        v90 = *v89;
        v91 = (v88 + v77);
        if (v18 < v91)
        {
          v91 = v18;
        }

        if (v91 >= v48)
        {
          v48 = v91;
        }

        v92 = *v48;
        if (v10)
        {
          v93 = (v51 + v77);
          v94 = *(result + 40);
          if (v17 < v51 + v77)
          {
            v93 = v17;
          }

          if (v93 < v94)
          {
            v93 = *(result + 40);
          }

          v87 |= *v93 << 24;
          v95 = (v51 + v76 * v125);
          if (v17 >= v95)
          {
            v96 = v95;
          }

          else
          {
            v96 = v17;
          }

          if (v96 < v94)
          {
            v96 = *(result + 40);
          }

          v90 |= *v96 << 24;
          v97 = &v95[v77];
          if (v17 < v97)
          {
            v97 = v17;
          }

          if (v97 < v94)
          {
            v97 = *(result + 40);
          }

          v92 |= *v97 << 24;
        }

        v98 = interpolate_8888_21865[v75];
        v99 = v50 - ((v98 & v50) >> (v75 + 1)) + ((v98 & v90) >> (v75 + 1));
        v50 = v99 - ((v99 & interpolate_8888_21865[(v55 >> 28) & 3]) >> (((v55 >> 28) & 3) + 1)) + (((v87 - ((v98 & v87) >> (v75 + 1)) + ((v98 & v92) >> (v75 + 1))) & interpolate_8888_21865[(v55 >> 28) & 3]) >> (((v55 >> 28) & 3) + 1));
        v22 = v116;
        v30 = v117;
        break;
    }
  }
}

uint64_t W8_shade(uint64_t a1, __n128 a2)
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
      v14 = W8_shade_radial_W;
    }

    else if (*(v5 + 24))
    {
      v14 = W8_shade_conic_W;
    }

    else if (*(&v19 + 1) < 2)
    {
      v14 = W8_shade_axial_W;
    }

    else
    {
      v14 = W8_shade_custom_W;
    }

    *&v17[0] = v14;
    if (v40)
    {
      *(&v39 + 1) = v46;
      _blt_shade_samples_16(v46, 2, 1, v40, *(&v40 + 1), 1uLL);
    }

    v15 = *(&v19 + 1) * v19;
    if ((*(&v19 + 1) * v19) <= 960)
    {
      v16 = v44;
      v38[1] = v44;
LABEL_27:
      _blt_shade_samples_16(v16, 2, 1, v18, *(&v18 + 1), v15);
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
  W8_image_mark(v6, v17, v11, v13);
  if (v38[1] && (v38[1] < v44 || &v45 < v38[1]))
  {
    free(v38[1]);
  }

  return 1;
}

void W8_image_mark(uint64_t a1, uint64_t a2, unsigned int a3, __n128 a4)
{
  v373 = *MEMORY[0x1E69E9840];
  v361 = *(a1 + 4);
  v357 = v361;
  v358 = a1;
  v4 = (v361 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v4 <= 0x1FFFFFF)
  {
    v8 = *(v358 + 40);
    v7 = *(v358 + 48);
    v9 = *(a2 + 184);
    v368 = *(v358 + 136);
    v10 = *(a2 + 104);
    v370 = *(a2 + 96);
    v371 = v10;
    v372 = v7;
    v11 = *(v358 + 24);
    v353 = *(v358 + 28);
    v12 = *(v358 + 16);
    v13 = *(v358 + 20);
    v14 = *(v358 + 12);
    v369 = *(v358 + 8);
    v15 = *(a2 + 16);
    v16 = (v15 + 6) * v4;
    if (v16 > 65439)
    {
      v19 = malloc_type_calloc(1uLL, v16 + 96, 0xF5B4F9ABuLL);
      v18 = v19;
      v21 = v19;
      if (!v19)
      {
        return;
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](a1, a4);
      v18 = &v351 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v18, v17);
      v21 = 0;
    }

    v352 = v21;
    v360 = a3;
    v22 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
    v23 = v22 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    *(a2 + 160) = v23;
    if (v15)
    {
      v24 = 4 * v4;
    }

    else
    {
      v24 = 0;
    }

    v25 = a2;
    v26 = v23 + v24;
    v27 = v8 + (v11 - 1) * v353;
    *(v25 + 144) = v22;
    *(v25 + 152) = v26;
    v359 = v25;
    if (v372)
    {
      v28 = v358;
      v29 = *(v358 + 32);
      v30 = (v372 + v29 * v12 + v14);
      v366 = v29 - v357;
      v31 = v357;
      v32 = 1;
    }

    else
    {
      v30 = 0;
      v366 = 0;
      v32 = 0;
      v31 = v357;
      v28 = v358;
    }

    v367 = ((v9 * 255.0) + 0.5);
    v33 = v27 + v13;
    v34 = (v8 + v12 * v353 + v14);
    v365 = v353 - v31;
    v35 = *(v28 + 104);
    v36 = *(v28 + 108);
    v37 = *(v28 + 2);
    if (v37 == 6 || v37 == 1)
    {
      v38 = v360;
      v39 = v359;
      v40 = v370;
      if (v368)
      {
        v41 = 0;
        LODWORD(v42) = 0;
        v43 = *(v358 + 124);
        v44 = v368 + v43 * v36 + v35;
        v31 = v357;
        v363 = v43 - v357;
        v45 = v361;
        goto LABEL_31;
      }

      goto LABEL_561;
    }

    if (v368)
    {
      v351 = v33;
      shape_enum_clip_alloc(v19, v20, v368, 1, 1, 1, v35, v36, v361, v369);
      if (v46)
      {
        v41 = v46;
        v42 = 0;
        v47 = ((v15 * v4 + 15) & 0xFFFFFFF0);
        if (!v15)
        {
          v47 = 4 * v4;
        }

        v48 = v357;
        v363 = -v357;
        v44 = (v26 + v47 + 16);
        v39 = v359;
        v45 = v361;
        v40 = v370;
        goto LABEL_21;
      }

LABEL_561:
      if (v352)
      {
        free(v352);
      }

      return;
    }

    v44 = 0;
    v41 = 0;
    v363 = 0;
    LODWORD(v42) = 0;
    v38 = v360;
    v39 = v359;
    v45 = v361;
    v40 = v370;
LABEL_31:
    v355 = (v45 - 1);
    v354 = -v31;
    v351 = v33;
    v356 = v33 - 1;
    v55 = v41;
    v56 = v371;
    v362 = v367 ^ 0xFF;
LABEL_32:
    v57 = v38;
    v368 = v55;
    v58 = *v39;
    v370 = v40;
    v371 = v56;
    v58(v39, v40);
    v59 = *(v39 + 160);
    v60 = *(v39 + 144);
    v61 = *(v39 + 8);
    if (v61 == *(v39 + 12))
    {
      v38 = v57;
      if (v367 != 255)
      {
        v62 = v45;
        v63 = *(v39 + 144);
        v64 = v362;
        do
        {
          if (*v63)
          {
            v65 = (*v59 | (HIBYTE(*v59) << 16)) * v64;
            *v59 = (*v59 & 0xFF0000FF) - ((v65 + 65537 + ((v65 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v65 + 1 + BYTE1(v65)) >> 8));
          }

          ++v63;
          v59 += 4;
          --v62;
        }

        while (v62);
        v59 += 4 * v354;
        v60 += v355 + v354 + 1;
      }
    }

    else
    {
      v66 = *(v39 + 152);
      v67 = HIWORD(v61) & 0x3F;
      v38 = v57;
      if (v67 == 16)
      {
        v78 = v362;
        v79 = 0;
        if (v367 == 255)
        {
          do
          {
            if (v60[v79])
            {
              *&v59[4 * v79] = *(v66 + 4 * v79) & 0xFF000000 | BYTE1(*(v66 + 4 * v79));
            }

            ++v79;
          }

          while (v45 != v79);
        }

        else
        {
          do
          {
            if (v60[v79])
            {
              v80 = *(v66 + 4 * v79);
              v81 = ((v80 >> 8) & 0xFF00FF) * v78 + 65537 + (((((v80 >> 8) & 0xFF00FF) * v78) >> 8) & 0xFF00FF);
              *&v59[4 * v79] = (v80 & 0xFF000000 | BYTE1(v80)) - (v81 & 0xFF000000 | BYTE1(v81));
            }

            ++v79;
          }

          while (v45 != v79);
        }
      }

      else
      {
        v68 = v362;
        if (v67 == 32)
        {
          if (v367 == 255)
          {
            v85 = 0;
            v86 = (v66 + 4);
            do
            {
              if (v60[v85])
              {
                v87 = *v86;
                if (*v86 <= 0.0)
                {
                  v91 = 0;
                }

                else
                {
                  v88 = ((v87 * 255.0) + 0.5);
                  v89 = *(v86 - 1);
                  if (v87 > 1.0)
                  {
                    v87 = 1.0;
                    v88 = 255;
                  }

                  v90 = ((v89 * 255.0) + 0.5);
                  if (v89 < 0.0)
                  {
                    v90 = 0;
                  }

                  if (v89 > v87)
                  {
                    v90 = v88;
                  }

                  v91 = v90 | (v88 << 24);
                }

                *&v59[4 * v85] = v91;
              }

              v86 += 2;
              ++v85;
            }

            while (v45 != v85);
          }

          else
          {
            v69 = 0;
            v70 = (v66 + 4);
            do
            {
              if (v60[v69])
              {
                v71 = *v70;
                if (*v70 <= 0.0)
                {
                  v77 = 0;
                }

                else
                {
                  v72 = *(v70 - 1);
                  v73 = ((v71 * 255.0) + 0.5);
                  if (v71 > 1.0)
                  {
                    v73 = 255;
                    v71 = 1.0;
                  }

                  v74 = ((v72 * 255.0) + 0.5);
                  if (v72 < 0.0)
                  {
                    LOBYTE(v74) = 0;
                  }

                  if (v72 > v71)
                  {
                    LOBYTE(v74) = v73;
                  }

                  v75 = v74 | (v73 << 24);
                  v76 = (v74 | (v73 << 16)) * v68;
                  v77 = v75 - ((v76 + 65537 + ((v76 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v76 + 1 + BYTE1(v76)) >> 8));
                }

                *&v59[4 * v69] = v77;
              }

              v70 += 2;
              ++v69;
            }

            while (v45 != v69);
          }
        }

        else if (v367 == 255)
        {
          v92 = 0;
          do
          {
            if (v60[v92])
            {
              *&v59[4 * v92] = *(v66 + 4 * v92);
            }

            ++v92;
          }

          while (v45 != v92);
        }

        else
        {
          v82 = 0;
          do
          {
            if (v60[v82])
            {
              v83 = *(v66 + 4 * v82);
              v84 = (v83 | (HIBYTE(v83) << 16)) * v68;
              *&v59[4 * v82] = (v83 & 0xFF0000FF) - ((v84 + 65537 + ((v84 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v84 + 1 + BYTE1(v84)) >> 8));
            }

            ++v82;
          }

          while (v45 != v82);
        }
      }
    }

    switch(v38)
    {
      case 0:
        v93 = v44 != 0;
        if (v372)
        {
          v94 = v45;
          v95 = v44;
          v96 = v369;
          do
          {
            v97 = *v60;
            if (*v60)
            {
              if (v44)
              {
                v97 = ((*v95 * v97 + ((*v95 * v97) >> 8) + 1) >> 8);
              }

              if (v97)
              {
                if (v97 == 255)
                {
                  LOBYTE(v98) = 0;
                  *v34 = 0;
                }

                else
                {
                  v99 = *v34;
                  v100 = *v30;
                  v101 = (v99 | (v100 << 16)) * v97 + 65537 + ((((v99 | (v100 << 16)) * v97) >> 8) & 0xFF00FF);
                  v102 = v99 | (v100 << 24);
                  *v34 = v102 - BYTE1(v101);
                  v98 = (v102 - (v101 & 0xFF000000 | BYTE1(v101))) >> 24;
                }

                *v30 = v98;
              }
            }

            ++v60;
            v95 += v93;
            ++v34;
            ++v30;
            --v94;
          }

          while (v94);
        }

        else
        {
          v312 = v45;
          v95 = v44;
          v96 = v369;
          do
          {
            v313 = *v60;
            if (*v60)
            {
              if (v44)
              {
                v313 = ((*v95 * v313 + ((*v95 * v313) >> 8) + 1) >> 8);
              }

              if (v313)
              {
                if (v313 == 255)
                {
                  LOBYTE(v314) = 0;
                }

                else
                {
                  v314 = *v34 - ((*v34 * v313 + ((*v34 * v313) >> 8) + 1) >> 8);
                }

                *v34 = v314;
              }
            }

            ++v60;
            v95 += v93;
            ++v34;
            --v312;
          }

          while (v312);
        }

        v44 = &v95[v363];
        v34 += v365;
        v30 += v366;
        v168 = v370;
        goto LABEL_506;
      case 1:
        v197 = *v60;
        if (v372)
        {
          if (v44)
          {
            v198 = 0;
            v199 = v60 + 1;
            v168 = v370;
            do
            {
              if (v197)
              {
                v200 = v44[v198] * v197 + ((v44[v198] * v197) >> 8) + 1;
                if (BYTE1(v200))
                {
                  if (BYTE1(v200) == 255)
                  {
                    v201 = *&v59[4 * v198];
                    HIBYTE(v202) = HIBYTE(v201);
                  }

                  else
                  {
                    v203 = (*&v59[4 * v198] | (HIBYTE(*&v59[4 * v198]) << 16)) * (v200 >> 8) + (v34[v198] | (v30[v198] << 16)) * ((v200 >> 8) ^ 0xFF);
                    v202 = v203 + 65537 + ((v203 >> 8) & 0xFF00FF);
                    v201 = v202 >> 8;
                  }

                  v34[v198] = v201;
                  v30[v198] = HIBYTE(v202);
                }
              }

              v197 = v199[v198++];
            }

            while (v45 != v198);
            v204 = &v34[v198 - 1];
            v205 = &v30[v198 - 1];
            v44 += v198 + v363;
          }

          else
          {
            v335 = v60 + 1;
            v205 = (v30 - 1);
            v204 = (v34 - 1);
            v336 = v45;
            v168 = v370;
            do
            {
              if (v197)
              {
                if (v197 == 255)
                {
                  v337 = *v59;
                  v338 = *v59;
                }

                else
                {
                  v339 = (*v59 | (HIBYTE(*v59) << 16)) * v197 + (*(v204 + 1) | (*(v205 + 1) << 16)) * (v197 ^ 0xFF);
                  v338 = v339 + 65537 + ((v339 >> 8) & 0xFF00FF);
                  v337 = v338 >> 8;
                }

                *(v204 + 1) = v337;
                *(v205 + 1) = HIBYTE(v338);
              }

              v340 = *v335++;
              v197 = v340;
              v59 += 4;
              ++v205;
              ++v204;
              --v336;
            }

            while (v336);
            v44 = 0;
          }

          v34 = (v204 + v365 + 1);
          v30 = (v205 + v366 + 1);
          goto LABEL_505;
        }

        v315 = v60 + 1;
        v316 = v45;
        if (v44)
        {
          v168 = v370;
          do
          {
            if (v197)
            {
              v317 = *v44 * v197 + ((*v44 * v197) >> 8) + 1;
              v318 = *(v358 + 40);
              v319 = v356;
              if (v356 >= v34)
              {
                v319 = v34;
              }

              if (v319 >= v318)
              {
                v318 = v319;
              }

              if (BYTE1(v317))
              {
                if (BYTE1(v317) == 255)
                {
                  v320 = *v59;
                }

                else
                {
                  v320 = (*v59 * (v317 >> 8) + ((v317 >> 8) ^ 0xFF) * *v318 + ((*v59 * (v317 >> 8) + ((v317 >> 8) ^ 0xFF) * *v318) >> 8) + 1) >> 8;
                }

                *v318 = v320;
              }
            }

            else
            {
              v318 = v34;
            }

            v321 = *v315++;
            v197 = v321;
            v59 += 4;
            ++v44;
            v34 = v318 + 1;
            --v316;
          }

          while (v316);
          v44 += v363;
        }

        else
        {
          v347 = v358;
          v168 = v370;
          do
          {
            v318 = *(v347 + 40);
            v348 = v356;
            if (v356 >= v34)
            {
              v348 = v34;
            }

            if (v348 >= v318)
            {
              v318 = v348;
            }

            if (v197)
            {
              if (v197 == 255)
              {
                v349 = *v59;
              }

              else
              {
                v349 = (*v59 * v197 + *v318 * (v197 ^ 0xFF) + ((*v59 * v197 + *v318 * (v197 ^ 0xFFu)) >> 8) + 1) >> 8;
              }

              *v318 = v349;
            }

            v350 = *v315++;
            v197 = v350;
            v59 += 4;
            v34 = v318 + 1;
            --v316;
          }

          while (v316);
          v44 = 0;
        }

        v346 = &v318[v365];
        goto LABEL_558;
      case 2:
        v165 = *v60;
        if (v372)
        {
          if (v44)
          {
            v166 = 0;
            v167 = v60 + 1;
            v168 = v370;
            while (1)
            {
              if (!v165)
              {
                goto LABEL_219;
              }

              v169 = v44[v166] * v165 + ((v44[v166] * v165) >> 8) + 1;
              if (!BYTE1(v169))
              {
                goto LABEL_219;
              }

              if (BYTE1(v169) == 255)
              {
                v170 = *&v59[4 * v166];
                v171 = HIBYTE(v170);
                if (HIBYTE(v170))
                {
                  if (v171 == 255)
                  {
                    v34[v166] = v170;
                    LOBYTE(v170) = -1;
                  }

                  else
                  {
                    v174 = (v34[v166] | (v30[v166] << 16)) * (v171 ^ 0xFF);
LABEL_217:
                    v175 = ((v174 + 65537 + ((v174 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v174 + 1 + BYTE1(v174)) >> 8)) + (v170 & 0xFF0000FF);
                    v34[v166] = v175;
                    v170 = HIBYTE(v175);
                  }

                  v30[v166] = v170;
                }
              }

              else
              {
                v172 = *&v59[4 * v166];
                v173 = (v172 | (HIBYTE(v172) << 16)) * ((v169 >> 8) ^ 0xFF);
                v170 = (v172 & 0xFF0000FF) - ((v173 + 65537 + ((v173 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v173 + 1 + BYTE1(v173)) >> 8));
                if (HIBYTE(v170))
                {
                  v174 = (v34[v166] | (v30[v166] << 16)) * (~v170 >> 24);
                  goto LABEL_217;
                }
              }

LABEL_219:
              v165 = v167[v166++];
              if (v45 == v166)
              {
                v176 = &v34[v166 - 1];
                v177 = &v30[v166 - 1];
                v44 += v166 + v363;
LABEL_522:
                v34 = (v176 + v365 + 1);
                v30 = (v177 + v366 + 1);
                goto LABEL_505;
              }
            }
          }

          v327 = v60 + 1;
          v177 = (v30 - 1);
          v176 = (v34 - 1);
          v328 = v45;
          v168 = v370;
          while (1)
          {
            if (v165)
            {
              if (v165 == 255)
              {
                v329 = *v59;
                v330 = HIBYTE(*v59);
                if (v330)
                {
                  if (v330 == 255)
                  {
                    *(v176 + 1) = v329;
                    LOBYTE(v329) = -1;
                  }

                  else
                  {
                    v332 = (*(v176 + 1) | (*(v177 + 1) << 16)) * (v330 ^ 0xFF);
LABEL_518:
                    v333 = ((v332 + 65537 + ((v332 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v332 + 1 + BYTE1(v332)) >> 8)) + (v329 & 0xFF0000FF);
                    *(v176 + 1) = v333;
                    v329 = HIBYTE(v333);
                  }

                  *(v177 + 1) = v329;
                }
              }

              else
              {
                v331 = (*v59 | (HIBYTE(*v59) << 16)) * (v165 ^ 0xFF);
                v329 = (*v59 & 0xFF0000FF) - ((v331 + 65537 + ((v331 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v331 + 1 + BYTE1(v331)) >> 8));
                if (HIBYTE(v329))
                {
                  v332 = (*(v176 + 1) | (*(v177 + 1) << 16)) * (~v329 >> 24);
                  goto LABEL_518;
                }
              }
            }

            v334 = *v327++;
            v165 = v334;
            v59 += 4;
            ++v177;
            ++v176;
            if (!--v328)
            {
              v44 = 0;
              goto LABEL_522;
            }
          }
        }

        v299 = v60 + 1;
        v300 = v34 - 1;
        v301 = v45;
        if (v44)
        {
          v168 = v370;
          while (1)
          {
            if (!v165)
            {
              goto LABEL_454;
            }

            v302 = *v44 * v165 + ((*v44 * v165) >> 8) + 1;
            if (!BYTE1(v302))
            {
              goto LABEL_454;
            }

            if (BYTE1(v302) == 255)
            {
              v303 = *v59;
              v304 = HIBYTE(*v59);
              if (v304)
              {
                if (v304 != 255)
                {
                  v305 = (v304 ^ 0xFF) * v300[1];
                  goto LABEL_452;
                }

                goto LABEL_453;
              }
            }

            else
            {
              v306 = (*v59 | (HIBYTE(*v59) << 16)) * ((v302 >> 8) ^ 0xFF);
              v303 = (*v59 & 0xFF0000FF) - ((v306 + 65537 + ((v306 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v306 + 1 + BYTE1(v306)) >> 8));
              if (HIBYTE(v303))
              {
                v305 = (~v303 >> 24) * v300[1];
LABEL_452:
                v303 += (v305 + (v305 >> 8) + 1) >> 8;
LABEL_453:
                v300[1] = v303;
              }
            }

LABEL_454:
            v307 = *v299++;
            v165 = v307;
            v59 += 4;
            ++v44;
            ++v300;
            if (!--v301)
            {
              v44 += v363;
LABEL_544:
              v346 = &v300[v365];
LABEL_558:
              v34 = v346 + 1;
              v30 += v366;
LABEL_505:
              v96 = v369;
LABEL_506:
              v326 = v96 - 1;
              if (!v326)
              {
                v41 = v368;
                if (v368)
                {
LABEL_560:
                  free(v41);
                }

                goto LABEL_561;
              }

              v369 = v326;
              v55 = 0;
              v42 = (v42 + 1);
              v40 = *(v39 + 128) + v168;
              v56 = *(v39 + 136) + v371;
              v41 = v368;
              if (v368)
              {
                v371 += *(v39 + 136);
                v48 = v357;
LABEL_21:
                v370 = v366 + v48;
                while (1)
                {
                  while (1)
                  {
                    v49 = *(v44 - 4);
                    v50 = v49 - v42;
                    if (v49 <= v42)
                    {
                      break;
                    }

                    v369 -= v50;
                    if (v369 < 1)
                    {
                      goto LABEL_560;
                    }

                    v40 += *(v39 + 128) * v50;
                    v371 += *(v39 + 136) * v50;
                    v34 += v353 * v50;
                    v54 = v370 * v50;
                    if (!v372)
                    {
                      v54 = 0;
                    }

                    v30 += v54;
                    v42 = v49;
                  }

                  if (v42 < *(v44 - 3) + v49)
                  {
                    break;
                  }

                  v51 = v42;
                  v52 = v41;
                  v53 = shape_enum_clip_scan(v41, v44 - 4);
                  v41 = v52;
                  v42 = v51;
                  if (!v53)
                  {
                    goto LABEL_560;
                  }
                }

                v31 = v357;
                v33 = v351;
                v38 = v360;
                goto LABEL_31;
              }

              goto LABEL_32;
            }
          }
        }

        v168 = v370;
        while (1)
        {
          if (v165)
          {
            if (v165 == 255)
            {
              v341 = *v59;
              v342 = HIBYTE(*v59);
              if (v342)
              {
                if (v342 != 255)
                {
                  v343 = (v342 ^ 0xFF) * v300[1];
                  goto LABEL_540;
                }

                goto LABEL_541;
              }
            }

            else
            {
              v344 = (*v59 | (HIBYTE(*v59) << 16)) * (v165 ^ 0xFF);
              v341 = (*v59 & 0xFF0000FF) - ((v344 + 65537 + ((v344 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v344 + 1 + BYTE1(v344)) >> 8));
              if (HIBYTE(v341))
              {
                v343 = (~v341 >> 24) * v300[1];
LABEL_540:
                v341 += (v343 + (v343 >> 8) + 1) >> 8;
LABEL_541:
                v300[1] = v341;
              }
            }
          }

          v345 = *v299++;
          v165 = v345;
          v59 += 4;
          ++v300;
          if (!--v301)
          {
            v44 = 0;
            goto LABEL_544;
          }
        }

      case 3:
        v184 = v45;
        v125 = v44;
        do
        {
          v185 = *v60;
          if (*v60)
          {
            if (v44)
            {
              v185 = ((*v125 * v185 + ((*v125 * v185) >> 8) + 1) >> 8);
            }

            if (v185)
            {
              if (v185 == 255)
              {
                v187 = (*v59 | (HIBYTE(*v59) << 16)) * (*v30 ^ 0xFF);
                v186 = (*v59 & 0xFF0000FF) - ((v187 + 65537 + ((v187 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v187 + 1 + BYTE1(v187)) >> 8));
                HIBYTE(v187) = HIBYTE(v186);
              }

              else
              {
                v188 = (*v34 | (*v30 << 16)) * (v185 ^ 0xFF) + ((*v30 * v185 + ((*v30 * v185) >> 8) + 1) >> 8) * (*v59 | (HIBYTE(*v59) << 16));
                v187 = v188 + 65537 + ((v188 >> 8) & 0xFF00FF);
                v186 = v187 >> 8;
              }

              *v34 = v186;
              *v30 = HIBYTE(v187);
            }
          }

          ++v60;
          v59 += 4;
          v125 += v44 != 0;
          ++v34;
          v30 += v32;
          --v184;
        }

        while (v184);
        goto LABEL_503;
      case 4:
        v132 = v45;
        v125 = v44;
        do
        {
          v133 = *v60;
          if (*v60)
          {
            if (v44)
            {
              v133 = ((*v125 * v133 + ((*v125 * v133) >> 8) + 1) >> 8);
            }

            if (v133)
            {
              if (v133 == 255)
              {
                v135 = (*v59 | (HIBYTE(*v59) << 16)) * *v30;
                v134 = (*v59 & 0xFF0000FF) - ((v135 + 65537 + ((v135 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v135 + 1 + BYTE1(v135)) >> 8));
                HIBYTE(v135) = HIBYTE(v134);
              }

              else
              {
                v136 = (*v34 | (*v30 << 16)) * (v133 ^ 0xFF) + (((*v30 ^ 0xFF) * v133 + (((*v30 ^ 0xFFu) * v133) >> 8) + 1) >> 8) * (*v59 | (HIBYTE(*v59) << 16));
                v135 = v136 + 65537 + ((v136 >> 8) & 0xFF00FF);
                v134 = v135 >> 8;
              }

              *v34 = v134;
              *v30 = HIBYTE(v135);
            }
          }

          ++v60;
          v59 += 4;
          v125 += v44 != 0;
          ++v34;
          v30 += v32;
          --v132;
        }

        while (v132);
        goto LABEL_503;
      case 5:
        v218 = v45;
        v125 = v44;
        while (1)
        {
          v219 = *v60;
          if (*v60)
          {
            if (!v44)
            {
              goto LABEL_299;
            }

            v220 = *v125 * v219 + ((*v125 * v219) >> 8) + 1;
            if (v220 >= 0x100)
            {
              break;
            }
          }

LABEL_300:
          ++v60;
          v59 += 4;
          v125 += v44 != 0;
          ++v34;
          v30 += v32;
          if (!--v218)
          {
            goto LABEL_503;
          }
        }

        v219 = BYTE1(v220);
LABEL_299:
        v221 = (*v59 | (HIBYTE(*v59) << 16)) * (v219 ^ 0xFF);
        v222 = (*v59 & 0xFF0000FF) - ((v221 + 65537 + ((v221 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v221 + 1 + BYTE1(v221)) >> 8));
        v223 = (HIBYTE(v222) ^ 0xFF) * (*v34 | (*v30 << 16)) + (v222 | (HIBYTE(v222) << 16)) * *v30;
        v224 = v223 + 65537 + ((v223 >> 8) & 0xFF00FF);
        *v34 = BYTE1(v224);
        *v30 = HIBYTE(v224);
        goto LABEL_300;
      case 6:
        v237 = v45;
        v125 = v44;
        while (1)
        {
          v238 = *v60;
          if (*v60)
          {
            if (!v44)
            {
              goto LABEL_333;
            }

            v239 = *v125 * v238 + ((*v125 * v238) >> 8) + 1;
            if (v239 >= 0x100)
            {
              break;
            }
          }

LABEL_338:
          ++v60;
          v59 += 4;
          v125 += v44 != 0;
          ++v34;
          v30 += v32;
          if (!--v237)
          {
            goto LABEL_503;
          }
        }

        v238 = BYTE1(v239);
LABEL_333:
        v240 = *v30;
        if (v240 != 0xFF)
        {
          if (~v240 == 255)
          {
            v241 = (*v59 | (HIBYTE(*v59) << 16)) * (v238 ^ 0xFF);
            v242 = (*v59 & 0xFF0000FF) - ((v241 + 65537 + ((v241 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v241 + 1 + BYTE1(v241)) >> 8));
          }

          else
          {
            v243 = (*v59 | (HIBYTE(*v59) << 16)) * ((~v240 * v238 + ((~v240 * v238) >> 8) + 1) >> 8);
            v242 = ((v243 + 65537 + ((v243 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v243 + 1 + BYTE1(v243)) >> 8)) + (*v34 | (v240 << 24));
          }

          *v34 = v242;
          *v30 = HIBYTE(v242);
        }

        goto LABEL_338;
      case 7:
        v189 = v44 != 0;
        if (v372)
        {
          v190 = v45;
          v125 = v44;
          do
          {
            v191 = *v60;
            if (*v60)
            {
              if (v44)
              {
                v191 = ((*v125 * v191 + ((*v125 * v191) >> 8) + 1) >> 8);
              }

              if (v191)
              {
                if (v191 == 255)
                {
                  v192 = *v34;
                  v195 = *v30;
                  v193 = (v192 | (v195 << 16)) * (~*v59 >> 24);
                  v194 = (v192 | (v195 << 24)) - ((v193 + 65537 + ((v193 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v193 + 1 + BYTE1(v193)) >> 8));
                  HIBYTE(v195) = HIBYTE(v194);
                }

                else
                {
                  v196 = ((v191 ^ 0xFF) + ((v59[3] * v191 + ((v59[3] * v191) >> 8) + 1) >> 8)) * (*v34 | (*v30 << 16));
                  v195 = v196 + 65537 + ((v196 >> 8) & 0xFF00FF);
                  v194 = v195 >> 8;
                }

                *v34 = v194;
                *v30 = HIBYTE(v195);
              }
            }

            ++v60;
            v59 += 4;
            v125 += v189;
            ++v34;
            ++v30;
            --v190;
          }

          while (v190);
        }

        else
        {
          v308 = v45;
          v125 = v44;
          do
          {
            v309 = *v60;
            if (*v60)
            {
              if (v44)
              {
                v309 = ((*v125 * v309 + ((*v125 * v309) >> 8) + 1) >> 8);
              }

              if (v309)
              {
                if (v309 == 255)
                {
                  v310 = *v34 - (((~*v59 >> 24) * *v34 + (((~*v59 >> 24) * *v34) >> 8) + 1) >> 8);
                }

                else
                {
                  v311 = v59[3] * v309 + ((v59[3] * v309) >> 8) + 1;
                  v310 = (((v309 ^ 0xFF) + (v311 >> 8)) * *v34 + ((((v309 ^ 0xFF) + (v311 >> 8)) * *v34) >> 8) + 1) >> 8;
                }

                *v34 = v310;
              }
            }

            ++v60;
            v59 += 4;
            v125 += v189;
            ++v34;
            --v308;
          }

          while (v308);
        }

        goto LABEL_503;
      case 8:
        v257 = v44 != 0;
        if (v372)
        {
          v258 = v45;
          v125 = v44;
          do
          {
            v259 = *v60;
            if (*v60)
            {
              if (v44)
              {
                v259 = ((*v125 * v259 + ((*v125 * v259) >> 8) + 1) >> 8);
              }

              if (v259)
              {
                if (v259 == 255)
                {
                  v260 = *v34;
                  v263 = *v30;
                  v261 = (v260 | (v263 << 16)) * v59[3];
                  v262 = (v260 | (v263 << 24)) - ((v261 + 65537 + ((v261 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v261 + 1 + BYTE1(v261)) >> 8));
                  HIBYTE(v263) = HIBYTE(v262);
                }

                else
                {
                  v264 = ((v259 ^ 0xFF) + (((~*v59 >> 24) * v259 + (((~*v59 >> 24) * v259) >> 8) + 1) >> 8)) * (*v34 | (*v30 << 16));
                  v263 = v264 + 65537 + ((v264 >> 8) & 0xFF00FF);
                  v262 = v263 >> 8;
                }

                *v34 = v262;
                *v30 = HIBYTE(v263);
              }
            }

            ++v60;
            v59 += 4;
            v125 += v257;
            ++v34;
            ++v30;
            --v258;
          }

          while (v258);
        }

        else
        {
          v322 = v45;
          v125 = v44;
          do
          {
            v323 = *v60;
            if (*v60)
            {
              if (v44)
              {
                v323 = ((*v125 * v323 + ((*v125 * v323) >> 8) + 1) >> 8);
              }

              if (v323)
              {
                if (v323 == 255)
                {
                  v324 = *v34 - ((v59[3] * *v34 + ((v59[3] * *v34) >> 8) + 1) >> 8);
                }

                else
                {
                  v325 = (~*v59 >> 24) * v323 + (((~*v59 >> 24) * v323) >> 8) + 1;
                  v324 = (((v323 ^ 0xFF) + (v325 >> 8)) * *v34 + ((((v323 ^ 0xFF) + (v325 >> 8)) * *v34) >> 8) + 1) >> 8;
                }

                *v34 = v324;
              }
            }

            ++v60;
            v59 += 4;
            v125 += v257;
            ++v34;
            --v322;
          }

          while (v322);
        }

        goto LABEL_503;
      case 9:
        v145 = v45;
        v125 = v44;
        while (1)
        {
          v146 = *v60;
          if (*v60)
          {
            if (!v44)
            {
              goto LABEL_176;
            }

            v147 = *v125 * v146 + ((*v125 * v146) >> 8) + 1;
            if (v147 >= 0x100)
            {
              break;
            }
          }

LABEL_177:
          ++v60;
          v59 += 4;
          v125 += v44 != 0;
          ++v34;
          v30 += v32;
          if (!--v145)
          {
            goto LABEL_503;
          }
        }

        v146 = v147 >> 8;
LABEL_176:
        v148 = ~v146;
        v149 = (*v59 | (HIBYTE(*v59) << 16)) * ~v146;
        v150 = (*v59 & 0xFF0000FF) - ((v149 + 65537 + ((v149 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v149 + 1 + BYTE1(v149)) >> 8));
        v151 = (v150 | (HIBYTE(v150) << 16)) * (*v30 ^ 0xFF) + (*v34 | (*v30 << 16)) * (v148 + HIBYTE(v150));
        v152 = v151 + 65537 + ((v151 >> 8) & 0xFF00FF);
        *v34 = BYTE1(v152);
        *v30 = HIBYTE(v152);
        goto LABEL_177;
      case 10:
        v250 = v45;
        v125 = v44;
        while (1)
        {
          v251 = *v60;
          if (*v60)
          {
            if (!v44)
            {
              goto LABEL_358;
            }

            v252 = *v125 * v251 + ((*v125 * v251) >> 8) + 1;
            if (v252 >= 0x100)
            {
              break;
            }
          }

LABEL_359:
          ++v60;
          v59 += 4;
          v125 += v44 != 0;
          ++v34;
          v30 += v32;
          if (!--v250)
          {
            goto LABEL_503;
          }
        }

        v251 = BYTE1(v252);
LABEL_358:
        v253 = (*v59 | (HIBYTE(*v59) << 16)) * (v251 ^ 0xFF);
        v254 = (*v59 & 0xFF0000FF) - ((v253 + 65537 + ((v253 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v253 + 1 + BYTE1(v253)) >> 8));
        v255 = (HIBYTE(v254) ^ 0xFF) * (*v34 | (*v30 << 16)) + (v254 | (HIBYTE(v254) << 16)) * (*v30 ^ 0xFF);
        v256 = v255 + 65537 + ((v255 >> 8) & 0xFF00FF);
        *v34 = BYTE1(v256);
        *v30 = HIBYTE(v256);
        goto LABEL_359;
      case 11:
        v123 = v44 != 0;
        if (v372)
        {
          v124 = v45;
          v125 = v44;
          while (1)
          {
            v126 = *v60;
            if (*v60)
            {
              if (!v44)
              {
                goto LABEL_148;
              }

              v127 = *v125 * v126 + ((*v125 * v126) >> 8) + 1;
              if (v127 >= 0x100)
              {
                break;
              }
            }

LABEL_149:
            ++v60;
            v59 += 4;
            v125 += v123;
            ++v34;
            ++v30;
            if (!--v124)
            {
              goto LABEL_503;
            }
          }

          v126 = BYTE1(v127);
LABEL_148:
          v128 = (*v59 | (HIBYTE(*v59) << 16)) * (v126 ^ 0xFF);
          v129 = (*v59 & 0xFF0000FF) - ((v128 + 65537 + ((v128 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v128 + 1 + BYTE1(v128)) >> 8));
          v130 = ((*v30 - *v34) | (*v30 << 16)) + (HIBYTE(v129) << 16) + (HIBYTE(v129) - v129);
          v131 = (255 * ((v130 >> 8) & 0x10001)) | v130;
          *v34 = BYTE2(v131) - v131;
          *v30 = BYTE2(v131);
          goto LABEL_149;
        }

        v288 = v45;
        v125 = v44;
        while (1)
        {
          v289 = *v60;
          if (*v60)
          {
            if (!v44)
            {
              goto LABEL_431;
            }

            v290 = *v125 * v289 + ((*v125 * v289) >> 8) + 1;
            if (v290 >= 0x100)
            {
              break;
            }
          }

LABEL_432:
          ++v60;
          v59 += 4;
          v125 += v123;
          ++v34;
          if (!--v288)
          {
            goto LABEL_503;
          }
        }

        v289 = BYTE1(v290);
LABEL_431:
        v291 = (*v59 | (HIBYTE(*v59) << 16)) * (v289 ^ 0xFF);
        v292 = (v291 + 65537 + ((v291 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v291 + 1 + BYTE1(v291)) >> 8);
        v293 = (*v34 ^ 0xFF) - (*v59 - v292) + (((*v59 & 0xFF0000FF) - v292) >> 24);
        v294 = BYTE1(v293) | (2 * BYTE1(v293)) | (4 * (BYTE1(v293) | (2 * BYTE1(v293))));
        *v34 = ~((~*v34 - (*v59 - v292) + (((*v59 & 0xFF0000FF) - v292) >> 24)) | (16 * v294) | v294);
        goto LABEL_432;
      case 12:
        v137 = v44 != 0;
        if (v372)
        {
          v138 = v45;
          v125 = v44;
          while (1)
          {
            v139 = *v60;
            if (*v60)
            {
              if (!v44)
              {
                goto LABEL_168;
              }

              v140 = *v125 * v139 + ((*v125 * v139) >> 8) + 1;
              if (v140 >= 0x100)
              {
                break;
              }
            }

LABEL_169:
            ++v60;
            v59 += 4;
            v125 += v137;
            ++v34;
            ++v30;
            if (!--v138)
            {
              goto LABEL_503;
            }
          }

          v139 = BYTE1(v140);
LABEL_168:
          v141 = (*v59 | (HIBYTE(*v59) << 16)) * (v139 ^ 0xFF);
          v142 = (*v59 & 0xFF0000FF) - ((v141 + 65537 + ((v141 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v141 + 1 + BYTE1(v141)) >> 8));
          v143 = (*v34 | (*v30 << 16)) + v142 + (HIBYTE(v142) << 16);
          v144 = (255 * ((v143 >> 8) & 0x10001)) | v143;
          *v34 = v144;
          *v30 = BYTE2(v144);
          goto LABEL_169;
        }

        v295 = v45;
        v125 = v44;
        while (1)
        {
          v296 = *v60;
          if (*v60)
          {
            if (!v44)
            {
              goto LABEL_439;
            }

            v297 = *v125 * v296 + ((*v125 * v296) >> 8) + 1;
            if (v297 >= 0x100)
            {
              break;
            }
          }

LABEL_440:
          ++v60;
          v59 += 4;
          v125 += v137;
          ++v34;
          if (!--v295)
          {
LABEL_503:
            v44 = &v125[v363];
            v34 += v365;
            v30 += v366;
LABEL_504:
            v168 = v370;
            goto LABEL_505;
          }
        }

        v296 = BYTE1(v297);
LABEL_439:
        v298 = *v34 + (*v59 - ((*v59 * (v296 ^ 0xFF) + ((*v59 * (v296 ^ 0xFFu)) >> 8) + 1) >> 8));
        *v34 = -(v298 >> 8) | v298;
        goto LABEL_440;
      case 13:
        v364 = v42;
        v231 = v45;
        v111 = v44;
        while (1)
        {
          v232 = *v60;
          if (*v60)
          {
            if (!v44)
            {
              goto LABEL_320;
            }

            v233 = *v111 * v232 + ((*v111 * v232) >> 8) + 1;
            if (v233 >= 0x100)
            {
              break;
            }
          }

LABEL_326:
          ++v60;
          v59 += 4;
          v111 += v44 != 0;
          ++v34;
          v30 += v32;
          if (!--v231)
          {
            goto LABEL_424;
          }
        }

        v232 = BYTE1(v233);
LABEL_320:
        v234 = (*v59 | (HIBYTE(*v59) << 16)) * (v232 ^ 0xFF);
        v235 = (*v59 & 0xFF0000FF) - ((v234 + 65537 + ((v234 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v234 + 1 + BYTE1(v234)) >> 8));
        v236 = HIBYTE(v235);
        if (HIBYTE(v235))
        {
          if (v372)
          {
            if (*v30)
            {
              v235 = PDAmultiplyPDA_18018(*v34, *v30, (*v59 - ((v234 + 1 + BYTE1(v234)) >> 8)), v236);
              v236 = HIBYTE(v235);
            }

            *v34 = v235;
            *v30 = v236;
          }

          else
          {
            *v34 = PDAmultiplyPDA_18018(*v34, 255, (*v59 - ((v234 + 1 + BYTE1(v234)) >> 8)), v236);
          }
        }

        goto LABEL_326;
      case 14:
        v364 = v42;
        v117 = v45;
        v111 = v44;
        while (1)
        {
          v118 = *v60;
          if (*v60)
          {
            if (!v44)
            {
              goto LABEL_134;
            }

            v119 = *v111 * v118 + ((*v111 * v118) >> 8) + 1;
            if (v119 >= 0x100)
            {
              break;
            }
          }

LABEL_140:
          ++v60;
          v59 += 4;
          v111 += v44 != 0;
          ++v34;
          v30 += v32;
          if (!--v117)
          {
            goto LABEL_424;
          }
        }

        v118 = BYTE1(v119);
LABEL_134:
        v120 = (*v59 | (HIBYTE(*v59) << 16)) * (v118 ^ 0xFF);
        v121 = (*v59 & 0xFF0000FF) - ((v120 + 65537 + ((v120 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v120 + 1 + BYTE1(v120)) >> 8));
        v122 = HIBYTE(v121);
        if (HIBYTE(v121))
        {
          if (v372)
          {
            if (*v30)
            {
              v121 = PDAscreenPDA_18019(*v34, *v30, (*v59 - ((v120 + 1 + BYTE1(v120)) >> 8)), v122);
              v122 = HIBYTE(v121);
            }

            *v34 = v121;
            *v30 = v122;
          }

          else
          {
            *v34 = PDAscreenPDA_18019(*v34, 255, (*v59 - ((v120 + 1 + BYTE1(v120)) >> 8)), v122);
          }
        }

        goto LABEL_140;
      case 15:
        v364 = v42;
        v178 = v45;
        v111 = v44;
        while (1)
        {
          v179 = *v60;
          if (*v60)
          {
            if (!v44)
            {
              goto LABEL_226;
            }

            v180 = *v111 * v179 + ((*v111 * v179) >> 8) + 1;
            if (v180 >= 0x100)
            {
              break;
            }
          }

LABEL_232:
          ++v60;
          v59 += 4;
          v111 += v44 != 0;
          ++v34;
          v30 += v32;
          if (!--v178)
          {
            goto LABEL_424;
          }
        }

        v179 = BYTE1(v180);
LABEL_226:
        v181 = (*v59 | (HIBYTE(*v59) << 16)) * (v179 ^ 0xFF);
        v182 = (*v59 & 0xFF0000FF) - ((v181 + 65537 + ((v181 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v181 + 1 + BYTE1(v181)) >> 8));
        v183 = HIBYTE(v182);
        if (HIBYTE(v182))
        {
          if (v372)
          {
            if (*v30)
            {
              v182 = PDAoverlayPDA_18020(*v34, *v30, (*v59 - ((v181 + 1 + BYTE1(v181)) >> 8)), v183);
              v183 = HIBYTE(v182);
            }

            *v34 = v182;
            *v30 = v183;
          }

          else
          {
            *v34 = PDAoverlayPDA_18020(*v34, 0xFFu, (*v59 - ((v181 + 1 + BYTE1(v181)) >> 8)), v183);
          }
        }

        goto LABEL_232;
      case 16:
        v364 = v42;
        v110 = v45;
        v111 = v44;
        while (1)
        {
          v112 = *v60;
          if (*v60)
          {
            if (!v44)
            {
              goto LABEL_121;
            }

            v113 = *v111 * v112 + ((*v111 * v112) >> 8) + 1;
            if (v113 >= 0x100)
            {
              break;
            }
          }

LABEL_127:
          ++v60;
          v59 += 4;
          v111 += v44 != 0;
          ++v34;
          v30 += v32;
          if (!--v110)
          {
            goto LABEL_424;
          }
        }

        v112 = BYTE1(v113);
LABEL_121:
        v114 = (*v59 | (HIBYTE(*v59) << 16)) * (v112 ^ 0xFF);
        v115 = (*v59 & 0xFF0000FF) - ((v114 + 65537 + ((v114 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v114 + 1 + BYTE1(v114)) >> 8));
        v116 = HIBYTE(v115);
        if (HIBYTE(v115))
        {
          if (v372)
          {
            if (*v30)
            {
              v115 = PDAdarkenPDA_18022(*v34, *v30, (*v59 - ((v114 + 1 + BYTE1(v114)) >> 8)), v116);
              v116 = HIBYTE(v115);
            }

            *v34 = v115;
            *v30 = v116;
          }

          else
          {
            *v34 = PDAdarkenPDA_18022(*v34, 0xFFu, (*v59 - ((v114 + 1 + BYTE1(v114)) >> 8)), v116);
          }
        }

        goto LABEL_127;
      case 17:
        v364 = v42;
        v206 = v45;
        v111 = v44;
        while (1)
        {
          v207 = *v60;
          if (*v60)
          {
            if (!v44)
            {
              goto LABEL_273;
            }

            v208 = *v111 * v207 + ((*v111 * v207) >> 8) + 1;
            if (v208 >= 0x100)
            {
              break;
            }
          }

LABEL_279:
          ++v60;
          v59 += 4;
          v111 += v44 != 0;
          ++v34;
          v30 += v32;
          if (!--v206)
          {
            goto LABEL_424;
          }
        }

        v207 = BYTE1(v208);
LABEL_273:
        v209 = (*v59 | (HIBYTE(*v59) << 16)) * (v207 ^ 0xFF);
        v210 = (*v59 & 0xFF0000FF) - ((v209 + 65537 + ((v209 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v209 + 1 + BYTE1(v209)) >> 8));
        v211 = HIBYTE(v210);
        if (HIBYTE(v210))
        {
          if (v372)
          {
            if (*v30)
            {
              v210 = PDAlightenPDA_18021(*v34, *v30, (*v59 - ((v209 + 1 + BYTE1(v209)) >> 8)), v211);
              v211 = HIBYTE(v210);
            }

            *v34 = v210;
            *v30 = v211;
          }

          else
          {
            *v34 = PDAlightenPDA_18021(*v34, 0xFFu, (*v59 - ((v209 + 1 + BYTE1(v209)) >> 8)), v211);
          }
        }

        goto LABEL_279;
      case 18:
        v364 = v42;
        v244 = v45;
        v111 = v44;
        while (1)
        {
          v245 = *v60;
          if (*v60)
          {
            if (!v44)
            {
              goto LABEL_345;
            }

            v246 = *v111 * v245 + ((*v111 * v245) >> 8) + 1;
            if (v246 >= 0x100)
            {
              break;
            }
          }

LABEL_351:
          ++v60;
          v59 += 4;
          v111 += v44 != 0;
          ++v34;
          v30 += v32;
          if (!--v244)
          {
            goto LABEL_424;
          }
        }

        v245 = BYTE1(v246);
LABEL_345:
        v247 = (*v59 | (HIBYTE(*v59) << 16)) * (v245 ^ 0xFF);
        v248 = (*v59 & 0xFF0000FF) - ((v247 + 65537 + ((v247 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v247 + 1 + BYTE1(v247)) >> 8));
        v249 = HIBYTE(v248);
        if (HIBYTE(v248))
        {
          if (v372)
          {
            if (*v30)
            {
              v248 = PDAcolordodgePDA_18023(*v34, *v30, (*v59 - ((v247 + 1 + BYTE1(v247)) >> 8)), v249);
              v249 = HIBYTE(v248);
            }

            *v34 = v248;
            *v30 = v249;
          }

          else
          {
            *v34 = PDAcolordodgePDA_18023(*v34, 0xFFu, (*v59 - ((v247 + 1 + BYTE1(v247)) >> 8)), v249);
          }
        }

        goto LABEL_351;
      case 19:
        v364 = v42;
        v271 = v45;
        v111 = v44;
        while (1)
        {
          v272 = *v60;
          if (*v60)
          {
            if (!v44)
            {
              goto LABEL_391;
            }

            v273 = *v111 * v272 + ((*v111 * v272) >> 8) + 1;
            if (v273 >= 0x100)
            {
              break;
            }
          }

LABEL_397:
          ++v60;
          v59 += 4;
          v111 += v44 != 0;
          ++v34;
          v30 += v32;
          if (!--v271)
          {
            goto LABEL_424;
          }
        }

        v272 = BYTE1(v273);
LABEL_391:
        v274 = (*v59 | (HIBYTE(*v59) << 16)) * (v272 ^ 0xFF);
        v275 = (*v59 & 0xFF0000FF) - ((v274 + 65537 + ((v274 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v274 + 1 + BYTE1(v274)) >> 8));
        v276 = HIBYTE(v275);
        if (HIBYTE(v275))
        {
          if (v372)
          {
            if (*v30)
            {
              v275 = PDAcolorburnPDA_18024(*v34, *v30, (*v59 - ((v274 + 1 + BYTE1(v274)) >> 8)), v276);
              v276 = HIBYTE(v275);
            }

            *v34 = v275;
            *v30 = v276;
          }

          else
          {
            *v34 = PDAcolorburnPDA_18024(*v34, 0xFFu, (*v59 - ((v274 + 1 + BYTE1(v274)) >> 8)), v276);
          }
        }

        goto LABEL_397;
      case 20:
        v364 = v42;
        v212 = v45;
        v111 = v44;
        while (1)
        {
          v213 = *v60;
          if (*v60)
          {
            if (!v44)
            {
              goto LABEL_286;
            }

            v214 = *v111 * v213 + ((*v111 * v213) >> 8) + 1;
            if (v214 >= 0x100)
            {
              break;
            }
          }

LABEL_292:
          ++v60;
          v59 += 4;
          v111 += v44 != 0;
          ++v34;
          v30 += v32;
          if (!--v212)
          {
            goto LABEL_424;
          }
        }

        v213 = BYTE1(v214);
LABEL_286:
        v215 = (*v59 | (HIBYTE(*v59) << 16)) * (v213 ^ 0xFF);
        v216 = (*v59 & 0xFF0000FF) - ((v215 + 65537 + ((v215 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v215 + 1 + BYTE1(v215)) >> 8));
        v217 = HIBYTE(v216);
        if (HIBYTE(v216))
        {
          if (v372)
          {
            if (*v30)
            {
              v216 = PDAsoftlightPDA_18026(*v34, *v30, (*v59 - ((v215 + 1 + BYTE1(v215)) >> 8)), v217);
              v217 = HIBYTE(v216);
            }

            *v34 = v216;
            *v30 = v217;
          }

          else
          {
            *v34 = PDAsoftlightPDA_18026(*v34, 0xFFu, (*v59 - ((v215 + 1 + BYTE1(v215)) >> 8)), v217);
          }
        }

        goto LABEL_292;
      case 21:
        v364 = v42;
        v225 = v45;
        v111 = v44;
        while (1)
        {
          v226 = *v60;
          if (*v60)
          {
            if (!v44)
            {
              goto LABEL_307;
            }

            v227 = *v111 * v226 + ((*v111 * v226) >> 8) + 1;
            if (v227 >= 0x100)
            {
              break;
            }
          }

LABEL_313:
          ++v60;
          v59 += 4;
          v111 += v44 != 0;
          ++v34;
          v30 += v32;
          if (!--v225)
          {
            goto LABEL_424;
          }
        }

        v226 = BYTE1(v227);
LABEL_307:
        v228 = (*v59 | (HIBYTE(*v59) << 16)) * (v226 ^ 0xFF);
        v229 = (*v59 & 0xFF0000FF) - ((v228 + 65537 + ((v228 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v228 + 1 + BYTE1(v228)) >> 8));
        v230 = HIBYTE(v229);
        if (HIBYTE(v229))
        {
          if (v372)
          {
            if (*v30)
            {
              v229 = PDAhardlightPDA_18025(*v34, *v30, (*v59 - ((v228 + 1 + BYTE1(v228)) >> 8)), v230);
              v230 = HIBYTE(v229);
            }

            *v34 = v229;
            *v30 = v230;
          }

          else
          {
            *v34 = PDAhardlightPDA_18025(*v34, 0xFFu, (*v59 - ((v228 + 1 + BYTE1(v228)) >> 8)), v230);
          }
        }

        goto LABEL_313;
      case 22:
        v364 = v42;
        v265 = v45;
        v103 = v44;
        while (1)
        {
          v266 = *v60;
          if (*v60)
          {
            if (!v44)
            {
              goto LABEL_378;
            }

            v267 = *v103 * v266 + ((*v103 * v266) >> 8) + 1;
            if (v267 >= 0x100)
            {
              break;
            }
          }

LABEL_384:
          ++v60;
          v59 += 4;
          v103 += v44 != 0;
          ++v34;
          v30 += v32;
          if (!--v265)
          {
            goto LABEL_411;
          }
        }

        v266 = BYTE1(v267);
LABEL_378:
        v268 = (*v59 | (HIBYTE(*v59) << 16)) * (v266 ^ 0xFF);
        v269 = (*v59 & 0xFF0000FF) - ((v268 + 65537 + ((v268 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v268 + 1 + BYTE1(v268)) >> 8));
        v270 = HIBYTE(v269);
        if (HIBYTE(v269))
        {
          if (v372)
          {
            if (*v30)
            {
              v269 = PDAdifferencePDA_18027(*v34, *v30, (*v59 - ((v268 + 1 + BYTE1(v268)) >> 8)), v270);
              v270 = HIBYTE(v269);
            }

            *v34 = v269;
            *v30 = v270;
          }

          else
          {
            *v34 = PDAdifferencePDA_18027(*v34, 0xFFu, (*v59 - ((v268 + 1 + BYTE1(v268)) >> 8)), v270);
          }
        }

        goto LABEL_384;
      case 23:
        v364 = v42;
        v103 = v44;
        v277 = v45;
        while (1)
        {
          v278 = *v60;
          if (*v60)
          {
            if (!v44)
            {
              goto LABEL_404;
            }

            v279 = *v103 * v278 + ((*v103 * v278) >> 8) + 1;
            if (v279 >= 0x100)
            {
              break;
            }
          }

LABEL_410:
          ++v60;
          v59 += 4;
          v103 += v44 != 0;
          ++v34;
          v30 += v32;
          if (!--v277)
          {
            goto LABEL_411;
          }
        }

        v278 = BYTE1(v279);
LABEL_404:
        v280 = (*v59 | (HIBYTE(*v59) << 16)) * (v278 ^ 0xFF);
        v281 = (*v59 & 0xFF0000FF) - ((v280 + 65537 + ((v280 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v280 + 1 + BYTE1(v280)) >> 8));
        v282 = HIBYTE(v281);
        if (HIBYTE(v281))
        {
          if (v372)
          {
            if (*v30)
            {
              v281 = PDAexclusionPDA_18028(*v34, *v30, (*v59 - ((v280 + 1 + BYTE1(v280)) >> 8)), v282);
              v282 = HIBYTE(v281);
            }

            *v34 = v281;
            *v30 = v282;
          }

          else
          {
            *v34 = PDAexclusionPDA_18028(*v34, 0xFFu, (*v59 - ((v280 + 1 + BYTE1(v280)) >> 8)), v282);
          }
        }

        goto LABEL_410;
      case 24:
        v364 = v42;
        v103 = v44;
        v159 = v45;
        while (1)
        {
          v160 = *v60;
          if (*v60)
          {
            if (!v44)
            {
              goto LABEL_197;
            }

            v161 = *v103 * v160 + ((*v103 * v160) >> 8) + 1;
            if (v161 >= 0x100)
            {
              break;
            }
          }

LABEL_203:
          ++v60;
          v59 += 4;
          v103 += v44 != 0;
          ++v34;
          v30 += v32;
          if (!--v159)
          {
            goto LABEL_411;
          }
        }

        v160 = BYTE1(v161);
LABEL_197:
        v162 = (*v59 | (HIBYTE(*v59) << 16)) * (v160 ^ 0xFF);
        v163 = (*v59 & 0xFF0000FF) - ((v162 + 65537 + ((v162 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v162 + 1 + BYTE1(v162)) >> 8));
        v164 = HIBYTE(v163);
        if (HIBYTE(v163))
        {
          if (v372)
          {
            if (*v30)
            {
              v163 = PDAhuePDA_18029(*v34, *v30, (*v59 - ((v162 + 1 + BYTE1(v162)) >> 8)), v164);
              v164 = HIBYTE(v163);
            }

            *v34 = v163;
            *v30 = v164;
          }

          else
          {
            *v34 = PDAhuePDA_18029(*v34, 0xFFu, (*v59 - ((v162 + 1 + BYTE1(v162)) >> 8)), v164);
          }
        }

        goto LABEL_203;
      case 25:
        v364 = v42;
        v103 = v44;
        v153 = v45;
        while (1)
        {
          v154 = *v60;
          if (*v60)
          {
            if (!v44)
            {
              goto LABEL_184;
            }

            v155 = *v103 * v154 + ((*v103 * v154) >> 8) + 1;
            if (v155 >= 0x100)
            {
              break;
            }
          }

LABEL_190:
          ++v60;
          v59 += 4;
          v103 += v44 != 0;
          ++v34;
          v30 += v32;
          if (!--v153)
          {
            goto LABEL_411;
          }
        }

        v154 = BYTE1(v155);
LABEL_184:
        v156 = (*v59 | (HIBYTE(*v59) << 16)) * (v154 ^ 0xFF);
        v157 = (*v59 & 0xFF0000FF) - ((v156 + 65537 + ((v156 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v156 + 1 + BYTE1(v156)) >> 8));
        v158 = HIBYTE(v157);
        if (HIBYTE(v157))
        {
          if (v372)
          {
            if (*v30)
            {
              v157 = PDAhuePDA_18029(*v34, *v30, (*v59 - ((v156 + 1 + BYTE1(v156)) >> 8)), v158);
              v158 = HIBYTE(v157);
            }

            *v34 = v157;
            *v30 = v158;
          }

          else
          {
            *v34 = PDAhuePDA_18029(*v34, 0xFFu, (*v59 - ((v156 + 1 + BYTE1(v156)) >> 8)), v158);
          }
        }

        goto LABEL_190;
      case 26:
        v364 = v42;
        v111 = v44;
        while (1)
        {
          v283 = *v60;
          if (*v60)
          {
            if (!v44)
            {
              goto LABEL_417;
            }

            v284 = *v111 * v283 + ((*v111 * v283) >> 8) + 1;
            if (v284 >= 0x100)
            {
              break;
            }
          }

LABEL_423:
          ++v60;
          v59 += 4;
          v111 += v44 != 0;
          ++v34;
          v30 += v32;
          if (!--v45)
          {
LABEL_424:
            v44 = &v111[v363];
            goto LABEL_425;
          }
        }

        v283 = BYTE1(v284);
LABEL_417:
        v285 = (*v59 | (HIBYTE(*v59) << 16)) * (v283 ^ 0xFF);
        v286 = (*v59 & 0xFF0000FF) - ((v285 + 65537 + ((v285 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v285 + 1 + BYTE1(v285)) >> 8));
        v287 = HIBYTE(v286);
        if (HIBYTE(v286))
        {
          if (v372)
          {
            if (*v30)
            {
              v286 = PDAluminosityPDA_18031((*v59 - ((v285 + 1 + BYTE1(v285)) >> 8)), v287, *v34, *v30);
              v287 = HIBYTE(v286);
            }

            *v34 = v286;
            *v30 = v287;
          }

          else
          {
            *v34 = PDAluminosityPDA_18031((*v59 - ((v285 + 1 + BYTE1(v285)) >> 8)), v287, *v34, 0xFFu);
          }
        }

        goto LABEL_423;
      case 27:
        v364 = v42;
        v103 = v44;
        v104 = v45;
        break;
      default:
        goto LABEL_504;
    }

    while (1)
    {
      v105 = *v60;
      if (*v60)
      {
        if (!v44)
        {
          goto LABEL_108;
        }

        v106 = *v103 * v105 + ((*v103 * v105) >> 8) + 1;
        if (v106 >= 0x100)
        {
          break;
        }
      }

LABEL_114:
      ++v60;
      v59 += 4;
      v103 += v44 != 0;
      ++v34;
      v30 += v32;
      if (!--v104)
      {
LABEL_411:
        v44 = &v103[v363];
LABEL_425:
        v34 += v365;
        v30 += v366;
        v38 = v360;
        v39 = v359;
        v45 = v361;
        v168 = v370;
        v96 = v369;
        LODWORD(v42) = v364;
        goto LABEL_506;
      }
    }

    v105 = BYTE1(v106);
LABEL_108:
    v107 = (*v59 | (HIBYTE(*v59) << 16)) * (v105 ^ 0xFF);
    v108 = (*v59 & 0xFF0000FF) - ((v107 + 65537 + ((v107 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v107 + 1 + BYTE1(v107)) >> 8));
    v109 = HIBYTE(v108);
    if (HIBYTE(v108))
    {
      if (v372)
      {
        if (*v30)
        {
          v108 = PDAluminosityPDA_18031(*v34, *v30, (*v59 - ((v107 + 1 + BYTE1(v107)) >> 8)), v109);
          v109 = HIBYTE(v108);
        }

        *v34 = v108;
        *v30 = v109;
      }

      else
      {
        *v34 = PDAluminosityPDA_18031(*v34, 0xFFu, (*v59 - ((v107 + 1 + BYTE1(v107)) >> 8)), v109);
      }
    }

    goto LABEL_114;
  }
}

uint64_t PDAmultiplyPDA_18018(int a1, int a2, int a3, int a4)
{
  v4 = (a2 ^ 0xFF) * a3;
  if (a2 == 255)
  {
    v4 = 0;
  }

  v5 = v4 + ((a4 ^ 0xFF) + a3) * a1;
  v6 = 255 * (a4 + a2) - a4 * a2;
  v7 = v5 + 128;
  if (v5 >> 7 >= 0x1FD)
  {
    v7 = 65152;
  }

  v8 = (v7 + (v7 >> 8)) >> 8;
  if (v6 >= 65152)
  {
    v9 = 65152;
  }

  else
  {
    v9 = v6 + 128;
  }

  return (v8 | ((v9 + (v9 >> 8)) << 16)) & 0xFF0000FF;
}

uint64_t PDAscreenPDA_18019(int a1, int a2, int a3, int a4)
{
  v4 = (a1 ^ 0xFF) * a3 - a1 + (a1 << 8);
  v5 = 255 * (a4 + a2) - a4 * a2;
  v6 = v4 + 128;
  if (v4 >> 7 >= 0x1FD)
  {
    v6 = 65152;
  }

  if (v5 >= 65152)
  {
    v7 = 65152;
  }

  else
  {
    v7 = v5 + 128;
  }

  return ((v6 + (v6 >> 8)) >> 8) & 0xFFFFFF | (((v7 + (v7 >> 8)) >> 8) << 24);
}

uint64_t PDAoverlayPDA_18020(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
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
  v7 = (a4 + 255) * v5 + (a2 + 255) * v4 - (a4 * a2 + v6);
  v8 = (a2 ^ 0xFF) * v4 + (a4 ^ 0xFF) * v5 + v6;
  if (v5 >= (a2 + 1) >> 1)
  {
    v8 = v7;
  }

  v9 = 255 * (a4 + a2) - a4 * a2;
  if (v8 >= 65152)
  {
    v10 = 65152;
  }

  else
  {
    v10 = v8 + 128;
  }

  v11 = (v10 + (v10 >> 8)) >> 8;
  if (v9 >= 65152)
  {
    v12 = 65152;
  }

  else
  {
    v12 = v9 + 128;
  }

  return (v11 | ((v12 + (v12 >> 8)) << 16)) & 0xFF0000FF;
}

uint64_t PDAlightenPDA_18021(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
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
  if (v4 * a2 > a4 * v5)
  {
    v6 = v4 * a2;
  }

  v7 = (a4 ^ 0xFF) * v5;
  if (a4 == 255)
  {
    v7 = 0;
  }

  v8 = (a2 ^ 0xFF) * v4;
  if (a2 == 255)
  {
    v8 = 0;
  }

  v9 = v6 + v7 + v8;
  v10 = 255 * (a4 + a2) - a4 * a2;
  v11 = v9 + 128;
  if (v9 >> 7 >= 0x1FD)
  {
    v11 = 65152;
  }

  v12 = (v11 + (v11 >> 8)) >> 8;
  if (v10 >= 65152)
  {
    v13 = 65152;
  }

  else
  {
    v13 = v10 + 128;
  }

  return (v12 | ((v13 + (v13 >> 8)) << 16)) & 0xFF0000FF;
}

uint64_t PDAdarkenPDA_18022(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
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
  if (v4 * a2 < a4 * v5)
  {
    v6 = v4 * a2;
  }

  v7 = (a4 ^ 0xFF) * v5;
  if (a4 == 255)
  {
    v7 = 0;
  }

  v8 = (a2 ^ 0xFF) * v4;
  if (a2 == 255)
  {
    v8 = 0;
  }

  v9 = v6 + v7 + v8;
  v10 = 255 * (a4 + a2) - a4 * a2;
  v11 = v9 + 128;
  if (v9 >> 7 >= 0x1FD)
  {
    v11 = 65152;
  }

  v12 = (v11 + (v11 >> 8)) >> 8;
  if (v10 >= 65152)
  {
    v13 = 65152;
  }

  else
  {
    v13 = v10 + 128;
  }

  return (v12 | ((v13 + (v13 >> 8)) << 16)) & 0xFF0000FF;
}

uint64_t PDAcolordodgePDA_18023(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
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
      v6 = 65025;
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

  v7 = (a4 ^ 0xFF) * v4;
  if (a4 == 255)
  {
    v7 = 0;
  }

  v8 = (a2 ^ 0xFF) * v5;
  if (a2 == 255)
  {
    v8 = 0;
  }

  v9 = v8 + v7 + v6;
  v10 = 255 * (a4 + a2) - a4 * a2;
  if (v9 >= v10)
  {
    v9 = 255 * (a4 + a2) - a4 * a2;
  }

  if (v9 >= 65152)
  {
    v11 = 65152;
  }

  else
  {
    v11 = v9 + 128;
  }

  v12 = (v11 + (v11 >> 8)) >> 8;
  if (v10 >= 65152)
  {
    v13 = 65152;
  }

  else
  {
    v13 = v10 + 128;
  }

  return (v12 | ((v13 + (v13 >> 8)) << 16)) & 0xFF0000FF;
}

uint64_t PDAcolorburnPDA_18024(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = a4 * a2;
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

  v7 = (a4 ^ 0xFF) * v6;
  if (a4 == 255)
  {
    v7 = 0;
  }

  v8 = v7 + v4;
  v9 = (a2 ^ 0xFF) * v5;
  if (a2 == 255)
  {
    v9 = 0;
  }

  v10 = v8 + v9;
  if (a2 <= a1)
  {
    goto LABEL_14;
  }

  if (v5)
  {
    v10 = (v10 - (a4 * a4 * (a2 - v6)) / v5) & ~((v10 - (a4 * a4 * (a2 - v6)) / v5) >> 31);
LABEL_14:
    v11 = 255 * (a4 + a2) - v4;
    if (v10 >> 7 > 0x1FC)
    {
      v12 = 65152;
    }

    else
    {
      v12 = v10 + 128;
    }

    goto LABEL_18;
  }

  v11 = 255 * (a4 + a2) - v4;
  v12 = 128;
LABEL_18:
  if (v11 >= 65152)
  {
    v13 = 65152;
  }

  else
  {
    v13 = v11 + 128;
  }

  return ((v12 + (v12 >> 8)) >> 8) & 0xFFFFFF | (((v13 + (v13 >> 8)) >> 8) << 24);
}

uint64_t PDAhardlightPDA_18025(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
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
  v7 = (a2 ^ 0xFF) * v4 + (a4 ^ 0xFF) * v5 + v6;
  v8 = (a4 + 255) * v5 + (a2 + 255) * v4 - (a4 * a2 + v6);
  if (v4 > (a4 + 1) >> 1)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v10 = 255 * (a4 + a2) - a4 * a2;
  if (v9 >= 65152)
  {
    v11 = 65152;
  }

  else
  {
    v11 = v9 + 128;
  }

  v12 = (v11 + (v11 >> 8)) >> 8;
  if (v10 >= 65152)
  {
    v13 = 65152;
  }

  else
  {
    v13 = v10 + 128;
  }

  return (v12 | ((v13 + (v13 >> 8)) << 16)) & 0xFF0000FF;
}

uint64_t PDAsoftlightPDA_18026(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
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

  v6 = 2 * v4 * v5 - (v4 * v4 * (2 * v5 - a4)) / a2;
  v7 = v6 & ~(v6 >> 31);
  v8 = (a4 ^ 0xFF) * v4;
  if (a4 == 255)
  {
    v8 = 0;
  }

  v9 = (a2 ^ 0xFF) * v5;
  if (a2 == 255)
  {
    v9 = 0;
  }

  v10 = v9 + v8 + v7;
  v11 = 255 * (a4 + a2) - a4 * a2;
  v12 = v10 + 128;
  if (v10 >> 7 >= 0x1FD)
  {
    v12 = 65152;
  }

  v13 = (v12 + (v12 >> 8)) >> 8;
  if (v11 >= 65152)
  {
    v14 = 65152;
  }

  else
  {
    v14 = v11 + 128;
  }

  return (v13 | ((v14 + (v14 >> 8)) << 16)) & 0xFF0000FF;
}

uint64_t PDAdifferencePDA_18027(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
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

  v6 = v4 + v5;
  v7 = a4 * v5;
  v8 = v4 * a2;
  v10 = v7 - v8;
  v9 = v7 - v8 < 0;
  v11 = 255 * v6 - v8 - v7;
  if (v9)
  {
    v12 = -v10;
  }

  else
  {
    v12 = v10;
  }

  v13 = v11 + v12;
  v14 = 255 * (a4 + a2) - a4 * a2;
  if (v13 >= 65152)
  {
    v15 = 65152;
  }

  else
  {
    v15 = v13 + 128;
  }

  v16 = (v15 + (v15 >> 8)) >> 8;
  if (v14 >= 65152)
  {
    v17 = 65152;
  }

  else
  {
    v17 = v14 + 128;
  }

  return (v16 | ((v17 + (v17 >> 8)) << 16)) & 0xFF0000FF;
}

uint64_t PDAexclusionPDA_18028(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
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

  v6 = 255 * (v4 + v5) - 2 * v5 * v4;
  v7 = 255 * (a4 + a2) - a4 * a2;
  if (v6 >= 65152)
  {
    v8 = 65152;
  }

  else
  {
    v8 = v6 + 128;
  }

  v9 = (v8 + (v8 >> 8)) >> 8;
  if (v7 >= 65152)
  {
    v10 = 65152;
  }

  else
  {
    v10 = v7 + 128;
  }

  return (v9 | ((v10 + (v10 >> 8)) << 16)) & 0xFF0000FF;
}

uint64_t PDAhuePDA_18029(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (a1 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = a1;
  }

  v5 = (a4 ^ 0xFF) * v4;
  if (a4 == 255)
  {
    v5 = 0;
  }

  else
  {
    LOBYTE(v4) = (a4 * v4 + 128 + ((a4 * v4 + 128) >> 8)) >> 8;
  }

  if (a3 >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a3;
  }

  v7 = (a2 ^ 0xFF) * v6;
  if (a2 == 255)
  {
    v7 = 0;
  }

  v8 = v5 + v7;
  if (v8 >> 7 >= 0x1FD)
  {
    v9 = 65152;
  }

  else
  {
    v9 = v8 + 128;
  }

  return (v4 + ((v9 + (v9 >> 8)) >> 8)) | ((a4 + a2 - ((a4 * a2 + 128 + ((a4 * a2 + 128) >> 8)) >> 8)) << 24);
}

uint64_t PDAluminosityPDA_18031(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
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

  v6 = (a4 ^ 0xFF) * v5;
  if (a4 == 255)
  {
    v6 = 0;
  }

  if (a2 != 255)
  {
    v6 += (a2 ^ 0xFF) * v4;
    LOBYTE(v4) = (v4 * a2 + 128 + ((v4 * a2 + 128) >> 8)) >> 8;
  }

  if (v6 >> 7 >= 0x1FD)
  {
    v7 = 65152;
  }

  else
  {
    v7 = v6 + 128;
  }

  return (v4 + ((v7 + (v7 >> 8)) >> 8)) | ((a4 + a2 - ((a4 * a2 + 128 + ((a4 * a2 + 128) >> 8)) >> 8)) << 24);
}

void W8_shade_axial_W(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5, double a6, double a7, double a8)
{
  v8 = *(a1 + 280);
  v9 = *(a1 + 296) + ((*(a1 + 288) * (*(*(a1 + 272) + 4) * a3)) + (v8 * (*(*(a1 + 272) + 4) * a2)));
  v10 = a1 + 368;
  v11 = *(a1 + 368);
  v12 = (a3 >> 4) & 0xF0;
  v13 = v11 + v12;
  if (v11)
  {
    v14 = v11 + v12;
  }

  else
  {
    v14 = a1 + 368;
  }

  if (v11)
  {
    v15 = 15;
  }

  else
  {
    v15 = 0;
  }

  v17 = *(a1 + 336);
  LODWORD(a8) = *(a1 + 344);
  v18 = *(a1 + 304);
  v19 = *(a1 + 308);
  v20 = *(a1 + 320);
  v21 = *(a1 + 324);
  v24 = a1 + 144;
  v22 = *(a1 + 144);
  v23 = *(v24 + 8);
  v25 = *(a1 + 376);
  v26 = *(a1 + 360);
  if (v8 != 0.0)
  {
    if (v11)
    {
      v32 = (a2 >> 8) & 0xF;
    }

    else
    {
      LOBYTE(v32) = 0;
    }

    while (1)
    {
      v33 = v20;
      if (v9 >= v18)
      {
        v33 = v21;
        if (v9 <= v19)
        {
          v33 = (*&a8 * (v9 - v17));
        }
      }

      if ((v33 & 0x80000000) == 0)
      {
        break;
      }

      v34 = v25;
      if (v25)
      {
        goto LABEL_38;
      }

LABEL_39:
      LOBYTE(v32) = (v32 + 1) & v15;
      v9 = v8 + v9;
      v23 += 4;
      *v22 = v34;
      v22 = (v22 + 1);
      if (!--a4)
      {
        return;
      }
    }

    v34 = (v26 + 2 * (2 * v33));
LABEL_38:
    *v23 = (((*(v14 + v32) + v34[1]) << 16) | ((*(v14 + v32) + *v34) >> 8)) & 0xFF0000FF;
    LOBYTE(v34) = -1;
    goto LABEL_39;
  }

  if (v11)
  {
    v27 = v13;
  }

  else
  {
    v27 = v10;
  }

  if (v11)
  {
    LODWORD(v28) = ((a2 >> 8) + 1) & 0xF;
  }

  else
  {
    LODWORD(v28) = 0;
  }

  if (v11)
  {
    LODWORD(v29) = (a2 >> 8) & 0xF;
  }

  else
  {
    LODWORD(v29) = 0;
  }

  if (v11)
  {
    v30 = 15;
  }

  else
  {
    v30 = 0;
  }

  if (v9 >= v18)
  {
    v20 = v21;
    if (v9 <= v19)
    {
      v20 = (*&a8 * (v9 - v17));
    }
  }

  if ((v20 & 0x80000000) == 0 || v25)
  {
    v35 = (v26 + 2 * (2 * v20));
    if (v20 < 0)
    {
      v36 = v25;
    }

    else
    {
      v36 = v35;
    }

    v37 = *v36;
    v38 = v36[1];
    if (v11)
    {
      v39 = vdup_n_s32(v37);
      v40 = vdup_n_s32(v38);
      v41 = a4 + 4;
      do
      {
        LOBYTE(a8) = *(v27 + v29);
        BYTE4(a8) = *(v27 + v28);
        v29 = (v29 + 1) & v30;
        v42 = vand_s8(*&a8, 0xFF000000FFLL);
        v43 = vorr_s8((*&vshl_n_s32(vadd_s32(v40, v42), 0x10uLL) & 0xFF00FFFFFF00FFFFLL), (*&vshr_n_u32(vadd_s32(v39, v42), 8uLL) & 0xFFFFFEFFFFFFFEFFLL));
        *v23 = v43;
        v28 = (v28 + 1) & v30;
        v43.i8[0] = *(v27 + v29);
        v43.i8[4] = *(v27 + v28);
        v44 = vand_s8(v43, 0xFF000000FFLL);
        a8 = COERCE_DOUBLE(vorr_s8((*&vshl_n_s32(vadd_s32(v40, v44), 0x10uLL) & 0xFF00FFFFFF00FFFFLL), (*&vshr_n_u32(vadd_s32(v39, v44), 8uLL) & 0xFFFFFEFFFFFFFEFFLL)));
        *(v23 + 8) = a8;
        *v22++ = -1;
        v23 += 16;
        v41 -= 4;
      }

      while (v41 > 4);
    }

    else
    {
      v45 = vdupq_n_s32((v37 >> 8) | (BYTE1(v38) << 24));
      v46 = a4 + 4;
      do
      {
        *v23 = v45;
        v23 += 16;
        *v22++ = -1;
        v46 -= 4;
      }

      while (v46 > 4);
    }
  }

  else
  {
    if (a4 >= 4)
    {
      v31 = 4;
    }

    else
    {
      v31 = a4;
    }

    bzero(v22, ((a4 - v31 + 3) & 0xFFFFFFFC) + 4);
  }
}

uint64_t W8_shade_custom_W(uint64_t result, uint64_t a2, uint64_t a3, int a4, double a5, int32x4_t a6)
{
  v6 = *(*(result + 272) + 4);
  _S2 = v6 * a2;
  v8 = v6 * a3;
  _D0 = *(result + 280);
  *a6.i32 = *(result + 296) + ((*(result + 288) * v8) + (_D0.f32[0] * _S2));
  v10 = result + 368;
  v11 = *(result + 368);
  if (v11)
  {
    v10 = v11 + ((a3 >> 4) & 0xF0);
  }

  v12 = 15;
  if (!v11)
  {
    v12 = 0;
  }

  __asm { FMLA            S3, S2, V0.S[1] }

  v18 = *(result + 300) + _S3;
  v19 = *(result + 304);
  v20 = *(result + 336);
  v21 = *(result + 348);
  v22 = *(result + 344);
  v23 = *(result + 356);
  v24 = *(result + 376);
  v25 = *(result + 360);
  v26 = 2 * *(result + 48);
  v28 = *(result + 144);
  v27 = *(result + 152);
  if (v11)
  {
    v29 = (a2 >> 8) & 0xF;
  }

  else
  {
    v29 = 0;
  }

  *&a6.i32[1] = v18;
  do
  {
    v30 = vzip1q_s32(a6, a6);
    if ((vmaxv_u16(vtrn2_s16(vrev32_s16(vmovn_s32(vcgtq_f32(v19, v30))), vmovn_s32(vcgtq_f32(v30, v19)))) & 1) == 0)
    {
      v31 = (v25 + 2 * v26 * (v23 * (*&a6.i32[1] - v21)) + 4 * (v22 * (*a6.i32 - v20)));
LABEL_13:
      result = *(v10 + v29);
      *v27 = (((result + v31[1]) << 16) | ((result + *v31) >> 8)) & 0xFF0000FF;
      LOBYTE(v31) = -1;
      goto LABEL_14;
    }

    v31 = v24;
    if (v24)
    {
      goto LABEL_13;
    }

LABEL_14:
    v29 = (v29 + 1) & v12;
    *a6.i8 = vadd_f32(_D0, *a6.i8);
    ++v27;
    *v28++ = v31;
    --a4;
  }

  while (a4);
  return result;
}

void W8_shade_conic_W(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 280);
  v5 = *(*(a1 + 272) + 4);
  v6 = v5 * a2;
  v7 = v5 * a3;
  v8 = *(a1 + 296) + ((*(a1 + 288) * v7) + (v4 * v6));
  v9 = *(a1 + 368);
  if (v9)
  {
    v10 = v9 + ((a3 >> 4) & 0xF0);
  }

  else
  {
    v10 = a1 + 368;
  }

  if (v9)
  {
    v11 = 15;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a1 + 284);
  v13 = *(a1 + 300) + ((v7 * *(a1 + 292)) + (v12 * v6));
  v30 = *(a1 + 336);
  v31 = *(a1 + 304);
  v15 = *(a1 + 344);
  v16 = *(a1 + 360);
  v18 = *(a1 + 144);
  v17 = *(a1 + 152);
  if (v9)
  {
    v19 = (a2 >> 8) & 0xF;
  }

  else
  {
    v19 = 0;
  }

  v29 = *(a1 + 308) - *(a1 + 304);
  do
  {
    v20 = v15 * ((v31 + (((atan2f(v13, v8) * 0.15915) + 0.5) * v29)) - v30);
    v21 = vcvtms_s32_f32(v20);
    v22 = vcvtms_s32_f32(v15 + v20);
    v23 = ceilf(v20);
    v24 = v20 - floorf(v20);
    if (v20 < 0.0)
    {
      v21 = v22;
    }

    v25 = v20 <= v15;
    v26 = (v24 * 255.0) + 0.5;
    v27 = ceilf(v20 - v15);
    if (v25)
    {
      v27 = v23;
    }

    v28 = (v16 + 4 * v27);
    *v17++ = (((*(v10 + v19) + ((v26 * v28[1] + (255 - v26) * *(v16 + 2 * (2 * v21) + 2)) >> 8)) << 16) | ((*(v10 + v19) + ((v26 * *v28 + (255 - v26) * *(v16 + 2 * (2 * v21))) >> 8)) >> 8)) & 0xFF0000FF;
    v19 = (v19 + 1) & v11;
    v8 = v4 + v8;
    v13 = v12 + v13;
    *v18++ = -1;
    --a4;
  }

  while (a4);
}

void W8_shade_radial_W(uint64_t a1, unint64_t a2, unint64_t a3, int a4, double a5, double a6, double a7, double a8)
{
  v8 = *(a1 + 280);
  v9 = *(a1 + 284);
  v10 = *(*(a1 + 272) + 4);
  v11 = v10 * a2;
  v12 = v10 * a3;
  v13 = *(a1 + 296) + ((*(a1 + 288) * v12) + (v8 * v11));
  v14 = *(a1 + 300) + ((v12 * *(a1 + 292)) + (v9 * v11));
  v16 = *(a1 + 400);
  v17 = *(a1 + 336);
  v18 = *(a1 + 344);
  LODWORD(a8) = *(a1 + 304);
  v19 = *(a1 + 308);
  v20 = *(a1 + 324);
  v21 = v16[2];
  v22 = v16[4];
  v23 = v16[5];
  v24 = v16[7];
  v27 = a1 + 144;
  v25 = *(a1 + 144);
  v26 = *(v27 + 8);
  v28 = *(a1 + 376);
  v29 = *(a1 + 360);
  v30 = (a2 >> 8) & 0xF;
  if (v21 != 0.0 || v24 != 0.0 || v9 != 0.0)
  {
    v40 = *(a1 + 320);
    v41 = v16[3];
    v42 = v16[6];
    v43 = v16[8];
    v44 = a1 + 368;
    v45 = *(a1 + 368);
    v46 = v45 + ((a3 >> 4) & 0xF0);
    v34 = v45 == 0;
    v47 = 15;
    if (v34)
    {
      v47 = 0;
      v30 = 0;
    }

    else
    {
      v44 = v46;
    }

    v48 = -v42;
    v49 = v19 - *&a8;
    while (1)
    {
      v50 = v48 + ((v13 + v13) * v21);
      v51 = ((v14 * v14) + (v13 * v13)) - v24;
      if (v23 == 0.0)
      {
        v58 = v51 / v50;
      }

      else
      {
        v52 = ((v23 * -4.0) * v51) + (v50 * v50);
        if (v52 < 0.0)
        {
          goto LABEL_51;
        }

        v53 = sqrtf(v52);
        v54 = v43 * (v50 - v53);
        v55 = v50 + v53;
        v56 = v43 * v55;
        v57 = (v43 * v55) <= v54;
        if ((v43 * v55) <= v54)
        {
          v58 = v43 * v55;
        }

        else
        {
          v58 = v54;
        }

        if (v57)
        {
          v56 = v54;
        }

        if (v56 < 0.0)
        {
          v59 = v56 < v41;
LABEL_37:
          v60 = v40;
          if (v59)
          {
            goto LABEL_51;
          }

LABEL_38:
          if ((v60 & 0x80000000) == 0)
          {
            goto LABEL_50;
          }

          goto LABEL_51;
        }

        if (v56 <= 1.0)
        {
          v61 = *&a8 + (v56 * v49);
          goto LABEL_49;
        }

        if ((v20 & 0x80000000) == 0)
        {
          v60 = v20;
          if (v56 <= v22)
          {
LABEL_50:
            v62 = (v29 + 2 * (2 * v60));
LABEL_52:
            *v26 = (((*(v44 + v30) + v62[1]) << 16) | ((*(v44 + v30) + *v62) >> 8)) & 0xFF0000FF;
            LOBYTE(v62) = -1;
            goto LABEL_53;
          }
        }
      }

      if (v58 < 0.0)
      {
        v59 = v58 < v41;
        goto LABEL_37;
      }

      if (v58 > 1.0)
      {
        v60 = v20;
        if (v58 > v22)
        {
          goto LABEL_51;
        }

        goto LABEL_38;
      }

      v61 = *&a8 + (v58 * v49);
LABEL_49:
      v60 = (v18 * (v61 - v17));
      if ((v60 & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

LABEL_51:
      v62 = v28;
      if (v28)
      {
        goto LABEL_52;
      }

LABEL_53:
      v30 = (v30 + 1) & v47;
      v13 = v8 + v13;
      v14 = v9 + v14;
      v26 += 4;
      *v25++ = v62;
      if (!--a4)
      {
        return;
      }
    }
  }

  v31 = a1 + 368;
  v32 = *(a1 + 368);
  LODWORD(v33) = (BYTE1(a2) + 1) & 0xF;
  v34 = v32 == 0;
  if (v32)
  {
    v35 = v32 + ((a3 >> 4) & 0xF0);
  }

  else
  {
    v35 = v31;
  }

  if (v34)
  {
    LODWORD(v33) = 0;
    LODWORD(a2) = 0;
  }

  else
  {
    LODWORD(a2) = (a2 >> 8) & 0xF;
  }

  if (v34)
  {
    v36 = 0;
  }

  else
  {
    v36 = 15;
  }

  v37 = v14 * v14;
  v38 = -v23;
  if (v37 <= -v23)
  {
    v63 = fabsf(v16[8]);
    v64 = v23 * -4.0;
    v65 = v19 - *&a8;
    v66 = (v29 + 4 * v20);
    v67 = a4 + 2;
    while (1)
    {
      v68 = v37 + (v13 * v13);
      v69 = v8 + v13;
      v70 = v37 + (v69 * v69);
      if (v68 > v38 && v70 > v38)
      {
        if ((v20 & 0x80000000) != 0)
        {
          if (!v28)
          {
            v93 = 0;
            LOBYTE(v88) = 0;
            goto LABEL_77;
          }

          v79 = *v28;
          v80 = v28[1];
        }

        else
        {
          v79 = *v66;
          v80 = v66[1];
        }

        v89 = *(v35 + a2);
        v90 = v89 + v79;
        v91 = v89 + v80;
        v92 = *(v35 + v33);
        v86 = v92 + v79;
        v87 = v92 + v80;
        LODWORD(v88) = (v90 >> 8) | (v91 << 16);
        goto LABEL_75;
      }

      v72 = sqrtf(v64 * v70);
      v73 = v63 * sqrtf(v64 * v68);
      v74 = v63 * v72;
      v75 = (v18 * ((*&a8 + (v73 * v65)) - v17));
      v76 = (v18 * ((*&a8 + ((v63 * v72) * v65)) - v17));
      if (v73 <= 1.0 && v74 <= 1.0)
      {
        v88 = (v29 + 4 * v75);
        v81 = (v29 + 4 * v76);
        v82 = *v81;
        v83 = v81[1];
        LODWORD(v81) = *(v35 + a2);
        v84 = v81 + *v88;
        LODWORD(v88) = v81 + v88[1];
        v85 = *(v35 + v33);
        v86 = v85 + v82;
        v87 = v85 + v83;
        LODWORD(v88) = (v88 << 16) | (v84 >> 8);
LABEL_75:
        *v26 = v88 & 0xFF0000FF;
        LOBYTE(v88) = -1;
        goto LABEL_76;
      }

      if (v73 <= 1.0)
      {
        if ((v75 & 0x80000000) == 0)
        {
          v78 = (2 * v75);
LABEL_81:
          v88 = (v29 + 2 * v78);
LABEL_83:
          *v26 = (((*(v35 + a2) + v88[1]) << 16) | ((*(v35 + a2) + *v88) >> 8)) & 0xFF0000FF;
          LOBYTE(v88) = -1;
          goto LABEL_84;
        }
      }

      else if (v73 <= v22)
      {
        v78 = 2 * v20;
        if ((v20 & 0x80000000) == 0)
        {
          goto LABEL_81;
        }
      }

      v88 = v28;
      if (v28)
      {
        goto LABEL_83;
      }

LABEL_84:
      if (v74 <= 1.0)
      {
        if (v76 < 0)
        {
          goto LABEL_91;
        }

        v94 = (2 * v76);
      }

      else if (v74 > v22 || (v94 = 2 * v20, (v20 & 0x80000000) != 0))
      {
LABEL_91:
        if (!v28)
        {
          v93 = 0;
          goto LABEL_77;
        }

        v98 = *(v35 + v33);
        v86 = v98 + *v28;
        v87 = v98 + v28[1];
        goto LABEL_76;
      }

      v95 = (v29 + 2 * v94);
      v96 = v95[1];
      v97 = *(v35 + v33);
      v86 = v97 + *v95;
      v87 = v97 + v96;
LABEL_76:
      *(v26 + 4) = ((v86 >> 8) | (v87 << 16)) & 0xFF0000FF;
      v93 = -1;
LABEL_77:
      v13 = v8 + v69;
      LOBYTE(a2) = (a2 + 1) & v36;
      LOBYTE(v33) = (v33 + 1) & v36;
      v26 += 8;
      *v25 = v88;
      v25[1] = v93;
      v25 += 2;
      v67 -= 2;
      if (v67 <= 2)
      {
        return;
      }
    }
  }

  if (v28 || (v20 & 0x80000000) == 0)
  {
    v99 = (v29 + 4 * v20);
    if (v20 >= 0)
    {
      v100 = v99;
    }

    else
    {
      v100 = v28;
    }

    v101 = vdup_n_s32(v100[1]);
    v102 = vdup_n_s32(*v100);
    v103 = a4 + 4;
    do
    {
      LOBYTE(a8) = *(v35 + a2);
      BYTE4(a8) = *(v35 + v33);
      a2 = (a2 + 1) & v36;
      v104 = vand_s8(*&a8, 0xFF000000FFLL);
      v105 = vorr_s8((*&vshl_n_s32(vadd_s32(v101, v104), 0x10uLL) & 0xFF00FFFFFF00FFFFLL), (*&vshr_n_u32(vadd_s32(v102, v104), 8uLL) & 0xFFFFFEFFFFFFFEFFLL));
      *v26 = v105;
      v33 = (v33 + 1) & v36;
      v105.i8[0] = *(v35 + a2);
      v105.i8[4] = *(v35 + v33);
      v106 = vand_s8(v105, 0xFF000000FFLL);
      a8 = COERCE_DOUBLE(vorr_s8((*&vshl_n_s32(vadd_s32(v101, v106), 0x10uLL) & 0xFF00FFFFFF00FFFFLL), (*&vshr_n_u32(vadd_s32(v102, v106), 8uLL) & 0xFFFFFEFFFFFFFEFFLL)));
      *(v26 + 8) = a8;
      *v25 = -1;
      v25 += 4;
      v26 += 16;
      v103 -= 4;
    }

    while (v103 > 4);
  }

  else
  {
    if (a4 >= 4)
    {
      v39 = 4;
    }

    else
    {
      v39 = a4;
    }

    bzero(v25, ((a4 - v39 + 3) & 0xFFFFFFFC) + 4);
  }
}

void W8_image_mark_image(uint64_t a1, uint64_t a2, int a3, int a4, void (*a5)(void, void))
{
  v78[1] = *MEMORY[0x1E69E9840];
  v8.n128_u64[1] = 0;
  v67 = 0u;
  v68 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v69 = 0u;
  v66[0] = a3;
  v66[1] = a4;
  v8.n128_u64[0] = *(a2 + 184);
  v8.n128_f32[0] = (v8.n128_f32[0] * 255.0) + 0.5;
  LOBYTE(v67) = v8.n128_f32[0];
  v9 = *(a1 + 28);
  *&v68 = v9;
  if (*(a1 + 48))
  {
    v10 = *(a1 + 32);
  }

  else
  {
    v10 = 0;
  }

  *&v69 = v10;
  v11 = *(a2 + 120);
  v12 = *(a2 + 20);
  v13 = HIBYTE(v12);
  v14 = BYTE2(v12);
  if (v11)
  {
    v15 = *(a2 + 24);
    v16 = (a2 + 104);
    v17 = (a2 + 72);
    v18 = (a2 + 88);
    v19 = v13;
  }

  else
  {
    v15 = *(a2 + 8) >> 25;
    v16 = (a2 + 96);
    v17 = (a2 + 64);
    v18 = (a2 + 80);
    v11 = *(a2 + 112);
    v19 = v14;
  }

  v20 = *v18;
  v21 = *v17;
  v22 = *v16;
  v23 = v19;
  *(&v70 + 1) = v19;
  *(&v69 + 1) = v22;
  *(&v74 + 1) = v15;
  *(&v73 + 1) = v20;
  *(&v72 + 1) = v21;
  *(&v71 + 1) = v11;
  v24 = *(a2 + 128);
  if (v24)
  {
    v25 = *(a2 + 8) >> 25;
    v26 = (a2 + 96);
    v27 = (a2 + 64);
    v28 = (a2 + 80);
    v13 = v14;
  }

  else
  {
    v25 = *(a2 + 24);
    v26 = (a2 + 104);
    v27 = (a2 + 72);
    v28 = (a2 + 88);
    v24 = *(a2 + 136);
  }

  v65 = &v61;
  v29 = *v28;
  v30 = *v27;
  v31 = *v26;
  *&v71 = v13;
  *&v70 = v31;
  *&v75 = v25;
  *&v74 = v29;
  *&v73 = v30;
  *&v72 = v24;
  v32 = *(a1 + 4);
  v33 = MEMORY[0x1EEE9AC00](16 * v32, v8);
  v64 = &v61 - v35 - 15;
  if (v36 <= 0xFFFFFFFFFFFFFFELL)
  {
    v38 = &v61 - v35 - 15;
  }

  else
  {
    v38 = 0;
  }

  if (v36 - 0xFFFFFFFFFFFFFFFLL >= 0xF000000000000402)
  {
    v62 = v34;
    v63 = a5;
    v39 = v37;
    v33 = malloc_type_malloc(v33, 0xC166A778uLL);
    v34 = v62;
    v37 = v39;
    a5 = v63;
    v38 = v33;
  }

  *(&v75 + 1) = v38;
  if (v38)
  {
    if (*(a2 + 176))
    {
      if (v32 >= 1)
      {
        v40 = (v38 + 8);
        v41 = v37 - v22;
        do
        {
          if (((v22 - v34) | v41) < 0)
          {
            v45 = 0;
          }

          else
          {
            v42 = ((v22 & ~(-1 << v23)) >> (v23 - 4)) & 0xF;
            v43 = weights_21890[v42];
            if (v42 - 7 >= 9)
            {
              v44 = -v15;
            }

            else
            {
              v44 = v15;
            }

            v45 = v43 & 0xF | (16 * v44);
          }

          *(v40 - 1) = v15 * (v22 >> v23);
          *v40 = v45;
          v40 += 2;
          v22 += v11;
          v41 -= v11;
          --v32;
        }

        while (v32);
      }
    }

    else if (v32 >= 1)
    {
      v46 = v38 + 8;
      do
      {
        *(v46 - 1) = v15 * (v22 >> v23);
        *v46 = 0;
        v46 += 2;
        v22 += v11;
        --v32;
      }

      while (v32);
    }

    v47 = v38;
    v48 = *(a1 + 4);
    v49 = *(a1 + 8);
    v76 = v49;
    v77 = v48;
    v50 = *(a1 + 136);
    if (v50)
    {
      v51 = *(a1 + 104);
      LODWORD(v78[0]) = *(a1 + 108);
      HIDWORD(v78[0]) = v51;
      shape_enum_clip_alloc(v33, v34, v50, 1, 1, 1, v51, v78[0], v48, v49);
      v53 = v52;
      if (v52)
      {
        goto LABEL_36;
      }
    }

    v54 = 0;
    v55 = 0;
    v53 = 0;
    v78[0] = 0;
    while (1)
    {
      v56 = *(a1 + 16) + v55;
      v57 = *(a1 + 48);
      v58 = *(a1 + 12) + v54;
      v59 = *(a1 + 40) + v9 * v56 + v58;
      v60 = v57 + v10 * v56 + v58;
      if (!v57)
      {
        v60 = 0;
      }

      *(&v67 + 1) = v59;
      *(&v68 + 1) = v60;
      a5(a2, v66);
      if (!v53)
      {
        break;
      }

LABEL_36:
      if (!shape_enum_clip_next(v53, v78 + 1, v78, &v77, &v76))
      {
        free(v53);
        break;
      }

      v55 = v78[0];
      v54 = HIDWORD(v78[0]);
      v9 = v68;
      v10 = v69;
    }

    if (v47 != v64)
    {
      free(v47);
    }
  }
}

uint64_t W8_image_mark_rgb32(uint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  if (*(result + 40))
  {
    v6 = 0;
  }

  else
  {
    v6 = 255;
  }

  v7 = *(a2 + 2);
  v8 = *(a2 + 4);
  if (v8)
  {
    v121 = *(a2 + 5) - a5;
  }

  else
  {
    v121 = 0;
  }

  v9 = *(a2 + 8);
  v10 = a2[1];
  v120 = *a2;
  v119 = *(a2 + 3) - a5;
  v11 = v8 != 0;
  v13 = *(a2 + 17);
  v12 = *(a2 + 18);
  v14 = *(a2 + 9);
  v117 = *(a2 + 11);
  v118 = v14;
  v15 = *(a2 + 7) + v117 * a4;
  v16 = *(result + 32);
  v17 = v16 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3);
  if (*(result + 176))
  {
    v113 = *(a2 + 15);
    v114 = *(a2 + 13);
    v111 = v14 - 4;
    v112 = ~(-1 << v14);
    v18 = (v17 - 4);
    v19 = v9 ^ 0xFF;
    v115 = *(a2 + 17);
    v109 = a5;
    v110 = -v13;
    v108 = v12 + 16 * a3 + 8;
    while (1)
    {
      if (((v113 - v15) | (v15 - v114)) < 0)
      {
        v22 = 0;
        v21 = 0;
      }

      else
      {
        v20 = ((v15 & v112) >> v111) & 0xF;
        v21 = (v20 - 7) >= 9 ? v110 : v13;
        v22 = weights_21890[v20] & 0xF;
      }

      v23 = *(result + 32) + (v15 >> v118) * v13;
      if (v120 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v25 = v108;
        v24 = v109;
        while (1)
        {
          v27 = *(v25 - 1);
          v26 = *v25;
          v28 = v23 + v27;
          if (v18 >= v23 + v27)
          {
            v29 = (v23 + v27);
          }

          else
          {
            v29 = v18;
          }

          if (v29 < v16)
          {
            v29 = v16;
          }

          v30 = *v29;
          v31 = v26 & 0xF;
          if ((v26 & 0xF) != 0)
          {
            break;
          }

          if (v22)
          {
            v42 = (v28 + v21);
            if (v18 < v28 + v21)
            {
              v42 = v18;
            }

            if (v42 < v16)
            {
              v42 = v16;
            }

            v43 = BLEND8_21892[v22];
            v40 = v30 - ((v43 & v30) >> v22);
            v41 = (v43 & *v42) >> v22;
            goto LABEL_46;
          }

LABEL_47:
          v44 = __ROL4__(v30, v10);
          v45 = v44 | v6;
          v46 = (((v44 >> 23) & 0x1FE) + BYTE1(v44) + (((v44 >> 8) & 0xFF00) >> 6) + (((v44 >> 8) & 0xFF00) >> 8)) >> 3;
          v47 = v46 | (v45 << 24);
          v48 = (v46 & 0xFF00FFFF | (v45 << 16)) * v19;
          v49 = v47 - ((v48 + 65537 + ((v48 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v48 + 1 + BYTE1(v48)) >> 8));
          if (v9 == 255)
          {
            v49 = v47;
          }

          *v7 = v49;
          if (v8)
          {
            *v8 = HIBYTE(v49);
          }

          v25 += 2;
          ++v7;
          v8 += v11;
          if (!--v24)
          {
            goto LABEL_97;
          }
        }

        v32 = (v28 + (v26 >> 4));
        if (v18 < v32)
        {
          v32 = v18;
        }

        if (v32 < v16)
        {
          v32 = v16;
        }

        v33 = *v32;
        if (v22)
        {
          v34 = (v28 + v21);
          if (v18 >= v34)
          {
            v35 = v34;
          }

          else
          {
            v35 = v18;
          }

          if (v35 < v16)
          {
            v35 = v16;
          }

          v36 = *v35;
          v37 = (v34 + (v26 >> 4));
          if (v18 < v37)
          {
            v37 = v18;
          }

          if (v37 < v16)
          {
            v37 = v16;
          }

          v38 = BLEND8_21892[v22];
          v30 = v30 - ((v38 & v30) >> v22) + ((v38 & v36) >> v22);
          v33 = v33 - ((v38 & v33) >> v22) + ((v38 & *v37) >> v22);
        }

        v39 = BLEND8_21892[*v25 & 0xF];
        v40 = v30 - ((v39 & v30) >> v31);
        v41 = (v39 & v33) >> v31;
LABEL_46:
        v30 = v40 + v41;
        goto LABEL_47;
      }

LABEL_97:
      v7 += v119;
      v8 += v121;
      v15 += v117;
      --a6;
      v13 = v115;
      if (!a6)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_97;
    }

    v51 = v108;
    v50 = v109;
    while (1)
    {
      v53 = *(v51 - 1);
      v52 = *v51;
      v54 = v23 + v53;
      if (v18 >= v23 + v53)
      {
        v55 = (v23 + v53);
      }

      else
      {
        v55 = v18;
      }

      if (v55 < v16)
      {
        v55 = v16;
      }

      v56 = *v55;
      v57 = v52 & 0xF;
      if ((v52 & 0xF) != 0)
      {
        break;
      }

      if (v22)
      {
        v68 = (v54 + v21);
        if (v18 < v54 + v21)
        {
          v68 = v18;
        }

        if (v68 < v16)
        {
          v68 = v16;
        }

        v69 = BLEND8_21892[v22];
        v66 = v56 - ((v69 & v56) >> v22);
        v67 = (v69 & *v68) >> v22;
        goto LABEL_83;
      }

LABEL_84:
      v70 = __ROL4__(v56, v10);
      v71 = v70 | v6;
      v72 = (((v70 >> 23) & 0x1FE) + BYTE1(v70) + (((v70 >> 8) & 0xFF00) >> 6) + (((v70 >> 8) & 0xFF00) >> 8)) >> 3;
      v73 = v72 | (v71 << 24);
      v74 = (v72 & 0xFF00FFFF | (v71 << 16)) * v19;
      v75 = v73 - ((v74 + 65537 + ((v74 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v74 + 1 + BYTE1(v74)) >> 8));
      if (v9 == 255)
      {
        v75 = v73;
      }

      v76 = HIBYTE(v75);
      if (v8)
      {
        if (v76)
        {
          if (v76 == 255)
          {
            *v7 = v75;
            LOBYTE(v75) = -1;
          }

          else
          {
            v77 = (*v7 | (*v8 << 16)) * (v76 ^ 0xFF);
            v78 = ((v77 + 65537 + ((v77 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v77 + 1 + BYTE1(v77)) >> 8)) + (v75 & 0xFF0000FF);
            *v7 = v78;
            v75 = HIBYTE(v78);
          }

          *v8 = v75;
        }
      }

      else if (v76)
      {
        if (v76 != 255)
        {
          v75 += ((v76 ^ 0xFF) * *v7 + (((v76 ^ 0xFF) * *v7) >> 8) + 1) >> 8;
        }

        *v7 = v75;
      }

      v51 += 2;
      ++v7;
      v8 += v11;
      if (!--v50)
      {
        goto LABEL_97;
      }
    }

    v58 = (v54 + (v52 >> 4));
    if (v18 < v58)
    {
      v58 = v18;
    }

    if (v58 < v16)
    {
      v58 = v16;
    }

    v59 = *v58;
    if (v22)
    {
      v60 = v54 + v21;
      if (v18 >= v54 + v21)
      {
        v61 = (v54 + v21);
      }

      else
      {
        v61 = v18;
      }

      if (v61 < v16)
      {
        v61 = v16;
      }

      v62 = *v61;
      v63 = (v60 + (v52 >> 4));
      if (v18 < v63)
      {
        v63 = v18;
      }

      if (v63 < v16)
      {
        v63 = v16;
      }

      v64 = BLEND8_21892[v22];
      v56 = v56 - ((v64 & v56) >> v22) + ((v64 & v62) >> v22);
      v59 = v59 - ((v64 & v59) >> v22) + ((v64 & *v63) >> v22);
    }

    v65 = BLEND8_21892[*v51 & 0xF];
    v66 = v56 - ((v65 & v56) >> v57);
    v67 = (v65 & v59) >> v57;
LABEL_83:
    v56 = v66 + v67;
    goto LABEL_84;
  }

  v79 = (v12 + 16 * a3);
  v80 = v17 - 4;
  v81 = v9 ^ 0xFF;
  v83 = a5;
  do
  {
    v84 = *(result + 32) + (v15 >> v14) * v13;
    if (v120 == 1)
    {
      if (a5 >= 1)
      {
        v85 = v79;
        v86 = v83;
        do
        {
          v87 = *v85;
          v85 += 2;
          v88 = (v84 + v87);
          if (v80 < v84 + v87)
          {
            v88 = v80;
          }

          if (v88 < *(result + 32))
          {
            v88 = *(result + 32);
          }

          v89 = __ROL4__(*v88, v10);
          v90 = v89 | v6;
          v91 = (((v89 >> 23) & 0x1FE) + BYTE1(v89) + (((v89 >> 8) & 0xFF00) >> 6) + (((v89 >> 8) & 0xFF00) >> 8)) >> 3;
          v92 = v91 | (v90 << 24);
          v93 = (v91 & 0xFF00FFFF | (v90 << 16)) * v81;
          v94 = v92 - ((v93 + 65537 + ((v93 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v93 + 1 + BYTE1(v93)) >> 8));
          if (v9 == 255)
          {
            v94 = v92;
          }

          *v7 = v94;
          if (v8)
          {
            *v8 = HIBYTE(v94);
          }

          ++v7;
          v8 += v11;
          --v86;
        }

        while (v86);
      }
    }

    else
    {
      v95 = v79;
      v96 = v83;
      if (a5 >= 1)
      {
        do
        {
          v97 = *v95;
          v95 += 2;
          v98 = (v84 + v97);
          if (v80 < v84 + v97)
          {
            v98 = v80;
          }

          if (v98 < *(result + 32))
          {
            v98 = *(result + 32);
          }

          v99 = __ROL4__(*v98, v10);
          v100 = v99 | v6;
          v101 = (((v99 >> 23) & 0x1FE) + BYTE1(v99) + (((v99 >> 8) & 0xFF00) >> 6) + (((v99 >> 8) & 0xFF00) >> 8)) >> 3;
          v102 = v101 | (v100 << 24);
          v103 = (v101 & 0xFF00FFFF | (v100 << 16)) * v81;
          v104 = v102 - ((v103 + 65537 + ((v103 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v103 + 1 + BYTE1(v103)) >> 8));
          if (v9 == 255)
          {
            v104 = v102;
          }

          v105 = HIBYTE(v104);
          if (v8)
          {
            if (v105)
            {
              if (v105 == 255)
              {
                *v7 = v104;
                *v8 = -1;
              }

              else
              {
                v106 = (*v7 | (*v8 << 16)) * (v105 ^ 0xFF);
                v107 = ((v106 + 65537 + ((v106 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v106 + 1 + BYTE1(v106)) >> 8)) + (v104 & 0xFF0000FF);
                *v7 = v107;
                *v8 = HIBYTE(v107);
              }
            }
          }

          else if (v105)
          {
            if (v105 != 255)
            {
              v104 += ((v105 ^ 0xFF) * *v7 + (((v105 ^ 0xFF) * *v7) >> 8) + 1) >> 8;
            }

            *v7 = v104;
          }

          ++v7;
          v8 += v11;
          --v96;
        }

        while (v96);
      }
    }

    v7 += v119;
    v8 += v121;
    v15 += v117;
    --a6;
  }

  while (a6);
  return result;
}

uint64_t W8_image_mark_RGB32(uint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  if (*(result + 40))
  {
    v6 = 0;
  }

  else
  {
    v6 = 255;
  }

  v7 = *(a2 + 2);
  v8 = *(a2 + 4);
  if (v8)
  {
    v120 = *(a2 + 5) - a5;
  }

  else
  {
    v120 = 0;
  }

  v9 = *(a2 + 8);
  v10 = a2[1];
  v119 = *a2;
  v118 = *(a2 + 3) - a5;
  v11 = v8 != 0;
  v13 = *(a2 + 17);
  v12 = *(a2 + 18);
  v14 = *(a2 + 9);
  v117 = *(a2 + 11);
  v15 = *(a2 + 7) + v117 * a4;
  v16 = *(result + 32);
  v17 = v16 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3);
  if (*(result + 176))
  {
    v112 = *(a2 + 15);
    v113 = *(a2 + 13);
    v110 = v14 - 4;
    v111 = ~(-1 << v14);
    v18 = (v17 - 4);
    v19 = v9 ^ 0xFF;
    v115 = *(a2 + 17);
    v108 = a5;
    v109 = -v13;
    v107 = v12 + 16 * a3 + 8;
    v114 = *(a2 + 9);
    while (1)
    {
      if (((v112 - v15) | (v15 - v113)) < 0)
      {
        v22 = 0;
        v21 = 0;
      }

      else
      {
        v20 = ((v15 & v111) >> v110) & 0xF;
        v21 = (v20 - 7) >= 9 ? v109 : v13;
        v22 = weights_21890[v20] & 0xF;
      }

      v23 = *(result + 32) + (v15 >> v14) * v13;
      if (v119 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v25 = v107;
        v24 = v108;
        while (1)
        {
          v27 = *(v25 - 1);
          v26 = *v25;
          v28 = v23 + v27;
          if (v18 >= v23 + v27)
          {
            v29 = (v23 + v27);
          }

          else
          {
            v29 = v18;
          }

          if (v29 < v16)
          {
            v29 = v16;
          }

          v30 = bswap32(*v29);
          v31 = v26 & 0xF;
          if ((v26 & 0xF) != 0)
          {
            break;
          }

          if (v22)
          {
            v42 = (v28 + v21);
            if (v18 < v28 + v21)
            {
              v42 = v18;
            }

            if (v42 < v16)
            {
              v42 = v16;
            }

            v43 = BLEND8_21892[v22];
            v40 = v30 - ((v43 & v30) >> v22);
            v41 = (bswap32(*v42) & v43) >> v22;
            goto LABEL_46;
          }

LABEL_47:
          v44 = __ROL4__(v30, v10);
          v45 = v44 | v6;
          v46 = (((v44 >> 23) & 0x1FE) + BYTE1(v44) + (((v44 >> 8) & 0xFF00) >> 6) + (((v44 >> 8) & 0xFF00) >> 8)) >> 3;
          v47 = v46 | (v45 << 24);
          v48 = (v46 & 0xFF00FFFF | (v45 << 16)) * v19;
          v49 = v47 - ((v48 + 65537 + ((v48 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v48 + 1 + BYTE1(v48)) >> 8));
          if (v9 == 255)
          {
            v49 = v47;
          }

          *v7 = v49;
          if (v8)
          {
            *v8 = HIBYTE(v49);
          }

          v25 += 2;
          ++v7;
          v8 += v11;
          if (!--v24)
          {
            goto LABEL_97;
          }
        }

        v32 = (v28 + (v26 >> 4));
        if (v18 < v32)
        {
          v32 = v18;
        }

        if (v32 < v16)
        {
          v32 = v16;
        }

        v33 = bswap32(*v32);
        if (v22)
        {
          v34 = (v28 + v21);
          if (v18 >= v34)
          {
            v35 = v34;
          }

          else
          {
            v35 = v18;
          }

          if (v35 < v16)
          {
            v35 = v16;
          }

          v36 = bswap32(*v35);
          v37 = (v34 + (v26 >> 4));
          if (v18 < v37)
          {
            v37 = v18;
          }

          if (v37 < v16)
          {
            v37 = v16;
          }

          v38 = BLEND8_21892[v22];
          v30 = v30 - ((v38 & v30) >> v22) + ((v38 & v36) >> v22);
          v33 = v33 - ((v38 & v33) >> v22) + ((bswap32(*v37) & v38) >> v22);
        }

        v39 = BLEND8_21892[*v25 & 0xF];
        v40 = v30 - ((v39 & v30) >> v31);
        v41 = (v39 & v33) >> v31;
LABEL_46:
        v30 = v40 + v41;
        goto LABEL_47;
      }

LABEL_97:
      v7 += v118;
      v8 += v120;
      v15 += v117;
      --a6;
      LOBYTE(v14) = v114;
      v13 = v115;
      if (!a6)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_97;
    }

    v51 = v107;
    v50 = v108;
    while (1)
    {
      v53 = *(v51 - 1);
      v52 = *v51;
      v54 = v23 + v53;
      if (v18 >= v23 + v53)
      {
        v55 = (v23 + v53);
      }

      else
      {
        v55 = v18;
      }

      if (v55 < v16)
      {
        v55 = v16;
      }

      v56 = bswap32(*v55);
      v57 = v52 & 0xF;
      if ((v52 & 0xF) != 0)
      {
        break;
      }

      if (v22)
      {
        v67 = (v54 + v21);
        if (v18 < v54 + v21)
        {
          v67 = v18;
        }

        if (v67 < v16)
        {
          v67 = v16;
        }

        v68 = BLEND8_21892[v22];
        v65 = v56 - ((v68 & v56) >> v22);
        v66 = (bswap32(*v67) & v68) >> v22;
        goto LABEL_83;
      }

LABEL_84:
      v69 = __ROL4__(v56, v10);
      v70 = v69 | v6;
      v71 = (((v69 >> 23) & 0x1FE) + BYTE1(v69) + (((v69 >> 8) & 0xFF00) >> 6) + (((v69 >> 8) & 0xFF00) >> 8)) >> 3;
      v72 = v71 | (v70 << 24);
      v73 = (v71 & 0xFF00FFFF | (v70 << 16)) * v19;
      v74 = v72 - ((v73 + 65537 + ((v73 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v73 + 1 + BYTE1(v73)) >> 8));
      if (v9 == 255)
      {
        v74 = v72;
      }

      v75 = HIBYTE(v74);
      if (v8)
      {
        if (v75)
        {
          if (v75 == 255)
          {
            *v7 = v74;
            LOBYTE(v74) = -1;
          }

          else
          {
            v76 = (*v7 | (*v8 << 16)) * (v75 ^ 0xFF);
            v77 = ((v76 + 65537 + ((v76 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v76 + 1 + BYTE1(v76)) >> 8)) + (v74 & 0xFF0000FF);
            *v7 = v77;
            v74 = HIBYTE(v77);
          }

          *v8 = v74;
        }
      }

      else if (v75)
      {
        if (v75 != 255)
        {
          v74 += ((v75 ^ 0xFF) * *v7 + (((v75 ^ 0xFF) * *v7) >> 8) + 1) >> 8;
        }

        *v7 = v74;
      }

      v51 += 2;
      ++v7;
      v8 += v11;
      if (!--v50)
      {
        goto LABEL_97;
      }
    }

    v58 = (v54 + (v52 >> 4));
    if (v18 < v58)
    {
      v58 = v18;
    }

    if (v58 < v16)
    {
      v58 = v16;
    }

    v59 = bswap32(*v58);
    if (v22)
    {
      if (v18 >= v54 + v21)
      {
        v60 = (v54 + v21);
      }

      else
      {
        v60 = v18;
      }

      if (v60 < v16)
      {
        v60 = v16;
      }

      v61 = bswap32(*v60);
      v62 = (v54 + v21 + (v52 >> 4));
      if (v18 < v62)
      {
        v62 = v18;
      }

      if (v62 < v16)
      {
        v62 = v16;
      }

      v63 = BLEND8_21892[v22];
      v56 = v56 - ((v63 & v56) >> v22) + ((v63 & v61) >> v22);
      v59 = v59 - ((v63 & v59) >> v22) + ((bswap32(*v62) & v63) >> v22);
    }

    v64 = BLEND8_21892[*v51 & 0xF];
    v65 = v56 - ((v64 & v56) >> v57);
    v66 = (v64 & v59) >> v57;
LABEL_83:
    v56 = v65 + v66;
    goto LABEL_84;
  }

  v78 = (v12 + 16 * a3);
  v79 = (v17 - 4);
  v80 = v9 ^ 0xFF;
  v82 = a5;
  do
  {
    v83 = *(result + 32) + (v15 >> v14) * v13;
    if (v119 == 1)
    {
      if (a5 >= 1)
      {
        v84 = v78;
        v85 = v82;
        do
        {
          v86 = *v84;
          v84 += 2;
          v87 = (v83 + v86);
          if (v79 < v83 + v86)
          {
            v87 = v79;
          }

          if (v87 < *(result + 32))
          {
            v87 = *(result + 32);
          }

          v88 = __ROL4__(bswap32(*v87), v10);
          v89 = v88 | v6;
          v90 = (((v88 >> 23) & 0x1FE) + BYTE1(v88) + (((v88 >> 8) & 0xFF00) >> 6) + (((v88 >> 8) & 0xFF00) >> 8)) >> 3;
          v91 = v90 | (v89 << 24);
          v92 = (v90 & 0xFF00FFFF | (v89 << 16)) * v80;
          v93 = v91 - ((v92 + 65537 + ((v92 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v92 + 1 + BYTE1(v92)) >> 8));
          if (v9 == 255)
          {
            v93 = v91;
          }

          *v7 = v93;
          if (v8)
          {
            *v8 = HIBYTE(v93);
          }

          ++v7;
          v8 += v11;
          --v85;
        }

        while (v85);
      }
    }

    else
    {
      v94 = v78;
      v95 = v82;
      if (a5 >= 1)
      {
        do
        {
          v96 = *v94;
          v94 += 2;
          v97 = (v83 + v96);
          if (v79 < v83 + v96)
          {
            v97 = v79;
          }

          if (v97 < *(result + 32))
          {
            v97 = *(result + 32);
          }

          v98 = __ROL4__(bswap32(*v97), v10);
          v99 = v98 | v6;
          v100 = (((v98 >> 23) & 0x1FE) + BYTE1(v98) + (((v98 >> 8) & 0xFF00) >> 6) + (((v98 >> 8) & 0xFF00) >> 8)) >> 3;
          v101 = v100 | (v99 << 24);
          v102 = (v100 & 0xFF00FFFF | (v99 << 16)) * v80;
          v103 = v101 - ((v102 + 65537 + ((v102 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v102 + 1 + BYTE1(v102)) >> 8));
          if (v9 == 255)
          {
            v103 = v101;
          }

          v104 = HIBYTE(v103);
          if (v8)
          {
            if (v104)
            {
              if (v104 == 255)
              {
                *v7 = v103;
                *v8 = -1;
              }

              else
              {
                v105 = (*v7 | (*v8 << 16)) * (v104 ^ 0xFF);
                v106 = ((v105 + 65537 + ((v105 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v105 + 1 + BYTE1(v105)) >> 8)) + (v103 & 0xFF0000FF);
                *v7 = v106;
                *v8 = HIBYTE(v106);
              }
            }
          }

          else if (v104)
          {
            if (v104 != 255)
            {
              v103 += ((v104 ^ 0xFF) * *v7 + (((v104 ^ 0xFF) * *v7) >> 8) + 1) >> 8;
            }

            *v7 = v103;
          }

          ++v7;
          v8 += v11;
          --v95;
        }

        while (v95);
      }
    }

    v7 += v118;
    v8 += v120;
    v15 += v117;
    --a6;
  }

  while (a6);
  return result;
}

uint64_t W8_image_mark_RGB24(uint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 2);
  v7 = *(a2 + 4);
  if (v7)
  {
    v105 = *(a2 + 5) - a5;
  }

  else
  {
    v105 = 0;
  }

  v8 = *(a2 + 8);
  v104 = *a2;
  v103 = *(a2 + 3) - a5;
  v9 = v7 != 0;
  v10 = *(a2 + 17);
  v11 = *(a2 + 18);
  v12 = *(a2 + 9);
  v102 = *(a2 + 11);
  v13 = *(a2 + 7) + v102 * a4;
  v14 = *(result + 32);
  v15 = &v14[(*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3)];
  if (*(result + 176))
  {
    v100 = *(a2 + 13);
    v101 = *(a2 + 9);
    v98 = ~(-1 << v12);
    v99 = *(a2 + 15);
    v97 = v12 - 4;
    v16 = v15 - 3;
    v17 = v8 ^ 0xFF;
    v96 = v11 + 16 * a3 + 8;
    while (1)
    {
      if (((v99 - v13) | (v13 - v100)) < 0)
      {
        v20 = 0;
        v19 = 0;
      }

      else
      {
        v18 = ((v13 & v98) >> v97) & 0xF;
        v19 = (v18 - 7) >= 9 ? -v10 : v10;
        v20 = weights_21890[v18] & 0xF;
      }

      v21 = *(result + 32) + (v13 >> v12) * v10;
      if (v104 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v22 = v96;
        v23 = a5;
        while (1)
        {
          v25 = *(v22 - 1);
          v24 = *v22;
          v26 = v21 + v25;
          if (v16 >= v21 + v25)
          {
            v27 = (v21 + v25);
          }

          else
          {
            v27 = v16;
          }

          if (v27 < v14)
          {
            v27 = v14;
          }

          v28 = (*v27 << 24) | (v27[1] << 16) | (v27[2] << 8);
          v29 = v24 & 0xF;
          if ((v24 & 0xF) != 0)
          {
            break;
          }

          if (v20)
          {
            v40 = (v26 + v19);
            if (v16 < v26 + v19)
            {
              v40 = v16;
            }

            if (v40 < v14)
            {
              v40 = v14;
            }

            v41 = BLEND8_21892[v20];
            v38 = v28 - ((v41 & v28) >> v20);
            v39 = (((*v40 << 24) | (v40[1] << 16) | (v40[2] << 8)) & v41) >> v20;
            goto LABEL_43;
          }

LABEL_44:
          v42 = (((v28 >> 23) & 0x1FE) + BYTE1(v28) + (((v28 >> 8) & 0xFF00) >> 6) + (((v28 >> 8) & 0xFF00) >> 8)) >> 3;
          v43 = v42 | 0xFF000000;
          v44 = (v42 | 0xFF0000) * v17 + 65537 + ((((v42 | 0xFF0000) * v17) >> 8) & 0xFF00FF);
          v45 = v43 - (v44 & 0xFF000000 | BYTE1(v44));
          if (v8 == 255)
          {
            v45 = v43;
          }

          *v6 = v45;
          if (v7)
          {
            *v7 = HIBYTE(v45);
          }

          v22 += 2;
          ++v6;
          v7 += v9;
          if (!--v23)
          {
            goto LABEL_94;
          }
        }

        v30 = (v26 + (v24 >> 4));
        if (v16 < v30)
        {
          v30 = v16;
        }

        if (v30 < v14)
        {
          v30 = v14;
        }

        v31 = (*v30 << 24) | (v30[1] << 16) | (v30[2] << 8);
        if (v20)
        {
          v32 = (v26 + v19);
          if (v16 >= v32)
          {
            v33 = v32;
          }

          else
          {
            v33 = v16;
          }

          if (v33 < v14)
          {
            v33 = v14;
          }

          v34 = (*v33 << 24) | (v33[1] << 16) | (v33[2] << 8);
          v35 = &v32[v24 >> 4];
          if (v16 < v35)
          {
            v35 = v16;
          }

          if (v35 < v14)
          {
            v35 = v14;
          }

          v36 = BLEND8_21892[v20];
          v28 = v28 - ((v36 & v28) >> v20) + ((v36 & v34) >> v20);
          v31 = v31 - ((v36 & v31) >> v20) + ((((*v35 << 24) | (v35[1] << 16) | (v35[2] << 8)) & v36) >> v20);
        }

        v37 = BLEND8_21892[*v22 & 0xF];
        v38 = v28 - ((v37 & v28) >> v29);
        v39 = (v37 & v31) >> v29;
LABEL_43:
        v28 = v38 + v39;
        goto LABEL_44;
      }

LABEL_94:
      v6 += v103;
      v7 += v105;
      LOBYTE(v12) = v101;
      v13 += v102;
      if (!--a6)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_94;
    }

    v47 = v96;
    v46 = a5;
    while (1)
    {
      v49 = *(v47 - 1);
      v48 = *v47;
      v50 = v21 + v49;
      if (v16 >= v21 + v49)
      {
        v51 = (v21 + v49);
      }

      else
      {
        v51 = v16;
      }

      if (v51 < v14)
      {
        v51 = v14;
      }

      v52 = (*v51 << 24) | (v51[1] << 16) | (v51[2] << 8);
      v53 = v48 & 0xF;
      if ((v48 & 0xF) != 0)
      {
        break;
      }

      if (v20)
      {
        v64 = (v50 + v19);
        if (v16 < v50 + v19)
        {
          v64 = v16;
        }

        if (v64 < v14)
        {
          v64 = v14;
        }

        v65 = BLEND8_21892[v20];
        v62 = v52 - ((v65 & v52) >> v20);
        v63 = (((*v64 << 24) | (v64[1] << 16) | (v64[2] << 8)) & v65) >> v20;
        goto LABEL_80;
      }

LABEL_81:
      v66 = (((v52 >> 23) & 0x1FE) + BYTE1(v52) + (((v52 >> 8) & 0xFF00) >> 6) + (((v52 >> 8) & 0xFF00) >> 8)) >> 3;
      v67 = v66 | 0xFF000000;
      v68 = (v66 | 0xFF0000) * v17 + 65537 + ((((v66 | 0xFF0000) * v17) >> 8) & 0xFF00FF);
      v69 = v67 - (v68 & 0xFF000000 | BYTE1(v68));
      if (v8 == 255)
      {
        v69 = v67;
      }

      v70 = HIBYTE(v69);
      if (v7)
      {
        if (v70)
        {
          if (v70 == 255)
          {
            *v6 = v69;
            LOBYTE(v69) = -1;
          }

          else
          {
            v71 = (*v6 | (*v7 << 16)) * (v70 ^ 0xFF);
            v72 = ((v71 + 65537 + ((v71 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v71 + 1 + BYTE1(v71)) >> 8)) + (v69 & 0xFF0000FF);
            *v6 = v72;
            v69 = HIBYTE(v72);
          }

          *v7 = v69;
        }
      }

      else if (v70)
      {
        if (v70 != 255)
        {
          v69 += ((v70 ^ 0xFF) * *v6 + (((v70 ^ 0xFF) * *v6) >> 8) + 1) >> 8;
        }

        *v6 = v69;
      }

      v47 += 2;
      ++v6;
      v7 += v9;
      if (!--v46)
      {
        goto LABEL_94;
      }
    }

    v54 = (v50 + (v48 >> 4));
    if (v16 < v54)
    {
      v54 = v16;
    }

    if (v54 < v14)
    {
      v54 = v14;
    }

    v55 = (*v54 << 24) | (v54[1] << 16) | (v54[2] << 8);
    if (v20)
    {
      v56 = (v50 + v19);
      if (v16 >= v56)
      {
        v57 = v56;
      }

      else
      {
        v57 = v16;
      }

      if (v57 < v14)
      {
        v57 = v14;
      }

      v58 = (*v57 << 24) | (v57[1] << 16) | (v57[2] << 8);
      v59 = &v56[v48 >> 4];
      if (v16 < v59)
      {
        v59 = v16;
      }

      if (v59 < v14)
      {
        v59 = v14;
      }

      v60 = BLEND8_21892[v20];
      v52 = v52 - ((v60 & v52) >> v20) + ((v60 & v58) >> v20);
      v55 = v55 - ((v60 & v55) >> v20) + ((((*v59 << 24) | (v59[1] << 16) | (v59[2] << 8)) & v60) >> v20);
    }

    v61 = BLEND8_21892[*v47 & 0xF];
    v62 = v52 - ((v61 & v52) >> v53);
    v63 = (v61 & v55) >> v53;
LABEL_80:
    v52 = v62 + v63;
    goto LABEL_81;
  }

  v73 = v15 - 3;
  v74 = v8 ^ 0xFF;
  v75 = (v11 + 16 * a3);
  do
  {
    v76 = *(result + 32) + (v13 >> v12) * v10;
    if (v104 == 1)
    {
      if (a5 >= 1)
      {
        v77 = v75;
        v78 = a5;
        do
        {
          v79 = *v77;
          v77 += 2;
          v80 = (v76 + v79);
          if (v73 < v76 + v79)
          {
            v80 = v73;
          }

          if (v80 < *(result + 32))
          {
            v80 = *(result + 32);
          }

          v81 = (v80[2] + 2 * *v80 + 4 * v80[1] + v80[1]) >> 3;
          v82 = v81 | 0xFF000000;
          v83 = (v81 | 0xFF0000) * v74 + 65537 + ((((v81 | 0xFF0000) * v74) >> 8) & 0xFF00FF);
          v84 = v82 - (v83 & 0xFF000000 | BYTE1(v83));
          if (v8 == 255)
          {
            v84 = v82;
          }

          *v6 = v84;
          if (v7)
          {
            *v7 = HIBYTE(v84);
          }

          ++v6;
          v7 += v9;
          --v78;
        }

        while (v78);
      }
    }

    else
    {
      v85 = v75;
      v86 = a5;
      if (a5 >= 1)
      {
        do
        {
          v87 = *v85;
          v85 += 2;
          v88 = (v76 + v87);
          if (v73 < v76 + v87)
          {
            v88 = v73;
          }

          if (v88 < *(result + 32))
          {
            v88 = *(result + 32);
          }

          v89 = (v88[2] + 2 * *v88 + 4 * v88[1] + v88[1]) >> 3;
          v90 = v89 | 0xFF000000;
          v91 = (v89 | 0xFF0000) * v74 + 65537 + ((((v89 | 0xFF0000) * v74) >> 8) & 0xFF00FF);
          v92 = v90 - (v91 & 0xFF000000 | BYTE1(v91));
          if (v8 == 255)
          {
            v92 = v90;
          }

          v93 = HIBYTE(v92);
          if (v7)
          {
            if (v93)
            {
              if (v93 == 255)
              {
                *v6 = v92;
                *v7 = -1;
              }

              else
              {
                v94 = (*v6 | (*v7 << 16)) * (v93 ^ 0xFF);
                v95 = ((v94 + 65537 + ((v94 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v94 + 1 + BYTE1(v94)) >> 8)) + (v92 & 0xFF0000FF);
                *v6 = v95;
                *v7 = HIBYTE(v95);
              }
            }
          }

          else if (v93)
          {
            if (v93 != 255)
            {
              v92 += ((v93 ^ 0xFF) * *v6 + (((v93 ^ 0xFF) * *v6) >> 8) + 1) >> 8;
            }

            *v6 = v92;
          }

          ++v6;
          v7 += v9;
          --v86;
        }

        while (v86);
      }
    }

    v6 += v103;
    v7 += v105;
    v13 += v102;
    --a6;
  }

  while (a6);
  return result;
}

uint64_t W8_image_mark_W8(uint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 2);
  v7 = *(a2 + 4);
  if (v7)
  {
    v99 = *(a2 + 5) - a5;
  }

  else
  {
    v99 = 0;
  }

  v8 = *(a2 + 8);
  v98 = *a2;
  v97 = *(a2 + 3) - a5;
  v9 = v7 != 0;
  v10 = *(a2 + 17);
  v11 = *(a2 + 18);
  v12 = *(a2 + 9);
  v96 = *(a2 + 11);
  v13 = *(a2 + 7) + v96 * a4;
  v14 = *(result + 32);
  v15 = &v14[(*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3)];
  if (*(result + 176))
  {
    v94 = *(a2 + 15);
    v95 = *(a2 + 13);
    v16 = v15 - 4;
    v17 = v8 ^ 0xFF;
    v93 = v11 + 16 * a3 + 8;
    while (1)
    {
      if (((v94 - v13) | (v13 - v95)) < 0)
      {
        v20 = 0;
        v19 = 0;
      }

      else
      {
        v18 = ((v13 & ~(-1 << v12)) >> (v12 - 4)) & 0xF;
        v19 = v18 - 7 >= 9 ? -v10 : v10;
        v20 = weights_21890[v18] & 0xF;
      }

      v21 = *(result + 32) + (v13 >> v12) * v10;
      if (v98 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v22 = v93;
        v23 = a5;
        while (1)
        {
          v25 = *(v22 - 1);
          v24 = *v22;
          v26 = v21 + v25;
          if (v16 >= v21 + v25)
          {
            v27 = (v21 + v25);
          }

          else
          {
            v27 = v16;
          }

          if (v27 < v14)
          {
            v27 = v14;
          }

          v28 = *v27;
          v29 = v24 & 0xF;
          if ((v24 & 0xF) != 0)
          {
            break;
          }

          if (v20)
          {
            v40 = (v26 + v19);
            if (v16 < v26 + v19)
            {
              v40 = v16;
            }

            if (v40 < v14)
            {
              v40 = v14;
            }

            v41 = BLEND8_21892[v20];
            v38 = v28 - ((v41 & v28) >> v20);
            v39 = (v41 & *v40) >> v20;
            goto LABEL_43;
          }

LABEL_44:
          v42 = v28 | 0xFF000000;
          v43 = (v28 | 0xFF0000) * v17 + 65537 + ((((v28 | 0xFF0000u) * v17) >> 8) & 0xFF00FF);
          v44 = (v28 | 0xFF000000) - (v43 & 0xFF000000 | BYTE1(v43));
          if (v8 != 255)
          {
            v42 = v44;
          }

          *v6 = v42;
          if (v7)
          {
            *v7 = HIBYTE(v42);
          }

          v22 += 2;
          ++v6;
          v7 += v9;
          if (!--v23)
          {
            goto LABEL_95;
          }
        }

        v30 = (v26 + (v24 >> 4));
        if (v16 < v30)
        {
          v30 = v16;
        }

        if (v30 < v14)
        {
          v30 = v14;
        }

        v31 = *v30;
        if (v20)
        {
          v32 = (v26 + v19);
          if (v16 >= v32)
          {
            v33 = v32;
          }

          else
          {
            v33 = v16;
          }

          if (v33 < v14)
          {
            v33 = v14;
          }

          v34 = *v33;
          v35 = &v32[v24 >> 4];
          if (v16 < v35)
          {
            v35 = v16;
          }

          if (v35 < v14)
          {
            v35 = v14;
          }

          v36 = BLEND8_21892[v20];
          v28 = v28 - ((v36 & v28) >> v20) + ((v36 & v34) >> v20);
          v31 = v31 - ((v36 & v31) >> v20) + ((v36 & *v35) >> v20);
        }

        v37 = BLEND8_21892[*v22 & 0xF];
        v38 = v28 - ((v37 & v28) >> v29);
        v39 = (v37 & v31) >> v29;
LABEL_43:
        v28 = v38 + v39;
        goto LABEL_44;
      }

LABEL_95:
      v6 += v97;
      v7 += v99;
      v13 += v96;
      if (!--a6)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_95;
    }

    v46 = v93;
    v45 = a5;
    while (1)
    {
      v48 = *(v46 - 1);
      v47 = *v46;
      v49 = v21 + v48;
      if (v16 >= v21 + v48)
      {
        v50 = (v21 + v48);
      }

      else
      {
        v50 = v16;
      }

      if (v50 < v14)
      {
        v50 = v14;
      }

      v51 = *v50;
      v52 = v47 & 0xF;
      if ((v47 & 0xF) != 0)
      {
        break;
      }

      if (v20)
      {
        v63 = (v49 + v19);
        if (v16 < v49 + v19)
        {
          v63 = v16;
        }

        if (v63 < v14)
        {
          v63 = v14;
        }

        v64 = BLEND8_21892[v20];
        v61 = v51 - ((v64 & v51) >> v20);
        v62 = (v64 & *v63) >> v20;
        goto LABEL_80;
      }

LABEL_81:
      v65 = (v51 | 0xFF0000) * v17 + 65537 + ((((v51 | 0xFF0000u) * v17) >> 8) & 0xFF00FF);
      v66 = (v51 | 0xFF000000) - (v65 & 0xFF000000 | BYTE1(v65));
      if (v8 == 255)
      {
        v67 = v51 | 0xFF000000;
      }

      else
      {
        v67 = v66;
      }

      v68 = HIBYTE(v67);
      if (v7)
      {
        if (v68)
        {
          if (v68 == 255)
          {
            *v6 = v67;
          }

          else
          {
            v69 = (*v6 | (*v7 << 16)) * (v68 ^ 0xFF);
            *v6 = ((v69 + 1 + BYTE1(v69)) >> 8) + v67;
            v68 = (((v69 + 65537 + ((v69 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v69 + 1 + BYTE1(v69)) >> 8)) + (v67 & 0xFF0000FF)) >> 24;
          }

          *v7 = v68;
        }
      }

      else if (v68)
      {
        if (v68 == 255)
        {
          *v6 = v67;
        }

        else
        {
          *v6 = v67 + (((v68 ^ 0xFF) * *v6 + (((v68 ^ 0xFF) * *v6) >> 8) + 1) >> 8);
        }
      }

      v46 += 2;
      ++v6;
      v7 += v9;
      if (!--v45)
      {
        goto LABEL_95;
      }
    }

    v53 = (v49 + (v47 >> 4));
    if (v16 < v53)
    {
      v53 = v16;
    }

    if (v53 < v14)
    {
      v53 = v14;
    }

    v54 = *v53;
    if (v20)
    {
      v55 = (v49 + v19);
      if (v16 >= v55)
      {
        v56 = v55;
      }

      else
      {
        v56 = v16;
      }

      if (v56 < v14)
      {
        v56 = v14;
      }

      v57 = *v56;
      v58 = &v55[v47 >> 4];
      if (v16 < v58)
      {
        v58 = v16;
      }

      if (v58 < v14)
      {
        v58 = v14;
      }

      v59 = BLEND8_21892[v20];
      v51 = v51 - ((v59 & v51) >> v20) + ((v59 & v57) >> v20);
      v54 = v54 - ((v59 & v54) >> v20) + ((v59 & *v58) >> v20);
    }

    v60 = BLEND8_21892[*v46 & 0xF];
    v61 = v51 - ((v60 & v51) >> v52);
    v62 = (v60 & v54) >> v52;
LABEL_80:
    v51 = v61 + v62;
    goto LABEL_81;
  }

  v70 = v15 - 4;
  v71 = v8 ^ 0xFF;
  v72 = (v11 + 16 * a3);
  do
  {
    v73 = *(result + 32) + (v13 >> v12) * v10;
    if (v98 == 1)
    {
      if (a5 >= 1)
      {
        v74 = v72;
        v75 = a5;
        do
        {
          v76 = *v74;
          v74 += 2;
          v77 = (v73 + v76);
          if (v70 < v73 + v76)
          {
            v77 = v70;
          }

          if (v77 < *(result + 32))
          {
            v77 = *(result + 32);
          }

          v78 = *v77;
          v79 = v78 | 0xFF000000;
          v80 = (v78 | 0xFF0000) * v71 + 65537 + ((((v78 | 0xFF0000u) * v71) >> 8) & 0xFF00FF);
          v81 = v79 - (v80 & 0xFF000000 | BYTE1(v80));
          if (v8 == 255)
          {
            v81 = v79;
          }

          *v6 = v81;
          if (v7)
          {
            *v7 = HIBYTE(v81);
          }

          ++v6;
          v7 += v9;
          --v75;
        }

        while (v75);
      }
    }

    else
    {
      v82 = v72;
      v83 = a5;
      if (a5 >= 1)
      {
        do
        {
          v84 = *v82;
          v82 += 2;
          v85 = (v73 + v84);
          if (v70 < v73 + v84)
          {
            v85 = v70;
          }

          if (v85 < *(result + 32))
          {
            v85 = *(result + 32);
          }

          v86 = *v85;
          v87 = v86 | 0xFF000000;
          v88 = (v86 | 0xFF0000) * v71 + 65537 + ((((v86 | 0xFF0000u) * v71) >> 8) & 0xFF00FF);
          v89 = v87 - (v88 & 0xFF000000 | BYTE1(v88));
          if (v8 == 255)
          {
            v90 = v87;
          }

          else
          {
            v90 = v89;
          }

          v91 = HIBYTE(v90);
          if (v7)
          {
            if (v91)
            {
              if (v91 == 255)
              {
                *v6 = v90;
                *v7 = -1;
              }

              else
              {
                v92 = (*v6 | (*v7 << 16)) * (v91 ^ 0xFF);
                *v6 = ((v92 + 1 + BYTE1(v92)) >> 8) + v90;
                *v7 = (((v92 + 65537 + ((v92 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v92 + 1 + BYTE1(v92)) >> 8)) + (v90 & 0xFF0000FF)) >> 24;
              }
            }
          }

          else if (v91)
          {
            if (v91 == 255)
            {
              *v6 = v90;
            }

            else
            {
              *v6 = v90 + (((v91 ^ 0xFF) * *v6 + (((v91 ^ 0xFF) * *v6) >> 8) + 1) >> 8);
            }
          }

          ++v6;
          v7 += v9;
          --v83;
        }

        while (v83);
      }
    }

    v6 += v97;
    v7 += v99;
    v13 += v96;
    --a6;
  }

  while (a6);
  return result;
}

_DWORD *CGFontIndexSetCreate()
{
  result = malloc_type_calloc(1uLL, 0x50uLL, 0x1010040C7309667uLL);
  *result = 1;
  return result;
}

_DWORD *CGFontIndexSetCreateCopy(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = malloc_type_calloc(1uLL, 0x50uLL, 0x1010040C7309667uLL);
  *v2 = 1;
  for (i = 2; i != 18; i += 2)
  {
    if (*(a1 + i * 4))
    {
      v4 = malloc_type_calloc(1uLL, 0x400uLL, 0x52F5CFB6uLL);
      *&v2[i] = v4;
      memmove(v4, *(a1 + i * 4), 0x400uLL);
    }
  }

  return v2;
}

atomic_uint *CGFontIndexSetRetain(atomic_uint *result)
{
  if (result)
  {
    atomic_fetch_add_explicit(result, 1u, memory_order_relaxed);
  }

  return result;
}

void CGFontIndexSetRelease(void **a1)
{
  if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    for (i = 1; i != 9; ++i)
    {
      free(a1[i]);
    }

    free(a1[9]);

    free(a1);
  }
}

char *CGFontIndexSetAddIndex(char *result, unint64_t a2)
{
  if (result && a2 != 0xFFFF)
  {
    v3 = a2 >> 13;
    v4 = result + 8;
    result = *&result[8 * v3 + 8];
    if (!result)
    {
      result = malloc_type_calloc(1uLL, 0x400uLL, 0x96486F4CuLL);
      v5 = 0;
      atomic_compare_exchange_strong_explicit(&v4[8 * v3], &v5, result, memory_order_relaxed, memory_order_relaxed);
      if (v5)
      {
        free(result);
        result = *&v4[8 * v3];
      }
    }

    result[(a2 >> 3) & 0x3FF] |= 1 << (a2 & 7);
  }

  return result;
}

char *CGFontIndexSetAddIndexes(char *result, unsigned __int16 *a2, uint64_t a3)
{
  if (result)
  {
    v3 = a2;
    if (a2)
    {
      v4 = a3;
      if (a3)
      {
        v5 = result;
        do
        {
          v6 = *v3++;
          result = CGFontIndexSetAddIndex(v5, v6);
          --v4;
        }

        while (v4);
      }
    }
  }

  return result;
}

char *CGFontIndexSetAddIndexRange(char *result, __int16 a2, unsigned int a3)
{
  if (result && a3)
  {
    v4 = result;
    v5 = 0;
    v6 = a3;
    do
    {
      result = CGFontIndexSetAddIndex(v4, (v5++ + a2));
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t CGFontIndexSetContainsIndex(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8 * (a2 >> 13) + 8);
  if (v2)
  {
    return (*(v2 + ((a2 >> 3) & 0x3FF)) >> (a2 & 7)) & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t CGFontIndexSetGetIndexRange(uint64_t a1, unint64_t a2, _WORD *a3)
{
  result = 0;
  if (a1 && a2 != 0xFFFF)
  {
    v5 = a1 + 8;
    while (1)
    {
      v6 = *(v5 + 8 * (a2 >> 13));
      if (v6)
      {
        if ((*(v6 + ((a2 >> 3) & 0x3FF)) >> (a2 & 7)))
        {
          break;
        }
      }

      a2 = (a2 + 1);
      if (a2 == 0xFFFF)
      {
        return 0;
      }
    }

    if (a3)
    {
      *a3 = a2;
    }

    v7 = a2;
    v8 = *(v5 + 8 * (a2 >> 13));
    if (v8)
    {
      v9 = a2;
      do
      {
        if (((*(v8 + ((v9 >> 3) & 0x3FF)) >> (v9 & 7)) & 1) == 0)
        {
          break;
        }

        LOWORD(a2) = a2 + 1;
        v9 = a2;
        v8 = *(v5 + 8 * (a2 >> 13));
      }

      while (v8);
    }

    return a2 - v7;
  }

  return result;
}

uint64_t CGFontIndexSetGetCount(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = 0;
    v2 = 0;
    v3 = v1 + 8;
    v4.i64[0] = 0x5555555555555555;
    v4.i64[1] = 0x5555555555555555;
    v5.i64[0] = 0x3333333333333333;
    v5.i64[1] = 0x3333333333333333;
    v6.i64[0] = 0xF0F0F0F0F0F0F0FLL;
    v6.i64[1] = 0xF0F0F0F0F0F0F0FLL;
    v7.i64[0] = 0x3F0000003FLL;
    v7.i64[1] = 0x3F0000003FLL;
    do
    {
      v8 = *(v3 + 8 * v2);
      if (v8)
      {
        v9 = 0;
        v10 = 0uLL;
        v11 = 0uLL;
        do
        {
          v12 = vsubq_s32(*(v8 + v9), vandq_s8(vshrq_n_u32(*(v8 + v9), 1uLL), v4));
          v13 = vaddq_s32(vandq_s8(vshrq_n_u32(v12, 2uLL), v5), vandq_s8(v12, v5));
          v14 = vandq_s8(vsraq_n_u32(v13, v13, 4uLL), v6);
          v15 = vsraq_n_u32(v14, v14, 8uLL);
          v16 = vandq_s8(vsraq_n_u32(v15, v15, 0x10uLL), v7);
          v11 = vaddw_high_u32(v11, v16);
          v10 = vaddw_u32(v10, *v16.i8);
          v9 += 16;
        }

        while (v9 != 1024);
        v8 = vaddvq_s64(vaddq_s64(v10, v11));
      }

      result += v8;
      ++v2;
    }

    while (v2 != 8);
  }

  return result;
}

uint64_t CGFontIndexSetGetIndexes(uint64_t result, _WORD *a2)
{
  if (result && a2)
  {
    for (i = 0; i != 0xFFFF; ++i)
    {
      v3 = *(result + 8 + ((i >> 10) & 0x3FFFFFFFFFFFF8));
      if (v3)
      {
        if ((*(v3 + ((i >> 3) & 0x3FF)) >> (i & 7)))
        {
          *a2++ = i;
        }
      }
    }
  }

  return result;
}

unint64_t CGFontIndexSetGetIndexVectorSize(uint64_t a1)
{
  v1 = 0;
  while (1)
  {
    v2 = v1 ^ 7;
    v3 = *(a1 + 8 + 8 * (v1 ^ 7));
    if (v3)
    {
      break;
    }

    if (++v1 == 8)
    {
      return 0;
    }
  }

  v4 = 0;
  while (((*(v3 + ((v4 ^ 0x1FFFuLL) >> 3)) >> (~v4 & 7)) & 1) == 0)
  {
    if (++v4 == 0x2000)
    {
      return 0;
    }
  }

  return ((((v4 ^ 0x1FFF) + (v2 << 13)) & 0xFFE0) + 32) >> 3;
}

void CGFontIndexSetGetIndexVector(uint64_t a1, void *a2)
{
  IndexVectorSize = CGFontIndexSetGetIndexVectorSize(a1);
  bzero(a2, IndexVectorSize);
  for (i = 0; i != 0xFFFF; ++i)
  {
    v9 = *(a1 + 8 + ((i >> 10) & 0x3FFFFFFFFFFFF8));
    if (v9 && ((*(v9 + ((i >> 3) & 0x3FF)) >> (i & 7)) & 1) != 0)
    {
      if (i >> 5 >= IndexVectorSize >> 2)
      {
        _CGHandleAssert("CGFontIndexSetGetIndexVector", 284, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Fonts/CGFontIndexSet.c", "k / 32 < size / 4", "k: %zu  size: %zu", v5, v6, v7, i);
      }

      *(a2 + (i >> 5)) |= 1 << ~i;
    }
  }
}

uint64_t CGFontIndexSetGetName(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 72))
  {
    v2 = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
    CC_MD5_Init(v2);
    v9 = time(0);
    if (v2)
    {
      CC_MD5_Update(v2, &v9, 8u);
    }

    for (i = 0; i != 8; ++i)
    {
      while (1)
      {
        v4 = *(a1 + 8 + 8 * i);
        if (!v4)
        {
          break;
        }

        if (v2)
        {
          CC_MD5_Update(v2, v4, 0x400u);
          if (++i == 8)
          {
            goto LABEL_14;
          }
        }

        else if (++i == 8)
        {
          goto LABEL_15;
        }
      }
    }

    if (!v2)
    {
      goto LABEL_15;
    }

LABEL_14:
    CC_MD5_Final(md, v2);
LABEL_15:
    free(v2);
    v5 = malloc_type_malloc(7uLL, 0x5040A8E1uLL);
    for (j = 0; j != 6; ++j)
    {
      v5[j] = md[j] % 0x1Au + 65;
    }

    v7 = 0;
    v5[6] = 0;
    atomic_compare_exchange_strong_explicit((a1 + 72), &v7, v5, memory_order_relaxed, memory_order_relaxed);
    if (v7)
    {
      free(v5);
    }
  }

  return *(a1 + 72);
}

_BYTE *CGPDFCryptFilterCreateStandard(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200409B6930F5uLL);
  __CFSetLastAllocationEventName();
  if (v2)
  {
    *v2 = a1;
    v2[12] = 0;
    *(v2 + 2) = 1;
    *(v2 + 2) = 0;
  }

  return v2;
}

uint64_t get_object_key(uint64_t a1, int a2, unint64_t a3, unsigned __int8 *a4, size_t *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  __n = 0;
  result = CGPDFSecurityManagerGetDecryptionKey(*a1, __src, &__n);
  if (result)
  {
    v11 = *(a1 + 16);
    v12 = __n;
    if (v11)
    {
      v13 = v11 == __n;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      v14 = *(a1 + 8);
      if (v14 == 3)
      {
        memcpy(a4, __src, __n);
      }

      else
      {
        v15 = &__src[__n];
        *v15 = a2;
        v15[2] = BYTE2(a2);
        v15[3] = a3;
        v16 = a3 >> 8;
        v17 = v12 + 5;
        v15[4] = v16;
        if (v14 == 2)
        {
          *&__src[v17] = 1416380787;
          v17 = v12 + 9;
        }

        CGGetMD5DigestOfBytes(a4, __src, v17);
        if (v17 >= 0x10)
        {
          v12 = 16;
        }

        else
        {
          v12 = v17;
        }
      }

      *a5 = v12;
      if (pdf_is_verbose_onceToken != -1)
      {
        dispatch_once(&pdf_is_verbose_onceToken, &__block_literal_global_5_6709);
      }

      if (pdf_is_verbose_isVerbose == 1)
      {
        printf("Object key: %u <", a2);
        for (; v12; --v12)
        {
          v18 = *a4++;
          printf("%02x", v18);
        }

        puts(">");
      }

      return 1;
    }

    else
    {
      pdf_error("unsupported crypt filter key length.");
      return 0;
    }
  }

  return result;
}

void *CGPDFCryptFilterCreateDecryptor(void *result, int a2, unint64_t a3, void *a4)
{
  v8 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    if (*(result + 12) == 1)
    {

      return CGPDFDecryptorCreate(a4, 0, 0, 0);
    }

    else
    {
      v6 = 0;
      if (get_object_key(result, a2, a3, v7, &v6))
      {
        return CGPDFDecryptorCreate(a4, *(v5 + 2), v7, v6);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

CFArrayRef CGFontCopyVariationAxes(CGFontRef font)
{
  if (!font)
  {
    return 0;
  }

  v15 = 0;
  v1 = (*(*(font + 2) + 416))(*(font + 14), &v15);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (v15)
  {
    v4 = 0;
    v5 = MEMORY[0x1E695E9D8];
    v6 = (v2 + 16);
    v7 = MEMORY[0x1E695E9E8];
    alloc = *MEMORY[0x1E695E480];
    do
    {
      v8 = CFDictionaryCreateMutable(0, 0, v5, v7);
      v9 = v8;
      v10 = *(v6 - 2);
      if (v10)
      {
        CFDictionarySetValue(v8, @"kCGFontVariationAxisName", v10);
      }

      else
      {
        *cStr = bswap32(*(v6 - 2));
        v17 = 0;
        v11 = CFStringCreateWithCString(alloc, cStr, 0);
        if (v11)
        {
          v12 = v11;
          CFDictionarySetValue(v9, @"kCGFontVariationAxisName", v11);
          CFRelease(v12);
        }
      }

      CGCFDictionarySetFloat(v9, @"kCGFontVariationAxisMinValue", *v6);
      CGCFDictionarySetFloat(v9, @"kCGFontVariationAxisMaxValue", v6[1]);
      CGCFDictionarySetFloat(v9, @"kCGFontVariationAxisDefaultValue", v6[2]);
      if (v9)
      {
        CFArrayAppendValue(Mutable, v9);
        CFRelease(v9);
      }

      ++v4;
      v6 += 5;
    }

    while (v4 < v15);
  }

  return Mutable;
}

void *pdf_source_create_predictor2_filter(const void *a1, CGPDFDictionary *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x28uLL, 0x10300406BFC95CEuLL);
  v4[3] = 8;
  *(v4 + 1) = vdupq_n_s64(1uLL);
  if (a2)
  {
    value = 0;
    if (CGPDFDictionaryGetInteger(a2, "Colors", &value))
    {
      if (value < 1)
      {
        pdf_error("/%s is outside the range of allowed values.", "Colors");
      }

      else
      {
        v4[1] = value;
      }
    }

    if (CGPDFDictionaryGetInteger(a2, "BitsPerComponent", &value))
    {
      if (value <= 0x10 && ((1 << value) & 0x10116) != 0)
      {
        v4[3] = value;
      }

      else
      {
        pdf_error("/%s is outside the range of allowed values.", "BitsPerComponent");
      }
    }

    if (CGPDFDictionaryGetInteger(a2, "Columns", &value))
    {
      if ((value - 1) > 0x3FFFFFFE)
      {
        pdf_error("/%s is outside the range of allowed values.", "Columns");
        if (!a1)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      v4[2] = value;
    }
  }

  if (a1)
  {
LABEL_14:
    CFRetain(a1);
  }

LABEL_15:
  *v4 = a1;
  v5 = v4[1];
  v6 = v4[3];
  if (v5 <= 0xFFFFFFFFFFFFFFF8 / v6 && (v7 = v6 * v5, v8 = v4[2], v8 <= 0xFFFFFFFFFFFFFFF8 / v7) && (v9 = (v8 * v7 + 7) >> 3, v4[4] = malloc_type_malloc(v5, 0xE3D5D5BuLL), (result = CGPDFSourceCreateInternal(v9)) != 0))
  {
    *(result + 209) = 1;
    v11 = *&off_1EF240C80;
    *(result + 3) = pdf_source_create_predictor2_filter_callbacks;
    *(result + 4) = v11;
    result[10] = v4;
  }

  else
  {
    predictor2_filter_finalize(v4);
    return 0;
  }

  return result;
}

void predictor2_filter_finalize(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1[4]);

    free(a1);
  }
}

uint64_t predictor2_filter_refill(uint64_t a1, uint64_t a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v10 = CGPDFSourceRead(*a1, a2, a3, a4, a5, a6, a7, a8);
  if (v10)
  {
    v11 = *(a1 + 24);
    v12 = v11 - 1;
    if (v11 - 1 <= 7 && ((0x8Bu >> v12) & 1) != 0)
    {
      bzero(*(a1 + 32), *(a1 + 8));
      v13 = *(a1 + 16);
      if (v13)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = &v8[v10];
        v21 = 0xFFFFFFFF >> -v11;
        v22 = v8;
        do
        {
          if (*(a1 + 8))
          {
            v23 = 0;
            do
            {
              if (v11)
              {
                while (v18 < v11)
                {
                  v19 <<= 8;
                  if (v22 < v20)
                  {
                    v24 = *v22++;
                    v19 |= v24;
                  }

                  v18 += 8;
                }

                v18 -= v11;
                v25 = (v19 >> v18) & v21;
              }

              else
              {
                LOBYTE(v25) = 0;
              }

              *(*(a1 + 32) + v23) += v25;
              v26 = *(a1 + 32);
              v27 = *(v26 + v23);
              if (v14 < 8)
              {
                v28 = *(v26 + v23);
              }

              else
              {
                do
                {
                  v14 -= 8;
                  *v8++ = v17 >> v14;
                }

                while (v14 > 7);
                v26 = *(a1 + 32);
                v28 = *(v26 + v23);
              }

              v17 = v21 & v27 | (v17 << v11);
              v14 += v11;
              *(v26 + v23) = v28 & (0xFF01010107010301 >> (8 * v12));
              v15 += v11;
              if (v10 == v15 >> 3)
              {
                break;
              }

              ++v23;
            }

            while (v23 < *(a1 + 8));
            v13 = *(a1 + 16);
          }

          ++v16;
        }

        while (v16 < v13);
        if (v18 <= 0x18)
        {
          v29 = v19 & (0xFFFFFFFF >> -v18);
          if (!v18)
          {
            v29 = 0;
          }

          goto LABEL_34;
        }

        v29 = v19 & (0xFFFFFFFF >> (24 - v18)) | (((v19 >> (v18 - 24)) & 0xFFFFFF) << (v18 - 24));
        if (v14 >= 8)
        {
          do
          {
            v14 -= 8;
            *v8++ = v17 >> v14;
          }

          while (v14 > 7);
        }

        v14 |= 0x18uLL;
        v17 = (v29 >> (v18 - 24)) & 0xFFFFFF | (v17 << 24);
        v18 -= 24;
        do
        {
          v14 -= 8;
          *v8++ = v17 >> v14;
LABEL_34:
          ;
        }

        while (v14 > 7);
      }

      else
      {
        v29 = 0;
        v17 = 0;
        v18 = 0;
        v14 = 0;
      }

      v31 = v14 + v18;
      if (v31)
      {
        v32 = (0xFFFFFFFF >> -v18) & v29 | (v17 << v18);
        do
        {
          v33 = v31;
          if (v31 >= 8)
          {
            do
            {
              v33 -= 8;
              *v8++ = v32 >> v33;
            }

            while (v33 > 7);
          }

          v34 = -v31 & 7;
          v32 <<= v34;
          v31 = v33 + v34;
        }

        while (v31);
      }
    }

    else
    {
      return 0;
    }
  }

  return v10;
}

__CFString *path_debug_description(const CGPath *a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"Path %p:\n", a1);
  CGPathApply(a1, Mutable, path_debug_desc_applier);
  return Mutable;
}

void path_debug_desc_applier(__CFString *a1, const CGPathElement *a2)
{
  points = a2->points;
  type = a2->type;
  if (a2->type <= kCGPathElementAddLineToPoint)
  {
    if (type)
    {
      if (type == kCGPathElementAddLineToPoint)
      {
        CFStringAppendFormat(a1, 0, @"    lineto (%g, %g)\n", *&points->x, *&points->y);
      }
    }

    else
    {
      CFStringAppendFormat(a1, 0, @"  moveto (%g, %g)\n", *&points->x, *&points->y);
    }
  }

  else
  {
    switch(type)
    {
      case kCGPathElementAddQuadCurveToPoint:
        CFStringAppendFormat(a1, 0, @"    quadto (%g, %g) (%g, %g)\n", *&points->x, *&points->y, *&points[1].x, *&points[1].y);
        break;
      case kCGPathElementAddCurveToPoint:
        CFStringAppendFormat(a1, 0, @"    curveto (%g, %g) (%g, %g) (%g, %g)\n", *&points->x, *&points->y, *&points[1].x, *&points[1].y, *&points[2].x, *&points[2].y);
        break;
      case kCGPathElementCloseSubpath:

        CFStringAppend(a1, @"    closepath\n");
        break;
    }
  }
}

CGPathRef CGPathCreateCopyByDashingPath(CGPathRef path, const CGAffineTransform *transform, CGFloat phase, const CGFloat *lengths, size_t count)
{
  if (!path)
  {
    return 0;
  }

  if ((CGPathDisableTypeValidation & 1) == 0)
  {
    v14 = CFGetTypeID(path);
    if (v14 != CGPathGetTypeID())
    {
      return 0;
    }
  }

  {
    return 0;
  }

  TypeID = CGPathGetTypeID();
  Instance = CGTypeCreateInstance(TypeID, 128, v16, v17, v18, v19, v20, v21);
  v26 = Instance;
  if (Instance)
  {
    CG::Path::Path((Instance + 16), (path + 16), phase, lengths, count, 0, v23, v24, v25);
    if (transform)
    {
      CG::Path::apply_transform((v26 + 16), transform, v27, v28, v29, v30, v31, v32);
    }
  }

  return v26;
}

uint64_t CGPathCreateWithLineSegment(_anonymous_namespace_ *a1, const CGAffineTransform *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CGFloat a9, CGFloat a10, float64_t a11, float64_t a12)
{
  v24.x = a9;
  v24.y = a10;
  v23.f64[0] = a11;
  v23.f64[1] = a12;
  {
    return 0;
  }

  TypeID = CGPathGetTypeID();
  Instance = CGTypeCreateInstance(TypeID, 88, v14, v15, v16, v17, v18, v19);
  v21 = Instance;
  if (Instance)
  {
    CG::Path::append_line_segment((Instance + 16), &v24, &v23, a1);
  }

  return v21;
}

CGPathRef CGPathCreateWithUnevenCornersRoundedRect(const CGRect *a1, _anonymous_namespace_ *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12)
{
  v46 = *MEMORY[0x1E69E9840];
  v19 = 0;
  if (a1 && is_valid)
  {
    v47.origin.x = a9;
    v47.origin.y = a10;
    v47.size.width = a11;
    v47.size.height = a12;
    v48 = CGRectStandardize(v47);
    x = v48.origin.x;
    y = v48.origin.y;
    width = v48.size.width;
    height = v48.size.height;
    v38 = v48;
    v25 = v39.width == v40 && v39.height == v41;
    if (v25 && (v39.width == v42 ? (v26 = v39.height == v43) : (v26 = 0), v26 && (v39.width == v44 ? (v27 = v39.height == v45) : (v27 = 0), v27)))
    {
      if (v39.width == 0.0 || v39.height == 0.0)
      {
        v50.origin.x = x;
        v50.origin.y = y;
        v50.size.width = width;
        v50.size.height = height;
        return CGPathCreateWithRect(v50, this);
      }

      else
      {
        v49.origin.x = x;
        v49.origin.y = y;
        v49.size.width = width;
        v49.size.height = height;
        return CGPathCreateWithRoundedRect(v49, v39.width, v39.height, this);
      }
    }

    else
    {
      TypeID = CGPathGetTypeID();
      Instance = CGTypeCreateInstance(TypeID, 120, v29, v30, v31, v32, v33, v34);
      v19 = Instance;
      if (Instance)
      {
        CG::Path::append_uneven_rounded_rect((Instance + 16), &v38, &v39, this);
      }
    }
  }

  return v19;
}

CGFloat anonymous namespace::standardize_uneven_corners(float64x2_t *this, const CGRect *a2, const CGSize *a3, CGSize *a4)
{
  for (i = 0; i != 4; ++i)
  {
    v5 = vbslq_s8(vcgtq_f64(this[1], *(&a2->origin + i * 16)), *(&a2->origin + i * 16), this[1]);
    a3[i] = vbicq_s8(v5, vcltzq_f64(v5));
  }

  v6 = this[1].f64[0];
  if (a3->width + a3[1].width > v6)
  {
    a3[1].width = v6 - a3->width;
    v6 = this[1].f64[0];
  }

  width = a3[2].width;
  if (width + a3[3].width > v6)
  {
    a3[3].width = v6 - width;
  }

  height = a3[1].height;
  result = this[1].f64[1];
  if (height + a3[2].height > result)
  {
    a3[2].height = result - height;
    result = this[1].f64[1];
  }

  v10 = a3->height;
  if (v10 + a3[3].height > result)
  {
    result = result - v10;
    a3[3].height = result;
  }

  return result;
}

void CGPathAddContinuousRoundedRect(char *cf, float64x2_t *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, double a13, double a14)
{
  if (cf)
  {
    if ((CGPathDisableTypeValidation & 1) != 0 || (v22 = CFGetTypeID(cf), v22 == CGPathGetTypeID()))
    {
      {
        v35.origin.x = a9;
        v35.origin.y = a10;
        v35.size.width = a11;
        v35.size.height = a12;
        v36 = CGRectStandardize(v35);
        x = v36.origin.x;
        y = v36.origin.y;
        width = v36.size.width;
        height = v36.size.height;
        v34 = v36;
        if (a13 >= 0.0)
        {
          v27 = a13;
        }

        else
        {
          v27 = 0.0;
        }

        if (a14 >= 0.0)
        {
          v28 = a14;
        }

        else
        {
          v28 = 0.0;
        }

        if (v36.size.width < 0.0 || v36.size.height < 0.0)
        {
          v37 = CGRectStandardize(v36);
          v29 = v37.size.width * 0.5;
          if (v27 <= v37.size.width * 0.5)
          {
            v30 = v27;
          }

          else
          {
            v30 = v37.size.width * 0.5;
          }

          v38.origin.x = x;
          v38.origin.y = y;
          v38.size.width = width;
          v38.size.height = height;
          v39 = CGRectStandardize(v38);
          height = v39.size.height;
        }

        else
        {
          v29 = v36.size.width * 0.5;
          if (v27 <= v36.size.width * 0.5)
          {
            v30 = v27;
          }

          else
          {
            v30 = v36.size.width * 0.5;
          }
        }

        if (v28 <= height * 0.5)
        {
          v31 = v28;
        }

        else
        {
          v31 = height * 0.5;
        }

        if (v30 == 0.0 || v31 == 0.0)
        {
          CG::Path::append_rect((cf + 16), &v34, this);
        }

        else if (v30 == v29 && v31 == height * 0.5)
        {
          CG::Path::append_ellipse((cf + 16), &v34, 1, 0, this);
        }

        else
        {
          v33 = v30;
          CG::Path::append_continuous_rounded_rect((cf + 16), &v34, *(&v31 - 1), this);
        }
      }
    }
  }
}

void CGPathAddRelativeArc(CGMutablePathRef path, const CGAffineTransform *matrix, CGFloat x, CGFloat y, CGFloat radius, CGFloat startAngle, CGFloat delta)
{
  if (path)
  {
    v19 = path;
    if ((CGPathDisableTypeValidation & 1) != 0 || (v20 = CFGetTypeID(path), path = CGPathGetTypeID(), v20 == path))
    {
      if ((*&x & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&y & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {

        CGFloatPostError(path, matrix, v7, v8, v9, v10, v11, v12, v30);
      }

      {
        if (fabs(startAngle) > 6283.18531 || fabs(delta) > 6283.18531)
        {
          CGPostError("%s: invalid value for start or delta angle.", v21, v22, v23, v24, v25, v26, v27, "CGPathAddRelativeArc");
        }

        else
        {
          v28.x = x;
          v28.y = y;
          CG::Path::add_arc_relative((v19 + 16), &v28, radius, startAngle, delta, matrix, 0);
        }
      }
    }
  }
}

void CGPathAddLines(CGMutablePathRef path, const CGAffineTransform *m, const CGPoint *points, size_t count)
{
  if (path)
  {
    if (CGPathDisableTypeValidation)
    {
      v12 = 0;
      if (!count)
      {
        return;
      }
    }

    else
    {
      v13 = CFGetTypeID(path);
      v12 = v13 != CGPathGetTypeID();
      if (!count)
      {
        return;
      }
    }

    if (points)
    {
      if (!v12)
      {
        if (is_valid)
        {
          p_y = &points->y;
          v23 = count;
          while ((*(p_y - 1) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*p_y & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
          {
            p_y += 2;
            if (!--v23)
            {
              if (count == 2)
              {

                CG::Path::append_line_segment((path + 16), points, &points[1], m);
              }

              else
              {
                CG::Path::reserve_space((path + 16), count + 1, count + 1);
                CG::Path::move_to_point((path + 16), m, v24, *points);
                if (count >= 2)
                {
                  v26 = count - 1;
                  v27 = points + 1;
                  do
                  {
                    v28 = *v27++;
                    CG::Path::add_line_to_point((path + 16), m, v25, v28);
                    --v26;
                  }

                  while (v26);
                }
              }

              return;
            }
          }

          CGFloatPostError(is_valid, v15, v16, v17, v18, v19, v20, v21, v30);
        }
      }
    }
  }
}

void CGPathAddRects(CGMutablePathRef path, const CGAffineTransform *m, const CGRect *rects, size_t count)
{
  if (path)
  {
    v8 = count;
    if (CGPathDisableTypeValidation)
    {
      v12 = 0;
      if (!count)
      {
        return;
      }
    }

    else
    {
      v13 = CFGetTypeID(path);
      v12 = v13 != CGPathGetTypeID();
      if (!v8)
      {
        return;
      }
    }

    {
      if (v8 >= 2)
      {
        CG::Path::reserve_space((path + 16), 5 * v8, 5 * v8);
      }

      p_size = &rects->size;
      do
      {
        v16 = *&p_size[-1].width;
        p_size += 2;
        v15 = CGRectStandardize(v16);
        CG::Path::append_rect((path + 16), &v15, m);
        --v8;
      }

      while (v8);
    }
  }
}

void CGPathAddRoundedRect(CGMutablePathRef path, const CGAffineTransform *transform, CGRect rect, CGFloat cornerWidth, CGFloat cornerHeight)
{
  if (path)
  {
    height = rect.size.height;
    width = rect.size.width;
    y = rect.origin.y;
    x = rect.origin.x;
    if ((CGPathDisableTypeValidation & 1) != 0 || (v19 = CFGetTypeID(path), v19 == CGPathGetTypeID()))
    {
      {
        if (width < 0.0 || height < 0.0)
        {
          v25.origin.x = x;
          v25.origin.y = y;
          v25.size.width = width;
          v25.size.height = height;
          v26 = CGRectStandardize(v25);
          v20 = fmax(fmin(cornerWidth, v26.size.width * 0.5), 0.0);
          v26.origin.x = x;
          v26.origin.y = y;
          v26.size.width = width;
          v26.size.height = height;
          v27 = CGRectStandardize(v26);
          v21 = v27.size.height;
        }

        else
        {
          v20 = fmax(fmin(cornerWidth, width * 0.5), 0.0);
          v21 = height;
        }

        v28.origin.x = x;
        v28.origin.y = y;
        v28.size.width = width;
        v28.size.height = height;
        v29 = CGRectStandardize(v28);
        if (v20 == 0.0 || (v22 = fmax(fmin(cornerHeight, v21 * 0.5), 0.0), v22 == 0.0))
        {
          v23 = v29;
          CG::Path::append_rect((path + 16), &v23, transform);
        }

        else
        {
          v23 = v29;
          v24.width = v20;
          v24.height = v22;
          CG::Path::append_rounded_rect((path + 16), &v23, v24, transform);
        }
      }
    }
  }
}

void CGPathAddUnevenCornersRoundedRect(char *cf, _anonymous_namespace_ *this, const CGRect *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12)
{
  v33 = *MEMORY[0x1E69E9840];
  if (cf)
  {
    if ((CGPathDisableTypeValidation & 1) != 0 || (v19 = CFGetTypeID(cf), v19 == CGPathGetTypeID()))
    {
      if (a3)
      {
        if (is_valid)
        {
          v34.origin.x = a9;
          v34.origin.y = a10;
          v34.size.width = a11;
          v34.size.height = a12;
          v25 = CGRectStandardize(v34);
          width = v26.width;
          height = v26.height;
          v24 = v26.width == v27 && v26.height == v28;
          if (v24 && v26.width == v29 && v26.height == v30 && v26.width == v31 && v26.height == v32)
          {
            if (v26.width == 0.0 || v26.height == 0.0)
            {
              CG::Path::append_rect((cf + 16), &v25, this);
            }

            else
            {
              CG::Path::append_rounded_rect((cf + 16), &v25, *&width, this);
            }
          }

          else
          {
            CG::Path::append_uneven_rounded_rect((cf + 16), &v25, &v26, this);
          }
        }
      }
    }
  }
}

char *CGPathAddRegion(char *cf, _anonymous_namespace_ *this, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (cf)
  {
    v10 = cf;
    if ((CGPathDisableTypeValidation & 1) != 0 || (v11 = CFGetTypeID(cf), cf = CGPathGetTypeID(), v11 == cf))
    {
      if (cf)
      {

        return CG::Path::append_region((v10 + 16), a3, this, v12, v13, v14, v15, v16);
      }
    }
  }

  return cf;
}

uint64_t CGPathIsLine(uint64_t cf, _OWORD *a2)
{
  if (cf)
  {
    v3 = cf;
    if ((CGPathDisableTypeValidation & 1) != 0 || (v4 = CFGetTypeID(cf), v4 == CGPathGetTypeID()))
    {
      v5 = *(v3 + 16);
      switch(v5)
      {
        case 9:
          if (*(v3 + 24) == 2 && *(v3 + 32) == 2)
          {
            v7 = *(v3 + 48);
            v8 = v7 + *(v3 + 40);
            if (!*(v8 - 1) && *(v8 - 2) == 1)
            {
              if (a2)
              {
                *a2 = *v7;
                v7 = *(v3 + 48);
              }

              v6 = v7 + 1;
              goto LABEL_10;
            }
          }

          break;
        case 8:
          if (*(v3 + 24) == 2 && *(v3 + 26) == 2 && (*(v3 + 28) & 0x3F) == 8)
          {
            if (a2)
            {
              *a2 = *(v3 + 32);
            }

            v6 = (v3 + 48);
            goto LABEL_10;
          }

          break;
        case 5:
          if (a2)
          {
            *a2 = *(v3 + 24);
          }

          v6 = (v3 + 40);
LABEL_10:
          a2[1] = *v6;
          return 1;
      }
    }

    return 0;
  }

  return cf;
}

uint64_t CGPathIsEllipseWithTransform(char *cf, CGRect *a2, BOOL *a3, uint64_t a4, CGAffineTransform *a5)
{
  if (!cf)
  {
    return 0;
  }

  if ((CGPathDisableTypeValidation & 1) == 0)
  {
    v8 = CFGetTypeID(cf);
    if (v8 != CGPathGetTypeID())
    {
      return 0;
    }
  }

  return CG::Path::is_ellipse((cf + 16), a2, 0, a3, a5);
}

uint64_t CGPathIsEllipse2(char *cf, CGRect *a2, BOOL *a3, uint64_t a4, CGAffineTransform *a5)
{
  if (!cf)
  {
    return 0;
  }

  if ((CGPathDisableTypeValidation & 1) == 0)
  {
    v8 = CFGetTypeID(cf);
    if (v8 != CGPathGetTypeID())
    {
      return 0;
    }
  }

  return CG::Path::is_ellipse((cf + 16), a2, a3, 0, a5);
}

char *CGPathIsRoundedRectWithTransform(char *cf, CGRect *a2, float64_t *a3, float64_t *a4, CGAffineTransform *a5)
{
  if (cf)
  {
    v9 = cf;
    if ((CGPathDisableTypeValidation & 1) != 0 || (v10 = CFGetTypeID(cf), v10 == CGPathGetTypeID()))
    {
      cf = CG::Path::is_rounded_rect((v9 + 16), a2, &v11, a5);
      if (cf)
      {
        if (a3)
        {
          *a3 = v11.f64[0];
        }

        if (a4)
        {
          *a4 = v11.f64[1];
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return cf;
}

uint64_t CGPathIsUnevenCornersRoundedRectWithTransform(uint64_t cf, uint64_t a2, _OWORD *a3, _OWORD *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  if (cf)
  {
    v7 = cf;
    if ((CGPathDisableTypeValidation & 1) != 0 || (v8 = CFGetTypeID(cf), v8 == CGPathGetTypeID()))
    {
      v9 = *(v7 + 16);
      if (v9 == 2)
      {
        if (a4)
        {
          if (a2)
          {
            *a2 = unit_rect;
          }

          if (a3)
          {
            a3[3] = *(v7 + 72);
            v11 = *(v7 + 72);
            a3[1] = v11;
            a3[2] = v11;
            *a3 = v11;
          }

          goto LABEL_18;
        }

        if (*(v7 + 32) == 0.0 && *(v7 + 40) == 0.0 || *(v7 + 24) == 0.0 && *(v7 + 48) == 0.0)
        {
          if (a2)
          {
            v30 = *(v7 + 40);
            *&v36.a = *(v7 + 24);
            *&v36.c = v30;
            *&v36.tx = *(v7 + 56);
            *a2 = transform_unit_rect(&v36);
            *(a2 + 8) = v31;
            *(a2 + 16) = v32;
            *(a2 + 24) = v33;
          }

          if (a3)
          {
            a3[3] = vabsq_f64(vmlaq_n_f64(vmulq_n_f64(*(v7 + 40), *(v7 + 80)), *(v7 + 24), *(v7 + 72)));
            v34 = a3[3];
            a3[1] = v34;
            a3[2] = v34;
            *a3 = v34;
          }

          return 1;
        }
      }

      else if (v9 == 3)
      {
        if (a4)
        {
          if (a2)
          {
            *a2 = unit_rect;
          }

          if (a3)
          {
            for (i = 0; i != 4; ++i)
            {
              a3[i] = *(v7 + 72 + i * 16);
            }
          }

LABEL_18:
          v12 = *(v7 + 24);
          v13 = *(v7 + 56);
          a4[1] = *(v7 + 40);
          a4[2] = v13;
          *a4 = v12;
          return 1;
        }

        if (*(v7 + 32) == 0.0 && *(v7 + 40) == 0.0 || *(v7 + 24) == 0.0 && *(v7 + 48) == 0.0)
        {
          if (a2)
          {
            v14 = *(v7 + 40);
            *&v36.a = *(v7 + 24);
            *&v36.c = v14;
            *&v36.tx = *(v7 + 56);
            *a2 = transform_unit_rect(&v36);
            *(a2 + 8) = v15;
            *(a2 + 16) = v16;
            *(a2 + 24) = v17;
          }

          if (a3)
          {
            v18 = 0;
            v19 = *(v7 + 24);
            v20 = *(v7 + 32);
            v21 = *(v7 + 40);
            v22 = *(v7 + 48);
            v23 = vdupq_lane_s64(v19, 0);
            v24 = vdupq_lane_s64(v20, 0);
            do
            {
              v25 = (v7 + 72 + v18);
              v38 = vld2q_f64(v25);
              v26 = vmlaq_f64(vmulq_n_f64(v38.val[1], v21), v38.val[0], v23);
              v27 = vmlaq_f64(vmulq_n_f64(v38.val[1], v22), v38.val[0], v24);
              v28 = (&v36 + v18);
              *v28 = vabsq_f64(vzip1q_s64(v26, v27));
              v28[1] = vabsq_f64(vzip2q_s64(v26, v27));
              v18 += 32;
            }

            while (v18 != 64);
            if (*&v19 == 0.0 && v22 == 0.0)
            {
              for (j = 0; j != 4; ++j)
              {
                *a3++ = *(&v36.a + CG::Path::is_uneven_rounded_rect(CGRect *,CGSize *,CGAffineTransform *)const::permute[((4 * (v21 >= 0.0)) | (8 * (*&v20 >= 0.0))) + j]);
              }
            }

            else
            {
              for (k = 0; k != 4; ++k)
              {
                *a3++ = *(&v36.a + CG::Path::is_uneven_rounded_rect(CGRect *,CGSize *,CGAffineTransform *)const::permute[((4 * (v22 >= 0.0)) | (8 * (*&v19 >= 0.0))) + k]);
              }
            }
          }

          return 1;
        }
      }
    }

    return 0;
  }

  return cf;
}

uint64_t CGPathIsArc(uint64_t cf, void *a2, void *a3, void *a4, void *a5, _OWORD *a6)
{
  if (cf)
  {
    v11 = cf;
    if (((CGPathDisableTypeValidation & 1) != 0 || (v12 = CFGetTypeID(cf), v12 == CGPathGetTypeID())) && *(v11 + 16) == 6)
    {
      if (a2)
      {
        *a2 = 0;
        a2[1] = 0;
      }

      if (a3)
      {
        *a3 = 0x3FF0000000000000;
      }

      if (a4)
      {
        *a4 = 0;
      }

      if (a5)
      {
        *a5 = *(v11 + 72);
      }

      if (a6)
      {
        v13 = *(v11 + 24);
        v14 = *(v11 + 56);
        a6[1] = *(v11 + 40);
        a6[2] = v14;
        *a6 = v13;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return cf;
}

BOOL CGPathIsRegion(_BOOL8 cf, void *a2)
{
  if (cf)
  {
    v3 = cf;
    if ((CGPathDisableTypeValidation & 1) != 0 || (v4 = CFGetTypeID(cf), v4 == CGPathGetTypeID()))
    {
      v5 = *(v3 + 16);
      cf = v5 == 7;
      if (a2)
      {
        if (v5 == 7)
        {
          *a2 = *(v3 + 24);
          return 1;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return cf;
}

BOOL CGPathContainsPoint(CGPathRef path, const CGAffineTransform *m, CGPoint point, BOOL eoFill)
{
  v21 = point;
  if (path)
  {
    v9 = eoFill;
    v11 = path;
    y = point.y;
    x = point.x;
    if ((CGPathDisableTypeValidation & 1) != 0 || (v12 = CFGetTypeID(path), v12 == CGPathGetTypeID()))
    {
      if (path)
      {
        if (m)
        {
          v21 = vaddq_f64(*&m->tx, vmlaq_n_f64(vmulq_n_f64(*&m->c, y), *&m->a, x));
        }

        LOBYTE(path) = CG::Path::contains_point((v11 + 16), &v21, v9, v13, v14, v15, v16, v17);
      }
    }

    else
    {
      LOBYTE(path) = 0;
    }
  }

  return path;
}

uint64_t CGPathIsValidGlyphPath(CFTypeRef cf)
{
  v83[3].f64[1] = *MEMORY[0x1E69E9840];
  if (!cf)
  {
    return 0;
  }

  if ((CGPathDisableTypeValidation & 1) == 0)
  {
    v2 = CFGetTypeID(cf);
    if (v2 != CGPathGetTypeID())
    {
      return 0;
    }
  }

  info[0].f64[0] = 0.0;
  CGPathApply(cf, info, process_subpath_split);
  v8 = info[0].f64[0];
  if (!*&info[0].f64[0])
  {
    return 1;
  }

  v9 = 0.0;
  do
  {
    v10 = **&v8;
    v11 = *(*&v8 + 16);
    if (!v11)
    {
      goto LABEL_8;
    }

    if (*(v11 + 4))
    {
      goto LABEL_8;
    }

    v12 = *v11;
    if (!*v11)
    {
      goto LABEL_8;
    }

    while (1)
    {
      v13 = *v12;
      v14 = *(v12 + 4);
      if (!v13)
      {
        break;
      }

      v15 = v14 - 1;
      v12 = v13;
      if (v15 >= 3)
      {
        goto LABEL_8;
      }
    }

    if (v14 != 4)
    {
      goto LABEL_8;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = *v11;
      if (*(v11 + 4) != 1 || *(v19 + 4) != 4 || (*(v11 + 3) == *(v19 + 3) ? (_ZF = *(v11 + 4) == *(v19 + 4)) : (_ZF = 0), !_ZF))
      {
        if (!v16 || !v19)
        {
          goto LABEL_30;
        }

        v21 = *(v11 + 1);
        if (v21)
        {
          v22 = &v16[16 * *(v16 + 1)];
          v23 = *(v22 + 1);
          v24 = *(v22 + 2);
          if (v23 != *(v11 + 3) || v24 != *(v11 + 4))
          {
LABEL_30:
            *v11 = v18;
            ++v17;
            v16 = v11;
            v18 = v11;
            goto LABEL_39;
          }

          v26 = 0;
          v27 = (v11 + 48);
          while (v21 - 1 != v26)
          {
            v28 = *(v27 - 1);
            v29 = *v27;
            v27 += 2;
            ++v26;
            if (v23 != v28 || v24 != v29)
            {
              if (v26 < v21)
              {
                goto LABEL_30;
              }

              break;
            }
          }
        }
      }

      free(v11);
      v16 = 0;
LABEL_39:
      v11 = v19;
    }

    while (v19);
    if (v17 > 2)
    {
      if (v17 == 3)
      {
        v32 = *v18;
        if (*(*v18 + 16) == 1)
        {
          while (1)
          {
            v33 = v18;
            v18 = v32;
            free(v33);
            if (!v18)
            {
              break;
            }

            v32 = *v18;
          }

          goto LABEL_52;
        }
      }

      else if (!v18)
      {
        goto LABEL_52;
      }

      v34 = 0;
      do
      {
        v35 = v18;
        v18 = *v18;
        *v35 = v34;
        v34 = v35;
      }

      while (v18);
      *(*&v8 + 16) = v35;
      **&v8 = v9;
      v9 = v8;
    }

    else
    {
      if (v18)
      {
        do
        {
          v31 = *v18;
          free(v18);
          v18 = v31;
        }

        while (v31);
      }

LABEL_52:
      *(*&v8 + 16) = 0;
LABEL_8:
      subpath_release(*&v8);
    }

    v8 = v10;
  }

  while (v10 != 0.0);
  if (v9 == 0.0)
  {
    return 1;
  }

  v37 = v9;
  do
  {
    if (*(*&v37 + 8) == -1)
    {
      *(*&v37 + 8) = 0;
      v38 = v9;
      do
      {
        if (*&v38 != *&v37)
        {
          v39 = *(*&v37 + 16);
          if (*v39)
          {
            v40 = 0;
            v41 = 0;
            do
            {
              v42 = *&v39[2 * v39[1] + 1];
              v81 = 0;
              v43 = *(*&v38 + 16);
              v44 = *v43;
              if (*v43)
              {
                v45 = 0;
                v46 = vsubq_f64(*(v43 + 24), v42);
                v79 = v42;
                do
                {
                  info[0] = v46;
                  v47 = v44[1];
                  if (v47)
                  {
                    v48 = (v44 + 3);
                    v49 = v83;
                    v50 = v44[1];
                    do
                    {
                      v51 = *v48++;
                      *v49++ = vsubq_f64(v51, v42);
                      --v50;
                    }

                    while (v50);
                    v46 = info[v47];
                  }

                  v80 = v46;
                  v52 = crossing_count(info, v47, &v81, v3, v4, v5, v6, v7);
                  if (v81 == 1)
                  {
                    v53 = 0;
                    goto LABEL_74;
                  }

                  v45 += v52;
                  v44 = *v44;
                  v42 = v79;
                  v46 = v80;
                }

                while (v44);
                if (v45)
                {
                  ++v41;
                }

                else
                {
                  v40 += v81 ^ 1;
                }
              }

              else
              {
                v53 = 1;
LABEL_74:
                v40 += v53;
              }

              v39 = *v39;
            }

            while (*v39);
            if (v41 && (!v40 || v41 > v40 + 1))
            {
              ++*(*&v37 + 8);
            }
          }
        }

        v38 = **&v38;
      }

      while (v38 != 0.0);
    }

    v37 = **&v37;
  }

  while (v37 != 0.0);
  __asm
  {
    FMOV            V0.2D, #2.0
    FMOV            V1.2D, #0.25
    FMOV            V2.2D, #3.0
  }

  v60 = v9;
  __asm { FMOV            V3.2D, #0.125 }

  while (2)
  {
    if (*(*&v60 + 12) == -2)
    {
      v62 = *(*&v60 + 16);
      v63 = *v62;
      if (*v62)
      {
        _Q5 = *(v62 + 3);
        v65 = 0.0;
        while (1)
        {
          _Q6 = _Q5;
          _Q5 = *&v63[2 * v63[1] + 1];
          v67 = *(v63 + 4);
          if (v67 == 2)
          {
            break;
          }

          if (v67 == 3)
          {
            v68 = vmulq_f64(vaddq_f64(_Q5, vmlaq_f64(vmlaq_f64(_Q6, _Q2, *(v63 + 3)), _Q2, *(v63 + 5))), _Q3);
LABEL_90:
            v65 = v65 + vmuld_lane_f64(-v68.f64[0], _Q6, 1) + _Q6.f64[0] * v68.f64[1];
            _Q6.f64[0] = v68.f64[0];
          }

          __asm { FMLA            D7, D6, V5.D[1] }

          v65 = v65 + _D7;
          v63 = *v63;
          if (!v63)
          {
            goto LABEL_94;
          }
        }

        v68 = vmulq_f64(vaddq_f64(_Q5, vmlaq_f64(_Q6, _Q0, *(v63 + 3))), _Q1);
        goto LABEL_90;
      }

      v65 = 0.0;
LABEL_94:
      v70 = v65 > 0.0;
      if (v65 == 0.0)
      {
        v70 = -1;
      }

      *(*&v60 + 12) = v70;
    }

    v60 = **&v60;
    if (v60 != 0.0)
    {
      continue;
    }

    break;
  }

  v71 = 0;
  v72 = v9;
  do
  {
    if (!*(*&v72 + 8))
    {
      v73 = *(*&v72 + 12);
      if (v73 != -1)
      {
        if (v73 == 1)
        {
          ++LODWORD(v60);
        }

        else
        {
          if (v73)
          {
            abort();
          }

          ++v71;
        }
      }
    }

    v72 = **&v72;
  }

  while (v72 != 0.0);
  v74 = v71 < SLODWORD(v60);
  v75 = v9;
  while (2)
  {
    v76 = *(*&v75 + 12);
    if ((*(*&v75 + 8) & 1) == 0)
    {
      if (v76 != v74)
      {
        break;
      }

      goto LABEL_112;
    }

    if (v76 != v74)
    {
LABEL_112:
      v75 = **&v75;
      if (v75 == 0.0)
      {
        v36 = 1;
        goto LABEL_115;
      }

      continue;
    }

    break;
  }

  v36 = 0;
  do
  {
LABEL_115:
    v77 = **&v9;
    subpath_release(*&v9);
    v9 = *&v77;
  }

  while (*&v77 != 0.0);
  return v36;
}