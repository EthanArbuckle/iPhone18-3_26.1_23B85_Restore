uint64_t cmyk32_sample_rgb555(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *(result + 40);
  v7 = *(result + 176);
  v88 = *(result + 80);
  v89 = *(result + 88);
  v102 = *(result + 120);
  v103 = *(result + 112);
  v8 = (*(result + 152) - 8);
  v92 = *(result + 144) - 1;
  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = -16777216;
  }

  v96 = v9;
  v10 = *(result + 260) - 1;
  v100 = *(result + 24);
  v98 = *(result + 32);
  v11 = *(result + 256);
  v87 = *(result + 188);
  v94 = *(result + 28);
  v95 = (v6 + (v11 - 1) + (v10 * v94));
  v101 = v98 + (v10 * v100) + 2 * v11 - 4;
  v90 = *(result + 72);
  v91 = *(result + 64);
  v99 = result;
  v97 = *(result + 40);
  while (1)
  {
    if (a3 >= v90)
    {
      if (a3 <= v89)
      {
        v22 = (a3 >> 22) & 0x3C0;
        v23 = 0x3FFFFFFF;
        v24 = a3;
        v15 = a4;
        v16 = v91;
      }

      else
      {
        v18 = *(result + 216);
        v19 = *(result + 224) + v89;
        v20 = v19 - a3 + (v18 >> 1);
        v15 = a4;
        v16 = v91;
        if (v20 < 1)
        {
          goto LABEL_41;
        }

        if (v20 >= v18)
        {
          LODWORD(v21) = 0x3FFFFFFF;
        }

        else
        {
          v21 = (*(result + 232) * v20) >> 32;
        }

        v23 = v87 | v21;
        v24 = v19 - 0x1000000;
        v22 = 448;
      }
    }

    else
    {
      v12 = *(result + 216);
      v13 = v90 - *(result + 224);
      v14 = a3 - v13 + (v12 >> 1);
      v15 = a4;
      v16 = v91;
      if (v14 < 1)
      {
        goto LABEL_41;
      }

      if (v14 >= v12)
      {
        LODWORD(v17) = 0x3FFFFFFF;
      }

      else
      {
        v17 = (*(result + 232) * v14) >> 32;
      }

      v23 = v87 | v17;
      v24 = v13 + 0x1000000;
      v22 = 512;
    }

    if (a2 >= v16)
    {
      if (a2 <= v88)
      {
        v29 = (a2 >> 26) & 0x3C;
        v28 = a2;
      }

      else
      {
        v30 = *(result + 192);
        v31 = *(result + 200) + v88;
        v32 = v31 - a2 + (v30 >> 1);
        if (v32 < 1)
        {
          goto LABEL_41;
        }

        if (v32 < v30)
        {
          v23 = ((v23 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v87;
        }

        v28 = v31 - 0x1000000;
        v29 = 28;
      }
    }

    else
    {
      v25 = *(result + 192);
      v26 = v16 - *(result + 200);
      v27 = a2 - v26 + (v25 >> 1);
      if (v27 < 1)
      {
        goto LABEL_41;
      }

      if (v27 < v25)
      {
        v23 = ((v23 >> 15) * (((*(result + 208) * v27) >> 32) >> 15)) | v87;
      }

      v28 = v26 + 0x1000000;
      v29 = 32;
    }

    if (v23 >= 0x400000)
    {
      break;
    }

LABEL_41:
    v42 = v15 - 1;
    a2 += v103;
    a3 += v102;
    ++v8;
    *++v92 = 0;
LABEL_42:
    a4 = v42;
    if (!v42)
    {
      return result;
    }
  }

  v33 = v24 >> 32;
  v34 = v28 >> 32;
  v35 = v98 + SHIDWORD(v24) * v100 + 2 * (v28 >> 32);
  v36 = *(result + 32);
  v37 = v101;
  if (v101 >= v35)
  {
    v37 = v35;
  }

  if (v37 < v36)
  {
    v37 = *(result + 32);
  }

  v38 = *v37;
  if (v6)
  {
    v39 = v6 + v33 * v94 + v34;
    v40 = *(result + 40);
    v41 = v95;
    v93 = v39;
    if (v95 >= v39)
    {
      v41 = v39;
    }

    if (v41 >= v40)
    {
      v40 = v41;
    }

    v38 |= *v40 << 24;
    if (!v7)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v93 = 0;
    if (!v7)
    {
      goto LABEL_46;
    }
  }

  v43 = *(v7 + (v29 | v22));
LABEL_64:
  v52 = v43 & 0xF;
  v53 = HIBYTE(v43) & 3;
  if (v52 == 1)
  {
    v81 = (v35 + SBYTE1(v43) * v100);
    if (v101 < v81)
    {
      v81 = v101;
    }

    if (v81 >= v36)
    {
      v36 = v81;
    }

    v82 = *v36;
    if (v6)
    {
      v83 = (v93 + SBYTE1(v43) * v94);
      if (v95 < v83)
      {
        v83 = v95;
      }

      if (v83 < *(result + 40))
      {
        v83 = *(result + 40);
      }

      v82 |= *v83 << 24;
    }

    v84 = interpolate_8555_21866[v53];
    v85 = v53 + 1;
    v73 = v38 - ((v84 & v38) >> v85);
    v80 = (v84 & v82) >> v85;
  }

  else
  {
    if (v52 == 2)
    {
      v75 = (v35 + ((HIWORD(v43) << 56) >> 55));
      if (v101 < v75)
      {
        v75 = v101;
      }

      if (v75 >= v36)
      {
        v36 = v75;
      }

      v76 = *v36;
      if (v6)
      {
        v77 = (v93 + SBYTE2(v43));
        if (v95 < v77)
        {
          v77 = v95;
        }

        if (v77 < *(result + 40))
        {
          v77 = *(result + 40);
        }

        v76 |= *v77 << 24;
      }

      v78 = (v43 >> 28) & 3;
      v79 = interpolate_8555_21866[v78];
      v72 = v78 + 1;
      v73 = v38 - ((v79 & v38) >> v72);
      v74 = v79 & v76;
    }

    else
    {
      if (v52 != 3)
      {
        goto LABEL_46;
      }

      v54 = HIWORD(v43) << 56;
      v55 = (v35 + (v54 >> 55));
      if (v101 < v55)
      {
        v55 = v101;
      }

      if (v55 < v36)
      {
        v55 = v36;
      }

      v56 = *v55;
      v57 = v35 + SBYTE1(v43) * v100;
      if (v101 >= v57)
      {
        v58 = (v35 + SBYTE1(v43) * v100);
      }

      else
      {
        v58 = v101;
      }

      if (v58 < v36)
      {
        v58 = v36;
      }

      v59 = *v58;
      v60 = (v57 + (v54 >> 55));
      if (v101 < v60)
      {
        v60 = v101;
      }

      if (v60 >= v36)
      {
        v36 = v60;
      }

      v61 = *v36;
      if (v6)
      {
        v62 = (v93 + SBYTE2(v43));
        v63 = *(result + 40);
        if (v95 < v62)
        {
          v62 = v95;
        }

        if (v62 < v63)
        {
          v62 = v63;
        }

        v56 |= *v62 << 24;
        v64 = v93 + SBYTE1(v43) * v94;
        if (v95 >= v64)
        {
          v65 = (v93 + SBYTE1(v43) * v94);
        }

        else
        {
          v65 = v95;
        }

        if (v65 < v63)
        {
          v65 = v63;
        }

        v59 |= *v65 << 24;
        v66 = (v64 + SBYTE2(v43));
        if (v95 < v66)
        {
          v66 = v95;
        }

        if (v66 < v63)
        {
          v66 = v63;
        }

        v61 |= *v66 << 24;
      }

      v67 = interpolate_8555_21866[v53];
      v68 = v53 + 1;
      v69 = v38 - ((v67 & v38) >> v68) + ((v67 & v59) >> v68);
      v70 = (v43 >> 28) & 3;
      v71 = interpolate_8555_21866[v70];
      v72 = v70 + 1;
      v73 = v69 - ((v69 & v71) >> v72);
      v74 = (v56 - ((v67 & v56) >> v68) + ((v67 & v61) >> v68)) & v71;
    }

    v80 = v74 >> v72;
  }

  v38 = v73 + v80;
LABEL_46:
  v44 = 0;
  v45 = v23 >> 22;
  ++v8;
  v86 = v15;
  v46 = v15 - 1;
  a3 += v102;
  v47 = v89 - a3;
  a2 += v103;
  v48 = v88 - a2;
  while (1)
  {
    RGB555(v8, v96 | (v38 >> 29 << 24) | v38);
    *(v92 + 1 + v44) = v45;
    result = v99;
    v6 = v97;
    if (v46 == v44)
    {
      return result;
    }

    if ((v47 | v48 | (a3 - v90) | (a2 - v91)) < 0)
    {
      v92 += v44 + 1;
      v42 = ~v44 + v86;
      goto LABEL_42;
    }

    v35 = v98 + SHIDWORD(a3) * v100 + 2 * (a2 >> 32);
    v36 = *(v99 + 32);
    v49 = v101;
    if (v101 >= v35)
    {
      v49 = (v98 + SHIDWORD(a3) * v100 + 2 * (a2 >> 32));
    }

    if (v49 < v36)
    {
      v49 = *(v99 + 32);
    }

    v38 = *v49;
    if (v97)
    {
      v50 = *(v99 + 40);
      v51 = v95;
      v93 = v97 + SHIDWORD(a3) * v94 + (a2 >> 32);
      if (v95 >= v93)
      {
        v51 = v97 + SHIDWORD(a3) * v94 + (a2 >> 32);
      }

      if (v51 >= v50)
      {
        v50 = v51;
      }

      v38 |= *v50 << 24;
    }

    if (v7)
    {
      v43 = *(v7 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v43 & 0xF) != 0)
      {
        v92 += v44 + 1;
        v15 = ~v44 + v86;
        v23 = -1;
        goto LABEL_64;
      }
    }

    ++v44;
    ++v8;
    a3 += v102;
    v47 -= v102;
    a2 += v103;
    v48 -= v103;
    LOBYTE(v45) = -1;
  }
}

unint64_t *RGB555(unint64_t *result, unsigned int a2)
{
  v2 = (a2 << 14) & 0xF80000 | ((a2 >> 10) << 27) | ((a2 & 0x1F) << 11);
  v3 = (v2 >> 5) & 0x3F3F3F3F | HIBYTE(a2) | v2;
  v4 = HIBYTE(v3);
  if (HIBYTE(v3) <= BYTE2(v3))
  {
    v4 = BYTE2(v3);
  }

  if (v4 <= BYTE1(v3))
  {
    v4 = BYTE1(v3);
  }

  *result = ((HIBYTE(a2) - v4) | ((v4 - BYTE2(v3)) << 16) | ((v4 - HIBYTE(v3)) << 24) | ((v4 - BYTE1(v3)) << 8)) | (HIBYTE(a2) << 32);
  return result;
}

uint64_t cmyk32_sample_RGB555(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *(result + 40);
  v7 = *(result + 176);
  v88 = *(result + 80);
  v89 = *(result + 88);
  v102 = *(result + 120);
  v103 = *(result + 112);
  v8 = (*(result + 152) - 8);
  v92 = *(result + 144) - 1;
  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = -16777216;
  }

  v96 = v9;
  v10 = *(result + 260) - 1;
  v100 = *(result + 24);
  v98 = *(result + 32);
  v11 = *(result + 256);
  v87 = *(result + 188);
  v94 = *(result + 28);
  v95 = (v6 + (v11 - 1) + (v10 * v94));
  v101 = v98 + (v10 * v100) + 2 * v11 - 4;
  v90 = *(result + 72);
  v91 = *(result + 64);
  v99 = result;
  v97 = *(result + 40);
  while (1)
  {
    if (a3 >= v90)
    {
      if (a3 <= v89)
      {
        v22 = (a3 >> 22) & 0x3C0;
        v23 = 0x3FFFFFFF;
        v24 = a3;
        v15 = a4;
        v16 = v91;
      }

      else
      {
        v18 = *(result + 216);
        v19 = *(result + 224) + v89;
        v20 = v19 - a3 + (v18 >> 1);
        v15 = a4;
        v16 = v91;
        if (v20 < 1)
        {
          goto LABEL_41;
        }

        if (v20 >= v18)
        {
          LODWORD(v21) = 0x3FFFFFFF;
        }

        else
        {
          v21 = (*(result + 232) * v20) >> 32;
        }

        v23 = v87 | v21;
        v24 = v19 - 0x1000000;
        v22 = 448;
      }
    }

    else
    {
      v12 = *(result + 216);
      v13 = v90 - *(result + 224);
      v14 = a3 - v13 + (v12 >> 1);
      v15 = a4;
      v16 = v91;
      if (v14 < 1)
      {
        goto LABEL_41;
      }

      if (v14 >= v12)
      {
        LODWORD(v17) = 0x3FFFFFFF;
      }

      else
      {
        v17 = (*(result + 232) * v14) >> 32;
      }

      v23 = v87 | v17;
      v24 = v13 + 0x1000000;
      v22 = 512;
    }

    if (a2 >= v16)
    {
      if (a2 <= v88)
      {
        v29 = (a2 >> 26) & 0x3C;
        v28 = a2;
      }

      else
      {
        v30 = *(result + 192);
        v31 = *(result + 200) + v88;
        v32 = v31 - a2 + (v30 >> 1);
        if (v32 < 1)
        {
          goto LABEL_41;
        }

        if (v32 < v30)
        {
          v23 = ((v23 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v87;
        }

        v28 = v31 - 0x1000000;
        v29 = 28;
      }
    }

    else
    {
      v25 = *(result + 192);
      v26 = v16 - *(result + 200);
      v27 = a2 - v26 + (v25 >> 1);
      if (v27 < 1)
      {
        goto LABEL_41;
      }

      if (v27 < v25)
      {
        v23 = ((v23 >> 15) * (((*(result + 208) * v27) >> 32) >> 15)) | v87;
      }

      v28 = v26 + 0x1000000;
      v29 = 32;
    }

    if (v23 >= 0x400000)
    {
      break;
    }

LABEL_41:
    v42 = v15 - 1;
    a2 += v103;
    a3 += v102;
    ++v8;
    *++v92 = 0;
LABEL_42:
    a4 = v42;
    if (!v42)
    {
      return result;
    }
  }

  v33 = v24 >> 32;
  v34 = v28 >> 32;
  v35 = v98 + SHIDWORD(v24) * v100 + 2 * (v28 >> 32);
  v36 = *(result + 32);
  v37 = v101;
  if (v101 >= v35)
  {
    v37 = v35;
  }

  if (v37 < v36)
  {
    v37 = *(result + 32);
  }

  v38 = bswap32(*v37) >> 16;
  if (v6)
  {
    v39 = v6 + v33 * v94 + v34;
    v40 = *(result + 40);
    v41 = v95;
    v93 = v39;
    if (v95 >= v39)
    {
      v41 = v39;
    }

    if (v41 >= v40)
    {
      v40 = v41;
    }

    v38 |= *v40 << 24;
    if (!v7)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v93 = 0;
    if (!v7)
    {
      goto LABEL_46;
    }
  }

  v43 = *(v7 + (v29 | v22));
LABEL_64:
  v52 = v43 & 0xF;
  v53 = HIBYTE(v43) & 3;
  if (v52 == 1)
  {
    v81 = (v35 + SBYTE1(v43) * v100);
    if (v101 < v81)
    {
      v81 = v101;
    }

    if (v81 >= v36)
    {
      v36 = v81;
    }

    v82 = bswap32(*v36) >> 16;
    if (v6)
    {
      v83 = (v93 + SBYTE1(v43) * v94);
      if (v95 < v83)
      {
        v83 = v95;
      }

      if (v83 < *(result + 40))
      {
        v83 = *(result + 40);
      }

      v82 |= *v83 << 24;
    }

    v84 = interpolate_8555_21866[v53];
    v85 = v53 + 1;
    v73 = v38 - ((v84 & v38) >> v85);
    v80 = (v84 & v82) >> v85;
  }

  else
  {
    if (v52 == 2)
    {
      v75 = (v35 + ((HIWORD(v43) << 56) >> 55));
      if (v101 < v75)
      {
        v75 = v101;
      }

      if (v75 >= v36)
      {
        v36 = v75;
      }

      v76 = bswap32(*v36) >> 16;
      if (v6)
      {
        v77 = (v93 + SBYTE2(v43));
        if (v95 < v77)
        {
          v77 = v95;
        }

        if (v77 < *(result + 40))
        {
          v77 = *(result + 40);
        }

        v76 |= *v77 << 24;
      }

      v78 = (v43 >> 28) & 3;
      v79 = interpolate_8555_21866[v78];
      v72 = v78 + 1;
      v73 = v38 - ((v79 & v38) >> v72);
      v74 = v79 & v76;
    }

    else
    {
      if (v52 != 3)
      {
        goto LABEL_46;
      }

      v54 = HIWORD(v43) << 56;
      v55 = (v35 + (v54 >> 55));
      if (v101 < v55)
      {
        v55 = v101;
      }

      if (v55 < v36)
      {
        v55 = v36;
      }

      v56 = bswap32(*v55) >> 16;
      v57 = v35 + SBYTE1(v43) * v100;
      if (v101 >= v57)
      {
        v58 = (v35 + SBYTE1(v43) * v100);
      }

      else
      {
        v58 = v101;
      }

      if (v58 < v36)
      {
        v58 = v36;
      }

      v59 = bswap32(*v58) >> 16;
      v60 = (v57 + (v54 >> 55));
      if (v101 < v60)
      {
        v60 = v101;
      }

      if (v60 >= v36)
      {
        v36 = v60;
      }

      v61 = bswap32(*v36) >> 16;
      if (v6)
      {
        v62 = (v93 + SBYTE2(v43));
        v63 = *(result + 40);
        if (v95 < v62)
        {
          v62 = v95;
        }

        if (v62 < v63)
        {
          v62 = v63;
        }

        v56 |= *v62 << 24;
        v64 = v93 + SBYTE1(v43) * v94;
        if (v95 >= v64)
        {
          v65 = (v93 + SBYTE1(v43) * v94);
        }

        else
        {
          v65 = v95;
        }

        if (v65 < v63)
        {
          v65 = v63;
        }

        v59 |= *v65 << 24;
        v66 = (v64 + SBYTE2(v43));
        if (v95 < v66)
        {
          v66 = v95;
        }

        if (v66 < v63)
        {
          v66 = v63;
        }

        v61 |= *v66 << 24;
      }

      v67 = interpolate_8555_21866[v53];
      v68 = v53 + 1;
      v69 = v38 - ((v67 & v38) >> v68) + ((v67 & v59) >> v68);
      v70 = (v43 >> 28) & 3;
      v71 = interpolate_8555_21866[v70];
      v72 = v70 + 1;
      v73 = v69 - ((v69 & v71) >> v72);
      v74 = (v56 - ((v67 & v56) >> v68) + ((v67 & v61) >> v68)) & v71;
    }

    v80 = v74 >> v72;
  }

  v38 = v73 + v80;
LABEL_46:
  v44 = 0;
  v45 = v23 >> 22;
  ++v8;
  v86 = v15;
  v46 = v15 - 1;
  a3 += v102;
  v47 = v89 - a3;
  a2 += v103;
  v48 = v88 - a2;
  while (1)
  {
    RGB555(v8, v96 | (v38 >> 29 << 24) | v38);
    *(v92 + 1 + v44) = v45;
    result = v99;
    v6 = v97;
    if (v46 == v44)
    {
      return result;
    }

    if ((v47 | v48 | (a3 - v90) | (a2 - v91)) < 0)
    {
      v92 += v44 + 1;
      v42 = ~v44 + v86;
      goto LABEL_42;
    }

    v35 = v98 + SHIDWORD(a3) * v100 + 2 * (a2 >> 32);
    v36 = *(v99 + 32);
    v49 = v101;
    if (v101 >= v35)
    {
      v49 = (v98 + SHIDWORD(a3) * v100 + 2 * (a2 >> 32));
    }

    if (v49 < v36)
    {
      v49 = *(v99 + 32);
    }

    v38 = bswap32(*v49) >> 16;
    if (v97)
    {
      v50 = *(v99 + 40);
      v51 = v95;
      v93 = v97 + SHIDWORD(a3) * v94 + (a2 >> 32);
      if (v95 >= v93)
      {
        v51 = v97 + SHIDWORD(a3) * v94 + (a2 >> 32);
      }

      if (v51 >= v50)
      {
        v50 = v51;
      }

      v38 |= *v50 << 24;
    }

    if (v7)
    {
      v43 = *(v7 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v43 & 0xF) != 0)
      {
        v92 += v44 + 1;
        v15 = ~v44 + v86;
        v23 = -1;
        goto LABEL_64;
      }
    }

    ++v44;
    ++v8;
    a3 += v102;
    v47 -= v102;
    a2 += v103;
    v48 -= v103;
    LOBYTE(v45) = -1;
  }
}

uint64_t cmyk32_sample_W8(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v86 = *(result + 80);
  v88 = *(result + 88);
  v10 = *(result + 112);
  v9 = *(result + 120);
  v11 = *(result + 152) - 8;
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
  v85 = *(result + 188);
  v17 = v4 + v15 + (v14 * v6) - 1;
  v87 = *(result + 64);
  v89 = *(result + 72);
  while (1)
  {
LABEL_5:
    if (a3 >= v89)
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

        v29 = v87;
        v27 = v85 | v25;
        v28 = v23 - 0x1000000;
        v26 = 448;
      }
    }

    else
    {
      v18 = *(result + 216);
      v19 = v89 - *(result + 224);
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

      v29 = v87;
      v27 = v85 | v21;
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
      goto LABEL_29;
    }

LABEL_43:
    --a4;
    a2 += v10;
    a3 += v9;
    v11 += 8;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v86)
  {
    v34 = (a2 >> 26) & 0x3C;
    v33 = a2;
    goto LABEL_29;
  }

  v35 = *(result + 192);
  v36 = *(result + 200) + v86;
  v37 = v36 - a2 + (v35 >> 1);
  if (v37 < 1)
  {
    goto LABEL_43;
  }

  if (v37 < v35)
  {
    v27 = ((v27 >> 15) * (((*(result + 208) * v37) >> 32) >> 15)) | v85;
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
    v55 = v47 & 0xF;
    v56 = HIBYTE(v47) & 3;
    switch(v55)
    {
      case 1:
        v79 = (v40 + SBYTE1(v47) * v6);
        if (v17 < v79)
        {
          v79 = v17;
        }

        if (v79 < v41)
        {
          v79 = v41;
        }

        v80 = *v79;
        if (v5)
        {
          v81 = (v44 + SBYTE1(v47) * v7);
          if (v16 < v81)
          {
            v81 = v16;
          }

          if (v81 < *(result + 40))
          {
            v81 = *(result + 40);
          }

          v80 |= *v81 << 24;
        }

        v82 = interpolate_8888_21865[v56];
        v83 = v56 + 1;
        v74 = v43 - ((v82 & v43) >> v83);
        v75 = (v82 & v80) >> v83;
        break;
      case 2:
        v76 = (v40 + SBYTE2(v47));
        if (v17 < v76)
        {
          v76 = v17;
        }

        if (v76 < v41)
        {
          v76 = v41;
        }

        v77 = *v76;
        if (v5)
        {
          v78 = (v44 + SBYTE2(v47));
          if (v16 < v78)
          {
            v78 = v16;
          }

          if (v78 < *(result + 40))
          {
            v78 = *(result + 40);
          }

          v77 |= *v78 << 24;
        }

        v43 = v43 - ((interpolate_8888_21865[(v47 >> 28) & 3] & v43) >> (((v47 >> 28) & 3) + 1)) + ((interpolate_8888_21865[(v47 >> 28) & 3] & v77) >> (((v47 >> 28) & 3) + 1));
        goto LABEL_47;
      case 3:
        v84 = HIBYTE(v47) & 3;
        v57 = (v40 + SBYTE2(v47));
        if (v17 < v57)
        {
          v57 = v17;
        }

        if (v57 < v41)
        {
          v57 = v41;
        }

        v58 = *v57;
        v59 = v40 + SBYTE1(v47) * v6;
        if (v17 >= v59)
        {
          v60 = (v40 + SBYTE1(v47) * v6);
        }

        else
        {
          v60 = v17;
        }

        if (v60 < v41)
        {
          v60 = v41;
        }

        v61 = *v60;
        v62 = (v59 + SBYTE2(v47));
        if (v17 < v62)
        {
          v62 = v17;
        }

        if (v62 < v41)
        {
          v62 = v41;
        }

        v63 = *v62;
        if (v5)
        {
          v64 = (v44 + SBYTE2(v47));
          v65 = *(result + 40);
          if (v16 < v64)
          {
            v64 = v16;
          }

          if (v64 < v65)
          {
            v64 = *(result + 40);
          }

          v58 |= *v64 << 24;
          v66 = v44 + SBYTE1(v47) * v7;
          if (v16 >= v66)
          {
            v67 = (v44 + SBYTE1(v47) * v7);
          }

          else
          {
            v67 = v16;
          }

          if (v67 < v65)
          {
            v67 = *(result + 40);
          }

          v61 |= *v67 << 24;
          v68 = (v66 + SBYTE2(v47));
          if (v16 < v68)
          {
            v68 = v16;
          }

          if (v68 < v65)
          {
            v68 = *(result + 40);
          }

          v63 |= *v68 << 24;
        }

        v69 = interpolate_8888_21865[v84];
        v70 = v43 - ((v69 & v43) >> (v84 + 1)) + ((v69 & v61) >> (v84 + 1));
        v71 = v58 - ((v69 & v58) >> (v84 + 1)) + ((v69 & v63) >> (v84 + 1));
        v72 = (v47 >> 28) & 3;
        v73 = interpolate_8888_21865[v72];
        LOBYTE(v72) = v72 + 1;
        v74 = v70 - ((v70 & v73) >> v72);
        v75 = (v71 & v73) >> v72;
        break;
      default:
        goto LABEL_47;
    }

    v43 = v74 + v75;
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
  *(v11 + 8) = (((v43 | v13) >> 24) - ((v43 | v13) != 0)) | (((v43 | v13) >> 24) << 32);
  *(v12 + 1) = v27 >> 22;
  if (a4 != 1)
  {
    v48 = 0;
    a2 += v10;
    v49 = v86 - a2;
    a3 += v9;
    v50 = v88 - a3;
    v51 = -8;
    while (((v50 | v49 | (a3 - v89) | (a2 - v87)) & 0x8000000000000000) == 0)
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

      *(v11 + 8 * v48 + 16) = (((v43 | v13) >> 24) - ((v43 | v13) != 0)) | (((v43 | v13) >> 24) << 32);
      *(v12 + v48++ + 2) = -1;
      v51 -= 8;
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

uint64_t cmyk32_shade(uint64_t a1, __n128 a2)
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

  if ((*v5 & 0xF000000) == 0x4000000)
  {
    if (*(v5 + 16))
    {
      v14 = cmyk32_shade_radial_CMYK;
    }

    else if (*(v5 + 24))
    {
      v14 = cmyk32_shade_conic_CMYK;
    }

    else if (*(&v19 + 1) < 2)
    {
      v14 = cmyk32_shade_axial_CMYK;
    }

    else
    {
      v14 = cmyk32_shade_custom_CMYK;
    }

    *&v17[0] = v14;
    if (v40)
    {
      *(&v39 + 1) = v46;
      _blt_shade_samples_16(v46, 2, 4, v40, *(&v40 + 1), 1uLL);
    }

    v15 = *(&v19 + 1) * v19;
    if ((*(&v19 + 1) * v19) <= 384)
    {
      v16 = v44;
      v38[1] = v44;
LABEL_27:
      _blt_shade_samples_16(v16, 2, 4, v18, *(&v18 + 1), v15);
      if (*(v5 + 1))
      {
        *&v39 = &_blt_shade_samples_noise;
      }

      goto LABEL_29;
    }

    v16 = malloc_type_malloc(10 * v15 + 32, 0x8C254358uLL);
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
  cmyk32_image_mark(v6, v17, v11, v13);
  if (v38[1] && (v38[1] < v44 || &v45 < v38[1]))
  {
    free(v38[1]);
  }

  return 1;
}

void cmyk32_image_mark(uint64_t a1, uint64_t a2, int a3, __n128 a4)
{
  v423 = *MEMORY[0x1E69E9840];
  v417 = *(a1 + 4);
  v404 = v417;
  v4 = (v417 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v4 <= 0x1FFFFFF)
  {
    v8 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = *(a2 + 184);
    v419 = *(a1 + 136);
    v420 = v7;
    v10 = *(a2 + 104);
    v415 = *(a2 + 96);
    v416 = v10;
    v12 = *(a1 + 24);
    v11 = *(a1 + 28);
    v13 = *(a1 + 16);
    v418 = *(a1 + 20);
    v14 = *(a1 + 12);
    v414 = *(a1 + 8);
    v405 = a2;
    v15 = *(a2 + 16);
    v16 = (v15 + 10) * v4;
    if (v16 > 65439)
    {
      v19 = malloc_type_calloc(1uLL, v16 + 96, 0xF5B4F9ABuLL);
      v18 = v19;
      v21 = v19;
      v22 = v405;
      if (!v19)
      {
        return;
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](a1, a4);
      v18 = &v396 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v18, v17);
      v21 = 0;
      v22 = v405;
    }

    v399 = v21;
    v412 = a3;
    v421 = ((v9 * 255.0) + 0.5);
    v23 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
    v24 = v23 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22[20] = v24;
    if (v15)
    {
      v25 = 8 * v4;
    }

    else
    {
      v25 = 0;
    }

    v26 = v24 + v25;
    v27 = v8 + (v12 - 1) * v11;
    v28 = v11 >> 2;
    v22[18] = v23;
    v22[19] = v26;
    v29 = v22;
    if (v420)
    {
      v30 = *(a1 + 32);
      v31 = a1;
      v32 = (v420 + v30 * v13 + v14);
      v413 = v30 - v404;
      v33 = v404;
      v422 = 1;
    }

    else
    {
      v31 = a1;
      v32 = 0;
      v413 = 0;
      v422 = 0;
      v33 = v404;
    }

    v34 = v27 + 4 * v418;
    v35 = (v8 + 4 * v28 * v13 + 4 * v14);
    v411 = v28 - v33;
    v36 = *(v31 + 104);
    v37 = *(v31 + 108);
    v403 = v31;
    v38 = *(v31 + 2);
    if (v38 == 6 || v38 == 1)
    {
      v39 = v415;
      v40 = v416;
      if (v419)
      {
        v397 = v28;
        v41 = 0;
        v42 = 0;
        v43 = *(v403 + 124);
        v44 = v419 + v43 * v37 + v36;
        v33 = v404;
        v410 = v43 - v404;
        v45 = v417;
        goto LABEL_32;
      }

      goto LABEL_716;
    }

    v40 = v416;
    if (v419)
    {
      v398 = v34;
      shape_enum_clip_alloc(v19, v20, v419, 1, 1, 1, v36, v37, v417, v414);
      if (v46)
      {
        v419 = v46;
        v397 = v28;
        v42 = 0;
        v47 = ((v15 * v4 + 15) & 0xFFFFFFF0);
        if (!v15)
        {
          v47 = 8 * v4;
        }

        v48 = v404;
        v410 = -v404;
        v44 = (v26 + v47 + 16);
        v45 = v417;
        v39 = v415;
        goto LABEL_21;
      }

LABEL_716:
      if (v399)
      {
        free(v399);
      }

      return;
    }

    v397 = v28;
    v44 = 0;
    v41 = 0;
    v410 = 0;
    v42 = 0;
    v45 = v417;
    v39 = v415;
LABEL_32:
    v402 = (v45 - 1);
    v401 = -v33;
    v398 = v34;
    v400 = v34 - 4;
    v409 = xmmword_18439CA90;
    v408 = xmmword_18439CAA0;
    v407 = xmmword_18439CAB0;
    v406 = xmmword_18439CAC0;
    v54 = v41;
LABEL_33:
    v419 = v54;
    v55 = *v29;
    v415 = v39;
    v416 = v40;
    v55(v29, v39, v40, v45);
    v56 = v29[20];
    v57 = v29[18];
    v59 = *(v29 + 2);
    v58 = *(v29 + 3);
    LODWORD(v418) = v42;
    if (v59 == v58)
    {
      if (v421 == 255)
      {
        goto LABEL_41;
      }

      v60 = v45;
      v61 = v57;
      do
      {
        if (*v61)
        {
          *v56 = PDAM_5790(*v56, *(v56 + 4), v421);
        }

        ++v61;
        ++v56;
        --v60;
      }

      while (v60);
      v56 += v401;
      v57 += v402 + v401 + 1;
      v29 = v405;
      goto LABEL_40;
    }

    v68 = v29[19];
    v69 = HIWORD(v59) & 0x3F;
    if (v69 == 16)
    {
      if (v58 == 134759428)
      {
        if (v421 != 255)
        {
          v83 = 0;
          v84 = v68 + 8;
          do
          {
            if (v57[v83])
            {
              v56[v83] = PDAM_5790(HIDWORD(*(v84 - 8)) & 0xFF000000 | (*(v84 - 8) >> 24) & 0xFF0000 | WORD1(*(v84 - 8)) & 0xFF00 | BYTE1(*(v84 - 8)), *(v84 + 1), v421);
            }

            v84 += 16;
            ++v83;
          }

          while (v45 != v83);
          goto LABEL_40;
        }

        v128 = 0;
        v129 = (v68 + 8);
        do
        {
          if (v57[v128])
          {
            v130 = (v129 - 4);
            v131 = vld1q_dup_f64(v130);
            v132 = vorrq_s8(vandq_s8(vshlq_u64(v131, v409), v406), vandq_s8(vshlq_u64(v131, v408), v407));
            v56[v128] = *&vorr_s8(*v132.i8, *&vextq_s8(v132, v132, 8uLL)) | (*v129 << 24) & 0xFF00000000;
          }

          v129 += 8;
          ++v128;
        }

        while (v45 != v128);
      }

      else
      {
        if (v421 != 255)
        {
          v99 = 0;
          v100 = v68 + 8;
          do
          {
            if (v57[v99])
            {
              v56[v99] = PDAM_5790((HIBYTE(*(v100 - 8)) | (BYTE3(*(v100 - 8)) << 16)) & 0xFFFFFF | (BYTE1(*(v100 - 8)) << 24) | HIDWORD(*(v100 - 8)) & 0xFF00, *(v100 + 1), v421);
            }

            v100 += 16;
            ++v99;
          }

          while (v45 != v99);
          goto LABEL_40;
        }

        v133 = 0;
        v134 = (v68 + 8);
        do
        {
          if (v57[v133])
          {
            v56[v133] = (*(v134 - 1) >> 8) & 0xFF0000 | HIBYTE(*(v134 - 1)) | (BYTE1(*(v134 - 1)) << 24) | HIDWORD(*(v134 - 1)) & 0xFF00 | (HIBYTE(*v134) << 32);
          }

          v134 += 8;
          ++v133;
        }

        while (v45 != v133);
      }
    }

    else
    {
      if (v69 != 32)
      {
        if (v58 == 134759428)
        {
          if (v421 == 255)
          {
            v135 = 0;
            do
            {
              if (v57[v135])
              {
                v56[v135] = *(v68 + 8 * v135) & 0xFF00000000 | bswap32(*(v68 + 8 * v135));
              }

              ++v135;
            }

            while (v45 != v135);
            goto LABEL_41;
          }

          v85 = 0;
          do
          {
            if (v57[v85])
            {
              v56[v85] = PDAM_5790(bswap32(*(v68 + 8 * v85)), *(v68 + 8 * v85 + 4), v421);
            }

            ++v85;
          }

          while (v45 != v85);
        }

        else
        {
          if (v421 == 255)
          {
            v136 = 0;
            do
            {
              if (v57[v136])
              {
                v56[v136] = *(v68 + 8 * v136);
              }

              ++v136;
            }

            while (v45 != v136);
            goto LABEL_41;
          }

          v101 = 0;
          do
          {
            if (v57[v101])
            {
              v56[v101] = PDAM_5790(*(v68 + 8 * v101), *(v68 + 8 * v101 + 4), v421);
            }

            ++v101;
          }

          while (v45 != v101);
        }

        v29 = v405;
        goto LABEL_41;
      }

      if (v58 == 134759428)
      {
        if (v421 != 255)
        {
          v70 = 0;
          v71 = (v68 + 8);
          do
          {
            if (v57[v70])
            {
              v72 = v71[2];
              if (v72 <= 0.0)
              {
                v82 = 0;
              }

              else
              {
                v73 = *(v71 - 2);
                v74 = *(v71 - 1);
                v75 = *v71;
                v76 = v71[1];
                v77 = ((v72 * 255.0) + 0.5);
                if (v72 > 1.0)
                {
                  v77 = 255;
                  v72 = 1.0;
                }

                v78 = ((v73 * 255.0) + 0.5);
                if (v73 < 0.0)
                {
                  v78 = 0;
                }

                if (v73 > v72)
                {
                  v78 = v77;
                }

                v79 = ((v74 * 255.0) + 0.5);
                if (v74 < 0.0)
                {
                  v79 = 0;
                }

                if (v74 > v72)
                {
                  v79 = v77;
                }

                v80 = ((v75 * 255.0) + 0.5);
                if (v75 < 0.0)
                {
                  v80 = 0;
                }

                if (v75 > v72)
                {
                  v80 = v77;
                }

                v81 = ((v76 * 255.0) + 0.5);
                if (v76 < 0.0)
                {
                  v81 = 0;
                }

                if (v76 > v72)
                {
                  v81 = v77;
                }

                v82 = PDAM_5790(v78 | (v79 << 8) | (v80 << 16) | (v81 << 24), v77, v421);
              }

              v56[v70] = v82;
            }

            ++v70;
            v71 += 5;
          }

          while (v45 != v70);
LABEL_40:
          v42 = v418;
          goto LABEL_41;
        }

        v102 = 0;
        v103 = (v68 + 8);
        do
        {
          if (v57[v102])
          {
            v104 = v103[2];
            if (v104 <= 0.0)
            {
              v114 = 0;
            }

            else
            {
              v105 = *(v103 - 2);
              v106 = *(v103 - 1);
              v107 = *v103;
              v108 = v103[1];
              LODWORD(v109) = ((v104 * 255.0) + 0.5);
              if (v104 <= 1.0)
              {
                v109 = v109;
              }

              else
              {
                v109 = 255;
              }

              if (v104 > 1.0)
              {
                v104 = 1.0;
              }

              v110 = ((v105 * 255.0) + 0.5);
              if (v105 < 0.0)
              {
                v110 = 0;
              }

              if (v105 > v104)
              {
                v110 = v109;
              }

              v111 = ((v106 * 255.0) + 0.5);
              if (v106 < 0.0)
              {
                v111 = 0;
              }

              if (v106 > v104)
              {
                v111 = v109;
              }

              v112 = ((v107 * 255.0) + 0.5);
              if (v107 < 0.0)
              {
                v112 = 0;
              }

              if (v107 > v104)
              {
                v112 = v109;
              }

              v113 = ((v108 * 255.0) + 0.5);
              if (v108 < 0.0)
              {
                v113 = 0;
              }

              if (v108 > v104)
              {
                v113 = v109;
              }

              v114 = v110 | (v111 << 8) | (v112 << 16) | (v113 << 24) | (v109 << 32);
            }

            v56[v102] = v114;
          }

          ++v102;
          v103 += 5;
        }

        while (v45 != v102);
      }

      else
      {
        if (v421 != 255)
        {
          v86 = 0;
          v87 = (v68 + 8);
          do
          {
            if (v57[v86])
            {
              v88 = v87[2];
              if (v88 <= 0.0)
              {
                v98 = 0;
              }

              else
              {
                v89 = *(v87 - 2);
                v90 = *(v87 - 1);
                v91 = *v87;
                v92 = v87[1];
                v93 = ((v88 * 255.0) + 0.5);
                if (v88 > 1.0)
                {
                  v93 = 255;
                  v88 = 1.0;
                }

                v94 = ((v89 * 255.0) + 0.5);
                if (v89 < 0.0)
                {
                  v94 = 0;
                }

                if (v89 > v88)
                {
                  v94 = v93;
                }

                v95 = ((v90 * 255.0) + 0.5);
                if (v90 < 0.0)
                {
                  v95 = 0;
                }

                if (v90 > v88)
                {
                  v95 = v93;
                }

                v96 = ((v91 * 255.0) + 0.5);
                if (v91 < 0.0)
                {
                  v96 = 0;
                }

                if (v91 > v88)
                {
                  v96 = v93;
                }

                v97 = ((v92 * 255.0) + 0.5);
                if (v92 < 0.0)
                {
                  v97 = 0;
                }

                if (v92 > v88)
                {
                  v97 = v93;
                }

                v98 = PDAM_5790((v95 << 16) | (v94 << 24) | (v96 << 8) | v97, v93, v421);
              }

              v56[v86] = v98;
            }

            ++v86;
            v87 += 5;
          }

          while (v45 != v86);
          goto LABEL_40;
        }

        v115 = 0;
        v116 = (v68 + 8);
        do
        {
          if (v57[v115])
          {
            v117 = v116[2];
            if (v117 <= 0.0)
            {
              v127 = 0;
            }

            else
            {
              v118 = *(v116 - 2);
              v119 = *(v116 - 1);
              v120 = *v116;
              v121 = v116[1];
              LODWORD(v122) = ((v117 * 255.0) + 0.5);
              if (v117 <= 1.0)
              {
                v122 = v122;
              }

              else
              {
                v122 = 255;
              }

              if (v117 > 1.0)
              {
                v117 = 1.0;
              }

              v123 = ((v118 * 255.0) + 0.5);
              if (v118 < 0.0)
              {
                v123 = 0;
              }

              if (v118 > v117)
              {
                v123 = v122;
              }

              v124 = ((v119 * 255.0) + 0.5);
              if (v119 < 0.0)
              {
                v124 = 0;
              }

              if (v119 > v117)
              {
                v124 = v122;
              }

              v125 = ((v120 * 255.0) + 0.5);
              if (v120 < 0.0)
              {
                v125 = 0;
              }

              if (v120 > v117)
              {
                v125 = v122;
              }

              v126 = ((v121 * 255.0) + 0.5);
              if (v121 < 0.0)
              {
                v126 = 0;
              }

              if (v121 > v117)
              {
                v126 = v122;
              }

              v127 = (v124 << 16) | (v123 << 24) | (v125 << 8) | v126 | (v122 << 32);
            }

            v56[v115] = v127;
          }

          ++v115;
          v116 += 5;
        }

        while (v45 != v115);
      }
    }

LABEL_41:
    switch(v412)
    {
      case 0:
        v62 = v44 != 0;
        if (v420)
        {
          v63 = v44;
          v64 = v415;
          do
          {
            v65 = *v57;
            if (*v57)
            {
              if (v44)
              {
                v65 = (*v63 * v65 + ((*v63 * v65) >> 8) + 1) >> 8;
              }

              if (v65)
              {
                if (v65 == 255)
                {
                  LOBYTE(v66) = 0;
                  *v35 = 0;
                }

                else
                {
                  v67 = PDAM_5790(*v35, *v32, ~v65);
                  *v35 = v67;
                  v66 = HIDWORD(v67);
                }

                *v32 = v66;
              }
            }

            ++v57;
            v63 += v62;
            ++v35;
            ++v32;
            LODWORD(v45) = v45 - 1;
          }

          while (v45);
          v44 = &v63[v410];
          v35 += v411;
          v32 += v413;
          v45 = v417;
          goto LABEL_662;
        }

        v363 = v45;
        v364 = v44;
        v64 = v415;
        do
        {
          v365 = *v57;
          if (*v57)
          {
            if (v44)
            {
              v365 = ((*v364 * v365 + ((*v364 * v365) >> 8) + 1) >> 8);
            }

            if (v365)
            {
              if (v365 == 255)
              {
                v366 = 0;
              }

              else
              {
                v366 = (((*v35 & 0xFF00FF) * (v365 ^ 0xFF) + 65537 + ((((*v35 & 0xFF00FF) * (v365 ^ 0xFF)) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF | (((*v35 >> 8) & 0xFF00FF) * (v365 ^ 0xFF) + 65537 + (((((*v35 >> 8) & 0xFF00FF) * (v365 ^ 0xFF)) >> 8) & 0xFF00FF)) & 0xFF00FF00;
              }

              *v35 = v366;
            }
          }

          ++v57;
          v364 += v62;
          ++v35;
          --v363;
        }

        while (v363);
        v44 = &v364[v410];
        v35 += v411;
        v32 += v413;
        v198 = v416;
        goto LABEL_664;
      case 1:
        v225 = *v57;
        if (v420)
        {
          v226 = 0;
          if (v44)
          {
            v227 = v57 + 1;
            v228 = v35;
            v198 = v416;
            do
            {
              v229 = v228;
              if (v225)
              {
                v230 = v44[v226] * v225 + ((v44[v226] * v225) >> 8) + 1;
                if (BYTE1(v230))
                {
                  if (BYTE1(v230) == 255)
                  {
                    v231 = v56[v226];
                    v35[v226] = v231;
                    v32[v226] = BYTE4(v231);
                  }

                  else
                  {
                    DAMplusDAM(v228, &v32[v226], v56[v226], BYTE4(v56[v226]), BYTE1(v230), v35[v226], v32[v226], ~(v230 >> 8));
                  }
                }
              }

              v225 = v227[v226];
              v228 = v229 + 1;
              ++v226;
            }

            while (v417 != v226);
            v232 = &v32[v226 - 1];
            v44 += v226 + v410;
            v45 = v417;
          }

          else
          {
            v384 = v57 + 1;
            v385 = v35;
            v198 = v416;
            do
            {
              if (v225)
              {
                if (v225 == 255)
                {
                  v386 = v56[v226];
                  v35[v226] = v386;
                  v32[v226] = BYTE4(v386);
                }

                else
                {
                  DAMplusDAM(v385, &v32[v226], v56[v226], BYTE4(v56[v226]), v225, v35[v226], v32[v226], ~v225);
                }
              }

              v225 = v384[v226];
              ++v385;
              ++v226;
            }

            while (v45 != v226);
            v44 = 0;
            v232 = &v32[v226 - 1];
            v229 = v385 - 1;
          }

          v35 = &v229[v411 + 1];
          v32 = (v232 + v413 + 1);
          goto LABEL_713;
        }

        v367 = v57 + 1;
        if (v44)
        {
          v198 = v416;
          do
          {
            if (v225)
            {
              v368 = *v44 * v225 + ((*v44 * v225) >> 8) + 1;
              v369 = v400;
              if (v400 >= v35)
              {
                v369 = v35;
              }

              if (v369 >= *(v403 + 40))
              {
                v351 = v369;
              }

              else
              {
                v351 = *(v403 + 40);
              }

              if (BYTE1(v368))
              {
                if (BYTE1(v368) == 255)
                {
                  *v351 = *v56;
                }

                else
                {
                  DMplusDM(v351, *v56, BYTE1(v368), *v351, ~(v368 >> 8));
                }
              }
            }

            else
            {
              v351 = v35;
            }

            v370 = *v367++;
            v225 = v370;
            ++v56;
            ++v44;
            v35 = v351 + 1;
            LODWORD(v45) = v45 - 1;
          }

          while (v45);
          v44 += v410;
          goto LABEL_699;
        }

        v393 = v45;
        v198 = v416;
        do
        {
          v394 = v400;
          if (v400 >= v35)
          {
            v394 = v35;
          }

          if (v394 >= *(v403 + 40))
          {
            v351 = v394;
          }

          else
          {
            v351 = *(v403 + 40);
          }

          if (v225)
          {
            if (v225 == 255)
            {
              *v351 = *v56;
            }

            else
            {
              DMplusDM(v351, *v56, v225, *v351, ~v225);
            }
          }

          v395 = *v367++;
          v225 = v395;
          ++v56;
          v35 = v351 + 1;
          --v393;
        }

        while (v393);
        v44 = 0;
        goto LABEL_712;
      case 2:
        v194 = *v57;
        if (v420)
        {
          v195 = 0;
          v196 = v57 + 1;
          if (v44)
          {
            v197 = v35;
            v198 = v416;
            while (1)
            {
              v199 = v197;
              if (!v194)
              {
                goto LABEL_331;
              }

              v200 = v44[v195] * v194 + ((v44[v195] * v194) >> 8) + 1;
              if (!BYTE1(v200))
              {
                goto LABEL_331;
              }

              if (BYTE1(v200) == 255)
              {
                v201 = v56[v195];
                if (BYTE4(v201))
                {
                  if (BYTE4(v201) != 255)
                  {
                    v203 = v35[v195];
                    v204 = v32[v195];
                    v206 = &v32[v195];
                    v205 = BYTE4(v56[v195]);
                    v207 = ~HIDWORD(v56[v195]);
                    v208 = v197;
                    goto LABEL_330;
                  }

                  v35[v195] = v201;
                  v32[v195] = -1;
                }
              }

              else
              {
                v202 = PDAM_5790(v56[v195], BYTE4(v56[v195]), BYTE1(v200));
                if (HIDWORD(v202))
                {
                  LODWORD(v201) = v202;
                  v203 = v35[v195];
                  v204 = v32[v195];
                  v205 = BYTE4(v202);
                  v206 = &v32[v195];
                  v207 = ~BYTE4(v202);
                  v208 = v199;
LABEL_330:
                  DAplusDAM(v208, v206, v201, v205, v203, v204, v207);
                }
              }

LABEL_331:
              v194 = v196[v195];
              v197 = v199 + 1;
              if (v417 == ++v195)
              {
                v209 = &v32[v195 - 1];
                v44 += v195 + v410;
LABEL_679:
                v35 = &v199[v411 + 1];
                v32 = (v209 + v413 + 1);
                v45 = v417;
                goto LABEL_713;
              }
            }
          }

          v375 = v35;
          v198 = v416;
          while (1)
          {
            if (v194)
            {
              if (v194 == 255)
              {
                v376 = v56[v195];
                if (BYTE4(v376))
                {
                  if (BYTE4(v376) != 255)
                  {
                    v378 = v35[v195];
                    v379 = v32[v195];
                    v381 = &v32[v195];
                    v380 = BYTE4(v56[v195]);
                    v382 = ~HIDWORD(v56[v195]);
                    v383 = v375;
                    goto LABEL_676;
                  }

                  v35[v195] = v376;
                  v32[v195] = -1;
                }
              }

              else
              {
                v377 = PDAM_5790(v56[v195], BYTE4(v56[v195]), v194);
                if (HIDWORD(v377))
                {
                  LODWORD(v376) = v377;
                  v378 = v35[v195];
                  v379 = v32[v195];
                  v380 = BYTE4(v377);
                  v381 = &v32[v195];
                  v382 = ~BYTE4(v377);
                  v383 = v375;
LABEL_676:
                  DAplusDAM(v383, v381, v376, v380, v378, v379, v382);
                }
              }
            }

            v194 = v196[v195];
            ++v375;
            if (v417 == ++v195)
            {
              v44 = 0;
              v209 = &v32[v195 - 1];
              v199 = v375 - 1;
              goto LABEL_679;
            }
          }
        }

        if (v44)
        {
          v350 = v57 + 1;
          v351 = v35 - 1;
          v352 = v45;
          while (1)
          {
            if (!v194)
            {
              goto LABEL_613;
            }

            v353 = *v44 * v194 + ((*v44 * v194) >> 8) + 1;
            if (!BYTE1(v353))
            {
              goto LABEL_613;
            }

            if (BYTE1(v353) == 255)
            {
              v354 = *v56;
              if (BYTE4(*v56))
              {
                if (BYTE4(*v56) != 255)
                {
                  v355 = v351[1];
                  LODWORD(v354) = ((((v355 >> 8) & 0xFF00FF) * ~BYTE4(v354) + 65537 + (((((v355 >> 8) & 0xFF00FF) * ~BYTE4(v354)) >> 8) & 0xFF00FF)) & 0xFF00FF00) + v354 + ((((v355 & 0xFF00FF) * ~BYTE4(v354) + 65537 + ((((v355 & 0xFF00FF) * ~BYTE4(v354)) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF);
                }

                goto LABEL_612;
              }
            }

            else
            {
              v356 = PDAM_5790(*v56, *(v56 + 4), BYTE1(v353));
              if (HIDWORD(v356))
              {
                v357 = v351[1];
                LODWORD(v354) = ((((v357 >> 8) & 0xFF00FF) * (HIDWORD(v356) ^ 0xFF) + 65537 + (((((v357 >> 8) & 0xFF00FF) * (HIDWORD(v356) ^ 0xFF)) >> 8) & 0xFF00FF)) & 0xFF00FF00) + v356 + ((((v357 & 0xFF00FF) * (HIDWORD(v356) ^ 0xFF) + 65537 + ((((v357 & 0xFF00FF) * (HIDWORD(v356) ^ 0xFF)) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF);
LABEL_612:
                v351[1] = v354;
              }
            }

LABEL_613:
            v358 = *v350++;
            v194 = v358;
            ++v56;
            ++v44;
            ++v351;
            if (!--v352)
            {
              v44 += v410;
              v198 = v416;
LABEL_712:
              v35 = &v351[v411 + 1];
              v32 += v413;
LABEL_713:
              v64 = v415;
LABEL_663:
              v42 = v418;
LABEL_664:
              if (!--v414)
              {
                v53 = v419;
                if (v419)
                {
LABEL_715:
                  free(v53);
                }

                goto LABEL_716;
              }

              v54 = 0;
              ++v42;
              v39 = v29[16] + v64;
              v40 = v29[17] + v198;
              if (v419)
              {
                v48 = v404;
LABEL_21:
                v49 = v413 + v48;
                while (1)
                {
                  while (1)
                  {
                    v50 = *(v44 - 4);
                    v51 = v50 - v42;
                    if (v50 <= v42)
                    {
                      break;
                    }

                    v414 -= v51;
                    if (v414 < 1)
                    {
LABEL_30:
                      v53 = v419;
                      goto LABEL_715;
                    }

                    v39 += v29[16] * v51;
                    v40 += v29[17] * v51;
                    v35 += v397 * v51;
                    v52 = v49 * v51;
                    if (!v420)
                    {
                      v52 = 0;
                    }

                    v32 += v52;
                    v42 = v50;
                  }

                  if (v42 < *(v44 - 3) + v50)
                  {
                    break;
                  }

                  if (!shape_enum_clip_scan(v419, v44 - 4))
                  {
                    goto LABEL_30;
                  }
                }

                v33 = v404;
                v34 = v398;
                v41 = v419;
                goto LABEL_32;
              }

              goto LABEL_33;
            }
          }
        }

        v387 = v57 + 1;
        v351 = v35 - 1;
        v198 = v416;
        while (1)
        {
          if (v194)
          {
            if (v194 == 255)
            {
              v388 = *v56;
              if (BYTE4(*v56))
              {
                if (BYTE4(*v56) != 255)
                {
                  v389 = v351[1];
                  LODWORD(v388) = ((((v389 >> 8) & 0xFF00FF) * ~BYTE4(v388) + 65537 + (((((v389 >> 8) & 0xFF00FF) * ~BYTE4(v388)) >> 8) & 0xFF00FF)) & 0xFF00FF00) + v388 + ((((v389 & 0xFF00FF) * ~BYTE4(v388) + 65537 + ((((v389 & 0xFF00FF) * ~BYTE4(v388)) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF);
                }

                goto LABEL_696;
              }
            }

            else
            {
              v390 = PDAM_5790(*v56, *(v56 + 4), v194);
              if (HIDWORD(v390))
              {
                v391 = v351[1];
                LODWORD(v388) = ((((v391 >> 8) & 0xFF00FF) * (HIDWORD(v390) ^ 0xFF) + 65537 + (((((v391 >> 8) & 0xFF00FF) * (HIDWORD(v390) ^ 0xFF)) >> 8) & 0xFF00FF)) & 0xFF00FF00) + v390 + ((((v391 & 0xFF00FF) * (HIDWORD(v390) ^ 0xFF) + 65537 + ((((v391 & 0xFF00FF) * (HIDWORD(v390) ^ 0xFF)) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF);
LABEL_696:
                v351[1] = v388;
              }
            }
          }

          v392 = *v387++;
          v194 = v392;
          ++v56;
          ++v351;
          LODWORD(v45) = v45 - 1;
          if (!v45)
          {
            v44 = 0;
LABEL_699:
            v45 = v417;
            goto LABEL_712;
          }
        }

      case 3:
        v217 = v45;
        v145 = v44;
        do
        {
          v218 = *v57;
          if (*v57)
          {
            if (v44)
            {
              v218 = (*v145 * v218 + ((*v145 * v218) >> 8) + 1) >> 8;
            }

            if (v218)
            {
              if (v218 == 255)
              {
                v219 = PDAM_5790(*v56, *(v56 + 4), *v32);
                *v35 = v219;
                *v32 = BYTE4(v219);
              }

              else
              {
                DAMplusDAM(v35, v32, *v56, *(v56 + 4), (*v32 * v218 + ((*v32 * v218) >> 8) + 1) >> 8, *v35, *v32, ~v218);
              }
            }
          }

          ++v57;
          ++v56;
          v145 += v44 != 0;
          ++v35;
          v32 += v422;
          --v217;
        }

        while (v217);
        goto LABEL_660;
      case 4:
        v164 = v45;
        v145 = v44;
        do
        {
          v165 = *v57;
          if (*v57)
          {
            if (v44)
            {
              v165 = (*v145 * v165 + ((*v145 * v165) >> 8) + 1) >> 8;
            }

            if (v165)
            {
              if (v165 == 255)
              {
                v166 = PDAM_5790(*v56, *(v56 + 4), *v32 ^ 0xFFu);
                *v35 = v166;
                *v32 = BYTE4(v166);
              }

              else
              {
                DAMplusDAM(v35, v32, *v56, *(v56 + 4), ((*v32 ^ 0xFF) * v165 + (((*v32 ^ 0xFF) * v165) >> 8) + 1) >> 8, *v35, *v32, ~v165);
              }
            }
          }

          ++v57;
          ++v56;
          v145 += v44 != 0;
          ++v35;
          v32 += v422;
          --v164;
        }

        while (v164);
        goto LABEL_660;
      case 5:
        v168 = v44;
        while (1)
        {
          v253 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_421;
            }

            v254 = *v168 * v253 + ((*v168 * v253) >> 8) + 1;
            if (v254 >= 0x100)
            {
              break;
            }
          }

LABEL_422:
          ++v57;
          ++v56;
          v168 += v44 != 0;
          ++v35;
          v32 += v422;
          LODWORD(v45) = v45 - 1;
          if (!v45)
          {
            goto LABEL_481;
          }
        }

        v253 = v254 >> 8;
LABEL_421:
        v255 = *v32;
        v256 = PDAM_5790(*v56, *(v56 + 4), v253);
        DAMplusDAM(v35, v32, v256, BYTE4(v256), v255, *v35, v255, ~BYTE4(v256));
        goto LABEL_422;
      case 6:
        v271 = v45;
        v145 = v44;
        while (1)
        {
          v272 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_455;
            }

            v273 = *v145 * v272 + ((*v145 * v272) >> 8) + 1;
            if (v273 >= 0x100)
            {
              break;
            }
          }

LABEL_459:
          ++v57;
          ++v56;
          v145 += v44 != 0;
          ++v35;
          v32 += v422;
          if (!--v271)
          {
            goto LABEL_660;
          }
        }

        v272 = v273 >> 8;
LABEL_455:
        if (*v32 != -1)
        {
          if (~*v32 == 255)
          {
            v274 = PDAM_5790(*v56, *(v56 + 4), v272);
            *v35 = v274;
            *v32 = BYTE4(v274);
          }

          else
          {
            DAplusDAM(v35, v32, *v35, *v32, *v56, *(v56 + 4), (~*v32 * v272 + ((~*v32 * v272) >> 8) + 1) >> 8);
          }
        }

        goto LABEL_459;
      case 7:
        v220 = v44 != 0;
        if (v420)
        {
          v221 = v45;
          v145 = v44;
          do
          {
            v222 = *v57;
            if (*v57)
            {
              if (v44)
              {
                v222 = (*v145 * v222 + ((*v145 * v222) >> 8) + 1) >> 8;
              }

              if (v222)
              {
                if (v222 == 255)
                {
                  v223 = PDAM_5790(*v35, *v32, *(v56 + 4));
                  *v35 = v223;
                  *v32 = BYTE4(v223);
                }

                else
                {
                  v224 = *(v56 + 4) * v222;
                  DAMplusDAM(v35, v32, *v35, *v32, (v224 + (v224 >> 8) + 1) >> 8, *v35, *v32, ~v222);
                }
              }
            }

            ++v57;
            ++v56;
            v145 += v220;
            ++v35;
            ++v32;
            --v221;
          }

          while (v221);
        }

        else
        {
          v359 = v45;
          v145 = v44;
          do
          {
            v360 = *v57;
            if (*v57)
            {
              if (v44)
              {
                v360 = (*v145 * v360 + ((*v145 * v360) >> 8) + 1) >> 8;
              }

              if (v360)
              {
                if (v360 == 255)
                {
                  v361 = *(v56 + 4);
                  *v35 = ((v361 * (*v35 & 0xFF00FF) + 65537 + (((v361 * (*v35 & 0xFF00FF)) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF | (v361 * ((*v35 >> 8) & 0xFF00FF) + 65537 + (((v361 * ((*v35 >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF)) & 0xFF00FF00;
                }

                else
                {
                  v362 = *(v56 + 4) * v360;
                  DMplusDM(v35, *v35, (v362 + (v362 >> 8) + 1) >> 8, *v35, ~v360);
                }
              }
            }

            ++v57;
            ++v56;
            v145 += v220;
            ++v35;
            --v359;
          }

          while (v359);
        }

        goto LABEL_660;
      case 8:
        v286 = v44 != 0;
        if (v420)
        {
          v287 = v45;
          v145 = v44;
          do
          {
            v288 = *v57;
            if (*v57)
            {
              if (v44)
              {
                v288 = (*v145 * v288 + ((*v145 * v288) >> 8) + 1) >> 8;
              }

              if (v288)
              {
                if (v288 == 255)
                {
                  v289 = PDAM_5790(*v35, *v32, *(v56 + 4) ^ 0xFFu);
                  *v35 = v289;
                  *v32 = BYTE4(v289);
                }

                else
                {
                  v290 = (*(v56 + 4) ^ 0xFF) * v288;
                  DAMplusDAM(v35, v32, *v35, *v32, (v290 + (v290 >> 8) + 1) >> 8, *v35, *v32, ~v288);
                }
              }
            }

            ++v57;
            ++v56;
            v145 += v286;
            ++v35;
            ++v32;
            --v287;
          }

          while (v287);
        }

        else
        {
          v371 = v45;
          v145 = v44;
          do
          {
            v372 = *v57;
            if (*v57)
            {
              if (v44)
              {
                v372 = (*v145 * v372 + ((*v145 * v372) >> 8) + 1) >> 8;
              }

              if (v372)
              {
                if (v372 == 255)
                {
                  v373 = *(v56 + 4) ^ 0xFF;
                  *v35 = ((v373 * (*v35 & 0xFF00FF) + 65537 + (((v373 * (*v35 & 0xFF00FF)) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF | (v373 * ((*v35 >> 8) & 0xFF00FF) + 65537 + (((v373 * ((*v35 >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF)) & 0xFF00FF00;
                }

                else
                {
                  v374 = (*(v56 + 4) ^ 0xFF) * v372;
                  DMplusDM(v35, *v35, (v374 + (v374 >> 8) + 1) >> 8, *v35, ~v372);
                }
              }
            }

            ++v57;
            ++v56;
            v145 += v286;
            ++v35;
            --v371;
          }

          while (v371);
        }

        goto LABEL_660;
      case 9:
        v175 = v44;
        while (1)
        {
          v176 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_289;
            }

            v177 = *v175 * v176 + ((*v175 * v176) >> 8) + 1;
            if (v177 >= 0x100)
            {
              break;
            }
          }

LABEL_290:
          ++v57;
          ++v56;
          v175 += v44 != 0;
          ++v35;
          v32 += v422;
          LODWORD(v45) = v45 - 1;
          if (!v45)
          {
            v44 = &v175[v410];
            v35 += v411;
            v32 += v413;
            v29 = v405;
LABEL_482:
            v198 = v416;
            v45 = v417;
            v64 = v415;
            v42 = v418;
            goto LABEL_664;
          }
        }

        v176 = v177 >> 8;
LABEL_289:
        v178 = *v32;
        v179 = PDAM_5790(*v56, *(v56 + 4), v176);
        DAMplusDAM(v35, v32, v179, BYTE4(v179), v178 ^ 0xFF, *v35, v178, (BYTE4(v179) + ~v176));
        goto LABEL_290;
      case 10:
        v168 = v44;
        while (1)
        {
          v282 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_479;
            }

            v283 = *v168 * v282 + ((*v168 * v282) >> 8) + 1;
            if (v283 >= 0x100)
            {
              break;
            }
          }

LABEL_480:
          ++v57;
          ++v56;
          v168 += v44 != 0;
          ++v35;
          v32 += v422;
          LODWORD(v45) = v45 - 1;
          if (!v45)
          {
LABEL_481:
            v44 = &v168[v410];
            v35 += v411;
            v32 += v413;
            goto LABEL_482;
          }
        }

        v282 = v283 >> 8;
LABEL_479:
        v284 = *v32;
        v285 = PDAM_5790(*v56, *(v56 + 4), v282);
        DAMplusDAM(v35, v32, v285, BYTE4(v285), v284 ^ 0xFF, *v35, v284, ~BYTE4(v285));
        goto LABEL_480;
      case 11:
        v159 = v44 != 0;
        if (v420)
        {
          v160 = v45;
          v145 = v44;
          while (1)
          {
            v161 = *v57;
            if (*v57)
            {
              if (!v44)
              {
                goto LABEL_260;
              }

              v162 = *v145 * v161 + ((*v145 * v161) >> 8) + 1;
              if (v162 >= 0x100)
              {
                break;
              }
            }

LABEL_261:
            ++v57;
            ++v56;
            v145 += v159;
            ++v35;
            ++v32;
            if (!--v160)
            {
              goto LABEL_660;
            }
          }

          v161 = v162 >> 8;
LABEL_260:
          v163 = PDAM_5790(*v56, *(v56 + 4), v161);
          DAplusdDA(v35, v32, *v35, *v32, v163, BYTE4(v163));
          goto LABEL_261;
        }

        v340 = v45;
        v145 = v44;
        while (1)
        {
          v341 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_590;
            }

            v342 = *v145 * v341 + ((*v145 * v341) >> 8) + 1;
            if (v342 >= 0x100)
            {
              break;
            }
          }

LABEL_591:
          ++v57;
          ++v56;
          v145 += v159;
          ++v35;
          if (!--v340)
          {
            goto LABEL_660;
          }
        }

        v341 = v342 >> 8;
LABEL_590:
        v343 = PDAM_5790(*v56, *(v56 + 4), v341);
        DplusdDA(v35, *v35, v343, BYTE4(v343));
        goto LABEL_591;
      case 12:
        v167 = v44 != 0;
        if (v420)
        {
          v168 = v44;
          while (1)
          {
            v169 = *v57;
            if (*v57)
            {
              if (!v44)
              {
                goto LABEL_279;
              }

              v170 = *v168 * v169 + ((*v168 * v169) >> 8) + 1;
              if (v170 >= 0x100)
              {
                break;
              }
            }

LABEL_282:
            ++v57;
            ++v56;
            v168 += v167;
            ++v35;
            ++v32;
            LODWORD(v45) = v45 - 1;
            if (!v45)
            {
              goto LABEL_481;
            }
          }

          v169 = v170 >> 8;
LABEL_279:
          v171 = PDAM_5790(*v56, *(v56 + 4), v169);
          v172 = ((v171 >> 8) & 0xFF00FF) + ((*v35 >> 8) & 0xFF00FF);
          v173 = *v32 + HIDWORD(v171);
          v174 = (v172 << 8) & 0xFF00FF00 | ((v171 & 0xFF00FF) + (*v35 & 0xFF00FF)) & 0xFF00FF | (15 * (v172 & 0x1000100 | (((v171 & 0xFF00FF) + (*v35 & 0xFF00FF)) >> 8) & 0x10001)) | (240 * (v172 & 0x1000100 | (((v171 & 0xFF00FF) + (*v35 & 0xFF00FF)) >> 8) & 0x10001));
          if (v173 >= 0xFF)
          {
            LOBYTE(v173) = -1;
          }

          *v32 = v173;
          *v35 = v174;
          goto LABEL_282;
        }

        v344 = v45;
        v345 = v44;
        while (1)
        {
          v346 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_598;
            }

            v347 = *v345 * v346 + ((*v345 * v346) >> 8) + 1;
            if (v347 >= 0x100)
            {
              break;
            }
          }

LABEL_599:
          ++v57;
          ++v56;
          v345 += v167;
          ++v35;
          if (!--v344)
          {
            v44 = &v345[v410];
            v35 += v411;
            v32 += v413;
LABEL_601:
            v64 = v415;
            v198 = v416;
            goto LABEL_664;
          }
        }

        v346 = v347 >> 8;
LABEL_598:
        v346 = v346;
        v348 = (((((*v56 >> 8) & 0xFF00FF) * v346 + 65537 + (((((*v56 >> 8) & 0xFF00FF) * v346) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF) + ((*v35 >> 8) & 0xFF00FF);
        v349 = ((((*v56 & 0xFF00FF) * v346 + 65537 + ((((*v56 & 0xFF00FF) * v346) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF) + (*v35 & 0xFF00FF);
        *v35 = (v348 << 8) & 0xFF00FF00 | v349 & 0xFF00FF | (15 * (v348 & 0x1000100 | (v349 >> 8) & 0x10001)) | (240 * (v348 & 0x1000100 | (v349 >> 8) & 0x10001));
        goto LABEL_599;
      case 13:
        v264 = v45;
        v145 = v44;
        while (1)
        {
          v265 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_442;
            }

            v266 = *v145 * v265 + ((*v145 * v265) >> 8) + 1;
            if (v266 >= 0x100)
            {
              break;
            }
          }

LABEL_448:
          ++v57;
          ++v56;
          v145 += v44 != 0;
          ++v35;
          v32 += v422;
          if (!--v264)
          {
            goto LABEL_660;
          }
        }

        v265 = v266 >> 8;
LABEL_442:
        v267 = PDAM_5790(*v56, *(v56 + 4), v265);
        v268 = HIDWORD(v267);
        if (HIDWORD(v267))
        {
          v269 = v267;
          if (v420)
          {
            if (*v32)
            {
              v270 = PDAmultiplyPDA_5791(*v35, *v32, v267, BYTE4(v267));
              v269 = v270;
              v268 = HIDWORD(v270);
            }

            *v35 = v269;
            *v32 = v268;
          }

          else
          {
            *v35 = PDAmultiplyPDA_5791(*v35, 255, v267, BYTE4(v267));
          }
        }

        goto LABEL_448;
      case 14:
        v152 = v45;
        v145 = v44;
        while (1)
        {
          v153 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_246;
            }

            v154 = *v145 * v153 + ((*v145 * v153) >> 8) + 1;
            if (v154 >= 0x100)
            {
              break;
            }
          }

LABEL_252:
          ++v57;
          ++v56;
          v145 += v44 != 0;
          ++v35;
          v32 += v422;
          if (!--v152)
          {
            goto LABEL_660;
          }
        }

        v153 = v154 >> 8;
LABEL_246:
        v155 = PDAM_5790(*v56, *(v56 + 4), v153);
        v156 = HIDWORD(v155);
        if (HIDWORD(v155))
        {
          v157 = v155;
          if (v420)
          {
            if (*v32)
            {
              v158 = PDAscreenPDA_5792(*v35, *v32, v155, BYTE4(v155));
              v157 = v158;
              v156 = HIDWORD(v158);
            }

            *v35 = v157;
            *v32 = v156;
          }

          else
          {
            *v35 = PDAscreenPDA_5792(*v35, 0xFFu, v155, BYTE4(v155));
          }
        }

        goto LABEL_252;
      case 15:
        v210 = v45;
        v145 = v44;
        while (1)
        {
          v211 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_338;
            }

            v212 = *v145 * v211 + ((*v145 * v211) >> 8) + 1;
            if (v212 >= 0x100)
            {
              break;
            }
          }

LABEL_344:
          ++v57;
          ++v56;
          v145 += v44 != 0;
          ++v35;
          v32 += v422;
          if (!--v210)
          {
            goto LABEL_660;
          }
        }

        v211 = v212 >> 8;
LABEL_338:
        v213 = PDAM_5790(*v56, *(v56 + 4), v211);
        v214 = HIDWORD(v213);
        if (HIDWORD(v213))
        {
          v215 = v213;
          if (v420)
          {
            if (*v32)
            {
              v216 = PDAoverlayPDA_5793(*v35, *v32, v213, BYTE4(v213));
              v215 = v216;
              v214 = HIDWORD(v216);
            }

            *v35 = v215;
            *v32 = v214;
          }

          else
          {
            *v35 = PDAoverlayPDA_5793(*v35, 255, v213, BYTE4(v213));
          }
        }

        goto LABEL_344;
      case 16:
        v144 = v45;
        v145 = v44;
        while (1)
        {
          v146 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_233;
            }

            v147 = *v145 * v146 + ((*v145 * v146) >> 8) + 1;
            if (v147 >= 0x100)
            {
              break;
            }
          }

LABEL_239:
          ++v57;
          ++v56;
          v145 += v44 != 0;
          ++v35;
          v32 += v422;
          if (!--v144)
          {
            goto LABEL_660;
          }
        }

        v146 = v147 >> 8;
LABEL_233:
        v148 = PDAM_5790(*v56, *(v56 + 4), v146);
        v149 = HIDWORD(v148);
        if (HIDWORD(v148))
        {
          v150 = v148;
          if (v420)
          {
            if (*v32)
            {
              v151 = PDAdarkenPDA_5795(*v35, *v32, v148, BYTE4(v148));
              v150 = v151;
              v149 = HIDWORD(v151);
            }

            *v35 = v150;
            *v32 = v149;
          }

          else
          {
            *v35 = PDAdarkenPDA_5795(*v35, 0xFFu, v148, BYTE4(v148));
          }
        }

        goto LABEL_239;
      case 17:
        v239 = v45;
        v145 = v44;
        while (1)
        {
          v240 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_395;
            }

            v241 = *v145 * v240 + ((*v145 * v240) >> 8) + 1;
            if (v241 >= 0x100)
            {
              break;
            }
          }

LABEL_401:
          ++v57;
          ++v56;
          v145 += v44 != 0;
          ++v35;
          v32 += v422;
          if (!--v239)
          {
            goto LABEL_660;
          }
        }

        v240 = v241 >> 8;
LABEL_395:
        v242 = PDAM_5790(*v56, *(v56 + 4), v240);
        v243 = HIDWORD(v242);
        if (HIDWORD(v242))
        {
          v244 = v242;
          if (v420)
          {
            if (*v32)
            {
              v245 = PDAlightenPDA_5794(*v35, *v32, v242, BYTE4(v242));
              v244 = v245;
              v243 = HIDWORD(v245);
            }

            *v35 = v244;
            *v32 = v243;
          }

          else
          {
            *v35 = PDAlightenPDA_5794(*v35, 0xFFu, v242, BYTE4(v242));
          }
        }

        goto LABEL_401;
      case 18:
        v275 = v45;
        v145 = v44;
        while (1)
        {
          v276 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_466;
            }

            v277 = *v145 * v276 + ((*v145 * v276) >> 8) + 1;
            if (v277 >= 0x100)
            {
              break;
            }
          }

LABEL_472:
          ++v57;
          ++v56;
          v145 += v44 != 0;
          ++v35;
          v32 += v422;
          if (!--v275)
          {
            goto LABEL_660;
          }
        }

        v276 = v277 >> 8;
LABEL_466:
        v278 = PDAM_5790(*v56, *(v56 + 4), v276);
        v279 = HIDWORD(v278);
        if (HIDWORD(v278))
        {
          v280 = v278;
          if (v420)
          {
            if (*v32)
            {
              v281 = PDAcolordodgePDA_5796(*v35, *v32, v278, BYTE4(v278));
              v280 = v281;
              v279 = HIDWORD(v281);
            }

            *v35 = v280;
            *v32 = v279;
          }

          else
          {
            *v35 = PDAcolordodgePDA_5796(*v35, 255, v278, BYTE4(v278));
          }
        }

        goto LABEL_472;
      case 19:
        v310 = v45;
        v145 = v44;
        while (1)
        {
          v311 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_525;
            }

            v312 = *v145 * v311 + ((*v145 * v311) >> 8) + 1;
            if (v312 >= 0x100)
            {
              break;
            }
          }

LABEL_531:
          ++v57;
          ++v56;
          v145 += v44 != 0;
          ++v35;
          v32 += v422;
          if (!--v310)
          {
            goto LABEL_660;
          }
        }

        v311 = v312 >> 8;
LABEL_525:
        v313 = PDAM_5790(*v56, *(v56 + 4), v311);
        v314 = HIDWORD(v313);
        if (HIDWORD(v313))
        {
          v315 = v313;
          if (v420)
          {
            if (*v32)
            {
              v316 = PDAcolorburnPDA_5797(*v35, *v32, v313, BYTE4(v313));
              v315 = v316;
              v314 = HIDWORD(v316);
            }

            *v35 = v315;
            *v32 = v314;
          }

          else
          {
            *v35 = PDAcolorburnPDA_5797(*v35, 255, v313, BYTE4(v313));
          }
        }

        goto LABEL_531;
      case 20:
        v246 = v45;
        v145 = v44;
        while (1)
        {
          v247 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_408;
            }

            v248 = *v145 * v247 + ((*v145 * v247) >> 8) + 1;
            if (v248 >= 0x100)
            {
              break;
            }
          }

LABEL_414:
          ++v57;
          ++v56;
          v145 += v44 != 0;
          ++v35;
          v32 += v422;
          if (!--v246)
          {
            goto LABEL_660;
          }
        }

        v247 = v248 >> 8;
LABEL_408:
        v249 = PDAM_5790(*v56, *(v56 + 4), v247);
        v250 = HIDWORD(v249);
        if (HIDWORD(v249))
        {
          v251 = v249;
          if (v420)
          {
            if (*v32)
            {
              v252 = PDAsoftlightPDA_5799(*v35, *v32, v249, BYTE4(v249));
              v251 = v252;
              v250 = HIDWORD(v252);
            }

            *v35 = v251;
            *v32 = v250;
          }

          else
          {
            *v35 = PDAsoftlightPDA_5799(*v35, 255, v249, BYTE4(v249));
          }
        }

        goto LABEL_414;
      case 21:
        v257 = v45;
        v145 = v44;
        while (1)
        {
          v258 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_429;
            }

            v259 = *v145 * v258 + ((*v145 * v258) >> 8) + 1;
            if (v259 >= 0x100)
            {
              break;
            }
          }

LABEL_435:
          ++v57;
          ++v56;
          v145 += v44 != 0;
          ++v35;
          v32 += v422;
          if (!--v257)
          {
            goto LABEL_660;
          }
        }

        v258 = v259 >> 8;
LABEL_429:
        v260 = PDAM_5790(*v56, *(v56 + 4), v258);
        v261 = HIDWORD(v260);
        if (HIDWORD(v260))
        {
          v262 = v260;
          if (v420)
          {
            if (*v32)
            {
              v263 = PDAhardlightPDA_5798(*v35, *v32, v260, BYTE4(v260));
              v262 = v263;
              v261 = HIDWORD(v263);
            }

            *v35 = v262;
            *v32 = v261;
          }

          else
          {
            *v35 = PDAhardlightPDA_5798(*v35, 255, v260, BYTE4(v260));
          }
        }

        goto LABEL_435;
      case 22:
        v295 = v45;
        v145 = v44;
        while (1)
        {
          v296 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_512;
            }

            v297 = *v145 * v296 + ((*v145 * v296) >> 8) + 1;
            if (v297 >= 0x100)
            {
              break;
            }
          }

LABEL_518:
          ++v57;
          ++v56;
          v145 += v44 != 0;
          ++v35;
          v32 += v422;
          if (!--v295)
          {
            goto LABEL_660;
          }
        }

        v296 = v297 >> 8;
LABEL_512:
        v298 = PDAM_5790(*v56, *(v56 + 4), v296);
        v307 = HIDWORD(v298);
        if (HIDWORD(v298))
        {
          v308 = v298;
          if (v420)
          {
            if (*v32)
            {
              v309 = PDAdifferencePDA_5800(*v35, *v32, v298, BYTE4(v298), v299, v300, v301, v302, v303, v304, v305, v306);
              v308 = v309;
              v307 = HIDWORD(v309);
            }

            *v35 = v308;
            *v32 = v307;
          }

          else
          {
            *v35 = PDAdifferencePDA_5800(*v35, 0xFFu, v298, BYTE4(v298), v299, v300, v301, v302, v303, v304, v305, v306);
          }
        }

        goto LABEL_518;
      case 23:
        v317 = v45;
        v145 = v44;
        while (1)
        {
          v318 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_538;
            }

            v319 = *v145 * v318 + ((*v145 * v318) >> 8) + 1;
            if (v319 >= 0x100)
            {
              break;
            }
          }

LABEL_544:
          ++v57;
          ++v56;
          v145 += v44 != 0;
          ++v35;
          v32 += v422;
          if (!--v317)
          {
            goto LABEL_660;
          }
        }

        v318 = v319 >> 8;
LABEL_538:
        v320 = PDAM_5790(*v56, *(v56 + 4), v318);
        v321 = HIDWORD(v320);
        if (HIDWORD(v320))
        {
          v322 = v320;
          if (v420)
          {
            if (*v32)
            {
              v323 = PDAexclusionPDA_5801(*v35, *v32, v320, BYTE4(v320));
              v322 = v323;
              v321 = HIDWORD(v323);
            }

            *v35 = v322;
            *v32 = v321;
          }

          else
          {
            *v35 = PDAexclusionPDA_5801(*v35, 255, v320, BYTE4(v320));
          }
        }

        goto LABEL_544;
      case 24:
        v187 = v45;
        v145 = v44;
        while (1)
        {
          v188 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_310;
            }

            v189 = *v145 * v188 + ((*v145 * v188) >> 8) + 1;
            if (v189 >= 0x100)
            {
              break;
            }
          }

LABEL_316:
          ++v57;
          ++v56;
          v145 += v44 != 0;
          ++v35;
          v32 += v422;
          if (!--v187)
          {
            goto LABEL_660;
          }
        }

        v188 = v189 >> 8;
LABEL_310:
        v190 = PDAM_5790(*v56, *(v56 + 4), v188);
        v191 = HIDWORD(v190);
        if (HIDWORD(v190))
        {
          v192 = v190;
          if (v420)
          {
            if (*v32)
            {
              v193 = PDAhuePDA_5802(*v35, *v32, v190, BYTE4(v190));
              v192 = v193;
              v191 = HIDWORD(v193);
            }

            *v35 = v192;
            *v32 = v191;
          }

          else
          {
            *v35 = PDAhuePDA_5802(*v35, 255, v190, BYTE4(v190));
          }
        }

        goto LABEL_316;
      case 25:
        v180 = v45;
        v145 = v44;
        while (1)
        {
          v181 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_297;
            }

            v182 = *v145 * v181 + ((*v145 * v181) >> 8) + 1;
            if (v182 >= 0x100)
            {
              break;
            }
          }

LABEL_303:
          ++v57;
          ++v56;
          v145 += v44 != 0;
          ++v35;
          v32 += v422;
          if (!--v180)
          {
LABEL_660:
            v44 = &v145[v410];
LABEL_661:
            v35 += v411;
            v32 += v413;
            v45 = v417;
            v64 = v415;
LABEL_662:
            v198 = v416;
            goto LABEL_663;
          }
        }

        v181 = v182 >> 8;
LABEL_297:
        v183 = PDAM_5790(*v56, *(v56 + 4), v181);
        v184 = HIDWORD(v183);
        if (HIDWORD(v183))
        {
          v185 = v183;
          if (v420)
          {
            if (*v32)
            {
              v186 = PDAsaturationPDA_5803(*v35, *v32, v183, BYTE4(v183));
              v185 = v186;
              v184 = HIDWORD(v186);
            }

            *v35 = v185;
            *v32 = v184;
          }

          else
          {
            *v35 = PDAsaturationPDA_5803(*v35, 255, v183, BYTE4(v183));
          }
        }

        goto LABEL_303;
      case 26:
        v137 = v44;
        while (1)
        {
          v336 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_577;
            }

            v337 = *v137 * v336 + ((*v137 * v336) >> 8) + 1;
            if (v337 >= 0x100)
            {
              break;
            }
          }

LABEL_583:
          ++v57;
          ++v56;
          v137 += v44 != 0;
          ++v35;
          v32 += v422;
          LODWORD(v45) = v45 - 1;
          if (!v45)
          {
            goto LABEL_584;
          }
        }

        v336 = v337 >> 8;
LABEL_577:
        v338 = PDAM_5790(*v56, *(v56 + 4), v336);
        v339 = HIDWORD(v338);
        if (HIDWORD(v338))
        {
          if (v420)
          {
            if (*v32)
            {
              v338 = PDAluminosityPDA_5804(v338, BYTE4(v338), *v35, *v32);
              v339 = HIDWORD(v338);
            }

            *v35 = v338;
            *v32 = v339;
          }

          else
          {
            *v35 = PDAluminosityPDA_5804(v338, BYTE4(v338), *v35, 255);
          }
        }

        goto LABEL_583;
      case 27:
        v137 = v44;
        while (1)
        {
          v138 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_220;
            }

            v139 = *v137 * v138 + ((*v137 * v138) >> 8) + 1;
            if (v139 >= 0x100)
            {
              break;
            }
          }

LABEL_226:
          ++v57;
          ++v56;
          v137 += v44 != 0;
          ++v35;
          v32 += v422;
          LODWORD(v45) = v45 - 1;
          if (!v45)
          {
            goto LABEL_584;
          }
        }

        v138 = v139 >> 8;
LABEL_220:
        v140 = PDAM_5790(*v56, *(v56 + 4), v138);
        v141 = HIDWORD(v140);
        if (HIDWORD(v140))
        {
          v142 = v140;
          if (v420)
          {
            if (*v32)
            {
              v143 = PDAluminosityPDA_5804(*v35, *v32, v140, BYTE4(v140));
              v142 = v143;
              v141 = HIDWORD(v143);
            }

            *v35 = v142;
            *v32 = v141;
          }

          else
          {
            *v35 = PDAluminosityPDA_5804(*v35, 255, v140, BYTE4(v140));
          }
        }

        goto LABEL_226;
      case 28:
        v137 = v44;
        while (1)
        {
          v324 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_551;
            }

            v325 = *v137 * v324 + ((*v137 * v324) >> 8) + 1;
            if (v325 >= 0x100)
            {
              break;
            }
          }

LABEL_557:
          ++v57;
          ++v56;
          v137 += v44 != 0;
          ++v35;
          v32 += v422;
          LODWORD(v45) = v45 - 1;
          if (!v45)
          {
            goto LABEL_584;
          }
        }

        v324 = v325 >> 8;
LABEL_551:
        v326 = PDAM_5790(*v56, *(v56 + 4), v324);
        v327 = HIDWORD(v326);
        if (HIDWORD(v326))
        {
          v328 = v326;
          if (v420)
          {
            if (*v32)
            {
              v329 = PDAtranspose_huePDA(*v35, *v32, v326, BYTE4(v326));
              v328 = v329;
              v327 = HIDWORD(v329);
            }

            *v35 = v328;
            *v32 = v327;
          }

          else
          {
            *v35 = PDAtranspose_huePDA(*v35, 255, v326, BYTE4(v326));
          }
        }

        goto LABEL_557;
      case 29:
        v137 = v44;
        while (1)
        {
          v330 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_564;
            }

            v331 = *v137 * v330 + ((*v137 * v330) >> 8) + 1;
            if (v331 >= 0x100)
            {
              break;
            }
          }

LABEL_570:
          ++v57;
          ++v56;
          v137 += v44 != 0;
          ++v35;
          v32 += v422;
          LODWORD(v45) = v45 - 1;
          if (!v45)
          {
            goto LABEL_584;
          }
        }

        v330 = v331 >> 8;
LABEL_564:
        v332 = PDAM_5790(*v56, *(v56 + 4), v330);
        v333 = HIDWORD(v332);
        if (HIDWORD(v332))
        {
          v334 = v332;
          if (v420)
          {
            if (*v32)
            {
              v335 = PDAtranspose_saturationPDA(*v35, *v32, v332, BYTE4(v332));
              v334 = v335;
              v333 = HIDWORD(v335);
            }

            *v35 = v334;
            *v32 = v333;
          }

          else
          {
            *v35 = PDAtranspose_saturationPDA(*v35, 255, v332, BYTE4(v332));
          }
        }

        goto LABEL_570;
      case 30:
        v137 = v44;
        while (1)
        {
          v291 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_499;
            }

            v292 = *v137 * v291 + ((*v137 * v291) >> 8) + 1;
            if (v292 >= 0x100)
            {
              break;
            }
          }

LABEL_505:
          ++v57;
          ++v56;
          v137 += v44 != 0;
          ++v35;
          v32 += v422;
          LODWORD(v45) = v45 - 1;
          if (!v45)
          {
            goto LABEL_584;
          }
        }

        v291 = v292 >> 8;
LABEL_499:
        v293 = PDAM_5790(*v56, *(v56 + 4), v291);
        v294 = HIDWORD(v293);
        if (HIDWORD(v293))
        {
          if (v420)
          {
            if (*v32)
            {
              v293 = PDAtranspose_luminosityPDA(v293, BYTE4(v293), *v35, *v32);
              v294 = HIDWORD(v293);
            }

            *v35 = v293;
            *v32 = v294;
          }

          else
          {
            *v35 = PDAtranspose_luminosityPDA(v293, BYTE4(v293), *v35, 255);
          }
        }

        goto LABEL_505;
      case 31:
        v137 = v44;
        break;
      default:
        goto LABEL_601;
    }

    while (1)
    {
      v233 = *v57;
      if (*v57)
      {
        if (!v44)
        {
          goto LABEL_382;
        }

        v234 = *v137 * v233 + ((*v137 * v233) >> 8) + 1;
        if (v234 >= 0x100)
        {
          break;
        }
      }

LABEL_388:
      ++v57;
      ++v56;
      v137 += v44 != 0;
      ++v35;
      v32 += v422;
      LODWORD(v45) = v45 - 1;
      if (!v45)
      {
LABEL_584:
        v44 = &v137[v410];
        goto LABEL_661;
      }
    }

    v233 = v234 >> 8;
LABEL_382:
    v235 = PDAM_5790(*v56, *(v56 + 4), v233);
    v236 = HIDWORD(v235);
    if (HIDWORD(v235))
    {
      v237 = v235;
      if (v420)
      {
        if (*v32)
        {
          v238 = PDAtranspose_luminosityPDA(*v35, *v32, v235, BYTE4(v235));
          v237 = v238;
          v236 = HIDWORD(v238);
        }

        *v35 = v237;
        *v32 = v236;
      }

      else
      {
        *v35 = PDAtranspose_luminosityPDA(*v35, 255, v235, BYTE4(v235));
      }
    }

    goto LABEL_388;
  }
}

unsigned int *DAMplusDAM(unsigned int *result, _BYTE *a2, unsigned int a3, int a4, int a5, unsigned int a6, int a7, int a8)
{
  v8 = ((a3 >> 8) & 0xFF00FF) * a5 + ((a6 >> 8) & 0xFF00FF) * a8;
  v9 = (a3 & 0xFF00FF) * a5 + (a6 & 0xFF00FF) * a8;
  *a2 = (a5 * a4 + a8 * a7 + ((a5 * a4 + a8 * a7) >> 8) + 1) >> 8;
  *result = ((v9 + 65537 + ((v9 >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF | (v8 + 65537 + ((v8 >> 8) & 0xFF00FF)) & 0xFF00FF00;
  return result;
}

unsigned int *DMplusDM(unsigned int *result, unsigned int a2, int a3, unsigned int a4, int a5)
{
  v5 = ((a2 >> 8) & 0xFF00FF) * a3 + ((a4 >> 8) & 0xFF00FF) * a5;
  v6 = (a2 & 0xFF00FF) * a3 + (a4 & 0xFF00FF) * a5;
  *result = ((v6 + 65537 + ((v6 >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF | (v5 + 65537 + ((v5 >> 8) & 0xFF00FF)) & 0xFF00FF00;
  return result;
}

_DWORD *DAplusDAM(_DWORD *result, _BYTE *a2, int a3, char a4, unsigned int a5, int a6, int a7)
{
  *a2 = a4 + ((a7 * a6 + ((a7 * a6) >> 8) + 1) >> 8);
  *result = ((((a5 >> 8) & 0xFF00FF) * a7 + 65537 + (((((a5 >> 8) & 0xFF00FF) * a7) >> 8) & 0xFF00FF)) & 0xFF00FF00) + a3 + ((((a5 & 0xFF00FF) * a7 + 65537 + ((((a5 & 0xFF00FF) * a7) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF);
  return result;
}

_DWORD *DAplusdDA(_DWORD *result, _BYTE *a2, int a3, int a4, int a5, int a6)
{
  v6 = ((a4 << 16) | (a4 << 24) | (((a4 << 16) | (a4 << 24)) >> 16)) - a3;
  v7 = ((a6 << 16) | (a6 << 24) | (((a6 << 16) | (a6 << 24)) >> 16)) - a5;
  v8 = ((v7 >> 8) & 0xFF00FF) + ((v6 >> 8) & 0xFF00FF);
  v9 = (v7 & 0xFF00FF) + (v6 & 0xFF00FF);
  v10 = v8 & 0x1000100 | (v9 >> 8) & 0x10001;
  v11 = a6 + a4;
  v12 = 15 * v10;
  v13 = 240 * v10;
  if ((a6 + a4) > 0xFF)
  {
    v11 = -1;
  }

  HIDWORD(v14) = v11;
  LODWORD(v14) = v11 << 24;
  *a2 = v11;
  *result = ((v14 >> 8) & 0xFFFF0000 | ((v14 >> 8) >> 16)) - ((v8 << 8) & 0xFF00FF00 | v9 & 0xFF00FF | v12 | v13);
  return result;
}

unsigned int *DplusdDA(unsigned int *result, int a2, int a3, int a4)
{
  v4 = ((a4 << 16) | (a4 << 24) | (((a4 << 16) | (a4 << 24)) >> 16)) - a3;
  v5 = ((v4 >> 8) & 0xFF00FF) + ((~a2 >> 8) & 0xFF00FF);
  *result = ~((v5 << 8) & 0xFF00FF00 | ((v4 & 0xFF00FF) + (~a2 & 0xFF00FF)) & 0xFF00FF | (15 * (v5 & 0x1000100 | (((v4 & 0xFF00FF) + (~a2 & 0xFF00FF)) >> 8) & 0x10001)) | (240 * (v5 & 0x1000100 | (((v4 & 0xFF00FF) + (~a2 & 0xFF00FF)) >> 8) & 0x10001)));
  return result;
}

unint64_t PDAmultiplyPDA_5791(unsigned int a1, int a2, unsigned int a3, int a4)
{
  v4 = a2 - HIBYTE(a1);
  v5 = a2 - BYTE2(a1);
  v6 = a2 - BYTE1(a1);
  v7 = a2 - a1;
  v8 = a4 - HIBYTE(a3);
  v9 = a4 - BYTE2(a3);
  v10 = a4 - BYTE1(a3);
  v11 = a4 - a3;
  v12 = v8 + (a4 ^ 0xFF);
  v13 = v9 + (a4 ^ 0xFF);
  v14 = v10 + (a4 ^ 0xFF);
  v15 = v11 + (a4 ^ 0xFF);
  if (a4 == 255)
  {
    v12 = v8;
    v13 = v9;
    v14 = v10;
    v15 = v11;
  }

  v16 = v15 * v7;
  v17 = v14 * v6;
  v18 = v13 * v5;
  v19 = v12 * v4;
  v20 = v19 + v8 * (a2 ^ 0xFF);
  v21 = v18 + v9 * (a2 ^ 0xFF);
  v22 = v17 + v10 * (a2 ^ 0xFF);
  v23 = v16 + v11 * (a2 ^ 0xFF);
  if (a2 != 255)
  {
    v19 = v20;
    v18 = v21;
    v17 = v22;
    v16 = v23;
  }

  v24 = 255 * (a4 + a2) - a4 * a2;
  if (v19 >= 65152)
  {
    v25 = 65152;
  }

  else
  {
    v25 = v19 + 128;
  }

  v26 = v25 + (v25 >> 8);
  if (v18 >= 65152)
  {
    v27 = 65152;
  }

  else
  {
    v27 = v18 + 128;
  }

  v28 = v27 + (v27 >> 8);
  if (v17 >= 65152)
  {
    v29 = 65152;
  }

  else
  {
    v29 = v17 + 128;
  }

  v30 = v29 + (v29 >> 8);
  if (v16 >= 65152)
  {
    v31 = 65152;
  }

  else
  {
    v31 = v16 + 128;
  }

  v32 = v31 + (v31 >> 8);
  if (v24 >= 65152)
  {
    v33 = 65152;
  }

  else
  {
    v33 = v24 + 128;
  }

  v34 = (v33 + (v33 >> 8)) >> 8;
  return ((v34 - (v26 >> 8)) << 24) | ((v34 - BYTE1(v28)) << 16) | ((v34 - BYTE1(v30)) << 8) | (v34 - BYTE1(v32)) | (v34 << 32);
}

unint64_t PDAscreenPDA_5792(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = vand_s8(vshl_u32(vdup_n_s32(a1), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
  v5 = vshl_u32(vdup_n_s32(a3), 0xFFFFFFF8FFFFFFF0);
  v6 = HIBYTE(a1) - a2 + (a4 - HIBYTE(a3)) * (255 - (a2 - HIBYTE(a1))) + ((a2 - HIBYTE(a1)) << 8);
  v7 = a1 - a2 + (a4 - a3) * (255 - (a2 - a1)) + ((a2 - a1) << 8);
  v8 = 255 * (a4 + a2) - a4 * a2;
  if (v6 >= 65152)
  {
    v9 = 65152;
  }

  else
  {
    v9 = v6 + 128;
  }

  v10 = v9 + (v9 >> 8);
  if (v7 >= 65152)
  {
    v11 = 65152;
  }

  else
  {
    v11 = v7 + 128;
  }

  v12 = v11 + (v11 >> 8);
  if (v8 >= 65152)
  {
    v13 = 65152;
  }

  else
  {
    v13 = v8 + 128;
  }

  v14 = (v13 + (v13 >> 8)) >> 8;
  v15 = vsub_s32(vdup_n_s32(a2), v4);
  v16 = vmla_s32(vmul_s32(v15, 0xFF000000FFLL), vsub_s32(vdup_n_s32(a4), vand_s8(v5, 0xFF000000FFLL)), vsub_s32(0xFF000000FFLL, v15));
  v17 = vdup_n_s32(0xFE80u);
  v18 = vbsl_s8(vcgt_s32(v17, v16), vadd_s32(v16, 0x8000000080), v17);
  v19 = vand_s8(vshl_u32(vsub_s32(vdup_n_s32(v14), vshr_n_u32(vsra_n_u32(v18, v18, 8uLL), 8uLL)), 0x800000010), 0xFF0000FF0000);
  return v19.i32[0] | ((v14 - (v10 >> 8)) << 24) | (v14 - BYTE1(v12)) | v19.i32[1] | (v14 << 32);
}

unint64_t PDAoverlayPDA_5793(unsigned int a1, signed int a2, unsigned int a3, int a4)
{
  v4 = a2 - BYTE1(a1);
  v5 = a2 - a1;
  v6 = a4 - BYTE2(a3);
  v7 = a4 - BYTE1(a3);
  v8 = a4 - a3;
  if ((a4 - HIBYTE(a3)) >= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = a4 - HIBYTE(a3);
  }

  if ((a2 - HIBYTE(a1)) >= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = a2 - HIBYTE(a1);
  }

  v11 = 2 * v10 * v9;
  if (v6 >= a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = v6;
  }

  if (a2 - BYTE2(a1) >= a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = a2 - BYTE2(a1);
  }

  v14 = 2 * v13 * v12;
  if (v7 >= a4)
  {
    v15 = a4;
  }

  else
  {
    v15 = v7;
  }

  if (v4 >= a2)
  {
    v16 = a2;
  }

  else
  {
    v16 = v4;
  }

  v17 = 2 * v16 * v15;
  if (v8 >= a4)
  {
    v18 = a4;
  }

  else
  {
    v18 = v8;
  }

  if (v5 >= a2)
  {
    v19 = a2;
  }

  else
  {
    v19 = v5;
  }

  v20 = 2 * v19 * v18;
  v21 = a4 * a2;
  v22 = (a2 + 1) >> 1;
  if (v10 >= v22)
  {
    v23 = v9 * (a2 + 255) + (a4 + 255) * v10 - (v21 + v11);
  }

  else
  {
    v23 = (a4 ^ 0xFF) * v10 + v9 * (a2 ^ 0xFF) + v11;
  }

  v24 = a4 + 255;
  v25 = a2 + 255;
  v26 = v12 * (a2 + 255) + (a4 + 255) * v13 - (v21 + v14);
  v27 = a4 ^ 0xFF;
  v28 = a2 ^ 0xFF;
  v29 = (a4 ^ 0xFF) * v13 + v12 * (a2 ^ 0xFF) + v14;
  if (v13 >= v22)
  {
    v29 = v26;
  }

  v30 = v15 * v25 + v24 * v16 - (v21 + v17);
  v31 = v27 * v16 + v15 * v28 + v17;
  if (v16 >= v22)
  {
    v31 = v30;
  }

  v32 = v18 * v25 + v24 * v19 - (v21 + v20);
  v33 = v27 * v19 + v18 * v28 + v20;
  if (v19 >= v22)
  {
    v33 = v32;
  }

  v34 = 255 * (a4 + a2) - v21;
  v35 = v23 + 128;
  if (v23 >= 65152)
  {
    v35 = 65152;
  }

  v36 = v35 + (v35 >> 8);
  v37 = vadd_s32(__PAIR64__(v29, v31), 0x8000000080);
  v38 = vdup_n_s32(0xFE80u);
  v39 = vcgt_s32(v38, __PAIR64__(v29, v31));
  if (v33 >= 65152)
  {
    v40 = 65152;
  }

  else
  {
    v40 = v33 + 128;
  }

  v41 = v40 + (v40 >> 8);
  if (v34 >= 65152)
  {
    v42 = 65152;
  }

  else
  {
    v42 = v34 + 128;
  }

  v43 = (v42 + (v42 >> 8)) >> 8;
  v44 = vbsl_s8(v39, v37, v38);
  v45 = vand_s8(vshl_u32(vsub_s32(vdup_n_s32(v43), vshr_n_u32(vsra_n_u32(v44, v44, 8uLL), 8uLL)), 0x1000000008), 0xFF00000000FF00);
  return (v43 - BYTE1(v41)) | v45.i32[0] | v45.i32[1] | ((v43 - (v36 >> 8)) << 24) | (v43 << 32);
}

unint64_t PDAlightenPDA_5794(unsigned __int32 a1, unsigned int a2, unsigned __int32 a3, unsigned int a4)
{
  v4.i64[0] = __PAIR64__(a4, a2);
  v5.i64[0] = __PAIR64__(a4, a2);
  v5.i64[1] = __PAIR64__(a4, a2);
  v6 = vrev64q_s32(v5);
  v5.i32[0] = a3 >> 8;
  v5.i32[1] = a1;
  v5.i32[2] = a3;
  v7 = vshlq_u32(v5, xmmword_18439CAD0);
  v8 = vuzp2q_s32(vuzp1q_s32(v5, v5), v5);
  v5.i32[3] = HIWORD(a1);
  v9.i64[0] = 0xFF000000FFLL;
  v9.i64[1] = 0xFF000000FFLL;
  v10 = vandq_s8(v5, v9);
  v10.i32[2] = v7.i32[2];
  v11 = vshlq_u32(v8, xmmword_18439CAD0);
  v8.i32[0] = a1 >> 8;
  v8.i32[3] = HIWORD(a3);
  v12 = vandq_s8(v8, v9);
  v12.i32[2] = v11.i32[2];
  v13 = vsubq_s32(v6, v10);
  v4.i64[1] = __PAIR64__(a4, a2);
  v14 = vminq_s32(vsubq_s32(v4, v12), v4);
  v15 = vminq_s32(v13, v6);
  v16 = vmaxq_s32(vmulq_s32(v15, v4), vmulq_s32(v14, v6));
  if (a4 != 255)
  {
    v16 = vmlaq_s32(v16, vdupq_n_s32(a4 ^ 0xFF), vtrn2q_s32(vrev64q_s32(v14), v15));
  }

  if (a2 != 255)
  {
    v16 = vmlaq_s32(v16, vtrn2q_s32(vrev64q_s32(v15), v14), vdupq_n_s32(a2 ^ 0xFF));
  }

  if (v16.i32[2] >= 65152)
  {
    v17 = 65152;
  }

  else
  {
    v17 = v16.i32[2] + 128;
  }

  v18 = vdup_n_s32(0xFE80u);
  v19 = vbsl_s8(vcgt_s32(v18, __PAIR64__(v16.u32[1], 255 * (a4 + a2) - a4 * a2)), vadd_s32(__PAIR64__(v16.u32[1], 255 * (a4 + a2) - a4 * a2), 0x8000000080), v18);
  v20.i32[0] = vshr_n_s32(v19, 8uLL).u32[0];
  v20.i32[1] = vshr_n_u32(*&v19, 8uLL).i32[1];
  v21 = vadd_s32(v20, v19);
  v22 = vshr_n_s32(v21, 8uLL);
  v23 = vextq_s8(v16, v16, 0xCuLL).u64[0];
  v24 = vbsl_s8(vcgt_s32(v18, v23), vadd_s32(v23, 0x8000000080), v18);
  v25 = vand_s8(vshl_u32(vsub_s32(vdup_lane_s32(v22, 0), vshr_n_u32(vsra_n_u32(v24, v24, 8uLL), 8uLL)), 0x800000010), 0xFF0000FF0000);
  return v25.i32[0] | ((v22.i32[0] - ((v17 + (v17 >> 8)) >> 8)) << 24) | (v22.i8[0] - v21.i8[5]) | v25.i32[1] | (v22.u8[0] << 32);
}

unint64_t PDAdarkenPDA_5795(unsigned __int32 a1, unsigned int a2, unsigned __int32 a3, unsigned int a4)
{
  v4.i64[0] = __PAIR64__(a4, a2);
  v5.i64[0] = __PAIR64__(a4, a2);
  v5.i64[1] = __PAIR64__(a4, a2);
  v6 = vrev64q_s32(v5);
  v5.i32[0] = a3 >> 8;
  v5.i32[1] = a1;
  v5.i32[2] = a3;
  v7 = vshlq_u32(v5, xmmword_18439CAD0);
  v8 = vuzp2q_s32(vuzp1q_s32(v5, v5), v5);
  v5.i32[3] = HIWORD(a1);
  v9.i64[0] = 0xFF000000FFLL;
  v9.i64[1] = 0xFF000000FFLL;
  v10 = vandq_s8(v5, v9);
  v10.i32[2] = v7.i32[2];
  v11 = vshlq_u32(v8, xmmword_18439CAD0);
  v8.i32[0] = a1 >> 8;
  v8.i32[3] = HIWORD(a3);
  v12 = vandq_s8(v8, v9);
  v12.i32[2] = v11.i32[2];
  v13 = vsubq_s32(v6, v10);
  v4.i64[1] = __PAIR64__(a4, a2);
  v14 = vminq_s32(vsubq_s32(v4, v12), v4);
  v15 = vminq_s32(v13, v6);
  v16 = vminq_s32(vmulq_s32(v15, v4), vmulq_s32(v14, v6));
  if (a4 != 255)
  {
    v16 = vmlaq_s32(v16, vdupq_n_s32(a4 ^ 0xFF), vtrn2q_s32(vrev64q_s32(v14), v15));
  }

  if (a2 != 255)
  {
    v16 = vmlaq_s32(v16, vtrn2q_s32(vrev64q_s32(v15), v14), vdupq_n_s32(a2 ^ 0xFF));
  }

  if (v16.i32[2] >= 65152)
  {
    v17 = 65152;
  }

  else
  {
    v17 = v16.i32[2] + 128;
  }

  v18 = vdup_n_s32(0xFE80u);
  v19 = vbsl_s8(vcgt_s32(v18, __PAIR64__(v16.u32[1], 255 * (a4 + a2) - a4 * a2)), vadd_s32(__PAIR64__(v16.u32[1], 255 * (a4 + a2) - a4 * a2), 0x8000000080), v18);
  v20.i32[0] = vshr_n_s32(v19, 8uLL).u32[0];
  v20.i32[1] = vshr_n_u32(*&v19, 8uLL).i32[1];
  v21 = vadd_s32(v20, v19);
  v22 = vshr_n_s32(v21, 8uLL);
  v23 = vextq_s8(v16, v16, 0xCuLL).u64[0];
  v24 = vbsl_s8(vcgt_s32(v18, v23), vadd_s32(v23, 0x8000000080), v18);
  v25 = vand_s8(vshl_u32(vsub_s32(vdup_lane_s32(v22, 0), vshr_n_u32(vsra_n_u32(v24, v24, 8uLL), 8uLL)), 0x800000010), 0xFF0000FF0000);
  return v25.i32[0] | ((v22.i32[0] - ((v17 + (v17 >> 8)) >> 8)) << 24) | (v22.i8[0] - v21.i8[5]) | v25.i32[1] | (v22.u8[0] << 32);
}

unint64_t PDAcolordodgePDA_5796(unsigned int a1, int a2, unsigned int a3, int a4)
{
  v4 = a2 - HIBYTE(a1);
  v5 = a2 - BYTE2(a1);
  v6 = a4 * a4;
  if (v4 >= a2)
  {
    v4 = a2;
  }

  if (v4)
  {
    if (HIBYTE(a3))
    {
      v7 = v6 * v4 / HIBYTE(a3);
    }

    else
    {
      v7 = 65025;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = a2 - BYTE1(a1);
  if (v5 >= a2)
  {
    v5 = a2;
  }

  if (v5)
  {
    if (BYTE2(a3))
    {
      v9 = v6 * v5 / BYTE2(a3);
    }

    else
    {
      v9 = 65025;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = a2 - a1;
  if (v8 >= a2)
  {
    v8 = a2;
  }

  if (v8)
  {
    if (BYTE1(a3))
    {
      v11 = v6 * v8 / BYTE1(a3);
    }

    else
    {
      v11 = 65025;
    }
  }

  else
  {
    v11 = 0;
  }

  if (v10 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (a3)
    {
      v13 = v6 * v12 / a3;
    }

    else
    {
      v13 = 65025;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v7 + (a4 ^ 0xFF) * v4;
  v15 = v9 + (a4 ^ 0xFF) * v5;
  v16 = v11 + (a4 ^ 0xFF) * v8;
  if (a4 == 255)
  {
    v16 = v11;
  }

  else
  {
    v13 += (a4 ^ 0xFF) * v12;
  }

  if (a4 == 255)
  {
    v15 = v9;
    v14 = v7;
  }

  v17 = v13 + (a4 - a3) * (a2 ^ 0xFF);
  if (a2 == 255)
  {
    v17 = v13;
    v18 = v16;
  }

  else
  {
    v18 = v16 + (a4 - BYTE1(a3)) * (a2 ^ 0xFF);
  }

  if (a2 != 255)
  {
    v15 += (a4 - BYTE2(a3)) * (a2 ^ 0xFF);
    v14 += (a4 - HIBYTE(a3)) * (a2 ^ 0xFF);
  }

  v19 = 255 * (a4 + a2) - a4 * a2;
  if (v14 >= v19)
  {
    v14 = 255 * (a4 + a2) - a4 * a2;
  }

  if (v15 >= v19)
  {
    v15 = 255 * (a4 + a2) - a4 * a2;
  }

  if (v18 >= v19)
  {
    v18 = 255 * (a4 + a2) - a4 * a2;
  }

  if (v17 >= v19)
  {
    v17 = 255 * (a4 + a2) - a4 * a2;
  }

  if (v18 >= 65152)
  {
    v20 = 65152;
  }

  else
  {
    v20 = v18 + 128;
  }

  v21 = v20 + (v20 >> 8);
  if (v15 >= 65152)
  {
    v22 = 65152;
  }

  else
  {
    v22 = v15 + 128;
  }

  v23 = v22 + (v22 >> 8);
  if (v14 >= 65152)
  {
    v24 = 65152;
  }

  else
  {
    v24 = v14 + 128;
  }

  v25 = v24 + (v24 >> 8);
  if (v17 >= 65152)
  {
    v26 = 65152;
  }

  else
  {
    v26 = v17 + 128;
  }

  v27 = v26 + (v26 >> 8);
  if (v19 >= 65152)
  {
    v28 = 65152;
  }

  else
  {
    v28 = v19 + 128;
  }

  v29 = (v28 + (v28 >> 8)) >> 8;
  return ((v29 - BYTE1(v23)) << 16) | ((v29 - (v25 >> 8)) << 24) | ((v29 - BYTE1(v21)) << 8) | (v29 - BYTE1(v27)) | (v29 << 32);
}

unint64_t PDAcolorburnPDA_5797(unsigned int a1, int a2, unsigned int a3, int a4)
{
  v4 = a4 - BYTE2(a3);
  v5 = a4 - BYTE1(a3);
  v6 = a4 - a3;
  v7 = a4 * a2;
  if ((a4 - HIBYTE(a3)) >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = a4 - HIBYTE(a3);
  }

  if ((a2 - HIBYTE(a1)) >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = a2 - HIBYTE(a1);
  }

  if (v4 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = v4;
  }

  if (a2 - BYTE2(a1) >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = a2 - BYTE2(a1);
  }

  if (v5 >= a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = v5;
  }

  if (a2 - BYTE1(a1) >= a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = a2 - BYTE1(a1);
  }

  if (v6 >= a4)
  {
    v14 = a4;
  }

  else
  {
    v14 = v6;
  }

  if (a2 - a1 >= a2)
  {
    v15 = a2;
  }

  else
  {
    v15 = a2 - a1;
  }

  v16 = v7 + (a4 ^ 0xFF) * v13;
  v17 = v7 + (a4 ^ 0xFF) * v15;
  if (a4 == 255)
  {
    v17 = a4 * a2;
    v16 = 255 * a2;
    v18 = 255 * a2;
  }

  else
  {
    v18 = v7 + (a4 ^ 0xFF) * v11;
  }

  if (a4 == 255)
  {
    v19 = 255 * a2;
  }

  else
  {
    v19 = v7 + (a4 ^ 0xFF) * v9;
  }

  if (a2 == 255)
  {
    v20 = v17;
  }

  else
  {
    v20 = v17 + v14 * (a2 ^ 0xFF);
  }

  if (a2 == 255)
  {
    v21 = v16;
  }

  else
  {
    v21 = v16 + v12 * (a2 ^ 0xFF);
  }

  if (a2 == 255)
  {
    v22 = v18;
  }

  else
  {
    v22 = v18 + v10 * (a2 ^ 0xFF);
  }

  if (a2 == 255)
  {
    v23 = v19;
  }

  else
  {
    v23 = v19 + v8 * (a2 ^ 0xFF);
  }

  v24 = a2 - v9;
  v25 = a4 * a4;
  v26 = (v23 - v25 * v24 / v8) & ~((v23 - v25 * v24 / v8) >> 31);
  if (v8)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (HIBYTE(a1))
  {
    v23 = v27;
  }

  if (BYTE2(a1))
  {
    if (v10)
    {
      v22 = (v22 - v25 * (a2 - v11) / v10) & ~((v22 - v25 * (a2 - v11) / v10) >> 31);
    }

    else
    {
      v22 = 0;
    }
  }

  if (BYTE1(a1))
  {
    if (v12)
    {
      v21 = (v21 - v25 * (a2 - v13) / v12) & ~((v21 - v25 * (a2 - v13) / v12) >> 31);
    }

    else
    {
      v21 = 0;
    }
  }

  if (v14)
  {
    v28 = (v20 - v25 * (a2 - v15) / v14) & ~((v20 - v25 * (a2 - v15) / v14) >> 31);
  }

  else
  {
    v28 = 0;
  }

  if (!a1)
  {
    v28 = v20;
  }

  v29 = 255 * (a4 + a2) - v7;
  v30 = v23 + 128;
  if (v23 >= 65152)
  {
    v30 = 65152;
  }

  v31 = v30 + (v30 >> 8);
  v32 = vadd_s32(__PAIR64__(v22, v21), 0x8000000080);
  v33 = vdup_n_s32(0xFE80u);
  v34 = vcgt_s32(v33, __PAIR64__(v22, v21));
  if (v28 >= 65152)
  {
    v35 = 65152;
  }

  else
  {
    v35 = v28 + 128;
  }

  v36 = v35 + (v35 >> 8);
  if (v29 >= 65152)
  {
    v37 = 65152;
  }

  else
  {
    v37 = v29 + 128;
  }

  v38 = (v37 + (v37 >> 8)) >> 8;
  v39 = vbsl_s8(v34, v32, v33);
  v40 = vand_s8(vshl_u32(vsub_s32(vdup_n_s32(v38), vshr_n_u32(vsra_n_u32(v39, v39, 8uLL), 8uLL)), 0x1000000008), 0xFF00000000FF00);
  return (v38 - BYTE1(v36)) | v40.i32[0] | v40.i32[1] | ((v38 - (v31 >> 8)) << 24) | (v38 << 32);
}

unint64_t PDAhardlightPDA_5798(unsigned int a1, int a2, unsigned int a3, signed int a4)
{
  v4 = a2 - BYTE1(a1);
  v5 = a2 - a1;
  v6 = a4 - BYTE2(a3);
  v7 = a4 - BYTE1(a3);
  v8 = a4 - a3;
  if ((a4 - HIBYTE(a3)) >= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = a4 - HIBYTE(a3);
  }

  if ((a2 - HIBYTE(a1)) >= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = a2 - HIBYTE(a1);
  }

  v11 = 2 * v10 * v9;
  if (v6 >= a4)
  {
    v6 = a4;
  }

  if (a2 - BYTE2(a1) >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = a2 - BYTE2(a1);
  }

  v13 = 2 * v12 * v6;
  if (v7 >= a4)
  {
    v14 = a4;
  }

  else
  {
    v14 = v7;
  }

  if (v4 >= a2)
  {
    v15 = a2;
  }

  else
  {
    v15 = v4;
  }

  v16 = 2 * v15 * v14;
  if (v8 >= a4)
  {
    v17 = a4;
  }

  else
  {
    v17 = v8;
  }

  if (v5 >= a2)
  {
    v18 = a2;
  }

  else
  {
    v18 = v5;
  }

  v19 = 2 * v18 * v17;
  v20 = a4 * a2;
  v21 = (a4 + 1) >> 1;
  if (v9 <= v21)
  {
    v22 = (a4 ^ 0xFF) * v10 + v9 * (a2 ^ 0xFF) + v11;
  }

  else
  {
    v22 = v9 * (a2 + 255) + (a4 + 255) * v10 - (v20 + v11);
  }

  v23 = a4 ^ 0xFF;
  v24 = a2 ^ 0xFF;
  v25 = (a4 ^ 0xFF) * v12 + v6 * (a2 ^ 0xFF) + v13;
  v26 = a4 + 255;
  v27 = a2 + 255;
  v28 = v6 * (a2 + 255) + (a4 + 255) * v12 - (v20 + v13);
  if (v6 > v21)
  {
    v29 = v28;
  }

  else
  {
    v29 = v25;
  }

  v30 = v23 * v15 + v14 * v24 + v16;
  v31 = v14 * v27 + v26 * v15 - (v20 + v16);
  if (v14 > v21)
  {
    v32 = v31;
  }

  else
  {
    v32 = v30;
  }

  v33 = v23 * v18 + v17 * v24 + v19;
  v34 = v17 * v27 + v26 * v18 - (v20 + v19);
  if (v17 > v21)
  {
    v35 = v34;
  }

  else
  {
    v35 = v33;
  }

  v36 = 255 * (a4 + a2) - v20;
  v37 = v22 + 128;
  if (v22 >= 65152)
  {
    v37 = 65152;
  }

  v38 = v37 + (v37 >> 8);
  v39 = vadd_s32(__PAIR64__(v29, v32), 0x8000000080);
  v40 = vdup_n_s32(0xFE80u);
  v41 = vcgt_s32(v40, __PAIR64__(v29, v32));
  if (v35 >= 65152)
  {
    v42 = 65152;
  }

  else
  {
    v42 = v35 + 128;
  }

  v43 = v42 + (v42 >> 8);
  if (v36 >= 65152)
  {
    v44 = 65152;
  }

  else
  {
    v44 = v36 + 128;
  }

  v45 = (v44 + (v44 >> 8)) >> 8;
  v46 = vbsl_s8(v41, v39, v40);
  v47 = vand_s8(vshl_u32(vsub_s32(vdup_n_s32(v45), vshr_n_u32(vsra_n_u32(v46, v46, 8uLL), 8uLL)), 0x1000000008), 0xFF00000000FF00);
  return (v45 - BYTE1(v43)) | v47.i32[0] | v47.i32[1] | ((v45 - (v38 >> 8)) << 24) | (v45 << 32);
}

unint64_t PDAsoftlightPDA_5799(unsigned int a1, int a2, unsigned int a3, int a4)
{
  v4 = a2 - HIBYTE(a1);
  v5 = a4 - HIBYTE(a3);
  if (v5 >= a4)
  {
    v5 = a4;
  }

  if (v4 >= a2)
  {
    v4 = a2;
  }

  v6 = a4 - a3;
  v7 = a4 - BYTE1(a3);
  v8 = a4 - BYTE2(a3);
  v9 = a2 - a1;
  v10 = a2 - BYTE1(a1);
  v11 = a2 - BYTE2(a1);
  v12 = v4 * v4 * (2 * v5 - a4) / a2;
  v13 = (2 * v4 * v5 - v12) & ~((2 * v4 * v5 - v12) >> 31);
  if (v8 >= a4)
  {
    v8 = a4;
  }

  if (v11 >= a2)
  {
    v11 = a2;
  }

  v14 = v11 * v11 * (2 * v8 - a4) / a2;
  v15 = (2 * v11 * v8 - v14) & ~((2 * v11 * v8 - v14) >> 31);
  if (v7 >= a4)
  {
    v7 = a4;
  }

  if (v10 >= a2)
  {
    v10 = a2;
  }

  v16 = v10 * v10 * (2 * v7 - a4) / a2;
  v17 = (2 * v10 * v7 - v16) & ~((2 * v10 * v7 - v16) >> 31);
  if (v6 >= a4)
  {
    v6 = a4;
  }

  if (v9 >= a2)
  {
    v9 = a2;
  }

  v18 = 2 * v9 * v6 - v9 * v9 * (2 * v6 - a4) / a2;
  v19 = v18 & ~(v18 >> 31);
  v20 = v13 + (a4 ^ 0xFF) * v4;
  v21 = v15 + v11 * (a4 ^ 0xFF);
  v22 = v17 + v10 * (a4 ^ 0xFF);
  v23 = v19 + v9 * (a4 ^ 0xFF);
  if (a4 == 255)
  {
    v23 = v19;
    v22 = v17;
    v21 = v15;
    v20 = v13;
  }

  v24 = v20 + v5 * (a2 ^ 0xFF);
  v25 = v21 + v8 * (a2 ^ 0xFF);
  v26 = v22 + v7 * (a2 ^ 0xFF);
  v27 = v23 + v6 * (a2 ^ 0xFF);
  if (a2 == 255)
  {
    v27 = v23;
    v26 = v22;
    v25 = v21;
    v24 = v20;
  }

  v28 = 255 * (a4 + a2) - a4 * a2;
  if (v24 >= 65152)
  {
    v29 = 65152;
  }

  else
  {
    v29 = v24 + 128;
  }

  v30 = v29 + (v29 >> 8);
  if (v25 >= 65152)
  {
    v31 = 65152;
  }

  else
  {
    v31 = v25 + 128;
  }

  v32 = v31 + (v31 >> 8);
  if (v26 >= 65152)
  {
    v33 = 65152;
  }

  else
  {
    v33 = v26 + 128;
  }

  v34 = v33 + (v33 >> 8);
  if (v27 >= 65152)
  {
    v35 = 65152;
  }

  else
  {
    v35 = v27 + 128;
  }

  v36 = v35 + (v35 >> 8);
  if (v28 >= 65152)
  {
    v37 = 65152;
  }

  else
  {
    v37 = v28 + 128;
  }

  v38 = (v37 + (v37 >> 8)) >> 8;
  return ((v38 - BYTE1(v32)) << 16) | ((v38 - (v30 >> 8)) << 24) | ((v38 - BYTE1(v34)) << 8) | (v38 - BYTE1(v36)) | (v38 << 32);
}

unint64_t PDAdifferencePDA_5800(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4, double a5, uint32x2_t a6, double a7, double a8, double a9, double a10, double a11, uint32x2_t a12)
{
  v12 = vdup_n_s32(a2);
  v13 = vdup_n_s32(a1);
  a6.i32[0] = a1;
  v14.i32[0] = vshl_u32(a6, 0xFFFFFF01FFFFFFE8).u32[0];
  v14.i32[1] = v13.u8[4];
  v15 = vdup_n_s32(a3);
  a12.i32[0] = a3;
  v16.i32[0] = vshl_u32(a12, 0xFFFFFF01FFFFFFE8).u32[0];
  v16.i32[1] = v15.u8[4];
  v17 = vdup_n_s32(a4);
  v18 = vmin_s32(vsub_s32(v17, v16), v17);
  v19 = vmin_s32(vsub_s32(v12, v14), v12);
  v20 = vmul_s32(__PAIR64__(v19.u32[1], v18.u32[0]), __PAIR64__(a4, a2));
  v21 = vrev64_s32(__PAIR64__(a4, a2));
  v22 = vmin_s32(vsub_s32(v17, vand_s8(vshl_u32(v15, 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL)), v17);
  v23 = vmin_s32(vsub_s32(v12, vand_s8(vshl_u32(v13, 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL)), v12);
  v24 = 255 * (a4 + a2) - a4 * a2;
  v25 = vmul_s32(vadd_s32(v18, v19), 0xFF000000FFLL);
  v19.i32[1] = v18.i32[1];
  v26 = vmul_s32(v19, v21);
  v27 = vaba_s32(vsub_s32(vsub_s32(v25, v20), v26), v26, v20);
  v28 = vdup_n_s32(0xFE80u);
  v29 = vcgt_s32(v28, v27);
  v30 = v27.i32[0] + 128;
  if ((v29.i8[0] & 1) == 0)
  {
    v30 = 65152;
  }

  v31 = v30 + (v30 >> 8);
  if (v29.i8[4])
  {
    v32 = v27.i32[1] + 128;
  }

  else
  {
    v32 = 65152;
  }

  v33 = v32 + (v32 >> 8);
  if (v24 >= 65152)
  {
    v34 = 65152;
  }

  else
  {
    v34 = v24 + 128;
  }

  v35 = (v34 + (v34 >> 8)) >> 8;
  v36 = vmul_s32(__PAIR64__(v22.u32[1], v23.u32[0]), v21);
  v37 = vmul_s32(vadd_s32(v22, v23), 0xFF000000FFLL);
  v22.i32[1] = v23.i32[1];
  v38 = vmul_s32(v22, vrev64_s32(v21));
  v39 = vaba_s32(vsub_s32(vsub_s32(v37, v38), v36), v36, v38);
  v40 = vbsl_s8(vcgt_s32(v28, v39), vadd_s32(v39, 0x8000000080), v28);
  v41 = vand_s8(vshl_u32(vsub_s32(vdup_n_s32(v35), vshr_n_u32(vsra_n_u32(v40, v40, 8uLL), 8uLL)), 0x1000000008), 0xFF00000000FF00);
  return v41.i32[1] | ((v35 - (v31 >> 8)) << 24) | v41.i32[0] | (v35 - BYTE1(v33)) | (v35 << 32);
}

unint64_t PDAexclusionPDA_5801(unsigned int a1, signed int a2, unsigned int a3, signed int a4)
{
  v4 = a2 - HIBYTE(a1);
  v5 = vdup_n_s32(a2);
  v6 = vsub_s32(v5, vand_s8(vshl_u32(vdup_n_s32(a1), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL));
  v7 = a2 - a1;
  v8 = a4 - HIBYTE(a3);
  v9 = vdup_n_s32(a4);
  v10 = vsub_s32(v9, vand_s8(vshl_u32(vdup_n_s32(a3), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL));
  if (v8 >= a4)
  {
    v8 = a4;
  }

  if (v4 >= a2)
  {
    v4 = a2;
  }

  v11 = 255 * (v8 + v4) - 2 * v4 * v8;
  if (a4 - a3 >= a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = a4 - a3;
  }

  if (v7 >= a2)
  {
    v7 = a2;
  }

  v13 = 255 * (v12 + v7) - 2 * v7 * v12;
  v14 = 255 * (a4 + a2) - a4 * a2;
  if (v11 >= 65152)
  {
    v15 = 65152;
  }

  else
  {
    v15 = v11 + 128;
  }

  v16 = v15 + (v15 >> 8);
  if (v13 >= 65152)
  {
    v17 = 65152;
  }

  else
  {
    v17 = v13 + 128;
  }

  v18 = v17 + (v17 >> 8);
  if (v14 >= 65152)
  {
    v19 = 65152;
  }

  else
  {
    v19 = v14 + 128;
  }

  v20 = (v19 + (v19 >> 8)) >> 8;
  v21 = vmin_s32(v10, v9);
  v22 = vmin_s32(v6, v5);
  v23 = vmul_s32(vadd_s32(v21, v22), 0xFF000000FFLL);
  v24 = vmul_s32(v22, v21);
  v25 = vsub_s32(v23, vadd_s32(v24, v24));
  v26 = vdup_n_s32(0xFE80u);
  v27 = vbsl_s8(vcgt_s32(v26, v25), vadd_s32(v25, 0x8000000080), v26);
  v28 = vand_s8(vshl_u32(vsub_s32(vdup_n_s32(v20), vshr_n_u32(vsra_n_u32(v27, v27, 8uLL), 8uLL)), 0x800000010), 0xFF0000FF0000);
  return v28.i32[0] | ((v20 - (v16 >> 8)) << 24) | (v20 - BYTE1(v18)) | v28.i32[1] | (v20 << 32);
}

unint64_t PDAhuePDA_5802(unsigned int a1, signed int a2, unsigned int a3, signed int a4)
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = vdup_n_s32(a2);
  v5 = vsub_s32(v4, vand_s8(vshl_u32(vdup_n_s32(a1), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL));
  v6 = vdup_n_s32(a4);
  v7.i32[0] = HIBYTE(a3);
  v7.i32[1] = BYTE2(a3);
  v8 = vsub_s32(v6, v7);
  if ((a2 - HIBYTE(a1)) >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = a2 - HIBYTE(a1);
  }

  if (a4 - BYTE1(a3) >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a4 - BYTE1(a3);
  }

  v11 = vmin_s32(v5, v4);
  if (a4 - a3 >= a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = a4 - a3;
  }

  if (a2 - a1 >= a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = a2 - a1;
  }

  if (a4 == 255)
  {
    v17 = 0;
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = (a4 ^ 0xFF) * v9;
    v9 = (v9 * a4 + 128 + ((v9 * a4 + 128) >> 8)) >> 8;
    v15 = vmul_s32(vdup_n_s32(a4 ^ 0xFFu), v11);
    v16 = vmla_s32(0x8000000080, v11, v6);
    v11 = vshr_n_s32(vsra_n_s32(v16, v16, 8uLL), 8uLL);
    v17 = (a4 ^ 0xFF) * v13;
    v13 = (v13 * a4 + 128 + ((v13 * a4 + 128) >> 8)) >> 8;
  }

  v18 = vmin_s32(v8, v6);
  if (a2 != 255)
  {
    v19 = vmla_s32(0x8000000080, v18, v4);
    v20.i32[0] = vdup_lane_s32(v18, 1).u32[0];
    v14 += v18.i32[0] * (a2 ^ 0xFF);
    v18 = vshr_n_s32(vsra_n_s32(v19, v19, 8uLL), 8uLL);
    v20.i32[1] = v10;
    v15 = vmla_s32(v15, v20, vdup_n_s32(a2 ^ 0xFFu));
    v10 = (v10 * a2 + 128 + ((v10 * a2 + 128) >> 8)) >> 8;
    v17 += (a2 ^ 0xFF) * v12;
  }

  *v58 = v18;
  *&v58[8] = v10;
  v21 = v18.i32[0];
  v22 = v18.i32[0] < v18.i32[1];
  if (v18.i32[0] >= v18.i32[1])
  {
    v23 = v18.i32[1];
  }

  else
  {
    v23 = v18.i32[0];
  }

  if (v18.i32[0] <= v18.i32[1])
  {
    v21 = v18.i32[1];
  }

  if (v10 <= v21)
  {
    v24 = 2;
  }

  else
  {
    v24 = v18.i32[0] < v18.i32[1];
  }

  if (v10 <= v21)
  {
    v25 = v18.i32[0] < v18.i32[1];
  }

  else
  {
    v25 = 2;
  }

  v26 = v10 < v23;
  if (v10 >= v23)
  {
    v27 = v18.i32[0] >= v18.i32[1];
  }

  else
  {
    v27 = 2;
  }

  if (v26)
  {
    v28 = v18.i32[0] >= v18.i32[1];
  }

  else
  {
    v28 = v24;
  }

  if (!v26)
  {
    v22 = v25;
  }

  v29 = *&v58[4 * v22];
  v30 = *&v58[4 * v27];
  v31 = __OFSUB__(v29, v30);
  v32 = v29 - v30;
  if ((v32 < 0) ^ v31 | (v32 == 0))
  {
    *&v58[4 * v22] = 0;
    *&v58[4 * v28] = 0;
  }

  else
  {
    v33 = v11.i32[0];
    if (v9 >= v11.i32[0])
    {
      v34 = v11.i32[0];
    }

    else
    {
      v34 = v9;
    }

    if (v9 > v11.i32[0])
    {
      v33 = v9;
    }

    if (v11.i32[1] <= v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = v11.i32[1];
    }

    if (v11.i32[1] >= v34)
    {
      v33 = v35;
    }

    else
    {
      v34 = v11.i32[1];
    }

    v36 = v33 - v34;
    *&v58[4 * v22] = v36;
    *&v58[4 * v28] = ((*&v58[4 * v28] - *&v58[4 * v27]) * ((v36 << 16) / v32) + 0x8000) >> 16;
  }

  *&v58[4 * v27] = 0;
  v37 = vmul_s32(vsub_s32(v11, *&v58[4]), 0x1C00000097);
  v38 = (a4 * a2 + 128 + ((a4 * a2 + 128) >> 8)) >> 8;
  v39 = v37.i32[0] + 77 * (v9 - *v58) + v37.i32[1];
  v40 = (v39 + 128) >> 8;
  v41 = *v58 + v40;
  v42 = vadd_s32(vdup_n_s32(v40), *&v58[4]);
  if (v39 != v39)
  {
    v43 = *v58 >= *&v58[4] ? v42.i32[0] : *v58 + ((v39 + 128) >> 8);
    v44 = *v58 >= *&v58[4] ? *v58 + ((v39 + 128) >> 8) : v42.i32[0];
    v45 = v42.i32[1] <= v44 ? v44 : v42.i32[1];
    if (v42.i32[1] >= v43)
    {
      v44 = v45;
    }

    else
    {
      v43 = v42.i32[1];
    }

    if (v44 > v38 || v43 < 0)
    {
      v46 = (77 * v41 + 151 * v42.i32[0] + 28 * v42.i32[1] + 128) >> 8;
      if ((v40 & 0x80000000) != 0)
      {
        v47 = v46 - v43;
        if (v46 == v43)
        {
          goto LABEL_72;
        }

        v48 = (77 * v41 + 151 * v42.i32[0] + 28 * v42.i32[1] + 128) >> 8;
      }

      else
      {
        v47 = v44 - v46;
        if (v44 == v46)
        {
          goto LABEL_72;
        }

        v48 = v38 - v46;
      }

      v49 = (v48 << 16) / v47;
      v41 = v46 + ((v49 * (v41 - v46) + 0x8000) >> 16);
      v50 = vdup_n_s32(v46);
      v42 = vsra_n_s32(v50, vmla_s32(0x800000008000, vdup_n_s32(v49), vsub_s32(v42, v50)), 0x10uLL);
    }
  }

LABEL_72:
  if (v17 >= 65152)
  {
    v51 = 65152;
  }

  else
  {
    v51 = v17 + 128;
  }

  if (v14 >= 65152)
  {
    v52 = 65152;
  }

  else
  {
    v52 = v14 + 128;
  }

  v53 = a4 + a2 - v38;
  v54 = vdup_n_s32(0xFE80u);
  v55 = vbsl_s8(vcgt_s32(v54, v15), vadd_s32(v15, 0x8000000080), v54);
  v56 = vand_s8(vshl_u32(vsub_s32(vdup_n_s32(v53), vsra_n_u32(v42, vsra_n_u32(v55, v55, 8uLL), 8uLL)), 0x800000010), 0xFF0000FF0000);
  return v56.i32[0] | ((v53 - (v41 + ((v52 + (v52 >> 8)) >> 8))) << 24) | (v53 - (v13 + ((v51 + (v51 >> 8)) >> 8))) | v56.i32[1] | (v53 << 32);
}

unint64_t PDAsaturationPDA_5803(unsigned int a1, signed int a2, unsigned int a3, signed int a4)
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = vdup_n_s32(a2);
  v5 = vsub_s32(v4, vand_s8(vshl_u32(vdup_n_s32(a1), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL));
  v6 = vdup_n_s32(a4);
  v7 = vsub_s32(v6, vand_s8(vshl_u32(vdup_n_s32(a3), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL));
  if ((a4 - HIBYTE(a3)) >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = a4 - HIBYTE(a3);
  }

  if ((a2 - HIBYTE(a1)) >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = a2 - HIBYTE(a1);
  }

  v10 = vmin_s32(v5, v4);
  if (a4 - a3 >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = a4 - a3;
  }

  if (a2 - a1 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = a2 - a1;
  }

  if (a4 == 255)
  {
    v16 = 0;
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v13 = (a4 ^ 0xFF) * v9;
    v9 = (v9 * a4 + 128 + ((v9 * a4 + 128) >> 8)) >> 8;
    v14 = vmul_s32(vdup_n_s32(a4 ^ 0xFFu), v10);
    v15 = vmla_s32(0x8000000080, v10, v6);
    v10 = vshr_n_s32(vsra_n_s32(v15, v15, 8uLL), 8uLL);
    v16 = (a4 ^ 0xFF) * v12;
    v12 = (v12 * a4 + 128 + ((v12 * a4 + 128) >> 8)) >> 8;
  }

  v17 = vmin_s32(v7, v6);
  if (a2 != 255)
  {
    v13 += v8 * (a2 ^ 0xFF);
    v8 = (v8 * a2 + 128 + ((v8 * a2 + 128) >> 8)) >> 8;
    v14 = vmla_s32(v14, v17, vdup_n_s32(a2 ^ 0xFFu));
    v18 = vmla_s32(0x8000000080, v17, v4);
    v17 = vshr_n_s32(vsra_n_s32(v18, v18, 8uLL), 8uLL);
    v16 += (a2 ^ 0xFF) * v11;
  }

  v55 = v9;
  v56 = v10;
  v19 = v10.i32[0];
  v20 = v9 >= v10.i32[0];
  if (v9 >= v10.i32[0])
  {
    v21 = v10.i32[0];
  }

  else
  {
    v21 = v9;
  }

  if (v9 > v10.i32[0])
  {
    v19 = v9;
  }

  if (v10.i32[1] <= v19)
  {
    v22 = 2;
  }

  else
  {
    v22 = v9 < v10.i32[0];
  }

  if (v10.i32[1] <= v19)
  {
    v23 = v9 < v10.i32[0];
  }

  else
  {
    v23 = 2;
  }

  if (v10.i32[1] >= v21)
  {
    v24 = v9 >= v10.i32[0];
  }

  else
  {
    v24 = 2;
  }

  if (v10.i32[1] < v21)
  {
    v25 = v9 < v10.i32[0];
  }

  else
  {
    v20 = v22;
    v25 = v23;
  }

  v26 = *(&v55 + v25);
  v27 = *(&v55 + v24);
  v28 = __OFSUB__(v26, v27);
  v29 = v26 - v27;
  if ((v29 < 0) ^ v28 | (v29 == 0))
  {
    *(&v55 + v25) = 0;
    *(&v55 + v20) = 0;
  }

  else
  {
    if (v8 >= v17.i32[0])
    {
      v30 = v17.i32[0];
    }

    else
    {
      v30 = v8;
    }

    if (v8 <= v17.i32[0])
    {
      v8 = v17.i32[0];
    }

    v31 = v17.i32[1];
    if (v17.i32[1] <= v8)
    {
      v32 = v8;
    }

    else
    {
      v32 = v17.i32[1];
    }

    if (v17.i32[1] >= v30)
    {
      v31 = v30;
      v8 = v32;
    }

    v33 = v8 - v31;
    *(&v55 + v25) = v33;
    *(&v55 + v20) = ((*(&v55 + v20) - *(&v55 + v24)) * ((v33 << 16) / v29) + 0x8000) >> 16;
  }

  *(&v55 + v24) = 0;
  v34 = vmul_s32(vsub_s32(v10, v56), 0x1C00000097);
  v35 = (a4 * a2 + 128 + ((a4 * a2 + 128) >> 8)) >> 8;
  v36 = v34.i32[0] + 77 * (v9 - v55) + v34.i32[1];
  v37 = (v36 + 128) >> 8;
  v38 = v55 + v37;
  v39 = vadd_s32(vdup_n_s32(v37), v56);
  if (v36 != v36)
  {
    v40 = v55 >= v56.i32[0] ? v39.i32[0] : v55 + ((v36 + 128) >> 8);
    v41 = v55 >= v56.i32[0] ? v55 + ((v36 + 128) >> 8) : v39.i32[0];
    v42 = v39.i32[1] <= v41 ? v41 : v39.i32[1];
    if (v39.i32[1] >= v40)
    {
      v41 = v42;
    }

    else
    {
      v40 = v39.i32[1];
    }

    if (v41 > v35 || v40 < 0)
    {
      v43 = (77 * v38 + 151 * v39.i32[0] + 28 * v39.i32[1] + 128) >> 8;
      if ((v37 & 0x80000000) != 0)
      {
        v44 = v43 - v40;
        if (v43 == v40)
        {
          goto LABEL_69;
        }

        v45 = (77 * v38 + 151 * v39.i32[0] + 28 * v39.i32[1] + 128) >> 8;
      }

      else
      {
        v44 = v41 - v43;
        if (v41 == v43)
        {
          goto LABEL_69;
        }

        v45 = v35 - v43;
      }

      v46 = (v45 << 16) / v44;
      v38 = v43 + ((v46 * (v38 - v43) + 0x8000) >> 16);
      v47 = vdup_n_s32(v43);
      v39 = vsra_n_s32(v47, vmla_s32(0x800000008000, vdup_n_s32(v46), vsub_s32(v39, v47)), 0x10uLL);
    }
  }

LABEL_69:
  if (v16 >= 65152)
  {
    v48 = 65152;
  }

  else
  {
    v48 = v16 + 128;
  }

  if (v13 >= 65152)
  {
    v49 = 65152;
  }

  else
  {
    v49 = v13 + 128;
  }

  v50 = a4 + a2 - v35;
  v51 = vdup_n_s32(0xFE80u);
  v52 = vbsl_s8(vcgt_s32(v51, v14), vadd_s32(v14, 0x8000000080), v51);
  v53 = vand_s8(vshl_u32(vsub_s32(vdup_n_s32(v50), vsra_n_u32(v39, vsra_n_u32(v52, v52, 8uLL), 8uLL)), 0x800000010), 0xFF0000FF0000);
  return v53.i32[0] | ((v50 - (v38 + ((v49 + (v49 >> 8)) >> 8))) << 24) | (v50 - (v12 + ((v48 + (v48 >> 8)) >> 8))) | v53.i32[1] | (v50 << 32);
}

unint64_t PDAluminosityPDA_5804(unsigned int a1, signed int a2, unsigned int a3, signed int a4)
{
  v4 = vdup_n_s32(a2);
  v5 = vsub_s32(v4, vand_s8(vshl_u32(vdup_n_s32(a1), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL));
  v6 = vdup_n_s32(a4);
  v7 = vsub_s32(v6, vand_s8(vshl_u32(vdup_n_s32(a3), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL));
  if ((a4 - HIBYTE(a3)) >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = a4 - HIBYTE(a3);
  }

  if ((a2 - HIBYTE(a1)) >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = a2 - HIBYTE(a1);
  }

  v10 = vmin_s32(v5, v4);
  if (a4 - a3 >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = a4 - a3;
  }

  if (a4 == 255)
  {
    v16 = 0;
    v13 = 0;
    v14 = 0;
  }

  else
  {
    if (a2 - a1 >= a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = a2 - a1;
    }

    v13 = (a4 ^ 0xFF) * v9;
    v9 = (v9 * a4 + 128 + ((v9 * a4 + 128) >> 8)) >> 8;
    v14 = vmul_s32(vdup_n_s32(a4 ^ 0xFFu), v10);
    v15 = vmla_s32(0x8000000080, v10, v6);
    v10 = vshr_n_s32(vsra_n_s32(v15, v15, 8uLL), 8uLL);
    v16 = (a4 ^ 0xFF) * v12;
  }

  v17 = vmin_s32(v7, v6);
  if (a2 != 255)
  {
    v13 += v8 * (a2 ^ 0xFF);
    v8 = (v8 * a2 + 128 + ((v8 * a2 + 128) >> 8)) >> 8;
    v14 = vmla_s32(v14, v17, vdup_n_s32(a2 ^ 0xFFu));
    v18 = vmla_s32(0x8000000080, v17, v4);
    v17 = vshr_n_s32(vsra_n_s32(v18, v18, 8uLL), 8uLL);
    v16 += v11 * (a2 ^ 0xFF);
    v11 = (v11 * a2 + 128 + ((v11 * a2 + 128) >> 8)) >> 8;
  }

  v19 = (a4 * a2 + 128 + ((a4 * a2 + 128) >> 8)) >> 8;
  v20 = vmul_s32(vsub_s32(v17, v10), 0x970000001CLL);
  v21 = v20.i32[0] + v20.i32[1] + 77 * (v8 - v9);
  v22 = (v21 + 128) >> 8;
  v23 = v9 + v22;
  v24 = vadd_s32(vdup_n_s32(v22), v10);
  if (v21 != v21)
  {
    v25 = v9 >= v10.i32[1] ? v24.i32[1] : v9 + ((v21 + 128) >> 8);
    v26 = v9 >= v10.i32[1] ? v9 + ((v21 + 128) >> 8) : v24.i32[1];
    v27 = v24.i32[0] <= v26 ? v26 : v24.i32[0];
    if (v24.i32[0] >= v25)
    {
      v26 = v27;
    }

    else
    {
      v25 = v24.i32[0];
    }

    if (v26 > v19 || v25 < 0)
    {
      v28 = (77 * v23 + 151 * v24.i32[1] + 28 * v24.i32[0] + 128) >> 8;
      if ((v22 & 0x80000000) != 0)
      {
        v29 = v28 - v25;
        if (v28 == v25)
        {
          goto LABEL_39;
        }

        v30 = (77 * v23 + 151 * v24.i32[1] + 28 * v24.i32[0] + 128) >> 8;
      }

      else
      {
        v29 = v26 - v28;
        if (v26 == v28)
        {
          goto LABEL_39;
        }

        v30 = v19 - v28;
      }

      v31 = (v30 << 16) / v29;
      v23 = v28 + ((v31 * (v23 - v28) + 0x8000) >> 16);
      v32 = vdup_n_s32(v28);
      v24 = vsra_n_s32(v32, vmla_s32(0x800000008000, vdup_n_s32(v31), vsub_s32(v24, v32)), 0x10uLL);
    }
  }

LABEL_39:
  if (v16 >= 65152)
  {
    v33 = 65152;
  }

  else
  {
    v33 = v16 + 128;
  }

  v34 = v33 + (v33 >> 8);
  v35 = vdup_n_s32(0xFE80u);
  v36 = vcgt_s32(v35, v14);
  v37 = vadd_s32(v14, 0x8000000080);
  if (v13 >= 65152)
  {
    v38 = 65152;
  }

  else
  {
    v38 = v13 + 128;
  }

  v39 = vbsl_s8(v36, v37, v35);
  v40 = vand_s8(vshl_u32(vsub_s32(vdup_n_s32(a4 + a2 - v19), vsra_n_u32(v24, vsra_n_u32(v39, v39, 8uLL), 8uLL)), 0x1000000008), 0xFF00000000FF00);
  return v40.i32[1] | ((a4 + a2 - v19 - (v23 + ((v38 + (v38 >> 8)) >> 8))) << 24) | v40.i32[0] | (a4 + a2 - v19 - (v11 + BYTE1(v34))) | ((a4 + a2 - v19) << 32);
}

unint64_t PDAtranspose_huePDA(unsigned int a1, signed int a2, unsigned __int32 a3, signed int a4)
{
  v59 = *MEMORY[0x1E69E9840];
  v4.i32[0] = a3;
  v5 = a2 - a1;
  v6 = vdup_n_s32(a2);
  v7 = vsub_s32(v6, vand_s8(vshl_u32(vdup_n_s32(a1), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL));
  v4.i32[1] = a3 >> 8;
  v8 = vdup_n_s32(a4);
  v9 = vsub_s32(v8, vand_s8(v4, 0xFF000000FFLL));
  if (v5 >= a2)
  {
    v5 = a2;
  }

  if (a4 - BYTE2(a3) >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a4 - BYTE2(a3);
  }

  v11 = vmin_s32(v7, v6);
  if ((a4 - HIBYTE(a3)) >= a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = a4 - HIBYTE(a3);
  }

  if ((a2 - HIBYTE(a1)) >= a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = a2 - HIBYTE(a1);
  }

  if (a4 == 255)
  {
    v17 = 0;
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = (a4 ^ 0xFF) * v5;
    v5 = (v5 * a4 + 128 + ((v5 * a4 + 128) >> 8)) >> 8;
    v15 = vmul_s32(vdup_n_s32(a4 ^ 0xFFu), v11);
    v16 = vmla_s32(0x8000000080, v11, v8);
    v11 = vshr_n_s32(vsra_n_s32(v16, v16, 8uLL), 8uLL);
    v17 = (a4 ^ 0xFF) * v13;
    v13 = (v13 * a4 + 128 + ((v13 * a4 + 128) >> 8)) >> 8;
  }

  v18 = vmin_s32(v9, v8);
  if (a2 != 255)
  {
    v19 = vmla_s32(0x8000000080, v18, v6);
    v20.i32[0] = vdup_lane_s32(v18, 1).u32[0];
    v14 += v18.i32[0] * (a2 ^ 0xFF);
    v18 = vshr_n_s32(vsra_n_s32(v19, v19, 8uLL), 8uLL);
    v20.i32[1] = v10;
    v15 = vmla_s32(v15, v20, vdup_n_s32(a2 ^ 0xFFu));
    v10 = (v10 * a2 + 128 + ((v10 * a2 + 128) >> 8)) >> 8;
    v17 += (a2 ^ 0xFF) * v12;
  }

  *v58 = v18;
  *&v58[8] = v10;
  v21 = v18.i32[0];
  v22 = v18.i32[0] < v18.i32[1];
  if (v18.i32[0] >= v18.i32[1])
  {
    v23 = v18.i32[1];
  }

  else
  {
    v23 = v18.i32[0];
  }

  if (v18.i32[0] <= v18.i32[1])
  {
    v21 = v18.i32[1];
  }

  if (v10 <= v21)
  {
    v24 = 2;
  }

  else
  {
    v24 = v18.i32[0] < v18.i32[1];
  }

  if (v10 <= v21)
  {
    v25 = v18.i32[0] < v18.i32[1];
  }

  else
  {
    v25 = 2;
  }

  v26 = v10 < v23;
  if (v10 >= v23)
  {
    v27 = v18.i32[0] >= v18.i32[1];
  }

  else
  {
    v27 = 2;
  }

  if (v26)
  {
    v28 = v18.i32[0] >= v18.i32[1];
  }

  else
  {
    v28 = v24;
  }

  if (!v26)
  {
    v22 = v25;
  }

  v29 = *&v58[4 * v22];
  v30 = *&v58[4 * v27];
  v31 = __OFSUB__(v29, v30);
  v32 = v29 - v30;
  if ((v32 < 0) ^ v31 | (v32 == 0))
  {
    *&v58[4 * v22] = 0;
    *&v58[4 * v28] = 0;
  }

  else
  {
    v33 = v11.i32[0];
    if (v5 >= v11.i32[0])
    {
      v34 = v11.i32[0];
    }

    else
    {
      v34 = v5;
    }

    if (v5 > v11.i32[0])
    {
      v33 = v5;
    }

    if (v11.i32[1] <= v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = v11.i32[1];
    }

    if (v11.i32[1] >= v34)
    {
      v33 = v35;
    }

    else
    {
      v34 = v11.i32[1];
    }

    v36 = v33 - v34;
    *&v58[4 * v22] = v36;
    *&v58[4 * v28] = ((*&v58[4 * v28] - *&v58[4 * v27]) * ((v36 << 16) / v32) + 0x8000) >> 16;
  }

  *&v58[4 * v27] = 0;
  v37 = vmul_s32(vsub_s32(v11, *&v58[4]), 0x1C00000097);
  v38 = (a4 * a2 + 128 + ((a4 * a2 + 128) >> 8)) >> 8;
  v39 = v37.i32[0] + 77 * (v5 - *v58) + v37.i32[1];
  v40 = (v39 + 128) >> 8;
  v41 = *v58 + v40;
  v42 = vadd_s32(vdup_n_s32(v40), *&v58[4]);
  if (v39 != v39)
  {
    v43 = *v58 >= *&v58[4] ? v42.i32[0] : *v58 + ((v39 + 128) >> 8);
    v44 = *v58 >= *&v58[4] ? *v58 + ((v39 + 128) >> 8) : v42.i32[0];
    v45 = v42.i32[1] <= v44 ? v44 : v42.i32[1];
    if (v42.i32[1] >= v43)
    {
      v44 = v45;
    }

    else
    {
      v43 = v42.i32[1];
    }

    if (v44 > v38 || v43 < 0)
    {
      v46 = (77 * v41 + 151 * v42.i32[0] + 28 * v42.i32[1] + 128) >> 8;
      if ((v40 & 0x80000000) != 0)
      {
        v47 = v46 - v43;
        if (v46 == v43)
        {
          goto LABEL_71;
        }

        v48 = (77 * v41 + 151 * v42.i32[0] + 28 * v42.i32[1] + 128) >> 8;
      }

      else
      {
        v47 = v44 - v46;
        if (v44 == v46)
        {
          goto LABEL_71;
        }

        v48 = v38 - v46;
      }

      v49 = (v48 << 16) / v47;
      v41 = v46 + ((v49 * (v41 - v46) + 0x8000) >> 16);
      v50 = vdup_n_s32(v46);
      v42 = vsra_n_s32(v50, vmla_s32(0x800000008000, vdup_n_s32(v49), vsub_s32(v42, v50)), 0x10uLL);
    }
  }

LABEL_71:
  if (v17 >= 65152)
  {
    v51 = 65152;
  }

  else
  {
    v51 = v17 + 128;
  }

  if (v14 >= 65152)
  {
    v52 = 65152;
  }

  else
  {
    v52 = v14 + 128;
  }

  v53 = a4 + a2 - v38;
  v54 = vdup_n_s32(0xFE80u);
  v55 = vbsl_s8(vcgt_s32(v54, v15), vadd_s32(v15, 0x8000000080), v54);
  v56 = vand_s8(vshl_u32(vsub_s32(vdup_n_s32(v53), vsra_n_u32(v42, vsra_n_u32(v55, v55, 8uLL), 8uLL)), 0x1000000008), 0xFF00000000FF00);
  return v56.i32[1] | ((v53 - (v13 + ((v51 + (v51 >> 8)) >> 8))) << 24) | v56.i32[0] | (v53 - (v41 + ((v52 + (v52 >> 8)) >> 8))) | (v53 << 32);
}

unint64_t PDAtranspose_saturationPDA(unsigned int a1, signed int a2, unsigned int a3, signed int a4)
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = vdup_n_s32(a2);
  v5 = vsub_s32(v4, vand_s8(vshl_u32(vdup_n_s32(a1), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL));
  v6 = vdup_n_s32(a4);
  v7 = vsub_s32(v6, vand_s8(vshl_u32(vdup_n_s32(a3), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL));
  if (a4 - a3 >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = a4 - a3;
  }

  if (a2 - a1 >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = a2 - a1;
  }

  v10 = vmin_s32(v5, v4);
  if ((a4 - HIBYTE(a3)) >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = a4 - HIBYTE(a3);
  }

  if ((a2 - HIBYTE(a1)) >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = a2 - HIBYTE(a1);
  }

  if (a4 == 255)
  {
    v16 = 0;
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v13 = (a4 ^ 0xFF) * v9;
    v9 = (v9 * a4 + 128 + ((v9 * a4 + 128) >> 8)) >> 8;
    v14 = vmul_s32(vdup_n_s32(a4 ^ 0xFFu), v10);
    v15 = vmla_s32(0x8000000080, v10, v6);
    v10 = vshr_n_s32(vsra_n_s32(v15, v15, 8uLL), 8uLL);
    v16 = (a4 ^ 0xFF) * v12;
    v12 = (v12 * a4 + 128 + ((v12 * a4 + 128) >> 8)) >> 8;
  }

  v17 = vmin_s32(v7, v6);
  if (a2 != 255)
  {
    v13 += v8 * (a2 ^ 0xFF);
    v8 = (v8 * a2 + 128 + ((v8 * a2 + 128) >> 8)) >> 8;
    v14 = vmla_s32(v14, v17, vdup_n_s32(a2 ^ 0xFFu));
    v18 = vmla_s32(0x8000000080, v17, v4);
    v17 = vshr_n_s32(vsra_n_s32(v18, v18, 8uLL), 8uLL);
    v16 += (a2 ^ 0xFF) * v11;
  }

  v55 = v9;
  v56 = v10;
  v19 = v10.i32[0];
  v20 = v9 >= v10.i32[0];
  if (v9 >= v10.i32[0])
  {
    v21 = v10.i32[0];
  }

  else
  {
    v21 = v9;
  }

  if (v9 > v10.i32[0])
  {
    v19 = v9;
  }

  if (v10.i32[1] <= v19)
  {
    v22 = 2;
  }

  else
  {
    v22 = v9 < v10.i32[0];
  }

  if (v10.i32[1] <= v19)
  {
    v23 = v9 < v10.i32[0];
  }

  else
  {
    v23 = 2;
  }

  if (v10.i32[1] >= v21)
  {
    v24 = v9 >= v10.i32[0];
  }

  else
  {
    v24 = 2;
  }

  if (v10.i32[1] < v21)
  {
    v25 = v9 < v10.i32[0];
  }

  else
  {
    v20 = v22;
    v25 = v23;
  }

  v26 = *(&v55 + v25);
  v27 = *(&v55 + v24);
  v28 = __OFSUB__(v26, v27);
  v29 = v26 - v27;
  if ((v29 < 0) ^ v28 | (v29 == 0))
  {
    *(&v55 + v25) = 0;
    *(&v55 + v20) = 0;
  }

  else
  {
    if (v8 >= v17.i32[0])
    {
      v30 = v17.i32[0];
    }

    else
    {
      v30 = v8;
    }

    if (v8 <= v17.i32[0])
    {
      v8 = v17.i32[0];
    }

    v31 = v17.i32[1];
    if (v17.i32[1] <= v8)
    {
      v32 = v8;
    }

    else
    {
      v32 = v17.i32[1];
    }

    if (v17.i32[1] >= v30)
    {
      v31 = v30;
      v8 = v32;
    }

    v33 = v8 - v31;
    *(&v55 + v25) = v33;
    *(&v55 + v20) = ((*(&v55 + v20) - *(&v55 + v24)) * ((v33 << 16) / v29) + 0x8000) >> 16;
  }

  *(&v55 + v24) = 0;
  v34 = vmul_s32(vsub_s32(v10, v56), 0x1C00000097);
  v35 = (a4 * a2 + 128 + ((a4 * a2 + 128) >> 8)) >> 8;
  v36 = v34.i32[0] + 77 * (v9 - v55) + v34.i32[1];
  v37 = (v36 + 128) >> 8;
  v38 = v55 + v37;
  v39 = vadd_s32(vdup_n_s32(v37), v56);
  if (v36 != v36)
  {
    v40 = v55 >= v56.i32[0] ? v39.i32[0] : v55 + ((v36 + 128) >> 8);
    v41 = v55 >= v56.i32[0] ? v55 + ((v36 + 128) >> 8) : v39.i32[0];
    v42 = v39.i32[1] <= v41 ? v41 : v39.i32[1];
    if (v39.i32[1] >= v40)
    {
      v41 = v42;
    }

    else
    {
      v40 = v39.i32[1];
    }

    if (v41 > v35 || v40 < 0)
    {
      v43 = (77 * v38 + 151 * v39.i32[0] + 28 * v39.i32[1] + 128) >> 8;
      if ((v37 & 0x80000000) != 0)
      {
        v44 = v43 - v40;
        if (v43 == v40)
        {
          goto LABEL_69;
        }

        v45 = (77 * v38 + 151 * v39.i32[0] + 28 * v39.i32[1] + 128) >> 8;
      }

      else
      {
        v44 = v41 - v43;
        if (v41 == v43)
        {
          goto LABEL_69;
        }

        v45 = v35 - v43;
      }

      v46 = (v45 << 16) / v44;
      v38 = v43 + ((v46 * (v38 - v43) + 0x8000) >> 16);
      v47 = vdup_n_s32(v43);
      v39 = vsra_n_s32(v47, vmla_s32(0x800000008000, vdup_n_s32(v46), vsub_s32(v39, v47)), 0x10uLL);
    }
  }

LABEL_69:
  if (v16 >= 65152)
  {
    v48 = 65152;
  }

  else
  {
    v48 = v16 + 128;
  }

  if (v13 >= 65152)
  {
    v49 = 65152;
  }

  else
  {
    v49 = v13 + 128;
  }

  v50 = a4 + a2 - v35;
  v51 = vdup_n_s32(0xFE80u);
  v52 = vbsl_s8(vcgt_s32(v51, v14), vadd_s32(v14, 0x8000000080), v51);
  v53 = vand_s8(vshl_u32(vsub_s32(vdup_n_s32(v50), vsra_n_u32(v39, vsra_n_u32(v52, v52, 8uLL), 8uLL)), 0x1000000008), 0xFF00000000FF00);
  return v53.i32[1] | ((v50 - (v12 + ((v48 + (v48 >> 8)) >> 8))) << 24) | v53.i32[0] | (v50 - (v38 + ((v49 + (v49 >> 8)) >> 8))) | (v50 << 32);
}

unint64_t PDAtranspose_luminosityPDA(unsigned int a1, signed int a2, unsigned __int32 a3, signed int a4)
{
  v4 = vdup_n_s32(a2);
  v5.i32[0] = a3 >> 8;
  v5.i32[1] = a3;
  v6 = vsub_s32(v4, vand_s8(vshl_u32(vdup_n_s32(a1), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL));
  v7 = vdup_n_s32(a4);
  v8 = vsub_s32(v7, vand_s8(v5, 0xFF000000FFLL));
  if (a2 - a1 >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = a2 - a1;
  }

  v10 = COERCE_DOUBLE(vmin_s32(v8, v7));
  if (a4 - BYTE2(a3) >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = a4 - BYTE2(a3);
  }

  v12 = vmin_s32(v6, v4);
  if ((a4 - HIBYTE(a3)) >= a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = a4 - HIBYTE(a3);
  }

  if (a4 == 255)
  {
    v18 = 0;
    v15 = 0;
    v16 = 0.0;
  }

  else
  {
    if ((a2 - HIBYTE(a1)) >= a2)
    {
      v14 = a2;
    }

    else
    {
      v14 = a2 - HIBYTE(a1);
    }

    v15 = (a4 ^ 0xFF) * v9;
    v9 = (v9 * a4 + 128 + ((v9 * a4 + 128) >> 8)) >> 8;
    v16 = COERCE_DOUBLE(vmul_s32(vdup_n_s32(a4 ^ 0xFFu), v12));
    v17 = vmla_s32(0x8000000080, v12, v7);
    v12 = vshr_n_s32(vsra_n_s32(v17, v17, 8uLL), 8uLL);
    v18 = (a4 ^ 0xFF) * v14;
  }

  v19 = vmla_s32(0x8000000080, *&v10, v4);
  v20 = vdup_lane_s32(*&v10, 0);
  v20.i32[0] = v11;
  v21 = COERCE_DOUBLE(vshr_n_s32(vsra_n_s32(v19, v19, 8uLL), 8uLL));
  v22 = COERCE_DOUBLE(vmla_s32(*&v16, v20, vdup_n_s32(a2 ^ 0xFFu)));
  if (a2 == 255)
  {
    v23 = v11;
  }

  else
  {
    v18 += v13 * (a2 ^ 0xFF);
    v15 += HIDWORD(v10) * (a2 ^ 0xFF);
    v13 = (v13 * a2 + 128 + ((v13 * a2 + 128) >> 8)) >> 8;
    v23 = (v11 * a2 + 128 + ((v11 * a2 + 128) >> 8)) >> 8;
  }

  if (a2 == 255)
  {
    *&v24 = v10;
  }

  else
  {
    *&v24 = v21;
  }

  if (a2 == 255)
  {
    *&v25 = v16;
  }

  else
  {
    *&v25 = v22;
  }

  v26 = (a4 * a2 + 128 + ((a4 * a2 + 128) >> 8)) >> 8;
  v27.i32[0] = vdup_lane_s32(v12, 1).u32[0];
  v27.i32[1] = v9;
  v28 = vmul_s32(vsub_s32(v24, v27), 0x4D00000097);
  v29 = v28.i32[0] + 28 * (v23 - v12.i32[0]) + v28.i32[1];
  v30 = (v29 + 128) >> 8;
  v31 = v9 + v30;
  v32 = vadd_s32(vdup_n_s32(v30), v12);
  if (v29 != v29)
  {
    v33 = v9 >= v12.i32[1] ? v32.i32[1] : v9 + ((v29 + 128) >> 8);
    v34 = v9 >= v12.i32[1] ? v9 + ((v29 + 128) >> 8) : v32.i32[1];
    v35 = v32.i32[0] <= v34 ? v34 : v32.i32[0];
    if (v32.i32[0] >= v33)
    {
      v34 = v35;
    }

    else
    {
      v33 = v32.i32[0];
    }

    if (v34 > v26 || v33 < 0)
    {
      v36 = (77 * v31 + 151 * v32.i32[1] + 28 * v32.i32[0] + 128) >> 8;
      if ((v30 & 0x80000000) != 0)
      {
        v37 = v36 - v33;
        if (v36 == v33)
        {
          goto LABEL_46;
        }

        v38 = (77 * v31 + 151 * v32.i32[1] + 28 * v32.i32[0] + 128) >> 8;
      }

      else
      {
        v37 = v34 - v36;
        if (v34 == v36)
        {
          goto LABEL_46;
        }

        v38 = v26 - v36;
      }

      v39 = (v38 << 16) / v37;
      v31 = v36 + ((v39 * (v31 - v36) + 0x8000) >> 16);
      v40 = vdup_n_s32(v36);
      v32 = vsra_n_s32(v40, vmla_s32(0x800000008000, vdup_n_s32(v39), vsub_s32(v32, v40)), 0x10uLL);
    }
  }

LABEL_46:
  if (v18 >= 65152)
  {
    v41 = 65152;
  }

  else
  {
    v41 = v18 + 128;
  }

  v42 = v41 + (v41 >> 8);
  v43 = vdup_n_s32(0xFE80u);
  v44 = vcgt_s32(v43, v25);
  v45 = vadd_s32(v25, 0x8000000080);
  if (v15 >= 65152)
  {
    v46 = 65152;
  }

  else
  {
    v46 = v15 + 128;
  }

  v47 = vbsl_s8(v44, v45, v43);
  v48 = vand_s8(vshl_u32(vsub_s32(vdup_n_s32(a4 + a2 - v26), vsra_n_u32(v32, vsra_n_u32(v47, v47, 8uLL), 8uLL)), 0x800000010), 0xFF0000FF0000);
  return v48.i32[0] | ((a4 + a2 - v26 - (v13 + (v42 >> 8))) << 24) | (a4 + a2 - v26 - (v31 + ((v46 + (v46 >> 8)) >> 8))) | v48.i32[1] | ((a4 + a2 - v26) << 32);
}

void cmyk32_shade_axial_CMYK(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(a1 + 280);
  v6 = *(a1 + 296) + ((*(a1 + 288) * (*(*(a1 + 272) + 4) * a3)) + (v5 * (*(*(a1 + 272) + 4) * a2)));
  v7 = a1 + 368;
  v8 = *(a1 + 368);
  v9 = (a3 >> 4) & 0xF0;
  v10 = v8 + v9;
  if (v8)
  {
    v11 = v8 + v9;
  }

  else
  {
    v11 = a1 + 368;
  }

  if (v8)
  {
    v12 = 15;
  }

  else
  {
    v12 = 0;
  }

  v14 = *(a1 + 336);
  v15 = *(a1 + 344);
  v16 = *(a1 + 304);
  v17 = *(a1 + 308);
  v18 = *(a1 + 320);
  v19 = *(a1 + 324);
  v22 = a1 + 144;
  v20 = *(a1 + 144);
  v21 = *(v22 + 8);
  v23 = *(a1 + 376);
  v24 = *(a1 + 360);
  if (v5 != 0.0)
  {
    if (v8)
    {
      v30 = (a2 >> 8) & 0xF;
    }

    else
    {
      LOBYTE(v30) = 0;
    }

    while (1)
    {
      v31 = v18;
      if (v6 >= v16)
      {
        v31 = v19;
        if (v6 <= v17)
        {
          v31 = (v15 * (v6 - v14));
        }
      }

      if ((v31 & 0x80000000) == 0)
      {
        break;
      }

      v32 = v23;
      if (v23)
      {
        goto LABEL_38;
      }

LABEL_39:
      LOBYTE(v30) = (v30 + 1) & v12;
      v6 = v5 + v6;
      v21 = (v21 + 8);
      *v20 = v32;
      v20 = (v20 + 1);
      if (!--a4)
      {
        return;
      }
    }

    v32 = (v24 + 2 * (5 * v31));
LABEL_38:
    v33 = *(v11 + v30);
    v21->i64[0] = ((v33 + *v32) << 16) & 0xFF000000 | ((((v33 + v32[4]) & 0xFF00) >> 8) << 32) | ((v33 + v32[1]) << 8) & 0xFF0000 | ((v33 + v32[2]) & 0xFF00) | ((v33 + v32[3]) >> 8);
    LOBYTE(v32) = -1;
    goto LABEL_39;
  }

  if (v8)
  {
    v25 = v10;
  }

  else
  {
    v25 = v7;
  }

  if (v8)
  {
    LODWORD(v26) = ((a2 >> 8) + 1) & 0xF;
  }

  else
  {
    LODWORD(v26) = 0;
  }

  if (v8)
  {
    v27 = (a2 >> 8) & 0xF;
  }

  else
  {
    v27 = 0;
  }

  if (v8)
  {
    v28 = 15;
  }

  else
  {
    v28 = 0;
  }

  if (v6 >= v16)
  {
    v18 = v19;
    if (v6 <= v17)
    {
      v18 = (v15 * (v6 - v14));
    }
  }

  if ((v18 & 0x80000000) == 0 || v23)
  {
    v34 = (v24 + 2 * (5 * v18));
    if (v18 < 0)
    {
      v35 = v23;
    }

    else
    {
      v35 = v34;
    }

    v36 = *v35;
    v37 = v35[1];
    v38 = v35[2];
    v39 = v35[3];
    v40 = v35[4];
    if (v8)
    {
      v41 = vdup_n_s32(v36);
      v42 = vdup_n_s32(v37);
      v43 = a4 + 4;
      v44 = vdup_n_s32(v38);
      v45 = vdup_n_s32(v39);
      v46 = vdup_n_s32(v40);
      do
      {
        v4.i8[0] = *(v25 + v27);
        v4.i8[4] = *(v25 + v26);
        v47 = vand_s8(*v4.i8, 0xFF000000FFLL);
        v48 = vadd_s32(v42, v47);
        v49 = vadd_s32(v44, v47);
        v50 = vadd_s32(v45, v47);
        v51 = vshl_n_s32(vadd_s32(v41, v47), 0x10uLL);
        v52.i64[0] = v51.i32[0] & 0xFF00FFFF;
        v52.i64[1] = v51.i32[1] & 0xFF00FFFF;
        v53 = vorrq_s8(vshll_n_u32(vand_s8(vadd_s32(v46, v47), 0xFF000000FF00), 0x18uLL), v52);
        v54 = vand_s8(vshl_n_s32(v48, 8uLL), 0xFF000000FF0000);
        v52.i64[0] = v54.u32[0];
        v52.i64[1] = v54.u32[1];
        v55 = v52;
        v56 = vand_s8(v49, 0xFF000000FF00);
        v52.i64[0] = v56.u32[0];
        v52.i64[1] = v56.u32[1];
        v57 = vorrq_s8(v53, vorrq_s8(v55, v52));
        *v55.i8 = vshr_n_u32(v50, 8uLL);
        v52.i64[0] = v55.i32[0] & 0xFFFFFEFF;
        v52.i64[1] = v55.i32[1] & 0xFFFFFEFF;
        v58 = vorrq_s8(v57, v52);
        *v21 = v58;
        v26 = (v26 + 1) & v28;
        v58.i8[0] = *(v25 + ((v27 + 1) & v28));
        v58.i8[4] = *(v25 + v26);
        *v58.i8 = vand_s8(*v58.i8, 0xFF000000FFLL);
        v59 = vadd_s32(v42, *v58.i8);
        v60 = vadd_s32(v44, *v58.i8);
        v61 = vadd_s32(v45, *v58.i8);
        *v55.i8 = vshl_n_s32(vadd_s32(v41, *v58.i8), 0x10uLL);
        v52.i64[0] = v55.i32[0] & 0xFF00FFFF;
        v52.i64[1] = v55.i32[1] & 0xFF00FFFF;
        v62 = vorrq_s8(vshll_n_u32(vand_s8(vadd_s32(v46, *v58.i8), 0xFF000000FF00), 0x18uLL), v52);
        *v55.i8 = vand_s8(vshl_n_s32(v59, 8uLL), 0xFF000000FF0000);
        v52.i64[0] = v55.u32[0];
        v52.i64[1] = v55.u32[1];
        v63 = v52;
        v64 = vand_s8(v60, 0xFF000000FF00);
        v52.i64[0] = v64.u32[0];
        v52.i64[1] = v64.u32[1];
        v65 = vorrq_s8(v62, vorrq_s8(v63, v52));
        *v63.i8 = vshr_n_u32(v61, 8uLL);
        v52.i64[0] = v63.i32[0] & 0xFFFFFEFF;
        v52.i64[1] = v63.i32[1] & 0xFFFFFEFF;
        v4 = vorrq_s8(v65, v52);
        *v20++ = -1;
        v21[1] = v4;
        v21 += 2;
        v43 -= 4;
        v27 = (v27 + 1) & v28;
      }

      while (v43 > 4);
    }

    else
    {
      v66 = (v36 << 16) & 0xFF000000 | (((v40 & 0xFF00) >> 8) << 32) | (BYTE1(v37) << 16) | v38 & 0xFF00 | (v39 >> 8);
      v67 = a4 + 4;
      do
      {
        v21->i64[0] = v66;
        v21->i64[1] = v66;
        v21[1].i64[0] = v66;
        v21[1].i64[1] = v66;
        v21 += 2;
        v67 -= 4;
        *v20++ = -1;
      }

      while (v67 > 4);
    }
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

    bzero(v20, ((a4 - v29 + 3) & 0xFFFFFFFC) + 4);
  }
}

unint64_t cmyk32_shade_custom_CMYK(unint64_t result, uint64_t a2, uint64_t a3, int a4, double a5, int32x4_t a6)
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
  v26 = 5 * *(result + 48);
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
      v31 = (v25 + 2 * v26 * (v23 * (*&a6.i32[1] - v21)) + 10 * (v22 * (*a6.i32 - v20)));
LABEL_13:
      v32 = *(v10 + v29);
      result = (v32 + v31[2]) & 0xFF00;
      *v27 = ((v32 + *v31) << 16) & 0xFF000000 | ((((v32 + v31[4]) & 0xFF00) >> 8) << 32) | ((v32 + v31[1]) << 8) & 0xFF0000 | result | ((v32 + v31[3]) >> 8);
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

uint64_t cmyk32_shade_conic_CMYK(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
  v41 = *(a1 + 336);
  v42 = *(a1 + 304);
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

  v40 = *(a1 + 308) - *(a1 + 304);
  do
  {
    v20 = v15 * ((v42 + (((atan2f(v13, v8) * 0.15915) + 0.5) * v40)) - v41);
    v21 = vcvtms_s32_f32(v20);
    v22 = vcvtms_s32_f32(v15 + v20);
    v23 = ceilf(v20);
    v24 = ((v20 - floorf(v20)) * 255.0) + 0.5;
    if (v20 < 0.0)
    {
      v21 = v22;
    }

    v25 = v20 <= v15;
    v26 = ceilf(v20 - v15);
    if (v25)
    {
      v26 = v23;
    }

    v27 = (v16 + 2 * (5 * v21));
    v28 = *v27;
    v29 = v27[1];
    v30 = v27[2];
    v31 = v27[3];
    v32 = (v16 + 10 * v26);
    v33 = 255 - v24;
    v34 = v32[1];
    result = v32[2];
    v36 = v32[3];
    LODWORD(v27) = v32[4] * v24 + v33 * v27[4];
    LODWORD(v32) = v24 * *v32 + v33 * v28;
    v37 = v24 * v34 + v33 * v29;
    v38 = v24 * result + v33 * v30;
    v39 = *(v10 + v19);
    *v17++ = ((v39 + (v32 >> 8)) << 16) & 0xFF000000 | ((((v39 + (v27 >> 8)) & 0xFF00) >> 8) << 32) | (v37 + (v39 << 8)) & 0xFF0000 | ((v39 + (v38 >> 8)) & 0xFF00) | ((v39 + ((v36 * v24 + v33 * v31) >> 8)) >> 8);
    v19 = (v19 + 1) & v11;
    v8 = v4 + v8;
    v13 = v12 + v13;
    *v18++ = -1;
    --a4;
  }

  while (a4);
  return result;
}

void cmyk32_shade_radial_CMYK(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v6 = *(a1 + 280);
  v7 = *(a1 + 284);
  v8 = *(*(a1 + 272) + 4);
  v9 = v8 * a2;
  v10 = v8 * a3;
  v11 = *(a1 + 296) + ((*(a1 + 288) * v10) + (v6 * v9));
  v12 = *(a1 + 300) + ((v10 * *(a1 + 292)) + (v7 * v9));
  v14 = *(a1 + 400);
  v15 = *(a1 + 336);
  v16 = *(a1 + 344);
  v17 = *(a1 + 304);
  v18 = *(a1 + 308);
  v19 = *(a1 + 324);
  v20 = *(v14 + 8);
  v21 = *(v14 + 16);
  v5.i32[0] = *(v14 + 20);
  v22 = *(v14 + 28);
  v25 = a1 + 144;
  v23 = *(a1 + 144);
  v24 = *(v25 + 8);
  v26 = *(a1 + 376);
  v27 = *(a1 + 360);
  v28 = (a2 >> 8) & 0xF;
  if (v20 != 0.0 || v22 != 0.0 || v7 != 0.0)
  {
    v39 = *(a1 + 320);
    v40 = *(v14 + 12);
    v41 = *(v14 + 24);
    v42 = *(v14 + 32);
    v43 = a1 + 368;
    v44 = *(a1 + 368);
    v45 = v44 + ((a3 >> 4) & 0xF0);
    v32 = v44 == 0;
    v46 = 15;
    if (v32)
    {
      v46 = 0;
      v28 = 0;
    }

    else
    {
      v43 = v45;
    }

    v47 = -v41;
    v48 = v18 - v17;
    while (1)
    {
      v49 = v47 + ((v11 + v11) * v20);
      v50 = ((v12 * v12) + (v11 * v11)) - v22;
      if (*v5.i32 == 0.0)
      {
        v57 = v50 / v49;
      }

      else
      {
        v51 = ((*v5.i32 * -4.0) * v50) + (v49 * v49);
        if (v51 < 0.0)
        {
          goto LABEL_53;
        }

        v52 = sqrtf(v51);
        v53 = v42 * (v49 - v52);
        v54 = v49 + v52;
        v55 = v42 * v54;
        v56 = (v42 * v54) <= v53;
        if ((v42 * v54) <= v53)
        {
          v57 = v42 * v54;
        }

        else
        {
          v57 = v53;
        }

        if (v56)
        {
          v55 = v53;
        }

        if (v55 < 0.0)
        {
          v58 = v55 < v40;
LABEL_39:
          v59 = v39;
          if (v58)
          {
            goto LABEL_53;
          }

LABEL_40:
          if ((v59 & 0x80000000) == 0)
          {
            goto LABEL_52;
          }

          goto LABEL_53;
        }

        if (v55 <= 1.0)
        {
          v60 = v17 + (v55 * v48);
          goto LABEL_51;
        }

        if ((v19 & 0x80000000) == 0)
        {
          v59 = v19;
          if (v55 <= v21)
          {
LABEL_52:
            v61 = (v27 + 2 * (5 * v59));
LABEL_54:
            v62 = *(v43 + v28);
            v24->i64[0] = ((v62 + *v61) << 16) & 0xFF000000 | ((((v62 + v61[4]) & 0xFF00) >> 8) << 32) | ((v62 + v61[1]) << 8) & 0xFF0000 | ((v62 + v61[2]) & 0xFF00) | ((v62 + v61[3]) >> 8);
            LOBYTE(v61) = -1;
            goto LABEL_55;
          }
        }
      }

      if (v57 < 0.0)
      {
        v58 = v57 < v40;
        goto LABEL_39;
      }

      if (v57 > 1.0)
      {
        v59 = v19;
        if (v57 > v21)
        {
          goto LABEL_53;
        }

        goto LABEL_40;
      }

      v60 = v17 + (v57 * v48);
LABEL_51:
      v59 = (v16 * (v60 - v15));
      if ((v59 & 0x80000000) == 0)
      {
        goto LABEL_52;
      }

LABEL_53:
      v61 = v26;
      if (v26)
      {
        goto LABEL_54;
      }

LABEL_55:
      v28 = (v28 + 1) & v46;
      v11 = v6 + v11;
      v12 = v7 + v12;
      v24 = (v24 + 8);
      *v23++ = v61;
      if (!--a4)
      {
        return;
      }
    }
  }

  v29 = a1 + 368;
  v30 = *(a1 + 368);
  LODWORD(v31) = (BYTE1(a2) + 1) & 0xF;
  v32 = v30 == 0;
  if (v30)
  {
    v33 = v30 + ((a3 >> 4) & 0xF0);
  }

  else
  {
    v33 = v29;
  }

  if (v32)
  {
    LODWORD(v31) = 0;
    v34 = 0;
  }

  else
  {
    v34 = (a2 >> 8) & 0xF;
  }

  if (v32)
  {
    v35 = 0;
  }

  else
  {
    v35 = 15;
  }

  v36 = v12 * v12;
  v37 = -*v5.i32;
  if (v36 <= -*v5.i32)
  {
    v63 = fabsf(*(v14 + 32));
    v64 = *v5.i32 * -4.0;
    v65 = v18 - v17;
    v66 = (v27 + 2 * (5 * v19));
    v67 = a4 + 2;
    while (1)
    {
      v68 = v36 + (v11 * v11);
      v69 = v6 + v11;
      v70 = v36 + (v69 * v69);
      if (v68 <= v37 || v70 <= v37)
      {
        v72 = sqrtf(v64 * v70);
        v73 = v63 * sqrtf(v64 * v68);
        v74 = v63 * v72;
        v75 = (v16 * ((v17 + (v73 * v65)) - v15));
        v76 = (v16 * ((v17 + ((v63 * v72) * v65)) - v15));
        if (v73 > 1.0 || v74 > 1.0)
        {
          if (v73 <= 1.0)
          {
            if (v75 < 0)
            {
              goto LABEL_81;
            }

            v78 = (5 * v75);
          }

          else if (v73 > v21 || (v78 = (5 * v19), v19 < 0))
          {
LABEL_81:
            v92 = v26;
            if (v26)
            {
LABEL_82:
              v101 = *(v33 + v34);
              v24->i64[0] = ((v101 + *v92) << 16) & 0xFF000000 | ((((v101 + *(v92 + 8)) & 0xFF00) >> 8) << 32) | ((v101 + *(v92 + 2)) << 8) & 0xFF0000 | ((v101 + *(v92 + 4)) & 0xFF00) | ((v101 + *(v92 + 6)) >> 8);
              LOBYTE(v92) = -1;
            }

            if (v74 <= 1.0)
            {
              if (v76 < 0)
              {
                goto LABEL_90;
              }

              v102 = (5 * v76);
            }

            else if (v74 > v21 || (v102 = (5 * v19), v19 < 0))
            {
LABEL_90:
              if (!v26)
              {
                v108 = 0;
                goto LABEL_94;
              }

              v104 = *v26;
              v105 = v26[1].i16[0];
              v106 = v31;
              goto LABEL_92;
            }

            v103 = (v27 + 2 * v102);
            v104 = *v103;
            v105 = v103[1].i16[0];
            v106 = v31;
LABEL_92:
            v107 = *(v33 + v106);
            v90 = vaddw_u16(vdupq_n_s32(v107), v104);
            v91 = v107 + v105;
            goto LABEL_93;
          }

          v92 = v27 + 2 * v78;
          goto LABEL_82;
        }

        v82 = (v27 + 10 * v75);
        v83 = (v27 + 10 * v76);
        v84 = *(v33 + v34);
        v85 = v84 + *v82;
        v86 = v84 + v82[1];
        v87 = v84 + v82[2];
        v88 = v84 + v82[3];
        LOWORD(v82) = v84 + v82[4];
        v89 = *(v33 + v31);
        v90 = vaddw_u16(vdupq_n_s32(v89), *v83);
        v91 = v89 + v83[1].i16[0];
        v92 = (v85 << 16) & 0xFF000000 | (((v82 & 0xFF00) >> 8) << 32) | (v86 << 8) & 0xFF0000 | (v87 & 0xFF00);
        v93 = HIBYTE(v88);
      }

      else
      {
        if (v19 < 0)
        {
          if (!v26)
          {
            v108 = 0;
            LOBYTE(v92) = 0;
            goto LABEL_94;
          }

          v79 = *v26;
          v80 = vmovl_u16(*v26);
          v81 = v26[1].i16[0];
        }

        else
        {
          v79 = *v66;
          v80 = vmovl_u16(*v66);
          v81 = v66[1].i16[0];
        }

        v94 = *(v33 + v34);
        v95 = v80.i32[0] + v94;
        v96 = v80.i32[1] + v94;
        v97 = v80.i16[4] + v94;
        v98 = v80.i16[6] + v94;
        v99 = v94 + v81;
        v100 = *(v33 + v31);
        v90 = vaddw_u16(vdupq_n_s32(v100), v79);
        v91 = v100 + v81;
        v92 = (v95 << 16) & 0xFF000000 | (((v99 & 0xFF00) >> 8) << 32) | v97 & 0xFF00 | (v96 << 8) & 0xFF0000;
        v93 = HIBYTE(v98);
      }

      v24->i64[0] = v92 | v93;
      LOBYTE(v92) = -1;
LABEL_93:
      v24->i64[1] = (v90.i32[0] << 16) & 0xFF000000 | (((v91 & 0xFF00) >> 8) << 32) | v90.i16[4] & 0xFF00 | (v90.i32[1] << 8) & 0xFF0000 | v90.u8[13];
      v108 = -1;
LABEL_94:
      v11 = v6 + v69;
      LOBYTE(v34) = (v34 + 1) & v35;
      LOBYTE(v31) = (v31 + 1) & v35;
      ++v24;
      *v23 = v92;
      v23[1] = v108;
      v23 += 2;
      v67 -= 2;
      if (v67 <= 2)
      {
        return;
      }
    }
  }

  if (v26 || (v19 & 0x80000000) == 0)
  {
    v109 = (v27 + 10 * v19);
    if (v19 >= 0)
    {
      v110 = v109;
    }

    else
    {
      v110 = v26;
    }

    v111 = vdup_n_s32(v110[4]);
    v112 = vdup_n_s32(*v110);
    v113 = vdup_n_s32(v110[1]);
    v114 = vdup_n_s32(v110[2]);
    v115 = vdup_n_s32(v110[3]);
    v116 = a4 + 4;
    do
    {
      v5.i8[0] = *(v33 + v34);
      v5.i8[4] = *(v33 + v31);
      v117 = vand_s8(*v5.i8, 0xFF000000FFLL);
      v118 = vadd_s32(v113, v117);
      v119 = vadd_s32(v114, v117);
      v120 = vadd_s32(v115, v117);
      v121 = vshl_n_s32(vadd_s32(v112, v117), 0x10uLL);
      v122.i64[0] = v121.i32[0] & 0xFF00FFFF;
      v122.i64[1] = v121.i32[1] & 0xFF00FFFF;
      v123 = vorrq_s8(vshll_n_u32(vand_s8(vadd_s32(v111, v117), 0xFF000000FF00), 0x18uLL), v122);
      v124 = vand_s8(vshl_n_s32(v118, 8uLL), 0xFF000000FF0000);
      v122.i64[0] = v124.u32[0];
      v122.i64[1] = v124.u32[1];
      v125 = v122;
      v126 = vand_s8(v119, 0xFF000000FF00);
      v122.i64[0] = v126.u32[0];
      v122.i64[1] = v126.u32[1];
      v127 = vorrq_s8(v123, vorrq_s8(v125, v122));
      *v125.i8 = vshr_n_u32(v120, 8uLL);
      v122.i64[0] = v125.i32[0] & 0xFFFFFEFF;
      v122.i64[1] = v125.i32[1] & 0xFFFFFEFF;
      v128 = vorrq_s8(v127, v122);
      *v24 = v128;
      v31 = (v31 + 1) & v35;
      v128.i8[0] = *(v33 + ((v34 + 1) & v35));
      v128.i8[4] = *(v33 + v31);
      *v128.i8 = vand_s8(*v128.i8, 0xFF000000FFLL);
      v129 = vadd_s32(v113, *v128.i8);
      v130 = vadd_s32(v114, *v128.i8);
      v131 = vadd_s32(v115, *v128.i8);
      *v125.i8 = vshl_n_s32(vadd_s32(v112, *v128.i8), 0x10uLL);
      v122.i64[0] = v125.i32[0] & 0xFF00FFFF;
      v122.i64[1] = v125.i32[1] & 0xFF00FFFF;
      v132 = vorrq_s8(vshll_n_u32(vand_s8(vadd_s32(v111, *v128.i8), 0xFF000000FF00), 0x18uLL), v122);
      *v125.i8 = vand_s8(vshl_n_s32(v129, 8uLL), 0xFF000000FF0000);
      v122.i64[0] = v125.u32[0];
      v122.i64[1] = v125.u32[1];
      v133 = v122;
      v134 = vand_s8(v130, 0xFF000000FF00);
      v122.i64[0] = v134.u32[0];
      v122.i64[1] = v134.u32[1];
      v135 = vorrq_s8(v132, vorrq_s8(v133, v122));
      *v133.i8 = vshr_n_u32(v131, 8uLL);
      v122.i64[0] = v133.i32[0] & 0xFFFFFEFF;
      v122.i64[1] = v133.i32[1] & 0xFFFFFEFF;
      v5 = vorrq_s8(v135, v122);
      *v23 = -1;
      v23 += 4;
      v24[1] = v5;
      v24 += 2;
      v116 -= 4;
      v34 = (v34 + 1) & v35;
    }

    while (v116 > 4);
  }

  else
  {
    if (a4 >= 4)
    {
      v38 = 4;
    }

    else
    {
      v38 = a4;
    }

    bzero(v23, ((a4 - v38 + 3) & 0xFFFFFFFC) + 4);
  }
}

uint64_t cmyk32_image(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = *a1;
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
  v32 = 0u;
  memset(v49, 0, 512);
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

  if (_blt_image_initialize(a2, a3, &v32, v49) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = 134759444;
  v19 = *a3;
  *(&v32 + 1) = __PAIR64__(*v6, *a3);
  if (v19 == 134759444)
  {
    if (!v43 && (~DWORD1(v33) & 0xC3) == 0)
    {
      v17.n128_u32[0] = *(a3 + 8);
      if (v17.n128_f32[0] >= 1.0 && !*(a3 + 24))
      {
        if ((BYTE4(v33) & 4) != 0)
        {
          v17.n128_u64[0] = *(a3 + 32);
          *(a2 + 8) = v17.n128_u64[0];
        }

        cmyk32_mark(a1, v17);
        return 1;
      }
    }

    *&v32 = cmyk32_sample_cmyk32;
    goto LABEL_37;
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
  *&v32 = *&CMYK8_image_sample[2 * v20 + 2];
  if (v32)
  {
    goto LABEL_36;
  }

  if ((HIWORD(*a3) & 0x3Fu) > 0x10 || (*&v32 = *&CMYK16_image_sample[2 * v20 + 2], !v32))
  {
    *&v32 = *&CMYKF_image_sample[2 * v20 + 2];
    if (v32)
    {
      v18 = 538985509;
      v23 = 20;
      goto LABEL_35;
    }

    return 0xFFFFFFFFLL;
  }

  v18 = 269501476;
  v23 = 16;
LABEL_35:
  LODWORD(v33) = v23;
LABEL_36:
  DWORD2(v32) = v18;
  if ((v21 & 1) != 0 || (v8 - 1) > 1 || (BYTE4(v33) & 7) != 3 || a2[2] != 5 && a2[2] || v20 > 0xB)
  {
    goto LABEL_37;
  }

  HIDWORD(v25) = v22;
  LODWORD(v25) = v22;
  v24 = v25 >> 3;
  if (v24 > 2)
  {
    if (v24 == 3)
    {
      DWORD2(v32) = *a3;
      v26 = cmyk32_image_mark_RGB24;
      goto LABEL_66;
    }

    if (v24 == 4)
    {
      DWORD2(v32) = *a3;
      v26 = cmyk32_image_mark_rgb32;
      goto LABEL_66;
    }

    if (v24 != 5)
    {
      goto LABEL_37;
    }

    DWORD2(v32) = *a3;
    v27 = cmyk32_image_mark_rgb32;
LABEL_64:
    v28 = v27;
    v29 = a2;
    v30 = v8;
    v31 = 8;
LABEL_67:
    cmyk32_image_mark_image(v29, &v32, v30, v31, v28);
    return 1;
  }

  switch(v24)
  {
    case 0:
      DWORD2(v32) = *a3;
      v26 = cmyk32_image_mark_RGB32;
      goto LABEL_66;
    case 1:
      DWORD2(v32) = *a3;
      v27 = cmyk32_image_mark_RGB32;
      goto LABEL_64;
    case 2:
      DWORD2(v32) = *a3;
      v26 = cmyk32_image_mark_W8;
LABEL_66:
      v28 = v26;
      v29 = a2;
      v30 = v8;
      v31 = 0;
      goto LABEL_67;
  }

LABEL_37:
  cmyk32_image_mark(a2, &v32, v8, v17);
  return 1;
}

uint64_t cmyk32_mark(uint64_t a1, __n128 a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v769 = *MEMORY[0x1E69E9840];
  v12 = *(v3 + 96);
  v13 = *(v3 + 48);
  v14 = *(*(*v2 + 56) + 16 * *v3 + 8 * (v12 == 0) + 4 * (v13 == 0));
  if (v14 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v16 = *(v3 + 4);
  v17 = v16 - 1;
  if (v16 < 1)
  {
    return 0;
  }

  v18 = *(v3 + 8);
  v19 = (v18 - 1);
  if (v18 < 1)
  {
    return 0;
  }

  if (v14 >= 24 && **v2 == 134759428)
  {
    v14 += 4;
  }

  v20 = *(v3 + 136);
  v683 = v3;
  if ((*v3 & 0xFF0000) == 0x50000 || !v20)
  {
    v22 = *v3 & 0xFF00;
    v687 = v14;
    if (v22 == 1024)
    {
      v768[0] = *(v3 + 4);
      v758[0] = v18;
      if (v12)
      {
        v23 = *v12;
      }

      else
      {
        v23 = 255;
      }

      v35 = **(v3 + 88);
      v36 = *(v3 + 12);
      v37 = *(v3 + 16);
      v38 = *(v3 + 28) >> 2;
      if (v13)
      {
        v748 = *(v3 + 32);
        v745 = (v13 + v748 * v37 + v36);
        v39 = 1;
      }

      else
      {
        v745 = 0;
        v748 = 0;
        v39 = 0;
      }

      v45 = ~v23;
      v46 = (*(v3 + 40) + 4 * v37 * v38 + 4 * v36);
      v737 = v46;
      v725 = *(v3 + 28) >> 2;
      v732 = v39;
      if (!v20)
      {
        v751 = 0;
        if (v13)
        {
          v49 = v16;
        }

        else
        {
          v49 = 0;
        }

        v48 = v745;
        __b = v748 - v49;
        v50 = v16;
        goto LABEL_970;
      }

      shape_enum_clip_alloc(v2, v3, v20, 1, 1, 1, *(v3 + 104), *(v3 + 108), v16, v18);
      v48 = v745;
      __b = v748;
      if (v47)
      {
        while (1)
        {
          v751 = v47;
          if (!shape_enum_clip_next(v47, &v757 + 1, &v757, v768, v758))
          {
            break;
          }

          v46 = (v46 + 4 * v38 * v757 + 4 * SHIDWORD(v757));
          v50 = v768[0];
          if (v13)
          {
            v48 = &v745[v748 * v757 + SHIDWORD(v757)];
          }

          v638 = __b;
          if (v13)
          {
            v638 = (v748 - v768[0]);
          }

          __b = v638;
          LODWORD(v16) = v768[0];
LABEL_970:
          v754 = v38 - v50;
          switch(v14)
          {
            case 0:
              v538 = v754 + v16;
              v539 = v758[0];
              v540 = v758[0] - 1;
              v541 = &v46->i8[4 * ((v538 * v540) & (v538 >> 63))];
              if (v538 < 0)
              {
                v538 = -v538;
              }

              CGBlt_fillBytes(4 * v16, v758[0], 0, v541, 4 * v538);
              if (!v13)
              {
                goto LABEL_1105;
              }

              v542 = __b + v16;
              v48 += (v542 * v540) & (v542 >> 63);
              if (v542 >= 0)
              {
                v543 = __b + v16;
              }

              else
              {
                v543 = -v542;
              }

              v544 = v16;
              v545 = v539;
              v546 = 0;
              goto LABEL_1104;
            case 1:
              v591 = v754 + v16;
              if (v591 < 0)
              {
                v46 = (v46 + 4 * v591 * (v758[0] - 1));
                v591 = -v591;
              }

              v592 = 0;
              v593 = *(v683 + 88);
              if (v593)
              {
                v592 = *v593;
              }

              v594 = v758[0];
              CGBlt_fillBytes(4 * v16, v758[0], v592, v46->i8, 4 * v591);
              if (v13)
              {
                v545 = v594;
                v595 = *(v683 + 96);
                if (!v595)
                {
                  v595 = &PIXELALPHAPLANARCONSTANT_18034;
                }

                v48 += ((__b + v16) * (v594 - 1)) & ((__b + v16) >> 63);
                if (__b + v16 >= 0)
                {
                  v543 = __b + v16;
                }

                else
                {
                  v543 = -(__b + v16);
                }

                v546 = *v595;
                v544 = v16;
LABEL_1104:
                __b = v543;
                CGBlt_fillBytes(v544, v545, v546, v48, v543);
              }

LABEL_1105:
              v14 = v687;
              goto LABEL_1265;
            case 2:
              v573 = 4 * v39;
              if (!v13)
              {
                v641 = vdupq_n_s32(~v23);
                v642 = vdupq_n_s32(v35);
                v643.i64[0] = 0x1000100010001;
                v643.i64[1] = 0x1000100010001;
                do
                {
                  v644 = v768[0];
                  if (v768[0] >= 4)
                  {
                    v645 = (v768[0] >> 2) + 1;
                    do
                    {
                      v646.i16[0] = v46->u8[0];
                      v646.i16[1] = BYTE2(v46->u32[0]);
                      v646.i16[2] = BYTE4(v46->i64[0]);
                      v646.i16[3] = BYTE6(v46->i64[0]);
                      v646.i16[4] = v46->i64[1];
                      v646.i16[5] = BYTE2(v46->i64[1]);
                      v646.i16[6] = BYTE12(*v46);
                      v646.i16[7] = BYTE14(*v46);
                      v647 = vmulq_s32((*&vshrq_n_u32(*v46, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v641);
                      v648 = vmulq_s32(v646, v641);
                      *v46++ = vaddq_s32(vaddq_s32((*&vaddq_s32(vaddq_s32(v647, v643), (*&vshrq_n_u32(v647, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL))) & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)), v642), (*&vshrq_n_u32(vaddq_s32(vaddq_s32(v648, v643), (*&vshrq_n_u32(v648, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL))), 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)));
                      v48 += v573;
                      --v645;
                    }

                    while (v645 > 1);
                    v644 &= 3u;
                  }

                  if (v644 >= 1)
                  {
                    v649 = v644 + 1;
                    do
                    {
                      v46->i32[0] = ((((v46->i32[0] >> 8) & 0xFF00FF) * v45 + 65537 + (((((v46->i32[0] >> 8) & 0xFF00FF) * v45) >> 8) & 0xFF00FF)) & 0xFF00FF00) + v35 + ((((v46->i32[0] & 0xFF00FF) * v45 + 65537 + ((((v46->i32[0] & 0xFF00FF) * v45) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF);
                      v46 = (v46 + 4);
                      --v649;
                    }

                    while (v649 > 1);
                    v48 += v644 * v39;
                  }

                  v46 = (v46 + 4 * v754);
                  v48 += __b;
                  --v758[0];
                }

                while (v758[0]);
                v38 = v725;
                break;
              }

              v731 = v16 & 3;
              v574 = v758[0];
              v728 = (v16 >> 2) + 1;
              v698 = v16;
              do
              {
                v750 = v574;
                if (v16 < 4)
                {
                  v579 = v16;
                }

                else
                {
                  v575 = v48 + 3;
                  v576 = v728;
                  do
                  {
                    DAplusDAM(v46, v575 - 3, v35, v23, v46->i32[0], *(v575 - 3), ~v23);
                    DAplusDAM(&v46->i32[1], v575 - 2, v35, v23, v46->u32[1], *(v575 - 2), ~v23);
                    DAplusDAM(&v46->i32[2], v575 - 1, v35, v23, v46->u32[2], *(v575 - 1), ~v23);
                    v578 = v46->u32[3];
                    v577 = &v46->i32[3];
                    DAplusDAM(v577, v575, v35, v23, v578, *v575, ~v23);
                    v46 = (v577 + 1);
                    --v576;
                    v575 += v573;
                  }

                  while (v576 > 1);
                  v48 = v575 - 3;
                  v579 = v731;
                }

                if (v579 < 1)
                {
                  v581 = v46;
                }

                else
                {
                  v580 = v579 + 1;
                  v581 = v46;
                  do
                  {
                    v582 = *v581++;
                    DAplusDAM(v46, v48, v35, v23, v582, *v48, ~v23);
                    v48 += v39;
                    --v580;
                    v46 = v581;
                  }

                  while (v580 > 1);
                }

                v46 = &v581[v754];
                v48 += __b;
                v574 = v750 - 1;
                v758[0] = v750 - 1;
                v14 = v687;
                LODWORD(v16) = v698;
              }

              while (v750 != 1);
LABEL_1264:
              v38 = v725;
              goto LABEL_1265;
            case 3:
              do
              {
                v585 = v768[0];
                do
                {
                  v586 = *v48;
                  if (v586 == 255)
                  {
                    v46->i32[0] = v35;
                    LOBYTE(v587) = v23;
                  }

                  else if (*v48)
                  {
                    v588 = PDAM_5790(v35, v23, v586);
                    v46->i32[0] = v588;
                    v587 = HIDWORD(v588);
                  }

                  else
                  {
                    LOBYTE(v587) = 0;
                    v46->i32[0] = 0;
                  }

                  *v48 = v587;
                  v46 = (v46 + 4);
                  v48 += v39;
                  --v585;
                }

                while (v585);
                v46 = (v46 + 4 * v754);
                v48 += __b;
                --v758[0];
              }

              while (v758[0]);
              goto LABEL_1265;
            case 4:
              do
              {
                v557 = v768[0];
                do
                {
                  if (~*v48 == 255)
                  {
                    v46->i32[0] = v35;
                    LOBYTE(v558) = v23;
                  }

                  else if (*v48 == -1)
                  {
                    LOBYTE(v558) = 0;
                    v46->i32[0] = 0;
                  }

                  else
                  {
                    v559 = PDAM_5790(v35, v23, ~*v48);
                    v46->i32[0] = v559;
                    v558 = HIDWORD(v559);
                  }

                  *v48 = v558;
                  v46 = (v46 + 4);
                  v48 += v39;
                  --v557;
                }

                while (v557);
                v46 = (v46 + 4 * v754);
                v48 += __b;
                --v758[0];
              }

              while (v758[0]);
              goto LABEL_1264;
            case 5:
              v699 = v16;
              v602 = v758[0];
              do
              {
                v603 = v699;
                v604 = v46;
                do
                {
                  v605 = *v604++;
                  DAMplusDAM(v46, v48, v35, v23, *v48, v605, *v48, ~v23);
                  v48 += v39;
                  v46 = v604;
                  --v603;
                }

                while (v603);
                v46 = &v604[v754];
                v48 += __b;
                v758[0] = --v602;
              }

              while (v602);
              goto LABEL_1263;
            case 6:
              do
              {
                v610 = v768[0];
                do
                {
                  if (*v48 != -1)
                  {
                    if (~*v48 == 255)
                    {
                      v46->i32[0] = v35;
                      *v48 = v23;
                    }

                    else
                    {
                      DAplusDAM(v46, v48, v46->i32[0], *v48, v35, v23, ~*v48);
                    }
                  }

                  v46 = (v46 + 4);
                  v48 += v39;
                  --v610;
                }

                while (v610);
                v46 = (v46 + 4 * v754);
                v48 += __b;
                --v758[0];
              }

              while (v758[0]);
              goto LABEL_1264;
            case 7:
              if (v13)
              {
                do
                {
                  v589 = v768[0];
                  do
                  {
                    v590 = PDAM_5790(v46->i32[0], *v48, v23);
                    v46->i32[0] = v590;
                    v46 = (v46 + 4);
                    *v48 = BYTE4(v590);
                    v48 += v39;
                    --v589;
                  }

                  while (v589);
                  v46 = (v46 + 4 * v754);
                  v48 += __b;
                  --v758[0];
                }

                while (v758[0]);
                goto LABEL_1265;
              }

              do
              {
                v650 = v768[0];
                v651 = v768[0] - 1;
                do
                {
                  v46->i32[0] = (((v46->i32[0] & 0xFF00FF) * v23 + 65537 + ((((v46->i32[0] & 0xFF00FFu) * v23) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF | (((v46->i32[0] >> 8) & 0xFF00FF) * v23 + 65537 + (((((v46->i32[0] >> 8) & 0xFF00FF) * v23) >> 8) & 0xFF00FF)) & 0xFF00FF00;
                  v46 = (v46 + 4);
                  --v650;
                }

                while (v650);
                v46 = (v46 + 4 * v754);
                v48 += __b + v39 + v39 * v651;
                --v758[0];
              }

              while (v758[0]);
              break;
            case 8:
              if (v13)
              {
                do
                {
                  v617 = v768[0];
                  do
                  {
                    v618 = PDAM_5790(v46->i32[0], *v48, ~v23);
                    v46->i32[0] = v618;
                    v46 = (v46 + 4);
                    *v48 = BYTE4(v618);
                    v48 += v39;
                    --v617;
                  }

                  while (v617);
                  v46 = (v46 + 4 * v754);
                  v48 += __b;
                  --v758[0];
                }

                while (v758[0]);
LABEL_1265:
                v39 = v732;
              }

              else
              {
                do
                {
                  v652 = v768[0];
                  v653 = v768[0] - 1;
                  do
                  {
                    v46->i32[0] = (((v46->i32[0] & 0xFF00FF) * v45 + 65537 + ((((v46->i32[0] & 0xFF00FF) * v45) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF | (((v46->i32[0] >> 8) & 0xFF00FF) * v45 + 65537 + (((((v46->i32[0] >> 8) & 0xFF00FF) * v45) >> 8) & 0xFF00FF)) & 0xFF00FF00;
                    v46 = (v46 + 4);
                    --v652;
                  }

                  while (v652);
                  v46 = (v46 + 4 * v754);
                  v48 += __b + v39 + v39 * v653;
                  --v758[0];
                }

                while (v758[0]);
              }

              break;
            case 9:
              v697 = v16;
              v565 = v758[0];
              do
              {
                v566 = v697;
                v567 = v46;
                do
                {
                  v568 = *v567++;
                  DAMplusDAM(v46, v48, v35, v23, *v48 ^ 0xFF, v568, *v48, v23);
                  v48 += v39;
                  v46 = v567;
                  --v566;
                }

                while (v566);
                v46 = &v567[v754];
                v48 += __b;
                v758[0] = --v565;
              }

              while (v565);
              goto LABEL_1263;
            case 10:
              v700 = v16;
              v613 = v758[0];
              do
              {
                v614 = v700;
                v615 = v46;
                do
                {
                  v616 = *v615++;
                  DAMplusDAM(v46, v48, v35, v23, *v48 ^ 0xFF, v616, *v48, ~v23);
                  v48 += v39;
                  v46 = v615;
                  --v614;
                }

                while (v614);
                v46 = &v615[v754];
                v48 += __b;
                v758[0] = --v613;
              }

              while (v613);
              goto LABEL_1263;
            case 11:
              v696 = v16;
              if (v13)
              {
                v553 = v758[0];
                do
                {
                  v554 = v696;
                  v555 = v46;
                  do
                  {
                    v556 = *v555++;
                    DAplusdDA(v46, v48, v556, *v48, v35, v23);
                    v48 += v39;
                    v46 = v555;
                    --v554;
                  }

                  while (v554);
                  v46 = &v555[v754];
                  v48 += __b;
                  v758[0] = --v553;
                }

                while (v553);
              }

              else
              {
                v633 = v39 + v39 * (v16 - 1);
                v634 = v758[0];
                do
                {
                  v635 = v696;
                  v636 = v46;
                  do
                  {
                    v637 = *v636++;
                    DplusdDA(v46, v637, v35, v23);
                    v46 = v636;
                    --v635;
                  }

                  while (v635);
                  v46 = &v636[v754];
                  v48 += v633 + __b;
                  v758[0] = --v634;
                }

                while (v634);
              }

LABEL_1263:
              v14 = v687;
              goto LABEL_1264;
            case 12:
              v560 = (v35 >> 8) & 0xFF00FF;
              v561 = v35 & 0xFF00FF;
              if (v13)
              {
                do
                {
                  v562 = v768[0];
                  do
                  {
                    v563 = *v48 + v23;
                    v564 = ((((v46->i32[0] >> 8) & 0xFF00FF) + v560) << 8) & 0xFF00FF00 | ((v46->i32[0] & 0xFF00FF) + v561) & 0xFF00FF | (15 * ((((v46->i32[0] >> 8) & 0xFF00FF) + v560) & 0x1000100 | (((v46->i32[0] & 0xFF00FFu) + v561) >> 8) & 0x10001)) | (240 * ((((v46->i32[0] >> 8) & 0xFF00FF) + v560) & 0x1000100 | (((v46->i32[0] & 0xFF00FFu) + v561) >> 8) & 0x10001));
                    if (v563 >= 0xFF)
                    {
                      LOBYTE(v563) = -1;
                    }

                    *v48 = v563;
                    v46->i32[0] = v564;
                    v46 = (v46 + 4);
                    v48 += v39;
                    --v562;
                  }

                  while (v562);
                  v46 = (v46 + 4 * v754);
                  v48 += __b;
                  --v758[0];
                }

                while (v758[0]);
              }

              else
              {
                do
                {
                  v639 = v768[0];
                  v640 = v768[0] - 1;
                  do
                  {
                    v46->i32[0] = ((((v46->i32[0] >> 8) & 0xFF00FF) + v560) << 8) & 0xFF00FF00 | ((v46->i32[0] & 0xFF00FF) + v561) & 0xFF00FF | (15 * ((((v46->i32[0] >> 8) & 0xFF00FF) + v560) & 0x1000100 | (((v46->i32[0] & 0xFF00FFu) + v561) >> 8) & 0x10001)) | (240 * ((((v46->i32[0] >> 8) & 0xFF00FF) + v560) & 0x1000100 | (((v46->i32[0] & 0xFF00FFu) + v561) >> 8) & 0x10001));
                    v46 = (v46 + 4);
                    --v639;
                  }

                  while (v639);
                  v46 = (v46 + 4 * v754);
                  v48 += __b + v39 + v39 * v640;
                  --v758[0];
                }

                while (v758[0]);
              }

              break;
            case 13:
              if (!v23)
              {
                break;
              }

              do
              {
                v608 = v768[0];
                do
                {
                  if (v13)
                  {
                    if (*v48)
                    {
                      v609 = PDAmultiplyPDA_5791(v46->i32[0], *v48, v35, v23);
                      v46->i32[0] = v609;
                      *v48 = BYTE4(v609);
                    }

                    else
                    {
                      v46->i32[0] = v35;
                      *v48 = v23;
                    }
                  }

                  else
                  {
                    v46->i32[0] = PDAmultiplyPDA_5791(v46->i32[0], 255, v35, v23);
                  }

                  v46 = (v46 + 4);
                  v48 += v39;
                  --v608;
                }

                while (v608);
                v46 = (v46 + 4 * v754);
                v48 += __b;
                --v758[0];
              }

              while (v758[0]);
              goto LABEL_1265;
            case 14:
              if (!v23)
              {
                break;
              }

              do
              {
                v551 = v768[0];
                do
                {
                  if (v13)
                  {
                    if (*v48)
                    {
                      v552 = PDAscreenPDA_5792(v46->i32[0], *v48, v35, v23);
                      v46->i32[0] = v552;
                      *v48 = BYTE4(v552);
                    }

                    else
                    {
                      v46->i32[0] = v35;
                      *v48 = v23;
                    }
                  }

                  else
                  {
                    v46->i32[0] = PDAscreenPDA_5792(v46->i32[0], 0xFFu, v35, v23);
                  }

                  v46 = (v46 + 4);
                  v48 += v39;
                  --v551;
                }

                while (v551);
                v46 = (v46 + 4 * v754);
                v48 += __b;
                --v758[0];
              }

              while (v758[0]);
              goto LABEL_1265;
            case 15:
              if (!v23)
              {
                break;
              }

              do
              {
                v583 = v768[0];
                do
                {
                  if (v13)
                  {
                    if (*v48)
                    {
                      v584 = PDAoverlayPDA_5793(v46->i32[0], *v48, v35, v23);
                      v46->i32[0] = v584;
                      *v48 = BYTE4(v584);
                    }

                    else
                    {
                      v46->i32[0] = v35;
                      *v48 = v23;
                    }
                  }

                  else
                  {
                    v46->i32[0] = PDAoverlayPDA_5793(v46->i32[0], 255, v35, v23);
                  }

                  v46 = (v46 + 4);
                  v48 += v39;
                  --v583;
                }

                while (v583);
                v46 = (v46 + 4 * v754);
                v48 += __b;
                --v758[0];
              }

              while (v758[0]);
              goto LABEL_1265;
            case 16:
              if (!v23)
              {
                break;
              }

              do
              {
                v549 = v768[0];
                do
                {
                  if (v13)
                  {
                    if (*v48)
                    {
                      v550 = PDAdarkenPDA_5795(v46->i32[0], *v48, v35, v23);
                      v46->i32[0] = v550;
                      *v48 = BYTE4(v550);
                    }

                    else
                    {
                      v46->i32[0] = v35;
                      *v48 = v23;
                    }
                  }

                  else
                  {
                    v46->i32[0] = PDAdarkenPDA_5795(v46->i32[0], 0xFFu, v35, v23);
                  }

                  v46 = (v46 + 4);
                  v48 += v39;
                  --v549;
                }

                while (v549);
                v46 = (v46 + 4 * v754);
                v48 += __b;
                --v758[0];
              }

              while (v758[0]);
              goto LABEL_1265;
            case 17:
              if (!v23)
              {
                break;
              }

              do
              {
                v598 = v768[0];
                do
                {
                  if (v13)
                  {
                    if (*v48)
                    {
                      v599 = PDAlightenPDA_5794(v46->i32[0], *v48, v35, v23);
                      v46->i32[0] = v599;
                      *v48 = BYTE4(v599);
                    }

                    else
                    {
                      v46->i32[0] = v35;
                      *v48 = v23;
                    }
                  }

                  else
                  {
                    v46->i32[0] = PDAlightenPDA_5794(v46->i32[0], 0xFFu, v35, v23);
                  }

                  v46 = (v46 + 4);
                  v48 += v39;
                  --v598;
                }

                while (v598);
                v46 = (v46 + 4 * v754);
                v48 += __b;
                --v758[0];
              }

              while (v758[0]);
              goto LABEL_1265;
            case 18:
              if (!v23)
              {
                break;
              }

              do
              {
                v611 = v768[0];
                do
                {
                  if (v13)
                  {
                    if (*v48)
                    {
                      v612 = PDAcolordodgePDA_5796(v46->i32[0], *v48, v35, v23);
                      v46->i32[0] = v612;
                      *v48 = BYTE4(v612);
                    }

                    else
                    {
                      v46->i32[0] = v35;
                      *v48 = v23;
                    }
                  }

                  else
                  {
                    v46->i32[0] = PDAcolordodgePDA_5796(v46->i32[0], 255, v35, v23);
                  }

                  v46 = (v46 + 4);
                  v48 += v39;
                  --v611;
                }

                while (v611);
                v46 = (v46 + 4 * v754);
                v48 += __b;
                --v758[0];
              }

              while (v758[0]);
              goto LABEL_1265;
            case 19:
              if (!v23)
              {
                break;
              }

              do
              {
                v623 = v768[0];
                do
                {
                  if (v13)
                  {
                    if (*v48)
                    {
                      v624 = PDAcolorburnPDA_5797(v46->i32[0], *v48, v35, v23);
                      v46->i32[0] = v624;
                      *v48 = BYTE4(v624);
                    }

                    else
                    {
                      v46->i32[0] = v35;
                      *v48 = v23;
                    }
                  }

                  else
                  {
                    v46->i32[0] = PDAcolorburnPDA_5797(v46->i32[0], 255, v35, v23);
                  }

                  v46 = (v46 + 4);
                  v48 += v39;
                  --v623;
                }

                while (v623);
                v46 = (v46 + 4 * v754);
                v48 += __b;
                --v758[0];
              }

              while (v758[0]);
              goto LABEL_1265;
            case 20:
              if (!v23)
              {
                break;
              }

              do
              {
                v600 = v768[0];
                do
                {
                  if (v13)
                  {
                    if (*v48)
                    {
                      v601 = PDAsoftlightPDA_5799(v46->i32[0], *v48, v35, v23);
                      v46->i32[0] = v601;
                      *v48 = BYTE4(v601);
                    }

                    else
                    {
                      v46->i32[0] = v35;
                      *v48 = v23;
                    }
                  }

                  else
                  {
                    v46->i32[0] = PDAsoftlightPDA_5799(v46->i32[0], 255, v35, v23);
                  }

                  v46 = (v46 + 4);
                  v48 += v39;
                  --v600;
                }

                while (v600);
                v46 = (v46 + 4 * v754);
                v48 += __b;
                --v758[0];
              }

              while (v758[0]);
              goto LABEL_1265;
            case 21:
              if (!v23)
              {
                break;
              }

              do
              {
                v606 = v768[0];
                do
                {
                  if (v13)
                  {
                    if (*v48)
                    {
                      v607 = PDAhardlightPDA_5798(v46->i32[0], *v48, v35, v23);
                      v46->i32[0] = v607;
                      *v48 = BYTE4(v607);
                    }

                    else
                    {
                      v46->i32[0] = v35;
                      *v48 = v23;
                    }
                  }

                  else
                  {
                    v46->i32[0] = PDAhardlightPDA_5798(v46->i32[0], 255, v35, v23);
                  }

                  v46 = (v46 + 4);
                  v48 += v39;
                  --v606;
                }

                while (v606);
                v46 = (v46 + 4 * v754);
                v48 += __b;
                --v758[0];
              }

              while (v758[0]);
              goto LABEL_1265;
            case 22:
              if (!v23)
              {
                break;
              }

              do
              {
                v621 = v768[0];
                do
                {
                  if (v13)
                  {
                    if (*v48)
                    {
                      v622 = PDAdifferencePDA_5800(v46->i32[0], *v48, v35, v23, v4, v5, v6, v7, v8, v9, v10, v11);
                      v46->i32[0] = v622;
                      *v48 = BYTE4(v622);
                    }

                    else
                    {
                      v46->i32[0] = v35;
                      *v48 = v23;
                    }
                  }

                  else
                  {
                    v46->i32[0] = PDAdifferencePDA_5800(v46->i32[0], 0xFFu, v35, v23, v4, v5, v6, v7, v8, v9, v10, v11);
                  }

                  v46 = (v46 + 4);
                  v48 += v39;
                  --v621;
                }

                while (v621);
                v46 = (v46 + 4 * v754);
                v48 += __b;
                --v758[0];
              }

              while (v758[0]);
              goto LABEL_1265;
            case 23:
              if (!v23)
              {
                break;
              }

              do
              {
                v625 = v768[0];
                do
                {
                  if (v13)
                  {
                    if (*v48)
                    {
                      v626 = PDAexclusionPDA_5801(v46->i32[0], *v48, v35, v23);
                      v46->i32[0] = v626;
                      *v48 = BYTE4(v626);
                    }

                    else
                    {
                      v46->i32[0] = v35;
                      *v48 = v23;
                    }
                  }

                  else
                  {
                    v46->i32[0] = PDAexclusionPDA_5801(v46->i32[0], 255, v35, v23);
                  }

                  v46 = (v46 + 4);
                  v48 += v39;
                  --v625;
                }

                while (v625);
                v46 = (v46 + 4 * v754);
                v48 += __b;
                --v758[0];
              }

              while (v758[0]);
              goto LABEL_1265;
            case 24:
              if (!v23)
              {
                break;
              }

              do
              {
                v571 = v768[0];
                do
                {
                  if (v13)
                  {
                    if (*v48)
                    {
                      v572 = PDAhuePDA_5802(v46->i32[0], *v48, v35, v23);
                      v46->i32[0] = v572;
                      *v48 = BYTE4(v572);
                    }

                    else
                    {
                      v46->i32[0] = v35;
                      *v48 = v23;
                    }
                  }

                  else
                  {
                    v46->i32[0] = PDAhuePDA_5802(v46->i32[0], 255, v35, v23);
                  }

                  v46 = (v46 + 4);
                  v48 += v39;
                  --v571;
                }

                while (v571);
                v46 = (v46 + 4 * v754);
                v48 += __b;
                --v758[0];
              }

              while (v758[0]);
              goto LABEL_1265;
            case 25:
              if (!v23)
              {
                break;
              }

              do
              {
                v569 = v768[0];
                do
                {
                  if (v13)
                  {
                    if (*v48)
                    {
                      v570 = PDAsaturationPDA_5803(v46->i32[0], *v48, v35, v23);
                      v46->i32[0] = v570;
                      *v48 = BYTE4(v570);
                    }

                    else
                    {
                      v46->i32[0] = v35;
                      *v48 = v23;
                    }
                  }

                  else
                  {
                    v46->i32[0] = PDAsaturationPDA_5803(v46->i32[0], 255, v35, v23);
                  }

                  v46 = (v46 + 4);
                  v48 += v39;
                  --v569;
                }

                while (v569);
                v46 = (v46 + 4 * v754);
                v48 += __b;
                --v758[0];
              }

              while (v758[0]);
              goto LABEL_1265;
            case 26:
              if (!v23)
              {
                break;
              }

              do
              {
                v631 = v768[0];
                do
                {
                  if (v13)
                  {
                    if (*v48)
                    {
                      v632 = PDAluminosityPDA_5804(v35, v23, v46->i32[0], *v48);
                      v46->i32[0] = v632;
                      *v48 = BYTE4(v632);
                    }

                    else
                    {
                      v46->i32[0] = v35;
                      *v48 = v23;
                    }
                  }

                  else
                  {
                    v46->i32[0] = PDAluminosityPDA_5804(v35, v23, v46->i32[0], 255);
                  }

                  v46 = (v46 + 4);
                  v48 += v39;
                  --v631;
                }

                while (v631);
                v46 = (v46 + 4 * v754);
                v48 += __b;
                --v758[0];
              }

              while (v758[0]);
              goto LABEL_1265;
            case 27:
              if (!v23)
              {
                break;
              }

              do
              {
                v547 = v768[0];
                do
                {
                  if (v13)
                  {
                    if (*v48)
                    {
                      v548 = PDAluminosityPDA_5804(v46->i32[0], *v48, v35, v23);
                      v46->i32[0] = v548;
                      *v48 = BYTE4(v548);
                    }

                    else
                    {
                      v46->i32[0] = v35;
                      *v48 = v23;
                    }
                  }

                  else
                  {
                    v46->i32[0] = PDAluminosityPDA_5804(v46->i32[0], 255, v35, v23);
                  }

                  v46 = (v46 + 4);
                  v48 += v39;
                  --v547;
                }

                while (v547);
                v46 = (v46 + 4 * v754);
                v48 += __b;
                --v758[0];
              }

              while (v758[0]);
              goto LABEL_1265;
            case 28:
              if (!v23)
              {
                break;
              }

              do
              {
                v627 = v768[0];
                do
                {
                  if (v13)
                  {
                    if (*v48)
                    {
                      v628 = PDAtranspose_huePDA(v46->i32[0], *v48, v35, v23);
                      v46->i32[0] = v628;
                      *v48 = BYTE4(v628);
                    }

                    else
                    {
                      v46->i32[0] = v35;
                      *v48 = v23;
                    }
                  }

                  else
                  {
                    v46->i32[0] = PDAtranspose_huePDA(v46->i32[0], 255, v35, v23);
                  }

                  v46 = (v46 + 4);
                  v48 += v39;
                  --v627;
                }

                while (v627);
                v46 = (v46 + 4 * v754);
                v48 += __b;
                --v758[0];
              }

              while (v758[0]);
              goto LABEL_1265;
            case 29:
              if (!v23)
              {
                break;
              }

              do
              {
                v629 = v768[0];
                do
                {
                  if (v13)
                  {
                    if (*v48)
                    {
                      v630 = PDAtranspose_saturationPDA(v46->i32[0], *v48, v35, v23);
                      v46->i32[0] = v630;
                      *v48 = BYTE4(v630);
                    }

                    else
                    {
                      v46->i32[0] = v35;
                      *v48 = v23;
                    }
                  }

                  else
                  {
                    v46->i32[0] = PDAtranspose_saturationPDA(v46->i32[0], 255, v35, v23);
                  }

                  v46 = (v46 + 4);
                  v48 += v39;
                  --v629;
                }

                while (v629);
                v46 = (v46 + 4 * v754);
                v48 += __b;
                --v758[0];
              }

              while (v758[0]);
              goto LABEL_1265;
            case 30:
              if (!v23)
              {
                break;
              }

              do
              {
                v619 = v768[0];
                do
                {
                  if (v13)
                  {
                    if (*v48)
                    {
                      v620 = PDAtranspose_luminosityPDA(v35, v23, v46->i32[0], *v48);
                      v46->i32[0] = v620;
                      *v48 = BYTE4(v620);
                    }

                    else
                    {
                      v46->i32[0] = v35;
                      *v48 = v23;
                    }
                  }

                  else
                  {
                    v46->i32[0] = PDAtranspose_luminosityPDA(v35, v23, v46->i32[0], 255);
                  }

                  v46 = (v46 + 4);
                  v48 += v39;
                  --v619;
                }

                while (v619);
                v46 = (v46 + 4 * v754);
                v48 += __b;
                --v758[0];
              }

              while (v758[0]);
              goto LABEL_1265;
            case 31:
              if (!v23)
              {
                break;
              }

              do
              {
                v596 = v768[0];
                do
                {
                  if (v13)
                  {
                    if (*v48)
                    {
                      v597 = PDAtranspose_luminosityPDA(v46->i32[0], *v48, v35, v23);
                      v46->i32[0] = v597;
                      *v48 = BYTE4(v597);
                    }

                    else
                    {
                      v46->i32[0] = v35;
                      *v48 = v23;
                    }
                  }

                  else
                  {
                    v46->i32[0] = PDAtranspose_luminosityPDA(v46->i32[0], 255, v35, v23);
                  }

                  v46 = (v46 + 4);
                  v48 += v39;
                  --v596;
                }

                while (v596);
                v46 = (v46 + 4 * v754);
                v48 += __b;
                --v758[0];
              }

              while (v758[0]);
              goto LABEL_1265;
            default:
              break;
          }

          v46 = v737;
          v47 = v751;
          if (!v751)
          {
            return 1;
          }

          v757 = 0;
        }

        v56 = v751;
LABEL_1275:
        free(v56);
      }

      return 1;
    }

    v768[0] = *(v3 + 4);
    v758[0] = v18;
    v24 = *(v3 + 88);
    v25 = *(v3 + 12);
    v26 = *(v3 + 16);
    v27 = *(v3 + 28) >> 2;
    if (v13)
    {
      v681 = *(v3 + 32);
      v682 = (v13 + v681 * v26 + v25);
      v747 = 0xFFFFFFFFLL;
    }

    else
    {
      v681 = 0;
      v682 = 0;
      v747 = 0;
    }

    v680 = *(v3 + 40) + 4 * v26 * v27 + 4 * v25;
    v40 = *(v3 + 56);
    v41 = *(v3 + 60);
    v42 = *(v3 + 76) >> 2;
    if (v22 == 256)
    {
      if (v12)
      {
        v43 = *(v3 + 80);
        v12 += v43 * v41 + v40;
        v44 = -1;
      }

      else
      {
        v43 = 0;
        v44 = 0;
      }

      v24 += v41 * v42 + v40;
      if (v42 == v27)
      {
        v57 = (v680 - v24) >> 2;
        if (v57 >= 1)
        {
          if (v57 <= v16)
          {
            v680 += 4 * v17;
            v682 += v747 & v17;
            v12 += v44 & v17;
            v59 = -1;
            v42 = *(v3 + 28) >> 2;
            v24 += v17;
            goto LABEL_52;
          }

          v58 = v27 * v19;
          if (v680 <= &v24[v27 * v19 - 1 + v16])
          {
            v42 = -v27;
            v72 = &v682[v681 * v19];
            v681 = -v681;
            v682 = v72;
            v747 &= 1u;
            v12 += v43 * v19;
            v43 = -v43;
            v44 &= 1u;
            v59 = 1;
            v24 += v27 * v19;
            v27 = -v27;
            v680 += 4 * v58;
            goto LABEL_52;
          }
        }
      }

      v747 &= 1u;
      v44 &= 1u;
      v59 = 1;
LABEL_52:
      v678 = *(v3 + 60);
      v679 = *(v3 + 56);
      if (v20)
      {
        v749 = v44;
        v60 = 0;
        v724 = 0;
        v61 = -1;
        v727 = v42;
        v688 = v43;
        v689 = v42;
        goto LABEL_57;
      }

      v684 = v59;
      v67 = v59 * v16;
      v62 = v747;
      v726 = v681 - v747 * v16;
      v68 = -1;
      v688 = v43;
      v689 = v42;
LABEL_65:
      v724 = 0;
      v690 = 0;
      v691 = v24;
      v60 = 0;
      v727 = v42 - v67;
      v693[0] = v16;
      v43 -= v44 * v16;
      v65 = v12;
      v66 = v12;
      __ba = v682;
      v752 = v24;
      v753 = v680;
      goto LABEL_69;
    }

    v689 = *(v3 + 64);
    v688 = *(v3 + 68);
    if (v12)
    {
      v43 = *(v3 + 80);
      v44 = 1;
    }

    else
    {
      v43 = 0;
      v44 = 0;
    }

    v724 = &v24[v42 * v688];
    v62 = v747 & 1;
    if (v20)
    {
      v727 = *(v3 + 76) >> 2;
      v678 = *(v3 + 60);
      v679 = *(v3 + 56);
      v747 &= 1u;
      v749 = v44;
      v59 = 1;
      v60 = *(v3 + 88);
      v61 = v60;
LABEL_57:
      v684 = v59;
      v692 = v27;
      shape_enum_clip_alloc(v2, v3, v20, v59, v27, 1, *(v3 + 104), *(v3 + 108), v16, v18);
      v64 = v63;
      v65 = v12;
      v66 = v12;
      __ba = v682;
      v726 = v681;
      if (v63)
      {
        goto LABEL_765;
      }

      return 1;
    }

    v726 = v681 - (v62 * v16);
    if (!v24)
    {
      v678 = *(v3 + 60);
      v679 = *(v3 + 56);
      v68 = 0;
      v684 = 1;
      v67 = v16;
      goto LABEL_65;
    }

    *v693 = v16;
    v69 = v41 % v688;
    v678 = v41 % v688;
    v727 = *(v3 + 76) >> 2;
    v691 = *(v3 + 88);
    v70 = &v24[v42 * v69];
    v71 = v40 % v689;
    v60 = &v70[v71];
    v68 = &v70[v689];
    v679 = v71;
    v690 = 0;
    if (v12)
    {
      v65 = &v12[v43 * v69 + v71];
      v684 = 1;
      v44 = 1;
      v66 = v65;
    }

    else
    {
      v65 = 0;
      v66 = 0;
      v684 = 1;
    }

    __ba = v682;
    v752 = &v70[v71];
    v753 = v680;
    v67 = *v693;
LABEL_69:
    v747 = v62;
    v749 = v44;
    v692 = v27;
    v701 = v43;
    v702 = v27 - v67;
    switch(v14)
    {
      case 0:
        v729 = v60;
        v73 = v65;
        v74 = v68;
        v75 = v702 - v693[0];
        v76 = &v753[-v693[0] + 1];
        if (v684 >= 0)
        {
          v76 = v753;
          v75 = v702 + v693[0];
        }

        v77 = v758[0];
        v78 = v758[0] - 1;
        v79 = (v76 + 4 * ((v75 * v78) & (v75 >> 63)));
        if (v75 < 0)
        {
          v75 = -v75;
        }

        CGBlt_fillBytes(4 * v693[0], v758[0], 0, v79, 4 * v75);
        if (v747)
        {
          v80 = v726 - v693[0];
          v81 = &__ba[-v693[0] + 1];
          if (v684 >= 0)
          {
            v81 = __ba;
            v80 = v726 + v693[0];
          }

          v82 = (v80 * v78) & (v80 >> 63);
          if (v80 >= 0)
          {
            v83 = v80;
          }

          else
          {
            v83 = -v80;
          }

          __ba = &v81[v82];
          v726 = v83;
          CGBlt_fillBytes(v693[0], v77, 0, &v81[v82], v83);
        }

        v43 = v701;
        v64 = v690;
        v68 = v74;
        v65 = v73;
        v60 = v729;
        goto LABEL_217;
      case 1:
        v239 = *(v683 + 1);
        if (v239 == 2)
        {
          if (v693[0] >= 8 && (4 * v689) <= 0x40)
          {
            LODWORD(v4) = 4 * v689;
            v498 = vcnt_s8(*&v4);
            v498.i16[0] = vaddlv_u8(v498);
            if (v498.i32[0] <= 1u)
            {
              v499 = v68;
              v500 = v758[0];
              v24 = v691;
              CGSFillDRAM64(v753, 4 * (v693[0] + v702), 4 * v693[0], v758[0], v691, 4 * v727, 4 * v689, v688, 4 * v679, v678);
              if (v747)
              {
                v64 = v690;
                if (v44)
                {
                  CGSFillDRAM64(__ba, v693[0] + v726, v693[0], v500, v12, v43, v689, v688, v679, v678);
                }

                else
                {
                  CGBlt_fillBytes(v693[0], v500, -1, __ba, v693[0] + v726);
                }
              }

              else
              {
                v64 = v690;
              }

              v68 = v499;
              goto LABEL_763;
            }
          }
        }

        else if (v239 == 1)
        {
          v741 = v68;
          if (v684 < 0)
          {
            v240 = v727 - v693[0];
            v519 = 4 * v693[0] - 4;
            v752 = (v752 - v519);
            v241 = v702 - v693[0];
            v753 = (v753 - v519);
          }

          else
          {
            v240 = v727 + v693[0];
            v241 = v702 + v693[0];
          }

          v520 = v758[0];
          v521 = v758[0] - 1;
          v522 = &v752[(v240 * v521) & (v240 >> 63)];
          if (v240 >= 0)
          {
            v523 = v240;
          }

          else
          {
            v523 = -v240;
          }

          if (v241 >= 0)
          {
            LODWORD(v524) = v241;
          }

          else
          {
            v524 = -v241;
          }

          v727 = v523;
          CGBlt_copyBytes(4 * v693[0], v758[0], v522, &v753[(v241 * v521) & (v241 >> 63)], 4 * v523, 4 * v524);
          if (v747)
          {
            v64 = v690;
            v24 = v691;
            if (v44)
            {
              v525 = v701 - v693[0];
              v526 = &v66[-v693[0] + 1];
              v527 = v726 - v693[0];
              v528 = &__ba[-v693[0] + 1];
              if (v684 >= 0)
              {
                v526 = v66;
                v528 = __ba;
                v525 = v701 + v693[0];
                v527 = v726 + v693[0];
              }

              v529 = &v526[(v525 * v521) & (v525 >> 63)];
              if (v525 >= 0)
              {
                v530 = v525;
              }

              else
              {
                v530 = -v525;
              }

              v531 = v527 * v521;
              v43 = v530;
              v532 = v531 & (v527 >> 63);
              if (v527 >= 0)
              {
                v533 = v527;
              }

              else
              {
                v533 = -v527;
              }

              v66 = v529;
              __ba = &v528[v532];
              v726 = v533;
              CGBlt_copyBytes(v693[0], v520, v529, &v528[v532], v530, v533);
            }

            else
            {
              v534 = v726 - v693[0];
              v535 = &__ba[-v693[0] + 1];
              if (v684 >= 0)
              {
                v535 = __ba;
                v534 = v726 + v693[0];
              }

              v536 = (v534 * v521) & (v534 >> 63);
              if (v534 >= 0)
              {
                v537 = v534;
              }

              else
              {
                v537 = -v534;
              }

              __ba = &v535[v536];
              v726 = v537;
              CGBlt_fillBytes(v693[0], v520, -1, &v535[v536], v537);
              v43 = v701;
            }
          }

          else
          {
            v43 = v701;
            v64 = v690;
            v24 = v691;
          }

          v68 = v741;
          goto LABEL_763;
        }

        if (v62)
        {
          if (v44)
          {
            do
            {
              v501 = v768[0];
              do
              {
                *v753 = *v752;
                *__ba = *v66;
                __ba += v62;
                v502 = &v752[v684];
                if (v502 >= v68)
                {
                  v503 = -v689;
                }

                else
                {
                  v503 = 0;
                }

                v66 += v44 + v503;
                v752 = &v502[v503];
                v753 += v684;
                --v501;
              }

              while (v501);
              if (v724)
              {
                v504 = &v60[v727];
                if (v504 >= v724)
                {
                  v505 = -(v43 * v688);
                }

                else
                {
                  v505 = 0;
                }

                v65 += v43 + v505;
                if (v504 >= v724)
                {
                  v506 = -(v727 * v688);
                }

                else
                {
                  v506 = 0;
                }

                v60 = &v504[v506];
                v68 += 4 * v506 + 4 * v727;
                v66 = v65;
                v752 = v60;
              }

              else
              {
                v752 += v727;
                v66 += v43;
              }

              v753 += v702;
              __ba += v726;
              --v758[0];
            }

            while (v758[0]);
          }

          else
          {
            do
            {
              v513 = v768[0];
              do
              {
                *v753 = *v752;
                *__ba = -1;
                __ba += v62;
                v514 = &v752[v684];
                if (v514 >= v68)
                {
                  v515 = -v689;
                }

                else
                {
                  v515 = 0;
                }

                v66 += v515;
                v752 = &v514[v515];
                v753 += v684;
                --v513;
              }

              while (v513);
              if (v724)
              {
                v516 = &v60[v727];
                if (v516 >= v724)
                {
                  v517 = -(v43 * v688);
                }

                else
                {
                  v517 = 0;
                }

                v65 += v43 + v517;
                if (v516 >= v724)
                {
                  v518 = -(v727 * v688);
                }

                else
                {
                  v518 = 0;
                }

                v60 = &v516[v518];
                v68 += 4 * v518 + 4 * v727;
                v66 = v65;
                v752 = v60;
              }

              else
              {
                v752 += v727;
                v66 += v43;
              }

              v753 += v702;
              __ba += v726;
              --v758[0];
            }

            while (v758[0]);
          }
        }

        else
        {
          do
          {
            v507 = v768[0];
            do
            {
              *v753 = *v752;
              v508 = &v752[v684];
              if (v508 >= v68)
              {
                v509 = -v689;
              }

              else
              {
                v509 = 0;
              }

              v66 += v44 + v509;
              v752 = &v508[v509];
              v753 += v684;
              --v507;
            }

            while (v507);
            if (v724)
            {
              v510 = &v60[v727];
              if (v510 >= v724)
              {
                v511 = -(v43 * v688);
              }

              else
              {
                v511 = 0;
              }

              v65 += v43 + v511;
              if (v510 >= v724)
              {
                v512 = -(v727 * v688);
              }

              else
              {
                v512 = 0;
              }

              v60 = &v510[v512];
              v68 += 4 * v512 + 4 * v727;
              v66 = v65;
              v752 = v60;
            }

            else
            {
              v752 += v727;
              v66 += v43;
            }

            v753 += v702;
            __ba += v726;
            --v758[0];
          }

          while (v758[0]);
        }

        goto LABEL_940;
      case 2:
        v188 = v684;
        v189 = 4 * v684;
        if (v62)
        {
          v730 = v60;
          v733 = v65;
          v685 = v12;
          v190 = v62;
          v663 = -(v43 * v688);
          do
          {
            v191 = v768[0];
            do
            {
              v192 = *v66;
              if (*v66)
              {
                if (v192 == 255)
                {
                  *v753 = *v752;
                  *__ba = *v66;
                }

                else
                {
                  v193 = v68;
                  DAplusDAM(v753, __ba, *v752, v192, *v753, *__ba, v192 ^ 0xFF);
                  v189 = 4 * v684;
                  v188 = v684;
                  v68 = v193;
                }
              }

              __ba += v190;
              v194 = &v752[v188];
              if (v194 >= v68)
              {
                v195 = -v689;
              }

              else
              {
                v195 = 0;
              }

              v66 += v44 + v195;
              v752 = &v194[v195];
              v753 = (v753 + v189);
              --v191;
            }

            while (v191);
            if (v724)
            {
              v196 = &v730[v727];
              v197 = v663;
              if (v196 < v724)
              {
                v197 = 0;
              }

              v66 = (v733 + v701 + v197);
              v198 = -(v727 * v688);
              if (v196 < v724)
              {
                v198 = 0;
              }

              v68 += 4 * v198 + 4 * v727;
              v730 = &v196[v198];
              v733 += v701 + v197;
              v752 = v730;
            }

            else
            {
              v752 += v727;
              v66 += v701;
            }

            v753 += v702;
            __ba += v726;
            --v758[0];
          }

          while (v758[0]);
          goto LABEL_761;
        }

        do
        {
          v469 = v768[0];
          do
          {
            v470 = *v66;
            if (*v66)
            {
              if (v470 == 255)
              {
                v471 = *v752;
              }

              else
              {
                v471 = ((((*v753 >> 8) & 0xFF00FF) * (v470 ^ 0xFF) + 65537 + (((((*v753 >> 8) & 0xFF00FF) * (v470 ^ 0xFF)) >> 8) & 0xFF00FF)) & 0xFF00FF00) + *v752 + ((((*v753 & 0xFF00FF) * (v470 ^ 0xFF) + 65537 + ((((*v753 & 0xFF00FF) * (v470 ^ 0xFF)) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF);
              }

              *v753 = v471;
            }

            v472 = &v752[v684];
            if (v472 >= v68)
            {
              v473 = -v689;
            }

            else
            {
              v473 = 0;
            }

            v66 += v44 + v473;
            v752 = &v472[v473];
            v753 = (v753 + v189);
            --v469;
          }

          while (v469);
          if (v724)
          {
            v474 = &v60[v727];
            if (v474 >= v724)
            {
              v475 = -(v43 * v688);
            }

            else
            {
              v475 = 0;
            }

            v65 += v43 + v475;
            if (v474 >= v724)
            {
              v476 = -(v727 * v688);
            }

            else
            {
              v476 = 0;
            }

            v60 = &v474[v476];
            v68 += 4 * v476 + 4 * v727;
            v66 = v65;
            v752 = v60;
          }

          else
          {
            v752 += v727;
            v66 += v43;
          }

          v753 += v702;
          __ba += v726;
          --v758[0];
        }

        while (v758[0]);
        goto LABEL_940;
      case 3:
        v210 = v684;
        v211 = v62;
        v212 = 4 * v684;
        if (v44)
        {
          v730 = v60;
          v733 = v65;
          v685 = v12;
          v213 = v44;
          do
          {
            v214 = v768[0];
            do
            {
              v215 = *__ba;
              if (v215 == 255)
              {
                *v753 = *v752;
                LOBYTE(v216) = *v66;
              }

              else if (*__ba)
              {
                v217 = v68;
                v218 = v211;
                v219 = v212;
                v220 = PDAM_5790(*v752, *v66, v215);
                v213 = v44;
                v212 = v219;
                v211 = v218;
                v210 = v684;
                v68 = v217;
                *v753 = v220;
                v216 = HIDWORD(v220);
              }

              else
              {
                LOBYTE(v216) = 0;
                *v753 = 0;
              }

              *__ba = v216;
              __ba += v211;
              v221 = &v752[v210];
              if (v221 >= v68)
              {
                v222 = -v689;
              }

              else
              {
                v222 = 0;
              }

              v66 += v213 + v222;
              v752 = &v221[v222];
              v753 = (v753 + v212);
              --v214;
            }

            while (v214);
            if (v724)
            {
              v223 = &v730[v727];
              v224 = -(v43 * v688);
              if (v223 < v724)
              {
                v224 = 0;
              }

              v66 = (v733 + v43 + v224);
              v225 = -(v727 * v688);
              if (v223 < v724)
              {
                v225 = 0;
              }

              v68 += 4 * v225 + 4 * v727;
              v730 = &v223[v225];
              v733 += v43 + v224;
              v752 = v730;
            }

            else
            {
              v752 += v727;
              v66 += v43;
            }

            v753 += v702;
            __ba += v726;
            --v758[0];
          }

          while (v758[0]);
          goto LABEL_761;
        }

        do
        {
          v477 = v768[0];
          do
          {
            v478 = *__ba;
            if (*__ba)
            {
              if (v478 == 255)
              {
                v478 = *v752;
              }

              else
              {
                v478 = (((*v752 & 0xFF00FF) * v478 + 65537 + ((((*v752 & 0xFF00FF) * v478) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF | (((*v752 >> 8) & 0xFF00FF) * v478 + 65537 + (((((*v752 >> 8) & 0xFF00FF) * v478) >> 8) & 0xFF00FF)) & 0xFF00FF00;
              }
            }

            *v753 = v478;
            __ba += v211;
            v479 = &v752[v684];
            if (v479 >= v68)
            {
              v480 = -v689;
            }

            else
            {
              v480 = 0;
            }

            v66 += v480;
            v752 = &v479[v480];
            v753 = (v753 + v212);
            --v477;
          }

          while (v477);
          if (v724)
          {
            v481 = &v60[v727];
            if (v481 >= v724)
            {
              v482 = -(v43 * v688);
            }

            else
            {
              v482 = 0;
            }

            v65 += v43 + v482;
            if (v481 >= v724)
            {
              v483 = -(v727 * v688);
            }

            else
            {
              v483 = 0;
            }

            v60 = &v481[v483];
            v68 += 4 * v483 + 4 * v727;
            v66 = v65;
            v752 = v60;
          }

          else
          {
            v752 += v727;
            v66 += v43;
          }

          v753 += v702;
          __ba += v726;
          --v758[0];
        }

        while (v758[0]);
        v14 = v687;
        goto LABEL_940;
      case 4:
        v730 = v60;
        v686 = v12;
        v129 = v43;
        v130 = v62;
        v131 = v44;
        v707 = -(v129 * v688);
        do
        {
          v734 = v65;
          v739 = v68;
          v132 = v768[0];
          do
          {
            if (~*__ba == 255)
            {
              if (v44)
              {
                LOBYTE(v133) = *v66;
              }

              else
              {
                LOBYTE(v133) = -1;
              }
            }

            else if (*__ba == -1)
            {
              LOBYTE(v133) = 0;
              *v753 = 0;
            }

            else
            {
              if (v44)
              {
                v134 = *v66;
              }

              else
              {
                v134 = 255;
              }

              v135 = PDAM_5790(*v752, v134, ~*__ba);
              *v753 = v135;
              v133 = HIDWORD(v135);
              v44 = v749;
              v68 = v739;
            }

            *__ba = v133;
            __ba += v130;
            v136 = &v752[v684];
            if (v136 >= v68)
            {
              v137 = -v689;
            }

            else
            {
              v137 = 0;
            }

            v66 += v131 + v137;
            v752 = &v136[v137];
            v753 += v684;
            --v132;
          }

          while (v132);
          if (v724)
          {
            v138 = &v730[v727];
            v139 = v707;
            if (v138 < v724)
            {
              v139 = 0;
            }

            v65 = v734 + v701 + v139;
            v140 = -(v727 * v688);
            if (v138 < v724)
            {
              v140 = 0;
            }

            v68 += 4 * v140 + 4 * v727;
            v66 = (v734 + v701 + v139);
            v730 = &v138[v140];
            v752 = v730;
          }

          else
          {
            v752 += v727;
            v66 += v701;
            v65 = v734;
          }

          v753 += v702;
          __ba += v726;
          --v758[0];
        }

        while (v758[0]);
        goto LABEL_742;
      case 5:
        v730 = v60;
        v733 = v65;
        v685 = v12;
        v275 = v62;
        v276 = v758[0];
        v277 = 4 * v684;
        do
        {
          v714 = v276;
          v278 = v693[0];
          v742 = v68;
          do
          {
            v279 = v66;
            v280 = *v66;
            v281 = v277;
            DAMplusDAM(v753, __ba, *v752, v280, *__ba, *v753, *__ba, v280 ^ 0xFF);
            v68 = v742;
            v277 = v281;
            v282 = &__ba[v275];
            v283 = &v752[v684];
            if (v283 >= v742)
            {
              v284 = -v689;
            }

            else
            {
              v284 = 0;
            }

            v66 = &v279[v44 + v284];
            v752 = &v283[v284];
            v753 = (v753 + v277);
            __ba += v275;
            --v278;
          }

          while (v278);
          if (v724)
          {
            v285 = &v730[v727];
            v286 = -(v43 * v688);
            if (v285 < v724)
            {
              v286 = 0;
            }

            v66 = (v733 + v43 + v286);
            v287 = -(v727 * v688);
            if (v285 < v724)
            {
              v287 = 0;
            }

            v68 = v742 + 4 * v287 + 4 * v727;
            v730 = &v285[v287];
            v733 += v43 + v286;
            v752 = v730;
          }

          else
          {
            v752 += v727;
            v66 += v43;
          }

          v753 += v702;
          __ba = &v282[v726];
          v276 = v714 - 1;
          v758[0] = v714 - 1;
        }

        while (v714 != 1);
        goto LABEL_761;
      case 6:
        v730 = v60;
        v733 = v65;
        v685 = v12;
        v310 = v62;
        v311 = v44;
        do
        {
          v312 = v768[0];
          v743 = v68;
          do
          {
            if (*__ba != -1)
            {
              if (~*__ba == 255)
              {
                if (v44)
                {
                  v313 = *v66;
                }

                else
                {
                  v313 = -1;
                }

                *v753 = *v752;
                *__ba = v313;
              }

              else
              {
                if (v44)
                {
                  v314 = *v66;
                }

                else
                {
                  v314 = 255;
                }

                DAplusDAM(v753, __ba, *v753, *__ba, *v752, v314, ~*__ba);
                v44 = v749;
                v68 = v743;
              }
            }

            __ba += v310;
            v315 = &v752[v684];
            if (v315 >= v68)
            {
              v316 = -v689;
            }

            else
            {
              v316 = 0;
            }

            v66 += v311 + v316;
            v752 = &v315[v316];
            v753 += v684;
            --v312;
          }

          while (v312);
          if (v724)
          {
            v317 = &v730[v727];
            v318 = -(v43 * v688);
            if (v317 < v724)
            {
              v318 = 0;
            }

            v66 = (v733 + v43 + v318);
            v319 = -(v727 * v688);
            if (v317 < v724)
            {
              v319 = 0;
            }

            v68 += 4 * v319 + 4 * v727;
            v730 = &v317[v319];
            v733 += v43 + v318;
            v752 = v730;
          }

          else
          {
            v752 += v727;
            v66 += v43;
          }

          v753 += v702;
          __ba += v726;
          --v758[0];
        }

        while (v758[0]);
        goto LABEL_761;
      case 7:
        v226 = v684;
        if (v62)
        {
          v730 = v60;
          v733 = v65;
          v685 = v12;
          v227 = v62;
          v228 = -v689;
          v665 = -(v43 * v688);
          do
          {
            v229 = v768[0];
            do
            {
              v230 = *v66;
              if (v230 != 255)
              {
                if (*v66)
                {
                  v232 = v68;
                  v233 = PDAM_5790(*v753, *__ba, v230);
                  v228 = -v689;
                  v226 = v684;
                  v68 = v232;
                  *v753 = v233;
                  v231 = HIDWORD(v233);
                }

                else
                {
                  LOBYTE(v231) = 0;
                  *v753 = 0;
                }

                *__ba = v231;
              }

              __ba += v227;
              v234 = &v752[v226];
              if (v234 >= v68)
              {
                v235 = v228;
              }

              else
              {
                v235 = 0;
              }

              v66 += v44 + v235;
              v752 = &v234[v235];
              v753 += v684;
              --v229;
            }

            while (v229);
            if (v724)
            {
              v236 = &v730[v727];
              v237 = v665;
              if (v236 < v724)
              {
                v237 = 0;
              }

              v66 = (v733 + v701 + v237);
              v238 = -(v727 * v688);
              if (v236 < v724)
              {
                v238 = 0;
              }

              v68 += 4 * v238 + 4 * v727;
              v730 = &v236[v238];
              v733 += v701 + v237;
              v752 = v730;
            }

            else
            {
              v752 += v727;
              v66 += v701;
            }

            v753 += v702;
            __ba += v726;
            --v758[0];
          }

          while (v758[0]);
          goto LABEL_761;
        }

LABEL_845:
        v484 = v768[0];
        while (1)
        {
          v485 = *v66;
          if (!*v66)
          {
            goto LABEL_849;
          }

          if (v485 != 255)
          {
            break;
          }

LABEL_850:
          v486 = &v752[v684];
          if (v486 >= v68)
          {
            v487 = -v689;
          }

          else
          {
            v487 = 0;
          }

          v66 += v44 + v487;
          v752 = &v486[v487];
          v753 += v684;
          if (!--v484)
          {
            if (v724)
            {
              v488 = &v60[v727];
              if (v488 >= v724)
              {
                v489 = -(v43 * v688);
              }

              else
              {
                v489 = 0;
              }

              v65 += v43 + v489;
              if (v488 >= v724)
              {
                v490 = -(v727 * v688);
              }

              else
              {
                v490 = 0;
              }

              v60 = &v488[v490];
              v68 += 4 * v490 + 4 * v727;
              v66 = v65;
              v752 = v60;
            }

            else
            {
              v752 += v727;
              v66 += v43;
            }

            v753 += v702;
            __ba += v726;
            if (!--v758[0])
            {
              goto LABEL_940;
            }

            goto LABEL_845;
          }
        }

        v485 = (((*v753 & 0xFF00FF) * v485 + 65537 + ((((*v753 & 0xFF00FF) * v485) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF | (((*v753 >> 8) & 0xFF00FF) * v485 + 65537 + (((((*v753 >> 8) & 0xFF00FF) * v485) >> 8) & 0xFF00FF)) & 0xFF00FF00;
LABEL_849:
        *v753 = v485;
        goto LABEL_850;
      case 8:
        v345 = v684;
        if (v62)
        {
          v730 = v60;
          v733 = v65;
          v685 = v12;
          v346 = v62;
          v672 = -(v43 * v688);
          v347 = 4 * v684;
          v348 = -v689;
          do
          {
            v349 = v768[0];
            do
            {
              if (~*v66 != 255)
              {
                if (*v66 == -1)
                {
                  LOBYTE(v350) = 0;
                  *v753 = 0;
                }

                else
                {
                  v351 = v68;
                  v352 = v345;
                  v353 = PDAM_5790(*v753, *__ba, ~*v66);
                  v347 = 4 * v684;
                  v345 = v352;
                  v68 = v351;
                  *v753 = v353;
                  v350 = HIDWORD(v353);
                  v348 = -v689;
                }

                *__ba = v350;
              }

              __ba += v346;
              v354 = &v752[v345];
              if (v354 >= v68)
              {
                v355 = v348;
              }

              else
              {
                v355 = 0;
              }

              v66 += v44 + v355;
              v752 = &v354[v355];
              v753 = (v753 + v347);
              --v349;
            }

            while (v349);
            if (v724)
            {
              v356 = &v730[v727];
              v357 = v672;
              if (v356 < v724)
              {
                v357 = 0;
              }

              v66 = (v733 + v701 + v357);
              v358 = -(v727 * v688);
              if (v356 < v724)
              {
                v358 = 0;
              }

              v68 += 4 * v358 + 4 * v727;
              v730 = &v356[v358];
              v733 += v701 + v357;
              v752 = v730;
            }

            else
            {
              v752 += v727;
              v66 += v701;
            }

            v753 += v702;
            __ba += v726;
            --v758[0];
          }

          while (v758[0]);
          goto LABEL_761;
        }

LABEL_865:
        v491 = v768[0];
        while (1)
        {
          v492 = *v66 ^ 0xFF;
          if (!v492)
          {
            goto LABEL_869;
          }

          if (v492 != 255)
          {
            break;
          }

LABEL_870:
          v493 = &v752[v684];
          if (v493 >= v68)
          {
            v494 = -v689;
          }

          else
          {
            v494 = 0;
          }

          v66 += v44 + v494;
          v752 = &v493[v494];
          v753 += v684;
          if (!--v491)
          {
            if (v724)
            {
              v495 = &v60[v727];
              if (v495 >= v724)
              {
                v496 = -(v43 * v688);
              }

              else
              {
                v496 = 0;
              }

              v65 += v43 + v496;
              if (v495 >= v724)
              {
                v497 = -(v727 * v688);
              }

              else
              {
                v497 = 0;
              }

              v60 = &v495[v497];
              v68 += 4 * v497 + 4 * v727;
              v66 = v65;
              v752 = v60;
            }

            else
            {
              v752 += v727;
              v66 += v43;
            }

            v753 += v702;
            __ba += v726;
            if (!--v758[0])
            {
              goto LABEL_940;
            }

            goto LABEL_865;
          }
        }

        v492 = (((*v753 & 0xFF00FF) * v492 + 65537 + ((((*v753 & 0xFF00FF) * v492) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF | (((*v753 >> 8) & 0xFF00FF) * v492 + 65537 + (((((*v753 >> 8) & 0xFF00FF) * v492) >> 8) & 0xFF00FF)) & 0xFF00FF00;
LABEL_869:
        *v753 = v492;
        goto LABEL_870;
      case 9:
        v730 = v60;
        v733 = v65;
        v685 = v12;
        v154 = v62;
        v656 = -(v43 * v688);
        v155 = v758[0];
        v156 = 4 * v684;
        do
        {
          v740 = v155;
          v157 = v693[0];
          do
          {
            v158 = v68;
            v159 = v156;
            DAMplusDAM(v753, __ba, *v752, *v66, *__ba ^ 0xFF, *v753, *__ba, *v66);
            v156 = v159;
            v68 = v158;
            v160 = &__ba[v154];
            v161 = &v752[v684];
            if (v161 >= v158)
            {
              v162 = -v689;
            }

            else
            {
              v162 = 0;
            }

            v66 += v44 + v162;
            v752 = &v161[v162];
            v753 = (v753 + v159);
            __ba += v154;
            --v157;
          }

          while (v157);
          if (v724)
          {
            v163 = &v730[v727];
            v164 = v656;
            if (v163 < v724)
            {
              v164 = 0;
            }

            v66 = (v733 + v701 + v164);
            v165 = -(v727 * v688);
            if (v163 < v724)
            {
              v165 = 0;
            }

            v68 = v158 + 4 * v165 + 4 * v727;
            v730 = &v163[v165];
            v733 += v701 + v164;
            v752 = v730;
          }

          else
          {
            v752 += v727;
            v66 += v701;
          }

          v753 += v702;
          __ba = &v160[v726];
          v155 = v740 - 1;
          v758[0] = v740 - 1;
        }

        while (v740 != 1);
        goto LABEL_761;
      case 10:
        v730 = v60;
        v733 = v65;
        v685 = v12;
        v331 = v62;
        v332 = v758[0];
        v333 = 4 * v684;
        v334 = -v689;
        do
        {
          v718 = v332;
          v335 = v693[0];
          v744 = v68;
          do
          {
            v746 = v66;
            v336 = *v66;
            v337 = v334;
            v338 = v333;
            DAMplusDAM(v753, __ba, *v752, v336, *__ba ^ 0xFF, *v753, *__ba, v336 ^ 0xFF);
            v334 = v337;
            v333 = v338;
            v68 = v744;
            v339 = &__ba[v331];
            v340 = &v752[v684];
            if (v340 >= v744)
            {
              v341 = v337;
            }

            else
            {
              v341 = 0;
            }

            v66 = &v746[v44 + v341];
            v752 = &v340[v341];
            v753 = (v753 + v333);
            __ba += v331;
            --v335;
          }

          while (v335);
          if (v724)
          {
            v342 = &v730[v727];
            v343 = -(v43 * v688);
            if (v342 < v724)
            {
              v343 = 0;
            }

            v66 = (v733 + v43 + v343);
            v344 = -(v727 * v688);
            if (v342 < v724)
            {
              v344 = 0;
            }

            v68 = v744 + 4 * v344 + 4 * v727;
            v730 = &v342[v344];
            v733 += v43 + v343;
            v752 = v730;
          }

          else
          {
            v752 += v727;
            v66 += v43;
          }

          v753 += v702;
          __ba = &v339[v726];
          v332 = v718 - 1;
          v758[0] = v718 - 1;
        }

        while (v718 != 1);
        goto LABEL_761;
      case 11:
        v730 = v60;
        v733 = v65;
        v685 = v12;
        v706 = 4 * v684;
        if (v62)
        {
          v117 = v62;
          v118 = v44;
          v655 = -(v43 * v688);
          v119 = v758[0];
          do
          {
            v738 = v119;
            v120 = v693[0];
            v121 = v68;
            do
            {
              if (v44)
              {
                v122 = *v66;
              }

              else
              {
                v122 = 255;
              }

              DAplusdDA(v753, __ba, *v753, *__ba, *v752, v122);
              v123 = &__ba[v117];
              v124 = &v752[v684];
              if (v124 >= v121)
              {
                v125 = -v689;
              }

              else
              {
                v125 = 0;
              }

              v66 += v118 + v125;
              v752 = &v124[v125];
              v753 = (v753 + v706);
              __ba += v117;
              --v120;
              v44 = v749;
            }

            while (v120);
            v68 = v121;
            if (v724)
            {
              v126 = &v730[v727];
              v127 = v655;
              if (v126 < v724)
              {
                v127 = 0;
              }

              v66 = (v733 + v701 + v127);
              v128 = -(v727 * v688);
              if (v126 < v724)
              {
                v128 = 0;
              }

              v68 = v121 + 4 * v128 + 4 * v727;
              v730 = &v126[v128];
              v733 += v701 + v127;
              v752 = v730;
            }

            else
            {
              v752 += v727;
              v66 += v701;
            }

            v753 += v702;
            __ba = &v123[v726];
            v119 = v738 - 1;
            v758[0] = v738 - 1;
          }

          while (v738 != 1);
        }

        else
        {
          v442 = v44;
          v657 = -(v43 * v688);
          v443 = v758[0];
          v654 = v726 + v726 * (v758[0] - 1);
          do
          {
            v444 = v693[0];
            v445 = v68;
            do
            {
              if (v44)
              {
                v446 = *v66;
              }

              else
              {
                v446 = 255;
              }

              DplusdDA(v753, *v753, *v752, v446);
              v447 = &v752[v684];
              if (v447 >= v445)
              {
                v448 = -v689;
              }

              else
              {
                v448 = 0;
              }

              v66 += v442 + v448;
              v449 = &v447[v448];
              v752 = v449;
              v753 = (v753 + v706);
              --v444;
              v44 = v749;
            }

            while (v444);
            v68 = v445;
            if (v724)
            {
              v450 = &v730[v727];
              v451 = v657;
              if (v450 < v724)
              {
                v451 = 0;
              }

              v66 = (v733 + v701 + v451);
              v452 = -(v727 * v688);
              if (v450 < v724)
              {
                v452 = 0;
              }

              v68 = v445 + 4 * v452 + 4 * v727;
              v730 = &v450[v452];
              v733 += v701 + v451;
              v752 = v730;
            }

            else
            {
              v752 = &v449[v727];
              v66 += v701;
            }

            v753 += v702;
            v758[0] = --v443;
          }

          while (v443);
          __ba += v654;
        }

        goto LABEL_761;
      case 12:
        if (v62)
        {
          do
          {
            v141 = v65;
            v142 = v768[0];
            do
            {
              if (v44)
              {
                v143 = *v66;
              }

              else
              {
                v143 = 255;
              }

              v144 = ((*v752 >> 8) & 0xFF00FF) + ((*v753 >> 8) & 0xFF00FF);
              v145 = (*v752 & 0xFF00FF) + (*v753 & 0xFF00FF);
              v146 = v143 + *__ba;
              v147 = (v144 << 8) & 0xFF00FF00 | v145 & 0xFF00FF | (15 * (v144 & 0x1000100 | (v145 >> 8) & 0x10001)) | (240 * (v144 & 0x1000100 | (v145 >> 8) & 0x10001));
              if (v146 >= 0xFF)
              {
                LOBYTE(v146) = -1;
              }

              *__ba = v146;
              *v753 = v147;
              v148 = &__ba[v62];
              v149 = &v752[v684];
              if (v149 >= v68)
              {
                v150 = -v689;
              }

              else
              {
                v150 = 0;
              }

              v66 += v44 + v150;
              v752 = &v149[v150];
              v753 += v684;
              __ba += v62;
              --v142;
            }

            while (v142);
            if (v724)
            {
              v151 = &v60[v727];
              if (v151 >= v724)
              {
                v152 = -(v43 * v688);
              }

              else
              {
                v152 = 0;
              }

              v65 += v43 + v152;
              if (v151 >= v724)
              {
                v153 = -(v727 * v688);
              }

              else
              {
                v153 = 0;
              }

              v60 = &v151[v153];
              v68 += 4 * v153 + 4 * v727;
              v66 = (v141 + v43 + v152);
              v752 = v60;
            }

            else
            {
              v752 += v727;
              v66 += v43;
            }

            v753 += v702;
            __ba = &v148[v726];
            --v758[0];
          }

          while (v758[0]);
          v64 = v690;
LABEL_217:
          v14 = v687;
          v24 = v691;
        }

        else
        {
          do
          {
            v461 = v768[0];
            do
            {
              v462 = ((*v752 >> 8) & 0xFF00FF) + ((*v753 >> 8) & 0xFF00FF);
              v463 = (*v752 & 0xFF00FF) + (*v753 & 0xFF00FF);
              *v753 = (v462 << 8) & 0xFF00FF00 | v463 & 0xFF00FF | (15 * (v462 & 0x1000100 | (v463 >> 8) & 0x10001)) | (240 * (v462 & 0x1000100 | (v463 >> 8) & 0x10001));
              v464 = &v752[v684];
              if (v464 >= v68)
              {
                v465 = -v689;
              }

              else
              {
                v465 = 0;
              }

              v66 += v44 + v465;
              v752 = &v464[v465];
              v753 += v684;
              --v461;
            }

            while (v461);
            if (v724)
            {
              v466 = &v60[v727];
              if (v466 >= v724)
              {
                v467 = -(v43 * v688);
              }

              else
              {
                v467 = 0;
              }

              v65 += v43 + v467;
              if (v466 >= v724)
              {
                v468 = -(v727 * v688);
              }

              else
              {
                v468 = 0;
              }

              v60 = &v466[v468];
              v68 += 4 * v468 + 4 * v727;
              v66 = v65;
              v752 = v60;
            }

            else
            {
              v752 += v727;
              v66 += v43;
            }

            v753 += v702;
            __ba += v726;
            --v758[0];
          }

          while (v758[0]);
LABEL_940:
          v64 = v690;
          v24 = v691;
        }

        goto LABEL_763;
      case 13:
        v730 = v60;
        v733 = v65;
        v685 = v12;
        v716 = v62;
        v299 = v44;
        v670 = -(v43 * v688);
        while (1)
        {
          v300 = v768[0];
          v301 = v68;
          do
          {
            if (v44)
            {
              v302 = *v66;
              if (!*v66)
              {
                goto LABEL_485;
              }

              if (v62)
              {
                goto LABEL_480;
              }
            }

            else
            {
              v302 = 255;
              if (v62)
              {
LABEL_480:
                if (*__ba)
                {
                  v303 = PDAmultiplyPDA_5791(*v753, *__ba, *v752, v302);
                  v68 = v301;
                  LODWORD(v62) = v747;
                  v44 = v749;
                  *v753 = v303;
                  *__ba = BYTE4(v303);
                }

                else
                {
                  *v753 = *v752;
                  *__ba = v302;
                }

                goto LABEL_485;
              }
            }

            v304 = PDAmultiplyPDA_5791(*v753, 255, *v752, v302);
            v68 = v301;
            LODWORD(v62) = v747;
            v44 = v749;
            *v753 = v304;
LABEL_485:
            __ba += v716;
            v305 = &v752[v684];
            if (v305 >= v68)
            {
              v306 = -v689;
            }

            else
            {
              v306 = 0;
            }

            v66 += v299 + v306;
            v752 = &v305[v306];
            v753 += v684;
            --v300;
          }

          while (v300);
          if (v724)
          {
            v307 = &v730[v727];
            v308 = v670;
            if (v307 < v724)
            {
              v308 = 0;
            }

            v66 = (v733 + v701 + v308);
            v309 = -(v727 * v688);
            if (v307 < v724)
            {
              v309 = 0;
            }

            v68 += 4 * v309 + 4 * v727;
            v730 = &v307[v309];
            v733 += v701 + v308;
            v752 = v730;
          }

          else
          {
            v752 += v727;
            v66 += v701;
          }

          v753 += v702;
          __ba += v726;
          if (!--v758[0])
          {
            goto LABEL_761;
          }
        }

      case 14:
        v730 = v60;
        v733 = v65;
        v685 = v12;
        v705 = v62;
        v106 = v44;
        v660 = -(v43 * v688);
        while (1)
        {
          v107 = v768[0];
          v108 = v68;
          do
          {
            if (v44)
            {
              v109 = *v66;
              if (!*v66)
              {
                goto LABEL_138;
              }

              if (v62)
              {
                goto LABEL_133;
              }
            }

            else
            {
              v109 = 255;
              if (v62)
              {
LABEL_133:
                if (*__ba)
                {
                  v110 = PDAscreenPDA_5792(*v753, *__ba, *v752, v109);
                  v68 = v108;
                  LODWORD(v62) = v747;
                  v44 = v749;
                  *v753 = v110;
                  *__ba = BYTE4(v110);
                }

                else
                {
                  *v753 = *v752;
                  *__ba = v109;
                }

                goto LABEL_138;
              }
            }

            v111 = PDAscreenPDA_5792(*v753, 0xFFu, *v752, v109);
            v68 = v108;
            LODWORD(v62) = v747;
            v44 = v749;
            *v753 = v111;
LABEL_138:
            __ba += v705;
            v112 = &v752[v684];
            if (v112 >= v68)
            {
              v113 = -v689;
            }

            else
            {
              v113 = 0;
            }

            v66 += v106 + v113;
            v752 = &v112[v113];
            v753 += v684;
            --v107;
          }

          while (v107);
          if (v724)
          {
            v114 = &v730[v727];
            v115 = v660;
            if (v114 < v724)
            {
              v115 = 0;
            }

            v66 = (v733 + v701 + v115);
            v116 = -(v727 * v688);
            if (v114 < v724)
            {
              v116 = 0;
            }

            v68 += 4 * v116 + 4 * v727;
            v730 = &v114[v116];
            v733 += v701 + v115;
            v752 = v730;
          }

          else
          {
            v752 += v727;
            v66 += v701;
          }

          v753 += v702;
          __ba += v726;
          if (!--v758[0])
          {
            goto LABEL_761;
          }
        }

      case 15:
        v730 = v60;
        v733 = v65;
        v685 = v12;
        v710 = v62;
        v199 = v44;
        v664 = -(v43 * v688);
        while (1)
        {
          v200 = v768[0];
          v201 = v68;
          do
          {
            if (v44)
            {
              v202 = *v66;
              if (!*v66)
              {
                goto LABEL_309;
              }

              if (v62)
              {
                goto LABEL_304;
              }
            }

            else
            {
              v202 = 255;
              if (v62)
              {
LABEL_304:
                if (*__ba)
                {
                  v203 = PDAoverlayPDA_5793(*v753, *__ba, *v752, v202);
                  v68 = v201;
                  LODWORD(v62) = v747;
                  v44 = v749;
                  *v753 = v203;
                  *__ba = BYTE4(v203);
                }

                else
                {
                  *v753 = *v752;
                  *__ba = v202;
                }

                goto LABEL_309;
              }
            }

            v204 = PDAoverlayPDA_5793(*v753, 255, *v752, v202);
            v68 = v201;
            LODWORD(v62) = v747;
            v44 = v749;
            *v753 = v204;
LABEL_309:
            __ba += v710;
            v205 = &v752[v684];
            if (v205 >= v68)
            {
              v206 = -v689;
            }

            else
            {
              v206 = 0;
            }

            v66 += v199 + v206;
            v752 = &v205[v206];
            v753 += v684;
            --v200;
          }

          while (v200);
          if (v724)
          {
            v207 = &v730[v727];
            v208 = v664;
            if (v207 < v724)
            {
              v208 = 0;
            }

            v66 = (v733 + v701 + v208);
            v209 = -(v727 * v688);
            if (v207 < v724)
            {
              v209 = 0;
            }

            v68 += 4 * v209 + 4 * v727;
            v730 = &v207[v209];
            v733 += v701 + v208;
            v752 = v730;
          }

          else
          {
            v752 += v727;
            v66 += v701;
          }

          v753 += v702;
          __ba += v726;
          if (!--v758[0])
          {
            goto LABEL_761;
          }
        }

      case 16:
        v730 = v60;
        v733 = v65;
        v685 = v12;
        v704 = v62;
        v95 = v44;
        v659 = -(v43 * v688);
        while (1)
        {
          v96 = v768[0];
          v97 = v68;
          do
          {
            if (v44)
            {
              v98 = *v66;
              if (!*v66)
              {
                goto LABEL_115;
              }

              if (v62)
              {
                goto LABEL_110;
              }
            }

            else
            {
              v98 = 255;
              if (v62)
              {
LABEL_110:
                if (*__ba)
                {
                  v99 = PDAdarkenPDA_5795(*v753, *__ba, *v752, v98);
                  v68 = v97;
                  LODWORD(v62) = v747;
                  v44 = v749;
                  *v753 = v99;
                  *__ba = BYTE4(v99);
                }

                else
                {
                  *v753 = *v752;
                  *__ba = v98;
                }

                goto LABEL_115;
              }
            }

            v100 = PDAdarkenPDA_5795(*v753, 0xFFu, *v752, v98);
            v68 = v97;
            LODWORD(v62) = v747;
            v44 = v749;
            *v753 = v100;
LABEL_115:
            __ba += v704;
            v101 = &v752[v684];
            if (v101 >= v68)
            {
              v102 = -v689;
            }

            else
            {
              v102 = 0;
            }

            v66 += v95 + v102;
            v752 = &v101[v102];
            v753 += v684;
            --v96;
          }

          while (v96);
          if (v724)
          {
            v103 = &v730[v727];
            v104 = v659;
            if (v103 < v724)
            {
              v104 = 0;
            }

            v66 = (v733 + v701 + v104);
            v105 = -(v727 * v688);
            if (v103 < v724)
            {
              v105 = 0;
            }

            v68 += 4 * v105 + 4 * v727;
            v730 = &v103[v105];
            v733 += v701 + v104;
            v752 = v730;
          }

          else
          {
            v752 += v727;
            v66 += v701;
          }

          v753 += v702;
          __ba += v726;
          if (!--v758[0])
          {
            goto LABEL_761;
          }
        }

      case 17:
        v730 = v60;
        v733 = v65;
        v685 = v12;
        v712 = v62;
        v253 = v44;
        v667 = -(v43 * v688);
        while (1)
        {
          v254 = v768[0];
          v255 = v68;
          do
          {
            if (v44)
            {
              v256 = *v66;
              if (!*v66)
              {
                goto LABEL_401;
              }

              if (v62)
              {
                goto LABEL_396;
              }
            }

            else
            {
              v256 = 255;
              if (v62)
              {
LABEL_396:
                if (*__ba)
                {
                  v257 = PDAlightenPDA_5794(*v753, *__ba, *v752, v256);
                  v68 = v255;
                  LODWORD(v62) = v747;
                  v44 = v749;
                  *v753 = v257;
                  *__ba = BYTE4(v257);
                }

                else
                {
                  *v753 = *v752;
                  *__ba = v256;
                }

                goto LABEL_401;
              }
            }

            v258 = PDAlightenPDA_5794(*v753, 0xFFu, *v752, v256);
            v68 = v255;
            LODWORD(v62) = v747;
            v44 = v749;
            *v753 = v258;
LABEL_401:
            __ba += v712;
            v259 = &v752[v684];
            if (v259 >= v68)
            {
              v260 = -v689;
            }

            else
            {
              v260 = 0;
            }

            v66 += v253 + v260;
            v752 = &v259[v260];
            v753 += v684;
            --v254;
          }

          while (v254);
          if (v724)
          {
            v261 = &v730[v727];
            v262 = v667;
            if (v261 < v724)
            {
              v262 = 0;
            }

            v66 = (v733 + v701 + v262);
            v263 = -(v727 * v688);
            if (v261 < v724)
            {
              v263 = 0;
            }

            v68 += 4 * v263 + 4 * v727;
            v730 = &v261[v263];
            v733 += v701 + v262;
            v752 = v730;
          }

          else
          {
            v752 += v727;
            v66 += v701;
          }

          v753 += v702;
          __ba += v726;
          if (!--v758[0])
          {
            goto LABEL_761;
          }
        }

      case 18:
        v730 = v60;
        v733 = v65;
        v685 = v12;
        v717 = v62;
        v320 = v44;
        v671 = -(v43 * v688);
        while (1)
        {
          v321 = v768[0];
          v322 = v68;
          do
          {
            if (v44)
            {
              v323 = *v66;
              if (!*v66)
              {
                goto LABEL_533;
              }

              if (v62)
              {
                goto LABEL_528;
              }
            }

            else
            {
              v323 = 255;
              if (v62)
              {
LABEL_528:
                if (*__ba)
                {
                  v324 = PDAcolordodgePDA_5796(*v753, *__ba, *v752, v323);
                  v68 = v322;
                  LODWORD(v62) = v747;
                  v44 = v749;
                  *v753 = v324;
                  *__ba = BYTE4(v324);
                }

                else
                {
                  *v753 = *v752;
                  *__ba = v323;
                }

                goto LABEL_533;
              }
            }

            v325 = PDAcolordodgePDA_5796(*v753, 255, *v752, v323);
            v68 = v322;
            LODWORD(v62) = v747;
            v44 = v749;
            *v753 = v325;
LABEL_533:
            __ba += v717;
            v326 = &v752[v684];
            if (v326 >= v68)
            {
              v327 = -v689;
            }

            else
            {
              v327 = 0;
            }

            v66 += v320 + v327;
            v752 = &v326[v327];
            v753 += v684;
            --v321;
          }

          while (v321);
          if (v724)
          {
            v328 = &v730[v727];
            v329 = v671;
            if (v328 < v724)
            {
              v329 = 0;
            }

            v66 = (v733 + v701 + v329);
            v330 = -(v727 * v688);
            if (v328 < v724)
            {
              v330 = 0;
            }

            v68 += 4 * v330 + 4 * v727;
            v730 = &v328[v330];
            v733 += v701 + v329;
            v752 = v730;
          }

          else
          {
            v752 += v727;
            v66 += v701;
          }

          v753 += v702;
          __ba += v726;
          if (!--v758[0])
          {
            goto LABEL_761;
          }
        }

      case 19:
        v730 = v60;
        v733 = v65;
        v685 = v12;
        v720 = v62;
        v384 = v44;
        v674 = -(v43 * v688);
        while (1)
        {
          v385 = v768[0];
          v386 = v68;
          do
          {
            if (v44)
            {
              v387 = *v66;
              if (!*v66)
              {
                goto LABEL_638;
              }

              if (v62)
              {
                goto LABEL_633;
              }
            }

            else
            {
              v387 = 255;
              if (v62)
              {
LABEL_633:
                if (*__ba)
                {
                  v388 = PDAcolorburnPDA_5797(*v753, *__ba, *v752, v387);
                  v68 = v386;
                  LODWORD(v62) = v747;
                  v44 = v749;
                  *v753 = v388;
                  *__ba = BYTE4(v388);
                }

                else
                {
                  *v753 = *v752;
                  *__ba = v387;
                }

                goto LABEL_638;
              }
            }

            v389 = PDAcolorburnPDA_5797(*v753, 255, *v752, v387);
            v68 = v386;
            LODWORD(v62) = v747;
            v44 = v749;
            *v753 = v389;
LABEL_638:
            __ba += v720;
            v390 = &v752[v684];
            if (v390 >= v68)
            {
              v391 = -v689;
            }

            else
            {
              v391 = 0;
            }

            v66 += v384 + v391;
            v752 = &v390[v391];
            v753 += v684;
            --v385;
          }

          while (v385);
          if (v724)
          {
            v392 = &v730[v727];
            v393 = v674;
            if (v392 < v724)
            {
              v393 = 0;
            }

            v66 = (v733 + v701 + v393);
            v394 = -(v727 * v688);
            if (v392 < v724)
            {
              v394 = 0;
            }

            v68 += 4 * v394 + 4 * v727;
            v730 = &v392[v394];
            v733 += v701 + v393;
            v752 = v730;
          }

          else
          {
            v752 += v727;
            v66 += v701;
          }

          v753 += v702;
          __ba += v726;
          if (!--v758[0])
          {
            goto LABEL_761;
          }
        }

      case 20:
        v730 = v60;
        v733 = v65;
        v685 = v12;
        v713 = v62;
        v264 = v44;
        v668 = -(v43 * v688);
        while (1)
        {
          v265 = v768[0];
          v266 = v68;
          do
          {
            if (v44)
            {
              v267 = *v66;
              if (!*v66)
              {
                goto LABEL_424;
              }

              if (v62)
              {
                goto LABEL_419;
              }
            }

            else
            {
              v267 = 255;
              if (v62)
              {
LABEL_419:
                if (*__ba)
                {
                  v268 = PDAsoftlightPDA_5799(*v753, *__ba, *v752, v267);
                  v68 = v266;
                  LODWORD(v62) = v747;
                  v44 = v749;
                  *v753 = v268;
                  *__ba = BYTE4(v268);
                }

                else
                {
                  *v753 = *v752;
                  *__ba = v267;
                }

                goto LABEL_424;
              }
            }

            v269 = PDAsoftlightPDA_5799(*v753, 255, *v752, v267);
            v68 = v266;
            LODWORD(v62) = v747;
            v44 = v749;
            *v753 = v269;
LABEL_424:
            __ba += v713;
            v270 = &v752[v684];
            if (v270 >= v68)
            {
              v271 = -v689;
            }

            else
            {
              v271 = 0;
            }

            v66 += v264 + v271;
            v752 = &v270[v271];
            v753 += v684;
            --v265;
          }

          while (v265);
          if (v724)
          {
            v272 = &v730[v727];
            v273 = v668;
            if (v272 < v724)
            {
              v273 = 0;
            }

            v66 = (v733 + v701 + v273);
            v274 = -(v727 * v688);
            if (v272 < v724)
            {
              v274 = 0;
            }

            v68 += 4 * v274 + 4 * v727;
            v730 = &v272[v274];
            v733 += v701 + v273;
            v752 = v730;
          }

          else
          {
            v752 += v727;
            v66 += v701;
          }

          v753 += v702;
          __ba += v726;
          if (!--v758[0])
          {
            goto LABEL_761;
          }
        }

      case 21:
        v730 = v60;
        v733 = v65;
        v685 = v12;
        v715 = v62;
        v288 = v44;
        v669 = -(v43 * v688);
        while (1)
        {
          v289 = v768[0];
          v290 = v68;
          do
          {
            if (v44)
            {
              v291 = *v66;
              if (!*v66)
              {
                goto LABEL_462;
              }

              if (v62)
              {
                goto LABEL_457;
              }
            }

            else
            {
              v291 = 255;
              if (v62)
              {
LABEL_457:
                if (*__ba)
                {
                  v292 = PDAhardlightPDA_5798(*v753, *__ba, *v752, v291);
                  v68 = v290;
                  LODWORD(v62) = v747;
                  v44 = v749;
                  *v753 = v292;
                  *__ba = BYTE4(v292);
                }

                else
                {
                  *v753 = *v752;
                  *__ba = v291;
                }

                goto LABEL_462;
              }
            }

            v293 = PDAhardlightPDA_5798(*v753, 255, *v752, v291);
            v68 = v290;
            LODWORD(v62) = v747;
            v44 = v749;
            *v753 = v293;
LABEL_462:
            __ba += v715;
            v294 = &v752[v684];
            if (v294 >= v68)
            {
              v295 = -v689;
            }

            else
            {
              v295 = 0;
            }

            v66 += v288 + v295;
            v752 = &v294[v295];
            v753 += v684;
            --v289;
          }

          while (v289);
          if (v724)
          {
            v296 = &v730[v727];
            v297 = v669;
            if (v296 < v724)
            {
              v297 = 0;
            }

            v66 = (v733 + v701 + v297);
            v298 = -(v727 * v688);
            if (v296 < v724)
            {
              v298 = 0;
            }

            v68 += 4 * v298 + 4 * v727;
            v730 = &v296[v298];
            v733 += v701 + v297;
            v752 = v730;
          }

          else
          {
            v752 += v727;
            v66 += v701;
          }

          v753 += v702;
          __ba += v726;
          if (!--v758[0])
          {
            goto LABEL_761;
          }
        }

      case 22:
        v730 = v60;
        v733 = v65;
        v685 = v12;
        v719 = v62;
        v373 = v44;
        v673 = -(v43 * v688);
        while (1)
        {
          v374 = v768[0];
          v375 = v68;
          do
          {
            if (v44)
            {
              v376 = *v66;
              if (!*v66)
              {
                goto LABEL_615;
              }

              if (v62)
              {
                goto LABEL_610;
              }
            }

            else
            {
              v376 = 255;
              if (v62)
              {
LABEL_610:
                if (*__ba)
                {
                  v377 = PDAdifferencePDA_5800(*v753, *__ba, *v752, v376, v4, v5, v6, v7, v8, v9, v10, v11);
                  v68 = v375;
                  LODWORD(v62) = v747;
                  v44 = v749;
                  *v753 = v377;
                  *__ba = BYTE4(v377);
                }

                else
                {
                  *v753 = *v752;
                  *__ba = v376;
                }

                goto LABEL_615;
              }
            }

            v378 = PDAdifferencePDA_5800(*v753, 0xFFu, *v752, v376, v4, v5, v6, v7, v8, v9, v10, v11);
            v68 = v375;
            LODWORD(v62) = v747;
            v44 = v749;
            *v753 = v378;
LABEL_615:
            __ba += v719;
            v379 = &v752[v684];
            if (v379 >= v68)
            {
              v380 = -v689;
            }

            else
            {
              v380 = 0;
            }

            v66 += v373 + v380;
            v752 = &v379[v380];
            v753 += v684;
            --v374;
          }

          while (v374);
          if (v724)
          {
            v381 = &v730[v727];
            v382 = v673;
            if (v381 < v724)
            {
              v382 = 0;
            }

            v66 = (v733 + v701 + v382);
            v383 = -(v727 * v688);
            if (v381 < v724)
            {
              v383 = 0;
            }

            v68 += 4 * v383 + 4 * v727;
            v730 = &v381[v383];
            v733 += v701 + v382;
            v752 = v730;
          }

          else
          {
            v752 += v727;
            v66 += v701;
          }

          v753 += v702;
          __ba += v726;
          if (!--v758[0])
          {
            goto LABEL_761;
          }
        }

      case 23:
        v730 = v60;
        v733 = v65;
        v685 = v12;
        v721 = v62;
        v395 = v44;
        v675 = -(v43 * v688);
        while (1)
        {
          v396 = v768[0];
          v397 = v68;
          do
          {
            if (v44)
            {
              v398 = *v66;
              if (!*v66)
              {
                goto LABEL_661;
              }

              if (v62)
              {
                goto LABEL_656;
              }
            }

            else
            {
              v398 = 255;
              if (v62)
              {
LABEL_656:
                if (*__ba)
                {
                  v399 = PDAexclusionPDA_5801(*v753, *__ba, *v752, v398);
                  v68 = v397;
                  LODWORD(v62) = v747;
                  v44 = v749;
                  *v753 = v399;
                  *__ba = BYTE4(v399);
                }

                else
                {
                  *v753 = *v752;
                  *__ba = v398;
                }

                goto LABEL_661;
              }
            }

            v400 = PDAexclusionPDA_5801(*v753, 255, *v752, v398);
            v68 = v397;
            LODWORD(v62) = v747;
            v44 = v749;
            *v753 = v400;
LABEL_661:
            __ba += v721;
            v401 = &v752[v684];
            if (v401 >= v68)
            {
              v402 = -v689;
            }

            else
            {
              v402 = 0;
            }

            v66 += v395 + v402;
            v752 = &v401[v402];
            v753 += v684;
            --v396;
          }

          while (v396);
          if (v724)
          {
            v403 = &v730[v727];
            v404 = v675;
            if (v403 < v724)
            {
              v404 = 0;
            }

            v66 = (v733 + v701 + v404);
            v405 = -(v727 * v688);
            if (v403 < v724)
            {
              v405 = 0;
            }

            v68 += 4 * v405 + 4 * v727;
            v730 = &v403[v405];
            v733 += v701 + v404;
            v752 = v730;
          }

          else
          {
            v752 += v727;
            v66 += v701;
          }

          v753 += v702;
          __ba += v726;
          if (!--v758[0])
          {
            goto LABEL_761;
          }
        }

      case 24:
        v730 = v60;
        v733 = v65;
        v685 = v12;
        v709 = v62;
        v177 = v44;
        v662 = -(v43 * v688);
        while (1)
        {
          v178 = v768[0];
          v179 = v68;
          do
          {
            if (v44)
            {
              v180 = *v66;
              if (!*v66)
              {
                goto LABEL_266;
              }

              if (v62)
              {
                goto LABEL_261;
              }
            }

            else
            {
              v180 = 255;
              if (v62)
              {
LABEL_261:
                if (*__ba)
                {
                  v181 = PDAhuePDA_5802(*v753, *__ba, *v752, v180);
                  v68 = v179;
                  LODWORD(v62) = v747;
                  v44 = v749;
                  *v753 = v181;
                  *__ba = BYTE4(v181);
                }

                else
                {
                  *v753 = *v752;
                  *__ba = v180;
                }

                goto LABEL_266;
              }
            }

            v182 = PDAhuePDA_5802(*v753, 255, *v752, v180);
            v68 = v179;
            LODWORD(v62) = v747;
            v44 = v749;
            *v753 = v182;
LABEL_266:
            __ba += v709;
            v183 = &v752[v684];
            if (v183 >= v68)
            {
              v184 = -v689;
            }

            else
            {
              v184 = 0;
            }

            v66 += v177 + v184;
            v752 = &v183[v184];
            v753 += v684;
            --v178;
          }

          while (v178);
          if (v724)
          {
            v185 = &v730[v727];
            v186 = v662;
            if (v185 < v724)
            {
              v186 = 0;
            }

            v66 = (v733 + v701 + v186);
            v187 = -(v727 * v688);
            if (v185 < v724)
            {
              v187 = 0;
            }

            v68 += 4 * v187 + 4 * v727;
            v730 = &v185[v187];
            v733 += v701 + v186;
            v752 = v730;
          }

          else
          {
            v752 += v727;
            v66 += v701;
          }

          v753 += v702;
          __ba += v726;
          if (!--v758[0])
          {
            goto LABEL_761;
          }
        }

      case 25:
        v730 = v60;
        v733 = v65;
        v685 = v12;
        v708 = v62;
        v166 = v44;
        v661 = -(v43 * v688);
        while (1)
        {
          v167 = v768[0];
          v168 = v68;
          do
          {
            if (v44)
            {
              v169 = *v66;
              if (!*v66)
              {
                goto LABEL_243;
              }

              if (v62)
              {
                goto LABEL_238;
              }
            }

            else
            {
              v169 = 255;
              if (v62)
              {
LABEL_238:
                if (*__ba)
                {
                  v170 = PDAsaturationPDA_5803(*v753, *__ba, *v752, v169);
                  v68 = v168;
                  LODWORD(v62) = v747;
                  v44 = v749;
                  *v753 = v170;
                  *__ba = BYTE4(v170);
                }

                else
                {
                  *v753 = *v752;
                  *__ba = v169;
                }

                goto LABEL_243;
              }
            }

            v171 = PDAsaturationPDA_5803(*v753, 255, *v752, v169);
            v68 = v168;
            LODWORD(v62) = v747;
            v44 = v749;
            *v753 = v171;
LABEL_243:
            __ba += v708;
            v172 = &v752[v684];
            if (v172 >= v68)
            {
              v173 = -v689;
            }

            else
            {
              v173 = 0;
            }

            v66 += v166 + v173;
            v752 = &v172[v173];
            v753 += v684;
            --v167;
          }

          while (v167);
          if (v724)
          {
            v174 = &v730[v727];
            v175 = v661;
            if (v174 < v724)
            {
              v175 = 0;
            }

            v66 = (v733 + v701 + v175);
            v176 = -(v727 * v688);
            if (v174 < v724)
            {
              v176 = 0;
            }

            v68 += 4 * v176 + 4 * v727;
            v730 = &v174[v176];
            v733 += v701 + v175;
            v752 = v730;
          }

          else
          {
            v752 += v727;
            v66 += v701;
          }

          v753 += v702;
          __ba += v726;
          if (!--v758[0])
          {
            goto LABEL_761;
          }
        }

      case 26:
        v730 = v60;
        v686 = v12;
        v428 = v43;
        v429 = v62;
        v430 = v44;
        *v695 = -(v428 * v688);
        while (1)
        {
          v736 = v65;
          v431 = v768[0];
          v432 = v68;
          do
          {
            if (v44)
            {
              v433 = *v66;
              if (!*v66)
              {
                goto LABEL_730;
              }

              if (v62)
              {
                goto LABEL_725;
              }
            }

            else
            {
              v433 = 255;
              if (v62)
              {
LABEL_725:
                v434 = *v752;
                if (*__ba)
                {
                  v435 = PDAluminosityPDA_5804(v434, v433, *v753, *__ba);
                  v68 = v432;
                  LODWORD(v62) = v747;
                  v44 = v749;
                  *v753 = v435;
                  *__ba = BYTE4(v435);
                }

                else
                {
                  *v753 = v434;
                  *__ba = v433;
                }

                goto LABEL_730;
              }
            }

            v436 = PDAluminosityPDA_5804(*v752, v433, *v753, 255);
            v68 = v432;
            LODWORD(v62) = v747;
            v44 = v749;
            *v753 = v436;
LABEL_730:
            __ba += v429;
            v437 = &v752[v684];
            if (v437 >= v68)
            {
              v438 = -v689;
            }

            else
            {
              v438 = 0;
            }

            v66 += v430 + v438;
            v752 = &v437[v438];
            v753 += v684;
            --v431;
          }

          while (v431);
          if (v724)
          {
            v439 = &v730[v727];
            v440 = *v695;
            if (v439 < v724)
            {
              v440 = 0;
            }

            v65 = v736 + v701 + v440;
            v441 = -(v727 * v688);
            if (v439 < v724)
            {
              v441 = 0;
            }

            v68 += 4 * v441 + 4 * v727;
            v66 = (v736 + v701 + v440);
            v730 = &v439[v441];
            v752 = v730;
          }

          else
          {
            v752 += v727;
            v66 += v701;
            v65 = v736;
          }

          v753 += v702;
          __ba += v726;
          if (!--v758[0])
          {
            goto LABEL_742;
          }
        }

      case 27:
        v730 = v60;
        v733 = v65;
        v685 = v12;
        v703 = v62;
        v84 = v44;
        v658 = -(v43 * v688);
        while (1)
        {
          v85 = v768[0];
          v86 = v68;
          do
          {
            if (v44)
            {
              v87 = *v66;
              if (!*v66)
              {
                goto LABEL_92;
              }

              if (v62)
              {
                goto LABEL_87;
              }
            }

            else
            {
              v87 = 255;
              if (v62)
              {
LABEL_87:
                if (*__ba)
                {
                  v88 = PDAluminosityPDA_5804(*v753, *__ba, *v752, v87);
                  v68 = v86;
                  LODWORD(v62) = v747;
                  v44 = v749;
                  *v753 = v88;
                  *__ba = BYTE4(v88);
                }

                else
                {
                  *v753 = *v752;
                  *__ba = v87;
                }

                goto LABEL_92;
              }
            }

            v89 = PDAluminosityPDA_5804(*v753, 255, *v752, v87);
            v68 = v86;
            LODWORD(v62) = v747;
            v44 = v749;
            *v753 = v89;
LABEL_92:
            __ba += v703;
            v90 = &v752[v684];
            if (v90 >= v68)
            {
              v91 = -v689;
            }

            else
            {
              v91 = 0;
            }

            v66 += v84 + v91;
            v752 = &v90[v91];
            v753 += v684;
            --v85;
          }

          while (v85);
          if (v724)
          {
            v92 = &v730[v727];
            v93 = v658;
            if (v92 < v724)
            {
              v93 = 0;
            }

            v66 = (v733 + v701 + v93);
            v94 = -(v727 * v688);
            if (v92 < v724)
            {
              v94 = 0;
            }

            v68 += 4 * v94 + 4 * v727;
            v730 = &v92[v94];
            v733 += v701 + v93;
            v752 = v730;
          }

          else
          {
            v752 += v727;
            v66 += v701;
          }

          v753 += v702;
          __ba += v726;
          if (!--v758[0])
          {
            goto LABEL_761;
          }
        }

      case 28:
        v730 = v60;
        v733 = v65;
        v685 = v12;
        v722 = v62;
        v406 = v44;
        v676 = -(v43 * v688);
        while (1)
        {
          v407 = v768[0];
          v408 = v68;
          do
          {
            if (v44)
            {
              v409 = *v66;
              if (!*v66)
              {
                goto LABEL_684;
              }

              if (v62)
              {
                goto LABEL_679;
              }
            }

            else
            {
              v409 = 255;
              if (v62)
              {
LABEL_679:
                if (*__ba)
                {
                  v410 = PDAtranspose_huePDA(*v753, *__ba, *v752, v409);
                  v68 = v408;
                  LODWORD(v62) = v747;
                  v44 = v749;
                  *v753 = v410;
                  *__ba = BYTE4(v410);
                }

                else
                {
                  *v753 = *v752;
                  *__ba = v409;
                }

                goto LABEL_684;
              }
            }

            v411 = PDAtranspose_huePDA(*v753, 255, *v752, v409);
            v68 = v408;
            LODWORD(v62) = v747;
            v44 = v749;
            *v753 = v411;
LABEL_684:
            __ba += v722;
            v412 = &v752[v684];
            if (v412 >= v68)
            {
              v413 = -v689;
            }

            else
            {
              v413 = 0;
            }

            v66 += v406 + v413;
            v752 = &v412[v413];
            v753 += v684;
            --v407;
          }

          while (v407);
          if (v724)
          {
            v414 = &v730[v727];
            v415 = v676;
            if (v414 < v724)
            {
              v415 = 0;
            }

            v66 = (v733 + v701 + v415);
            v416 = -(v727 * v688);
            if (v414 < v724)
            {
              v416 = 0;
            }

            v68 += 4 * v416 + 4 * v727;
            v730 = &v414[v416];
            v733 += v701 + v415;
            v752 = v730;
          }

          else
          {
            v752 += v727;
            v66 += v701;
          }

          v753 += v702;
          __ba += v726;
          if (!--v758[0])
          {
            goto LABEL_761;
          }
        }

      case 29:
        v730 = v60;
        v733 = v65;
        v685 = v12;
        v723 = v62;
        v417 = v44;
        v677 = -(v43 * v688);
        while (1)
        {
          v418 = v768[0];
          v419 = v68;
          do
          {
            if (v44)
            {
              v420 = *v66;
              if (!*v66)
              {
                goto LABEL_707;
              }

              if (v62)
              {
                goto LABEL_702;
              }
            }

            else
            {
              v420 = 255;
              if (v62)
              {
LABEL_702:
                if (*__ba)
                {
                  v421 = PDAtranspose_saturationPDA(*v753, *__ba, *v752, v420);
                  v68 = v419;
                  LODWORD(v62) = v747;
                  v44 = v749;
                  *v753 = v421;
                  *__ba = BYTE4(v421);
                }

                else
                {
                  *v753 = *v752;
                  *__ba = v420;
                }

                goto LABEL_707;
              }
            }

            v422 = PDAtranspose_saturationPDA(*v753, 255, *v752, v420);
            v68 = v419;
            LODWORD(v62) = v747;
            v44 = v749;
            *v753 = v422;
LABEL_707:
            __ba += v723;
            v423 = &v752[v684];
            if (v423 >= v68)
            {
              v424 = -v689;
            }

            else
            {
              v424 = 0;
            }

            v66 += v417 + v424;
            v752 = &v423[v424];
            v753 += v684;
            --v418;
          }

          while (v418);
          if (v724)
          {
            v425 = &v730[v727];
            v426 = v677;
            if (v425 < v724)
            {
              v426 = 0;
            }

            v66 = (v733 + v701 + v426);
            v427 = -(v727 * v688);
            if (v425 < v724)
            {
              v427 = 0;
            }

            v68 += 4 * v427 + 4 * v727;
            v730 = &v425[v427];
            v733 += v701 + v426;
            v752 = v730;
          }

          else
          {
            v752 += v727;
            v66 += v701;
          }

          v753 += v702;
          __ba += v726;
          if (!--v758[0])
          {
            goto LABEL_761;
          }
        }

      case 30:
        v730 = v60;
        v686 = v12;
        v359 = v43;
        v360 = v62;
        v361 = v44;
        *v694 = -(v359 * v688);
        while (1)
        {
          v735 = v65;
          v362 = v768[0];
          v363 = v68;
          do
          {
            if (v44)
            {
              v364 = *v66;
              if (!*v66)
              {
                goto LABEL_592;
              }

              if (v62)
              {
                goto LABEL_587;
              }
            }

            else
            {
              v364 = 255;
              if (v62)
              {
LABEL_587:
                v365 = *v752;
                if (*__ba)
                {
                  v366 = PDAtranspose_luminosityPDA(v365, v364, *v753, *__ba);
                  v68 = v363;
                  LODWORD(v62) = v747;
                  v44 = v749;
                  *v753 = v366;
                  *__ba = BYTE4(v366);
                }

                else
                {
                  *v753 = v365;
                  *__ba = v364;
                }

                goto LABEL_592;
              }
            }

            v367 = PDAtranspose_luminosityPDA(*v752, v364, *v753, 255);
            v68 = v363;
            LODWORD(v62) = v747;
            v44 = v749;
            *v753 = v367;
LABEL_592:
            __ba += v360;
            v368 = &v752[v684];
            if (v368 >= v68)
            {
              v369 = -v689;
            }

            else
            {
              v369 = 0;
            }

            v66 += v361 + v369;
            v752 = &v368[v369];
            v753 += v684;
            --v362;
          }

          while (v362);
          if (v724)
          {
            v370 = &v730[v727];
            v371 = *v694;
            if (v370 < v724)
            {
              v371 = 0;
            }

            v65 = v735 + v701 + v371;
            v372 = -(v727 * v688);
            if (v370 < v724)
            {
              v372 = 0;
            }

            v68 += 4 * v372 + 4 * v727;
            v66 = (v735 + v701 + v371);
            v730 = &v370[v372];
            v752 = v730;
          }

          else
          {
            v752 += v727;
            v66 += v701;
            v65 = v735;
          }

          v753 += v702;
          __ba += v726;
          if (!--v758[0])
          {
LABEL_742:
            v14 = v687;
            v12 = v686;
            v64 = v690;
            v24 = v691;
            v43 = v701;
            goto LABEL_762;
          }
        }

      case 31:
        v730 = v60;
        v733 = v65;
        v685 = v12;
        v711 = v62;
        v242 = v44;
        v666 = -(v43 * v688);
        break;
      default:
        goto LABEL_940;
    }

LABEL_369:
    v243 = v768[0];
    v244 = v68;
    while (1)
    {
      if (v44)
      {
        v245 = *v66;
        if (!*v66)
        {
          goto LABEL_378;
        }

        if (!v62)
        {
          goto LABEL_376;
        }
      }

      else
      {
        v245 = 255;
        if (!v62)
        {
LABEL_376:
          v247 = PDAtranspose_luminosityPDA(*v753, 255, *v752, v245);
          v68 = v244;
          LODWORD(v62) = v747;
          v44 = v749;
          *v753 = v247;
          goto LABEL_378;
        }
      }

      if (*__ba)
      {
        v246 = PDAtranspose_luminosityPDA(*v753, *__ba, *v752, v245);
        v68 = v244;
        LODWORD(v62) = v747;
        v44 = v749;
        *v753 = v246;
        *__ba = BYTE4(v246);
      }

      else
      {
        *v753 = *v752;
        *__ba = v245;
      }

LABEL_378:
      __ba += v711;
      v248 = &v752[v684];
      if (v248 >= v68)
      {
        v249 = -v689;
      }

      else
      {
        v249 = 0;
      }

      v66 += v242 + v249;
      v752 = &v248[v249];
      v753 += v684;
      if (!--v243)
      {
        if (v724)
        {
          v250 = &v730[v727];
          v251 = v666;
          if (v250 < v724)
          {
            v251 = 0;
          }

          v66 = (v733 + v701 + v251);
          v252 = -(v727 * v688);
          if (v250 < v724)
          {
            v252 = 0;
          }

          v68 += 4 * v252 + 4 * v727;
          v730 = &v250[v252];
          v733 += v701 + v251;
          v752 = v730;
        }

        else
        {
          v752 += v727;
          v66 += v701;
        }

        v753 += v702;
        __ba += v726;
        if (!--v758[0])
        {
LABEL_761:
          v14 = v687;
          v12 = v685;
          v64 = v690;
          v24 = v691;
          v43 = v701;
          v65 = v733;
LABEL_762:
          v60 = v730;
LABEL_763:
          if (!v64)
          {
            return 1;
          }

          v61 = v68;
          v757 = 0;
LABEL_765:
          if (!shape_enum_clip_next(v64, &v757 + 1, &v757, v768, v758))
          {
            v56 = v64;
            goto LABEL_1275;
          }

          v690 = v64;
          v691 = v24;
          if (v724)
          {
            v27 = v692;
            v753 = (v680 + 4 * v692 * v757 + 4 * SHIDWORD(v757));
            v453 = (v757 + *(v683 + 60)) % v688;
            v67 = v768[0];
            v454 = (HIDWORD(v757) + *(v683 + 56)) % v689;
            v455 = &v24[v727 * v453];
            v60 = &v455[v454];
            v68 = &v455[v689];
            v62 = v747;
            v456 = __ba;
            if (v747)
            {
              v456 = &v682[v681 * v757 + SHIDWORD(v757)];
            }

            __ba = v456;
            v457 = v726;
            if (v747)
            {
              v457 = v681 - v768[0];
            }

            v726 = v457;
            if (v749)
            {
              v44 = v749;
            }

            else
            {
              v44 = 0;
            }

            if (v749)
            {
              v65 = &v12[v43 * v453 + v454];
              v66 = v65;
            }

            v693[0] = v768[0];
            v752 = v60;
            v678 = (v757 + *(v683 + 60)) % v688;
            v679 = (HIDWORD(v757) + *(v683 + 56)) % v689;
          }

          else
          {
            v458 = SHIDWORD(v757) * v684;
            v693[0] = v768[0];
            v27 = v692;
            v753 = (v680 + 4 * v692 * v757 + 4 * v458);
            v67 = v768[0] * v684;
            v752 = &v24[v757 * v689 + v458];
            v727 = v689 - v768[0] * v684;
            v62 = v747;
            v459 = __ba;
            if (v747)
            {
              v459 = &v682[v681 * v757 + SHIDWORD(v757) * v684];
            }

            __ba = v459;
            v460 = v726;
            if (v747)
            {
              v460 = v681 - v768[0] * v684;
            }

            v726 = v460;
            if (v749)
            {
              v44 = v749;
            }

            else
            {
              v44 = 0;
            }

            v724 = 0;
            if (v749)
            {
              v66 = &v12[v757 * v688 + v458];
              v43 = v688 - v67;
            }

            v68 = v61;
          }

          goto LABEL_69;
        }

        goto LABEL_369;
      }
    }
  }

  v21 = *(v3 + 128);
  if ((v21 | 8) == 8)
  {
    if ((*v3 & 0xFF00) == 0x400)
    {
      cmyk32_mark_constmask(v3, v14);
    }

    else
    {
      cmyk32_mark_pixelmask(v3, v14);
    }

    return 1;
  }

  v28 = *(v3 + 112);
  v29 = *(v3 + 116);
  v30 = (v28 + 15) & 0xFFFFFFF0;
  v31 = v30 * v29;
  if (v31 <= 4096)
  {
    v33 = v768;
    v34 = v3;
LABEL_41:
    CGSConvertBitsToMask(v20, *(v34 + 124), v33, v30, v28, v29, v21);
    v51 = *(v34 + 112);
    v764 = *(v34 + 96);
    v765 = v51;
    v52 = *(v34 + 144);
    v766 = *(v34 + 128);
    v767 = v52;
    v53 = *(v34 + 48);
    v760 = *(v34 + 32);
    v761 = v53;
    v54 = *(v34 + 80);
    v762 = *(v34 + 64);
    v763 = v54;
    v55 = *(v34 + 16);
    *v758 = *v34;
    v759 = v55;
    HIDWORD(v765) = (v28 + 15) & 0xFFFFFFF0;
    *(&v766 + 1) = v33;
    if (BYTE1(v758[0]) << 8 == 1024)
    {
      cmyk32_mark_constmask(v758, v14);
    }

    else
    {
      cmyk32_mark_pixelmask(v758, v14);
    }

    if (v33 != v768)
    {
      v56 = v33;
      goto LABEL_1275;
    }

    return 1;
  }

  v32 = malloc_type_malloc(v31, 0x97CEE3C3uLL);
  if (v32)
  {
    v33 = v32;
    v34 = v683;
    v20 = *(v683 + 136);
    v21 = *(v683 + 128);
    goto LABEL_41;
  }

  return 1;
}