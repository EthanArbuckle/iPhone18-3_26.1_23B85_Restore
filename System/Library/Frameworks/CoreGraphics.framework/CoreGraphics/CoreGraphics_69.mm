uint64_t cmyk64_sample_rgba64(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v6 = *(result + 72);
  v7 = *(result + 88);
  v77 = *(result + 80);
  v8 = *(result + 112);
  v9 = *(result + 120);
  v76 = *(result + 188);
  v10 = *(result + 152) - 16;
  v11 = *(result + 144) - 1;
  v12 = *(result + 32);
  v13 = 0xFFFF000000000000;
  if (*(result + 40))
  {
    v13 = 0;
  }

  v14 = v12 + ((*(result + 260) - 1) * v4) + 8 * *(result + 256) - 8;
  v78 = *(result + 64);
  while (1)
  {
LABEL_4:
    if (a3 >= v6)
    {
      if (a3 <= v7)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        HIDWORD(v26) = HIDWORD(a3);
        v18 = v78;
      }

      else
      {
        v20 = *(result + 216);
        v21 = *(result + 224) + v7;
        v22 = v21 - a3 + (v20 >> 1);
        v18 = v78;
        if (v22 < 1)
        {
          goto LABEL_36;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (*(result + 232) * v22) >> 32;
        }

        v25 = v76 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v15 = *(result + 216);
      v16 = v6 - *(result + 224);
      v17 = a3 - v16 + (v15 >> 1);
      v18 = v78;
      if (v17 < 1)
      {
        goto LABEL_36;
      }

      if (v17 >= v15)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (*(result + 232) * v17) >> 32;
      }

      v25 = v76 | v19;
      v26 = v16 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v18)
    {
      break;
    }

    v27 = *(result + 192);
    v28 = v18 - *(result + 200);
    v29 = a2 - v28 + (v27 >> 1);
    if (v29 >= 1)
    {
      if (v29 < v27)
      {
        v25 = ((v25 >> 15) * (((*(result + 208) * v29) >> 32) >> 15)) | v76;
      }

      v30 = v28 + 0x1000000;
      v31 = 32;
      goto LABEL_28;
    }

LABEL_36:
    --a4;
    a2 += v8;
    a3 += v9;
    v10 += 16;
    *++v11 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v77)
  {
    v31 = (a2 >> 26) & 0x3C;
    v30 = a2;
    goto LABEL_28;
  }

  v32 = *(result + 192);
  v33 = *(result + 200) + v77;
  v34 = v33 - a2 + (v32 >> 1);
  if (v34 < 1)
  {
    goto LABEL_36;
  }

  if (v34 < v32)
  {
    v25 = ((v25 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v76;
  }

  v30 = v33 - 0x1000000;
  v31 = 28;
LABEL_28:
  if (v25 < 0x400000)
  {
    goto LABEL_36;
  }

  v35 = v12 + SHIDWORD(v26) * v4 + 8 * (v30 >> 32);
  v36 = *(result + 32);
  if (v14 >= v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = v14;
  }

  if (v37 < v36)
  {
    v37 = *(result + 32);
  }

  v38 = *v37;
  if (!v5)
  {
    v40 = v77;
    goto LABEL_39;
  }

  v39 = *(v5 + (v31 | v24));
LABEL_57:
  v40 = v77;
  v51 = v39 & 0xF;
  v52 = HIBYTE(v39) & 3;
  switch(v51)
  {
    case 1:
      v73 = (v35 + SBYTE1(v39) * v4);
      if (v14 < v73)
      {
        v73 = v14;
      }

      if (v73 < v36)
      {
        v73 = v36;
      }

      v74 = interpolate_16161616_21862[v52];
      v75 = v52 + 1;
      v67 = v38 - ((v74 & v38) >> v75);
      v72 = (v74 & *v73) >> v75;
LABEL_85:
      v38 = v67 + v72;
      break;
    case 2:
      v69 = (v35 + ((HIWORD(v39) << 56) >> 53));
      if (v14 < v69)
      {
        v69 = v14;
      }

      if (v69 < v36)
      {
        v69 = v36;
      }

      v70 = (v39 >> 28) & 3;
      v71 = interpolate_16161616_21862[v70];
      v66 = v70 + 1;
      v67 = v38 - ((v71 & v38) >> v66);
      v68 = v71 & *v69;
LABEL_79:
      v72 = v68 >> v66;
      goto LABEL_85;
    case 3:
      v53 = HIWORD(v39) << 56;
      v54 = (v35 + (v53 >> 53));
      if (v14 < v54)
      {
        v54 = v14;
      }

      if (v54 < v36)
      {
        v54 = v36;
      }

      v55 = *v54;
      v56 = (v35 + SBYTE1(v39) * v4);
      if (v14 >= v56)
      {
        v57 = v56;
      }

      else
      {
        v57 = v14;
      }

      if (v57 < v36)
      {
        v57 = v36;
      }

      v58 = *v57;
      v59 = (v56 + (v53 >> 53));
      if (v14 < v59)
      {
        v59 = v14;
      }

      if (v59 < v36)
      {
        v59 = v36;
      }

      v60 = interpolate_16161616_21862[v52];
      v61 = v52 + 1;
      v62 = v38 - ((v60 & v38) >> v61) + ((v60 & v58) >> v61);
      v63 = v55 - ((v60 & v55) >> v61) + ((v60 & *v59) >> v61);
      v64 = (v39 >> 28) & 3;
      v65 = interpolate_16161616_21862[v64];
      v66 = v64 + 1;
      v67 = v62 - ((v62 & v65) >> v66);
      v68 = v63 & v65;
      goto LABEL_79;
  }

LABEL_39:
  v41 = 0;
  v42 = v25 >> 22;
  v43 = (v10 + 24);
  a3 += v9;
  v44 = v7 - a3;
  a2 += v8;
  v45 = v40 - a2;
  while (1)
  {
    v46 = v38 | v13;
    v47 = WORD1(v38);
    v48 = ((v38 | v13) >> 32);
    if (v38 > WORD1(v38))
    {
      v47 = v38;
    }

    if (v48 <= v47)
    {
      v48 = v47;
    }

    *(v43 - 1) = ((v48 - ((v38 | v13) >> 32)) << 32) | ((HIWORD(v46) - v48) << 48) | ((v48 - WORD1(v38)) << 16) | (v48 - v38);
    *v43 = HIWORD(v46);
    *(v11 + 1 + v41) = v42;
    if (a4 - 1 == v41)
    {
      return result;
    }

    if (((v44 | v45 | (a3 - v6) | (a2 - v78)) & 0x8000000000000000) != 0)
    {
      v11 += v41 + 1;
      v10 = (v43 - 4);
      a4 += ~v41;
      if (a4)
      {
        goto LABEL_4;
      }

      return result;
    }

    v49 = v12 + SHIDWORD(a3) * v4;
    v35 = v49 + 8 * (a2 >> 32);
    v36 = *(result + 32);
    if (v14 >= v35)
    {
      v50 = (v49 + 8 * (a2 >> 32));
    }

    else
    {
      v50 = v14;
    }

    if (v50 < v36)
    {
      v50 = *(result + 32);
    }

    v38 = *v50;
    if (v5)
    {
      v39 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v39 & 0xF) != 0)
      {
        v11 += v41 + 1;
        v10 = (v43 - 4);
        a4 += ~v41;
        v25 = -1;
        goto LABEL_57;
      }
    }

    ++v41;
    v43 += 8;
    a3 += v9;
    v44 -= v9;
    a2 += v8;
    v45 -= v8;
    LOBYTE(v42) = -1;
  }
}

uint64_t cmyk64_sample_RGBA64(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v6 = *(result + 72);
  v7 = *(result + 88);
  v67 = *(result + 80);
  v8 = *(result + 112);
  v9 = *(result + 120);
  v66 = *(result + 188);
  v10 = *(result + 152) - 16;
  v11 = *(result + 144) - 1;
  v12 = *(result + 32);
  v13 = 0xFFFF000000000000;
  if (*(result + 40))
  {
    v13 = 0;
  }

  v14 = v12 + ((*(result + 260) - 1) * v4) + 8 * *(result + 256) - 8;
  v68 = *(result + 64);
  while (1)
  {
LABEL_4:
    if (a3 >= v6)
    {
      if (a3 <= v7)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        HIDWORD(v26) = HIDWORD(a3);
        v18 = v68;
      }

      else
      {
        v20 = *(result + 216);
        v21 = *(result + 224) + v7;
        v22 = v21 - a3 + (v20 >> 1);
        v18 = v68;
        if (v22 < 1)
        {
          goto LABEL_36;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (*(result + 232) * v22) >> 32;
        }

        v25 = v66 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v15 = *(result + 216);
      v16 = v6 - *(result + 224);
      v17 = a3 - v16 + (v15 >> 1);
      v18 = v68;
      if (v17 < 1)
      {
        goto LABEL_36;
      }

      if (v17 >= v15)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (*(result + 232) * v17) >> 32;
      }

      v25 = v66 | v19;
      v26 = v16 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v18)
    {
      break;
    }

    v27 = *(result + 192);
    v28 = v18 - *(result + 200);
    v29 = a2 - v28 + (v27 >> 1);
    if (v29 >= 1)
    {
      if (v29 < v27)
      {
        v25 = ((v25 >> 15) * (((*(result + 208) * v29) >> 32) >> 15)) | v66;
      }

      v30 = v28 + 0x1000000;
      v31 = 32;
      goto LABEL_28;
    }

LABEL_36:
    --a4;
    a2 += v8;
    a3 += v9;
    v10 += 16;
    *++v11 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v67)
  {
    v31 = (a2 >> 26) & 0x3C;
    v30 = a2;
    goto LABEL_28;
  }

  v32 = *(result + 192);
  v33 = *(result + 200) + v67;
  v34 = v33 - a2 + (v32 >> 1);
  if (v34 < 1)
  {
    goto LABEL_36;
  }

  if (v34 < v32)
  {
    v25 = ((v25 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v66;
  }

  v30 = v33 - 0x1000000;
  v31 = 28;
LABEL_28:
  if (v25 < 0x400000)
  {
    goto LABEL_36;
  }

  v35 = v12 + SHIDWORD(v26) * v4;
  v36 = v30 >> 32;
  v37 = v35 + 8 * v36;
  v38 = *(result + 32);
  if (v14 >= v37)
  {
    v39 = (v35 + 8 * v36);
  }

  else
  {
    v39 = v14;
  }

  if (v39 < v38)
  {
    v39 = *(result + 32);
  }

  v40 = ((bswap32(v39[2]) >> 16) << 32) | ((bswap32(v39[3]) >> 16) << 48) | bswap32(v39[1]) & 0xFFFF0000 | (bswap32(*v39) >> 16);
  if (v5)
  {
    v41 = *(v5 + (v31 | v24));
LABEL_56:
    v51 = v41 & 0xF;
    v52 = HIBYTE(v41) & 3;
    switch(v51)
    {
      case 1:
        v65 = (v37 + SBYTE1(v41) * v4);
        if (v14 < v65)
        {
          v65 = v14;
        }

        if (v65 < v38)
        {
          v65 = v38;
        }

        v40 = v40 - ((interpolate_16161616_21862[v52] & v40) >> (v52 + 1)) + (((((bswap32(v65[2]) >> 16) << 32) | ((bswap32(v65[3]) >> 16) << 48) | bswap32(v65[1]) & 0xFFFF0000 | (bswap32(*v65) >> 16)) & interpolate_16161616_21862[v52]) >> (v52 + 1));
        break;
      case 2:
        v63 = (v37 + ((HIWORD(v41) << 56) >> 53));
        if (v14 < v63)
        {
          v63 = v14;
        }

        if (v63 < v38)
        {
          v63 = v38;
        }

        v64 = (v41 >> 28) & 3;
        v40 = v40 - ((interpolate_16161616_21862[v64] & v40) >> (v64 + 1)) + (((((bswap32(v63[2]) >> 16) << 32) | ((bswap32(v63[3]) >> 16) << 48) | bswap32(v63[1]) & 0xFFFF0000 | (bswap32(*v63) >> 16)) & interpolate_16161616_21862[v64]) >> (v64 + 1));
        break;
      case 3:
        v53 = HIWORD(v41) << 56;
        v54 = (v37 + (v53 >> 53));
        if (v14 < v54)
        {
          v54 = v14;
        }

        if (v54 < v38)
        {
          v54 = v38;
        }

        v55 = ((bswap32(v54[2]) >> 16) << 32) | ((bswap32(v54[3]) >> 16) << 48) | bswap32(v54[1]) & 0xFFFF0000 | (bswap32(*v54) >> 16);
        v56 = v37 + SBYTE1(v41) * v4;
        if (v14 >= v56)
        {
          v57 = (v37 + SBYTE1(v41) * v4);
        }

        else
        {
          v57 = v14;
        }

        if (v57 < v38)
        {
          v57 = v38;
        }

        v58 = ((bswap32(v57[2]) >> 16) << 32) | ((bswap32(v57[3]) >> 16) << 48) | bswap32(v57[1]) & 0xFFFF0000 | (bswap32(*v57) >> 16);
        v59 = (v56 + (v53 >> 53));
        if (v14 < v59)
        {
          v59 = v14;
        }

        if (v59 < v38)
        {
          v59 = v38;
        }

        v60 = interpolate_16161616_21862[v52];
        v61 = v52 + 1;
        v62 = v40 - ((v60 & v40) >> v61) + ((v58 & v60) >> v61);
        v40 = v62 - ((v62 & interpolate_16161616_21862[(v41 >> 28) & 3]) >> (((v41 >> 28) & 3) + 1)) + (((v55 - ((v60 & v55) >> v61) + (((((bswap32(v59[2]) >> 16) << 32) | ((bswap32(v59[3]) >> 16) << 48) | bswap32(v59[1]) & 0xFFFF0000 | (bswap32(*v59) >> 16)) & v60) >> v61)) & interpolate_16161616_21862[(v41 >> 28) & 3]) >> (((v41 >> 28) & 3) + 1));
        break;
    }
  }

  v42 = 0;
  v43 = v25 >> 22;
  v44 = (v10 + 24);
  a3 += v9;
  v45 = v7 - a3;
  a2 += v8;
  v46 = v67 - a2;
  while (1)
  {
    v47 = v40;
    if (v40 <= WORD1(v40))
    {
      v47 = WORD1(v40);
    }

    if (((v40 | v13) >> 32) > v47)
    {
      v47 = ((v40 | v13) >> 32);
    }

    v48 = (v40 | v13) >> 48;
    *(v44 - 1) = ((v47 - ((v40 | v13) >> 32)) << 32) | ((v48 - v47) << 48) | ((v47 - WORD1(v40)) << 16) | (v47 - v40);
    *v44 = v48;
    *(v11 + 1 + v42) = v43;
    if (a4 - 1 == v42)
    {
      return result;
    }

    if (((v45 | v46 | (a3 - v6) | (a2 - v68)) & 0x8000000000000000) != 0)
    {
      v11 += v42 + 1;
      v10 = (v44 - 4);
      a4 += ~v42;
      if (a4)
      {
        goto LABEL_4;
      }

      return result;
    }

    v49 = v12 + SHIDWORD(a3) * v4;
    v37 = v49 + 8 * (a2 >> 32);
    v38 = *(result + 32);
    if (v14 >= v37)
    {
      v50 = (v49 + 8 * (a2 >> 32));
    }

    else
    {
      v50 = v14;
    }

    if (v50 < v38)
    {
      v50 = *(result + 32);
    }

    v40 = ((bswap32(v50[2]) >> 16) << 32) | ((bswap32(v50[3]) >> 16) << 48) | bswap32(v50[1]) & 0xFFFF0000 | (bswap32(*v50) >> 16);
    if (v5)
    {
      v41 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v41 & 0xF) != 0)
      {
        v11 += v42 + 1;
        v10 = (v44 - 4);
        a4 += ~v42;
        v25 = -1;
        goto LABEL_56;
      }
    }

    ++v42;
    v44 += 8;
    a3 += v9;
    v45 -= v9;
    a2 += v8;
    v46 -= v8;
    LOBYTE(v43) = -1;
  }
}

uint64_t cmyk64_sample_rgb48(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 24);
  v6 = *(result + 176);
  v7 = *(result + 64);
  v8 = *(result + 72);
  v9 = *(result + 88);
  v66 = *(result + 80);
  v10 = *(result + 112);
  v11 = *(result + 120);
  v12 = *(result + 152) - 16;
  v13 = *(result + 144) - 1;
  v65 = *(result + 188);
  v14 = v4 + ((*(result + 260) - 1) * v5) + 2 * (3 * *(result + 256)) - 6;
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

        v24 = v65 | v22;
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

      v24 = v65 | v18;
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
        v24 = ((v24 >> 15) * (((*(result + 208) * v28) >> 32) >> 15)) | v65;
      }

      v29 = v27 + 0x1000000;
      v30 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v10;
    a3 += v11;
    v12 += 16;
    *++v13 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v66)
  {
    v30 = (a2 >> 26) & 0x3C;
    v29 = a2;
    goto LABEL_26;
  }

  v31 = *(result + 192);
  v32 = *(result + 200) + v66;
  v33 = v32 - a2 + (v31 >> 1);
  if (v33 < 1)
  {
    goto LABEL_34;
  }

  if (v33 < v31)
  {
    v24 = ((v24 >> 15) * (((*(result + 208) * v33) >> 32) >> 15)) | v65;
  }

  v29 = v32 - 0x1000000;
  v30 = 28;
LABEL_26:
  if (v24 < 0x400000)
  {
    goto LABEL_34;
  }

  v34 = v29 >> 32;
  v35 = v4 + SHIDWORD(v25) * v5;
  v36 = v35 + 6 * v34;
  v37 = *(result + 32);
  if (v14 >= v36)
  {
    v38 = (v35 + 6 * v34);
  }

  else
  {
    v38 = v14;
  }

  if (v38 < v37)
  {
    v38 = *(result + 32);
  }

  v39 = *v38 | (*(v38 + 2) << 32) | 0xFFFF000000000000;
  if (!v6)
  {
    goto LABEL_36;
  }

  v40 = *(v6 + (v30 | v23));
LABEL_54:
  v50 = v40 & 0xF;
  v51 = HIBYTE(v40) & 3;
  switch(v50)
  {
    case 1:
      v64 = (v36 + SBYTE1(v40) * v5);
      if (v14 < v64)
      {
        v64 = v14;
      }

      if (v64 < v37)
      {
        v64 = v37;
      }

      v60 = *v64 | (*(v64 + 2) << 32) | 0xFFFF000000000000;
      goto LABEL_81;
    case 2:
      v63 = (v36 + 6 * SBYTE2(v40));
      if (v14 < v63)
      {
        v63 = v14;
      }

      if (v63 < v37)
      {
        v63 = v37;
      }

      v60 = *v63 | (*(v63 + 2) << 32) | 0xFFFF000000000000;
      v51 = (v40 >> 28) & 3;
LABEL_81:
      v61 = interpolate_16161616_21862[v51];
      v62 = v61 & v39;
      goto LABEL_82;
    case 3:
      v52 = (v36 + 6 * SBYTE2(v40));
      if (v14 < v52)
      {
        v52 = v14;
      }

      if (v52 < v37)
      {
        v52 = v37;
      }

      v53 = *v52 | (*(v52 + 2) << 32) | 0xFFFF000000000000;
      v54 = v36 + SBYTE1(v40) * v5;
      if (v14 >= v54)
      {
        v55 = (v36 + SBYTE1(v40) * v5);
      }

      else
      {
        v55 = v14;
      }

      if (v55 < v37)
      {
        v55 = v37;
      }

      v56 = *v55 | (*(v55 + 2) << 32) | 0xFFFF000000000000;
      v57 = (v54 + 6 * SBYTE2(v40));
      if (v14 < v57)
      {
        v57 = v14;
      }

      if (v57 < v37)
      {
        v57 = v37;
      }

      v58 = interpolate_16161616_21862[v51];
      v59 = v51 + 1;
      v39 = v39 - ((v58 & v39) >> v59) + ((v56 & v58) >> v59);
      v60 = v53 - ((v58 & v53) >> v59) + (((*v57 | (*(v57 + 2) << 32) | 0xFFFF000000000000) & v58) >> v59);
      v51 = (v40 >> 28) & 3;
      v61 = interpolate_16161616_21862[v51];
      v62 = v39 & v61;
LABEL_82:
      v39 = v39 - (v62 >> (v51 + 1)) + ((v60 & v61) >> (v51 + 1));
      break;
  }

LABEL_36:
  v41 = 0;
  v42 = v24 >> 22;
  v43 = (v12 + 24);
  a3 += v11;
  v44 = v9 - a3;
  a2 += v10;
  v45 = v66 - a2;
  while (1)
  {
    v46 = v39;
    v47 = WORD2(v39);
    if (v39 <= WORD1(v39))
    {
      v46 = WORD1(v39);
    }

    if (WORD2(v39) <= v46)
    {
      v47 = v46;
    }

    *(v43 - 1) = ((v47 - WORD2(v39)) << 32) | ((HIWORD(v39) - v47) << 48) | ((v47 - WORD1(v39)) << 16) | (v47 - v39);
    *v43 = HIWORD(v39);
    *(v13 + 1 + v41) = v42;
    if (a4 - 1 == v41)
    {
      return result;
    }

    if (((v44 | v45 | (a3 - v8) | (a2 - v7)) & 0x8000000000000000) != 0)
    {
      v13 += v41 + 1;
      v12 = (v43 - 4);
      a4 += ~v41;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v48 = v4 + SHIDWORD(a3) * v5;
    v36 = v48 + 6 * SHIDWORD(a2);
    v37 = *(result + 32);
    if (v14 >= v36)
    {
      v49 = (v48 + 6 * SHIDWORD(a2));
    }

    else
    {
      v49 = v14;
    }

    if (v49 < v37)
    {
      v49 = *(result + 32);
    }

    v39 = *v49 | (*(v49 + 2) << 32) | 0xFFFF000000000000;
    if (v6)
    {
      v40 = *(v6 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v40 & 0xF) != 0)
      {
        v13 += v41 + 1;
        v12 = (v43 - 4);
        a4 += ~v41;
        v24 = -1;
        goto LABEL_54;
      }
    }

    ++v41;
    v43 += 8;
    a3 += v11;
    v44 -= v11;
    a2 += v10;
    v45 -= v10;
    LOBYTE(v42) = -1;
  }
}

uint64_t cmyk64_sample_RGB48(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 24);
  v6 = *(result + 176);
  v7 = *(result + 64);
  v8 = *(result + 72);
  v9 = *(result + 88);
  v72 = *(result + 80);
  v10 = *(result + 112);
  v11 = *(result + 120);
  v12 = *(result + 152) - 16;
  v13 = *(result + 144) - 1;
  v71 = *(result + 188);
  v14 = v4 + ((*(result + 260) - 1) * v5) + 2 * (3 * *(result + 256)) - 6;
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

        v24 = v71 | v22;
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

      v24 = v71 | v18;
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
        v24 = ((v24 >> 15) * (((*(result + 208) * v28) >> 32) >> 15)) | v71;
      }

      v29 = v27 + 0x1000000;
      v30 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v10;
    a3 += v11;
    v12 += 16;
    *++v13 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v72)
  {
    v30 = (a2 >> 26) & 0x3C;
    v29 = a2;
    goto LABEL_26;
  }

  v31 = *(result + 192);
  v32 = *(result + 200) + v72;
  v33 = v32 - a2 + (v31 >> 1);
  if (v33 < 1)
  {
    goto LABEL_34;
  }

  if (v33 < v31)
  {
    v24 = ((v24 >> 15) * (((*(result + 208) * v33) >> 32) >> 15)) | v71;
  }

  v29 = v32 - 0x1000000;
  v30 = 28;
LABEL_26:
  if (v24 < 0x400000)
  {
    goto LABEL_34;
  }

  v34 = v29 >> 32;
  v35 = v4 + SHIDWORD(v25) * v5;
  v36 = v35 + 6 * v34;
  v37 = *(result + 32);
  if (v14 >= v36)
  {
    v38 = (v35 + 6 * v34);
  }

  else
  {
    v38 = v14;
  }

  if (v38 < v37)
  {
    v38 = *(result + 32);
  }

  v39 = (bswap32(*v38) >> 16) | ((bswap32(v38[1]) >> 16) << 16) | ((bswap32(v38[2]) >> 16) << 32) | 0xFFFF000000000000;
  if (!v6)
  {
    goto LABEL_36;
  }

  v40 = *(v6 + (v30 | v23));
LABEL_54:
  v49 = v40 & 0xF;
  v50 = HIBYTE(v40) & 3;
  switch(v49)
  {
    case 1:
      v68 = (v36 + SBYTE1(v40) * v5);
      if (v14 < v68)
      {
        v68 = v14;
      }

      if (v68 < v37)
      {
        v68 = v37;
      }

      v69 = interpolate_16161616_21862[v50];
      v70 = v50 + 1;
      v64 = v39 - ((v69 & v39) >> v70);
      v67 = (((bswap32(*v68) >> 16) | ((bswap32(v68[1]) >> 16) << 16) | ((bswap32(v68[2]) >> 16) << 32) | 0xFFFF000000000000) & v69) >> v70;
LABEL_82:
      v39 = v64 + v67;
      break;
    case 2:
      v65 = (v36 + 6 * SBYTE2(v40));
      if (v14 < v65)
      {
        v65 = v14;
      }

      if (v65 < v37)
      {
        v65 = v37;
      }

      v60 = (bswap32(*v65) >> 16) | ((bswap32(v65[1]) >> 16) << 16) | ((bswap32(v65[2]) >> 16) << 32) | 0xFFFF000000000000;
      v66 = (v40 >> 28) & 3;
      v62 = interpolate_16161616_21862[v66];
      v63 = v66 + 1;
      v64 = v39 - ((v62 & v39) >> v63);
LABEL_76:
      v67 = (v60 & v62) >> v63;
      goto LABEL_82;
    case 3:
      v51 = (v36 + 6 * SBYTE2(v40));
      if (v14 < v51)
      {
        v51 = v14;
      }

      if (v51 < v37)
      {
        v51 = v37;
      }

      v52 = (bswap32(*v51) >> 16) | ((bswap32(v51[1]) >> 16) << 16) | ((bswap32(v51[2]) >> 16) << 32) | 0xFFFF000000000000;
      v53 = v36 + SBYTE1(v40) * v5;
      if (v14 >= v53)
      {
        v54 = (v36 + SBYTE1(v40) * v5);
      }

      else
      {
        v54 = v14;
      }

      if (v54 < v37)
      {
        v54 = v37;
      }

      v55 = (bswap32(*v54) >> 16) | ((bswap32(v54[1]) >> 16) << 16) | ((bswap32(v54[2]) >> 16) << 32) | 0xFFFF000000000000;
      v56 = (v53 + 6 * SBYTE2(v40));
      if (v14 < v56)
      {
        v56 = v14;
      }

      if (v56 < v37)
      {
        v56 = v37;
      }

      v57 = interpolate_16161616_21862[v50];
      v58 = v50 + 1;
      v59 = v39 - ((v57 & v39) >> v58) + ((v55 & v57) >> v58);
      v60 = v52 - ((v57 & v52) >> v58) + ((((bswap32(*v56) >> 16) | ((bswap32(v56[1]) >> 16) << 16) | ((bswap32(v56[2]) >> 16) << 32) | 0xFFFF000000000000) & v57) >> v58);
      v61 = (v40 >> 28) & 3;
      v62 = interpolate_16161616_21862[v61];
      v63 = v61 + 1;
      v64 = v59 - ((v59 & v62) >> v63);
      goto LABEL_76;
  }

LABEL_36:
  v41 = 0;
  v42 = v24 >> 22;
  v43 = (v12 + 24);
  a3 += v11;
  v44 = v9 - a3;
  a2 += v10;
  v45 = v72 - a2;
  while (1)
  {
    v46 = v39;
    if (v39 <= WORD1(v39))
    {
      v46 = WORD1(v39);
    }

    if (WORD2(v39) > v46)
    {
      v46 = WORD2(v39);
    }

    *(v43 - 1) = ((v46 - WORD2(v39)) << 32) | ((HIWORD(v39) - v46) << 48) | ((v46 - WORD1(v39)) << 16) | (v46 - v39);
    *v43 = HIWORD(v39);
    *(v13 + 1 + v41) = v42;
    if (a4 - 1 == v41)
    {
      return result;
    }

    if (((v44 | v45 | (a3 - v8) | (a2 - v7)) & 0x8000000000000000) != 0)
    {
      v13 += v41 + 1;
      v12 = (v43 - 4);
      a4 += ~v41;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v47 = v4 + SHIDWORD(a3) * v5;
    v36 = v47 + 6 * SHIDWORD(a2);
    v37 = *(result + 32);
    if (v14 >= v36)
    {
      v48 = (v47 + 6 * SHIDWORD(a2));
    }

    else
    {
      v48 = v14;
    }

    if (v48 < v37)
    {
      v48 = *(result + 32);
    }

    v39 = (bswap32(*v48) >> 16) | ((bswap32(v48[1]) >> 16) << 16) | ((bswap32(v48[2]) >> 16) << 32) | 0xFFFF000000000000;
    if (v6)
    {
      v40 = *(v6 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v40 & 0xF) != 0)
      {
        v13 += v41 + 1;
        v12 = (v43 - 4);
        a4 += ~v41;
        v24 = -1;
        goto LABEL_54;
      }
    }

    ++v41;
    v43 += 8;
    a3 += v11;
    v44 -= v11;
    a2 += v10;
    v45 -= v10;
    LOBYTE(v42) = -1;
  }
}

uint64_t cmyk64_sample_w16(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v91 = *(result + 80);
  v93 = *(result + 88);
  v10 = *(result + 112);
  v9 = *(result + 120);
  v11 = *(result + 152) - 16;
  v12 = *(result + 144) - 1;
  if (v5)
  {
    v13 = 0;
  }

  else
  {
    v13 = -65536;
  }

  v14 = *(result + 260) - 1;
  v15 = *(result + 256);
  v16 = v5 + (v14 * v7) + 2 * (v15 - 1);
  v90 = *(result + 188);
  v17 = v4 + (v14 * v6) + 2 * v15 - 2;
  v92 = *(result + 64);
  v94 = *(result + 72);
  while (1)
  {
LABEL_5:
    if (a3 >= v94)
    {
      if (a3 <= v93)
      {
        v26 = (a3 >> 22) & 0x3C0;
        v27 = 0x3FFFFFFF;
        v28 = a3;
        v29 = v92;
      }

      else
      {
        v22 = *(result + 216);
        v23 = *(result + 224) + v93;
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

        v29 = v92;
        v27 = v90 | v25;
        v28 = v23 - 0x1000000;
        v26 = 448;
      }
    }

    else
    {
      v18 = *(result + 216);
      v19 = v94 - *(result + 224);
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

      v29 = v92;
      v27 = v90 | v21;
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
        v27 = ((v27 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v90;
      }

      v33 = v31 + 0x1000000;
      v34 = 32;
      goto LABEL_29;
    }

LABEL_43:
    --a4;
    a2 += v10;
    a3 += v9;
    v11 += 16;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v91)
  {
    v34 = (a2 >> 26) & 0x3C;
    v33 = a2;
    goto LABEL_29;
  }

  v35 = *(result + 192);
  v36 = *(result + 200) + v91;
  v37 = v36 - a2 + (v35 >> 1);
  if (v37 < 1)
  {
    goto LABEL_43;
  }

  if (v37 < v35)
  {
    v27 = ((v27 >> 15) * (((*(result + 208) * v37) >> 32) >> 15)) | v90;
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
  v40 = (v33 >> 31) & 0xFFFFFFFFFFFFFFFELL;
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

  if (v43 < v42)
  {
    v43 = *(result + 32);
  }

  v44 = *v43;
  if (!v5)
  {
    v45 = 0;
    if (!v8)
    {
      goto LABEL_47;
    }

LABEL_46:
    v48 = *(v8 + (v34 | v26));
LABEL_69:
    v59 = v48 & 0xF;
    v60 = HIBYTE(v48) & 3;
    switch(v59)
    {
      case 1:
        v84 = (v41 + SBYTE1(v48) * v6);
        if (v17 < v84)
        {
          v84 = v17;
        }

        if (v84 < v42)
        {
          v84 = v42;
        }

        v85 = *v84;
        if (v5)
        {
          v86 = (v45 + SBYTE1(v48) * v7);
          if (v16 < v86)
          {
            v86 = v16;
          }

          if (v86 < *(result + 40))
          {
            v86 = *(result + 40);
          }

          v85 |= *v86 << 16;
        }

        v87 = interpolate_1616[v60];
        v88 = v60 + 1;
        v79 = v44 - ((v87 & v44) >> v88);
        v80 = (v87 & v85) >> v88;
        break;
      case 2:
        v81 = (v41 + 2 * SBYTE2(v48));
        if (v17 < v81)
        {
          v81 = v17;
        }

        if (v81 < v42)
        {
          v81 = v42;
        }

        v82 = *v81;
        if (v5)
        {
          v83 = (v45 + 2 * SBYTE2(v48));
          if (v16 < v83)
          {
            v83 = v16;
          }

          if (v83 < *(result + 40))
          {
            v83 = *(result + 40);
          }

          v82 |= *v83 << 16;
        }

        v44 = v44 - ((interpolate_1616[(v48 >> 28) & 3] & v44) >> (((v48 >> 28) & 3) + 1)) + ((interpolate_1616[(v48 >> 28) & 3] & v82) >> (((v48 >> 28) & 3) + 1));
        goto LABEL_47;
      case 3:
        v89 = HIBYTE(v48) & 3;
        v61 = (v41 + 2 * SBYTE2(v48));
        if (v17 < v61)
        {
          v61 = v17;
        }

        if (v61 < v42)
        {
          v61 = v42;
        }

        v62 = *v61;
        v63 = (v41 + SBYTE1(v48) * v6);
        if (v17 >= v63)
        {
          v64 = v63;
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
        v66 = &v63[SBYTE2(v48)];
        if (v17 < v66)
        {
          v66 = v17;
        }

        if (v66 < v42)
        {
          v66 = v42;
        }

        v67 = *v66;
        if (v5)
        {
          v68 = 2 * SBYTE2(v48);
          v69 = (v45 + v68);
          v70 = *(result + 40);
          if (v16 < v45 + v68)
          {
            v69 = v16;
          }

          if (v69 < v70)
          {
            v69 = *(result + 40);
          }

          v62 |= *v69 << 16;
          v71 = v45 + SBYTE1(v48) * v7;
          if (v16 >= v71)
          {
            v72 = (v45 + SBYTE1(v48) * v7);
          }

          else
          {
            v72 = v16;
          }

          if (v72 < v70)
          {
            v72 = *(result + 40);
          }

          v65 |= *v72 << 16;
          v73 = (v71 + v68);
          if (v16 < v73)
          {
            v73 = v16;
          }

          if (v73 < v70)
          {
            v73 = *(result + 40);
          }

          v67 |= *v73 << 16;
        }

        v74 = interpolate_1616[v89];
        v75 = v44 - ((v74 & v44) >> (v89 + 1)) + ((v74 & v65) >> (v89 + 1));
        v76 = v62 - ((v74 & v62) >> (v89 + 1)) + ((v74 & v67) >> (v89 + 1));
        v77 = (v48 >> 28) & 3;
        v78 = interpolate_1616[v77];
        LOBYTE(v77) = v77 + 1;
        v79 = v75 - ((v75 & v78) >> v77);
        v80 = (v76 & v78) >> v77;
        break;
      default:
        goto LABEL_47;
    }

    v44 = v79 + v80;
    goto LABEL_47;
  }

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

  v44 |= *v46 << 16;
  if (v8)
  {
    goto LABEL_46;
  }

LABEL_47:
  v49 = (v44 | v13) >> 16;
  *(v11 + 16) = (v49 - v44) << 48;
  *(v11 + 24) = v49;
  *(v12 + 1) = v27 >> 22;
  if (a4 != 1)
  {
    v50 = 0;
    v51 = (v11 + 40);
    a2 += v10;
    v52 = v91 - a2;
    a3 += v9;
    v53 = v93 - a3;
    while (((v53 | v52 | (a3 - v94) | (a2 - v92)) & 0x8000000000000000) == 0)
    {
      v54 = (a2 >> 31) & 0xFFFFFFFFFFFFFFFELL;
      v41 = v4 + SHIDWORD(a3) * v6 + v54;
      v42 = *(result + 32);
      if (v17 >= v41)
      {
        v55 = (v4 + SHIDWORD(a3) * v6 + v54);
      }

      else
      {
        v55 = v17;
      }

      if (v55 < v42)
      {
        v55 = *(result + 32);
      }

      v44 = *v55;
      if (v5)
      {
        v45 = v5 + SHIDWORD(a3) * v7 + v54;
        v56 = *(result + 40);
        if (v16 >= v45)
        {
          v57 = (v5 + SHIDWORD(a3) * v7 + v54);
        }

        else
        {
          v57 = v16;
        }

        if (v57 >= v56)
        {
          v56 = v57;
        }

        v44 |= *v56 << 16;
      }

      if (v8)
      {
        v48 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v48 & 0xF) != 0)
        {
          v12 += v50 + 1;
          v11 = (v51 - 12);
          a4 += ~v50;
          v27 = -1;
          goto LABEL_69;
        }
      }

      v58 = (v44 | v13) >> 16;
      *(v51 - 1) = (v58 - v44) << 48;
      *v51 = v58;
      v51 += 8;
      *(v12 + v50++ + 2) = -1;
      a2 += v10;
      v52 -= v10;
      a3 += v9;
      v53 -= v9;
      if (a4 - 1 == v50)
      {
        return result;
      }
    }

    v12 += v50 + 1;
    v11 = (v51 - 12);
    a4 += ~v50;
    if (a4)
    {
      goto LABEL_5;
    }
  }

  return result;
}

uint64_t cmyk64_sample_W16(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v91 = *(result + 80);
  v93 = *(result + 88);
  v10 = *(result + 112);
  v9 = *(result + 120);
  v11 = *(result + 152) - 16;
  v12 = *(result + 144) - 1;
  if (v5)
  {
    v13 = 0;
  }

  else
  {
    v13 = -65536;
  }

  v14 = *(result + 260) - 1;
  v15 = *(result + 256);
  v16 = v5 + (v14 * v7) + 2 * (v15 - 1);
  v90 = *(result + 188);
  v17 = v4 + (v14 * v6) + 2 * v15 - 2;
  v92 = *(result + 64);
  v94 = *(result + 72);
  while (1)
  {
LABEL_5:
    if (a3 >= v94)
    {
      if (a3 <= v93)
      {
        v26 = (a3 >> 22) & 0x3C0;
        v27 = 0x3FFFFFFF;
        v28 = a3;
        v29 = v92;
      }

      else
      {
        v22 = *(result + 216);
        v23 = *(result + 224) + v93;
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

        v29 = v92;
        v27 = v90 | v25;
        v28 = v23 - 0x1000000;
        v26 = 448;
      }
    }

    else
    {
      v18 = *(result + 216);
      v19 = v94 - *(result + 224);
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

      v29 = v92;
      v27 = v90 | v21;
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
        v27 = ((v27 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v90;
      }

      v33 = v31 + 0x1000000;
      v34 = 32;
      goto LABEL_29;
    }

LABEL_43:
    --a4;
    a2 += v10;
    a3 += v9;
    v11 += 16;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v91)
  {
    v34 = (a2 >> 26) & 0x3C;
    v33 = a2;
    goto LABEL_29;
  }

  v35 = *(result + 192);
  v36 = *(result + 200) + v91;
  v37 = v36 - a2 + (v35 >> 1);
  if (v37 < 1)
  {
    goto LABEL_43;
  }

  if (v37 < v35)
  {
    v27 = ((v27 >> 15) * (((*(result + 208) * v37) >> 32) >> 15)) | v90;
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
  v40 = (v33 >> 31) & 0xFFFFFFFFFFFFFFFELL;
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

  if (v43 < v42)
  {
    v43 = *(result + 32);
  }

  v44 = bswap32(*v43) >> 16;
  if (!v5)
  {
    v45 = 0;
    if (!v8)
    {
      goto LABEL_47;
    }

LABEL_46:
    v48 = *(v8 + (v34 | v26));
LABEL_69:
    v59 = v48 & 0xF;
    v60 = HIBYTE(v48) & 3;
    switch(v59)
    {
      case 1:
        v84 = (v41 + SBYTE1(v48) * v6);
        if (v17 < v84)
        {
          v84 = v17;
        }

        if (v84 < v42)
        {
          v84 = v42;
        }

        v85 = bswap32(*v84) >> 16;
        if (v5)
        {
          v86 = (v45 + SBYTE1(v48) * v7);
          if (v16 < v86)
          {
            v86 = v16;
          }

          if (v86 < *(result + 40))
          {
            v86 = *(result + 40);
          }

          v85 |= bswap32(*v86) & 0xFFFF0000;
        }

        v87 = interpolate_1616[v60];
        v88 = v60 + 1;
        v79 = v44 - ((v87 & v44) >> v88);
        v80 = (v87 & v85) >> v88;
        break;
      case 2:
        v81 = (v41 + 2 * SBYTE2(v48));
        if (v17 < v81)
        {
          v81 = v17;
        }

        if (v81 < v42)
        {
          v81 = v42;
        }

        v82 = bswap32(*v81) >> 16;
        if (v5)
        {
          v83 = (v45 + 2 * SBYTE2(v48));
          if (v16 < v83)
          {
            v83 = v16;
          }

          if (v83 < *(result + 40))
          {
            v83 = *(result + 40);
          }

          v82 |= bswap32(*v83) & 0xFFFF0000;
        }

        v44 = v44 - ((interpolate_1616[(v48 >> 28) & 3] & v44) >> (((v48 >> 28) & 3) + 1)) + ((interpolate_1616[(v48 >> 28) & 3] & v82) >> (((v48 >> 28) & 3) + 1));
        goto LABEL_47;
      case 3:
        v89 = HIBYTE(v48) & 3;
        v61 = (v41 + 2 * SBYTE2(v48));
        if (v17 < v61)
        {
          v61 = v17;
        }

        if (v61 < v42)
        {
          v61 = v42;
        }

        v62 = bswap32(*v61) >> 16;
        v63 = (v41 + SBYTE1(v48) * v6);
        if (v17 >= v63)
        {
          v64 = v63;
        }

        else
        {
          v64 = v17;
        }

        if (v64 < v42)
        {
          v64 = v42;
        }

        v65 = bswap32(*v64) >> 16;
        v66 = &v63[SBYTE2(v48)];
        if (v17 < v66)
        {
          v66 = v17;
        }

        if (v66 < v42)
        {
          v66 = v42;
        }

        v67 = bswap32(*v66) >> 16;
        if (v5)
        {
          v68 = 2 * SBYTE2(v48);
          v69 = (v45 + v68);
          v70 = *(result + 40);
          if (v16 < v45 + v68)
          {
            v69 = v16;
          }

          if (v69 < v70)
          {
            v69 = *(result + 40);
          }

          v62 |= bswap32(*v69) & 0xFFFF0000;
          v71 = v45 + SBYTE1(v48) * v7;
          if (v16 >= v71)
          {
            v72 = (v45 + SBYTE1(v48) * v7);
          }

          else
          {
            v72 = v16;
          }

          if (v72 < v70)
          {
            v72 = *(result + 40);
          }

          v65 |= bswap32(*v72) & 0xFFFF0000;
          v73 = (v71 + v68);
          if (v16 < v73)
          {
            v73 = v16;
          }

          if (v73 < v70)
          {
            v73 = *(result + 40);
          }

          v67 |= bswap32(*v73) & 0xFFFF0000;
        }

        v74 = interpolate_1616[v89];
        v75 = v44 - ((v74 & v44) >> (v89 + 1)) + ((v74 & v65) >> (v89 + 1));
        v76 = v62 - ((v74 & v62) >> (v89 + 1)) + ((v74 & v67) >> (v89 + 1));
        v77 = (v48 >> 28) & 3;
        v78 = interpolate_1616[v77];
        LOBYTE(v77) = v77 + 1;
        v79 = v75 - ((v75 & v78) >> v77);
        v80 = (v76 & v78) >> v77;
        break;
      default:
        goto LABEL_47;
    }

    v44 = v79 + v80;
    goto LABEL_47;
  }

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

  v44 |= bswap32(*v46) & 0xFFFF0000;
  if (v8)
  {
    goto LABEL_46;
  }

LABEL_47:
  v49 = (v44 | v13) >> 16;
  *(v11 + 16) = (v49 - v44) << 48;
  *(v11 + 24) = v49;
  *(v12 + 1) = v27 >> 22;
  if (a4 != 1)
  {
    v50 = 0;
    v51 = (v11 + 40);
    a2 += v10;
    v52 = v91 - a2;
    a3 += v9;
    v53 = v93 - a3;
    while (((v53 | v52 | (a3 - v94) | (a2 - v92)) & 0x8000000000000000) == 0)
    {
      v54 = (a2 >> 31) & 0xFFFFFFFFFFFFFFFELL;
      v41 = v4 + SHIDWORD(a3) * v6 + v54;
      v42 = *(result + 32);
      if (v17 >= v41)
      {
        v55 = (v4 + SHIDWORD(a3) * v6 + v54);
      }

      else
      {
        v55 = v17;
      }

      if (v55 < v42)
      {
        v55 = *(result + 32);
      }

      v44 = bswap32(*v55) >> 16;
      if (v5)
      {
        v45 = v5 + SHIDWORD(a3) * v7 + v54;
        v56 = *(result + 40);
        if (v16 >= v45)
        {
          v57 = (v5 + SHIDWORD(a3) * v7 + v54);
        }

        else
        {
          v57 = v16;
        }

        if (v57 >= v56)
        {
          v56 = v57;
        }

        v44 |= bswap32(*v56) & 0xFFFF0000;
      }

      if (v8)
      {
        v48 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v48 & 0xF) != 0)
        {
          v12 += v50 + 1;
          v11 = (v51 - 12);
          a4 += ~v50;
          v27 = -1;
          goto LABEL_69;
        }
      }

      v58 = (v44 | v13) >> 16;
      *(v51 - 1) = (v58 - v44) << 48;
      *v51 = v58;
      v51 += 8;
      *(v12 + v50++ + 2) = -1;
      a2 += v10;
      v52 -= v10;
      a3 += v9;
      v53 -= v9;
      if (a4 - 1 == v50)
      {
        return result;
      }
    }

    v12 += v50 + 1;
    v11 = (v51 - 12);
    a4 += ~v50;
    if (a4)
    {
      goto LABEL_5;
    }
  }

  return result;
}

uint64_t cmyk64_sample_cmyk32(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 176);
  v91 = *(result + 80);
  v89 = *(result + 88);
  v9 = *(result + 112);
  v8 = *(result + 120);
  v10 = *(result + 152) - 16;
  v92 = *(result + 144) - 1;
  v93 = *(result + 28);
  if (v5)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0xFF00000000;
  }

  v12 = *(result + 260) - 1;
  v13 = *(result + 256);
  v14 = (v5 + (v13 - 1) + (v12 * *(result + 28)));
  v15 = v4 + (v12 * v6) + 4 * v13 - 8;
  v87 = *(result + 188);
  v90 = *(result + 72);
  v88 = *(result + 64);
  while (1)
  {
    if (a3 >= v90)
    {
      if (a3 <= v89)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        v26 = a3;
        v27 = v88;
        v28 = v91;
      }

      else
      {
        v20 = *(result + 216);
        v21 = *(result + 224) + v89;
        v22 = v21 - a3 + (v20 >> 1);
        if (v22 < 1)
        {
          goto LABEL_42;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (*(result + 232) * v22) >> 32;
        }

        v27 = v88;
        v28 = v91;
        v25 = v87 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v16 = *(result + 216);
      v17 = v90 - *(result + 224);
      v18 = a3 - v17 + (v16 >> 1);
      if (v18 < 1)
      {
        goto LABEL_42;
      }

      if (v18 >= v16)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (*(result + 232) * v18) >> 32;
      }

      v27 = v88;
      v28 = v91;
      v25 = v87 | v19;
      v26 = v17 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v27)
    {
      if (a2 <= v28)
      {
        v33 = (a2 >> 26) & 0x3C;
        v32 = a2;
      }

      else
      {
        v34 = *(result + 192);
        v35 = *(result + 200) + v28;
        v36 = v35 - a2 + (v34 >> 1);
        if (v36 < 1)
        {
          goto LABEL_42;
        }

        if (v36 < v34)
        {
          v25 = ((v25 >> 15) * (((*(result + 208) * v36) >> 32) >> 15)) | v87;
        }

        v32 = v35 - 0x1000000;
        v33 = 28;
      }
    }

    else
    {
      v29 = *(result + 192);
      v30 = v27 - *(result + 200);
      v31 = a2 - v30 + (v29 >> 1);
      if (v31 < 1)
      {
        goto LABEL_42;
      }

      if (v31 < v29)
      {
        v25 = ((v25 >> 15) * (((*(result + 208) * v31) >> 32) >> 15)) | v87;
      }

      v32 = v30 + 0x1000000;
      v33 = 32;
    }

    if (v25 >= 0x400000)
    {
      break;
    }

LABEL_42:
    v46 = a4 - 1;
    a2 += v9;
    a3 += v8;
    v10 += 16;
    *++v92 = 0;
LABEL_43:
    a4 = v46;
    if (!v46)
    {
      return result;
    }
  }

  v37 = v26 >> 32;
  v38 = v32 >> 32;
  v39 = v4 + SHIDWORD(v26) * v6 + 4 * v38;
  v40 = *(result + 32);
  if (v15 >= v39)
  {
    v41 = v39;
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
  if (v5)
  {
    v43 = v5 + v37 * v93 + v38;
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

    v42 |= *v44 << 32;
  }

  else
  {
    v43 = 0;
  }

  v47 = v89;
  if (!v7)
  {
    goto LABEL_48;
  }

  v48 = *(v7 + (v33 | v24));
LABEL_68:
  v57 = v48 & 0xF;
  v58 = HIBYTE(v48) & 3;
  switch(v57)
  {
    case 1:
      v84 = (v39 + SBYTE1(v48) * v6);
      if (v15 < v84)
      {
        v84 = v15;
      }

      if (v84 < v40)
      {
        v84 = v40;
      }

      v82 = *v84;
      if (v5)
      {
        v85 = (v43 + SBYTE1(v48) * v93);
        v47 = v89;
        if (v14 < v85)
        {
          v85 = v14;
        }

        if (v85 < *(result + 40))
        {
          v85 = *(result + 40);
        }

        v82 |= *v85 << 32;
      }

      goto LABEL_121;
    case 2:
      v81 = (v39 + ((HIWORD(v48) << 56) >> 54));
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
        v83 = (v43 + SBYTE2(v48));
        if (v14 < v83)
        {
          v83 = v14;
        }

        if (v83 < *(result + 40))
        {
          v83 = *(result + 40);
        }

        v82 |= *v83 << 32;
      }

      v58 = (v48 >> 28) & 3;
LABEL_121:
      v86 = interpolate_cif10a[v58];
      v78 = v58 + 1;
      v79 = v42 - ((v86 & v42) >> v78);
      v80 = v86 & v82;
      goto LABEL_122;
    case 3:
      v59 = HIWORD(v48) << 56;
      v60 = (v39 + (v59 >> 54));
      if (v15 < v60)
      {
        v60 = v15;
      }

      if (v60 < v40)
      {
        v60 = v40;
      }

      v61 = *v60;
      v62 = v39 + SBYTE1(v48) * v6;
      if (v15 >= v62)
      {
        v63 = (v39 + SBYTE1(v48) * v6);
      }

      else
      {
        v63 = v15;
      }

      if (v63 < v40)
      {
        v63 = v40;
      }

      v64 = *v63;
      v65 = (v62 + (v59 >> 54));
      if (v15 < v65)
      {
        v65 = v15;
      }

      if (v65 < v40)
      {
        v65 = v40;
      }

      v66 = *v65;
      if (v5)
      {
        v67 = (v43 + SBYTE2(v48));
        v68 = *(result + 40);
        if (v14 < v67)
        {
          v67 = v14;
        }

        if (v67 < v68)
        {
          v67 = *(result + 40);
        }

        v61 |= *v67 << 32;
        v69 = v43 + SBYTE1(v48) * v93;
        v47 = v89;
        if (v14 >= v69)
        {
          v70 = (v43 + SBYTE1(v48) * v93);
        }

        else
        {
          v70 = v14;
        }

        if (v70 < v68)
        {
          v70 = *(result + 40);
        }

        v64 |= *v70 << 32;
        v71 = (v69 + SBYTE2(v48));
        if (v14 < v71)
        {
          v71 = v14;
        }

        if (v71 >= v68)
        {
          v68 = v71;
        }

        v66 |= *v68 << 32;
      }

      v72 = interpolate_cif10a[v58];
      v73 = v58 + 1;
      v74 = v42 - ((v72 & v42) >> v73) + ((v72 & v64) >> v73);
      v75 = v61 - ((v72 & v61) >> v73) + ((v72 & v66) >> v73);
      v76 = (v48 >> 28) & 3;
      v77 = interpolate_cif10a[v76];
      v78 = v76 + 1;
      v79 = v74 - ((v74 & v77) >> v78);
      v80 = v75 & v77;
LABEL_122:
      v42 = v79 + (v80 >> v78);
      break;
  }

LABEL_48:
  v49 = 0;
  v50 = v25 >> 22;
  v51 = (v10 + 24);
  a3 += v8;
  v52 = v47 - a3;
  a2 += v9;
  v53 = v91 - a2;
  while (1)
  {
    *(v51 - 1) = (0x10100000000 * BYTE1(v42)) | (0x101000000000000 * v42) | v42 & 0xFF0000 | (BYTE2(v42) << 24) | BYTE3(v42) | (BYTE3(v42) << 8);
    *v51 = ((v42 | v11) >> 32) | (((v42 | v11) >> 32) << 8);
    *(v92 + 1 + v49) = v50;
    if (a4 - 1 == v49)
    {
      return result;
    }

    if ((v52 | v53 | (a3 - v90) | (a2 - v88)) < 0)
    {
      v92 += v49 + 1;
      v10 = (v51 - 4);
      v46 = ~v49 + a4;
      goto LABEL_43;
    }

    v39 = v4 + SHIDWORD(a3) * v6 + 4 * (a2 >> 32);
    v40 = *(result + 32);
    if (v15 >= v39)
    {
      v54 = (v4 + SHIDWORD(a3) * v6 + 4 * (a2 >> 32));
    }

    else
    {
      v54 = v15;
    }

    if (v54 < v40)
    {
      v54 = *(result + 32);
    }

    v42 = *v54;
    if (v5)
    {
      v43 = v5 + SHIDWORD(a3) * v93 + (a2 >> 32);
      v55 = *(result + 40);
      if (v14 >= v43)
      {
        v56 = v5 + SHIDWORD(a3) * v93 + (a2 >> 32);
      }

      else
      {
        v56 = v14;
      }

      if (v56 >= v55)
      {
        v55 = v56;
      }

      v42 |= *v55 << 32;
    }

    if (v7)
    {
      v48 = *(v7 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v48 & 0xF) != 0)
      {
        v92 += v49 + 1;
        v10 = (v51 - 4);
        a4 += ~v49;
        v25 = -1;
        v47 = v89;
        goto LABEL_68;
      }
    }

    ++v49;
    v51 += 8;
    a3 += v8;
    v52 -= v8;
    a2 += v9;
    v53 -= v9;
    LOBYTE(v50) = -1;
  }
}

uint64_t cmyk64_sample_CMYK32(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 176);
  v84 = *(result + 80);
  v82 = *(result + 88);
  v9 = *(result + 112);
  v8 = *(result + 120);
  v10 = *(result + 152) - 16;
  v85 = *(result + 144) - 1;
  v86 = *(result + 28);
  if (v5)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0xFF00000000;
  }

  v12 = *(result + 260) - 1;
  v13 = *(result + 256);
  v14 = (v5 + (v13 - 1) + (v12 * *(result + 28)));
  v15 = v4 + (v12 * v6) + 4 * v13 - 8;
  v80 = *(result + 188);
  v83 = *(result + 72);
  v81 = *(result + 64);
  while (1)
  {
    if (a3 >= v83)
    {
      if (a3 <= v82)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        v26 = a3;
        v27 = v81;
        v28 = v84;
      }

      else
      {
        v20 = *(result + 216);
        v21 = *(result + 224) + v82;
        v22 = v21 - a3 + (v20 >> 1);
        if (v22 < 1)
        {
          goto LABEL_42;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (*(result + 232) * v22) >> 32;
        }

        v27 = v81;
        v28 = v84;
        v25 = v80 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v16 = *(result + 216);
      v17 = v83 - *(result + 224);
      v18 = a3 - v17 + (v16 >> 1);
      if (v18 < 1)
      {
        goto LABEL_42;
      }

      if (v18 >= v16)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (*(result + 232) * v18) >> 32;
      }

      v27 = v81;
      v28 = v84;
      v25 = v80 | v19;
      v26 = v17 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v27)
    {
      if (a2 <= v28)
      {
        v33 = (a2 >> 26) & 0x3C;
        v32 = a2;
      }

      else
      {
        v34 = *(result + 192);
        v35 = *(result + 200) + v28;
        v36 = v35 - a2 + (v34 >> 1);
        if (v36 < 1)
        {
          goto LABEL_42;
        }

        if (v36 < v34)
        {
          v25 = ((v25 >> 15) * (((*(result + 208) * v36) >> 32) >> 15)) | v80;
        }

        v32 = v35 - 0x1000000;
        v33 = 28;
      }
    }

    else
    {
      v29 = *(result + 192);
      v30 = v27 - *(result + 200);
      v31 = a2 - v30 + (v29 >> 1);
      if (v31 < 1)
      {
        goto LABEL_42;
      }

      if (v31 < v29)
      {
        v25 = ((v25 >> 15) * (((*(result + 208) * v31) >> 32) >> 15)) | v80;
      }

      v32 = v30 + 0x1000000;
      v33 = 32;
    }

    if (v25 >= 0x400000)
    {
      break;
    }

LABEL_42:
    v46 = a4 - 1;
    a2 += v9;
    a3 += v8;
    v10 += 16;
    *++v85 = 0;
LABEL_43:
    a4 = v46;
    if (!v46)
    {
      return result;
    }
  }

  v37 = v26 >> 32;
  v38 = v32 >> 32;
  v39 = v4 + SHIDWORD(v26) * v6 + 4 * v38;
  v40 = *(result + 32);
  if (v15 >= v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = v15;
  }

  if (v41 < v40)
  {
    v41 = *(result + 32);
  }

  v42 = bswap32(*v41);
  if (v5)
  {
    v43 = v5 + v37 * v86 + v38;
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

    v42 |= *v44 << 32;
  }

  else
  {
    v43 = 0;
  }

  v47 = v82;
  if (v7)
  {
    v48 = *(v7 + (v33 | v24));
LABEL_68:
    v57 = v48 & 0xF;
    v58 = HIBYTE(v48) & 3;
    switch(v57)
    {
      case 1:
        v77 = (v39 + SBYTE1(v48) * v6);
        if (v15 < v77)
        {
          v77 = v15;
        }

        if (v77 < v40)
        {
          v77 = v40;
        }

        v78 = bswap32(*v77);
        if (v5)
        {
          v79 = (v43 + SBYTE1(v48) * v86);
          v47 = v82;
          if (v14 < v79)
          {
            v79 = v14;
          }

          if (v79 < *(result + 40))
          {
            v79 = *(result + 40);
          }

          v78 |= *v79 << 32;
        }

        v42 = v42 - ((interpolate_cif10a[v58] & v42) >> (v58 + 1)) + ((interpolate_cif10a[v58] & v78) >> (v58 + 1));
        break;
      case 2:
        v74 = (v39 + ((HIWORD(v48) << 56) >> 54));
        if (v15 < v74)
        {
          v74 = v15;
        }

        if (v74 < v40)
        {
          v74 = v40;
        }

        v75 = bswap32(*v74);
        if (v5)
        {
          v76 = (v43 + SBYTE2(v48));
          if (v14 < v76)
          {
            v76 = v14;
          }

          if (v76 < *(result + 40))
          {
            v76 = *(result + 40);
          }

          v75 |= *v76 << 32;
        }

        v42 = v42 - ((interpolate_cif10a[(v48 >> 28) & 3] & v42) >> (((v48 >> 28) & 3) + 1)) + ((interpolate_cif10a[(v48 >> 28) & 3] & v75) >> (((v48 >> 28) & 3) + 1));
        break;
      case 3:
        v59 = HIWORD(v48) << 56;
        v60 = (v39 + (v59 >> 54));
        if (v15 < v60)
        {
          v60 = v15;
        }

        if (v60 < v40)
        {
          v60 = v40;
        }

        v61 = bswap32(*v60);
        v62 = v39 + SBYTE1(v48) * v6;
        if (v15 >= v62)
        {
          v63 = (v39 + SBYTE1(v48) * v6);
        }

        else
        {
          v63 = v15;
        }

        if (v63 < v40)
        {
          v63 = v40;
        }

        v64 = bswap32(*v63);
        v65 = (v62 + (v59 >> 54));
        if (v15 < v65)
        {
          v65 = v15;
        }

        if (v65 < v40)
        {
          v65 = v40;
        }

        v66 = bswap32(*v65);
        if (v5)
        {
          v67 = (v43 + SBYTE2(v48));
          v68 = *(result + 40);
          if (v14 < v67)
          {
            v67 = v14;
          }

          if (v67 < v68)
          {
            v67 = *(result + 40);
          }

          v61 |= *v67 << 32;
          v69 = v43 + SBYTE1(v48) * v86;
          v47 = v82;
          if (v14 >= v69)
          {
            v70 = (v43 + SBYTE1(v48) * v86);
          }

          else
          {
            v70 = v14;
          }

          if (v70 < v68)
          {
            v70 = *(result + 40);
          }

          v64 |= *v70 << 32;
          v71 = (v69 + SBYTE2(v48));
          if (v14 < v71)
          {
            v71 = v14;
          }

          if (v71 >= v68)
          {
            v68 = v71;
          }

          v66 |= *v68 << 32;
        }

        v72 = interpolate_cif10a[v58];
        v73 = v42 - ((v72 & v42) >> (v58 + 1)) + ((v72 & v64) >> (v58 + 1));
        v42 = v73 - ((v73 & interpolate_cif10a[(v48 >> 28) & 3]) >> (((v48 >> 28) & 3) + 1)) + (((v61 - ((v72 & v61) >> (v58 + 1)) + ((v72 & v66) >> (v58 + 1))) & interpolate_cif10a[(v48 >> 28) & 3]) >> (((v48 >> 28) & 3) + 1));
        break;
    }
  }

  v49 = 0;
  v50 = v25 >> 22;
  v51 = (v10 + 24);
  a3 += v8;
  v52 = v47 - a3;
  a2 += v9;
  v53 = v84 - a2;
  while (1)
  {
    *(v51 - 1) = (0x10100000000 * BYTE1(v42)) | (0x101000000000000 * v42) | v42 & 0xFF0000 | (BYTE2(v42) << 24) | BYTE3(v42) | (BYTE3(v42) << 8);
    *v51 = ((v42 | v11) >> 32) | (((v42 | v11) >> 32) << 8);
    *(v85 + 1 + v49) = v50;
    if (a4 - 1 == v49)
    {
      return result;
    }

    if ((v52 | v53 | (a3 - v83) | (a2 - v81)) < 0)
    {
      v85 += v49 + 1;
      v10 = (v51 - 4);
      v46 = ~v49 + a4;
      goto LABEL_43;
    }

    v39 = v4 + SHIDWORD(a3) * v6 + 4 * (a2 >> 32);
    v40 = *(result + 32);
    if (v15 >= v39)
    {
      v54 = (v4 + SHIDWORD(a3) * v6 + 4 * (a2 >> 32));
    }

    else
    {
      v54 = v15;
    }

    if (v54 < v40)
    {
      v54 = *(result + 32);
    }

    v42 = bswap32(*v54);
    if (v5)
    {
      v43 = v5 + SHIDWORD(a3) * v86 + (a2 >> 32);
      v55 = *(result + 40);
      if (v14 >= v43)
      {
        v56 = v5 + SHIDWORD(a3) * v86 + (a2 >> 32);
      }

      else
      {
        v56 = v14;
      }

      if (v56 >= v55)
      {
        v55 = v56;
      }

      v42 |= *v55 << 32;
    }

    if (v7)
    {
      v48 = *(v7 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v48 & 0xF) != 0)
      {
        v85 += v49 + 1;
        v10 = (v51 - 4);
        a4 += ~v49;
        v25 = -1;
        v47 = v82;
        goto LABEL_68;
      }
    }

    ++v49;
    v51 += 8;
    a3 += v8;
    v52 -= v8;
    a2 += v9;
    v53 -= v9;
    LOBYTE(v50) = -1;
  }
}

uint64_t cmyk64_shade(uint64_t a1, __n128 a2)
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
      v14 = cmyk64_shade_radial_CMYK;
    }

    else if (*(v5 + 24))
    {
      v14 = cmyk64_shade_conic_CMYK;
    }

    else if (*(&v19 + 1) < 2)
    {
      v14 = cmyk64_shade_axial_CMYK;
    }

    else
    {
      v14 = cmyk64_shade_custom_CMYK;
    }

    *&v17[0] = v14;
    if (v40)
    {
      *(&v39 + 1) = v46;
      _blt_shade_samples_16(v46, 3, 4, v40, *(&v40 + 1), 1uLL);
    }

    v15 = *(&v19 + 1) * v19;
    if ((*(&v19 + 1) * v19) <= 384)
    {
      v16 = v44;
      v38[1] = v44;
LABEL_27:
      _blt_shade_samples_16(v16, 3, 4, v18, *(&v18 + 1), v15);
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
  cmyk64_image_mark(v6, v17, v11, v13);
  if (v38[1] && (v38[1] < v44 || &v45 < v38[1]))
  {
    free(v38[1]);
  }

  return 1;
}

void cmyk64_image_mark(uint64_t a1, uint64_t a2, int a3, __n128 a4)
{
  v543 = *MEMORY[0x1E69E9840];
  v541 = *(a1 + 4);
  v528 = v541;
  v529 = a1;
  v4 = (v541 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v4 <= 0x1FFFFFF)
  {
    v6 = *(v529 + 40);
    v542 = *(v529 + 48);
    v7 = *(a2 + 184);
    v537 = *(v529 + 136);
    v8 = *(a2 + 96);
    v539 = *(a2 + 104);
    v540 = v8;
    v10 = *(v529 + 24);
    v9 = *(v529 + 28);
    v12 = *(v529 + 16);
    v11 = *(v529 + 20);
    v13 = *(v529 + 12);
    v538 = *(v529 + 8);
    v535 = a2;
    v14 = *(a2 + 16);
    v15 = (v14 + 18) * v4;
    if (v15 > 65439)
    {
      v18 = malloc_type_calloc(1uLL, v15 + 96, 0xF5B4F9ABuLL);
      v17 = v18;
      v20 = v18;
      v21 = v535;
      if (!v18)
      {
        return;
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](a1, a4);
      v17 = &v519 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v17, v16);
      v20 = 0;
      v21 = v535;
    }

    v524 = v20;
    v532 = a3;
    v22 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
    v23 = v22 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21[20] = v23;
    if (v14)
    {
      v24 = 16 * v4;
    }

    else
    {
      v24 = 0;
    }

    v25 = v23 + v24;
    v26 = v6 + (v10 - 1) * v9;
    v27 = v9 >> 3;
    v21[18] = v22;
    v21[19] = v25;
    if (v542)
    {
      v28 = v529;
      v29 = *(v529 + 32) >> 1;
      v30 = (v542 + 2 * v29 * v12 + 2 * v13);
      v533 = v29 - v528;
      v31 = v528;
      v32 = 1;
    }

    else
    {
      v30 = 0;
      v533 = 0;
      v32 = 0;
      v31 = v528;
      v28 = v529;
    }

    v534 = ((v7 * 65535.0) + 0.5);
    v33 = v26 + 8 * v11;
    v34 = (v6 + 8 * v27 * v12 + 8 * v13);
    v531 = v27 - v31;
    v35 = *(v28 + 104);
    v36 = *(v28 + 108);
    v37 = *(v28 + 2);
    if (v37 == 6 || v37 == 1)
    {
      v38 = v532;
      v39 = v535;
      v40 = v541;
      if (v537)
      {
        v521 = v27;
        v41 = 0;
        v42 = 0;
        v43 = *(v28 + 124);
        v44 = v537 + v43 * v36 + v35;
        v31 = v528;
        v530 = v43 - v528;
        goto LABEL_21;
      }

      goto LABEL_569;
    }

    v521 = v27;
    v40 = v541;
    if (v537)
    {
      v522 = v33;
      v523 = v32;
      shape_enum_clip_alloc(v18, v19, v537, 1, 1, 1, v35, v36, v541, v538);
      if (v45)
      {
        v41 = v45;
        v46 = ((v14 * v4 + 15) & 0xFFFFFFF0);
        v47 = v14 == 0;
        v42 = 0;
        if (v47)
        {
          v46 = 16 * v4;
        }

        v48 = v528;
        v530 = -v528;
        v44 = (v25 + v46 + 16);
        v38 = v532;
        v39 = v535;
        goto LABEL_572;
      }

LABEL_569:
      if (v524)
      {
        free(v524);
      }

      return;
    }

    v44 = 0;
    v41 = 0;
    v530 = 0;
    v42 = 0;
    v38 = v532;
    v39 = v535;
LABEL_21:
    LODWORD(v537) = v42;
    v49 = v41;
    v50 = v534 ^ 0xFFFF;
    v526 = (v40 - 1);
    v525 = -v31;
    v522 = v33;
    v527 = v33 - 8;
    v523 = v32;
    v51 = 2 * v32;
    v52 = v49;
    v54 = v539;
    v53 = v540;
LABEL_22:
    v536 = v52;
    v55 = *v39;
    v539 = v54;
    v540 = v53;
    v55(v39);
    v56 = v39[20];
    v57 = v39[18];
    v58 = *(v39 + 2);
    if (v58 == *(v39 + 3))
    {
      if (v534 != 0xFFFF)
      {
        v59 = v40;
        v60 = v39[18];
        do
        {
          if (*v60)
          {
            v61 = *(v56 + 8);
            v62 = WORD2(*v56) * v50;
            *v56 = ((HIWORD(*v56) - ((HIWORD(*v56) * v50 + ((HIWORD(*v56) * v50) >> 16) + 1) >> 16)) << 48) | ((HIDWORD(*v56) - ((v62 + HIWORD(v62) + 1) >> 16)) << 32) | ((WORD1(*v56) - ((WORD1(*v56) * v50 + ((WORD1(*v56) * v50) >> 16) + 1) >> 16)) << 16) | (*v56 - ((*v56 * v50 + ((*v56 * v50) >> 16) + 1) >> 16));
            *(v56 + 8) = v61 - ((v61 * v50 + ((v61 * v50) >> 16) + 1) >> 16);
          }

          ++v60;
          v56 += 16;
          --v59;
        }

        while (v59);
        v56 += 16 * v525;
        v57 += v526 + v525 + 1;
      }
    }

    else
    {
      v63 = v39[19];
      v64 = HIWORD(v58) & 0x3F;
      if (v64 == 16)
      {
        if (v534 == 0xFFFF)
        {
          v104 = 0;
          v105 = 0;
          do
          {
            if (v57[v104])
            {
              *(v56 + v105) = *(v63 + v105);
            }

            v105 += 16;
            ++v104;
          }

          while (v40 != v104);
        }

        else
        {
          v79 = 0;
          v80 = (v63 + 8);
          v81 = (v56 + 8);
          do
          {
            if (v57[v79])
            {
              v82 = *v80;
              v83 = *(v80 - 1);
              *(v81 - 1) = ((HIWORD(v83) - ((HIWORD(v83) * v50 + ((HIWORD(v83) * v50) >> 16) + 1) >> 16)) << 48) | ((WORD2(v83) - ((WORD2(v83) * v50 + ((WORD2(v83) * v50) >> 16) + 1) >> 16)) << 32) | ((WORD1(v83) - ((WORD1(v83) * v50 + ((WORD1(v83) * v50) >> 16) + 1) >> 16)) << 16) | (v83 - ((v83 * v50 + ((v83 * v50) >> 16) + 1) >> 16));
              *v81 = v82 - ((v82 * v50 + ((v82 * v50) >> 16) + 1) >> 16);
            }

            v80 += 8;
            ++v79;
            v81 += 8;
          }

          while (v40 != v79);
        }
      }

      else if (v64 == 32)
      {
        if (v534 == 0xFFFF)
        {
          v91 = 0;
          v92 = 0;
          v93 = (v63 + 8);
          do
          {
            if (v57[v91])
            {
              v94 = v93[2];
              if (v94 <= 0.0)
              {
                LOWORD(v95) = 0;
                *(v56 + v92) = 0;
              }

              else
              {
                LODWORD(v95) = ((v94 * 65535.0) + 0.5);
                v96 = *(v93 - 2);
                if (v94 <= 1.0)
                {
                  v95 = v95;
                }

                else
                {
                  v95 = 0xFFFFLL;
                }

                if (v94 > 1.0)
                {
                  v94 = 1.0;
                }

                LOWORD(v97) = v95;
                if (v96 <= v94)
                {
                  if (v96 >= 0.0)
                  {
                    v97 = ((v96 * 65535.0) + 0.5);
                  }

                  else
                  {
                    LOWORD(v97) = 0;
                  }
                }

                v98 = *(v93 - 1);
                v99 = v95;
                if (v98 <= v94)
                {
                  if (v98 >= 0.0)
                  {
                    v99 = ((v98 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v99 = 0;
                  }
                }

                v100 = *v93;
                LOWORD(v101) = v95;
                if (*v93 <= v94)
                {
                  if (v100 >= 0.0)
                  {
                    v101 = ((v100 * 65535.0) + 0.5);
                  }

                  else
                  {
                    LOWORD(v101) = 0;
                  }
                }

                v102 = v93[1];
                v103 = v95;
                if (v102 <= v94)
                {
                  if (v102 >= 0.0)
                  {
                    v103 = ((v102 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v103 = 0;
                  }
                }

                *(v56 + v92) = (v101 << 32) | (v103 << 48) | (v99 << 16) | v97;
              }

              *(v56 + v92 + 8) = v95;
            }

            v92 += 16;
            v93 += 5;
            ++v91;
          }

          while (v40 != v91);
        }

        else
        {
          v65 = 0;
          v66 = 0;
          v67 = (v63 + 8);
          do
          {
            if (v57[v65])
            {
              v68 = v67[2];
              if (v68 <= 0.0)
              {
                LOWORD(v73) = 0;
                *(v56 + v66) = 0;
              }

              else
              {
                v69 = *(v67 - 2);
                v70 = ((v68 * 65535.0) + 0.5);
                if (v68 > 1.0)
                {
                  v70 = 0xFFFF;
                }

                v71 = v70;
                if (v68 > 1.0)
                {
                  v68 = 1.0;
                }

                v72 = v70;
                if (v69 <= v68)
                {
                  if (v69 >= 0.0)
                  {
                    v72 = ((v69 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v72 = 0;
                  }
                }

                v74 = *(v67 - 1);
                v75 = v70;
                if (v74 <= v68)
                {
                  if (v74 >= 0.0)
                  {
                    v75 = ((v74 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v75 = 0;
                  }
                }

                v76 = *v67;
                v77 = v70;
                if (*v67 <= v68)
                {
                  if (v76 >= 0.0)
                  {
                    v77 = ((v76 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v77 = 0;
                  }
                }

                v78 = v67[1];
                if (v78 <= v68)
                {
                  if (v78 >= 0.0)
                  {
                    v71 = ((v78 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v71 = 0;
                  }
                }

                v73 = v70 - ((v70 * v50 + ((v70 * v50) >> 16) + 1) >> 16);
                *(v56 + v66) = ((v77 - ((v77 * v50 + ((v77 * v50) >> 16) + 1) >> 16)) << 32) | ((v71 - ((v71 * v50 + ((v71 * v50) >> 16) + 1) >> 16)) << 48) | ((v75 - ((v75 * v50 + ((v75 * v50) >> 16) + 1) >> 16)) << 16) | (v72 - ((v72 * v50 + ((v72 * v50) >> 16) + 1) >> 16));
              }

              *(v56 + v66 + 8) = v73;
            }

            v66 += 16;
            v67 += 5;
            ++v65;
          }

          while (v40 != v65);
        }
      }

      else if (v534 == 0xFFFF)
      {
        v106 = 0;
        v107 = (v56 + 8);
        do
        {
          if (v57[v106])
          {
            v108 = *(v63 + 8 * v106);
            *(v107 - 1) = (0x10100000000 * BYTE1(v108)) | (0x101000000000000 * v108) | v108 & 0xFF0000 | (BYTE2(v108) << 24) | BYTE3(v108) | (BYTE3(v108) << 8);
            *v107 = BYTE4(v108) | (WORD2(v108) << 8);
          }

          ++v106;
          v107 += 8;
        }

        while (v40 != v106);
      }

      else
      {
        v84 = 0;
        v85 = (v56 + 8);
        do
        {
          if (v57[v84])
          {
            v86 = v63 + 8 * v84;
            v87 = *(v86 + 4);
            LODWORD(v86) = *v86;
            v88 = BYTE3(v86) | (BYTE3(v86) << 8);
            v89 = BYTE2(v86) | (BYTE2(v86) << 8);
            v90 = BYTE1(v86) | (BYTE1(v86) << 8);
            LODWORD(v86) = v86 | (v86 << 8);
            *(v85 - 1) = ((v86 - ((v86 * v50 + ((v86 * v50) >> 16) + 1) >> 16)) << 48) | ((v90 - ((v90 * v50 + ((v90 * v50) >> 16) + 1) >> 16)) << 32) | ((v89 - ((v89 * v50 + ((v89 * v50) >> 16) + 1) >> 16)) << 16) | (v88 - ((v88 * v50 + ((v88 * v50) >> 16) + 1) >> 16));
            *v85 = (v87 | (v87 << 8)) - (((v87 | (v87 << 8)) * v50 + (((v87 | (v87 << 8)) * v50) >> 16) + 1) >> 16);
          }

          ++v84;
          v85 += 8;
        }

        while (v40 != v84);
      }
    }

    switch(v38)
    {
      case 0:
        v109 = v44 != 0;
        if (!v542)
        {
          v463 = v40;
          v464 = v44;
          do
          {
            v465 = *v57;
            if (*v57)
            {
              if (v44)
              {
                v465 = ((*v464 * v465 + ((*v464 * v465) >> 8) + 1) >> 8);
              }

              if (v465)
              {
                if (v465 == 255)
                {
                  *v34 = 0;
                }

                else
                {
                  cmyk64_DM(v34, *v34, (v465 | (v465 << 8)) ^ 0xFFFF);
                }
              }
            }

            ++v57;
            v464 += v109;
            ++v34;
            --v463;
          }

          while (v463);
          v44 = &v464[v530];
          v34 += v531;
          v30 += v533;
          v38 = v532;
          goto LABEL_515;
        }

        v110 = v40;
        v111 = v44;
        do
        {
          v112 = *v57;
          if (*v57)
          {
            if (v44)
            {
              v112 = ((*v111 * v112 + ((*v111 * v112) >> 8) + 1) >> 8);
            }

            if (v112)
            {
              if (v112 == 255)
              {
                LOWORD(v113) = 0;
                *v34 = 0;
              }

              else
              {
                v114 = *v30;
                v115 = v112 | (v112 << 8);
                v116 = vdup_n_s32(v115);
                v117 = vmul_s32(vand_s8(*v34, 0xFFFF0000FFFFLL), v116);
                v118.i32[0] = HIWORD(v34->u32[0]);
                v118.i32[1] = HIWORD(*v34);
                v119 = vmul_s32(v118, v116);
                *v34 = vsli_n_s32(vsub_s32(*v34, vshr_n_u32(vadd_s32(vsra_n_u32(v117, v117, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(v118, vshr_n_u32(vadd_s32(vsra_n_u32(v119, v119, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
                v113 = v114 - ((v115 * v114 + ((v115 * v114) >> 16) + 1) >> 16);
              }

              *v30 = v113;
            }
          }

          ++v57;
          v111 += v109;
          ++v34;
          ++v30;
          --v110;
        }

        while (v110);
        v44 = &v111[v530];
        v34 += v531;
        v30 += v533;
        goto LABEL_516;
      case 1:
        v273 = *v57;
        if (v542)
        {
          v274 = 0;
          v275 = (v56 + 8);
          v276 = v57 + 1;
          if (v44)
          {
            v277 = v30;
            v278 = v34;
            do
            {
              v279 = v278;
              v280 = v277;
              if (v273)
              {
                v281 = v44[v274] * v273 + ((v44[v274] * v273) >> 8) + 1;
                if (BYTE1(v281))
                {
                  if (BYTE1(v281) == 255)
                  {
                    v34[v274] = *(v275 - 4);
                    v30[v274] = *v275;
                  }

                  else
                  {
                    cmyk64_DAMplusDAM(v278, v277, *(v275 - 1), *v275, (257 * (v281 >> 8)), *&v34[v274], v30[v274], ~(257 * (v281 >> 8)));
                  }
                }
              }

              v273 = v276[v274];
              v278 = v279 + 2;
              v277 = v280 + 1;
              ++v274;
              v275 += 8;
            }

            while (v541 != v274);
            v44 += v274 + v530;
          }

          else
          {
            v492 = v30;
            v493 = v34;
            do
            {
              if (v273)
              {
                if (v273 == 255)
                {
                  v34[v274] = *(v275 - 4);
                  v30[v274] = *v275;
                }

                else
                {
                  cmyk64_DAMplusDAM(v493, v492, *(v275 - 1), *v275, v273 | (v273 << 8), *&v34[v274], v30[v274], (v273 | (v273 << 8)) ^ 0xFFFF);
                }
              }

              v273 = v276[v274];
              v493 += 2;
              ++v492;
              ++v274;
              v275 += 8;
            }

            while (v541 != v274);
            v44 = 0;
            v280 = v492 - 1;
            v279 = v493 - 2;
          }

          v38 = v532;
          v490 = &v280[v533];
          v491 = &v279[2 * v531];
          goto LABEL_540;
        }

        v466 = v57 + 1;
        if (v44)
        {
          v467 = v541;
          do
          {
            if (v273)
            {
              v468 = *v44 * v273 + ((*v44 * v273) >> 8) + 1;
              v469 = v527;
              if (v527 >= v34)
              {
                v469 = v34;
              }

              if (v469 >= *(v529 + 40))
              {
                v444 = v469;
              }

              else
              {
                v444 = *(v529 + 40);
              }

              if (BYTE1(v468))
              {
                if (BYTE1(v468) == 255)
                {
                  *v444 = *v56;
                }

                else
                {
                  cmyk64_DMplusDM(v444, *v56, (257 * (v468 >> 8)), *v444, ~(257 * (v468 >> 8)));
                }
              }
            }

            else
            {
              v444 = v34;
            }

            v470 = *v466++;
            v273 = v470;
            v56 += 16;
            ++v44;
            v34 = (v444 + 2);
            --v467;
          }

          while (v467);
          v44 += v530;
        }

        else
        {
          v510 = v541;
          v511 = v529;
          do
          {
            v512 = v527;
            if (v527 >= v34)
            {
              v512 = v34;
            }

            if (v512 >= *(v511 + 40))
            {
              v444 = v512;
            }

            else
            {
              v444 = *(v511 + 40);
            }

            if (v273)
            {
              if (v273 == 255)
              {
                *v444 = *v56;
              }

              else
              {
                cmyk64_DMplusDM(v444, *v56, v273 | (v273 << 8), *v444, (v273 | (v273 << 8)) ^ 0xFFFF);
              }
            }

            v513 = *v466++;
            v273 = v513;
            v56 += 16;
            v34 = (v444 + 2);
            --v510;
          }

          while (v510);
          v44 = 0;
        }

        goto LABEL_565;
      case 2:
        v223 = *v57;
        if (v542)
        {
          v224 = 0;
          if (v44)
          {
            v225 = v57 + 1;
            v226 = v30;
            v227 = v34;
            v520 = v57 + 1;
            while (1)
            {
              v228 = v227;
              v229 = v226;
              if (!v223)
              {
                goto LABEL_237;
              }

              v230 = v44[v224] * v223 + ((v44[v224] * v223) >> 8) + 1;
              if (!BYTE1(v230))
              {
                goto LABEL_237;
              }

              if (BYTE1(v230) == 255)
              {
                v231 = *(v56 + 8);
                if (*(v56 + 8))
                {
                  if (v231 != 0xFFFF)
                  {
                    v242 = *v56;
                    v240 = v34[v224];
                    v241 = v30[v224];
                    v243 = v231 ^ 0xFFFF;
                    goto LABEL_236;
                  }

                  v34[v224] = *v56;
                  v30[v224] = -1;
                }
              }

              else
              {
                v232 = *(v56 + 8);
                v233 = (257 * (v230 >> 8)) ^ 0xFFFF;
                if (v232 != (v233 * v232 + ((v233 * v232) >> 16) + 1) >> 16)
                {
                  v234 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v56), xmmword_18439CB80));
                  v235.i32[1] = v234.i32[1];
                  v235.i32[0] = v234.u16[0];
                  v236 = vmul_s32(v235, vdup_n_s32(v233));
                  v237 = vand_s8(vsub_s32(v234, vshr_n_u32(vadd_s32(vsra_n_u32(v236, v236, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
                  v238.i64[0] = v237.u32[0];
                  v238.i64[1] = v237.u32[1];
                  v239 = vshlq_u64(v238, xmmword_18439CB70);
                  v240 = v34[v224];
                  v241 = v30[v224];
                  v242 = vorrq_s8(v239, vdupq_laneq_s64(v239, 1)).u64[0] | ((WORD1(*v56) - ((WORD1(*v56) * v233 + ((WORD1(*v56) * v233) >> 16) + 1) >> 16)) << 16) | (*v56 - ((*v56 * v233 + ((*v56 * v233) >> 16) + 1) >> 16));
                  LOWORD(v231) = v232 - ((v233 * v232 + ((v233 * v232) >> 16) + 1) >> 16);
                  v243 = ~v231;
LABEL_236:
                  cmyk64_DAplusDAM(v228, v229, v242, v231, v240, v241, v243);
                  v225 = v520;
                }
              }

LABEL_237:
              v223 = v225[v224];
              v56 += 16;
              v227 = v228 + 1;
              v226 = v229 + 1;
              if (v541 == ++v224)
              {
                v44 += v224 + v530;
LABEL_531:
                v490 = &v229[v533];
                v491 = &v228[v531];
LABEL_540:
                v34 = v491 + 1;
                v30 = v490 + 1;
LABEL_514:
                v39 = v535;
LABEL_515:
                v40 = v541;
LABEL_516:
                if (v538 == 1)
                {
                  v41 = v536;
                  if (v536)
                  {
LABEL_568:
                    free(v41);
                  }

                  goto LABEL_569;
                }

                --v538;
                v52 = 0;
                LODWORD(v537) = v537 + 1;
                v53 = v39[16] + v540;
                v54 = v39[17] + v539;
                if (v536)
                {
                  v539 += v39[17];
                  v540 = v53;
                  v48 = v528;
                  v41 = v536;
                  v42 = v537;
LABEL_572:
                  v514 = v533 + v48;
                  while (1)
                  {
                    while (1)
                    {
                      v515 = *(v44 - 4);
                      v516 = v515 - v42;
                      if (v515 <= v42)
                      {
                        break;
                      }

                      v538 -= v516;
                      if (v538 < 1)
                      {
                        goto LABEL_568;
                      }

                      v517 = v540 + v39[16] * v516;
                      v539 += v39[17] * v516;
                      v540 = v517;
                      v34 += v521 * v516;
                      v518 = v514 * v516;
                      if (!v542)
                      {
                        v518 = 0;
                      }

                      v30 += v518;
                      v42 = v515;
                    }

                    if (v42 < *(v44 - 3) + v515)
                    {
                      break;
                    }

                    if (!shape_enum_clip_scan(v41, v44 - 4))
                    {
                      goto LABEL_568;
                    }
                  }

                  v31 = v528;
                  v32 = v523;
                  v33 = v522;
                  goto LABEL_21;
                }

                goto LABEL_22;
              }
            }
          }

          v474 = v57 + 1;
          v475 = v30;
          v476 = v34;
          while (1)
          {
            if (v223)
            {
              if (v223 == 255)
              {
                v477 = *(v56 + 8);
                if (*(v56 + 8))
                {
                  if (v477 != 0xFFFF)
                  {
                    v488 = *v56;
                    v486 = v34[v224];
                    v487 = v30[v224];
                    v489 = v477 ^ 0xFFFF;
                    goto LABEL_528;
                  }

                  v34[v224] = *v56;
                  v30[v224] = -1;
                }
              }

              else
              {
                v478 = *(v56 + 8);
                v479 = (257 * v223) ^ 0xFFFF;
                if (v478 != (v479 * v478 + ((v479 * v478) >> 16) + 1) >> 16)
                {
                  v480 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v56), xmmword_18439CB80));
                  v481.i32[1] = v480.i32[1];
                  v481.i32[0] = v480.u16[0];
                  v482 = vmul_s32(v481, vdup_n_s32(v479));
                  v483 = vand_s8(vsub_s32(v480, vshr_n_u32(vadd_s32(vsra_n_u32(v482, v482, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
                  v484.i64[0] = v483.u32[0];
                  v484.i64[1] = v483.u32[1];
                  v485 = vshlq_u64(v484, xmmword_18439CB70);
                  v486 = v34[v224];
                  v487 = v30[v224];
                  v488 = vorrq_s8(v485, vdupq_laneq_s64(v485, 1)).u64[0] | ((WORD1(*v56) - ((WORD1(*v56) * v479 + ((WORD1(*v56) * v479) >> 16) + 1) >> 16)) << 16) | (*v56 - ((*v56 * v479 + ((*v56 * v479) >> 16) + 1) >> 16));
                  LOWORD(v477) = v478 - ((v479 * v478 + ((v479 * v478) >> 16) + 1) >> 16);
                  v489 = ~v477;
LABEL_528:
                  cmyk64_DAplusDAM(v476, v475, v488, v477, v486, v487, v489);
                }
              }
            }

            v223 = v474[v224];
            v56 += 16;
            ++v476;
            ++v475;
            if (v541 == ++v224)
            {
              v44 = 0;
              v229 = v475 - 1;
              v228 = v476 - 1;
              v38 = v532;
              goto LABEL_531;
            }
          }
        }

        if (v44)
        {
          v441 = 0;
          v442 = v57 + 1;
          v443 = v34;
          while (1)
          {
            v444 = v443;
            if (!v223)
            {
              goto LABEL_466;
            }

            v445 = v44[v441] * v223 + ((v44[v441] * v223) >> 8) + 1;
            if (!BYTE1(v445))
            {
              goto LABEL_466;
            }

            if (BYTE1(v445) == 255)
            {
              v446 = *(v56 + 8);
              if (*(v56 + 8))
              {
                if (v446 != 0xFFFF)
                {
                  v458 = *v56;
                  v457 = v34[v441];
                  v459 = v446 ^ 0xFFFF;
                  goto LABEL_465;
                }

                v34[v441] = *v56;
              }
            }

            else
            {
              v447 = v445 >> 8;
              v448 = *(v56 + 8);
              v449 = (257 * v447) ^ 0xFFFF;
              v450 = v449 * v448 + ((v449 * v448) >> 16) + 1;
              if (v448 != HIWORD(v450))
              {
                v451 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v56), xmmword_18439CB80));
                v452.i32[1] = v451.i32[1];
                v452.i32[0] = v451.u16[0];
                v453 = vmul_s32(v452, vdup_n_s32(v449));
                v454 = vand_s8(vsub_s32(v451, vshr_n_u32(vadd_s32(vsra_n_u32(v453, v453, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
                v455.i64[0] = v454.u32[0];
                v455.i64[1] = v454.u32[1];
                v456 = vshlq_u64(v455, xmmword_18439CB70);
                v457 = v34[v441];
                v458 = vorrq_s8(v456, vdupq_laneq_s64(v456, 1)).u64[0] | ((WORD1(*v56) - ((WORD1(*v56) * v449 + ((WORD1(*v56) * v449) >> 16) + 1) >> 16)) << 16) | (*v56 - ((*v56 * v449 + ((*v56 * v449) >> 16) + 1) >> 16));
                v459 = (~v448 + HIWORD(v450));
LABEL_465:
                cmyk64_DplusDM(v444, v458, v457, v459);
              }
            }

LABEL_466:
            v223 = v442[v441];
            v56 += 16;
            v443 = (v444 + 2);
            if (v541 == ++v441)
            {
              v44 += v441 + v530;
LABEL_565:
              v38 = v532;
              goto LABEL_566;
            }
          }
        }

        v494 = v57 + 1;
        v495 = v541;
        while (1)
        {
          if (v223)
          {
            if (v223 == 255)
            {
              v496 = *(v56 + 8);
              if (*(v56 + 8))
              {
                if (v496 != 0xFFFF)
                {
                  v507 = *v56;
                  v506 = *v34;
                  v508 = v496 ^ 0xFFFF;
                  goto LABEL_550;
                }

                *v34 = *v56;
              }
            }

            else
            {
              v497 = *(v56 + 8);
              v498 = (257 * v223) ^ 0xFFFF;
              v499 = v498 * v497 + ((v498 * v497) >> 16) + 1;
              if (v497 != HIWORD(v499))
              {
                v500 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v56), xmmword_18439CB80));
                v501.i32[1] = v500.i32[1];
                v501.i32[0] = v500.u16[0];
                v502 = vmul_s32(v501, vdup_n_s32(v498));
                v503 = vand_s8(vsub_s32(v500, vshr_n_u32(vadd_s32(vsra_n_u32(v502, v502, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
                v504.i64[0] = v503.u32[0];
                v504.i64[1] = v503.u32[1];
                v505 = vshlq_u64(v504, xmmword_18439CB70);
                v506 = *v34;
                v507 = vorrq_s8(v505, vdupq_laneq_s64(v505, 1)).u64[0] | ((WORD1(*v56) - ((WORD1(*v56) * v498 + ((WORD1(*v56) * v498) >> 16) + 1) >> 16)) << 16) | (*v56 - ((*v56 * v498 + ((*v56 * v498) >> 16) + 1) >> 16));
                v508 = (~v497 + HIWORD(v499));
LABEL_550:
                cmyk64_DplusDM(v34, v507, v506, v508);
              }
            }
          }

          v509 = *v494++;
          v223 = v509;
          v56 += 16;
          ++v34;
          if (!--v495)
          {
            v44 = 0;
            v444 = &v34[-1];
LABEL_566:
            v34 = &v444[2 * v531 + 2];
            v30 += v533;
            goto LABEL_515;
          }
        }

      case 3:
        v254 = (v56 + 8);
        v255 = v40;
        v167 = v44;
        do
        {
          v256 = *v57;
          if (*v57)
          {
            if (v44)
            {
              v256 = ((*v167 * v256 + ((*v167 * v256) >> 8) + 1) >> 8);
            }

            if (v256)
            {
              if (v256 == 255)
              {
                v257 = *(v254 - 4);
                v258 = *v254;
                v259 = *v30 ^ 0xFFFF;
                v260 = vdup_n_s32(v259);
                v261 = vmul_s32(vand_s8(v257, 0xFFFF0000FFFFLL), v260);
                v262 = vmul_s32(__PAIR64__(HIWORD(*&v257), v257.u16[1]), v260);
                *v34 = vsli_n_s32(vsub_s32(v257, vshr_n_u32(vadd_s32(vsra_n_u32(v261, v261, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(__PAIR64__(HIWORD(*&v257), v257.u16[1]), vshr_n_u32(vadd_s32(vsra_n_u32(v262, v262, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
                *v30 = v258 - ((v259 * v258 + ((v259 * v258) >> 16) + 1) >> 16);
              }

              else
              {
                cmyk64_DAMplusDAM(v34, v30, *(v254 - 1), *v254, (*v30 * (v256 | (v256 << 8)) + ((*v30 * (v256 | (v256 << 8))) >> 16) + 1) >> 16, *v34, *v30, (v256 | (v256 << 8)) ^ 0xFFFF);
              }
            }
          }

          ++v57;
          v167 += v44 != 0;
          ++v34;
          v254 += 8;
          v30 = (v30 + v51);
          --v255;
        }

        while (v255);
        goto LABEL_453;
      case 4:
        v165 = (v56 + 8);
        v166 = v40;
        v167 = v44;
        do
        {
          v168 = *v57;
          if (*v57)
          {
            if (v44)
            {
              v168 = ((*v167 * v168 + ((*v167 * v168) >> 8) + 1) >> 8);
            }

            if (v168)
            {
              if (v168 == 255)
              {
                v169 = *(v165 - 4);
                v170 = *v165;
                v171 = *v30;
                v172 = vdup_n_s32(v171);
                v173 = vmul_s32(vand_s8(v169, 0xFFFF0000FFFFLL), v172);
                v174 = vmul_s32(__PAIR64__(HIWORD(*&v169), v169.u16[1]), v172);
                *v34 = vsli_n_s32(vsub_s32(v169, vshr_n_u32(vadd_s32(vsra_n_u32(v173, v173, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(__PAIR64__(HIWORD(*&v169), v169.u16[1]), vshr_n_u32(vadd_s32(vsra_n_u32(v174, v174, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
                *v30 = v170 - ((v171 * v170 + ((v171 * v170) >> 16) + 1) >> 16);
              }

              else
              {
                cmyk64_DAMplusDAM(v34, v30, *(v165 - 1), *v165, ((*v30 ^ 0xFFFF) * (v168 | (v168 << 8)) + (((*v30 ^ 0xFFFF) * (v168 | (v168 << 8))) >> 16) + 1) >> 16, *v34, *v30, (v168 | (v168 << 8)) ^ 0xFFFF);
              }
            }
          }

          ++v57;
          v167 += v44 != 0;
          ++v34;
          v165 += 8;
          v30 = (v30 + v51);
          --v166;
        }

        while (v166);
        goto LABEL_453;
      case 5:
        v302 = (v56 + 8);
        v303 = v40;
        v167 = v44;
        while (1)
        {
          v304 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_314;
            }

            v305 = *v167 * v304 + ((*v167 * v304) >> 8) + 1;
            if (v305 >= 0x100)
            {
              break;
            }
          }

LABEL_315:
          ++v57;
          v167 += v44 != 0;
          ++v34;
          v302 += 8;
          v30 = (v30 + v51);
          if (!--v303)
          {
            goto LABEL_453;
          }
        }

        v304 = v305 >> 8;
LABEL_314:
        v306 = *v302;
        v307 = *(v302 - 1);
        v308 = (v304 | (v304 << 8)) ^ 0xFFFF;
        v309 = v308 * v306 + ((v308 * v306) >> 16) + 1;
        v310 = vmovn_s64(vshlq_u64(vdupq_n_s64(v307), xmmword_18439CB80));
        v311.i32[1] = v310.i32[1];
        v311.i32[0] = v310.u16[0];
        v312 = vmul_s32(vdup_n_s32(v308), v311);
        v313 = vand_s8(vsub_s32(v310, vshr_n_u32(vadd_s32(vsra_n_u32(v312, v312, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
        v314.i64[0] = v313.u32[0];
        v314.i64[1] = v313.u32[1];
        v315 = vshlq_u64(v314, xmmword_18439CB70);
        cmyk64_DAMplusDAM(v34, v30, vorrq_s8(v315, vdupq_laneq_s64(v315, 1)).u64[0] | ((WORD1(v307) - ((WORD1(v307) * v308 + ((WORD1(v307) * v308) >> 16) + 1) >> 16)) << 16) | (v307 - ((v307 * v308 + ((v307 * v308) >> 16) + 1) >> 16)), (v306 - HIWORD(v309)), *v30, *v34, *v30, ~(v306 - HIWORD(v309)));
        goto LABEL_315;
      case 6:
        v336 = (v56 + 8);
        v337 = v40;
        v167 = v44;
        while (1)
        {
          v338 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_348;
            }

            v339 = *v167 * v338 + ((*v167 * v338) >> 8) + 1;
            if (v339 >= 0x100)
            {
              break;
            }
          }

LABEL_352:
          ++v57;
          v167 += v44 != 0;
          ++v34;
          v336 += 8;
          v30 = (v30 + v51);
          if (!--v337)
          {
            goto LABEL_453;
          }
        }

        v338 = v339 >> 8;
LABEL_348:
        if (*v30 != 0xFFFF)
        {
          if (~*v30 == 0xFFFF)
          {
            v340 = *(v336 - 4);
            v341 = *v336;
            v342 = (v338 | (v338 << 8)) ^ 0xFFFF;
            v343 = vdup_n_s32(v342);
            v344 = vmul_s32(vand_s8(v340, 0xFFFF0000FFFFLL), v343);
            v345 = vmul_s32(__PAIR64__(HIWORD(*&v340), v340.u16[1]), v343);
            *v34 = vsli_n_s32(vsub_s32(v340, vshr_n_u32(vadd_s32(vsra_n_u32(v344, v344, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(__PAIR64__(HIWORD(*&v340), v340.u16[1]), vshr_n_u32(vadd_s32(vsra_n_u32(v345, v345, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
            *v30 = v341 - ((v342 * v341 + ((v342 * v341) >> 16) + 1) >> 16);
          }

          else
          {
            cmyk64_DAplusDAM(v34, v30, *v34, *v30, *(v336 - 1), *v336, (257 * v338 * ~*v30 + ((257 * v338 * ~*v30) >> 16) + 1) >> 16);
          }
        }

        goto LABEL_352;
      case 7:
        v263 = v44 != 0;
        if (v542)
        {
          v264 = (v56 + 8);
          v265 = v40;
          v154 = v44;
          do
          {
            v266 = *v57;
            if (*v57)
            {
              if (v44)
              {
                v266 = ((*v154 * v266 + ((*v154 * v266) >> 8) + 1) >> 8);
              }

              if (v266)
              {
                if (v266 == 255)
                {
                  v267 = *v30;
                  v268 = *v264 ^ 0xFFFF;
                  v269 = vdup_n_s32(v268);
                  v270 = vmul_s32(vand_s8(*v34, 0xFFFF0000FFFFLL), v269);
                  v271.i32[0] = HIWORD(v34->u32[0]);
                  v271.i32[1] = HIWORD(*v34);
                  v272 = vmul_s32(v271, v269);
                  *v34 = vsli_n_s32(vsub_s32(*v34, vshr_n_u32(vadd_s32(vsra_n_u32(v270, v270, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(v271, vshr_n_u32(vadd_s32(vsra_n_u32(v272, v272, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
                  *v30 = v267 - ((v268 * v267 + ((v268 * v267) >> 16) + 1) >> 16);
                }

                else
                {
                  cmyk64_DAMplusDAM(v34, v30, *v34, *v30, (*v264 * (v266 | (v266 << 8)) + ((*v264 * (v266 | (v266 << 8))) >> 16) + 1) >> 16, *v34, *v30, (v266 | (v266 << 8)) ^ 0xFFFF);
                }
              }
            }

            ++v57;
            v154 += v263;
            ++v34;
            ++v30;
            v264 += 8;
            --v265;
          }

          while (v265);
        }

        else
        {
          v460 = (v56 + 8);
          v461 = v40;
          v154 = v44;
          do
          {
            v462 = *v57;
            if (*v57)
            {
              if (v44)
              {
                v462 = ((*v154 * v462 + ((*v154 * v462) >> 8) + 1) >> 8);
              }

              if (v462)
              {
                if (v462 == 255)
                {
                  cmyk64_DM(v34, *v34, *v460);
                }

                else
                {
                  cmyk64_DMplusDM(v34, *v34, (*v460 * (v462 | (v462 << 8)) + ((*v460 * (v462 | (v462 << 8))) >> 16) + 1) >> 16, *v34, (v462 | (v462 << 8)) ^ 0xFFFF);
                }
              }
            }

            ++v57;
            v154 += v263;
            ++v34;
            v460 += 8;
            --v461;
          }

          while (v461);
        }

        goto LABEL_512;
      case 8:
        v370 = v44 != 0;
        if (v542)
        {
          v371 = (v56 + 8);
          v372 = v40;
          v154 = v44;
          do
          {
            v373 = *v57;
            if (*v57)
            {
              if (v44)
              {
                v373 = ((*v154 * v373 + ((*v154 * v373) >> 8) + 1) >> 8);
              }

              if (v373)
              {
                if (v373 == 255)
                {
                  v374 = *v30;
                  v375 = *v371;
                  v376 = vdup_n_s32(v375);
                  v377 = vmul_s32(vand_s8(*v34, 0xFFFF0000FFFFLL), v376);
                  v378.i32[0] = HIWORD(v34->u32[0]);
                  v378.i32[1] = HIWORD(*v34);
                  v379 = vmul_s32(v378, v376);
                  *v34 = vsli_n_s32(vsub_s32(*v34, vshr_n_u32(vadd_s32(vsra_n_u32(v377, v377, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(v378, vshr_n_u32(vadd_s32(vsra_n_u32(v379, v379, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
                  *v30 = v374 - ((v375 * v374 + ((v375 * v374) >> 16) + 1) >> 16);
                }

                else
                {
                  cmyk64_DAMplusDAM(v34, v30, *v34, *v30, ((*v371 ^ 0xFFFF) * (v373 | (v373 << 8)) + (((*v371 ^ 0xFFFF) * (v373 | (v373 << 8))) >> 16) + 1) >> 16, *v34, *v30, (v373 | (v373 << 8)) ^ 0xFFFF);
                }
              }
            }

            ++v57;
            v154 += v370;
            ++v34;
            ++v30;
            v371 += 8;
            --v372;
          }

          while (v372);
        }

        else
        {
          v471 = (v56 + 8);
          v472 = v40;
          v154 = v44;
          do
          {
            v473 = *v57;
            if (*v57)
            {
              if (v44)
              {
                v473 = ((*v154 * v473 + ((*v154 * v473) >> 8) + 1) >> 8);
              }

              if (v473)
              {
                if (v473 == 255)
                {
                  cmyk64_DM(v34, *v34, *v471 ^ 0xFFFF);
                }

                else
                {
                  cmyk64_DMplusDM(v34, *v34, ((*v471 ^ 0xFFFF) * (v473 | (v473 << 8)) + (((*v471 ^ 0xFFFF) * (v473 | (v473 << 8))) >> 16) + 1) >> 16, *v34, (v473 | (v473 << 8)) ^ 0xFFFF);
                }
              }
            }

            ++v57;
            v154 += v370;
            ++v34;
            v471 += 8;
            --v472;
          }

          while (v472);
        }

        goto LABEL_512;
      case 9:
        v188 = (v56 + 8);
        v189 = v40;
        v167 = v44;
        while (1)
        {
          v190 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_195;
            }

            v191 = *v167 * v190 + ((*v167 * v190) >> 8) + 1;
            if (v191 >= 0x100)
            {
              break;
            }
          }

LABEL_196:
          ++v57;
          v167 += v44 != 0;
          ++v34;
          v188 += 8;
          v30 = (v30 + v51);
          if (!--v189)
          {
            goto LABEL_453;
          }
        }

        v190 = v191 >> 8;
LABEL_195:
        v192 = *v188;
        v193 = *(v188 - 1);
        v194 = ~(v190 | (v190 << 8));
        v195 = v194;
        v196 = v192 * v195 + ((v192 * v195) >> 16) + 1;
        v197 = vmovn_s64(vshlq_u64(vdupq_n_s64(v193), xmmword_18439CB80));
        v198.i32[1] = v197.i32[1];
        v198.i32[0] = v197.u16[0];
        v199 = vmul_s32(v198, vdup_n_s32(v194));
        v200 = vand_s8(vsub_s32(v197, vshr_n_u32(vadd_s32(vsra_n_u32(v199, v199, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
        v201.i64[0] = v200.u32[0];
        v201.i64[1] = v200.u32[1];
        v202 = vshlq_u64(v201, xmmword_18439CB70);
        cmyk64_DAMplusDAM(v34, v30, vorrq_s8(v202, vdupq_laneq_s64(v202, 1)).u64[0] | ((WORD1(v193) - ((WORD1(v193) * v195 + ((WORD1(v193) * v195) >> 16) + 1) >> 16)) << 16) | (v193 - ((v193 * v194 + ((v193 * v194) >> 16) + 1) >> 16)), (v192 - HIWORD(v196)), *v30 ^ 0xFFFF, *v34, *v30, (v192 - HIWORD(v196) + v194));
        goto LABEL_196;
      case 10:
        v356 = (v56 + 8);
        v357 = v40;
        v167 = v44;
        while (1)
        {
          v358 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_372;
            }

            v359 = *v167 * v358 + ((*v167 * v358) >> 8) + 1;
            if (v359 >= 0x100)
            {
              break;
            }
          }

LABEL_373:
          ++v57;
          v167 += v44 != 0;
          ++v34;
          v356 += 8;
          v30 = (v30 + v51);
          if (!--v357)
          {
            goto LABEL_453;
          }
        }

        v358 = v359 >> 8;
LABEL_372:
        v360 = *v356;
        v361 = *(v356 - 1);
        v362 = (v358 | (v358 << 8)) ^ 0xFFFF;
        v363 = v362 * v360 + ((v362 * v360) >> 16) + 1;
        v364 = vmovn_s64(vshlq_u64(vdupq_n_s64(v361), xmmword_18439CB80));
        v365.i32[1] = v364.i32[1];
        v365.i32[0] = v364.u16[0];
        v366 = vmul_s32(vdup_n_s32(v362), v365);
        v367 = vand_s8(vsub_s32(v364, vshr_n_u32(vadd_s32(vsra_n_u32(v366, v366, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
        v368.i64[0] = v367.u32[0];
        v368.i64[1] = v367.u32[1];
        v369 = vshlq_u64(v368, xmmword_18439CB70);
        cmyk64_DAMplusDAM(v34, v30, vorrq_s8(v369, vdupq_laneq_s64(v369, 1)).u64[0] | ((WORD1(v361) - ((WORD1(v361) * v362 + ((WORD1(v361) * v362) >> 16) + 1) >> 16)) << 16) | (v361 - ((v361 * v362 + ((v361 * v362) >> 16) + 1) >> 16)), (v360 - HIWORD(v363)), *v30 ^ 0xFFFF, *v34, *v30, ~(v360 - HIWORD(v363)));
        goto LABEL_373;
      case 11:
        v151 = v44 != 0;
        if (v542)
        {
          v152 = (v56 + 8);
          v153 = v40;
          v154 = v44;
          while (1)
          {
            v155 = *v57;
            if (*v57)
            {
              if (!v44)
              {
                goto LABEL_168;
              }

              v156 = *v154 * v155 + ((*v154 * v155) >> 8) + 1;
              if (v156 >= 0x100)
              {
                break;
              }
            }

LABEL_169:
            ++v57;
            v154 += v151;
            ++v34;
            ++v30;
            v152 += 8;
            if (!--v153)
            {
              goto LABEL_512;
            }
          }

          v155 = v156 >> 8;
LABEL_168:
          v157 = *(v152 - 1);
          v158 = (v155 | (v155 << 8)) ^ 0xFFFF;
          v159 = vmovn_s64(vshlq_u64(vdupq_n_s64(v157), xmmword_18439CB80));
          v160.i32[1] = v159.i32[1];
          v160.i32[0] = v159.u16[0];
          v161 = vmul_s32(vdup_n_s32(v158), v160);
          v162 = vand_s8(vsub_s32(v159, vshr_n_u32(vadd_s32(vsra_n_u32(v161, v161, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
          v163.i64[0] = v162.u32[0];
          v163.i64[1] = v162.u32[1];
          v164 = vshlq_u64(v163, xmmword_18439CB70);
          cmyk64_DAplusdDA(v34, v30, *v34, *v30, vorrq_s8(v164, vdupq_laneq_s64(v164, 1)).u64[0] | ((WORD1(v157) - ((WORD1(v157) * v158 + ((WORD1(v157) * v158) >> 16) + 1) >> 16)) << 16) | (v157 - ((v157 * v158 + ((v157 * v158) >> 16) + 1) >> 16)), (*v152 - ((v158 * *v152 + ((v158 * *v152) >> 16) + 1) >> 16)));
          goto LABEL_169;
        }

        v420 = (v56 + 8);
        v421 = v40;
        v154 = v44;
        while (1)
        {
          v422 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_443;
            }

            v423 = *v154 * v422 + ((*v154 * v422) >> 8) + 1;
            if (v423 >= 0x100)
            {
              break;
            }
          }

LABEL_444:
          ++v57;
          v154 += v151;
          ++v34;
          v420 += 8;
          if (!--v421)
          {
LABEL_512:
            v44 = &v154[v530];
            goto LABEL_513;
          }
        }

        v422 = v423 >> 8;
LABEL_443:
        v424 = *(v420 - 1);
        v425 = (v422 | (v422 << 8)) ^ 0xFFFF;
        v426 = vmovn_s64(vshlq_u64(vdupq_n_s64(v424), xmmword_18439CB80));
        v427.i32[1] = v426.i32[1];
        v427.i32[0] = v426.u16[0];
        v428 = vmul_s32(vdup_n_s32(v425), v427);
        v429 = vand_s8(vsub_s32(v426, vshr_n_u32(vadd_s32(vsra_n_u32(v428, v428, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
        v430.i64[0] = v429.u32[0];
        v430.i64[1] = v429.u32[1];
        v431 = vshlq_u64(v430, xmmword_18439CB70);
        cmyk64_DplusdDA(v34, *v34, vorrq_s8(v431, vdupq_laneq_s64(v431, 1)).u64[0] | ((WORD1(v424) - ((WORD1(v424) * v425 + ((WORD1(v424) * v425) >> 16) + 1) >> 16)) << 16) | (v424 - ((v424 * v425 + ((v424 * v425) >> 16) + 1) >> 16)), (*v420 - ((v425 * *v420 + ((v425 * *v420) >> 16) + 1) >> 16)));
        goto LABEL_444;
      case 12:
        v175 = v44 != 0;
        if (v542)
        {
          v176 = (v56 + 8);
          v177 = v40;
          v154 = v44;
          while (1)
          {
            v178 = *v57;
            if (*v57)
            {
              if (!v44)
              {
                goto LABEL_187;
              }

              v179 = *v154 * v178 + ((*v154 * v178) >> 8) + 1;
              if (v179 >= 0x100)
              {
                break;
              }
            }

LABEL_188:
            ++v57;
            v154 += v175;
            ++v34;
            ++v30;
            v176 += 8;
            if (!--v177)
            {
              goto LABEL_512;
            }
          }

          v178 = v179 >> 8;
LABEL_187:
          v180 = *(v176 - 1);
          v181 = (v178 | (v178 << 8)) ^ 0xFFFF;
          v182 = vmovn_s64(vshlq_u64(vdupq_n_s64(v180), xmmword_18439CB80));
          v183.i32[1] = v182.i32[1];
          v183.i32[0] = v182.u16[0];
          v184 = vmul_s32(vdup_n_s32(v181), v183);
          v185 = vand_s8(vsub_s32(v182, vshr_n_u32(vadd_s32(vsra_n_u32(v184, v184, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
          v186.i64[0] = v185.u32[0];
          v186.i64[1] = v185.u32[1];
          v187 = vshlq_u64(v186, xmmword_18439CB70);
          cmyk64_DApluslDA(v34, v30, *v34, *v30, vorrq_s8(v187, vdupq_laneq_s64(v187, 1)).u64[0] | ((WORD1(v180) - ((WORD1(v180) * v181 + ((WORD1(v180) * v181) >> 16) + 1) >> 16)) << 16) | (v180 - ((v180 * v181 + ((v180 * v181) >> 16) + 1) >> 16)), (*v176 - ((v181 * *v176 + ((v181 * *v176) >> 16) + 1) >> 16)));
          goto LABEL_188;
        }

        v167 = v44;
        while (1)
        {
          v432 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_451;
            }

            v433 = *v167 * v432 + ((*v167 * v432) >> 8) + 1;
            if (v433 >= 0x100)
            {
              break;
            }
          }

LABEL_452:
          ++v57;
          v56 += 16;
          v167 += v175;
          ++v34;
          if (!--v40)
          {
            goto LABEL_453;
          }
        }

        v432 = v433 >> 8;
LABEL_451:
        v434 = (v432 | (v432 << 8)) ^ 0xFFFF;
        v435 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v56), xmmword_18439CB80));
        v436.i32[1] = v435.i32[1];
        v436.i32[0] = v435.u16[0];
        v437 = vmul_s32(vdup_n_s32(v434), v436);
        v438 = vand_s8(vsub_s32(v435, vshr_n_u32(vadd_s32(vsra_n_u32(v437, v437, 0x10uLL), 0x100000001), 0x10uLL)), 0xFFFF0000FFFFLL);
        v439.i64[0] = v438.u32[0];
        v439.i64[1] = v438.u32[1];
        v440 = vshlq_u64(v439, xmmword_18439CB70);
        cmyk64_DpluslD(v34, *v34, vorrq_s8(v440, vdupq_laneq_s64(v440, 1)).u64[0] | ((WORD1(*v56) - ((WORD1(*v56) * v434 + ((WORD1(*v56) * v434) >> 16) + 1) >> 16)) << 16) | (*v56 - ((*v56 * v434 + ((*v56 * v434) >> 16) + 1) >> 16)));
        goto LABEL_452;
      case 13:
        v326 = (v56 + 8);
        v327 = v40;
        v122 = v44;
        while (1)
        {
          v328 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_335;
            }

            v329 = *v122 * v328 + ((*v122 * v328) >> 8) + 1;
            if (v329 >= 0x100)
            {
              break;
            }
          }

LABEL_341:
          ++v57;
          v122 += v44 != 0;
          ++v34;
          v326 += 8;
          v30 = (v30 + v51);
          if (!--v327)
          {
            goto LABEL_424;
          }
        }

        v328 = v329 >> 8;
LABEL_335:
        v330 = *v326;
        v331 = (v328 | (v328 << 8)) ^ 0xFFFF;
        v332 = v331 * v330 + ((v331 * v330) >> 16) + 1;
        v333 = v330 - HIWORD(v332);
        if (v330 != HIWORD(v332))
        {
          v334 = *(v326 - 1);
          v335 = ((HIWORD(v334) - ((v331 * HIWORD(v334) + ((v331 * HIWORD(v334)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v334) - ((WORD2(v334) * v331 + ((WORD2(v334) * v331) >> 16) + 1) >> 16)) << 32) | ((WORD1(v334) - ((WORD1(v334) * v331 + ((WORD1(v334) * v331) >> 16) + 1) >> 16)) << 16) | (v334 - ((v334 * v331 + ((v334 * v331) >> 16) + 1) >> 16));
          if (v542)
          {
            if (*v30)
            {
              v335 = PDAmultiplyPDA_11872(*v34, *v30, v335, v333);
            }

            *v34 = v335;
            *v30 = v333;
          }

          else
          {
            *v34 = PDAmultiplyPDA_11872(*v34, 0xFFFFu, v335, v333);
          }
        }

        goto LABEL_341;
      case 14:
        v141 = (v56 + 8);
        v142 = v40;
        v122 = v44;
        while (1)
        {
          v143 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_154;
            }

            v144 = *v122 * v143 + ((*v122 * v143) >> 8) + 1;
            if (v144 >= 0x100)
            {
              break;
            }
          }

LABEL_160:
          ++v57;
          v122 += v44 != 0;
          ++v34;
          v141 += 8;
          v30 = (v30 + v51);
          if (!--v142)
          {
            goto LABEL_424;
          }
        }

        v143 = v144 >> 8;
LABEL_154:
        v145 = *v141;
        v146 = (v143 | (v143 << 8)) ^ 0xFFFF;
        v147 = v146 * v145 + ((v146 * v145) >> 16) + 1;
        v148 = v145 - HIWORD(v147);
        if (v145 != HIWORD(v147))
        {
          v149 = *(v141 - 1);
          v150 = ((HIWORD(v149) - ((v146 * HIWORD(v149) + ((v146 * HIWORD(v149)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v149) - ((WORD2(v149) * v146 + ((WORD2(v149) * v146) >> 16) + 1) >> 16)) << 32) | ((WORD1(v149) - ((WORD1(v149) * v146 + ((WORD1(v149) * v146) >> 16) + 1) >> 16)) << 16) | (v149 - ((v149 * v146 + ((v149 * v146) >> 16) + 1) >> 16));
          if (v542)
          {
            if (*v30)
            {
              v150 = PDAscreenPDA_11873(*v34, *v30, v150, v148);
            }

            *v34 = v150;
            *v30 = v148;
          }

          else
          {
            *v34 = PDAscreenPDA_11873(*v34, 0xFFFFu, v150, v148);
          }
        }

        goto LABEL_160;
      case 15:
        v244 = (v56 + 8);
        v245 = v40;
        v122 = v44;
        while (1)
        {
          v246 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_244;
            }

            v247 = *v122 * v246 + ((*v122 * v246) >> 8) + 1;
            if (v247 >= 0x100)
            {
              break;
            }
          }

LABEL_250:
          ++v57;
          v122 += v44 != 0;
          ++v34;
          v244 += 8;
          v30 = (v30 + v51);
          if (!--v245)
          {
            goto LABEL_424;
          }
        }

        v246 = v247 >> 8;
LABEL_244:
        v248 = *v244;
        v249 = (v246 | (v246 << 8)) ^ 0xFFFF;
        v250 = v249 * v248 + ((v249 * v248) >> 16) + 1;
        v251 = v248 - HIWORD(v250);
        if (v248 != HIWORD(v250))
        {
          v252 = *(v244 - 1);
          v253 = ((HIWORD(v252) - ((v249 * HIWORD(v252) + ((v249 * HIWORD(v252)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v252) - ((WORD2(v252) * v249 + ((WORD2(v252) * v249) >> 16) + 1) >> 16)) << 32) | ((WORD1(v252) - ((WORD1(v252) * v249 + ((WORD1(v252) * v249) >> 16) + 1) >> 16)) << 16) | (v252 - ((v252 * v249 + ((v252 * v249) >> 16) + 1) >> 16));
          if (v542)
          {
            if (*v30)
            {
              v253 = PDAoverlayPDA_11874(*v34, *v30, v253, v251);
            }

            *v34 = v253;
            *v30 = v251;
          }

          else
          {
            *v34 = PDAoverlayPDA_11874(*v34, 0xFFFFu, v253, v251);
          }
        }

        goto LABEL_250;
      case 16:
        v131 = (v56 + 8);
        v132 = v40;
        v122 = v44;
        while (1)
        {
          v133 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_141;
            }

            v134 = *v122 * v133 + ((*v122 * v133) >> 8) + 1;
            if (v134 >= 0x100)
            {
              break;
            }
          }

LABEL_147:
          ++v57;
          v122 += v44 != 0;
          ++v34;
          v131 += 8;
          v30 = (v30 + v51);
          if (!--v132)
          {
            goto LABEL_424;
          }
        }

        v133 = v134 >> 8;
LABEL_141:
        v135 = *v131;
        v136 = (v133 | (v133 << 8)) ^ 0xFFFF;
        v137 = v136 * v135 + ((v136 * v135) >> 16) + 1;
        v138 = v135 - HIWORD(v137);
        if (v135 != HIWORD(v137))
        {
          v139 = *(v131 - 1);
          v140 = ((HIWORD(v139) - ((v136 * HIWORD(v139) + ((v136 * HIWORD(v139)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v139) - ((WORD2(v139) * v136 + ((WORD2(v139) * v136) >> 16) + 1) >> 16)) << 32) | ((WORD1(v139) - ((WORD1(v139) * v136 + ((WORD1(v139) * v136) >> 16) + 1) >> 16)) << 16) | (v139 - ((v139 * v136 + ((v139 * v136) >> 16) + 1) >> 16));
          if (v542)
          {
            if (*v30)
            {
              v140 = PDAdarkenPDA_11876(*v34, *v30, v140, v138);
            }

            *v34 = v140;
            *v30 = v138;
          }

          else
          {
            *v34 = PDAdarkenPDA_11876(*v34, 0xFFFFu, v140, v138);
          }
        }

        goto LABEL_147;
      case 17:
        v282 = (v56 + 8);
        v283 = v40;
        v122 = v44;
        while (1)
        {
          v284 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_288;
            }

            v285 = *v122 * v284 + ((*v122 * v284) >> 8) + 1;
            if (v285 >= 0x100)
            {
              break;
            }
          }

LABEL_294:
          ++v57;
          v122 += v44 != 0;
          ++v34;
          v282 += 8;
          v30 = (v30 + v51);
          if (!--v283)
          {
            goto LABEL_424;
          }
        }

        v284 = v285 >> 8;
LABEL_288:
        v286 = *v282;
        v287 = (v284 | (v284 << 8)) ^ 0xFFFF;
        v288 = v287 * v286 + ((v287 * v286) >> 16) + 1;
        v289 = v286 - HIWORD(v288);
        if (v286 != HIWORD(v288))
        {
          v290 = *(v282 - 1);
          v291 = ((HIWORD(v290) - ((v287 * HIWORD(v290) + ((v287 * HIWORD(v290)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v290) - ((WORD2(v290) * v287 + ((WORD2(v290) * v287) >> 16) + 1) >> 16)) << 32) | ((WORD1(v290) - ((WORD1(v290) * v287 + ((WORD1(v290) * v287) >> 16) + 1) >> 16)) << 16) | (v290 - ((v290 * v287 + ((v290 * v287) >> 16) + 1) >> 16));
          if (v542)
          {
            if (*v30)
            {
              v291 = PDAlightenPDA_11875(*v34, *v30, v291, v289);
            }

            *v34 = v291;
            *v30 = v289;
          }

          else
          {
            *v34 = PDAlightenPDA_11875(*v34, 0xFFFFu, v291, v289);
          }
        }

        goto LABEL_294;
      case 18:
        v346 = (v56 + 8);
        v347 = v40;
        v122 = v44;
        while (1)
        {
          v348 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_359;
            }

            v349 = *v122 * v348 + ((*v122 * v348) >> 8) + 1;
            if (v349 >= 0x100)
            {
              break;
            }
          }

LABEL_365:
          ++v57;
          v122 += v44 != 0;
          ++v34;
          v346 += 8;
          v30 = (v30 + v51);
          if (!--v347)
          {
            goto LABEL_424;
          }
        }

        v348 = v349 >> 8;
LABEL_359:
        v350 = *v346;
        v351 = (v348 | (v348 << 8)) ^ 0xFFFF;
        v352 = v351 * v350 + ((v351 * v350) >> 16) + 1;
        v353 = v350 - HIWORD(v352);
        if (v350 != HIWORD(v352))
        {
          v354 = *(v346 - 1);
          v355 = ((HIWORD(v354) - ((v351 * HIWORD(v354) + ((v351 * HIWORD(v354)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v354) - ((WORD2(v354) * v351 + ((WORD2(v354) * v351) >> 16) + 1) >> 16)) << 32) | ((WORD1(v354) - ((WORD1(v354) * v351 + ((WORD1(v354) * v351) >> 16) + 1) >> 16)) << 16) | (v354 - ((v354 * v351 + ((v354 * v351) >> 16) + 1) >> 16));
          if (v542)
          {
            if (*v30)
            {
              v355 = PDAcolordodgePDA_11877(*v34, *v30, v355, v353);
            }

            *v34 = v355;
            *v30 = v353;
          }

          else
          {
            *v34 = PDAcolordodgePDA_11877(*v34, 0xFFFFu, v355, v353);
          }
        }

        goto LABEL_365;
      case 19:
        v390 = (v56 + 8);
        v391 = v40;
        v122 = v44;
        while (1)
        {
          v392 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_404;
            }

            v393 = *v122 * v392 + ((*v122 * v392) >> 8) + 1;
            if (v393 >= 0x100)
            {
              break;
            }
          }

LABEL_410:
          ++v57;
          v122 += v44 != 0;
          ++v34;
          v390 += 8;
          v30 = (v30 + v51);
          if (!--v391)
          {
            goto LABEL_424;
          }
        }

        v392 = v393 >> 8;
LABEL_404:
        v394 = *v390;
        v395 = (v392 | (v392 << 8)) ^ 0xFFFF;
        v396 = v395 * v394 + ((v395 * v394) >> 16) + 1;
        v397 = v394 - HIWORD(v396);
        if (v394 != HIWORD(v396))
        {
          v398 = *(v390 - 1);
          v399 = ((HIWORD(v398) - ((v395 * HIWORD(v398) + ((v395 * HIWORD(v398)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v398) - ((WORD2(v398) * v395 + ((WORD2(v398) * v395) >> 16) + 1) >> 16)) << 32) | ((WORD1(v398) - ((WORD1(v398) * v395 + ((WORD1(v398) * v395) >> 16) + 1) >> 16)) << 16) | (v398 - ((v398 * v395 + ((v398 * v395) >> 16) + 1) >> 16));
          if (v542)
          {
            if (*v30)
            {
              v399 = PDAcolorburnPDA_11878(*v34, *v30, v399, v397);
            }

            *v34 = v399;
            *v30 = v397;
          }

          else
          {
            *v34 = PDAcolorburnPDA_11878(*v34, 0xFFFFu, v399, v397);
          }
        }

        goto LABEL_410;
      case 20:
        v292 = (v56 + 8);
        v293 = v40;
        v122 = v44;
        while (1)
        {
          v294 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_301;
            }

            v295 = *v122 * v294 + ((*v122 * v294) >> 8) + 1;
            if (v295 >= 0x100)
            {
              break;
            }
          }

LABEL_307:
          ++v57;
          v122 += v44 != 0;
          ++v34;
          v292 += 8;
          v30 = (v30 + v51);
          if (!--v293)
          {
            goto LABEL_424;
          }
        }

        v294 = v295 >> 8;
LABEL_301:
        v296 = *v292;
        v297 = (v294 | (v294 << 8)) ^ 0xFFFF;
        v298 = v297 * v296 + ((v297 * v296) >> 16) + 1;
        v299 = v296 - HIWORD(v298);
        if (v296 != HIWORD(v298))
        {
          v300 = *(v292 - 1);
          v301 = ((HIWORD(v300) - ((v297 * HIWORD(v300) + ((v297 * HIWORD(v300)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v300) - ((WORD2(v300) * v297 + ((WORD2(v300) * v297) >> 16) + 1) >> 16)) << 32) | ((WORD1(v300) - ((WORD1(v300) * v297 + ((WORD1(v300) * v297) >> 16) + 1) >> 16)) << 16) | (v300 - ((v300 * v297 + ((v300 * v297) >> 16) + 1) >> 16));
          if (v542)
          {
            if (*v30)
            {
              v301 = PDAsoftlightPDA_11880(*v34, *v30, v301, v299);
            }

            *v34 = v301;
            *v30 = v299;
          }

          else
          {
            *v34 = PDAsoftlightPDA_11880(*v34, 0xFFFFu, v301, v299);
          }
        }

        goto LABEL_307;
      case 21:
        v316 = (v56 + 8);
        v317 = v40;
        v122 = v44;
        while (1)
        {
          v318 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_322;
            }

            v319 = *v122 * v318 + ((*v122 * v318) >> 8) + 1;
            if (v319 >= 0x100)
            {
              break;
            }
          }

LABEL_328:
          ++v57;
          v122 += v44 != 0;
          ++v34;
          v316 += 8;
          v30 = (v30 + v51);
          if (!--v317)
          {
            goto LABEL_424;
          }
        }

        v318 = v319 >> 8;
LABEL_322:
        v320 = *v316;
        v321 = (v318 | (v318 << 8)) ^ 0xFFFF;
        v322 = v321 * v320 + ((v321 * v320) >> 16) + 1;
        v323 = v320 - HIWORD(v322);
        if (v320 != HIWORD(v322))
        {
          v324 = *(v316 - 1);
          v325 = ((HIWORD(v324) - ((v321 * HIWORD(v324) + ((v321 * HIWORD(v324)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v324) - ((WORD2(v324) * v321 + ((WORD2(v324) * v321) >> 16) + 1) >> 16)) << 32) | ((WORD1(v324) - ((WORD1(v324) * v321 + ((WORD1(v324) * v321) >> 16) + 1) >> 16)) << 16) | (v324 - ((v324 * v321 + ((v324 * v321) >> 16) + 1) >> 16));
          if (v542)
          {
            if (*v30)
            {
              v325 = PDAhardlightPDA_11879(*v34, *v30, v325, v323);
            }

            *v34 = v325;
            *v30 = v323;
          }

          else
          {
            *v34 = PDAhardlightPDA_11879(*v34, 0xFFFFu, v325, v323);
          }
        }

        goto LABEL_328;
      case 22:
        v380 = (v56 + 8);
        v381 = v40;
        v122 = v44;
        while (1)
        {
          v382 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_391;
            }

            v383 = *v122 * v382 + ((*v122 * v382) >> 8) + 1;
            if (v383 >= 0x100)
            {
              break;
            }
          }

LABEL_397:
          ++v57;
          v122 += v44 != 0;
          ++v34;
          v380 += 8;
          v30 = (v30 + v51);
          if (!--v381)
          {
            goto LABEL_424;
          }
        }

        v382 = v383 >> 8;
LABEL_391:
        v384 = *v380;
        v385 = (v382 | (v382 << 8)) ^ 0xFFFF;
        v386 = v385 * v384 + ((v385 * v384) >> 16) + 1;
        v387 = v384 - HIWORD(v386);
        if (v384 != HIWORD(v386))
        {
          v388 = *(v380 - 1);
          v389 = ((HIWORD(v388) - ((v385 * HIWORD(v388) + ((v385 * HIWORD(v388)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v388) - ((WORD2(v388) * v385 + ((WORD2(v388) * v385) >> 16) + 1) >> 16)) << 32) | ((WORD1(v388) - ((WORD1(v388) * v385 + ((WORD1(v388) * v385) >> 16) + 1) >> 16)) << 16) | (v388 - ((v388 * v385 + ((v388 * v385) >> 16) + 1) >> 16));
          if (v542)
          {
            if (*v30)
            {
              v389 = PDAdifferencePDA_11881(*v34, *v30, v389, v387);
            }

            *v34 = v389;
            *v30 = v387;
          }

          else
          {
            *v34 = PDAdifferencePDA_11881(*v34, 0xFFFFu, v389, v387);
          }
        }

        goto LABEL_397;
      case 23:
        v400 = (v56 + 8);
        v401 = v40;
        v122 = v44;
        while (1)
        {
          v402 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_417;
            }

            v403 = *v122 * v402 + ((*v122 * v402) >> 8) + 1;
            if (v403 >= 0x100)
            {
              break;
            }
          }

LABEL_423:
          ++v57;
          v122 += v44 != 0;
          ++v34;
          v400 += 8;
          v30 = (v30 + v51);
          if (!--v401)
          {
            goto LABEL_424;
          }
        }

        v402 = v403 >> 8;
LABEL_417:
        v404 = *v400;
        v405 = (v402 | (v402 << 8)) ^ 0xFFFF;
        v406 = v405 * v404 + ((v405 * v404) >> 16) + 1;
        v407 = v404 - HIWORD(v406);
        if (v404 != HIWORD(v406))
        {
          v408 = *(v400 - 1);
          v409 = ((HIWORD(v408) - ((v405 * HIWORD(v408) + ((v405 * HIWORD(v408)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v408) - ((WORD2(v408) * v405 + ((WORD2(v408) * v405) >> 16) + 1) >> 16)) << 32) | ((WORD1(v408) - ((WORD1(v408) * v405 + ((WORD1(v408) * v405) >> 16) + 1) >> 16)) << 16) | (v408 - ((v408 * v405 + ((v408 * v405) >> 16) + 1) >> 16));
          if (v542)
          {
            if (*v30)
            {
              v409 = PDAexclusionPDA_11882(*v34, *v30, v409, v407);
            }

            *v34 = v409;
            *v30 = v407;
          }

          else
          {
            *v34 = PDAexclusionPDA_11882(*v34, 0xFFFFu, v409, v407);
          }
        }

        goto LABEL_423;
      case 24:
        v213 = (v56 + 8);
        v214 = v40;
        v122 = v44;
        while (1)
        {
          v215 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_216;
            }

            v216 = *v122 * v215 + ((*v122 * v215) >> 8) + 1;
            if (v216 >= 0x100)
            {
              break;
            }
          }

LABEL_222:
          ++v57;
          v122 += v44 != 0;
          ++v34;
          v213 += 8;
          v30 = (v30 + v51);
          if (!--v214)
          {
            goto LABEL_424;
          }
        }

        v215 = v216 >> 8;
LABEL_216:
        v217 = *v213;
        v218 = (v215 | (v215 << 8)) ^ 0xFFFF;
        v219 = v218 * v217 + ((v218 * v217) >> 16) + 1;
        v220 = v217 - HIWORD(v219);
        if (v217 != HIWORD(v219))
        {
          v221 = *(v213 - 1);
          v222 = ((HIWORD(v221) - ((v218 * HIWORD(v221) + ((v218 * HIWORD(v221)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v221) - ((WORD2(v221) * v218 + ((WORD2(v221) * v218) >> 16) + 1) >> 16)) << 32) | ((WORD1(v221) - ((WORD1(v221) * v218 + ((WORD1(v221) * v218) >> 16) + 1) >> 16)) << 16) | (v221 - ((v221 * v218 + ((v221 * v218) >> 16) + 1) >> 16));
          if (v542)
          {
            if (*v30)
            {
              v222 = PDAhuePDA_11883(*v34, *v30, v222, v220);
            }

            *v34 = v222;
            *v30 = v220;
          }

          else
          {
            *v34 = PDAhuePDA_11883(*v34, 0xFFFFu, v222, v220);
          }
        }

        goto LABEL_222;
      case 25:
        v203 = (v56 + 8);
        v204 = v40;
        v122 = v44;
        while (1)
        {
          v205 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_203;
            }

            v206 = *v122 * v205 + ((*v122 * v205) >> 8) + 1;
            if (v206 >= 0x100)
            {
              break;
            }
          }

LABEL_209:
          ++v57;
          v122 += v44 != 0;
          ++v34;
          v203 += 8;
          v30 = (v30 + v51);
          if (!--v204)
          {
            goto LABEL_424;
          }
        }

        v205 = v206 >> 8;
LABEL_203:
        v207 = *v203;
        v208 = (v205 | (v205 << 8)) ^ 0xFFFF;
        v209 = v208 * v207 + ((v208 * v207) >> 16) + 1;
        v210 = v207 - HIWORD(v209);
        if (v207 != HIWORD(v209))
        {
          v211 = *(v203 - 1);
          v212 = ((HIWORD(v211) - ((v208 * HIWORD(v211) + ((v208 * HIWORD(v211)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v211) - ((WORD2(v211) * v208 + ((WORD2(v211) * v208) >> 16) + 1) >> 16)) << 32) | ((WORD1(v211) - ((WORD1(v211) * v208 + ((WORD1(v211) * v208) >> 16) + 1) >> 16)) << 16) | (v211 - ((v211 * v208 + ((v211 * v208) >> 16) + 1) >> 16));
          if (v542)
          {
            if (*v30)
            {
              v212 = PDAsaturationPDA_11884(*v34, *v30, v212, v210);
            }

            *v34 = v212;
            *v30 = v210;
          }

          else
          {
            *v34 = PDAsaturationPDA_11884(*v34, 0xFFFFu, v212, v210);
          }
        }

        goto LABEL_209;
      case 26:
        v410 = (v56 + 8);
        v411 = v40;
        v167 = v44;
        while (1)
        {
          v412 = *v57;
          if (*v57)
          {
            if (!v44)
            {
              goto LABEL_430;
            }

            v413 = *v167 * v412 + ((*v167 * v412) >> 8) + 1;
            if (v413 >= 0x100)
            {
              break;
            }
          }

LABEL_436:
          ++v57;
          v167 += v44 != 0;
          ++v34;
          v410 += 8;
          v30 = (v30 + v51);
          if (!--v411)
          {
LABEL_453:
            v44 = &v167[v530];
            goto LABEL_513;
          }
        }

        v412 = v413 >> 8;
LABEL_430:
        v414 = *v410;
        v415 = (v412 | (v412 << 8)) ^ 0xFFFF;
        v416 = v415 * v414 + ((v415 * v414) >> 16) + 1;
        v417 = v414 - HIWORD(v416);
        if (v414 != HIWORD(v416))
        {
          v418 = *(v410 - 1);
          v419 = ((HIWORD(v418) - ((v415 * HIWORD(v418) + ((v415 * HIWORD(v418)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v418) - ((WORD2(v418) * v415 + ((WORD2(v418) * v415) >> 16) + 1) >> 16)) << 32) | ((WORD1(v418) - ((WORD1(v418) * v415 + ((WORD1(v418) * v415) >> 16) + 1) >> 16)) << 16) | (v418 - ((v418 * v415 + ((v418 * v415) >> 16) + 1) >> 16));
          if (v542)
          {
            if (*v30)
            {
              v419 = PDAluminosityPDA_11885(v419, v417, *v34, *v30);
            }

            *v34 = v419;
            *v30 = v417;
          }

          else
          {
            *v34 = PDAluminosityPDA_11885(v419, v417, *v34, 0xFFFFu);
          }
        }

        goto LABEL_436;
      case 27:
        v120 = (v56 + 8);
        v121 = v40;
        v122 = v44;
        break;
      default:
        goto LABEL_516;
    }

    while (1)
    {
      v123 = *v57;
      if (*v57)
      {
        if (!v44)
        {
          goto LABEL_128;
        }

        v124 = *v122 * v123 + ((*v122 * v123) >> 8) + 1;
        if (v124 >= 0x100)
        {
          break;
        }
      }

LABEL_134:
      ++v57;
      v122 += v44 != 0;
      ++v34;
      v120 += 8;
      v30 = (v30 + v51);
      if (!--v121)
      {
LABEL_424:
        v44 = &v122[v530];
LABEL_513:
        v34 += v531;
        v30 += v533;
        v38 = v532;
        goto LABEL_514;
      }
    }

    v123 = v124 >> 8;
LABEL_128:
    v125 = *v120;
    v126 = (v123 | (v123 << 8)) ^ 0xFFFF;
    v127 = v126 * v125 + ((v126 * v125) >> 16) + 1;
    v128 = v125 - HIWORD(v127);
    if (v125 != HIWORD(v127))
    {
      v129 = *(v120 - 1);
      v130 = ((HIWORD(v129) - ((v126 * HIWORD(v129) + ((v126 * HIWORD(v129)) >> 16) + 1) >> 16)) << 48) | ((WORD2(v129) - ((WORD2(v129) * v126 + ((WORD2(v129) * v126) >> 16) + 1) >> 16)) << 32) | ((WORD1(v129) - ((WORD1(v129) * v126 + ((WORD1(v129) * v126) >> 16) + 1) >> 16)) << 16) | (v129 - ((v129 * v126 + ((v129 * v126) >> 16) + 1) >> 16));
      if (v542)
      {
        if (*v30)
        {
          v130 = PDAluminosityPDA_11885(*v34, *v30, v130, v128);
        }

        *v34 = v130;
        *v30 = v128;
      }

      else
      {
        *v34 = PDAluminosityPDA_11885(*v34, 0xFFFFu, v130, v128);
      }
    }

    goto LABEL_134;
  }
}

int *cmyk64_DM(int *result, unint64_t a2, int a3)
{
  *result = (a2 - ((a2 * (a3 ^ 0xFFFF) + ((a2 * (a3 ^ 0xFFFFu)) >> 16) + 1) >> 16)) | ((WORD1(a2) - ((WORD1(a2) * (a3 ^ 0xFFFF) + ((WORD1(a2) * (a3 ^ 0xFFFFu)) >> 16) + 1) >> 16)) << 16);
  result[1] = (WORD2(a2) - ((WORD2(a2) * (a3 ^ 0xFFFF) + ((WORD2(a2) * (a3 ^ 0xFFFFu)) >> 16) + 1) >> 16)) | ((HIWORD(a2) - ((HIWORD(a2) * (a3 ^ 0xFFFFu) + ((HIWORD(a2) * (a3 ^ 0xFFFFu)) >> 16) + 1) >> 16)) << 16);
  return result;
}

unsigned int *cmyk64_DAMplusDAM(unsigned int *result, _WORD *a2, unint64_t a3, int a4, int a5, unint64_t a6, int a7, int a8)
{
  v8 = WORD1(a3) * a5 + WORD1(a6) * a8;
  v9 = WORD2(a3) * a5 + WORD2(a6) * a8;
  v10 = a5 * HIWORD(a3) + a8 * HIWORD(a6);
  *result = (v8 + HIWORD(v8) + 1) & 0xFFFF0000 | ((a3 * a5 + a6 * a8 + ((a3 * a5 + a6 * a8) >> 16) + 1) >> 16);
  result[1] = (v10 + HIWORD(v10) + 1) & 0xFFFF0000 | ((v9 + HIWORD(v9) + 1) >> 16);
  *a2 = (a5 * a4 + a8 * a7 + ((a5 * a4 + a8 * a7) >> 16) + 1) >> 16;
  return result;
}

unsigned int *cmyk64_DMplusDM(unsigned int *result, unint64_t a2, int a3, unint64_t a4, int a5)
{
  v5 = WORD1(a2) * a3 + WORD1(a4) * a5;
  v6 = WORD2(a2) * a3 + WORD2(a4) * a5;
  v7 = HIWORD(a2) * a3 + HIWORD(a4) * a5;
  *result = (v5 + HIWORD(v5) + 1) & 0xFFFF0000 | ((a2 * a3 + a4 * a5 + ((a2 * a3 + a4 * a5) >> 16) + 1) >> 16);
  result[1] = (v7 + HIWORD(v7) + 1) & 0xFFFF0000 | ((v6 + HIWORD(v6) + 1) >> 16);
  return result;
}

void *cmyk64_DAplusDAM(void *result, _WORD *a2, uint64_t a3, __int16 a4, unint64_t a5, int a6, int a7)
{
  *result = ((WORD1(a5) * a7 + ((WORD1(a5) * a7) >> 16) + 1) & 0xFFFF0000) + a3 + ((a5 * a7 + ((a5 * a7) >> 16) + 1) >> 16) + (((WORD2(a5) * a7 + ((WORD2(a5) * a7) >> 16) + 1) >> 16) << 32) + ((a7 * HIWORD(a5) + ((a7 * HIWORD(a5)) >> 16) + 1) >> 16 << 48);
  *a2 = a4 + ((a7 * a6 + ((a7 * a6) >> 16) + 1) >> 16);
  return result;
}

int *cmyk64_DAplusdDA(int *result, __int16 *a2, unint64_t a3, int a4, unint64_t a5, int a6)
{
  v6 = a4 - (WORD1(a3) + WORD1(a5)) + a6;
  v7 = a4 + a6 - (WORD2(a3) + WORD2(a5));
  v8 = a4 - (HIWORD(a3) + HIWORD(a5)) + a6;
  if (v6 >= 0xFFFF)
  {
    LOWORD(v6) = -1;
  }

  if (v7 >= 0xFFFF)
  {
    LOWORD(v7) = -1;
  }

  if (v8 >= 0xFFFF)
  {
    LOWORD(v8) = -1;
  }

  if ((a4 + a6) >= 0xFFFF)
  {
    v9 = -1;
  }

  else
  {
    v9 = a4 + a6;
  }

  *result = (v9 - v6) | ((v9 - v6) << 16);
  result[1] = (v9 - v7) | ((v9 - v8) << 16);
  *a2 = v9;
  return result;
}

int *cmyk64_DplusdDA(int *result, unint64_t a2, unint64_t a3, int a4)
{
  v4 = a4 - WORD1(a3) + (~a2 >> 16);
  v5 = a4 - WORD2(a3) + ~WORD2(a2);
  if (v4 >= 0xFFFF)
  {
    LOWORD(v4) = -1;
  }

  v6 = ~v4;
  if (v5 >= 0xFFFF)
  {
    LOWORD(v5) = -1;
  }

  v7 = v6 | (v6 << 16);
  v8 = (HIWORD(a2) | 0xFFFF0000) - a4 + HIWORD(a3);
  if (v8 <= -65536)
  {
    LOWORD(v8) = 0;
  }

  *result = v7;
  result[1] = (v5 | (v8 << 16)) ^ 0xFFFF;
  return result;
}

unsigned int *cmyk64_DApluslDA(unsigned int *result, _WORD *a2, unint64_t a3, int a4, unint64_t a5, int a6)
{
  v6 = a5 + a3;
  v7 = WORD1(a5) + WORD1(a3);
  v8 = WORD2(a5) + WORD2(a3);
  v9 = HIWORD(a5) + HIWORD(a3);
  v10 = a6 + a4;
  if (v6 >= 0xFFFF)
  {
    v6 = 0xFFFF;
  }

  if (v7 >= 0xFFFF)
  {
    v7 = 0xFFFF;
  }

  if (v8 >= 0xFFFF)
  {
    v8 = 0xFFFF;
  }

  if (v9 >= 0xFFFF)
  {
    v9 = 0xFFFF;
  }

  if (v10 >= 0xFFFF)
  {
    LOWORD(v10) = -1;
  }

  *result = v6 | (v7 << 16);
  result[1] = v8 | (v9 << 16);
  *a2 = v10;
  return result;
}

unsigned int *cmyk64_DpluslD(unsigned int *result, unint64_t a2, unint64_t a3)
{
  v3 = a3 + a2;
  v4 = WORD1(a3) + WORD1(a2);
  v5 = WORD2(a3) + WORD2(a2);
  v6 = HIWORD(a3) + HIWORD(a2);
  if (v3 >= 0xFFFF)
  {
    v3 = 0xFFFF;
  }

  if (v4 >= 0xFFFF)
  {
    v4 = 0xFFFF;
  }

  if (v5 >= 0xFFFF)
  {
    v5 = 0xFFFF;
  }

  if (v6 >= 0xFFFF)
  {
    v6 = 0xFFFF;
  }

  *result = v3 | (v4 << 16);
  result[1] = v5 | (v6 << 16);
  return result;
}

unint64_t PDAmultiplyPDA_11872(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v4 = a4;
  v5 = a4 - a3;
  v6 = a4 - WORD1(a3);
  v7 = a4 - WORD2(a3);
  v8 = a4 - HIWORD(a3);
  v9 = a4 == 0xFFFF;
  v10 = a4 ^ 0xFFFF;
  v11 = v5 + (a4 ^ 0xFFFF);
  v12 = v6 + v10;
  v13 = v7 + v10;
  v14 = v8 + v10;
  if (v9)
  {
    v11 = v5;
    v12 = v6;
    v13 = v7;
    v14 = v8;
  }

  v15 = v14 * (a2 - HIWORD(a1));
  v16 = v13 * (a2 - WORD2(a1));
  v17 = v12 * (a2 - WORD1(a1));
  v18 = v11 * (a2 - a1);
  v19 = v18 + v5 * (a2 ^ 0xFFFF);
  v20 = v17 + v6 * (a2 ^ 0xFFFF);
  v21 = v16 + v7 * (a2 ^ 0xFFFF);
  v22 = v15 + v8 * (a2 ^ 0xFFFF);
  if (a2 != 0xFFFF)
  {
    v18 = v19;
    v17 = v20;
    v16 = v21;
    v15 = v22;
  }

  v23 = 0xFFFF * (v4 + a2) - v4 * a2;
  if (v18 <= 4294868992)
  {
    v24 = v18 + 0x8000;
  }

  else
  {
    v24 = 4294868992;
  }

  v25 = (v24 >> 16) + v24;
  if (v17 <= 4294868992)
  {
    v26 = v17 + 0x8000;
  }

  else
  {
    v26 = 4294868992;
  }

  v27 = (v26 >> 16) + v26;
  if (v16 <= 4294868992)
  {
    v28 = v16 + 0x8000;
  }

  else
  {
    v28 = 4294868992;
  }

  v29 = (v28 >> 16) + v28;
  if (v15 <= 4294868992)
  {
    v30 = v15 + 0x8000;
  }

  else
  {
    v30 = 4294868992;
  }

  v31 = (v30 >> 16) + v30;
  if (v23 <= 4294868992)
  {
    v32 = v23 + 0x8000;
  }

  else
  {
    v32 = 4294868992;
  }

  return ((((v32 + (v32 >> 16)) >> 16) - HIWORD(v29)) << 32) | ((((v32 + (v32 >> 16)) >> 16) - HIWORD(v31)) << 48) | ((((v32 + (v32 >> 16)) >> 16) - HIWORD(v27)) << 16) | (((v32 + (v32 >> 16)) >> 16) - HIWORD(v25));
}

unint64_t PDAscreenPDA_11873(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v4 = (a4 - a3) * (0xFFFF - (a2 - a1)) - (a2 - a1) + ((a2 - a1) << 16);
  v5 = (a4 - WORD1(a3)) * (0xFFFF - (a2 - WORD1(a1))) - (a2 - WORD1(a1)) + ((a2 - WORD1(a1)) << 16);
  v6 = (a4 - WORD2(a3)) * (0xFFFF - (a2 - WORD2(a1))) - (a2 - WORD2(a1)) + ((a2 - WORD2(a1)) << 16);
  v7 = (a4 - HIWORD(a3)) * (0xFFFF - (a2 - HIWORD(a1))) - (a2 - HIWORD(a1)) + ((a2 - HIWORD(a1)) << 16);
  v8 = 0xFFFF * (a4 + a2) - a4 * a2;
  if (v4 <= 4294868992)
  {
    v9 = v4 + 0x8000;
  }

  else
  {
    v9 = 4294868992;
  }

  v10 = (v9 >> 16) + v9;
  if (v5 <= 4294868992)
  {
    v11 = v5 + 0x8000;
  }

  else
  {
    v11 = 4294868992;
  }

  v12 = (v11 >> 16) + v11;
  if (v6 <= 4294868992)
  {
    v13 = v6 + 0x8000;
  }

  else
  {
    v13 = 4294868992;
  }

  v14 = (v13 >> 16) + v13;
  if (v7 <= 4294868992)
  {
    v15 = v7 + 0x8000;
  }

  else
  {
    v15 = 4294868992;
  }

  v16 = (v15 >> 16) + v15;
  if (v8 <= 4294868992)
  {
    v17 = v8 + 0x8000;
  }

  else
  {
    v17 = 4294868992;
  }

  return ((((v17 + (v17 >> 16)) >> 16) - HIWORD(v16)) << 48) | ((((v17 + (v17 >> 16)) >> 16) - HIWORD(v14)) << 32) | ((((v17 + (v17 >> 16)) >> 16) - HIWORD(v12)) << 16) | (((v17 + (v17 >> 16)) >> 16) - HIWORD(v10));
}

unint64_t PDAoverlayPDA_11874(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v4 = a2;
  v5 = a2 - WORD2(a1);
  v6 = a2 - HIWORD(a1);
  if ((a4 - a3) >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = a4 - a3;
  }

  if ((a2 - a1) >= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = a2 - a1;
  }

  v9 = 2 * v8 * v7;
  if ((a4 - WORD1(a3)) >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a4 - WORD1(a3);
  }

  if ((a2 - WORD1(a1)) >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = a2 - WORD1(a1);
  }

  if ((a4 - WORD2(a3)) >= a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = a4 - WORD2(a3);
  }

  if (v5 >= a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = v5;
  }

  if ((a4 - HIWORD(a3)) >= a4)
  {
    v14 = a4;
  }

  else
  {
    v14 = a4 - HIWORD(a3);
  }

  if (v6 >= a2)
  {
    v15 = a2;
  }

  else
  {
    v15 = v6;
  }

  v16 = a4 * a2;
  v17 = (a2 + 1) >> 1;
  if (v8 >= v17)
  {
    v18 = v7 * (a2 + 0xFFFFLL) + (a4 + 0xFFFFLL) * v8 - (v16 + v9);
  }

  else
  {
    v18 = (a4 ^ 0xFFFFLL) * v8 + v7 * (a2 ^ 0xFFFFLL) + v9;
  }

  v19 = 2 * v11 * v10;
  if (v11 >= v17)
  {
    v20 = v10 * (a2 + 0xFFFFLL) + (a4 + 0xFFFFLL) * v11 - (v16 + v19);
  }

  else
  {
    v20 = (a4 ^ 0xFFFFLL) * v11 + v10 * (a2 ^ 0xFFFFLL) + v19;
  }

  v21 = 2 * v13 * v12;
  if (v13 >= v17)
  {
    v22 = v12 * (v4 + 0xFFFF) + (a4 + 0xFFFFLL) * v13 - (v16 + v21);
  }

  else
  {
    v22 = (a4 ^ 0xFFFFLL) * v13 + v12 * (v4 ^ 0xFFFF) + v21;
  }

  v23 = 2 * v15 * v14;
  if (v15 >= v17)
  {
    v24 = v14 * (v4 + 0xFFFF) + (a4 + 0xFFFFLL) * v15 - (v16 + v23);
  }

  else
  {
    v24 = (a4 ^ 0xFFFFLL) * v15 + v14 * (v4 ^ 0xFFFF) + v23;
  }

  v25 = 0xFFFF * (a4 + v4) - v16;
  v26 = v18 + 0x8000;
  if (v18 > 4294868992)
  {
    v26 = 4294868992;
  }

  v27 = (v26 >> 16) + v26;
  v28.i64[0] = v22;
  v28.i64[1] = v20;
  v29 = vdupq_n_s64(0xFFFE8000uLL);
  v30 = vcgtq_s64(v28, v29);
  v31 = vaddq_s64(v28, vdupq_n_s64(0x8000uLL));
  if (v24 <= 4294868992)
  {
    v32 = v24 + 0x8000;
  }

  else
  {
    v32 = 4294868992;
  }

  v33 = (v32 >> 16) + v32;
  if (v25 <= 4294868992)
  {
    v34 = v25 + 0x8000;
  }

  else
  {
    v34 = 4294868992;
  }

  v35 = (v34 + (v34 >> 16)) >> 16;
  v36 = vbslq_s8(v30, v29, v31);
  v37 = vandq_s8(vshlq_u64(vsubq_s64(vdupq_n_s64(v35), vshrq_n_u64(vsraq_n_u64(v36, v36, 0x10uLL), 0x10uLL)), xmmword_18439CBE0), xmmword_18439CBF0);
  return v37.i64[0] | ((v35 - HIWORD(v33)) << 48) | (v35 - HIWORD(v27)) | v37.i64[1];
}

unint64_t PDAlightenPDA_11875(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v4 = a2 - a1;
  v5 = a2 - WORD1(a1);
  v6 = a2 - WORD2(a1);
  v7 = a2 - HIWORD(a1);
  v8 = a4 - a3;
  v9 = a4 - WORD1(a3);
  v10 = a4 - WORD2(a3);
  v11 = a4 - HIWORD(a3);
  if (v8 >= a4)
  {
    v8 = a4;
  }

  if (v4 >= a2)
  {
    v4 = a2;
  }

  v12 = v4 * a4;
  if (v8 * a2 > v12)
  {
    v12 = v8 * a2;
  }

  if (v9 >= a4)
  {
    v9 = a4;
  }

  if (v5 >= a2)
  {
    v5 = a2;
  }

  v13 = v5 * a4;
  if (v9 * a2 > v13)
  {
    v13 = v9 * a2;
  }

  if (v10 >= a4)
  {
    v10 = a4;
  }

  if (v6 >= a2)
  {
    v6 = a2;
  }

  v14 = v6 * a4;
  if (v10 * a2 > v14)
  {
    v14 = v10 * a2;
  }

  if (v11 >= a4)
  {
    v11 = a4;
  }

  if (v7 >= a2)
  {
    v7 = a2;
  }

  v15 = v7 * a4;
  if (v11 * a2 > v15)
  {
    v15 = v11 * a2;
  }

  v16 = v12 + (a4 ^ 0xFFFFLL) * v4;
  v17 = v13 + (a4 ^ 0xFFFFLL) * v5;
  v18 = v14 + (a4 ^ 0xFFFFLL) * v6;
  v19 = v15 + (a4 ^ 0xFFFFLL) * v7;
  if (a4 == 0xFFFF)
  {
    v19 = v15;
    v18 = v14;
    v17 = v13;
    v16 = v12;
  }

  v20 = v16 + v8 * (a2 ^ 0xFFFFLL);
  v21 = v17 + v9 * (a2 ^ 0xFFFFLL);
  v22 = v18 + v10 * (a2 ^ 0xFFFFLL);
  v23 = v19 + v11 * (a2 ^ 0xFFFFLL);
  if (a2 != 0xFFFF)
  {
    v19 = v23;
    v18 = v22;
    v17 = v21;
    v16 = v20;
  }

  v24 = 0xFFFF * (a4 + a2) - a4 * a2;
  v25 = v16 + 0x8000;
  if (v16 > 4294868992)
  {
    v25 = 4294868992;
  }

  v26 = (v25 >> 16) + v25;
  v27 = v17 + 0x8000;
  if (v17 > 4294868992)
  {
    v27 = 4294868992;
  }

  v28 = (v27 >> 16) + v27;
  if (v18 <= 4294868992)
  {
    v29 = v18 + 0x8000;
  }

  else
  {
    v29 = 4294868992;
  }

  v30 = (v29 >> 16) + v29;
  v31 = v19 + 0x8000;
  if (v19 > 4294868992)
  {
    v31 = 4294868992;
  }

  v32 = (v31 >> 16) + v31;
  if (v24 <= 4294868992)
  {
    v33 = v24 + 0x8000;
  }

  else
  {
    v33 = 4294868992;
  }

  return ((((v33 + (v33 >> 16)) >> 16) - HIWORD(v32)) << 48) | ((((v33 + (v33 >> 16)) >> 16) - HIWORD(v30)) << 32) | ((((v33 + (v33 >> 16)) >> 16) - HIWORD(v28)) << 16) | (((v33 + (v33 >> 16)) >> 16) - HIWORD(v26));
}

unint64_t PDAdarkenPDA_11876(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v4 = a2 - a1;
  v5 = a2 - WORD1(a1);
  v6 = a2 - WORD2(a1);
  v7 = a2 - HIWORD(a1);
  v8 = a4 - a3;
  v9 = a4 - WORD1(a3);
  v10 = a4 - WORD2(a3);
  v11 = a4 - HIWORD(a3);
  if (v8 >= a4)
  {
    v8 = a4;
  }

  if (v4 >= a2)
  {
    v4 = a2;
  }

  v12 = v4 * a4;
  if (v8 * a2 < v12)
  {
    v12 = v8 * a2;
  }

  if (v9 >= a4)
  {
    v9 = a4;
  }

  if (v5 >= a2)
  {
    v5 = a2;
  }

  v13 = v5 * a4;
  if (v9 * a2 < v13)
  {
    v13 = v9 * a2;
  }

  if (v10 >= a4)
  {
    v10 = a4;
  }

  if (v6 >= a2)
  {
    v6 = a2;
  }

  v14 = v6 * a4;
  if (v10 * a2 < v14)
  {
    v14 = v10 * a2;
  }

  if (v11 >= a4)
  {
    v11 = a4;
  }

  if (v7 >= a2)
  {
    v7 = a2;
  }

  v15 = v7 * a4;
  if (v11 * a2 < v15)
  {
    v15 = v11 * a2;
  }

  v16 = v12 + (a4 ^ 0xFFFFLL) * v4;
  v17 = v13 + (a4 ^ 0xFFFFLL) * v5;
  v18 = v14 + (a4 ^ 0xFFFFLL) * v6;
  v19 = v15 + (a4 ^ 0xFFFFLL) * v7;
  if (a4 == 0xFFFF)
  {
    v19 = v15;
    v18 = v14;
    v17 = v13;
    v16 = v12;
  }

  v20 = v16 + v8 * (a2 ^ 0xFFFFLL);
  v21 = v17 + v9 * (a2 ^ 0xFFFFLL);
  v22 = v18 + v10 * (a2 ^ 0xFFFFLL);
  v23 = v19 + v11 * (a2 ^ 0xFFFFLL);
  if (a2 != 0xFFFF)
  {
    v19 = v23;
    v18 = v22;
    v17 = v21;
    v16 = v20;
  }

  v24 = 0xFFFF * (a4 + a2) - a4 * a2;
  v25 = v16 + 0x8000;
  if (v16 > 4294868992)
  {
    v25 = 4294868992;
  }

  v26 = (v25 >> 16) + v25;
  v27 = v17 + 0x8000;
  if (v17 > 4294868992)
  {
    v27 = 4294868992;
  }

  v28 = (v27 >> 16) + v27;
  if (v18 <= 4294868992)
  {
    v29 = v18 + 0x8000;
  }

  else
  {
    v29 = 4294868992;
  }

  v30 = (v29 >> 16) + v29;
  v31 = v19 + 0x8000;
  if (v19 > 4294868992)
  {
    v31 = 4294868992;
  }

  v32 = (v31 >> 16) + v31;
  if (v24 <= 4294868992)
  {
    v33 = v24 + 0x8000;
  }

  else
  {
    v33 = 4294868992;
  }

  return ((((v33 + (v33 >> 16)) >> 16) - HIWORD(v32)) << 48) | ((((v33 + (v33 >> 16)) >> 16) - HIWORD(v30)) << 32) | ((((v33 + (v33 >> 16)) >> 16) - HIWORD(v28)) << 16) | (((v33 + (v33 >> 16)) >> 16) - HIWORD(v26));
}

unint64_t PDAcolordodgePDA_11877(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v4 = 4294836225;
  v5 = a2 - WORD1(a1);
  v6 = a4 * a4;
  if ((a2 - a1) >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a2 - a1;
  }

  if (v7)
  {
    v8 = 4294836225;
    if (a3)
    {
      v8 = (v6 * v7) / a3;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = a3 >> 16;
  v10 = HIDWORD(a3);
  if (v5 >= a2)
  {
    v5 = a2;
  }

  v11 = a2 - WORD2(a1);
  if (v5)
  {
    v12 = 4294836225;
    if (WORD1(a3))
    {
      v12 = (v6 * v5) / WORD1(a3);
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = a2 - HIWORD(a1);
  v14 = HIWORD(a3);
  if (v11 >= a2)
  {
    v15 = a2;
  }

  else
  {
    v15 = v11;
  }

  if (v15)
  {
    v16 = 4294836225;
    if (WORD2(a3))
    {
      v16 = (v6 * v15) / WORD2(a3);
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = a4 - a3;
  v18 = a4 - v9;
  if (v13 >= a2)
  {
    v19 = a2;
  }

  else
  {
    v19 = v13;
  }

  v20 = a4 - v10;
  if (v19)
  {
    if (v14)
    {
      v4 = (v6 * v19) / v14;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a4 != 0xFFFF)
  {
    v8 += (a4 ^ 0xFFFFLL) * v7;
    v12 += (a4 ^ 0xFFFFLL) * v5;
    v16 += (a4 ^ 0xFFFFLL) * v15;
    v4 += (a4 ^ 0xFFFFLL) * v19;
  }

  if (a2 == 0xFFFF)
  {
    v21 = v16;
  }

  else
  {
    v4 += (a4 - v14) * (a2 ^ 0xFFFF);
    v21 = v16 + v20 * (a2 ^ 0xFFFF);
  }

  if (a2 != 0xFFFF)
  {
    v12 += v18 * (a2 ^ 0xFFFF);
    v8 += v17 * (a2 ^ 0xFFFF);
  }

  v22 = 0xFFFF * (a4 + a2) - a4 * a2;
  if (v8 >= v22)
  {
    v8 = 0xFFFF * (a4 + a2) - a4 * a2;
  }

  if (v12 >= v22)
  {
    v23 = 0xFFFF * (a4 + a2) - a4 * a2;
  }

  else
  {
    v23 = v12;
  }

  if (v21 >= v22)
  {
    v21 = 0xFFFF * (a4 + a2) - a4 * a2;
  }

  if (v4 >= v22)
  {
    v4 = 0xFFFF * (a4 + a2) - a4 * a2;
  }

  if (v21 <= 4294868992)
  {
    v24 = v21 + 0x8000;
  }

  else
  {
    v24 = 4294868992;
  }

  v25 = (v24 >> 16) + v24;
  if (v23 <= 4294868992)
  {
    v26 = v23 + 0x8000;
  }

  else
  {
    v26 = 4294868992;
  }

  v27 = (v26 >> 16) + v26;
  if (v8 <= 4294868992)
  {
    v28 = v8 + 0x8000;
  }

  else
  {
    v28 = 4294868992;
  }

  v29 = (v28 >> 16) + v28;
  if (v4 <= 4294868992)
  {
    v30 = v4 + 0x8000;
  }

  else
  {
    v30 = 4294868992;
  }

  v31 = (v30 >> 16) + v30;
  if (v22 <= 4294868992)
  {
    v32 = v22 + 0x8000;
  }

  else
  {
    v32 = 4294868992;
  }

  return ((((v32 + (v32 >> 16)) >> 16) - HIWORD(v31)) << 48) | ((((v32 + (v32 >> 16)) >> 16) - HIWORD(v25)) << 32) | ((((v32 + (v32 >> 16)) >> 16) - HIWORD(v27)) << 16) | (((v32 + (v32 >> 16)) >> 16) - HIWORD(v29));
}

unint64_t PDAcolorburnPDA_11878(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v4 = a2;
  v5 = a2 - HIWORD(a1);
  v6 = a4;
  v7 = a4 - WORD1(a3);
  v8 = a4 - HIWORD(a3);
  v9 = a4 * a2;
  if ((a4 - a3) >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a4 - a3;
  }

  if ((a2 - a1) >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = a2 - a1;
  }

  if (v7 >= a4)
  {
    v7 = a4;
  }

  if ((a2 - WORD1(a1)) >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = a2 - WORD1(a1);
  }

  if ((a4 - WORD2(a3)) >= a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = a4 - WORD2(a3);
  }

  if ((a2 - WORD2(a1)) >= a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = a2 - WORD2(a1);
  }

  if (v8 >= a4)
  {
    v15 = a4;
  }

  else
  {
    v15 = v8;
  }

  if (v5 >= a2)
  {
    v5 = a2;
  }

  v20 = a4 == 0xFFFF;
  v16 = v9 + (a4 ^ 0xFFFFLL) * v12;
  v17 = v9 + (v6 ^ 0xFFFF) * v14;
  v18 = v9 + (v6 ^ 0xFFFF) * v5;
  if (v20)
  {
    v18 = v9;
    v17 = v9;
    v16 = v9;
    v19 = v9;
  }

  else
  {
    v19 = v9 + (v6 ^ 0xFFFF) * v11;
  }

  v20 = a2 == 0xFFFF;
  v21 = v19 + v10 * (a2 ^ 0xFFFFLL);
  if (v20)
  {
    v22 = v18;
  }

  else
  {
    v22 = v18 + v15 * (v4 ^ 0xFFFF);
  }

  if (v20)
  {
    v23 = v17;
  }

  else
  {
    v23 = v17 + v13 * (v4 ^ 0xFFFF);
  }

  if (v20)
  {
    v24 = v16;
  }

  else
  {
    v24 = v16 + v7 * (v4 ^ 0xFFFF);
  }

  if (v20)
  {
    v21 = v19;
  }

  v25 = (v21 - (v6 * v6 * (v4 - v11)) / v10) & ~((v21 - (v6 * v6 * (v4 - v11)) / v10) >> 63);
  if (!v10)
  {
    v25 = 0;
  }

  if (a1)
  {
    v21 = v25;
  }

  if (!WORD1(a1))
  {
LABEL_44:
    if (WORD2(a1))
    {
      goto LABEL_45;
    }

    goto LABEL_50;
  }

  if (v7)
  {
    v26 = (v6 * v6 * (v4 - v12)) / v7;
    v24 = (v24 - v26) & ~((v24 - v26) >> 63);
    goto LABEL_44;
  }

  v24 = 0;
  if (WORD2(a1))
  {
LABEL_45:
    if (v13)
    {
      v27 = v23 - (v6 * v6 * (v4 - v14)) / v13;
      v23 = v27 & ~(v27 >> 63);
    }

    else
    {
      v23 = 0;
    }
  }

LABEL_50:
  if (v15)
  {
    v28 = (v22 - (v6 * v6 * (v4 - v5)) / v15) & ~((v22 - (v6 * v6 * (v4 - v5)) / v15) >> 63);
  }

  else
  {
    v28 = 0;
  }

  if (!HIWORD(a1))
  {
    v28 = v22;
  }

  v29 = 0xFFFF * (v6 + v4) - v9;
  v30 = v21 + 0x8000;
  if (v21 > 4294868992)
  {
    v30 = 4294868992;
  }

  v31 = (v30 >> 16) + v30;
  v32.i64[0] = v23;
  v32.i64[1] = v24;
  v33 = vdupq_n_s64(0xFFFE8000uLL);
  v34 = vcgtq_s64(v32, v33);
  v35 = vaddq_s64(v32, vdupq_n_s64(0x8000uLL));
  if (v28 <= 4294868992)
  {
    v36 = v28 + 0x8000;
  }

  else
  {
    v36 = 4294868992;
  }

  v37 = (v36 >> 16) + v36;
  if (v29 <= 4294868992)
  {
    v38 = v29 + 0x8000;
  }

  else
  {
    v38 = 4294868992;
  }

  v39 = (v38 + (v38 >> 16)) >> 16;
  v40 = vbslq_s8(v34, v33, v35);
  v41 = vandq_s8(vshlq_u64(vsubq_s64(vdupq_n_s64(v39), vshrq_n_u64(vsraq_n_u64(v40, v40, 0x10uLL), 0x10uLL)), xmmword_18439CBE0), xmmword_18439CBF0);
  return v41.i64[0] | ((v39 - HIWORD(v37)) << 48) | (v39 - HIWORD(v31)) | v41.i64[1];
}

unint64_t PDAhardlightPDA_11879(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v4 = a2;
  v5 = a2 - WORD1(a1);
  v6 = a2 - WORD2(a1);
  v7 = a2 - HIWORD(a1);
  v8 = a4;
  v9 = a4 - WORD2(a3);
  v10 = a4 - HIWORD(a3);
  if ((a4 - a3) >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = a4 - a3;
  }

  if ((a2 - a1) >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = a2 - a1;
  }

  v13 = 2 * v12 * v11;
  if ((a4 - WORD1(a3)) >= a4)
  {
    v14 = a4;
  }

  else
  {
    v14 = a4 - WORD1(a3);
  }

  if (v5 >= a2)
  {
    v15 = a2;
  }

  else
  {
    v15 = v5;
  }

  v16 = 2 * v15 * v14;
  if (v9 >= a4)
  {
    v17 = a4;
  }

  else
  {
    v17 = v9;
  }

  if (v6 >= a2)
  {
    v18 = a2;
  }

  else
  {
    v18 = v6;
  }

  v19 = 2 * v18 * v17;
  if (v10 >= a4)
  {
    v20 = a4;
  }

  else
  {
    v20 = v10;
  }

  if (v7 >= a2)
  {
    v21 = a2;
  }

  else
  {
    v21 = v7;
  }

  v22 = 2 * v21 * v20;
  v23 = a4 * a2;
  v24 = (a4 + 1) >> 1;
  if (v11 <= v24)
  {
    v25 = (a4 ^ 0xFFFFLL) * v12 + v11 * (a2 ^ 0xFFFFLL) + v13;
  }

  else
  {
    v25 = v11 * (a2 + 0xFFFFLL) + (a4 + 0xFFFFLL) * v12 - (v23 + v13);
  }

  v26 = a4 ^ 0xFFFFLL;
  v27 = v4 ^ 0xFFFF;
  v28 = (v8 ^ 0xFFFF) * v15 + v14 * (v4 ^ 0xFFFF) + v16;
  v29 = v14 * (v4 + 0xFFFF) + (v8 + 0xFFFF) * v15 - (v23 + v16);
  if (v14 > v24)
  {
    v30 = v29;
  }

  else
  {
    v30 = v28;
  }

  v31 = v26 * v18 + v17 * v27 + v19;
  v32 = v17 * (v4 + 0xFFFF) + (v8 + 0xFFFF) * v18 - (v23 + v19);
  if (v17 > v24)
  {
    v33 = v32;
  }

  else
  {
    v33 = v31;
  }

  v34 = v26 * v21 + v20 * v27 + v22;
  v35 = v20 * (v4 + 0xFFFF) + (v8 + 0xFFFF) * v21 - (v23 + v22);
  if (v20 > v24)
  {
    v36 = v35;
  }

  else
  {
    v36 = v34;
  }

  v37 = 0xFFFF * (v8 + v4) - v23;
  v38 = v25 + 0x8000;
  if (v25 > 4294868992)
  {
    v38 = 4294868992;
  }

  v39 = (v38 >> 16) + v38;
  v40.i64[0] = v33;
  v40.i64[1] = v30;
  v41 = vdupq_n_s64(0xFFFE8000uLL);
  v42 = vcgtq_s64(v40, v41);
  v43 = vaddq_s64(v40, vdupq_n_s64(0x8000uLL));
  if (v36 <= 4294868992)
  {
    v44 = v36 + 0x8000;
  }

  else
  {
    v44 = 4294868992;
  }

  v45 = (v44 >> 16) + v44;
  if (v37 <= 4294868992)
  {
    v46 = v37 + 0x8000;
  }

  else
  {
    v46 = 4294868992;
  }

  v47 = (v46 + (v46 >> 16)) >> 16;
  v48 = vbslq_s8(v42, v41, v43);
  v49 = vandq_s8(vshlq_u64(vsubq_s64(vdupq_n_s64(v47), vshrq_n_u64(vsraq_n_u64(v48, v48, 0x10uLL), 0x10uLL)), xmmword_18439CBE0), xmmword_18439CBF0);
  return v49.i64[0] | ((v47 - HIWORD(v45)) << 48) | (v47 - HIWORD(v39)) | v49.i64[1];
}

unint64_t PDAsoftlightPDA_11880(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v4 = a2 - WORD1(a1);
  v5 = a2 - WORD2(a1);
  v6 = a2 - HIWORD(a1);
  v7 = a4 - WORD1(a3);
  v8 = a4 - WORD2(a3);
  if ((a4 - a3) >= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = a4 - a3;
  }

  if ((a2 - a1) >= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = a2 - a1;
  }

  v11 = a4 - HIWORD(a3);
  if (a2)
  {
    v12 = (v10 * v10 * (2 * v9 - a4)) / a2;
    v13 = (2 * v10 * v9 - v12) & ~((2 * v10 * v9 - v12) >> 63);
    if (v7 >= a4)
    {
      v7 = a4;
    }

    if (v4 >= a2)
    {
      v14 = a2;
    }

    else
    {
      v14 = a2 - WORD1(a1);
    }

    v15 = (v14 * v14 * (2 * v7 - a4)) / a2;
    v16 = (2 * v14 * v7 - v15) & ~((2 * v14 * v7 - v15) >> 63);
    if (v8 >= a4)
    {
      v8 = a4;
    }

    if (v5 >= a2)
    {
      v5 = a2;
    }

    v17 = v5 * v5 * (2 * v8 - a4) / a2;
    v18 = (2 * v5 * v8 - v17) & ~((2 * v5 * v8 - v17) >> 63);
    if (v11 >= a4)
    {
      v11 = a4;
    }

    if (v6 >= a2)
    {
      v6 = a2;
    }

    v19 = v6 * v6 * (2 * v11 - a4) / a2;
    v20 = (2 * v6 * v11 - v19) & ~((2 * v6 * v11 - v19) >> 63);
  }

  else
  {
    v18 = 0;
    v13 = 0;
    v16 = 0;
    v20 = 0;
    if (v7 >= a4)
    {
      v7 = a4;
    }

    if (v4 >= 0)
    {
      v14 = 0;
    }

    else
    {
      v14 = -WORD1(a1);
    }

    if (v8 >= a4)
    {
      v8 = a4;
    }

    if (v5 >= 0)
    {
      v5 = 0;
    }

    if (v11 >= a4)
    {
      v11 = a4;
    }

    if (v6 >= 0)
    {
      v6 = 0;
    }
  }

  if (a4 != 0xFFFF)
  {
    v13 += (a4 ^ 0xFFFFLL) * v10;
    v16 += v14 * (a4 ^ 0xFFFFLL);
    v18 += v5 * (a4 ^ 0xFFFFLL);
    v20 += v6 * (a4 ^ 0xFFFFLL);
  }

  if (a2 != 0xFFFF)
  {
    v13 += v9 * (a2 ^ 0xFFFFLL);
    v16 += v7 * (a2 ^ 0xFFFFLL);
    v18 += v8 * (a2 ^ 0xFFFFLL);
    v20 += v11 * (a2 ^ 0xFFFFLL);
  }

  v21 = 0xFFFF * (a4 + a2) - a4 * a2;
  v22 = v13 + 0x8000;
  if (v13 > 4294868992)
  {
    v22 = 4294868992;
  }

  v23 = (v22 >> 16) + v22;
  v24 = v16 + 0x8000;
  if (v16 > 4294868992)
  {
    v24 = 4294868992;
  }

  v25 = (v24 >> 16) + v24;
  v26 = v18 + 0x8000;
  if (v18 > 4294868992)
  {
    v26 = 4294868992;
  }

  v27 = (v26 >> 16) + v26;
  v28 = v20 + 0x8000;
  if (v20 > 4294868992)
  {
    v28 = 4294868992;
  }

  v29 = (v28 >> 16) + v28;
  if (v21 <= 4294868992)
  {
    v30 = v21 + 0x8000;
  }

  else
  {
    v30 = 4294868992;
  }

  return ((((v30 + (v30 >> 16)) >> 16) - HIWORD(v29)) << 48) | ((((v30 + (v30 >> 16)) >> 16) - HIWORD(v27)) << 32) | ((((v30 + (v30 >> 16)) >> 16) - HIWORD(v25)) << 16) | (((v30 + (v30 >> 16)) >> 16) - HIWORD(v23));
}

unint64_t PDAdifferencePDA_11881(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v4 = a2 - a1;
  v5 = a2 - WORD1(a1);
  v6 = a2 - WORD2(a1);
  v7 = a2 - HIWORD(a1);
  v8 = a4 - a3;
  v9 = a4 - WORD1(a3);
  v10 = a4 - WORD2(a3);
  v11 = a4 - HIWORD(a3);
  if (v8 >= a4)
  {
    v8 = a4;
  }

  if (v4 >= a2)
  {
    v4 = a2;
  }

  v12 = v8 + v4;
  v13 = v4 * a4;
  v14 = v8 * a2;
  v16 = v13 - v14;
  v15 = v13 - v14 < 0;
  v17 = 0xFFFF * v12 - v14 - v13;
  if (v15)
  {
    v18 = -v16;
  }

  else
  {
    v18 = v16;
  }

  v19 = v17 + v18;
  if (v9 >= a4)
  {
    v9 = a4;
  }

  if (v5 >= a2)
  {
    v5 = a2;
  }

  v20 = v9 + v5;
  v21 = v5 * a4;
  v22 = v9 * a2;
  v23 = v21 - v22;
  v15 = v21 - v22 < 0;
  v24 = 0xFFFF * v20 - v22 - v21;
  if (v15)
  {
    v25 = -v23;
  }

  else
  {
    v25 = v23;
  }

  v26 = v24 + v25;
  if (v10 >= a4)
  {
    v27 = a4;
  }

  else
  {
    v27 = v10;
  }

  if (v6 >= a2)
  {
    v6 = a2;
  }

  v28 = v27 + v6;
  v29 = v6 * a4;
  v30 = v27 * a2;
  v31 = v29 - v30;
  v15 = v29 - v30 < 0;
  v32 = 0xFFFF * v28 - v30 - v29;
  if (v15)
  {
    v33 = -v31;
  }

  else
  {
    v33 = v31;
  }

  v34 = v32 + v33;
  if (v11 >= a4)
  {
    v35 = a4;
  }

  else
  {
    v35 = v11;
  }

  if (v7 >= a2)
  {
    v7 = a2;
  }

  v36 = v35 + v7;
  v37 = v7 * a4;
  v38 = v35 * a2;
  v39 = v37 - v38;
  v15 = v37 - v38 < 0;
  v40 = 0xFFFF * v36 - v38 - v37;
  if (v15)
  {
    v41 = -v39;
  }

  else
  {
    v41 = v39;
  }

  v42 = v40 + v41;
  v43 = 0xFFFF * (a4 + a2) - a4 * a2;
  if (v19 <= 4294868992)
  {
    v44 = v19 + 0x8000;
  }

  else
  {
    v44 = 4294868992;
  }

  v45 = (v44 >> 16) + v44;
  if (v26 <= 4294868992)
  {
    v46 = v26 + 0x8000;
  }

  else
  {
    v46 = 4294868992;
  }

  v47 = (v46 >> 16) + v46;
  if (v34 <= 4294868992)
  {
    v48 = v34 + 0x8000;
  }

  else
  {
    v48 = 4294868992;
  }

  v49 = (v48 >> 16) + v48;
  if (v42 <= 4294868992)
  {
    v50 = v42 + 0x8000;
  }

  else
  {
    v50 = 4294868992;
  }

  v51 = (v50 >> 16) + v50;
  if (v43 <= 4294868992)
  {
    v52 = v43 + 0x8000;
  }

  else
  {
    v52 = 4294868992;
  }

  return ((((v52 + (v52 >> 16)) >> 16) - HIWORD(v51)) << 48) | ((((v52 + (v52 >> 16)) >> 16) - HIWORD(v49)) << 32) | ((((v52 + (v52 >> 16)) >> 16) - HIWORD(v47)) << 16) | (((v52 + (v52 >> 16)) >> 16) - HIWORD(v45));
}

unint64_t PDAexclusionPDA_11882(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v4 = a2;
  v5 = a2 - a1;
  v6 = a2 - WORD1(a1);
  v7 = a2 - WORD2(a1);
  v8 = a4 - a3;
  v9 = a4 - WORD1(a3);
  if (v8 >= a4)
  {
    v8 = a4;
  }

  if (v5 >= a2)
  {
    v5 = a2;
  }

  v10 = 0xFFFF * (v8 + v5) - 2 * v5 * v8;
  if (v9 >= a4)
  {
    v9 = a4;
  }

  if (v6 >= a2)
  {
    v6 = a2;
  }

  v11 = 0xFFFF * (v9 + v6) - 2 * v6 * v9;
  if ((a4 - WORD2(a3)) >= a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = a4 - WORD2(a3);
  }

  if (v7 >= a2)
  {
    v7 = a2;
  }

  v13 = 0xFFFF * (v12 + v7) - 2 * v7 * v12;
  if ((a4 - HIWORD(a3)) >= a4)
  {
    v14 = a4;
  }

  else
  {
    v14 = a4 - HIWORD(a3);
  }

  if ((a2 - HIWORD(a1)) < a2)
  {
    v4 = a2 - HIWORD(a1);
  }

  v15 = 0xFFFF * (v14 + v4) - 2 * v4 * v14;
  v16 = 0xFFFF * (a4 + a2) - a4 * a2;
  if (v10 <= 4294868992)
  {
    v17 = v10 + 0x8000;
  }

  else
  {
    v17 = 4294868992;
  }

  v18 = (v17 >> 16) + v17;
  if (v11 <= 4294868992)
  {
    v19 = v11 + 0x8000;
  }

  else
  {
    v19 = 4294868992;
  }

  v20 = (v19 >> 16) + v19;
  if (v13 <= 4294868992)
  {
    v21 = v13 + 0x8000;
  }

  else
  {
    v21 = 4294868992;
  }

  v22 = (v21 >> 16) + v21;
  if (v15 <= 4294868992)
  {
    v23 = v15 + 0x8000;
  }

  else
  {
    v23 = 4294868992;
  }

  v24 = (v23 >> 16) + v23;
  if (v16 <= 4294868992)
  {
    v25 = v16 + 0x8000;
  }

  else
  {
    v25 = 4294868992;
  }

  return ((((v25 + (v25 >> 16)) >> 16) - HIWORD(v24)) << 48) | ((((v25 + (v25 >> 16)) >> 16) - HIWORD(v22)) << 32) | ((((v25 + (v25 >> 16)) >> 16) - HIWORD(v20)) << 16) | (((v25 + (v25 >> 16)) >> 16) - HIWORD(v18));
}

unint64_t PDAhuePDA_11883(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a4 - WORD2(a3);
  v7 = a4 - HIWORD(a3);
  if ((a4 - a3) >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = a4 - a3;
  }

  if ((a2 - a1) >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = a2 - a1;
  }

  if ((a4 - WORD1(a3)) >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a4 - WORD1(a3);
  }

  if ((a2 - WORD1(a1)) >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = a2 - WORD1(a1);
  }

  if (v6 >= a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = v6;
  }

  if ((a2 - WORD2(a1)) >= a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = a2 - WORD2(a1);
  }

  if (v7 >= a4)
  {
    v7 = a4;
  }

  v14 = a2 - HIWORD(a1);
  if (v14 >= a2)
  {
    v14 = a2;
  }

  if (a4 == 0xFFFF)
  {
    v18 = 0;
    v17 = 0;
    v16 = 0;
    v15 = 0;
  }

  else
  {
    v15 = (a4 ^ 0xFFFFLL) * v9;
    v9 = (v9 * a4 + 0x8000 + ((v9 * a4 + 0x8000) >> 16)) >> 16;
    v16 = (a4 ^ 0xFFFFLL) * v11;
    v11 = (v11 * a4 + 0x8000 + ((v11 * a4 + 0x8000) >> 16)) >> 16;
    v17 = (a4 ^ 0xFFFFLL) * v13;
    v13 = (v13 * a4 + 0x8000 + ((v13 * a4 + 0x8000) >> 16)) >> 16;
    v18 = (a4 ^ 0xFFFFLL) * v14;
    v14 = (v14 * a4 + 0x8000 + ((v14 * a4 + 0x8000) >> 16)) >> 16;
  }

  if (a2 != 0xFFFF)
  {
    v15 += v8 * (a2 ^ 0xFFFFLL);
    v8 = (v8 * a2 + 0x8000 + ((v8 * a2 + 0x8000) >> 16)) >> 16;
    v16 += v10 * (a2 ^ 0xFFFFLL);
    v10 = (v10 * a2 + 0x8000 + ((v10 * a2 + 0x8000) >> 16)) >> 16;
    v17 += v12 * (a2 ^ 0xFFFFLL);
    v12 = (v12 * a2 + 0x8000 + ((v12 * a2 + 0x8000) >> 16)) >> 16;
    v18 += (a2 ^ 0xFFFFLL) * v7;
  }

  v51 = v8;
  v52 = v10;
  v53 = v12;
  v19 = v8 < v10;
  v20 = v8 >= v10;
  if (v8 >= v10)
  {
    v21 = v10;
  }

  else
  {
    v21 = v8;
  }

  if (v12 >= v21)
  {
    if (v8 <= v10)
    {
      v8 = v10;
    }

    v23 = v12 <= v8;
    v22 = v20;
    if (v23)
    {
      v20 = 2;
    }

    else
    {
      v20 = v19;
    }

    if (!v23)
    {
      v19 = 2;
    }
  }

  else
  {
    v22 = 2;
  }

  v24 = *(&v51 + v19);
  v25 = *(&v51 + v22);
  v23 = v24 <= v25;
  v26 = v24 - v25;
  if (v23)
  {
    *(&v51 + v19) = 0;
    *(&v51 + v20) = 0;
  }

  else
  {
    if (v9 >= v11)
    {
      v27 = v11;
    }

    else
    {
      v27 = v9;
    }

    if (v9 <= v11)
    {
      v28 = v11;
    }

    else
    {
      v28 = v9;
    }

    if (v13 <= v28)
    {
      v29 = v28;
    }

    else
    {
      v29 = v13;
    }

    if (v13 >= v27)
    {
      v28 = v29;
    }

    else
    {
      v27 = v13;
    }

    v30 = v28 - v27;
    *(&v51 + v19) = v30;
    *(&v51 + v20) = ((*(&v51 + v20) - *(&v51 + v22)) * ((v30 << 16) / v26) + 0x8000) >> 16;
  }

  *(&v51 + v22) = 0;
  v31 = 151 * (v11 - v52) + 77 * (v9 - v51) + 28 * (v13 - v53);
  v32 = v31 + 128;
  v33 = v51 + ((v31 + 128) >> 8);
  v34 = v52 + ((v31 + 128) >> 8);
  v35 = (a4 * a2 + 0x8000 + ((a4 * a2 + 0x8000) >> 16)) >> 16;
  v36 = v53 + ((v31 + 128) >> 8);
  if (v31 != v31)
  {
    v37 = v51 >= v52 ? v52 + ((v31 + 128) >> 8) : v51 + ((v31 + 128) >> 8);
    v38 = v51 >= v52 ? v51 + ((v31 + 128) >> 8) : v52 + ((v31 + 128) >> 8);
    v39 = v36 <= v38 ? v38 : v53 + ((v31 + 128) >> 8);
    if (v36 >= v37)
    {
      v38 = v39;
    }

    else
    {
      v37 = v36;
    }

    if (v38 > v35 || v37 < 0)
    {
      v40 = v32 >> 8;
      v41 = (77 * v33 + 151 * v34 + 28 * v36 + 128) >> 8;
      if (v40 < 0)
      {
        v42 = v41 - v37;
        if (!v42)
        {
          goto LABEL_76;
        }

        v43 = (77 * v33 + 151 * v34 + 28 * v36 + 128) >> 8;
      }

      else
      {
        v42 = v38 - v41;
        if (v38 == v41)
        {
          goto LABEL_76;
        }

        v43 = v35 - v41;
      }

      v44 = (v43 << 16) / v42;
      v33 = v41 + ((v44 * (v33 - v41) + 0x8000) >> 16);
      v34 = v41 + ((v44 * (v34 - v41) + 0x8000) >> 16);
      v36 = v41 + ((v44 * (v36 - v41) + 0x8000) >> 16);
    }
  }

LABEL_76:
  v45 = v18 + 0x8000;
  if (v18 > 4294868992)
  {
    v45 = 4294868992;
  }

  if (v17 <= 4294868992)
  {
    v46 = v17 + 0x8000;
  }

  else
  {
    v46 = 4294868992;
  }

  if (v16 <= 4294868992)
  {
    v47 = v16 + 0x8000;
  }

  else
  {
    v47 = 4294868992;
  }

  if (v15 <= 4294868992)
  {
    v48 = v15 + 0x8000;
  }

  else
  {
    v48 = 4294868992;
  }

  v49 = a4 + a2 - v35;
  return ((v49 - (v14 + (((v45 >> 16) + v45) >> 16))) << 48) | ((v49 - (v36 + (((v46 >> 16) + v46) >> 16))) << 32) | ((v49 - (v34 + (((v47 >> 16) + v47) >> 16))) << 16) | (v49 - (v33 + (((v48 >> 16) + v48) >> 16)));
}

unint64_t PDAsaturationPDA_11884(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a4 - WORD2(a3);
  v7 = a4 - HIWORD(a3);
  if ((a4 - a3) >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = a4 - a3;
  }

  if ((a2 - a1) >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = a2 - a1;
  }

  if ((a4 - WORD1(a3)) >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a4 - WORD1(a3);
  }

  if ((a2 - WORD1(a1)) >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = a2 - WORD1(a1);
  }

  if (v6 >= a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = v6;
  }

  if ((a2 - WORD2(a1)) >= a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = a2 - WORD2(a1);
  }

  if (v7 >= a4)
  {
    v7 = a4;
  }

  v14 = a2 - HIWORD(a1);
  if (v14 >= a2)
  {
    v14 = a2;
  }

  if (a4 == 0xFFFF)
  {
    v18 = 0;
    v17 = 0;
    v16 = 0;
    v15 = 0;
  }

  else
  {
    v15 = (a4 ^ 0xFFFFLL) * v9;
    v9 = (v9 * a4 + 0x8000 + ((v9 * a4 + 0x8000) >> 16)) >> 16;
    v16 = (a4 ^ 0xFFFFLL) * v11;
    v11 = (v11 * a4 + 0x8000 + ((v11 * a4 + 0x8000) >> 16)) >> 16;
    v17 = (a4 ^ 0xFFFFLL) * v13;
    v13 = (v13 * a4 + 0x8000 + ((v13 * a4 + 0x8000) >> 16)) >> 16;
    v18 = (a4 ^ 0xFFFFLL) * v14;
    v14 = (v14 * a4 + 0x8000 + ((v14 * a4 + 0x8000) >> 16)) >> 16;
  }

  if (a2 != 0xFFFF)
  {
    v15 += v8 * (a2 ^ 0xFFFFLL);
    v8 = (v8 * a2 + 0x8000 + ((v8 * a2 + 0x8000) >> 16)) >> 16;
    v16 += v10 * (a2 ^ 0xFFFFLL);
    v10 = (v10 * a2 + 0x8000 + ((v10 * a2 + 0x8000) >> 16)) >> 16;
    v17 += v12 * (a2 ^ 0xFFFFLL);
    v12 = (v12 * a2 + 0x8000 + ((v12 * a2 + 0x8000) >> 16)) >> 16;
    v18 += (a2 ^ 0xFFFFLL) * v7;
  }

  v51 = v9;
  v52 = v11;
  v53 = v13;
  v19 = v9 < v11;
  v20 = v9 >= v11;
  if (v9 >= v11)
  {
    v21 = v11;
  }

  else
  {
    v21 = v9;
  }

  if (v13 >= v21)
  {
    if (v9 <= v11)
    {
      v23 = v11;
    }

    else
    {
      v23 = v9;
    }

    v24 = v13 <= v23;
    v22 = v9 >= v11;
    if (v24)
    {
      v20 = 2;
    }

    else
    {
      v20 = v9 < v11;
    }

    if (!v24)
    {
      v19 = 2;
    }
  }

  else
  {
    v22 = 2;
  }

  v25 = *(&v51 + v19);
  v26 = *(&v51 + v22);
  v24 = v25 <= v26;
  v27 = v25 - v26;
  if (v24)
  {
    *(&v51 + v19) = 0;
    *(&v51 + v20) = 0;
  }

  else
  {
    if (v8 >= v10)
    {
      v28 = v10;
    }

    else
    {
      v28 = v8;
    }

    if (v8 <= v10)
    {
      v8 = v10;
    }

    if (v12 <= v8)
    {
      v29 = v8;
    }

    else
    {
      v29 = v12;
    }

    if (v12 >= v28)
    {
      v12 = v28;
      v8 = v29;
    }

    v30 = v8 - v12;
    *(&v51 + v19) = v30;
    *(&v51 + v20) = ((*(&v51 + v20) - *(&v51 + v22)) * ((v30 << 16) / v27) + 0x8000) >> 16;
  }

  *(&v51 + v22) = 0;
  v31 = 151 * (v11 - v52) + 77 * (v9 - v51) + 28 * (v13 - v53);
  v32 = v31 + 128;
  v33 = v51 + ((v31 + 128) >> 8);
  v34 = v52 + ((v31 + 128) >> 8);
  v35 = (a4 * a2 + 0x8000 + ((a4 * a2 + 0x8000) >> 16)) >> 16;
  v36 = v53 + ((v31 + 128) >> 8);
  if (v31 != v31)
  {
    v37 = v51 >= v52 ? v52 + ((v31 + 128) >> 8) : v51 + ((v31 + 128) >> 8);
    v38 = v51 >= v52 ? v51 + ((v31 + 128) >> 8) : v52 + ((v31 + 128) >> 8);
    v39 = v36 <= v38 ? v38 : v53 + ((v31 + 128) >> 8);
    if (v36 >= v37)
    {
      v38 = v39;
    }

    else
    {
      v37 = v36;
    }

    if (v38 > v35 || v37 < 0)
    {
      v40 = v32 >> 8;
      v41 = (77 * v33 + 151 * v34 + 28 * v36 + 128) >> 8;
      if (v40 < 0)
      {
        v42 = v41 - v37;
        if (!v42)
        {
          goto LABEL_75;
        }

        v43 = (77 * v33 + 151 * v34 + 28 * v36 + 128) >> 8;
      }

      else
      {
        v42 = v38 - v41;
        if (v38 == v41)
        {
          goto LABEL_75;
        }

        v43 = v35 - v41;
      }

      v44 = (v43 << 16) / v42;
      v33 = v41 + ((v44 * (v33 - v41) + 0x8000) >> 16);
      v34 = v41 + ((v44 * (v34 - v41) + 0x8000) >> 16);
      v36 = v41 + ((v44 * (v36 - v41) + 0x8000) >> 16);
    }
  }

LABEL_75:
  v45 = v18 + 0x8000;
  if (v18 > 4294868992)
  {
    v45 = 4294868992;
  }

  if (v17 <= 4294868992)
  {
    v46 = v17 + 0x8000;
  }

  else
  {
    v46 = 4294868992;
  }

  if (v16 <= 4294868992)
  {
    v47 = v16 + 0x8000;
  }

  else
  {
    v47 = 4294868992;
  }

  if (v15 <= 4294868992)
  {
    v48 = v15 + 0x8000;
  }

  else
  {
    v48 = 4294868992;
  }

  v49 = a4 + a2 - v35;
  return ((v49 - (v14 + (((v45 >> 16) + v45) >> 16))) << 48) | ((v49 - (v36 + (((v46 >> 16) + v46) >> 16))) << 32) | ((v49 - (v34 + (((v47 >> 16) + v47) >> 16))) << 16) | (v49 - (v33 + (((v48 >> 16) + v48) >> 16)));
}

unint64_t PDAluminosityPDA_11885(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  if ((a4 - a3) >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a4 - a3;
  }

  if ((a2 - a1) >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a2 - a1;
  }

  if ((a4 - WORD1(a3)) >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = a4 - WORD1(a3);
  }

  if ((a2 - WORD1(a1)) >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = a2 - WORD1(a1);
  }

  if ((a4 - WORD2(a3)) >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a4 - WORD2(a3);
  }

  if ((a2 - WORD2(a1)) >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = a2 - WORD2(a1);
  }

  v12 = a4 - HIWORD(a3);
  if (v12 >= a4)
  {
    v12 = a4;
  }

  if (a4 == 0xFFFF)
  {
    v17 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0;
  }

  else
  {
    if ((a2 - HIWORD(a1)) >= a2)
    {
      v13 = a2;
    }

    else
    {
      v13 = a2 - HIWORD(a1);
    }

    v14 = (a4 ^ 0xFFFFLL) * v7;
    v7 = (v7 * a4 + 0x8000 + ((v7 * a4 + 0x8000) >> 16)) >> 16;
    v15 = (a4 ^ 0xFFFFLL) * v9;
    v9 = (v9 * a4 + 0x8000 + ((v9 * a4 + 0x8000) >> 16)) >> 16;
    v16 = (a4 ^ 0xFFFFLL) * v11;
    v11 = (v11 * a4 + 0x8000 + ((v11 * a4 + 0x8000) >> 16)) >> 16;
    v17 = (a4 ^ 0xFFFFLL) * v13;
  }

  if (a2 != 0xFFFF)
  {
    v14 += v6 * (a2 ^ 0xFFFFLL);
    v6 = (v6 * a2 + 0x8000 + ((v6 * a2 + 0x8000) >> 16)) >> 16;
    v15 += v8 * (a2 ^ 0xFFFFLL);
    v8 = (v8 * a2 + 0x8000 + ((v8 * a2 + 0x8000) >> 16)) >> 16;
    v16 += v10 * (a2 ^ 0xFFFFLL);
    v10 = (v10 * a2 + 0x8000 + ((v10 * a2 + 0x8000) >> 16)) >> 16;
    v17 += v12 * (a2 ^ 0xFFFFLL);
    v12 = (v12 * a2 + 0x8000 + ((v12 * a2 + 0x8000) >> 16)) >> 16;
  }

  v18 = 151 * (v8 - v9) + 28 * (v10 - v11) + 77 * (v6 - v7);
  v19 = v18 + 128;
  v20 = v7 + ((v18 + 128) >> 8);
  v21 = v9 + ((v18 + 128) >> 8);
  v22 = (a4 * a2 + 0x8000 + ((a4 * a2 + 0x8000) >> 16)) >> 16;
  v23 = v11 + ((v18 + 128) >> 8);
  if (v18 != v18)
  {
    v24 = v7 < v9;
    if (v7 >= v9)
    {
      v25 = v9 + ((v18 + 128) >> 8);
    }

    else
    {
      v25 = v7 + ((v18 + 128) >> 8);
    }

    if (v24)
    {
      v26 = v9 + ((v18 + 128) >> 8);
    }

    else
    {
      v26 = v20;
    }

    if (v23 <= v26)
    {
      v27 = v26;
    }

    else
    {
      v27 = v23;
    }

    if (v23 >= v25)
    {
      v28 = v25;
    }

    else
    {
      v28 = v23;
    }

    if (v23 >= v25)
    {
      v26 = v27;
    }

    if (v26 > v22 || v28 < 0)
    {
      v29 = (77 * v20 + 151 * v21 + 28 * v23 + 128) >> 8;
      if (v19 >> 8 < 0)
      {
        v30 = v29 - v28;
        if (!v30)
        {
          goto LABEL_52;
        }

        v31 = (77 * v20 + 151 * v21 + 28 * v23 + 128) >> 8;
      }

      else
      {
        v30 = v26 - v29;
        if (v26 == v29)
        {
          goto LABEL_52;
        }

        v31 = v22 - v29;
      }

      v32 = (v31 << 16) / v30;
      v20 = v29 + ((v32 * (v20 - v29) + 0x8000) >> 16);
      v21 = v29 + ((v32 * (v21 - v29) + 0x8000) >> 16);
      v23 = v29 + ((v32 * (v23 - v29) + 0x8000) >> 16);
    }
  }

LABEL_52:
  v33 = a4 + a2 - v22;
  v34 = v17 + 0x8000;
  if (v17 > 4294868992)
  {
    v34 = 4294868992;
  }

  v35 = (v34 >> 16) + v34;
  if (v16 <= 4294868992)
  {
    v36 = v16 + 0x8000;
  }

  else
  {
    v36 = 4294868992;
  }

  v37 = (v36 >> 16) + v36;
  if (v15 <= 4294868992)
  {
    v38 = v15 + 0x8000;
  }

  else
  {
    v38 = 4294868992;
  }

  v39 = (v38 >> 16) + v38;
  if (v14 <= 4294868992)
  {
    v40 = v14 + 0x8000;
  }

  else
  {
    v40 = 4294868992;
  }

  return ((v33 - (v12 + HIWORD(v35))) << 48) | ((v33 - (v23 + HIWORD(v37))) << 32) | ((v33 - (v21 + HIWORD(v39))) << 16) | (v33 - (v20 + (((v40 >> 16) + v40) >> 16)));
}

void cmyk64_shade_axial_CMYK(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    for (i = (v14 + 8); ; i += 8)
    {
      v20 = v11;
      if (v5 >= v9)
      {
        v20 = v12;
        if (v5 <= v10)
        {
          v20 = (v8 * (v5 - v7));
        }
      }

      if ((v20 & 0x80000000) == 0)
      {
        break;
      }

      v21 = v16;
      if (v16)
      {
        goto LABEL_18;
      }

LABEL_19:
      v5 = v4 + v5;
      *v13 = v21;
      v13 = (v13 + 1);
      if (!--a4)
      {
        return;
      }
    }

    v21 = (v17 + 2 * (5 * v20));
LABEL_18:
    v22 = *v21;
    LOWORD(v21) = *(v21 + 4);
    *(i - 1) = v22;
    *i = v21;
    LOBYTE(v21) = -1;
    goto LABEL_19;
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
    v23 = (v17 + 2 * (5 * v11));
    if (v11 < 0)
    {
      v24 = v16;
    }

    else
    {
      v24 = v23;
    }

    v25 = *(v24 + 4);
    v26 = *v24;
    v27 = a4 + 4;
    do
    {
      *v14 = v26;
      *(v14 + 8) = v25;
      *(v14 + 16) = v26;
      *(v14 + 24) = v25;
      *(v14 + 32) = v26;
      *(v14 + 40) = v25;
      *(v14 + 48) = v26;
      *(v14 + 56) = v25;
      v14 += 64;
      v27 -= 4;
      *v13++ = -1;
    }

    while (v27 > 4);
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

uint64_t cmyk64_shade_custom_CMYK(uint64_t result, uint64_t a2, uint64_t a3, int a4, double a5, int32x4_t a6)
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
  v22 = 5 * *(result + 48);
  v23 = *(result + 144);
  v24 = (*(result + 152) + 8);
  a6.i32[1] = v14;
  do
  {
    v25 = vzip1q_s32(a6, a6);
    if ((vmaxv_u16(vtrn2_s16(vrev32_s16(vmovn_s32(vcgtq_f32(v15, v25))), vmovn_s32(vcgtq_f32(v25, v15)))) & 1) == 0)
    {
      v26 = v21 + 2 * v22 * (v19 * (*&a6.i32[1] - v17)) + 10 * (v18 * (*a6.i32 - v16));
LABEL_6:
      v27 = *v26;
      LOWORD(v26) = *(v26 + 8);
      *(v24 - 1) = v27;
      *v24 = v26;
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
    *v23++ = v26;
    v24 += 8;
    --a4;
  }

  while (a4);
  return result;
}

uint64_t cmyk64_shade_conic_CMYK(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 280);
  v5 = *(*(a1 + 272) + 4);
  v6 = v5 * a2;
  v7 = v5 * a3;
  v8 = *(a1 + 296) + ((*(a1 + 288) * v7) + (v4 * v6));
  v9 = *(a1 + 284);
  v10 = *(a1 + 300) + ((v7 * *(a1 + 292)) + (v9 * v6));
  v34 = *(a1 + 336);
  v35 = *(a1 + 304);
  v12 = *(a1 + 344);
  v13 = *(a1 + 360);
  v15 = *(a1 + 144);
  v14 = *(a1 + 152);
  v33 = *(a1 + 308) - v35;
  do
  {
    v16 = v12 * ((v35 + (((atan2f(v10, v8) * 0.15915) + 0.5) * v33)) - v34);
    v17 = vcvtms_s32_f32(v16);
    v18 = vcvtms_s32_f32(v12 + v16);
    v19 = ceilf(v16);
    v20 = v16 - floorf(v16);
    if (v16 < 0.0)
    {
      v17 = v18;
    }

    v21 = v16 <= v12;
    v22 = ceilf(v16 - v12);
    v23 = (v20 * 255.0) + 0.5;
    if (v21)
    {
      v22 = v19;
    }

    v24 = (v13 + 2 * (5 * v17));
    v25 = *v24;
    v26 = v24[1];
    v27 = v24[2];
    v28 = v24[3];
    v29 = 255 - v23;
    v30 = (v13 + 10 * v22);
    result = v23 * v30[1];
    LODWORD(v24) = (v30[4] * v23 + v29 * v24[4]) >> 8;
    v32 = (((v23 * v30[2] + v29 * v27) >> 8) << 32) | (((v30[3] * v23 + v29 * v28) >> 8) << 48) | ((result + v29 * v26) << 8) & 0xFFFF0000 | ((v23 * *v30 + v29 * v25) >> 8);
    *(v14 + 8) = v24;
    *v14 = v32;
    v14 += 16;
    v8 = v4 + v8;
    v10 = v9 + v10;
    *v15++ = -1;
    --a4;
  }

  while (a4);
  return result;
}

void cmyk64_shade_radial_CMYK(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    for (i = (v23 + 8); ; i += 8)
    {
      v36 = v33 + ((v9 + v9) * v18);
      v37 = ((v10 * v10) + (v9 * v9)) - v21;
      if (v20 == 0.0)
      {
        v44 = v37 / v36;
      }

      else
      {
        v38 = ((v20 * -4.0) * v37) + (v36 * v36);
        if (v38 < 0.0)
        {
          goto LABEL_39;
        }

        v39 = sqrtf(v38);
        v40 = v32 * (v36 - v39);
        v41 = v36 + v39;
        v42 = v32 * v41;
        v43 = (v32 * v41) <= v40;
        if ((v32 * v41) <= v40)
        {
          v44 = v32 * v41;
        }

        else
        {
          v44 = v40;
        }

        if (v43)
        {
          v42 = v40;
        }

        if (v42 < 0.0)
        {
          v45 = v42 < v31;
LABEL_25:
          v46 = v30;
          if (v45)
          {
            goto LABEL_39;
          }

LABEL_26:
          if ((v46 & 0x80000000) == 0)
          {
            goto LABEL_38;
          }

          goto LABEL_39;
        }

        if (v42 <= 1.0)
        {
          v47 = v15 + (v42 * v34);
          goto LABEL_37;
        }

        if ((v17 & 0x80000000) == 0)
        {
          v46 = v17;
          if (v42 <= v19)
          {
LABEL_38:
            v48 = (v26 + 2 * (5 * v46));
LABEL_40:
            v49 = *v48;
            LOWORD(v48) = *(v48 + 4);
            *(i - 1) = v49;
            *i = v48;
            LOBYTE(v48) = -1;
            goto LABEL_41;
          }
        }
      }

      if (v44 < 0.0)
      {
        v45 = v44 < v31;
        goto LABEL_25;
      }

      if (v44 > 1.0)
      {
        v46 = v17;
        if (v44 > v19)
        {
          goto LABEL_39;
        }

        goto LABEL_26;
      }

      v47 = v15 + (v44 * v34);
LABEL_37:
      v46 = (v14 * (v47 - v13));
      if ((v46 & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

LABEL_39:
      v48 = v25;
      if (v25)
      {
        goto LABEL_40;
      }

LABEL_41:
      v9 = v4 + v9;
      v10 = v5 + v10;
      *v22++ = v48;
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
    v50 = fabsf(v12[8]);
    v51 = v20 * -4.0;
    v52 = v16 - v15;
    v53 = (v26 + 2 * (5 * v17));
    v54 = a4 + 2;
    while (1)
    {
      v55 = v27 + (v9 * v9);
      v56 = v4 + v9;
      v57 = v27 + (v56 * v56);
      if (v55 > v28 && v57 > v28)
      {
        if (v17 < 0)
        {
          if (!v25)
          {
            v72 = 0;
            LOBYTE(v71) = 0;
            goto LABEL_65;
          }

          v66 = *(v25 + 4);
          v67 = *v25;
        }

        else
        {
          v66 = *(v53 + 4);
          v67 = *v53;
        }

        *v23 = v67;
        *(v23 + 8) = v66;
        goto LABEL_63;
      }

      v59 = sqrtf(v51 * v57);
      v60 = v50 * sqrtf(v51 * v55);
      v61 = v50 * v59;
      v62 = (v14 * ((v15 + (v60 * v52)) - v13));
      v63 = (v14 * ((v15 + ((v50 * v59) * v52)) - v13));
      if (v60 <= 1.0 && v61 <= 1.0)
      {
        v68 = (v26 + 10 * v62);
        v69 = *v68;
        LOWORD(v68) = *(v68 + 4);
        v70 = (v26 + 10 * v63);
        v67 = *v70;
        v66 = *(v70 + 4);
        *v23 = v69;
        *(v23 + 8) = v68;
LABEL_63:
        LOBYTE(v71) = -1;
        goto LABEL_64;
      }

      if (v60 <= 1.0)
      {
        if ((v62 & 0x80000000) == 0)
        {
          v65 = (5 * v62);
LABEL_69:
          v71 = (v26 + 2 * v65);
LABEL_71:
          v73 = *v71;
          LOWORD(v71) = *(v71 + 4);
          *v23 = v73;
          *(v23 + 8) = v71;
          LOBYTE(v71) = -1;
          goto LABEL_72;
        }
      }

      else if (v60 <= v19)
      {
        v65 = (5 * v17);
        if ((v17 & 0x80000000) == 0)
        {
          goto LABEL_69;
        }
      }

      v71 = v25;
      if (v25)
      {
        goto LABEL_71;
      }

LABEL_72:
      if (v61 <= 1.0)
      {
        if (v63 < 0)
        {
          goto LABEL_79;
        }

        v74 = (5 * v63);
      }

      else if (v61 > v19 || (v74 = (5 * v17), v17 < 0))
      {
LABEL_79:
        if (!v25)
        {
          v72 = 0;
          goto LABEL_65;
        }

        v67 = *v25;
        v66 = *(v25 + 4);
        goto LABEL_64;
      }

      v75 = (v26 + 2 * v74);
      v67 = *v75;
      v66 = *(v75 + 4);
LABEL_64:
      *(v23 + 16) = v67;
      *(v23 + 24) = v66;
      v72 = -1;
LABEL_65:
      v9 = v4 + v56;
      v23 += 32;
      *v22 = v71;
      v22[1] = v72;
      v22 += 2;
      v54 -= 2;
      if (v54 <= 2)
      {
        return;
      }
    }
  }

  if (v25 || (v17 & 0x80000000) == 0)
  {
    if (v17 >= 0)
    {
      v76 = (v26 + 10 * v17);
    }

    else
    {
      v76 = *(a1 + 376);
    }

    v77 = *(v76 + 4);
    v78 = *v76;
    v79 = a4 + 4;
    do
    {
      *v23 = v78;
      *(v23 + 8) = v77;
      *(v23 + 16) = v78;
      *(v23 + 24) = v77;
      *(v23 + 32) = v78;
      *(v23 + 40) = v77;
      *(v23 + 48) = v78;
      *(v23 + 56) = v77;
      v23 += 64;
      v79 -= 4;
      *v22 = -1;
      v22 += 4;
    }

    while (v79 > 4);
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

uint64_t cmyk64_image(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
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

  v18 = 269501476;
  v19 = *a3;
  *(&v32 + 1) = __PAIR64__(*v6, *a3);
  if (v19 == 269501476)
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

        cmyk64_mark(a1, v17);
        return 1;
      }
    }

    *&v32 = cmyk64_sample_cmyk64;
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
  *&v32 = *&CMYK16_image_sample[2 * v20 + 2];
  if (v32)
  {
    goto LABEL_36;
  }

  if ((HIWORD(*a3) & 0x3Fu) > 8 || (*&v32 = *&CMYK8_image_sample[2 * v20 + 2], !v32))
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

  v18 = 134759444;
  v23 = 8;
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
      v26 = cmyk64_image_mark_RGB24;
      goto LABEL_66;
    }

    if (v24 == 4)
    {
      DWORD2(v32) = *a3;
      v26 = cmyk64_image_mark_rgb32;
      goto LABEL_66;
    }

    if (v24 != 5)
    {
      goto LABEL_37;
    }

    DWORD2(v32) = *a3;
    v27 = cmyk64_image_mark_rgb32;
LABEL_64:
    v28 = v27;
    v29 = a2;
    v30 = v8;
    v31 = 8;
LABEL_67:
    cmyk64_image_mark_image(v29, &v32, v30, v31, v28);
    return 1;
  }

  switch(v24)
  {
    case 0:
      DWORD2(v32) = *a3;
      v26 = cmyk64_image_mark_RGB32;
      goto LABEL_66;
    case 1:
      DWORD2(v32) = *a3;
      v27 = cmyk64_image_mark_RGB32;
      goto LABEL_64;
    case 2:
      DWORD2(v32) = *a3;
      v26 = cmyk64_image_mark_W8;
LABEL_66:
      v28 = v26;
      v29 = a2;
      v30 = v8;
      v31 = 0;
      goto LABEL_67;
  }

LABEL_37:
  cmyk64_image_mark(a2, &v32, v8, v17);
  return 1;
}

uint64_t cmyk64_mark(uint64_t a1, __n128 a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v834 = *MEMORY[0x1E69E9840];
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
  if ((*v3 & 0xFF0000) == 0x50000 || !v14)
  {
    v16 = *v3 & 0xFF00;
    v737 = *(*(*v2 + 56) + 16 * *v3 + 8 * (v5 == 0) + 4 * (v6 == 0));
    v732 = v3;
    if (v16 == 1024)
    {
      v833[0] = *(v3 + 4);
      v823[0] = v12;
      if (v5)
      {
        v17 = *v5;
      }

      else
      {
        v17 = 0xFFFF;
      }

      v29 = **(v3 + 88);
      v798 = *(v3 + 28) >> 3;
      v30 = *(v3 + 12);
      v31 = *(v3 + 16);
      if (v6)
      {
        v811 = *(v3 + 32) >> 1;
        v804 = v6 + 2 * v811 * v31 + 2 * v30;
        v775 = 1;
      }

      else
      {
        v804 = 0;
        v811 = 0;
        v775 = 0;
      }

      v37 = *(v3 + 28) >> 3;
      v38 = (*(v3 + 40) + 8 * v31 * v798 + 8 * v30);
      v800 = v38;
      if (!v14)
      {
        v813 = 0;
        if (v6)
        {
          v42 = v10;
        }

        else
        {
          v42 = 0;
        }

        v41 = v804;
        v820 = v811 - v42;
        v43 = v10;
        goto LABEL_72;
      }

      shape_enum_clip_alloc(v2, v3, v14, 1, 1, 1, *(v3 + 104), *(v3 + 108), v10, v12);
      v40 = v39;
      v41 = v804;
      v820 = v811;
      if (v39)
      {
        while (shape_enum_clip_next(v40, &v822 + 1, &v822, v833, v823))
        {
          v813 = v40;
          v38 += v37 * v822 + SHIDWORD(v822);
          v43 = v833[0];
          if (v6)
          {
            v41 = (v804 + 2 * v811 * v822 + 2 * SHIDWORD(v822));
          }

          v63 = v820;
          if (v6)
          {
            v63 = v811 - v833[0];
          }

          v820 = v63;
          LODWORD(v10) = v833[0];
LABEL_72:
          v819 = v37 - v43;
          v802 = v10;
          switch(v7)
          {
            case 0:
              v64 = v819 + v10;
              v65 = v823[0];
              v66 = v823[0] - 1;
              v67 = &v38[(v64 * v66) & (v64 >> 63)];
              if (v64 < 0)
              {
                v64 = -v64;
              }

              CGBlt_fillBytes(8 * v10, v823[0], 0, v67, 8 * v64);
              if (v6)
              {
                v68 = v820 + v10;
                v41 += 2 * ((v68 * v66) & (v68 >> 63));
                if (v68 < 0)
                {
                  v68 = -v68;
                }

                v820 = v68;
                CGBlt_fillBytes(2 * v10, v65, 0, v41, 2 * v68);
              }

              goto LABEL_368;
            case 1:
              v143 = v819 + v10;
              if (v143 < 0)
              {
                v38 += v143 * (v823[0] - 1);
                v143 = -v143;
              }

              v144 = *(v732 + 88);
              v145 = v823[0];
              if (v144)
              {
                CGSFillDRAM64(v38, 8 * v143, 8 * v10, v823[0], v144, 8, 8, 1, 0, 0);
              }

              else
              {
                CGBlt_fillBytes(8 * v10, v823[0], 0, v38, 8 * v143);
              }

              v38 = v800;
              if (v6)
              {
                v200 = *(v732 + 96);
                if (!v200)
                {
                  v200 = &PIXELALPHAPLANARCONSTANT_18034;
                }

                v201 = v820 + v10;
                v41 += 2 * ((v201 * (v145 - 1)) & (v201 >> 63));
                if (v201 < 0)
                {
                  v201 = -v201;
                }

                v820 = v201;
                CGBlt_fillBytes(2 * v10, v145, *v200, v41, 2 * v201);
              }

              v37 = v798;
              goto LABEL_370;
            case 2:
              v774 = v10 & 3;
              v113 = v823[0];
              v114 = 8 * v775;
              v115 = 2 * v775;
              if (v6)
              {
                v770 = (v10 >> 2) + 1;
                do
                {
                  v816 = v113;
                  if (v10 < 4)
                  {
                    v120 = v10;
                  }

                  else
                  {
                    v116 = (v41 + 4);
                    v117 = v770;
                    do
                    {
                      cmyk64_DAplusDAM(v38, v116 - 2, *&v29, v17, *v38, *(v116 - 2), ~v17);
                      cmyk64_DAplusDAM(&v38[1], v116 - 1, *&v29, v17, *&v38[1], *(v116 - 1), ~v17);
                      cmyk64_DAplusDAM(&v38[2], v116, *&v29, v17, *&v38[2], *v116, ~v17);
                      v119 = v38[3];
                      v118 = v38 + 3;
                      cmyk64_DAplusDAM(v118, v116 + 1, *&v29, v17, v119, v116[1], ~v17);
                      v38 = v118 + 1;
                      --v117;
                      v116 = (v116 + v114);
                    }

                    while (v117 > 1);
                    v41 = (v116 - 2);
                    v120 = v774;
                  }

                  if (v120 < 1)
                  {
                    v122 = v38;
                  }

                  else
                  {
                    v121 = v120 + 1;
                    v122 = v38;
                    do
                    {
                      v123 = *v122++;
                      cmyk64_DAplusDAM(v38, v41, *&v29, v17, v123, *v41, ~v17);
                      v41 += v115;
                      --v121;
                      v38 = v122;
                    }

                    while (v121 > 1);
                  }

                  v38 = &v122[v819];
                  v41 += 2 * v820;
                  v113 = v816 - 1;
                  LODWORD(v10) = v802;
                }

                while (v816 != 1);
              }

              else
              {
                v771 = (v10 >> 2) + 1;
                do
                {
                  v817 = v113;
                  if (v10 < 4)
                  {
                    v193 = v10;
                  }

                  else
                  {
                    v190 = v771;
                    do
                    {
                      cmyk64_DplusDM(v38, *&v29, *v38, ~v17);
                      cmyk64_DplusDM(&v38[1], *&v29, *&v38[1], ~v17);
                      cmyk64_DplusDM(&v38[2], *&v29, *&v38[2], ~v17);
                      v192 = v38[3];
                      v191 = v38 + 3;
                      cmyk64_DplusDM(v191, *&v29, v192, ~v17);
                      v38 = v191 + 1;
                      --v190;
                      v41 += v114;
                    }

                    while (v190 > 1);
                    v193 = v774;
                  }

                  if (v193 < 1)
                  {
                    v10 = v38;
                  }

                  else
                  {
                    v194 = v193 + 1;
                    v10 = v38;
                    do
                    {
                      v195 = *v10;
                      v10 += 8;
                      cmyk64_DplusDM(v38, *&v29, v195, ~v17);
                      v41 += v115;
                      --v194;
                      v38 = v10;
                    }

                    while (v194 > 1);
                  }

                  v38 = (v10 + 8 * v819);
                  v41 += 2 * v820;
                  v113 = v817 - 1;
                  LODWORD(v10) = v802;
                }

                while (v817 != 1);
              }

              goto LABEL_367;
            case 3:
              v127.i32[0] = v29.u16[1];
              v127.i32[1] = HIWORD(*&v29);
              v128 = vand_s8(v29, 0xFFFF0000FFFFLL);
              v129 = v823[0];
              do
              {
                v130 = v10;
                do
                {
                  v131 = *v41;
                  if (v131 == 0xFFFF)
                  {
                    *v38 = v29;
                    LOWORD(v131) = v17;
                  }

                  else if (*v41)
                  {
                    v132 = v131 ^ 0xFFFF;
                    v133 = vdup_n_s32(v132);
                    v134 = vmul_s32(v128, v133);
                    v135 = vmul_s32(v127, v133);
                    *v38 = vsli_n_s32(vsub_s32(v29, vshr_n_u32(vadd_s32(vsra_n_u32(v134, v134, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(v127, vshr_n_u32(vadd_s32(vsra_n_u32(v135, v135, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
                    v131 = v17 - ((v132 * v17 + ((v132 * v17) >> 16) + 1) >> 16);
                  }

                  else
                  {
                    *v38 = 0;
                  }

                  *v41 = v131;
                  ++v38;
                  v41 += 2 * v775;
                  --v130;
                }

                while (v130);
                v38 += v819;
                v41 += 2 * v820;
                --v129;
              }

              while (v129);
              goto LABEL_291;
            case 4:
              v86 = vand_s8(v29, 0xFFFF0000FFFFLL);
              v87.i32[0] = v29.u16[1];
              v87.i32[1] = HIWORD(*&v29);
              v88 = v823[0];
              do
              {
                v89 = v10;
                do
                {
                  v90 = *v41;
                  if (*v41)
                  {
                    if (v90 != 0xFFFF)
                    {
                      v92 = vdup_n_s32(v90);
                      v93 = vmul_s32(v86, v92);
                      v94 = vmul_s32(v87, v92);
                      *v38 = vsli_n_s32(vsub_s32(v29, vshr_n_u32(vadd_s32(vsra_n_u32(v93, v93, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(v87, vshr_n_u32(vadd_s32(vsra_n_u32(v94, v94, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
                      v91 = v17 - ((v90 * v17 + ((v90 * v17) >> 16) + 1) >> 16);
                    }

                    else
                    {
                      LOWORD(v91) = 0;
                      *v38 = 0;
                    }
                  }

                  else
                  {
                    *v38 = v29;
                    LOWORD(v91) = v17;
                  }

                  *v41 = v91;
                  ++v38;
                  v41 += 2 * v775;
                  --v89;
                }

                while (v89);
                v38 += v819;
                v41 += 2 * v820;
                --v88;
              }

              while (v88);
              goto LABEL_291;
            case 5:
              v152 = v823[0];
              do
              {
                v153 = v10;
                v154 = v38;
                do
                {
                  v155 = *v154++;
                  cmyk64_DAMplusDAM(v38, v41, *&v29, v17, *v41, v155, *v41, ~v17);
                  v41 += 2 * v775;
                  v38 = v154;
                  --v153;
                }

                while (v153);
                v38 = &v154[v819];
                v41 += 2 * v820;
                --v152;
              }

              while (v152);
              goto LABEL_367;
            case 6:
              v162 = v823[0];
              do
              {
                v163 = v10;
                do
                {
                  if (*v41 != 0xFFFF)
                  {
                    if (~*v41 == 0xFFFF)
                    {
                      *v38 = v29;
                      *v41 = v17;
                    }

                    else
                    {
                      cmyk64_DAplusDAM(v38, v41, *v38, *v41, *&v29, v17, ~*v41);
                    }
                  }

                  ++v38;
                  v41 += 2 * v775;
                  --v163;
                }

                while (v163);
                v38 += v819;
                v41 += 2 * v820;
                --v162;
              }

              while (v162);
              goto LABEL_367;
            case 7:
              if (v6)
              {
                v136 = vdup_n_s32(~v17);
                v137 = v823[0];
                do
                {
                  v138 = v10;
                  do
                  {
                    v139 = *v41;
                    v140 = vmul_s32(vand_s8(*v38, 0xFFFF0000FFFFLL), v136);
                    v141.i32[0] = HIWORD(v38->u32[0]);
                    v141.i32[1] = HIWORD(*v38);
                    v142 = vmul_s32(v141, v136);
                    *v38 = vsli_n_s32(vsub_s32(*v38, vshr_n_u32(vadd_s32(vsra_n_u32(v140, v140, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(v141, vshr_n_u32(vadd_s32(vsra_n_u32(v142, v142, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
                    ++v38;
                    *v41 = v139 - ((~v17 * v139 + ((~v17 * v139) >> 16) + 1) >> 16);
                    v41 += 2 * v775;
                    --v138;
                  }

                  while (v138);
                  v38 += v819;
                  v41 += 2 * v820;
                  --v137;
                }

                while (v137);
                goto LABEL_291;
              }

              v196 = v823[0];
              do
              {
                v197 = v10;
                v198 = v38;
                do
                {
                  v199 = *v198++;
                  cmyk64_DM(v38, v199, v17);
                  v41 += 2 * v775;
                  v38 = v198;
                  --v197;
                }

                while (v197);
                v38 = &v198[v819];
                v41 += 2 * v820;
                --v196;
              }

              while (v196);
              goto LABEL_367;
            case 8:
              if (v6)
              {
                v171 = vdup_n_s32(v17);
                v172 = v823[0];
                do
                {
                  v173 = v10;
                  do
                  {
                    v174 = *v41;
                    v175 = vmul_s32(vand_s8(*v38, 0xFFFF0000FFFFLL), v171);
                    v176.i32[0] = HIWORD(v38->u32[0]);
                    v176.i32[1] = HIWORD(*v38);
                    v177 = vmul_s32(v176, v171);
                    *v38 = vsli_n_s32(vsub_s32(*v38, vshr_n_u32(vadd_s32(vsra_n_u32(v175, v175, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(v176, vshr_n_u32(vadd_s32(vsra_n_u32(v177, v177, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
                    ++v38;
                    *v41 = v174 - ((v17 * v174 + ((v17 * v174) >> 16) + 1) >> 16);
                    v41 += 2 * v775;
                    --v173;
                  }

                  while (v173);
                  v38 += v819;
                  v41 += 2 * v820;
                  --v172;
                }

                while (v172);
LABEL_291:
                v823[0] = 0;
              }

              else
              {
                v202 = v823[0];
                do
                {
                  v203 = v10;
                  v204 = v38;
                  do
                  {
                    v205 = *v204++;
                    cmyk64_DM(v38, v205, ~v17);
                    v41 += 2 * v775;
                    v38 = v204;
                    --v203;
                  }

                  while (v203);
                  v38 = &v204[v819];
                  v41 += 2 * v820;
                  --v202;
                }

                while (v202);
LABEL_367:
                v823[0] = 0;
                v7 = v737;
LABEL_368:
                v37 = v798;
              }

LABEL_369:
              v38 = v800;
LABEL_370:
              v40 = v813;
              if (!v813)
              {
                return 1;
              }

              v822 = 0;
              break;
            case 9:
              v103 = v823[0];
              do
              {
                v104 = v10;
                v105 = v38;
                do
                {
                  v106 = *v105++;
                  cmyk64_DAMplusDAM(v38, v41, *&v29, v17, *v41 ^ 0xFFFF, v106, *v41, v17);
                  v41 += 2 * v775;
                  v38 = v105;
                  --v104;
                }

                while (v104);
                v38 = &v105[v819];
                v41 += 2 * v820;
                --v103;
              }

              while (v103);
              goto LABEL_367;
            case 10:
              v167 = v823[0];
              do
              {
                v168 = v10;
                v169 = v38;
                do
                {
                  v170 = *v169++;
                  cmyk64_DAMplusDAM(v38, v41, *&v29, v17, *v41 ^ 0xFFFF, v170, *v41, ~v17);
                  v41 += 2 * v775;
                  v38 = v169;
                  --v168;
                }

                while (v168);
                v38 = &v169[v819];
                v41 += 2 * v820;
                --v167;
              }

              while (v167);
              goto LABEL_367;
            case 11:
              v78 = v823[0];
              v79 = 2 * v775;
              if (v6)
              {
                do
                {
                  v80 = v802;
                  v81 = v38;
                  do
                  {
                    v82 = *v81++;
                    cmyk64_DAplusdDA(v38, v41, v82, *v41, *&v29, v17);
                    v41 += v79;
                    v38 = v81;
                    --v80;
                  }

                  while (v80);
                  v38 = &v81[v819];
                  v41 += 2 * v820;
                  --v78;
                }

                while (v78);
              }

              else
              {
                do
                {
                  v83 = v802;
                  v84 = v38;
                  do
                  {
                    v85 = *v84++;
                    cmyk64_DplusdDA(v38, v85, *&v29, v17);
                    v41 += v79;
                    v38 = v84;
                    --v83;
                  }

                  while (v83);
                  v38 = &v84[v819];
                  v41 += 2 * v820;
                  --v78;
                }

                while (v78);
              }

              goto LABEL_367;
            case 12:
              v95 = v823[0];
              v96 = 2 * v775;
              if (v6)
              {
                do
                {
                  v97 = v802;
                  v98 = v38;
                  do
                  {
                    v99 = *v98++;
                    cmyk64_DApluslDA(v38, v41, v99, *v41, *&v29, v17);
                    v41 += v96;
                    v38 = v98;
                    --v97;
                  }

                  while (v97);
                  v38 = &v98[v819];
                  v41 += 2 * v820;
                  --v95;
                }

                while (v95);
              }

              else
              {
                do
                {
                  v100 = v802;
                  v101 = v38;
                  do
                  {
                    v102 = *v101++;
                    cmyk64_DpluslD(v38, v102, *&v29);
                    v41 += v96;
                    v38 = v101;
                    --v100;
                  }

                  while (v100);
                  v38 = &v101[v819];
                  v41 += 2 * v820;
                  --v95;
                }

                while (v95);
              }

              goto LABEL_367;
            case 13:
              if (!v17)
              {
                goto LABEL_369;
              }

              v159 = v823[0];
              do
              {
                v160 = v10;
                do
                {
                  if (v6)
                  {
                    if (*v41)
                    {
                      *v38 = PDAmultiplyPDA_11872(*v38, *v41, *&v29, v17);
                      *v41 = v161;
                    }

                    else
                    {
                      *v38 = v29;
                      *v41 = v17;
                    }
                  }

                  else
                  {
                    *v38 = PDAmultiplyPDA_11872(*v38, 0xFFFFu, *&v29, v17);
                  }

                  ++v38;
                  v41 += 2 * v775;
                  --v160;
                }

                while (v160);
                v38 += v819;
                v41 += 2 * v820;
                --v159;
              }

              while (v159);
              goto LABEL_335;
            case 14:
              if (!v17)
              {
                goto LABEL_369;
              }

              v75 = v823[0];
              do
              {
                v76 = v10;
                do
                {
                  if (v6)
                  {
                    if (*v41)
                    {
                      *v38 = PDAscreenPDA_11873(*v38, *v41, *&v29, v17);
                      *v41 = v77;
                    }

                    else
                    {
                      *v38 = v29;
                      *v41 = v17;
                    }
                  }

                  else
                  {
                    *v38 = PDAscreenPDA_11873(*v38, 0xFFFFu, *&v29, v17);
                  }

                  ++v38;
                  v41 += 2 * v775;
                  --v76;
                }

                while (v76);
                v38 += v819;
                v41 += 2 * v820;
                --v75;
              }

              while (v75);
              goto LABEL_335;
            case 15:
              if (!v17)
              {
                goto LABEL_369;
              }

              v124 = v823[0];
              do
              {
                v125 = v10;
                do
                {
                  if (v6)
                  {
                    if (*v41)
                    {
                      *v38 = PDAoverlayPDA_11874(*v38, *v41, *&v29, v17);
                      *v41 = v126;
                    }

                    else
                    {
                      *v38 = v29;
                      *v41 = v17;
                    }
                  }

                  else
                  {
                    *v38 = PDAoverlayPDA_11874(*v38, 0xFFFFu, *&v29, v17);
                  }

                  ++v38;
                  v41 += 2 * v775;
                  --v125;
                }

                while (v125);
                v38 += v819;
                v41 += 2 * v820;
                --v124;
              }

              while (v124);
              goto LABEL_335;
            case 16:
              if (!v17)
              {
                goto LABEL_369;
              }

              v72 = v823[0];
              do
              {
                v73 = v10;
                do
                {
                  if (v6)
                  {
                    if (*v41)
                    {
                      *v38 = PDAdarkenPDA_11876(*v38, *v41, *&v29, v17);
                      *v41 = v74;
                    }

                    else
                    {
                      *v38 = v29;
                      *v41 = v17;
                    }
                  }

                  else
                  {
                    *v38 = PDAdarkenPDA_11876(*v38, 0xFFFFu, *&v29, v17);
                  }

                  ++v38;
                  v41 += 2 * v775;
                  --v73;
                }

                while (v73);
                v38 += v819;
                v41 += 2 * v820;
                --v72;
              }

              while (v72);
              goto LABEL_335;
            case 17:
              if (!v17)
              {
                goto LABEL_369;
              }

              v146 = v823[0];
              do
              {
                v147 = v10;
                do
                {
                  if (v6)
                  {
                    if (*v41)
                    {
                      *v38 = PDAlightenPDA_11875(*v38, *v41, *&v29, v17);
                      *v41 = v148;
                    }

                    else
                    {
                      *v38 = v29;
                      *v41 = v17;
                    }
                  }

                  else
                  {
                    *v38 = PDAlightenPDA_11875(*v38, 0xFFFFu, *&v29, v17);
                  }

                  ++v38;
                  v41 += 2 * v775;
                  --v147;
                }

                while (v147);
                v38 += v819;
                v41 += 2 * v820;
                --v146;
              }

              while (v146);
              goto LABEL_335;
            case 18:
              if (!v17)
              {
                goto LABEL_369;
              }

              v164 = v823[0];
              do
              {
                v165 = v10;
                do
                {
                  if (v6)
                  {
                    if (*v41)
                    {
                      *v38 = PDAcolordodgePDA_11877(*v38, *v41, *&v29, v17);
                      *v41 = v166;
                    }

                    else
                    {
                      *v38 = v29;
                      *v41 = v17;
                    }
                  }

                  else
                  {
                    *v38 = PDAcolordodgePDA_11877(*v38, 0xFFFFu, *&v29, v17);
                  }

                  ++v38;
                  v41 += 2 * v775;
                  --v165;
                }

                while (v165);
                v38 += v819;
                v41 += 2 * v820;
                --v164;
              }

              while (v164);
              goto LABEL_335;
            case 19:
              if (!v17)
              {
                goto LABEL_369;
              }

              v181 = v823[0];
              do
              {
                v182 = v10;
                do
                {
                  if (v6)
                  {
                    if (*v41)
                    {
                      *v38 = PDAcolorburnPDA_11878(*v38, *v41, *&v29, v17);
                      *v41 = v183;
                    }

                    else
                    {
                      *v38 = v29;
                      *v41 = v17;
                    }
                  }

                  else
                  {
                    *v38 = PDAcolorburnPDA_11878(*v38, 0xFFFFu, *&v29, v17);
                  }

                  ++v38;
                  v41 += 2 * v775;
                  --v182;
                }

                while (v182);
                v38 += v819;
                v41 += 2 * v820;
                --v181;
              }

              while (v181);
              goto LABEL_335;
            case 20:
              if (!v17)
              {
                goto LABEL_369;
              }

              v149 = v823[0];
              do
              {
                v150 = v10;
                do
                {
                  if (v6)
                  {
                    if (*v41)
                    {
                      *v38 = PDAsoftlightPDA_11880(*v38, *v41, *&v29, v17);
                      *v41 = v151;
                    }

                    else
                    {
                      *v38 = v29;
                      *v41 = v17;
                    }
                  }

                  else
                  {
                    *v38 = PDAsoftlightPDA_11880(*v38, 0xFFFFu, *&v29, v17);
                  }

                  ++v38;
                  v41 += 2 * v775;
                  --v150;
                }

                while (v150);
                v38 += v819;
                v41 += 2 * v820;
                --v149;
              }

              while (v149);
              goto LABEL_335;
            case 21:
              if (!v17)
              {
                goto LABEL_369;
              }

              v156 = v823[0];
              do
              {
                v157 = v10;
                do
                {
                  if (v6)
                  {
                    if (*v41)
                    {
                      *v38 = PDAhardlightPDA_11879(*v38, *v41, *&v29, v17);
                      *v41 = v158;
                    }

                    else
                    {
                      *v38 = v29;
                      *v41 = v17;
                    }
                  }

                  else
                  {
                    *v38 = PDAhardlightPDA_11879(*v38, 0xFFFFu, *&v29, v17);
                  }

                  ++v38;
                  v41 += 2 * v775;
                  --v157;
                }

                while (v157);
                v38 += v819;
                v41 += 2 * v820;
                --v156;
              }

              while (v156);
              goto LABEL_335;
            case 22:
              if (!v17)
              {
                goto LABEL_369;
              }

              v178 = v823[0];
              do
              {
                v179 = v10;
                do
                {
                  if (v6)
                  {
                    if (*v41)
                    {
                      *v38 = PDAdifferencePDA_11881(*v38, *v41, *&v29, v17);
                      *v41 = v180;
                    }

                    else
                    {
                      *v38 = v29;
                      *v41 = v17;
                    }
                  }

                  else
                  {
                    *v38 = PDAdifferencePDA_11881(*v38, 0xFFFFu, *&v29, v17);
                  }

                  ++v38;
                  v41 += 2 * v775;
                  --v179;
                }

                while (v179);
                v38 += v819;
                v41 += 2 * v820;
                --v178;
              }

              while (v178);
              goto LABEL_335;
            case 23:
              if (!v17)
              {
                goto LABEL_369;
              }

              v184 = v823[0];
              do
              {
                v185 = v10;
                do
                {
                  if (v6)
                  {
                    if (*v41)
                    {
                      *v38 = PDAexclusionPDA_11882(*v38, *v41, *&v29, v17);
                      *v41 = v186;
                    }

                    else
                    {
                      *v38 = v29;
                      *v41 = v17;
                    }
                  }

                  else
                  {
                    *v38 = PDAexclusionPDA_11882(*v38, 0xFFFFu, *&v29, v17);
                  }

                  ++v38;
                  v41 += 2 * v775;
                  --v185;
                }

                while (v185);
                v38 += v819;
                v41 += 2 * v820;
                --v184;
              }

              while (v184);
              goto LABEL_335;
            case 24:
              if (!v17)
              {
                goto LABEL_369;
              }

              v110 = v823[0];
              do
              {
                v111 = v10;
                do
                {
                  if (v6)
                  {
                    if (*v41)
                    {
                      *v38 = PDAhuePDA_11883(*v38, *v41, *&v29, v17);
                      *v41 = v112;
                    }

                    else
                    {
                      *v38 = v29;
                      *v41 = v17;
                    }
                  }

                  else
                  {
                    *v38 = PDAhuePDA_11883(*v38, 0xFFFFu, *&v29, v17);
                  }

                  ++v38;
                  v41 += 2 * v775;
                  --v111;
                }

                while (v111);
                v38 += v819;
                v41 += 2 * v820;
                --v110;
              }

              while (v110);
              goto LABEL_335;
            case 25:
              if (!v17)
              {
                goto LABEL_369;
              }

              v107 = v823[0];
              do
              {
                v108 = v10;
                do
                {
                  if (v6)
                  {
                    if (*v41)
                    {
                      *v38 = PDAsaturationPDA_11884(*v38, *v41, *&v29, v17);
                      *v41 = v109;
                    }

                    else
                    {
                      *v38 = v29;
                      *v41 = v17;
                    }
                  }

                  else
                  {
                    *v38 = PDAsaturationPDA_11884(*v38, 0xFFFFu, *&v29, v17);
                  }

                  ++v38;
                  v41 += 2 * v775;
                  --v108;
                }

                while (v108);
                v38 += v819;
                v41 += 2 * v820;
                --v107;
              }

              while (v107);
              goto LABEL_335;
            case 26:
              if (!v17)
              {
                goto LABEL_369;
              }

              v187 = v823[0];
              do
              {
                v188 = v10;
                do
                {
                  if (v6)
                  {
                    if (*v41)
                    {
                      *v38 = PDAluminosityPDA_11885(*&v29, v17, *v38, *v41);
                      *v41 = v189;
                    }

                    else
                    {
                      *v38 = v29;
                      *v41 = v17;
                    }
                  }

                  else
                  {
                    *v38 = PDAluminosityPDA_11885(*&v29, v17, *v38, 0xFFFFu);
                  }

                  ++v38;
                  v41 += 2 * v775;
                  --v188;
                }

                while (v188);
                v38 += v819;
                v41 += 2 * v820;
                --v187;
              }

              while (v187);
              goto LABEL_335;
            case 27:
              if (!v17)
              {
                goto LABEL_369;
              }

              v69 = v823[0];
              do
              {
                v70 = v10;
                do
                {
                  if (v6)
                  {
                    if (*v41)
                    {
                      *v38 = PDAluminosityPDA_11885(*v38, *v41, *&v29, v17);
                      *v41 = v71;
                    }

                    else
                    {
                      *v38 = v29;
                      *v41 = v17;
                    }
                  }

                  else
                  {
                    *v38 = PDAluminosityPDA_11885(*v38, 0xFFFFu, *&v29, v17);
                  }

                  ++v38;
                  v41 += 2 * v775;
                  --v70;
                }

                while (v70);
                v38 += v819;
                v41 += 2 * v820;
                --v69;
              }

              while (v69);
LABEL_335:
              v823[0] = 0;
              goto LABEL_368;
            default:
              goto LABEL_369;
          }
        }

        v49 = v40;
LABEL_979:
        free(v49);
      }

      return 1;
    }

    v833[0] = *(v3 + 4);
    v823[0] = v12;
    v18 = *(v3 + 88);
    v19 = *(v3 + 12);
    v20 = *(v3 + 16);
    v21 = *(v3 + 28) >> 3;
    if (v6)
    {
      v734 = *(v3 + 32) >> 1;
      v735 = v6 + 2 * v734 * v20 + 2 * v19;
      v22 = 0xFFFFFFFFLL;
    }

    else
    {
      v734 = 0;
      v735 = 0;
      v22 = 0;
    }

    v733 = *(v3 + 40) + 8 * v20 * v21 + 8 * v19;
    v32 = *(v3 + 56);
    v33 = *(v3 + 60);
    v34 = *(v3 + 76) >> 3;
    if (v16 == 256)
    {
      if (v5)
      {
        v35 = *(v3 + 80) >> 1;
        v5 += v35 * v33 + v32;
        v36 = 0xFFFFFFFFLL;
      }

      else
      {
        v35 = 0;
        v36 = 0;
      }

      v50 = *(v3 + 76) >> 3;
      v18 += 8 * v33 * v34 + 8 * v32;
      if (v34 == v21)
      {
        v51 = (v733 - v18) >> 3;
        if (v51 >= 1)
        {
          if (v51 <= v10)
          {
            v733 += 8 * v11;
            v18 += 8 * v11;
            v735 += 2 * (v22 & v11);
            v52 = -1;
            v50 = *(v3 + 28) >> 3;
            v5 += v36 & v11;
            goto LABEL_49;
          }

          if (v733 <= v18 + 8 * v21 * v13 + 8 * v10 - 8)
          {
            v733 += 8 * v21 * v13;
            v50 = -v21;
            v62 = v735 + 2 * v734 * v13;
            v734 = -v734;
            v735 = v62;
            v5 += v35 * v13;
            v22 &= 1u;
            v35 = -v35;
            v36 &= 1u;
            v52 = 1;
            v18 += 8 * v21 * v13;
            v21 = -v21;
            goto LABEL_49;
          }
        }
      }

      v22 &= 1u;
      v36 &= 1u;
      v52 = 1;
LABEL_49:
      v694 = *(v3 + 60);
      v695 = *(v3 + 56);
      if (v14)
      {
        v812 = v22;
        v814 = v36;
        v799 = 0;
        v53 = 0;
        v748 = v18;
        v749 = -1;
        v746 = v50;
        v745 = v35;
        goto LABEL_54;
      }

      v736 = v52;
      v57 = v52 * v10;
      v773 = v734 - v22 * v10;
      v58 = -1;
      v745 = v35;
      v746 = v50;
LABEL_62:
      v53 = 0;
      v747 = 0;
      v799 = 0;
      v801 = v5;
      v50 -= v57;
      v35 -= v36 * v10;
      v815 = v18;
      v818 = v5;
      v56 = v735;
      v821 = v733;
      goto LABEL_395;
    }

    v746 = *(v3 + 64);
    v745 = *(v3 + 68);
    if (v5)
    {
      v35 = *(v3 + 80) >> 1;
      v36 = 1;
    }

    else
    {
      v35 = 0;
      v36 = 0;
    }

    v50 = *(v3 + 76) >> 3;
    v53 = v18 + 8 * v34 * v745;
    v22 &= 1u;
    if (v14)
    {
      v694 = *(v3 + 60);
      v695 = *(v3 + 56);
      v812 = v22;
      v814 = v36;
      v52 = 1;
      v799 = *(v3 + 88);
      v748 = v799;
      v749 = v799;
LABEL_54:
      v736 = v52;
      shape_enum_clip_alloc(v18, v3, v14, v52, v21, 1, *(v3 + 104), *(v3 + 108), v10, v12);
      v55 = v54;
      v801 = v5;
      v818 = v5;
      v56 = v735;
      v773 = v734;
      if (v54)
      {
        goto LABEL_372;
      }

      return 1;
    }

    v773 = v734 - (v22 * v10);
    if (!v18)
    {
      v694 = *(v3 + 60);
      v695 = *(v3 + 56);
      v58 = 0;
      v736 = 1;
      v57 = v10;
      goto LABEL_62;
    }

    v59 = v33 % v745;
    v694 = v33 % v745;
    v60 = v18 + 8 * v34 * v59;
    v61 = v32 % v746;
    v58 = v60 + 8 * v746;
    v695 = v61;
    v799 = (v60 + 8 * v61);
    v747 = 0;
    if (v5)
    {
      v736 = 1;
      v36 = 1;
      v801 = &v5[v35 * v59 + v61];
      v818 = v801;
    }

    else
    {
      v801 = 0;
      v818 = 0;
      v736 = 1;
    }

    v815 = (v60 + 8 * v61);
    v56 = v735;
    v821 = v733;
    v57 = v10;
LABEL_395:
    v812 = v22;
    v814 = v36;
    v748 = v18;
    v769 = v50;
    v772 = v21 - v57;
    v767 = v53;
    v768 = v35;
    switch(v737)
    {
      case 0:
        v749 = v58;
        v218 = v772 - v10;
        v219 = &v821[-v10 + 1];
        if (v736 >= 0)
        {
          v219 = v821;
          v218 = v772 + v10;
        }

        v220 = v823[0];
        v221 = v823[0] - 1;
        v222 = (v219 + 8 * ((v218 * v221) & (v218 >> 63)));
        if (v218 < 0)
        {
          v218 = -v218;
        }

        CGBlt_fillBytes(8 * v10, v823[0], 0, v222, 8 * v218);
        if (v812)
        {
          if (v736 < 0)
          {
            v223 = v773 - v10;
            v56 = &v56[-2 * v10 + 2];
          }

          else
          {
            v223 = v773 + v10;
          }

          v655 = (v223 * v221) & (v223 >> 63);
          v656 = &v56[2 * v655];
          if (v223 < 0)
          {
            v223 = -v223;
          }

          v773 = v223;
          v56 += 2 * v655;
          CGBlt_fillBytes(2 * v10, v220, 0, v656, 2 * v223);
        }

        goto LABEL_1124;
      case 1:
        v404 = *(v732 + 1);
        if (v404 == 2)
        {
          if (v10 >= 4 && (8 * v746) <= 0x40)
          {
            v4.i32[0] = 8 * v746;
            v645 = vcnt_s8(v4);
            v645.i16[0] = vaddlv_u8(v645);
            if (v645.i32[0] <= 1u)
            {
              v749 = v58;
              v646 = v823[0];
              CGSFillDRAM64(v821, 8 * (v10 + v772), 8 * v10, v823[0], v18, 8 * v50, 8 * v746, v745, 8 * v695, v694);
              if (!v812)
              {
                goto LABEL_1033;
              }

              v55 = v747;
              if (v814)
              {
                CGSFillDRAM64(v56, 2 * (v10 + v773), 2 * v10, v646, v5, 2 * v35, 2 * v746, v745, 2 * v695, v694);
              }

              else
              {
                CGBlt_fillBytes(2 * v10, v646, -1, v56, 2 * (v10 + v773));
              }

              goto LABEL_1034;
            }
          }
        }

        else if (v404 == 1)
        {
          v749 = v58;
          if (v736 < 0)
          {
            v405 = v50 - v10;
            v673 = 8 * v10 - 8;
            v815 = (v815 - v673);
            v406 = v772 - v10;
            v821 = (v821 - v673);
          }

          else
          {
            v405 = v50 + v10;
            v406 = v772 + v10;
          }

          v674 = v823[0];
          v675 = v823[0] - 1;
          v676 = &v815[(v405 * v675) & (v405 >> 63)];
          if (v405 >= 0)
          {
            v677 = v405;
          }

          else
          {
            v677 = -v405;
          }

          if (v406 >= 0)
          {
            LODWORD(v678) = v406;
          }

          else
          {
            v678 = -v406;
          }

          v679 = v677;
          CGBlt_copyBytes(8 * v10, v823[0], v676, &v821[(v406 * v675) & (v406 >> 63)], 8 * v677, 8 * v678);
          if (v812)
          {
            v680 = 2 * v10;
            if (v814)
            {
              v681 = v768 - v10;
              v682 = 2 * v10 - 2;
              v683 = (v818 - v682);
              v684 = v773 - v10;
              v685 = &v56[-v682];
              if (v736 >= 0)
              {
                v683 = v818;
                v685 = v56;
                v681 = v768 + v10;
                v684 = v773 + v10;
              }

              v686 = &v683[(v681 * v675) & (v681 >> 63)];
              if (v681 >= 0)
              {
                v687 = v681;
              }

              else
              {
                v687 = -v681;
              }

              v688 = v684 * v675;
              v35 = v687;
              v689 = &v685[2 * (v688 & (v684 >> 63))];
              if (v684 >= 0)
              {
                v690 = v684;
              }

              else
              {
                v690 = -v684;
              }

              v773 = v690;
              v818 = v686;
              v56 = v689;
              CGBlt_copyBytes(v680, v674, v686, v689, 2 * v687, 2 * v690);
              goto LABEL_1183;
            }

            v691 = v773 - v10;
            v692 = &v56[-2 * v10 + 2];
            if (v736 >= 0)
            {
              v692 = v56;
              v691 = v773 + v10;
            }

            v693 = (v691 * v675) & (v691 >> 63);
            if (v691 < 0)
            {
              v691 = -v691;
            }

            v773 = v691;
            v56 = (v692 + 2 * v693);
            CGBlt_fillBytes(v680, v674, -1, v56, 2 * v691);
          }

          v35 = v768;
LABEL_1183:
          v50 = v679;
          goto LABEL_1033;
        }

        if (v22)
        {
          if (v36)
          {
            v647 = v823[0];
            do
            {
              v648 = v10;
              do
              {
                *v821 = *v815;
                *v56 = *v818;
                v649 = &v815[v736];
                if (v649 >= v58)
                {
                  v650 = -v746;
                }

                else
                {
                  v650 = 0;
                }

                v815 = &v649[v650];
                v818 += v36 + v650;
                v56 += 2 * v22;
                v821 += v736;
                --v648;
              }

              while (v648);
              if (v53)
              {
                v651 = &v799[v50];
                if (v651 >= v53)
                {
                  v652 = -(v35 * v745);
                }

                else
                {
                  v652 = 0;
                }

                v653 = v801 + 2 * v35 + 2 * v652;
                if (v651 >= v53)
                {
                  v654 = -(v50 * v745);
                }

                else
                {
                  v654 = 0;
                }

                v58 += 8 * v654 + 8 * v50;
                v799 = &v651[v654];
                v801 += 2 * v35 + 2 * v652;
                v815 = v799;
                v818 = v653;
              }

              else
              {
                v815 += v50;
                v818 += v35;
              }

              v821 += v772;
              v56 += 2 * v773;
              --v647;
            }

            while (v647);
          }

          else
          {
            v665 = v823[0];
            do
            {
              v666 = v10;
              do
              {
                *v821 = *v815;
                *v56 = -1;
                v667 = &v815[v736];
                if (v667 >= v58)
                {
                  v668 = -v746;
                }

                else
                {
                  v668 = 0;
                }

                v815 = &v667[v668];
                v818 += v668;
                v56 += 2 * v22;
                v821 += v736;
                --v666;
              }

              while (v666);
              if (v53)
              {
                v669 = &v799[v50];
                if (v669 >= v53)
                {
                  v670 = -(v35 * v745);
                }

                else
                {
                  v670 = 0;
                }

                v671 = v801 + 2 * v35 + 2 * v670;
                if (v669 >= v53)
                {
                  v672 = -(v50 * v745);
                }

                else
                {
                  v672 = 0;
                }

                v58 += 8 * v672 + 8 * v50;
                v799 = &v669[v672];
                v801 += 2 * v35 + 2 * v670;
                v815 = v799;
                v818 = v671;
              }

              else
              {
                v815 += v50;
                v818 += v35;
              }

              v821 += v772;
              v56 += 2 * v773;
              --v665;
            }

            while (v665);
          }
        }

        else
        {
          v657 = v823[0];
          do
          {
            v658 = v10;
            do
            {
              *v821 = *v815;
              v659 = &v815[v736];
              if (v659 >= v58)
              {
                v660 = -v746;
              }

              else
              {
                v660 = 0;
              }

              v815 = &v659[v660];
              v818 += v36 + v660;
              v821 += v736;
              --v658;
            }

            while (v658);
            if (v53)
            {
              v661 = &v799[v50];
              if (v661 >= v53)
              {
                v662 = -(v35 * v745);
              }

              else
              {
                v662 = 0;
              }

              v663 = v801 + 2 * v35 + 2 * v662;
              if (v661 >= v53)
              {
                v664 = -(v50 * v745);
              }

              else
              {
                v664 = 0;
              }

              v58 += 8 * v664 + 8 * v50;
              v799 = &v661[v664];
              v801 += 2 * v35 + 2 * v662;
              v815 = v799;
              v818 = v663;
            }

            else
            {
              v815 += v50;
              v818 += v35;
            }

            v821 += v772;
            v56 += 2 * v773;
            --v657;
          }

          while (v657);
        }

LABEL_517:
        v749 = v58;
        v823[0] = 0;
        goto LABEL_1033;
      case 2:
        v738 = v21;
        v742 = v5;
        v345 = 8 * v736;
        if (v22)
        {
          v346 = v36;
          v717 = -(v50 * v745);
          v347 = v823[0];
          v348 = 2 * v22;
          do
          {
            v756 = v347;
            v349 = v10;
            do
            {
              v350 = *v818;
              if (*v818)
              {
                if (v350 == 0xFFFF)
                {
                  *v821 = *v815;
                  *v56 = -1;
                }

                else
                {
                  cmyk64_DAplusDAM(v821, v56, *v815, v350, *v821, *v56, v350 ^ 0xFFFF);
                  v345 = 8 * v736;
                }
              }

              v351 = &v815[v736];
              if (v351 >= v58)
              {
                v352 = -v746;
              }

              else
              {
                v352 = 0;
              }

              v815 = &v351[v352];
              v818 += v346 + v352;
              v56 += v348;
              v821 = (v821 + v345);
              --v349;
            }

            while (v349);
            if (v767)
            {
              v50 = v769;
              v353 = &v799[v769];
              v354 = -(v35 * v745);
              if (v353 < v767)
              {
                v354 = 0;
              }

              v355 = v801 + 2 * v35 + 2 * v354;
              v356 = v717;
              if (v353 < v767)
              {
                v356 = 0;
              }

              v58 += 8 * v356 + 8 * v769;
              v799 = &v353[v356];
              v801 += 2 * v35 + 2 * v354;
              v815 = v799;
              v818 = v355;
            }

            else
            {
              v50 = v769;
              v815 += v769;
              v818 += v35;
            }

            v821 += v772;
            v56 += 2 * v773;
            v347 = v756 - 1;
          }

          while (v756 != 1);
        }

        else
        {
          v607 = v36;
          v796 = -(v50 * v745);
          v608 = v823[0];
          do
          {
            v609 = v10;
            do
            {
              v610 = *v818;
              if (*v818)
              {
                if (v610 == 0xFFFF)
                {
                  *v821 = *v815;
                }

                else
                {
                  cmyk64_DplusDM(v821, *v815, *v821, v610 ^ 0xFFFF);
                  v345 = 8 * v736;
                }
              }

              v611 = &v815[v736];
              if (v611 >= v58)
              {
                v612 = -v746;
              }

              else
              {
                v612 = 0;
              }

              v815 = &v611[v612];
              v818 += v607 + v612;
              v821 = (v821 + v345);
              --v609;
            }

            while (v609);
            if (v53)
            {
              v50 = v769;
              v613 = &v799[v769];
              v614 = -(v35 * v745);
              if (v613 < v53)
              {
                v614 = 0;
              }

              v615 = v801 + 2 * v35 + 2 * v614;
              v616 = v796;
              if (v613 < v53)
              {
                v616 = 0;
              }

              v58 += 8 * v616 + 8 * v769;
              v799 = &v613[v616];
              v801 += 2 * v35 + 2 * v614;
              v815 = v799;
              v818 = v615;
            }

            else
            {
              v50 = v769;
              v815 += v769;
              v818 += v35;
            }

            v821 += v772;
            v56 += 2 * v773;
            --v608;
          }

          while (v608);
        }

        goto LABEL_1031;
      case 3:
        v739 = v21;
        v743 = v5;
        v371 = 2 * v22;
        v372 = 8 * v736;
        if (v36)
        {
          v373 = v823[0];
          v375 = v799;
          v374 = v801;
          do
          {
            v376 = v10;
            do
            {
              v377 = *v56;
              if (v377 == 0xFFFF)
              {
                *v821 = *v815;
                LOWORD(v377) = *v818;
              }

              else if (*v56)
              {
                v378 = *v818;
                v379 = v377 ^ 0xFFFF;
                v380 = vdup_n_s32(v379);
                v381 = vmul_s32(vand_s8(*v815, 0xFFFF0000FFFFLL), v380);
                v382.i32[0] = WORD1(*v815);
                v382.i32[1] = HIWORD(*v815);
                v383 = vmul_s32(v382, v380);
                *v821 = vsli_n_s32(vsub_s32(*v815, vshr_n_u32(vadd_s32(vsra_n_u32(v381, v381, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(v382, vshr_n_u32(vadd_s32(vsra_n_u32(v383, v383, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
                v377 = v378 - ((v379 * v378 + ((v379 * v378) >> 16) + 1) >> 16);
              }

              else
              {
                *v821 = 0;
              }

              *v56 = v377;
              v384 = &v815[v736];
              if (v384 >= v58)
              {
                v385 = -v746;
              }

              else
              {
                v385 = 0;
              }

              v815 = &v384[v385];
              v818 += v36 + v385;
              v56 += v371;
              v821 = (v821 + v372);
              --v376;
            }

            while (v376);
            if (v53)
            {
              v386 = &v375[v50];
              if (v386 >= v53)
              {
                v387 = -(v768 * v745);
              }

              else
              {
                v387 = 0;
              }

              v374 += v768 + v387;
              if (v386 >= v53)
              {
                v388 = -(v50 * v745);
              }

              else
              {
                v388 = 0;
              }

              v375 = &v386[v388];
              v58 += 8 * v388 + 8 * v50;
              v815 = v375;
              v818 = v374;
            }

            else
            {
              v815 += v50;
              v818 += v768;
            }

            v821 += v772;
            v56 += 2 * v773;
            --v373;
          }

          while (v373);
          v799 = v375;
          v801 = v374;
        }

        else
        {
          v809 = v371;
          v617 = v823[0];
          do
          {
            v797 = v617;
            v618 = v10;
            do
            {
              v619 = *v56;
              if (v619 == 0xFFFF)
              {
                *v821 = *v815;
              }

              else if (*v56)
              {
                cmyk64_DM(v821, *v815, v619);
                v371 = v809;
              }

              else
              {
                *v821 = 0;
              }

              v620 = &v815[v736];
              if (v620 >= v58)
              {
                v621 = -v746;
              }

              else
              {
                v621 = 0;
              }

              v815 = &v620[v621];
              v818 += v621;
              v56 += v371;
              v821 = (v821 + v372);
              --v618;
            }

            while (v618);
            v53 = v767;
            if (v767)
            {
              v622 = &v799[v50];
              v623 = -(v768 * v745);
              if (v622 < v767)
              {
                v623 = 0;
              }

              v624 = v801 + 2 * v768 + 2 * v623;
              v625 = -(v50 * v745);
              if (v622 < v767)
              {
                v625 = 0;
              }

              v58 += 8 * v625 + 8 * v50;
              v799 = &v622[v625];
              v801 += 2 * v768 + 2 * v623;
              v815 = v799;
              v818 = v624;
            }

            else
            {
              v815 += v50;
              v818 += v768;
            }

            v821 += v772;
            v56 += 2 * v773;
            v617 = v797 - 1;
          }

          while (v797 != 1);
        }

        goto LABEL_1075;
      case 4:
        v277 = v823[0];
        do
        {
          v278 = v10;
          do
          {
            v279 = *v56;
            if (*v56)
            {
              LOWORD(v280) = ~v279;
              if (v279 != 0xFFFF)
              {
                if (v36)
                {
                  v281 = *v818;
                }

                else
                {
                  v281 = 0xFFFF;
                }

                v282 = vdup_n_s32(v279);
                v283 = vmul_s32(vand_s8(*v815, 0xFFFF0000FFFFLL), v282);
                v284.i32[0] = WORD1(*v815);
                v284.i32[1] = HIWORD(*v815);
                v285 = vmul_s32(v284, v282);
                *v821 = vsli_n_s32(vsub_s32(*v815, vshr_n_u32(vadd_s32(vsra_n_u32(v283, v283, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(v284, vshr_n_u32(vadd_s32(vsra_n_u32(v285, v285, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
                v280 = v281 - ((v279 * v281 + ((v279 * v281) >> 16) + 1) >> 16);
              }

              else
              {
                *v821 = 0;
              }
            }

            else if (v36)
            {
              LOWORD(v280) = *v818;
            }

            else
            {
              LOWORD(v280) = -1;
            }

            *v56 = v280;
            v286 = &v815[v736];
            if (v286 >= v58)
            {
              v287 = -v746;
            }

            else
            {
              v287 = 0;
            }

            v815 = &v286[v287];
            v818 += v36 + v287;
            v56 += 2 * v22;
            v821 += v736;
            --v278;
          }

          while (v278);
          if (v53)
          {
            v288 = &v799[v50];
            if (v288 >= v53)
            {
              v289 = -(v35 * v745);
            }

            else
            {
              v289 = 0;
            }

            v290 = v801 + 2 * v35 + 2 * v289;
            if (v288 >= v53)
            {
              v291 = -(v50 * v745);
            }

            else
            {
              v291 = 0;
            }

            v58 += 8 * v291 + 8 * v50;
            v799 = &v288[v291];
            v801 += 2 * v35 + 2 * v289;
            v815 = v799;
            v818 = v290;
          }

          else
          {
            v815 += v50;
            v818 += v35;
          }

          v821 += v772;
          v56 += 2 * v773;
          --v277;
        }

        while (v277);
        goto LABEL_517;
      case 5:
        v738 = v21;
        v742 = v5;
        v435 = v36;
        v721 = -(v50 * v745);
        v436 = v823[0];
        v437 = 2 * v22;
        v438 = 8 * v736;
        do
        {
          v787 = v436;
          v439 = v10;
          do
          {
            v440 = v438;
            cmyk64_DAMplusDAM(v821, v56, *v815, *v818, *v56, *v821, *v56, *v818 ^ 0xFFFF);
            v438 = v440;
            v441 = &v815[v736];
            if (v441 >= v58)
            {
              v442 = -v746;
            }

            else
            {
              v442 = 0;
            }

            v815 = &v441[v442];
            v818 += v435 + v442;
            v56 += v437;
            v821 = (v821 + v440);
            --v439;
          }

          while (v439);
          if (v767)
          {
            v50 = v769;
            v443 = &v799[v769];
            v444 = -(v35 * v745);
            if (v443 < v767)
            {
              v444 = 0;
            }

            v445 = v801 + 2 * v35 + 2 * v444;
            v446 = v721;
            if (v443 < v767)
            {
              v446 = 0;
            }

            v58 += 8 * v446 + 8 * v769;
            v799 = &v443[v446];
            v801 += 2 * v35 + 2 * v444;
            v815 = v799;
            v818 = v445;
          }

          else
          {
            v50 = v769;
            v815 += v769;
            v818 += v35;
          }

          v821 += v772;
          v56 += 2 * v773;
          v436 = v787 - 1;
        }

        while (v787 != 1);
        goto LABEL_1031;
      case 6:
        v740 = v21;
        v744 = v5;
        v475 = v35;
        v476 = v36;
        v724 = -(v475 * v745);
        v477 = v823[0];
        v478 = 2 * v22;
        do
        {
          v806 = v477;
          v479 = v10;
          v762 = v58;
          do
          {
            if (*v56 != 0xFFFF)
            {
              if (~*v56 == 0xFFFF)
              {
                *v821 = *v815;
                if (v36)
                {
                  v480 = *v818;
                }

                else
                {
                  v480 = -1;
                }

                *v56 = v480;
              }

              else
              {
                if (v36)
                {
                  v481 = *v818;
                }

                else
                {
                  v481 = 0xFFFF;
                }

                cmyk64_DAplusDAM(v821, v56, *v821, *v56, *v815, v481, ~*v56);
                LODWORD(v36) = v814;
                v58 = v762;
              }
            }

            v482 = &v815[v736];
            if (v482 >= v58)
            {
              v483 = -v746;
            }

            else
            {
              v483 = 0;
            }

            v815 = &v482[v483];
            v818 += v476 + v483;
            v56 += v478;
            v821 += v736;
            --v479;
          }

          while (v479);
          if (v53)
          {
            v484 = &v799[v50];
            v485 = v724;
            if (v484 < v53)
            {
              v485 = 0;
            }

            v486 = v801 + 2 * v768 + 2 * v485;
            v487 = -(v50 * v745);
            if (v484 < v53)
            {
              v487 = 0;
            }

            v58 += 8 * v487 + 8 * v50;
            v799 = &v484[v487];
            v801 += 2 * v768 + 2 * v485;
            v815 = v799;
            v818 = v486;
          }

          else
          {
            v815 += v50;
            v818 += v768;
          }

          v821 += v772;
          v56 += 2 * v773;
          v477 = v806 - 1;
        }

        while (v806 != 1);
        goto LABEL_977;
      case 7:
        if (v22)
        {
          v389 = v823[0];
          do
          {
            v390 = v10;
            do
            {
              v391 = *v818;
              if (v391 != 0xFFFF)
              {
                if (*v818)
                {
                  v392 = *v56;
                  v393 = v391 ^ 0xFFFF;
                  v394 = vdup_n_s32(v393);
                  v395 = vmul_s32(vand_s8(*v821, 0xFFFF0000FFFFLL), v394);
                  v396.i32[0] = HIWORD(v821->u32[0]);
                  v396.i32[1] = HIWORD(*v821);
                  v397 = vmul_s32(v396, v394);
                  *v821 = vsli_n_s32(vsub_s32(*v821, vshr_n_u32(vadd_s32(vsra_n_u32(v395, v395, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(v396, vshr_n_u32(vadd_s32(vsra_n_u32(v397, v397, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
                  v391 = v392 - ((v393 * v392 + ((v393 * v392) >> 16) + 1) >> 16);
                }

                else
                {
                  *v821 = 0;
                }

                *v56 = v391;
              }

              v398 = &v815[v736];
              if (v398 >= v58)
              {
                v399 = -v746;
              }

              else
              {
                v399 = 0;
              }

              v815 = &v398[v399];
              v818 += v36 + v399;
              v56 += 2 * v22;
              v821 += v736;
              --v390;
            }

            while (v390);
            if (v53)
            {
              v400 = &v799[v50];
              if (v400 >= v53)
              {
                v401 = -(v35 * v745);
              }

              else
              {
                v401 = 0;
              }

              v402 = v801 + 2 * v35 + 2 * v401;
              if (v400 >= v53)
              {
                v403 = -(v50 * v745);
              }

              else
              {
                v403 = 0;
              }

              v58 += 8 * v403 + 8 * v50;
              v799 = &v400[v403];
              v801 += 2 * v35 + 2 * v401;
              v815 = v799;
              v818 = v402;
            }

            else
            {
              v815 += v50;
              v818 += v35;
            }

            v821 += v772;
            v56 += 2 * v773;
            --v389;
          }

          while (v389);
          goto LABEL_883;
        }

        v739 = v21;
        v743 = v5;
        v626 = v36;
        v627 = v823[0];
        do
        {
          v628 = v10;
          do
          {
            v629 = *v818;
            if (v629 != 0xFFFF)
            {
              if (*v818)
              {
                cmyk64_DM(v821, *v821, v629);
              }

              else
              {
                *v821 = 0;
              }
            }

            v630 = &v815[v736];
            if (v630 >= v58)
            {
              v631 = -v746;
            }

            else
            {
              v631 = 0;
            }

            v815 = &v630[v631];
            v818 += v626 + v631;
            v821 += v736;
            --v628;
          }

          while (v628);
          v53 = v767;
          if (v767)
          {
            v632 = &v799[v50];
            v633 = -(v35 * v745);
            if (v632 < v767)
            {
              v633 = 0;
            }

            v634 = v801 + 2 * v35 + 2 * v633;
            v635 = -(v50 * v745);
            if (v632 < v767)
            {
              v635 = 0;
            }

            v58 += 8 * v635 + 8 * v50;
            v799 = &v632[v635];
            v801 += 2 * v35 + 2 * v633;
            v815 = v799;
            v818 = v634;
          }

          else
          {
            v815 += v50;
            v818 += v35;
          }

          v821 += v772;
          v56 += 2 * v773;
          --v627;
        }

        while (v627);
LABEL_1075:
        v749 = v58;
        v823[0] = 0;
        v21 = v739;
        v5 = v743;
        v35 = v768;
        goto LABEL_1033;
      case 8:
        if (!v22)
        {
          v741 = v21;
          v636 = v36;
          v731 = -(v35 * v745);
          v637 = v823[0];
          do
          {
            v810 = v637;
            v638 = v10;
            do
            {
              if (~*v818 != 0xFFFF)
              {
                if (*v818 == -1)
                {
                  *v821 = 0;
                }

                else
                {
                  cmyk64_DM(v821, *v821, ~*v818);
                }
              }

              v639 = &v815[v736];
              if (v639 >= v58)
              {
                v640 = -v746;
              }

              else
              {
                v640 = 0;
              }

              v815 = &v639[v640];
              v818 += v636 + v640;
              v821 += v736;
              --v638;
            }

            while (v638);
            if (v53)
            {
              v35 = v768;
              v641 = &v799[v50];
              v642 = v731;
              if (v641 < v53)
              {
                v642 = 0;
              }

              v643 = v801 + 2 * v768 + 2 * v642;
              v644 = -(v50 * v745);
              if (v641 < v53)
              {
                v644 = 0;
              }

              v58 += 8 * v644 + 8 * v50;
              v799 = &v641[v644];
              v801 += 2 * v768 + 2 * v642;
              v815 = v799;
              v818 = v643;
            }

            else
            {
              v35 = v768;
              v815 += v50;
              v818 += v768;
            }

            v821 += v772;
            v56 += 2 * v773;
            v637 = v810 - 1;
          }

          while (v810 != 1);
          v749 = v58;
          v823[0] = 0;
          v21 = v741;
          goto LABEL_1124;
        }

        v516 = v823[0];
        do
        {
          v517 = v10;
          do
          {
            v518 = *v818;
            if (*v818)
            {
              if (v518 != 0xFFFF)
              {
                v520 = *v56;
                v521 = vdup_n_s32(v518);
                v522 = vmul_s32(vand_s8(*v821, 0xFFFF0000FFFFLL), v521);
                v523.i32[0] = HIWORD(v821->u32[0]);
                v523.i32[1] = HIWORD(*v821);
                v524 = vmul_s32(v523, v521);
                *v821 = vsli_n_s32(vsub_s32(*v821, vshr_n_u32(vadd_s32(vsra_n_u32(v522, v522, 0x10uLL), 0x100000001), 0x10uLL)), vsub_s32(v523, vshr_n_u32(vadd_s32(vsra_n_u32(v524, v524, 0x10uLL), 0x100000001), 0x10uLL)), 0x10uLL);
                v519 = v520 - ((v518 * v520 + ((v518 * v520) >> 16) + 1) >> 16);
              }

              else
              {
                LOWORD(v519) = 0;
                *v821 = 0;
              }

              *v56 = v519;
            }

            v525 = &v815[v736];
            if (v525 >= v58)
            {
              v526 = -v746;
            }

            else
            {
              v526 = 0;
            }

            v815 = &v525[v526];
            v818 += v36 + v526;
            v56 += 2 * v22;
            v821 += v736;
            --v517;
          }

          while (v517);
          if (v53)
          {
            v527 = &v799[v50];
            if (v527 >= v53)
            {
              v528 = -(v35 * v745);
            }

            else
            {
              v528 = 0;
            }

            v529 = v801 + 2 * v35 + 2 * v528;
            if (v527 >= v53)
            {
              v530 = -(v50 * v745);
            }

            else
            {
              v530 = 0;
            }

            v58 += 8 * v530 + 8 * v50;
            v799 = &v527[v530];
            v801 += 2 * v35 + 2 * v528;
            v815 = v799;
            v818 = v529;
          }

          else
          {
            v815 += v50;
            v818 += v35;
          }

          v821 += v772;
          v56 += 2 * v773;
          --v516;
        }

        while (v516);
LABEL_883:
        v749 = v58;
        v823[0] = 0;
        goto LABEL_1033;
      case 9:
        v738 = v21;
        v742 = v5;
        v303 = v36;
        v781 = -(v50 * v745);
        v304 = v823[0];
        v305 = 2 * v22;
        v306 = 8 * v736;
        v307 = -v746;
        do
        {
          v805 = v304;
          v308 = v10;
          do
          {
            v309 = v306;
            v310 = v307;
            cmyk64_DAMplusDAM(v821, v56, *v815, *v818, *v56 ^ 0xFFFF, *v821, *v56, *v818);
            v307 = v310;
            v306 = v309;
            v311 = &v815[v736];
            if (v311 >= v58)
            {
              v312 = v310;
            }

            else
            {
              v312 = 0;
            }

            v815 = &v311[v312];
            v818 += v303 + v312;
            v56 += v305;
            v821 = (v821 + v309);
            --v308;
          }

          while (v308);
          if (v767)
          {
            v50 = v769;
            v313 = &v799[v769];
            v314 = -(v35 * v745);
            if (v313 < v767)
            {
              v314 = 0;
            }

            v315 = v801 + 2 * v35 + 2 * v314;
            v316 = v781;
            if (v313 < v767)
            {
              v316 = 0;
            }

            v58 += 8 * v316 + 8 * v769;
            v799 = &v313[v316];
            v801 += 2 * v35 + 2 * v314;
            v815 = v799;
            v818 = v315;
          }

          else
          {
            v50 = v769;
            v815 += v769;
            v818 += v35;
          }

          v821 += v772;
          v56 += 2 * v773;
          v304 = v805 - 1;
        }

        while (v805 != 1);
        goto LABEL_1031;
      case 10:
        v738 = v21;
        v742 = v5;
        v502 = v36;
        v791 = -(v50 * v745);
        v503 = v823[0];
        v504 = 2 * v22;
        v505 = 8 * v736;
        v506 = -v746;
        do
        {
          v807 = v503;
          v507 = v10;
          do
          {
            v508 = v505;
            v509 = v506;
            cmyk64_DAMplusDAM(v821, v56, *v815, *v818, *v56 ^ 0xFFFF, *v821, *v56, *v818 ^ 0xFFFF);
            v506 = v509;
            v505 = v508;
            v510 = &v815[v736];
            if (v510 >= v58)
            {
              v511 = v509;
            }

            else
            {
              v511 = 0;
            }

            v815 = &v510[v511];
            v818 += v502 + v511;
            v56 += v504;
            v821 = (v821 + v508);
            --v507;
          }

          while (v507);
          if (v767)
          {
            v50 = v769;
            v512 = &v799[v769];
            v513 = -(v35 * v745);
            if (v512 < v767)
            {
              v513 = 0;
            }

            v514 = v801 + 2 * v35 + 2 * v513;
            v515 = v791;
            if (v512 < v767)
            {
              v515 = 0;
            }

            v58 += 8 * v515 + 8 * v769;
            v799 = &v512[v515];
            v801 += 2 * v35 + 2 * v513;
            v815 = v799;
            v818 = v514;
          }

          else
          {
            v50 = v769;
            v815 += v769;
            v818 += v35;
          }

          v821 += v772;
          v56 += 2 * v773;
          v503 = v807 - 1;
        }

        while (v807 != 1);
        goto LABEL_1031;
      case 11:
        v738 = v21;
        v742 = v5;
        v779 = 8 * v736;
        v266 = v36;
        if (v22)
        {
          v714 = -(v50 * v745);
          v267 = v823[0];
          v268 = 2 * v22;
          do
          {
            v753 = v267;
            v269 = v10;
            do
            {
              if (v36)
              {
                v270 = *v818;
              }

              else
              {
                v270 = 0xFFFF;
              }

              cmyk64_DAplusdDA(v821, v56, *v821, *v56, *v815, v270);
              v271 = &v815[v736];
              if (v271 >= v58)
              {
                v272 = -v746;
              }

              else
              {
                v272 = 0;
              }

              v815 = &v271[v272];
              v818 += v266 + v272;
              v56 += v268;
              v821 = (v821 + v779);
              --v269;
              LODWORD(v36) = v814;
            }

            while (v269);
            if (v53)
            {
              v50 = v769;
              v273 = &v799[v769];
              v274 = -(v35 * v745);
              if (v273 < v53)
              {
                v274 = 0;
              }

              v275 = v801 + 2 * v35 + 2 * v274;
              v276 = v714;
              if (v273 < v53)
              {
                v276 = 0;
              }

              v58 += 8 * v276 + 8 * v769;
              v799 = &v273[v276];
              v801 += 2 * v35 + 2 * v274;
              v815 = v799;
              v818 = v275;
            }

            else
            {
              v50 = v769;
              v815 += v769;
              v818 += v35;
            }

            v821 += v772;
            v56 += 2 * v773;
            v267 = v753 - 1;
          }

          while (v753 != 1);
        }

        else
        {
          v730 = -(v50 * v745);
          v587 = v823[0];
          do
          {
            v588 = v10;
            do
            {
              if (v36)
              {
                v589 = *v818;
              }

              else
              {
                v589 = 0xFFFF;
              }

              cmyk64_DplusdDA(v821, *v821, *v815, v589);
              v590 = &v815[v736];
              if (v590 >= v58)
              {
                v591 = -v746;
              }

              else
              {
                v591 = 0;
              }

              v815 = &v590[v591];
              v818 += v266 + v591;
              v821 = (v821 + v779);
              --v588;
              LODWORD(v36) = v814;
            }

            while (v588);
            if (v53)
            {
              v50 = v769;
              v592 = &v799[v769];
              v593 = -(v35 * v745);
              if (v592 < v53)
              {
                v593 = 0;
              }

              v594 = v801 + 2 * v35 + 2 * v593;
              v595 = v730;
              if (v592 < v53)
              {
                v595 = 0;
              }

              v58 += 8 * v595 + 8 * v769;
              v799 = &v592[v595];
              v801 += 2 * v35 + 2 * v593;
              v815 = v799;
              v818 = v594;
            }

            else
            {
              v50 = v769;
              v815 += v769;
              v818 += v35;
            }

            v821 += v772;
            v56 += 2 * v773;
            --v587;
          }

          while (v587);
        }

        goto LABEL_1031;
      case 12:
        v739 = v21;
        v743 = v5;
        if (v22)
        {
          v292 = v36;
          v293 = v823[0];
          v294 = 2 * v22;
          do
          {
            v780 = v293;
            v295 = v10;
            do
            {
              if (v36)
              {
                v296 = *v818;
              }

              else
              {
                v296 = 0xFFFF;
              }

              cmyk64_DApluslDA(v821, v56, *v821, *v56, *v815, v296);
              v297 = &v815[v736];
              if (v297 >= v58)
              {
                v298 = -v746;
              }

              else
              {
                v298 = 0;
              }

              v815 = &v297[v298];
              v818 += v292 + v298;
              v56 += v294;
              v821 += v736;
              --v295;
              LODWORD(v36) = v814;
            }

            while (v295);
            v53 = v767;
            if (v767)
            {
              v299 = &v799[v50];
              v300 = -(v768 * v745);
              if (v299 < v767)
              {
                v300 = 0;
              }

              v301 = v801 + 2 * v768 + 2 * v300;
              v302 = -(v50 * v745);
              if (v299 < v767)
              {
                v302 = 0;
              }

              v58 += 8 * v302 + 8 * v50;
              v799 = &v299[v302];
              v801 += 2 * v768 + 2 * v300;
              v815 = v799;
              v818 = v301;
            }

            else
            {
              v815 += v50;
              v818 += v768;
            }

            v821 += v772;
            v56 += 2 * v773;
            v293 = v780 - 1;
          }

          while (v780 != 1);
        }

        else
        {
          v596 = v36;
          v597 = v823[0];
          v598 = 8 * v736;
          do
          {
            v808 = v597;
            v599 = v10;
            do
            {
              v600 = v598;
              cmyk64_DpluslD(v821, *v821, *v815);
              v598 = v600;
              v601 = &v815[v736];
              if (v601 >= v58)
              {
                v602 = -v746;
              }

              else
              {
                v602 = 0;
              }

              v815 = &v601[v602];
              v818 += v596 + v602;
              v821 = (v821 + v600);
              --v599;
            }

            while (v599);
            v53 = v767;
            if (v767)
            {
              v603 = &v799[v50];
              v604 = -(v35 * v745);
              if (v603 < v767)
              {
                v604 = 0;
              }

              v605 = v801 + 2 * v35 + 2 * v604;
              v606 = -(v50 * v745);
              if (v603 < v767)
              {
                v606 = 0;
              }

              v58 += 8 * v606 + 8 * v50;
              v799 = &v603[v606];
              v801 += 2 * v35 + 2 * v604;
              v815 = v799;
              v818 = v605;
            }

            else
            {
              v815 += v50;
              v818 += v35;
            }

            v821 += v772;
            v56 += 2 * v773;
            v597 = v808 - 1;
          }

          while (v808 != 1);
        }

        goto LABEL_1075;
      case 13:
        v738 = v21;
        v742 = v5;
        v789 = v36;
        v461 = v823[0];
        v705 = -(v35 * v745);
        v723 = -(v50 * v745);
        v462 = 2 * v22;
        while (1)
        {
          v761 = v461;
          v463 = v10;
          v464 = v58;
          do
          {
            if (v36)
            {
              v465 = *v818;
              if (!*v818)
              {
                goto LABEL_785;
              }

              if (v22)
              {
                goto LABEL_780;
              }
            }

            else
            {
              v465 = 0xFFFF;
              if (v22)
              {
LABEL_780:
                if (*v56)
                {
                  v466 = PDAmultiplyPDA_11872(*v821, *v56, *v815, v465);
                  v58 = v464;
                  LODWORD(v22) = v812;
                  LODWORD(v36) = v814;
                  *v821 = v466;
                  *v56 = v467;
                }

                else
                {
                  *v821 = *v815;
                  *v56 = v465;
                }

                goto LABEL_785;
              }
            }

            v468 = PDAmultiplyPDA_11872(*v821, 0xFFFFu, *v815, v465);
            v58 = v464;
            LODWORD(v22) = v812;
            LODWORD(v36) = v814;
            *v821 = v468;
LABEL_785:
            v469 = &v815[v736];
            if (v469 >= v58)
            {
              v470 = -v746;
            }

            else
            {
              v470 = 0;
            }

            v815 = &v469[v470];
            v818 += v789 + v470;
            v56 += v462;
            v821 += v736;
            --v463;
          }

          while (v463);
          if (v53)
          {
            v50 = v769;
            v471 = &v799[v769];
            v472 = v705;
            if (v471 < v53)
            {
              v472 = 0;
            }

            v473 = v801 + 2 * v768 + 2 * v472;
            v474 = v723;
            if (v471 < v53)
            {
              v474 = 0;
            }

            v58 += 8 * v474 + 8 * v769;
            v799 = &v471[v474];
            v801 += 2 * v768 + 2 * v472;
            v815 = v799;
            v818 = v473;
          }

          else
          {
            v50 = v769;
            v815 += v769;
            v818 += v768;
          }

          v821 += v772;
          v56 += 2 * v773;
          v461 = v761 - 1;
          if (v761 == 1)
          {
            goto LABEL_1031;
          }
        }

      case 14:
        v738 = v21;
        v742 = v5;
        v778 = v36;
        v252 = v823[0];
        v698 = -(v35 * v745);
        v713 = -(v50 * v745);
        v253 = 2 * v22;
        while (1)
        {
          v752 = v252;
          v254 = v10;
          v255 = v58;
          do
          {
            if (v36)
            {
              v256 = *v818;
              if (!*v818)
              {
                goto LABEL_459;
              }

              if (v22)
              {
                goto LABEL_454;
              }
            }

            else
            {
              v256 = 0xFFFF;
              if (v22)
              {
LABEL_454:
                if (*v56)
                {
                  v257 = PDAscreenPDA_11873(*v821, *v56, *v815, v256);
                  v58 = v255;
                  LODWORD(v22) = v812;
                  LODWORD(v36) = v814;
                  *v821 = v257;
                  *v56 = v258;
                }

                else
                {
                  *v821 = *v815;
                  *v56 = v256;
                }

                goto LABEL_459;
              }
            }

            v259 = PDAscreenPDA_11873(*v821, 0xFFFFu, *v815, v256);
            v58 = v255;
            LODWORD(v22) = v812;
            LODWORD(v36) = v814;
            *v821 = v259;
LABEL_459:
            v260 = &v815[v736];
            if (v260 >= v58)
            {
              v261 = -v746;
            }

            else
            {
              v261 = 0;
            }

            v815 = &v260[v261];
            v818 += v778 + v261;
            v56 += v253;
            v821 += v736;
            --v254;
          }

          while (v254);
          if (v53)
          {
            v50 = v769;
            v262 = &v799[v769];
            v263 = v698;
            if (v262 < v53)
            {
              v263 = 0;
            }

            v264 = v801 + 2 * v768 + 2 * v263;
            v265 = v713;
            if (v262 < v53)
            {
              v265 = 0;
            }

            v58 += 8 * v265 + 8 * v769;
            v799 = &v262[v265];
            v801 += 2 * v768 + 2 * v263;
            v815 = v799;
            v818 = v264;
          }

          else
          {
            v50 = v769;
            v815 += v769;
            v818 += v768;
          }

          v821 += v772;
          v56 += 2 * v773;
          v252 = v752 - 1;
          if (v752 == 1)
          {
            goto LABEL_1031;
          }
        }

      case 15:
        v738 = v21;
        v742 = v5;
        v784 = v36;
        v357 = v823[0];
        v701 = -(v35 * v745);
        v718 = -(v50 * v745);
        v358 = 2 * v22;
        while (1)
        {
          v757 = v357;
          v359 = v10;
          v360 = v58;
          do
          {
            if (v36)
            {
              v361 = *v818;
              if (!*v818)
              {
                goto LABEL_628;
              }

              if (v22)
              {
                goto LABEL_623;
              }
            }

            else
            {
              v361 = 0xFFFF;
              if (v22)
              {
LABEL_623:
                if (*v56)
                {
                  v362 = PDAoverlayPDA_11874(*v821, *v56, *v815, v361);
                  v58 = v360;
                  LODWORD(v22) = v812;
                  LODWORD(v36) = v814;
                  *v821 = v362;
                  *v56 = v363;
                }

                else
                {
                  *v821 = *v815;
                  *v56 = v361;
                }

                goto LABEL_628;
              }
            }

            v364 = PDAoverlayPDA_11874(*v821, 0xFFFFu, *v815, v361);
            v58 = v360;
            LODWORD(v22) = v812;
            LODWORD(v36) = v814;
            *v821 = v364;
LABEL_628:
            v365 = &v815[v736];
            if (v365 >= v58)
            {
              v366 = -v746;
            }

            else
            {
              v366 = 0;
            }

            v815 = &v365[v366];
            v818 += v784 + v366;
            v56 += v358;
            v821 += v736;
            --v359;
          }

          while (v359);
          if (v53)
          {
            v50 = v769;
            v367 = &v799[v769];
            v368 = v701;
            if (v367 < v53)
            {
              v368 = 0;
            }

            v369 = v801 + 2 * v768 + 2 * v368;
            v370 = v718;
            if (v367 < v53)
            {
              v370 = 0;
            }

            v58 += 8 * v370 + 8 * v769;
            v799 = &v367[v370];
            v801 += 2 * v768 + 2 * v368;
            v815 = v799;
            v818 = v369;
          }

          else
          {
            v50 = v769;
            v815 += v769;
            v818 += v768;
          }

          v821 += v772;
          v56 += 2 * v773;
          v357 = v757 - 1;
          if (v757 == 1)
          {
            goto LABEL_1031;
          }
        }

      case 16:
        v738 = v21;
        v742 = v5;
        v777 = v36;
        v238 = v823[0];
        v697 = -(v35 * v745);
        v712 = -(v50 * v745);
        v239 = 2 * v22;
        while (1)
        {
          v751 = v238;
          v240 = v10;
          v241 = v58;
          do
          {
            if (v36)
            {
              v242 = *v818;
              if (!*v818)
              {
                goto LABEL_436;
              }

              if (v22)
              {
                goto LABEL_431;
              }
            }

            else
            {
              v242 = 0xFFFF;
              if (v22)
              {
LABEL_431:
                if (*v56)
                {
                  v243 = PDAdarkenPDA_11876(*v821, *v56, *v815, v242);
                  v58 = v241;
                  LODWORD(v22) = v812;
                  LODWORD(v36) = v814;
                  *v821 = v243;
                  *v56 = v244;
                }

                else
                {
                  *v821 = *v815;
                  *v56 = v242;
                }

                goto LABEL_436;
              }
            }

            v245 = PDAdarkenPDA_11876(*v821, 0xFFFFu, *v815, v242);
            v58 = v241;
            LODWORD(v22) = v812;
            LODWORD(v36) = v814;
            *v821 = v245;
LABEL_436:
            v246 = &v815[v736];
            if (v246 >= v58)
            {
              v247 = -v746;
            }

            else
            {
              v247 = 0;
            }

            v815 = &v246[v247];
            v818 += v777 + v247;
            v56 += v239;
            v821 += v736;
            --v240;
          }

          while (v240);
          if (v53)
          {
            v50 = v769;
            v248 = &v799[v769];
            v249 = v697;
            if (v248 < v53)
            {
              v249 = 0;
            }

            v250 = v801 + 2 * v768 + 2 * v249;
            v251 = v712;
            if (v248 < v53)
            {
              v251 = 0;
            }

            v58 += 8 * v251 + 8 * v769;
            v799 = &v248[v251];
            v801 += 2 * v768 + 2 * v249;
            v815 = v799;
            v818 = v250;
          }

          else
          {
            v50 = v769;
            v815 += v769;
            v818 += v768;
          }

          v821 += v772;
          v56 += 2 * v773;
          v238 = v751 - 1;
          if (v751 == 1)
          {
            goto LABEL_1031;
          }
        }

      case 17:
        v738 = v21;
        v742 = v5;
        v785 = v36;
        v407 = v823[0];
        v702 = -(v35 * v745);
        v719 = -(v50 * v745);
        v408 = 2 * v22;
        while (1)
        {
          v758 = v407;
          v409 = v10;
          v410 = v58;
          do
          {
            if (v36)
            {
              v411 = *v818;
              if (!*v818)
              {
                goto LABEL_701;
              }

              if (v22)
              {
                goto LABEL_696;
              }
            }

            else
            {
              v411 = 0xFFFF;
              if (v22)
              {
LABEL_696:
                if (*v56)
                {
                  v412 = PDAlightenPDA_11875(*v821, *v56, *v815, v411);
                  v58 = v410;
                  LODWORD(v22) = v812;
                  LODWORD(v36) = v814;
                  *v821 = v412;
                  *v56 = v413;
                }

                else
                {
                  *v821 = *v815;
                  *v56 = v411;
                }

                goto LABEL_701;
              }
            }

            v414 = PDAlightenPDA_11875(*v821, 0xFFFFu, *v815, v411);
            v58 = v410;
            LODWORD(v22) = v812;
            LODWORD(v36) = v814;
            *v821 = v414;
LABEL_701:
            v415 = &v815[v736];
            if (v415 >= v58)
            {
              v416 = -v746;
            }

            else
            {
              v416 = 0;
            }

            v815 = &v415[v416];
            v818 += v785 + v416;
            v56 += v408;
            v821 += v736;
            --v409;
          }

          while (v409);
          if (v53)
          {
            v50 = v769;
            v417 = &v799[v769];
            v418 = v702;
            if (v417 < v53)
            {
              v418 = 0;
            }

            v419 = v801 + 2 * v768 + 2 * v418;
            v420 = v719;
            if (v417 < v53)
            {
              v420 = 0;
            }

            v58 += 8 * v420 + 8 * v769;
            v799 = &v417[v420];
            v801 += 2 * v768 + 2 * v418;
            v815 = v799;
            v818 = v419;
          }

          else
          {
            v50 = v769;
            v815 += v769;
            v818 += v768;
          }

          v821 += v772;
          v56 += 2 * v773;
          v407 = v758 - 1;
          if (v758 == 1)
          {
            goto LABEL_1031;
          }
        }

      case 18:
        v738 = v21;
        v742 = v5;
        v790 = v36;
        v488 = v823[0];
        v706 = -(v35 * v745);
        v725 = -(v50 * v745);
        v489 = 2 * v22;
        while (1)
        {
          v763 = v488;
          v490 = v10;
          v491 = v58;
          do
          {
            if (v36)
            {
              v492 = *v818;
              if (!*v818)
              {
                goto LABEL_833;
              }

              if (v22)
              {
                goto LABEL_828;
              }
            }

            else
            {
              v492 = 0xFFFF;
              if (v22)
              {
LABEL_828:
                if (*v56)
                {
                  v493 = PDAcolordodgePDA_11877(*v821, *v56, *v815, v492);
                  v58 = v491;
                  LODWORD(v22) = v812;
                  LODWORD(v36) = v814;
                  *v821 = v493;
                  *v56 = v494;
                }

                else
                {
                  *v821 = *v815;
                  *v56 = v492;
                }

                goto LABEL_833;
              }
            }

            v495 = PDAcolordodgePDA_11877(*v821, 0xFFFFu, *v815, v492);
            v58 = v491;
            LODWORD(v22) = v812;
            LODWORD(v36) = v814;
            *v821 = v495;
LABEL_833:
            v496 = &v815[v736];
            if (v496 >= v58)
            {
              v497 = -v746;
            }

            else
            {
              v497 = 0;
            }

            v815 = &v496[v497];
            v818 += v790 + v497;
            v56 += v489;
            v821 += v736;
            --v490;
          }

          while (v490);
          if (v53)
          {
            v50 = v769;
            v498 = &v799[v769];
            v499 = v706;
            if (v498 < v53)
            {
              v499 = 0;
            }

            v500 = v801 + 2 * v768 + 2 * v499;
            v501 = v725;
            if (v498 < v53)
            {
              v501 = 0;
            }

            v58 += 8 * v501 + 8 * v769;
            v799 = &v498[v501];
            v801 += 2 * v768 + 2 * v499;
            v815 = v799;
            v818 = v500;
          }

          else
          {
            v50 = v769;
            v815 += v769;
            v818 += v768;
          }

          v821 += v772;
          v56 += 2 * v773;
          v488 = v763 - 1;
          if (v763 == 1)
          {
            goto LABEL_1031;
          }
        }

      case 19:
        v738 = v21;
        v742 = v5;
        v793 = v36;
        v545 = v823[0];
        v708 = -(v35 * v745);
        v727 = -(v50 * v745);
        v546 = 2 * v22;
        while (1)
        {
          v765 = v545;
          v547 = v10;
          v548 = v58;
          do
          {
            if (v36)
            {
              v549 = *v818;
              if (!*v818)
              {
                goto LABEL_917;
              }

              if (v22)
              {
                goto LABEL_912;
              }
            }

            else
            {
              v549 = 0xFFFF;
              if (v22)
              {
LABEL_912:
                if (*v56)
                {
                  v550 = PDAcolorburnPDA_11878(*v821, *v56, *v815, v549);
                  v58 = v548;
                  LODWORD(v22) = v812;
                  LODWORD(v36) = v814;
                  *v821 = v550;
                  *v56 = v551;
                }

                else
                {
                  *v821 = *v815;
                  *v56 = v549;
                }

                goto LABEL_917;
              }
            }

            v552 = PDAcolorburnPDA_11878(*v821, 0xFFFFu, *v815, v549);
            v58 = v548;
            LODWORD(v22) = v812;
            LODWORD(v36) = v814;
            *v821 = v552;
LABEL_917:
            v553 = &v815[v736];
            if (v553 >= v58)
            {
              v554 = -v746;
            }

            else
            {
              v554 = 0;
            }

            v815 = &v553[v554];
            v818 += v793 + v554;
            v56 += v546;
            v821 += v736;
            --v547;
          }

          while (v547);
          if (v53)
          {
            v50 = v769;
            v555 = &v799[v769];
            v556 = v708;
            if (v555 < v53)
            {
              v556 = 0;
            }

            v557 = v801 + 2 * v768 + 2 * v556;
            v558 = v727;
            if (v555 < v53)
            {
              v558 = 0;
            }

            v58 += 8 * v558 + 8 * v769;
            v799 = &v555[v558];
            v801 += 2 * v768 + 2 * v556;
            v815 = v799;
            v818 = v557;
          }

          else
          {
            v50 = v769;
            v815 += v769;
            v818 += v768;
          }

          v821 += v772;
          v56 += 2 * v773;
          v545 = v765 - 1;
          if (v765 == 1)
          {
            goto LABEL_1031;
          }
        }

      case 20:
        v738 = v21;
        v742 = v5;
        v786 = v36;
        v421 = v823[0];
        v703 = -(v35 * v745);
        v720 = -(v50 * v745);
        v422 = 2 * v22;
        while (1)
        {
          v759 = v421;
          v423 = v10;
          v424 = v58;
          do
          {
            if (v36)
            {
              v425 = *v818;
              if (!*v818)
              {
                goto LABEL_724;
              }

              if (v22)
              {
                goto LABEL_719;
              }
            }

            else
            {
              v425 = 0xFFFF;
              if (v22)
              {
LABEL_719:
                if (*v56)
                {
                  v426 = PDAsoftlightPDA_11880(*v821, *v56, *v815, v425);
                  v58 = v424;
                  LODWORD(v22) = v812;
                  LODWORD(v36) = v814;
                  *v821 = v426;
                  *v56 = v427;
                }

                else
                {
                  *v821 = *v815;
                  *v56 = v425;
                }

                goto LABEL_724;
              }
            }

            v428 = PDAsoftlightPDA_11880(*v821, 0xFFFFu, *v815, v425);
            v58 = v424;
            LODWORD(v22) = v812;
            LODWORD(v36) = v814;
            *v821 = v428;
LABEL_724:
            v429 = &v815[v736];
            if (v429 >= v58)
            {
              v430 = -v746;
            }

            else
            {
              v430 = 0;
            }

            v815 = &v429[v430];
            v818 += v786 + v430;
            v56 += v422;
            v821 += v736;
            --v423;
          }

          while (v423);
          if (v53)
          {
            v50 = v769;
            v431 = &v799[v769];
            v432 = v703;
            if (v431 < v53)
            {
              v432 = 0;
            }

            v433 = v801 + 2 * v768 + 2 * v432;
            v434 = v720;
            if (v431 < v53)
            {
              v434 = 0;
            }

            v58 += 8 * v434 + 8 * v769;
            v799 = &v431[v434];
            v801 += 2 * v768 + 2 * v432;
            v815 = v799;
            v818 = v433;
          }

          else
          {
            v50 = v769;
            v815 += v769;
            v818 += v768;
          }

          v821 += v772;
          v56 += 2 * v773;
          v421 = v759 - 1;
          if (v759 == 1)
          {
            goto LABEL_1031;
          }
        }

      case 21:
        v738 = v21;
        v742 = v5;
        v788 = v36;
        v447 = v823[0];
        v704 = -(v35 * v745);
        v722 = -(v50 * v745);
        v448 = 2 * v22;
        while (1)
        {
          v760 = v447;
          v449 = v10;
          v450 = v58;
          do
          {
            if (v36)
            {
              v451 = *v818;
              if (!*v818)
              {
                goto LABEL_762;
              }

              if (v22)
              {
                goto LABEL_757;
              }
            }

            else
            {
              v451 = 0xFFFF;
              if (v22)
              {
LABEL_757:
                if (*v56)
                {
                  v452 = PDAhardlightPDA_11879(*v821, *v56, *v815, v451);
                  v58 = v450;
                  LODWORD(v22) = v812;
                  LODWORD(v36) = v814;
                  *v821 = v452;
                  *v56 = v453;
                }

                else
                {
                  *v821 = *v815;
                  *v56 = v451;
                }

                goto LABEL_762;
              }
            }

            v454 = PDAhardlightPDA_11879(*v821, 0xFFFFu, *v815, v451);
            v58 = v450;
            LODWORD(v22) = v812;
            LODWORD(v36) = v814;
            *v821 = v454;
LABEL_762:
            v455 = &v815[v736];
            if (v455 >= v58)
            {
              v456 = -v746;
            }

            else
            {
              v456 = 0;
            }

            v815 = &v455[v456];
            v818 += v788 + v456;
            v56 += v448;
            v821 += v736;
            --v449;
          }

          while (v449);
          if (v53)
          {
            v50 = v769;
            v457 = &v799[v769];
            v458 = v704;
            if (v457 < v53)
            {
              v458 = 0;
            }

            v459 = v801 + 2 * v768 + 2 * v458;
            v460 = v722;
            if (v457 < v53)
            {
              v460 = 0;
            }

            v58 += 8 * v460 + 8 * v769;
            v799 = &v457[v460];
            v801 += 2 * v768 + 2 * v458;
            v815 = v799;
            v818 = v459;
          }

          else
          {
            v50 = v769;
            v815 += v769;
            v818 += v768;
          }

          v821 += v772;
          v56 += 2 * v773;
          v447 = v760 - 1;
          if (v760 == 1)
          {
            goto LABEL_1031;
          }
        }

      case 22:
        v738 = v21;
        v742 = v5;
        v792 = v36;
        v531 = v823[0];
        v707 = -(v35 * v745);
        v726 = -(v50 * v745);
        v532 = 2 * v22;
        while (1)
        {
          v764 = v531;
          v533 = v10;
          v534 = v58;
          do
          {
            if (v36)
            {
              v535 = *v818;
              if (!*v818)
              {
                goto LABEL_894;
              }

              if (v22)
              {
                goto LABEL_889;
              }
            }

            else
            {
              v535 = 0xFFFF;
              if (v22)
              {
LABEL_889:
                if (*v56)
                {
                  v536 = PDAdifferencePDA_11881(*v821, *v56, *v815, v535);
                  v58 = v534;
                  LODWORD(v22) = v812;
                  LODWORD(v36) = v814;
                  *v821 = v536;
                  *v56 = v537;
                }

                else
                {
                  *v821 = *v815;
                  *v56 = v535;
                }

                goto LABEL_894;
              }
            }

            v538 = PDAdifferencePDA_11881(*v821, 0xFFFFu, *v815, v535);
            v58 = v534;
            LODWORD(v22) = v812;
            LODWORD(v36) = v814;
            *v821 = v538;
LABEL_894:
            v539 = &v815[v736];
            if (v539 >= v58)
            {
              v540 = -v746;
            }

            else
            {
              v540 = 0;
            }

            v815 = &v539[v540];
            v818 += v792 + v540;
            v56 += v532;
            v821 += v736;
            --v533;
          }

          while (v533);
          if (v53)
          {
            v50 = v769;
            v541 = &v799[v769];
            v542 = v707;
            if (v541 < v53)
            {
              v542 = 0;
            }

            v543 = v801 + 2 * v768 + 2 * v542;
            v544 = v726;
            if (v541 < v53)
            {
              v544 = 0;
            }

            v58 += 8 * v544 + 8 * v769;
            v799 = &v541[v544];
            v801 += 2 * v768 + 2 * v542;
            v815 = v799;
            v818 = v543;
          }

          else
          {
            v50 = v769;
            v815 += v769;
            v818 += v768;
          }

          v821 += v772;
          v56 += 2 * v773;
          v531 = v764 - 1;
          if (v764 == 1)
          {
            goto LABEL_1031;
          }
        }

      case 23:
        v738 = v21;
        v742 = v5;
        v794 = v36;
        v559 = v823[0];
        v709 = -(v35 * v745);
        v728 = -(v50 * v745);
        v560 = 2 * v22;
        while (1)
        {
          v766 = v559;
          v561 = v10;
          v562 = v58;
          do
          {
            if (v36)
            {
              v563 = *v818;
              if (!*v818)
              {
                goto LABEL_940;
              }

              if (v22)
              {
                goto LABEL_935;
              }
            }

            else
            {
              v563 = 0xFFFF;
              if (v22)
              {
LABEL_935:
                if (*v56)
                {
                  v564 = PDAexclusionPDA_11882(*v821, *v56, *v815, v563);
                  v58 = v562;
                  LODWORD(v22) = v812;
                  LODWORD(v36) = v814;
                  *v821 = v564;
                  *v56 = v565;
                }

                else
                {
                  *v821 = *v815;
                  *v56 = v563;
                }

                goto LABEL_940;
              }
            }

            v566 = PDAexclusionPDA_11882(*v821, 0xFFFFu, *v815, v563);
            v58 = v562;
            LODWORD(v22) = v812;
            LODWORD(v36) = v814;
            *v821 = v566;
LABEL_940:
            v567 = &v815[v736];
            if (v567 >= v58)
            {
              v568 = -v746;
            }

            else
            {
              v568 = 0;
            }

            v815 = &v567[v568];
            v818 += v794 + v568;
            v56 += v560;
            v821 += v736;
            --v561;
          }

          while (v561);
          if (v53)
          {
            v50 = v769;
            v569 = &v799[v769];
            v570 = v709;
            if (v569 < v53)
            {
              v570 = 0;
            }

            v571 = v801 + 2 * v768 + 2 * v570;
            v572 = v728;
            if (v569 < v53)
            {
              v572 = 0;
            }

            v58 += 8 * v572 + 8 * v769;
            v799 = &v569[v572];
            v801 += 2 * v768 + 2 * v570;
            v815 = v799;
            v818 = v571;
          }

          else
          {
            v50 = v769;
            v815 += v769;
            v818 += v768;
          }

          v821 += v772;
          v56 += 2 * v773;
          v559 = v766 - 1;
          if (v766 == 1)
          {
            goto LABEL_1031;
          }
        }

      case 24:
        v738 = v21;
        v742 = v5;
        v783 = v36;
        v331 = v823[0];
        v700 = -(v35 * v745);
        v716 = -(v50 * v745);
        v332 = 2 * v22;
        while (1)
        {
          v755 = v331;
          v333 = v10;
          v334 = v58;
          do
          {
            if (v36)
            {
              v335 = *v818;
              if (!*v818)
              {
                goto LABEL_585;
              }

              if (v22)
              {
                goto LABEL_580;
              }
            }

            else
            {
              v335 = 0xFFFF;
              if (v22)
              {
LABEL_580:
                if (*v56)
                {
                  v336 = PDAhuePDA_11883(*v821, *v56, *v815, v335);
                  v58 = v334;
                  LODWORD(v22) = v812;
                  LODWORD(v36) = v814;
                  *v821 = v336;
                  *v56 = v337;
                }

                else
                {
                  *v821 = *v815;
                  *v56 = v335;
                }

                goto LABEL_585;
              }
            }

            v338 = PDAhuePDA_11883(*v821, 0xFFFFu, *v815, v335);
            v58 = v334;
            LODWORD(v22) = v812;
            LODWORD(v36) = v814;
            *v821 = v338;
LABEL_585:
            v339 = &v815[v736];
            if (v339 >= v58)
            {
              v340 = -v746;
            }

            else
            {
              v340 = 0;
            }

            v815 = &v339[v340];
            v818 += v783 + v340;
            v56 += v332;
            v821 += v736;
            --v333;
          }

          while (v333);
          if (v53)
          {
            v50 = v769;
            v341 = &v799[v769];
            v342 = v700;
            if (v341 < v53)
            {
              v342 = 0;
            }

            v343 = v801 + 2 * v768 + 2 * v342;
            v344 = v716;
            if (v341 < v53)
            {
              v344 = 0;
            }

            v58 += 8 * v344 + 8 * v769;
            v799 = &v341[v344];
            v801 += 2 * v768 + 2 * v342;
            v815 = v799;
            v818 = v343;
          }

          else
          {
            v50 = v769;
            v815 += v769;
            v818 += v768;
          }

          v821 += v772;
          v56 += 2 * v773;
          v331 = v755 - 1;
          if (v755 == 1)
          {
            goto LABEL_1031;
          }
        }

      case 25:
        v738 = v21;
        v742 = v5;
        v782 = v36;
        v317 = v823[0];
        v699 = -(v35 * v745);
        v715 = -(v50 * v745);
        v318 = 2 * v22;
        while (1)
        {
          v754 = v317;
          v319 = v10;
          v320 = v58;
          do
          {
            if (v36)
            {
              v321 = *v818;
              if (!*v818)
              {
                goto LABEL_562;
              }

              if (v22)
              {
                goto LABEL_557;
              }
            }

            else
            {
              v321 = 0xFFFF;
              if (v22)
              {
LABEL_557:
                if (*v56)
                {
                  v322 = PDAsaturationPDA_11884(*v821, *v56, *v815, v321);
                  v58 = v320;
                  LODWORD(v22) = v812;
                  LODWORD(v36) = v814;
                  *v821 = v322;
                  *v56 = v323;
                }

                else
                {
                  *v821 = *v815;
                  *v56 = v321;
                }

                goto LABEL_562;
              }
            }

            v324 = PDAsaturationPDA_11884(*v821, 0xFFFFu, *v815, v321);
            v58 = v320;
            LODWORD(v22) = v812;
            LODWORD(v36) = v814;
            *v821 = v324;
LABEL_562:
            v325 = &v815[v736];
            if (v325 >= v58)
            {
              v326 = -v746;
            }

            else
            {
              v326 = 0;
            }

            v815 = &v325[v326];
            v818 += v782 + v326;
            v56 += v318;
            v821 += v736;
            --v319;
          }

          while (v319);
          if (v53)
          {
            v50 = v769;
            v327 = &v799[v769];
            v328 = v699;
            if (v327 < v53)
            {
              v328 = 0;
            }

            v329 = v801 + 2 * v768 + 2 * v328;
            v330 = v715;
            if (v327 < v53)
            {
              v330 = 0;
            }

            v58 += 8 * v330 + 8 * v769;
            v799 = &v327[v330];
            v801 += 2 * v768 + 2 * v328;
            v815 = v799;
            v818 = v329;
          }

          else
          {
            v50 = v769;
            v815 += v769;
            v818 += v768;
          }

          v821 += v772;
          v56 += 2 * v773;
          v317 = v754 - 1;
          if (v754 == 1)
          {
            goto LABEL_1031;
          }
        }

      case 26:
        v740 = v21;
        v744 = v5;
        v803 = v10;
        v573 = v35;
        v574 = v36;
        v575 = v823[0];
        v710 = -(v573 * v745);
        v729 = -(v50 * v745);
        v576 = 2 * v22;
        while (1)
        {
          v795 = v575;
          v577 = v58;
          do
          {
            if (v36)
            {
              v578 = *v818;
              if (!*v818)
              {
                goto LABEL_965;
              }

              if (!v22)
              {
LABEL_963:
                v580 = PDAluminosityPDA_11885(*v815, v578, *v821, 0xFFFFu);
                v58 = v577;
                LODWORD(v22) = v812;
                LODWORD(v36) = v814;
                *v821 = v580;
                goto LABEL_965;
              }
            }

            else
            {
              v578 = 0xFFFF;
              if (!v22)
              {
                goto LABEL_963;
              }
            }

            v579 = *v815;
            if (*v56)
            {
              v579 = PDAluminosityPDA_11885(v579, v578, *v821, *v56);
              v58 = v577;
              LODWORD(v22) = v812;
              LODWORD(v36) = v814;
            }

            *v821 = v579;
            *v56 = v578;
LABEL_965:
            v581 = &v815[v736];
            if (v581 >= v58)
            {
              v582 = -v746;
            }

            else
            {
              v582 = 0;
            }

            v815 = &v581[v582];
            v818 += v574 + v582;
            v56 += v576;
            v821 += v736;
            LODWORD(v10) = v10 - 1;
          }

          while (v10);
          if (v53)
          {
            v583 = &v799[v769];
            v584 = v710;
            if (v583 < v53)
            {
              v584 = 0;
            }

            v585 = v801 + 2 * v768 + 2 * v584;
            v586 = v729;
            if (v583 < v53)
            {
              v586 = 0;
            }

            v58 += 8 * v586 + 8 * v769;
            v799 = &v583[v586];
            v801 += 2 * v768 + 2 * v584;
            v815 = v799;
            v818 = v585;
          }

          else
          {
            v815 += v769;
            v818 += v768;
          }

          LODWORD(v10) = v803;
          v821 += v772;
          v56 += 2 * v773;
          v575 = v795 - 1;
          if (v795 == 1)
          {
LABEL_977:
            v749 = v58;
            v823[0] = 0;
            v21 = v740;
            v5 = v744;
            v35 = v768;
LABEL_1124:
            v50 = v769;
LABEL_1032:
            v53 = v767;
LABEL_1033:
            v55 = v747;
LABEL_1034:
            if (!v55)
            {
              return 1;
            }

            v822 = 0;
LABEL_372:
            if (!shape_enum_clip_next(v55, &v822 + 1, &v822, v833, v823))
            {
              v49 = v55;
              goto LABEL_979;
            }

            v747 = v55;
            if (v53)
            {
              v821 = (v733 + 8 * v21 * v822 + 8 * SHIDWORD(v822));
              v206 = (v822 + *(v732 + 60)) % v745;
              v57 = v833[0];
              v207 = (HIDWORD(v822) + *(v732 + 56)) % v746;
              v18 = v748;
              v208 = v748 + 8 * v50 * v206;
              v58 = v208 + 8 * v746;
              v22 = v812;
              if (v812)
              {
                v56 = (v735 + 2 * v734 * v822 + 2 * SHIDWORD(v822));
              }

              v209 = v773;
              if (v812)
              {
                v209 = v734 - v833[0];
              }

              v773 = v209;
              if (v814)
              {
                v36 = v814;
              }

              else
              {
                v36 = 0;
              }

              v210 = v801;
              if (v814)
              {
                v210 = &v5[v35 * v206 + v207];
              }

              v799 = (v208 + 8 * v207);
              v801 = v210;
              v211 = v818;
              if (v814)
              {
                v211 = &v5[v35 * v206 + v207];
              }

              v815 = (v208 + 8 * v207);
              v818 = v211;
              LODWORD(v10) = v833[0];
              v694 = (v822 + *(v732 + 60)) % v745;
              v695 = (HIDWORD(v822) + *(v732 + 56)) % v746;
            }

            else
            {
              v212 = HIDWORD(v822) * v736;
              LODWORD(v10) = v833[0];
              v213 = v833[0] * v736;
              v821 = (v733 + 8 * v21 * v822 + 8 * HIDWORD(v822) * v736);
              v57 = v833[0] * v736;
              v18 = v748;
              v815 = (v748 + 8 * v822 * v746 + 8 * HIDWORD(v822) * v736);
              v50 = v746 - v833[0] * v736;
              v22 = v812;
              v36 = v814;
              if (v812)
              {
                v56 = (v735 + 2 * v734 * v822 + 2 * v212);
              }

              v214 = v773;
              if (v812)
              {
                v214 = v734 - v213;
              }

              v773 = v214;
              v215 = &v5[v822 * v745 + v212];
              v216 = v745 - v213;
              v217 = v818;
              if (v814)
              {
                v217 = v215;
              }

              v818 = v217;
              if (v814)
              {
                v35 = v216;
              }

              v58 = v749;
            }

            goto LABEL_395;
          }
        }

      case 27:
        v738 = v21;
        v742 = v5;
        v776 = v36;
        v224 = v823[0];
        v696 = -(v35 * v745);
        v711 = -(v50 * v745);
        v225 = 2 * v22;
        break;
      default:
        v749 = v58;
        goto LABEL_1033;
    }

LABEL_404:
    v750 = v224;
    v226 = v10;
    v227 = v58;
    while (1)
    {
      if (v36)
      {
        v228 = *v818;
        if (!*v818)
        {
          goto LABEL_413;
        }

        if (!v22)
        {
          goto LABEL_411;
        }
      }

      else
      {
        v228 = 0xFFFF;
        if (!v22)
        {
LABEL_411:
          v231 = PDAluminosityPDA_11885(*v821, 0xFFFFu, *v815, v228);
          v58 = v227;
          LODWORD(v22) = v812;
          LODWORD(v36) = v814;
          *v821 = v231;
          goto LABEL_413;
        }
      }

      if (*v56)
      {
        v229 = PDAluminosityPDA_11885(*v821, *v56, *v815, v228);
        v58 = v227;
        LODWORD(v22) = v812;
        LODWORD(v36) = v814;
        *v821 = v229;
        *v56 = v230;
      }

      else
      {
        *v821 = *v815;
        *v56 = v228;
      }

LABEL_413:
      v232 = &v815[v736];
      if (v232 >= v58)
      {
        v233 = -v746;
      }

      else
      {
        v233 = 0;
      }

      v815 = &v232[v233];
      v818 += v776 + v233;
      v56 += v225;
      v821 += v736;
      if (!--v226)
      {
        if (v53)
        {
          v50 = v769;
          v234 = &v799[v769];
          v235 = v696;
          if (v234 < v53)
          {
            v235 = 0;
          }

          v236 = v801 + 2 * v768 + 2 * v235;
          v237 = v711;
          if (v234 < v53)
          {
            v237 = 0;
          }

          v58 += 8 * v237 + 8 * v769;
          v799 = &v234[v237];
          v801 += 2 * v768 + 2 * v235;
          v815 = v799;
          v818 = v236;
        }

        else
        {
          v50 = v769;
          v815 += v769;
          v818 += v768;
        }

        v821 += v772;
        v56 += 2 * v773;
        v224 = v750 - 1;
        if (v750 == 1)
        {
LABEL_1031:
          v749 = v58;
          v823[0] = 0;
          v21 = v738;
          v5 = v742;
          v35 = v768;
          goto LABEL_1032;
        }

        goto LABEL_404;
      }
    }
  }

  v15 = *(v3 + 128);
  if ((v15 | 8) == 8)
  {
    if ((*v3 & 0xFF00) == 0x400)
    {
      cmyk64_mark_constmask(v3, v7);
    }

    else
    {
      cmyk64_mark_pixelmask(v3, v7);
    }

    return 1;
  }

  v23 = *(v3 + 112);
  v24 = *(v3 + 116);
  v25 = (v23 + 15) & 0xFFFFFFF0;
  v26 = v25 * v24;
  if (v26 <= 4096)
  {
    v28 = v833;
LABEL_38:
    CGSConvertBitsToMask(v14, *(v9 + 124), v28, v25, v23, v24, v15);
    v44 = *(v9 + 112);
    v829 = *(v9 + 96);
    v830 = v44;
    v45 = *(v9 + 144);
    v831 = *(v9 + 128);
    v832 = v45;
    v46 = *(v9 + 48);
    v825 = *(v9 + 32);
    v826 = v46;
    v47 = *(v9 + 80);
    v827 = *(v9 + 64);
    v828 = v47;
    v48 = *(v9 + 16);
    *v823 = *v9;
    v824 = v48;
    HIDWORD(v830) = (v23 + 15) & 0xFFFFFFF0;
    *(&v831 + 1) = v28;
    if (BYTE1(v823[0]) << 8 == 1024)
    {
      cmyk64_mark_constmask(v823, v7);
    }

    else
    {
      cmyk64_mark_pixelmask(v823, v7);
    }

    if (v28 != v833)
    {
      v49 = v28;
      goto LABEL_979;
    }

    return 1;
  }

  v27 = malloc_type_malloc(v26, 0x97CEE3C3uLL);
  if (v27)
  {
    v28 = v27;
    v14 = *(v9 + 136);
    v15 = *(v9 + 128);
    goto LABEL_38;
  }

  return 1;
}