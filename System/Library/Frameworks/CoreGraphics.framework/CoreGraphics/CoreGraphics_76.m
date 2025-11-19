uint64_t argb32_sample_RGBA32(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v6 = *(result + 64);
  v7 = *(result + 72);
  v8 = *(result + 88);
  v73 = *(result + 80);
  v9 = *(result + 112);
  v10 = *(result + 120);
  v72 = *(result + 188);
  v11 = *(result + 152) - 4;
  v12 = *(result + 144) - 1;
  v13 = *(result + 32);
  if (*(result + 40))
  {
    v14 = 0;
  }

  else
  {
    v14 = 255;
  }

  v15 = v13 + ((*(result + 260) - 1) * v4) + 4 * *(result + 256) - 4;
  while (1)
  {
LABEL_5:
    if (a3 >= v7)
    {
      if (a3 <= v8)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        HIDWORD(v26) = HIDWORD(a3);
      }

      else
      {
        v20 = *(result + 216);
        v21 = *(result + 224) + v8;
        v22 = v21 - a3 + (v20 >> 1);
        if (v22 < 1)
        {
          goto LABEL_37;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (*(result + 232) * v22) >> 32;
        }

        v25 = v72 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v16 = *(result + 216);
      v17 = v7 - *(result + 224);
      v18 = a3 - v17 + (v16 >> 1);
      if (v18 < 1)
      {
        goto LABEL_37;
      }

      if (v18 >= v16)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (*(result + 232) * v18) >> 32;
      }

      v25 = v72 | v19;
      v26 = v17 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v6)
    {
      break;
    }

    v27 = *(result + 192);
    v28 = v6 - *(result + 200);
    v29 = a2 - v28 + (v27 >> 1);
    if (v29 >= 1)
    {
      if (v29 < v27)
      {
        v25 = ((v25 >> 15) * (((*(result + 208) * v29) >> 32) >> 15)) | v72;
      }

      v30 = v28 + 0x1000000;
      v31 = 32;
      goto LABEL_29;
    }

LABEL_37:
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

  if (a2 <= v73)
  {
    v31 = (a2 >> 26) & 0x3C;
    v30 = a2;
    goto LABEL_29;
  }

  v32 = *(result + 192);
  v33 = *(result + 200) + v73;
  v34 = v33 - a2 + (v32 >> 1);
  if (v34 < 1)
  {
    goto LABEL_37;
  }

  if (v34 < v32)
  {
    v25 = ((v25 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v72;
  }

  v30 = v33 - 0x1000000;
  v31 = 28;
LABEL_29:
  if (v25 < 0x400000)
  {
    goto LABEL_37;
  }

  v35 = v13 + SHIDWORD(v26) * v4;
  v36 = v30 >> 32;
  v37 = v35 + 4 * v36;
  v38 = *(result + 32);
  if (v15 >= v37)
  {
    v39 = (v35 + 4 * v36);
  }

  else
  {
    v39 = v15;
  }

  if (v39 < v38)
  {
    v39 = *(result + 32);
  }

  v40 = bswap32(*v39);
  if (!v5)
  {
    goto LABEL_39;
  }

  v41 = *(v5 + (v31 | v24));
LABEL_54:
  v50 = v41 & 0xF;
  v51 = HIBYTE(v41) & 3;
  switch(v50)
  {
    case 1:
      v69 = (v37 + SBYTE1(v41) * v4);
      if (v15 < v69)
      {
        v69 = v15;
      }

      if (v69 < v38)
      {
        v69 = v38;
      }

      v70 = interpolate_8888_21865[v51];
      v71 = v51 + 1;
      v67 = v40 - ((v70 & v40) >> v71);
      v68 = (bswap32(*v69) & v70) >> v71;
LABEL_82:
      v40 = v67 + v68;
      break;
    case 2:
      v65 = (v37 + ((HIWORD(v41) << 56) >> 54));
      if (v15 < v65)
      {
        v65 = v15;
      }

      if (v65 < v38)
      {
        v65 = v38;
      }

      v61 = bswap32(*v65);
      v62 = (v41 >> 28) & 3;
      v63 = interpolate_8888_21865[v62];
      v64 = v63 & v40;
LABEL_76:
      v66 = v62 + 1;
      v67 = v40 - (v64 >> v66);
      v68 = (v61 & v63) >> v66;
      goto LABEL_82;
    case 3:
      v52 = HIWORD(v41) << 56;
      v53 = (v37 + (v52 >> 54));
      if (v15 < v53)
      {
        v53 = v15;
      }

      if (v53 < v38)
      {
        v53 = v38;
      }

      v54 = bswap32(*v53);
      v55 = v37 + SBYTE1(v41) * v4;
      if (v15 >= v55)
      {
        v56 = (v37 + SBYTE1(v41) * v4);
      }

      else
      {
        v56 = v15;
      }

      if (v56 < v38)
      {
        v56 = v38;
      }

      v57 = bswap32(*v56);
      v58 = (v55 + (v52 >> 54));
      if (v15 < v58)
      {
        v58 = v15;
      }

      if (v58 < v38)
      {
        v58 = v38;
      }

      v59 = interpolate_8888_21865[v51];
      v60 = v51 + 1;
      v40 = v40 - ((v59 & v40) >> v60) + ((v59 & v57) >> v60);
      v61 = v54 - ((v59 & v54) >> v60) + ((bswap32(*v58) & v59) >> v60);
      v62 = (v41 >> 28) & 3;
      v63 = interpolate_8888_21865[v62];
      v64 = v40 & v63;
      goto LABEL_76;
  }

LABEL_39:
  HIDWORD(v42) = v40 | v14;
  LODWORD(v42) = v40 | v14;
  *(v11 + 4) = v42 >> 8;
  *(v12 + 1) = v25 >> 22;
  if (a4 != 1)
  {
    v43 = 0;
    a2 += v9;
    v44 = v73 - a2;
    a3 += v10;
    v45 = v8 - a3;
    v46 = -4;
    while (((v45 | v44 | (a3 - v7) | (a2 - v6)) & 0x8000000000000000) == 0)
    {
      v47 = v13 + SHIDWORD(a3) * v4;
      v37 = v47 + 4 * (a2 >> 32);
      v38 = *(result + 32);
      if (v15 >= v37)
      {
        v48 = (v47 + 4 * (a2 >> 32));
      }

      else
      {
        v48 = v15;
      }

      if (v48 < v38)
      {
        v48 = *(result + 32);
      }

      v40 = bswap32(*v48);
      if (v5)
      {
        v41 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v41 & 0xF) != 0)
        {
          v12 += v43 + 1;
          v11 -= v46;
          a4 += ~v43;
          v25 = -1;
          goto LABEL_54;
        }
      }

      HIDWORD(v49) = v40 | v14;
      LODWORD(v49) = v40 | v14;
      *(v11 + 4 * v43 + 8) = v49 >> 8;
      *(v12 + v43++ + 2) = -1;
      v46 -= 4;
      a2 += v9;
      v44 -= v9;
      a3 += v10;
      v45 -= v10;
      if (a4 - 1 == v43)
      {
        return result;
      }
    }

    v12 += v43 + 1;
    v11 -= v46;
    a4 += ~v43;
    if (a4)
    {
      goto LABEL_5;
    }
  }

  return result;
}

uint64_t argb32_sample_RGB24(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 24);
  v6 = *(result + 176);
  v7 = *(result + 64);
  v8 = *(result + 72);
  v9 = *(result + 88);
  v73 = *(result + 80);
  v10 = *(result + 112);
  v11 = *(result + 120);
  v12 = *(result + 152) - 4;
  v13 = *(result + 144) - 1;
  v72 = *(result + 188);
  v14 = v4 + (3 * *(result + 256)) + ((*(result + 260) - 1) * v5) - 3;
  while (1)
  {
LABEL_2:
    if (a3 >= v8)
    {
      if (a3 <= v9)
      {
        v23 = (a3 >> 22) & 0x3C0;
        v24 = 0x3FFFFFFF;
        HIDWORD(v25) = HIDWORD(a3);
      }

      else
      {
        v19 = *(result + 216);
        v20 = *(result + 224) + v9;
        v21 = v20 - a3 + (v19 >> 1);
        if (v21 < 1)
        {
          goto LABEL_34;
        }

        if (v21 >= v19)
        {
          LODWORD(v22) = 0x3FFFFFFF;
        }

        else
        {
          v22 = (*(result + 232) * v21) >> 32;
        }

        v24 = v72 | v22;
        v25 = v20 - 0x1000000;
        v23 = 448;
      }
    }

    else
    {
      v15 = *(result + 216);
      v16 = v8 - *(result + 224);
      v17 = a3 - v16 + (v15 >> 1);
      if (v17 < 1)
      {
        goto LABEL_34;
      }

      if (v17 >= v15)
      {
        LODWORD(v18) = 0x3FFFFFFF;
      }

      else
      {
        v18 = (*(result + 232) * v17) >> 32;
      }

      v24 = v72 | v18;
      v25 = v16 + 0x1000000;
      v23 = 512;
    }

    if (a2 >= v7)
    {
      break;
    }

    v26 = *(result + 192);
    v27 = v7 - *(result + 200);
    v28 = a2 - v27 + (v26 >> 1);
    if (v28 >= 1)
    {
      if (v28 < v26)
      {
        v24 = ((v24 >> 15) * (((*(result + 208) * v28) >> 32) >> 15)) | v72;
      }

      v29 = v27 + 0x1000000;
      v30 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v10;
    a3 += v11;
    v12 += 4;
    *++v13 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v73)
  {
    v30 = (a2 >> 26) & 0x3C;
    v29 = a2;
    goto LABEL_26;
  }

  v31 = *(result + 192);
  v32 = *(result + 200) + v73;
  v33 = v32 - a2 + (v31 >> 1);
  if (v33 < 1)
  {
    goto LABEL_34;
  }

  if (v33 < v31)
  {
    v24 = ((v24 >> 15) * (((*(result + 208) * v33) >> 32) >> 15)) | v72;
  }

  v29 = v32 - 0x1000000;
  v30 = 28;
LABEL_26:
  if (v24 < 0x400000)
  {
    goto LABEL_34;
  }

  v34 = v4 + SHIDWORD(v25) * v5;
  v35 = 3 * (v29 >> 32);
  v36 = v34 + v35;
  v37 = *(result + 32);
  if (v14 >= v34 + v35)
  {
    v38 = (v34 + v35);
  }

  else
  {
    v38 = v14;
  }

  if (v38 < v37)
  {
    v38 = *(result + 32);
  }

  v39 = (v38[1] << 16) | (*v38 << 24) | (v38[2] << 8) | 0xFF;
  if (v6)
  {
    v40 = *(v6 + (v30 | v23));
LABEL_51:
    v52 = v40 & 0xF;
    v53 = HIBYTE(v40) & 3;
    switch(v52)
    {
      case 1:
        v71 = (v36 + SBYTE1(v40) * v5);
        if (v14 < v71)
        {
          v71 = v14;
        }

        if (v71 < v37)
        {
          v71 = v37;
        }

        v39 = v39 - ((interpolate_8888_21865[v53] & v39) >> (v53 + 1)) + ((((v71[1] << 16) | (*v71 << 24) | (v71[2] << 8) | 0xFFu) & interpolate_8888_21865[v53]) >> (v53 + 1));
        break;
      case 2:
        v69 = (v36 + 3 * SBYTE2(v40));
        if (v14 < v69)
        {
          v69 = v14;
        }

        if (v69 < v37)
        {
          v69 = v37;
        }

        v64 = (v69[1] << 16) | (*v69 << 24) | (v69[2] << 8) | 0xFF;
        v70 = (v40 >> 28) & 3;
        v66 = interpolate_8888_21865[v70];
        v67 = v70 + 1;
        v68 = v39 - ((v66 & v39) >> v67);
LABEL_73:
        v39 = v68 + ((v64 & v66) >> v67);
        break;
      case 3:
        v54 = 3 * SBYTE2(v40);
        v55 = (v36 + v54);
        if (v14 < v36 + v54)
        {
          v55 = v14;
        }

        if (v55 < v37)
        {
          v55 = v37;
        }

        v56 = (v55[1] << 16) | (*v55 << 24) | (v55[2] << 8) | 0xFF;
        v57 = v36 + SBYTE1(v40) * v5;
        if (v14 >= v57)
        {
          v58 = (v36 + SBYTE1(v40) * v5);
        }

        else
        {
          v58 = v14;
        }

        if (v58 < v37)
        {
          v58 = v37;
        }

        v59 = (v58[1] << 16) | (*v58 << 24) | (v58[2] << 8) | 0xFF;
        v60 = (v57 + v54);
        if (v14 < v60)
        {
          v60 = v14;
        }

        if (v60 < v37)
        {
          v60 = v37;
        }

        v61 = interpolate_8888_21865[v53];
        v62 = v53 + 1;
        v63 = v39 - ((v61 & v39) >> v62) + ((v59 & v61) >> v62);
        v64 = v56 - ((v61 & v56) >> v62) + ((((v60[1] << 16) | (*v60 << 24) | (v60[2] << 8) | 0xFF) & v61) >> v62);
        v65 = (v40 >> 28) & 3;
        v66 = interpolate_8888_21865[v65];
        v67 = v65 + 1;
        v68 = v63 - ((v63 & v66) >> v67);
        goto LABEL_73;
    }
  }

  v41 = v12;
  HIDWORD(v42) = v39;
  LODWORD(v42) = v39;
  *(v12 + 4) = v42 >> 8;
  v12 += 4;
  *(v13 + 1) = v24 >> 22;
  if (a4 != 1)
  {
    v43 = 0;
    a2 += v10;
    v44 = v73 - a2;
    a3 += v11;
    v45 = v9 - a3;
    v46 = --a4;
    while (1)
    {
      v47 = v13 + v43 + 1;
      if (((v45 | v44 | (a3 - v8) | (a2 - v7)) & 0x8000000000000000) != 0)
      {
        break;
      }

      v48 = v4 + SHIDWORD(a3) * v5;
      v49 = 3 * (a2 >> 32);
      v36 = v48 + v49;
      v37 = *(result + 32);
      if (v14 >= v48 + v49)
      {
        v50 = (v48 + v49);
      }

      else
      {
        v50 = v14;
      }

      if (v50 < v37)
      {
        v50 = *(result + 32);
      }

      v51 = (v50[1] << 16) | (*v50 << 24) | (v50[2] << 8);
      if (v6)
      {
        v40 = *(v6 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v40 & 0xF) != 0)
        {
          v39 = v51 | 0xFF;
          v24 = -1;
          v13 = v47;
          goto LABEL_51;
        }
      }

      --a4;
      v12 += 4;
      *(v41 + 4 * v43 + 8) = (v51 | 0xFF00000000uLL) >> 8;
      *(v13 + v43++ + 2) = -1;
      a2 += v10;
      v44 -= v10;
      a3 += v11;
      v45 -= v11;
      if (v46 == v43)
      {
        return result;
      }
    }

    v13 += v43 + 1;
    if (a4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t argb32_sample_rgb555(uint64_t result, uint64_t a2, uint64_t a3, int a4)
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

  v42 = *v41;
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

      v82 = *v81;
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

          v60 = *v59;
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

          v63 = *v62;
          v64 = (v61 + (v58 >> 55));
          if (v15 < v64)
          {
            v64 = v15;
          }

          if (v64 < v40)
          {
            v64 = v40;
          }

          v65 = *v64;
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

      v75 = *v74;
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
    v52 = (v42 << 6) & 0xF800 | (((v42 >> 10) & 0x1F) << 19) | (8 * (v42 & 0x1F));
    *(v92 + 4 + 4 * v48) = (v11 | (v42 >> 5) | v42) & 0xFF000000 | v52 | (v52 >> 5) & 0x3F3F3F3F;
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

    v42 = *v53;
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

uint64_t argb32_sample_RGB555(uint64_t result, uint64_t a2, uint64_t a3, int a4)
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
    v52 = (v42 << 6) & 0xF800 | (((v42 >> 10) & 0x1F) << 19) | (8 * (v42 & 0x1F));
    *(v92 + 4 + 4 * v48) = (v11 | (v42 >> 5) | v42) & 0xFF000000 | v52 | (v52 >> 5) & 0x3F3F3F3F;
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

uint64_t argb32_sample_W8(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v77 = *(result + 80);
  v79 = *(result + 88);
  v9 = *(result + 112);
  v10 = *(result + 120);
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
  v76 = *(result + 188);
  v17 = v4 + v15 + (v14 * v6) - 1;
  v78 = *(result + 64);
  v80 = *(result + 72);
  while (1)
  {
LABEL_5:
    if (a3 >= v80)
    {
      if (a3 <= v79)
      {
        v26 = (a3 >> 22) & 0x3C0;
        v27 = 0x3FFFFFFF;
        v28 = a3;
      }

      else
      {
        v22 = *(result + 216);
        v23 = *(result + 224) + v79;
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

        v27 = v76 | v25;
        v28 = v23 - 0x1000000;
        v26 = 448;
      }
    }

    else
    {
      v18 = *(result + 216);
      v19 = v80 - *(result + 224);
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

      v27 = v76 | v21;
      v28 = v19 + 0x1000000;
      v26 = 512;
    }

    if (a2 >= v78)
    {
      break;
    }

    v29 = *(result + 192);
    v30 = v78 - *(result + 200);
    v31 = a2 - v30 + (v29 >> 1);
    if (v31 >= 1)
    {
      if (v31 < v29)
      {
        v27 = ((v27 >> 15) * (((*(result + 208) * v31) >> 32) >> 15)) | v76;
      }

      v32 = v30 + 0x1000000;
      v33 = 32;
      goto LABEL_29;
    }

LABEL_43:
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

  if (a2 <= v77)
  {
    v33 = (a2 >> 26) & 0x3C;
    v32 = a2;
    goto LABEL_29;
  }

  v34 = *(result + 192);
  v35 = *(result + 200) + v77;
  v36 = v35 - a2 + (v34 >> 1);
  if (v36 < 1)
  {
    goto LABEL_43;
  }

  if (v36 < v34)
  {
    v27 = ((v27 >> 15) * (((*(result + 208) * v36) >> 32) >> 15)) | v76;
  }

  v32 = v35 - 0x1000000;
  v33 = 28;
LABEL_29:
  if (v27 < 0x400000)
  {
    goto LABEL_43;
  }

  v37 = v28 >> 32;
  v38 = v4 + SHIDWORD(v28) * v6;
  v39 = v38 + (v32 >> 32);
  v40 = *(result + 32);
  if (v17 >= v39)
  {
    v41 = (v38 + (v32 >> 32));
  }

  else
  {
    v41 = v17;
  }

  if (v41 < v40)
  {
    v41 = *(result + 32);
  }

  v42 = *v41;
  if (v5)
  {
    v43 = v5 + v37 * v7 + (v32 >> 32);
    v44 = *(result + 40);
    if (v16 >= v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = v16;
    }

    if (v45 >= v44)
    {
      v44 = v45;
    }

    v42 |= *v44 << 24;
    if (!v8)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v43 = 0;
    if (!v8)
    {
      goto LABEL_47;
    }
  }

  v46 = *(v8 + (v33 | v26));
LABEL_69:
  v54 = v46 & 0xF;
  v55 = HIBYTE(v46) & 3;
  switch(v54)
  {
    case 1:
      v73 = (v39 + SBYTE1(v46) * v6);
      if (v17 < v73)
      {
        v73 = v17;
      }

      if (v73 < v40)
      {
        v73 = v40;
      }

      v74 = *v73;
      if (v5)
      {
        v75 = (v43 + SBYTE1(v46) * v7);
        if (v16 < v75)
        {
          v75 = v16;
        }

        if (v75 < *(result + 40))
        {
          v75 = *(result + 40);
        }

        v74 |= *v75 << 24;
      }

      v42 = v42 - ((interpolate_8888_21865[v55] & v42) >> (v55 + 1)) + ((interpolate_8888_21865[v55] & v74) >> (v55 + 1));
      break;
    case 2:
      v70 = (v39 + SBYTE2(v46));
      if (v17 < v70)
      {
        v70 = v17;
      }

      if (v70 < v40)
      {
        v70 = v40;
      }

      v71 = *v70;
      if (v5)
      {
        v72 = (v43 + SBYTE2(v46));
        if (v16 < v72)
        {
          v72 = v16;
        }

        if (v72 < *(result + 40))
        {
          v72 = *(result + 40);
        }

        v71 |= *v72 << 24;
      }

      v42 = v42 - ((interpolate_8888_21865[(v46 >> 28) & 3] & v42) >> (((v46 >> 28) & 3) + 1)) + ((interpolate_8888_21865[(v46 >> 28) & 3] & v71) >> (((v46 >> 28) & 3) + 1));
      break;
    case 3:
      v56 = (v39 + SBYTE2(v46));
      if (v17 < v56)
      {
        v56 = v17;
      }

      if (v56 < v40)
      {
        v56 = v40;
      }

      v57 = *v56;
      v58 = v39 + SBYTE1(v46) * v6;
      if (v17 >= v58)
      {
        v59 = (v39 + SBYTE1(v46) * v6);
      }

      else
      {
        v59 = v17;
      }

      if (v59 < v40)
      {
        v59 = v40;
      }

      v60 = *v59;
      v61 = (v58 + SBYTE2(v46));
      if (v17 < v61)
      {
        v61 = v17;
      }

      if (v61 < v40)
      {
        v61 = v40;
      }

      v62 = *v61;
      if (v5)
      {
        v63 = (v43 + SBYTE2(v46));
        v64 = *(result + 40);
        if (v16 < v63)
        {
          v63 = v16;
        }

        if (v63 < v64)
        {
          v63 = *(result + 40);
        }

        v57 |= *v63 << 24;
        v65 = v43 + SBYTE1(v46) * v7;
        if (v16 >= v65)
        {
          v66 = (v43 + SBYTE1(v46) * v7);
        }

        else
        {
          v66 = v16;
        }

        if (v66 < v64)
        {
          v66 = *(result + 40);
        }

        v60 |= *v66 << 24;
        v67 = (v65 + SBYTE2(v46));
        if (v16 < v67)
        {
          v67 = v16;
        }

        if (v67 < v64)
        {
          v67 = *(result + 40);
        }

        v55 = HIBYTE(v46) & 3;
        v62 |= *v67 << 24;
      }

      v68 = interpolate_8888_21865[v55];
      v69 = v42 - ((v68 & v42) >> (v55 + 1)) + ((v68 & v60) >> (v55 + 1));
      v42 = v69 - ((v69 & interpolate_8888_21865[(v46 >> 28) & 3]) >> (((v46 >> 28) & 3) + 1)) + (((v57 - ((v68 & v57) >> (v55 + 1)) + ((v68 & v62) >> (v55 + 1))) & interpolate_8888_21865[(v46 >> 28) & 3]) >> (((v46 >> 28) & 3) + 1));
      break;
  }

LABEL_47:
  *(v11 + 4) = (65792 * v42) | v13 | v42;
  *(v12 + 1) = v27 >> 22;
  if (a4 != 1)
  {
    v47 = 0;
    a2 += v9;
    v48 = v77 - a2;
    a3 += v10;
    v49 = v79 - a3;
    v50 = -4;
    while (((v49 | v48 | (a3 - v80) | (a2 - v78)) & 0x8000000000000000) == 0)
    {
      v39 = v4 + SHIDWORD(a3) * v6 + (a2 >> 32);
      v40 = *(result + 32);
      if (v17 >= v39)
      {
        v51 = (v4 + SHIDWORD(a3) * v6 + (a2 >> 32));
      }

      else
      {
        v51 = v17;
      }

      if (v51 < v40)
      {
        v51 = *(result + 32);
      }

      v42 = *v51;
      if (v5)
      {
        v43 = v5 + SHIDWORD(a3) * v7 + (a2 >> 32);
        v52 = *(result + 40);
        if (v16 >= v43)
        {
          v53 = v5 + SHIDWORD(a3) * v7 + (a2 >> 32);
        }

        else
        {
          v53 = v16;
        }

        if (v53 >= v52)
        {
          v52 = v53;
        }

        v42 |= *v52 << 24;
      }

      if (v8)
      {
        v46 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v46 & 0xF) != 0)
        {
          v12 += v47 + 1;
          v11 -= v50;
          a4 += ~v47;
          v27 = -1;
          goto LABEL_69;
        }
      }

      *(v11 + 4 * v47 + 8) = (65792 * v42) | v13 | v42;
      *(v12 + v47++ + 2) = -1;
      v50 -= 4;
      a2 += v9;
      v48 -= v9;
      a3 += v10;
      v49 -= v10;
      if (a4 - 1 == v47)
      {
        return result;
      }
    }

    v12 += v47 + 1;
    v11 -= v50;
    a4 += ~v47;
    if (a4)
    {
      goto LABEL_5;
    }
  }

  return result;
}

unint64_t PDM_15068(unsigned int a1, int a2)
{
  v2 = ((a1 >> 8) & 0xFF00FF) * (a2 ^ 0xFF) + 8388736;
  v3 = ((((((a1 & 0xFF00FF) * (a2 ^ 0xFF) + 8388736) >> 8) & 0xFF00FF) + (a1 & 0xFF00FF) * (a2 ^ 0xFF) + 8388736) >> 8) & 0xFF00FF | (((v2 >> 8) & 0xFF00FF) + v2) & 0xFF00FF00;
  v4 = (((a1 | (a1 << 40)) >> 8) & 0xFF00FF00FF00FFLL | 0x100010001000100) - (((v3 | (v3 << 40)) >> 8) & 0xFF00FF00FF00FFLL);
  return (((v4 & 0x100010001000100) - ((v4 & 0x100010001000100) >> 8)) & v4 | ((((v4 & 0x100010001000100) - ((v4 & 0x100010001000100) >> 8)) & v4) << 40)) >> 32;
}

unsigned int *DMplusDM_15069(unsigned int *result, unsigned int a2, int a3, unsigned int a4, int a5)
{
  v5 = (BYTE1(a4) * a5) + (BYTE1(a2) * a3);
  v6 = ((((a4 >> 8) & 0xFF00FF) * a5) >> 16) + ((((a2 >> 8) & 0xFF00FF) * a3) >> 16);
  if (v5 >= 0xFE79)
  {
    v5 = 65145;
  }

  if (v6 >= 0xFE79)
  {
    v6 = 65145;
  }

  v7 = (a2 & 0xFF00FF) * a3;
  v8 = (a4 * a5) + v7;
  v9 = (((a4 & 0xFF00FF) * a5) >> 16) + HIWORD(v7);
  if (v8 >= 0xFE79)
  {
    v10 = 65145;
  }

  else
  {
    v10 = v8;
  }

  if (v9 >= 0xFE79)
  {
    v11 = 65145;
  }

  else
  {
    v11 = v9;
  }

  *result = ((((((v10 | (v11 << 16)) + 8388736) >> 8) & 0xFF00FF) + (v10 | (v11 << 16)) + 8388736) >> 8) & 0xFF00FF | (((((v5 | (v6 << 16)) + 8388736) >> 8) & 0xFF00FF) + (v5 | (v6 << 16)) + 8388736) & 0xFF00FF00;
  return result;
}

_DWORD *DplusDM_15070(_DWORD *result, unsigned int a2, unsigned int a3, int a4)
{
  v4 = ((((((a3 & 0xFF00FF) * a4 + 8388736) >> 8) & 0xFF00FF) + (a3 & 0xFF00FF) * a4 + 8388736) >> 8) & 0xFF00FF | ((((((a3 >> 8) & 0xFF00FF) * a4 + 8388736) >> 8) & 0xFF00FF) + ((a3 >> 8) & 0xFF00FF) * a4 + 8388736) & 0xFF00FF00;
  v5 = (((v4 | (v4 << 40)) >> 8) & 0xFF00FF00FF00FFLL) + (((a2 | (a2 << 40)) >> 8) & 0xFF00FF00FF00FFLL);
  *result = ((((v5 & 0x100010001000100) - ((v5 & 0x100010001000100) >> 8)) | v5) & 0xFF00FF00FF00FFLL | (((((v5 & 0x100010001000100) - ((v5 & 0x100010001000100) >> 8)) | v5) & 0xFF00FF00FF00FFLL) << 40)) >> 32;
  return result;
}

_DWORD *DAplusdDA_15071(_DWORD *result, int a2, int a3, int a4, int a5)
{
  v5 = ((((65793 * a3) | ((65793 * a3) << 40)) >> 8) & 0xFEFF00FFFEFF00FFLL | 0x100010001000100) - (((a2 & 0xFFFFFF | ((a2 & 0xFFFFFF) << 40)) >> 8) & 0xFFFF00FFFFFF00FFLL);
  v6 = ((v5 & 0x100010001000100) - ((v5 & 0x100010001000100) >> 8)) & v5;
  v7 = (v6 | (v6 << 40)) >> 32;
  v8 = ((((65793 * a5) | ((65793 * a5) << 40)) >> 8) & 0xFEFF00FFFEFF00FFLL | 0x100010001000100) - (((a4 & 0xFFFFFF | ((a4 & 0xFFFFFF) << 40)) >> 8) & 0xFFFF00FFFFFF00FFLL);
  v9 = ((v8 & 0x100010001000100) - ((v8 & 0x100010001000100) >> 8)) & v8;
  v10 = (v9 | (v9 << 40)) >> 32;
  v11 = (((v10 | (a5 << 24)) >> 8) & 0xFF00FF) + (((v7 | (a3 << 24)) >> 8) & 0xFF00FF);
  LODWORD(v7) = (v11 << 8) & 0xFF00FF00 | ((v10 & 0xFF00FF) + (v7 & 0xFF00FF)) & 0xFF00FF | (15 * (v11 & 0x1000100 | (((v10 & 0xFF00FF) + (v7 & 0xFF00FF)) >> 8) & 0x10001)) | (240 * (v11 & 0x1000100 | (((v10 & 0xFF00FF) + (v7 & 0xFF00FF)) >> 8) & 0x10001));
  v12 = ((((65793 * BYTE3(v7)) | ((65793 * BYTE3(v7)) << 40)) >> 8) & 0xFEFF00FFFEFF00FFLL | 0x100010001000100) - (((v7 & 0xFFFFFF | ((v7 & 0xFFFFFF) << 40)) >> 8) & 0xFFFF00FFFFFF00FFLL);
  *result = v7 & 0xFF000000 | ((((v12 & 0x100010001000100) - ((v12 & 0x100010001000100) >> 8)) & v12 | ((((v12 & 0x100010001000100) - ((v12 & 0x100010001000100) >> 8)) & v12) << 40)) >> 32);
  return result;
}

uint64_t PDAmultiplyPDA_15072(unsigned int a1, int a2, unsigned __int8 a3, int a4)
{
  v4 = vand_s8(vshl_u32(vdup_n_s32(a3), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
  v5 = ((a4 ^ 0xFF) + a3) * a1;
  v6 = COERCE_DOUBLE(vmul_s32(vadd_s32(vdup_n_s32(a4 ^ 0xFFu), v4), vand_s8(vshl_u32(vdup_n_s32(a1), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL)));
  v7 = COERCE_DOUBLE(vmla_s32(*&v6, v4, vdup_n_s32(a2 ^ 0xFFu)));
  if (a2 != 255)
  {
    v5 += a3 * (a2 ^ 0xFF);
    v6 = v7;
  }

  v8 = 255 * (a4 + a2) - a4 * a2;
  v9 = HIDWORD(v6) + 128;
  if (HIDWORD(v6) >> 7 >= 0x1FD)
  {
    v9 = 65152;
  }

  v10 = v9 + (v9 >> 8);
  if (v5 >> 7 >= 0x1FD)
  {
    v11 = 65152;
  }

  else
  {
    v11 = v5 + 128;
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
  if (LODWORD(v6) >> 7 >= 0x1FD)
  {
    v15 = 16711680;
  }

  else
  {
    v15 = (257 * LODWORD(v6) + 32896) & 0xFF0000;
  }

  return v15 & 0xFF0000 | (v14 << 24) | v10 & 0xFF00 | BYTE1(v12);
}

uint64_t PDAscreenPDA_15073(unsigned int a1, int a2, unsigned int a3, int a4)
{
  v4 = vshl_u32(vdup_n_s32(a1), 0xFFFFFFF8FFFFFFF0);
  v5 = vshl_u32(vdup_n_s32(a3), 0xFFFFFFF8FFFFFFF0);
  v6 = a3 * (a1 ^ 0xFF) - a1 + (a1 << 8);
  v7 = 255 * (a4 + a2) - a4 * a2;
  v8 = v6 + 128;
  if (v6 >> 7 >= 0x1FD)
  {
    v8 = 65152;
  }

  v9 = v8 + (v8 >> 8);
  v10 = vand_s8(v4, 0xFF000000FFLL);
  v11 = vmla_s32(vmul_s32(v10, 0xFF000000FFLL), vand_s8(v5, 0xFF000000FFLL), veor_s8(v10, 0xFF000000FFLL));
  v12 = vcgt_u32(vdup_n_s32(0xFE80u), v11);
  v13 = vadd_s32(v11, 0x8000000080);
  v14 = 257 * v11.i32[0] + 32896;
  if (v7 >= 65152)
  {
    v15 = 65152;
  }

  else
  {
    v15 = v7 + 128;
  }

  v16.i32[0] = 0;
  v16.i8[2] = BYTE2(v14);
  v16.i32[1] = v13.i32[1];
  v17 = vbsl_s8(v12, v16, 0xFE8000FF0000);
  return vorr_s8(vshr_n_u32(__PAIR64__(v17.u32[1], v9), 8uLL), v17).u32[0] | vsra_n_u32(*&v17, __PAIR64__(*(&v17 + 4), v9), 8uLL).i32[1] & 0xFF00 | ((v15 + (v15 >> 8)) >> 8 << 24);
}

uint64_t PDAoverlayPDA_15074(int a1, unsigned int a2, int a3, unsigned int a4)
{
  v4 = BYTE2(a1);
  v5 = BYTE1(a1);
  v6 = a1;
  v7 = BYTE2(a3);
  v8 = BYTE1(a3);
  v9 = a3;
  if (BYTE2(a3) >= a4)
  {
    v7 = a4;
  }

  if (BYTE2(a1) >= a2)
  {
    v4 = a2;
  }

  v10 = 2 * v4 * v7;
  if (BYTE1(a3) >= a4)
  {
    v8 = a4;
  }

  if (BYTE1(a1) >= a2)
  {
    v5 = a2;
  }

  v11 = 2 * v5 * v8;
  if (a3 >= a4)
  {
    v9 = a4;
  }

  if (a1 >= a2)
  {
    v6 = a2;
  }

  v12 = 2 * v6 * v9;
  v13 = a4 * a2;
  v14 = (a2 + 1) >> 1;
  v15 = a4 + 255;
  v16 = a2 + 255;
  v17 = (a4 + 255) * v4 + v7 * (a2 + 255) - (a4 * a2 + v10);
  v18 = a4 ^ 0xFF;
  v19 = a2 ^ 0xFF;
  v20 = v7 * (a2 ^ 0xFF) + (a4 ^ 0xFF) * v4 + v10;
  if (v4 < v14)
  {
    v21 = v20;
  }

  else
  {
    v21 = v17;
  }

  v22 = v15 * v5 + v8 * v16 - (v13 + v11);
  v23 = v8 * v19 + v18 * v5 + v11;
  if (v5 < v14)
  {
    v24 = v23;
  }

  else
  {
    v24 = v22;
  }

  if (v6 < v14)
  {
    v25 = v9 * v19 + v18 * v6 + v12;
  }

  else
  {
    v25 = v15 * v6 + v9 * v16 - (v13 + v12);
  }

  v26 = 255 * (a4 + a2) - v13;
  if (v24 >= 65152)
  {
    v27 = 65152;
  }

  else
  {
    v27 = v24 + 128;
  }

  v28 = v27 + (v27 >> 8);
  if (v25 >= 65152)
  {
    v29 = 65152;
  }

  else
  {
    v29 = v25 + 128;
  }

  v30 = v29 + (v29 >> 8);
  if (v26 >= 65152)
  {
    v31 = 65152;
  }

  else
  {
    v31 = v26 + 128;
  }

  v32 = (v31 + (v31 >> 8)) >> 8;
  if (v21 >= 65152)
  {
    v33 = 16711680;
  }

  else
  {
    v33 = (257 * v21 + 32896) & 0xFF0000;
  }

  return v33 & 0xFF0000 | (v32 << 24) | v28 & 0xFF00 | BYTE1(v30);
}

uint64_t PDAlightenPDA_15075(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = a3;
  v5 = a1;
  v6 = vmin_u32(vand_s8(vshl_u32(__PAIR64__(a1, a3), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL), __PAIR64__(a2, a4));
  v7 = vrev64_s32(vmin_u32(vand_s8(vshl_u32(__PAIR64__(a1, a3), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL), __PAIR64__(a2, a4)));
  v8 = COERCE_DOUBLE(vmax_u32(vmul_s32(v6, vrev64_s32(__PAIR64__(a2, a4))), vmul_s32(v7, __PAIR64__(a2, a4))));
  if (a3 >= a4)
  {
    v4 = a4;
  }

  if (a1 >= a2)
  {
    v5 = a2;
  }

  v9 = v5 * a4;
  if (v4 * a2 > v5 * a4)
  {
    v9 = v4 * a2;
  }

  v10 = COERCE_DOUBLE(vmla_s32(*&v8, vdup_n_s32(a4 ^ 0xFF), __PAIR64__(v6.u32[1], v7.u32[0])));
  v11 = v9 + (a4 ^ 0xFF) * v5;
  if (a4 == 255)
  {
    v11 = v9;
    *&v12 = v8;
  }

  else
  {
    *&v12 = v10;
  }

  v6.i32[1] = v7.i32[1];
  v13 = COERCE_DOUBLE(vmla_s32(v12, v6, vdup_n_s32(a2 ^ 0xFF)));
  v14 = v11 + v4 * (a2 ^ 0xFF);
  if (a2 == 255)
  {
    v14 = v11;
    v15 = *&v12;
  }

  else
  {
    v15 = v13;
  }

  v16 = 255 * (a4 + a2) - a4 * a2;
  v17 = LODWORD(v15) + 128;
  if (LODWORD(v15) >> 7 >= 0x1FD)
  {
    v17 = 65152;
  }

  v18 = v17 + (v17 >> 8);
  if (v14 >> 7 >= 0x1FD)
  {
    v19 = 65152;
  }

  else
  {
    v19 = v14 + 128;
  }

  v20 = v19 + (v19 >> 8);
  if (v16 >= 65152)
  {
    v21 = 65152;
  }

  else
  {
    v21 = v16 + 128;
  }

  v22 = (v21 + (v21 >> 8)) >> 8;
  if (HIDWORD(v15) >> 7 >= 0x1FD)
  {
    v23 = 16711680;
  }

  else
  {
    v23 = (257 * HIDWORD(v15) + 32896) & 0xFF0000;
  }

  return v23 & 0xFF0000 | (v22 << 24) | v18 & 0xFF00 | BYTE1(v20);
}

uint64_t PDAdarkenPDA_15076(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = a3;
  v5 = a1;
  v6 = vmin_u32(vand_s8(vshl_u32(__PAIR64__(a1, a3), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL), __PAIR64__(a2, a4));
  v7 = vrev64_s32(vmin_u32(vand_s8(vshl_u32(__PAIR64__(a1, a3), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL), __PAIR64__(a2, a4)));
  v8 = COERCE_DOUBLE(vmin_u32(vmul_s32(v6, vrev64_s32(__PAIR64__(a2, a4))), vmul_s32(v7, __PAIR64__(a2, a4))));
  if (a3 >= a4)
  {
    v4 = a4;
  }

  if (a1 >= a2)
  {
    v5 = a2;
  }

  v9 = v5 * a4;
  if (v4 * a2 < v5 * a4)
  {
    v9 = v4 * a2;
  }

  v10 = COERCE_DOUBLE(vmla_s32(*&v8, vdup_n_s32(a4 ^ 0xFF), __PAIR64__(v6.u32[1], v7.u32[0])));
  v11 = v9 + (a4 ^ 0xFF) * v5;
  if (a4 == 255)
  {
    v11 = v9;
    *&v12 = v8;
  }

  else
  {
    *&v12 = v10;
  }

  v6.i32[1] = v7.i32[1];
  v13 = COERCE_DOUBLE(vmla_s32(v12, v6, vdup_n_s32(a2 ^ 0xFF)));
  v14 = v11 + v4 * (a2 ^ 0xFF);
  if (a2 == 255)
  {
    v14 = v11;
    v15 = *&v12;
  }

  else
  {
    v15 = v13;
  }

  v16 = 255 * (a4 + a2) - a4 * a2;
  v17 = LODWORD(v15) + 128;
  if (LODWORD(v15) >> 7 >= 0x1FD)
  {
    v17 = 65152;
  }

  v18 = v17 + (v17 >> 8);
  if (v14 >> 7 >= 0x1FD)
  {
    v19 = 65152;
  }

  else
  {
    v19 = v14 + 128;
  }

  v20 = v19 + (v19 >> 8);
  if (v16 >= 65152)
  {
    v21 = 65152;
  }

  else
  {
    v21 = v16 + 128;
  }

  v22 = (v21 + (v21 >> 8)) >> 8;
  if (HIDWORD(v15) >> 7 >= 0x1FD)
  {
    v23 = 16711680;
  }

  else
  {
    v23 = (257 * HIDWORD(v15) + 32896) & 0xFF0000;
  }

  return v23 & 0xFF0000 | (v22 << 24) | v18 & 0xFF00 | BYTE1(v20);
}

uint64_t PDAcolordodgePDA_15077(int a1, unsigned int a2, int a3, unsigned int a4)
{
  v4 = a4 * a4;
  if (BYTE2(a1) >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = BYTE2(a1);
  }

  if (BYTE2(a3) >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = BYTE2(a3);
  }

  if (v5)
  {
    if (BYTE2(a3) >= a4)
    {
      v7 = 65025;
    }

    else
    {
      v7 = (v4 * v5) / (a4 - v6);
    }
  }

  else
  {
    v7 = 0;
  }

  if (BYTE1(a1) >= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = BYTE1(a1);
  }

  if (BYTE1(a3) >= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = BYTE1(a3);
  }

  if (v8)
  {
    if (BYTE1(a3) >= a4)
    {
      v10 = 65025;
    }

    else
    {
      v10 = (v4 * v8) / (a4 - v9);
    }
  }

  else
  {
    v10 = 0;
  }

  if (a1 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = a1;
  }

  if (a3 >= a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = a3;
  }

  if (v11)
  {
    if (a3 >= a4)
    {
      v13 = 65025;
    }

    else
    {
      v13 = (v4 * v11) / (a4 - v12);
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v7 + (a4 ^ 0xFF) * v5;
  v15 = v10 + (a4 ^ 0xFF) * v8;
  if (a4 == 255)
  {
    v14 = v7;
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  if (a4 != 255)
  {
    v13 += (a4 ^ 0xFF) * v11;
  }

  v17 = v14 + v6 * (a2 ^ 0xFF);
  v18 = v16 + v9 * (a2 ^ 0xFF);
  if (a2 == 255)
  {
    v17 = v14;
    v19 = v16;
  }

  else
  {
    v19 = v18;
  }

  if (a2 == 255)
  {
    v20 = v13;
  }

  else
  {
    v20 = v13 + v12 * (a2 ^ 0xFF);
  }

  v21 = 255 * (a4 + a2) - a4 * a2;
  if (v17 >= v21)
  {
    v17 = 255 * (a4 + a2) - a4 * a2;
  }

  if (v19 >= v21)
  {
    v19 = 255 * (a4 + a2) - a4 * a2;
  }

  if (v20 >= v21)
  {
    v20 = 255 * (a4 + a2) - a4 * a2;
  }

  if (v19 >= 65152)
  {
    v22 = 65152;
  }

  else
  {
    v22 = v19 + 128;
  }

  v23 = v22 + (v22 >> 8);
  if (v20 >= 65152)
  {
    v24 = 65152;
  }

  else
  {
    v24 = v20 + 128;
  }

  v25 = v24 + (v24 >> 8);
  if (v21 >= 65152)
  {
    v26 = 65152;
  }

  else
  {
    v26 = v21 + 128;
  }

  v27 = (v26 + (v26 >> 8)) >> 8;
  if (v17 >= 65152)
  {
    v28 = 16711680;
  }

  else
  {
    v28 = (257 * v17 + 32896) & 0xFF0000;
  }

  return v28 & 0xFF0000 | (v27 << 24) | v23 & 0xFF00 | BYTE1(v25);
}

uint64_t PDAcolorburnPDA_15078(int a1, unsigned int a2, int a3, unsigned int a4)
{
  v4 = BYTE2(a1);
  v5 = BYTE1(a1);
  v6 = a1;
  v7 = BYTE1(a3);
  v8 = a3;
  v9 = a4 * a2;
  if (BYTE2(a3) >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = BYTE2(a3);
  }

  if (v4 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = v4;
  }

  if (v7 >= a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = v7;
  }

  if (v5 >= a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = v5;
  }

  if (v8 >= a4)
  {
    v14 = a4;
  }

  else
  {
    v14 = v8;
  }

  if (v6 >= a2)
  {
    v15 = a2;
  }

  else
  {
    v15 = v6;
  }

  v16 = v9 + (a4 ^ 0xFF) * v11;
  v17 = v9 + (a4 ^ 0xFF) * v13;
  if (a4 == 255)
  {
    v16 = a4 * a2;
    v17 = 255 * a2;
    v18 = 255 * a2;
  }

  else
  {
    v18 = v9 + (a4 ^ 0xFF) * v15;
  }

  if (a2 == 255)
  {
    v19 = v16;
  }

  else
  {
    v19 = v16 + v10 * (a2 ^ 0xFF);
  }

  if (a2 == 255)
  {
    v20 = v18;
  }

  else
  {
    v17 += v12 * (a2 ^ 0xFF);
    v20 = v18 + v14 * (a2 ^ 0xFF);
  }

  if (v4 < a2)
  {
    if (v10)
    {
      v19 = (v19 - (a4 * a4 * (a2 - v11)) / v10) & ~((v19 - (a4 * a4 * (a2 - v11)) / v10) >> 31);
    }

    else
    {
      v19 = 0;
    }
  }

  if (v5 < a2)
  {
    if (v12)
    {
      v17 = (v17 - (a4 * a4 * (a2 - v13)) / v12) & ~((v17 - (a4 * a4 * (a2 - v13)) / v12) >> 31);
    }

    else
    {
      v17 = 0;
    }
  }

  if (v6 < a2)
  {
    if (v14)
    {
      v20 = (v20 - (a4 * a4 * (a2 - v15)) / v14) & ~((v20 - (a4 * a4 * (a2 - v15)) / v14) >> 31);
    }

    else
    {
      v20 = 0;
    }
  }

  v21 = 255 * (a4 + a2) - v9;
  v22 = v17 + 128;
  if (v17 >> 7 >= 0x1FD)
  {
    v22 = 65152;
  }

  v23 = v22 + (v22 >> 8);
  if (v20 >> 7 >= 0x1FD)
  {
    v24 = 65152;
  }

  else
  {
    v24 = v20 + 128;
  }

  v25 = v24 + (v24 >> 8);
  if (v21 >= 65152)
  {
    v26 = 65152;
  }

  else
  {
    v26 = v21 + 128;
  }

  v27 = (v26 + (v26 >> 8)) >> 8;
  if (v19 >> 7 >= 0x1FD)
  {
    v28 = 16711680;
  }

  else
  {
    v28 = (257 * v19 + 32896) & 0xFF0000;
  }

  return v28 & 0xFFFFFF | (v27 << 24) | v23 & 0xFF00 | (v25 >> 8);
}

uint64_t PDAhardlightPDA_15079(int a1, unsigned int a2, int a3, unsigned int a4)
{
  v4 = BYTE2(a1);
  v5 = BYTE1(a1);
  v6 = a1;
  v7 = BYTE2(a3);
  v8 = BYTE1(a3);
  v9 = a3;
  if (BYTE2(a3) >= a4)
  {
    v7 = a4;
  }

  if (BYTE2(a1) >= a2)
  {
    v4 = a2;
  }

  v10 = 2 * v4 * v7;
  if (BYTE1(a3) >= a4)
  {
    v8 = a4;
  }

  if (BYTE1(a1) >= a2)
  {
    v5 = a2;
  }

  v11 = 2 * v5 * v8;
  if (a3 >= a4)
  {
    v9 = a4;
  }

  if (a1 >= a2)
  {
    v6 = a2;
  }

  v12 = 2 * v6 * v9;
  v13 = a4 * a2;
  v14 = (a4 + 1) >> 1;
  v15 = a4 ^ 0xFF;
  v16 = a2 ^ 0xFF;
  v17 = v7 * (a2 ^ 0xFF) + (a4 ^ 0xFF) * v4 + v10;
  v18 = a4 + 255;
  v19 = a2 + 255;
  v20 = (a4 + 255) * v4 + v7 * (a2 + 255) - (a4 * a2 + v10);
  if (v7 <= v14)
  {
    v20 = v17;
  }

  v21 = v8 * v16 + v15 * v5 + v11;
  v22 = v18 * v5 + v8 * v19 - (v13 + v11);
  if (v8 <= v14)
  {
    v22 = v21;
  }

  v23 = v9 * v16 + v15 * v6 + v12;
  v24 = v18 * v6 + v9 * v19 - (v13 + v12);
  if (v9 <= v14)
  {
    v24 = v23;
  }

  v25 = 255 * (a4 + a2) - v13;
  if (v22 >= 65152)
  {
    v26 = 65152;
  }

  else
  {
    v26 = v22 + 128;
  }

  v27 = v26 + (v26 >> 8);
  if (v24 >= 65152)
  {
    v28 = 65152;
  }

  else
  {
    v28 = v24 + 128;
  }

  v29 = v28 + (v28 >> 8);
  if (v25 >= 65152)
  {
    v30 = 65152;
  }

  else
  {
    v30 = v25 + 128;
  }

  v31 = (v30 + (v30 >> 8)) >> 8;
  if (v20 >= 65152)
  {
    v32 = 16711680;
  }

  else
  {
    v32 = (257 * v20 + 32896) & 0xFF0000;
  }

  return v32 & 0xFF0000 | (v31 << 24) | v27 & 0xFF00 | BYTE1(v29);
}

uint64_t PDAsoftlightPDA_15080(int a1, unsigned int a2, int a3, unsigned int a4)
{
  v4 = BYTE2(a1);
  v5 = BYTE2(a3);
  v6 = BYTE1(a3);
  v7 = a3;
  if (BYTE2(a3) >= a4)
  {
    v5 = a4;
  }

  if (BYTE2(a1) >= a2)
  {
    v4 = a2;
  }

  if (a2)
  {
    v8 = a1;
    v9 = BYTE1(a1);
    v10 = (v4 * v4 * (2 * v5 - a4)) / a2;
    v11 = (2 * v4 * v5 - v10) & ~((2 * v4 * v5 - v10) >> 31);
    if (BYTE1(a3) >= a4)
    {
      v6 = a4;
    }

    if (BYTE1(a1) >= a2)
    {
      v9 = a2;
    }

    v12 = (v9 * v9 * (2 * v6 - a4)) / a2;
    v13 = (2 * v9 * v6 - v12) & ~((2 * v9 * v6 - v12) >> 31);
    if (a3 >= a4)
    {
      v7 = a4;
    }

    if (a1 >= a2)
    {
      v8 = a2;
    }

    v14 = (v8 * v8 * (2 * v7 - a4)) / a2;
    v15 = (2 * v8 * v7 - v14) & ~((2 * v8 * v7 - v14) >> 31);
  }

  else
  {
    v8 = 0;
    v13 = 0;
    v11 = 0;
    v9 = 0;
    v15 = 0;
    if (BYTE1(a3) >= a4)
    {
      v6 = a4;
    }

    if (a3 >= a4)
    {
      v7 = a4;
    }
  }

  v16 = v11 + (a4 ^ 0xFF) * v4;
  v17 = v13 + v9 * (a4 ^ 0xFF);
  v18 = v15 + v8 * (a4 ^ 0xFF);
  if (a4 == 255)
  {
    v16 = v11;
    v19 = v13;
  }

  else
  {
    v19 = v17;
  }

  if (a4 == 255)
  {
    v20 = v15;
  }

  else
  {
    v20 = v18;
  }

  v21 = v16 + v5 * (a2 ^ 0xFF);
  v22 = v19 + v6 * (a2 ^ 0xFF);
  if (a2 == 255)
  {
    v21 = v16;
    v23 = v19;
  }

  else
  {
    v23 = v22;
  }

  if (a2 == 255)
  {
    v24 = v20;
  }

  else
  {
    v24 = v20 + v7 * (a2 ^ 0xFF);
  }

  v25 = 255 * (a4 + a2) - a4 * a2;
  v26 = v23 + 128;
  if (v23 >> 7 >= 0x1FD)
  {
    v26 = 65152;
  }

  v27 = v26 + (v26 >> 8);
  if (v24 >> 7 >= 0x1FD)
  {
    v28 = 65152;
  }

  else
  {
    v28 = v24 + 128;
  }

  v29 = v28 + (v28 >> 8);
  if (v25 >= 65152)
  {
    v30 = 65152;
  }

  else
  {
    v30 = v25 + 128;
  }

  v31 = (v30 + (v30 >> 8)) >> 8;
  if (v21 >> 7 >= 0x1FD)
  {
    v32 = 16711680;
  }

  else
  {
    v32 = (257 * v21 + 32896) & 0xFF0000;
  }

  return v32 & 0xFF0000 | (v31 << 24) | v27 & 0xFF00 | BYTE1(v29);
}

uint64_t PDAdifferencePDA_15081(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = vdup_n_s32(a2);
  v5 = vshl_u32(vdup_n_s32(a1), 0xFFFFFFF8FFFFFFF0);
  v6 = a1;
  v7 = vshl_u32(vdup_n_s32(a3), 0xFFFFFFF8FFFFFFF0);
  v8 = a3;
  if (a3 >= a4)
  {
    v8 = a4;
  }

  v9 = vmin_u32(vand_s8(v7, 0xFF000000FFLL), vdup_n_s32(a4));
  v10 = vmin_u32(vand_s8(v5, 0xFF000000FFLL), v4);
  v11 = vmul_s32(__PAIR64__(v10.u32[1], v9.u32[0]), __PAIR64__(a4, a2));
  v12 = vrev64_s32(__PAIR64__(a4, a2));
  if (a1 >= a2)
  {
    v6 = a2;
  }

  v13 = v8 + v6;
  v14 = v6 * a4;
  v15 = v8 * a2;
  v17 = v14 - v15;
  v16 = v14 - v15 < 0;
  v18 = 255 * v13 - v15 - v14;
  if (v16)
  {
    v19 = -v17;
  }

  else
  {
    v19 = v17;
  }

  v20 = v18 + v19;
  v21 = vmul_s32(vadd_s32(v9, v10), 0xFF000000FFLL);
  v10.i32[1] = v9.i32[1];
  v22 = vmul_s32(v10, v12);
  v23 = vaba_u32(vsub_s32(vsub_s32(v21, v11), v22), v11, v22);
  v24 = 255 * (a4 + a2) - a4 * a2;
  v25 = vcgt_s32(vdup_n_s32(0xFE80u), v23);
  v26 = v23.i32[1] + 128;
  if ((v25.i8[4] & 1) == 0)
  {
    v26 = 65152;
  }

  v27 = v26 + (v26 >> 8);
  if (v20 >= 65152)
  {
    v28 = 65152;
  }

  else
  {
    v28 = v20 + 128;
  }

  v29 = v28 + (v28 >> 8);
  if (v24 >= 65152)
  {
    v30 = 65152;
  }

  else
  {
    v30 = v24 + 128;
  }

  v31 = (v30 + (v30 >> 8)) >> 8;
  if (v25.i8[0])
  {
    v32 = (257 * v23.i32[0] + 32896) & 0xFF0000;
  }

  else
  {
    v32 = 16711680;
  }

  return v32 & 0xFF0000 | (v31 << 24) | v27 & 0xFF00 | BYTE1(v29);
}

uint64_t PDAexclusionPDA_15082(int a1, unsigned int a2, int a3, unsigned int a4)
{
  v4 = BYTE2(a1);
  v5 = BYTE1(a1);
  v6 = a1;
  v7 = BYTE2(a3);
  if (BYTE2(a3) >= a4)
  {
    v7 = a4;
  }

  if (BYTE2(a1) >= a2)
  {
    v4 = a2;
  }

  v8 = 255 * (v7 + v4) - 2 * v4 * v7;
  if (BYTE1(a3) >= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = BYTE1(a3);
  }

  if (BYTE1(a1) >= a2)
  {
    v5 = a2;
  }

  v10 = 255 * (v9 + v5) - 2 * v5 * v9;
  if (a3 >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = a3;
  }

  if (a1 >= a2)
  {
    v6 = a2;
  }

  v12 = 255 * (v11 + v6) - 2 * v6 * v11;
  v13 = 255 * (a4 + a2) - a4 * a2;
  if (v10 >= 65152)
  {
    v14 = 65152;
  }

  else
  {
    v14 = v10 + 128;
  }

  v15 = v14 + (v14 >> 8);
  if (v12 >= 65152)
  {
    v16 = 65152;
  }

  else
  {
    v16 = v12 + 128;
  }

  v17 = v16 + (v16 >> 8);
  if (v13 >= 65152)
  {
    v18 = 65152;
  }

  else
  {
    v18 = v13 + 128;
  }

  v19 = (v18 + (v18 >> 8)) >> 8;
  if (v8 >= 65152)
  {
    v20 = 16711680;
  }

  else
  {
    v20 = (257 * v8 + 32896) & 0xFF0000;
  }

  return v20 & 0xFF0000 | v15 & 0xFF00 | (v19 << 24) | BYTE1(v17);
}

uint64_t PDAhuePDA_15083(unsigned __int8 a1, unsigned int a2, unsigned __int8 a3, unsigned int a4)
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = vand_s8(vshl_u32(vdup_n_s32(a3), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
  v5 = vdup_n_s32(a4);
  v6 = vdup_n_s32(a2);
  v7 = vmin_u32(vand_s8(vshl_u32(vdup_n_s32(a1), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL), v6);
  if (a3 >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = a3;
  }

  if (a1 >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = a1;
  }

  if (a4 == 255)
  {
    v12 = 0;
    v10 = 0;
  }

  else
  {
    v10 = vmul_s32(vdup_n_s32(a4 ^ 0xFF), v7);
    v11 = vmla_s32(0x8000000080, v7, v5);
    v7 = vshr_n_u32(vsra_n_u32(v11, v11, 8uLL), 8uLL);
    v12 = (a4 ^ 0xFF) * v9;
    v9 = (v9 * a4 + 128 + ((v9 * a4 + 128) >> 8)) >> 8;
  }

  v13 = vmin_u32(v4, v5);
  if (a2 != 255)
  {
    v10 = vmla_s32(v10, v13, vdup_n_s32(a2 ^ 0xFF));
    v14 = vmla_s32(0x8000000080, v13, v6);
    v13 = vshr_n_u32(vsra_n_u32(v14, v14, 8uLL), 8uLL);
    v12 += v8 * (a2 ^ 0xFF);
    v8 = (v8 * a2 + 128 + ((v8 * a2 + 128) >> 8)) >> 8;
  }

  v50 = v13;
  v51 = v8;
  v15 = v13.i32[0];
  v16 = v13.i32[0] < v13.i32[1];
  if (v13.i32[0] >= v13.i32[1])
  {
    v17 = v13.u32[1];
  }

  else
  {
    v17 = v13.i32[0];
  }

  if (v13.i32[0] <= v13.i32[1])
  {
    v15 = v13.u32[1];
  }

  if (v8 <= v15)
  {
    v18 = 2;
  }

  else
  {
    v18 = v13.i32[0] < v13.i32[1];
  }

  if (v8 <= v15)
  {
    v19 = v13.i32[0] < v13.i32[1];
  }

  else
  {
    v19 = 2;
  }

  v20 = v8 >= v17;
  if (v8 >= v17)
  {
    v21 = v13.i32[0] >= v13.i32[1];
  }

  else
  {
    v21 = 2;
  }

  if (v20)
  {
    v22 = v18;
  }

  else
  {
    v22 = v13.i32[0] >= v13.i32[1];
  }

  if (v20)
  {
    v16 = v19;
  }

  v23 = v50.i32[v16];
  v24 = v50.i32[v21];
  v25 = __OFSUB__(v23, v24);
  v26 = v23 - v24;
  if ((v26 < 0) ^ v25 | (v26 == 0))
  {
    v50.i32[v16] = 0;
    v50.i32[v22] = 0;
  }

  else
  {
    v27 = v7.u32[1];
    if (v7.i32[0] >= v7.i32[1])
    {
      v28 = v7.u32[1];
    }

    else
    {
      v28 = v7.i32[0];
    }

    if (v7.i32[0] > v7.i32[1])
    {
      v27 = v7.i32[0];
    }

    if (v9 <= v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = v9;
    }

    if (v9 >= v28)
    {
      v27 = v29;
    }

    else
    {
      v28 = v9;
    }

    v30 = v27 - v28;
    v50.i32[v16] = v30;
    v50.i32[v22] = ((v50.i32[v22] - v50.i32[v21]) * ((v30 << 16) / v26) + 0x8000) >> 16;
  }

  v50.i32[v21] = 0;
  v31 = vmul_s32(vsub_s32(v7, v50), 0x970000004DLL);
  v32 = v31.i32[0] + v31.i32[1] + 28 * (v9 - v51);
  v33 = v32 + 128;
  v34 = v50.i32[0] + ((v32 + 128) >> 8);
  v35 = v50.i32[1] + ((v32 + 128) >> 8);
  v36 = (a4 * a2 + 128 + ((a4 * a2 + 128) >> 8)) >> 8;
  v37 = v51 + ((v32 + 128) >> 8);
  if (v32 != v32)
  {
    v38 = v50.i32[0] >= v50.i32[1] ? v50.i32[1] + ((v32 + 128) >> 8) : v50.i32[0] + ((v32 + 128) >> 8);
    v39 = v50.i32[0] >= v50.i32[1] ? v50.i32[0] + ((v32 + 128) >> 8) : v50.i32[1] + ((v32 + 128) >> 8);
    v40 = v37 <= v39 ? v39 : v51 + ((v32 + 128) >> 8);
    if (v37 >= v38)
    {
      v39 = v40;
    }

    else
    {
      v38 = v37;
    }

    if (v39 > v36 || v38 < 0)
    {
      v41 = v33 >> 8;
      v42 = (77 * v34 + 151 * v35 + 28 * v37 + 128) >> 8;
      if (v41 < 0)
      {
        v43 = v42 - v38;
        if (!v43)
        {
          goto LABEL_67;
        }

        v44 = (77 * v34 + 151 * v35 + 28 * v37 + 128) >> 8;
      }

      else
      {
        v43 = v39 - v42;
        if (v39 == v42)
        {
          goto LABEL_67;
        }

        v44 = v36 - v42;
      }

      v45 = (v44 << 16) / v43;
      v34 = v42 + ((v45 * (v34 - v42) + 0x8000) >> 16);
      v35 = v42 + ((v45 * (v35 - v42) + 0x8000) >> 16);
      v37 = v42 + ((v45 * (v37 - v42) + 0x8000) >> 16);
    }
  }

LABEL_67:
  if (v12 >> 7 >= 0x1FD)
  {
    v46 = 65152;
  }

  else
  {
    v46 = v12 + 128;
  }

  if (v10.i32[1] >> 7 >= 0x1FD)
  {
    v47 = 65152;
  }

  else
  {
    v47 = v10.i32[1] + 128;
  }

  if (v10.i32[0] >> 7 >= 0x1FD)
  {
    v48 = 65152;
  }

  else
  {
    v48 = v10.i32[0] + 128;
  }

  return (v37 + ((v46 + (v46 >> 8)) >> 8)) | ((a4 + a2 - v36) << 24) | (v47 + (v47 >> 8) + (v35 << 8)) & 0xFF00 | ((v34 + ((v48 + (v48 >> 8)) >> 8)) << 16);
}

uint64_t PDAsaturationPDA_15084(unsigned __int8 a1, unsigned int a2, unsigned __int8 a3, unsigned int a4)
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = vdup_n_s32(a4);
  v5 = COERCE_DOUBLE(vmin_u32(vand_s8(vshl_u32(vdup_n_s32(a3), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL), v4));
  v6 = vdup_n_s32(a2);
  v7 = vmin_u32(vand_s8(vshl_u32(vdup_n_s32(a1), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL), v6);
  if (a3 >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = a3;
  }

  if (a1 >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = a1;
  }

  if (a4 == 255)
  {
    v12 = 0;
    v10 = 0;
  }

  else
  {
    v10 = vmul_s32(vdup_n_s32(a4 ^ 0xFF), v7);
    v11 = vmla_s32(0x8000000080, v7, v4);
    v7 = vshr_n_u32(vsra_n_u32(v11, v11, 8uLL), 8uLL);
    v12 = (a4 ^ 0xFF) * v9;
    v9 = (v9 * a4 + 128 + ((v9 * a4 + 128) >> 8)) >> 8;
  }

  v13 = COERCE_DOUBLE(vrev64_s32(v10));
  v14 = COERCE_DOUBLE(vmla_s32(*&v13, *&v5, vdup_n_s32(a2 ^ 0xFF)));
  v15 = vmla_s32(0x8000000080, *&v5, v6);
  v16 = COERCE_DOUBLE(vshr_n_u32(vsra_n_u32(v15, v15, 8uLL), 8uLL));
  if (a2 == 255)
  {
    v16 = v5;
    v17 = v13;
  }

  else
  {
    v12 += v8 * (a2 ^ 0xFF);
    v8 = (v8 * a2 + 128 + ((v8 * a2 + 128) >> 8)) >> 8;
    v17 = v14;
  }

  v51 = v7;
  v52 = v9;
  v18 = v7.i32[0];
  if (v7.i32[0] >= v7.i32[1])
  {
    v19 = v7.u32[1];
  }

  else
  {
    v19 = v7.i32[0];
  }

  if (v7.i32[0] <= v7.i32[1])
  {
    v18 = v7.u32[1];
  }

  if (v9 <= v18)
  {
    v20 = 2;
  }

  else
  {
    v20 = v7.i32[0] < v7.i32[1];
  }

  if (v9 <= v18)
  {
    v21 = v7.i32[0] < v7.i32[1];
  }

  else
  {
    v21 = 2;
  }

  if (v9 >= v19)
  {
    v22 = v7.i32[0] >= v7.i32[1];
  }

  else
  {
    v22 = 2;
  }

  if (v9 >= v19)
  {
    v23 = v21;
  }

  else
  {
    v20 = v7.i32[0] >= v7.i32[1];
    v23 = v7.i32[0] < v7.i32[1];
  }

  v24 = v51.i32[v23];
  v25 = v51.i32[v22];
  v26 = __OFSUB__(v24, v25);
  v27 = v24 - v25;
  if ((v27 < 0) ^ v26 | (v27 == 0))
  {
    v51.i32[v23] = 0;
    v51.i32[v20] = 0;
  }

  else
  {
    v28 = HIDWORD(v16);
    if (HIDWORD(v16) >= LODWORD(v16))
    {
      v29 = LODWORD(v16);
    }

    else
    {
      v29 = HIDWORD(v16);
    }

    if (HIDWORD(v16) <= LODWORD(v16))
    {
      v28 = LODWORD(v16);
    }

    if (v8 <= v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = v8;
    }

    if (v8 >= v29)
    {
      v8 = v29;
      v28 = v30;
    }

    v31 = v28 - v8;
    v51.i32[v23] = v31;
    v51.i32[v20] = ((v51.i32[v20] - v51.i32[v22]) * ((v31 << 16) / v27) + 0x8000) >> 16;
  }

  v51.i32[v22] = 0;
  v32 = vmul_s32(vsub_s32(v7, v51), 0x970000004DLL);
  v33 = v32.i32[0] + v32.i32[1] + 28 * (v9 - v52);
  v34 = v33 + 128;
  v35 = v51.i32[0] + ((v33 + 128) >> 8);
  v36 = v51.i32[1] + ((v33 + 128) >> 8);
  v37 = (a4 * a2 + 128 + ((a4 * a2 + 128) >> 8)) >> 8;
  v38 = v52 + ((v33 + 128) >> 8);
  if (v33 != v33)
  {
    v39 = v51.i32[0] >= v51.i32[1] ? v51.i32[1] + ((v33 + 128) >> 8) : v51.i32[0] + ((v33 + 128) >> 8);
    v40 = v51.i32[0] >= v51.i32[1] ? v51.i32[0] + ((v33 + 128) >> 8) : v51.i32[1] + ((v33 + 128) >> 8);
    v41 = v38 <= v40 ? v40 : v52 + ((v33 + 128) >> 8);
    if (v38 >= v39)
    {
      v40 = v41;
    }

    else
    {
      v39 = v38;
    }

    if (v40 > v37 || v39 < 0)
    {
      v42 = v34 >> 8;
      v43 = (77 * v35 + 151 * v36 + 28 * v38 + 128) >> 8;
      if (v42 < 0)
      {
        v44 = v43 - v39;
        if (!v44)
        {
          goto LABEL_64;
        }

        v45 = (77 * v35 + 151 * v36 + 28 * v38 + 128) >> 8;
      }

      else
      {
        v44 = v40 - v43;
        if (v40 == v43)
        {
          goto LABEL_64;
        }

        v45 = v37 - v43;
      }

      v46 = (v45 << 16) / v44;
      v35 = v43 + ((v46 * (v35 - v43) + 0x8000) >> 16);
      v36 = v43 + ((v46 * (v36 - v43) + 0x8000) >> 16);
      v38 = v43 + ((v46 * (v38 - v43) + 0x8000) >> 16);
    }
  }

LABEL_64:
  if (v12 >> 7 >= 0x1FD)
  {
    v47 = 65152;
  }

  else
  {
    v47 = v12 + 128;
  }

  if (LODWORD(v17) >> 7 >= 0x1FD)
  {
    v48 = 65152;
  }

  else
  {
    v48 = LODWORD(v17) + 128;
  }

  if (HIDWORD(v17) >> 7 >= 0x1FD)
  {
    v49 = 65152;
  }

  else
  {
    v49 = HIDWORD(v17) + 128;
  }

  return (v38 + ((v47 + (v47 >> 8)) >> 8)) | ((a4 + a2 - v37) << 24) | (v48 + (v48 >> 8) + (v36 << 8)) & 0xFF00 | ((v35 + ((v49 + (v49 >> 8)) >> 8)) << 16);
}

uint64_t PDAluminosityPDA_15085(unsigned __int8 a1, unsigned int a2, unsigned __int8 a3, unsigned int a4)
{
  v4 = vand_s8(vshl_u32(vdup_n_s32(a3), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL);
  v5 = vdup_n_s32(a4);
  v6 = vdup_n_s32(a2);
  v7 = vmin_u32(vand_s8(vshl_u32(vdup_n_s32(a1), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL), v6);
  if (a3 >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = a3;
  }

  if (a1 >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = a1;
  }

  if (a4 == 255)
  {
    v12 = 0;
    v10 = 0;
  }

  else
  {
    v10 = vmul_s32(vdup_n_s32(a4 ^ 0xFF), v7);
    v11 = vmla_s32(0x8000000080, v7, v5);
    v7 = vshr_n_u32(vsra_n_u32(v11, v11, 8uLL), 8uLL);
    v12 = (a4 ^ 0xFF) * v9;
    v9 = (v9 * a4 + 128 + ((v9 * a4 + 128) >> 8)) >> 8;
  }

  v13 = vmin_u32(v4, v5);
  if (a2 != 255)
  {
    v10 = vmla_s32(v10, v13, vdup_n_s32(a2 ^ 0xFF));
    v14 = vmla_s32(0x8000000080, v13, v6);
    v13 = vshr_n_u32(vsra_n_u32(v14, v14, 8uLL), 8uLL);
    v12 += v8 * (a2 ^ 0xFF);
    v8 = (v8 * a2 + 128 + ((v8 * a2 + 128) >> 8)) >> 8;
  }

  v15 = vmul_s32(vsub_s32(v13, v7), 0x4D00000097);
  v16 = (a4 * a2 + 128 + ((a4 * a2 + 128) >> 8)) >> 8;
  v17 = v15.i32[0] + 28 * (v8 - v9) + v15.i32[1];
  v18 = (v17 + 128) >> 8;
  v19 = vadd_s32(vdup_n_s32(v18), v7);
  v20 = v9 + v18;
  if (v17 != v17)
  {
    v21 = vcgt_u32(v7, vdup_lane_s32(v7, 1)).u8[0];
    v22 = (v21 & 1) != 0 ? v19.i32[1] : v19.i32[0];
    v23 = (v21 & 1) != 0 ? v19.i32[0] : v19.i32[1];
    v24 = v20 <= v23 ? v23 : v20;
    if (v20 >= v22)
    {
      v23 = v24;
    }

    else
    {
      v22 = v20;
    }

    if (v23 > v16 || v22 < 0)
    {
      v25 = (77 * v19.i32[1] + 151 * v19.i32[0] + 28 * v20 + 128) >> 8;
      if ((v18 & 0x80000000) != 0)
      {
        v26 = v25 - v22;
        if (v25 == v22)
        {
          goto LABEL_33;
        }

        v27 = (77 * v19.i32[1] + 151 * v19.i32[0] + 28 * v20 + 128) >> 8;
      }

      else
      {
        v26 = v23 - v25;
        if (v23 == v25)
        {
          goto LABEL_33;
        }

        v27 = v16 - v25;
      }

      v28 = vdup_n_s32(v25);
      v29 = (v27 << 16) / v26;
      v20 = v25 + ((v29 * (v20 - v25) + 0x8000) >> 16);
      v19 = vsra_n_s32(v28, vmla_s32(0x800000008000, vdup_n_s32(v29), vsub_s32(v19, v28)), 0x10uLL);
    }
  }

LABEL_33:
  v30 = a4 + a2 - v16;
  v31 = v12 + 128;
  if (v12 >> 7 >= 0x1FD)
  {
    v31 = 65152;
  }

  v32 = v20 + ((v31 + (v31 >> 8)) >> 8);
  v33 = vcgt_u32(vdup_n_s32(0xFE80u), v10);
  v34 = v10.i32[0] + 128;
  if ((v33.i8[0] & 1) == 0)
  {
    v34 = 65152;
  }

  v35 = v34 + (v34 >> 8);
  if (v33.i8[4])
  {
    v36 = v10.i32[1] + 128;
  }

  else
  {
    v36 = 65152;
  }

  return v32 | (v30 << 24) | (v35 + (v19.i16[0] << 8)) & 0xFF00 | ((v19.i8[4] + ((v36 + (v36 >> 8)) >> 8)) << 16);
}

uint64_t PDAtranspose_huePDA_15086(unsigned __int8 a1, unsigned int a2, unsigned __int8 a3, unsigned int a4)
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = vand_s8(vshl_u32(vdup_n_s32(a1), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL);
  v5 = vand_s8(vshl_u32(vdup_n_s32(a3), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL);
  if (a3 >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a3;
  }

  v7 = vdup_n_s32(a4);
  if (a1 >= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = a1;
  }

  v9 = vdup_n_s32(a2);
  v10 = vmin_u32(v4, v9);
  if (a4 == 255)
  {
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v11 = (a4 ^ 0xFF) * v8;
    v8 = (v8 * a4 + 128 + ((v8 * a4 + 128) >> 8)) >> 8;
    v12 = vmul_s32(vdup_n_s32(a4 ^ 0xFF), v10);
    v13 = vmla_s32(0x8000000080, v10, v7);
    v10 = vshr_n_u32(vsra_n_u32(v13, v13, 8uLL), 8uLL);
  }

  v14 = vmin_u32(v5, v7);
  if (a2 != 255)
  {
    v11 += v6 * (a2 ^ 0xFF);
    v6 = (v6 * a2 + 128 + ((v6 * a2 + 128) >> 8)) >> 8;
    v12 = vmla_s32(v12, v14, vdup_n_s32(a2 ^ 0xFF));
    v15 = vmla_s32(0x8000000080, v14, v9);
    v14 = vshr_n_u32(vsra_n_u32(v15, v15, 8uLL), 8uLL);
  }

  v50 = v6;
  v51 = v14;
  v16 = v6 < v14.i32[0];
  v17 = v6 >= v14.i32[0];
  if (v6 >= v14.i32[0])
  {
    v18 = v14.i32[0];
  }

  else
  {
    v18 = v6;
  }

  if (v6 <= v14.i32[0])
  {
    v6 = v14.i32[0];
  }

  if (v14.i32[1] <= v6)
  {
    v19 = 2;
  }

  else
  {
    v19 = v16;
  }

  if (v14.i32[1] <= v6)
  {
    v20 = v16;
  }

  else
  {
    v20 = 2;
  }

  if (v14.i32[1] >= v18)
  {
    v21 = v17;
  }

  else
  {
    v21 = 2;
  }

  if (v14.i32[1] >= v18)
  {
    v22 = v20;
  }

  else
  {
    v19 = v17;
    v22 = v16;
  }

  v23 = *(&v50 + v22);
  v24 = *(&v50 + v21);
  v25 = __OFSUB__(v23, v24);
  v26 = v23 - v24;
  if ((v26 < 0) ^ v25 | (v26 == 0))
  {
    *(&v50 + v22) = 0;
    *(&v50 + v19) = 0;
  }

  else
  {
    v27 = v10.i32[0];
    if (v8 >= v10.i32[0])
    {
      v28 = v10.i32[0];
    }

    else
    {
      v28 = v8;
    }

    if (v8 > v10.i32[0])
    {
      v27 = v8;
    }

    if (v10.i32[1] <= v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = v10.i32[1];
    }

    if (v10.i32[1] >= v28)
    {
      v27 = v29;
    }

    else
    {
      v28 = v10.u32[1];
    }

    v30 = v27 - v28;
    *(&v50 + v22) = v30;
    *(&v50 + v19) = ((*(&v50 + v19) - *(&v50 + v21)) * ((v30 << 16) / v26) + 0x8000) >> 16;
  }

  *(&v50 + v21) = 0;
  v31 = vmul_s32(vsub_s32(v10, v51), 0x1C00000097);
  v32 = v31.i32[0] + 77 * (v8 - v50);
  v33 = (a4 * a2 + 128 + ((a4 * a2 + 128) >> 8)) >> 8;
  v34 = v32 + v31.i32[1];
  v35 = (v34 + 128) >> 8;
  v36 = v50 + v35;
  v37 = vadd_s32(vdup_n_s32(v35), v51);
  if (v34 != v34)
  {
    v38 = v50 >= v51.i32[0] ? v37.i32[0] : v50 + ((v34 + 128) >> 8);
    v39 = v50 >= v51.i32[0] ? v50 + ((v34 + 128) >> 8) : v37.i32[0];
    v40 = v37.i32[1] <= v39 ? v39 : v37.i32[1];
    if (v37.i32[1] >= v38)
    {
      v39 = v40;
    }

    else
    {
      v38 = v37.i32[1];
    }

    if (v39 > v33 || v38 < 0)
    {
      v41 = (77 * v36 + 151 * v37.i32[0] + 28 * v37.i32[1] + 128) >> 8;
      if ((v35 & 0x80000000) != 0)
      {
        v42 = v41 - v38;
        if (v41 == v38)
        {
          goto LABEL_64;
        }

        v43 = (77 * v36 + 151 * v37.i32[0] + 28 * v37.i32[1] + 128) >> 8;
      }

      else
      {
        v42 = v39 - v41;
        if (v39 == v41)
        {
          goto LABEL_64;
        }

        v43 = v33 - v41;
      }

      v44 = (v43 << 16) / v42;
      v36 = v41 + ((v44 * (v36 - v41) + 0x8000) >> 16);
      v45 = vdup_n_s32(v41);
      v37 = vsra_n_s32(v45, vmla_s32(0x800000008000, vdup_n_s32(v44), vsub_s32(v37, v45)), 0x10uLL);
    }
  }

LABEL_64:
  if (v12.i32[1] >> 7 >= 0x1FD)
  {
    v46 = 65152;
  }

  else
  {
    v46 = v12.i32[1] + 128;
  }

  if (v12.i32[0] >> 7 >= 0x1FD)
  {
    v47 = 65152;
  }

  else
  {
    v47 = v12.i32[0] + 128;
  }

  if (v11 >> 7 >= 0x1FD)
  {
    v48 = 65152;
  }

  else
  {
    v48 = v11 + 128;
  }

  return ((a4 + a2 - v33) << 24) | ((v37.i8[4] + ((v46 + (v46 >> 8)) >> 8)) << 16) | (v47 + (v47 >> 8) + (v37.i16[0] << 8)) & 0xFF00 | (v36 + ((v48 + (v48 >> 8)) >> 8));
}

uint64_t PDAtranspose_saturationPDA_15087(unsigned __int8 a1, unsigned int a2, unsigned __int8 a3, unsigned int a4)
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = vand_s8(vshl_u32(vdup_n_s32(a1), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL);
  v5 = vand_s8(vshl_u32(vdup_n_s32(a3), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL);
  if (a3 >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a3;
  }

  if (a1 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a1;
  }

  v8 = vdup_n_s32(a4);
  v9 = COERCE_DOUBLE(vmin_u32(v5, v8));
  v10 = vdup_n_s32(a2);
  v11 = vmin_u32(v4, v10);
  if (a4 == 255)
  {
    v12 = 0;
    v13 = 0.0;
  }

  else
  {
    v12 = (a4 ^ 0xFF) * v7;
    v7 = (v7 * a4 + 128 + ((v7 * a4 + 128) >> 8)) >> 8;
    v13 = COERCE_DOUBLE(vmul_s32(vdup_n_s32(a4 ^ 0xFF), v11));
    v14 = vmla_s32(0x8000000080, v11, v8);
    v11 = vshr_n_u32(vsra_n_u32(v14, v14, 8uLL), 8uLL);
  }

  v15 = COERCE_DOUBLE(vmla_s32(*&v13, *&v9, vdup_n_s32(a2 ^ 0xFF)));
  v16 = vmla_s32(0x8000000080, *&v9, v10);
  v17 = COERCE_DOUBLE(vshr_n_u32(vsra_n_u32(v16, v16, 8uLL), 8uLL));
  if (a2 == 255)
  {
    v18 = v6;
  }

  else
  {
    v12 += v6 * (a2 ^ 0xFF);
    v18 = (v6 * a2 + 128 + ((v6 * a2 + 128) >> 8)) >> 8;
  }

  if (a2 == 255)
  {
    v17 = v9;
    v19 = v13;
  }

  else
  {
    v19 = v15;
  }

  v54 = v7;
  v55 = v11;
  v20 = v11.i32[0];
  v21 = v7 >= v11.i32[0];
  if (v7 >= v11.i32[0])
  {
    v22 = v11.i32[0];
  }

  else
  {
    v22 = v7;
  }

  if (v7 > v11.i32[0])
  {
    v20 = v7;
  }

  if (v11.i32[1] <= v20)
  {
    v23 = 2;
  }

  else
  {
    v23 = v7 < v11.i32[0];
  }

  if (v11.i32[1] <= v20)
  {
    v24 = v7 < v11.i32[0];
  }

  else
  {
    v24 = 2;
  }

  if (v11.i32[1] >= v22)
  {
    v25 = v7 >= v11.i32[0];
  }

  else
  {
    v25 = 2;
  }

  if (v11.i32[1] < v22)
  {
    v26 = v7 < v11.i32[0];
  }

  else
  {
    v21 = v23;
    v26 = v24;
  }

  v27 = *(&v54 + v26);
  v28 = *(&v54 + v25);
  v29 = __OFSUB__(v27, v28);
  v30 = v27 - v28;
  if ((v30 < 0) ^ v29 | (v30 == 0))
  {
    *(&v54 + v26) = 0;
    *(&v54 + v21) = 0;
  }

  else
  {
    if (v18 >= LODWORD(v17))
    {
      v31 = LODWORD(v17);
    }

    else
    {
      v31 = v18;
    }

    if (v18 <= LODWORD(v17))
    {
      v18 = LODWORD(v17);
    }

    v32 = HIDWORD(v17);
    if (HIDWORD(v17) <= v18)
    {
      v33 = v18;
    }

    else
    {
      v33 = HIDWORD(v17);
    }

    if (HIDWORD(v17) >= v31)
    {
      v32 = v31;
      v18 = v33;
    }

    v34 = v18 - v32;
    *(&v54 + v26) = v34;
    *(&v54 + v21) = ((*(&v54 + v21) - *(&v54 + v25)) * ((v34 << 16) / v30) + 0x8000) >> 16;
  }

  *(&v54 + v25) = 0;
  v35 = vmul_s32(vsub_s32(v11, v55), 0x1C00000097);
  v36 = v35.i32[0] + 77 * (v7 - v54);
  v37 = (a4 * a2 + 128 + ((a4 * a2 + 128) >> 8)) >> 8;
  v38 = v36 + v35.i32[1];
  v39 = (v38 + 128) >> 8;
  v40 = v54 + v39;
  v41 = vadd_s32(vdup_n_s32(v39), v55);
  if (v38 != v38)
  {
    v42 = v54 >= v55.i32[0] ? v41.i32[0] : v54 + ((v38 + 128) >> 8);
    v43 = v54 >= v55.i32[0] ? v54 + ((v38 + 128) >> 8) : v41.i32[0];
    v44 = v41.i32[1] <= v43 ? v43 : v41.i32[1];
    if (v41.i32[1] >= v42)
    {
      v43 = v44;
    }

    else
    {
      v42 = v41.i32[1];
    }

    if (v43 > v37 || v42 < 0)
    {
      v45 = (77 * v40 + 151 * v41.i32[0] + 28 * v41.i32[1] + 128) >> 8;
      if ((v39 & 0x80000000) != 0)
      {
        v46 = v45 - v42;
        if (v45 == v42)
        {
          goto LABEL_67;
        }

        v47 = (77 * v40 + 151 * v41.i32[0] + 28 * v41.i32[1] + 128) >> 8;
      }

      else
      {
        v46 = v43 - v45;
        if (v43 == v45)
        {
          goto LABEL_67;
        }

        v47 = v37 - v45;
      }

      v48 = (v47 << 16) / v46;
      v40 = v45 + ((v48 * (v40 - v45) + 0x8000) >> 16);
      v49 = vdup_n_s32(v45);
      v41 = vsra_n_s32(v49, vmla_s32(0x800000008000, vdup_n_s32(v48), vsub_s32(v41, v49)), 0x10uLL);
    }
  }

LABEL_67:
  if (HIDWORD(v19) >> 7 >= 0x1FD)
  {
    v50 = 65152;
  }

  else
  {
    v50 = HIDWORD(v19) + 128;
  }

  if (LODWORD(v19) >> 7 >= 0x1FD)
  {
    v51 = 65152;
  }

  else
  {
    v51 = LODWORD(v19) + 128;
  }

  if (v12 >> 7 >= 0x1FD)
  {
    v52 = 65152;
  }

  else
  {
    v52 = v12 + 128;
  }

  return ((a4 + a2 - v37) << 24) | ((v41.i8[4] + ((v50 + (v50 >> 8)) >> 8)) << 16) | (v51 + (v51 >> 8) + (v41.i16[0] << 8)) & 0xFF00 | (v40 + ((v52 + (v52 >> 8)) >> 8));
}

uint64_t PDAtranspose_luminosityPDA_15088(unsigned __int8 a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = vand_s8(vshl_u32(vdup_n_s32(a1), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
  v5 = a3;
  v6 = vand_s8(vshl_u32(vdup_n_s32(a3), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
  if (a3 >= a4)
  {
    v5 = a4;
  }

  v7 = vdup_n_s32(a4);
  if (a1 >= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = a1;
  }

  v9 = vdup_n_s32(a2);
  v10 = vmin_u32(v4, v9);
  if (a4 == 255)
  {
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v11 = (a4 ^ 0xFF) * v8;
    v8 = (v8 * a4 + 128 + ((v8 * a4 + 128) >> 8)) >> 8;
    v12 = vmul_s32(vdup_n_s32(a4 ^ 0xFF), v10);
    v13 = vmla_s32(0x8000000080, v10, v7);
    v10 = vshr_n_u32(vsra_n_u32(v13, v13, 8uLL), 8uLL);
  }

  v14 = vmin_u32(v6, v7);
  if (a2 != 255)
  {
    v11 += v5 * (a2 ^ 0xFF);
    v5 = (v5 * a2 + 128 + ((v5 * a2 + 128) >> 8)) >> 8;
    v12 = vmla_s32(v12, v14, vdup_n_s32(a2 ^ 0xFF));
    v15 = vmla_s32(0x8000000080, v14, v9);
    v14 = vshr_n_u32(vsra_n_u32(v15, v15, 8uLL), 8uLL);
  }

  v16 = (a4 * a2 + 128 + ((a4 * a2 + 128) >> 8)) >> 8;
  v17 = vmul_s32(vsub_s32(v14, v10), 0x970000001CLL);
  v18 = v17.i32[0] + v17.i32[1] + 77 * (v5 - v8);
  v19 = (v18 + 128) >> 8;
  v20 = v8 + v19;
  v21 = vadd_s32(vdup_n_s32(v19), v10);
  if (v18 != v18)
  {
    v22 = v8 >= v10.i32[1] ? v21.i32[1] : v8 + ((v18 + 128) >> 8);
    v23 = v8 >= v10.i32[1] ? v8 + ((v18 + 128) >> 8) : v21.i32[1];
    v24 = v21.i32[0] <= v23 ? v23 : v21.i32[0];
    if (v21.i32[0] >= v22)
    {
      v23 = v24;
    }

    else
    {
      v22 = v21.i32[0];
    }

    if (v23 > v16 || v22 < 0)
    {
      v25 = (77 * v20 + 151 * v21.i32[1] + 28 * v21.i32[0] + 128) >> 8;
      if ((v19 & 0x80000000) != 0)
      {
        v26 = v25 - v22;
        if (v25 == v22)
        {
          goto LABEL_32;
        }

        v27 = (77 * v20 + 151 * v21.i32[1] + 28 * v21.i32[0] + 128) >> 8;
      }

      else
      {
        v26 = v23 - v25;
        if (v23 == v25)
        {
          goto LABEL_32;
        }

        v27 = v16 - v25;
      }

      v28 = (v27 << 16) / v26;
      v20 = v25 + ((v28 * (v20 - v25) + 0x8000) >> 16);
      v29 = vdup_n_s32(v25);
      v21 = vsra_n_s32(v29, vmla_s32(0x800000008000, vdup_n_s32(v28), vsub_s32(v21, v29)), 0x10uLL);
    }
  }

LABEL_32:
  v30 = a4 + a2 - v16;
  v31 = vcgt_u32(vdup_n_s32(0xFE80u), v12);
  v32 = v12.i32[0] + 128;
  if ((v31.i8[0] & 1) == 0)
  {
    v32 = 65152;
  }

  v33 = v21.i32[0] + ((v32 + (v32 >> 8)) >> 8);
  if (v31.i8[4])
  {
    v34 = v12.i32[1] + 128;
  }

  else
  {
    v34 = 65152;
  }

  v35 = v34 + (v34 >> 8);
  if (v11 >> 7 >= 0x1FD)
  {
    v36 = 65152;
  }

  else
  {
    v36 = v11 + 128;
  }

  return (v30 << 24) | (v33 << 16) | (v35 + (v21.i16[2] << 8)) & 0xFF00 | (v20 + ((v36 + (v36 >> 8)) >> 8));
}

uint64_t argb32_shade_custom_RGB(uint64_t result, uint64_t a2, uint64_t a3, int a4, double a5, int32x4_t a6)
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
  v26 = 4 * *(result + 48);
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
      v31 = (v25 + 2 * v26 * (v23 * (*&a6.i32[1] - v21)) + 8 * (v22 * (*a6.i32 - v20)));
LABEL_13:
      v32 = *(v10 + v29);
      result = (v32 + v31[1]) & 0xFF00 | (((v32 + *v31) >> 8) << 16) & 0xFFFFFF | ((v32 + v31[2]) >> 8) | (((v32 + v31[3]) >> 8) << 24);
      *v27 = result;
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

void argb32_shade_conic_RGB(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
  v37 = *(a1 + 336);
  v38 = *(a1 + 304);
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

  v36 = *(a1 + 308) - *(a1 + 304);
  do
  {
    v20 = v15 * ((v38 + (((atan2f(v13, v8) * 0.15915) + 0.5) * v36)) - v37);
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

    v27 = (v16 + 2 * (4 * v21));
    v28 = *v27;
    v29 = 255 - v24;
    v30 = v27[1];
    v31 = v27[2];
    v32 = (v16 + 8 * v26);
    v33 = v32[2];
    v34 = v24 * *v32;
    LODWORD(v27) = v24 * v32[3] + v29 * v27[3];
    LODWORD(v32) = v24 * v32[1] + v29 * v30;
    v35 = *(v10 + v19);
    *v17++ = (v34 + (v35 << 8) + v29 * v28) & 0xFF0000 | (v35 + (v32 >> 8)) & 0xFF00 | ((v35 + ((v24 * v33 + v29 * v31) >> 8)) >> 8) | (((v35 + (v27 >> 8)) >> 8) << 24);
    v19 = (v19 + 1) & v11;
    v8 = v4 + v8;
    v13 = v12 + v13;
    *v18++ = -1;
    --a4;
  }

  while (a4);
}

void argb32_shade_radial_RGB(uint64_t a1, unint64_t a2, unint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v12 = *(a1 + 280);
  v13 = *(a1 + 284);
  v14 = *(*(a1 + 272) + 4);
  v15 = v14 * a2;
  v16 = v14 * a3;
  v17 = *(a1 + 296) + ((*(a1 + 288) * v16) + (v12 * v15));
  v18 = *(a1 + 300) + ((v16 * *(a1 + 292)) + (v13 * v15));
  v20 = *(a1 + 400);
  v21 = *(a1 + 336);
  v22 = *(a1 + 344);
  v23 = *(a1 + 304);
  v24 = *(a1 + 308);
  v25 = *(a1 + 324);
  LODWORD(a12) = *(v20 + 8);
  v26 = *(v20 + 16);
  v27 = *(v20 + 20);
  v28 = *(v20 + 28);
  v31 = a1 + 144;
  v29 = *(a1 + 144);
  v30 = *(v31 + 8);
  v32 = *(a1 + 376);
  v33 = *(a1 + 360);
  v34 = (a2 >> 8) & 0xF;
  if (*&a12 != 0.0 || v28 != 0.0 || v13 != 0.0)
  {
    v44 = *(a1 + 320);
    v45 = *(v20 + 12);
    v46 = *(v20 + 24);
    v47 = *(v20 + 32);
    v48 = a1 + 368;
    v49 = *(a1 + 368);
    v50 = v49 + ((a3 >> 4) & 0xF0);
    v38 = v49 == 0;
    v51 = 15;
    if (v38)
    {
      v51 = 0;
      v34 = 0;
    }

    else
    {
      v48 = v50;
    }

    v52 = -v46;
    v53 = v24 - v23;
    while (1)
    {
      v54 = v52 + ((v17 + v17) * *&a12);
      v55 = ((v18 * v18) + (v17 * v17)) - v28;
      if (v27 == 0.0)
      {
        v62 = v55 / v54;
      }

      else
      {
        v56 = ((v27 * -4.0) * v55) + (v54 * v54);
        if (v56 < 0.0)
        {
          goto LABEL_51;
        }

        v57 = sqrtf(v56);
        v58 = v47 * (v54 - v57);
        v59 = v54 + v57;
        v60 = v47 * v59;
        v61 = (v47 * v59) <= v58;
        if ((v47 * v59) <= v58)
        {
          v62 = v47 * v59;
        }

        else
        {
          v62 = v58;
        }

        if (v61)
        {
          v60 = v58;
        }

        if (v60 < 0.0)
        {
          v63 = v60 < v45;
LABEL_37:
          v64 = v44;
          if (v63)
          {
            goto LABEL_51;
          }

LABEL_38:
          if ((v64 & 0x80000000) == 0)
          {
            goto LABEL_50;
          }

          goto LABEL_51;
        }

        if (v60 <= 1.0)
        {
          v65 = v23 + (v60 * v53);
          goto LABEL_49;
        }

        if ((v25 & 0x80000000) == 0)
        {
          v64 = v25;
          if (v60 <= v26)
          {
LABEL_50:
            v66 = (v33 + 2 * (4 * v64));
LABEL_52:
            v67 = *(v48 + v34);
            *v30 = (v67 + v66->i16[1]) & 0xFF00 | (((v67 + v66->i16[0]) >> 8) << 16) & 0xFFFFFF | ((v67 + v66->i16[2]) >> 8) | (((v67 + v66->i16[3]) >> 8) << 24);
            LOBYTE(v66) = -1;
            goto LABEL_53;
          }
        }
      }

      if (v62 < 0.0)
      {
        v63 = v62 < v45;
        goto LABEL_37;
      }

      if (v62 > 1.0)
      {
        v64 = v25;
        if (v62 > v26)
        {
          goto LABEL_51;
        }

        goto LABEL_38;
      }

      v65 = v23 + (v62 * v53);
LABEL_49:
      v64 = (v22 * (v65 - v21));
      if ((v64 & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

LABEL_51:
      v66 = v32;
      if (v32)
      {
        goto LABEL_52;
      }

LABEL_53:
      v34 = (v34 + 1) & v51;
      v17 = v12 + v17;
      v18 = v13 + v18;
      v30 += 4;
      *v29++ = v66;
      if (!--a4)
      {
        return;
      }
    }
  }

  v35 = a1 + 368;
  v36 = *(a1 + 368);
  LODWORD(v37) = (BYTE1(a2) + 1) & 0xF;
  v38 = v36 == 0;
  if (v36)
  {
    v39 = v36 + ((a3 >> 4) & 0xF0);
  }

  else
  {
    v39 = v35;
  }

  if (v38)
  {
    LODWORD(v37) = 0;
    LODWORD(a2) = 0;
  }

  else
  {
    LODWORD(a2) = (a2 >> 8) & 0xF;
  }

  if (v38)
  {
    v40 = 0;
  }

  else
  {
    v40 = 15;
  }

  v41 = v18 * v18;
  v42 = -v27;
  if (v41 <= -v27)
  {
    v68 = fabsf(*(v20 + 32));
    v69 = v27 * -4.0;
    v70 = v24 - v23;
    v71 = a4 + 2;
    while (1)
    {
      v72 = v41 + (v17 * v17);
      v73 = v12 + v17;
      v74 = v41 + (v73 * v73);
      if (v72 <= v42 || v74 <= v42)
      {
        v76 = sqrtf(v69 * v74);
        v77 = v68 * sqrtf(v69 * v72);
        v78 = v68 * v76;
        v79 = (v22 * ((v23 + (v77 * v70)) - v21));
        v80 = (v22 * ((v23 + ((v68 * v76) * v70)) - v21));
        if (v77 > 1.0 || v78 > 1.0)
        {
          if (v77 <= 1.0)
          {
            if (v79 < 0)
            {
              goto LABEL_79;
            }

            v82 = (4 * v79);
          }

          else if (v77 > v26 || (v82 = (4 * v25), v25 < 0))
          {
LABEL_79:
            v93 = v32;
            if (v32)
            {
LABEL_80:
              v94 = *(v39 + a2);
              *v30 = (v94 + v93->i16[1]) & 0xFF00 | (((v94 + v93->i16[0]) >> 8) << 16) & 0xFFFFFF | ((v94 + v93->i16[2]) >> 8) | (((v94 + v93->i16[3]) >> 8) << 24);
              LOBYTE(v93) = -1;
            }

            if (v78 <= 1.0)
            {
              if (v80 < 0)
              {
                goto LABEL_88;
              }

              v95 = (4 * v80);
            }

            else if (v78 > v26 || (v95 = (4 * v25), v25 < 0))
            {
LABEL_88:
              if (!v32)
              {
                v101 = 0;
                goto LABEL_92;
              }

              v96 = *v32;
              v97 = v37;
              goto LABEL_90;
            }

            v96 = *(v33 + 2 * v95);
            v97 = v37;
LABEL_90:
            v87 = vaddw_u16(vdupq_n_s32(*(v39 + v97)), v96);
            goto LABEL_91;
          }

          v93 = (v33 + 2 * v82);
          goto LABEL_80;
        }

        v84 = (v33 + 8 * v79);
        v85 = *(v33 + 8 * v80);
        v86 = *(v39 + a2);
        v87 = vaddw_u16(vdupq_n_s32(*(v39 + v37)), v85);
        *v30 = (v86 + v84[1]) & 0xFF00 | (((v86 + *v84) >> 8) << 16) & 0xFFFFFF | ((v86 + v84[2]) >> 8) | (((v86 + v84[3]) >> 8) << 24);
      }

      else
      {
        if (v25 < 0)
        {
          if (!v32)
          {
            v101 = 0;
            LOBYTE(v93) = 0;
            goto LABEL_92;
          }

          v83 = *v32;
        }

        else
        {
          v83 = *(v33 + 2 * (4 * v25));
        }

        v88 = vmovl_u16(v83);
        v89 = *(v39 + a2);
        v90 = (v88.i32[0] + v89) >> 8;
        v91 = v88.i16[2] + v89;
        v87 = vaddw_u16(vdupq_n_s32(*(v39 + v37)), v83);
        *v88.i8 = vadd_s32(vdup_n_s32(v89), *&vextq_s8(v88, v88, 8uLL));
        v92.i32[0] = vshl_u32(*v88.i8, 0xFFFFFFF0FFFFFFF8).u32[0];
        v92.i32[1] = vshl_u32(*&v88, 0x1000000008).i32[1];
        *v88.i8 = vand_s8(v92, 0xFF000000000000FFLL);
        *v30 = v91 & 0xFF00 | (v90 << 16) | v88.i32[0] | v88.i32[1];
      }

      LOBYTE(v93) = -1;
LABEL_91:
      v98 = vextq_s8(v87, v87, 8uLL).u64[0];
      v99.i32[0] = vshl_u32(v98, 0xFFFFFFF0FFFFFFF8).u32[0];
      v99.i32[1] = vshl_u32(v98, 0x1000000008).i32[1];
      v100 = vand_s8(v99, 0xFF000000000000FFLL);
      *(v30 + 4) = v87.i16[2] & 0xFF00 | (v87.u8[1] << 16) | v100.i32[0] | v100.i32[1];
      v101 = -1;
LABEL_92:
      v17 = v12 + v73;
      LOBYTE(a2) = (a2 + 1) & v40;
      LOBYTE(v37) = (v37 + 1) & v40;
      v30 += 8;
      *v29 = v93;
      v29[1] = v101;
      v29 += 2;
      v71 -= 2;
      if (v71 <= 2)
      {
        return;
      }
    }
  }

  if (v32 || (v25 & 0x80000000) == 0)
  {
    v102 = (v33 + 2 * (4 * v25));
    if (v25 >= 0)
    {
      v103 = v102;
    }

    else
    {
      v103 = v32;
    }

    v104 = vdup_n_s32(*v103);
    v105 = vdup_n_s32(v103[1]);
    v106 = vdup_n_s32(v103[2]);
    v107 = vdup_n_s32(v103[3]);
    v108 = a4 + 4;
    do
    {
      v109 = (v39 + a2);
      a2 = (a2 + 1) & v40;
      LOBYTE(a12) = *v109;
      BYTE4(a12) = *(v39 + v37);
      v110 = vand_s8(*&a12, 0xFF000000FFLL);
      v111 = vorr_s8(vorr_s8(vand_s8(vshl_n_s32(vadd_s32(v104, v110), 8uLL), 0xFF000000FF0000), vand_s8(vadd_s32(v105, v110), 0xFF000000FF00)), vorr_s8((*&vshr_n_u32(vadd_s32(v106, v110), 8uLL) & 0xFFFFFEFFFFFFFEFFLL), (*&vshl_n_s32(vadd_s32(v107, v110), 0x10uLL) & 0xFF00FFFFFF00FFFFLL)));
      *v30 = v111;
      v37 = (v37 + 1) & v40;
      v111.i8[0] = *(v39 + a2);
      v111.i8[4] = *(v39 + v37);
      v112 = vand_s8(v111, 0xFF000000FFLL);
      a12 = COERCE_DOUBLE(vorr_s8(vorr_s8(vand_s8(vshl_n_s32(vadd_s32(v104, v112), 8uLL), 0xFF000000FF0000), vand_s8(vadd_s32(v105, v112), 0xFF000000FF00)), vorr_s8((*&vshr_n_u32(vadd_s32(v106, v112), 8uLL) & 0xFFFFFEFFFFFFFEFFLL), (*&vshl_n_s32(vadd_s32(v107, v112), 0x10uLL) & 0xFF00FFFFFF00FFFFLL))));
      *(v30 + 8) = a12;
      *v29 = -1;
      v29 += 4;
      v30 += 16;
      v108 -= 4;
    }

    while (v108 > 4);
  }

  else
  {
    if (a4 >= 4)
    {
      v43 = 4;
    }

    else
    {
      v43 = a4;
    }

    bzero(v29, ((a4 - v43 + 3) & 0xFFFFFFFC) + 4);
  }
}

void argb32_mark_image_W8(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  v12 = *(a1 + 28);
  v13 = *(a1 + 4);
  v14 = *(a1 + 8);
  v21 = *(a1 + 8);
  v22 = v13;
  v15 = *(a1 + 136);
  if (v15)
  {
    v16 = *(a1 + 104);
    LODWORD(v23) = *(a1 + 108);
    HIDWORD(v23) = v16;
    shape_enum_clip_alloc(a1, a2, v15, 1, 1, 1, v16, v23, v13, v14);
    v18 = v17;
    if (v17)
    {
      goto LABEL_5;
    }
  }

  v19 = 0;
  v20 = 0;
  v18 = 0;
  v23 = 0;
  while (1)
  {
    CGSConvertW8toRGBA8888((*(a1 + 88) + *(a1 + 76) * (a3 + v20 * a4) + v19 + v10), *(a1 + 76) * a4, (*(a1 + 40) + (*(a1 + 16) + v20) * v12 + 4 * (*(a1 + 12) + v19)), v12, v13, v14, a7, a8);
    if (!v18)
    {
      break;
    }

LABEL_5:
    if (!shape_enum_clip_next(v18, &v23 + 1, &v23, &v22, &v21))
    {

      free(v18);
      return;
    }

    v20 = v23;
    v19 = HIDWORD(v23);
    v14 = v21;
    v13 = v22;
  }
}

void argb32_mark_image_RGB24(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v39 = a2;
  v10 = *(a1 + 28);
  v11 = *(a1 + 4);
  v12 = *(a1 + 8);
  v41 = v12;
  v42 = v11;
  v13 = *(a1 + 136);
  if (v13)
  {
    v14 = *(a1 + 104);
    LODWORD(v43) = *(a1 + 108);
    HIDWORD(v43) = v14;
    shape_enum_clip_alloc(a1, a2, v13, 1, 1, 1, v14, v43, v11, v12);
    v16 = v15;
    if (v15)
    {
      goto LABEL_28;
    }
  }

  v17 = 0;
  v18 = 0;
  v16 = 0;
  v43 = 0;
  if ((v11 & 0x80000000) != 0)
  {
LABEL_4:
    _CGHandleAssert("CGSConvertBGR888toRGBA8888", 195, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "width >= 0", "width (%d) < 0", a6, a7, a8, v11);
  }

  while (1)
  {
    if ((v12 & 0x80000000) != 0)
    {
      _CGHandleAssert("CGSConvertBGR888toRGBA8888", 195, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "height >= 0", "height (%d) < 0", a6, a7, a8, v12);
    }

    v19 = *(a1 + 76);
    v20 = *(a1 + 88) + v19 * (a3 + v18 * v8) + 3 * (v17 + v39);
    v21 = *(a1 + 40) + (*(a1 + 16) + v18) * v10 + 4 * (*(a1 + 12) + v17);
    v22 = v19 * v8;
    v23 = v12 - 1;
    v24 = v20 + v23 * v22;
    v25 = v21 + v23 * v10;
    v26 = v10 >= 0 ? v10 : -v10;
    v27 = (v10 < 0 ? v25 : v21);
    v28 = v10 >= 0 ? v22 : -v22;
    v29 = (v10 < 0 ? v24 : v20);
    if ((v28 & 0x80000000) != 0)
    {
      v30 = malloc_type_malloc((v26 * v12), 0x682C7F2AuLL);
      v31 = v30;
      if (v12)
      {
        for (i = 0; i != v12; ++i)
        {
          if (v11)
          {
            v33 = &v30[i * v26];
            v34 = v11;
            v35 = &v29[i * v28];
            do
            {
              v36 = *v35;
              v37 = v35[1];
              *v33 = v35[2];
              v33[1] = v37;
              v33[2] = v36;
              v33[3] = -1;
              v35 += 3;
              v33 += 4;
              --v34;
            }

            while (v34);
          }
        }
      }

      CGBlt_copyBytes(4 * v11, v12, v30, v27, v26, v26);
      free(v31);
      v8 = a4;
      if (!v16)
      {
        return;
      }
    }

    else
    {
      v45.data = v29;
      v45.height = v12;
      v45.width = v11;
      v45.rowBytes = v28;
      v44.data = v27;
      v44.height = v12;
      v44.width = v11;
      v44.rowBytes = v26;
      vImageConvert_RGB888toBGRA8888(&v45, 0, 0xFFu, &v44, 0, 0);
      if (!v16)
      {
        return;
      }
    }

LABEL_28:
    if (!shape_enum_clip_next(v16, &v43 + 1, &v43, &v42, &v41))
    {
      break;
    }

    v18 = v43;
    v17 = HIDWORD(v43);
    v12 = v41;
    v11 = v42;
    if ((v42 & 0x80000000) != 0)
    {
      goto LABEL_4;
    }
  }

  free(v16);
}

void argb32_mark_image_RGBX32(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a2;
  v13 = *(a1 + 28);
  v14 = *(a1 + 4);
  v15 = *(a1 + 8);
  v26 = v15;
  v27 = v14;
  v16 = *(a1 + 136);
  if (v16)
  {
    v17 = *(a1 + 104);
    LODWORD(i) = *(a1 + 108);
    HIDWORD(i) = v17;
    shape_enum_clip_alloc(a1, a2, v16, 1, 1, 1, v17, i, v14, v15);
    v19 = v18;
    if (v18)
    {
      goto LABEL_9;
    }
  }

  v20 = 0;
  v21 = 0;
  v19 = 0;
  for (i = 0; ; v20 = HIDWORD(i))
  {
    v22 = *(a1 + 76);
    v23 = (*(a1 + 88) + v22 * (a4 + v21 * a5) + 4 * (v20 + a3));
    v24 = (*(a1 + 40) + (*(a1 + 16) + v21) * v13 + 4 * (*(a1 + 12) + v20));
    v25 = v22 * a5;
    if (v11 == 2)
    {
      CGSBlend8888toRGBA8888(v23, v25, v24, v13, v27, v26, 0xE4u, *(a1 + 48) != 0);
      if (!v19)
      {
        return;
      }
    }

    else if (*(a1 + 96))
    {
      CGSConvertBGRA8888toRGBA8888(v23, v25, v24, v13, v27, v26, a7, a8);
      if (!v19)
      {
        return;
      }
    }

    else
    {
      CGSConvertBGRX8888toRGBA8888(v23, v25, v24, v13, v27, v26, a7, a8);
      if (!v19)
      {
        return;
      }
    }

LABEL_9:
    if (!shape_enum_clip_next(v19, &i + 1, &i, &v27, &v26))
    {
      break;
    }

    v21 = i;
  }

  free(v19);
}

void argb32_mark_image_rgbx32(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a2;
  v13 = *(a1 + 28);
  v14 = *(a1 + 4);
  v15 = *(a1 + 8);
  v26 = v15;
  v27 = v14;
  v16 = *(a1 + 136);
  if (v16)
  {
    v17 = *(a1 + 104);
    LODWORD(i) = *(a1 + 108);
    HIDWORD(i) = v17;
    shape_enum_clip_alloc(a1, a2, v16, 1, 1, 1, v17, i, v14, v15);
    v19 = v18;
    if (v18)
    {
      goto LABEL_9;
    }
  }

  v20 = 0;
  v21 = 0;
  v19 = 0;
  for (i = 0; ; v20 = HIDWORD(i))
  {
    v22 = *(a1 + 76);
    v23 = (*(a1 + 88) + v22 * (a4 + v21 * a5) + 4 * (v20 + a3));
    v24 = (*(a1 + 40) + (*(a1 + 16) + v21) * v13 + 4 * (*(a1 + 12) + v20));
    v25 = v22 * a5;
    if (v11 == 2)
    {
      CGSBlend8888toRGBA8888(v23, v25, v24, v13, v27, v26, 0x1Bu, *(a1 + 48) != 0);
      if (!v19)
      {
        return;
      }
    }

    else if (*(a1 + 96))
    {
      CGSConvertARGB8888toRGBA8888(v23, v25, v24, v13, v27, v26, a7, a8);
      if (!v19)
      {
        return;
      }
    }

    else
    {
      CGSConvertXRGB8888toRGBA8888(v23, v25, v24, v13, v27, v26, a7, a8);
      if (!v19)
      {
        return;
      }
    }

LABEL_9:
    if (!shape_enum_clip_next(v19, &i + 1, &i, &v27, &v26))
    {
      break;
    }

    v21 = i;
  }

  free(v19);
}

void argb32_sample_rectilinear_argb32(_DWORD *a1, uint64_t a2, int a3, __n128 a4)
{
  v118[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 40);
  v110 = a1[7];
  v6 = a1[1];
  v5 = a1[2];
  v116 = v5;
  v117 = v6;
  if (v6 < 1 || v5 < 1)
  {
    return;
  }

  v8 = a1;
  if (a1[5] < 1)
  {
    return;
  }

  if (a1[6] < 1)
  {
    return;
  }

  if (a1[17] < 1)
  {
    return;
  }

  if (a1[16] < 1)
  {
    return;
  }

  v10 = a2;
  v11 = MEMORY[0x1EEE9AC00](4 * v6, a4);
  v18 = &v98 - v17;
  v19 = &v98 - v17;
  if (v6 >= 0x401)
  {
    v11 = malloc_type_malloc(v11, 0x1C0CB805uLL);
    v19 = v11;
    if (!v11)
    {
      return;
    }
  }

  v99 = v18;
  v100 = &v98;
  v20 = *(v8 + 5) + (v8[6] - 1) * v110 + 4 * v8[5] - 4;
  v21 = *(v8 + 17);
  v22 = v19;
  v106 = v10;
  v101 = v8;
  v105 = v19;
  if (v21)
  {
    v23 = v8[26];
    LODWORD(v118[0]) = v8[27];
    HIDWORD(v118[0]) = v23;
    shape_enum_clip_alloc(v11, v12, v21, 1, 1, 1, v23, v118[0], v6, v5);
    v25 = v24;
    if (v24)
    {
      goto LABEL_73;
    }
  }

  v26 = 0;
  v27 = 0;
  v25 = 0;
  v118[0] = 0;
  while (2)
  {
    v102 = v25;
    v28 = v27;
    v113 = *(v8 + 5) + (v8[4] + v27) * v110 + 4 * (v26 + v8[3]);
    v29 = *(v10 + 20);
    v111 = v29 >> 24;
    v30 = *(v10 + 104);
    v108 = *(v10 + 136);
    v31 = v30 + v108 * v28;
    v32 = *(v10 + 32);
    if (v6)
    {
      v33 = *(v10 + 112);
      v34 = *(v10 + 96) + v33 * v26;
      v35 = v6;
      v36 = -*(v10 + 64);
      v37 = *(v10 + 80) - v34;
      v38 = v22;
      do
      {
        v39 = v34 >> SBYTE2(v29);
        if ((v37 | (v36 + v34)) < 0)
        {
          v41 = 0;
        }

        else
        {
          v40 = rectilinear_weights[((v34 & ~(-1 << SBYTE2(v29))) >> (BYTE2(v29) - 4)) & 0xF];
          v39 -= v40 >> 4;
          v41 = v40 & 0xF;
        }

        v42 = *(v10 + 256);
        v21 = (v42 - (v41 != 0));
        v43 = v42 - 1;
        if (v39 >= v21)
        {
          LODWORD(v41) = 0;
          v39 = v43;
        }

        if (v39 < 0)
        {
          LODWORD(v41) = 0;
          LODWORD(v39) = 0;
        }

        *v38 = v41 | (v39 << 16);
        v38 += 4;
        v34 += v33;
        v37 -= v33;
        --v35;
      }

      while (v35);
    }

    v104 = ~(-1 << v111);
    v103 = (v111 - 4);
    v44 = v116;
    v45 = 0uLL;
    v107 = v32;
    v109 = v6;
    do
    {
      v46 = *(v10 + 260);
      v47 = v31 >> v111;
      if (((*(v10 + 88) - v31) | (v31 - *(v10 + 72))) < 0)
      {
        v49 = 0;
      }

      else
      {
        v48 = rectilinear_weights[((v31 & v104) >> v103) & 0xF];
        v47 -= v48 >> 4;
        v49 = v48 & 0xF;
      }

      v50 = v46 - (v49 != 0);
      v51 = v46 - 1;
      if (v47 >= v50)
      {
        v52 = 0;
      }

      else
      {
        v52 = v49;
      }

      if (v47 >= v50)
      {
        v47 = v51;
      }

      v53 = v32;
      v112 = v44;
      if (v47 < 0 || (v54 = *(v10 + 24), v53 = v32 + v54 * v47, !v52))
      {
        LODWORD(v52) = 0;
        v55 = v53;
      }

      else
      {
        v55 = v53 + v54;
      }

      v56 = vdupq_n_s16(v52);
      v57 = vdupq_n_s16(16 - v52);
      v58 = vzip1_s32(vdup_n_s8(v52), vdup_n_s8(16 - v52));
      v59 = v22;
      v60 = v113;
      v114 = v57;
      v115 = v56;
      while (v60 <= v20)
      {
        v61 = (*v59 >> 14) & 0x3FFFC;
        v62 = *v59 & 0xF;
        if (a3 != 2)
        {
          if (!v4)
          {
            if (v55 == v53)
            {
              if (v62)
              {
                v91 = *(v53 + v61);
                v92 = vzip1_s32(vdup_n_s8(v62), vdup_n_s8(16 - v62));
                v93 = vmull_u8(v91, v92);
                v80 = vrshrn_n_s16(vmlal_u8(vextq_s8(v93, v93, 8uLL), v91, v92), 4uLL).u32[0];
                goto LABEL_62;
              }

              v96 = *(v53 + v61);
            }

            else
            {
              if (v62)
              {
                v78 = vzip1_s32(vdup_n_s8(v62), vdup_n_s8(16 - v62));
                v79 = vmlaq_s16(vmulq_s16(vmull_u8(*(v53 + v61), v78), v56), vmull_u8(*(v55 + v61), v78), v57);
                *v79.i8 = vadd_s16(*v79.i8, *&vextq_s8(v79, v79, 8uLL));
                v80 = vraddhn_s16(v79, v45).u32[0];
              }

              else
              {
                v94.i32[0] = *(v53 + v61);
                v94.i32[1] = *(v55 + v61);
                v95 = vmull_u8(v94, v58);
                v80 = vrshrn_n_s16(vmlal_u8(vextq_s8(v95, v95, 8uLL), v94, v58), 4uLL).u32[0];
              }

LABEL_62:
              v96 = v80;
            }

            v97 = v96 | 0xFF000000;
LABEL_64:
            *v60 = v97;
            goto LABEL_65;
          }

          if (v55 == v53)
          {
            if (!v62)
            {
              v97 = *(v53 + v61);
              goto LABEL_64;
            }

            v86 = *(v53 + v61);
            v87 = vzip1_s32(vdup_n_s8(v62), vdup_n_s8(16 - v62));
            v88 = vmull_u8(v86, v87);
            v69 = vrshrn_n_s16(vmlal_u8(vextq_s8(v88, v88, 8uLL), v86, v87), 4uLL).u32[0];
          }

          else if (v62)
          {
            v70 = vzip1_s32(vdup_n_s8(v62), vdup_n_s8(16 - v62));
            v71 = vmlaq_s16(vmulq_s16(vmull_u8(*(v53 + v61), v70), v56), vmull_u8(*(v55 + v61), v70), v57);
            *v71.i8 = vadd_s16(*v71.i8, *&vextq_s8(v71, v71, 8uLL));
            v69 = vraddhn_s16(v71, v45).u32[0];
          }

          else
          {
            v89.i32[0] = *(v53 + v61);
            v89.i32[1] = *(v55 + v61);
            v90 = vmull_u8(v89, v58);
            v69 = vrshrn_n_s16(vmlal_u8(vextq_s8(v90, v90, 8uLL), v89, v58), 4uLL).u32[0];
          }

          goto LABEL_57;
        }

        if (v55 == v53)
        {
          if (!v62)
          {
            DplusDM_15070(v60, *(v53 + v61), *v60, ~*(v53 + v61) >> 24);
            v57 = v114;
            v56 = v115;
            v45 = 0uLL;
            goto LABEL_65;
          }

          v72 = *(v53 + v61);
          v73 = vzip1_s32(vdup_n_s8(v62), vdup_n_s8(16 - v62));
          v74 = vmull_u8(v72, v73);
          v75 = vextq_s8(v74, v74, 8uLL);
          v76.i64[0] = vmlal_u8(v75, v72, v73).u64[0];
          v76.i64[1] = v75.i64[0];
          v77 = vrshrn_n_s16(v76, 4uLL);
          goto LABEL_53;
        }

        if (!v62)
        {
          v72.i32[0] = *(v53 + v61);
          v72.i32[1] = *(v55 + v61);
          v81 = vmull_u8(v72, v58);
          v82 = vextq_s8(v81, v81, 8uLL);
          v83.i64[0] = vmlal_u8(v82, v72, v58).u64[0];
          v83.i64[1] = v82.i64[0];
          v77 = vrshrn_n_s16(v83, 4uLL);
LABEL_53:
          v72.i32[0] = *v60;
          v84.i64[0] = 0x1000100010001;
          v84.i64[1] = 0x1000100010001;
          v85 = vmlal_u8(v84, vdup_lane_s8(vmvn_s8(v77), 3), v72);
          v69 = vadd_s8(v77, vaddhn_s16(vshrq_n_u16(v85, 8uLL), v85)).u32[0];
          goto LABEL_57;
        }

        v63 = vzip1_s32(vdup_n_s8(v62), vdup_n_s8(16 - v62));
        v64 = vmlaq_s16(vmulq_s16(vmull_u8(*(v53 + v61), v63), v56), vmull_u8(*(v55 + v61), v63), v57);
        v65 = vextq_s8(v64, v64, 8uLL);
        *v65.i8 = vadd_s16(*v64.i8, *v65.i8);
        v64.i64[0] = v65.i64[0];
        v64.i64[1] = *(v53 + v61);
        v66 = vraddhn_s16(v64, v45);
        *v64.i8 = vdup_lane_s8(vmvn_s8(v66), 3);
        v66.i32[0] = *v60;
        v67.i64[0] = 0x1000100010001;
        v67.i64[1] = 0x1000100010001;
        v68 = vmlal_u8(v67, *v64.i8, v66);
        v69 = vaddhn_s16(vsraq_n_u16(v68, v68, 8uLL), v65).u32[0];
LABEL_57:
        *v60 = v69;
LABEL_65:
        ++v60;
        v59 += 4;
        LODWORD(v6) = v6 - 1;
        if (!v6)
        {
          break;
        }
      }

      v44 = v112 - 1;
      v116 = v112 - 1;
      v22 = v105;
      v10 = v106;
      if (v112 == 1)
      {
        goto LABEL_72;
      }

      LODWORD(v6) = v109;
      v31 += v108;
      v113 += v110;
      v32 = v107;
    }

    while (v20 >= v113);
    CGLog(3, "%s destination ptr is out-of-buffer", v21, v107, v13, v14, v15, v16, "argb32_sample_rectilinear_argb32");
LABEL_72:
    v8 = v101;
    v25 = v102;
    if (v102)
    {
LABEL_73:
      if (shape_enum_clip_next(v25, v118 + 1, v118, &v117, &v116))
      {
        v27 = v118[0];
        v26 = HIDWORD(v118[0]);
        v6 = v117;
        continue;
      }

      free(v25);
    }

    break;
  }

  if (v22 != v99)
  {
    free(v22);
  }
}

void argb32_mark_image_W16(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  v12 = *(a1 + 28);
  v13 = *(a1 + 4);
  v14 = *(a1 + 8);
  v21 = *(a1 + 8);
  v22 = v13;
  v15 = *(a1 + 136);
  if (v15)
  {
    v16 = *(a1 + 104);
    LODWORD(v23) = *(a1 + 108);
    HIDWORD(v23) = v16;
    shape_enum_clip_alloc(a1, a2, v15, 1, 1, 1, v16, v23, v13, v14);
    v18 = v17;
    if (v17)
    {
      goto LABEL_5;
    }
  }

  v19 = 0;
  v20 = 0;
  v18 = 0;
  v23 = 0;
  while (1)
  {
    CGSConvertW16toRGBA8888(*(a1 + 88) + *(a1 + 76) * (a3 + v20 * a4) + 2 * (v19 + v10), *(a1 + 76) * a4, (*(a1 + 40) + (*(a1 + 16) + v20) * v12 + 4 * (*(a1 + 12) + v19)), v12, v13, v14, a7, a8);
    if (!v18)
    {
      break;
    }

LABEL_5:
    if (!shape_enum_clip_next(v18, &v23 + 1, &v23, &v22, &v21))
    {

      free(v18);
      return;
    }

    v20 = v23;
    v19 = HIDWORD(v23);
    v14 = v21;
    v13 = v22;
  }
}

void argb32_mark_image_w16(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  v12 = *(a1 + 28);
  v13 = *(a1 + 4);
  v14 = *(a1 + 8);
  v21 = *(a1 + 8);
  v22 = v13;
  v15 = *(a1 + 136);
  if (v15)
  {
    v16 = *(a1 + 104);
    LODWORD(v23) = *(a1 + 108);
    HIDWORD(v23) = v16;
    shape_enum_clip_alloc(a1, a2, v15, 1, 1, 1, v16, v23, v13, v14);
    v18 = v17;
    if (v17)
    {
      goto LABEL_5;
    }
  }

  v19 = 0;
  v20 = 0;
  v18 = 0;
  v23 = 0;
  while (1)
  {
    CGSConvertw16toRGBA8888(*(a1 + 88) + *(a1 + 76) * (a3 + v20 * a4) + 2 * (v19 + v10), *(a1 + 76) * a4, (*(a1 + 40) + (*(a1 + 16) + v20) * v12 + 4 * (*(a1 + 12) + v19)), v12, v13, v14, a7, a8);
    if (!v18)
    {
      break;
    }

LABEL_5:
    if (!shape_enum_clip_next(v18, &v23 + 1, &v23, &v22, &v21))
    {

      free(v18);
      return;
    }

    v20 = v23;
    v19 = HIDWORD(v23);
    v14 = v21;
    v13 = v22;
  }
}

void argb32_mark_image_RGB48(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a2;
  v9 = *(a1 + 28);
  v10 = v9;
  v11 = *(a1 + 4);
  v12 = *(a1 + 8);
  v40 = v12;
  v41 = v11;
  v13 = *(a1 + 136);
  if (v13)
  {
    v14 = *(a1 + 104);
    LODWORD(v42) = *(a1 + 108);
    HIDWORD(v42) = v14;
    shape_enum_clip_alloc(a1, a2, v13, 1, 1, 1, v14, v42, v11, v12);
    v16 = v15;
    if (v15)
    {
      goto LABEL_24;
    }
  }

  v17 = 0;
  v18 = 0;
  v16 = 0;
  v42 = 0;
  if (v11 < 0)
  {
LABEL_4:
    _CGHandleAssert("CGSConvertBGR16toRGBA8888", 465, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "width >= 0", "width (%d) < 0", a6, a7, a8, v11);
  }

  while (1)
  {
    if (v12 < 0)
    {
      _CGHandleAssert("CGSConvertBGR16toRGBA8888", 465, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "height >= 0", "height (%d) < 0", a6, a7, a8, v12);
    }

    v39 = v16;
    v19 = *(a1 + 76);
    v20 = *(a1 + 88) + v19 * (a3 + v18 * a4) + 6 * (v17 + v36);
    v21 = (*(a1 + 40) + (*(a1 + 16) + v18) * v10 + 4 * (*(a1 + 12) + v17));
    v22 = v19 * a4;
    v23 = v12 - 1;
    if ((v9 & 0x80000000) != 0)
    {
      v20 += v23 * v22;
      LODWORD(v22) = -v22;
      v24 = v10;
      v21 += v23 * v10;
      v25 = v9;
      v26 = -v9;
    }

    else
    {
      v24 = v10;
      v25 = v9;
      v26 = v9;
    }

    v27 = v20 + ((v22 * v23) & (v22 >> 31));
    v28 = v21;
    if (v27 <= &v21[v12 * v26])
    {
      v29 = v22 >= 0 ? v22 : -v22;
      v28 = v21;
      if (v27 + (v29 * v12) >= v21)
      {
        v28 = malloc_type_malloc(v12 * v26, 0xA8ABB58AuLL);
      }
    }

    if (v12)
    {
      for (i = 0; i != v12; ++i)
      {
        if (v11)
        {
          v31 = &v28[i * v26];
          v32 = v11;
          v33 = (v20 + i * v22);
          do
          {
            v34 = *v33;
            v35 = v33[2];
            *v31 = v33[4];
            v31[1] = v35;
            v31[2] = v34;
            v31[3] = -1;
            v33 += 6;
            v31 += 4;
            --v32;
          }

          while (v32);
        }
      }
    }

    if (v28 != v21)
    {
      CGBlt_copyBytes(4 * v11, v12, v28, v21, v26, v26);
      free(v28);
    }

    v10 = v24;
    v9 = v25;
    v16 = v39;
    if (!v39)
    {
      break;
    }

LABEL_24:
    if (!shape_enum_clip_next(v16, &v42 + 1, &v42, &v41, &v40))
    {

      free(v16);
      return;
    }

    v18 = v42;
    v17 = HIDWORD(v42);
    v12 = v40;
    v11 = v41;
    if (v41 < 0)
    {
      goto LABEL_4;
    }
  }
}

void argb32_mark_image_rgb48(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = a2;
  v9 = *(a1 + 28);
  v10 = v9;
  v11 = *(a1 + 4);
  v12 = *(a1 + 8);
  v42 = v12;
  v43 = v11;
  v13 = *(a1 + 136);
  if (v13)
  {
    v14 = *(a1 + 104);
    LODWORD(v44) = *(a1 + 108);
    HIDWORD(v44) = v14;
    shape_enum_clip_alloc(a1, a2, v13, 1, 1, 1, v14, v44, v11, v12);
    v16 = v15;
    if (v15)
    {
      goto LABEL_24;
    }
  }

  v17 = 0;
  v18 = 0;
  v16 = 0;
  v44 = 0;
  if (v11 < 0)
  {
LABEL_4:
    _CGHandleAssert("CGSConvertbgr16toRGBA8888", 850, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "width >= 0", "width (%d) < 0", a6, a7, a8, v11);
  }

  while (1)
  {
    if (v12 < 0)
    {
      _CGHandleAssert("CGSConvertbgr16toRGBA8888", 850, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "height >= 0", "height (%d) < 0", a6, a7, a8, v12);
    }

    v41 = v16;
    v19 = *(a1 + 76);
    v20 = *(a1 + 88) + v19 * (a3 + v18 * a4) + 6 * (v17 + v38);
    v21 = (*(a1 + 40) + (*(a1 + 16) + v18) * v10 + 4 * (*(a1 + 12) + v17));
    v22 = v19 * a4;
    v23 = v12 - 1;
    if ((v9 & 0x80000000) != 0)
    {
      v20 += v23 * v22;
      LODWORD(v22) = -v22;
      v24 = v10;
      v21 += v23 * v10;
      v25 = v9;
      v26 = -v9;
    }

    else
    {
      v24 = v10;
      v25 = v9;
      v26 = v9;
    }

    v27 = v20 + ((v22 * v23) & (v22 >> 31));
    v28 = v21;
    if (v27 <= &v21[v12 * v26])
    {
      v29 = v22 >= 0 ? v22 : -v22;
      v28 = v21;
      if (v27 + (v29 * v12) >= v21)
      {
        v28 = malloc_type_malloc(v12 * v26, 0xCD6B1CCFuLL);
      }
    }

    if (v12)
    {
      v30 = 0;
      v31 = (v20 + 5);
      do
      {
        if (v11)
        {
          v32 = &v28[v30 * v26];
          v33 = v11;
          v34 = v31;
          do
          {
            v35 = *(v34 - 4);
            v36 = *(v34 - 2);
            v37 = *v34;
            v34 += 6;
            *v32 = v37;
            v32[1] = v36;
            v32[2] = v35;
            v32[3] = -1;
            v32 += 4;
            --v33;
          }

          while (v33);
        }

        ++v30;
        v31 += v22;
      }

      while (v30 != v12);
    }

    if (v28 != v21)
    {
      CGBlt_copyBytes(4 * v11, v12, v28, v21, v26, v26);
      free(v28);
    }

    v10 = v24;
    v9 = v25;
    v16 = v41;
    if (!v41)
    {
      break;
    }

LABEL_24:
    if (!shape_enum_clip_next(v16, &v44 + 1, &v44, &v43, &v42))
    {

      free(v16);
      return;
    }

    v18 = v44;
    v17 = HIDWORD(v44);
    v12 = v42;
    v11 = v43;
    if (v43 < 0)
    {
      goto LABEL_4;
    }
  }
}

void argb32_mark_image_RGBA64(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v62 = a2;
  v61 = *(a1 + 28);
  v9 = *(a1 + 4);
  v10 = *(a1 + 8);
  v67 = v10;
  v68 = v9;
  v11 = *(a1 + 136);
  if (v11)
  {
    v12 = *(a1 + 104);
    LODWORD(v69) = *(a1 + 108);
    HIDWORD(v69) = v12;
    shape_enum_clip_alloc(a1, a2, v11, 1, 1, 1, v12, v69, v9, v10);
    v14 = v13;
    if (v13)
    {
      goto LABEL_50;
    }
  }

  v15 = 0;
  v16 = 0;
  v14 = 0;
  v69 = 0;
  while (1)
  {
    v17 = *(a1 + 76);
    v18 = *(a1 + 88) + v17 * (a4 + v16 * v8) + 8 * (v15 + a3);
    v19 = *(a1 + 16) + v16;
    v20 = *(a1 + 48);
    v21 = (*(a1 + 40) + v19 * v61 + 4 * (*(a1 + 12) + v15));
    v22 = v17 * v8;
    v66 = v14;
    if (v62 == 2)
    {
      if (v20)
      {
        v23 = 0;
      }

      else
      {
        v23 = -16777216;
      }

      if (v10 >= 1)
      {
        v24 = vdupq_n_s32(v23);
        v25.i64[0] = 0xFF000000FFLL;
        v25.i64[1] = 0xFF000000FFLL;
        v26.i64[0] = 0xFF000000FF000000;
        v26.i64[1] = 0xFF000000FF000000;
        v27.i64[0] = 0x1000100010001;
        v27.i64[1] = 0x1000100010001;
        do
        {
          v28 = v9;
          v29 = v21;
          v30 = v18;
          if (v9 >= 4)
          {
            do
            {
              v31.i32[0] = v30[1];
              v31.i32[1] = v30[3];
              v31.i32[2] = v30[5];
              v31.i32[3] = v30[7];
              v32 = vshlq_n_s32(v31, 8uLL);
              v33 = vshrq_n_u32(v32, 0x18uLL);
              v34 = vaddvq_s32(v33);
              if (v34)
              {
                v35.i32[0] = *v30;
                v35.i32[1] = v30[2];
                v35.i32[2] = v30[4];
                v35.i32[3] = v30[6];
                v36 = vorrq_s8(vorrq_s8((*&vshlq_n_s32(v35, 0x10uLL) & __PAIR128__(0xFFFFFF00FFFFFFLL, 0xFFFFFF00FFFFFFLL)), (*&vshrq_n_u32(v35, 8uLL) & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00))), vorrq_s8(vandq_s8(v31, v25), vandq_s8(v32, v26)));
                if (v34 != 1020)
                {
                  v37 = veorq_s8(v33, v25);
                  v38.i16[0] = v29->u8[0];
                  v38.i16[1] = BYTE2(v29->u32[0]);
                  v38.i16[2] = BYTE4(v29->i64[0]);
                  v38.i16[3] = BYTE6(v29->i64[0]);
                  v38.i16[4] = v29->i64[1];
                  v38.i16[5] = BYTE2(v29->i64[1]);
                  v38.i16[6] = BYTE12(*v29);
                  v38.i16[7] = BYTE14(*v29);
                  v39 = vmulq_s32((*&vshrq_n_u32(*v29, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v37);
                  v40 = vmulq_s32(v38, v37);
                  v36 = vaddq_s32((*&vshrq_n_u32(vaddq_s32(vaddq_s32(v40, v27), (*&vshrq_n_u32(v40, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL))), 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), vaddq_s32(v36, (*&vaddq_s32(vaddq_s32(v39, v27), (*&vshrq_n_u32(v39, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL))) & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00))));
                }

                *v29 = vorrq_s8(v36, v24);
              }

              v30 += 8;
              ++v29;
              v41 = v28 > 7;
              v28 -= 4;
            }

            while (v41);
          }

          if (v28 >= 1)
          {
            v42 = v28 + 1;
            do
            {
              v43 = v30[1];
              if (BYTE2(v43))
              {
                v44 = (*v30 >> 8) & 0xFF00 | (*v30 << 16) & 0xFFFFFF | v30[1] | (BYTE2(v30[1]) << 24);
                if (BYTE2(v43) != 255)
                {
                  v44 += ((((v29->i32[0] & 0xFF00FF) * (BYTE2(v43) ^ 0xFF) + 65537 + ((((v29->i32[0] & 0xFF00FF) * (BYTE2(v43) ^ 0xFFu)) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF) + ((((v29->i32[0] >> 8) & 0xFF00FF) * (BYTE2(v43) ^ 0xFF) + 65537 + (((((v29->i32[0] >> 8) & 0xFF00FF) * (BYTE2(v43) ^ 0xFF)) >> 8) & 0xFF00FF)) & 0xFF00FF00);
                }

                v29->i32[0] = v44 | v23;
              }

              v30 += 2;
              v29 = (v29 + 4);
              --v42;
            }

            while (v42 > 1);
          }

          v18 += v22;
          v21 += v61;
          v41 = v10-- <= 1;
        }

        while (!v41);
      }
    }

    else
    {
      v45 = 0;
      if (v20)
      {
        v45 = *(a1 + 96) != 0;
      }

      if (v9 < 0)
      {
        _CGHandleAssert("CGSConvertBGRA16toRGBA8888", 499, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "width >= 0", "width (%d) < 0", a6, a7, a8, v9);
      }

      if (v10 < 0)
      {
        _CGHandleAssert("CGSConvertBGRA16toRGBA8888", 499, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "height >= 0", "height (%d) < 0", a6, a7, a8, v10);
      }

      v46 = v10 - 1;
      if (v61 < 0)
      {
        v18 += v46 * v22;
        LODWORD(v22) = -v22;
        v47 = -v61;
        v21 += v46 * v61;
      }

      else
      {
        v47 = v61;
      }

      v48 = v18 + ((v22 * v46) & (v22 >> 31));
      v49 = v21;
      if (v48 <= &v21[v10 * v47])
      {
        v50 = v22 >= 0 ? v22 : -v22;
        v49 = v21;
        if (v48 + (v50 * v10) >= v21)
        {
          v51 = v47;
          v52 = malloc_type_malloc(v10 * v47, 0xEBDF2967uLL);
          v47 = v51;
          v49 = v52;
        }
      }

      if (v10)
      {
        for (i = 0; i != v10; ++i)
        {
          if (v9)
          {
            v54 = &v49[i * v47];
            v55 = v9;
            v56 = (v18 + i * v22);
            do
            {
              v57 = *v56;
              v58 = v56[2];
              v59 = v56[6];
              if (!v45)
              {
                v59 = -1;
              }

              *v54 = v56[4];
              v54[1] = v58;
              v54[2] = v57;
              v54[3] = v59;
              v56 += 8;
              v54 += 4;
              --v55;
            }

            while (v55);
          }
        }
      }

      v8 = a5;
      if (v49 != v21)
      {
        CGBlt_copyBytes(4 * v9, v10, v49, v21, v47, v47);
        free(v49);
      }
    }

    v14 = v66;
    if (!v66)
    {
      break;
    }

LABEL_50:
    if (!shape_enum_clip_next(v14, &v69 + 1, &v69, &v68, &v67))
    {

      free(v14);
      return;
    }

    v16 = v69;
    v15 = HIDWORD(v69);
    v10 = v67;
    v9 = v68;
  }
}

void argb32_mark_image_rgba64(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v63 = a2;
  v62 = *(a1 + 28);
  v9 = *(a1 + 4);
  v10 = *(a1 + 8);
  v68 = v10;
  v69 = v9;
  v11 = *(a1 + 136);
  if (v11)
  {
    v12 = *(a1 + 104);
    LODWORD(v70) = *(a1 + 108);
    HIDWORD(v70) = v12;
    shape_enum_clip_alloc(a1, a2, v11, 1, 1, 1, v12, v70, v9, v10);
    v14 = v13;
    if (v13)
    {
      goto LABEL_50;
    }
  }

  v15 = 0;
  v16 = 0;
  v14 = 0;
  v70 = 0;
  while (1)
  {
    v17 = *(a1 + 76);
    v18 = *(a1 + 88) + v17 * (a4 + v16 * v8) + 8 * (v15 + a3);
    v19 = *(a1 + 16) + v16;
    v20 = *(a1 + 48);
    v21 = (*(a1 + 40) + v19 * v62 + 4 * (*(a1 + 12) + v15));
    v22 = v17 * v8;
    v67 = v14;
    if (v63 == 2)
    {
      if (v20)
      {
        v23 = 0;
      }

      else
      {
        v23 = -16777216;
      }

      if (v10 >= 1)
      {
        v24 = vdupq_n_s32(v23);
        v25.i64[0] = 0xFF000000FFLL;
        v25.i64[1] = 0xFF000000FFLL;
        v26.i64[0] = 0xFF000000FF000000;
        v26.i64[1] = 0xFF000000FF000000;
        v27.i64[0] = 0x1000100010001;
        v27.i64[1] = 0x1000100010001;
        do
        {
          v28 = v9;
          v29 = v21;
          v30 = v18;
          if (v9 >= 4)
          {
            do
            {
              v31.i32[0] = v30[1];
              v31.i32[1] = v30[3];
              v31.i32[2] = v30[5];
              v31.i32[3] = v30[7];
              v32 = vshrq_n_u32(v31, 0x18uLL);
              v33 = vaddvq_s32(v32);
              if (v33)
              {
                v34.i32[0] = *v30;
                v34.i32[1] = v30[2];
                v34.i32[2] = v30[4];
                v34.i32[3] = v30[6];
                v35 = vorrq_s8(vorrq_s8((*&vshlq_n_s32(v34, 8uLL) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), (*&vshrq_n_u32(v34, 0x10uLL) & __PAIR128__(0xFFFFFF00FFFFFF00, 0xFFFFFF00FFFFFF00))), vorrq_s8(vandq_s8(v31, v26), vandq_s8(vshrq_n_u32(v31, 8uLL), v25)));
                if (v33 != 1020)
                {
                  v36 = veorq_s8(v32, v25);
                  v37.i16[0] = v29->u8[0];
                  v37.i16[1] = BYTE2(v29->u32[0]);
                  v37.i16[2] = BYTE4(v29->i64[0]);
                  v37.i16[3] = BYTE6(v29->i64[0]);
                  v37.i16[4] = v29->i64[1];
                  v37.i16[5] = BYTE2(v29->i64[1]);
                  v37.i16[6] = BYTE12(*v29);
                  v37.i16[7] = BYTE14(*v29);
                  v38 = vmulq_s32((*&vshrq_n_u32(*v29, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v36);
                  v39 = vmulq_s32(v37, v36);
                  v35 = vaddq_s32((*&vshrq_n_u32(vaddq_s32(vaddq_s32(v39, v27), (*&vshrq_n_u32(v39, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL))), 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), vaddq_s32(v35, (*&vaddq_s32(vaddq_s32(v38, v27), (*&vshrq_n_u32(v38, 8uLL) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL))) & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00))));
                }

                *v29 = vorrq_s8(v35, v24);
              }

              v30 += 8;
              ++v29;
              v40 = v28 > 7;
              v28 -= 4;
            }

            while (v40);
          }

          if (v28 >= 1)
          {
            v41 = v28 + 1;
            do
            {
              v42 = v30[1];
              v43 = HIBYTE(v42);
              if (HIBYTE(v42))
              {
                v44 = HIWORD(*v30) & 0xFF00 | (BYTE1(*v30) << 16) | v42 & 0xFF000000 | BYTE1(v42);
                if (v43 != 255)
                {
                  v44 += ((((v29->i32[0] & 0xFF00FF) * (v43 ^ 0xFF) + 65537 + ((((v29->i32[0] & 0xFF00FF) * (v43 ^ 0xFF)) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF) + ((((v29->i32[0] >> 8) & 0xFF00FF) * (v43 ^ 0xFF) + 65537 + (((((v29->i32[0] >> 8) & 0xFF00FF) * (v43 ^ 0xFF)) >> 8) & 0xFF00FF)) & 0xFF00FF00);
                }

                v29->i32[0] = v44 | v23;
              }

              v30 += 2;
              v29 = (v29 + 4);
              --v41;
            }

            while (v41 > 1);
          }

          v18 += v22;
          v21 += v62;
          v40 = v10-- <= 1;
        }

        while (!v40);
      }
    }

    else
    {
      v45 = 0;
      if (v20)
      {
        v45 = *(a1 + 96) != 0;
      }

      if (v9 < 0)
      {
        _CGHandleAssert("CGSConvertbgra16toRGBA8888", 972, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "width >= 0", "width (%d) < 0", a6, a7, a8, v9);
      }

      if (v10 < 0)
      {
        _CGHandleAssert("CGSConvertbgra16toRGBA8888", 972, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-rgba8.c", "height >= 0", "height (%d) < 0", a6, a7, a8, v10);
      }

      v46 = v10 - 1;
      if (v62 < 0)
      {
        v18 += v46 * v22;
        LODWORD(v22) = -v22;
        v47 = -v62;
        v21 += v46 * v62;
      }

      else
      {
        v47 = v62;
      }

      v48 = v18 + ((v22 * v46) & (v22 >> 31));
      v49 = v21;
      if (v48 <= &v21[v10 * v47])
      {
        v50 = v22 >= 0 ? v22 : -v22;
        v49 = v21;
        if (v48 + (v50 * v10) >= v21)
        {
          v51 = v47;
          v52 = malloc_type_malloc(v10 * v47, 0xD110CDB4uLL);
          v47 = v51;
          v49 = v52;
        }
      }

      if (v10)
      {
        v53 = 0;
        v54 = (v18 + 3);
        do
        {
          if (v9)
          {
            v55 = &v49[v53 * v47];
            v56 = v54;
            v57 = v9;
            do
            {
              v58 = *(v56 - 2);
              v59 = *v56;
              v60 = v56[4];
              if (!v45)
              {
                v60 = -1;
              }

              *v55 = v56[2];
              v55[1] = v59;
              v55[2] = v58;
              v55[3] = v60;
              v55 += 4;
              v56 += 8;
              --v57;
            }

            while (v57);
          }

          ++v53;
          v54 += v22;
        }

        while (v53 != v10);
      }

      v8 = a5;
      if (v49 != v21)
      {
        CGBlt_copyBytes(4 * v9, v10, v49, v21, v47, v47);
        free(v49);
      }
    }

    v14 = v67;
    if (!v67)
    {
      break;
    }

LABEL_50:
    if (!shape_enum_clip_next(v14, &v70 + 1, &v70, &v69, &v68))
    {

      free(v14);
      return;
    }

    v16 = v70;
    v15 = HIDWORD(v70);
    v10 = v68;
    v9 = v69;
  }
}

unint64_t argb32_image_mark_rgba64(unint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 8);
  v89 = *a2;
  v7 = *(result + 32);
  if (*(result + 40))
  {
    v8 = 0;
  }

  else
  {
    v8 = 0xFFFFLL;
  }

  v9 = *(a2 + 2);
  v88 = *(a2 + 3) - a5;
  v11 = *(a2 + 15);
  v10 = *(a2 + 16);
  v12 = *(a2 + 7);
  v85 = *(a2 + 9);
  v13 = *(a2 + 5) + v85 * a4;
  v14 = &v7[(*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3)];
  v94 = result;
  v86 = v12;
  v87 = v11;
  if (*(result + 176))
  {
    v84 = *(a2 + 11);
    v82 = ~(-1 << v12);
    v83 = *(a2 + 13);
    v81 = v12 - 4;
    v15 = v14 - 8;
    v16 = v8 << 48;
    v79 = a5;
    v80 = -v11;
    v78 = v10 + 16 * a3 + 8;
    while (1)
    {
      if (((v83 - v13) | (v13 - v84)) < 0)
      {
        v21 = 0;
        v95 = 0;
      }

      else
      {
        v17 = ((v13 & v82) >> v81) & 0xF;
        v18 = weights_21890[v17];
        v19 = (v17 - 7) >= 9;
        v20 = v80;
        if (!v19)
        {
          v20 = v11;
        }

        v95 = v20;
        v21 = v18 & 0xF;
      }

      v22 = *(v94 + 32) + (v13 >> v12) * v11;
      v92 = a6;
      v91 = v13;
      if (v89 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v23 = v78;
        v24 = v79;
        while (1)
        {
          v25 = *(v23 - 1);
          v26 = *v23;
          v27 = v22 + v25;
          if (v15 >= v22 + v25)
          {
            v28 = (v22 + v25);
          }

          else
          {
            v28 = v15;
          }

          if (v28 < v7)
          {
            v28 = v7;
          }

          v29 = *v28;
          v30 = *v23 & 0xF;
          if ((v26 & 0xF) != 0)
          {
            break;
          }

          if (v21)
          {
            v39 = (v27 + v95);
            if (v15 < v27 + v95)
            {
              v39 = v15;
            }

            if (v39 < v7)
            {
              v39 = v7;
            }

            v33 = *v39;
            v30 = v21;
            goto LABEL_41;
          }

LABEL_42:
          result = BYTE5(v29) | (BYTE1(v29) << 16) | (BYTE3(v29) << 8) | ((v29 | v16) >> 32) & 0xFF000000;
          if (v6 != 255)
          {
            result = PDM_15068(result, v6);
          }

          v23 += 2;
          *v9++ = result;
          if (!--v24)
          {
            goto LABEL_83;
          }
        }

        v31 = v26 >> 4;
        v32 = (v27 + (v26 >> 4));
        if (v15 < v32)
        {
          v32 = v15;
        }

        if (v32 < v7)
        {
          v32 = v7;
        }

        v33 = *v32;
        if (v21)
        {
          v34 = (v27 + v95);
          if (v15 >= v34)
          {
            v35 = v34;
          }

          else
          {
            v35 = v15;
          }

          if (v35 < v7)
          {
            v35 = v7;
          }

          v36 = *v35;
          v37 = &v34[v31];
          if (v15 < v37)
          {
            v37 = v15;
          }

          if (v37 < v7)
          {
            v37 = v7;
          }

          v38 = BLEND16_21891[v21];
          v29 = v29 - ((v38 & v29) >> v21) + ((v38 & v36) >> v21);
          v33 = v33 - ((v38 & v33) >> v21) + ((v38 & *v37) >> v21);
        }

LABEL_41:
        v29 = v29 - ((BLEND16_21891[v30] & v29) >> v30) + ((BLEND16_21891[v30] & v33) >> v30);
        goto LABEL_42;
      }

LABEL_83:
      v11 = v87;
      v9 += v88;
      LOBYTE(v12) = v86;
      v13 = v91 + v85;
      a6 = v92 - 1;
      if (v92 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_83;
    }

    v41 = v78;
    v40 = v79;
    while (1)
    {
      v42 = *(v41 - 1);
      v43 = *v41;
      v44 = v22 + v42;
      if (v15 >= v22 + v42)
      {
        v45 = (v22 + v42);
      }

      else
      {
        v45 = v15;
      }

      if (v45 < v7)
      {
        v45 = v7;
      }

      v46 = *v45;
      v47 = *v41 & 0xF;
      if ((v43 & 0xF) != 0)
      {
        break;
      }

      if (v21)
      {
        v56 = (v44 + v95);
        if (v15 < v44 + v95)
        {
          v56 = v15;
        }

        if (v56 < v7)
        {
          v56 = v7;
        }

        v50 = *v56;
        v47 = v21;
        goto LABEL_75;
      }

LABEL_76:
      v57 = ((v46 | v16) >> 32) & 0xFF000000;
      v58 = BYTE5(v46) | (BYTE1(v46) << 16) | (BYTE3(v46) << 8);
      v59 = v58 | v57;
      if (v6 != 255)
      {
        result = PDM_15068(v58 | v57, v6);
        v59 = result;
      }

      if (HIBYTE(v59))
      {
        if (HIBYTE(v59) == 255)
        {
          *v9 = v59;
        }

        else
        {
          result = DplusDM_15070(v9, v59, *v9, ~v59 >> 24);
        }
      }

      v41 += 2;
      ++v9;
      if (!--v40)
      {
        goto LABEL_83;
      }
    }

    v48 = v43 >> 4;
    v49 = (v44 + (v43 >> 4));
    if (v15 < v49)
    {
      v49 = v15;
    }

    if (v49 < v7)
    {
      v49 = v7;
    }

    v50 = *v49;
    if (v21)
    {
      v51 = (v44 + v95);
      if (v15 >= v51)
      {
        v52 = v51;
      }

      else
      {
        v52 = v15;
      }

      if (v52 < v7)
      {
        v52 = v7;
      }

      v53 = *v52;
      v54 = &v51[v48];
      if (v15 < v54)
      {
        v54 = v15;
      }

      if (v54 < v7)
      {
        v54 = v7;
      }

      v55 = BLEND16_21891[v21];
      v46 = v46 - ((v55 & v46) >> v21) + ((v55 & v53) >> v21);
      v50 = v50 - ((v55 & v50) >> v21) + ((v55 & *v54) >> v21);
    }

LABEL_75:
    v46 = v46 - ((BLEND16_21891[v47] & v46) >> v47) + ((BLEND16_21891[v47] & v50) >> v47);
    goto LABEL_76;
  }

  v96 = (v10 + 16 * a3);
  v60 = v14 - 8;
  v61 = v8 << 48;
  v93 = a5;
  do
  {
    v62 = *(v94 + 32);
    v63 = &v62[(v13 >> v12) * v11];
    v64 = v13;
    v65 = a6;
    if (v89 == 1)
    {
      if (a5 >= 1)
      {
        v66 = v96;
        v67 = v93;
        do
        {
          v68 = *v66;
          v66 += 2;
          v69 = &v63[v68];
          if (v60 < &v63[v68])
          {
            v69 = v60;
          }

          if (v69 < v62)
          {
            v69 = v62;
          }

          result = (WORD2(*v69) >> 8) | (BYTE1(*v69) << 16) | (BYTE3(*v69) << 8) | ((*v69 | v61) >> 32) & 0xFF000000;
          if (v6 != 255)
          {
            result = PDM_15068(result, v6);
          }

          *v9++ = result;
          --v67;
        }

        while (v67);
      }
    }

    else
    {
      v70 = v96;
      v71 = v93;
      if (a5 >= 1)
      {
        do
        {
          v72 = *v70;
          v70 += 2;
          v73 = &v63[v72];
          if (v60 < &v63[v72])
          {
            v73 = v60;
          }

          if (v73 < *(v94 + 32))
          {
            v73 = *(v94 + 32);
          }

          v74 = *v73;
          v75 = ((v74 | v61) >> 32) & 0xFF000000;
          v76 = BYTE5(v74) | (BYTE1(v74) << 16) | (BYTE3(v74) << 8);
          v77 = v76 | v75;
          if (v6 != 255)
          {
            result = PDM_15068(v76 | v75, v6);
            v77 = result;
          }

          if (HIBYTE(v77))
          {
            if (HIBYTE(v77) == 255)
            {
              *v9 = v77;
            }

            else
            {
              result = DplusDM_15070(v9, v77, *v9, ~v77 >> 24);
            }
          }

          ++v9;
          --v71;
        }

        while (v71);
      }
    }

    v11 = v87;
    v9 += v88;
    LOBYTE(v12) = v86;
    v13 = v64 + v85;
    a6 = v65 - 1;
  }

  while (v65 != 1);
  return result;
}

unint64_t argb32_image_mark_RGBA64(unint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 8);
  v97 = *a2;
  v7 = *(result + 32);
  if (*(result + 40))
  {
    v8 = 0;
  }

  else
  {
    v8 = 0xFFFFLL;
  }

  v9 = *(a2 + 2);
  v96 = *(a2 + 3) - a5;
  v11 = *(a2 + 15);
  v10 = *(a2 + 16);
  v12 = *(a2 + 7);
  v93 = *(a2 + 9);
  v13 = *(a2 + 5) + v93 * a4;
  v14 = v7 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3);
  v101 = result;
  v98 = a5;
  v94 = v12;
  v95 = v11;
  if (*(result + 176))
  {
    v92 = *(a2 + 11);
    v90 = ~(-1 << v12);
    v91 = *(a2 + 13);
    v89 = v12 - 4;
    v15 = (v14 - 8);
    v16 = v8 << 48;
    v87 = a5;
    v88 = -v11;
    v86 = v10 + 16 * a3 + 8;
    while (1)
    {
      if (((v91 - v13) | (v13 - v92)) < 0)
      {
        v21 = 0;
        v102 = 0;
      }

      else
      {
        v17 = ((v13 & v90) >> v89) & 0xF;
        v18 = weights_21890[v17];
        v19 = (v17 - 7) >= 9;
        v20 = v88;
        if (!v19)
        {
          v20 = v11;
        }

        v102 = v20;
        v21 = v18 & 0xF;
      }

      v22 = *(v101 + 32) + (v13 >> v12) * v11;
      v99 = a6;
      if (v97 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v23 = v86;
        v24 = v87;
        while (1)
        {
          v25 = *(v23 - 1);
          v26 = *v23;
          v27 = v22 + v25;
          if (v15 >= v22 + v25)
          {
            v28 = (v22 + v25);
          }

          else
          {
            v28 = v15;
          }

          if (v28 < v7)
          {
            v28 = v7;
          }

          v29 = ((bswap32(v28[3]) >> 16) << 48) | ((bswap32(v28[2]) >> 16) << 32) | bswap32(v28[1]) & 0xFFFF0000 | (bswap32(*v28) >> 16);
          v30 = *v23 & 0xF;
          if ((v26 & 0xF) != 0)
          {
            break;
          }

          if (v21)
          {
            v42 = (v27 + v102);
            if (v15 < v27 + v102)
            {
              v42 = v15;
            }

            if (v42 < v7)
            {
              v42 = v7;
            }

            v43 = BLEND16_21891[v21];
            v40 = v29 - ((v43 & v29) >> v21);
            v41 = ((((bswap32(v42[3]) >> 16) << 48) | ((bswap32(v42[2]) >> 16) << 32) | bswap32(v42[1]) & 0xFFFF0000 | (bswap32(*v42) >> 16)) & v43) >> v21;
            goto LABEL_42;
          }

LABEL_43:
          result = BYTE5(v29) | (BYTE1(v29) << 16) | (BYTE3(v29) << 8) | ((v29 | v16) >> 32) & 0xFF000000;
          if (v6 != 255)
          {
            result = PDM_15068(result, v6);
          }

          v23 += 2;
          *v9++ = result;
          if (!--v24)
          {
            goto LABEL_85;
          }
        }

        v31 = v26 >> 4;
        v32 = (v27 + (v26 >> 4));
        if (v15 < v32)
        {
          v32 = v15;
        }

        if (v32 < v7)
        {
          v32 = v7;
        }

        v33 = ((bswap32(v32[3]) >> 16) << 48) | ((bswap32(v32[2]) >> 16) << 32) | bswap32(v32[1]) & 0xFFFF0000 | (bswap32(*v32) >> 16);
        if (v21)
        {
          v34 = (v27 + v102);
          if (v15 >= v34)
          {
            v35 = v34;
          }

          else
          {
            v35 = v15;
          }

          if (v35 < v7)
          {
            v35 = v7;
          }

          v36 = ((bswap32(v35[3]) >> 16) << 48) | ((bswap32(v35[2]) >> 16) << 32) | bswap32(v35[1]) & 0xFFFF0000 | (bswap32(*v35) >> 16);
          v37 = (v34 + v31);
          if (v15 < v37)
          {
            v37 = v15;
          }

          if (v37 < v7)
          {
            v37 = v7;
          }

          v38 = BLEND16_21891[v21];
          v29 = v29 - ((v38 & v29) >> v21) + ((v36 & v38) >> v21);
          v33 = v33 - ((v38 & v33) >> v21) + (((((bswap32(v37[3]) >> 16) << 48) | ((bswap32(v37[2]) >> 16) << 32) | bswap32(v37[1]) & 0xFFFF0000 | (bswap32(*v37) >> 16)) & v38) >> v21);
        }

        v39 = BLEND16_21891[v30];
        v40 = v29 - ((v39 & v29) >> v30);
        v41 = (v39 & v33) >> v30;
LABEL_42:
        v29 = v40 + v41;
        goto LABEL_43;
      }

LABEL_85:
      v11 = v95;
      v9 += v96;
      LOBYTE(v12) = v94;
      v13 += v93;
      a6 = v99 - 1;
      a5 = v98;
      if (v99 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_85;
    }

    v45 = v86;
    v44 = v87;
    while (1)
    {
      v46 = *(v45 - 1);
      v47 = *v45;
      v48 = v22 + v46;
      if (v15 >= v22 + v46)
      {
        v49 = (v22 + v46);
      }

      else
      {
        v49 = v15;
      }

      if (v49 < v7)
      {
        v49 = v7;
      }

      v50 = ((bswap32(v49[3]) >> 16) << 48) | ((bswap32(v49[2]) >> 16) << 32) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16);
      v51 = *v45 & 0xF;
      if ((v47 & 0xF) != 0)
      {
        break;
      }

      if (v21)
      {
        v63 = (v48 + v102);
        if (v15 < v48 + v102)
        {
          v63 = v15;
        }

        if (v63 < v7)
        {
          v63 = v7;
        }

        v64 = BLEND16_21891[v21];
        v61 = v50 - ((v64 & v50) >> v21);
        v62 = ((((bswap32(v63[3]) >> 16) << 48) | ((bswap32(v63[2]) >> 16) << 32) | bswap32(v63[1]) & 0xFFFF0000 | (bswap32(*v63) >> 16)) & v64) >> v21;
        goto LABEL_77;
      }

LABEL_78:
      v65 = ((v50 | v16) >> 32) & 0xFF000000;
      v66 = BYTE5(v50) | (BYTE1(v50) << 16) | (BYTE3(v50) << 8);
      v67 = v66 | v65;
      if (v6 != 255)
      {
        result = PDM_15068(v66 | v65, v6);
        v67 = result;
      }

      if (HIBYTE(v67))
      {
        if (HIBYTE(v67) == 255)
        {
          *v9 = v67;
        }

        else
        {
          result = DplusDM_15070(v9, v67, *v9, ~v67 >> 24);
        }
      }

      v45 += 2;
      ++v9;
      if (!--v44)
      {
        goto LABEL_85;
      }
    }

    v52 = v47 >> 4;
    v53 = (v48 + (v47 >> 4));
    if (v15 < v53)
    {
      v53 = v15;
    }

    if (v53 < v7)
    {
      v53 = v7;
    }

    v54 = ((bswap32(v53[3]) >> 16) << 48) | ((bswap32(v53[2]) >> 16) << 32) | bswap32(v53[1]) & 0xFFFF0000 | (bswap32(*v53) >> 16);
    if (v21)
    {
      v55 = (v48 + v102);
      if (v15 >= v55)
      {
        v56 = v55;
      }

      else
      {
        v56 = v15;
      }

      if (v56 < v7)
      {
        v56 = v7;
      }

      v57 = ((bswap32(v56[3]) >> 16) << 48) | ((bswap32(v56[2]) >> 16) << 32) | bswap32(v56[1]) & 0xFFFF0000 | (bswap32(*v56) >> 16);
      v58 = (v55 + v52);
      if (v15 < v58)
      {
        v58 = v15;
      }

      if (v58 < v7)
      {
        v58 = v7;
      }

      v59 = BLEND16_21891[v21];
      v50 = v50 - ((v59 & v50) >> v21) + ((v57 & v59) >> v21);
      v54 = v54 - ((v59 & v54) >> v21) + (((((bswap32(v58[3]) >> 16) << 48) | ((bswap32(v58[2]) >> 16) << 32) | bswap32(v58[1]) & 0xFFFF0000 | (bswap32(*v58) >> 16)) & v59) >> v21);
    }

    v60 = BLEND16_21891[v51];
    v61 = v50 - ((v60 & v50) >> v51);
    v62 = (v60 & v54) >> v51;
LABEL_77:
    v50 = v61 + v62;
    goto LABEL_78;
  }

  v103 = (v10 + 16 * a3);
  v68 = (v14 - 8);
  v100 = a5;
  do
  {
    v69 = *(v101 + 32);
    v70 = v69 + (v13 >> v12) * v11;
    v71 = a6;
    if (v97 == 1)
    {
      if (a5 >= 1)
      {
        v72 = v103;
        v73 = v100;
        do
        {
          v74 = *v72;
          v72 += 2;
          v75 = &v70[v74];
          if (v68 < &v70[v74])
          {
            v75 = v68;
          }

          if (v75 >= v69)
          {
            v76 = v75;
          }

          else
          {
            v76 = v69;
          }

          result = (bswap32(v76[2]) >> 24) | (((v8 | (bswap32(v76[3]) >> 16)) >> 8) << 24) | (bswap32(*v76) >> 24 << 16) | (bswap32(v76[1]) >> 16) & 0xFF00;
          if (v6 != 255)
          {
            result = PDM_15068(result, v6);
          }

          *v9++ = result;
          --v73;
        }

        while (v73);
      }
    }

    else
    {
      v77 = v103;
      v78 = v100;
      if (a5 >= 1)
      {
        do
        {
          v79 = *v77;
          v77 += 2;
          v80 = &v70[v79];
          v81 = *(v101 + 32);
          if (v68 < &v70[v79])
          {
            v80 = v68;
          }

          if (v80 >= v81)
          {
            v81 = v80;
          }

          v82 = bswap32(v81[1]);
          v83 = (bswap32(v81[2]) >> 24) | (((v8 | (bswap32(v81[3]) >> 16)) >> 8) << 24) | (bswap32(*v81) >> 24 << 16);
          v84 = HIWORD(v82) & 0xFF00;
          if (v6 == 255)
          {
            v85 = v83 | v84;
          }

          else
          {
            result = PDM_15068(v83 | v84, v6);
            v85 = result;
          }

          if (HIBYTE(v85))
          {
            if (HIBYTE(v85) == 255)
            {
              *v9 = v85;
            }

            else
            {
              result = DplusDM_15070(v9, v85, *v9, ~v85 >> 24);
            }
          }

          ++v9;
          --v78;
        }

        while (v78);
      }
    }

    v11 = v95;
    v9 += v96;
    LOBYTE(v12) = v94;
    v13 += v93;
    a6 = v71 - 1;
    a5 = v98;
  }

  while (v71 != 1);
  return result;
}

unint64_t argb32_image_mark_rgb48(unint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 8);
  v89 = *a2;
  v7 = *(a2 + 2);
  v88 = *(a2 + 3) - a5;
  v9 = *(a2 + 15);
  v8 = *(a2 + 16);
  v10 = *(a2 + 7);
  v85 = *(a2 + 9);
  v11 = *(a2 + 5) + v85 * a4;
  v12 = *(result + 32);
  v13 = v12 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3);
  v93 = result;
  v90 = a5;
  v86 = v10;
  v87 = v9;
  if (*(result + 176))
  {
    v84 = *(a2 + 11);
    v82 = ~(-1 << v10);
    v83 = *(a2 + 13);
    v81 = v10 - 4;
    v14 = (v13 - 6);
    v79 = a5;
    v80 = -v9;
    v78 = v8 + 16 * a3 + 8;
    while (1)
    {
      v91 = a6;
      if (((v83 - v11) | (v11 - v84)) < 0)
      {
        v17 = 0;
        v16 = 0;
      }

      else
      {
        v15 = ((v11 & v82) >> v81) & 0xF;
        v16 = (v15 - 7) >= 9 ? v80 : v9;
        v17 = weights_21890[v15] & 0xF;
      }

      v18 = *(v93 + 32) + (v11 >> v10) * v9;
      if (v89 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v19 = v78;
        v20 = v79;
        while (1)
        {
          v21 = *(v19 - 1);
          v22 = *v19;
          v23 = v18 + v21;
          if (v14 >= v18 + v21)
          {
            v24 = (v18 + v21);
          }

          else
          {
            v24 = v14;
          }

          if (v24 < v12)
          {
            v24 = v12;
          }

          v25 = *v24 | (*(v24 + 1) << 16);
          v26 = *v19 & 0xF;
          if ((v22 & 0xF) != 0)
          {
            break;
          }

          if (v17)
          {
            v38 = (v23 + v16);
            if (v14 < v23 + v16)
            {
              v38 = v14;
            }

            if (v38 < v12)
            {
              v38 = v12;
            }

            v39 = BLEND16_21891[v17];
            v36 = v25 - ((v39 & v25) >> v17);
            v37 = ((*v38 | (*(v38 + 1) << 16)) & v39) >> v17;
            goto LABEL_40;
          }

LABEL_41:
          result = BYTE5(v25) | (BYTE1(v25) << 16) | (BYTE3(v25) << 8) | 0xFF000000;
          if (v6 != 255)
          {
            result = PDM_15068(result, v6);
          }

          v19 += 2;
          *v7++ = result;
          if (!--v20)
          {
            goto LABEL_83;
          }
        }

        v27 = v22 >> 4;
        v28 = (v23 + (v22 >> 4));
        if (v14 < v28)
        {
          v28 = v14;
        }

        if (v28 < v12)
        {
          v28 = v12;
        }

        v29 = *v28 | (*(v28 + 1) << 16);
        if (v17)
        {
          v30 = (v23 + v16);
          if (v14 >= v30)
          {
            v31 = v30;
          }

          else
          {
            v31 = v14;
          }

          if (v31 < v12)
          {
            v31 = v12;
          }

          v32 = *v31 | (*(v31 + 1) << 16);
          v33 = (v30 + v27);
          if (v14 < v33)
          {
            v33 = v14;
          }

          if (v33 < v12)
          {
            v33 = v12;
          }

          v34 = BLEND16_21891[v17];
          v25 = v25 - ((v34 & v25) >> v17) + ((v32 & v34) >> v17);
          v29 = v29 - ((v34 & v29) >> v17) + (((*v33 | (*(v33 + 1) << 16)) & v34) >> v17);
        }

        v35 = BLEND16_21891[v26];
        v36 = v25 - ((v35 & v25) >> v26);
        v37 = (v35 & v29) >> v26;
LABEL_40:
        v25 = v36 + v37;
        goto LABEL_41;
      }

LABEL_83:
      v9 = v87;
      v7 += v88;
      LOBYTE(v10) = v86;
      v11 += v85;
      a6 = v91 - 1;
      a5 = v90;
      if (v91 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_83;
    }

    v40 = v78;
    v41 = v79;
    while (1)
    {
      v42 = *(v40 - 1);
      v43 = *v40;
      v44 = v18 + v42;
      if (v14 >= v18 + v42)
      {
        v45 = (v18 + v42);
      }

      else
      {
        v45 = v14;
      }

      if (v45 < v12)
      {
        v45 = v12;
      }

      v46 = *v45 | (*(v45 + 1) << 16);
      v47 = *v40 & 0xF;
      if ((v43 & 0xF) != 0)
      {
        break;
      }

      if (v17)
      {
        v59 = (v44 + v16);
        if (v14 < v44 + v16)
        {
          v59 = v14;
        }

        if (v59 < v12)
        {
          v59 = v12;
        }

        v60 = BLEND16_21891[v17];
        v57 = v46 - ((v60 & v46) >> v17);
        v58 = ((*v59 | (*(v59 + 1) << 16)) & v60) >> v17;
        goto LABEL_75;
      }

LABEL_76:
      v61 = BYTE5(v46) | (BYTE1(v46) << 16) | (BYTE3(v46) << 8);
      v62 = v61 | 0xFF000000;
      if (v6 != 255)
      {
        result = PDM_15068(v61 | 0xFF000000, v6);
        v62 = result;
      }

      if (HIBYTE(v62))
      {
        if (HIBYTE(v62) == 255)
        {
          *v7 = v62;
        }

        else
        {
          result = DplusDM_15070(v7, v62, *v7, ~v62 >> 24);
        }
      }

      v40 += 2;
      ++v7;
      if (!--v41)
      {
        goto LABEL_83;
      }
    }

    v48 = v43 >> 4;
    v49 = (v44 + (v43 >> 4));
    if (v14 < v49)
    {
      v49 = v14;
    }

    if (v49 < v12)
    {
      v49 = v12;
    }

    v50 = *v49 | (*(v49 + 1) << 16);
    if (v17)
    {
      v51 = (v44 + v16);
      if (v14 >= v51)
      {
        v52 = v51;
      }

      else
      {
        v52 = v14;
      }

      if (v52 < v12)
      {
        v52 = v12;
      }

      v53 = *v52 | (*(v52 + 1) << 16);
      v54 = (v51 + v48);
      if (v14 < v54)
      {
        v54 = v14;
      }

      if (v54 < v12)
      {
        v54 = v12;
      }

      v55 = BLEND16_21891[v17];
      v46 = v46 - ((v55 & v46) >> v17) + ((v53 & v55) >> v17);
      v50 = v50 - ((v55 & v50) >> v17) + (((*v54 | (*(v54 + 1) << 16)) & v55) >> v17);
    }

    v56 = BLEND16_21891[v47];
    v57 = v46 - ((v56 & v46) >> v47);
    v58 = (v56 & v50) >> v47;
LABEL_75:
    v46 = v57 + v58;
    goto LABEL_76;
  }

  v92 = (v8 + 16 * a3);
  v63 = v13 - 6;
  v64 = a5;
  do
  {
    v65 = *(v93 + 32);
    v66 = v65 + (v11 >> v10) * v9;
    v67 = a6;
    if (v89 == 1)
    {
      if (a5 >= 1)
      {
        v68 = v92;
        v69 = v64;
        do
        {
          v70 = *v68;
          v68 += 2;
          v71 = v66 + v70;
          if (v63 < v66 + v70)
          {
            v71 = v63;
          }

          if (v71 < v65)
          {
            v71 = v65;
          }

          result = *(v71 + 5) | (HIBYTE(*v71) << 16) | (*(v71 + 3) << 8) | 0xFF000000;
          if (v6 != 255)
          {
            result = PDM_15068(result, v6);
          }

          *v7++ = result;
          --v69;
        }

        while (v69);
      }
    }

    else
    {
      v72 = v92;
      v73 = v64;
      if (a5 >= 1)
      {
        do
        {
          v74 = *v72;
          v72 += 2;
          v75 = v66 + v74;
          if (v63 < v66 + v74)
          {
            v75 = v63;
          }

          if (v75 < *(v93 + 32))
          {
            v75 = *(v93 + 32);
          }

          v76 = *(v75 + 5) | (HIBYTE(*v75) << 16) | (*(v75 + 3) << 8);
          v77 = v76 | 0xFF000000;
          if (v6 != 255)
          {
            result = PDM_15068(v76 | 0xFF000000, v6);
            v77 = result;
          }

          if (HIBYTE(v77))
          {
            if (HIBYTE(v77) == 255)
            {
              *v7 = v77;
            }

            else
            {
              result = DplusDM_15070(v7, v77, *v7, ~v77 >> 24);
            }
          }

          ++v7;
          --v73;
        }

        while (v73);
      }
    }

    v9 = v87;
    v7 += v88;
    LOBYTE(v10) = v86;
    v11 += v85;
    a6 = v67 - 1;
    a5 = v90;
  }

  while (v67 != 1);
  return result;
}

unint64_t argb32_image_mark_RGB48(unint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 8);
  v89 = *a2;
  v7 = *(a2 + 2);
  v88 = *(a2 + 3) - a5;
  v9 = *(a2 + 15);
  v8 = *(a2 + 16);
  v10 = *(a2 + 7);
  v85 = *(a2 + 9);
  v11 = *(a2 + 5) + v85 * a4;
  v12 = *(result + 32);
  v13 = v12 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3);
  v93 = result;
  v90 = a5;
  v86 = v10;
  v87 = v9;
  if (*(result + 176))
  {
    v84 = *(a2 + 11);
    v82 = ~(-1 << v10);
    v83 = *(a2 + 13);
    v81 = v10 - 4;
    v14 = (v13 - 6);
    v79 = a5;
    v80 = -v9;
    v78 = v8 + 16 * a3 + 8;
    while (1)
    {
      v91 = a6;
      if (((v83 - v11) | (v11 - v84)) < 0)
      {
        v17 = 0;
        v16 = 0;
      }

      else
      {
        v15 = ((v11 & v82) >> v81) & 0xF;
        v16 = (v15 - 7) >= 9 ? v80 : v9;
        v17 = weights_21890[v15] & 0xF;
      }

      v18 = *(v93 + 32) + (v11 >> v10) * v9;
      if (v89 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v19 = v78;
        v20 = v79;
        while (1)
        {
          v21 = *(v19 - 1);
          v22 = *v19;
          v23 = v18 + v21;
          if (v14 >= v18 + v21)
          {
            v24 = (v18 + v21);
          }

          else
          {
            v24 = v14;
          }

          if (v24 < v12)
          {
            v24 = v12;
          }

          v25 = bswap32(v24[1]) & 0xFFFF0000 | ((bswap32(v24[2]) >> 16) << 32) | (bswap32(*v24) >> 16);
          v26 = *v19 & 0xF;
          if ((v22 & 0xF) != 0)
          {
            break;
          }

          if (v17)
          {
            v38 = (v23 + v16);
            if (v14 < v23 + v16)
            {
              v38 = v14;
            }

            if (v38 < v12)
            {
              v38 = v12;
            }

            v39 = BLEND16_21891[v17];
            v36 = v25 - ((v39 & v25) >> v17);
            v37 = ((bswap32(v38[1]) & 0xFFFF0000 | ((bswap32(v38[2]) >> 16) << 32) | (bswap32(*v38) >> 16)) & v39) >> v17;
            goto LABEL_40;
          }

LABEL_41:
          result = BYTE5(v25) | (BYTE1(v25) << 16) | (BYTE3(v25) << 8) | 0xFF000000;
          if (v6 != 255)
          {
            result = PDM_15068(result, v6);
          }

          v19 += 2;
          *v7++ = result;
          if (!--v20)
          {
            goto LABEL_83;
          }
        }

        v27 = v22 >> 4;
        v28 = (v23 + (v22 >> 4));
        if (v14 < v28)
        {
          v28 = v14;
        }

        if (v28 < v12)
        {
          v28 = v12;
        }

        v29 = bswap32(v28[1]) & 0xFFFF0000 | ((bswap32(v28[2]) >> 16) << 32) | (bswap32(*v28) >> 16);
        if (v17)
        {
          v30 = (v23 + v16);
          if (v14 >= v30)
          {
            v31 = v30;
          }

          else
          {
            v31 = v14;
          }

          if (v31 < v12)
          {
            v31 = v12;
          }

          v32 = bswap32(v31[1]) & 0xFFFF0000 | ((bswap32(v31[2]) >> 16) << 32) | (bswap32(*v31) >> 16);
          v33 = (v30 + v27);
          if (v14 < v33)
          {
            v33 = v14;
          }

          if (v33 < v12)
          {
            v33 = v12;
          }

          v34 = BLEND16_21891[v17];
          v25 = v25 - ((v34 & v25) >> v17) + ((v32 & v34) >> v17);
          v29 = v29 - ((v34 & v29) >> v17) + (((bswap32(v33[1]) & 0xFFFF0000 | ((bswap32(v33[2]) >> 16) << 32) | (bswap32(*v33) >> 16)) & v34) >> v17);
        }

        v35 = BLEND16_21891[v26];
        v36 = v25 - ((v35 & v25) >> v26);
        v37 = (v35 & v29) >> v26;
LABEL_40:
        v25 = v36 + v37;
        goto LABEL_41;
      }

LABEL_83:
      v9 = v87;
      v7 += v88;
      LOBYTE(v10) = v86;
      v11 += v85;
      a6 = v91 - 1;
      a5 = v90;
      if (v91 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_83;
    }

    v40 = v78;
    v41 = v79;
    while (1)
    {
      v42 = *(v40 - 1);
      v43 = *v40;
      v44 = v18 + v42;
      if (v14 >= v18 + v42)
      {
        v45 = (v18 + v42);
      }

      else
      {
        v45 = v14;
      }

      if (v45 < v12)
      {
        v45 = v12;
      }

      v46 = bswap32(v45[1]) & 0xFFFF0000 | ((bswap32(v45[2]) >> 16) << 32) | (bswap32(*v45) >> 16);
      v47 = *v40 & 0xF;
      if ((v43 & 0xF) != 0)
      {
        break;
      }

      if (v17)
      {
        v59 = (v44 + v16);
        if (v14 < v44 + v16)
        {
          v59 = v14;
        }

        if (v59 < v12)
        {
          v59 = v12;
        }

        v60 = BLEND16_21891[v17];
        v57 = v46 - ((v60 & v46) >> v17);
        v58 = ((bswap32(v59[1]) & 0xFFFF0000 | ((bswap32(v59[2]) >> 16) << 32) | (bswap32(*v59) >> 16)) & v60) >> v17;
        goto LABEL_75;
      }

LABEL_76:
      v61 = BYTE5(v46) | (BYTE1(v46) << 16) | (BYTE3(v46) << 8);
      v62 = v61 | 0xFF000000;
      if (v6 != 255)
      {
        result = PDM_15068(v61 | 0xFF000000, v6);
        v62 = result;
      }

      if (HIBYTE(v62))
      {
        if (HIBYTE(v62) == 255)
        {
          *v7 = v62;
        }

        else
        {
          result = DplusDM_15070(v7, v62, *v7, ~v62 >> 24);
        }
      }

      v40 += 2;
      ++v7;
      if (!--v41)
      {
        goto LABEL_83;
      }
    }

    v48 = v43 >> 4;
    v49 = (v44 + (v43 >> 4));
    if (v14 < v49)
    {
      v49 = v14;
    }

    if (v49 < v12)
    {
      v49 = v12;
    }

    v50 = bswap32(v49[1]) & 0xFFFF0000 | ((bswap32(v49[2]) >> 16) << 32) | (bswap32(*v49) >> 16);
    if (v17)
    {
      v51 = (v44 + v16);
      if (v14 >= v51)
      {
        v52 = v51;
      }

      else
      {
        v52 = v14;
      }

      if (v52 < v12)
      {
        v52 = v12;
      }

      v53 = bswap32(v52[1]) & 0xFFFF0000 | ((bswap32(v52[2]) >> 16) << 32) | (bswap32(*v52) >> 16);
      v54 = (v51 + v48);
      if (v14 < v54)
      {
        v54 = v14;
      }

      if (v54 < v12)
      {
        v54 = v12;
      }

      v55 = BLEND16_21891[v17];
      v46 = v46 - ((v55 & v46) >> v17) + ((v53 & v55) >> v17);
      v50 = v50 - ((v55 & v50) >> v17) + (((bswap32(v54[1]) & 0xFFFF0000 | ((bswap32(v54[2]) >> 16) << 32) | (bswap32(*v54) >> 16)) & v55) >> v17);
    }

    v56 = BLEND16_21891[v47];
    v57 = v46 - ((v56 & v46) >> v47);
    v58 = (v56 & v50) >> v47;
LABEL_75:
    v46 = v57 + v58;
    goto LABEL_76;
  }

  v92 = (v8 + 16 * a3);
  v63 = v13 - 6;
  v64 = a5;
  do
  {
    v65 = *(v93 + 32);
    v66 = &v65[(v11 >> v10) * v9];
    v67 = a6;
    if (v89 == 1)
    {
      if (a5 >= 1)
      {
        v68 = v92;
        v69 = v64;
        do
        {
          v70 = *v68;
          v68 += 2;
          v71 = &v66[v70];
          if (v63 < &v66[v70])
          {
            v71 = v63;
          }

          if (v71 < v65)
          {
            v71 = v65;
          }

          result = v71[4] | (*v71 << 16) | (*(v71 + 1) << 8) | 0xFF000000;
          if (v6 != 255)
          {
            result = PDM_15068(result, v6);
          }

          *v7++ = result;
          --v69;
        }

        while (v69);
      }
    }

    else
    {
      v72 = v92;
      v73 = v64;
      if (a5 >= 1)
      {
        do
        {
          v74 = *v72;
          v72 += 2;
          v75 = &v66[v74];
          if (v63 < &v66[v74])
          {
            v75 = v63;
          }

          if (v75 < *(v93 + 32))
          {
            v75 = *(v93 + 32);
          }

          v76 = v75[4] | (*v75 << 16) | (*(v75 + 1) << 8);
          v77 = v76 | 0xFF000000;
          if (v6 != 255)
          {
            result = PDM_15068(v76 | 0xFF000000, v6);
            v77 = result;
          }

          if (HIBYTE(v77))
          {
            if (HIBYTE(v77) == 255)
            {
              *v7 = v77;
            }

            else
            {
              result = DplusDM_15070(v7, v77, *v7, ~v77 >> 24);
            }
          }

          ++v7;
          --v73;
        }

        while (v73);
      }
    }

    v9 = v87;
    v7 += v88;
    LOBYTE(v10) = v86;
    v11 += v85;
    a6 = v67 - 1;
    a5 = v90;
  }

  while (v67 != 1);
  return result;
}

unint64_t argb32_image_mark_w16(unint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v7 = *(a2 + 8);
  v91 = *a2;
  v8 = *(a2 + 2);
  v90 = *(a2 + 3) - a5;
  v10 = *(a2 + 15);
  v9 = *(a2 + 16);
  v11 = *(a2 + 7);
  v87 = *(a2 + 9);
  v12 = *(a2 + 5) + v87 * a4;
  v13 = *(result + 32);
  v14 = v13 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3);
  v96 = result;
  v88 = v11;
  v89 = v10;
  if (*(result + 176))
  {
    v85 = *(a2 + 11);
    v83 = ~(-1 << v11);
    v84 = *(a2 + 13);
    v82 = v11 - 4;
    v15 = (v14 - 4);
    v80 = a5;
    v81 = -v10;
    v79 = v9 + 16 * a3 + 8;
    while (1)
    {
      if (((v84 - v12) | (v12 - v85)) < 0)
      {
        v18 = 0;
        v17 = 0;
      }

      else
      {
        v16 = ((v12 & v83) >> v82) & 0xF;
        v17 = (v16 - 7) >= 9 ? v81 : v10;
        v18 = weights_21890[v16] & 0xF;
      }

      v19 = *(v96 + 32) + (v12 >> v11) * v10;
      v94 = a6;
      v92 = v12;
      if (v91 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v20 = v79;
        v21 = v80;
        while (1)
        {
          v22 = *(v20 - 1);
          v23 = *v20;
          v24 = v19 + v22;
          if (v15 >= v19 + v22)
          {
            v25 = (v19 + v22);
          }

          else
          {
            v25 = v15;
          }

          if (v25 < v13)
          {
            v25 = v13;
          }

          v26 = *v25;
          v27 = *v20 & 0xF;
          if ((v23 & 0xF) != 0)
          {
            break;
          }

          if (v18)
          {
            v39 = (v24 + v17);
            if (v15 < v24 + v17)
            {
              v39 = v15;
            }

            if (v39 < v13)
            {
              v39 = v13;
            }

            v40 = BLEND16_21891[v18];
            v37 = v26 - ((v40 & v26) >> v18);
            v38 = (v40 & *v39) >> v18;
            goto LABEL_40;
          }

LABEL_41:
          result = (65793 * BYTE1(v26)) | 0xFF000000;
          if (v7 != 255)
          {
            result = PDM_15068(result, v7);
          }

          v20 += 2;
          *v8++ = result;
          if (!--v21)
          {
            goto LABEL_83;
          }
        }

        v28 = v23 >> 4;
        v29 = (v24 + (v23 >> 4));
        if (v15 < v29)
        {
          v29 = v15;
        }

        if (v29 < v13)
        {
          v29 = v13;
        }

        v30 = *v29;
        if (v18)
        {
          v31 = (v24 + v17);
          if (v15 >= v31)
          {
            v32 = v31;
          }

          else
          {
            v32 = v15;
          }

          if (v32 < v13)
          {
            v32 = v13;
          }

          v33 = *v32;
          v34 = (v31 + v28);
          if (v15 < v34)
          {
            v34 = v15;
          }

          if (v34 < v13)
          {
            v34 = v13;
          }

          v35 = BLEND16_21891[v18];
          LODWORD(v26) = v26 - ((v35 & v26) >> v18) + ((v35 & v33) >> v18);
          LODWORD(v30) = v30 - ((v35 & v30) >> v18) + ((v35 & *v34) >> v18);
        }

        v36 = BLEND16_21891[v27];
        v37 = v26 - ((v36 & v26) >> v27);
        v38 = (v36 & v30) >> v27;
LABEL_40:
        LOWORD(v26) = v37 + v38;
        goto LABEL_41;
      }

LABEL_83:
      v10 = v89;
      v8 += v90;
      LOBYTE(v11) = v88;
      v12 = v92 + v87;
      a6 = v94 - 1;
      if (v94 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_83;
    }

    v42 = v79;
    v41 = v80;
    while (1)
    {
      v43 = *(v42 - 1);
      v44 = *v42;
      v45 = v19 + v43;
      if (v15 >= v19 + v43)
      {
        v46 = (v19 + v43);
      }

      else
      {
        v46 = v15;
      }

      if (v46 < v13)
      {
        v46 = v13;
      }

      v47 = *v46;
      v48 = *v42 & 0xF;
      if ((v44 & 0xF) != 0)
      {
        break;
      }

      if (v18)
      {
        v60 = (v45 + v17);
        if (v15 < v45 + v17)
        {
          v60 = v15;
        }

        if (v60 < v13)
        {
          v60 = v13;
        }

        v61 = BLEND16_21891[v18];
        v58 = v47 - ((v61 & v47) >> v18);
        v59 = (v61 & *v60) >> v18;
        goto LABEL_75;
      }

LABEL_76:
      v62 = 65793 * BYTE1(v47);
      v63 = v62 | 0xFF000000;
      if (v7 != 255)
      {
        result = PDM_15068(v62 | 0xFF000000, v7);
        v63 = result;
      }

      if (HIBYTE(v63))
      {
        if (HIBYTE(v63) == 255)
        {
          *v8 = v63;
        }

        else
        {
          result = DplusDM_15070(v8, v63, *v8, ~v63 >> 24);
        }
      }

      v42 += 2;
      ++v8;
      if (!--v41)
      {
        goto LABEL_83;
      }
    }

    v49 = v44 >> 4;
    v50 = (v45 + (v44 >> 4));
    if (v15 < v50)
    {
      v50 = v15;
    }

    if (v50 < v13)
    {
      v50 = v13;
    }

    v51 = *v50;
    if (v18)
    {
      v52 = (v45 + v17);
      if (v15 >= v52)
      {
        v53 = v52;
      }

      else
      {
        v53 = v15;
      }

      if (v53 < v13)
      {
        v53 = v13;
      }

      v54 = *v53;
      v55 = (v52 + v49);
      if (v15 < v55)
      {
        v55 = v15;
      }

      if (v55 < v13)
      {
        v55 = v13;
      }

      v56 = BLEND16_21891[v18];
      LODWORD(v47) = v47 - ((v56 & v47) >> v18) + ((v56 & v54) >> v18);
      LODWORD(v51) = v51 - ((v56 & v51) >> v18) + ((v56 & *v55) >> v18);
    }

    v57 = BLEND16_21891[v48];
    v58 = v47 - ((v57 & v47) >> v48);
    v59 = (v57 & v51) >> v48;
LABEL_75:
    LOWORD(v47) = v58 + v59;
    goto LABEL_76;
  }

  v95 = (v9 + 16 * a3);
  v64 = v14 - 4;
  v93 = a5;
  do
  {
    v66 = v12;
    v67 = *(v96 + 32);
    v68 = &v67[(v12 >> v11) * v10];
    if (v91 == 1)
    {
      if (a5 >= 1)
      {
        v69 = v95;
        v70 = v93;
        do
        {
          v71 = *v69;
          v69 += 2;
          v72 = &v68[v71];
          if (v64 < &v68[v71])
          {
            v72 = v64;
          }

          if (v72 < v67)
          {
            v72 = v67;
          }

          result = *v72 & 0xFF00 | (HIBYTE(*v72) << 16) | HIBYTE(*v72) | 0xFF000000;
          if (v7 != 255)
          {
            result = PDM_15068(result, v7);
          }

          *v8++ = result;
          --v70;
        }

        while (v70);
      }
    }

    else
    {
      v73 = v95;
      v74 = v93;
      if (a5 >= 1)
      {
        do
        {
          v75 = *v73;
          v73 += 2;
          v76 = &v68[v75];
          if (v64 < &v68[v75])
          {
            v76 = v64;
          }

          if (v76 < *(v96 + 32))
          {
            v76 = *(v96 + 32);
          }

          v77 = *v76 & 0xFF00 | (HIBYTE(*v76) << 16) | HIBYTE(*v76);
          v78 = v77 | 0xFF000000;
          if (v7 != 255)
          {
            result = PDM_15068(v77 | 0xFF000000, v7);
            v78 = result;
          }

          if (HIBYTE(v78))
          {
            if (HIBYTE(v78) == 255)
            {
              *v8 = v78;
            }

            else
            {
              result = DplusDM_15070(v8, v78, *v8, ~v78 >> 24);
            }
          }

          ++v8;
          --v74;
        }

        while (v74);
      }
    }

    v10 = v89;
    v8 += v90;
    LOBYTE(v11) = v88;
    v12 = v66 + v87;
    --a6;
  }

  while (a6);
  return result;
}

unint64_t argb32_image_mark_W16(unint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v7 = *(a2 + 8);
  v94 = *a2;
  v8 = *(a2 + 2);
  v93 = *(a2 + 3) - a5;
  v10 = *(a2 + 15);
  v9 = *(a2 + 16);
  v11 = *(a2 + 7);
  v90 = *(a2 + 9);
  v12 = *(a2 + 5) + v90 * a4;
  v13 = *(result + 32);
  v14 = v13 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3);
  v99 = result;
  v91 = v11;
  v92 = v10;
  if (*(result + 176))
  {
    v88 = *(a2 + 11);
    v86 = ~(-1 << v11);
    v87 = *(a2 + 13);
    v85 = v11 - 4;
    v15 = (v14 - 4);
    v83 = a5;
    v84 = -v10;
    v82 = v9 + 16 * a3 + 8;
    while (1)
    {
      if (((v87 - v12) | (v12 - v88)) < 0)
      {
        v18 = 0;
        v17 = 0;
      }

      else
      {
        v16 = ((v12 & v86) >> v85) & 0xF;
        v17 = (v16 - 7) >= 9 ? v84 : v10;
        v18 = weights_21890[v16] & 0xF;
      }

      v19 = *(v99 + 32) + (v12 >> v11) * v10;
      v97 = a6;
      v95 = v12;
      if (v94 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v20 = v82;
        v21 = v83;
        while (1)
        {
          v22 = *(v20 - 1);
          v23 = *v20;
          v24 = v19 + v22;
          if (v15 >= v19 + v22)
          {
            v25 = (v19 + v22);
          }

          else
          {
            v25 = v15;
          }

          if (v25 < v13)
          {
            v25 = v13;
          }

          v26 = bswap32(*v25) >> 16;
          v27 = *v20 & 0xF;
          if ((v23 & 0xF) != 0)
          {
            break;
          }

          if (v18)
          {
            v39 = (v24 + v17);
            if (v15 < v24 + v17)
            {
              v39 = v15;
            }

            if (v39 < v13)
            {
              v39 = v13;
            }

            v40 = BLEND16_21891[v18];
            v37 = v26 - ((v40 & v26) >> v18);
            v38 = (v40 & (bswap32(*v39) >> 16)) >> v18;
            goto LABEL_40;
          }

LABEL_41:
          result = (65793 * BYTE1(v26)) | 0xFF000000;
          if (v7 != 255)
          {
            result = PDM_15068(result, v7);
          }

          v20 += 2;
          *v8++ = result;
          if (!--v21)
          {
            goto LABEL_83;
          }
        }

        v28 = v23 >> 4;
        v29 = (v24 + (v23 >> 4));
        if (v15 < v29)
        {
          v29 = v15;
        }

        if (v29 < v13)
        {
          v29 = v13;
        }

        v30 = bswap32(*v29) >> 16;
        if (v18)
        {
          v31 = (v24 + v17);
          if (v15 >= v31)
          {
            v32 = v31;
          }

          else
          {
            v32 = v15;
          }

          if (v32 < v13)
          {
            v32 = v13;
          }

          v33 = bswap32(*v32) >> 16;
          v34 = (v31 + v28);
          if (v15 < v34)
          {
            v34 = v15;
          }

          if (v34 < v13)
          {
            v34 = v13;
          }

          v35 = BLEND16_21891[v18];
          LODWORD(v26) = v26 - ((v35 & v26) >> v18) + ((v35 & v33) >> v18);
          LODWORD(v30) = v30 - ((v35 & v30) >> v18) + ((v35 & (bswap32(*v34) >> 16)) >> v18);
        }

        v36 = BLEND16_21891[v27];
        v37 = v26 - ((v36 & v26) >> v27);
        v38 = (v36 & v30) >> v27;
LABEL_40:
        LOWORD(v26) = v37 + v38;
        goto LABEL_41;
      }

LABEL_83:
      v10 = v92;
      v8 += v93;
      LOBYTE(v11) = v91;
      v12 = v95 + v90;
      a6 = v97 - 1;
      if (v97 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_83;
    }

    v42 = v82;
    v41 = v83;
    while (1)
    {
      v43 = *(v42 - 1);
      v44 = *v42;
      v45 = v19 + v43;
      if (v15 >= v19 + v43)
      {
        v46 = (v19 + v43);
      }

      else
      {
        v46 = v15;
      }

      if (v46 < v13)
      {
        v46 = v13;
      }

      v47 = bswap32(*v46) >> 16;
      v48 = *v42 & 0xF;
      if ((v44 & 0xF) != 0)
      {
        break;
      }

      if (v18)
      {
        v60 = (v45 + v17);
        if (v15 < v45 + v17)
        {
          v60 = v15;
        }

        if (v60 < v13)
        {
          v60 = v13;
        }

        v61 = BLEND16_21891[v18];
        v58 = v47 - ((v61 & v47) >> v18);
        v59 = (v61 & (bswap32(*v60) >> 16)) >> v18;
        goto LABEL_75;
      }

LABEL_76:
      v62 = 65793 * BYTE1(v47);
      v63 = v62 | 0xFF000000;
      if (v7 != 255)
      {
        result = PDM_15068(v62 | 0xFF000000, v7);
        v63 = result;
      }

      if (HIBYTE(v63))
      {
        if (HIBYTE(v63) == 255)
        {
          *v8 = v63;
        }

        else
        {
          result = DplusDM_15070(v8, v63, *v8, ~v63 >> 24);
        }
      }

      v42 += 2;
      ++v8;
      if (!--v41)
      {
        goto LABEL_83;
      }
    }

    v49 = v44 >> 4;
    v50 = (v45 + (v44 >> 4));
    if (v15 < v50)
    {
      v50 = v15;
    }

    if (v50 < v13)
    {
      v50 = v13;
    }

    v51 = bswap32(*v50) >> 16;
    if (v18)
    {
      v52 = (v45 + v17);
      if (v15 >= v52)
      {
        v53 = v52;
      }

      else
      {
        v53 = v15;
      }

      if (v53 < v13)
      {
        v53 = v13;
      }

      v54 = bswap32(*v53) >> 16;
      v55 = (v52 + v49);
      if (v15 < v55)
      {
        v55 = v15;
      }

      if (v55 < v13)
      {
        v55 = v13;
      }

      v56 = BLEND16_21891[v18];
      LODWORD(v47) = v47 - ((v56 & v47) >> v18) + ((v56 & v54) >> v18);
      LODWORD(v51) = v51 - ((v56 & v51) >> v18) + ((v56 & (bswap32(*v55) >> 16)) >> v18);
    }

    v57 = BLEND16_21891[v48];
    v58 = v47 - ((v57 & v47) >> v48);
    v59 = (v57 & v51) >> v48;
LABEL_75:
    LOWORD(v47) = v58 + v59;
    goto LABEL_76;
  }

  v98 = (v9 + 16 * a3);
  v64 = v14 - 4;
  v96 = a5;
  do
  {
    v66 = v12;
    v67 = *(v99 + 32);
    v68 = &v67[(v12 >> v11) * v10];
    if (v94 == 1)
    {
      if (a5 >= 1)
      {
        v69 = v98;
        v70 = v96;
        do
        {
          v71 = *v69;
          v69 += 2;
          v72 = &v68[v71];
          if (v64 < &v68[v71])
          {
            v72 = v64;
          }

          if (v72 < v67)
          {
            v72 = v67;
          }

          v73 = bswap32(*v72);
          HIDWORD(v74) = HIBYTE(v73);
          LODWORD(v74) = v73;
          result = (v74 >> 16) & 0xFFFF00 | HIBYTE(v73) | 0xFF000000;
          if (v7 != 255)
          {
            result = PDM_15068(result, v7);
          }

          *v8++ = result;
          --v70;
        }

        while (v70);
      }
    }

    else
    {
      v75 = v98;
      v76 = v96;
      if (a5 >= 1)
      {
        do
        {
          v77 = *v75;
          v75 += 2;
          v78 = &v68[v77];
          if (v64 < &v68[v77])
          {
            v78 = v64;
          }

          if (v78 < *(v99 + 32))
          {
            v78 = *(v99 + 32);
          }

          v79 = bswap32(*v78);
          HIDWORD(v80) = HIBYTE(v79);
          LODWORD(v80) = v79;
          v81 = (v80 >> 16) & 0xFFFF00 | HIBYTE(v79) | 0xFF000000;
          if (v7 != 255)
          {
            result = PDM_15068(v81, v7);
            v81 = result;
          }

          if (HIBYTE(v81))
          {
            if (HIBYTE(v81) == 255)
            {
              *v8 = v81;
            }

            else
            {
              result = DplusDM_15070(v8, v81, *v8, ~v81 >> 24);
            }
          }

          ++v8;
          --v76;
        }

        while (v76);
      }
    }

    v10 = v92;
    v8 += v93;
    LOBYTE(v11) = v91;
    v12 = v66 + v90;
    --a6;
  }

  while (a6);
  return result;
}

unint64_t argb32_image_mark_rgb32(unint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 8);
  v7 = a2[1];
  v91 = *a2;
  v8 = *(result + 32);
  if (*(result + 40))
  {
    v9 = 0;
  }

  else
  {
    v9 = 255;
  }

  v10 = *(a2 + 2);
  v90 = *(a2 + 3) - a5;
  v12 = *(a2 + 15);
  v11 = *(a2 + 16);
  v13 = *(a2 + 7);
  v87 = *(a2 + 9);
  v14 = *(a2 + 5) + v87 * a4;
  v15 = v8 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3);
  v97 = result;
  v92 = a5;
  v88 = v13;
  v89 = v12;
  if (*(result + 176))
  {
    v84 = ~(-1 << v13);
    v85 = *(a2 + 13);
    v86 = *(a2 + 11);
    v83 = v13 - 4;
    v82 = -v12;
    v16 = (v15 - 4);
    v80 = v11 + 16 * a3 + 8;
    v81 = a5;
    while (1)
    {
      if (((v85 - v14) | (v14 - v86)) < 0)
      {
        v21 = 0;
        v98 = 0;
      }

      else
      {
        v17 = ((v14 & v84) >> v83) & 0xF;
        v18 = weights_21890[v17];
        v19 = (v17 - 7) >= 9;
        v20 = v82;
        if (!v19)
        {
          v20 = v12;
        }

        v98 = v20;
        v21 = v18 & 0xF;
      }

      v22 = *(v97 + 32) + (v14 >> v13) * v12;
      v95 = a6;
      v93 = v14;
      if (v91 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v23 = v80;
        v24 = v81;
        while (1)
        {
          v25 = *(v23 - 1);
          v26 = *v23;
          v27 = v22 + v25;
          if (v16 >= v22 + v25)
          {
            v28 = (v22 + v25);
          }

          else
          {
            v28 = v16;
          }

          if (v28 < v8)
          {
            v28 = v8;
          }

          v29 = *v28;
          v30 = v26 & 0xF;
          if ((v26 & 0xF) != 0)
          {
            break;
          }

          if (v21)
          {
            v41 = (v27 + v98);
            if (v16 < v27 + v98)
            {
              v41 = v16;
            }

            if (v41 < v8)
            {
              v41 = v8;
            }

            v42 = BLEND8_21892[v21];
            v39 = v29 - ((v42 & v29) >> v21);
            v40 = (v42 & *v41) >> v21;
            goto LABEL_42;
          }

LABEL_43:
          HIDWORD(v43) = __ROL4__(v29, v7) | v9;
          LODWORD(v43) = HIDWORD(v43);
          result = (v43 >> 8);
          if (v6 != 255)
          {
            result = PDM_15068(result, v6);
          }

          v23 += 2;
          *v10++ = result;
          if (!--v24)
          {
            goto LABEL_85;
          }
        }

        v31 = (v27 + (v26 >> 4));
        if (v16 < v31)
        {
          v31 = v16;
        }

        if (v31 < v8)
        {
          v31 = v8;
        }

        v32 = *v31;
        if (v21)
        {
          v33 = (v27 + v98);
          if (v16 >= v33)
          {
            v34 = v33;
          }

          else
          {
            v34 = v16;
          }

          if (v34 < v8)
          {
            v34 = v8;
          }

          v35 = *v34;
          v36 = (v33 + (v26 >> 4));
          if (v16 < v36)
          {
            v36 = v16;
          }

          if (v36 < v8)
          {
            v36 = v8;
          }

          v37 = BLEND8_21892[v21];
          v29 = v29 - ((v37 & v29) >> v21) + ((v37 & v35) >> v21);
          v32 = v32 - ((v37 & v32) >> v21) + ((v37 & *v36) >> v21);
        }

        v38 = BLEND8_21892[*v23 & 0xF];
        v39 = v29 - ((v38 & v29) >> v30);
        v40 = (v38 & v32) >> v30;
LABEL_42:
        v29 = v39 + v40;
        goto LABEL_43;
      }

LABEL_85:
      v12 = v89;
      v10 += v90;
      LOBYTE(v13) = v88;
      v14 = v93 + v87;
      a6 = v95 - 1;
      a5 = v92;
      if (v95 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_85;
    }

    v44 = v80;
    v45 = v81;
    while (1)
    {
      v46 = *(v44 - 1);
      v47 = *v44;
      v48 = v22 + v46;
      if (v16 >= v22 + v46)
      {
        v49 = (v22 + v46);
      }

      else
      {
        v49 = v16;
      }

      if (v49 < v8)
      {
        v49 = v8;
      }

      v50 = *v49;
      v51 = v47 & 0xF;
      if ((v47 & 0xF) != 0)
      {
        break;
      }

      if (v21)
      {
        v62 = (v48 + v98);
        if (v16 < v48 + v98)
        {
          v62 = v16;
        }

        if (v62 < v8)
        {
          v62 = v8;
        }

        v63 = BLEND8_21892[v21];
        v60 = v50 - ((v63 & v50) >> v21);
        v61 = (v63 & *v62) >> v21;
        goto LABEL_77;
      }

LABEL_78:
      HIDWORD(v65) = __ROL4__(v50, v7) | v9;
      LODWORD(v65) = HIDWORD(v65);
      v64 = v65 >> 8;
      if (v6 != 255)
      {
        result = PDM_15068(v64, v6);
        v64 = result;
      }

      if (HIBYTE(v64))
      {
        if (HIBYTE(v64) == 255)
        {
          *v10 = v64;
        }

        else
        {
          result = DplusDM_15070(v10, v64, *v10, ~v64 >> 24);
        }
      }

      v44 += 2;
      ++v10;
      if (!--v45)
      {
        goto LABEL_85;
      }
    }

    v52 = (v48 + (v47 >> 4));
    if (v16 < v52)
    {
      v52 = v16;
    }

    if (v52 < v8)
    {
      v52 = v8;
    }

    v53 = *v52;
    if (v21)
    {
      v54 = (v48 + v98);
      if (v16 >= v54)
      {
        v55 = v54;
      }

      else
      {
        v55 = v16;
      }

      if (v55 < v8)
      {
        v55 = v8;
      }

      v56 = *v55;
      v57 = (v54 + (v47 >> 4));
      if (v16 < v57)
      {
        v57 = v16;
      }

      if (v57 < v8)
      {
        v57 = v8;
      }

      v58 = BLEND8_21892[v21];
      v50 = v50 - ((v58 & v50) >> v21) + ((v58 & v56) >> v21);
      v53 = v53 - ((v58 & v53) >> v21) + ((v58 & *v57) >> v21);
    }

    v59 = BLEND8_21892[*v44 & 0xF];
    v60 = v50 - ((v59 & v50) >> v51);
    v61 = (v59 & v53) >> v51;
LABEL_77:
    v50 = v60 + v61;
    goto LABEL_78;
  }

  v66 = v15 - 4;
  v99 = a5;
  v100 = (v11 + 16 * a3);
  do
  {
    v67 = *(v97 + 32);
    v68 = &v67[(v14 >> v13) * v12];
    v96 = a6;
    v94 = v14;
    if (v91 == 1)
    {
      if (a5 >= 1)
      {
        v69 = v99;
        v70 = v100;
        do
        {
          v71 = *v70;
          v70 += 2;
          v72 = &v68[v71];
          if (v66 < &v68[v71])
          {
            v72 = v66;
          }

          if (v72 < v67)
          {
            v72 = v67;
          }

          HIDWORD(v73) = __ROL4__(*v72, v7) | v9;
          LODWORD(v73) = HIDWORD(v73);
          result = (v73 >> 8);
          if (v6 != 255)
          {
            result = PDM_15068(result, v6);
          }

          *v10++ = result;
          --v69;
        }

        while (v69);
      }
    }

    else
    {
      v74 = v99;
      v75 = v100;
      if (a5 >= 1)
      {
        do
        {
          v76 = *v75;
          v75 += 2;
          v77 = &v68[v76];
          if (v66 < &v68[v76])
          {
            v77 = v66;
          }

          if (v77 < *(v97 + 32))
          {
            v77 = *(v97 + 32);
          }

          HIDWORD(v79) = __ROL4__(*v77, v7) | v9;
          LODWORD(v79) = HIDWORD(v79);
          v78 = v79 >> 8;
          if (v6 != 255)
          {
            result = PDM_15068(v78, v6);
            v78 = result;
          }

          if (HIBYTE(v78))
          {
            if (HIBYTE(v78) == 255)
            {
              *v10 = v78;
            }

            else
            {
              result = DplusDM_15070(v10, v78, *v10, ~v78 >> 24);
            }
          }

          ++v10;
          --v74;
        }

        while (v74);
      }
    }

    v12 = v89;
    v10 += v90;
    LOBYTE(v13) = v88;
    v14 = v94 + v87;
    a6 = v96 - 1;
    a5 = v92;
  }

  while (v96 != 1);
  return result;
}